{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestSarray;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_sarrayConvertFilesToPS;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayConvertFilesToPS, 'sarrayConvertFilesToPS');
end;

procedure Test_sarrayConvertFilesFittedToPS;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayConvertFilesFittedToPS, 'sarrayConvertFilesFittedToPS');
end;

procedure Test_sarrayCreate;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayCreate, 'sarrayCreate');
end;

procedure Test_sarrayCreateInitialized;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayCreateInitialized, 'sarrayCreateInitialized');
end;

procedure Test_sarrayCreateWordsFromString;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayCreateWordsFromString, 'sarrayCreateWordsFromString');
end;

procedure Test_sarrayCreateLinesFromString;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayCreateLinesFromString, 'sarrayCreateLinesFromString');
end;

procedure Test_sarrayDestroy;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayDestroy, 'sarrayDestroy');
end;

procedure Test_sarrayCopy;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayCopy, 'sarrayCopy');
end;

procedure Test_sarrayClone;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayClone, 'sarrayClone');
end;

procedure Test_sarrayAddString;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayAddString, 'sarrayAddString');
end;

procedure Test_sarrayRemoveString;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayRemoveString, 'sarrayRemoveString');
end;

procedure Test_sarrayReplaceString;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayReplaceString, 'sarrayReplaceString');
end;

procedure Test_sarrayClear;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayClear, 'sarrayClear');
end;

procedure Test_sarrayGetCount;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayGetCount, 'sarrayGetCount');
end;

procedure Test_sarrayGetArray;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayGetArray, 'sarrayGetArray');
end;

procedure Test_sarrayGetString;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayGetString, 'sarrayGetString');
end;

procedure Test_sarrayToString;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayToString, 'sarrayToString');
end;

procedure Test_sarrayToStringRange;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayToStringRange, 'sarrayToStringRange');
end;

procedure Test_sarrayConcatUniformly;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayConcatUniformly, 'sarrayConcatUniformly');
end;

procedure Test_sarrayJoin;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayJoin, 'sarrayJoin');
end;

procedure Test_sarrayAppendRange;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayAppendRange, 'sarrayAppendRange');
end;

procedure Test_sarrayPadToSameSize;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayPadToSameSize, 'sarrayPadToSameSize');
end;

procedure Test_sarrayConvertWordsToLines;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayConvertWordsToLines, 'sarrayConvertWordsToLines');
end;

procedure Test_sarraySplitString;
begin
  AssertFuncLoaded(@Lept.Sarray.SarraySplitString, 'sarraySplitString');
end;

procedure Test_sarraySelectBySubstring;
begin
  AssertFuncLoaded(@Lept.Sarray.SarraySelectBySubstring, 'sarraySelectBySubstring');
end;

procedure Test_sarraySelectRange;
begin
  AssertFuncLoaded(@Lept.Sarray.SarraySelectRange, 'sarraySelectRange');
end;

procedure Test_sarrayParseRange;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayParseRange, 'sarrayParseRange');
end;

procedure Test_sarrayRead;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayRead, 'sarrayRead');
end;

procedure Test_sarrayReadStream;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayReadStream, 'sarrayReadStream');
end;

procedure Test_sarrayReadMem;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayReadMem, 'sarrayReadMem');
end;

procedure Test_sarrayWrite;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayWrite, 'sarrayWrite');
end;

procedure Test_sarrayWriteStream;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayWriteStream, 'sarrayWriteStream');
end;

procedure Test_sarrayWriteStderr;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayWriteStderr, 'sarrayWriteStderr');
end;

procedure Test_sarrayWriteMem;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayWriteMem, 'sarrayWriteMem');
end;

procedure Test_sarrayAppend;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayAppend, 'sarrayAppend');
end;

procedure Test_sarraySort;
begin
  AssertFuncLoaded(@Lept.Sarray.SarraySort, 'sarraySort');
end;

procedure Test_sarraySortByIndex;
begin
  AssertFuncLoaded(@Lept.Sarray.SarraySortByIndex, 'sarraySortByIndex');
end;

procedure Test_sarrayRemoveDupsByAset;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayRemoveDupsByAset, 'sarrayRemoveDupsByAset');
end;

procedure Test_sarrayUnionByAset;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayUnionByAset, 'sarrayUnionByAset');
end;

procedure Test_sarrayIntersectionByAset;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayIntersectionByAset, 'sarrayIntersectionByAset');
end;

procedure Test_sarrayRemoveDupsByHmap;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayRemoveDupsByHmap, 'sarrayRemoveDupsByHmap');
end;

procedure Test_sarrayUnionByHmap;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayUnionByHmap, 'sarrayUnionByHmap');
end;

procedure Test_sarrayIntersectionByHmap;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayIntersectionByHmap, 'sarrayIntersectionByHmap');
end;

procedure Test_sarrayGenerateIntegers;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayGenerateIntegers, 'sarrayGenerateIntegers');
end;

procedure Test_sarrayLookupCSKV;
begin
  AssertFuncLoaded(@Lept.Sarray.SarrayLookupCSKV, 'sarrayLookupCSKV');
end;

procedure Test_Func_sarrayCreate;
var
  S: Pointer;
begin
  S := Lept.Sarray.SarrayCreate(10);
  AssertNotNil(S, 'sarrayCreate');
  AssertEqualsInt(0, Lept.Sarray.SarrayGetCount(S), 'empty');
  Lept.Sarray.SarrayDestroy(@S);
end;

procedure Test_Func_sarrayAddString;
var
  S: Pointer;
  Str: PAnsiChar;
