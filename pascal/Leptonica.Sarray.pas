{ ************************************************************************** }
{                                                                            }
{ Leptonica.Sarray                                                           }
{                                                                            }
{ Copyright © 2026 Yuriy Pisarev (ypisareff@outlook.com)                     }
{                                                                            }
{ ************************************************************************** }

unit Leptonica.Sarray;

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
  TLeptSarrayModule = record
  public
    type
      TSarrayConvertFilesToPS = function(sa: PSarray; res: Integer; fileout: PAnsiChar): Integer; cdecl;
      TSarrayConvertFilesFittedToPS = function(sa: PSarray; xpts: Single; ypts: Single;
        fileout: PAnsiChar): Integer; cdecl;
      TSarrayCreate = function(n: Integer): PSarray; cdecl;
      TSarrayCreateInitialized = function(n: Integer; initstr: PAnsiChar): PSarray; cdecl;
      TSarrayCreateWordsFromString = function(&string: PAnsiChar): PSarray; cdecl;
      TSarrayCreateLinesFromString = function(&string: PAnsiChar; blankflag: Integer): PSarray; cdecl;
      TSarrayDestroy = procedure(psa: PPSarray); cdecl;
      TSarrayCopy = function(sa: PSarray): PSarray; cdecl;
      TSarrayClone = function(sa: PSarray): PSarray; cdecl;
      TSarrayAddString = function(sa: PSarray; &string: PAnsiChar; copyflag: Integer): Integer; cdecl;
      TSarrayRemoveString = function(sa: PSarray; index: Integer): PAnsiChar; cdecl;
      TSarrayReplaceString = function(sa: PSarray; index: Integer; newstr: PAnsiChar;
        copyflag: Integer): Integer; cdecl;
      TSarrayClear = function(sa: PSarray): Integer; cdecl;
      TSarrayGetCount = function(sa: PSarray): Integer; cdecl;
      TSarrayGetArray = function(sa: PSarray; pnalloc: PInteger; pn: PInteger): PPointer; cdecl;
      TSarrayGetString = function(sa: PSarray; index: Integer; copyflag: Integer): PAnsiChar; cdecl;
      TSarrayToString = function(sa: PSarray; addnlflag: Integer): PAnsiChar; cdecl;
      TSarrayToStringRange = function(sa: PSarray; first: Integer; nstrings: Integer;
        addnlflag: Integer): PAnsiChar; cdecl;
      TSarrayConcatUniformly = function(sa: PSarray; n: Integer; addnlflag: Integer): PSarray; cdecl;
      TSarrayJoin = function(sa1: PSarray; sa2: PSarray): Integer; cdecl;
      TSarrayAppendRange = function(sa1: PSarray; sa2: PSarray; start: Integer;
        &end: Integer): Integer; cdecl;
      TSarrayPadToSameSize = function(sa1: PSarray; sa2: PSarray; padstring: PAnsiChar): Integer; cdecl;
      TSarrayConvertWordsToLines = function(sa: PSarray; linesize: Integer): PSarray; cdecl;
      TSarraySplitString = function(sa: PSarray; str: PAnsiChar; separators: PAnsiChar): Integer; cdecl;
      TSarraySelectBySubstring = function(sain: PSarray; substr: PAnsiChar): PSarray; cdecl;
      TSarraySelectRange = function(sain: PSarray; first: Integer; last: Integer): PSarray; cdecl;
      TSarrayParseRange = function(sa: PSarray; start: Integer; pactualstart: PInteger; pend: PInteger;
        pnewstart: PInteger; substr: PAnsiChar; loc: Integer): Integer; cdecl;
      TSarrayRead = function(filename: PAnsiChar): PSarray; cdecl;
      TSarrayReadStream = function(fp: Pointer): PSarray; cdecl;
      TSarrayReadMem = function(data: PByte; size: NativeUInt): PSarray; cdecl;
      TSarrayWrite = function(filename: PAnsiChar; sa: PSarray): Integer; cdecl;
      TSarrayWriteStream = function(fp: Pointer; sa: PSarray): Integer; cdecl;
      TSarrayWriteStderr = function(sa: PSarray): Integer; cdecl;
      TSarrayWriteMem = function(pdata: PPointer; psize: PNativeUInt; sa: PSarray): Integer; cdecl;
      TSarrayAppend = function(filename: PAnsiChar; sa: PSarray): Integer; cdecl;
      TSarraySort = function(saout: PSarray; sain: PSarray; sortorder: Integer): PSarray; cdecl;
      TSarraySortByIndex = function(sain: PSarray; naindex: PNuma): PSarray; cdecl;
      TSarrayRemoveDupsByAset = function(sas: PSarray; psad: PPSarray): Integer; cdecl;
      TSarrayUnionByAset = function(sa1: PSarray; sa2: PSarray; psad: PPSarray): Integer; cdecl;
      TSarrayIntersectionByAset = function(sa1: PSarray; sa2: PSarray; psad: PPSarray): Integer; cdecl;
      TSarrayRemoveDupsByHmap = function(sas: PSarray; psad: PPSarray; phmap: PPointer): Integer; cdecl;
      TSarrayUnionByHmap = function(sa1: PSarray; sa2: PSarray; psad: PPSarray): Integer; cdecl;
      TSarrayIntersectionByHmap = function(sa1: PSarray; sa2: PSarray; psad: PPSarray): Integer; cdecl;
      TSarrayGenerateIntegers = function(n: Integer): PSarray; cdecl;
      TSarrayLookupCSKV = function(sa: PSarray; keystring: PAnsiChar; pvalstring: PPointer): Integer; cdecl;
    var
      SarrayConvertFilesToPS: TSarrayConvertFilesToPS;
      SarrayConvertFilesFittedToPS: TSarrayConvertFilesFittedToPS;
      SarrayCreate: TSarrayCreate;
      SarrayCreateInitialized: TSarrayCreateInitialized;
      SarrayCreateWordsFromString: TSarrayCreateWordsFromString;
      SarrayCreateLinesFromString: TSarrayCreateLinesFromString;
      SarrayDestroy: TSarrayDestroy;
      SarrayCopy: TSarrayCopy;
      SarrayClone: TSarrayClone;
      SarrayAddString: TSarrayAddString;
      SarrayRemoveString: TSarrayRemoveString;
      SarrayReplaceString: TSarrayReplaceString;
      SarrayClear: TSarrayClear;
      SarrayGetCount: TSarrayGetCount;
      SarrayGetArray: TSarrayGetArray;
      SarrayGetString: TSarrayGetString;
      SarrayToString: TSarrayToString;
      SarrayToStringRange: TSarrayToStringRange;
      SarrayConcatUniformly: TSarrayConcatUniformly;
      SarrayJoin: TSarrayJoin;
      SarrayAppendRange: TSarrayAppendRange;
      SarrayPadToSameSize: TSarrayPadToSameSize;
      SarrayConvertWordsToLines: TSarrayConvertWordsToLines;
      SarraySplitString: TSarraySplitString;
      SarraySelectBySubstring: TSarraySelectBySubstring;
      SarraySelectRange: TSarraySelectRange;
      SarrayParseRange: TSarrayParseRange;
      SarrayRead: TSarrayRead;
      SarrayReadStream: TSarrayReadStream;
      SarrayReadMem: TSarrayReadMem;
      SarrayWrite: TSarrayWrite;
      SarrayWriteStream: TSarrayWriteStream;
      SarrayWriteStderr: TSarrayWriteStderr;
      SarrayWriteMem: TSarrayWriteMem;
      SarrayAppend: TSarrayAppend;
      SarraySort: TSarraySort;
      SarraySortByIndex: TSarraySortByIndex;
      SarrayRemoveDupsByAset: TSarrayRemoveDupsByAset;
      SarrayUnionByAset: TSarrayUnionByAset;
      SarrayIntersectionByAset: TSarrayIntersectionByAset;
      SarrayRemoveDupsByHmap: TSarrayRemoveDupsByHmap;
      SarrayUnionByHmap: TSarrayUnionByHmap;
      SarrayIntersectionByHmap: TSarrayIntersectionByHmap;
      SarrayGenerateIntegers: TSarrayGenerateIntegers;
      SarrayLookupCSKV: TSarrayLookupCSKV;
      procedure Initialize(const Handle: TLibHandle);
  end;

