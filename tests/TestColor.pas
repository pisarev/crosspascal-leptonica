{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestColor;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_pixColorContent;
begin
  AssertFuncLoaded(@Lept.Color.PixColorContent, 'pixColorContent');
end;

procedure Test_pixColorMagnitude;
begin
  AssertFuncLoaded(@Lept.Color.PixColorMagnitude, 'pixColorMagnitude');
end;

procedure Test_pixColorFraction;
begin
  AssertFuncLoaded(@Lept.Color.PixColorFraction, 'pixColorFraction');
end;

procedure Test_pixMaskOverColorPixels;
begin
  AssertFuncLoaded(@Lept.Color.PixMaskOverColorPixels, 'pixMaskOverColorPixels');
end;

procedure Test_pixMaskOverColorRange;
begin
  AssertFuncLoaded(@Lept.Color.PixMaskOverColorRange, 'pixMaskOverColorRange');
end;

procedure Test_pixFindColorRegions;
begin
  AssertFuncLoaded(@Lept.Color.PixFindColorRegions, 'pixFindColorRegions');
end;

procedure Test_pixNumSignificantGrayColors;
begin
  AssertFuncLoaded(@Lept.Color.PixNumSignificantGrayColors, 'pixNumSignificantGrayColors');
end;

procedure Test_pixConvertRGBToCmapLossless;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertRGBToCmapLossless, 'pixConvertRGBToCmapLossless');
end;

procedure Test_pixGetRGBHistogram;
begin
  AssertFuncLoaded(@Lept.Color.PixGetRGBHistogram, 'pixGetRGBHistogram');
end;

procedure Test_pixColorContentByLocation;
begin
  AssertFuncLoaded(@Lept.Color.PixColorContentByLocation, 'pixColorContentByLocation');
end;

procedure Test_pixColorGrayRegions;
begin
  AssertFuncLoaded(@Lept.Color.PixColorGrayRegions, 'pixColorGrayRegions');
end;

procedure Test_pixColorGray;
begin
  AssertFuncLoaded(@Lept.Color.PixColorGray, 'pixColorGray');
end;

procedure Test_pixColorGrayMasked;
begin
  AssertFuncLoaded(@Lept.Color.PixColorGrayMasked, 'pixColorGrayMasked');
end;

procedure Test_pixSnapColor;
begin
  AssertFuncLoaded(@Lept.Color.PixSnapColor, 'pixSnapColor');
end;

procedure Test_pixSnapColorCmap;
begin
  AssertFuncLoaded(@Lept.Color.PixSnapColorCmap, 'pixSnapColorCmap');
end;

procedure Test_pixOctreeColorQuant;
begin
  AssertFuncLoaded(@Lept.Color.PixOctreeColorQuant, 'pixOctreeColorQuant');
end;

procedure Test_pixOctreeColorQuantGeneral;
begin
  AssertFuncLoaded(@Lept.Color.PixOctreeColorQuantGeneral, 'pixOctreeColorQuantGeneral');
end;

procedure Test_pixOctreeQuantByPopulation;
begin
  AssertFuncLoaded(@Lept.Color.PixOctreeQuantByPopulation, 'pixOctreeQuantByPopulation');
end;

procedure Test_pixOctreeQuantNumColors;
begin
  AssertFuncLoaded(@Lept.Color.PixOctreeQuantNumColors, 'pixOctreeQuantNumColors');
end;

procedure Test_pixFixedOctcubeQuant256;
begin
  AssertFuncLoaded(@Lept.Color.PixFixedOctcubeQuant256, 'pixFixedOctcubeQuant256');
end;

procedure Test_pixFixedOctcubeQuantGenRGB;
begin
  AssertFuncLoaded(@Lept.Color.PixFixedOctcubeQuantGenRGB, 'pixFixedOctcubeQuantGenRGB');
end;

procedure Test_pixMedianCutQuant;
begin
  AssertFuncLoaded(@Lept.Color.PixMedianCutQuant, 'pixMedianCutQuant');
end;

procedure Test_pixMedianCutQuantGeneral;
begin
  AssertFuncLoaded(@Lept.Color.PixMedianCutQuantGeneral, 'pixMedianCutQuantGeneral');
end;

