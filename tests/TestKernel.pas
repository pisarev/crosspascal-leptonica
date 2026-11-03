{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestKernel;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_makeRangeKernel;
begin
  AssertFuncLoaded(@Lept.Kernel.MakeRangeKernel, 'makeRangeKernel');
end;

procedure Test_kernelCreate;
begin
  AssertFuncLoaded(@Lept.Kernel.KernelCreate, 'kernelCreate');
end;

procedure Test_kernelDestroy;
begin
  AssertFuncLoaded(@Lept.Kernel.KernelDestroy, 'kernelDestroy');
end;

procedure Test_kernelCopy;
begin
  AssertFuncLoaded(@Lept.Kernel.KernelCopy, 'kernelCopy');
end;

procedure Test_kernelGetElement;
begin
  AssertFuncLoaded(@Lept.Kernel.KernelGetElement, 'kernelGetElement');
end;

procedure Test_kernelSetElement;
begin
  AssertFuncLoaded(@Lept.Kernel.KernelSetElement, 'kernelSetElement');
end;

procedure Test_kernelGetParameters;
begin
  AssertFuncLoaded(@Lept.Kernel.KernelGetParameters, 'kernelGetParameters');
end;

procedure Test_kernelSetOrigin;
begin
  AssertFuncLoaded(@Lept.Kernel.KernelSetOrigin, 'kernelSetOrigin');
end;

procedure Test_kernelGetSum;
begin
  AssertFuncLoaded(@Lept.Kernel.KernelGetSum, 'kernelGetSum');
end;

procedure Test_kernelGetMinMax;
begin
  AssertFuncLoaded(@Lept.Kernel.KernelGetMinMax, 'kernelGetMinMax');
end;

procedure Test_kernelNormalize;
begin
  AssertFuncLoaded(@Lept.Kernel.KernelNormalize, 'kernelNormalize');
end;

procedure Test_kernelInvert;
begin
  AssertFuncLoaded(@Lept.Kernel.KernelInvert, 'kernelInvert');
end;

procedure Test_kernelRead;
begin
  AssertFuncLoaded(@Lept.Kernel.KernelRead, 'kernelRead');
end;

procedure Test_kernelReadStream;
begin
  AssertFuncLoaded(@Lept.Kernel.KernelReadStream, 'kernelReadStream');
end;

procedure Test_kernelWrite;
begin
  AssertFuncLoaded(@Lept.Kernel.KernelWrite, 'kernelWrite');
end;

procedure Test_kernelWriteStream;
begin
  AssertFuncLoaded(@Lept.Kernel.KernelWriteStream, 'kernelWriteStream');
end;

procedure Test_kernelCreateFromString;
begin
  AssertFuncLoaded(@Lept.Kernel.KernelCreateFromString, 'kernelCreateFromString');
end;

procedure Test_kernelCreateFromFile;
begin
  AssertFuncLoaded(@Lept.Kernel.KernelCreateFromFile, 'kernelCreateFromFile');
end;

procedure Test_kernelCreateFromPix;
begin
  AssertFuncLoaded(@Lept.Kernel.KernelCreateFromPix, 'kernelCreateFromPix');
end;

procedure Test_kernelDisplayInPix;
begin
  AssertFuncLoaded(@Lept.Kernel.KernelDisplayInPix, 'kernelDisplayInPix');
end;

procedure Test_makeGaussianKernel;
begin
  AssertFuncLoaded(@Lept.Kernel.MakeGaussianKernel, 'makeGaussianKernel');
end;

procedure Test_makeGaussianKernelSep;
begin
  AssertFuncLoaded(@Lept.Kernel.MakeGaussianKernelSep, 'makeGaussianKernelSep');
end;

procedure Test_makeDoGKernel;
begin
  AssertFuncLoaded(@Lept.Kernel.MakeDoGKernel, 'makeDoGKernel');
end;

procedure Test_Func_kernelCreate;
var
  K: Pointer;
begin
  K := Lept.Kernel.KernelCreate(3, 3);
  AssertNotNil(K, 'kernelCreate');
  Lept.Kernel.KernelDestroy(@K);
end;

procedure Test_Func_kernelSetGetElement;
var
  K: Pointer;
  Val: Single;
begin
  K := Lept.Kernel.KernelCreate(3, 3);
  Lept.Kernel.KernelSetElement(K, 1, 1, 2.5);
  Val := 0;
  Lept.Kernel.KernelGetElement(K, 1, 1, @Val);
  AssertTrue(Abs(Val - 2.5) < 0.01, 'element=2.5');
  Lept.Kernel.KernelDestroy(@K);
end;

procedure Test_Func_kernelCopy;
var
  K, C: Pointer;
begin
  K := Lept.Kernel.KernelCreate(5, 5);
  C := Lept.Kernel.KernelCopy(K);
  AssertNotNil(C, 'kernelCopy');
  Lept.Kernel.KernelDestroy(@C);
  Lept.Kernel.KernelDestroy(@K);
end;

initialization
  RegisterTest('Kernel', 'makeRangeKernel', @Test_makeRangeKernel, []);
  RegisterTest('Kernel', 'kernelCreate', @Test_kernelCreate, []);
  RegisterTest('Kernel', 'kernelDestroy', @Test_kernelDestroy, []);
  RegisterTest('Kernel', 'kernelCopy', @Test_kernelCopy, []);
  RegisterTest('Kernel', 'kernelGetElement', @Test_kernelGetElement, []);
  RegisterTest('Kernel', 'kernelSetElement', @Test_kernelSetElement, []);
  RegisterTest('Kernel', 'kernelGetParameters', @Test_kernelGetParameters, []);
  RegisterTest('Kernel', 'kernelSetOrigin', @Test_kernelSetOrigin, []);
  RegisterTest('Kernel', 'kernelGetSum', @Test_kernelGetSum, []);
  RegisterTest('Kernel', 'kernelGetMinMax', @Test_kernelGetMinMax, []);
  RegisterTest('Kernel', 'kernelNormalize', @Test_kernelNormalize, []);
  RegisterTest('Kernel', 'kernelInvert', @Test_kernelInvert, []);
  RegisterTest('Kernel', 'kernelRead', @Test_kernelRead, []);
  RegisterTest('Kernel', 'kernelReadStream', @Test_kernelReadStream, []);
  RegisterTest('Kernel', 'kernelWrite', @Test_kernelWrite, []);
  RegisterTest('Kernel', 'kernelWriteStream', @Test_kernelWriteStream, []);
  RegisterTest('Kernel', 'kernelCreateFromString', @Test_kernelCreateFromString, []);
  RegisterTest('Kernel', 'kernelCreateFromFile', @Test_kernelCreateFromFile, []);
  RegisterTest('Kernel', 'kernelCreateFromPix', @Test_kernelCreateFromPix, []);
  RegisterTest('Kernel', 'kernelDisplayInPix', @Test_kernelDisplayInPix, []);
  RegisterTest('Kernel', 'makeGaussianKernel', @Test_makeGaussianKernel, []);
  RegisterTest('Kernel', 'makeGaussianKernelSep', @Test_makeGaussianKernelSep, []);
  RegisterTest('Kernel', 'makeDoGKernel', @Test_makeDoGKernel, []);

  RegisterTest('Kernel', 'Func_kernelCreate', @Test_Func_kernelCreate, []);
  RegisterTest('Kernel', 'Func_kernelSetGetElement', @Test_Func_kernelSetGetElement, []);
  RegisterTest('Kernel', 'Func_kernelCopy', @Test_Func_kernelCopy, []);

end.
