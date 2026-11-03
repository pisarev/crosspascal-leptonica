{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit Leptonica.Enhance;

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
  TLeptEnhanceModule = record
  public
    type
      TPixCleanBackgroundToWhite = function(pixs: PPix; pixim: PPix; pixg: PPix; gamma: Single;
        blackval: Integer; whiteval: Integer): PPix; cdecl;
      TPixBackgroundNormSimple = function(pixs: PPix; pixim: PPix; pixg: PPix): PPix; cdecl;
      TPixBackgroundNorm = function(pixs: PPix; pixim: PPix; pixg: PPix; sx: Integer; sy: Integer;
        thresh: Integer; mincount: Integer; bgval: Integer; smoothx: Integer; smoothy: Integer): PPix; cdecl;
      TPixBackgroundNormMorph = function(pixs: PPix; pixim: PPix; reduction: Integer; size: Integer;
        bgval: Integer): PPix; cdecl;
      TPixBackgroundNormGrayArray = function(pixs: PPix; pixim: PPix; sx: Integer; sy: Integer;
        thresh: Integer; mincount: Integer; bgval: Integer; smoothx: Integer; smoothy: Integer;
        ppixd: PPPix): Integer; cdecl;
      TPixBackgroundNormRGBArrays = function(pixs: PPix; pixim: PPix; pixg: PPix; sx: Integer; sy: Integer;
        thresh: Integer; mincount: Integer; bgval: Integer; smoothx: Integer; smoothy: Integer; ppixr: PPPix;
        ppixg: PPPix; ppixb: PPPix): Integer; cdecl;
      TPixBackgroundNormGrayArrayMorph = function(pixs: PPix; pixim: PPix; reduction: Integer; size: Integer;
        bgval: Integer; ppixd: PPPix): Integer; cdecl;
      TPixBackgroundNormRGBArraysMorph = function(pixs: PPix; pixim: PPix; reduction: Integer; size: Integer;
        bgval: Integer; ppixr: PPPix; ppixg: PPPix; ppixb: PPPix): Integer; cdecl;
      TPixGetInvBackgroundMap = function(pixs: PPix; bgval: Integer; smoothx: Integer;
        smoothy: Integer): PPix; cdecl;
      TPixApplyInvBackgroundGrayMap = function(pixs: PPix; pixm: PPix; sx: Integer; sy: Integer): PPix; cdecl;
      TPixApplyInvBackgroundRGBMap = function(pixs: PPix; pixmr: PPix; pixmg: PPix; pixmb: PPix; sx: Integer;
        sy: Integer): PPix; cdecl;
      TPixApplyVariableGrayMap = function(pixs: PPix; pixg: PPix; target: Integer): PPix; cdecl;
      TPixGlobalNormRGB = function(pixd: PPix; pixs: PPix; rval: Integer; gval: Integer; bval: Integer;
        mapval: Integer): PPix; cdecl;
      TPixGlobalNormNoSatRGB = function(pixd: PPix; pixs: PPix; rval: Integer; gval: Integer; bval: Integer;
        factor: Integer; rank: Single): PPix; cdecl;
      TPixBackgroundNormFlex = function(pixs: PPix; sx: Integer; sy: Integer; smoothx: Integer;
        smoothy: Integer; delta: Integer): PPix; cdecl;
      TPixContrastNorm = function(pixd: PPix; pixs: PPix; sx: Integer; sy: Integer; mindiff: Integer;
        smoothx: Integer; smoothy: Integer): PPix; cdecl;
      TPixBackgroundNormTo1MinMax = function(pixs: PPix; contrast: Integer;
        scalefactor: Integer): PPix; cdecl;
      TPixConvertTo8MinMax = function(pixs: PPix): PPix; cdecl;
      TPixGammaTRC = function(pixd: PPix; pixs: PPix; gamma: Single; minval: Integer;
        maxval: Integer): PPix; cdecl;
      TPixGammaTRCMasked = function(pixd: PPix; pixs: PPix; pixm: PPix; gamma: Single; minval: Integer;
        maxval: Integer): PPix; cdecl;
      TPixGammaTRCWithAlpha = function(pixd: PPix; pixs: PPix; gamma: Single; minval: Integer;
        maxval: Integer): PPix; cdecl;
      TPixContrastTRC = function(pixd: PPix; pixs: PPix; factor: Single): PPix; cdecl;
      TPixContrastTRCMasked = function(pixd: PPix; pixs: PPix; pixm: PPix; factor: Single): PPix; cdecl;
      TPixEqualizeTRC = function(pixd: PPix; pixs: PPix; fract: Single; factor: Integer): PPix; cdecl;
      TPixUnsharpMasking = function(pixs: PPix; halfwidth: Integer; fract: Single): PPix; cdecl;
      TPixUnsharpMaskingGray = function(pixs: PPix; halfwidth: Integer; fract: Single): PPix; cdecl;
      TPixUnsharpMaskingFast = function(pixs: PPix; halfwidth: Integer; fract: Single;
        direction: Integer): PPix; cdecl;
      TPixUnsharpMaskingGrayFast = function(pixs: PPix; halfwidth: Integer; fract: Single;
        direction: Integer): PPix; cdecl;
      TPixUnsharpMaskingGray1D = function(pixs: PPix; halfwidth: Integer; fract: Single;
        direction: Integer): PPix; cdecl;
      TPixUnsharpMaskingGray2D = function(pixs: PPix; halfwidth: Integer; fract: Single): PPix; cdecl;
      TPixModifyHue = function(pixd: PPix; pixs: PPix; fract: Single): PPix; cdecl;
      TPixModifySaturation = function(pixd: PPix; pixs: PPix; fract: Single): PPix; cdecl;
      TPixModifyBrightness = function(pixd: PPix; pixs: PPix; fract: Single): PPix; cdecl;
      TPixMultConstantColor = function(pixs: PPix; rfact: Single; gfact: Single; bfact: Single): PPix; cdecl;
      TPixMultConstantGray = function(pixs: PPix; val: Single): Integer; cdecl;
      TPixMultConstAccumulate = function(pixs: PPix; factor: Single; offset: Cardinal): Integer; cdecl;
      TPixModifyStrokeWidth = function(pixs: PPix; width: Single; targetw: Single): PPix; cdecl;
    var
      PixCleanBackgroundToWhite: TPixCleanBackgroundToWhite;
      PixBackgroundNormSimple: TPixBackgroundNormSimple;
      PixBackgroundNorm: TPixBackgroundNorm;
      PixBackgroundNormMorph: TPixBackgroundNormMorph;
      PixBackgroundNormGrayArray: TPixBackgroundNormGrayArray;
      PixBackgroundNormRGBArrays: TPixBackgroundNormRGBArrays;
      PixBackgroundNormGrayArrayMorph: TPixBackgroundNormGrayArrayMorph;
      PixBackgroundNormRGBArraysMorph: TPixBackgroundNormRGBArraysMorph;
      PixGetInvBackgroundMap: TPixGetInvBackgroundMap;
      PixApplyInvBackgroundGrayMap: TPixApplyInvBackgroundGrayMap;
      PixApplyInvBackgroundRGBMap: TPixApplyInvBackgroundRGBMap;
      PixApplyVariableGrayMap: TPixApplyVariableGrayMap;
      PixGlobalNormRGB: TPixGlobalNormRGB;
      PixGlobalNormNoSatRGB: TPixGlobalNormNoSatRGB;
      PixBackgroundNormFlex: TPixBackgroundNormFlex;
      PixContrastNorm: TPixContrastNorm;
      PixBackgroundNormTo1MinMax: TPixBackgroundNormTo1MinMax;
      PixConvertTo8MinMax: TPixConvertTo8MinMax;
      PixGammaTRC: TPixGammaTRC;
      PixGammaTRCMasked: TPixGammaTRCMasked;
      PixGammaTRCWithAlpha: TPixGammaTRCWithAlpha;
      PixContrastTRC: TPixContrastTRC;
      PixContrastTRCMasked: TPixContrastTRCMasked;
      PixEqualizeTRC: TPixEqualizeTRC;
      PixUnsharpMasking: TPixUnsharpMasking;
      PixUnsharpMaskingGray: TPixUnsharpMaskingGray;
      PixUnsharpMaskingFast: TPixUnsharpMaskingFast;
      PixUnsharpMaskingGrayFast: TPixUnsharpMaskingGrayFast;
      PixUnsharpMaskingGray1D: TPixUnsharpMaskingGray1D;
      PixUnsharpMaskingGray2D: TPixUnsharpMaskingGray2D;
      PixModifyHue: TPixModifyHue;
      PixModifySaturation: TPixModifySaturation;
      PixModifyBrightness: TPixModifyBrightness;
      PixMultConstantColor: TPixMultConstantColor;
      PixMultConstantGray: TPixMultConstantGray;
      PixMultConstAccumulate: TPixMultConstAccumulate;
      PixModifyStrokeWidth: TPixModifyStrokeWidth;
      procedure Initialize(const Handle: TLibHandle);
  end;

implementation

procedure TLeptEnhanceModule.Initialize(const Handle: TLibHandle);
begin
  PixCleanBackgroundToWhite := LeptBind(Handle, 'pixCleanBackgroundToWhite');
  PixBackgroundNormSimple := LeptBind(Handle, 'pixBackgroundNormSimple');
  PixBackgroundNorm := LeptBind(Handle, 'pixBackgroundNorm');
  PixBackgroundNormMorph := LeptBind(Handle, 'pixBackgroundNormMorph');
  PixBackgroundNormGrayArray := LeptBind(Handle, 'pixBackgroundNormGrayArray');
  PixBackgroundNormRGBArrays := LeptBind(Handle, 'pixBackgroundNormRGBArrays');
  PixBackgroundNormGrayArrayMorph := LeptBind(Handle, 'pixBackgroundNormGrayArrayMorph');
  PixBackgroundNormRGBArraysMorph := LeptBind(Handle, 'pixBackgroundNormRGBArraysMorph');
  PixGetInvBackgroundMap := LeptBind(Handle, 'pixGetInvBackgroundMap');
  PixApplyInvBackgroundGrayMap := LeptBind(Handle, 'pixApplyInvBackgroundGrayMap');
  PixApplyInvBackgroundRGBMap := LeptBind(Handle, 'pixApplyInvBackgroundRGBMap');
  PixApplyVariableGrayMap := LeptBind(Handle, 'pixApplyVariableGrayMap');
  PixGlobalNormRGB := LeptBind(Handle, 'pixGlobalNormRGB');
  PixGlobalNormNoSatRGB := LeptBind(Handle, 'pixGlobalNormNoSatRGB');
  PixBackgroundNormFlex := LeptBind(Handle, 'pixBackgroundNormFlex');
  PixContrastNorm := LeptBind(Handle, 'pixContrastNorm');
  PixBackgroundNormTo1MinMax := LeptBind(Handle, 'pixBackgroundNormTo1MinMax');
  PixConvertTo8MinMax := LeptBind(Handle, 'pixConvertTo8MinMax');
  PixGammaTRC := LeptBind(Handle, 'pixGammaTRC');
  PixGammaTRCMasked := LeptBind(Handle, 'pixGammaTRCMasked');
  PixGammaTRCWithAlpha := LeptBind(Handle, 'pixGammaTRCWithAlpha');
  PixContrastTRC := LeptBind(Handle, 'pixContrastTRC');
  PixContrastTRCMasked := LeptBind(Handle, 'pixContrastTRCMasked');
  PixEqualizeTRC := LeptBind(Handle, 'pixEqualizeTRC');
  PixUnsharpMasking := LeptBind(Handle, 'pixUnsharpMasking');
  PixUnsharpMaskingGray := LeptBind(Handle, 'pixUnsharpMaskingGray');
  PixUnsharpMaskingFast := LeptBind(Handle, 'pixUnsharpMaskingFast');
  PixUnsharpMaskingGrayFast := LeptBind(Handle, 'pixUnsharpMaskingGrayFast');
  PixUnsharpMaskingGray1D := LeptBind(Handle, 'pixUnsharpMaskingGray1D');
  PixUnsharpMaskingGray2D := LeptBind(Handle, 'pixUnsharpMaskingGray2D');
  PixModifyHue := LeptBind(Handle, 'pixModifyHue');
  PixModifySaturation := LeptBind(Handle, 'pixModifySaturation');
  PixModifyBrightness := LeptBind(Handle, 'pixModifyBrightness');
  PixMultConstantColor := LeptBind(Handle, 'pixMultConstantColor');
  PixMultConstantGray := LeptBind(Handle, 'pixMultConstantGray');
  PixMultConstAccumulate := LeptBind(Handle, 'pixMultConstAccumulate');
  PixModifyStrokeWidth := LeptBind(Handle, 'pixModifyStrokeWidth');
end;

end.
