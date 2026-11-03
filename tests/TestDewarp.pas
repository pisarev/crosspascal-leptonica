{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestDewarp;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_dewarpCreate;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpCreate, 'dewarpCreate');
end;

procedure Test_dewarpCreateRef;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpCreateRef, 'dewarpCreateRef');
end;

procedure Test_dewarpDestroy;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpDestroy, 'dewarpDestroy');
end;

procedure Test_dewarpaCreate;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaCreate, 'dewarpaCreate');
end;

procedure Test_dewarpaCreateFromPixacomp;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaCreateFromPixacomp, 'dewarpaCreateFromPixacomp');
end;

procedure Test_dewarpaDestroy;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaDestroy, 'dewarpaDestroy');
end;

procedure Test_dewarpaDestroyDewarp;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaDestroyDewarp, 'dewarpaDestroyDewarp');
end;

procedure Test_dewarpaInsertDewarp;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaInsertDewarp, 'dewarpaInsertDewarp');
end;

procedure Test_dewarpaGetDewarp;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaGetDewarp, 'dewarpaGetDewarp');
end;

procedure Test_dewarpaSetCurvatures;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaSetCurvatures, 'dewarpaSetCurvatures');
end;

procedure Test_dewarpaUseBothArrays;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaUseBothArrays, 'dewarpaUseBothArrays');
end;

procedure Test_dewarpaSetCheckColumns;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaSetCheckColumns, 'dewarpaSetCheckColumns');
end;

procedure Test_dewarpaSetMaxDistance;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaSetMaxDistance, 'dewarpaSetMaxDistance');
end;

procedure Test_dewarpRead;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpRead, 'dewarpRead');
end;

procedure Test_dewarpReadStream;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpReadStream, 'dewarpReadStream');
end;

procedure Test_dewarpReadMem;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpReadMem, 'dewarpReadMem');
end;

procedure Test_dewarpWrite;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpWrite, 'dewarpWrite');
end;

procedure Test_dewarpWriteStream;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpWriteStream, 'dewarpWriteStream');
end;

procedure Test_dewarpWriteMem;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpWriteMem, 'dewarpWriteMem');
end;

procedure Test_dewarpaRead;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaRead, 'dewarpaRead');
end;

procedure Test_dewarpaReadStream;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaReadStream, 'dewarpaReadStream');
end;

procedure Test_dewarpaReadMem;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaReadMem, 'dewarpaReadMem');
end;

procedure Test_dewarpaWrite;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaWrite, 'dewarpaWrite');
end;

procedure Test_dewarpaWriteStream;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaWriteStream, 'dewarpaWriteStream');
end;

procedure Test_dewarpaWriteMem;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaWriteMem, 'dewarpaWriteMem');
end;

procedure Test_dewarpBuildPageModel;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpBuildPageModel, 'dewarpBuildPageModel');
end;

procedure Test_dewarpFindVertDisparity;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpFindVertDisparity, 'dewarpFindVertDisparity');
end;

procedure Test_dewarpFindHorizDisparity;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpFindHorizDisparity, 'dewarpFindHorizDisparity');
end;

procedure Test_dewarpGetTextlineCenters;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpGetTextlineCenters, 'dewarpGetTextlineCenters');
end;

procedure Test_dewarpRemoveShortLines;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpRemoveShortLines, 'dewarpRemoveShortLines');
end;

procedure Test_dewarpFindHorizSlopeDisparity;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpFindHorizSlopeDisparity, 'dewarpFindHorizSlopeDisparity');
end;

procedure Test_dewarpBuildLineModel;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpBuildLineModel, 'dewarpBuildLineModel');
end;

procedure Test_dewarpaModelStatus;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaModelStatus, 'dewarpaModelStatus');
end;

procedure Test_dewarpaApplyDisparity;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaApplyDisparity, 'dewarpaApplyDisparity');
end;

procedure Test_dewarpaApplyDisparityBoxa;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaApplyDisparityBoxa, 'dewarpaApplyDisparityBoxa');
end;

