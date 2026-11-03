{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestBox;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_boxaTranslate;
begin
  AssertFuncLoaded(@Lept.Box.BoxaTranslate, 'boxaTranslate');
end;

procedure Test_boxaScale;
begin
  AssertFuncLoaded(@Lept.Box.BoxaScale, 'boxaScale');
end;

procedure Test_boxaRotate;
begin
  AssertFuncLoaded(@Lept.Box.BoxaRotate, 'boxaRotate');
end;

procedure Test_boxaAffineTransform;
begin
  AssertFuncLoaded(@Lept.Box.BoxaAffineTransform, 'boxaAffineTransform');
end;

procedure Test_boxCreate;
begin
  AssertFuncLoaded(@Lept.Box.BoxCreate, 'boxCreate');
end;

procedure Test_boxCreateValid;
begin
  AssertFuncLoaded(@Lept.Box.BoxCreateValid, 'boxCreateValid');
end;

procedure Test_boxCopy;
begin
  AssertFuncLoaded(@Lept.Box.BoxCopy, 'boxCopy');
end;

procedure Test_boxClone;
begin
  AssertFuncLoaded(@Lept.Box.BoxClone, 'boxClone');
end;

procedure Test_boxDestroy;
begin
  AssertFuncLoaded(@Lept.Box.BoxDestroy, 'boxDestroy');
end;

procedure Test_boxGetGeometry;
begin
  AssertFuncLoaded(@Lept.Box.BoxGetGeometry, 'boxGetGeometry');
end;

procedure Test_boxSetGeometry;
begin
  AssertFuncLoaded(@Lept.Box.BoxSetGeometry, 'boxSetGeometry');
end;

procedure Test_boxGetSideLocations;
begin
  AssertFuncLoaded(@Lept.Box.BoxGetSideLocations, 'boxGetSideLocations');
end;

procedure Test_boxSetSideLocations;
begin
  AssertFuncLoaded(@Lept.Box.BoxSetSideLocations, 'boxSetSideLocations');
end;

procedure Test_boxIsValid;
begin
  AssertFuncLoaded(@Lept.Box.BoxIsValid, 'boxIsValid');
end;

procedure Test_boxaCreate;
begin
  AssertFuncLoaded(@Lept.Box.BoxaCreate, 'boxaCreate');
end;

procedure Test_boxaCopy;
begin
  AssertFuncLoaded(@Lept.Box.BoxaCopy, 'boxaCopy');
end;

procedure Test_boxaDestroy;
begin
  AssertFuncLoaded(@Lept.Box.BoxaDestroy, 'boxaDestroy');
end;

procedure Test_boxaAddBox;
begin
  AssertFuncLoaded(@Lept.Box.BoxaAddBox, 'boxaAddBox');
end;

procedure Test_boxaExtendArray;
begin
  AssertFuncLoaded(@Lept.Box.BoxaExtendArray, 'boxaExtendArray');
end;

procedure Test_boxaExtendArrayToSize;
begin
  AssertFuncLoaded(@Lept.Box.BoxaExtendArrayToSize, 'boxaExtendArrayToSize');
end;

procedure Test_boxaGetCount;
begin
  AssertFuncLoaded(@Lept.Box.BoxaGetCount, 'boxaGetCount');
end;

procedure Test_boxaGetValidCount;
begin
  AssertFuncLoaded(@Lept.Box.BoxaGetValidCount, 'boxaGetValidCount');
end;

procedure Test_boxaGetBox;
begin
  AssertFuncLoaded(@Lept.Box.BoxaGetBox, 'boxaGetBox');
end;

procedure Test_boxaGetValidBox;
begin
  AssertFuncLoaded(@Lept.Box.BoxaGetValidBox, 'boxaGetValidBox');
end;

procedure Test_boxaFindInvalidBoxes;
begin
  AssertFuncLoaded(@Lept.Box.BoxaFindInvalidBoxes, 'boxaFindInvalidBoxes');
end;

procedure Test_boxaGetBoxGeometry;
begin
  AssertFuncLoaded(@Lept.Box.BoxaGetBoxGeometry, 'boxaGetBoxGeometry');
end;

procedure Test_boxaIsFull;
begin
  AssertFuncLoaded(@Lept.Box.BoxaIsFull, 'boxaIsFull');
end;

procedure Test_boxaReplaceBox;
begin
  AssertFuncLoaded(@Lept.Box.BoxaReplaceBox, 'boxaReplaceBox');
end;

procedure Test_boxaInsertBox;
begin
  AssertFuncLoaded(@Lept.Box.BoxaInsertBox, 'boxaInsertBox');
end;

procedure Test_boxaRemoveBox;
begin
  AssertFuncLoaded(@Lept.Box.BoxaRemoveBox, 'boxaRemoveBox');
end;

procedure Test_boxaRemoveBoxAndSave;
begin
  AssertFuncLoaded(@Lept.Box.BoxaRemoveBoxAndSave, 'boxaRemoveBoxAndSave');
end;

procedure Test_boxaSaveValid;
begin
  AssertFuncLoaded(@Lept.Box.BoxaSaveValid, 'boxaSaveValid');
end;

procedure Test_boxaInitFull;
begin
  AssertFuncLoaded(@Lept.Box.BoxaInitFull, 'boxaInitFull');
end;

procedure Test_boxaClear;
begin
  AssertFuncLoaded(@Lept.Box.BoxaClear, 'boxaClear');
end;

procedure Test_boxaaCreate;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaCreate, 'boxaaCreate');
end;

procedure Test_boxaaCopy;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaCopy, 'boxaaCopy');
end;

procedure Test_boxaaDestroy;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaDestroy, 'boxaaDestroy');
end;

procedure Test_boxaaAddBoxa;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaAddBoxa, 'boxaaAddBoxa');
end;

procedure Test_boxaaExtendArray;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaExtendArray, 'boxaaExtendArray');
end;

procedure Test_boxaaExtendArrayToSize;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaExtendArrayToSize, 'boxaaExtendArrayToSize');
end;

procedure Test_boxaaGetCount;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaGetCount, 'boxaaGetCount');
end;

procedure Test_boxaaGetBoxCount;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaGetBoxCount, 'boxaaGetBoxCount');
end;

