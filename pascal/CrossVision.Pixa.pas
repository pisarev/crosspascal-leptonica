{ ************************************************************************** }
{                                                                            }
{ CrossVision.Pixa                                                           }
{                                                                            }
{ Copyright © 2026 Yuriy Pisarev                     }
{                                                                            }
{ ************************************************************************** }

unit CrossVision.Pixa;

interface

uses LeptonicaTypes, CrossVision.Pix;

type
  IPixa = interface
    ['{4A9D2C10-7E5B-4F3D-8B1A-2C6F9E4D1B80}']
    function Count: Integer;
    function Raw: PPixa;
    function Add(const Pix: IPix): IPixa;
    function Get(const Index: Integer): IPix;
    function Clone: IPixa;
    function Copy: IPixa;
  end;

function NewPixa(const InitialCapacity: Integer = 0): IPixa;
function WrapPixa(const Handle: PPixa; const OwnsHandle: Boolean = True): IPixa;

implementation

uses
  {$IFDEF FPC}SysUtils{$ELSE}System.SysUtils{$ENDIF},
  Leptonica;

const
  L_COPY  = 1;
  L_CLONE = 2;

type
  TPixaImpl = class(TInterfacedObject, IPixa)
  private
    FHandle: PPixa;
    FOwns: Boolean;
    FGeneration: Cardinal;
    FCounted: Boolean;
  public
    constructor Create(const AHandle: PPixa; const AOwns: Boolean);
    destructor Destroy; override;
    function Count: Integer;
    function Raw: PPixa;
    function Add(const Pix: IPix): IPixa;
    function Get(const Index: Integer): IPix;
    function Clone: IPixa;
    function Copy: IPixa;
  end;

constructor TPixaImpl.Create(const AHandle: PPixa; const AOwns: Boolean);
begin
  inherited Create;
  FHandle := AHandle;
  FOwns := False;
  FGeneration := LeptRuntimeGeneration;
  FCounted := True;
  LeptObjectCreated;
  FOwns := AOwns;
end;

destructor TPixaImpl.Destroy;
begin
  try
    if FOwns and Assigned(FHandle) and (FGeneration = LeptRuntimeGeneration) and Assigned(Lept.Pixa.PixaDestroy) then
    begin
      Lept.Pixa.PixaDestroy(@FHandle);
      if Assigned(FHandle) then
        LeptLifecycleFault(LeptFaultDestroyFailed);
    end;
  finally
    if FCounted then
    begin
      if FOwns and Assigned(FHandle) and (FGeneration = LeptRuntimeGeneration) and not Assigned(Lept.Pixa.PixaDestroy) then
        LeptLifecycleFault(LeptFaultMissingDestroy);
      if FGeneration = LeptRuntimeGeneration then
        LeptObjectDestroyed;
      FCounted := False;
    end;
  end;
  inherited;
end;

function TPixaImpl.Count: Integer;
begin
  if Assigned(FHandle) then
    Result := Lept.Pixa.PixaGetCount(FHandle)
  else
    Result := 0;
end;

function TPixaImpl.Raw: PPixa;
begin
  Result := FHandle;
end;

function TPixaImpl.Add(const Pix: IPix): IPixa;
begin
  if Assigned(FHandle) then
    Lept.Pixa.PixaAddPix(FHandle, Pix.Raw, L_COPY);
  Result := Self;
end;

function TPixaImpl.Get(const Index: Integer): IPix;
begin
  Result := WrapPix(Lept.Pixa.PixaGetPix(FHandle, Index, L_CLONE), True);
end;

function TPixaImpl.Clone: IPixa;
begin
  Result := WrapPixa(Lept.Pixa.PixaCopy(FHandle, L_CLONE), True);
end;

function TPixaImpl.Copy: IPixa;
begin
  Result := WrapPixa(Lept.Pixa.PixaCopy(FHandle, L_COPY), True);
end;

function NewPixa(const InitialCapacity: Integer): IPixa;
begin
  Result := WrapPixa(Lept.Pixa.PixaCreate(InitialCapacity), True);
end;

function WrapPixa(const Handle: PPixa; const OwnsHandle: Boolean): IPixa;
begin
  if not Lept.Module.Loaded then
    raise Exception.Create('Cannot create a Leptonica wrapper: no runtime is loaded. ' +
      'Every wrapper depends on the runtime - its methods go through the ' +
      'function table whether it holds a handle or not - so one made before a ' +
      'runtime is active could never be accounted for correctly.');
  Result := TPixaImpl.Create(Handle, OwnsHandle);
end;

end.
