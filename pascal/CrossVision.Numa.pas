{ ************************************************************************** }
{                                                                            }
{ CrossVision.Numa                                                           }
{                                                                            }
{ Copyright © 2026 Yuriy Pisarev                     }
{                                                                            }
{ ************************************************************************** }

unit CrossVision.Numa;

interface

uses
  LeptonicaTypes;

type
  INuma = interface
    ['{6E2A9C30-3B7D-4F1E-8C2A-9D4F6B1E3C60}']
    function Count: Integer;
    function Raw: PNuma;
    function Add(const Value: Double): INuma;
    function Get(const Index: Integer): Double;
    function GetInt(const Index: Integer): Integer;
    function Copy: INuma;
  end;

function NewNuma(const InitialCapacity: Integer = 0): INuma;
function WrapNuma(const Handle: PNuma; const OwnsHandle: Boolean = True): INuma;

implementation

uses
  {$IFDEF FPC}SysUtils{$ELSE}System.SysUtils{$ENDIF},
  Leptonica;

type
  TNumaImpl = class(TInterfacedObject, INuma)
  private
    FHandle: PNuma;
    FOwns: Boolean;
    FGeneration: Cardinal;
    FCounted: Boolean;
  public
    constructor Create(const AHandle: PNuma; const AOwns: Boolean);
    destructor Destroy; override;
    function Count: Integer;
    function Raw: PNuma;
    function Add(const Value: Double): INuma;
    function Get(const Index: Integer): Double;
    function GetInt(const Index: Integer): Integer;
    function Copy: INuma;
  end;

constructor TNumaImpl.Create(const AHandle: PNuma; const AOwns: Boolean);
begin
  inherited Create;
  FHandle := AHandle;
  FOwns := False;
  FGeneration := LeptRuntimeGeneration;
  FCounted := True;
  LeptObjectCreated;
  FOwns := AOwns;
end;

destructor TNumaImpl.Destroy;
begin
  try
    if FOwns and Assigned(FHandle) and (FGeneration = LeptRuntimeGeneration) and Assigned(Lept.Numa.NumaDestroy) then
    begin
      Lept.Numa.NumaDestroy(@FHandle);
      if Assigned(FHandle) then
        LeptLifecycleFault(LeptFaultDestroyFailed);
    end;
  finally
    if FCounted then
    begin
      if FOwns and Assigned(FHandle) and (FGeneration = LeptRuntimeGeneration) and not Assigned(Lept.Numa.NumaDestroy) then
        LeptLifecycleFault(LeptFaultMissingDestroy);
      if FGeneration = LeptRuntimeGeneration then
        LeptObjectDestroyed;
      FCounted := False;
    end;
  end;
  inherited;
end;

function TNumaImpl.Count: Integer;
begin
  if Assigned(FHandle) then
    Result := Lept.Numa.NumaGetCount(FHandle)
  else
    Result := 0;
end;

function TNumaImpl.Raw: PNuma;
begin
  Result := FHandle;
end;

function TNumaImpl.Add(const Value: Double): INuma;
begin
  if Assigned(FHandle) then
    Lept.Numa.NumaAddNumber(FHandle, Value);
  Result := Self;
end;

function TNumaImpl.Get(const Index: Integer): Double;
var
  V: Single;
begin
  V := 0;
  if Assigned(FHandle) then
    Lept.Numa.NumaGetFValue(FHandle, Index, @V);
  Result := V;
end;

function TNumaImpl.GetInt(const Index: Integer): Integer;
begin
  Result := 0;
  if Assigned(FHandle) then
    Lept.Numa.NumaGetIValue(FHandle, Index, @Result);
end;

function TNumaImpl.Copy: INuma;
begin
  Result := WrapNuma(Lept.Numa.NumaCopy(FHandle), True);
end;

function NewNuma(const InitialCapacity: Integer): INuma;
begin
  Result := WrapNuma(Lept.Numa.NumaCreate(InitialCapacity), True);
end;

function WrapNuma(const Handle: PNuma; const OwnsHandle: Boolean): INuma;
begin
  if not Lept.Module.Loaded then
    raise Exception.Create('Cannot create a Leptonica wrapper: no runtime is loaded. ' +
      'Every wrapper depends on the runtime - its methods go through the ' +
      'function table whether it holds a handle or not - so one made before a ' +
      'runtime is active could never be accounted for correctly.');
  Result := TNumaImpl.Create(Handle, OwnsHandle);
end;

end.
