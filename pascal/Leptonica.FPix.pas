{ ************************************************************************** }
{                                                                            }
{ Leptonica.FPix                                                             }
{                                                                            }
{ Copyright © 2026 Yuriy Pisarev (ypisareff@outlook.com)                     }
{                                                                            }
{ ************************************************************************** }

unit Leptonica.FPix;

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
  TLeptFPixModule = record
  public
    type
      TFpixaConvertXYZToRGB = function(fpixa: PFPixa): PPix; cdecl;
      TFpixaConvertXYZToLAB = function(fpixas: PFPixa): PFPixa; cdecl;
      TFpixaConvertLABToXYZ = function(fpixas: PFPixa): PFPixa; cdecl;
      TFpixaConvertLABToRGB = function(fpixa: PFPixa): PPix; cdecl;
      TFpixConvolve = function(fpixs: PFPix; kel: PL_Kernel; normflag: Integer): PFPix; cdecl;
      TFpixConvolveSep = function(fpixs: PFPix; kelx: PL_Kernel; kely: PL_Kernel;
        normflag: Integer): PFPix; cdecl;
      TFpixCreate = function(width: Integer; height: Integer): PFPix; cdecl;
      TFpixCreateTemplate = function(fpixs: PFPix): PFPix; cdecl;
      TFpixClone = function(fpix: PFPix): PFPix; cdecl;
      TFpixCopy = function(fpixs: PFPix): PFPix; cdecl;
      TFpixDestroy = procedure(pfpix: PPFPix); cdecl;
      TFpixGetDimensions = function(fpix: PFPix; pw: PInteger; ph: PInteger): Integer; cdecl;
      TFpixSetDimensions = function(fpix: PFPix; w: Integer; h: Integer): Integer; cdecl;
      TFpixGetWpl = function(fpix: PFPix): Integer; cdecl;
      TFpixSetWpl = function(fpix: PFPix; wpl: Integer): Integer; cdecl;
      TFpixGetResolution = function(fpix: PFPix; pxres: PInteger; pyres: PInteger): Integer; cdecl;
      TFpixSetResolution = function(fpix: PFPix; xres: Integer; yres: Integer): Integer; cdecl;
      TFpixCopyResolution = function(fpixd: PFPix; fpixs: PFPix): Integer; cdecl;
      TFpixGetData = function(fpix: PFPix): PSingle; cdecl;
      TFpixSetData = function(fpix: PFPix; data: PSingle): Integer; cdecl;
      TFpixGetPixel = function(fpix: PFPix; x: Integer; y: Integer; pval: PSingle): Integer; cdecl;
      TFpixSetPixel = function(fpix: PFPix; x: Integer; y: Integer; val: Single): Integer; cdecl;
      TFpixaCreate = function(n: Integer): PFPixa; cdecl;
      TFpixaCopy = function(fpixa: PFPixa; copyflag: Integer): PFPixa; cdecl;
      TFpixaDestroy = procedure(pfpixa: Pointer); cdecl;
      TFpixaAddFPix = function(fpixa: PFPixa; fpix: PFPix; copyflag: Integer): Integer; cdecl;
      TFpixaGetCount = function(fpixa: PFPixa): Integer; cdecl;
      TFpixaGetFPix = function(fpixa: PFPixa; index: Integer; accesstype: Integer): PFPix; cdecl;
      TFpixaGetFPixDimensions = function(fpixa: PFPixa; index: Integer; pw: PInteger;
        ph: PInteger): Integer; cdecl;
      TFpixaGetData = function(fpixa: PFPixa; index: Integer): PSingle; cdecl;
      TFpixaGetPixel = function(fpixa: PFPixa; index: Integer; x: Integer; y: Integer;
        pval: PSingle): Integer; cdecl;
      TFpixaSetPixel = function(fpixa: PFPixa; index: Integer; x: Integer; y: Integer;
        val: Single): Integer; cdecl;
      TDpixCreate = function(width: Integer; height: Integer): PDPix; cdecl;
      TDpixCreateTemplate = function(dpixs: PDPix): PDPix; cdecl;
      TDpixClone = function(dpix: PDPix): PDPix; cdecl;
      TDpixCopy = function(dpixs: PDPix): PDPix; cdecl;
      TDpixDestroy = procedure(pdpix: Pointer); cdecl;
      TDpixGetDimensions = function(dpix: PDPix; pw: PInteger; ph: PInteger): Integer; cdecl;
      TDpixSetDimensions = function(dpix: PDPix; w: Integer; h: Integer): Integer; cdecl;
      TDpixGetWpl = function(dpix: PDPix): Integer; cdecl;
      TDpixSetWpl = function(dpix: PDPix; wpl: Integer): Integer; cdecl;
      TDpixGetResolution = function(dpix: PDPix; pxres: PInteger; pyres: PInteger): Integer; cdecl;
      TDpixSetResolution = function(dpix: PDPix; xres: Integer; yres: Integer): Integer; cdecl;
      TDpixCopyResolution = function(dpixd: PDPix; dpixs: PDPix): Integer; cdecl;
      TDpixGetData = function(dpix: PDPix): PDouble; cdecl;
      TDpixSetData = function(dpix: PDPix; data: PDouble): Integer; cdecl;
      TDpixGetPixel = function(dpix: PDPix; x: Integer; y: Integer; pval: PDouble): Integer; cdecl;
      TDpixSetPixel = function(dpix: PDPix; x: Integer; y: Integer; val: Double): Integer; cdecl;
      TFpixRead = function(filename: PAnsiChar): PFPix; cdecl;
      TFpixReadStream = function(fp: Pointer): PFPix; cdecl;
      TFpixReadMem = function(data: PByte; size: NativeUInt): PFPix; cdecl;
      TFpixWrite = function(filename: PAnsiChar; fpix: PFPix): Integer; cdecl;
      TFpixWriteStream = function(fp: Pointer; fpix: PFPix): Integer; cdecl;
      TFpixWriteMem = function(pdata: PPointer; psize: PNativeUInt; fpix: PFPix): Integer; cdecl;
      TFpixEndianByteSwap = function(fpixd: PFPix; fpixs: PFPix): PFPix; cdecl;
      TDpixRead = function(filename: PAnsiChar): PDPix; cdecl;
      TDpixReadStream = function(fp: Pointer): PDPix; cdecl;
      TDpixReadMem = function(data: PByte; size: NativeUInt): PDPix; cdecl;
      TDpixWrite = function(filename: PAnsiChar; dpix: PDPix): Integer; cdecl;
      TDpixWriteStream = function(fp: Pointer; dpix: PDPix): Integer; cdecl;
      TDpixWriteMem = function(pdata: PPointer; psize: PNativeUInt; dpix: PDPix): Integer; cdecl;
      TDpixEndianByteSwap = function(dpixd: PDPix; dpixs: PDPix): PDPix; cdecl;
      TFpixPrintStream = function(fp: Pointer; fpix: PFPix; factor: Integer): Integer; cdecl;
      TFpixConvertToPix = function(fpixs: PFPix; outdepth: Integer; negvals: Integer;
        errorflag: Integer): PPix; cdecl;
      TFpixDisplayMaxDynamicRange = function(fpixs: PFPix): PPix; cdecl;
      TFpixConvertToDPix = function(fpix: PFPix): PDPix; cdecl;
      TDpixConvertToPix = function(dpixs: PDPix; outdepth: Integer; negvals: Integer;
        errorflag: Integer): PPix; cdecl;
      TDpixConvertToFPix = function(dpix: PDPix): PFPix; cdecl;
      TFpixGetMin = function(fpix: PFPix; pminval: PSingle; pxminloc: PInteger;
        pyminloc: PInteger): Integer; cdecl;
      TFpixGetMax = function(fpix: PFPix; pmaxval: PSingle; pxmaxloc: PInteger;
        pymaxloc: PInteger): Integer; cdecl;
      TDpixGetMin = function(dpix: PDPix; pminval: PDouble; pxminloc: PInteger;
        pyminloc: PInteger): Integer; cdecl;
      TDpixGetMax = function(dpix: PDPix; pmaxval: PDouble; pxmaxloc: PInteger;
        pymaxloc: PInteger): Integer; cdecl;
      TFpixScaleByInteger = function(fpixs: PFPix; factor: Integer): PFPix; cdecl;
      TDpixScaleByInteger = function(dpixs: PDPix; factor: Integer): PDPix; cdecl;
      TFpixLinearCombination = function(fpixd: PFPix; fpixs1: PFPix; fpixs2: PFPix; a: Single;
        b: Single): PFPix; cdecl;
      TFpixAddMultConstant = function(fpix: PFPix; addc: Single; multc: Single): Integer; cdecl;
      TDpixLinearCombination = function(dpixd: PDPix; dpixs1: PDPix; dpixs2: PDPix; a: Single;
        b: Single): PDPix; cdecl;
      TDpixAddMultConstant = function(dpix: PDPix; addc: Double; multc: Double): Integer; cdecl;
      TFpixSetAllArbitrary = function(fpix: PFPix; inval: Single): Integer; cdecl;
      TDpixSetAllArbitrary = function(dpix: PDPix; inval: Double): Integer; cdecl;
      TFpixAddBorder = function(fpixs: PFPix; left: Integer; right: Integer; top: Integer;
        bot: Integer): PFPix; cdecl;
      TFpixRemoveBorder = function(fpixs: PFPix; left: Integer; right: Integer; top: Integer;
        bot: Integer): PFPix; cdecl;
      TFpixAddMirroredBorder = function(fpixs: PFPix; left: Integer; right: Integer; top: Integer;
        bot: Integer): PFPix; cdecl;
      TFpixAddContinuedBorder = function(fpixs: PFPix; left: Integer; right: Integer; top: Integer;
        bot: Integer): PFPix; cdecl;
      TFpixAddSlopeBorder = function(fpixs: PFPix; left: Integer; right: Integer; top: Integer;
        bot: Integer): PFPix; cdecl;
      TFpixRasterop = function(fpixd: PFPix; dx: Integer; dy: Integer; dw: Integer; dh: Integer; fpixs: PFPix;
        sx: Integer; sy: Integer): Integer; cdecl;
      TFpixRotateOrth = function(fpixs: PFPix; quads: Integer): PFPix; cdecl;
      TFpixRotate180 = function(fpixd: PFPix; fpixs: PFPix): PFPix; cdecl;
      TFpixRotate90 = function(fpixs: PFPix; direction: Integer): PFPix; cdecl;
      TFpixFlipLR = function(fpixd: PFPix; fpixs: PFPix): PFPix; cdecl;
      TFpixFlipTB = function(fpixd: PFPix; fpixs: PFPix): PFPix; cdecl;
      TFpixAffinePta = function(fpixs: PFPix; ptad: PPta; ptas: PPta; border: Integer;
        inval: Single): PFPix; cdecl;
      TFpixAffine = function(fpixs: PFPix; vc: PSingle; inval: Single): PFPix; cdecl;
      TFpixProjectivePta = function(fpixs: PFPix; ptad: PPta; ptas: PPta; border: Integer;
        inval: Single): PFPix; cdecl;
      TFpixProjective = function(fpixs: PFPix; vc: PSingle; inval: Single): PFPix; cdecl;
      TFpixThresholdToPix = function(fpix: PFPix; thresh: Single): PPix; cdecl;
      TFpixAutoRenderContours = function(fpix: PFPix; ncontours: Integer): PPix; cdecl;
      TFpixRenderContours = function(fpixs: PFPix; incr: Single; proxim: Single): PPix; cdecl;
      TFpixaDisplayQuadtree = function(fpixa: PFPixa; factor: Integer; fontsize: Integer): PPix; cdecl;
    var
      FpixaConvertXYZToRGB: TFpixaConvertXYZToRGB;
      FpixaConvertXYZToLAB: TFpixaConvertXYZToLAB;
      FpixaConvertLABToXYZ: TFpixaConvertLABToXYZ;
      FpixaConvertLABToRGB: TFpixaConvertLABToRGB;
      FpixConvolve: TFpixConvolve;
      FpixConvolveSep: TFpixConvolveSep;
      FpixCreate: TFpixCreate;
      FpixCreateTemplate: TFpixCreateTemplate;
      FpixClone: TFpixClone;
      FpixCopy: TFpixCopy;
      FpixDestroy: TFpixDestroy;
      FpixGetDimensions: TFpixGetDimensions;
      FpixSetDimensions: TFpixSetDimensions;
      FpixGetWpl: TFpixGetWpl;
      FpixSetWpl: TFpixSetWpl;
      FpixGetResolution: TFpixGetResolution;
      FpixSetResolution: TFpixSetResolution;
      FpixCopyResolution: TFpixCopyResolution;
      FpixGetData: TFpixGetData;
      FpixSetData: TFpixSetData;
      FpixGetPixel: TFpixGetPixel;
      FpixSetPixel: TFpixSetPixel;
      FpixaCreate: TFpixaCreate;
      FpixaCopy: TFpixaCopy;
      FpixaDestroy: TFpixaDestroy;
      FpixaAddFPix: TFpixaAddFPix;
      FpixaGetCount: TFpixaGetCount;
      FpixaGetFPix: TFpixaGetFPix;
      FpixaGetFPixDimensions: TFpixaGetFPixDimensions;
      FpixaGetData: TFpixaGetData;
      FpixaGetPixel: TFpixaGetPixel;
      FpixaSetPixel: TFpixaSetPixel;
      DpixCreate: TDpixCreate;
      DpixCreateTemplate: TDpixCreateTemplate;
      DpixClone: TDpixClone;
      DpixCopy: TDpixCopy;
      DpixDestroy: TDpixDestroy;
      DpixGetDimensions: TDpixGetDimensions;
      DpixSetDimensions: TDpixSetDimensions;
      DpixGetWpl: TDpixGetWpl;
      DpixSetWpl: TDpixSetWpl;
      DpixGetResolution: TDpixGetResolution;
      DpixSetResolution: TDpixSetResolution;
      DpixCopyResolution: TDpixCopyResolution;
      DpixGetData: TDpixGetData;
      DpixSetData: TDpixSetData;
      DpixGetPixel: TDpixGetPixel;
      DpixSetPixel: TDpixSetPixel;
      FpixRead: TFpixRead;
      FpixReadStream: TFpixReadStream;
      FpixReadMem: TFpixReadMem;
      FpixWrite: TFpixWrite;
      FpixWriteStream: TFpixWriteStream;
      FpixWriteMem: TFpixWriteMem;
      FpixEndianByteSwap: TFpixEndianByteSwap;
      DpixRead: TDpixRead;
      DpixReadStream: TDpixReadStream;
      DpixReadMem: TDpixReadMem;
      DpixWrite: TDpixWrite;
      DpixWriteStream: TDpixWriteStream;
      DpixWriteMem: TDpixWriteMem;
      DpixEndianByteSwap: TDpixEndianByteSwap;
      FpixPrintStream: TFpixPrintStream;
      FpixConvertToPix: TFpixConvertToPix;
      FpixDisplayMaxDynamicRange: TFpixDisplayMaxDynamicRange;
      FpixConvertToDPix: TFpixConvertToDPix;
      DpixConvertToPix: TDpixConvertToPix;
      DpixConvertToFPix: TDpixConvertToFPix;
      FpixGetMin: TFpixGetMin;
      FpixGetMax: TFpixGetMax;
      DpixGetMin: TDpixGetMin;
      DpixGetMax: TDpixGetMax;
      FpixScaleByInteger: TFpixScaleByInteger;
      DpixScaleByInteger: TDpixScaleByInteger;
      FpixLinearCombination: TFpixLinearCombination;
      FpixAddMultConstant: TFpixAddMultConstant;
      DpixLinearCombination: TDpixLinearCombination;
      DpixAddMultConstant: TDpixAddMultConstant;
      FpixSetAllArbitrary: TFpixSetAllArbitrary;
      DpixSetAllArbitrary: TDpixSetAllArbitrary;
      FpixAddBorder: TFpixAddBorder;
      FpixRemoveBorder: TFpixRemoveBorder;
      FpixAddMirroredBorder: TFpixAddMirroredBorder;
      FpixAddContinuedBorder: TFpixAddContinuedBorder;
      FpixAddSlopeBorder: TFpixAddSlopeBorder;
      FpixRasterop: TFpixRasterop;
      FpixRotateOrth: TFpixRotateOrth;
      FpixRotate180: TFpixRotate180;
      FpixRotate90: TFpixRotate90;
      FpixFlipLR: TFpixFlipLR;
      FpixFlipTB: TFpixFlipTB;
      FpixAffinePta: TFpixAffinePta;
      FpixAffine: TFpixAffine;
      FpixProjectivePta: TFpixProjectivePta;
      FpixProjective: TFpixProjective;
      FpixThresholdToPix: TFpixThresholdToPix;
      FpixAutoRenderContours: TFpixAutoRenderContours;
      FpixRenderContours: TFpixRenderContours;
      FpixaDisplayQuadtree: TFpixaDisplayQuadtree;
    procedure Initialize(const Handle: TLibHandle);
  end;

