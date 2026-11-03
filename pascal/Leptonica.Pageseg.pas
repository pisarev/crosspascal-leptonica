{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit Leptonica.Pageseg;

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
  TLeptPagesegModule = record
  public
    type
      TPixGetRegionsBinary = function(pixs: PPix; ppixhm: PPPix; ppixtm: PPPix; ppixtb: PPPix;
        pixadb: PPixa): Integer; cdecl;
      TPixGenHalftoneMask = function(pixs: PPix; ppixtext: PPPix; phtfound: PInteger;
        debug: Integer): PPix; cdecl;
      TPixGenTextlineMask = function(pixs: PPix; ppixvws: PPPix; ptlfound: PInteger;
        pixadb: PPixa): PPix; cdecl;
      TPixGenTextblockMask = function(pixs: PPix; pixvws: PPix; pixadb: PPixa): PPix; cdecl;
      TPixFindPageForeground = function(pixs: PPix; threshold: Integer; mindist: Integer; erasedist: Integer;
        showmorph: Integer; pixac: PPixa): PBox; cdecl;
      TPixSplitIntoCharacters = function(pixs: PPix; minw: Integer; minh: Integer; pboxa: PPBoxa;
        ppixa: PPPixa; ppixdebug: PPPix): Integer; cdecl;
      TPixSetSelectCmap = function(pixs: PPix; box: PBox; sindex: Integer; rval: Integer; gval: Integer;
        bval: Integer): Integer; cdecl;
      TPixSetSelectMaskedCmap = function(pixs: PPix; pixm: PPix; x: Integer; y: Integer; sindex: Integer;
        rval: Integer; gval: Integer; bval: Integer): Integer; cdecl;
    var
      PixGetRegionsBinary: TPixGetRegionsBinary;
      PixGenHalftoneMask: TPixGenHalftoneMask;
      PixGenTextlineMask: TPixGenTextlineMask;
      PixGenTextblockMask: TPixGenTextblockMask;
      PixFindPageForeground: TPixFindPageForeground;
      PixSplitIntoCharacters: TPixSplitIntoCharacters;
      PixSetSelectCmap: TPixSetSelectCmap;
      PixSetSelectMaskedCmap: TPixSetSelectMaskedCmap;
      procedure Initialize(const Handle: TLibHandle);
  end;

implementation

procedure TLeptPagesegModule.Initialize(const Handle: TLibHandle);
begin
  PixGetRegionsBinary := LeptBind(Handle, 'pixGetRegionsBinary');
  PixGenHalftoneMask := LeptBind(Handle, 'pixGenHalftoneMask');
  PixGenTextlineMask := LeptBind(Handle, 'pixGenTextlineMask');
  PixGenTextblockMask := LeptBind(Handle, 'pixGenTextblockMask');
  PixFindPageForeground := LeptBind(Handle, 'pixFindPageForeground');
  PixSplitIntoCharacters := LeptBind(Handle, 'pixSplitIntoCharacters');
  PixSetSelectCmap := LeptBind(Handle, 'pixSetSelectCmap');
  PixSetSelectMaskedCmap := LeptBind(Handle, 'pixSetSelectMaskedCmap');
end;

end.