begin
  S := Lept.Sarray.SarrayCreate(5);
  Lept.Sarray.SarrayAddString(S, PAnsiChar('hello'), 1);
  Lept.Sarray.SarrayAddString(S, PAnsiChar('world'), 1);
  AssertEqualsInt(2, Lept.Sarray.SarrayGetCount(S), 'count=2');
  Str := Lept.Sarray.SarrayGetString(S, 0, 1);
  AssertEqualsStr('hello', string(AnsiString(Str)), 'first string');
  Lept.Sarray.SarrayDestroy(@S);
end;

initialization
  RegisterTest('Sarray', 'sarrayConvertFilesToPS', @Test_sarrayConvertFilesToPS, []);
  RegisterTest('Sarray', 'sarrayConvertFilesFittedToPS', @Test_sarrayConvertFilesFittedToPS, []);
  RegisterTest('Sarray', 'sarrayCreate', @Test_sarrayCreate, []);
  RegisterTest('Sarray', 'sarrayCreateInitialized', @Test_sarrayCreateInitialized, []);
  RegisterTest('Sarray', 'sarrayCreateWordsFromString', @Test_sarrayCreateWordsFromString, []);
  RegisterTest('Sarray', 'sarrayCreateLinesFromString', @Test_sarrayCreateLinesFromString, []);
  RegisterTest('Sarray', 'sarrayDestroy', @Test_sarrayDestroy, []);
  RegisterTest('Sarray', 'sarrayCopy', @Test_sarrayCopy, []);
  RegisterTest('Sarray', 'sarrayClone', @Test_sarrayClone, []);
  RegisterTest('Sarray', 'sarrayAddString', @Test_sarrayAddString, []);
  RegisterTest('Sarray', 'sarrayRemoveString', @Test_sarrayRemoveString, []);
  RegisterTest('Sarray', 'sarrayReplaceString', @Test_sarrayReplaceString, []);
  RegisterTest('Sarray', 'sarrayClear', @Test_sarrayClear, []);
  RegisterTest('Sarray', 'sarrayGetCount', @Test_sarrayGetCount, []);
  RegisterTest('Sarray', 'sarrayGetArray', @Test_sarrayGetArray, []);
  RegisterTest('Sarray', 'sarrayGetString', @Test_sarrayGetString, []);
  RegisterTest('Sarray', 'sarrayToString', @Test_sarrayToString, []);
  RegisterTest('Sarray', 'sarrayToStringRange', @Test_sarrayToStringRange, []);
  RegisterTest('Sarray', 'sarrayConcatUniformly', @Test_sarrayConcatUniformly, []);
  RegisterTest('Sarray', 'sarrayJoin', @Test_sarrayJoin, []);
  RegisterTest('Sarray', 'sarrayAppendRange', @Test_sarrayAppendRange, []);
  RegisterTest('Sarray', 'sarrayPadToSameSize', @Test_sarrayPadToSameSize, []);
  RegisterTest('Sarray', 'sarrayConvertWordsToLines', @Test_sarrayConvertWordsToLines, []);
  RegisterTest('Sarray', 'sarraySplitString', @Test_sarraySplitString, []);
  RegisterTest('Sarray', 'sarraySelectBySubstring', @Test_sarraySelectBySubstring, []);
  RegisterTest('Sarray', 'sarraySelectRange', @Test_sarraySelectRange, []);
  RegisterTest('Sarray', 'sarrayParseRange', @Test_sarrayParseRange, []);
  RegisterTest('Sarray', 'sarrayRead', @Test_sarrayRead, []);
  RegisterTest('Sarray', 'sarrayReadStream', @Test_sarrayReadStream, []);
  RegisterTest('Sarray', 'sarrayReadMem', @Test_sarrayReadMem, []);
  RegisterTest('Sarray', 'sarrayWrite', @Test_sarrayWrite, []);
  RegisterTest('Sarray', 'sarrayWriteStream', @Test_sarrayWriteStream, []);
  RegisterTest('Sarray', 'sarrayWriteStderr', @Test_sarrayWriteStderr, []);
  RegisterTest('Sarray', 'sarrayWriteMem', @Test_sarrayWriteMem, []);
  RegisterTest('Sarray', 'sarrayAppend', @Test_sarrayAppend, []);
  RegisterTest('Sarray', 'sarraySort', @Test_sarraySort, []);
  RegisterTest('Sarray', 'sarraySortByIndex', @Test_sarraySortByIndex, []);
  RegisterTest('Sarray', 'sarrayRemoveDupsByAset', @Test_sarrayRemoveDupsByAset, []);
  RegisterTest('Sarray', 'sarrayUnionByAset', @Test_sarrayUnionByAset, []);
  RegisterTest('Sarray', 'sarrayIntersectionByAset', @Test_sarrayIntersectionByAset, []);
  RegisterTest('Sarray', 'sarrayRemoveDupsByHmap', @Test_sarrayRemoveDupsByHmap, []);
  RegisterTest('Sarray', 'sarrayUnionByHmap', @Test_sarrayUnionByHmap, []);
  RegisterTest('Sarray', 'sarrayIntersectionByHmap', @Test_sarrayIntersectionByHmap, []);
  RegisterTest('Sarray', 'sarrayGenerateIntegers', @Test_sarrayGenerateIntegers, []);
  RegisterTest('Sarray', 'sarrayLookupCSKV', @Test_sarrayLookupCSKV, []);

  RegisterTest('Sarray', 'Func_sarrayCreate', @Test_Func_sarrayCreate, []);
  RegisterTest('Sarray', 'Func_sarrayAddString', @Test_Func_sarrayAddString, []);

end.
