{ ************************************************************************** }
{                                                                            }
{ CrossVision.Sel                                                            }
{                                                                            }
{ Copyright © 2026 Yuriy Pisarev                                             }
{                                                                            }
{ ************************************************************************** }

unit CrossVision.Sel;

interface

uses LeptonicaTypes, CrossVision.Pix;

const
  SEL_DONT_CARE = 0;
  SEL_HIT       = 1;
  SEL_MISS      = 2;

type
  ISel = interface
    ['{3C8F5D21-6B4E-4F30-AD2C-7E9B3F5E2841}']
    function GetWidth: Integer;
    function GetHeight: Integer;
    function GetCx: Integer;
    function GetCy: Integer;
    function GetName: string;
    function IsEmpty: Boolean;
    function Raw: PSel;
    function GetElement(const Row, Col: Integer): Integer;
    function SetElement(const Row, Col, AType: Integer): ISel;
    function SetOrigin(const Cy, Cx: Integer): ISel;
    function SetName(const AName: string): ISel;
    function Copy: ISel;
    function RotateOrth(const Quads: Integer): ISel;
    function DisplayInPix(const Size, GThick: Integer): IPix;
    function Save(const Path: string): Boolean;
    property Width: Integer read GetWidth;
    property Height: Integer read GetHeight;
    property Cx: Integer read GetCx;
    property Cy: Integer read GetCy;
    property Name: string read GetName;
  end;

function NewSel(const H, W: Integer; const AName: string = ''): ISel;

function BrickSel(const H, W, Cy, Cx, AType: Integer): ISel;

function CombSel(const Factor1, Factor2, Direction: Integer): ISel;

function PlusSel(const Size, LineWidth: Integer): ISel;

function SelFromString(const Text: string; const H, W: Integer; const AName: string = ''): ISel;

function LoadSel(const Path: string): ISel;

function WrapSel(const Handle: PSel; const OwnsHandle: Boolean = True): ISel;

implementation

uses
  {$IFDEF FPC}SysUtils{$ELSE}System.SysUtils{$ENDIF},
  Leptonica;

type
  TSelImpl = class(TInterfacedObject, ISel)
  private
    FHandle: PSel;
    FOwns: Boolean;
    FGeneration: Cardinal;
    FCounted: Boolean;
    procedure ReadParams(out Sy, Sx, Ccy, Ccx: Integer);
  public
    constructor Create(const AHandle: PSel; const AOwns: Boolean);
    destructor Destroy; override;
    function GetWidth: Integer;
    function GetHeight: Integer;
    function GetCx: Integer;
    function GetCy: Integer;
    function GetName: string;
    function IsEmpty: Boolean;
    function Raw: PSel;
    function GetElement(const Row, Col: Integer): Integer;
    function SetElement(const Row, Col, AType: Integer): ISel;
    function SetOrigin(const Cy, Cx: Integer): ISel;
    function SetName(const AName: string): ISel;
    function Copy: ISel;
    function RotateOrth(const Quads: Integer): ISel;
    function DisplayInPix(const Size, GThick: Integer): IPix;
    function Save(const Path: string): Boolean;
  end;

constructor TSelImpl.Create(const AHandle: PSel; const AOwns: Boolean);
begin
  inherited Create;
  FHandle := AHandle;
  FOwns := False;
  FGeneration := LeptRuntimeGeneration;
  FCounted := True;
  LeptObjectCreated;
  FOwns := AOwns;
end;

destructor TSelImpl.Destroy;
begin
  try
    if FOwns and Assigned(FHandle) and (FGeneration = LeptRuntimeGeneration) and Assigned(Lept.Sel.SelDestroy) then
    begin
      Lept.Sel.SelDestroy(@FHandle);
      if Assigned(FHandle) then
        LeptLifecycleFault(LeptFaultDestroyFailed);
    end;
  finally
    if FCounted then
    begin
      if FOwns and Assigned(FHandle) and (FGeneration = LeptRuntimeGeneration) and not Assigned(Lept.Sel.SelDestroy) then
        LeptLifecycleFault(LeptFaultMissingDestroy);
      if FGeneration = LeptRuntimeGeneration then
        LeptObjectDestroyed;
      FCounted := False;
    end;
  end;
  inherited;
end;

procedure TSelImpl.ReadParams(out Sy, Sx, Ccy, Ccx: Integer);
begin
  Sy := 0;
  Sx := 0;
  Ccy := 0;
  Ccx := 0;
  if Assigned(FHandle) then
    Lept.Sel.SelGetParameters(FHandle, @Sy, @Sx, @Ccy, @Ccx);
end;

function TSelImpl.GetWidth: Integer;
var
  Sy, Sx, Ccy, Ccx: Integer;
begin
  ReadParams(Sy, Sx, Ccy, Ccx);
  Result := Sx;
end;

function TSelImpl.GetHeight: Integer;
var
  Sy, Sx, Ccy, Ccx: Integer;
begin
  ReadParams(Sy, Sx, Ccy, Ccx);
  Result := Sy;
