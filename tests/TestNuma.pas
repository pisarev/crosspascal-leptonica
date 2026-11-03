{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestNuma;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_numaaCompareImagesByBoxes;
begin
  AssertFuncLoaded(@Lept.Numa.NumaaCompareImagesByBoxes, 'numaaCompareImagesByBoxes');
end;

procedure Test_numaConvertToDna;
begin
  AssertFuncLoaded(@Lept.Numa.NumaConvertToDna, 'numaConvertToDna');
end;

procedure Test_numaGammaTRC;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGammaTRC, 'numaGammaTRC');
end;

procedure Test_numaContrastTRC;
begin
  AssertFuncLoaded(@Lept.Numa.NumaContrastTRC, 'numaContrastTRC');
end;

procedure Test_numaEqualizeTRC;
begin
  AssertFuncLoaded(@Lept.Numa.NumaEqualizeTRC, 'numaEqualizeTRC');
end;

procedure Test_numaCreate;
begin
  AssertFuncLoaded(@Lept.Numa.NumaCreate, 'numaCreate');
end;

procedure Test_numaCreateFromIArray;
begin
  AssertFuncLoaded(@Lept.Numa.NumaCreateFromIArray, 'numaCreateFromIArray');
end;

procedure Test_numaCreateFromFArray;
begin
  AssertFuncLoaded(@Lept.Numa.NumaCreateFromFArray, 'numaCreateFromFArray');
end;

procedure Test_numaCreateFromString;
begin
  AssertFuncLoaded(@Lept.Numa.NumaCreateFromString, 'numaCreateFromString');
end;

procedure Test_numaDestroy;
begin
  AssertFuncLoaded(@Lept.Numa.NumaDestroy, 'numaDestroy');
end;

procedure Test_numaCopy;
begin
  AssertFuncLoaded(@Lept.Numa.NumaCopy, 'numaCopy');
end;

procedure Test_numaClone;
begin
  AssertFuncLoaded(@Lept.Numa.NumaClone, 'numaClone');
end;

procedure Test_numaEmpty;
begin
  AssertFuncLoaded(@Lept.Numa.NumaEmpty, 'numaEmpty');
end;

procedure Test_numaAddNumber;
begin
  AssertFuncLoaded(@Lept.Numa.NumaAddNumber, 'numaAddNumber');
end;

procedure Test_numaInsertNumber;
begin
  AssertFuncLoaded(@Lept.Numa.NumaInsertNumber, 'numaInsertNumber');
end;

procedure Test_numaRemoveNumber;
begin
  AssertFuncLoaded(@Lept.Numa.NumaRemoveNumber, 'numaRemoveNumber');
end;

procedure Test_numaReplaceNumber;
begin
  AssertFuncLoaded(@Lept.Numa.NumaReplaceNumber, 'numaReplaceNumber');
end;

procedure Test_numaGetCount;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetCount, 'numaGetCount');
end;

procedure Test_numaSetCount;
begin
  AssertFuncLoaded(@Lept.Numa.NumaSetCount, 'numaSetCount');
end;

procedure Test_numaGetFValue;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetFValue, 'numaGetFValue');
end;

procedure Test_numaGetIValue;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetIValue, 'numaGetIValue');
end;

procedure Test_numaSetValue;
begin
  AssertFuncLoaded(@Lept.Numa.NumaSetValue, 'numaSetValue');
end;

procedure Test_numaShiftValue;
begin
  AssertFuncLoaded(@Lept.Numa.NumaShiftValue, 'numaShiftValue');
end;

procedure Test_numaGetIArray;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetIArray, 'numaGetIArray');
end;

procedure Test_numaGetFArray;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetFArray, 'numaGetFArray');
end;

procedure Test_numaGetParameters;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetParameters, 'numaGetParameters');
end;

procedure Test_numaSetParameters;
begin
  AssertFuncLoaded(@Lept.Numa.NumaSetParameters, 'numaSetParameters');
end;

procedure Test_numaCopyParameters;
begin
  AssertFuncLoaded(@Lept.Numa.NumaCopyParameters, 'numaCopyParameters');
end;

procedure Test_numaConvertToSarray;
begin
  AssertFuncLoaded(@Lept.Numa.NumaConvertToSarray, 'numaConvertToSarray');
end;

procedure Test_numaRead;
begin
  AssertFuncLoaded(@Lept.Numa.NumaRead, 'numaRead');
end;

procedure Test_numaReadStream;
begin
  AssertFuncLoaded(@Lept.Numa.NumaReadStream, 'numaReadStream');
end;

procedure Test_numaReadMem;
begin
  AssertFuncLoaded(@Lept.Numa.NumaReadMem, 'numaReadMem');
end;

procedure Test_numaWriteDebug;
begin
  AssertFuncLoaded(@Lept.Numa.NumaWriteDebug, 'numaWriteDebug');
end;

procedure Test_numaWrite;
begin
  AssertFuncLoaded(@Lept.Numa.NumaWrite, 'numaWrite');
end;

procedure Test_numaWriteStream;
begin
  AssertFuncLoaded(@Lept.Numa.NumaWriteStream, 'numaWriteStream');
end;

procedure Test_numaWriteStderr;
begin
  AssertFuncLoaded(@Lept.Numa.NumaWriteStderr, 'numaWriteStderr');
end;

procedure Test_numaWriteMem;
begin
  AssertFuncLoaded(@Lept.Numa.NumaWriteMem, 'numaWriteMem');
end;

