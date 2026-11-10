{ ************************************************************************** }
{                                                                            }
{ CrossVision.Box                                                            }
{                                                                            }
{ Copyright © 2026 Yuriy Pisarev (ypisareff@outlook.com)                     }
{                                                                            }
{ ************************************************************************** }

unit CrossVision.Box;

interface

uses
  LeptonicaTypes;

type
  IBox = interface
    ['{9F3C1A40-72B5-4D6E-8A1C-3E5F7B9D2C40}']
    function GetX: Integer;
    function GetY: Integer;
    function GetWidth: Integer;
    function GetHeight: Integer;
    function IsValid: Boolean;
    function Raw: PBox;
    function Right: Integer;
    function Bottom: Integer;
    function Area: Integer;
    function SetGeometry(const X, Y, W, H: Integer): IBox;
    function Clone: IBox;
    function Copy: IBox;
    function Contains(const Other: IBox): Boolean;
    function ContainsPt(const X, Y: Integer): Boolean;
    function Intersects(const Other: IBox): Boolean;
    function OverlapRegion(const Other: IBox): IBox;
    function BoundingRegion(const Other: IBox): IBox;
    property X: Integer read GetX;
    property Y: Integer read GetY;
    property Width: Integer read GetWidth;
    property Height: Integer read GetHeight;
  end;

  IBoxa = interface
    ['{1D6E8B20-4A7C-4F3D-9B2E-5C8A1F4E7B50}']
    function Count: Integer;
    function ValidCount: Integer;
    function Raw: PBoxa;
    function Add(const Box: IBox): IBoxa;
    function Get(const Index: Integer): IBox;
    function Clone: IBoxa;
    function Copy: IBoxa;
  end;

function NewBox(const X, Y, W, H: Integer): IBox;
function WrapBox(const Handle: PBox; const OwnsHandle: Boolean = True): IBox;
function NewBoxa(const InitialCapacity: Integer = 0): IBoxa;
function WrapBoxa(const Handle: PBoxa; const OwnsHandle: Boolean = True): IBoxa;

implementation

uses
  {$IFDEF FPC}SysUtils{$ELSE}System.SysUtils{$ENDIF},
  Leptonica;

const
  L_COPY  = 1;
  L_CLONE = 2;

type
  TBoxImpl = class(TInterfacedObject, IBox)
  private
    FHandle: PBox;
    FOwns: Boolean;
    FGeneration: Cardinal;
    FCounted: Boolean;
    procedure Geom(out X, Y, W, H: Integer);
  public
    constructor Create(const AHandle: PBox; const AOwns: Boolean);
    destructor Destroy; override;
    function GetX: Integer;
    function GetY: Integer;
    function GetWidth: Integer;
    function GetHeight: Integer;
    function IsValid: Boolean;
    function Raw: PBox;
    function Right: Integer;
    function Bottom: Integer;
    function Area: Integer;
    function SetGeometry(const X, Y, W, H: Integer): IBox;
    function Clone: IBox;
    function Copy: IBox;
    function Contains(const Other: IBox): Boolean;
    function ContainsPt(const X, Y: Integer): Boolean;
    function Intersects(const Other: IBox): Boolean;
    function OverlapRegion(const Other: IBox): IBox;
    function BoundingRegion(const Other: IBox): IBox;
  end;

  TBoxaImpl = class(TInterfacedObject, IBoxa)
  private
    FHandle: PBoxa;
    FOwns: Boolean;
    FGeneration: Cardinal;
    FCounted: Boolean;
  public
    constructor Create(const AHandle: PBoxa; const AOwns: Boolean);
    destructor Destroy; override;
    function Count: Integer;
    function ValidCount: Integer;
    function Raw: PBoxa;
    function Add(const Box: IBox): IBoxa;
    function Get(const Index: Integer): IBox;
    function Clone: IBoxa;
    function Copy: IBoxa;
  end;

constructor TBoxImpl.Create(const AHandle: PBox; const AOwns: Boolean);
begin
  inherited Create;
  FHandle := AHandle;
  FOwns := False;
  FGeneration := LeptRuntimeGeneration;
  FCounted := True;
  LeptObjectCreated;
  FOwns := AOwns;