implementation

procedure TLeptSarrayModule.Initialize(const Handle: TLibHandle);
begin
  SarrayConvertFilesToPS := LeptBind(Handle, 'sarrayConvertFilesToPS');
  SarrayConvertFilesFittedToPS := LeptBind(Handle, 'sarrayConvertFilesFittedToPS');
  SarrayCreate := LeptBind(Handle, 'sarrayCreate');
  SarrayCreateInitialized := LeptBind(Handle, 'sarrayCreateInitialized');
  SarrayCreateWordsFromString := LeptBind(Handle, 'sarrayCreateWordsFromString');
  SarrayCreateLinesFromString := LeptBind(Handle, 'sarrayCreateLinesFromString');
  SarrayDestroy := LeptBind(Handle, 'sarrayDestroy');
  SarrayCopy := LeptBind(Handle, 'sarrayCopy');
  SarrayClone := LeptBind(Handle, 'sarrayClone');
  SarrayAddString := LeptBind(Handle, 'sarrayAddString');
  SarrayRemoveString := LeptBind(Handle, 'sarrayRemoveString');
  SarrayReplaceString := LeptBind(Handle, 'sarrayReplaceString');
  SarrayClear := LeptBind(Handle, 'sarrayClear');
  SarrayGetCount := LeptBind(Handle, 'sarrayGetCount');
  SarrayGetArray := LeptBind(Handle, 'sarrayGetArray');
  SarrayGetString := LeptBind(Handle, 'sarrayGetString');
  SarrayToString := LeptBind(Handle, 'sarrayToString');
  SarrayToStringRange := LeptBind(Handle, 'sarrayToStringRange');
  SarrayConcatUniformly := LeptBind(Handle, 'sarrayConcatUniformly');
  SarrayJoin := LeptBind(Handle, 'sarrayJoin');
  SarrayAppendRange := LeptBind(Handle, 'sarrayAppendRange');
  SarrayPadToSameSize := LeptBind(Handle, 'sarrayPadToSameSize');
  SarrayConvertWordsToLines := LeptBind(Handle, 'sarrayConvertWordsToLines');
  SarraySplitString := LeptBind(Handle, 'sarraySplitString');
  SarraySelectBySubstring := LeptBind(Handle, 'sarraySelectBySubstring');
  SarraySelectRange := LeptBind(Handle, 'sarraySelectRange');
  SarrayParseRange := LeptBind(Handle, 'sarrayParseRange');
  SarrayRead := LeptBind(Handle, 'sarrayRead');
  SarrayReadStream := LeptBind(Handle, 'sarrayReadStream');
  SarrayReadMem := LeptBind(Handle, 'sarrayReadMem');
  SarrayWrite := LeptBind(Handle, 'sarrayWrite');
  SarrayWriteStream := LeptBind(Handle, 'sarrayWriteStream');
  SarrayWriteStderr := LeptBind(Handle, 'sarrayWriteStderr');
  SarrayWriteMem := LeptBind(Handle, 'sarrayWriteMem');
  SarrayAppend := LeptBind(Handle, 'sarrayAppend');
  SarraySort := LeptBind(Handle, 'sarraySort');
  SarraySortByIndex := LeptBind(Handle, 'sarraySortByIndex');
  SarrayRemoveDupsByAset := LeptBind(Handle, 'sarrayRemoveDupsByAset');
  SarrayUnionByAset := LeptBind(Handle, 'sarrayUnionByAset');
  SarrayIntersectionByAset := LeptBind(Handle, 'sarrayIntersectionByAset');
  SarrayRemoveDupsByHmap := LeptBind(Handle, 'sarrayRemoveDupsByHmap');
  SarrayUnionByHmap := LeptBind(Handle, 'sarrayUnionByHmap');
  SarrayIntersectionByHmap := LeptBind(Handle, 'sarrayIntersectionByHmap');
  SarrayGenerateIntegers := LeptBind(Handle, 'sarrayGenerateIntegers');
  SarrayLookupCSKV := LeptBind(Handle, 'sarrayLookupCSKV');
end;

end.
