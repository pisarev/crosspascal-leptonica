{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestSel;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_selaMakeThinSets;
begin
  AssertFuncLoaded(@Lept.Sel.SelaMakeThinSets, 'selaMakeThinSets');
end;

procedure Test_selaCreate;
begin
  AssertFuncLoaded(@Lept.Sel.SelaCreate, 'selaCreate');
end;

procedure Test_selaDestroy;
begin
  AssertFuncLoaded(@Lept.Sel.SelaDestroy, 'selaDestroy');
end;

procedure Test_selCreate;
begin
  AssertFuncLoaded(@Lept.Sel.SelCreate, 'selCreate');
end;

procedure Test_selDestroy;
begin
  AssertFuncLoaded(@Lept.Sel.SelDestroy, 'selDestroy');
end;

procedure Test_selCopy;
begin
  AssertFuncLoaded(@Lept.Sel.SelCopy, 'selCopy');
end;

procedure Test_selCreateBrick;
begin
  AssertFuncLoaded(@Lept.Sel.SelCreateBrick, 'selCreateBrick');
end;

procedure Test_selCreateComb;
begin
  AssertFuncLoaded(@Lept.Sel.SelCreateComb, 'selCreateComb');
end;

procedure Test_selaAddSel;
begin
  AssertFuncLoaded(@Lept.Sel.SelaAddSel, 'selaAddSel');
end;

procedure Test_selaGetCount;
begin
  AssertFuncLoaded(@Lept.Sel.SelaGetCount, 'selaGetCount');
end;

procedure Test_selaGetSel;
begin
  AssertFuncLoaded(@Lept.Sel.SelaGetSel, 'selaGetSel');
end;

procedure Test_selGetName;
begin
  AssertFuncLoaded(@Lept.Sel.SelGetName, 'selGetName');
end;

procedure Test_selSetName;
begin
  AssertFuncLoaded(@Lept.Sel.SelSetName, 'selSetName');
end;

procedure Test_selaFindSelByName;
begin
  AssertFuncLoaded(@Lept.Sel.SelaFindSelByName, 'selaFindSelByName');
end;

procedure Test_selGetElement;
begin
  AssertFuncLoaded(@Lept.Sel.SelGetElement, 'selGetElement');
end;

procedure Test_selSetElement;
begin
  AssertFuncLoaded(@Lept.Sel.SelSetElement, 'selSetElement');
end;

procedure Test_selGetParameters;
begin
  AssertFuncLoaded(@Lept.Sel.SelGetParameters, 'selGetParameters');
end;

procedure Test_selSetOrigin;
begin
  AssertFuncLoaded(@Lept.Sel.SelSetOrigin, 'selSetOrigin');
end;

procedure Test_selGetTypeAtOrigin;
begin
  AssertFuncLoaded(@Lept.Sel.SelGetTypeAtOrigin, 'selGetTypeAtOrigin');
end;

procedure Test_selaGetBrickName;
begin
  AssertFuncLoaded(@Lept.Sel.SelaGetBrickName, 'selaGetBrickName');
end;

procedure Test_selaGetCombName;
begin
  AssertFuncLoaded(@Lept.Sel.SelaGetCombName, 'selaGetCombName');
end;

procedure Test_selaGetSelnames;
begin
  AssertFuncLoaded(@Lept.Sel.SelaGetSelnames, 'selaGetSelnames');
end;

procedure Test_selFindMaxTranslations;
begin
  AssertFuncLoaded(@Lept.Sel.SelFindMaxTranslations, 'selFindMaxTranslations');
end;

procedure Test_selRotateOrth;
begin
  AssertFuncLoaded(@Lept.Sel.SelRotateOrth, 'selRotateOrth');
end;

procedure Test_selaRead;
begin
  AssertFuncLoaded(@Lept.Sel.SelaRead, 'selaRead');
end;

procedure Test_selaReadStream;
begin
  AssertFuncLoaded(@Lept.Sel.SelaReadStream, 'selaReadStream');
end;

procedure Test_selRead;
begin
  AssertFuncLoaded(@Lept.Sel.SelRead, 'selRead');
end;

procedure Test_selReadStream;
begin
  AssertFuncLoaded(@Lept.Sel.SelReadStream, 'selReadStream');
end;

procedure Test_selaWrite;
begin
  AssertFuncLoaded(@Lept.Sel.SelaWrite, 'selaWrite');
end;

procedure Test_selaWriteStream;
begin
  AssertFuncLoaded(@Lept.Sel.SelaWriteStream, 'selaWriteStream');
end;

procedure Test_selWrite;
begin
  AssertFuncLoaded(@Lept.Sel.SelWrite, 'selWrite');
end;

procedure Test_selWriteStream;
begin
  AssertFuncLoaded(@Lept.Sel.SelWriteStream, 'selWriteStream');
end;

procedure Test_selCreateFromString;
begin
  AssertFuncLoaded(@Lept.Sel.SelCreateFromString, 'selCreateFromString');
end;

procedure Test_selPrintToString;
begin
  AssertFuncLoaded(@Lept.Sel.SelPrintToString, 'selPrintToString');
end;

procedure Test_selaCreateFromFile;
begin
  AssertFuncLoaded(@Lept.Sel.SelaCreateFromFile, 'selaCreateFromFile');
end;

procedure Test_selCreateFromPta;
begin
  AssertFuncLoaded(@Lept.Sel.SelCreateFromPta, 'selCreateFromPta');
end;

procedure Test_selCreateFromPix;
begin
  AssertFuncLoaded(@Lept.Sel.SelCreateFromPix, 'selCreateFromPix');
end;

procedure Test_selReadFromColorImage;
begin
  AssertFuncLoaded(@Lept.Sel.SelReadFromColorImage, 'selReadFromColorImage');
end;

procedure Test_selCreateFromColorPix;
begin
  AssertFuncLoaded(@Lept.Sel.SelCreateFromColorPix, 'selCreateFromColorPix');
end;

procedure Test_selaCreateFromColorPixa;
begin
  AssertFuncLoaded(@Lept.Sel.SelaCreateFromColorPixa, 'selaCreateFromColorPixa');
end;

procedure Test_selDisplayInPix;
begin
  AssertFuncLoaded(@Lept.Sel.SelDisplayInPix, 'selDisplayInPix');
end;

procedure Test_selaDisplayInPix;
begin
  AssertFuncLoaded(@Lept.Sel.SelaDisplayInPix, 'selaDisplayInPix');
end;

procedure Test_selaAddBasic;
begin
  AssertFuncLoaded(@Lept.Sel.SelaAddBasic, 'selaAddBasic');
end;

procedure Test_selaAddHitMiss;
begin
  AssertFuncLoaded(@Lept.Sel.SelaAddHitMiss, 'selaAddHitMiss');
end;

procedure Test_selaAddDwaLinear;
begin
  AssertFuncLoaded(@Lept.Sel.SelaAddDwaLinear, 'selaAddDwaLinear');
end;

procedure Test_selaAddDwaCombs;
begin
  AssertFuncLoaded(@Lept.Sel.SelaAddDwaCombs, 'selaAddDwaCombs');
end;

procedure Test_selaAddCrossJunctions;
begin
  AssertFuncLoaded(@Lept.Sel.SelaAddCrossJunctions, 'selaAddCrossJunctions');
end;

procedure Test_selaAddTJunctions;
begin
  AssertFuncLoaded(@Lept.Sel.SelaAddTJunctions, 'selaAddTJunctions');
end;

procedure Test_selMakePlusSign;
begin
  AssertFuncLoaded(@Lept.Sel.SelMakePlusSign, 'selMakePlusSign');
end;

procedure Test_Func_selCreate;
var
  S: Pointer;
begin
  S := Lept.Sel.SelCreate(5, 5, PAnsiChar('test_sel'));
  AssertNotNil(S, 'selCreate');
  Lept.Sel.SelDestroy(@S);
end;

procedure Test_Func_selSetElement;
var
  S: Pointer;
  Val: Integer;
begin
  S := Lept.Sel.SelCreate(3, 3, PAnsiChar('test'));
  Lept.Sel.SelSetElement(S, 1, 1, 1);
  Val := 0;
  Lept.Sel.SelGetElement(S, 1, 1, @Val);
  AssertEqualsInt(1, Val, 'element=1');
  Lept.Sel.SelDestroy(@S);
end;

procedure Test_Func_selCreateBrick;
var
  S: Pointer;
begin
  S := Lept.Sel.SelCreateBrick(3, 3, 1, 1, 1);
  AssertNotNil(S, 'selCreateBrick');
  Lept.Sel.SelDestroy(@S);
end;

initialization
  RegisterTest('Sel', 'selaMakeThinSets', @Test_selaMakeThinSets, []);
  RegisterTest('Sel', 'selaCreate', @Test_selaCreate, []);
  RegisterTest('Sel', 'selaDestroy', @Test_selaDestroy, []);
  RegisterTest('Sel', 'selCreate', @Test_selCreate, []);
  RegisterTest('Sel', 'selDestroy', @Test_selDestroy, []);
  RegisterTest('Sel', 'selCopy', @Test_selCopy, []);
  RegisterTest('Sel', 'selCreateBrick', @Test_selCreateBrick, []);
  RegisterTest('Sel', 'selCreateComb', @Test_selCreateComb, []);
  RegisterTest('Sel', 'selaAddSel', @Test_selaAddSel, []);
  RegisterTest('Sel', 'selaGetCount', @Test_selaGetCount, []);
  RegisterTest('Sel', 'selaGetSel', @Test_selaGetSel, []);
  RegisterTest('Sel', 'selGetName', @Test_selGetName, []);
  RegisterTest('Sel', 'selSetName', @Test_selSetName, []);
  RegisterTest('Sel', 'selaFindSelByName', @Test_selaFindSelByName, []);
  RegisterTest('Sel', 'selGetElement', @Test_selGetElement, []);
  RegisterTest('Sel', 'selSetElement', @Test_selSetElement, []);
  RegisterTest('Sel', 'selGetParameters', @Test_selGetParameters, []);
  RegisterTest('Sel', 'selSetOrigin', @Test_selSetOrigin, []);
  RegisterTest('Sel', 'selGetTypeAtOrigin', @Test_selGetTypeAtOrigin, []);
  RegisterTest('Sel', 'selaGetBrickName', @Test_selaGetBrickName, []);
  RegisterTest('Sel', 'selaGetCombName', @Test_selaGetCombName, []);
  RegisterTest('Sel', 'selaGetSelnames', @Test_selaGetSelnames, []);
  RegisterTest('Sel', 'selFindMaxTranslations', @Test_selFindMaxTranslations, []);
  RegisterTest('Sel', 'selRotateOrth', @Test_selRotateOrth, []);
  RegisterTest('Sel', 'selaRead', @Test_selaRead, []);
  RegisterTest('Sel', 'selaReadStream', @Test_selaReadStream, []);
  RegisterTest('Sel', 'selRead', @Test_selRead, []);
  RegisterTest('Sel', 'selReadStream', @Test_selReadStream, []);
  RegisterTest('Sel', 'selaWrite', @Test_selaWrite, []);
  RegisterTest('Sel', 'selaWriteStream', @Test_selaWriteStream, []);
  RegisterTest('Sel', 'selWrite', @Test_selWrite, []);
  RegisterTest('Sel', 'selWriteStream', @Test_selWriteStream, []);
  RegisterTest('Sel', 'selCreateFromString', @Test_selCreateFromString, []);
  RegisterTest('Sel', 'selPrintToString', @Test_selPrintToString, []);
  RegisterTest('Sel', 'selaCreateFromFile', @Test_selaCreateFromFile, []);
  RegisterTest('Sel', 'selCreateFromPta', @Test_selCreateFromPta, []);
  RegisterTest('Sel', 'selCreateFromPix', @Test_selCreateFromPix, []);
  RegisterTest('Sel', 'selReadFromColorImage', @Test_selReadFromColorImage, []);
  RegisterTest('Sel', 'selCreateFromColorPix', @Test_selCreateFromColorPix, []);
  RegisterTest('Sel', 'selaCreateFromColorPixa', @Test_selaCreateFromColorPixa, []);
  RegisterTest('Sel', 'selDisplayInPix', @Test_selDisplayInPix, []);
  RegisterTest('Sel', 'selaDisplayInPix', @Test_selaDisplayInPix, []);
  RegisterTest('Sel', 'selaAddBasic', @Test_selaAddBasic, []);
  RegisterTest('Sel', 'selaAddHitMiss', @Test_selaAddHitMiss, []);
  RegisterTest('Sel', 'selaAddDwaLinear', @Test_selaAddDwaLinear, []);
  RegisterTest('Sel', 'selaAddDwaCombs', @Test_selaAddDwaCombs, []);
  RegisterTest('Sel', 'selaAddCrossJunctions', @Test_selaAddCrossJunctions, []);
  RegisterTest('Sel', 'selaAddTJunctions', @Test_selaAddTJunctions, []);
  RegisterTest('Sel', 'selMakePlusSign', @Test_selMakePlusSign, []);

  RegisterTest('Sel', 'Func_selCreate', @Test_Func_selCreate, []);
  RegisterTest('Sel', 'Func_selSetElement', @Test_Func_selSetElement, []);
  RegisterTest('Sel', 'Func_selCreateBrick', @Test_Func_selCreateBrick, []);

end.
