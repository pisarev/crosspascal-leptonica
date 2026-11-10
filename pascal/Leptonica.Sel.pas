{ ************************************************************************** }
{                                                                            }
{ Leptonica.Sel                                                              }
{                                                                            }
{ Copyright © 2026 Yuriy Pisarev (ypisareff@outlook.com)                     }
{                                                                            }
{ ************************************************************************** }

unit Leptonica.Sel;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses
  {$IFDEF FPC}
  DynLibs,
  {$ELSE}
  {$IFDEF MSWINDOWS}
  Winapi.Windows,
  {$ENDIF}
  {$ENDIF}
  SysUtils, LeptonicaTypes;

type
  TLeptSelModule = record
  public
    type
      TSelaMakeThinSets = function(index: Integer; debug: Integer): PSela; cdecl;
      TSelaCreate = function(n: Integer): PSela; cdecl;
      TSelaDestroy = procedure(psela: Pointer); cdecl;
      TSelCreate = function(height: Integer; width: Integer; name: PAnsiChar): PSel; cdecl;
      TSelDestroy = procedure(psel: Pointer); cdecl;
      TSelCopy = function(sel: PSel): PSel; cdecl;
      TSelCreateBrick = function(h: Integer; w: Integer; cy: Integer; cx: Integer;
        &type: Integer): PSel; cdecl;
      TSelCreateComb = function(factor1: Integer; factor2: Integer; direction: Integer): PSel; cdecl;
      TSelaAddSel = function(sela: PSela; sel: PSel; selname: PAnsiChar; copyflag: Integer): Integer; cdecl;
      TSelaGetCount = function(sela: PSela): Integer; cdecl;
      TSelaGetSel = function(sela: PSela; i: Integer): PSel; cdecl;
      TSelGetName = function(sel: PSel): PAnsiChar; cdecl;
      TSelSetName = function(sel: PSel; name: PAnsiChar): Integer; cdecl;
      TSelaFindSelByName = function(sela: PSela; name: PAnsiChar; pindex: PInteger;
        psel: Pointer): Integer; cdecl;
      TSelGetElement = function(sel: PSel; row: Integer; col: Integer; ptype: PInteger): Integer; cdecl;
      TSelSetElement = function(sel: PSel; row: Integer; col: Integer; &type: Integer): Integer; cdecl;
      TSelGetParameters = function(sel: PSel; psy: PInteger; psx: PInteger; pcy: PInteger;
        pcx: PInteger): Integer; cdecl;
      TSelSetOrigin = function(sel: PSel; cy: Integer; cx: Integer): Integer; cdecl;
      TSelGetTypeAtOrigin = function(sel: PSel; ptype: PInteger): Integer; cdecl;
      TSelaGetBrickName = function(sela: PSela; hsize: Integer; vsize: Integer): PAnsiChar; cdecl;
      TSelaGetCombName = function(sela: PSela; size: Integer; direction: Integer): PAnsiChar; cdecl;
      TSelaGetSelnames = function(sela: PSela): PSarray; cdecl;
      TSelFindMaxTranslations = function(sel: PSel; pxp: PInteger; pyp: PInteger; pxn: PInteger;
        pyn: PInteger): Integer; cdecl;
      TSelRotateOrth = function(sel: PSel; quads: Integer): PSel; cdecl;
      TSelaRead = function(fname: PAnsiChar): PSela; cdecl;
      TSelaReadStream = function(fp: Pointer): PSela; cdecl;
      TSelRead = function(fname: PAnsiChar): PSel; cdecl;
      TSelReadStream = function(fp: Pointer): PSel; cdecl;
      TSelaWrite = function(fname: PAnsiChar; sela: PSela): Integer; cdecl;
      TSelaWriteStream = function(fp: Pointer; sela: PSela): Integer; cdecl;
      TSelWrite = function(fname: PAnsiChar; sel: PSel): Integer; cdecl;
      TSelWriteStream = function(fp: Pointer; sel: PSel): Integer; cdecl;
      TSelCreateFromString = function(text: PAnsiChar; h: Integer; w: Integer; name: PAnsiChar): PSel; cdecl;
      TSelPrintToString = function(sel: PSel): PAnsiChar; cdecl;
      TSelaCreateFromFile = function(filename: PAnsiChar): PSela; cdecl;
      TSelCreateFromPta = function(pta: PPta; cy: Integer; cx: Integer; name: PAnsiChar): PSel; cdecl;
      TSelCreateFromPix = function(pix: PPix; cy: Integer; cx: Integer; name: PAnsiChar): PSel; cdecl;
      TSelReadFromColorImage = function(pathname: PAnsiChar): PSel; cdecl;
      TSelCreateFromColorPix = function(pixs: PPix; selname: PAnsiChar): PSel; cdecl;
      TSelaCreateFromColorPixa = function(pixa: PPixa; sa: PSarray): PSela; cdecl;
      TSelDisplayInPix = function(sel: PSel; size: Integer; gthick: Integer): PPix; cdecl;
      TSelaDisplayInPix = function(sela: PSela; size: Integer; gthick: Integer; spacing: Integer;
        ncols: Integer): PPix; cdecl;
      TSelaAddBasic = function(sela: PSela): PSela; cdecl;
      TSelaAddHitMiss = function(sela: PSela): PSela; cdecl;
      TSelaAddDwaLinear = function(sela: PSela): PSela; cdecl;
      TSelaAddDwaCombs = function(sela: PSela): PSela; cdecl;
      TSelaAddCrossJunctions = function(sela: PSela; hlsize: Single; mdist: Single; norient: Integer;
        debugflag: Integer): PSela; cdecl;
      TSelaAddTJunctions = function(sela: PSela; hlsize: Single; mdist: Single; norient: Integer;
        debugflag: Integer): PSela; cdecl;
      TSelMakePlusSign = function(size: Integer; linewidth: Integer): PSel; cdecl;
    var
      SelaMakeThinSets: TSelaMakeThinSets;
      SelaCreate: TSelaCreate;
      SelaDestroy: TSelaDestroy;
      SelCreate: TSelCreate;
      SelDestroy: TSelDestroy;
      SelCopy: TSelCopy;
      SelCreateBrick: TSelCreateBrick;
      SelCreateComb: TSelCreateComb;
      SelaAddSel: TSelaAddSel;
      SelaGetCount: TSelaGetCount;
      SelaGetSel: TSelaGetSel;
      SelGetName: TSelGetName;
      SelSetName: TSelSetName;
      SelaFindSelByName: TSelaFindSelByName;
      SelGetElement: TSelGetElement;
      SelSetElement: TSelSetElement;
      SelGetParameters: TSelGetParameters;
      SelSetOrigin: TSelSetOrigin;
      SelGetTypeAtOrigin: TSelGetTypeAtOrigin;
      SelaGetBrickName: TSelaGetBrickName;
      SelaGetCombName: TSelaGetCombName;
      SelaGetSelnames: TSelaGetSelnames;
      SelFindMaxTranslations: TSelFindMaxTranslations;
      SelRotateOrth: TSelRotateOrth;
      SelaRead: TSelaRead;
      SelaReadStream: TSelaReadStream;
      SelRead: TSelRead;
      SelReadStream: TSelReadStream;
      SelaWrite: TSelaWrite;
      SelaWriteStream: TSelaWriteStream;
      SelWrite: TSelWrite;
      SelWriteStream: TSelWriteStream;
      SelCreateFromString: TSelCreateFromString;
      SelPrintToString: TSelPrintToString;
      SelaCreateFromFile: TSelaCreateFromFile;
      SelCreateFromPta: TSelCreateFromPta;
      SelCreateFromPix: TSelCreateFromPix;
      SelReadFromColorImage: TSelReadFromColorImage;
      SelCreateFromColorPix: TSelCreateFromColorPix;
      SelaCreateFromColorPixa: TSelaCreateFromColorPixa;
      SelDisplayInPix: TSelDisplayInPix;
      SelaDisplayInPix: TSelaDisplayInPix;
      SelaAddBasic: TSelaAddBasic;
      SelaAddHitMiss: TSelaAddHitMiss;
      SelaAddDwaLinear: TSelaAddDwaLinear;
      SelaAddDwaCombs: TSelaAddDwaCombs;
      SelaAddCrossJunctions: TSelaAddCrossJunctions;
      SelaAddTJunctions: TSelaAddTJunctions;
      SelMakePlusSign: TSelMakePlusSign;
    procedure Initialize(const Handle: TLibHandle);
  end;