procedure Test_boxaaGetBoxa;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaGetBoxa, 'boxaaGetBoxa');
end;

procedure Test_boxaaGetBox;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaGetBox, 'boxaaGetBox');
end;

procedure Test_boxaaInitFull;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaInitFull, 'boxaaInitFull');
end;

procedure Test_boxaaExtendWithInit;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaExtendWithInit, 'boxaaExtendWithInit');
end;

procedure Test_boxaaReplaceBoxa;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaReplaceBoxa, 'boxaaReplaceBoxa');
end;

procedure Test_boxaaInsertBoxa;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaInsertBoxa, 'boxaaInsertBoxa');
end;

procedure Test_boxaaRemoveBoxa;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaRemoveBoxa, 'boxaaRemoveBoxa');
end;

procedure Test_boxaaAddBox;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaAddBox, 'boxaaAddBox');
end;

procedure Test_boxaaReadFromFiles;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaReadFromFiles, 'boxaaReadFromFiles');
end;

procedure Test_boxaaRead;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaRead, 'boxaaRead');
end;

procedure Test_boxaaReadStream;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaReadStream, 'boxaaReadStream');
end;

procedure Test_boxaaReadMem;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaReadMem, 'boxaaReadMem');
end;

procedure Test_boxaaWrite;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaWrite, 'boxaaWrite');
end;

procedure Test_boxaaWriteStream;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaWriteStream, 'boxaaWriteStream');
end;

procedure Test_boxaaWriteMem;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaWriteMem, 'boxaaWriteMem');
end;

procedure Test_boxaRead;
begin
  AssertFuncLoaded(@Lept.Box.BoxaRead, 'boxaRead');
end;

procedure Test_boxaReadStream;
begin
  AssertFuncLoaded(@Lept.Box.BoxaReadStream, 'boxaReadStream');
end;

procedure Test_boxaReadMem;
begin
  AssertFuncLoaded(@Lept.Box.BoxaReadMem, 'boxaReadMem');
end;

procedure Test_boxaWriteDebug;
begin
  AssertFuncLoaded(@Lept.Box.BoxaWriteDebug, 'boxaWriteDebug');
end;

procedure Test_boxaWrite;
begin
  AssertFuncLoaded(@Lept.Box.BoxaWrite, 'boxaWrite');
end;

procedure Test_boxaWriteStream;
begin
  AssertFuncLoaded(@Lept.Box.BoxaWriteStream, 'boxaWriteStream');
end;

procedure Test_boxaWriteStderr;
begin
  AssertFuncLoaded(@Lept.Box.BoxaWriteStderr, 'boxaWriteStderr');
end;

procedure Test_boxaWriteMem;
begin
  AssertFuncLoaded(@Lept.Box.BoxaWriteMem, 'boxaWriteMem');
end;

procedure Test_boxPrintStreamInfo;
begin
  AssertFuncLoaded(@Lept.Box.BoxPrintStreamInfo, 'boxPrintStreamInfo');
end;

procedure Test_boxContains;
begin
  AssertFuncLoaded(@Lept.Box.BoxContains, 'boxContains');
end;

procedure Test_boxIntersects;
begin
  AssertFuncLoaded(@Lept.Box.BoxIntersects, 'boxIntersects');
end;

procedure Test_boxaContainedInBox;
begin
  AssertFuncLoaded(@Lept.Box.BoxaContainedInBox, 'boxaContainedInBox');
end;

procedure Test_boxaContainedInBoxCount;
begin
  AssertFuncLoaded(@Lept.Box.BoxaContainedInBoxCount, 'boxaContainedInBoxCount');
end;

procedure Test_boxaContainedInBoxa;
begin
  AssertFuncLoaded(@Lept.Box.BoxaContainedInBoxa, 'boxaContainedInBoxa');
end;

procedure Test_boxaIntersectsBox;
begin
  AssertFuncLoaded(@Lept.Box.BoxaIntersectsBox, 'boxaIntersectsBox');
end;

procedure Test_boxaIntersectsBoxCount;
begin
  AssertFuncLoaded(@Lept.Box.BoxaIntersectsBoxCount, 'boxaIntersectsBoxCount');
end;

procedure Test_boxaClipToBox;
begin
  AssertFuncLoaded(@Lept.Box.BoxaClipToBox, 'boxaClipToBox');
end;

procedure Test_boxaCombineOverlaps;
begin
  AssertFuncLoaded(@Lept.Box.BoxaCombineOverlaps, 'boxaCombineOverlaps');
end;

procedure Test_boxaCombineOverlapsInPair;
begin
  AssertFuncLoaded(@Lept.Box.BoxaCombineOverlapsInPair, 'boxaCombineOverlapsInPair');
end;

procedure Test_boxOverlapRegion;
begin
  AssertFuncLoaded(@Lept.Box.BoxOverlapRegion, 'boxOverlapRegion');
end;

procedure Test_boxBoundingRegion;
begin
  AssertFuncLoaded(@Lept.Box.BoxBoundingRegion, 'boxBoundingRegion');
end;

procedure Test_boxOverlapFraction;
begin
  AssertFuncLoaded(@Lept.Box.BoxOverlapFraction, 'boxOverlapFraction');
end;

procedure Test_boxOverlapArea;
begin
  AssertFuncLoaded(@Lept.Box.BoxOverlapArea, 'boxOverlapArea');
end;

procedure Test_boxaHandleOverlaps;
begin
  AssertFuncLoaded(@Lept.Box.BoxaHandleOverlaps, 'boxaHandleOverlaps');
end;

procedure Test_boxOverlapDistance;
begin
  AssertFuncLoaded(@Lept.Box.BoxOverlapDistance, 'boxOverlapDistance');
end;

procedure Test_boxSeparationDistance;
begin
  AssertFuncLoaded(@Lept.Box.BoxSeparationDistance, 'boxSeparationDistance');
end;

procedure Test_boxCompareSize;
begin
  AssertFuncLoaded(@Lept.Box.BoxCompareSize, 'boxCompareSize');
end;

procedure Test_boxContainsPt;
begin
  AssertFuncLoaded(@Lept.Box.BoxContainsPt, 'boxContainsPt');
end;

procedure Test_boxaGetNearestToPt;
begin
  AssertFuncLoaded(@Lept.Box.BoxaGetNearestToPt, 'boxaGetNearestToPt');
