{ ************************************************************************** }
{                                                                            }
{ Leptonica                                                                  }
{                                                                            }
{ Copyright © 2026 Yuriy Pisarev (ypisareff@outlook.com)                     }
{                                                                            }
{ ************************************************************************** }

unit Leptonica;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses
  {$IFDEF FPC}
  {$IFDEF MSWINDOWS}
  Windows,
  {$ENDIF}
  DynLibs,
  {$ELSE}
  {$IFDEF MSWINDOWS}
  Winapi.Windows,
  {$ENDIF}
  {$ENDIF}
  SysUtils, LeptonicaTypes, Leptonica.Analysis, Leptonica.Binarize, Leptonica.Blend,
  Leptonica.Box, Leptonica.Color, Leptonica.Colormap, Leptonica.Dewarp, Leptonica.Dna,
  Leptonica.Enhance, Leptonica.FPix, Leptonica.Filter, Leptonica.Graphics, Leptonica.IO,
  Leptonica.Jbig, Leptonica.Kernel, Leptonica.Morph, Leptonica.Numa, Leptonica.Pageseg,
  Leptonica.Pix, Leptonica.Pixa, Leptonica.Pta, Leptonica.Recog, Leptonica.Rop,
  Leptonica.Sarray, Leptonica.Sel, Leptonica.Transform, Leptonica.Watershed;

type
  TLeptModule = record
    Handle: TLibHandle;
    LibraryPath: string;
    Error: string;
    Loaded: Boolean;
  end;

  TLept = record
    Analysis: TLeptAnalysisModule;
    Binarize: TLeptBinarizeModule;
    Blend: TLeptBlendModule;
    Box: TLeptBoxModule;
    Color: TLeptColorModule;
    Colormap: TLeptColormapModule;
    Dewarp: TLeptDewarpModule;
    Dna: TLeptDnaModule;
    Enhance: TLeptEnhanceModule;
    FPix: TLeptFPixModule;
    Filter: TLeptFilterModule;
    Graphics: TLeptGraphicsModule;
    IO: TLeptIOModule;
    Jbig: TLeptJbigModule;
    Kernel: TLeptKernelModule;
    Morph: TLeptMorphModule;
    Numa: TLeptNumaModule;
    Pageseg: TLeptPagesegModule;
    Pix: TLeptPixModule;
    Pixa: TLeptPixaModule;
    Pta: TLeptPtaModule;
    Recog: TLeptRecogModule;
    Rop: TLeptRopModule;
    Sarray: TLeptSarrayModule;
    Sel: TLeptSelModule;
    Transform: TLeptTransformModule;
    Watershed: TLeptWatershedModule;
    Module: TLeptModule;
  end;

var
  Lept: TLept;

const
  LeptSupportedVersion = 'leptonica-1.87';
  LeptIdentityExport = 'getLeptonicaVersion';

const
  LeptIdentityExports: array[0..3] of string = ('getLeptonicaVersion',
    'lept_free', 'pixCreate', 'pixDestroy');

function LeptInitialize(const LibraryPath: string): Boolean;

function LeptFinalize: Boolean;

function LeptRuntimeGeneration: Cardinal;

procedure LeptObjectCreated;
procedure LeptObjectDestroyed;
function LeptLiveObjects: Integer;

const
  LeptFaultAccountingUnderflow = 1;
  LeptFaultMissingDestroy = 2;
  LeptFaultDestroyFailed = 4;

procedure LeptLifecycleFault(const Kind: Integer);
function LeptLifecycleFaults: Integer;
function LeptAccountingFaulted: Boolean;

function LeptLibraryVersion: string;

implementation

type
  TLeptVersionProc = function: PAnsiChar; cdecl;
  TLeptFreeProc = procedure(P: Pointer); cdecl;

var
  LibraryVersion: string = '';
  RuntimeGeneration: Cardinal = 0;
  LiveObjects: Integer = 0;
  LifecycleFault: Integer = 0;

function LeptRuntimeGeneration: Cardinal;
begin
  Result := RuntimeGeneration;
end;

procedure LeptObjectCreated;
begin
  InterlockedIncrement(LiveObjects);
end;

procedure LeptObjectDestroyed;
begin
  if InterlockedDecrement(LiveObjects) < 0 then
  begin
    InterlockedIncrement(LiveObjects);
    LeptLifecycleFault(LeptFaultAccountingUnderflow);
  end;
