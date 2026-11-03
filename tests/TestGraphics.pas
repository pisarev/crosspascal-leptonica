{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestGraphics;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_bmfCreate;
begin
  AssertFuncLoaded(@Lept.Graphics.BmfCreate, 'bmfCreate');
end;

procedure Test_bmfDestroy;
begin
  AssertFuncLoaded(@Lept.Graphics.BmfDestroy, 'bmfDestroy');
end;

procedure Test_bmfGetPix;
begin
  AssertFuncLoaded(@Lept.Graphics.BmfGetPix, 'bmfGetPix');
end;

procedure Test_bmfGetWidth;
begin
  AssertFuncLoaded(@Lept.Graphics.BmfGetWidth, 'bmfGetWidth');
end;

procedure Test_bmfGetBaseline;
begin
  AssertFuncLoaded(@Lept.Graphics.BmfGetBaseline, 'bmfGetBaseline');
end;

procedure Test_pixPaintBoxa;
begin
  AssertFuncLoaded(@Lept.Graphics.PixPaintBoxa, 'pixPaintBoxa');
end;

procedure Test_pixPaintBoxaRandom;
begin
  AssertFuncLoaded(@Lept.Graphics.PixPaintBoxaRandom, 'pixPaintBoxaRandom');
end;

procedure Test_gplotCreate;
begin
  AssertFuncLoaded(@Lept.Graphics.GplotCreate, 'gplotCreate');
end;

procedure Test_gplotDestroy;
begin
  AssertFuncLoaded(@Lept.Graphics.GplotDestroy, 'gplotDestroy');
end;

procedure Test_gplotAddPlot;
begin
  AssertFuncLoaded(@Lept.Graphics.GplotAddPlot, 'gplotAddPlot');
end;

procedure Test_gplotSetScaling;
begin
  AssertFuncLoaded(@Lept.Graphics.GplotSetScaling, 'gplotSetScaling');
end;

procedure Test_gplotMakeOutputPix;
begin
  AssertFuncLoaded(@Lept.Graphics.GplotMakeOutputPix, 'gplotMakeOutputPix');
end;

procedure Test_gplotMakeOutput;
begin
  AssertFuncLoaded(@Lept.Graphics.GplotMakeOutput, 'gplotMakeOutput');
end;

procedure Test_gplotGenCommandFile;
begin
  AssertFuncLoaded(@Lept.Graphics.GplotGenCommandFile, 'gplotGenCommandFile');
end;

procedure Test_gplotGenDataFiles;
begin
  AssertFuncLoaded(@Lept.Graphics.GplotGenDataFiles, 'gplotGenDataFiles');
end;

procedure Test_gplotSimple1;
begin
  AssertFuncLoaded(@Lept.Graphics.GplotSimple1, 'gplotSimple1');
end;

procedure Test_gplotSimple2;
begin
  AssertFuncLoaded(@Lept.Graphics.GplotSimple2, 'gplotSimple2');
end;

procedure Test_gplotSimpleN;
begin
  AssertFuncLoaded(@Lept.Graphics.GplotSimpleN, 'gplotSimpleN');
end;

procedure Test_gplotSimplePix1;
begin
  AssertFuncLoaded(@Lept.Graphics.GplotSimplePix1, 'gplotSimplePix1');
end;

procedure Test_gplotSimplePix2;
begin
  AssertFuncLoaded(@Lept.Graphics.GplotSimplePix2, 'gplotSimplePix2');
end;

procedure Test_gplotSimplePixN;
begin
  AssertFuncLoaded(@Lept.Graphics.GplotSimplePixN, 'gplotSimplePixN');
end;

procedure Test_gplotSimpleXY1;
begin
  AssertFuncLoaded(@Lept.Graphics.GplotSimpleXY1, 'gplotSimpleXY1');
end;

procedure Test_gplotSimpleXY2;
begin
  AssertFuncLoaded(@Lept.Graphics.GplotSimpleXY2, 'gplotSimpleXY2');
end;

procedure Test_gplotSimpleXYN;
begin
  AssertFuncLoaded(@Lept.Graphics.GplotSimpleXYN, 'gplotSimpleXYN');
end;

procedure Test_gplotGeneralPix1;
begin
  AssertFuncLoaded(@Lept.Graphics.GplotGeneralPix1, 'gplotGeneralPix1');
end;

procedure Test_gplotGeneralPix2;
begin
  AssertFuncLoaded(@Lept.Graphics.GplotGeneralPix2, 'gplotGeneralPix2');
end;

procedure Test_gplotGeneralPixN;
begin
  AssertFuncLoaded(@Lept.Graphics.GplotGeneralPixN, 'gplotGeneralPixN');
end;

procedure Test_gplotRead;
begin
  AssertFuncLoaded(@Lept.Graphics.GplotRead, 'gplotRead');
end;

procedure Test_gplotWrite;
begin
  AssertFuncLoaded(@Lept.Graphics.GplotWrite, 'gplotWrite');
end;

procedure Test_generatePtaLine;
begin
  AssertFuncLoaded(@Lept.Graphics.GeneratePtaLine, 'generatePtaLine');
end;

procedure Test_generatePtaWideLine;
begin
  AssertFuncLoaded(@Lept.Graphics.GeneratePtaWideLine, 'generatePtaWideLine');
end;

procedure Test_generatePtaBox;
begin
  AssertFuncLoaded(@Lept.Graphics.GeneratePtaBox, 'generatePtaBox');
end;

procedure Test_generatePtaBoxa;
begin
  AssertFuncLoaded(@Lept.Graphics.GeneratePtaBoxa, 'generatePtaBoxa');
end;

procedure Test_generatePtaHashBox;
begin
  AssertFuncLoaded(@Lept.Graphics.GeneratePtaHashBox, 'generatePtaHashBox');
end;

procedure Test_generatePtaHashBoxa;
begin
  AssertFuncLoaded(@Lept.Graphics.GeneratePtaHashBoxa, 'generatePtaHashBoxa');
end;

procedure Test_generatePtaaBoxa;
begin
  AssertFuncLoaded(@Lept.Graphics.GeneratePtaaBoxa, 'generatePtaaBoxa');
end;

procedure Test_generatePtaaHashBoxa;
begin
  AssertFuncLoaded(@Lept.Graphics.GeneratePtaaHashBoxa, 'generatePtaaHashBoxa');
end;

procedure Test_generatePtaPolyline;
begin
  AssertFuncLoaded(@Lept.Graphics.GeneratePtaPolyline, 'generatePtaPolyline');
end;

procedure Test_generatePtaGrid;
begin
  AssertFuncLoaded(@Lept.Graphics.GeneratePtaGrid, 'generatePtaGrid');
end;

procedure Test_generatePtaFilledCircle;
begin
  AssertFuncLoaded(@Lept.Graphics.GeneratePtaFilledCircle, 'generatePtaFilledCircle');
end;

procedure Test_generatePtaFilledSquare;
begin
  AssertFuncLoaded(@Lept.Graphics.GeneratePtaFilledSquare, 'generatePtaFilledSquare');
end;

procedure Test_generatePtaLineFromPt;
begin
  AssertFuncLoaded(@Lept.Graphics.GeneratePtaLineFromPt, 'generatePtaLineFromPt');
end;

procedure Test_pixRenderPlotFromNuma;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderPlotFromNuma, 'pixRenderPlotFromNuma');
end;

