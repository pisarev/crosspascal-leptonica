{ Copyright (c) 2026 Yuriy Pisarev. MIT license; see LICENSE. }
unit TestFramework;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses
  SysUtils
  {$IFDEF UNIX}, BaseUnix{$ENDIF};

type
  TTestTag = (ttNormal, ttHeadless, ttRequiresFile, ttRequiresDevice,
    ttKnownLibraryDefect);
  TTestTags = set of TTestTag;
  TTestProc = procedure;

  EAssertionFailed = class(Exception);

procedure RegisterTest(const Module, Name: string; Proc: TTestProc; Tags: TTestTags);
function RunAllTests(const FilterModule: string; Headless, Verbose: Boolean): Integer;

procedure AssertTrue(Value: Boolean; const Msg: string);
procedure AssertFalse(Value: Boolean; const Msg: string);
procedure AssertNotNil(P: Pointer; const Msg: string);
procedure AssertNil(P: Pointer; const Msg: string);
procedure AssertEqualsInt(Expected, Actual: Integer; const Msg: string);
procedure AssertEqualsStr(const Expected, Actual, Msg: string);
procedure AssertGreaterThanInt(Value, Threshold: Integer; const Msg: string);
procedure AssertGreaterOrEqualInt(Value, Threshold: Integer; const Msg: string);
procedure AssertFuncLoaded(P: Pointer; const Name: string);

implementation

type
  TTestEntry = record
    Module: string;
    Name: string;
    Proc: TTestProc;
    Tags: TTestTags;
  end;

var
  GTests: array of TTestEntry;

procedure RegisterTest(const Module, Name: string; Proc: TTestProc; Tags: TTestTags);
var
  Idx: Integer;
begin
  Idx := Length(GTests);
  SetLength(GTests, Idx + 1);
  GTests[Idx].Module := Module;
  GTests[Idx].Name := Name;
  GTests[Idx].Proc := Proc;
  GTests[Idx].Tags := Tags;
end;

procedure AssertTrue(Value: Boolean; const Msg: string);
begin
  if not Value then raise EAssertionFailed.Create('AssertTrue: ' + Msg);
end;

procedure AssertFalse(Value: Boolean; const Msg: string);
begin
  if Value then raise EAssertionFailed.Create('AssertFalse: ' + Msg);
end;

procedure AssertNotNil(P: Pointer; const Msg: string);
begin
  if P = nil then raise EAssertionFailed.Create('AssertNotNil: ' + Msg);
end;

procedure AssertNil(P: Pointer; const Msg: string);
begin
  if P <> nil then raise EAssertionFailed.Create('AssertNil: ' + Msg);
end;

procedure AssertEqualsInt(Expected, Actual: Integer; const Msg: string);
begin
  if Expected <> Actual then
    raise EAssertionFailed.CreateFmt('AssertEquals: expected %d got %d - %s',
      [Expected, Actual, Msg]);
end;

procedure AssertEqualsStr(const Expected, Actual, Msg: string);
begin
  if Expected <> Actual then
    raise EAssertionFailed.CreateFmt('AssertEquals: expected "%s" got "%s" - %s',
      [Expected, Actual, Msg]);
end;

procedure AssertGreaterThanInt(Value, Threshold: Integer; const Msg: string);
begin
  if Value <= Threshold then
    raise EAssertionFailed.CreateFmt('AssertGreater: %d <= %d - %s',
      [Value, Threshold, Msg]);
end;

procedure AssertGreaterOrEqualInt(Value, Threshold: Integer; const Msg: string);
begin
  if Value < Threshold then
    raise EAssertionFailed.CreateFmt('AssertGreaterOrEqual: %d < %d - %s',
      [Value, Threshold, Msg]);
end;

procedure AssertFuncLoaded(P: Pointer; const Name: string);
begin
  if P = nil then
    raise EAssertionFailed.Create('Function not loaded: ' + Name);
end;

