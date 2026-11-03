{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestPixa;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_pixaGetFont;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaGetFont, 'pixaGetFont');
end;

procedure Test_pixaSaveFont;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaSaveFont, 'pixaSaveFont');
end;

procedure Test_pixaDisplayBoxaa;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaDisplayBoxaa, 'pixaDisplayBoxaa');
end;

procedure Test_pixaThinConnected;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaThinConnected, 'pixaThinConnected');
end;

procedure Test_pixaComparePhotoRegionsByHisto;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaComparePhotoRegionsByHisto, 'pixaComparePhotoRegionsByHisto');
end;

procedure Test_pixaMorphSequenceByComponent;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaMorphSequenceByComponent, 'pixaMorphSequenceByComponent');
end;

procedure Test_pixaMorphSequenceByRegion;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaMorphSequenceByRegion, 'pixaMorphSequenceByRegion');
end;

procedure Test_pixaExtendByMorph;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaExtendByMorph, 'pixaExtendByMorph');
end;

procedure Test_pixaExtendByScaling;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaExtendByScaling, 'pixaExtendByScaling');
end;

procedure Test_pixaCentroids;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaCentroids, 'pixaCentroids');
end;

procedure Test_pixaConvertToPdf;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaConvertToPdf, 'pixaConvertToPdf');
end;

procedure Test_pixaConvertToPdfData;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaConvertToPdfData, 'pixaConvertToPdfData');
end;

procedure Test_pixaCountPixels;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaCountPixels, 'pixaCountPixels');
end;

procedure Test_pixaGetAlignedStats;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaGetAlignedStats, 'pixaGetAlignedStats');
end;

procedure Test_pixaExtractColumnFromEachPix;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaExtractColumnFromEachPix, 'pixaExtractColumnFromEachPix');
end;

procedure Test_pixaFindDimensions;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaFindDimensions, 'pixaFindDimensions');
end;

procedure Test_pixaFindPerimToAreaRatio;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaFindPerimToAreaRatio, 'pixaFindPerimToAreaRatio');
end;

procedure Test_pixaFindPerimSizeRatio;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaFindPerimSizeRatio, 'pixaFindPerimSizeRatio');
end;

procedure Test_pixaFindAreaFraction;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaFindAreaFraction, 'pixaFindAreaFraction');
end;

procedure Test_pixaFindAreaFractionMasked;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaFindAreaFractionMasked, 'pixaFindAreaFractionMasked');
end;

procedure Test_pixaFindWidthHeightRatio;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaFindWidthHeightRatio, 'pixaFindWidthHeightRatio');
end;

procedure Test_pixaFindWidthHeightProduct;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaFindWidthHeightProduct, 'pixaFindWidthHeightProduct');
end;

procedure Test_pixaCreate;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaCreate, 'pixaCreate');
end;

procedure Test_pixaCreateFromPix;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaCreateFromPix, 'pixaCreateFromPix');
end;

procedure Test_pixaCreateFromBoxa;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaCreateFromBoxa, 'pixaCreateFromBoxa');
end;

procedure Test_pixaSplitPix;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaSplitPix, 'pixaSplitPix');
end;

procedure Test_pixaDestroy;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaDestroy, 'pixaDestroy');
end;

procedure Test_pixaCopy;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaCopy, 'pixaCopy');
end;

procedure Test_pixaAddPix;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaAddPix, 'pixaAddPix');
end;

procedure Test_pixaAddBox;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaAddBox, 'pixaAddBox');
end;

procedure Test_pixaExtendArrayToSize;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaExtendArrayToSize, 'pixaExtendArrayToSize');
end;

procedure Test_pixaGetCount;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaGetCount, 'pixaGetCount');
end;

procedure Test_pixaGetPix;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaGetPix, 'pixaGetPix');
end;

procedure Test_pixaGetPixDimensions;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaGetPixDimensions, 'pixaGetPixDimensions');
end;

procedure Test_pixaGetBoxa;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaGetBoxa, 'pixaGetBoxa');
end;

procedure Test_pixaGetBoxaCount;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaGetBoxaCount, 'pixaGetBoxaCount');
end;

procedure Test_pixaGetBox;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaGetBox, 'pixaGetBox');
end;

procedure Test_pixaGetBoxGeometry;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaGetBoxGeometry, 'pixaGetBoxGeometry');
end;

procedure Test_pixaSetBoxa;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaSetBoxa, 'pixaSetBoxa');
end;

procedure Test_pixaGetPixArray;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaGetPixArray, 'pixaGetPixArray');
end;

procedure Test_pixaVerifyDepth;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaVerifyDepth, 'pixaVerifyDepth');
end;

procedure Test_pixaVerifyDimensions;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaVerifyDimensions, 'pixaVerifyDimensions');
end;

procedure Test_pixaIsFull;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaIsFull, 'pixaIsFull');
end;

procedure Test_pixaCountText;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaCountText, 'pixaCountText');
end;

procedure Test_pixaSetText;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaSetText, 'pixaSetText');
end;

procedure Test_pixaGetLinePtrs;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaGetLinePtrs, 'pixaGetLinePtrs');
end;

procedure Test_pixaWriteStreamInfo;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaWriteStreamInfo, 'pixaWriteStreamInfo');
end;

procedure Test_pixaReplacePix;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaReplacePix, 'pixaReplacePix');
end;

procedure Test_pixaInsertPix;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaInsertPix, 'pixaInsertPix');
end;

procedure Test_pixaRemovePix;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaRemovePix, 'pixaRemovePix');
end;

procedure Test_pixaRemovePixAndSave;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaRemovePixAndSave, 'pixaRemovePixAndSave');
end;

procedure Test_pixaRemoveSelected;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaRemoveSelected, 'pixaRemoveSelected');
end;

procedure Test_pixaInitFull;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaInitFull, 'pixaInitFull');
end;

procedure Test_pixaClear;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaClear, 'pixaClear');
end;

procedure Test_pixaJoin;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaJoin, 'pixaJoin');
end;

procedure Test_pixaInterleave;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaInterleave, 'pixaInterleave');
end;

procedure Test_pixaaJoin;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaJoin, 'pixaaJoin');
end;

procedure Test_pixaaCreate;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaCreate, 'pixaaCreate');
end;

procedure Test_pixaaCreateFromPixa;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaCreateFromPixa, 'pixaaCreateFromPixa');
end;

procedure Test_pixaaDestroy;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaDestroy, 'pixaaDestroy');
end;

