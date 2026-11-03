{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestPix;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_pixGetBackgroundGrayMap;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetBackgroundGrayMap, 'pixGetBackgroundGrayMap');
end;

procedure Test_pixGetBackgroundRGBMap;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetBackgroundRGBMap, 'pixGetBackgroundRGBMap');
end;

procedure Test_pixGetBackgroundGrayMapMorph;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetBackgroundGrayMapMorph, 'pixGetBackgroundGrayMapMorph');
end;

procedure Test_pixGetBackgroundRGBMapMorph;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetBackgroundRGBMapMorph, 'pixGetBackgroundRGBMapMorph');
end;

procedure Test_pixFillMapHoles;
begin
  AssertFuncLoaded(@Lept.Pix.PixFillMapHoles, 'pixFillMapHoles');
end;

procedure Test_pixExtendByReplication;
begin
  AssertFuncLoaded(@Lept.Pix.PixExtendByReplication, 'pixExtendByReplication');
end;

procedure Test_pixSmoothConnectedRegions;
begin
  AssertFuncLoaded(@Lept.Pix.PixSmoothConnectedRegions, 'pixSmoothConnectedRegions');
end;

procedure Test_l_getDataBit;
begin
  AssertFuncLoaded(@Lept.Pix.L_getDataBit, 'l_getDataBit');
end;

procedure Test_l_setDataBit;
begin
  AssertFuncLoaded(@Lept.Pix.L_setDataBit, 'l_setDataBit');
end;

procedure Test_l_clearDataBit;
begin
  AssertFuncLoaded(@Lept.Pix.L_clearDataBit, 'l_clearDataBit');
end;

procedure Test_l_setDataBitVal;
begin
  AssertFuncLoaded(@Lept.Pix.L_setDataBitVal, 'l_setDataBitVal');
end;

procedure Test_l_getDataDibit;
begin
  AssertFuncLoaded(@Lept.Pix.L_getDataDibit, 'l_getDataDibit');
end;

procedure Test_l_setDataDibit;
begin
  AssertFuncLoaded(@Lept.Pix.L_setDataDibit, 'l_setDataDibit');
end;

procedure Test_l_clearDataDibit;
begin
  AssertFuncLoaded(@Lept.Pix.L_clearDataDibit, 'l_clearDataDibit');
end;

procedure Test_l_getDataQbit;
begin
  AssertFuncLoaded(@Lept.Pix.L_getDataQbit, 'l_getDataQbit');
end;

procedure Test_l_setDataQbit;
begin
  AssertFuncLoaded(@Lept.Pix.L_setDataQbit, 'l_setDataQbit');
end;

procedure Test_l_clearDataQbit;
begin
  AssertFuncLoaded(@Lept.Pix.L_clearDataQbit, 'l_clearDataQbit');
end;

procedure Test_l_getDataByte;
begin
  AssertFuncLoaded(@Lept.Pix.L_getDataByte, 'l_getDataByte');
end;

procedure Test_l_setDataByte;
begin
  AssertFuncLoaded(@Lept.Pix.L_setDataByte, 'l_setDataByte');
end;

procedure Test_l_getDataTwoBytes;
begin
  AssertFuncLoaded(@Lept.Pix.L_getDataTwoBytes, 'l_getDataTwoBytes');
end;

procedure Test_l_setDataTwoBytes;
begin
  AssertFuncLoaded(@Lept.Pix.L_setDataTwoBytes, 'l_setDataTwoBytes');
end;

procedure Test_l_getDataFourBytes;
begin
  AssertFuncLoaded(@Lept.Pix.L_getDataFourBytes, 'l_getDataFourBytes');
end;

procedure Test_l_setDataFourBytes;
begin
  AssertFuncLoaded(@Lept.Pix.L_setDataFourBytes, 'l_setDataFourBytes');
end;

procedure Test_barcodeDispatchDecoder;
begin
  AssertFuncLoaded(@Lept.Pix.BarcodeDispatchDecoder, 'barcodeDispatchDecoder');
end;

procedure Test_barcodeFormatIsSupported;
begin
  AssertFuncLoaded(@Lept.Pix.BarcodeFormatIsSupported, 'barcodeFormatIsSupported');
end;

procedure Test_bbufferCreate;
begin
  AssertFuncLoaded(@Lept.Pix.BbufferCreate, 'bbufferCreate');
end;

procedure Test_bbufferDestroy;
begin
  AssertFuncLoaded(@Lept.Pix.BbufferDestroy, 'bbufferDestroy');
end;

procedure Test_bbufferDestroyAndSaveData;
begin
  AssertFuncLoaded(@Lept.Pix.BbufferDestroyAndSaveData, 'bbufferDestroyAndSaveData');
end;

procedure Test_bbufferRead;
begin
  AssertFuncLoaded(@Lept.Pix.BbufferRead, 'bbufferRead');
end;

procedure Test_bbufferReadStream;
begin
  AssertFuncLoaded(@Lept.Pix.BbufferReadStream, 'bbufferReadStream');
end;

procedure Test_bbufferExtendArray;
begin
  AssertFuncLoaded(@Lept.Pix.BbufferExtendArray, 'bbufferExtendArray');
end;

procedure Test_bbufferWrite;
begin
  AssertFuncLoaded(@Lept.Pix.BbufferWrite, 'bbufferWrite');
end;

procedure Test_bbufferWriteStream;
begin
  AssertFuncLoaded(@Lept.Pix.BbufferWriteStream, 'bbufferWriteStream');
end;

procedure Test_l_bootnum_gen1;
begin
  AssertFuncLoaded(@Lept.Pix.L_bootnum_gen1, 'l_bootnum_gen1');
end;

procedure Test_l_bootnum_gen2;
begin
  AssertFuncLoaded(@Lept.Pix.L_bootnum_gen2, 'l_bootnum_gen2');
end;

procedure Test_l_bootnum_gen3;
begin
  AssertFuncLoaded(@Lept.Pix.L_bootnum_gen3, 'l_bootnum_gen3');
end;

procedure Test_l_bootnum_gen4;
begin
  AssertFuncLoaded(@Lept.Pix.L_bootnum_gen4, 'l_bootnum_gen4');
end;

procedure Test_pixMaskConnComp;
begin
  AssertFuncLoaded(@Lept.Pix.PixMaskConnComp, 'pixMaskConnComp');
end;

procedure Test_pixMaskBoxa;
begin
  AssertFuncLoaded(@Lept.Pix.PixMaskBoxa, 'pixMaskBoxa');
end;

procedure Test_pixSetBlackOrWhiteBoxa;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetBlackOrWhiteBoxa, 'pixSetBlackOrWhiteBoxa');
end;

procedure Test_pixDrawBoxa;
begin
  AssertFuncLoaded(@Lept.Pix.PixDrawBoxa, 'pixDrawBoxa');
end;

procedure Test_pixDrawBoxaRandom;
begin
  AssertFuncLoaded(@Lept.Pix.PixDrawBoxaRandom, 'pixDrawBoxaRandom');
end;

procedure Test_pixSplitIntoBoxa;
begin
  AssertFuncLoaded(@Lept.Pix.PixSplitIntoBoxa, 'pixSplitIntoBoxa');
end;

procedure Test_pixSplitComponentIntoBoxa;
begin
  AssertFuncLoaded(@Lept.Pix.PixSplitComponentIntoBoxa, 'pixSplitComponentIntoBoxa');
end;

procedure Test_makeMosaicStrips;
begin
  AssertFuncLoaded(@Lept.Pix.MakeMosaicStrips, 'makeMosaicStrips');
end;

procedure Test_pixSelectLargeULComp;
begin
  AssertFuncLoaded(@Lept.Pix.PixSelectLargeULComp, 'pixSelectLargeULComp');
end;

procedure Test_l_byteaCreate;
begin
  AssertFuncLoaded(@Lept.Pix.L_byteaCreate, 'l_byteaCreate');
end;

procedure Test_l_byteaInitFromMem;
begin
  AssertFuncLoaded(@Lept.Pix.L_byteaInitFromMem, 'l_byteaInitFromMem');
end;

procedure Test_l_byteaInitFromFile;
begin
  AssertFuncLoaded(@Lept.Pix.L_byteaInitFromFile, 'l_byteaInitFromFile');
end;

procedure Test_l_byteaInitFromStream;
begin
  AssertFuncLoaded(@Lept.Pix.L_byteaInitFromStream, 'l_byteaInitFromStream');
end;

procedure Test_l_byteaCopy;
begin
  AssertFuncLoaded(@Lept.Pix.L_byteaCopy, 'l_byteaCopy');
end;

procedure Test_l_byteaDestroy;
begin
  AssertFuncLoaded(@Lept.Pix.L_byteaDestroy, 'l_byteaDestroy');
end;

procedure Test_l_byteaGetSize;
begin
  AssertFuncLoaded(@Lept.Pix.L_byteaGetSize, 'l_byteaGetSize');
end;

procedure Test_l_byteaGetData;
begin
  AssertFuncLoaded(@Lept.Pix.L_byteaGetData, 'l_byteaGetData');
end;

procedure Test_l_byteaCopyData;
begin
  AssertFuncLoaded(@Lept.Pix.L_byteaCopyData, 'l_byteaCopyData');
end;

procedure Test_l_byteaAppendData;
begin
  AssertFuncLoaded(@Lept.Pix.L_byteaAppendData, 'l_byteaAppendData');
end;

procedure Test_l_byteaAppendString;
begin
  AssertFuncLoaded(@Lept.Pix.L_byteaAppendString, 'l_byteaAppendString');
end;

procedure Test_l_byteaJoin;
begin
  AssertFuncLoaded(@Lept.Pix.L_byteaJoin, 'l_byteaJoin');
end;

procedure Test_l_byteaSplit;
begin
  AssertFuncLoaded(@Lept.Pix.L_byteaSplit, 'l_byteaSplit');
end;

procedure Test_l_byteaFindEachSequence;
begin
  AssertFuncLoaded(@Lept.Pix.L_byteaFindEachSequence, 'l_byteaFindEachSequence');
end;

procedure Test_l_byteaWrite;
begin
  AssertFuncLoaded(@Lept.Pix.L_byteaWrite, 'l_byteaWrite');
end;

procedure Test_l_byteaWriteStream;
begin
  AssertFuncLoaded(@Lept.Pix.L_byteaWriteStream, 'l_byteaWriteStream');
end;

procedure Test_ccbaDestroy;
begin
  AssertFuncLoaded(@Lept.Pix.CcbaDestroy, 'ccbaDestroy');
end;

procedure Test_pixGetAllCCBorders;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetAllCCBorders, 'pixGetAllCCBorders');
end;

procedure Test_pixGetOuterBordersPtaa;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetOuterBordersPtaa, 'pixGetOuterBordersPtaa');
end;

procedure Test_pixGetOuterBorder;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetOuterBorder, 'pixGetOuterBorder');
end;

procedure Test_ccbaGenerateGlobalLocs;
begin
  AssertFuncLoaded(@Lept.Pix.CcbaGenerateGlobalLocs, 'ccbaGenerateGlobalLocs');
end;

procedure Test_ccbaGenerateStepChains;
begin
  AssertFuncLoaded(@Lept.Pix.CcbaGenerateStepChains, 'ccbaGenerateStepChains');
end;

procedure Test_ccbaStepChainsToPixCoords;
begin
  AssertFuncLoaded(@Lept.Pix.CcbaStepChainsToPixCoords, 'ccbaStepChainsToPixCoords');
end;

procedure Test_ccbaGenerateSPGlobalLocs;
begin
  AssertFuncLoaded(@Lept.Pix.CcbaGenerateSPGlobalLocs, 'ccbaGenerateSPGlobalLocs');
end;

procedure Test_ccbaGenerateSinglePath;
begin
  AssertFuncLoaded(@Lept.Pix.CcbaGenerateSinglePath, 'ccbaGenerateSinglePath');
end;

procedure Test_ccbaDisplayBorder;
begin
  AssertFuncLoaded(@Lept.Pix.CcbaDisplayBorder, 'ccbaDisplayBorder');
end;

procedure Test_ccbaDisplaySPBorder;
begin
  AssertFuncLoaded(@Lept.Pix.CcbaDisplaySPBorder, 'ccbaDisplaySPBorder');
end;

procedure Test_ccbaDisplayImage1;
begin
  AssertFuncLoaded(@Lept.Pix.CcbaDisplayImage1, 'ccbaDisplayImage1');
end;

procedure Test_ccbaDisplayImage2;
begin
  AssertFuncLoaded(@Lept.Pix.CcbaDisplayImage2, 'ccbaDisplayImage2');
end;

procedure Test_ccbaWrite;
begin
  AssertFuncLoaded(@Lept.Pix.CcbaWrite, 'ccbaWrite');
end;

procedure Test_ccbaWriteStream;
begin
  AssertFuncLoaded(@Lept.Pix.CcbaWriteStream, 'ccbaWriteStream');
end;

procedure Test_ccbaRead;
begin
  AssertFuncLoaded(@Lept.Pix.CcbaRead, 'ccbaRead');
end;

procedure Test_ccbaReadStream;
begin
  AssertFuncLoaded(@Lept.Pix.CcbaReadStream, 'ccbaReadStream');
end;

procedure Test_ccbaWriteSVG;
begin
  AssertFuncLoaded(@Lept.Pix.CcbaWriteSVG, 'ccbaWriteSVG');
end;

procedure Test_ccbaWriteSVGString;
begin
  AssertFuncLoaded(@Lept.Pix.CcbaWriteSVGString, 'ccbaWriteSVGString');
end;

procedure Test_pixFindCheckerboardCorners;
begin
  AssertFuncLoaded(@Lept.Pix.PixFindCheckerboardCorners, 'pixFindCheckerboardCorners');
end;

procedure Test_pixGetWordsInTextlines;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetWordsInTextlines, 'pixGetWordsInTextlines');
end;

procedure Test_pixGetWordBoxesInTextlines;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetWordBoxesInTextlines, 'pixGetWordBoxesInTextlines');
end;

procedure Test_pixFindWordAndCharacterBoxes;
begin
  AssertFuncLoaded(@Lept.Pix.PixFindWordAndCharacterBoxes, 'pixFindWordAndCharacterBoxes');
end;

procedure Test_pixColorShiftWhitePoint;
begin
  AssertFuncLoaded(@Lept.Pix.PixColorShiftWhitePoint, 'pixColorShiftWhitePoint');
end;

procedure Test_pixMaskOverGrayPixels;
begin
  AssertFuncLoaded(@Lept.Pix.PixMaskOverGrayPixels, 'pixMaskOverGrayPixels');
end;

procedure Test_pixColorsForQuantization;
begin
  AssertFuncLoaded(@Lept.Pix.PixColorsForQuantization, 'pixColorsForQuantization');
end;

procedure Test_pixNumColors;
begin
  AssertFuncLoaded(@Lept.Pix.PixNumColors, 'pixNumColors');
end;

procedure Test_pixGetMostPopulatedColors;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetMostPopulatedColors, 'pixGetMostPopulatedColors');
end;

procedure Test_pixSimpleColorQuantize;
begin
  AssertFuncLoaded(@Lept.Pix.PixSimpleColorQuantize, 'pixSimpleColorQuantize');
end;

procedure Test_makeRGBIndexTables;
begin
  AssertFuncLoaded(@Lept.Pix.MakeRGBIndexTables, 'makeRGBIndexTables');
end;

procedure Test_getRGBFromIndex;
begin
  AssertFuncLoaded(@Lept.Pix.GetRGBFromIndex, 'getRGBFromIndex');
end;

procedure Test_pixHasHighlightRed;
begin
  AssertFuncLoaded(@Lept.Pix.PixHasHighlightRed, 'pixHasHighlightRed');
end;

procedure Test_l_colorfillCreate;
begin
  AssertFuncLoaded(@Lept.Pix.L_colorfillCreate, 'l_colorfillCreate');
end;

procedure Test_l_colorfillDestroy;
begin
  AssertFuncLoaded(@Lept.Pix.L_colorfillDestroy, 'l_colorfillDestroy');
end;

procedure Test_pixColorFill;
begin
  AssertFuncLoaded(@Lept.Pix.PixColorFill, 'pixColorFill');
end;

procedure Test_makeColorfillTestData;
begin
  AssertFuncLoaded(@Lept.Pix.MakeColorfillTestData, 'makeColorfillTestData');
end;

procedure Test_pixLinearMapToTargetColor;
begin
  AssertFuncLoaded(@Lept.Pix.PixLinearMapToTargetColor, 'pixLinearMapToTargetColor');
end;

procedure Test_pixelLinearMapToTargetColor;
begin
  AssertFuncLoaded(@Lept.Pix.PixelLinearMapToTargetColor, 'pixelLinearMapToTargetColor');
end;

procedure Test_pixShiftByComponent;
begin
  AssertFuncLoaded(@Lept.Pix.PixShiftByComponent, 'pixShiftByComponent');
end;

procedure Test_pixelShiftByComponent;
begin
  AssertFuncLoaded(@Lept.Pix.PixelShiftByComponent, 'pixelShiftByComponent');
end;

procedure Test_pixelFractionalShift;
begin
  AssertFuncLoaded(@Lept.Pix.PixelFractionalShift, 'pixelFractionalShift');
end;

procedure Test_pixMapWithInvariantHue;
begin
  AssertFuncLoaded(@Lept.Pix.PixMapWithInvariantHue, 'pixMapWithInvariantHue');
end;

procedure Test_pixColorMorph;
begin
  AssertFuncLoaded(@Lept.Pix.PixColorMorph, 'pixColorMorph');
end;

procedure Test_makeRGBToIndexTables;
begin
  AssertFuncLoaded(@Lept.Pix.MakeRGBToIndexTables, 'makeRGBToIndexTables');
end;

procedure Test_getOctcubeIndexFromRGB;
begin
  AssertFuncLoaded(@Lept.Pix.GetOctcubeIndexFromRGB, 'getOctcubeIndexFromRGB');
end;

procedure Test_pixOctcubeQuantMixedWithGray;
begin
  AssertFuncLoaded(@Lept.Pix.PixOctcubeQuantMixedWithGray, 'pixOctcubeQuantMixedWithGray');
end;

procedure Test_pixFewColorsOctcubeQuant1;
begin
  AssertFuncLoaded(@Lept.Pix.PixFewColorsOctcubeQuant1, 'pixFewColorsOctcubeQuant1');
end;

procedure Test_pixFewColorsOctcubeQuant2;
begin
  AssertFuncLoaded(@Lept.Pix.PixFewColorsOctcubeQuant2, 'pixFewColorsOctcubeQuant2');
end;

procedure Test_pixFewColorsOctcubeQuantMixed;
begin
  AssertFuncLoaded(@Lept.Pix.PixFewColorsOctcubeQuantMixed, 'pixFewColorsOctcubeQuantMixed');
end;

procedure Test_pixQuantFromCmap;
begin
  AssertFuncLoaded(@Lept.Pix.PixQuantFromCmap, 'pixQuantFromCmap');
end;

procedure Test_pixOctcubeQuantFromCmap;
begin
  AssertFuncLoaded(@Lept.Pix.PixOctcubeQuantFromCmap, 'pixOctcubeQuantFromCmap');
end;

procedure Test_pixOctcubeHistogram;
begin
  AssertFuncLoaded(@Lept.Pix.PixOctcubeHistogram, 'pixOctcubeHistogram');
end;

procedure Test_pixRemoveUnusedColors;
begin
  AssertFuncLoaded(@Lept.Pix.PixRemoveUnusedColors, 'pixRemoveUnusedColors');
end;

procedure Test_pixNumberOccupiedOctcubes;
begin
  AssertFuncLoaded(@Lept.Pix.PixNumberOccupiedOctcubes, 'pixNumberOccupiedOctcubes');
end;

procedure Test_pixFewColorsMedianCutQuantMixed;
begin
  AssertFuncLoaded(@Lept.Pix.PixFewColorsMedianCutQuantMixed, 'pixFewColorsMedianCutQuantMixed');
end;

procedure Test_pixMedianCutHisto;
begin
  AssertFuncLoaded(@Lept.Pix.PixMedianCutHisto, 'pixMedianCutHisto');
end;

procedure Test_pixMakeRangeMaskHS;
begin
  AssertFuncLoaded(@Lept.Pix.PixMakeRangeMaskHS, 'pixMakeRangeMaskHS');
end;

procedure Test_pixMakeRangeMaskHV;
begin
  AssertFuncLoaded(@Lept.Pix.PixMakeRangeMaskHV, 'pixMakeRangeMaskHV');
end;

procedure Test_pixMakeRangeMaskSV;
begin
  AssertFuncLoaded(@Lept.Pix.PixMakeRangeMaskSV, 'pixMakeRangeMaskSV');
end;

procedure Test_pixMakeHistoHS;
begin
  AssertFuncLoaded(@Lept.Pix.PixMakeHistoHS, 'pixMakeHistoHS');
end;

procedure Test_pixMakeHistoHV;
begin
  AssertFuncLoaded(@Lept.Pix.PixMakeHistoHV, 'pixMakeHistoHV');
end;

procedure Test_pixMakeHistoSV;
begin
  AssertFuncLoaded(@Lept.Pix.PixMakeHistoSV, 'pixMakeHistoSV');
end;

procedure Test_pixFindHistoPeaksHSV;
begin
  AssertFuncLoaded(@Lept.Pix.PixFindHistoPeaksHSV, 'pixFindHistoPeaksHSV');
end;

procedure Test_displayHSVColorRange;
begin
  AssertFuncLoaded(@Lept.Pix.DisplayHSVColorRange, 'displayHSVColorRange');
end;

procedure Test_convertXYZToRGB;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertXYZToRGB, 'convertXYZToRGB');
end;

procedure Test_convertXYZToLAB;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertXYZToLAB, 'convertXYZToLAB');
end;

procedure Test_pixMakeGamutRGB;
begin
  AssertFuncLoaded(@Lept.Pix.PixMakeGamutRGB, 'pixMakeGamutRGB');
end;

procedure Test_pixEqual;
begin
  AssertFuncLoaded(@Lept.Pix.PixEqual, 'pixEqual');
end;

procedure Test_pixEqualWithAlpha;
begin
  AssertFuncLoaded(@Lept.Pix.PixEqualWithAlpha, 'pixEqualWithAlpha');
end;

procedure Test_pixEqualWithCmap;
begin
  AssertFuncLoaded(@Lept.Pix.PixEqualWithCmap, 'pixEqualWithCmap');
end;

procedure Test_cmapEqual;
begin
  AssertFuncLoaded(@Lept.Pix.CmapEqual, 'cmapEqual');
end;

procedure Test_pixUsesCmapColor;
begin
  AssertFuncLoaded(@Lept.Pix.PixUsesCmapColor, 'pixUsesCmapColor');
end;

procedure Test_pixTestForSimilarity;
begin
  AssertFuncLoaded(@Lept.Pix.PixTestForSimilarity, 'pixTestForSimilarity');
end;

procedure Test_pixGetDifferenceStats;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetDifferenceStats, 'pixGetDifferenceStats');
end;

procedure Test_pixGetDifferenceHistogram;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetDifferenceHistogram, 'pixGetDifferenceHistogram');
end;

procedure Test_pixGetPerceptualDiff;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetPerceptualDiff, 'pixGetPerceptualDiff');
end;

procedure Test_pixGetPSNR;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetPSNR, 'pixGetPSNR');
end;

procedure Test_pixGenPhotoHistos;
begin
  AssertFuncLoaded(@Lept.Pix.PixGenPhotoHistos, 'pixGenPhotoHistos');
end;

procedure Test_pixPadToCenterCentroid;
begin
  AssertFuncLoaded(@Lept.Pix.PixPadToCenterCentroid, 'pixPadToCenterCentroid');
end;

procedure Test_pixCentroid8;
begin
  AssertFuncLoaded(@Lept.Pix.PixCentroid8, 'pixCentroid8');
end;

procedure Test_pixDecideIfPhotoImage;
begin
  AssertFuncLoaded(@Lept.Pix.PixDecideIfPhotoImage, 'pixDecideIfPhotoImage');
end;

procedure Test_compareTilesByHisto;
begin
  AssertFuncLoaded(@Lept.Pix.CompareTilesByHisto, 'compareTilesByHisto');
end;

procedure Test_nextOnPixelInRaster;
begin
  AssertFuncLoaded(@Lept.Pix.NextOnPixelInRaster, 'nextOnPixelInRaster');
end;

procedure Test_convertFilesTo1bpp;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertFilesTo1bpp, 'convertFilesTo1bpp');
end;

procedure Test_pixMeanSquareAccum;
begin
  AssertFuncLoaded(@Lept.Pix.PixMeanSquareAccum, 'pixMeanSquareAccum');
end;

procedure Test_l_setConvolveSampling;
begin
  AssertFuncLoaded(@Lept.Pix.L_setConvolveSampling, 'l_setConvolveSampling');
end;

procedure Test_pixAddGaussianNoise;
begin
  AssertFuncLoaded(@Lept.Pix.PixAddGaussianNoise, 'pixAddGaussianNoise');
end;

procedure Test_gaussDistribSampling;
begin
  AssertFuncLoaded(@Lept.Pix.GaussDistribSampling, 'gaussDistribSampling');
end;

procedure Test_pixConvertDataToDna;
begin
  AssertFuncLoaded(@Lept.Pix.PixConvertDataToDna, 'pixConvertDataToDna');
end;

procedure Test_l_asetCreateFromDna;
begin
  AssertFuncLoaded(@Lept.Pix.L_asetCreateFromDna, 'l_asetCreateFromDna');
end;

procedure Test_l_hmapCreateFromDna;
begin
  AssertFuncLoaded(@Lept.Pix.L_hmapCreateFromDna, 'l_hmapCreateFromDna');
end;

procedure Test_pixFMorphopGen_2;
begin
  AssertFuncLoaded(@Lept.Pix.PixFMorphopGen_2, 'pixFMorphopGen_2');
end;

procedure Test_fmorphopgen_low_2;
begin
  AssertFuncLoaded(@Lept.Pix.Fmorphopgen_low_2, 'fmorphopgen_low_2');
end;

procedure Test_pixMeasureEdgeSmoothness;
begin
  AssertFuncLoaded(@Lept.Pix.PixMeasureEdgeSmoothness, 'pixMeasureEdgeSmoothness');
end;

procedure Test_pixGetEdgeProfile;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetEdgeProfile, 'pixGetEdgeProfile');
end;

procedure Test_pixGetLastOffPixelInRun;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetLastOffPixelInRun, 'pixGetLastOffPixelInRun');
end;

procedure Test_pixGetLastOnPixelInRun;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetLastOnPixelInRun, 'pixGetLastOnPixelInRun');
end;

procedure Test_encodeBase64;
begin
  AssertFuncLoaded(@Lept.Pix.EncodeBase64, 'encodeBase64');
end;

procedure Test_decodeBase64;
begin
  AssertFuncLoaded(@Lept.Pix.DecodeBase64, 'decodeBase64');
end;

procedure Test_encodeAscii85;
begin
  AssertFuncLoaded(@Lept.Pix.EncodeAscii85, 'encodeAscii85');
end;

procedure Test_decodeAscii85;
begin
  AssertFuncLoaded(@Lept.Pix.DecodeAscii85, 'decodeAscii85');
end;

procedure Test_encodeAscii85WithComp;
begin
  AssertFuncLoaded(@Lept.Pix.EncodeAscii85WithComp, 'encodeAscii85WithComp');
end;

procedure Test_decodeAscii85WithComp;
begin
  AssertFuncLoaded(@Lept.Pix.DecodeAscii85WithComp, 'decodeAscii85WithComp');
end;

procedure Test_reformatPacked64;
begin
  AssertFuncLoaded(@Lept.Pix.ReformatPacked64, 'reformatPacked64');
end;

procedure Test_pixTRCMap;
begin
  AssertFuncLoaded(@Lept.Pix.PixTRCMap, 'pixTRCMap');
end;

procedure Test_pixTRCMapGeneral;
begin
  AssertFuncLoaded(@Lept.Pix.PixTRCMapGeneral, 'pixTRCMapGeneral');
end;

procedure Test_pixMosaicColorShiftRGB;
begin
  AssertFuncLoaded(@Lept.Pix.PixMosaicColorShiftRGB, 'pixMosaicColorShiftRGB');
end;

procedure Test_pixColorShiftRGB;
begin
  AssertFuncLoaded(@Lept.Pix.PixColorShiftRGB, 'pixColorShiftRGB');
end;

procedure Test_pixDarkenGray;
begin
  AssertFuncLoaded(@Lept.Pix.PixDarkenGray, 'pixDarkenGray');
