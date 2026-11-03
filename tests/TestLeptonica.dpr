{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
program TestLeptonica;

{$APPTYPE CONSOLE}
{$IFDEF FPC}
  {$MODE DELPHI}
{$ENDIF}

uses
  SysUtils,
  {$IFDEF FPC}Windows{$ELSE}Winapi.Windows{$ENDIF},
  LeptonicaTypes, Leptonica, TestFramework in 'TestFramework.pas', TestHelpers in 'TestHelpers.pas',
  TestBindings in 'TestBindings.pas', TestPix in 'TestPix.pas', TestBox in 'TestBox.pas',
  TestPixa in 'TestPixa.pas', TestPta in 'TestPta.pas', TestNuma in 'TestNuma.pas',
  TestSarray in 'TestSarray.pas', TestDna in 'TestDna.pas', TestSel in 'TestSel.pas',
  TestFPix in 'TestFPix.pas', TestColormap in 'TestColormap.pas', TestIO in 'TestIO.pas',
  TestMorph in 'TestMorph.pas', TestFilter in 'TestFilter.pas', TestRop in 'TestRop.pas',
  TestColor in 'TestColor.pas', TestBinarize in 'TestBinarize.pas', TestEnhance in 'TestEnhance.pas',
  TestAnalysis in 'TestAnalysis.pas', TestBlend in 'TestBlend.pas', TestDewarp in 'TestDewarp.pas',
  TestGraphics in 'TestGraphics.pas', TestJbig in 'TestJbig.pas', TestKernel in 'TestKernel.pas',
  TestPageseg in 'TestPageseg.pas', TestRecog in 'TestRecog.pas', TestTransform in 'TestTransform.pas',
  TestWatershed in 'TestWatershed.pas';

{$IFDEF MSWINDOWS}

function LoadedPath(const Handle: TLibHandle): string;
var
  Buf: string;
  Copied: DWORD;
begin
  Result := '';
  if Handle = 0 then Exit;
  SetLength(Buf, MAX_PATH);
  SetLastError(0);
  Copied := GetModuleFileName(HMODULE(Handle), PChar(Buf), MAX_PATH);
  if Copied = 0 then
  begin
    Result := '<the system did not name the path, error' + IntToStr(GetLastError) + '>';
    Exit;
  end;
  if (Copied >= MAX_PATH) or (GetLastError = ERROR_INSUFFICIENT_BUFFER) then
  begin
    Result := '<path longer than MAX_PATH, not shown in full>';
    Exit;
  end;
  SetLength(Buf, Copied);
  Result := Buf;
end;
{$ENDIF}

procedure ReportLibrary(const Handle: TLibHandle; const Requested, EnvVarName: string);
var
  Taken, Origin, Value: string;
  F: TSearchRec;
begin
  Taken := '';
  Origin := '';
  {$IFDEF MSWINDOWS}
  if Handle <> 0 then Taken := LoadedPath(Handle);
  {$ENDIF}
  if Taken = '' then
  begin
    Taken := ExpandFileName(Requested);
    Origin := '  (path from the argument: the library is not loaded)';
  end;
  Write('library file: ', Taken, Origin);
  if FindFirst(Taken, faAnyFile, F) = 0 then
  begin
    Write('  size ', F.Size, '  mtime ', FormatDateTime('yyyy-mm-dd hh:nn:ss', F.TimeStamp));
    SysUtils.FindClose(F);
  end
  else
    Write('  NO SUCH FILE');
  Writeln;
  if (Handle <> 0) and not SameText(Taken, ExpandFileName(Requested)) then
    Writeln('library asked: ', ExpandFileName(Requested),
      '  (DIFFERS from the loaded one - taken by the system search)');
  Value := SysUtils.GetEnvironmentVariable(EnvVarName);
  if Value <> '' then
    Writeln('library env: ', EnvVarName, '=', Value, '  (the variable is set)');
end;

var
  Module: string;
  Verbose: Boolean;
  Failed, I: Integer;
begin
  Module := '';
  Verbose := False;
  for I := 1 to ParamCount do
    if (ParamStr(I) = '-v') or (ParamStr(I) = '--verbose') then
      Verbose := True
    else
      Module := ParamStr(I);
  if not LeptInitialize(ExtractFilePath(ParamStr(0)) + 'leptonica-1.87.0.dll') then
  begin
    ReportLibrary(0, ExtractFilePath(ParamStr(0)) + 'leptonica-1.87.0.dll', 'LEPTONICA_LIB');
    Writeln('cannot load leptonica-1.87.0.dll next to the executable');
    Halt(2);
  end;
  ReportLibrary(Lept.Module.Handle,
    ExtractFilePath(ParamStr(0)) + 'leptonica-1.87.0.dll', 'LEPTONICA_LIB');
  Failed := RunAllTests(Module, True, Verbose);
  if Failed > 0 then
    Halt(1);
end.