procedure Test_numaaCreate;
begin
  AssertFuncLoaded(@Lept.Numa.NumaaCreate, 'numaaCreate');
end;

procedure Test_numaaCreateFull;
begin
  AssertFuncLoaded(@Lept.Numa.NumaaCreateFull, 'numaaCreateFull');
end;

procedure Test_numaaTruncate;
begin
  AssertFuncLoaded(@Lept.Numa.NumaaTruncate, 'numaaTruncate');
end;

procedure Test_numaaDestroy;
begin
  AssertFuncLoaded(@Lept.Numa.NumaaDestroy, 'numaaDestroy');
end;

procedure Test_numaaAddNuma;
begin
  AssertFuncLoaded(@Lept.Numa.NumaaAddNuma, 'numaaAddNuma');
end;

procedure Test_numaaGetCount;
begin
  AssertFuncLoaded(@Lept.Numa.NumaaGetCount, 'numaaGetCount');
end;

procedure Test_numaaGetNumaCount;
begin
  AssertFuncLoaded(@Lept.Numa.NumaaGetNumaCount, 'numaaGetNumaCount');
end;

procedure Test_numaaGetNumberCount;
begin
  AssertFuncLoaded(@Lept.Numa.NumaaGetNumberCount, 'numaaGetNumberCount');
end;

procedure Test_numaaGetPtrArray;
begin
  AssertFuncLoaded(@Lept.Numa.NumaaGetPtrArray, 'numaaGetPtrArray');
end;

procedure Test_numaaGetNuma;
begin
  AssertFuncLoaded(@Lept.Numa.NumaaGetNuma, 'numaaGetNuma');
end;

procedure Test_numaaReplaceNuma;
begin
  AssertFuncLoaded(@Lept.Numa.NumaaReplaceNuma, 'numaaReplaceNuma');
end;

procedure Test_numaaGetValue;
begin
  AssertFuncLoaded(@Lept.Numa.NumaaGetValue, 'numaaGetValue');
end;

procedure Test_numaaAddNumber;
begin
  AssertFuncLoaded(@Lept.Numa.NumaaAddNumber, 'numaaAddNumber');
end;

procedure Test_numaaRead;
begin
  AssertFuncLoaded(@Lept.Numa.NumaaRead, 'numaaRead');
end;

procedure Test_numaaReadStream;
begin
  AssertFuncLoaded(@Lept.Numa.NumaaReadStream, 'numaaReadStream');
end;

procedure Test_numaaReadMem;
begin
  AssertFuncLoaded(@Lept.Numa.NumaaReadMem, 'numaaReadMem');
end;

procedure Test_numaaWrite;
begin
  AssertFuncLoaded(@Lept.Numa.NumaaWrite, 'numaaWrite');
end;

procedure Test_numaaWriteStream;
begin
  AssertFuncLoaded(@Lept.Numa.NumaaWriteStream, 'numaaWriteStream');
end;

procedure Test_numaaWriteMem;
begin
  AssertFuncLoaded(@Lept.Numa.NumaaWriteMem, 'numaaWriteMem');
end;

procedure Test_numaArithOp;
begin
  AssertFuncLoaded(@Lept.Numa.NumaArithOp, 'numaArithOp');
end;

procedure Test_numaLogicalOp;
begin
  AssertFuncLoaded(@Lept.Numa.NumaLogicalOp, 'numaLogicalOp');
end;

procedure Test_numaInvert;
begin
  AssertFuncLoaded(@Lept.Numa.NumaInvert, 'numaInvert');
end;

procedure Test_numaSimilar;
begin
  AssertFuncLoaded(@Lept.Numa.NumaSimilar, 'numaSimilar');
end;

procedure Test_numaAddToNumber;
begin
  AssertFuncLoaded(@Lept.Numa.NumaAddToNumber, 'numaAddToNumber');
end;

procedure Test_numaGetMin;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetMin, 'numaGetMin');
end;

procedure Test_numaGetMax;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetMax, 'numaGetMax');
end;

procedure Test_numaGetSum;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetSum, 'numaGetSum');
end;

procedure Test_numaGetPartialSums;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetPartialSums, 'numaGetPartialSums');
end;

procedure Test_numaGetSumOnInterval;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetSumOnInterval, 'numaGetSumOnInterval');
end;

procedure Test_numaHasOnlyIntegers;
begin
  AssertFuncLoaded(@Lept.Numa.NumaHasOnlyIntegers, 'numaHasOnlyIntegers');
end;

procedure Test_numaGetMean;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetMean, 'numaGetMean');
end;

procedure Test_numaGetMeanAbsval;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetMeanAbsval, 'numaGetMeanAbsval');
end;

procedure Test_numaSubsample;
begin
  AssertFuncLoaded(@Lept.Numa.NumaSubsample, 'numaSubsample');
end;

procedure Test_numaMakeDelta;
begin
  AssertFuncLoaded(@Lept.Numa.NumaMakeDelta, 'numaMakeDelta');
end;

procedure Test_numaMakeSequence;
begin
  AssertFuncLoaded(@Lept.Numa.NumaMakeSequence, 'numaMakeSequence');
end;

procedure Test_numaMakeConstant;
begin
  AssertFuncLoaded(@Lept.Numa.NumaMakeConstant, 'numaMakeConstant');
end;

procedure Test_numaMakeAbsval;
begin
  AssertFuncLoaded(@Lept.Numa.NumaMakeAbsval, 'numaMakeAbsval');
end;

procedure Test_numaAddBorder;
begin
  AssertFuncLoaded(@Lept.Numa.NumaAddBorder, 'numaAddBorder');