end;

procedure LeptLifecycleFault(const Kind: Integer);
var
  Was: Integer;
begin
  repeat
    Was := LifecycleFault;
  until InterlockedCompareExchange(LifecycleFault, Was or Kind, Was) = Was;
end;

function LeptLifecycleFaults: Integer;
begin
  Result := LifecycleFault;
end;

function LeptLiveObjects: Integer;
begin
  Result := LiveObjects;
end;

function LeptAccountingFaulted: Boolean;
begin
  Result := LifecycleFault <> 0;
end;

function LeptLibraryVersion: string;
begin
  Result := LibraryVersion;
end;

function AcceptedVersion(const S: string): Boolean;
var
  I: Integer;
begin
  if Copy(S, 1, Length(LeptSupportedVersion)) <> LeptSupportedVersion then
    Exit(False);
  I := Length(LeptSupportedVersion) + 1;
  if (I > Length(S)) or (S[I] <> '.') then
    Exit(False);
  Inc(I);
  if I > Length(S) then
    Exit(False);
  while I <= Length(S) do
  begin
    if not CharInSet(S[I], ['0'..'9']) then
      Exit(False);
    Inc(I);
  end;
  Result := True;
end;

function MissingIdentityExport(const H: TLibHandle): string;
var
  I: Integer;
begin
  for I := Low(LeptIdentityExports) to High(LeptIdentityExports) do
    if GetProcAddress(H, PAnsiChar(AnsiString(LeptIdentityExports[I]))) = nil then
      Exit(LeptIdentityExports[I]);
  Result := '';
end;

{$IFDEF MSWINDOWS}

function ModulePathOf(const Handle: TLibHandle; out Path, Failure: string): Boolean;
const
  PathCharsLimit = 32768;
var
  Capacity, Copied: DWORD;
  Buffer: string;
begin
  Path := '';
  Failure := '';
  Capacity := MAX_PATH;
  while True do
  begin
    SetLength(Buffer, Capacity);
    SetLastError(0);
    Copied := GetModuleFileName(HMODULE(Handle), PChar(Buffer), Capacity);
    if Copied = 0 then
    begin
      Failure := 'the module path could not be read (error ' + IntToStr(GetLastError) + ')';
      Exit(False);
    end;
    if (Copied < Capacity) and (GetLastError <> ERROR_INSUFFICIENT_BUFFER) then
    begin
      SetLength(Buffer, Copied);
      Path := Buffer;
      Exit(True);
    end;
    if Capacity >= PathCharsLimit then
    begin
      Failure := 'the module path is longer than ' + IntToStr(PathCharsLimit) + ' characters';
      Exit(False);
    end;
    Capacity := Capacity * 2;
    if Capacity > PathCharsLimit then
      Capacity := PathCharsLimit;
  end;
end;

function SamePathText(const A, B: string): Boolean;
begin
  Result := SameText(ExcludeTrailingPathDelimiter(ExpandFileName(A)),
    ExcludeTrailingPathDelimiter(ExpandFileName(B)));
end;

const
  GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS = $00000004;

function GetModuleHandleExW(Flags: DWORD; ModuleName: Pointer;
  var Module: HMODULE): BOOL; stdcall; external 'kernel32.dll';

function K32EnumProcessModules(Process: THandle; Modules: Pointer; Size: DWORD;
  var Needed: DWORD): BOOL; stdcall; external 'kernel32.dll';

function FindOtherRuntime(const Own: TLibHandle; out OtherPath, Failure: string): Boolean;
var
  Needed, SizeBytes: DWORD;
  Modules: array of HMODULE;
  I, Attempt: Integer;
  Pinned: HMODULE;
  Ignored: string;
