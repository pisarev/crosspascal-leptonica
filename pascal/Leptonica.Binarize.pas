{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit Leptonica.Binarize;

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
  TLeptBinarizeModule = record
  public
    type
      TPixThresholdSpreadNorm = function(pixs: PPix; filtertype: Integer; edgethresh: Integer;
        smoothx: Integer; smoothy: Integer; gamma: Single; minval: Integer; maxval: Integer;
        targetthresh: Integer; ppixth: PPPix; ppixb: PPPix; ppixd: PPPix): Integer; cdecl;
      TPixOtsuAdaptiveThreshold = function(pixs: PPix; sx: Integer; sy: Integer; smoothx: Integer;
        smoothy: Integer; scorefract: Single; ppixth: PPPix; ppixd: PPPix): Integer; cdecl;
      TPixOtsuThreshOnBackgroundNorm = function(pixs: PPix; pixim: PPix; sx: Integer; sy: Integer;
        thresh: Integer; mincount: Integer; bgval: Integer; smoothx: Integer; smoothy: Integer;
        scorefract: Single; pthresh: PInteger): PPix; cdecl;
      TPixMaskedThreshOnBackgroundNorm = function(pixs: PPix; pixim: PPix; sx: Integer; sy: Integer;
        thresh: Integer; mincount: Integer; smoothx: Integer; smoothy: Integer; scorefract: Single;
        pthresh: PInteger): PPix; cdecl;
      TPixSauvolaBinarizeTiled = function(pixs: PPix; whsize: Integer; factor: Single; nx: Integer;
        ny: Integer; ppixth: PPPix; ppixd: PPPix): Integer; cdecl;
      TPixSauvolaBinarize = function(pixs: PPix; whsize: Integer; factor: Single; addborder: Integer;
        ppixm: PPPix; ppixsd: PPPix; ppixth: PPPix; ppixd: PPPix): Integer; cdecl;
      TPixSauvolaOnContrastNorm = function(pixs: PPix; mindiff: Integer; ppixn: PPPix;
        ppixth: PPPix): PPix; cdecl;
      TPixThreshOnDoubleNorm = function(pixs: PPix; mindiff: Integer): PPix; cdecl;
      TPixThresholdByConnComp = function(pixs: PPix; pixm: PPix; start: Integer; &end: Integer; incr: Integer;
        thresh48: Single; threshdiff: Single; pglobthresh: PInteger; ppixd: PPPix;
        debugflag: Integer): Integer; cdecl;
      TPixThresholdByHisto = function(pixs: PPix; factor: Integer; halfw: Integer; skip: Integer;
        pthresh: PInteger; ppixd: PPPix; pnahisto: PPNuma; ppixhisto: PPPix): Integer; cdecl;
      TPixDitherToBinary = function(pixs: PPix): PPix; cdecl;
      TPixDitherToBinarySpec = function(pixs: PPix; lowerclip: Integer; upperclip: Integer): PPix; cdecl;
      TPixThresholdToBinary = function(pixs: PPix; thresh: Integer): PPix; cdecl;
      TPixVarThresholdToBinary = function(pixs: PPix; pixg: PPix): PPix; cdecl;
      TPixGenerateMaskByValue = function(pixs: PPix; val: Integer; usecmap: Integer): PPix; cdecl;
      TPixGenerateMaskByBand = function(pixs: PPix; lower: Integer; upper: Integer; inband: Integer;
        usecmap: Integer): PPix; cdecl;
      TPixDitherTo2bpp = function(pixs: PPix; cmapflag: Integer): PPix; cdecl;
      TPixDitherTo2bppSpec = function(pixs: PPix; lowerclip: Integer; upperclip: Integer;
        cmapflag: Integer): PPix; cdecl;
      TPixThresholdTo2bpp = function(pixs: PPix; nlevels: Integer; cmapflag: Integer): PPix; cdecl;
      TPixThresholdTo4bpp = function(pixs: PPix; nlevels: Integer; cmapflag: Integer): PPix; cdecl;
      TPixThresholdOn8bpp = function(pixs: PPix; nlevels: Integer; cmapflag: Integer): PPix; cdecl;
      TPixThresholdGrayArb = function(pixs: PPix; edgevals: PAnsiChar; outdepth: Integer;
        use_average: Integer; setblack: Integer; setwhite: Integer): PPix; cdecl;
      TPixGenerateMaskByBand32 = function(pixs: PPix; refval: Cardinal; delm: Integer; delp: Integer;
        fractm: Single; fractp: Single): PPix; cdecl;
      TPixGenerateMaskByDiscr32 = function(pixs: PPix; refval1: Cardinal; refval2: Cardinal;
        distflag: Integer): PPix; cdecl;
      TPixThresholdPixelSum = function(pix: PPix; thresh: Integer; pabove: PInteger;
        tab8: PInteger): Integer; cdecl;
      TPixThresholdForFgBg = function(pixs: PPix; factor: Integer; thresh: Integer; pfgval: PInteger;
        pbgval: PInteger): Integer; cdecl;
      TPixThresholdToValue = function(pixd: PPix; pixs: PPix; threshval: Integer;
        setval: Integer): PPix; cdecl;
      TPixThreshold8 = function(pixs: PPix; d: Integer; nlevels: Integer; cmapflag: Integer): PPix; cdecl;
    var
      PixThresholdSpreadNorm: TPixThresholdSpreadNorm;
      PixOtsuAdaptiveThreshold: TPixOtsuAdaptiveThreshold;
      PixOtsuThreshOnBackgroundNorm: TPixOtsuThreshOnBackgroundNorm;
      PixMaskedThreshOnBackgroundNorm: TPixMaskedThreshOnBackgroundNorm;
      PixSauvolaBinarizeTiled: TPixSauvolaBinarizeTiled;
      PixSauvolaBinarize: TPixSauvolaBinarize;
      PixSauvolaOnContrastNorm: TPixSauvolaOnContrastNorm;
      PixThreshOnDoubleNorm: TPixThreshOnDoubleNorm;
      PixThresholdByConnComp: TPixThresholdByConnComp;
      PixThresholdByHisto: TPixThresholdByHisto;
      PixDitherToBinary: TPixDitherToBinary;
      PixDitherToBinarySpec: TPixDitherToBinarySpec;
      PixThresholdToBinary: TPixThresholdToBinary;
      PixVarThresholdToBinary: TPixVarThresholdToBinary;
      PixGenerateMaskByValue: TPixGenerateMaskByValue;
      PixGenerateMaskByBand: TPixGenerateMaskByBand;
      PixDitherTo2bpp: TPixDitherTo2bpp;
      PixDitherTo2bppSpec: TPixDitherTo2bppSpec;
      PixThresholdTo2bpp: TPixThresholdTo2bpp;
      PixThresholdTo4bpp: TPixThresholdTo4bpp;
      PixThresholdOn8bpp: TPixThresholdOn8bpp;
      PixThresholdGrayArb: TPixThresholdGrayArb;
      PixGenerateMaskByBand32: TPixGenerateMaskByBand32;
      PixGenerateMaskByDiscr32: TPixGenerateMaskByDiscr32;
      PixThresholdPixelSum: TPixThresholdPixelSum;
      PixThresholdForFgBg: TPixThresholdForFgBg;
      PixThresholdToValue: TPixThresholdToValue;
      PixThreshold8: TPixThreshold8;
      procedure Initialize(const Handle: TLibHandle);
  end;

implementation

procedure TLeptBinarizeModule.Initialize(const Handle: TLibHandle);
begin
  PixThresholdSpreadNorm := LeptBind(Handle, 'pixThresholdSpreadNorm');
  PixOtsuAdaptiveThreshold := LeptBind(Handle, 'pixOtsuAdaptiveThreshold');
  PixOtsuThreshOnBackgroundNorm := LeptBind(Handle, 'pixOtsuThreshOnBackgroundNorm');
  PixMaskedThreshOnBackgroundNorm := LeptBind(Handle, 'pixMaskedThreshOnBackgroundNorm');
  PixSauvolaBinarizeTiled := LeptBind(Handle, 'pixSauvolaBinarizeTiled');
  PixSauvolaBinarize := LeptBind(Handle, 'pixSauvolaBinarize');
  PixSauvolaOnContrastNorm := LeptBind(Handle, 'pixSauvolaOnContrastNorm');
  PixThreshOnDoubleNorm := LeptBind(Handle, 'pixThreshOnDoubleNorm');
  PixThresholdByConnComp := LeptBind(Handle, 'pixThresholdByConnComp');
  PixThresholdByHisto := LeptBind(Handle, 'pixThresholdByHisto');
  PixDitherToBinary := LeptBind(Handle, 'pixDitherToBinary');
  PixDitherToBinarySpec := LeptBind(Handle, 'pixDitherToBinarySpec');
  PixThresholdToBinary := LeptBind(Handle, 'pixThresholdToBinary');
  PixVarThresholdToBinary := LeptBind(Handle, 'pixVarThresholdToBinary');
  PixGenerateMaskByValue := LeptBind(Handle, 'pixGenerateMaskByValue');
  PixGenerateMaskByBand := LeptBind(Handle, 'pixGenerateMaskByBand');
  PixDitherTo2bpp := LeptBind(Handle, 'pixDitherTo2bpp');
  PixDitherTo2bppSpec := LeptBind(Handle, 'pixDitherTo2bppSpec');
  PixThresholdTo2bpp := LeptBind(Handle, 'pixThresholdTo2bpp');
  PixThresholdTo4bpp := LeptBind(Handle, 'pixThresholdTo4bpp');
  PixThresholdOn8bpp := LeptBind(Handle, 'pixThresholdOn8bpp');
  PixThresholdGrayArb := LeptBind(Handle, 'pixThresholdGrayArb');
  PixGenerateMaskByBand32 := LeptBind(Handle, 'pixGenerateMaskByBand32');
  PixGenerateMaskByDiscr32 := LeptBind(Handle, 'pixGenerateMaskByDiscr32');
  PixThresholdPixelSum := LeptBind(Handle, 'pixThresholdPixelSum');
  PixThresholdForFgBg := LeptBind(Handle, 'pixThresholdForFgBg');
  PixThresholdToValue := LeptBind(Handle, 'pixThresholdToValue');
  PixThreshold8 := LeptBind(Handle, 'pixThreshold8');
end;

end.
