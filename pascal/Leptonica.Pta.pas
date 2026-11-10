{ ************************************************************************** }
{                                                                            }
{ Leptonica.Pta                                                              }
{                                                                            }
{ Copyright © 2026 Yuriy Pisarev (ypisareff@outlook.com)                     }
{                                                                            }
{ ************************************************************************** }

unit Leptonica.Pta;

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
  TLeptPtaModule = record
  public
    type
      TPtaTranslate = function(ptas: PPta; transx: Single; transy: Single): PPta; cdecl;
      TPtaScale = function(ptas: PPta; scalex: Single; scaley: Single): PPta; cdecl;
      TPtaRotate = function(ptas: PPta; xc: Single; yc: Single; angle: Single): PPta; cdecl;
      TPtaAffineTransform = function(ptas: PPta; mat: PSingle): PPta; cdecl;
      TPtaConvertToBoxa = function(pta: PPta; ncorners: Integer): PBoxa; cdecl;
      TPtaConvertToBox = function(pta: PPta): PBox; cdecl;
      TPtaCreate = function(n: Integer): PPta; cdecl;
      TPtaCreateFromNuma = function(nax: PNuma; nay: PNuma): PPta; cdecl;
      TPtaDestroy = procedure(ppta: PPPta); cdecl;
      TPtaCopy = function(pta: PPta): PPta; cdecl;
      TPtaCopyRange = function(ptas: PPta; istart: Integer; iend: Integer): PPta; cdecl;
      TPtaClone = function(pta: PPta): PPta; cdecl;
      TPtaEmpty = function(pta: PPta): Integer; cdecl;
      TPtaAddPt = function(pta: PPta; x: Single; y: Single): Integer; cdecl;
      TPtaInsertPt = function(pta: PPta; index: Integer; x: Integer; y: Integer): Integer; cdecl;
      TPtaRemovePt = function(pta: PPta; index: Integer): Integer; cdecl;
      TPtaGetCount = function(pta: PPta): Integer; cdecl;
      TPtaGetPt = function(pta: PPta; index: Integer; px: PSingle; py: PSingle): Integer; cdecl;
      TPtaGetIPt = function(pta: PPta; index: Integer; px: PInteger; py: PInteger): Integer; cdecl;
      TPtaSetPt = function(pta: PPta; index: Integer; x: Single; y: Single): Integer; cdecl;
      TPtaGetArrays = function(pta: PPta; pnax: PPNuma; pnay: PPNuma): Integer; cdecl;
      TPtaRead = function(filename: PAnsiChar): PPta; cdecl;
      TPtaReadStream = function(fp: Pointer): PPta; cdecl;
      TPtaReadMem = function(data: PByte; size: NativeUInt): PPta; cdecl;
      TPtaWriteDebug = function(filename: PAnsiChar; pta: PPta; &type: Integer): Integer; cdecl;
      TPtaWrite = function(filename: PAnsiChar; pta: PPta; &type: Integer): Integer; cdecl;
      TPtaWriteStream = function(fp: Pointer; pta: PPta; &type: Integer): Integer; cdecl;
      TPtaWriteMem = function(pdata: PPointer; psize: PNativeUInt; pta: PPta; &type: Integer): Integer; cdecl;
      TPtaaCreate = function(n: Integer): PPtaa; cdecl;
      TPtaaDestroy = procedure(pptaa: PPPtaa); cdecl;
      TPtaaAddPta = function(ptaa: PPtaa; pta: PPta; copyflag: Integer): Integer; cdecl;
      TPtaaGetCount = function(ptaa: PPtaa): Integer; cdecl;
      TPtaaGetPta = function(ptaa: PPtaa; index: Integer; accessflag: Integer): PPta; cdecl;
      TPtaaGetPt = function(ptaa: PPtaa; ipta: Integer; jpt: Integer; px: PSingle;
        py: PSingle): Integer; cdecl;
      TPtaaInitFull = function(ptaa: PPtaa; pta: PPta): Integer; cdecl;
      TPtaaReplacePta = function(ptaa: PPtaa; index: Integer; pta: PPta): Integer; cdecl;
      TPtaaAddPt = function(ptaa: PPtaa; ipta: Integer; x: Single; y: Single): Integer; cdecl;
      TPtaaTruncate = function(ptaa: PPtaa): Integer; cdecl;
      TPtaaRead = function(filename: PAnsiChar): PPtaa; cdecl;
      TPtaaReadStream = function(fp: Pointer): PPtaa; cdecl;
      TPtaaReadMem = function(data: PByte; size: NativeUInt): PPtaa; cdecl;
      TPtaaWriteDebug = function(filename: PAnsiChar; ptaa: PPtaa; &type: Integer): Integer; cdecl;
      TPtaaWrite = function(filename: PAnsiChar; ptaa: PPtaa; &type: Integer): Integer; cdecl;
      TPtaaWriteStream = function(fp: Pointer; ptaa: PPtaa; &type: Integer): Integer; cdecl;
      TPtaaWriteMem = function(pdata: PPointer; psize: PNativeUInt; ptaa: PPtaa;
        &type: Integer): Integer; cdecl;
      TPtaSubsample = function(ptas: PPta; subfactor: Integer): PPta; cdecl;
      TPtaJoin = function(ptad: PPta; ptas: PPta; istart: Integer; iend: Integer): Integer; cdecl;
      TPtaaJoin = function(ptaad: PPtaa; ptaas: PPtaa; istart: Integer; iend: Integer): Integer; cdecl;
      TPtaReverse = function(ptas: PPta; &type: Integer): PPta; cdecl;
      TPtaTranspose = function(ptas: PPta): PPta; cdecl;
      TPtaCyclicPerm = function(ptas: PPta; xs: Integer; ys: Integer): PPta; cdecl;
      TPtaSelectRange = function(ptas: PPta; first: Integer; last: Integer): PPta; cdecl;
      TPtaGetBoundingRegion = function(pta: PPta): PBox; cdecl;
      TPtaGetRange = function(pta: PPta; pminx: PSingle; pmaxx: PSingle; pminy: PSingle;
        pmaxy: PSingle): Integer; cdecl;
      TPtaGetInsideBox = function(ptas: PPta; box: PBox): PPta; cdecl;
      TPtaContainsPt = function(pta: PPta; x: Integer; y: Integer): Integer; cdecl;
      TPtaTestIntersection = function(pta1: PPta; pta2: PPta): Integer; cdecl;
      TPtaTransform = function(ptas: PPta; shiftx: Integer; shifty: Integer; scalex: Single;
        scaley: Single): PPta; cdecl;
      TPtaPtInsidePolygon = function(pta: PPta; x: Single; y: Single; pinside: PInteger): Integer; cdecl;
      TPtaPolygonIsConvex = function(pta: PPta; pisconvex: PInteger): Integer; cdecl;
      TPtaGetMinMax = function(pta: PPta; pxmin: PSingle; pymin: PSingle; pxmax: PSingle;
        pymax: PSingle): Integer; cdecl;
      TPtaSelectByValue = function(ptas: PPta; xth: Single; yth: Single; &type: Integer;
        relation: Integer): PPta; cdecl;
      TPtaCropToMask = function(ptas: PPta; pixm: PPix): PPta; cdecl;
      TPtaGetLinearLSF = function(pta: PPta; pa: PSingle; pb: PSingle; pnafit: PPNuma): Integer; cdecl;
      TPtaGetQuadraticLSF = function(pta: PPta; pa: PSingle; pb: PSingle; pc: PSingle;
        pnafit: PPNuma): Integer; cdecl;
      TPtaGetCubicLSF = function(pta: PPta; pa: PSingle; pb: PSingle; pc: PSingle; pd: PSingle;
        pnafit: PPNuma): Integer; cdecl;
      TPtaGetQuarticLSF = function(pta: PPta; pa: PSingle; pb: PSingle; pc: PSingle; pd: PSingle; pe: PSingle;
        pnafit: PPNuma): Integer; cdecl;
      TPtaNoisyLinearLSF = function(pta: PPta; factor: Single; pptad: PPPta; pa: PSingle; pb: PSingle;
        pmederr: PSingle; pnafit: PPNuma): Integer; cdecl;
      TPtaNoisyQuadraticLSF = function(pta: PPta; factor: Single; pptad: PPPta; pa: PSingle; pb: PSingle;
        pc: PSingle; pmederr: PSingle; pnafit: PPNuma): Integer; cdecl;
      TPtaGetPixelsFromPix = function(pixs: PPix; box: PBox): PPta; cdecl;
      TPtaGetBoundaryPixels = function(pixs: PPix; &type: Integer): PPta; cdecl;
      TPtaaGetBoundaryPixels = function(pixs: PPix; &type: Integer; connectivity: Integer; pboxa: PPBoxa;
        ppixa: PPPixa): PPtaa; cdecl;
      TPtaaIndexLabeledPixels = function(pixs: PPix; pncc: PInteger): PPtaa; cdecl;
      TPtaGetNeighborPixLocs = function(pixs: PPix; x: Integer; y: Integer; conn: Integer): PPta; cdecl;
      TPtaConvertToNuma = function(pta: PPta; pnax: PPNuma; pnay: PPNuma): Integer; cdecl;
      TPtaReplicatePattern = function(ptas: PPta; pixp: PPix; ptap: PPta; cx: Integer; cy: Integer;
        w: Integer; h: Integer): PPta; cdecl;
      TPtaSort = function(ptas: PPta; sorttype: Integer; sortorder: Integer; pnaindex: PPNuma): PPta; cdecl;
      TPtaGetSortIndex = function(ptas: PPta; sorttype: Integer; sortorder: Integer;
        pnaindex: PPNuma): Integer; cdecl;
      TPtaSortByIndex = function(ptas: PPta; naindex: PNuma): PPta; cdecl;
      TPtaaSortByIndex = function(ptaas: PPtaa; naindex: PNuma): PPtaa; cdecl;
      TPtaGetRankValue = function(pta: PPta; fract: Single; ptasort: PPta; sorttype: Integer;
        pval: PSingle): Integer; cdecl;
      TPtaSort2d = function(pta: PPta): PPtaa; cdecl;
      TPtaEqual = function(pta1: PPta; pta2: PPta; psame: PInteger): Integer; cdecl;
      TPtaRemoveDupsByAset = function(ptas: PPta; pptad: PPPta): Integer; cdecl;
      TPtaUnionByAset = function(pta1: PPta; pta2: PPta; pptad: PPPta): Integer; cdecl;
      TPtaIntersectionByAset = function(pta1: PPta; pta2: PPta; pptad: PPPta): Integer; cdecl;
      TPtaRemoveDupsByHmap = function(ptas: PPta; pptad: PPPta; phmap: PPointer): Integer; cdecl;
      TPtaUnionByHmap = function(pta1: PPta; pta2: PPta; pptad: PPPta): Integer; cdecl;
      TPtaIntersectionByHmap = function(pta1: PPta; pta2: PPta; pptad: PPPta): Integer; cdecl;
    var
      PtaTranslate: TPtaTranslate;
      PtaScale: TPtaScale;
      PtaRotate: TPtaRotate;
      PtaAffineTransform: TPtaAffineTransform;
      PtaConvertToBoxa: TPtaConvertToBoxa;
      PtaConvertToBox: TPtaConvertToBox;
      PtaCreate: TPtaCreate;
      PtaCreateFromNuma: TPtaCreateFromNuma;
      PtaDestroy: TPtaDestroy;
      PtaCopy: TPtaCopy;
      PtaCopyRange: TPtaCopyRange;
      PtaClone: TPtaClone;
      PtaEmpty: TPtaEmpty;
      PtaAddPt: TPtaAddPt;
      PtaInsertPt: TPtaInsertPt;
      PtaRemovePt: TPtaRemovePt;
      PtaGetCount: TPtaGetCount;
      PtaGetPt: TPtaGetPt;
      PtaGetIPt: TPtaGetIPt;
      PtaSetPt: TPtaSetPt;
      PtaGetArrays: TPtaGetArrays;
      PtaRead: TPtaRead;
      PtaReadStream: TPtaReadStream;
      PtaReadMem: TPtaReadMem;
      PtaWriteDebug: TPtaWriteDebug;
      PtaWrite: TPtaWrite;
      PtaWriteStream: TPtaWriteStream;
      PtaWriteMem: TPtaWriteMem;
      PtaaCreate: TPtaaCreate;
      PtaaDestroy: TPtaaDestroy;
      PtaaAddPta: TPtaaAddPta;
      PtaaGetCount: TPtaaGetCount;
      PtaaGetPta: TPtaaGetPta;
      PtaaGetPt: TPtaaGetPt;
      PtaaInitFull: TPtaaInitFull;
      PtaaReplacePta: TPtaaReplacePta;
      PtaaAddPt: TPtaaAddPt;
      PtaaTruncate: TPtaaTruncate;
      PtaaRead: TPtaaRead;
      PtaaReadStream: TPtaaReadStream;
      PtaaReadMem: TPtaaReadMem;
      PtaaWriteDebug: TPtaaWriteDebug;
      PtaaWrite: TPtaaWrite;
      PtaaWriteStream: TPtaaWriteStream;
      PtaaWriteMem: TPtaaWriteMem;
      PtaSubsample: TPtaSubsample;
      PtaJoin: TPtaJoin;
      PtaaJoin: TPtaaJoin;
      PtaReverse: TPtaReverse;
      PtaTranspose: TPtaTranspose;
      PtaCyclicPerm: TPtaCyclicPerm;
      PtaSelectRange: TPtaSelectRange;
      PtaGetBoundingRegion: TPtaGetBoundingRegion;
      PtaGetRange: TPtaGetRange;
      PtaGetInsideBox: TPtaGetInsideBox;
      PtaContainsPt: TPtaContainsPt;
      PtaTestIntersection: TPtaTestIntersection;
      PtaTransform: TPtaTransform;
      PtaPtInsidePolygon: TPtaPtInsidePolygon;
      PtaPolygonIsConvex: TPtaPolygonIsConvex;
      PtaGetMinMax: TPtaGetMinMax;
      PtaSelectByValue: TPtaSelectByValue;
      PtaCropToMask: TPtaCropToMask;
      PtaGetLinearLSF: TPtaGetLinearLSF;
      PtaGetQuadraticLSF: TPtaGetQuadraticLSF;
      PtaGetCubicLSF: TPtaGetCubicLSF;
      PtaGetQuarticLSF: TPtaGetQuarticLSF;
      PtaNoisyLinearLSF: TPtaNoisyLinearLSF;
      PtaNoisyQuadraticLSF: TPtaNoisyQuadraticLSF;
      PtaGetPixelsFromPix: TPtaGetPixelsFromPix;
      PtaGetBoundaryPixels: TPtaGetBoundaryPixels;
      PtaaGetBoundaryPixels: TPtaaGetBoundaryPixels;
      PtaaIndexLabeledPixels: TPtaaIndexLabeledPixels;
      PtaGetNeighborPixLocs: TPtaGetNeighborPixLocs;
      PtaConvertToNuma: TPtaConvertToNuma;
      PtaReplicatePattern: TPtaReplicatePattern;
      PtaSort: TPtaSort;
      PtaGetSortIndex: TPtaGetSortIndex;
      PtaSortByIndex: TPtaSortByIndex;
      PtaaSortByIndex: TPtaaSortByIndex;
      PtaGetRankValue: TPtaGetRankValue;
      PtaSort2d: TPtaSort2d;
      PtaEqual: TPtaEqual;
      PtaRemoveDupsByAset: TPtaRemoveDupsByAset;
      PtaUnionByAset: TPtaUnionByAset;
      PtaIntersectionByAset: TPtaIntersectionByAset;
      PtaRemoveDupsByHmap: TPtaRemoveDupsByHmap;
      PtaUnionByHmap: TPtaUnionByHmap;
      PtaIntersectionByHmap: TPtaIntersectionByHmap;
    procedure Initialize(const Handle: TLibHandle);
  end;

