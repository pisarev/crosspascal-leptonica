{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestIO;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_pixReadStreamBmp;
begin
  AssertFuncLoaded(@Lept.IO.PixReadStreamBmp, 'pixReadStreamBmp');
end;

procedure Test_pixReadMemBmp;
begin
  AssertFuncLoaded(@Lept.IO.PixReadMemBmp, 'pixReadMemBmp');
end;

procedure Test_pixWriteStreamBmp;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteStreamBmp, 'pixWriteStreamBmp');
end;

procedure Test_pixWriteMemBmp;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteMemBmp, 'pixWriteMemBmp');
end;

procedure Test_pixDisplayDiff;
begin
  AssertFuncLoaded(@Lept.IO.PixDisplayDiff, 'pixDisplayDiff');
end;

procedure Test_pixDisplayDiffBinary;
begin
  AssertFuncLoaded(@Lept.IO.PixDisplayDiffBinary, 'pixDisplayDiffBinary');
end;

procedure Test_l_compressGrayHistograms;
begin
  AssertFuncLoaded(@Lept.IO.L_compressGrayHistograms, 'l_compressGrayHistograms');
end;

procedure Test_l_uncompressGrayHistograms;
begin
  AssertFuncLoaded(@Lept.IO.L_uncompressGrayHistograms, 'l_uncompressGrayHistograms');
end;

procedure Test_pixReadStreamGif;
begin
  AssertFuncLoaded(@Lept.IO.PixReadStreamGif, 'pixReadStreamGif');
end;

procedure Test_pixReadMemGif;
begin
  AssertFuncLoaded(@Lept.IO.PixReadMemGif, 'pixReadMemGif');
end;

procedure Test_pixWriteStreamGif;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteStreamGif, 'pixWriteStreamGif');
end;

procedure Test_pixWriteMemGif;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteMemGif, 'pixWriteMemGif');
end;

procedure Test_readHeaderJp2k;
begin
  AssertFuncLoaded(@Lept.IO.ReadHeaderJp2k, 'readHeaderJp2k');
end;

procedure Test_freadHeaderJp2k;
begin
  AssertFuncLoaded(@Lept.IO.FreadHeaderJp2k, 'freadHeaderJp2k');
end;

procedure Test_readHeaderMemJp2k;
begin
  AssertFuncLoaded(@Lept.IO.ReadHeaderMemJp2k, 'readHeaderMemJp2k');
end;

procedure Test_pixReadJp2k;
begin
  AssertFuncLoaded(@Lept.IO.PixReadJp2k, 'pixReadJp2k');
end;

procedure Test_pixReadStreamJp2k;
begin
  AssertFuncLoaded(@Lept.IO.PixReadStreamJp2k, 'pixReadStreamJp2k');
end;

procedure Test_pixWriteJp2k;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteJp2k, 'pixWriteJp2k');
end;

procedure Test_pixWriteStreamJp2k;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteStreamJp2k, 'pixWriteStreamJp2k');
end;

procedure Test_pixReadMemJp2k;
begin
  AssertFuncLoaded(@Lept.IO.PixReadMemJp2k, 'pixReadMemJp2k');
end;

procedure Test_pixWriteMemJp2k;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteMemJp2k, 'pixWriteMemJp2k');
end;

procedure Test_pixReadJpeg;
begin
  AssertFuncLoaded(@Lept.IO.PixReadJpeg, 'pixReadJpeg');
end;

procedure Test_pixReadStreamJpeg;
begin
  AssertFuncLoaded(@Lept.IO.PixReadStreamJpeg, 'pixReadStreamJpeg');
end;

procedure Test_readHeaderJpeg;
begin
  AssertFuncLoaded(@Lept.IO.ReadHeaderJpeg, 'readHeaderJpeg');
end;

procedure Test_freadHeaderJpeg;
begin
  AssertFuncLoaded(@Lept.IO.FreadHeaderJpeg, 'freadHeaderJpeg');
end;

procedure Test_pixWriteJpeg;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteJpeg, 'pixWriteJpeg');
end;

procedure Test_pixWriteStreamJpeg;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteStreamJpeg, 'pixWriteStreamJpeg');
end;

procedure Test_pixReadMemJpeg;
begin
  AssertFuncLoaded(@Lept.IO.PixReadMemJpeg, 'pixReadMemJpeg');
end;

procedure Test_readHeaderMemJpeg;
begin
  AssertFuncLoaded(@Lept.IO.ReadHeaderMemJpeg, 'readHeaderMemJpeg');
end;

procedure Test_pixWriteMemJpeg;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteMemJpeg, 'pixWriteMemJpeg');
end;

procedure Test_pixDisplayMatchedPattern;
begin
  AssertFuncLoaded(@Lept.IO.PixDisplayMatchedPattern, 'pixDisplayMatchedPattern');
