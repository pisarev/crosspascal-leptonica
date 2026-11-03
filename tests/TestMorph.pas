{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestMorph;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_pixThinConnected;
begin
  AssertFuncLoaded(@Lept.Morph.PixThinConnected, 'pixThinConnected');
end;

procedure Test_pixThinConnectedBySet;
begin
  AssertFuncLoaded(@Lept.Morph.PixThinConnectedBySet, 'pixThinConnectedBySet');
end;

procedure Test_pixSeedfillBB;
begin
  AssertFuncLoaded(@Lept.Morph.PixSeedfillBB, 'pixSeedfillBB');
end;

procedure Test_pixSeedfill4BB;
begin
  AssertFuncLoaded(@Lept.Morph.PixSeedfill4BB, 'pixSeedfill4BB');
end;

procedure Test_pixSeedfill8BB;
begin
  AssertFuncLoaded(@Lept.Morph.PixSeedfill8BB, 'pixSeedfill8BB');
end;

procedure Test_pixSeedfill;
begin
  AssertFuncLoaded(@Lept.Morph.PixSeedfill, 'pixSeedfill');
end;

procedure Test_pixSeedfill4;
begin
  AssertFuncLoaded(@Lept.Morph.PixSeedfill4, 'pixSeedfill4');
end;

procedure Test_pixSeedfill8;
begin
  AssertFuncLoaded(@Lept.Morph.PixSeedfill8, 'pixSeedfill8');
end;

procedure Test_pixMorphDwa_2;
begin
  AssertFuncLoaded(@Lept.Morph.PixMorphDwa_2, 'pixMorphDwa_2');
end;

procedure Test_pixHMTDwa_1;
begin
  AssertFuncLoaded(@Lept.Morph.PixHMTDwa_1, 'pixHMTDwa_1');
end;

procedure Test_pixMorphDwa_1;
begin
  AssertFuncLoaded(@Lept.Morph.PixMorphDwa_1, 'pixMorphDwa_1');
end;

procedure Test_pixErodeGray;
begin
  AssertFuncLoaded(@Lept.Morph.PixErodeGray, 'pixErodeGray');
end;

procedure Test_pixDilateGray;
begin
  AssertFuncLoaded(@Lept.Morph.PixDilateGray, 'pixDilateGray');
end;

procedure Test_pixOpenGray;
begin
  AssertFuncLoaded(@Lept.Morph.PixOpenGray, 'pixOpenGray');
end;

procedure Test_pixCloseGray;
begin
  AssertFuncLoaded(@Lept.Morph.PixCloseGray, 'pixCloseGray');
end;

procedure Test_pixErodeGray3;
begin
  AssertFuncLoaded(@Lept.Morph.PixErodeGray3, 'pixErodeGray3');
end;

procedure Test_pixDilateGray3;
begin
  AssertFuncLoaded(@Lept.Morph.PixDilateGray3, 'pixDilateGray3');
end;

procedure Test_pixOpenGray3;
begin
  AssertFuncLoaded(@Lept.Morph.PixOpenGray3, 'pixOpenGray3');
end;

procedure Test_pixCloseGray3;
begin
  AssertFuncLoaded(@Lept.Morph.PixCloseGray3, 'pixCloseGray3');
end;

procedure Test_pixDilate;
begin
  AssertFuncLoaded(@Lept.Morph.PixDilate, 'pixDilate');
end;

procedure Test_pixErode;
begin
  AssertFuncLoaded(@Lept.Morph.PixErode, 'pixErode');
end;

procedure Test_pixHMT;
begin
  AssertFuncLoaded(@Lept.Morph.PixHMT, 'pixHMT');
end;

procedure Test_pixOpen;
begin
  AssertFuncLoaded(@Lept.Morph.PixOpen, 'pixOpen');
end;

procedure Test_pixCloseSafe;
begin
  AssertFuncLoaded(@Lept.Morph.PixCloseSafe, 'pixCloseSafe');
end;

procedure Test_pixCloseGeneralized;
begin
  AssertFuncLoaded(@Lept.Morph.PixCloseGeneralized, 'pixCloseGeneralized');
end;

procedure Test_pixDilateBrick;
begin
  AssertFuncLoaded(@Lept.Morph.PixDilateBrick, 'pixDilateBrick');
end;

procedure Test_pixErodeBrick;
begin
  AssertFuncLoaded(@Lept.Morph.PixErodeBrick, 'pixErodeBrick');
end;

procedure Test_pixOpenBrick;
begin
  AssertFuncLoaded(@Lept.Morph.PixOpenBrick, 'pixOpenBrick');
end;

procedure Test_pixCloseBrick;
begin
  AssertFuncLoaded(@Lept.Morph.PixCloseBrick, 'pixCloseBrick');
end;

procedure Test_pixCloseSafeBrick;
begin
  AssertFuncLoaded(@Lept.Morph.PixCloseSafeBrick, 'pixCloseSafeBrick');
end;

procedure Test_pixDilateCompBrick;
begin
  AssertFuncLoaded(@Lept.Morph.PixDilateCompBrick, 'pixDilateCompBrick');
end;

procedure Test_pixErodeCompBrick;
begin
  AssertFuncLoaded(@Lept.Morph.PixErodeCompBrick, 'pixErodeCompBrick');
end;

procedure Test_pixOpenCompBrick;
begin
  AssertFuncLoaded(@Lept.Morph.PixOpenCompBrick, 'pixOpenCompBrick');
end;

procedure Test_pixCloseCompBrick;
begin
  AssertFuncLoaded(@Lept.Morph.PixCloseCompBrick, 'pixCloseCompBrick');
end;

procedure Test_pixCloseSafeCompBrick;
begin
  AssertFuncLoaded(@Lept.Morph.PixCloseSafeCompBrick, 'pixCloseSafeCompBrick');
end;

procedure Test_resetMorphBoundaryCondition;
begin
  AssertFuncLoaded(@Lept.Morph.ResetMorphBoundaryCondition, 'resetMorphBoundaryCondition');
end;

procedure Test_pixMorphSequenceMasked;
begin
  AssertFuncLoaded(@Lept.Morph.PixMorphSequenceMasked, 'pixMorphSequenceMasked');
end;

procedure Test_pixMorphSequenceByComponent;
begin
  AssertFuncLoaded(@Lept.Morph.PixMorphSequenceByComponent, 'pixMorphSequenceByComponent');
end;

procedure Test_pixMorphSequenceByRegion;
begin
  AssertFuncLoaded(@Lept.Morph.PixMorphSequenceByRegion, 'pixMorphSequenceByRegion');
end;

procedure Test_pixSeedfillMorph;
begin
  AssertFuncLoaded(@Lept.Morph.PixSeedfillMorph, 'pixSeedfillMorph');
end;

procedure Test_pixTophat;
begin
  AssertFuncLoaded(@Lept.Morph.PixTophat, 'pixTophat');
end;

procedure Test_pixHDome;
begin
  AssertFuncLoaded(@Lept.Morph.PixHDome, 'pixHDome');
end;

procedure Test_pixMorphGradient;
begin
  AssertFuncLoaded(@Lept.Morph.PixMorphGradient, 'pixMorphGradient');
end;

procedure Test_pixDilateBrickDwa;
begin
  AssertFuncLoaded(@Lept.Morph.PixDilateBrickDwa, 'pixDilateBrickDwa');
end;

procedure Test_pixErodeBrickDwa;
begin
  AssertFuncLoaded(@Lept.Morph.PixErodeBrickDwa, 'pixErodeBrickDwa');
end;

procedure Test_pixOpenBrickDwa;
begin
  AssertFuncLoaded(@Lept.Morph.PixOpenBrickDwa, 'pixOpenBrickDwa');
end;

procedure Test_pixCloseBrickDwa;
begin
  AssertFuncLoaded(@Lept.Morph.PixCloseBrickDwa, 'pixCloseBrickDwa');
end;

procedure Test_pixDilateCompBrickDwa;
begin
  AssertFuncLoaded(@Lept.Morph.PixDilateCompBrickDwa, 'pixDilateCompBrickDwa');
end;

procedure Test_pixErodeCompBrickDwa;
begin
  AssertFuncLoaded(@Lept.Morph.PixErodeCompBrickDwa, 'pixErodeCompBrickDwa');
end;

procedure Test_pixOpenCompBrickDwa;
begin
  AssertFuncLoaded(@Lept.Morph.PixOpenCompBrickDwa, 'pixOpenCompBrickDwa');
end;

procedure Test_pixCloseCompBrickDwa;
begin
  AssertFuncLoaded(@Lept.Morph.PixCloseCompBrickDwa, 'pixCloseCompBrickDwa');
end;

procedure Test_pixDilateCompBrickExtendDwa;
begin
  AssertFuncLoaded(@Lept.Morph.PixDilateCompBrickExtendDwa, 'pixDilateCompBrickExtendDwa');
end;

procedure Test_pixErodeCompBrickExtendDwa;
begin
  AssertFuncLoaded(@Lept.Morph.PixErodeCompBrickExtendDwa, 'pixErodeCompBrickExtendDwa');
end;

procedure Test_pixOpenCompBrickExtendDwa;
begin
  AssertFuncLoaded(@Lept.Morph.PixOpenCompBrickExtendDwa, 'pixOpenCompBrickExtendDwa');
end;

procedure Test_pixCloseCompBrickExtendDwa;
begin
  AssertFuncLoaded(@Lept.Morph.PixCloseCompBrickExtendDwa, 'pixCloseCompBrickExtendDwa');
end;

procedure Test_pixMorphSequence;
begin
  AssertFuncLoaded(@Lept.Morph.PixMorphSequence, 'pixMorphSequence');
end;

procedure Test_pixMorphCompSequence;
begin
  AssertFuncLoaded(@Lept.Morph.PixMorphCompSequence, 'pixMorphCompSequence');
end;

procedure Test_pixMorphSequenceDwa;
begin
  AssertFuncLoaded(@Lept.Morph.PixMorphSequenceDwa, 'pixMorphSequenceDwa');
end;

procedure Test_pixMorphCompSequenceDwa;
begin
  AssertFuncLoaded(@Lept.Morph.PixMorphCompSequenceDwa, 'pixMorphCompSequenceDwa');
end;

procedure Test_pixGrayMorphSequence;
begin
  AssertFuncLoaded(@Lept.Morph.PixGrayMorphSequence, 'pixGrayMorphSequence');
end;

procedure Test_pixStrokeWidthTransform;
begin
  AssertFuncLoaded(@Lept.Morph.PixStrokeWidthTransform, 'pixStrokeWidthTransform');
end;

procedure Test_pixRunlengthTransform;
begin
  AssertFuncLoaded(@Lept.Morph.PixRunlengthTransform, 'pixRunlengthTransform');
end;

procedure Test_pixSeedfillBinary;
begin
  AssertFuncLoaded(@Lept.Morph.PixSeedfillBinary, 'pixSeedfillBinary');
end;

procedure Test_pixSeedfillBinaryRestricted;
begin
  AssertFuncLoaded(@Lept.Morph.PixSeedfillBinaryRestricted, 'pixSeedfillBinaryRestricted');
end;

procedure Test_pixHolesByFilling;
begin
  AssertFuncLoaded(@Lept.Morph.PixHolesByFilling, 'pixHolesByFilling');
end;

procedure Test_pixSeedfillGray;
begin
  AssertFuncLoaded(@Lept.Morph.PixSeedfillGray, 'pixSeedfillGray');
end;

procedure Test_pixSeedfillGrayInv;
begin
  AssertFuncLoaded(@Lept.Morph.PixSeedfillGrayInv, 'pixSeedfillGrayInv');
end;

procedure Test_pixSeedfillGraySimple;
begin
  AssertFuncLoaded(@Lept.Morph.PixSeedfillGraySimple, 'pixSeedfillGraySimple');
end;

procedure Test_pixSeedfillGrayInvSimple;
begin
  AssertFuncLoaded(@Lept.Morph.PixSeedfillGrayInvSimple, 'pixSeedfillGrayInvSimple');
end;

procedure Test_pixSeedfillGrayBasin;
begin
  AssertFuncLoaded(@Lept.Morph.PixSeedfillGrayBasin, 'pixSeedfillGrayBasin');
end;

procedure Test_pixDistanceFunction;
begin
  AssertFuncLoaded(@Lept.Morph.PixDistanceFunction, 'pixDistanceFunction');
end;

procedure Test_pixSeedspread;
begin
  AssertFuncLoaded(@Lept.Morph.PixSeedspread, 'pixSeedspread');
end;

procedure Test_pixLocalExtrema;
begin
  AssertFuncLoaded(@Lept.Morph.PixLocalExtrema, 'pixLocalExtrema');
end;

procedure Test_pixSelectedLocalExtrema;
begin
  AssertFuncLoaded(@Lept.Morph.PixSelectedLocalExtrema, 'pixSelectedLocalExtrema');
end;

procedure Test_Func_pixErodeBrick;
var
  P, R: Pointer;
begin
  P := CreateBinaryPix(100, 80);
  R := Lept.Morph.PixErodeBrick(nil, P, 3, 3);
  AssertNotNil(R, 'erodeBrick');
  AssertEqualsInt(100, Lept.Pix.PixGetWidth(R), 'width');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

procedure Test_Func_pixDilateBrick;
var
  P, R: Pointer;
begin
  P := CreateBinaryPix(100, 80);
  R := Lept.Morph.PixDilateBrick(nil, P, 3, 3);
  AssertNotNil(R, 'dilateBrick');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

procedure Test_Func_pixOpenBrick;
var
  P, R: Pointer;
begin
  P := CreateBinaryPix(100, 80);
  R := Lept.Morph.PixOpenBrick(nil, P, 3, 3);
  AssertNotNil(R, 'openBrick');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

procedure Test_Func_pixCloseBrick;
var
  P, R: Pointer;
begin
  P := CreateBinaryPix(100, 80);
  R := Lept.Morph.PixCloseBrick(nil, P, 3, 3);
  AssertNotNil(R, 'closeBrick');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

procedure Test_Func_pixErodeGray;
var
  P, R: Pointer;
begin
  P := CreateGrayPix(100, 80);
  R := Lept.Morph.PixErodeGray(P, 3, 3);
  AssertNotNil(R, 'erodeGray');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

procedure Test_Func_pixDilateGray;
var
  P, R: Pointer;
begin
  P := CreateGrayPix(100, 80);
  R := Lept.Morph.PixDilateGray(P, 3, 3);
  AssertNotNil(R, 'dilateGray');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

procedure Test_Func_pixHolesByFilling;
var
  P, R: Pointer;
begin
  P := CreateBinaryPix(100, 100);
  Lept.Pix.PixSetAll(P);
  R := Lept.Morph.PixHolesByFilling(P, 4);
  AssertNotNil(R, 'holesByFilling');
  Lept.Pix.PixDestroy(@R);
  SafePixDestroy(P);
end;

initialization
  RegisterTest('Morph', 'pixThinConnected', @Test_pixThinConnected, []);
  RegisterTest('Morph', 'pixThinConnectedBySet', @Test_pixThinConnectedBySet, []);
  RegisterTest('Morph', 'pixSeedfillBB', @Test_pixSeedfillBB, []);
  RegisterTest('Morph', 'pixSeedfill4BB', @Test_pixSeedfill4BB, []);
  RegisterTest('Morph', 'pixSeedfill8BB', @Test_pixSeedfill8BB, []);
  RegisterTest('Morph', 'pixSeedfill', @Test_pixSeedfill, []);
  RegisterTest('Morph', 'pixSeedfill4', @Test_pixSeedfill4, []);
  RegisterTest('Morph', 'pixSeedfill8', @Test_pixSeedfill8, []);
  RegisterTest('Morph', 'pixMorphDwa_2', @Test_pixMorphDwa_2, []);
  RegisterTest('Morph', 'pixHMTDwa_1', @Test_pixHMTDwa_1, []);
  RegisterTest('Morph', 'pixMorphDwa_1', @Test_pixMorphDwa_1, []);
  RegisterTest('Morph', 'pixErodeGray', @Test_pixErodeGray, []);
  RegisterTest('Morph', 'pixDilateGray', @Test_pixDilateGray, []);
  RegisterTest('Morph', 'pixOpenGray', @Test_pixOpenGray, []);
  RegisterTest('Morph', 'pixCloseGray', @Test_pixCloseGray, []);
  RegisterTest('Morph', 'pixErodeGray3', @Test_pixErodeGray3, []);
  RegisterTest('Morph', 'pixDilateGray3', @Test_pixDilateGray3, []);
  RegisterTest('Morph', 'pixOpenGray3', @Test_pixOpenGray3, []);
  RegisterTest('Morph', 'pixCloseGray3', @Test_pixCloseGray3, []);
  RegisterTest('Morph', 'pixDilate', @Test_pixDilate, []);
  RegisterTest('Morph', 'pixErode', @Test_pixErode, []);
  RegisterTest('Morph', 'pixHMT', @Test_pixHMT, []);
  RegisterTest('Morph', 'pixOpen', @Test_pixOpen, []);
  RegisterTest('Morph', 'pixCloseSafe', @Test_pixCloseSafe, []);
  RegisterTest('Morph', 'pixCloseGeneralized', @Test_pixCloseGeneralized, []);
  RegisterTest('Morph', 'pixDilateBrick', @Test_pixDilateBrick, []);
  RegisterTest('Morph', 'pixErodeBrick', @Test_pixErodeBrick, []);
  RegisterTest('Morph', 'pixOpenBrick', @Test_pixOpenBrick, []);
  RegisterTest('Morph', 'pixCloseBrick', @Test_pixCloseBrick, []);
  RegisterTest('Morph', 'pixCloseSafeBrick', @Test_pixCloseSafeBrick, []);
  RegisterTest('Morph', 'pixDilateCompBrick', @Test_pixDilateCompBrick, []);
  RegisterTest('Morph', 'pixErodeCompBrick', @Test_pixErodeCompBrick, []);
  RegisterTest('Morph', 'pixOpenCompBrick', @Test_pixOpenCompBrick, []);
  RegisterTest('Morph', 'pixCloseCompBrick', @Test_pixCloseCompBrick, []);
  RegisterTest('Morph', 'pixCloseSafeCompBrick', @Test_pixCloseSafeCompBrick, []);
  RegisterTest('Morph', 'resetMorphBoundaryCondition', @Test_resetMorphBoundaryCondition, []);
  RegisterTest('Morph', 'pixMorphSequenceMasked', @Test_pixMorphSequenceMasked, []);
  RegisterTest('Morph', 'pixMorphSequenceByComponent', @Test_pixMorphSequenceByComponent, []);
  RegisterTest('Morph', 'pixMorphSequenceByRegion', @Test_pixMorphSequenceByRegion, []);
  RegisterTest('Morph', 'pixSeedfillMorph', @Test_pixSeedfillMorph, []);
  RegisterTest('Morph', 'pixTophat', @Test_pixTophat, []);
  RegisterTest('Morph', 'pixHDome', @Test_pixHDome, []);
  RegisterTest('Morph', 'pixMorphGradient', @Test_pixMorphGradient, []);
  RegisterTest('Morph', 'pixDilateBrickDwa', @Test_pixDilateBrickDwa, []);
  RegisterTest('Morph', 'pixErodeBrickDwa', @Test_pixErodeBrickDwa, []);
  RegisterTest('Morph', 'pixOpenBrickDwa', @Test_pixOpenBrickDwa, []);
  RegisterTest('Morph', 'pixCloseBrickDwa', @Test_pixCloseBrickDwa, []);
  RegisterTest('Morph', 'pixDilateCompBrickDwa', @Test_pixDilateCompBrickDwa, []);
  RegisterTest('Morph', 'pixErodeCompBrickDwa', @Test_pixErodeCompBrickDwa, []);
  RegisterTest('Morph', 'pixOpenCompBrickDwa', @Test_pixOpenCompBrickDwa, []);
  RegisterTest('Morph', 'pixCloseCompBrickDwa', @Test_pixCloseCompBrickDwa, []);
  RegisterTest('Morph', 'pixDilateCompBrickExtendDwa', @Test_pixDilateCompBrickExtendDwa, []);
  RegisterTest('Morph', 'pixErodeCompBrickExtendDwa', @Test_pixErodeCompBrickExtendDwa, []);
  RegisterTest('Morph', 'pixOpenCompBrickExtendDwa', @Test_pixOpenCompBrickExtendDwa, []);
  RegisterTest('Morph', 'pixCloseCompBrickExtendDwa', @Test_pixCloseCompBrickExtendDwa, []);
  RegisterTest('Morph', 'pixMorphSequence', @Test_pixMorphSequence, []);
  RegisterTest('Morph', 'pixMorphCompSequence', @Test_pixMorphCompSequence, []);
  RegisterTest('Morph', 'pixMorphSequenceDwa', @Test_pixMorphSequenceDwa, []);
  RegisterTest('Morph', 'pixMorphCompSequenceDwa', @Test_pixMorphCompSequenceDwa, []);
  RegisterTest('Morph', 'pixGrayMorphSequence', @Test_pixGrayMorphSequence, []);
  RegisterTest('Morph', 'pixStrokeWidthTransform', @Test_pixStrokeWidthTransform, []);
  RegisterTest('Morph', 'pixRunlengthTransform', @Test_pixRunlengthTransform, []);
  RegisterTest('Morph', 'pixSeedfillBinary', @Test_pixSeedfillBinary, []);
  RegisterTest('Morph', 'pixSeedfillBinaryRestricted', @Test_pixSeedfillBinaryRestricted, []);
  RegisterTest('Morph', 'pixHolesByFilling', @Test_pixHolesByFilling, []);
  RegisterTest('Morph', 'pixSeedfillGray', @Test_pixSeedfillGray, []);
  RegisterTest('Morph', 'pixSeedfillGrayInv', @Test_pixSeedfillGrayInv, []);
  RegisterTest('Morph', 'pixSeedfillGraySimple', @Test_pixSeedfillGraySimple, []);
  RegisterTest('Morph', 'pixSeedfillGrayInvSimple', @Test_pixSeedfillGrayInvSimple, []);
  RegisterTest('Morph', 'pixSeedfillGrayBasin', @Test_pixSeedfillGrayBasin, []);
  RegisterTest('Morph', 'pixDistanceFunction', @Test_pixDistanceFunction, []);
  RegisterTest('Morph', 'pixSeedspread', @Test_pixSeedspread, []);
  RegisterTest('Morph', 'pixLocalExtrema', @Test_pixLocalExtrema, []);
  RegisterTest('Morph', 'pixSelectedLocalExtrema', @Test_pixSelectedLocalExtrema, []);

  RegisterTest('Morph', 'Func_pixErodeBrick', @Test_Func_pixErodeBrick, []);
  RegisterTest('Morph', 'Func_pixDilateBrick', @Test_Func_pixDilateBrick, []);
  RegisterTest('Morph', 'Func_pixOpenBrick', @Test_Func_pixOpenBrick, []);
  RegisterTest('Morph', 'Func_pixCloseBrick', @Test_Func_pixCloseBrick, []);
  RegisterTest('Morph', 'Func_pixErodeGray', @Test_Func_pixErodeGray, []);
  RegisterTest('Morph', 'Func_pixDilateGray', @Test_Func_pixDilateGray, []);
  RegisterTest('Morph', 'Func_pixHolesByFilling', @Test_Func_pixHolesByFilling, []);

end.