function RunAllTests(const FilterModule: string; Headless, Verbose: Boolean): Integer;
var
  I: Integer;
  PassCount, FailCount, ErrCount, SkipCount, CrashCount: Integer;
  KnownCount: Integer;
  T: TTestEntry;
  FullName: string;
  {$IFDEF UNIX}
  Pid: TPid;
  Status: Integer;
  ExitCode: Integer;
  {$ENDIF}
begin
  PassCount := 0;
  FailCount := 0;
  ErrCount := 0;
  SkipCount := 0;
  CrashCount := 0;
  KnownCount := 0;
  for I := 0 to High(GTests) do
  begin
    T := GTests[I];
    FullName := T.Module + '.' + T.Name;
    if (FilterModule <> '') and not SameText(T.Module, FilterModule) then
      Continue;
    if (ttKnownLibraryDefect in T.Tags) then
    begin
      WriteLn('[KNOWN] ', FullName, ' - not run; recorded compatibility case');
      Inc(KnownCount);
      Continue;
    end;
    if Headless and (ttHeadless in T.Tags) then
    begin
      if Verbose then WriteLn('[SKIP] ', FullName, ' (headless)');
      Inc(SkipCount);
      Continue;
    end;
    if (ttRequiresDevice in T.Tags) then
    begin
      if Verbose then WriteLn('[SKIP] ', FullName, ' (requires device)');
      Inc(SkipCount);
      Continue;
    end;
    {$IFDEF UNIX}
    Flush(Output);
    Flush(ErrOutput);
    Pid := fpFork;
    if Pid = 0 then
    begin
      try
        T.Proc();
        Halt(0);
      except
        on E: EAssertionFailed do
        begin
          WriteLn('[FAIL] ', FullName, ': ', E.Message);
          Halt(1);
        end;
        on E: Exception do
        begin
          WriteLn('[ERR ] ', FullName, ': ', E.ClassName, ': ', E.Message);
          Halt(2);
        end;
      end;
    end
    else if Pid > 0 then
    begin
      fpWaitPid(Pid, @Status, 0);
      if wifexited(Status) then
      begin
        ExitCode := wexitstatus(Status);
        case ExitCode of
          0:
          begin
               if Verbose then WriteLn('[PASS] ', FullName);
               Inc(PassCount);
             end;
          1: Inc(FailCount);
          2: Inc(ErrCount);
        else begin
            WriteLn('[ERR ] ', FullName, ' exit=', ExitCode);
            Inc(ErrCount);
          end;
        end;
      end
      else if wifsignaled(Status) then
      begin
        WriteLn('[CRASH] ', FullName, ' signal=', wtermsig(Status));
        Inc(CrashCount);
      end;
    end;
    {$ELSE}
    try
      T.Proc();
      if Verbose then WriteLn('[PASS] ', FullName);
      Inc(PassCount);
    except
      on E: EAssertionFailed do
      begin
        WriteLn('[FAIL] ', FullName, ': ', E.Message);
        Inc(FailCount);
      end;
      on E: Exception do
      begin
        WriteLn('[ERR ] ', FullName, ': ', E.ClassName, ': ', E.Message);
        Inc(ErrCount);
      end;
    end;
    {$ENDIF}
  end;

  WriteLn;
  WriteLn('========================================');
  WriteLn('  PASS:  ', PassCount);
  WriteLn('  FAIL:  ', FailCount);
  WriteLn('  ERR:   ', ErrCount);
  WriteLn('  SKIP:  ', SkipCount);
  WriteLn('  KNOWN: ', KnownCount);
  WriteLn('  CRASH: ', CrashCount);
  WriteLn('  TOTAL: ', PassCount + FailCount + ErrCount + SkipCount + CrashCount + KnownCount);
  WriteLn('========================================');

  Flush(Output);

  if (FailCount > 0) or (ErrCount > 0) or (CrashCount > 0) then
    Result := 1
  else
    Result := 0;
end;

end.
