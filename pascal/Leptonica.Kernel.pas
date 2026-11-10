{ ************************************************************************** }
{                                                                            }
{ Leptonica.Kernel                                                           }
{                                                                            }
{ Copyright © 2026 Yuriy Pisarev (ypisareff@outlook.com)                     }
{                                                                            }
{ ************************************************************************** }

unit Leptonica.Kernel;

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
  TLeptKernelModule = record
  public
    type
      TMakeRangeKernel = function(range_stdev: Single): PL_Kernel; cdecl;
      TKernelCreate = function(height: Integer; width: Integer): PL_Kernel; cdecl;
      TKernelDestroy = procedure(pkel: PPL_Kernel); cdecl;
      TKernelCopy = function(kels: PL_Kernel): PL_Kernel; cdecl;
      TKernelGetElement = function(kel: PL_Kernel; row: Integer; col: Integer; pval: PSingle): Integer; cdecl;
      TKernelSetElement = function(kel: PL_Kernel; row: Integer; col: Integer; val: Single): Integer; cdecl;
      TKernelGetParameters = function(kel: PL_Kernel; psy: PInteger; psx: PInteger; pcy: PInteger;
        pcx: PInteger): Integer; cdecl;
      TKernelSetOrigin = function(kel: PL_Kernel; cy: Integer; cx: Integer): Integer; cdecl;
      TKernelGetSum = function(kel: PL_Kernel; psum: PSingle): Integer; cdecl;
      TKernelGetMinMax = function(kel: PL_Kernel; pmin: PSingle; pmax: PSingle): Integer; cdecl;
      TKernelNormalize = function(kels: PL_Kernel; normsum: Single): PL_Kernel; cdecl;
      TKernelInvert = function(kels: PL_Kernel): PL_Kernel; cdecl;
      TKernelRead = function(fname: PAnsiChar): PL_Kernel; cdecl;
      TKernelReadStream = function(fp: Pointer): PL_Kernel; cdecl;
      TKernelWrite = function(fname: PAnsiChar; kel: PL_Kernel): Integer; cdecl;
      TKernelWriteStream = function(fp: Pointer; kel: PL_Kernel): Integer; cdecl;
      TKernelCreateFromString = function(h: Integer; w: Integer; cy: Integer; cx: Integer;
        kdata: PAnsiChar): PL_Kernel; cdecl;
      TKernelCreateFromFile = function(filename: PAnsiChar): PL_Kernel; cdecl;
      TKernelCreateFromPix = function(pix: PPix; cy: Integer; cx: Integer): PL_Kernel; cdecl;
      TKernelDisplayInPix = function(kel: PL_Kernel; size: Integer; gthick: Integer): PPix; cdecl;
      TMakeGaussianKernel = function(halfh: Integer; halfw: Integer; stdev: Single;
        max: Single): PL_Kernel; cdecl;
      TMakeGaussianKernelSep = function(halfh: Integer; halfw: Integer; stdev: Single; max: Single;
        pkelx: PPL_Kernel; pkely: PPL_Kernel): Integer; cdecl;
      TMakeDoGKernel = function(halfh: Integer; halfw: Integer; stdev: Single;
        ratio: Single): PL_Kernel; cdecl;
    var
      MakeRangeKernel: TMakeRangeKernel;
      KernelCreate: TKernelCreate;
      KernelDestroy: TKernelDestroy;
      KernelCopy: TKernelCopy;
      KernelGetElement: TKernelGetElement;
      KernelSetElement: TKernelSetElement;
      KernelGetParameters: TKernelGetParameters;
      KernelSetOrigin: TKernelSetOrigin;
      KernelGetSum: TKernelGetSum;
      KernelGetMinMax: TKernelGetMinMax;
      KernelNormalize: TKernelNormalize;
      KernelInvert: TKernelInvert;
      KernelRead: TKernelRead;
      KernelReadStream: TKernelReadStream;
      KernelWrite: TKernelWrite;
      KernelWriteStream: TKernelWriteStream;
      KernelCreateFromString: TKernelCreateFromString;
      KernelCreateFromFile: TKernelCreateFromFile;
      KernelCreateFromPix: TKernelCreateFromPix;
      KernelDisplayInPix: TKernelDisplayInPix;
      MakeGaussianKernel: TMakeGaussianKernel;
      MakeGaussianKernelSep: TMakeGaussianKernelSep;
      MakeDoGKernel: TMakeDoGKernel;
    procedure Initialize(const Handle: TLibHandle);
  end;

implementation

procedure TLeptKernelModule.Initialize(const Handle: TLibHandle);
begin
  MakeRangeKernel := LeptBind(Handle, 'makeRangeKernel');
  KernelCreate := LeptBind(Handle, 'kernelCreate');
  KernelDestroy := LeptBind(Handle, 'kernelDestroy');
  KernelCopy := LeptBind(Handle, 'kernelCopy');
  KernelGetElement := LeptBind(Handle, 'kernelGetElement');
  KernelSetElement := LeptBind(Handle, 'kernelSetElement');
  KernelGetParameters := LeptBind(Handle, 'kernelGetParameters');
  KernelSetOrigin := LeptBind(Handle, 'kernelSetOrigin');
  KernelGetSum := LeptBind(Handle, 'kernelGetSum');
  KernelGetMinMax := LeptBind(Handle, 'kernelGetMinMax');
  KernelNormalize := LeptBind(Handle, 'kernelNormalize');
  KernelInvert := LeptBind(Handle, 'kernelInvert');
  KernelRead := LeptBind(Handle, 'kernelRead');
  KernelReadStream := LeptBind(Handle, 'kernelReadStream');
  KernelWrite := LeptBind(Handle, 'kernelWrite');
  KernelWriteStream := LeptBind(Handle, 'kernelWriteStream');
  KernelCreateFromString := LeptBind(Handle, 'kernelCreateFromString');
  KernelCreateFromFile := LeptBind(Handle, 'kernelCreateFromFile');
  KernelCreateFromPix := LeptBind(Handle, 'kernelCreateFromPix');
  KernelDisplayInPix := LeptBind(Handle, 'kernelDisplayInPix');
  MakeGaussianKernel := LeptBind(Handle, 'makeGaussianKernel');
  MakeGaussianKernelSep := LeptBind(Handle, 'makeGaussianKernelSep');
  MakeDoGKernel := LeptBind(Handle, 'makeDoGKernel');
end;

end.
