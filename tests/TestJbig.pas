{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestJbig;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_jbCorrelation;
begin
  AssertFuncLoaded(@Lept.Jbig.JbCorrelation, 'jbCorrelation');
end;

procedure Test_jbRankHaus;
begin
  AssertFuncLoaded(@Lept.Jbig.JbRankHaus, 'jbRankHaus');
end;

procedure Test_jbWordsInTextlines;
begin
  AssertFuncLoaded(@Lept.Jbig.JbWordsInTextlines, 'jbWordsInTextlines');
end;

procedure Test_jbRankHausInit;
begin
  AssertFuncLoaded(@Lept.Jbig.JbRankHausInit, 'jbRankHausInit');
end;

procedure Test_jbCorrelationInit;
begin
  AssertFuncLoaded(@Lept.Jbig.JbCorrelationInit, 'jbCorrelationInit');
end;

procedure Test_jbCorrelationInitWithoutComponents;
begin
  AssertFuncLoaded(@Lept.Jbig.JbCorrelationInitWithoutComponents, 'jbCorrelationInitWithoutComponents');
end;

procedure Test_jbAddPages;
begin
  AssertFuncLoaded(@Lept.Jbig.JbAddPages, 'jbAddPages');
end;

procedure Test_jbAddPage;
begin
  AssertFuncLoaded(@Lept.Jbig.JbAddPage, 'jbAddPage');
end;

procedure Test_jbAddPageComponents;
begin
  AssertFuncLoaded(@Lept.Jbig.JbAddPageComponents, 'jbAddPageComponents');
end;

procedure Test_jbClassifyRankHaus;
begin
  AssertFuncLoaded(@Lept.Jbig.JbClassifyRankHaus, 'jbClassifyRankHaus');
end;

procedure Test_jbClassifyCorrelation;
begin
  AssertFuncLoaded(@Lept.Jbig.JbClassifyCorrelation, 'jbClassifyCorrelation');
end;

procedure Test_jbGetComponents;
begin
  AssertFuncLoaded(@Lept.Jbig.JbGetComponents, 'jbGetComponents');
end;

procedure Test_jbAccumulateComposites;
begin
  AssertFuncLoaded(@Lept.Jbig.JbAccumulateComposites, 'jbAccumulateComposites');
end;

procedure Test_jbTemplatesFromComposites;
begin
  AssertFuncLoaded(@Lept.Jbig.JbTemplatesFromComposites, 'jbTemplatesFromComposites');
end;

procedure Test_jbClasserCreate;
begin
  AssertFuncLoaded(@Lept.Jbig.JbClasserCreate, 'jbClasserCreate');
end;

procedure Test_jbClasserDestroy;
begin
  AssertFuncLoaded(@Lept.Jbig.JbClasserDestroy, 'jbClasserDestroy');
end;

procedure Test_jbDataSave;
begin
  AssertFuncLoaded(@Lept.Jbig.JbDataSave, 'jbDataSave');
end;

procedure Test_jbDataDestroy;
begin
  AssertFuncLoaded(@Lept.Jbig.JbDataDestroy, 'jbDataDestroy');
end;

procedure Test_jbDataWrite;
begin
  AssertFuncLoaded(@Lept.Jbig.JbDataWrite, 'jbDataWrite');
end;

procedure Test_jbDataRead;
begin
  AssertFuncLoaded(@Lept.Jbig.JbDataRead, 'jbDataRead');
end;

procedure Test_jbDataRender;
begin
  AssertFuncLoaded(@Lept.Jbig.JbDataRender, 'jbDataRender');
end;

procedure Test_jbGetULCorners;
begin
  AssertFuncLoaded(@Lept.Jbig.JbGetULCorners, 'jbGetULCorners');
end;

procedure Test_jbGetLLCorners;
begin
  AssertFuncLoaded(@Lept.Jbig.JbGetLLCorners, 'jbGetLLCorners');
end;

procedure Test_Func_jbClasserCreate;
var
  J: Pointer;
begin
  J := Lept.Jbig.JbClasserCreate(0, 0);
  AssertNotNil(J, 'jbClasserCreate');
  Lept.Jbig.JbClasserDestroy(@J);
end;

initialization
  RegisterTest('Jbig', 'jbCorrelation', @Test_jbCorrelation, []);
  RegisterTest('Jbig', 'jbRankHaus', @Test_jbRankHaus, []);
  RegisterTest('Jbig', 'jbWordsInTextlines', @Test_jbWordsInTextlines, []);
  RegisterTest('Jbig', 'jbRankHausInit', @Test_jbRankHausInit, []);
  RegisterTest('Jbig', 'jbCorrelationInit', @Test_jbCorrelationInit, []);
  RegisterTest('Jbig', 'jbCorrelationInitWithoutComponents', @Test_jbCorrelationInitWithoutComponents, []);
  RegisterTest('Jbig', 'jbAddPages', @Test_jbAddPages, []);
  RegisterTest('Jbig', 'jbAddPage', @Test_jbAddPage, []);
  RegisterTest('Jbig', 'jbAddPageComponents', @Test_jbAddPageComponents, []);
  RegisterTest('Jbig', 'jbClassifyRankHaus', @Test_jbClassifyRankHaus, []);
  RegisterTest('Jbig', 'jbClassifyCorrelation', @Test_jbClassifyCorrelation, []);
  RegisterTest('Jbig', 'jbGetComponents', @Test_jbGetComponents, []);
  RegisterTest('Jbig', 'jbAccumulateComposites', @Test_jbAccumulateComposites, []);
  RegisterTest('Jbig', 'jbTemplatesFromComposites', @Test_jbTemplatesFromComposites, []);
  RegisterTest('Jbig', 'jbClasserCreate', @Test_jbClasserCreate, []);
  RegisterTest('Jbig', 'jbClasserDestroy', @Test_jbClasserDestroy, []);
  RegisterTest('Jbig', 'jbDataSave', @Test_jbDataSave, []);
  RegisterTest('Jbig', 'jbDataDestroy', @Test_jbDataDestroy, []);
  RegisterTest('Jbig', 'jbDataWrite', @Test_jbDataWrite, []);
  RegisterTest('Jbig', 'jbDataRead', @Test_jbDataRead, []);
  RegisterTest('Jbig', 'jbDataRender', @Test_jbDataRender, []);
  RegisterTest('Jbig', 'jbGetULCorners', @Test_jbGetULCorners, []);
  RegisterTest('Jbig', 'jbGetLLCorners', @Test_jbGetLLCorners, []);

  RegisterTest('Jbig', 'Func_jbClasserCreate', @Test_Func_jbClasserCreate, []);

end.
