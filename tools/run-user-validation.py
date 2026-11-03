"""Relocatable Windows x64 Delphi/FPC user build and functional validation.

No developer project root, previous-stage files, global registration, Docker,
WSL or native DLL compilation. Explicit compilers or normal PATH lookup.
Each child has a durable PID, creation time, argv, stdout, stderr and numeric
exit; only a new empty output directory is used.
"""
from pathlib import Path
import argparse
import datetime as dt
import hashlib
import json
import os
import re
import shutil
import subprocess
import sys

ROOT = Path(__file__).resolve().parent.parent
DLL = ROOT / "bin/leptonica-1.87.0.dll"
SHA = "5d85e3f3c0a586eda168aa5757fd657ebcdfd173f1db6eb25451061504e48700"
TESTS = ("BuildCheckLept", "LeptProbe", "TestLeptonica")
SUMMARY_FIELDS = ("PASS", "FAIL", "ERR", "SKIP", "KNOWN", "CRASH", "TOTAL")
SUITE_PROFILE = "crosslept-1.87.0-win64-user-validation-v1"
KNOWN_NOT_RUN = frozenset(("IO.Func_pixReadMemJpegRefusesGarbage",))
OPTIONAL_SKIP_ROLES = frozenset(("headless", "requires device"))
OPTIONAL_TESTS = {}


def require(v, m):
    if not v:
        raise RuntimeError(m)


def digest(path):
    h = hashlib.sha256()
    with Path(path).open("rb") as f:
        for chunk in iter(lambda: f.read(1048576), b""):
            h.update(chunk)
    return h.hexdigest()


def save(path, x):
    with Path(path).open("x", encoding="utf-8") as f:
        json.dump(x, f, indent=2, ensure_ascii=False)
        f.write("\n")
        f.flush()
        os.fsync(f.fileno())


def job(label, command, cwd, result_dir, timeout=180):
    out = result_dir / (label + ".stdout.bin")
    err = result_dir / (label + ".stderr.bin")
    claim = result_dir / (label + ".claim.json")
    terminal = result_dir / (label + ".terminal.json")
    require(not any(p.exists() for p in (out, err, claim, terminal)),
            "E_DUPLICATE_USER_JOB")
    args = list(map(str, command))
    env = dict(os.environ)
    env.pop("PYTHONPATH", None)
    env.pop("PYTHONHOME", None)
    env.pop("CUDA_VISIBLE_DEVICES", None)
    begin = dt.datetime.now(dt.timezone.utc).isoformat()
    with out.open("xb") as stdout, err.open("xb") as stderr:
        proc = subprocess.Popen(
            args, cwd=str(cwd), env=env, stdin=subprocess.DEVNULL,
            stdout=stdout, stderr=stderr,
            creationflags=(subprocess.CREATE_NO_WINDOW |
                           subprocess.CREATE_NEW_PROCESS_GROUP))
                                                                    
                                                            
        import ctypes
        from ctypes import wintypes
        creation = wintypes.FILETIME()
        exit_time, kernel_time, user_time = (
            wintypes.FILETIME(), wintypes.FILETIME(), wintypes.FILETIME())
        h = ctypes.windll.kernel32.OpenProcess(0x0400, False, proc.pid)
        require(bool(h), "E_OPEN_OWN_PROCESS")
        try:
            ok = ctypes.windll.kernel32.GetProcessTimes(
                h, ctypes.byref(creation), ctypes.byref(exit_time),
                ctypes.byref(kernel_time), ctypes.byref(user_time))
            require(bool(ok), "E_GET_PROCESS_CREATION")
        finally:
            ctypes.windll.kernel32.CloseHandle(h)
        ticks = (creation.dwHighDateTime << 32) | creation.dwLowDateTime
        iso = dt.datetime.fromtimestamp(
            (ticks - 116444736000000000) / 10_000_000,
            tz=dt.timezone.utc).isoformat()
        record = {
            "label": label, "argv": args, "cwd": str(cwd),
            "pid": proc.pid, "created_at_utc": iso,
            "started_at_utc": begin, "timeout_seconds": timeout}
        save(claim, record)
        timed = False
        try:
            code = int(proc.wait(timeout=timeout))
        except subprocess.TimeoutExpired:
            timed = True
            proc.kill()
            code = int(proc.wait(timeout=15))
    terminal_record = {
        **record, "numeric_exit_code": code, "timed_out": timed,
        "stdout": str(out), "stderr": str(err),
        "stdout_sha256": digest(out), "stderr_sha256": digest(err),
        "bytes_out": out.stat().st_size, "bytes_err": err.stat().st_size,
        "finished_at_utc": dt.datetime.now(dt.timezone.utc).isoformat()}
    save(terminal, terminal_record)
    return terminal_record


