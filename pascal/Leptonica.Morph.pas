{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit Leptonica.Morph;

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
  TLeptMorphModule = record
  public
    type
      TPixThinConnected = function(pixs: PPix; &type: Integer; connectivity: Integer;
        maxiters: Integer): PPix; cdecl;
      TPixThinConnectedBySet = function(pixs: PPix; &type: Integer; sela: PSela;
        maxiters: Integer): PPix; cdecl;
      TPixSeedfillBB = function(pixs: PPix; stack: Pointer; x: Integer; y: Integer;
        connectivity: Integer): PBox; cdecl;
      TPixSeedfill4BB = function(pixs: PPix; stack: Pointer; x: Integer; y: Integer): PBox; cdecl;
      TPixSeedfill8BB = function(pixs: PPix; stack: Pointer; x: Integer; y: Integer): PBox; cdecl;
      TPixSeedfill = function(pixs: PPix; stack: Pointer; x: Integer; y: Integer;
        connectivity: Integer): Integer; cdecl;
      TPixSeedfill4 = function(pixs: PPix; stack: Pointer; x: Integer; y: Integer): Integer; cdecl;
      TPixSeedfill8 = function(pixs: PPix; stack: Pointer; x: Integer; y: Integer): Integer; cdecl;
      TPixMorphDwa_2 = function(pixd: PPix; pixs: PPix; operation: Integer; selname: PAnsiChar): PPix; cdecl;
      TPixHMTDwa_1 = function(pixd: PPix; pixs: PPix; selname: PAnsiChar): PPix; cdecl;
      TPixMorphDwa_1 = function(pixd: PPix; pixs: PPix; operation: Integer; selname: PAnsiChar): PPix; cdecl;
      TPixErodeGray = function(pixs: PPix; hsize: Integer; vsize: Integer): PPix; cdecl;
      TPixDilateGray = function(pixs: PPix; hsize: Integer; vsize: Integer): PPix; cdecl;
      TPixOpenGray = function(pixs: PPix; hsize: Integer; vsize: Integer): PPix; cdecl;
      TPixCloseGray = function(pixs: PPix; hsize: Integer; vsize: Integer): PPix; cdecl;
      TPixErodeGray3 = function(pixs: PPix; hsize: Integer; vsize: Integer): PPix; cdecl;
      TPixDilateGray3 = function(pixs: PPix; hsize: Integer; vsize: Integer): PPix; cdecl;
      TPixOpenGray3 = function(pixs: PPix; hsize: Integer; vsize: Integer): PPix; cdecl;
      TPixCloseGray3 = function(pixs: PPix; hsize: Integer; vsize: Integer): PPix; cdecl;
      TPixDilate = function(pixd: PPix; pixs: PPix; sel: PSel): PPix; cdecl;
      TPixErode = function(pixd: PPix; pixs: PPix; sel: PSel): PPix; cdecl;
      TPixHMT = function(pixd: PPix; pixs: PPix; sel: PSel): PPix; cdecl;
      TPixOpen = function(pixd: PPix; pixs: PPix; sel: PSel): PPix; cdecl;
      TPixCloseSafe = function(pixd: PPix; pixs: PPix; sel: PSel): PPix; cdecl;
      TPixCloseGeneralized = function(pixd: PPix; pixs: PPix; sel: PSel): PPix; cdecl;
      TPixDilateBrick = function(pixd: PPix; pixs: PPix; hsize: Integer; vsize: Integer): PPix; cdecl;
      TPixErodeBrick = function(pixd: PPix; pixs: PPix; hsize: Integer; vsize: Integer): PPix; cdecl;
      TPixOpenBrick = function(pixd: PPix; pixs: PPix; hsize: Integer; vsize: Integer): PPix; cdecl;
      TPixCloseBrick = function(pixd: PPix; pixs: PPix; hsize: Integer; vsize: Integer): PPix; cdecl;
      TPixCloseSafeBrick = function(pixd: PPix; pixs: PPix; hsize: Integer; vsize: Integer): PPix; cdecl;
      TPixDilateCompBrick = function(pixd: PPix; pixs: PPix; hsize: Integer; vsize: Integer): PPix; cdecl;
      TPixErodeCompBrick = function(pixd: PPix; pixs: PPix; hsize: Integer; vsize: Integer): PPix; cdecl;
      TPixOpenCompBrick = function(pixd: PPix; pixs: PPix; hsize: Integer; vsize: Integer): PPix; cdecl;
      TPixCloseCompBrick = function(pixd: PPix; pixs: PPix; hsize: Integer; vsize: Integer): PPix; cdecl;
      TPixCloseSafeCompBrick = function(pixd: PPix; pixs: PPix; hsize: Integer; vsize: Integer): PPix; cdecl;
      TResetMorphBoundaryCondition = procedure(bc: Integer); cdecl;
      TPixMorphSequenceMasked = function(pixs: PPix; pixm: PPix; sequence: PAnsiChar;
        dispsep: Integer): PPix; cdecl;
      TPixMorphSequenceByComponent = function(pixs: PPix; sequence: PAnsiChar; connectivity: Integer;
        minw: Integer; minh: Integer; pboxa: PPBoxa): PPix; cdecl;
      TPixMorphSequenceByRegion = function(pixs: PPix; pixm: PPix; sequence: PAnsiChar; connectivity: Integer;
        minw: Integer; minh: Integer; pboxa: PPBoxa): PPix; cdecl;
      TPixSeedfillMorph = function(pixs: PPix; pixm: PPix; maxiters: Integer;
        connectivity: Integer): PPix; cdecl;
      TPixTophat = function(pixs: PPix; hsize: Integer; vsize: Integer; &type: Integer): PPix; cdecl;
      TPixHDome = function(pixs: PPix; height: Integer; connectivity: Integer): PPix; cdecl;
      TPixMorphGradient = function(pixs: PPix; hsize: Integer; vsize: Integer;
        smoothing: Integer): PPix; cdecl;
      TPixDilateBrickDwa = function(pixd: PPix; pixs: PPix; hsize: Integer; vsize: Integer): PPix; cdecl;
      TPixErodeBrickDwa = function(pixd: PPix; pixs: PPix; hsize: Integer; vsize: Integer): PPix; cdecl;
      TPixOpenBrickDwa = function(pixd: PPix; pixs: PPix; hsize: Integer; vsize: Integer): PPix; cdecl;
      TPixCloseBrickDwa = function(pixd: PPix; pixs: PPix; hsize: Integer; vsize: Integer): PPix; cdecl;
      TPixDilateCompBrickDwa = function(pixd: PPix; pixs: PPix; hsize: Integer; vsize: Integer): PPix; cdecl;
      TPixErodeCompBrickDwa = function(pixd: PPix; pixs: PPix; hsize: Integer; vsize: Integer): PPix; cdecl;
      TPixOpenCompBrickDwa = function(pixd: PPix; pixs: PPix; hsize: Integer; vsize: Integer): PPix; cdecl;
      TPixCloseCompBrickDwa = function(pixd: PPix; pixs: PPix; hsize: Integer; vsize: Integer): PPix; cdecl;
      TPixDilateCompBrickExtendDwa = function(pixd: PPix; pixs: PPix; hsize: Integer;
        vsize: Integer): PPix; cdecl;
      TPixErodeCompBrickExtendDwa = function(pixd: PPix; pixs: PPix; hsize: Integer;
        vsize: Integer): PPix; cdecl;
      TPixOpenCompBrickExtendDwa = function(pixd: PPix; pixs: PPix; hsize: Integer;
        vsize: Integer): PPix; cdecl;
      TPixCloseCompBrickExtendDwa = function(pixd: PPix; pixs: PPix; hsize: Integer;
        vsize: Integer): PPix; cdecl;
      TPixMorphSequence = function(pixs: PPix; sequence: PAnsiChar; dispsep: Integer): PPix; cdecl;
      TPixMorphCompSequence = function(pixs: PPix; sequence: PAnsiChar; dispsep: Integer): PPix; cdecl;
      TPixMorphSequenceDwa = function(pixs: PPix; sequence: PAnsiChar; dispsep: Integer): PPix; cdecl;
      TPixMorphCompSequenceDwa = function(pixs: PPix; sequence: PAnsiChar; dispsep: Integer): PPix; cdecl;
      TPixGrayMorphSequence = function(pixs: PPix; sequence: PAnsiChar; dispsep: Integer;
        dispy: Integer): PPix; cdecl;
      TPixStrokeWidthTransform = function(pixs: PPix; color: Integer; depth: Integer;
        nangles: Integer): PPix; cdecl;
      TPixRunlengthTransform = function(pixs: PPix; color: Integer; direction: Integer;
        depth: Integer): PPix; cdecl;
      TPixSeedfillBinary = function(pixd: PPix; pixs: PPix; pixm: PPix; connectivity: Integer): PPix; cdecl;
      TPixSeedfillBinaryRestricted = function(pixd: PPix; pixs: PPix; pixm: PPix; connectivity: Integer;
        xmax: Integer; ymax: Integer): PPix; cdecl;
      TPixHolesByFilling = function(pixs: PPix; connectivity: Integer): PPix; cdecl;
      TPixSeedfillGray = function(pixs: PPix; pixm: PPix; connectivity: Integer): Integer; cdecl;
      TPixSeedfillGrayInv = function(pixs: PPix; pixm: PPix; connectivity: Integer): Integer; cdecl;
      TPixSeedfillGraySimple = function(pixs: PPix; pixm: PPix; connectivity: Integer): Integer; cdecl;
      TPixSeedfillGrayInvSimple = function(pixs: PPix; pixm: PPix; connectivity: Integer): Integer; cdecl;
      TPixSeedfillGrayBasin = function(pixb: PPix; pixm: PPix; delta: Integer;
        connectivity: Integer): PPix; cdecl;
      TPixDistanceFunction = function(pixs: PPix; connectivity: Integer; outdepth: Integer;
        boundcond: Integer): PPix; cdecl;
      TPixSeedspread = function(pixs: PPix; connectivity: Integer): PPix; cdecl;
      TPixLocalExtrema = function(pixs: PPix; maxmin: Integer; minmax: Integer; ppixmin: PPPix;
        ppixmax: PPPix): Integer; cdecl;
      TPixSelectedLocalExtrema = function(pixs: PPix; mindist: Integer; ppixmin: PPPix;
        ppixmax: PPPix): Integer; cdecl;
    var
      PixThinConnected: TPixThinConnected;
      PixThinConnectedBySet: TPixThinConnectedBySet;
      PixSeedfillBB: TPixSeedfillBB;
      PixSeedfill4BB: TPixSeedfill4BB;
      PixSeedfill8BB: TPixSeedfill8BB;
      PixSeedfill: TPixSeedfill;
      PixSeedfill4: TPixSeedfill4;
      PixSeedfill8: TPixSeedfill8;
      PixMorphDwa_2: TPixMorphDwa_2;
      PixHMTDwa_1: TPixHMTDwa_1;
      PixMorphDwa_1: TPixMorphDwa_1;
      PixErodeGray: TPixErodeGray;
      PixDilateGray: TPixDilateGray;
      PixOpenGray: TPixOpenGray;
      PixCloseGray: TPixCloseGray;
      PixErodeGray3: TPixErodeGray3;
      PixDilateGray3: TPixDilateGray3;
      PixOpenGray3: TPixOpenGray3;
      PixCloseGray3: TPixCloseGray3;
      PixDilate: TPixDilate;
      PixErode: TPixErode;
      PixHMT: TPixHMT;
      PixOpen: TPixOpen;
      PixCloseSafe: TPixCloseSafe;
      PixCloseGeneralized: TPixCloseGeneralized;
      PixDilateBrick: TPixDilateBrick;
      PixErodeBrick: TPixErodeBrick;
      PixOpenBrick: TPixOpenBrick;
      PixCloseBrick: TPixCloseBrick;
      PixCloseSafeBrick: TPixCloseSafeBrick;
      PixDilateCompBrick: TPixDilateCompBrick;
      PixErodeCompBrick: TPixErodeCompBrick;
      PixOpenCompBrick: TPixOpenCompBrick;
      PixCloseCompBrick: TPixCloseCompBrick;
      PixCloseSafeCompBrick: TPixCloseSafeCompBrick;
      ResetMorphBoundaryCondition: TResetMorphBoundaryCondition;
      PixMorphSequenceMasked: TPixMorphSequenceMasked;
      PixMorphSequenceByComponent: TPixMorphSequenceByComponent;
      PixMorphSequenceByRegion: TPixMorphSequenceByRegion;
      PixSeedfillMorph: TPixSeedfillMorph;
      PixTophat: TPixTophat;
      PixHDome: TPixHDome;
      PixMorphGradient: TPixMorphGradient;
      PixDilateBrickDwa: TPixDilateBrickDwa;
      PixErodeBrickDwa: TPixErodeBrickDwa;
      PixOpenBrickDwa: TPixOpenBrickDwa;
      PixCloseBrickDwa: TPixCloseBrickDwa;
      PixDilateCompBrickDwa: TPixDilateCompBrickDwa;
      PixErodeCompBrickDwa: TPixErodeCompBrickDwa;
      PixOpenCompBrickDwa: TPixOpenCompBrickDwa;
      PixCloseCompBrickDwa: TPixCloseCompBrickDwa;
      PixDilateCompBrickExtendDwa: TPixDilateCompBrickExtendDwa;
      PixErodeCompBrickExtendDwa: TPixErodeCompBrickExtendDwa;
      PixOpenCompBrickExtendDwa: TPixOpenCompBrickExtendDwa;
      PixCloseCompBrickExtendDwa: TPixCloseCompBrickExtendDwa;
      PixMorphSequence: TPixMorphSequence;
      PixMorphCompSequence: TPixMorphCompSequence;
      PixMorphSequenceDwa: TPixMorphSequenceDwa;
      PixMorphCompSequenceDwa: TPixMorphCompSequenceDwa;
      PixGrayMorphSequence: TPixGrayMorphSequence;
      PixStrokeWidthTransform: TPixStrokeWidthTransform;
      PixRunlengthTransform: TPixRunlengthTransform;
      PixSeedfillBinary: TPixSeedfillBinary;
      PixSeedfillBinaryRestricted: TPixSeedfillBinaryRestricted;
      PixHolesByFilling: TPixHolesByFilling;
      PixSeedfillGray: TPixSeedfillGray;
      PixSeedfillGrayInv: TPixSeedfillGrayInv;
      PixSeedfillGraySimple: TPixSeedfillGraySimple;
      PixSeedfillGrayInvSimple: TPixSeedfillGrayInvSimple;
      PixSeedfillGrayBasin: TPixSeedfillGrayBasin;
      PixDistanceFunction: TPixDistanceFunction;
      PixSeedspread: TPixSeedspread;
      PixLocalExtrema: TPixLocalExtrema;
      PixSelectedLocalExtrema: TPixSelectedLocalExtrema;
      procedure Initialize(const Handle: TLibHandle);
  end;

implementation

procedure TLeptMorphModule.Initialize(const Handle: TLibHandle);
begin
  PixThinConnected := LeptBind(Handle, 'pixThinConnected');
  PixThinConnectedBySet := LeptBind(Handle, 'pixThinConnectedBySet');
  PixSeedfillBB := LeptBind(Handle, 'pixSeedfillBB');
  PixSeedfill4BB := LeptBind(Handle, 'pixSeedfill4BB');
  PixSeedfill8BB := LeptBind(Handle, 'pixSeedfill8BB');
  PixSeedfill := LeptBind(Handle, 'pixSeedfill');
  PixSeedfill4 := LeptBind(Handle, 'pixSeedfill4');
  PixSeedfill8 := LeptBind(Handle, 'pixSeedfill8');
  PixMorphDwa_2 := LeptBind(Handle, 'pixMorphDwa_2');
  PixHMTDwa_1 := LeptBind(Handle, 'pixHMTDwa_1');
  PixMorphDwa_1 := LeptBind(Handle, 'pixMorphDwa_1');
  PixErodeGray := LeptBind(Handle, 'pixErodeGray');
  PixDilateGray := LeptBind(Handle, 'pixDilateGray');
  PixOpenGray := LeptBind(Handle, 'pixOpenGray');
  PixCloseGray := LeptBind(Handle, 'pixCloseGray');
  PixErodeGray3 := LeptBind(Handle, 'pixErodeGray3');
  PixDilateGray3 := LeptBind(Handle, 'pixDilateGray3');
  PixOpenGray3 := LeptBind(Handle, 'pixOpenGray3');
  PixCloseGray3 := LeptBind(Handle, 'pixCloseGray3');
  PixDilate := LeptBind(Handle, 'pixDilate');
  PixErode := LeptBind(Handle, 'pixErode');
  PixHMT := LeptBind(Handle, 'pixHMT');
  PixOpen := LeptBind(Handle, 'pixOpen');
  PixCloseSafe := LeptBind(Handle, 'pixCloseSafe');
  PixCloseGeneralized := LeptBind(Handle, 'pixCloseGeneralized');
  PixDilateBrick := LeptBind(Handle, 'pixDilateBrick');
  PixErodeBrick := LeptBind(Handle, 'pixErodeBrick');
  PixOpenBrick := LeptBind(Handle, 'pixOpenBrick');
  PixCloseBrick := LeptBind(Handle, 'pixCloseBrick');
  PixCloseSafeBrick := LeptBind(Handle, 'pixCloseSafeBrick');
  PixDilateCompBrick := LeptBind(Handle, 'pixDilateCompBrick');
  PixErodeCompBrick := LeptBind(Handle, 'pixErodeCompBrick');
  PixOpenCompBrick := LeptBind(Handle, 'pixOpenCompBrick');
  PixCloseCompBrick := LeptBind(Handle, 'pixCloseCompBrick');
  PixCloseSafeCompBrick := LeptBind(Handle, 'pixCloseSafeCompBrick');
  ResetMorphBoundaryCondition := LeptBind(Handle, 'resetMorphBoundaryCondition');
  PixMorphSequenceMasked := LeptBind(Handle, 'pixMorphSequenceMasked');
  PixMorphSequenceByComponent := LeptBind(Handle, 'pixMorphSequenceByComponent');
  PixMorphSequenceByRegion := LeptBind(Handle, 'pixMorphSequenceByRegion');
  PixSeedfillMorph := LeptBind(Handle, 'pixSeedfillMorph');
  PixTophat := LeptBind(Handle, 'pixTophat');
  PixHDome := LeptBind(Handle, 'pixHDome');
  PixMorphGradient := LeptBind(Handle, 'pixMorphGradient');
  PixDilateBrickDwa := LeptBind(Handle, 'pixDilateBrickDwa');
  PixErodeBrickDwa := LeptBind(Handle, 'pixErodeBrickDwa');
  PixOpenBrickDwa := LeptBind(Handle, 'pixOpenBrickDwa');
  PixCloseBrickDwa := LeptBind(Handle, 'pixCloseBrickDwa');
  PixDilateCompBrickDwa := LeptBind(Handle, 'pixDilateCompBrickDwa');
  PixErodeCompBrickDwa := LeptBind(Handle, 'pixErodeCompBrickDwa');
  PixOpenCompBrickDwa := LeptBind(Handle, 'pixOpenCompBrickDwa');
  PixCloseCompBrickDwa := LeptBind(Handle, 'pixCloseCompBrickDwa');
  PixDilateCompBrickExtendDwa := LeptBind(Handle, 'pixDilateCompBrickExtendDwa');
  PixErodeCompBrickExtendDwa := LeptBind(Handle, 'pixErodeCompBrickExtendDwa');
  PixOpenCompBrickExtendDwa := LeptBind(Handle, 'pixOpenCompBrickExtendDwa');
  PixCloseCompBrickExtendDwa := LeptBind(Handle, 'pixCloseCompBrickExtendDwa');
  PixMorphSequence := LeptBind(Handle, 'pixMorphSequence');
  PixMorphCompSequence := LeptBind(Handle, 'pixMorphCompSequence');
  PixMorphSequenceDwa := LeptBind(Handle, 'pixMorphSequenceDwa');
  PixMorphCompSequenceDwa := LeptBind(Handle, 'pixMorphCompSequenceDwa');
  PixGrayMorphSequence := LeptBind(Handle, 'pixGrayMorphSequence');
  PixStrokeWidthTransform := LeptBind(Handle, 'pixStrokeWidthTransform');
  PixRunlengthTransform := LeptBind(Handle, 'pixRunlengthTransform');
  PixSeedfillBinary := LeptBind(Handle, 'pixSeedfillBinary');
  PixSeedfillBinaryRestricted := LeptBind(Handle, 'pixSeedfillBinaryRestricted');
  PixHolesByFilling := LeptBind(Handle, 'pixHolesByFilling');
  PixSeedfillGray := LeptBind(Handle, 'pixSeedfillGray');
  PixSeedfillGrayInv := LeptBind(Handle, 'pixSeedfillGrayInv');
  PixSeedfillGraySimple := LeptBind(Handle, 'pixSeedfillGraySimple');
  PixSeedfillGrayInvSimple := LeptBind(Handle, 'pixSeedfillGrayInvSimple');
  PixSeedfillGrayBasin := LeptBind(Handle, 'pixSeedfillGrayBasin');
  PixDistanceFunction := LeptBind(Handle, 'pixDistanceFunction');
  PixSeedspread := LeptBind(Handle, 'pixSeedspread');
  PixLocalExtrema := LeptBind(Handle, 'pixLocalExtrema');
  PixSelectedLocalExtrema := LeptBind(Handle, 'pixSelectedLocalExtrema');
end;

end.
