{ ************************************************************************** }
{                                                                            }
{ Leptonica.Blend                                                            }
{                                                                            }
{ Copyright © 2026 Yuriy Pisarev                                             }
{                                                                            }
{ ************************************************************************** }

unit Leptonica.Blend;

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
  TLeptBlendModule = record
  public
    type
      TPixBlend = function(pixs1: PPix; pixs2: PPix; x: Integer; y: Integer; fract: Single): PPix; cdecl;
      TPixBlendMask = function(pixd: PPix; pixs1: PPix; pixs2: PPix; x: Integer; y: Integer; fract: Single;
        &type: Integer): PPix; cdecl;
      TPixBlendGray = function(pixd: PPix; pixs1: PPix; pixs2: PPix; x: Integer; y: Integer; fract: Single;
        &type: Integer; transparent: Integer; transpix: Cardinal): PPix; cdecl;
      TPixBlendGrayInverse = function(pixd: PPix; pixs1: PPix; pixs2: PPix; x: Integer; y: Integer;
        fract: Single): PPix; cdecl;
      TPixBlendColor = function(pixd: PPix; pixs1: PPix; pixs2: PPix; x: Integer; y: Integer; fract: Single;
        transparent: Integer; transpix: Cardinal): PPix; cdecl;
      TPixBlendColorByChannel = function(pixd: PPix; pixs1: PPix; pixs2: PPix; x: Integer; y: Integer;
        rfract: Single; gfract: Single; bfract: Single; transparent: Integer;
        transpix: Cardinal): PPix; cdecl;
      TPixBlendGrayAdapt = function(pixd: PPix; pixs1: PPix; pixs2: PPix; x: Integer; y: Integer;
        fract: Single; shift: Integer): PPix; cdecl;
      TPixFadeWithGray = function(pixs: PPix; pixb: PPix; factor: Single; &type: Integer): PPix; cdecl;
      TPixBlendHardLight = function(pixd: PPix; pixs1: PPix; pixs2: PPix; x: Integer; y: Integer;
        fract: Single): PPix; cdecl;
      TPixBlendCmap = function(pixs: PPix; pixb: PPix; x: Integer; y: Integer;
        sindex: Integer): Integer; cdecl;
      TPixBlendWithGrayMask = function(pixs1: PPix; pixs2: PPix; pixg: PPix; x: Integer;
        y: Integer): PPix; cdecl;
      TPixBlendBackgroundToColor = function(pixd: PPix; pixs: PPix; box: PBox; color: Cardinal; gamma: Single;
        minval: Integer; maxval: Integer): PPix; cdecl;
      TPixMultiplyByColor = function(pixd: PPix; pixs: PPix; box: PBox; color: Cardinal): PPix; cdecl;
      TPixAlphaBlendUniform = function(pixs: PPix; color: Cardinal): PPix; cdecl;
      TPixAddAlphaToBlend = function(pixs: PPix; fract: Single; invert: Integer): PPix; cdecl;
      TPixSetAlphaOverWhite = function(pixs: PPix): PPix; cdecl;
      TPixLinearEdgeFade = function(pixs: PPix; dir: Integer; fadeto: Integer; distfract: Single;
        maxfade: Single): Integer; cdecl;
      TPixBlendBoxaRandom = function(pixs: PPix; boxa: PBoxa; fract: Single): PPix; cdecl;
      TPixBlendInRect = function(pixs: PPix; box: PBox; val: Cardinal; fract: Single): Integer; cdecl;
      TPixAddAlphaTo1bpp = function(pixd: PPix; pixs: PPix): PPix; cdecl;
    var
      PixBlend: TPixBlend;
      PixBlendMask: TPixBlendMask;
      PixBlendGray: TPixBlendGray;
      PixBlendGrayInverse: TPixBlendGrayInverse;
      PixBlendColor: TPixBlendColor;
      PixBlendColorByChannel: TPixBlendColorByChannel;
      PixBlendGrayAdapt: TPixBlendGrayAdapt;
      PixFadeWithGray: TPixFadeWithGray;
      PixBlendHardLight: TPixBlendHardLight;
      PixBlendCmap: TPixBlendCmap;
      PixBlendWithGrayMask: TPixBlendWithGrayMask;
      PixBlendBackgroundToColor: TPixBlendBackgroundToColor;
      PixMultiplyByColor: TPixMultiplyByColor;
      PixAlphaBlendUniform: TPixAlphaBlendUniform;
      PixAddAlphaToBlend: TPixAddAlphaToBlend;
      PixSetAlphaOverWhite: TPixSetAlphaOverWhite;
      PixLinearEdgeFade: TPixLinearEdgeFade;
      PixBlendBoxaRandom: TPixBlendBoxaRandom;
      PixBlendInRect: TPixBlendInRect;
      PixAddAlphaTo1bpp: TPixAddAlphaTo1bpp;
    procedure Initialize(const Handle: TLibHandle);
  end;

implementation

procedure TLeptBlendModule.Initialize(const Handle: TLibHandle);
begin
  PixBlend := LeptBind(Handle, 'pixBlend');
  PixBlendMask := LeptBind(Handle, 'pixBlendMask');
  PixBlendGray := LeptBind(Handle, 'pixBlendGray');
  PixBlendGrayInverse := LeptBind(Handle, 'pixBlendGrayInverse');
  PixBlendColor := LeptBind(Handle, 'pixBlendColor');
  PixBlendColorByChannel := LeptBind(Handle, 'pixBlendColorByChannel');
  PixBlendGrayAdapt := LeptBind(Handle, 'pixBlendGrayAdapt');
  PixFadeWithGray := LeptBind(Handle, 'pixFadeWithGray');
  PixBlendHardLight := LeptBind(Handle, 'pixBlendHardLight');
  PixBlendCmap := LeptBind(Handle, 'pixBlendCmap');
  PixBlendWithGrayMask := LeptBind(Handle, 'pixBlendWithGrayMask');
  PixBlendBackgroundToColor := LeptBind(Handle, 'pixBlendBackgroundToColor');
  PixMultiplyByColor := LeptBind(Handle, 'pixMultiplyByColor');
  PixAlphaBlendUniform := LeptBind(Handle, 'pixAlphaBlendUniform');
  PixAddAlphaToBlend := LeptBind(Handle, 'pixAddAlphaToBlend');
  PixSetAlphaOverWhite := LeptBind(Handle, 'pixSetAlphaOverWhite');
  PixLinearEdgeFade := LeptBind(Handle, 'pixLinearEdgeFade');
  PixBlendBoxaRandom := LeptBind(Handle, 'pixBlendBoxaRandom');
  PixBlendInRect := LeptBind(Handle, 'pixBlendInRect');
  PixAddAlphaTo1bpp := LeptBind(Handle, 'pixAddAlphaTo1bpp');
end;

end.
