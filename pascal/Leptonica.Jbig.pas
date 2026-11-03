{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit Leptonica.Jbig;

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
  TLeptJbigModule = record
  public
    type
      TJbCorrelation = function(dirin: PAnsiChar; thresh: Single; weight: Single; components: Integer;
        rootname: PAnsiChar; firstpage: Integer; npages: Integer; renderflag: Integer): Integer; cdecl;
      TJbRankHaus = function(dirin: PAnsiChar; size: Integer; rank: Single; components: Integer;
        rootname: PAnsiChar; firstpage: Integer; npages: Integer; renderflag: Integer): Integer; cdecl;
      TJbWordsInTextlines = function(dirin: PAnsiChar; reduction: Integer; maxwidth: Integer;
        maxheight: Integer; thresh: Single; weight: Single; pnatl: PPNuma; firstpage: Integer;
        npages: Integer): PBoxa; cdecl;
      TJbRankHausInit = function(components: Integer; maxwidth: Integer; maxheight: Integer; size: Integer;
        rank: Single): PJbClasser; cdecl;
      TJbCorrelationInit = function(components: Integer; maxwidth: Integer; maxheight: Integer;
        thresh: Single; weightfactor: Single): PJbClasser; cdecl;
      TJbCorrelationInitWithoutComponents = function(components: Integer; maxwidth: Integer;
        maxheight: Integer; thresh: Single; weightfactor: Single): PJbClasser; cdecl;
      TJbAddPages = function(classer: PJbClasser; safiles: PSarray): Integer; cdecl;
      TJbAddPage = function(classer: PJbClasser; pixs: PPix): Integer; cdecl;
      TJbAddPageComponents = function(classer: PJbClasser; pixs: PPix; boxas: PBoxa;
        pixas: PPixa): Integer; cdecl;
      TJbClassifyRankHaus = function(classer: PJbClasser; boxa: PBoxa; pixas: PPixa): Integer; cdecl;
      TJbClassifyCorrelation = function(classer: PJbClasser; boxa: PBoxa; pixas: PPixa): Integer; cdecl;
      TJbGetComponents = function(pixs: PPix; components: Integer; maxwidth: Integer; maxheight: Integer;
        pboxad: PPBoxa; ppixad: PPPixa): Integer; cdecl;
      TJbAccumulateComposites = function(pixaa: Pointer; pna: PPNuma; pptat: PPPta): PPixa; cdecl;
      TJbTemplatesFromComposites = function(pixac: PPixa; na: PNuma): PPixa; cdecl;
      TJbClasserCreate = function(method: Integer; components: Integer): PJbClasser; cdecl;
      TJbClasserDestroy = procedure(pclasser: Pointer); cdecl;
      TJbDataSave = function(classer: PJbClasser): PJbData; cdecl;
      TJbDataDestroy = procedure(pdata: Pointer); cdecl;
      TJbDataWrite = function(rootout: PAnsiChar; jbdata: PJbData): Integer; cdecl;
      TJbDataRead = function(rootname: PAnsiChar): PJbData; cdecl;
      TJbDataRender = function(data: PJbData; debugflag: Integer): PPixa; cdecl;
      TJbGetULCorners = function(classer: PJbClasser; pixs: PPix; boxa: PBoxa): Integer; cdecl;
      TJbGetLLCorners = function(classer: PJbClasser): Integer; cdecl;
    var
      JbCorrelation: TJbCorrelation;
      JbRankHaus: TJbRankHaus;
      JbWordsInTextlines: TJbWordsInTextlines;
      JbRankHausInit: TJbRankHausInit;
      JbCorrelationInit: TJbCorrelationInit;
      JbCorrelationInitWithoutComponents: TJbCorrelationInitWithoutComponents;
      JbAddPages: TJbAddPages;
      JbAddPage: TJbAddPage;
      JbAddPageComponents: TJbAddPageComponents;
      JbClassifyRankHaus: TJbClassifyRankHaus;
      JbClassifyCorrelation: TJbClassifyCorrelation;
      JbGetComponents: TJbGetComponents;
      JbAccumulateComposites: TJbAccumulateComposites;
      JbTemplatesFromComposites: TJbTemplatesFromComposites;
      JbClasserCreate: TJbClasserCreate;
      JbClasserDestroy: TJbClasserDestroy;
      JbDataSave: TJbDataSave;
      JbDataDestroy: TJbDataDestroy;
      JbDataWrite: TJbDataWrite;
      JbDataRead: TJbDataRead;
      JbDataRender: TJbDataRender;
      JbGetULCorners: TJbGetULCorners;
      JbGetLLCorners: TJbGetLLCorners;
      procedure Initialize(const Handle: TLibHandle);
  end;

implementation

procedure TLeptJbigModule.Initialize(const Handle: TLibHandle);
begin
  JbCorrelation := LeptBind(Handle, 'jbCorrelation');
  JbRankHaus := LeptBind(Handle, 'jbRankHaus');
  JbWordsInTextlines := LeptBind(Handle, 'jbWordsInTextlines');
  JbRankHausInit := LeptBind(Handle, 'jbRankHausInit');
  JbCorrelationInit := LeptBind(Handle, 'jbCorrelationInit');
  JbCorrelationInitWithoutComponents := LeptBind(Handle, 'jbCorrelationInitWithoutComponents');
  JbAddPages := LeptBind(Handle, 'jbAddPages');
  JbAddPage := LeptBind(Handle, 'jbAddPage');
  JbAddPageComponents := LeptBind(Handle, 'jbAddPageComponents');
  JbClassifyRankHaus := LeptBind(Handle, 'jbClassifyRankHaus');
  JbClassifyCorrelation := LeptBind(Handle, 'jbClassifyCorrelation');
  JbGetComponents := LeptBind(Handle, 'jbGetComponents');
  JbAccumulateComposites := LeptBind(Handle, 'jbAccumulateComposites');
  JbTemplatesFromComposites := LeptBind(Handle, 'jbTemplatesFromComposites');
  JbClasserCreate := LeptBind(Handle, 'jbClasserCreate');
  JbClasserDestroy := LeptBind(Handle, 'jbClasserDestroy');
  JbDataSave := LeptBind(Handle, 'jbDataSave');
  JbDataDestroy := LeptBind(Handle, 'jbDataDestroy');
  JbDataWrite := LeptBind(Handle, 'jbDataWrite');
  JbDataRead := LeptBind(Handle, 'jbDataRead');
  JbDataRender := LeptBind(Handle, 'jbDataRender');
  JbGetULCorners := LeptBind(Handle, 'jbGetULCorners');
  JbGetLLCorners := LeptBind(Handle, 'jbGetLLCorners');
end;

end.
