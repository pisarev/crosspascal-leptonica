{ ************************************************************************** }
{                                                                            }
{ LeptonicaTypes                                                             }
{                                                                            }
{ Copyright © 2026 Yuriy Pisarev (ypisareff@outlook.com)                     }
{                                                                            }
{ ************************************************************************** }

unit LeptonicaTypes;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

interface

uses
  {$IFDEF FPC}
  DynLibs;
  {$ELSE}
  Winapi.Windows;
  {$ENDIF}

type
  {$IFNDEF FPC}
  TLibHandle = NativeUInt;
  {$ENDIF}

  l_ok      = Integer;
  l_int8    = ShortInt;
  l_uint8   = Byte;
  l_int16   = SmallInt;
  l_uint16  = Word;
  l_int32   = Integer;
  l_uint32  = Cardinal;
  l_int64   = Int64;
  l_uint64  = UInt64;
  l_float32 = Single;
  l_float64 = Double;

  Pl_int8    = ^l_int8;
  Pl_uint8   = ^l_uint8;
  Pl_int16   = ^l_int16;
  Pl_uint16  = ^l_uint16;
  Pl_int32   = ^l_int32;
  Pl_uint32  = ^l_uint32;
  Pl_int64   = ^l_int64;
  Pl_float32 = ^l_float32;
  Pl_float64 = ^l_float64;

  PPl_int32   = ^Pl_int32;
  PPl_float32 = ^Pl_float32;
  PPl_uint32  = ^Pl_uint32;

  PPAnsiChar = ^PAnsiChar;

  PPPix         = ^PPix;
  PPix          = ^TPix;
  PPPixColormap = ^PPixColormap;
  PPixColormap  = ^TPixColormap;
  PPBox         = ^PBox;
  PBox          = ^TBox;
  PPBoxa        = ^PBoxa;
  PBoxa         = ^TBoxa;
  PPBoxaa       = ^PBoxaa;
  PBoxaa        = ^TBoxaa;
  PPPixa        = ^PPixa;
  PPixa         = ^TPixa;
  PPPixaa       = ^PPixaa;
  PPixaa        = ^TPixaa;
  PPPta         = ^PPta;
  PPta          = ^TPta;
  PPPtaa        = ^PPtaa;
  PPtaa         = ^TPtaa;
  PPNuma        = ^PNuma;
  PNuma         = ^TNuma;
  PPNumaa       = ^PNumaa;
  PNumaa        = ^TNumaa;
  PPL_Dna       = ^PL_Dna;
  PL_Dna        = ^TL_Dna;
  PPL_Dnaa      = ^PL_Dnaa;
  PL_Dnaa       = ^TL_Dnaa;
  PPSarray      = ^PSarray;
  PSarray       = ^TSarray;
  PPFPix        = ^PFPix;
  PFPix         = ^TFPix;
  PPFPixa       = ^PFPixa;
  PFPixa        = ^TFPixa;
  PPDPix        = ^PDPix;
  PDPix         = ^TDPix;
  PPSel         = ^PSel;
  PSel          = ^TSel;
  PPSela        = ^PSela;
  PSela         = ^TSela;
  PPL_Kernel    = ^PL_Kernel;
  PL_Kernel     = ^TL_Kernel;
  PPPixComp     = ^PPixComp;
  PPixComp      = ^TPixComp;
  PPPixaComp    = ^PPixaComp;
  PPixaComp     = ^TPixaComp;
  PPPixacc      = ^PPixacc;
  PPixacc       = ^TPixacc;
  PPPixTiling   = ^PPixTiling;
  PPixTiling    = ^TPixTiling;
  PPL_Bytea     = ^PL_Bytea;
  PL_Bytea      = ^TL_Bytea;
  PPL_ByteBuffer = ^PL_ByteBuffer;
  PL_ByteBuffer  = ^TL_ByteBuffer;
  PPL_DnaHash   = ^PL_DnaHash;
  PL_DnaHash    = ^TL_DnaHash;

  PL_Dewarp    = Pointer;
  PPL_Dewarp   = ^PL_Dewarp;
  PL_Dewarpa   = Pointer;
  PPL_Dewarpa  = ^PL_Dewarpa;
  PL_Recog     = Pointer;
  PPL_Recog    = ^PL_Recog;
  PL_Rdid      = Pointer;
  PPL_Rdid     = ^PL_Rdid;
  PL_Bmf       = Pointer;
  PPL_Bmf      = ^PL_Bmf;
  PL_Wshed     = Pointer;
  PPL_Wshed    = ^PL_Wshed;
  PGPlot       = Pointer;
  PPGPlot      = ^PGPlot;
  PJbClasser   = Pointer;
  PPJbClasser  = ^PJbClasser;
  PJbData      = Pointer;
  PPJbData     = ^PJbData;
  PCcborda     = Pointer;
  PPCcborda    = ^PCcborda;
  PL_CompData  = Pointer;
  PPL_CompData = ^PL_CompData;
  PL_Hashmap   = Pointer;
  PPL_Hashmap  = ^PL_Hashmap;
  PL_Hashitem  = Pointer;
  PL_Aset      = Pointer;
  PL_Amap      = Pointer;
  PL_Rbtree    = Pointer;
  PL_RbtreeNode = Pointer;
  PL_AsetNode  = Pointer;
  PL_AmapNode  = Pointer;
  PL_Ptra      = Pointer;
  PPL_Ptra     = ^PL_Ptra;
  PL_Ptraa     = Pointer;
  PPL_Ptraa    = ^PL_Ptraa;
  PL_Stack     = Pointer;
  PPL_Stack    = ^PL_Stack;
  PL_Queue     = Pointer;
  PPL_Queue    = ^PL_Queue;
  PL_Heap      = Pointer;
  PPL_Heap     = ^PL_Heap;
  PL_Strcode   = Pointer;
  PPL_Strcode  = ^PL_Strcode;
  PL_Sudoku    = Pointer;
  PPL_Sudoku   = ^PL_Sudoku;
  PL_Colorfill = Pointer;
  PPL_Colorfill = ^PL_Colorfill;
  PL_Walltimer = Pointer;
  PRbType      = Pointer;
  PDllist      = Pointer;

  TRGBA_Quad = packed record
    blue: l_uint8;
    green: l_uint8;
    red: l_uint8;
    alpha: l_uint8;
  end;
  PRGBA_Quad = ^TRGBA_Quad;

  TPixColormap = record
    a: Pointer;
    depth: l_int32;
    nalloc: l_int32;
    n: l_int32;
  end;

  TPix = record
    w: l_uint32;
    h: l_uint32;
    d: l_uint32;
    spp: l_uint32;
    wpl: l_uint32;
    refcount: l_uint32;
    xres: l_int32;
    yres: l_int32;
    informat: l_int32;
    special: l_int32;
    text: PAnsiChar;
    colormap: PPixColormap;
    data: Pl_uint32;
  end;

  TBox = record
    x: l_int32;
    y: l_int32;
    w: l_int32;
    h: l_int32;
    refcount: l_uint32;
  end;

  TBoxa = record
    n: l_int32;
    nalloc: l_int32;
    refcount: l_uint32;
    box: PPBox;
  end;

  TBoxaa = record
    n: l_int32;
    nalloc: l_int32;
    boxa: PPBoxa;
  end;

  TPixa = record
    n: l_int32;
    nalloc: l_int32;
    refcount: l_uint32;
    pix: PPPix;
    boxa: PBoxa;
  end;

  TPixaa = record
    n: l_int32;
    nalloc: l_int32;
    pixa: PPPixa;
    boxa: PBoxa;
  end;

  TPta = record
    n: l_int32;
    nalloc: l_int32;
    refcount: l_uint32;
    x: Pl_float32;
    y: Pl_float32;
  end;

  TPtaa = record
    n: l_int32;
    nalloc: l_int32;
    pta: PPPta;
  end;

  TNuma = record
    nalloc: l_int32;
    n: l_int32;
    refcount: l_int32;
    startx: l_float32;
    delx: l_float32;
    a: Pl_float32;
  end;

  TNumaa = record
    nalloc: l_int32;
    n: l_int32;
    numa: PPNuma;
  end;

  TL_Dna = record
    nalloc: l_int32;
    n: l_int32;
    refcount: l_int32;
    startx: l_float64;
    delx: l_float64;
    a: Pl_float64;
  end;

  TL_Dnaa = record
    nalloc: l_int32;
    n: l_int32;
    dna: PPL_Dna;
  end;

  TL_DnaHash = record
    nbuckets: l_int32;
    initsize: l_int32;
    dna: PPL_Dna;
  end;

  TSarray = record
    nalloc: l_int32;
    n: l_int32;
    refcount: l_int32;
    a: PPAnsiChar;
  end;

  TL_Bytea = record
    nalloc: NativeUInt;
    size: NativeUInt;
    refcount: l_int32;
    data: Pl_uint8;
  end;

  TL_ByteBuffer = record
    nalloc: l_int32;
    n: l_int32;
    nwritten: l_int32;
    a: Pl_uint8;
  end;

  TFPix = record
    w: l_int32;
    h: l_int32;
    wpl: l_int32;
    refcount: l_uint32;
    xres: l_int32;
    yres: l_int32;
    data: Pl_float32;
  end;

  TFPixa = record
    n: l_int32;
    nalloc: l_int32;
    refcount: l_uint32;
    fpix: PPFPix;
  end;

  TDPix = record
    w: l_int32;
    h: l_int32;
    wpl: l_int32;
    refcount: l_uint32;
    xres: l_int32;
    yres: l_int32;
    data: Pl_float64;
  end;

  TPixComp = record
    w: l_int32;
    h: l_int32;
    d: l_int32;
    xres: l_int32;
    yres: l_int32;
    comptype: l_int32;
    text: PAnsiChar;
    cmapflag: l_int32;
    data: Pl_uint8;
    size: NativeUInt;
  end;

  TPixaComp = record
    n: l_int32;
    nalloc: l_int32;
    offset: l_int32;
    pixc: PPPixComp;
    boxa: PBoxa;
  end;

  TPixacc = record
    w: l_int32;
    h: l_int32;
    offset: l_int32;
    pix: PPix;
  end;

  TPixTiling = record
    pix: PPix;
    nx: l_int32;
    ny: l_int32;
    w: l_int32;
    h: l_int32;
    xoverlap: l_int32;
    yoverlap: l_int32;
    strip: l_int32;
  end;

  TSel = record
    sy: l_int32;
    sx: l_int32;
    cy: l_int32;
    cx: l_int32;
    data: PPl_int32;
    name: PAnsiChar;
  end;

  TSela = record
    n: l_int32;
    nalloc: l_int32;
    sel: PPSel;
  end;

  TL_Kernel = record
    sy: l_int32;
    sx: l_int32;
    cy: l_int32;
    cx: l_int32;
    data: PPl_float32;
  end;

