{ ************************************************************************** }
{                                                                            }
{ CrossVision.Pta                                                            }
{                                                                            }
{ Copyright © 2026 Yuriy Pisarev                                             }
{                                                                            }
{ ************************************************************************** }

unit CrossVision.Pta;

interface

uses LeptonicaTypes, CrossVision.Box;

type
  IPta = interface
    ['{8C1F4A20-5D3B-4E7F-9A2C-1B6E8D3F5C70}']
    function Count: Integer;
    function Raw: PPta;
    function AddPt(const X, Y: Double): IPta;
    function GetPt(const Index: Integer; out X, Y: Double): Boolean;
    function BoundingBox: IBox;
    function Copy: IPta;
  end;

function NewPta(const InitialCapacity: Integer = 0): IPta;
function WrapPta(const Handle: PPta; const OwnsHandle: Boolean = True): IPta;

implementation

uses
  {$IFDEF FPC}SysUtils{$ELSE}System.SysUtils{$ENDIF},
  Leptonica;

type
  TPtaImpl = class(TInterfacedObject, IPta)
  private
    FHandle: PPta;
    FOwns: Boolean;
    FGeneration: Cardinal;
    FCounted: Boolean;
  public
    constructor Create(const AHandle: PPta; const AOwns: Boolean);
    destructor Destroy; override;
    function Count: Integer;
    function Raw: PPta;
    function AddPt(const X, Y: Double): IPta;
    function GetPt(const Index: Integer; out X, Y: Double): Boolean;
    function BoundingBox: IBox;
    function Copy: IPta;
  end;

constructor TPtaImpl.Create(const AHandle: PPta; const AOwns: Boolean);
begin
  inherited Create;
  FHandle := AHandle;
  FOwns := False;
  FGeneration := LeptRuntimeGeneration;
  FCounted := True;
  LeptObjectCreated;
  FOwns := AOwns;
end;

destructor TPtaImpl.Destroy;
begin
  try
    if FOwns and Assigned(FHandle) and (FGeneration = LeptRuntimeGeneration) and Assigned(Lept.Pta.PtaDestroy) then
    begin
      Lept.Pta.PtaDestroy(@FHandle);
      if Assigned(FHandle) then
        LeptLifecycleFault(LeptFaultDestroyFailed);
    end;
  finally
    if FCounted then
    begin
      if FOwns and Assigned(FHandle) and (FGeneration = LeptRuntimeGeneration) and not Assigned(Lept.Pta.PtaDestroy) then
        LeptLifecycleFault(LeptFaultMissingDestroy);
      if FGeneration = LeptRuntimeGeneration then
        LeptObjectDestroyed;
      FCounted := False;
    end;
  end;
  inherited;
end;

function TPtaImpl.Count: Integer;
begin
  if Assigned(FHandle) then
    Result := Lept.Pta.PtaGetCount(FHandle)
  else
    Result := 0;
end;

function TPtaImpl.Raw: PPta;
begin
  Result := FHandle;
end;

function TPtaImpl.AddPt(const X, Y: Double): IPta;
begin
  if Assigned(FHandle) then
    Lept.Pta.PtaAddPt(FHandle, X, Y);
  Result := Self;
end;

function TPtaImpl.GetPt(const Index: Integer; out X, Y: Double): Boolean;
var
  FX, FY: Single;
begin
  FX := 0;
  FY := 0;
  Result := Assigned(FHandle) and (Lept.Pta.PtaGetPt(FHandle, Index, @FX, @FY) = 0);
  X := FX;
  Y := FY;
end;

function TPtaImpl.BoundingBox: IBox;
begin
  Result := WrapBox(Lept.Pta.PtaGetBoundingRegion(FHandle), True);
end;

function TPtaImpl.Copy: IPta;
begin
  Result := WrapPta(Lept.Pta.PtaCopy(FHandle), True);
end;

function NewPta(const InitialCapacity: Integer): IPta;
begin
  Result := WrapPta(Lept.Pta.PtaCreate(InitialCapacity), True);
end;

function WrapPta(const Handle: PPta; const OwnsHandle: Boolean): IPta;
begin
  if not Lept.Module.Loaded then
    raise Exception.Create('Cannot create a Leptonica wrapper: no runtime is loaded. ' +
      'Every wrapper depends on the runtime - its methods go through the ' +
      'function table whether it holds a handle or not - so one made before a ' +
      'runtime is active could never be accounted for correctly.');
  Result := TPtaImpl.Create(Handle, OwnsHandle);
end;

end.
