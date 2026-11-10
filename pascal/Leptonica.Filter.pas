{ ************************************************************************** }
{                                                                            }
{ Leptonica.Filter                                                           }
{                                                                            }
{ Copyright © 2026 Yuriy Pisarev (ypisareff@outlook.com)                     }
{                                                                            }
{ ************************************************************************** }

unit Leptonica.Filter;

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
  TLeptFilterModule = record
  public
    type
      TPixBilateral = function(pixs: PPix; spatial_stdev: Single; range_stdev: Single; ncomps: Integer;
        reduction: Integer): PPix; cdecl;
      TPixBilateralGray = function(pixs: PPix; spatial_stdev: Single; range_stdev: Single; ncomps: Integer;
        reduction: Integer): PPix; cdecl;
      TPixBilateralExact = function(pixs: PPix; spatial_kel: PL_Kernel; range_kel: PL_Kernel): PPix; cdecl;
      TPixBilateralGrayExact = function(pixs: PPix; spatial_kel: PL_Kernel;
        range_kel: PL_Kernel): PPix; cdecl;
      TPixBlockBilateralExact = function(pixs: PPix; spatial_stdev: Single; range_stdev: Single): PPix; cdecl;
      TPixBlockconv = function(pix: PPix; wc: Integer; hc: Integer): PPix; cdecl;
      TPixBlockconvGray = function(pixs: PPix; pixacc: PPix; wc: Integer; hc: Integer): PPix; cdecl;
      TPixBlockconvAccum = function(pixs: PPix): PPix; cdecl;
      TPixBlockconvGrayUnnormalized = function(pixs: PPix; wc: Integer; hc: Integer): PPix; cdecl;
      TPixBlockconvTiled = function(pix: PPix; wc: Integer; hc: Integer; nx: Integer;
        ny: Integer): PPix; cdecl;
      TPixBlockconvGrayTile = function(pixs: PPix; pixacc: PPix; wc: Integer; hc: Integer): PPix; cdecl;
      TPixWindowedStats = function(pixs: PPix; wc: Integer; hc: Integer; hasborder: Integer; ppixm: PPPix;
        ppixms: PPPix; pfpixv: PPFPix; pfpixrv: PPFPix): Integer; cdecl;
      TPixWindowedMean = function(pixs: PPix; wc: Integer; hc: Integer; hasborder: Integer;
        normflag: Integer): PPix; cdecl;
      TPixWindowedMeanSquare = function(pixs: PPix; wc: Integer; hc: Integer;
        hasborder: Integer): PPix; cdecl;
      TPixWindowedVariance = function(pixm: PPix; pixms: PPix; pfpixv: PPFPix;
        pfpixrv: PPFPix): Integer; cdecl;
      TPixBlockrank = function(pixs: PPix; pixacc: PPix; wc: Integer; hc: Integer; rank: Single): PPix; cdecl;
      TPixBlocksum = function(pixs: PPix; pixacc: PPix; wc: Integer; hc: Integer): PPix; cdecl;
      TPixCensusTransform = function(pixs: PPix; halfsize: Integer; pixacc: PPix): PPix; cdecl;
      TPixConvolve = function(pixs: PPix; kel: PL_Kernel; outdepth: Integer; normflag: Integer): PPix; cdecl;
      TPixConvolveSep = function(pixs: PPix; kelx: PL_Kernel; kely: PL_Kernel; outdepth: Integer;
        normflag: Integer): PPix; cdecl;
      TPixConvolveRGB = function(pixs: PPix; kel: PL_Kernel): PPix; cdecl;
      TPixConvolveRGBSep = function(pixs: PPix; kelx: PL_Kernel; kely: PL_Kernel): PPix; cdecl;
      TPixConvolveWithBias = function(pixs: PPix; kel1: PL_Kernel; kel2: PL_Kernel; force8: Integer;
        pbias: PInteger): PPix; cdecl;
      TPixSobelEdgeFilter = function(pixs: PPix; orientflag: Integer): PPix; cdecl;
      TPixTwoSidedEdgeFilter = function(pixs: PPix; orientflag: Integer): PPix; cdecl;
      TPixMeasureSaturation = function(pixs: PPix; factor: Integer; psat: PSingle): Integer; cdecl;
      TPixSetAllGray = function(pix: PPix; grayval: Integer): Integer; cdecl;
      TPixSetAllArbitrary = function(pix: PPix; val: Cardinal): Integer; cdecl;
      TPixWindowedVarianceOnLine = function(pixs: PPix; dir: Integer; loc: Integer; c1: Integer; c2: Integer;
        size: Integer; pnad: PPNuma): Integer; cdecl;
      TPixAddConstantGray = function(pixs: PPix; val: Integer): Integer; cdecl;
      TPixMinOrMax = function(pixd: PPix; pixs1: PPix; pixs2: PPix; &type: Integer): PPix; cdecl;
      TPixMaxDynamicRange = function(pixs: PPix; &type: Integer): PPix; cdecl;
      TPixMaxDynamicRangeRGB = function(pixs: PPix; &type: Integer): PPix; cdecl;
      TPixRankFilter = function(pixs: PPix; wf: Integer; hf: Integer; rank: Single): PPix; cdecl;
      TPixRankFilterRGB = function(pixs: PPix; wf: Integer; hf: Integer; rank: Single): PPix; cdecl;
      TPixRankFilterGray = function(pixs: PPix; wf: Integer; hf: Integer; rank: Single): PPix; cdecl;
      TPixMedianFilter = function(pixs: PPix; wf: Integer; hf: Integer): PPix; cdecl;
      TPixRankFilterWithScaling = function(pixs: PPix; wf: Integer; hf: Integer; rank: Single;
        scalefactor: Single): PPix; cdecl;
    var
      PixBilateral: TPixBilateral;
      PixBilateralGray: TPixBilateralGray;
      PixBilateralExact: TPixBilateralExact;
      PixBilateralGrayExact: TPixBilateralGrayExact;
      PixBlockBilateralExact: TPixBlockBilateralExact;
      PixBlockconv: TPixBlockconv;
      PixBlockconvGray: TPixBlockconvGray;
      PixBlockconvAccum: TPixBlockconvAccum;
      PixBlockconvGrayUnnormalized: TPixBlockconvGrayUnnormalized;
      PixBlockconvTiled: TPixBlockconvTiled;
      PixBlockconvGrayTile: TPixBlockconvGrayTile;
      PixWindowedStats: TPixWindowedStats;
      PixWindowedMean: TPixWindowedMean;
      PixWindowedMeanSquare: TPixWindowedMeanSquare;
      PixWindowedVariance: TPixWindowedVariance;
      PixBlockrank: TPixBlockrank;
      PixBlocksum: TPixBlocksum;
      PixCensusTransform: TPixCensusTransform;
      PixConvolve: TPixConvolve;
      PixConvolveSep: TPixConvolveSep;
      PixConvolveRGB: TPixConvolveRGB;
      PixConvolveRGBSep: TPixConvolveRGBSep;
      PixConvolveWithBias: TPixConvolveWithBias;
      PixSobelEdgeFilter: TPixSobelEdgeFilter;
      PixTwoSidedEdgeFilter: TPixTwoSidedEdgeFilter;
      PixMeasureSaturation: TPixMeasureSaturation;
      PixSetAllGray: TPixSetAllGray;
      PixSetAllArbitrary: TPixSetAllArbitrary;
      PixWindowedVarianceOnLine: TPixWindowedVarianceOnLine;
      PixAddConstantGray: TPixAddConstantGray;
      PixMinOrMax: TPixMinOrMax;
      PixMaxDynamicRange: TPixMaxDynamicRange;
      PixMaxDynamicRangeRGB: TPixMaxDynamicRangeRGB;
      PixRankFilter: TPixRankFilter;
      PixRankFilterRGB: TPixRankFilterRGB;
      PixRankFilterGray: TPixRankFilterGray;
      PixMedianFilter: TPixMedianFilter;
      PixRankFilterWithScaling: TPixRankFilterWithScaling;
    procedure Initialize(const Handle: TLibHandle);
  end;