function LeptBind(const Handle: TLibHandle; const Name: AnsiString): Pointer;
procedure LeptBindReset;
function LeptBindMissingCount: Integer;
function LeptBindMissingNames(const Limit: Integer): string;

implementation

var
  BindMissing: array of string;

function LeptBind(const Handle: TLibHandle; const Name: AnsiString): Pointer;
begin
  {$IFDEF FPC}
  Result := GetProcAddress(Handle, Name);
  {$ELSE}
  Result := Pointer(GetProcAddress(Handle, PAnsiChar(Name)));
  {$ENDIF}
  if Result = nil then
  begin
    SetLength(BindMissing, Length(BindMissing) + 1);
    BindMissing[High(BindMissing)] := string(Name);
  end;
end;

procedure LeptBindReset;
begin
  SetLength(BindMissing, 0);
end;

function LeptBindMissingCount: Integer;
begin
  Result := Length(BindMissing);
end;

function LeptBindMissingNames(const Limit: Integer): string;
var
  I, N: Integer;
begin
  N := Length(BindMissing);
  if N > Limit then
    N := Limit;
  Result := '';
  for I := 0 to N - 1 do
  begin
    if I > 0 then
      Result := Result + ', ';
    Result := Result + BindMissing[I];
  end;
  if Length(BindMissing) > N then
    Result := Result + ', ...';
end;

end.
