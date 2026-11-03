{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestTransform;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_pixAffineSampledPta;
begin
  AssertFuncLoaded(@Lept.Transform.PixAffineSampledPta, 'pixAffineSampledPta');
end;

procedure Test_pixAffineSampled;
begin
  AssertFuncLoaded(@Lept.Transform.PixAffineSampled, 'pixAffineSampled');
end;

procedure Test_pixAffinePta;
begin
  AssertFuncLoaded(@Lept.Transform.PixAffinePta, 'pixAffinePta');
end;

procedure Test_pixAffine;
begin
  AssertFuncLoaded(@Lept.Transform.PixAffine, 'pixAffine');
end;

procedure Test_pixAffinePtaColor;
begin
  AssertFuncLoaded(@Lept.Transform.PixAffinePtaColor, 'pixAffinePtaColor');
end;

procedure Test_pixAffineColor;
begin
  AssertFuncLoaded(@Lept.Transform.PixAffineColor, 'pixAffineColor');
end;

procedure Test_pixAffinePtaGray;
begin
  AssertFuncLoaded(@Lept.Transform.PixAffinePtaGray, 'pixAffinePtaGray');
end;

procedure Test_pixAffineGray;
begin
  AssertFuncLoaded(@Lept.Transform.PixAffineGray, 'pixAffineGray');
end;

procedure Test_pixAffinePtaWithAlpha;
begin
  AssertFuncLoaded(@Lept.Transform.PixAffinePtaWithAlpha, 'pixAffinePtaWithAlpha');
end;

procedure Test_getAffineXformCoeffs;
begin
  AssertFuncLoaded(@Lept.Transform.GetAffineXformCoeffs, 'getAffineXformCoeffs');
end;

procedure Test_affineInvertXform;
begin
  AssertFuncLoaded(@Lept.Transform.AffineInvertXform, 'affineInvertXform');
end;

procedure Test_affineXformSampledPt;
begin
  AssertFuncLoaded(@Lept.Transform.AffineXformSampledPt, 'affineXformSampledPt');
end;

procedure Test_affineXformPt;
begin
  AssertFuncLoaded(@Lept.Transform.AffineXformPt, 'affineXformPt');
end;

procedure Test_linearInterpolatePixelColor;
begin
  AssertFuncLoaded(@Lept.Transform.LinearInterpolatePixelColor, 'linearInterpolatePixelColor');
end;

procedure Test_linearInterpolatePixelGray;
begin
  AssertFuncLoaded(@Lept.Transform.LinearInterpolatePixelGray, 'linearInterpolatePixelGray');
end;

procedure Test_gaussjordan;
begin
  AssertFuncLoaded(@Lept.Transform.Gaussjordan, 'gaussjordan');
end;

procedure Test_pixAffineSequential;
begin
  AssertFuncLoaded(@Lept.Transform.PixAffineSequential, 'pixAffineSequential');
end;

procedure Test_createMatrix2dTranslate;
begin
  AssertFuncLoaded(@Lept.Transform.CreateMatrix2dTranslate, 'createMatrix2dTranslate');
end;

procedure Test_createMatrix2dScale;
begin
  AssertFuncLoaded(@Lept.Transform.CreateMatrix2dScale, 'createMatrix2dScale');
end;

procedure Test_createMatrix2dRotate;
begin
  AssertFuncLoaded(@Lept.Transform.CreateMatrix2dRotate, 'createMatrix2dRotate');
end;

procedure Test_l_productMatVec;
begin
  AssertFuncLoaded(@Lept.Transform.L_productMatVec, 'l_productMatVec');
end;

procedure Test_l_productMat2;
begin
  AssertFuncLoaded(@Lept.Transform.L_productMat2, 'l_productMat2');
end;

procedure Test_l_productMat3;
begin
  AssertFuncLoaded(@Lept.Transform.L_productMat3, 'l_productMat3');
end;

procedure Test_l_productMat4;
begin
  AssertFuncLoaded(@Lept.Transform.L_productMat4, 'l_productMat4');
end;

procedure Test_pixBilinearSampledPta;
begin
  AssertFuncLoaded(@Lept.Transform.PixBilinearSampledPta, 'pixBilinearSampledPta');
end;

procedure Test_pixBilinearSampled;
begin
  AssertFuncLoaded(@Lept.Transform.PixBilinearSampled, 'pixBilinearSampled');
end;

procedure Test_pixBilinearPta;
begin
  AssertFuncLoaded(@Lept.Transform.PixBilinearPta, 'pixBilinearPta');
end;

procedure Test_pixBilinear;
begin
  AssertFuncLoaded(@Lept.Transform.PixBilinear, 'pixBilinear');
end;

procedure Test_pixBilinearPtaColor;
begin
  AssertFuncLoaded(@Lept.Transform.PixBilinearPtaColor, 'pixBilinearPtaColor');
end;

procedure Test_pixBilinearColor;
begin
  AssertFuncLoaded(@Lept.Transform.PixBilinearColor, 'pixBilinearColor');
end;

procedure Test_pixBilinearPtaGray;
begin
  AssertFuncLoaded(@Lept.Transform.PixBilinearPtaGray, 'pixBilinearPtaGray');
end;

procedure Test_pixBilinearGray;
begin
  AssertFuncLoaded(@Lept.Transform.PixBilinearGray, 'pixBilinearGray');
end;

procedure Test_pixBilinearPtaWithAlpha;
begin
  AssertFuncLoaded(@Lept.Transform.PixBilinearPtaWithAlpha, 'pixBilinearPtaWithAlpha');
end;

procedure Test_getBilinearXformCoeffs;
begin
  AssertFuncLoaded(@Lept.Transform.GetBilinearXformCoeffs, 'getBilinearXformCoeffs');
end;

procedure Test_bilinearXformSampledPt;
begin
  AssertFuncLoaded(@Lept.Transform.BilinearXformSampledPt, 'bilinearXformSampledPt');
end;

procedure Test_bilinearXformPt;
begin
  AssertFuncLoaded(@Lept.Transform.BilinearXformPt, 'bilinearXformPt');
end;

procedure Test_pixExpandBinaryReplicate;
begin
  AssertFuncLoaded(@Lept.Transform.PixExpandBinaryReplicate, 'pixExpandBinaryReplicate');
end;

procedure Test_pixExpandBinaryPower2;
begin
  AssertFuncLoaded(@Lept.Transform.PixExpandBinaryPower2, 'pixExpandBinaryPower2');
end;

procedure Test_pixReduceBinary2;
begin
  AssertFuncLoaded(@Lept.Transform.PixReduceBinary2, 'pixReduceBinary2');
end;

procedure Test_pixReduceRankBinaryCascade;
begin
  AssertFuncLoaded(@Lept.Transform.PixReduceRankBinaryCascade, 'pixReduceRankBinaryCascade');
end;

procedure Test_pixReduceRankBinary2;
begin
  AssertFuncLoaded(@Lept.Transform.PixReduceRankBinary2, 'pixReduceRankBinary2');
end;

procedure Test_makeSubsampleTab2x;
begin
  AssertFuncLoaded(@Lept.Transform.MakeSubsampleTab2x, 'makeSubsampleTab2x');
end;

procedure Test_linearInterpolatePixelFloat;
begin
  AssertFuncLoaded(@Lept.Transform.LinearInterpolatePixelFloat, 'linearInterpolatePixelFloat');
end;

procedure Test_pixScaleResolution;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleResolution, 'pixScaleResolution');
end;

