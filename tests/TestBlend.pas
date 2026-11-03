{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestBlend;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_pixBlend;
begin
  AssertFuncLoaded(@Lept.Blend.PixBlend, 'pixBlend');
end;

procedure Test_pixBlendMask;
begin
  AssertFuncLoaded(@Lept.Blend.PixBlendMask, 'pixBlendMask');
end;

procedure Test_pixBlendGray;
begin
  AssertFuncLoaded(@Lept.Blend.PixBlendGray, 'pixBlendGray');
end;

procedure Test_pixBlendGrayInverse;
begin
  AssertFuncLoaded(@Lept.Blend.PixBlendGrayInverse, 'pixBlendGrayInverse');
end;

procedure Test_pixBlendColor;
begin
  AssertFuncLoaded(@Lept.Blend.PixBlendColor, 'pixBlendColor');
end;

procedure Test_pixBlendColorByChannel;
begin
  AssertFuncLoaded(@Lept.Blend.PixBlendColorByChannel, 'pixBlendColorByChannel');
end;

procedure Test_pixBlendGrayAdapt;
begin
  AssertFuncLoaded(@Lept.Blend.PixBlendGrayAdapt, 'pixBlendGrayAdapt');
end;

procedure Test_pixFadeWithGray;
begin
  AssertFuncLoaded(@Lept.Blend.PixFadeWithGray, 'pixFadeWithGray');
end;

procedure Test_pixBlendHardLight;
begin
  AssertFuncLoaded(@Lept.Blend.PixBlendHardLight, 'pixBlendHardLight');
end;

procedure Test_pixBlendCmap;
begin
  AssertFuncLoaded(@Lept.Blend.PixBlendCmap, 'pixBlendCmap');
end;

procedure Test_pixBlendWithGrayMask;
begin
  AssertFuncLoaded(@Lept.Blend.PixBlendWithGrayMask, 'pixBlendWithGrayMask');
end;

procedure Test_pixBlendBackgroundToColor;
begin
  AssertFuncLoaded(@Lept.Blend.PixBlendBackgroundToColor, 'pixBlendBackgroundToColor');
end;

procedure Test_pixMultiplyByColor;
begin
  AssertFuncLoaded(@Lept.Blend.PixMultiplyByColor, 'pixMultiplyByColor');
end;

procedure Test_pixAlphaBlendUniform;
begin
  AssertFuncLoaded(@Lept.Blend.PixAlphaBlendUniform, 'pixAlphaBlendUniform');
end;

procedure Test_pixAddAlphaToBlend;
begin
  AssertFuncLoaded(@Lept.Blend.PixAddAlphaToBlend, 'pixAddAlphaToBlend');
end;

procedure Test_pixSetAlphaOverWhite;
begin
  AssertFuncLoaded(@Lept.Blend.PixSetAlphaOverWhite, 'pixSetAlphaOverWhite');
end;

procedure Test_pixLinearEdgeFade;
begin
  AssertFuncLoaded(@Lept.Blend.PixLinearEdgeFade, 'pixLinearEdgeFade');
end;

procedure Test_pixBlendBoxaRandom;
begin
  AssertFuncLoaded(@Lept.Blend.PixBlendBoxaRandom, 'pixBlendBoxaRandom');
end;

procedure Test_pixBlendInRect;
begin
  AssertFuncLoaded(@Lept.Blend.PixBlendInRect, 'pixBlendInRect');
end;

procedure Test_pixAddAlphaTo1bpp;
begin
  AssertFuncLoaded(@Lept.Blend.PixAddAlphaTo1bpp, 'pixAddAlphaTo1bpp');
end;

procedure Test_Func_pixAddConstantGray;
var
  P: Pointer;
  Val: Cardinal;
begin
  P := CreateGrayPix(50, 50);
  Lept.Pix.PixSetPixel(P, 5, 5, 100);
  Lept.Filter.PixAddConstantGray(P, 30);
  Val := 0;
  Lept.Pix.PixGetPixel(P, 5, 5, @Val);
  AssertEqualsInt(130, Integer(Val), 'added 30');
  SafePixDestroy(P);
end;

procedure Test_Func_pixMultConstantGray;
var
  P: Pointer;
  Val: Cardinal;
begin
  P := CreateGrayPix(50, 50);
  Lept.Pix.PixSetPixel(P, 5, 5, 100);
  Lept.Enhance.PixMultConstantGray(P, 2.0);
  Val := 0;
  Lept.Pix.PixGetPixel(P, 5, 5, @Val);
  AssertEqualsInt(200, Integer(Val), 'mult x2');
  SafePixDestroy(P);
end;

initialization
  RegisterTest('Blend', 'pixBlend', @Test_pixBlend, []);
  RegisterTest('Blend', 'pixBlendMask', @Test_pixBlendMask, []);
  RegisterTest('Blend', 'pixBlendGray', @Test_pixBlendGray, []);
  RegisterTest('Blend', 'pixBlendGrayInverse', @Test_pixBlendGrayInverse, []);
  RegisterTest('Blend', 'pixBlendColor', @Test_pixBlendColor, []);
  RegisterTest('Blend', 'pixBlendColorByChannel', @Test_pixBlendColorByChannel, []);
  RegisterTest('Blend', 'pixBlendGrayAdapt', @Test_pixBlendGrayAdapt, []);
  RegisterTest('Blend', 'pixFadeWithGray', @Test_pixFadeWithGray, []);
  RegisterTest('Blend', 'pixBlendHardLight', @Test_pixBlendHardLight, []);
  RegisterTest('Blend', 'pixBlendCmap', @Test_pixBlendCmap, []);
  RegisterTest('Blend', 'pixBlendWithGrayMask', @Test_pixBlendWithGrayMask, []);
  RegisterTest('Blend', 'pixBlendBackgroundToColor', @Test_pixBlendBackgroundToColor, []);
  RegisterTest('Blend', 'pixMultiplyByColor', @Test_pixMultiplyByColor, []);
  RegisterTest('Blend', 'pixAlphaBlendUniform', @Test_pixAlphaBlendUniform, []);
  RegisterTest('Blend', 'pixAddAlphaToBlend', @Test_pixAddAlphaToBlend, []);
  RegisterTest('Blend', 'pixSetAlphaOverWhite', @Test_pixSetAlphaOverWhite, []);
  RegisterTest('Blend', 'pixLinearEdgeFade', @Test_pixLinearEdgeFade, []);
  RegisterTest('Blend', 'pixBlendBoxaRandom', @Test_pixBlendBoxaRandom, []);
  RegisterTest('Blend', 'pixBlendInRect', @Test_pixBlendInRect, []);
  RegisterTest('Blend', 'pixAddAlphaTo1bpp', @Test_pixAddAlphaTo1bpp, []);

  RegisterTest('Blend', 'Func_pixAddConstantGray', @Test_Func_pixAddConstantGray, []);
  RegisterTest('Blend', 'Func_pixMultConstantGray', @Test_Func_pixMultConstantGray, []);

end.