end;

procedure Test_convertToPdf;
begin
  AssertFuncLoaded(@Lept.IO.ConvertToPdf, 'convertToPdf');
end;

procedure Test_convertToPdfData;
begin
  AssertFuncLoaded(@Lept.IO.ConvertToPdfData, 'convertToPdfData');
end;

procedure Test_pixWriteStreamPdf;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteStreamPdf, 'pixWriteStreamPdf');
end;

procedure Test_pixWriteMemPdf;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteMemPdf, 'pixWriteMemPdf');
end;

procedure Test_convertToPdfSegmented;
begin
  AssertFuncLoaded(@Lept.IO.ConvertToPdfSegmented, 'convertToPdfSegmented');
end;

procedure Test_convertToPdfDataSegmented;
begin
  AssertFuncLoaded(@Lept.IO.ConvertToPdfDataSegmented, 'convertToPdfDataSegmented');
end;

procedure Test_l_generateCIDataForPdf;
begin
  AssertFuncLoaded(@Lept.IO.L_generateCIDataForPdf, 'l_generateCIDataForPdf');
end;

procedure Test_l_generateCIData;
begin
  AssertFuncLoaded(@Lept.IO.L_generateCIData, 'l_generateCIData');
end;

procedure Test_l_pdfSetG4ImageMask;
begin
  AssertFuncLoaded(@Lept.IO.L_pdfSetG4ImageMask, 'l_pdfSetG4ImageMask');
end;

procedure Test_l_pdfSetDateAndVersion;
begin
  AssertFuncLoaded(@Lept.IO.L_pdfSetDateAndVersion, 'l_pdfSetDateAndVersion');
end;

procedure Test_pixDisplayLayersRGBA;
begin
  AssertFuncLoaded(@Lept.IO.PixDisplayLayersRGBA, 'pixDisplayLayersRGBA');
end;

procedure Test_pixDisplaySelectedPixels;
begin
  AssertFuncLoaded(@Lept.IO.PixDisplaySelectedPixels, 'pixDisplaySelectedPixels');
end;

procedure Test_pixDisplayColorArray;
begin
  AssertFuncLoaded(@Lept.IO.PixDisplayColorArray, 'pixDisplayColorArray');
end;

procedure Test_pixReadStreamPng;
begin
  AssertFuncLoaded(@Lept.IO.PixReadStreamPng, 'pixReadStreamPng');
end;

procedure Test_readHeaderPng;
begin
  AssertFuncLoaded(@Lept.IO.ReadHeaderPng, 'readHeaderPng');
end;

procedure Test_freadHeaderPng;
begin
  AssertFuncLoaded(@Lept.IO.FreadHeaderPng, 'freadHeaderPng');
end;

procedure Test_readHeaderMemPng;
begin
  AssertFuncLoaded(@Lept.IO.ReadHeaderMemPng, 'readHeaderMemPng');
end;

procedure Test_pixWritePng;
begin
  AssertFuncLoaded(@Lept.IO.PixWritePng, 'pixWritePng');
end;

procedure Test_pixWriteStreamPng;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteStreamPng, 'pixWriteStreamPng');
end;

procedure Test_l_pngSetReadStrip16To8;
begin
  AssertFuncLoaded(@Lept.IO.L_pngSetReadStrip16To8, 'l_pngSetReadStrip16To8');
end;

procedure Test_pixReadMemPng;
begin
  AssertFuncLoaded(@Lept.IO.PixReadMemPng, 'pixReadMemPng');
end;

procedure Test_pixWriteMemPng;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteMemPng, 'pixWriteMemPng');
end;

procedure Test_pixReadStreamPnm;
begin
  AssertFuncLoaded(@Lept.IO.PixReadStreamPnm, 'pixReadStreamPnm');
end;

procedure Test_readHeaderPnm;
begin
  AssertFuncLoaded(@Lept.IO.ReadHeaderPnm, 'readHeaderPnm');
end;

procedure Test_freadHeaderPnm;
begin
  AssertFuncLoaded(@Lept.IO.FreadHeaderPnm, 'freadHeaderPnm');
end;

procedure Test_pixWriteStreamPnm;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteStreamPnm, 'pixWriteStreamPnm');
end;

procedure Test_pixWriteStreamAsciiPnm;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteStreamAsciiPnm, 'pixWriteStreamAsciiPnm');
end;

procedure Test_pixWriteStreamPam;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteStreamPam, 'pixWriteStreamPam');
end;

procedure Test_pixReadMemPnm;
begin
  AssertFuncLoaded(@Lept.IO.PixReadMemPnm, 'pixReadMemPnm');
end;