procedure Test_pixMedianCutQuantMixed;
begin
  AssertFuncLoaded(@Lept.Color.PixMedianCutQuantMixed, 'pixMedianCutQuantMixed');
end;

procedure Test_pixColorSegment;
begin
  AssertFuncLoaded(@Lept.Color.PixColorSegment, 'pixColorSegment');
end;

procedure Test_pixColorSegmentCluster;
begin
  AssertFuncLoaded(@Lept.Color.PixColorSegmentCluster, 'pixColorSegmentCluster');
end;

procedure Test_pixAssignToNearestColor;
begin
  AssertFuncLoaded(@Lept.Color.PixAssignToNearestColor, 'pixAssignToNearestColor');
end;

procedure Test_pixColorSegmentClean;
begin
  AssertFuncLoaded(@Lept.Color.PixColorSegmentClean, 'pixColorSegmentClean');
end;

procedure Test_pixColorSegmentRemoveColors;
begin
  AssertFuncLoaded(@Lept.Color.PixColorSegmentRemoveColors, 'pixColorSegmentRemoveColors');
end;

procedure Test_pixConvertRGBToHSV;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertRGBToHSV, 'pixConvertRGBToHSV');
end;

procedure Test_pixConvertHSVToRGB;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertHSVToRGB, 'pixConvertHSVToRGB');
end;

procedure Test_convertRGBToHSV;
begin
  AssertFuncLoaded(@Lept.Color.ConvertRGBToHSV, 'convertRGBToHSV');
end;

procedure Test_convertHSVToRGB;
begin
  AssertFuncLoaded(@Lept.Color.ConvertHSVToRGB, 'convertHSVToRGB');
end;

procedure Test_pixConvertRGBToHue;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertRGBToHue, 'pixConvertRGBToHue');
end;

procedure Test_pixConvertRGBToSaturation;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertRGBToSaturation, 'pixConvertRGBToSaturation');
end;

procedure Test_pixConvertRGBToValue;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertRGBToValue, 'pixConvertRGBToValue');
end;

procedure Test_pixConvertRGBToYUV;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertRGBToYUV, 'pixConvertRGBToYUV');
end;

procedure Test_pixConvertYUVToRGB;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertYUVToRGB, 'pixConvertYUVToRGB');
end;

procedure Test_convertRGBToYUV;
begin
  AssertFuncLoaded(@Lept.Color.ConvertRGBToYUV, 'convertRGBToYUV');
end;

procedure Test_convertYUVToRGB;
begin
  AssertFuncLoaded(@Lept.Color.ConvertYUVToRGB, 'convertYUVToRGB');
end;

procedure Test_pixConvertRGBToXYZ;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertRGBToXYZ, 'pixConvertRGBToXYZ');
end;

procedure Test_convertRGBToXYZ;
begin
  AssertFuncLoaded(@Lept.Color.ConvertRGBToXYZ, 'convertRGBToXYZ');
end;

procedure Test_convertLABToXYZ;
begin
  AssertFuncLoaded(@Lept.Color.ConvertLABToXYZ, 'convertLABToXYZ');
end;

procedure Test_pixConvertRGBToLAB;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertRGBToLAB, 'pixConvertRGBToLAB');
end;

procedure Test_convertRGBToLAB;
begin
  AssertFuncLoaded(@Lept.Color.ConvertRGBToLAB, 'convertRGBToLAB');
end;

procedure Test_convertLABToRGB;
begin
  AssertFuncLoaded(@Lept.Color.ConvertLABToRGB, 'convertLABToRGB');
end;

procedure Test_pixColorGrayRegionsCmap;
begin
  AssertFuncLoaded(@Lept.Color.PixColorGrayRegionsCmap, 'pixColorGrayRegionsCmap');
end;

procedure Test_pixColorGrayCmap;
begin
  AssertFuncLoaded(@Lept.Color.PixColorGrayCmap, 'pixColorGrayCmap');
end;

procedure Test_pixColorGrayMaskedCmap;
begin
  AssertFuncLoaded(@Lept.Color.PixColorGrayMaskedCmap, 'pixColorGrayMaskedCmap');
end;