end;

function TSelImpl.GetCx: Integer;
var
  Sy, Sx, Ccy, Ccx: Integer;
begin
  ReadParams(Sy, Sx, Ccy, Ccx);
  Result := Ccx;
end;

function TSelImpl.GetCy: Integer;
var
  Sy, Sx, Ccy, Ccx: Integer;
begin
  ReadParams(Sy, Sx, Ccy, Ccx);
  Result := Ccy;
end;

function TSelImpl.GetName: string;
var
  P: PAnsiChar;
begin
  Result := '';
  if Assigned(FHandle) then
  begin
    P := Lept.Sel.SelGetName(FHandle);
    if Assigned(P) then Result := string(AnsiString(P));
  end;
end;

function TSelImpl.IsEmpty: Boolean;
begin
  Result := (not Assigned(FHandle)) or (GetWidth <= 0) or (GetHeight <= 0);
end;

function TSelImpl.Raw: PSel;
begin
  Result := FHandle;
end;

function TSelImpl.GetElement(const Row, Col: Integer): Integer;
var
  T: Integer;
begin
  if not Assigned(FHandle) then Exit(SEL_DONT_CARE);
  T := SEL_DONT_CARE;
  Lept.Sel.SelGetElement(FHandle, Row, Col, @T);
  Result := T;
end;

function TSelImpl.SetElement(const Row, Col, AType: Integer): ISel;
begin
  if Assigned(FHandle) then
    Lept.Sel.SelSetElement(FHandle, Row, Col, AType);
  Result := Self;
end;

function TSelImpl.SetOrigin(const Cy, Cx: Integer): ISel;
begin
  if Assigned(FHandle) then
    Lept.Sel.SelSetOrigin(FHandle, Cy, Cx);
  Result := Self;
end;

function TSelImpl.SetName(const AName: string): ISel;
var
  A: AnsiString;
begin
  if Assigned(FHandle) then
  begin
    A := AnsiString(AName);
    Lept.Sel.SelSetName(FHandle, PAnsiChar(A));
  end;
  Result := Self;
end;

function TSelImpl.Copy: ISel;
begin
  Result := WrapSel(Lept.Sel.SelCopy(FHandle), True);
end;

function TSelImpl.RotateOrth(const Quads: Integer): ISel;
begin
  Result := WrapSel(Lept.Sel.SelRotateOrth(FHandle, Quads), True);
end;

function TSelImpl.DisplayInPix(const Size, GThick: Integer): IPix;
begin
  Result := WrapPix(Lept.Sel.SelDisplayInPix(FHandle, Size, GThick), True);
end;

function TSelImpl.Save(const Path: string): Boolean;
var
  A: AnsiString;
begin
  A := AnsiString(Path);
  Result := Assigned(FHandle) and (Lept.Sel.SelWrite(PAnsiChar(A), FHandle) = 0);
end;

function NewSel(const H, W: Integer; const AName: string): ISel;
var
  A: AnsiString;
  P: PAnsiChar;
begin
  if AName = '' then
    P := nil
  else begin
    A := AnsiString(AName);
    P := PAnsiChar(A);
  end;
  Result := WrapSel(Lept.Sel.SelCreate(H, W, P), True);
end;

function BrickSel(const H, W, Cy, Cx, AType: Integer): ISel;
begin
  Result := WrapSel(Lept.Sel.SelCreateBrick(H, W, Cy, Cx, AType), True);
end;

function CombSel(const Factor1, Factor2, Direction: Integer): ISel;
begin
  Result := WrapSel(Lept.Sel.SelCreateComb(Factor1, Factor2, Direction), True);
end;

function PlusSel(const Size, LineWidth: Integer): ISel;
begin
  Result := WrapSel(Lept.Sel.SelMakePlusSign(Size, LineWidth), True);
end;

function SelFromString(const Text: string; const H, W: Integer; const AName: string): ISel;
var
  AT, AN: AnsiString;
  PN: PAnsiChar;
begin
  AT := AnsiString(Text);
  if AName = '' then
    PN := nil
  else begin
    AN := AnsiString(AName);
    PN := PAnsiChar(AN);
  end;
  Result := WrapSel(Lept.Sel.SelCreateFromString(PAnsiChar(AT), H, W, PN), True);
end;

function LoadSel(const Path: string): ISel;
var
  A: AnsiString;
begin
  A := AnsiString(Path);
  Result := WrapSel(Lept.Sel.SelRead(PAnsiChar(A)), True);
end;

function WrapSel(const Handle: PSel; const OwnsHandle: Boolean): ISel;
begin
  if not Lept.Module.Loaded then
    raise Exception.Create('Cannot create a Leptonica wrapper: no runtime is loaded. ' +
      'Every wrapper depends on the runtime - its methods go through the ' +
      'function table whether it holds a handle or not - so one made before a ' +
      'runtime is active could never be accounted for correctly.');
  Result := TSelImpl.Create(Handle, OwnsHandle);
end;

end.
