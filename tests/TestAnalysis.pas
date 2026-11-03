{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestAnalysis;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_pixFindBaselines;
begin
  AssertFuncLoaded(@Lept.Analysis.PixFindBaselines, 'pixFindBaselines');
end;

procedure Test_pixFindBaselinesGen;
begin
  AssertFuncLoaded(@Lept.Analysis.PixFindBaselinesGen, 'pixFindBaselinesGen');
end;

procedure Test_pixDeskewLocal;
begin
  AssertFuncLoaded(@Lept.Analysis.PixDeskewLocal, 'pixDeskewLocal');
end;

procedure Test_pixGetLocalSkewTransform;
begin
  AssertFuncLoaded(@Lept.Analysis.PixGetLocalSkewTransform, 'pixGetLocalSkewTransform');
end;

procedure Test_pixGetLocalSkewAngles;
begin
  AssertFuncLoaded(@Lept.Analysis.PixGetLocalSkewAngles, 'pixGetLocalSkewAngles');
end;

procedure Test_pixCorrelationBinary;
begin
  AssertFuncLoaded(@Lept.Analysis.PixCorrelationBinary, 'pixCorrelationBinary');
end;

procedure Test_pixCompareBinary;
begin
  AssertFuncLoaded(@Lept.Analysis.PixCompareBinary, 'pixCompareBinary');
end;

procedure Test_pixCompareGrayOrRGB;
begin
  AssertFuncLoaded(@Lept.Analysis.PixCompareGrayOrRGB, 'pixCompareGrayOrRGB');
end;

procedure Test_pixCompareGray;
begin
  AssertFuncLoaded(@Lept.Analysis.PixCompareGray, 'pixCompareGray');
end;

procedure Test_pixCompareRGB;
begin
  AssertFuncLoaded(@Lept.Analysis.PixCompareRGB, 'pixCompareRGB');
end;

procedure Test_pixCompareTiled;
begin
  AssertFuncLoaded(@Lept.Analysis.PixCompareTiled, 'pixCompareTiled');
end;

procedure Test_pixCompareRankDifference;
begin
  AssertFuncLoaded(@Lept.Analysis.PixCompareRankDifference, 'pixCompareRankDifference');
end;

procedure Test_pixComparePhotoRegionsByHisto;
begin
  AssertFuncLoaded(@Lept.Analysis.PixComparePhotoRegionsByHisto, 'pixComparePhotoRegionsByHisto');
end;

procedure Test_pixCompareGrayByHisto;
begin
  AssertFuncLoaded(@Lept.Analysis.PixCompareGrayByHisto, 'pixCompareGrayByHisto');
end;

procedure Test_pixCompareWithTranslation;
begin
  AssertFuncLoaded(@Lept.Analysis.PixCompareWithTranslation, 'pixCompareWithTranslation');
end;

procedure Test_pixBestCorrelation;
begin
  AssertFuncLoaded(@Lept.Analysis.PixBestCorrelation, 'pixBestCorrelation');
end;

procedure Test_pixConnComp;
begin
  AssertFuncLoaded(@Lept.Analysis.PixConnComp, 'pixConnComp');
end;

procedure Test_pixConnCompPixa;
begin
  AssertFuncLoaded(@Lept.Analysis.PixConnCompPixa, 'pixConnCompPixa');
end;

procedure Test_pixConnCompBB;
begin
  AssertFuncLoaded(@Lept.Analysis.PixConnCompBB, 'pixConnCompBB');
end;

procedure Test_pixCountConnComp;
begin
  AssertFuncLoaded(@Lept.Analysis.PixCountConnComp, 'pixCountConnComp');
end;

procedure Test_pixCorrelationScore;
begin
  AssertFuncLoaded(@Lept.Analysis.PixCorrelationScore, 'pixCorrelationScore');
end;

procedure Test_pixCorrelationScoreThresholded;
begin
  AssertFuncLoaded(@Lept.Analysis.PixCorrelationScoreThresholded, 'pixCorrelationScoreThresholded');
end;

procedure Test_pixCorrelationScoreSimple;
begin
  AssertFuncLoaded(@Lept.Analysis.PixCorrelationScoreSimple, 'pixCorrelationScoreSimple');
end;

procedure Test_pixCorrelationScoreShifted;
begin
  AssertFuncLoaded(@Lept.Analysis.PixCorrelationScoreShifted, 'pixCorrelationScoreShifted');
end;

procedure Test_pixFindLargestRectangle;
begin
  AssertFuncLoaded(@Lept.Analysis.PixFindLargestRectangle, 'pixFindLargestRectangle');
end;

procedure Test_pixZero;
begin
  AssertFuncLoaded(@Lept.Analysis.PixZero, 'pixZero');
end;

procedure Test_pixForegroundFraction;
begin
  AssertFuncLoaded(@Lept.Analysis.PixForegroundFraction, 'pixForegroundFraction');
end;

procedure Test_pixCountPixels;
begin
  AssertFuncLoaded(@Lept.Analysis.PixCountPixels, 'pixCountPixels');
end;

procedure Test_pixCountPixelsInRect;
begin
  AssertFuncLoaded(@Lept.Analysis.PixCountPixelsInRect, 'pixCountPixelsInRect');
end;

procedure Test_pixCountByRow;
begin
  AssertFuncLoaded(@Lept.Analysis.PixCountByRow, 'pixCountByRow');
end;

procedure Test_pixCountByColumn;
begin
  AssertFuncLoaded(@Lept.Analysis.PixCountByColumn, 'pixCountByColumn');
end;

procedure Test_pixCountPixelsByRow;
begin
  AssertFuncLoaded(@Lept.Analysis.PixCountPixelsByRow, 'pixCountPixelsByRow');
end;

procedure Test_pixCountPixelsByColumn;
begin
  AssertFuncLoaded(@Lept.Analysis.PixCountPixelsByColumn, 'pixCountPixelsByColumn');
end;

procedure Test_pixCountPixelsInRow;
begin
  AssertFuncLoaded(@Lept.Analysis.PixCountPixelsInRow, 'pixCountPixelsInRow');
end;

procedure Test_pixAverageByRow;
begin
  AssertFuncLoaded(@Lept.Analysis.PixAverageByRow, 'pixAverageByRow');
end;

procedure Test_pixAverageByColumn;
begin
  AssertFuncLoaded(@Lept.Analysis.PixAverageByColumn, 'pixAverageByColumn');
end;

procedure Test_pixAverageInRect;
begin
  AssertFuncLoaded(@Lept.Analysis.PixAverageInRect, 'pixAverageInRect');
end;

procedure Test_pixAverageInRectRGB;
begin
  AssertFuncLoaded(@Lept.Analysis.PixAverageInRectRGB, 'pixAverageInRectRGB');
end;

procedure Test_pixVarianceInRect;
begin
  AssertFuncLoaded(@Lept.Analysis.PixVarianceInRect, 'pixVarianceInRect');
end;

procedure Test_pixAbsDiffByRow;
begin
  AssertFuncLoaded(@Lept.Analysis.PixAbsDiffByRow, 'pixAbsDiffByRow');
end;

procedure Test_pixAbsDiffByColumn;
begin
  AssertFuncLoaded(@Lept.Analysis.PixAbsDiffByColumn, 'pixAbsDiffByColumn');
end;

procedure Test_pixAbsDiffInRect;
begin
  AssertFuncLoaded(@Lept.Analysis.PixAbsDiffInRect, 'pixAbsDiffInRect');
end;

procedure Test_pixAbsDiffOnLine;
begin
  AssertFuncLoaded(@Lept.Analysis.PixAbsDiffOnLine, 'pixAbsDiffOnLine');
end;

procedure Test_pixGetGrayHistogram;
begin
  AssertFuncLoaded(@Lept.Analysis.PixGetGrayHistogram, 'pixGetGrayHistogram');
end;

procedure Test_pixGetGrayHistogramMasked;
begin
  AssertFuncLoaded(@Lept.Analysis.PixGetGrayHistogramMasked, 'pixGetGrayHistogramMasked');
end;

procedure Test_pixGetGrayHistogramInRect;
begin
  AssertFuncLoaded(@Lept.Analysis.PixGetGrayHistogramInRect, 'pixGetGrayHistogramInRect');
end;

procedure Test_pixGetGrayHistogramTiled;
begin
  AssertFuncLoaded(@Lept.Analysis.PixGetGrayHistogramTiled, 'pixGetGrayHistogramTiled');
end;

procedure Test_pixGetColorHistogram;
begin
  AssertFuncLoaded(@Lept.Analysis.PixGetColorHistogram, 'pixGetColorHistogram');
end;

procedure Test_pixGetColorHistogramMasked;
begin
  AssertFuncLoaded(@Lept.Analysis.PixGetColorHistogramMasked, 'pixGetColorHistogramMasked');
end;

procedure Test_pixGetCmapHistogram;
begin
  AssertFuncLoaded(@Lept.Analysis.PixGetCmapHistogram, 'pixGetCmapHistogram');
end;

procedure Test_pixGetCmapHistogramMasked;
begin
  AssertFuncLoaded(@Lept.Analysis.PixGetCmapHistogramMasked, 'pixGetCmapHistogramMasked');
end;

procedure Test_pixGetCmapHistogramInRect;
begin
  AssertFuncLoaded(@Lept.Analysis.PixGetCmapHistogramInRect, 'pixGetCmapHistogramInRect');
end;

procedure Test_pixGetRankValue;
begin
  AssertFuncLoaded(@Lept.Analysis.PixGetRankValue, 'pixGetRankValue');
end;

procedure Test_pixGetRankValueMaskedRGB;
begin
  AssertFuncLoaded(@Lept.Analysis.PixGetRankValueMaskedRGB, 'pixGetRankValueMaskedRGB');
end;

procedure Test_pixGetRankValueMasked;
begin
  AssertFuncLoaded(@Lept.Analysis.PixGetRankValueMasked, 'pixGetRankValueMasked');
end;

procedure Test_pixGetPixelAverage;
begin
  AssertFuncLoaded(@Lept.Analysis.PixGetPixelAverage, 'pixGetPixelAverage');
end;

procedure Test_pixGetPixelStats;
begin
  AssertFuncLoaded(@Lept.Analysis.PixGetPixelStats, 'pixGetPixelStats');
end;

procedure Test_pixRowStats;
begin
  AssertFuncLoaded(@Lept.Analysis.PixRowStats, 'pixRowStats');
end;

procedure Test_pixColumnStats;
begin
  AssertFuncLoaded(@Lept.Analysis.PixColumnStats, 'pixColumnStats');
end;

procedure Test_pixGetExtremeValue;
begin
  AssertFuncLoaded(@Lept.Analysis.PixGetExtremeValue, 'pixGetExtremeValue');
end;

procedure Test_pixClipToForeground;
begin
  AssertFuncLoaded(@Lept.Analysis.PixClipToForeground, 'pixClipToForeground');
end;

procedure Test_pixTestClipToForeground;
begin
  AssertFuncLoaded(@Lept.Analysis.PixTestClipToForeground, 'pixTestClipToForeground');
end;

procedure Test_pixScanForForeground;
begin
  AssertFuncLoaded(@Lept.Analysis.PixScanForForeground, 'pixScanForForeground');
end;

procedure Test_pixScanForEdge;
begin
  AssertFuncLoaded(@Lept.Analysis.PixScanForEdge, 'pixScanForEdge');
end;

procedure Test_pixMinMaxNearLine;
begin
  AssertFuncLoaded(@Lept.Analysis.PixMinMaxNearLine, 'pixMinMaxNearLine');
end;

procedure Test_pixAbsDifference;
begin
  AssertFuncLoaded(@Lept.Analysis.PixAbsDifference, 'pixAbsDifference');
end;

procedure Test_pixConnCompTransform;
begin
  AssertFuncLoaded(@Lept.Analysis.PixConnCompTransform, 'pixConnCompTransform');
end;

procedure Test_pixConnCompAreaTransform;
begin
  AssertFuncLoaded(@Lept.Analysis.PixConnCompAreaTransform, 'pixConnCompAreaTransform');
end;

procedure Test_pixConnCompIncrInit;
begin
  AssertFuncLoaded(@Lept.Analysis.PixConnCompIncrInit, 'pixConnCompIncrInit');
end;

procedure Test_pixConnCompIncrAdd;
begin
  AssertFuncLoaded(@Lept.Analysis.PixConnCompIncrAdd, 'pixConnCompIncrAdd');
end;

procedure Test_pixVarianceInRectangle;
begin
  AssertFuncLoaded(@Lept.Analysis.PixVarianceInRectangle, 'pixVarianceInRectangle');
end;

procedure Test_pixDeskewBarcode;
begin
  AssertFuncLoaded(@Lept.Analysis.PixDeskewBarcode, 'pixDeskewBarcode');
end;

procedure Test_pixDeskewBoth;
begin
  AssertFuncLoaded(@Lept.Analysis.PixDeskewBoth, 'pixDeskewBoth');
end;

procedure Test_pixDeskew;
begin
  AssertFuncLoaded(@Lept.Analysis.PixDeskew, 'pixDeskew');
end;

procedure Test_pixFindSkewAndDeskew;
begin
  AssertFuncLoaded(@Lept.Analysis.PixFindSkewAndDeskew, 'pixFindSkewAndDeskew');
end;

procedure Test_pixDeskewGeneral;
begin
  AssertFuncLoaded(@Lept.Analysis.PixDeskewGeneral, 'pixDeskewGeneral');
end;

procedure Test_pixFindSkew;
begin
  AssertFuncLoaded(@Lept.Analysis.PixFindSkew, 'pixFindSkew');
end;

procedure Test_pixFindSkewSweep;
begin
  AssertFuncLoaded(@Lept.Analysis.PixFindSkewSweep, 'pixFindSkewSweep');
end;

procedure Test_pixFindSkewSweepAndSearch;
begin
  AssertFuncLoaded(@Lept.Analysis.PixFindSkewSweepAndSearch, 'pixFindSkewSweepAndSearch');
end;

procedure Test_pixFindSkewSweepAndSearchScore;
begin
  AssertFuncLoaded(@Lept.Analysis.PixFindSkewSweepAndSearchScore, 'pixFindSkewSweepAndSearchScore');
end;

procedure Test_pixFindSkewSweepAndSearchScorePivot;
begin
  AssertFuncLoaded(@Lept.Analysis.PixFindSkewSweepAndSearchScorePivot, 'pixFindSkewSweepAndSearchScorePivot');
end;

procedure Test_pixFindSkewOrthogonalRange;
begin
  AssertFuncLoaded(@Lept.Analysis.PixFindSkewOrthogonalRange, 'pixFindSkewOrthogonalRange');
end;

procedure Test_Func_pixCountPixels;
var
  P: Pointer;
  Count: Integer;
begin
  P := CreateBinaryPix(100, 100);
  Count := 0;
  Lept.Analysis.PixCountPixels(P, @Count, nil);
  AssertEqualsInt(0, Count, 'empty binary = 0');
  SafePixDestroy(P);
end;

procedure Test_Func_pixForegroundFraction;
var
  P: Pointer;
  Fract: Single;
begin
  P := CreateBinaryPix(100, 100);
  Fract := -1;
  Lept.Analysis.PixForegroundFraction(P, @Fract);
  AssertTrue(Fract >= 0, 'fraction >= 0');
  SafePixDestroy(P);
end;

procedure Test_Func_pixGetGrayHistogram;
var
  P, H: Pointer;
begin
  P := CreateGrayPix(50, 50);
  H := Lept.Analysis.PixGetGrayHistogram(P, 1);
  AssertNotNil(H, 'histogram');
  Lept.Numa.NumaDestroy(@H);
  SafePixDestroy(P);
end;

procedure Test_Func_pixDeskew;
var
  P, R: Pointer;
begin
  P := CreateBinaryPix(200, 200);
  R := Lept.Analysis.PixDeskew(P, 0);
  AssertNotNil(R, 'deskew');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

procedure Test_Func_pixCompareGray;
var
  P1, P2: Pointer;
  Same: Integer;
  Diff, RmsDiff: Single;
begin
  P1 := CreateGrayPix(50, 50);
  P2 := Lept.Pix.PixCopy(nil, P1);
  Same := 0;
  Diff := 0;
  RmsDiff := 0;
  Lept.Analysis.PixCompareGray(P1, P2, 2, 0, @Same, @Diff, @RmsDiff, nil);
  AssertEqualsInt(1, Same, 'identical images');
  Lept.Pix.PixDestroy(@P2);
  SafePixDestroy(P1);
end;

initialization
  RegisterTest('Analysis', 'pixFindBaselines', @Test_pixFindBaselines, []);
  RegisterTest('Analysis', 'pixFindBaselinesGen', @Test_pixFindBaselinesGen, []);
  RegisterTest('Analysis', 'pixDeskewLocal', @Test_pixDeskewLocal, []);
  RegisterTest('Analysis', 'pixGetLocalSkewTransform', @Test_pixGetLocalSkewTransform, []);
  RegisterTest('Analysis', 'pixGetLocalSkewAngles', @Test_pixGetLocalSkewAngles, []);
  RegisterTest('Analysis', 'pixCorrelationBinary', @Test_pixCorrelationBinary, []);
  RegisterTest('Analysis', 'pixCompareBinary', @Test_pixCompareBinary, []);
  RegisterTest('Analysis', 'pixCompareGrayOrRGB', @Test_pixCompareGrayOrRGB, []);
  RegisterTest('Analysis', 'pixCompareGray', @Test_pixCompareGray, []);
  RegisterTest('Analysis', 'pixCompareRGB', @Test_pixCompareRGB, []);
  RegisterTest('Analysis', 'pixCompareTiled', @Test_pixCompareTiled, []);
  RegisterTest('Analysis', 'pixCompareRankDifference', @Test_pixCompareRankDifference, []);
  RegisterTest('Analysis', 'pixComparePhotoRegionsByHisto', @Test_pixComparePhotoRegionsByHisto, []);
  RegisterTest('Analysis', 'pixCompareGrayByHisto', @Test_pixCompareGrayByHisto, []);
  RegisterTest('Analysis', 'pixCompareWithTranslation', @Test_pixCompareWithTranslation, []);
  RegisterTest('Analysis', 'pixBestCorrelation', @Test_pixBestCorrelation, []);
  RegisterTest('Analysis', 'pixConnComp', @Test_pixConnComp, []);
  RegisterTest('Analysis', 'pixConnCompPixa', @Test_pixConnCompPixa, []);
  RegisterTest('Analysis', 'pixConnCompBB', @Test_pixConnCompBB, []);
  RegisterTest('Analysis', 'pixCountConnComp', @Test_pixCountConnComp, []);
  RegisterTest('Analysis', 'pixCorrelationScore', @Test_pixCorrelationScore, []);
  RegisterTest('Analysis', 'pixCorrelationScoreThresholded', @Test_pixCorrelationScoreThresholded, []);
  RegisterTest('Analysis', 'pixCorrelationScoreSimple', @Test_pixCorrelationScoreSimple, []);
  RegisterTest('Analysis', 'pixCorrelationScoreShifted', @Test_pixCorrelationScoreShifted, []);
  RegisterTest('Analysis', 'pixFindLargestRectangle', @Test_pixFindLargestRectangle, []);
  RegisterTest('Analysis', 'pixZero', @Test_pixZero, []);
  RegisterTest('Analysis', 'pixForegroundFraction', @Test_pixForegroundFraction, []);
  RegisterTest('Analysis', 'pixCountPixels', @Test_pixCountPixels, []);
  RegisterTest('Analysis', 'pixCountPixelsInRect', @Test_pixCountPixelsInRect, []);
  RegisterTest('Analysis', 'pixCountByRow', @Test_pixCountByRow, []);
  RegisterTest('Analysis', 'pixCountByColumn', @Test_pixCountByColumn, []);
  RegisterTest('Analysis', 'pixCountPixelsByRow', @Test_pixCountPixelsByRow, []);
  RegisterTest('Analysis', 'pixCountPixelsByColumn', @Test_pixCountPixelsByColumn, []);
  RegisterTest('Analysis', 'pixCountPixelsInRow', @Test_pixCountPixelsInRow, []);
  RegisterTest('Analysis', 'pixAverageByRow', @Test_pixAverageByRow, []);
  RegisterTest('Analysis', 'pixAverageByColumn', @Test_pixAverageByColumn, []);
  RegisterTest('Analysis', 'pixAverageInRect', @Test_pixAverageInRect, []);
  RegisterTest('Analysis', 'pixAverageInRectRGB', @Test_pixAverageInRectRGB, []);
  RegisterTest('Analysis', 'pixVarianceInRect', @Test_pixVarianceInRect, []);
  RegisterTest('Analysis', 'pixAbsDiffByRow', @Test_pixAbsDiffByRow, []);
  RegisterTest('Analysis', 'pixAbsDiffByColumn', @Test_pixAbsDiffByColumn, []);
  RegisterTest('Analysis', 'pixAbsDiffInRect', @Test_pixAbsDiffInRect, []);
  RegisterTest('Analysis', 'pixAbsDiffOnLine', @Test_pixAbsDiffOnLine, []);
  RegisterTest('Analysis', 'pixGetGrayHistogram', @Test_pixGetGrayHistogram, []);
  RegisterTest('Analysis', 'pixGetGrayHistogramMasked', @Test_pixGetGrayHistogramMasked, []);
  RegisterTest('Analysis', 'pixGetGrayHistogramInRect', @Test_pixGetGrayHistogramInRect, []);
  RegisterTest('Analysis', 'pixGetGrayHistogramTiled', @Test_pixGetGrayHistogramTiled, []);
  RegisterTest('Analysis', 'pixGetColorHistogram', @Test_pixGetColorHistogram, []);
  RegisterTest('Analysis', 'pixGetColorHistogramMasked', @Test_pixGetColorHistogramMasked, []);
  RegisterTest('Analysis', 'pixGetCmapHistogram', @Test_pixGetCmapHistogram, []);
  RegisterTest('Analysis', 'pixGetCmapHistogramMasked', @Test_pixGetCmapHistogramMasked, []);
  RegisterTest('Analysis', 'pixGetCmapHistogramInRect', @Test_pixGetCmapHistogramInRect, []);
  RegisterTest('Analysis', 'pixGetRankValue', @Test_pixGetRankValue, []);
  RegisterTest('Analysis', 'pixGetRankValueMaskedRGB', @Test_pixGetRankValueMaskedRGB, []);
  RegisterTest('Analysis', 'pixGetRankValueMasked', @Test_pixGetRankValueMasked, []);
  RegisterTest('Analysis', 'pixGetPixelAverage', @Test_pixGetPixelAverage, []);
  RegisterTest('Analysis', 'pixGetPixelStats', @Test_pixGetPixelStats, []);
  RegisterTest('Analysis', 'pixRowStats', @Test_pixRowStats, []);
  RegisterTest('Analysis', 'pixColumnStats', @Test_pixColumnStats, []);
  RegisterTest('Analysis', 'pixGetExtremeValue', @Test_pixGetExtremeValue, []);
  RegisterTest('Analysis', 'pixClipToForeground', @Test_pixClipToForeground, []);
  RegisterTest('Analysis', 'pixTestClipToForeground', @Test_pixTestClipToForeground, []);
  RegisterTest('Analysis', 'pixScanForForeground', @Test_pixScanForForeground, []);
  RegisterTest('Analysis', 'pixScanForEdge', @Test_pixScanForEdge, []);
  RegisterTest('Analysis', 'pixMinMaxNearLine', @Test_pixMinMaxNearLine, []);
  RegisterTest('Analysis', 'pixAbsDifference', @Test_pixAbsDifference, []);
  RegisterTest('Analysis', 'pixConnCompTransform', @Test_pixConnCompTransform, []);
  RegisterTest('Analysis', 'pixConnCompAreaTransform', @Test_pixConnCompAreaTransform, []);
  RegisterTest('Analysis', 'pixConnCompIncrInit', @Test_pixConnCompIncrInit, []);
  RegisterTest('Analysis', 'pixConnCompIncrAdd', @Test_pixConnCompIncrAdd, []);
  RegisterTest('Analysis', 'pixVarianceInRectangle', @Test_pixVarianceInRectangle, []);
  RegisterTest('Analysis', 'pixDeskewBarcode', @Test_pixDeskewBarcode, []);
  RegisterTest('Analysis', 'pixDeskewBoth', @Test_pixDeskewBoth, []);
  RegisterTest('Analysis', 'pixDeskew', @Test_pixDeskew, []);
  RegisterTest('Analysis', 'pixFindSkewAndDeskew', @Test_pixFindSkewAndDeskew, []);
  RegisterTest('Analysis', 'pixDeskewGeneral', @Test_pixDeskewGeneral, []);
  RegisterTest('Analysis', 'pixFindSkew', @Test_pixFindSkew, []);
  RegisterTest('Analysis', 'pixFindSkewSweep', @Test_pixFindSkewSweep, []);
  RegisterTest('Analysis', 'pixFindSkewSweepAndSearch', @Test_pixFindSkewSweepAndSearch, []);
  RegisterTest('Analysis', 'pixFindSkewSweepAndSearchScore', @Test_pixFindSkewSweepAndSearchScore, []);
  RegisterTest('Analysis', 'pixFindSkewSweepAndSearchScorePivot',
    @Test_pixFindSkewSweepAndSearchScorePivot, []);
  RegisterTest('Analysis', 'pixFindSkewOrthogonalRange', @Test_pixFindSkewOrthogonalRange, []);

  RegisterTest('Analysis', 'Func_pixCountPixels', @Test_Func_pixCountPixels, []);
  RegisterTest('Analysis', 'Func_pixForegroundFraction', @Test_Func_pixForegroundFraction, []);
  RegisterTest('Analysis', 'Func_pixGetGrayHistogram', @Test_Func_pixGetGrayHistogram, []);
  RegisterTest('Analysis', 'Func_pixDeskew', @Test_Func_pixDeskew, []);
  RegisterTest('Analysis', 'Func_pixCompareGray', @Test_Func_pixCompareGray, []);

end.
