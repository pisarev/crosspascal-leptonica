{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestEnhance;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_pixCleanBackgroundToWhite;
begin
  AssertFuncLoaded(@Lept.Enhance.PixCleanBackgroundToWhite, 'pixCleanBackgroundToWhite');
end;

procedure Test_pixBackgroundNormSimple;
begin
  AssertFuncLoaded(@Lept.Enhance.PixBackgroundNormSimple, 'pixBackgroundNormSimple');
end;

procedure Test_pixBackgroundNorm;
begin
  AssertFuncLoaded(@Lept.Enhance.PixBackgroundNorm, 'pixBackgroundNorm');
end;

procedure Test_pixBackgroundNormMorph;
begin
  AssertFuncLoaded(@Lept.Enhance.PixBackgroundNormMorph, 'pixBackgroundNormMorph');
end;

procedure Test_pixBackgroundNormGrayArray;
begin
  AssertFuncLoaded(@Lept.Enhance.PixBackgroundNormGrayArray, 'pixBackgroundNormGrayArray');
end;

procedure Test_pixBackgroundNormRGBArrays;
begin
  AssertFuncLoaded(@Lept.Enhance.PixBackgroundNormRGBArrays, 'pixBackgroundNormRGBArrays');
end;

procedure Test_pixBackgroundNormGrayArrayMorph;
begin
  AssertFuncLoaded(@Lept.Enhance.PixBackgroundNormGrayArrayMorph, 'pixBackgroundNormGrayArrayMorph');
end;

procedure Test_pixBackgroundNormRGBArraysMorph;
begin
  AssertFuncLoaded(@Lept.Enhance.PixBackgroundNormRGBArraysMorph, 'pixBackgroundNormRGBArraysMorph');
end;

procedure Test_pixGetInvBackgroundMap;
begin
  AssertFuncLoaded(@Lept.Enhance.PixGetInvBackgroundMap, 'pixGetInvBackgroundMap');
end;

procedure Test_pixApplyInvBackgroundGrayMap;
begin
  AssertFuncLoaded(@Lept.Enhance.PixApplyInvBackgroundGrayMap, 'pixApplyInvBackgroundGrayMap');
end;

procedure Test_pixApplyInvBackgroundRGBMap;
begin
  AssertFuncLoaded(@Lept.Enhance.PixApplyInvBackgroundRGBMap, 'pixApplyInvBackgroundRGBMap');
end;

procedure Test_pixApplyVariableGrayMap;
begin
  AssertFuncLoaded(@Lept.Enhance.PixApplyVariableGrayMap, 'pixApplyVariableGrayMap');
end;

procedure Test_pixGlobalNormRGB;
begin
  AssertFuncLoaded(@Lept.Enhance.PixGlobalNormRGB, 'pixGlobalNormRGB');
end;

procedure Test_pixGlobalNormNoSatRGB;
begin
  AssertFuncLoaded(@Lept.Enhance.PixGlobalNormNoSatRGB, 'pixGlobalNormNoSatRGB');
end;

procedure Test_pixBackgroundNormFlex;
begin
  AssertFuncLoaded(@Lept.Enhance.PixBackgroundNormFlex, 'pixBackgroundNormFlex');
end;

procedure Test_pixContrastNorm;
begin
  AssertFuncLoaded(@Lept.Enhance.PixContrastNorm, 'pixContrastNorm');
end;

procedure Test_pixBackgroundNormTo1MinMax;
begin
  AssertFuncLoaded(@Lept.Enhance.PixBackgroundNormTo1MinMax, 'pixBackgroundNormTo1MinMax');
end;

procedure Test_pixConvertTo8MinMax;
begin
  AssertFuncLoaded(@Lept.Enhance.PixConvertTo8MinMax, 'pixConvertTo8MinMax');
end;

procedure Test_pixGammaTRC;
begin
  AssertFuncLoaded(@Lept.Enhance.PixGammaTRC, 'pixGammaTRC');
end;

procedure Test_pixGammaTRCMasked;
begin
  AssertFuncLoaded(@Lept.Enhance.PixGammaTRCMasked, 'pixGammaTRCMasked');
end;

procedure Test_pixGammaTRCWithAlpha;
begin
  AssertFuncLoaded(@Lept.Enhance.PixGammaTRCWithAlpha, 'pixGammaTRCWithAlpha');
end;

procedure Test_pixContrastTRC;
begin
  AssertFuncLoaded(@Lept.Enhance.PixContrastTRC, 'pixContrastTRC');
end;

procedure Test_pixContrastTRCMasked;
begin
  AssertFuncLoaded(@Lept.Enhance.PixContrastTRCMasked, 'pixContrastTRCMasked');
end;

procedure Test_pixEqualizeTRC;
begin
  AssertFuncLoaded(@Lept.Enhance.PixEqualizeTRC, 'pixEqualizeTRC');
end;

procedure Test_pixUnsharpMasking;
begin
  AssertFuncLoaded(@Lept.Enhance.PixUnsharpMasking, 'pixUnsharpMasking');
end;

procedure Test_pixUnsharpMaskingGray;
begin
  AssertFuncLoaded(@Lept.Enhance.PixUnsharpMaskingGray, 'pixUnsharpMaskingGray');
end;

procedure Test_pixUnsharpMaskingFast;
begin
  AssertFuncLoaded(@Lept.Enhance.PixUnsharpMaskingFast, 'pixUnsharpMaskingFast');
end;

procedure Test_pixUnsharpMaskingGrayFast;
begin
  AssertFuncLoaded(@Lept.Enhance.PixUnsharpMaskingGrayFast, 'pixUnsharpMaskingGrayFast');
end;

procedure Test_pixUnsharpMaskingGray1D;
begin
  AssertFuncLoaded(@Lept.Enhance.PixUnsharpMaskingGray1D, 'pixUnsharpMaskingGray1D');
end;

procedure Test_pixUnsharpMaskingGray2D;
begin
  AssertFuncLoaded(@Lept.Enhance.PixUnsharpMaskingGray2D, 'pixUnsharpMaskingGray2D');
end;

procedure Test_pixModifyHue;
begin
  AssertFuncLoaded(@Lept.Enhance.PixModifyHue, 'pixModifyHue');
end;

procedure Test_pixModifySaturation;
begin
  AssertFuncLoaded(@Lept.Enhance.PixModifySaturation, 'pixModifySaturation');
end;

procedure Test_pixModifyBrightness;
begin
  AssertFuncLoaded(@Lept.Enhance.PixModifyBrightness, 'pixModifyBrightness');
end;

procedure Test_pixMultConstantColor;
begin
  AssertFuncLoaded(@Lept.Enhance.PixMultConstantColor, 'pixMultConstantColor');
end;

procedure Test_pixMultConstantGray;
begin
  AssertFuncLoaded(@Lept.Enhance.PixMultConstantGray, 'pixMultConstantGray');
end;

procedure Test_pixMultConstAccumulate;
begin
  AssertFuncLoaded(@Lept.Enhance.PixMultConstAccumulate, 'pixMultConstAccumulate');
end;

procedure Test_pixModifyStrokeWidth;
begin
  AssertFuncLoaded(@Lept.Enhance.PixModifyStrokeWidth, 'pixModifyStrokeWidth');
end;

procedure Test_Func_pixGammaTRC;
var
  P, R: Pointer;
begin
  P := CreateGrayPix(100, 80);
  R := Lept.Enhance.PixGammaTRC(nil, P, 1.5, 0, 255);
  AssertNotNil(R, 'gammaTRC');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

procedure Test_Func_pixContrastTRC;
var
  P, R: Pointer;
begin
  P := CreateGrayPix(100, 80);
  R := Lept.Enhance.PixContrastTRC(nil, P, 0.5);
  AssertNotNil(R, 'contrastTRC');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

procedure Test_Func_pixUnsharpMasking;
var
  P, R: Pointer;
begin
  P := CreateGrayPix(100, 80);
  R := Lept.Enhance.PixUnsharpMasking(P, 3, 0.5);
  AssertNotNil(R, 'unsharpMasking');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

procedure Test_Func_pixEqualizeTRC;
var
  P, R: Pointer;
begin
  P := CreateGrayPix(100, 80);
  R := Lept.Enhance.PixEqualizeTRC(nil, P, 0.5, 10);
  AssertNotNil(R, 'equalizeTRC');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

initialization
  RegisterTest('Enhance', 'pixCleanBackgroundToWhite', @Test_pixCleanBackgroundToWhite, []);
  RegisterTest('Enhance', 'pixBackgroundNormSimple', @Test_pixBackgroundNormSimple, []);
  RegisterTest('Enhance', 'pixBackgroundNorm', @Test_pixBackgroundNorm, []);
  RegisterTest('Enhance', 'pixBackgroundNormMorph', @Test_pixBackgroundNormMorph, []);
  RegisterTest('Enhance', 'pixBackgroundNormGrayArray', @Test_pixBackgroundNormGrayArray, []);
  RegisterTest('Enhance', 'pixBackgroundNormRGBArrays', @Test_pixBackgroundNormRGBArrays, []);
  RegisterTest('Enhance', 'pixBackgroundNormGrayArrayMorph', @Test_pixBackgroundNormGrayArrayMorph, []);
  RegisterTest('Enhance', 'pixBackgroundNormRGBArraysMorph', @Test_pixBackgroundNormRGBArraysMorph, []);
  RegisterTest('Enhance', 'pixGetInvBackgroundMap', @Test_pixGetInvBackgroundMap, []);
  RegisterTest('Enhance', 'pixApplyInvBackgroundGrayMap', @Test_pixApplyInvBackgroundGrayMap, []);
  RegisterTest('Enhance', 'pixApplyInvBackgroundRGBMap', @Test_pixApplyInvBackgroundRGBMap, []);
  RegisterTest('Enhance', 'pixApplyVariableGrayMap', @Test_pixApplyVariableGrayMap, []);
  RegisterTest('Enhance', 'pixGlobalNormRGB', @Test_pixGlobalNormRGB, []);
  RegisterTest('Enhance', 'pixGlobalNormNoSatRGB', @Test_pixGlobalNormNoSatRGB, []);
  RegisterTest('Enhance', 'pixBackgroundNormFlex', @Test_pixBackgroundNormFlex, []);
  RegisterTest('Enhance', 'pixContrastNorm', @Test_pixContrastNorm, []);
  RegisterTest('Enhance', 'pixBackgroundNormTo1MinMax', @Test_pixBackgroundNormTo1MinMax, []);
  RegisterTest('Enhance', 'pixConvertTo8MinMax', @Test_pixConvertTo8MinMax, []);
  RegisterTest('Enhance', 'pixGammaTRC', @Test_pixGammaTRC, []);
  RegisterTest('Enhance', 'pixGammaTRCMasked', @Test_pixGammaTRCMasked, []);
  RegisterTest('Enhance', 'pixGammaTRCWithAlpha', @Test_pixGammaTRCWithAlpha, []);
  RegisterTest('Enhance', 'pixContrastTRC', @Test_pixContrastTRC, []);
  RegisterTest('Enhance', 'pixContrastTRCMasked', @Test_pixContrastTRCMasked, []);
  RegisterTest('Enhance', 'pixEqualizeTRC', @Test_pixEqualizeTRC, []);
  RegisterTest('Enhance', 'pixUnsharpMasking', @Test_pixUnsharpMasking, []);
  RegisterTest('Enhance', 'pixUnsharpMaskingGray', @Test_pixUnsharpMaskingGray, []);
  RegisterTest('Enhance', 'pixUnsharpMaskingFast', @Test_pixUnsharpMaskingFast, []);
  RegisterTest('Enhance', 'pixUnsharpMaskingGrayFast', @Test_pixUnsharpMaskingGrayFast, []);
  RegisterTest('Enhance', 'pixUnsharpMaskingGray1D', @Test_pixUnsharpMaskingGray1D, []);
  RegisterTest('Enhance', 'pixUnsharpMaskingGray2D', @Test_pixUnsharpMaskingGray2D, []);
  RegisterTest('Enhance', 'pixModifyHue', @Test_pixModifyHue, []);
  RegisterTest('Enhance', 'pixModifySaturation', @Test_pixModifySaturation, []);
  RegisterTest('Enhance', 'pixModifyBrightness', @Test_pixModifyBrightness, []);
  RegisterTest('Enhance', 'pixMultConstantColor', @Test_pixMultConstantColor, []);
  RegisterTest('Enhance', 'pixMultConstantGray', @Test_pixMultConstantGray, []);
  RegisterTest('Enhance', 'pixMultConstAccumulate', @Test_pixMultConstAccumulate, []);
  RegisterTest('Enhance', 'pixModifyStrokeWidth', @Test_pixModifyStrokeWidth, []);

  RegisterTest('Enhance', 'Func_pixGammaTRC', @Test_Func_pixGammaTRC, []);
  RegisterTest('Enhance', 'Func_pixContrastTRC', @Test_Func_pixContrastTRC, []);
  RegisterTest('Enhance', 'Func_pixUnsharpMasking', @Test_Func_pixUnsharpMasking, []);
  RegisterTest('Enhance', 'Func_pixEqualizeTRC', @Test_Func_pixEqualizeTRC, []);

end.