end;

destructor TBoxImpl.Destroy;
begin
  try
    if FOwns and Assigned(FHandle) and (FGeneration = LeptRuntimeGeneration) and Assigned(Lept.Box.BoxDestroy) then
    begin
      Lept.Box.BoxDestroy(@FHandle);
      if Assigned(FHandle) then
        LeptLifecycleFault(LeptFaultDestroyFailed);
    end;
  finally
    if FCounted then
    begin
      if FOwns and Assigned(FHandle) and (FGeneration = LeptRuntimeGeneration) and not Assigned(Lept.Box.BoxDestroy) then
        LeptLifecycleFault(LeptFaultMissingDestroy);
      if FGeneration = LeptRuntimeGeneration then
        LeptObjectDestroyed;
      FCounted := False;
    end;
  end;
  inherited;
end;

procedure TBoxImpl.Geom(out X, Y, W, H: Integer);
begin
  X := 0;
  Y := 0;
  W := 0;
  H := 0;
  if Assigned(FHandle) then
    Lept.Box.BoxGetGeometry(FHandle, @X, @Y, @W, @H);
end;

function TBoxImpl.GetX: Integer;
var
  X, Y, W, H: Integer;
begin
  Geom(X, Y, W, H);
  Result := X;
end;

function TBoxImpl.GetY: Integer;
var
  X, Y, W, H: Integer;
begin
  Geom(X, Y, W, H);
  Result := Y;
end;

function TBoxImpl.GetWidth: Integer;
var
  X, Y, W, H: Integer;
begin
  Geom(X, Y, W, H);
  Result := W;
end;

function TBoxImpl.GetHeight: Integer;
var
  X, Y, W, H: Integer;
begin
  Geom(X, Y, W, H);
  Result := H;
end;

function TBoxImpl.IsValid: Boolean;
var
  V: Integer;
begin
  V := 0;
  if Assigned(FHandle) then
    Lept.Box.BoxIsValid(FHandle, @V);
  Result := V <> 0;
end;

function TBoxImpl.Raw: PBox;
begin
  Result := FHandle;
end;

function TBoxImpl.Right: Integer;
var
  X, Y, W, H: Integer;
begin
  Geom(X, Y, W, H);
  Result := X + W;
end;

function TBoxImpl.Bottom: Integer;
var
  X, Y, W, H: Integer;
begin
  Geom(X, Y, W, H);
  Result := Y + H;
end;

function TBoxImpl.Area: Integer;
var
  X, Y, W, H: Integer;
begin
  Geom(X, Y, W, H);
  Result := W * H;
end;

function TBoxImpl.SetGeometry(const X, Y, W, H: Integer): IBox;
begin
  if Assigned(FHandle) then
    Lept.Box.BoxSetGeometry(FHandle, X, Y, W, H);
  Result := Self;
end;

function TBoxImpl.Clone: IBox;
begin
  Result := WrapBox(Lept.Box.BoxClone(FHandle), True);
end;

function TBoxImpl.Copy: IBox;
begin
  Result := WrapBox(Lept.Box.BoxCopy(FHandle), True);
end;

function TBoxImpl.Contains(const Other: IBox): Boolean;
var
  R: Integer;
begin
  R := 0;
  Lept.Box.BoxContains(FHandle, Other.Raw, @R);
  Result := R <> 0;
end;

function TBoxImpl.ContainsPt(const X, Y: Integer): Boolean;
var
  R: Integer;
begin
  R := 0;
  Lept.Box.BoxContainsPt(FHandle, X, Y, @R);
  Result := R <> 0;
end;

function TBoxImpl.Intersects(const Other: IBox): Boolean;
var
  R: Integer;
begin
  R := 0;
  Lept.Box.BoxIntersects(FHandle, Other.Raw, @R);
  Result := R <> 0;
end;

function TBoxImpl.OverlapRegion(const Other: IBox): IBox;
begin
  Result := WrapBox(Lept.Box.BoxOverlapRegion(FHandle, Other.Raw), True);