end;

procedure Test_pixMultMatrixColor;
begin
  AssertFuncLoaded(@Lept.Pix.PixMultMatrixColor, 'pixMultMatrixColor');
end;

procedure Test_pixHalfEdgeByBandpass;
begin
  AssertFuncLoaded(@Lept.Pix.PixHalfEdgeByBandpass, 'pixHalfEdgeByBandpass');
end;

procedure Test_fhmtautogen;
begin
  AssertFuncLoaded(@Lept.Pix.Fhmtautogen, 'fhmtautogen');
end;

procedure Test_fhmtautogen1;
begin
  AssertFuncLoaded(@Lept.Pix.Fhmtautogen1, 'fhmtautogen1');
end;

procedure Test_fhmtautogen2;
begin
  AssertFuncLoaded(@Lept.Pix.Fhmtautogen2, 'fhmtautogen2');
end;

procedure Test_pixFHMTGen_1;
begin
  AssertFuncLoaded(@Lept.Pix.PixFHMTGen_1, 'pixFHMTGen_1');
end;

procedure Test_fhmtgen_low_1;
begin
  AssertFuncLoaded(@Lept.Pix.Fhmtgen_low_1, 'fhmtgen_low_1');
end;

procedure Test_pixItalicWords;
begin
  AssertFuncLoaded(@Lept.Pix.PixItalicWords, 'pixItalicWords');
end;

procedure Test_pixOrientCorrect;
begin
  AssertFuncLoaded(@Lept.Pix.PixOrientCorrect, 'pixOrientCorrect');
end;

procedure Test_pixOrientDetect;
begin
  AssertFuncLoaded(@Lept.Pix.PixOrientDetect, 'pixOrientDetect');
end;

procedure Test_makeOrientDecision;
begin
  AssertFuncLoaded(@Lept.Pix.MakeOrientDecision, 'makeOrientDecision');
end;

procedure Test_pixUpDownDetect;
begin
  AssertFuncLoaded(@Lept.Pix.PixUpDownDetect, 'pixUpDownDetect');
end;

procedure Test_pixMirrorDetect;
begin
  AssertFuncLoaded(@Lept.Pix.PixMirrorDetect, 'pixMirrorDetect');
end;

procedure Test_fmorphautogen;
begin
  AssertFuncLoaded(@Lept.Pix.Fmorphautogen, 'fmorphautogen');
end;

procedure Test_fmorphautogen1;
begin
  AssertFuncLoaded(@Lept.Pix.Fmorphautogen1, 'fmorphautogen1');
end;

procedure Test_fmorphautogen2;
begin
  AssertFuncLoaded(@Lept.Pix.Fmorphautogen2, 'fmorphautogen2');
end;

procedure Test_pixFMorphopGen_1;
begin
  AssertFuncLoaded(@Lept.Pix.PixFMorphopGen_1, 'pixFMorphopGen_1');
end;

procedure Test_fmorphopgen_low_1;
begin
  AssertFuncLoaded(@Lept.Pix.Fmorphopgen_low_1, 'fmorphopgen_low_1');
end;

procedure Test_pixConvertToFPix;
begin
  AssertFuncLoaded(@Lept.Pix.PixConvertToFPix, 'pixConvertToFPix');
end;

procedure Test_pixConvertToDPix;
begin
  AssertFuncLoaded(@Lept.Pix.PixConvertToDPix, 'pixConvertToDPix');
end;

procedure Test_pixComponentFunction;
begin
  AssertFuncLoaded(@Lept.Pix.PixComponentFunction, 'pixComponentFunction');
end;

procedure Test_convertPtaLineTo4cc;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertPtaLineTo4cc, 'convertPtaLineTo4cc');
end;

procedure Test_locatePtRadially;
begin
  AssertFuncLoaded(@Lept.Pix.LocatePtRadially, 'locatePtRadially');
end;

procedure Test_makePlotPtaFromNuma;
begin
  AssertFuncLoaded(@Lept.Pix.MakePlotPtaFromNuma, 'makePlotPtaFromNuma');
end;

procedure Test_makePlotPtaFromNumaGen;
begin
  AssertFuncLoaded(@Lept.Pix.MakePlotPtaFromNumaGen, 'makePlotPtaFromNumaGen');
end;

procedure Test_pixFillPolygon;
begin
  AssertFuncLoaded(@Lept.Pix.PixFillPolygon, 'pixFillPolygon');
end;

procedure Test_pixGeneratePtaBoundary;
begin
  AssertFuncLoaded(@Lept.Pix.PixGeneratePtaBoundary, 'pixGeneratePtaBoundary');
end;

procedure Test_ditherToBinaryLineLow;
begin
  AssertFuncLoaded(@Lept.Pix.DitherToBinaryLineLow, 'ditherToBinaryLineLow');
end;

procedure Test_thresholdToBinaryLineLow;
begin
  AssertFuncLoaded(@Lept.Pix.ThresholdToBinaryLineLow, 'thresholdToBinaryLineLow');
end;

procedure Test_pixAdaptThresholdToBinary;
begin
  AssertFuncLoaded(@Lept.Pix.PixAdaptThresholdToBinary, 'pixAdaptThresholdToBinary');
end;

procedure Test_pixAdaptThresholdToBinaryGen;
begin
  AssertFuncLoaded(@Lept.Pix.PixAdaptThresholdToBinaryGen, 'pixAdaptThresholdToBinaryGen');
end;

procedure Test_makeGrayQuantIndexTable;
begin
  AssertFuncLoaded(@Lept.Pix.MakeGrayQuantIndexTable, 'makeGrayQuantIndexTable');
end;

procedure Test_makeGrayQuantTableArb;
begin
  AssertFuncLoaded(@Lept.Pix.MakeGrayQuantTableArb, 'makeGrayQuantTableArb');
end;

procedure Test_pixGrayQuantFromHisto;
begin
  AssertFuncLoaded(@Lept.Pix.PixGrayQuantFromHisto, 'pixGrayQuantFromHisto');
end;

procedure Test_pixGrayQuantFromCmap;
begin
  AssertFuncLoaded(@Lept.Pix.PixGrayQuantFromCmap, 'pixGrayQuantFromCmap');
end;

procedure Test_l_hmapCreate;
begin
  AssertFuncLoaded(@Lept.Pix.L_hmapCreate, 'l_hmapCreate');
end;

procedure Test_l_hmapDestroy;
begin
  AssertFuncLoaded(@Lept.Pix.L_hmapDestroy, 'l_hmapDestroy');
end;

procedure Test_l_hmapLookup;
begin
  AssertFuncLoaded(@Lept.Pix.L_hmapLookup, 'l_hmapLookup');
end;

procedure Test_l_hmapRehash;
begin
  AssertFuncLoaded(@Lept.Pix.L_hmapRehash, 'l_hmapRehash');
end;

procedure Test_lheapCreate;
begin
  AssertFuncLoaded(@Lept.Pix.LheapCreate, 'lheapCreate');
end;

procedure Test_lheapDestroy;
begin
  AssertFuncLoaded(@Lept.Pix.LheapDestroy, 'lheapDestroy');
end;

procedure Test_lheapAdd;
begin
  AssertFuncLoaded(@Lept.Pix.LheapAdd, 'lheapAdd');
end;

procedure Test_lheapRemove;
begin
  AssertFuncLoaded(@Lept.Pix.LheapRemove, 'lheapRemove');
end;

procedure Test_lheapGetCount;
begin
  AssertFuncLoaded(@Lept.Pix.LheapGetCount, 'lheapGetCount');
end;

procedure Test_lheapGetElement;
begin
  AssertFuncLoaded(@Lept.Pix.LheapGetElement, 'lheapGetElement');
end;

procedure Test_lheapSort;
begin
  AssertFuncLoaded(@Lept.Pix.LheapSort, 'lheapSort');
end;

procedure Test_lheapSortStrictOrder;
begin
  AssertFuncLoaded(@Lept.Pix.LheapSortStrictOrder, 'lheapSortStrictOrder');
end;

procedure Test_lheapPrint;
begin
  AssertFuncLoaded(@Lept.Pix.LheapPrint, 'lheapPrint');
end;

procedure Test_pixHaustest;
begin
  AssertFuncLoaded(@Lept.Pix.PixHaustest, 'pixHaustest');
end;

procedure Test_pixRankHaustest;
begin
  AssertFuncLoaded(@Lept.Pix.PixRankHaustest, 'pixRankHaustest');
end;

procedure Test_pixWordMaskByDilation;
begin
  AssertFuncLoaded(@Lept.Pix.PixWordMaskByDilation, 'pixWordMaskByDilation');
end;

procedure Test_pixWordBoxesByDilation;
begin
  AssertFuncLoaded(@Lept.Pix.PixWordBoxesByDilation, 'pixWordBoxesByDilation');
end;

procedure Test_fgetJp2kResolution;
begin
  AssertFuncLoaded(@Lept.Pix.FgetJp2kResolution, 'fgetJp2kResolution');
end;

procedure Test_readResolutionMemJp2k;
begin
  AssertFuncLoaded(@Lept.Pix.ReadResolutionMemJp2k, 'readResolutionMemJp2k');
end;

procedure Test_fgetJpegResolution;
begin
  AssertFuncLoaded(@Lept.Pix.FgetJpegResolution, 'fgetJpegResolution');
end;

procedure Test_fgetJpegComment;
begin
  AssertFuncLoaded(@Lept.Pix.FgetJpegComment, 'fgetJpegComment');
end;

procedure Test_readResolutionMemJpeg;
begin
  AssertFuncLoaded(@Lept.Pix.ReadResolutionMemJpeg, 'readResolutionMemJpeg');
end;

procedure Test_pixSetChromaSampling;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetChromaSampling, 'pixSetChromaSampling');
end;

procedure Test_create2dFloatArray;
begin
  AssertFuncLoaded(@Lept.Pix.Create2dFloatArray, 'create2dFloatArray');
end;

procedure Test_parseStringForNumbers;
begin
  AssertFuncLoaded(@Lept.Pix.ParseStringForNumbers, 'parseStringForNumbers');
end;

procedure Test_makeFlatKernel;
begin
  AssertFuncLoaded(@Lept.Pix.MakeFlatKernel, 'makeFlatKernel');
end;

procedure Test_getImagelibVersions;
begin
  AssertFuncLoaded(@Lept.Pix.GetImagelibVersions, 'getImagelibVersions');
end;

procedure Test_listDestroy;
begin
  AssertFuncLoaded(@Lept.Pix.ListDestroy, 'listDestroy');
end;

procedure Test_listAddToHead;
begin
  AssertFuncLoaded(@Lept.Pix.ListAddToHead, 'listAddToHead');
end;

procedure Test_listAddToTail;
begin
  AssertFuncLoaded(@Lept.Pix.ListAddToTail, 'listAddToTail');
end;

procedure Test_listInsertBefore;
begin
  AssertFuncLoaded(@Lept.Pix.ListInsertBefore, 'listInsertBefore');
end;

procedure Test_listInsertAfter;
begin
  AssertFuncLoaded(@Lept.Pix.ListInsertAfter, 'listInsertAfter');
end;

procedure Test_listRemoveElement;
begin
  AssertFuncLoaded(@Lept.Pix.ListRemoveElement, 'listRemoveElement');
end;

procedure Test_listRemoveFromHead;
begin
  AssertFuncLoaded(@Lept.Pix.ListRemoveFromHead, 'listRemoveFromHead');
end;

procedure Test_listRemoveFromTail;
begin
  AssertFuncLoaded(@Lept.Pix.ListRemoveFromTail, 'listRemoveFromTail');
end;

procedure Test_listFindElement;
begin
  AssertFuncLoaded(@Lept.Pix.ListFindElement, 'listFindElement');
end;

procedure Test_listFindTail;
begin
  AssertFuncLoaded(@Lept.Pix.ListFindTail, 'listFindTail');
end;

procedure Test_listGetCount;
begin
  AssertFuncLoaded(@Lept.Pix.ListGetCount, 'listGetCount');
end;

procedure Test_listReverse;
begin
  AssertFuncLoaded(@Lept.Pix.ListReverse, 'listReverse');
end;

procedure Test_listJoin;
begin
  AssertFuncLoaded(@Lept.Pix.ListJoin, 'listJoin');
end;

procedure Test_l_amapCreate;
begin
  AssertFuncLoaded(@Lept.Pix.L_amapCreate, 'l_amapCreate');
end;

procedure Test_l_amapFind;
begin
  AssertFuncLoaded(@Lept.Pix.L_amapFind, 'l_amapFind');
end;

procedure Test_l_amapInsert;
begin
  AssertFuncLoaded(@Lept.Pix.L_amapInsert, 'l_amapInsert');
end;

procedure Test_l_amapDelete;
begin
  AssertFuncLoaded(@Lept.Pix.L_amapDelete, 'l_amapDelete');
end;

procedure Test_l_amapDestroy;
begin
  AssertFuncLoaded(@Lept.Pix.L_amapDestroy, 'l_amapDestroy');
end;

procedure Test_l_amapGetFirst;
begin
  AssertFuncLoaded(@Lept.Pix.L_amapGetFirst, 'l_amapGetFirst');
end;

procedure Test_l_amapGetNext;
begin
  AssertFuncLoaded(@Lept.Pix.L_amapGetNext, 'l_amapGetNext');
end;

procedure Test_l_amapGetLast;
begin
  AssertFuncLoaded(@Lept.Pix.L_amapGetLast, 'l_amapGetLast');
end;

procedure Test_l_amapGetPrev;
begin
  AssertFuncLoaded(@Lept.Pix.L_amapGetPrev, 'l_amapGetPrev');
end;

procedure Test_l_amapSize;
begin
  AssertFuncLoaded(@Lept.Pix.L_amapSize, 'l_amapSize');
end;

procedure Test_l_asetCreate;
begin
  AssertFuncLoaded(@Lept.Pix.L_asetCreate, 'l_asetCreate');
end;

procedure Test_l_asetFind;
begin
  AssertFuncLoaded(@Lept.Pix.L_asetFind, 'l_asetFind');
end;

procedure Test_l_asetInsert;
begin
  AssertFuncLoaded(@Lept.Pix.L_asetInsert, 'l_asetInsert');
end;

procedure Test_l_asetDelete;
begin
  AssertFuncLoaded(@Lept.Pix.L_asetDelete, 'l_asetDelete');
end;

procedure Test_l_asetDestroy;
begin
  AssertFuncLoaded(@Lept.Pix.L_asetDestroy, 'l_asetDestroy');
end;

procedure Test_l_asetGetFirst;
begin
  AssertFuncLoaded(@Lept.Pix.L_asetGetFirst, 'l_asetGetFirst');
end;

procedure Test_l_asetGetNext;
begin
  AssertFuncLoaded(@Lept.Pix.L_asetGetNext, 'l_asetGetNext');
end;

procedure Test_l_asetGetLast;
begin
  AssertFuncLoaded(@Lept.Pix.L_asetGetLast, 'l_asetGetLast');
end;

procedure Test_l_asetGetPrev;
begin
  AssertFuncLoaded(@Lept.Pix.L_asetGetPrev, 'l_asetGetPrev');
end;

procedure Test_l_asetSize;
begin
  AssertFuncLoaded(@Lept.Pix.L_asetSize, 'l_asetSize');
end;

procedure Test_generateBinaryMaze;
begin
  AssertFuncLoaded(@Lept.Pix.GenerateBinaryMaze, 'generateBinaryMaze');
end;

procedure Test_pixSearchBinaryMaze;
begin
  AssertFuncLoaded(@Lept.Pix.PixSearchBinaryMaze, 'pixSearchBinaryMaze');
end;

procedure Test_pixSearchGrayMaze;
begin
  AssertFuncLoaded(@Lept.Pix.PixSearchGrayMaze, 'pixSearchGrayMaze');
end;

procedure Test_pixClose;
begin
  AssertFuncLoaded(@Lept.Pix.PixClose, 'pixClose');
end;

procedure Test_pixOpenGeneralized;
begin
  AssertFuncLoaded(@Lept.Pix.PixOpenGeneralized, 'pixOpenGeneralized');
end;

procedure Test_selectComposableSels;
begin
  AssertFuncLoaded(@Lept.Pix.SelectComposableSels, 'selectComposableSels');
end;

procedure Test_selectComposableSizes;
begin
  AssertFuncLoaded(@Lept.Pix.SelectComposableSizes, 'selectComposableSizes');
end;

procedure Test_getMorphBorderPixelColor;
begin
  AssertFuncLoaded(@Lept.Pix.GetMorphBorderPixelColor, 'getMorphBorderPixelColor');
end;

procedure Test_pixExtractBoundary;
begin
  AssertFuncLoaded(@Lept.Pix.PixExtractBoundary, 'pixExtractBoundary');
end;

procedure Test_pixUnionOfMorphOps;
begin
  AssertFuncLoaded(@Lept.Pix.PixUnionOfMorphOps, 'pixUnionOfMorphOps');
end;

procedure Test_pixIntersectionOfMorphOps;
begin
  AssertFuncLoaded(@Lept.Pix.PixIntersectionOfMorphOps, 'pixIntersectionOfMorphOps');
end;

procedure Test_pixSelectiveConnCompFill;
begin
  AssertFuncLoaded(@Lept.Pix.PixSelectiveConnCompFill, 'pixSelectiveConnCompFill');
end;

procedure Test_pixRemoveMatchedPattern;
begin
  AssertFuncLoaded(@Lept.Pix.PixRemoveMatchedPattern, 'pixRemoveMatchedPattern');
end;

procedure Test_pixRunHistogramMorph;
begin
  AssertFuncLoaded(@Lept.Pix.PixRunHistogramMorph, 'pixRunHistogramMorph');
end;

procedure Test_pixFastTophat;
begin
  AssertFuncLoaded(@Lept.Pix.PixFastTophat, 'pixFastTophat');
end;

procedure Test_pixCentroid;
begin
  AssertFuncLoaded(@Lept.Pix.PixCentroid, 'pixCentroid');
end;

procedure Test_getExtendedCompositeParameters;
begin
  AssertFuncLoaded(@Lept.Pix.GetExtendedCompositeParameters, 'getExtendedCompositeParameters');
end;

procedure Test_morphSequenceVerify;
begin
  AssertFuncLoaded(@Lept.Pix.MorphSequenceVerify, 'morphSequenceVerify');
end;

procedure Test_pixColorMorphSequence;
begin
  AssertFuncLoaded(@Lept.Pix.PixColorMorphSequence, 'pixColorMorphSequence');
end;

procedure Test_grayHistogramsToEMD;
begin
  AssertFuncLoaded(@Lept.Pix.GrayHistogramsToEMD, 'grayHistogramsToEMD');
end;

procedure Test_grayInterHistogramStats;
begin
  AssertFuncLoaded(@Lept.Pix.GrayInterHistogramStats, 'grayInterHistogramStats');
end;

procedure Test_genConstrainedNumaInRange;
begin
  AssertFuncLoaded(@Lept.Pix.GenConstrainedNumaInRange, 'genConstrainedNumaInRange');
end;

procedure Test_pixGenerateHalftoneMask;
begin
  AssertFuncLoaded(@Lept.Pix.PixGenerateHalftoneMask, 'pixGenerateHalftoneMask');
end;

procedure Test_pixCleanImage;
begin
  AssertFuncLoaded(@Lept.Pix.PixCleanImage, 'pixCleanImage');
end;

procedure Test_pixSplitComponentWithProfile;
begin
  AssertFuncLoaded(@Lept.Pix.PixSplitComponentWithProfile, 'pixSplitComponentWithProfile');
end;

procedure Test_pixExtractTextlines;
begin
  AssertFuncLoaded(@Lept.Pix.PixExtractTextlines, 'pixExtractTextlines');
end;

procedure Test_pixExtractRawTextlines;
begin
  AssertFuncLoaded(@Lept.Pix.PixExtractRawTextlines, 'pixExtractRawTextlines');
end;

procedure Test_pixCountTextColumns;
begin
  AssertFuncLoaded(@Lept.Pix.PixCountTextColumns, 'pixCountTextColumns');
end;

procedure Test_pixDecideIfText;
begin
  AssertFuncLoaded(@Lept.Pix.PixDecideIfText, 'pixDecideIfText');
end;

procedure Test_pixFindThreshFgExtent;
begin
  AssertFuncLoaded(@Lept.Pix.PixFindThreshFgExtent, 'pixFindThreshFgExtent');
end;

procedure Test_pixDecideIfTable;
begin
  AssertFuncLoaded(@Lept.Pix.PixDecideIfTable, 'pixDecideIfTable');
end;

procedure Test_pixPrepare1bpp;
begin
  AssertFuncLoaded(@Lept.Pix.PixPrepare1bpp, 'pixPrepare1bpp');
end;

procedure Test_pixEstimateBackground;
begin
  AssertFuncLoaded(@Lept.Pix.PixEstimateBackground, 'pixEstimateBackground');
end;

procedure Test_pixFindLargeRectangles;
begin
  AssertFuncLoaded(@Lept.Pix.PixFindLargeRectangles, 'pixFindLargeRectangles');
end;

procedure Test_pixFindRectangleInCC;
begin
  AssertFuncLoaded(@Lept.Pix.PixFindRectangleInCC, 'pixFindRectangleInCC');
end;

procedure Test_pixAutoPhotoinvert;
begin
  AssertFuncLoaded(@Lept.Pix.PixAutoPhotoinvert, 'pixAutoPhotoinvert');
end;

procedure Test_addColorizedGrayToCmap;
begin
  AssertFuncLoaded(@Lept.Pix.AddColorizedGrayToCmap, 'addColorizedGrayToCmap');
end;

procedure Test_parseForProtos;
begin
  AssertFuncLoaded(@Lept.Pix.ParseForProtos, 'parseForProtos');
end;

procedure Test_partifyFiles;
begin
  AssertFuncLoaded(@Lept.Pix.PartifyFiles, 'partifyFiles');
end;

procedure Test_partifyPixac;
begin
  AssertFuncLoaded(@Lept.Pix.PartifyPixac, 'partifyPixac');
end;

procedure Test_compressFilesToPdf;
begin
  AssertFuncLoaded(@Lept.Pix.CompressFilesToPdf, 'compressFilesToPdf');
end;

procedure Test_cropFilesToPdf;
begin
  AssertFuncLoaded(@Lept.Pix.CropFilesToPdf, 'cropFilesToPdf');
end;

procedure Test_cleanTo1bppFilesToPdf;
begin
  AssertFuncLoaded(@Lept.Pix.CleanTo1bppFilesToPdf, 'cleanTo1bppFilesToPdf');
end;

procedure Test_convertFilesToPdf;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertFilesToPdf, 'convertFilesToPdf');
end;

procedure Test_saConvertFilesToPdf;
begin
  AssertFuncLoaded(@Lept.Pix.SaConvertFilesToPdf, 'saConvertFilesToPdf');
end;

procedure Test_saConvertFilesToPdfData;
begin
  AssertFuncLoaded(@Lept.Pix.SaConvertFilesToPdfData, 'saConvertFilesToPdfData');
end;

procedure Test_selectDefaultPdfEncoding;
begin
  AssertFuncLoaded(@Lept.Pix.SelectDefaultPdfEncoding, 'selectDefaultPdfEncoding');
end;

procedure Test_convertUnscaledFilesToPdf;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertUnscaledFilesToPdf, 'convertUnscaledFilesToPdf');
end;

procedure Test_saConvertUnscaledFilesToPdf;
begin
  AssertFuncLoaded(@Lept.Pix.SaConvertUnscaledFilesToPdf, 'saConvertUnscaledFilesToPdf');
end;

procedure Test_saConvertUnscaledFilesToPdfData;
begin
  AssertFuncLoaded(@Lept.Pix.SaConvertUnscaledFilesToPdfData, 'saConvertUnscaledFilesToPdfData');
end;

procedure Test_convertUnscaledToPdfData;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertUnscaledToPdfData, 'convertUnscaledToPdfData');
end;

procedure Test_convertImageDataToPdf;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertImageDataToPdf, 'convertImageDataToPdf');
end;

procedure Test_convertImageDataToPdfData;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertImageDataToPdfData, 'convertImageDataToPdfData');
end;

procedure Test_pixConvertToPdf;
begin
  AssertFuncLoaded(@Lept.Pix.PixConvertToPdf, 'pixConvertToPdf');
end;

procedure Test_convertSegmentedFilesToPdf;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertSegmentedFilesToPdf, 'convertSegmentedFilesToPdf');
end;

procedure Test_convertNumberedMasksToBoxaa;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertNumberedMasksToBoxaa, 'convertNumberedMasksToBoxaa');
end;

procedure Test_pixConvertToPdfSegmented;
begin
  AssertFuncLoaded(@Lept.Pix.PixConvertToPdfSegmented, 'pixConvertToPdfSegmented');
end;

procedure Test_pixConvertToPdfDataSegmented;
begin
  AssertFuncLoaded(@Lept.Pix.PixConvertToPdfDataSegmented, 'pixConvertToPdfDataSegmented');
end;

procedure Test_concatenatePdf;
begin
  AssertFuncLoaded(@Lept.Pix.ConcatenatePdf, 'concatenatePdf');
end;

procedure Test_saConcatenatePdf;
begin
  AssertFuncLoaded(@Lept.Pix.SaConcatenatePdf, 'saConcatenatePdf');
end;

procedure Test_ptraConcatenatePdf;
begin
  AssertFuncLoaded(@Lept.Pix.PtraConcatenatePdf, 'ptraConcatenatePdf');
end;

procedure Test_concatenatePdfToData;
begin
  AssertFuncLoaded(@Lept.Pix.ConcatenatePdfToData, 'concatenatePdfToData');
end;

procedure Test_saConcatenatePdfToData;
begin
  AssertFuncLoaded(@Lept.Pix.SaConcatenatePdfToData, 'saConcatenatePdfToData');
end;

procedure Test_pixConvertToPdfData;
begin
  AssertFuncLoaded(@Lept.Pix.PixConvertToPdfData, 'pixConvertToPdfData');
end;

procedure Test_ptraConcatenatePdfToData;
begin
  AssertFuncLoaded(@Lept.Pix.PtraConcatenatePdfToData, 'ptraConcatenatePdfToData');
end;

procedure Test_convertTiffMultipageToPdf;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertTiffMultipageToPdf, 'convertTiffMultipageToPdf');
end;

procedure Test_l_generateFlateDataPdf;
begin
  AssertFuncLoaded(@Lept.Pix.L_generateFlateDataPdf, 'l_generateFlateDataPdf');
end;

procedure Test_l_generateJpegData;
begin
  AssertFuncLoaded(@Lept.Pix.L_generateJpegData, 'l_generateJpegData');
end;

procedure Test_l_generateJpegDataMem;
begin
  AssertFuncLoaded(@Lept.Pix.L_generateJpegDataMem, 'l_generateJpegDataMem');
end;

procedure Test_l_generateG4Data;
begin
  AssertFuncLoaded(@Lept.Pix.L_generateG4Data, 'l_generateG4Data');
end;

procedure Test_pixGenerateCIData;
begin
  AssertFuncLoaded(@Lept.Pix.PixGenerateCIData, 'pixGenerateCIData');
end;

procedure Test_l_generateFlateData;
begin
  AssertFuncLoaded(@Lept.Pix.L_generateFlateData, 'l_generateFlateData');
end;

procedure Test_cidConvertToPdfData;
begin
  AssertFuncLoaded(@Lept.Pix.CidConvertToPdfData, 'cidConvertToPdfData');
end;

procedure Test_l_CIDataDestroy;
begin
  AssertFuncLoaded(@Lept.Pix.L_CIDataDestroy, 'l_CIDataDestroy');
end;

procedure Test_getPdfPageCount;
begin
  AssertFuncLoaded(@Lept.Pix.GetPdfPageCount, 'getPdfPageCount');
end;

procedure Test_getPdfPageSizes;
begin
  AssertFuncLoaded(@Lept.Pix.GetPdfPageSizes, 'getPdfPageSizes');
end;

procedure Test_getPdfMediaBoxSizes;
begin
  AssertFuncLoaded(@Lept.Pix.GetPdfMediaBoxSizes, 'getPdfMediaBoxSizes');
end;

procedure Test_getPdfRendererResolution;
begin
  AssertFuncLoaded(@Lept.Pix.GetPdfRendererResolution, 'getPdfRendererResolution');
end;

procedure Test_setPixMemoryManager;
begin
  AssertFuncLoaded(@Lept.Pix.SetPixMemoryManager, 'setPixMemoryManager');
end;

procedure Test_pixCreate;
begin
  AssertFuncLoaded(@Lept.Pix.PixCreate, 'pixCreate');