procedure Test_pixProjectiveSampledPta;
begin
  AssertFuncLoaded(@Lept.Transform.PixProjectiveSampledPta, 'pixProjectiveSampledPta');
end;

procedure Test_pixProjectiveSampled;
begin
  AssertFuncLoaded(@Lept.Transform.PixProjectiveSampled, 'pixProjectiveSampled');
end;

procedure Test_pixProjectivePta;
begin
  AssertFuncLoaded(@Lept.Transform.PixProjectivePta, 'pixProjectivePta');
end;

procedure Test_pixProjective;
begin
  AssertFuncLoaded(@Lept.Transform.PixProjective, 'pixProjective');
end;

procedure Test_pixProjectivePtaColor;
begin
  AssertFuncLoaded(@Lept.Transform.PixProjectivePtaColor, 'pixProjectivePtaColor');
end;

procedure Test_pixProjectiveColor;
begin
  AssertFuncLoaded(@Lept.Transform.PixProjectiveColor, 'pixProjectiveColor');
end;

procedure Test_pixProjectivePtaGray;
begin
  AssertFuncLoaded(@Lept.Transform.PixProjectivePtaGray, 'pixProjectivePtaGray');
end;

procedure Test_pixProjectiveGray;
begin
  AssertFuncLoaded(@Lept.Transform.PixProjectiveGray, 'pixProjectiveGray');
end;

procedure Test_pixProjectivePtaWithAlpha;
begin
  AssertFuncLoaded(@Lept.Transform.PixProjectivePtaWithAlpha, 'pixProjectivePtaWithAlpha');
end;

procedure Test_getProjectiveXformCoeffs;
begin
  AssertFuncLoaded(@Lept.Transform.GetProjectiveXformCoeffs, 'getProjectiveXformCoeffs');
end;

procedure Test_projectiveXformSampledPt;
begin
  AssertFuncLoaded(@Lept.Transform.ProjectiveXformSampledPt, 'projectiveXformSampledPt');
end;

procedure Test_projectiveXformPt;
begin
  AssertFuncLoaded(@Lept.Transform.ProjectiveXformPt, 'projectiveXformPt');
end;

procedure Test_pixTranslate;
begin
  AssertFuncLoaded(@Lept.Transform.PixTranslate, 'pixTranslate');
