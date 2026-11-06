{ ************************************************************************** }
{                                                                            }
{ CrossVision.FPix                                                           }
{                                                                            }
{ Copyright © 2026 Yuriy Pisarev (ypisareff@outlook.com)                     }
{                                                                            }
{ ************************************************************************** }

unit CrossVision.FPix;

interface

uses LeptonicaTypes, CrossVision.Pix;

const
  L_CLIP_TO_ZERO = 1;
  L_TAKE_ABSVAL  = 2;

type
  IFPix = interface
    ['{4D9A6E32-7C5F-4041-BE3D-8FAC4F6F3952}']
    function GetWidth: Integer;
    function GetHeight: Integer;
    function IsEmpty: Boolean;
    function Raw: PFPix;
    function GetPixel(const X, Y: Integer): Single;
    function SetPixel(const X, Y: Integer; const Value: Single): IFPix;
    function Clone: IFPix;
    function Copy: IFPix;
    function GetMin: Single;
    function GetMax: Single;
    function SetAll(const Value: Single): IFPix;
    function AddMultConstant(const AddC, MultC: Single): IFPix;
    function ScaleByInteger(const Factor: Integer): IFPix;
    function RotateOrth(const Quads: Integer): IFPix;
    function FlipLR: IFPix;
    function FlipTB: IFPix;
    function AddBorder(const L, R, T, B: Integer): IFPix;
    function RemoveBorder(const L, R, T, B: Integer): IFPix;
    function ThresholdToPix(const Thresh: Single): IPix;
    function ConvertToPix(const OutDepth, NegVals, ErrorFlag: Integer): IPix;
    function Save(const Path: string): Boolean;
    property Width: Integer read GetWidth;
    property Height: Integer read GetHeight;
  end;

function NewFPix(const W, H: Integer): IFPix;

function WrapFPix(const Handle: PFPix; const OwnsHandle: Boolean = True): IFPix;

function LoadFPix(const Path: string): IFPix;

implementation

uses
  {$IFDEF FPC}SysUtils{$ELSE}System.SysUtils{$ENDIF},
  Leptonica;

type
  TFPixImpl = class(TInterfacedObject, IFPix)
  private
    FHandle: PFPix;
    FOwns: Boolean;
    FGeneration: Cardinal;
    FCounted: Boolean;
  public
    constructor Create(const AHandle: PFPix; const AOwns: Boolean);
    destructor Destroy; override;
    function GetWidth: Integer;
    function GetHeight: Integer;
    function IsEmpty: Boolean;
    function Raw: PFPix;
    function GetPixel(const X, Y: Integer): Single;
    function SetPixel(const X, Y: Integer; const Value: Single): IFPix;
    function Clone: IFPix;
    function Copy: IFPix;
    function GetMin: Single;
    function GetMax: Single;
    function SetAll(const Value: Single): IFPix;
    function AddMultConstant(const AddC, MultC: Single): IFPix;
    function ScaleByInteger(const Factor: Integer): IFPix;
    function RotateOrth(const Quads: Integer): IFPix;
    function FlipLR: IFPix;
    function FlipTB: IFPix;
    function AddBorder(const L, R, T, B: Integer): IFPix;
    function RemoveBorder(const L, R, T, B: Integer): IFPix;
    function ThresholdToPix(const Thresh: Single): IPix;
    function ConvertToPix(const OutDepth, NegVals, ErrorFlag: Integer): IPix;
    function Save(const Path: string): Boolean;
  end;

constructor TFPixImpl.Create(const AHandle: PFPix; const AOwns: Boolean);
begin
  inherited Create;
  FHandle := AHandle;
  FOwns := False;
  FGeneration := LeptRuntimeGeneration;
  FCounted := True;
  LeptObjectCreated;
  FOwns := AOwns;
end;

destructor TFPixImpl.Destroy;
begin
  try
    if FOwns and Assigned(FHandle) and (FGeneration = LeptRuntimeGeneration) and Assigned(Lept.FPix.FpixDestroy) then
    begin
      Lept.FPix.FpixDestroy(@FHandle);
      if Assigned(FHandle) then
        LeptLifecycleFault(LeptFaultDestroyFailed);
    end;
  finally
    if FCounted then
    begin
      if FOwns and Assigned(FHandle) and (FGeneration = LeptRuntimeGeneration) and not Assigned(Lept.FPix.FpixDestroy) then
        LeptLifecycleFault(LeptFaultMissingDestroy);
      if FGeneration = LeptRuntimeGeneration then
        LeptObjectDestroyed;
      FCounted := False;
    end;
  end;
  inherited;
end;

function TFPixImpl.GetWidth: Integer;
var
  W, H: Integer;
begin
  W := 0;
  H := 0;
  if Assigned(FHandle) then Lept.FPix.FpixGetDimensions(FHandle, @W, @H);
  Result := W;
end;

function TFPixImpl.GetHeight: Integer;
var
  W, H: Integer;
