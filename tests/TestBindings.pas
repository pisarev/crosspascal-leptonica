{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestBindings;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, LeptonicaTypes, TestFramework;

implementation

procedure Test_BindingsComplete;
var
  Missing: Integer;
begin
  Missing := LeptBindMissingCount;
  AssertEqualsInt(0, Missing,
    Format('the target library did not export %d names, the first of them: %s',
      [Missing, LeptBindMissingNames(8)]));
end;

procedure Test_KnownDefectTripwire;
const
  MeasuredVersion = 'leptonica-1.87.0';
  MeasuredCodecs = 'libgif 5.2.2 : libjpeg 6b (libjpeg-turbo 3.0.4) : ' +
    'libpng 1.6.43 : libtiff 4.6.0 : zlib 1.3.1';
  Advice = ' -> Recheck codec and malformed-JPEG handling with the' +
    ' isolated reproducer documented in KNOWN-ISSUES.md. If resolved,' +
    ' remove the ttKnownLibraryDefect mark from' +
    ' IO.Func_pixReadMemJpegRefusesGarbage and update the measured' +
    ' codec versions and KNOWN-ISSUES.md.';
var
  Codecs: PAnsiChar;
  Reported: string;
begin
  AssertEqualsStr(MeasuredVersion, LeptLibraryVersion,
    'the Leptonica version has changed' + Advice);
  if not Assigned(Lept.Pix.GetImagelibVersions) then
    Exit;
  Codecs := Lept.Pix.GetImagelibVersions;
  if Codecs = nil then
    Exit;
  try
    Reported := string(AnsiString(Codecs));
  finally
    if Assigned(Lept.Pix.Lept_free) then
      Lept.Pix.Lept_free(Codecs);
  end;
  AssertEqualsStr(MeasuredCodecs, Reported, 'the set of codecs has changed' + Advice);
end;

initialization
  RegisterTest('Bindings', 'AllNamesBound', @Test_BindingsComplete, []);
  RegisterTest('Bindings', 'LeptonicaVersionUnchanged', @Test_KnownDefectTripwire, []);

end.