procedure Test_pixRenderPlotFromNumaGen;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderPlotFromNumaGen, 'pixRenderPlotFromNumaGen');
end;

procedure Test_pixRenderPta;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderPta, 'pixRenderPta');
end;

procedure Test_pixRenderPtaArb;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderPtaArb, 'pixRenderPtaArb');
end;

procedure Test_pixRenderPtaBlend;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderPtaBlend, 'pixRenderPtaBlend');
end;

procedure Test_pixRenderLine;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderLine, 'pixRenderLine');
end;

procedure Test_pixRenderLineArb;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderLineArb, 'pixRenderLineArb');
end;

procedure Test_pixRenderLineBlend;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderLineBlend, 'pixRenderLineBlend');
end;

procedure Test_pixRenderBox;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderBox, 'pixRenderBox');
end;

procedure Test_pixRenderBoxArb;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderBoxArb, 'pixRenderBoxArb');
end;

procedure Test_pixRenderBoxBlend;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderBoxBlend, 'pixRenderBoxBlend');
end;

procedure Test_pixRenderBoxa;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderBoxa, 'pixRenderBoxa');
end;

procedure Test_pixRenderBoxaArb;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderBoxaArb, 'pixRenderBoxaArb');
end;

procedure Test_pixRenderBoxaBlend;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderBoxaBlend, 'pixRenderBoxaBlend');
end;

procedure Test_pixRenderHashBox;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderHashBox, 'pixRenderHashBox');
end;