procedure Test_pixaaAddPixa;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaAddPixa, 'pixaaAddPixa');
end;

procedure Test_pixaaAddPix;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaAddPix, 'pixaaAddPix');
end;

procedure Test_pixaaAddBox;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaAddBox, 'pixaaAddBox');
end;

procedure Test_pixaaGetCount;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaGetCount, 'pixaaGetCount');
end;

procedure Test_pixaaGetPixa;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaGetPixa, 'pixaaGetPixa');
end;

procedure Test_pixaaGetBoxa;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaGetBoxa, 'pixaaGetBoxa');
end;

procedure Test_pixaaGetPix;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaGetPix, 'pixaaGetPix');
end;

procedure Test_pixaaVerifyDepth;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaVerifyDepth, 'pixaaVerifyDepth');
end;

procedure Test_pixaaVerifyDimensions;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaVerifyDimensions, 'pixaaVerifyDimensions');
end;

procedure Test_pixaaIsFull;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaIsFull, 'pixaaIsFull');
end;

procedure Test_pixaaInitFull;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaInitFull, 'pixaaInitFull');
end;

procedure Test_pixaaReplacePixa;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaReplacePixa, 'pixaaReplacePixa');
end;

procedure Test_pixaaClear;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaClear, 'pixaaClear');
end;

procedure Test_pixaaTruncate;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaTruncate, 'pixaaTruncate');
end;

procedure Test_pixaRead;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaRead, 'pixaRead');
end;

procedure Test_pixaReadStream;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaReadStream, 'pixaReadStream');
end;

procedure Test_pixaReadMem;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaReadMem, 'pixaReadMem');
end;

procedure Test_pixaWriteDebug;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaWriteDebug, 'pixaWriteDebug');
end;

procedure Test_pixaWrite;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaWrite, 'pixaWrite');
end;

procedure Test_pixaWriteStream;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaWriteStream, 'pixaWriteStream');
end;

procedure Test_pixaWriteMem;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaWriteMem, 'pixaWriteMem');
end;

procedure Test_pixaReadBoth;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaReadBoth, 'pixaReadBoth');
end;

procedure Test_pixaaReadFromFiles;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaReadFromFiles, 'pixaaReadFromFiles');
end;

procedure Test_pixaaRead;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaRead, 'pixaaRead');
end;

procedure Test_pixaaReadStream;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaReadStream, 'pixaaReadStream');
end;

procedure Test_pixaaReadMem;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaReadMem, 'pixaaReadMem');
end;

procedure Test_pixaaWrite;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaWrite, 'pixaaWrite');
end;

procedure Test_pixaaWriteStream;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaWriteStream, 'pixaaWriteStream');
end;

procedure Test_pixaaWriteMem;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaWriteMem, 'pixaaWriteMem');
end;

procedure Test_pixaSelectBySize;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaSelectBySize, 'pixaSelectBySize');
end;

procedure Test_pixaMakeSizeIndicator;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaMakeSizeIndicator, 'pixaMakeSizeIndicator');
end;

procedure Test_pixaSelectByPerimToAreaRatio;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaSelectByPerimToAreaRatio, 'pixaSelectByPerimToAreaRatio');
end;

procedure Test_pixaSelectByPerimSizeRatio;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaSelectByPerimSizeRatio, 'pixaSelectByPerimSizeRatio');
end;

procedure Test_pixaSelectByAreaFraction;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaSelectByAreaFraction, 'pixaSelectByAreaFraction');
end;

procedure Test_pixaSelectByArea;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaSelectByArea, 'pixaSelectByArea');
end;

procedure Test_pixaSelectByWidthHeightRatio;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaSelectByWidthHeightRatio, 'pixaSelectByWidthHeightRatio');
end;

procedure Test_pixaSelectByNumConnComp;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaSelectByNumConnComp, 'pixaSelectByNumConnComp');
end;

procedure Test_pixaSelectWithIndicator;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaSelectWithIndicator, 'pixaSelectWithIndicator');
end;

procedure Test_pixaSelectWithString;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaSelectWithString, 'pixaSelectWithString');
end;

procedure Test_pixaRenderComponent;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaRenderComponent, 'pixaRenderComponent');
end;

procedure Test_pixaSort;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaSort, 'pixaSort');
end;

procedure Test_pixaBinSort;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaBinSort, 'pixaBinSort');
end;

procedure Test_pixaSortByIndex;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaSortByIndex, 'pixaSortByIndex');
end;

procedure Test_pixaSort2dByIndex;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaSort2dByIndex, 'pixaSort2dByIndex');
end;

procedure Test_pixaSelectRange;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaSelectRange, 'pixaSelectRange');
end;

procedure Test_pixaaSelectRange;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaSelectRange, 'pixaaSelectRange');
end;

procedure Test_pixaaScaleToSize;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaScaleToSize, 'pixaaScaleToSize');
end;

procedure Test_pixaaScaleToSizeVar;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaScaleToSizeVar, 'pixaaScaleToSizeVar');
end;

procedure Test_pixaScaleToSize;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaScaleToSize, 'pixaScaleToSize');
end;

procedure Test_pixaScaleToSizeRel;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaScaleToSizeRel, 'pixaScaleToSizeRel');
end;

procedure Test_pixaScale;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaScale, 'pixaScale');
end;

procedure Test_pixaScaleBySampling;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaScaleBySampling, 'pixaScaleBySampling');
end;

procedure Test_pixaRotate;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaRotate, 'pixaRotate');
end;

procedure Test_pixaRotateOrth;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaRotateOrth, 'pixaRotateOrth');
end;

procedure Test_pixaTranslate;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaTranslate, 'pixaTranslate');
end;

procedure Test_pixaAddBorderGeneral;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaAddBorderGeneral, 'pixaAddBorderGeneral');
end;

procedure Test_pixaaFlattenToPixa;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaFlattenToPixa, 'pixaaFlattenToPixa');
end;

procedure Test_pixaaSizeRange;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaSizeRange, 'pixaaSizeRange');
end;

procedure Test_pixaSizeRange;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaSizeRange, 'pixaSizeRange');
end;

procedure Test_pixaClipToPix;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaClipToPix, 'pixaClipToPix');
end;

procedure Test_pixaClipToForeground;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaClipToForeground, 'pixaClipToForeground');
end;

procedure Test_pixaGetRenderingDepth;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaGetRenderingDepth, 'pixaGetRenderingDepth');
end;

procedure Test_pixaHasColor;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaHasColor, 'pixaHasColor');
end;