procedure Test_pixGetRGBPixel;
begin
  AssertFuncLoaded(@Lept.Color.PixGetRGBPixel, 'pixGetRGBPixel');
end;

procedure Test_pixSetRGBPixel;
begin
  AssertFuncLoaded(@Lept.Color.PixSetRGBPixel, 'pixSetRGBPixel');
end;

procedure Test_pixGetRGBComponent;
begin
  AssertFuncLoaded(@Lept.Color.PixGetRGBComponent, 'pixGetRGBComponent');
end;

procedure Test_pixSetRGBComponent;
begin
  AssertFuncLoaded(@Lept.Color.PixSetRGBComponent, 'pixSetRGBComponent');
end;

procedure Test_pixGetRGBComponentCmap;
begin
  AssertFuncLoaded(@Lept.Color.PixGetRGBComponentCmap, 'pixGetRGBComponentCmap');
end;

procedure Test_composeRGBPixel;
begin
  AssertFuncLoaded(@Lept.Color.ComposeRGBPixel, 'composeRGBPixel');
end;

procedure Test_composeRGBAPixel;
begin
  AssertFuncLoaded(@Lept.Color.ComposeRGBAPixel, 'composeRGBAPixel');
end;

procedure Test_extractRGBValues;
begin
  AssertFuncLoaded(@Lept.Color.ExtractRGBValues, 'extractRGBValues');
end;

procedure Test_extractRGBAValues;
begin
  AssertFuncLoaded(@Lept.Color.ExtractRGBAValues, 'extractRGBAValues');
end;

procedure Test_extractMinMaxComponent;
begin
  AssertFuncLoaded(@Lept.Color.ExtractMinMaxComponent, 'extractMinMaxComponent');
end;

procedure Test_pixGetRGBLine;
begin
  AssertFuncLoaded(@Lept.Color.PixGetRGBLine, 'pixGetRGBLine');
end;

procedure Test_pixRemoveColormapGeneral;
begin
  AssertFuncLoaded(@Lept.Color.PixRemoveColormapGeneral, 'pixRemoveColormapGeneral');
end;

procedure Test_pixRemoveColormap;
begin
  AssertFuncLoaded(@Lept.Color.PixRemoveColormap, 'pixRemoveColormap');
end;

procedure Test_pixAddMinimalGrayColormap8;
begin
  AssertFuncLoaded(@Lept.Color.PixAddMinimalGrayColormap8, 'pixAddMinimalGrayColormap8');
end;

procedure Test_pixConvertRGBToLuminance;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertRGBToLuminance, 'pixConvertRGBToLuminance');
end;

procedure Test_pixConvertRGBToGrayGeneral;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertRGBToGrayGeneral, 'pixConvertRGBToGrayGeneral');
end;

procedure Test_pixConvertRGBToGray;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertRGBToGray, 'pixConvertRGBToGray');
end;

procedure Test_pixConvertRGBToGrayFast;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertRGBToGrayFast, 'pixConvertRGBToGrayFast');
end;

procedure Test_pixConvertRGBToGrayMinMax;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertRGBToGrayMinMax, 'pixConvertRGBToGrayMinMax');
end;

procedure Test_pixConvertRGBToGraySatBoost;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertRGBToGraySatBoost, 'pixConvertRGBToGraySatBoost');
end;

procedure Test_pixConvertRGBToGrayArb;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertRGBToGrayArb, 'pixConvertRGBToGrayArb');
end;

procedure Test_pixConvertRGBToBinaryArb;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertRGBToBinaryArb, 'pixConvertRGBToBinaryArb');
end;

procedure Test_pixConvertGrayToColormap;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertGrayToColormap, 'pixConvertGrayToColormap');
end;

procedure Test_pixConvertGrayToColormap8;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertGrayToColormap8, 'pixConvertGrayToColormap8');
end;

procedure Test_pixConvertRGBToColormap;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertRGBToColormap, 'pixConvertRGBToColormap');
end;

procedure Test_pixConvert16To8;
begin
  AssertFuncLoaded(@Lept.Color.PixConvert16To8, 'pixConvert16To8');
end;

procedure Test_pixConvertGrayToFalseColor;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertGrayToFalseColor, 'pixConvertGrayToFalseColor');
end;

