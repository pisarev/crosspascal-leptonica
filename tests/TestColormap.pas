{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestColormap;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_pixcmapCreate;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapCreate, 'pixcmapCreate');
end;

procedure Test_pixcmapCreateRandom;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapCreateRandom, 'pixcmapCreateRandom');
end;

procedure Test_pixcmapCreateLinear;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapCreateLinear, 'pixcmapCreateLinear');
end;

procedure Test_pixcmapCopy;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapCopy, 'pixcmapCopy');
end;

procedure Test_pixcmapDestroy;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapDestroy, 'pixcmapDestroy');
end;

procedure Test_pixcmapIsValid;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapIsValid, 'pixcmapIsValid');
end;

procedure Test_pixcmapAddColor;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapAddColor, 'pixcmapAddColor');
end;

procedure Test_pixcmapAddRGBA;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapAddRGBA, 'pixcmapAddRGBA');
end;

procedure Test_pixcmapAddNewColor;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapAddNewColor, 'pixcmapAddNewColor');
end;

procedure Test_pixcmapAddNearestColor;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapAddNearestColor, 'pixcmapAddNearestColor');
end;

procedure Test_pixcmapUsableColor;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapUsableColor, 'pixcmapUsableColor');
end;

procedure Test_pixcmapAddBlackOrWhite;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapAddBlackOrWhite, 'pixcmapAddBlackOrWhite');
end;

procedure Test_pixcmapSetBlackAndWhite;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapSetBlackAndWhite, 'pixcmapSetBlackAndWhite');
end;

procedure Test_pixcmapGetCount;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapGetCount, 'pixcmapGetCount');
end;

procedure Test_pixcmapGetFreeCount;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapGetFreeCount, 'pixcmapGetFreeCount');
end;

procedure Test_pixcmapGetDepth;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapGetDepth, 'pixcmapGetDepth');
end;

procedure Test_pixcmapGetMinDepth;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapGetMinDepth, 'pixcmapGetMinDepth');
end;

procedure Test_pixcmapClear;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapClear, 'pixcmapClear');
end;

procedure Test_pixcmapGetColor;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapGetColor, 'pixcmapGetColor');
end;

procedure Test_pixcmapGetColor32;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapGetColor32, 'pixcmapGetColor32');
end;

procedure Test_pixcmapGetRGBA;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapGetRGBA, 'pixcmapGetRGBA');
end;

procedure Test_pixcmapGetRGBA32;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapGetRGBA32, 'pixcmapGetRGBA32');
end;

procedure Test_pixcmapResetColor;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapResetColor, 'pixcmapResetColor');
end;

procedure Test_pixcmapSetAlpha;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapSetAlpha, 'pixcmapSetAlpha');
end;

procedure Test_pixcmapGetIndex;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapGetIndex, 'pixcmapGetIndex');
end;

procedure Test_pixcmapHasColor;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapHasColor, 'pixcmapHasColor');
end;

procedure Test_pixcmapIsOpaque;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapIsOpaque, 'pixcmapIsOpaque');
end;

procedure Test_pixcmapNonOpaqueColorsInfo;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapNonOpaqueColorsInfo, 'pixcmapNonOpaqueColorsInfo');
end;

procedure Test_pixcmapIsBlackAndWhite;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapIsBlackAndWhite, 'pixcmapIsBlackAndWhite');
end;

procedure Test_pixcmapCountGrayColors;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapCountGrayColors, 'pixcmapCountGrayColors');
end;

procedure Test_pixcmapGetRankIntensity;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapGetRankIntensity, 'pixcmapGetRankIntensity');
end;

procedure Test_pixcmapGetNearestIndex;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapGetNearestIndex, 'pixcmapGetNearestIndex');
end;

procedure Test_pixcmapGetNearestGrayIndex;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapGetNearestGrayIndex, 'pixcmapGetNearestGrayIndex');
end;

procedure Test_pixcmapGetDistanceToColor;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapGetDistanceToColor, 'pixcmapGetDistanceToColor');
end;

procedure Test_pixcmapGetRangeValues;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapGetRangeValues, 'pixcmapGetRangeValues');
end;

