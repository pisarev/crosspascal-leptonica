{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestDna;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_l_dnaCreate;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaCreate, 'l_dnaCreate');
end;

procedure Test_l_dnaCreateFromIArray;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaCreateFromIArray, 'l_dnaCreateFromIArray');
end;

procedure Test_l_dnaCreateFromDArray;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaCreateFromDArray, 'l_dnaCreateFromDArray');
end;

procedure Test_l_dnaMakeSequence;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaMakeSequence, 'l_dnaMakeSequence');
end;

procedure Test_l_dnaDestroy;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaDestroy, 'l_dnaDestroy');
end;

procedure Test_l_dnaCopy;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaCopy, 'l_dnaCopy');
end;

procedure Test_l_dnaClone;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaClone, 'l_dnaClone');
end;

procedure Test_l_dnaEmpty;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaEmpty, 'l_dnaEmpty');
end;

procedure Test_l_dnaAddNumber;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaAddNumber, 'l_dnaAddNumber');
end;

procedure Test_l_dnaInsertNumber;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaInsertNumber, 'l_dnaInsertNumber');
end;

procedure Test_l_dnaRemoveNumber;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaRemoveNumber, 'l_dnaRemoveNumber');
end;

procedure Test_l_dnaReplaceNumber;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaReplaceNumber, 'l_dnaReplaceNumber');
end;

procedure Test_l_dnaGetCount;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaGetCount, 'l_dnaGetCount');
end;

procedure Test_l_dnaSetCount;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaSetCount, 'l_dnaSetCount');
end;

procedure Test_l_dnaGetDValue;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaGetDValue, 'l_dnaGetDValue');
end;

procedure Test_l_dnaGetIValue;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaGetIValue, 'l_dnaGetIValue');
end;

procedure Test_l_dnaSetValue;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaSetValue, 'l_dnaSetValue');
end;

procedure Test_l_dnaShiftValue;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaShiftValue, 'l_dnaShiftValue');
end;

procedure Test_l_dnaGetIArray;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaGetIArray, 'l_dnaGetIArray');
end;

procedure Test_l_dnaGetDArray;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaGetDArray, 'l_dnaGetDArray');
end;

procedure Test_l_dnaGetParameters;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaGetParameters, 'l_dnaGetParameters');
end;

procedure Test_l_dnaSetParameters;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaSetParameters, 'l_dnaSetParameters');
end;

procedure Test_l_dnaCopyParameters;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaCopyParameters, 'l_dnaCopyParameters');
end;

procedure Test_l_dnaRead;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaRead, 'l_dnaRead');
end;

procedure Test_l_dnaReadStream;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaReadStream, 'l_dnaReadStream');
end;

procedure Test_l_dnaReadMem;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaReadMem, 'l_dnaReadMem');
end;

procedure Test_l_dnaWrite;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaWrite, 'l_dnaWrite');
end;

procedure Test_l_dnaWriteStream;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaWriteStream, 'l_dnaWriteStream');
end;

procedure Test_l_dnaWriteStderr;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaWriteStderr, 'l_dnaWriteStderr');
end;

procedure Test_l_dnaWriteMem;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaWriteMem, 'l_dnaWriteMem');
end;

procedure Test_l_dnaaCreate;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaaCreate, 'l_dnaaCreate');
end;

procedure Test_l_dnaaCreateFull;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaaCreateFull, 'l_dnaaCreateFull');
end;

procedure Test_l_dnaaTruncate;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaaTruncate, 'l_dnaaTruncate');
end;

procedure Test_l_dnaaDestroy;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaaDestroy, 'l_dnaaDestroy');
end;

procedure Test_l_dnaaAddDna;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaaAddDna, 'l_dnaaAddDna');
end;

procedure Test_l_dnaaGetCount;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaaGetCount, 'l_dnaaGetCount');
end;

procedure Test_l_dnaaGetDnaCount;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaaGetDnaCount, 'l_dnaaGetDnaCount');
end;

procedure Test_l_dnaaGetNumberCount;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaaGetNumberCount, 'l_dnaaGetNumberCount');
end;

