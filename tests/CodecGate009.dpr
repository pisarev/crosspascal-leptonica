program CodecGate009;
{$APPTYPE CONSOLE}
{$IFDEF FPC}{$MODE DELPHI}{$ENDIF}
uses SysUtils, Classes,
  {$IFDEF FPC}Windows{$ELSE}Winapi.Windows{$ENDIF};
type
  PPByte = ^PByte;
  PNativeUInt = ^NativeUInt;
  TReadJpeg = function(data: PByte; size: NativeUInt; cmflag, reduction: Integer; pnwarn: PInteger;
    hint: Integer): Pointer; cdecl;
  TReadPng = function(data: PByte; size: NativeUInt): Pointer; cdecl;
  TReadStreamPng = function(stream: Pointer): Pointer; cdecl;
  TWriteMemPng = function(data: PPByte; size: PNativeUInt; pix: Pointer;
    gamma: Single): Integer; cdecl;
  TWriteStreamPng = function(stream, pix: Pointer; gamma: Single): Integer; cdecl;
  TGetResolution = function(stream: Pointer; px, py: PInteger): Integer; cdecl;
  TGetColormap = function(stream: Pointer; cmap: PPointer; transparency: PInteger): Integer; cdecl;
  TDestroyPix = procedure(ppix: PPointer); cdecl;
  TLeptFree = procedure(p: Pointer); cdecl;
function fopen(filename, mode: PAnsiChar): Pointer; cdecl; external 'msvcrt.dll' name 'fopen';
function fclose(stream: Pointer): Integer; cdecl; external 'msvcrt.dll' name 'fclose';
function ferror(stream: Pointer): Integer; cdecl; external 'msvcrt.dll' name 'ferror';
var
  Mode, InputName, DllName: string;
  WideDllName: UnicodeString;
  LoadedPath: UnicodeString;
  Data: TBytes;
  N, Allocated, SourceLength, OutSize: NativeUInt;
  F: TFileStream;
  LoadedName: array[0..32767] of Char;
  DllHandle: HMODULE;
  RJ: TReadJpeg;
  RP: TReadPng;
  RS: TReadStreamPng;
  WM: TWriteMemPng;
  WS: TWriteStreamPng;
  GetResolution: TGetResolution;
  GetColormap: TGetColormap;
  DestroyPix: TDestroyPix;
  LeptFree: TLeptFree;
  Pix, CheckPix: Pointer;
  BytesOut: PByte;
  Stream: Pointer;
  Status, StreamError: Integer;
  XResolution, YResolution, Transparency: Integer;
  CName: AnsiString;
  ExpectJpeg, RejectTerminator: Boolean;

procedure Check(Cond: Boolean; Code: Integer; const Reason: string);
begin
  if not Cond then
  begin
    Writeln('TEST_FAILURE=', Reason);
    Flush(Output);
    Halt(Code);
  end;
end;

procedure LoadFixture(const Name: string);
begin
  F := TFileStream.Create(ExtractFilePath(ParamStr(0)) + Name, fmOpenRead or fmShareDenyNone);
  try
    SourceLength := F.Size;
    Check(SourceLength > 0, 10, 'empty fixture');
    SetLength(Data, SourceLength);
    F.ReadBuffer(Data[0], SourceLength);
  finally
    F.Free;
  end;
end;

procedure PrepareJpeg;
var
  Original: TBytes;
begin
  LoadFixture('valid-control.jpg');
  Original := Copy(Data, 0, Length(Data));
  if (Mode = 'jpeg_trunc') or (Mode = 'jpeg_trunc_bad_terminator') then
    N := SourceLength div 3
  else
    N := SourceLength;
  Check(N > 0, 11, 'data_length is zero');
  SetLength(Data, N + 1);
  Move(Original[0], Data[0], N);
  Data[N] := 0;
  if Mode = 'jpeg_trunc_bad_terminator' then Data[N] := $A5;
  Allocated := Length(Data);
  Writeln('JPEG_DECLARED_DATA_LENGTH=', N);
  Writeln('JPEG_ALLOCATED_BYTES=', Allocated);
  Writeln('JPEG_BYTE_AT_DECLARED_LENGTH=', Integer(Data[N]));
  Writeln('JPEG_LAST_DATA_BYTE=', Integer(Data[N - 1]));
  Flush(Output);
  RejectTerminator := (Allocated <> N + 1) or (Data[N] <> 0);
  if RejectTerminator then
  begin
    Writeln('PRE_NATIVE_JPEG_TERMINATOR_REJECT');
    Flush(Output);
    Halt(79);
  end;
  Writeln('JPEG_PRECONDITION_PASS');
  Flush(Output);
end;