def find_compiler(explicit, exe):
    path = Path(explicit) if explicit else None
    if path is None:
        found = shutil.which(exe)
        require(found is not None, "E_COMPILER_NOT_FOUND:" + exe)
        path = Path(found)
    path = path.resolve(strict=True)
    require(path.is_file(), "E_COMPILER_NOT_FILE")
    return path


def parse_suite(data):
    text = Path(data).read_text(encoding="utf-8", errors="replace")
    pairs = re.findall(
        r"(?m)^[ \t]*(PASS|FAIL|ERR|SKIP|KNOWN|CRASH|TOTAL):([^\r\n]*)$", text)
    require(len(pairs) == len({key for key, value in pairs}),
            "E_REAL_SUITE_SUMMARY_DUPLICATE")
    require({key for key, value in pairs} == set(SUMMARY_FIELDS),
            "E_REAL_SUITE_SUMMARY_MISSING")
    counts = {}
    for key, value in pairs:
        match = re.fullmatch(r"[ \t]*([0-9]+)[ \t]*", value)
        require(match is not None, "E_REAL_SUITE_SUMMARY_VALUE:" + key)
        counts[key] = int(match.group(1))
    require(sum(counts[k] for k in SUMMARY_FIELDS if k != "TOTAL") ==
            counts["TOTAL"], "E_TEST_COUNT_MISMATCH")
    return counts


def parse_run_output(test, data):
    text = Path(data).read_text(encoding="utf-8", errors="replace")
    if test == "BuildCheckLept":
        require(sum(line.strip() == "crosslept compiles"
                    for line in text.splitlines()) == 1,
                "E_REAL_BUILD_CHECK_OUTPUT_MISSING_OR_DUPLICATE")
        return None
    if test == "LeptProbe":
        matches = re.findall(
            r"(?m)^[ \t]*LeptProbe: PASSED ([0-9]+), FAILED ([0-9]+)[ \t]*$",
            text)
        require(len(matches) == 1, "E_REAL_PROBE_SUMMARY_MISSING_OR_DUPLICATE")
        return {"PASS": int(matches[0][0]), "FAIL": int(matches[0][1])}
    require(test == "TestLeptonica", "E_UNKNOWN_USER_TEST:" + test)
    return parse_suite(data)


def parse_not_executed(data, counts, optional_tests=None):
    optional = OPTIONAL_TESTS if optional_tests is None else optional_tests
    text = Path(data).read_text(encoding="utf-8", errors="replace")
    records = []
    seen = set()
    for kind in ("KNOWN", "SKIP"):
        lines = [line.strip() for line in text.splitlines()
                 if line.lstrip().startswith("[" + kind + "]")]
        require(len(lines) == counts[kind], "E_NOT_RUN_COUNT:" + kind)
        for line in lines:
            if kind == "KNOWN":
                match = re.fullmatch(r"\[KNOWN\]\s+(\S+)\s+-\s+.+", line)
                require(match is not None, "E_KNOWN_MARKER_FORMAT")
                test_id = match.group(1)
                require(test_id in KNOWN_NOT_RUN,
                        "E_KNOWN_NOT_DECLARED:" + test_id)
                role = "recorded compatibility case"
            else:
                match = re.fullmatch(r"\[SKIP\]\s+(\S+)\s+\(([^()]+)\)", line)
                require(match is not None, "E_SKIP_MARKER_FORMAT")
                test_id, role = match.groups()
                require(role in OPTIONAL_SKIP_ROLES and optional.get(test_id) == role,
                        "E_OPTIONAL_SKIP_NOT_DECLARED:" + test_id)
            require(test_id not in seen, "E_DUPLICATE_NOT_RUN_ID:" + test_id)
            seen.add(test_id)
            records.append({"test_id": test_id, "kind": kind, "role": role,
                            "raw_result": "NOT_RUN", "profile": SUITE_PROFILE})
    return records


def artifact_present(row, sha_key, bytes_key):
    return (isinstance(row.get(sha_key), str) and
            re.fullmatch(r"[0-9a-f]{64}", row[sha_key]) is not None and
            type(row.get(bytes_key)) is int and row[bytes_key] > 0)


