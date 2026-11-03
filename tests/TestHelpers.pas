{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestHelpers;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica;

function CreateTestPix(W, H, Depth: Integer): Pointer;
function CreateGrayPix(W, H: Integer): Pointer;
function CreateColorPix(W, H: Integer): Pointer;
function CreateBinaryPix(W, H: Integer): Pointer;
procedure SafePixDestroy(var Pix: Pointer);
function GetTempFilePath(const Ext: string): string;
function FindLibraryPath: string;

implementation

function CreateTestPix(W, H, Depth: Integer): Pointer;
begin
  Result := nil;
  if Assigned(Lept.Pix.PixCreate) then
    Result := Lept.Pix.PixCreate(W, H, Depth);
end;

function CreateGrayPix(W, H: Integer): Pointer;
begin
  Result := CreateTestPix(W, H, 8);
end;

function CreateColorPix(W, H: Integer): Pointer;
begin
  Result := CreateTestPix(W, H, 32);
end;

function CreateBinaryPix(W, H: Integer): Pointer;
begin
  Result := CreateTestPix(W, H, 1);
end;

procedure SafePixDestroy(var Pix: Pointer);
begin
  if (Pix <> nil) and Assigned(Lept.Pix.PixDestroy) then
  begin
    Lept.Pix.PixDestroy(@Pix);
    Pix := nil;
  end;
end;

function GetTempFilePath(const Ext: string): string;
begin
  {$IFDEF UNIX}
  Result := '/tmp/lept_test_' + IntToStr(Random(MaxInt)) + Ext;
  {$ELSE}
  Result := GetEnvironmentVariable('TEMP') + '\lept_test_' + IntToStr(Random(MaxInt)) + Ext;
  {$ENDIF}
end;

function FindLibraryPath: string;
var
  EnvPath: string;
begin
  EnvPath := GetEnvironmentVariable('LEPTONICA_LIB');
  if (EnvPath <> '') and FileExists(EnvPath) then
  begin
    Result := EnvPath;
    Exit;
  end;
  {$IFDEF UNIX}
  if FileExists('../output/libleptonica.so') then
    Result := '../output/libleptonica.so'
  else if FileExists('./lib/libleptonica.so') then
    Result := './lib/libleptonica.so'
  else
    Result := 'libleptonica.so';
  {$ELSE}
  if FileExists('../output/leptonica-1.87.0.dll') then
    Result := '../output/leptonica-1.87.0.dll'
  else if FileExists('./lib/leptonica-1.87.0.dll') then
    Result := './lib/leptonica-1.87.0.dll'
  else
    Result := 'leptonica-1.87.0.dll';
  {$ENDIF}
end;

end.