procedure Test_pixConvert1To16;
begin
  AssertFuncLoaded(@Lept.Color.PixConvert1To16, 'pixConvert1To16');
end;

procedure Test_pixConvert1To32;
begin
  AssertFuncLoaded(@Lept.Color.PixConvert1To32, 'pixConvert1To32');
end;

procedure Test_pixConvert1To2Cmap;
begin
  AssertFuncLoaded(@Lept.Color.PixConvert1To2Cmap, 'pixConvert1To2Cmap');
end;

procedure Test_pixConvert1To2;
begin
  AssertFuncLoaded(@Lept.Color.PixConvert1To2, 'pixConvert1To2');
end;

procedure Test_pixConvert1To4Cmap;
begin
  AssertFuncLoaded(@Lept.Color.PixConvert1To4Cmap, 'pixConvert1To4Cmap');
end;

procedure Test_pixConvert1To4;
begin
  AssertFuncLoaded(@Lept.Color.PixConvert1To4, 'pixConvert1To4');
end;

procedure Test_pixConvert1To8Cmap;
begin
  AssertFuncLoaded(@Lept.Color.PixConvert1To8Cmap, 'pixConvert1To8Cmap');
end;

procedure Test_pixConvert1To8;
begin
  AssertFuncLoaded(@Lept.Color.PixConvert1To8, 'pixConvert1To8');
end;

procedure Test_pixConvert2To8;
begin
  AssertFuncLoaded(@Lept.Color.PixConvert2To8, 'pixConvert2To8');
end;

procedure Test_pixConvert4To8;
begin
  AssertFuncLoaded(@Lept.Color.PixConvert4To8, 'pixConvert4To8');
end;

procedure Test_pixConvert8To16;
begin
  AssertFuncLoaded(@Lept.Color.PixConvert8To16, 'pixConvert8To16');
end;

procedure Test_pixConvertTo2;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertTo2, 'pixConvertTo2');
end;

procedure Test_pixConvert8To2;
begin
  AssertFuncLoaded(@Lept.Color.PixConvert8To2, 'pixConvert8To2');
end;

procedure Test_pixConvertTo4;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertTo4, 'pixConvertTo4');
end;

procedure Test_pixConvert8To4;
begin
  AssertFuncLoaded(@Lept.Color.PixConvert8To4, 'pixConvert8To4');
end;

procedure Test_pixConvertTo1Adaptive;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertTo1Adaptive, 'pixConvertTo1Adaptive');
end;

procedure Test_pixConvertTo1;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertTo1, 'pixConvertTo1');
end;

procedure Test_pixConvertTo1BySampling;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertTo1BySampling, 'pixConvertTo1BySampling');
end;

procedure Test_pixConvertTo8BySampling;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertTo8BySampling, 'pixConvertTo8BySampling');
end;

procedure Test_pixConvertTo8Colormap;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertTo8Colormap, 'pixConvertTo8Colormap');
end;

procedure Test_pixConvertTo16;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertTo16, 'pixConvertTo16');
end;

procedure Test_pixConvertTo32;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertTo32, 'pixConvertTo32');
end;

procedure Test_pixConvertTo32BySampling;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertTo32BySampling, 'pixConvertTo32BySampling');
end;

procedure Test_pixConvert8To32;
begin
  AssertFuncLoaded(@Lept.Color.PixConvert8To32, 'pixConvert8To32');
end;

procedure Test_pixConvertTo8Or32;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertTo8Or32, 'pixConvertTo8Or32');
end;

procedure Test_pixConvert24To32;
begin
  AssertFuncLoaded(@Lept.Color.PixConvert24To32, 'pixConvert24To32');
end;

procedure Test_pixConvert32To24;
begin
  AssertFuncLoaded(@Lept.Color.PixConvert32To24, 'pixConvert32To24');
end;

procedure Test_pixConvert32To16;
begin
  AssertFuncLoaded(@Lept.Color.PixConvert32To16, 'pixConvert32To16');
end;

procedure Test_pixConvert32To8;
begin
  AssertFuncLoaded(@Lept.Color.PixConvert32To8, 'pixConvert32To8');
end;