procedure Test_dewarpMinimize;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpMinimize, 'dewarpMinimize');
end;

procedure Test_dewarpPopulateFullRes;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpPopulateFullRes, 'dewarpPopulateFullRes');
end;

procedure Test_dewarpSinglePage;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpSinglePage, 'dewarpSinglePage');
end;

procedure Test_dewarpSinglePageInit;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpSinglePageInit, 'dewarpSinglePageInit');
end;

procedure Test_dewarpSinglePageRun;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpSinglePageRun, 'dewarpSinglePageRun');
end;

procedure Test_dewarpaListPages;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaListPages, 'dewarpaListPages');
end;

procedure Test_dewarpaSetValidModels;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaSetValidModels, 'dewarpaSetValidModels');
end;

procedure Test_dewarpaInsertRefModels;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaInsertRefModels, 'dewarpaInsertRefModels');
end;

procedure Test_dewarpaStripRefModels;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaStripRefModels, 'dewarpaStripRefModels');
end;

procedure Test_dewarpaRestoreModels;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaRestoreModels, 'dewarpaRestoreModels');
end;

procedure Test_dewarpaInfo;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaInfo, 'dewarpaInfo');
end;

procedure Test_dewarpaModelStats;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaModelStats, 'dewarpaModelStats');
end;

procedure Test_dewarpaShowArrays;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpaShowArrays, 'dewarpaShowArrays');
end;

procedure Test_dewarpDebug;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpDebug, 'dewarpDebug');
end;

procedure Test_dewarpShowResults;
begin
  AssertFuncLoaded(@Lept.Dewarp.DewarpShowResults, 'dewarpShowResults');
end;

procedure Test_Func_dewarpaCreate;
var
  D: Pointer;
begin
  D := Lept.Dewarp.DewarpaCreate(1, 0, 1, 0, 0);
  AssertNotNil(D, 'dewarpaCreate');
  Lept.Dewarp.DewarpaDestroy(@D);
end;

