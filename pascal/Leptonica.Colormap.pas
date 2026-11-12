{ ************************************************************************** }
{                                                                            }
{ Leptonica.Colormap                                                         }
{                                                                            }
{ Copyright © 2026 Yuriy Pisarev                                             }
{                                                                            }
{ ************************************************************************** }

unit Leptonica.Colormap;

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
  TLeptColormapModule = record
  public
    type
      TPixcmapCreate = function(depth: Integer): PPixColormap; cdecl;
      TPixcmapCreateRandom = function(depth: Integer; hasblack: Integer;
        haswhite: Integer): PPixColormap; cdecl;
      TPixcmapCreateLinear = function(d: Integer; nlevels: Integer): PPixColormap; cdecl;
      TPixcmapCopy = function(cmaps: PPixColormap): PPixColormap; cdecl;
      TPixcmapDestroy = procedure(pcmap: PPPixColormap); cdecl;
      TPixcmapIsValid = function(cmap: PPixColormap; pix: PPix; pvalid: PInteger): Integer; cdecl;
      TPixcmapAddColor = function(cmap: PPixColormap; rval: Integer; gval: Integer;
        bval: Integer): Integer; cdecl;
      TPixcmapAddRGBA = function(cmap: PPixColormap; rval: Integer; gval: Integer; bval: Integer;
        aval: Integer): Integer; cdecl;
      TPixcmapAddNewColor = function(cmap: PPixColormap; rval: Integer; gval: Integer; bval: Integer;
        pindex: PInteger): Integer; cdecl;
      TPixcmapAddNearestColor = function(cmap: PPixColormap; rval: Integer; gval: Integer; bval: Integer;
        pindex: PInteger): Integer; cdecl;
      TPixcmapUsableColor = function(cmap: PPixColormap; rval: Integer; gval: Integer; bval: Integer;
        pusable: PInteger): Integer; cdecl;
      TPixcmapAddBlackOrWhite = function(cmap: PPixColormap; color: Integer;
        pindex: PInteger): Integer; cdecl;
      TPixcmapSetBlackAndWhite = function(cmap: PPixColormap; setblack: Integer;
        setwhite: Integer): Integer; cdecl;
      TPixcmapGetCount = function(cmap: PPixColormap): Integer; cdecl;
      TPixcmapGetFreeCount = function(cmap: PPixColormap): Integer; cdecl;
      TPixcmapGetDepth = function(cmap: PPixColormap): Integer; cdecl;
      TPixcmapGetMinDepth = function(cmap: PPixColormap; pmindepth: PInteger): Integer; cdecl;
      TPixcmapClear = function(cmap: PPixColormap): Integer; cdecl;
      TPixcmapGetColor = function(cmap: PPixColormap; index: Integer; prval: PInteger; pgval: PInteger;
        pbval: PInteger): Integer; cdecl;
      TPixcmapGetColor32 = function(cmap: PPixColormap; index: Integer; pval32: PCardinal): Integer; cdecl;
      TPixcmapGetRGBA = function(cmap: PPixColormap; index: Integer; prval: PInteger; pgval: PInteger;
        pbval: PInteger; paval: PInteger): Integer; cdecl;
      TPixcmapGetRGBA32 = function(cmap: PPixColormap; index: Integer; pval32: PCardinal): Integer; cdecl;
      TPixcmapResetColor = function(cmap: PPixColormap; index: Integer; rval: Integer; gval: Integer;
        bval: Integer): Integer; cdecl;
      TPixcmapSetAlpha = function(cmap: PPixColormap; index: Integer; aval: Integer): Integer; cdecl;
      TPixcmapGetIndex = function(cmap: PPixColormap; rval: Integer; gval: Integer; bval: Integer;
        pindex: PInteger): Integer; cdecl;
      TPixcmapHasColor = function(cmap: PPixColormap; pcolor: PInteger): Integer; cdecl;
      TPixcmapIsOpaque = function(cmap: PPixColormap; popaque: PInteger): Integer; cdecl;
      TPixcmapNonOpaqueColorsInfo = function(cmap: PPixColormap; pntrans: PInteger; pmax_trans: PInteger;
        pmin_opaque: PInteger): Integer; cdecl;
      TPixcmapIsBlackAndWhite = function(cmap: PPixColormap; pblackwhite: PInteger): Integer; cdecl;
      TPixcmapCountGrayColors = function(cmap: PPixColormap; pngray: PInteger): Integer; cdecl;
      TPixcmapGetRankIntensity = function(cmap: PPixColormap; rankval: Single;
        pindex: PInteger): Integer; cdecl;
      TPixcmapGetNearestIndex = function(cmap: PPixColormap; rval: Integer; gval: Integer; bval: Integer;
        pindex: PInteger): Integer; cdecl;
      TPixcmapGetNearestGrayIndex = function(cmap: PPixColormap; val: Integer;
        pindex: PInteger): Integer; cdecl;
      TPixcmapGetDistanceToColor = function(cmap: PPixColormap; index: Integer; rval: Integer; gval: Integer;
        bval: Integer; pdist: PInteger): Integer; cdecl;
      TPixcmapGetRangeValues = function(cmap: PPixColormap; select: Integer; pminval: PInteger;
        pmaxval: PInteger; pminindex: PInteger; pmaxindex: PInteger): Integer; cdecl;
      TPixcmapGrayToFalseColor = function(gamma: Single): PPixColormap; cdecl;
      TPixcmapGrayToColor = function(color: Cardinal): PPixColormap; cdecl;
      TPixcmapColorToGray = function(cmaps: PPixColormap; rwt: Single; gwt: Single;
        bwt: Single): PPixColormap; cdecl;
      TPixcmapConvertTo4 = function(cmaps: PPixColormap): PPixColormap; cdecl;
      TPixcmapConvertTo8 = function(cmaps: PPixColormap): PPixColormap; cdecl;
      TPixcmapRead = function(filename: PAnsiChar): PPixColormap; cdecl;
      TPixcmapReadStream = function(fp: Pointer): PPixColormap; cdecl;
      TPixcmapReadMem = function(data: PByte; size: NativeUInt): PPixColormap; cdecl;
      TPixcmapWrite = function(filename: PAnsiChar; cmap: PPixColormap): Integer; cdecl;
      TPixcmapWriteStream = function(fp: Pointer; cmap: PPixColormap): Integer; cdecl;
      TPixcmapWriteMem = function(pdata: PPointer; psize: PNativeUInt; cmap: PPixColormap): Integer; cdecl;
      TPixcmapToArrays = function(cmap: PPixColormap; prmap: Pointer; pgmap: Pointer; pbmap: Pointer;
        pamap: Pointer): Integer; cdecl;
      TPixcmapToRGBTable = function(cmap: PPixColormap; ptab: Pointer; pncolors: PInteger): Integer; cdecl;
      TPixcmapSerializeToMemory = function(cmap: PPixColormap; cpc: Integer; pncolors: PInteger;
        pdata: PPointer): Integer; cdecl;
      TPixcmapDeserializeFromMemory = function(data: PByte; cpc: Integer;
        ncolors: Integer): PPixColormap; cdecl;
      TPixcmapConvertToHex = function(data: PByte; ncolors: Integer): PAnsiChar; cdecl;
      TPixcmapGammaTRC = function(cmap: PPixColormap; gamma: Single; minval: Integer;
        maxval: Integer): Integer; cdecl;
      TPixcmapContrastTRC = function(cmap: PPixColormap; factor: Single): Integer; cdecl;
      TPixcmapShiftIntensity = function(cmap: PPixColormap; fraction: Single): Integer; cdecl;
      TPixcmapShiftByComponent = function(cmap: PPixColormap; srcval: Cardinal;
        dstval: Cardinal): Integer; cdecl;
      TPixcmapToOctcubeLUT = function(cmap: PPixColormap; level: Integer; metric: Integer): PInteger; cdecl;
      TPixcmapConvertRGBToHSV = function(cmap: PPixColormap): Integer; cdecl;
      TPixcmapConvertHSVToRGB = function(cmap: PPixColormap): Integer; cdecl;
      TPixcmapConvertRGBToYUV = function(cmap: PPixColormap): Integer; cdecl;
      TPixcmapConvertYUVToRGB = function(cmap: PPixColormap): Integer; cdecl;
    var
      PixcmapCreate: TPixcmapCreate;
      PixcmapCreateRandom: TPixcmapCreateRandom;
      PixcmapCreateLinear: TPixcmapCreateLinear;
      PixcmapCopy: TPixcmapCopy;
      PixcmapDestroy: TPixcmapDestroy;
      PixcmapIsValid: TPixcmapIsValid;
      PixcmapAddColor: TPixcmapAddColor;
      PixcmapAddRGBA: TPixcmapAddRGBA;
      PixcmapAddNewColor: TPixcmapAddNewColor;
      PixcmapAddNearestColor: TPixcmapAddNearestColor;
      PixcmapUsableColor: TPixcmapUsableColor;
      PixcmapAddBlackOrWhite: TPixcmapAddBlackOrWhite;
      PixcmapSetBlackAndWhite: TPixcmapSetBlackAndWhite;
      PixcmapGetCount: TPixcmapGetCount;
      PixcmapGetFreeCount: TPixcmapGetFreeCount;
      PixcmapGetDepth: TPixcmapGetDepth;
      PixcmapGetMinDepth: TPixcmapGetMinDepth;
      PixcmapClear: TPixcmapClear;
      PixcmapGetColor: TPixcmapGetColor;
      PixcmapGetColor32: TPixcmapGetColor32;
      PixcmapGetRGBA: TPixcmapGetRGBA;
      PixcmapGetRGBA32: TPixcmapGetRGBA32;
      PixcmapResetColor: TPixcmapResetColor;
      PixcmapSetAlpha: TPixcmapSetAlpha;
      PixcmapGetIndex: TPixcmapGetIndex;
      PixcmapHasColor: TPixcmapHasColor;
      PixcmapIsOpaque: TPixcmapIsOpaque;
      PixcmapNonOpaqueColorsInfo: TPixcmapNonOpaqueColorsInfo;
      PixcmapIsBlackAndWhite: TPixcmapIsBlackAndWhite;
      PixcmapCountGrayColors: TPixcmapCountGrayColors;
      PixcmapGetRankIntensity: TPixcmapGetRankIntensity;
      PixcmapGetNearestIndex: TPixcmapGetNearestIndex;
      PixcmapGetNearestGrayIndex: TPixcmapGetNearestGrayIndex;
      PixcmapGetDistanceToColor: TPixcmapGetDistanceToColor;
      PixcmapGetRangeValues: TPixcmapGetRangeValues;
      PixcmapGrayToFalseColor: TPixcmapGrayToFalseColor;
      PixcmapGrayToColor: TPixcmapGrayToColor;
      PixcmapColorToGray: TPixcmapColorToGray;
      PixcmapConvertTo4: TPixcmapConvertTo4;
      PixcmapConvertTo8: TPixcmapConvertTo8;
      PixcmapRead: TPixcmapRead;
      PixcmapReadStream: TPixcmapReadStream;
      PixcmapReadMem: TPixcmapReadMem;
      PixcmapWrite: TPixcmapWrite;
      PixcmapWriteStream: TPixcmapWriteStream;
      PixcmapWriteMem: TPixcmapWriteMem;
      PixcmapToArrays: TPixcmapToArrays;
      PixcmapToRGBTable: TPixcmapToRGBTable;
      PixcmapSerializeToMemory: TPixcmapSerializeToMemory;
      PixcmapDeserializeFromMemory: TPixcmapDeserializeFromMemory;
      PixcmapConvertToHex: TPixcmapConvertToHex;
      PixcmapGammaTRC: TPixcmapGammaTRC;
      PixcmapContrastTRC: TPixcmapContrastTRC;
      PixcmapShiftIntensity: TPixcmapShiftIntensity;
      PixcmapShiftByComponent: TPixcmapShiftByComponent;
      PixcmapToOctcubeLUT: TPixcmapToOctcubeLUT;
      PixcmapConvertRGBToHSV: TPixcmapConvertRGBToHSV;
      PixcmapConvertHSVToRGB: TPixcmapConvertHSVToRGB;
      PixcmapConvertRGBToYUV: TPixcmapConvertRGBToYUV;
      PixcmapConvertYUVToRGB: TPixcmapConvertYUVToRGB;
    procedure Initialize(const Handle: TLibHandle);
  end;