implementation

procedure TLeptFilterModule.Initialize(const Handle: TLibHandle);
begin
  PixBilateral := LeptBind(Handle, 'pixBilateral');
  PixBilateralGray := LeptBind(Handle, 'pixBilateralGray');
  PixBilateralExact := LeptBind(Handle, 'pixBilateralExact');
  PixBilateralGrayExact := LeptBind(Handle, 'pixBilateralGrayExact');
  PixBlockBilateralExact := LeptBind(Handle, 'pixBlockBilateralExact');
  PixBlockconv := LeptBind(Handle, 'pixBlockconv');
  PixBlockconvGray := LeptBind(Handle, 'pixBlockconvGray');
  PixBlockconvAccum := LeptBind(Handle, 'pixBlockconvAccum');
  PixBlockconvGrayUnnormalized := LeptBind(Handle, 'pixBlockconvGrayUnnormalized');
  PixBlockconvTiled := LeptBind(Handle, 'pixBlockconvTiled');
  PixBlockconvGrayTile := LeptBind(Handle, 'pixBlockconvGrayTile');
  PixWindowedStats := LeptBind(Handle, 'pixWindowedStats');
  PixWindowedMean := LeptBind(Handle, 'pixWindowedMean');
  PixWindowedMeanSquare := LeptBind(Handle, 'pixWindowedMeanSquare');
  PixWindowedVariance := LeptBind(Handle, 'pixWindowedVariance');
  PixBlockrank := LeptBind(Handle, 'pixBlockrank');
  PixBlocksum := LeptBind(Handle, 'pixBlocksum');
  PixCensusTransform := LeptBind(Handle, 'pixCensusTransform');
  PixConvolve := LeptBind(Handle, 'pixConvolve');
  PixConvolveSep := LeptBind(Handle, 'pixConvolveSep');
  PixConvolveRGB := LeptBind(Handle, 'pixConvolveRGB');
  PixConvolveRGBSep := LeptBind(Handle, 'pixConvolveRGBSep');
  PixConvolveWithBias := LeptBind(Handle, 'pixConvolveWithBias');
  PixSobelEdgeFilter := LeptBind(Handle, 'pixSobelEdgeFilter');
  PixTwoSidedEdgeFilter := LeptBind(Handle, 'pixTwoSidedEdgeFilter');
  PixMeasureSaturation := LeptBind(Handle, 'pixMeasureSaturation');
  PixSetAllGray := LeptBind(Handle, 'pixSetAllGray');
  PixSetAllArbitrary := LeptBind(Handle, 'pixSetAllArbitrary');
  PixWindowedVarianceOnLine := LeptBind(Handle, 'pixWindowedVarianceOnLine');
  PixAddConstantGray := LeptBind(Handle, 'pixAddConstantGray');
  PixMinOrMax := LeptBind(Handle, 'pixMinOrMax');
  PixMaxDynamicRange := LeptBind(Handle, 'pixMaxDynamicRange');
  PixMaxDynamicRangeRGB := LeptBind(Handle, 'pixMaxDynamicRangeRGB');
  PixRankFilter := LeptBind(Handle, 'pixRankFilter');
  PixRankFilterRGB := LeptBind(Handle, 'pixRankFilterRGB');
  PixRankFilterGray := LeptBind(Handle, 'pixRankFilterGray');
  PixMedianFilter := LeptBind(Handle, 'pixMedianFilter');
  PixRankFilterWithScaling := LeptBind(Handle, 'pixRankFilterWithScaling');
end;

end.