end;

procedure Test_pixRotate;
begin
  AssertFuncLoaded(@Lept.Transform.PixRotate, 'pixRotate');
end;

procedure Test_pixRotateBySampling;
begin
  AssertFuncLoaded(@Lept.Transform.PixRotateBySampling, 'pixRotateBySampling');
end;

procedure Test_pixRotateBinaryNice;
begin
  AssertFuncLoaded(@Lept.Transform.PixRotateBinaryNice, 'pixRotateBinaryNice');
end;

procedure Test_pixRotateWithAlpha;
begin
  AssertFuncLoaded(@Lept.Transform.PixRotateWithAlpha, 'pixRotateWithAlpha');
end;

procedure Test_pixRotateAM;
begin
  AssertFuncLoaded(@Lept.Transform.PixRotateAM, 'pixRotateAM');
end;

procedure Test_pixRotateAMColor;
begin
  AssertFuncLoaded(@Lept.Transform.PixRotateAMColor, 'pixRotateAMColor');
end;

procedure Test_pixRotateAMGray;
begin
  AssertFuncLoaded(@Lept.Transform.PixRotateAMGray, 'pixRotateAMGray');
end;

procedure Test_pixRotateAMCorner;
begin
  AssertFuncLoaded(@Lept.Transform.PixRotateAMCorner, 'pixRotateAMCorner');
end;

procedure Test_pixRotateAMColorCorner;
begin
  AssertFuncLoaded(@Lept.Transform.PixRotateAMColorCorner, 'pixRotateAMColorCorner');
end;

procedure Test_pixRotateAMGrayCorner;
begin
  AssertFuncLoaded(@Lept.Transform.PixRotateAMGrayCorner, 'pixRotateAMGrayCorner');
end;

procedure Test_pixRotateAMColorFast;
begin
  AssertFuncLoaded(@Lept.Transform.PixRotateAMColorFast, 'pixRotateAMColorFast');
end;

procedure Test_pixRotateOrth;
begin
  AssertFuncLoaded(@Lept.Transform.PixRotateOrth, 'pixRotateOrth');
end;

procedure Test_pixRotate180;
begin
  AssertFuncLoaded(@Lept.Transform.PixRotate180, 'pixRotate180');
end;

procedure Test_pixRotate90;
begin
  AssertFuncLoaded(@Lept.Transform.PixRotate90, 'pixRotate90');
end;

procedure Test_pixFlipLR;
begin
  AssertFuncLoaded(@Lept.Transform.PixFlipLR, 'pixFlipLR');
end;

procedure Test_pixFlipTB;
begin
  AssertFuncLoaded(@Lept.Transform.PixFlipTB, 'pixFlipTB');
end;

procedure Test_pixRotateShear;
begin
  AssertFuncLoaded(@Lept.Transform.PixRotateShear, 'pixRotateShear');
end;

procedure Test_pixRotate2Shear;
begin
  AssertFuncLoaded(@Lept.Transform.PixRotate2Shear, 'pixRotate2Shear');
end;

procedure Test_pixRotate3Shear;
begin
  AssertFuncLoaded(@Lept.Transform.PixRotate3Shear, 'pixRotate3Shear');
end;

procedure Test_pixRotateShearIP;
begin
  AssertFuncLoaded(@Lept.Transform.PixRotateShearIP, 'pixRotateShearIP');
end;

procedure Test_pixRotateShearCenter;
begin
  AssertFuncLoaded(@Lept.Transform.PixRotateShearCenter, 'pixRotateShearCenter');
end;

procedure Test_pixRotateShearCenterIP;
begin
  AssertFuncLoaded(@Lept.Transform.PixRotateShearCenterIP, 'pixRotateShearCenterIP');
end;

procedure Test_pixScaleToSizeRel;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleToSizeRel, 'pixScaleToSizeRel');
end;

procedure Test_pixScaleToSize;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleToSize, 'pixScaleToSize');
end;

procedure Test_pixScaleToResolution;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleToResolution, 'pixScaleToResolution');
end;

procedure Test_pixScaleGeneral;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleGeneral, 'pixScaleGeneral');
end;

procedure Test_pixScaleLI;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleLI, 'pixScaleLI');
end;

procedure Test_pixScaleColorLI;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleColorLI, 'pixScaleColorLI');
end;

procedure Test_pixScaleColor2xLI;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleColor2xLI, 'pixScaleColor2xLI');
end;

procedure Test_pixScaleColor4xLI;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleColor4xLI, 'pixScaleColor4xLI');
end;

procedure Test_pixScaleGrayLI;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleGrayLI, 'pixScaleGrayLI');
end;

procedure Test_pixScaleGray2xLI;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleGray2xLI, 'pixScaleGray2xLI');
end;

procedure Test_pixScaleGray4xLI;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleGray4xLI, 'pixScaleGray4xLI');
end;