end;

procedure Test_boxaGetNearestToLine;
begin
  AssertFuncLoaded(@Lept.Box.BoxaGetNearestToLine, 'boxaGetNearestToLine');
end;

procedure Test_boxaFindNearestBoxes;
begin
  AssertFuncLoaded(@Lept.Box.BoxaFindNearestBoxes, 'boxaFindNearestBoxes');
end;

procedure Test_boxaGetNearestByDirection;
begin
  AssertFuncLoaded(@Lept.Box.BoxaGetNearestByDirection, 'boxaGetNearestByDirection');
end;

procedure Test_boxGetCenter;
begin
  AssertFuncLoaded(@Lept.Box.BoxGetCenter, 'boxGetCenter');
end;

procedure Test_boxIntersectByLine;
begin
  AssertFuncLoaded(@Lept.Box.BoxIntersectByLine, 'boxIntersectByLine');
end;

procedure Test_boxClipToRectangle;
begin
  AssertFuncLoaded(@Lept.Box.BoxClipToRectangle, 'boxClipToRectangle');
end;

procedure Test_boxClipToRectangleParams;
begin
  AssertFuncLoaded(@Lept.Box.BoxClipToRectangleParams, 'boxClipToRectangleParams');
end;

procedure Test_boxRelocateOneSide;
begin
  AssertFuncLoaded(@Lept.Box.BoxRelocateOneSide, 'boxRelocateOneSide');
end;

procedure Test_boxaAdjustSides;
begin
  AssertFuncLoaded(@Lept.Box.BoxaAdjustSides, 'boxaAdjustSides');
end;

procedure Test_boxaAdjustBoxSides;
begin
  AssertFuncLoaded(@Lept.Box.BoxaAdjustBoxSides, 'boxaAdjustBoxSides');
end;

procedure Test_boxAdjustSides;
begin
  AssertFuncLoaded(@Lept.Box.BoxAdjustSides, 'boxAdjustSides');
end;

procedure Test_boxaSetSide;
begin
  AssertFuncLoaded(@Lept.Box.BoxaSetSide, 'boxaSetSide');
end;

procedure Test_boxSetSide;
begin
  AssertFuncLoaded(@Lept.Box.BoxSetSide, 'boxSetSide');
end;

procedure Test_boxaAdjustWidthToTarget;
begin
  AssertFuncLoaded(@Lept.Box.BoxaAdjustWidthToTarget, 'boxaAdjustWidthToTarget');
end;

procedure Test_boxaAdjustHeightToTarget;
begin
  AssertFuncLoaded(@Lept.Box.BoxaAdjustHeightToTarget, 'boxaAdjustHeightToTarget');
end;

procedure Test_boxEqual;
begin
  AssertFuncLoaded(@Lept.Box.BoxEqual, 'boxEqual');
end;

procedure Test_boxaEqual;
begin
  AssertFuncLoaded(@Lept.Box.BoxaEqual, 'boxaEqual');
end;

procedure Test_boxSimilar;
begin
  AssertFuncLoaded(@Lept.Box.BoxSimilar, 'boxSimilar');
end;

procedure Test_boxaSimilar;
begin
  AssertFuncLoaded(@Lept.Box.BoxaSimilar, 'boxaSimilar');
end;

procedure Test_boxaJoin;
begin
  AssertFuncLoaded(@Lept.Box.BoxaJoin, 'boxaJoin');
end;

procedure Test_boxaaJoin;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaJoin, 'boxaaJoin');
end;

procedure Test_boxaSplitEvenOdd;
begin
  AssertFuncLoaded(@Lept.Box.BoxaSplitEvenOdd, 'boxaSplitEvenOdd');
end;

procedure Test_boxaMergeEvenOdd;
begin
  AssertFuncLoaded(@Lept.Box.BoxaMergeEvenOdd, 'boxaMergeEvenOdd');
end;

procedure Test_boxaTransform;
begin
  AssertFuncLoaded(@Lept.Box.BoxaTransform, 'boxaTransform');
end;

procedure Test_boxTransform;
begin
  AssertFuncLoaded(@Lept.Box.BoxTransform, 'boxTransform');
end;

procedure Test_boxaTransformOrdered;
begin
  AssertFuncLoaded(@Lept.Box.BoxaTransformOrdered, 'boxaTransformOrdered');
end;

procedure Test_boxTransformOrdered;
begin
  AssertFuncLoaded(@Lept.Box.BoxTransformOrdered, 'boxTransformOrdered');
end;

procedure Test_boxaRotateOrth;
begin
  AssertFuncLoaded(@Lept.Box.BoxaRotateOrth, 'boxaRotateOrth');
end;

procedure Test_boxRotateOrth;
begin
  AssertFuncLoaded(@Lept.Box.BoxRotateOrth, 'boxRotateOrth');
end;

procedure Test_boxaShiftWithPta;
begin
  AssertFuncLoaded(@Lept.Box.BoxaShiftWithPta, 'boxaShiftWithPta');
end;

procedure Test_boxaSort;
begin
  AssertFuncLoaded(@Lept.Box.BoxaSort, 'boxaSort');
end;

procedure Test_boxaBinSort;
begin
  AssertFuncLoaded(@Lept.Box.BoxaBinSort, 'boxaBinSort');
end;

procedure Test_boxaSortByIndex;
begin
  AssertFuncLoaded(@Lept.Box.BoxaSortByIndex, 'boxaSortByIndex');
end;

procedure Test_boxaSort2d;
begin
  AssertFuncLoaded(@Lept.Box.BoxaSort2d, 'boxaSort2d');
end;

procedure Test_boxaSort2dByIndex;
begin
  AssertFuncLoaded(@Lept.Box.BoxaSort2dByIndex, 'boxaSort2dByIndex');
end;

procedure Test_boxaExtractAsNuma;
begin
  AssertFuncLoaded(@Lept.Box.BoxaExtractAsNuma, 'boxaExtractAsNuma');
end;

procedure Test_boxaExtractAsPta;
begin
  AssertFuncLoaded(@Lept.Box.BoxaExtractAsPta, 'boxaExtractAsPta');
end;