procedure Test_pixaAnyColormaps;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaAnyColormaps, 'pixaAnyColormaps');
end;

procedure Test_pixaGetDepthInfo;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaGetDepthInfo, 'pixaGetDepthInfo');
end;

procedure Test_pixaConvertToSameDepth;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaConvertToSameDepth, 'pixaConvertToSameDepth');
end;

procedure Test_pixaConvertToGivenDepth;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaConvertToGivenDepth, 'pixaConvertToGivenDepth');
end;

procedure Test_pixaEqual;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaEqual, 'pixaEqual');
end;

procedure Test_pixaSetFullSizeBoxa;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaSetFullSizeBoxa, 'pixaSetFullSizeBoxa');
end;

procedure Test_pixaDisplay;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaDisplay, 'pixaDisplay');
end;

procedure Test_pixaDisplayRandomCmap;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaDisplayRandomCmap, 'pixaDisplayRandomCmap');
end;

procedure Test_pixaDisplayLinearly;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaDisplayLinearly, 'pixaDisplayLinearly');
end;

procedure Test_pixaDisplayOnLattice;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaDisplayOnLattice, 'pixaDisplayOnLattice');
end;

procedure Test_pixaDisplayUnsplit;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaDisplayUnsplit, 'pixaDisplayUnsplit');
end;

procedure Test_pixaDisplayTiled;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaDisplayTiled, 'pixaDisplayTiled');
end;

procedure Test_pixaDisplayTiledInRows;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaDisplayTiledInRows, 'pixaDisplayTiledInRows');
end;

procedure Test_pixaDisplayTiledInColumns;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaDisplayTiledInColumns, 'pixaDisplayTiledInColumns');
end;

procedure Test_pixaDisplayTiledAndScaled;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaDisplayTiledAndScaled, 'pixaDisplayTiledAndScaled');
end;

procedure Test_pixaDisplayTiledWithText;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaDisplayTiledWithText, 'pixaDisplayTiledWithText');
end;

procedure Test_pixaDisplayTiledByIndex;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaDisplayTiledByIndex, 'pixaDisplayTiledByIndex');
end;

procedure Test_pixaDisplayPairTiledInColumns;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaDisplayPairTiledInColumns, 'pixaDisplayPairTiledInColumns');
end;

procedure Test_pixaaDisplay;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaDisplay, 'pixaaDisplay');
end;

procedure Test_pixaaDisplayByPixa;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaDisplayByPixa, 'pixaaDisplayByPixa');
end;

procedure Test_pixaaDisplayTiledAndScaled;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaaDisplayTiledAndScaled, 'pixaaDisplayTiledAndScaled');
end;

procedure Test_pixaConvertTo1;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaConvertTo1, 'pixaConvertTo1');
end;

procedure Test_pixaConvertTo8;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaConvertTo8, 'pixaConvertTo8');
end;

procedure Test_pixaConvertTo8Colormap;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaConvertTo8Colormap, 'pixaConvertTo8Colormap');
end;

procedure Test_pixaConvertTo32;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaConvertTo32, 'pixaConvertTo32');
end;

procedure Test_pixaConstrainedSelect;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaConstrainedSelect, 'pixaConstrainedSelect');
end;

procedure Test_pixaSelectToPdf;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaSelectToPdf, 'pixaSelectToPdf');
end;

procedure Test_pixaMakeFromTiledPixa;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaMakeFromTiledPixa, 'pixaMakeFromTiledPixa');
end;

procedure Test_pixaMakeFromTiledPix;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaMakeFromTiledPix, 'pixaMakeFromTiledPix');
end;

procedure Test_pixaDisplayMultiTiled;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaDisplayMultiTiled, 'pixaDisplayMultiTiled');
end;

procedure Test_pixaSplitIntoFiles;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaSplitIntoFiles, 'pixaSplitIntoFiles');
end;

procedure Test_pixaConvertToNUpPixa;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaConvertToNUpPixa, 'pixaConvertToNUpPixa');
end;

procedure Test_pixaCompareInPdf;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaCompareInPdf, 'pixaCompareInPdf');
end;

procedure Test_pixcompCreateFromPix;
begin
  AssertFuncLoaded(@Lept.Pixa.PixcompCreateFromPix, 'pixcompCreateFromPix');
end;

procedure Test_pixcompCreateFromString;
begin
  AssertFuncLoaded(@Lept.Pixa.PixcompCreateFromString, 'pixcompCreateFromString');
end;

procedure Test_pixcompCreateFromFile;
begin
  AssertFuncLoaded(@Lept.Pixa.PixcompCreateFromFile, 'pixcompCreateFromFile');
end;

procedure Test_pixcompDestroy;
begin
  AssertFuncLoaded(@Lept.Pixa.PixcompDestroy, 'pixcompDestroy');
end;

procedure Test_pixcompCopy;
begin
  AssertFuncLoaded(@Lept.Pixa.PixcompCopy, 'pixcompCopy');
end;

procedure Test_pixcompGetDimensions;
begin
  AssertFuncLoaded(@Lept.Pixa.PixcompGetDimensions, 'pixcompGetDimensions');
end;

procedure Test_pixcompGetParameters;
begin
  AssertFuncLoaded(@Lept.Pixa.PixcompGetParameters, 'pixcompGetParameters');
end;

procedure Test_pixcompDetermineFormat;
begin
  AssertFuncLoaded(@Lept.Pixa.PixcompDetermineFormat, 'pixcompDetermineFormat');
end;

procedure Test_pixacompCreate;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompCreate, 'pixacompCreate');
end;

procedure Test_pixacompCreateWithInit;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompCreateWithInit, 'pixacompCreateWithInit');
end;

procedure Test_pixacompCreateFromPixa;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompCreateFromPixa, 'pixacompCreateFromPixa');
end;

procedure Test_pixacompCreateFromFiles;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompCreateFromFiles, 'pixacompCreateFromFiles');
end;

procedure Test_pixacompCreateFromSA;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompCreateFromSA, 'pixacompCreateFromSA');
end;

procedure Test_pixacompDestroy;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompDestroy, 'pixacompDestroy');
end;

procedure Test_pixacompAddPix;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompAddPix, 'pixacompAddPix');
end;

procedure Test_pixacompAddPixcomp;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompAddPixcomp, 'pixacompAddPixcomp');
end;

procedure Test_pixacompReplacePix;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompReplacePix, 'pixacompReplacePix');
end;

procedure Test_pixacompReplacePixcomp;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompReplacePixcomp, 'pixacompReplacePixcomp');
end;

