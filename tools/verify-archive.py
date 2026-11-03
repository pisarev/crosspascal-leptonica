"""Safely extract and verify a separately distributed CrossLept archive.

New empty destination only; refuses traversal, reparse entries, duplicates,
missing/extra files and any mismatched source byte/hash. Source-only
archives explicitly lack the binary. No compilation or global install.
"""
import argparse
import hashlib
import json
from pathlib import Path
import stat
import sys
import zipfile

DLLSHA="5d85e3f3c0a586eda168aa5757fd657ebcdfd173f1db6eb25451061504e48700"
PREFIX="pascal-crosslept/"

def sha(data):return hashlib.sha256(data).hexdigest()
def require(condition,code):
    if not condition:raise RuntimeError(code)

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument("--archive",required=True,type=Path)
    ap.add_argument("--dest",required=True,type=Path)
    args=ap.parse_args()
    archive=args.archive.resolve(strict=True)
    dest=args.dest.resolve()
    require(not dest.exists(),"E_ARCHIVE_EXTRACT_TARGET_ALREADY_EXISTS")
    with zipfile.ZipFile(archive,"r") as z:
        infos=z.infolist()
        names=[i.filename for i in infos]
        require(len(names)==len(set(names)) and
                PREFIX+"ARCHIVE-MANIFEST.json" in names,
                "E_ARCHIVE_DUPLICATE_OR_MISSING_MANIFEST")
        for entry in infos:
            path=Path(entry.filename)
            require(entry.filename.startswith(PREFIX) and
                    not entry.filename.endswith("/") and
                    not path.is_absolute() and ".." not in path.parts and
                    "\\" not in entry.filename and ":" not in entry.filename,
                    "E_ARCHIVE_UNSAFE_ENTRY")
            mode=(entry.external_attr>>16)&0xffff
            require(not stat.S_ISLNK(mode) and entry.file_size<20*1024*1024,
                    "E_ARCHIVE_SYMLINK_OR_OVERSIZE")
        manifest=json.loads(z.read(PREFIX+"ARCHIVE-MANIFEST.json").decode("utf-8"))
        require(manifest["schema"]=="crosslept-stage20-001-archive-manifest-v1"
                and manifest["expected_native_dll_sha256"]==DLLSHA and
                manifest["variant"] in ("source","complete-win64") and
                manifest["RELEASE_READY"] is False,
                "E_ARCHIVE_MANIFEST_UNSUPPORTED")
        expected={PREFIX+r["path"]:r for r in manifest["files"]}
        require(set(expected)|{PREFIX+"ARCHIVE-MANIFEST.json"}==set(names),
                "E_ARCHIVE_EXACT_MEMBERS")
        for name,record in expected.items():
            data=z.read(name)
            require(len(data)==record["bytes"] and sha(data)==record["sha256"],
                    "E_ARCHIVE_BAD_SOURCE_SHA:"+name)
        dll=PREFIX+"bin/leptonica-1.87.0.dll"
        require((dll in expected)==manifest["dll_included"] and
                (dll in expected)==(manifest["variant"]=="complete-win64"),
                "E_ARCHIVE_DLL_VARIANT_INCONSISTENT")
        if manifest["dll_included"]:
            require(expected[dll]["sha256"]==DLLSHA,"E_ARCHIVE_DLL_SHA")
        dest.mkdir(parents=True)
        for entry in infos:
            selected=dest/entry.filename
            selected.parent.mkdir(parents=True,exist_ok=True)
            with selected.open("xb") as out:
                out.write(z.read(entry))
    unpacked={p.relative_to(dest).as_posix():p for p in dest.rglob("*")
              if p.is_file()}
    require(set(unpacked)==set(names),"E_EXTRACTED_FILE_SET")
    for name,entry in expected.items():
        p=unpacked[name]
        require(p.stat().st_size==entry["bytes"] and
                sha(p.read_bytes())==entry["sha256"],
                "E_EXTRACTED_SHA:"+name)
    status=json.loads((dest/PREFIX/"RELEASE-STATUS.json").read_text(encoding="utf-8"))
    require(status["archive_variant"]==manifest["variant"] and
            status["native_dll_in_this_archive"]==manifest["dll_included"] and
            status["RELEASE_READY"] is False,
            "E_RELEASE_STATUS_VARIANT")
    print(json.dumps({"variant":manifest["variant"],
                      "extracted_files":len(unpacked),
                      "exact_source_sha":True,
                      "dll_present":manifest["dll_included"],
                      "RELEASE_READY":False,
                      "root":str(dest/PREFIX)}))
    return 0

if __name__=="__main__":
    try:sys.exit(main())
    except Exception as exc:
        print("FAIL_CLOSED_ARCHIVE_EXTRACTION:"+repr(exc),file=sys.stderr)
        sys.exit(2)