end;

procedure Test_pixCreateNoInit;
begin
  AssertFuncLoaded(@Lept.Pix.PixCreateNoInit, 'pixCreateNoInit');
end;

procedure Test_pixCreateTemplate;
begin
  AssertFuncLoaded(@Lept.Pix.PixCreateTemplate, 'pixCreateTemplate');
end;

procedure Test_pixCreateTemplateNoInit;
begin
  AssertFuncLoaded(@Lept.Pix.PixCreateTemplateNoInit, 'pixCreateTemplateNoInit');
end;

procedure Test_pixCreateWithCmap;
begin
  AssertFuncLoaded(@Lept.Pix.PixCreateWithCmap, 'pixCreateWithCmap');
end;

procedure Test_pixCreateHeader;
begin
  AssertFuncLoaded(@Lept.Pix.PixCreateHeader, 'pixCreateHeader');
end;

procedure Test_pixClone;
begin
  AssertFuncLoaded(@Lept.Pix.PixClone, 'pixClone');
end;

procedure Test_pixDestroy;
begin
  AssertFuncLoaded(@Lept.Pix.PixDestroy, 'pixDestroy');
end;

procedure Test_pixCopy;
begin
  AssertFuncLoaded(@Lept.Pix.PixCopy, 'pixCopy');
end;

procedure Test_pixSwapAndDestroy;
begin
  AssertFuncLoaded(@Lept.Pix.PixSwapAndDestroy, 'pixSwapAndDestroy');
end;

procedure Test_pixGetWidth;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetWidth, 'pixGetWidth');
end;

procedure Test_pixSetWidth;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetWidth, 'pixSetWidth');
end;

procedure Test_pixGetHeight;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetHeight, 'pixGetHeight');
end;

procedure Test_pixSetHeight;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetHeight, 'pixSetHeight');
end;

procedure Test_pixGetDepth;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetDepth, 'pixGetDepth');
end;

procedure Test_pixSetDepth;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetDepth, 'pixSetDepth');
end;

procedure Test_pixGetSpp;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetSpp, 'pixGetSpp');
end;

procedure Test_pixSetSpp;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetSpp, 'pixSetSpp');
end;

procedure Test_pixGetWpl;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetWpl, 'pixGetWpl');
end;

procedure Test_pixSetWpl;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetWpl, 'pixSetWpl');
end;

procedure Test_pixGetXRes;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetXRes, 'pixGetXRes');
end;

procedure Test_pixSetXRes;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetXRes, 'pixSetXRes');
end;

procedure Test_pixGetYRes;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetYRes, 'pixGetYRes');
end;

procedure Test_pixSetYRes;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetYRes, 'pixSetYRes');
end;

procedure Test_pixGetResolution;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetResolution, 'pixGetResolution');
end;

procedure Test_pixSetResolution;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetResolution, 'pixSetResolution');
end;

procedure Test_pixGetInputFormat;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetInputFormat, 'pixGetInputFormat');
end;

procedure Test_pixSetInputFormat;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetInputFormat, 'pixSetInputFormat');
end;

procedure Test_pixSetSpecial;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetSpecial, 'pixSetSpecial');
end;

procedure Test_pixGetText;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetText, 'pixGetText');
end;

procedure Test_pixSetText;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetText, 'pixSetText');
end;

procedure Test_pixGetTextCompNew;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetTextCompNew, 'pixGetTextCompNew');
end;

procedure Test_pixSetTextCompNew;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetTextCompNew, 'pixSetTextCompNew');
end;

procedure Test_pixGetColormap;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetColormap, 'pixGetColormap');
end;

procedure Test_pixSetColormap;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetColormap, 'pixSetColormap');
end;

procedure Test_pixDestroyColormap;
begin
  AssertFuncLoaded(@Lept.Pix.PixDestroyColormap, 'pixDestroyColormap');
end;

procedure Test_pixGetData;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetData, 'pixGetData');
end;

procedure Test_pixFreeAndSetData;
begin
  AssertFuncLoaded(@Lept.Pix.PixFreeAndSetData, 'pixFreeAndSetData');
end;

procedure Test_pixSetData;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetData, 'pixSetData');
end;

procedure Test_pixFreeData;
begin
  AssertFuncLoaded(@Lept.Pix.PixFreeData, 'pixFreeData');
end;

procedure Test_pixExtractData;
begin
  AssertFuncLoaded(@Lept.Pix.PixExtractData, 'pixExtractData');
end;

procedure Test_pixGetLinePtrs;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetLinePtrs, 'pixGetLinePtrs');
end;

procedure Test_pixSizesEqual;
begin
  AssertFuncLoaded(@Lept.Pix.PixSizesEqual, 'pixSizesEqual');
end;

procedure Test_pixMaxAspectRatio;
begin
  AssertFuncLoaded(@Lept.Pix.PixMaxAspectRatio, 'pixMaxAspectRatio');
end;

procedure Test_pixPrintStreamInfo;
begin
  AssertFuncLoaded(@Lept.Pix.PixPrintStreamInfo, 'pixPrintStreamInfo');
end;

procedure Test_pixGetPixel;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetPixel, 'pixGetPixel');
end;

procedure Test_pixSetPixel;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetPixel, 'pixSetPixel');
end;

procedure Test_pixSetCmapPixel;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetCmapPixel, 'pixSetCmapPixel');
end;

procedure Test_pixGetRandomPixel;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetRandomPixel, 'pixGetRandomPixel');
end;

procedure Test_pixClearPixel;
begin
  AssertFuncLoaded(@Lept.Pix.PixClearPixel, 'pixClearPixel');
end;

procedure Test_pixFlipPixel;
begin
  AssertFuncLoaded(@Lept.Pix.PixFlipPixel, 'pixFlipPixel');
end;

procedure Test_setPixelLow;
begin
  AssertFuncLoaded(@Lept.Pix.SetPixelLow, 'setPixelLow');
end;

procedure Test_pixGetBlackOrWhiteVal;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetBlackOrWhiteVal, 'pixGetBlackOrWhiteVal');
end;

procedure Test_pixClearAll;
begin
  AssertFuncLoaded(@Lept.Pix.PixClearAll, 'pixClearAll');
end;

procedure Test_pixSetAll;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetAll, 'pixSetAll');
end;

procedure Test_pixSetBlackOrWhite;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetBlackOrWhite, 'pixSetBlackOrWhite');
end;

procedure Test_pixSetComponentArbitrary;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetComponentArbitrary, 'pixSetComponentArbitrary');
end;

procedure Test_pixClearInRect;
begin
  AssertFuncLoaded(@Lept.Pix.PixClearInRect, 'pixClearInRect');
end;

procedure Test_pixSetInRect;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetInRect, 'pixSetInRect');
end;

procedure Test_pixSetInRectArbitrary;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetInRectArbitrary, 'pixSetInRectArbitrary');
end;

procedure Test_pixSetPadBits;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetPadBits, 'pixSetPadBits');
end;

procedure Test_pixSetPadBitsBand;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetPadBitsBand, 'pixSetPadBitsBand');
end;

procedure Test_pixSetOrClearBorder;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetOrClearBorder, 'pixSetOrClearBorder');
end;

procedure Test_pixSetBorderVal;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetBorderVal, 'pixSetBorderVal');
end;

procedure Test_pixSetBorderRingVal;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetBorderRingVal, 'pixSetBorderRingVal');
end;

procedure Test_pixSetMirroredBorder;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetMirroredBorder, 'pixSetMirroredBorder');
end;

procedure Test_pixAddBorder;
begin
  AssertFuncLoaded(@Lept.Pix.PixAddBorder, 'pixAddBorder');
end;

procedure Test_pixAddBlackOrWhiteBorder;
begin
  AssertFuncLoaded(@Lept.Pix.PixAddBlackOrWhiteBorder, 'pixAddBlackOrWhiteBorder');
end;

procedure Test_pixAddBorderGeneral;
begin
  AssertFuncLoaded(@Lept.Pix.PixAddBorderGeneral, 'pixAddBorderGeneral');
end;

procedure Test_pixAddMultipleBlackWhiteBorders;
begin
  AssertFuncLoaded(@Lept.Pix.PixAddMultipleBlackWhiteBorders, 'pixAddMultipleBlackWhiteBorders');
end;

procedure Test_pixRemoveBorder;
begin
  AssertFuncLoaded(@Lept.Pix.PixRemoveBorder, 'pixRemoveBorder');
end;

procedure Test_pixRemoveBorderGeneral;
begin
  AssertFuncLoaded(@Lept.Pix.PixRemoveBorderGeneral, 'pixRemoveBorderGeneral');
end;

procedure Test_pixRemoveBorderToSize;
begin
  AssertFuncLoaded(@Lept.Pix.PixRemoveBorderToSize, 'pixRemoveBorderToSize');
end;

procedure Test_pixAddMirroredBorder;
begin
  AssertFuncLoaded(@Lept.Pix.PixAddMirroredBorder, 'pixAddMirroredBorder');
end;

procedure Test_pixAddRepeatedBorder;
begin
  AssertFuncLoaded(@Lept.Pix.PixAddRepeatedBorder, 'pixAddRepeatedBorder');
end;

procedure Test_pixAddMixedBorder;
begin
  AssertFuncLoaded(@Lept.Pix.PixAddMixedBorder, 'pixAddMixedBorder');
end;

procedure Test_pixAddContinuedBorder;
begin
  AssertFuncLoaded(@Lept.Pix.PixAddContinuedBorder, 'pixAddContinuedBorder');
end;

procedure Test_pixShiftAndTransferAlpha;
begin
  AssertFuncLoaded(@Lept.Pix.PixShiftAndTransferAlpha, 'pixShiftAndTransferAlpha');
end;

procedure Test_pixCreateRGBImage;
begin
  AssertFuncLoaded(@Lept.Pix.PixCreateRGBImage, 'pixCreateRGBImage');
end;

procedure Test_setLineDataVal;
begin
  AssertFuncLoaded(@Lept.Pix.SetLineDataVal, 'setLineDataVal');
end;

procedure Test_lineEndianByteSwap;
begin
  AssertFuncLoaded(@Lept.Pix.LineEndianByteSwap, 'lineEndianByteSwap');
end;

procedure Test_pixGetRasterData;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetRasterData, 'pixGetRasterData');
end;

procedure Test_pixInferResolution;
begin
  AssertFuncLoaded(@Lept.Pix.PixInferResolution, 'pixInferResolution');
end;

procedure Test_pixAlphaIsOpaque;
begin
  AssertFuncLoaded(@Lept.Pix.PixAlphaIsOpaque, 'pixAlphaIsOpaque');
end;

procedure Test_pixSetupByteProcessing;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetupByteProcessing, 'pixSetupByteProcessing');
end;

procedure Test_pixCleanupByteProcessing;
begin
  AssertFuncLoaded(@Lept.Pix.PixCleanupByteProcessing, 'pixCleanupByteProcessing');
end;

procedure Test_l_setAlphaMaskBorder;
begin
  AssertFuncLoaded(@Lept.Pix.L_setAlphaMaskBorder, 'l_setAlphaMaskBorder');
end;

procedure Test_pixMakeMaskFromVal;
begin
  AssertFuncLoaded(@Lept.Pix.PixMakeMaskFromVal, 'pixMakeMaskFromVal');
end;

procedure Test_pixMakeMaskFromLUT;
begin
  AssertFuncLoaded(@Lept.Pix.PixMakeMaskFromLUT, 'pixMakeMaskFromLUT');
end;

procedure Test_pixMakeArbMaskFromRGB;
begin
  AssertFuncLoaded(@Lept.Pix.PixMakeArbMaskFromRGB, 'pixMakeArbMaskFromRGB');
end;

procedure Test_pixSetUnderTransparency;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetUnderTransparency, 'pixSetUnderTransparency');
end;

procedure Test_pixMakeAlphaFromMask;
begin
  AssertFuncLoaded(@Lept.Pix.PixMakeAlphaFromMask, 'pixMakeAlphaFromMask');
end;

procedure Test_pixGetColorNearMaskBoundary;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetColorNearMaskBoundary, 'pixGetColorNearMaskBoundary');
end;

procedure Test_pixGetMomentByColumn;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetMomentByColumn, 'pixGetMomentByColumn');
end;

procedure Test_makePixelSumTab8;
begin
  AssertFuncLoaded(@Lept.Pix.MakePixelSumTab8, 'makePixelSumTab8');
end;

procedure Test_makePixelCentroidTab8;
begin
  AssertFuncLoaded(@Lept.Pix.MakePixelCentroidTab8, 'makePixelCentroidTab8');
end;

procedure Test_pixVarianceByRow;
begin
  AssertFuncLoaded(@Lept.Pix.PixVarianceByRow, 'pixVarianceByRow');
end;

procedure Test_pixVarianceByColumn;
begin
  AssertFuncLoaded(@Lept.Pix.PixVarianceByColumn, 'pixVarianceByColumn');
end;

procedure Test_pixCountArbInRect;
begin
  AssertFuncLoaded(@Lept.Pix.PixCountArbInRect, 'pixCountArbInRect');
end;

procedure Test_pixMirroredTiling;
begin
  AssertFuncLoaded(@Lept.Pix.PixMirroredTiling, 'pixMirroredTiling');
end;

procedure Test_pixFindRepCloseTile;
begin
  AssertFuncLoaded(@Lept.Pix.PixFindRepCloseTile, 'pixFindRepCloseTile');
end;

procedure Test_pixCountRGBColorsByHash;
begin
  AssertFuncLoaded(@Lept.Pix.PixCountRGBColorsByHash, 'pixCountRGBColorsByHash');
end;

procedure Test_pixCountRGBColors;
begin
  AssertFuncLoaded(@Lept.Pix.PixCountRGBColors, 'pixCountRGBColors');
end;

procedure Test_pixGetColorAmapHistogram;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetColorAmapHistogram, 'pixGetColorAmapHistogram');
end;

procedure Test_amapGetCountForColor;
begin
  AssertFuncLoaded(@Lept.Pix.AmapGetCountForColor, 'amapGetCountForColor');
end;

procedure Test_pixGetAverageMaskedRGB;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetAverageMaskedRGB, 'pixGetAverageMaskedRGB');
end;

procedure Test_pixGetAverageMasked;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetAverageMasked, 'pixGetAverageMasked');
end;

procedure Test_pixGetAverageTiledRGB;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetAverageTiledRGB, 'pixGetAverageTiledRGB');
end;

procedure Test_pixGetAverageTiled;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetAverageTiled, 'pixGetAverageTiled');
end;

procedure Test_pixGetRangeValues;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetRangeValues, 'pixGetRangeValues');
end;

procedure Test_pixGetMaxValueInRect;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetMaxValueInRect, 'pixGetMaxValueInRect');
end;

procedure Test_pixGetMaxColorIndex;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetMaxColorIndex, 'pixGetMaxColorIndex');
end;

procedure Test_pixGetBinnedComponentRange;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetBinnedComponentRange, 'pixGetBinnedComponentRange');
end;

procedure Test_pixGetRankColorArray;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetRankColorArray, 'pixGetRankColorArray');
end;

procedure Test_pixGetBinnedColor;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetBinnedColor, 'pixGetBinnedColor');
end;

procedure Test_pixRankBinByStrip;
begin
  AssertFuncLoaded(@Lept.Pix.PixRankBinByStrip, 'pixRankBinByStrip');
end;

procedure Test_pixGetRowStats;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetRowStats, 'pixGetRowStats');
end;

procedure Test_pixGetColumnStats;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetColumnStats, 'pixGetColumnStats');
end;

procedure Test_pixSetPixelColumn;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetPixelColumn, 'pixSetPixelColumn');
end;

procedure Test_pixSplitDistributionFgBg;
begin
  AssertFuncLoaded(@Lept.Pix.PixSplitDistributionFgBg, 'pixSplitDistributionFgBg');
end;

procedure Test_pixFindAreaPerimRatio;
begin
  AssertFuncLoaded(@Lept.Pix.PixFindAreaPerimRatio, 'pixFindAreaPerimRatio');
end;

procedure Test_pixFindPerimToAreaRatio;
begin
  AssertFuncLoaded(@Lept.Pix.PixFindPerimToAreaRatio, 'pixFindPerimToAreaRatio');
end;

procedure Test_pixFindPerimSizeRatio;
begin
  AssertFuncLoaded(@Lept.Pix.PixFindPerimSizeRatio, 'pixFindPerimSizeRatio');
end;

procedure Test_pixFindAreaFraction;
begin
  AssertFuncLoaded(@Lept.Pix.PixFindAreaFraction, 'pixFindAreaFraction');
end;

procedure Test_pixFindAreaFractionMasked;
begin
  AssertFuncLoaded(@Lept.Pix.PixFindAreaFractionMasked, 'pixFindAreaFractionMasked');
end;

procedure Test_pixFindOverlapFraction;
begin
  AssertFuncLoaded(@Lept.Pix.PixFindOverlapFraction, 'pixFindOverlapFraction');
end;

procedure Test_pixFindRectangleComps;
begin
  AssertFuncLoaded(@Lept.Pix.PixFindRectangleComps, 'pixFindRectangleComps');
end;

procedure Test_pixConformsToRectangle;
begin
  AssertFuncLoaded(@Lept.Pix.PixConformsToRectangle, 'pixConformsToRectangle');
end;

procedure Test_pixExtractRectangularRegions;
begin
  AssertFuncLoaded(@Lept.Pix.PixExtractRectangularRegions, 'pixExtractRectangularRegions');
end;

procedure Test_pixResizeToMatch;
begin
  AssertFuncLoaded(@Lept.Pix.PixResizeToMatch, 'pixResizeToMatch');
end;

procedure Test_pixSelectComponentBySize;
begin
  AssertFuncLoaded(@Lept.Pix.PixSelectComponentBySize, 'pixSelectComponentBySize');
end;

procedure Test_pixFilterComponentBySize;
begin
  AssertFuncLoaded(@Lept.Pix.PixFilterComponentBySize, 'pixFilterComponentBySize');
end;

procedure Test_pixMakeSymmetricMask;
begin
  AssertFuncLoaded(@Lept.Pix.PixMakeSymmetricMask, 'pixMakeSymmetricMask');
end;

procedure Test_pixMakeFrameMask;
begin
  AssertFuncLoaded(@Lept.Pix.PixMakeFrameMask, 'pixMakeFrameMask');
end;

procedure Test_pixMakeCoveringOfRectangles;
begin
  AssertFuncLoaded(@Lept.Pix.PixMakeCoveringOfRectangles, 'pixMakeCoveringOfRectangles');
end;

procedure Test_pixFractionFgInMask;
begin
  AssertFuncLoaded(@Lept.Pix.PixFractionFgInMask, 'pixFractionFgInMask');
end;

procedure Test_pixExtractOnLine;
begin
  AssertFuncLoaded(@Lept.Pix.PixExtractOnLine, 'pixExtractOnLine');
end;

procedure Test_pixAverageOnLine;
begin
  AssertFuncLoaded(@Lept.Pix.PixAverageOnLine, 'pixAverageOnLine');
end;

procedure Test_pixAverageIntensityProfile;
begin
  AssertFuncLoaded(@Lept.Pix.PixAverageIntensityProfile, 'pixAverageIntensityProfile');
end;

procedure Test_pixReversalProfile;
begin
  AssertFuncLoaded(@Lept.Pix.PixReversalProfile, 'pixReversalProfile');
end;

procedure Test_pixRankRowTransform;
begin
  AssertFuncLoaded(@Lept.Pix.PixRankRowTransform, 'pixRankRowTransform');
end;

procedure Test_pixRankColumnTransform;
begin
  AssertFuncLoaded(@Lept.Pix.PixRankColumnTransform, 'pixRankColumnTransform');
end;

procedure Test_pixaccCreate;
begin
  AssertFuncLoaded(@Lept.Pix.PixaccCreate, 'pixaccCreate');
end;

procedure Test_pixaccCreateFromPix;
begin
  AssertFuncLoaded(@Lept.Pix.PixaccCreateFromPix, 'pixaccCreateFromPix');
end;

procedure Test_pixaccDestroy;
begin
  AssertFuncLoaded(@Lept.Pix.PixaccDestroy, 'pixaccDestroy');
end;

procedure Test_pixaccFinal;
begin
  AssertFuncLoaded(@Lept.Pix.PixaccFinal, 'pixaccFinal');
end;

procedure Test_pixaccGetPix;
begin
  AssertFuncLoaded(@Lept.Pix.PixaccGetPix, 'pixaccGetPix');
end;

procedure Test_pixaccGetOffset;
begin
  AssertFuncLoaded(@Lept.Pix.PixaccGetOffset, 'pixaccGetOffset');
end;

procedure Test_pixaccAdd;
begin
  AssertFuncLoaded(@Lept.Pix.PixaccAdd, 'pixaccAdd');
end;

procedure Test_pixaccSubtract;
begin
  AssertFuncLoaded(@Lept.Pix.PixaccSubtract, 'pixaccSubtract');
end;

procedure Test_pixaccMultConst;
begin
  AssertFuncLoaded(@Lept.Pix.PixaccMultConst, 'pixaccMultConst');
end;

procedure Test_pixaccMultConstAccumulate;
begin
  AssertFuncLoaded(@Lept.Pix.PixaccMultConstAccumulate, 'pixaccMultConstAccumulate');
end;

procedure Test_pixSelectBySize;
begin
  AssertFuncLoaded(@Lept.Pix.PixSelectBySize, 'pixSelectBySize');
end;

procedure Test_pixSelectByPerimToAreaRatio;
begin
  AssertFuncLoaded(@Lept.Pix.PixSelectByPerimToAreaRatio, 'pixSelectByPerimToAreaRatio');
end;

procedure Test_pixSelectByPerimSizeRatio;
begin
  AssertFuncLoaded(@Lept.Pix.PixSelectByPerimSizeRatio, 'pixSelectByPerimSizeRatio');
end;

procedure Test_pixSelectByAreaFraction;
begin
  AssertFuncLoaded(@Lept.Pix.PixSelectByAreaFraction, 'pixSelectByAreaFraction');
end;

procedure Test_pixSelectByArea;
begin
  AssertFuncLoaded(@Lept.Pix.PixSelectByArea, 'pixSelectByArea');
end;

procedure Test_pixSelectByWidthHeightRatio;
begin
  AssertFuncLoaded(@Lept.Pix.PixSelectByWidthHeightRatio, 'pixSelectByWidthHeightRatio');
end;

procedure Test_pixRemoveWithIndicator;
begin
  AssertFuncLoaded(@Lept.Pix.PixRemoveWithIndicator, 'pixRemoveWithIndicator');
end;

procedure Test_pixAddWithIndicator;
begin
  AssertFuncLoaded(@Lept.Pix.PixAddWithIndicator, 'pixAddWithIndicator');
end;

procedure Test_pixGetTileCount;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetTileCount, 'pixGetTileCount');
end;

procedure Test_convertToNUpFiles;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertToNUpFiles, 'convertToNUpFiles');
end;

procedure Test_convertToNUpPixa;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertToNUpPixa, 'convertToNUpPixa');
end;

procedure Test_pmsCreate;
begin
  AssertFuncLoaded(@Lept.Pix.PmsCreate, 'pmsCreate');
end;

procedure Test_pmsDestroy;
begin
  AssertFuncLoaded(@Lept.Pix.PmsDestroy, 'pmsDestroy');
end;

procedure Test_pmsCustomAlloc;
begin
  AssertFuncLoaded(@Lept.Pix.PmsCustomAlloc, 'pmsCustomAlloc');
end;

procedure Test_pmsCustomDealloc;
begin
  AssertFuncLoaded(@Lept.Pix.PmsCustomDealloc, 'pmsCustomDealloc');
end;

procedure Test_pmsGetAlloc;
begin
  AssertFuncLoaded(@Lept.Pix.PmsGetAlloc, 'pmsGetAlloc');
end;

procedure Test_pmsGetLevelForAlloc;
begin
  AssertFuncLoaded(@Lept.Pix.PmsGetLevelForAlloc, 'pmsGetLevelForAlloc');
end;

procedure Test_pmsGetLevelForDealloc;
begin
  AssertFuncLoaded(@Lept.Pix.PmsGetLevelForDealloc, 'pmsGetLevelForDealloc');
end;

procedure Test_pmsLogInfo;
begin
  AssertFuncLoaded(@Lept.Pix.PmsLogInfo, 'pmsLogInfo');
end;

procedure Test_pixAddGray;
begin
  AssertFuncLoaded(@Lept.Pix.PixAddGray, 'pixAddGray');
end;

procedure Test_pixSubtractGray;
begin
  AssertFuncLoaded(@Lept.Pix.PixSubtractGray, 'pixSubtractGray');
end;

procedure Test_pixMultiplyGray;
begin
  AssertFuncLoaded(@Lept.Pix.PixMultiplyGray, 'pixMultiplyGray');
end;

procedure Test_pixInitAccumulate;
begin
  AssertFuncLoaded(@Lept.Pix.PixInitAccumulate, 'pixInitAccumulate');
end;

procedure Test_pixFinalAccumulate;
begin
  AssertFuncLoaded(@Lept.Pix.PixFinalAccumulate, 'pixFinalAccumulate');
end;

procedure Test_pixFinalAccumulateThreshold;
begin
  AssertFuncLoaded(@Lept.Pix.PixFinalAccumulateThreshold, 'pixFinalAccumulateThreshold');
end;

procedure Test_pixAccumulate;
begin
  AssertFuncLoaded(@Lept.Pix.PixAccumulate, 'pixAccumulate');
end;

procedure Test_pixAddRGB;
begin
  AssertFuncLoaded(@Lept.Pix.PixAddRGB, 'pixAddRGB');
end;

procedure Test_linearScaleRGBVal;
begin
  AssertFuncLoaded(@Lept.Pix.LinearScaleRGBVal, 'linearScaleRGBVal');
end;

procedure Test_logScaleRGBVal;
begin
  AssertFuncLoaded(@Lept.Pix.LogScaleRGBVal, 'logScaleRGBVal');
end;

procedure Test_makeLogBase2Tab;
begin
  AssertFuncLoaded(@Lept.Pix.MakeLogBase2Tab, 'makeLogBase2Tab');
end;

procedure Test_getLogBase2;
begin
  AssertFuncLoaded(@Lept.Pix.GetLogBase2, 'getLogBase2');
end;

procedure Test_pixCreateFromPixcomp;
begin
  AssertFuncLoaded(@Lept.Pix.PixCreateFromPixcomp, 'pixCreateFromPixcomp');
end;

procedure Test_pixAddGrayColormap8;
begin
  AssertFuncLoaded(@Lept.Pix.PixAddGrayColormap8, 'pixAddGrayColormap8');
end;

procedure Test_pixColorizeGray;
begin
  AssertFuncLoaded(@Lept.Pix.PixColorizeGray, 'pixColorizeGray');
end;

procedure Test_pixConvertCmapTo1;
begin
  AssertFuncLoaded(@Lept.Pix.PixConvertCmapTo1, 'pixConvertCmapTo1');
end;

procedure Test_pixQuantizeIfFewColors;
begin
  AssertFuncLoaded(@Lept.Pix.PixQuantizeIfFewColors, 'pixQuantizeIfFewColors');
end;

procedure Test_pixUnpackBinary;
begin
  AssertFuncLoaded(@Lept.Pix.PixUnpackBinary, 'pixUnpackBinary');
end;

procedure Test_pixConvertTo8;
begin
  AssertFuncLoaded(@Lept.Pix.PixConvertTo8, 'pixConvertTo8');
end;

procedure Test_pixConvertLossless;
begin
  AssertFuncLoaded(@Lept.Pix.PixConvertLossless, 'pixConvertLossless');
end;

procedure Test_pixConvertForPSWrap;
begin
  AssertFuncLoaded(@Lept.Pix.PixConvertForPSWrap, 'pixConvertForPSWrap');
end;

procedure Test_pixConvertToSubpixelRGB;
begin
  AssertFuncLoaded(@Lept.Pix.PixConvertToSubpixelRGB, 'pixConvertToSubpixelRGB');
end;

procedure Test_pixConvertColorToSubpixelRGB;
begin
  AssertFuncLoaded(@Lept.Pix.PixConvertColorToSubpixelRGB, 'pixConvertColorToSubpixelRGB');
end;

procedure Test_l_setNeutralBoostVal;
begin
  AssertFuncLoaded(@Lept.Pix.L_setNeutralBoostVal, 'l_setNeutralBoostVal');
end;

procedure Test_pixGetSortedNeighborValues;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetSortedNeighborValues, 'pixGetSortedNeighborValues');
end;