end;

procedure Test_numaAddSpecifiedBorder;
begin
  AssertFuncLoaded(@Lept.Numa.NumaAddSpecifiedBorder, 'numaAddSpecifiedBorder');
end;

procedure Test_numaRemoveBorder;
begin
  AssertFuncLoaded(@Lept.Numa.NumaRemoveBorder, 'numaRemoveBorder');
end;

procedure Test_numaCountNonzeroRuns;
begin
  AssertFuncLoaded(@Lept.Numa.NumaCountNonzeroRuns, 'numaCountNonzeroRuns');
end;

procedure Test_numaGetNonzeroRange;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetNonzeroRange, 'numaGetNonzeroRange');
end;

procedure Test_numaGetCountRelativeToZero;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetCountRelativeToZero, 'numaGetCountRelativeToZero');
end;

procedure Test_numaClipToInterval;
begin
  AssertFuncLoaded(@Lept.Numa.NumaClipToInterval, 'numaClipToInterval');
end;

procedure Test_numaMakeThresholdIndicator;
begin
  AssertFuncLoaded(@Lept.Numa.NumaMakeThresholdIndicator, 'numaMakeThresholdIndicator');
end;

procedure Test_numaUniformSampling;
begin
  AssertFuncLoaded(@Lept.Numa.NumaUniformSampling, 'numaUniformSampling');
end;

procedure Test_numaReverse;
begin
  AssertFuncLoaded(@Lept.Numa.NumaReverse, 'numaReverse');
end;

procedure Test_numaLowPassIntervals;
begin
  AssertFuncLoaded(@Lept.Numa.NumaLowPassIntervals, 'numaLowPassIntervals');
end;

procedure Test_numaThresholdEdges;
begin
  AssertFuncLoaded(@Lept.Numa.NumaThresholdEdges, 'numaThresholdEdges');
end;

procedure Test_numaGetSpanValues;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetSpanValues, 'numaGetSpanValues');
end;

procedure Test_numaGetEdgeValues;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetEdgeValues, 'numaGetEdgeValues');
end;

procedure Test_numaInterpolateEqxVal;
begin
  AssertFuncLoaded(@Lept.Numa.NumaInterpolateEqxVal, 'numaInterpolateEqxVal');
end;

procedure Test_numaInterpolateArbxVal;
begin
  AssertFuncLoaded(@Lept.Numa.NumaInterpolateArbxVal, 'numaInterpolateArbxVal');
end;

procedure Test_numaInterpolateEqxInterval;
begin
  AssertFuncLoaded(@Lept.Numa.NumaInterpolateEqxInterval, 'numaInterpolateEqxInterval');
end;

procedure Test_numaInterpolateArbxInterval;
begin
  AssertFuncLoaded(@Lept.Numa.NumaInterpolateArbxInterval, 'numaInterpolateArbxInterval');
end;

procedure Test_numaFitMax;
begin
  AssertFuncLoaded(@Lept.Numa.NumaFitMax, 'numaFitMax');
end;

procedure Test_numaDifferentiateInterval;
begin
  AssertFuncLoaded(@Lept.Numa.NumaDifferentiateInterval, 'numaDifferentiateInterval');
end;

procedure Test_numaIntegrateInterval;
begin
  AssertFuncLoaded(@Lept.Numa.NumaIntegrateInterval, 'numaIntegrateInterval');
end;

procedure Test_numaSortGeneral;
begin
  AssertFuncLoaded(@Lept.Numa.NumaSortGeneral, 'numaSortGeneral');
end;

procedure Test_numaSortAutoSelect;
begin
  AssertFuncLoaded(@Lept.Numa.NumaSortAutoSelect, 'numaSortAutoSelect');
end;

procedure Test_numaSortIndexAutoSelect;
begin
  AssertFuncLoaded(@Lept.Numa.NumaSortIndexAutoSelect, 'numaSortIndexAutoSelect');
end;

procedure Test_numaChooseSortType;
begin
  AssertFuncLoaded(@Lept.Numa.NumaChooseSortType, 'numaChooseSortType');
end;

procedure Test_numaSort;
begin
  AssertFuncLoaded(@Lept.Numa.NumaSort, 'numaSort');
end;

procedure Test_numaBinSort;
begin
  AssertFuncLoaded(@Lept.Numa.NumaBinSort, 'numaBinSort');
end;

procedure Test_numaGetSortIndex;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetSortIndex, 'numaGetSortIndex');
end;

procedure Test_numaGetBinSortIndex;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetBinSortIndex, 'numaGetBinSortIndex');
end;

procedure Test_numaSortByIndex;
begin
  AssertFuncLoaded(@Lept.Numa.NumaSortByIndex, 'numaSortByIndex');
end;

procedure Test_numaIsSorted;
begin
  AssertFuncLoaded(@Lept.Numa.NumaIsSorted, 'numaIsSorted');
end;

procedure Test_numaSortPair;
begin
  AssertFuncLoaded(@Lept.Numa.NumaSortPair, 'numaSortPair');
end;

procedure Test_numaInvertMap;
begin
  AssertFuncLoaded(@Lept.Numa.NumaInvertMap, 'numaInvertMap');
end;

procedure Test_numaAddSorted;
begin
  AssertFuncLoaded(@Lept.Numa.NumaAddSorted, 'numaAddSorted');
end;

procedure Test_numaFindSortedLoc;
begin
  AssertFuncLoaded(@Lept.Numa.NumaFindSortedLoc, 'numaFindSortedLoc');
