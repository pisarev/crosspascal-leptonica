{ ************************************************************************** }
{                                                                            }
{ Leptonica.Dewarp                                                           }
{                                                                            }
{ Copyright © 2026 Yuriy Pisarev                                             }
{                                                                            }
{ ************************************************************************** }

unit Leptonica.Dewarp;

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
  TLeptDewarpModule = record
  public
    type
      TDewarpCreate = function(pixs: PPix; pageno: Integer): PL_Dewarp; cdecl;
      TDewarpCreateRef = function(pageno: Integer; refpage: Integer): PL_Dewarp; cdecl;
      TDewarpDestroy = procedure(pdew: Pointer); cdecl;
      TDewarpaCreate = function(nptrs: Integer; sampling: Integer; redfactor: Integer; minlines: Integer;
        maxdist: Integer): PL_Dewarpa; cdecl;
      TDewarpaCreateFromPixacomp = function(pixac: Pointer; useboth: Integer; sampling: Integer;
        minlines: Integer; maxdist: Integer): PL_Dewarpa; cdecl;
      TDewarpaDestroy = procedure(pdewa: Pointer); cdecl;
      TDewarpaDestroyDewarp = function(dewa: PL_Dewarpa; pageno: Integer): Integer; cdecl;
      TDewarpaInsertDewarp = function(dewa: PL_Dewarpa; dew: PL_Dewarp): Integer; cdecl;
      TDewarpaGetDewarp = function(dewa: PL_Dewarpa; index: Integer): PL_Dewarp; cdecl;
      TDewarpaSetCurvatures = function(dewa: PL_Dewarpa; max_linecurv: Integer; min_diff_linecurv: Integer;
        max_diff_linecurv: Integer; max_edgecurv: Integer; max_diff_edgecurv: Integer;
        max_edgeslope: Integer): Integer; cdecl;
      TDewarpaUseBothArrays = function(dewa: PL_Dewarpa; useboth: Integer): Integer; cdecl;
      TDewarpaSetCheckColumns = function(dewa: PL_Dewarpa; check_columns: Integer): Integer; cdecl;
      TDewarpaSetMaxDistance = function(dewa: PL_Dewarpa; maxdist: Integer): Integer; cdecl;
      TDewarpRead = function(filename: PAnsiChar): PL_Dewarp; cdecl;
      TDewarpReadStream = function(fp: Pointer): PL_Dewarp; cdecl;
      TDewarpReadMem = function(data: PByte; size: NativeUInt): PL_Dewarp; cdecl;
      TDewarpWrite = function(filename: PAnsiChar; dew: PL_Dewarp): Integer; cdecl;
      TDewarpWriteStream = function(fp: Pointer; dew: PL_Dewarp): Integer; cdecl;
      TDewarpWriteMem = function(pdata: PPointer; psize: PNativeUInt; dew: PL_Dewarp): Integer; cdecl;
      TDewarpaRead = function(filename: PAnsiChar): PL_Dewarpa; cdecl;
      TDewarpaReadStream = function(fp: Pointer): PL_Dewarpa; cdecl;
      TDewarpaReadMem = function(data: PByte; size: NativeUInt): PL_Dewarpa; cdecl;
      TDewarpaWrite = function(filename: PAnsiChar; dewa: PL_Dewarpa): Integer; cdecl;
      TDewarpaWriteStream = function(fp: Pointer; dewa: PL_Dewarpa): Integer; cdecl;
      TDewarpaWriteMem = function(pdata: PPointer; psize: PNativeUInt; dewa: PL_Dewarpa): Integer; cdecl;
      TDewarpBuildPageModel = function(dew: PL_Dewarp; debugfile: PAnsiChar): Integer; cdecl;
      TDewarpFindVertDisparity = function(dew: PL_Dewarp; ptaa: Pointer; rotflag: Integer): Integer; cdecl;
      TDewarpFindHorizDisparity = function(dew: PL_Dewarp; ptaa: Pointer): Integer; cdecl;
      TDewarpGetTextlineCenters = function(pixs: PPix; debugflag: Integer): Pointer; cdecl;
      TDewarpRemoveShortLines = function(pixs: PPix; ptaas: Pointer; fract: Single;
        debugflag: Integer): Pointer; cdecl;
      TDewarpFindHorizSlopeDisparity = function(dew: PL_Dewarp; pixb: PPix; fractthresh: Single;
        parity: Integer): Integer; cdecl;
      TDewarpBuildLineModel = function(dew: PL_Dewarp; opensize: Integer;
        debugfile: PAnsiChar): Integer; cdecl;
      TDewarpaModelStatus = function(dewa: PL_Dewarpa; pageno: Integer; pvsuccess: PInteger;
        phsuccess: PInteger): Integer; cdecl;
      TDewarpaApplyDisparity = function(dewa: PL_Dewarpa; pageno: Integer; pixs: PPix; grayin: Integer;
        x: Integer; y: Integer; ppixd: PPPix; debugfile: PAnsiChar): Integer; cdecl;
      TDewarpaApplyDisparityBoxa = function(dewa: PL_Dewarpa; pageno: Integer; pixs: PPix; boxas: PBoxa;
        mapdir: Integer; x: Integer; y: Integer; pboxad: PPBoxa; debugfile: PAnsiChar): Integer; cdecl;
      TDewarpMinimize = function(dew: PL_Dewarp): Integer; cdecl;
      TDewarpPopulateFullRes = function(dew: PL_Dewarp; pix: PPix; x: Integer; y: Integer): Integer; cdecl;
      TDewarpSinglePage = function(pixs: PPix; thresh: Integer; adaptive: Integer; useboth: Integer;
        check_columns: Integer; ppixd: PPPix; pdewa: Pointer; debug: Integer): Integer; cdecl;
      TDewarpSinglePageInit = function(pixs: PPix; thresh: Integer; adaptive: Integer; useboth: Integer;
        check_columns: Integer; ppixb: PPPix; pdewa: Pointer): Integer; cdecl;
      TDewarpSinglePageRun = function(pixs: PPix; pixb: PPix; dewa: PL_Dewarpa; ppixd: PPPix;
        debug: Integer): Integer; cdecl;
      TDewarpaListPages = function(dewa: PL_Dewarpa): Integer; cdecl;
      TDewarpaSetValidModels = function(dewa: PL_Dewarpa; notests: Integer; debug: Integer): Integer; cdecl;
      TDewarpaInsertRefModels = function(dewa: PL_Dewarpa; notests: Integer; debug: Integer): Integer; cdecl;
      TDewarpaStripRefModels = function(dewa: PL_Dewarpa): Integer; cdecl;
      TDewarpaRestoreModels = function(dewa: PL_Dewarpa): Integer; cdecl;
      TDewarpaInfo = function(fp: Pointer; dewa: PL_Dewarpa): Integer; cdecl;
      TDewarpaModelStats = function(dewa: PL_Dewarpa; pnnone: PInteger; pnvsuccess: PInteger;
        pnvvalid: PInteger; pnhsuccess: PInteger; pnhvalid: PInteger; pnref: PInteger): Integer; cdecl;
      TDewarpaShowArrays = function(dewa: PL_Dewarpa; scalefact: Single; first: Integer;
        last: Integer): Integer; cdecl;
      TDewarpDebug = function(dew: PL_Dewarp; subdirs: PAnsiChar; index: Integer): Integer; cdecl;
      TDewarpShowResults = function(dewa: PL_Dewarpa; sa: PSarray; boxa: PBoxa; firstpage: Integer;
        lastpage: Integer; pdfout: PAnsiChar): Integer; cdecl;
    var
      DewarpCreate: TDewarpCreate;
      DewarpCreateRef: TDewarpCreateRef;
      DewarpDestroy: TDewarpDestroy;
      DewarpaCreate: TDewarpaCreate;
      DewarpaCreateFromPixacomp: TDewarpaCreateFromPixacomp;
      DewarpaDestroy: TDewarpaDestroy;
      DewarpaDestroyDewarp: TDewarpaDestroyDewarp;
      DewarpaInsertDewarp: TDewarpaInsertDewarp;
      DewarpaGetDewarp: TDewarpaGetDewarp;
      DewarpaSetCurvatures: TDewarpaSetCurvatures;
      DewarpaUseBothArrays: TDewarpaUseBothArrays;
      DewarpaSetCheckColumns: TDewarpaSetCheckColumns;
      DewarpaSetMaxDistance: TDewarpaSetMaxDistance;
      DewarpRead: TDewarpRead;
      DewarpReadStream: TDewarpReadStream;
      DewarpReadMem: TDewarpReadMem;
      DewarpWrite: TDewarpWrite;
      DewarpWriteStream: TDewarpWriteStream;
      DewarpWriteMem: TDewarpWriteMem;
      DewarpaRead: TDewarpaRead;
      DewarpaReadStream: TDewarpaReadStream;
      DewarpaReadMem: TDewarpaReadMem;
      DewarpaWrite: TDewarpaWrite;
      DewarpaWriteStream: TDewarpaWriteStream;
      DewarpaWriteMem: TDewarpaWriteMem;
      DewarpBuildPageModel: TDewarpBuildPageModel;
      DewarpFindVertDisparity: TDewarpFindVertDisparity;
      DewarpFindHorizDisparity: TDewarpFindHorizDisparity;
      DewarpGetTextlineCenters: TDewarpGetTextlineCenters;
      DewarpRemoveShortLines: TDewarpRemoveShortLines;
      DewarpFindHorizSlopeDisparity: TDewarpFindHorizSlopeDisparity;
      DewarpBuildLineModel: TDewarpBuildLineModel;
      DewarpaModelStatus: TDewarpaModelStatus;
      DewarpaApplyDisparity: TDewarpaApplyDisparity;
      DewarpaApplyDisparityBoxa: TDewarpaApplyDisparityBoxa;
      DewarpMinimize: TDewarpMinimize;
      DewarpPopulateFullRes: TDewarpPopulateFullRes;
      DewarpSinglePage: TDewarpSinglePage;
      DewarpSinglePageInit: TDewarpSinglePageInit;
      DewarpSinglePageRun: TDewarpSinglePageRun;
      DewarpaListPages: TDewarpaListPages;
      DewarpaSetValidModels: TDewarpaSetValidModels;
      DewarpaInsertRefModels: TDewarpaInsertRefModels;
      DewarpaStripRefModels: TDewarpaStripRefModels;
      DewarpaRestoreModels: TDewarpaRestoreModels;
      DewarpaInfo: TDewarpaInfo;
      DewarpaModelStats: TDewarpaModelStats;
      DewarpaShowArrays: TDewarpaShowArrays;
      DewarpDebug: TDewarpDebug;
      DewarpShowResults: TDewarpShowResults;
    procedure Initialize(const Handle: TLibHandle);
  end;