implementation

procedure TLeptColormapModule.Initialize(const Handle: TLibHandle);
begin
  PixcmapCreate := LeptBind(Handle, 'pixcmapCreate');
  PixcmapCreateRandom := LeptBind(Handle, 'pixcmapCreateRandom');
  PixcmapCreateLinear := LeptBind(Handle, 'pixcmapCreateLinear');
  PixcmapCopy := LeptBind(Handle, 'pixcmapCopy');
  PixcmapDestroy := LeptBind(Handle, 'pixcmapDestroy');
  PixcmapIsValid := LeptBind(Handle, 'pixcmapIsValid');
  PixcmapAddColor := LeptBind(Handle, 'pixcmapAddColor');
  PixcmapAddRGBA := LeptBind(Handle, 'pixcmapAddRGBA');
  PixcmapAddNewColor := LeptBind(Handle, 'pixcmapAddNewColor');
  PixcmapAddNearestColor := LeptBind(Handle, 'pixcmapAddNearestColor');
  PixcmapUsableColor := LeptBind(Handle, 'pixcmapUsableColor');
  PixcmapAddBlackOrWhite := LeptBind(Handle, 'pixcmapAddBlackOrWhite');
  PixcmapSetBlackAndWhite := LeptBind(Handle, 'pixcmapSetBlackAndWhite');
  PixcmapGetCount := LeptBind(Handle, 'pixcmapGetCount');
  PixcmapGetFreeCount := LeptBind(Handle, 'pixcmapGetFreeCount');
  PixcmapGetDepth := LeptBind(Handle, 'pixcmapGetDepth');
  PixcmapGetMinDepth := LeptBind(Handle, 'pixcmapGetMinDepth');
  PixcmapClear := LeptBind(Handle, 'pixcmapClear');
  PixcmapGetColor := LeptBind(Handle, 'pixcmapGetColor');
  PixcmapGetColor32 := LeptBind(Handle, 'pixcmapGetColor32');
  PixcmapGetRGBA := LeptBind(Handle, 'pixcmapGetRGBA');
  PixcmapGetRGBA32 := LeptBind(Handle, 'pixcmapGetRGBA32');
  PixcmapResetColor := LeptBind(Handle, 'pixcmapResetColor');
  PixcmapSetAlpha := LeptBind(Handle, 'pixcmapSetAlpha');
  PixcmapGetIndex := LeptBind(Handle, 'pixcmapGetIndex');
  PixcmapHasColor := LeptBind(Handle, 'pixcmapHasColor');
  PixcmapIsOpaque := LeptBind(Handle, 'pixcmapIsOpaque');
  PixcmapNonOpaqueColorsInfo := LeptBind(Handle, 'pixcmapNonOpaqueColorsInfo');
  PixcmapIsBlackAndWhite := LeptBind(Handle, 'pixcmapIsBlackAndWhite');
  PixcmapCountGrayColors := LeptBind(Handle, 'pixcmapCountGrayColors');
  PixcmapGetRankIntensity := LeptBind(Handle, 'pixcmapGetRankIntensity');
  PixcmapGetNearestIndex := LeptBind(Handle, 'pixcmapGetNearestIndex');
  PixcmapGetNearestGrayIndex := LeptBind(Handle, 'pixcmapGetNearestGrayIndex');
  PixcmapGetDistanceToColor := LeptBind(Handle, 'pixcmapGetDistanceToColor');
  PixcmapGetRangeValues := LeptBind(Handle, 'pixcmapGetRangeValues');
  PixcmapGrayToFalseColor := LeptBind(Handle, 'pixcmapGrayToFalseColor');
  PixcmapGrayToColor := LeptBind(Handle, 'pixcmapGrayToColor');
  PixcmapColorToGray := LeptBind(Handle, 'pixcmapColorToGray');
  PixcmapConvertTo4 := LeptBind(Handle, 'pixcmapConvertTo4');
  PixcmapConvertTo8 := LeptBind(Handle, 'pixcmapConvertTo8');
  PixcmapRead := LeptBind(Handle, 'pixcmapRead');
  PixcmapReadStream := LeptBind(Handle, 'pixcmapReadStream');
  PixcmapReadMem := LeptBind(Handle, 'pixcmapReadMem');
  PixcmapWrite := LeptBind(Handle, 'pixcmapWrite');
  PixcmapWriteStream := LeptBind(Handle, 'pixcmapWriteStream');
  PixcmapWriteMem := LeptBind(Handle, 'pixcmapWriteMem');
  PixcmapToArrays := LeptBind(Handle, 'pixcmapToArrays');
  PixcmapToRGBTable := LeptBind(Handle, 'pixcmapToRGBTable');
  PixcmapSerializeToMemory := LeptBind(Handle, 'pixcmapSerializeToMemory');
  PixcmapDeserializeFromMemory := LeptBind(Handle, 'pixcmapDeserializeFromMemory');
  PixcmapConvertToHex := LeptBind(Handle, 'pixcmapConvertToHex');
  PixcmapGammaTRC := LeptBind(Handle, 'pixcmapGammaTRC');
  PixcmapContrastTRC := LeptBind(Handle, 'pixcmapContrastTRC');
  PixcmapShiftIntensity := LeptBind(Handle, 'pixcmapShiftIntensity');
  PixcmapShiftByComponent := LeptBind(Handle, 'pixcmapShiftByComponent');
  PixcmapToOctcubeLUT := LeptBind(Handle, 'pixcmapToOctcubeLUT');
  PixcmapConvertRGBToHSV := LeptBind(Handle, 'pixcmapConvertRGBToHSV');
  PixcmapConvertHSVToRGB := LeptBind(Handle, 'pixcmapConvertHSVToRGB');
  PixcmapConvertRGBToYUV := LeptBind(Handle, 'pixcmapConvertRGBToYUV');
  PixcmapConvertYUVToRGB := LeptBind(Handle, 'pixcmapConvertYUVToRGB');
end;

end.
