{ ************************************************************************** }
{                                                                            }
{ CrossVision.Pix                                                            }
{                                                                            }
{ Copyright © 2026 Yuriy Pisarev                                             }
{                                                                            }
{ ************************************************************************** }

unit CrossVision.Pix;

interface

uses
  LeptonicaTypes;

type
  IPix = interface
    ['{2B7E4C10-5A3D-4E2F-9C1B-6D8A2F4E1730}']
    function GetWidth: Integer;
    function GetHeight: Integer;
    function GetDepth: Integer;
    function GetSpp: Integer;
    function IsEmpty: Boolean;
    function Raw: PPix;
    function GetPixel(const X, Y: Integer): Cardinal;
    function SetPixel(const X, Y: Integer; const Value: Cardinal): IPix;
    function Clone: IPix;
    function Copy: IPix;
    function ToGray: IPix;
    function ConvertTo8: IPix;
    function Scale(const ScaleX, ScaleY: Single): IPix;
    function ScaleToSize(const W, H: Integer): IPix;
    function RotateOrth(const Quads: Integer): IPix;
    function FlipLR: IPix;
    function FlipTB: IPix;
    function Crop(const X, Y, W, H: Integer): IPix;
    function ThresholdToBinary(const Thresh: Integer): IPix;
    function ErodeBrick(const HSize, VSize: Integer): IPix;
    function DilateBrick(const HSize, VSize: Integer): IPix;
    function OpenBrick(const HSize, VSize: Integer): IPix;
    function CloseBrick(const HSize, VSize: Integer): IPix;
    function Invert: IPix;
    function Save(const Path: string): Boolean;
    property Width: Integer read GetWidth;
    property Height: Integer read GetHeight;
    property Depth: Integer read GetDepth;
    property Spp: Integer read GetSpp;
  end;

function LoadPix(const Path: string): IPix;

function WrapPix(const Handle: PPix; const OwnsHandle: Boolean = True): IPix;

function NewPix(const W, H, Depth: Integer): IPix;

type
  TPageOrientation = (poUnknown, poUp, poLeft, poDown, poRight);

function DetectPageOrientation(const Src: IPix): TPageOrientation; overload;

function DetectPageOrientation(const Src: IPix;
  out UpConfidence, LeftConfidence: Single): TPageOrientation; overload;

function OrientationToQuads(const Value: TPageOrientation): Integer;

implementation

uses
  {$IFDEF FPC}SysUtils{$ELSE}System.SysUtils{$ENDIF},
  Leptonica;

type
  TPixImpl = class(TInterfacedObject, IPix)
  private
    FHandle: PPix;
    FOwns: Boolean;
    FGeneration: Cardinal;
    FCounted: Boolean;
  public
    constructor Create(const AHandle: PPix; const AOwns: Boolean);
    destructor Destroy; override;
    function GetWidth: Integer;
    function GetHeight: Integer;
    function GetDepth: Integer;
    function GetSpp: Integer;
    function IsEmpty: Boolean;
    function Raw: PPix;
    function GetPixel(const X, Y: Integer): Cardinal;
    function SetPixel(const X, Y: Integer; const Value: Cardinal): IPix;
    function Clone: IPix;
    function Copy: IPix;
    function ToGray: IPix;
    function ConvertTo8: IPix;
    function Scale(const ScaleX, ScaleY: Single): IPix;
    function ScaleToSize(const W, H: Integer): IPix;
    function RotateOrth(const Quads: Integer): IPix;
    function FlipLR: IPix;
    function FlipTB: IPix;
    function Crop(const X, Y, W, H: Integer): IPix;
    function ThresholdToBinary(const Thresh: Integer): IPix;
    function ErodeBrick(const HSize, VSize: Integer): IPix;
    function DilateBrick(const HSize, VSize: Integer): IPix;
    function OpenBrick(const HSize, VSize: Integer): IPix;
    function CloseBrick(const HSize, VSize: Integer): IPix;
    function Invert: IPix;
    function Save(const Path: string): Boolean;
  end;

constructor TPixImpl.Create(const AHandle: PPix; const AOwns: Boolean);
begin
  inherited Create;
  FHandle := AHandle;
  FOwns := False;
  FGeneration := LeptRuntimeGeneration;
  FCounted := True;
  LeptObjectCreated;
  FOwns := AOwns;
end;

