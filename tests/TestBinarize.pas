{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestBinarize;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_pixThresholdSpreadNorm;
begin
  AssertFuncLoaded(@Lept.Binarize.PixThresholdSpreadNorm, 'pixThresholdSpreadNorm');
end;

procedure Test_pixOtsuAdaptiveThreshold;
begin
  AssertFuncLoaded(@Lept.Binarize.PixOtsuAdaptiveThreshold, 'pixOtsuAdaptiveThreshold');
end;

procedure Test_pixOtsuThreshOnBackgroundNorm;
begin
  AssertFuncLoaded(@Lept.Binarize.PixOtsuThreshOnBackgroundNorm, 'pixOtsuThreshOnBackgroundNorm');
end;

procedure Test_pixMaskedThreshOnBackgroundNorm;
begin
  AssertFuncLoaded(@Lept.Binarize.PixMaskedThreshOnBackgroundNorm, 'pixMaskedThreshOnBackgroundNorm');
end;

procedure Test_pixSauvolaBinarizeTiled;
begin
  AssertFuncLoaded(@Lept.Binarize.PixSauvolaBinarizeTiled, 'pixSauvolaBinarizeTiled');
end;

procedure Test_pixSauvolaBinarize;
begin
  AssertFuncLoaded(@Lept.Binarize.PixSauvolaBinarize, 'pixSauvolaBinarize');
end;

procedure Test_pixSauvolaOnContrastNorm;
begin
  AssertFuncLoaded(@Lept.Binarize.PixSauvolaOnContrastNorm, 'pixSauvolaOnContrastNorm');
end;

procedure Test_pixThreshOnDoubleNorm;
begin
  AssertFuncLoaded(@Lept.Binarize.PixThreshOnDoubleNorm, 'pixThreshOnDoubleNorm');
end;

procedure Test_pixThresholdByConnComp;
begin
  AssertFuncLoaded(@Lept.Binarize.PixThresholdByConnComp, 'pixThresholdByConnComp');
end;

procedure Test_pixThresholdByHisto;
begin
  AssertFuncLoaded(@Lept.Binarize.PixThresholdByHisto, 'pixThresholdByHisto');
end;

procedure Test_pixDitherToBinary;
begin
  AssertFuncLoaded(@Lept.Binarize.PixDitherToBinary, 'pixDitherToBinary');
end;

procedure Test_pixDitherToBinarySpec;
begin
  AssertFuncLoaded(@Lept.Binarize.PixDitherToBinarySpec, 'pixDitherToBinarySpec');
end;

procedure Test_pixThresholdToBinary;
begin
  AssertFuncLoaded(@Lept.Binarize.PixThresholdToBinary, 'pixThresholdToBinary');
end;

procedure Test_pixVarThresholdToBinary;
begin
  AssertFuncLoaded(@Lept.Binarize.PixVarThresholdToBinary, 'pixVarThresholdToBinary');
end;

procedure Test_pixGenerateMaskByValue;
begin
  AssertFuncLoaded(@Lept.Binarize.PixGenerateMaskByValue, 'pixGenerateMaskByValue');
end;

procedure Test_pixGenerateMaskByBand;
begin
  AssertFuncLoaded(@Lept.Binarize.PixGenerateMaskByBand, 'pixGenerateMaskByBand');
end;

procedure Test_pixDitherTo2bpp;
begin
  AssertFuncLoaded(@Lept.Binarize.PixDitherTo2bpp, 'pixDitherTo2bpp');
end;

procedure Test_pixDitherTo2bppSpec;
begin
  AssertFuncLoaded(@Lept.Binarize.PixDitherTo2bppSpec, 'pixDitherTo2bppSpec');
end;

procedure Test_pixThresholdTo2bpp;
begin
  AssertFuncLoaded(@Lept.Binarize.PixThresholdTo2bpp, 'pixThresholdTo2bpp');
end;

procedure Test_pixThresholdTo4bpp;
begin
  AssertFuncLoaded(@Lept.Binarize.PixThresholdTo4bpp, 'pixThresholdTo4bpp');
end;

procedure Test_pixThresholdOn8bpp;
begin
  AssertFuncLoaded(@Lept.Binarize.PixThresholdOn8bpp, 'pixThresholdOn8bpp');
end;

procedure Test_pixThresholdGrayArb;
begin
  AssertFuncLoaded(@Lept.Binarize.PixThresholdGrayArb, 'pixThresholdGrayArb');
end;

procedure Test_pixGenerateMaskByBand32;
begin
  AssertFuncLoaded(@Lept.Binarize.PixGenerateMaskByBand32, 'pixGenerateMaskByBand32');
end;

procedure Test_pixGenerateMaskByDiscr32;
begin
  AssertFuncLoaded(@Lept.Binarize.PixGenerateMaskByDiscr32, 'pixGenerateMaskByDiscr32');
end;

procedure Test_pixThresholdPixelSum;
begin
  AssertFuncLoaded(@Lept.Binarize.PixThresholdPixelSum, 'pixThresholdPixelSum');
end;

procedure Test_pixThresholdForFgBg;
begin
  AssertFuncLoaded(@Lept.Binarize.PixThresholdForFgBg, 'pixThresholdForFgBg');
end;

procedure Test_pixThresholdToValue;
begin
  AssertFuncLoaded(@Lept.Binarize.PixThresholdToValue, 'pixThresholdToValue');
end;

procedure Test_pixThreshold8;
begin
  AssertFuncLoaded(@Lept.Binarize.PixThreshold8, 'pixThreshold8');
end;

procedure Test_Func_pixThresholdToBinary;
var
  P, B: Pointer;
begin
  P := CreateGrayPix(100, 80);
  B := Lept.Binarize.PixThresholdToBinary(P, 128);
  AssertNotNil(B, 'thresholdToBinary');
  AssertEqualsInt(1, Lept.Pix.PixGetDepth(B), 'binary depth');
  Lept.Pix.PixDestroy(@B);
  SafePixDestroy(P);
end;

procedure Test_Func_pixDitherToBinary;
var
  P, B: Pointer;
begin
  P := CreateGrayPix(80, 60);
  B := Lept.Binarize.PixDitherToBinary(P);
  AssertNotNil(B, 'ditherToBinary');
  AssertEqualsInt(1, Lept.Pix.PixGetDepth(B), 'binary depth');
  Lept.Pix.PixDestroy(@B);
  SafePixDestroy(P);
end;

procedure Test_Func_pixThresholdToValue;
var
  P, R: Pointer;
begin
  P := CreateGrayPix(50, 50);
  Lept.Pix.PixSetPixel(P, 0, 0, 100);
  R := Lept.Binarize.PixThresholdToValue(nil, P, 128, 0);
  AssertNotNil(R, 'thresholdToValue');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

initialization
  RegisterTest('Binarize', 'pixThresholdSpreadNorm', @Test_pixThresholdSpreadNorm, []);
  RegisterTest('Binarize', 'pixOtsuAdaptiveThreshold', @Test_pixOtsuAdaptiveThreshold, []);
  RegisterTest('Binarize', 'pixOtsuThreshOnBackgroundNorm', @Test_pixOtsuThreshOnBackgroundNorm, []);
  RegisterTest('Binarize', 'pixMaskedThreshOnBackgroundNorm', @Test_pixMaskedThreshOnBackgroundNorm, []);
  RegisterTest('Binarize', 'pixSauvolaBinarizeTiled', @Test_pixSauvolaBinarizeTiled, []);
  RegisterTest('Binarize', 'pixSauvolaBinarize', @Test_pixSauvolaBinarize, []);
  RegisterTest('Binarize', 'pixSauvolaOnContrastNorm', @Test_pixSauvolaOnContrastNorm, []);
  RegisterTest('Binarize', 'pixThreshOnDoubleNorm', @Test_pixThreshOnDoubleNorm, []);
  RegisterTest('Binarize', 'pixThresholdByConnComp', @Test_pixThresholdByConnComp, []);
  RegisterTest('Binarize', 'pixThresholdByHisto', @Test_pixThresholdByHisto, []);
  RegisterTest('Binarize', 'pixDitherToBinary', @Test_pixDitherToBinary, []);
  RegisterTest('Binarize', 'pixDitherToBinarySpec', @Test_pixDitherToBinarySpec, []);
  RegisterTest('Binarize', 'pixThresholdToBinary', @Test_pixThresholdToBinary, []);
  RegisterTest('Binarize', 'pixVarThresholdToBinary', @Test_pixVarThresholdToBinary, []);
  RegisterTest('Binarize', 'pixGenerateMaskByValue', @Test_pixGenerateMaskByValue, []);
  RegisterTest('Binarize', 'pixGenerateMaskByBand', @Test_pixGenerateMaskByBand, []);
  RegisterTest('Binarize', 'pixDitherTo2bpp', @Test_pixDitherTo2bpp, []);
  RegisterTest('Binarize', 'pixDitherTo2bppSpec', @Test_pixDitherTo2bppSpec, []);
  RegisterTest('Binarize', 'pixThresholdTo2bpp', @Test_pixThresholdTo2bpp, []);
  RegisterTest('Binarize', 'pixThresholdTo4bpp', @Test_pixThresholdTo4bpp, []);
  RegisterTest('Binarize', 'pixThresholdOn8bpp', @Test_pixThresholdOn8bpp, []);
  RegisterTest('Binarize', 'pixThresholdGrayArb', @Test_pixThresholdGrayArb, []);
  RegisterTest('Binarize', 'pixGenerateMaskByBand32', @Test_pixGenerateMaskByBand32, []);
  RegisterTest('Binarize', 'pixGenerateMaskByDiscr32', @Test_pixGenerateMaskByDiscr32, []);
  RegisterTest('Binarize', 'pixThresholdPixelSum', @Test_pixThresholdPixelSum, []);
  RegisterTest('Binarize', 'pixThresholdForFgBg', @Test_pixThresholdForFgBg, []);
  RegisterTest('Binarize', 'pixThresholdToValue', @Test_pixThresholdToValue, []);
  RegisterTest('Binarize', 'pixThreshold8', @Test_pixThreshold8, []);

  RegisterTest('Binarize', 'Func_pixThresholdToBinary', @Test_Func_pixThresholdToBinary, []);
  RegisterTest('Binarize', 'Func_pixDitherToBinary', @Test_Func_pixDitherToBinary, []);
  RegisterTest('Binarize', 'Func_pixThresholdToValue', @Test_Func_pixThresholdToValue, []);

end.