procedure Test_readHeaderMemPnm;
begin
  AssertFuncLoaded(@Lept.IO.ReadHeaderMemPnm, 'readHeaderMemPnm');
end;

procedure Test_pixWriteMemPnm;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteMemPnm, 'pixWriteMemPnm');
end;

procedure Test_pixWriteMemPam;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteMemPam, 'pixWriteMemPam');
end;

procedure Test_pixWriteSegmentedPageToPS;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteSegmentedPageToPS, 'pixWriteSegmentedPageToPS');
end;

procedure Test_pixWriteMixedToPS;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteMixedToPS, 'pixWriteMixedToPS');
end;

procedure Test_pixWriteCompressedToPS;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteCompressedToPS, 'pixWriteCompressedToPS');
end;

procedure Test_pixWritePSEmbed;
begin
  AssertFuncLoaded(@Lept.IO.PixWritePSEmbed, 'pixWritePSEmbed');
end;

procedure Test_pixWriteStreamPS;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteStreamPS, 'pixWriteStreamPS');
end;

procedure Test_pixWriteStringPS;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteStringPS, 'pixWriteStringPS');
end;

procedure Test_pixWriteMemPS;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteMemPS, 'pixWriteMemPS');
end;

procedure Test_pixDisplayPta;
begin
  AssertFuncLoaded(@Lept.IO.PixDisplayPta, 'pixDisplayPta');
end;

procedure Test_pixDisplayPtaaPattern;
begin
  AssertFuncLoaded(@Lept.IO.PixDisplayPtaaPattern, 'pixDisplayPtaaPattern');
end;

procedure Test_pixDisplayPtaPattern;
begin
  AssertFuncLoaded(@Lept.IO.PixDisplayPtaPattern, 'pixDisplayPtaPattern');
end;

procedure Test_pixDisplayPtaa;
begin
  AssertFuncLoaded(@Lept.IO.PixDisplayPtaa, 'pixDisplayPtaa');
end;

procedure Test_pixReadBarcodes;
begin
  AssertFuncLoaded(@Lept.IO.PixReadBarcodes, 'pixReadBarcodes');
end;

procedure Test_pixReadBarcodeWidths;
begin
  AssertFuncLoaded(@Lept.IO.PixReadBarcodeWidths, 'pixReadBarcodeWidths');
end;

procedure Test_pixRead;
begin
  AssertFuncLoaded(@Lept.IO.PixRead, 'pixRead');
end;

procedure Test_pixReadWithHint;
begin
  AssertFuncLoaded(@Lept.IO.PixReadWithHint, 'pixReadWithHint');
end;

procedure Test_pixReadIndexed;
begin
  AssertFuncLoaded(@Lept.IO.PixReadIndexed, 'pixReadIndexed');
end;

procedure Test_pixReadStream;
begin
  AssertFuncLoaded(@Lept.IO.PixReadStream, 'pixReadStream');
end;

procedure Test_pixReadHeader;
begin
  AssertFuncLoaded(@Lept.IO.PixReadHeader, 'pixReadHeader');
end;

procedure Test_findFileFormat;
begin
  AssertFuncLoaded(@Lept.IO.FindFileFormat, 'findFileFormat');
end;

procedure Test_findFileFormatStream;
begin
  AssertFuncLoaded(@Lept.IO.FindFileFormatStream, 'findFileFormatStream');
end;

procedure Test_findFileFormatBuffer;
begin
  AssertFuncLoaded(@Lept.IO.FindFileFormatBuffer, 'findFileFormatBuffer');
end;

procedure Test_pixReadMem;
begin
  AssertFuncLoaded(@Lept.IO.PixReadMem, 'pixReadMem');
end;

procedure Test_pixReadHeaderMem;
begin
  AssertFuncLoaded(@Lept.IO.PixReadHeaderMem, 'pixReadHeaderMem');
end;

procedure Test_pixDisplayHitMissSel;
begin
  AssertFuncLoaded(@Lept.IO.PixDisplayHitMissSel, 'pixDisplayHitMissSel');
end;

procedure Test_pixReadStreamSpix;
begin
  AssertFuncLoaded(@Lept.IO.PixReadStreamSpix, 'pixReadStreamSpix');
end;

procedure Test_readHeaderSpix;
begin
  AssertFuncLoaded(@Lept.IO.ReadHeaderSpix, 'readHeaderSpix');
end;

procedure Test_freadHeaderSpix;
begin
  AssertFuncLoaded(@Lept.IO.FreadHeaderSpix, 'freadHeaderSpix');
end;

procedure Test_sreadHeaderSpix;
begin
  AssertFuncLoaded(@Lept.IO.SreadHeaderSpix, 'sreadHeaderSpix');
end;

procedure Test_pixWriteStreamSpix;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteStreamSpix, 'pixWriteStreamSpix');
end;