begin
  Result := False;
  OtherPath := '';
  Failure := '';
  SizeBytes := 512 * SizeOf(HMODULE);
  Needed := 0;
  for Attempt := 1 to 8 do
  begin
    SetLength(Modules, SizeBytes div SizeOf(HMODULE));
    Needed := 0;
    if not K32EnumProcessModules(GetCurrentProcess, @Modules[0], SizeBytes, Needed) then
    begin
      Failure := Format('the process module list could not be read on attempt %d (error %d)',
        [Attempt, GetLastError]);
      Exit(False);
    end;
    if Needed <= SizeBytes then
      Break;
    if Attempt = 8 then
    begin
      Failure := Format('the process module list kept growing over %d attempts ' +
        '(last size needed %d bytes)',
        [Attempt, Needed]);
      Exit(False);
    end;
    SizeBytes := Needed;
  end;
  for I := 0 to Integer(Needed div SizeOf(HMODULE)) - 1 do
  begin
    if Modules[I] = HMODULE(Own) then
      Continue;
    Pinned := 0;
    if not GetModuleHandleExW(GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS, Pointer(Modules[I]), Pinned) then
    begin
      Failure := 'the process module list went stale while it was being ' +
        'examined (a module was unloaded from another thread)';
      Exit(False);
    end;
    try
      if MissingIdentityExport(TLibHandle(Pinned)) = '' then
      begin
        if not ModulePathOf(TLibHandle(Pinned), OtherPath, Ignored) then
          OtherPath := '<path unavailable>';
        Exit(True);
      end;
    finally
      FreeLibrary(Pinned);
    end;
  end;
end;
{$ENDIF}

procedure UnloadCandidate(const Candidate: TLibHandle);
begin
  if Candidate <> 0 then
    FreeLibrary(Candidate);
  Lept.Module.Error := '';
  Lept.Module.LibraryPath := '';
  FillChar(Lept, SizeOf(Lept), 0);
  LibraryVersion := '';
  LeptBindReset;
end;

procedure UnloadRuntime;
begin
  UnloadCandidate(Lept.Module.Handle);
  Lept.Module.Handle := 0;
  Lept.Module.Loaded := False;
end;

function LeptInitialize(const LibraryPath: string): Boolean;
var
  H: TLibHandle;
  Reported: PAnsiChar;
  Version: TLeptVersionProc;
  FreeProc: TLeptFreeProc;
  Complaint: string;
  Missing: string;
  {$IFDEF MSWINDOWS}
  OtherPath, ActivePath, Failure: string;
  {$ENDIF}
