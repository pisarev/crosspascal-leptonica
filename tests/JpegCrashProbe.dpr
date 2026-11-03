{ MIT license. }
program JpegCrashProbe;
{$APPTYPE CONSOLE}
{$IFDEF FPC}{$MODE DELPHI}{$ENDIF}
uses SysUtils, LeptonicaTypes, Leptonica;
var
  Junk: array[0..7] of Byte;
  R: Pointer;
  I: Integer;
begin
  for I := 0 to High(Junk) do Junk[I] := I + 1;
  if not LeptInitialize(ExtractFilePath(ParamStr(0)) + 'leptonica-1.87.0.dll') then
  begin
    Writeln('HISTORIC_DLL_LOAD_FAILED');
    Halt(2);
  end;
  Writeln('HISTORIC_DLL_JPEG_REPRO_STARTED');
  Flush(Output);
  R := Lept.IO.PixReadMemJpeg(@Junk[0], SizeOf(Junk), 0, 1, nil, 0);
  if R <> nil then
  begin
    Lept.Pix.PixDestroy(@R);
    Writeln('INVALID_DATA_RETURNED_PIX');
    Halt(3);
  end;
  Writeln('INVALID_DATA_REJECTED');
end.
