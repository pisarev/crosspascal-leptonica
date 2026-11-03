"""Relocatable, exact-SHA Pascal JPEG/PNG controls (Delphi and/or FPC).

Usage: python -B tests/run-codec-controls.py --compiler both --output C:/scratch/009
No pinned Stage paths, WSL, network, native build or hidden source dependencies.
"""
from pathlib import Path
import argparse,hashlib,json,subprocess,shutil,sys,datetime,ctypes
from ctypes import wintypes

HERE=Path(__file__).resolve().parent
RELEASE=HERE.parent
DLL=RELEASE/'bin/leptonica-1.87.0.dll'
EXPECTED='5d85e3f3c0a586eda168aa5757fd657ebcdfd173f1db6eb25451061504e48700'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def run_bounded(argv, *, cwd=None, timeout=90):
    """True bounded child PID, OS creation time, stdout/stderr and exit.

    Preserves the accepted scenario checks without a third-party package
    dependency, a background worker, or any global PATH modification.
    """
    p=subprocess.Popen(list(map(str,argv)),cwd=cwd,stdin=subprocess.DEVNULL,
                       stdout=subprocess.PIPE,stderr=subprocess.PIPE,
                       creationflags=subprocess.CREATE_NO_WINDOW)
    creation=wintypes.FILETIME()
    exited,kernel,user=(wintypes.FILETIME(),wintypes.FILETIME(),wintypes.FILETIME())
    handle=ctypes.windll.kernel32.OpenProcess(0x0400,False,p.pid)
    if not handle:
        p.kill();p.communicate()
        raise RuntimeError('E_CHILD_PROCESS_CREATION_HANDLE')
    try:
        ok=ctypes.windll.kernel32.GetProcessTimes(handle,ctypes.byref(creation),
                      ctypes.byref(exited),ctypes.byref(kernel),ctypes.byref(user))
    finally:
        ctypes.windll.kernel32.CloseHandle(handle)
    if not ok:
        p.kill();p.communicate()
        raise RuntimeError('E_CHILD_CREATION_TIME_UNAVAILABLE')
    ticks=(creation.dwHighDateTime<<32)|creation.dwLowDateTime
    created=datetime.datetime.fromtimestamp(
        (ticks-116444736000000000)/10000000,
        tz=datetime.timezone.utc).isoformat()
    timed=False
    try:
        stdout,stderr=p.communicate(timeout=timeout)
    except subprocess.TimeoutExpired:
        timed=True
        p.kill()
        stdout,stderr=p.communicate(timeout=15)
    return {'argv':list(map(str,argv)),'pid':p.pid,
            'created_at_utc':created,'numeric_exit_code':int(p.returncode),
            'stdout':stdout,'stderr':stderr,'timeout':timed,
            'timeout_seconds':timeout}

MODES=(
 'jpeg_valid','jpeg_trunc','jpeg_trunc_bad_terminator',
 'png_memory_valid','png_memory_truncated','png_memory_crc',
 'png_stream_truncated','png_stream_crc',
 'png_resolution_short_header','png_colormap_short_header',
 'png_stream_write_readonly','png_memory_write_no_pix',
 'png_memory_write_roundtrip','png_stream_write_roundtrip')

