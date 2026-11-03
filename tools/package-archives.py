"""Make two deterministic standalone archives: sources and complete Win64.

Only reads the current self-contained package tree. All entries are hashed,
symlinks and generated caches are excluded. Each zip includes its own
ARCHIVE-MANIFEST.json; output must be an initially nonexistent directory.
"""
from __future__ import annotations
import argparse
import hashlib
import json
from pathlib import Path
import os
import stat
import sys
import zipfile

ROOT=Path(__file__).resolve().parent.parent
EXPECTED_DLL="5d85e3f3c0a586eda168aa5757fd657ebcdfd173f1db6eb25451061504e48700"
PREFIX="pascal-crosslept/"
ARCHIVES={
    "source":"pascal-crosslept-source-candidate.zip",
    "complete-win64":"pascal-crosslept-complete-win64-candidate.zip"}

def sha(data):
    return hashlib.sha256(data).hexdigest()

def require(ok,why):
    if not ok:raise RuntimeError(why)

def archive_info(name,data):
    zi=zipfile.ZipInfo(PREFIX+name, date_time=(2026,10,30,0,0,0))
    zi.compress_type=zipfile.ZIP_DEFLATED
    zi.external_attr=(0o100644<<16)
    zi.create_system=3
    return zi,data

def original_files():
    require((ROOT/"bin/leptonica-1.87.0.dll").is_file() and
            sha((ROOT/"bin/leptonica-1.87.0.dll").read_bytes())==EXPECTED_DLL,
            "E_ORIGINAL_NATIVE_DLL_SHA_CHANGED")
    out={}
    for p in sorted(ROOT.rglob("*")):
        if not p.is_file():continue
        rel=p.relative_to(ROOT).as_posix()
        require(not p.is_symlink() and
                not any(part in (".git","__pycache__","dist","build")
                        for part in p.relative_to(ROOT).parts),
                "E_UNEXPECTED_REPARSE_OR_BUILD_TREE:"+rel)
                                                                            
                                                                          
                                                                           
        if rel=="ARCHIVE-MANIFEST.json":
            continue
        require(not rel.endswith((".pyc",".pyo",".dcu",".ppu",".o",".obj",".exe",
                                  ".dll.a",".bpl",".dcp")) and
                not rel.startswith("ARCHIVE-MANIFEST"),
                "E_CACHED_OR_PROHIBITED_DELIVERABLE:"+rel)
        require(rel not in out,"E_DUPLICATE_FILE")
        out[rel]=p.read_bytes()
    require(len([x for x in out if x.startswith("pascal/") and
                 x.endswith(".pas")])==29,
            "E_PASCAL_SOURCE_COUNT")
    return out

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument("--output",type=Path,required=True)
    args=ap.parse_args()
    out=args.output.resolve()
    require(not out.exists(),"E_ARCHIVE_OUTPUT_ALREADY_EXISTS")
    files=original_files()
    out.mkdir(parents=True)
    manifests={}
    for variant,filename in ARCHIVES.items():
        content=dict(files)
        if variant=="source":
            content.pop("bin/leptonica-1.87.0.dll")
                                                                             
                                                                            
        status=json.loads(content["RELEASE-STATUS.json"].decode("utf-8"))
        status["archive_variant"]=variant
        status["native_dll_in_this_archive"]=variant=="complete-win64"
        status["RELEASE_READY"]=False
        status["independent_acceptance"]=None
        content["RELEASE-STATUS.json"]=(json.dumps(status,indent=2,
             ensure_ascii=False)+"\n").encode("utf-8")
        manifest={
            "schema":"crosslept-stage20-001-archive-manifest-v1",
            "variant":variant,
            "root":"pascal-crosslept",
            "dll_included":variant=="complete-win64",
            "expected_native_dll_sha256":EXPECTED_DLL,
            "source_and_native_rebuilds":0,
            "RELEASE_READY":False,
            "files":[{"path":name,"bytes":len(body),"sha256":sha(body)}
                     for name,body in sorted(content.items())]}
        manifest_bytes=(json.dumps(manifest,indent=2,ensure_ascii=False)+"\n").encode("utf-8")
        content["ARCHIVE-MANIFEST.json"]=manifest_bytes
        path=out/filename
        with zipfile.ZipFile(path,"x",compression=zipfile.ZIP_DEFLATED,
                             compresslevel=7,allowZip64=True) as zf:
            for name,data in sorted(content.items()):
                zi,body=archive_info(name,data)
                zf.writestr(zi,body,compress_type=zipfile.ZIP_DEFLATED,
                            compresslevel=7)
        manifests[variant]={"archive_path":str(path),"archive_bytes":path.stat().st_size,
            "archive_sha256":sha(path.read_bytes()),
            "manifest_sha256":sha(manifest_bytes),
            "files_excluding_manifest":len(manifest["files"]),
            "total_uncompressed_bytes":sum(x["bytes"] for x in manifest["files"]),
            "variant":variant}
    evidence={"schema":"crosslept-stage20-001-archive-evidence-v1",
              "releases":manifests,"no_developer_checkout_or_cache":True,
              "separate_source_and_binary_manifests":True,
              "publication":False}
    (out/"ARCHIVES.json").write_text(json.dumps(evidence,indent=2)+"\n",
                                      encoding="utf-8")
    print(json.dumps({"variants":{
        k:{"files":x["files_excluding_manifest"],
           "archive_bytes":x["archive_bytes"],"sha":x["archive_sha256"]}
        for k,x in manifests.items()}}))

if __name__=="__main__":
    try:main()
    except Exception as exc:
        print("FAIL_CLOSED_USER_ARCHIVE:"+repr(exc),file=sys.stderr)
        sys.exit(2)
