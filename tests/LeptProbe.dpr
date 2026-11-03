{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
program LeptProbe;

{$APPTYPE CONSOLE}

uses {$IFDEF FPC}SysUtils{$ELSE}System.SysUtils{$ENDIF}, LeptonicaTypes, Leptonica in '..\pascal\Leptonica.pas';

var
  Passed, Failed: Integer;

procedure Chk(const Cond: Boolean; const Name: string);
begin
  if Cond then
    Inc(Passed)
  else begin
    Inc(Failed); Writeln('FAILED: ', Name);
  end;
end;

var
  Pix: PPix;
  Val: Cardinal;
begin
  Passed := 0;
  Failed := 0;
  if not LeptInitialize('leptonica-1.87.0.dll') then
  begin
    Writeln('leptonica DLL not loaded (deps missing?)');
    Halt(2);
  end;
  Writeln('leptonica-1.87.0.dll loaded.');
  Chk(Assigned(Lept.Pix.PixCreate), 'PixCreate assigned');
  Chk(Assigned(Lept.Pix.PixGetWidth), 'PixGetWidth assigned');
  Chk(Assigned(Lept.Pix.PixDestroy), 'PixDestroy assigned');
  Pix := Lept.Pix.PixCreate(16, 12, 8);
  Chk(Pix <> nil, 'PixCreate(16,12,8)<>nil');
  if Pix <> nil then
  begin
    Chk(Lept.Pix.PixGetWidth(Pix) = 16, 'Width=16');
    Chk(Lept.Pix.PixGetHeight(Pix) = 12, 'Height=12');
    Chk(Lept.Pix.PixGetDepth(Pix) = 8, 'Depth=8');
    Lept.Pix.PixSetPixel(Pix, 5, 5, 200);
    Val := 0;
    Lept.Pix.PixGetPixel(Pix, 5, 5, @Val);
    Chk(Val = 200, 'SetPixel->GetPixel(5,5)=200');
    Lept.Pix.PixDestroy(@Pix);
    Chk(Pix = nil, 'PixDestroy nils pointer');
  end;
  Writeln(Format('LeptProbe: PASSED %d, FAILED %d', [Passed, Failed]));
  if Failed > 0 then Halt(1);
end.
