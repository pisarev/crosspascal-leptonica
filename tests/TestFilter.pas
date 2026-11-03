{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestFilter;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_pixBilateral;
begin
  AssertFuncLoaded(@Lept.Filter.PixBilateral, 'pixBilateral');
end;

procedure Test_pixBilateralGray;
begin
  AssertFuncLoaded(@Lept.Filter.PixBilateralGray, 'pixBilateralGray');
end;

procedure Test_pixBilateralExact;
begin
  AssertFuncLoaded(@Lept.Filter.PixBilateralExact, 'pixBilateralExact');
end;

procedure Test_pixBilateralGrayExact;
begin
  AssertFuncLoaded(@Lept.Filter.PixBilateralGrayExact, 'pixBilateralGrayExact');
end;

procedure Test_pixBlockBilateralExact;
begin
  AssertFuncLoaded(@Lept.Filter.PixBlockBilateralExact, 'pixBlockBilateralExact');
end;

procedure Test_pixBlockconv;
begin
  AssertFuncLoaded(@Lept.Filter.PixBlockconv, 'pixBlockconv');
end;

procedure Test_pixBlockconvGray;
begin
  AssertFuncLoaded(@Lept.Filter.PixBlockconvGray, 'pixBlockconvGray');
end;

procedure Test_pixBlockconvAccum;
begin
  AssertFuncLoaded(@Lept.Filter.PixBlockconvAccum, 'pixBlockconvAccum');
end;

procedure Test_pixBlockconvGrayUnnormalized;
begin
  AssertFuncLoaded(@Lept.Filter.PixBlockconvGrayUnnormalized, 'pixBlockconvGrayUnnormalized');
end;

procedure Test_pixBlockconvTiled;
begin
  AssertFuncLoaded(@Lept.Filter.PixBlockconvTiled, 'pixBlockconvTiled');
end;

procedure Test_pixBlockconvGrayTile;
begin
  AssertFuncLoaded(@Lept.Filter.PixBlockconvGrayTile, 'pixBlockconvGrayTile');
end;

procedure Test_pixWindowedStats;
begin
  AssertFuncLoaded(@Lept.Filter.PixWindowedStats, 'pixWindowedStats');
end;

procedure Test_pixWindowedMean;
begin
  AssertFuncLoaded(@Lept.Filter.PixWindowedMean, 'pixWindowedMean');
end;

procedure Test_pixWindowedMeanSquare;
begin
  AssertFuncLoaded(@Lept.Filter.PixWindowedMeanSquare, 'pixWindowedMeanSquare');
end;

procedure Test_pixWindowedVariance;
begin
  AssertFuncLoaded(@Lept.Filter.PixWindowedVariance, 'pixWindowedVariance');
end;

procedure Test_pixBlockrank;
begin
  AssertFuncLoaded(@Lept.Filter.PixBlockrank, 'pixBlockrank');
end;

procedure Test_pixBlocksum;
begin
  AssertFuncLoaded(@Lept.Filter.PixBlocksum, 'pixBlocksum');
end;

procedure Test_pixCensusTransform;
begin
  AssertFuncLoaded(@Lept.Filter.PixCensusTransform, 'pixCensusTransform');
end;

procedure Test_pixConvolve;
begin
  AssertFuncLoaded(@Lept.Filter.PixConvolve, 'pixConvolve');
end;

procedure Test_pixConvolveSep;
begin
  AssertFuncLoaded(@Lept.Filter.PixConvolveSep, 'pixConvolveSep');
end;

procedure Test_pixConvolveRGB;
begin
  AssertFuncLoaded(@Lept.Filter.PixConvolveRGB, 'pixConvolveRGB');
end;

procedure Test_pixConvolveRGBSep;
begin
  AssertFuncLoaded(@Lept.Filter.PixConvolveRGBSep, 'pixConvolveRGBSep');
end;

procedure Test_pixConvolveWithBias;
begin
  AssertFuncLoaded(@Lept.Filter.PixConvolveWithBias, 'pixConvolveWithBias');
end;

procedure Test_pixSobelEdgeFilter;
begin
  AssertFuncLoaded(@Lept.Filter.PixSobelEdgeFilter, 'pixSobelEdgeFilter');
end;

procedure Test_pixTwoSidedEdgeFilter;
begin
  AssertFuncLoaded(@Lept.Filter.PixTwoSidedEdgeFilter, 'pixTwoSidedEdgeFilter');
end;

procedure Test_pixMeasureSaturation;
begin
  AssertFuncLoaded(@Lept.Filter.PixMeasureSaturation, 'pixMeasureSaturation');
end;

procedure Test_pixSetAllGray;
begin
  AssertFuncLoaded(@Lept.Filter.PixSetAllGray, 'pixSetAllGray');
end;

procedure Test_pixSetAllArbitrary;
begin
  AssertFuncLoaded(@Lept.Filter.PixSetAllArbitrary, 'pixSetAllArbitrary');
end;

procedure Test_pixWindowedVarianceOnLine;
begin
  AssertFuncLoaded(@Lept.Filter.PixWindowedVarianceOnLine, 'pixWindowedVarianceOnLine');
end;

procedure Test_pixAddConstantGray;
begin
  AssertFuncLoaded(@Lept.Filter.PixAddConstantGray, 'pixAddConstantGray');
end;

procedure Test_pixMinOrMax;
begin
  AssertFuncLoaded(@Lept.Filter.PixMinOrMax, 'pixMinOrMax');
end;

procedure Test_pixMaxDynamicRange;
begin
  AssertFuncLoaded(@Lept.Filter.PixMaxDynamicRange, 'pixMaxDynamicRange');
end;

procedure Test_pixMaxDynamicRangeRGB;
begin
  AssertFuncLoaded(@Lept.Filter.PixMaxDynamicRangeRGB, 'pixMaxDynamicRangeRGB');
end;

procedure Test_pixRankFilter;
begin
  AssertFuncLoaded(@Lept.Filter.PixRankFilter, 'pixRankFilter');
end;

procedure Test_pixRankFilterRGB;
begin
  AssertFuncLoaded(@Lept.Filter.PixRankFilterRGB, 'pixRankFilterRGB');
end;

procedure Test_pixRankFilterGray;
begin
  AssertFuncLoaded(@Lept.Filter.PixRankFilterGray, 'pixRankFilterGray');
end;

procedure Test_pixMedianFilter;
begin
  AssertFuncLoaded(@Lept.Filter.PixMedianFilter, 'pixMedianFilter');
end;

procedure Test_pixRankFilterWithScaling;
begin
  AssertFuncLoaded(@Lept.Filter.PixRankFilterWithScaling, 'pixRankFilterWithScaling');
end;

procedure Test_Func_pixBlockconv;
var
  P, R: Pointer;
begin
  P := CreateGrayPix(100, 80);
  R := Lept.Filter.PixBlockconv(P, 2, 2);
  AssertNotNil(R, 'blockconv');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

procedure Test_Func_pixMedianFilter;
var
  P, R: Pointer;
begin
  P := CreateGrayPix(100, 80);
  R := Lept.Filter.PixMedianFilter(P, 3, 3);
  AssertNotNil(R, 'medianFilter');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

procedure Test_Func_pixRankFilter;
var
  P, R: Pointer;
begin
  P := CreateGrayPix(100, 80);
  R := Lept.Filter.PixRankFilter(P, 3, 3, 0.5);
  AssertNotNil(R, 'rankFilter');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

procedure Test_Func_pixSobelEdgeFilter;
var
  P, R: Pointer;
begin
  P := CreateGrayPix(100, 80);
  R := Lept.Filter.PixSobelEdgeFilter(P, 2);
  AssertNotNil(R, 'sobelEdgeFilter');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

initialization
  RegisterTest('Filter', 'pixBilateral', @Test_pixBilateral, []);
  RegisterTest('Filter', 'pixBilateralGray', @Test_pixBilateralGray, []);
  RegisterTest('Filter', 'pixBilateralExact', @Test_pixBilateralExact, []);
  RegisterTest('Filter', 'pixBilateralGrayExact', @Test_pixBilateralGrayExact, []);
  RegisterTest('Filter', 'pixBlockBilateralExact', @Test_pixBlockBilateralExact, []);
  RegisterTest('Filter', 'pixBlockconv', @Test_pixBlockconv, []);
  RegisterTest('Filter', 'pixBlockconvGray', @Test_pixBlockconvGray, []);
  RegisterTest('Filter', 'pixBlockconvAccum', @Test_pixBlockconvAccum, []);
  RegisterTest('Filter', 'pixBlockconvGrayUnnormalized', @Test_pixBlockconvGrayUnnormalized, []);
  RegisterTest('Filter', 'pixBlockconvTiled', @Test_pixBlockconvTiled, []);
  RegisterTest('Filter', 'pixBlockconvGrayTile', @Test_pixBlockconvGrayTile, []);
  RegisterTest('Filter', 'pixWindowedStats', @Test_pixWindowedStats, []);
  RegisterTest('Filter', 'pixWindowedMean', @Test_pixWindowedMean, []);
  RegisterTest('Filter', 'pixWindowedMeanSquare', @Test_pixWindowedMeanSquare, []);
  RegisterTest('Filter', 'pixWindowedVariance', @Test_pixWindowedVariance, []);
  RegisterTest('Filter', 'pixBlockrank', @Test_pixBlockrank, []);
  RegisterTest('Filter', 'pixBlocksum', @Test_pixBlocksum, []);
  RegisterTest('Filter', 'pixCensusTransform', @Test_pixCensusTransform, []);
  RegisterTest('Filter', 'pixConvolve', @Test_pixConvolve, []);
  RegisterTest('Filter', 'pixConvolveSep', @Test_pixConvolveSep, []);
  RegisterTest('Filter', 'pixConvolveRGB', @Test_pixConvolveRGB, []);
  RegisterTest('Filter', 'pixConvolveRGBSep', @Test_pixConvolveRGBSep, []);
  RegisterTest('Filter', 'pixConvolveWithBias', @Test_pixConvolveWithBias, []);
  RegisterTest('Filter', 'pixSobelEdgeFilter', @Test_pixSobelEdgeFilter, []);
  RegisterTest('Filter', 'pixTwoSidedEdgeFilter', @Test_pixTwoSidedEdgeFilter, []);
  RegisterTest('Filter', 'pixMeasureSaturation', @Test_pixMeasureSaturation, []);
  RegisterTest('Filter', 'pixSetAllGray', @Test_pixSetAllGray, []);
  RegisterTest('Filter', 'pixSetAllArbitrary', @Test_pixSetAllArbitrary, []);
  RegisterTest('Filter', 'pixWindowedVarianceOnLine', @Test_pixWindowedVarianceOnLine, []);
  RegisterTest('Filter', 'pixAddConstantGray', @Test_pixAddConstantGray, []);
  RegisterTest('Filter', 'pixMinOrMax', @Test_pixMinOrMax, []);
  RegisterTest('Filter', 'pixMaxDynamicRange', @Test_pixMaxDynamicRange, []);
  RegisterTest('Filter', 'pixMaxDynamicRangeRGB', @Test_pixMaxDynamicRangeRGB, []);
  RegisterTest('Filter', 'pixRankFilter', @Test_pixRankFilter, []);
  RegisterTest('Filter', 'pixRankFilterRGB', @Test_pixRankFilterRGB, []);
  RegisterTest('Filter', 'pixRankFilterGray', @Test_pixRankFilterGray, []);
  RegisterTest('Filter', 'pixMedianFilter', @Test_pixMedianFilter, []);
  RegisterTest('Filter', 'pixRankFilterWithScaling', @Test_pixRankFilterWithScaling, []);

  RegisterTest('Filter', 'Func_pixBlockconv', @Test_Func_pixBlockconv, []);
  RegisterTest('Filter', 'Func_pixMedianFilter', @Test_Func_pixMedianFilter, []);
  RegisterTest('Filter', 'Func_pixRankFilter', @Test_Func_pixRankFilter, []);
  RegisterTest('Filter', 'Func_pixSobelEdgeFilter', @Test_Func_pixSobelEdgeFilter, []);

end.