procedure Test_pixLocToColorTransform;
begin
  AssertFuncLoaded(@Lept.Pix.PixLocToColorTransform, 'pixLocToColorTransform');
end;

procedure Test_pixTilingCreate;
begin
  AssertFuncLoaded(@Lept.Pix.PixTilingCreate, 'pixTilingCreate');
end;

procedure Test_pixTilingDestroy;
begin
  AssertFuncLoaded(@Lept.Pix.PixTilingDestroy, 'pixTilingDestroy');
end;

procedure Test_pixTilingGetCount;
begin
  AssertFuncLoaded(@Lept.Pix.PixTilingGetCount, 'pixTilingGetCount');
end;

procedure Test_pixTilingGetSize;
begin
  AssertFuncLoaded(@Lept.Pix.PixTilingGetSize, 'pixTilingGetSize');
end;

procedure Test_pixTilingGetTile;
begin
  AssertFuncLoaded(@Lept.Pix.PixTilingGetTile, 'pixTilingGetTile');
end;

procedure Test_pixTilingNoStripOnPaint;
begin
  AssertFuncLoaded(@Lept.Pix.PixTilingNoStripOnPaint, 'pixTilingNoStripOnPaint');
end;

procedure Test_pixTilingPaintTile;
begin
  AssertFuncLoaded(@Lept.Pix.PixTilingPaintTile, 'pixTilingPaintTile');
end;

procedure Test_fgetPngResolution;
begin
  AssertFuncLoaded(@Lept.Pix.FgetPngResolution, 'fgetPngResolution');
end;

procedure Test_isPngInterlaced;
begin
  AssertFuncLoaded(@Lept.Pix.IsPngInterlaced, 'isPngInterlaced');
end;

procedure Test_fgetPngColormapInfo;
begin
  AssertFuncLoaded(@Lept.Pix.FgetPngColormapInfo, 'fgetPngColormapInfo');
end;

procedure Test_pixSetZlibCompression;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetZlibCompression, 'pixSetZlibCompression');
end;

procedure Test_convertFilesToPS;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertFilesToPS, 'convertFilesToPS');
end;

procedure Test_convertFilesFittedToPS;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertFilesFittedToPS, 'convertFilesFittedToPS');
end;

procedure Test_writeImageCompressedToPSFile;
begin
  AssertFuncLoaded(@Lept.Pix.WriteImageCompressedToPSFile, 'writeImageCompressedToPSFile');
end;

procedure Test_convertSegmentedPagesToPS;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertSegmentedPagesToPS, 'convertSegmentedPagesToPS');
end;

procedure Test_convertToPSEmbed;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertToPSEmbed, 'convertToPSEmbed');
end;

procedure Test_generateUncompressedPS;
begin
  AssertFuncLoaded(@Lept.Pix.GenerateUncompressedPS, 'generateUncompressedPS');
end;

procedure Test_convertJpegToPSEmbed;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertJpegToPSEmbed, 'convertJpegToPSEmbed');
end;

procedure Test_convertJpegToPS;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertJpegToPS, 'convertJpegToPS');
end;

procedure Test_convertG4ToPSEmbed;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertG4ToPSEmbed, 'convertG4ToPSEmbed');
end;

procedure Test_convertG4ToPS;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertG4ToPS, 'convertG4ToPS');
end;

procedure Test_convertTiffMultipageToPS;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertTiffMultipageToPS, 'convertTiffMultipageToPS');
end;

procedure Test_convertFlateToPSEmbed;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertFlateToPSEmbed, 'convertFlateToPSEmbed');
end;

procedure Test_convertFlateToPS;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertFlateToPS, 'convertFlateToPS');
end;

procedure Test_getResLetterPage;
begin
  AssertFuncLoaded(@Lept.Pix.GetResLetterPage, 'getResLetterPage');
end;

procedure Test_getResA4Page;
begin
  AssertFuncLoaded(@Lept.Pix.GetResA4Page, 'getResA4Page');
end;

procedure Test_l_psWriteBoundingBox;
begin
  AssertFuncLoaded(@Lept.Pix.L_psWriteBoundingBox, 'l_psWriteBoundingBox');
end;

procedure Test_pixFindCornerPixels;
begin
  AssertFuncLoaded(@Lept.Pix.PixFindCornerPixels, 'pixFindCornerPixels');
end;

procedure Test_l_angleBetweenVectors;
begin
  AssertFuncLoaded(@Lept.Pix.L_angleBetweenVectors, 'l_angleBetweenVectors');
end;

procedure Test_applyLinearFit;
begin
  AssertFuncLoaded(@Lept.Pix.ApplyLinearFit, 'applyLinearFit');
end;

procedure Test_applyQuadraticFit;
begin
  AssertFuncLoaded(@Lept.Pix.ApplyQuadraticFit, 'applyQuadraticFit');
end;

procedure Test_applyCubicFit;
begin
  AssertFuncLoaded(@Lept.Pix.ApplyCubicFit, 'applyCubicFit');
end;

procedure Test_applyQuarticFit;
begin
  AssertFuncLoaded(@Lept.Pix.ApplyQuarticFit, 'applyQuarticFit');
end;

procedure Test_pixPlotAlongPta;
begin
  AssertFuncLoaded(@Lept.Pix.PixPlotAlongPta, 'pixPlotAlongPta');
end;

procedure Test_pixGenerateFromPta;
begin
  AssertFuncLoaded(@Lept.Pix.PixGenerateFromPta, 'pixGenerateFromPta');
end;

procedure Test_l_asetCreateFromPta;
begin
  AssertFuncLoaded(@Lept.Pix.L_asetCreateFromPta, 'l_asetCreateFromPta');
end;

procedure Test_l_hmapCreateFromPta;
begin
  AssertFuncLoaded(@Lept.Pix.L_hmapCreateFromPta, 'l_hmapCreateFromPta');
end;

procedure Test_ptraCreate;
begin
  AssertFuncLoaded(@Lept.Pix.PtraCreate, 'ptraCreate');
end;

procedure Test_ptraDestroy;
begin
  AssertFuncLoaded(@Lept.Pix.PtraDestroy, 'ptraDestroy');
end;

procedure Test_ptraAdd;
begin
  AssertFuncLoaded(@Lept.Pix.PtraAdd, 'ptraAdd');
end;

procedure Test_ptraInsert;
begin
  AssertFuncLoaded(@Lept.Pix.PtraInsert, 'ptraInsert');
end;

procedure Test_ptraRemove;
begin
  AssertFuncLoaded(@Lept.Pix.PtraRemove, 'ptraRemove');
end;

procedure Test_ptraRemoveLast;
begin
  AssertFuncLoaded(@Lept.Pix.PtraRemoveLast, 'ptraRemoveLast');
end;

procedure Test_ptraReplace;
begin
  AssertFuncLoaded(@Lept.Pix.PtraReplace, 'ptraReplace');
end;

procedure Test_ptraSwap;
begin
  AssertFuncLoaded(@Lept.Pix.PtraSwap, 'ptraSwap');
end;

procedure Test_ptraCompactArray;
begin
  AssertFuncLoaded(@Lept.Pix.PtraCompactArray, 'ptraCompactArray');
end;

procedure Test_ptraReverse;
begin
  AssertFuncLoaded(@Lept.Pix.PtraReverse, 'ptraReverse');
end;

procedure Test_ptraJoin;
begin
  AssertFuncLoaded(@Lept.Pix.PtraJoin, 'ptraJoin');
end;

procedure Test_ptraGetMaxIndex;
begin
  AssertFuncLoaded(@Lept.Pix.PtraGetMaxIndex, 'ptraGetMaxIndex');
end;

procedure Test_ptraGetActualCount;
begin
  AssertFuncLoaded(@Lept.Pix.PtraGetActualCount, 'ptraGetActualCount');
end;

procedure Test_ptraGetPtrToItem;
begin
  AssertFuncLoaded(@Lept.Pix.PtraGetPtrToItem, 'ptraGetPtrToItem');
end;

procedure Test_ptraaCreate;
begin
  AssertFuncLoaded(@Lept.Pix.PtraaCreate, 'ptraaCreate');
end;

procedure Test_ptraaDestroy;
begin
  AssertFuncLoaded(@Lept.Pix.PtraaDestroy, 'ptraaDestroy');
end;

procedure Test_ptraaGetSize;
begin
  AssertFuncLoaded(@Lept.Pix.PtraaGetSize, 'ptraaGetSize');
end;

procedure Test_ptraaInsertPtra;
begin
  AssertFuncLoaded(@Lept.Pix.PtraaInsertPtra, 'ptraaInsertPtra');
end;

procedure Test_ptraaGetPtra;
begin
  AssertFuncLoaded(@Lept.Pix.PtraaGetPtra, 'ptraaGetPtra');
end;

procedure Test_ptraaFlattenToPtra;
begin
  AssertFuncLoaded(@Lept.Pix.PtraaFlattenToPtra, 'ptraaFlattenToPtra');
end;

procedure Test_pixQuadtreeMean;
begin
  AssertFuncLoaded(@Lept.Pix.PixQuadtreeMean, 'pixQuadtreeMean');
end;

procedure Test_pixQuadtreeVariance;
begin
  AssertFuncLoaded(@Lept.Pix.PixQuadtreeVariance, 'pixQuadtreeVariance');
end;

procedure Test_pixMeanInRectangle;
begin
  AssertFuncLoaded(@Lept.Pix.PixMeanInRectangle, 'pixMeanInRectangle');
end;

procedure Test_quadtreeGetParent;
begin
  AssertFuncLoaded(@Lept.Pix.QuadtreeGetParent, 'quadtreeGetParent');
end;

procedure Test_quadtreeGetChildren;
begin
  AssertFuncLoaded(@Lept.Pix.QuadtreeGetChildren, 'quadtreeGetChildren');
end;

procedure Test_quadtreeMaxLevels;
begin
  AssertFuncLoaded(@Lept.Pix.QuadtreeMaxLevels, 'quadtreeMaxLevels');
end;

procedure Test_lqueueCreate;
begin
  AssertFuncLoaded(@Lept.Pix.LqueueCreate, 'lqueueCreate');
end;

procedure Test_lqueueDestroy;
begin
  AssertFuncLoaded(@Lept.Pix.LqueueDestroy, 'lqueueDestroy');
end;

procedure Test_lqueueAdd;
begin
  AssertFuncLoaded(@Lept.Pix.LqueueAdd, 'lqueueAdd');
end;

procedure Test_lqueueRemove;
begin
  AssertFuncLoaded(@Lept.Pix.LqueueRemove, 'lqueueRemove');
end;

procedure Test_lqueueGetCount;
begin
  AssertFuncLoaded(@Lept.Pix.LqueueGetCount, 'lqueueGetCount');
end;

procedure Test_lqueuePrint;
begin
  AssertFuncLoaded(@Lept.Pix.LqueuePrint, 'lqueuePrint');
end;

procedure Test_l_rbtreeCreate;
begin
  AssertFuncLoaded(@Lept.Pix.L_rbtreeCreate, 'l_rbtreeCreate');
end;

procedure Test_l_rbtreeLookup;
begin
  AssertFuncLoaded(@Lept.Pix.L_rbtreeLookup, 'l_rbtreeLookup');
end;

procedure Test_l_rbtreeInsert;
begin
  AssertFuncLoaded(@Lept.Pix.L_rbtreeInsert, 'l_rbtreeInsert');
end;

procedure Test_l_rbtreeDelete;
begin
  AssertFuncLoaded(@Lept.Pix.L_rbtreeDelete, 'l_rbtreeDelete');
end;

procedure Test_l_rbtreeDestroy;
begin
  AssertFuncLoaded(@Lept.Pix.L_rbtreeDestroy, 'l_rbtreeDestroy');
end;

procedure Test_l_rbtreeGetFirst;
begin
  AssertFuncLoaded(@Lept.Pix.L_rbtreeGetFirst, 'l_rbtreeGetFirst');
end;

procedure Test_l_rbtreeGetNext;
begin
  AssertFuncLoaded(@Lept.Pix.L_rbtreeGetNext, 'l_rbtreeGetNext');
end;

procedure Test_l_rbtreeGetLast;
begin
  AssertFuncLoaded(@Lept.Pix.L_rbtreeGetLast, 'l_rbtreeGetLast');
end;

procedure Test_l_rbtreeGetPrev;
begin
  AssertFuncLoaded(@Lept.Pix.L_rbtreeGetPrev, 'l_rbtreeGetPrev');
end;

procedure Test_l_rbtreeGetCount;
begin
  AssertFuncLoaded(@Lept.Pix.L_rbtreeGetCount, 'l_rbtreeGetCount');
end;

procedure Test_l_rbtreePrint;
begin
  AssertFuncLoaded(@Lept.Pix.L_rbtreePrint, 'l_rbtreePrint');
end;

procedure Test_pixProcessBarcodes;
begin
  AssertFuncLoaded(@Lept.Pix.PixProcessBarcodes, 'pixProcessBarcodes');
end;

procedure Test_pixExtractBarcodes;
begin
  AssertFuncLoaded(@Lept.Pix.PixExtractBarcodes, 'pixExtractBarcodes');
end;

procedure Test_pixLocateBarcodes;
begin
  AssertFuncLoaded(@Lept.Pix.PixLocateBarcodes, 'pixLocateBarcodes');
end;

procedure Test_pixExtractBarcodeWidths1;
begin
  AssertFuncLoaded(@Lept.Pix.PixExtractBarcodeWidths1, 'pixExtractBarcodeWidths1');
end;

procedure Test_pixExtractBarcodeWidths2;
begin
  AssertFuncLoaded(@Lept.Pix.PixExtractBarcodeWidths2, 'pixExtractBarcodeWidths2');
end;

procedure Test_pixExtractBarcodeCrossings;
begin
  AssertFuncLoaded(@Lept.Pix.PixExtractBarcodeCrossings, 'pixExtractBarcodeCrossings');
end;

procedure Test_fileFormatIsTiff;
begin
  AssertFuncLoaded(@Lept.Pix.FileFormatIsTiff, 'fileFormatIsTiff');
end;

procedure Test_writeImageFileInfo;
begin
  AssertFuncLoaded(@Lept.Pix.WriteImageFileInfo, 'writeImageFileInfo');
end;

procedure Test_ioFormatTest;
begin
  AssertFuncLoaded(@Lept.Pix.IoFormatTest, 'ioFormatTest');
end;

procedure Test_l_convertCharstrToInt;
begin
  AssertFuncLoaded(@Lept.Pix.L_convertCharstrToInt, 'l_convertCharstrToInt');
end;

procedure Test_showExtractNumbers;
begin
  AssertFuncLoaded(@Lept.Pix.ShowExtractNumbers, 'showExtractNumbers');
end;

procedure Test_regTestSetup;
begin
  AssertFuncLoaded(@Lept.Pix.RegTestSetup, 'regTestSetup');
end;

procedure Test_regTestCleanup;
begin
  AssertFuncLoaded(@Lept.Pix.RegTestCleanup, 'regTestCleanup');
end;

procedure Test_regTestCompareValues;
begin
  AssertFuncLoaded(@Lept.Pix.RegTestCompareValues, 'regTestCompareValues');
end;

procedure Test_regTestCompareStrings;
begin
  AssertFuncLoaded(@Lept.Pix.RegTestCompareStrings, 'regTestCompareStrings');
end;

procedure Test_regTestComparePix;
begin
  AssertFuncLoaded(@Lept.Pix.RegTestComparePix, 'regTestComparePix');
end;

procedure Test_regTestCompareSimilarPix;
begin
  AssertFuncLoaded(@Lept.Pix.RegTestCompareSimilarPix, 'regTestCompareSimilarPix');
end;

procedure Test_regTestCheckFile;
begin
  AssertFuncLoaded(@Lept.Pix.RegTestCheckFile, 'regTestCheckFile');
end;

procedure Test_regTestCompareFiles;
begin
  AssertFuncLoaded(@Lept.Pix.RegTestCompareFiles, 'regTestCompareFiles');
end;

procedure Test_regTestWritePixAndCheck;
begin
  AssertFuncLoaded(@Lept.Pix.RegTestWritePixAndCheck, 'regTestWritePixAndCheck');
end;

procedure Test_regTestWriteDataAndCheck;
begin
  AssertFuncLoaded(@Lept.Pix.RegTestWriteDataAndCheck, 'regTestWriteDataAndCheck');
end;

procedure Test_regTestGenLocalFilename;
begin
  AssertFuncLoaded(@Lept.Pix.RegTestGenLocalFilename, 'regTestGenLocalFilename');
end;

procedure Test_l_pdfRenderFile;
begin
  AssertFuncLoaded(@Lept.Pix.L_pdfRenderFile, 'l_pdfRenderFile');
end;

procedure Test_l_pdfRenderFiles;
begin
  AssertFuncLoaded(@Lept.Pix.L_pdfRenderFiles, 'l_pdfRenderFiles');
end;

procedure Test_pixEmbedForRotation;
begin
  AssertFuncLoaded(@Lept.Pix.PixEmbedForRotation, 'pixEmbedForRotation');
end;

procedure Test_pixFindHorizontalRuns;
begin
  AssertFuncLoaded(@Lept.Pix.PixFindHorizontalRuns, 'pixFindHorizontalRuns');
end;

procedure Test_pixFindVerticalRuns;
begin
  AssertFuncLoaded(@Lept.Pix.PixFindVerticalRuns, 'pixFindVerticalRuns');
end;

procedure Test_pixFindMaxRuns;
begin
  AssertFuncLoaded(@Lept.Pix.PixFindMaxRuns, 'pixFindMaxRuns');
end;

procedure Test_pixFindMaxHorizontalRunOnLine;
begin
  AssertFuncLoaded(@Lept.Pix.PixFindMaxHorizontalRunOnLine, 'pixFindMaxHorizontalRunOnLine');
end;

procedure Test_pixFindMaxVerticalRunOnLine;
begin
  AssertFuncLoaded(@Lept.Pix.PixFindMaxVerticalRunOnLine, 'pixFindMaxVerticalRunOnLine');
end;

procedure Test_runlengthMembershipOnLine;
begin
  AssertFuncLoaded(@Lept.Pix.RunlengthMembershipOnLine, 'runlengthMembershipOnLine');
end;

procedure Test_makeMSBitLocTab;
begin
  AssertFuncLoaded(@Lept.Pix.MakeMSBitLocTab, 'makeMSBitLocTab');
end;

procedure Test_getNumberedPathnamesInDirectory;
begin
  AssertFuncLoaded(@Lept.Pix.GetNumberedPathnamesInDirectory, 'getNumberedPathnamesInDirectory');
end;

procedure Test_getSortedPathnamesInDirectory;
begin
  AssertFuncLoaded(@Lept.Pix.GetSortedPathnamesInDirectory, 'getSortedPathnamesInDirectory');
end;

procedure Test_convertSortedToNumberedPathnames;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertSortedToNumberedPathnames, 'convertSortedToNumberedPathnames');
end;

procedure Test_getFilenamesInDirectory;
begin
  AssertFuncLoaded(@Lept.Pix.GetFilenamesInDirectory, 'getFilenamesInDirectory');
end;

procedure Test_stringCompareLexical;
begin
  AssertFuncLoaded(@Lept.Pix.StringCompareLexical, 'stringCompareLexical');
end;

procedure Test_l_asetCreateFromSarray;
begin
  AssertFuncLoaded(@Lept.Pix.L_asetCreateFromSarray, 'l_asetCreateFromSarray');
end;

procedure Test_l_hmapCreateFromSarray;
begin
  AssertFuncLoaded(@Lept.Pix.L_hmapCreateFromSarray, 'l_hmapCreateFromSarray');
end;

procedure Test_pixScale;
begin
  AssertFuncLoaded(@Lept.Pix.PixScale, 'pixScale');
end;

procedure Test_pixExpandReplicate;
begin
  AssertFuncLoaded(@Lept.Pix.PixExpandReplicate, 'pixExpandReplicate');
end;

procedure Test_pixFillClosedBorders;
begin
  AssertFuncLoaded(@Lept.Pix.PixFillClosedBorders, 'pixFillClosedBorders');
end;

procedure Test_pixExtractBorderConnComps;
begin
  AssertFuncLoaded(@Lept.Pix.PixExtractBorderConnComps, 'pixExtractBorderConnComps');
end;

procedure Test_pixRemoveBorderConnComps;
begin
  AssertFuncLoaded(@Lept.Pix.PixRemoveBorderConnComps, 'pixRemoveBorderConnComps');
end;

procedure Test_pixFillBgFromBorder;
begin
  AssertFuncLoaded(@Lept.Pix.PixFillBgFromBorder, 'pixFillBgFromBorder');
end;

procedure Test_pixFillHolesToBoundingRect;
begin
  AssertFuncLoaded(@Lept.Pix.PixFillHolesToBoundingRect, 'pixFillHolesToBoundingRect');
end;

procedure Test_pixFindEqualValues;
begin
  AssertFuncLoaded(@Lept.Pix.PixFindEqualValues, 'pixFindEqualValues');
end;

procedure Test_pixSelectMinInConnComp;
begin
  AssertFuncLoaded(@Lept.Pix.PixSelectMinInConnComp, 'pixSelectMinInConnComp');
end;

procedure Test_pixRemoveSeededComponents;
begin
  AssertFuncLoaded(@Lept.Pix.PixRemoveSeededComponents, 'pixRemoveSeededComponents');
end;

procedure Test_create2dIntArray;
begin
  AssertFuncLoaded(@Lept.Pix.Create2dIntArray, 'create2dIntArray');
end;

procedure Test_getCompositeParameters;
begin
  AssertFuncLoaded(@Lept.Pix.GetCompositeParameters, 'getCompositeParameters');
end;

procedure Test_sela4ccThin;
begin
  AssertFuncLoaded(@Lept.Pix.Sela4ccThin, 'sela4ccThin');
end;

procedure Test_sela8ccThin;
begin
  AssertFuncLoaded(@Lept.Pix.Sela8ccThin, 'sela8ccThin');
end;

procedure Test_sela4and8ccThin;
begin
  AssertFuncLoaded(@Lept.Pix.Sela4and8ccThin, 'sela4and8ccThin');
end;

procedure Test_pixGenerateSelBoundary;
begin
  AssertFuncLoaded(@Lept.Pix.PixGenerateSelBoundary, 'pixGenerateSelBoundary');
end;

procedure Test_pixGenerateSelWithRuns;
begin
  AssertFuncLoaded(@Lept.Pix.PixGenerateSelWithRuns, 'pixGenerateSelWithRuns');
end;

procedure Test_pixGenerateSelRandom;
begin
  AssertFuncLoaded(@Lept.Pix.PixGenerateSelRandom, 'pixGenerateSelRandom');
end;

procedure Test_pixGetRunCentersOnLine;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetRunCentersOnLine, 'pixGetRunCentersOnLine');
end;

procedure Test_pixGetRunsOnLine;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetRunsOnLine, 'pixGetRunsOnLine');
end;

procedure Test_pixSubsampleBoundaryPixels;
begin
  AssertFuncLoaded(@Lept.Pix.PixSubsampleBoundaryPixels, 'pixSubsampleBoundaryPixels');
end;

procedure Test_adjacentOnPixelInRaster;
begin
  AssertFuncLoaded(@Lept.Pix.AdjacentOnPixelInRaster, 'adjacentOnPixelInRaster');
end;

procedure Test_pixFindDifferentialSquareSum;
begin
  AssertFuncLoaded(@Lept.Pix.PixFindDifferentialSquareSum, 'pixFindDifferentialSquareSum');
end;

procedure Test_pixFindNormalizedSquareSum;
begin
  AssertFuncLoaded(@Lept.Pix.PixFindNormalizedSquareSum, 'pixFindNormalizedSquareSum');
end;

procedure Test_pixSerializeToMemory;
begin
  AssertFuncLoaded(@Lept.Pix.PixSerializeToMemory, 'pixSerializeToMemory');
end;

procedure Test_pixDeserializeFromMemory;
begin
  AssertFuncLoaded(@Lept.Pix.PixDeserializeFromMemory, 'pixDeserializeFromMemory');
end;

procedure Test_lstackCreate;
begin
  AssertFuncLoaded(@Lept.Pix.LstackCreate, 'lstackCreate');
end;

procedure Test_lstackDestroy;
begin
  AssertFuncLoaded(@Lept.Pix.LstackDestroy, 'lstackDestroy');
end;

procedure Test_lstackAdd;
begin
  AssertFuncLoaded(@Lept.Pix.LstackAdd, 'lstackAdd');
end;

procedure Test_lstackRemove;
begin
  AssertFuncLoaded(@Lept.Pix.LstackRemove, 'lstackRemove');
end;

procedure Test_lstackGetCount;
begin
  AssertFuncLoaded(@Lept.Pix.LstackGetCount, 'lstackGetCount');
end;

procedure Test_lstackPrint;
begin
  AssertFuncLoaded(@Lept.Pix.LstackPrint, 'lstackPrint');
end;

procedure Test_strcodeCreate;
begin
  AssertFuncLoaded(@Lept.Pix.StrcodeCreate, 'strcodeCreate');
end;

procedure Test_strcodeCreateFromFile;
begin
  AssertFuncLoaded(@Lept.Pix.StrcodeCreateFromFile, 'strcodeCreateFromFile');
end;

procedure Test_strcodeGenerate;
begin
  AssertFuncLoaded(@Lept.Pix.StrcodeGenerate, 'strcodeGenerate');
end;

procedure Test_strcodeFinalize;
begin
  AssertFuncLoaded(@Lept.Pix.StrcodeFinalize, 'strcodeFinalize');
end;

procedure Test_l_getStructStrFromFile;
begin
  AssertFuncLoaded(@Lept.Pix.L_getStructStrFromFile, 'l_getStructStrFromFile');
end;

procedure Test_pixFindStrokeLength;
begin
  AssertFuncLoaded(@Lept.Pix.PixFindStrokeLength, 'pixFindStrokeLength');
end;

procedure Test_pixFindStrokeWidth;
begin
  AssertFuncLoaded(@Lept.Pix.PixFindStrokeWidth, 'pixFindStrokeWidth');
end;

procedure Test_pixSetStrokeWidth;
begin
  AssertFuncLoaded(@Lept.Pix.PixSetStrokeWidth, 'pixSetStrokeWidth');
end;

procedure Test_sudokuReadFile;
begin
  AssertFuncLoaded(@Lept.Pix.SudokuReadFile, 'sudokuReadFile');
end;

procedure Test_sudokuReadString;
begin
  AssertFuncLoaded(@Lept.Pix.SudokuReadString, 'sudokuReadString');
end;

procedure Test_sudokuCreate;
begin
  AssertFuncLoaded(@Lept.Pix.SudokuCreate, 'sudokuCreate');
end;

procedure Test_sudokuDestroy;
begin
  AssertFuncLoaded(@Lept.Pix.SudokuDestroy, 'sudokuDestroy');
end;

procedure Test_sudokuSolve;
begin
  AssertFuncLoaded(@Lept.Pix.SudokuSolve, 'sudokuSolve');
end;

procedure Test_sudokuTestUniqueness;
begin
  AssertFuncLoaded(@Lept.Pix.SudokuTestUniqueness, 'sudokuTestUniqueness');
end;

procedure Test_sudokuGenerate;
begin
  AssertFuncLoaded(@Lept.Pix.SudokuGenerate, 'sudokuGenerate');
end;

procedure Test_sudokuOutput;
begin
  AssertFuncLoaded(@Lept.Pix.SudokuOutput, 'sudokuOutput');
end;

procedure Test_splitStringToParagraphs;
begin
  AssertFuncLoaded(@Lept.Pix.SplitStringToParagraphs, 'splitStringToParagraphs');
end;

procedure Test_writeMultipageTiff;
begin
  AssertFuncLoaded(@Lept.Pix.WriteMultipageTiff, 'writeMultipageTiff');
end;

procedure Test_writeMultipageTiffSA;
begin
  AssertFuncLoaded(@Lept.Pix.WriteMultipageTiffSA, 'writeMultipageTiffSA');
end;

procedure Test_fprintTiffInfo;
begin
  AssertFuncLoaded(@Lept.Pix.FprintTiffInfo, 'fprintTiffInfo');
end;

procedure Test_tiffGetCount;
begin
  AssertFuncLoaded(@Lept.Pix.TiffGetCount, 'tiffGetCount');
end;

procedure Test_getTiffResolution;
begin
  AssertFuncLoaded(@Lept.Pix.GetTiffResolution, 'getTiffResolution');
end;

procedure Test_findTiffCompression;
begin
  AssertFuncLoaded(@Lept.Pix.FindTiffCompression, 'findTiffCompression');