procedure Test_pixacompAddBox;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompAddBox, 'pixacompAddBox');
end;

procedure Test_pixacompGetCount;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompGetCount, 'pixacompGetCount');
end;

procedure Test_pixacompGetPixcomp;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompGetPixcomp, 'pixacompGetPixcomp');
end;

procedure Test_pixacompGetPix;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompGetPix, 'pixacompGetPix');
end;

procedure Test_pixacompGetPixDimensions;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompGetPixDimensions, 'pixacompGetPixDimensions');
end;

procedure Test_pixacompGetBoxa;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompGetBoxa, 'pixacompGetBoxa');
end;

procedure Test_pixacompGetBoxaCount;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompGetBoxaCount, 'pixacompGetBoxaCount');
end;

procedure Test_pixacompGetBox;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompGetBox, 'pixacompGetBox');
end;

procedure Test_pixacompGetBoxGeometry;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompGetBoxGeometry, 'pixacompGetBoxGeometry');
end;

procedure Test_pixacompGetOffset;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompGetOffset, 'pixacompGetOffset');
end;

procedure Test_pixacompSetOffset;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompSetOffset, 'pixacompSetOffset');
end;

procedure Test_pixaCreateFromPixacomp;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaCreateFromPixacomp, 'pixaCreateFromPixacomp');
end;

procedure Test_pixacompJoin;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompJoin, 'pixacompJoin');
end;

procedure Test_pixacompInterleave;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompInterleave, 'pixacompInterleave');
end;

procedure Test_pixacompRead;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompRead, 'pixacompRead');
end;

procedure Test_pixacompReadStream;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompReadStream, 'pixacompReadStream');
end;

procedure Test_pixacompReadMem;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompReadMem, 'pixacompReadMem');
end;

procedure Test_pixacompWrite;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompWrite, 'pixacompWrite');
end;

procedure Test_pixacompWriteStream;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompWriteStream, 'pixacompWriteStream');
end;

procedure Test_pixacompWriteMem;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompWriteMem, 'pixacompWriteMem');
end;

procedure Test_pixacompConvertToPdf;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompConvertToPdf, 'pixacompConvertToPdf');
end;

procedure Test_pixacompConvertToPdfData;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompConvertToPdfData, 'pixacompConvertToPdfData');
end;

procedure Test_pixacompFastConvertToPdfData;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompFastConvertToPdfData, 'pixacompFastConvertToPdfData');
end;

procedure Test_pixacompWriteStreamInfo;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompWriteStreamInfo, 'pixacompWriteStreamInfo');
end;

procedure Test_pixcompWriteStreamInfo;
begin
  AssertFuncLoaded(@Lept.Pixa.PixcompWriteStreamInfo, 'pixcompWriteStreamInfo');
end;

procedure Test_pixacompDisplayTiledAndScaled;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompDisplayTiledAndScaled, 'pixacompDisplayTiledAndScaled');
end;

procedure Test_pixacompWriteFiles;
begin
  AssertFuncLoaded(@Lept.Pixa.PixacompWriteFiles, 'pixacompWriteFiles');
end;

procedure Test_pixcompWriteFile;
begin
  AssertFuncLoaded(@Lept.Pixa.PixcompWriteFile, 'pixcompWriteFile');
end;

procedure Test_pixaWriteCompressedToPS;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaWriteCompressedToPS, 'pixaWriteCompressedToPS');
end;

procedure Test_pixaReadFiles;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaReadFiles, 'pixaReadFiles');
end;

procedure Test_pixaReadFilesSA;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaReadFilesSA, 'pixaReadFilesSA');
end;

procedure Test_pixaAccumulateSamples;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaAccumulateSamples, 'pixaAccumulateSamples');
end;

procedure Test_pixaRemoveOutliers1;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaRemoveOutliers1, 'pixaRemoveOutliers1');
end;

procedure Test_pixaRemoveOutliers2;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaRemoveOutliers2, 'pixaRemoveOutliers2');
end;

procedure Test_pixaFindStrokeWidth;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaFindStrokeWidth, 'pixaFindStrokeWidth');
end;

procedure Test_pixaModifyStrokeWidth;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaModifyStrokeWidth, 'pixaModifyStrokeWidth');
end;

procedure Test_pixaSetStrokeWidth;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaSetStrokeWidth, 'pixaSetStrokeWidth');
end;

procedure Test_pixaAddTextNumber;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaAddTextNumber, 'pixaAddTextNumber');
end;

procedure Test_pixaAddTextlines;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaAddTextlines, 'pixaAddTextlines');
end;

procedure Test_pixaAddPixWithText;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaAddPixWithText, 'pixaAddPixWithText');
end;

procedure Test_pixaReadMultipageTiff;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaReadMultipageTiff, 'pixaReadMultipageTiff');
end;

procedure Test_pixaWriteMultipageTiff;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaWriteMultipageTiff, 'pixaWriteMultipageTiff');
end;

procedure Test_pixaReadMemMultipageTiff;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaReadMemMultipageTiff, 'pixaReadMemMultipageTiff');
end;

procedure Test_pixaWriteMemMultipageTiff;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaWriteMemMultipageTiff, 'pixaWriteMemMultipageTiff');
end;

procedure Test_pixaWriteWebPAnim;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaWriteWebPAnim, 'pixaWriteWebPAnim');
end;

procedure Test_pixaWriteStreamWebPAnim;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaWriteStreamWebPAnim, 'pixaWriteStreamWebPAnim');
end;

procedure Test_pixaWriteMemWebPAnim;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaWriteMemWebPAnim, 'pixaWriteMemWebPAnim');
end;

procedure Test_pixaWriteFiles;
begin
  AssertFuncLoaded(@Lept.Pixa.PixaWriteFiles, 'pixaWriteFiles');
end;

procedure Test_Func_pixaCreate;
var
  PA: Pointer;
begin
  PA := Lept.Pixa.PixaCreate(5);
  AssertNotNil(PA, 'pixaCreate');
  AssertEqualsInt(0, Lept.Pixa.PixaGetCount(PA), 'empty');
  Lept.Pixa.PixaDestroy(@PA);
end;

procedure Test_Func_pixaAddPix;
var
  PA, P, R: Pointer;