procedure Test_boxaExtractCorners;
begin
  AssertFuncLoaded(@Lept.Box.BoxaExtractCorners, 'boxaExtractCorners');
end;

procedure Test_boxaGetRankVals;
begin
  AssertFuncLoaded(@Lept.Box.BoxaGetRankVals, 'boxaGetRankVals');
end;

procedure Test_boxaGetMedianVals;
begin
  AssertFuncLoaded(@Lept.Box.BoxaGetMedianVals, 'boxaGetMedianVals');
end;

procedure Test_boxaGetAverageSize;
begin
  AssertFuncLoaded(@Lept.Box.BoxaGetAverageSize, 'boxaGetAverageSize');
end;

procedure Test_boxaaGetExtent;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaGetExtent, 'boxaaGetExtent');
end;

procedure Test_boxaaFlattenToBoxa;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaFlattenToBoxa, 'boxaaFlattenToBoxa');
end;

procedure Test_boxaaFlattenAligned;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaFlattenAligned, 'boxaaFlattenAligned');
end;

procedure Test_boxaEncapsulateAligned;
begin
  AssertFuncLoaded(@Lept.Box.BoxaEncapsulateAligned, 'boxaEncapsulateAligned');
end;

procedure Test_boxaaTranspose;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaTranspose, 'boxaaTranspose');
end;

procedure Test_boxaaAlignBox;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaAlignBox, 'boxaaAlignBox');
end;

procedure Test_boxaaDisplay;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaDisplay, 'boxaaDisplay');
end;

procedure Test_boxaCompareRegions;
begin
  AssertFuncLoaded(@Lept.Box.BoxaCompareRegions, 'boxaCompareRegions');
end;

procedure Test_boxaSelectLargeULBox;
begin
  AssertFuncLoaded(@Lept.Box.BoxaSelectLargeULBox, 'boxaSelectLargeULBox');
end;

procedure Test_boxaSelectRange;
begin
  AssertFuncLoaded(@Lept.Box.BoxaSelectRange, 'boxaSelectRange');
end;

procedure Test_boxaaSelectRange;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaSelectRange, 'boxaaSelectRange');
end;

procedure Test_boxaSelectBySize;
begin
  AssertFuncLoaded(@Lept.Box.BoxaSelectBySize, 'boxaSelectBySize');
end;

procedure Test_boxaMakeSizeIndicator;
begin
  AssertFuncLoaded(@Lept.Box.BoxaMakeSizeIndicator, 'boxaMakeSizeIndicator');
end;

procedure Test_boxaSelectByArea;
begin
  AssertFuncLoaded(@Lept.Box.BoxaSelectByArea, 'boxaSelectByArea');
end;

procedure Test_boxaMakeAreaIndicator;
begin
  AssertFuncLoaded(@Lept.Box.BoxaMakeAreaIndicator, 'boxaMakeAreaIndicator');
end;

procedure Test_boxaSelectByWHRatio;
begin
  AssertFuncLoaded(@Lept.Box.BoxaSelectByWHRatio, 'boxaSelectByWHRatio');
end;

procedure Test_boxaMakeWHRatioIndicator;
begin
  AssertFuncLoaded(@Lept.Box.BoxaMakeWHRatioIndicator, 'boxaMakeWHRatioIndicator');
end;

procedure Test_boxaSelectWithIndicator;
begin
  AssertFuncLoaded(@Lept.Box.BoxaSelectWithIndicator, 'boxaSelectWithIndicator');
end;

procedure Test_boxaPermutePseudorandom;
begin
  AssertFuncLoaded(@Lept.Box.BoxaPermutePseudorandom, 'boxaPermutePseudorandom');
end;

procedure Test_boxaPermuteRandom;
begin
  AssertFuncLoaded(@Lept.Box.BoxaPermuteRandom, 'boxaPermuteRandom');
end;

procedure Test_boxaSwapBoxes;
begin
  AssertFuncLoaded(@Lept.Box.BoxaSwapBoxes, 'boxaSwapBoxes');
end;

procedure Test_boxaConvertToPta;
begin
  AssertFuncLoaded(@Lept.Box.BoxaConvertToPta, 'boxaConvertToPta');
end;

procedure Test_boxConvertToPta;
begin
  AssertFuncLoaded(@Lept.Box.BoxConvertToPta, 'boxConvertToPta');
end;

procedure Test_boxaGetExtent;
begin
  AssertFuncLoaded(@Lept.Box.BoxaGetExtent, 'boxaGetExtent');
end;

procedure Test_boxaGetCoverage;
begin
  AssertFuncLoaded(@Lept.Box.BoxaGetCoverage, 'boxaGetCoverage');
end;

procedure Test_boxaaSizeRange;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaSizeRange, 'boxaaSizeRange');
end;

procedure Test_boxaSizeRange;
begin
  AssertFuncLoaded(@Lept.Box.BoxaSizeRange, 'boxaSizeRange');
end;

procedure Test_boxaLocationRange;
begin
  AssertFuncLoaded(@Lept.Box.BoxaLocationRange, 'boxaLocationRange');
end;

procedure Test_boxaGetSizes;
begin
  AssertFuncLoaded(@Lept.Box.BoxaGetSizes, 'boxaGetSizes');
end;

procedure Test_boxaGetArea;
begin
  AssertFuncLoaded(@Lept.Box.BoxaGetArea, 'boxaGetArea');
end;

procedure Test_boxaDisplayTiled;
begin
  AssertFuncLoaded(@Lept.Box.BoxaDisplayTiled, 'boxaDisplayTiled');
end;

procedure Test_boxaSmoothSequenceMedian;
begin
  AssertFuncLoaded(@Lept.Box.BoxaSmoothSequenceMedian, 'boxaSmoothSequenceMedian');
end;

procedure Test_boxaWindowedMedian;
begin
  AssertFuncLoaded(@Lept.Box.BoxaWindowedMedian, 'boxaWindowedMedian');
end;

procedure Test_boxaModifyWithBoxa;
begin
  AssertFuncLoaded(@Lept.Box.BoxaModifyWithBoxa, 'boxaModifyWithBoxa');
end;

procedure Test_boxaReconcilePairWidth;
begin
  AssertFuncLoaded(@Lept.Box.BoxaReconcilePairWidth, 'boxaReconcilePairWidth');
end;