procedure Test_pixRemoveAlpha;
begin
  AssertFuncLoaded(@Lept.Color.PixRemoveAlpha, 'pixRemoveAlpha');
end;

procedure Test_pixConvertGrayToSubpixelRGB;
begin
  AssertFuncLoaded(@Lept.Color.PixConvertGrayToSubpixelRGB, 'pixConvertGrayToSubpixelRGB');
end;

procedure Test_Func_pixConvertTo32;
var
  P, Q: Pointer;
begin
  P := CreateGrayPix(40, 30);
  Q := Lept.Color.PixConvertTo32(P);
  AssertNotNil(Q, 'convertTo32 returned a Pix');
  AssertEqualsInt(32, Lept.Pix.PixGetDepth(Q), 'convertTo32 depth is 32');
  AssertEqualsInt(40, Lept.Pix.PixGetWidth(Q), 'convertTo32 width kept');
  AssertEqualsInt(30, Lept.Pix.PixGetHeight(Q), 'convertTo32 height kept');
  Lept.Pix.PixDestroy(@Q);
  SafePixDestroy(P);
end;

procedure Test_Func_pixConvert24To32;
var
  P, Q: Pointer;
begin
  P := CreateTestPix(24, 16, 24);
  AssertNotNil(P, '24 bpp source created');
  Q := Lept.Color.PixConvert24To32(P);
  AssertNotNil(Q, 'convert24To32 returned a Pix');
  AssertEqualsInt(32, Lept.Pix.PixGetDepth(Q), 'convert24To32 depth is 32');
  AssertEqualsInt(24, Lept.Pix.PixGetWidth(Q), 'convert24To32 width kept');
  AssertEqualsInt(16, Lept.Pix.PixGetHeight(Q), 'convert24To32 height kept');
  Lept.Pix.PixDestroy(@Q);
  SafePixDestroy(P);
end;

procedure Test_Func_pixMedianCutQuantGeneral;
var
  P, Q: Pointer;
begin
  P := CreateColorPix(64, 48);
  Q := Lept.Color.PixMedianCutQuantGeneral(P, 1, 0, 4, 5, 0, 1);
  AssertNotNil(Q, 'medianCutQuantGeneral returned a Pix');
  AssertEqualsInt(64, Lept.Pix.PixGetWidth(Q), 'quant width kept');
  AssertEqualsInt(48, Lept.Pix.PixGetHeight(Q), 'quant height kept');
  AssertTrue(Lept.Pix.PixGetDepth(Q) <= 8, 'quant depth is 8 or less');
  Lept.Pix.PixDestroy(@Q);
  SafePixDestroy(P);
end;

procedure Test_Func_pixConvertRGBToGray;
var
  P, G: Pointer;
begin
  P := CreateColorPix(80, 60);
  G := Lept.Color.PixConvertRGBToGray(P, 0.299, 0.587, 0.114);
  AssertNotNil(G, 'convertRGBToGray');
  AssertEqualsInt(8, Lept.Pix.PixGetDepth(G), 'gray depth');
  Lept.Pix.PixDestroy(@G);
  SafePixDestroy(P);
end;

procedure Test_Func_pixConvertRGBToHSV;
var
  P, H: Pointer;
begin
  P := CreateColorPix(40, 30);
  H := Lept.Color.PixConvertRGBToHSV(nil, P);
  AssertNotNil(H, 'convertRGBToHSV');
  AssertEqualsInt(32, Lept.Pix.PixGetDepth(H), 'HSV depth');
  Lept.Pix.PixDestroy(@H);
  SafePixDestroy(P);
end;

procedure Test_Func_pixConvertTo1;
var
  P, B: Pointer;
begin
  P := CreateGrayPix(50, 50);
  B := Lept.Color.PixConvertTo1(P, 128);
  AssertNotNil(B, 'convertTo1');
  AssertEqualsInt(1, Lept.Pix.PixGetDepth(B), 'depth=1');
  Lept.Pix.PixDestroy(@B);
  SafePixDestroy(P);
end;

procedure Test_Func_pixRemoveColormap;
var
  P, R: Pointer;
begin
  P := CreateColorPix(50, 50);
  R := Lept.Color.PixRemoveColormap(P, 2);
  AssertNotNil(R, 'removeColormap');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

