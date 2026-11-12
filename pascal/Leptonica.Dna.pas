{ ************************************************************************** }
{                                                                            }
{ Leptonica.Dna                                                              }
{                                                                            }
{ Copyright © 2026 Yuriy Pisarev                                             }
{                                                                            }
{ ************************************************************************** }

unit Leptonica.Dna;

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
  TLeptDnaModule = record
  public
    type
      TL_dnaCreate = function(n: Integer): PL_Dna; cdecl;
      TL_dnaCreateFromIArray = function(iarray: PInteger; size: Integer): PL_Dna; cdecl;
      TL_dnaCreateFromDArray = function(darray: PDouble; size: Integer; copyflag: Integer): PL_Dna; cdecl;
      TL_dnaMakeSequence = function(startval: Double; increment: Double; size: Integer): PL_Dna; cdecl;
      TL_dnaDestroy = procedure(pda: PPL_Dna); cdecl;
      TL_dnaCopy = function(da: PL_Dna): PL_Dna; cdecl;
      TL_dnaClone = function(da: PL_Dna): PL_Dna; cdecl;
      TL_dnaEmpty = function(da: PL_Dna): Integer; cdecl;
      TL_dnaAddNumber = function(da: PL_Dna; val: Double): Integer; cdecl;
      TL_dnaInsertNumber = function(da: PL_Dna; index: Integer; val: Double): Integer; cdecl;
      TL_dnaRemoveNumber = function(da: PL_Dna; index: Integer): Integer; cdecl;
      TL_dnaReplaceNumber = function(da: PL_Dna; index: Integer; val: Double): Integer; cdecl;
      TL_dnaGetCount = function(da: PL_Dna): Integer; cdecl;
      TL_dnaSetCount = function(da: PL_Dna; newcount: Integer): Integer; cdecl;
      TL_dnaGetDValue = function(da: PL_Dna; index: Integer; pval: PDouble): Integer; cdecl;
      TL_dnaGetIValue = function(da: PL_Dna; index: Integer; pival: PInteger): Integer; cdecl;
      TL_dnaSetValue = function(da: PL_Dna; index: Integer; val: Double): Integer; cdecl;
      TL_dnaShiftValue = function(da: PL_Dna; index: Integer; diff: Double): Integer; cdecl;
      TL_dnaGetIArray = function(da: PL_Dna): PInteger; cdecl;
      TL_dnaGetDArray = function(da: PL_Dna; copyflag: Integer): PDouble; cdecl;
      TL_dnaGetParameters = function(da: PL_Dna; pstartx: PDouble; pdelx: PDouble): Integer; cdecl;
      TL_dnaSetParameters = function(da: PL_Dna; startx: Double; delx: Double): Integer; cdecl;
      TL_dnaCopyParameters = function(dad: PL_Dna; das: PL_Dna): Integer; cdecl;
      TL_dnaRead = function(filename: PAnsiChar): PL_Dna; cdecl;
      TL_dnaReadStream = function(fp: Pointer): PL_Dna; cdecl;
      TL_dnaReadMem = function(data: PByte; size: NativeUInt): PL_Dna; cdecl;
      TL_dnaWrite = function(filename: PAnsiChar; da: PL_Dna): Integer; cdecl;
      TL_dnaWriteStream = function(fp: Pointer; da: PL_Dna): Integer; cdecl;
      TL_dnaWriteStderr = function(da: PL_Dna): Integer; cdecl;
      TL_dnaWriteMem = function(pdata: PPointer; psize: PNativeUInt; da: PL_Dna): Integer; cdecl;
      TL_dnaaCreate = function(n: Integer): PL_Dnaa; cdecl;
      TL_dnaaCreateFull = function(nptr: Integer; n: Integer): PL_Dnaa; cdecl;
      TL_dnaaTruncate = function(daa: PL_Dnaa): Integer; cdecl;
      TL_dnaaDestroy = procedure(pdaa: PPL_Dnaa); cdecl;
      TL_dnaaAddDna = function(daa: PL_Dnaa; da: PL_Dna; copyflag: Integer): Integer; cdecl;
      TL_dnaaGetCount = function(daa: PL_Dnaa): Integer; cdecl;
      TL_dnaaGetDnaCount = function(daa: PL_Dnaa; index: Integer): Integer; cdecl;
      TL_dnaaGetNumberCount = function(daa: PL_Dnaa): Integer; cdecl;
      TL_dnaaGetDna = function(daa: PL_Dnaa; index: Integer; accessflag: Integer): PL_Dna; cdecl;
      TL_dnaaReplaceDna = function(daa: PL_Dnaa; index: Integer; da: PL_Dna): Integer; cdecl;
      TL_dnaaGetValue = function(daa: PL_Dnaa; i: Integer; j: Integer; pval: PDouble): Integer; cdecl;
      TL_dnaaAddNumber = function(daa: PL_Dnaa; index: Integer; val: Double): Integer; cdecl;
      TL_dnaaRead = function(filename: PAnsiChar): PL_Dnaa; cdecl;
      TL_dnaaReadStream = function(fp: Pointer): PL_Dnaa; cdecl;
      TL_dnaaReadMem = function(data: PByte; size: NativeUInt): PL_Dnaa; cdecl;
      TL_dnaaWrite = function(filename: PAnsiChar; daa: PL_Dnaa): Integer; cdecl;
      TL_dnaaWriteStream = function(fp: Pointer; daa: PL_Dnaa): Integer; cdecl;
      TL_dnaaWriteMem = function(pdata: PPointer; psize: PNativeUInt; daa: PL_Dnaa): Integer; cdecl;
      TL_dnaJoin = function(dad: PL_Dna; das: PL_Dna; istart: Integer; iend: Integer): Integer; cdecl;
      TL_dnaaFlattenToDna = function(daa: Pointer): PL_Dna; cdecl;
      TL_dnaSelectRange = function(das: PL_Dna; first: Integer; last: Integer): PL_Dna; cdecl;
      TL_dnaConvertToNuma = function(da: PL_Dna): PNuma; cdecl;
      TL_dnaRemoveDupsByAset = function(das: PL_Dna; pdad: PPL_Dna): Integer; cdecl;
      TL_dnaUnionByAset = function(da1: PL_Dna; da2: PL_Dna; pdad: PPL_Dna): Integer; cdecl;
      TL_dnaIntersectionByAset = function(da1: PL_Dna; da2: PL_Dna; pdad: PPL_Dna): Integer; cdecl;
      TL_dnaRemoveDupsByHmap = function(das: PL_Dna; pdad: PPL_Dna; phmap: PPointer): Integer; cdecl;
      TL_dnaUnionByHmap = function(da1: PL_Dna; da2: PL_Dna; pdad: PPL_Dna): Integer; cdecl;
      TL_dnaIntersectionByHmap = function(da1: PL_Dna; da2: PL_Dna; pdad: PPL_Dna): Integer; cdecl;
      TL_dnaMakeHistoByHmap = function(das: PL_Dna; pdav: PPL_Dna; pdac: PPL_Dna): Integer; cdecl;
      TL_dnaDiffAdjValues = function(das: PL_Dna): PL_Dna; cdecl;
      TL_dnaHashCreate = function(nbuckets: Integer; initsize: Integer): PL_DnaHash; cdecl;
      TL_dnaHashDestroy = procedure(pdahash: PPL_DnaHash); cdecl;
      TL_dnaHashGetDna = function(dahash: PL_DnaHash; key: UInt64; copyflag: Integer): PL_Dna; cdecl;
      TL_dnaHashAdd = function(dahash: PL_DnaHash; key: UInt64; value: Double): Integer; cdecl;
    var
      L_dnaCreate: TL_dnaCreate;
      L_dnaCreateFromIArray: TL_dnaCreateFromIArray;
      L_dnaCreateFromDArray: TL_dnaCreateFromDArray;
      L_dnaMakeSequence: TL_dnaMakeSequence;
      L_dnaDestroy: TL_dnaDestroy;
      L_dnaCopy: TL_dnaCopy;
      L_dnaClone: TL_dnaClone;
      L_dnaEmpty: TL_dnaEmpty;
      L_dnaAddNumber: TL_dnaAddNumber;
      L_dnaInsertNumber: TL_dnaInsertNumber;
      L_dnaRemoveNumber: TL_dnaRemoveNumber;
      L_dnaReplaceNumber: TL_dnaReplaceNumber;
      L_dnaGetCount: TL_dnaGetCount;
      L_dnaSetCount: TL_dnaSetCount;
      L_dnaGetDValue: TL_dnaGetDValue;
      L_dnaGetIValue: TL_dnaGetIValue;
      L_dnaSetValue: TL_dnaSetValue;
      L_dnaShiftValue: TL_dnaShiftValue;
      L_dnaGetIArray: TL_dnaGetIArray;
      L_dnaGetDArray: TL_dnaGetDArray;
      L_dnaGetParameters: TL_dnaGetParameters;
      L_dnaSetParameters: TL_dnaSetParameters;
      L_dnaCopyParameters: TL_dnaCopyParameters;
      L_dnaRead: TL_dnaRead;
      L_dnaReadStream: TL_dnaReadStream;
      L_dnaReadMem: TL_dnaReadMem;
      L_dnaWrite: TL_dnaWrite;
      L_dnaWriteStream: TL_dnaWriteStream;
      L_dnaWriteStderr: TL_dnaWriteStderr;
      L_dnaWriteMem: TL_dnaWriteMem;
      L_dnaaCreate: TL_dnaaCreate;
      L_dnaaCreateFull: TL_dnaaCreateFull;
      L_dnaaTruncate: TL_dnaaTruncate;
      L_dnaaDestroy: TL_dnaaDestroy;
      L_dnaaAddDna: TL_dnaaAddDna;
      L_dnaaGetCount: TL_dnaaGetCount;
      L_dnaaGetDnaCount: TL_dnaaGetDnaCount;
      L_dnaaGetNumberCount: TL_dnaaGetNumberCount;
      L_dnaaGetDna: TL_dnaaGetDna;
      L_dnaaReplaceDna: TL_dnaaReplaceDna;
      L_dnaaGetValue: TL_dnaaGetValue;
      L_dnaaAddNumber: TL_dnaaAddNumber;
      L_dnaaRead: TL_dnaaRead;
      L_dnaaReadStream: TL_dnaaReadStream;
      L_dnaaReadMem: TL_dnaaReadMem;
      L_dnaaWrite: TL_dnaaWrite;
      L_dnaaWriteStream: TL_dnaaWriteStream;
      L_dnaaWriteMem: TL_dnaaWriteMem;
      L_dnaJoin: TL_dnaJoin;
      L_dnaaFlattenToDna: TL_dnaaFlattenToDna;
      L_dnaSelectRange: TL_dnaSelectRange;
      L_dnaConvertToNuma: TL_dnaConvertToNuma;
      L_dnaRemoveDupsByAset: TL_dnaRemoveDupsByAset;
      L_dnaUnionByAset: TL_dnaUnionByAset;
      L_dnaIntersectionByAset: TL_dnaIntersectionByAset;
      L_dnaRemoveDupsByHmap: TL_dnaRemoveDupsByHmap;
      L_dnaUnionByHmap: TL_dnaUnionByHmap;
      L_dnaIntersectionByHmap: TL_dnaIntersectionByHmap;
      L_dnaMakeHistoByHmap: TL_dnaMakeHistoByHmap;
      L_dnaDiffAdjValues: TL_dnaDiffAdjValues;
      L_dnaHashCreate: TL_dnaHashCreate;
      L_dnaHashDestroy: TL_dnaHashDestroy;
      L_dnaHashGetDna: TL_dnaHashGetDna;
      L_dnaHashAdd: TL_dnaHashAdd;
    procedure Initialize(const Handle: TLibHandle);
  end;

