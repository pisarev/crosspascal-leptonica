{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestPageseg;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_pixGetRegionsBinary;
begin
  AssertFuncLoaded(@Lept.Pageseg.PixGetRegionsBinary, 'pixGetRegionsBinary');
end;

procedure Test_pixGenHalftoneMask;
begin
  AssertFuncLoaded(@Lept.Pageseg.PixGenHalftoneMask, 'pixGenHalftoneMask');
end;

procedure Test_pixGenTextlineMask;
begin
  AssertFuncLoaded(@Lept.Pageseg.PixGenTextlineMask, 'pixGenTextlineMask');
end;

procedure Test_pixGenTextblockMask;
begin
  AssertFuncLoaded(@Lept.Pageseg.PixGenTextblockMask, 'pixGenTextblockMask');
end;

procedure Test_pixFindPageForeground;
begin
  AssertFuncLoaded(@Lept.Pageseg.PixFindPageForeground, 'pixFindPageForeground');
end;

procedure Test_pixSplitIntoCharacters;
begin
  AssertFuncLoaded(@Lept.Pageseg.PixSplitIntoCharacters, 'pixSplitIntoCharacters');
end;

procedure Test_pixSetSelectCmap;
begin
  AssertFuncLoaded(@Lept.Pageseg.PixSetSelectCmap, 'pixSetSelectCmap');
end;

procedure Test_pixSetSelectMaskedCmap;
begin
  AssertFuncLoaded(@Lept.Pageseg.PixSetSelectMaskedCmap, 'pixSetSelectMaskedCmap');
end;

procedure Test_Func_pixGetRegionsBinary;
var
  P: Pointer;
  HM, TM, TBM: Pointer;
begin
  P := CreateBinaryPix(200, 300);
  HM := nil;
  TM := nil;
  TBM := nil;
  Lept.Pageseg.PixGetRegionsBinary(P, @HM, @TM, @TBM, nil);
  if HM <> nil then Lept.Pix.PixDestroy(@HM);
  if TM <> nil then Lept.Pix.PixDestroy(@TM);
  if TBM <> nil then Lept.Pix.PixDestroy(@TBM);
  SafePixDestroy(P);
  AssertTrue(True, 'pixGetRegionsBinary did not crash');
end;

initialization
  RegisterTest('Pageseg', 'pixGetRegionsBinary', @Test_pixGetRegionsBinary, []);
  RegisterTest('Pageseg', 'pixGenHalftoneMask', @Test_pixGenHalftoneMask, []);
  RegisterTest('Pageseg', 'pixGenTextlineMask', @Test_pixGenTextlineMask, []);
  RegisterTest('Pageseg', 'pixGenTextblockMask', @Test_pixGenTextblockMask, []);
  RegisterTest('Pageseg', 'pixFindPageForeground', @Test_pixFindPageForeground, []);
  RegisterTest('Pageseg', 'pixSplitIntoCharacters', @Test_pixSplitIntoCharacters, []);
  RegisterTest('Pageseg', 'pixSetSelectCmap', @Test_pixSetSelectCmap, []);
  RegisterTest('Pageseg', 'pixSetSelectMaskedCmap', @Test_pixSetSelectMaskedCmap, []);

  RegisterTest('Pageseg', 'Func_pixGetRegionsBinary', @Test_Func_pixGetRegionsBinary, []);

end.