begin
  PA := Lept.Pixa.PixaCreate(5);
  P := Lept.Pix.PixCreate(50, 40, 8);
  Lept.Pixa.PixaAddPix(PA, P, 1);
  AssertEqualsInt(1, Lept.Pixa.PixaGetCount(PA), 'count=1');
  R := Lept.Pixa.PixaGetPix(PA, 0, 1);
  AssertNotNil(R, 'pixaGetPix');
  AssertEqualsInt(50, Lept.Pix.PixGetWidth(R), 'width');
  Lept.Pix.PixDestroy(@R);
  Lept.Pix.PixDestroy(@P);
  Lept.Pixa.PixaDestroy(@PA);
end;

procedure Test_Func_pixaCopy;
var
  PA, C: Pointer;
  P: Pointer;
begin
  PA := Lept.Pixa.PixaCreate(5);
  P := Lept.Pix.PixCreate(30, 20, 32);
  Lept.Pixa.PixaAddPix(PA, P, 1);
  C := Lept.Pixa.PixaCopy(PA, 1);
  AssertNotNil(C, 'pixaCopy');
  AssertEqualsInt(1, Lept.Pixa.PixaGetCount(C), 'copy count');
  Lept.Pix.PixDestroy(@P);
  Lept.Pixa.PixaDestroy(@C);
  Lept.Pixa.PixaDestroy(@PA);
end;