procedure Test_boxaSizeConsistency;
begin
  AssertFuncLoaded(@Lept.Box.BoxaSizeConsistency, 'boxaSizeConsistency');
end;

procedure Test_boxaReconcileAllByMedian;
begin
  AssertFuncLoaded(@Lept.Box.BoxaReconcileAllByMedian, 'boxaReconcileAllByMedian');
end;

procedure Test_boxaReconcileSidesByMedian;
begin
  AssertFuncLoaded(@Lept.Box.BoxaReconcileSidesByMedian, 'boxaReconcileSidesByMedian');
end;

procedure Test_boxaReconcileSizeByMedian;
begin
  AssertFuncLoaded(@Lept.Box.BoxaReconcileSizeByMedian, 'boxaReconcileSizeByMedian');
end;

procedure Test_boxaPlotSides;
begin
  AssertFuncLoaded(@Lept.Box.BoxaPlotSides, 'boxaPlotSides');
end;

procedure Test_boxaPlotSizes;
begin
  AssertFuncLoaded(@Lept.Box.BoxaPlotSizes, 'boxaPlotSizes');
end;

procedure Test_boxaFillSequence;
begin
  AssertFuncLoaded(@Lept.Box.BoxaFillSequence, 'boxaFillSequence');
end;

procedure Test_boxaSizeVariation;
begin
  AssertFuncLoaded(@Lept.Box.BoxaSizeVariation, 'boxaSizeVariation');
end;

procedure Test_boxaMedianDimensions;
begin
  AssertFuncLoaded(@Lept.Box.BoxaMedianDimensions, 'boxaMedianDimensions');
end;

procedure Test_boxaExtractSortedPattern;
begin
  AssertFuncLoaded(@Lept.Box.BoxaExtractSortedPattern, 'boxaExtractSortedPattern');
end;

procedure Test_boxaGetWhiteblocks;
begin
  AssertFuncLoaded(@Lept.Box.BoxaGetWhiteblocks, 'boxaGetWhiteblocks');
end;

procedure Test_boxaPruneSortedOnOverlap;
begin
  AssertFuncLoaded(@Lept.Box.BoxaPruneSortedOnOverlap, 'boxaPruneSortedOnOverlap');
end;

procedure Test_boxaaQuadtreeRegions;
begin
  AssertFuncLoaded(@Lept.Box.BoxaaQuadtreeRegions, 'boxaaQuadtreeRegions');
end;

procedure Test_Func_boxCreate;
var
  B: Pointer;
  X, Y, W, H: Integer;
begin
  B := Lept.Box.BoxCreate(10, 20, 100, 200);
  AssertNotNil(B, 'boxCreate');
  Lept.Box.BoxGetGeometry(B, @X, @Y, @W, @H);
  AssertEqualsInt(10, X, 'x');
  AssertEqualsInt(20, Y, 'y');
  AssertEqualsInt(100, W, 'w');
  AssertEqualsInt(200, H, 'h');
  Lept.Box.BoxDestroy(@B);
  AssertNil(B, 'destroyed');
end;

procedure Test_Func_boxCopy;
var
  B, C: Pointer;
  X, Y, W, H: Integer;
begin
  B := Lept.Box.BoxCreate(5, 10, 50, 60);
  C := Lept.Box.BoxCopy(B);
  AssertNotNil(C, 'boxCopy');
  Lept.Box.BoxGetGeometry(C, @X, @Y, @W, @H);
  AssertEqualsInt(5, X, 'copy x');
  AssertEqualsInt(50, W, 'copy w');
  Lept.Box.BoxDestroy(@C);
  Lept.Box.BoxDestroy(@B);
end;

procedure Test_Func_boxClone;
var
  B, C: Pointer;
begin
  B := Lept.Box.BoxCreate(0, 0, 30, 40);
  C := Lept.Box.BoxClone(B);
  AssertNotNil(C, 'boxClone');
  Lept.Box.BoxDestroy(@C);
  Lept.Box.BoxDestroy(@B);
end;

procedure Test_Func_boxSetGeometry;
var
  B: Pointer;
  X, Y, W, H: Integer;
begin
  B := Lept.Box.BoxCreate(0, 0, 10, 10);
  Lept.Box.BoxSetGeometry(B, 100, 200, 300, 400);
  Lept.Box.BoxGetGeometry(B, @X, @Y, @W, @H);
  AssertEqualsInt(100, X, 'set x');
  AssertEqualsInt(200, Y, 'set y');
  AssertEqualsInt(300, W, 'set w');
  AssertEqualsInt(400, H, 'set h');
  Lept.Box.BoxDestroy(@B);
end;

procedure Test_Func_boxaCreate;
var
  BA: Pointer;
  B: Pointer;
begin
  BA := Lept.Box.BoxaCreate(5);
  AssertNotNil(BA, 'boxaCreate');
  AssertEqualsInt(0, Lept.Box.BoxaGetCount(BA), 'empty count');
  B := Lept.Box.BoxCreate(0, 0, 10, 10);
  Lept.Box.BoxaAddBox(BA, B, 2);
  AssertEqualsInt(1, Lept.Box.BoxaGetCount(BA), 'count after add');
  Lept.Box.BoxDestroy(@B);
  Lept.Box.BoxaDestroy(@BA);
end;

procedure Test_Func_boxaGetBox;
var
  BA, B, R: Pointer;
  X, Y, W, H: Integer;
begin
  BA := Lept.Box.BoxaCreate(5);
  B := Lept.Box.BoxCreate(10, 20, 30, 40);
  Lept.Box.BoxaAddBox(BA, B, 2);
  Lept.Box.BoxDestroy(@B);
  R := Lept.Box.BoxaGetBox(BA, 0, 2);
  AssertNotNil(R, 'boxaGetBox');
  Lept.Box.BoxGetGeometry(R, @X, @Y, @W, @H);
  AssertEqualsInt(10, X, 'got x');
  AssertEqualsInt(30, W, 'got w');
  Lept.Box.BoxDestroy(@R);
  Lept.Box.BoxaDestroy(@BA);
end;

procedure Test_Func_boxGetSideLocations;
var
  B: Pointer;
  L, R, T, Bt: Integer;