begin
  Lept.Module.Error := '';
  if Lept.Module.Loaded then
  begin
    {$IFDEF MSWINDOWS}
    if not ModulePathOf(Lept.Module.Handle, ActivePath, Failure) then
    begin
      Lept.Module.Error := 'Refusing to reuse the active runtime: ' + Failure +
        '. Without its path a repeated call for the same file cannot be told ' +
        'apart from a request to switch libraries: ' + LibraryPath;
      Exit(False);
    end;
    if SamePathText(ActivePath, LibraryPath) then
      Exit(True);
    {$ELSE}
    if Lept.Module.LibraryPath = LibraryPath then
      Exit(True);
    {$ENDIF}
    Lept.Module.Error := 'Another library is already active in this process, loaded from ' +
      Lept.Module.LibraryPath + '. A Pix created by it stays ' +
      'valid only while it is loaded, so switching is refused: call ' +
      'LeptFinalize first, once nothing of it is alive. Requested: ' + LibraryPath;
    Result := False;
    Exit;
  end;
  H := LoadLibrary(PChar(LibraryPath));
  if H = 0 then
  begin
    {$IFDEF FPC}
    Complaint := GetLoadErrorStr;
    {$ELSE}
    Complaint := SysErrorMessage(GetLastError);
    {$ENDIF}
    Lept.Module.Error := 'Failed to load library: ' + LibraryPath;
    if Complaint <> '' then
      Lept.Module.Error := Lept.Module.Error + ' (' + Trim(Complaint) + ')';
    Result := False;
    Exit;
  end;
  Missing := MissingIdentityExport(H);
  if Missing <> '' then
  begin
    FreeLibrary(H);
    Lept.Module.Error := 'The library exports no ' + Missing + ', so it is ' +
      'not a Leptonica this binding can work with; the identifying set is ' + LeptIdentityExports[0] + ', ' +
      LeptIdentityExports[1] + ', ' + LeptIdentityExports[2] + ', ' + LeptIdentityExports[3] + ': ' + LibraryPath;
    Exit(False);
  end;
  {$IFDEF MSWINDOWS}
  if FindOtherRuntime(H, OtherPath, Failure) then
  begin
    Complaint := 'Another Leptonica runtime is already loaded in this process, ' +
      'from ' + OtherPath +
      '. Two runtimes mean two heaps, and a Pix made by ' +
      'one and freed by the other corrupts memory. Reuse the already loaded ' +
      'library instead of ' + LibraryPath;
    FreeLibrary(H);
    Lept.Module.Error := Complaint;
    Result := False;
    Exit;
  end;
  if Failure <> '' then
  begin
    FreeLibrary(H);
    Lept.Module.Error := 'Refusing to initialize: ' + Failure + '. Without that ' +
      'list a second Leptonica runtime cannot be ruled out: ' + LibraryPath;
    Result := False;
    Exit;
  end;
  {$ENDIF}
  Version := TLeptVersionProc(GetProcAddress(H, PAnsiChar(AnsiString(LeptIdentityExports[0]))));
  FreeProc := TLeptFreeProc(GetProcAddress(H, PAnsiChar(AnsiString(LeptIdentityExports[1]))));
  LibraryVersion := '';
  Reported := Version;
  if Reported <> nil then
  begin
    LibraryVersion := string(AnsiString(Reported));
    FreeProc(Reported);
  end;
  if not AcceptedVersion(LibraryVersion) then
  begin
    Complaint := Format('The library reports %s, this binding accepts %s.x: ' +
      'the names may match while the record layouts do not: %s',
      [QuotedStr(LibraryVersion), QuotedStr(LeptSupportedVersion), LibraryPath]);
    FreeLibrary(H);
    LibraryVersion := '';
    Lept.Module.Error := Complaint;
    Result := False;
    Exit;
  end;
  LeptBindReset;
  Lept.Analysis.Initialize(H);
  Lept.Binarize.Initialize(H);
  Lept.Blend.Initialize(H);
  Lept.Box.Initialize(H);
  Lept.Color.Initialize(H);
  Lept.Colormap.Initialize(H);
  Lept.Dewarp.Initialize(H);
  Lept.Dna.Initialize(H);
  Lept.Enhance.Initialize(H);
  Lept.FPix.Initialize(H);
  Lept.Filter.Initialize(H);
  Lept.Graphics.Initialize(H);
  Lept.IO.Initialize(H);
  Lept.Jbig.Initialize(H);
  Lept.Kernel.Initialize(H);
  Lept.Morph.Initialize(H);
  Lept.Numa.Initialize(H);
  Lept.Pageseg.Initialize(H);
  Lept.Pix.Initialize(H);
  Lept.Pixa.Initialize(H);
  Lept.Pta.Initialize(H);
  Lept.Recog.Initialize(H);
  Lept.Rop.Initialize(H);
  Lept.Sarray.Initialize(H);
  Lept.Sel.Initialize(H);
  Lept.Transform.Initialize(H);
  Lept.Watershed.Initialize(H);
  Inc(RuntimeGeneration);
  Lept.Module.Handle := H;
  Lept.Module.LibraryPath := LibraryPath;
  Lept.Module.Loaded := True;
  Result := True;
end;

function LeptFinalize: Boolean;
begin
  Lept.Module.Error := '';
  if LifecycleFault <> 0 then
  begin
    Lept.Module.Error := '';
    if (LifecycleFault and LeptFaultAccountingUnderflow) <> 0 then
      Lept.Module.Error := 'Refusing to unload: live-object accounting underflow ' +
        'was detected. The counter can no longer prove that no ' +
        'runtime-dependent objects are alive. ';
    if (LifecycleFault and LeptFaultDestroyFailed) <> 0 then
      Lept.Module.Error := Lept.Module.Error + 'Refusing to unload: releasing ' +
        'an owning object did not clear its handle, so its native lifetime ' +
        'can no longer be proven. ';
    if (LifecycleFault and LeptFaultMissingDestroy) <> 0 then
      Lept.Module.Error := Lept.Module.Error + 'Refusing to unload: an owning ' +
        'object could not be released because its destroy entry was missing, ' +
        'so native memory was leaked while the runtime was still loaded.';
    Exit(False);
  end;
  if LiveObjects > 0 then
  begin
    Lept.Module.Error := Format(
      'Refusing to unload the runtime: %d object(s) ' +
      'created by it are still alive. Their destructors would call into an ' +
      'unloaded library. Release them first; note that the compiler may hold ' +
      'an interface reference of its own until the enclosing scope ends.',
      [LiveObjects]
    );
    Exit(False);
  end;
  UnloadRuntime;
  Result := True;
end;

initialization
  FillChar(Lept, SizeOf(Lept), 0);

end.