initialization
  RegisterTest('Color', 'pixColorContent', @Test_pixColorContent, []);
  RegisterTest('Color', 'pixColorMagnitude', @Test_pixColorMagnitude, []);
  RegisterTest('Color', 'pixColorFraction', @Test_pixColorFraction, []);
  RegisterTest('Color', 'pixMaskOverColorPixels', @Test_pixMaskOverColorPixels, []);
  RegisterTest('Color', 'pixMaskOverColorRange', @Test_pixMaskOverColorRange, []);
  RegisterTest('Color', 'pixFindColorRegions', @Test_pixFindColorRegions, []);
  RegisterTest('Color', 'pixNumSignificantGrayColors', @Test_pixNumSignificantGrayColors, []);
  RegisterTest('Color', 'pixConvertRGBToCmapLossless', @Test_pixConvertRGBToCmapLossless, []);
  RegisterTest('Color', 'pixGetRGBHistogram', @Test_pixGetRGBHistogram, []);
  RegisterTest('Color', 'pixColorContentByLocation', @Test_pixColorContentByLocation, []);
  RegisterTest('Color', 'pixColorGrayRegions', @Test_pixColorGrayRegions, []);
  RegisterTest('Color', 'pixColorGray', @Test_pixColorGray, []);
  RegisterTest('Color', 'pixColorGrayMasked', @Test_pixColorGrayMasked, []);
  RegisterTest('Color', 'pixSnapColor', @Test_pixSnapColor, []);
  RegisterTest('Color', 'pixSnapColorCmap', @Test_pixSnapColorCmap, []);
  RegisterTest('Color', 'pixOctreeColorQuant', @Test_pixOctreeColorQuant, []);
  RegisterTest('Color', 'pixOctreeColorQuantGeneral', @Test_pixOctreeColorQuantGeneral, []);
  RegisterTest('Color', 'pixOctreeQuantByPopulation', @Test_pixOctreeQuantByPopulation, []);
  RegisterTest('Color', 'pixOctreeQuantNumColors', @Test_pixOctreeQuantNumColors, []);
  RegisterTest('Color', 'pixFixedOctcubeQuant256', @Test_pixFixedOctcubeQuant256, []);
  RegisterTest('Color', 'pixFixedOctcubeQuantGenRGB', @Test_pixFixedOctcubeQuantGenRGB, []);
  RegisterTest('Color', 'pixMedianCutQuant', @Test_pixMedianCutQuant, []);
  RegisterTest('Color', 'pixMedianCutQuantGeneral', @Test_pixMedianCutQuantGeneral, []);
  RegisterTest('Color', 'pixMedianCutQuantMixed', @Test_pixMedianCutQuantMixed, []);
  RegisterTest('Color', 'pixColorSegment', @Test_pixColorSegment, []);
  RegisterTest('Color', 'pixColorSegmentCluster', @Test_pixColorSegmentCluster, []);
  RegisterTest('Color', 'pixAssignToNearestColor', @Test_pixAssignToNearestColor, []);
  RegisterTest('Color', 'pixColorSegmentClean', @Test_pixColorSegmentClean, []);
  RegisterTest('Color', 'pixColorSegmentRemoveColors', @Test_pixColorSegmentRemoveColors, []);
  RegisterTest('Color', 'pixConvertRGBToHSV', @Test_pixConvertRGBToHSV, []);
  RegisterTest('Color', 'pixConvertHSVToRGB', @Test_pixConvertHSVToRGB, []);
  RegisterTest('Color', 'convertRGBToHSV', @Test_convertRGBToHSV, []);
  RegisterTest('Color', 'convertHSVToRGB', @Test_convertHSVToRGB, []);
  RegisterTest('Color', 'pixConvertRGBToHue', @Test_pixConvertRGBToHue, []);
  RegisterTest('Color', 'pixConvertRGBToSaturation', @Test_pixConvertRGBToSaturation, []);
  RegisterTest('Color', 'pixConvertRGBToValue', @Test_pixConvertRGBToValue, []);
  RegisterTest('Color', 'pixConvertRGBToYUV', @Test_pixConvertRGBToYUV, []);
  RegisterTest('Color', 'pixConvertYUVToRGB', @Test_pixConvertYUVToRGB, []);
  RegisterTest('Color', 'convertRGBToYUV', @Test_convertRGBToYUV, []);
  RegisterTest('Color', 'convertYUVToRGB', @Test_convertYUVToRGB, []);
  RegisterTest('Color', 'pixConvertRGBToXYZ', @Test_pixConvertRGBToXYZ, []);
  RegisterTest('Color', 'convertRGBToXYZ', @Test_convertRGBToXYZ, []);
  RegisterTest('Color', 'convertLABToXYZ', @Test_convertLABToXYZ, []);
  RegisterTest('Color', 'pixConvertRGBToLAB', @Test_pixConvertRGBToLAB, []);
  RegisterTest('Color', 'convertRGBToLAB', @Test_convertRGBToLAB, []);
  RegisterTest('Color', 'convertLABToRGB', @Test_convertLABToRGB, []);
  RegisterTest('Color', 'pixColorGrayRegionsCmap', @Test_pixColorGrayRegionsCmap, []);
  RegisterTest('Color', 'pixColorGrayCmap', @Test_pixColorGrayCmap, []);
  RegisterTest('Color', 'pixColorGrayMaskedCmap', @Test_pixColorGrayMaskedCmap, []);
  RegisterTest('Color', 'pixGetRGBPixel', @Test_pixGetRGBPixel, []);
  RegisterTest('Color', 'pixSetRGBPixel', @Test_pixSetRGBPixel, []);
  RegisterTest('Color', 'pixGetRGBComponent', @Test_pixGetRGBComponent, []);
  RegisterTest('Color', 'pixSetRGBComponent', @Test_pixSetRGBComponent, []);
  RegisterTest('Color', 'pixGetRGBComponentCmap', @Test_pixGetRGBComponentCmap, []);
  RegisterTest('Color', 'composeRGBPixel', @Test_composeRGBPixel, []);
  RegisterTest('Color', 'composeRGBAPixel', @Test_composeRGBAPixel, []);
  RegisterTest('Color', 'extractRGBValues', @Test_extractRGBValues, []);
  RegisterTest('Color', 'extractRGBAValues', @Test_extractRGBAValues, []);
  RegisterTest('Color', 'extractMinMaxComponent', @Test_extractMinMaxComponent, []);
  RegisterTest('Color', 'pixGetRGBLine', @Test_pixGetRGBLine, []);
  RegisterTest('Color', 'pixRemoveColormapGeneral', @Test_pixRemoveColormapGeneral, []);
  RegisterTest('Color', 'pixRemoveColormap', @Test_pixRemoveColormap, []);
  RegisterTest('Color', 'pixAddMinimalGrayColormap8', @Test_pixAddMinimalGrayColormap8, []);
  RegisterTest('Color', 'pixConvertRGBToLuminance', @Test_pixConvertRGBToLuminance, []);
  RegisterTest('Color', 'pixConvertRGBToGrayGeneral', @Test_pixConvertRGBToGrayGeneral, []);
  RegisterTest('Color', 'pixConvertRGBToGray', @Test_pixConvertRGBToGray, []);
  RegisterTest('Color', 'pixConvertRGBToGrayFast', @Test_pixConvertRGBToGrayFast, []);
  RegisterTest('Color', 'pixConvertRGBToGrayMinMax', @Test_pixConvertRGBToGrayMinMax, []);
  RegisterTest('Color', 'pixConvertRGBToGraySatBoost', @Test_pixConvertRGBToGraySatBoost, []);
  RegisterTest('Color', 'pixConvertRGBToGrayArb', @Test_pixConvertRGBToGrayArb, []);
  RegisterTest('Color', 'pixConvertRGBToBinaryArb', @Test_pixConvertRGBToBinaryArb, []);
  RegisterTest('Color', 'pixConvertGrayToColormap', @Test_pixConvertGrayToColormap, []);
  RegisterTest('Color', 'pixConvertGrayToColormap8', @Test_pixConvertGrayToColormap8, []);
  RegisterTest('Color', 'pixConvertRGBToColormap', @Test_pixConvertRGBToColormap, []);
  RegisterTest('Color', 'pixConvert16To8', @Test_pixConvert16To8, []);
  RegisterTest('Color', 'pixConvertGrayToFalseColor', @Test_pixConvertGrayToFalseColor, []);
  RegisterTest('Color', 'pixConvert1To16', @Test_pixConvert1To16, []);
  RegisterTest('Color', 'pixConvert1To32', @Test_pixConvert1To32, []);
  RegisterTest('Color', 'pixConvert1To2Cmap', @Test_pixConvert1To2Cmap, []);
  RegisterTest('Color', 'pixConvert1To2', @Test_pixConvert1To2, []);
  RegisterTest('Color', 'pixConvert1To4Cmap', @Test_pixConvert1To4Cmap, []);
  RegisterTest('Color', 'pixConvert1To4', @Test_pixConvert1To4, []);
  RegisterTest('Color', 'pixConvert1To8Cmap', @Test_pixConvert1To8Cmap, []);
  RegisterTest('Color', 'pixConvert1To8', @Test_pixConvert1To8, []);
  RegisterTest('Color', 'pixConvert2To8', @Test_pixConvert2To8, []);
  RegisterTest('Color', 'pixConvert4To8', @Test_pixConvert4To8, []);
  RegisterTest('Color', 'pixConvert8To16', @Test_pixConvert8To16, []);
  RegisterTest('Color', 'pixConvertTo2', @Test_pixConvertTo2, []);
  RegisterTest('Color', 'pixConvert8To2', @Test_pixConvert8To2, []);
  RegisterTest('Color', 'pixConvertTo4', @Test_pixConvertTo4, []);
  RegisterTest('Color', 'pixConvert8To4', @Test_pixConvert8To4, []);
  RegisterTest('Color', 'pixConvertTo1Adaptive', @Test_pixConvertTo1Adaptive, []);
  RegisterTest('Color', 'pixConvertTo1', @Test_pixConvertTo1, []);
  RegisterTest('Color', 'pixConvertTo1BySampling', @Test_pixConvertTo1BySampling, []);
  RegisterTest('Color', 'pixConvertTo8BySampling', @Test_pixConvertTo8BySampling, []);
  RegisterTest('Color', 'pixConvertTo8Colormap', @Test_pixConvertTo8Colormap, []);
  RegisterTest('Color', 'pixConvertTo16', @Test_pixConvertTo16, []);
  RegisterTest('Color', 'pixConvertTo32', @Test_pixConvertTo32, []);
  RegisterTest('Color', 'pixConvertTo32BySampling', @Test_pixConvertTo32BySampling, []);
  RegisterTest('Color', 'pixConvert8To32', @Test_pixConvert8To32, []);
  RegisterTest('Color', 'pixConvertTo8Or32', @Test_pixConvertTo8Or32, []);
  RegisterTest('Color', 'pixConvert24To32', @Test_pixConvert24To32, []);
  RegisterTest('Color', 'pixConvert32To24', @Test_pixConvert32To24, []);
  RegisterTest('Color', 'pixConvert32To16', @Test_pixConvert32To16, []);
  RegisterTest('Color', 'pixConvert32To8', @Test_pixConvert32To8, []);
  RegisterTest('Color', 'pixRemoveAlpha', @Test_pixRemoveAlpha, []);
  RegisterTest('Color', 'pixConvertGrayToSubpixelRGB', @Test_pixConvertGrayToSubpixelRGB, []);

  RegisterTest('Color', 'Func_pixConvertTo32', @Test_Func_pixConvertTo32, []);
  RegisterTest('Color', 'Func_pixConvert24To32', @Test_Func_pixConvert24To32, []);
  RegisterTest('Color', 'Func_pixMedianCutQuantGeneral', @Test_Func_pixMedianCutQuantGeneral, []);
  RegisterTest('Color', 'Func_pixConvertRGBToGray', @Test_Func_pixConvertRGBToGray, []);
  RegisterTest('Color', 'Func_pixConvertRGBToHSV', @Test_Func_pixConvertRGBToHSV, []);
  RegisterTest('Color', 'Func_pixConvertTo1', @Test_Func_pixConvertTo1, []);
  RegisterTest('Color', 'Func_pixRemoveColormap', @Test_Func_pixRemoveColormap, []);

end.
