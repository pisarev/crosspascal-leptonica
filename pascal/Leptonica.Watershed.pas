{ ************************************************************************** }
{                                                                            }
{ Leptonica.Watershed                                                        }
{                                                                            }
{ Copyright © 2026 Yuriy Pisarev                                             }
{                                                                            }
{ ************************************************************************** }

unit Leptonica.Watershed;

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
  TLeptWatershedModule = record
  public
    type
      TWshedCreate = function(pixs: PPix; pixm: PPix; mindepth: Integer; debugflag: Integer): PL_Wshed; cdecl;
      TWshedDestroy = procedure(pwshed: Pointer); cdecl;
      TWshedApply = function(wshed: PL_Wshed): Integer; cdecl;
      TWshedBasins = function(wshed: PL_Wshed; ppixa: PPPixa; pnalevels: PPNuma): Integer; cdecl;
      TWshedRenderFill = function(wshed: PL_Wshed): PPix; cdecl;
      TWshedRenderColors = function(wshed: PL_Wshed): PPix; cdecl;
    var
      WshedCreate: TWshedCreate;
      WshedDestroy: TWshedDestroy;
      WshedApply: TWshedApply;
      WshedBasins: TWshedBasins;
      WshedRenderFill: TWshedRenderFill;
      WshedRenderColors: TWshedRenderColors;
    procedure Initialize(const Handle: TLibHandle);
  end;

implementation

procedure TLeptWatershedModule.Initialize(const Handle: TLibHandle);
begin
  WshedCreate := LeptBind(Handle, 'wshedCreate');
  WshedDestroy := LeptBind(Handle, 'wshedDestroy');
  WshedApply := LeptBind(Handle, 'wshedApply');
  WshedBasins := LeptBind(Handle, 'wshedBasins');
  WshedRenderFill := LeptBind(Handle, 'wshedRenderFill');
  WshedRenderColors := LeptBind(Handle, 'wshedRenderColors');
end;

end.