begin
  W := 0;
  H := 0;
  if Assigned(FHandle) then Lept.FPix.FpixGetDimensions(FHandle, @W, @H);
  Result := H;
end;

function TFPixImpl.IsEmpty: Boolean;
begin
  Result := (not Assigned(FHandle)) or (GetWidth <= 0) or (GetHeight <= 0);
end;

function TFPixImpl.Raw: PFPix;
begin
  Result := FHandle;
end;

function TFPixImpl.GetPixel(const X, Y: Integer): Single;
var
  V: Single;
begin
  V := 0;
  if Assigned(FHandle) then Lept.FPix.FpixGetPixel(FHandle, X, Y, @V);
  Result := V;
end;

function TFPixImpl.SetPixel(const X, Y: Integer; const Value: Single): IFPix;
begin
  if Assigned(FHandle) then Lept.FPix.FpixSetPixel(FHandle, X, Y, Value);
  Result := Self;
end;

function TFPixImpl.Clone: IFPix;
begin
  Result := WrapFPix(Lept.FPix.FpixClone(FHandle), True);
end;

function TFPixImpl.Copy: IFPix;
begin
  Result := WrapFPix(Lept.FPix.FpixCopy(FHandle), True);
end;

function TFPixImpl.GetMin: Single;
var
  V: Single;
  X, Y: Integer;
begin
  V := 0;
  X := 0;
  Y := 0;
  if Assigned(FHandle) then Lept.FPix.FpixGetMin(FHandle, @V, @X, @Y);
  Result := V;
end;

function TFPixImpl.GetMax: Single;
var
  V: Single;
  X, Y: Integer;
begin
  V := 0;
  X := 0;
  Y := 0;
  if Assigned(FHandle) then Lept.FPix.FpixGetMax(FHandle, @V, @X, @Y);
  Result := V;
end;

function TFPixImpl.SetAll(const Value: Single): IFPix;
begin
  if Assigned(FHandle) then Lept.FPix.FpixSetAllArbitrary(FHandle, Value);
  Result := Self;
end;

function TFPixImpl.AddMultConstant(const AddC, MultC: Single): IFPix;
begin
  if Assigned(FHandle) then Lept.FPix.FpixAddMultConstant(FHandle, AddC, MultC);
  Result := Self;
end;

function TFPixImpl.ScaleByInteger(const Factor: Integer): IFPix;
begin
  Result := WrapFPix(Lept.FPix.FpixScaleByInteger(FHandle, Factor), True);
end;

function TFPixImpl.RotateOrth(const Quads: Integer): IFPix;
begin
  Result := WrapFPix(Lept.FPix.FpixRotateOrth(FHandle, Quads), True);
end;

function TFPixImpl.FlipLR: IFPix;
begin
  Result := WrapFPix(Lept.FPix.FpixFlipLR(nil, FHandle), True);
end;

function TFPixImpl.FlipTB: IFPix;
begin
  Result := WrapFPix(Lept.FPix.FpixFlipTB(nil, FHandle), True);
end;

function TFPixImpl.AddBorder(const L, R, T, B: Integer): IFPix;
begin
  Result := WrapFPix(Lept.FPix.FpixAddBorder(FHandle, L, R, T, B), True);
end;

function TFPixImpl.RemoveBorder(const L, R, T, B: Integer): IFPix;
begin
  Result := WrapFPix(Lept.FPix.FpixRemoveBorder(FHandle, L, R, T, B), True);
end;

function TFPixImpl.ThresholdToPix(const Thresh: Single): IPix;
begin
  Result := WrapPix(Lept.FPix.FpixThresholdToPix(FHandle, Thresh), True);
end;

function TFPixImpl.ConvertToPix(const OutDepth, NegVals, ErrorFlag: Integer): IPix;
begin
  Result := WrapPix(Lept.FPix.FpixConvertToPix(FHandle, OutDepth, NegVals, ErrorFlag), True);
end;

function TFPixImpl.Save(const Path: string): Boolean;
var
  A: AnsiString;
begin
  A := AnsiString(Path);
  Result := Assigned(FHandle) and (Lept.FPix.FpixWrite(PAnsiChar(A), FHandle) = 0);
end;

function NewFPix(const W, H: Integer): IFPix;
begin
  Result := WrapFPix(Lept.FPix.FpixCreate(W, H), True);
end;

function WrapFPix(const Handle: PFPix; const OwnsHandle: Boolean): IFPix;
begin
  if not Lept.Module.Loaded then
    raise Exception.Create('Cannot create a Leptonica wrapper: no runtime is loaded. ' +
      'Every wrapper depends on the runtime - its methods go through the ' +
      'function table whether it holds a handle or not - so one made before a ' +
      'runtime is active could never be accounted for correctly.');
  Result := TFPixImpl.Create(Handle, OwnsHandle);
end;

function LoadFPix(const Path: string): IFPix;
var
  A: AnsiString;
begin
  A := AnsiString(Path);
  Result := WrapFPix(Lept.FPix.FpixRead(PAnsiChar(A)), True);
end;

end.