initialization
  RegisterTest('Pixa', 'pixaGetFont', @Test_pixaGetFont, []);
  RegisterTest('Pixa', 'pixaSaveFont', @Test_pixaSaveFont, []);
  RegisterTest('Pixa', 'pixaDisplayBoxaa', @Test_pixaDisplayBoxaa, []);
  RegisterTest('Pixa', 'pixaThinConnected', @Test_pixaThinConnected, []);
  RegisterTest('Pixa', 'pixaComparePhotoRegionsByHisto', @Test_pixaComparePhotoRegionsByHisto, []);
  RegisterTest('Pixa', 'pixaMorphSequenceByComponent', @Test_pixaMorphSequenceByComponent, []);
  RegisterTest('Pixa', 'pixaMorphSequenceByRegion', @Test_pixaMorphSequenceByRegion, []);
  RegisterTest('Pixa', 'pixaExtendByMorph', @Test_pixaExtendByMorph, []);
  RegisterTest('Pixa', 'pixaExtendByScaling', @Test_pixaExtendByScaling, []);
  RegisterTest('Pixa', 'pixaCentroids', @Test_pixaCentroids, []);
  RegisterTest('Pixa', 'pixaConvertToPdf', @Test_pixaConvertToPdf, []);
  RegisterTest('Pixa', 'pixaConvertToPdfData', @Test_pixaConvertToPdfData, []);
  RegisterTest('Pixa', 'pixaCountPixels', @Test_pixaCountPixels, []);
  RegisterTest('Pixa', 'pixaGetAlignedStats', @Test_pixaGetAlignedStats, []);
  RegisterTest('Pixa', 'pixaExtractColumnFromEachPix', @Test_pixaExtractColumnFromEachPix, []);
  RegisterTest('Pixa', 'pixaFindDimensions', @Test_pixaFindDimensions, []);
  RegisterTest('Pixa', 'pixaFindPerimToAreaRatio', @Test_pixaFindPerimToAreaRatio, []);
  RegisterTest('Pixa', 'pixaFindPerimSizeRatio', @Test_pixaFindPerimSizeRatio, []);
  RegisterTest('Pixa', 'pixaFindAreaFraction', @Test_pixaFindAreaFraction, []);
  RegisterTest('Pixa', 'pixaFindAreaFractionMasked', @Test_pixaFindAreaFractionMasked, []);
  RegisterTest('Pixa', 'pixaFindWidthHeightRatio', @Test_pixaFindWidthHeightRatio, []);
  RegisterTest('Pixa', 'pixaFindWidthHeightProduct', @Test_pixaFindWidthHeightProduct, []);
  RegisterTest('Pixa', 'pixaCreate', @Test_pixaCreate, []);
  RegisterTest('Pixa', 'pixaCreateFromPix', @Test_pixaCreateFromPix, []);
  RegisterTest('Pixa', 'pixaCreateFromBoxa', @Test_pixaCreateFromBoxa, []);
  RegisterTest('Pixa', 'pixaSplitPix', @Test_pixaSplitPix, []);
  RegisterTest('Pixa', 'pixaDestroy', @Test_pixaDestroy, []);
  RegisterTest('Pixa', 'pixaCopy', @Test_pixaCopy, []);
  RegisterTest('Pixa', 'pixaAddPix', @Test_pixaAddPix, []);
  RegisterTest('Pixa', 'pixaAddBox', @Test_pixaAddBox, []);
  RegisterTest('Pixa', 'pixaExtendArrayToSize', @Test_pixaExtendArrayToSize, []);
  RegisterTest('Pixa', 'pixaGetCount', @Test_pixaGetCount, []);
  RegisterTest('Pixa', 'pixaGetPix', @Test_pixaGetPix, []);
  RegisterTest('Pixa', 'pixaGetPixDimensions', @Test_pixaGetPixDimensions, []);
  RegisterTest('Pixa', 'pixaGetBoxa', @Test_pixaGetBoxa, []);
  RegisterTest('Pixa', 'pixaGetBoxaCount', @Test_pixaGetBoxaCount, []);
  RegisterTest('Pixa', 'pixaGetBox', @Test_pixaGetBox, []);
  RegisterTest('Pixa', 'pixaGetBoxGeometry', @Test_pixaGetBoxGeometry, []);
  RegisterTest('Pixa', 'pixaSetBoxa', @Test_pixaSetBoxa, []);
  RegisterTest('Pixa', 'pixaGetPixArray', @Test_pixaGetPixArray, []);
  RegisterTest('Pixa', 'pixaVerifyDepth', @Test_pixaVerifyDepth, []);
  RegisterTest('Pixa', 'pixaVerifyDimensions', @Test_pixaVerifyDimensions, []);
  RegisterTest('Pixa', 'pixaIsFull', @Test_pixaIsFull, []);
  RegisterTest('Pixa', 'pixaCountText', @Test_pixaCountText, []);
  RegisterTest('Pixa', 'pixaSetText', @Test_pixaSetText, []);
  RegisterTest('Pixa', 'pixaGetLinePtrs', @Test_pixaGetLinePtrs, []);
  RegisterTest('Pixa', 'pixaWriteStreamInfo', @Test_pixaWriteStreamInfo, []);
  RegisterTest('Pixa', 'pixaReplacePix', @Test_pixaReplacePix, []);
  RegisterTest('Pixa', 'pixaInsertPix', @Test_pixaInsertPix, []);
  RegisterTest('Pixa', 'pixaRemovePix', @Test_pixaRemovePix, []);
  RegisterTest('Pixa', 'pixaRemovePixAndSave', @Test_pixaRemovePixAndSave, []);
  RegisterTest('Pixa', 'pixaRemoveSelected', @Test_pixaRemoveSelected, []);
  RegisterTest('Pixa', 'pixaInitFull', @Test_pixaInitFull, []);
  RegisterTest('Pixa', 'pixaClear', @Test_pixaClear, []);
  RegisterTest('Pixa', 'pixaJoin', @Test_pixaJoin, []);
  RegisterTest('Pixa', 'pixaInterleave', @Test_pixaInterleave, []);
  RegisterTest('Pixa', 'pixaaJoin', @Test_pixaaJoin, []);
  RegisterTest('Pixa', 'pixaaCreate', @Test_pixaaCreate, []);
  RegisterTest('Pixa', 'pixaaCreateFromPixa', @Test_pixaaCreateFromPixa, []);
  RegisterTest('Pixa', 'pixaaDestroy', @Test_pixaaDestroy, []);
  RegisterTest('Pixa', 'pixaaAddPixa', @Test_pixaaAddPixa, []);
  RegisterTest('Pixa', 'pixaaAddPix', @Test_pixaaAddPix, []);
  RegisterTest('Pixa', 'pixaaAddBox', @Test_pixaaAddBox, []);
  RegisterTest('Pixa', 'pixaaGetCount', @Test_pixaaGetCount, []);
  RegisterTest('Pixa', 'pixaaGetPixa', @Test_pixaaGetPixa, []);
  RegisterTest('Pixa', 'pixaaGetBoxa', @Test_pixaaGetBoxa, []);
  RegisterTest('Pixa', 'pixaaGetPix', @Test_pixaaGetPix, []);
  RegisterTest('Pixa', 'pixaaVerifyDepth', @Test_pixaaVerifyDepth, []);
  RegisterTest('Pixa', 'pixaaVerifyDimensions', @Test_pixaaVerifyDimensions, []);
  RegisterTest('Pixa', 'pixaaIsFull', @Test_pixaaIsFull, []);
  RegisterTest('Pixa', 'pixaaInitFull', @Test_pixaaInitFull, []);
  RegisterTest('Pixa', 'pixaaReplacePixa', @Test_pixaaReplacePixa, []);
  RegisterTest('Pixa', 'pixaaClear', @Test_pixaaClear, []);
  RegisterTest('Pixa', 'pixaaTruncate', @Test_pixaaTruncate, []);
  RegisterTest('Pixa', 'pixaRead', @Test_pixaRead, []);
  RegisterTest('Pixa', 'pixaReadStream', @Test_pixaReadStream, []);
  RegisterTest('Pixa', 'pixaReadMem', @Test_pixaReadMem, []);
  RegisterTest('Pixa', 'pixaWriteDebug', @Test_pixaWriteDebug, []);
  RegisterTest('Pixa', 'pixaWrite', @Test_pixaWrite, []);
  RegisterTest('Pixa', 'pixaWriteStream', @Test_pixaWriteStream, []);
  RegisterTest('Pixa', 'pixaWriteMem', @Test_pixaWriteMem, []);
  RegisterTest('Pixa', 'pixaReadBoth', @Test_pixaReadBoth, []);
  RegisterTest('Pixa', 'pixaaReadFromFiles', @Test_pixaaReadFromFiles, []);
  RegisterTest('Pixa', 'pixaaRead', @Test_pixaaRead, []);
  RegisterTest('Pixa', 'pixaaReadStream', @Test_pixaaReadStream, []);
  RegisterTest('Pixa', 'pixaaReadMem', @Test_pixaaReadMem, []);
  RegisterTest('Pixa', 'pixaaWrite', @Test_pixaaWrite, []);
  RegisterTest('Pixa', 'pixaaWriteStream', @Test_pixaaWriteStream, []);
  RegisterTest('Pixa', 'pixaaWriteMem', @Test_pixaaWriteMem, []);
  RegisterTest('Pixa', 'pixaSelectBySize', @Test_pixaSelectBySize, []);
  RegisterTest('Pixa', 'pixaMakeSizeIndicator', @Test_pixaMakeSizeIndicator, []);
  RegisterTest('Pixa', 'pixaSelectByPerimToAreaRatio', @Test_pixaSelectByPerimToAreaRatio, []);
  RegisterTest('Pixa', 'pixaSelectByPerimSizeRatio', @Test_pixaSelectByPerimSizeRatio, []);
  RegisterTest('Pixa', 'pixaSelectByAreaFraction', @Test_pixaSelectByAreaFraction, []);
  RegisterTest('Pixa', 'pixaSelectByArea', @Test_pixaSelectByArea, []);
  RegisterTest('Pixa', 'pixaSelectByWidthHeightRatio', @Test_pixaSelectByWidthHeightRatio, []);
  RegisterTest('Pixa', 'pixaSelectByNumConnComp', @Test_pixaSelectByNumConnComp, []);
  RegisterTest('Pixa', 'pixaSelectWithIndicator', @Test_pixaSelectWithIndicator, []);
  RegisterTest('Pixa', 'pixaSelectWithString', @Test_pixaSelectWithString, []);
  RegisterTest('Pixa', 'pixaRenderComponent', @Test_pixaRenderComponent, []);
  RegisterTest('Pixa', 'pixaSort', @Test_pixaSort, []);
  RegisterTest('Pixa', 'pixaBinSort', @Test_pixaBinSort, []);
  RegisterTest('Pixa', 'pixaSortByIndex', @Test_pixaSortByIndex, []);
  RegisterTest('Pixa', 'pixaSort2dByIndex', @Test_pixaSort2dByIndex, []);
  RegisterTest('Pixa', 'pixaSelectRange', @Test_pixaSelectRange, []);
  RegisterTest('Pixa', 'pixaaSelectRange', @Test_pixaaSelectRange, []);
  RegisterTest('Pixa', 'pixaaScaleToSize', @Test_pixaaScaleToSize, []);
  RegisterTest('Pixa', 'pixaaScaleToSizeVar', @Test_pixaaScaleToSizeVar, []);
  RegisterTest('Pixa', 'pixaScaleToSize', @Test_pixaScaleToSize, []);
  RegisterTest('Pixa', 'pixaScaleToSizeRel', @Test_pixaScaleToSizeRel, []);
  RegisterTest('Pixa', 'pixaScale', @Test_pixaScale, []);
  RegisterTest('Pixa', 'pixaScaleBySampling', @Test_pixaScaleBySampling, []);
  RegisterTest('Pixa', 'pixaRotate', @Test_pixaRotate, []);
  RegisterTest('Pixa', 'pixaRotateOrth', @Test_pixaRotateOrth, []);
  RegisterTest('Pixa', 'pixaTranslate', @Test_pixaTranslate, []);
  RegisterTest('Pixa', 'pixaAddBorderGeneral', @Test_pixaAddBorderGeneral, []);
  RegisterTest('Pixa', 'pixaaFlattenToPixa', @Test_pixaaFlattenToPixa, []);
  RegisterTest('Pixa', 'pixaaSizeRange', @Test_pixaaSizeRange, []);
  RegisterTest('Pixa', 'pixaSizeRange', @Test_pixaSizeRange, []);
  RegisterTest('Pixa', 'pixaClipToPix', @Test_pixaClipToPix, []);
  RegisterTest('Pixa', 'pixaClipToForeground', @Test_pixaClipToForeground, []);
  RegisterTest('Pixa', 'pixaGetRenderingDepth', @Test_pixaGetRenderingDepth, []);
  RegisterTest('Pixa', 'pixaHasColor', @Test_pixaHasColor, []);
  RegisterTest('Pixa', 'pixaAnyColormaps', @Test_pixaAnyColormaps, []);
  RegisterTest('Pixa', 'pixaGetDepthInfo', @Test_pixaGetDepthInfo, []);
  RegisterTest('Pixa', 'pixaConvertToSameDepth', @Test_pixaConvertToSameDepth, []);
  RegisterTest('Pixa', 'pixaConvertToGivenDepth', @Test_pixaConvertToGivenDepth, []);
  RegisterTest('Pixa', 'pixaEqual', @Test_pixaEqual, []);
  RegisterTest('Pixa', 'pixaSetFullSizeBoxa', @Test_pixaSetFullSizeBoxa, []);
  RegisterTest('Pixa', 'pixaDisplay', @Test_pixaDisplay, []);
  RegisterTest('Pixa', 'pixaDisplayRandomCmap', @Test_pixaDisplayRandomCmap, []);
  RegisterTest('Pixa', 'pixaDisplayLinearly', @Test_pixaDisplayLinearly, []);
  RegisterTest('Pixa', 'pixaDisplayOnLattice', @Test_pixaDisplayOnLattice, []);
  RegisterTest('Pixa', 'pixaDisplayUnsplit', @Test_pixaDisplayUnsplit, []);
  RegisterTest('Pixa', 'pixaDisplayTiled', @Test_pixaDisplayTiled, []);
  RegisterTest('Pixa', 'pixaDisplayTiledInRows', @Test_pixaDisplayTiledInRows, []);
  RegisterTest('Pixa', 'pixaDisplayTiledInColumns', @Test_pixaDisplayTiledInColumns, []);
  RegisterTest('Pixa', 'pixaDisplayTiledAndScaled', @Test_pixaDisplayTiledAndScaled, []);
  RegisterTest('Pixa', 'pixaDisplayTiledWithText', @Test_pixaDisplayTiledWithText, []);
  RegisterTest('Pixa', 'pixaDisplayTiledByIndex', @Test_pixaDisplayTiledByIndex, []);
  RegisterTest('Pixa', 'pixaDisplayPairTiledInColumns', @Test_pixaDisplayPairTiledInColumns, []);
  RegisterTest('Pixa', 'pixaaDisplay', @Test_pixaaDisplay, []);
  RegisterTest('Pixa', 'pixaaDisplayByPixa', @Test_pixaaDisplayByPixa, []);
  RegisterTest('Pixa', 'pixaaDisplayTiledAndScaled', @Test_pixaaDisplayTiledAndScaled, []);
  RegisterTest('Pixa', 'pixaConvertTo1', @Test_pixaConvertTo1, []);
  RegisterTest('Pixa', 'pixaConvertTo8', @Test_pixaConvertTo8, []);
  RegisterTest('Pixa', 'pixaConvertTo8Colormap', @Test_pixaConvertTo8Colormap, []);
  RegisterTest('Pixa', 'pixaConvertTo32', @Test_pixaConvertTo32, []);
  RegisterTest('Pixa', 'pixaConstrainedSelect', @Test_pixaConstrainedSelect, []);
  RegisterTest('Pixa', 'pixaSelectToPdf', @Test_pixaSelectToPdf, []);
  RegisterTest('Pixa', 'pixaMakeFromTiledPixa', @Test_pixaMakeFromTiledPixa, []);
  RegisterTest('Pixa', 'pixaMakeFromTiledPix', @Test_pixaMakeFromTiledPix, []);
  RegisterTest('Pixa', 'pixaDisplayMultiTiled', @Test_pixaDisplayMultiTiled, []);
  RegisterTest('Pixa', 'pixaSplitIntoFiles', @Test_pixaSplitIntoFiles, []);
  RegisterTest('Pixa', 'pixaConvertToNUpPixa', @Test_pixaConvertToNUpPixa, []);
  RegisterTest('Pixa', 'pixaCompareInPdf', @Test_pixaCompareInPdf, []);
  RegisterTest('Pixa', 'pixcompCreateFromPix', @Test_pixcompCreateFromPix, []);
  RegisterTest('Pixa', 'pixcompCreateFromString', @Test_pixcompCreateFromString, []);
  RegisterTest('Pixa', 'pixcompCreateFromFile', @Test_pixcompCreateFromFile, []);
  RegisterTest('Pixa', 'pixcompDestroy', @Test_pixcompDestroy, []);
  RegisterTest('Pixa', 'pixcompCopy', @Test_pixcompCopy, []);
  RegisterTest('Pixa', 'pixcompGetDimensions', @Test_pixcompGetDimensions, []);
  RegisterTest('Pixa', 'pixcompGetParameters', @Test_pixcompGetParameters, []);
  RegisterTest('Pixa', 'pixcompDetermineFormat', @Test_pixcompDetermineFormat, []);
  RegisterTest('Pixa', 'pixacompCreate', @Test_pixacompCreate, []);
  RegisterTest('Pixa', 'pixacompCreateWithInit', @Test_pixacompCreateWithInit, []);
  RegisterTest('Pixa', 'pixacompCreateFromPixa', @Test_pixacompCreateFromPixa, []);
  RegisterTest('Pixa', 'pixacompCreateFromFiles', @Test_pixacompCreateFromFiles, []);
  RegisterTest('Pixa', 'pixacompCreateFromSA', @Test_pixacompCreateFromSA, []);
  RegisterTest('Pixa', 'pixacompDestroy', @Test_pixacompDestroy, []);
  RegisterTest('Pixa', 'pixacompAddPix', @Test_pixacompAddPix, []);
  RegisterTest('Pixa', 'pixacompAddPixcomp', @Test_pixacompAddPixcomp, []);
  RegisterTest('Pixa', 'pixacompReplacePix', @Test_pixacompReplacePix, []);
  RegisterTest('Pixa', 'pixacompReplacePixcomp', @Test_pixacompReplacePixcomp, []);
  RegisterTest('Pixa', 'pixacompAddBox', @Test_pixacompAddBox, []);
  RegisterTest('Pixa', 'pixacompGetCount', @Test_pixacompGetCount, []);
  RegisterTest('Pixa', 'pixacompGetPixcomp', @Test_pixacompGetPixcomp, []);
  RegisterTest('Pixa', 'pixacompGetPix', @Test_pixacompGetPix, []);
  RegisterTest('Pixa', 'pixacompGetPixDimensions', @Test_pixacompGetPixDimensions, []);
  RegisterTest('Pixa', 'pixacompGetBoxa', @Test_pixacompGetBoxa, []);
  RegisterTest('Pixa', 'pixacompGetBoxaCount', @Test_pixacompGetBoxaCount, []);
  RegisterTest('Pixa', 'pixacompGetBox', @Test_pixacompGetBox, []);
  RegisterTest('Pixa', 'pixacompGetBoxGeometry', @Test_pixacompGetBoxGeometry, []);
  RegisterTest('Pixa', 'pixacompGetOffset', @Test_pixacompGetOffset, []);
  RegisterTest('Pixa', 'pixacompSetOffset', @Test_pixacompSetOffset, []);
  RegisterTest('Pixa', 'pixaCreateFromPixacomp', @Test_pixaCreateFromPixacomp, []);
  RegisterTest('Pixa', 'pixacompJoin', @Test_pixacompJoin, []);
  RegisterTest('Pixa', 'pixacompInterleave', @Test_pixacompInterleave, []);
  RegisterTest('Pixa', 'pixacompRead', @Test_pixacompRead, []);
  RegisterTest('Pixa', 'pixacompReadStream', @Test_pixacompReadStream, []);
  RegisterTest('Pixa', 'pixacompReadMem', @Test_pixacompReadMem, []);
  RegisterTest('Pixa', 'pixacompWrite', @Test_pixacompWrite, []);
  RegisterTest('Pixa', 'pixacompWriteStream', @Test_pixacompWriteStream, []);
  RegisterTest('Pixa', 'pixacompWriteMem', @Test_pixacompWriteMem, []);
  RegisterTest('Pixa', 'pixacompConvertToPdf', @Test_pixacompConvertToPdf, []);
  RegisterTest('Pixa', 'pixacompConvertToPdfData', @Test_pixacompConvertToPdfData, []);
  RegisterTest('Pixa', 'pixacompFastConvertToPdfData', @Test_pixacompFastConvertToPdfData, []);
  RegisterTest('Pixa', 'pixacompWriteStreamInfo', @Test_pixacompWriteStreamInfo, []);
  RegisterTest('Pixa', 'pixcompWriteStreamInfo', @Test_pixcompWriteStreamInfo, []);
  RegisterTest('Pixa', 'pixacompDisplayTiledAndScaled', @Test_pixacompDisplayTiledAndScaled, []);
  RegisterTest('Pixa', 'pixacompWriteFiles', @Test_pixacompWriteFiles, []);
  RegisterTest('Pixa', 'pixcompWriteFile', @Test_pixcompWriteFile, []);
  RegisterTest('Pixa', 'pixaWriteCompressedToPS', @Test_pixaWriteCompressedToPS, []);
  RegisterTest('Pixa', 'pixaReadFiles', @Test_pixaReadFiles, []);
  RegisterTest('Pixa', 'pixaReadFilesSA', @Test_pixaReadFilesSA, []);
  RegisterTest('Pixa', 'pixaAccumulateSamples', @Test_pixaAccumulateSamples, []);
  RegisterTest('Pixa', 'pixaRemoveOutliers1', @Test_pixaRemoveOutliers1, []);
  RegisterTest('Pixa', 'pixaRemoveOutliers2', @Test_pixaRemoveOutliers2, []);
  RegisterTest('Pixa', 'pixaFindStrokeWidth', @Test_pixaFindStrokeWidth, []);
  RegisterTest('Pixa', 'pixaModifyStrokeWidth', @Test_pixaModifyStrokeWidth, []);
  RegisterTest('Pixa', 'pixaSetStrokeWidth', @Test_pixaSetStrokeWidth, []);
  RegisterTest('Pixa', 'pixaAddTextNumber', @Test_pixaAddTextNumber, []);
  RegisterTest('Pixa', 'pixaAddTextlines', @Test_pixaAddTextlines, []);
  RegisterTest('Pixa', 'pixaAddPixWithText', @Test_pixaAddPixWithText, []);
  RegisterTest('Pixa', 'pixaReadMultipageTiff', @Test_pixaReadMultipageTiff, []);
  RegisterTest('Pixa', 'pixaWriteMultipageTiff', @Test_pixaWriteMultipageTiff, []);
  RegisterTest('Pixa', 'pixaReadMemMultipageTiff', @Test_pixaReadMemMultipageTiff, []);
  RegisterTest('Pixa', 'pixaWriteMemMultipageTiff', @Test_pixaWriteMemMultipageTiff, []);
  RegisterTest('Pixa', 'pixaWriteWebPAnim', @Test_pixaWriteWebPAnim, []);
  RegisterTest('Pixa', 'pixaWriteStreamWebPAnim', @Test_pixaWriteStreamWebPAnim, []);
  RegisterTest('Pixa', 'pixaWriteMemWebPAnim', @Test_pixaWriteMemWebPAnim, []);
  RegisterTest('Pixa', 'pixaWriteFiles', @Test_pixaWriteFiles, []);

  RegisterTest('Pixa', 'Func_pixaCreate', @Test_Func_pixaCreate, []);
  RegisterTest('Pixa', 'Func_pixaAddPix', @Test_Func_pixaAddPix, []);
  RegisterTest('Pixa', 'Func_pixaCopy', @Test_Func_pixaCopy, []);

end.
