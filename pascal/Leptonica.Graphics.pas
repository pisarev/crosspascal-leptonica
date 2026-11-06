{ ************************************************************************** }
{                                                                            }
{ Leptonica.Graphics                                                         }
{                                                                            }
{ Copyright © 2026 Yuriy Pisarev (ypisareff@outlook.com)                     }
{                                                                            }
{ ************************************************************************** }

unit Leptonica.Graphics;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses
  {$IFDEF FPC}
  DynLibs,
  {$ELSE}
  {$IFDEF MSWINDOWS}
  Winapi.Windows,
  {$ENDIF}
  {$ENDIF}
  SysUtils, LeptonicaTypes;

type
  TLeptGraphicsModule = record
  public
    type
      TBmfCreate = function(dir: PAnsiChar; fontsize: Integer): PL_Bmf; cdecl;
      TBmfDestroy = procedure(pbmf: PPL_Bmf); cdecl;
      TBmfGetPix = function(bmf: PL_Bmf; chr: AnsiChar): PPix; cdecl;
      TBmfGetWidth = function(bmf: PL_Bmf; chr: AnsiChar; pw: PInteger): Integer; cdecl;
      TBmfGetBaseline = function(bmf: PL_Bmf; chr: AnsiChar; pbaseline: PInteger): Integer; cdecl;
      TPixPaintBoxa = function(pixs: PPix; boxa: PBoxa; val: Cardinal): PPix; cdecl;
      TPixPaintBoxaRandom = function(pixs: PPix; boxa: PBoxa): PPix; cdecl;
      TGplotCreate = function(rootname: PAnsiChar; outformat: Integer; title: PAnsiChar; xlabel: PAnsiChar;
        ylabel: PAnsiChar): PGPlot; cdecl;
      TGplotDestroy = procedure(pgplot: PPGPlot); cdecl;
      TGplotAddPlot = function(gplot: PGPlot; nax: PNuma; nay: PNuma; plotstyle: Integer;
        plotlabel: PAnsiChar): Integer; cdecl;
      TGplotSetScaling = function(gplot: PGPlot; scaling: Integer): Integer; cdecl;
      TGplotMakeOutputPix = function(gplot: PGPlot): PPix; cdecl;
      TGplotMakeOutput = function(gplot: PGPlot): Integer; cdecl;
      TGplotGenCommandFile = function(gplot: PGPlot): Integer; cdecl;
      TGplotGenDataFiles = function(gplot: PGPlot): Integer; cdecl;
      TGplotSimple1 = function(na: PNuma; outformat: Integer; outroot: PAnsiChar;
        title: PAnsiChar): Integer; cdecl;
      TGplotSimple2 = function(na1: PNuma; na2: PNuma; outformat: Integer; outroot: PAnsiChar;
        title: PAnsiChar): Integer; cdecl;
      TGplotSimpleN = function(naa: PNumaa; outformat: Integer; outroot: PAnsiChar;
        title: PAnsiChar): Integer; cdecl;
      TGplotSimplePix1 = function(na: PNuma; title: PAnsiChar): PPix; cdecl;
      TGplotSimplePix2 = function(na1: PNuma; na2: PNuma; title: PAnsiChar): PPix; cdecl;
      TGplotSimplePixN = function(naa: PNumaa; title: PAnsiChar): PPix; cdecl;
      TGplotSimpleXY1 = function(nax: PNuma; nay: PNuma; plotstyle: Integer; outformat: Integer;
        outroot: PAnsiChar; title: PAnsiChar): PGPlot; cdecl;
      TGplotSimpleXY2 = function(nax: PNuma; nay1: PNuma; nay2: PNuma; plotstyle: Integer; outformat: Integer;
        outroot: PAnsiChar; title: PAnsiChar): PGPlot; cdecl;
      TGplotSimpleXYN = function(nax: PNuma; naay: PNumaa; plotstyle: Integer; outformat: Integer;
        outroot: PAnsiChar; title: PAnsiChar): PGPlot; cdecl;
      TGplotGeneralPix1 = function(na: PNuma; plotstyle: Integer; rootname: PAnsiChar; title: PAnsiChar;
        xlabel: PAnsiChar; ylabel: PAnsiChar): PPix; cdecl;
      TGplotGeneralPix2 = function(na1: PNuma; na2: PNuma; plotstyle: Integer; rootname: PAnsiChar;
        title: PAnsiChar; xlabel: PAnsiChar; ylabel: PAnsiChar): PPix; cdecl;
      TGplotGeneralPixN = function(nax: PNuma; naay: PNumaa; plotstyle: Integer; rootname: PAnsiChar;
        title: PAnsiChar; xlabel: PAnsiChar; ylabel: PAnsiChar): PPix; cdecl;
      TGplotRead = function(filename: PAnsiChar): PGPlot; cdecl;
      TGplotWrite = function(filename: PAnsiChar; gplot: PGPlot): Integer; cdecl;
      TGeneratePtaLine = function(x1: Integer; y1: Integer; x2: Integer; y2: Integer): PPta; cdecl;
      TGeneratePtaWideLine = function(x1: Integer; y1: Integer; x2: Integer; y2: Integer;
        width: Integer): PPta; cdecl;
      TGeneratePtaBox = function(box: PBox; width: Integer): PPta; cdecl;
      TGeneratePtaBoxa = function(boxa: PBoxa; width: Integer; removedups: Integer): PPta; cdecl;
      TGeneratePtaHashBox = function(box: PBox; spacing: Integer; width: Integer; orient: Integer;
        outline: Integer): PPta; cdecl;
      TGeneratePtaHashBoxa = function(boxa: PBoxa; spacing: Integer; width: Integer; orient: Integer;
        outline: Integer; removedups: Integer): PPta; cdecl;
      TGeneratePtaaBoxa = function(boxa: PBoxa): PPtaa; cdecl;
      TGeneratePtaaHashBoxa = function(boxa: PBoxa; spacing: Integer; width: Integer; orient: Integer;
        outline: Integer): PPtaa; cdecl;
      TGeneratePtaPolyline = function(ptas: PPta; width: Integer; closeflag: Integer;
        removedups: Integer): PPta; cdecl;
      TGeneratePtaGrid = function(w: Integer; h: Integer; nx: Integer; ny: Integer;
        width: Integer): PPta; cdecl;
      TGeneratePtaFilledCircle = function(radius: Integer): PPta; cdecl;
      TGeneratePtaFilledSquare = function(side: Integer): PPta; cdecl;
      TGeneratePtaLineFromPt = function(x: Integer; y: Integer; length: Double; radang: Double): PPta; cdecl;
      TPixRenderPlotFromNuma = function(ppix: PPPix; na: PNuma; plotloc: Integer; linewidth: Integer;
        max: Integer; color: Cardinal): Integer; cdecl;
      TPixRenderPlotFromNumaGen = function(ppix: PPPix; na: PNuma; orient: Integer; linewidth: Integer;
        refpos: Integer; max: Integer; drawref: Integer; color: Cardinal): Integer; cdecl;
      TPixRenderPta = function(pix: PPix; pta: PPta; op: Integer): Integer; cdecl;
      TPixRenderPtaArb = function(pix: PPix; pta: PPta; rval: Byte; gval: Byte; bval: Byte): Integer; cdecl;
      TPixRenderPtaBlend = function(pix: PPix; pta: PPta; rval: Byte; gval: Byte; bval: Byte;
        fract: Single): Integer; cdecl;
      TPixRenderLine = function(pix: PPix; x1: Integer; y1: Integer; x2: Integer; y2: Integer; width: Integer;
        op: Integer): Integer; cdecl;
      TPixRenderLineArb = function(pix: PPix; x1: Integer; y1: Integer; x2: Integer; y2: Integer;
        width: Integer; rval: Byte; gval: Byte; bval: Byte): Integer; cdecl;
      TPixRenderLineBlend = function(pix: PPix; x1: Integer; y1: Integer; x2: Integer; y2: Integer;
        width: Integer; rval: Byte; gval: Byte; bval: Byte; fract: Single): Integer; cdecl;
      TPixRenderBox = function(pix: PPix; box: PBox; width: Integer; op: Integer): Integer; cdecl;
      TPixRenderBoxArb = function(pix: PPix; box: PBox; width: Integer; rval: Byte; gval: Byte;
        bval: Byte): Integer; cdecl;
      TPixRenderBoxBlend = function(pix: PPix; box: PBox; width: Integer; rval: Byte; gval: Byte; bval: Byte;
        fract: Single): Integer; cdecl;
      TPixRenderBoxa = function(pix: PPix; boxa: PBoxa; width: Integer; op: Integer): Integer; cdecl;
      TPixRenderBoxaArb = function(pix: PPix; boxa: PBoxa; width: Integer; rval: Byte; gval: Byte;
        bval: Byte): Integer; cdecl;
      TPixRenderBoxaBlend = function(pix: PPix; boxa: PBoxa; width: Integer; rval: Byte; gval: Byte;
        bval: Byte; fract: Single; removedups: Integer): Integer; cdecl;
      TPixRenderHashBox = function(pix: PPix; box: PBox; spacing: Integer; width: Integer; orient: Integer;
        outline: Integer; op: Integer): Integer; cdecl;
      TPixRenderHashBoxArb = function(pix: PPix; box: PBox; spacing: Integer; width: Integer; orient: Integer;
        outline: Integer; rval: Integer; gval: Integer; bval: Integer): Integer; cdecl;
      TPixRenderHashBoxBlend = function(pix: PPix; box: PBox; spacing: Integer; width: Integer;
        orient: Integer; outline: Integer; rval: Integer; gval: Integer; bval: Integer;
        fract: Single): Integer; cdecl;
      TPixRenderHashMaskArb = function(pix: PPix; pixm: PPix; x: Integer; y: Integer; spacing: Integer;
        width: Integer; orient: Integer; outline: Integer; rval: Integer; gval: Integer;
        bval: Integer): Integer; cdecl;
      TPixRenderHashBoxa = function(pix: PPix; boxa: PBoxa; spacing: Integer; width: Integer; orient: Integer;
        outline: Integer; op: Integer): Integer; cdecl;
      TPixRenderHashBoxaArb = function(pix: PPix; boxa: PBoxa; spacing: Integer; width: Integer;
        orient: Integer; outline: Integer; rval: Integer; gval: Integer; bval: Integer): Integer; cdecl;
      TPixRenderHashBoxaBlend = function(pix: PPix; boxa: PBoxa; spacing: Integer; width: Integer;
        orient: Integer; outline: Integer; rval: Integer; gval: Integer; bval: Integer;
        fract: Single): Integer; cdecl;
      TPixRenderPolyline = function(pix: PPix; ptas: PPta; width: Integer; op: Integer;
        closeflag: Integer): Integer; cdecl;
      TPixRenderPolylineArb = function(pix: PPix; ptas: PPta; width: Integer; rval: Byte; gval: Byte;
        bval: Byte; closeflag: Integer): Integer; cdecl;
      TPixRenderPolylineBlend = function(pix: PPix; ptas: PPta; width: Integer; rval: Byte; gval: Byte;
        bval: Byte; fract: Single; closeflag: Integer; removedups: Integer): Integer; cdecl;
      TPixRenderGridArb = function(pix: PPix; nx: Integer; ny: Integer; width: Integer; rval: Byte;
        gval: Byte; bval: Byte): Integer; cdecl;
      TPixRenderRandomCmapPtaa = function(pix: PPix; ptaa: PPtaa; polyflag: Integer; width: Integer;
        closeflag: Integer): PPix; cdecl;
      TPixRenderPolygon = function(ptas: PPta; width: Integer; pxmin: PInteger; pymin: PInteger): PPix; cdecl;
      TPixRenderContours = function(pixs: PPix; startval: Integer; incr: Integer;
        outdepth: Integer): PPix; cdecl;
      TPixAddText = function(pix: PPix; textstring: PAnsiChar): Integer; cdecl;
      TPixPaintThroughMask = function(pixd: PPix; pixm: PPix; x: Integer; y: Integer;
        val: Cardinal): Integer; cdecl;
      TPixPaintSelfThroughMask = function(pixd: PPix; pixm: PPix; x: Integer; y: Integer; searchdir: Integer;
        mindist: Integer; tilesize: Integer; ntiles: Integer; distblend: Integer): Integer; cdecl;
      TPixAddSingleTextblock = function(pixs: PPix; bmf: PL_Bmf; textstr: PAnsiChar; val: Cardinal;
        location: Integer; poverflow: PInteger): PPix; cdecl;
      TPixAddTextlines = function(pixs: PPix; bmf: PL_Bmf; textstr: PAnsiChar; val: Cardinal;
        location: Integer): PPix; cdecl;
      TPixSetTextblock = function(pixs: PPix; bmf: PL_Bmf; textstr: PAnsiChar; val: Cardinal; x0: Integer;
        y0: Integer; wtext: Integer; firstindent: Integer; poverflow: PInteger): Integer; cdecl;
      TPixSetTextline = function(pixs: PPix; bmf: PL_Bmf; textstr: PAnsiChar; val: Cardinal; x0: Integer;
        y0: Integer; pwidth: PInteger; poverflow: PInteger): Integer; cdecl;
      TBmfGetLineStrings = function(bmf: PL_Bmf; textstr: PAnsiChar; maxw: Integer; firstindent: Integer;
        ph: PInteger): PSarray; cdecl;
      TBmfGetWordWidths = function(bmf: PL_Bmf; textstr: PAnsiChar; sa: PSarray): PNuma; cdecl;
      TBmfGetStringWidth = function(bmf: PL_Bmf; textstr: PAnsiChar; pw: PInteger): Integer; cdecl;
      TL_chooseDisplayProg = procedure(selection: Integer); cdecl;
    var
      BmfCreate: TBmfCreate;
      BmfDestroy: TBmfDestroy;
      BmfGetPix: TBmfGetPix;
      BmfGetWidth: TBmfGetWidth;
      BmfGetBaseline: TBmfGetBaseline;
      PixPaintBoxa: TPixPaintBoxa;
      PixPaintBoxaRandom: TPixPaintBoxaRandom;
      GplotCreate: TGplotCreate;
      GplotDestroy: TGplotDestroy;
      GplotAddPlot: TGplotAddPlot;
      GplotSetScaling: TGplotSetScaling;
      GplotMakeOutputPix: TGplotMakeOutputPix;
      GplotMakeOutput: TGplotMakeOutput;
      GplotGenCommandFile: TGplotGenCommandFile;
      GplotGenDataFiles: TGplotGenDataFiles;
      GplotSimple1: TGplotSimple1;
      GplotSimple2: TGplotSimple2;
      GplotSimpleN: TGplotSimpleN;
      GplotSimplePix1: TGplotSimplePix1;
      GplotSimplePix2: TGplotSimplePix2;
      GplotSimplePixN: TGplotSimplePixN;
      GplotSimpleXY1: TGplotSimpleXY1;
      GplotSimpleXY2: TGplotSimpleXY2;
      GplotSimpleXYN: TGplotSimpleXYN;
      GplotGeneralPix1: TGplotGeneralPix1;
      GplotGeneralPix2: TGplotGeneralPix2;
      GplotGeneralPixN: TGplotGeneralPixN;
      GplotRead: TGplotRead;
      GplotWrite: TGplotWrite;
      GeneratePtaLine: TGeneratePtaLine;
      GeneratePtaWideLine: TGeneratePtaWideLine;
      GeneratePtaBox: TGeneratePtaBox;
      GeneratePtaBoxa: TGeneratePtaBoxa;
      GeneratePtaHashBox: TGeneratePtaHashBox;
      GeneratePtaHashBoxa: TGeneratePtaHashBoxa;
      GeneratePtaaBoxa: TGeneratePtaaBoxa;
      GeneratePtaaHashBoxa: TGeneratePtaaHashBoxa;
      GeneratePtaPolyline: TGeneratePtaPolyline;
      GeneratePtaGrid: TGeneratePtaGrid;
      GeneratePtaFilledCircle: TGeneratePtaFilledCircle;
      GeneratePtaFilledSquare: TGeneratePtaFilledSquare;
      GeneratePtaLineFromPt: TGeneratePtaLineFromPt;
      PixRenderPlotFromNuma: TPixRenderPlotFromNuma;
      PixRenderPlotFromNumaGen: TPixRenderPlotFromNumaGen;
      PixRenderPta: TPixRenderPta;
      PixRenderPtaArb: TPixRenderPtaArb;
      PixRenderPtaBlend: TPixRenderPtaBlend;
      PixRenderLine: TPixRenderLine;
      PixRenderLineArb: TPixRenderLineArb;
      PixRenderLineBlend: TPixRenderLineBlend;
      PixRenderBox: TPixRenderBox;
      PixRenderBoxArb: TPixRenderBoxArb;
      PixRenderBoxBlend: TPixRenderBoxBlend;
      PixRenderBoxa: TPixRenderBoxa;
      PixRenderBoxaArb: TPixRenderBoxaArb;
      PixRenderBoxaBlend: TPixRenderBoxaBlend;
      PixRenderHashBox: TPixRenderHashBox;
      PixRenderHashBoxArb: TPixRenderHashBoxArb;
      PixRenderHashBoxBlend: TPixRenderHashBoxBlend;
      PixRenderHashMaskArb: TPixRenderHashMaskArb;
      PixRenderHashBoxa: TPixRenderHashBoxa;
      PixRenderHashBoxaArb: TPixRenderHashBoxaArb;
      PixRenderHashBoxaBlend: TPixRenderHashBoxaBlend;
      PixRenderPolyline: TPixRenderPolyline;
      PixRenderPolylineArb: TPixRenderPolylineArb;
      PixRenderPolylineBlend: TPixRenderPolylineBlend;
      PixRenderGridArb: TPixRenderGridArb;
      PixRenderRandomCmapPtaa: TPixRenderRandomCmapPtaa;
      PixRenderPolygon: TPixRenderPolygon;
      PixRenderContours: TPixRenderContours;
      PixAddText: TPixAddText;
      PixPaintThroughMask: TPixPaintThroughMask;
      PixPaintSelfThroughMask: TPixPaintSelfThroughMask;
      PixAddSingleTextblock: TPixAddSingleTextblock;
      PixAddTextlines: TPixAddTextlines;
      PixSetTextblock: TPixSetTextblock;
      PixSetTextline: TPixSetTextline;
      BmfGetLineStrings: TBmfGetLineStrings;
      BmfGetWordWidths: TBmfGetWordWidths;
      BmfGetStringWidth: TBmfGetStringWidth;
      L_chooseDisplayProg: TL_chooseDisplayProg;
    procedure Initialize(const Handle: TLibHandle);
  end;