implementation

procedure TLeptDewarpModule.Initialize(const Handle: TLibHandle);
begin
  DewarpCreate := LeptBind(Handle, 'dewarpCreate');
  DewarpCreateRef := LeptBind(Handle, 'dewarpCreateRef');
  DewarpDestroy := LeptBind(Handle, 'dewarpDestroy');
  DewarpaCreate := LeptBind(Handle, 'dewarpaCreate');
  DewarpaCreateFromPixacomp := LeptBind(Handle, 'dewarpaCreateFromPixacomp');
  DewarpaDestroy := LeptBind(Handle, 'dewarpaDestroy');
  DewarpaDestroyDewarp := LeptBind(Handle, 'dewarpaDestroyDewarp');
  DewarpaInsertDewarp := LeptBind(Handle, 'dewarpaInsertDewarp');
  DewarpaGetDewarp := LeptBind(Handle, 'dewarpaGetDewarp');
  DewarpaSetCurvatures := LeptBind(Handle, 'dewarpaSetCurvatures');
  DewarpaUseBothArrays := LeptBind(Handle, 'dewarpaUseBothArrays');
  DewarpaSetCheckColumns := LeptBind(Handle, 'dewarpaSetCheckColumns');
  DewarpaSetMaxDistance := LeptBind(Handle, 'dewarpaSetMaxDistance');
  DewarpRead := LeptBind(Handle, 'dewarpRead');
  DewarpReadStream := LeptBind(Handle, 'dewarpReadStream');
  DewarpReadMem := LeptBind(Handle, 'dewarpReadMem');
  DewarpWrite := LeptBind(Handle, 'dewarpWrite');
  DewarpWriteStream := LeptBind(Handle, 'dewarpWriteStream');
  DewarpWriteMem := LeptBind(Handle, 'dewarpWriteMem');
  DewarpaRead := LeptBind(Handle, 'dewarpaRead');
  DewarpaReadStream := LeptBind(Handle, 'dewarpaReadStream');
  DewarpaReadMem := LeptBind(Handle, 'dewarpaReadMem');
  DewarpaWrite := LeptBind(Handle, 'dewarpaWrite');
  DewarpaWriteStream := LeptBind(Handle, 'dewarpaWriteStream');
  DewarpaWriteMem := LeptBind(Handle, 'dewarpaWriteMem');
  DewarpBuildPageModel := LeptBind(Handle, 'dewarpBuildPageModel');
  DewarpFindVertDisparity := LeptBind(Handle, 'dewarpFindVertDisparity');
  DewarpFindHorizDisparity := LeptBind(Handle, 'dewarpFindHorizDisparity');
  DewarpGetTextlineCenters := LeptBind(Handle, 'dewarpGetTextlineCenters');
  DewarpRemoveShortLines := LeptBind(Handle, 'dewarpRemoveShortLines');
  DewarpFindHorizSlopeDisparity := LeptBind(Handle, 'dewarpFindHorizSlopeDisparity');
  DewarpBuildLineModel := LeptBind(Handle, 'dewarpBuildLineModel');
  DewarpaModelStatus := LeptBind(Handle, 'dewarpaModelStatus');
  DewarpaApplyDisparity := LeptBind(Handle, 'dewarpaApplyDisparity');
  DewarpaApplyDisparityBoxa := LeptBind(Handle, 'dewarpaApplyDisparityBoxa');
  DewarpMinimize := LeptBind(Handle, 'dewarpMinimize');
  DewarpPopulateFullRes := LeptBind(Handle, 'dewarpPopulateFullRes');
  DewarpSinglePage := LeptBind(Handle, 'dewarpSinglePage');
  DewarpSinglePageInit := LeptBind(Handle, 'dewarpSinglePageInit');
  DewarpSinglePageRun := LeptBind(Handle, 'dewarpSinglePageRun');
  DewarpaListPages := LeptBind(Handle, 'dewarpaListPages');
  DewarpaSetValidModels := LeptBind(Handle, 'dewarpaSetValidModels');
  DewarpaInsertRefModels := LeptBind(Handle, 'dewarpaInsertRefModels');
  DewarpaStripRefModels := LeptBind(Handle, 'dewarpaStripRefModels');
  DewarpaRestoreModels := LeptBind(Handle, 'dewarpaRestoreModels');
  DewarpaInfo := LeptBind(Handle, 'dewarpaInfo');
  DewarpaModelStats := LeptBind(Handle, 'dewarpaModelStats');
  DewarpaShowArrays := LeptBind(Handle, 'dewarpaShowArrays');
  DewarpDebug := LeptBind(Handle, 'dewarpDebug');
  DewarpShowResults := LeptBind(Handle, 'dewarpShowResults');
end;

end.
