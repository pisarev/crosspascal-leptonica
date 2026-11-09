program LeptonicaHello;

{$IFDEF FPC}
{$MODE DELPHIUNICODE}
{$ENDIF}

{$APPTYPE CONSOLE}

uses
  {$IFDEF FPC}SysUtils{$ELSE}System.SysUtils{$ENDIF},
  LeptonicaTypes, Leptonica, ExampleDefaults;

procedure Require(const Condition: Boolean; const MessageText: string);
begin
  if not Condition then
    raise Exception.Create(MessageText);
end;

procedure Run;
var
  LibraryPath, OutputPath: string;
  OutputName: AnsiString;
  Pix: PPix;
  X, Y, I: Integer;
  HasOutputPath: Boolean;
begin
  LibraryPath := ExpandFileName(ExtractFilePath(ParamStr(0)) + '..\..\..\bin\leptonica-1.87.0.dll');
  OutputPath := ExtractFilePath(ParamStr(0)) + 'leptonica-gradient.png';
  HasOutputPath := False;
  for I := 1 to ParamCount do
    if not SameText(ParamStr(I), '-no-pause') then
    begin
      Require(not HasOutputPath, 'Usage: LeptonicaHello [output.png] [-no-pause]');
      OutputPath := ExpandFileName(ParamStr(I));
      HasOutputPath := True;
    end;
  LibraryPath := PreparedPath('leptonica', LibraryPath);
  Require(FileExists(LibraryPath), 'Leptonica DLL was not found: ' + LibraryPath);
  if not LeptInitialize(LibraryPath) then
    raise Exception.Create(Lept.Module.Error);
  try
    Require(Assigned(Lept.Pix.PixCreate) and Assigned(Lept.Pix.PixDestroy) and
      Assigned(Lept.Pix.PixSetPixel) and Assigned(Lept.IO.PixWritePng),
      'The runtime is missing an export required by this example.');
    Writeln('Runtime: ', LeptLibraryVersion);
    Writeln('Library: ', Lept.Module.LibraryPath);
    Pix := Lept.Pix.PixCreate(256, 96, 8);
    Require(Pix <> nil, 'Could not create the grayscale image.');
    try
      for Y := 0 to 95 do
        for X := 0 to 255 do
          Require(Lept.Pix.PixSetPixel(Pix, X, Y, X) = 0, 'Could not set a pixel.');
      OutputName := AnsiString(OutputPath);
      Require(Lept.IO.PixWritePng(PAnsiChar(OutputName), Pix, 0.0) = 0,
        'Could not save the PNG image: ' + OutputPath);
      Writeln('Created a 256 x 96 grayscale gradient.');
      Writeln('PNG: ', OutputPath);
      Writeln('Open the PNG in an image viewer to inspect the gradient.');
    finally
      Lept.Pix.PixDestroy(@Pix);
    end;
  finally
    if not LeptFinalize then
      raise Exception.Create(Lept.Module.Error);
  end;
end;

begin
  try
    Run;
  except
    on E: Exception do
    begin
      Writeln('ERROR: ', E.Message);
      ExitCode := 1;
    end;
  end;
  if not FindCmdLineSwitch('no-pause', ['-'], True) then
  begin
    Writeln;
    Writeln('Press Enter to close this example.');
    Readln;
  end;
end.