procedure Test_pixReadMemSpix;
begin
  AssertFuncLoaded(@Lept.IO.PixReadMemSpix, 'pixReadMemSpix');
end;

procedure Test_pixWriteMemSpix;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteMemSpix, 'pixWriteMemSpix');
end;

procedure Test_pixReadTiff;
begin
  AssertFuncLoaded(@Lept.IO.PixReadTiff, 'pixReadTiff');
end;

procedure Test_pixReadStreamTiff;
begin
  AssertFuncLoaded(@Lept.IO.PixReadStreamTiff, 'pixReadStreamTiff');
end;

procedure Test_pixWriteTiff;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteTiff, 'pixWriteTiff');
end;

procedure Test_pixWriteTiffCustom;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteTiffCustom, 'pixWriteTiffCustom');
end;

procedure Test_pixWriteStreamTiff;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteStreamTiff, 'pixWriteStreamTiff');
end;

procedure Test_pixWriteStreamTiffWA;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteStreamTiffWA, 'pixWriteStreamTiffWA');
end;

procedure Test_pixReadFromMultipageTiff;
begin
  AssertFuncLoaded(@Lept.IO.PixReadFromMultipageTiff, 'pixReadFromMultipageTiff');
end;

procedure Test_readHeaderTiff;
begin
  AssertFuncLoaded(@Lept.IO.ReadHeaderTiff, 'readHeaderTiff');
end;

procedure Test_freadHeaderTiff;
begin
  AssertFuncLoaded(@Lept.IO.FreadHeaderTiff, 'freadHeaderTiff');
end;

procedure Test_readHeaderMemTiff;
begin
  AssertFuncLoaded(@Lept.IO.ReadHeaderMemTiff, 'readHeaderMemTiff');
end;

procedure Test_pixReadMemTiff;
begin
  AssertFuncLoaded(@Lept.IO.PixReadMemTiff, 'pixReadMemTiff');
end;

procedure Test_pixReadMemFromMultipageTiff;
begin
  AssertFuncLoaded(@Lept.IO.PixReadMemFromMultipageTiff, 'pixReadMemFromMultipageTiff');
end;

procedure Test_pixWriteMemTiff;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteMemTiff, 'pixWriteMemTiff');
end;

procedure Test_pixWriteMemTiffCustom;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteMemTiffCustom, 'pixWriteMemTiffCustom');
end;

procedure Test_pixReadStreamWebP;
begin
  AssertFuncLoaded(@Lept.IO.PixReadStreamWebP, 'pixReadStreamWebP');
end;

procedure Test_pixReadMemWebP;
begin
  AssertFuncLoaded(@Lept.IO.PixReadMemWebP, 'pixReadMemWebP');
end;

procedure Test_readHeaderWebP;
begin
  AssertFuncLoaded(@Lept.IO.ReadHeaderWebP, 'readHeaderWebP');
end;

procedure Test_readHeaderMemWebP;
begin
  AssertFuncLoaded(@Lept.IO.ReadHeaderMemWebP, 'readHeaderMemWebP');
end;

procedure Test_pixWriteWebP;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteWebP, 'pixWriteWebP');
end;

procedure Test_pixWriteStreamWebP;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteStreamWebP, 'pixWriteStreamWebP');
end;

procedure Test_pixWriteMemWebP;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteMemWebP, 'pixWriteMemWebP');
end;

procedure Test_l_jpegSetQuality;
begin
  AssertFuncLoaded(@Lept.IO.L_jpegSetQuality, 'l_jpegSetQuality');
end;

procedure Test_pixWriteDebug;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteDebug, 'pixWriteDebug');
end;

procedure Test_pixWrite;
begin
  AssertFuncLoaded(@Lept.IO.PixWrite, 'pixWrite');
end;

procedure Test_pixWriteAutoFormat;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteAutoFormat, 'pixWriteAutoFormat');
end;

procedure Test_pixWriteStream;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteStream, 'pixWriteStream');
end;

procedure Test_pixWriteImpliedFormat;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteImpliedFormat, 'pixWriteImpliedFormat');
end;

procedure Test_pixWriteMem;
begin
  AssertFuncLoaded(@Lept.IO.PixWriteMem, 'pixWriteMem');
end;

procedure Test_l_fileDisplay;
begin
  AssertFuncLoaded(@Lept.IO.L_fileDisplay, 'l_fileDisplay');
end;

procedure Test_pixDisplay;
begin
  AssertFuncLoaded(@Lept.IO.PixDisplay, 'pixDisplay');
end;

procedure Test_pixDisplayWithTitle;
begin
  AssertFuncLoaded(@Lept.IO.PixDisplayWithTitle, 'pixDisplayWithTitle');
end;

