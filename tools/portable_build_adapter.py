"""Self-contained guarded Leptonica adapter, with an explicitly supplied external context.

There are NO references to prior Stage12–18 working directories in execution code.
The input lock is distributed with this script. The 389 MB context stays external.
Default and test modes are read-only; real Docker build requires explicit mode,
all executable paths, verified bytes and a separate later authorization.
"""
import argparse
import hashlib
import json
from pathlib import Path
import os
import subprocess
import sys

HERE=Path(__file__).resolve().parent
PRODUCTION_LOCK_SHA="67ad043bc84fc85177965db55daa40f67f279c8297b7eea4aa7c610ac1704b2c"
PRODUCTION_CONTEXT_SHA="e1f7b84f5611fd6a5dfee4c25478a92217a7a02a21b6bc87add413b7f7b61b81"
EXPECTED_BASE="sha256:5c0737d0033450cc78360bdc6024499ae984431a4bb47967d16c15c2fbc4e086"
EXPECTED_SEALS={
    "stage15":"415028655e2984ac6125fd0cac39e23e752a161f1e8ab03ad88bcc8f4ff7d327",
    "stage16":"0ef3d714424f78ad7c21b6743b103d280906905f63d73c2b022c726da07367d7",
    "stage17":"c4680c899d9597a6f08e3c4a344096350093f2d0235c3020a463148c90ae5046",
    "stage18":"a9e7607febbbb946860b77b747066594388784b08404fcdd3fec947feccaf517"}

def digest(path):
    h=hashlib.sha256()
    with Path(path).open("rb") as f:
        for b in iter(lambda:f.read(1048576),b""):h.update(b)
    return h.hexdigest()

def require(ok,code):
    if not ok:raise RuntimeError(code)

def verify(context,lock,test_fixture=False):
    require(context.is_dir() and not context.is_symlink(),"E_CONTEXT_MISSING")
    require(lock["schema"]=="crosslept-portable-consumer-lock-v1","E_LOCK_SCHEMA")
    entries=lock.get("files",[])
    require(isinstance(entries,list) and entries,"E_LOCK_EMPTY")
    if not test_fixture:
        require(len(entries)==149 and lock["library"]=="leptonica" and
                lock["mode"]=="DERIVED_LOCAL_IMAGE_CONTEXT" and
                lock["accepted_input_seals"]==EXPECTED_SEALS and
                lock["full_context_digest"]==PRODUCTION_CONTEXT_SHA and
                lock["image_id"]==EXPECTED_BASE,"E_ACCEPTED_PROVENANCE")
    expected={}
    for e in entries:
        rel=e["path"]
        rp=Path(rel)
        require(rel==rp.as_posix() and not rp.is_absolute() and
                ".." not in rp.parts and chr(92) not in rel and ":" not in rel,
                "E_INPUT_PATH:"+rel)
        require(rel not in expected,"E_DUPLICATE_INPUT:"+rel)
        expected[rel]=e
    actual={}
    for p in context.rglob("*"):
        require(not p.is_symlink(),"E_CONTEXT_SYMLINK")
        if p.is_file():
            rel=p.relative_to(context).as_posix()
            require(rel in expected,"E_EXTRA_INPUT:"+rel)
            actual[rel]=p
    for rel in sorted(expected):
        require(rel in actual,"E_MISSING_INPUT:"+rel)
        p=actual[rel];item=expected[rel]
        require(p.stat().st_size==item["bytes"],"E_INPUT_SIZE:"+rel)
        require(digest(p)==item["sha256"],"E_INPUT_SHA:"+rel)
                                                                   
    h=hashlib.sha256(b"native-docker-build-context-v1\0")
    for rel in sorted(expected):
        p=actual[rel]
        h.update(rel.encode()+b"\0"+str(p.stat().st_size).encode()+b"\0")
        with p.open("rb") as f:
            for b in iter(lambda:f.read(1048576),b""):h.update(b)
    aggregate=h.hexdigest()
    if not test_fixture:require(aggregate==PRODUCTION_CONTEXT_SHA,"E_CONTEXT_AGGREGATE_SHA")
    return {"status":"VERIFIED_INPUTS_ONLY","context_root":str(context),
            "file_count":len(expected),"bytes":sum(x["bytes"] for x in entries),
            "aggregate_sha256":aggregate,"files_read":[{"path":x,"sha256":expected[x]["sha256"]}
                                                   for x in sorted(expected)]}