end;

procedure Test_extractG4DataFromFile;
begin
  AssertFuncLoaded(@Lept.Pix.ExtractG4DataFromFile, 'extractG4DataFromFile');
end;

procedure Test_setMsgSeverity;
begin
  AssertFuncLoaded(@Lept.Pix.SetMsgSeverity, 'setMsgSeverity');
end;

procedure Test_returnErrorInt;
begin
  AssertFuncLoaded(@Lept.Pix.ReturnErrorInt, 'returnErrorInt');
end;

procedure Test_returnErrorFloat;
begin
  AssertFuncLoaded(@Lept.Pix.ReturnErrorFloat, 'returnErrorFloat');
end;

procedure Test_returnErrorPtr;
begin
  AssertFuncLoaded(@Lept.Pix.ReturnErrorPtr, 'returnErrorPtr');
end;

procedure Test_returnErrorInt1;
begin
  AssertFuncLoaded(@Lept.Pix.ReturnErrorInt1, 'returnErrorInt1');
end;

procedure Test_returnErrorFloat1;
begin
  AssertFuncLoaded(@Lept.Pix.ReturnErrorFloat1, 'returnErrorFloat1');
end;

procedure Test_returnErrorPtr1;
begin
  AssertFuncLoaded(@Lept.Pix.ReturnErrorPtr1, 'returnErrorPtr1');
end;

procedure Test_leptSetStderrHandler;
begin
  AssertFuncLoaded(@Lept.Pix.LeptSetStderrHandler, 'leptSetStderrHandler');
end;

procedure Test_lept_stderr;
begin
  AssertFuncLoaded(@Lept.Pix.Lept_stderr, 'lept_stderr');
end;

procedure Test_filesAreIdentical;
begin
  AssertFuncLoaded(@Lept.Pix.FilesAreIdentical, 'filesAreIdentical');
end;

procedure Test_convertOnLittleEnd16;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertOnLittleEnd16, 'convertOnLittleEnd16');
end;

procedure Test_convertOnBigEnd16;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertOnBigEnd16, 'convertOnBigEnd16');
end;

procedure Test_convertOnLittleEnd32;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertOnLittleEnd32, 'convertOnLittleEnd32');
end;

procedure Test_convertOnBigEnd32;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertOnBigEnd32, 'convertOnBigEnd32');
end;

procedure Test_fileCorruptByDeletion;
begin
  AssertFuncLoaded(@Lept.Pix.FileCorruptByDeletion, 'fileCorruptByDeletion');
end;

procedure Test_fileCorruptByMutation;
begin
  AssertFuncLoaded(@Lept.Pix.FileCorruptByMutation, 'fileCorruptByMutation');
end;

procedure Test_fileReplaceBytes;
begin
  AssertFuncLoaded(@Lept.Pix.FileReplaceBytes, 'fileReplaceBytes');
end;

procedure Test_genRandomIntOnInterval;
begin
  AssertFuncLoaded(@Lept.Pix.GenRandomIntOnInterval, 'genRandomIntOnInterval');
end;

procedure Test_lept_roundftoi;
begin
  AssertFuncLoaded(@Lept.Pix.Lept_roundftoi, 'lept_roundftoi');
end;

procedure Test_lept_floor;
begin
  AssertFuncLoaded(@Lept.Pix.Lept_floor, 'lept_floor');
end;

procedure Test_lept_ceiling;
begin
  AssertFuncLoaded(@Lept.Pix.Lept_ceiling, 'lept_ceiling');
end;

procedure Test_l_hashStringToUint64;
begin
  AssertFuncLoaded(@Lept.Pix.L_hashStringToUint64, 'l_hashStringToUint64');
end;

procedure Test_l_hashStringToUint64Fast;
begin
  AssertFuncLoaded(@Lept.Pix.L_hashStringToUint64Fast, 'l_hashStringToUint64Fast');
end;

procedure Test_l_hashPtToUint64;
begin
  AssertFuncLoaded(@Lept.Pix.L_hashPtToUint64, 'l_hashPtToUint64');
end;

procedure Test_l_hashFloat64ToUint64;
begin
  AssertFuncLoaded(@Lept.Pix.L_hashFloat64ToUint64, 'l_hashFloat64ToUint64');
end;

procedure Test_findNextLargerPrime;
begin
  AssertFuncLoaded(@Lept.Pix.FindNextLargerPrime, 'findNextLargerPrime');
end;

procedure Test_lept_isPrime;
begin
  AssertFuncLoaded(@Lept.Pix.Lept_isPrime, 'lept_isPrime');
end;

procedure Test_convertIntToGrayCode;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertIntToGrayCode, 'convertIntToGrayCode');
end;

procedure Test_convertGrayCodeToInt;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertGrayCodeToInt, 'convertGrayCodeToInt');
end;

procedure Test_getLeptonicaVersion;
begin
  AssertFuncLoaded(@Lept.Pix.GetLeptonicaVersion, 'getLeptonicaVersion');
end;

procedure Test_startTimer;
begin
  AssertFuncLoaded(@Lept.Pix.StartTimer, 'startTimer');
end;

procedure Test_stopTimer;
begin
  AssertFuncLoaded(@Lept.Pix.StopTimer, 'stopTimer');
end;

procedure Test_startTimerNested;
begin
  AssertFuncLoaded(@Lept.Pix.StartTimerNested, 'startTimerNested');
end;

procedure Test_stopTimerNested;
begin
  AssertFuncLoaded(@Lept.Pix.StopTimerNested, 'stopTimerNested');
end;

procedure Test_l_getCurrentTime;
begin
  AssertFuncLoaded(@Lept.Pix.L_getCurrentTime, 'l_getCurrentTime');
end;

procedure Test_startWallTimer;
begin
  AssertFuncLoaded(@Lept.Pix.StartWallTimer, 'startWallTimer');
end;

procedure Test_stopWallTimer;
begin
  AssertFuncLoaded(@Lept.Pix.StopWallTimer, 'stopWallTimer');
end;

procedure Test_l_getFormattedDate;
begin
  AssertFuncLoaded(@Lept.Pix.L_getFormattedDate, 'l_getFormattedDate');
end;

procedure Test_stringNew;
begin
  AssertFuncLoaded(@Lept.Pix.StringNew, 'stringNew');
end;

procedure Test_stringCopy;
begin
  AssertFuncLoaded(@Lept.Pix.StringCopy, 'stringCopy');
end;

procedure Test_stringCopySegment;
begin
  AssertFuncLoaded(@Lept.Pix.StringCopySegment, 'stringCopySegment');
end;

procedure Test_stringReplace;
begin
  AssertFuncLoaded(@Lept.Pix.StringReplace, 'stringReplace');
end;

procedure Test_stringLength;
begin
  AssertFuncLoaded(@Lept.Pix.StringLength, 'stringLength');
end;

procedure Test_stringCat;
begin
  AssertFuncLoaded(@Lept.Pix.StringCat, 'stringCat');
end;

procedure Test_stringConcatNew;
begin
  AssertFuncLoaded(@Lept.Pix.StringConcatNew, 'stringConcatNew');
end;

procedure Test_stringJoin;
begin
  AssertFuncLoaded(@Lept.Pix.StringJoin, 'stringJoin');
end;

procedure Test_stringJoinIP;
begin
  AssertFuncLoaded(@Lept.Pix.StringJoinIP, 'stringJoinIP');
end;

procedure Test_stringReverse;
begin
  AssertFuncLoaded(@Lept.Pix.StringReverse, 'stringReverse');
end;

procedure Test_strtokSafe;
begin
  AssertFuncLoaded(@Lept.Pix.StrtokSafe, 'strtokSafe');
end;

procedure Test_stringSplitOnToken;
begin
  AssertFuncLoaded(@Lept.Pix.StringSplitOnToken, 'stringSplitOnToken');
end;

procedure Test_stringCheckForChars;
begin
  AssertFuncLoaded(@Lept.Pix.StringCheckForChars, 'stringCheckForChars');
end;

procedure Test_stringRemoveChars;
begin
  AssertFuncLoaded(@Lept.Pix.StringRemoveChars, 'stringRemoveChars');
end;

procedure Test_stringReplaceEachSubstr;
begin
  AssertFuncLoaded(@Lept.Pix.StringReplaceEachSubstr, 'stringReplaceEachSubstr');
end;

procedure Test_stringReplaceSubstr;
begin
  AssertFuncLoaded(@Lept.Pix.StringReplaceSubstr, 'stringReplaceSubstr');
end;

procedure Test_stringFindEachSubstr;
begin
  AssertFuncLoaded(@Lept.Pix.StringFindEachSubstr, 'stringFindEachSubstr');
end;

procedure Test_stringFindSubstr;
begin
  AssertFuncLoaded(@Lept.Pix.StringFindSubstr, 'stringFindSubstr');
end;

procedure Test_arrayReplaceEachSequence;
begin
  AssertFuncLoaded(@Lept.Pix.ArrayReplaceEachSequence, 'arrayReplaceEachSequence');
end;

procedure Test_arrayFindEachSequence;
begin
  AssertFuncLoaded(@Lept.Pix.ArrayFindEachSequence, 'arrayFindEachSequence');
end;

procedure Test_arrayFindSequence;
begin
  AssertFuncLoaded(@Lept.Pix.ArrayFindSequence, 'arrayFindSequence');
end;

procedure Test_reallocNew;
begin
  AssertFuncLoaded(@Lept.Pix.ReallocNew, 'reallocNew');
end;

procedure Test_l_binaryRead;
begin
  AssertFuncLoaded(@Lept.Pix.L_binaryRead, 'l_binaryRead');
end;

procedure Test_l_binaryReadStream;
begin
  AssertFuncLoaded(@Lept.Pix.L_binaryReadStream, 'l_binaryReadStream');
end;

procedure Test_l_binaryReadSelect;
begin
  AssertFuncLoaded(@Lept.Pix.L_binaryReadSelect, 'l_binaryReadSelect');
end;

procedure Test_l_binaryReadSelectStream;
begin
  AssertFuncLoaded(@Lept.Pix.L_binaryReadSelectStream, 'l_binaryReadSelectStream');
end;

procedure Test_l_binaryWrite;
begin
  AssertFuncLoaded(@Lept.Pix.L_binaryWrite, 'l_binaryWrite');
end;

procedure Test_nbytesInFile;
begin
  AssertFuncLoaded(@Lept.Pix.NbytesInFile, 'nbytesInFile');
end;

procedure Test_fnbytesInFile;
begin
  AssertFuncLoaded(@Lept.Pix.FnbytesInFile, 'fnbytesInFile');
end;

procedure Test_l_binaryCopy;
begin
  AssertFuncLoaded(@Lept.Pix.L_binaryCopy, 'l_binaryCopy');
end;

procedure Test_l_binaryCompare;
begin
  AssertFuncLoaded(@Lept.Pix.L_binaryCompare, 'l_binaryCompare');
end;

procedure Test_fileCopy;
begin
  AssertFuncLoaded(@Lept.Pix.FileCopy, 'fileCopy');
end;

procedure Test_fileConcatenate;
begin
  AssertFuncLoaded(@Lept.Pix.FileConcatenate, 'fileConcatenate');
end;

procedure Test_fileAppendString;
begin
  AssertFuncLoaded(@Lept.Pix.FileAppendString, 'fileAppendString');
end;

procedure Test_fileSplitLinesUniform;
begin
  AssertFuncLoaded(@Lept.Pix.FileSplitLinesUniform, 'fileSplitLinesUniform');
end;

procedure Test_fopenReadStream;
begin
  AssertFuncLoaded(@Lept.Pix.FopenReadStream, 'fopenReadStream');
end;

procedure Test_fopenWriteStream;
begin
  AssertFuncLoaded(@Lept.Pix.FopenWriteStream, 'fopenWriteStream');
end;

procedure Test_fopenReadFromMemory;
begin
  AssertFuncLoaded(@Lept.Pix.FopenReadFromMemory, 'fopenReadFromMemory');
end;

procedure Test_fopenWriteWinTempfile;
begin
  AssertFuncLoaded(@Lept.Pix.FopenWriteWinTempfile, 'fopenWriteWinTempfile');
end;

procedure Test_lept_fopen;
begin
  AssertFuncLoaded(@Lept.Pix.Lept_fopen, 'lept_fopen');
end;

procedure Test_lept_fclose;
begin
  AssertFuncLoaded(@Lept.Pix.Lept_fclose, 'lept_fclose');
end;

procedure Test_lept_calloc;
begin
  AssertFuncLoaded(@Lept.Pix.Lept_calloc, 'lept_calloc');
end;

procedure Test_lept_free;
begin
  AssertFuncLoaded(@Lept.Pix.Lept_free, 'lept_free');
end;

procedure Test_lept_mkdir;
begin
  AssertFuncLoaded(@Lept.Pix.Lept_mkdir, 'lept_mkdir');
end;

procedure Test_lept_rmdir;
begin
  AssertFuncLoaded(@Lept.Pix.Lept_rmdir, 'lept_rmdir');
end;

procedure Test_lept_direxists;
begin
  AssertFuncLoaded(@Lept.Pix.Lept_direxists, 'lept_direxists');
end;

procedure Test_lept_rm_match;
begin
  AssertFuncLoaded(@Lept.Pix.Lept_rm_match, 'lept_rm_match');
end;

procedure Test_lept_rm;
begin
  AssertFuncLoaded(@Lept.Pix.Lept_rm, 'lept_rm');
end;

procedure Test_lept_rmfile;
begin
  AssertFuncLoaded(@Lept.Pix.Lept_rmfile, 'lept_rmfile');
end;

procedure Test_lept_mv;
begin
  AssertFuncLoaded(@Lept.Pix.Lept_mv, 'lept_mv');
end;

procedure Test_lept_cp;
begin
  AssertFuncLoaded(@Lept.Pix.Lept_cp, 'lept_cp');
end;

procedure Test_callSystemDebug;
begin
  AssertFuncLoaded(@Lept.Pix.CallSystemDebug, 'callSystemDebug');
end;

procedure Test_splitPathAtDirectory;
begin
  AssertFuncLoaded(@Lept.Pix.SplitPathAtDirectory, 'splitPathAtDirectory');
end;

procedure Test_splitPathAtExtension;
begin
  AssertFuncLoaded(@Lept.Pix.SplitPathAtExtension, 'splitPathAtExtension');
end;

procedure Test_pathJoin;
begin
  AssertFuncLoaded(@Lept.Pix.PathJoin, 'pathJoin');
end;

procedure Test_appendSubdirs;
begin
  AssertFuncLoaded(@Lept.Pix.AppendSubdirs, 'appendSubdirs');
end;

procedure Test_convertSepCharsInPath;
begin
  AssertFuncLoaded(@Lept.Pix.ConvertSepCharsInPath, 'convertSepCharsInPath');
end;

procedure Test_genPathname;
begin
  AssertFuncLoaded(@Lept.Pix.GenPathname, 'genPathname');
end;

procedure Test_makeTempDirname;
begin
  AssertFuncLoaded(@Lept.Pix.MakeTempDirname, 'makeTempDirname');
end;

procedure Test_modifyTrailingSlash;
begin
  AssertFuncLoaded(@Lept.Pix.ModifyTrailingSlash, 'modifyTrailingSlash');
end;

procedure Test_l_makeTempFilename;
begin
  AssertFuncLoaded(@Lept.Pix.L_makeTempFilename, 'l_makeTempFilename');
end;

procedure Test_extractNumberFromFilename;
begin
  AssertFuncLoaded(@Lept.Pix.ExtractNumberFromFilename, 'extractNumberFromFilename');
end;

procedure Test_pixSimpleCaptcha;
begin
  AssertFuncLoaded(@Lept.Pix.PixSimpleCaptcha, 'pixSimpleCaptcha');
end;

procedure Test_pixRandomHarmonicWarp;
begin
  AssertFuncLoaded(@Lept.Pix.PixRandomHarmonicWarp, 'pixRandomHarmonicWarp');
end;

procedure Test_pixStretchHorizontal;
begin
  AssertFuncLoaded(@Lept.Pix.PixStretchHorizontal, 'pixStretchHorizontal');
end;

procedure Test_pixStretchHorizontalSampled;
begin
  AssertFuncLoaded(@Lept.Pix.PixStretchHorizontalSampled, 'pixStretchHorizontalSampled');
end;

procedure Test_pixStretchHorizontalLI;
begin
  AssertFuncLoaded(@Lept.Pix.PixStretchHorizontalLI, 'pixStretchHorizontalLI');
end;

procedure Test_pixQuadraticVShear;
begin
  AssertFuncLoaded(@Lept.Pix.PixQuadraticVShear, 'pixQuadraticVShear');
end;

procedure Test_pixQuadraticVShearSampled;
begin
  AssertFuncLoaded(@Lept.Pix.PixQuadraticVShearSampled, 'pixQuadraticVShearSampled');
end;

procedure Test_pixQuadraticVShearLI;
begin
  AssertFuncLoaded(@Lept.Pix.PixQuadraticVShearLI, 'pixQuadraticVShearLI');
end;

procedure Test_pixStereoFromPair;
begin
  AssertFuncLoaded(@Lept.Pix.PixStereoFromPair, 'pixStereoFromPair');
end;

procedure Test_setLeptDebugOK;
begin
  AssertFuncLoaded(@Lept.Pix.SetLeptDebugOK, 'setLeptDebugOK');
end;

procedure Test_pixChooseOutputFormat;
begin
  AssertFuncLoaded(@Lept.Pix.PixChooseOutputFormat, 'pixChooseOutputFormat');
end;

procedure Test_getImpliedFileFormat;
begin
  AssertFuncLoaded(@Lept.Pix.GetImpliedFileFormat, 'getImpliedFileFormat');
end;

procedure Test_getFormatFromExtension;
begin
  AssertFuncLoaded(@Lept.Pix.GetFormatFromExtension, 'getFormatFromExtension');
end;

procedure Test_pixGetAutoFormat;
begin
  AssertFuncLoaded(@Lept.Pix.PixGetAutoFormat, 'pixGetAutoFormat');
end;

procedure Test_getFormatExtension;
begin
  AssertFuncLoaded(@Lept.Pix.GetFormatExtension, 'getFormatExtension');
end;

procedure Test_pixMakeColorSquare;
begin
  AssertFuncLoaded(@Lept.Pix.PixMakeColorSquare, 'pixMakeColorSquare');
end;

procedure Test_zlibCompress;
begin
  AssertFuncLoaded(@Lept.Pix.ZlibCompress, 'zlibCompress');
end;

procedure Test_zlibUncompress;
begin
  AssertFuncLoaded(@Lept.Pix.ZlibUncompress, 'zlibUncompress');
end;

procedure Test_Func_pixCreate;
var
  P: Pointer;
begin
  P := Lept.Pix.PixCreate(100, 80, 32);
  AssertNotNil(P, 'pixCreate');
  AssertEqualsInt(100, Lept.Pix.PixGetWidth(P), 'width');
  AssertEqualsInt(80, Lept.Pix.PixGetHeight(P), 'height');
  AssertEqualsInt(32, Lept.Pix.PixGetDepth(P), 'depth');
  Lept.Pix.PixDestroy(@P);
  AssertNil(P, 'destroyed');
end;

procedure Test_Func_pixCreateGray;
var
  P: Pointer;
begin
  P := Lept.Pix.PixCreate(50, 40, 8);
  AssertNotNil(P, 'pixCreate gray');
  AssertEqualsInt(8, Lept.Pix.PixGetDepth(P), 'depth=8');
  Lept.Pix.PixDestroy(@P);
end;

procedure Test_Func_pixCreateBinary;
var
  P: Pointer;
begin
  P := Lept.Pix.PixCreate(200, 150, 1);
  AssertNotNil(P, 'pixCreate binary');
  AssertEqualsInt(1, Lept.Pix.PixGetDepth(P), 'depth=1');
  Lept.Pix.PixDestroy(@P);
end;

procedure Test_Func_pixCopy;
var
  P, C: Pointer;
begin
  P := Lept.Pix.PixCreate(60, 40, 32);
  C := Lept.Pix.PixCopy(nil, P);
  AssertNotNil(C, 'pixCopy');
  AssertEqualsInt(60, Lept.Pix.PixGetWidth(C), 'copy width');
  Lept.Pix.PixDestroy(@C);
  Lept.Pix.PixDestroy(@P);
end;

procedure Test_Func_pixClone;
var
  P, C: Pointer;
begin
  P := Lept.Pix.PixCreate(30, 20, 8);
  C := Lept.Pix.PixClone(P);
  AssertNotNil(C, 'pixClone');
  AssertEqualsInt(30, Lept.Pix.PixGetWidth(C), 'clone width');
  Lept.Pix.PixDestroy(@C);
  Lept.Pix.PixDestroy(@P);
end;

procedure Test_Func_pixSetGetPixel;
var
  P: Pointer;
  Val: Cardinal;
begin
  P := Lept.Pix.PixCreate(10, 10, 8);
  Lept.Pix.PixSetPixel(P, 5, 5, 200);
  Val := 0;
  Lept.Pix.PixGetPixel(P, 5, 5, @Val);
  AssertEqualsInt(200, Integer(Val), 'pixel value');
  Lept.Pix.PixDestroy(@P);
end;

procedure Test_Func_pixGetWpl;
var
  P: Pointer;
  Wpl: Integer;
begin
  P := Lept.Pix.PixCreate(100, 50, 32);
  Wpl := Lept.Pix.PixGetWpl(P);
  AssertEqualsInt(100, Wpl, 'wpl for 32bpp 100px');
  Lept.Pix.PixDestroy(@P);
end;

procedure Test_Func_pixGetData;
var
  P, Data: Pointer;
begin
  P := Lept.Pix.PixCreate(10, 10, 32);
  Data := Lept.Pix.PixGetData(P);
  AssertNotNil(Data, 'pixGetData');
  Lept.Pix.PixDestroy(@P);
end;

procedure Test_Func_pixCreateTemplate;
var
  P, T: Pointer;
begin
  P := Lept.Pix.PixCreate(80, 60, 8);
  T := Lept.Pix.PixCreateTemplate(P);
  AssertNotNil(T, 'pixCreateTemplate');
  AssertEqualsInt(80, Lept.Pix.PixGetWidth(T), 'template width');
  AssertEqualsInt(60, Lept.Pix.PixGetHeight(T), 'template height');
  AssertEqualsInt(8, Lept.Pix.PixGetDepth(T), 'template depth');
  Lept.Pix.PixDestroy(@T);
  Lept.Pix.PixDestroy(@P);
end;

procedure Test_Func_pixSetResolution;
var
  P: Pointer;
  XRes, YRes: Integer;
begin
  P := Lept.Pix.PixCreate(100, 100, 8);
  Lept.Pix.PixSetResolution(P, 300, 300);
  XRes := 0;
  YRes := 0;
  Lept.Pix.PixGetResolution(P, @XRes, @YRes);
  AssertEqualsInt(300, XRes, 'xres');
  AssertEqualsInt(300, YRes, 'yres');
  Lept.Pix.PixDestroy(@P);
end;

procedure Test_Func_pixSetSpp;
var
  P: Pointer;
begin
  P := Lept.Pix.PixCreate(10, 10, 32);
  AssertEqualsInt(3, Lept.Pix.PixGetSpp(P), 'spp=3 for 32bpp RGB');
  Lept.Pix.PixDestroy(@P);
end;

procedure Test_Func_pixConvertTo8;
var
  P, G: Pointer;
begin
  P := Lept.Pix.PixCreate(50, 50, 32);
  G := Lept.Pix.PixConvertTo8(P, 0);
  AssertNotNil(G, 'convertTo8');
  AssertEqualsInt(8, Lept.Pix.PixGetDepth(G), 'depth after convert');
  Lept.Pix.PixDestroy(@G);
  Lept.Pix.PixDestroy(@P);
end;

procedure Test_Func_pixConvertTo32;
var
  P, C: Pointer;
begin
  P := Lept.Pix.PixCreate(50, 50, 8);
  C := Lept.Color.PixConvertTo32(P);
  AssertNotNil(C, 'convertTo32');
  AssertEqualsInt(32, Lept.Pix.PixGetDepth(C), 'depth after convert');
  Lept.Pix.PixDestroy(@C);
  Lept.Pix.PixDestroy(@P);
end;

procedure Test_Func_pixInvert;
var
  P: Pointer;
  Val: Cardinal;
begin
  P := Lept.Pix.PixCreate(10, 10, 8);
  Lept.Pix.PixSetPixel(P, 0, 0, 0);
  Lept.Rop.PixInvert(P, P);
  Val := 0;
  Lept.Pix.PixGetPixel(P, 0, 0, @Val);
  AssertEqualsInt(255, Integer(Val), 'inverted 0->255');
  Lept.Pix.PixDestroy(@P);
end;

procedure Test_Func_pixSetAll;
var
  P: Pointer;
  Val: Cardinal;
begin
  P := Lept.Pix.PixCreate(10, 10, 8);
  Lept.Pix.PixSetAll(P);
  Val := 0;
  Lept.Pix.PixGetPixel(P, 5, 5, @Val);
  AssertEqualsInt(255, Integer(Val), 'setAll=255');
  Lept.Pix.PixDestroy(@P);
end;

procedure Test_Func_pixClearAll;
var
  P: Pointer;
  Val: Cardinal;
begin
  P := Lept.Pix.PixCreate(10, 10, 8);
  Lept.Pix.PixSetAll(P);
  Lept.Pix.PixClearAll(P);
  Val := 99;
  Lept.Pix.PixGetPixel(P, 5, 5, @Val);
  AssertEqualsInt(0, Integer(Val), 'clearAll=0');
  Lept.Pix.PixDestroy(@P);
end;

procedure Test_Func_pixAddConstantGray;
var
  P: Pointer;
  Val: Cardinal;
begin
  P := Lept.Pix.PixCreate(10, 10, 8);
  Lept.Pix.PixSetPixel(P, 0, 0, 100);
  Lept.Filter.PixAddConstantGray(P, 50);
  Val := 0;
  Lept.Pix.PixGetPixel(P, 0, 0, @Val);
  AssertEqualsInt(150, Integer(Val), 'addConstant 100+50');
  Lept.Pix.PixDestroy(@P);
end;

procedure Test_Func_pixCountPixels;
var
  P: Pointer;
  Count: Integer;
begin
  P := Lept.Pix.PixCreate(100, 100, 1);
  Lept.Pix.PixSetAll(P);
  Count := 0;
  Lept.Analysis.PixCountPixels(P, @Count, nil);
  AssertEqualsInt(10000, Count, 'all white binary = 10000 ON pixels');
  Lept.Pix.PixDestroy(@P);
end;