procedure PreparePng;
begin
  if Mode = 'png_memory_valid' then
    InputName := 'valid-control.png'
  else if Mode = 'png_memory_truncated' then
      InputName := 'truncated-control.png'
    else if Mode = 'png_memory_crc' then
        InputName := 'crc-error-control.png'
      else if Mode = 'png_stream_truncated' then
          InputName := 'truncated-control.png'
        else if Mode = 'png_stream_crc' then
            InputName := 'crc-error-control.png'
          else if (Mode = 'png_resolution_short_header') or
            (Mode = 'png_colormap_short_header') then InputName := 'short-header-control.png'
            else
              InputName := 'valid-control.png';
  LoadFixture(InputName);
  N := SourceLength;
  Allocated := Length(Data);
  Writeln('PNG_INPUT=', InputName);
  Writeln('PNG_DECLARED_DATA_LENGTH=', N);
  Writeln('PNG_ALLOCATED_BYTES=', Allocated);
  Check(N > 0, 12, 'PNG length zero');
end;

procedure LoadExactDll;
begin
  DllName := ExtractFilePath(ParamStr(0)) + 'leptonica-1.87.0.dll';
  WideDllName := UnicodeString(DllName);
  DllHandle := LoadLibraryW(PWideChar(WideDllName));
  Check(DllHandle <> 0, 13, 'DLL load');
  Check(GetModuleFileNameW(DllHandle, @LoadedName[0], Length(LoadedName)) <> 0, 14, 'GetModuleFileNameW');
  RJ := TReadJpeg(GetProcAddress(DllHandle, 'pixReadMemJpeg'));
  RP := TReadPng(GetProcAddress(DllHandle, 'pixReadMemPng'));
  RS := TReadStreamPng(GetProcAddress(DllHandle, 'pixReadStreamPng'));
  WM := TWriteMemPng(GetProcAddress(DllHandle, 'pixWriteMemPng'));
  WS := TWriteStreamPng(GetProcAddress(DllHandle, 'pixWriteStreamPng'));
  GetResolution := TGetResolution(GetProcAddress(DllHandle, 'fgetPngResolution'));
  GetColormap := TGetColormap(GetProcAddress(DllHandle, 'fgetPngColormapInfo'));
  DestroyPix := TDestroyPix(GetProcAddress(DllHandle, 'pixDestroy'));
  LeptFree := TLeptFree(GetProcAddress(DllHandle, 'lept_free'));
  Check(Assigned(RJ) and Assigned(RP) and Assigned(RS) and Assigned(WM) and
    Assigned(WS) and Assigned(GetResolution) and Assigned(GetColormap) and
    Assigned(DestroyPix) and Assigned(LeptFree), 15, 'exports');
  LoadedPath := UnicodeString(PWideChar(@LoadedName[0]));
  Writeln('LOADED_DLL=', UTF8Encode(LoadedPath));
  Flush(Output);
end;

procedure ReadGoodPix;
begin
  Pix := RP(@Data[0], N);
  Check(Assigned(Pix), 16, 'valid PNG fixture must produce PIX');
  Writeln('VALID_PNG_PIX_CREATED');
  Flush(Output);
end;