def resolve_actual_wsl_context(context,wsl_exe,distro,requested=None,runner=subprocess.run):
    """Prove Docker's Linux root reverses to the *verified* Windows directory.

    Never accept an independent WSL path. Conversion and Linux realpath occur
    in the explicitly chosen distribution; a reverse conversion must identify
    the same Windows directory, and Dockerfile bytes must agree on both sides.
    No Docker process is launched here.
    """
    ctx=context.resolve(strict=True)
    def wsl(binary,*argv):
        cmd=[str(wsl_exe),"-d",distro,"-u","root","--",binary,*map(str,argv)]
        p=runner(cmd,capture_output=True,text=True,timeout=18,check=False)
        require(p.returncode==0,
                "E_WSL_PATH_PROBE:"+binary+":"+(p.stderr or "")[-160:])
        output=p.stdout.strip()
        require(output and "\n" not in output and "\r" not in output,
                "E_WSL_UNEXPECTED_PATH_RESULT:"+binary)
        return output
                                                                            
                                                                             
    forward=wsl("/usr/bin/wslpath","-u",str(ctx).replace(chr(92),"/"))
    require(forward.startswith("/mnt/"),"E_WSL_FORWARD_OUTSIDE_MOUNT")
    canonical=wsl("/usr/bin/realpath","-e",forward)
    require(canonical.startswith("/mnt/"),"E_WSL_CANONICAL_OUTSIDE_MOUNT")
    if requested:
        require(requested==canonical,"E_WSL_CONTEXT_MISMATCH")
    reverse=wsl("/usr/bin/wslpath","-w",canonical)
    try:
        same=Path(reverse).resolve(strict=True).samefile(ctx)
    except (OSError,ValueError):
        same=False
    require(same,"E_WSL_CONTEXT_NOT_SAME_DIRECTORY")
    dockerfile=ctx/"Dockerfile.windows.locked"
    require(dockerfile.is_file(),"E_MISSING_DOCKERFILE")
    windows_sha=digest(dockerfile)
    remote_sha=wsl("/usr/bin/sha256sum",canonical.rstrip("/")+
                   "/Dockerfile.windows.locked").split()[0]
    require(remote_sha==windows_sha,"E_WSL_DOCKERFILE_SHA_MISMATCH")
    return {"windows_canonical_root":str(ctx),"wsl_distribution":distro,
            "forward_wslpath":forward,"linux_canonical_root":canonical,
            "reverse_windows_root":reverse,
            "windows_dockerfile_sha256":windows_sha,
            "wsl_dockerfile_sha256":remote_sha,
            "verified_same_directory":True}

