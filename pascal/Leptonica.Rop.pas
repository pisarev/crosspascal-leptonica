{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit Leptonica.Rop;

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
  TLeptRopModule = record
  public
    type
      TPixCropAlignedToCentroid = function(pix1: PPix; pix2: PPix; factor: Integer; pbox1: PPBox;
        pbox2: PPBox): Integer; cdecl;
      TPixCropImage = function(pixs: PPix; lr_clear: Integer; tb_clear: Integer; edgeclean: Integer;
        lr_border: Integer; tb_border: Integer; maxwiden: Single; printwiden: Integer; debugfile: PAnsiChar;
        pcropbox: PPBox): PPix; cdecl;
      TPixSetMaskedCmap = function(pixs: PPix; pixm: PPix; x: Integer; y: Integer; rval: Integer;
        gval: Integer; bval: Integer): Integer; cdecl;
      TPixResizeImageData = function(pixd: PPix; pixs: PPix): Integer; cdecl;
      TPixCopyColormap = function(pixd: PPix; pixs: PPix): Integer; cdecl;
      TPixTransferAllData = function(pixd: PPix; ppixs: PPPix; copytext: Integer;
        copyformat: Integer): Integer; cdecl;
      TPixGetDimensions = function(pix: PPix; pw: PInteger; ph: PInteger; pd: PInteger): Integer; cdecl;
      TPixSetDimensions = function(pix: PPix; w: Integer; h: Integer; d: Integer): Integer; cdecl;
      TPixCopyDimensions = function(pixd: PPix; pixs: PPix): Integer; cdecl;
      TPixCopySpp = function(pixd: PPix; pixs: PPix): Integer; cdecl;
      TPixCopyResolution = function(pixd: PPix; pixs: PPix): Integer; cdecl;
      TPixCopyInputFormat = function(pixd: PPix; pixs: PPix): Integer; cdecl;
      TPixCopyText = function(pixd: PPix; pixs: PPix): Integer; cdecl;
      TPixCopyBorder = function(pixd: PPix; pixs: PPix; left: Integer; right: Integer; top: Integer;
        bot: Integer): PPix; cdecl;
      TPixCopyRGBComponent = function(pixd: PPix; pixs: PPix; comp: Integer): Integer; cdecl;
      TPixEndianByteSwapNew = function(pixs: PPix): PPix; cdecl;
      TPixEndianByteSwap = function(pixs: PPix): Integer; cdecl;
      TPixEndianTwoByteSwapNew = function(pixs: PPix): PPix; cdecl;
      TPixEndianTwoByteSwap = function(pixs: PPix): Integer; cdecl;
      TPixSetMasked = function(pixd: PPix; pixm: PPix; val: Cardinal): Integer; cdecl;
      TPixSetMaskedGeneral = function(pixd: PPix; pixm: PPix; val: Cardinal; x: Integer;
        y: Integer): Integer; cdecl;
      TPixCombineMasked = function(pixd: PPix; pixs: PPix; pixm: PPix): Integer; cdecl;
      TPixCombineMaskedGeneral = function(pixd: PPix; pixs: PPix; pixm: PPix; x: Integer;
        y: Integer): Integer; cdecl;
      TPixCopyWithBoxa = function(pixs: PPix; boxa: PBoxa; background: Integer): PPix; cdecl;
      TPixInvert = function(pixd: PPix; pixs: PPix): PPix; cdecl;
      TPixOr = function(pixd: PPix; pixs1: PPix; pixs2: PPix): PPix; cdecl;
      TPixAnd = function(pixd: PPix; pixs1: PPix; pixs2: PPix): PPix; cdecl;
      TPixXor = function(pixd: PPix; pixs1: PPix; pixs2: PPix): PPix; cdecl;
      TPixSubtract = function(pixd: PPix; pixs1: PPix; pixs2: PPix): PPix; cdecl;
      TPixClipRectangles = function(pixs: PPix; boxa: PBoxa): PPixa; cdecl;
      TPixClipRectangle = function(pixs: PPix; box: PBox; pboxc: PPBox): PPix; cdecl;
      TPixClipRectangleWithBorder = function(pixs: PPix; box: PBox; maxbord: Integer;
        pboxn: PPBox): PPix; cdecl;
      TPixClipMasked = function(pixs: PPix; pixm: PPix; x: Integer; y: Integer;
        outval: Cardinal): PPix; cdecl;
      TPixCropToMatch = function(pixs1: PPix; pixs2: PPix; ppixd1: PPPix; ppixd2: PPPix): Integer; cdecl;
      TPixCropToSize = function(pixs: PPix; w: Integer; h: Integer): PPix; cdecl;
      TPixClipBoxToForeground = function(pixs: PPix; boxs: PBox; ppixd: PPPix; pboxd: PPBox): Integer; cdecl;
      TPixClipBoxToEdges = function(pixs: PPix; boxs: PBox; lowthresh: Integer; highthresh: Integer;
        maxwidth: Integer; factor: Integer; ppixd: PPPix; pboxd: PPBox): Integer; cdecl;
      TPixRasterop = function(pixd: PPix; dx: Integer; dy: Integer; dw: Integer; dh: Integer; op: Integer;
        pixs: PPix; sx: Integer; sy: Integer): Integer; cdecl;
      TPixRasteropVip = function(pixd: PPix; bx: Integer; bw: Integer; vshift: Integer;
        incolor: Integer): Integer; cdecl;
      TPixRasteropHip = function(pixd: PPix; by: Integer; bh: Integer; hshift: Integer;
        incolor: Integer): Integer; cdecl;
      TPixRasteropIP = function(pixd: PPix; hshift: Integer; vshift: Integer;
        incolor: Integer): Integer; cdecl;
      TPixRasteropFullImage = function(pixd: PPix; pixs: PPix; op: Integer): Integer; cdecl;
      TRasteropUniLow = procedure(datad: PCardinal; dpixw: Integer; dpixh: Integer; depth: Integer;
        dwpl: Integer; dx: Integer; dy: Integer; dw: Integer; dh: Integer; op: Integer); cdecl;
      TRasteropLow = procedure(datad: PCardinal; dpixw: Integer; dpixh: Integer; depth: Integer;
        dwpl: Integer; dx: Integer; dy: Integer; dw: Integer; dh: Integer; op: Integer; datas: PCardinal;
        spixw: Integer; spixh: Integer; swpl: Integer; sx: Integer; sy: Integer); cdecl;
      TRasteropVipLow = procedure(data: PCardinal; pixw: Integer; pixh: Integer; depth: Integer; wpl: Integer;
        x: Integer; w: Integer; shift: Integer); cdecl;
      TRasteropHipLow = procedure(data: PCardinal; pixh: Integer; depth: Integer; wpl: Integer; y: Integer;
        h: Integer; shift: Integer); cdecl;
    var
      PixCropAlignedToCentroid: TPixCropAlignedToCentroid;
      PixCropImage: TPixCropImage;
      PixSetMaskedCmap: TPixSetMaskedCmap;
      PixResizeImageData: TPixResizeImageData;
      PixCopyColormap: TPixCopyColormap;
      PixTransferAllData: TPixTransferAllData;
      PixGetDimensions: TPixGetDimensions;
      PixSetDimensions: TPixSetDimensions;
      PixCopyDimensions: TPixCopyDimensions;
      PixCopySpp: TPixCopySpp;
      PixCopyResolution: TPixCopyResolution;
      PixCopyInputFormat: TPixCopyInputFormat;
      PixCopyText: TPixCopyText;
      PixCopyBorder: TPixCopyBorder;
      PixCopyRGBComponent: TPixCopyRGBComponent;
      PixEndianByteSwapNew: TPixEndianByteSwapNew;
      PixEndianByteSwap: TPixEndianByteSwap;
      PixEndianTwoByteSwapNew: TPixEndianTwoByteSwapNew;
      PixEndianTwoByteSwap: TPixEndianTwoByteSwap;
      PixSetMasked: TPixSetMasked;
      PixSetMaskedGeneral: TPixSetMaskedGeneral;
      PixCombineMasked: TPixCombineMasked;
      PixCombineMaskedGeneral: TPixCombineMaskedGeneral;
      PixCopyWithBoxa: TPixCopyWithBoxa;
      PixInvert: TPixInvert;
      PixOr: TPixOr;
      PixAnd: TPixAnd;
      PixXor: TPixXor;
      PixSubtract: TPixSubtract;
      PixClipRectangles: TPixClipRectangles;
      PixClipRectangle: TPixClipRectangle;
      PixClipRectangleWithBorder: TPixClipRectangleWithBorder;
      PixClipMasked: TPixClipMasked;
      PixCropToMatch: TPixCropToMatch;
      PixCropToSize: TPixCropToSize;
      PixClipBoxToForeground: TPixClipBoxToForeground;
      PixClipBoxToEdges: TPixClipBoxToEdges;
      PixRasterop: TPixRasterop;
      PixRasteropVip: TPixRasteropVip;
      PixRasteropHip: TPixRasteropHip;
      PixRasteropIP: TPixRasteropIP;
      PixRasteropFullImage: TPixRasteropFullImage;
      RasteropUniLow: TRasteropUniLow;
      RasteropLow: TRasteropLow;
      RasteropVipLow: TRasteropVipLow;
      RasteropHipLow: TRasteropHipLow;
      procedure Initialize(const Handle: TLibHandle);
  end;

implementation

procedure TLeptRopModule.Initialize(const Handle: TLibHandle);
begin
  PixCropAlignedToCentroid := LeptBind(Handle, 'pixCropAlignedToCentroid');
  PixCropImage := LeptBind(Handle, 'pixCropImage');
  PixSetMaskedCmap := LeptBind(Handle, 'pixSetMaskedCmap');
  PixResizeImageData := LeptBind(Handle, 'pixResizeImageData');
  PixCopyColormap := LeptBind(Handle, 'pixCopyColormap');
  PixTransferAllData := LeptBind(Handle, 'pixTransferAllData');
  PixGetDimensions := LeptBind(Handle, 'pixGetDimensions');
  PixSetDimensions := LeptBind(Handle, 'pixSetDimensions');
  PixCopyDimensions := LeptBind(Handle, 'pixCopyDimensions');
  PixCopySpp := LeptBind(Handle, 'pixCopySpp');
  PixCopyResolution := LeptBind(Handle, 'pixCopyResolution');
  PixCopyInputFormat := LeptBind(Handle, 'pixCopyInputFormat');
  PixCopyText := LeptBind(Handle, 'pixCopyText');
  PixCopyBorder := LeptBind(Handle, 'pixCopyBorder');
  PixCopyRGBComponent := LeptBind(Handle, 'pixCopyRGBComponent');
  PixEndianByteSwapNew := LeptBind(Handle, 'pixEndianByteSwapNew');
  PixEndianByteSwap := LeptBind(Handle, 'pixEndianByteSwap');
  PixEndianTwoByteSwapNew := LeptBind(Handle, 'pixEndianTwoByteSwapNew');
  PixEndianTwoByteSwap := LeptBind(Handle, 'pixEndianTwoByteSwap');
  PixSetMasked := LeptBind(Handle, 'pixSetMasked');
  PixSetMaskedGeneral := LeptBind(Handle, 'pixSetMaskedGeneral');
  PixCombineMasked := LeptBind(Handle, 'pixCombineMasked');
  PixCombineMaskedGeneral := LeptBind(Handle, 'pixCombineMaskedGeneral');
  PixCopyWithBoxa := LeptBind(Handle, 'pixCopyWithBoxa');
  PixInvert := LeptBind(Handle, 'pixInvert');
  PixOr := LeptBind(Handle, 'pixOr');
  PixAnd := LeptBind(Handle, 'pixAnd');
  PixXor := LeptBind(Handle, 'pixXor');
  PixSubtract := LeptBind(Handle, 'pixSubtract');
  PixClipRectangles := LeptBind(Handle, 'pixClipRectangles');
  PixClipRectangle := LeptBind(Handle, 'pixClipRectangle');
  PixClipRectangleWithBorder := LeptBind(Handle, 'pixClipRectangleWithBorder');
  PixClipMasked := LeptBind(Handle, 'pixClipMasked');
  PixCropToMatch := LeptBind(Handle, 'pixCropToMatch');
  PixCropToSize := LeptBind(Handle, 'pixCropToSize');
  PixClipBoxToForeground := LeptBind(Handle, 'pixClipBoxToForeground');
  PixClipBoxToEdges := LeptBind(Handle, 'pixClipBoxToEdges');
  PixRasterop := LeptBind(Handle, 'pixRasterop');
  PixRasteropVip := LeptBind(Handle, 'pixRasteropVip');
  PixRasteropHip := LeptBind(Handle, 'pixRasteropHip');
  PixRasteropIP := LeptBind(Handle, 'pixRasteropIP');
  PixRasteropFullImage := LeptBind(Handle, 'pixRasteropFullImage');
  RasteropUniLow := LeptBind(Handle, 'rasteropUniLow');
  RasteropLow := LeptBind(Handle, 'rasteropLow');
  RasteropVipLow := LeptBind(Handle, 'rasteropVipLow');
  RasteropHipLow := LeptBind(Handle, 'rasteropHipLow');
end;

end.