implementation

procedure TLeptPtaModule.Initialize(const Handle: TLibHandle);
begin
  PtaTranslate := LeptBind(Handle, 'ptaTranslate');
  PtaScale := LeptBind(Handle, 'ptaScale');
  PtaRotate := LeptBind(Handle, 'ptaRotate');
  PtaAffineTransform := LeptBind(Handle, 'ptaAffineTransform');
  PtaConvertToBoxa := LeptBind(Handle, 'ptaConvertToBoxa');
  PtaConvertToBox := LeptBind(Handle, 'ptaConvertToBox');
  PtaCreate := LeptBind(Handle, 'ptaCreate');
  PtaCreateFromNuma := LeptBind(Handle, 'ptaCreateFromNuma');
  PtaDestroy := LeptBind(Handle, 'ptaDestroy');
  PtaCopy := LeptBind(Handle, 'ptaCopy');
  PtaCopyRange := LeptBind(Handle, 'ptaCopyRange');
  PtaClone := LeptBind(Handle, 'ptaClone');
  PtaEmpty := LeptBind(Handle, 'ptaEmpty');
  PtaAddPt := LeptBind(Handle, 'ptaAddPt');
  PtaInsertPt := LeptBind(Handle, 'ptaInsertPt');
  PtaRemovePt := LeptBind(Handle, 'ptaRemovePt');
  PtaGetCount := LeptBind(Handle, 'ptaGetCount');
  PtaGetPt := LeptBind(Handle, 'ptaGetPt');
  PtaGetIPt := LeptBind(Handle, 'ptaGetIPt');
  PtaSetPt := LeptBind(Handle, 'ptaSetPt');
  PtaGetArrays := LeptBind(Handle, 'ptaGetArrays');
  PtaRead := LeptBind(Handle, 'ptaRead');
  PtaReadStream := LeptBind(Handle, 'ptaReadStream');
  PtaReadMem := LeptBind(Handle, 'ptaReadMem');
  PtaWriteDebug := LeptBind(Handle, 'ptaWriteDebug');
  PtaWrite := LeptBind(Handle, 'ptaWrite');
  PtaWriteStream := LeptBind(Handle, 'ptaWriteStream');
  PtaWriteMem := LeptBind(Handle, 'ptaWriteMem');
  PtaaCreate := LeptBind(Handle, 'ptaaCreate');
  PtaaDestroy := LeptBind(Handle, 'ptaaDestroy');
  PtaaAddPta := LeptBind(Handle, 'ptaaAddPta');
  PtaaGetCount := LeptBind(Handle, 'ptaaGetCount');
  PtaaGetPta := LeptBind(Handle, 'ptaaGetPta');
  PtaaGetPt := LeptBind(Handle, 'ptaaGetPt');
  PtaaInitFull := LeptBind(Handle, 'ptaaInitFull');
  PtaaReplacePta := LeptBind(Handle, 'ptaaReplacePta');
  PtaaAddPt := LeptBind(Handle, 'ptaaAddPt');
  PtaaTruncate := LeptBind(Handle, 'ptaaTruncate');
  PtaaRead := LeptBind(Handle, 'ptaaRead');
  PtaaReadStream := LeptBind(Handle, 'ptaaReadStream');
  PtaaReadMem := LeptBind(Handle, 'ptaaReadMem');
  PtaaWriteDebug := LeptBind(Handle, 'ptaaWriteDebug');
  PtaaWrite := LeptBind(Handle, 'ptaaWrite');
  PtaaWriteStream := LeptBind(Handle, 'ptaaWriteStream');
  PtaaWriteMem := LeptBind(Handle, 'ptaaWriteMem');
  PtaSubsample := LeptBind(Handle, 'ptaSubsample');
  PtaJoin := LeptBind(Handle, 'ptaJoin');
  PtaaJoin := LeptBind(Handle, 'ptaaJoin');
  PtaReverse := LeptBind(Handle, 'ptaReverse');
  PtaTranspose := LeptBind(Handle, 'ptaTranspose');
  PtaCyclicPerm := LeptBind(Handle, 'ptaCyclicPerm');
  PtaSelectRange := LeptBind(Handle, 'ptaSelectRange');
  PtaGetBoundingRegion := LeptBind(Handle, 'ptaGetBoundingRegion');
  PtaGetRange := LeptBind(Handle, 'ptaGetRange');
  PtaGetInsideBox := LeptBind(Handle, 'ptaGetInsideBox');
  PtaContainsPt := LeptBind(Handle, 'ptaContainsPt');
  PtaTestIntersection := LeptBind(Handle, 'ptaTestIntersection');
  PtaTransform := LeptBind(Handle, 'ptaTransform');
  PtaPtInsidePolygon := LeptBind(Handle, 'ptaPtInsidePolygon');
  PtaPolygonIsConvex := LeptBind(Handle, 'ptaPolygonIsConvex');
  PtaGetMinMax := LeptBind(Handle, 'ptaGetMinMax');
  PtaSelectByValue := LeptBind(Handle, 'ptaSelectByValue');
  PtaCropToMask := LeptBind(Handle, 'ptaCropToMask');
  PtaGetLinearLSF := LeptBind(Handle, 'ptaGetLinearLSF');
  PtaGetQuadraticLSF := LeptBind(Handle, 'ptaGetQuadraticLSF');
  PtaGetCubicLSF := LeptBind(Handle, 'ptaGetCubicLSF');
  PtaGetQuarticLSF := LeptBind(Handle, 'ptaGetQuarticLSF');
  PtaNoisyLinearLSF := LeptBind(Handle, 'ptaNoisyLinearLSF');
  PtaNoisyQuadraticLSF := LeptBind(Handle, 'ptaNoisyQuadraticLSF');
  PtaGetPixelsFromPix := LeptBind(Handle, 'ptaGetPixelsFromPix');
  PtaGetBoundaryPixels := LeptBind(Handle, 'ptaGetBoundaryPixels');
  PtaaGetBoundaryPixels := LeptBind(Handle, 'ptaaGetBoundaryPixels');
  PtaaIndexLabeledPixels := LeptBind(Handle, 'ptaaIndexLabeledPixels');
  PtaGetNeighborPixLocs := LeptBind(Handle, 'ptaGetNeighborPixLocs');
  PtaConvertToNuma := LeptBind(Handle, 'ptaConvertToNuma');
  PtaReplicatePattern := LeptBind(Handle, 'ptaReplicatePattern');
  PtaSort := LeptBind(Handle, 'ptaSort');
  PtaGetSortIndex := LeptBind(Handle, 'ptaGetSortIndex');
  PtaSortByIndex := LeptBind(Handle, 'ptaSortByIndex');
  PtaaSortByIndex := LeptBind(Handle, 'ptaaSortByIndex');
  PtaGetRankValue := LeptBind(Handle, 'ptaGetRankValue');
  PtaSort2d := LeptBind(Handle, 'ptaSort2d');
  PtaEqual := LeptBind(Handle, 'ptaEqual');
  PtaRemoveDupsByAset := LeptBind(Handle, 'ptaRemoveDupsByAset');
  PtaUnionByAset := LeptBind(Handle, 'ptaUnionByAset');
  PtaIntersectionByAset := LeptBind(Handle, 'ptaIntersectionByAset');
  PtaRemoveDupsByHmap := LeptBind(Handle, 'ptaRemoveDupsByHmap');
  PtaUnionByHmap := LeptBind(Handle, 'ptaUnionByHmap');
  PtaIntersectionByHmap := LeptBind(Handle, 'ptaIntersectionByHmap');
end;

end.