implementation

procedure TLeptGraphicsModule.Initialize(const Handle: TLibHandle);
begin
  BmfCreate := LeptBind(Handle, 'bmfCreate');
  BmfDestroy := LeptBind(Handle, 'bmfDestroy');
  BmfGetPix := LeptBind(Handle, 'bmfGetPix');
  BmfGetWidth := LeptBind(Handle, 'bmfGetWidth');
  BmfGetBaseline := LeptBind(Handle, 'bmfGetBaseline');
  PixPaintBoxa := LeptBind(Handle, 'pixPaintBoxa');
  PixPaintBoxaRandom := LeptBind(Handle, 'pixPaintBoxaRandom');
  GplotCreate := LeptBind(Handle, 'gplotCreate');
  GplotDestroy := LeptBind(Handle, 'gplotDestroy');
  GplotAddPlot := LeptBind(Handle, 'gplotAddPlot');
  GplotSetScaling := LeptBind(Handle, 'gplotSetScaling');
  GplotMakeOutputPix := LeptBind(Handle, 'gplotMakeOutputPix');
  GplotMakeOutput := LeptBind(Handle, 'gplotMakeOutput');
  GplotGenCommandFile := LeptBind(Handle, 'gplotGenCommandFile');
  GplotGenDataFiles := LeptBind(Handle, 'gplotGenDataFiles');
  GplotSimple1 := LeptBind(Handle, 'gplotSimple1');
  GplotSimple2 := LeptBind(Handle, 'gplotSimple2');
  GplotSimpleN := LeptBind(Handle, 'gplotSimpleN');
  GplotSimplePix1 := LeptBind(Handle, 'gplotSimplePix1');
  GplotSimplePix2 := LeptBind(Handle, 'gplotSimplePix2');
  GplotSimplePixN := LeptBind(Handle, 'gplotSimplePixN');
  GplotSimpleXY1 := LeptBind(Handle, 'gplotSimpleXY1');
  GplotSimpleXY2 := LeptBind(Handle, 'gplotSimpleXY2');
  GplotSimpleXYN := LeptBind(Handle, 'gplotSimpleXYN');
  GplotGeneralPix1 := LeptBind(Handle, 'gplotGeneralPix1');
  GplotGeneralPix2 := LeptBind(Handle, 'gplotGeneralPix2');
  GplotGeneralPixN := LeptBind(Handle, 'gplotGeneralPixN');
  GplotRead := LeptBind(Handle, 'gplotRead');
  GplotWrite := LeptBind(Handle, 'gplotWrite');
  GeneratePtaLine := LeptBind(Handle, 'generatePtaLine');
  GeneratePtaWideLine := LeptBind(Handle, 'generatePtaWideLine');
  GeneratePtaBox := LeptBind(Handle, 'generatePtaBox');
  GeneratePtaBoxa := LeptBind(Handle, 'generatePtaBoxa');
  GeneratePtaHashBox := LeptBind(Handle, 'generatePtaHashBox');
  GeneratePtaHashBoxa := LeptBind(Handle, 'generatePtaHashBoxa');
  GeneratePtaaBoxa := LeptBind(Handle, 'generatePtaaBoxa');
  GeneratePtaaHashBoxa := LeptBind(Handle, 'generatePtaaHashBoxa');
  GeneratePtaPolyline := LeptBind(Handle, 'generatePtaPolyline');
  GeneratePtaGrid := LeptBind(Handle, 'generatePtaGrid');
  GeneratePtaFilledCircle := LeptBind(Handle, 'generatePtaFilledCircle');
  GeneratePtaFilledSquare := LeptBind(Handle, 'generatePtaFilledSquare');
  GeneratePtaLineFromPt := LeptBind(Handle, 'generatePtaLineFromPt');
  PixRenderPlotFromNuma := LeptBind(Handle, 'pixRenderPlotFromNuma');
  PixRenderPlotFromNumaGen := LeptBind(Handle, 'pixRenderPlotFromNumaGen');
  PixRenderPta := LeptBind(Handle, 'pixRenderPta');
  PixRenderPtaArb := LeptBind(Handle, 'pixRenderPtaArb');
  PixRenderPtaBlend := LeptBind(Handle, 'pixRenderPtaBlend');
  PixRenderLine := LeptBind(Handle, 'pixRenderLine');
  PixRenderLineArb := LeptBind(Handle, 'pixRenderLineArb');
  PixRenderLineBlend := LeptBind(Handle, 'pixRenderLineBlend');
  PixRenderBox := LeptBind(Handle, 'pixRenderBox');
  PixRenderBoxArb := LeptBind(Handle, 'pixRenderBoxArb');
  PixRenderBoxBlend := LeptBind(Handle, 'pixRenderBoxBlend');
  PixRenderBoxa := LeptBind(Handle, 'pixRenderBoxa');
  PixRenderBoxaArb := LeptBind(Handle, 'pixRenderBoxaArb');
  PixRenderBoxaBlend := LeptBind(Handle, 'pixRenderBoxaBlend');
  PixRenderHashBox := LeptBind(Handle, 'pixRenderHashBox');
  PixRenderHashBoxArb := LeptBind(Handle, 'pixRenderHashBoxArb');
  PixRenderHashBoxBlend := LeptBind(Handle, 'pixRenderHashBoxBlend');
  PixRenderHashMaskArb := LeptBind(Handle, 'pixRenderHashMaskArb');
  PixRenderHashBoxa := LeptBind(Handle, 'pixRenderHashBoxa');
  PixRenderHashBoxaArb := LeptBind(Handle, 'pixRenderHashBoxaArb');
  PixRenderHashBoxaBlend := LeptBind(Handle, 'pixRenderHashBoxaBlend');
  PixRenderPolyline := LeptBind(Handle, 'pixRenderPolyline');
  PixRenderPolylineArb := LeptBind(Handle, 'pixRenderPolylineArb');
  PixRenderPolylineBlend := LeptBind(Handle, 'pixRenderPolylineBlend');
  PixRenderGridArb := LeptBind(Handle, 'pixRenderGridArb');
  PixRenderRandomCmapPtaa := LeptBind(Handle, 'pixRenderRandomCmapPtaa');
  PixRenderPolygon := LeptBind(Handle, 'pixRenderPolygon');
  PixRenderContours := LeptBind(Handle, 'pixRenderContours');
  PixAddText := LeptBind(Handle, 'pixAddText');
  PixPaintThroughMask := LeptBind(Handle, 'pixPaintThroughMask');
  PixPaintSelfThroughMask := LeptBind(Handle, 'pixPaintSelfThroughMask');
  PixAddSingleTextblock := LeptBind(Handle, 'pixAddSingleTextblock');
  PixAddTextlines := LeptBind(Handle, 'pixAddTextlines');
  PixSetTextblock := LeptBind(Handle, 'pixSetTextblock');
  PixSetTextline := LeptBind(Handle, 'pixSetTextline');
  BmfGetLineStrings := LeptBind(Handle, 'bmfGetLineStrings');
  BmfGetWordWidths := LeptBind(Handle, 'bmfGetWordWidths');
  BmfGetStringWidth := LeptBind(Handle, 'bmfGetStringWidth');
  L_chooseDisplayProg := LeptBind(Handle, 'l_chooseDisplayProg');
end;

end.