procedure Test_pixScaleGray2xLIThresh;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleGray2xLIThresh, 'pixScaleGray2xLIThresh');
end;

procedure Test_pixScaleGray2xLIDither;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleGray2xLIDither, 'pixScaleGray2xLIDither');
end;

procedure Test_pixScaleGray4xLIThresh;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleGray4xLIThresh, 'pixScaleGray4xLIThresh');
end;

procedure Test_pixScaleGray4xLIDither;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleGray4xLIDither, 'pixScaleGray4xLIDither');
end;

procedure Test_pixScaleBySampling;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleBySampling, 'pixScaleBySampling');
end;

procedure Test_pixScaleBySamplingWithShift;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleBySamplingWithShift, 'pixScaleBySamplingWithShift');
end;

procedure Test_pixScaleBySamplingToSize;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleBySamplingToSize, 'pixScaleBySamplingToSize');
end;

procedure Test_pixScaleByIntSampling;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleByIntSampling, 'pixScaleByIntSampling');
end;

procedure Test_pixScaleRGBToGrayFast;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleRGBToGrayFast, 'pixScaleRGBToGrayFast');
end;

procedure Test_pixScaleRGBToBinaryFast;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleRGBToBinaryFast, 'pixScaleRGBToBinaryFast');
end;

procedure Test_pixScaleGrayToBinaryFast;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleGrayToBinaryFast, 'pixScaleGrayToBinaryFast');
end;

procedure Test_pixScaleSmooth;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleSmooth, 'pixScaleSmooth');
end;

procedure Test_pixScaleSmoothToSize;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleSmoothToSize, 'pixScaleSmoothToSize');
end;

procedure Test_pixScaleRGBToGray2;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleRGBToGray2, 'pixScaleRGBToGray2');
end;

procedure Test_pixScaleAreaMap;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleAreaMap, 'pixScaleAreaMap');
end;

procedure Test_pixScaleAreaMap2;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleAreaMap2, 'pixScaleAreaMap2');
end;

procedure Test_pixScaleAreaMapToSize;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleAreaMapToSize, 'pixScaleAreaMapToSize');
end;

procedure Test_pixScaleBinary;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleBinary, 'pixScaleBinary');
end;

procedure Test_pixScaleBinaryWithShift;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleBinaryWithShift, 'pixScaleBinaryWithShift');
end;

procedure Test_pixScaleToGray;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleToGray, 'pixScaleToGray');
end;

procedure Test_pixScaleToGrayFast;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleToGrayFast, 'pixScaleToGrayFast');
end;

procedure Test_pixScaleToGray2;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleToGray2, 'pixScaleToGray2');
end;

procedure Test_pixScaleToGray3;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleToGray3, 'pixScaleToGray3');
end;

procedure Test_pixScaleToGray4;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleToGray4, 'pixScaleToGray4');
end;

procedure Test_pixScaleToGray6;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleToGray6, 'pixScaleToGray6');
end;

procedure Test_pixScaleToGray8;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleToGray8, 'pixScaleToGray8');
end;

procedure Test_pixScaleToGray16;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleToGray16, 'pixScaleToGray16');
end;

procedure Test_pixScaleToGrayMipmap;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleToGrayMipmap, 'pixScaleToGrayMipmap');
end;

procedure Test_pixScaleMipmap;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleMipmap, 'pixScaleMipmap');
end;

procedure Test_pixScaleGrayMinMax;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleGrayMinMax, 'pixScaleGrayMinMax');
end;

procedure Test_pixScaleGrayMinMax2;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleGrayMinMax2, 'pixScaleGrayMinMax2');
end;

procedure Test_pixScaleGrayRankCascade;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleGrayRankCascade, 'pixScaleGrayRankCascade');
end;

procedure Test_pixScaleGrayRank2;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleGrayRank2, 'pixScaleGrayRank2');
end;

procedure Test_pixScaleAndTransferAlpha;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleAndTransferAlpha, 'pixScaleAndTransferAlpha');
end;

procedure Test_pixScaleWithAlpha;
begin
  AssertFuncLoaded(@Lept.Transform.PixScaleWithAlpha, 'pixScaleWithAlpha');
end;

procedure Test_pixHShear;
begin
  AssertFuncLoaded(@Lept.Transform.PixHShear, 'pixHShear');
end;

procedure Test_pixVShear;
begin
  AssertFuncLoaded(@Lept.Transform.PixVShear, 'pixVShear');
end;

procedure Test_pixHShearCorner;
begin
  AssertFuncLoaded(@Lept.Transform.PixHShearCorner, 'pixHShearCorner');
end;

procedure Test_pixVShearCorner;
begin
  AssertFuncLoaded(@Lept.Transform.PixVShearCorner, 'pixVShearCorner');
end;

procedure Test_pixHShearCenter;
begin
  AssertFuncLoaded(@Lept.Transform.PixHShearCenter, 'pixHShearCenter');
end;