procedure Test_pixRenderHashBoxArb;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderHashBoxArb, 'pixRenderHashBoxArb');
end;

procedure Test_pixRenderHashBoxBlend;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderHashBoxBlend, 'pixRenderHashBoxBlend');
end;

procedure Test_pixRenderHashMaskArb;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderHashMaskArb, 'pixRenderHashMaskArb');
end;

procedure Test_pixRenderHashBoxa;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderHashBoxa, 'pixRenderHashBoxa');
end;

procedure Test_pixRenderHashBoxaArb;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderHashBoxaArb, 'pixRenderHashBoxaArb');
end;

procedure Test_pixRenderHashBoxaBlend;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderHashBoxaBlend, 'pixRenderHashBoxaBlend');
end;

procedure Test_pixRenderPolyline;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderPolyline, 'pixRenderPolyline');
end;

procedure Test_pixRenderPolylineArb;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderPolylineArb, 'pixRenderPolylineArb');
end;

procedure Test_pixRenderPolylineBlend;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderPolylineBlend, 'pixRenderPolylineBlend');
end;

procedure Test_pixRenderGridArb;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderGridArb, 'pixRenderGridArb');
end;

procedure Test_pixRenderRandomCmapPtaa;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderRandomCmapPtaa, 'pixRenderRandomCmapPtaa');
end;

procedure Test_pixRenderPolygon;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderPolygon, 'pixRenderPolygon');
end;

procedure Test_pixRenderContours;
begin
  AssertFuncLoaded(@Lept.Graphics.PixRenderContours, 'pixRenderContours');
end;

procedure Test_pixAddText;
begin
  AssertFuncLoaded(@Lept.Graphics.PixAddText, 'pixAddText');
end;

procedure Test_pixPaintThroughMask;
begin
  AssertFuncLoaded(@Lept.Graphics.PixPaintThroughMask, 'pixPaintThroughMask');
end;

procedure Test_pixPaintSelfThroughMask;
begin
  AssertFuncLoaded(@Lept.Graphics.PixPaintSelfThroughMask, 'pixPaintSelfThroughMask');
end;

procedure Test_pixAddSingleTextblock;
begin
  AssertFuncLoaded(@Lept.Graphics.PixAddSingleTextblock, 'pixAddSingleTextblock');
end;

procedure Test_pixAddTextlines;
begin
  AssertFuncLoaded(@Lept.Graphics.PixAddTextlines, 'pixAddTextlines');
end;

procedure Test_pixSetTextblock;
begin
  AssertFuncLoaded(@Lept.Graphics.PixSetTextblock, 'pixSetTextblock');
end;

procedure Test_pixSetTextline;
begin
  AssertFuncLoaded(@Lept.Graphics.PixSetTextline, 'pixSetTextline');
end;

procedure Test_bmfGetLineStrings;
begin
  AssertFuncLoaded(@Lept.Graphics.BmfGetLineStrings, 'bmfGetLineStrings');
end;

procedure Test_bmfGetWordWidths;
begin
  AssertFuncLoaded(@Lept.Graphics.BmfGetWordWidths, 'bmfGetWordWidths');
end;

procedure Test_bmfGetStringWidth;
begin
  AssertFuncLoaded(@Lept.Graphics.BmfGetStringWidth, 'bmfGetStringWidth');
end;

procedure Test_l_chooseDisplayProg;
begin
  AssertFuncLoaded(@Lept.Graphics.L_chooseDisplayProg, 'l_chooseDisplayProg');
end;

procedure Test_Func_pixRenderLine;
var
  P: Pointer;
  Ret: Integer;
begin
  P := CreateColorPix(200, 200);
  Ret := Lept.Graphics.PixRenderLine(P, 10, 10, 190, 190, 3, 1);
  AssertEqualsInt(0, Ret, 'renderLine ok');
  SafePixDestroy(P);
end;

procedure Test_Func_pixRenderBox;
var
  P: Pointer;
  B: Pointer;
  Ret: Integer;
begin
  P := CreateColorPix(200, 200);
  B := Lept.Box.BoxCreate(20, 20, 100, 80);
  Ret := Lept.Graphics.PixRenderBox(P, B, 2, 1);
  AssertEqualsInt(0, Ret, 'renderBox ok');
  Lept.Box.BoxDestroy(@B);
  SafePixDestroy(P);
end;

