{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestRecog;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses SysUtils, Leptonica, TestFramework, TestHelpers;

implementation

procedure Test_recogCreateFromRecog;
begin
  AssertFuncLoaded(@Lept.Recog.RecogCreateFromRecog, 'recogCreateFromRecog');
end;

procedure Test_recogCreateFromPixa;
begin
  AssertFuncLoaded(@Lept.Recog.RecogCreateFromPixa, 'recogCreateFromPixa');
end;

procedure Test_recogCreateFromPixaNoFinish;
begin
  AssertFuncLoaded(@Lept.Recog.RecogCreateFromPixaNoFinish, 'recogCreateFromPixaNoFinish');
end;

procedure Test_recogCreate;
begin
  AssertFuncLoaded(@Lept.Recog.RecogCreate, 'recogCreate');
end;

procedure Test_recogDestroy;
begin
  AssertFuncLoaded(@Lept.Recog.RecogDestroy, 'recogDestroy');
end;

procedure Test_recogGetCount;
begin
  AssertFuncLoaded(@Lept.Recog.RecogGetCount, 'recogGetCount');
end;

procedure Test_recogSetParams;
begin
  AssertFuncLoaded(@Lept.Recog.RecogSetParams, 'recogSetParams');
end;

procedure Test_recogGetClassIndex;
begin
  AssertFuncLoaded(@Lept.Recog.RecogGetClassIndex, 'recogGetClassIndex');
end;

procedure Test_recogStringToIndex;
begin
  AssertFuncLoaded(@Lept.Recog.RecogStringToIndex, 'recogStringToIndex');
end;

procedure Test_recogGetClassString;
begin
  AssertFuncLoaded(@Lept.Recog.RecogGetClassString, 'recogGetClassString');
end;

procedure Test_recogRead;
begin
  AssertFuncLoaded(@Lept.Recog.RecogRead, 'recogRead');
end;

procedure Test_recogReadStream;
begin
  AssertFuncLoaded(@Lept.Recog.RecogReadStream, 'recogReadStream');
end;

procedure Test_recogReadMem;
begin
  AssertFuncLoaded(@Lept.Recog.RecogReadMem, 'recogReadMem');
end;

procedure Test_recogWrite;
begin
  AssertFuncLoaded(@Lept.Recog.RecogWrite, 'recogWrite');
end;

procedure Test_recogWriteStream;
begin
  AssertFuncLoaded(@Lept.Recog.RecogWriteStream, 'recogWriteStream');
end;

procedure Test_recogWriteMem;
begin
  AssertFuncLoaded(@Lept.Recog.RecogWriteMem, 'recogWriteMem');
end;

procedure Test_recogExtractPixa;
begin
  AssertFuncLoaded(@Lept.Recog.RecogExtractPixa, 'recogExtractPixa');
end;

procedure Test_recogDecode;
begin
  AssertFuncLoaded(@Lept.Recog.RecogDecode, 'recogDecode');
end;

procedure Test_recogCreateDid;
begin
  AssertFuncLoaded(@Lept.Recog.RecogCreateDid, 'recogCreateDid');
end;

procedure Test_recogDestroyDid;
begin
  AssertFuncLoaded(@Lept.Recog.RecogDestroyDid, 'recogDestroyDid');
end;

procedure Test_recogDidExists;
begin
  AssertFuncLoaded(@Lept.Recog.RecogDidExists, 'recogDidExists');
end;

procedure Test_recogGetDid;
begin
  AssertFuncLoaded(@Lept.Recog.RecogGetDid, 'recogGetDid');
end;

procedure Test_recogSetChannelParams;
begin
  AssertFuncLoaded(@Lept.Recog.RecogSetChannelParams, 'recogSetChannelParams');
end;

procedure Test_recogIdentifyMultiple;
begin
  AssertFuncLoaded(@Lept.Recog.RecogIdentifyMultiple, 'recogIdentifyMultiple');
end;

procedure Test_recogSplitIntoCharacters;
begin
  AssertFuncLoaded(@Lept.Recog.RecogSplitIntoCharacters, 'recogSplitIntoCharacters');
end;

procedure Test_recogCorrelationBestRow;
begin
  AssertFuncLoaded(@Lept.Recog.RecogCorrelationBestRow, 'recogCorrelationBestRow');
end;

procedure Test_recogCorrelationBestChar;
begin
  AssertFuncLoaded(@Lept.Recog.RecogCorrelationBestChar, 'recogCorrelationBestChar');
end;

procedure Test_recogIdentifyPixa;
begin
  AssertFuncLoaded(@Lept.Recog.RecogIdentifyPixa, 'recogIdentifyPixa');
end;

procedure Test_recogIdentifyPix;
begin
  AssertFuncLoaded(@Lept.Recog.RecogIdentifyPix, 'recogIdentifyPix');
end;

procedure Test_recogSkipIdentify;
begin
  AssertFuncLoaded(@Lept.Recog.RecogSkipIdentify, 'recogSkipIdentify');
end;

procedure Test_rchaDestroy;
begin
  AssertFuncLoaded(@Lept.Recog.RchaDestroy, 'rchaDestroy');
end;

procedure Test_rchDestroy;
begin
  AssertFuncLoaded(@Lept.Recog.RchDestroy, 'rchDestroy');
end;

procedure Test_rchaExtract;
begin
  AssertFuncLoaded(@Lept.Recog.RchaExtract, 'rchaExtract');
end;

procedure Test_rchExtract;
begin
  AssertFuncLoaded(@Lept.Recog.RchExtract, 'rchExtract');
end;

procedure Test_recogProcessToIdentify;
begin
  AssertFuncLoaded(@Lept.Recog.RecogProcessToIdentify, 'recogProcessToIdentify');
end;

procedure Test_recogExtractNumbers;
begin
  AssertFuncLoaded(@Lept.Recog.RecogExtractNumbers, 'recogExtractNumbers');
end;

procedure Test_recogTrainLabeled;
begin
  AssertFuncLoaded(@Lept.Recog.RecogTrainLabeled, 'recogTrainLabeled');
end;

procedure Test_recogProcessLabeled;
begin
  AssertFuncLoaded(@Lept.Recog.RecogProcessLabeled, 'recogProcessLabeled');
end;

procedure Test_recogAddSample;
begin
  AssertFuncLoaded(@Lept.Recog.RecogAddSample, 'recogAddSample');
end;

procedure Test_recogModifyTemplate;
begin
  AssertFuncLoaded(@Lept.Recog.RecogModifyTemplate, 'recogModifyTemplate');
end;

procedure Test_recogAverageSamples;
begin
  AssertFuncLoaded(@Lept.Recog.RecogAverageSamples, 'recogAverageSamples');
end;

procedure Test_recogTrainingFinished;
begin
  AssertFuncLoaded(@Lept.Recog.RecogTrainingFinished, 'recogTrainingFinished');
end;

procedure Test_recogFilterPixaBySize;
begin
  AssertFuncLoaded(@Lept.Recog.RecogFilterPixaBySize, 'recogFilterPixaBySize');
end;

procedure Test_recogSortPixaByClass;
begin
  AssertFuncLoaded(@Lept.Recog.RecogSortPixaByClass, 'recogSortPixaByClass');
end;

procedure Test_recogRemoveOutliers1;
begin
  AssertFuncLoaded(@Lept.Recog.RecogRemoveOutliers1, 'recogRemoveOutliers1');
end;

procedure Test_recogRemoveOutliers2;
begin
  AssertFuncLoaded(@Lept.Recog.RecogRemoveOutliers2, 'recogRemoveOutliers2');
end;

procedure Test_recogTrainFromBoot;
begin
  AssertFuncLoaded(@Lept.Recog.RecogTrainFromBoot, 'recogTrainFromBoot');
end;

procedure Test_recogPadDigitTrainingSet;
begin
  AssertFuncLoaded(@Lept.Recog.RecogPadDigitTrainingSet, 'recogPadDigitTrainingSet');
end;

procedure Test_recogIsPaddingNeeded;
begin
  AssertFuncLoaded(@Lept.Recog.RecogIsPaddingNeeded, 'recogIsPaddingNeeded');
end;

procedure Test_recogAddDigitPadTemplates;
begin
  AssertFuncLoaded(@Lept.Recog.RecogAddDigitPadTemplates, 'recogAddDigitPadTemplates');
end;

procedure Test_recogMakeBootDigitRecog;
begin
  AssertFuncLoaded(@Lept.Recog.RecogMakeBootDigitRecog, 'recogMakeBootDigitRecog');
end;

procedure Test_recogMakeBootDigitTemplates;
begin
  AssertFuncLoaded(@Lept.Recog.RecogMakeBootDigitTemplates, 'recogMakeBootDigitTemplates');
end;

procedure Test_recogShowContent;
begin
  AssertFuncLoaded(@Lept.Recog.RecogShowContent, 'recogShowContent');
end;

procedure Test_recogDebugAverages;
begin
  AssertFuncLoaded(@Lept.Recog.RecogDebugAverages, 'recogDebugAverages');
end;

procedure Test_recogShowAverageTemplates;
begin
  AssertFuncLoaded(@Lept.Recog.RecogShowAverageTemplates, 'recogShowAverageTemplates');
end;

procedure Test_recogShowMatchesInRange;
begin
  AssertFuncLoaded(@Lept.Recog.RecogShowMatchesInRange, 'recogShowMatchesInRange');
end;

procedure Test_recogShowMatch;
begin
  AssertFuncLoaded(@Lept.Recog.RecogShowMatch, 'recogShowMatch');
end;

procedure Test_Func_recogCreate;
var
  R: Pointer;
begin
  R := Lept.Recog.RecogCreate(0, 40, 0, 128, 1);
  AssertNotNil(R, 'recogCreate');
  Lept.Recog.RecogDestroy(@R);
end;

initialization
  RegisterTest('Recog', 'recogCreateFromRecog', @Test_recogCreateFromRecog, []);
  RegisterTest('Recog', 'recogCreateFromPixa', @Test_recogCreateFromPixa, []);
  RegisterTest('Recog', 'recogCreateFromPixaNoFinish', @Test_recogCreateFromPixaNoFinish, []);
  RegisterTest('Recog', 'recogCreate', @Test_recogCreate, []);
  RegisterTest('Recog', 'recogDestroy', @Test_recogDestroy, []);
  RegisterTest('Recog', 'recogGetCount', @Test_recogGetCount, []);
  RegisterTest('Recog', 'recogSetParams', @Test_recogSetParams, []);
  RegisterTest('Recog', 'recogGetClassIndex', @Test_recogGetClassIndex, []);
  RegisterTest('Recog', 'recogStringToIndex', @Test_recogStringToIndex, []);
  RegisterTest('Recog', 'recogGetClassString', @Test_recogGetClassString, []);
  RegisterTest('Recog', 'recogRead', @Test_recogRead, []);
  RegisterTest('Recog', 'recogReadStream', @Test_recogReadStream, []);
  RegisterTest('Recog', 'recogReadMem', @Test_recogReadMem, []);
  RegisterTest('Recog', 'recogWrite', @Test_recogWrite, []);
  RegisterTest('Recog', 'recogWriteStream', @Test_recogWriteStream, []);
  RegisterTest('Recog', 'recogWriteMem', @Test_recogWriteMem, []);
  RegisterTest('Recog', 'recogExtractPixa', @Test_recogExtractPixa, []);
  RegisterTest('Recog', 'recogDecode', @Test_recogDecode, []);
  RegisterTest('Recog', 'recogCreateDid', @Test_recogCreateDid, []);
  RegisterTest('Recog', 'recogDestroyDid', @Test_recogDestroyDid, []);
  RegisterTest('Recog', 'recogDidExists', @Test_recogDidExists, []);
  RegisterTest('Recog', 'recogGetDid', @Test_recogGetDid, []);
  RegisterTest('Recog', 'recogSetChannelParams', @Test_recogSetChannelParams, []);
  RegisterTest('Recog', 'recogIdentifyMultiple', @Test_recogIdentifyMultiple, []);
  RegisterTest('Recog', 'recogSplitIntoCharacters', @Test_recogSplitIntoCharacters, []);
  RegisterTest('Recog', 'recogCorrelationBestRow', @Test_recogCorrelationBestRow, []);
  RegisterTest('Recog', 'recogCorrelationBestChar', @Test_recogCorrelationBestChar, []);
  RegisterTest('Recog', 'recogIdentifyPixa', @Test_recogIdentifyPixa, []);
  RegisterTest('Recog', 'recogIdentifyPix', @Test_recogIdentifyPix, []);
  RegisterTest('Recog', 'recogSkipIdentify', @Test_recogSkipIdentify, []);
  RegisterTest('Recog', 'rchaDestroy', @Test_rchaDestroy, []);
  RegisterTest('Recog', 'rchDestroy', @Test_rchDestroy, []);
  RegisterTest('Recog', 'rchaExtract', @Test_rchaExtract, []);
  RegisterTest('Recog', 'rchExtract', @Test_rchExtract, []);
  RegisterTest('Recog', 'recogProcessToIdentify', @Test_recogProcessToIdentify, []);
  RegisterTest('Recog', 'recogExtractNumbers', @Test_recogExtractNumbers, []);
  RegisterTest('Recog', 'recogTrainLabeled', @Test_recogTrainLabeled, []);
  RegisterTest('Recog', 'recogProcessLabeled', @Test_recogProcessLabeled, []);
  RegisterTest('Recog', 'recogAddSample', @Test_recogAddSample, []);
  RegisterTest('Recog', 'recogModifyTemplate', @Test_recogModifyTemplate, []);
  RegisterTest('Recog', 'recogAverageSamples', @Test_recogAverageSamples, []);
  RegisterTest('Recog', 'recogTrainingFinished', @Test_recogTrainingFinished, []);
  RegisterTest('Recog', 'recogFilterPixaBySize', @Test_recogFilterPixaBySize, []);
  RegisterTest('Recog', 'recogSortPixaByClass', @Test_recogSortPixaByClass, []);
  RegisterTest('Recog', 'recogRemoveOutliers1', @Test_recogRemoveOutliers1, []);
  RegisterTest('Recog', 'recogRemoveOutliers2', @Test_recogRemoveOutliers2, []);
  RegisterTest('Recog', 'recogTrainFromBoot', @Test_recogTrainFromBoot, []);
  RegisterTest('Recog', 'recogPadDigitTrainingSet', @Test_recogPadDigitTrainingSet, []);
  RegisterTest('Recog', 'recogIsPaddingNeeded', @Test_recogIsPaddingNeeded, []);
  RegisterTest('Recog', 'recogAddDigitPadTemplates', @Test_recogAddDigitPadTemplates, []);
  RegisterTest('Recog', 'recogMakeBootDigitRecog', @Test_recogMakeBootDigitRecog, []);
  RegisterTest('Recog', 'recogMakeBootDigitTemplates', @Test_recogMakeBootDigitTemplates, []);
  RegisterTest('Recog', 'recogShowContent', @Test_recogShowContent, []);
  RegisterTest('Recog', 'recogDebugAverages', @Test_recogDebugAverages, []);
  RegisterTest('Recog', 'recogShowAverageTemplates', @Test_recogShowAverageTemplates, []);
  RegisterTest('Recog', 'recogShowMatchesInRange', @Test_recogShowMatchesInRange, []);
  RegisterTest('Recog', 'recogShowMatch', @Test_recogShowMatch, []);

  RegisterTest('Recog', 'Func_recogCreate', @Test_Func_recogCreate, []);

end.