def main():
    p=argparse.ArgumentParser()
    p.add_argument("--context",required=True)
    p.add_argument("--lock",required=True)
    p.add_argument("--expected-lock-sha",required=True)
    p.add_argument("--verify-only",action="store_true")
    p.add_argument("--fixture-only",action="store_true",
                   help="Test fixture: never permits a real build")
    p.add_argument("--audit-output",required=True)
    p.add_argument("--execute-build",action="store_true")
    p.add_argument("--wsl-exe")
    p.add_argument("--wsl-distribution")
    p.add_argument("--wsl-context")
    p.add_argument("--docker-exe",help="Absolute Linux Docker executable")
    p.add_argument("--output-tag")
    p.add_argument("--record-build-route-only",action="store_true",
                   help="Read-only route proof; never launches Docker")
    args=p.parse_args()
    try:
        require(args.verify_only != args.execute_build,"E_SELECT_EXACT_MODE")
        lock_path=Path(args.lock).resolve(strict=True)
        require(digest(lock_path)==args.expected_lock_sha,"E_LOCK_SHA")
        if not args.fixture_only:
            require(args.expected_lock_sha==PRODUCTION_LOCK_SHA and
                    lock_path==HERE/"CONSUMER-INPUT-LOCK.json",
                    "E_PACKAGED_LOCK")
        require(not (args.fixture_only and args.execute_build),"E_FIXTURE_NO_BUILD")
        require(not args.record_build_route_only or args.execute_build,
                "E_RECORD_MODE_REQUIRES_BUILD_ROUTE")
        ctx=Path(args.context).resolve(strict=True)
        lock=json.loads(lock_path.read_text(encoding="utf-8"))
        result=verify(ctx,lock,args.fixture_only)
        audit=Path(args.audit_output).resolve()
        require(not audit.exists() and audit.parent.is_dir() and
                not audit.is_relative_to(ctx),"E_AUDIT_DESTINATION")
        if args.execute_build:
                                                                                
            require(all((args.wsl_exe,args.wsl_distribution,
                         args.docker_exe,args.output_tag)),"E_EXPLICIT_BUILD_RUNTIME")
            require(Path(args.wsl_exe).is_file() and
                    args.docker_exe.startswith("/") and
                    all(x not in args.output_tag for x in (" ",";","\n")),
                    "E_BUILD_RUNTIME_PATH")
            dockerfile=ctx/"Dockerfile.windows.locked"
            require(dockerfile.is_file() and
                    EXPECTED_BASE in dockerfile.read_text(encoding="utf-8"),
                    "E_BUILD_LOCAL_BASE")
            binding=resolve_actual_wsl_context(
                ctx,Path(args.wsl_exe).resolve(strict=True),
                args.wsl_distribution,args.wsl_context)
            linux_context=binding["linux_canonical_root"]
            command=[str(Path(args.wsl_exe)),"-d",args.wsl_distribution,
                     "-u","root","--",args.docker_exe,"build",
                     "--platform","linux/amd64","--pull=false","--no-cache",
                     "--network=none","--cpuset-cpus=0","--memory=3g",
                     "--build-arg","CROSSCV_SOURCE_CONTEXT="+PRODUCTION_CONTEXT_SHA,
                     "--build-arg","LEPT_C_FLAGS=",
                     "--build-arg","LIBJPEG_SIMD=ON",
                     "-f",linux_context.rstrip("/")+"/Dockerfile.windows.locked",
                     "-t",args.output_tag,linux_context]
            result["actual_context_binding"]=binding
            result["build_command"]=command
            result["lock_sha256"]=args.expected_lock_sha
            result["actual_build_executed"]=False
            result["record_only"]=args.record_build_route_only
            result["docker_executable"]=args.docker_exe
            audit.write_text(json.dumps(result,indent=2)+"\n",encoding="utf-8")
            if args.record_build_route_only:
                print(json.dumps({"status":"RECORDED_VERIFIED_ROUTE_ONLY",
                                  "canonical_root":str(ctx),
                                  "linux_context":linux_context,
                                  "docker_invoked":False}))
                return 0
            environment=dict(os.environ)
            environment["DOCKER_BUILDKIT"]="0"
                                                                                   
            completed=subprocess.run(command,env=environment,check=False)
            return completed.returncode
        result["actual_build_executed"]=False
        audit.write_text(json.dumps(result,indent=2)+"\n",encoding="utf-8")
        print(json.dumps({"status":result["status"],"files":result["file_count"],
                          "bytes":result["bytes"],"aggregate_sha256":result["aggregate_sha256"]}))
        return 0
    except (ValueError,RuntimeError,OSError,KeyError,json.JSONDecodeError) as exc:
        print("FAIL_CLOSED:"+str(exc),file=sys.stderr)
        return 2

if __name__=="__main__":sys.exit(main())