implementation

procedure TLeptSelModule.Initialize(const Handle: TLibHandle);
begin
  SelaMakeThinSets := LeptBind(Handle, 'selaMakeThinSets');
  SelaCreate := LeptBind(Handle, 'selaCreate');
  SelaDestroy := LeptBind(Handle, 'selaDestroy');
  SelCreate := LeptBind(Handle, 'selCreate');
  SelDestroy := LeptBind(Handle, 'selDestroy');
  SelCopy := LeptBind(Handle, 'selCopy');
  SelCreateBrick := LeptBind(Handle, 'selCreateBrick');
  SelCreateComb := LeptBind(Handle, 'selCreateComb');
  SelaAddSel := LeptBind(Handle, 'selaAddSel');
  SelaGetCount := LeptBind(Handle, 'selaGetCount');
  SelaGetSel := LeptBind(Handle, 'selaGetSel');
  SelGetName := LeptBind(Handle, 'selGetName');
  SelSetName := LeptBind(Handle, 'selSetName');
  SelaFindSelByName := LeptBind(Handle, 'selaFindSelByName');
  SelGetElement := LeptBind(Handle, 'selGetElement');
  SelSetElement := LeptBind(Handle, 'selSetElement');
  SelGetParameters := LeptBind(Handle, 'selGetParameters');
  SelSetOrigin := LeptBind(Handle, 'selSetOrigin');
  SelGetTypeAtOrigin := LeptBind(Handle, 'selGetTypeAtOrigin');
  SelaGetBrickName := LeptBind(Handle, 'selaGetBrickName');
  SelaGetCombName := LeptBind(Handle, 'selaGetCombName');
  SelaGetSelnames := LeptBind(Handle, 'selaGetSelnames');
  SelFindMaxTranslations := LeptBind(Handle, 'selFindMaxTranslations');
  SelRotateOrth := LeptBind(Handle, 'selRotateOrth');
  SelaRead := LeptBind(Handle, 'selaRead');
  SelaReadStream := LeptBind(Handle, 'selaReadStream');
  SelRead := LeptBind(Handle, 'selRead');
  SelReadStream := LeptBind(Handle, 'selReadStream');
  SelaWrite := LeptBind(Handle, 'selaWrite');
  SelaWriteStream := LeptBind(Handle, 'selaWriteStream');
  SelWrite := LeptBind(Handle, 'selWrite');
  SelWriteStream := LeptBind(Handle, 'selWriteStream');
  SelCreateFromString := LeptBind(Handle, 'selCreateFromString');
  SelPrintToString := LeptBind(Handle, 'selPrintToString');
  SelaCreateFromFile := LeptBind(Handle, 'selaCreateFromFile');
  SelCreateFromPta := LeptBind(Handle, 'selCreateFromPta');
  SelCreateFromPix := LeptBind(Handle, 'selCreateFromPix');
  SelReadFromColorImage := LeptBind(Handle, 'selReadFromColorImage');
  SelCreateFromColorPix := LeptBind(Handle, 'selCreateFromColorPix');
  SelaCreateFromColorPixa := LeptBind(Handle, 'selaCreateFromColorPixa');
  SelDisplayInPix := LeptBind(Handle, 'selDisplayInPix');
  SelaDisplayInPix := LeptBind(Handle, 'selaDisplayInPix');
  SelaAddBasic := LeptBind(Handle, 'selaAddBasic');
  SelaAddHitMiss := LeptBind(Handle, 'selaAddHitMiss');
  SelaAddDwaLinear := LeptBind(Handle, 'selaAddDwaLinear');
  SelaAddDwaCombs := LeptBind(Handle, 'selaAddDwaCombs');
  SelaAddCrossJunctions := LeptBind(Handle, 'selaAddCrossJunctions');
  SelaAddTJunctions := LeptBind(Handle, 'selaAddTJunctions');
  SelMakePlusSign := LeptBind(Handle, 'selMakePlusSign');
end;

end.
