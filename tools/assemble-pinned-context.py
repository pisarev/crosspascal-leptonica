"""Standalone reproducible consumer context assembler, no implicit work roots.

Both directories must be explicitly supplied. The original 147 members are
hashed before any write. Copy, never hardlink, so updating the consumer output
cannot mutate an accepted input through a shared inode.
"""
from pathlib import Path
import argparse,hashlib,json,shutil,sys
HERE=Path(__file__).resolve().parent
def sha(p):
    h=hashlib.sha256()
    with p.open('rb') as f:
        for b in iter(lambda:f.read(1048576),b''):h.update(b)
    return h.hexdigest()
def require(test,reason):
    if not test:raise RuntimeError(reason)
def main():
    p=argparse.ArgumentParser()
    p.add_argument('--original-context',type=Path,required=True)
    p.add_argument('--output-context',type=Path,required=True)
    args=p.parse_args()
    source=args.original_context.resolve(strict=True)
    target=args.output_context.resolve()
    require(source.is_dir() and not source.is_symlink(),'E_ORIGINAL_CONTEXT')
    require(not target.exists() and target.parent.is_dir(),'E_OUTPUT_MUST_NOT_EXIST')
    require(not target.is_relative_to(source) and not source.is_relative_to(target),
            'E_CONTEXT_OVERLAP')
    orig=json.loads((HERE/'ORIGINAL-147-INPUT-LOCK.json').read_text(encoding='utf-8'))
    new=json.loads((HERE/'CONSUMER-INPUT-LOCK.json').read_text(encoding='utf-8'))
    assert len(orig['files'])==147 and len(new['files'])==149
    expected_old={x['path']:x for x in orig['files']}
    expected_new={x['path']:x for x in new['files']}
    require(set(expected_new)==set(expected_old)|{'owned_setjmp_compat.h','owned_codec_launcher.sh'},
            'E_MEMBER_SET')
    old_actual={x.relative_to(source).as_posix():x for x in source.rglob('*') if x.is_file()}
    require(set(old_actual)==set(expected_old),'E_OLD_MEMBER_SET')
    for rel,v in expected_old.items():
        path=old_actual[rel]
        require(not path.is_symlink() and path.stat().st_size==v['bytes'] and
                sha(path)==v['sha256'],'E_SOURCE_SHA:'+rel)
                                                                                 
    target.mkdir()
    for rel,v in expected_new.items():
        dest=target/rel;dest.parent.mkdir(parents=True,exist_ok=True)
        if rel=='Dockerfile.windows.locked':source_file=HERE/'Dockerfile.windows.locked'
        elif rel in ('owned_setjmp_compat.h','owned_codec_launcher.sh'):source_file=HERE/rel
        else:source_file=source/rel
        shutil.copy2(source_file,dest)
        require(sha(dest)==v['sha256'] and dest.stat().st_size==v['bytes'],
                'E_OUTPUT_SHA:'+rel)
    return {'status':'ASSEMBLED_149_LOCKED_FILES','output':str(target),
            'original_source_unchanged':True,'files':149,
            'lock_sha256':sha(HERE/'CONSUMER-INPUT-LOCK.json')}
if __name__=='__main__':
    try:print(json.dumps(main(),indent=2))
    except Exception as exc:
        print('FAIL_CLOSED:',repr(exc),file=sys.stderr);sys.exit(2)