procedure Test_pixcmapGrayToFalseColor;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapGrayToFalseColor, 'pixcmapGrayToFalseColor');
end;

procedure Test_pixcmapGrayToColor;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapGrayToColor, 'pixcmapGrayToColor');
end;

procedure Test_pixcmapColorToGray;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapColorToGray, 'pixcmapColorToGray');
end;

procedure Test_pixcmapConvertTo4;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapConvertTo4, 'pixcmapConvertTo4');
end;

procedure Test_pixcmapConvertTo8;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapConvertTo8, 'pixcmapConvertTo8');
end;

procedure Test_pixcmapRead;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapRead, 'pixcmapRead');
end;

procedure Test_pixcmapReadStream;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapReadStream, 'pixcmapReadStream');
end;

procedure Test_pixcmapReadMem;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapReadMem, 'pixcmapReadMem');
end;

procedure Test_pixcmapWrite;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapWrite, 'pixcmapWrite');
end;

procedure Test_pixcmapWriteStream;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapWriteStream, 'pixcmapWriteStream');
end;

procedure Test_pixcmapWriteMem;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapWriteMem, 'pixcmapWriteMem');
end;

procedure Test_pixcmapToArrays;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapToArrays, 'pixcmapToArrays');
end;

procedure Test_pixcmapToRGBTable;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapToRGBTable, 'pixcmapToRGBTable');
end;

procedure Test_pixcmapSerializeToMemory;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapSerializeToMemory, 'pixcmapSerializeToMemory');
end;

procedure Test_pixcmapDeserializeFromMemory;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapDeserializeFromMemory, 'pixcmapDeserializeFromMemory');
end;

procedure Test_pixcmapConvertToHex;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapConvertToHex, 'pixcmapConvertToHex');
end;

procedure Test_pixcmapGammaTRC;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapGammaTRC, 'pixcmapGammaTRC');
end;

procedure Test_pixcmapContrastTRC;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapContrastTRC, 'pixcmapContrastTRC');
end;

procedure Test_pixcmapShiftIntensity;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapShiftIntensity, 'pixcmapShiftIntensity');
end;

procedure Test_pixcmapShiftByComponent;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapShiftByComponent, 'pixcmapShiftByComponent');
end;

procedure Test_pixcmapToOctcubeLUT;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapToOctcubeLUT, 'pixcmapToOctcubeLUT');
end;

procedure Test_pixcmapConvertRGBToHSV;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapConvertRGBToHSV, 'pixcmapConvertRGBToHSV');
end;

procedure Test_pixcmapConvertHSVToRGB;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapConvertHSVToRGB, 'pixcmapConvertHSVToRGB');
end;

procedure Test_pixcmapConvertRGBToYUV;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapConvertRGBToYUV, 'pixcmapConvertRGBToYUV');
end;

procedure Test_pixcmapConvertYUVToRGB;
begin
  AssertFuncLoaded(@Lept.Colormap.PixcmapConvertYUVToRGB, 'pixcmapConvertYUVToRGB');
end;

procedure Test_Func_pixcmapCreate;
var
  C: Pointer;
begin
  C := Lept.Colormap.PixcmapCreate(8);
  AssertNotNil(C, 'pixcmapCreate');
  AssertEqualsInt(0, Lept.Colormap.PixcmapGetCount(C), 'empty');
  Lept.Colormap.PixcmapDestroy(@C);
end;

procedure Test_Func_pixcmapAddColor;
var
  C: Pointer;
begin
  C := Lept.Colormap.PixcmapCreate(8);
  Lept.Colormap.PixcmapAddColor(C, 255, 0, 0);
  Lept.Colormap.PixcmapAddColor(C, 0, 255, 0);
  AssertEqualsInt(2, Lept.Colormap.PixcmapGetCount(C), 'count=2');
  Lept.Colormap.PixcmapDestroy(@C);
end;

procedure Test_Func_pixcmapGetColor;
var
  C: Pointer;
  R, G, B: Integer;
begin
  C := Lept.Colormap.PixcmapCreate(8);
  Lept.Colormap.PixcmapAddColor(C, 100, 150, 200);
  R := 0;
  G := 0;
  B := 0;
  Lept.Colormap.PixcmapGetColor(C, 0, @R, @G, @B);
  AssertEqualsInt(100, R, 'red');
  AssertEqualsInt(150, G, 'green');
  AssertEqualsInt(200, B, 'blue');
  Lept.Colormap.PixcmapDestroy(@C);