begin
  Check(ParamCount = 1, 2, 'expected one test mode');
  Mode := ParamStr(1);
  ExpectJpeg := Copy(Mode, 1, 5) = 'jpeg_';
  if ExpectJpeg then
    PrepareJpeg
  else
    PreparePng;
  LoadExactDll;
  Pix := nil;
  if ExpectJpeg then
  begin
    Writeln('BEFORE_NATIVE_JPEG_CALL'); Flush(Output);
    Pix := RJ(@Data[0], N, 0, 1, nil, 0);
    if Mode = 'jpeg_valid' then
      Check(Assigned(Pix), 20, 'valid JPEG PIX expected')
    else
      Check(Pix = nil, 21, 'truncated JPEG must be NULL');
    if Assigned(Pix) then DestroyPix(@Pix);
    Writeln('JPEG_NATIVE_RETURN_PASS');
  end
  else if Mode = 'png_memory_valid' then
    begin
      ReadGoodPix;
      DestroyPix(@Pix);
      Writeln('PNG_MEMORY_VALID_READ_PASS');
    end
    else if (Mode = 'png_memory_truncated') or (Mode = 'png_memory_crc') then
      begin
        Writeln('BEFORE_NATIVE_PNG_MEMORY_READ');Flush(Output);
        Pix := RP(@Data[0], N);
        Check(Pix = nil, 22, 'malformed PNG memory read should return NULL');
        Writeln('PNG_MEMORY_ERROR_RETURN_NULL');
      end
      else if (Mode = 'png_stream_truncated') or (Mode = 'png_stream_crc') then
        begin
          CName := AnsiString(ExtractFilePath(ParamStr(0)) + InputName);
          Stream := fopen(PAnsiChar(CName), 'rb');
          Check(Stream <> nil, 23, 'fopen exact MSVCRT read-only valid FILE*');
          Writeln('PNG_VALID_MSVCRT_STREAM_READ_OPEN');Flush(Output);
          try
            Pix := RS(Stream);
          finally
            fclose(Stream);
          end;
          Check(Pix = nil, 24, 'malformed PNG stream read should return NULL');
          Writeln('PNG_STREAM_ERROR_RETURN_NULL');
        end
        else if Mode = 'png_resolution_short_header' then
          begin
            CName := AnsiString(ExtractFilePath(ParamStr(0)) + InputName);
            Stream := fopen(PAnsiChar(CName), 'rb');
            Check(Stream <> nil, 34, 'valid read-only MSVCRT FILE* resolution');
            XResolution := 0;
            YResolution := 0;
            try
              Status := GetResolution(Stream, @XResolution, @YResolution);
            finally
              fclose(Stream);
            end;
            Writeln('PNG_RESOLUTION_ERROR_STATUS=', Status);
            Check(Status <> 0, 35, 'short PNG header resolution must safely fail');
            Writeln('PNG_RESOLUTION_READ_ERROR_RETURN');
          end
          else if Mode = 'png_colormap_short_header' then
            begin
              CName := AnsiString(ExtractFilePath(ParamStr(0)) + InputName);
              Stream := fopen(PAnsiChar(CName), 'rb');
              Check(Stream <> nil, 36, 'valid read-only MSVCRT FILE* colormap');
              Transparency := 0;
              try
                Status := GetColormap(Stream, nil, @Transparency);
              finally
                fclose(Stream);
              end;
              Writeln('PNG_COLORMAP_ERROR_STATUS=', Status);
              Check(Status <> 0, 37, 'short PNG header colormap must safely fail');
              Writeln('PNG_COLORMAP_READ_ERROR_RETURN');
            end
            else if Mode = 'png_stream_write_readonly' then
              begin
                ReadGoodPix;
                CName := AnsiString(ExtractFilePath(ParamStr(0)) + InputName);
                Stream := fopen(PAnsiChar(CName), 'rb');
                Check(Stream <> nil, 25, 'fopen existing file read-only');
                Writeln('PNG_VALID_MSVCRT_STREAM_READONLY_OPEN');Flush(Output);
                try
                  Status := WS(Stream, Pix, 1.0);
                  StreamError := ferror(Stream);
                finally
                  fclose(Stream);
                end;
                DestroyPix(@Pix);
                Writeln('PNG_STREAM_WRITE_STATUS=', Status);
                Writeln('PNG_STREAM_FERROR=', StreamError);
                Check(Status <> 0, 26, 'controlled read-only stream write must fail');
                Writeln('PNG_STREAM_WRITE_ERROR_RETURN');
              end
              else if Mode = 'png_memory_write_no_pix' then
                begin
                  BytesOut := nil;
                  OutSize := 0;
                  Status := WM(@BytesOut, @OutSize, nil, 1.0);
                  Writeln('PNG_MEMORY_WRITE_GUARD_STATUS=', Status);
                  Writeln('PNG_MEMORY_WRITE_GUARD_SIZE=', OutSize);
                  Check((Status <> 0) and (BytesOut = nil) and (OutSize = 0), 27,
                        'documented pix-not-defined guard');
                  Writeln('PNG_MEMORY_WRITE_EARLY_GUARD_ONLY');
                end
                else if Mode = 'png_memory_write_roundtrip' then
                  begin
                    ReadGoodPix;
                    BytesOut := nil;
                    OutSize := 0;
                    Status := WM(@BytesOut, @OutSize, Pix, 1.0);
                    Check((Status = 0) and (BytesOut <> nil) and (OutSize > 0), 28, 'memory write success');
                    CheckPix := RP(BytesOut, OutSize);
                    Check(Assigned(CheckPix), 29, 'memory write/read roundtrip');
                    DestroyPix(@CheckPix);
                    LeptFree(BytesOut);
                    DestroyPix(@Pix);
                    Writeln('PNG_MEMORY_WRITE_ROUNDTRIP_BYTES=', OutSize);
                    Writeln('PNG_MEMORY_WRITE_ROUNDTRIP_PASS');
                  end
                  else if Mode = 'png_stream_write_roundtrip' then
                    begin
                      ReadGoodPix;
                      CName := AnsiString(ExtractFilePath(ParamStr(0)) + 'roundtrip009.png');
                      Stream := fopen(PAnsiChar(CName), 'wb');
                      Check(Stream <> nil, 30, 'fopen write valid FILE*');
                      try
                        Status := WS(Stream, Pix, 1.0);
                      finally
                        fclose(Stream);
                      end;
                      Check(Status = 0, 31, 'valid PNG stream write');
                      Stream := fopen(PAnsiChar(CName), 'rb');
                      Check(Stream <> nil, 32, 'reopen stream roundtrip');
                      try
                        CheckPix := RS(Stream);
                      finally
                        fclose(Stream);
                      end;
                      Check(Assigned(CheckPix), 33, 'valid PNG stream read roundtrip');
                      DestroyPix(@CheckPix);
                      DestroyPix(@Pix);
                      Writeln('PNG_STREAM_WRITE_ROUNDTRIP_PASS');
                    end
                    else
                      Check(False, 3, 'unknown mode');
  FreeLibrary(DllHandle);
  Writeln('FINAL_PASS');
end.
