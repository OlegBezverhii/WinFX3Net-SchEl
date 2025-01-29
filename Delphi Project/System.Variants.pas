//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit System.Variants;

interface

uses
  SysUtils, Classes;

type
  TVarCompareResult = (crLessThan, crEqual, crGreaterThan);
  TCustomVariantType = class(TObject)
  published
    procedure BinaryOp(var Left:TVarData; Right:TVarData; Operator:Integer);//004317E8
    procedure CastToOle(var Dest:TVarData; Source:TVarData);//004318B0
    procedure UnaryOp(var Right:TVarData; Operator:Integer);//00431938
    procedure Compare(Left:TVarData; Right:TVarData; var Relationship:TVarCompareResult);//00431874
    function CompareOp(Left:TVarData; Right:TVarData; Operator:Integer):Boolean;//00431880
    destructor Destroy();//00431744
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function IsClear(V:TVarData):Boolean;//004318EC
    procedure CastTo(var Dest:TVarData; Source:TVarData; AVarType:Word);//0043182C
    procedure Cast(var Dest:TVarData; Source:TVarData);//004317F4
  public
    ..FVarType:word;//f4
    destructor Destroy(); virtual;//00431744
    function QueryInterface(const IID:TGUID; var Obj:Pointer):HRESULT; virtual; stdcall;//v0//00431964
    function LeftPromotion(const V:TVarData; const Operator:TVarOp; var RequiredVarType:TVarType):Boolean; virtual;//v4//004318F0
    function RightPromotion(const V:TVarData; const Operator:TVarOp; var RequiredVarType:TVarType):Boolean; virtual;//v8//00431924
    function OlePromotion(const V:TVarData; var RequiredVarType:TVarType):Boolean; virtual;//vC//00431904
    procedure DispInvoke(Dest:PVarData; const Source:TVarData; CallDesc:PCallDesc; Params:Pointer); virtual;//v10//00431940
    function IsClear(V:TVarData):Boolean; virtual;//v14//004318EC
    procedure Cast(var Dest:TVarData; Source:TVarData); virtual;//v18//004317F4
    procedure CastTo(var Dest:TVarData; Source:TVarData; AVarType:Word); virtual;//v1C//0043182C
    procedure CastToOle(var Dest:TVarData; Source:TVarData); virtual;//v20//004318B0
    procedure v24; virtual; abstract;//v24//00405554
    procedure v28; virtual; abstract;//v28//00405554
    procedure BinaryOp(var Left:TVarData; Right:TVarData; Operator:Integer); virtual;//v2C//004317E8
    procedure UnaryOp(var Right:TVarData; Operator:Integer); virtual;//v30//00431938
    function CompareOp(Left:TVarData; Right:TVarData; Operator:Integer):Boolean; virtual;//v34//00431880
    procedure Compare(Left:TVarData; Right:TVarData; var Relationship:TVarCompareResult); virtual;//v38//00431874
    procedure RaiseCastError;//0043190C
    procedure RaiseInvalidOp;//00431914
    procedure RaiseDispError;//0043191C
    function _AddRef:Integer; stdcall;//0043194C
    function _Release:Integer; stdcall;//00431958
  end;
  TVarDataArray = array of TVarData;
//elSize = 10;
  EVariantInvalidOpError = class(EVariantError)
  end;
  EVariantTypeCastError = class(EVariantError)
  end;
  EVariantOverflowError = class(EVariantError)
  end;
  EVariantInvalidArgError = class(EVariantError)
  end;
  EVariantBadVarTypeError = class(EVariantError)
  end;
  EVariantBadIndexError = class(EVariantError)
  end;
  EVariantArrayLockedError = class(EVariantError)
  end;
  EVariantArrayCreateError = class(EVariantError)
  end;
  EVariantNotImplError = class(EVariantError)
  end;
  EVariantOutOfMemoryError = class(EVariantError)
  end;
  EVariantUnexpectedError = class(EVariantError)
  end;
  EVariantDispatchError = class(EVariantError)
  end;
  EVariantInvalidNullOpError = class(EVariantInvalidOpError)
  end;
  TStringRef = TStringRef = record//size=C
f0:WideString;//f0
end;
Wide:WideString;//f0
Ansi:PAnsiString;//f4
Unicode:PUnicodeString;//f8
end;
//Methods:
FromAnsi(A:PAnsiString):PWideString;//0042A404
FromUnicode(U:PUnicodeString):PWideString;//0042A420;
  :12 = array of TCustomVariantType;
//elSize = 4;
    procedure VarInvalidNullOp;//00429B60
    procedure VarCastError(const ASourceType:TVarType; const ADestType:TVarType);//00429BB4
    procedure VarCastError;//00429C50
    procedure VarInvalidOp;//00429C58
    procedure sub_00429CAC;//00429CAC
    procedure VarOverflowError(const ASourceType:TVarType; const ADestType:TVarType);//00429D00
    procedure VarArrayCreateError;//00429D9C
    procedure TranslateResult(AResult:HRESULT);//00429DF0
    procedure VarResultCheck(AResult:HRESULT);//0042A044
    procedure VarResultCheck(AResult:HRESULT; ASourceType:TVarType; ADestType:TVarType);//0042A050
    procedure HandleConversionException(const ASourceType:TVarType; const ADestType:TVarType);//0042A084
    procedure @DispInvokeError;//0042A108
    procedure @VarNull(var V:TVarData);//0042A15C
    function ElementCount(ArrayRef:PVarArray; Dim:Integer):Integer;//0042A170
    procedure VarArrayClear(var V:TVarData);//0042A1AC
    procedure VarClearDeep(var V:TVarData);//0042A248
    procedure @VarClear(var V:TVarData);//0042A2E0
    procedure @VarClr(var V:TVarData);//0042A2F4
    procedure DispInvokeCore(Dest:PVarData; const Source:TVarData; CallDesc:PCallDesc; Params:Pointer);//0042A2FC
    procedure @DispInvoke(Dest:PVarData; const Source:TVarData; CallDesc:PCallDesc; Params:Pointer); cdecl;//0042A3DC
    function FromAnsi(A:PAnsiString):PWideString;//0042A404
    function FromUnicode(U:PUnicodeString):PWideString;//0042A420
    procedure InitEmptyBSTR;//0042A43C
    function GetDispatchInvokeArgs(CallDesc:PCallDesc; Params:Pointer; var Strings:TStringRefList; OrderLTR:Boolean):TVarDataArray;//0042A454
    //procedure sub_0042A8C0(?:?; ?:?; ?:?);//0042A8C0
    function InBounds(At:Integer):Boolean;//0042A93C
    function Increment(At:Integer):Boolean;//0042A96C
    procedure VarArrayCopyForEach(var Dest:TVarData; const Src:TVarData; AProc:TVarArrayForEach);//0042A9C4
    procedure VarCopyCopyProc(var Dest:TVarData; const Src:TVarData);//0042AB90
    procedure VarCopyDeep(var Dest:TVarData; const Source:TVarData);//0042AB98
    procedure @VarCopy(var Dest:TVarData; const Source:TVarData);//0042AC88
    procedure @VarStringToOleStr(var Dest:TVarData; const Source:TVarData);//0042ACC4
    procedure VarStringToOleStr(var Dest:Variant; const Source:Variant);//0042ACF8
    procedure VarCastAsAny(var Dest:TVarData; const Source:TVarData; ADestType:TVarType);//0042AD00
    procedure VarCastAsOleStr(var Dest:TVarData; const Source:TVarData);//0042AD6C
    procedure VarCastAsString(var Dest:TVarData; const Source:TVarData);//0042ADB8
    procedure VarCastAsUString(var Dest:TVarData; const Source:TVarData);//0042AE04
    procedure VarCastAsDispatch(var Dest:TVarData; const Source:TVarData);//0042AE50
    procedure VarCastAsInterface(var Dest:TVarData; const Source:TVarData);//0042AE9C
    procedure VarCastViaOS(var Dest:TVarData; const Source:TVarData; ADestType:TVarType);//0042AEE8
    procedure VarCastRare(var Dest:TVarData; const Source:TVarData; ADestType:TVarType);//0042AF68
    procedure @VarCast(var Dest:TVarData; const Source:TVarData; AVarType:Integer);//0042AFD4
    function VarToIntAsString(const V:TVarData):Integer;//0042B228
    function VarToIntViaOS(const V:TVarData):Integer;//0042B310
    function VarToIntAny(const V:TVarData):Integer;//0042B34C
    function VarToIntCustom(const V:TVarData; var AValue:Integer):Boolean;//0042B3B0
    function @VarToInteger(const V:TVarData):Integer;//0042B3F4
    function @VarToShortInt(const V:TVarData):ShortInt;//0042B898
    function @VarToByte(const V:TVarData):Byte;//0042B94C
    function @VarToSmallInt(const V:TVarData):SmallInt;//0042B9F4
    function @VarToWord(const V:TVarData):Word;//0042BAEC
    function @VarToLongWord(const V:TVarData):LongWord;//0042BBC8
    function VarToInt64ViaOS(const V:TVarData):Int64;//0042BCB4
    function VarToInt64AsString(const V:TVarData):Int64;//0042BD60
    function VarToInt64Any(const V:TVarData):Int64;//0042BEA4
    function VarToInt64Custom(const V:TVarData; var AValue:Int64):Boolean;//0042BF10
    function @VarToInt64(const V:TVarData):Int64;//0042BF5C
    function @VarToUInt64(const V:TVarData):UInt64;//0042C3E4
    function VarToBoolAsString(const V:TVarData):Boolean;//0042C554
    function VarToBoolViaOS(const V:TVarData):Boolean;//0042C61C
    function VarToBoolAny(const V:TVarData):Boolean;//0042C65C
    function VarToBoolCustom(const V:TVarData; var AValue:Boolean):Boolean;//0042C6C0
    function @VarToBoolean(const V:TVarData):Boolean;//0042C70C
    function @VarToBool(const V:TVarData):LongBool;//0042CA88
    function VarToDoubleAsString(const V:TVarData):Double;//0042CA94
    function VarToDoubleViaOS(const V:TVarData):Double;//0042CB64
    function VarToDoubleAny(const V:TVarData):Double;//0042CBB0
    function VarToDoubleCustom(const V:TVarData; var AValue:Double):Boolean;//0042CC14
    function @VarToDouble(const V:TVarData):Double;//0042CC60
    function @VarToReal(const V:TVarData):Extended;//0042D050
    function @VarToSingle(const V:TVarData):Single;//0042D06C
    //function sub_0042D230(?:?):?;//0042D230
    function VarToDateAsDouble(const V:TVarData; const Value:Double):TDateTime;//0042D32C
    function VarToDateViaOS(const V:TVarData):TDateTime;//0042D38C
    function VarToDateAny(const V:TVarData):TDateTime;//0042D3D8
    function VarToDateCustom(const V:TVarData; var AValue:TDateTime):Boolean;//0042D43C
    function @VarToDate(const V:TVarData):TDateTime;//0042D488
    //procedure sub_0042D884(?:?);//0042D884
    function VarToCurrencyAsDouble(const V:TVarData; const Value:Double):Currency;//0042D94C
    function VarToCurrencyViaOS(const V:TVarData):Currency;//0042D9AC
    function VarToCurrencyAny(const V:TVarData):Currency;//0042D9F8
    function VarToCurrencyCustom(const V:TVarData; var AValue:Currency):Boolean;//0042DA5C
    function @VarToCurrency(const V:TVarData):Currency;//0042DAA8
    function CurrToWStrViaOS(const AValue:Currency):WideString;//0042DF1C
    function DateToWStrViaOS(const AValue:TDateTime):WideString;//0042DF54
    function BoolToWStrViaOS(const AValue:WordBool):WideString;//0042DF8C
    function VarToLStrViaOS(const V:TVarData):UnicodeString;//0042E054
    function VarToLStrAny(const V:TVarData):AnsiString;//0042E10C
    function VarToLStrCustom(const V:TVarData; var AValue:AnsiString):Boolean;//0042E170
    procedure @VarToLStr(var S:AnsiString; const V:TVarData);//0042E1F8
    function VarToWStrViaOS(const V:TVarData):WideString;//0042E944
    function VarToWStrAny(const V:TVarData):WideString;//0042EA10
    function VarToWStrCustom(const V:TVarData; var AValue:WideString):Boolean;//0042EA74
    procedure @VarToWStr(var S:WideString; const V:TVarData);//0042EB50
    function VarToUStrAny(const V:TVarData):UnicodeString;//0042F1EC
    function VarToUStrCustom(const V:TVarData; var AValue:UnicodeString):Boolean;//0042F250
    procedure @VarToUStr(var S:UnicodeString; const V:TVarData);//0042F2D8
    procedure AnyToIntf(var Intf:IInterface; const V:TVarData);//0042F950
    procedure @VarToIntf(var Intf:IInterface; const V:TVarData);//0042F9C8
    procedure @VarToDisp(var Dispatch:IDispatch; const V:TVarData);//0042FA94
    procedure @VarFromInt(var V:TVarData; const Value:Integer; const Range:ShortInt);//0042FB40
    procedure @VarFromInteger(var V:TVarData; const Value:Integer);//0042FB7C
    procedure @OleVarFromInt(var V:TVarData; const Value:Integer; const Range:ShortInt);//0042FB9C
    procedure @VarFromByte(var V:TVarData; const Value:Byte);//0042FBBC
    procedure @VarFromWord(var V:TVarData; const Value:Word);//0042FBDC
    procedure @VarFromLongWord(var V:TVarData; const Value:LongWord);//0042FBFC
    procedure @VarFromUInt64(var V:TVarData; const Value:UInt64);//0042FC1C
    procedure @VarFromShortInt(var V:TVarData; const Value:ShortInt);//0042FC48
    procedure @VarFromSmallInt(var V:TVarData; const Value:SmallInt);//0042FC68
    procedure @VarFromInt64(var V:TVarData; const Value:Int64);//0042FC88
    procedure @VarFromSingle(var Dest:TVarData; const Value:Single);//0042FCB4
    procedure @VarFromDouble(var Dest:TVarData; const Value:Double);//0042FCD8
    procedure @VarFromCurrency(var Dest:TVarData; const Value:Currency);//0042FD04
    procedure @VarFromDate(var Dest:TVarData; const Value:TDateTime);//0042FD30
    procedure @VarFromBool(var V:TVarData; const Value:Boolean);//0042FD5C
    procedure @VarFromReal(var v:Variant);//0042FD84
    procedure @VarFromTDateTime(var v:Variant);//0042FDA4
    procedure @VarFromCurr(var v:Variant);//0042FDC4
    procedure @VarFromLStr(var V:TVarData; const Value:AnsiString);//0042FDE4
    procedure @VarFromPStr(var V:TVarData; const Value:ShortString);//0042FE10
    procedure @VarFromWStr(var V:TVarData; const Value:WideString);//0042FE64
    procedure @VarFromUStr(var V:TVarData; const Value:UnicodeString);//0042FE9C
    procedure @VarFromIntf(var V:TVarData; const Value:IInterface);//0042FEC8
    procedure @VarFromDisp(var V:TVarData; const Value:IDispatch);//0042FEF4
    procedure @OleVarFromLStr(var V:TVarData; const Value:AnsiString);//0042FF20
    procedure @OleVarFromUStr(var V:TVarData; const Value:UnicodeString);//0042FF70
    procedure OleVarFromAny(var V:TVarData; const Value:TVarData);//0042FFC0
    procedure OleVarFromVarArrayProc(var Dest:TVarData; const Src:TVarData);//00430024
    procedure @OleVarFromVar(var Dest:TVarData; const Source:TVarData);//0043002C
    function CheckType(T:TVarType):TVarType;//004301F4
    function VarCompareAny(const Left:TVarData; const Right:TVarData; const OpCode:TVarOp):TVarCompareResult;//00430220
    function EmptyCompare(L:TBaseType; R:TBaseType):TVarCompareResult;//004302F8
    function NullCompare(L:TBaseType; R:TBaseType; OpCode:TVarOp):TVarCompareResult;//0043030C
    function IntCompare(A:Integer; B:Integer):TVarCompareResult;//00430400
    function Int64Compare(const A:Int64; const B:Int64):TVarCompareResult;//00430414
    function UInt64Compare(const A:UInt64; const B:UInt64):TVarCompareResult;//00430450
    function RealCompare(const A:Double; const B:Double):TVarCompareResult;//00430484
    function DateCompare(const A:TDateTime; const B:TDateTime):TVarCompareResult;//004304B0
    function CurrCompare(const A:Currency; const B:Currency):TVarCompareResult;//004304DC
    function StringCompare(const L:TVarData; const R:TVarData):TVarCompareResult;//0043050C
    function VarCompareSimple(const Left:TVarData; const Right:TVarData; const OpCode:TVarOp):TVarCompareResult;//00430578
    function VarCompareRare(const Left:TVarData; const Right:TVarData; const OpCode:TVarOp):TVarCompareResult;//00430730
    function VarCompare(const Left:TVarData; const Right:TVarData; const OpCode:TVarOp):TVarCompareResult;//00430B50
    procedure @VarAddRef(var V:TVarData);//00430BDC
    function VarTypeAsText(const AType:TVarType):UnicodeString;//00430E58
    function FindVarData(const V:Variant):PVarData;//0043100C
    function VarIsClear(const V:Variant):Boolean;//0043101C
    function VarTypeIsCustom(const AVarType:TVarType):Boolean;//00431090
    function VarTypeIsOrdinal(const AVarType:TVarType):Boolean;//0043109C
    function VarIsOrdinal(const V:Variant):Boolean;//004310BC
    function VarIsEmpty(const V:Variant):Boolean;//004310D0
    function VarIsNull(const V:Variant):Boolean;//004310E4
    function VarToStr(const V:Variant):UnicodeString;//004310F8
    function VarToStrDef(const V:Variant; const ADefault:UnicodeString):UnicodeString;//00431110
    function VarToWideStr(const V:Variant):WideString;//0043113C
    function VarToWideStrDef(const V:Variant; const ADefault:WideString):WideString;//00431194
    function VarSameValue(const A:Variant; const B:Variant):Boolean;//004311C0
    function VarCompareValue(const A:Variant; const B:Variant):TVariantRelationship;//00431238
    function GetVarDataArrayInfo(const AVarData:TVarData; var AVarType:TVarType; var AVarArray:PVarArray):Boolean;//004312D8
    function VarArrayCreate(const Bounds:array[$0..-$1] of System.Integer; const _Dv_:$0..-$1; AVarType:TVarType):Variant;//0043131C
    function VarIsArray(const A:Variant):Boolean;//004313CC
    function VarIsArray(const A:Variant; AResolveByRef:Boolean):Boolean;//004313D4
    function VarTypeIsValidArrayType(const AVarType:TVarType):Boolean;//004313FC
    function VarTypeIsValidElementType(const AVarType:TVarType):Boolean;//0043141C
    function @VarArrayGet(var A:TVarData; IndexCount:Integer; const Indices:TVarArrayCoorArray):TVarData; cdecl;//00431458
    procedure @VarArrayPut(var A:TVarData; const Value:TVarData; IndexCount:Integer; const Indices:TVarArrayCoorArray); cdecl;//00431524
    procedure ClearVariantTypeList;//004316AC
    function LeftPromotion(const V:TVarData; const Operator:TVarOp; var RequiredVarType:TVarType):Boolean;//004318F0
    function OlePromotion(const V:TVarData; var RequiredVarType:TVarType):Boolean;//00431904
    function RightPromotion(const V:TVarData; const Operator:TVarOp; var RequiredVarType:TVarType):Boolean;//00431924
    procedure DispInvoke(Dest:PVarData; const Source:TVarData; CallDesc:PCallDesc; Params:Pointer);//00431940
    function QueryInterface(const IID:TGUID; var Obj:Pointer):HRESULT; stdcall;//00431964
    function FindCustomVariantType(const TypeName:UnicodeString; var CustomVariantType:TCustomVariantType):Boolean;//0043198C
    //function sub_00431A50(?:?; ?:?):?;//00431A50
    function Null:Variant;//00431B58
    procedure @VarCmpEQ(const Left:TVarData; const Right:TVarData);//00431B60
    procedure @VarCmpLT(const Left:TVarData; const Right:TVarData);//00431B70

implementation

//00429B60
procedure VarInvalidNullOp;
begin
{*
 00429B60    push        ebp
 00429B61    mov         ebp,esp
 00429B63    push        0
 00429B65    xor         eax,eax
 00429B67    push        ebp
 00429B68    push        429BAA
 00429B6D    push        dword ptr fs:[eax]
 00429B70    mov         dword ptr fs:[eax],esp
 00429B73    lea         edx,[ebp-4]
 00429B76    mov         eax,[007C48B0];^SResString42:TResStringRec
 00429B7B    call        LoadResString
 00429B80    mov         ecx,dword ptr [ebp-4]
 00429B83    mov         dl,1
 00429B85    mov         eax,[004291D0];EVariantTypeCastError
 00429B8A    call        Exception.Create
 00429B8F    call        @RaiseExcept
 00429B94    xor         eax,eax
 00429B96    pop         edx
 00429B97    pop         ecx
 00429B98    pop         ecx
 00429B99    mov         dword ptr fs:[eax],edx
 00429B9C    push        429BB1
 00429BA1    lea         eax,[ebp-4]
 00429BA4    call        @UStrClr
 00429BA9    ret
>00429BAA    jmp         @HandleFinally
>00429BAF    jmp         00429BA1
 00429BB1    pop         ecx
 00429BB2    pop         ebp
 00429BB3    ret
*}
end;

//00429BB4
procedure VarCastError(const ASourceType:TVarType; const ADestType:TVarType);
begin
{*
 00429BB4    push        ebp
 00429BB5    mov         ebp,esp
 00429BB7    add         esp,0FFFFFFE4
 00429BBA    push        ebx
 00429BBB    push        esi
 00429BBC    xor         ecx,ecx
 00429BBE    mov         dword ptr [ebp-14],ecx
 00429BC1    mov         dword ptr [ebp-18],ecx
 00429BC4    mov         dword ptr [ebp-1C],ecx
 00429BC7    mov         esi,edx
 00429BC9    mov         ebx,eax
 00429BCB    xor         eax,eax
 00429BCD    push        ebp
 00429BCE    push        429C43
 00429BD3    push        dword ptr fs:[eax]
 00429BD6    mov         dword ptr fs:[eax],esp
 00429BD9    lea         edx,[ebp-14]
 00429BDC    mov         eax,ebx
 00429BDE    call        VarTypeAsText
 00429BE3    mov         eax,dword ptr [ebp-14]
 00429BE6    mov         dword ptr [ebp-10],eax
 00429BE9    mov         byte ptr [ebp-0C],11
 00429BED    lea         edx,[ebp-18]
 00429BF0    mov         eax,esi
 00429BF2    call        VarTypeAsText
 00429BF7    mov         eax,dword ptr [ebp-18]
 00429BFA    mov         dword ptr [ebp-8],eax
 00429BFD    mov         byte ptr [ebp-4],11
 00429C01    lea         eax,[ebp-10]
 00429C04    push        eax
 00429C05    push        1
 00429C07    lea         edx,[ebp-1C]
 00429C0A    mov         eax,[007C4184];^SResString46:TResStringRec
 00429C0F    call        LoadResString
 00429C14    mov         ecx,dword ptr [ebp-1C]
 00429C17    mov         dl,1
 00429C19    mov         eax,[004291D0];EVariantTypeCastError
 00429C1E    call        Exception.CreateFmt
 00429C23    call        @RaiseExcept
 00429C28    xor         eax,eax
 00429C2A    pop         edx
 00429C2B    pop         ecx
 00429C2C    pop         ecx
 00429C2D    mov         dword ptr fs:[eax],edx
 00429C30    push        429C4A
 00429C35    lea         eax,[ebp-1C]
 00429C38    mov         edx,3
 00429C3D    call        @UStrArrayClr
 00429C42    ret
>00429C43    jmp         @HandleFinally
>00429C48    jmp         00429C35
 00429C4A    pop         esi
 00429C4B    pop         ebx
 00429C4C    mov         esp,ebp
 00429C4E    pop         ebp
 00429C4F    ret
*}
end;

//00429C50
procedure VarCastError;
begin
{*
 00429C50    call        VarInvalidNullOp
 00429C55    ret
*}
end;

//00429C58
procedure VarInvalidOp;
begin
{*
 00429C58    push        ebp
 00429C59    mov         ebp,esp
 00429C5B    push        0
 00429C5D    xor         eax,eax
 00429C5F    push        ebp
 00429C60    push        429CA2
 00429C65    push        dword ptr fs:[eax]
 00429C68    mov         dword ptr fs:[eax],esp
 00429C6B    lea         edx,[ebp-4]
 00429C6E    mov         eax,[007C47CC];^SResString43:TResStringRec
 00429C73    call        LoadResString
 00429C78    mov         ecx,dword ptr [ebp-4]
 00429C7B    mov         dl,1
 00429C7D    mov         eax,[00429110];EVariantInvalidOpError
 00429C82    call        Exception.Create
 00429C87    call        @RaiseExcept
 00429C8C    xor         eax,eax
 00429C8E    pop         edx
 00429C8F    pop         ecx
 00429C90    pop         ecx
 00429C91    mov         dword ptr fs:[eax],edx
 00429C94    push        429CA9
 00429C99    lea         eax,[ebp-4]
 00429C9C    call        @UStrClr
 00429CA1    ret
>00429CA2    jmp         @HandleFinally
>00429CA7    jmp         00429C99
 00429CA9    pop         ecx
 00429CAA    pop         ebp
 00429CAB    ret
*}
end;

//00429CAC
procedure sub_00429CAC;
begin
{*
 00429CAC    push        ebp
 00429CAD    mov         ebp,esp
 00429CAF    push        0
 00429CB1    xor         eax,eax
 00429CB3    push        ebp
 00429CB4    push        429CF6
 00429CB9    push        dword ptr fs:[eax]
 00429CBC    mov         dword ptr fs:[eax],esp
 00429CBF    lea         edx,[ebp-4]
 00429CC2    mov         eax,[007C48D4];^SResString44:TResStringRec
 00429CC7    call        LoadResString
 00429CCC    mov         ecx,dword ptr [ebp-4]
 00429CCF    mov         dl,1
 00429CD1    mov         eax,[004299F8];EVariantInvalidNullOpError
 00429CD6    call        Exception.Create;EVariantInvalidNullOpError.Create
 00429CDB    call        @RaiseExcept
 00429CE0    xor         eax,eax
 00429CE2    pop         edx
 00429CE3    pop         ecx
 00429CE4    pop         ecx
 00429CE5    mov         dword ptr fs:[eax],edx
 00429CE8    push        429CFD
 00429CED    lea         eax,[ebp-4]
 00429CF0    call        @UStrClr
 00429CF5    ret
>00429CF6    jmp         @HandleFinally
>00429CFB    jmp         00429CED
 00429CFD    pop         ecx
 00429CFE    pop         ebp
 00429CFF    ret
*}
end;

//00429D00
procedure VarOverflowError(const ASourceType:TVarType; const ADestType:TVarType);
begin
{*
 00429D00    push        ebp
 00429D01    mov         ebp,esp
 00429D03    add         esp,0FFFFFFE4
 00429D06    push        ebx
 00429D07    push        esi
 00429D08    xor         ecx,ecx
 00429D0A    mov         dword ptr [ebp-14],ecx
 00429D0D    mov         dword ptr [ebp-18],ecx
 00429D10    mov         dword ptr [ebp-1C],ecx
 00429D13    mov         esi,edx
 00429D15    mov         ebx,eax
 00429D17    xor         eax,eax
 00429D19    push        ebp
 00429D1A    push        429D8F
 00429D1F    push        dword ptr fs:[eax]
 00429D22    mov         dword ptr fs:[eax],esp
 00429D25    lea         edx,[ebp-14]
 00429D28    mov         eax,ebx
 00429D2A    call        VarTypeAsText
 00429D2F    mov         eax,dword ptr [ebp-14]
 00429D32    mov         dword ptr [ebp-10],eax
 00429D35    mov         byte ptr [ebp-0C],11
 00429D39    lea         edx,[ebp-18]
 00429D3C    mov         eax,esi
 00429D3E    call        VarTypeAsText
 00429D43    mov         eax,dword ptr [ebp-18]
 00429D46    mov         dword ptr [ebp-8],eax
 00429D49    mov         byte ptr [ebp-4],11
 00429D4D    lea         eax,[ebp-10]
 00429D50    push        eax
 00429D51    push        1
 00429D53    lea         edx,[ebp-1C]
 00429D56    mov         eax,[007C4A00];^SResString47:TResStringRec
 00429D5B    call        LoadResString
 00429D60    mov         ecx,dword ptr [ebp-1C]
 00429D63    mov         dl,1
 00429D65    mov         eax,[0042928C];EVariantOverflowError
 00429D6A    call        Exception.CreateFmt
 00429D6F    call        @RaiseExcept
 00429D74    xor         eax,eax
 00429D76    pop         edx
 00429D77    pop         ecx
 00429D78    pop         ecx
 00429D79    mov         dword ptr fs:[eax],edx
 00429D7C    push        429D96
 00429D81    lea         eax,[ebp-1C]
 00429D84    mov         edx,3
 00429D89    call        @UStrArrayClr
 00429D8E    ret
>00429D8F    jmp         @HandleFinally
>00429D94    jmp         00429D81
 00429D96    pop         esi
 00429D97    pop         ebx
 00429D98    mov         esp,ebp
 00429D9A    pop         ebp
 00429D9B    ret
*}
end;

//00429D9C
procedure VarArrayCreateError;
begin
{*
 00429D9C    push        ebp
 00429D9D    mov         ebp,esp
 00429D9F    push        0
 00429DA1    xor         eax,eax
 00429DA3    push        ebp
 00429DA4    push        429DE6
 00429DA9    push        dword ptr fs:[eax]
 00429DAC    mov         dword ptr fs:[eax],esp
 00429DAF    lea         edx,[ebp-4]
 00429DB2    mov         eax,[007C46A0];^SResString39:TResStringRec
 00429DB7    call        LoadResString
 00429DBC    mov         ecx,dword ptr [ebp-4]
 00429DBF    mov         dl,1
 00429DC1    mov         eax,[00429644];EVariantArrayCreateError
 00429DC6    call        Exception.Create
 00429DCB    call        @RaiseExcept
 00429DD0    xor         eax,eax
 00429DD2    pop         edx
 00429DD3    pop         ecx
 00429DD4    pop         ecx
 00429DD5    mov         dword ptr fs:[eax],edx
 00429DD8    push        429DED
 00429DDD    lea         eax,[ebp-4]
 00429DE0    call        @UStrClr
 00429DE5    ret
>00429DE6    jmp         @HandleFinally
>00429DEB    jmp         00429DDD
 00429DED    pop         ecx
 00429DEE    pop         ebp
 00429DEF    ret
*}
end;

//00429DF0
procedure TranslateResult(AResult:HRESULT);
begin
{*
 00429DF0    push        ebp
 00429DF1    mov         ebp,esp
 00429DF3    mov         ecx,8
 00429DF8    push        0
 00429DFA    push        0
 00429DFC    dec         ecx
>00429DFD    jne         00429DF8
 00429DFF    push        ebx
 00429E00    mov         ebx,eax
 00429E02    xor         eax,eax
 00429E04    push        ebp
 00429E05    push        42A037
 00429E0A    push        dword ptr fs:[eax]
 00429E0D    mov         dword ptr fs:[eax],esp
 00429E10    mov         eax,ebx
 00429E12    cmp         eax,8002000A
>00429E17    jg          00429E52
>00429E19    je          00429EB9
 00429E1F    cmp         eax,80020005
>00429E24    jg          00429E43
>00429E26    je          00429E7F
 00429E28    sub         eax,80004001
>00429E2D    je          00429F2B
 00429E33    sub         eax,0BFFE
>00429E38    je          00429F9A
>00429E3E    jmp         00429FBD
 00429E43    sub         eax,80020008
>00429E48    je          00429E89
 00429E4A    dec         eax
>00429E4B    je          00429EAF
>00429E4D    jmp         00429FBD
 00429E52    sub         eax,8002000B
>00429E57    je          00429EDF
 00429E5D    sub         eax,2
>00429E60    je          00429F05
 00429E66    sub         eax,50001
>00429E6B    je          00429F51
 00429E71    sub         eax,49
>00429E74    je          00429F77
>00429E7A    jmp         00429FBD
 00429E7F    call        VarInvalidNullOp
>00429E84    jmp         0042A00F
 00429E89    lea         edx,[ebp-4]
 00429E8C    mov         eax,[007C4D2C];^SResString50:TResStringRec
 00429E91    call        LoadResString
 00429E96    mov         ecx,dword ptr [ebp-4]
 00429E99    mov         dl,1
 00429E9B    mov         eax,[00429408];EVariantBadVarTypeError
 00429EA0    call        Exception.Create
 00429EA5    call        @RaiseExcept
>00429EAA    jmp         0042A00F
 00429EAF    call        VarInvalidOp
>00429EB4    jmp         0042A00F
 00429EB9    lea         edx,[ebp-8]
 00429EBC    mov         eax,[007C4330];^SResString48:TResStringRec
 00429EC1    call        LoadResString
 00429EC6    mov         ecx,dword ptr [ebp-8]
 00429EC9    mov         dl,1
 00429ECB    mov         eax,[0042928C];EVariantOverflowError
 00429ED0    call        Exception.Create
 00429ED5    call        @RaiseExcept
>00429EDA    jmp         0042A00F
 00429EDF    lea         edx,[ebp-0C]
 00429EE2    mov         eax,[007C4B80];^SResString40:TResStringRec
 00429EE7    call        LoadResString
 00429EEC    mov         ecx,dword ptr [ebp-0C]
 00429EEF    mov         dl,1
 00429EF1    mov         eax,[004294C8];EVariantBadIndexError
 00429EF6    call        Exception.Create
 00429EFB    call        @RaiseExcept
>00429F00    jmp         0042A00F
 00429F05    lea         edx,[ebp-10]
 00429F08    mov         eax,[007C4E94];^SResString41:TResStringRec
 00429F0D    call        LoadResString
 00429F12    mov         ecx,dword ptr [ebp-10]
 00429F15    mov         dl,1
 00429F17    mov         eax,[00429584];EVariantArrayLockedError
 00429F1C    call        Exception.Create
 00429F21    call        @RaiseExcept
>00429F26    jmp         0042A00F
 00429F2B    lea         edx,[ebp-14]
 00429F2E    mov         eax,[007C4950];^SResString51:TResStringRec
 00429F33    call        LoadResString
 00429F38    mov         ecx,dword ptr [ebp-14]
 00429F3B    mov         dl,1
 00429F3D    mov         eax,[00429704];EVariantNotImplError
 00429F42    call        Exception.Create
 00429F47    call        @RaiseExcept
>00429F4C    jmp         0042A00F
 00429F51    lea         edx,[ebp-18]
 00429F54    mov         eax,[007C4474];^SResString9:TResStringRec
 00429F59    call        LoadResString
 00429F5E    mov         ecx,dword ptr [ebp-18]
 00429F61    mov         dl,1
 00429F63    mov         eax,[004297BC];EVariantOutOfMemoryError
 00429F68    call        Exception.Create
 00429F6D    call        @RaiseExcept
>00429F72    jmp         0042A00F
 00429F77    lea         edx,[ebp-1C]
 00429F7A    mov         eax,[007C44B4];^SResString49:TResStringRec
 00429F7F    call        LoadResString
 00429F84    mov         ecx,dword ptr [ebp-1C]
 00429F87    mov         dl,1
 00429F89    mov         eax,[00429348];EVariantInvalidArgError
 00429F8E    call        Exception.Create
 00429F93    call        @RaiseExcept
>00429F98    jmp         0042A00F
 00429F9A    lea         edx,[ebp-20]
 00429F9D    mov         eax,[007C432C];^SResString52:TResStringRec
 00429FA2    call        LoadResString
 00429FA7    mov         ecx,dword ptr [ebp-20]
 00429FAA    mov         dl,1
 00429FAC    mov         eax,[0042987C];EVariantUnexpectedError
 00429FB1    call        Exception.Create
 00429FB6    call        @RaiseExcept
>00429FBB    jmp         0042A00F
 00429FBD    mov         eax,[007C4D4C]
 00429FC2    mov         eax,dword ptr [eax]
 00429FC4    mov         dword ptr [ebp-38],eax
 00429FC7    mov         byte ptr [ebp-34],11
 00429FCB    mov         dword ptr [ebp-30],ebx
 00429FCE    mov         byte ptr [ebp-2C],0
 00429FD2    lea         ecx,[ebp-3C]
 00429FD5    xor         edx,edx
 00429FD7    mov         eax,ebx
 00429FD9    call        00422CB4
 00429FDE    mov         eax,dword ptr [ebp-3C]
 00429FE1    mov         dword ptr [ebp-28],eax
 00429FE4    mov         byte ptr [ebp-24],11
 00429FE8    lea         eax,[ebp-38]
 00429FEB    push        eax
 00429FEC    push        2
 00429FEE    lea         edx,[ebp-40]
 00429FF1    mov         eax,[007C46AC];^SResString45:TResStringRec
 00429FF6    call        LoadResString
 00429FFB    mov         ecx,dword ptr [ebp-40]
 00429FFE    mov         dl,1
 0042A000    mov         eax,[00419080];EVariantError
 0042A005    call        Exception.CreateFmt
 0042A00A    call        @RaiseExcept
 0042A00F    xor         eax,eax
 0042A011    pop         edx
 0042A012    pop         ecx
 0042A013    pop         ecx
 0042A014    mov         dword ptr fs:[eax],edx
 0042A017    push        42A03E
 0042A01C    lea         eax,[ebp-40]
 0042A01F    mov         edx,2
 0042A024    call        @UStrArrayClr
 0042A029    lea         eax,[ebp-20]
 0042A02C    mov         edx,8
 0042A031    call        @UStrArrayClr
 0042A036    ret
>0042A037    jmp         @HandleFinally
>0042A03C    jmp         0042A01C
 0042A03E    pop         ebx
 0042A03F    mov         esp,ebp
 0042A041    pop         ebp
 0042A042    ret
*}
end;

//0042A044
procedure VarResultCheck(AResult:HRESULT);
begin
{*
 0042A044    test        eax,eax
>0042A046    je          0042A04D
 0042A048    call        TranslateResult
 0042A04D    ret
*}
end;

//0042A050
procedure VarResultCheck(AResult:HRESULT; ASourceType:TVarType; ADestType:TVarType);
begin
{*
 0042A050    push        ebx
 0042A051    test        eax,eax
>0042A053    je          0042A081
 0042A055    mov         ebx,eax
 0042A057    sub         ebx,80020005
>0042A05D    je          0042A066
 0042A05F    sub         ebx,5
>0042A062    je          0042A071
>0042A064    jmp         0042A07C
 0042A066    mov         eax,edx
 0042A068    mov         edx,ecx
 0042A06A    call        VarCastError
>0042A06F    jmp         0042A081
 0042A071    mov         eax,edx
 0042A073    mov         edx,ecx
 0042A075    call        VarOverflowError
>0042A07A    jmp         0042A081
 0042A07C    call        TranslateResult
 0042A081    pop         ebx
 0042A082    ret
*}
end;

//0042A084
procedure HandleConversionException(const ASourceType:TVarType; const ADestType:TVarType);
begin
{*
 0042A084    push        ebx
 0042A085    push        esi
 0042A086    mov         esi,edx
 0042A088    mov         ebx,eax
 0042A08A    call        ExceptObject
 0042A08F    mov         edx,dword ptr ds:[41873C];ERangeError
 0042A095    call        @IsClass
 0042A09A    test        al,al
>0042A09C    je          0042A0AF
 0042A09E    mov         ecx,esi
 0042A0A0    mov         edx,ebx
 0042A0A2    mov         eax,8002000A
 0042A0A7    call        VarResultCheck
 0042A0AC    pop         esi
 0042A0AD    pop         ebx
 0042A0AE    ret
 0042A0AF    call        ExceptObject
 0042A0B4    mov         edx,dword ptr ds:[418A84];EOverflow
 0042A0BA    call        @IsClass
 0042A0BF    test        al,al
>0042A0C1    je          0042A0D3
 0042A0C3    mov         ecx,esi
 0042A0C5    mov         edx,ebx
 0042A0C7    mov         eax,8002000A
 0042A0CC    call        VarResultCheck
>0042A0D1    jmp         0042A105
 0042A0D3    call        ExceptObject
 0042A0D8    mov         edx,dword ptr ds:[418D28];EConvertError
 0042A0DE    call        @IsClass
 0042A0E3    test        al,al
>0042A0E5    je          0042A0F7
 0042A0E7    mov         ecx,esi
 0042A0E9    mov         edx,ebx
 0042A0EB    mov         eax,80020005
 0042A0F0    call        VarResultCheck
>0042A0F5    jmp         0042A105
 0042A0F7    call        AcquireExceptionObject
 0042A0FC    mov         edx,eax
 0042A0FE    mov         eax,edx
 0042A100    call        @RaiseExcept
 0042A105    pop         esi
 0042A106    pop         ebx
 0042A107    ret
*}
end;

//0042A108
procedure @DispInvokeError;
begin
{*
 0042A108    push        ebp
 0042A109    mov         ebp,esp
 0042A10B    push        0
 0042A10D    xor         eax,eax
 0042A10F    push        ebp
 0042A110    push        42A152
 0042A115    push        dword ptr fs:[eax]
 0042A118    mov         dword ptr fs:[eax],esp
 0042A11B    lea         edx,[ebp-4]
 0042A11E    mov         eax,[007C4168];^SResString34:TResStringRec
 0042A123    call        LoadResString
 0042A128    mov         ecx,dword ptr [ebp-4]
 0042A12B    mov         dl,1
 0042A12D    mov         eax,[0042993C];EVariantDispatchError
 0042A132    call        Exception.Create
 0042A137    call        @RaiseExcept
 0042A13C    xor         eax,eax
 0042A13E    pop         edx
 0042A13F    pop         ecx
 0042A140    pop         ecx
 0042A141    mov         dword ptr fs:[eax],edx
 0042A144    push        42A159
 0042A149    lea         eax,[ebp-4]
 0042A14C    call        @UStrClr
 0042A151    ret
>0042A152    jmp         @HandleFinally
>0042A157    jmp         0042A149
 0042A159    pop         ecx
 0042A15A    pop         ebp
 0042A15B    ret
*}
end;

//0042A15C
procedure @VarNull(var V:TVarData);
begin
{*
 0042A15C    push        ebx
 0042A15D    mov         ebx,eax
 0042A15F    mov         eax,ebx
 0042A161    call        @VarClear
 0042A166    mov         word ptr [ebx],1
 0042A16B    pop         ebx
 0042A16C    ret
*}
end;

//0042A170
function ElementCount(ArrayRef:PVarArray; Dim:Integer):Integer;
begin
{*
 0042A170    push        ebp
 0042A171    mov         ebp,esp
 0042A173    add         esp,0FFFFFFF8
 0042A176    push        ebx
 0042A177    push        esi
 0042A178    mov         esi,edx
 0042A17A    mov         ebx,eax
 0042A17C    lea         eax,[ebp-4]
 0042A17F    push        eax
 0042A180    push        esi
 0042A181    push        ebx
 0042A182    call        oleaut32.SafeArrayGetLBound
 0042A187    call        VarResultCheck
 0042A18C    lea         eax,[ebp-8]
 0042A18F    push        eax
 0042A190    push        esi
 0042A191    push        ebx
 0042A192    call        oleaut32.SafeArrayGetUBound
 0042A197    call        VarResultCheck
 0042A19C    mov         eax,dword ptr [ebp-8]
 0042A19F    sub         eax,dword ptr [ebp-4]
 0042A1A2    inc         eax
 0042A1A3    pop         esi
 0042A1A4    pop         ebx
 0042A1A5    pop         ecx
 0042A1A6    pop         ecx
 0042A1A7    pop         ebp
 0042A1A8    ret
*}
end;

//0042A1AC
procedure VarArrayClear(var V:TVarData);
begin
{*
 0042A1AC    push        ebx
 0042A1AD    push        esi
 0042A1AE    push        edi
 0042A1AF    push        ebp
 0042A1B0    push        ecx
 0042A1B1    mov         edi,eax
 0042A1B3    test        byte ptr [edi+1],20
>0042A1B7    jne         0042A1C3
 0042A1B9    mov         eax,80070057
 0042A1BE    call        VarResultCheck
 0042A1C3    movzx       eax,word ptr [edi]
 0042A1C6    mov         edx,eax
 0042A1C8    and         dx,0FFF
 0042A1CD    cmp         dx,0C
>0042A1D1    jne         0042A237
 0042A1D3    test        ah,40
>0042A1D6    je          0042A1DF
 0042A1D8    mov         eax,dword ptr [edi+8]
 0042A1DB    mov         ebp,dword ptr [eax]
>0042A1DD    jmp         0042A1E2
 0042A1DF    mov         ebp,dword ptr [edi+8]
 0042A1E2    xor         eax,eax
 0042A1E4    mov         dword ptr [esp],eax
 0042A1E7    cmp         word ptr [ebp],0
>0042A1EC    jbe         0042A220
 0042A1EE    mov         edx,1
 0042A1F3    mov         eax,ebp
 0042A1F5    call        ElementCount
 0042A1FA    mov         dword ptr [esp],eax
 0042A1FD    movzx       ebx,word ptr [ebp]
 0042A201    sub         ebx,2
>0042A204    jl          0042A220
 0042A206    inc         ebx
 0042A207    mov         esi,2
 0042A20C    mov         edx,esi
 0042A20E    mov         eax,ebp
 0042A210    call        ElementCount
 0042A215    imul        eax,dword ptr [esp]
 0042A219    mov         dword ptr [esp],eax
 0042A21C    inc         esi
 0042A21D    dec         ebx
>0042A21E    jne         0042A20C
 0042A220    mov         esi,dword ptr [ebp+0C]
 0042A223    mov         ebx,dword ptr [esp]
 0042A226    test        ebx,ebx
>0042A228    jle         0042A237
 0042A22A    mov         eax,esi
 0042A22C    call        @VarClear
 0042A231    add         esi,10
 0042A234    dec         ebx
>0042A235    jne         0042A22A
 0042A237    push        edi
 0042A238    call        oleaut32.VariantClear
 0042A23D    call        VarResultCheck
 0042A242    pop         edx
 0042A243    pop         ebp
 0042A244    pop         edi
 0042A245    pop         esi
 0042A246    pop         ebx
 0042A247    ret
*}
end;

//0042A248
procedure VarClearDeep(var V:TVarData);
begin
{*
 0042A248    push        ebx
 0042A249    push        esi
 0042A24A    push        ecx
 0042A24B    mov         ebx,eax
 0042A24D    movzx       esi,word ptr [ebx]
 0042A250    cmp         si,14
>0042A254    jae         0042A263
 0042A256    push        ebx
 0042A257    call        oleaut32.VariantClear
 0042A25C    call        VarResultCheck
>0042A261    jmp         0042A2DA
 0042A263    cmp         si,100
>0042A268    jne         0042A279
 0042A26A    mov         word ptr [ebx],0
 0042A26F    lea         eax,[ebx+8]
 0042A272    call        @LStrClr
>0042A277    jmp         0042A2DA
 0042A279    cmp         si,102
>0042A27E    jne         0042A28F
 0042A280    mov         word ptr [ebx],0
 0042A285    lea         eax,[ebx+8]
 0042A288    call        @UStrClr
>0042A28D    jmp         0042A2DA
 0042A28F    cmp         si,101
>0042A294    jne         0042A2A0
 0042A296    mov         eax,ebx
 0042A298    call        dword ptr ds:[7C9F4C]
>0042A29E    jmp         0042A2DA
 0042A2A0    test        si,2000
>0042A2A5    je          0042A2B0
 0042A2A7    mov         eax,ebx
 0042A2A9    call        VarArrayClear
>0042A2AE    jmp         0042A2DA
 0042A2B0    mov         edx,esp
 0042A2B2    mov         eax,esi
 0042A2B4    call        FindCustomVariantType
 0042A2B9    test        al,al
>0042A2BB    je          0042A2CE
 0042A2BD    mov         edx,ebx
 0042A2BF    mov         eax,dword ptr [esp]
 0042A2C2    mov         ecx,dword ptr [eax]
 0042A2C4    call        dword ptr [ecx+24]
 0042A2C7    xor         eax,eax
 0042A2C9    mov         dword ptr [ebx+8],eax
>0042A2CC    jmp         0042A2DA
 0042A2CE    push        ebx
 0042A2CF    call        oleaut32.VariantClear
 0042A2D4    push        ebx
 0042A2D5    call        oleaut32.VariantInit
 0042A2DA    pop         edx
 0042A2DB    pop         esi
 0042A2DC    pop         ebx
 0042A2DD    ret
*}
end;

//0042A2E0
procedure @VarClear(var V:TVarData);
begin
{*
 0042A2E0    test        word ptr [eax],0BFE8
>0042A2E5    jne         0042A2ED
 0042A2E7    mov         word ptr [eax],0
 0042A2EC    ret
 0042A2ED    call        VarClearDeep
 0042A2F2    ret
*}
end;

//0042A2F4
procedure @VarClr(var V:TVarData);
begin
{*
 0042A2F4    push        eax
 0042A2F5    call        @VarClear
 0042A2FA    pop         eax
 0042A2FB    ret
*}
end;

//0042A2FC
procedure DispInvokeCore(Dest:PVarData; const Source:TVarData; CallDesc:PCallDesc; Params:Pointer);
begin
{*
 0042A2FC    push        ebp
 0042A2FD    mov         ebp,esp
 0042A2FF    add         esp,0FFFFFFE4
 0042A302    push        ebx
 0042A303    push        esi
 0042A304    push        edi
 0042A305    mov         edi,ecx
 0042A307    mov         ebx,edx
 0042A309    mov         dword ptr [ebp-4],eax
 0042A30C    cmp         dword ptr [ebp-4],0
>0042A310    jne         0042A319
 0042A312    xor         eax,eax
 0042A314    mov         dword ptr [ebp-0C],eax
>0042A317    jmp         0042A328
 0042A319    lea         eax,[ebp-1C]
 0042A31C    push        eax
 0042A31D    call        oleaut32.VariantInit
 0042A322    lea         eax,[ebp-1C]
 0042A325    mov         dword ptr [ebp-0C],eax
 0042A328    xor         eax,eax
 0042A32A    push        ebp
 0042A32B    push        42A3CB
 0042A330    push        dword ptr fs:[eax]
 0042A333    mov         dword ptr fs:[eax],esp
 0042A336    movzx       esi,word ptr [ebx]
 0042A339    movzx       eax,si
 0042A33C    cmp         eax,101
>0042A341    jg          0042A351
>0042A343    je          0042A35D
 0042A345    sub         eax,9
>0042A348    je          0042A35D
 0042A34A    sub         eax,4
>0042A34D    je          0042A35D
>0042A34F    jmp         0042A37B
 0042A351    sub         eax,4009
>0042A356    je          0042A35D
 0042A358    sub         eax,4
>0042A35B    jne         0042A37B
 0042A35D    cmp         dword ptr ds:[7C9F48],0
>0042A364    je          0042A3A2
 0042A366    mov         eax,dword ptr [ebp+8]
 0042A369    push        eax
 0042A36A    push        edi
 0042A36B    push        ebx
 0042A36C    mov         eax,dword ptr [ebp-0C]
 0042A36F    push        eax
 0042A370    call        dword ptr ds:[7C9F48]
 0042A376    add         esp,10
>0042A379    jmp         0042A3A2
 0042A37B    lea         edx,[ebp-8]
 0042A37E    mov         eax,esi
 0042A380    call        FindCustomVariantType
 0042A385    test        al,al
>0042A387    je          0042A39D
 0042A389    push        edi
 0042A38A    mov         eax,dword ptr [ebp+8]
 0042A38D    push        eax
 0042A38E    mov         ecx,ebx
 0042A390    mov         edx,dword ptr [ebp-0C]
 0042A393    mov         eax,dword ptr [ebp-8]
 0042A396    mov         ebx,dword ptr [eax]
 0042A398    call        dword ptr [ebx+10]
>0042A39B    jmp         0042A3A2
 0042A39D    call        VarInvalidOp
 0042A3A2    xor         eax,eax
 0042A3A4    pop         edx
 0042A3A5    pop         ecx
 0042A3A6    pop         ecx
 0042A3A7    mov         dword ptr fs:[eax],edx
 0042A3AA    push        42A3D2
 0042A3AF    cmp         dword ptr [ebp-0C],0
>0042A3B3    je          0042A3CA
 0042A3B5    mov         eax,dword ptr [ebp-0C]
 0042A3B8    mov         edx,eax
 0042A3BA    mov         eax,dword ptr [ebp-4]
 0042A3BD    call        @VarCopy
 0042A3C2    lea         eax,[ebp-1C]
 0042A3C5    call        @VarClear
 0042A3CA    ret
>0042A3CB    jmp         @HandleFinally
>0042A3D0    jmp         0042A3AF
 0042A3D2    pop         edi
 0042A3D3    pop         esi
 0042A3D4    pop         ebx
 0042A3D5    mov         esp,ebp
 0042A3D7    pop         ebp
 0042A3D8    ret         4
*}
end;

//0042A3DC
procedure @DispInvoke(Dest:PVarData; const Source:TVarData; CallDesc:PCallDesc; Params:Pointer); cdecl;
begin
{*
 0042A3DC    push        ebp
 0042A3DD    mov         ebp,esp
 0042A3DF    mov         eax,dword ptr [ebp+0C]
>0042A3E2    jmp         0042A3E7
 0042A3E4    mov         eax,dword ptr [eax+8]
 0042A3E7    cmp         word ptr [eax],400C
>0042A3EC    je          0042A3E4
 0042A3EE    lea         edx,[ebp+14]
 0042A3F1    push        edx
 0042A3F2    mov         edx,eax
 0042A3F4    mov         ecx,dword ptr [ebp+10]
 0042A3F7    mov         eax,dword ptr [ebp+8]
 0042A3FA    call        DispInvokeCore
 0042A3FF    pop         ebp
 0042A400    ret
*}
end;

//0042A404
function TStringRef.FromAnsi(A:PAnsiString):PWideString;
begin
{*
 0042A404    push        ebx
 0042A405    push        esi
 0042A406    mov         esi,edx
 0042A408    mov         ebx,eax
 0042A40A    mov         dword ptr [ebx+4],esi
 0042A40D    xor         eax,eax
 0042A40F    mov         dword ptr [ebx+8],eax
 0042A412    mov         eax,ebx
 0042A414    mov         edx,dword ptr [esi]
 0042A416    call        @WStrFromLStr
 0042A41B    mov         eax,ebx
 0042A41D    pop         esi
 0042A41E    pop         ebx
 0042A41F    ret
*}
end;

//0042A420
function TStringRef.FromUnicode(U:PUnicodeString):PWideString;
begin
{*
 0042A420    push        ebx
 0042A421    push        esi
 0042A422    mov         esi,edx
 0042A424    mov         ebx,eax
 0042A426    xor         eax,eax
 0042A428    mov         dword ptr [ebx+4],eax
 0042A42B    mov         dword ptr [ebx+8],esi
 0042A42E    mov         eax,ebx
 0042A430    mov         edx,dword ptr [esi]
 0042A432    call        @WStrFromUStr
 0042A437    mov         eax,ebx
 0042A439    pop         esi
 0042A43A    pop         ebx
 0042A43B    ret
*}
end;

//0042A43C
procedure InitEmptyBSTR;
begin
{*
 0042A43C    cmp         dword ptr ds:[79F6B4],0
>0042A443    jne         0042A451
 0042A445    xor         eax,eax
 0042A447    call        StringToOleStr
 0042A44C    mov         [0079F6B4],eax
 0042A451    ret
*}
end;

//0042A454
function GetDispatchInvokeArgs(CallDesc:PCallDesc; Params:Pointer; var Strings:TStringRefList; OrderLTR:Boolean):TVarDataArray;
begin
{*
 0042A454    push        ebp
 0042A455    mov         ebp,esp
 0042A457    add         esp,0FFFFFFEC
 0042A45A    push        ebx
 0042A45B    push        esi
 0042A45C    push        edi
 0042A45D    mov         dword ptr [ebp-0C],ecx
 0042A460    mov         dword ptr [ebp-8],edx
 0042A463    mov         dword ptr [ebp-4],eax
 0042A466    call        InitEmptyBSTR
 0042A46B    xor         eax,eax
 0042A46D    mov         dword ptr [ebp-10],eax
 0042A470    mov         eax,dword ptr [ebp-4]
 0042A473    movzx       eax,byte ptr [eax+1]
 0042A477    push        eax
 0042A478    mov         eax,dword ptr [ebp+8]
 0042A47B    mov         ecx,1
 0042A480    mov         edx,dword ptr ds:[4290D4];TVarDataArray
 0042A486    call        @DynArraySetLength
 0042A48B    add         esp,4
 0042A48E    mov         eax,dword ptr [ebp-4]
 0042A491    movzx       eax,byte ptr [eax+1]
 0042A495    dec         eax
 0042A496    test        eax,eax
>0042A498    jl          0042A8B5
 0042A49E    inc         eax
 0042A49F    mov         dword ptr [ebp-14],eax
 0042A4A2    xor         edi,edi
 0042A4A4    mov         eax,dword ptr [ebp-4]
 0042A4A7    movzx       ebx,byte ptr [eax+edi+3]
 0042A4AC    cmp         byte ptr [ebp+0C],0
>0042A4B0    je          0042A4C0
 0042A4B2    mov         eax,edi
 0042A4B4    add         eax,eax
 0042A4B6    mov         edx,dword ptr [ebp+8]
 0042A4B9    mov         edx,dword ptr [edx]
 0042A4BB    lea         esi,[edx+eax*8]
>0042A4BE    jmp         0042A4D4
 0042A4C0    mov         eax,dword ptr [ebp-4]
 0042A4C3    movzx       eax,byte ptr [eax+1]
 0042A4C7    sub         eax,edi
 0042A4C9    add         eax,eax
 0042A4CB    mov         edx,dword ptr [ebp+8]
 0042A4CE    mov         edx,dword ptr [edx]
 0042A4D0    lea         esi,[edx+eax*8-10]
 0042A4D4    mov         al,80
 0042A4D6    and         al,bl
 0042A4D8    cmp         al,80
>0042A4DA    jne         0042A5AF
 0042A4E0    mov         al,7F
 0042A4E2    and         al,bl
 0042A4E4    cmp         al,48
>0042A4E6    jne         0042A50E
 0042A4E8    mov         word ptr [esi],4008
 0042A4ED    mov         eax,dword ptr [ebp-10]
 0042A4F0    lea         eax,[eax+eax*2]
 0042A4F3    mov         edx,dword ptr [ebp-0C]
 0042A4F6    lea         eax,[edx+eax*4]
 0042A4F9    mov         edx,dword ptr [ebp-8]
 0042A4FC    mov         edx,dword ptr [edx]
 0042A4FE    call        TStringRef.FromAnsi
 0042A503    mov         dword ptr [esi+8],eax
 0042A506    inc         dword ptr [ebp-10]
>0042A509    jmp         0042A5A6
 0042A50E    cmp         al,4A
>0042A510    jne         0042A535
 0042A512    mov         word ptr [esi],4008
 0042A517    mov         eax,dword ptr [ebp-10]
 0042A51A    lea         eax,[eax+eax*2]
 0042A51D    mov         edx,dword ptr [ebp-0C]
 0042A520    lea         eax,[edx+eax*4]
 0042A523    mov         edx,dword ptr [ebp-8]
 0042A526    mov         edx,dword ptr [edx]
 0042A528    call        TStringRef.FromUnicode
 0042A52D    mov         dword ptr [esi+8],eax
 0042A530    inc         dword ptr [ebp-10]
>0042A533    jmp         0042A5A6
 0042A535    mov         dl,7F
 0042A537    and         dl,bl
 0042A539    cmp         dl,0C
>0042A53C    jne         0042A568
 0042A53E    mov         eax,dword ptr [ebp-8]
 0042A541    mov         eax,dword ptr [eax]
 0042A543    movzx       eax,word ptr [eax]
 0042A546    cmp         ax,100
>0042A54A    je          0042A552
 0042A54C    cmp         ax,102
>0042A550    jne         0042A568
 0042A552    mov         eax,dword ptr [ebp-8]
 0042A555    mov         eax,dword ptr [eax]
 0042A557    mov         edx,eax
 0042A559    mov         eax,dword ptr [ebp-8]
 0042A55C    mov         eax,dword ptr [eax]
 0042A55E    mov         ecx,8
 0042A563    call        @VarCast
 0042A568    and         bl,7F
 0042A56B    cmp         byte ptr ds:[7C9F58],0
>0042A572    je          0042A594
 0042A574    mov         eax,ebx
 0042A576    sub         al,11
>0042A578    je          0042A592
 0042A57A    dec         al
>0042A57C    je          0042A58E
 0042A57E    dec         al
>0042A580    je          0042A58A
 0042A582    sub         al,2
>0042A584    jne         0042A594
 0042A586    mov         bl,14
>0042A588    jmp         0042A594
 0042A58A    mov         bl,3
>0042A58C    jmp         0042A594
 0042A58E    mov         bl,2
>0042A590    jmp         0042A594
 0042A592    mov         bl,10
 0042A594    movzx       eax,bl
 0042A597    or          ax,4000
 0042A59B    mov         word ptr [esi],ax
 0042A59E    mov         eax,dword ptr [ebp-8]
 0042A5A1    mov         eax,dword ptr [eax]
 0042A5A3    mov         dword ptr [esi+8],eax
 0042A5A6    add         dword ptr [ebp-8],4
>0042A5AA    jmp         0042A8AB
 0042A5AF    movzx       eax,bl
 0042A5B2    mov         word ptr [esi],ax
 0042A5B5    movzx       eax,bl
 0042A5B8    cmp         eax,4A
>0042A5BB    ja          0042A87A
 0042A5C1    movzx       eax,byte ptr [eax+42A5CF]
 0042A5C8    jmp         dword ptr [eax*4+42A61A]
 0042A5C8    db          1
 0042A5C8    db          1
 0042A5C8    db          2
 0042A5C8    db          3
 0042A5C8    db          4
 0042A5C8    db          5
 0042A5C8    db          6
 0042A5C8    db          7
 0042A5C8    db          8
 0042A5C8    db          9
 0042A5C8    db          10
 0042A5C8    db          11
 0042A5C8    db          12
 0042A5C8    db          13
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          14
 0042A5C8    db          15
 0042A5C8    db          16
 0042A5C8    db          17
 0042A5C8    db          18
 0042A5C8    db          19
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          0
 0042A5C8    db          20
 0042A5C8    db          0
 0042A5C8    db          21
 0042A5C8    dd          0042A87A
 0042A5C8    dd          0042A87F
 0042A5C8    dd          0042A677
 0042A5C8    dd          0042A686
 0042A5C8    dd          0042A693
 0042A5C8    dd          0042A6A0
 0042A5C8    dd          0042A6B3
 0042A5C8    dd          0042A6C6
 0042A5C8    dd          0042A6D9
 0042A5C8    dd          0042A6E6
 0042A5C8    dd          0042A6F3
 0042A5C8    dd          0042A6FF
 0042A5C8    dd          0042A711
 0042A5C8    dd          0042A725
 0042A5C8    dd          0042A732
 0042A5C8    dd          0042A740
 0042A5C8    dd          0042A74E
 0042A5C8    dd          0042A779
 0042A5C8    dd          0042A7A1
 0042A5C8    dd          0042A7B4
 0042A5C8    dd          0042A7E8
 0042A5C8    dd          0042A831
>0042A672    jmp         0042A87F
 0042A677    mov         eax,dword ptr [ebp-8]
 0042A67A    movzx       eax,word ptr [eax]
 0042A67D    mov         word ptr [esi+8],ax
>0042A681    jmp         0042A87F
 0042A686    mov         eax,dword ptr [ebp-8]
 0042A689    mov         eax,dword ptr [eax]
 0042A68B    mov         dword ptr [esi+8],eax
>0042A68E    jmp         0042A87F
 0042A693    mov         eax,dword ptr [ebp-8]
 0042A696    mov         eax,dword ptr [eax]
 0042A698    mov         dword ptr [esi+8],eax
>0042A69B    jmp         0042A87F
 0042A6A0    mov         eax,dword ptr [ebp-8]
 0042A6A3    mov         edx,dword ptr [eax]
 0042A6A5    mov         dword ptr [esi+8],edx
 0042A6A8    mov         edx,dword ptr [eax+4]
 0042A6AB    mov         dword ptr [esi+0C],edx
>0042A6AE    jmp         0042A87F
 0042A6B3    mov         eax,dword ptr [ebp-8]
 0042A6B6    mov         edx,dword ptr [eax]
 0042A6B8    mov         dword ptr [esi+8],edx
 0042A6BB    mov         edx,dword ptr [eax+4]
 0042A6BE    mov         dword ptr [esi+0C],edx
>0042A6C1    jmp         0042A87F
 0042A6C6    mov         eax,dword ptr [ebp-8]
 0042A6C9    mov         edx,dword ptr [eax]
 0042A6CB    mov         dword ptr [esi+8],edx
 0042A6CE    mov         edx,dword ptr [eax+4]
 0042A6D1    mov         dword ptr [esi+0C],edx
>0042A6D4    jmp         0042A87F
 0042A6D9    mov         eax,dword ptr [ebp-8]
 0042A6DC    mov         eax,dword ptr [eax]
 0042A6DE    mov         dword ptr [esi+8],eax
>0042A6E1    jmp         0042A87F
 0042A6E6    mov         eax,dword ptr [ebp-8]
 0042A6E9    mov         eax,dword ptr [eax]
 0042A6EB    mov         dword ptr [esi+8],eax
>0042A6EE    jmp         0042A87F
 0042A6F3    mov         dword ptr [esi+8],80020004
>0042A6FA    jmp         0042A87F
 0042A6FF    mov         eax,dword ptr [ebp-8]
 0042A702    cmp         byte ptr [eax],1
 0042A705    cmc
 0042A706    sbb         eax,eax
 0042A708    mov         word ptr [esi+8],ax
>0042A70C    jmp         0042A87F
 0042A711    mov         word ptr [esi],0
 0042A716    mov         eax,esi
 0042A718    mov         edx,dword ptr [ebp-8]
 0042A71B    call        @VarCopy
>0042A720    jmp         0042A87F
 0042A725    mov         eax,dword ptr [ebp-8]
 0042A728    mov         eax,dword ptr [eax]
 0042A72A    mov         dword ptr [esi+8],eax
>0042A72D    jmp         0042A87F
 0042A732    mov         eax,dword ptr [ebp-8]
 0042A735    movzx       eax,byte ptr [eax]
 0042A738    mov         byte ptr [esi+8],al
>0042A73B    jmp         0042A87F
 0042A740    mov         eax,dword ptr [ebp-8]
 0042A743    movzx       eax,byte ptr [eax]
 0042A746    mov         byte ptr [esi+8],al
>0042A749    jmp         0042A87F
 0042A74E    cmp         byte ptr ds:[7C9F58],0
>0042A755    je          0042A76A
 0042A757    mov         word ptr [esi],3
 0042A75C    mov         eax,dword ptr [ebp-8]
 0042A75F    movzx       eax,word ptr [eax]
 0042A762    mov         dword ptr [esi+8],eax
>0042A765    jmp         0042A87F
 0042A76A    mov         eax,dword ptr [ebp-8]
 0042A76D    movzx       eax,word ptr [eax]
 0042A770    mov         word ptr [esi+8],ax
>0042A774    jmp         0042A87F
 0042A779    cmp         byte ptr ds:[7C9F58],0
>0042A780    je          0042A794
 0042A782    mov         word ptr [esi],3
 0042A787    mov         eax,dword ptr [ebp-8]
 0042A78A    mov         eax,dword ptr [eax]
 0042A78C    mov         dword ptr [esi+8],eax
>0042A78F    jmp         0042A87F
 0042A794    mov         eax,dword ptr [ebp-8]
 0042A797    mov         eax,dword ptr [eax]
 0042A799    mov         dword ptr [esi+8],eax
>0042A79C    jmp         0042A87F
 0042A7A1    mov         eax,dword ptr [ebp-8]
 0042A7A4    mov         edx,dword ptr [eax]
 0042A7A6    mov         dword ptr [esi+8],edx
 0042A7A9    mov         edx,dword ptr [eax+4]
 0042A7AC    mov         dword ptr [esi+0C],edx
>0042A7AF    jmp         0042A87F
 0042A7B4    cmp         byte ptr ds:[7C9F58],0
>0042A7BB    je          0042A7D5
 0042A7BD    mov         word ptr [esi],14
 0042A7C2    mov         eax,dword ptr [ebp-8]
 0042A7C5    mov         edx,dword ptr [eax]
 0042A7C7    mov         dword ptr [esi+8],edx
 0042A7CA    mov         edx,dword ptr [eax+4]
 0042A7CD    mov         dword ptr [esi+0C],edx
>0042A7D0    jmp         0042A87F
 0042A7D5    mov         eax,dword ptr [ebp-8]
 0042A7D8    mov         edx,dword ptr [eax]
 0042A7DA    mov         dword ptr [esi+8],edx
 0042A7DD    mov         edx,dword ptr [eax+4]
 0042A7E0    mov         dword ptr [esi+0C],edx
>0042A7E3    jmp         0042A87F
 0042A7E8    mov         word ptr [esi],8
 0042A7ED    mov         eax,dword ptr [ebp-8]
 0042A7F0    cmp         dword ptr [eax],0
>0042A7F3    je          0042A827
 0042A7F5    mov         eax,dword ptr [ebp-10]
 0042A7F8    lea         eax,[eax+eax*2]
 0042A7FB    mov         edx,dword ptr [ebp-0C]
 0042A7FE    lea         eax,[edx+eax*4]
 0042A801    mov         edx,dword ptr [ebp-8]
 0042A804    call        TStringRef.FromAnsi
 0042A809    mov         eax,dword ptr [eax]
 0042A80B    call        @WStrToPWChar
 0042A810    mov         dword ptr [esi+8],eax
 0042A813    mov         eax,dword ptr [ebp-10]
 0042A816    lea         eax,[eax+eax*2]
 0042A819    mov         edx,dword ptr [ebp-0C]
 0042A81C    xor         ecx,ecx
 0042A81E    mov         dword ptr [edx+eax*4+4],ecx
 0042A822    inc         dword ptr [ebp-10]
>0042A825    jmp         0042A87F
 0042A827    mov         eax,[0079F6B4]
 0042A82C    mov         dword ptr [esi+8],eax
>0042A82F    jmp         0042A87F
 0042A831    mov         word ptr [esi],8
 0042A836    mov         eax,dword ptr [ebp-8]
 0042A839    cmp         dword ptr [eax],0
>0042A83C    je          0042A870
 0042A83E    mov         eax,dword ptr [ebp-10]
 0042A841    lea         eax,[eax+eax*2]
 0042A844    mov         edx,dword ptr [ebp-0C]
 0042A847    lea         eax,[edx+eax*4]
 0042A84A    mov         edx,dword ptr [ebp-8]
 0042A84D    call        TStringRef.FromUnicode
 0042A852    mov         eax,dword ptr [eax]
 0042A854    call        @WStrToPWChar
 0042A859    mov         dword ptr [esi+8],eax
 0042A85C    mov         eax,dword ptr [ebp-10]
 0042A85F    lea         eax,[eax+eax*2]
 0042A862    mov         edx,dword ptr [ebp-0C]
 0042A865    xor         ecx,ecx
 0042A867    mov         dword ptr [edx+eax*4+8],ecx
 0042A86B    inc         dword ptr [ebp-10]
>0042A86E    jmp         0042A87F
 0042A870    mov         eax,[0079F6B4]
 0042A875    mov         dword ptr [esi+8],eax
>0042A878    jmp         0042A87F
 0042A87A    call        @DispInvokeError
 0042A87F    add         bl,0FB
 0042A882    sub         bl,3
>0042A885    jb          0042A89B
 0042A887    sub         bl,2
>0042A88A    je          0042A8AB
 0042A88C    sub         bl,2
>0042A88F    je          0042A8A1
 0042A891    add         bl,0F8
 0042A894    sub         bl,2
>0042A897    jb          0042A89B
>0042A899    jmp         0042A8A7
 0042A89B    add         dword ptr [ebp-8],8
>0042A89F    jmp         0042A8AB
 0042A8A1    add         dword ptr [ebp-8],10
>0042A8A5    jmp         0042A8AB
 0042A8A7    add         dword ptr [ebp-8],4
 0042A8AB    inc         edi
 0042A8AC    dec         dword ptr [ebp-14]
>0042A8AF    jne         0042A4A4
 0042A8B5    pop         edi
 0042A8B6    pop         esi
 0042A8B7    pop         ebx
 0042A8B8    mov         esp,ebp
 0042A8BA    pop         ebp
 0042A8BB    ret         8
*}
end;

//0042A8C0
{*procedure sub_0042A8C0(?:?; ?:?; ?:?);
begin
 0042A8C0    push        ebx
 0042A8C1    push        esi
 0042A8C2    push        edi
 0042A8C3    add         esp,0FFFFFFF4
 0042A8C6    mov         byte ptr [esp+8],cl
 0042A8CA    mov         dword ptr [esp+4],edx
 0042A8CE    mov         dword ptr [esp],eax
 0042A8D1    mov         eax,dword ptr [esp]
 0042A8D4    movzx       esi,byte ptr [eax+1]
 0042A8D8    dec         esi
 0042A8D9    test        esi,esi
>0042A8DB    jl          0042A935
 0042A8DD    inc         esi
 0042A8DE    xor         ebx,ebx
 0042A8E0    mov         eax,dword ptr [esp]
 0042A8E3    movzx       edx,byte ptr [eax+ebx+3]
 0042A8E8    cmp         byte ptr [esp+8],0
>0042A8ED    je          0042A8FC
 0042A8EF    mov         eax,ebx
 0042A8F1    add         eax,eax
 0042A8F3    mov         ecx,dword ptr [esp+4]
 0042A8F7    lea         edi,[ecx+eax*8]
>0042A8FA    jmp         0042A90F
 0042A8FC    mov         eax,dword ptr [esp]
 0042A8FF    movzx       eax,byte ptr [eax+1]
 0042A903    sub         eax,ebx
 0042A905    add         eax,eax
 0042A907    mov         ecx,dword ptr [esp+4]
 0042A90B    lea         edi,[ecx+eax*8-10]
 0042A90F    movzx       eax,word ptr [edi]
 0042A912    and         dl,80
 0042A915    cmp         dl,80
>0042A918    je          0042A931
 0042A91A    cmp         ax,0C
>0042A91E    je          0042A92A
 0042A920    and         ax,2000
 0042A924    cmp         ax,2000
>0042A928    jne         0042A931
 0042A92A    mov         eax,edi
 0042A92C    call        @VarClear
 0042A931    inc         ebx
 0042A932    dec         esi
>0042A933    jne         0042A8E0
 0042A935    add         esp,0C
 0042A938    pop         edi
 0042A939    pop         esi
 0042A93A    pop         ebx
 0042A93B    ret
end;*}

//0042A93C
function InBounds(At:Integer):Boolean;
begin
{*
 0042A93C    push        ebp
 0042A93D    mov         ebp,esp
 0042A93F    push        ebx
 0042A940    mov         ecx,dword ptr [ebp+8]
 0042A943    add         ecx,0FFFFFD00
 0042A949    mov         edx,dword ptr [ecx+eax*8+4]
 0042A94D    add         edx,dword ptr [ecx+eax*8]
 0042A950    mov         ebx,dword ptr [ebp+8]
 0042A953    cmp         edx,dword ptr [ebx+eax*4-100]
 0042A95A    setg        dl
 0042A95D    dec         eax
 0042A95E    test        dl,dl
>0042A960    je          0042A966
 0042A962    test        eax,eax
>0042A964    jge         0042A949
 0042A966    mov         eax,edx
 0042A968    pop         ebx
 0042A969    pop         ebp
 0042A96A    ret
*}
end;

//0042A96C
function Increment(At:Integer):Boolean;
begin
{*
 0042A96C    push        ebp
 0042A96D    mov         ebp,esp
 0042A96F    push        ebx
 0042A970    push        esi
 0042A971    mov         dl,1
 0042A973    mov         ecx,dword ptr [ebp+8]
 0042A976    inc         dword ptr [ecx+eax*4-100]
 0042A97D    mov         ecx,dword ptr [ebp+8]
 0042A980    mov         ecx,dword ptr [ecx+eax*8-2FC]
 0042A987    mov         ebx,ecx
 0042A989    mov         esi,dword ptr [ebp+8]
 0042A98C    add         ebx,dword ptr [esi+eax*8-300]
 0042A993    mov         esi,dword ptr [ebp+8]
 0042A996    cmp         ebx,dword ptr [esi+eax*4-100]
>0042A99D    jg          0042A9BE
 0042A99F    test        eax,eax
>0042A9A1    jne         0042A9A7
 0042A9A3    xor         edx,edx
>0042A9A5    jmp         0042A9BE
 0042A9A7    mov         edx,dword ptr [ebp+8]
 0042A9AA    mov         dword ptr [edx+eax*4-100],ecx
 0042A9B1    mov         edx,dword ptr [ebp+8]
 0042A9B4    push        edx
 0042A9B5    dec         eax
 0042A9B6    call        Increment
 0042A9BB    pop         ecx
 0042A9BC    mov         edx,eax
 0042A9BE    mov         eax,edx
 0042A9C0    pop         esi
 0042A9C1    pop         ebx
 0042A9C2    pop         ebp
 0042A9C3    ret
*}
end;

//0042A9C4
procedure VarArrayCopyForEach(var Dest:TVarData; const Src:TVarData; AProc:TVarArrayForEach);
begin
{*
 0042A9C4    push        ebp
 0042A9C5    mov         ebp,esp
 0042A9C7    add         esp,0FFFFFCE0
 0042A9CD    push        ebx
 0042A9CE    push        esi
 0042A9CF    push        edi
 0042A9D0    mov         dword ptr [ebp-308],ecx
 0042A9D6    mov         ebx,edx
 0042A9D8    mov         dword ptr [ebp-304],eax
 0042A9DE    test        byte ptr [ebx+1],20
>0042A9E2    jne         0042A9EE
 0042A9E4    mov         eax,80070057
 0042A9E9    call        VarResultCheck
 0042A9EE    movzx       eax,word ptr [ebx]
 0042A9F1    mov         edx,eax
 0042A9F3    and         dx,0FFF
 0042A9F8    cmp         dx,0C
>0042A9FC    jne         0042AB75
 0042AA02    test        ah,40
>0042AA05    je          0042AA14
 0042AA07    mov         eax,dword ptr [ebx+8]
 0042AA0A    mov         eax,dword ptr [eax]
 0042AA0C    mov         dword ptr [ebp-314],eax
>0042AA12    jmp         0042AA1D
 0042AA14    mov         eax,dword ptr [ebx+8]
 0042AA17    mov         dword ptr [ebp-314],eax
 0042AA1D    mov         eax,dword ptr [ebp-314]
 0042AA23    movzx       eax,word ptr [eax]
 0042AA26    mov         dword ptr [ebp-310],eax
 0042AA2C    mov         ebx,dword ptr [ebp-310]
 0042AA32    dec         ebx
 0042AA33    test        ebx,ebx
>0042AA35    jl          0042AAA2
 0042AA37    inc         ebx
 0042AA38    xor         edi,edi
 0042AA3A    lea         esi,[ebp-300]
 0042AA40    mov         eax,esi
 0042AA42    mov         dword ptr [ebp-320],eax
 0042AA48    mov         eax,dword ptr [ebp-320]
 0042AA4E    add         eax,4
 0042AA51    push        eax
 0042AA52    lea         eax,[edi+1]
 0042AA55    push        eax
 0042AA56    mov         eax,dword ptr [ebp-314]
 0042AA5C    push        eax
 0042AA5D    call        oleaut32.SafeArrayGetLBound
 0042AA62    call        VarResultCheck
 0042AA67    lea         eax,[ebp-30C]
 0042AA6D    push        eax
 0042AA6E    lea         eax,[edi+1]
 0042AA71    push        eax
 0042AA72    mov         eax,dword ptr [ebp-314]
 0042AA78    push        eax
 0042AA79    call        oleaut32.SafeArrayGetUBound
 0042AA7E    call        VarResultCheck
 0042AA83    mov         eax,dword ptr [ebp-320]
 0042AA89    mov         edx,dword ptr [ebp-30C]
 0042AA8F    sub         edx,dword ptr [eax+4]
 0042AA92    inc         edx
 0042AA93    mov         eax,dword ptr [ebp-320]
 0042AA99    mov         dword ptr [eax],edx
 0042AA9B    inc         edi
 0042AA9C    add         esi,8
 0042AA9F    dec         ebx
>0042AAA0    jne         0042AA40
 0042AAA2    lea         eax,[ebp-300]
 0042AAA8    push        eax
 0042AAA9    mov         eax,dword ptr [ebp-310]
 0042AAAF    push        eax
 0042AAB0    push        0C
 0042AAB2    call        oleaut32.SafeArrayCreate
 0042AAB7    mov         esi,eax
 0042AAB9    test        esi,esi
>0042AABB    jne         0042AAC2
 0042AABD    call        VarArrayCreateError
 0042AAC2    mov         eax,dword ptr [ebp-304]
 0042AAC8    call        @VarClear
 0042AACD    mov         eax,dword ptr [ebp-304]
 0042AAD3    mov         word ptr [eax],200C
 0042AAD8    mov         eax,dword ptr [ebp-304]
 0042AADE    mov         dword ptr [eax+8],esi
 0042AAE1    mov         ebx,dword ptr [ebp-310]
 0042AAE7    dec         ebx
 0042AAE8    test        ebx,ebx
>0042AAEA    jl          0042AB06
 0042AAEC    inc         ebx
 0042AAED    lea         eax,[ebp-2FC]
 0042AAF3    lea         edx,[ebp-100]
 0042AAF9    mov         ecx,dword ptr [eax]
 0042AAFB    mov         dword ptr [edx],ecx
 0042AAFD    add         edx,4
 0042AB00    add         eax,8
 0042AB03    dec         ebx
>0042AB04    jne         0042AAF9
 0042AB06    push        ebp
 0042AB07    mov         ebx,dword ptr [ebp-310]
 0042AB0D    dec         ebx
 0042AB0E    mov         eax,ebx
 0042AB10    call        InBounds
 0042AB15    pop         ecx
 0042AB16    test        al,al
>0042AB18    je          0042AB66
 0042AB1A    lea         eax,[ebp-318]
 0042AB20    push        eax
 0042AB21    lea         eax,[ebp-100]
 0042AB27    push        eax
 0042AB28    mov         eax,dword ptr [ebp-314]
 0042AB2E    push        eax
 0042AB2F    call        oleaut32.SafeArrayPtrOfIndex
 0042AB34    call        VarResultCheck
 0042AB39    lea         eax,[ebp-31C]
 0042AB3F    push        eax
 0042AB40    lea         eax,[ebp-100]
 0042AB46    push        eax
 0042AB47    push        esi
 0042AB48    call        oleaut32.SafeArrayPtrOfIndex
 0042AB4D    call        VarResultCheck
 0042AB52    mov         eax,dword ptr [ebp-318]
 0042AB58    mov         edx,eax
 0042AB5A    mov         eax,dword ptr [ebp-31C]
 0042AB60    call        dword ptr [ebp-308]
 0042AB66    push        ebp
 0042AB67    mov         eax,ebx
 0042AB69    call        Increment
 0042AB6E    pop         ecx
 0042AB6F    test        al,al
>0042AB71    jne         0042AB06
>0042AB73    jmp         0042AB87
 0042AB75    push        ebx
 0042AB76    mov         eax,dword ptr [ebp-304]
 0042AB7C    push        eax
 0042AB7D    call        oleaut32.VariantCopy
 0042AB82    call        VarResultCheck
 0042AB87    pop         edi
 0042AB88    pop         esi
 0042AB89    pop         ebx
 0042AB8A    mov         esp,ebp
 0042AB8C    pop         ebp
 0042AB8D    ret
*}
end;

//0042AB90
procedure VarCopyCopyProc(var Dest:TVarData; const Src:TVarData);
begin
{*
 0042AB90    call        @VarCopy
 0042AB95    ret
*}
end;

//0042AB98
procedure VarCopyDeep(var Dest:TVarData; const Source:TVarData);
begin
{*
 0042AB98    push        ebx
 0042AB99    push        esi
 0042AB9A    push        edi
 0042AB9B    push        ecx
 0042AB9C    mov         esi,edx
 0042AB9E    mov         ebx,eax
 0042ABA0    test        word ptr [ebx],0BFE8
>0042ABA5    je          0042ABB0
 0042ABA7    mov         eax,ebx
 0042ABA9    call        VarClearDeep
>0042ABAE    jmp         0042ABB5
 0042ABB0    xor         eax,eax
 0042ABB2    mov         dword ptr [ebx+8],eax
 0042ABB5    movzx       eax,word ptr [esi]
 0042ABB8    cmp         ax,14
>0042ABBC    jae         0042ABCF
 0042ABBE    push        esi
 0042ABBF    push        ebx
 0042ABC0    call        oleaut32.VariantCopy
 0042ABC5    call        VarResultCheck
>0042ABCA    jmp         0042AC83
 0042ABCF    cmp         ax,100
>0042ABD3    jne         0042ABEF
 0042ABD5    mov         word ptr [ebx],100
 0042ABDA    xor         eax,eax
 0042ABDC    mov         dword ptr [ebx+8],eax
 0042ABDF    lea         eax,[ebx+8]
 0042ABE2    mov         edx,dword ptr [esi+8]
 0042ABE5    call        @LStrAsg
>0042ABEA    jmp         0042AC83
 0042ABEF    cmp         ax,102
>0042ABF3    jne         0042AC0C
 0042ABF5    mov         word ptr [ebx],102
 0042ABFA    xor         eax,eax
 0042ABFC    mov         dword ptr [ebx+8],eax
 0042ABFF    lea         eax,[ebx+8]
 0042AC02    mov         edx,dword ptr [esi+8]
 0042AC05    call        @UStrAsg
>0042AC0A    jmp         0042AC83
 0042AC0C    movzx       edi,word ptr [esi]
 0042AC0F    cmp         di,4102
>0042AC14    je          0042AC1D
 0042AC16    cmp         di,4100
>0042AC1B    jne         0042AC28
 0042AC1D    mov         word ptr [ebx],di
 0042AC20    mov         eax,dword ptr [esi+8]
 0042AC23    mov         dword ptr [ebx+8],eax
>0042AC26    jmp         0042AC83
 0042AC28    cmp         di,101
>0042AC2D    jne         0042AC42
 0042AC2F    mov         word ptr [ebx],di
 0042AC32    mov         eax,dword ptr [esi+8]
 0042AC35    mov         dword ptr [ebx+8],eax
 0042AC38    mov         eax,ebx
 0042AC3A    call        dword ptr ds:[7C9F54]
>0042AC40    jmp         0042AC83
 0042AC42    test        di,2000
>0042AC47    je          0042AC59
 0042AC49    mov         ecx,42AB90;VarCopyCopyProc
 0042AC4E    mov         edx,esi
 0042AC50    mov         eax,ebx
 0042AC52    call        VarArrayCopyForEach
>0042AC57    jmp         0042AC83
 0042AC59    mov         edx,esp
 0042AC5B    mov         eax,edi
 0042AC5D    call        FindCustomVariantType
 0042AC62    test        al,al
>0042AC64    je          0042AC77
 0042AC66    push        0
 0042AC68    mov         ecx,esi
 0042AC6A    mov         edx,ebx
 0042AC6C    mov         eax,dword ptr [esp+4]
 0042AC70    mov         ebx,dword ptr [eax]
 0042AC72    call        dword ptr [ebx+28]
>0042AC75    jmp         0042AC83
 0042AC77    push        esi
 0042AC78    push        ebx
 0042AC79    call        oleaut32.VariantCopy
 0042AC7E    call        VarResultCheck
 0042AC83    pop         edx
 0042AC84    pop         edi
 0042AC85    pop         esi
 0042AC86    pop         ebx
 0042AC87    ret
*}
end;

//0042AC88
procedure @VarCopy(var Dest:TVarData; const Source:TVarData);
begin
{*
 0042AC88    push        ebx
 0042AC89    push        esi
 0042AC8A    mov         ebx,edx
 0042AC8C    mov         esi,eax
 0042AC8E    cmp         esi,ebx
>0042AC90    je          0042ACC0
 0042AC92    test        word ptr [ebx],0BFE8
>0042AC97    jne         0042ACB7
 0042AC99    test        word ptr [esi],0BFE8
>0042AC9E    je          0042ACA7
 0042ACA0    mov         eax,esi
 0042ACA2    call        VarClearDeep
 0042ACA7    mov         edx,esi
 0042ACA9    mov         eax,ebx
 0042ACAB    mov         ecx,10
 0042ACB0    call        Move
>0042ACB5    jmp         0042ACC0
 0042ACB7    mov         edx,ebx
 0042ACB9    mov         eax,esi
 0042ACBB    call        VarCopyDeep
 0042ACC0    pop         esi
 0042ACC1    pop         ebx
 0042ACC2    ret
*}
end;

//0042ACC4
procedure @VarStringToOleStr(var Dest:TVarData; const Source:TVarData);
begin
{*
 0042ACC4    push        ebx
 0042ACC5    push        esi
 0042ACC6    mov         ebx,eax
 0042ACC8    cmp         word ptr [edx],100
>0042ACCD    jne         0042ACDB
 0042ACCF    mov         eax,dword ptr [edx+8]
 0042ACD2    call        StringToOleStr
 0042ACD7    mov         esi,eax
>0042ACD9    jmp         0042ACE5
 0042ACDB    mov         eax,dword ptr [edx+8]
 0042ACDE    call        StringToOleStr
 0042ACE3    mov         esi,eax
 0042ACE5    mov         eax,ebx
 0042ACE7    call        @VarClear
 0042ACEC    mov         word ptr [ebx],8
 0042ACF1    mov         dword ptr [ebx+8],esi
 0042ACF4    pop         esi
 0042ACF5    pop         ebx
 0042ACF6    ret
*}
end;

//0042ACF8
procedure VarStringToOleStr(var Dest:Variant; const Source:Variant);
begin
{*
>0042ACF8    jmp         @VarStringToOleStr
 0042ACFD    ret
*}
end;

//0042AD00
procedure VarCastAsAny(var Dest:TVarData; const Source:TVarData; ADestType:TVarType);
begin
{*
 0042AD00    push        ebp
 0042AD01    mov         ebp,esp
 0042AD03    add         esp,0FFFFFFF0
 0042AD06    push        ebx
 0042AD07    push        esi
 0042AD08    push        edi
 0042AD09    mov         edi,ecx
 0042AD0B    mov         esi,edx
 0042AD0D    mov         ebx,eax
 0042AD0F    lea         eax,[ebp-10]
 0042AD12    push        eax
 0042AD13    call        oleaut32.VariantInit
 0042AD18    xor         eax,eax
 0042AD1A    push        ebp
 0042AD1B    push        42AD5C
 0042AD20    push        dword ptr fs:[eax]
 0042AD23    mov         dword ptr fs:[eax],esp
 0042AD26    mov         edx,esi
 0042AD28    lea         eax,[ebp-10]
 0042AD2B    call        @VarCopy
 0042AD30    lea         eax,[ebp-10]
 0042AD33    call        dword ptr ds:[7C9F50]
 0042AD39    movzx       ecx,di
 0042AD3C    lea         edx,[ebp-10]
 0042AD3F    mov         eax,ebx
 0042AD41    call        @VarCast
 0042AD46    xor         eax,eax
 0042AD48    pop         edx
 0042AD49    pop         ecx
 0042AD4A    pop         ecx
 0042AD4B    mov         dword ptr fs:[eax],edx
 0042AD4E    push        42AD63
 0042AD53    lea         eax,[ebp-10]
 0042AD56    call        @VarClear
 0042AD5B    ret
>0042AD5C    jmp         @HandleFinally
>0042AD61    jmp         0042AD53
 0042AD63    pop         edi
 0042AD64    pop         esi
 0042AD65    pop         ebx
 0042AD66    mov         esp,ebp
 0042AD68    pop         ebp
 0042AD69    ret
*}
end;

//0042AD6C
procedure VarCastAsOleStr(var Dest:TVarData; const Source:TVarData);
begin
{*
 0042AD6C    push        ebp
 0042AD6D    mov         ebp,esp
 0042AD6F    push        0
 0042AD71    push        ebx
 0042AD72    mov         ebx,eax
 0042AD74    xor         eax,eax
 0042AD76    push        ebp
 0042AD77    push        42ADAA
 0042AD7C    push        dword ptr fs:[eax]
 0042AD7F    mov         dword ptr fs:[eax],esp
 0042AD82    lea         eax,[ebp-4]
 0042AD85    call        @VarToWStr
 0042AD8A    mov         eax,ebx
 0042AD8C    mov         edx,dword ptr [ebp-4]
 0042AD8F    call        @VarFromWStr
 0042AD94    xor         eax,eax
 0042AD96    pop         edx
 0042AD97    pop         ecx
 0042AD98    pop         ecx
 0042AD99    mov         dword ptr fs:[eax],edx
 0042AD9C    push        42ADB1
 0042ADA1    lea         eax,[ebp-4]
 0042ADA4    call        @WStrClr
 0042ADA9    ret
>0042ADAA    jmp         @HandleFinally
>0042ADAF    jmp         0042ADA1
 0042ADB1    pop         ebx
 0042ADB2    pop         ecx
 0042ADB3    pop         ebp
 0042ADB4    ret
*}
end;

//0042ADB8
procedure VarCastAsString(var Dest:TVarData; const Source:TVarData);
begin
{*
 0042ADB8    push        ebp
 0042ADB9    mov         ebp,esp
 0042ADBB    push        0
 0042ADBD    push        ebx
 0042ADBE    mov         ebx,eax
 0042ADC0    xor         eax,eax
 0042ADC2    push        ebp
 0042ADC3    push        42ADF6
 0042ADC8    push        dword ptr fs:[eax]
 0042ADCB    mov         dword ptr fs:[eax],esp
 0042ADCE    lea         eax,[ebp-4]
 0042ADD1    call        @VarToLStr
 0042ADD6    mov         eax,ebx
 0042ADD8    mov         edx,dword ptr [ebp-4]
 0042ADDB    call        @VarFromLStr
 0042ADE0    xor         eax,eax
 0042ADE2    pop         edx
 0042ADE3    pop         ecx
 0042ADE4    pop         ecx
 0042ADE5    mov         dword ptr fs:[eax],edx
 0042ADE8    push        42ADFD
 0042ADED    lea         eax,[ebp-4]
 0042ADF0    call        @LStrClr
 0042ADF5    ret
>0042ADF6    jmp         @HandleFinally
>0042ADFB    jmp         0042ADED
 0042ADFD    pop         ebx
 0042ADFE    pop         ecx
 0042ADFF    pop         ebp
 0042AE00    ret
*}
end;

//0042AE04
procedure VarCastAsUString(var Dest:TVarData; const Source:TVarData);
begin
{*
 0042AE04    push        ebp
 0042AE05    mov         ebp,esp
 0042AE07    push        0
 0042AE09    push        ebx
 0042AE0A    mov         ebx,eax
 0042AE0C    xor         eax,eax
 0042AE0E    push        ebp
 0042AE0F    push        42AE42
 0042AE14    push        dword ptr fs:[eax]
 0042AE17    mov         dword ptr fs:[eax],esp
 0042AE1A    lea         eax,[ebp-4]
 0042AE1D    call        @VarToUStr
 0042AE22    mov         eax,ebx
 0042AE24    mov         edx,dword ptr [ebp-4]
 0042AE27    call        @VarFromUStr
 0042AE2C    xor         eax,eax
 0042AE2E    pop         edx
 0042AE2F    pop         ecx
 0042AE30    pop         ecx
 0042AE31    mov         dword ptr fs:[eax],edx
 0042AE34    push        42AE49
 0042AE39    lea         eax,[ebp-4]
 0042AE3C    call        @UStrClr
 0042AE41    ret
>0042AE42    jmp         @HandleFinally
>0042AE47    jmp         0042AE39
 0042AE49    pop         ebx
 0042AE4A    pop         ecx
 0042AE4B    pop         ebp
 0042AE4C    ret
*}
end;

//0042AE50
procedure VarCastAsDispatch(var Dest:TVarData; const Source:TVarData);
begin
{*
 0042AE50    push        ebp
 0042AE51    mov         ebp,esp
 0042AE53    push        0
 0042AE55    push        ebx
 0042AE56    mov         ebx,eax
 0042AE58    xor         eax,eax
 0042AE5A    push        ebp
 0042AE5B    push        42AE8E
 0042AE60    push        dword ptr fs:[eax]
 0042AE63    mov         dword ptr fs:[eax],esp
 0042AE66    lea         eax,[ebp-4]
 0042AE69    call        @VarToDisp
 0042AE6E    mov         eax,ebx
 0042AE70    mov         edx,dword ptr [ebp-4]
 0042AE73    call        @VarFromDisp
 0042AE78    xor         eax,eax
 0042AE7A    pop         edx
 0042AE7B    pop         ecx
 0042AE7C    pop         ecx
 0042AE7D    mov         dword ptr fs:[eax],edx
 0042AE80    push        42AE95
 0042AE85    lea         eax,[ebp-4]
 0042AE88    call        @IntfClear
 0042AE8D    ret
>0042AE8E    jmp         @HandleFinally
>0042AE93    jmp         0042AE85
 0042AE95    pop         ebx
 0042AE96    pop         ecx
 0042AE97    pop         ebp
 0042AE98    ret
*}
end;

//0042AE9C
procedure VarCastAsInterface(var Dest:TVarData; const Source:TVarData);
begin
{*
 0042AE9C    push        ebp
 0042AE9D    mov         ebp,esp
 0042AE9F    push        0
 0042AEA1    push        ebx
 0042AEA2    mov         ebx,eax
 0042AEA4    xor         eax,eax
 0042AEA6    push        ebp
 0042AEA7    push        42AEDA
 0042AEAC    push        dword ptr fs:[eax]
 0042AEAF    mov         dword ptr fs:[eax],esp
 0042AEB2    lea         eax,[ebp-4]
 0042AEB5    call        @VarToIntf
 0042AEBA    mov         eax,ebx
 0042AEBC    mov         edx,dword ptr [ebp-4]
 0042AEBF    call        @VarFromIntf
 0042AEC4    xor         eax,eax
 0042AEC6    pop         edx
 0042AEC7    pop         ecx
 0042AEC8    pop         ecx
 0042AEC9    mov         dword ptr fs:[eax],edx
 0042AECC    push        42AEE1
 0042AED1    lea         eax,[ebp-4]
 0042AED4    call        @IntfClear
 0042AED9    ret
>0042AEDA    jmp         @HandleFinally
>0042AEDF    jmp         0042AED1
 0042AEE1    pop         ebx
 0042AEE2    pop         ecx
 0042AEE3    pop         ebp
 0042AEE4    ret
*}
end;

//0042AEE8
procedure VarCastViaOS(var Dest:TVarData; const Source:TVarData; ADestType:TVarType);
begin
{*
 0042AEE8    push        ebx
 0042AEE9    push        esi
 0042AEEA    push        edi
 0042AEEB    mov         esi,ecx
 0042AEED    mov         ebx,edx
 0042AEEF    mov         edi,eax
 0042AEF1    movzx       eax,word ptr [ebx]
 0042AEF4    mov         edx,eax
 0042AEF6    and         dx,0FFF
 0042AEFB    cmp         dx,14
>0042AEFF    jb          0042AF2E
 0042AF01    mov         edx,ebx
 0042AF03    mov         eax,edi
 0042AF05    mov         ecx,8
 0042AF0A    call        @VarCast
 0042AF0F    push        esi
 0042AF10    push        0
 0042AF12    push        400
 0042AF17    push        edi
 0042AF18    push        edi
 0042AF19    mov         eax,[007C4C30];^gvar_007C9EEC
 0042AF1E    mov         eax,dword ptr [eax]
 0042AF20    call        eax
 0042AF22    movzx       edx,word ptr [ebx]
 0042AF25    mov         ecx,esi
 0042AF27    call        VarResultCheck
>0042AF2C    jmp         0042AF61
 0042AF2E    mov         dx,0FFF
 0042AF32    and         dx,si
 0042AF35    cmp         dx,14
>0042AF39    jae         0042AF5A
 0042AF3B    push        esi
 0042AF3C    push        0
 0042AF3E    push        400
 0042AF43    push        ebx
 0042AF44    push        edi
 0042AF45    mov         eax,[007C4C30];^gvar_007C9EEC
 0042AF4A    mov         eax,dword ptr [eax]
 0042AF4C    call        eax
 0042AF4E    movzx       edx,word ptr [ebx]
 0042AF51    mov         ecx,esi
 0042AF53    call        VarResultCheck
>0042AF58    jmp         0042AF61
 0042AF5A    mov         edx,esi
 0042AF5C    call        VarCastError
 0042AF61    pop         edi
 0042AF62    pop         esi
 0042AF63    pop         ebx
 0042AF64    ret
*}
end;

//0042AF68
procedure VarCastRare(var Dest:TVarData; const Source:TVarData; ADestType:TVarType);
begin
{*
 0042AF68    push        ebx
 0042AF69    push        esi
 0042AF6A    push        edi
 0042AF6B    push        ebp
 0042AF6C    push        ecx
 0042AF6D    mov         esi,ecx
 0042AF6F    mov         ebx,edx
 0042AF71    mov         edi,eax
 0042AF73    movzx       ebp,word ptr [ebx]
 0042AF76    cmp         bp,101
>0042AF7B    jne         0042AF8A
 0042AF7D    mov         edx,ebx
 0042AF7F    mov         eax,edi
 0042AF81    mov         ecx,esi
 0042AF83    call        VarCastAsAny
>0042AF88    jmp         0042AFCD
 0042AF8A    mov         edx,esp
 0042AF8C    mov         eax,ebp
 0042AF8E    call        FindCustomVariantType
 0042AF93    test        al,al
>0042AF95    je          0042AFA7
 0042AF97    push        esi
 0042AF98    mov         ecx,ebx
 0042AF9A    mov         edx,edi
 0042AF9C    mov         eax,dword ptr [esp+4]
 0042AFA0    mov         ebx,dword ptr [eax]
 0042AFA2    call        dword ptr [ebx+1C]
>0042AFA5    jmp         0042AFCD
 0042AFA7    mov         edx,esp
 0042AFA9    mov         eax,esi
 0042AFAB    call        FindCustomVariantType
 0042AFB0    test        al,al
>0042AFB2    je          0042AFC2
 0042AFB4    mov         ecx,ebx
 0042AFB6    mov         edx,edi
 0042AFB8    mov         eax,dword ptr [esp]
 0042AFBB    mov         ebx,dword ptr [eax]
 0042AFBD    call        dword ptr [ebx+18]
>0042AFC0    jmp         0042AFCD
 0042AFC2    mov         edx,ebx
 0042AFC4    mov         eax,edi
 0042AFC6    mov         ecx,esi
 0042AFC8    call        VarCastViaOS
 0042AFCD    pop         edx
 0042AFCE    pop         ebp
 0042AFCF    pop         edi
 0042AFD0    pop         esi
 0042AFD1    pop         ebx
 0042AFD2    ret
*}
end;

//0042AFD4
procedure @VarCast(var Dest:TVarData; const Source:TVarData; AVarType:Integer);
begin
{*
 0042AFD4    push        ebx
 0042AFD5    push        esi
 0042AFD6    mov         ebx,edx
 0042AFD8    mov         esi,eax
 0042AFDA    movzx       eax,word ptr [ebx]
 0042AFDD    movzx       edx,ax
 0042AFE0    cmp         ecx,edx
>0042AFE2    jne         0042AFF0
 0042AFE4    mov         edx,ebx
 0042AFE6    mov         eax,esi
 0042AFE8    call        @VarCopy
 0042AFED    pop         esi
 0042AFEE    pop         ebx
 0042AFEF    ret
 0042AFF0    cmp         ax,400C
>0042AFF4    jne         0042B007
 0042AFF6    mov         eax,dword ptr [ebx+8]
 0042AFF9    mov         edx,eax
 0042AFFB    mov         eax,esi
 0042AFFD    call        @VarCast
>0042B002    jmp         0042B224
 0042B007    mov         edx,ecx
 0042B009    cmp         edx,15
>0042B00C    ja          0042B1E8
 0042B012    jmp         dword ptr [edx*4+42B019]
 0042B012    dd          0042B071
 0042B012    dd          0042B09C
 0042B012    dd          0042B0A8
 0042B012    dd          0042B0BD
 0042B012    dd          0042B0D2
 0042B012    dd          0042B0EC
 0042B012    dd          0042B106
 0042B012    dd          0042B120
 0042B012    dd          0042B13A
 0042B012    dd          0042B1D2
 0042B012    dd          0042B1E8
 0042B012    dd          0042B148
 0042B012    dd          0042B1E8
 0042B012    dd          0042B1DD
 0042B012    dd          0042B1E8
 0042B012    dd          0042B1E8
 0042B012    dd          0042B15D
 0042B012    dd          0042B172
 0042B012    dd          0042B187
 0042B012    dd          0042B19C
 0042B012    dd          0042B1AE
 0042B012    dd          0042B1C0
 0042B071    cmp         word ptr [ebx],1
>0042B075    jne         0042B090
 0042B077    cmp         byte ptr ds:[79F68E],0
>0042B07E    je          0042B090
 0042B080    xor         edx,edx
 0042B082    mov         ax,1
 0042B086    call        VarCastError
>0042B08B    jmp         0042B224
 0042B090    mov         eax,esi
 0042B092    call        @VarClear
>0042B097    jmp         0042B224
 0042B09C    mov         eax,esi
 0042B09E    call        @VarNull
>0042B0A3    jmp         0042B224
 0042B0A8    mov         eax,ebx
 0042B0AA    call        @VarToSmallInt
 0042B0AF    mov         edx,eax
 0042B0B1    mov         eax,esi
 0042B0B3    call        @VarFromSmallInt
>0042B0B8    jmp         0042B224
 0042B0BD    mov         eax,ebx
 0042B0BF    call        @VarToInteger
 0042B0C4    mov         edx,eax
 0042B0C6    mov         eax,esi
 0042B0C8    call        @VarFromInteger
>0042B0CD    jmp         0042B224
 0042B0D2    mov         eax,ebx
 0042B0D4    call        @VarToSingle
 0042B0D9    add         esp,0FFFFFFFC
 0042B0DC    fstp        dword ptr [esp]
 0042B0DF    wait
 0042B0E0    mov         eax,esi
 0042B0E2    call        @VarFromSingle
>0042B0E7    jmp         0042B224
 0042B0EC    mov         eax,ebx
 0042B0EE    call        @VarToDouble
 0042B0F3    add         esp,0FFFFFFF8
 0042B0F6    fstp        qword ptr [esp]
 0042B0F9    wait
 0042B0FA    mov         eax,esi
 0042B0FC    call        @VarFromDouble
>0042B101    jmp         0042B224
 0042B106    mov         eax,ebx
 0042B108    call        @VarToCurrency
 0042B10D    add         esp,0FFFFFFF8
 0042B110    fistp       qword ptr [esp]
 0042B113    wait
 0042B114    mov         eax,esi
 0042B116    call        @VarFromCurrency
>0042B11B    jmp         0042B224
 0042B120    mov         eax,ebx
 0042B122    call        @VarToDate
 0042B127    add         esp,0FFFFFFF8
 0042B12A    fstp        qword ptr [esp]
 0042B12D    wait
 0042B12E    mov         eax,esi
 0042B130    call        @VarFromDate
>0042B135    jmp         0042B224
 0042B13A    mov         edx,ebx
 0042B13C    mov         eax,esi
 0042B13E    call        VarCastAsOleStr
>0042B143    jmp         0042B224
 0042B148    mov         eax,ebx
 0042B14A    call        @VarToBoolean
 0042B14F    mov         edx,eax
 0042B151    mov         eax,esi
 0042B153    call        @VarFromBool
>0042B158    jmp         0042B224
 0042B15D    mov         eax,ebx
 0042B15F    call        @VarToShortInt
 0042B164    mov         edx,eax
 0042B166    mov         eax,esi
 0042B168    call        @VarFromShortInt
>0042B16D    jmp         0042B224
 0042B172    mov         eax,ebx
 0042B174    call        @VarToByte
 0042B179    mov         edx,eax
 0042B17B    mov         eax,esi
 0042B17D    call        @VarFromByte
>0042B182    jmp         0042B224
 0042B187    mov         eax,ebx
 0042B189    call        @VarToWord
 0042B18E    mov         edx,eax
 0042B190    mov         eax,esi
 0042B192    call        @VarFromWord
>0042B197    jmp         0042B224
 0042B19C    mov         eax,ebx
 0042B19E    call        @VarToLongWord
 0042B1A3    mov         edx,eax
 0042B1A5    mov         eax,esi
 0042B1A7    call        @VarFromLongWord
>0042B1AC    jmp         0042B224
 0042B1AE    mov         eax,ebx
 0042B1B0    call        @VarToInt64
 0042B1B5    push        edx
 0042B1B6    push        eax
 0042B1B7    mov         eax,esi
 0042B1B9    call        @VarFromInt64
>0042B1BE    jmp         0042B224
 0042B1C0    mov         eax,ebx
 0042B1C2    call        @VarToUInt64
 0042B1C7    push        edx
 0042B1C8    push        eax
 0042B1C9    mov         eax,esi
 0042B1CB    call        @VarFromUInt64
>0042B1D0    jmp         0042B224
 0042B1D2    mov         edx,ebx
 0042B1D4    mov         eax,esi
 0042B1D6    call        VarCastAsDispatch
>0042B1DB    jmp         0042B224
 0042B1DD    mov         edx,ebx
 0042B1DF    mov         eax,esi
 0042B1E1    call        VarCastAsInterface
>0042B1E6    jmp         0042B224
 0042B1E8    mov         edx,ecx
 0042B1EA    sub         edx,100
>0042B1F0    je          0042B1FA
 0042B1F2    dec         edx
>0042B1F3    je          0042B210
 0042B1F5    dec         edx
>0042B1F6    je          0042B205
>0042B1F8    jmp         0042B21B
 0042B1FA    mov         edx,ebx
 0042B1FC    mov         eax,esi
 0042B1FE    call        VarCastAsString
>0042B203    jmp         0042B224
 0042B205    mov         edx,ebx
 0042B207    mov         eax,esi
 0042B209    call        VarCastAsUString
>0042B20E    jmp         0042B224
 0042B210    mov         dx,101
 0042B214    call        VarCastError
>0042B219    jmp         0042B224
 0042B21B    mov         edx,ebx
 0042B21D    mov         eax,esi
 0042B21F    call        VarCastRare
 0042B224    pop         esi
 0042B225    pop         ebx
 0042B226    ret
*}
end;

//0042B228
function VarToIntAsString(const V:TVarData):Integer;
begin
{*
 0042B228    push        ebp
 0042B229    mov         ebp,esp
 0042B22B    xor         ecx,ecx
 0042B22D    push        ecx
 0042B22E    push        ecx
 0042B22F    push        ecx
 0042B230    push        ecx
 0042B231    push        ecx
 0042B232    push        ebx
 0042B233    push        esi
 0042B234    mov         esi,eax
 0042B236    xor         eax,eax
 0042B238    push        ebp
 0042B239    push        42B2FD
 0042B23E    push        dword ptr fs:[eax]
 0042B241    mov         dword ptr fs:[eax],esp
 0042B244    mov         edx,esi
 0042B246    lea         eax,[ebp-4]
 0042B249    call        @VarToWStr
 0042B24E    lea         eax,[ebp-8]
 0042B251    push        eax
 0042B252    push        0
 0042B254    push        400
 0042B259    mov         eax,dword ptr [ebp-4]
 0042B25C    call        @WStrToPWChar
 0042B261    push        eax
 0042B262    mov         eax,[007C4DFC];^gvar_007C9F20
 0042B267    mov         eax,dword ptr [eax]
 0042B269    call        eax
 0042B26B    mov         ebx,eax
 0042B26D    mov         eax,ebx
 0042B26F    sub         eax,80020005
>0042B274    je          0042B27F
 0042B276    sub         eax,7FFDFFFB
>0042B27B    jne         0042B2CC
>0042B27D    jmp         0042B2DA
 0042B27F    lea         eax,[ebp-10]
 0042B282    mov         edx,dword ptr [ebp-4]
 0042B285    call        @UStrFromWStr
 0042B28A    mov         eax,dword ptr [ebp-10]
 0042B28D    lea         edx,[ebp-8]
 0042B290    call        0041E5A0
 0042B295    test        al,al
>0042B297    jne         0042B2DA
 0042B299    lea         eax,[ebp-14]
 0042B29C    mov         edx,dword ptr [ebp-4]
 0042B29F    call        @UStrFromWStr
 0042B2A4    mov         eax,dword ptr [ebp-14]
 0042B2A7    lea         edx,[ebp-9]
 0042B2AA    call        TryStrToBool
 0042B2AF    test        al,al
>0042B2B1    je          0042B2BC
 0042B2B3    movzx       eax,byte ptr [ebp-9]
 0042B2B7    mov         dword ptr [ebp-8],eax
>0042B2BA    jmp         0042B2DA
 0042B2BC    movzx       edx,word ptr [esi]
 0042B2BF    mov         cx,3
 0042B2C3    mov         eax,ebx
 0042B2C5    call        VarResultCheck
>0042B2CA    jmp         0042B2DA
 0042B2CC    movzx       edx,word ptr [esi]
 0042B2CF    mov         cx,3
 0042B2D3    mov         eax,ebx
 0042B2D5    call        VarResultCheck
 0042B2DA    xor         eax,eax
 0042B2DC    pop         edx
 0042B2DD    pop         ecx
 0042B2DE    pop         ecx
 0042B2DF    mov         dword ptr fs:[eax],edx
 0042B2E2    push        42B304
 0042B2E7    lea         eax,[ebp-14]
 0042B2EA    mov         edx,2
 0042B2EF    call        @UStrArrayClr
 0042B2F4    lea         eax,[ebp-4]
 0042B2F7    call        @WStrClr
 0042B2FC    ret
>0042B2FD    jmp         @HandleFinally
>0042B302    jmp         0042B2E7
 0042B304    mov         eax,dword ptr [ebp-8]
 0042B307    pop         esi
 0042B308    pop         ebx
 0042B309    mov         esp,ebp
 0042B30B    pop         ebp
 0042B30C    ret
*}
end;

//0042B310
function VarToIntViaOS(const V:TVarData):Integer;
begin
{*
 0042B310    push        ebx
 0042B311    add         esp,0FFFFFFF0
 0042B314    mov         ebx,eax
 0042B316    push        esp
 0042B317    call        oleaut32.VariantInit
 0042B31C    push        3
 0042B31E    push        0
 0042B320    push        400
 0042B325    push        ebx
 0042B326    lea         eax,[esp+10]
 0042B32A    push        eax
 0042B32B    mov         eax,[007C4C30];^gvar_007C9EEC
 0042B330    mov         eax,dword ptr [eax]
 0042B332    call        eax
 0042B334    movzx       edx,word ptr [ebx]
 0042B337    mov         cx,3
 0042B33B    call        VarResultCheck
 0042B340    mov         eax,dword ptr [esp+8]
 0042B344    add         esp,10
 0042B347    pop         ebx
 0042B348    ret
*}
end;

//0042B34C
function VarToIntAny(const V:TVarData):Integer;
begin
{*
 0042B34C    push        ebp
 0042B34D    mov         ebp,esp
 0042B34F    add         esp,0FFFFFFEC
 0042B352    push        ebx
 0042B353    mov         ebx,eax
 0042B355    lea         eax,[ebp-14]
 0042B358    push        eax
 0042B359    call        oleaut32.VariantInit
 0042B35E    xor         eax,eax
 0042B360    push        ebp
 0042B361    push        42B3A0
 0042B366    push        dword ptr fs:[eax]
 0042B369    mov         dword ptr fs:[eax],esp
 0042B36C    mov         edx,ebx
 0042B36E    lea         eax,[ebp-14]
 0042B371    call        @VarCopy
 0042B376    lea         eax,[ebp-14]
 0042B379    call        dword ptr ds:[7C9F50]
 0042B37F    lea         eax,[ebp-14]
 0042B382    call        @VarToInteger
 0042B387    mov         dword ptr [ebp-4],eax
 0042B38A    xor         eax,eax
 0042B38C    pop         edx
 0042B38D    pop         ecx
 0042B38E    pop         ecx
 0042B38F    mov         dword ptr fs:[eax],edx
 0042B392    push        42B3A7
 0042B397    lea         eax,[ebp-14]
 0042B39A    call        @VarClear
 0042B39F    ret
>0042B3A0    jmp         @HandleFinally
>0042B3A5    jmp         0042B397
 0042B3A7    mov         eax,dword ptr [ebp-4]
 0042B3AA    pop         ebx
 0042B3AB    mov         esp,ebp
 0042B3AD    pop         ebp
 0042B3AE    ret
*}
end;

//0042B3B0
function VarToIntCustom(const V:TVarData; var AValue:Integer):Boolean;
begin
{*
 0042B3B0    push        ebx
 0042B3B1    push        esi
 0042B3B2    push        edi
 0042B3B3    add         esp,0FFFFFFEC
 0042B3B6    mov         edi,edx
 0042B3B8    mov         esi,eax
 0042B3BA    mov         edx,esp
 0042B3BC    movzx       eax,word ptr [esi]
 0042B3BF    call        FindCustomVariantType
 0042B3C4    mov         ebx,eax
 0042B3C6    test        bl,bl
>0042B3C8    je          0042B3EB
 0042B3CA    lea         eax,[esp+4]
 0042B3CE    push        eax
 0042B3CF    call        oleaut32.VariantInit
 0042B3D4    push        3
 0042B3D6    mov         ecx,esi
 0042B3D8    lea         edx,[esp+8]
 0042B3DC    mov         eax,dword ptr [esp+4]
 0042B3E0    mov         esi,dword ptr [eax]
 0042B3E2    call        dword ptr [esi+1C]
 0042B3E5    mov         eax,dword ptr [esp+0C]
 0042B3E9    mov         dword ptr [edi],eax
 0042B3EB    mov         eax,ebx
 0042B3ED    add         esp,14
 0042B3F0    pop         edi
 0042B3F1    pop         esi
 0042B3F2    pop         ebx
 0042B3F3    ret
*}
end;

//0042B3F4
function @VarToInteger(const V:TVarData):Integer;
begin
{*
 0042B3F4    push        ebp
 0042B3F5    mov         ebp,esp
 0042B3F7    add         esp,0FFFFFFF8
 0042B3FA    push        ebx
 0042B3FB    push        esi
 0042B3FC    push        edi
 0042B3FD    mov         dword ptr [ebp-4],eax
 0042B400    xor         edx,edx
 0042B402    push        ebp
 0042B403    push        42B86C
 0042B408    push        dword ptr fs:[edx]
 0042B40B    mov         dword ptr fs:[edx],esp
 0042B40E    mov         eax,dword ptr [ebp-4]
 0042B411    movzx       eax,word ptr [eax]
 0042B414    movzx       edx,ax
 0042B417    cmp         edx,15
>0042B41A    ja          0042B614
 0042B420    jmp         dword ptr [edx*4+42B427]
 0042B420    dd          0042B47F
 0042B420    dd          0042B489
 0042B420    dd          0042B4A9
 0042B420    dd          0042B4B8
 0042B420    dd          0042B4C6
 0042B420    dd          0042B4E7
 0042B420    dd          0042B508
 0042B420    dd          0042B52F
 0042B420    dd          0042B550
 0042B420    dd          0042B604
 0042B420    dd          0042B614
 0042B420    dd          0042B560
 0042B420    dd          0042B5F1
 0042B420    dd          0042B604
 0042B420    dd          0042B614
 0042B420    dd          0042B614
 0042B420    dd          0042B56F
 0042B420    dd          0042B57E
 0042B420    dd          0042B58D
 0042B420    dd          0042B59C
 0042B420    dd          0042B5B3
 0042B420    dd          0042B5D2
 0042B47F    xor         eax,eax
 0042B481    mov         dword ptr [ebp-8],eax
>0042B484    jmp         0042B862
 0042B489    cmp         byte ptr ds:[79F68E],0
>0042B490    je          0042B49F
 0042B492    mov         dx,3
 0042B496    mov         ax,1
 0042B49A    call        VarCastError
 0042B49F    xor         eax,eax
 0042B4A1    mov         dword ptr [ebp-8],eax
>0042B4A4    jmp         0042B862
 0042B4A9    mov         eax,dword ptr [ebp-4]
 0042B4AC    movsx       eax,word ptr [eax+8]
 0042B4B0    mov         dword ptr [ebp-8],eax
>0042B4B3    jmp         0042B862
 0042B4B8    mov         eax,dword ptr [ebp-4]
 0042B4BB    mov         eax,dword ptr [eax+8]
 0042B4BE    mov         dword ptr [ebp-8],eax
>0042B4C1    jmp         0042B862
 0042B4C6    mov         eax,dword ptr [ebp-4]
 0042B4C9    fld         dword ptr [eax+8]
 0042B4CC    call        @ROUND
 0042B4D1    push        eax
 0042B4D2    sar         eax,1F
 0042B4D5    cmp         eax,edx
 0042B4D7    pop         eax
>0042B4D8    je          0042B4DF
 0042B4DA    call        @BoundErr
 0042B4DF    mov         dword ptr [ebp-8],eax
>0042B4E2    jmp         0042B862
 0042B4E7    mov         eax,dword ptr [ebp-4]
 0042B4EA    fld         qword ptr [eax+8]
 0042B4ED    call        @ROUND
 0042B4F2    push        eax
 0042B4F3    sar         eax,1F
 0042B4F6    cmp         eax,edx
 0042B4F8    pop         eax
>0042B4F9    je          0042B500
 0042B4FB    call        @BoundErr
 0042B500    mov         dword ptr [ebp-8],eax
>0042B503    jmp         0042B862
 0042B508    mov         eax,dword ptr [ebp-4]
 0042B50B    fild        qword ptr [eax+8]
 0042B50E    fdiv        dword ptr ds:[42B894]
 0042B514    call        @ROUND
 0042B519    push        eax
 0042B51A    sar         eax,1F
 0042B51D    cmp         eax,edx
 0042B51F    pop         eax
>0042B520    je          0042B527
 0042B522    call        @BoundErr
 0042B527    mov         dword ptr [ebp-8],eax
>0042B52A    jmp         0042B862
 0042B52F    mov         eax,dword ptr [ebp-4]
 0042B532    fld         qword ptr [eax+8]
 0042B535    call        @ROUND
 0042B53A    push        eax
 0042B53B    sar         eax,1F
 0042B53E    cmp         eax,edx
 0042B540    pop         eax
>0042B541    je          0042B548
 0042B543    call        @BoundErr
 0042B548    mov         dword ptr [ebp-8],eax
>0042B54B    jmp         0042B862
 0042B550    mov         eax,dword ptr [ebp-4]
 0042B553    call        VarToIntAsString
 0042B558    mov         dword ptr [ebp-8],eax
>0042B55B    jmp         0042B862
 0042B560    mov         eax,dword ptr [ebp-4]
 0042B563    movsx       eax,word ptr [eax+8]
 0042B567    mov         dword ptr [ebp-8],eax
>0042B56A    jmp         0042B862
 0042B56F    mov         eax,dword ptr [ebp-4]
 0042B572    movsx       eax,byte ptr [eax+8]
 0042B576    mov         dword ptr [ebp-8],eax
>0042B579    jmp         0042B862
 0042B57E    mov         eax,dword ptr [ebp-4]
 0042B581    movzx       eax,byte ptr [eax+8]
 0042B585    mov         dword ptr [ebp-8],eax
>0042B588    jmp         0042B862
 0042B58D    mov         eax,dword ptr [ebp-4]
 0042B590    movzx       eax,word ptr [eax+8]
 0042B594    mov         dword ptr [ebp-8],eax
>0042B597    jmp         0042B862
 0042B59C    mov         eax,dword ptr [ebp-4]
 0042B59F    mov         eax,dword ptr [eax+8]
 0042B5A2    test        eax,eax
>0042B5A4    jns         0042B5AB
 0042B5A6    call        @BoundErr
 0042B5AB    mov         dword ptr [ebp-8],eax
>0042B5AE    jmp         0042B862
 0042B5B3    mov         eax,dword ptr [ebp-4]
 0042B5B6    mov         edx,dword ptr [eax+0C]
 0042B5B9    mov         eax,dword ptr [eax+8]
 0042B5BC    push        eax
 0042B5BD    sar         eax,1F
 0042B5C0    cmp         eax,edx
 0042B5C2    pop         eax
>0042B5C3    je          0042B5CA
 0042B5C5    call        @BoundErr
 0042B5CA    mov         dword ptr [ebp-8],eax
>0042B5CD    jmp         0042B862
 0042B5D2    mov         eax,dword ptr [ebp-4]
 0042B5D5    mov         edx,dword ptr [eax+0C]
 0042B5D8    mov         eax,dword ptr [eax+8]
 0042B5DB    push        eax
 0042B5DC    sar         eax,1F
 0042B5DF    cmp         eax,edx
 0042B5E1    pop         eax
>0042B5E2    je          0042B5E9
 0042B5E4    call        @BoundErr
 0042B5E9    mov         dword ptr [ebp-8],eax
>0042B5EC    jmp         0042B862
 0042B5F1    mov         eax,dword ptr [ebp-4]
 0042B5F4    mov         eax,dword ptr [eax+8]
 0042B5F7    call        @VarToInteger
 0042B5FC    mov         dword ptr [ebp-8],eax
>0042B5FF    jmp         0042B862
 0042B604    mov         eax,dword ptr [ebp-4]
 0042B607    call        VarToIntViaOS
 0042B60C    mov         dword ptr [ebp-8],eax
>0042B60F    jmp         0042B862
 0042B614    mov         edx,eax
 0042B616    sub         dx,100
>0042B61B    je          0042B629
 0042B61D    dec         dx
>0042B620    je          0042B649
 0042B622    dec         dx
>0042B625    je          0042B639
>0042B627    jmp         0042B659
 0042B629    mov         eax,dword ptr [ebp-4]
 0042B62C    call        VarToIntAsString
 0042B631    mov         dword ptr [ebp-8],eax
>0042B634    jmp         0042B862
 0042B639    mov         eax,dword ptr [ebp-4]
 0042B63C    call        VarToIntAsString
 0042B641    mov         dword ptr [ebp-8],eax
>0042B644    jmp         0042B862
 0042B649    mov         eax,dword ptr [ebp-4]
 0042B64C    call        VarToIntAny
 0042B651    mov         dword ptr [ebp-8],eax
>0042B654    jmp         0042B862
 0042B659    test        ah,40
>0042B65C    je          0042B848
 0042B662    movzx       eax,ax
 0042B665    and         eax,0FFFFBFFF
 0042B66A    cmp         eax,15
>0042B66D    ja          0042B83B
 0042B673    jmp         dword ptr [eax*4+42B67A]
 0042B673    dd          0042B83B
 0042B673    dd          0042B83B
 0042B673    dd          0042B6D2
 0042B673    dd          0042B6E3
 0042B673    dd          0042B6F3
 0042B673    dd          0042B716
 0042B673    dd          0042B739
 0042B673    dd          0042B762
 0042B673    dd          0042B785
 0042B673    dd          0042B83B
 0042B673    dd          0042B83B
 0042B673    dd          0042B795
 0042B673    dd          0042B82B
 0042B673    dd          0042B83B
 0042B673    dd          0042B83B
 0042B673    dd          0042B83B
 0042B673    dd          0042B7A6
 0042B673    dd          0042B7B7
 0042B673    dd          0042B7C8
 0042B673    dd          0042B7D9
 0042B673    dd          0042B7EF
 0042B673    dd          0042B80D
 0042B6D2    mov         eax,dword ptr [ebp-4]
 0042B6D5    mov         eax,dword ptr [eax+8]
 0042B6D8    movsx       eax,word ptr [eax]
 0042B6DB    mov         dword ptr [ebp-8],eax
>0042B6DE    jmp         0042B862
 0042B6E3    mov         eax,dword ptr [ebp-4]
 0042B6E6    mov         eax,dword ptr [eax+8]
 0042B6E9    mov         eax,dword ptr [eax]
 0042B6EB    mov         dword ptr [ebp-8],eax
>0042B6EE    jmp         0042B862
 0042B6F3    mov         eax,dword ptr [ebp-4]
 0042B6F6    mov         eax,dword ptr [eax+8]
 0042B6F9    fld         dword ptr [eax]
 0042B6FB    call        @ROUND
 0042B700    push        eax
 0042B701    sar         eax,1F
 0042B704    cmp         eax,edx
 0042B706    pop         eax
>0042B707    je          0042B70E
 0042B709    call        @BoundErr
 0042B70E    mov         dword ptr [ebp-8],eax
>0042B711    jmp         0042B862
 0042B716    mov         eax,dword ptr [ebp-4]
 0042B719    mov         eax,dword ptr [eax+8]
 0042B71C    fld         qword ptr [eax]
 0042B71E    call        @ROUND
 0042B723    push        eax
 0042B724    sar         eax,1F
 0042B727    cmp         eax,edx
 0042B729    pop         eax
>0042B72A    je          0042B731
 0042B72C    call        @BoundErr
 0042B731    mov         dword ptr [ebp-8],eax
>0042B734    jmp         0042B862
 0042B739    mov         eax,dword ptr [ebp-4]
 0042B73C    mov         eax,dword ptr [eax+8]
 0042B73F    fild        qword ptr [eax]
 0042B741    fdiv        dword ptr ds:[42B894]
 0042B747    call        @ROUND
 0042B74C    push        eax
 0042B74D    sar         eax,1F
 0042B750    cmp         eax,edx
 0042B752    pop         eax
>0042B753    je          0042B75A
 0042B755    call        @BoundErr
 0042B75A    mov         dword ptr [ebp-8],eax
>0042B75D    jmp         0042B862
 0042B762    mov         eax,dword ptr [ebp-4]
 0042B765    mov         eax,dword ptr [eax+8]
 0042B768    fld         qword ptr [eax]
 0042B76A    call        @ROUND
 0042B76F    push        eax
 0042B770    sar         eax,1F
 0042B773    cmp         eax,edx
 0042B775    pop         eax
>0042B776    je          0042B77D
 0042B778    call        @BoundErr
 0042B77D    mov         dword ptr [ebp-8],eax
>0042B780    jmp         0042B862
 0042B785    mov         eax,dword ptr [ebp-4]
 0042B788    call        VarToIntAsString
 0042B78D    mov         dword ptr [ebp-8],eax
>0042B790    jmp         0042B862
 0042B795    mov         eax,dword ptr [ebp-4]
 0042B798    mov         eax,dword ptr [eax+8]
 0042B79B    movsx       eax,word ptr [eax]
 0042B79E    mov         dword ptr [ebp-8],eax
>0042B7A1    jmp         0042B862
 0042B7A6    mov         eax,dword ptr [ebp-4]
 0042B7A9    mov         eax,dword ptr [eax+8]
 0042B7AC    movsx       eax,byte ptr [eax]
 0042B7AF    mov         dword ptr [ebp-8],eax
>0042B7B2    jmp         0042B862
 0042B7B7    mov         eax,dword ptr [ebp-4]
 0042B7BA    mov         eax,dword ptr [eax+8]
 0042B7BD    movzx       eax,byte ptr [eax]
 0042B7C0    mov         dword ptr [ebp-8],eax
>0042B7C3    jmp         0042B862
 0042B7C8    mov         eax,dword ptr [ebp-4]
 0042B7CB    mov         eax,dword ptr [eax+8]
 0042B7CE    movzx       eax,word ptr [eax]
 0042B7D1    mov         dword ptr [ebp-8],eax
>0042B7D4    jmp         0042B862
 0042B7D9    mov         eax,dword ptr [ebp-4]
 0042B7DC    mov         eax,dword ptr [eax+8]
 0042B7DF    mov         eax,dword ptr [eax]
 0042B7E1    test        eax,eax
>0042B7E3    jns         0042B7EA
 0042B7E5    call        @BoundErr
 0042B7EA    mov         dword ptr [ebp-8],eax
>0042B7ED    jmp         0042B862
 0042B7EF    mov         eax,dword ptr [ebp-4]
 0042B7F2    mov         eax,dword ptr [eax+8]
 0042B7F5    mov         edx,dword ptr [eax+4]
 0042B7F8    mov         eax,dword ptr [eax]
 0042B7FA    push        eax
 0042B7FB    sar         eax,1F
 0042B7FE    cmp         eax,edx
 0042B800    pop         eax
>0042B801    je          0042B808
 0042B803    call        @BoundErr
 0042B808    mov         dword ptr [ebp-8],eax
>0042B80B    jmp         0042B862
 0042B80D    mov         eax,dword ptr [ebp-4]
 0042B810    mov         eax,dword ptr [eax+8]
 0042B813    mov         edx,dword ptr [eax+4]
 0042B816    mov         eax,dword ptr [eax]
 0042B818    push        eax
 0042B819    sar         eax,1F
 0042B81C    cmp         eax,edx
 0042B81E    pop         eax
>0042B81F    je          0042B826
 0042B821    call        @BoundErr
 0042B826    mov         dword ptr [ebp-8],eax
>0042B829    jmp         0042B862
 0042B82B    mov         eax,dword ptr [ebp-4]
 0042B82E    mov         eax,dword ptr [eax+8]
 0042B831    call        @VarToInteger
 0042B836    mov         dword ptr [ebp-8],eax
>0042B839    jmp         0042B862
 0042B83B    mov         eax,dword ptr [ebp-4]
 0042B83E    call        VarToIntViaOS
 0042B843    mov         dword ptr [ebp-8],eax
>0042B846    jmp         0042B862
 0042B848    lea         edx,[ebp-8]
 0042B84B    mov         eax,dword ptr [ebp-4]
 0042B84E    call        VarToIntCustom
 0042B853    test        al,al
>0042B855    jne         0042B862
 0042B857    mov         eax,dword ptr [ebp-4]
 0042B85A    call        VarToIntViaOS
 0042B85F    mov         dword ptr [ebp-8],eax
 0042B862    xor         eax,eax
 0042B864    pop         edx
 0042B865    pop         ecx
 0042B866    pop         ecx
 0042B867    mov         dword ptr fs:[eax],edx
>0042B86A    jmp         0042B88A
>0042B86C    jmp         @HandleAnyException
 0042B871    mov         eax,dword ptr [ebp-4]
 0042B874    movzx       eax,word ptr [eax]
 0042B877    mov         dx,3
 0042B87B    call        HandleConversionException
 0042B880    xor         eax,eax
 0042B882    mov         dword ptr [ebp-8],eax
 0042B885    call        @DoneExcept
 0042B88A    mov         eax,dword ptr [ebp-8]
 0042B88D    pop         edi
 0042B88E    pop         esi
 0042B88F    pop         ebx
 0042B890    pop         ecx
 0042B891    pop         ecx
 0042B892    pop         ebp
 0042B893    ret
*}
end;

//0042B898
function @VarToShortInt(const V:TVarData):ShortInt;
begin
{*
 0042B898    push        ebp
 0042B899    mov         ebp,esp
 0042B89B    push        ecx
 0042B89C    push        ebx
 0042B89D    push        esi
 0042B89E    push        edi
 0042B89F    mov         dword ptr [ebp-4],eax
 0042B8A2    mov         eax,dword ptr [ebp-4]
 0042B8A5    movzx       eax,word ptr [eax]
 0042B8A8    sub         ax,1
>0042B8AC    jb          0042B8BE
>0042B8AE    je          0042B8C2
 0042B8B0    sub         ax,0A
>0042B8B4    je          0042B8DC
 0042B8B6    sub         ax,5
>0042B8BA    je          0042B8E5
>0042B8BC    jmp         0042B8EE
 0042B8BE    xor         ebx,ebx
>0042B8C0    jmp         0042B941
 0042B8C2    cmp         byte ptr ds:[79F68E],0
>0042B8C9    je          0042B8D8
 0042B8CB    mov         dx,10
 0042B8CF    mov         ax,1
 0042B8D3    call        VarCastError
 0042B8D8    xor         ebx,ebx
>0042B8DA    jmp         0042B941
 0042B8DC    mov         ebx,dword ptr [ebp-4]
 0042B8DF    movzx       ebx,byte ptr [ebx+8]
>0042B8E3    jmp         0042B941
 0042B8E5    mov         ebx,dword ptr [ebp-4]
 0042B8E8    movzx       ebx,byte ptr [ebx+8]
>0042B8EC    jmp         0042B941
 0042B8EE    xor         eax,eax
 0042B8F0    push        ebp
 0042B8F1    push        42B926
 0042B8F6    push        dword ptr fs:[eax]
 0042B8F9    mov         dword ptr fs:[eax],esp
 0042B8FC    mov         eax,dword ptr [ebp-4]
 0042B8FF    call        @VarToInteger
 0042B904    mov         ebx,eax
 0042B906    add         ebx,80
 0042B90C    cmp         ebx,0FF
>0042B912    jbe         0042B919
 0042B914    call        @BoundErr
 0042B919    add         ebx,0FFFFFF80
 0042B91C    xor         eax,eax
 0042B91E    pop         edx
 0042B91F    pop         ecx
 0042B920    pop         ecx
 0042B921    mov         dword ptr fs:[eax],edx
>0042B924    jmp         0042B941
>0042B926    jmp         @HandleAnyException
 0042B92B    mov         eax,dword ptr [ebp-4]
 0042B92E    movzx       eax,word ptr [eax]
 0042B931    mov         dx,10
 0042B935    call        HandleConversionException
 0042B93A    xor         ebx,ebx
 0042B93C    call        @DoneExcept
 0042B941    mov         eax,ebx
 0042B943    pop         edi
 0042B944    pop         esi
 0042B945    pop         ebx
 0042B946    pop         ecx
 0042B947    pop         ebp
 0042B948    ret
*}
end;

//0042B94C
function @VarToByte(const V:TVarData):Byte;
begin
{*
 0042B94C    push        ebp
 0042B94D    mov         ebp,esp
 0042B94F    push        ecx
 0042B950    push        ebx
 0042B951    push        esi
 0042B952    push        edi
 0042B953    mov         dword ptr [ebp-4],eax
 0042B956    mov         eax,dword ptr [ebp-4]
 0042B959    movzx       eax,word ptr [eax]
 0042B95C    sub         ax,1
>0042B960    jb          0042B972
>0042B962    je          0042B976
 0042B964    sub         ax,0A
>0042B968    je          0042B990
 0042B96A    sub         ax,6
>0042B96E    je          0042B999
>0042B970    jmp         0042B9A2
 0042B972    xor         ebx,ebx
>0042B974    jmp         0042B9EC
 0042B976    cmp         byte ptr ds:[79F68E],0
>0042B97D    je          0042B98C
 0042B97F    mov         dx,11
 0042B983    mov         ax,1
 0042B987    call        VarCastError
 0042B98C    xor         ebx,ebx
>0042B98E    jmp         0042B9EC
 0042B990    mov         ebx,dword ptr [ebp-4]
 0042B993    movzx       ebx,byte ptr [ebx+8]
>0042B997    jmp         0042B9EC
 0042B999    mov         ebx,dword ptr [ebp-4]
 0042B99C    movzx       ebx,byte ptr [ebx+8]
>0042B9A0    jmp         0042B9EC
 0042B9A2    xor         eax,eax
 0042B9A4    push        ebp
 0042B9A5    push        42B9D1
 0042B9AA    push        dword ptr fs:[eax]
 0042B9AD    mov         dword ptr fs:[eax],esp
 0042B9B0    mov         eax,dword ptr [ebp-4]
 0042B9B3    call        @VarToInteger
 0042B9B8    mov         ebx,eax
 0042B9BA    cmp         ebx,0FF
>0042B9C0    jbe         0042B9C7
 0042B9C2    call        @BoundErr
 0042B9C7    xor         eax,eax
 0042B9C9    pop         edx
 0042B9CA    pop         ecx
 0042B9CB    pop         ecx
 0042B9CC    mov         dword ptr fs:[eax],edx
>0042B9CF    jmp         0042B9EC
>0042B9D1    jmp         @HandleAnyException
 0042B9D6    mov         eax,dword ptr [ebp-4]
 0042B9D9    movzx       eax,word ptr [eax]
 0042B9DC    mov         dx,11
 0042B9E0    call        HandleConversionException
 0042B9E5    xor         ebx,ebx
 0042B9E7    call        @DoneExcept
 0042B9EC    mov         eax,ebx
 0042B9EE    pop         edi
 0042B9EF    pop         esi
 0042B9F0    pop         ebx
 0042B9F1    pop         ecx
 0042B9F2    pop         ebp
 0042B9F3    ret
*}
end;

//0042B9F4
function @VarToSmallInt(const V:TVarData):SmallInt;
begin
{*
 0042B9F4    push        ebp
 0042B9F5    mov         ebp,esp
 0042B9F7    push        ecx
 0042B9F8    push        ebx
 0042B9F9    push        esi
 0042B9FA    push        edi
 0042B9FB    mov         dword ptr [ebp-4],eax
 0042B9FE    mov         eax,dword ptr [ebp-4]
 0042BA01    movzx       eax,word ptr [eax]
 0042BA04    cmp         eax,11
>0042BA07    ja          0042BA8E
 0042BA0D    movzx       eax,byte ptr [eax+42BA1B]
 0042BA14    jmp         dword ptr [eax*4+42BA2D]
 0042BA14    db          1
 0042BA14    db          2
 0042BA14    db          3
 0042BA14    db          0
 0042BA14    db          0
 0042BA14    db          0
 0042BA14    db          0
 0042BA14    db          0
 0042BA14    db          0
 0042BA14    db          0
 0042BA14    db          0
 0042BA14    db          4
 0042BA14    db          0
 0042BA14    db          0
 0042BA14    db          0
 0042BA14    db          0
 0042BA14    db          5
 0042BA14    db          6
 0042BA14    dd          0042BA8E
 0042BA14    dd          0042BA49
 0042BA14    dd          0042BA50
 0042BA14    dd          0042BA6A
 0042BA14    dd          0042BA73
 0042BA14    dd          0042BA7C
 0042BA14    dd          0042BA85
 0042BA49    xor         ebx,ebx
>0042BA4B    jmp         0042BAE4
 0042BA50    cmp         byte ptr ds:[79F68E],0
>0042BA57    je          0042BA66
 0042BA59    mov         dx,2
 0042BA5D    mov         ax,1
 0042BA61    call        VarCastError
 0042BA66    xor         ebx,ebx
>0042BA68    jmp         0042BAE4
 0042BA6A    mov         ebx,dword ptr [ebp-4]
 0042BA6D    movzx       ebx,word ptr [ebx+8]
>0042BA71    jmp         0042BAE4
 0042BA73    mov         ebx,dword ptr [ebp-4]
 0042BA76    movzx       ebx,word ptr [ebx+8]
>0042BA7A    jmp         0042BAE4
 0042BA7C    mov         ebx,dword ptr [ebp-4]
 0042BA7F    movsx       ebx,byte ptr [ebx+8]
>0042BA83    jmp         0042BAE4
 0042BA85    mov         ebx,dword ptr [ebp-4]
 0042BA88    movzx       ebx,byte ptr [ebx+8]
>0042BA8C    jmp         0042BAE4
 0042BA8E    xor         eax,eax
 0042BA90    push        ebp
 0042BA91    push        42BAC9
 0042BA96    push        dword ptr fs:[eax]
 0042BA99    mov         dword ptr fs:[eax],esp
 0042BA9C    mov         eax,dword ptr [ebp-4]
 0042BA9F    call        @VarToInteger
 0042BAA4    mov         ebx,eax
 0042BAA6    add         ebx,8000
 0042BAAC    cmp         ebx,0FFFF
>0042BAB2    jbe         0042BAB9
 0042BAB4    call        @BoundErr
 0042BAB9    add         ebx,0FFFF8000
 0042BABF    xor         eax,eax
 0042BAC1    pop         edx
 0042BAC2    pop         ecx
 0042BAC3    pop         ecx
 0042BAC4    mov         dword ptr fs:[eax],edx
>0042BAC7    jmp         0042BAE4
>0042BAC9    jmp         @HandleAnyException
 0042BACE    mov         eax,dword ptr [ebp-4]
 0042BAD1    movzx       eax,word ptr [eax]
 0042BAD4    mov         dx,2
 0042BAD8    call        HandleConversionException
 0042BADD    xor         ebx,ebx
 0042BADF    call        @DoneExcept
 0042BAE4    mov         eax,ebx
 0042BAE6    pop         edi
 0042BAE7    pop         esi
 0042BAE8    pop         ebx
 0042BAE9    pop         ecx
 0042BAEA    pop         ebp
 0042BAEB    ret
*}
end;

//0042BAEC
function @VarToWord(const V:TVarData):Word;
begin
{*
 0042BAEC    push        ebp
 0042BAED    mov         ebp,esp
 0042BAEF    push        ecx
 0042BAF0    push        ebx
 0042BAF1    push        esi
 0042BAF2    push        edi
 0042BAF3    mov         dword ptr [ebp-4],eax
 0042BAF6    mov         eax,dword ptr [ebp-4]
 0042BAF9    movzx       eax,word ptr [eax]
 0042BAFC    cmp         eax,12
>0042BAFF    ja          0042BB73
 0042BB01    movzx       eax,byte ptr [eax+42BB0F]
 0042BB08    jmp         dword ptr [eax*4+42BB22]
 0042BB08    db          1
 0042BB08    db          2
 0042BB08    db          0
 0042BB08    db          0
 0042BB08    db          0
 0042BB08    db          0
 0042BB08    db          0
 0042BB08    db          0
 0042BB08    db          0
 0042BB08    db          0
 0042BB08    db          0
 0042BB08    db          3
 0042BB08    db          0
 0042BB08    db          0
 0042BB08    db          0
 0042BB08    db          0
 0042BB08    db          0
 0042BB08    db          4
 0042BB08    db          5
 0042BB08    dd          0042BB73
 0042BB08    dd          0042BB3A
 0042BB08    dd          0042BB3E
 0042BB08    dd          0042BB58
 0042BB08    dd          0042BB61
 0042BB08    dd          0042BB6A
 0042BB3A    xor         ebx,ebx
>0042BB3C    jmp         0042BBBD
 0042BB3E    cmp         byte ptr ds:[79F68E],0
>0042BB45    je          0042BB54
 0042BB47    mov         dx,12
 0042BB4B    mov         ax,1
 0042BB4F    call        VarCastError
 0042BB54    xor         ebx,ebx
>0042BB56    jmp         0042BBBD
 0042BB58    mov         ebx,dword ptr [ebp-4]
 0042BB5B    movzx       ebx,word ptr [ebx+8]
>0042BB5F    jmp         0042BBBD
 0042BB61    mov         ebx,dword ptr [ebp-4]
 0042BB64    movzx       ebx,byte ptr [ebx+8]
>0042BB68    jmp         0042BBBD
 0042BB6A    mov         ebx,dword ptr [ebp-4]
 0042BB6D    movzx       ebx,word ptr [ebx+8]
>0042BB71    jmp         0042BBBD
 0042BB73    xor         eax,eax
 0042BB75    push        ebp
 0042BB76    push        42BBA2
 0042BB7B    push        dword ptr fs:[eax]
 0042BB7E    mov         dword ptr fs:[eax],esp
 0042BB81    mov         eax,dword ptr [ebp-4]
 0042BB84    call        @VarToInteger
 0042BB89    mov         ebx,eax
 0042BB8B    cmp         ebx,0FFFF
>0042BB91    jbe         0042BB98
 0042BB93    call        @BoundErr
 0042BB98    xor         eax,eax
 0042BB9A    pop         edx
 0042BB9B    pop         ecx
 0042BB9C    pop         ecx
 0042BB9D    mov         dword ptr fs:[eax],edx
>0042BBA0    jmp         0042BBBD
>0042BBA2    jmp         @HandleAnyException
 0042BBA7    mov         eax,dword ptr [ebp-4]
 0042BBAA    movzx       eax,word ptr [eax]
 0042BBAD    mov         dx,12
 0042BBB1    call        HandleConversionException
 0042BBB6    xor         ebx,ebx
 0042BBB8    call        @DoneExcept
 0042BBBD    mov         eax,ebx
 0042BBBF    pop         edi
 0042BBC0    pop         esi
 0042BBC1    pop         ebx
 0042BBC2    pop         ecx
 0042BBC3    pop         ebp
 0042BBC4    ret
*}
end;

//0042BBC8
function @VarToLongWord(const V:TVarData):LongWord;
begin
{*
 0042BBC8    push        ebp
 0042BBC9    mov         ebp,esp
 0042BBCB    push        ecx
 0042BBCC    push        ebx
 0042BBCD    push        esi
 0042BBCE    push        edi
 0042BBCF    mov         dword ptr [ebp-4],eax
 0042BBD2    mov         eax,dword ptr [ebp-4]
 0042BBD5    movzx       eax,word ptr [eax]
 0042BBD8    cmp         eax,13
>0042BBDB    ja          0042BC63
 0042BBE1    movzx       eax,byte ptr [eax+42BBEF]
 0042BBE8    jmp         dword ptr [eax*4+42BC03]
 0042BBE8    db          1
 0042BBE8    db          2
 0042BBE8    db          0
 0042BBE8    db          0
 0042BBE8    db          0
 0042BBE8    db          0
 0042BBE8    db          0
 0042BBE8    db          0
 0042BBE8    db          0
 0042BBE8    db          0
 0042BBE8    db          0
 0042BBE8    db          3
 0042BBE8    db          0
 0042BBE8    db          0
 0042BBE8    db          0
 0042BBE8    db          0
 0042BBE8    db          0
 0042BBE8    db          4
 0042BBE8    db          5
 0042BBE8    db          6
 0042BBE8    dd          0042BC63
 0042BBE8    dd          0042BC1F
 0042BBE8    dd          0042BC26
 0042BBE8    dd          0042BC40
 0042BBE8    dd          0042BC49
 0042BBE8    dd          0042BC52
 0042BBE8    dd          0042BC5B
 0042BC1F    xor         ebx,ebx
>0042BC21    jmp         0042BCA9
 0042BC26    cmp         byte ptr ds:[79F68E],0
>0042BC2D    je          0042BC3C
 0042BC2F    mov         dx,13
 0042BC33    mov         ax,1
 0042BC37    call        VarCastError
 0042BC3C    xor         ebx,ebx
>0042BC3E    jmp         0042BCA9
 0042BC40    mov         ebx,dword ptr [ebp-4]
 0042BC43    movsx       ebx,word ptr [ebx+8]
>0042BC47    jmp         0042BCA9
 0042BC49    mov         ebx,dword ptr [ebp-4]
 0042BC4C    movzx       ebx,byte ptr [ebx+8]
>0042BC50    jmp         0042BCA9
 0042BC52    mov         ebx,dword ptr [ebp-4]
 0042BC55    movzx       ebx,word ptr [ebx+8]
>0042BC59    jmp         0042BCA9
 0042BC5B    mov         ebx,dword ptr [ebp-4]
 0042BC5E    mov         ebx,dword ptr [ebx+8]
>0042BC61    jmp         0042BCA9
 0042BC63    xor         eax,eax
 0042BC65    push        ebp
 0042BC66    push        42BC8E
 0042BC6B    push        dword ptr fs:[eax]
 0042BC6E    mov         dword ptr fs:[eax],esp
 0042BC71    mov         eax,dword ptr [ebp-4]
 0042BC74    call        @VarToInt64
 0042BC79    test        edx,edx
>0042BC7B    je          0042BC82
 0042BC7D    call        @BoundErr
 0042BC82    mov         ebx,eax
 0042BC84    xor         eax,eax
 0042BC86    pop         edx
 0042BC87    pop         ecx
 0042BC88    pop         ecx
 0042BC89    mov         dword ptr fs:[eax],edx
>0042BC8C    jmp         0042BCA9
>0042BC8E    jmp         @HandleAnyException
 0042BC93    mov         eax,dword ptr [ebp-4]
 0042BC96    movzx       eax,word ptr [eax]
 0042BC99    mov         dx,13
 0042BC9D    call        HandleConversionException
 0042BCA2    xor         ebx,ebx
 0042BCA4    call        @DoneExcept
 0042BCA9    mov         eax,ebx
 0042BCAB    pop         edi
 0042BCAC    pop         esi
 0042BCAD    pop         ebx
 0042BCAE    pop         ecx
 0042BCAF    pop         ebp
 0042BCB0    ret
*}
end;

//0042BCB4
function VarToInt64ViaOS(const V:TVarData):Int64;
begin
{*
 0042BCB4    push        ebx
 0042BCB5    add         esp,0FFFFFFE8
 0042BCB8    mov         ebx,eax
 0042BCBA    lea         eax,[esp+8]
 0042BCBE    push        eax
 0042BCBF    call        oleaut32.VariantInit
 0042BCC4    push        3
 0042BCC6    push        0
 0042BCC8    push        400
 0042BCCD    push        ebx
 0042BCCE    lea         eax,[esp+18]
 0042BCD2    push        eax
 0042BCD3    mov         eax,[007C4C30];^gvar_007C9EEC
 0042BCD8    mov         eax,dword ptr [eax]
 0042BCDA    call        eax
 0042BCDC    test        eax,eax
>0042BCDE    jne         0042BCEE
 0042BCE0    mov         eax,dword ptr [esp+10]
 0042BCE4    cdq
 0042BCE5    mov         dword ptr [esp],eax
 0042BCE8    mov         dword ptr [esp+4],edx
>0042BCEC    jmp         0042BD53
 0042BCEE    push        5
 0042BCF0    push        0
 0042BCF2    push        400
 0042BCF7    push        ebx
 0042BCF8    lea         eax,[esp+18]
 0042BCFC    push        eax
 0042BCFD    mov         eax,[007C4C30];^gvar_007C9EEC
 0042BD02    mov         eax,dword ptr [eax]
 0042BD04    call        eax
 0042BD06    test        eax,eax
>0042BD08    jne         0042BD1C
 0042BD0A    fld         qword ptr [esp+10]
 0042BD0E    call        @ROUND
 0042BD13    mov         dword ptr [esp],eax
 0042BD16    mov         dword ptr [esp+4],edx
>0042BD1A    jmp         0042BD53
 0042BD1C    cmp         eax,80020005
>0042BD21    jne         0042BD38
 0042BD23    mov         eax,ebx
 0042BD25    call        @VarToBoolean
 0042BD2A    and         eax,7F
 0042BD2D    xor         edx,edx
 0042BD2F    mov         dword ptr [esp],eax
 0042BD32    mov         dword ptr [esp+4],edx
>0042BD36    jmp         0042BD53
 0042BD38    movzx       edx,word ptr [ebx]
 0042BD3B    mov         cx,14
 0042BD3F    call        VarResultCheck
 0042BD44    mov         dword ptr [esp],0
 0042BD4B    mov         dword ptr [esp+4],0
 0042BD53    mov         eax,dword ptr [esp]
 0042BD56    mov         edx,dword ptr [esp+4]
 0042BD5A    add         esp,18
 0042BD5D    pop         ebx
 0042BD5E    ret
*}
end;

//0042BD60
function VarToInt64AsString(const V:TVarData):Int64;
begin
{*
 0042BD60    push        ebp
 0042BD61    mov         ebp,esp
 0042BD63    add         esp,0FFFFFFD8
 0042BD66    push        ebx
 0042BD67    push        esi
 0042BD68    xor         edx,edx
 0042BD6A    mov         dword ptr [ebp-28],edx
 0042BD6D    mov         dword ptr [ebp-24],edx
 0042BD70    mov         dword ptr [ebp-4],edx
 0042BD73    mov         esi,eax
 0042BD75    xor         eax,eax
 0042BD77    push        ebp
 0042BD78    push        42BE8F
 0042BD7D    push        dword ptr fs:[eax]
 0042BD80    mov         dword ptr fs:[eax],esp
 0042BD83    mov         edx,esi
 0042BD85    lea         eax,[ebp-4]
 0042BD88    call        @VarToWStr
 0042BD8D    lea         eax,[ebp-24]
 0042BD90    mov         edx,dword ptr [ebp-4]
 0042BD93    call        @UStrFromWStr
 0042BD98    mov         eax,dword ptr [ebp-24]
 0042BD9B    lea         edx,[ebp-10]
 0042BD9E    call        0041E604
 0042BDA3    test        al,al
>0042BDA5    jne         0042BE6C
 0042BDAB    lea         eax,[ebp-18]
 0042BDAE    push        eax
 0042BDAF    push        0
 0042BDB1    push        400
 0042BDB6    mov         eax,dword ptr [ebp-4]
 0042BDB9    call        @WStrToPWChar
 0042BDBE    push        eax
 0042BDBF    mov         eax,[007C4DFC];^gvar_007C9F20
 0042BDC4    mov         eax,dword ptr [eax]
 0042BDC6    call        eax
 0042BDC8    mov         ebx,eax
 0042BDCA    test        ebx,ebx
>0042BDCC    jne         0042BDDD
 0042BDCE    mov         eax,dword ptr [ebp-18]
 0042BDD1    cdq
 0042BDD2    mov         dword ptr [ebp-10],eax
 0042BDD5    mov         dword ptr [ebp-0C],edx
>0042BDD8    jmp         0042BE6C
 0042BDDD    lea         eax,[ebp-20]
 0042BDE0    push        eax
 0042BDE1    push        0
 0042BDE3    push        400
 0042BDE8    mov         eax,dword ptr [ebp-4]
 0042BDEB    call        @WStrToPWChar
 0042BDF0    push        eax
 0042BDF1    mov         eax,[007C494C];^gvar_007C9F28
 0042BDF6    mov         eax,dword ptr [eax]
 0042BDF8    call        eax
 0042BDFA    mov         ebx,eax
 0042BDFC    test        ebx,ebx
>0042BDFE    jne         0042BE10
 0042BE00    fld         qword ptr [ebp-20]
 0042BE03    call        @ROUND
 0042BE08    mov         dword ptr [ebp-10],eax
 0042BE0B    mov         dword ptr [ebp-0C],edx
>0042BE0E    jmp         0042BE6C
 0042BE10    cmp         ebx,80020005
>0042BE16    jne         0042BE50
 0042BE18    lea         eax,[ebp-28]
 0042BE1B    mov         edx,dword ptr [ebp-4]
 0042BE1E    call        @UStrFromWStr
 0042BE23    mov         eax,dword ptr [ebp-28]
 0042BE26    lea         edx,[ebp-11]
 0042BE29    call        TryStrToBool
 0042BE2E    test        al,al
>0042BE30    je          0042BE40
 0042BE32    movzx       eax,byte ptr [ebp-11]
 0042BE36    xor         edx,edx
 0042BE38    mov         dword ptr [ebp-10],eax
 0042BE3B    mov         dword ptr [ebp-0C],edx
>0042BE3E    jmp         0042BE6C
 0042BE40    movzx       edx,word ptr [esi]
 0042BE43    mov         cx,14
 0042BE47    mov         eax,ebx
 0042BE49    call        VarResultCheck
>0042BE4E    jmp         0042BE6C
 0042BE50    movzx       edx,word ptr [esi]
 0042BE53    mov         cx,14
 0042BE57    mov         eax,ebx
 0042BE59    call        VarResultCheck
 0042BE5E    mov         dword ptr [ebp-10],0
 0042BE65    mov         dword ptr [ebp-0C],0
 0042BE6C    xor         eax,eax
 0042BE6E    pop         edx
 0042BE6F    pop         ecx
 0042BE70    pop         ecx
 0042BE71    mov         dword ptr fs:[eax],edx
 0042BE74    push        42BE96
 0042BE79    lea         eax,[ebp-28]
 0042BE7C    mov         edx,2
 0042BE81    call        @UStrArrayClr
 0042BE86    lea         eax,[ebp-4]
 0042BE89    call        @WStrClr
 0042BE8E    ret
>0042BE8F    jmp         @HandleFinally
>0042BE94    jmp         0042BE79
 0042BE96    mov         eax,dword ptr [ebp-10]
 0042BE99    mov         edx,dword ptr [ebp-0C]
 0042BE9C    pop         esi
 0042BE9D    pop         ebx
 0042BE9E    mov         esp,ebp
 0042BEA0    pop         ebp
 0042BEA1    ret
*}
end;

//0042BEA4
function VarToInt64Any(const V:TVarData):Int64;
begin
{*
 0042BEA4    push        ebp
 0042BEA5    mov         ebp,esp
 0042BEA7    add         esp,0FFFFFFE8
 0042BEAA    push        ebx
 0042BEAB    mov         ebx,eax
 0042BEAD    lea         eax,[ebp-18]
 0042BEB0    push        eax
 0042BEB1    call        oleaut32.VariantInit
 0042BEB6    xor         eax,eax
 0042BEB8    push        ebp
 0042BEB9    push        42BEFB
 0042BEBE    push        dword ptr fs:[eax]
 0042BEC1    mov         dword ptr fs:[eax],esp
 0042BEC4    mov         edx,ebx
 0042BEC6    lea         eax,[ebp-18]
 0042BEC9    call        @VarCopy
 0042BECE    lea         eax,[ebp-18]
 0042BED1    call        dword ptr ds:[7C9F50]
 0042BED7    lea         eax,[ebp-18]
 0042BEDA    call        @VarToInt64
 0042BEDF    mov         dword ptr [ebp-8],eax
 0042BEE2    mov         dword ptr [ebp-4],edx
 0042BEE5    xor         eax,eax
 0042BEE7    pop         edx
 0042BEE8    pop         ecx
 0042BEE9    pop         ecx
 0042BEEA    mov         dword ptr fs:[eax],edx
 0042BEED    push        42BF02
 0042BEF2    lea         eax,[ebp-18]
 0042BEF5    call        @VarClear
 0042BEFA    ret
>0042BEFB    jmp         @HandleFinally
>0042BF00    jmp         0042BEF2
 0042BF02    mov         eax,dword ptr [ebp-8]
 0042BF05    mov         edx,dword ptr [ebp-4]
 0042BF08    pop         ebx
 0042BF09    mov         esp,ebp
 0042BF0B    pop         ebp
 0042BF0C    ret
*}
end;

//0042BF10
function VarToInt64Custom(const V:TVarData; var AValue:Int64):Boolean;
begin
{*
 0042BF10    push        ebx
 0042BF11    push        esi
 0042BF12    push        edi
 0042BF13    add         esp,0FFFFFFEC
 0042BF16    mov         edi,edx
 0042BF18    mov         esi,eax
 0042BF1A    mov         edx,esp
 0042BF1C    movzx       eax,word ptr [esi]
 0042BF1F    call        FindCustomVariantType
 0042BF24    mov         ebx,eax
 0042BF26    test        bl,bl
>0042BF28    je          0042BF52
 0042BF2A    lea         eax,[esp+4]
 0042BF2E    push        eax
 0042BF2F    call        oleaut32.VariantInit
 0042BF34    push        14
 0042BF36    mov         ecx,esi
 0042BF38    lea         edx,[esp+8]
 0042BF3C    mov         eax,dword ptr [esp+4]
 0042BF40    mov         esi,dword ptr [eax]
 0042BF42    call        dword ptr [esi+1C]
 0042BF45    mov         eax,dword ptr [esp+0C]
 0042BF49    mov         dword ptr [edi],eax
 0042BF4B    mov         eax,dword ptr [esp+10]
 0042BF4F    mov         dword ptr [edi+4],eax
 0042BF52    mov         eax,ebx
 0042BF54    add         esp,14
 0042BF57    pop         edi
 0042BF58    pop         esi
 0042BF59    pop         ebx
 0042BF5A    ret
*}
end;

//0042BF5C
function @VarToInt64(const V:TVarData):Int64;
begin
{*
 0042BF5C    push        ebp
 0042BF5D    mov         ebp,esp
 0042BF5F    add         esp,0FFFFFFF0
 0042BF62    push        ebx
 0042BF63    push        esi
 0042BF64    push        edi
 0042BF65    mov         dword ptr [ebp-4],eax
 0042BF68    xor         edx,edx
 0042BF6A    push        ebp
 0042BF6B    push        42C3A9
 0042BF70    push        dword ptr fs:[edx]
 0042BF73    mov         dword ptr fs:[edx],esp
 0042BF76    mov         eax,dword ptr [ebp-4]
 0042BF79    movzx       eax,word ptr [eax]
 0042BF7C    movzx       edx,ax
 0042BF7F    cmp         edx,15
>0042BF82    ja          0042C16B
 0042BF88    jmp         dword ptr [edx*4+42BF8F]
 0042BF88    dd          0042BFE7
 0042BF88    dd          0042BFFA
 0042BF88    dd          0042C023
 0042BF88    dd          0042C036
 0042BF88    dd          0042C048
 0042BF88    dd          0042C05E
 0042BF88    dd          0042C074
 0042BF88    dd          0042C090
 0042BF88    dd          0042C0A6
 0042BF88    dd          0042C158
 0042BF88    dd          0042C16B
 0042BF88    dd          0042C0B9
 0042BF88    dd          0042C142
 0042BF88    dd          0042C158
 0042BF88    dd          0042C16B
 0042BF88    dd          0042C16B
 0042BF88    dd          0042C0CC
 0042BF88    dd          0042C0DF
 0042BF88    dd          0042C0F3
 0042BF88    dd          0042C107
 0042BF88    dd          0042C11A
 0042BF88    dd          0042C12E
 0042BFE7    mov         dword ptr [ebp-10],0
 0042BFEE    mov         dword ptr [ebp-0C],0
>0042BFF5    jmp         0042C39F
 0042BFFA    cmp         byte ptr ds:[79F68E],0
>0042C001    je          0042C010
 0042C003    mov         dx,14
 0042C007    mov         ax,1
 0042C00B    call        VarCastError
 0042C010    mov         dword ptr [ebp-10],0
 0042C017    mov         dword ptr [ebp-0C],0
>0042C01E    jmp         0042C39F
 0042C023    mov         eax,dword ptr [ebp-4]
 0042C026    movsx       eax,word ptr [eax+8]
 0042C02A    cdq
 0042C02B    mov         dword ptr [ebp-10],eax
 0042C02E    mov         dword ptr [ebp-0C],edx
>0042C031    jmp         0042C39F
 0042C036    mov         eax,dword ptr [ebp-4]
 0042C039    mov         eax,dword ptr [eax+8]
 0042C03C    cdq
 0042C03D    mov         dword ptr [ebp-10],eax
 0042C040    mov         dword ptr [ebp-0C],edx
>0042C043    jmp         0042C39F
 0042C048    mov         eax,dword ptr [ebp-4]
 0042C04B    fld         dword ptr [eax+8]
 0042C04E    call        @ROUND
 0042C053    mov         dword ptr [ebp-10],eax
 0042C056    mov         dword ptr [ebp-0C],edx
>0042C059    jmp         0042C39F
 0042C05E    mov         eax,dword ptr [ebp-4]
 0042C061    fld         qword ptr [eax+8]
 0042C064    call        @ROUND
 0042C069    mov         dword ptr [ebp-10],eax
 0042C06C    mov         dword ptr [ebp-0C],edx
>0042C06F    jmp         0042C39F
 0042C074    mov         eax,dword ptr [ebp-4]
 0042C077    fild        qword ptr [eax+8]
 0042C07A    fdiv        dword ptr ds:[42C3E0]
 0042C080    call        @ROUND
 0042C085    mov         dword ptr [ebp-10],eax
 0042C088    mov         dword ptr [ebp-0C],edx
>0042C08B    jmp         0042C39F
 0042C090    mov         eax,dword ptr [ebp-4]
 0042C093    fld         qword ptr [eax+8]
 0042C096    call        @ROUND
 0042C09B    mov         dword ptr [ebp-10],eax
 0042C09E    mov         dword ptr [ebp-0C],edx
>0042C0A1    jmp         0042C39F
 0042C0A6    mov         eax,dword ptr [ebp-4]
 0042C0A9    call        VarToInt64AsString
 0042C0AE    mov         dword ptr [ebp-10],eax
 0042C0B1    mov         dword ptr [ebp-0C],edx
>0042C0B4    jmp         0042C39F
 0042C0B9    mov         eax,dword ptr [ebp-4]
 0042C0BC    movsx       eax,word ptr [eax+8]
 0042C0C0    cdq
 0042C0C1    mov         dword ptr [ebp-10],eax
 0042C0C4    mov         dword ptr [ebp-0C],edx
>0042C0C7    jmp         0042C39F
 0042C0CC    mov         eax,dword ptr [ebp-4]
 0042C0CF    movsx       eax,byte ptr [eax+8]
 0042C0D3    cdq
 0042C0D4    mov         dword ptr [ebp-10],eax
 0042C0D7    mov         dword ptr [ebp-0C],edx
>0042C0DA    jmp         0042C39F
 0042C0DF    mov         eax,dword ptr [ebp-4]
 0042C0E2    movzx       eax,byte ptr [eax+8]
 0042C0E6    xor         edx,edx
 0042C0E8    mov         dword ptr [ebp-10],eax
 0042C0EB    mov         dword ptr [ebp-0C],edx
>0042C0EE    jmp         0042C39F
 0042C0F3    mov         eax,dword ptr [ebp-4]
 0042C0F6    movzx       eax,word ptr [eax+8]
 0042C0FA    xor         edx,edx
 0042C0FC    mov         dword ptr [ebp-10],eax
 0042C0FF    mov         dword ptr [ebp-0C],edx
>0042C102    jmp         0042C39F
 0042C107    mov         eax,dword ptr [ebp-4]
 0042C10A    mov         eax,dword ptr [eax+8]
 0042C10D    xor         edx,edx
 0042C10F    mov         dword ptr [ebp-10],eax
 0042C112    mov         dword ptr [ebp-0C],edx
>0042C115    jmp         0042C39F
 0042C11A    mov         eax,dword ptr [ebp-4]
 0042C11D    mov         edx,dword ptr [eax+8]
 0042C120    mov         dword ptr [ebp-10],edx
 0042C123    mov         edx,dword ptr [eax+0C]
 0042C126    mov         dword ptr [ebp-0C],edx
>0042C129    jmp         0042C39F
 0042C12E    mov         eax,dword ptr [ebp-4]
 0042C131    mov         edx,dword ptr [eax+8]
 0042C134    mov         dword ptr [ebp-10],edx
 0042C137    mov         edx,dword ptr [eax+0C]
 0042C13A    mov         dword ptr [ebp-0C],edx
>0042C13D    jmp         0042C39F
 0042C142    mov         eax,dword ptr [ebp-4]
 0042C145    mov         eax,dword ptr [eax+8]
 0042C148    call        @VarToInt64
 0042C14D    mov         dword ptr [ebp-10],eax
 0042C150    mov         dword ptr [ebp-0C],edx
>0042C153    jmp         0042C39F
 0042C158    mov         eax,dword ptr [ebp-4]
 0042C15B    call        VarToInt64ViaOS
 0042C160    mov         dword ptr [ebp-10],eax
 0042C163    mov         dword ptr [ebp-0C],edx
>0042C166    jmp         0042C39F
 0042C16B    mov         edx,eax
 0042C16D    sub         dx,100
>0042C172    je          0042C180
 0042C174    dec         dx
>0042C177    je          0042C1A6
 0042C179    dec         dx
>0042C17C    je          0042C193
>0042C17E    jmp         0042C1B9
 0042C180    mov         eax,dword ptr [ebp-4]
 0042C183    call        VarToInt64AsString
 0042C188    mov         dword ptr [ebp-10],eax
 0042C18B    mov         dword ptr [ebp-0C],edx
>0042C18E    jmp         0042C39F
 0042C193    mov         eax,dword ptr [ebp-4]
 0042C196    call        VarToInt64AsString
 0042C19B    mov         dword ptr [ebp-10],eax
 0042C19E    mov         dword ptr [ebp-0C],edx
>0042C1A1    jmp         0042C39F
 0042C1A6    mov         eax,dword ptr [ebp-4]
 0042C1A9    call        VarToInt64Any
 0042C1AE    mov         dword ptr [ebp-10],eax
 0042C1B1    mov         dword ptr [ebp-0C],edx
>0042C1B4    jmp         0042C39F
 0042C1B9    test        ah,40
>0042C1BC    je          0042C382
 0042C1C2    movzx       eax,ax
 0042C1C5    and         eax,0FFFFBFFF
 0042C1CA    cmp         eax,15
>0042C1CD    ja          0042C372
 0042C1D3    jmp         dword ptr [eax*4+42C1DA]
 0042C1D3    dd          0042C372
 0042C1D3    dd          0042C372
 0042C1D3    dd          0042C232
 0042C1D3    dd          0042C247
 0042C1D3    dd          0042C25B
 0042C1D3    dd          0042C273
 0042C1D3    dd          0042C28B
 0042C1D3    dd          0042C2A9
 0042C1D3    dd          0042C2C1
 0042C1D3    dd          0042C372
 0042C1D3    dd          0042C372
 0042C1D3    dd          0042C2D4
 0042C1D3    dd          0042C35F
 0042C1D3    dd          0042C372
 0042C1D3    dd          0042C372
 0042C1D3    dd          0042C372
 0042C1D3    dd          0042C2E9
 0042C1D3    dd          0042C2FE
 0042C1D3    dd          0042C314
 0042C1D3    dd          0042C327
 0042C1D3    dd          0042C339
 0042C1D3    dd          0042C34C
 0042C232    mov         eax,dword ptr [ebp-4]
 0042C235    mov         eax,dword ptr [eax+8]
 0042C238    movsx       eax,word ptr [eax]
 0042C23B    cdq
 0042C23C    mov         dword ptr [ebp-10],eax
 0042C23F    mov         dword ptr [ebp-0C],edx
>0042C242    jmp         0042C39F
 0042C247    mov         eax,dword ptr [ebp-4]
 0042C24A    mov         eax,dword ptr [eax+8]
 0042C24D    mov         eax,dword ptr [eax]
 0042C24F    cdq
 0042C250    mov         dword ptr [ebp-10],eax
 0042C253    mov         dword ptr [ebp-0C],edx
>0042C256    jmp         0042C39F
 0042C25B    mov         eax,dword ptr [ebp-4]
 0042C25E    mov         eax,dword ptr [eax+8]
 0042C261    fld         dword ptr [eax]
 0042C263    call        @ROUND
 0042C268    mov         dword ptr [ebp-10],eax
 0042C26B    mov         dword ptr [ebp-0C],edx
>0042C26E    jmp         0042C39F
 0042C273    mov         eax,dword ptr [ebp-4]
 0042C276    mov         eax,dword ptr [eax+8]
 0042C279    fld         qword ptr [eax]
 0042C27B    call        @ROUND
 0042C280    mov         dword ptr [ebp-10],eax
 0042C283    mov         dword ptr [ebp-0C],edx
>0042C286    jmp         0042C39F
 0042C28B    mov         eax,dword ptr [ebp-4]
 0042C28E    mov         eax,dword ptr [eax+8]
 0042C291    fild        qword ptr [eax]
 0042C293    fdiv        dword ptr ds:[42C3E0]
 0042C299    call        @ROUND
 0042C29E    mov         dword ptr [ebp-10],eax
 0042C2A1    mov         dword ptr [ebp-0C],edx
>0042C2A4    jmp         0042C39F
 0042C2A9    mov         eax,dword ptr [ebp-4]
 0042C2AC    mov         eax,dword ptr [eax+8]
 0042C2AF    fld         qword ptr [eax]
 0042C2B1    call        @ROUND
 0042C2B6    mov         dword ptr [ebp-10],eax
 0042C2B9    mov         dword ptr [ebp-0C],edx
>0042C2BC    jmp         0042C39F
 0042C2C1    mov         eax,dword ptr [ebp-4]
 0042C2C4    call        VarToInt64AsString
 0042C2C9    mov         dword ptr [ebp-10],eax
 0042C2CC    mov         dword ptr [ebp-0C],edx
>0042C2CF    jmp         0042C39F
 0042C2D4    mov         eax,dword ptr [ebp-4]
 0042C2D7    mov         eax,dword ptr [eax+8]
 0042C2DA    movsx       eax,word ptr [eax]
 0042C2DD    cdq
 0042C2DE    mov         dword ptr [ebp-10],eax
 0042C2E1    mov         dword ptr [ebp-0C],edx
>0042C2E4    jmp         0042C39F
 0042C2E9    mov         eax,dword ptr [ebp-4]
 0042C2EC    mov         eax,dword ptr [eax+8]
 0042C2EF    movsx       eax,byte ptr [eax]
 0042C2F2    cdq
 0042C2F3    mov         dword ptr [ebp-10],eax
 0042C2F6    mov         dword ptr [ebp-0C],edx
>0042C2F9    jmp         0042C39F
 0042C2FE    mov         eax,dword ptr [ebp-4]
 0042C301    mov         eax,dword ptr [eax+8]
 0042C304    movzx       eax,byte ptr [eax]
 0042C307    xor         edx,edx
 0042C309    mov         dword ptr [ebp-10],eax
 0042C30C    mov         dword ptr [ebp-0C],edx
>0042C30F    jmp         0042C39F
 0042C314    mov         eax,dword ptr [ebp-4]
 0042C317    mov         eax,dword ptr [eax+8]
 0042C31A    movzx       eax,word ptr [eax]
 0042C31D    xor         edx,edx
 0042C31F    mov         dword ptr [ebp-10],eax
 0042C322    mov         dword ptr [ebp-0C],edx
>0042C325    jmp         0042C39F
 0042C327    mov         eax,dword ptr [ebp-4]
 0042C32A    mov         eax,dword ptr [eax+8]
 0042C32D    mov         eax,dword ptr [eax]
 0042C32F    xor         edx,edx
 0042C331    mov         dword ptr [ebp-10],eax
 0042C334    mov         dword ptr [ebp-0C],edx
>0042C337    jmp         0042C39F
 0042C339    mov         eax,dword ptr [ebp-4]
 0042C33C    mov         eax,dword ptr [eax+8]
 0042C33F    mov         edx,dword ptr [eax]
 0042C341    mov         dword ptr [ebp-10],edx
 0042C344    mov         edx,dword ptr [eax+4]
 0042C347    mov         dword ptr [ebp-0C],edx
>0042C34A    jmp         0042C39F
 0042C34C    mov         eax,dword ptr [ebp-4]
 0042C34F    mov         eax,dword ptr [eax+8]
 0042C352    mov         edx,dword ptr [eax]
 0042C354    mov         dword ptr [ebp-10],edx
 0042C357    mov         edx,dword ptr [eax+4]
 0042C35A    mov         dword ptr [ebp-0C],edx
>0042C35D    jmp         0042C39F
 0042C35F    mov         eax,dword ptr [ebp-4]
 0042C362    mov         eax,dword ptr [eax+8]
 0042C365    call        @VarToInt64
 0042C36A    mov         dword ptr [ebp-10],eax
 0042C36D    mov         dword ptr [ebp-0C],edx
>0042C370    jmp         0042C39F
 0042C372    mov         eax,dword ptr [ebp-4]
 0042C375    call        VarToInt64ViaOS
 0042C37A    mov         dword ptr [ebp-10],eax
 0042C37D    mov         dword ptr [ebp-0C],edx
>0042C380    jmp         0042C39F
 0042C382    lea         edx,[ebp-10]
 0042C385    mov         eax,dword ptr [ebp-4]
 0042C388    call        VarToInt64Custom
 0042C38D    test        al,al
>0042C38F    jne         0042C39F
 0042C391    mov         eax,dword ptr [ebp-4]
 0042C394    call        VarToInt64ViaOS
 0042C399    mov         dword ptr [ebp-10],eax
 0042C39C    mov         dword ptr [ebp-0C],edx
 0042C39F    xor         eax,eax
 0042C3A1    pop         edx
 0042C3A2    pop         ecx
 0042C3A3    pop         ecx
 0042C3A4    mov         dword ptr fs:[eax],edx
>0042C3A7    jmp         0042C3D0
>0042C3A9    jmp         @HandleAnyException
 0042C3AE    mov         eax,dword ptr [ebp-4]
 0042C3B1    movzx       eax,word ptr [eax]
 0042C3B4    mov         dx,14
 0042C3B8    call        HandleConversionException
 0042C3BD    mov         dword ptr [ebp-10],0
 0042C3C4    mov         dword ptr [ebp-0C],0
 0042C3CB    call        @DoneExcept
 0042C3D0    mov         eax,dword ptr [ebp-10]
 0042C3D3    mov         edx,dword ptr [ebp-0C]
 0042C3D6    pop         edi
 0042C3D7    pop         esi
 0042C3D8    pop         ebx
 0042C3D9    mov         esp,ebp
 0042C3DB    pop         ebp
 0042C3DC    ret
*}
end;

//0042C3E4
function @VarToUInt64(const V:TVarData):UInt64;
begin
{*
 0042C3E4    push        ebp
 0042C3E5    mov         ebp,esp
 0042C3E7    add         esp,0FFFFFFF0
 0042C3EA    push        ebx
 0042C3EB    push        esi
 0042C3EC    push        edi
 0042C3ED    mov         dword ptr [ebp-4],eax
 0042C3F0    mov         eax,dword ptr [ebp-4]
 0042C3F3    movzx       eax,word ptr [eax]
 0042C3F6    cmp         eax,12
>0042C3F9    jg          0042C417
>0042C3FB    je          0042C49C
 0042C401    sub         eax,1
>0042C404    jb          0042C439
>0042C406    je          0042C44C
 0042C408    sub         eax,0A
>0042C40B    je          0042C475
 0042C40D    sub         eax,6
>0042C410    je          0042C488
>0042C412    jmp         0042C4E7
 0042C417    sub         eax,13
>0042C41A    je          0042C4B0
 0042C420    sub         eax,2
>0042C423    je          0042C4C3
 0042C429    sub         eax,4000
>0042C42E    je          0042C4D4
>0042C434    jmp         0042C4E7
 0042C439    mov         dword ptr [ebp-10],0
 0042C440    mov         dword ptr [ebp-0C],0
>0042C447    jmp         0042C546
 0042C44C    cmp         byte ptr ds:[79F68E],0
>0042C453    je          0042C462
 0042C455    mov         dx,13
 0042C459    mov         ax,1
 0042C45D    call        VarCastError
 0042C462    mov         dword ptr [ebp-10],0
 0042C469    mov         dword ptr [ebp-0C],0
>0042C470    jmp         0042C546
 0042C475    mov         eax,dword ptr [ebp-4]
 0042C478    movsx       eax,word ptr [eax+8]
 0042C47C    cdq
 0042C47D    mov         dword ptr [ebp-10],eax
 0042C480    mov         dword ptr [ebp-0C],edx
>0042C483    jmp         0042C546
 0042C488    mov         eax,dword ptr [ebp-4]
 0042C48B    movzx       eax,byte ptr [eax+8]
 0042C48F    xor         edx,edx
 0042C491    mov         dword ptr [ebp-10],eax
 0042C494    mov         dword ptr [ebp-0C],edx
>0042C497    jmp         0042C546
 0042C49C    mov         eax,dword ptr [ebp-4]
 0042C49F    movzx       eax,word ptr [eax+8]
 0042C4A3    xor         edx,edx
 0042C4A5    mov         dword ptr [ebp-10],eax
 0042C4A8    mov         dword ptr [ebp-0C],edx
>0042C4AB    jmp         0042C546
 0042C4B0    mov         eax,dword ptr [ebp-4]
 0042C4B3    mov         eax,dword ptr [eax+8]
 0042C4B6    xor         edx,edx
 0042C4B8    mov         dword ptr [ebp-10],eax
 0042C4BB    mov         dword ptr [ebp-0C],edx
>0042C4BE    jmp         0042C546
 0042C4C3    mov         eax,dword ptr [ebp-4]
 0042C4C6    mov         edx,dword ptr [eax+8]
 0042C4C9    mov         dword ptr [ebp-10],edx
 0042C4CC    mov         edx,dword ptr [eax+0C]
 0042C4CF    mov         dword ptr [ebp-0C],edx
>0042C4D2    jmp         0042C546
 0042C4D4    mov         eax,dword ptr [ebp-4]
 0042C4D7    mov         eax,dword ptr [eax+8]
 0042C4DA    mov         edx,dword ptr [eax]
 0042C4DC    mov         dword ptr [ebp-10],edx
 0042C4DF    mov         edx,dword ptr [eax+4]
 0042C4E2    mov         dword ptr [ebp-0C],edx
>0042C4E5    jmp         0042C546
 0042C4E7    xor         eax,eax
 0042C4E9    push        ebp
 0042C4EA    push        42C51F
 0042C4EF    push        dword ptr fs:[eax]
 0042C4F2    mov         dword ptr fs:[eax],esp
 0042C4F5    mov         eax,dword ptr [ebp-4]
 0042C4F8    call        @VarToInt64
 0042C4FD    cmp         edx,7FFFFFFF
>0042C503    jne         0042C508
 0042C505    cmp         eax,0FFFFFFFF
>0042C508    jbe         0042C50F
 0042C50A    call        @BoundErr
 0042C50F    mov         dword ptr [ebp-10],eax
 0042C512    mov         dword ptr [ebp-0C],edx
 0042C515    xor         eax,eax
 0042C517    pop         edx
 0042C518    pop         ecx
 0042C519    pop         ecx
 0042C51A    mov         dword ptr fs:[eax],edx
>0042C51D    jmp         0042C546
>0042C51F    jmp         @HandleAnyException
 0042C524    mov         eax,dword ptr [ebp-4]
 0042C527    movzx       eax,word ptr [eax]
 0042C52A    mov         dx,15
 0042C52E    call        HandleConversionException
 0042C533    mov         dword ptr [ebp-10],0
 0042C53A    mov         dword ptr [ebp-0C],0
 0042C541    call        @DoneExcept
 0042C546    mov         eax,dword ptr [ebp-10]
 0042C549    mov         edx,dword ptr [ebp-0C]
 0042C54C    pop         edi
 0042C54D    pop         esi
 0042C54E    pop         ebx
 0042C54F    mov         esp,ebp
 0042C551    pop         ebp
 0042C552    ret
*}
end;

//0042C554
function VarToBoolAsString(const V:TVarData):Boolean;
begin
{*
 0042C554    push        ebp
 0042C555    mov         ebp,esp
 0042C557    push        0
 0042C559    push        0
 0042C55B    push        0
 0042C55D    push        ebx
 0042C55E    mov         ebx,eax
 0042C560    xor         eax,eax
 0042C562    push        ebp
 0042C563    push        42C60B
 0042C568    push        dword ptr fs:[eax]
 0042C56B    mov         dword ptr fs:[eax],esp
 0042C56E    mov         edx,ebx
 0042C570    lea         eax,[ebp-4]
 0042C573    call        @VarToWStr
 0042C578    lea         eax,[ebp-8]
 0042C57B    push        eax
 0042C57C    push        0
 0042C57E    push        400
 0042C583    mov         eax,dword ptr [ebp-4]
 0042C586    call        @WStrToPWChar
 0042C58B    push        eax
 0042C58C    mov         eax,[007C4844];^gvar_007C9F34
 0042C591    mov         eax,dword ptr [eax]
 0042C593    call        eax
 0042C595    mov         edx,eax
 0042C597    sub         edx,80020005
>0042C59D    je          0042C5B4
 0042C59F    sub         edx,7FFDFFFB
>0042C5A5    jne         0042C5E1
 0042C5A7    cmp         word ptr [ebp-8],1
 0042C5AC    sbb         eax,eax
 0042C5AE    inc         eax
 0042C5AF    mov         byte ptr [ebp-5],al
>0042C5B2    jmp         0042C5ED
 0042C5B4    lea         eax,[ebp-0C]
 0042C5B7    mov         edx,dword ptr [ebp-4]
 0042C5BA    call        @UStrFromWStr
 0042C5BF    mov         eax,dword ptr [ebp-0C]
 0042C5C2    lea         edx,[ebp-5]
 0042C5C5    call        TryStrToBool
 0042C5CA    test        al,al
>0042C5CC    jne         0042C5ED
 0042C5CE    movzx       edx,word ptr [ebx]
 0042C5D1    mov         cx,0B
 0042C5D5    mov         eax,80020005
 0042C5DA    call        VarResultCheck
>0042C5DF    jmp         0042C5ED
 0042C5E1    movzx       edx,word ptr [ebx]
 0042C5E4    mov         cx,0B
 0042C5E8    call        VarResultCheck
 0042C5ED    xor         eax,eax
 0042C5EF    pop         edx
 0042C5F0    pop         ecx
 0042C5F1    pop         ecx
 0042C5F2    mov         dword ptr fs:[eax],edx
 0042C5F5    push        42C612
 0042C5FA    lea         eax,[ebp-0C]
 0042C5FD    call        @UStrClr
 0042C602    lea         eax,[ebp-4]
 0042C605    call        @WStrClr
 0042C60A    ret
>0042C60B    jmp         @HandleFinally
>0042C610    jmp         0042C5FA
 0042C612    movzx       eax,byte ptr [ebp-5]
 0042C616    pop         ebx
 0042C617    mov         esp,ebp
 0042C619    pop         ebp
 0042C61A    ret
*}
end;

//0042C61C
function VarToBoolViaOS(const V:TVarData):Boolean;
begin
{*
 0042C61C    push        ebx
 0042C61D    add         esp,0FFFFFFF0
 0042C620    mov         ebx,eax
 0042C622    push        esp
 0042C623    call        oleaut32.VariantInit
 0042C628    push        0B
 0042C62A    push        0
 0042C62C    push        400
 0042C631    push        ebx
 0042C632    lea         eax,[esp+10]
 0042C636    push        eax
 0042C637    mov         eax,[007C4C30];^gvar_007C9EEC
 0042C63C    mov         eax,dword ptr [eax]
 0042C63E    call        eax
 0042C640    movzx       edx,word ptr [ebx]
 0042C643    mov         cx,0B
 0042C647    call        VarResultCheck
 0042C64C    cmp         word ptr [esp+8],1
 0042C652    sbb         eax,eax
 0042C654    inc         eax
 0042C655    add         esp,10
 0042C658    pop         ebx
 0042C659    ret
*}
end;

//0042C65C
function VarToBoolAny(const V:TVarData):Boolean;
begin
{*
 0042C65C    push        ebp
 0042C65D    mov         ebp,esp
 0042C65F    add         esp,0FFFFFFEC
 0042C662    push        ebx
 0042C663    mov         ebx,eax
 0042C665    lea         eax,[ebp-11]
 0042C668    push        eax
 0042C669    call        oleaut32.VariantInit
 0042C66E    xor         eax,eax
 0042C670    push        ebp
 0042C671    push        42C6B0
 0042C676    push        dword ptr fs:[eax]
 0042C679    mov         dword ptr fs:[eax],esp
 0042C67C    mov         edx,ebx
 0042C67E    lea         eax,[ebp-11]
 0042C681    call        @VarCopy
 0042C686    lea         eax,[ebp-11]
 0042C689    call        dword ptr ds:[7C9F50]
 0042C68F    lea         eax,[ebp-11]
 0042C692    call        @VarToBoolean
 0042C697    mov         byte ptr [ebp-1],al
 0042C69A    xor         eax,eax
 0042C69C    pop         edx
 0042C69D    pop         ecx
 0042C69E    pop         ecx
 0042C69F    mov         dword ptr fs:[eax],edx
 0042C6A2    push        42C6B7
 0042C6A7    lea         eax,[ebp-11]
 0042C6AA    call        @VarClear
 0042C6AF    ret
>0042C6B0    jmp         @HandleFinally
>0042C6B5    jmp         0042C6A7
 0042C6B7    movzx       eax,byte ptr [ebp-1]
 0042C6BB    pop         ebx
 0042C6BC    mov         esp,ebp
 0042C6BE    pop         ebp
 0042C6BF    ret
*}
end;

//0042C6C0
function VarToBoolCustom(const V:TVarData; var AValue:Boolean):Boolean;
begin
{*
 0042C6C0    push        ebx
 0042C6C1    push        esi
 0042C6C2    push        edi
 0042C6C3    add         esp,0FFFFFFEC
 0042C6C6    mov         edi,edx
 0042C6C8    mov         esi,eax
 0042C6CA    mov         edx,esp
 0042C6CC    movzx       eax,word ptr [esi]
 0042C6CF    call        FindCustomVariantType
 0042C6D4    mov         ebx,eax
 0042C6D6    test        bl,bl
>0042C6D8    je          0042C700
 0042C6DA    lea         eax,[esp+4]
 0042C6DE    push        eax
 0042C6DF    call        oleaut32.VariantInit
 0042C6E4    push        0B
 0042C6E6    mov         ecx,esi
 0042C6E8    lea         edx,[esp+8]
 0042C6EC    mov         eax,dword ptr [esp+4]
 0042C6F0    mov         esi,dword ptr [eax]
 0042C6F2    call        dword ptr [esi+1C]
 0042C6F5    cmp         word ptr [esp+0C],1
 0042C6FB    sbb         eax,eax
 0042C6FD    inc         eax
 0042C6FE    mov         byte ptr [edi],al
 0042C700    mov         eax,ebx
 0042C702    add         esp,14
 0042C705    pop         edi
 0042C706    pop         esi
 0042C707    pop         ebx
 0042C708    ret
*}
end;

//0042C70C
function @VarToBoolean(const V:TVarData):Boolean;
begin
{*
 0042C70C    push        ebx
 0042C70D    push        ecx
 0042C70E    mov         ebx,eax
 0042C710    movzx       eax,word ptr [ebx]
 0042C713    movzx       edx,ax
 0042C716    cmp         edx,15
>0042C719    ja          0042C8A8
 0042C71F    jmp         dword ptr [edx*4+42C726]
 0042C71F    dd          0042C77E
 0042C71F    dd          0042C787
 0042C71F    dd          0042C7A6
 0042C71F    dd          0042C7B4
 0042C71F    dd          0042C7C1
 0042C71F    dd          0042C7D3
 0042C71F    dd          0042C7E5
 0042C71F    dd          0042C7F9
 0042C71F    dd          0042C80B
 0042C71F    dd          0042C899
 0042C71F    dd          0042C8A8
 0042C71F    dd          0042C81A
 0042C71F    dd          0042C889
 0042C71F    dd          0042C899
 0042C71F    dd          0042C8A8
 0042C71F    dd          0042C8A8
 0042C71F    dd          0042C82A
 0042C71F    dd          0042C837
 0042C71F    dd          0042C844
 0042C71F    dd          0042C852
 0042C71F    dd          0042C85F
 0042C71F    dd          0042C874
 0042C77E    mov         byte ptr [esp],0
>0042C782    jmp         0042CA7E
 0042C787    cmp         byte ptr ds:[79F68E],0
>0042C78E    je          0042C79D
 0042C790    mov         dx,0B
 0042C794    mov         ax,1
 0042C798    call        VarCastError
 0042C79D    mov         byte ptr [esp],0
>0042C7A1    jmp         0042CA7E
 0042C7A6    cmp         word ptr [ebx+8],0
 0042C7AB    setne       byte ptr [esp]
>0042C7AF    jmp         0042CA7E
 0042C7B4    cmp         dword ptr [ebx+8],0
 0042C7B8    setne       byte ptr [esp]
>0042C7BC    jmp         0042CA7E
 0042C7C1    fldz
 0042C7C3    fcomp       dword ptr [ebx+8]
 0042C7C6    wait
 0042C7C7    fnstsw      al
 0042C7C9    sahf
 0042C7CA    setne       byte ptr [esp]
>0042C7CE    jmp         0042CA7E
 0042C7D3    fldz
 0042C7D5    fcomp       qword ptr [ebx+8]
 0042C7D8    wait
 0042C7D9    fnstsw      al
 0042C7DB    sahf
 0042C7DC    setne       byte ptr [esp]
>0042C7E0    jmp         0042CA7E
 0042C7E5    fldz
 0042C7E7    fild        qword ptr [ebx+8]
 0042C7EA    fcompp
 0042C7EC    wait
 0042C7ED    fnstsw      al
 0042C7EF    sahf
 0042C7F0    setne       byte ptr [esp]
>0042C7F4    jmp         0042CA7E
 0042C7F9    fldz
 0042C7FB    fcomp       qword ptr [ebx+8]
 0042C7FE    wait
 0042C7FF    fnstsw      al
 0042C801    sahf
 0042C802    setne       byte ptr [esp]
>0042C806    jmp         0042CA7E
 0042C80B    mov         eax,ebx
 0042C80D    call        VarToBoolAsString
 0042C812    mov         byte ptr [esp],al
>0042C815    jmp         0042CA7E
 0042C81A    cmp         word ptr [ebx+8],1
 0042C81F    sbb         eax,eax
 0042C821    inc         eax
 0042C822    mov         byte ptr [esp],al
>0042C825    jmp         0042CA7E
 0042C82A    cmp         byte ptr [ebx+8],0
 0042C82E    setne       byte ptr [esp]
>0042C832    jmp         0042CA7E
 0042C837    cmp         byte ptr [ebx+8],0
 0042C83B    setne       byte ptr [esp]
>0042C83F    jmp         0042CA7E
 0042C844    cmp         word ptr [ebx+8],0
 0042C849    setne       byte ptr [esp]
>0042C84D    jmp         0042CA7E
 0042C852    cmp         dword ptr [ebx+8],0
 0042C856    setne       byte ptr [esp]
>0042C85A    jmp         0042CA7E
 0042C85F    cmp         dword ptr [ebx+0C],0
>0042C863    jne         0042C869
 0042C865    cmp         dword ptr [ebx+8],0
 0042C869    setne       al
 0042C86C    mov         byte ptr [esp],al
>0042C86F    jmp         0042CA7E
 0042C874    cmp         dword ptr [ebx+0C],0
>0042C878    jne         0042C87E
 0042C87A    cmp         dword ptr [ebx+8],0
 0042C87E    setne       al
 0042C881    mov         byte ptr [esp],al
>0042C884    jmp         0042CA7E
 0042C889    mov         eax,dword ptr [ebx+8]
 0042C88C    call        @VarToBoolean
 0042C891    mov         byte ptr [esp],al
>0042C894    jmp         0042CA7E
 0042C899    mov         eax,ebx
 0042C89B    call        VarToBoolViaOS
 0042C8A0    mov         byte ptr [esp],al
>0042C8A3    jmp         0042CA7E
 0042C8A8    mov         edx,eax
 0042C8AA    sub         dx,100
>0042C8AF    je          0042C8BD
 0042C8B1    dec         dx
>0042C8B4    je          0042C8DB
 0042C8B6    dec         dx
>0042C8B9    je          0042C8CC
>0042C8BB    jmp         0042C8EA
 0042C8BD    mov         eax,ebx
 0042C8BF    call        VarToBoolAsString
 0042C8C4    mov         byte ptr [esp],al
>0042C8C7    jmp         0042CA7E
 0042C8CC    mov         eax,ebx
 0042C8CE    call        VarToBoolAsString
 0042C8D3    mov         byte ptr [esp],al
>0042C8D6    jmp         0042CA7E
 0042C8DB    mov         eax,ebx
 0042C8DD    call        VarToBoolAny
 0042C8E2    mov         byte ptr [esp],al
>0042C8E5    jmp         0042CA7E
 0042C8EA    test        ah,40
>0042C8ED    je          0042CA67
 0042C8F3    movzx       eax,ax
 0042C8F6    and         eax,0FFFFBFFF
 0042C8FB    cmp         eax,15
>0042C8FE    ja          0042CA5B
 0042C904    jmp         dword ptr [eax*4+42C90B]
 0042C904    dd          0042CA5B
 0042C904    dd          0042CA5B
 0042C904    dd          0042C963
 0042C904    dd          0042C973
 0042C904    dd          0042C982
 0042C904    dd          0042C996
 0042C904    dd          0042C9AA
 0042C904    dd          0042C9C0
 0042C904    dd          0042C9D4
 0042C904    dd          0042CA5B
 0042C904    dd          0042CA5B
 0042C904    dd          0042C9E3
 0042C904    dd          0042CA4E
 0042C904    dd          0042CA5B
 0042C904    dd          0042CA5B
 0042C904    dd          0042CA5B
 0042C904    dd          0042C9F5
 0042C904    dd          0042CA01
 0042C904    dd          0042CA0D
 0042C904    dd          0042CA1A
 0042C904    dd          0042CA26
 0042C904    dd          0042CA3A
 0042C963    mov         eax,dword ptr [ebx+8]
 0042C966    cmp         word ptr [eax],0
 0042C96A    setne       byte ptr [esp]
>0042C96E    jmp         0042CA7E
 0042C973    mov         eax,dword ptr [ebx+8]
 0042C976    cmp         dword ptr [eax],0
 0042C979    setne       byte ptr [esp]
>0042C97D    jmp         0042CA7E
 0042C982    mov         eax,dword ptr [ebx+8]
 0042C985    fldz
 0042C987    fcomp       dword ptr [eax]
 0042C989    wait
 0042C98A    fnstsw      al
 0042C98C    sahf
 0042C98D    setne       byte ptr [esp]
>0042C991    jmp         0042CA7E
 0042C996    mov         eax,dword ptr [ebx+8]
 0042C999    fldz
 0042C99B    fcomp       qword ptr [eax]
 0042C99D    wait
 0042C99E    fnstsw      al
 0042C9A0    sahf
 0042C9A1    setne       byte ptr [esp]
>0042C9A5    jmp         0042CA7E
 0042C9AA    mov         eax,dword ptr [ebx+8]
 0042C9AD    fldz
 0042C9AF    fild        qword ptr [eax]
 0042C9B1    fcompp
 0042C9B3    wait
 0042C9B4    fnstsw      al
 0042C9B6    sahf
 0042C9B7    setne       byte ptr [esp]
>0042C9BB    jmp         0042CA7E
 0042C9C0    mov         eax,dword ptr [ebx+8]
 0042C9C3    fldz
 0042C9C5    fcomp       qword ptr [eax]
 0042C9C7    wait
 0042C9C8    fnstsw      al
 0042C9CA    sahf
 0042C9CB    setne       byte ptr [esp]
>0042C9CF    jmp         0042CA7E
 0042C9D4    mov         eax,ebx
 0042C9D6    call        VarToBoolAsString
 0042C9DB    mov         byte ptr [esp],al
>0042C9DE    jmp         0042CA7E
 0042C9E3    mov         eax,dword ptr [ebx+8]
 0042C9E6    cmp         word ptr [eax],1
 0042C9EA    sbb         eax,eax
 0042C9EC    inc         eax
 0042C9ED    mov         byte ptr [esp],al
>0042C9F0    jmp         0042CA7E
 0042C9F5    mov         eax,dword ptr [ebx+8]
 0042C9F8    cmp         byte ptr [eax],0
 0042C9FB    setne       byte ptr [esp]
>0042C9FF    jmp         0042CA7E
 0042CA01    mov         eax,dword ptr [ebx+8]
 0042CA04    cmp         byte ptr [eax],0
 0042CA07    setne       byte ptr [esp]
>0042CA0B    jmp         0042CA7E
 0042CA0D    mov         eax,dword ptr [ebx+8]
 0042CA10    cmp         word ptr [eax],0
 0042CA14    setne       byte ptr [esp]
>0042CA18    jmp         0042CA7E
 0042CA1A    mov         eax,dword ptr [ebx+8]
 0042CA1D    cmp         dword ptr [eax],0
 0042CA20    setne       byte ptr [esp]
>0042CA24    jmp         0042CA7E
 0042CA26    mov         eax,dword ptr [ebx+8]
 0042CA29    cmp         dword ptr [eax+4],0
>0042CA2D    jne         0042CA32
 0042CA2F    cmp         dword ptr [eax],0
 0042CA32    setne       al
 0042CA35    mov         byte ptr [esp],al
>0042CA38    jmp         0042CA7E
 0042CA3A    mov         eax,dword ptr [ebx+8]
 0042CA3D    cmp         dword ptr [eax+4],0
>0042CA41    jne         0042CA46
 0042CA43    cmp         dword ptr [eax],0
 0042CA46    setne       al
 0042CA49    mov         byte ptr [esp],al
>0042CA4C    jmp         0042CA7E
 0042CA4E    mov         eax,dword ptr [ebx+8]
 0042CA51    call        @VarToBoolean
 0042CA56    mov         byte ptr [esp],al
>0042CA59    jmp         0042CA7E
 0042CA5B    mov         eax,ebx
 0042CA5D    call        VarToBoolViaOS
 0042CA62    mov         byte ptr [esp],al
>0042CA65    jmp         0042CA7E
 0042CA67    mov         edx,esp
 0042CA69    mov         eax,ebx
 0042CA6B    call        VarToBoolCustom
 0042CA70    test        al,al
>0042CA72    jne         0042CA7E
 0042CA74    mov         eax,ebx
 0042CA76    call        VarToBoolViaOS
 0042CA7B    mov         byte ptr [esp],al
 0042CA7E    movzx       eax,byte ptr [esp]
 0042CA82    pop         edx
 0042CA83    pop         ebx
 0042CA84    ret
*}
end;

//0042CA88
function @VarToBool(const V:TVarData):LongBool;
begin
{*
 0042CA88    call        @VarToBoolean
 0042CA8D    neg         al
 0042CA8F    sbb         eax,eax
 0042CA91    neg         eax
 0042CA93    ret
*}
end;

//0042CA94
function VarToDoubleAsString(const V:TVarData):Double;
begin
{*
 0042CA94    push        ebp
 0042CA95    mov         ebp,esp
 0042CA97    add         esp,0FFFFFFDC
 0042CA9A    push        ebx
 0042CA9B    xor         edx,edx
 0042CA9D    mov         dword ptr [ebp-24],edx
 0042CAA0    mov         dword ptr [ebp-4],edx
 0042CAA3    mov         ebx,eax
 0042CAA5    xor         eax,eax
 0042CAA7    push        ebp
 0042CAA8    push        42CB54
 0042CAAD    push        dword ptr fs:[eax]
 0042CAB0    mov         dword ptr fs:[eax],esp
 0042CAB3    mov         edx,ebx
 0042CAB5    lea         eax,[ebp-4]
 0042CAB8    call        @VarToWStr
 0042CABD    lea         eax,[ebp-10]
 0042CAC0    push        eax
 0042CAC1    push        0
 0042CAC3    push        400
 0042CAC8    mov         eax,dword ptr [ebp-4]
 0042CACB    call        @WStrToPWChar
 0042CAD0    push        eax
 0042CAD1    mov         eax,[007C494C];^gvar_007C9F28
 0042CAD6    mov         eax,dword ptr [eax]
 0042CAD8    call        eax
 0042CADA    mov         edx,eax
 0042CADC    sub         edx,80020005
>0042CAE2    je          0042CAEE
 0042CAE4    sub         edx,7FFDFFFB
>0042CAEA    jne         0042CB2A
>0042CAEC    jmp         0042CB36
 0042CAEE    lea         eax,[ebp-24]
 0042CAF1    mov         edx,dword ptr [ebp-4]
 0042CAF4    call        @UStrFromWStr
 0042CAF9    mov         eax,dword ptr [ebp-24]
 0042CAFC    mov         ecx,dword ptr ds:[7C4B88];^gvar_007C7CC8:Pointer
 0042CB02    lea         edx,[ebp-20]
 0042CB05    call        00420BD0
 0042CB0A    test        al,al
>0042CB0C    je          0042CB17
 0042CB0E    fld         tbyte ptr [ebp-20]
 0042CB11    fstp        qword ptr [ebp-10]
 0042CB14    wait
>0042CB15    jmp         0042CB36
 0042CB17    movzx       edx,word ptr [ebx]
 0042CB1A    mov         cx,5
 0042CB1E    mov         eax,80020005
 0042CB23    call        VarResultCheck
>0042CB28    jmp         0042CB36
 0042CB2A    movzx       edx,word ptr [ebx]
 0042CB2D    mov         cx,5
 0042CB31    call        VarResultCheck
 0042CB36    xor         eax,eax
 0042CB38    pop         edx
 0042CB39    pop         ecx
 0042CB3A    pop         ecx
 0042CB3B    mov         dword ptr fs:[eax],edx
 0042CB3E    push        42CB5B
 0042CB43    lea         eax,[ebp-24]
 0042CB46    call        @UStrClr
 0042CB4B    lea         eax,[ebp-4]
 0042CB4E    call        @WStrClr
 0042CB53    ret
>0042CB54    jmp         @HandleFinally
>0042CB59    jmp         0042CB43
 0042CB5B    fld         qword ptr [ebp-10]
 0042CB5E    pop         ebx
 0042CB5F    mov         esp,ebp
 0042CB61    pop         ebp
 0042CB62    ret
*}
end;

//0042CB64
function VarToDoubleViaOS(const V:TVarData):Double;
begin
{*
 0042CB64    push        ebx
 0042CB65    add         esp,0FFFFFFE8
 0042CB68    mov         ebx,eax
 0042CB6A    lea         eax,[esp+8]
 0042CB6E    push        eax
 0042CB6F    call        oleaut32.VariantInit
 0042CB74    push        5
 0042CB76    push        0
 0042CB78    push        400
 0042CB7D    push        ebx
 0042CB7E    lea         eax,[esp+18]
 0042CB82    push        eax
 0042CB83    mov         eax,[007C4C30];^gvar_007C9EEC
 0042CB88    mov         eax,dword ptr [eax]
 0042CB8A    call        eax
 0042CB8C    movzx       edx,word ptr [ebx]
 0042CB8F    mov         cx,5
 0042CB93    call        VarResultCheck
 0042CB98    mov         eax,dword ptr [esp+10]
 0042CB9C    mov         dword ptr [esp],eax
 0042CB9F    mov         eax,dword ptr [esp+14]
 0042CBA3    mov         dword ptr [esp+4],eax
 0042CBA7    fld         qword ptr [esp]
 0042CBAA    add         esp,18
 0042CBAD    pop         ebx
 0042CBAE    ret
*}
end;

//0042CBB0
function VarToDoubleAny(const V:TVarData):Double;
begin
{*
 0042CBB0    push        ebp
 0042CBB1    mov         ebp,esp
 0042CBB3    add         esp,0FFFFFFE8
 0042CBB6    push        ebx
 0042CBB7    mov         ebx,eax
 0042CBB9    lea         eax,[ebp-18]
 0042CBBC    push        eax
 0042CBBD    call        oleaut32.VariantInit
 0042CBC2    xor         eax,eax
 0042CBC4    push        ebp
 0042CBC5    push        42CC05
 0042CBCA    push        dword ptr fs:[eax]
 0042CBCD    mov         dword ptr fs:[eax],esp
 0042CBD0    mov         edx,ebx
 0042CBD2    lea         eax,[ebp-18]
 0042CBD5    call        @VarCopy
 0042CBDA    lea         eax,[ebp-18]
 0042CBDD    call        dword ptr ds:[7C9F50]
 0042CBE3    lea         eax,[ebp-18]
 0042CBE6    call        @VarToDouble
 0042CBEB    fstp        qword ptr [ebp-8]
 0042CBEE    wait
 0042CBEF    xor         eax,eax
 0042CBF1    pop         edx
 0042CBF2    pop         ecx
 0042CBF3    pop         ecx
 0042CBF4    mov         dword ptr fs:[eax],edx
 0042CBF7    push        42CC0C
 0042CBFC    lea         eax,[ebp-18]
 0042CBFF    call        @VarClear
 0042CC04    ret
>0042CC05    jmp         @HandleFinally
>0042CC0A    jmp         0042CBFC
 0042CC0C    fld         qword ptr [ebp-8]
 0042CC0F    pop         ebx
 0042CC10    mov         esp,ebp
 0042CC12    pop         ebp
 0042CC13    ret
*}
end;

//0042CC14
function VarToDoubleCustom(const V:TVarData; var AValue:Double):Boolean;
begin
{*
 0042CC14    push        ebx
 0042CC15    push        esi
 0042CC16    push        edi
 0042CC17    add         esp,0FFFFFFEC
 0042CC1A    mov         edi,edx
 0042CC1C    mov         esi,eax
 0042CC1E    mov         edx,esp
 0042CC20    movzx       eax,word ptr [esi]
 0042CC23    call        FindCustomVariantType
 0042CC28    mov         ebx,eax
 0042CC2A    test        bl,bl
>0042CC2C    je          0042CC56
 0042CC2E    lea         eax,[esp+4]
 0042CC32    push        eax
 0042CC33    call        oleaut32.VariantInit
 0042CC38    push        5
 0042CC3A    mov         ecx,esi
 0042CC3C    lea         edx,[esp+8]
 0042CC40    mov         eax,dword ptr [esp+4]
 0042CC44    mov         esi,dword ptr [eax]
 0042CC46    call        dword ptr [esi+1C]
 0042CC49    mov         eax,dword ptr [esp+0C]
 0042CC4D    mov         dword ptr [edi],eax
 0042CC4F    mov         eax,dword ptr [esp+10]
 0042CC53    mov         dword ptr [edi+4],eax
 0042CC56    mov         eax,ebx
 0042CC58    add         esp,14
 0042CC5B    pop         edi
 0042CC5C    pop         esi
 0042CC5D    pop         ebx
 0042CC5E    ret
*}
end;

//0042CC60
function @VarToDouble(const V:TVarData):Double;
begin
{*
 0042CC60    push        ebx
 0042CC61    add         esp,0FFFFFFEC
 0042CC64    mov         ebx,eax
 0042CC66    movzx       eax,word ptr [ebx]
 0042CC69    movzx       edx,ax
 0042CC6C    cmp         edx,15
>0042CC6F    ja          0042CE32
 0042CC75    jmp         dword ptr [edx*4+42CC7C]
 0042CC75    dd          0042CCD4
 0042CC75    dd          0042CCE2
 0042CC75    dd          0042CD06
 0042CC75    dd          0042CD12
 0042CC75    dd          0042CD1E
 0042CC75    dd          0042CD2A
 0042CC75    dd          0042CD3C
 0042CC75    dd          0042CD4E
 0042CC75    dd          0042CD60
 0042CC75    dd          0042CE22
 0042CC75    dd          0042CE32
 0042CC75    dd          0042CD70
 0042CC75    dd          0042CE11
 0042CC75    dd          0042CE22
 0042CC75    dd          0042CE32
 0042CC75    dd          0042CE32
 0042CC75    dd          0042CD85
 0042CC75    dd          0042CD9A
 0042CC75    dd          0042CDAF
 0042CC75    dd          0042CDC4
 0042CC75    dd          0042CDDE
 0042CC75    dd          0042CDEA
 0042CCD4    xor         eax,eax
 0042CCD6    mov         dword ptr [esp],eax
 0042CCD9    mov         dword ptr [esp+4],eax
>0042CCDD    jmp         0042D03C
 0042CCE2    cmp         byte ptr ds:[79F68E],0
>0042CCE9    je          0042CCF8
 0042CCEB    mov         dx,5
 0042CCEF    mov         ax,1
 0042CCF3    call        VarCastError
 0042CCF8    xor         eax,eax
 0042CCFA    mov         dword ptr [esp],eax
 0042CCFD    mov         dword ptr [esp+4],eax
>0042CD01    jmp         0042D03C
 0042CD06    fild        word ptr [ebx+8]
 0042CD09    fstp        qword ptr [esp]
 0042CD0C    wait
>0042CD0D    jmp         0042D03C
 0042CD12    fild        dword ptr [ebx+8]
 0042CD15    fstp        qword ptr [esp]
 0042CD18    wait
>0042CD19    jmp         0042D03C
 0042CD1E    fld         dword ptr [ebx+8]
 0042CD21    fstp        qword ptr [esp]
 0042CD24    wait
>0042CD25    jmp         0042D03C
 0042CD2A    mov         eax,dword ptr [ebx+8]
 0042CD2D    mov         dword ptr [esp],eax
 0042CD30    mov         eax,dword ptr [ebx+0C]
 0042CD33    mov         dword ptr [esp+4],eax
>0042CD37    jmp         0042D03C
 0042CD3C    fild        qword ptr [ebx+8]
 0042CD3F    fdiv        dword ptr ds:[42D044]
 0042CD45    fstp        qword ptr [esp]
 0042CD48    wait
>0042CD49    jmp         0042D03C
 0042CD4E    mov         eax,dword ptr [ebx+8]
 0042CD51    mov         dword ptr [esp],eax
 0042CD54    mov         eax,dword ptr [ebx+0C]
 0042CD57    mov         dword ptr [esp+4],eax
>0042CD5B    jmp         0042D03C
 0042CD60    mov         eax,ebx
 0042CD62    call        VarToDoubleAsString
 0042CD67    fstp        qword ptr [esp]
 0042CD6A    wait
>0042CD6B    jmp         0042D03C
 0042CD70    movsx       eax,word ptr [ebx+8]
 0042CD74    mov         dword ptr [esp+8],eax
 0042CD78    fild        dword ptr [esp+8]
 0042CD7C    fstp        qword ptr [esp]
 0042CD7F    wait
>0042CD80    jmp         0042D03C
 0042CD85    movsx       eax,byte ptr [ebx+8]
 0042CD89    mov         dword ptr [esp+8],eax
 0042CD8D    fild        dword ptr [esp+8]
 0042CD91    fstp        qword ptr [esp]
 0042CD94    wait
>0042CD95    jmp         0042D03C
 0042CD9A    movzx       eax,byte ptr [ebx+8]
 0042CD9E    mov         dword ptr [esp+8],eax
 0042CDA2    fild        dword ptr [esp+8]
 0042CDA6    fstp        qword ptr [esp]
 0042CDA9    wait
>0042CDAA    jmp         0042D03C
 0042CDAF    movzx       eax,word ptr [ebx+8]
 0042CDB3    mov         dword ptr [esp+8],eax
 0042CDB7    fild        dword ptr [esp+8]
 0042CDBB    fstp        qword ptr [esp]
 0042CDBE    wait
>0042CDBF    jmp         0042D03C
 0042CDC4    mov         eax,dword ptr [ebx+8]
 0042CDC7    mov         dword ptr [esp+0C],eax
 0042CDCB    xor         eax,eax
 0042CDCD    mov         dword ptr [esp+10],eax
 0042CDD1    fild        qword ptr [esp+0C]
 0042CDD5    fstp        qword ptr [esp]
 0042CDD8    wait
>0042CDD9    jmp         0042D03C
 0042CDDE    fild        qword ptr [ebx+8]
 0042CDE1    fstp        qword ptr [esp]
 0042CDE4    wait
>0042CDE5    jmp         0042D03C
 0042CDEA    mov         eax,dword ptr [ebx+8]
 0042CDED    mov         edx,dword ptr [ebx+0C]
 0042CDF0    mov         dword ptr [esp+0C],eax
 0042CDF4    sub         edx,80000000
 0042CDFA    mov         dword ptr [esp+10],edx
 0042CDFE    fild        qword ptr [esp+0C]
 0042CE02    fadd        qword ptr ds:[42D048]
 0042CE08    fstp        qword ptr [esp]
 0042CE0B    wait
>0042CE0C    jmp         0042D03C
 0042CE11    mov         eax,dword ptr [ebx+8]
 0042CE14    call        @VarToDouble
 0042CE19    fstp        qword ptr [esp]
 0042CE1C    wait
>0042CE1D    jmp         0042D03C
 0042CE22    mov         eax,ebx
 0042CE24    call        VarToDoubleViaOS
 0042CE29    fstp        qword ptr [esp]
 0042CE2C    wait
>0042CE2D    jmp         0042D03C
 0042CE32    mov         edx,eax
 0042CE34    sub         dx,100
>0042CE39    je          0042CE47
 0042CE3B    dec         dx
>0042CE3E    je          0042CE67
 0042CE40    dec         dx
>0042CE43    je          0042CE57
>0042CE45    jmp         0042CE77
 0042CE47    mov         eax,ebx
 0042CE49    call        VarToDoubleAsString
 0042CE4E    fstp        qword ptr [esp]
 0042CE51    wait
>0042CE52    jmp         0042D03C
 0042CE57    mov         eax,ebx
 0042CE59    call        VarToDoubleAsString
 0042CE5E    fstp        qword ptr [esp]
 0042CE61    wait
>0042CE62    jmp         0042D03C
 0042CE67    mov         eax,ebx
 0042CE69    call        VarToDoubleAny
 0042CE6E    fstp        qword ptr [esp]
 0042CE71    wait
>0042CE72    jmp         0042D03C
 0042CE77    test        ah,40
>0042CE7A    je          0042D024
 0042CE80    movzx       eax,ax
 0042CE83    and         eax,0FFFFBFFF
 0042CE88    cmp         eax,15
>0042CE8B    ja          0042D017
 0042CE91    jmp         dword ptr [eax*4+42CE98]
 0042CE91    dd          0042D017
 0042CE91    dd          0042D017
 0042CE91    dd          0042CEF0
 0042CE91    dd          0042CEFE
 0042CE91    dd          0042CF0C
 0042CE91    dd          0042CF1A
 0042CE91    dd          0042CF2E
 0042CE91    dd          0042CF42
 0042CE91    dd          0042CF56
 0042CE91    dd          0042D017
 0042CE91    dd          0042D017
 0042CE91    dd          0042CF66
 0042CE91    dd          0042D009
 0042CE91    dd          0042D017
 0042CE91    dd          0042D017
 0042CE91    dd          0042D017
 0042CE91    dd          0042CF7D
 0042CE91    dd          0042CF94
 0042CE91    dd          0042CFAB
 0042CE91    dd          0042CFBF
 0042CE91    dd          0042CFD8
 0042CE91    dd          0042CFE3
 0042CEF0    mov         eax,dword ptr [ebx+8]
 0042CEF3    fild        word ptr [eax]
 0042CEF5    fstp        qword ptr [esp]
 0042CEF8    wait
>0042CEF9    jmp         0042D03C
 0042CEFE    mov         eax,dword ptr [ebx+8]
 0042CF01    fild        dword ptr [eax]
 0042CF03    fstp        qword ptr [esp]
 0042CF06    wait
>0042CF07    jmp         0042D03C
 0042CF0C    mov         eax,dword ptr [ebx+8]
 0042CF0F    fld         dword ptr [eax]
 0042CF11    fstp        qword ptr [esp]
 0042CF14    wait
>0042CF15    jmp         0042D03C
 0042CF1A    mov         eax,dword ptr [ebx+8]
 0042CF1D    mov         edx,dword ptr [eax]
 0042CF1F    mov         dword ptr [esp],edx
 0042CF22    mov         edx,dword ptr [eax+4]
 0042CF25    mov         dword ptr [esp+4],edx
>0042CF29    jmp         0042D03C
 0042CF2E    mov         eax,dword ptr [ebx+8]
 0042CF31    fild        qword ptr [eax]
 0042CF33    fdiv        dword ptr ds:[42D044]
 0042CF39    fstp        qword ptr [esp]
 0042CF3C    wait
>0042CF3D    jmp         0042D03C
 0042CF42    mov         eax,dword ptr [ebx+8]
 0042CF45    mov         edx,dword ptr [eax]
 0042CF47    mov         dword ptr [esp],edx
 0042CF4A    mov         edx,dword ptr [eax+4]
 0042CF4D    mov         dword ptr [esp+4],edx
>0042CF51    jmp         0042D03C
 0042CF56    mov         eax,ebx
 0042CF58    call        VarToDoubleAsString
 0042CF5D    fstp        qword ptr [esp]
 0042CF60    wait
>0042CF61    jmp         0042D03C
 0042CF66    mov         eax,dword ptr [ebx+8]
 0042CF69    movsx       eax,word ptr [eax]
 0042CF6C    mov         dword ptr [esp+8],eax
 0042CF70    fild        dword ptr [esp+8]
 0042CF74    fstp        qword ptr [esp]
 0042CF77    wait
>0042CF78    jmp         0042D03C
 0042CF7D    mov         eax,dword ptr [ebx+8]
 0042CF80    movsx       eax,byte ptr [eax]
 0042CF83    mov         dword ptr [esp+8],eax
 0042CF87    fild        dword ptr [esp+8]
 0042CF8B    fstp        qword ptr [esp]
 0042CF8E    wait
>0042CF8F    jmp         0042D03C
 0042CF94    mov         eax,dword ptr [ebx+8]
 0042CF97    movzx       eax,byte ptr [eax]
 0042CF9A    mov         dword ptr [esp+8],eax
 0042CF9E    fild        dword ptr [esp+8]
 0042CFA2    fstp        qword ptr [esp]
 0042CFA5    wait
>0042CFA6    jmp         0042D03C
 0042CFAB    mov         eax,dword ptr [ebx+8]
 0042CFAE    movzx       eax,word ptr [eax]
 0042CFB1    mov         dword ptr [esp+8],eax
 0042CFB5    fild        dword ptr [esp+8]
 0042CFB9    fstp        qword ptr [esp]
 0042CFBC    wait
>0042CFBD    jmp         0042D03C
 0042CFBF    mov         eax,dword ptr [ebx+8]
 0042CFC2    mov         eax,dword ptr [eax]
 0042CFC4    mov         dword ptr [esp+0C],eax
 0042CFC8    xor         eax,eax
 0042CFCA    mov         dword ptr [esp+10],eax
 0042CFCE    fild        qword ptr [esp+0C]
 0042CFD2    fstp        qword ptr [esp]
 0042CFD5    wait
>0042CFD6    jmp         0042D03C
 0042CFD8    mov         eax,dword ptr [ebx+8]
 0042CFDB    fild        qword ptr [eax]
 0042CFDD    fstp        qword ptr [esp]
 0042CFE0    wait
>0042CFE1    jmp         0042D03C
 0042CFE3    mov         eax,dword ptr [ebx+8]
 0042CFE6    mov         edx,dword ptr [eax+4]
 0042CFE9    mov         eax,dword ptr [eax]
 0042CFEB    mov         dword ptr [esp+0C],eax
 0042CFEF    sub         edx,80000000
 0042CFF5    mov         dword ptr [esp+10],edx
 0042CFF9    fild        qword ptr [esp+0C]
 0042CFFD    fadd        qword ptr ds:[42D048]
 0042D003    fstp        qword ptr [esp]
 0042D006    wait
>0042D007    jmp         0042D03C
 0042D009    mov         eax,dword ptr [ebx+8]
 0042D00C    call        @VarToDouble
 0042D011    fstp        qword ptr [esp]
 0042D014    wait
>0042D015    jmp         0042D03C
 0042D017    mov         eax,ebx
 0042D019    call        VarToDoubleViaOS
 0042D01E    fstp        qword ptr [esp]
 0042D021    wait
>0042D022    jmp         0042D03C
 0042D024    mov         edx,esp
 0042D026    mov         eax,ebx
 0042D028    call        VarToDoubleCustom
 0042D02D    test        al,al
>0042D02F    jne         0042D03C
 0042D031    mov         eax,ebx
 0042D033    call        VarToDoubleViaOS
 0042D038    fstp        qword ptr [esp]
 0042D03B    wait
 0042D03C    fld         qword ptr [esp]
 0042D03F    add         esp,14
 0042D042    pop         ebx
 0042D043    ret
*}
end;

//0042D050
function @VarToReal(const V:TVarData):Extended;
begin
{*
 0042D050    push        ebx
 0042D051    add         esp,0FFFFFFF4
 0042D054    mov         ebx,eax
 0042D056    mov         eax,ebx
 0042D058    call        @VarToDouble
 0042D05D    fstp        tbyte ptr [esp]
 0042D060    wait
 0042D061    fld         tbyte ptr [esp]
 0042D064    add         esp,0C
 0042D067    pop         ebx
 0042D068    ret
*}
end;

//0042D06C
function @VarToSingle(const V:TVarData):Single;
begin
{*
 0042D06C    push        ebp
 0042D06D    mov         ebp,esp
 0042D06F    add         esp,0FFFFFFEC
 0042D072    push        ebx
 0042D073    push        esi
 0042D074    push        edi
 0042D075    mov         dword ptr [ebp-4],eax
 0042D078    mov         eax,dword ptr [ebp-4]
 0042D07B    movzx       eax,word ptr [eax]
 0042D07E    cmp         eax,15
>0042D081    ja          0042D1DB
 0042D087    jmp         dword ptr [eax*4+42D08E]
 0042D087    dd          0042D0E6
 0042D087    dd          0042D0F0
 0042D087    dd          0042D110
 0042D087    dd          0042D11F
 0042D087    dd          0042D12E
 0042D087    dd          0042D1DB
 0042D087    dd          0042D1DB
 0042D087    dd          0042D1DB
 0042D087    dd          0042D1DB
 0042D087    dd          0042D1DB
 0042D087    dd          0042D1DB
 0042D087    dd          0042D13C
 0042D087    dd          0042D1DB
 0042D087    dd          0042D1DB
 0042D087    dd          0042D1DB
 0042D087    dd          0042D1DB
 0042D087    dd          0042D152
 0042D087    dd          0042D168
 0042D087    dd          0042D17E
 0042D087    dd          0042D194
 0042D087    dd          0042D1CF
 0042D087    dd          0042D1AB
 0042D0E6    xor         eax,eax
 0042D0E8    mov         dword ptr [ebp-8],eax
>0042D0EB    jmp         0042D21D
 0042D0F0    cmp         byte ptr ds:[79F68E],0
>0042D0F7    je          0042D106
 0042D0F9    mov         dx,4
 0042D0FD    mov         ax,1
 0042D101    call        VarCastError
 0042D106    xor         eax,eax
 0042D108    mov         dword ptr [ebp-8],eax
>0042D10B    jmp         0042D21D
 0042D110    mov         eax,dword ptr [ebp-4]
 0042D113    fild        word ptr [eax+8]
 0042D116    fstp        dword ptr [ebp-8]
 0042D119    wait
>0042D11A    jmp         0042D21D
 0042D11F    mov         eax,dword ptr [ebp-4]
 0042D122    fild        dword ptr [eax+8]
 0042D125    fstp        dword ptr [ebp-8]
 0042D128    wait
>0042D129    jmp         0042D21D
 0042D12E    mov         eax,dword ptr [ebp-4]
 0042D131    mov         eax,dword ptr [eax+8]
 0042D134    mov         dword ptr [ebp-8],eax
>0042D137    jmp         0042D21D
 0042D13C    mov         eax,dword ptr [ebp-4]
 0042D13F    movsx       eax,word ptr [eax+8]
 0042D143    mov         dword ptr [ebp-0C],eax
 0042D146    fild        dword ptr [ebp-0C]
 0042D149    fstp        dword ptr [ebp-8]
 0042D14C    wait
>0042D14D    jmp         0042D21D
 0042D152    mov         eax,dword ptr [ebp-4]
 0042D155    movsx       eax,byte ptr [eax+8]
 0042D159    mov         dword ptr [ebp-0C],eax
 0042D15C    fild        dword ptr [ebp-0C]
 0042D15F    fstp        dword ptr [ebp-8]
 0042D162    wait
>0042D163    jmp         0042D21D
 0042D168    mov         eax,dword ptr [ebp-4]
 0042D16B    movzx       eax,byte ptr [eax+8]
 0042D16F    mov         dword ptr [ebp-0C],eax
 0042D172    fild        dword ptr [ebp-0C]
 0042D175    fstp        dword ptr [ebp-8]
 0042D178    wait
>0042D179    jmp         0042D21D
 0042D17E    mov         eax,dword ptr [ebp-4]
 0042D181    movzx       eax,word ptr [eax+8]
 0042D185    mov         dword ptr [ebp-0C],eax
 0042D188    fild        dword ptr [ebp-0C]
 0042D18B    fstp        dword ptr [ebp-8]
 0042D18E    wait
>0042D18F    jmp         0042D21D
 0042D194    mov         eax,dword ptr [ebp-4]
 0042D197    mov         eax,dword ptr [eax+8]
 0042D19A    mov         dword ptr [ebp-14],eax
 0042D19D    xor         eax,eax
 0042D19F    mov         dword ptr [ebp-10],eax
 0042D1A2    fild        qword ptr [ebp-14]
 0042D1A5    fstp        dword ptr [ebp-8]
 0042D1A8    wait
>0042D1A9    jmp         0042D21D
 0042D1AB    mov         eax,dword ptr [ebp-4]
 0042D1AE    mov         edx,dword ptr [eax+0C]
 0042D1B1    mov         eax,dword ptr [eax+8]
 0042D1B4    mov         dword ptr [ebp-14],eax
 0042D1B7    sub         edx,80000000
 0042D1BD    mov         dword ptr [ebp-10],edx
 0042D1C0    fild        qword ptr [ebp-14]
 0042D1C3    fadd        qword ptr ds:[42D228]
 0042D1C9    fstp        dword ptr [ebp-8]
 0042D1CC    wait
>0042D1CD    jmp         0042D21D
 0042D1CF    mov         eax,dword ptr [ebp-4]
 0042D1D2    fild        qword ptr [eax+8]
 0042D1D5    fstp        dword ptr [ebp-8]
 0042D1D8    wait
>0042D1D9    jmp         0042D21D
 0042D1DB    xor         eax,eax
 0042D1DD    push        ebp
 0042D1DE    push        42D1FF
 0042D1E3    push        dword ptr fs:[eax]
 0042D1E6    mov         dword ptr fs:[eax],esp
 0042D1E9    mov         eax,dword ptr [ebp-4]
 0042D1EC    call        @VarToDouble
 0042D1F1    fstp        dword ptr [ebp-8]
 0042D1F4    wait
 0042D1F5    xor         eax,eax
 0042D1F7    pop         edx
 0042D1F8    pop         ecx
 0042D1F9    pop         ecx
 0042D1FA    mov         dword ptr fs:[eax],edx
>0042D1FD    jmp         0042D21D
>0042D1FF    jmp         @HandleAnyException
 0042D204    mov         eax,dword ptr [ebp-4]
 0042D207    movzx       eax,word ptr [eax]
 0042D20A    mov         dx,4
 0042D20E    call        HandleConversionException
 0042D213    xor         eax,eax
 0042D215    mov         dword ptr [ebp-8],eax
 0042D218    call        @DoneExcept
 0042D21D    fld         dword ptr [ebp-8]
 0042D220    pop         edi
 0042D221    pop         esi
 0042D222    pop         ebx
 0042D223    mov         esp,ebp
 0042D225    pop         ebp
 0042D226    ret
*}
end;

//0042D230
{*function sub_0042D230(?:?):?;
begin
 0042D230    push        ebp
 0042D231    mov         ebp,esp
 0042D233    add         esp,0FFFFFFE0
 0042D236    push        ebx
 0042D237    xor         edx,edx
 0042D239    mov         dword ptr [ebp-20],edx
 0042D23C    mov         dword ptr [ebp-1C],edx
 0042D23F    mov         dword ptr [ebp-4],edx
 0042D242    mov         ebx,eax
 0042D244    xor         eax,eax
 0042D246    push        ebp
 0042D247    push        42D31D
 0042D24C    push        dword ptr fs:[eax]
 0042D24F    mov         dword ptr fs:[eax],esp
 0042D252    mov         edx,ebx
 0042D254    lea         eax,[ebp-4]
 0042D257    call        @VarToWStr
 0042D25C    lea         eax,[ebp-10]
 0042D25F    push        eax
 0042D260    push        0
 0042D262    push        400
 0042D267    mov         eax,dword ptr [ebp-4]
 0042D26A    call        @WStrToPWChar
 0042D26F    push        eax
 0042D270    mov         eax,[007C44A8];^gvar_007C9F2C
 0042D275    mov         eax,dword ptr [eax]
 0042D277    call        eax
 0042D279    mov         edx,eax
 0042D27B    sub         edx,80020005
>0042D281    je          0042D28D
 0042D283    sub         edx,7FFDFFFB
>0042D289    jne         0042D2EE
>0042D28B    jmp         0042D2FA
 0042D28D    lea         eax,[ebp-1C]
 0042D290    mov         edx,dword ptr [ebp-4]
 0042D293    call        @UStrFromWStr
 0042D298    mov         eax,dword ptr [ebp-1C]
 0042D29B    mov         ecx,dword ptr ds:[7C4B88];^gvar_007C7CC8:Pointer
 0042D2A1    lea         edx,[ebp-10]
 0042D2A4    call        0042299C
 0042D2A9    test        al,al
>0042D2AB    jne         0042D2FA
 0042D2AD    lea         eax,[ebp-20]
 0042D2B0    mov         edx,dword ptr [ebp-4]
 0042D2B3    call        @UStrFromWStr
 0042D2B8    mov         eax,dword ptr [ebp-20]
 0042D2BB    mov         ecx,dword ptr ds:[7C4B88];^gvar_007C7CC8:Pointer
 0042D2C1    lea         edx,[ebp-18]
 0042D2C4    call        00420BD8
 0042D2C9    test        al,al
>0042D2CB    je          0042D2DB
 0042D2CD    mov         eax,dword ptr [ebp-18]
 0042D2D0    mov         dword ptr [ebp-10],eax
 0042D2D3    mov         eax,dword ptr [ebp-14]
 0042D2D6    mov         dword ptr [ebp-0C],eax
>0042D2D9    jmp         0042D2FA
 0042D2DB    movzx       edx,word ptr [ebx]
 0042D2DE    mov         cx,7
 0042D2E2    mov         eax,80020005
 0042D2E7    call        VarResultCheck
>0042D2EC    jmp         0042D2FA
 0042D2EE    movzx       edx,word ptr [ebx]
 0042D2F1    mov         cx,7
 0042D2F5    call        VarResultCheck
 0042D2FA    xor         eax,eax
 0042D2FC    pop         edx
 0042D2FD    pop         ecx
 0042D2FE    pop         ecx
 0042D2FF    mov         dword ptr fs:[eax],edx
 0042D302    push        42D324
 0042D307    lea         eax,[ebp-20]
 0042D30A    mov         edx,2
 0042D30F    call        @UStrArrayClr
 0042D314    lea         eax,[ebp-4]
 0042D317    call        @WStrClr
 0042D31C    ret
>0042D31D    jmp         @HandleFinally
>0042D322    jmp         0042D307
 0042D324    fld         qword ptr [ebp-10]
 0042D327    pop         ebx
 0042D328    mov         esp,ebp
 0042D32A    pop         ebp
 0042D32B    ret
end;*}

//0042D32C
function VarToDateAsDouble(const V:TVarData; const Value:Double):TDateTime;
begin
{*
 0042D32C    push        ebp
 0042D32D    mov         ebp,esp
 0042D32F    add         esp,0FFFFFFE8
 0042D332    push        ebx
 0042D333    mov         ebx,eax
 0042D335    lea         eax,[ebp-18]
 0042D338    push        eax
 0042D339    call        oleaut32.VariantInit
 0042D33E    mov         word ptr [ebp-18],5
 0042D344    mov         eax,dword ptr [ebp+8]
 0042D347    mov         dword ptr [ebp-10],eax
 0042D34A    mov         eax,dword ptr [ebp+0C]
 0042D34D    mov         dword ptr [ebp-0C],eax
 0042D350    push        7
 0042D352    push        0
 0042D354    push        400
 0042D359    lea         eax,[ebp-18]
 0042D35C    push        eax
 0042D35D    lea         eax,[ebp-18]
 0042D360    push        eax
 0042D361    mov         eax,[007C4C30];^gvar_007C9EEC
 0042D366    mov         eax,dword ptr [eax]
 0042D368    call        eax
 0042D36A    movzx       edx,word ptr [ebx]
 0042D36D    mov         cx,7
 0042D371    call        VarResultCheck
 0042D376    mov         eax,dword ptr [ebp-10]
 0042D379    mov         dword ptr [ebp-8],eax
 0042D37C    mov         eax,dword ptr [ebp-0C]
 0042D37F    mov         dword ptr [ebp-4],eax
 0042D382    fld         qword ptr [ebp-8]
 0042D385    pop         ebx
 0042D386    mov         esp,ebp
 0042D388    pop         ebp
 0042D389    ret         8
*}
end;

//0042D38C
function VarToDateViaOS(const V:TVarData):TDateTime;
begin
{*
 0042D38C    push        ebx
 0042D38D    add         esp,0FFFFFFE8
 0042D390    mov         ebx,eax
 0042D392    lea         eax,[esp+8]
 0042D396    push        eax
 0042D397    call        oleaut32.VariantInit
 0042D39C    push        7
 0042D39E    push        0
 0042D3A0    push        400
 0042D3A5    push        ebx
 0042D3A6    lea         eax,[esp+18]
 0042D3AA    push        eax
 0042D3AB    mov         eax,[007C4C30];^gvar_007C9EEC
 0042D3B0    mov         eax,dword ptr [eax]
 0042D3B2    call        eax
 0042D3B4    movzx       edx,word ptr [ebx]
 0042D3B7    mov         cx,7
 0042D3BB    call        VarResultCheck
 0042D3C0    mov         eax,dword ptr [esp+10]
 0042D3C4    mov         dword ptr [esp],eax
 0042D3C7    mov         eax,dword ptr [esp+14]
 0042D3CB    mov         dword ptr [esp+4],eax
 0042D3CF    fld         qword ptr [esp]
 0042D3D2    add         esp,18
 0042D3D5    pop         ebx
 0042D3D6    ret
*}
end;

//0042D3D8
function VarToDateAny(const V:TVarData):TDateTime;
begin
{*
 0042D3D8    push        ebp
 0042D3D9    mov         ebp,esp
 0042D3DB    add         esp,0FFFFFFE8
 0042D3DE    push        ebx
 0042D3DF    mov         ebx,eax
 0042D3E1    lea         eax,[ebp-18]
 0042D3E4    push        eax
 0042D3E5    call        oleaut32.VariantInit
 0042D3EA    xor         eax,eax
 0042D3EC    push        ebp
 0042D3ED    push        42D42D
 0042D3F2    push        dword ptr fs:[eax]
 0042D3F5    mov         dword ptr fs:[eax],esp
 0042D3F8    mov         edx,ebx
 0042D3FA    lea         eax,[ebp-18]
 0042D3FD    call        @VarCopy
 0042D402    lea         eax,[ebp-18]
 0042D405    call        dword ptr ds:[7C9F50]
 0042D40B    lea         eax,[ebp-18]
 0042D40E    call        @VarToDate
 0042D413    fstp        qword ptr [ebp-8]
 0042D416    wait
 0042D417    xor         eax,eax
 0042D419    pop         edx
 0042D41A    pop         ecx
 0042D41B    pop         ecx
 0042D41C    mov         dword ptr fs:[eax],edx
 0042D41F    push        42D434
 0042D424    lea         eax,[ebp-18]
 0042D427    call        @VarClear
 0042D42C    ret
>0042D42D    jmp         @HandleFinally
>0042D432    jmp         0042D424
 0042D434    fld         qword ptr [ebp-8]
 0042D437    pop         ebx
 0042D438    mov         esp,ebp
 0042D43A    pop         ebp
 0042D43B    ret
*}
end;

//0042D43C
function VarToDateCustom(const V:TVarData; var AValue:TDateTime):Boolean;
begin
{*
 0042D43C    push        ebx
 0042D43D    push        esi
 0042D43E    push        edi
 0042D43F    add         esp,0FFFFFFEC
 0042D442    mov         edi,edx
 0042D444    mov         esi,eax
 0042D446    mov         edx,esp
 0042D448    movzx       eax,word ptr [esi]
 0042D44B    call        FindCustomVariantType
 0042D450    mov         ebx,eax
 0042D452    test        bl,bl
>0042D454    je          0042D47E
 0042D456    lea         eax,[esp+4]
 0042D45A    push        eax
 0042D45B    call        oleaut32.VariantInit
 0042D460    push        7
 0042D462    mov         ecx,esi
 0042D464    lea         edx,[esp+8]
 0042D468    mov         eax,dword ptr [esp+4]
 0042D46C    mov         esi,dword ptr [eax]
 0042D46E    call        dword ptr [esi+1C]
 0042D471    mov         eax,dword ptr [esp+0C]
 0042D475    mov         dword ptr [edi],eax
 0042D477    mov         eax,dword ptr [esp+10]
 0042D47B    mov         dword ptr [edi+4],eax
 0042D47E    mov         eax,ebx
 0042D480    add         esp,14
 0042D483    pop         edi
 0042D484    pop         esi
 0042D485    pop         ebx
 0042D486    ret
*}
end;

//0042D488
function @VarToDate(const V:TVarData):TDateTime;
begin
{*
 0042D488    push        ebx
 0042D489    add         esp,0FFFFFFE4
 0042D48C    mov         ebx,eax
 0042D48E    movzx       eax,word ptr [ebx]
 0042D491    movzx       edx,ax
 0042D494    cmp         edx,15
>0042D497    ja          0042D662
 0042D49D    jmp         dword ptr [edx*4+42D4A4]
 0042D49D    dd          0042D4FC
 0042D49D    dd          0042D50A
 0042D49D    dd          0042D52E
 0042D49D    dd          0042D53A
 0042D49D    dd          0042D546
 0042D49D    dd          0042D546
 0042D49D    dd          0042D546
 0042D49D    dd          0042D556
 0042D49D    dd          0042D568
 0042D49D    dd          0042D652
 0042D49D    dd          0042D662
 0042D49D    dd          0042D578
 0042D49D    dd          0042D641
 0042D49D    dd          0042D652
 0042D49D    dd          0042D662
 0042D49D    dd          0042D662
 0042D49D    dd          0042D58D
 0042D49D    dd          0042D5A2
 0042D49D    dd          0042D5B7
 0042D49D    dd          0042D5CC
 0042D49D    dd          0042D5E6
 0042D49D    dd          0042D606
 0042D4FC    xor         eax,eax
 0042D4FE    mov         dword ptr [esp],eax
 0042D501    mov         dword ptr [esp+4],eax
>0042D505    jmp         0042D874
 0042D50A    cmp         byte ptr ds:[79F68E],0
>0042D511    je          0042D520
 0042D513    mov         dx,7
 0042D517    mov         ax,1
 0042D51B    call        VarCastError
 0042D520    xor         eax,eax
 0042D522    mov         dword ptr [esp],eax
 0042D525    mov         dword ptr [esp+4],eax
>0042D529    jmp         0042D874
 0042D52E    fild        word ptr [ebx+8]
 0042D531    fstp        qword ptr [esp]
 0042D534    wait
>0042D535    jmp         0042D874
 0042D53A    fild        dword ptr [ebx+8]
 0042D53D    fstp        qword ptr [esp]
 0042D540    wait
>0042D541    jmp         0042D874
 0042D546    mov         eax,ebx
 0042D548    call        VarToDateViaOS
 0042D54D    fstp        qword ptr [esp]
 0042D550    wait
>0042D551    jmp         0042D874
 0042D556    mov         eax,dword ptr [ebx+8]
 0042D559    mov         dword ptr [esp],eax
 0042D55C    mov         eax,dword ptr [ebx+0C]
 0042D55F    mov         dword ptr [esp+4],eax
>0042D563    jmp         0042D874
 0042D568    mov         eax,ebx
 0042D56A    call        0042D230
 0042D56F    fstp        qword ptr [esp]
 0042D572    wait
>0042D573    jmp         0042D874
 0042D578    movsx       eax,word ptr [ebx+8]
 0042D57C    mov         dword ptr [esp+8],eax
 0042D580    fild        dword ptr [esp+8]
 0042D584    fstp        qword ptr [esp]
 0042D587    wait
>0042D588    jmp         0042D874
 0042D58D    movsx       eax,byte ptr [ebx+8]
 0042D591    mov         dword ptr [esp+8],eax
 0042D595    fild        dword ptr [esp+8]
 0042D599    fstp        qword ptr [esp]
 0042D59C    wait
>0042D59D    jmp         0042D874
 0042D5A2    movzx       eax,byte ptr [ebx+8]
 0042D5A6    mov         dword ptr [esp+8],eax
 0042D5AA    fild        dword ptr [esp+8]
 0042D5AE    fstp        qword ptr [esp]
 0042D5B1    wait
>0042D5B2    jmp         0042D874
 0042D5B7    movzx       eax,word ptr [ebx+8]
 0042D5BB    mov         dword ptr [esp+8],eax
 0042D5BF    fild        dword ptr [esp+8]
 0042D5C3    fstp        qword ptr [esp]
 0042D5C6    wait
>0042D5C7    jmp         0042D874
 0042D5CC    mov         eax,dword ptr [ebx+8]
 0042D5CF    mov         dword ptr [esp+0C],eax
 0042D5D3    xor         eax,eax
 0042D5D5    mov         dword ptr [esp+10],eax
 0042D5D9    fild        qword ptr [esp+0C]
 0042D5DD    fstp        qword ptr [esp]
 0042D5E0    wait
>0042D5E1    jmp         0042D874
 0042D5E6    fild        qword ptr [ebx+8]
 0042D5E9    fstp        qword ptr [esp+0C]
 0042D5ED    wait
 0042D5EE    push        dword ptr [esp+10]
 0042D5F2    push        dword ptr [esp+10]
 0042D5F6    mov         eax,ebx
 0042D5F8    call        VarToDateAsDouble
 0042D5FD    fstp        qword ptr [esp]
 0042D600    wait
>0042D601    jmp         0042D874
 0042D606    mov         eax,dword ptr [ebx+8]
 0042D609    mov         edx,dword ptr [ebx+0C]
 0042D60C    mov         dword ptr [esp+0C],eax
 0042D610    sub         edx,80000000
 0042D616    mov         dword ptr [esp+10],edx
 0042D61A    fild        qword ptr [esp+0C]
 0042D61E    fadd        qword ptr ds:[42D87C]
 0042D624    fstp        qword ptr [esp+14]
 0042D628    wait
 0042D629    push        dword ptr [esp+18]
 0042D62D    push        dword ptr [esp+18]
 0042D631    mov         eax,ebx
 0042D633    call        VarToDateAsDouble
 0042D638    fstp        qword ptr [esp]
 0042D63B    wait
>0042D63C    jmp         0042D874
 0042D641    mov         eax,dword ptr [ebx+8]
 0042D644    call        @VarToDate
 0042D649    fstp        qword ptr [esp]
 0042D64C    wait
>0042D64D    jmp         0042D874
 0042D652    mov         eax,ebx
 0042D654    call        VarToDateViaOS
 0042D659    fstp        qword ptr [esp]
 0042D65C    wait
>0042D65D    jmp         0042D874
 0042D662    mov         edx,eax
 0042D664    sub         dx,100
>0042D669    je          0042D677
 0042D66B    dec         dx
>0042D66E    je          0042D697
 0042D670    dec         dx
>0042D673    je          0042D687
>0042D675    jmp         0042D6A7
 0042D677    mov         eax,ebx
 0042D679    call        0042D230
 0042D67E    fstp        qword ptr [esp]
 0042D681    wait
>0042D682    jmp         0042D874
 0042D687    mov         eax,ebx
 0042D689    call        0042D230
 0042D68E    fstp        qword ptr [esp]
 0042D691    wait
>0042D692    jmp         0042D874
 0042D697    mov         eax,ebx
 0042D699    call        VarToDateAny
 0042D69E    fstp        qword ptr [esp]
 0042D6A1    wait
>0042D6A2    jmp         0042D874
 0042D6A7    test        ah,40
>0042D6AA    je          0042D85C
 0042D6B0    movzx       eax,ax
 0042D6B3    and         eax,0FFFFBFFF
 0042D6B8    cmp         eax,15
>0042D6BB    ja          0042D84F
 0042D6C1    jmp         dword ptr [eax*4+42D6C8]
 0042D6C1    dd          0042D84F
 0042D6C1    dd          0042D84F
 0042D6C1    dd          0042D720
 0042D6C1    dd          0042D72E
 0042D6C1    dd          0042D73C
 0042D6C1    dd          0042D73C
 0042D6C1    dd          0042D73C
 0042D6C1    dd          0042D74C
 0042D6C1    dd          0042D760
 0042D6C1    dd          0042D84F
 0042D6C1    dd          0042D84F
 0042D6C1    dd          0042D770
 0042D6C1    dd          0042D841
 0042D6C1    dd          0042D84F
 0042D6C1    dd          0042D84F
 0042D6C1    dd          0042D84F
 0042D6C1    dd          0042D787
 0042D6C1    dd          0042D79E
 0042D6C1    dd          0042D7B5
 0042D6C1    dd          0042D7CC
 0042D6C1    dd          0042D7E8
 0042D6C1    dd          0042D807
 0042D720    mov         eax,dword ptr [ebx+8]
 0042D723    fild        word ptr [eax]
 0042D725    fstp        qword ptr [esp]
 0042D728    wait
>0042D729    jmp         0042D874
 0042D72E    mov         eax,dword ptr [ebx+8]
 0042D731    fild        dword ptr [eax]
 0042D733    fstp        qword ptr [esp]
 0042D736    wait
>0042D737    jmp         0042D874
 0042D73C    mov         eax,ebx
 0042D73E    call        VarToDateViaOS
 0042D743    fstp        qword ptr [esp]
 0042D746    wait
>0042D747    jmp         0042D874
 0042D74C    mov         eax,dword ptr [ebx+8]
 0042D74F    mov         edx,dword ptr [eax]
 0042D751    mov         dword ptr [esp],edx
 0042D754    mov         edx,dword ptr [eax+4]
 0042D757    mov         dword ptr [esp+4],edx
>0042D75B    jmp         0042D874
 0042D760    mov         eax,ebx
 0042D762    call        0042D230
 0042D767    fstp        qword ptr [esp]
 0042D76A    wait
>0042D76B    jmp         0042D874
 0042D770    mov         eax,dword ptr [ebx+8]
 0042D773    movsx       eax,word ptr [eax]
 0042D776    mov         dword ptr [esp+8],eax
 0042D77A    fild        dword ptr [esp+8]
 0042D77E    fstp        qword ptr [esp]
 0042D781    wait
>0042D782    jmp         0042D874
 0042D787    mov         eax,dword ptr [ebx+8]
 0042D78A    movsx       eax,byte ptr [eax]
 0042D78D    mov         dword ptr [esp+8],eax
 0042D791    fild        dword ptr [esp+8]
 0042D795    fstp        qword ptr [esp]
 0042D798    wait
>0042D799    jmp         0042D874
 0042D79E    mov         eax,dword ptr [ebx+8]
 0042D7A1    movzx       eax,byte ptr [eax]
 0042D7A4    mov         dword ptr [esp+8],eax
 0042D7A8    fild        dword ptr [esp+8]
 0042D7AC    fstp        qword ptr [esp]
 0042D7AF    wait
>0042D7B0    jmp         0042D874
 0042D7B5    mov         eax,dword ptr [ebx+8]
 0042D7B8    movzx       eax,word ptr [eax]
 0042D7BB    mov         dword ptr [esp+8],eax
 0042D7BF    fild        dword ptr [esp+8]
 0042D7C3    fstp        qword ptr [esp]
 0042D7C6    wait
>0042D7C7    jmp         0042D874
 0042D7CC    mov         eax,dword ptr [ebx+8]
 0042D7CF    mov         eax,dword ptr [eax]
 0042D7D1    mov         dword ptr [esp+0C],eax
 0042D7D5    xor         eax,eax
 0042D7D7    mov         dword ptr [esp+10],eax
 0042D7DB    fild        qword ptr [esp+0C]
 0042D7DF    fstp        qword ptr [esp]
 0042D7E2    wait
>0042D7E3    jmp         0042D874
 0042D7E8    mov         eax,dword ptr [ebx+8]
 0042D7EB    fild        qword ptr [eax]
 0042D7ED    fstp        qword ptr [esp+0C]
 0042D7F1    wait
 0042D7F2    push        dword ptr [esp+10]
 0042D7F6    push        dword ptr [esp+10]
 0042D7FA    mov         eax,ebx
 0042D7FC    call        VarToDateAsDouble
 0042D801    fstp        qword ptr [esp]
 0042D804    wait
>0042D805    jmp         0042D874
 0042D807    mov         eax,dword ptr [ebx+8]
 0042D80A    mov         edx,dword ptr [eax+4]
 0042D80D    mov         eax,dword ptr [eax]
 0042D80F    mov         dword ptr [esp+0C],eax
 0042D813    sub         edx,80000000
 0042D819    mov         dword ptr [esp+10],edx
 0042D81D    fild        qword ptr [esp+0C]
 0042D821    fadd        qword ptr ds:[42D87C]
 0042D827    fstp        qword ptr [esp+14]
 0042D82B    wait
 0042D82C    push        dword ptr [esp+18]
 0042D830    push        dword ptr [esp+18]
 0042D834    mov         eax,ebx
 0042D836    call        VarToDateAsDouble
 0042D83B    fstp        qword ptr [esp]
 0042D83E    wait
>0042D83F    jmp         0042D874
 0042D841    mov         eax,dword ptr [ebx+8]
 0042D844    call        @VarToDate
 0042D849    fstp        qword ptr [esp]
 0042D84C    wait
>0042D84D    jmp         0042D874
 0042D84F    mov         eax,ebx
 0042D851    call        VarToDateViaOS
 0042D856    fstp        qword ptr [esp]
 0042D859    wait
>0042D85A    jmp         0042D874
 0042D85C    mov         edx,esp
 0042D85E    mov         eax,ebx
 0042D860    call        VarToDateCustom
 0042D865    test        al,al
>0042D867    jne         0042D874
 0042D869    mov         eax,ebx
 0042D86B    call        VarToDateViaOS
 0042D870    fstp        qword ptr [esp]
 0042D873    wait
 0042D874    fld         qword ptr [esp]
 0042D877    add         esp,1C
 0042D87A    pop         ebx
 0042D87B    ret
*}
end;

//0042D884
{*procedure sub_0042D884(?:?);
begin
 0042D884    push        ebp
 0042D885    mov         ebp,esp
 0042D887    add         esp,0FFFFFFEC
 0042D88A    push        ebx
 0042D88B    xor         edx,edx
 0042D88D    mov         dword ptr [ebp-14],edx
 0042D890    mov         dword ptr [ebp-4],edx
 0042D893    mov         ebx,eax
 0042D895    xor         eax,eax
 0042D897    push        ebp
 0042D898    push        42D93B
 0042D89D    push        dword ptr fs:[eax]
 0042D8A0    mov         dword ptr fs:[eax],esp
 0042D8A3    mov         edx,ebx
 0042D8A5    lea         eax,[ebp-4]
 0042D8A8    call        @VarToWStr
 0042D8AD    lea         eax,[ebp-10]
 0042D8B0    push        eax
 0042D8B1    push        0
 0042D8B3    push        400
 0042D8B8    mov         eax,dword ptr [ebp-4]
 0042D8BB    call        @WStrToPWChar
 0042D8C0    push        eax
 0042D8C1    mov         eax,[007C4D60];^gvar_007C9F30
 0042D8C6    mov         eax,dword ptr [eax]
 0042D8C8    call        eax
 0042D8CA    mov         edx,eax
 0042D8CC    sub         edx,80020005
>0042D8D2    je          0042D8DE
 0042D8D4    sub         edx,7FFDFFFB
>0042D8DA    jne         0042D911
>0042D8DC    jmp         0042D91D
 0042D8DE    lea         eax,[ebp-14]
 0042D8E1    mov         edx,dword ptr [ebp-4]
 0042D8E4    call        @UStrFromWStr
 0042D8E9    mov         eax,dword ptr [ebp-14]
 0042D8EC    mov         ecx,dword ptr ds:[7C4B88];^gvar_007C7CC8:Pointer
 0042D8F2    lea         edx,[ebp-10]
 0042D8F5    call        00420C98
 0042D8FA    test        al,al
>0042D8FC    jne         0042D91D
 0042D8FE    movzx       edx,word ptr [ebx]
 0042D901    mov         cx,6
 0042D905    mov         eax,80020005
 0042D90A    call        VarResultCheck
>0042D90F    jmp         0042D91D
 0042D911    movzx       edx,word ptr [ebx]
 0042D914    mov         cx,6
 0042D918    call        VarResultCheck
 0042D91D    xor         eax,eax
 0042D91F    pop         edx
 0042D920    pop         ecx
 0042D921    pop         ecx
 0042D922    mov         dword ptr fs:[eax],edx
 0042D925    push        42D942
 0042D92A    lea         eax,[ebp-14]
 0042D92D    call        @UStrClr
 0042D932    lea         eax,[ebp-4]
 0042D935    call        @WStrClr
 0042D93A    ret
>0042D93B    jmp         @HandleFinally
>0042D940    jmp         0042D92A
 0042D942    fild        qword ptr [ebp-10]
 0042D945    pop         ebx
 0042D946    mov         esp,ebp
 0042D948    pop         ebp
 0042D949    ret
end;*}

//0042D94C
function VarToCurrencyAsDouble(const V:TVarData; const Value:Double):Currency;
begin
{*
 0042D94C    push        ebp
 0042D94D    mov         ebp,esp
 0042D94F    add         esp,0FFFFFFE8
 0042D952    push        ebx
 0042D953    mov         ebx,eax
 0042D955    lea         eax,[ebp-18]
 0042D958    push        eax
 0042D959    call        oleaut32.VariantInit
 0042D95E    mov         word ptr [ebp-18],5
 0042D964    mov         eax,dword ptr [ebp+8]
 0042D967    mov         dword ptr [ebp-10],eax
 0042D96A    mov         eax,dword ptr [ebp+0C]
 0042D96D    mov         dword ptr [ebp-0C],eax
 0042D970    push        6
 0042D972    push        0
 0042D974    push        400
 0042D979    lea         eax,[ebp-18]
 0042D97C    push        eax
 0042D97D    lea         eax,[ebp-18]
 0042D980    push        eax
 0042D981    mov         eax,[007C4C30];^gvar_007C9EEC
 0042D986    mov         eax,dword ptr [eax]
 0042D988    call        eax
 0042D98A    movzx       edx,word ptr [ebx]
 0042D98D    mov         cx,6
 0042D991    call        VarResultCheck
 0042D996    mov         eax,dword ptr [ebp-10]
 0042D999    mov         dword ptr [ebp-8],eax
 0042D99C    mov         eax,dword ptr [ebp-0C]
 0042D99F    mov         dword ptr [ebp-4],eax
 0042D9A2    fild        qword ptr [ebp-8]
 0042D9A5    pop         ebx
 0042D9A6    mov         esp,ebp
 0042D9A8    pop         ebp
 0042D9A9    ret         8
*}
end;

//0042D9AC
function VarToCurrencyViaOS(const V:TVarData):Currency;
begin
{*
 0042D9AC    push        ebx
 0042D9AD    add         esp,0FFFFFFE8
 0042D9B0    mov         ebx,eax
 0042D9B2    lea         eax,[esp+8]
 0042D9B6    push        eax
 0042D9B7    call        oleaut32.VariantInit
 0042D9BC    push        6
 0042D9BE    push        0
 0042D9C0    push        400
 0042D9C5    push        ebx
 0042D9C6    lea         eax,[esp+18]
 0042D9CA    push        eax
 0042D9CB    mov         eax,[007C4C30];^gvar_007C9EEC
 0042D9D0    mov         eax,dword ptr [eax]
 0042D9D2    call        eax
 0042D9D4    movzx       edx,word ptr [ebx]
 0042D9D7    mov         cx,6
 0042D9DB    call        VarResultCheck
 0042D9E0    mov         eax,dword ptr [esp+10]
 0042D9E4    mov         dword ptr [esp],eax
 0042D9E7    mov         eax,dword ptr [esp+14]
 0042D9EB    mov         dword ptr [esp+4],eax
 0042D9EF    fild        qword ptr [esp]
 0042D9F2    add         esp,18
 0042D9F5    pop         ebx
 0042D9F6    ret
*}
end;

//0042D9F8
function VarToCurrencyAny(const V:TVarData):Currency;
begin
{*
 0042D9F8    push        ebp
 0042D9F9    mov         ebp,esp
 0042D9FB    add         esp,0FFFFFFE8
 0042D9FE    push        ebx
 0042D9FF    mov         ebx,eax
 0042DA01    lea         eax,[ebp-18]
 0042DA04    push        eax
 0042DA05    call        oleaut32.VariantInit
 0042DA0A    xor         eax,eax
 0042DA0C    push        ebp
 0042DA0D    push        42DA4D
 0042DA12    push        dword ptr fs:[eax]
 0042DA15    mov         dword ptr fs:[eax],esp
 0042DA18    mov         edx,ebx
 0042DA1A    lea         eax,[ebp-18]
 0042DA1D    call        @VarCopy
 0042DA22    lea         eax,[ebp-18]
 0042DA25    call        dword ptr ds:[7C9F50]
 0042DA2B    lea         eax,[ebp-18]
 0042DA2E    call        @VarToCurrency
 0042DA33    fistp       qword ptr [ebp-8]
 0042DA36    wait
 0042DA37    xor         eax,eax
 0042DA39    pop         edx
 0042DA3A    pop         ecx
 0042DA3B    pop         ecx
 0042DA3C    mov         dword ptr fs:[eax],edx
 0042DA3F    push        42DA54
 0042DA44    lea         eax,[ebp-18]
 0042DA47    call        @VarClear
 0042DA4C    ret
>0042DA4D    jmp         @HandleFinally
>0042DA52    jmp         0042DA44
 0042DA54    fild        qword ptr [ebp-8]
 0042DA57    pop         ebx
 0042DA58    mov         esp,ebp
 0042DA5A    pop         ebp
 0042DA5B    ret
*}
end;

//0042DA5C
function VarToCurrencyCustom(const V:TVarData; var AValue:Currency):Boolean;
begin
{*
 0042DA5C    push        ebx
 0042DA5D    push        esi
 0042DA5E    push        edi
 0042DA5F    add         esp,0FFFFFFEC
 0042DA62    mov         edi,edx
 0042DA64    mov         esi,eax
 0042DA66    mov         edx,esp
 0042DA68    movzx       eax,word ptr [esi]
 0042DA6B    call        FindCustomVariantType
 0042DA70    mov         ebx,eax
 0042DA72    test        bl,bl
>0042DA74    je          0042DA9E
 0042DA76    lea         eax,[esp+4]
 0042DA7A    push        eax
 0042DA7B    call        oleaut32.VariantInit
 0042DA80    push        6
 0042DA82    mov         ecx,esi
 0042DA84    lea         edx,[esp+8]
 0042DA88    mov         eax,dword ptr [esp+4]
 0042DA8C    mov         esi,dword ptr [eax]
 0042DA8E    call        dword ptr [esi+1C]
 0042DA91    mov         eax,dword ptr [esp+0C]
 0042DA95    mov         dword ptr [edi],eax
 0042DA97    mov         eax,dword ptr [esp+10]
 0042DA9B    mov         dword ptr [edi+4],eax
 0042DA9E    mov         eax,ebx
 0042DAA0    add         esp,14
 0042DAA3    pop         edi
 0042DAA4    pop         esi
 0042DAA5    pop         ebx
 0042DAA6    ret
*}
end;

//0042DAA8
function @VarToCurrency(const V:TVarData):Currency;
begin
{*
 0042DAA8    push        ebx
 0042DAA9    add         esp,0FFFFFFE4
 0042DAAC    mov         ebx,eax
 0042DAAE    movzx       eax,word ptr [ebx]
 0042DAB1    movzx       edx,ax
 0042DAB4    cmp         edx,15
>0042DAB7    ja          0042DCBC
 0042DABD    jmp         dword ptr [edx*4+42DAC4]
 0042DABD    dd          0042DB1C
 0042DABD    dd          0042DB2A
 0042DABD    dd          0042DB4E
 0042DABD    dd          0042DB60
 0042DABD    dd          0042DB72
 0042DABD    dd          0042DB72
 0042DABD    dd          0042DB82
 0042DABD    dd          0042DB94
 0042DABD    dd          0042DBA4
 0042DABD    dd          0042DCAC
 0042DABD    dd          0042DCBC
 0042DABD    dd          0042DBB4
 0042DABD    dd          0042DC9B
 0042DABD    dd          0042DCAC
 0042DABD    dd          0042DCBC
 0042DABD    dd          0042DCBC
 0042DABD    dd          0042DBCF
 0042DABD    dd          0042DBEA
 0042DABD    dd          0042DC05
 0042DABD    dd          0042DC20
 0042DABD    dd          0042DC40
 0042DABD    dd          0042DC60
 0042DB1C    xor         eax,eax
 0042DB1E    mov         dword ptr [esp],eax
 0042DB21    mov         dword ptr [esp+4],eax
>0042DB25    jmp         0042DF08
 0042DB2A    cmp         byte ptr ds:[79F68E],0
>0042DB31    je          0042DB40
 0042DB33    mov         dx,6
 0042DB37    mov         ax,1
 0042DB3B    call        VarCastError
 0042DB40    xor         eax,eax
 0042DB42    mov         dword ptr [esp],eax
 0042DB45    mov         dword ptr [esp+4],eax
>0042DB49    jmp         0042DF08
 0042DB4E    fild        word ptr [ebx+8]
 0042DB51    fmul        dword ptr ds:[42DF10]
 0042DB57    fistp       qword ptr [esp]
 0042DB5A    wait
>0042DB5B    jmp         0042DF08
 0042DB60    fild        dword ptr [ebx+8]
 0042DB63    fmul        dword ptr ds:[42DF10]
 0042DB69    fistp       qword ptr [esp]
 0042DB6C    wait
>0042DB6D    jmp         0042DF08
 0042DB72    mov         eax,ebx
 0042DB74    call        VarToCurrencyViaOS
 0042DB79    fistp       qword ptr [esp]
 0042DB7C    wait
>0042DB7D    jmp         0042DF08
 0042DB82    mov         eax,dword ptr [ebx+8]
 0042DB85    mov         dword ptr [esp],eax
 0042DB88    mov         eax,dword ptr [ebx+0C]
 0042DB8B    mov         dword ptr [esp+4],eax
>0042DB8F    jmp         0042DF08
 0042DB94    mov         eax,ebx
 0042DB96    call        VarToCurrencyViaOS
 0042DB9B    fistp       qword ptr [esp]
 0042DB9E    wait
>0042DB9F    jmp         0042DF08
 0042DBA4    mov         eax,ebx
 0042DBA6    call        0042D884
 0042DBAB    fistp       qword ptr [esp]
 0042DBAE    wait
>0042DBAF    jmp         0042DF08
 0042DBB4    movsx       eax,word ptr [ebx+8]
 0042DBB8    mov         dword ptr [esp+8],eax
 0042DBBC    fild        dword ptr [esp+8]
 0042DBC0    fmul        dword ptr ds:[42DF10]
 0042DBC6    fistp       qword ptr [esp]
 0042DBC9    wait
>0042DBCA    jmp         0042DF08
 0042DBCF    movsx       eax,byte ptr [ebx+8]
 0042DBD3    mov         dword ptr [esp+8],eax
 0042DBD7    fild        dword ptr [esp+8]
 0042DBDB    fmul        dword ptr ds:[42DF10]
 0042DBE1    fistp       qword ptr [esp]
 0042DBE4    wait
>0042DBE5    jmp         0042DF08
 0042DBEA    movzx       eax,byte ptr [ebx+8]
 0042DBEE    mov         dword ptr [esp+8],eax
 0042DBF2    fild        dword ptr [esp+8]
 0042DBF6    fmul        dword ptr ds:[42DF10]
 0042DBFC    fistp       qword ptr [esp]
 0042DBFF    wait
>0042DC00    jmp         0042DF08
 0042DC05    movzx       eax,word ptr [ebx+8]
 0042DC09    mov         dword ptr [esp+8],eax
 0042DC0D    fild        dword ptr [esp+8]
 0042DC11    fmul        dword ptr ds:[42DF10]
 0042DC17    fistp       qword ptr [esp]
 0042DC1A    wait
>0042DC1B    jmp         0042DF08
 0042DC20    mov         eax,dword ptr [ebx+8]
 0042DC23    mov         dword ptr [esp+0C],eax
 0042DC27    xor         eax,eax
 0042DC29    mov         dword ptr [esp+10],eax
 0042DC2D    fild        qword ptr [esp+0C]
 0042DC31    fmul        dword ptr ds:[42DF10]
 0042DC37    fistp       qword ptr [esp]
 0042DC3A    wait
>0042DC3B    jmp         0042DF08
 0042DC40    fild        qword ptr [ebx+8]
 0042DC43    fstp        qword ptr [esp+0C]
 0042DC47    wait
 0042DC48    push        dword ptr [esp+10]
 0042DC4C    push        dword ptr [esp+10]
 0042DC50    mov         eax,ebx
 0042DC52    call        VarToCurrencyAsDouble
 0042DC57    fistp       qword ptr [esp]
 0042DC5A    wait
>0042DC5B    jmp         0042DF08
 0042DC60    mov         eax,dword ptr [ebx+8]
 0042DC63    mov         edx,dword ptr [ebx+0C]
 0042DC66    mov         dword ptr [esp+0C],eax
 0042DC6A    sub         edx,80000000
 0042DC70    mov         dword ptr [esp+10],edx
 0042DC74    fild        qword ptr [esp+0C]
 0042DC78    fadd        qword ptr ds:[42DF14]
 0042DC7E    fstp        qword ptr [esp+14]
 0042DC82    wait
 0042DC83    push        dword ptr [esp+18]
 0042DC87    push        dword ptr [esp+18]
 0042DC8B    mov         eax,ebx
 0042DC8D    call        VarToCurrencyAsDouble
 0042DC92    fistp       qword ptr [esp]
 0042DC95    wait
>0042DC96    jmp         0042DF08
 0042DC9B    mov         eax,dword ptr [ebx+8]
 0042DC9E    call        @VarToCurrency
 0042DCA3    fistp       qword ptr [esp]
 0042DCA6    wait
>0042DCA7    jmp         0042DF08
 0042DCAC    mov         eax,ebx
 0042DCAE    call        VarToCurrencyViaOS
 0042DCB3    fistp       qword ptr [esp]
 0042DCB6    wait
>0042DCB7    jmp         0042DF08
 0042DCBC    mov         edx,eax
 0042DCBE    sub         dx,100
>0042DCC3    je          0042DCD1
 0042DCC5    dec         dx
>0042DCC8    je          0042DCF1
 0042DCCA    dec         dx
>0042DCCD    je          0042DCE1
>0042DCCF    jmp         0042DD01
 0042DCD1    mov         eax,ebx
 0042DCD3    call        0042D884
 0042DCD8    fistp       qword ptr [esp]
 0042DCDB    wait
>0042DCDC    jmp         0042DF08
 0042DCE1    mov         eax,ebx
 0042DCE3    call        0042D884
 0042DCE8    fistp       qword ptr [esp]
 0042DCEB    wait
>0042DCEC    jmp         0042DF08
 0042DCF1    mov         eax,ebx
 0042DCF3    call        VarToCurrencyAny
 0042DCF8    fistp       qword ptr [esp]
 0042DCFB    wait
>0042DCFC    jmp         0042DF08
 0042DD01    test        ah,40
>0042DD04    je          0042DEF0
 0042DD0A    movzx       eax,ax
 0042DD0D    and         eax,0FFFFBFFF
 0042DD12    cmp         eax,15
>0042DD15    ja          0042DEE3
 0042DD1B    jmp         dword ptr [eax*4+42DD22]
 0042DD1B    dd          0042DEE3
 0042DD1B    dd          0042DEE3
 0042DD1B    dd          0042DD7A
 0042DD1B    dd          0042DD8E
 0042DD1B    dd          0042DDA2
 0042DD1B    dd          0042DDA2
 0042DD1B    dd          0042DDB2
 0042DD1B    dd          0042DDC6
 0042DD1B    dd          0042DDD6
 0042DD1B    dd          0042DEE3
 0042DD1B    dd          0042DEE3
 0042DD1B    dd          0042DDE6
 0042DD1B    dd          0042DED5
 0042DD1B    dd          0042DEE3
 0042DD1B    dd          0042DEE3
 0042DD1B    dd          0042DEE3
 0042DD1B    dd          0042DE03
 0042DD1B    dd          0042DE20
 0042DD1B    dd          0042DE3D
 0042DD1B    dd          0042DE5A
 0042DD1B    dd          0042DE7C
 0042DD1B    dd          0042DE9B
 0042DD7A    mov         eax,dword ptr [ebx+8]
 0042DD7D    fild        word ptr [eax]
 0042DD7F    fmul        dword ptr ds:[42DF10]
 0042DD85    fistp       qword ptr [esp]
 0042DD88    wait
>0042DD89    jmp         0042DF08
 0042DD8E    mov         eax,dword ptr [ebx+8]
 0042DD91    fild        dword ptr [eax]
 0042DD93    fmul        dword ptr ds:[42DF10]
 0042DD99    fistp       qword ptr [esp]
 0042DD9C    wait
>0042DD9D    jmp         0042DF08
 0042DDA2    mov         eax,ebx
 0042DDA4    call        VarToCurrencyViaOS
 0042DDA9    fistp       qword ptr [esp]
 0042DDAC    wait
>0042DDAD    jmp         0042DF08
 0042DDB2    mov         eax,dword ptr [ebx+8]
 0042DDB5    mov         edx,dword ptr [eax]
 0042DDB7    mov         dword ptr [esp],edx
 0042DDBA    mov         edx,dword ptr [eax+4]
 0042DDBD    mov         dword ptr [esp+4],edx
>0042DDC1    jmp         0042DF08
 0042DDC6    mov         eax,ebx
 0042DDC8    call        VarToCurrencyViaOS
 0042DDCD    fistp       qword ptr [esp]
 0042DDD0    wait
>0042DDD1    jmp         0042DF08
 0042DDD6    mov         eax,ebx
 0042DDD8    call        0042D884
 0042DDDD    fistp       qword ptr [esp]
 0042DDE0    wait
>0042DDE1    jmp         0042DF08
 0042DDE6    mov         eax,dword ptr [ebx+8]
 0042DDE9    movsx       eax,word ptr [eax]
 0042DDEC    mov         dword ptr [esp+8],eax
 0042DDF0    fild        dword ptr [esp+8]
 0042DDF4    fmul        dword ptr ds:[42DF10]
 0042DDFA    fistp       qword ptr [esp]
 0042DDFD    wait
>0042DDFE    jmp         0042DF08
 0042DE03    mov         eax,dword ptr [ebx+8]
 0042DE06    movsx       eax,byte ptr [eax]
 0042DE09    mov         dword ptr [esp+8],eax
 0042DE0D    fild        dword ptr [esp+8]
 0042DE11    fmul        dword ptr ds:[42DF10]
 0042DE17    fistp       qword ptr [esp]
 0042DE1A    wait
>0042DE1B    jmp         0042DF08
 0042DE20    mov         eax,dword ptr [ebx+8]
 0042DE23    movzx       eax,byte ptr [eax]
 0042DE26    mov         dword ptr [esp+8],eax
 0042DE2A    fild        dword ptr [esp+8]
 0042DE2E    fmul        dword ptr ds:[42DF10]
 0042DE34    fistp       qword ptr [esp]
 0042DE37    wait
>0042DE38    jmp         0042DF08
 0042DE3D    mov         eax,dword ptr [ebx+8]
 0042DE40    movzx       eax,word ptr [eax]
 0042DE43    mov         dword ptr [esp+8],eax
 0042DE47    fild        dword ptr [esp+8]
 0042DE4B    fmul        dword ptr ds:[42DF10]
 0042DE51    fistp       qword ptr [esp]
 0042DE54    wait
>0042DE55    jmp         0042DF08
 0042DE5A    mov         eax,dword ptr [ebx+8]
 0042DE5D    mov         eax,dword ptr [eax]
 0042DE5F    mov         dword ptr [esp+0C],eax
 0042DE63    xor         eax,eax
 0042DE65    mov         dword ptr [esp+10],eax
 0042DE69    fild        qword ptr [esp+0C]
 0042DE6D    fmul        dword ptr ds:[42DF10]
 0042DE73    fistp       qword ptr [esp]
 0042DE76    wait
>0042DE77    jmp         0042DF08
 0042DE7C    mov         eax,dword ptr [ebx+8]
 0042DE7F    fild        qword ptr [eax]
 0042DE81    fstp        qword ptr [esp+0C]
 0042DE85    wait
 0042DE86    push        dword ptr [esp+10]
 0042DE8A    push        dword ptr [esp+10]
 0042DE8E    mov         eax,ebx
 0042DE90    call        VarToCurrencyAsDouble
 0042DE95    fistp       qword ptr [esp]
 0042DE98    wait
>0042DE99    jmp         0042DF08
 0042DE9B    mov         eax,dword ptr [ebx+8]
 0042DE9E    mov         edx,dword ptr [eax+4]
 0042DEA1    mov         eax,dword ptr [eax]
 0042DEA3    mov         dword ptr [esp+0C],eax
 0042DEA7    sub         edx,80000000
 0042DEAD    mov         dword ptr [esp+10],edx
 0042DEB1    fild        qword ptr [esp+0C]
 0042DEB5    fadd        qword ptr ds:[42DF14]
 0042DEBB    fstp        qword ptr [esp+14]
 0042DEBF    wait
 0042DEC0    push        dword ptr [esp+18]
 0042DEC4    push        dword ptr [esp+18]
 0042DEC8    mov         eax,ebx
 0042DECA    call        VarToCurrencyAsDouble
 0042DECF    fistp       qword ptr [esp]
 0042DED2    wait
>0042DED3    jmp         0042DF08
 0042DED5    mov         eax,dword ptr [ebx+8]
 0042DED8    call        @VarToCurrency
 0042DEDD    fistp       qword ptr [esp]
 0042DEE0    wait
>0042DEE1    jmp         0042DF08
 0042DEE3    mov         eax,ebx
 0042DEE5    call        VarToCurrencyViaOS
 0042DEEA    fistp       qword ptr [esp]
 0042DEED    wait
>0042DEEE    jmp         0042DF08
 0042DEF0    mov         edx,esp
 0042DEF2    mov         eax,ebx
 0042DEF4    call        VarToCurrencyCustom
 0042DEF9    test        al,al
>0042DEFB    jne         0042DF08
 0042DEFD    mov         eax,ebx
 0042DEFF    call        VarToCurrencyViaOS
 0042DF04    fistp       qword ptr [esp]
 0042DF07    wait
 0042DF08    fild        qword ptr [esp]
 0042DF0B    add         esp,1C
 0042DF0E    pop         ebx
 0042DF0F    ret
*}
end;

//0042DF1C
function CurrToWStrViaOS(const AValue:Currency):WideString;
begin
{*
 0042DF1C    push        ebp
 0042DF1D    mov         ebp,esp
 0042DF1F    push        ebx
 0042DF20    mov         ebx,eax
 0042DF22    mov         eax,ebx
 0042DF24    call        @WStrClr
 0042DF29    push        eax
 0042DF2A    push        0
 0042DF2C    push        400
 0042DF31    push        dword ptr [ebp+0C]
 0042DF34    push        dword ptr [ebp+8]
 0042DF37    mov         eax,[007C4354];^gvar_007C9F38
 0042DF3C    mov         eax,dword ptr [eax]
 0042DF3E    call        eax
 0042DF40    mov         cx,8
 0042DF44    mov         dx,6
 0042DF48    call        VarResultCheck
 0042DF4D    pop         ebx
 0042DF4E    pop         ebp
 0042DF4F    ret         8
*}
end;

//0042DF54
function DateToWStrViaOS(const AValue:TDateTime):WideString;
begin
{*
 0042DF54    push        ebp
 0042DF55    mov         ebp,esp
 0042DF57    push        ebx
 0042DF58    mov         ebx,eax
 0042DF5A    mov         eax,ebx
 0042DF5C    call        @WStrClr
 0042DF61    push        eax
 0042DF62    push        0
 0042DF64    push        400
 0042DF69    push        dword ptr [ebp+0C]
 0042DF6C    push        dword ptr [ebp+8]
 0042DF6F    mov         eax,[007C4860];^gvar_007C9F3C
 0042DF74    mov         eax,dword ptr [eax]
 0042DF76    call        eax
 0042DF78    mov         cx,8
 0042DF7C    mov         dx,7
 0042DF80    call        VarResultCheck
 0042DF85    pop         ebx
 0042DF86    pop         ebp
 0042DF87    ret         8
*}
end;

//0042DF8C
function BoolToWStrViaOS(const AValue:WordBool):WideString;
begin
{*
 0042DF8C    push        ebp
 0042DF8D    mov         ebp,esp
 0042DF8F    xor         ecx,ecx
 0042DF91    push        ecx
 0042DF92    push        ecx
 0042DF93    push        ecx
 0042DF94    push        ecx
 0042DF95    push        ebx
 0042DF96    push        esi
 0042DF97    mov         ebx,edx
 0042DF99    mov         esi,eax
 0042DF9B    xor         eax,eax
 0042DF9D    push        ebp
 0042DF9E    push        42E044
 0042DFA3    push        dword ptr fs:[eax]
 0042DFA6    mov         dword ptr fs:[eax],esp
 0042DFA9    mov         eax,ebx
 0042DFAB    call        @WStrClr
 0042DFB0    push        eax
 0042DFB1    push        0
 0042DFB3    push        400
 0042DFB8    push        esi
 0042DFB9    mov         eax,[007C4B9C];^gvar_007C9F40
 0042DFBE    mov         eax,dword ptr [eax]
 0042DFC0    call        eax
 0042DFC2    mov         cx,8
 0042DFC6    mov         dx,0B
 0042DFCA    call        VarResultCheck
 0042DFCF    movzx       eax,byte ptr ds:[79F695]
 0042DFD6    sub         al,1
>0042DFD8    jb          0042E029
>0042DFDA    je          0042DFE2
 0042DFDC    dec         al
>0042DFDE    je          0042E003
>0042DFE0    jmp         0042E024
 0042DFE2    lea         eax,[ebp-8]
 0042DFE5    mov         edx,dword ptr [ebx]
 0042DFE7    call        @UStrFromWStr
 0042DFEC    mov         eax,dword ptr [ebp-8]
 0042DFEF    lea         edx,[ebp-4]
 0042DFF2    call        LowerCase
 0042DFF7    mov         edx,dword ptr [ebp-4]
 0042DFFA    mov         eax,ebx
 0042DFFC    call        @WStrFromUStr
>0042E001    jmp         0042E029
 0042E003    lea         eax,[ebp-10]
 0042E006    mov         edx,dword ptr [ebx]
 0042E008    call        @UStrFromWStr
 0042E00D    mov         eax,dword ptr [ebp-10]
 0042E010    lea         edx,[ebp-0C]
 0042E013    call        UpperCase
 0042E018    mov         edx,dword ptr [ebp-0C]
 0042E01B    mov         eax,ebx
 0042E01D    call        @WStrFromUStr
>0042E022    jmp         0042E029
 0042E024    call        VarInvalidOp
 0042E029    xor         eax,eax
 0042E02B    pop         edx
 0042E02C    pop         ecx
 0042E02D    pop         ecx
 0042E02E    mov         dword ptr fs:[eax],edx
 0042E031    push        42E04B
 0042E036    lea         eax,[ebp-10]
 0042E039    mov         edx,4
 0042E03E    call        @UStrArrayClr
 0042E043    ret
>0042E044    jmp         @HandleFinally
>0042E049    jmp         0042E036
 0042E04B    pop         esi
 0042E04C    pop         ebx
 0042E04D    mov         esp,ebp
 0042E04F    pop         ebp
 0042E050    ret
*}
end;

//0042E054
function VarToLStrViaOS(const V:TVarData):UnicodeString;
begin
{*
 0042E054    push        ebp
 0042E055    mov         ebp,esp
 0042E057    add         esp,0FFFFFFEC
 0042E05A    push        ebx
 0042E05B    push        esi
 0042E05C    xor         ecx,ecx
 0042E05E    mov         dword ptr [ebp-14],ecx
 0042E061    mov         esi,edx
 0042E063    mov         ebx,eax
 0042E065    xor         eax,eax
 0042E067    push        ebp
 0042E068    push        42E0FE
 0042E06D    push        dword ptr fs:[eax]
 0042E070    mov         dword ptr fs:[eax],esp
 0042E073    lea         eax,[ebp-10]
 0042E076    push        eax
 0042E077    call        oleaut32.VariantInit
 0042E07C    xor         eax,eax
 0042E07E    push        ebp
 0042E07F    push        42E0E1
 0042E084    push        dword ptr fs:[eax]
 0042E087    mov         dword ptr fs:[eax],esp
 0042E08A    push        8
 0042E08C    push        0
 0042E08E    push        400
 0042E093    push        ebx
 0042E094    lea         eax,[ebp-10]
 0042E097    push        eax
 0042E098    mov         eax,[007C4C30];^gvar_007C9EEC
 0042E09D    mov         eax,dword ptr [eax]
 0042E09F    call        eax
 0042E0A1    movzx       edx,word ptr [ebx]
 0042E0A4    mov         cx,100
 0042E0A8    call        VarResultCheck
 0042E0AD    push        esi
 0042E0AE    lea         eax,[ebp-14]
 0042E0B1    mov         edx,dword ptr [ebp-8]
 0042E0B4    call        @UStrFromPWChar
 0042E0B9    mov         eax,dword ptr [ebp-14]
 0042E0BC    mov         ecx,7FFFFFFF
 0042E0C1    mov         edx,1
 0042E0C6    call        @UStrCopy
 0042E0CB    xor         eax,eax
 0042E0CD    pop         edx
 0042E0CE    pop         ecx
 0042E0CF    pop         ecx
 0042E0D0    mov         dword ptr fs:[eax],edx
 0042E0D3    push        42E0E8
 0042E0D8    lea         eax,[ebp-10]
 0042E0DB    call        @VarClear
 0042E0E0    ret
>0042E0E1    jmp         @HandleFinally
>0042E0E6    jmp         0042E0D8
 0042E0E8    xor         eax,eax
 0042E0EA    pop         edx
 0042E0EB    pop         ecx
 0042E0EC    pop         ecx
 0042E0ED    mov         dword ptr fs:[eax],edx
 0042E0F0    push        42E105
 0042E0F5    lea         eax,[ebp-14]
 0042E0F8    call        @UStrClr
 0042E0FD    ret
>0042E0FE    jmp         @HandleFinally
>0042E103    jmp         0042E0F5
 0042E105    pop         esi
 0042E106    pop         ebx
 0042E107    mov         esp,ebp
 0042E109    pop         ebp
 0042E10A    ret
*}
end;

//0042E10C
function VarToLStrAny(const V:TVarData):AnsiString;
begin
{*
 0042E10C    push        ebp
 0042E10D    mov         ebp,esp
 0042E10F    add         esp,0FFFFFFF0
 0042E112    push        ebx
 0042E113    push        esi
 0042E114    mov         esi,edx
 0042E116    mov         ebx,eax
 0042E118    lea         eax,[ebp-10]
 0042E11B    push        eax
 0042E11C    call        oleaut32.VariantInit
 0042E121    xor         eax,eax
 0042E123    push        ebp
 0042E124    push        42E162
 0042E129    push        dword ptr fs:[eax]
 0042E12C    mov         dword ptr fs:[eax],esp
 0042E12F    mov         edx,ebx
 0042E131    lea         eax,[ebp-10]
 0042E134    call        @VarCopy
 0042E139    lea         eax,[ebp-10]
 0042E13C    call        dword ptr ds:[7C9F50]
 0042E142    lea         edx,[ebp-10]
 0042E145    mov         eax,esi
 0042E147    call        @VarToLStr
 0042E14C    xor         eax,eax
 0042E14E    pop         edx
 0042E14F    pop         ecx
 0042E150    pop         ecx
 0042E151    mov         dword ptr fs:[eax],edx
 0042E154    push        42E169
 0042E159    lea         eax,[ebp-10]
 0042E15C    call        @VarClear
 0042E161    ret
>0042E162    jmp         @HandleFinally
>0042E167    jmp         0042E159
 0042E169    pop         esi
 0042E16A    pop         ebx
 0042E16B    mov         esp,ebp
 0042E16D    pop         ebp
 0042E16E    ret
*}
end;

//0042E170
function VarToLStrCustom(const V:TVarData; var AValue:AnsiString):Boolean;
begin
{*
 0042E170    push        ebp
 0042E171    mov         ebp,esp
 0042E173    add         esp,0FFFFFFE4
 0042E176    push        ebx
 0042E177    mov         dword ptr [ebp-4],edx
 0042E17A    mov         ebx,eax
 0042E17C    mov         eax,dword ptr [ebp-4]
 0042E17F    test        eax,eax
>0042E181    je          0042E187
 0042E183    xor         edx,edx
 0042E185    mov         dword ptr [eax],edx
 0042E187    lea         edx,[ebp-0C]
 0042E18A    movzx       eax,word ptr [ebx]
 0042E18D    call        FindCustomVariantType
 0042E192    mov         byte ptr [ebp-5],al
 0042E195    cmp         byte ptr [ebp-5],0
>0042E199    je          0042E1EC
 0042E19B    lea         eax,[ebp-1C]
 0042E19E    push        eax
 0042E19F    call        oleaut32.VariantInit
 0042E1A4    xor         eax,eax
 0042E1A6    push        ebp
 0042E1A7    push        42E1E5
 0042E1AC    push        dword ptr fs:[eax]
 0042E1AF    mov         dword ptr fs:[eax],esp
 0042E1B2    push        100
 0042E1B7    mov         ecx,ebx
 0042E1B9    lea         edx,[ebp-1C]
 0042E1BC    mov         eax,dword ptr [ebp-0C]
 0042E1BF    mov         ebx,dword ptr [eax]
 0042E1C1    call        dword ptr [ebx+1C]
 0042E1C4    mov         eax,dword ptr [ebp-4]
 0042E1C7    mov         edx,dword ptr [ebp-14]
 0042E1CA    call        @LStrAsg
 0042E1CF    xor         eax,eax
 0042E1D1    pop         edx
 0042E1D2    pop         ecx
 0042E1D3    pop         ecx
 0042E1D4    mov         dword ptr fs:[eax],edx
 0042E1D7    push        42E1EC
 0042E1DC    lea         eax,[ebp-1C]
 0042E1DF    call        @VarClear
 0042E1E4    ret
>0042E1E5    jmp         @HandleFinally
>0042E1EA    jmp         0042E1DC
 0042E1EC    movzx       eax,byte ptr [ebp-5]
 0042E1F0    pop         ebx
 0042E1F1    mov         esp,ebp
 0042E1F3    pop         ebp
 0042E1F4    ret
*}
end;

//0042E1F8
procedure @VarToLStr(var S:AnsiString; const V:TVarData);
begin
{*
 0042E1F8    push        ebp
 0042E1F9    mov         ebp,esp
 0042E1FB    mov         ecx,17
 0042E200    push        0
 0042E202    push        0
 0042E204    dec         ecx
>0042E205    jne         0042E200
 0042E207    push        ecx
 0042E208    push        ebx
 0042E209    push        esi
 0042E20A    mov         ebx,edx
 0042E20C    mov         esi,eax
 0042E20E    xor         eax,eax
 0042E210    push        ebp
 0042E211    push        42E937
 0042E216    push        dword ptr fs:[eax]
 0042E219    mov         dword ptr fs:[eax],esp
 0042E21C    movzx       eax,word ptr [ebx]
 0042E21F    movzx       edx,ax
 0042E222    cmp         edx,15
>0042E225    ja          0042E4EE
 0042E22B    jmp         dword ptr [edx*4+42E232]
 0042E22B    dd          0042E28A
 0042E22B    dd          0042E296
 0042E22B    dd          0042E2C3
 0042E22B    dd          0042E2E3
 0042E22B    dd          0042E302
 0042E22B    dd          0042E335
 0042E22B    dd          0042E368
 0042E22B    dd          0042E38A
 0042E22B    dd          0042E3AC
 0042E22B    dd          0042E4CA
 0042E22B    dd          0042E4EE
 0042E22B    dd          0042E3D6
 0042E22B    dd          0042E4B9
 0042E22B    dd          0042E4CA
 0042E22B    dd          0042E4EE
 0042E22B    dd          0042E4EE
 0042E22B    dd          0042E3F6
 0042E22B    dd          0042E416
 0042E22B    dd          0042E436
 0042E22B    dd          0042E456
 0042E22B    dd          0042E475
 0042E22B    dd          0042E497
 0042E28A    mov         eax,esi
 0042E28C    call        @LStrClr
>0042E291    jmp         0042E8B7
 0042E296    cmp         byte ptr ds:[79F68E],0
>0042E29D    je          0042E2AC
 0042E29F    mov         dx,100
 0042E2A3    mov         ax,1
 0042E2A7    call        VarCastError
 0042E2AC    mov         eax,esi
 0042E2AE    mov         edx,dword ptr ds:[79F690]
 0042E2B4    mov         ecx,0
 0042E2B9    call        @LStrFromUStr
>0042E2BE    jmp         0042E8B7
 0042E2C3    lea         edx,[ebp-54]
 0042E2C6    movsx       eax,word ptr [ebx+8]
 0042E2CA    call        IntToStr
 0042E2CF    mov         edx,dword ptr [ebp-54]
 0042E2D2    mov         eax,esi
 0042E2D4    mov         ecx,0
 0042E2D9    call        @LStrFromUStr
>0042E2DE    jmp         0042E8B7
 0042E2E3    lea         edx,[ebp-58]
 0042E2E6    mov         eax,dword ptr [ebx+8]
 0042E2E9    call        IntToStr
 0042E2EE    mov         edx,dword ptr [ebp-58]
 0042E2F1    mov         eax,esi
 0042E2F3    mov         ecx,0
 0042E2F8    call        @LStrFromUStr
>0042E2FD    jmp         0042E8B7
 0042E302    fld         dword ptr [ebx+8]
 0042E305    fstp        tbyte ptr [ebp-20]
 0042E308    wait
 0042E309    movzx       eax,word ptr [ebp-18]
 0042E30D    push        eax
 0042E30E    push        dword ptr [ebp-1C]
 0042E311    push        dword ptr [ebp-20]
 0042E314    lea         edx,[ebp-4]
 0042E317    mov         eax,[007C4B88];^gvar_007C7CC8:Pointer
 0042E31C    call        00420B20
 0042E321    mov         eax,esi
 0042E323    mov         edx,dword ptr [ebp-4]
 0042E326    mov         ecx,0
 0042E32B    call        @LStrFromUStr
>0042E330    jmp         0042E8B7
 0042E335    fld         qword ptr [ebx+8]
 0042E338    fstp        tbyte ptr [ebp-30]
 0042E33B    wait
 0042E33C    movzx       eax,word ptr [ebp-28]
 0042E340    push        eax
 0042E341    push        dword ptr [ebp-2C]
 0042E344    push        dword ptr [ebp-30]
 0042E347    lea         edx,[ebp-8]
 0042E34A    mov         eax,[007C4B88];^gvar_007C7CC8:Pointer
 0042E34F    call        00420B20
 0042E354    mov         eax,esi
 0042E356    mov         edx,dword ptr [ebp-8]
 0042E359    mov         ecx,0
 0042E35E    call        @LStrFromUStr
>0042E363    jmp         0042E8B7
 0042E368    push        dword ptr [ebx+0C]
 0042E36B    push        dword ptr [ebx+8]
 0042E36E    lea         eax,[ebp-5C]
 0042E371    call        CurrToWStrViaOS
 0042E376    mov         edx,dword ptr [ebp-5C]
 0042E379    mov         eax,esi
 0042E37B    mov         ecx,0
 0042E380    call        @LStrFromWStr
>0042E385    jmp         0042E8B7
 0042E38A    push        dword ptr [ebx+0C]
 0042E38D    push        dword ptr [ebx+8]
 0042E390    lea         eax,[ebp-60]
 0042E393    call        DateToWStrViaOS
 0042E398    mov         edx,dword ptr [ebp-60]
 0042E39B    mov         eax,esi
 0042E39D    mov         ecx,0
 0042E3A2    call        @LStrFromWStr
>0042E3A7    jmp         0042E8B7
 0042E3AC    lea         eax,[ebp-64]
 0042E3AF    push        eax
 0042E3B0    mov         eax,dword ptr [ebx+8]
 0042E3B3    mov         ecx,7FFFFFFF
 0042E3B8    mov         edx,1
 0042E3BD    call        @WStrCopy
 0042E3C2    mov         edx,dword ptr [ebp-64]
 0042E3C5    mov         eax,esi
 0042E3C7    mov         ecx,0
 0042E3CC    call        @LStrFromWStr
>0042E3D1    jmp         0042E8B7
 0042E3D6    lea         edx,[ebp-68]
 0042E3D9    movzx       eax,word ptr [ebx+8]
 0042E3DD    call        BoolToWStrViaOS
 0042E3E2    mov         edx,dword ptr [ebp-68]
 0042E3E5    mov         eax,esi
 0042E3E7    mov         ecx,0
 0042E3EC    call        @LStrFromWStr
>0042E3F1    jmp         0042E8B7
 0042E3F6    lea         edx,[ebp-6C]
 0042E3F9    movsx       eax,byte ptr [ebx+8]
 0042E3FD    call        IntToStr
 0042E402    mov         edx,dword ptr [ebp-6C]
 0042E405    mov         eax,esi
 0042E407    mov         ecx,0
 0042E40C    call        @LStrFromUStr
>0042E411    jmp         0042E8B7
 0042E416    lea         edx,[ebp-70]
 0042E419    movzx       eax,byte ptr [ebx+8]
 0042E41D    call        IntToStr
 0042E422    mov         edx,dword ptr [ebp-70]
 0042E425    mov         eax,esi
 0042E427    mov         ecx,0
 0042E42C    call        @LStrFromUStr
>0042E431    jmp         0042E8B7
 0042E436    lea         edx,[ebp-74]
 0042E439    movzx       eax,word ptr [ebx+8]
 0042E43D    call        IntToStr
 0042E442    mov         edx,dword ptr [ebp-74]
 0042E445    mov         eax,esi
 0042E447    mov         ecx,0
 0042E44C    call        @LStrFromUStr
>0042E451    jmp         0042E8B7
 0042E456    lea         edx,[ebp-78]
 0042E459    mov         eax,dword ptr [ebx+8]
 0042E45C    call        0041E348
 0042E461    mov         edx,dword ptr [ebp-78]
 0042E464    mov         eax,esi
 0042E466    mov         ecx,0
 0042E46B    call        @LStrFromUStr
>0042E470    jmp         0042E8B7
 0042E475    push        dword ptr [ebx+0C]
 0042E478    push        dword ptr [ebx+8]
 0042E47B    lea         eax,[ebp-7C]
 0042E47E    call        0041E304
 0042E483    mov         edx,dword ptr [ebp-7C]
 0042E486    mov         eax,esi
 0042E488    mov         ecx,0
 0042E48D    call        @LStrFromUStr
>0042E492    jmp         0042E8B7
 0042E497    push        dword ptr [ebx+0C]
 0042E49A    push        dword ptr [ebx+8]
 0042E49D    lea         eax,[ebp-80]
 0042E4A0    call        0041E35C
 0042E4A5    mov         edx,dword ptr [ebp-80]
 0042E4A8    mov         eax,esi
 0042E4AA    mov         ecx,0
 0042E4AF    call        @LStrFromUStr
>0042E4B4    jmp         0042E8B7
 0042E4B9    mov         eax,dword ptr [ebx+8]
 0042E4BC    mov         edx,eax
 0042E4BE    mov         eax,esi
 0042E4C0    call        @VarToLStr
>0042E4C5    jmp         0042E8B7
 0042E4CA    lea         edx,[ebp-84]
 0042E4D0    mov         eax,ebx
 0042E4D2    call        VarToLStrViaOS
 0042E4D7    mov         edx,dword ptr [ebp-84]
 0042E4DD    mov         eax,esi
 0042E4DF    mov         ecx,0
 0042E4E4    call        @LStrFromUStr
>0042E4E9    jmp         0042E8B7
 0042E4EE    mov         edx,eax
 0042E4F0    sub         dx,100
>0042E4F5    je          0042E503
 0042E4F7    dec         dx
>0042E4FA    je          0042E526
 0042E4FC    dec         dx
>0042E4FF    je          0042E512
>0042E501    jmp         0042E545
 0042E503    mov         eax,esi
 0042E505    mov         edx,dword ptr [ebx+8]
 0042E508    call        @LStrAsg
>0042E50D    jmp         0042E8B7
 0042E512    mov         eax,esi
 0042E514    mov         edx,dword ptr [ebx+8]
 0042E517    mov         ecx,0
 0042E51C    call        @LStrFromUStr
>0042E521    jmp         0042E8B7
 0042E526    lea         edx,[ebp-88]
 0042E52C    mov         eax,ebx
 0042E52E    call        VarToLStrAny
 0042E533    mov         edx,dword ptr [ebp-88]
 0042E539    mov         eax,esi
 0042E53B    call        @LStrAsg
>0042E540    jmp         0042E8B7
 0042E545    test        ah,40
>0042E548    je          0042E884
 0042E54E    movzx       eax,ax
 0042E551    and         eax,0FFFFBFFF
 0042E556    cmp         eax,0C
>0042E559    jg          0042E5A1
>0042E55B    je          0042E855
 0042E561    cmp         eax,0B
>0042E564    ja          0042E863
 0042E56A    jmp         dword ptr [eax*4+42E571]
 0042E56A    dd          0042E863
 0042E56A    dd          0042E863
 0042E56A    dd          0042E5F1
 0042E56A    dd          0042E619
 0042E56A    dd          0042E640
 0042E56A    dd          0042E675
 0042E56A    dd          0042E6AA
 0042E56A    dd          0042E6D4
 0042E56A    dd          0042E6FE
 0042E56A    dd          0042E863
 0042E56A    dd          0042E863
 0042E56A    dd          0042E714
 0042E5A1    cmp         eax,14
>0042E5A4    jg          0042E5CF
>0042E5A6    je          0042E7DB
 0042E5AC    sub         eax,10
>0042E5AF    je          0042E73C
 0042E5B5    dec         eax
>0042E5B6    je          0042E764
 0042E5BC    dec         eax
>0042E5BD    je          0042E78C
 0042E5C3    dec         eax
>0042E5C4    je          0042E7B4
>0042E5CA    jmp         0042E863
 0042E5CF    sub         eax,15
>0042E5D2    je          0042E805
 0042E5D8    sub         eax,0EB
>0042E5DD    je          0042E82F
 0042E5E3    sub         eax,2
>0042E5E6    je          0042E842
>0042E5EC    jmp         0042E863
 0042E5F1    lea         edx,[ebp-8C]
 0042E5F7    mov         eax,dword ptr [ebx+8]
 0042E5FA    movsx       eax,word ptr [eax]
 0042E5FD    call        IntToStr
 0042E602    mov         edx,dword ptr [ebp-8C]
 0042E608    mov         eax,esi
 0042E60A    mov         ecx,0
 0042E60F    call        @LStrFromUStr
>0042E614    jmp         0042E8B7
 0042E619    lea         edx,[ebp-90]
 0042E61F    mov         eax,dword ptr [ebx+8]
 0042E622    mov         eax,dword ptr [eax]
 0042E624    call        IntToStr
 0042E629    mov         edx,dword ptr [ebp-90]
 0042E62F    mov         eax,esi
 0042E631    mov         ecx,0
 0042E636    call        @LStrFromUStr
>0042E63B    jmp         0042E8B7
 0042E640    mov         eax,dword ptr [ebx+8]
 0042E643    fld         dword ptr [eax]
 0042E645    fstp        tbyte ptr [ebp-40]
 0042E648    wait
 0042E649    movzx       eax,word ptr [ebp-38]
 0042E64D    push        eax
 0042E64E    push        dword ptr [ebp-3C]
 0042E651    push        dword ptr [ebp-40]
 0042E654    lea         edx,[ebp-0C]
 0042E657    mov         eax,[007C4B88];^gvar_007C7CC8:Pointer
 0042E65C    call        00420B20
 0042E661    mov         eax,esi
 0042E663    mov         edx,dword ptr [ebp-0C]
 0042E666    mov         ecx,0
 0042E66B    call        @LStrFromUStr
>0042E670    jmp         0042E8B7
 0042E675    mov         eax,dword ptr [ebx+8]
 0042E678    fld         qword ptr [eax]
 0042E67A    fstp        tbyte ptr [ebp-50]
 0042E67D    wait
 0042E67E    movzx       eax,word ptr [ebp-48]
 0042E682    push        eax
 0042E683    push        dword ptr [ebp-4C]
 0042E686    push        dword ptr [ebp-50]
 0042E689    lea         edx,[ebp-10]
 0042E68C    mov         eax,[007C4B88];^gvar_007C7CC8:Pointer
 0042E691    call        00420B20
 0042E696    mov         eax,esi
 0042E698    mov         edx,dword ptr [ebp-10]
 0042E69B    mov         ecx,0
 0042E6A0    call        @LStrFromUStr
>0042E6A5    jmp         0042E8B7
 0042E6AA    mov         eax,dword ptr [ebx+8]
 0042E6AD    push        dword ptr [eax+4]
 0042E6B0    push        dword ptr [eax]
 0042E6B2    lea         eax,[ebp-94]
 0042E6B8    call        CurrToWStrViaOS
 0042E6BD    mov         edx,dword ptr [ebp-94]
 0042E6C3    mov         eax,esi
 0042E6C5    mov         ecx,0
 0042E6CA    call        @LStrFromWStr
>0042E6CF    jmp         0042E8B7
 0042E6D4    mov         eax,dword ptr [ebx+8]
 0042E6D7    push        dword ptr [eax+4]
 0042E6DA    push        dword ptr [eax]
 0042E6DC    lea         eax,[ebp-98]
 0042E6E2    call        DateToWStrViaOS
 0042E6E7    mov         edx,dword ptr [ebp-98]
 0042E6ED    mov         eax,esi
 0042E6EF    mov         ecx,0
 0042E6F4    call        @LStrFromWStr
>0042E6F9    jmp         0042E8B7
 0042E6FE    mov         eax,esi
 0042E700    mov         edx,dword ptr [ebx+8]
 0042E703    mov         edx,dword ptr [edx]
 0042E705    mov         ecx,0
 0042E70A    call        @LStrFromPWChar
>0042E70F    jmp         0042E8B7
 0042E714    lea         edx,[ebp-9C]
 0042E71A    mov         eax,dword ptr [ebx+8]
 0042E71D    movzx       eax,word ptr [eax]
 0042E720    call        BoolToWStrViaOS
 0042E725    mov         edx,dword ptr [ebp-9C]
 0042E72B    mov         eax,esi
 0042E72D    mov         ecx,0
 0042E732    call        @LStrFromWStr
>0042E737    jmp         0042E8B7
 0042E73C    lea         edx,[ebp-0A0]
 0042E742    mov         eax,dword ptr [ebx+8]
 0042E745    movsx       eax,byte ptr [eax]
 0042E748    call        IntToStr
 0042E74D    mov         edx,dword ptr [ebp-0A0]
 0042E753    mov         eax,esi
 0042E755    mov         ecx,0
 0042E75A    call        @LStrFromUStr
>0042E75F    jmp         0042E8B7
 0042E764    lea         edx,[ebp-0A4]
 0042E76A    mov         eax,dword ptr [ebx+8]
 0042E76D    movzx       eax,byte ptr [eax]
 0042E770    call        IntToStr
 0042E775    mov         edx,dword ptr [ebp-0A4]
 0042E77B    mov         eax,esi
 0042E77D    mov         ecx,0
 0042E782    call        @LStrFromUStr
>0042E787    jmp         0042E8B7
 0042E78C    lea         edx,[ebp-0A8]
 0042E792    mov         eax,dword ptr [ebx+8]
 0042E795    movzx       eax,word ptr [eax]
 0042E798    call        IntToStr
 0042E79D    mov         edx,dword ptr [ebp-0A8]
 0042E7A3    mov         eax,esi
 0042E7A5    mov         ecx,0
 0042E7AA    call        @LStrFromUStr
>0042E7AF    jmp         0042E8B7
 0042E7B4    lea         edx,[ebp-0AC]
 0042E7BA    mov         eax,dword ptr [ebx+8]
 0042E7BD    mov         eax,dword ptr [eax]
 0042E7BF    call        0041E348
 0042E7C4    mov         edx,dword ptr [ebp-0AC]
 0042E7CA    mov         eax,esi
 0042E7CC    mov         ecx,0
 0042E7D1    call        @LStrFromUStr
>0042E7D6    jmp         0042E8B7
 0042E7DB    mov         eax,dword ptr [ebx+8]
 0042E7DE    push        dword ptr [eax+4]
 0042E7E1    push        dword ptr [eax]
 0042E7E3    lea         eax,[ebp-0B0]
 0042E7E9    call        0041E304
 0042E7EE    mov         edx,dword ptr [ebp-0B0]
 0042E7F4    mov         eax,esi
 0042E7F6    mov         ecx,0
 0042E7FB    call        @LStrFromUStr
>0042E800    jmp         0042E8B7
 0042E805    mov         eax,dword ptr [ebx+8]
 0042E808    push        dword ptr [eax+4]
 0042E80B    push        dword ptr [eax]
 0042E80D    lea         eax,[ebp-0B4]
 0042E813    call        0041E35C
 0042E818    mov         edx,dword ptr [ebp-0B4]
 0042E81E    mov         eax,esi
 0042E820    mov         ecx,0
 0042E825    call        @LStrFromUStr
>0042E82A    jmp         0042E8B7
 0042E82F    mov         eax,esi
 0042E831    mov         edx,dword ptr [ebx+8]
 0042E834    mov         edx,dword ptr [edx]
 0042E836    mov         ecx,0
 0042E83B    call        @LStrFromPChar
>0042E840    jmp         0042E8B7
 0042E842    mov         eax,esi
 0042E844    mov         edx,dword ptr [ebx+8]
 0042E847    mov         edx,dword ptr [edx]
 0042E849    mov         ecx,0
 0042E84E    call        @LStrFromPWChar
>0042E853    jmp         0042E8B7
 0042E855    mov         eax,dword ptr [ebx+8]
 0042E858    mov         edx,eax
 0042E85A    mov         eax,esi
 0042E85C    call        @VarToLStr
>0042E861    jmp         0042E8B7
 0042E863    lea         edx,[ebp-0B8]
 0042E869    mov         eax,ebx
 0042E86B    call        VarToLStrViaOS
 0042E870    mov         edx,dword ptr [ebp-0B8]
 0042E876    mov         eax,esi
 0042E878    mov         ecx,0
 0042E87D    call        @LStrFromUStr
>0042E882    jmp         0042E8B7
 0042E884    mov         eax,esi
 0042E886    call        @LStrClr
 0042E88B    mov         edx,eax
 0042E88D    mov         eax,ebx
 0042E88F    call        VarToLStrCustom
 0042E894    test        al,al
>0042E896    jne         0042E8B7
 0042E898    lea         edx,[ebp-0BC]
 0042E89E    mov         eax,ebx
 0042E8A0    call        VarToLStrViaOS
 0042E8A5    mov         edx,dword ptr [ebp-0BC]
 0042E8AB    mov         eax,esi
 0042E8AD    mov         ecx,0
 0042E8B2    call        @LStrFromUStr
 0042E8B7    xor         eax,eax
 0042E8B9    pop         edx
 0042E8BA    pop         ecx
 0042E8BB    pop         ecx
 0042E8BC    mov         dword ptr fs:[eax],edx
 0042E8BF    push        42E93E
 0042E8C4    lea         eax,[ebp-0BC]
 0042E8CA    mov         edx,8
 0042E8CF    call        @UStrArrayClr
 0042E8D4    lea         eax,[ebp-9C]
 0042E8DA    mov         edx,3
 0042E8DF    call        @WStrArrayClr
 0042E8E4    lea         eax,[ebp-90]
 0042E8EA    mov         edx,2
 0042E8EF    call        @UStrArrayClr
 0042E8F4    lea         eax,[ebp-88]
 0042E8FA    call        @LStrClr
 0042E8FF    lea         eax,[ebp-84]
 0042E905    mov         edx,7
 0042E90A    call        @UStrArrayClr
 0042E90F    lea         eax,[ebp-68]
 0042E912    mov         edx,4
 0042E917    call        @WStrArrayClr
 0042E91C    lea         eax,[ebp-58]
 0042E91F    mov         edx,2
 0042E924    call        @UStrArrayClr
 0042E929    lea         eax,[ebp-10]
 0042E92C    mov         edx,4
 0042E931    call        @UStrArrayClr
 0042E936    ret
>0042E937    jmp         @HandleFinally
>0042E93C    jmp         0042E8C4
 0042E93E    pop         esi
 0042E93F    pop         ebx
 0042E940    mov         esp,ebp
 0042E942    pop         ebp
 0042E943    ret
*}
end;

//0042E944
function VarToWStrViaOS(const V:TVarData):WideString;
begin
{*
 0042E944    push        ebp
 0042E945    mov         ebp,esp
 0042E947    add         esp,0FFFFFFE8
 0042E94A    push        ebx
 0042E94B    push        esi
 0042E94C    xor         ecx,ecx
 0042E94E    mov         dword ptr [ebp-14],ecx
 0042E951    mov         dword ptr [ebp-18],ecx
 0042E954    mov         esi,edx
 0042E956    mov         ebx,eax
 0042E958    xor         eax,eax
 0042E95A    push        ebp
 0042E95B    push        42EA03
 0042E960    push        dword ptr fs:[eax]
 0042E963    mov         dword ptr fs:[eax],esp
 0042E966    lea         eax,[ebp-10]
 0042E969    push        eax
 0042E96A    call        oleaut32.VariantInit
 0042E96F    xor         eax,eax
 0042E971    push        ebp
 0042E972    push        42E9E1
 0042E977    push        dword ptr fs:[eax]
 0042E97A    mov         dword ptr fs:[eax],esp
 0042E97D    push        8
 0042E97F    push        0
 0042E981    push        400
 0042E986    push        ebx
 0042E987    lea         eax,[ebp-10]
 0042E98A    push        eax
 0042E98B    mov         eax,[007C4C30];^gvar_007C9EEC
 0042E990    mov         eax,dword ptr [eax]
 0042E992    call        eax
 0042E994    movzx       edx,word ptr [ebx]
 0042E997    mov         cx,8
 0042E99B    call        VarResultCheck
 0042E9A0    lea         eax,[ebp-14]
 0042E9A3    push        eax
 0042E9A4    lea         eax,[ebp-18]
 0042E9A7    mov         edx,dword ptr [ebp-8]
 0042E9AA    call        @UStrFromPWChar
 0042E9AF    mov         eax,dword ptr [ebp-18]
 0042E9B2    mov         ecx,7FFFFFFF
 0042E9B7    mov         edx,1
 0042E9BC    call        @UStrCopy
 0042E9C1    mov         edx,dword ptr [ebp-14]
 0042E9C4    mov         eax,esi
 0042E9C6    call        @WStrFromUStr
 0042E9CB    xor         eax,eax
 0042E9CD    pop         edx
 0042E9CE    pop         ecx
 0042E9CF    pop         ecx
 0042E9D0    mov         dword ptr fs:[eax],edx
 0042E9D3    push        42E9E8
 0042E9D8    lea         eax,[ebp-10]
 0042E9DB    call        @VarClear
 0042E9E0    ret
>0042E9E1    jmp         @HandleFinally
>0042E9E6    jmp         0042E9D8
 0042E9E8    xor         eax,eax
 0042E9EA    pop         edx
 0042E9EB    pop         ecx
 0042E9EC    pop         ecx
 0042E9ED    mov         dword ptr fs:[eax],edx
 0042E9F0    push        42EA0A
 0042E9F5    lea         eax,[ebp-18]
 0042E9F8    mov         edx,2
 0042E9FD    call        @UStrArrayClr
 0042EA02    ret
>0042EA03    jmp         @HandleFinally
>0042EA08    jmp         0042E9F5
 0042EA0A    pop         esi
 0042EA0B    pop         ebx
 0042EA0C    mov         esp,ebp
 0042EA0E    pop         ebp
 0042EA0F    ret
*}
end;

//0042EA10
function VarToWStrAny(const V:TVarData):WideString;
begin
{*
 0042EA10    push        ebp
 0042EA11    mov         ebp,esp
 0042EA13    add         esp,0FFFFFFF0
 0042EA16    push        ebx
 0042EA17    push        esi
 0042EA18    mov         esi,edx
 0042EA1A    mov         ebx,eax
 0042EA1C    lea         eax,[ebp-10]
 0042EA1F    push        eax
 0042EA20    call        oleaut32.VariantInit
 0042EA25    xor         eax,eax
 0042EA27    push        ebp
 0042EA28    push        42EA66
 0042EA2D    push        dword ptr fs:[eax]
 0042EA30    mov         dword ptr fs:[eax],esp
 0042EA33    mov         edx,ebx
 0042EA35    lea         eax,[ebp-10]
 0042EA38    call        @VarCopy
 0042EA3D    lea         eax,[ebp-10]
 0042EA40    call        dword ptr ds:[7C9F50]
 0042EA46    lea         edx,[ebp-10]
 0042EA49    mov         eax,esi
 0042EA4B    call        @VarToWStr
 0042EA50    xor         eax,eax
 0042EA52    pop         edx
 0042EA53    pop         ecx
 0042EA54    pop         ecx
 0042EA55    mov         dword ptr fs:[eax],edx
 0042EA58    push        42EA6D
 0042EA5D    lea         eax,[ebp-10]
 0042EA60    call        @VarClear
 0042EA65    ret
>0042EA66    jmp         @HandleFinally
>0042EA6B    jmp         0042EA5D
 0042EA6D    pop         esi
 0042EA6E    pop         ebx
 0042EA6F    mov         esp,ebp
 0042EA71    pop         ebp
 0042EA72    ret
*}
end;

//0042EA74
function VarToWStrCustom(const V:TVarData; var AValue:WideString):Boolean;
begin
{*
 0042EA74    push        ebp
 0042EA75    mov         ebp,esp
 0042EA77    add         esp,0FFFFFFDC
 0042EA7A    push        ebx
 0042EA7B    xor         ecx,ecx
 0042EA7D    mov         dword ptr [ebp-20],ecx
 0042EA80    mov         dword ptr [ebp-24],ecx
 0042EA83    mov         dword ptr [ebp-4],edx
 0042EA86    mov         ebx,eax
 0042EA88    mov         eax,dword ptr [ebp-4]
 0042EA8B    test        eax,eax
>0042EA8D    je          0042EA93
 0042EA8F    xor         edx,edx
 0042EA91    mov         dword ptr [eax],edx
 0042EA93    xor         eax,eax
 0042EA95    push        ebp
 0042EA96    push        42EB3F
 0042EA9B    push        dword ptr fs:[eax]
 0042EA9E    mov         dword ptr fs:[eax],esp
 0042EAA1    lea         edx,[ebp-0C]
 0042EAA4    movzx       eax,word ptr [ebx]
 0042EAA7    call        FindCustomVariantType
 0042EAAC    mov         byte ptr [ebp-5],al
 0042EAAF    cmp         byte ptr [ebp-5],0
>0042EAB3    je          0042EB24
 0042EAB5    lea         eax,[ebp-1C]
 0042EAB8    push        eax
 0042EAB9    call        oleaut32.VariantInit
 0042EABE    xor         eax,eax
 0042EAC0    push        ebp
 0042EAC1    push        42EB1D
 0042EAC6    push        dword ptr fs:[eax]
 0042EAC9    mov         dword ptr fs:[eax],esp
 0042EACC    push        8
 0042EACE    mov         ecx,ebx
 0042EAD0    lea         edx,[ebp-1C]
 0042EAD3    mov         eax,dword ptr [ebp-0C]
 0042EAD6    mov         ebx,dword ptr [eax]
 0042EAD8    call        dword ptr [ebx+1C]
 0042EADB    lea         eax,[ebp-20]
 0042EADE    push        eax
 0042EADF    lea         eax,[ebp-24]
 0042EAE2    mov         edx,dword ptr [ebp-14]
 0042EAE5    call        @UStrFromPWChar
 0042EAEA    mov         eax,dword ptr [ebp-24]
 0042EAED    mov         ecx,7FFFFFFF
 0042EAF2    mov         edx,1
 0042EAF7    call        @UStrCopy
 0042EAFC    mov         edx,dword ptr [ebp-20]
 0042EAFF    mov         eax,dword ptr [ebp-4]
 0042EB02    call        @WStrFromUStr
 0042EB07    xor         eax,eax
 0042EB09    pop         edx
 0042EB0A    pop         ecx
 0042EB0B    pop         ecx
 0042EB0C    mov         dword ptr fs:[eax],edx
 0042EB0F    push        42EB24
 0042EB14    lea         eax,[ebp-1C]
 0042EB17    call        @VarClear
 0042EB1C    ret
>0042EB1D    jmp         @HandleFinally
>0042EB22    jmp         0042EB14
 0042EB24    xor         eax,eax
 0042EB26    pop         edx
 0042EB27    pop         ecx
 0042EB28    pop         ecx
 0042EB29    mov         dword ptr fs:[eax],edx
 0042EB2C    push        42EB46
 0042EB31    lea         eax,[ebp-24]
 0042EB34    mov         edx,2
 0042EB39    call        @UStrArrayClr
 0042EB3E    ret
>0042EB3F    jmp         @HandleFinally
>0042EB44    jmp         0042EB31
 0042EB46    movzx       eax,byte ptr [ebp-5]
 0042EB4A    pop         ebx
 0042EB4B    mov         esp,ebp
 0042EB4D    pop         ebp
 0042EB4E    ret
*}
end;

//0042EB50
procedure @VarToWStr(var S:WideString; const V:TVarData);
begin
{*
 0042EB50    push        ebp
 0042EB51    mov         ebp,esp
 0042EB53    mov         ecx,17
 0042EB58    push        0
 0042EB5A    push        0
 0042EB5C    dec         ecx
>0042EB5D    jne         0042EB58
 0042EB5F    push        ebx
 0042EB60    push        esi
 0042EB61    mov         ebx,edx
 0042EB63    mov         esi,eax
 0042EB65    xor         eax,eax
 0042EB67    push        ebp
 0042EB68    push        42F1DB
 0042EB6D    push        dword ptr fs:[eax]
 0042EB70    mov         dword ptr fs:[eax],esp
 0042EB73    movzx       eax,word ptr [ebx]
 0042EB76    movzx       edx,ax
 0042EB79    cmp         edx,15
>0042EB7C    ja          0042EDE2
 0042EB82    jmp         dword ptr [edx*4+42EB89]
 0042EB82    dd          0042EBE1
 0042EB82    dd          0042EBED
 0042EB82    dd          0042EC15
 0042EB82    dd          0042EC30
 0042EB82    dd          0042EC4A
 0042EB82    dd          0042EC78
 0042EB82    dd          0042ECA6
 0042EB82    dd          0042ECC3
 0042EB82    dd          0042ECE0
 0042EB82    dd          0042EDC9
 0042EB82    dd          0042EDE2
 0042EB82    dd          0042ECF8
 0042EB82    dd          0042EDB8
 0042EB82    dd          0042EDC9
 0042EB82    dd          0042EDE2
 0042EB82    dd          0042EDE2
 0042EB82    dd          0042ED13
 0042EB82    dd          0042ED2E
 0042EB82    dd          0042ED49
 0042EB82    dd          0042ED64
 0042EB82    dd          0042ED7E
 0042EB82    dd          0042ED9B
 0042EBE1    mov         eax,esi
 0042EBE3    call        @WStrClr
>0042EBE8    jmp         0042F149
 0042EBED    cmp         byte ptr ds:[79F68E],0
>0042EBF4    je          0042EC03
 0042EBF6    mov         dx,8
 0042EBFA    mov         ax,1
 0042EBFE    call        VarCastError
 0042EC03    mov         eax,esi
 0042EC05    mov         edx,dword ptr ds:[79F690]
 0042EC0B    call        @WStrFromUStr
>0042EC10    jmp         0042F149
 0042EC15    lea         edx,[ebp-54]
 0042EC18    movsx       eax,word ptr [ebx+8]
 0042EC1C    call        IntToStr
 0042EC21    mov         edx,dword ptr [ebp-54]
 0042EC24    mov         eax,esi
 0042EC26    call        @WStrFromUStr
>0042EC2B    jmp         0042F149
 0042EC30    lea         edx,[ebp-58]
 0042EC33    mov         eax,dword ptr [ebx+8]
 0042EC36    call        IntToStr
 0042EC3B    mov         edx,dword ptr [ebp-58]
 0042EC3E    mov         eax,esi
 0042EC40    call        @WStrFromUStr
>0042EC45    jmp         0042F149
 0042EC4A    fld         dword ptr [ebx+8]
 0042EC4D    fstp        tbyte ptr [ebp-20]
 0042EC50    wait
 0042EC51    movzx       eax,word ptr [ebp-18]
 0042EC55    push        eax
 0042EC56    push        dword ptr [ebp-1C]
 0042EC59    push        dword ptr [ebp-20]
 0042EC5C    lea         edx,[ebp-4]
 0042EC5F    mov         eax,[007C4B88];^gvar_007C7CC8:Pointer
 0042EC64    call        00420B20
 0042EC69    mov         eax,esi
 0042EC6B    mov         edx,dword ptr [ebp-4]
 0042EC6E    call        @WStrFromUStr
>0042EC73    jmp         0042F149
 0042EC78    fld         qword ptr [ebx+8]
 0042EC7B    fstp        tbyte ptr [ebp-30]
 0042EC7E    wait
 0042EC7F    movzx       eax,word ptr [ebp-28]
 0042EC83    push        eax
 0042EC84    push        dword ptr [ebp-2C]
 0042EC87    push        dword ptr [ebp-30]
 0042EC8A    lea         edx,[ebp-8]
 0042EC8D    mov         eax,[007C4B88];^gvar_007C7CC8:Pointer
 0042EC92    call        00420B20
 0042EC97    mov         eax,esi
 0042EC99    mov         edx,dword ptr [ebp-8]
 0042EC9C    call        @WStrFromUStr
>0042ECA1    jmp         0042F149
 0042ECA6    push        dword ptr [ebx+0C]
 0042ECA9    push        dword ptr [ebx+8]
 0042ECAC    lea         eax,[ebp-5C]
 0042ECAF    call        CurrToWStrViaOS
 0042ECB4    mov         edx,dword ptr [ebp-5C]
 0042ECB7    mov         eax,esi
 0042ECB9    call        @WStrAsg
>0042ECBE    jmp         0042F149
 0042ECC3    push        dword ptr [ebx+0C]
 0042ECC6    push        dword ptr [ebx+8]
 0042ECC9    lea         eax,[ebp-60]
 0042ECCC    call        DateToWStrViaOS
 0042ECD1    mov         edx,dword ptr [ebp-60]
 0042ECD4    mov         eax,esi
 0042ECD6    call        @WStrAsg
>0042ECDB    jmp         0042F149
 0042ECE0    push        esi
 0042ECE1    mov         eax,dword ptr [ebx+8]
 0042ECE4    mov         ecx,7FFFFFFF
 0042ECE9    mov         edx,1
 0042ECEE    call        @WStrCopy
>0042ECF3    jmp         0042F149
 0042ECF8    lea         edx,[ebp-64]
 0042ECFB    movzx       eax,word ptr [ebx+8]
 0042ECFF    call        BoolToWStrViaOS
 0042ED04    mov         edx,dword ptr [ebp-64]
 0042ED07    mov         eax,esi
 0042ED09    call        @WStrAsg
>0042ED0E    jmp         0042F149
 0042ED13    lea         edx,[ebp-68]
 0042ED16    movsx       eax,byte ptr [ebx+8]
 0042ED1A    call        IntToStr
 0042ED1F    mov         edx,dword ptr [ebp-68]
 0042ED22    mov         eax,esi
 0042ED24    call        @WStrFromUStr
>0042ED29    jmp         0042F149
 0042ED2E    lea         edx,[ebp-6C]
 0042ED31    movzx       eax,byte ptr [ebx+8]
 0042ED35    call        IntToStr
 0042ED3A    mov         edx,dword ptr [ebp-6C]
 0042ED3D    mov         eax,esi
 0042ED3F    call        @WStrFromUStr
>0042ED44    jmp         0042F149
 0042ED49    lea         edx,[ebp-70]
 0042ED4C    movzx       eax,word ptr [ebx+8]
 0042ED50    call        IntToStr
 0042ED55    mov         edx,dword ptr [ebp-70]
 0042ED58    mov         eax,esi
 0042ED5A    call        @WStrFromUStr
>0042ED5F    jmp         0042F149
 0042ED64    lea         edx,[ebp-74]
 0042ED67    mov         eax,dword ptr [ebx+8]
 0042ED6A    call        0041E348
 0042ED6F    mov         edx,dword ptr [ebp-74]
 0042ED72    mov         eax,esi
 0042ED74    call        @WStrFromUStr
>0042ED79    jmp         0042F149
 0042ED7E    push        dword ptr [ebx+0C]
 0042ED81    push        dword ptr [ebx+8]
 0042ED84    lea         eax,[ebp-78]
 0042ED87    call        0041E304
 0042ED8C    mov         edx,dword ptr [ebp-78]
 0042ED8F    mov         eax,esi
 0042ED91    call        @WStrFromUStr
>0042ED96    jmp         0042F149
 0042ED9B    push        dword ptr [ebx+0C]
 0042ED9E    push        dword ptr [ebx+8]
 0042EDA1    lea         eax,[ebp-7C]
 0042EDA4    call        0041E35C
 0042EDA9    mov         edx,dword ptr [ebp-7C]
 0042EDAC    mov         eax,esi
 0042EDAE    call        @WStrFromUStr
>0042EDB3    jmp         0042F149
 0042EDB8    mov         eax,dword ptr [ebx+8]
 0042EDBB    mov         edx,eax
 0042EDBD    mov         eax,esi
 0042EDBF    call        @VarToWStr
>0042EDC4    jmp         0042F149
 0042EDC9    lea         edx,[ebp-80]
 0042EDCC    mov         eax,ebx
 0042EDCE    call        VarToWStrViaOS
 0042EDD3    mov         edx,dword ptr [ebp-80]
 0042EDD6    mov         eax,esi
 0042EDD8    call        @WStrAsg
>0042EDDD    jmp         0042F149
 0042EDE2    mov         edx,eax
 0042EDE4    sub         dx,100
>0042EDE9    je          0042EDF7
 0042EDEB    dec         dx
>0042EDEE    je          0042EE15
 0042EDF0    dec         dx
>0042EDF3    je          0042EE06
>0042EDF5    jmp         0042EE34
 0042EDF7    mov         eax,esi
 0042EDF9    mov         edx,dword ptr [ebx+8]
 0042EDFC    call        @WStrFromLStr
>0042EE01    jmp         0042F149
 0042EE06    mov         eax,esi
 0042EE08    mov         edx,dword ptr [ebx+8]
 0042EE0B    call        @WStrFromUStr
>0042EE10    jmp         0042F149
 0042EE15    lea         edx,[ebp-84]
 0042EE1B    mov         eax,ebx
 0042EE1D    call        VarToWStrAny
 0042EE22    mov         edx,dword ptr [ebp-84]
 0042EE28    mov         eax,esi
 0042EE2A    call        @WStrAsg
>0042EE2F    jmp         0042F149
 0042EE34    test        ah,40
>0042EE37    je          0042F11B
 0042EE3D    movzx       eax,ax
 0042EE40    and         eax,0FFFFBFFF
 0042EE45    cmp         eax,0C
>0042EE48    jg          0042EE90
>0042EE4A    je          0042F0F1
 0042EE50    cmp         eax,0B
>0042EE53    ja          0042F0FF
 0042EE59    jmp         dword ptr [eax*4+42EE60]
 0042EE59    dd          0042F0FF
 0042EE59    dd          0042F0FF
 0042EE59    dd          0042EEE0
 0042EE59    dd          0042EF03
 0042EE59    dd          0042EF25
 0042EE59    dd          0042EF55
 0042EE59    dd          0042EF85
 0042EE59    dd          0042EFAA
 0042EE59    dd          0042EFCF
 0042EE59    dd          0042F0FF
 0042EE59    dd          0042F0FF
 0042EE59    dd          0042EFE0
 0042EE90    cmp         eax,14
>0042EE93    jg          0042EEBE
>0042EE95    je          0042F08E
 0042EE9B    sub         eax,10
>0042EE9E    je          0042F003
 0042EEA4    dec         eax
>0042EEA5    je          0042F026
 0042EEAB    dec         eax
>0042EEAC    je          0042F049
 0042EEB2    dec         eax
>0042EEB3    je          0042F06C
>0042EEB9    jmp         0042F0FF
 0042EEBE    sub         eax,15
>0042EEC1    je          0042F0B3
 0042EEC7    sub         eax,0EB
>0042EECC    je          0042F0D5
 0042EED2    sub         eax,2
>0042EED5    je          0042F0E3
>0042EEDB    jmp         0042F0FF
 0042EEE0    lea         edx,[ebp-88]
 0042EEE6    mov         eax,dword ptr [ebx+8]
 0042EEE9    movsx       eax,word ptr [eax]
 0042EEEC    call        IntToStr
 0042EEF1    mov         edx,dword ptr [ebp-88]
 0042EEF7    mov         eax,esi
 0042EEF9    call        @WStrFromUStr
>0042EEFE    jmp         0042F149
 0042EF03    lea         edx,[ebp-8C]
 0042EF09    mov         eax,dword ptr [ebx+8]
 0042EF0C    mov         eax,dword ptr [eax]
 0042EF0E    call        IntToStr
 0042EF13    mov         edx,dword ptr [ebp-8C]
 0042EF19    mov         eax,esi
 0042EF1B    call        @WStrFromUStr
>0042EF20    jmp         0042F149
 0042EF25    mov         eax,dword ptr [ebx+8]
 0042EF28    fld         dword ptr [eax]
 0042EF2A    fstp        tbyte ptr [ebp-40]
 0042EF2D    wait
 0042EF2E    movzx       eax,word ptr [ebp-38]
 0042EF32    push        eax
 0042EF33    push        dword ptr [ebp-3C]
 0042EF36    push        dword ptr [ebp-40]
 0042EF39    lea         edx,[ebp-0C]
 0042EF3C    mov         eax,[007C4B88];^gvar_007C7CC8:Pointer
 0042EF41    call        00420B20
 0042EF46    mov         eax,esi
 0042EF48    mov         edx,dword ptr [ebp-0C]
 0042EF4B    call        @WStrFromUStr
>0042EF50    jmp         0042F149
 0042EF55    mov         eax,dword ptr [ebx+8]
 0042EF58    fld         qword ptr [eax]
 0042EF5A    fstp        tbyte ptr [ebp-50]
 0042EF5D    wait
 0042EF5E    movzx       eax,word ptr [ebp-48]
 0042EF62    push        eax
 0042EF63    push        dword ptr [ebp-4C]
 0042EF66    push        dword ptr [ebp-50]
 0042EF69    lea         edx,[ebp-10]
 0042EF6C    mov         eax,[007C4B88];^gvar_007C7CC8:Pointer
 0042EF71    call        00420B20
 0042EF76    mov         eax,esi
 0042EF78    mov         edx,dword ptr [ebp-10]
 0042EF7B    call        @WStrFromUStr
>0042EF80    jmp         0042F149
 0042EF85    mov         eax,dword ptr [ebx+8]
 0042EF88    push        dword ptr [eax+4]
 0042EF8B    push        dword ptr [eax]
 0042EF8D    lea         eax,[ebp-90]
 0042EF93    call        CurrToWStrViaOS
 0042EF98    mov         edx,dword ptr [ebp-90]
 0042EF9E    mov         eax,esi
 0042EFA0    call        @WStrAsg
>0042EFA5    jmp         0042F149
 0042EFAA    mov         eax,dword ptr [ebx+8]
 0042EFAD    push        dword ptr [eax+4]
 0042EFB0    push        dword ptr [eax]
 0042EFB2    lea         eax,[ebp-94]
 0042EFB8    call        DateToWStrViaOS
 0042EFBD    mov         edx,dword ptr [ebp-94]
 0042EFC3    mov         eax,esi
 0042EFC5    call        @WStrAsg
>0042EFCA    jmp         0042F149
 0042EFCF    mov         eax,esi
 0042EFD1    mov         edx,dword ptr [ebx+8]
 0042EFD4    mov         edx,dword ptr [edx]
 0042EFD6    call        @WStrFromPWChar
>0042EFDB    jmp         0042F149
 0042EFE0    lea         edx,[ebp-98]
 0042EFE6    mov         eax,dword ptr [ebx+8]
 0042EFE9    movzx       eax,word ptr [eax]
 0042EFEC    call        BoolToWStrViaOS
 0042EFF1    mov         edx,dword ptr [ebp-98]
 0042EFF7    mov         eax,esi
 0042EFF9    call        @WStrAsg
>0042EFFE    jmp         0042F149
 0042F003    lea         edx,[ebp-9C]
 0042F009    mov         eax,dword ptr [ebx+8]
 0042F00C    movsx       eax,byte ptr [eax]
 0042F00F    call        IntToStr
 0042F014    mov         edx,dword ptr [ebp-9C]
 0042F01A    mov         eax,esi
 0042F01C    call        @WStrFromUStr
>0042F021    jmp         0042F149
 0042F026    lea         edx,[ebp-0A0]
 0042F02C    mov         eax,dword ptr [ebx+8]
 0042F02F    movzx       eax,byte ptr [eax]
 0042F032    call        IntToStr
 0042F037    mov         edx,dword ptr [ebp-0A0]
 0042F03D    mov         eax,esi
 0042F03F    call        @WStrFromUStr
>0042F044    jmp         0042F149
 0042F049    lea         edx,[ebp-0A4]
 0042F04F    mov         eax,dword ptr [ebx+8]
 0042F052    movzx       eax,word ptr [eax]
 0042F055    call        IntToStr
 0042F05A    mov         edx,dword ptr [ebp-0A4]
 0042F060    mov         eax,esi
 0042F062    call        @WStrFromUStr
>0042F067    jmp         0042F149
 0042F06C    lea         edx,[ebp-0A8]
 0042F072    mov         eax,dword ptr [ebx+8]
 0042F075    mov         eax,dword ptr [eax]
 0042F077    call        0041E348
 0042F07C    mov         edx,dword ptr [ebp-0A8]
 0042F082    mov         eax,esi
 0042F084    call        @WStrFromUStr
>0042F089    jmp         0042F149
 0042F08E    mov         eax,dword ptr [ebx+8]
 0042F091    push        dword ptr [eax+4]
 0042F094    push        dword ptr [eax]
 0042F096    lea         eax,[ebp-0AC]
 0042F09C    call        0041E304
 0042F0A1    mov         edx,dword ptr [ebp-0AC]
 0042F0A7    mov         eax,esi
 0042F0A9    call        @WStrFromUStr
>0042F0AE    jmp         0042F149
 0042F0B3    mov         eax,dword ptr [ebx+8]
 0042F0B6    push        dword ptr [eax+4]
 0042F0B9    push        dword ptr [eax]
 0042F0BB    lea         eax,[ebp-0B0]
 0042F0C1    call        0041E35C
 0042F0C6    mov         edx,dword ptr [ebp-0B0]
 0042F0CC    mov         eax,esi
 0042F0CE    call        @WStrFromUStr
>0042F0D3    jmp         0042F149
 0042F0D5    mov         eax,esi
 0042F0D7    mov         edx,dword ptr [ebx+8]
 0042F0DA    mov         edx,dword ptr [edx]
 0042F0DC    call        @WStrFromPChar
>0042F0E1    jmp         0042F149
 0042F0E3    mov         eax,esi
 0042F0E5    mov         edx,dword ptr [ebx+8]
 0042F0E8    mov         edx,dword ptr [edx]
 0042F0EA    call        @WStrFromPWChar
>0042F0EF    jmp         0042F149
 0042F0F1    mov         eax,dword ptr [ebx+8]
 0042F0F4    mov         edx,eax
 0042F0F6    mov         eax,esi
 0042F0F8    call        @VarToWStr
>0042F0FD    jmp         0042F149
 0042F0FF    lea         edx,[ebp-0B4]
 0042F105    mov         eax,ebx
 0042F107    call        VarToWStrViaOS
 0042F10C    mov         edx,dword ptr [ebp-0B4]
 0042F112    mov         eax,esi
 0042F114    call        @WStrAsg
>0042F119    jmp         0042F149
 0042F11B    mov         eax,esi
 0042F11D    call        @WStrClr
 0042F122    mov         edx,eax
 0042F124    mov         eax,ebx
 0042F126    call        VarToWStrCustom
 0042F12B    test        al,al
>0042F12D    jne         0042F149
 0042F12F    lea         edx,[ebp-0B8]
 0042F135    mov         eax,ebx
 0042F137    call        VarToWStrViaOS
 0042F13C    mov         edx,dword ptr [ebp-0B8]
 0042F142    mov         eax,esi
 0042F144    call        @WStrAsg
 0042F149    xor         eax,eax
 0042F14B    pop         edx
 0042F14C    pop         ecx
 0042F14D    pop         ecx
 0042F14E    mov         dword ptr fs:[eax],edx
 0042F151    push        42F1E5
 0042F156    lea         eax,[ebp-0B8]
 0042F15C    mov         edx,2
 0042F161    call        @WStrArrayClr
 0042F166    lea         eax,[ebp-0B0]
 0042F16C    mov         edx,6
 0042F171    call        @UStrArrayClr
 0042F176    lea         eax,[ebp-98]
 0042F17C    mov         edx,3
 0042F181    call        @WStrArrayClr
 0042F186    lea         eax,[ebp-8C]
 0042F18C    mov         edx,2
 0042F191    call        @UStrArrayClr
 0042F196    lea         eax,[ebp-84]
 0042F19C    mov         edx,2
 0042F1A1    call        @WStrArrayClr
 0042F1A6    lea         eax,[ebp-7C]
 0042F1A9    mov         edx,6
 0042F1AE    call        @UStrArrayClr
 0042F1B3    lea         eax,[ebp-64]
 0042F1B6    mov         edx,3
 0042F1BB    call        @WStrArrayClr
 0042F1C0    lea         eax,[ebp-58]
 0042F1C3    mov         edx,2
 0042F1C8    call        @UStrArrayClr
 0042F1CD    lea         eax,[ebp-10]
 0042F1D0    mov         edx,4
 0042F1D5    call        @UStrArrayClr
 0042F1DA    ret
>0042F1DB    jmp         @HandleFinally
>0042F1E0    jmp         0042F156
 0042F1E5    pop         esi
 0042F1E6    pop         ebx
 0042F1E7    mov         esp,ebp
 0042F1E9    pop         ebp
 0042F1EA    ret
*}
end;

//0042F1EC
function VarToUStrAny(const V:TVarData):UnicodeString;
begin
{*
 0042F1EC    push        ebp
 0042F1ED    mov         ebp,esp
 0042F1EF    add         esp,0FFFFFFF0
 0042F1F2    push        ebx
 0042F1F3    push        esi
 0042F1F4    mov         esi,edx
 0042F1F6    mov         ebx,eax
 0042F1F8    lea         eax,[ebp-10]
 0042F1FB    push        eax
 0042F1FC    call        oleaut32.VariantInit
 0042F201    xor         eax,eax
 0042F203    push        ebp
 0042F204    push        42F242
 0042F209    push        dword ptr fs:[eax]
 0042F20C    mov         dword ptr fs:[eax],esp
 0042F20F    mov         edx,ebx
 0042F211    lea         eax,[ebp-10]
 0042F214    call        @VarCopy
 0042F219    lea         eax,[ebp-10]
 0042F21C    call        dword ptr ds:[7C9F50]
 0042F222    lea         edx,[ebp-10]
 0042F225    mov         eax,esi
 0042F227    call        @VarToUStr
 0042F22C    xor         eax,eax
 0042F22E    pop         edx
 0042F22F    pop         ecx
 0042F230    pop         ecx
 0042F231    mov         dword ptr fs:[eax],edx
 0042F234    push        42F249
 0042F239    lea         eax,[ebp-10]
 0042F23C    call        @VarClear
 0042F241    ret
>0042F242    jmp         @HandleFinally
>0042F247    jmp         0042F239
 0042F249    pop         esi
 0042F24A    pop         ebx
 0042F24B    mov         esp,ebp
 0042F24D    pop         ebp
 0042F24E    ret
*}
end;

//0042F250
function VarToUStrCustom(const V:TVarData; var AValue:UnicodeString):Boolean;
begin
{*
 0042F250    push        ebp
 0042F251    mov         ebp,esp
 0042F253    add         esp,0FFFFFFE4
 0042F256    push        ebx
 0042F257    mov         dword ptr [ebp-4],edx
 0042F25A    mov         ebx,eax
 0042F25C    mov         eax,dword ptr [ebp-4]
 0042F25F    test        eax,eax
>0042F261    je          0042F267
 0042F263    xor         edx,edx
 0042F265    mov         dword ptr [eax],edx
 0042F267    lea         edx,[ebp-0C]
 0042F26A    movzx       eax,word ptr [ebx]
 0042F26D    call        FindCustomVariantType
 0042F272    mov         byte ptr [ebp-5],al
 0042F275    cmp         byte ptr [ebp-5],0
>0042F279    je          0042F2CC
 0042F27B    lea         eax,[ebp-1C]
 0042F27E    push        eax
 0042F27F    call        oleaut32.VariantInit
 0042F284    xor         eax,eax
 0042F286    push        ebp
 0042F287    push        42F2C5
 0042F28C    push        dword ptr fs:[eax]
 0042F28F    mov         dword ptr fs:[eax],esp
 0042F292    push        102
 0042F297    mov         ecx,ebx
 0042F299    lea         edx,[ebp-1C]
 0042F29C    mov         eax,dword ptr [ebp-0C]
 0042F29F    mov         ebx,dword ptr [eax]
 0042F2A1    call        dword ptr [ebx+1C]
 0042F2A4    lea         edx,[ebp-1C]
 0042F2A7    mov         eax,dword ptr [ebp-4]
 0042F2AA    call        @VarToUStr
 0042F2AF    xor         eax,eax
 0042F2B1    pop         edx
 0042F2B2    pop         ecx
 0042F2B3    pop         ecx
 0042F2B4    mov         dword ptr fs:[eax],edx
 0042F2B7    push        42F2CC
 0042F2BC    lea         eax,[ebp-1C]
 0042F2BF    call        @VarClear
 0042F2C4    ret
>0042F2C5    jmp         @HandleFinally
>0042F2CA    jmp         0042F2BC
 0042F2CC    movzx       eax,byte ptr [ebp-5]
 0042F2D0    pop         ebx
 0042F2D1    mov         esp,ebp
 0042F2D3    pop         ebp
 0042F2D4    ret
*}
end;

//0042F2D8
procedure @VarToUStr(var S:UnicodeString; const V:TVarData);
begin
{*
 0042F2D8    push        ebp
 0042F2D9    mov         ebp,esp
 0042F2DB    mov         ecx,17
 0042F2E0    push        0
 0042F2E2    push        0
 0042F2E4    dec         ecx
>0042F2E5    jne         0042F2E0
 0042F2E7    push        ecx
 0042F2E8    push        ebx
 0042F2E9    push        esi
 0042F2EA    mov         ebx,edx
 0042F2EC    mov         esi,eax
 0042F2EE    xor         eax,eax
 0042F2F0    push        ebp
 0042F2F1    push        42F940
 0042F2F6    push        dword ptr fs:[eax]
 0042F2F9    mov         dword ptr fs:[eax],esp
 0042F2FC    movzx       eax,word ptr [ebx]
 0042F2FF    movzx       edx,ax
 0042F302    cmp         edx,15
>0042F305    ja          0042F57E
 0042F30B    jmp         dword ptr [edx*4+42F312]
 0042F30B    dd          0042F36A
 0042F30B    dd          0042F376
 0042F30B    dd          0042F39E
 0042F30B    dd          0042F3B9
 0042F30B    dd          0042F3D3
 0042F30B    dd          0042F401
 0042F30B    dd          0042F50A
 0042F30B    dd          0042F527
 0042F30B    dd          0042F4E5
 0042F30B    dd          0042F55F
 0042F30B    dd          0042F57E
 0042F30B    dd          0042F544
 0042F30B    dd          0042F4D4
 0042F30B    dd          0042F55F
 0042F30B    dd          0042F57E
 0042F30B    dd          0042F57E
 0042F30B    dd          0042F42F
 0042F30B    dd          0042F44A
 0042F30B    dd          0042F465
 0042F30B    dd          0042F480
 0042F30B    dd          0042F49A
 0042F30B    dd          0042F4B7
 0042F36A    mov         eax,esi
 0042F36C    call        @UStrClr
>0042F371    jmp         0042F8E8
 0042F376    cmp         byte ptr ds:[79F68E],0
>0042F37D    je          0042F38C
 0042F37F    mov         dx,8
 0042F383    mov         ax,1
 0042F387    call        VarCastError
 0042F38C    mov         eax,esi
 0042F38E    mov         edx,dword ptr ds:[79F690]
 0042F394    call        @UStrAsg
>0042F399    jmp         0042F8E8
 0042F39E    lea         edx,[ebp-54]
 0042F3A1    movsx       eax,word ptr [ebx+8]
 0042F3A5    call        IntToStr
 0042F3AA    mov         edx,dword ptr [ebp-54]
 0042F3AD    mov         eax,esi
 0042F3AF    call        @UStrAsg
>0042F3B4    jmp         0042F8E8
 0042F3B9    lea         edx,[ebp-58]
 0042F3BC    mov         eax,dword ptr [ebx+8]
 0042F3BF    call        IntToStr
 0042F3C4    mov         edx,dword ptr [ebp-58]
 0042F3C7    mov         eax,esi
 0042F3C9    call        @UStrAsg
>0042F3CE    jmp         0042F8E8
 0042F3D3    fld         dword ptr [ebx+8]
 0042F3D6    fstp        tbyte ptr [ebp-20]
 0042F3D9    wait
 0042F3DA    movzx       eax,word ptr [ebp-18]
 0042F3DE    push        eax
 0042F3DF    push        dword ptr [ebp-1C]
 0042F3E2    push        dword ptr [ebp-20]
 0042F3E5    lea         edx,[ebp-4]
 0042F3E8    mov         eax,[007C4B88];^gvar_007C7CC8:Pointer
 0042F3ED    call        00420B20
 0042F3F2    mov         eax,esi
 0042F3F4    mov         edx,dword ptr [ebp-4]
 0042F3F7    call        @UStrAsg
>0042F3FC    jmp         0042F8E8
 0042F401    fld         qword ptr [ebx+8]
 0042F404    fstp        tbyte ptr [ebp-30]
 0042F407    wait
 0042F408    movzx       eax,word ptr [ebp-28]
 0042F40C    push        eax
 0042F40D    push        dword ptr [ebp-2C]
 0042F410    push        dword ptr [ebp-30]
 0042F413    lea         edx,[ebp-8]
 0042F416    mov         eax,[007C4B88];^gvar_007C7CC8:Pointer
 0042F41B    call        00420B20
 0042F420    mov         eax,esi
 0042F422    mov         edx,dword ptr [ebp-8]
 0042F425    call        @UStrAsg
>0042F42A    jmp         0042F8E8
 0042F42F    lea         edx,[ebp-5C]
 0042F432    movsx       eax,byte ptr [ebx+8]
 0042F436    call        IntToStr
 0042F43B    mov         edx,dword ptr [ebp-5C]
 0042F43E    mov         eax,esi
 0042F440    call        @UStrAsg
>0042F445    jmp         0042F8E8
 0042F44A    lea         edx,[ebp-60]
 0042F44D    movzx       eax,byte ptr [ebx+8]
 0042F451    call        IntToStr
 0042F456    mov         edx,dword ptr [ebp-60]
 0042F459    mov         eax,esi
 0042F45B    call        @UStrAsg
>0042F460    jmp         0042F8E8
 0042F465    lea         edx,[ebp-64]
 0042F468    movzx       eax,word ptr [ebx+8]
 0042F46C    call        IntToStr
 0042F471    mov         edx,dword ptr [ebp-64]
 0042F474    mov         eax,esi
 0042F476    call        @UStrAsg
>0042F47B    jmp         0042F8E8
 0042F480    lea         edx,[ebp-68]
 0042F483    mov         eax,dword ptr [ebx+8]
 0042F486    call        0041E348
 0042F48B    mov         edx,dword ptr [ebp-68]
 0042F48E    mov         eax,esi
 0042F490    call        @UStrAsg
>0042F495    jmp         0042F8E8
 0042F49A    push        dword ptr [ebx+0C]
 0042F49D    push        dword ptr [ebx+8]
 0042F4A0    lea         eax,[ebp-6C]
 0042F4A3    call        0041E304
 0042F4A8    mov         edx,dword ptr [ebp-6C]
 0042F4AB    mov         eax,esi
 0042F4AD    call        @UStrAsg
>0042F4B2    jmp         0042F8E8
 0042F4B7    push        dword ptr [ebx+0C]
 0042F4BA    push        dword ptr [ebx+8]
 0042F4BD    lea         eax,[ebp-70]
 0042F4C0    call        0041E35C
 0042F4C5    mov         edx,dword ptr [ebp-70]
 0042F4C8    mov         eax,esi
 0042F4CA    call        @UStrAsg
>0042F4CF    jmp         0042F8E8
 0042F4D4    mov         eax,dword ptr [ebx+8]
 0042F4D7    mov         edx,eax
 0042F4D9    mov         eax,esi
 0042F4DB    call        @VarToUStr
>0042F4E0    jmp         0042F8E8
 0042F4E5    lea         eax,[ebp-74]
 0042F4E8    push        eax
 0042F4E9    mov         eax,dword ptr [ebx+8]
 0042F4EC    mov         ecx,7FFFFFFF
 0042F4F1    mov         edx,1
 0042F4F6    call        @WStrCopy
 0042F4FB    mov         edx,dword ptr [ebp-74]
 0042F4FE    mov         eax,esi
 0042F500    call        @UStrFromWStr
>0042F505    jmp         0042F8E8
 0042F50A    push        dword ptr [ebx+0C]
 0042F50D    push        dword ptr [ebx+8]
 0042F510    lea         eax,[ebp-78]
 0042F513    call        CurrToWStrViaOS
 0042F518    mov         edx,dword ptr [ebp-78]
 0042F51B    mov         eax,esi
 0042F51D    call        @UStrFromWStr
>0042F522    jmp         0042F8E8
 0042F527    push        dword ptr [ebx+0C]
 0042F52A    push        dword ptr [ebx+8]
 0042F52D    lea         eax,[ebp-7C]
 0042F530    call        DateToWStrViaOS
 0042F535    mov         edx,dword ptr [ebp-7C]
 0042F538    mov         eax,esi
 0042F53A    call        @UStrFromWStr
>0042F53F    jmp         0042F8E8
 0042F544    lea         edx,[ebp-80]
 0042F547    movzx       eax,word ptr [ebx+8]
 0042F54B    call        BoolToWStrViaOS
 0042F550    mov         edx,dword ptr [ebp-80]
 0042F553    mov         eax,esi
 0042F555    call        @UStrFromWStr
>0042F55A    jmp         0042F8E8
 0042F55F    lea         edx,[ebp-84]
 0042F565    mov         eax,ebx
 0042F567    call        VarToWStrViaOS
 0042F56C    mov         edx,dword ptr [ebp-84]
 0042F572    mov         eax,esi
 0042F574    call        @UStrFromWStr
>0042F579    jmp         0042F8E8
 0042F57E    mov         edx,eax
 0042F580    sub         dx,100
>0042F585    je          0042F593
 0042F587    dec         dx
>0042F58A    je          0042F5B1
 0042F58C    dec         dx
>0042F58F    je          0042F5A2
>0042F591    jmp         0042F5D0
 0042F593    mov         eax,esi
 0042F595    mov         edx,dword ptr [ebx+8]
 0042F598    call        @UStrFromLStr
>0042F59D    jmp         0042F8E8
 0042F5A2    mov         eax,esi
 0042F5A4    mov         edx,dword ptr [ebx+8]
 0042F5A7    call        @UStrAsg
>0042F5AC    jmp         0042F8E8
 0042F5B1    lea         edx,[ebp-88]
 0042F5B7    mov         eax,ebx
 0042F5B9    call        VarToUStrAny
 0042F5BE    mov         edx,dword ptr [ebp-88]
 0042F5C4    mov         eax,esi
 0042F5C6    call        @UStrAsg
>0042F5CB    jmp         0042F8E8
 0042F5D0    test        ah,40
>0042F5D3    je          0042F8BA
 0042F5D9    movzx       eax,ax
 0042F5DC    and         eax,0FFFFBFFF
 0042F5E1    cmp         eax,0C
>0042F5E4    jg          0042F62C
>0042F5E6    je          0042F7F6
 0042F5EC    cmp         eax,0B
>0042F5EF    ja          0042F89E
 0042F5F5    jmp         dword ptr [eax*4+42F5FC]
 0042F5F5    dd          0042F89E
 0042F5F5    dd          0042F89E
 0042F5F5    dd          0042F67C
 0042F5F5    dd          0042F69F
 0042F5F5    dd          0042F6C1
 0042F5F5    dd          0042F6F1
 0042F5F5    dd          0042F807
 0042F5F5    dd          0042F82C
 0042F5F5    dd          0042F851
 0042F5F5    dd          0042F89E
 0042F5F5    dd          0042F89E
 0042F5F5    dd          0042F862
 0042F62C    cmp         eax,14
>0042F62F    jg          0042F65A
>0042F631    je          0042F7AC
 0042F637    sub         eax,10
>0042F63A    je          0042F721
 0042F640    dec         eax
>0042F641    je          0042F744
 0042F647    dec         eax
>0042F648    je          0042F767
 0042F64E    dec         eax
>0042F64F    je          0042F78A
>0042F655    jmp         0042F89E
 0042F65A    sub         eax,15
>0042F65D    je          0042F7D1
 0042F663    sub         eax,0EB
>0042F668    je          0042F882
 0042F66E    sub         eax,2
>0042F671    je          0042F890
>0042F677    jmp         0042F89E
 0042F67C    lea         edx,[ebp-8C]
 0042F682    mov         eax,dword ptr [ebx+8]
 0042F685    movsx       eax,word ptr [eax]
 0042F688    call        IntToStr
 0042F68D    mov         edx,dword ptr [ebp-8C]
 0042F693    mov         eax,esi
 0042F695    call        @UStrAsg
>0042F69A    jmp         0042F8E8
 0042F69F    lea         edx,[ebp-90]
 0042F6A5    mov         eax,dword ptr [ebx+8]
 0042F6A8    mov         eax,dword ptr [eax]
 0042F6AA    call        IntToStr
 0042F6AF    mov         edx,dword ptr [ebp-90]
 0042F6B5    mov         eax,esi
 0042F6B7    call        @UStrAsg
>0042F6BC    jmp         0042F8E8
 0042F6C1    mov         eax,dword ptr [ebx+8]
 0042F6C4    fld         dword ptr [eax]
 0042F6C6    fstp        tbyte ptr [ebp-40]
 0042F6C9    wait
 0042F6CA    movzx       eax,word ptr [ebp-38]
 0042F6CE    push        eax
 0042F6CF    push        dword ptr [ebp-3C]
 0042F6D2    push        dword ptr [ebp-40]
 0042F6D5    lea         edx,[ebp-0C]
 0042F6D8    mov         eax,[007C4B88];^gvar_007C7CC8:Pointer
 0042F6DD    call        00420B20
 0042F6E2    mov         eax,esi
 0042F6E4    mov         edx,dword ptr [ebp-0C]
 0042F6E7    call        @UStrAsg
>0042F6EC    jmp         0042F8E8
 0042F6F1    mov         eax,dword ptr [ebx+8]
 0042F6F4    fld         qword ptr [eax]
 0042F6F6    fstp        tbyte ptr [ebp-50]
 0042F6F9    wait
 0042F6FA    movzx       eax,word ptr [ebp-48]
 0042F6FE    push        eax
 0042F6FF    push        dword ptr [ebp-4C]
 0042F702    push        dword ptr [ebp-50]
 0042F705    lea         edx,[ebp-10]
 0042F708    mov         eax,[007C4B88];^gvar_007C7CC8:Pointer
 0042F70D    call        00420B20
 0042F712    mov         eax,esi
 0042F714    mov         edx,dword ptr [ebp-10]
 0042F717    call        @UStrAsg
>0042F71C    jmp         0042F8E8
 0042F721    lea         edx,[ebp-94]
 0042F727    mov         eax,dword ptr [ebx+8]
 0042F72A    movsx       eax,byte ptr [eax]
 0042F72D    call        IntToStr
 0042F732    mov         edx,dword ptr [ebp-94]
 0042F738    mov         eax,esi
 0042F73A    call        @UStrAsg
>0042F73F    jmp         0042F8E8
 0042F744    lea         edx,[ebp-98]
 0042F74A    mov         eax,dword ptr [ebx+8]
 0042F74D    movzx       eax,byte ptr [eax]
 0042F750    call        IntToStr
 0042F755    mov         edx,dword ptr [ebp-98]
 0042F75B    mov         eax,esi
 0042F75D    call        @UStrAsg
>0042F762    jmp         0042F8E8
 0042F767    lea         edx,[ebp-9C]
 0042F76D    mov         eax,dword ptr [ebx+8]
 0042F770    movzx       eax,word ptr [eax]
 0042F773    call        IntToStr
 0042F778    mov         edx,dword ptr [ebp-9C]
 0042F77E    mov         eax,esi
 0042F780    call        @UStrAsg
>0042F785    jmp         0042F8E8
 0042F78A    lea         edx,[ebp-0A0]
 0042F790    mov         eax,dword ptr [ebx+8]
 0042F793    mov         eax,dword ptr [eax]
 0042F795    call        0041E348
 0042F79A    mov         edx,dword ptr [ebp-0A0]
 0042F7A0    mov         eax,esi
 0042F7A2    call        @UStrAsg
>0042F7A7    jmp         0042F8E8
 0042F7AC    mov         eax,dword ptr [ebx+8]
 0042F7AF    push        dword ptr [eax+4]
 0042F7B2    push        dword ptr [eax]
 0042F7B4    lea         eax,[ebp-0A4]
 0042F7BA    call        0041E304
 0042F7BF    mov         edx,dword ptr [ebp-0A4]
 0042F7C5    mov         eax,esi
 0042F7C7    call        @UStrAsg
>0042F7CC    jmp         0042F8E8
 0042F7D1    mov         eax,dword ptr [ebx+8]
 0042F7D4    push        dword ptr [eax+4]
 0042F7D7    push        dword ptr [eax]
 0042F7D9    lea         eax,[ebp-0A8]
 0042F7DF    call        0041E35C
 0042F7E4    mov         edx,dword ptr [ebp-0A8]
 0042F7EA    mov         eax,esi
 0042F7EC    call        @UStrAsg
>0042F7F1    jmp         0042F8E8
 0042F7F6    mov         eax,dword ptr [ebx+8]
 0042F7F9    mov         edx,eax
 0042F7FB    mov         eax,esi
 0042F7FD    call        @VarToUStr
>0042F802    jmp         0042F8E8
 0042F807    mov         eax,dword ptr [ebx+8]
 0042F80A    push        dword ptr [eax+4]
 0042F80D    push        dword ptr [eax]
 0042F80F    lea         eax,[ebp-0AC]
 0042F815    call        CurrToWStrViaOS
 0042F81A    mov         edx,dword ptr [ebp-0AC]
 0042F820    mov         eax,esi
 0042F822    call        @UStrFromWStr
>0042F827    jmp         0042F8E8
 0042F82C    mov         eax,dword ptr [ebx+8]
 0042F82F    push        dword ptr [eax+4]
 0042F832    push        dword ptr [eax]
 0042F834    lea         eax,[ebp-0B0]
 0042F83A    call        DateToWStrViaOS
 0042F83F    mov         edx,dword ptr [ebp-0B0]
 0042F845    mov         eax,esi
 0042F847    call        @UStrFromWStr
>0042F84C    jmp         0042F8E8
 0042F851    mov         eax,esi
 0042F853    mov         edx,dword ptr [ebx+8]
 0042F856    mov         edx,dword ptr [edx]
 0042F858    call        @UStrFromPWChar
>0042F85D    jmp         0042F8E8
 0042F862    lea         edx,[ebp-0B4]
 0042F868    mov         eax,dword ptr [ebx+8]
 0042F86B    movzx       eax,word ptr [eax]
 0042F86E    call        BoolToWStrViaOS
 0042F873    mov         edx,dword ptr [ebp-0B4]
 0042F879    mov         eax,esi
 0042F87B    call        @UStrFromWStr
>0042F880    jmp         0042F8E8
 0042F882    mov         eax,esi
 0042F884    mov         edx,dword ptr [ebx+8]
 0042F887    mov         edx,dword ptr [edx]
 0042F889    call        @UStrFromPChar
>0042F88E    jmp         0042F8E8
 0042F890    mov         eax,esi
 0042F892    mov         edx,dword ptr [ebx+8]
 0042F895    mov         edx,dword ptr [edx]
 0042F897    call        @UStrFromPWChar
>0042F89C    jmp         0042F8E8
 0042F89E    lea         edx,[ebp-0B8]
 0042F8A4    mov         eax,ebx
 0042F8A6    call        VarToWStrViaOS
 0042F8AB    mov         edx,dword ptr [ebp-0B8]
 0042F8B1    mov         eax,esi
 0042F8B3    call        @UStrFromWStr
>0042F8B8    jmp         0042F8E8
 0042F8BA    mov         eax,esi
 0042F8BC    call        @UStrClr
 0042F8C1    mov         edx,eax
 0042F8C3    mov         eax,ebx
 0042F8C5    call        VarToUStrCustom
 0042F8CA    test        al,al
>0042F8CC    jne         0042F8E8
 0042F8CE    lea         edx,[ebp-0BC]
 0042F8D4    mov         eax,ebx
 0042F8D6    call        VarToWStrViaOS
 0042F8DB    mov         edx,dword ptr [ebp-0BC]
 0042F8E1    mov         eax,esi
 0042F8E3    call        @UStrFromWStr
 0042F8E8    xor         eax,eax
 0042F8EA    pop         edx
 0042F8EB    pop         ecx
 0042F8EC    pop         ecx
 0042F8ED    mov         dword ptr fs:[eax],edx
 0042F8F0    push        42F947
 0042F8F5    lea         eax,[ebp-0BC]
 0042F8FB    mov         edx,5
 0042F900    call        @WStrArrayClr
 0042F905    lea         eax,[ebp-0A8]
 0042F90B    mov         edx,9
 0042F910    call        @UStrArrayClr
 0042F915    lea         eax,[ebp-84]
 0042F91B    mov         edx,5
 0042F920    call        @WStrArrayClr
 0042F925    lea         eax,[ebp-70]
 0042F928    mov         edx,8
 0042F92D    call        @UStrArrayClr
 0042F932    lea         eax,[ebp-10]
 0042F935    mov         edx,4
 0042F93A    call        @UStrArrayClr
 0042F93F    ret
>0042F940    jmp         @HandleFinally
>0042F945    jmp         0042F8F5
 0042F947    pop         esi
 0042F948    pop         ebx
 0042F949    mov         esp,ebp
 0042F94B    pop         ebp
 0042F94C    ret
*}
end;

//0042F950
procedure AnyToIntf(var Intf:IInterface; const V:TVarData);
begin
{*
 0042F950    push        ebp
 0042F951    mov         ebp,esp
 0042F953    add         esp,0FFFFFFF0
 0042F956    push        ebx
 0042F957    push        esi
 0042F958    mov         esi,edx
 0042F95A    mov         ebx,eax
 0042F95C    lea         eax,[ebp-10]
 0042F95F    push        eax
 0042F960    call        oleaut32.VariantInit
 0042F965    xor         eax,eax
 0042F967    push        ebp
 0042F968    push        42F9BA
 0042F96D    push        dword ptr fs:[eax]
 0042F970    mov         dword ptr fs:[eax],esp
 0042F973    mov         edx,esi
 0042F975    lea         eax,[ebp-10]
 0042F978    call        @VarCopy
 0042F97D    lea         eax,[ebp-10]
 0042F980    call        dword ptr ds:[7C9F50]
 0042F986    cmp         word ptr [ebp-10],0D
>0042F98B    je          0042F99A
 0042F98D    mov         dx,0D
 0042F991    mov         ax,101
 0042F995    call        VarCastError
 0042F99A    mov         eax,ebx
 0042F99C    mov         edx,dword ptr [ebp-8]
 0042F99F    call        @IntfCopy
 0042F9A4    xor         eax,eax
 0042F9A6    pop         edx
 0042F9A7    pop         ecx
 0042F9A8    pop         ecx
 0042F9A9    mov         dword ptr fs:[eax],edx
 0042F9AC    push        42F9C1
 0042F9B1    lea         eax,[ebp-10]
 0042F9B4    call        @VarClear
 0042F9B9    ret
>0042F9BA    jmp         @HandleFinally
>0042F9BF    jmp         0042F9B1
 0042F9C1    pop         esi
 0042F9C2    pop         ebx
 0042F9C3    mov         esp,ebp
 0042F9C5    pop         ebp
 0042F9C6    ret
*}
end;

//0042F9C8
procedure @VarToIntf(var Intf:IInterface; const V:TVarData);
begin
{*
 0042F9C8    push        ebx
 0042F9C9    push        esi
 0042F9CA    push        ecx
 0042F9CB    mov         ebx,edx
 0042F9CD    mov         esi,eax
 0042F9CF    movzx       eax,word ptr [ebx]
 0042F9D2    cmp         eax,0D
>0042F9D5    jg          0042F9E7
>0042F9D7    je          0042FA24
 0042F9D9    sub         eax,1
>0042F9DC    jb          0042F9FC
>0042F9DE    je          0042FA05
 0042F9E0    sub         eax,8
>0042F9E3    je          0042FA24
>0042F9E5    jmp         0042FA49
 0042F9E7    sub         eax,101
>0042F9EC    je          0042FA3E
 0042F9EE    sub         eax,3F08
>0042F9F3    je          0042FA30
 0042F9F5    sub         eax,4
>0042F9F8    je          0042FA30
>0042F9FA    jmp         0042FA49
 0042F9FC    mov         eax,esi
 0042F9FE    call        @IntfClear
>0042FA03    jmp         0042FA7D
 0042FA05    cmp         byte ptr ds:[79F68E],0
>0042FA0C    je          0042FA1B
 0042FA0E    mov         dx,0D
 0042FA12    mov         ax,1
 0042FA16    call        VarCastError
 0042FA1B    mov         eax,esi
 0042FA1D    call        @IntfClear
>0042FA22    jmp         0042FA7D
 0042FA24    mov         eax,esi
 0042FA26    mov         edx,dword ptr [ebx+8]
 0042FA29    call        @IntfCopy
>0042FA2E    jmp         0042FA7D
 0042FA30    mov         eax,esi
 0042FA32    mov         edx,dword ptr [ebx+8]
 0042FA35    mov         edx,dword ptr [edx]
 0042FA37    call        @IntfCopy
>0042FA3C    jmp         0042FA7D
 0042FA3E    mov         edx,ebx
 0042FA40    mov         eax,esi
 0042FA42    call        AnyToIntf
>0042FA47    jmp         0042FA7D
 0042FA49    mov         edx,esp
 0042FA4B    movzx       eax,word ptr [ebx]
 0042FA4E    call        FindCustomVariantType
 0042FA53    test        al,al
>0042FA55    je          0042FA71
 0042FA57    mov         eax,esi
 0042FA59    call        @IntfClear
 0042FA5E    mov         ecx,eax
 0042FA60    mov         edx,42FA84
 0042FA65    mov         eax,dword ptr [esp]
 0042FA68    call        TObject.GetInterface
 0042FA6D    test        al,al
>0042FA6F    jne         0042FA7D
 0042FA71    movzx       eax,word ptr [ebx]
 0042FA74    mov         dx,0D
 0042FA78    call        VarCastError
 0042FA7D    pop         edx
 0042FA7E    pop         esi
 0042FA7F    pop         ebx
 0042FA80    ret
*}
end;

//0042FA94
procedure @VarToDisp(var Dispatch:IDispatch; const V:TVarData);
begin
{*
 0042FA94    push        ebx
 0042FA95    push        esi
 0042FA96    push        ecx
 0042FA97    mov         ebx,edx
 0042FA99    mov         esi,eax
 0042FA9B    movzx       eax,word ptr [ebx]
 0042FA9E    sub         ax,1
>0042FAA2    jb          0042FAB4
>0042FAA4    je          0042FABD
 0042FAA6    sub         ax,8
>0042FAAA    je          0042FADC
 0042FAAC    sub         ax,4000
>0042FAB0    je          0042FAE8
>0042FAB2    jmp         0042FAF6
 0042FAB4    mov         eax,esi
 0042FAB6    call        @IntfClear
>0042FABB    jmp         0042FB2A
 0042FABD    cmp         byte ptr ds:[79F68E],0
>0042FAC4    je          0042FAD3
 0042FAC6    mov         dx,9
 0042FACA    mov         ax,1
 0042FACE    call        VarCastError
 0042FAD3    mov         eax,esi
 0042FAD5    call        @IntfClear
>0042FADA    jmp         0042FB2A
 0042FADC    mov         eax,esi
 0042FADE    mov         edx,dword ptr [ebx+8]
 0042FAE1    call        @IntfCopy
>0042FAE6    jmp         0042FB2A
 0042FAE8    mov         eax,esi
 0042FAEA    mov         edx,dword ptr [ebx+8]
 0042FAED    mov         edx,dword ptr [edx]
 0042FAEF    call        @IntfCopy
>0042FAF4    jmp         0042FB2A
 0042FAF6    mov         edx,esp
 0042FAF8    movzx       eax,word ptr [ebx]
 0042FAFB    call        FindCustomVariantType
 0042FB00    test        al,al
>0042FB02    je          0042FB1E
 0042FB04    mov         eax,esi
 0042FB06    call        @IntfClear
 0042FB0B    mov         ecx,eax
 0042FB0D    mov         edx,42FB30
 0042FB12    mov         eax,dword ptr [esp]
 0042FB15    call        TObject.GetInterface
 0042FB1A    test        al,al
>0042FB1C    jne         0042FB2A
 0042FB1E    movzx       eax,word ptr [ebx]
 0042FB21    mov         dx,9
 0042FB25    call        VarCastError
 0042FB2A    pop         edx
 0042FB2B    pop         esi
 0042FB2C    pop         ebx
 0042FB2D    ret
*}
end;

//0042FB40
procedure @VarFromInt(var V:TVarData; const Value:Integer; const Range:ShortInt);
begin
{*
 0042FB40    push        ebx
 0042FB41    push        esi
 0042FB42    push        edi
 0042FB43    mov         ebx,ecx
 0042FB45    mov         esi,edx
 0042FB47    mov         edi,eax
 0042FB49    test        word ptr [edi],0BFE8
>0042FB4E    je          0042FB57
 0042FB50    mov         eax,edi
 0042FB52    call        VarClearDeep
 0042FB57    cmp         byte ptr ds:[79F694],0
>0042FB5E    je          0042FB70
 0042FB60    movsx       eax,bl
 0042FB63    movzx       eax,word ptr [eax*2+79F6C0]
 0042FB6B    mov         word ptr [edi],ax
>0042FB6E    jmp         0042FB75
 0042FB70    mov         word ptr [edi],3
 0042FB75    mov         dword ptr [edi+8],esi
 0042FB78    pop         edi
 0042FB79    pop         esi
 0042FB7A    pop         ebx
 0042FB7B    ret
*}
end;

//0042FB7C
procedure @VarFromInteger(var V:TVarData; const Value:Integer);
begin
{*
 0042FB7C    push        ebx
 0042FB7D    push        esi
 0042FB7E    mov         esi,edx
 0042FB80    mov         ebx,eax
 0042FB82    test        word ptr [ebx],0BFE8
>0042FB87    je          0042FB90
 0042FB89    mov         eax,ebx
 0042FB8B    call        VarClearDeep
 0042FB90    mov         word ptr [ebx],3
 0042FB95    mov         dword ptr [ebx+8],esi
 0042FB98    pop         esi
 0042FB99    pop         ebx
 0042FB9A    ret
*}
end;

//0042FB9C
procedure @OleVarFromInt(var V:TVarData; const Value:Integer; const Range:ShortInt);
begin
{*
 0042FB9C    push        ebx
 0042FB9D    push        esi
 0042FB9E    mov         esi,edx
 0042FBA0    mov         ebx,eax
 0042FBA2    test        word ptr [ebx],0BFE8
>0042FBA7    je          0042FBB0
 0042FBA9    mov         eax,ebx
 0042FBAB    call        VarClearDeep
 0042FBB0    mov         word ptr [ebx],3
 0042FBB5    mov         dword ptr [ebx+8],esi
 0042FBB8    pop         esi
 0042FBB9    pop         ebx
 0042FBBA    ret
*}
end;

//0042FBBC
procedure @VarFromByte(var V:TVarData; const Value:Byte);
begin
{*
 0042FBBC    push        ebx
 0042FBBD    push        esi
 0042FBBE    mov         ebx,edx
 0042FBC0    mov         esi,eax
 0042FBC2    test        word ptr [esi],0BFE8
>0042FBC7    je          0042FBD0
 0042FBC9    mov         eax,esi
 0042FBCB    call        VarClearDeep
 0042FBD0    mov         word ptr [esi],11
 0042FBD5    mov         byte ptr [esi+8],bl
 0042FBD8    pop         esi
 0042FBD9    pop         ebx
 0042FBDA    ret
*}
end;

//0042FBDC
procedure @VarFromWord(var V:TVarData; const Value:Word);
begin
{*
 0042FBDC    push        ebx
 0042FBDD    push        esi
 0042FBDE    mov         esi,edx
 0042FBE0    mov         ebx,eax
 0042FBE2    test        word ptr [ebx],0BFE8
>0042FBE7    je          0042FBF0
 0042FBE9    mov         eax,ebx
 0042FBEB    call        VarClearDeep
 0042FBF0    mov         word ptr [ebx],12
 0042FBF5    mov         word ptr [ebx+8],si
 0042FBF9    pop         esi
 0042FBFA    pop         ebx
 0042FBFB    ret
*}
end;

//0042FBFC
procedure @VarFromLongWord(var V:TVarData; const Value:LongWord);
begin
{*
 0042FBFC    push        ebx
 0042FBFD    push        esi
 0042FBFE    mov         esi,edx
 0042FC00    mov         ebx,eax
 0042FC02    test        word ptr [ebx],0BFE8
>0042FC07    je          0042FC10
 0042FC09    mov         eax,ebx
 0042FC0B    call        VarClearDeep
 0042FC10    mov         word ptr [ebx],13
 0042FC15    mov         dword ptr [ebx+8],esi
 0042FC18    pop         esi
 0042FC19    pop         ebx
 0042FC1A    ret
*}
end;

//0042FC1C
procedure @VarFromUInt64(var V:TVarData; const Value:UInt64);
begin
{*
 0042FC1C    push        ebp
 0042FC1D    mov         ebp,esp
 0042FC1F    push        ebx
 0042FC20    mov         ebx,eax
 0042FC22    test        word ptr [ebx],0BFE8
>0042FC27    je          0042FC30
 0042FC29    mov         eax,ebx
 0042FC2B    call        VarClearDeep
 0042FC30    mov         word ptr [ebx],15
 0042FC35    mov         eax,dword ptr [ebp+8]
 0042FC38    mov         dword ptr [ebx+8],eax
 0042FC3B    mov         eax,dword ptr [ebp+0C]
 0042FC3E    mov         dword ptr [ebx+0C],eax
 0042FC41    pop         ebx
 0042FC42    pop         ebp
 0042FC43    ret         8
*}
end;

//0042FC48
procedure @VarFromShortInt(var V:TVarData; const Value:ShortInt);
begin
{*
 0042FC48    push        ebx
 0042FC49    push        esi
 0042FC4A    mov         ebx,edx
 0042FC4C    mov         esi,eax
 0042FC4E    test        word ptr [esi],0BFE8
>0042FC53    je          0042FC5C
 0042FC55    mov         eax,esi
 0042FC57    call        VarClearDeep
 0042FC5C    mov         word ptr [esi],10
 0042FC61    mov         byte ptr [esi+8],bl
 0042FC64    pop         esi
 0042FC65    pop         ebx
 0042FC66    ret
*}
end;

//0042FC68
procedure @VarFromSmallInt(var V:TVarData; const Value:SmallInt);
begin
{*
 0042FC68    push        ebx
 0042FC69    push        esi
 0042FC6A    mov         esi,edx
 0042FC6C    mov         ebx,eax
 0042FC6E    test        word ptr [ebx],0BFE8
>0042FC73    je          0042FC7C
 0042FC75    mov         eax,ebx
 0042FC77    call        VarClearDeep
 0042FC7C    mov         word ptr [ebx],2
 0042FC81    mov         word ptr [ebx+8],si
 0042FC85    pop         esi
 0042FC86    pop         ebx
 0042FC87    ret
*}
end;

//0042FC88
procedure @VarFromInt64(var V:TVarData; const Value:Int64);
begin
{*
 0042FC88    push        ebp
 0042FC89    mov         ebp,esp
 0042FC8B    push        ebx
 0042FC8C    mov         ebx,eax
 0042FC8E    test        word ptr [ebx],0BFE8
>0042FC93    je          0042FC9C
 0042FC95    mov         eax,ebx
 0042FC97    call        VarClearDeep
 0042FC9C    mov         word ptr [ebx],14
 0042FCA1    mov         eax,dword ptr [ebp+8]
 0042FCA4    mov         dword ptr [ebx+8],eax
 0042FCA7    mov         eax,dword ptr [ebp+0C]
 0042FCAA    mov         dword ptr [ebx+0C],eax
 0042FCAD    pop         ebx
 0042FCAE    pop         ebp
 0042FCAF    ret         8
*}
end;

//0042FCB4
procedure @VarFromSingle(var Dest:TVarData; const Value:Single);
begin
{*
 0042FCB4    push        ebp
 0042FCB5    mov         ebp,esp
 0042FCB7    push        ebx
 0042FCB8    mov         ebx,eax
 0042FCBA    test        word ptr [ebx],0BFE8
>0042FCBF    je          0042FCC8
 0042FCC1    mov         eax,ebx
 0042FCC3    call        VarClearDeep
 0042FCC8    mov         eax,dword ptr [ebp+8]
 0042FCCB    mov         dword ptr [ebx+8],eax
 0042FCCE    mov         word ptr [ebx],4
 0042FCD3    pop         ebx
 0042FCD4    pop         ebp
 0042FCD5    ret         4
*}
end;

//0042FCD8
procedure @VarFromDouble(var Dest:TVarData; const Value:Double);
begin
{*
 0042FCD8    push        ebp
 0042FCD9    mov         ebp,esp
 0042FCDB    push        ebx
 0042FCDC    mov         ebx,eax
 0042FCDE    test        word ptr [ebx],0BFE8
>0042FCE3    je          0042FCEC
 0042FCE5    mov         eax,ebx
 0042FCE7    call        VarClearDeep
 0042FCEC    mov         eax,dword ptr [ebp+8]
 0042FCEF    mov         dword ptr [ebx+8],eax
 0042FCF2    mov         eax,dword ptr [ebp+0C]
 0042FCF5    mov         dword ptr [ebx+0C],eax
 0042FCF8    mov         word ptr [ebx],5
 0042FCFD    pop         ebx
 0042FCFE    pop         ebp
 0042FCFF    ret         8
*}
end;

//0042FD04
procedure @VarFromCurrency(var Dest:TVarData; const Value:Currency);
begin
{*
 0042FD04    push        ebp
 0042FD05    mov         ebp,esp
 0042FD07    push        ebx
 0042FD08    mov         ebx,eax
 0042FD0A    test        word ptr [ebx],0BFE8
>0042FD0F    je          0042FD18
 0042FD11    mov         eax,ebx
 0042FD13    call        VarClearDeep
 0042FD18    mov         eax,dword ptr [ebp+8]
 0042FD1B    mov         dword ptr [ebx+8],eax
 0042FD1E    mov         eax,dword ptr [ebp+0C]
 0042FD21    mov         dword ptr [ebx+0C],eax
 0042FD24    mov         word ptr [ebx],6
 0042FD29    pop         ebx
 0042FD2A    pop         ebp
 0042FD2B    ret         8
*}
end;

//0042FD30
procedure @VarFromDate(var Dest:TVarData; const Value:TDateTime);
begin
{*
 0042FD30    push        ebp
 0042FD31    mov         ebp,esp
 0042FD33    push        ebx
 0042FD34    mov         ebx,eax
 0042FD36    test        word ptr [ebx],0BFE8
>0042FD3B    je          0042FD44
 0042FD3D    mov         eax,ebx
 0042FD3F    call        VarClearDeep
 0042FD44    mov         eax,dword ptr [ebp+8]
 0042FD47    mov         dword ptr [ebx+8],eax
 0042FD4A    mov         eax,dword ptr [ebp+0C]
 0042FD4D    mov         dword ptr [ebx+0C],eax
 0042FD50    mov         word ptr [ebx],7
 0042FD55    pop         ebx
 0042FD56    pop         ebp
 0042FD57    ret         8
*}
end;

//0042FD5C
procedure @VarFromBool(var V:TVarData; const Value:Boolean);
begin
{*
 0042FD5C    push        ebx
 0042FD5D    push        esi
 0042FD5E    mov         ebx,edx
 0042FD60    mov         esi,eax
 0042FD62    test        word ptr [esi],0BFE8
>0042FD67    je          0042FD70
 0042FD69    mov         eax,esi
 0042FD6B    call        VarClearDeep
 0042FD70    mov         word ptr [esi],0B
 0042FD75    cmp         bl,1
 0042FD78    cmc
 0042FD79    sbb         eax,eax
 0042FD7B    mov         word ptr [esi+8],ax
 0042FD7F    pop         esi
 0042FD80    pop         ebx
 0042FD81    ret
*}
end;

//0042FD84
procedure @VarFromReal(var v:Variant);
begin
{*
 0042FD84    sub         esp,8
 0042FD87    fstp        qword ptr [esp]
 0042FD8A    wait
 0042FD8B    push        eax
 0042FD8C    call        @VarClear
 0042FD91    pop         eax
 0042FD92    mov         word ptr [eax],5
 0042FD97    fld         qword ptr [esp]
 0042FD9A    fstp        qword ptr [eax+8]
 0042FD9D    wait
 0042FD9E    add         esp,8
 0042FDA1    ret
*}
end;

//0042FDA4
procedure @VarFromTDateTime(var v:Variant);
begin
{*
 0042FDA4    sub         esp,8
 0042FDA7    fstp        qword ptr [esp]
 0042FDAA    wait
 0042FDAB    push        eax
 0042FDAC    call        @VarClear
 0042FDB1    pop         eax
 0042FDB2    mov         word ptr [eax],7
 0042FDB7    fld         qword ptr [esp]
 0042FDBA    fstp        qword ptr [eax+8]
 0042FDBD    wait
 0042FDBE    add         esp,8
 0042FDC1    ret
*}
end;

//0042FDC4
procedure @VarFromCurr(var v:Variant);
begin
{*
 0042FDC4    sub         esp,8
 0042FDC7    fistp       qword ptr [esp]
 0042FDCA    wait
 0042FDCB    push        eax
 0042FDCC    call        @VarClear
 0042FDD1    pop         eax
 0042FDD2    mov         word ptr [eax],6
 0042FDD7    fild        qword ptr [esp]
 0042FDDA    fistp       qword ptr [eax+8]
 0042FDDD    wait
 0042FDDE    add         esp,8
 0042FDE1    ret
*}
end;

//0042FDE4
procedure @VarFromLStr(var V:TVarData; const Value:AnsiString);
begin
{*
 0042FDE4    push        ebx
 0042FDE5    push        esi
 0042FDE6    mov         esi,edx
 0042FDE8    mov         ebx,eax
 0042FDEA    test        word ptr [ebx],0BFE8
>0042FDEF    je          0042FDF8
 0042FDF1    mov         eax,ebx
 0042FDF3    call        VarClearDeep
 0042FDF8    xor         eax,eax
 0042FDFA    mov         dword ptr [ebx+8],eax
 0042FDFD    mov         word ptr [ebx],100
 0042FE02    lea         eax,[ebx+8]
 0042FE05    mov         edx,esi
 0042FE07    call        @LStrAsg
 0042FE0C    pop         esi
 0042FE0D    pop         ebx
 0042FE0E    ret
*}
end;

//0042FE10
procedure @VarFromPStr(var V:TVarData; const Value:ShortString);
begin
{*
 0042FE10    push        ebp
 0042FE11    mov         ebp,esp
 0042FE13    push        0
 0042FE15    push        ebx
 0042FE16    push        esi
 0042FE17    mov         esi,edx
 0042FE19    mov         ebx,eax
 0042FE1B    xor         eax,eax
 0042FE1D    push        ebp
 0042FE1E    push        42FE58
 0042FE23    push        dword ptr fs:[eax]
 0042FE26    mov         dword ptr fs:[eax],esp
 0042FE29    lea         eax,[ebp-4]
 0042FE2C    mov         edx,esi
 0042FE2E    mov         ecx,0
 0042FE33    call        @LStrFromString
 0042FE38    mov         edx,dword ptr [ebp-4]
 0042FE3B    mov         eax,ebx
 0042FE3D    call        @VarFromLStr
 0042FE42    xor         eax,eax
 0042FE44    pop         edx
 0042FE45    pop         ecx
 0042FE46    pop         ecx
 0042FE47    mov         dword ptr fs:[eax],edx
 0042FE4A    push        42FE5F
 0042FE4F    lea         eax,[ebp-4]
 0042FE52    call        @LStrClr
 0042FE57    ret
>0042FE58    jmp         @HandleFinally
>0042FE5D    jmp         0042FE4F
 0042FE5F    pop         esi
 0042FE60    pop         ebx
 0042FE61    pop         ecx
 0042FE62    pop         ebp
 0042FE63    ret
*}
end;

//0042FE64
procedure @VarFromWStr(var V:TVarData; const Value:WideString);
begin
{*
 0042FE64    push        ebx
 0042FE65    push        esi
 0042FE66    mov         esi,edx
 0042FE68    mov         ebx,eax
 0042FE6A    test        word ptr [ebx],0BFE8
>0042FE6F    je          0042FE78
 0042FE71    mov         eax,ebx
 0042FE73    call        VarClearDeep
 0042FE78    xor         eax,eax
 0042FE7A    mov         dword ptr [ebx+8],eax
 0042FE7D    mov         word ptr [ebx],8
 0042FE82    lea         eax,[ebx+8]
 0042FE85    push        eax
 0042FE86    mov         ecx,7FFFFFFF
 0042FE8B    mov         edx,1
 0042FE90    mov         eax,esi
 0042FE92    call        @WStrCopy
 0042FE97    pop         esi
 0042FE98    pop         ebx
 0042FE99    ret
*}
end;

//0042FE9C
procedure @VarFromUStr(var V:TVarData; const Value:UnicodeString);
begin
{*
 0042FE9C    push        ebx
 0042FE9D    push        esi
 0042FE9E    mov         esi,edx
 0042FEA0    mov         ebx,eax
 0042FEA2    test        word ptr [ebx],0BFE8
>0042FEA7    je          0042FEB0
 0042FEA9    mov         eax,ebx
 0042FEAB    call        VarClearDeep
 0042FEB0    xor         eax,eax
 0042FEB2    mov         dword ptr [ebx+8],eax
 0042FEB5    mov         word ptr [ebx],102
 0042FEBA    lea         eax,[ebx+8]
 0042FEBD    mov         edx,esi
 0042FEBF    call        @UStrAsg
 0042FEC4    pop         esi
 0042FEC5    pop         ebx
 0042FEC6    ret
*}
end;

//0042FEC8
procedure @VarFromIntf(var V:TVarData; const Value:IInterface);
begin
{*
 0042FEC8    push        ebx
 0042FEC9    push        esi
 0042FECA    mov         esi,edx
 0042FECC    mov         ebx,eax
 0042FECE    test        word ptr [ebx],0BFE8
>0042FED3    je          0042FEDC
 0042FED5    mov         eax,ebx
 0042FED7    call        VarClearDeep
 0042FEDC    xor         eax,eax
 0042FEDE    mov         dword ptr [ebx+8],eax
 0042FEE1    mov         word ptr [ebx],0D
 0042FEE6    lea         eax,[ebx+8]
 0042FEE9    mov         edx,esi
 0042FEEB    call        @IntfCopy
 0042FEF0    pop         esi
 0042FEF1    pop         ebx
 0042FEF2    ret
*}
end;

//0042FEF4
procedure @VarFromDisp(var V:TVarData; const Value:IDispatch);
begin
{*
 0042FEF4    push        ebx
 0042FEF5    push        esi
 0042FEF6    mov         esi,edx
 0042FEF8    mov         ebx,eax
 0042FEFA    test        word ptr [ebx],0BFE8
>0042FEFF    je          0042FF08
 0042FF01    mov         eax,ebx
 0042FF03    call        VarClearDeep
 0042FF08    xor         eax,eax
 0042FF0A    mov         dword ptr [ebx+8],eax
 0042FF0D    mov         word ptr [ebx],9
 0042FF12    lea         eax,[ebx+8]
 0042FF15    mov         edx,esi
 0042FF17    call        @IntfCopy
 0042FF1C    pop         esi
 0042FF1D    pop         ebx
 0042FF1E    ret
*}
end;

//0042FF20
procedure @OleVarFromLStr(var V:TVarData; const Value:AnsiString);
begin
{*
 0042FF20    push        ebp
 0042FF21    mov         ebp,esp
 0042FF23    push        0
 0042FF25    push        ebx
 0042FF26    push        esi
 0042FF27    mov         esi,edx
 0042FF29    mov         ebx,eax
 0042FF2B    xor         eax,eax
 0042FF2D    push        ebp
 0042FF2E    push        42FF63
 0042FF33    push        dword ptr fs:[eax]
 0042FF36    mov         dword ptr fs:[eax],esp
 0042FF39    lea         eax,[ebp-4]
 0042FF3C    mov         edx,esi
 0042FF3E    call        @WStrFromLStr
 0042FF43    mov         edx,dword ptr [ebp-4]
 0042FF46    mov         eax,ebx
 0042FF48    call        @VarFromWStr
 0042FF4D    xor         eax,eax
 0042FF4F    pop         edx
 0042FF50    pop         ecx
 0042FF51    pop         ecx
 0042FF52    mov         dword ptr fs:[eax],edx
 0042FF55    push        42FF6A
 0042FF5A    lea         eax,[ebp-4]
 0042FF5D    call        @WStrClr
 0042FF62    ret
>0042FF63    jmp         @HandleFinally
>0042FF68    jmp         0042FF5A
 0042FF6A    pop         esi
 0042FF6B    pop         ebx
 0042FF6C    pop         ecx
 0042FF6D    pop         ebp
 0042FF6E    ret
*}
end;

//0042FF70
procedure @OleVarFromUStr(var V:TVarData; const Value:UnicodeString);
begin
{*
 0042FF70    push        ebp
 0042FF71    mov         ebp,esp
 0042FF73    push        0
 0042FF75    push        ebx
 0042FF76    push        esi
 0042FF77    mov         esi,edx
 0042FF79    mov         ebx,eax
 0042FF7B    xor         eax,eax
 0042FF7D    push        ebp
 0042FF7E    push        42FFB3
 0042FF83    push        dword ptr fs:[eax]
 0042FF86    mov         dword ptr fs:[eax],esp
 0042FF89    lea         eax,[ebp-4]
 0042FF8C    mov         edx,esi
 0042FF8E    call        @WStrFromUStr
 0042FF93    mov         edx,dword ptr [ebp-4]
 0042FF96    mov         eax,ebx
 0042FF98    call        @VarFromWStr
 0042FF9D    xor         eax,eax
 0042FF9F    pop         edx
 0042FFA0    pop         ecx
 0042FFA1    pop         ecx
 0042FFA2    mov         dword ptr fs:[eax],edx
 0042FFA5    push        42FFBA
 0042FFAA    lea         eax,[ebp-4]
 0042FFAD    call        @WStrClr
 0042FFB2    ret
>0042FFB3    jmp         @HandleFinally
>0042FFB8    jmp         0042FFAA
 0042FFBA    pop         esi
 0042FFBB    pop         ebx
 0042FFBC    pop         ecx
 0042FFBD    pop         ebp
 0042FFBE    ret
*}
end;

//0042FFC0
procedure OleVarFromAny(var V:TVarData; const Value:TVarData);
begin
{*
 0042FFC0    push        ebp
 0042FFC1    mov         ebp,esp
 0042FFC3    add         esp,0FFFFFFF0
 0042FFC6    push        ebx
 0042FFC7    push        esi
 0042FFC8    mov         esi,edx
 0042FFCA    mov         ebx,eax
 0042FFCC    lea         eax,[ebp-10]
 0042FFCF    push        eax
 0042FFD0    call        oleaut32.VariantInit
 0042FFD5    xor         eax,eax
 0042FFD7    push        ebp
 0042FFD8    push        430016
 0042FFDD    push        dword ptr fs:[eax]
 0042FFE0    mov         dword ptr fs:[eax],esp
 0042FFE3    mov         edx,esi
 0042FFE5    lea         eax,[ebp-10]
 0042FFE8    call        @VarCopy
 0042FFED    lea         eax,[ebp-10]
 0042FFF0    call        dword ptr ds:[7C9F50]
 0042FFF6    lea         edx,[ebp-10]
 0042FFF9    mov         eax,ebx
 0042FFFB    call        @VarCopy
 00430000    xor         eax,eax
 00430002    pop         edx
 00430003    pop         ecx
 00430004    pop         ecx
 00430005    mov         dword ptr fs:[eax],edx
 00430008    push        43001D
 0043000D    lea         eax,[ebp-10]
 00430010    call        @VarClear
 00430015    ret
>00430016    jmp         @HandleFinally
>0043001B    jmp         0043000D
 0043001D    pop         esi
 0043001E    pop         ebx
 0043001F    mov         esp,ebp
 00430021    pop         ebp
 00430022    ret
*}
end;

//00430024
procedure OleVarFromVarArrayProc(var Dest:TVarData; const Src:TVarData);
begin
{*
 00430024    call        @OleVarFromVar
 00430029    ret
*}
end;

//0043002C
procedure @OleVarFromVar(var Dest:TVarData; const Source:TVarData);
begin
{*
 0043002C    push        ebp
 0043002D    mov         ebp,esp
 0043002F    add         esp,0FFFFFFF8
 00430032    push        ebx
 00430033    push        esi
 00430034    push        edi
 00430035    xor         ecx,ecx
 00430037    mov         dword ptr [ebp-8],ecx
 0043003A    mov         ebx,edx
 0043003C    mov         esi,eax
 0043003E    xor         eax,eax
 00430040    push        ebp
 00430041    push        4301E5
 00430046    push        dword ptr fs:[eax]
 00430049    mov         dword ptr fs:[eax],esp
 0043004C    cmp         word ptr [ebx],400C
>00430051    jne         00430064
 00430053    mov         eax,dword ptr [ebx+8]
 00430056    mov         edx,eax
 00430058    mov         eax,esi
 0043005A    call        @OleVarFromVar
>0043005F    jmp         004301CF
 00430064    test        word ptr [esi],0BFE8
>00430069    je          00430072
 0043006B    mov         eax,esi
 0043006D    call        VarClearDeep
 00430072    movzx       edi,word ptr [ebx]
 00430075    movzx       eax,di
 00430078    cmp         eax,100
>0043007D    jg          00430097
>0043007F    je          00430152
 00430085    add         eax,0FFFFFFF0
 00430088    sub         eax,3
>0043008B    jb          004300AE
>0043008D    je          004300C1
 0043008F    dec         eax
>00430090    je          004300ED
>00430092    jmp         00430180
 00430097    sub         eax,101
>0043009C    je          00430175
 004300A2    dec         eax
>004300A3    je          0043015E
>004300A9    jmp         00430180
 004300AE    mov         edx,ebx
 004300B0    mov         eax,esi
 004300B2    mov         ecx,3
 004300B7    call        @VarCast
>004300BC    jmp         004301CF
 004300C1    test        byte ptr [ebx+0B],80
>004300C5    je          004300DA
 004300C7    mov         edx,ebx
 004300C9    mov         eax,esi
 004300CB    mov         ecx,5
 004300D0    call        @VarCast
>004300D5    jmp         004301CF
 004300DA    mov         edx,ebx
 004300DC    mov         eax,esi
 004300DE    mov         ecx,3
 004300E3    call        @VarCast
>004300E8    jmp         004301CF
 004300ED    cmp         dword ptr [ebx+0C],0
>004300F1    jne         004300FE
 004300F3    cmp         dword ptr [ebx+8],7FFFFFFF
>004300FA    ja          00430126
>004300FC    jmp         00430100
>004300FE    jg          00430126
 00430100    cmp         dword ptr [ebx+0C],0FFFFFFFF
>00430104    jne         00430111
 00430106    cmp         dword ptr [ebx+8],80000000
>0043010D    jb          00430126
>0043010F    jmp         00430113
>00430111    jl          00430126
 00430113    mov         edx,ebx
 00430115    mov         eax,esi
 00430117    mov         ecx,3
 0043011C    call        @VarCast
>00430121    jmp         004301CF
 00430126    cmp         byte ptr ds:[79F696],0
>0043012D    jne         00430142
 0043012F    mov         edx,ebx
 00430131    mov         eax,esi
 00430133    mov         ecx,14
 00430138    call        @VarCast
>0043013D    jmp         004301CF
 00430142    mov         edx,ebx
 00430144    mov         eax,esi
 00430146    mov         ecx,5
 0043014B    call        @VarCast
>00430150    jmp         004301CF
 00430152    mov         edx,dword ptr [ebx+8]
 00430155    mov         eax,esi
 00430157    call        @OleVarFromLStr
>0043015C    jmp         004301CF
 0043015E    lea         eax,[ebp-8]
 00430161    mov         edx,dword ptr [ebx+8]
 00430164    call        @WStrFromUStr
 00430169    mov         edx,dword ptr [ebp-8]
 0043016C    mov         eax,esi
 0043016E    call        @VarFromWStr
>00430173    jmp         004301CF
 00430175    mov         edx,ebx
 00430177    mov         eax,esi
 00430179    call        OleVarFromAny
>0043017E    jmp         004301CF
 00430180    test        di,2000
>00430185    je          00430197
 00430187    mov         ecx,430024;OleVarFromVarArrayProc
 0043018C    mov         edx,ebx
 0043018E    mov         eax,esi
 00430190    call        VarArrayCopyForEach
>00430195    jmp         004301CF
 00430197    mov         eax,edi
 00430199    and         ax,0FFF
 0043019D    cmp         ax,10F
>004301A1    jae         004301AE
 004301A3    mov         edx,ebx
 004301A5    mov         eax,esi
 004301A7    call        @VarCopy
>004301AC    jmp         004301CF
 004301AE    lea         edx,[ebp-4]
 004301B1    mov         eax,edi
 004301B3    call        FindCustomVariantType
 004301B8    test        al,al
>004301BA    je          004301CA
 004301BC    mov         ecx,ebx
 004301BE    mov         edx,esi
 004301C0    mov         eax,dword ptr [ebp-4]
 004301C3    mov         ebx,dword ptr [eax]
 004301C5    call        dword ptr [ebx+20]
>004301C8    jmp         004301CF
 004301CA    call        VarInvalidNullOp
 004301CF    xor         eax,eax
 004301D1    pop         edx
 004301D2    pop         ecx
 004301D3    pop         ecx
 004301D4    mov         dword ptr fs:[eax],edx
 004301D7    push        4301EC
 004301DC    lea         eax,[ebp-8]
 004301DF    call        @WStrClr
 004301E4    ret
>004301E5    jmp         @HandleFinally
>004301EA    jmp         004301DC
 004301EC    pop         edi
 004301ED    pop         esi
 004301EE    pop         ebx
 004301EF    pop         ecx
 004301F0    pop         ecx
 004301F1    pop         ebp
 004301F2    ret
*}
end;

//004301F4
function CheckType(T:TVarType):TVarType;
begin
{*
 004301F4    push        ebx
 004301F5    mov         bx,0FFF
 004301F9    and         bx,ax
 004301FC    cmp         bx,15
>00430200    jbe         0043021B
 00430202    cmp         bx,100
>00430207    je          00430210
 00430209    cmp         bx,102
>0043020E    jne         00430216
 00430210    mov         bx,8
>00430214    jmp         0043021B
 00430216    call        VarInvalidOp
 0043021B    mov         eax,ebx
 0043021D    pop         ebx
 0043021E    ret
*}
end;

//00430220
function VarCompareAny(const Left:TVarData; const Right:TVarData; const OpCode:TVarOp):TVarCompareResult;
begin
{*
 00430220    push        ebp
 00430221    mov         ebp,esp
 00430223    add         esp,0FFFFFFDC
 00430226    push        ebx
 00430227    push        esi
 00430228    push        edi
 00430229    mov         edi,ecx
 0043022B    mov         ebx,edx
 0043022D    mov         esi,eax
 0043022F    lea         eax,[ebp-11]
 00430232    push        eax
 00430233    call        oleaut32.VariantInit
 00430238    xor         eax,eax
 0043023A    push        ebp
 0043023B    push        4302E3
 00430240    push        dword ptr fs:[eax]
 00430243    mov         dword ptr fs:[eax],esp
 00430246    mov         edx,esi
 00430248    lea         eax,[ebp-11]
 0043024B    call        @VarCopy
 00430250    cmp         word ptr [esi],101
>00430255    jne         00430260
 00430257    lea         eax,[ebp-11]
 0043025A    call        dword ptr ds:[7C9F50]
 00430260    cmp         word ptr [ebx],101
>00430265    jne         004302BE
 00430267    lea         eax,[ebp-21]
 0043026A    push        eax
 0043026B    call        oleaut32.VariantInit
 00430270    xor         eax,eax
 00430272    push        ebp
 00430273    push        4302B7
 00430278    push        dword ptr fs:[eax]
 0043027B    mov         dword ptr fs:[eax],esp
 0043027E    mov         edx,ebx
 00430280    lea         eax,[ebp-21]
 00430283    call        @VarCopy
 00430288    lea         eax,[ebp-21]
 0043028B    call        dword ptr ds:[7C9F50]
 00430291    lea         edx,[ebp-21]
 00430294    lea         eax,[ebp-11]
 00430297    mov         ecx,edi
 00430299    call        VarCompare
 0043029E    mov         byte ptr [ebp-1],al
 004302A1    xor         eax,eax
 004302A3    pop         edx
 004302A4    pop         ecx
 004302A5    pop         ecx
 004302A6    mov         dword ptr fs:[eax],edx
 004302A9    push        4302CD
 004302AE    lea         eax,[ebp-21]
 004302B1    call        @VarClear
 004302B6    ret
>004302B7    jmp         @HandleFinally
>004302BC    jmp         004302AE
 004302BE    mov         edx,ebx
 004302C0    lea         eax,[ebp-11]
 004302C3    mov         ecx,edi
 004302C5    call        VarCompare
 004302CA    mov         byte ptr [ebp-1],al
 004302CD    xor         eax,eax
 004302CF    pop         edx
 004302D0    pop         ecx
 004302D1    pop         ecx
 004302D2    mov         dword ptr fs:[eax],edx
 004302D5    push        4302EA
 004302DA    lea         eax,[ebp-11]
 004302DD    call        @VarClear
 004302E2    ret
>004302E3    jmp         @HandleFinally
>004302E8    jmp         004302DA
 004302EA    movzx       eax,byte ptr [ebp-1]
 004302EE    pop         edi
 004302EF    pop         esi
 004302F0    pop         ebx
 004302F1    mov         esp,ebp
 004302F3    pop         ebp
 004302F4    ret
*}
end;

//004302F8
function EmptyCompare(L:TBaseType; R:TBaseType):TVarCompareResult;
begin
{*
 004302F8    cmp         al,1
>004302FA    jne         00430308
 004302FC    cmp         dl,1
>004302FF    jne         00430305
 00430301    mov         al,1
>00430303    jmp         0043030A
 00430305    xor         eax,eax
 00430307    ret
 00430308    mov         al,2
 0043030A    ret
*}
end;

//0043030C
function NullCompare(L:TBaseType; R:TBaseType; OpCode:TVarOp):TVarCompareResult;
begin
{*
 0043030C    push        ebx
 0043030D    push        ecx
 0043030E    mov         byte ptr [esp],dl
 00430311    mov         bl,1
 00430313    mov         edx,ecx
 00430315    sub         edx,0E
>00430318    je          0043032C
 0043031A    dec         edx
>0043031B    je          00430378
 0043031D    dec         edx
 0043031E    sub         edx,4
>00430321    jb          004303B8
>00430327    jmp         004303F3
 0043032C    movzx       edx,byte ptr ds:[79F68C]
 00430333    sub         dl,1
>00430336    jb          00430343
>00430338    je          0043034D
 0043033A    dec         dl
>0043033C    je          00430359
>0043033E    jmp         004303F8
 00430343    call        00429CAC
>00430348    jmp         004303F8
 0043034D    movzx       ebx,byte ptr ds:[79F6CA]
>00430354    jmp         004303F8
 00430359    cmp         al,2
>0043035B    jne         00430363
 0043035D    cmp         byte ptr [esp],2
>00430361    je          00430367
 00430363    xor         eax,eax
>00430365    jmp         00430369
 00430367    mov         al,1
 00430369    and         eax,7F
 0043036C    movzx       ebx,byte ptr [eax+79F6CA]
>00430373    jmp         004303F8
 00430378    movzx       edx,byte ptr ds:[79F68C]
 0043037F    sub         dl,1
>00430382    jb          0043038C
>00430384    je          00430393
 00430386    dec         dl
>00430388    je          0043039C
>0043038A    jmp         004303F8
 0043038C    call        00429CAC
>00430391    jmp         004303F8
 00430393    movzx       ebx,byte ptr ds:[79F6CC]
>0043039A    jmp         004303F8
 0043039C    cmp         al,2
>0043039E    jne         004303AA
 004303A0    cmp         byte ptr [esp],2
>004303A4    jne         004303AA
 004303A6    xor         eax,eax
>004303A8    jmp         004303AC
 004303AA    mov         al,1
 004303AC    and         eax,7F
 004303AF    movzx       ebx,byte ptr [eax+79F6CC]
>004303B6    jmp         004303F8
 004303B8    movzx       edx,byte ptr ds:[79F68D]
 004303BF    sub         dl,1
>004303C2    jb          004303CC
>004303C4    je          004303D3
 004303C6    dec         dl
>004303C8    je          004303DD
>004303CA    jmp         004303F8
 004303CC    call        00429CAC
>004303D1    jmp         004303F8
 004303D3    movzx       ebx,byte ptr [ecx*2+79F6AE]
>004303DB    jmp         004303F8
 004303DD    cmp         al,2
>004303DF    jne         004303EF
 004303E1    cmp         byte ptr [esp],2
>004303E5    jne         004303EB
 004303E7    mov         bl,1
>004303E9    jmp         004303F8
 004303EB    xor         ebx,ebx
>004303ED    jmp         004303F8
 004303EF    mov         bl,2
>004303F1    jmp         004303F8
 004303F3    call        VarInvalidOp
 004303F8    mov         eax,ebx
 004303FA    pop         edx
 004303FB    pop         ebx
 004303FC    ret
*}
end;

//00430400
function IntCompare(A:Integer; B:Integer):TVarCompareResult;
begin
{*
 00430400    cmp         edx,eax
>00430402    jle         00430407
 00430404    xor         eax,eax
 00430406    ret
 00430407    cmp         edx,eax
>00430409    jge         0043040F
 0043040B    mov         al,2
>0043040D    jmp         00430411
 0043040F    mov         al,1
 00430411    ret
*}
end;

//00430414
function Int64Compare(const A:Int64; const B:Int64):TVarCompareResult;
begin
{*
 00430414    push        ebp
 00430415    mov         ebp,esp
 00430417    mov         eax,dword ptr [ebp+10]
 0043041A    mov         edx,dword ptr [ebp+14]
 0043041D    cmp         edx,dword ptr [ebp+0C]
>00430420    jne         00430429
 00430422    cmp         eax,dword ptr [ebp+8]
>00430425    jae         0043042F
>00430427    jmp         0043042B
>00430429    jge         0043042F
 0043042B    xor         eax,eax
>0043042D    jmp         00430449
 0043042F    mov         eax,dword ptr [ebp+10]
 00430432    mov         edx,dword ptr [ebp+14]
 00430435    cmp         edx,dword ptr [ebp+0C]
>00430438    jne         00430441
 0043043A    cmp         eax,dword ptr [ebp+8]
>0043043D    jbe         00430447
>0043043F    jmp         00430443
>00430441    jle         00430447
 00430443    mov         al,2
>00430445    jmp         00430449
 00430447    mov         al,1
 00430449    pop         ebp
 0043044A    ret         10
*}
end;

//00430450
function UInt64Compare(const A:UInt64; const B:UInt64):TVarCompareResult;
begin
{*
 00430450    push        ebp
 00430451    mov         ebp,esp
 00430453    mov         eax,dword ptr [ebp+10]
 00430456    mov         edx,dword ptr [ebp+14]
 00430459    cmp         edx,dword ptr [ebp+0C]
>0043045C    jne         00430461
 0043045E    cmp         eax,dword ptr [ebp+8]
>00430461    jae         00430467
 00430463    xor         eax,eax
>00430465    jmp         0043047D
 00430467    mov         eax,dword ptr [ebp+10]
 0043046A    mov         edx,dword ptr [ebp+14]
 0043046D    cmp         edx,dword ptr [ebp+0C]
>00430470    jne         00430475
 00430472    cmp         eax,dword ptr [ebp+8]
>00430475    jbe         0043047B
 00430477    mov         al,2
>00430479    jmp         0043047D
 0043047B    mov         al,1
 0043047D    pop         ebp
 0043047E    ret         10
*}
end;

//00430484
function RealCompare(const A:Double; const B:Double):TVarCompareResult;
begin
{*
 00430484    push        ebp
 00430485    mov         ebp,esp
 00430487    fld         qword ptr [ebp+10]
 0043048A    fcomp       qword ptr [ebp+8]
 0043048D    wait
 0043048E    fnstsw      al
 00430490    sahf
>00430491    jae         00430497
 00430493    xor         eax,eax
>00430495    jmp         004304A9
 00430497    fld         qword ptr [ebp+10]
 0043049A    fcomp       qword ptr [ebp+8]
 0043049D    wait
 0043049E    fnstsw      al
 004304A0    sahf
>004304A1    jbe         004304A7
 004304A3    mov         al,2
>004304A5    jmp         004304A9
 004304A7    mov         al,1
 004304A9    pop         ebp
 004304AA    ret         10
*}
end;

//004304B0
function DateCompare(const A:TDateTime; const B:TDateTime):TVarCompareResult;
begin
{*
 004304B0    push        ebp
 004304B1    mov         ebp,esp
 004304B3    fld         qword ptr [ebp+10]
 004304B6    fcomp       qword ptr [ebp+8]
 004304B9    wait
 004304BA    fnstsw      al
 004304BC    sahf
>004304BD    jae         004304C3
 004304BF    xor         eax,eax
>004304C1    jmp         004304D5
 004304C3    fld         qword ptr [ebp+10]
 004304C6    fcomp       qword ptr [ebp+8]
 004304C9    wait
 004304CA    fnstsw      al
 004304CC    sahf
>004304CD    jbe         004304D3
 004304CF    mov         al,2
>004304D1    jmp         004304D5
 004304D3    mov         al,1
 004304D5    pop         ebp
 004304D6    ret         10
*}
end;

//004304DC
function CurrCompare(const A:Currency; const B:Currency):TVarCompareResult;
begin
{*
 004304DC    push        ebp
 004304DD    mov         ebp,esp
 004304DF    fild        qword ptr [ebp+10]
 004304E2    fild        qword ptr [ebp+8]
 004304E5    fcompp
 004304E7    wait
 004304E8    fnstsw      al
 004304EA    sahf
>004304EB    jbe         004304F1
 004304ED    xor         eax,eax
>004304EF    jmp         00430505
 004304F1    fild        qword ptr [ebp+10]
 004304F4    fild        qword ptr [ebp+8]
 004304F7    fcompp
 004304F9    wait
 004304FA    fnstsw      al
 004304FC    sahf
>004304FD    jae         00430503
 004304FF    mov         al,2
>00430501    jmp         00430505
 00430503    mov         al,1
 00430505    pop         ebp
 00430506    ret         10
*}
end;

//0043050C
function StringCompare(const L:TVarData; const R:TVarData):TVarCompareResult;
begin
{*
 0043050C    push        ebp
 0043050D    mov         ebp,esp
 0043050F    push        0
 00430511    push        0
 00430513    push        ebx
 00430514    mov         ebx,edx
 00430516    xor         edx,edx
 00430518    push        ebp
 00430519    push        430567
 0043051E    push        dword ptr fs:[edx]
 00430521    mov         dword ptr fs:[edx],esp
 00430524    mov         edx,eax
 00430526    lea         eax,[ebp-4]
 00430529    call        @VarToUStr
 0043052E    mov         edx,ebx
 00430530    lea         eax,[ebp-8]
 00430533    call        @VarToUStr
 00430538    mov         edx,dword ptr [ebp-8]
 0043053B    mov         eax,dword ptr [ebp-4]
 0043053E    call        CompareStr
 00430543    xor         edx,edx
 00430545    call        IntCompare
 0043054A    mov         ebx,eax
 0043054C    xor         eax,eax
 0043054E    pop         edx
 0043054F    pop         ecx
 00430550    pop         ecx
 00430551    mov         dword ptr fs:[eax],edx
 00430554    push        43056E
 00430559    lea         eax,[ebp-8]
 0043055C    mov         edx,2
 00430561    call        @UStrArrayClr
 00430566    ret
>00430567    jmp         @HandleFinally
>0043056C    jmp         00430559
 0043056E    mov         eax,ebx
 00430570    pop         ebx
 00430571    pop         ecx
 00430572    pop         ecx
 00430573    pop         ebp
 00430574    ret
*}
end;

//00430578
function VarCompareSimple(const Left:TVarData; const Right:TVarData; const OpCode:TVarOp):TVarCompareResult;
begin
{*
 00430578    push        ebx
 00430579    push        esi
 0043057A    push        edi
 0043057B    push        ebp
 0043057C    push        ecx
 0043057D    mov         ebp,ecx
 0043057F    mov         edi,edx
 00430581    mov         esi,eax
 00430583    movzx       eax,word ptr [esi]
 00430586    call        CheckType
 0043058B    movzx       eax,ax
 0043058E    movzx       ebx,byte ptr [eax+79F697]
 00430595    movzx       eax,word ptr [edi]
 00430598    call        CheckType
 0043059D    movzx       eax,ax
 004305A0    movzx       eax,byte ptr [eax+79F697]
 004305A7    mov         byte ptr [esp],al
 004305AA    movzx       eax,byte ptr [esp]
 004305AE    movzx       edx,bl
 004305B1    lea         edx,[edx+edx*2]
 004305B4    lea         edx,[edx*4+79F6D6]
 004305BB    movzx       eax,byte ptr [edx+eax]
 004305BF    cmp         eax,0B
>004305C2    ja          00430720
 004305C8    jmp         dword ptr [eax*4+4305CF]
 004305C8    dd          004305FF
 004305C8    dd          0043060B
 004305C8    dd          0043061B
 004305C8    dd          0043062D
 004305C8    dd          0043067F
 004305C8    dd          004306C8
 004305C8    dd          004306EB
 004305C8    dd          004306F6
 004305C8    dd          004306A5
 004305C8    dd          00430647
 004305C8    dd          00430663
 004305C8    dd          00430713
 004305FF    call        VarInvalidOp
 00430604    mov         al,1
>00430606    jmp         00430727
 0043060B    movzx       edx,byte ptr [esp]
 0043060F    mov         eax,ebx
 00430611    call        EmptyCompare
>00430616    jmp         00430727
 0043061B    movzx       edx,byte ptr [esp]
 0043061F    mov         eax,ebx
 00430621    mov         ecx,ebp
 00430623    call        NullCompare
>00430628    jmp         00430727
 0043062D    mov         eax,edi
 0043062F    call        @VarToInteger
 00430634    push        eax
 00430635    mov         eax,esi
 00430637    call        @VarToInteger
 0043063C    pop         edx
 0043063D    call        IntCompare
>00430642    jmp         00430727
 00430647    mov         eax,esi
 00430649    call        @VarToInt64
 0043064E    push        edx
 0043064F    push        eax
 00430650    mov         eax,edi
 00430652    call        @VarToInt64
 00430657    push        edx
 00430658    push        eax
 00430659    call        Int64Compare
>0043065E    jmp         00430727
 00430663    mov         eax,esi
 00430665    call        @VarToUInt64
 0043066A    push        edx
 0043066B    push        eax
 0043066C    mov         eax,edi
 0043066E    call        @VarToUInt64
 00430673    push        edx
 00430674    push        eax
 00430675    call        UInt64Compare
>0043067A    jmp         00430727
 0043067F    mov         eax,esi
 00430681    call        @VarToDouble
 00430686    add         esp,0FFFFFFF8
 00430689    fstp        qword ptr [esp]
 0043068C    wait
 0043068D    mov         eax,edi
 0043068F    call        @VarToDouble
 00430694    add         esp,0FFFFFFF8
 00430697    fstp        qword ptr [esp]
 0043069A    wait
 0043069B    call        RealCompare
>004306A0    jmp         00430727
 004306A5    mov         eax,esi
 004306A7    call        @VarToDate
 004306AC    add         esp,0FFFFFFF8
 004306AF    fstp        qword ptr [esp]
 004306B2    wait
 004306B3    mov         eax,edi
 004306B5    call        @VarToDate
 004306BA    add         esp,0FFFFFFF8
 004306BD    fstp        qword ptr [esp]
 004306C0    wait
 004306C1    call        DateCompare
>004306C6    jmp         00430727
 004306C8    mov         eax,esi
 004306CA    call        @VarToCurrency
 004306CF    add         esp,0FFFFFFF8
 004306D2    fistp       qword ptr [esp]
 004306D5    wait
 004306D6    mov         eax,edi
 004306D8    call        @VarToCurrency
 004306DD    add         esp,0FFFFFFF8
 004306E0    fistp       qword ptr [esp]
 004306E3    wait
 004306E4    call        CurrCompare
>004306E9    jmp         00430727
 004306EB    mov         edx,edi
 004306ED    mov         eax,esi
 004306EF    call        StringCompare
>004306F4    jmp         00430727
 004306F6    mov         eax,edi
 004306F8    call        @VarToBoolean
 004306FD    and         eax,7F
 00430700    push        eax
 00430701    mov         eax,esi
 00430703    call        @VarToBoolean
 00430708    and         eax,7F
 0043070B    pop         edx
 0043070C    call        IntCompare
>00430711    jmp         00430727
 00430713    mov         edx,edi
 00430715    mov         eax,esi
 00430717    mov         ecx,ebp
 00430719    call        VarCompareAny
>0043071E    jmp         00430727
 00430720    call        VarInvalidOp
 00430725    mov         al,1
 00430727    pop         edx
 00430728    pop         ebp
 00430729    pop         edi
 0043072A    pop         esi
 0043072B    pop         ebx
 0043072C    ret
*}
end;

//00430730
function VarCompareRare(const Left:TVarData; const Right:TVarData; const OpCode:TVarOp):TVarCompareResult;
begin
{*
 00430730    push        ebp
 00430731    mov         ebp,esp
 00430733    add         esp,0FFFFFFD8
 00430736    push        ebx
 00430737    push        esi
 00430738    mov         dword ptr [ebp-8],ecx
 0043073B    mov         dword ptr [ebp-4],edx
 0043073E    mov         ebx,eax
 00430740    mov         byte ptr [ebp-9],1
 00430744    movzx       esi,word ptr [ebx]
 00430747    mov         eax,esi
 00430749    and         ax,0FFF
 0043074D    cmp         ax,10F
>00430751    jae         004308D2
 00430757    test        si,si
>0043075A    jne         0043076D
 0043075C    xor         edx,edx
 0043075E    mov         al,1
 00430760    call        EmptyCompare
 00430765    mov         byte ptr [ebp-9],al
>00430768    jmp         00430B44
 0043076D    cmp         si,1
>00430771    jne         00430787
 00430773    mov         ecx,dword ptr [ebp-8]
 00430776    xor         edx,edx
 00430778    mov         al,2
 0043077A    call        NullCompare
 0043077F    mov         byte ptr [ebp-9],al
>00430782    jmp         00430B44
 00430787    lea         edx,[ebp-18]
 0043078A    mov         eax,dword ptr [ebp-4]
 0043078D    movzx       eax,word ptr [eax]
 00430790    call        FindCustomVariantType
 00430795    test        al,al
>00430797    jne         004307A3
 00430799    call        VarInvalidOp
>0043079E    jmp         00430B44
 004307A3    lea         eax,[ebp-0C]
 004307A6    push        eax
 004307A7    mov         edx,ebx
 004307A9    mov         ecx,0B
 004307AE    mov         eax,dword ptr [ebp-18]
 004307B1    mov         esi,dword ptr [eax]
 004307B3    call        dword ptr [esi+4]
 004307B6    test        al,al
>004307B8    je          0043086E
 004307BE    movzx       eax,word ptr [ebx]
 004307C1    cmp         ax,word ptr [ebp-0C]
>004307C5    je          00430843
 004307C7    lea         eax,[ebp-28]
 004307CA    push        eax
 004307CB    call        oleaut32.VariantInit
 004307D0    xor         eax,eax
 004307D2    push        ebp
 004307D3    push        43083C
 004307D8    push        dword ptr fs:[eax]
 004307DB    mov         dword ptr fs:[eax],esp
 004307DE    movzx       ecx,word ptr [ebp-0C]
 004307E2    mov         edx,ebx
 004307E4    lea         eax,[ebp-28]
 004307E7    call        @VarCast
 004307EC    movzx       eax,word ptr [ebp-28]
 004307F0    and         ax,0FFF
 004307F4    cmp         ax,word ptr [ebp-0C]
>004307F8    je          004307FF
 004307FA    call        VarInvalidNullOp
 004307FF    mov         eax,dword ptr [ebp-8]
 00430802    push        eax
 00430803    mov         ecx,dword ptr [ebp-4]
 00430806    lea         edx,[ebp-28]
 00430809    mov         eax,dword ptr [ebp-18]
 0043080C    mov         ebx,dword ptr [eax]
 0043080E    call        dword ptr [ebx+34]
 00430811    and         eax,7F
 00430814    mov         edx,dword ptr [ebp-8]
 00430817    lea         edx,[edx*2+79F6CA]
 0043081E    movzx       eax,byte ptr [edx+eax-1C]
 00430823    mov         byte ptr [ebp-9],al
 00430826    xor         eax,eax
 00430828    pop         edx
 00430829    pop         ecx
 0043082A    pop         ecx
 0043082B    mov         dword ptr fs:[eax],edx
 0043082E    push        430B44
 00430833    lea         eax,[ebp-28]
 00430836    call        @VarClear
 0043083B    ret
>0043083C    jmp         @HandleFinally
>00430841    jmp         00430833
 00430843    mov         eax,dword ptr [ebp-8]
 00430846    push        eax
 00430847    mov         ecx,dword ptr [ebp-4]
 0043084A    mov         edx,ebx
 0043084C    mov         eax,dword ptr [ebp-18]
 0043084F    mov         ebx,dword ptr [eax]
 00430851    call        dword ptr [ebx+34]
 00430854    and         eax,7F
 00430857    mov         edx,dword ptr [ebp-8]
 0043085A    lea         edx,[edx*2+79F6CA]
 00430861    movzx       eax,byte ptr [edx+eax-1C]
 00430866    mov         byte ptr [ebp-9],al
>00430869    jmp         00430B44
 0043086E    lea         eax,[ebp-28]
 00430871    push        eax
 00430872    call        oleaut32.VariantInit
 00430877    xor         eax,eax
 00430879    push        ebp
 0043087A    push        4308CB
 0043087F    push        dword ptr fs:[eax]
 00430882    mov         dword ptr fs:[eax],esp
 00430885    movzx       ecx,word ptr [ebx]
 00430888    mov         edx,dword ptr [ebp-4]
 0043088B    lea         eax,[ebp-28]
 0043088E    call        @VarCast
 00430893    movzx       eax,word ptr [ebp-28]
 00430897    and         ax,0FFF
 0043089B    cmp         ax,word ptr [ebx]
>0043089E    je          004308A5
 004308A0    call        VarInvalidNullOp
 004308A5    lea         edx,[ebp-28]
 004308A8    mov         eax,ebx
 004308AA    mov         ecx,dword ptr [ebp-8]
 004308AD    call        VarCompareSimple
 004308B2    mov         byte ptr [ebp-9],al
 004308B5    xor         eax,eax
 004308B7    pop         edx
 004308B8    pop         ecx
 004308B9    pop         ecx
 004308BA    mov         dword ptr fs:[eax],edx
 004308BD    push        430B44
 004308C2    lea         eax,[ebp-28]
 004308C5    call        @VarClear
 004308CA    ret
>004308CB    jmp         @HandleFinally
>004308D0    jmp         004308C2
 004308D2    mov         eax,dword ptr [ebp-4]
 004308D5    movzx       eax,word ptr [eax]
 004308D8    test        ax,ax
>004308DB    jne         004308EE
 004308DD    mov         dl,1
 004308DF    xor         eax,eax
 004308E1    call        EmptyCompare
 004308E6    mov         byte ptr [ebp-9],al
>004308E9    jmp         00430B44
 004308EE    cmp         ax,1
>004308F2    jne         00430908
 004308F4    mov         ecx,dword ptr [ebp-8]
 004308F7    mov         dl,2
 004308F9    xor         eax,eax
 004308FB    call        NullCompare
 00430900    mov         byte ptr [ebp-9],al
>00430903    jmp         00430B44
 00430908    lea         edx,[ebp-14]
 0043090B    mov         eax,esi
 0043090D    call        FindCustomVariantType
 00430912    test        al,al
>00430914    jne         00430920
 00430916    call        VarInvalidOp
>0043091B    jmp         00430B44
 00430920    lea         eax,[ebp-0E]
 00430923    push        eax
 00430924    mov         edx,dword ptr [ebp-4]
 00430927    mov         ecx,0B
 0043092C    mov         eax,dword ptr [ebp-14]
 0043092F    mov         esi,dword ptr [eax]
 00430931    call        dword ptr [esi+8]
 00430934    test        al,al
>00430936    je          004309EB
 0043093C    mov         eax,dword ptr [ebp-4]
 0043093F    movzx       eax,word ptr [eax]
 00430942    cmp         ax,word ptr [ebp-0E]
>00430946    je          004309C0
 00430948    lea         eax,[ebp-28]
 0043094B    push        eax
 0043094C    call        oleaut32.VariantInit
 00430951    xor         eax,eax
 00430953    push        ebp
 00430954    push        4309B9
 00430959    push        dword ptr fs:[eax]
 0043095C    mov         dword ptr fs:[eax],esp
 0043095F    movzx       ecx,word ptr [ebp-0E]
 00430963    mov         edx,dword ptr [ebp-4]
 00430966    lea         eax,[ebp-28]
 00430969    call        @VarCast
 0043096E    movzx       eax,word ptr [ebp-28]
 00430972    cmp         ax,word ptr [ebp-0E]
>00430976    je          0043097D
 00430978    call        VarInvalidNullOp
 0043097D    mov         eax,dword ptr [ebp-8]
 00430980    push        eax
 00430981    lea         ecx,[ebp-28]
 00430984    mov         edx,ebx
 00430986    mov         eax,dword ptr [ebp-14]
 00430989    mov         ebx,dword ptr [eax]
 0043098B    call        dword ptr [ebx+34]
 0043098E    and         eax,7F
 00430991    mov         edx,dword ptr [ebp-8]
 00430994    lea         edx,[edx*2+79F6CA]
 0043099B    movzx       eax,byte ptr [edx+eax-1C]
 004309A0    mov         byte ptr [ebp-9],al
 004309A3    xor         eax,eax
 004309A5    pop         edx
 004309A6    pop         ecx
 004309A7    pop         ecx
 004309A8    mov         dword ptr fs:[eax],edx
 004309AB    push        430B44
 004309B0    lea         eax,[ebp-28]
 004309B3    call        @VarClear
 004309B8    ret
>004309B9    jmp         @HandleFinally
>004309BE    jmp         004309B0
 004309C0    mov         eax,dword ptr [ebp-8]
 004309C3    push        eax
 004309C4    mov         ecx,dword ptr [ebp-4]
 004309C7    mov         edx,ebx
 004309C9    mov         eax,dword ptr [ebp-14]
 004309CC    mov         ebx,dword ptr [eax]
 004309CE    call        dword ptr [ebx+34]
 004309D1    and         eax,7F
 004309D4    mov         edx,dword ptr [ebp-8]
 004309D7    lea         edx,[edx*2+79F6CA]
 004309DE    movzx       eax,byte ptr [edx+eax-1C]
 004309E3    mov         byte ptr [ebp-9],al
>004309E6    jmp         00430B44
 004309EB    mov         esi,dword ptr [ebp-4]
 004309EE    movzx       esi,word ptr [esi]
 004309F1    mov         eax,esi
 004309F3    and         ax,0FFF
 004309F7    cmp         ax,10F
>004309FB    jae         00430A63
 004309FD    lea         eax,[ebp-28]
 00430A00    push        eax
 00430A01    call        oleaut32.VariantInit
 00430A06    xor         eax,eax
 00430A08    push        ebp
 00430A09    push        430A5C
 00430A0E    push        dword ptr fs:[eax]
 00430A11    mov         dword ptr fs:[eax],esp
 00430A14    mov         ecx,dword ptr [ebp-4]
 00430A17    movzx       ecx,word ptr [ecx]
 00430A1A    mov         edx,ebx
 00430A1C    lea         eax,[ebp-28]
 00430A1F    call        @VarCast
 00430A24    mov         eax,dword ptr [ebp-4]
 00430A27    movzx       eax,word ptr [eax]
 00430A2A    cmp         ax,word ptr [ebp-28]
>00430A2E    je          00430A35
 00430A30    call        VarInvalidNullOp
 00430A35    mov         edx,dword ptr [ebp-4]
 00430A38    lea         eax,[ebp-28]
 00430A3B    mov         ecx,dword ptr [ebp-8]
 00430A3E    call        VarCompareSimple
 00430A43    mov         byte ptr [ebp-9],al
 00430A46    xor         eax,eax
 00430A48    pop         edx
 00430A49    pop         ecx
 00430A4A    pop         ecx
 00430A4B    mov         dword ptr fs:[eax],edx
 00430A4E    push        430B44
 00430A53    lea         eax,[ebp-28]
 00430A56    call        @VarClear
 00430A5B    ret
>00430A5C    jmp         @HandleFinally
>00430A61    jmp         00430A53
 00430A63    lea         edx,[ebp-18]
 00430A66    mov         eax,esi
 00430A68    call        FindCustomVariantType
 00430A6D    test        al,al
>00430A6F    jne         00430A7B
 00430A71    call        VarInvalidOp
>00430A76    jmp         00430B44
 00430A7B    lea         eax,[ebp-0C]
 00430A7E    push        eax
 00430A7F    mov         edx,ebx
 00430A81    mov         ecx,0B
 00430A86    mov         eax,dword ptr [ebp-18]
 00430A89    mov         esi,dword ptr [eax]
 00430A8B    call        dword ptr [esi+4]
 00430A8E    test        al,al
>00430A90    je          00430B3F
 00430A96    movzx       eax,word ptr [ebx]
 00430A99    cmp         ax,word ptr [ebp-0C]
>00430A9D    je          00430B17
 00430A9F    lea         eax,[ebp-28]
 00430AA2    push        eax
 00430AA3    call        oleaut32.VariantInit
 00430AA8    xor         eax,eax
 00430AAA    push        ebp
 00430AAB    push        430B10
 00430AB0    push        dword ptr fs:[eax]
 00430AB3    mov         dword ptr fs:[eax],esp
 00430AB6    movzx       ecx,word ptr [ebp-0C]
 00430ABA    mov         edx,ebx
 00430ABC    lea         eax,[ebp-28]
 00430ABF    call        @VarCast
 00430AC4    movzx       eax,word ptr [ebp-28]
 00430AC8    cmp         ax,word ptr [ebp-0C]
>00430ACC    je          00430AD3
 00430ACE    call        VarInvalidNullOp
 00430AD3    mov         eax,dword ptr [ebp-8]
 00430AD6    push        eax
 00430AD7    mov         ecx,dword ptr [ebp-4]
 00430ADA    lea         edx,[ebp-28]
 00430ADD    mov         eax,dword ptr [ebp-18]
 00430AE0    mov         ebx,dword ptr [eax]
 00430AE2    call        dword ptr [ebx+34]
 00430AE5    and         eax,7F
 00430AE8    mov         edx,dword ptr [ebp-8]
 00430AEB    lea         edx,[edx*2+79F6CA]
 00430AF2    movzx       eax,byte ptr [edx+eax-1C]
 00430AF7    mov         byte ptr [ebp-9],al
 00430AFA    xor         eax,eax
 00430AFC    pop         edx
 00430AFD    pop         ecx
 00430AFE    pop         ecx
 00430AFF    mov         dword ptr fs:[eax],edx
 00430B02    push        430B44
 00430B07    lea         eax,[ebp-28]
 00430B0A    call        @VarClear
 00430B0F    ret
>00430B10    jmp         @HandleFinally
>00430B15    jmp         00430B07
 00430B17    mov         eax,dword ptr [ebp-8]
 00430B1A    push        eax
 00430B1B    mov         ecx,dword ptr [ebp-4]
 00430B1E    mov         edx,ebx
 00430B20    mov         eax,dword ptr [ebp-18]
 00430B23    mov         ebx,dword ptr [eax]
 00430B25    call        dword ptr [ebx+34]
 00430B28    and         eax,7F
 00430B2B    mov         edx,dword ptr [ebp-8]
 00430B2E    lea         edx,[edx*2+79F6CA]
 00430B35    movzx       eax,byte ptr [edx+eax-1C]
 00430B3A    mov         byte ptr [ebp-9],al
>00430B3D    jmp         00430B44
 00430B3F    call        VarInvalidOp
 00430B44    movzx       eax,byte ptr [ebp-9]
 00430B48    pop         esi
 00430B49    pop         ebx
 00430B4A    mov         esp,ebp
 00430B4C    pop         ebp
 00430B4D    ret
*}
end;

//00430B50
function VarCompare(const Left:TVarData; const Right:TVarData; const OpCode:TVarOp):TVarCompareResult;
begin
{*
 00430B50    push        ebx
 00430B51    push        esi
 00430B52    push        ecx
 00430B53    mov         dword ptr [esp],ecx
 00430B56    mov         esi,edx
 00430B58    mov         ebx,eax
 00430B5A    movzx       eax,word ptr [ebx]
 00430B5D    movzx       edx,word ptr [esi]
 00430B60    cmp         ax,10F
>00430B64    jae         00430B7B
 00430B66    cmp         dx,10F
>00430B6B    jae         00430B7B
 00430B6D    mov         edx,esi
 00430B6F    mov         eax,ebx
 00430B71    mov         ecx,dword ptr [esp]
 00430B74    call        VarCompareSimple
>00430B79    jmp         00430BD8
 00430B7B    cmp         ax,400C
>00430B7F    jne         00430B90
 00430B81    mov         edx,esi
 00430B83    mov         eax,dword ptr [ebx+8]
 00430B86    mov         ecx,dword ptr [esp]
 00430B89    call        VarCompare
>00430B8E    jmp         00430BD8
 00430B90    cmp         dx,400C
>00430B95    jne         00430BA8
 00430B97    mov         eax,dword ptr [esi+8]
 00430B9A    mov         edx,eax
 00430B9C    mov         eax,ebx
 00430B9E    mov         ecx,dword ptr [esp]
 00430BA1    call        VarCompare
>00430BA6    jmp         00430BD8
 00430BA8    and         ax,0FFF
 00430BAC    cmp         ax,10F
>00430BB0    jae         00430BCC
 00430BB2    and         dx,0FFF
 00430BB7    cmp         dx,10F
>00430BBC    jae         00430BCC
 00430BBE    mov         edx,esi
 00430BC0    mov         eax,ebx
 00430BC2    mov         ecx,dword ptr [esp]
 00430BC5    call        VarCompareSimple
>00430BCA    jmp         00430BD8
 00430BCC    mov         edx,esi
 00430BCE    mov         eax,ebx
 00430BD0    mov         ecx,dword ptr [esp]
 00430BD3    call        VarCompareRare
 00430BD8    pop         edx
 00430BD9    pop         esi
 00430BDA    pop         ebx
 00430BDB    ret
*}
end;

//00430BDC
procedure @VarAddRef(var V:TVarData);
begin
{*
 00430BDC    cmp         word ptr [eax],8
>00430BE0    jb          00430BFC
 00430BE2    push        dword ptr [eax+0C]
 00430BE5    push        dword ptr [eax+8]
 00430BE8    push        dword ptr [eax+4]
 00430BEB    push        dword ptr [eax]
 00430BED    mov         word ptr [eax],0
 00430BF2    mov         edx,esp
 00430BF4    call        @VarCopy
 00430BF9    add         esp,10
 00430BFC    ret
*}
end;

//00430E58
function VarTypeAsText(const AType:TVarType):UnicodeString;
begin
{*
 00430E58    push        ebp
 00430E59    mov         ebp,esp
 00430E5B    push        0
 00430E5D    push        0
 00430E5F    push        0
 00430E61    push        ebx
 00430E62    push        esi
 00430E63    push        edi
 00430E64    mov         esi,edx
 00430E66    mov         ebx,eax
 00430E68    xor         eax,eax
 00430E6A    push        ebp
 00430E6B    push        430F6B
 00430E70    push        dword ptr fs:[eax]
 00430E73    mov         dword ptr fs:[eax],esp
 00430E76    mov         di,0FFF
 00430E7A    and         di,bx
 00430E7D    cmp         di,15
>00430E81    ja          00430E99
 00430E83    mov         eax,esi
 00430E85    movzx       edx,di
 00430E88    mov         edx,dword ptr [edx*4+79F768];^'Empty'
 00430E8F    call        @UStrAsg
>00430E94    jmp         00430F2A
 00430E99    cmp         bx,100
>00430E9E    jne         00430EAE
 00430EA0    mov         eax,esi
 00430EA2    mov         edx,430F88;'String'
 00430EA7    call        @UStrAsg
>00430EAC    jmp         00430F2A
 00430EAE    cmp         bx,102
>00430EB3    jne         00430EC3
 00430EB5    mov         eax,esi
 00430EB7    mov         edx,430FA4;'UnicodeString'
 00430EBC    call        @UStrAsg
>00430EC1    jmp         00430F2A
 00430EC3    cmp         bx,101
>00430EC8    jne         00430ED8
 00430ECA    mov         eax,esi
 00430ECC    mov         edx,430FCC;'Any'
 00430ED1    call        @UStrAsg
>00430ED6    jmp         00430F2A
 00430ED8    lea         edx,[ebp-4]
 00430EDB    mov         eax,ebx
 00430EDD    call        FindCustomVariantType
 00430EE2    test        al,al
>00430EE4    je          00430F08
 00430EE6    push        esi
 00430EE7    lea         edx,[ebp-8]
 00430EEA    mov         eax,dword ptr [ebp-4]
 00430EED    mov         eax,dword ptr [eax]
 00430EEF    call        TObject.ClassName
 00430EF4    mov         eax,dword ptr [ebp-8]
 00430EF7    mov         ecx,7FFFFFFF
 00430EFC    mov         edx,2
 00430F01    call        @UStrCopy
>00430F06    jmp         00430F2A
 00430F08    lea         ecx,[ebp-0C]
 00430F0B    movzx       eax,di
 00430F0E    mov         edx,4
 00430F13    call        IntToHex
 00430F18    mov         ecx,dword ptr [ebp-0C]
 00430F1B    mov         edx,dword ptr ds:[7C4D4C]
 00430F21    mov         edx,dword ptr [edx]
 00430F23    mov         eax,esi
 00430F25    call        @UStrCat3
 00430F2A    test        bh,20
>00430F2D    je          00430F3D
 00430F2F    mov         ecx,dword ptr [esi]
 00430F31    mov         eax,esi
 00430F33    mov         edx,430FE0;'Array '
 00430F38    call        @UStrCat3
 00430F3D    test        bh,40
>00430F40    je          00430F50
 00430F42    mov         ecx,dword ptr [esi]
 00430F44    mov         eax,esi
 00430F46    mov         edx,430FFC;'ByRef '
 00430F4B    call        @UStrCat3
 00430F50    xor         eax,eax
 00430F52    pop         edx
 00430F53    pop         ecx
 00430F54    pop         ecx
 00430F55    mov         dword ptr fs:[eax],edx
 00430F58    push        430F72
 00430F5D    lea         eax,[ebp-0C]
 00430F60    mov         edx,2
 00430F65    call        @UStrArrayClr
 00430F6A    ret
>00430F6B    jmp         @HandleFinally
>00430F70    jmp         00430F5D
 00430F72    pop         edi
 00430F73    pop         esi
 00430F74    pop         ebx
 00430F75    mov         esp,ebp
 00430F77    pop         ebp
 00430F78    ret
*}
end;

//0043100C
function FindVarData(const V:Variant):PVarData;
begin
{*
>0043100C    jmp         00431011
 0043100E    mov         eax,dword ptr [eax+8]
 00431011    cmp         word ptr [eax],400C
>00431016    je          0043100E
 00431018    ret
*}
end;

//0043101C
function VarIsClear(const V:Variant):Boolean;
begin
{*
 0043101C    push        ebx
 0043101D    push        esi
 0043101E    push        edi
 0043101F    add         esp,0FFFFFFEC
 00431022    mov         ebx,eax
 00431024    mov         eax,ebx
 00431026    call        FindVarData
 0043102B    mov         esi,eax
 0043102D    lea         edi,[esp+4]
 00431031    movs        dword ptr [edi],dword ptr [esi]
 00431032    movs        dword ptr [edi],dword ptr [esi]
 00431033    movs        dword ptr [edi],dword ptr [esi]
 00431034    movs        dword ptr [edi],dword ptr [esi]
 00431035    movzx       ebx,word ptr [esp+4]
 0043103A    cmp         bx,10F
>0043103F    jae         00431069
 00431041    cmp         word ptr [esp+4],0
>00431047    je          00431065
 00431049    movzx       eax,word ptr [esp+4]
 0043104E    cmp         ax,9
>00431052    je          0043105A
 00431054    cmp         ax,0D
>00431058    jne         00431061
 0043105A    cmp         dword ptr [esp+0C],0
>0043105F    je          00431065
 00431061    xor         eax,eax
>00431063    jmp         00431086
 00431065    mov         al,1
>00431067    jmp         00431086
 00431069    mov         edx,esp
 0043106B    mov         eax,ebx
 0043106D    call        FindCustomVariantType
 00431072    test        al,al
>00431074    je          00431084
 00431076    lea         edx,[esp+4]
 0043107A    mov         eax,dword ptr [esp]
 0043107D    mov         ecx,dword ptr [eax]
 0043107F    call        dword ptr [ecx+14]
>00431082    jmp         00431086
 00431084    xor         eax,eax
 00431086    add         esp,14
 00431089    pop         edi
 0043108A    pop         esi
 0043108B    pop         ebx
 0043108C    ret
*}
end;

//00431090
function VarTypeIsCustom(const AVarType:TVarType):Boolean;
begin
{*
 00431090    push        ecx
 00431091    mov         edx,esp
 00431093    call        FindCustomVariantType
 00431098    pop         edx
 00431099    ret
*}
end;

//0043109C
function VarTypeIsOrdinal(const AVarType:TVarType):Boolean;
begin
{*
 0043109C    add         eax,0FFFFFFFE
 0043109F    sub         ax,2
>004310A3    jb          004310B7
 004310A5    sub         ax,7
>004310A9    je          004310B7
 004310AB    add         eax,0FFFFFFFB
 004310AE    sub         ax,6
>004310B2    jb          004310B7
 004310B4    xor         eax,eax
 004310B6    ret
 004310B7    mov         al,1
 004310B9    ret
*}
end;

//004310BC
function VarIsOrdinal(const V:Variant):Boolean;
begin
{*
 004310BC    push        ebx
 004310BD    mov         ebx,eax
 004310BF    mov         eax,ebx
 004310C1    call        FindVarData
 004310C6    movzx       eax,word ptr [eax]
 004310C9    call        VarTypeIsOrdinal
 004310CE    pop         ebx
 004310CF    ret
*}
end;

//004310D0
function VarIsEmpty(const V:Variant):Boolean;
begin
{*
 004310D0    push        ebx
 004310D1    mov         ebx,eax
 004310D3    mov         eax,ebx
 004310D5    call        FindVarData
 004310DA    cmp         word ptr [eax],0
 004310DE    sete        al
 004310E1    pop         ebx
 004310E2    ret
*}
end;

//004310E4
function VarIsNull(const V:Variant):Boolean;
begin
{*
 004310E4    push        ebx
 004310E5    mov         ebx,eax
 004310E7    mov         eax,ebx
 004310E9    call        FindVarData
 004310EE    cmp         word ptr [eax],1
 004310F2    sete        al
 004310F5    pop         ebx
 004310F6    ret
*}
end;

//004310F8
function VarToStr(const V:Variant):UnicodeString;
begin
{*
 004310F8    push        ebx
 004310F9    push        esi
 004310FA    mov         esi,edx
 004310FC    mov         ebx,eax
 004310FE    mov         ecx,esi
 00431100    mov         eax,ebx
 00431102    mov         edx,dword ptr ds:[79F690]
 00431108    call        VarToStrDef
 0043110D    pop         esi
 0043110E    pop         ebx
 0043110F    ret
*}
end;

//00431110
function VarToStrDef(const V:Variant; const ADefault:UnicodeString):UnicodeString;
begin
{*
 00431110    push        ebx
 00431111    push        esi
 00431112    push        edi
 00431113    mov         esi,ecx
 00431115    mov         edi,edx
 00431117    mov         ebx,eax
 00431119    mov         eax,ebx
 0043111B    call        VarIsNull
 00431120    test        al,al
>00431122    jne         0043112F
 00431124    mov         eax,esi
 00431126    mov         edx,ebx
 00431128    call        @VarToUStr
>0043112D    jmp         00431138
 0043112F    mov         eax,esi
 00431131    mov         edx,edi
 00431133    call        @UStrAsg
 00431138    pop         edi
 00431139    pop         esi
 0043113A    pop         ebx
 0043113B    ret
*}
end;

//0043113C
function VarToWideStr(const V:Variant):WideString;
begin
{*
 0043113C    push        ebp
 0043113D    mov         ebp,esp
 0043113F    push        0
 00431141    push        ebx
 00431142    push        esi
 00431143    mov         esi,edx
 00431145    mov         ebx,eax
 00431147    xor         eax,eax
 00431149    push        ebp
 0043114A    push        431185
 0043114F    push        dword ptr fs:[eax]
 00431152    mov         dword ptr fs:[eax],esp
 00431155    lea         eax,[ebp-4]
 00431158    mov         edx,dword ptr ds:[79F690]
 0043115E    call        @WStrFromUStr
 00431163    mov         edx,dword ptr [ebp-4]
 00431166    mov         ecx,esi
 00431168    mov         eax,ebx
 0043116A    call        VarToWideStrDef
 0043116F    xor         eax,eax
 00431171    pop         edx
 00431172    pop         ecx
 00431173    pop         ecx
 00431174    mov         dword ptr fs:[eax],edx
 00431177    push        43118C
 0043117C    lea         eax,[ebp-4]
 0043117F    call        @WStrClr
 00431184    ret
>00431185    jmp         @HandleFinally
>0043118A    jmp         0043117C
 0043118C    pop         esi
 0043118D    pop         ebx
 0043118E    pop         ecx
 0043118F    pop         ebp
 00431190    ret
*}
end;

//00431194
function VarToWideStrDef(const V:Variant; const ADefault:WideString):WideString;
begin
{*
 00431194    push        ebx
 00431195    push        esi
 00431196    push        edi
 00431197    mov         esi,ecx
 00431199    mov         edi,edx
 0043119B    mov         ebx,eax
 0043119D    mov         eax,ebx
 0043119F    call        VarIsNull
 004311A4    test        al,al
>004311A6    jne         004311B3
 004311A8    mov         eax,esi
 004311AA    mov         edx,ebx
 004311AC    call        @VarToWStr
>004311B1    jmp         004311BC
 004311B3    mov         eax,esi
 004311B5    mov         edx,edi
 004311B7    call        @WStrAsg
 004311BC    pop         edi
 004311BD    pop         esi
 004311BE    pop         ebx
 004311BF    ret
*}
end;

//004311C0
function VarSameValue(const A:Variant; const B:Variant):Boolean;
begin
{*
 004311C0    push        ebx
 004311C1    push        esi
 004311C2    push        edi
 004311C3    add         esp,0FFFFFFE0
 004311C6    mov         esi,edx
 004311C8    mov         ebx,eax
 004311CA    mov         eax,ebx
 004311CC    call        FindVarData
 004311D1    push        esi
 004311D2    mov         esi,eax
 004311D4    lea         edi,[esp+4]
 004311D8    movs        dword ptr [edi],dword ptr [esi]
 004311D9    movs        dword ptr [edi],dword ptr [esi]
 004311DA    movs        dword ptr [edi],dword ptr [esi]
 004311DB    movs        dword ptr [edi],dword ptr [esi]
 004311DC    pop         esi
 004311DD    mov         eax,esi
 004311DF    call        FindVarData
 004311E4    push        esi
 004311E5    mov         esi,eax
 004311E7    lea         edi,[esp+14]
 004311EB    movs        dword ptr [edi],dword ptr [esi]
 004311EC    movs        dword ptr [edi],dword ptr [esi]
 004311ED    movs        dword ptr [edi],dword ptr [esi]
 004311EE    movs        dword ptr [edi],dword ptr [esi]
 004311EF    pop         esi
 004311F0    movzx       eax,word ptr [esp]
 004311F4    test        ax,ax
>004311F7    jne         00431204
 004311F9    cmp         word ptr [esp+10],0
 004311FF    sete        al
>00431202    jmp         00431230
 00431204    cmp         ax,1
>00431208    jne         00431215
 0043120A    cmp         word ptr [esp+10],1
 00431210    sete        al
>00431213    jmp         00431230
 00431215    movzx       eax,word ptr [esp+10]
 0043121A    sub         ax,2
>0043121E    jae         00431224
 00431220    xor         eax,eax
>00431222    jmp         00431230
 00431224    mov         eax,ebx
 00431226    mov         edx,esi
 00431228    call        @VarCmpEQ
 0043122D    sete        al
 00431230    add         esp,20
 00431233    pop         edi
 00431234    pop         esi
 00431235    pop         ebx
 00431236    ret
*}
end;

//00431238
function VarCompareValue(const A:Variant; const B:Variant):TVariantRelationship;
begin
{*
 00431238    push        ebx
 00431239    push        esi
 0043123A    push        edi
 0043123B    add         esp,0FFFFFFE0
 0043123E    mov         esi,edx
 00431240    mov         ebx,eax
 00431242    mov         eax,ebx
 00431244    call        FindVarData
 00431249    push        esi
 0043124A    mov         esi,eax
 0043124C    lea         edi,[esp+4]
 00431250    movs        dword ptr [edi],dword ptr [esi]
 00431251    movs        dword ptr [edi],dword ptr [esi]
 00431252    movs        dword ptr [edi],dword ptr [esi]
 00431253    movs        dword ptr [edi],dword ptr [esi]
 00431254    pop         esi
 00431255    mov         eax,esi
 00431257    call        FindVarData
 0043125C    push        esi
 0043125D    mov         esi,eax
 0043125F    lea         edi,[esp+14]
 00431263    movs        dword ptr [edi],dword ptr [esi]
 00431264    movs        dword ptr [edi],dword ptr [esi]
 00431265    movs        dword ptr [edi],dword ptr [esi]
 00431266    movs        dword ptr [edi],dword ptr [esi]
 00431267    pop         esi
 00431268    movzx       eax,word ptr [esp]
 0043126C    test        ax,ax
>0043126F    jne         00431286
 00431271    cmp         word ptr [esp+10],0
 00431277    sete        al
 0043127A    and         eax,7F
 0043127D    movzx       eax,byte ptr [eax+79F7C0]
>00431284    jmp         004312D0
 00431286    cmp         ax,1
>0043128A    jne         004312A1
 0043128C    cmp         word ptr [esp+10],1
 00431292    sete        al
 00431295    and         eax,7F
 00431298    movzx       eax,byte ptr [eax+79F7C0]
>0043129F    jmp         004312D0
 004312A1    movzx       eax,word ptr [esp+10]
 004312A6    sub         ax,2
>004312AA    jae         004312B0
 004312AC    mov         al,3
>004312AE    jmp         004312D0
 004312B0    mov         eax,ebx
 004312B2    mov         edx,esi
 004312B4    call        @VarCmpEQ
>004312B9    jne         004312BF
 004312BB    xor         eax,eax
>004312BD    jmp         004312D0
 004312BF    mov         eax,ebx
 004312C1    mov         edx,esi
 004312C3    call        @VarCmpLT
>004312C8    jge         004312CE
 004312CA    mov         al,1
>004312CC    jmp         004312D0
 004312CE    mov         al,2
 004312D0    add         esp,20
 004312D3    pop         edi
 004312D4    pop         esi
 004312D5    pop         ebx
 004312D6    ret
*}
end;

//004312D8
function GetVarDataArrayInfo(const AVarData:TVarData; var AVarType:TVarType; var AVarArray:PVarArray):Boolean;
begin
{*
 004312D8    push        ebx
 004312D9    movzx       ebx,word ptr [eax]
 004312DC    cmp         bx,400C
>004312E1    jne         004312EF
 004312E3    mov         eax,dword ptr [eax+8]
 004312E6    call        GetVarDataArrayInfo
 004312EB    mov         ebx,eax
>004312ED    jmp         00431317
 004312EF    mov         word ptr [edx],bx
 004312F2    test        byte ptr [edx+1],20
 004312F6    setne       bl
 004312F9    test        bl,bl
>004312FB    je          00431313
 004312FD    test        byte ptr [edx+1],40
>00431301    je          0043130C
 00431303    mov         eax,dword ptr [eax+8]
 00431306    mov         eax,dword ptr [eax]
 00431308    mov         dword ptr [ecx],eax
>0043130A    jmp         00431317
 0043130C    mov         eax,dword ptr [eax+8]
 0043130F    mov         dword ptr [ecx],eax
>00431311    jmp         00431317
 00431313    xor         eax,eax
 00431315    mov         dword ptr [ecx],eax
 00431317    mov         eax,ebx
 00431319    pop         ebx
 0043131A    ret
*}
end;

//0043131C
function VarArrayCreate(const Bounds:array[$0..-$1] of System.Integer; const _Dv_:$0..-$1; AVarType:TVarType):Variant;
begin
{*
 0043131C    push        ebp
 0043131D    mov         ebp,esp
 0043131F    add         esp,0FFFFFDF8
 00431325    push        ebx
 00431326    push        esi
 00431327    push        edi
 00431328    mov         word ptr [ebp-2],cx
 0043132C    mov         ebx,edx
 0043132E    mov         esi,eax
 00431330    mov         edi,ebx
 00431332    test        edi,1
>00431338    je          0043134C
 0043133A    cmp         edi,7F
>0043133D    jg          0043134C
 0043133F    movzx       eax,word ptr [ebp-2]
 00431343    call        VarTypeIsValidArrayType
 00431348    test        al,al
>0043134A    jne         00431351
 0043134C    call        VarArrayCreateError
 00431351    inc         edi
 00431352    sar         edi,1
>00431354    jns         00431359
 00431356    adc         edi,0
 00431359    mov         dword ptr [ebp-8],edi
 0043135C    mov         ebx,dword ptr [ebp-8]
 0043135F    dec         ebx
 00431360    test        ebx,ebx
>00431362    jl          00431386
 00431364    inc         ebx
 00431365    lea         edx,[ebp-208]
 0043136B    mov         eax,esi
 0043136D    mov         ecx,edx
 0043136F    mov         esi,dword ptr [eax]
 00431371    mov         dword ptr [ecx+4],esi
 00431374    mov         esi,dword ptr [eax+4]
 00431377    sub         esi,dword ptr [ecx+4]
 0043137A    inc         esi
 0043137B    mov         dword ptr [ecx],esi
 0043137D    add         eax,8
 00431380    add         edx,8
 00431383    dec         ebx
>00431384    jne         0043136D
 00431386    lea         eax,[ebp-208]
 0043138C    push        eax
 0043138D    mov         eax,dword ptr [ebp-8]
 00431390    push        eax
 00431391    movzx       eax,word ptr [ebp-2]
 00431395    push        eax
 00431396    call        oleaut32.SafeArrayCreate
 0043139B    mov         ebx,eax
 0043139D    test        ebx,ebx
>0043139F    jne         004313A6
 004313A1    call        VarArrayCreateError
 004313A6    mov         eax,dword ptr [ebp+8]
 004313A9    call        @VarClear
 004313AE    movzx       eax,word ptr [ebp-2]
 004313B2    or          ax,2000
 004313B6    mov         edx,dword ptr [ebp+8]
 004313B9    mov         word ptr [edx],ax
 004313BC    mov         eax,dword ptr [ebp+8]
 004313BF    mov         dword ptr [eax+8],ebx
 004313C2    pop         edi
 004313C3    pop         esi
 004313C4    pop         ebx
 004313C5    mov         esp,ebp
 004313C7    pop         ebp
 004313C8    ret         4
*}
end;

//004313CC
function VarIsArray(const A:Variant):Boolean;
begin
{*
 004313CC    mov         dl,1
 004313CE    call        VarIsArray
 004313D3    ret
*}
end;

//004313D4
function VarIsArray(const A:Variant; AResolveByRef:Boolean):Boolean;
begin
{*
 004313D4    add         esp,0FFFFFFF8
 004313D7    test        dl,dl
>004313D9    je          004313E9
 004313DB    lea         ecx,[esp+4]
 004313DF    mov         edx,esp
 004313E1    call        GetVarDataArrayInfo
 004313E6    pop         ecx
 004313E7    pop         edx
 004313E8    ret
 004313E9    movzx       eax,word ptr [eax]
 004313EC    and         ax,2000
 004313F0    cmp         ax,2000
 004313F4    sete        al
 004313F7    pop         ecx
 004313F8    pop         edx
 004313F9    ret
*}
end;

//004313FC
function VarTypeIsValidArrayType(const AVarType:TVarType):Boolean;
begin
{*
 004313FC    mov         edx,eax
 004313FE    sub         dx,16
>00431402    jae         00431416
 00431404    movzx       eax,ax
 00431407    lea         eax,[eax+eax*2]
 0043140A    mov         edx,dword ptr ds:[7C4AB4]
 00431410    cmp         byte ptr [edx+eax*4],0
>00431414    jne         00431419
 00431416    xor         eax,eax
 00431418    ret
 00431419    mov         al,1
 0043141B    ret
*}
end;

//0043141C
function VarTypeIsValidElementType(const AVarType:TVarType):Boolean;
begin
{*
 0043141C    push        ebx
 0043141D    push        esi
 0043141E    mov         ebx,eax
 00431420    movzx       esi,bx
 00431423    and         esi,0FFFFBFFF
 00431429    mov         eax,esi
 0043142B    sub         eax,16
>0043142E    jae         00431440
 00431430    lea         eax,[esi+esi*2]
 00431433    mov         edx,dword ptr ds:[7C4AB4]
 00431439    cmp         byte ptr [edx+eax*4+1],0
>0043143E    jne         00431450
 00431440    mov         eax,ebx
 00431442    call        VarTypeIsCustom
 00431447    test        al,al
>00431449    jne         00431450
 0043144B    xor         eax,eax
 0043144D    pop         esi
 0043144E    pop         ebx
 0043144F    ret
 00431450    mov         al,1
 00431452    pop         esi
 00431453    pop         ebx
 00431454    ret
*}
end;

//00431458
function @VarArrayGet(var A:TVarData; IndexCount:Integer; const Indices:TVarArrayCoorArray):TVarData; cdecl;
begin
{*
 00431458    push        ebp
 00431459    mov         ebp,esp
 0043145B    add         esp,0FFFFFFE4
 0043145E    push        ebx
 0043145F    lea         ecx,[ebp-8]
 00431462    lea         edx,[ebp-2]
 00431465    mov         eax,dword ptr [ebp+0C]
 00431468    call        GetVarDataArrayInfo
 0043146D    test        al,al
>0043146F    jne         0043147B
 00431471    mov         eax,80070057
 00431476    call        VarResultCheck
 0043147B    mov         eax,dword ptr [ebp-8]
 0043147E    movzx       eax,word ptr [eax]
 00431481    cmp         eax,dword ptr [ebp+10]
>00431484    je          00431490
 00431486    mov         eax,8002000B
 0043148B    call        VarResultCheck
 00431490    lea         eax,[ebp-1C]
 00431493    push        eax
 00431494    call        oleaut32.VariantInit
 00431499    xor         eax,eax
 0043149B    push        ebp
 0043149C    push        431518
 004314A1    push        dword ptr fs:[eax]
 004314A4    mov         dword ptr fs:[eax],esp
 004314A7    movzx       ebx,word ptr [ebp-2]
 004314AB    and         bx,0FFF
 004314B0    movzx       ebx,bx
 004314B3    cmp         ebx,0C
>004314B6    jne         004314DD
 004314B8    lea         eax,[ebp-0C]
 004314BB    push        eax
 004314BC    lea         eax,[ebp+14]
 004314BF    push        eax
 004314C0    mov         eax,dword ptr [ebp-8]
 004314C3    push        eax
 004314C4    call        oleaut32.SafeArrayPtrOfIndex
 004314C9    call        VarResultCheck
 004314CE    mov         eax,dword ptr [ebp-0C]
 004314D1    mov         edx,eax
 004314D3    lea         eax,[ebp-1C]
 004314D6    call        @VarCopy
>004314DB    jmp         004314F7
 004314DD    lea         eax,[ebp-14]
 004314E0    push        eax
 004314E1    lea         eax,[ebp+14]
 004314E4    push        eax
 004314E5    mov         eax,dword ptr [ebp-8]
 004314E8    push        eax
 004314E9    call        oleaut32.SafeArrayGetElement
 004314EE    call        VarResultCheck
 004314F3    mov         word ptr [ebp-1C],bx
 004314F7    lea         edx,[ebp-1C]
 004314FA    mov         eax,dword ptr [ebp+8]
 004314FD    call        @VarCopy
 00431502    xor         eax,eax
 00431504    pop         edx
 00431505    pop         ecx
 00431506    pop         ecx
 00431507    mov         dword ptr fs:[eax],edx
 0043150A    push        43151F
 0043150F    lea         eax,[ebp-1C]
 00431512    call        @VarClear
 00431517    ret
>00431518    jmp         @HandleFinally
>0043151D    jmp         0043150F
 0043151F    pop         ebx
 00431520    mov         esp,ebp
 00431522    pop         ebp
 00431523    ret
*}
end;

//00431524
procedure @VarArrayPut(var A:TVarData; const Value:TVarData; IndexCount:Integer; const Indices:TVarArrayCoorArray); cdecl;
begin
{*
 00431524    push        ebp
 00431525    mov         ebp,esp
 00431527    add         esp,0FFFFFFDC
 0043152A    push        ebx
 0043152B    push        esi
 0043152C    mov         esi,dword ptr [ebp+0C]
 0043152F    lea         ecx,[ebp-18]
 00431532    lea         edx,[ebp-12]
 00431535    mov         eax,dword ptr [ebp+8]
 00431538    call        GetVarDataArrayInfo
 0043153D    test        al,al
>0043153F    jne         0043154B
 00431541    mov         eax,80070057
 00431546    call        VarResultCheck
 0043154B    lea         ecx,[ebp-20]
 0043154E    lea         edx,[ebp-1A]
 00431551    mov         eax,esi
 00431553    call        GetVarDataArrayInfo
 00431558    test        al,al
>0043155A    jne         00431583
 0043155C    movzx       eax,word ptr [ebp-1A]
 00431560    call        VarTypeIsValidElementType
 00431565    test        al,al
>00431567    jne         00431583
 00431569    cmp         word ptr [ebp-1A],100
>0043156F    je          00431583
 00431571    cmp         word ptr [ebp-1A],102
>00431577    je          00431583
 00431579    mov         eax,80020005
 0043157E    call        VarResultCheck
 00431583    mov         eax,dword ptr [ebp-18]
 00431586    movzx       eax,word ptr [eax]
 00431589    cmp         eax,dword ptr [ebp+10]
>0043158C    je          00431598
 0043158E    mov         eax,8002000B
 00431593    call        VarResultCheck
 00431598    movzx       ebx,word ptr [ebp-12]
 0043159C    and         bx,0FFF
 004315A1    movzx       ebx,bx
 004315A4    cmp         ebx,0C
>004315A7    jne         004315EB
 004315A9    cmp         word ptr [ebp-1A],100
>004315AF    je          004315B9
 004315B1    cmp         word ptr [ebp-1A],102
>004315B7    jne         004315C6
 004315B9    movzx       eax,word ptr [ebp-1A]
 004315BD    call        VarTypeIsCustom
 004315C2    test        al,al
>004315C4    je          004315EB
 004315C6    lea         eax,[ebp-24]
 004315C9    push        eax
 004315CA    lea         eax,[ebp+14]
 004315CD    push        eax
 004315CE    mov         eax,dword ptr [ebp-18]
 004315D1    push        eax
 004315D2    call        oleaut32.SafeArrayPtrOfIndex
 004315D7    call        VarResultCheck
 004315DC    mov         eax,dword ptr [ebp-24]
 004315DF    mov         edx,esi
 004315E1    call        @VarCopy
>004315E6    jmp         00431673
 004315EB    lea         eax,[ebp-10]
 004315EE    push        eax
 004315EF    call        oleaut32.VariantInit
 004315F4    xor         eax,eax
 004315F6    push        ebp
 004315F7    push        43166C
 004315FC    push        dword ptr fs:[eax]
 004315FF    mov         dword ptr fs:[eax],esp
 00431602    cmp         ebx,0C
>00431605    jne         00431619
 00431607    mov         edx,esi
 00431609    lea         eax,[ebp-10]
 0043160C    call        VarStringToOleStr
 00431611    lea         eax,[ebp-10]
 00431614    mov         dword ptr [ebp-24],eax
>00431617    jmp         00431640
 00431619    mov         edx,esi
 0043161B    lea         eax,[ebp-10]
 0043161E    mov         ecx,ebx
 00431620    call        @VarCast
 00431625    add         ebx,0FFFFFFF8
 00431628    sub         ebx,2
>0043162B    jb          00431632
 0043162D    sub         ebx,3
>00431630    jne         0043163A
 00431632    mov         eax,dword ptr [ebp-8]
 00431635    mov         dword ptr [ebp-24],eax
>00431638    jmp         00431640
 0043163A    lea         eax,[ebp-8]
 0043163D    mov         dword ptr [ebp-24],eax
 00431640    mov         eax,dword ptr [ebp-24]
 00431643    push        eax
 00431644    lea         eax,[ebp+14]
 00431647    push        eax
 00431648    mov         eax,dword ptr [ebp-18]
 0043164B    push        eax
 0043164C    call        oleaut32.SafeArrayPutElement
 00431651    call        VarResultCheck
 00431656    xor         eax,eax
 00431658    pop         edx
 00431659    pop         ecx
 0043165A    pop         ecx
 0043165B    mov         dword ptr fs:[eax],edx
 0043165E    push        431673
 00431663    lea         eax,[ebp-10]
 00431666    call        @VarClear
 0043166B    ret
>0043166C    jmp         @HandleFinally
>00431671    jmp         00431663
 00431673    pop         esi
 00431674    pop         ebx
 00431675    mov         esp,ebp
 00431677    pop         ebp
 00431678    ret
*}
end;

//004316AC
procedure ClearVariantTypeList;
begin
{*
 004316AC    push        ebp
 004316AD    mov         ebp,esp
 004316AF    push        ebx
 004316B0    push        esi
 004316B1    mov         esi,7C9F60;gvar_007C9F60
 004316B6    or          edx,0FFFFFFFF
 004316B9    mov         eax,[007C9F64];gvar_007C9F64
 004316BE    call        TMonitor.Enter
 004316C3    xor         edx,edx
 004316C5    push        ebp
 004316C6    push        431739
 004316CB    push        dword ptr fs:[edx]
 004316CE    mov         dword ptr fs:[edx],esp
 004316D1    mov         eax,dword ptr [esi]
 004316D3    test        eax,eax
>004316D5    je          004316DC
 004316D7    sub         eax,4
 004316DA    mov         eax,dword ptr [eax]
 004316DC    mov         ebx,eax
 004316DE    dec         ebx
 004316DF    cmp         ebx,0
>004316E2    jl          00431714
 004316E4    mov         eax,dword ptr [esi]
 004316E6    mov         eax,dword ptr [eax+ebx*4]
 004316E9    test        eax,eax
>004316EB    je          0043170E
 004316ED    cmp         eax,dword ptr ds:[79F6B0];gvar_0079F6B0
>004316F3    je          004316FA
 004316F5    call        TObject.Free
 004316FA    mov         eax,dword ptr [esi]
 004316FC    mov         eax,dword ptr [eax+ebx*4]
 004316FF    cmp         eax,dword ptr ds:[79F6B0];gvar_0079F6B0
>00431705    jne         0043170E
 00431707    mov         eax,dword ptr [esi]
 00431709    xor         edx,edx
 0043170B    mov         dword ptr [eax+ebx*4],edx
 0043170E    dec         ebx
 0043170F    cmp         ebx,0FFFFFFFF
>00431712    jne         004316E4
 00431714    mov         eax,esi
 00431716    mov         edx,dword ptr ds:[43167C];:12
 0043171C    call        @DynArrayClear
 00431721    xor         eax,eax
 00431723    pop         edx
 00431724    pop         ecx
 00431725    pop         ecx
 00431726    mov         dword ptr fs:[eax],edx
 00431729    push        431740
 0043172E    mov         eax,[007C9F64];gvar_007C9F64
 00431733    call        TMonitor.Exit
 00431738    ret
>00431739    jmp         @HandleFinally
>0043173E    jmp         0043172E
 00431740    pop         esi
 00431741    pop         ebx
 00431742    pop         ebp
 00431743    ret
*}
end;

//00431744
destructor TCustomVariantType.Destroy();
begin
{*
 00431744    push        ebp
 00431745    mov         ebp,esp
 00431747    add         esp,0FFFFFFF8
 0043174A    call        @BeforeDestruction
 0043174F    mov         byte ptr [ebp-5],dl
 00431752    mov         dword ptr [ebp-4],eax
 00431755    or          edx,0FFFFFFFF
 00431758    mov         eax,[007C9F64];gvar_007C9F64
 0043175D    call        TMonitor.Enter
 00431762    xor         edx,edx
 00431764    push        ebp
 00431765    push        4317C0
 0043176A    push        dword ptr fs:[edx]
 0043176D    mov         dword ptr fs:[edx],esp
 00431770    mov         eax,dword ptr [ebp-4]
 00431773    movzx       eax,word ptr [eax+4];TCustomVariantType....FVarType:word
 00431777    test        ax,ax
>0043177A    je          004317A8
 0043177C    movzx       eax,ax
 0043177F    mov         edx,dword ptr ds:[7C9F60];gvar_007C9F60
 00431785    xor         ecx,ecx
 00431787    mov         dword ptr [edx+eax*4-400],ecx
 0043178E    mov         eax,dword ptr [ebp-4]
 00431791    movzx       eax,word ptr [eax+4];TCustomVariantType.....FVarType:word
 00431795    mov         edx,dword ptr ds:[7C9F60];gvar_007C9F60
 0043179B    mov         ecx,dword ptr ds:[79F6B0];0xFFFFFFFF gvar_0079F6B0
 004317A1    mov         dword ptr [edx+eax*4-400],ecx
 004317A8    xor         eax,eax
 004317AA    pop         edx
 004317AB    pop         ecx
 004317AC    pop         ecx
 004317AD    mov         dword ptr fs:[eax],edx
 004317B0    push        4317C7
 004317B5    mov         eax,[007C9F64];gvar_007C9F64
 004317BA    call        TMonitor.Exit
 004317BF    ret
>004317C0    jmp         @HandleFinally
>004317C5    jmp         004317B5
 004317C7    movzx       edx,byte ptr [ebp-5]
 004317CB    and         dl,0FC
 004317CE    mov         eax,dword ptr [ebp-4]
 004317D1    call        TObject.Destroy
 004317D6    cmp         byte ptr [ebp-5],0
>004317DA    jle         004317E4
 004317DC    mov         eax,dword ptr [ebp-4]
 004317DF    call        @ClassDestroy
 004317E4    pop         ecx
 004317E5    pop         ecx
 004317E6    pop         ebp
 004317E7    ret
*}
end;

//004317E8
procedure TCustomVariantType.BinaryOp(var Left:TVarData; Right:TVarData; Operator:Integer);
begin
{*
 004317E8    push        ebp
 004317E9    mov         ebp,esp
 004317EB    call        TCustomVariantType.RaiseInvalidOp
 004317F0    pop         ebp
 004317F1    ret         4
*}
end;

//004317F4
procedure TCustomVariantType.Cast(var Dest:TVarData; Source:TVarData);
begin
{*
 004317F4    push        ebx
 004317F5    push        esi
 004317F6    push        edi
 004317F7    push        ecx
 004317F8    mov         esi,ecx
 004317FA    mov         edi,edx
 004317FC    mov         ebx,eax
 004317FE    mov         edx,esp
 00431800    movzx       eax,word ptr [esi]
 00431803    call        FindCustomVariantType
 00431808    test        al,al
>0043180A    je          00431820
 0043180C    movzx       eax,word ptr [ebx+4]
 00431810    push        eax
 00431811    mov         ecx,esi
 00431813    mov         edx,edi
 00431815    mov         eax,dword ptr [esp+4]
 00431819    mov         ebx,dword ptr [eax]
 0043181B    call        dword ptr [ebx+1C]
>0043181E    jmp         00431827
 00431820    mov         eax,ebx
 00431822    call        TCustomVariantType.RaiseCastError
 00431827    pop         edx
 00431828    pop         edi
 00431829    pop         esi
 0043182A    pop         ebx
 0043182B    ret
*}
end;

//0043182C
procedure TCustomVariantType.CastTo(var Dest:TVarData; Source:TVarData; AVarType:Word);
begin
{*
 0043182C    push        ebp
 0043182D    mov         ebp,esp
 0043182F    add         esp,0FFFFFFF8
 00431832    push        ebx
 00431833    push        esi
 00431834    push        edi
 00431835    mov         esi,ecx
 00431837    mov         dword ptr [ebp-4],edx
 0043183A    mov         ebx,eax
 0043183C    mov         edi,dword ptr [ebp+8]
 0043183F    cmp         di,word ptr [ebx+4]
>00431843    je          00431864
 00431845    lea         edx,[ebp-8]
 00431848    movzx       eax,word ptr [esi]
 0043184B    call        FindCustomVariantType
 00431850    test        al,al
>00431852    je          00431864
 00431854    push        edi
 00431855    mov         ecx,esi
 00431857    mov         edx,dword ptr [ebp-4]
 0043185A    mov         eax,dword ptr [ebp-8]
 0043185D    mov         ebx,dword ptr [eax]
 0043185F    call        dword ptr [ebx+1C]
>00431862    jmp         0043186B
 00431864    mov         eax,ebx
 00431866    call        TCustomVariantType.RaiseCastError
 0043186B    pop         edi
 0043186C    pop         esi
 0043186D    pop         ebx
 0043186E    pop         ecx
 0043186F    pop         ecx
 00431870    pop         ebp
 00431871    ret         4
*}
end;

//00431874
procedure TCustomVariantType.Compare(Left:TVarData; Right:TVarData; var Relationship:TVarCompareResult);
begin
{*
 00431874    push        ebp
 00431875    mov         ebp,esp
 00431877    call        TCustomVariantType.RaiseInvalidOp
 0043187C    pop         ebp
 0043187D    ret         4
*}
end;

//00431880
function TCustomVariantType.CompareOp(Left:TVarData; Right:TVarData; Operator:Integer):Boolean;
begin
{*
 00431880    push        ebp
 00431881    mov         ebp,esp
 00431883    push        ecx
 00431884    push        ebx
 00431885    push        esi
 00431886    mov         esi,eax
 00431888    lea         eax,[ebp-1]
 0043188B    push        eax
 0043188C    mov         eax,esi
 0043188E    mov         ebx,dword ptr [eax]
 00431890    call        dword ptr [ebx+38];TCustomVariantType.Compare
 00431893    movzx       eax,byte ptr [ebp-1]
 00431897    mov         edx,dword ptr [ebp+8]
 0043189A    lea         edx,[edx+edx*2]
 0043189D    add         edx,79F7C2
 004318A3    movzx       eax,byte ptr [edx+eax-2A]
 004318A8    pop         esi
 004318A9    pop         ebx
 004318AA    pop         ecx
 004318AB    pop         ebp
 004318AC    ret         4
*}
end;

//004318B0
procedure TCustomVariantType.CastToOle(var Dest:TVarData; Source:TVarData);
begin
{*
 004318B0    push        ebx
 004318B1    push        esi
 004318B2    push        edi
 004318B3    push        ebp
 004318B4    push        ecx
 004318B5    mov         esi,ecx
 004318B7    mov         edi,edx
 004318B9    mov         ebx,eax
 004318BB    mov         ecx,esp
 004318BD    mov         edx,esi
 004318BF    mov         eax,ebx
 004318C1    mov         ebp,dword ptr [eax]
 004318C3    call        dword ptr [ebp+0C]
 004318C6    test        al,al
>004318C8    je          004318DC
 004318CA    movzx       eax,word ptr [esp]
 004318CE    push        eax
 004318CF    mov         ecx,esi
 004318D1    mov         edx,edi
 004318D3    mov         eax,ebx
 004318D5    mov         ebx,dword ptr [eax]
 004318D7    call        dword ptr [ebx+1C]
>004318DA    jmp         004318E3
 004318DC    mov         eax,ebx
 004318DE    call        TCustomVariantType.RaiseCastError
 004318E3    pop         edx
 004318E4    pop         ebp
 004318E5    pop         edi
 004318E6    pop         esi
 004318E7    pop         ebx
 004318E8    ret
*}
end;

//004318EC
function TCustomVariantType.IsClear(V:TVarData):Boolean;
begin
{*
 004318EC    xor         eax,eax
 004318EE    ret
*}
end;

//004318F0
function TCustomVariantType.LeftPromotion(const V:TVarData; const Operator:TVarOp; var RequiredVarType:TVarType):Boolean;
begin
{*
 004318F0    push        ebp
 004318F1    mov         ebp,esp
 004318F3    mov         edx,dword ptr [ebp+8]
 004318F6    movzx       eax,word ptr [eax+4]
 004318FA    mov         word ptr [edx],ax
 004318FD    mov         al,1
 004318FF    pop         ebp
 00431900    ret         4
*}
end;

//00431904
function TCustomVariantType.OlePromotion(const V:TVarData; var RequiredVarType:TVarType):Boolean;
begin
{*
 00431904    mov         word ptr [ecx],8
 00431909    mov         al,1
 0043190B    ret
*}
end;

//0043190C
procedure TCustomVariantType.RaiseCastError;
begin
{*
 0043190C    call        VarInvalidNullOp
 00431911    ret
*}
end;

//00431914
procedure TCustomVariantType.RaiseInvalidOp;
begin
{*
 00431914    call        VarInvalidOp
 00431919    ret
*}
end;

//0043191C
procedure TCustomVariantType.RaiseDispError;
begin
{*
 0043191C    call        @DispInvokeError
 00431921    ret
*}
end;

//00431924
function TCustomVariantType.RightPromotion(const V:TVarData; const Operator:TVarOp; var RequiredVarType:TVarType):Boolean;
begin
{*
 00431924    push        ebp
 00431925    mov         ebp,esp
 00431927    mov         edx,dword ptr [ebp+8]
 0043192A    movzx       eax,word ptr [eax+4]
 0043192E    mov         word ptr [edx],ax
 00431931    mov         al,1
 00431933    pop         ebp
 00431934    ret         4
*}
end;

//00431938
procedure TCustomVariantType.UnaryOp(var Right:TVarData; Operator:Integer);
begin
{*
 00431938    call        TCustomVariantType.RaiseInvalidOp
 0043193D    ret
*}
end;

//00431940
procedure TCustomVariantType.DispInvoke(Dest:PVarData; const Source:TVarData; CallDesc:PCallDesc; Params:Pointer);
begin
{*
 00431940    push        ebp
 00431941    mov         ebp,esp
 00431943    call        TCustomVariantType.RaiseDispError
 00431948    pop         ebp
 00431949    ret         8
*}
end;

//0043194C
function TCustomVariantType._AddRef:Integer; stdcall;
begin
{*
 0043194C    push        ebp
 0043194D    mov         ebp,esp
 0043194F    or          eax,0FFFFFFFF
 00431952    pop         ebp
 00431953    ret         4
*}
end;

//00431958
function TCustomVariantType._Release:Integer; stdcall;
begin
{*
 00431958    push        ebp
 00431959    mov         ebp,esp
 0043195B    or          eax,0FFFFFFFF
 0043195E    pop         ebp
 0043195F    ret         4
*}
end;

//00431964
function TCustomVariantType.QueryInterface(const IID:TGUID; var Obj:Pointer):HRESULT; stdcall;
begin
{*
 00431964    push        ebp
 00431965    mov         ebp,esp
 00431967    push        ebx
 00431968    mov         ebx,dword ptr [ebp+8]
 0043196B    mov         ecx,dword ptr [ebp+10]
 0043196E    mov         edx,dword ptr [ebp+0C]
 00431971    mov         eax,ebx
 00431973    call        TObject.GetInterface
 00431978    test        al,al
>0043197A    je          00431980
 0043197C    xor         eax,eax
>0043197E    jmp         00431985
 00431980    mov         eax,80004002
 00431985    pop         ebx
 00431986    pop         ebp
 00431987    ret         0C
*}
end;

//0043198C
function FindCustomVariantType(const TypeName:UnicodeString; var CustomVariantType:TCustomVariantType):Boolean;
begin
{*
 0043198C    push        ebp
 0043198D    mov         ebp,esp
 0043198F    push        ecx
 00431990    push        ebx
 00431991    push        esi
 00431992    mov         esi,edx
 00431994    mov         ebx,eax
 00431996    cmp         dword ptr ds:[7C9F60],0;gvar_007C9F60
>0043199D    je          004319AD
 0043199F    cmp         bx,100
>004319A4    jb          004319AD
 004319A6    cmp         bx,7FF
>004319AB    jbe         004319B1
 004319AD    xor         eax,eax
>004319AF    jmp         004319B3
 004319B1    mov         al,1
 004319B3    mov         byte ptr [ebp-1],al
 004319B6    cmp         byte ptr [ebp-1],0
>004319BA    je          00431A45
 004319C0    or          edx,0FFFFFFFF
 004319C3    mov         eax,[007C9F64];gvar_007C9F64
 004319C8    call        TMonitor.Enter
 004319CD    xor         ecx,ecx
 004319CF    push        ebp
 004319D0    push        431A3E
 004319D5    push        dword ptr fs:[ecx]
 004319D8    mov         dword ptr fs:[ecx],esp
 004319DB    mov         eax,[007C9F60];gvar_007C9F60
 004319E0    test        eax,eax
>004319E2    je          004319E9
 004319E4    sub         eax,4
 004319E7    mov         eax,dword ptr [eax]
 004319E9    movzx       edx,bx
 004319EC    mov         ecx,edx
 004319EE    sub         ecx,100
 004319F4    cmp         eax,ecx
 004319F6    setg        byte ptr [ebp-1]
 004319FA    cmp         byte ptr [ebp-1],0
>004319FE    je          00431A26
 00431A00    mov         eax,[007C9F60];gvar_007C9F60
 00431A05    mov         eax,dword ptr [eax+edx*4-400]
 00431A0C    mov         dword ptr [esi],eax
 00431A0E    cmp         dword ptr [esi],0
>00431A11    je          00431A1D
 00431A13    mov         eax,dword ptr [esi]
 00431A15    cmp         eax,dword ptr ds:[79F6B0];gvar_0079F6B0
>00431A1B    jne         00431A21
 00431A1D    xor         eax,eax
>00431A1F    jmp         00431A23
 00431A21    mov         al,1
 00431A23    mov         byte ptr [ebp-1],al
 00431A26    xor         eax,eax
 00431A28    pop         edx
 00431A29    pop         ecx
 00431A2A    pop         ecx
 00431A2B    mov         dword ptr fs:[eax],edx
 00431A2E    push        431A45
 00431A33    mov         eax,[007C9F64];gvar_007C9F64
 00431A38    call        TMonitor.Exit
 00431A3D    ret
>00431A3E    jmp         @HandleFinally
>00431A43    jmp         00431A33
 00431A45    movzx       eax,byte ptr [ebp-1]
 00431A49    pop         esi
 00431A4A    pop         ebx
 00431A4B    pop         ecx
 00431A4C    pop         ebp
 00431A4D    ret
*}
end;

//00431A50
{*function sub_00431A50(?:?; ?:?):?;
begin
 00431A50    push        ebp
 00431A51    mov         ebp,esp
 00431A53    add         esp,0FFFFFFE8
 00431A56    push        ebx
 00431A57    push        esi
 00431A58    push        edi
 00431A59    xor         ecx,ecx
 00431A5B    mov         dword ptr [ebp-14],ecx
 00431A5E    mov         dword ptr [ebp-4],edx
 00431A61    mov         edi,eax
 00431A63    xor         eax,eax
 00431A65    push        ebp
 00431A66    push        431B44
 00431A6B    push        dword ptr fs:[eax]
 00431A6E    mov         dword ptr fs:[eax],esp
 00431A71    mov         byte ptr [ebp-5],0
 00431A75    or          edx,0FFFFFFFF
 00431A78    mov         eax,[007C9F64];gvar_007C9F64
 00431A7D    call        TMonitor.Enter
 00431A82    xor         edx,edx
 00431A84    push        ebp
 00431A85    push        431B27
 00431A8A    push        dword ptr fs:[edx]
 00431A8D    mov         dword ptr fs:[edx],esp
 00431A90    mov         eax,[007C9F60];gvar_007C9F60
 00431A95    test        eax,eax
>00431A97    je          00431A9E
 00431A99    sub         eax,4
 00431A9C    mov         eax,dword ptr [eax]
 00431A9E    dec         eax
 00431A9F    test        eax,eax
>00431AA1    jl          00431B0F
 00431AA3    inc         eax
 00431AA4    mov         dword ptr [ebp-10],eax
 00431AA7    mov         dword ptr [ebp-0C],0
 00431AAE    mov         eax,[007C9F60];gvar_007C9F60
 00431AB3    mov         edx,dword ptr [ebp-0C]
 00431AB6    mov         esi,dword ptr [eax+edx*4]
 00431AB9    test        esi,esi
>00431ABB    je          00431B07
 00431ABD    cmp         esi,dword ptr ds:[79F6B0];0xFFFFFFFF gvar_0079F6B0
>00431AC3    je          00431B07
 00431AC5    lea         edx,[ebp-14]
 00431AC8    mov         eax,dword ptr [esi]
 00431ACA    call        TObject.ClassName
 00431ACF    mov         ebx,dword ptr [ebp-14]
 00431AD2    cmp         ebx,edi
>00431AD4    jne         00431ADA
 00431AD6    mov         al,1
>00431AD8    jmp         00431AF8
 00431ADA    test        ebx,ebx
>00431ADC    je          00431AE2
 00431ADE    test        edi,edi
>00431AE0    jne         00431AE6
 00431AE2    xor         eax,eax
>00431AE4    jmp         00431AF8
 00431AE6    mov         edx,edi
 00431AE8    mov         dword ptr [ebp-18],ebx
 00431AEB    mov         eax,dword ptr [ebp-18]
 00431AEE    call        CompareText
 00431AF3    test        eax,eax
 00431AF5    sete        al
 00431AF8    test        al,al
>00431AFA    je          00431B07
 00431AFC    mov         eax,dword ptr [ebp-4]
 00431AFF    mov         dword ptr [eax],esi
 00431B01    mov         byte ptr [ebp-5],1
>00431B05    jmp         00431B0F
 00431B07    inc         dword ptr [ebp-0C]
 00431B0A    dec         dword ptr [ebp-10]
>00431B0D    jne         00431AAE
 00431B0F    xor         eax,eax
 00431B11    pop         edx
 00431B12    pop         ecx
 00431B13    pop         ecx
 00431B14    mov         dword ptr fs:[eax],edx
 00431B17    push        431B2E
 00431B1C    mov         eax,[007C9F64];gvar_007C9F64
 00431B21    call        TMonitor.Exit
 00431B26    ret
>00431B27    jmp         @HandleFinally
>00431B2C    jmp         00431B1C
 00431B2E    xor         eax,eax
 00431B30    pop         edx
 00431B31    pop         ecx
 00431B32    pop         ecx
 00431B33    mov         dword ptr fs:[eax],edx
 00431B36    push        431B4B
 00431B3B    lea         eax,[ebp-14]
 00431B3E    call        @UStrClr
 00431B43    ret
>00431B44    jmp         @HandleFinally
>00431B49    jmp         00431B3B
 00431B4B    movzx       eax,byte ptr [ebp-5]
 00431B4F    pop         edi
 00431B50    pop         esi
 00431B51    pop         ebx
 00431B52    mov         esp,ebp
 00431B54    pop         ebp
 00431B55    ret
end;*}

//00431B58
function Null:Variant;
begin
{*
 00431B58    call        @VarNull
 00431B5D    ret
*}
end;

//00431B60
procedure @VarCmpEQ(const Left:TVarData; const Right:TVarData);
begin
{*
 00431B60    mov         ecx,0E
 00431B65    call        VarCompare
 00431B6A    cmp         al,1
 00431B6C    ret
*}
end;

//00431B70
procedure @VarCmpLT(const Left:TVarData; const Right:TVarData);
begin
{*
 00431B70    mov         ecx,10
 00431B75    call        VarCompare
 00431B7A    cmp         al,1
 00431B7C    ret
*}
end;

Initialization
//0079C4F8
{*
 0079C4F8    push        ebp
 0079C4F9    mov         ebp,esp
 0079C4FB    xor         eax,eax
 0079C4FD    push        ebp
 0079C4FE    push        79C5A7
 0079C503    push        dword ptr fs:[eax]
 0079C506    mov         dword ptr fs:[eax],esp
 0079C509    sub         dword ptr ds:[7C9F5C],1
>0079C510    jae         0079C599
 0079C516    mov         eax,42A108;@DispInvokeError
 0079C51B    mov         [007C9F48],eax
 0079C520    mov         eax,429C58;VarInvalidOp
 0079C525    mov         [007C9F4C],eax
 0079C52A    mov         edx,429C50;VarCastError
 0079C52F    mov         dword ptr ds:[7C9F50],edx
 0079C535    mov         [007C9F54],eax
 0079C53A    mov         eax,42A2F4;@VarClr
 0079C53F    mov         edx,dword ptr ds:[7C48AC]
 0079C545    mov         dword ptr [edx],eax
 0079C547    mov         eax,430BDC;@VarAddRef
 0079C54C    mov         edx,dword ptr ds:[7C421C]
 0079C552    mov         dword ptr [edx],eax
 0079C554    mov         eax,42AC88;@VarCopy
 0079C559    mov         edx,dword ptr ds:[7C4A20]
 0079C55F    mov         dword ptr [edx],eax
 0079C561    mov         eax,42E1F8;@VarToLStr
 0079C566    mov         edx,dword ptr ds:[7C4E18]
 0079C56C    mov         dword ptr [edx],eax
 0079C56E    mov         eax,42EB50;@VarToWStr
 0079C573    mov         edx,dword ptr ds:[7C4A94]
 0079C579    mov         dword ptr [edx],eax
 0079C57B    mov         eax,42F2D8;@VarToUStr
 0079C580    mov         edx,dword ptr ds:[7C42D0];^gvar_0079E024
 0079C586    mov         dword ptr [edx],eax
 0079C588    mov         dl,1
 0079C58A    mov         eax,[00401728];TObject
 0079C58F    call        TObject.Create
 0079C594    mov         [007C9F64],eax;gvar_007C9F64
 0079C599    xor         eax,eax
 0079C59B    pop         edx
 0079C59C    pop         ecx
 0079C59D    pop         ecx
 0079C59E    mov         dword ptr fs:[eax],edx
 0079C5A1    push        79C5AE
 0079C5A6    ret
>0079C5A7    jmp         @HandleFinally
>0079C5AC    jmp         0079C5A6
 0079C5AE    pop         ebp
 0079C5AF    ret
*}
Finalization
//00431B80
{*
 00431B80    push        ebp
 00431B81    mov         ebp,esp
 00431B83    xor         eax,eax
 00431B85    push        ebp
 00431B86    push        431BD0
 00431B8B    push        dword ptr fs:[eax]
 00431B8E    mov         dword ptr fs:[eax],esp
 00431B91    inc         dword ptr ds:[7C9F5C]
>00431B97    jne         00431BC2
 00431B99    call        ClearVariantTypeList
 00431B9E    mov         eax,[007C9F64];gvar_007C9F64
 00431BA3    call        TObject.Free
 00431BA8    mov         eax,79F690
 00431BAD    call        @UStrClr
 00431BB2    mov         eax,7C9F60;gvar_007C9F60
 00431BB7    mov         edx,dword ptr ds:[43167C];:12
 00431BBD    call        @DynArrayClear
 00431BC2    xor         eax,eax
 00431BC4    pop         edx
 00431BC5    pop         ecx
 00431BC6    pop         ecx
 00431BC7    mov         dword ptr fs:[eax],edx
 00431BCA    push        431BD7
 00431BCF    ret
>00431BD0    jmp         @HandleFinally
>00431BD5    jmp         00431BCF
 00431BD7    pop         ebp
 00431BD8    ret
*}
end.