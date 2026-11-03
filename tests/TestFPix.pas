{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestFPix;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_fpixaConvertXYZToRGB;
begin
  AssertFuncLoaded(@Lept.FPix.FpixaConvertXYZToRGB, 'fpixaConvertXYZToRGB');
end;

procedure Test_fpixaConvertXYZToLAB;
begin
  AssertFuncLoaded(@Lept.FPix.FpixaConvertXYZToLAB, 'fpixaConvertXYZToLAB');
end;

procedure Test_fpixaConvertLABToXYZ;
begin
  AssertFuncLoaded(@Lept.FPix.FpixaConvertLABToXYZ, 'fpixaConvertLABToXYZ');
end;

procedure Test_fpixaConvertLABToRGB;
begin
  AssertFuncLoaded(@Lept.FPix.FpixaConvertLABToRGB, 'fpixaConvertLABToRGB');
end;

procedure Test_fpixConvolve;
begin
  AssertFuncLoaded(@Lept.FPix.FpixConvolve, 'fpixConvolve');
end;

procedure Test_fpixConvolveSep;
begin
  AssertFuncLoaded(@Lept.FPix.FpixConvolveSep, 'fpixConvolveSep');
end;

procedure Test_fpixCreate;
begin
  AssertFuncLoaded(@Lept.FPix.FpixCreate, 'fpixCreate');
end;

procedure Test_fpixCreateTemplate;
begin
  AssertFuncLoaded(@Lept.FPix.FpixCreateTemplate, 'fpixCreateTemplate');
end;

procedure Test_fpixClone;
begin
  AssertFuncLoaded(@Lept.FPix.FpixClone, 'fpixClone');
end;

procedure Test_fpixCopy;
begin
  AssertFuncLoaded(@Lept.FPix.FpixCopy, 'fpixCopy');
end;

procedure Test_fpixDestroy;
begin
  AssertFuncLoaded(@Lept.FPix.FpixDestroy, 'fpixDestroy');
end;

procedure Test_fpixGetDimensions;
begin
  AssertFuncLoaded(@Lept.FPix.FpixGetDimensions, 'fpixGetDimensions');
end;

procedure Test_fpixSetDimensions;
begin
  AssertFuncLoaded(@Lept.FPix.FpixSetDimensions, 'fpixSetDimensions');
end;

procedure Test_fpixGetWpl;
begin
  AssertFuncLoaded(@Lept.FPix.FpixGetWpl, 'fpixGetWpl');
end;

procedure Test_fpixSetWpl;
begin
  AssertFuncLoaded(@Lept.FPix.FpixSetWpl, 'fpixSetWpl');
end;

procedure Test_fpixGetResolution;
begin
  AssertFuncLoaded(@Lept.FPix.FpixGetResolution, 'fpixGetResolution');
end;

procedure Test_fpixSetResolution;
begin
  AssertFuncLoaded(@Lept.FPix.FpixSetResolution, 'fpixSetResolution');
end;

procedure Test_fpixCopyResolution;
begin
  AssertFuncLoaded(@Lept.FPix.FpixCopyResolution, 'fpixCopyResolution');
end;

procedure Test_fpixGetData;
begin
  AssertFuncLoaded(@Lept.FPix.FpixGetData, 'fpixGetData');
end;

procedure Test_fpixSetData;
begin
  AssertFuncLoaded(@Lept.FPix.FpixSetData, 'fpixSetData');
end;

procedure Test_fpixGetPixel;
begin
  AssertFuncLoaded(@Lept.FPix.FpixGetPixel, 'fpixGetPixel');
end;

procedure Test_fpixSetPixel;
begin
  AssertFuncLoaded(@Lept.FPix.FpixSetPixel, 'fpixSetPixel');
end;

procedure Test_fpixaCreate;
begin
  AssertFuncLoaded(@Lept.FPix.FpixaCreate, 'fpixaCreate');
end;

procedure Test_fpixaCopy;
begin
  AssertFuncLoaded(@Lept.FPix.FpixaCopy, 'fpixaCopy');
end;

procedure Test_fpixaDestroy;
begin
  AssertFuncLoaded(@Lept.FPix.FpixaDestroy, 'fpixaDestroy');
end;

procedure Test_fpixaAddFPix;
begin
  AssertFuncLoaded(@Lept.FPix.FpixaAddFPix, 'fpixaAddFPix');
end;

procedure Test_fpixaGetCount;
begin
  AssertFuncLoaded(@Lept.FPix.FpixaGetCount, 'fpixaGetCount');
end;

procedure Test_fpixaGetFPix;
begin
  AssertFuncLoaded(@Lept.FPix.FpixaGetFPix, 'fpixaGetFPix');
end;

procedure Test_fpixaGetFPixDimensions;
begin
  AssertFuncLoaded(@Lept.FPix.FpixaGetFPixDimensions, 'fpixaGetFPixDimensions');
end;

procedure Test_fpixaGetData;
begin
  AssertFuncLoaded(@Lept.FPix.FpixaGetData, 'fpixaGetData');
end;

procedure Test_fpixaGetPixel;
begin
  AssertFuncLoaded(@Lept.FPix.FpixaGetPixel, 'fpixaGetPixel');
end;

procedure Test_fpixaSetPixel;
begin
  AssertFuncLoaded(@Lept.FPix.FpixaSetPixel, 'fpixaSetPixel');
end;

procedure Test_dpixCreate;
begin
  AssertFuncLoaded(@Lept.FPix.DpixCreate, 'dpixCreate');
end;

procedure Test_dpixCreateTemplate;
begin
  AssertFuncLoaded(@Lept.FPix.DpixCreateTemplate, 'dpixCreateTemplate');
end;

procedure Test_dpixClone;
begin
  AssertFuncLoaded(@Lept.FPix.DpixClone, 'dpixClone');
end;

procedure Test_dpixCopy;
begin
  AssertFuncLoaded(@Lept.FPix.DpixCopy, 'dpixCopy');
end;

procedure Test_dpixDestroy;
begin
  AssertFuncLoaded(@Lept.FPix.DpixDestroy, 'dpixDestroy');
end;

procedure Test_dpixGetDimensions;
begin
  AssertFuncLoaded(@Lept.FPix.DpixGetDimensions, 'dpixGetDimensions');
end;

procedure Test_dpixSetDimensions;
begin
  AssertFuncLoaded(@Lept.FPix.DpixSetDimensions, 'dpixSetDimensions');
end;

procedure Test_dpixGetWpl;
begin
  AssertFuncLoaded(@Lept.FPix.DpixGetWpl, 'dpixGetWpl');
end;

procedure Test_dpixSetWpl;
begin
  AssertFuncLoaded(@Lept.FPix.DpixSetWpl, 'dpixSetWpl');
end;

procedure Test_dpixGetResolution;
begin
  AssertFuncLoaded(@Lept.FPix.DpixGetResolution, 'dpixGetResolution');
end;

procedure Test_dpixSetResolution;
begin
  AssertFuncLoaded(@Lept.FPix.DpixSetResolution, 'dpixSetResolution');
end;

procedure Test_dpixCopyResolution;
begin
  AssertFuncLoaded(@Lept.FPix.DpixCopyResolution, 'dpixCopyResolution');
end;

procedure Test_dpixGetData;
begin
  AssertFuncLoaded(@Lept.FPix.DpixGetData, 'dpixGetData');
end;

procedure Test_dpixSetData;
begin
  AssertFuncLoaded(@Lept.FPix.DpixSetData, 'dpixSetData');
end;

procedure Test_dpixGetPixel;
begin
  AssertFuncLoaded(@Lept.FPix.DpixGetPixel, 'dpixGetPixel');
end;

procedure Test_dpixSetPixel;
begin
  AssertFuncLoaded(@Lept.FPix.DpixSetPixel, 'dpixSetPixel');
end;

procedure Test_fpixRead;
begin
  AssertFuncLoaded(@Lept.FPix.FpixRead, 'fpixRead');
end;

procedure Test_fpixReadStream;
begin
  AssertFuncLoaded(@Lept.FPix.FpixReadStream, 'fpixReadStream');
end;

procedure Test_fpixReadMem;
begin
  AssertFuncLoaded(@Lept.FPix.FpixReadMem, 'fpixReadMem');
end;

procedure Test_fpixWrite;
begin
  AssertFuncLoaded(@Lept.FPix.FpixWrite, 'fpixWrite');
end;

procedure Test_fpixWriteStream;
begin
  AssertFuncLoaded(@Lept.FPix.FpixWriteStream, 'fpixWriteStream');
end;

procedure Test_fpixWriteMem;
begin
  AssertFuncLoaded(@Lept.FPix.FpixWriteMem, 'fpixWriteMem');
end;

procedure Test_fpixEndianByteSwap;
begin
  AssertFuncLoaded(@Lept.FPix.FpixEndianByteSwap, 'fpixEndianByteSwap');
end;

procedure Test_dpixRead;
begin
  AssertFuncLoaded(@Lept.FPix.DpixRead, 'dpixRead');
end;

procedure Test_dpixReadStream;
begin
  AssertFuncLoaded(@Lept.FPix.DpixReadStream, 'dpixReadStream');
end;

procedure Test_dpixReadMem;
begin
  AssertFuncLoaded(@Lept.FPix.DpixReadMem, 'dpixReadMem');
end;

procedure Test_dpixWrite;
begin
  AssertFuncLoaded(@Lept.FPix.DpixWrite, 'dpixWrite');
end;

procedure Test_dpixWriteStream;
begin
  AssertFuncLoaded(@Lept.FPix.DpixWriteStream, 'dpixWriteStream');
end;

procedure Test_dpixWriteMem;
begin
  AssertFuncLoaded(@Lept.FPix.DpixWriteMem, 'dpixWriteMem');
end;

procedure Test_dpixEndianByteSwap;
begin
  AssertFuncLoaded(@Lept.FPix.DpixEndianByteSwap, 'dpixEndianByteSwap');
end;

procedure Test_fpixPrintStream;
begin
  AssertFuncLoaded(@Lept.FPix.FpixPrintStream, 'fpixPrintStream');
end;

procedure Test_fpixConvertToPix;
begin
  AssertFuncLoaded(@Lept.FPix.FpixConvertToPix, 'fpixConvertToPix');
end;

procedure Test_fpixDisplayMaxDynamicRange;
begin
  AssertFuncLoaded(@Lept.FPix.FpixDisplayMaxDynamicRange, 'fpixDisplayMaxDynamicRange');
end;

procedure Test_fpixConvertToDPix;
begin
  AssertFuncLoaded(@Lept.FPix.FpixConvertToDPix, 'fpixConvertToDPix');
end;

procedure Test_dpixConvertToPix;
begin
  AssertFuncLoaded(@Lept.FPix.DpixConvertToPix, 'dpixConvertToPix');
end;

procedure Test_dpixConvertToFPix;
begin
  AssertFuncLoaded(@Lept.FPix.DpixConvertToFPix, 'dpixConvertToFPix');
end;

procedure Test_fpixGetMin;
begin
  AssertFuncLoaded(@Lept.FPix.FpixGetMin, 'fpixGetMin');
end;

procedure Test_fpixGetMax;
begin
  AssertFuncLoaded(@Lept.FPix.FpixGetMax, 'fpixGetMax');
end;

procedure Test_dpixGetMin;
begin
  AssertFuncLoaded(@Lept.FPix.DpixGetMin, 'dpixGetMin');
end;

procedure Test_dpixGetMax;
begin
  AssertFuncLoaded(@Lept.FPix.DpixGetMax, 'dpixGetMax');
end;

procedure Test_fpixScaleByInteger;
begin
  AssertFuncLoaded(@Lept.FPix.FpixScaleByInteger, 'fpixScaleByInteger');
end;

procedure Test_dpixScaleByInteger;
begin
  AssertFuncLoaded(@Lept.FPix.DpixScaleByInteger, 'dpixScaleByInteger');
end;

procedure Test_fpixLinearCombination;
begin
  AssertFuncLoaded(@Lept.FPix.FpixLinearCombination, 'fpixLinearCombination');
end;

procedure Test_fpixAddMultConstant;
begin
  AssertFuncLoaded(@Lept.FPix.FpixAddMultConstant, 'fpixAddMultConstant');
end;

procedure Test_dpixLinearCombination;
begin
  AssertFuncLoaded(@Lept.FPix.DpixLinearCombination, 'dpixLinearCombination');
end;

procedure Test_dpixAddMultConstant;
begin
  AssertFuncLoaded(@Lept.FPix.DpixAddMultConstant, 'dpixAddMultConstant');
end;

procedure Test_fpixSetAllArbitrary;
begin
  AssertFuncLoaded(@Lept.FPix.FpixSetAllArbitrary, 'fpixSetAllArbitrary');
end;

procedure Test_dpixSetAllArbitrary;
begin
  AssertFuncLoaded(@Lept.FPix.DpixSetAllArbitrary, 'dpixSetAllArbitrary');
end;

procedure Test_fpixAddBorder;
begin
  AssertFuncLoaded(@Lept.FPix.FpixAddBorder, 'fpixAddBorder');
end;

procedure Test_fpixRemoveBorder;
begin
  AssertFuncLoaded(@Lept.FPix.FpixRemoveBorder, 'fpixRemoveBorder');
end;

procedure Test_fpixAddMirroredBorder;
begin
  AssertFuncLoaded(@Lept.FPix.FpixAddMirroredBorder, 'fpixAddMirroredBorder');
end;

procedure Test_fpixAddContinuedBorder;
begin
  AssertFuncLoaded(@Lept.FPix.FpixAddContinuedBorder, 'fpixAddContinuedBorder');
end;

procedure Test_fpixAddSlopeBorder;
begin
  AssertFuncLoaded(@Lept.FPix.FpixAddSlopeBorder, 'fpixAddSlopeBorder');
end;

procedure Test_fpixRasterop;
begin
  AssertFuncLoaded(@Lept.FPix.FpixRasterop, 'fpixRasterop');
end;

procedure Test_fpixRotateOrth;
begin
  AssertFuncLoaded(@Lept.FPix.FpixRotateOrth, 'fpixRotateOrth');
end;

procedure Test_fpixRotate180;
begin
  AssertFuncLoaded(@Lept.FPix.FpixRotate180, 'fpixRotate180');
end;

procedure Test_fpixRotate90;
begin
  AssertFuncLoaded(@Lept.FPix.FpixRotate90, 'fpixRotate90');
end;

procedure Test_fpixFlipLR;
begin
  AssertFuncLoaded(@Lept.FPix.FpixFlipLR, 'fpixFlipLR');
end;

procedure Test_fpixFlipTB;
begin
  AssertFuncLoaded(@Lept.FPix.FpixFlipTB, 'fpixFlipTB');
end;

procedure Test_fpixAffinePta;
begin
  AssertFuncLoaded(@Lept.FPix.FpixAffinePta, 'fpixAffinePta');
end;

procedure Test_fpixAffine;
begin
  AssertFuncLoaded(@Lept.FPix.FpixAffine, 'fpixAffine');
end;

procedure Test_fpixProjectivePta;
begin
  AssertFuncLoaded(@Lept.FPix.FpixProjectivePta, 'fpixProjectivePta');
end;

procedure Test_fpixProjective;
begin
  AssertFuncLoaded(@Lept.FPix.FpixProjective, 'fpixProjective');
end;

procedure Test_fpixThresholdToPix;
begin
  AssertFuncLoaded(@Lept.FPix.FpixThresholdToPix, 'fpixThresholdToPix');
end;

procedure Test_fpixAutoRenderContours;
begin
  AssertFuncLoaded(@Lept.FPix.FpixAutoRenderContours, 'fpixAutoRenderContours');
end;

procedure Test_fpixRenderContours;
begin
  AssertFuncLoaded(@Lept.FPix.FpixRenderContours, 'fpixRenderContours');
end;

procedure Test_fpixaDisplayQuadtree;
begin
  AssertFuncLoaded(@Lept.FPix.FpixaDisplayQuadtree, 'fpixaDisplayQuadtree');
end;

procedure Test_Func_fpixCreate;
var
  F: Pointer;
  W, H: Integer;
begin
  F := Lept.FPix.FPixCreate(100, 80);
  AssertNotNil(F, 'fpixCreate');
  W := 0;
  H := 0;
  Lept.FPix.FPixGetDimensions(F, @W, @H);
  AssertEqualsInt(100, W, 'width');
  AssertEqualsInt(80, H, 'height');
  Lept.FPix.FPixDestroy(@F);
end;

procedure Test_Func_fpixSetGetPixel;
var
  F: Pointer;
  Val: Single;
begin
  F := Lept.FPix.FPixCreate(10, 10);
  Lept.FPix.FPixSetPixel(F, 5, 5, 3.14);
  Val := 0;
  Lept.FPix.FPixGetPixel(F, 5, 5, @Val);
  AssertTrue(Abs(Val - 3.14) < 0.01, 'fpix pixel value');
  Lept.FPix.FPixDestroy(@F);
end;

procedure Test_Func_fpixCopy;
var
  F, C: Pointer;
  W, H: Integer;
begin
  F := Lept.FPix.FPixCreate(60, 40);
  C := Lept.FPix.FPixCopy(F);
  AssertNotNil(C, 'fpixCopy');
  W := 0;
  H := 0;
  Lept.FPix.FPixGetDimensions(C, @W, @H);
  AssertEqualsInt(60, W, 'copy width');
  Lept.FPix.FPixDestroy(@C);
  Lept.FPix.FPixDestroy(@F);
end;

initialization
  RegisterTest('FPix', 'fpixaConvertXYZToRGB', @Test_fpixaConvertXYZToRGB, []);
  RegisterTest('FPix', 'fpixaConvertXYZToLAB', @Test_fpixaConvertXYZToLAB, []);
  RegisterTest('FPix', 'fpixaConvertLABToXYZ', @Test_fpixaConvertLABToXYZ, []);
  RegisterTest('FPix', 'fpixaConvertLABToRGB', @Test_fpixaConvertLABToRGB, []);
  RegisterTest('FPix', 'fpixConvolve', @Test_fpixConvolve, []);
  RegisterTest('FPix', 'fpixConvolveSep', @Test_fpixConvolveSep, []);
  RegisterTest('FPix', 'fpixCreate', @Test_fpixCreate, []);
  RegisterTest('FPix', 'fpixCreateTemplate', @Test_fpixCreateTemplate, []);
  RegisterTest('FPix', 'fpixClone', @Test_fpixClone, []);
  RegisterTest('FPix', 'fpixCopy', @Test_fpixCopy, []);
  RegisterTest('FPix', 'fpixDestroy', @Test_fpixDestroy, []);
  RegisterTest('FPix', 'fpixGetDimensions', @Test_fpixGetDimensions, []);
  RegisterTest('FPix', 'fpixSetDimensions', @Test_fpixSetDimensions, []);
  RegisterTest('FPix', 'fpixGetWpl', @Test_fpixGetWpl, []);
  RegisterTest('FPix', 'fpixSetWpl', @Test_fpixSetWpl, []);
  RegisterTest('FPix', 'fpixGetResolution', @Test_fpixGetResolution, []);
  RegisterTest('FPix', 'fpixSetResolution', @Test_fpixSetResolution, []);
  RegisterTest('FPix', 'fpixCopyResolution', @Test_fpixCopyResolution, []);
  RegisterTest('FPix', 'fpixGetData', @Test_fpixGetData, []);
  RegisterTest('FPix', 'fpixSetData', @Test_fpixSetData, []);
  RegisterTest('FPix', 'fpixGetPixel', @Test_fpixGetPixel, []);
  RegisterTest('FPix', 'fpixSetPixel', @Test_fpixSetPixel, []);
  RegisterTest('FPix', 'fpixaCreate', @Test_fpixaCreate, []);
  RegisterTest('FPix', 'fpixaCopy', @Test_fpixaCopy, []);
  RegisterTest('FPix', 'fpixaDestroy', @Test_fpixaDestroy, []);
  RegisterTest('FPix', 'fpixaAddFPix', @Test_fpixaAddFPix, []);
  RegisterTest('FPix', 'fpixaGetCount', @Test_fpixaGetCount, []);
  RegisterTest('FPix', 'fpixaGetFPix', @Test_fpixaGetFPix, []);
  RegisterTest('FPix', 'fpixaGetFPixDimensions', @Test_fpixaGetFPixDimensions, []);
  RegisterTest('FPix', 'fpixaGetData', @Test_fpixaGetData, []);
  RegisterTest('FPix', 'fpixaGetPixel', @Test_fpixaGetPixel, []);
  RegisterTest('FPix', 'fpixaSetPixel', @Test_fpixaSetPixel, []);
  RegisterTest('FPix', 'dpixCreate', @Test_dpixCreate, []);
  RegisterTest('FPix', 'dpixCreateTemplate', @Test_dpixCreateTemplate, []);
  RegisterTest('FPix', 'dpixClone', @Test_dpixClone, []);
  RegisterTest('FPix', 'dpixCopy', @Test_dpixCopy, []);
  RegisterTest('FPix', 'dpixDestroy', @Test_dpixDestroy, []);
  RegisterTest('FPix', 'dpixGetDimensions', @Test_dpixGetDimensions, []);
  RegisterTest('FPix', 'dpixSetDimensions', @Test_dpixSetDimensions, []);
  RegisterTest('FPix', 'dpixGetWpl', @Test_dpixGetWpl, []);
  RegisterTest('FPix', 'dpixSetWpl', @Test_dpixSetWpl, []);
  RegisterTest('FPix', 'dpixGetResolution', @Test_dpixGetResolution, []);
  RegisterTest('FPix', 'dpixSetResolution', @Test_dpixSetResolution, []);
  RegisterTest('FPix', 'dpixCopyResolution', @Test_dpixCopyResolution, []);
  RegisterTest('FPix', 'dpixGetData', @Test_dpixGetData, []);
  RegisterTest('FPix', 'dpixSetData', @Test_dpixSetData, []);
  RegisterTest('FPix', 'dpixGetPixel', @Test_dpixGetPixel, []);
  RegisterTest('FPix', 'dpixSetPixel', @Test_dpixSetPixel, []);
  RegisterTest('FPix', 'fpixRead', @Test_fpixRead, []);
  RegisterTest('FPix', 'fpixReadStream', @Test_fpixReadStream, []);
  RegisterTest('FPix', 'fpixReadMem', @Test_fpixReadMem, []);
  RegisterTest('FPix', 'fpixWrite', @Test_fpixWrite, []);
  RegisterTest('FPix', 'fpixWriteStream', @Test_fpixWriteStream, []);
  RegisterTest('FPix', 'fpixWriteMem', @Test_fpixWriteMem, []);
  RegisterTest('FPix', 'fpixEndianByteSwap', @Test_fpixEndianByteSwap, []);
  RegisterTest('FPix', 'dpixRead', @Test_dpixRead, []);
  RegisterTest('FPix', 'dpixReadStream', @Test_dpixReadStream, []);
  RegisterTest('FPix', 'dpixReadMem', @Test_dpixReadMem, []);
  RegisterTest('FPix', 'dpixWrite', @Test_dpixWrite, []);
  RegisterTest('FPix', 'dpixWriteStream', @Test_dpixWriteStream, []);
  RegisterTest('FPix', 'dpixWriteMem', @Test_dpixWriteMem, []);
  RegisterTest('FPix', 'dpixEndianByteSwap', @Test_dpixEndianByteSwap, []);
  RegisterTest('FPix', 'fpixPrintStream', @Test_fpixPrintStream, []);
  RegisterTest('FPix', 'fpixConvertToPix', @Test_fpixConvertToPix, []);
  RegisterTest('FPix', 'fpixDisplayMaxDynamicRange', @Test_fpixDisplayMaxDynamicRange, []);
  RegisterTest('FPix', 'fpixConvertToDPix', @Test_fpixConvertToDPix, []);
  RegisterTest('FPix', 'dpixConvertToPix', @Test_dpixConvertToPix, []);
  RegisterTest('FPix', 'dpixConvertToFPix', @Test_dpixConvertToFPix, []);
  RegisterTest('FPix', 'fpixGetMin', @Test_fpixGetMin, []);
  RegisterTest('FPix', 'fpixGetMax', @Test_fpixGetMax, []);
  RegisterTest('FPix', 'dpixGetMin', @Test_dpixGetMin, []);
  RegisterTest('FPix', 'dpixGetMax', @Test_dpixGetMax, []);
  RegisterTest('FPix', 'fpixScaleByInteger', @Test_fpixScaleByInteger, []);
  RegisterTest('FPix', 'dpixScaleByInteger', @Test_dpixScaleByInteger, []);
  RegisterTest('FPix', 'fpixLinearCombination', @Test_fpixLinearCombination, []);
  RegisterTest('FPix', 'fpixAddMultConstant', @Test_fpixAddMultConstant, []);
  RegisterTest('FPix', 'dpixLinearCombination', @Test_dpixLinearCombination, []);
  RegisterTest('FPix', 'dpixAddMultConstant', @Test_dpixAddMultConstant, []);
  RegisterTest('FPix', 'fpixSetAllArbitrary', @Test_fpixSetAllArbitrary, []);
  RegisterTest('FPix', 'dpixSetAllArbitrary', @Test_dpixSetAllArbitrary, []);
  RegisterTest('FPix', 'fpixAddBorder', @Test_fpixAddBorder, []);
  RegisterTest('FPix', 'fpixRemoveBorder', @Test_fpixRemoveBorder, []);
  RegisterTest('FPix', 'fpixAddMirroredBorder', @Test_fpixAddMirroredBorder, []);
  RegisterTest('FPix', 'fpixAddContinuedBorder', @Test_fpixAddContinuedBorder, []);
  RegisterTest('FPix', 'fpixAddSlopeBorder', @Test_fpixAddSlopeBorder, []);
  RegisterTest('FPix', 'fpixRasterop', @Test_fpixRasterop, []);
  RegisterTest('FPix', 'fpixRotateOrth', @Test_fpixRotateOrth, []);
  RegisterTest('FPix', 'fpixRotate180', @Test_fpixRotate180, []);
  RegisterTest('FPix', 'fpixRotate90', @Test_fpixRotate90, []);
  RegisterTest('FPix', 'fpixFlipLR', @Test_fpixFlipLR, []);
  RegisterTest('FPix', 'fpixFlipTB', @Test_fpixFlipTB, []);
  RegisterTest('FPix', 'fpixAffinePta', @Test_fpixAffinePta, []);
  RegisterTest('FPix', 'fpixAffine', @Test_fpixAffine, []);
  RegisterTest('FPix', 'fpixProjectivePta', @Test_fpixProjectivePta, []);
  RegisterTest('FPix', 'fpixProjective', @Test_fpixProjective, []);
  RegisterTest('FPix', 'fpixThresholdToPix', @Test_fpixThresholdToPix, []);
  RegisterTest('FPix', 'fpixAutoRenderContours', @Test_fpixAutoRenderContours, []);
  RegisterTest('FPix', 'fpixRenderContours', @Test_fpixRenderContours, []);
  RegisterTest('FPix', 'fpixaDisplayQuadtree', @Test_fpixaDisplayQuadtree, []);

  RegisterTest('FPix', 'Func_fpixCreate', @Test_Func_fpixCreate, []);
  RegisterTest('FPix', 'Func_fpixSetGetPixel', @Test_Func_fpixSetGetPixel, []);
  RegisterTest('FPix', 'Func_fpixCopy', @Test_Func_fpixCopy, []);

end.