procedure Test_pixVShearCenter;
begin
  AssertFuncLoaded(@Lept.Transform.PixVShearCenter, 'pixVShearCenter');
end;

procedure Test_pixHShearIP;
begin
  AssertFuncLoaded(@Lept.Transform.PixHShearIP, 'pixHShearIP');
end;

procedure Test_pixVShearIP;
begin
  AssertFuncLoaded(@Lept.Transform.PixVShearIP, 'pixVShearIP');
end;

procedure Test_pixHShearLI;
begin
  AssertFuncLoaded(@Lept.Transform.PixHShearLI, 'pixHShearLI');
end;

procedure Test_pixVShearLI;
begin
  AssertFuncLoaded(@Lept.Transform.PixVShearLI, 'pixVShearLI');
end;

procedure Test_pixWarpStereoscopic;
begin
  AssertFuncLoaded(@Lept.Transform.PixWarpStereoscopic, 'pixWarpStereoscopic');
end;

procedure Test_Func_pixRotate90;
var
  P, R: Pointer;
begin
  P := CreateColorPix(100, 60);
  R := Lept.Transform.PixRotate90(P, 1);
  AssertNotNil(R, 'rotate90');
  AssertEqualsInt(60, Lept.Pix.PixGetWidth(R), 'rotated width');
  AssertEqualsInt(100, Lept.Pix.PixGetHeight(R), 'rotated height');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

procedure Test_Func_pixRotate180;
var
  P, R: Pointer;
begin
  P := CreateColorPix(80, 60);
  R := Lept.Transform.PixRotate180(nil, P);
  AssertNotNil(R, 'rotate180');
  AssertEqualsInt(80, Lept.Pix.PixGetWidth(R), 'same width');
  AssertEqualsInt(60, Lept.Pix.PixGetHeight(R), 'same height');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

procedure Test_Func_pixFlipLR;
var
  P, R: Pointer;
begin
  P := CreateGrayPix(50, 40);
  Lept.Pix.PixSetPixel(P, 0, 0, 200);
  R := Lept.Transform.PixFlipLR(nil, P);
  AssertNotNil(R, 'flipLR');
  SafePixDestroy(P);
  Lept.Pix.PixDestroy(@R);
end;

procedure Test_Func_pixFlipTB;
var
  P, R: Pointer;
begin
  P := CreateGrayPix(50, 40);
  R := Lept.Transform.PixFlipTB(nil, P);
  AssertNotNil(R, 'flipTB');
  SafePixDestroy(P);
  Lept.Pix.PixDestroy(@R);
end;

procedure Test_Func_pixScaleLI;
var
  P, R: Pointer;
begin
  P := CreateColorPix(100, 80);
  R := Lept.Transform.PixScaleLI(P, 0.5, 0.5);
  AssertNotNil(R, 'scaleLI');
  AssertEqualsInt(50, Lept.Pix.PixGetWidth(R), 'scaled width');
  AssertEqualsInt(40, Lept.Pix.PixGetHeight(R), 'scaled height');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

procedure Test_Func_pixScaleToSize;
var
  P, R: Pointer;
begin
  P := CreateColorPix(200, 100);
  R := Lept.Transform.PixScaleToSize(P, 100, 50);
  AssertNotNil(R, 'scaleToSize');
  AssertEqualsInt(100, Lept.Pix.PixGetWidth(R), 'target width');
  AssertEqualsInt(50, Lept.Pix.PixGetHeight(R), 'target height');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

procedure Test_Func_pixTranslate;
var
  P, R: Pointer;
begin
  P := CreateGrayPix(100, 100);
  R := Lept.Transform.PixTranslate(nil, P, 10, 20, 1);
  AssertNotNil(R, 'translate');
  AssertEqualsInt(100, Lept.Pix.PixGetWidth(R), 'same width');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

procedure Test_Func_pixRotateOrth;
var
  P, R: Pointer;
begin
  P := CreateColorPix(100, 60);
  R := Lept.Transform.PixRotateOrth(P, 2);
  AssertNotNil(R, 'rotateOrth');
  AssertEqualsInt(100, Lept.Pix.PixGetWidth(R), 'width after 180');
  AssertEqualsInt(60, Lept.Pix.PixGetHeight(R), 'height after 180');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