initialization
  RegisterTest('Dewarp', 'dewarpCreate', @Test_dewarpCreate, []);
  RegisterTest('Dewarp', 'dewarpCreateRef', @Test_dewarpCreateRef, []);
  RegisterTest('Dewarp', 'dewarpDestroy', @Test_dewarpDestroy, []);
  RegisterTest('Dewarp', 'dewarpaCreate', @Test_dewarpaCreate, []);
  RegisterTest('Dewarp', 'dewarpaCreateFromPixacomp', @Test_dewarpaCreateFromPixacomp, []);
  RegisterTest('Dewarp', 'dewarpaDestroy', @Test_dewarpaDestroy, []);
  RegisterTest('Dewarp', 'dewarpaDestroyDewarp', @Test_dewarpaDestroyDewarp, []);
  RegisterTest('Dewarp', 'dewarpaInsertDewarp', @Test_dewarpaInsertDewarp, []);
  RegisterTest('Dewarp', 'dewarpaGetDewarp', @Test_dewarpaGetDewarp, []);
  RegisterTest('Dewarp', 'dewarpaSetCurvatures', @Test_dewarpaSetCurvatures, []);
  RegisterTest('Dewarp', 'dewarpaUseBothArrays', @Test_dewarpaUseBothArrays, []);
  RegisterTest('Dewarp', 'dewarpaSetCheckColumns', @Test_dewarpaSetCheckColumns, []);
  RegisterTest('Dewarp', 'dewarpaSetMaxDistance', @Test_dewarpaSetMaxDistance, []);
  RegisterTest('Dewarp', 'dewarpRead', @Test_dewarpRead, []);
  RegisterTest('Dewarp', 'dewarpReadStream', @Test_dewarpReadStream, []);
  RegisterTest('Dewarp', 'dewarpReadMem', @Test_dewarpReadMem, []);
  RegisterTest('Dewarp', 'dewarpWrite', @Test_dewarpWrite, []);
  RegisterTest('Dewarp', 'dewarpWriteStream', @Test_dewarpWriteStream, []);
  RegisterTest('Dewarp', 'dewarpWriteMem', @Test_dewarpWriteMem, []);
  RegisterTest('Dewarp', 'dewarpaRead', @Test_dewarpaRead, []);
  RegisterTest('Dewarp', 'dewarpaReadStream', @Test_dewarpaReadStream, []);
  RegisterTest('Dewarp', 'dewarpaReadMem', @Test_dewarpaReadMem, []);
  RegisterTest('Dewarp', 'dewarpaWrite', @Test_dewarpaWrite, []);
  RegisterTest('Dewarp', 'dewarpaWriteStream', @Test_dewarpaWriteStream, []);
  RegisterTest('Dewarp', 'dewarpaWriteMem', @Test_dewarpaWriteMem, []);
  RegisterTest('Dewarp', 'dewarpBuildPageModel', @Test_dewarpBuildPageModel, []);
  RegisterTest('Dewarp', 'dewarpFindVertDisparity', @Test_dewarpFindVertDisparity, []);
  RegisterTest('Dewarp', 'dewarpFindHorizDisparity', @Test_dewarpFindHorizDisparity, []);
  RegisterTest('Dewarp', 'dewarpGetTextlineCenters', @Test_dewarpGetTextlineCenters, []);
  RegisterTest('Dewarp', 'dewarpRemoveShortLines', @Test_dewarpRemoveShortLines, []);
  RegisterTest('Dewarp', 'dewarpFindHorizSlopeDisparity', @Test_dewarpFindHorizSlopeDisparity, []);
  RegisterTest('Dewarp', 'dewarpBuildLineModel', @Test_dewarpBuildLineModel, []);
  RegisterTest('Dewarp', 'dewarpaModelStatus', @Test_dewarpaModelStatus, []);
  RegisterTest('Dewarp', 'dewarpaApplyDisparity', @Test_dewarpaApplyDisparity, []);
  RegisterTest('Dewarp', 'dewarpaApplyDisparityBoxa', @Test_dewarpaApplyDisparityBoxa, []);
  RegisterTest('Dewarp', 'dewarpMinimize', @Test_dewarpMinimize, []);
  RegisterTest('Dewarp', 'dewarpPopulateFullRes', @Test_dewarpPopulateFullRes, []);
  RegisterTest('Dewarp', 'dewarpSinglePage', @Test_dewarpSinglePage, []);
  RegisterTest('Dewarp', 'dewarpSinglePageInit', @Test_dewarpSinglePageInit, []);
  RegisterTest('Dewarp', 'dewarpSinglePageRun', @Test_dewarpSinglePageRun, []);
  RegisterTest('Dewarp', 'dewarpaListPages', @Test_dewarpaListPages, []);
  RegisterTest('Dewarp', 'dewarpaSetValidModels', @Test_dewarpaSetValidModels, []);
  RegisterTest('Dewarp', 'dewarpaInsertRefModels', @Test_dewarpaInsertRefModels, []);
  RegisterTest('Dewarp', 'dewarpaStripRefModels', @Test_dewarpaStripRefModels, []);
  RegisterTest('Dewarp', 'dewarpaRestoreModels', @Test_dewarpaRestoreModels, []);
  RegisterTest('Dewarp', 'dewarpaInfo', @Test_dewarpaInfo, []);
  RegisterTest('Dewarp', 'dewarpaModelStats', @Test_dewarpaModelStats, []);
  RegisterTest('Dewarp', 'dewarpaShowArrays', @Test_dewarpaShowArrays, []);
  RegisterTest('Dewarp', 'dewarpDebug', @Test_dewarpDebug, []);
  RegisterTest('Dewarp', 'dewarpShowResults', @Test_dewarpShowResults, []);

  RegisterTest('Dewarp', 'Func_dewarpaCreate', @Test_Func_dewarpaCreate, []);

end.