def main():
    parser=argparse.ArgumentParser()
    parser.add_argument('--compiler',choices=('delphi','fpc','both'),default='both')
    parser.add_argument('--output',type=Path,required=True)
                                                                          
                                                                         
    parser.add_argument('--delphi',type=Path,default=None)
    parser.add_argument('--fpc',type=Path,default=None)
    args=parser.parse_args()
                                                                    
                                                                           
    wanted=('delphi','fpc') if args.compiler=='both' else (args.compiler,)
    for selected in wanted:
        selected_path=getattr(args,selected)
        if selected_path is None:
            found=shutil.which('dcc64.exe' if selected=='delphi' else 'fpc.exe')
            if found is None:
                raise RuntimeError('E_'+selected.upper()+'_COMPILER_REQUIRED')
            selected_path=Path(found)
        try:
            selected_path=selected_path.resolve(strict=True)
        except (OSError,ValueError) as exc:
            raise RuntimeError('E_SELECTED_'+selected.upper()+'_COMPILER_MISSING_OR_INVALID') from exc
        if not selected_path.is_file():
            raise RuntimeError('E_SELECTED_'+selected.upper()+'_COMPILER_NOT_FILE')
        setattr(args,selected,selected_path)
    out=args.output.resolve()
    if out.exists():raise RuntimeError('E_OUTPUT_ALREADY_EXISTS:'+str(out))
    if not DLL.is_file() or sha(DLL)!=EXPECTED:
        raise RuntimeError('E_WRONG_FINAL_DLL')
    if not (HERE/'codec-data/FIXTURES.json').is_file():
        raise RuntimeError('E_FIXTURE_MANIFEST_MISSING')
    fixtures=json.loads((HERE/'codec-data/FIXTURES.json').read_text())
    for f in fixtures['fixtures']:
        p=HERE/'codec-data'/f['file']
        if not p.is_file() or sha(p)!=f['sha256'] or p.stat().st_size!=f['bytes']:
            raise RuntimeError('E_FIXTURE_PIN:'+f['file'])
    out.mkdir(parents=True)
    cases=[]
    source=HERE/'CodecGate009.dpr'
    for compiler in wanted:
        dest=out/compiler;dest.mkdir()
        for p in (HERE/'codec-data').glob('*.png'):shutil.copy2(p,dest/p.name)
        shutil.copy2(HERE/'codec-data/valid-control.jpg',dest/'valid-control.jpg')
        shutil.copy2(DLL,dest/DLL.name)
        if not (dest/DLL.name).is_file() or sha(dest/DLL.name)!=EXPECTED:
            raise RuntimeError('E_COPIED_DLL_SHA')
        exe=dest/'CodecGate009.exe'
        if compiler=='delphi':
            argv=[str(args.delphi),'-B','-Q','-NSSystem;System.Win;Winapi',
                  '-NU'+str(dest),'-E'+str(dest),str(source)]
        else:
            argv=[str(args.fpc),'-Mdelphi','-B','-FU'+str(dest),'-o'+str(exe),str(source)]
        build=run_bounded(argv,timeout=90)
        (out/(compiler+'-compile.stdout.txt')).write_bytes(build['stdout'])
        (out/(compiler+'-compile.stderr.txt')).write_bytes(build['stderr'])
        cases.append({'compiler':compiler,'phase':'compile','argv':argv,
            'exit_code':build['numeric_exit_code'],'pid':build['pid'],
            'created_at_utc':build['created_at_utc'],
            'timeout':build['timeout'],'stdout':compiler+'-compile.stdout.txt',
            'stderr':compiler+'-compile.stderr.txt'})
        if build['numeric_exit_code']!=0 or build['timeout'] or not exe.is_file():break
        for mode in MODES:
            call=[str(exe),mode]
            native=run_bounded(call,cwd=dest,timeout=16)
            code,so,se,timed=(native['numeric_exit_code'],
                              native['stdout'],native['stderr'],native['timeout'])
            stdout=compiler+'-'+mode+'.stdout.txt'
            stderr=compiler+'-'+mode+'.stderr.txt'
            (out/stdout).write_bytes(so);(out/stderr).write_bytes(se)
            body=so.decode(errors='replace')
            negative=mode=='jpeg_trunc_bad_terminator'
            ok=(code==79 and not timed and 'PRE_NATIVE_JPEG_TERMINATOR_REJECT' in body and
                'LOADED_DLL=' not in body and 'BEFORE_NATIVE_JPEG_CALL' not in body) if negative else (
                code==0 and not timed and 'FINAL_PASS' in body and
                str((dest/DLL.name).resolve()).casefold() in body.casefold())
            if mode=='jpeg_trunc' and not negative:
                ok=ok and 'JPEG_PRECONDITION_PASS' in body and 'JPEG_BYTE_AT_DECLARED_LENGTH=0' in body
                ok=ok and 'JPEG_NATIVE_RETURN_PASS' in body
            if mode=='png_stream_write_readonly':
                ok=ok and ('PNG_STREAM_WRITE_ERROR_RETURN' in body and
                   'PNG_VALID_MSVCRT_STREAM_READONLY_OPEN' in body)
            if mode=='png_memory_write_no_pix':
                ok=ok and 'PNG_MEMORY_WRITE_EARLY_GUARD_ONLY' in body
            if mode=='png_resolution_short_header':
                ok=ok and 'PNG_RESOLUTION_READ_ERROR_RETURN' in body
            if mode=='png_colormap_short_header':
                ok=ok and 'PNG_COLORMAP_READ_ERROR_RETURN' in body
            cases.append({'compiler':compiler,'phase':'run','mode':mode,'argv':call,
                'pid':native['pid'],'created_at_utc':native['created_at_utc'],
                'exit_code':code,'timeout':timed,'timeout_seconds':16,'expected_reject_before_DLL':negative,
                'ok':ok,'stdout':stdout,'stderr':stderr,
                'exe_sha256':sha(exe),'dll_sha256':sha(dest/DLL.name),
                'loaded_path':str((dest/DLL.name).resolve()) if not negative else None})
            if not ok:break
        if not cases[-1].get('ok',False):break
    runs=[x for x in cases if x['phase']=='run']
    all_pass=len(runs)==len(MODES)*len(wanted) and all(x['ok'] for x in runs)
    result={'schema':'stage12-009-standalone-real-codec-error-controls-v1',
      'release_root':str(RELEASE),'source_sha256':sha(source),
      'dll_sha256':EXPECTED,'compiler_modes':list(wanted),
      'selected_compiler_paths':{
          selected:str(getattr(args,selected)) for selected in wanted},
      'fixture_manifest_sha256':sha(HERE/'codec-data/FIXTURES.json'),
      'expected_run_count':len(MODES)*len(wanted),'actual_run_count':len(runs),
      'all_pass':all_pass,'cases':cases,'no_native_build':True,'no_network':True}
    (out/'RESULT.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'all_pass':all_pass,'compiled':len([c for c in cases if c['phase']=='compile']),
                      'cases':[(r['compiler'],r['mode'],r['exit_code'],r['ok']) for r in runs]}))
    if not all_pass:return 2
    return 0

if __name__=='__main__':sys.exit(main())