initialization
  RegisterTest('Pix', 'pixGetBackgroundGrayMap', @Test_pixGetBackgroundGrayMap, []);
  RegisterTest('Pix', 'pixGetBackgroundRGBMap', @Test_pixGetBackgroundRGBMap, []);
  RegisterTest('Pix', 'pixGetBackgroundGrayMapMorph', @Test_pixGetBackgroundGrayMapMorph, []);
  RegisterTest('Pix', 'pixGetBackgroundRGBMapMorph', @Test_pixGetBackgroundRGBMapMorph, []);
  RegisterTest('Pix', 'pixFillMapHoles', @Test_pixFillMapHoles, []);
  RegisterTest('Pix', 'pixExtendByReplication', @Test_pixExtendByReplication, []);
  RegisterTest('Pix', 'pixSmoothConnectedRegions', @Test_pixSmoothConnectedRegions, []);
  RegisterTest('Pix', 'l_getDataBit', @Test_l_getDataBit, []);
  RegisterTest('Pix', 'l_setDataBit', @Test_l_setDataBit, []);
  RegisterTest('Pix', 'l_clearDataBit', @Test_l_clearDataBit, []);
  RegisterTest('Pix', 'l_setDataBitVal', @Test_l_setDataBitVal, []);
  RegisterTest('Pix', 'l_getDataDibit', @Test_l_getDataDibit, []);
  RegisterTest('Pix', 'l_setDataDibit', @Test_l_setDataDibit, []);
  RegisterTest('Pix', 'l_clearDataDibit', @Test_l_clearDataDibit, []);
  RegisterTest('Pix', 'l_getDataQbit', @Test_l_getDataQbit, []);
  RegisterTest('Pix', 'l_setDataQbit', @Test_l_setDataQbit, []);
  RegisterTest('Pix', 'l_clearDataQbit', @Test_l_clearDataQbit, []);
  RegisterTest('Pix', 'l_getDataByte', @Test_l_getDataByte, []);
  RegisterTest('Pix', 'l_setDataByte', @Test_l_setDataByte, []);
  RegisterTest('Pix', 'l_getDataTwoBytes', @Test_l_getDataTwoBytes, []);
  RegisterTest('Pix', 'l_setDataTwoBytes', @Test_l_setDataTwoBytes, []);
  RegisterTest('Pix', 'l_getDataFourBytes', @Test_l_getDataFourBytes, []);
  RegisterTest('Pix', 'l_setDataFourBytes', @Test_l_setDataFourBytes, []);
  RegisterTest('Pix', 'barcodeDispatchDecoder', @Test_barcodeDispatchDecoder, []);
  RegisterTest('Pix', 'barcodeFormatIsSupported', @Test_barcodeFormatIsSupported, []);
  RegisterTest('Pix', 'bbufferCreate', @Test_bbufferCreate, []);
  RegisterTest('Pix', 'bbufferDestroy', @Test_bbufferDestroy, []);
  RegisterTest('Pix', 'bbufferDestroyAndSaveData', @Test_bbufferDestroyAndSaveData, []);
  RegisterTest('Pix', 'bbufferRead', @Test_bbufferRead, []);
  RegisterTest('Pix', 'bbufferReadStream', @Test_bbufferReadStream, []);
  RegisterTest('Pix', 'bbufferExtendArray', @Test_bbufferExtendArray, []);
  RegisterTest('Pix', 'bbufferWrite', @Test_bbufferWrite, []);
  RegisterTest('Pix', 'bbufferWriteStream', @Test_bbufferWriteStream, []);
  RegisterTest('Pix', 'l_bootnum_gen1', @Test_l_bootnum_gen1, []);
  RegisterTest('Pix', 'l_bootnum_gen2', @Test_l_bootnum_gen2, []);
  RegisterTest('Pix', 'l_bootnum_gen3', @Test_l_bootnum_gen3, []);
  RegisterTest('Pix', 'l_bootnum_gen4', @Test_l_bootnum_gen4, []);
  RegisterTest('Pix', 'pixMaskConnComp', @Test_pixMaskConnComp, []);
  RegisterTest('Pix', 'pixMaskBoxa', @Test_pixMaskBoxa, []);
  RegisterTest('Pix', 'pixSetBlackOrWhiteBoxa', @Test_pixSetBlackOrWhiteBoxa, []);
  RegisterTest('Pix', 'pixDrawBoxa', @Test_pixDrawBoxa, []);
  RegisterTest('Pix', 'pixDrawBoxaRandom', @Test_pixDrawBoxaRandom, []);
  RegisterTest('Pix', 'pixSplitIntoBoxa', @Test_pixSplitIntoBoxa, []);
  RegisterTest('Pix', 'pixSplitComponentIntoBoxa', @Test_pixSplitComponentIntoBoxa, []);
  RegisterTest('Pix', 'makeMosaicStrips', @Test_makeMosaicStrips, []);
  RegisterTest('Pix', 'pixSelectLargeULComp', @Test_pixSelectLargeULComp, []);
  RegisterTest('Pix', 'l_byteaCreate', @Test_l_byteaCreate, []);
  RegisterTest('Pix', 'l_byteaInitFromMem', @Test_l_byteaInitFromMem, []);
  RegisterTest('Pix', 'l_byteaInitFromFile', @Test_l_byteaInitFromFile, []);
  RegisterTest('Pix', 'l_byteaInitFromStream', @Test_l_byteaInitFromStream, []);
  RegisterTest('Pix', 'l_byteaCopy', @Test_l_byteaCopy, []);
  RegisterTest('Pix', 'l_byteaDestroy', @Test_l_byteaDestroy, []);
  RegisterTest('Pix', 'l_byteaGetSize', @Test_l_byteaGetSize, []);
  RegisterTest('Pix', 'l_byteaGetData', @Test_l_byteaGetData, []);
  RegisterTest('Pix', 'l_byteaCopyData', @Test_l_byteaCopyData, []);
  RegisterTest('Pix', 'l_byteaAppendData', @Test_l_byteaAppendData, []);
  RegisterTest('Pix', 'l_byteaAppendString', @Test_l_byteaAppendString, []);
  RegisterTest('Pix', 'l_byteaJoin', @Test_l_byteaJoin, []);
  RegisterTest('Pix', 'l_byteaSplit', @Test_l_byteaSplit, []);
  RegisterTest('Pix', 'l_byteaFindEachSequence', @Test_l_byteaFindEachSequence, []);
  RegisterTest('Pix', 'l_byteaWrite', @Test_l_byteaWrite, []);
  RegisterTest('Pix', 'l_byteaWriteStream', @Test_l_byteaWriteStream, []);
  RegisterTest('Pix', 'ccbaDestroy', @Test_ccbaDestroy, []);
  RegisterTest('Pix', 'pixGetAllCCBorders', @Test_pixGetAllCCBorders, []);
  RegisterTest('Pix', 'pixGetOuterBordersPtaa', @Test_pixGetOuterBordersPtaa, []);
  RegisterTest('Pix', 'pixGetOuterBorder', @Test_pixGetOuterBorder, []);
  RegisterTest('Pix', 'ccbaGenerateGlobalLocs', @Test_ccbaGenerateGlobalLocs, []);
  RegisterTest('Pix', 'ccbaGenerateStepChains', @Test_ccbaGenerateStepChains, []);
  RegisterTest('Pix', 'ccbaStepChainsToPixCoords', @Test_ccbaStepChainsToPixCoords, []);
  RegisterTest('Pix', 'ccbaGenerateSPGlobalLocs', @Test_ccbaGenerateSPGlobalLocs, []);
  RegisterTest('Pix', 'ccbaGenerateSinglePath', @Test_ccbaGenerateSinglePath, []);
  RegisterTest('Pix', 'ccbaDisplayBorder', @Test_ccbaDisplayBorder, []);
  RegisterTest('Pix', 'ccbaDisplaySPBorder', @Test_ccbaDisplaySPBorder, []);
  RegisterTest('Pix', 'ccbaDisplayImage1', @Test_ccbaDisplayImage1, []);
  RegisterTest('Pix', 'ccbaDisplayImage2', @Test_ccbaDisplayImage2, []);
  RegisterTest('Pix', 'ccbaWrite', @Test_ccbaWrite, []);
  RegisterTest('Pix', 'ccbaWriteStream', @Test_ccbaWriteStream, []);
  RegisterTest('Pix', 'ccbaRead', @Test_ccbaRead, []);
  RegisterTest('Pix', 'ccbaReadStream', @Test_ccbaReadStream, []);
  RegisterTest('Pix', 'ccbaWriteSVG', @Test_ccbaWriteSVG, []);
  RegisterTest('Pix', 'ccbaWriteSVGString', @Test_ccbaWriteSVGString, []);
  RegisterTest('Pix', 'pixFindCheckerboardCorners', @Test_pixFindCheckerboardCorners, []);
  RegisterTest('Pix', 'pixGetWordsInTextlines', @Test_pixGetWordsInTextlines, []);
  RegisterTest('Pix', 'pixGetWordBoxesInTextlines', @Test_pixGetWordBoxesInTextlines, []);
  RegisterTest('Pix', 'pixFindWordAndCharacterBoxes', @Test_pixFindWordAndCharacterBoxes, []);
  RegisterTest('Pix', 'pixColorShiftWhitePoint', @Test_pixColorShiftWhitePoint, []);
  RegisterTest('Pix', 'pixMaskOverGrayPixels', @Test_pixMaskOverGrayPixels, []);
  RegisterTest('Pix', 'pixColorsForQuantization', @Test_pixColorsForQuantization, []);
  RegisterTest('Pix', 'pixNumColors', @Test_pixNumColors, []);
  RegisterTest('Pix', 'pixGetMostPopulatedColors', @Test_pixGetMostPopulatedColors, []);
  RegisterTest('Pix', 'pixSimpleColorQuantize', @Test_pixSimpleColorQuantize, []);
  RegisterTest('Pix', 'makeRGBIndexTables', @Test_makeRGBIndexTables, []);
  RegisterTest('Pix', 'getRGBFromIndex', @Test_getRGBFromIndex, []);
  RegisterTest('Pix', 'pixHasHighlightRed', @Test_pixHasHighlightRed, []);
  RegisterTest('Pix', 'l_colorfillCreate', @Test_l_colorfillCreate, []);
  RegisterTest('Pix', 'l_colorfillDestroy', @Test_l_colorfillDestroy, []);
  RegisterTest('Pix', 'pixColorFill', @Test_pixColorFill, []);
  RegisterTest('Pix', 'makeColorfillTestData', @Test_makeColorfillTestData, []);
  RegisterTest('Pix', 'pixLinearMapToTargetColor', @Test_pixLinearMapToTargetColor, []);
  RegisterTest('Pix', 'pixelLinearMapToTargetColor', @Test_pixelLinearMapToTargetColor, []);
  RegisterTest('Pix', 'pixShiftByComponent', @Test_pixShiftByComponent, []);
  RegisterTest('Pix', 'pixelShiftByComponent', @Test_pixelShiftByComponent, []);
  RegisterTest('Pix', 'pixelFractionalShift', @Test_pixelFractionalShift, []);
  RegisterTest('Pix', 'pixMapWithInvariantHue', @Test_pixMapWithInvariantHue, []);
  RegisterTest('Pix', 'pixColorMorph', @Test_pixColorMorph, []);
  RegisterTest('Pix', 'makeRGBToIndexTables', @Test_makeRGBToIndexTables, []);
  RegisterTest('Pix', 'getOctcubeIndexFromRGB', @Test_getOctcubeIndexFromRGB, []);
  RegisterTest('Pix', 'pixOctcubeQuantMixedWithGray', @Test_pixOctcubeQuantMixedWithGray, []);
  RegisterTest('Pix', 'pixFewColorsOctcubeQuant1', @Test_pixFewColorsOctcubeQuant1, []);
  RegisterTest('Pix', 'pixFewColorsOctcubeQuant2', @Test_pixFewColorsOctcubeQuant2, []);
  RegisterTest('Pix', 'pixFewColorsOctcubeQuantMixed', @Test_pixFewColorsOctcubeQuantMixed, []);
  RegisterTest('Pix', 'pixQuantFromCmap', @Test_pixQuantFromCmap, []);
  RegisterTest('Pix', 'pixOctcubeQuantFromCmap', @Test_pixOctcubeQuantFromCmap, []);
  RegisterTest('Pix', 'pixOctcubeHistogram', @Test_pixOctcubeHistogram, []);
  RegisterTest('Pix', 'pixRemoveUnusedColors', @Test_pixRemoveUnusedColors, []);
  RegisterTest('Pix', 'pixNumberOccupiedOctcubes', @Test_pixNumberOccupiedOctcubes, []);
  RegisterTest('Pix', 'pixFewColorsMedianCutQuantMixed', @Test_pixFewColorsMedianCutQuantMixed, []);
  RegisterTest('Pix', 'pixMedianCutHisto', @Test_pixMedianCutHisto, []);
  RegisterTest('Pix', 'pixMakeRangeMaskHS', @Test_pixMakeRangeMaskHS, []);
  RegisterTest('Pix', 'pixMakeRangeMaskHV', @Test_pixMakeRangeMaskHV, []);
  RegisterTest('Pix', 'pixMakeRangeMaskSV', @Test_pixMakeRangeMaskSV, []);
  RegisterTest('Pix', 'pixMakeHistoHS', @Test_pixMakeHistoHS, []);
  RegisterTest('Pix', 'pixMakeHistoHV', @Test_pixMakeHistoHV, []);
  RegisterTest('Pix', 'pixMakeHistoSV', @Test_pixMakeHistoSV, []);
  RegisterTest('Pix', 'pixFindHistoPeaksHSV', @Test_pixFindHistoPeaksHSV, []);
  RegisterTest('Pix', 'displayHSVColorRange', @Test_displayHSVColorRange, []);
  RegisterTest('Pix', 'convertXYZToRGB', @Test_convertXYZToRGB, []);
  RegisterTest('Pix', 'convertXYZToLAB', @Test_convertXYZToLAB, []);
  RegisterTest('Pix', 'pixMakeGamutRGB', @Test_pixMakeGamutRGB, []);
  RegisterTest('Pix', 'pixEqual', @Test_pixEqual, []);
  RegisterTest('Pix', 'pixEqualWithAlpha', @Test_pixEqualWithAlpha, []);
  RegisterTest('Pix', 'pixEqualWithCmap', @Test_pixEqualWithCmap, []);
  RegisterTest('Pix', 'cmapEqual', @Test_cmapEqual, []);
  RegisterTest('Pix', 'pixUsesCmapColor', @Test_pixUsesCmapColor, []);
  RegisterTest('Pix', 'pixTestForSimilarity', @Test_pixTestForSimilarity, []);
  RegisterTest('Pix', 'pixGetDifferenceStats', @Test_pixGetDifferenceStats, []);
  RegisterTest('Pix', 'pixGetDifferenceHistogram', @Test_pixGetDifferenceHistogram, []);
  RegisterTest('Pix', 'pixGetPerceptualDiff', @Test_pixGetPerceptualDiff, []);
  RegisterTest('Pix', 'pixGetPSNR', @Test_pixGetPSNR, []);
  RegisterTest('Pix', 'pixGenPhotoHistos', @Test_pixGenPhotoHistos, []);
  RegisterTest('Pix', 'pixPadToCenterCentroid', @Test_pixPadToCenterCentroid, []);
  RegisterTest('Pix', 'pixCentroid8', @Test_pixCentroid8, []);
  RegisterTest('Pix', 'pixDecideIfPhotoImage', @Test_pixDecideIfPhotoImage, []);
  RegisterTest('Pix', 'compareTilesByHisto', @Test_compareTilesByHisto, []);
  RegisterTest('Pix', 'nextOnPixelInRaster', @Test_nextOnPixelInRaster, []);
  RegisterTest('Pix', 'convertFilesTo1bpp', @Test_convertFilesTo1bpp, []);
  RegisterTest('Pix', 'pixMeanSquareAccum', @Test_pixMeanSquareAccum, []);
  RegisterTest('Pix', 'l_setConvolveSampling', @Test_l_setConvolveSampling, []);
  RegisterTest('Pix', 'pixAddGaussianNoise', @Test_pixAddGaussianNoise, []);
  RegisterTest('Pix', 'gaussDistribSampling', @Test_gaussDistribSampling, []);
  RegisterTest('Pix', 'pixConvertDataToDna', @Test_pixConvertDataToDna, []);
  RegisterTest('Pix', 'l_asetCreateFromDna', @Test_l_asetCreateFromDna, []);
  RegisterTest('Pix', 'l_hmapCreateFromDna', @Test_l_hmapCreateFromDna, []);
  RegisterTest('Pix', 'pixFMorphopGen_2', @Test_pixFMorphopGen_2, []);
  RegisterTest('Pix', 'fmorphopgen_low_2', @Test_fmorphopgen_low_2, []);
  RegisterTest('Pix', 'pixMeasureEdgeSmoothness', @Test_pixMeasureEdgeSmoothness, []);
  RegisterTest('Pix', 'pixGetEdgeProfile', @Test_pixGetEdgeProfile, []);
  RegisterTest('Pix', 'pixGetLastOffPixelInRun', @Test_pixGetLastOffPixelInRun, []);
  RegisterTest('Pix', 'pixGetLastOnPixelInRun', @Test_pixGetLastOnPixelInRun, []);
  RegisterTest('Pix', 'encodeBase64', @Test_encodeBase64, []);
  RegisterTest('Pix', 'decodeBase64', @Test_decodeBase64, []);
  RegisterTest('Pix', 'encodeAscii85', @Test_encodeAscii85, []);
  RegisterTest('Pix', 'decodeAscii85', @Test_decodeAscii85, []);
  RegisterTest('Pix', 'encodeAscii85WithComp', @Test_encodeAscii85WithComp, []);
  RegisterTest('Pix', 'decodeAscii85WithComp', @Test_decodeAscii85WithComp, []);
  RegisterTest('Pix', 'reformatPacked64', @Test_reformatPacked64, []);
  RegisterTest('Pix', 'pixTRCMap', @Test_pixTRCMap, []);
  RegisterTest('Pix', 'pixTRCMapGeneral', @Test_pixTRCMapGeneral, []);
  RegisterTest('Pix', 'pixMosaicColorShiftRGB', @Test_pixMosaicColorShiftRGB, []);
  RegisterTest('Pix', 'pixColorShiftRGB', @Test_pixColorShiftRGB, []);
  RegisterTest('Pix', 'pixDarkenGray', @Test_pixDarkenGray, []);
  RegisterTest('Pix', 'pixMultMatrixColor', @Test_pixMultMatrixColor, []);
  RegisterTest('Pix', 'pixHalfEdgeByBandpass', @Test_pixHalfEdgeByBandpass, []);
  RegisterTest('Pix', 'fhmtautogen', @Test_fhmtautogen, []);
  RegisterTest('Pix', 'fhmtautogen1', @Test_fhmtautogen1, []);
  RegisterTest('Pix', 'fhmtautogen2', @Test_fhmtautogen2, []);
  RegisterTest('Pix', 'pixFHMTGen_1', @Test_pixFHMTGen_1, []);
  RegisterTest('Pix', 'fhmtgen_low_1', @Test_fhmtgen_low_1, []);
  RegisterTest('Pix', 'pixItalicWords', @Test_pixItalicWords, []);
  RegisterTest('Pix', 'pixOrientCorrect', @Test_pixOrientCorrect, []);
  RegisterTest('Pix', 'pixOrientDetect', @Test_pixOrientDetect, []);
  RegisterTest('Pix', 'makeOrientDecision', @Test_makeOrientDecision, []);
  RegisterTest('Pix', 'pixUpDownDetect', @Test_pixUpDownDetect, []);
  RegisterTest('Pix', 'pixMirrorDetect', @Test_pixMirrorDetect, []);
  RegisterTest('Pix', 'fmorphautogen', @Test_fmorphautogen, []);
  RegisterTest('Pix', 'fmorphautogen1', @Test_fmorphautogen1, []);
  RegisterTest('Pix', 'fmorphautogen2', @Test_fmorphautogen2, []);
  RegisterTest('Pix', 'pixFMorphopGen_1', @Test_pixFMorphopGen_1, []);
  RegisterTest('Pix', 'fmorphopgen_low_1', @Test_fmorphopgen_low_1, []);
  RegisterTest('Pix', 'pixConvertToFPix', @Test_pixConvertToFPix, []);
  RegisterTest('Pix', 'pixConvertToDPix', @Test_pixConvertToDPix, []);
  RegisterTest('Pix', 'pixComponentFunction', @Test_pixComponentFunction, []);
  RegisterTest('Pix', 'convertPtaLineTo4cc', @Test_convertPtaLineTo4cc, []);
  RegisterTest('Pix', 'locatePtRadially', @Test_locatePtRadially, []);
  RegisterTest('Pix', 'makePlotPtaFromNuma', @Test_makePlotPtaFromNuma, []);
  RegisterTest('Pix', 'makePlotPtaFromNumaGen', @Test_makePlotPtaFromNumaGen, []);
  RegisterTest('Pix', 'pixFillPolygon', @Test_pixFillPolygon, []);
  RegisterTest('Pix', 'pixGeneratePtaBoundary', @Test_pixGeneratePtaBoundary, []);
  RegisterTest('Pix', 'ditherToBinaryLineLow', @Test_ditherToBinaryLineLow, []);
  RegisterTest('Pix', 'thresholdToBinaryLineLow', @Test_thresholdToBinaryLineLow, []);
  RegisterTest('Pix', 'pixAdaptThresholdToBinary', @Test_pixAdaptThresholdToBinary, []);
  RegisterTest('Pix', 'pixAdaptThresholdToBinaryGen', @Test_pixAdaptThresholdToBinaryGen, []);
  RegisterTest('Pix', 'makeGrayQuantIndexTable', @Test_makeGrayQuantIndexTable, []);
  RegisterTest('Pix', 'makeGrayQuantTableArb', @Test_makeGrayQuantTableArb, []);
  RegisterTest('Pix', 'pixGrayQuantFromHisto', @Test_pixGrayQuantFromHisto, []);
  RegisterTest('Pix', 'pixGrayQuantFromCmap', @Test_pixGrayQuantFromCmap, []);
  RegisterTest('Pix', 'l_hmapCreate', @Test_l_hmapCreate, []);
  RegisterTest('Pix', 'l_hmapDestroy', @Test_l_hmapDestroy, []);
  RegisterTest('Pix', 'l_hmapLookup', @Test_l_hmapLookup, []);
  RegisterTest('Pix', 'l_hmapRehash', @Test_l_hmapRehash, []);
  RegisterTest('Pix', 'lheapCreate', @Test_lheapCreate, []);
  RegisterTest('Pix', 'lheapDestroy', @Test_lheapDestroy, []);
  RegisterTest('Pix', 'lheapAdd', @Test_lheapAdd, []);
  RegisterTest('Pix', 'lheapRemove', @Test_lheapRemove, []);
  RegisterTest('Pix', 'lheapGetCount', @Test_lheapGetCount, []);
  RegisterTest('Pix', 'lheapGetElement', @Test_lheapGetElement, []);
  RegisterTest('Pix', 'lheapSort', @Test_lheapSort, []);
  RegisterTest('Pix', 'lheapSortStrictOrder', @Test_lheapSortStrictOrder, []);
  RegisterTest('Pix', 'lheapPrint', @Test_lheapPrint, []);
  RegisterTest('Pix', 'pixHaustest', @Test_pixHaustest, []);
  RegisterTest('Pix', 'pixRankHaustest', @Test_pixRankHaustest, []);
  RegisterTest('Pix', 'pixWordMaskByDilation', @Test_pixWordMaskByDilation, []);
  RegisterTest('Pix', 'pixWordBoxesByDilation', @Test_pixWordBoxesByDilation, []);
  RegisterTest('Pix', 'fgetJp2kResolution', @Test_fgetJp2kResolution, []);
  RegisterTest('Pix', 'readResolutionMemJp2k', @Test_readResolutionMemJp2k, []);
  RegisterTest('Pix', 'fgetJpegResolution', @Test_fgetJpegResolution, []);
  RegisterTest('Pix', 'fgetJpegComment', @Test_fgetJpegComment, []);
  RegisterTest('Pix', 'readResolutionMemJpeg', @Test_readResolutionMemJpeg, []);
  RegisterTest('Pix', 'pixSetChromaSampling', @Test_pixSetChromaSampling, []);
  RegisterTest('Pix', 'create2dFloatArray', @Test_create2dFloatArray, []);
  RegisterTest('Pix', 'parseStringForNumbers', @Test_parseStringForNumbers, []);
  RegisterTest('Pix', 'makeFlatKernel', @Test_makeFlatKernel, []);
  RegisterTest('Pix', 'getImagelibVersions', @Test_getImagelibVersions, []);
  RegisterTest('Pix', 'listDestroy', @Test_listDestroy, []);
  RegisterTest('Pix', 'listAddToHead', @Test_listAddToHead, []);
  RegisterTest('Pix', 'listAddToTail', @Test_listAddToTail, []);
  RegisterTest('Pix', 'listInsertBefore', @Test_listInsertBefore, []);
  RegisterTest('Pix', 'listInsertAfter', @Test_listInsertAfter, []);
  RegisterTest('Pix', 'listRemoveElement', @Test_listRemoveElement, []);
  RegisterTest('Pix', 'listRemoveFromHead', @Test_listRemoveFromHead, []);
  RegisterTest('Pix', 'listRemoveFromTail', @Test_listRemoveFromTail, []);
  RegisterTest('Pix', 'listFindElement', @Test_listFindElement, []);
  RegisterTest('Pix', 'listFindTail', @Test_listFindTail, []);
  RegisterTest('Pix', 'listGetCount', @Test_listGetCount, []);
  RegisterTest('Pix', 'listReverse', @Test_listReverse, []);
  RegisterTest('Pix', 'listJoin', @Test_listJoin, []);
  RegisterTest('Pix', 'l_amapCreate', @Test_l_amapCreate, []);
  RegisterTest('Pix', 'l_amapFind', @Test_l_amapFind, []);
  RegisterTest('Pix', 'l_amapInsert', @Test_l_amapInsert, []);
  RegisterTest('Pix', 'l_amapDelete', @Test_l_amapDelete, []);
  RegisterTest('Pix', 'l_amapDestroy', @Test_l_amapDestroy, []);
  RegisterTest('Pix', 'l_amapGetFirst', @Test_l_amapGetFirst, []);
  RegisterTest('Pix', 'l_amapGetNext', @Test_l_amapGetNext, []);
  RegisterTest('Pix', 'l_amapGetLast', @Test_l_amapGetLast, []);
  RegisterTest('Pix', 'l_amapGetPrev', @Test_l_amapGetPrev, []);
  RegisterTest('Pix', 'l_amapSize', @Test_l_amapSize, []);
  RegisterTest('Pix', 'l_asetCreate', @Test_l_asetCreate, []);
  RegisterTest('Pix', 'l_asetFind', @Test_l_asetFind, []);
  RegisterTest('Pix', 'l_asetInsert', @Test_l_asetInsert, []);
  RegisterTest('Pix', 'l_asetDelete', @Test_l_asetDelete, []);
  RegisterTest('Pix', 'l_asetDestroy', @Test_l_asetDestroy, []);
  RegisterTest('Pix', 'l_asetGetFirst', @Test_l_asetGetFirst, []);
  RegisterTest('Pix', 'l_asetGetNext', @Test_l_asetGetNext, []);
  RegisterTest('Pix', 'l_asetGetLast', @Test_l_asetGetLast, []);
  RegisterTest('Pix', 'l_asetGetPrev', @Test_l_asetGetPrev, []);
  RegisterTest('Pix', 'l_asetSize', @Test_l_asetSize, []);
  RegisterTest('Pix', 'generateBinaryMaze', @Test_generateBinaryMaze, []);
  RegisterTest('Pix', 'pixSearchBinaryMaze', @Test_pixSearchBinaryMaze, []);
  RegisterTest('Pix', 'pixSearchGrayMaze', @Test_pixSearchGrayMaze, []);
  RegisterTest('Pix', 'pixClose', @Test_pixClose, []);
  RegisterTest('Pix', 'pixOpenGeneralized', @Test_pixOpenGeneralized, []);
  RegisterTest('Pix', 'selectComposableSels', @Test_selectComposableSels, []);
  RegisterTest('Pix', 'selectComposableSizes', @Test_selectComposableSizes, []);
  RegisterTest('Pix', 'getMorphBorderPixelColor', @Test_getMorphBorderPixelColor, []);
  RegisterTest('Pix', 'pixExtractBoundary', @Test_pixExtractBoundary, []);
  RegisterTest('Pix', 'pixUnionOfMorphOps', @Test_pixUnionOfMorphOps, []);
  RegisterTest('Pix', 'pixIntersectionOfMorphOps', @Test_pixIntersectionOfMorphOps, []);
  RegisterTest('Pix', 'pixSelectiveConnCompFill', @Test_pixSelectiveConnCompFill, []);
  RegisterTest('Pix', 'pixRemoveMatchedPattern', @Test_pixRemoveMatchedPattern, []);
  RegisterTest('Pix', 'pixRunHistogramMorph', @Test_pixRunHistogramMorph, []);
  RegisterTest('Pix', 'pixFastTophat', @Test_pixFastTophat, []);
  RegisterTest('Pix', 'pixCentroid', @Test_pixCentroid, []);
  RegisterTest('Pix', 'getExtendedCompositeParameters', @Test_getExtendedCompositeParameters, []);
  RegisterTest('Pix', 'morphSequenceVerify', @Test_morphSequenceVerify, []);
  RegisterTest('Pix', 'pixColorMorphSequence', @Test_pixColorMorphSequence, []);
  RegisterTest('Pix', 'grayHistogramsToEMD', @Test_grayHistogramsToEMD, []);
  RegisterTest('Pix', 'grayInterHistogramStats', @Test_grayInterHistogramStats, []);
  RegisterTest('Pix', 'genConstrainedNumaInRange', @Test_genConstrainedNumaInRange, []);
  RegisterTest('Pix', 'pixGenerateHalftoneMask', @Test_pixGenerateHalftoneMask, []);
  RegisterTest('Pix', 'pixCleanImage', @Test_pixCleanImage, []);
  RegisterTest('Pix', 'pixSplitComponentWithProfile', @Test_pixSplitComponentWithProfile, []);
  RegisterTest('Pix', 'pixExtractTextlines', @Test_pixExtractTextlines, []);
  RegisterTest('Pix', 'pixExtractRawTextlines', @Test_pixExtractRawTextlines, []);
  RegisterTest('Pix', 'pixCountTextColumns', @Test_pixCountTextColumns, []);
  RegisterTest('Pix', 'pixDecideIfText', @Test_pixDecideIfText, []);
  RegisterTest('Pix', 'pixFindThreshFgExtent', @Test_pixFindThreshFgExtent, []);
  RegisterTest('Pix', 'pixDecideIfTable', @Test_pixDecideIfTable, []);
  RegisterTest('Pix', 'pixPrepare1bpp', @Test_pixPrepare1bpp, []);
  RegisterTest('Pix', 'pixEstimateBackground', @Test_pixEstimateBackground, []);
  RegisterTest('Pix', 'pixFindLargeRectangles', @Test_pixFindLargeRectangles, []);
  RegisterTest('Pix', 'pixFindRectangleInCC', @Test_pixFindRectangleInCC, []);
  RegisterTest('Pix', 'pixAutoPhotoinvert', @Test_pixAutoPhotoinvert, []);
  RegisterTest('Pix', 'addColorizedGrayToCmap', @Test_addColorizedGrayToCmap, []);
  RegisterTest('Pix', 'parseForProtos', @Test_parseForProtos, []);
  RegisterTest('Pix', 'partifyFiles', @Test_partifyFiles, []);
  RegisterTest('Pix', 'partifyPixac', @Test_partifyPixac, []);
  RegisterTest('Pix', 'compressFilesToPdf', @Test_compressFilesToPdf, []);
  RegisterTest('Pix', 'cropFilesToPdf', @Test_cropFilesToPdf, []);
  RegisterTest('Pix', 'cleanTo1bppFilesToPdf', @Test_cleanTo1bppFilesToPdf, []);
  RegisterTest('Pix', 'convertFilesToPdf', @Test_convertFilesToPdf, []);
  RegisterTest('Pix', 'saConvertFilesToPdf', @Test_saConvertFilesToPdf, []);
  RegisterTest('Pix', 'saConvertFilesToPdfData', @Test_saConvertFilesToPdfData, []);
  RegisterTest('Pix', 'selectDefaultPdfEncoding', @Test_selectDefaultPdfEncoding, []);
  RegisterTest('Pix', 'convertUnscaledFilesToPdf', @Test_convertUnscaledFilesToPdf, []);
  RegisterTest('Pix', 'saConvertUnscaledFilesToPdf', @Test_saConvertUnscaledFilesToPdf, []);
  RegisterTest('Pix', 'saConvertUnscaledFilesToPdfData', @Test_saConvertUnscaledFilesToPdfData, []);
  RegisterTest('Pix', 'convertUnscaledToPdfData', @Test_convertUnscaledToPdfData, []);
  RegisterTest('Pix', 'convertImageDataToPdf', @Test_convertImageDataToPdf, []);
  RegisterTest('Pix', 'convertImageDataToPdfData', @Test_convertImageDataToPdfData, []);
  RegisterTest('Pix', 'pixConvertToPdf', @Test_pixConvertToPdf, []);
  RegisterTest('Pix', 'convertSegmentedFilesToPdf', @Test_convertSegmentedFilesToPdf, []);
  RegisterTest('Pix', 'convertNumberedMasksToBoxaa', @Test_convertNumberedMasksToBoxaa, []);
  RegisterTest('Pix', 'pixConvertToPdfSegmented', @Test_pixConvertToPdfSegmented, []);
  RegisterTest('Pix', 'pixConvertToPdfDataSegmented', @Test_pixConvertToPdfDataSegmented, []);
  RegisterTest('Pix', 'concatenatePdf', @Test_concatenatePdf, []);
  RegisterTest('Pix', 'saConcatenatePdf', @Test_saConcatenatePdf, []);
  RegisterTest('Pix', 'ptraConcatenatePdf', @Test_ptraConcatenatePdf, []);
  RegisterTest('Pix', 'concatenatePdfToData', @Test_concatenatePdfToData, []);
  RegisterTest('Pix', 'saConcatenatePdfToData', @Test_saConcatenatePdfToData, []);
  RegisterTest('Pix', 'pixConvertToPdfData', @Test_pixConvertToPdfData, []);
  RegisterTest('Pix', 'ptraConcatenatePdfToData', @Test_ptraConcatenatePdfToData, []);
  RegisterTest('Pix', 'convertTiffMultipageToPdf', @Test_convertTiffMultipageToPdf, []);
  RegisterTest('Pix', 'l_generateFlateDataPdf', @Test_l_generateFlateDataPdf, []);
  RegisterTest('Pix', 'l_generateJpegData', @Test_l_generateJpegData, []);
  RegisterTest('Pix', 'l_generateJpegDataMem', @Test_l_generateJpegDataMem, []);
  RegisterTest('Pix', 'l_generateG4Data', @Test_l_generateG4Data, []);
  RegisterTest('Pix', 'pixGenerateCIData', @Test_pixGenerateCIData, []);
  RegisterTest('Pix', 'l_generateFlateData', @Test_l_generateFlateData, []);
  RegisterTest('Pix', 'cidConvertToPdfData', @Test_cidConvertToPdfData, []);
  RegisterTest('Pix', 'l_CIDataDestroy', @Test_l_CIDataDestroy, []);
  RegisterTest('Pix', 'getPdfPageCount', @Test_getPdfPageCount, []);
  RegisterTest('Pix', 'getPdfPageSizes', @Test_getPdfPageSizes, []);
  RegisterTest('Pix', 'getPdfMediaBoxSizes', @Test_getPdfMediaBoxSizes, []);
  RegisterTest('Pix', 'getPdfRendererResolution', @Test_getPdfRendererResolution, []);
  RegisterTest('Pix', 'setPixMemoryManager', @Test_setPixMemoryManager, []);
  RegisterTest('Pix', 'pixCreate', @Test_pixCreate, []);
  RegisterTest('Pix', 'pixCreateNoInit', @Test_pixCreateNoInit, []);
  RegisterTest('Pix', 'pixCreateTemplate', @Test_pixCreateTemplate, []);
  RegisterTest('Pix', 'pixCreateTemplateNoInit', @Test_pixCreateTemplateNoInit, []);
  RegisterTest('Pix', 'pixCreateWithCmap', @Test_pixCreateWithCmap, []);
  RegisterTest('Pix', 'pixCreateHeader', @Test_pixCreateHeader, []);
  RegisterTest('Pix', 'pixClone', @Test_pixClone, []);
  RegisterTest('Pix', 'pixDestroy', @Test_pixDestroy, []);
  RegisterTest('Pix', 'pixCopy', @Test_pixCopy, []);
  RegisterTest('Pix', 'pixSwapAndDestroy', @Test_pixSwapAndDestroy, []);
  RegisterTest('Pix', 'pixGetWidth', @Test_pixGetWidth, []);
  RegisterTest('Pix', 'pixSetWidth', @Test_pixSetWidth, []);
  RegisterTest('Pix', 'pixGetHeight', @Test_pixGetHeight, []);
  RegisterTest('Pix', 'pixSetHeight', @Test_pixSetHeight, []);
  RegisterTest('Pix', 'pixGetDepth', @Test_pixGetDepth, []);
  RegisterTest('Pix', 'pixSetDepth', @Test_pixSetDepth, []);
  RegisterTest('Pix', 'pixGetSpp', @Test_pixGetSpp, []);
  RegisterTest('Pix', 'pixSetSpp', @Test_pixSetSpp, []);
  RegisterTest('Pix', 'pixGetWpl', @Test_pixGetWpl, []);
  RegisterTest('Pix', 'pixSetWpl', @Test_pixSetWpl, []);
  RegisterTest('Pix', 'pixGetXRes', @Test_pixGetXRes, []);
  RegisterTest('Pix', 'pixSetXRes', @Test_pixSetXRes, []);
  RegisterTest('Pix', 'pixGetYRes', @Test_pixGetYRes, []);
  RegisterTest('Pix', 'pixSetYRes', @Test_pixSetYRes, []);
  RegisterTest('Pix', 'pixGetResolution', @Test_pixGetResolution, []);
  RegisterTest('Pix', 'pixSetResolution', @Test_pixSetResolution, []);
  RegisterTest('Pix', 'pixGetInputFormat', @Test_pixGetInputFormat, []);
  RegisterTest('Pix', 'pixSetInputFormat', @Test_pixSetInputFormat, []);
  RegisterTest('Pix', 'pixSetSpecial', @Test_pixSetSpecial, []);
  RegisterTest('Pix', 'pixGetText', @Test_pixGetText, []);
  RegisterTest('Pix', 'pixSetText', @Test_pixSetText, []);
  RegisterTest('Pix', 'pixGetTextCompNew', @Test_pixGetTextCompNew, []);
  RegisterTest('Pix', 'pixSetTextCompNew', @Test_pixSetTextCompNew, []);
  RegisterTest('Pix', 'pixGetColormap', @Test_pixGetColormap, []);
  RegisterTest('Pix', 'pixSetColormap', @Test_pixSetColormap, []);
  RegisterTest('Pix', 'pixDestroyColormap', @Test_pixDestroyColormap, []);
  RegisterTest('Pix', 'pixGetData', @Test_pixGetData, []);
  RegisterTest('Pix', 'pixFreeAndSetData', @Test_pixFreeAndSetData, []);
  RegisterTest('Pix', 'pixSetData', @Test_pixSetData, []);
  RegisterTest('Pix', 'pixFreeData', @Test_pixFreeData, []);
  RegisterTest('Pix', 'pixExtractData', @Test_pixExtractData, []);
  RegisterTest('Pix', 'pixGetLinePtrs', @Test_pixGetLinePtrs, []);
  RegisterTest('Pix', 'pixSizesEqual', @Test_pixSizesEqual, []);
  RegisterTest('Pix', 'pixMaxAspectRatio', @Test_pixMaxAspectRatio, []);
  RegisterTest('Pix', 'pixPrintStreamInfo', @Test_pixPrintStreamInfo, []);
  RegisterTest('Pix', 'pixGetPixel', @Test_pixGetPixel, []);
  RegisterTest('Pix', 'pixSetPixel', @Test_pixSetPixel, []);
  RegisterTest('Pix', 'pixSetCmapPixel', @Test_pixSetCmapPixel, []);
  RegisterTest('Pix', 'pixGetRandomPixel', @Test_pixGetRandomPixel, []);
  RegisterTest('Pix', 'pixClearPixel', @Test_pixClearPixel, []);
  RegisterTest('Pix', 'pixFlipPixel', @Test_pixFlipPixel, []);
  RegisterTest('Pix', 'setPixelLow', @Test_setPixelLow, []);
  RegisterTest('Pix', 'pixGetBlackOrWhiteVal', @Test_pixGetBlackOrWhiteVal, []);
  RegisterTest('Pix', 'pixClearAll', @Test_pixClearAll, []);
  RegisterTest('Pix', 'pixSetAll', @Test_pixSetAll, []);
  RegisterTest('Pix', 'pixSetBlackOrWhite', @Test_pixSetBlackOrWhite, []);
  RegisterTest('Pix', 'pixSetComponentArbitrary', @Test_pixSetComponentArbitrary, []);
  RegisterTest('Pix', 'pixClearInRect', @Test_pixClearInRect, []);
  RegisterTest('Pix', 'pixSetInRect', @Test_pixSetInRect, []);
  RegisterTest('Pix', 'pixSetInRectArbitrary', @Test_pixSetInRectArbitrary, []);
  RegisterTest('Pix', 'pixSetPadBits', @Test_pixSetPadBits, []);
  RegisterTest('Pix', 'pixSetPadBitsBand', @Test_pixSetPadBitsBand, []);
  RegisterTest('Pix', 'pixSetOrClearBorder', @Test_pixSetOrClearBorder, []);
  RegisterTest('Pix', 'pixSetBorderVal', @Test_pixSetBorderVal, []);
  RegisterTest('Pix', 'pixSetBorderRingVal', @Test_pixSetBorderRingVal, []);
  RegisterTest('Pix', 'pixSetMirroredBorder', @Test_pixSetMirroredBorder, []);
  RegisterTest('Pix', 'pixAddBorder', @Test_pixAddBorder, []);
  RegisterTest('Pix', 'pixAddBlackOrWhiteBorder', @Test_pixAddBlackOrWhiteBorder, []);
  RegisterTest('Pix', 'pixAddBorderGeneral', @Test_pixAddBorderGeneral, []);
  RegisterTest('Pix', 'pixAddMultipleBlackWhiteBorders', @Test_pixAddMultipleBlackWhiteBorders, []);
  RegisterTest('Pix', 'pixRemoveBorder', @Test_pixRemoveBorder, []);
  RegisterTest('Pix', 'pixRemoveBorderGeneral', @Test_pixRemoveBorderGeneral, []);
  RegisterTest('Pix', 'pixRemoveBorderToSize', @Test_pixRemoveBorderToSize, []);
  RegisterTest('Pix', 'pixAddMirroredBorder', @Test_pixAddMirroredBorder, []);
  RegisterTest('Pix', 'pixAddRepeatedBorder', @Test_pixAddRepeatedBorder, []);
  RegisterTest('Pix', 'pixAddMixedBorder', @Test_pixAddMixedBorder, []);
  RegisterTest('Pix', 'pixAddContinuedBorder', @Test_pixAddContinuedBorder, []);
  RegisterTest('Pix', 'pixShiftAndTransferAlpha', @Test_pixShiftAndTransferAlpha, []);
  RegisterTest('Pix', 'pixCreateRGBImage', @Test_pixCreateRGBImage, []);
  RegisterTest('Pix', 'setLineDataVal', @Test_setLineDataVal, []);
  RegisterTest('Pix', 'lineEndianByteSwap', @Test_lineEndianByteSwap, []);
  RegisterTest('Pix', 'pixGetRasterData', @Test_pixGetRasterData, []);
  RegisterTest('Pix', 'pixInferResolution', @Test_pixInferResolution, []);
  RegisterTest('Pix', 'pixAlphaIsOpaque', @Test_pixAlphaIsOpaque, []);
  RegisterTest('Pix', 'pixSetupByteProcessing', @Test_pixSetupByteProcessing, []);
  RegisterTest('Pix', 'pixCleanupByteProcessing', @Test_pixCleanupByteProcessing, []);
  RegisterTest('Pix', 'l_setAlphaMaskBorder', @Test_l_setAlphaMaskBorder, []);
  RegisterTest('Pix', 'pixMakeMaskFromVal', @Test_pixMakeMaskFromVal, []);
  RegisterTest('Pix', 'pixMakeMaskFromLUT', @Test_pixMakeMaskFromLUT, []);
  RegisterTest('Pix', 'pixMakeArbMaskFromRGB', @Test_pixMakeArbMaskFromRGB, []);
  RegisterTest('Pix', 'pixSetUnderTransparency', @Test_pixSetUnderTransparency, []);
  RegisterTest('Pix', 'pixMakeAlphaFromMask', @Test_pixMakeAlphaFromMask, []);
  RegisterTest('Pix', 'pixGetColorNearMaskBoundary', @Test_pixGetColorNearMaskBoundary, []);
  RegisterTest('Pix', 'pixGetMomentByColumn', @Test_pixGetMomentByColumn, []);
  RegisterTest('Pix', 'makePixelSumTab8', @Test_makePixelSumTab8, []);
  RegisterTest('Pix', 'makePixelCentroidTab8', @Test_makePixelCentroidTab8, []);
  RegisterTest('Pix', 'pixVarianceByRow', @Test_pixVarianceByRow, []);
  RegisterTest('Pix', 'pixVarianceByColumn', @Test_pixVarianceByColumn, []);
  RegisterTest('Pix', 'pixCountArbInRect', @Test_pixCountArbInRect, []);
  RegisterTest('Pix', 'pixMirroredTiling', @Test_pixMirroredTiling, []);
  RegisterTest('Pix', 'pixFindRepCloseTile', @Test_pixFindRepCloseTile, []);
  RegisterTest('Pix', 'pixCountRGBColorsByHash', @Test_pixCountRGBColorsByHash, []);
  RegisterTest('Pix', 'pixCountRGBColors', @Test_pixCountRGBColors, []);
  RegisterTest('Pix', 'pixGetColorAmapHistogram', @Test_pixGetColorAmapHistogram, []);
  RegisterTest('Pix', 'amapGetCountForColor', @Test_amapGetCountForColor, []);
  RegisterTest('Pix', 'pixGetAverageMaskedRGB', @Test_pixGetAverageMaskedRGB, []);
  RegisterTest('Pix', 'pixGetAverageMasked', @Test_pixGetAverageMasked, []);
  RegisterTest('Pix', 'pixGetAverageTiledRGB', @Test_pixGetAverageTiledRGB, []);
  RegisterTest('Pix', 'pixGetAverageTiled', @Test_pixGetAverageTiled, []);
  RegisterTest('Pix', 'pixGetRangeValues', @Test_pixGetRangeValues, []);
  RegisterTest('Pix', 'pixGetMaxValueInRect', @Test_pixGetMaxValueInRect, []);
  RegisterTest('Pix', 'pixGetMaxColorIndex', @Test_pixGetMaxColorIndex, []);
  RegisterTest('Pix', 'pixGetBinnedComponentRange', @Test_pixGetBinnedComponentRange, []);
  RegisterTest('Pix', 'pixGetRankColorArray', @Test_pixGetRankColorArray, []);
  RegisterTest('Pix', 'pixGetBinnedColor', @Test_pixGetBinnedColor, []);
  RegisterTest('Pix', 'pixRankBinByStrip', @Test_pixRankBinByStrip, []);
  RegisterTest('Pix', 'pixGetRowStats', @Test_pixGetRowStats, []);
  RegisterTest('Pix', 'pixGetColumnStats', @Test_pixGetColumnStats, []);
  RegisterTest('Pix', 'pixSetPixelColumn', @Test_pixSetPixelColumn, []);
  RegisterTest('Pix', 'pixSplitDistributionFgBg', @Test_pixSplitDistributionFgBg, []);
  RegisterTest('Pix', 'pixFindAreaPerimRatio', @Test_pixFindAreaPerimRatio, []);
  RegisterTest('Pix', 'pixFindPerimToAreaRatio', @Test_pixFindPerimToAreaRatio, []);
  RegisterTest('Pix', 'pixFindPerimSizeRatio', @Test_pixFindPerimSizeRatio, []);
  RegisterTest('Pix', 'pixFindAreaFraction', @Test_pixFindAreaFraction, []);
  RegisterTest('Pix', 'pixFindAreaFractionMasked', @Test_pixFindAreaFractionMasked, []);
  RegisterTest('Pix', 'pixFindOverlapFraction', @Test_pixFindOverlapFraction, []);
  RegisterTest('Pix', 'pixFindRectangleComps', @Test_pixFindRectangleComps, []);
  RegisterTest('Pix', 'pixConformsToRectangle', @Test_pixConformsToRectangle, []);
  RegisterTest('Pix', 'pixExtractRectangularRegions', @Test_pixExtractRectangularRegions, []);
  RegisterTest('Pix', 'pixResizeToMatch', @Test_pixResizeToMatch, []);
  RegisterTest('Pix', 'pixSelectComponentBySize', @Test_pixSelectComponentBySize, []);
  RegisterTest('Pix', 'pixFilterComponentBySize', @Test_pixFilterComponentBySize, []);
  RegisterTest('Pix', 'pixMakeSymmetricMask', @Test_pixMakeSymmetricMask, []);
  RegisterTest('Pix', 'pixMakeFrameMask', @Test_pixMakeFrameMask, []);
  RegisterTest('Pix', 'pixMakeCoveringOfRectangles', @Test_pixMakeCoveringOfRectangles, []);
  RegisterTest('Pix', 'pixFractionFgInMask', @Test_pixFractionFgInMask, []);
  RegisterTest('Pix', 'pixExtractOnLine', @Test_pixExtractOnLine, []);
  RegisterTest('Pix', 'pixAverageOnLine', @Test_pixAverageOnLine, []);
  RegisterTest('Pix', 'pixAverageIntensityProfile', @Test_pixAverageIntensityProfile, []);
  RegisterTest('Pix', 'pixReversalProfile', @Test_pixReversalProfile, []);
  RegisterTest('Pix', 'pixRankRowTransform', @Test_pixRankRowTransform, []);
  RegisterTest('Pix', 'pixRankColumnTransform', @Test_pixRankColumnTransform, []);
  RegisterTest('Pix', 'pixaccCreate', @Test_pixaccCreate, []);
  RegisterTest('Pix', 'pixaccCreateFromPix', @Test_pixaccCreateFromPix, []);
  RegisterTest('Pix', 'pixaccDestroy', @Test_pixaccDestroy, []);
  RegisterTest('Pix', 'pixaccFinal', @Test_pixaccFinal, []);
  RegisterTest('Pix', 'pixaccGetPix', @Test_pixaccGetPix, []);
  RegisterTest('Pix', 'pixaccGetOffset', @Test_pixaccGetOffset, []);
  RegisterTest('Pix', 'pixaccAdd', @Test_pixaccAdd, []);
  RegisterTest('Pix', 'pixaccSubtract', @Test_pixaccSubtract, []);
  RegisterTest('Pix', 'pixaccMultConst', @Test_pixaccMultConst, []);
  RegisterTest('Pix', 'pixaccMultConstAccumulate', @Test_pixaccMultConstAccumulate, []);
  RegisterTest('Pix', 'pixSelectBySize', @Test_pixSelectBySize, []);
  RegisterTest('Pix', 'pixSelectByPerimToAreaRatio', @Test_pixSelectByPerimToAreaRatio, []);
  RegisterTest('Pix', 'pixSelectByPerimSizeRatio', @Test_pixSelectByPerimSizeRatio, []);
  RegisterTest('Pix', 'pixSelectByAreaFraction', @Test_pixSelectByAreaFraction, []);
  RegisterTest('Pix', 'pixSelectByArea', @Test_pixSelectByArea, []);
  RegisterTest('Pix', 'pixSelectByWidthHeightRatio', @Test_pixSelectByWidthHeightRatio, []);
  RegisterTest('Pix', 'pixRemoveWithIndicator', @Test_pixRemoveWithIndicator, []);
  RegisterTest('Pix', 'pixAddWithIndicator', @Test_pixAddWithIndicator, []);
  RegisterTest('Pix', 'pixGetTileCount', @Test_pixGetTileCount, []);
  RegisterTest('Pix', 'convertToNUpFiles', @Test_convertToNUpFiles, []);
  RegisterTest('Pix', 'convertToNUpPixa', @Test_convertToNUpPixa, []);
  RegisterTest('Pix', 'pmsCreate', @Test_pmsCreate, []);
  RegisterTest('Pix', 'pmsDestroy', @Test_pmsDestroy, []);
  RegisterTest('Pix', 'pmsCustomAlloc', @Test_pmsCustomAlloc, []);
  RegisterTest('Pix', 'pmsCustomDealloc', @Test_pmsCustomDealloc, []);
  RegisterTest('Pix', 'pmsGetAlloc', @Test_pmsGetAlloc, []);
  RegisterTest('Pix', 'pmsGetLevelForAlloc', @Test_pmsGetLevelForAlloc, []);
  RegisterTest('Pix', 'pmsGetLevelForDealloc', @Test_pmsGetLevelForDealloc, []);
  RegisterTest('Pix', 'pmsLogInfo', @Test_pmsLogInfo, []);
  RegisterTest('Pix', 'pixAddGray', @Test_pixAddGray, []);
  RegisterTest('Pix', 'pixSubtractGray', @Test_pixSubtractGray, []);
  RegisterTest('Pix', 'pixMultiplyGray', @Test_pixMultiplyGray, []);
  RegisterTest('Pix', 'pixInitAccumulate', @Test_pixInitAccumulate, []);
  RegisterTest('Pix', 'pixFinalAccumulate', @Test_pixFinalAccumulate, []);
  RegisterTest('Pix', 'pixFinalAccumulateThreshold', @Test_pixFinalAccumulateThreshold, []);
  RegisterTest('Pix', 'pixAccumulate', @Test_pixAccumulate, []);
  RegisterTest('Pix', 'pixAddRGB', @Test_pixAddRGB, []);
  RegisterTest('Pix', 'linearScaleRGBVal', @Test_linearScaleRGBVal, []);
  RegisterTest('Pix', 'logScaleRGBVal', @Test_logScaleRGBVal, []);
  RegisterTest('Pix', 'makeLogBase2Tab', @Test_makeLogBase2Tab, []);
  RegisterTest('Pix', 'getLogBase2', @Test_getLogBase2, []);
  RegisterTest('Pix', 'pixCreateFromPixcomp', @Test_pixCreateFromPixcomp, []);
  RegisterTest('Pix', 'pixAddGrayColormap8', @Test_pixAddGrayColormap8, []);
  RegisterTest('Pix', 'pixColorizeGray', @Test_pixColorizeGray, []);
  RegisterTest('Pix', 'pixConvertCmapTo1', @Test_pixConvertCmapTo1, []);
  RegisterTest('Pix', 'pixQuantizeIfFewColors', @Test_pixQuantizeIfFewColors, []);
  RegisterTest('Pix', 'pixUnpackBinary', @Test_pixUnpackBinary, []);
  RegisterTest('Pix', 'pixConvertTo8', @Test_pixConvertTo8, []);
  RegisterTest('Pix', 'pixConvertLossless', @Test_pixConvertLossless, []);
  RegisterTest('Pix', 'pixConvertForPSWrap', @Test_pixConvertForPSWrap, []);
  RegisterTest('Pix', 'pixConvertToSubpixelRGB', @Test_pixConvertToSubpixelRGB, []);
  RegisterTest('Pix', 'pixConvertColorToSubpixelRGB', @Test_pixConvertColorToSubpixelRGB, []);
  RegisterTest('Pix', 'l_setNeutralBoostVal', @Test_l_setNeutralBoostVal, []);
  RegisterTest('Pix', 'pixGetSortedNeighborValues', @Test_pixGetSortedNeighborValues, []);
  RegisterTest('Pix', 'pixLocToColorTransform', @Test_pixLocToColorTransform, []);
  RegisterTest('Pix', 'pixTilingCreate', @Test_pixTilingCreate, []);
  RegisterTest('Pix', 'pixTilingDestroy', @Test_pixTilingDestroy, []);
  RegisterTest('Pix', 'pixTilingGetCount', @Test_pixTilingGetCount, []);
  RegisterTest('Pix', 'pixTilingGetSize', @Test_pixTilingGetSize, []);
  RegisterTest('Pix', 'pixTilingGetTile', @Test_pixTilingGetTile, []);
  RegisterTest('Pix', 'pixTilingNoStripOnPaint', @Test_pixTilingNoStripOnPaint, []);
  RegisterTest('Pix', 'pixTilingPaintTile', @Test_pixTilingPaintTile, []);
  RegisterTest('Pix', 'fgetPngResolution', @Test_fgetPngResolution, []);
  RegisterTest('Pix', 'isPngInterlaced', @Test_isPngInterlaced, []);
  RegisterTest('Pix', 'fgetPngColormapInfo', @Test_fgetPngColormapInfo, []);
  RegisterTest('Pix', 'pixSetZlibCompression', @Test_pixSetZlibCompression, []);
  RegisterTest('Pix', 'convertFilesToPS', @Test_convertFilesToPS, []);
  RegisterTest('Pix', 'convertFilesFittedToPS', @Test_convertFilesFittedToPS, []);
  RegisterTest('Pix', 'writeImageCompressedToPSFile', @Test_writeImageCompressedToPSFile, []);
  RegisterTest('Pix', 'convertSegmentedPagesToPS', @Test_convertSegmentedPagesToPS, []);
  RegisterTest('Pix', 'convertToPSEmbed', @Test_convertToPSEmbed, []);
  RegisterTest('Pix', 'generateUncompressedPS', @Test_generateUncompressedPS, []);
  RegisterTest('Pix', 'convertJpegToPSEmbed', @Test_convertJpegToPSEmbed, []);
  RegisterTest('Pix', 'convertJpegToPS', @Test_convertJpegToPS, []);
  RegisterTest('Pix', 'convertG4ToPSEmbed', @Test_convertG4ToPSEmbed, []);
  RegisterTest('Pix', 'convertG4ToPS', @Test_convertG4ToPS, []);
  RegisterTest('Pix', 'convertTiffMultipageToPS', @Test_convertTiffMultipageToPS, []);
  RegisterTest('Pix', 'convertFlateToPSEmbed', @Test_convertFlateToPSEmbed, []);
  RegisterTest('Pix', 'convertFlateToPS', @Test_convertFlateToPS, []);
  RegisterTest('Pix', 'getResLetterPage', @Test_getResLetterPage, []);
  RegisterTest('Pix', 'getResA4Page', @Test_getResA4Page, []);
  RegisterTest('Pix', 'l_psWriteBoundingBox', @Test_l_psWriteBoundingBox, []);
  RegisterTest('Pix', 'pixFindCornerPixels', @Test_pixFindCornerPixels, []);
  RegisterTest('Pix', 'l_angleBetweenVectors', @Test_l_angleBetweenVectors, []);
  RegisterTest('Pix', 'applyLinearFit', @Test_applyLinearFit, []);
  RegisterTest('Pix', 'applyQuadraticFit', @Test_applyQuadraticFit, []);
  RegisterTest('Pix', 'applyCubicFit', @Test_applyCubicFit, []);
  RegisterTest('Pix', 'applyQuarticFit', @Test_applyQuarticFit, []);
  RegisterTest('Pix', 'pixPlotAlongPta', @Test_pixPlotAlongPta, []);
  RegisterTest('Pix', 'pixGenerateFromPta', @Test_pixGenerateFromPta, []);
  RegisterTest('Pix', 'l_asetCreateFromPta', @Test_l_asetCreateFromPta, []);
  RegisterTest('Pix', 'l_hmapCreateFromPta', @Test_l_hmapCreateFromPta, []);
  RegisterTest('Pix', 'ptraCreate', @Test_ptraCreate, []);
  RegisterTest('Pix', 'ptraDestroy', @Test_ptraDestroy, []);
  RegisterTest('Pix', 'ptraAdd', @Test_ptraAdd, []);
  RegisterTest('Pix', 'ptraInsert', @Test_ptraInsert, []);
  RegisterTest('Pix', 'ptraRemove', @Test_ptraRemove, []);
  RegisterTest('Pix', 'ptraRemoveLast', @Test_ptraRemoveLast, []);
  RegisterTest('Pix', 'ptraReplace', @Test_ptraReplace, []);
  RegisterTest('Pix', 'ptraSwap', @Test_ptraSwap, []);
  RegisterTest('Pix', 'ptraCompactArray', @Test_ptraCompactArray, []);
  RegisterTest('Pix', 'ptraReverse', @Test_ptraReverse, []);
  RegisterTest('Pix', 'ptraJoin', @Test_ptraJoin, []);
  RegisterTest('Pix', 'ptraGetMaxIndex', @Test_ptraGetMaxIndex, []);
  RegisterTest('Pix', 'ptraGetActualCount', @Test_ptraGetActualCount, []);
  RegisterTest('Pix', 'ptraGetPtrToItem', @Test_ptraGetPtrToItem, []);
  RegisterTest('Pix', 'ptraaCreate', @Test_ptraaCreate, []);
  RegisterTest('Pix', 'ptraaDestroy', @Test_ptraaDestroy, []);
  RegisterTest('Pix', 'ptraaGetSize', @Test_ptraaGetSize, []);
  RegisterTest('Pix', 'ptraaInsertPtra', @Test_ptraaInsertPtra, []);
  RegisterTest('Pix', 'ptraaGetPtra', @Test_ptraaGetPtra, []);
  RegisterTest('Pix', 'ptraaFlattenToPtra', @Test_ptraaFlattenToPtra, []);
  RegisterTest('Pix', 'pixQuadtreeMean', @Test_pixQuadtreeMean, []);
  RegisterTest('Pix', 'pixQuadtreeVariance', @Test_pixQuadtreeVariance, []);
  RegisterTest('Pix', 'pixMeanInRectangle', @Test_pixMeanInRectangle, []);
  RegisterTest('Pix', 'quadtreeGetParent', @Test_quadtreeGetParent, []);
  RegisterTest('Pix', 'quadtreeGetChildren', @Test_quadtreeGetChildren, []);
  RegisterTest('Pix', 'quadtreeMaxLevels', @Test_quadtreeMaxLevels, []);
  RegisterTest('Pix', 'lqueueCreate', @Test_lqueueCreate, []);
  RegisterTest('Pix', 'lqueueDestroy', @Test_lqueueDestroy, []);
  RegisterTest('Pix', 'lqueueAdd', @Test_lqueueAdd, []);
  RegisterTest('Pix', 'lqueueRemove', @Test_lqueueRemove, []);
  RegisterTest('Pix', 'lqueueGetCount', @Test_lqueueGetCount, []);
  RegisterTest('Pix', 'lqueuePrint', @Test_lqueuePrint, []);
  RegisterTest('Pix', 'l_rbtreeCreate', @Test_l_rbtreeCreate, []);
  RegisterTest('Pix', 'l_rbtreeLookup', @Test_l_rbtreeLookup, []);
  RegisterTest('Pix', 'l_rbtreeInsert', @Test_l_rbtreeInsert, []);
  RegisterTest('Pix', 'l_rbtreeDelete', @Test_l_rbtreeDelete, []);
  RegisterTest('Pix', 'l_rbtreeDestroy', @Test_l_rbtreeDestroy, []);
  RegisterTest('Pix', 'l_rbtreeGetFirst', @Test_l_rbtreeGetFirst, []);
  RegisterTest('Pix', 'l_rbtreeGetNext', @Test_l_rbtreeGetNext, []);
  RegisterTest('Pix', 'l_rbtreeGetLast', @Test_l_rbtreeGetLast, []);
  RegisterTest('Pix', 'l_rbtreeGetPrev', @Test_l_rbtreeGetPrev, []);
  RegisterTest('Pix', 'l_rbtreeGetCount', @Test_l_rbtreeGetCount, []);
  RegisterTest('Pix', 'l_rbtreePrint', @Test_l_rbtreePrint, []);
  RegisterTest('Pix', 'pixProcessBarcodes', @Test_pixProcessBarcodes, []);
  RegisterTest('Pix', 'pixExtractBarcodes', @Test_pixExtractBarcodes, []);
  RegisterTest('Pix', 'pixLocateBarcodes', @Test_pixLocateBarcodes, []);
  RegisterTest('Pix', 'pixExtractBarcodeWidths1', @Test_pixExtractBarcodeWidths1, []);
  RegisterTest('Pix', 'pixExtractBarcodeWidths2', @Test_pixExtractBarcodeWidths2, []);
  RegisterTest('Pix', 'pixExtractBarcodeCrossings', @Test_pixExtractBarcodeCrossings, []);
  RegisterTest('Pix', 'fileFormatIsTiff', @Test_fileFormatIsTiff, []);
  RegisterTest('Pix', 'writeImageFileInfo', @Test_writeImageFileInfo, []);
  RegisterTest('Pix', 'ioFormatTest', @Test_ioFormatTest, []);
  RegisterTest('Pix', 'l_convertCharstrToInt', @Test_l_convertCharstrToInt, []);
  RegisterTest('Pix', 'showExtractNumbers', @Test_showExtractNumbers, []);
  RegisterTest('Pix', 'regTestSetup', @Test_regTestSetup, []);
  RegisterTest('Pix', 'regTestCleanup', @Test_regTestCleanup, []);
  RegisterTest('Pix', 'regTestCompareValues', @Test_regTestCompareValues, []);
  RegisterTest('Pix', 'regTestCompareStrings', @Test_regTestCompareStrings, []);
  RegisterTest('Pix', 'regTestComparePix', @Test_regTestComparePix, []);
  RegisterTest('Pix', 'regTestCompareSimilarPix', @Test_regTestCompareSimilarPix, []);
  RegisterTest('Pix', 'regTestCheckFile', @Test_regTestCheckFile, []);
  RegisterTest('Pix', 'regTestCompareFiles', @Test_regTestCompareFiles, []);
  RegisterTest('Pix', 'regTestWritePixAndCheck', @Test_regTestWritePixAndCheck, []);
  RegisterTest('Pix', 'regTestWriteDataAndCheck', @Test_regTestWriteDataAndCheck, []);
  RegisterTest('Pix', 'regTestGenLocalFilename', @Test_regTestGenLocalFilename, []);
  RegisterTest('Pix', 'l_pdfRenderFile', @Test_l_pdfRenderFile, []);
  RegisterTest('Pix', 'l_pdfRenderFiles', @Test_l_pdfRenderFiles, []);
  RegisterTest('Pix', 'pixEmbedForRotation', @Test_pixEmbedForRotation, []);
  RegisterTest('Pix', 'pixFindHorizontalRuns', @Test_pixFindHorizontalRuns, []);
  RegisterTest('Pix', 'pixFindVerticalRuns', @Test_pixFindVerticalRuns, []);
  RegisterTest('Pix', 'pixFindMaxRuns', @Test_pixFindMaxRuns, []);
  RegisterTest('Pix', 'pixFindMaxHorizontalRunOnLine', @Test_pixFindMaxHorizontalRunOnLine, []);
  RegisterTest('Pix', 'pixFindMaxVerticalRunOnLine', @Test_pixFindMaxVerticalRunOnLine, []);
  RegisterTest('Pix', 'runlengthMembershipOnLine', @Test_runlengthMembershipOnLine, []);
  RegisterTest('Pix', 'makeMSBitLocTab', @Test_makeMSBitLocTab, []);
  RegisterTest('Pix', 'getNumberedPathnamesInDirectory', @Test_getNumberedPathnamesInDirectory, []);
  RegisterTest('Pix', 'getSortedPathnamesInDirectory', @Test_getSortedPathnamesInDirectory, []);
  RegisterTest('Pix', 'convertSortedToNumberedPathnames', @Test_convertSortedToNumberedPathnames, []);
  RegisterTest('Pix', 'getFilenamesInDirectory', @Test_getFilenamesInDirectory, []);
  RegisterTest('Pix', 'stringCompareLexical', @Test_stringCompareLexical, []);
  RegisterTest('Pix', 'l_asetCreateFromSarray', @Test_l_asetCreateFromSarray, []);
  RegisterTest('Pix', 'l_hmapCreateFromSarray', @Test_l_hmapCreateFromSarray, []);
  RegisterTest('Pix', 'pixScale', @Test_pixScale, []);
  RegisterTest('Pix', 'pixExpandReplicate', @Test_pixExpandReplicate, []);
  RegisterTest('Pix', 'pixFillClosedBorders', @Test_pixFillClosedBorders, []);
  RegisterTest('Pix', 'pixExtractBorderConnComps', @Test_pixExtractBorderConnComps, []);
  RegisterTest('Pix', 'pixRemoveBorderConnComps', @Test_pixRemoveBorderConnComps, []);
  RegisterTest('Pix', 'pixFillBgFromBorder', @Test_pixFillBgFromBorder, []);
  RegisterTest('Pix', 'pixFillHolesToBoundingRect', @Test_pixFillHolesToBoundingRect, []);
  RegisterTest('Pix', 'pixFindEqualValues', @Test_pixFindEqualValues, []);
  RegisterTest('Pix', 'pixSelectMinInConnComp', @Test_pixSelectMinInConnComp, []);
  RegisterTest('Pix', 'pixRemoveSeededComponents', @Test_pixRemoveSeededComponents, []);
  RegisterTest('Pix', 'create2dIntArray', @Test_create2dIntArray, []);
  RegisterTest('Pix', 'getCompositeParameters', @Test_getCompositeParameters, []);
  RegisterTest('Pix', 'sela4ccThin', @Test_sela4ccThin, []);
  RegisterTest('Pix', 'sela8ccThin', @Test_sela8ccThin, []);
  RegisterTest('Pix', 'sela4and8ccThin', @Test_sela4and8ccThin, []);
  RegisterTest('Pix', 'pixGenerateSelBoundary', @Test_pixGenerateSelBoundary, []);
  RegisterTest('Pix', 'pixGenerateSelWithRuns', @Test_pixGenerateSelWithRuns, []);
  RegisterTest('Pix', 'pixGenerateSelRandom', @Test_pixGenerateSelRandom, []);
  RegisterTest('Pix', 'pixGetRunCentersOnLine', @Test_pixGetRunCentersOnLine, []);
  RegisterTest('Pix', 'pixGetRunsOnLine', @Test_pixGetRunsOnLine, []);
  RegisterTest('Pix', 'pixSubsampleBoundaryPixels', @Test_pixSubsampleBoundaryPixels, []);
  RegisterTest('Pix', 'adjacentOnPixelInRaster', @Test_adjacentOnPixelInRaster, []);
  RegisterTest('Pix', 'pixFindDifferentialSquareSum', @Test_pixFindDifferentialSquareSum, []);
  RegisterTest('Pix', 'pixFindNormalizedSquareSum', @Test_pixFindNormalizedSquareSum, []);
  RegisterTest('Pix', 'pixSerializeToMemory', @Test_pixSerializeToMemory, []);
  RegisterTest('Pix', 'pixDeserializeFromMemory', @Test_pixDeserializeFromMemory, []);
  RegisterTest('Pix', 'lstackCreate', @Test_lstackCreate, []);
  RegisterTest('Pix', 'lstackDestroy', @Test_lstackDestroy, []);
  RegisterTest('Pix', 'lstackAdd', @Test_lstackAdd, []);
  RegisterTest('Pix', 'lstackRemove', @Test_lstackRemove, []);
  RegisterTest('Pix', 'lstackGetCount', @Test_lstackGetCount, []);
  RegisterTest('Pix', 'lstackPrint', @Test_lstackPrint, []);
  RegisterTest('Pix', 'strcodeCreate', @Test_strcodeCreate, []);
  RegisterTest('Pix', 'strcodeCreateFromFile', @Test_strcodeCreateFromFile, []);
  RegisterTest('Pix', 'strcodeGenerate', @Test_strcodeGenerate, []);
  RegisterTest('Pix', 'strcodeFinalize', @Test_strcodeFinalize, []);
  RegisterTest('Pix', 'l_getStructStrFromFile', @Test_l_getStructStrFromFile, []);
  RegisterTest('Pix', 'pixFindStrokeLength', @Test_pixFindStrokeLength, []);
  RegisterTest('Pix', 'pixFindStrokeWidth', @Test_pixFindStrokeWidth, []);
  RegisterTest('Pix', 'pixSetStrokeWidth', @Test_pixSetStrokeWidth, []);
  RegisterTest('Pix', 'sudokuReadFile', @Test_sudokuReadFile, []);
  RegisterTest('Pix', 'sudokuReadString', @Test_sudokuReadString, []);
  RegisterTest('Pix', 'sudokuCreate', @Test_sudokuCreate, []);
  RegisterTest('Pix', 'sudokuDestroy', @Test_sudokuDestroy, []);
  RegisterTest('Pix', 'sudokuSolve', @Test_sudokuSolve, []);
  RegisterTest('Pix', 'sudokuTestUniqueness', @Test_sudokuTestUniqueness, []);
  RegisterTest('Pix', 'sudokuGenerate', @Test_sudokuGenerate, []);
  RegisterTest('Pix', 'sudokuOutput', @Test_sudokuOutput, []);
  RegisterTest('Pix', 'splitStringToParagraphs', @Test_splitStringToParagraphs, []);
  RegisterTest('Pix', 'writeMultipageTiff', @Test_writeMultipageTiff, []);
  RegisterTest('Pix', 'writeMultipageTiffSA', @Test_writeMultipageTiffSA, []);
  RegisterTest('Pix', 'fprintTiffInfo', @Test_fprintTiffInfo, []);
  RegisterTest('Pix', 'tiffGetCount', @Test_tiffGetCount, []);
  RegisterTest('Pix', 'getTiffResolution', @Test_getTiffResolution, []);
  RegisterTest('Pix', 'findTiffCompression', @Test_findTiffCompression, []);
  RegisterTest('Pix', 'extractG4DataFromFile', @Test_extractG4DataFromFile, []);
  RegisterTest('Pix', 'setMsgSeverity', @Test_setMsgSeverity, []);
  RegisterTest('Pix', 'returnErrorInt', @Test_returnErrorInt, []);
  RegisterTest('Pix', 'returnErrorFloat', @Test_returnErrorFloat, []);
  RegisterTest('Pix', 'returnErrorPtr', @Test_returnErrorPtr, []);
  RegisterTest('Pix', 'returnErrorInt1', @Test_returnErrorInt1, []);
  RegisterTest('Pix', 'returnErrorFloat1', @Test_returnErrorFloat1, []);
  RegisterTest('Pix', 'returnErrorPtr1', @Test_returnErrorPtr1, []);
  RegisterTest('Pix', 'leptSetStderrHandler', @Test_leptSetStderrHandler, []);
  RegisterTest('Pix', 'lept_stderr', @Test_lept_stderr, []);
  RegisterTest('Pix', 'filesAreIdentical', @Test_filesAreIdentical, []);
  RegisterTest('Pix', 'convertOnLittleEnd16', @Test_convertOnLittleEnd16, []);
  RegisterTest('Pix', 'convertOnBigEnd16', @Test_convertOnBigEnd16, []);
  RegisterTest('Pix', 'convertOnLittleEnd32', @Test_convertOnLittleEnd32, []);
  RegisterTest('Pix', 'convertOnBigEnd32', @Test_convertOnBigEnd32, []);
  RegisterTest('Pix', 'fileCorruptByDeletion', @Test_fileCorruptByDeletion, []);
  RegisterTest('Pix', 'fileCorruptByMutation', @Test_fileCorruptByMutation, []);
  RegisterTest('Pix', 'fileReplaceBytes', @Test_fileReplaceBytes, []);
  RegisterTest('Pix', 'genRandomIntOnInterval', @Test_genRandomIntOnInterval, []);
  RegisterTest('Pix', 'lept_roundftoi', @Test_lept_roundftoi, []);
  RegisterTest('Pix', 'lept_floor', @Test_lept_floor, []);
  RegisterTest('Pix', 'lept_ceiling', @Test_lept_ceiling, []);
  RegisterTest('Pix', 'l_hashStringToUint64', @Test_l_hashStringToUint64, []);
  RegisterTest('Pix', 'l_hashStringToUint64Fast', @Test_l_hashStringToUint64Fast, []);
  RegisterTest('Pix', 'l_hashPtToUint64', @Test_l_hashPtToUint64, []);
  RegisterTest('Pix', 'l_hashFloat64ToUint64', @Test_l_hashFloat64ToUint64, []);
  RegisterTest('Pix', 'findNextLargerPrime', @Test_findNextLargerPrime, []);
  RegisterTest('Pix', 'lept_isPrime', @Test_lept_isPrime, []);
  RegisterTest('Pix', 'convertIntToGrayCode', @Test_convertIntToGrayCode, []);
  RegisterTest('Pix', 'convertGrayCodeToInt', @Test_convertGrayCodeToInt, []);
  RegisterTest('Pix', 'getLeptonicaVersion', @Test_getLeptonicaVersion, []);
  RegisterTest('Pix', 'startTimer', @Test_startTimer, []);
  RegisterTest('Pix', 'stopTimer', @Test_stopTimer, []);
  RegisterTest('Pix', 'startTimerNested', @Test_startTimerNested, []);
  RegisterTest('Pix', 'stopTimerNested', @Test_stopTimerNested, []);
  RegisterTest('Pix', 'l_getCurrentTime', @Test_l_getCurrentTime, []);
  RegisterTest('Pix', 'startWallTimer', @Test_startWallTimer, []);
  RegisterTest('Pix', 'stopWallTimer', @Test_stopWallTimer, []);
  RegisterTest('Pix', 'l_getFormattedDate', @Test_l_getFormattedDate, []);
  RegisterTest('Pix', 'stringNew', @Test_stringNew, []);
  RegisterTest('Pix', 'stringCopy', @Test_stringCopy, []);
  RegisterTest('Pix', 'stringCopySegment', @Test_stringCopySegment, []);
  RegisterTest('Pix', 'stringReplace', @Test_stringReplace, []);
  RegisterTest('Pix', 'stringLength', @Test_stringLength, []);
  RegisterTest('Pix', 'stringCat', @Test_stringCat, []);
  RegisterTest('Pix', 'stringConcatNew', @Test_stringConcatNew, []);
  RegisterTest('Pix', 'stringJoin', @Test_stringJoin, []);
  RegisterTest('Pix', 'stringJoinIP', @Test_stringJoinIP, []);
  RegisterTest('Pix', 'stringReverse', @Test_stringReverse, []);
  RegisterTest('Pix', 'strtokSafe', @Test_strtokSafe, []);
  RegisterTest('Pix', 'stringSplitOnToken', @Test_stringSplitOnToken, []);
  RegisterTest('Pix', 'stringCheckForChars', @Test_stringCheckForChars, []);
  RegisterTest('Pix', 'stringRemoveChars', @Test_stringRemoveChars, []);
  RegisterTest('Pix', 'stringReplaceEachSubstr', @Test_stringReplaceEachSubstr, []);
  RegisterTest('Pix', 'stringReplaceSubstr', @Test_stringReplaceSubstr, []);
  RegisterTest('Pix', 'stringFindEachSubstr', @Test_stringFindEachSubstr, []);
  RegisterTest('Pix', 'stringFindSubstr', @Test_stringFindSubstr, []);
  RegisterTest('Pix', 'arrayReplaceEachSequence', @Test_arrayReplaceEachSequence, []);
  RegisterTest('Pix', 'arrayFindEachSequence', @Test_arrayFindEachSequence, []);
  RegisterTest('Pix', 'arrayFindSequence', @Test_arrayFindSequence, []);
  RegisterTest('Pix', 'reallocNew', @Test_reallocNew, []);
  RegisterTest('Pix', 'l_binaryRead', @Test_l_binaryRead, []);
  RegisterTest('Pix', 'l_binaryReadStream', @Test_l_binaryReadStream, []);
  RegisterTest('Pix', 'l_binaryReadSelect', @Test_l_binaryReadSelect, []);
  RegisterTest('Pix', 'l_binaryReadSelectStream', @Test_l_binaryReadSelectStream, []);
  RegisterTest('Pix', 'l_binaryWrite', @Test_l_binaryWrite, []);
  RegisterTest('Pix', 'nbytesInFile', @Test_nbytesInFile, []);
  RegisterTest('Pix', 'fnbytesInFile', @Test_fnbytesInFile, []);
  RegisterTest('Pix', 'l_binaryCopy', @Test_l_binaryCopy, []);
  RegisterTest('Pix', 'l_binaryCompare', @Test_l_binaryCompare, []);
  RegisterTest('Pix', 'fileCopy', @Test_fileCopy, []);
  RegisterTest('Pix', 'fileConcatenate', @Test_fileConcatenate, []);
  RegisterTest('Pix', 'fileAppendString', @Test_fileAppendString, []);
  RegisterTest('Pix', 'fileSplitLinesUniform', @Test_fileSplitLinesUniform, []);
  RegisterTest('Pix', 'fopenReadStream', @Test_fopenReadStream, []);
  RegisterTest('Pix', 'fopenWriteStream', @Test_fopenWriteStream, []);
  RegisterTest('Pix', 'fopenReadFromMemory', @Test_fopenReadFromMemory, []);
  RegisterTest('Pix', 'fopenWriteWinTempfile', @Test_fopenWriteWinTempfile, []);
  RegisterTest('Pix', 'lept_fopen', @Test_lept_fopen, []);
  RegisterTest('Pix', 'lept_fclose', @Test_lept_fclose, []);
  RegisterTest('Pix', 'lept_calloc', @Test_lept_calloc, []);
  RegisterTest('Pix', 'lept_free', @Test_lept_free, []);
  RegisterTest('Pix', 'lept_mkdir', @Test_lept_mkdir, []);
  RegisterTest('Pix', 'lept_rmdir', @Test_lept_rmdir, []);
  RegisterTest('Pix', 'lept_direxists', @Test_lept_direxists, []);
  RegisterTest('Pix', 'lept_rm_match', @Test_lept_rm_match, []);
  RegisterTest('Pix', 'lept_rm', @Test_lept_rm, []);
  RegisterTest('Pix', 'lept_rmfile', @Test_lept_rmfile, []);
  RegisterTest('Pix', 'lept_mv', @Test_lept_mv, []);
  RegisterTest('Pix', 'lept_cp', @Test_lept_cp, []);
  RegisterTest('Pix', 'callSystemDebug', @Test_callSystemDebug, []);
  RegisterTest('Pix', 'splitPathAtDirectory', @Test_splitPathAtDirectory, []);
  RegisterTest('Pix', 'splitPathAtExtension', @Test_splitPathAtExtension, []);
  RegisterTest('Pix', 'pathJoin', @Test_pathJoin, []);
  RegisterTest('Pix', 'appendSubdirs', @Test_appendSubdirs, []);
  RegisterTest('Pix', 'convertSepCharsInPath', @Test_convertSepCharsInPath, []);
  RegisterTest('Pix', 'genPathname', @Test_genPathname, []);
  RegisterTest('Pix', 'makeTempDirname', @Test_makeTempDirname, []);
  RegisterTest('Pix', 'modifyTrailingSlash', @Test_modifyTrailingSlash, []);
  RegisterTest('Pix', 'l_makeTempFilename', @Test_l_makeTempFilename, []);
  RegisterTest('Pix', 'extractNumberFromFilename', @Test_extractNumberFromFilename, []);
  RegisterTest('Pix', 'pixSimpleCaptcha', @Test_pixSimpleCaptcha, []);
  RegisterTest('Pix', 'pixRandomHarmonicWarp', @Test_pixRandomHarmonicWarp, []);
  RegisterTest('Pix', 'pixStretchHorizontal', @Test_pixStretchHorizontal, []);
  RegisterTest('Pix', 'pixStretchHorizontalSampled', @Test_pixStretchHorizontalSampled, []);
  RegisterTest('Pix', 'pixStretchHorizontalLI', @Test_pixStretchHorizontalLI, []);
  RegisterTest('Pix', 'pixQuadraticVShear', @Test_pixQuadraticVShear, []);
  RegisterTest('Pix', 'pixQuadraticVShearSampled', @Test_pixQuadraticVShearSampled, []);
  RegisterTest('Pix', 'pixQuadraticVShearLI', @Test_pixQuadraticVShearLI, []);
  RegisterTest('Pix', 'pixStereoFromPair', @Test_pixStereoFromPair, []);
  RegisterTest('Pix', 'setLeptDebugOK', @Test_setLeptDebugOK, []);
  RegisterTest('Pix', 'pixChooseOutputFormat', @Test_pixChooseOutputFormat, []);
  RegisterTest('Pix', 'getImpliedFileFormat', @Test_getImpliedFileFormat, []);
  RegisterTest('Pix', 'getFormatFromExtension', @Test_getFormatFromExtension, []);
  RegisterTest('Pix', 'pixGetAutoFormat', @Test_pixGetAutoFormat, []);
  RegisterTest('Pix', 'getFormatExtension', @Test_getFormatExtension, []);
  RegisterTest('Pix', 'pixMakeColorSquare', @Test_pixMakeColorSquare, []);
  RegisterTest('Pix', 'zlibCompress', @Test_zlibCompress, []);
  RegisterTest('Pix', 'zlibUncompress', @Test_zlibUncompress, []);

  RegisterTest('Pix', 'Func_pixCreate', @Test_Func_pixCreate, []);
  RegisterTest('Pix', 'Func_pixCreateGray', @Test_Func_pixCreateGray, []);
  RegisterTest('Pix', 'Func_pixCreateBinary', @Test_Func_pixCreateBinary, []);
  RegisterTest('Pix', 'Func_pixCopy', @Test_Func_pixCopy, []);
  RegisterTest('Pix', 'Func_pixClone', @Test_Func_pixClone, []);
  RegisterTest('Pix', 'Func_pixSetGetPixel', @Test_Func_pixSetGetPixel, []);
  RegisterTest('Pix', 'Func_pixGetWpl', @Test_Func_pixGetWpl, []);
  RegisterTest('Pix', 'Func_pixGetData', @Test_Func_pixGetData, []);
  RegisterTest('Pix', 'Func_pixCreateTemplate', @Test_Func_pixCreateTemplate, []);
  RegisterTest('Pix', 'Func_pixSetResolution', @Test_Func_pixSetResolution, []);
  RegisterTest('Pix', 'Func_pixSetSpp', @Test_Func_pixSetSpp, []);
  RegisterTest('Pix', 'Func_pixConvertTo8', @Test_Func_pixConvertTo8, []);
  RegisterTest('Pix', 'Func_pixConvertTo32', @Test_Func_pixConvertTo32, []);
  RegisterTest('Pix', 'Func_pixInvert', @Test_Func_pixInvert, []);
  RegisterTest('Pix', 'Func_pixSetAll', @Test_Func_pixSetAll, []);
  RegisterTest('Pix', 'Func_pixClearAll', @Test_Func_pixClearAll, []);
  RegisterTest('Pix', 'Func_pixAddConstantGray', @Test_Func_pixAddConstantGray, []);
  RegisterTest('Pix', 'Func_pixCountPixels', @Test_Func_pixCountPixels, []);

end.
