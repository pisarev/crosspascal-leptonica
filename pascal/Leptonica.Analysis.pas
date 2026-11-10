{ ************************************************************************** }
{                                                                            }
{ Leptonica.Analysis                                                         }
{                                                                            }
{ Copyright © 2026 Yuriy Pisarev (ypisareff@outlook.com)                     }
{                                                                            }
{ ************************************************************************** }

unit Leptonica.Analysis;

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
  TLeptAnalysisModule = record
  public
    type
      TPixFindBaselines = function(pixs: PPix; ppta: PPPta; pixadb: PPixa): PNuma; cdecl;
      TPixFindBaselinesGen = function(pixs: PPix; minw: Integer; ppta: PPPta; pixadb: PPixa): PNuma; cdecl;
      TPixDeskewLocal = function(pixs: PPix; nslices: Integer; redsweep: Integer; redsearch: Integer;
        sweeprange: Single; sweepdelta: Single; minbsdelta: Single): PPix; cdecl;
      TPixGetLocalSkewTransform = function(pixs: PPix; nslices: Integer; redsweep: Integer;
        redsearch: Integer; sweeprange: Single; sweepdelta: Single; minbsdelta: Single; pptas: PPPta;
        pptad: PPPta): Integer; cdecl;
      TPixGetLocalSkewAngles = function(pixs: PPix; nslices: Integer; redsweep: Integer; redsearch: Integer;
        sweeprange: Single; sweepdelta: Single; minbsdelta: Single; pa: PSingle; pb: PSingle;
        debug: Integer): PNuma; cdecl;
      TPixCorrelationBinary = function(pix1: PPix; pix2: PPix; pval: PSingle): Integer; cdecl;
      TPixCompareBinary = function(pix1: PPix; pix2: PPix; comptype: Integer; pfract: PSingle;
        ppixdiff: PPPix): Integer; cdecl;
      TPixCompareGrayOrRGB = function(pix1: PPix; pix2: PPix; comptype: Integer; plottype: Integer;
        psame: PInteger; pdiff: PSingle; prmsdiff: PSingle; ppixdiff: PPPix): Integer; cdecl;
      TPixCompareGray = function(pix1: PPix; pix2: PPix; comptype: Integer; plottype: Integer;
        psame: PInteger; pdiff: PSingle; prmsdiff: PSingle; ppixdiff: PPPix): Integer; cdecl;
      TPixCompareRGB = function(pix1: PPix; pix2: PPix; comptype: Integer; plottype: Integer; psame: PInteger;
        pdiff: PSingle; prmsdiff: PSingle; ppixdiff: PPPix): Integer; cdecl;
      TPixCompareTiled = function(pix1: PPix; pix2: PPix; sx: Integer; sy: Integer; &type: Integer;
        ppixdiff: PPPix): Integer; cdecl;
      TPixCompareRankDifference = function(pix1: PPix; pix2: PPix; factor: Integer): PNuma; cdecl;
      TPixComparePhotoRegionsByHisto = function(pix1: PPix; pix2: PPix; box1: PBox; box2: PBox;
        minratio: Single; factor: Integer; n: Integer; pscore: PSingle; debugflag: Integer): Integer; cdecl;
      TPixCompareGrayByHisto = function(pix1: PPix; pix2: PPix; box1: PBox; box2: PBox; minratio: Single;
        maxgray: Integer; factor: Integer; n: Integer; pscore: PSingle; debugflag: Integer): Integer; cdecl;
      TPixCompareWithTranslation = function(pix1: PPix; pix2: PPix; thresh: Integer; pdelx: PInteger;
        pdely: PInteger; pscore: PSingle; debugflag: Integer): Integer; cdecl;
      TPixBestCorrelation = function(pix1: PPix; pix2: PPix; area1: Integer; area2: Integer; etransx: Integer;
        etransy: Integer; maxshift: Integer; tab8: PInteger; pdelx: PInteger; pdely: PInteger;
        pscore: PSingle; debugflag: Integer): Integer; cdecl;
      TPixConnComp = function(pixs: PPix; ppixa: PPPixa; connectivity: Integer): PBoxa; cdecl;
      TPixConnCompPixa = function(pixs: PPix; ppixa: PPPixa; connectivity: Integer): PBoxa; cdecl;
      TPixConnCompBB = function(pixs: PPix; connectivity: Integer): PBoxa; cdecl;
      TPixCountConnComp = function(pixs: PPix; connectivity: Integer; pcount: PInteger): Integer; cdecl;
      TPixCorrelationScore = function(pix1: PPix; pix2: PPix; area1: Integer; area2: Integer; delx: Single;
        dely: Single; maxdiffw: Integer; maxdiffh: Integer; tab: PInteger; pscore: PSingle): Integer; cdecl;
      TPixCorrelationScoreThresholded = function(pix1: PPix; pix2: PPix; area1: Integer; area2: Integer;
        delx: Single; dely: Single; maxdiffw: Integer; maxdiffh: Integer; tab: PInteger; downcount: PInteger;
        score_threshold: Single): Integer; cdecl;
      TPixCorrelationScoreSimple = function(pix1: PPix; pix2: PPix; area1: Integer; area2: Integer;
        delx: Single; dely: Single; maxdiffw: Integer; maxdiffh: Integer; tab: PInteger;
        pscore: PSingle): Integer; cdecl;
      TPixCorrelationScoreShifted = function(pix1: PPix; pix2: PPix; area1: Integer; area2: Integer;
        delx: Integer; dely: Integer; tab: PInteger; pscore: PSingle): Integer; cdecl;
      TPixFindLargestRectangle = function(pixs: PPix; polarity: Integer; pbox: PPBox;
        ppixdb: PPPix): Integer; cdecl;
      TPixZero = function(pix: PPix; pempty: PInteger): Integer; cdecl;
      TPixForegroundFraction = function(pix: PPix; pfract: PSingle): Integer; cdecl;
      TPixCountPixels = function(pixs: PPix; pcount: PInteger; tab8: PInteger): Integer; cdecl;
      TPixCountPixelsInRect = function(pixs: PPix; box: PBox; pcount: PInteger;
        tab8: PInteger): Integer; cdecl;
      TPixCountByRow = function(pix: PPix; box: PBox): PNuma; cdecl;
      TPixCountByColumn = function(pix: PPix; box: PBox): PNuma; cdecl;
      TPixCountPixelsByRow = function(pix: PPix; tab8: PInteger): PNuma; cdecl;
      TPixCountPixelsByColumn = function(pix: PPix): PNuma; cdecl;
      TPixCountPixelsInRow = function(pix: PPix; row: Integer; pcount: PInteger;
        tab8: PInteger): Integer; cdecl;
      TPixAverageByRow = function(pix: PPix; box: PBox; &type: Integer): PNuma; cdecl;
      TPixAverageByColumn = function(pix: PPix; box: PBox; &type: Integer): PNuma; cdecl;
      TPixAverageInRect = function(pixs: PPix; pixm: PPix; box: PBox; minval: Integer; maxval: Integer;
        subsamp: Integer; pave: PSingle): Integer; cdecl;
      TPixAverageInRectRGB = function(pixs: PPix; pixm: PPix; box: PBox; subsamp: Integer;
        pave: PCardinal): Integer; cdecl;
      TPixVarianceInRect = function(pix: PPix; box: PBox; prootvar: PSingle): Integer; cdecl;
      TPixAbsDiffByRow = function(pix: PPix; box: PBox): PNuma; cdecl;
      TPixAbsDiffByColumn = function(pix: PPix; box: PBox): PNuma; cdecl;
      TPixAbsDiffInRect = function(pix: PPix; box: PBox; dir: Integer; pabsdiff: PSingle): Integer; cdecl;
      TPixAbsDiffOnLine = function(pix: PPix; x1: Integer; y1: Integer; x2: Integer; y2: Integer;
        pabsdiff: PSingle): Integer; cdecl;
      TPixGetGrayHistogram = function(pixs: PPix; factor: Integer): PNuma; cdecl;
      TPixGetGrayHistogramMasked = function(pixs: PPix; pixm: PPix; x: Integer; y: Integer;
        factor: Integer): PNuma; cdecl;
      TPixGetGrayHistogramInRect = function(pixs: PPix; box: PBox; factor: Integer): PNuma; cdecl;
      TPixGetGrayHistogramTiled = function(pixs: PPix; factor: Integer; nx: Integer;
        ny: Integer): PNumaa; cdecl;
      TPixGetColorHistogram = function(pixs: PPix; factor: Integer; pnar: PPNuma; pnag: PPNuma;
        pnab: PPNuma): Integer; cdecl;
      TPixGetColorHistogramMasked = function(pixs: PPix; pixm: PPix; x: Integer; y: Integer; factor: Integer;
        pnar: PPNuma; pnag: PPNuma; pnab: PPNuma): Integer; cdecl;
      TPixGetCmapHistogram = function(pixs: PPix; factor: Integer): PNuma; cdecl;
      TPixGetCmapHistogramMasked = function(pixs: PPix; pixm: PPix; x: Integer; y: Integer;
        factor: Integer): PNuma; cdecl;
      TPixGetCmapHistogramInRect = function(pixs: PPix; box: PBox; factor: Integer): PNuma; cdecl;
      TPixGetRankValue = function(pixs: PPix; factor: Integer; rank: Single;
        pvalue: PCardinal): Integer; cdecl;
      TPixGetRankValueMaskedRGB = function(pixs: PPix; pixm: PPix; x: Integer; y: Integer; factor: Integer;
        rank: Single; prval: PSingle; pgval: PSingle; pbval: PSingle): Integer; cdecl;
      TPixGetRankValueMasked = function(pixs: PPix; pixm: PPix; x: Integer; y: Integer; factor: Integer;
        rank: Single; pval: PSingle; pna: PPNuma): Integer; cdecl;
      TPixGetPixelAverage = function(pixs: PPix; pixm: PPix; x: Integer; y: Integer; factor: Integer;
        pval: PCardinal): Integer; cdecl;
      TPixGetPixelStats = function(pixs: PPix; factor: Integer; &type: Integer;
        pvalue: PCardinal): Integer; cdecl;
      TPixRowStats = function(pixs: PPix; box: PBox; pnamean: PPNuma; pnamedian: PPNuma; pnamode: PPNuma;
        pnamodecount: PPNuma; pnavar: PPNuma; pnarootvar: PPNuma): Integer; cdecl;
      TPixColumnStats = function(pixs: PPix; box: PBox; pnamean: PPNuma; pnamedian: PPNuma; pnamode: PPNuma;
        pnamodecount: PPNuma; pnavar: PPNuma; pnarootvar: PPNuma): Integer; cdecl;
      TPixGetExtremeValue = function(pixs: PPix; factor: Integer; &type: Integer; prval: PInteger;
        pgval: PInteger; pbval: PInteger; pgrayval: PInteger): Integer; cdecl;
      TPixClipToForeground = function(pixs: PPix; ppixd: PPPix; pbox: PPBox): Integer; cdecl;
      TPixTestClipToForeground = function(pixs: PPix; pcanclip: PInteger): Integer; cdecl;
      TPixScanForForeground = function(pixs: PPix; box: PBox; scanflag: Integer;
        ploc: PInteger): Integer; cdecl;
      TPixScanForEdge = function(pixs: PPix; box: PBox; lowthresh: Integer; highthresh: Integer;
        maxwidth: Integer; factor: Integer; scanflag: Integer; ploc: PInteger): Integer; cdecl;
      TPixMinMaxNearLine = function(pixs: PPix; x1: Integer; y1: Integer; x2: Integer; y2: Integer;
        dist: Integer; direction: Integer; pnamin: PPNuma; pnamax: PPNuma; pminave: PSingle;
        pmaxave: PSingle): Integer; cdecl;
      TPixAbsDifference = function(pixs1: PPix; pixs2: PPix): PPix; cdecl;
      TPixConnCompTransform = function(pixs: PPix; connect: Integer; depth: Integer): PPix; cdecl;
      TPixConnCompAreaTransform = function(pixs: PPix; connect: Integer): PPix; cdecl;
      TPixConnCompIncrInit = function(pixs: PPix; conn: Integer; ppixd: PPPix; pptaa: PPPtaa;
        pncc: PInteger): Integer; cdecl;
      TPixConnCompIncrAdd = function(pixs: PPix; ptaa: PPtaa; pncc: PInteger; x: Single; y: Single;
        debug: Integer): Integer; cdecl;
      TPixVarianceInRectangle = function(pixs: PPix; box: PBox; pix_ma: PPix; dpix_msa: PDPix; pvar: PSingle;
        prvar: PSingle): Integer; cdecl;
      TPixDeskewBarcode = function(pixs: PPix; pixb: PPix; box: PBox; margin: Integer; threshold: Integer;
        pangle: PSingle; pconf: PSingle): PPix; cdecl;
      TPixDeskewBoth = function(pixs: PPix; redsearch: Integer): PPix; cdecl;
      TPixDeskew = function(pixs: PPix; redsearch: Integer): PPix; cdecl;
      TPixFindSkewAndDeskew = function(pixs: PPix; redsearch: Integer; pangle: PSingle;
        pconf: PSingle): PPix; cdecl;
      TPixDeskewGeneral = function(pixs: PPix; redsweep: Integer; sweeprange: Single; sweepdelta: Single;
        redsearch: Integer; thresh: Integer; pangle: PSingle; pconf: PSingle): PPix; cdecl;
      TPixFindSkew = function(pixs: PPix; pangle: PSingle; pconf: PSingle): Integer; cdecl;
      TPixFindSkewSweep = function(pixs: PPix; pangle: PSingle; reduction: Integer; sweeprange: Single;
        sweepdelta: Single): Integer; cdecl;
      TPixFindSkewSweepAndSearch = function(pixs: PPix; pangle: PSingle; pconf: PSingle; redsweep: Integer;
        redsearch: Integer; sweeprange: Single; sweepdelta: Single; minbsdelta: Single): Integer; cdecl;
      TPixFindSkewSweepAndSearchScore = function(pixs: PPix; pangle: PSingle; pconf: PSingle;
        pendscore: PSingle; redsweep: Integer; redsearch: Integer; sweepcenter: Single; sweeprange: Single;
        sweepdelta: Single; minbsdelta: Single): Integer; cdecl;
      TPixFindSkewSweepAndSearchScorePivot = function(pixs: PPix; pangle: PSingle; pconf: PSingle;
        pendscore: PSingle; redsweep: Integer; redsearch: Integer; sweepcenter: Single; sweeprange: Single;
        sweepdelta: Single; minbsdelta: Single; pivot: Integer): Integer; cdecl;
      TPixFindSkewOrthogonalRange = function(pixs: PPix; pangle: PSingle; pconf: PSingle; redsweep: Integer;
        redsearch: Integer; sweeprange: Single; sweepdelta: Single; minbsdelta: Single;
        confprior: Single): Integer; cdecl;
    var
      PixFindBaselines: TPixFindBaselines;
      PixFindBaselinesGen: TPixFindBaselinesGen;
      PixDeskewLocal: TPixDeskewLocal;
      PixGetLocalSkewTransform: TPixGetLocalSkewTransform;
      PixGetLocalSkewAngles: TPixGetLocalSkewAngles;
      PixCorrelationBinary: TPixCorrelationBinary;
      PixCompareBinary: TPixCompareBinary;
      PixCompareGrayOrRGB: TPixCompareGrayOrRGB;
      PixCompareGray: TPixCompareGray;
      PixCompareRGB: TPixCompareRGB;
      PixCompareTiled: TPixCompareTiled;
      PixCompareRankDifference: TPixCompareRankDifference;
      PixComparePhotoRegionsByHisto: TPixComparePhotoRegionsByHisto;
      PixCompareGrayByHisto: TPixCompareGrayByHisto;
      PixCompareWithTranslation: TPixCompareWithTranslation;
      PixBestCorrelation: TPixBestCorrelation;
      PixConnComp: TPixConnComp;
      PixConnCompPixa: TPixConnCompPixa;
      PixConnCompBB: TPixConnCompBB;
      PixCountConnComp: TPixCountConnComp;
      PixCorrelationScore: TPixCorrelationScore;
      PixCorrelationScoreThresholded: TPixCorrelationScoreThresholded;
      PixCorrelationScoreSimple: TPixCorrelationScoreSimple;
      PixCorrelationScoreShifted: TPixCorrelationScoreShifted;
      PixFindLargestRectangle: TPixFindLargestRectangle;
      PixZero: TPixZero;
      PixForegroundFraction: TPixForegroundFraction;
      PixCountPixels: TPixCountPixels;
      PixCountPixelsInRect: TPixCountPixelsInRect;
      PixCountByRow: TPixCountByRow;
      PixCountByColumn: TPixCountByColumn;
      PixCountPixelsByRow: TPixCountPixelsByRow;
      PixCountPixelsByColumn: TPixCountPixelsByColumn;
      PixCountPixelsInRow: TPixCountPixelsInRow;
      PixAverageByRow: TPixAverageByRow;
      PixAverageByColumn: TPixAverageByColumn;
      PixAverageInRect: TPixAverageInRect;
      PixAverageInRectRGB: TPixAverageInRectRGB;
      PixVarianceInRect: TPixVarianceInRect;
      PixAbsDiffByRow: TPixAbsDiffByRow;
      PixAbsDiffByColumn: TPixAbsDiffByColumn;
      PixAbsDiffInRect: TPixAbsDiffInRect;
      PixAbsDiffOnLine: TPixAbsDiffOnLine;
      PixGetGrayHistogram: TPixGetGrayHistogram;
      PixGetGrayHistogramMasked: TPixGetGrayHistogramMasked;
      PixGetGrayHistogramInRect: TPixGetGrayHistogramInRect;
      PixGetGrayHistogramTiled: TPixGetGrayHistogramTiled;
      PixGetColorHistogram: TPixGetColorHistogram;
      PixGetColorHistogramMasked: TPixGetColorHistogramMasked;
      PixGetCmapHistogram: TPixGetCmapHistogram;
      PixGetCmapHistogramMasked: TPixGetCmapHistogramMasked;
      PixGetCmapHistogramInRect: TPixGetCmapHistogramInRect;
      PixGetRankValue: TPixGetRankValue;
      PixGetRankValueMaskedRGB: TPixGetRankValueMaskedRGB;
      PixGetRankValueMasked: TPixGetRankValueMasked;
      PixGetPixelAverage: TPixGetPixelAverage;
      PixGetPixelStats: TPixGetPixelStats;
      PixRowStats: TPixRowStats;
      PixColumnStats: TPixColumnStats;
      PixGetExtremeValue: TPixGetExtremeValue;
      PixClipToForeground: TPixClipToForeground;
      PixTestClipToForeground: TPixTestClipToForeground;
      PixScanForForeground: TPixScanForForeground;
      PixScanForEdge: TPixScanForEdge;
      PixMinMaxNearLine: TPixMinMaxNearLine;
      PixAbsDifference: TPixAbsDifference;
      PixConnCompTransform: TPixConnCompTransform;
      PixConnCompAreaTransform: TPixConnCompAreaTransform;
      PixConnCompIncrInit: TPixConnCompIncrInit;
      PixConnCompIncrAdd: TPixConnCompIncrAdd;
      PixVarianceInRectangle: TPixVarianceInRectangle;
      PixDeskewBarcode: TPixDeskewBarcode;
      PixDeskewBoth: TPixDeskewBoth;
      PixDeskew: TPixDeskew;
      PixFindSkewAndDeskew: TPixFindSkewAndDeskew;
      PixDeskewGeneral: TPixDeskewGeneral;
      PixFindSkew: TPixFindSkew;
      PixFindSkewSweep: TPixFindSkewSweep;
      PixFindSkewSweepAndSearch: TPixFindSkewSweepAndSearch;
      PixFindSkewSweepAndSearchScore: TPixFindSkewSweepAndSearchScore;
      PixFindSkewSweepAndSearchScorePivot: TPixFindSkewSweepAndSearchScorePivot;
      PixFindSkewOrthogonalRange: TPixFindSkewOrthogonalRange;
    procedure Initialize(const Handle: TLibHandle);
  end;