destructor TPixImpl.Destroy;
begin
  try
    if FOwns and Assigned(FHandle) and (FGeneration = LeptRuntimeGeneration) and Assigned(Lept.Pix.PixDestroy) then
    begin
      Lept.Pix.PixDestroy(@FHandle);
      if Assigned(FHandle) then
        LeptLifecycleFault(LeptFaultDestroyFailed);
    end;
  finally
    if FCounted then
    begin
      if FOwns and Assigned(FHandle) and (FGeneration = LeptRuntimeGeneration) and not Assigned(Lept.Pix.PixDestroy) then
        LeptLifecycleFault(LeptFaultMissingDestroy);
      if FGeneration = LeptRuntimeGeneration then
        LeptObjectDestroyed;
      FCounted := False;
    end;
  end;
  inherited;
end;

function TPixImpl.GetWidth: Integer;
begin
  if Assigned(FHandle) then
    Result := Lept.Pix.PixGetWidth(FHandle)
  else
    Result := 0;
end;

function TPixImpl.GetHeight: Integer;
begin
  if Assigned(FHandle) then
    Result := Lept.Pix.PixGetHeight(FHandle)
  else
    Result := 0;
end;

function TPixImpl.GetDepth: Integer;
begin
  if Assigned(FHandle) then
    Result := Lept.Pix.PixGetDepth(FHandle)
  else
    Result := 0;
end;

function TPixImpl.GetSpp: Integer;
begin
  if Assigned(FHandle) then
    Result := Lept.Pix.PixGetSpp(FHandle)
  else
    Result := 0;
end;

function TPixImpl.IsEmpty: Boolean;
begin
  Result := (not Assigned(FHandle)) or (GetWidth <= 0) or (GetHeight <= 0);
end;

function TPixImpl.Raw: PPix;
begin
  Result := FHandle;
end;

function TPixImpl.GetPixel(const X, Y: Integer): Cardinal;
begin
  Result := 0;
  if Assigned(FHandle) then
    Lept.Pix.PixGetPixel(FHandle, X, Y, @Result);
end;

function TPixImpl.SetPixel(const X, Y: Integer; const Value: Cardinal): IPix;
begin
  if Assigned(FHandle) then
    Lept.Pix.PixSetPixel(FHandle, X, Y, Value);
  Result := Self;
end;

function TPixImpl.Clone: IPix;
begin
  Result := WrapPix(Lept.Pix.PixClone(FHandle), True);
end;

function TPixImpl.Copy: IPix;
begin
  Result := WrapPix(Lept.Pix.PixCopy(nil, FHandle), True);
end;

function TPixImpl.ToGray: IPix;
begin
  case GetDepth of
    8:  Result := Self;
    32: Result := WrapPix(Lept.Color.PixConvertRGBToGray(FHandle, 0, 0, 0), True);
  else
    Result := WrapPix(Lept.Pix.PixConvertTo8(FHandle, 0), True);
  end;
end;

function TPixImpl.ConvertTo8: IPix;
begin
  Result := WrapPix(Lept.Pix.PixConvertTo8(FHandle, 0), True);
end;

function TPixImpl.Scale(const ScaleX, ScaleY: Single): IPix;
begin
  Result := WrapPix(Lept.Pix.PixScale(FHandle, ScaleX, ScaleY), True);
end;

function TPixImpl.ScaleToSize(const W, H: Integer): IPix;
begin
  Result := WrapPix(Lept.Transform.PixScaleToSize(FHandle, W, H), True);
end;

function TPixImpl.RotateOrth(const Quads: Integer): IPix;
begin
  Result := WrapPix(Lept.Transform.PixRotateOrth(FHandle, Quads), True);
end;

function TPixImpl.FlipLR: IPix;
begin
  Result := WrapPix(Lept.Transform.PixFlipLR(nil, FHandle), True);
end;

function TPixImpl.FlipTB: IPix;
begin
  Result := WrapPix(Lept.Transform.PixFlipTB(nil, FHandle), True);
end;

function TPixImpl.Crop(const X, Y, W, H: Integer): IPix;
var
  Box: PBox;
  Dst: PPix;
begin
  Box := Lept.Box.BoxCreate(X, Y, W, H);
  Dst := Lept.Rop.PixClipRectangle(FHandle, Box, nil);
  Lept.Box.BoxDestroy(@Box);
  Result := WrapPix(Dst, True);
