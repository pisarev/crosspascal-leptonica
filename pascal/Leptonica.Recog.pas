{ ************************************************************************** }
{                                                                            }
{ Leptonica.Recog                                                            }
{                                                                            }
{ Copyright © 2026 Yuriy Pisarev (ypisareff@outlook.com)                     }
{                                                                            }
{ ************************************************************************** }

unit Leptonica.Recog;

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
  TLeptRecogModule = record
  public
    type
      TRecogCreateFromRecog = function(recs: PL_Recog; scalew: Integer; scaleh: Integer; linew: Integer;
        threshold: Integer; maxyshift: Integer): PL_Recog; cdecl;
      TRecogCreateFromPixa = function(pixa: PPixa; scalew: Integer; scaleh: Integer; linew: Integer;
        threshold: Integer; maxyshift: Integer): PL_Recog; cdecl;
      TRecogCreateFromPixaNoFinish = function(pixa: PPixa; scalew: Integer; scaleh: Integer; linew: Integer;
        threshold: Integer; maxyshift: Integer): PL_Recog; cdecl;
      TRecogCreate = function(scalew: Integer; scaleh: Integer; linew: Integer; threshold: Integer;
        maxyshift: Integer): PL_Recog; cdecl;
      TRecogDestroy = procedure(precog: PPL_Recog); cdecl;
      TRecogGetCount = function(recog: PL_Recog): Integer; cdecl;
      TRecogSetParams = function(recog: PL_Recog; &type: Integer; min_nopad: Integer; max_wh_ratio: Single;
        max_ht_ratio: Single): Integer; cdecl;
      TRecogGetClassIndex = function(recog: PL_Recog; val: Integer; text: PAnsiChar;
        pindex: PInteger): Integer; cdecl;
      TRecogStringToIndex = function(recog: PL_Recog; text: PAnsiChar; pindex: PInteger): Integer; cdecl;
      TRecogGetClassString = function(recog: PL_Recog; index: Integer; pcharstr: PPointer): Integer; cdecl;
      TRecogRead = function(filename: PAnsiChar): PL_Recog; cdecl;
      TRecogReadStream = function(fp: Pointer): PL_Recog; cdecl;
      TRecogReadMem = function(data: PByte; size: NativeUInt): PL_Recog; cdecl;
      TRecogWrite = function(filename: PAnsiChar; recog: PL_Recog): Integer; cdecl;
      TRecogWriteStream = function(fp: Pointer; recog: PL_Recog): Integer; cdecl;
      TRecogWriteMem = function(pdata: PPointer; psize: PNativeUInt; recog: PL_Recog): Integer; cdecl;
      TRecogExtractPixa = function(recog: PL_Recog): PPixa; cdecl;
      TRecogDecode = function(recog: PL_Recog; pixs: PPix; nlevels: Integer; ppixdb: PPPix): PBoxa; cdecl;
      TRecogCreateDid = function(recog: PL_Recog; pixs: PPix): Integer; cdecl;
      TRecogDestroyDid = function(recog: PL_Recog): Integer; cdecl;
      TRecogDidExists = function(recog: PL_Recog): Integer; cdecl;
      TRecogGetDid = function(recog: PL_Recog): PL_Rdid; cdecl;
      TRecogSetChannelParams = function(recog: PL_Recog; nlevels: Integer): Integer; cdecl;
      TRecogIdentifyMultiple = function(recog: PL_Recog; pixs: PPix; minh: Integer; skipsplit: Integer;
        pboxa: PPBoxa; ppixa: PPPixa; ppixdb: PPPix; debugsplit: Integer): Integer; cdecl;
      TRecogSplitIntoCharacters = function(recog: PL_Recog; pixs: PPix; minh: Integer; skipsplit: Integer;
        pboxa: PPBoxa; ppixa: PPPixa; debug: Integer): Integer; cdecl;
      TRecogCorrelationBestRow = function(recog: PL_Recog; pixs: PPix; pboxa: PPBoxa; pnascore: PPNuma;
        pnaindex: PPNuma; psachar: Pointer; debug: Integer): Integer; cdecl;
      TRecogCorrelationBestChar = function(recog: PL_Recog; pixs: PPix; pbox: PPBox; pscore: PSingle;
        pindex: PInteger; pcharstr: PPointer; ppixdb: PPPix): Integer; cdecl;
      TRecogIdentifyPixa = function(recog: PL_Recog; pixa: PPixa; ppixdb: PPPix): Integer; cdecl;
      TRecogIdentifyPix = function(recog: PL_Recog; pixs: PPix; ppixdb: PPPix): Integer; cdecl;
      TRecogSkipIdentify = function(recog: PL_Recog): Integer; cdecl;
      TRchaDestroy = procedure(prcha: PPointer); cdecl;
      TRchDestroy = procedure(prch: PPointer); cdecl;
      TRchaExtract = function(rcha: Pointer; pnaindex: PPNuma; pnascore: PPNuma; psatext: Pointer;
        pnasample: PPNuma; pnaxloc: PPNuma; pnayloc: PPNuma; pnawidth: PPNuma): Integer; cdecl;
      TRchExtract = function(rch: Pointer; pindex: PInteger; pscore: PSingle; ptext: PPointer;
        psample: PInteger; pxloc: PInteger; pyloc: PInteger; pwidth: PInteger): Integer; cdecl;
      TRecogProcessToIdentify = function(recog: PL_Recog; pixs: PPix; pad: Integer): PPix; cdecl;
      TRecogExtractNumbers = function(recog: PL_Recog; boxas: PBoxa; scorethresh: Single;
        spacethresh: Integer; pbaa: PPointer; pnaa: PPointer): PSarray; cdecl;
      TRecogTrainLabeled = function(recog: PL_Recog; pixs: PPix; box: PBox; text: PAnsiChar;
        debug: Integer): Integer; cdecl;
      TRecogProcessLabeled = function(recog: PL_Recog; pixs: PPix; box: PBox; text: PAnsiChar;
        ppix: PPPix): Integer; cdecl;
      TRecogAddSample = function(recog: PL_Recog; pix: PPix; debug: Integer): Integer; cdecl;
      TRecogModifyTemplate = function(recog: PL_Recog; pixs: PPix): PPix; cdecl;
      TRecogAverageSamples = function(recog: PL_Recog; debug: Integer): Integer; cdecl;
      TRecogTrainingFinished = function(precog: PPL_Recog; modifyflag: Integer; minsize: Integer;
        minfract: Single): Integer; cdecl;
      TRecogFilterPixaBySize = function(pixas: PPixa; setsize: Integer; maxkeep: Integer;
        max_ht_ratio: Single; pna: PPNuma): PPixa; cdecl;
      TRecogSortPixaByClass = function(pixa: PPixa; setsize: Integer): PPixa; cdecl;
      TRecogRemoveOutliers1 = function(precog: PPL_Recog; minscore: Single; mintarget: Integer;
        minsize: Integer; ppixsave: PPPixa; ppixrem: PPPixa): Integer; cdecl;
      TRecogRemoveOutliers2 = function(precog: PPL_Recog; minscore: Single; minsize: Integer;
        ppixsave: PPPixa; ppixrem: PPPixa): Integer; cdecl;
      TRecogTrainFromBoot = function(recogboot: PL_Recog; pixas: PPixa; minscore: Single; threshold: Integer;
        debug: Integer): PL_Recog; cdecl;
      TRecogPadDigitTrainingSet = function(precog: PPL_Recog; scaleh: Integer;
        linew: Integer): Integer; cdecl;
      TRecogIsPaddingNeeded = function(recog: PL_Recog; psa: Pointer): Integer; cdecl;
      TRecogAddDigitPadTemplates = function(recog: PL_Recog; sa: PSarray): PPixa; cdecl;
      TRecogMakeBootDigitRecog = function(nsamp: Integer; scaleh: Integer; linew: Integer; maxyshift: Integer;
        debug: Integer): PL_Recog; cdecl;
      TRecogMakeBootDigitTemplates = function(nsamp: Integer; debug: Integer): PPixa; cdecl;
      TRecogShowContent = function(fp: Pointer; recog: PL_Recog; index: Integer;
        display: Integer): Integer; cdecl;
      TRecogDebugAverages = function(recog: PL_Recog; debug: Integer): Integer; cdecl;
      TRecogShowAverageTemplates = function(recog: PL_Recog): Integer; cdecl;
      TRecogShowMatchesInRange = function(recog: PL_Recog; pixa: PPixa; minscore: Single; maxscore: Single;
        display: Integer): Integer; cdecl;
      TRecogShowMatch = function(recog: PL_Recog; pix1: PPix; pix2: PPix; box: PBox; index: Integer;
        score: Single): PPix; cdecl;
    var
      RecogCreateFromRecog: TRecogCreateFromRecog;
      RecogCreateFromPixa: TRecogCreateFromPixa;
      RecogCreateFromPixaNoFinish: TRecogCreateFromPixaNoFinish;
      RecogCreate: TRecogCreate;
      RecogDestroy: TRecogDestroy;
      RecogGetCount: TRecogGetCount;
      RecogSetParams: TRecogSetParams;
      RecogGetClassIndex: TRecogGetClassIndex;
      RecogStringToIndex: TRecogStringToIndex;
      RecogGetClassString: TRecogGetClassString;
      RecogRead: TRecogRead;
      RecogReadStream: TRecogReadStream;
      RecogReadMem: TRecogReadMem;
      RecogWrite: TRecogWrite;
      RecogWriteStream: TRecogWriteStream;
      RecogWriteMem: TRecogWriteMem;
      RecogExtractPixa: TRecogExtractPixa;
      RecogDecode: TRecogDecode;
      RecogCreateDid: TRecogCreateDid;
      RecogDestroyDid: TRecogDestroyDid;
      RecogDidExists: TRecogDidExists;
      RecogGetDid: TRecogGetDid;
      RecogSetChannelParams: TRecogSetChannelParams;
      RecogIdentifyMultiple: TRecogIdentifyMultiple;
      RecogSplitIntoCharacters: TRecogSplitIntoCharacters;
      RecogCorrelationBestRow: TRecogCorrelationBestRow;
      RecogCorrelationBestChar: TRecogCorrelationBestChar;
      RecogIdentifyPixa: TRecogIdentifyPixa;
      RecogIdentifyPix: TRecogIdentifyPix;
      RecogSkipIdentify: TRecogSkipIdentify;
      RchaDestroy: TRchaDestroy;
      RchDestroy: TRchDestroy;
      RchaExtract: TRchaExtract;
      RchExtract: TRchExtract;
      RecogProcessToIdentify: TRecogProcessToIdentify;
      RecogExtractNumbers: TRecogExtractNumbers;
      RecogTrainLabeled: TRecogTrainLabeled;
      RecogProcessLabeled: TRecogProcessLabeled;
      RecogAddSample: TRecogAddSample;
      RecogModifyTemplate: TRecogModifyTemplate;
      RecogAverageSamples: TRecogAverageSamples;
      RecogTrainingFinished: TRecogTrainingFinished;
      RecogFilterPixaBySize: TRecogFilterPixaBySize;
      RecogSortPixaByClass: TRecogSortPixaByClass;
      RecogRemoveOutliers1: TRecogRemoveOutliers1;
      RecogRemoveOutliers2: TRecogRemoveOutliers2;
      RecogTrainFromBoot: TRecogTrainFromBoot;
      RecogPadDigitTrainingSet: TRecogPadDigitTrainingSet;
      RecogIsPaddingNeeded: TRecogIsPaddingNeeded;
      RecogAddDigitPadTemplates: TRecogAddDigitPadTemplates;
      RecogMakeBootDigitRecog: TRecogMakeBootDigitRecog;
      RecogMakeBootDigitTemplates: TRecogMakeBootDigitTemplates;
      RecogShowContent: TRecogShowContent;
      RecogDebugAverages: TRecogDebugAverages;
      RecogShowAverageTemplates: TRecogShowAverageTemplates;
      RecogShowMatchesInRange: TRecogShowMatchesInRange;
      RecogShowMatch: TRecogShowMatch;
    procedure Initialize(const Handle: TLibHandle);
  end;