initialization
  RegisterTest('Transform', 'pixAffineSampledPta', @Test_pixAffineSampledPta, []);
  RegisterTest('Transform', 'pixAffineSampled', @Test_pixAffineSampled, []);
  RegisterTest('Transform', 'pixAffinePta', @Test_pixAffinePta, []);
  RegisterTest('Transform', 'pixAffine', @Test_pixAffine, []);
  RegisterTest('Transform', 'pixAffinePtaColor', @Test_pixAffinePtaColor, []);
  RegisterTest('Transform', 'pixAffineColor', @Test_pixAffineColor, []);
  RegisterTest('Transform', 'pixAffinePtaGray', @Test_pixAffinePtaGray, []);
  RegisterTest('Transform', 'pixAffineGray', @Test_pixAffineGray, []);
  RegisterTest('Transform', 'pixAffinePtaWithAlpha', @Test_pixAffinePtaWithAlpha, []);
  RegisterTest('Transform', 'getAffineXformCoeffs', @Test_getAffineXformCoeffs, []);
  RegisterTest('Transform', 'affineInvertXform', @Test_affineInvertXform, []);
  RegisterTest('Transform', 'affineXformSampledPt', @Test_affineXformSampledPt, []);
  RegisterTest('Transform', 'affineXformPt', @Test_affineXformPt, []);
  RegisterTest('Transform', 'linearInterpolatePixelColor', @Test_linearInterpolatePixelColor, []);
  RegisterTest('Transform', 'linearInterpolatePixelGray', @Test_linearInterpolatePixelGray, []);
  RegisterTest('Transform', 'gaussjordan', @Test_gaussjordan, []);
  RegisterTest('Transform', 'pixAffineSequential', @Test_pixAffineSequential, []);
  RegisterTest('Transform', 'createMatrix2dTranslate', @Test_createMatrix2dTranslate, []);
  RegisterTest('Transform', 'createMatrix2dScale', @Test_createMatrix2dScale, []);
  RegisterTest('Transform', 'createMatrix2dRotate', @Test_createMatrix2dRotate, []);
  RegisterTest('Transform', 'l_productMatVec', @Test_l_productMatVec, []);
  RegisterTest('Transform', 'l_productMat2', @Test_l_productMat2, []);
  RegisterTest('Transform', 'l_productMat3', @Test_l_productMat3, []);
  RegisterTest('Transform', 'l_productMat4', @Test_l_productMat4, []);
  RegisterTest('Transform', 'pixBilinearSampledPta', @Test_pixBilinearSampledPta, []);
  RegisterTest('Transform', 'pixBilinearSampled', @Test_pixBilinearSampled, []);
  RegisterTest('Transform', 'pixBilinearPta', @Test_pixBilinearPta, []);
  RegisterTest('Transform', 'pixBilinear', @Test_pixBilinear, []);
  RegisterTest('Transform', 'pixBilinearPtaColor', @Test_pixBilinearPtaColor, []);
  RegisterTest('Transform', 'pixBilinearColor', @Test_pixBilinearColor, []);
  RegisterTest('Transform', 'pixBilinearPtaGray', @Test_pixBilinearPtaGray, []);
  RegisterTest('Transform', 'pixBilinearGray', @Test_pixBilinearGray, []);
  RegisterTest('Transform', 'pixBilinearPtaWithAlpha', @Test_pixBilinearPtaWithAlpha, []);
  RegisterTest('Transform', 'getBilinearXformCoeffs', @Test_getBilinearXformCoeffs, []);
  RegisterTest('Transform', 'bilinearXformSampledPt', @Test_bilinearXformSampledPt, []);
  RegisterTest('Transform', 'bilinearXformPt', @Test_bilinearXformPt, []);
  RegisterTest('Transform', 'pixExpandBinaryReplicate', @Test_pixExpandBinaryReplicate, []);
  RegisterTest('Transform', 'pixExpandBinaryPower2', @Test_pixExpandBinaryPower2, []);
  RegisterTest('Transform', 'pixReduceBinary2', @Test_pixReduceBinary2, []);
  RegisterTest('Transform', 'pixReduceRankBinaryCascade', @Test_pixReduceRankBinaryCascade, []);
  RegisterTest('Transform', 'pixReduceRankBinary2', @Test_pixReduceRankBinary2, []);
  RegisterTest('Transform', 'makeSubsampleTab2x', @Test_makeSubsampleTab2x, []);
  RegisterTest('Transform', 'linearInterpolatePixelFloat', @Test_linearInterpolatePixelFloat, []);
  RegisterTest('Transform', 'pixScaleResolution', @Test_pixScaleResolution, []);
  RegisterTest('Transform', 'pixProjectiveSampledPta', @Test_pixProjectiveSampledPta, []);
  RegisterTest('Transform', 'pixProjectiveSampled', @Test_pixProjectiveSampled, []);
  RegisterTest('Transform', 'pixProjectivePta', @Test_pixProjectivePta, []);
  RegisterTest('Transform', 'pixProjective', @Test_pixProjective, []);
  RegisterTest('Transform', 'pixProjectivePtaColor', @Test_pixProjectivePtaColor, []);
  RegisterTest('Transform', 'pixProjectiveColor', @Test_pixProjectiveColor, []);
  RegisterTest('Transform', 'pixProjectivePtaGray', @Test_pixProjectivePtaGray, []);
  RegisterTest('Transform', 'pixProjectiveGray', @Test_pixProjectiveGray, []);
  RegisterTest('Transform', 'pixProjectivePtaWithAlpha', @Test_pixProjectivePtaWithAlpha, []);
  RegisterTest('Transform', 'getProjectiveXformCoeffs', @Test_getProjectiveXformCoeffs, []);
  RegisterTest('Transform', 'projectiveXformSampledPt', @Test_projectiveXformSampledPt, []);
  RegisterTest('Transform', 'projectiveXformPt', @Test_projectiveXformPt, []);
  RegisterTest('Transform', 'pixTranslate', @Test_pixTranslate, []);
  RegisterTest('Transform', 'pixRotate', @Test_pixRotate, []);
  RegisterTest('Transform', 'pixRotateBySampling', @Test_pixRotateBySampling, []);
  RegisterTest('Transform', 'pixRotateBinaryNice', @Test_pixRotateBinaryNice, []);
  RegisterTest('Transform', 'pixRotateWithAlpha', @Test_pixRotateWithAlpha, []);
  RegisterTest('Transform', 'pixRotateAM', @Test_pixRotateAM, []);
  RegisterTest('Transform', 'pixRotateAMColor', @Test_pixRotateAMColor, []);
  RegisterTest('Transform', 'pixRotateAMGray', @Test_pixRotateAMGray, []);
  RegisterTest('Transform', 'pixRotateAMCorner', @Test_pixRotateAMCorner, []);
  RegisterTest('Transform', 'pixRotateAMColorCorner', @Test_pixRotateAMColorCorner, []);
  RegisterTest('Transform', 'pixRotateAMGrayCorner', @Test_pixRotateAMGrayCorner, []);
  RegisterTest('Transform', 'pixRotateAMColorFast', @Test_pixRotateAMColorFast, []);
  RegisterTest('Transform', 'pixRotateOrth', @Test_pixRotateOrth, []);
  RegisterTest('Transform', 'pixRotate180', @Test_pixRotate180, []);
  RegisterTest('Transform', 'pixRotate90', @Test_pixRotate90, []);
  RegisterTest('Transform', 'pixFlipLR', @Test_pixFlipLR, []);
  RegisterTest('Transform', 'pixFlipTB', @Test_pixFlipTB, []);
  RegisterTest('Transform', 'pixRotateShear', @Test_pixRotateShear, []);
  RegisterTest('Transform', 'pixRotate2Shear', @Test_pixRotate2Shear, []);
  RegisterTest('Transform', 'pixRotate3Shear', @Test_pixRotate3Shear, []);
  RegisterTest('Transform', 'pixRotateShearIP', @Test_pixRotateShearIP, []);
  RegisterTest('Transform', 'pixRotateShearCenter', @Test_pixRotateShearCenter, []);
  RegisterTest('Transform', 'pixRotateShearCenterIP', @Test_pixRotateShearCenterIP, []);
  RegisterTest('Transform', 'pixScaleToSizeRel', @Test_pixScaleToSizeRel, []);
  RegisterTest('Transform', 'pixScaleToSize', @Test_pixScaleToSize, []);
  RegisterTest('Transform', 'pixScaleToResolution', @Test_pixScaleToResolution, []);
  RegisterTest('Transform', 'pixScaleGeneral', @Test_pixScaleGeneral, []);
  RegisterTest('Transform', 'pixScaleLI', @Test_pixScaleLI, []);
  RegisterTest('Transform', 'pixScaleColorLI', @Test_pixScaleColorLI, []);
  RegisterTest('Transform', 'pixScaleColor2xLI', @Test_pixScaleColor2xLI, []);
  RegisterTest('Transform', 'pixScaleColor4xLI', @Test_pixScaleColor4xLI, []);
  RegisterTest('Transform', 'pixScaleGrayLI', @Test_pixScaleGrayLI, []);
  RegisterTest('Transform', 'pixScaleGray2xLI', @Test_pixScaleGray2xLI, []);
  RegisterTest('Transform', 'pixScaleGray4xLI', @Test_pixScaleGray4xLI, []);
  RegisterTest('Transform', 'pixScaleGray2xLIThresh', @Test_pixScaleGray2xLIThresh, []);
  RegisterTest('Transform', 'pixScaleGray2xLIDither', @Test_pixScaleGray2xLIDither, []);
  RegisterTest('Transform', 'pixScaleGray4xLIThresh', @Test_pixScaleGray4xLIThresh, []);
  RegisterTest('Transform', 'pixScaleGray4xLIDither', @Test_pixScaleGray4xLIDither, []);
  RegisterTest('Transform', 'pixScaleBySampling', @Test_pixScaleBySampling, []);
  RegisterTest('Transform', 'pixScaleBySamplingWithShift', @Test_pixScaleBySamplingWithShift, []);
  RegisterTest('Transform', 'pixScaleBySamplingToSize', @Test_pixScaleBySamplingToSize, []);
  RegisterTest('Transform', 'pixScaleByIntSampling', @Test_pixScaleByIntSampling, []);
  RegisterTest('Transform', 'pixScaleRGBToGrayFast', @Test_pixScaleRGBToGrayFast, []);
  RegisterTest('Transform', 'pixScaleRGBToBinaryFast', @Test_pixScaleRGBToBinaryFast, []);
  RegisterTest('Transform', 'pixScaleGrayToBinaryFast', @Test_pixScaleGrayToBinaryFast, []);
  RegisterTest('Transform', 'pixScaleSmooth', @Test_pixScaleSmooth, []);
  RegisterTest('Transform', 'pixScaleSmoothToSize', @Test_pixScaleSmoothToSize, []);
  RegisterTest('Transform', 'pixScaleRGBToGray2', @Test_pixScaleRGBToGray2, []);
  RegisterTest('Transform', 'pixScaleAreaMap', @Test_pixScaleAreaMap, []);
  RegisterTest('Transform', 'pixScaleAreaMap2', @Test_pixScaleAreaMap2, []);
  RegisterTest('Transform', 'pixScaleAreaMapToSize', @Test_pixScaleAreaMapToSize, []);
  RegisterTest('Transform', 'pixScaleBinary', @Test_pixScaleBinary, []);
  RegisterTest('Transform', 'pixScaleBinaryWithShift', @Test_pixScaleBinaryWithShift, []);
  RegisterTest('Transform', 'pixScaleToGray', @Test_pixScaleToGray, []);
  RegisterTest('Transform', 'pixScaleToGrayFast', @Test_pixScaleToGrayFast, []);
  RegisterTest('Transform', 'pixScaleToGray2', @Test_pixScaleToGray2, []);
  RegisterTest('Transform', 'pixScaleToGray3', @Test_pixScaleToGray3, []);
  RegisterTest('Transform', 'pixScaleToGray4', @Test_pixScaleToGray4, []);
  RegisterTest('Transform', 'pixScaleToGray6', @Test_pixScaleToGray6, []);
  RegisterTest('Transform', 'pixScaleToGray8', @Test_pixScaleToGray8, []);
  RegisterTest('Transform', 'pixScaleToGray16', @Test_pixScaleToGray16, []);
  RegisterTest('Transform', 'pixScaleToGrayMipmap', @Test_pixScaleToGrayMipmap, []);
  RegisterTest('Transform', 'pixScaleMipmap', @Test_pixScaleMipmap, []);
  RegisterTest('Transform', 'pixScaleGrayMinMax', @Test_pixScaleGrayMinMax, []);
  RegisterTest('Transform', 'pixScaleGrayMinMax2', @Test_pixScaleGrayMinMax2, []);
  RegisterTest('Transform', 'pixScaleGrayRankCascade', @Test_pixScaleGrayRankCascade, []);
  RegisterTest('Transform', 'pixScaleGrayRank2', @Test_pixScaleGrayRank2, []);
  RegisterTest('Transform', 'pixScaleAndTransferAlpha', @Test_pixScaleAndTransferAlpha, []);
  RegisterTest('Transform', 'pixScaleWithAlpha', @Test_pixScaleWithAlpha, []);
  RegisterTest('Transform', 'pixHShear', @Test_pixHShear, []);
  RegisterTest('Transform', 'pixVShear', @Test_pixVShear, []);
  RegisterTest('Transform', 'pixHShearCorner', @Test_pixHShearCorner, []);
  RegisterTest('Transform', 'pixVShearCorner', @Test_pixVShearCorner, []);
  RegisterTest('Transform', 'pixHShearCenter', @Test_pixHShearCenter, []);
  RegisterTest('Transform', 'pixVShearCenter', @Test_pixVShearCenter, []);
  RegisterTest('Transform', 'pixHShearIP', @Test_pixHShearIP, []);
  RegisterTest('Transform', 'pixVShearIP', @Test_pixVShearIP, []);
  RegisterTest('Transform', 'pixHShearLI', @Test_pixHShearLI, []);
  RegisterTest('Transform', 'pixVShearLI', @Test_pixVShearLI, []);
  RegisterTest('Transform', 'pixWarpStereoscopic', @Test_pixWarpStereoscopic, []);

  RegisterTest('Transform', 'Func_pixRotate90', @Test_Func_pixRotate90, []);
  RegisterTest('Transform', 'Func_pixRotate180', @Test_Func_pixRotate180, []);
  RegisterTest('Transform', 'Func_pixFlipLR', @Test_Func_pixFlipLR, []);
  RegisterTest('Transform', 'Func_pixFlipTB', @Test_Func_pixFlipTB, []);
  RegisterTest('Transform', 'Func_pixScaleLI', @Test_Func_pixScaleLI, []);
  RegisterTest('Transform', 'Func_pixScaleToSize', @Test_Func_pixScaleToSize, []);
  RegisterTest('Transform', 'Func_pixTranslate', @Test_Func_pixTranslate, []);
  RegisterTest('Transform', 'Func_pixRotateOrth', @Test_Func_pixRotateOrth, []);

end.