end;

procedure Test_numaPseudorandomSequence;
begin
  AssertFuncLoaded(@Lept.Numa.NumaPseudorandomSequence, 'numaPseudorandomSequence');
end;

procedure Test_numaRandomPermutation;
begin
  AssertFuncLoaded(@Lept.Numa.NumaRandomPermutation, 'numaRandomPermutation');
end;

procedure Test_numaGetRankValue;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetRankValue, 'numaGetRankValue');
end;

procedure Test_numaGetMedian;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetMedian, 'numaGetMedian');
end;

procedure Test_numaGetBinnedMedian;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetBinnedMedian, 'numaGetBinnedMedian');
end;

procedure Test_numaGetMeanDevFromMedian;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetMeanDevFromMedian, 'numaGetMeanDevFromMedian');
end;

procedure Test_numaGetMedianDevFromMedian;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetMedianDevFromMedian, 'numaGetMedianDevFromMedian');
end;

procedure Test_numaGetMode;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetMode, 'numaGetMode');
end;

procedure Test_numaJoin;
begin
  AssertFuncLoaded(@Lept.Numa.NumaJoin, 'numaJoin');
end;

procedure Test_numaaJoin;
begin
  AssertFuncLoaded(@Lept.Numa.NumaaJoin, 'numaaJoin');
end;

procedure Test_numaaFlattenToNuma;
begin
  AssertFuncLoaded(@Lept.Numa.NumaaFlattenToNuma, 'numaaFlattenToNuma');
end;

procedure Test_numaErode;
begin
  AssertFuncLoaded(@Lept.Numa.NumaErode, 'numaErode');
end;

procedure Test_numaDilate;
begin
  AssertFuncLoaded(@Lept.Numa.NumaDilate, 'numaDilate');
end;

procedure Test_numaOpen;
begin
  AssertFuncLoaded(@Lept.Numa.NumaOpen, 'numaOpen');
end;

procedure Test_numaClose;
begin
  AssertFuncLoaded(@Lept.Numa.NumaClose, 'numaClose');
end;

procedure Test_numaTransform;
begin
  AssertFuncLoaded(@Lept.Numa.NumaTransform, 'numaTransform');
end;

procedure Test_numaSimpleStats;
begin
  AssertFuncLoaded(@Lept.Numa.NumaSimpleStats, 'numaSimpleStats');
end;

procedure Test_numaWindowedStats;
begin
  AssertFuncLoaded(@Lept.Numa.NumaWindowedStats, 'numaWindowedStats');
end;

procedure Test_numaWindowedMean;
begin
  AssertFuncLoaded(@Lept.Numa.NumaWindowedMean, 'numaWindowedMean');
end;

procedure Test_numaWindowedMeanSquare;
begin
  AssertFuncLoaded(@Lept.Numa.NumaWindowedMeanSquare, 'numaWindowedMeanSquare');
end;

procedure Test_numaWindowedVariance;
begin
  AssertFuncLoaded(@Lept.Numa.NumaWindowedVariance, 'numaWindowedVariance');
end;

procedure Test_numaWindowedMedian;
begin
  AssertFuncLoaded(@Lept.Numa.NumaWindowedMedian, 'numaWindowedMedian');
end;

procedure Test_numaConvertToInt;
begin
  AssertFuncLoaded(@Lept.Numa.NumaConvertToInt, 'numaConvertToInt');
end;

procedure Test_numaMakeHistogram;
begin
  AssertFuncLoaded(@Lept.Numa.NumaMakeHistogram, 'numaMakeHistogram');
end;

procedure Test_numaMakeHistogramAuto;
begin
  AssertFuncLoaded(@Lept.Numa.NumaMakeHistogramAuto, 'numaMakeHistogramAuto');
end;

procedure Test_numaMakeHistogramClipped;
begin
  AssertFuncLoaded(@Lept.Numa.NumaMakeHistogramClipped, 'numaMakeHistogramClipped');
end;

procedure Test_numaRebinHistogram;
begin
  AssertFuncLoaded(@Lept.Numa.NumaRebinHistogram, 'numaRebinHistogram');
end;

procedure Test_numaNormalizeHistogram;
begin
  AssertFuncLoaded(@Lept.Numa.NumaNormalizeHistogram, 'numaNormalizeHistogram');
end;

procedure Test_numaGetStatsUsingHistogram;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetStatsUsingHistogram, 'numaGetStatsUsingHistogram');
end;

procedure Test_numaGetHistogramStats;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetHistogramStats, 'numaGetHistogramStats');
end;

procedure Test_numaGetHistogramStatsOnInterval;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetHistogramStatsOnInterval, 'numaGetHistogramStatsOnInterval');
end;

procedure Test_numaMakeRankFromHistogram;
begin
  AssertFuncLoaded(@Lept.Numa.NumaMakeRankFromHistogram, 'numaMakeRankFromHistogram');
end;

procedure Test_numaHistogramGetRankFromVal;
begin
  AssertFuncLoaded(@Lept.Numa.NumaHistogramGetRankFromVal, 'numaHistogramGetRankFromVal');
end;

procedure Test_numaHistogramGetValFromRank;
begin
  AssertFuncLoaded(@Lept.Numa.NumaHistogramGetValFromRank, 'numaHistogramGetValFromRank');
end;

procedure Test_numaDiscretizeSortedInBins;
begin
  AssertFuncLoaded(@Lept.Numa.NumaDiscretizeSortedInBins, 'numaDiscretizeSortedInBins');
end;