end;

function TBoxImpl.BoundingRegion(const Other: IBox): IBox;
begin
  Result := WrapBox(Lept.Box.BoxBoundingRegion(FHandle, Other.Raw), True);
end;

constructor TBoxaImpl.Create(const AHandle: PBoxa; const AOwns: Boolean);
begin
  inherited Create;
  FHandle := AHandle;
  FOwns := False;
  FGeneration := LeptRuntimeGeneration;
  FCounted := True;
  LeptObjectCreated;
  FOwns := AOwns;
end;

destructor TBoxaImpl.Destroy;
begin
  try
    if FOwns and Assigned(FHandle) and (FGeneration = LeptRuntimeGeneration) and Assigned(Lept.Box.BoxaDestroy) then
    begin
      Lept.Box.BoxaDestroy(@FHandle);
      if Assigned(FHandle) then
        LeptLifecycleFault(LeptFaultDestroyFailed);
    end;
  finally
    if FCounted then
    begin
      if FOwns and Assigned(FHandle) and (FGeneration = LeptRuntimeGeneration) and not Assigned(Lept.Box.BoxaDestroy) then
        LeptLifecycleFault(LeptFaultMissingDestroy);
      if FGeneration = LeptRuntimeGeneration then
        LeptObjectDestroyed;
      FCounted := False;
    end;
  end;
  inherited;
end;

function TBoxaImpl.Count: Integer;
begin
  if Assigned(FHandle) then
    Result := Lept.Box.BoxaGetCount(FHandle)
  else
    Result := 0;
end;

function TBoxaImpl.ValidCount: Integer;
begin
  if Assigned(FHandle) then
    Result := Lept.Box.BoxaGetValidCount(FHandle)
  else
    Result := 0;
end;

function TBoxaImpl.Raw: PBoxa;
begin
  Result := FHandle;
end;

function TBoxaImpl.Add(const Box: IBox): IBoxa;
begin
  if Assigned(FHandle) then
    Lept.Box.BoxaAddBox(FHandle, Box.Raw, L_COPY);
  Result := Self;
end;

function TBoxaImpl.Get(const Index: Integer): IBox;
begin
  Result := WrapBox(Lept.Box.BoxaGetBox(FHandle, Index, L_CLONE), True);
end;

function TBoxaImpl.Clone: IBoxa;
begin
  Result := WrapBoxa(Lept.Box.BoxaCopy(FHandle, L_CLONE), True);
end;

function TBoxaImpl.Copy: IBoxa;
begin
  Result := WrapBoxa(Lept.Box.BoxaCopy(FHandle, L_COPY), True);
end;

function NewBox(const X, Y, W, H: Integer): IBox;
begin
  Result := WrapBox(Lept.Box.BoxCreate(X, Y, W, H), True);
end;

function WrapBox(const Handle: PBox; const OwnsHandle: Boolean): IBox;
begin
  if not Lept.Module.Loaded then
    raise Exception.Create('Cannot create a Leptonica wrapper: no runtime is loaded. ' +
      'Every wrapper depends on the runtime - its methods go through the ' +
      'function table whether it holds a handle or not - so one made before a ' +
      'runtime is active could never be accounted for correctly.');
  Result := TBoxImpl.Create(Handle, OwnsHandle);
end;

function NewBoxa(const InitialCapacity: Integer): IBoxa;
begin
  Result := WrapBoxa(Lept.Box.BoxaCreate(InitialCapacity), True);
end;

function WrapBoxa(const Handle: PBoxa; const OwnsHandle: Boolean): IBoxa;
begin
  if not Lept.Module.Loaded then
    raise Exception.Create('Cannot create a Leptonica wrapper: no runtime is loaded. ' +
      'Every wrapper depends on the runtime - its methods go through the ' +
      'function table whether it holds a handle or not - so one made before a ' +
      'runtime is active could never be accounted for correctly.');
  Result := TBoxaImpl.Create(Handle, OwnsHandle);
end;

end.