implementation

procedure TLeptDnaModule.Initialize(const Handle: TLibHandle);
begin
  L_dnaCreate := LeptBind(Handle, 'l_dnaCreate');
  L_dnaCreateFromIArray := LeptBind(Handle, 'l_dnaCreateFromIArray');
  L_dnaCreateFromDArray := LeptBind(Handle, 'l_dnaCreateFromDArray');
  L_dnaMakeSequence := LeptBind(Handle, 'l_dnaMakeSequence');
  L_dnaDestroy := LeptBind(Handle, 'l_dnaDestroy');
  L_dnaCopy := LeptBind(Handle, 'l_dnaCopy');
  L_dnaClone := LeptBind(Handle, 'l_dnaClone');
  L_dnaEmpty := LeptBind(Handle, 'l_dnaEmpty');
  L_dnaAddNumber := LeptBind(Handle, 'l_dnaAddNumber');
  L_dnaInsertNumber := LeptBind(Handle, 'l_dnaInsertNumber');
  L_dnaRemoveNumber := LeptBind(Handle, 'l_dnaRemoveNumber');
  L_dnaReplaceNumber := LeptBind(Handle, 'l_dnaReplaceNumber');
  L_dnaGetCount := LeptBind(Handle, 'l_dnaGetCount');
  L_dnaSetCount := LeptBind(Handle, 'l_dnaSetCount');
  L_dnaGetDValue := LeptBind(Handle, 'l_dnaGetDValue');
  L_dnaGetIValue := LeptBind(Handle, 'l_dnaGetIValue');
  L_dnaSetValue := LeptBind(Handle, 'l_dnaSetValue');
  L_dnaShiftValue := LeptBind(Handle, 'l_dnaShiftValue');
  L_dnaGetIArray := LeptBind(Handle, 'l_dnaGetIArray');
  L_dnaGetDArray := LeptBind(Handle, 'l_dnaGetDArray');
  L_dnaGetParameters := LeptBind(Handle, 'l_dnaGetParameters');
  L_dnaSetParameters := LeptBind(Handle, 'l_dnaSetParameters');
  L_dnaCopyParameters := LeptBind(Handle, 'l_dnaCopyParameters');
  L_dnaRead := LeptBind(Handle, 'l_dnaRead');
  L_dnaReadStream := LeptBind(Handle, 'l_dnaReadStream');
  L_dnaReadMem := LeptBind(Handle, 'l_dnaReadMem');
  L_dnaWrite := LeptBind(Handle, 'l_dnaWrite');
  L_dnaWriteStream := LeptBind(Handle, 'l_dnaWriteStream');
  L_dnaWriteStderr := LeptBind(Handle, 'l_dnaWriteStderr');
  L_dnaWriteMem := LeptBind(Handle, 'l_dnaWriteMem');
  L_dnaaCreate := LeptBind(Handle, 'l_dnaaCreate');
  L_dnaaCreateFull := LeptBind(Handle, 'l_dnaaCreateFull');
  L_dnaaTruncate := LeptBind(Handle, 'l_dnaaTruncate');
  L_dnaaDestroy := LeptBind(Handle, 'l_dnaaDestroy');
  L_dnaaAddDna := LeptBind(Handle, 'l_dnaaAddDna');
  L_dnaaGetCount := LeptBind(Handle, 'l_dnaaGetCount');
  L_dnaaGetDnaCount := LeptBind(Handle, 'l_dnaaGetDnaCount');
  L_dnaaGetNumberCount := LeptBind(Handle, 'l_dnaaGetNumberCount');
  L_dnaaGetDna := LeptBind(Handle, 'l_dnaaGetDna');
  L_dnaaReplaceDna := LeptBind(Handle, 'l_dnaaReplaceDna');
  L_dnaaGetValue := LeptBind(Handle, 'l_dnaaGetValue');
  L_dnaaAddNumber := LeptBind(Handle, 'l_dnaaAddNumber');
  L_dnaaRead := LeptBind(Handle, 'l_dnaaRead');
  L_dnaaReadStream := LeptBind(Handle, 'l_dnaaReadStream');
  L_dnaaReadMem := LeptBind(Handle, 'l_dnaaReadMem');
  L_dnaaWrite := LeptBind(Handle, 'l_dnaaWrite');
  L_dnaaWriteStream := LeptBind(Handle, 'l_dnaaWriteStream');
  L_dnaaWriteMem := LeptBind(Handle, 'l_dnaaWriteMem');
  L_dnaJoin := LeptBind(Handle, 'l_dnaJoin');
  L_dnaaFlattenToDna := LeptBind(Handle, 'l_dnaaFlattenToDna');
  L_dnaSelectRange := LeptBind(Handle, 'l_dnaSelectRange');
  L_dnaConvertToNuma := LeptBind(Handle, 'l_dnaConvertToNuma');
  L_dnaRemoveDupsByAset := LeptBind(Handle, 'l_dnaRemoveDupsByAset');
  L_dnaUnionByAset := LeptBind(Handle, 'l_dnaUnionByAset');
  L_dnaIntersectionByAset := LeptBind(Handle, 'l_dnaIntersectionByAset');
  L_dnaRemoveDupsByHmap := LeptBind(Handle, 'l_dnaRemoveDupsByHmap');
  L_dnaUnionByHmap := LeptBind(Handle, 'l_dnaUnionByHmap');
  L_dnaIntersectionByHmap := LeptBind(Handle, 'l_dnaIntersectionByHmap');
  L_dnaMakeHistoByHmap := LeptBind(Handle, 'l_dnaMakeHistoByHmap');
  L_dnaDiffAdjValues := LeptBind(Handle, 'l_dnaDiffAdjValues');
  L_dnaHashCreate := LeptBind(Handle, 'l_dnaHashCreate');
  L_dnaHashDestroy := LeptBind(Handle, 'l_dnaHashDestroy');
  L_dnaHashGetDna := LeptBind(Handle, 'l_dnaHashGetDna');
  L_dnaHashAdd := LeptBind(Handle, 'l_dnaHashAdd');
end;

end.