implementation

procedure TLeptAnalysisModule.Initialize(const Handle: TLibHandle);
begin
  PixFindBaselines := LeptBind(Handle, 'pixFindBaselines');
  PixFindBaselinesGen := LeptBind(Handle, 'pixFindBaselinesGen');
  PixDeskewLocal := LeptBind(Handle, 'pixDeskewLocal');
  PixGetLocalSkewTransform := LeptBind(Handle, 'pixGetLocalSkewTransform');
  PixGetLocalSkewAngles := LeptBind(Handle, 'pixGetLocalSkewAngles');
  PixCorrelationBinary := LeptBind(Handle, 'pixCorrelationBinary');
  PixCompareBinary := LeptBind(Handle, 'pixCompareBinary');
  PixCompareGrayOrRGB := LeptBind(Handle, 'pixCompareGrayOrRGB');
  PixCompareGray := LeptBind(Handle, 'pixCompareGray');
  PixCompareRGB := LeptBind(Handle, 'pixCompareRGB');
  PixCompareTiled := LeptBind(Handle, 'pixCompareTiled');
  PixCompareRankDifference := LeptBind(Handle, 'pixCompareRankDifference');
  PixComparePhotoRegionsByHisto := LeptBind(Handle, 'pixComparePhotoRegionsByHisto');
  PixCompareGrayByHisto := LeptBind(Handle, 'pixCompareGrayByHisto');
  PixCompareWithTranslation := LeptBind(Handle, 'pixCompareWithTranslation');
  PixBestCorrelation := LeptBind(Handle, 'pixBestCorrelation');
  PixConnComp := LeptBind(Handle, 'pixConnComp');
  PixConnCompPixa := LeptBind(Handle, 'pixConnCompPixa');
  PixConnCompBB := LeptBind(Handle, 'pixConnCompBB');
  PixCountConnComp := LeptBind(Handle, 'pixCountConnComp');
  PixCorrelationScore := LeptBind(Handle, 'pixCorrelationScore');
  PixCorrelationScoreThresholded := LeptBind(Handle, 'pixCorrelationScoreThresholded');
  PixCorrelationScoreSimple := LeptBind(Handle, 'pixCorrelationScoreSimple');
  PixCorrelationScoreShifted := LeptBind(Handle, 'pixCorrelationScoreShifted');
  PixFindLargestRectangle := LeptBind(Handle, 'pixFindLargestRectangle');
  PixZero := LeptBind(Handle, 'pixZero');
  PixForegroundFraction := LeptBind(Handle, 'pixForegroundFraction');
  PixCountPixels := LeptBind(Handle, 'pixCountPixels');
  PixCountPixelsInRect := LeptBind(Handle, 'pixCountPixelsInRect');
  PixCountByRow := LeptBind(Handle, 'pixCountByRow');
  PixCountByColumn := LeptBind(Handle, 'pixCountByColumn');
  PixCountPixelsByRow := LeptBind(Handle, 'pixCountPixelsByRow');
  PixCountPixelsByColumn := LeptBind(Handle, 'pixCountPixelsByColumn');
  PixCountPixelsInRow := LeptBind(Handle, 'pixCountPixelsInRow');
  PixAverageByRow := LeptBind(Handle, 'pixAverageByRow');
  PixAverageByColumn := LeptBind(Handle, 'pixAverageByColumn');
  PixAverageInRect := LeptBind(Handle, 'pixAverageInRect');
  PixAverageInRectRGB := LeptBind(Handle, 'pixAverageInRectRGB');
  PixVarianceInRect := LeptBind(Handle, 'pixVarianceInRect');
  PixAbsDiffByRow := LeptBind(Handle, 'pixAbsDiffByRow');
  PixAbsDiffByColumn := LeptBind(Handle, 'pixAbsDiffByColumn');
  PixAbsDiffInRect := LeptBind(Handle, 'pixAbsDiffInRect');
  PixAbsDiffOnLine := LeptBind(Handle, 'pixAbsDiffOnLine');
  PixGetGrayHistogram := LeptBind(Handle, 'pixGetGrayHistogram');
  PixGetGrayHistogramMasked := LeptBind(Handle, 'pixGetGrayHistogramMasked');
  PixGetGrayHistogramInRect := LeptBind(Handle, 'pixGetGrayHistogramInRect');
  PixGetGrayHistogramTiled := LeptBind(Handle, 'pixGetGrayHistogramTiled');
  PixGetColorHistogram := LeptBind(Handle, 'pixGetColorHistogram');
  PixGetColorHistogramMasked := LeptBind(Handle, 'pixGetColorHistogramMasked');
  PixGetCmapHistogram := LeptBind(Handle, 'pixGetCmapHistogram');
  PixGetCmapHistogramMasked := LeptBind(Handle, 'pixGetCmapHistogramMasked');
  PixGetCmapHistogramInRect := LeptBind(Handle, 'pixGetCmapHistogramInRect');
  PixGetRankValue := LeptBind(Handle, 'pixGetRankValue');
  PixGetRankValueMaskedRGB := LeptBind(Handle, 'pixGetRankValueMaskedRGB');
  PixGetRankValueMasked := LeptBind(Handle, 'pixGetRankValueMasked');
  PixGetPixelAverage := LeptBind(Handle, 'pixGetPixelAverage');
  PixGetPixelStats := LeptBind(Handle, 'pixGetPixelStats');
  PixRowStats := LeptBind(Handle, 'pixRowStats');
  PixColumnStats := LeptBind(Handle, 'pixColumnStats');
  PixGetExtremeValue := LeptBind(Handle, 'pixGetExtremeValue');
  PixClipToForeground := LeptBind(Handle, 'pixClipToForeground');
  PixTestClipToForeground := LeptBind(Handle, 'pixTestClipToForeground');
  PixScanForForeground := LeptBind(Handle, 'pixScanForForeground');
  PixScanForEdge := LeptBind(Handle, 'pixScanForEdge');
  PixMinMaxNearLine := LeptBind(Handle, 'pixMinMaxNearLine');
  PixAbsDifference := LeptBind(Handle, 'pixAbsDifference');
  PixConnCompTransform := LeptBind(Handle, 'pixConnCompTransform');
  PixConnCompAreaTransform := LeptBind(Handle, 'pixConnCompAreaTransform');
  PixConnCompIncrInit := LeptBind(Handle, 'pixConnCompIncrInit');
  PixConnCompIncrAdd := LeptBind(Handle, 'pixConnCompIncrAdd');
  PixVarianceInRectangle := LeptBind(Handle, 'pixVarianceInRectangle');
  PixDeskewBarcode := LeptBind(Handle, 'pixDeskewBarcode');
  PixDeskewBoth := LeptBind(Handle, 'pixDeskewBoth');
  PixDeskew := LeptBind(Handle, 'pixDeskew');
  PixFindSkewAndDeskew := LeptBind(Handle, 'pixFindSkewAndDeskew');
  PixDeskewGeneral := LeptBind(Handle, 'pixDeskewGeneral');
  PixFindSkew := LeptBind(Handle, 'pixFindSkew');
  PixFindSkewSweep := LeptBind(Handle, 'pixFindSkewSweep');
  PixFindSkewSweepAndSearch := LeptBind(Handle, 'pixFindSkewSweepAndSearch');
  PixFindSkewSweepAndSearchScore := LeptBind(Handle, 'pixFindSkewSweepAndSearchScore');
  PixFindSkewSweepAndSearchScorePivot := LeptBind(Handle, 'pixFindSkewSweepAndSearchScorePivot');
  PixFindSkewOrthogonalRange := LeptBind(Handle, 'pixFindSkewOrthogonalRange');
end;

end.