end;

function TPixImpl.ThresholdToBinary(const Thresh: Integer): IPix;
begin
  Result := WrapPix(Lept.Binarize.PixThresholdToBinary(FHandle, Thresh), True);
end;

function TPixImpl.ErodeBrick(const HSize, VSize: Integer): IPix;
begin
  Result := WrapPix(Lept.Morph.PixErodeBrick(nil, FHandle, HSize, VSize), True);
end;

function TPixImpl.DilateBrick(const HSize, VSize: Integer): IPix;
begin
  Result := WrapPix(Lept.Morph.PixDilateBrick(nil, FHandle, HSize, VSize), True);
end;

function TPixImpl.OpenBrick(const HSize, VSize: Integer): IPix;
begin
  Result := WrapPix(Lept.Morph.PixOpenBrick(nil, FHandle, HSize, VSize), True);
end;

function TPixImpl.CloseBrick(const HSize, VSize: Integer): IPix;
begin
  Result := WrapPix(Lept.Morph.PixCloseBrick(nil, FHandle, HSize, VSize), True);
end;

function TPixImpl.Invert: IPix;
begin
  Result := WrapPix(Lept.Rop.PixInvert(nil, FHandle), True);
end;

function TPixImpl.Save(const Path: string): Boolean;
var
  Fmt: Integer;
  Ext: string;
begin
  Ext := LowerCase(ExtractFileExt(Path));
  if (Ext = '.jpg') or (Ext = '.jpeg') then
    Fmt := 2
  else if Ext = '.bmp' then
      Fmt := 1
    else if (Ext = '.tif') or (Ext = '.tiff') then
        Fmt := 4
      else
        Fmt := 3;
  Result := Assigned(FHandle) and (Lept.IO.PixWrite(PAnsiChar(AnsiString(Path)), FHandle, Fmt) = 0);
end;

function LoadPix(const Path: string): IPix;
begin
  Result := WrapPix(Lept.IO.PixRead(PAnsiChar(AnsiString(Path))), True);
end;

function WrapPix(const Handle: PPix; const OwnsHandle: Boolean): IPix;
begin
  if not Lept.Module.Loaded then
    raise Exception.Create('Cannot create a Leptonica wrapper: no runtime is loaded. ' +
      'Every wrapper depends on the runtime - its methods go through the ' +
      'function table whether it holds a handle or not - so one made before a ' +
      'runtime is active could never be accounted for correctly.');
  Result := TPixImpl.Create(Handle, OwnsHandle);
end;

function NewPix(const W, H, Depth: Integer): IPix;
begin
  Result := WrapPix(Lept.Pix.PixCreate(W, H, Depth), True);
end;

const
  ORIENT_UNKNOWN = 0;
  ORIENT_UP = 1;
  ORIENT_LEFT = 2;
  ORIENT_DOWN = 3;
  ORIENT_RIGHT = 4;

function DetectPageOrientation(const Src: IPix;
  out UpConfidence, LeftConfidence: Single): TPageOrientation;
var
  Decision: Integer;
begin
  Result := poUnknown;
  UpConfidence := 0;
  LeftConfidence := 0;
  if (Src = nil) or Src.IsEmpty or (Src.Depth <> 1) then
    Exit;
  if Lept.Pix.PixOrientDetect(Src.Raw, @UpConfidence, @LeftConfidence, 0, 0) <> 0 then
    Exit;
  if Lept.Pix.MakeOrientDecision(UpConfidence, LeftConfidence, 0, 0, @Decision, 0) <> 0 then
    Exit;
  case Decision of
    ORIENT_UP: Result := poUp;
    ORIENT_LEFT: Result := poLeft;
    ORIENT_DOWN: Result := poDown;
    ORIENT_RIGHT: Result := poRight;
    ORIENT_UNKNOWN: Result := poUnknown;
  else
    Result := poUnknown;
  end;
end;

function DetectPageOrientation(const Src: IPix): TPageOrientation;
var
  Up, Left: Single;
begin
  Result := DetectPageOrientation(Src, Up, Left);
end;

function OrientationToQuads(const Value: TPageOrientation): Integer;
begin
  case Value of
    poUp: Result := 0;
    poLeft: Result := 3;
    poDown: Result := 2;
    poRight: Result := 1;
  else
    Result := 0;
  end;
end;

end.
