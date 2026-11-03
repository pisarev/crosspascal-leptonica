{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestPta;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_ptaTranslate;
begin
  AssertFuncLoaded(@Lept.Pta.PtaTranslate, 'ptaTranslate');
end;

procedure Test_ptaScale;
begin
  AssertFuncLoaded(@Lept.Pta.PtaScale, 'ptaScale');
end;

procedure Test_ptaRotate;
begin
  AssertFuncLoaded(@Lept.Pta.PtaRotate, 'ptaRotate');
end;

procedure Test_ptaAffineTransform;
begin
  AssertFuncLoaded(@Lept.Pta.PtaAffineTransform, 'ptaAffineTransform');
end;

procedure Test_ptaConvertToBoxa;
begin
  AssertFuncLoaded(@Lept.Pta.PtaConvertToBoxa, 'ptaConvertToBoxa');
end;

procedure Test_ptaConvertToBox;
begin
  AssertFuncLoaded(@Lept.Pta.PtaConvertToBox, 'ptaConvertToBox');
end;

procedure Test_ptaCreate;
begin
  AssertFuncLoaded(@Lept.Pta.PtaCreate, 'ptaCreate');
end;

procedure Test_ptaCreateFromNuma;
begin
  AssertFuncLoaded(@Lept.Pta.PtaCreateFromNuma, 'ptaCreateFromNuma');
end;

procedure Test_ptaDestroy;
begin
  AssertFuncLoaded(@Lept.Pta.PtaDestroy, 'ptaDestroy');
end;

procedure Test_ptaCopy;
begin
  AssertFuncLoaded(@Lept.Pta.PtaCopy, 'ptaCopy');
end;

procedure Test_ptaCopyRange;
begin
  AssertFuncLoaded(@Lept.Pta.PtaCopyRange, 'ptaCopyRange');
end;

procedure Test_ptaClone;
begin
  AssertFuncLoaded(@Lept.Pta.PtaClone, 'ptaClone');
end;

procedure Test_ptaEmpty;
begin
  AssertFuncLoaded(@Lept.Pta.PtaEmpty, 'ptaEmpty');
end;

procedure Test_ptaAddPt;
begin
  AssertFuncLoaded(@Lept.Pta.PtaAddPt, 'ptaAddPt');
end;

procedure Test_ptaInsertPt;
begin
  AssertFuncLoaded(@Lept.Pta.PtaInsertPt, 'ptaInsertPt');
end;

procedure Test_ptaRemovePt;
begin
  AssertFuncLoaded(@Lept.Pta.PtaRemovePt, 'ptaRemovePt');
end;

procedure Test_ptaGetCount;
begin
  AssertFuncLoaded(@Lept.Pta.PtaGetCount, 'ptaGetCount');
end;

procedure Test_ptaGetPt;
begin
  AssertFuncLoaded(@Lept.Pta.PtaGetPt, 'ptaGetPt');
end;

procedure Test_ptaGetIPt;
begin
  AssertFuncLoaded(@Lept.Pta.PtaGetIPt, 'ptaGetIPt');
end;

procedure Test_ptaSetPt;
begin
  AssertFuncLoaded(@Lept.Pta.PtaSetPt, 'ptaSetPt');
end;

procedure Test_ptaGetArrays;
begin
  AssertFuncLoaded(@Lept.Pta.PtaGetArrays, 'ptaGetArrays');
end;

procedure Test_ptaRead;
begin
  AssertFuncLoaded(@Lept.Pta.PtaRead, 'ptaRead');
end;

procedure Test_ptaReadStream;
begin
  AssertFuncLoaded(@Lept.Pta.PtaReadStream, 'ptaReadStream');
end;

procedure Test_ptaReadMem;
begin
  AssertFuncLoaded(@Lept.Pta.PtaReadMem, 'ptaReadMem');
end;

procedure Test_ptaWriteDebug;
begin
  AssertFuncLoaded(@Lept.Pta.PtaWriteDebug, 'ptaWriteDebug');
end;

procedure Test_ptaWrite;
begin
  AssertFuncLoaded(@Lept.Pta.PtaWrite, 'ptaWrite');
end;

procedure Test_ptaWriteStream;
begin
  AssertFuncLoaded(@Lept.Pta.PtaWriteStream, 'ptaWriteStream');
end;

procedure Test_ptaWriteMem;
begin
  AssertFuncLoaded(@Lept.Pta.PtaWriteMem, 'ptaWriteMem');
end;

procedure Test_ptaaCreate;
begin
  AssertFuncLoaded(@Lept.Pta.PtaaCreate, 'ptaaCreate');
end;

procedure Test_ptaaDestroy;
begin
  AssertFuncLoaded(@Lept.Pta.PtaaDestroy, 'ptaaDestroy');
end;

procedure Test_ptaaAddPta;
begin
  AssertFuncLoaded(@Lept.Pta.PtaaAddPta, 'ptaaAddPta');
end;

procedure Test_ptaaGetCount;
begin
  AssertFuncLoaded(@Lept.Pta.PtaaGetCount, 'ptaaGetCount');
end;

procedure Test_ptaaGetPta;
begin
  AssertFuncLoaded(@Lept.Pta.PtaaGetPta, 'ptaaGetPta');
end;

procedure Test_ptaaGetPt;
begin
  AssertFuncLoaded(@Lept.Pta.PtaaGetPt, 'ptaaGetPt');
end;

procedure Test_ptaaInitFull;
begin
  AssertFuncLoaded(@Lept.Pta.PtaaInitFull, 'ptaaInitFull');
end;

procedure Test_ptaaReplacePta;
begin
  AssertFuncLoaded(@Lept.Pta.PtaaReplacePta, 'ptaaReplacePta');
end;

procedure Test_ptaaAddPt;
begin
  AssertFuncLoaded(@Lept.Pta.PtaaAddPt, 'ptaaAddPt');
end;

procedure Test_ptaaTruncate;
begin
  AssertFuncLoaded(@Lept.Pta.PtaaTruncate, 'ptaaTruncate');
end;

procedure Test_ptaaRead;
begin
  AssertFuncLoaded(@Lept.Pta.PtaaRead, 'ptaaRead');
end;

procedure Test_ptaaReadStream;
begin
  AssertFuncLoaded(@Lept.Pta.PtaaReadStream, 'ptaaReadStream');
end;

procedure Test_ptaaReadMem;
begin
  AssertFuncLoaded(@Lept.Pta.PtaaReadMem, 'ptaaReadMem');
end;

procedure Test_ptaaWriteDebug;
begin
  AssertFuncLoaded(@Lept.Pta.PtaaWriteDebug, 'ptaaWriteDebug');
end;

procedure Test_ptaaWrite;
begin
  AssertFuncLoaded(@Lept.Pta.PtaaWrite, 'ptaaWrite');
end;

procedure Test_ptaaWriteStream;
begin
  AssertFuncLoaded(@Lept.Pta.PtaaWriteStream, 'ptaaWriteStream');
end;

procedure Test_ptaaWriteMem;
begin
  AssertFuncLoaded(@Lept.Pta.PtaaWriteMem, 'ptaaWriteMem');
end;

procedure Test_ptaSubsample;
begin
  AssertFuncLoaded(@Lept.Pta.PtaSubsample, 'ptaSubsample');
end;

procedure Test_ptaJoin;
begin
  AssertFuncLoaded(@Lept.Pta.PtaJoin, 'ptaJoin');
end;

procedure Test_ptaaJoin;
begin
  AssertFuncLoaded(@Lept.Pta.PtaaJoin, 'ptaaJoin');
end;

procedure Test_ptaReverse;
begin
  AssertFuncLoaded(@Lept.Pta.PtaReverse, 'ptaReverse');
end;

procedure Test_ptaTranspose;
begin
  AssertFuncLoaded(@Lept.Pta.PtaTranspose, 'ptaTranspose');
end;

procedure Test_ptaCyclicPerm;
begin
  AssertFuncLoaded(@Lept.Pta.PtaCyclicPerm, 'ptaCyclicPerm');
end;

procedure Test_ptaSelectRange;
begin
  AssertFuncLoaded(@Lept.Pta.PtaSelectRange, 'ptaSelectRange');
end;

procedure Test_ptaGetBoundingRegion;
begin
  AssertFuncLoaded(@Lept.Pta.PtaGetBoundingRegion, 'ptaGetBoundingRegion');
end;

procedure Test_ptaGetRange;
begin
  AssertFuncLoaded(@Lept.Pta.PtaGetRange, 'ptaGetRange');
end;

procedure Test_ptaGetInsideBox;
begin
  AssertFuncLoaded(@Lept.Pta.PtaGetInsideBox, 'ptaGetInsideBox');
end;

procedure Test_ptaContainsPt;
begin
  AssertFuncLoaded(@Lept.Pta.PtaContainsPt, 'ptaContainsPt');
end;

procedure Test_ptaTestIntersection;
begin
  AssertFuncLoaded(@Lept.Pta.PtaTestIntersection, 'ptaTestIntersection');
end;

procedure Test_ptaTransform;
begin
  AssertFuncLoaded(@Lept.Pta.PtaTransform, 'ptaTransform');
end;

procedure Test_ptaPtInsidePolygon;
begin
  AssertFuncLoaded(@Lept.Pta.PtaPtInsidePolygon, 'ptaPtInsidePolygon');
end;

procedure Test_ptaPolygonIsConvex;
begin
  AssertFuncLoaded(@Lept.Pta.PtaPolygonIsConvex, 'ptaPolygonIsConvex');
end;

procedure Test_ptaGetMinMax;
begin
  AssertFuncLoaded(@Lept.Pta.PtaGetMinMax, 'ptaGetMinMax');
end;

procedure Test_ptaSelectByValue;
begin
  AssertFuncLoaded(@Lept.Pta.PtaSelectByValue, 'ptaSelectByValue');
end;

procedure Test_ptaCropToMask;
begin
  AssertFuncLoaded(@Lept.Pta.PtaCropToMask, 'ptaCropToMask');
end;

procedure Test_ptaGetLinearLSF;
begin
  AssertFuncLoaded(@Lept.Pta.PtaGetLinearLSF, 'ptaGetLinearLSF');
end;

procedure Test_ptaGetQuadraticLSF;
begin
  AssertFuncLoaded(@Lept.Pta.PtaGetQuadraticLSF, 'ptaGetQuadraticLSF');
end;

procedure Test_ptaGetCubicLSF;
begin
  AssertFuncLoaded(@Lept.Pta.PtaGetCubicLSF, 'ptaGetCubicLSF');
end;

procedure Test_ptaGetQuarticLSF;
begin
  AssertFuncLoaded(@Lept.Pta.PtaGetQuarticLSF, 'ptaGetQuarticLSF');
end;

procedure Test_ptaNoisyLinearLSF;
begin
  AssertFuncLoaded(@Lept.Pta.PtaNoisyLinearLSF, 'ptaNoisyLinearLSF');
end;

procedure Test_ptaNoisyQuadraticLSF;
begin
  AssertFuncLoaded(@Lept.Pta.PtaNoisyQuadraticLSF, 'ptaNoisyQuadraticLSF');
end;

procedure Test_ptaGetPixelsFromPix;
begin
  AssertFuncLoaded(@Lept.Pta.PtaGetPixelsFromPix, 'ptaGetPixelsFromPix');
end;

procedure Test_ptaGetBoundaryPixels;
begin
  AssertFuncLoaded(@Lept.Pta.PtaGetBoundaryPixels, 'ptaGetBoundaryPixels');
end;

procedure Test_ptaaGetBoundaryPixels;
begin
  AssertFuncLoaded(@Lept.Pta.PtaaGetBoundaryPixels, 'ptaaGetBoundaryPixels');
end;

procedure Test_ptaaIndexLabeledPixels;
begin
  AssertFuncLoaded(@Lept.Pta.PtaaIndexLabeledPixels, 'ptaaIndexLabeledPixels');
end;

procedure Test_ptaGetNeighborPixLocs;
begin
  AssertFuncLoaded(@Lept.Pta.PtaGetNeighborPixLocs, 'ptaGetNeighborPixLocs');
end;

procedure Test_ptaConvertToNuma;
begin
  AssertFuncLoaded(@Lept.Pta.PtaConvertToNuma, 'ptaConvertToNuma');
end;

procedure Test_ptaReplicatePattern;
begin
  AssertFuncLoaded(@Lept.Pta.PtaReplicatePattern, 'ptaReplicatePattern');
end;

procedure Test_ptaSort;
begin
  AssertFuncLoaded(@Lept.Pta.PtaSort, 'ptaSort');
end;

procedure Test_ptaGetSortIndex;
begin
  AssertFuncLoaded(@Lept.Pta.PtaGetSortIndex, 'ptaGetSortIndex');
end;

procedure Test_ptaSortByIndex;
begin
  AssertFuncLoaded(@Lept.Pta.PtaSortByIndex, 'ptaSortByIndex');
end;

procedure Test_ptaaSortByIndex;
begin
  AssertFuncLoaded(@Lept.Pta.PtaaSortByIndex, 'ptaaSortByIndex');
end;

procedure Test_ptaGetRankValue;
begin
  AssertFuncLoaded(@Lept.Pta.PtaGetRankValue, 'ptaGetRankValue');
end;

procedure Test_ptaSort2d;
begin
  AssertFuncLoaded(@Lept.Pta.PtaSort2d, 'ptaSort2d');
end;

procedure Test_ptaEqual;
begin
  AssertFuncLoaded(@Lept.Pta.PtaEqual, 'ptaEqual');
end;

procedure Test_ptaRemoveDupsByAset;
begin
  AssertFuncLoaded(@Lept.Pta.PtaRemoveDupsByAset, 'ptaRemoveDupsByAset');
end;

procedure Test_ptaUnionByAset;
begin
  AssertFuncLoaded(@Lept.Pta.PtaUnionByAset, 'ptaUnionByAset');
end;

procedure Test_ptaIntersectionByAset;
begin
  AssertFuncLoaded(@Lept.Pta.PtaIntersectionByAset, 'ptaIntersectionByAset');
end;

procedure Test_ptaRemoveDupsByHmap;
begin
  AssertFuncLoaded(@Lept.Pta.PtaRemoveDupsByHmap, 'ptaRemoveDupsByHmap');
end;

procedure Test_ptaUnionByHmap;
begin
  AssertFuncLoaded(@Lept.Pta.PtaUnionByHmap, 'ptaUnionByHmap');
end;

procedure Test_ptaIntersectionByHmap;
begin
  AssertFuncLoaded(@Lept.Pta.PtaIntersectionByHmap, 'ptaIntersectionByHmap');
end;

procedure Test_Func_ptaCreate;
var
  P: Pointer;
begin
  P := Lept.Pta.PtaCreate(10);
  AssertNotNil(P, 'ptaCreate');
  AssertEqualsInt(0, Lept.Pta.PtaGetCount(P), 'empty');
  Lept.Pta.PtaDestroy(@P);
end;

procedure Test_Func_ptaAddPt;
var
  P: Pointer;
  X, Y: Single;
begin
  P := Lept.Pta.PtaCreate(5);
  Lept.Pta.PtaAddPt(P, 10.5, 20.3);
  Lept.Pta.PtaAddPt(P, 30.0, 40.0);
  AssertEqualsInt(2, Lept.Pta.PtaGetCount(P), 'count=2');
  X := 0;
  Y := 0;
  Lept.Pta.PtaGetPt(P, 0, @X, @Y);
  AssertTrue(Abs(X - 10.5) < 0.01, 'x value');
  AssertTrue(Abs(Y - 20.3) < 0.01, 'y value');
  Lept.Pta.PtaDestroy(@P);
end;

procedure Test_Func_ptaCopy;
var
  P, C: Pointer;
begin
  P := Lept.Pta.PtaCreate(5);
  Lept.Pta.PtaAddPt(P, 1.0, 2.0);
  C := Lept.Pta.PtaCopy(P);
  AssertNotNil(C, 'ptaCopy');
  AssertEqualsInt(1, Lept.Pta.PtaGetCount(C), 'copy count');
  Lept.Pta.PtaDestroy(@C);
  Lept.Pta.PtaDestroy(@P);
end;

initialization
  RegisterTest('Pta', 'ptaTranslate', @Test_ptaTranslate, []);
  RegisterTest('Pta', 'ptaScale', @Test_ptaScale, []);
  RegisterTest('Pta', 'ptaRotate', @Test_ptaRotate, []);
  RegisterTest('Pta', 'ptaAffineTransform', @Test_ptaAffineTransform, []);
  RegisterTest('Pta', 'ptaConvertToBoxa', @Test_ptaConvertToBoxa, []);
  RegisterTest('Pta', 'ptaConvertToBox', @Test_ptaConvertToBox, []);
  RegisterTest('Pta', 'ptaCreate', @Test_ptaCreate, []);
  RegisterTest('Pta', 'ptaCreateFromNuma', @Test_ptaCreateFromNuma, []);
  RegisterTest('Pta', 'ptaDestroy', @Test_ptaDestroy, []);
  RegisterTest('Pta', 'ptaCopy', @Test_ptaCopy, []);
  RegisterTest('Pta', 'ptaCopyRange', @Test_ptaCopyRange, []);
  RegisterTest('Pta', 'ptaClone', @Test_ptaClone, []);
  RegisterTest('Pta', 'ptaEmpty', @Test_ptaEmpty, []);
  RegisterTest('Pta', 'ptaAddPt', @Test_ptaAddPt, []);
  RegisterTest('Pta', 'ptaInsertPt', @Test_ptaInsertPt, []);
  RegisterTest('Pta', 'ptaRemovePt', @Test_ptaRemovePt, []);
  RegisterTest('Pta', 'ptaGetCount', @Test_ptaGetCount, []);
  RegisterTest('Pta', 'ptaGetPt', @Test_ptaGetPt, []);
  RegisterTest('Pta', 'ptaGetIPt', @Test_ptaGetIPt, []);
  RegisterTest('Pta', 'ptaSetPt', @Test_ptaSetPt, []);
  RegisterTest('Pta', 'ptaGetArrays', @Test_ptaGetArrays, []);
  RegisterTest('Pta', 'ptaRead', @Test_ptaRead, []);
  RegisterTest('Pta', 'ptaReadStream', @Test_ptaReadStream, []);
  RegisterTest('Pta', 'ptaReadMem', @Test_ptaReadMem, []);
  RegisterTest('Pta', 'ptaWriteDebug', @Test_ptaWriteDebug, []);
  RegisterTest('Pta', 'ptaWrite', @Test_ptaWrite, []);
  RegisterTest('Pta', 'ptaWriteStream', @Test_ptaWriteStream, []);
  RegisterTest('Pta', 'ptaWriteMem', @Test_ptaWriteMem, []);
  RegisterTest('Pta', 'ptaaCreate', @Test_ptaaCreate, []);
  RegisterTest('Pta', 'ptaaDestroy', @Test_ptaaDestroy, []);
  RegisterTest('Pta', 'ptaaAddPta', @Test_ptaaAddPta, []);
  RegisterTest('Pta', 'ptaaGetCount', @Test_ptaaGetCount, []);
  RegisterTest('Pta', 'ptaaGetPta', @Test_ptaaGetPta, []);
  RegisterTest('Pta', 'ptaaGetPt', @Test_ptaaGetPt, []);
  RegisterTest('Pta', 'ptaaInitFull', @Test_ptaaInitFull, []);
  RegisterTest('Pta', 'ptaaReplacePta', @Test_ptaaReplacePta, []);
  RegisterTest('Pta', 'ptaaAddPt', @Test_ptaaAddPt, []);
  RegisterTest('Pta', 'ptaaTruncate', @Test_ptaaTruncate, []);
  RegisterTest('Pta', 'ptaaRead', @Test_ptaaRead, []);
  RegisterTest('Pta', 'ptaaReadStream', @Test_ptaaReadStream, []);
  RegisterTest('Pta', 'ptaaReadMem', @Test_ptaaReadMem, []);
  RegisterTest('Pta', 'ptaaWriteDebug', @Test_ptaaWriteDebug, []);
  RegisterTest('Pta', 'ptaaWrite', @Test_ptaaWrite, []);
  RegisterTest('Pta', 'ptaaWriteStream', @Test_ptaaWriteStream, []);
  RegisterTest('Pta', 'ptaaWriteMem', @Test_ptaaWriteMem, []);
  RegisterTest('Pta', 'ptaSubsample', @Test_ptaSubsample, []);
  RegisterTest('Pta', 'ptaJoin', @Test_ptaJoin, []);
  RegisterTest('Pta', 'ptaaJoin', @Test_ptaaJoin, []);
  RegisterTest('Pta', 'ptaReverse', @Test_ptaReverse, []);
  RegisterTest('Pta', 'ptaTranspose', @Test_ptaTranspose, []);
  RegisterTest('Pta', 'ptaCyclicPerm', @Test_ptaCyclicPerm, []);
  RegisterTest('Pta', 'ptaSelectRange', @Test_ptaSelectRange, []);
  RegisterTest('Pta', 'ptaGetBoundingRegion', @Test_ptaGetBoundingRegion, []);
  RegisterTest('Pta', 'ptaGetRange', @Test_ptaGetRange, []);
  RegisterTest('Pta', 'ptaGetInsideBox', @Test_ptaGetInsideBox, []);
  RegisterTest('Pta', 'ptaContainsPt', @Test_ptaContainsPt, []);
  RegisterTest('Pta', 'ptaTestIntersection', @Test_ptaTestIntersection, []);
  RegisterTest('Pta', 'ptaTransform', @Test_ptaTransform, []);
  RegisterTest('Pta', 'ptaPtInsidePolygon', @Test_ptaPtInsidePolygon, []);
  RegisterTest('Pta', 'ptaPolygonIsConvex', @Test_ptaPolygonIsConvex, []);
  RegisterTest('Pta', 'ptaGetMinMax', @Test_ptaGetMinMax, []);
  RegisterTest('Pta', 'ptaSelectByValue', @Test_ptaSelectByValue, []);
  RegisterTest('Pta', 'ptaCropToMask', @Test_ptaCropToMask, []);
  RegisterTest('Pta', 'ptaGetLinearLSF', @Test_ptaGetLinearLSF, []);
  RegisterTest('Pta', 'ptaGetQuadraticLSF', @Test_ptaGetQuadraticLSF, []);
  RegisterTest('Pta', 'ptaGetCubicLSF', @Test_ptaGetCubicLSF, []);
  RegisterTest('Pta', 'ptaGetQuarticLSF', @Test_ptaGetQuarticLSF, []);
  RegisterTest('Pta', 'ptaNoisyLinearLSF', @Test_ptaNoisyLinearLSF, []);
  RegisterTest('Pta', 'ptaNoisyQuadraticLSF', @Test_ptaNoisyQuadraticLSF, []);
  RegisterTest('Pta', 'ptaGetPixelsFromPix', @Test_ptaGetPixelsFromPix, []);
  RegisterTest('Pta', 'ptaGetBoundaryPixels', @Test_ptaGetBoundaryPixels, []);
  RegisterTest('Pta', 'ptaaGetBoundaryPixels', @Test_ptaaGetBoundaryPixels, []);
  RegisterTest('Pta', 'ptaaIndexLabeledPixels', @Test_ptaaIndexLabeledPixels, []);
  RegisterTest('Pta', 'ptaGetNeighborPixLocs', @Test_ptaGetNeighborPixLocs, []);
  RegisterTest('Pta', 'ptaConvertToNuma', @Test_ptaConvertToNuma, []);
  RegisterTest('Pta', 'ptaReplicatePattern', @Test_ptaReplicatePattern, []);
  RegisterTest('Pta', 'ptaSort', @Test_ptaSort, []);
  RegisterTest('Pta', 'ptaGetSortIndex', @Test_ptaGetSortIndex, []);
  RegisterTest('Pta', 'ptaSortByIndex', @Test_ptaSortByIndex, []);
  RegisterTest('Pta', 'ptaaSortByIndex', @Test_ptaaSortByIndex, []);
  RegisterTest('Pta', 'ptaGetRankValue', @Test_ptaGetRankValue, []);
  RegisterTest('Pta', 'ptaSort2d', @Test_ptaSort2d, []);
  RegisterTest('Pta', 'ptaEqual', @Test_ptaEqual, []);
  RegisterTest('Pta', 'ptaRemoveDupsByAset', @Test_ptaRemoveDupsByAset, []);
  RegisterTest('Pta', 'ptaUnionByAset', @Test_ptaUnionByAset, []);
  RegisterTest('Pta', 'ptaIntersectionByAset', @Test_ptaIntersectionByAset, []);
  RegisterTest('Pta', 'ptaRemoveDupsByHmap', @Test_ptaRemoveDupsByHmap, []);
  RegisterTest('Pta', 'ptaUnionByHmap', @Test_ptaUnionByHmap, []);
  RegisterTest('Pta', 'ptaIntersectionByHmap', @Test_ptaIntersectionByHmap, []);

  RegisterTest('Pta', 'Func_ptaCreate', @Test_Func_ptaCreate, []);
  RegisterTest('Pta', 'Func_ptaAddPt', @Test_Func_ptaAddPt, []);
  RegisterTest('Pta', 'Func_ptaCopy', @Test_Func_ptaCopy, []);

end.