procedure Test_changeFormatForMissingLib;
begin
  AssertFuncLoaded(@Lept.IO.ChangeFormatForMissingLib, 'changeFormatForMissingLib');
end;

procedure Test_pixDisplayWrite;
begin
  AssertFuncLoaded(@Lept.IO.PixDisplayWrite, 'pixDisplayWrite');
end;

procedure Test_Func_pixWriteReadMemJpeg;
var
  P, R: Pointer;
  Data: Pointer;
  Size: NativeUInt;
begin
  P := CreateGrayPix(64, 48);
  Data := nil;
  Size := 0;
  AssertEqualsInt(0, Lept.IO.PixWriteMemJpeg(@Data, @Size, P, 75, 0),
    'writeMemJpeg returns 0 on success');
  AssertNotNil(Data, 'writeMemJpeg filled the buffer pointer');
  AssertTrue(Size > 0, 'writeMemJpeg size > 0');
  R := Lept.IO.PixReadMemJpeg(Data, Size, 0, 1, nil, 0);
  AssertNotNil(R, 'readMemJpeg returned a Pix');
  AssertEqualsInt(64, Lept.Pix.PixGetWidth(R), 'jpeg width roundtrip');
  AssertEqualsInt(48, Lept.Pix.PixGetHeight(R), 'jpeg height roundtrip');
  Lept.Pix.Lept_free(Data);
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

procedure Test_Func_pixReadMemJpegRefusesGarbage;
var
  Junk: array[0..7] of Byte;
  R: Pointer;
begin
  Junk[0] := 1;
  Junk[1] := 2;
  Junk[2] := 3;
  Junk[3] := 4;
  Junk[4] := 5;
  Junk[5] := 6;
  Junk[6] := 7;
  Junk[7] := 8;
  R := Lept.IO.PixReadMemJpeg(@Junk[0], SizeOf(Junk), 0, 1, nil, 0);
  AssertNil(R, 'readMemJpeg refuses non-JPEG bytes');
end;

procedure Test_Func_pixWriteReadMemPng;
var
  P, R: Pointer;
  Data: Pointer;
  Size: NativeUInt;
begin
  P := CreateColorPix(80, 60);
  Lept.Pix.PixSetPixel(P, 10, 10, $FF0000FF);
  Data := nil;
  Size := 0;
  AssertEqualsInt(0, Lept.IO.PixWriteMem(@Data, @Size, P, 3), 'writeMem');
  AssertNotNil(Data, 'data ptr');
  AssertTrue(Size > 0, 'size > 0');
  R := Lept.IO.PixReadMem(Data, Size);
  AssertNotNil(R, 'readMem');
  AssertEqualsInt(80, Lept.Pix.PixGetWidth(R), 'width roundtrip');
  AssertEqualsInt(60, Lept.Pix.PixGetHeight(R), 'height roundtrip');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

procedure Test_Func_pixWriteReadMemBmp;
var
  P, R: Pointer;
  Data: Pointer;
  Size: NativeUInt;
begin
  P := CreateGrayPix(100, 75);
  Data := nil;
  Size := 0;
  AssertEqualsInt(0, Lept.IO.PixWriteMem(@Data, @Size, P, 4), 'writeMem bmp');
  R := Lept.IO.PixReadMem(Data, Size);
  AssertNotNil(R, 'readMem bmp');
  AssertEqualsInt(100, Lept.Pix.PixGetWidth(R), 'width');
  AssertEqualsInt(75, Lept.Pix.PixGetHeight(R), 'height');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

procedure Test_Func_pixWriteReadFile;
var
  P, R: Pointer;
  Path: string;
begin
  P := CreateColorPix(50, 30);
  Path := GetTempFilePath('.png');
  AssertEqualsInt(0, Lept.IO.PixWrite(PAnsiChar(AnsiString(Path)), P, 3), 'pixWrite');
  R := Lept.IO.PixRead(PAnsiChar(AnsiString(Path)));
  AssertNotNil(R, 'pixRead');
  AssertEqualsInt(50, Lept.Pix.PixGetWidth(R), 'width');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
  DeleteFile(Path);
end;

procedure Test_Func_pixReadHeader;
var
  P: Pointer;
  Path: string;
  W, H, D, Format: Integer;
  Bps, Spp: Integer;
begin
  P := CreateGrayPix(120, 90);
  Path := GetTempFilePath('.png');
  Lept.IO.PixWrite(PAnsiChar(AnsiString(Path)), P, 3);
  W := 0;
  H := 0;
  D := 0;
  Format := 0;
  Bps := 0;
  Spp := 0;
  Lept.IO.PixReadHeader(PAnsiChar(AnsiString(Path)), @Format, @W, @H, @Bps, @Spp, nil);
  AssertEqualsInt(120, W, 'header width');
  AssertEqualsInt(90, H, 'header height');
  SafePixDestroy(P);
  DeleteFile(Path);