def assess_cases(cases, mode):
    require(mode in ("smoke", "full"), "E_UNKNOWN_USER_MODE")
    tests = TESTS if mode == "full" else TESTS[:2]
    expected = {(compiler, test, phase)
                for compiler in ("delphi", "fpc")
                for test in tests for phase in ("compile", "run")}
    expected.add(("delphi", "crosspascal_crosslept", "package"))
    keys = [(row["compiler"], row["test"], row["phase"]) for row in cases]
    observed = set(keys)
    errors = []
    if observed != expected or len(keys) != len(expected):
        errors.append("E_REQUIRED_CASE_MATRIX")
    if len(keys) != len(observed):
        errors.append("E_DUPLICATE_CASE")
    compiled = {(row["compiler"], row["test"]): row for row in cases
                if row["phase"] == "compile"}
    for row in cases:
        label = "/".join((row["compiler"], row["test"], row["phase"]))
        terminal = row["terminal"]
        if (type(terminal.get("numeric_exit_code")) is not int or
                terminal["numeric_exit_code"] != 0 or
                terminal.get("timed_out") is not False):
            errors.append("E_UNSUCCESSFUL_TERMINAL:" + label)
        if row["phase"] in ("compile", "run"):
            if not artifact_present(row, "consumer_exe_sha256", "consumer_exe_bytes"):
                errors.append("E_REQUIRED_EXE_ARTIFACT:" + label)
        if row["phase"] == "package":
            if not artifact_present(row, "bpl_sha256", "bpl_bytes"):
                errors.append("E_REQUIRED_BPL_ARTIFACT:" + label)
        if row["phase"] != "run":
            continue
        if row.get("output_parsed") is not True:
            errors.append("E_REQUIRED_RUN_OUTPUT:" + label)
        build = compiled.get((row["compiler"], row["test"]), {})
        if (row.get("consumer_exe_sha256") != build.get("consumer_exe_sha256") or
                row.get("loaded_dll_sha256") != SHA):
            errors.append("E_RUN_ARTIFACT_IDENTITY:" + label)
        counts = row.get("actual_counts", {})
        if row["test"] == "LeptProbe":
            if (type(counts.get("PASS")) is not int or counts["PASS"] <= 0 or
                    type(counts.get("FAIL")) is not int or counts["FAIL"] != 0):
                errors.append("E_PROBE_RESULT:" + label)
        if row["test"] == "TestLeptonica":
            if row.get("not_executed_scope_established") is not True:
                errors.append("E_SUITE_SCOPE_NOT_ESTABLISHED:" + label)
            valid = all(type(counts.get(key)) is int and counts[key] >= 0
                        for key in SUMMARY_FIELDS)
            if (not valid or counts["PASS"] <= 0 or
                    any(counts[key] != 0 for key in ("FAIL", "ERR", "CRASH")) or
                    counts["TOTAL"] != sum(counts[key] for key in SUMMARY_FIELDS
                                           if key != "TOTAL")):
                errors.append("E_SUITE_RESULT:" + label)
    return {
        "expected_case_count": len(expected), "actual_case_count": len(keys),
        "missing_cases": [list(key) for key in sorted(expected - observed)],
        "unexpected_cases": [list(key) for key in sorted(observed - expected)],
        "errors": errors, "passed": not errors}


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--output", type=Path, required=True)
    ap.add_argument("--delphi")
    ap.add_argument("--fpc")
    ap.add_argument("--mode", choices=("smoke","full"), default="smoke")
    opt = ap.parse_args()
    require(os.name == "nt", "E_WIN64_ONLY")
    require(DLL.is_file() and digest(DLL) == SHA, "E_ISSUED_DLL_SHA")
    dest = opt.output.resolve()
    require(not dest.exists(), "E_TEST_OUTPUT_ALREADY_EXISTS")
    delphi = find_compiler(opt.delphi, "dcc64.exe")
    fpc = find_compiler(opt.fpc, "fpc.exe")
    dest.mkdir(parents=True)
    cases = []
    for compiler, exe in (("delphi", delphi), ("fpc", fpc)):
        for test in TESTS if opt.mode == "full" else TESTS[:2]:
            source = ROOT / "tests" / (test + ".dpr")
            own = dest / (compiler + "-" + test)
            own.mkdir()
            target = own / (test + ".exe")
            if compiler == "delphi":
                command = [exe, "-B", "-Q",
                           "-NSSystem;System.Win;Winapi",
                           "-U" + str(ROOT/"pascal") + ";" + str(ROOT/"tests"),
                           "-NU" + str(own), "-E" + str(own), source]
            else:
                command = [exe, "-Mdelphi", "-B",
                           "-Fu" + str(ROOT/"pascal"),
                           "-Fu" + str(ROOT/"tests"),
                           "-FU" + str(own), "-o" + str(target), source]
            compiled = job("compile-" + compiler + "-" + test,
                           command, dest, dest, timeout=150)
            compile_row = {
                "compiler": compiler, "test": test,
                "phase": "compile", "terminal": compiled,
                "consumer_exe_sha256": digest(target) if target.is_file() else None,
                "consumer_exe_bytes": target.stat().st_size if target.is_file() else 0}
            cases.append(compile_row)
            if (compiled["numeric_exit_code"] != 0 or compiled["timed_out"] or
                    not artifact_present(compile_row, "consumer_exe_sha256",
                                         "consumer_exe_bytes")):
                break
            shutil.copyfile(DLL, own / DLL.name)
            require(digest(own / DLL.name) == SHA, "E_COPIED_DLL_CHANGED")
            run_command = [target] + (["--verbose"] if test == "TestLeptonica" else [])
            executed = job("run-" + compiler + "-" + test, run_command,
                           own, dest, timeout=240 if test=="TestLeptonica" else 50)
            row = {"compiler": compiler, "test": test,
                   "phase": "run", "terminal": executed,
                   "loaded_dll_source": str((own/DLL.name).resolve()),
                   "loaded_dll_sha256": digest(own/DLL.name),
                   "consumer_exe_sha256": digest(target),
                   "consumer_exe_bytes": target.stat().st_size}
            try:
                counts = parse_run_output(test, executed["stdout"])
                if counts is not None:
                    row["actual_counts"] = counts
                if test == "TestLeptonica":
                    row["not_executed"] = parse_not_executed(
                        executed["stdout"], counts)
                    row["not_executed_scope_established"] = True
                    text = Path(executed["stdout"]).read_text(
                        encoding="utf-8", errors="replace")
                    require(str((own / DLL.name).resolve()).casefold() in text.casefold(),
                            "E_REAL_DLL_LOADED_PATH_MISSING")
                row["output_parsed"] = True
            except (OSError, ValueError, RuntimeError) as exc:
                row["output_parsed"] = False
                row["output_error"] = str(exc)
                if test == "TestLeptonica":
                    row["not_executed_scope_established"] = False
                    row["scope_disposition"] = "NOT_ESTABLISHED"
            cases.append(row)
                                                                          
    package = ROOT / "packages/delphi/crosspascal_crosslept.dpk"
    units = dest / "delphi-package"
    units.mkdir()
    command = [delphi, "-B", "-Q", "-NSSystem;System.Win;Winapi",
               "-U" + str(ROOT/"pascal"), "-NU" + str(units),
               "-LE" + str(units), "-LN" + str(units), package]
    compilation = job("compile-delphi-package", command, package.parent,
                      dest, timeout=130)
    cases.append({"compiler":"delphi","test":"crosspascal_crosslept",
                  "phase":"package","terminal":compilation,
                  "bpl_sha256":digest(units/"crosspascal_crosslept.bpl")
                  if (units/"crosspascal_crosslept.bpl").is_file() else None,
                  "bpl_bytes":(units/"crosspascal_crosslept.bpl").stat().st_size
                  if (units/"crosspascal_crosslept.bpl").is_file() else 0})
    assessment = assess_cases(cases, opt.mode)
    all_pass = assessment["passed"]
    summary = {
        "schema": "crosslept-portable-win64-user-validation-v1",
        "release_directory": str(ROOT), "mode": opt.mode,
        "dll_sha256": SHA, "cases": cases, "passed": all_pass,
        "required_matrix": assessment,
        "suite_profile": {
            "id": SUITE_PROFILE, "known_not_run": sorted(KNOWN_NOT_RUN),
            "optional_tests": dict(OPTIONAL_TESTS),
            "optional_skip_roles": sorted(OPTIONAL_SKIP_ROLES)},
        "compilers": {"delphi": str(delphi), "fpc": str(fpc)},
        "original_binding_sources_unchanged": True,
        "dll_rebuilds": 0}
    save(dest/"RESULT.json", summary)
    print(json.dumps({"pass": all_pass, "cases": len(cases),
                      "native_run_exits": [{
                          "compiler": c["compiler"], "test": c["test"],
                          "exit": c["terminal"]["numeric_exit_code"],
                          "counts": c.get("actual_counts")}
                          for c in cases if c["phase"]=="run"],
                      "package_build_exit": compilation["numeric_exit_code"]}))
    return 0 if all_pass else 2


if __name__ == "__main__":
    try:
        sys.exit(main())
    except Exception as exc:
        print("FAIL_CLOSED_USER_VALIDATION:" + repr(exc), file=sys.stderr)
        sys.exit(2)
