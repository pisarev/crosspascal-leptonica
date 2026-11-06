{ ************************************************************************** }
{                                                                            }
{ CrossVision.Colormap                                                       }
{                                                                            }
{ Copyright © 2026 Yuriy Pisarev                                             }
{                                                                            }
{ ************************************************************************** }

unit CrossVision.Colormap;

interface

uses
  LeptonicaTypes;

type
  IColormap = interface
    ['{5EAB7F43-8D60-4152-CF4E-9FBD5F70406A}']
    function GetCount: Integer;
    function GetFreeCount: Integer;
    function GetDepth: Integer;
    function IsEmpty: Boolean;
    function Raw: PPixColormap;
    function AddColor(const R, G, B: Integer): IColormap;
    function AddRGBA(const R, G, B, A: Integer): IColormap;
    function AddNewColor(const R, G, B: Integer): Integer;
    function ResetColor(const Index, R, G, B: Integer): IColormap;
    function Clear: IColormap;
    function GetColor(const Index: Integer; out R, G, B: Integer): Boolean;
    function GetColor32(const Index: Integer): Cardinal;
    function GetIndex(const R, G, B: Integer): Integer;
    function GetNearestIndex(const R, G, B: Integer): Integer;
    function GammaTRC(const Gamma: Single; const MinVal, MaxVal: Integer): IColormap;
    function ContrastTRC(const Factor: Single): IColormap;
    function Copy: IColormap;
    property Count: Integer read GetCount;
    property Depth: Integer read GetDepth;
  end;

function NewColormap(const Depth: Integer): IColormap;

function RandomColormap(const Depth, HasBlack, HasWhite: Integer): IColormap;

function LinearColormap(const Depth, NLevels: Integer): IColormap;

function WrapColormap(const Handle: PPixColormap; const OwnsHandle: Boolean = True): IColormap;

implementation

uses
  {$IFDEF FPC}SysUtils{$ELSE}System.SysUtils{$ENDIF},
  Leptonica;

type
  TColormapImpl = class(TInterfacedObject, IColormap)
  private
    FHandle: PPixColormap;
    FOwns: Boolean;
    FGeneration: Cardinal;
    FCounted: Boolean;
  public
    constructor Create(const AHandle: PPixColormap; const AOwns: Boolean);
    destructor Destroy; override;
    function GetCount: Integer;
    function GetFreeCount: Integer;
    function GetDepth: Integer;
    function IsEmpty: Boolean;
    function Raw: PPixColormap;
    function AddColor(const R, G, B: Integer): IColormap;
    function AddRGBA(const R, G, B, A: Integer): IColormap;
    function AddNewColor(const R, G, B: Integer): Integer;
    function ResetColor(const Index, R, G, B: Integer): IColormap;
    function Clear: IColormap;
    function GetColor(const Index: Integer; out R, G, B: Integer): Boolean;
    function GetColor32(const Index: Integer): Cardinal;
    function GetIndex(const R, G, B: Integer): Integer;
    function GetNearestIndex(const R, G, B: Integer): Integer;
    function GammaTRC(const Gamma: Single; const MinVal, MaxVal: Integer): IColormap;
    function ContrastTRC(const Factor: Single): IColormap;
    function Copy: IColormap;
  end;

constructor TColormapImpl.Create(const AHandle: PPixColormap; const AOwns: Boolean);
begin
  inherited Create;
  FHandle := AHandle;
  FOwns := False;
  FGeneration := LeptRuntimeGeneration;
  FCounted := True;
  LeptObjectCreated;
  FOwns := AOwns;
end;

destructor TColormapImpl.Destroy;
begin
  try
    if FOwns and Assigned(FHandle) and (FGeneration = LeptRuntimeGeneration) and Assigned(Lept.Colormap.PixcmapDestroy) then
    begin
      Lept.Colormap.PixcmapDestroy(@FHandle);
      if Assigned(FHandle) then
        LeptLifecycleFault(LeptFaultDestroyFailed);
    end;
  finally
    if FCounted then
    begin
      if FOwns and Assigned(FHandle) and (FGeneration = LeptRuntimeGeneration) and not Assigned(Lept.Colormap.PixcmapDestroy) then
        LeptLifecycleFault(LeptFaultMissingDestroy);
      if FGeneration = LeptRuntimeGeneration then
        LeptObjectDestroyed;
      FCounted := False;
    end;
  end;
  inherited;
end;

function TColormapImpl.GetCount: Integer;
begin
  if Assigned(FHandle) then
    Result := Lept.Colormap.PixcmapGetCount(FHandle)
  else
    Result := 0;
end;

function TColormapImpl.GetFreeCount: Integer;
begin
  if Assigned(FHandle) then
    Result := Lept.Colormap.PixcmapGetFreeCount(FHandle)
  else
    Result := 0;