initialization
  RegisterTest('Graphics', 'bmfCreate', @Test_bmfCreate, []);
  RegisterTest('Graphics', 'bmfDestroy', @Test_bmfDestroy, []);
  RegisterTest('Graphics', 'bmfGetPix', @Test_bmfGetPix, []);
  RegisterTest('Graphics', 'bmfGetWidth', @Test_bmfGetWidth, []);
  RegisterTest('Graphics', 'bmfGetBaseline', @Test_bmfGetBaseline, []);
  RegisterTest('Graphics', 'pixPaintBoxa', @Test_pixPaintBoxa, []);
  RegisterTest('Graphics', 'pixPaintBoxaRandom', @Test_pixPaintBoxaRandom, []);
  RegisterTest('Graphics', 'gplotCreate', @Test_gplotCreate, []);
  RegisterTest('Graphics', 'gplotDestroy', @Test_gplotDestroy, []);
  RegisterTest('Graphics', 'gplotAddPlot', @Test_gplotAddPlot, []);
  RegisterTest('Graphics', 'gplotSetScaling', @Test_gplotSetScaling, []);
  RegisterTest('Graphics', 'gplotMakeOutputPix', @Test_gplotMakeOutputPix, []);
  RegisterTest('Graphics', 'gplotMakeOutput', @Test_gplotMakeOutput, []);
  RegisterTest('Graphics', 'gplotGenCommandFile', @Test_gplotGenCommandFile, []);
  RegisterTest('Graphics', 'gplotGenDataFiles', @Test_gplotGenDataFiles, []);
  RegisterTest('Graphics', 'gplotSimple1', @Test_gplotSimple1, []);
  RegisterTest('Graphics', 'gplotSimple2', @Test_gplotSimple2, []);
  RegisterTest('Graphics', 'gplotSimpleN', @Test_gplotSimpleN, []);
  RegisterTest('Graphics', 'gplotSimplePix1', @Test_gplotSimplePix1, []);
  RegisterTest('Graphics', 'gplotSimplePix2', @Test_gplotSimplePix2, []);
  RegisterTest('Graphics', 'gplotSimplePixN', @Test_gplotSimplePixN, []);
  RegisterTest('Graphics', 'gplotSimpleXY1', @Test_gplotSimpleXY1, []);
  RegisterTest('Graphics', 'gplotSimpleXY2', @Test_gplotSimpleXY2, []);
  RegisterTest('Graphics', 'gplotSimpleXYN', @Test_gplotSimpleXYN, []);
  RegisterTest('Graphics', 'gplotGeneralPix1', @Test_gplotGeneralPix1, []);
  RegisterTest('Graphics', 'gplotGeneralPix2', @Test_gplotGeneralPix2, []);
  RegisterTest('Graphics', 'gplotGeneralPixN', @Test_gplotGeneralPixN, []);
  RegisterTest('Graphics', 'gplotRead', @Test_gplotRead, []);
  RegisterTest('Graphics', 'gplotWrite', @Test_gplotWrite, []);
  RegisterTest('Graphics', 'generatePtaLine', @Test_generatePtaLine, []);
  RegisterTest('Graphics', 'generatePtaWideLine', @Test_generatePtaWideLine, []);
  RegisterTest('Graphics', 'generatePtaBox', @Test_generatePtaBox, []);
  RegisterTest('Graphics', 'generatePtaBoxa', @Test_generatePtaBoxa, []);
  RegisterTest('Graphics', 'generatePtaHashBox', @Test_generatePtaHashBox, []);
  RegisterTest('Graphics', 'generatePtaHashBoxa', @Test_generatePtaHashBoxa, []);
  RegisterTest('Graphics', 'generatePtaaBoxa', @Test_generatePtaaBoxa, []);
  RegisterTest('Graphics', 'generatePtaaHashBoxa', @Test_generatePtaaHashBoxa, []);
  RegisterTest('Graphics', 'generatePtaPolyline', @Test_generatePtaPolyline, []);
  RegisterTest('Graphics', 'generatePtaGrid', @Test_generatePtaGrid, []);
  RegisterTest('Graphics', 'generatePtaFilledCircle', @Test_generatePtaFilledCircle, []);
  RegisterTest('Graphics', 'generatePtaFilledSquare', @Test_generatePtaFilledSquare, []);
  RegisterTest('Graphics', 'generatePtaLineFromPt', @Test_generatePtaLineFromPt, []);
  RegisterTest('Graphics', 'pixRenderPlotFromNuma', @Test_pixRenderPlotFromNuma, []);
  RegisterTest('Graphics', 'pixRenderPlotFromNumaGen', @Test_pixRenderPlotFromNumaGen, []);
  RegisterTest('Graphics', 'pixRenderPta', @Test_pixRenderPta, []);
  RegisterTest('Graphics', 'pixRenderPtaArb', @Test_pixRenderPtaArb, []);
  RegisterTest('Graphics', 'pixRenderPtaBlend', @Test_pixRenderPtaBlend, []);
  RegisterTest('Graphics', 'pixRenderLine', @Test_pixRenderLine, []);
  RegisterTest('Graphics', 'pixRenderLineArb', @Test_pixRenderLineArb, []);
  RegisterTest('Graphics', 'pixRenderLineBlend', @Test_pixRenderLineBlend, []);
  RegisterTest('Graphics', 'pixRenderBox', @Test_pixRenderBox, []);
  RegisterTest('Graphics', 'pixRenderBoxArb', @Test_pixRenderBoxArb, []);
  RegisterTest('Graphics', 'pixRenderBoxBlend', @Test_pixRenderBoxBlend, []);
  RegisterTest('Graphics', 'pixRenderBoxa', @Test_pixRenderBoxa, []);
  RegisterTest('Graphics', 'pixRenderBoxaArb', @Test_pixRenderBoxaArb, []);
  RegisterTest('Graphics', 'pixRenderBoxaBlend', @Test_pixRenderBoxaBlend, []);
  RegisterTest('Graphics', 'pixRenderHashBox', @Test_pixRenderHashBox, []);
  RegisterTest('Graphics', 'pixRenderHashBoxArb', @Test_pixRenderHashBoxArb, []);
  RegisterTest('Graphics', 'pixRenderHashBoxBlend', @Test_pixRenderHashBoxBlend, []);
  RegisterTest('Graphics', 'pixRenderHashMaskArb', @Test_pixRenderHashMaskArb, []);
  RegisterTest('Graphics', 'pixRenderHashBoxa', @Test_pixRenderHashBoxa, []);
  RegisterTest('Graphics', 'pixRenderHashBoxaArb', @Test_pixRenderHashBoxaArb, []);
  RegisterTest('Graphics', 'pixRenderHashBoxaBlend', @Test_pixRenderHashBoxaBlend, []);
  RegisterTest('Graphics', 'pixRenderPolyline', @Test_pixRenderPolyline, []);
  RegisterTest('Graphics', 'pixRenderPolylineArb', @Test_pixRenderPolylineArb, []);
  RegisterTest('Graphics', 'pixRenderPolylineBlend', @Test_pixRenderPolylineBlend, []);
  RegisterTest('Graphics', 'pixRenderGridArb', @Test_pixRenderGridArb, []);
  RegisterTest('Graphics', 'pixRenderRandomCmapPtaa', @Test_pixRenderRandomCmapPtaa, []);
  RegisterTest('Graphics', 'pixRenderPolygon', @Test_pixRenderPolygon, []);
  RegisterTest('Graphics', 'pixRenderContours', @Test_pixRenderContours, []);
  RegisterTest('Graphics', 'pixAddText', @Test_pixAddText, []);
  RegisterTest('Graphics', 'pixPaintThroughMask', @Test_pixPaintThroughMask, []);
  RegisterTest('Graphics', 'pixPaintSelfThroughMask', @Test_pixPaintSelfThroughMask, []);
  RegisterTest('Graphics', 'pixAddSingleTextblock', @Test_pixAddSingleTextblock, []);
  RegisterTest('Graphics', 'pixAddTextlines', @Test_pixAddTextlines, []);
  RegisterTest('Graphics', 'pixSetTextblock', @Test_pixSetTextblock, []);
  RegisterTest('Graphics', 'pixSetTextline', @Test_pixSetTextline, []);
  RegisterTest('Graphics', 'bmfGetLineStrings', @Test_bmfGetLineStrings, []);
  RegisterTest('Graphics', 'bmfGetWordWidths', @Test_bmfGetWordWidths, []);
  RegisterTest('Graphics', 'bmfGetStringWidth', @Test_bmfGetStringWidth, []);
  RegisterTest('Graphics', 'l_chooseDisplayProg', @Test_l_chooseDisplayProg, []);

  RegisterTest('Graphics', 'Func_pixRenderLine', @Test_Func_pixRenderLine, []);
  RegisterTest('Graphics', 'Func_pixRenderBox', @Test_Func_pixRenderBox, []);

end.