procedure Test_numaDiscretizeHistoInBins;
begin
  AssertFuncLoaded(@Lept.Numa.NumaDiscretizeHistoInBins, 'numaDiscretizeHistoInBins');
end;

procedure Test_numaGetRankBinValues;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetRankBinValues, 'numaGetRankBinValues');
end;

procedure Test_numaGetUniformBinSizes;
begin
  AssertFuncLoaded(@Lept.Numa.NumaGetUniformBinSizes, 'numaGetUniformBinSizes');
end;

procedure Test_numaSplitDistribution;
begin
  AssertFuncLoaded(@Lept.Numa.NumaSplitDistribution, 'numaSplitDistribution');
end;

procedure Test_numaEarthMoverDistance;
begin
  AssertFuncLoaded(@Lept.Numa.NumaEarthMoverDistance, 'numaEarthMoverDistance');
end;

procedure Test_numaFindPeaks;
begin
  AssertFuncLoaded(@Lept.Numa.NumaFindPeaks, 'numaFindPeaks');
end;

procedure Test_numaFindExtrema;
begin
  AssertFuncLoaded(@Lept.Numa.NumaFindExtrema, 'numaFindExtrema');
end;

procedure Test_numaFindLocForThreshold;
begin
  AssertFuncLoaded(@Lept.Numa.NumaFindLocForThreshold, 'numaFindLocForThreshold');
end;

procedure Test_numaCountReversals;
begin
  AssertFuncLoaded(@Lept.Numa.NumaCountReversals, 'numaCountReversals');
end;

procedure Test_numaSelectCrossingThreshold;
begin
  AssertFuncLoaded(@Lept.Numa.NumaSelectCrossingThreshold, 'numaSelectCrossingThreshold');
end;

procedure Test_numaCrossingsByThreshold;
begin
  AssertFuncLoaded(@Lept.Numa.NumaCrossingsByThreshold, 'numaCrossingsByThreshold');
end;

procedure Test_numaCrossingsByPeaks;
begin
  AssertFuncLoaded(@Lept.Numa.NumaCrossingsByPeaks, 'numaCrossingsByPeaks');
end;

procedure Test_numaEvalBestHaarParameters;
begin
  AssertFuncLoaded(@Lept.Numa.NumaEvalBestHaarParameters, 'numaEvalBestHaarParameters');
end;

procedure Test_numaEvalHaarSum;
begin
  AssertFuncLoaded(@Lept.Numa.NumaEvalHaarSum, 'numaEvalHaarSum');
end;

procedure Test_numaConvertToPta1;
begin
  AssertFuncLoaded(@Lept.Numa.NumaConvertToPta1, 'numaConvertToPta1');
end;

procedure Test_numaConvertToPta2;
begin
  AssertFuncLoaded(@Lept.Numa.NumaConvertToPta2, 'numaConvertToPta2');
end;

procedure Test_numaQuantizeCrossingsByWidth;
begin
  AssertFuncLoaded(@Lept.Numa.NumaQuantizeCrossingsByWidth, 'numaQuantizeCrossingsByWidth');
end;

procedure Test_numaQuantizeCrossingsByWindow;
begin
  AssertFuncLoaded(@Lept.Numa.NumaQuantizeCrossingsByWindow, 'numaQuantizeCrossingsByWindow');
end;

procedure Test_Func_numaCreate;
var
  N: Pointer;
begin
  N := Lept.Numa.NumaCreate(10);
  AssertNotNil(N, 'numaCreate');
  AssertEqualsInt(0, Lept.Numa.NumaGetCount(N), 'empty count');
  Lept.Numa.NumaDestroy(@N);
end;

procedure Test_Func_numaAddNumber;
var
  N: Pointer;
  Val: Single;
begin
  N := Lept.Numa.NumaCreate(5);
  Lept.Numa.NumaAddNumber(N, 3.14);
  Lept.Numa.NumaAddNumber(N, 2.71);
  AssertEqualsInt(2, Lept.Numa.NumaGetCount(N), 'count=2');
  Val := 0;
  Lept.Numa.NumaGetFValue(N, 0, @Val);
  AssertTrue(Abs(Val - 3.14) < 0.01, 'first value');
  Lept.Numa.NumaDestroy(@N);
end;

procedure Test_Func_numaCopy;
var
  N, C: Pointer;
begin
  N := Lept.Numa.NumaCreate(5);
  Lept.Numa.NumaAddNumber(N, 1.0);
  Lept.Numa.NumaAddNumber(N, 2.0);
  C := Lept.Numa.NumaCopy(N);
  AssertNotNil(C, 'numaCopy');
  AssertEqualsInt(2, Lept.Numa.NumaGetCount(C), 'copy count');
  Lept.Numa.NumaDestroy(@C);
  Lept.Numa.NumaDestroy(@N);
end;

procedure Test_Func_numaGetIValue;
var
  N: Pointer;
  Val: Integer;
begin
  N := Lept.Numa.NumaCreate(5);
  Lept.Numa.NumaAddNumber(N, 42.0);
  Val := 0;
  Lept.Numa.NumaGetIValue(N, 0, @Val);
  AssertEqualsInt(42, Val, 'int value');
  Lept.Numa.NumaDestroy(@N);
end;