end;

function TColormapImpl.GetDepth: Integer;
begin
  if Assigned(FHandle) then
    Result := Lept.Colormap.PixcmapGetDepth(FHandle)
  else
    Result := 0;
end;

function TColormapImpl.IsEmpty: Boolean;
begin
  Result := (not Assigned(FHandle)) or (GetCount <= 0);
end;

function TColormapImpl.Raw: PPixColormap;
begin
  Result := FHandle;
end;

function TColormapImpl.AddColor(const R, G, B: Integer): IColormap;
begin
  if Assigned(FHandle) then Lept.Colormap.PixcmapAddColor(FHandle, R, G, B);
  Result := Self;
end;

function TColormapImpl.AddRGBA(const R, G, B, A: Integer): IColormap;
begin
  if Assigned(FHandle) then Lept.Colormap.PixcmapAddRGBA(FHandle, R, G, B, A);
  Result := Self;
end;

function TColormapImpl.AddNewColor(const R, G, B: Integer): Integer;
var
  Idx: Integer;
begin
  Idx := -1;
  if Assigned(FHandle) then
    Lept.Colormap.PixcmapAddNewColor(FHandle, R, G, B, @Idx);
  Result := Idx;
end;

function TColormapImpl.ResetColor(const Index, R, G, B: Integer): IColormap;
begin
  if Assigned(FHandle) then Lept.Colormap.PixcmapResetColor(FHandle, Index, R, G, B);
  Result := Self;
end;

function TColormapImpl.Clear: IColormap;
begin
  if Assigned(FHandle) then Lept.Colormap.PixcmapClear(FHandle);
  Result := Self;
end;

function TColormapImpl.GetColor(const Index: Integer; out R, G, B: Integer): Boolean;
begin
  R := 0;
  G := 0;
  B := 0;
  Result := Assigned(FHandle) and (Lept.Colormap.PixcmapGetColor(FHandle, Index, @R, @G, @B) = 0);
end;

function TColormapImpl.GetColor32(const Index: Integer): Cardinal;
var
  V: Cardinal;
begin
  V := 0;
  if Assigned(FHandle) then Lept.Colormap.PixcmapGetColor32(FHandle, Index, @V);
  Result := V;
end;

function TColormapImpl.GetIndex(const R, G, B: Integer): Integer;
var
  Idx: Integer;
begin
  Idx := -1;
  if Assigned(FHandle) and (Lept.Colormap.PixcmapGetIndex(FHandle, R, G, B, @Idx) = 0) then
    Result := Idx
  else
    Result := -1;
end;

function TColormapImpl.GetNearestIndex(const R, G, B: Integer): Integer;
var
  Idx: Integer;
begin
  Idx := -1;
  if Assigned(FHandle) and (Lept.Colormap.PixcmapGetNearestIndex(FHandle, R, G, B, @Idx) = 0) then
    Result := Idx
  else
    Result := -1;
end;

function TColormapImpl.GammaTRC(const Gamma: Single; const MinVal, MaxVal: Integer): IColormap;
begin
  if Assigned(FHandle) then Lept.Colormap.PixcmapGammaTRC(FHandle, Gamma, MinVal, MaxVal);
  Result := Self;
end;

function TColormapImpl.ContrastTRC(const Factor: Single): IColormap;
begin
  if Assigned(FHandle) then Lept.Colormap.PixcmapContrastTRC(FHandle, Factor);
  Result := Self;
end;

function TColormapImpl.Copy: IColormap;
begin
  Result := WrapColormap(Lept.Colormap.PixcmapCopy(FHandle), True);
end;

function NewColormap(const Depth: Integer): IColormap;
begin
  Result := WrapColormap(Lept.Colormap.PixcmapCreate(Depth), True);
end;

function RandomColormap(const Depth, HasBlack, HasWhite: Integer): IColormap;
begin
  Result := WrapColormap(Lept.Colormap.PixcmapCreateRandom(Depth, HasBlack, HasWhite), True);
end;

function LinearColormap(const Depth, NLevels: Integer): IColormap;
begin
  Result := WrapColormap(Lept.Colormap.PixcmapCreateLinear(Depth, NLevels), True);
end;

function WrapColormap(const Handle: PPixColormap; const OwnsHandle: Boolean): IColormap;
begin
  if not Lept.Module.Loaded then
    raise Exception.Create('Cannot create a Leptonica wrapper: no runtime is loaded. ' +
      'Every wrapper depends on the runtime - its methods go through the ' +
      'function table whether it holds a handle or not - so one made before a ' +
      'runtime is active could never be accounted for correctly.');
  Result := TColormapImpl.Create(Handle, OwnsHandle);
end;

end.