procedure Test_l_dnaaGetDna;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaaGetDna, 'l_dnaaGetDna');
end;

procedure Test_l_dnaaReplaceDna;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaaReplaceDna, 'l_dnaaReplaceDna');
end;

procedure Test_l_dnaaGetValue;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaaGetValue, 'l_dnaaGetValue');
end;

procedure Test_l_dnaaAddNumber;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaaAddNumber, 'l_dnaaAddNumber');
end;

procedure Test_l_dnaaRead;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaaRead, 'l_dnaaRead');
end;

procedure Test_l_dnaaReadStream;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaaReadStream, 'l_dnaaReadStream');
end;

procedure Test_l_dnaaReadMem;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaaReadMem, 'l_dnaaReadMem');
end;

procedure Test_l_dnaaWrite;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaaWrite, 'l_dnaaWrite');
end;

procedure Test_l_dnaaWriteStream;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaaWriteStream, 'l_dnaaWriteStream');
end;

procedure Test_l_dnaaWriteMem;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaaWriteMem, 'l_dnaaWriteMem');
end;

procedure Test_l_dnaJoin;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaJoin, 'l_dnaJoin');
end;

procedure Test_l_dnaaFlattenToDna;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaaFlattenToDna, 'l_dnaaFlattenToDna');
end;

procedure Test_l_dnaSelectRange;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaSelectRange, 'l_dnaSelectRange');
end;

procedure Test_l_dnaConvertToNuma;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaConvertToNuma, 'l_dnaConvertToNuma');
end;

procedure Test_l_dnaRemoveDupsByAset;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaRemoveDupsByAset, 'l_dnaRemoveDupsByAset');
end;

procedure Test_l_dnaUnionByAset;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaUnionByAset, 'l_dnaUnionByAset');
end;

procedure Test_l_dnaIntersectionByAset;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaIntersectionByAset, 'l_dnaIntersectionByAset');
end;

procedure Test_l_dnaRemoveDupsByHmap;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaRemoveDupsByHmap, 'l_dnaRemoveDupsByHmap');
end;

procedure Test_l_dnaUnionByHmap;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaUnionByHmap, 'l_dnaUnionByHmap');
end;

procedure Test_l_dnaIntersectionByHmap;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaIntersectionByHmap, 'l_dnaIntersectionByHmap');
end;

procedure Test_l_dnaMakeHistoByHmap;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaMakeHistoByHmap, 'l_dnaMakeHistoByHmap');
end;

procedure Test_l_dnaDiffAdjValues;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaDiffAdjValues, 'l_dnaDiffAdjValues');
end;

procedure Test_l_dnaHashCreate;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaHashCreate, 'l_dnaHashCreate');
end;

procedure Test_l_dnaHashDestroy;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaHashDestroy, 'l_dnaHashDestroy');
end;

procedure Test_l_dnaHashGetDna;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaHashGetDna, 'l_dnaHashGetDna');
end;

procedure Test_l_dnaHashAdd;
begin
  AssertFuncLoaded(@Lept.Dna.L_dnaHashAdd, 'l_dnaHashAdd');
end;

procedure Test_Func_l_dnaCreate;
var
  D: Pointer;
begin
  D := Lept.Dna.L_DnaCreate(10);
  AssertNotNil(D, 'l_dnaCreate');
  AssertEqualsInt(0, Lept.Dna.L_DnaGetCount(D), 'empty');
  Lept.Dna.L_DnaDestroy(@D);
end;

procedure Test_Func_l_dnaAddNumber;
var
  D: Pointer;
  Val: Double;
begin
  D := Lept.Dna.L_DnaCreate(5);
  Lept.Dna.L_DnaAddNumber(D, 42.5);
  Lept.Dna.L_DnaAddNumber(D, 100.0);
  AssertEqualsInt(2, Lept.Dna.L_DnaGetCount(D), 'count=2');
  Val := 0;
  Lept.Dna.L_DnaGetDValue(D, 0, @Val);
  AssertTrue(Abs(Val - 42.5) < 0.01, 'first value');
  Lept.Dna.L_DnaDestroy(@D);