end;

procedure Test_Func_pixcmapCopy;
var
  C, D: Pointer;
begin
  C := Lept.Colormap.PixcmapCreate(8);
  Lept.Colormap.PixcmapAddColor(C, 10, 20, 30);
  D := Lept.Colormap.PixcmapCopy(C);
  AssertNotNil(D, 'pixcmapCopy');
  AssertEqualsInt(1, Lept.Colormap.PixcmapGetCount(D), 'copy count');
  Lept.Colormap.PixcmapDestroy(@D);
  Lept.Colormap.PixcmapDestroy(@C);
end;

initialization
  RegisterTest('Colormap', 'pixcmapCreate', @Test_pixcmapCreate, []);
  RegisterTest('Colormap', 'pixcmapCreateRandom', @Test_pixcmapCreateRandom, []);
  RegisterTest('Colormap', 'pixcmapCreateLinear', @Test_pixcmapCreateLinear, []);
  RegisterTest('Colormap', 'pixcmapCopy', @Test_pixcmapCopy, []);
  RegisterTest('Colormap', 'pixcmapDestroy', @Test_pixcmapDestroy, []);
  RegisterTest('Colormap', 'pixcmapIsValid', @Test_pixcmapIsValid, []);
  RegisterTest('Colormap', 'pixcmapAddColor', @Test_pixcmapAddColor, []);
  RegisterTest('Colormap', 'pixcmapAddRGBA', @Test_pixcmapAddRGBA, []);
  RegisterTest('Colormap', 'pixcmapAddNewColor', @Test_pixcmapAddNewColor, []);
  RegisterTest('Colormap', 'pixcmapAddNearestColor', @Test_pixcmapAddNearestColor, []);
  RegisterTest('Colormap', 'pixcmapUsableColor', @Test_pixcmapUsableColor, []);
  RegisterTest('Colormap', 'pixcmapAddBlackOrWhite', @Test_pixcmapAddBlackOrWhite, []);
  RegisterTest('Colormap', 'pixcmapSetBlackAndWhite', @Test_pixcmapSetBlackAndWhite, []);
  RegisterTest('Colormap', 'pixcmapGetCount', @Test_pixcmapGetCount, []);
  RegisterTest('Colormap', 'pixcmapGetFreeCount', @Test_pixcmapGetFreeCount, []);
  RegisterTest('Colormap', 'pixcmapGetDepth', @Test_pixcmapGetDepth, []);
  RegisterTest('Colormap', 'pixcmapGetMinDepth', @Test_pixcmapGetMinDepth, []);
  RegisterTest('Colormap', 'pixcmapClear', @Test_pixcmapClear, []);
  RegisterTest('Colormap', 'pixcmapGetColor', @Test_pixcmapGetColor, []);
  RegisterTest('Colormap', 'pixcmapGetColor32', @Test_pixcmapGetColor32, []);
  RegisterTest('Colormap', 'pixcmapGetRGBA', @Test_pixcmapGetRGBA, []);
  RegisterTest('Colormap', 'pixcmapGetRGBA32', @Test_pixcmapGetRGBA32, []);
  RegisterTest('Colormap', 'pixcmapResetColor', @Test_pixcmapResetColor, []);
  RegisterTest('Colormap', 'pixcmapSetAlpha', @Test_pixcmapSetAlpha, []);
  RegisterTest('Colormap', 'pixcmapGetIndex', @Test_pixcmapGetIndex, []);
  RegisterTest('Colormap', 'pixcmapHasColor', @Test_pixcmapHasColor, []);
  RegisterTest('Colormap', 'pixcmapIsOpaque', @Test_pixcmapIsOpaque, []);
  RegisterTest('Colormap', 'pixcmapNonOpaqueColorsInfo', @Test_pixcmapNonOpaqueColorsInfo, []);
  RegisterTest('Colormap', 'pixcmapIsBlackAndWhite', @Test_pixcmapIsBlackAndWhite, []);
  RegisterTest('Colormap', 'pixcmapCountGrayColors', @Test_pixcmapCountGrayColors, []);
  RegisterTest('Colormap', 'pixcmapGetRankIntensity', @Test_pixcmapGetRankIntensity, []);
  RegisterTest('Colormap', 'pixcmapGetNearestIndex', @Test_pixcmapGetNearestIndex, []);
  RegisterTest('Colormap', 'pixcmapGetNearestGrayIndex', @Test_pixcmapGetNearestGrayIndex, []);
  RegisterTest('Colormap', 'pixcmapGetDistanceToColor', @Test_pixcmapGetDistanceToColor, []);
  RegisterTest('Colormap', 'pixcmapGetRangeValues', @Test_pixcmapGetRangeValues, []);
  RegisterTest('Colormap', 'pixcmapGrayToFalseColor', @Test_pixcmapGrayToFalseColor, []);
  RegisterTest('Colormap', 'pixcmapGrayToColor', @Test_pixcmapGrayToColor, []);
  RegisterTest('Colormap', 'pixcmapColorToGray', @Test_pixcmapColorToGray, []);
  RegisterTest('Colormap', 'pixcmapConvertTo4', @Test_pixcmapConvertTo4, []);
  RegisterTest('Colormap', 'pixcmapConvertTo8', @Test_pixcmapConvertTo8, []);
  RegisterTest('Colormap', 'pixcmapRead', @Test_pixcmapRead, []);
  RegisterTest('Colormap', 'pixcmapReadStream', @Test_pixcmapReadStream, []);
  RegisterTest('Colormap', 'pixcmapReadMem', @Test_pixcmapReadMem, []);
  RegisterTest('Colormap', 'pixcmapWrite', @Test_pixcmapWrite, []);
  RegisterTest('Colormap', 'pixcmapWriteStream', @Test_pixcmapWriteStream, []);
  RegisterTest('Colormap', 'pixcmapWriteMem', @Test_pixcmapWriteMem, []);
  RegisterTest('Colormap', 'pixcmapToArrays', @Test_pixcmapToArrays, []);
  RegisterTest('Colormap', 'pixcmapToRGBTable', @Test_pixcmapToRGBTable, []);
  RegisterTest('Colormap', 'pixcmapSerializeToMemory', @Test_pixcmapSerializeToMemory, []);
  RegisterTest('Colormap', 'pixcmapDeserializeFromMemory', @Test_pixcmapDeserializeFromMemory, []);
  RegisterTest('Colormap', 'pixcmapConvertToHex', @Test_pixcmapConvertToHex, []);
  RegisterTest('Colormap', 'pixcmapGammaTRC', @Test_pixcmapGammaTRC, []);
  RegisterTest('Colormap', 'pixcmapContrastTRC', @Test_pixcmapContrastTRC, []);
  RegisterTest('Colormap', 'pixcmapShiftIntensity', @Test_pixcmapShiftIntensity, []);
  RegisterTest('Colormap', 'pixcmapShiftByComponent', @Test_pixcmapShiftByComponent, []);
  RegisterTest('Colormap', 'pixcmapToOctcubeLUT', @Test_pixcmapToOctcubeLUT, []);
  RegisterTest('Colormap', 'pixcmapConvertRGBToHSV', @Test_pixcmapConvertRGBToHSV, []);
  RegisterTest('Colormap', 'pixcmapConvertHSVToRGB', @Test_pixcmapConvertHSVToRGB, []);
  RegisterTest('Colormap', 'pixcmapConvertRGBToYUV', @Test_pixcmapConvertRGBToYUV, []);
  RegisterTest('Colormap', 'pixcmapConvertYUVToRGB', @Test_pixcmapConvertYUVToRGB, []);

  RegisterTest('Colormap', 'Func_pixcmapCreate', @Test_Func_pixcmapCreate, []);
  RegisterTest('Colormap', 'Func_pixcmapAddColor', @Test_Func_pixcmapAddColor, []);
  RegisterTest('Colormap', 'Func_pixcmapGetColor', @Test_Func_pixcmapGetColor, []);
  RegisterTest('Colormap', 'Func_pixcmapCopy', @Test_Func_pixcmapCopy, []);

end.