end;

initialization
  RegisterTest('IO', 'pixReadStreamBmp', @Test_pixReadStreamBmp, []);
  RegisterTest('IO', 'pixReadMemBmp', @Test_pixReadMemBmp, []);
  RegisterTest('IO', 'pixWriteStreamBmp', @Test_pixWriteStreamBmp, []);
  RegisterTest('IO', 'pixWriteMemBmp', @Test_pixWriteMemBmp, []);
  RegisterTest('IO', 'pixDisplayDiff', @Test_pixDisplayDiff, []);
  RegisterTest('IO', 'pixDisplayDiffBinary', @Test_pixDisplayDiffBinary, []);
  RegisterTest('IO', 'l_compressGrayHistograms', @Test_l_compressGrayHistograms, []);
  RegisterTest('IO', 'l_uncompressGrayHistograms', @Test_l_uncompressGrayHistograms, []);
  RegisterTest('IO', 'pixReadStreamGif', @Test_pixReadStreamGif, []);
  RegisterTest('IO', 'pixReadMemGif', @Test_pixReadMemGif, []);
  RegisterTest('IO', 'pixWriteStreamGif', @Test_pixWriteStreamGif, []);
  RegisterTest('IO', 'pixWriteMemGif', @Test_pixWriteMemGif, []);
  RegisterTest('IO', 'readHeaderJp2k', @Test_readHeaderJp2k, []);
  RegisterTest('IO', 'freadHeaderJp2k', @Test_freadHeaderJp2k, []);
  RegisterTest('IO', 'readHeaderMemJp2k', @Test_readHeaderMemJp2k, []);
  RegisterTest('IO', 'pixReadJp2k', @Test_pixReadJp2k, []);
  RegisterTest('IO', 'pixReadStreamJp2k', @Test_pixReadStreamJp2k, []);
  RegisterTest('IO', 'pixWriteJp2k', @Test_pixWriteJp2k, []);
  RegisterTest('IO', 'pixWriteStreamJp2k', @Test_pixWriteStreamJp2k, []);
  RegisterTest('IO', 'pixReadMemJp2k', @Test_pixReadMemJp2k, []);
  RegisterTest('IO', 'pixWriteMemJp2k', @Test_pixWriteMemJp2k, []);
  RegisterTest('IO', 'pixReadJpeg', @Test_pixReadJpeg, []);
  RegisterTest('IO', 'pixReadStreamJpeg', @Test_pixReadStreamJpeg, []);
  RegisterTest('IO', 'readHeaderJpeg', @Test_readHeaderJpeg, []);
  RegisterTest('IO', 'freadHeaderJpeg', @Test_freadHeaderJpeg, []);
  RegisterTest('IO', 'pixWriteJpeg', @Test_pixWriteJpeg, []);
  RegisterTest('IO', 'pixWriteStreamJpeg', @Test_pixWriteStreamJpeg, []);
  RegisterTest('IO', 'pixReadMemJpeg', @Test_pixReadMemJpeg, []);
  RegisterTest('IO', 'readHeaderMemJpeg', @Test_readHeaderMemJpeg, []);
  RegisterTest('IO', 'pixWriteMemJpeg', @Test_pixWriteMemJpeg, []);
  RegisterTest('IO', 'pixDisplayMatchedPattern', @Test_pixDisplayMatchedPattern, []);
  RegisterTest('IO', 'convertToPdf', @Test_convertToPdf, []);
  RegisterTest('IO', 'convertToPdfData', @Test_convertToPdfData, []);
  RegisterTest('IO', 'pixWriteStreamPdf', @Test_pixWriteStreamPdf, []);
  RegisterTest('IO', 'pixWriteMemPdf', @Test_pixWriteMemPdf, []);
  RegisterTest('IO', 'convertToPdfSegmented', @Test_convertToPdfSegmented, []);
  RegisterTest('IO', 'convertToPdfDataSegmented', @Test_convertToPdfDataSegmented, []);
  RegisterTest('IO', 'l_generateCIDataForPdf', @Test_l_generateCIDataForPdf, []);
  RegisterTest('IO', 'l_generateCIData', @Test_l_generateCIData, []);
  RegisterTest('IO', 'l_pdfSetG4ImageMask', @Test_l_pdfSetG4ImageMask, []);
  RegisterTest('IO', 'l_pdfSetDateAndVersion', @Test_l_pdfSetDateAndVersion, []);
  RegisterTest('IO', 'pixDisplayLayersRGBA', @Test_pixDisplayLayersRGBA, []);
  RegisterTest('IO', 'pixDisplaySelectedPixels', @Test_pixDisplaySelectedPixels, []);
  RegisterTest('IO', 'pixDisplayColorArray', @Test_pixDisplayColorArray, []);
  RegisterTest('IO', 'pixReadStreamPng', @Test_pixReadStreamPng, []);
  RegisterTest('IO', 'readHeaderPng', @Test_readHeaderPng, []);
  RegisterTest('IO', 'freadHeaderPng', @Test_freadHeaderPng, []);
  RegisterTest('IO', 'readHeaderMemPng', @Test_readHeaderMemPng, []);
  RegisterTest('IO', 'pixWritePng', @Test_pixWritePng, []);
  RegisterTest('IO', 'pixWriteStreamPng', @Test_pixWriteStreamPng, []);
  RegisterTest('IO', 'l_pngSetReadStrip16To8', @Test_l_pngSetReadStrip16To8, []);
  RegisterTest('IO', 'pixReadMemPng', @Test_pixReadMemPng, []);
  RegisterTest('IO', 'pixWriteMemPng', @Test_pixWriteMemPng, []);
  RegisterTest('IO', 'pixReadStreamPnm', @Test_pixReadStreamPnm, []);
  RegisterTest('IO', 'readHeaderPnm', @Test_readHeaderPnm, []);
  RegisterTest('IO', 'freadHeaderPnm', @Test_freadHeaderPnm, []);
  RegisterTest('IO', 'pixWriteStreamPnm', @Test_pixWriteStreamPnm, []);
  RegisterTest('IO', 'pixWriteStreamAsciiPnm', @Test_pixWriteStreamAsciiPnm, []);
  RegisterTest('IO', 'pixWriteStreamPam', @Test_pixWriteStreamPam, []);
  RegisterTest('IO', 'pixReadMemPnm', @Test_pixReadMemPnm, []);
  RegisterTest('IO', 'readHeaderMemPnm', @Test_readHeaderMemPnm, []);
  RegisterTest('IO', 'pixWriteMemPnm', @Test_pixWriteMemPnm, []);
  RegisterTest('IO', 'pixWriteMemPam', @Test_pixWriteMemPam, []);
  RegisterTest('IO', 'pixWriteSegmentedPageToPS', @Test_pixWriteSegmentedPageToPS, []);
  RegisterTest('IO', 'pixWriteMixedToPS', @Test_pixWriteMixedToPS, []);
  RegisterTest('IO', 'pixWriteCompressedToPS', @Test_pixWriteCompressedToPS, []);
  RegisterTest('IO', 'pixWritePSEmbed', @Test_pixWritePSEmbed, []);
  RegisterTest('IO', 'pixWriteStreamPS', @Test_pixWriteStreamPS, []);
  RegisterTest('IO', 'pixWriteStringPS', @Test_pixWriteStringPS, []);
  RegisterTest('IO', 'pixWriteMemPS', @Test_pixWriteMemPS, []);
  RegisterTest('IO', 'pixDisplayPta', @Test_pixDisplayPta, []);
  RegisterTest('IO', 'pixDisplayPtaaPattern', @Test_pixDisplayPtaaPattern, []);
  RegisterTest('IO', 'pixDisplayPtaPattern', @Test_pixDisplayPtaPattern, []);
  RegisterTest('IO', 'pixDisplayPtaa', @Test_pixDisplayPtaa, []);
  RegisterTest('IO', 'pixReadBarcodes', @Test_pixReadBarcodes, []);
  RegisterTest('IO', 'pixReadBarcodeWidths', @Test_pixReadBarcodeWidths, []);
  RegisterTest('IO', 'pixRead', @Test_pixRead, []);
  RegisterTest('IO', 'pixReadWithHint', @Test_pixReadWithHint, []);
  RegisterTest('IO', 'pixReadIndexed', @Test_pixReadIndexed, []);
  RegisterTest('IO', 'pixReadStream', @Test_pixReadStream, []);
  RegisterTest('IO', 'pixReadHeader', @Test_pixReadHeader, []);
  RegisterTest('IO', 'findFileFormat', @Test_findFileFormat, []);
  RegisterTest('IO', 'findFileFormatStream', @Test_findFileFormatStream, []);
  RegisterTest('IO', 'findFileFormatBuffer', @Test_findFileFormatBuffer, []);
  RegisterTest('IO', 'pixReadMem', @Test_pixReadMem, []);
  RegisterTest('IO', 'pixReadHeaderMem', @Test_pixReadHeaderMem, []);
  RegisterTest('IO', 'pixDisplayHitMissSel', @Test_pixDisplayHitMissSel, []);
  RegisterTest('IO', 'pixReadStreamSpix', @Test_pixReadStreamSpix, []);
  RegisterTest('IO', 'readHeaderSpix', @Test_readHeaderSpix, []);
  RegisterTest('IO', 'freadHeaderSpix', @Test_freadHeaderSpix, []);
  RegisterTest('IO', 'sreadHeaderSpix', @Test_sreadHeaderSpix, []);
  RegisterTest('IO', 'pixWriteStreamSpix', @Test_pixWriteStreamSpix, []);
  RegisterTest('IO', 'pixReadMemSpix', @Test_pixReadMemSpix, []);
  RegisterTest('IO', 'pixWriteMemSpix', @Test_pixWriteMemSpix, []);
  RegisterTest('IO', 'pixReadTiff', @Test_pixReadTiff, []);
  RegisterTest('IO', 'pixReadStreamTiff', @Test_pixReadStreamTiff, []);
  RegisterTest('IO', 'pixWriteTiff', @Test_pixWriteTiff, []);
  RegisterTest('IO', 'pixWriteTiffCustom', @Test_pixWriteTiffCustom, []);
  RegisterTest('IO', 'pixWriteStreamTiff', @Test_pixWriteStreamTiff, []);
  RegisterTest('IO', 'pixWriteStreamTiffWA', @Test_pixWriteStreamTiffWA, []);
  RegisterTest('IO', 'pixReadFromMultipageTiff', @Test_pixReadFromMultipageTiff, []);
  RegisterTest('IO', 'readHeaderTiff', @Test_readHeaderTiff, []);
  RegisterTest('IO', 'freadHeaderTiff', @Test_freadHeaderTiff, []);
  RegisterTest('IO', 'readHeaderMemTiff', @Test_readHeaderMemTiff, []);
  RegisterTest('IO', 'pixReadMemTiff', @Test_pixReadMemTiff, []);
  RegisterTest('IO', 'pixReadMemFromMultipageTiff', @Test_pixReadMemFromMultipageTiff, []);
  RegisterTest('IO', 'pixWriteMemTiff', @Test_pixWriteMemTiff, []);
  RegisterTest('IO', 'pixWriteMemTiffCustom', @Test_pixWriteMemTiffCustom, []);
  RegisterTest('IO', 'pixReadStreamWebP', @Test_pixReadStreamWebP, []);
  RegisterTest('IO', 'pixReadMemWebP', @Test_pixReadMemWebP, []);
  RegisterTest('IO', 'readHeaderWebP', @Test_readHeaderWebP, []);
  RegisterTest('IO', 'readHeaderMemWebP', @Test_readHeaderMemWebP, []);
  RegisterTest('IO', 'pixWriteWebP', @Test_pixWriteWebP, []);
  RegisterTest('IO', 'pixWriteStreamWebP', @Test_pixWriteStreamWebP, []);
  RegisterTest('IO', 'pixWriteMemWebP', @Test_pixWriteMemWebP, []);
  RegisterTest('IO', 'l_jpegSetQuality', @Test_l_jpegSetQuality, []);
  RegisterTest('IO', 'pixWriteDebug', @Test_pixWriteDebug, []);
  RegisterTest('IO', 'pixWrite', @Test_pixWrite, []);
  RegisterTest('IO', 'pixWriteAutoFormat', @Test_pixWriteAutoFormat, []);
  RegisterTest('IO', 'pixWriteStream', @Test_pixWriteStream, []);
  RegisterTest('IO', 'pixWriteImpliedFormat', @Test_pixWriteImpliedFormat, []);
  RegisterTest('IO', 'pixWriteMem', @Test_pixWriteMem, []);
  RegisterTest('IO', 'l_fileDisplay', @Test_l_fileDisplay, []);
  RegisterTest('IO', 'pixDisplay', @Test_pixDisplay, []);
  RegisterTest('IO', 'pixDisplayWithTitle', @Test_pixDisplayWithTitle, []);
  RegisterTest('IO', 'changeFormatForMissingLib', @Test_changeFormatForMissingLib, []);
  RegisterTest('IO', 'pixDisplayWrite', @Test_pixDisplayWrite, []);

  RegisterTest('IO', 'Func_pixWriteReadMemJpeg', @Test_Func_pixWriteReadMemJpeg, []);

  RegisterTest('IO', 'Func_pixReadMemJpegRefusesGarbage',
    @Test_Func_pixReadMemJpegRefusesGarbage, [ttKnownLibraryDefect]);
  RegisterTest('IO', 'Func_pixWriteReadMemPng', @Test_Func_pixWriteReadMemPng, []);
  RegisterTest('IO', 'Func_pixWriteReadMemBmp', @Test_Func_pixWriteReadMemBmp, []);
  RegisterTest('IO', 'Func_pixWriteReadFile', @Test_Func_pixWriteReadFile, []);
  RegisterTest('IO', 'Func_pixReadHeader', @Test_Func_pixReadHeader, []);

end.