end;

procedure Test_Func_l_dnaCopy;
var
  D, C: Pointer;
begin
  D := Lept.Dna.L_DnaCreate(5);
  Lept.Dna.L_DnaAddNumber(D, 1.0);
  C := Lept.Dna.L_DnaCopy(D);
  AssertNotNil(C, 'l_dnaCopy');
  AssertEqualsInt(1, Lept.Dna.L_DnaGetCount(C), 'copy count');
  Lept.Dna.L_DnaDestroy(@C);
  Lept.Dna.L_DnaDestroy(@D);
end;

initialization
  RegisterTest('Dna', 'l_dnaCreate', @Test_l_dnaCreate, []);
  RegisterTest('Dna', 'l_dnaCreateFromIArray', @Test_l_dnaCreateFromIArray, []);
  RegisterTest('Dna', 'l_dnaCreateFromDArray', @Test_l_dnaCreateFromDArray, []);
  RegisterTest('Dna', 'l_dnaMakeSequence', @Test_l_dnaMakeSequence, []);
  RegisterTest('Dna', 'l_dnaDestroy', @Test_l_dnaDestroy, []);
  RegisterTest('Dna', 'l_dnaCopy', @Test_l_dnaCopy, []);
  RegisterTest('Dna', 'l_dnaClone', @Test_l_dnaClone, []);
  RegisterTest('Dna', 'l_dnaEmpty', @Test_l_dnaEmpty, []);
  RegisterTest('Dna', 'l_dnaAddNumber', @Test_l_dnaAddNumber, []);
  RegisterTest('Dna', 'l_dnaInsertNumber', @Test_l_dnaInsertNumber, []);
  RegisterTest('Dna', 'l_dnaRemoveNumber', @Test_l_dnaRemoveNumber, []);
  RegisterTest('Dna', 'l_dnaReplaceNumber', @Test_l_dnaReplaceNumber, []);
  RegisterTest('Dna', 'l_dnaGetCount', @Test_l_dnaGetCount, []);
  RegisterTest('Dna', 'l_dnaSetCount', @Test_l_dnaSetCount, []);
  RegisterTest('Dna', 'l_dnaGetDValue', @Test_l_dnaGetDValue, []);
  RegisterTest('Dna', 'l_dnaGetIValue', @Test_l_dnaGetIValue, []);
  RegisterTest('Dna', 'l_dnaSetValue', @Test_l_dnaSetValue, []);
  RegisterTest('Dna', 'l_dnaShiftValue', @Test_l_dnaShiftValue, []);
  RegisterTest('Dna', 'l_dnaGetIArray', @Test_l_dnaGetIArray, []);
  RegisterTest('Dna', 'l_dnaGetDArray', @Test_l_dnaGetDArray, []);
  RegisterTest('Dna', 'l_dnaGetParameters', @Test_l_dnaGetParameters, []);
  RegisterTest('Dna', 'l_dnaSetParameters', @Test_l_dnaSetParameters, []);
  RegisterTest('Dna', 'l_dnaCopyParameters', @Test_l_dnaCopyParameters, []);
  RegisterTest('Dna', 'l_dnaRead', @Test_l_dnaRead, []);
  RegisterTest('Dna', 'l_dnaReadStream', @Test_l_dnaReadStream, []);
  RegisterTest('Dna', 'l_dnaReadMem', @Test_l_dnaReadMem, []);
  RegisterTest('Dna', 'l_dnaWrite', @Test_l_dnaWrite, []);
  RegisterTest('Dna', 'l_dnaWriteStream', @Test_l_dnaWriteStream, []);
  RegisterTest('Dna', 'l_dnaWriteStderr', @Test_l_dnaWriteStderr, []);
  RegisterTest('Dna', 'l_dnaWriteMem', @Test_l_dnaWriteMem, []);
  RegisterTest('Dna', 'l_dnaaCreate', @Test_l_dnaaCreate, []);
  RegisterTest('Dna', 'l_dnaaCreateFull', @Test_l_dnaaCreateFull, []);
  RegisterTest('Dna', 'l_dnaaTruncate', @Test_l_dnaaTruncate, []);
  RegisterTest('Dna', 'l_dnaaDestroy', @Test_l_dnaaDestroy, []);
  RegisterTest('Dna', 'l_dnaaAddDna', @Test_l_dnaaAddDna, []);
  RegisterTest('Dna', 'l_dnaaGetCount', @Test_l_dnaaGetCount, []);
  RegisterTest('Dna', 'l_dnaaGetDnaCount', @Test_l_dnaaGetDnaCount, []);
  RegisterTest('Dna', 'l_dnaaGetNumberCount', @Test_l_dnaaGetNumberCount, []);
  RegisterTest('Dna', 'l_dnaaGetDna', @Test_l_dnaaGetDna, []);
  RegisterTest('Dna', 'l_dnaaReplaceDna', @Test_l_dnaaReplaceDna, []);
  RegisterTest('Dna', 'l_dnaaGetValue', @Test_l_dnaaGetValue, []);
  RegisterTest('Dna', 'l_dnaaAddNumber', @Test_l_dnaaAddNumber, []);
  RegisterTest('Dna', 'l_dnaaRead', @Test_l_dnaaRead, []);
  RegisterTest('Dna', 'l_dnaaReadStream', @Test_l_dnaaReadStream, []);
  RegisterTest('Dna', 'l_dnaaReadMem', @Test_l_dnaaReadMem, []);
  RegisterTest('Dna', 'l_dnaaWrite', @Test_l_dnaaWrite, []);
  RegisterTest('Dna', 'l_dnaaWriteStream', @Test_l_dnaaWriteStream, []);
  RegisterTest('Dna', 'l_dnaaWriteMem', @Test_l_dnaaWriteMem, []);
  RegisterTest('Dna', 'l_dnaJoin', @Test_l_dnaJoin, []);
  RegisterTest('Dna', 'l_dnaaFlattenToDna', @Test_l_dnaaFlattenToDna, []);
  RegisterTest('Dna', 'l_dnaSelectRange', @Test_l_dnaSelectRange, []);
  RegisterTest('Dna', 'l_dnaConvertToNuma', @Test_l_dnaConvertToNuma, []);
  RegisterTest('Dna', 'l_dnaRemoveDupsByAset', @Test_l_dnaRemoveDupsByAset, []);
  RegisterTest('Dna', 'l_dnaUnionByAset', @Test_l_dnaUnionByAset, []);
  RegisterTest('Dna', 'l_dnaIntersectionByAset', @Test_l_dnaIntersectionByAset, []);
  RegisterTest('Dna', 'l_dnaRemoveDupsByHmap', @Test_l_dnaRemoveDupsByHmap, []);
  RegisterTest('Dna', 'l_dnaUnionByHmap', @Test_l_dnaUnionByHmap, []);
  RegisterTest('Dna', 'l_dnaIntersectionByHmap', @Test_l_dnaIntersectionByHmap, []);
  RegisterTest('Dna', 'l_dnaMakeHistoByHmap', @Test_l_dnaMakeHistoByHmap, []);
  RegisterTest('Dna', 'l_dnaDiffAdjValues', @Test_l_dnaDiffAdjValues, []);
  RegisterTest('Dna', 'l_dnaHashCreate', @Test_l_dnaHashCreate, []);
  RegisterTest('Dna', 'l_dnaHashDestroy', @Test_l_dnaHashDestroy, []);
  RegisterTest('Dna', 'l_dnaHashGetDna', @Test_l_dnaHashGetDna, []);
  RegisterTest('Dna', 'l_dnaHashAdd', @Test_l_dnaHashAdd, []);

  RegisterTest('Dna', 'Func_l_dnaCreate', @Test_Func_l_dnaCreate, []);
  RegisterTest('Dna', 'Func_l_dnaAddNumber', @Test_Func_l_dnaAddNumber, []);
  RegisterTest('Dna', 'Func_l_dnaCopy', @Test_Func_l_dnaCopy, []);

end.
