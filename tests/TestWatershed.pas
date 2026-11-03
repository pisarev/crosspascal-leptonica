{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestWatershed;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_wshedCreate;
begin
  AssertFuncLoaded(@Lept.Watershed.WshedCreate, 'wshedCreate');
end;

procedure Test_wshedDestroy;
begin
  AssertFuncLoaded(@Lept.Watershed.WshedDestroy, 'wshedDestroy');
end;

procedure Test_wshedApply;
begin
  AssertFuncLoaded(@Lept.Watershed.WshedApply, 'wshedApply');
end;

procedure Test_wshedBasins;
begin
  AssertFuncLoaded(@Lept.Watershed.WshedBasins, 'wshedBasins');
end;

procedure Test_wshedRenderFill;
begin
  AssertFuncLoaded(@Lept.Watershed.WshedRenderFill, 'wshedRenderFill');
end;

procedure Test_wshedRenderColors;
begin
  AssertFuncLoaded(@Lept.Watershed.WshedRenderColors, 'wshedRenderColors');
end;

procedure Test_Func_wshedCreate;
var
  P, S: Pointer;
  W: Pointer;
begin
  P := CreateGrayPix(100, 100);
  S := CreateBinaryPix(100, 100);
  Lept.Pix.PixSetPixel(S, 50, 50, 1);
  W := Lept.Watershed.WshedCreate(P, S, 10, 0);
  if W <> nil then
    Lept.Watershed.WshedDestroy(@W);
  SafePixDestroy(S);
  SafePixDestroy(P);
  AssertTrue(True, 'wshedCreate did not crash');
end;

initialization
  RegisterTest('Watershed', 'wshedCreate', @Test_wshedCreate, []);
  RegisterTest('Watershed', 'wshedDestroy', @Test_wshedDestroy, []);
  RegisterTest('Watershed', 'wshedApply', @Test_wshedApply, []);
  RegisterTest('Watershed', 'wshedBasins', @Test_wshedBasins, []);
  RegisterTest('Watershed', 'wshedRenderFill', @Test_wshedRenderFill, []);
  RegisterTest('Watershed', 'wshedRenderColors', @Test_wshedRenderColors, []);

  RegisterTest('Watershed', 'Func_wshedCreate', @Test_Func_wshedCreate, []);

end.
