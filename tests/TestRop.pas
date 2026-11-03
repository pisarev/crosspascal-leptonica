{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestRop;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_pixCropAlignedToCentroid;
begin
  AssertFuncLoaded(@Lept.Rop.PixCropAlignedToCentroid, 'pixCropAlignedToCentroid');
end;

procedure Test_pixCropImage;
begin
  AssertFuncLoaded(@Lept.Rop.PixCropImage, 'pixCropImage');
end;

procedure Test_pixSetMaskedCmap;
begin
  AssertFuncLoaded(@Lept.Rop.PixSetMaskedCmap, 'pixSetMaskedCmap');
end;

procedure Test_pixResizeImageData;
begin
  AssertFuncLoaded(@Lept.Rop.PixResizeImageData, 'pixResizeImageData');
end;

procedure Test_pixCopyColormap;
begin
  AssertFuncLoaded(@Lept.Rop.PixCopyColormap, 'pixCopyColormap');
end;

procedure Test_pixTransferAllData;
begin
  AssertFuncLoaded(@Lept.Rop.PixTransferAllData, 'pixTransferAllData');
end;

procedure Test_pixGetDimensions;
begin
  AssertFuncLoaded(@Lept.Rop.PixGetDimensions, 'pixGetDimensions');
end;

procedure Test_pixSetDimensions;
begin
  AssertFuncLoaded(@Lept.Rop.PixSetDimensions, 'pixSetDimensions');
end;

procedure Test_pixCopyDimensions;
begin
  AssertFuncLoaded(@Lept.Rop.PixCopyDimensions, 'pixCopyDimensions');
end;

procedure Test_pixCopySpp;
begin
  AssertFuncLoaded(@Lept.Rop.PixCopySpp, 'pixCopySpp');
end;

procedure Test_pixCopyResolution;
begin
  AssertFuncLoaded(@Lept.Rop.PixCopyResolution, 'pixCopyResolution');
end;

procedure Test_pixCopyInputFormat;
begin
  AssertFuncLoaded(@Lept.Rop.PixCopyInputFormat, 'pixCopyInputFormat');
end;

procedure Test_pixCopyText;
begin
  AssertFuncLoaded(@Lept.Rop.PixCopyText, 'pixCopyText');
end;

procedure Test_pixCopyBorder;
begin
  AssertFuncLoaded(@Lept.Rop.PixCopyBorder, 'pixCopyBorder');
end;

procedure Test_pixCopyRGBComponent;
begin
  AssertFuncLoaded(@Lept.Rop.PixCopyRGBComponent, 'pixCopyRGBComponent');
end;

procedure Test_pixEndianByteSwapNew;
begin
  AssertFuncLoaded(@Lept.Rop.PixEndianByteSwapNew, 'pixEndianByteSwapNew');
end;

procedure Test_pixEndianByteSwap;
begin
  AssertFuncLoaded(@Lept.Rop.PixEndianByteSwap, 'pixEndianByteSwap');
end;

procedure Test_pixEndianTwoByteSwapNew;
begin
  AssertFuncLoaded(@Lept.Rop.PixEndianTwoByteSwapNew, 'pixEndianTwoByteSwapNew');
end;

procedure Test_pixEndianTwoByteSwap;
begin
  AssertFuncLoaded(@Lept.Rop.PixEndianTwoByteSwap, 'pixEndianTwoByteSwap');
end;

procedure Test_pixSetMasked;
begin
  AssertFuncLoaded(@Lept.Rop.PixSetMasked, 'pixSetMasked');
end;

procedure Test_pixSetMaskedGeneral;
begin
  AssertFuncLoaded(@Lept.Rop.PixSetMaskedGeneral, 'pixSetMaskedGeneral');
end;

procedure Test_pixCombineMasked;
begin
  AssertFuncLoaded(@Lept.Rop.PixCombineMasked, 'pixCombineMasked');
end;

procedure Test_pixCombineMaskedGeneral;
begin
  AssertFuncLoaded(@Lept.Rop.PixCombineMaskedGeneral, 'pixCombineMaskedGeneral');
end;

procedure Test_pixCopyWithBoxa;
begin
  AssertFuncLoaded(@Lept.Rop.PixCopyWithBoxa, 'pixCopyWithBoxa');
end;

procedure Test_pixInvert;
begin
  AssertFuncLoaded(@Lept.Rop.PixInvert, 'pixInvert');
end;

procedure Test_pixOr;
begin
  AssertFuncLoaded(@Lept.Rop.PixOr, 'pixOr');
end;

procedure Test_pixAnd;
begin
  AssertFuncLoaded(@Lept.Rop.PixAnd, 'pixAnd');
end;

procedure Test_pixXor;
begin
  AssertFuncLoaded(@Lept.Rop.PixXor, 'pixXor');
end;

procedure Test_pixSubtract;
begin
  AssertFuncLoaded(@Lept.Rop.PixSubtract, 'pixSubtract');
end;

procedure Test_pixClipRectangles;
begin
  AssertFuncLoaded(@Lept.Rop.PixClipRectangles, 'pixClipRectangles');
end;

procedure Test_pixClipRectangle;
begin
  AssertFuncLoaded(@Lept.Rop.PixClipRectangle, 'pixClipRectangle');
end;

procedure Test_pixClipRectangleWithBorder;
begin
  AssertFuncLoaded(@Lept.Rop.PixClipRectangleWithBorder, 'pixClipRectangleWithBorder');
end;

procedure Test_pixClipMasked;
begin
  AssertFuncLoaded(@Lept.Rop.PixClipMasked, 'pixClipMasked');
end;

procedure Test_pixCropToMatch;
begin
  AssertFuncLoaded(@Lept.Rop.PixCropToMatch, 'pixCropToMatch');
end;

procedure Test_pixCropToSize;
begin
  AssertFuncLoaded(@Lept.Rop.PixCropToSize, 'pixCropToSize');
end;

procedure Test_pixClipBoxToForeground;
begin
  AssertFuncLoaded(@Lept.Rop.PixClipBoxToForeground, 'pixClipBoxToForeground');
end;

procedure Test_pixClipBoxToEdges;
begin
  AssertFuncLoaded(@Lept.Rop.PixClipBoxToEdges, 'pixClipBoxToEdges');
end;

procedure Test_pixRasterop;
begin
  AssertFuncLoaded(@Lept.Rop.PixRasterop, 'pixRasterop');
end;

procedure Test_pixRasteropVip;
begin
  AssertFuncLoaded(@Lept.Rop.PixRasteropVip, 'pixRasteropVip');
end;

procedure Test_pixRasteropHip;
begin
  AssertFuncLoaded(@Lept.Rop.PixRasteropHip, 'pixRasteropHip');
end;

procedure Test_pixRasteropIP;
begin
  AssertFuncLoaded(@Lept.Rop.PixRasteropIP, 'pixRasteropIP');
end;

procedure Test_pixRasteropFullImage;
begin
  AssertFuncLoaded(@Lept.Rop.PixRasteropFullImage, 'pixRasteropFullImage');
end;

procedure Test_rasteropUniLow;
begin
  AssertFuncLoaded(@Lept.Rop.RasteropUniLow, 'rasteropUniLow');
end;

procedure Test_rasteropLow;
begin
  AssertFuncLoaded(@Lept.Rop.RasteropLow, 'rasteropLow');
end;

procedure Test_rasteropVipLow;
begin
  AssertFuncLoaded(@Lept.Rop.RasteropVipLow, 'rasteropVipLow');
end;

procedure Test_rasteropHipLow;
begin
  AssertFuncLoaded(@Lept.Rop.RasteropHipLow, 'rasteropHipLow');
end;

procedure Test_Func_pixRasterop;
var
  P, S: Pointer;
  Ret: Integer;
begin
  P := CreateGrayPix(100, 100);
  S := CreateGrayPix(50, 50);
  Lept.Pix.PixSetAll(S);
  Ret := Lept.Rop.PixRasterop(P, 10, 10, 50, 50, $00CC, S, 0, 0);
  AssertEqualsInt(0, Ret, 'rasterop ok');
  Lept.Pix.PixDestroy(@S);
  SafePixDestroy(P);
end;

initialization
  RegisterTest('Rop', 'pixCropAlignedToCentroid', @Test_pixCropAlignedToCentroid, []);
  RegisterTest('Rop', 'pixCropImage', @Test_pixCropImage, []);
  RegisterTest('Rop', 'pixSetMaskedCmap', @Test_pixSetMaskedCmap, []);
  RegisterTest('Rop', 'pixResizeImageData', @Test_pixResizeImageData, []);
  RegisterTest('Rop', 'pixCopyColormap', @Test_pixCopyColormap, []);
  RegisterTest('Rop', 'pixTransferAllData', @Test_pixTransferAllData, []);
  RegisterTest('Rop', 'pixGetDimensions', @Test_pixGetDimensions, []);
  RegisterTest('Rop', 'pixSetDimensions', @Test_pixSetDimensions, []);
  RegisterTest('Rop', 'pixCopyDimensions', @Test_pixCopyDimensions, []);
  RegisterTest('Rop', 'pixCopySpp', @Test_pixCopySpp, []);
  RegisterTest('Rop', 'pixCopyResolution', @Test_pixCopyResolution, []);
  RegisterTest('Rop', 'pixCopyInputFormat', @Test_pixCopyInputFormat, []);
  RegisterTest('Rop', 'pixCopyText', @Test_pixCopyText, []);
  RegisterTest('Rop', 'pixCopyBorder', @Test_pixCopyBorder, []);
  RegisterTest('Rop', 'pixCopyRGBComponent', @Test_pixCopyRGBComponent, []);
  RegisterTest('Rop', 'pixEndianByteSwapNew', @Test_pixEndianByteSwapNew, []);
  RegisterTest('Rop', 'pixEndianByteSwap', @Test_pixEndianByteSwap, []);
  RegisterTest('Rop', 'pixEndianTwoByteSwapNew', @Test_pixEndianTwoByteSwapNew, []);
  RegisterTest('Rop', 'pixEndianTwoByteSwap', @Test_pixEndianTwoByteSwap, []);
  RegisterTest('Rop', 'pixSetMasked', @Test_pixSetMasked, []);
  RegisterTest('Rop', 'pixSetMaskedGeneral', @Test_pixSetMaskedGeneral, []);
  RegisterTest('Rop', 'pixCombineMasked', @Test_pixCombineMasked, []);
  RegisterTest('Rop', 'pixCombineMaskedGeneral', @Test_pixCombineMaskedGeneral, []);
  RegisterTest('Rop', 'pixCopyWithBoxa', @Test_pixCopyWithBoxa, []);
  RegisterTest('Rop', 'pixInvert', @Test_pixInvert, []);
  RegisterTest('Rop', 'pixOr', @Test_pixOr, []);
  RegisterTest('Rop', 'pixAnd', @Test_pixAnd, []);
  RegisterTest('Rop', 'pixXor', @Test_pixXor, []);
  RegisterTest('Rop', 'pixSubtract', @Test_pixSubtract, []);
  RegisterTest('Rop', 'pixClipRectangles', @Test_pixClipRectangles, []);
  RegisterTest('Rop', 'pixClipRectangle', @Test_pixClipRectangle, []);
  RegisterTest('Rop', 'pixClipRectangleWithBorder', @Test_pixClipRectangleWithBorder, []);
  RegisterTest('Rop', 'pixClipMasked', @Test_pixClipMasked, []);
  RegisterTest('Rop', 'pixCropToMatch', @Test_pixCropToMatch, []);
  RegisterTest('Rop', 'pixCropToSize', @Test_pixCropToSize, []);
  RegisterTest('Rop', 'pixClipBoxToForeground', @Test_pixClipBoxToForeground, []);
  RegisterTest('Rop', 'pixClipBoxToEdges', @Test_pixClipBoxToEdges, []);
  RegisterTest('Rop', 'pixRasterop', @Test_pixRasterop, []);
  RegisterTest('Rop', 'pixRasteropVip', @Test_pixRasteropVip, []);
  RegisterTest('Rop', 'pixRasteropHip', @Test_pixRasteropHip, []);
  RegisterTest('Rop', 'pixRasteropIP', @Test_pixRasteropIP, []);
  RegisterTest('Rop', 'pixRasteropFullImage', @Test_pixRasteropFullImage, []);
  RegisterTest('Rop', 'rasteropUniLow', @Test_rasteropUniLow, []);
  RegisterTest('Rop', 'rasteropLow', @Test_rasteropLow, []);
  RegisterTest('Rop', 'rasteropVipLow', @Test_rasteropVipLow, []);
  RegisterTest('Rop', 'rasteropHipLow', @Test_rasteropHipLow, []);

  RegisterTest('Rop', 'Func_pixRasterop', @Test_Func_pixRasterop, []);

end.