implementation

procedure TLeptRecogModule.Initialize(const Handle: TLibHandle);
begin
  RecogCreateFromRecog := LeptBind(Handle, 'recogCreateFromRecog');
  RecogCreateFromPixa := LeptBind(Handle, 'recogCreateFromPixa');
  RecogCreateFromPixaNoFinish := LeptBind(Handle, 'recogCreateFromPixaNoFinish');
  RecogCreate := LeptBind(Handle, 'recogCreate');
  RecogDestroy := LeptBind(Handle, 'recogDestroy');
  RecogGetCount := LeptBind(Handle, 'recogGetCount');
  RecogSetParams := LeptBind(Handle, 'recogSetParams');
  RecogGetClassIndex := LeptBind(Handle, 'recogGetClassIndex');
  RecogStringToIndex := LeptBind(Handle, 'recogStringToIndex');
  RecogGetClassString := LeptBind(Handle, 'recogGetClassString');
  RecogRead := LeptBind(Handle, 'recogRead');
  RecogReadStream := LeptBind(Handle, 'recogReadStream');
  RecogReadMem := LeptBind(Handle, 'recogReadMem');
  RecogWrite := LeptBind(Handle, 'recogWrite');
  RecogWriteStream := LeptBind(Handle, 'recogWriteStream');
  RecogWriteMem := LeptBind(Handle, 'recogWriteMem');
  RecogExtractPixa := LeptBind(Handle, 'recogExtractPixa');
  RecogDecode := LeptBind(Handle, 'recogDecode');
  RecogCreateDid := LeptBind(Handle, 'recogCreateDid');
  RecogDestroyDid := LeptBind(Handle, 'recogDestroyDid');
  RecogDidExists := LeptBind(Handle, 'recogDidExists');
  RecogGetDid := LeptBind(Handle, 'recogGetDid');
  RecogSetChannelParams := LeptBind(Handle, 'recogSetChannelParams');
  RecogIdentifyMultiple := LeptBind(Handle, 'recogIdentifyMultiple');
  RecogSplitIntoCharacters := LeptBind(Handle, 'recogSplitIntoCharacters');
  RecogCorrelationBestRow := LeptBind(Handle, 'recogCorrelationBestRow');
  RecogCorrelationBestChar := LeptBind(Handle, 'recogCorrelationBestChar');
  RecogIdentifyPixa := LeptBind(Handle, 'recogIdentifyPixa');
  RecogIdentifyPix := LeptBind(Handle, 'recogIdentifyPix');
  RecogSkipIdentify := LeptBind(Handle, 'recogSkipIdentify');
  RchaDestroy := LeptBind(Handle, 'rchaDestroy');
  RchDestroy := LeptBind(Handle, 'rchDestroy');
  RchaExtract := LeptBind(Handle, 'rchaExtract');
  RchExtract := LeptBind(Handle, 'rchExtract');
  RecogProcessToIdentify := LeptBind(Handle, 'recogProcessToIdentify');
  RecogExtractNumbers := LeptBind(Handle, 'recogExtractNumbers');
  RecogTrainLabeled := LeptBind(Handle, 'recogTrainLabeled');
  RecogProcessLabeled := LeptBind(Handle, 'recogProcessLabeled');
  RecogAddSample := LeptBind(Handle, 'recogAddSample');
  RecogModifyTemplate := LeptBind(Handle, 'recogModifyTemplate');
  RecogAverageSamples := LeptBind(Handle, 'recogAverageSamples');
  RecogTrainingFinished := LeptBind(Handle, 'recogTrainingFinished');
  RecogFilterPixaBySize := LeptBind(Handle, 'recogFilterPixaBySize');
  RecogSortPixaByClass := LeptBind(Handle, 'recogSortPixaByClass');
  RecogRemoveOutliers1 := LeptBind(Handle, 'recogRemoveOutliers1');
  RecogRemoveOutliers2 := LeptBind(Handle, 'recogRemoveOutliers2');
  RecogTrainFromBoot := LeptBind(Handle, 'recogTrainFromBoot');
  RecogPadDigitTrainingSet := LeptBind(Handle, 'recogPadDigitTrainingSet');
  RecogIsPaddingNeeded := LeptBind(Handle, 'recogIsPaddingNeeded');
  RecogAddDigitPadTemplates := LeptBind(Handle, 'recogAddDigitPadTemplates');
  RecogMakeBootDigitRecog := LeptBind(Handle, 'recogMakeBootDigitRecog');
  RecogMakeBootDigitTemplates := LeptBind(Handle, 'recogMakeBootDigitTemplates');
  RecogShowContent := LeptBind(Handle, 'recogShowContent');
  RecogDebugAverages := LeptBind(Handle, 'recogDebugAverages');
  RecogShowAverageTemplates := LeptBind(Handle, 'recogShowAverageTemplates');
  RecogShowMatchesInRange := LeptBind(Handle, 'recogShowMatchesInRange');
  RecogShowMatch := LeptBind(Handle, 'recogShowMatch');
end;

end.