implementation

procedure TLeptFPixModule.Initialize(const Handle: TLibHandle);
begin
  FpixaConvertXYZToRGB := LeptBind(Handle, 'fpixaConvertXYZToRGB');
  FpixaConvertXYZToLAB := LeptBind(Handle, 'fpixaConvertXYZToLAB');
  FpixaConvertLABToXYZ := LeptBind(Handle, 'fpixaConvertLABToXYZ');
  FpixaConvertLABToRGB := LeptBind(Handle, 'fpixaConvertLABToRGB');
  FpixConvolve := LeptBind(Handle, 'fpixConvolve');
  FpixConvolveSep := LeptBind(Handle, 'fpixConvolveSep');
  FpixCreate := LeptBind(Handle, 'fpixCreate');
  FpixCreateTemplate := LeptBind(Handle, 'fpixCreateTemplate');
  FpixClone := LeptBind(Handle, 'fpixClone');
  FpixCopy := LeptBind(Handle, 'fpixCopy');
  FpixDestroy := LeptBind(Handle, 'fpixDestroy');
  FpixGetDimensions := LeptBind(Handle, 'fpixGetDimensions');
  FpixSetDimensions := LeptBind(Handle, 'fpixSetDimensions');
  FpixGetWpl := LeptBind(Handle, 'fpixGetWpl');
  FpixSetWpl := LeptBind(Handle, 'fpixSetWpl');
  FpixGetResolution := LeptBind(Handle, 'fpixGetResolution');
  FpixSetResolution := LeptBind(Handle, 'fpixSetResolution');
  FpixCopyResolution := LeptBind(Handle, 'fpixCopyResolution');
  FpixGetData := LeptBind(Handle, 'fpixGetData');
  FpixSetData := LeptBind(Handle, 'fpixSetData');
  FpixGetPixel := LeptBind(Handle, 'fpixGetPixel');
  FpixSetPixel := LeptBind(Handle, 'fpixSetPixel');
  FpixaCreate := LeptBind(Handle, 'fpixaCreate');
  FpixaCopy := LeptBind(Handle, 'fpixaCopy');
  FpixaDestroy := LeptBind(Handle, 'fpixaDestroy');
  FpixaAddFPix := LeptBind(Handle, 'fpixaAddFPix');
  FpixaGetCount := LeptBind(Handle, 'fpixaGetCount');
  FpixaGetFPix := LeptBind(Handle, 'fpixaGetFPix');
  FpixaGetFPixDimensions := LeptBind(Handle, 'fpixaGetFPixDimensions');
  FpixaGetData := LeptBind(Handle, 'fpixaGetData');
  FpixaGetPixel := LeptBind(Handle, 'fpixaGetPixel');
  FpixaSetPixel := LeptBind(Handle, 'fpixaSetPixel');
  DpixCreate := LeptBind(Handle, 'dpixCreate');
  DpixCreateTemplate := LeptBind(Handle, 'dpixCreateTemplate');
  DpixClone := LeptBind(Handle, 'dpixClone');
  DpixCopy := LeptBind(Handle, 'dpixCopy');
  DpixDestroy := LeptBind(Handle, 'dpixDestroy');
  DpixGetDimensions := LeptBind(Handle, 'dpixGetDimensions');
  DpixSetDimensions := LeptBind(Handle, 'dpixSetDimensions');
  DpixGetWpl := LeptBind(Handle, 'dpixGetWpl');
  DpixSetWpl := LeptBind(Handle, 'dpixSetWpl');
  DpixGetResolution := LeptBind(Handle, 'dpixGetResolution');
  DpixSetResolution := LeptBind(Handle, 'dpixSetResolution');
  DpixCopyResolution := LeptBind(Handle, 'dpixCopyResolution');
  DpixGetData := LeptBind(Handle, 'dpixGetData');
  DpixSetData := LeptBind(Handle, 'dpixSetData');
  DpixGetPixel := LeptBind(Handle, 'dpixGetPixel');
  DpixSetPixel := LeptBind(Handle, 'dpixSetPixel');
  FpixRead := LeptBind(Handle, 'fpixRead');
  FpixReadStream := LeptBind(Handle, 'fpixReadStream');
  FpixReadMem := LeptBind(Handle, 'fpixReadMem');
  FpixWrite := LeptBind(Handle, 'fpixWrite');
  FpixWriteStream := LeptBind(Handle, 'fpixWriteStream');
  FpixWriteMem := LeptBind(Handle, 'fpixWriteMem');
  FpixEndianByteSwap := LeptBind(Handle, 'fpixEndianByteSwap');
  DpixRead := LeptBind(Handle, 'dpixRead');
  DpixReadStream := LeptBind(Handle, 'dpixReadStream');
  DpixReadMem := LeptBind(Handle, 'dpixReadMem');
  DpixWrite := LeptBind(Handle, 'dpixWrite');
  DpixWriteStream := LeptBind(Handle, 'dpixWriteStream');
  DpixWriteMem := LeptBind(Handle, 'dpixWriteMem');
  DpixEndianByteSwap := LeptBind(Handle, 'dpixEndianByteSwap');
  FpixPrintStream := LeptBind(Handle, 'fpixPrintStream');
  FpixConvertToPix := LeptBind(Handle, 'fpixConvertToPix');
  FpixDisplayMaxDynamicRange := LeptBind(Handle, 'fpixDisplayMaxDynamicRange');
  FpixConvertToDPix := LeptBind(Handle, 'fpixConvertToDPix');
  DpixConvertToPix := LeptBind(Handle, 'dpixConvertToPix');
  DpixConvertToFPix := LeptBind(Handle, 'dpixConvertToFPix');
  FpixGetMin := LeptBind(Handle, 'fpixGetMin');
  FpixGetMax := LeptBind(Handle, 'fpixGetMax');
  DpixGetMin := LeptBind(Handle, 'dpixGetMin');
  DpixGetMax := LeptBind(Handle, 'dpixGetMax');
  FpixScaleByInteger := LeptBind(Handle, 'fpixScaleByInteger');
  DpixScaleByInteger := LeptBind(Handle, 'dpixScaleByInteger');
  FpixLinearCombination := LeptBind(Handle, 'fpixLinearCombination');
  FpixAddMultConstant := LeptBind(Handle, 'fpixAddMultConstant');
  DpixLinearCombination := LeptBind(Handle, 'dpixLinearCombination');
  DpixAddMultConstant := LeptBind(Handle, 'dpixAddMultConstant');
  FpixSetAllArbitrary := LeptBind(Handle, 'fpixSetAllArbitrary');
  DpixSetAllArbitrary := LeptBind(Handle, 'dpixSetAllArbitrary');
  FpixAddBorder := LeptBind(Handle, 'fpixAddBorder');
  FpixRemoveBorder := LeptBind(Handle, 'fpixRemoveBorder');
  FpixAddMirroredBorder := LeptBind(Handle, 'fpixAddMirroredBorder');
  FpixAddContinuedBorder := LeptBind(Handle, 'fpixAddContinuedBorder');
  FpixAddSlopeBorder := LeptBind(Handle, 'fpixAddSlopeBorder');
  FpixRasterop := LeptBind(Handle, 'fpixRasterop');
  FpixRotateOrth := LeptBind(Handle, 'fpixRotateOrth');
  FpixRotate180 := LeptBind(Handle, 'fpixRotate180');
  FpixRotate90 := LeptBind(Handle, 'fpixRotate90');
  FpixFlipLR := LeptBind(Handle, 'fpixFlipLR');
  FpixFlipTB := LeptBind(Handle, 'fpixFlipTB');
  FpixAffinePta := LeptBind(Handle, 'fpixAffinePta');
  FpixAffine := LeptBind(Handle, 'fpixAffine');
  FpixProjectivePta := LeptBind(Handle, 'fpixProjectivePta');
  FpixProjective := LeptBind(Handle, 'fpixProjective');
  FpixThresholdToPix := LeptBind(Handle, 'fpixThresholdToPix');
  FpixAutoRenderContours := LeptBind(Handle, 'fpixAutoRenderContours');
  FpixRenderContours := LeptBind(Handle, 'fpixRenderContours');
  FpixaDisplayQuadtree := LeptBind(Handle, 'fpixaDisplayQuadtree');
end;

end.