begin
  B := Lept.Box.BoxCreate(10, 20, 100, 200);
  Lept.Box.BoxGetSideLocations(B, @L, @R, @T, @Bt);
  AssertEqualsInt(10, L, 'left');
  AssertEqualsInt(109, R, 'right');
  AssertEqualsInt(20, T, 'top');
  AssertEqualsInt(219, Bt, 'bottom');
  Lept.Box.BoxDestroy(@B);
end;

initialization
  RegisterTest('Box', 'boxaTranslate', @Test_boxaTranslate, []);
  RegisterTest('Box', 'boxaScale', @Test_boxaScale, []);
  RegisterTest('Box', 'boxaRotate', @Test_boxaRotate, []);
  RegisterTest('Box', 'boxaAffineTransform', @Test_boxaAffineTransform, []);
  RegisterTest('Box', 'boxCreate', @Test_boxCreate, []);
  RegisterTest('Box', 'boxCreateValid', @Test_boxCreateValid, []);
  RegisterTest('Box', 'boxCopy', @Test_boxCopy, []);
  RegisterTest('Box', 'boxClone', @Test_boxClone, []);
  RegisterTest('Box', 'boxDestroy', @Test_boxDestroy, []);
  RegisterTest('Box', 'boxGetGeometry', @Test_boxGetGeometry, []);
  RegisterTest('Box', 'boxSetGeometry', @Test_boxSetGeometry, []);
  RegisterTest('Box', 'boxGetSideLocations', @Test_boxGetSideLocations, []);
  RegisterTest('Box', 'boxSetSideLocations', @Test_boxSetSideLocations, []);
  RegisterTest('Box', 'boxIsValid', @Test_boxIsValid, []);
  RegisterTest('Box', 'boxaCreate', @Test_boxaCreate, []);
  RegisterTest('Box', 'boxaCopy', @Test_boxaCopy, []);
  RegisterTest('Box', 'boxaDestroy', @Test_boxaDestroy, []);
  RegisterTest('Box', 'boxaAddBox', @Test_boxaAddBox, []);
  RegisterTest('Box', 'boxaExtendArray', @Test_boxaExtendArray, []);
  RegisterTest('Box', 'boxaExtendArrayToSize', @Test_boxaExtendArrayToSize, []);
  RegisterTest('Box', 'boxaGetCount', @Test_boxaGetCount, []);
  RegisterTest('Box', 'boxaGetValidCount', @Test_boxaGetValidCount, []);
  RegisterTest('Box', 'boxaGetBox', @Test_boxaGetBox, []);
  RegisterTest('Box', 'boxaGetValidBox', @Test_boxaGetValidBox, []);
  RegisterTest('Box', 'boxaFindInvalidBoxes', @Test_boxaFindInvalidBoxes, []);
  RegisterTest('Box', 'boxaGetBoxGeometry', @Test_boxaGetBoxGeometry, []);
  RegisterTest('Box', 'boxaIsFull', @Test_boxaIsFull, []);
  RegisterTest('Box', 'boxaReplaceBox', @Test_boxaReplaceBox, []);
  RegisterTest('Box', 'boxaInsertBox', @Test_boxaInsertBox, []);
  RegisterTest('Box', 'boxaRemoveBox', @Test_boxaRemoveBox, []);
  RegisterTest('Box', 'boxaRemoveBoxAndSave', @Test_boxaRemoveBoxAndSave, []);
  RegisterTest('Box', 'boxaSaveValid', @Test_boxaSaveValid, []);
  RegisterTest('Box', 'boxaInitFull', @Test_boxaInitFull, []);
  RegisterTest('Box', 'boxaClear', @Test_boxaClear, []);
  RegisterTest('Box', 'boxaaCreate', @Test_boxaaCreate, []);
  RegisterTest('Box', 'boxaaCopy', @Test_boxaaCopy, []);
  RegisterTest('Box', 'boxaaDestroy', @Test_boxaaDestroy, []);
  RegisterTest('Box', 'boxaaAddBoxa', @Test_boxaaAddBoxa, []);
  RegisterTest('Box', 'boxaaExtendArray', @Test_boxaaExtendArray, []);
  RegisterTest('Box', 'boxaaExtendArrayToSize', @Test_boxaaExtendArrayToSize, []);
  RegisterTest('Box', 'boxaaGetCount', @Test_boxaaGetCount, []);
  RegisterTest('Box', 'boxaaGetBoxCount', @Test_boxaaGetBoxCount, []);
  RegisterTest('Box', 'boxaaGetBoxa', @Test_boxaaGetBoxa, []);
  RegisterTest('Box', 'boxaaGetBox', @Test_boxaaGetBox, []);
  RegisterTest('Box', 'boxaaInitFull', @Test_boxaaInitFull, []);
  RegisterTest('Box', 'boxaaExtendWithInit', @Test_boxaaExtendWithInit, []);
  RegisterTest('Box', 'boxaaReplaceBoxa', @Test_boxaaReplaceBoxa, []);
  RegisterTest('Box', 'boxaaInsertBoxa', @Test_boxaaInsertBoxa, []);
  RegisterTest('Box', 'boxaaRemoveBoxa', @Test_boxaaRemoveBoxa, []);
  RegisterTest('Box', 'boxaaAddBox', @Test_boxaaAddBox, []);
  RegisterTest('Box', 'boxaaReadFromFiles', @Test_boxaaReadFromFiles, []);
  RegisterTest('Box', 'boxaaRead', @Test_boxaaRead, []);
  RegisterTest('Box', 'boxaaReadStream', @Test_boxaaReadStream, []);
  RegisterTest('Box', 'boxaaReadMem', @Test_boxaaReadMem, []);
  RegisterTest('Box', 'boxaaWrite', @Test_boxaaWrite, []);
  RegisterTest('Box', 'boxaaWriteStream', @Test_boxaaWriteStream, []);
  RegisterTest('Box', 'boxaaWriteMem', @Test_boxaaWriteMem, []);
  RegisterTest('Box', 'boxaRead', @Test_boxaRead, []);
  RegisterTest('Box', 'boxaReadStream', @Test_boxaReadStream, []);
  RegisterTest('Box', 'boxaReadMem', @Test_boxaReadMem, []);
  RegisterTest('Box', 'boxaWriteDebug', @Test_boxaWriteDebug, []);
  RegisterTest('Box', 'boxaWrite', @Test_boxaWrite, []);
  RegisterTest('Box', 'boxaWriteStream', @Test_boxaWriteStream, []);
  RegisterTest('Box', 'boxaWriteStderr', @Test_boxaWriteStderr, []);
  RegisterTest('Box', 'boxaWriteMem', @Test_boxaWriteMem, []);
  RegisterTest('Box', 'boxPrintStreamInfo', @Test_boxPrintStreamInfo, []);
  RegisterTest('Box', 'boxContains', @Test_boxContains, []);
  RegisterTest('Box', 'boxIntersects', @Test_boxIntersects, []);
  RegisterTest('Box', 'boxaContainedInBox', @Test_boxaContainedInBox, []);
  RegisterTest('Box', 'boxaContainedInBoxCount', @Test_boxaContainedInBoxCount, []);
  RegisterTest('Box', 'boxaContainedInBoxa', @Test_boxaContainedInBoxa, []);
  RegisterTest('Box', 'boxaIntersectsBox', @Test_boxaIntersectsBox, []);
  RegisterTest('Box', 'boxaIntersectsBoxCount', @Test_boxaIntersectsBoxCount, []);
  RegisterTest('Box', 'boxaClipToBox', @Test_boxaClipToBox, []);
  RegisterTest('Box', 'boxaCombineOverlaps', @Test_boxaCombineOverlaps, []);
  RegisterTest('Box', 'boxaCombineOverlapsInPair', @Test_boxaCombineOverlapsInPair, []);
  RegisterTest('Box', 'boxOverlapRegion', @Test_boxOverlapRegion, []);
  RegisterTest('Box', 'boxBoundingRegion', @Test_boxBoundingRegion, []);
  RegisterTest('Box', 'boxOverlapFraction', @Test_boxOverlapFraction, []);
  RegisterTest('Box', 'boxOverlapArea', @Test_boxOverlapArea, []);
  RegisterTest('Box', 'boxaHandleOverlaps', @Test_boxaHandleOverlaps, []);
  RegisterTest('Box', 'boxOverlapDistance', @Test_boxOverlapDistance, []);
  RegisterTest('Box', 'boxSeparationDistance', @Test_boxSeparationDistance, []);
  RegisterTest('Box', 'boxCompareSize', @Test_boxCompareSize, []);
  RegisterTest('Box', 'boxContainsPt', @Test_boxContainsPt, []);
  RegisterTest('Box', 'boxaGetNearestToPt', @Test_boxaGetNearestToPt, []);
  RegisterTest('Box', 'boxaGetNearestToLine', @Test_boxaGetNearestToLine, []);
  RegisterTest('Box', 'boxaFindNearestBoxes', @Test_boxaFindNearestBoxes, []);
  RegisterTest('Box', 'boxaGetNearestByDirection', @Test_boxaGetNearestByDirection, []);
  RegisterTest('Box', 'boxGetCenter', @Test_boxGetCenter, []);
  RegisterTest('Box', 'boxIntersectByLine', @Test_boxIntersectByLine, []);
  RegisterTest('Box', 'boxClipToRectangle', @Test_boxClipToRectangle, []);
  RegisterTest('Box', 'boxClipToRectangleParams', @Test_boxClipToRectangleParams, []);
  RegisterTest('Box', 'boxRelocateOneSide', @Test_boxRelocateOneSide, []);
  RegisterTest('Box', 'boxaAdjustSides', @Test_boxaAdjustSides, []);
  RegisterTest('Box', 'boxaAdjustBoxSides', @Test_boxaAdjustBoxSides, []);
  RegisterTest('Box', 'boxAdjustSides', @Test_boxAdjustSides, []);
  RegisterTest('Box', 'boxaSetSide', @Test_boxaSetSide, []);
  RegisterTest('Box', 'boxSetSide', @Test_boxSetSide, []);
  RegisterTest('Box', 'boxaAdjustWidthToTarget', @Test_boxaAdjustWidthToTarget, []);
  RegisterTest('Box', 'boxaAdjustHeightToTarget', @Test_boxaAdjustHeightToTarget, []);
  RegisterTest('Box', 'boxEqual', @Test_boxEqual, []);
  RegisterTest('Box', 'boxaEqual', @Test_boxaEqual, []);
  RegisterTest('Box', 'boxSimilar', @Test_boxSimilar, []);
  RegisterTest('Box', 'boxaSimilar', @Test_boxaSimilar, []);
  RegisterTest('Box', 'boxaJoin', @Test_boxaJoin, []);
  RegisterTest('Box', 'boxaaJoin', @Test_boxaaJoin, []);
  RegisterTest('Box', 'boxaSplitEvenOdd', @Test_boxaSplitEvenOdd, []);
  RegisterTest('Box', 'boxaMergeEvenOdd', @Test_boxaMergeEvenOdd, []);
  RegisterTest('Box', 'boxaTransform', @Test_boxaTransform, []);
  RegisterTest('Box', 'boxTransform', @Test_boxTransform, []);
  RegisterTest('Box', 'boxaTransformOrdered', @Test_boxaTransformOrdered, []);
  RegisterTest('Box', 'boxTransformOrdered', @Test_boxTransformOrdered, []);
  RegisterTest('Box', 'boxaRotateOrth', @Test_boxaRotateOrth, []);
  RegisterTest('Box', 'boxRotateOrth', @Test_boxRotateOrth, []);
  RegisterTest('Box', 'boxaShiftWithPta', @Test_boxaShiftWithPta, []);
  RegisterTest('Box', 'boxaSort', @Test_boxaSort, []);
  RegisterTest('Box', 'boxaBinSort', @Test_boxaBinSort, []);
  RegisterTest('Box', 'boxaSortByIndex', @Test_boxaSortByIndex, []);
  RegisterTest('Box', 'boxaSort2d', @Test_boxaSort2d, []);
  RegisterTest('Box', 'boxaSort2dByIndex', @Test_boxaSort2dByIndex, []);
  RegisterTest('Box', 'boxaExtractAsNuma', @Test_boxaExtractAsNuma, []);
  RegisterTest('Box', 'boxaExtractAsPta', @Test_boxaExtractAsPta, []);
  RegisterTest('Box', 'boxaExtractCorners', @Test_boxaExtractCorners, []);
  RegisterTest('Box', 'boxaGetRankVals', @Test_boxaGetRankVals, []);
  RegisterTest('Box', 'boxaGetMedianVals', @Test_boxaGetMedianVals, []);
  RegisterTest('Box', 'boxaGetAverageSize', @Test_boxaGetAverageSize, []);
  RegisterTest('Box', 'boxaaGetExtent', @Test_boxaaGetExtent, []);
  RegisterTest('Box', 'boxaaFlattenToBoxa', @Test_boxaaFlattenToBoxa, []);
  RegisterTest('Box', 'boxaaFlattenAligned', @Test_boxaaFlattenAligned, []);
  RegisterTest('Box', 'boxaEncapsulateAligned', @Test_boxaEncapsulateAligned, []);
  RegisterTest('Box', 'boxaaTranspose', @Test_boxaaTranspose, []);
  RegisterTest('Box', 'boxaaAlignBox', @Test_boxaaAlignBox, []);
  RegisterTest('Box', 'boxaaDisplay', @Test_boxaaDisplay, []);
  RegisterTest('Box', 'boxaCompareRegions', @Test_boxaCompareRegions, []);
  RegisterTest('Box', 'boxaSelectLargeULBox', @Test_boxaSelectLargeULBox, []);
  RegisterTest('Box', 'boxaSelectRange', @Test_boxaSelectRange, []);
  RegisterTest('Box', 'boxaaSelectRange', @Test_boxaaSelectRange, []);
  RegisterTest('Box', 'boxaSelectBySize', @Test_boxaSelectBySize, []);
  RegisterTest('Box', 'boxaMakeSizeIndicator', @Test_boxaMakeSizeIndicator, []);
  RegisterTest('Box', 'boxaSelectByArea', @Test_boxaSelectByArea, []);
  RegisterTest('Box', 'boxaMakeAreaIndicator', @Test_boxaMakeAreaIndicator, []);
  RegisterTest('Box', 'boxaSelectByWHRatio', @Test_boxaSelectByWHRatio, []);
  RegisterTest('Box', 'boxaMakeWHRatioIndicator', @Test_boxaMakeWHRatioIndicator, []);
  RegisterTest('Box', 'boxaSelectWithIndicator', @Test_boxaSelectWithIndicator, []);
  RegisterTest('Box', 'boxaPermutePseudorandom', @Test_boxaPermutePseudorandom, []);
  RegisterTest('Box', 'boxaPermuteRandom', @Test_boxaPermuteRandom, []);
  RegisterTest('Box', 'boxaSwapBoxes', @Test_boxaSwapBoxes, []);
  RegisterTest('Box', 'boxaConvertToPta', @Test_boxaConvertToPta, []);
  RegisterTest('Box', 'boxConvertToPta', @Test_boxConvertToPta, []);
  RegisterTest('Box', 'boxaGetExtent', @Test_boxaGetExtent, []);
  RegisterTest('Box', 'boxaGetCoverage', @Test_boxaGetCoverage, []);
  RegisterTest('Box', 'boxaaSizeRange', @Test_boxaaSizeRange, []);
  RegisterTest('Box', 'boxaSizeRange', @Test_boxaSizeRange, []);
  RegisterTest('Box', 'boxaLocationRange', @Test_boxaLocationRange, []);
  RegisterTest('Box', 'boxaGetSizes', @Test_boxaGetSizes, []);
  RegisterTest('Box', 'boxaGetArea', @Test_boxaGetArea, []);
  RegisterTest('Box', 'boxaDisplayTiled', @Test_boxaDisplayTiled, []);
  RegisterTest('Box', 'boxaSmoothSequenceMedian', @Test_boxaSmoothSequenceMedian, []);
  RegisterTest('Box', 'boxaWindowedMedian', @Test_boxaWindowedMedian, []);
  RegisterTest('Box', 'boxaModifyWithBoxa', @Test_boxaModifyWithBoxa, []);
  RegisterTest('Box', 'boxaReconcilePairWidth', @Test_boxaReconcilePairWidth, []);
  RegisterTest('Box', 'boxaSizeConsistency', @Test_boxaSizeConsistency, []);
  RegisterTest('Box', 'boxaReconcileAllByMedian', @Test_boxaReconcileAllByMedian, []);
  RegisterTest('Box', 'boxaReconcileSidesByMedian', @Test_boxaReconcileSidesByMedian, []);
  RegisterTest('Box', 'boxaReconcileSizeByMedian', @Test_boxaReconcileSizeByMedian, []);
  RegisterTest('Box', 'boxaPlotSides', @Test_boxaPlotSides, []);
  RegisterTest('Box', 'boxaPlotSizes', @Test_boxaPlotSizes, []);
  RegisterTest('Box', 'boxaFillSequence', @Test_boxaFillSequence, []);
  RegisterTest('Box', 'boxaSizeVariation', @Test_boxaSizeVariation, []);
  RegisterTest('Box', 'boxaMedianDimensions', @Test_boxaMedianDimensions, []);
  RegisterTest('Box', 'boxaExtractSortedPattern', @Test_boxaExtractSortedPattern, []);
  RegisterTest('Box', 'boxaGetWhiteblocks', @Test_boxaGetWhiteblocks, []);
  RegisterTest('Box', 'boxaPruneSortedOnOverlap', @Test_boxaPruneSortedOnOverlap, []);
  RegisterTest('Box', 'boxaaQuadtreeRegions', @Test_boxaaQuadtreeRegions, []);

  RegisterTest('Box', 'Func_boxCreate', @Test_Func_boxCreate, []);
  RegisterTest('Box', 'Func_boxCopy', @Test_Func_boxCopy, []);
  RegisterTest('Box', 'Func_boxClone', @Test_Func_boxClone, []);
  RegisterTest('Box', 'Func_boxSetGeometry', @Test_Func_boxSetGeometry, []);
  RegisterTest('Box', 'Func_boxaCreate', @Test_Func_boxaCreate, []);
  RegisterTest('Box', 'Func_boxaGetBox', @Test_Func_boxaGetBox, []);
  RegisterTest('Box', 'Func_boxGetSideLocations', @Test_Func_boxGetSideLocations, []);

end.