initialization
  RegisterTest('Numa', 'numaaCompareImagesByBoxes', @Test_numaaCompareImagesByBoxes, []);
  RegisterTest('Numa', 'numaConvertToDna', @Test_numaConvertToDna, []);
  RegisterTest('Numa', 'numaGammaTRC', @Test_numaGammaTRC, []);
  RegisterTest('Numa', 'numaContrastTRC', @Test_numaContrastTRC, []);
  RegisterTest('Numa', 'numaEqualizeTRC', @Test_numaEqualizeTRC, []);
  RegisterTest('Numa', 'numaCreate', @Test_numaCreate, []);
  RegisterTest('Numa', 'numaCreateFromIArray', @Test_numaCreateFromIArray, []);
  RegisterTest('Numa', 'numaCreateFromFArray', @Test_numaCreateFromFArray, []);
  RegisterTest('Numa', 'numaCreateFromString', @Test_numaCreateFromString, []);
  RegisterTest('Numa', 'numaDestroy', @Test_numaDestroy, []);
  RegisterTest('Numa', 'numaCopy', @Test_numaCopy, []);
  RegisterTest('Numa', 'numaClone', @Test_numaClone, []);
  RegisterTest('Numa', 'numaEmpty', @Test_numaEmpty, []);
  RegisterTest('Numa', 'numaAddNumber', @Test_numaAddNumber, []);
  RegisterTest('Numa', 'numaInsertNumber', @Test_numaInsertNumber, []);
  RegisterTest('Numa', 'numaRemoveNumber', @Test_numaRemoveNumber, []);
  RegisterTest('Numa', 'numaReplaceNumber', @Test_numaReplaceNumber, []);
  RegisterTest('Numa', 'numaGetCount', @Test_numaGetCount, []);
  RegisterTest('Numa', 'numaSetCount', @Test_numaSetCount, []);
  RegisterTest('Numa', 'numaGetFValue', @Test_numaGetFValue, []);
  RegisterTest('Numa', 'numaGetIValue', @Test_numaGetIValue, []);
  RegisterTest('Numa', 'numaSetValue', @Test_numaSetValue, []);
  RegisterTest('Numa', 'numaShiftValue', @Test_numaShiftValue, []);
  RegisterTest('Numa', 'numaGetIArray', @Test_numaGetIArray, []);
  RegisterTest('Numa', 'numaGetFArray', @Test_numaGetFArray, []);
  RegisterTest('Numa', 'numaGetParameters', @Test_numaGetParameters, []);
  RegisterTest('Numa', 'numaSetParameters', @Test_numaSetParameters, []);
  RegisterTest('Numa', 'numaCopyParameters', @Test_numaCopyParameters, []);
  RegisterTest('Numa', 'numaConvertToSarray', @Test_numaConvertToSarray, []);
  RegisterTest('Numa', 'numaRead', @Test_numaRead, []);
  RegisterTest('Numa', 'numaReadStream', @Test_numaReadStream, []);
  RegisterTest('Numa', 'numaReadMem', @Test_numaReadMem, []);
  RegisterTest('Numa', 'numaWriteDebug', @Test_numaWriteDebug, []);
  RegisterTest('Numa', 'numaWrite', @Test_numaWrite, []);
  RegisterTest('Numa', 'numaWriteStream', @Test_numaWriteStream, []);
  RegisterTest('Numa', 'numaWriteStderr', @Test_numaWriteStderr, []);
  RegisterTest('Numa', 'numaWriteMem', @Test_numaWriteMem, []);
  RegisterTest('Numa', 'numaaCreate', @Test_numaaCreate, []);
  RegisterTest('Numa', 'numaaCreateFull', @Test_numaaCreateFull, []);
  RegisterTest('Numa', 'numaaTruncate', @Test_numaaTruncate, []);
  RegisterTest('Numa', 'numaaDestroy', @Test_numaaDestroy, []);
  RegisterTest('Numa', 'numaaAddNuma', @Test_numaaAddNuma, []);
  RegisterTest('Numa', 'numaaGetCount', @Test_numaaGetCount, []);
  RegisterTest('Numa', 'numaaGetNumaCount', @Test_numaaGetNumaCount, []);
  RegisterTest('Numa', 'numaaGetNumberCount', @Test_numaaGetNumberCount, []);
  RegisterTest('Numa', 'numaaGetPtrArray', @Test_numaaGetPtrArray, []);
  RegisterTest('Numa', 'numaaGetNuma', @Test_numaaGetNuma, []);
  RegisterTest('Numa', 'numaaReplaceNuma', @Test_numaaReplaceNuma, []);
  RegisterTest('Numa', 'numaaGetValue', @Test_numaaGetValue, []);
  RegisterTest('Numa', 'numaaAddNumber', @Test_numaaAddNumber, []);
  RegisterTest('Numa', 'numaaRead', @Test_numaaRead, []);
  RegisterTest('Numa', 'numaaReadStream', @Test_numaaReadStream, []);
  RegisterTest('Numa', 'numaaReadMem', @Test_numaaReadMem, []);
  RegisterTest('Numa', 'numaaWrite', @Test_numaaWrite, []);
  RegisterTest('Numa', 'numaaWriteStream', @Test_numaaWriteStream, []);
  RegisterTest('Numa', 'numaaWriteMem', @Test_numaaWriteMem, []);
  RegisterTest('Numa', 'numaArithOp', @Test_numaArithOp, []);
  RegisterTest('Numa', 'numaLogicalOp', @Test_numaLogicalOp, []);
  RegisterTest('Numa', 'numaInvert', @Test_numaInvert, []);
  RegisterTest('Numa', 'numaSimilar', @Test_numaSimilar, []);
  RegisterTest('Numa', 'numaAddToNumber', @Test_numaAddToNumber, []);
  RegisterTest('Numa', 'numaGetMin', @Test_numaGetMin, []);
  RegisterTest('Numa', 'numaGetMax', @Test_numaGetMax, []);
  RegisterTest('Numa', 'numaGetSum', @Test_numaGetSum, []);
  RegisterTest('Numa', 'numaGetPartialSums', @Test_numaGetPartialSums, []);
  RegisterTest('Numa', 'numaGetSumOnInterval', @Test_numaGetSumOnInterval, []);
  RegisterTest('Numa', 'numaHasOnlyIntegers', @Test_numaHasOnlyIntegers, []);
  RegisterTest('Numa', 'numaGetMean', @Test_numaGetMean, []);
  RegisterTest('Numa', 'numaGetMeanAbsval', @Test_numaGetMeanAbsval, []);
  RegisterTest('Numa', 'numaSubsample', @Test_numaSubsample, []);
  RegisterTest('Numa', 'numaMakeDelta', @Test_numaMakeDelta, []);
  RegisterTest('Numa', 'numaMakeSequence', @Test_numaMakeSequence, []);
  RegisterTest('Numa', 'numaMakeConstant', @Test_numaMakeConstant, []);
  RegisterTest('Numa', 'numaMakeAbsval', @Test_numaMakeAbsval, []);
  RegisterTest('Numa', 'numaAddBorder', @Test_numaAddBorder, []);
  RegisterTest('Numa', 'numaAddSpecifiedBorder', @Test_numaAddSpecifiedBorder, []);
  RegisterTest('Numa', 'numaRemoveBorder', @Test_numaRemoveBorder, []);
  RegisterTest('Numa', 'numaCountNonzeroRuns', @Test_numaCountNonzeroRuns, []);
  RegisterTest('Numa', 'numaGetNonzeroRange', @Test_numaGetNonzeroRange, []);
  RegisterTest('Numa', 'numaGetCountRelativeToZero', @Test_numaGetCountRelativeToZero, []);
  RegisterTest('Numa', 'numaClipToInterval', @Test_numaClipToInterval, []);
  RegisterTest('Numa', 'numaMakeThresholdIndicator', @Test_numaMakeThresholdIndicator, []);
  RegisterTest('Numa', 'numaUniformSampling', @Test_numaUniformSampling, []);
  RegisterTest('Numa', 'numaReverse', @Test_numaReverse, []);
  RegisterTest('Numa', 'numaLowPassIntervals', @Test_numaLowPassIntervals, []);
  RegisterTest('Numa', 'numaThresholdEdges', @Test_numaThresholdEdges, []);
  RegisterTest('Numa', 'numaGetSpanValues', @Test_numaGetSpanValues, []);
  RegisterTest('Numa', 'numaGetEdgeValues', @Test_numaGetEdgeValues, []);
  RegisterTest('Numa', 'numaInterpolateEqxVal', @Test_numaInterpolateEqxVal, []);
  RegisterTest('Numa', 'numaInterpolateArbxVal', @Test_numaInterpolateArbxVal, []);
  RegisterTest('Numa', 'numaInterpolateEqxInterval', @Test_numaInterpolateEqxInterval, []);
  RegisterTest('Numa', 'numaInterpolateArbxInterval', @Test_numaInterpolateArbxInterval, []);
  RegisterTest('Numa', 'numaFitMax', @Test_numaFitMax, []);
  RegisterTest('Numa', 'numaDifferentiateInterval', @Test_numaDifferentiateInterval, []);
  RegisterTest('Numa', 'numaIntegrateInterval', @Test_numaIntegrateInterval, []);
  RegisterTest('Numa', 'numaSortGeneral', @Test_numaSortGeneral, []);
  RegisterTest('Numa', 'numaSortAutoSelect', @Test_numaSortAutoSelect, []);
  RegisterTest('Numa', 'numaSortIndexAutoSelect', @Test_numaSortIndexAutoSelect, []);
  RegisterTest('Numa', 'numaChooseSortType', @Test_numaChooseSortType, []);
  RegisterTest('Numa', 'numaSort', @Test_numaSort, []);
  RegisterTest('Numa', 'numaBinSort', @Test_numaBinSort, []);
  RegisterTest('Numa', 'numaGetSortIndex', @Test_numaGetSortIndex, []);
  RegisterTest('Numa', 'numaGetBinSortIndex', @Test_numaGetBinSortIndex, []);
  RegisterTest('Numa', 'numaSortByIndex', @Test_numaSortByIndex, []);
  RegisterTest('Numa', 'numaIsSorted', @Test_numaIsSorted, []);
  RegisterTest('Numa', 'numaSortPair', @Test_numaSortPair, []);
  RegisterTest('Numa', 'numaInvertMap', @Test_numaInvertMap, []);
  RegisterTest('Numa', 'numaAddSorted', @Test_numaAddSorted, []);
  RegisterTest('Numa', 'numaFindSortedLoc', @Test_numaFindSortedLoc, []);
  RegisterTest('Numa', 'numaPseudorandomSequence', @Test_numaPseudorandomSequence, []);
  RegisterTest('Numa', 'numaRandomPermutation', @Test_numaRandomPermutation, []);
  RegisterTest('Numa', 'numaGetRankValue', @Test_numaGetRankValue, []);
  RegisterTest('Numa', 'numaGetMedian', @Test_numaGetMedian, []);
  RegisterTest('Numa', 'numaGetBinnedMedian', @Test_numaGetBinnedMedian, []);
  RegisterTest('Numa', 'numaGetMeanDevFromMedian', @Test_numaGetMeanDevFromMedian, []);
  RegisterTest('Numa', 'numaGetMedianDevFromMedian', @Test_numaGetMedianDevFromMedian, []);
  RegisterTest('Numa', 'numaGetMode', @Test_numaGetMode, []);
  RegisterTest('Numa', 'numaJoin', @Test_numaJoin, []);
  RegisterTest('Numa', 'numaaJoin', @Test_numaaJoin, []);
  RegisterTest('Numa', 'numaaFlattenToNuma', @Test_numaaFlattenToNuma, []);
  RegisterTest('Numa', 'numaErode', @Test_numaErode, []);
  RegisterTest('Numa', 'numaDilate', @Test_numaDilate, []);
  RegisterTest('Numa', 'numaOpen', @Test_numaOpen, []);
  RegisterTest('Numa', 'numaClose', @Test_numaClose, []);
  RegisterTest('Numa', 'numaTransform', @Test_numaTransform, []);
  RegisterTest('Numa', 'numaSimpleStats', @Test_numaSimpleStats, []);
  RegisterTest('Numa', 'numaWindowedStats', @Test_numaWindowedStats, []);
  RegisterTest('Numa', 'numaWindowedMean', @Test_numaWindowedMean, []);
  RegisterTest('Numa', 'numaWindowedMeanSquare', @Test_numaWindowedMeanSquare, []);
  RegisterTest('Numa', 'numaWindowedVariance', @Test_numaWindowedVariance, []);
  RegisterTest('Numa', 'numaWindowedMedian', @Test_numaWindowedMedian, []);
  RegisterTest('Numa', 'numaConvertToInt', @Test_numaConvertToInt, []);
  RegisterTest('Numa', 'numaMakeHistogram', @Test_numaMakeHistogram, []);
  RegisterTest('Numa', 'numaMakeHistogramAuto', @Test_numaMakeHistogramAuto, []);
  RegisterTest('Numa', 'numaMakeHistogramClipped', @Test_numaMakeHistogramClipped, []);
  RegisterTest('Numa', 'numaRebinHistogram', @Test_numaRebinHistogram, []);
  RegisterTest('Numa', 'numaNormalizeHistogram', @Test_numaNormalizeHistogram, []);
  RegisterTest('Numa', 'numaGetStatsUsingHistogram', @Test_numaGetStatsUsingHistogram, []);
  RegisterTest('Numa', 'numaGetHistogramStats', @Test_numaGetHistogramStats, []);
  RegisterTest('Numa', 'numaGetHistogramStatsOnInterval', @Test_numaGetHistogramStatsOnInterval, []);
  RegisterTest('Numa', 'numaMakeRankFromHistogram', @Test_numaMakeRankFromHistogram, []);
  RegisterTest('Numa', 'numaHistogramGetRankFromVal', @Test_numaHistogramGetRankFromVal, []);
  RegisterTest('Numa', 'numaHistogramGetValFromRank', @Test_numaHistogramGetValFromRank, []);
  RegisterTest('Numa', 'numaDiscretizeSortedInBins', @Test_numaDiscretizeSortedInBins, []);
  RegisterTest('Numa', 'numaDiscretizeHistoInBins', @Test_numaDiscretizeHistoInBins, []);
  RegisterTest('Numa', 'numaGetRankBinValues', @Test_numaGetRankBinValues, []);
  RegisterTest('Numa', 'numaGetUniformBinSizes', @Test_numaGetUniformBinSizes, []);
  RegisterTest('Numa', 'numaSplitDistribution', @Test_numaSplitDistribution, []);
  RegisterTest('Numa', 'numaEarthMoverDistance', @Test_numaEarthMoverDistance, []);
  RegisterTest('Numa', 'numaFindPeaks', @Test_numaFindPeaks, []);
  RegisterTest('Numa', 'numaFindExtrema', @Test_numaFindExtrema, []);
  RegisterTest('Numa', 'numaFindLocForThreshold', @Test_numaFindLocForThreshold, []);
  RegisterTest('Numa', 'numaCountReversals', @Test_numaCountReversals, []);
  RegisterTest('Numa', 'numaSelectCrossingThreshold', @Test_numaSelectCrossingThreshold, []);
  RegisterTest('Numa', 'numaCrossingsByThreshold', @Test_numaCrossingsByThreshold, []);
  RegisterTest('Numa', 'numaCrossingsByPeaks', @Test_numaCrossingsByPeaks, []);
  RegisterTest('Numa', 'numaEvalBestHaarParameters', @Test_numaEvalBestHaarParameters, []);
  RegisterTest('Numa', 'numaEvalHaarSum', @Test_numaEvalHaarSum, []);
  RegisterTest('Numa', 'numaConvertToPta1', @Test_numaConvertToPta1, []);
  RegisterTest('Numa', 'numaConvertToPta2', @Test_numaConvertToPta2, []);
  RegisterTest('Numa', 'numaQuantizeCrossingsByWidth', @Test_numaQuantizeCrossingsByWidth, []);
  RegisterTest('Numa', 'numaQuantizeCrossingsByWindow', @Test_numaQuantizeCrossingsByWindow, []);

  RegisterTest('Numa', 'Func_numaCreate', @Test_Func_numaCreate, []);
  RegisterTest('Numa', 'Func_numaAddNumber', @Test_Func_numaAddNumber, []);
  RegisterTest('Numa', 'Func_numaCopy', @Test_Func_numaCopy, []);
  RegisterTest('Numa', 'Func_numaGetIValue', @Test_Func_numaGetIValue, []);

end.
