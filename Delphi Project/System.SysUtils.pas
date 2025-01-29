//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit System.SysUtils;

interface

uses
  SysUtils, Classes, System.SysUtils;

type
  TSearchRec = TSearchRec = record//size=270
f14:TFileName;//f14
end;
Time:Integer;//f0
Size:Int64;//f8
Attr:Integer;//f10
Name:TFileName;//f14
ExcludeAttr:Integer;//f18
FindHandle:NativeUInt;//f1C
FindData:_WIN32_FIND_DATAW;//f20
end;;
  Exception = class(TObject)
  published
    destructor Destroy();//004240E0
    constructor CreateHelp(AHelpContext:Integer);//00424098
    function ToString:string;//004241B0
    procedure GetBaseException;//00424124
    constructor CreateResFmt(Args:TVarRec);//00424004
    constructor CreateFmt(Args:TVarRec);//00423F48
    constructor Create;//00423F0C
    constructor CreateRes;//00423FC8
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FMessage:string;//f4
    FHelpContext:Integer;//f8
    FInnerException:Exception;//fC
    FStackInfo:Pointer;//f10
    FAcquireInnerException:Boolean;//f14
    function ToString:string; virtual;//004241B0
    destructor Destroy(); virtual;//004240E0
    //procedure v0(?:?); virtual;//v0//00424158
    procedure GetBaseException; virtual;//v4//00424124
  end;
  EArgumentException = class(Exception)
  end;
  EArgumentOutOfRangeException = class(EArgumentException)
  end;
  EPathTooLongException = class(Exception)
  end;
  ENotSupportedException = class(Exception)
  end;
  EDirectoryNotFoundException = class(Exception)
  end;
  EFileNotFoundException = class(Exception)
  end;
  EListError = class(Exception)
  end;
  EAbort = class(Exception)
  end;
  EHeapException = class(Exception)
  published
    procedure FreeInstance;//00424208
  public
    AllowFree:Boolean;//f18
    procedure FreeInstance; virtual;//00424208
    procedure v0; virtual;//v0//00424214
  end;
  EOutOfMemory = class(EHeapException)
  end;
  EInOutError = class(Exception)
  public
    .ErrorCode:Integer;//f18
  end;
  EExternal = class(Exception)
  public
    ExceptionRecord:PExceptionRecord;//f18
  end;
  EExternalException = class(EExternal)
  end;
  EIntError = class(EExternal)
  end;
  EDivByZero = class(EIntError)
  end;
  ERangeError = class(EIntError)
  end;
  EIntOverflow = class(EIntError)
  end;
  EMathError = class(EExternal)
  end;
  EInvalidOp = class(EMathError)
  end;
  EZeroDivide = class(EMathError)
  end;
  EOverflow = class(EMathError)
  end;
  EUnderflow = class(EMathError)
  end;
  EInvalidPointer = class(EHeapException)
  end;
  EInvalidCast = class(Exception)
  end;
  EConvertError = class(Exception)
  end;
  EAccessViolation = class(EExternal)
  end;
  EPrivilege = class(EExternal)
  end;
  EStackOverflow = class(EExternal)
  end;
  EControlC = class(EExternal)
  end;
  EVariantError = class(Exception)
  end;
  EAssertionFailed = class(Exception)
  end;
  EAbstractError = class(Exception)
  end;
  EIntfCastError = class(Exception)
  end;
  EOSError = class(Exception)
  public
    .ErrorCode:Cardinal;//f18
  end;
  ESafecallException = class(Exception)
  end;
  EMonitor = class(Exception)
  end;
  EMonitorLockException = class(EMonitor)
  end;
  ENoMonitorSupportException = class(EMonitor)
  end;
  ENotImplemented = class(Exception)
  end;
  EObjectDisposed = class(Exception)
  end;
  TFormatSettings.TEraInfo = TFormatSettings.TEraInfo = record//size=18
f0:string;//f0
end;
EraName:string;//f0
EraOffset:Integer;//f4
EraStart:TDate;//f8
EraEnd:TDate;//f10
end;;
  :TFormatSettings.:1 = array [1..12] of string;
  :TFormatSettings.:2 = array [1..12] of string;
  :TFormatSettings.:3 = array [1..7] of string;
  :TFormatSettings.:4 = array [1..7] of string;
  :TFormatSettings.:5 = array of TFormatSettings.TEraInfo;
//elSize = 18;
  TFormatSettings = TFormatSettings = record//size=CC
f0:string;//f0
fC:string;//fC
f10:string;//f10
f14:string;//f14
f18:string;//f18
f1C:string;//f1C
f20:string;//f20
f24::TFormatSettings.:1;//f24
f54::TFormatSettings.:2;//f54
f84::TFormatSettings.:3;//f84
fA0::TFormatSettings.:4;//fA0
fBC::TFormatSettings.:5;//fBC
fC8:string;//fC8
end;
CurrencyString:string;//f0
CurrencyFormat:Byte;//f4
CurrencyDecimals:Byte;//f5
DateSeparator:Char;//f6
TimeSeparator:Char;//f8
ListSeparator:Char;//fA
ShortDateFormat:string;//fC
LongDateFormat:string;//f10
TimeAMString:string;//f14
TimePMString:string;//f18
ShortTimeFormat:string;//f1C
LongTimeFormat:string;//f20
ShortMonthNames::TFormatSettings.:1;//f24
LongMonthNames::TFormatSettings.:2;//f54
ShortDayNames::TFormatSettings.:3;//f84
LongDayNames::TFormatSettings.:4;//fA0
EraInfo::TFormatSettings.:5;//fBC
ThousandSeparator:Char;//fC0
DecimalSeparator:Char;//fC2
TwoDigitYearCenturyWindow:Word;//fC4
NegCurrFormat:Byte;//fC6
NormalizedLocaleName:string;//fC8
end;
//Methods:
Create:TFormatSettings;//0079EC18
Create(Locale:Cardinal):TFormatSettings;//00422DB0
Create(LocaleName:string):TFormatSettings;//0079EC18
Invariant:TFormatSettings;//0079EC18
GetEraYearOffset(Name:string):Integer;//00423B2C;
  :55 = array of string;
//elSize = 4
//varType equivalent: var;
  :65 = array of string;
//elSize = 4
//varType equivalent: var;
  TThreadInfo = TThreadInfo = record//size=10
Next:PThreadInfo;//f0
ThreadID:Cardinal;//f4
Active:Integer;//f8
RecursionCount:Cardinal;//fC
end;;
  TThreadLocalCounter = class(TObject)
  published
    procedure Delete(var Thread:PThreadInfo);//00425C40
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    destructor Destroy();//00425B64
    procedure Open(var Thread:PThreadInfo);//00425BD8
  public
    FHashTable:?;//f4
  end;
  TMultiReadExclusiveWriteSynchronizer = class(TInterfacedObject)
  published
    procedure EndRead;//00425F1C
    function BeginWrite:Boolean;//00425D9C
    procedure EndWrite;//00425E54
    constructor Create;//00425C8C
    destructor Destroy();//00425D00
    procedure BeginRead;//00425EA4
  public
    FSentinel:Integer;//fC
    FReadSignal:NativeUInt;//f10
    FWriteSignal:NativeUInt;//f14
    FWaitRecycle:Cardinal;//f18
    FWriteRecursionCount:Cardinal;//f1C
    tls:TThreadLocalCounter;//f20
    FWriterID:Cardinal;//f24
    FRevisionLevel:Cardinal;//f28
  end;
  TStringBuilder = class(TObject)
  published
    function Append(Value:string):TStringBuilder;//00426130
    //procedure ToString(?:?);//004263F0
    //procedure ToString(StartIndex:Integer; StrLength:Integer; ?:?);//00426400
    constructor sub_004261E0;//004261E0
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function Append(Value:Char):TStringBuilder;//00426188
  public
    FData:TArray<System.Char>;//f4
    FLength:Integer;//f8
    FMaxCapacity:Integer;//fC
  end;
  EEncodingError = class(Exception)
  end;
  TArray<System.string> = array of string;
//elSize = 4
//varType equivalent: var;
  TEncoding = class(TObject)
  published
    procedure GetBytes(S:string; ?:TEncoding);//00427138
    procedure GetBytes(S:string; CharIndex:Integer; ByteIndex:Integer; Bytes:TArray<System.Byte>; CharCount:Integer);//00427188
    procedure GetBytes(Chars:TArray<System.Char>; CharIndex:Integer; ByteIndex:Integer; Bytes:TArray<System.Byte>; CharCount:Integer);//00426FC8
    procedure GetByteCount(S:string; CharIndex:Integer; CharCount:Integer);//00426ECC
    //procedure GetBytes(Chars:TArray<System.Char>; ?:?);//00426F7C
    function GetEncoding:TEncoding;//004274FC
    function GetString(Bytes:TArray<System.Byte>; ByteIndex:Integer; ByteCount:Integer):string;//00427568
    //procedure GetChars(Bytes:TArray<System.Byte>; ByteIndex:Integer; ?:?; ByteCount:Integer);//004273CC
    function GetCharCount(Bytes:TArray<System.Byte>; ByteIndex:Integer; ByteCount:Integer):Integer;//004272D8
    procedure GetChars(Bytes:TArray<System.Byte>; ?:TEncoding);//004273A4
    function GetByteCount(S:string):Integer;//00426EA4
    //procedure Convert(Source:TEncoding; Destination:TEncoding; ?:?; Count:Integer; StartIndex:Integer; Bytes:TArray<System.Byte>);//00426A30
    procedure FreeEncodings;//00426AAC
    //procedure Convert(Source:TEncoding; Destination:TEncoding; ?:?; Bytes:TArray<System.Byte>);//004269D0
    function Clone:TEncoding;//004269CC
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function GetByteCount(Chars:TArray<System.Char>):Integer;//00426DE4
    procedure GetByteCount(Chars:TArray<System.Char>; CharIndex:Integer; CharCount:Integer);//00426DF8
    function GetBufferEncoding(var AEncoding:TEncoding; ADefaultEncoding:TEncoding):Integer;//00426BF4
    function IsStandardEncoding:Boolean;//004276F4
    procedure GetBufferEncoding(var AEncoding:TEncoding);//00426B90
  public
    FIsSingleByte:Boolean;//f4
    FMaxCharSize:Integer;//f8
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
    procedure v8; virtual; abstract;//v8//00405554
    procedure vC; virtual; abstract;//vC//00405554
    procedure v10; virtual;//v10//004274F0
    //procedure v14(?:?); virtual;//v14//0042755C
    function Clone:TEncoding; virtual;//v18//004269CC
    procedure GetMaxByteCount; virtual; abstract;//v1C//00405554
    procedure GetMaxCharCount; virtual; abstract;//v20//00405554
    procedure GetPreamble; virtual; abstract;//v24//00405554
  end;
  TMBCSEncoding = class(TEncoding)
  published
    function GetMaxByteCount(CharCount:Integer):Integer;//00427920
    function GetMaxCharCount(ByteCount:Integer):Integer;//00427928
    //procedure GetPreamble(?:?);//0042792C
    procedure Clone;//00427848
    constructor sub_00427730;//00427730
    constructor sub_00427774(CodePage:Integer);//00427774
    constructor Create(WCharToMBFlags:Integer; MBToWCharFlags:Integer);//004277BC
  public
    FCodePage:Cardinal;//fC
    FMBToWCharFlags:Cardinal;//f10
    FWCharToMBFlags:Cardinal;//f14
    //procedure v0(?:?); virtual;//v0//0042786C
    //procedure v4(?:?; ?:?; ?:?); virtual;//v4//00427884
    //procedure v8(?:?); virtual;//v8//004278A8
    //procedure vC(?:?; ?:?; ?:?); virtual;//vC//004278BC
    //function v10:?; virtual;//v10//004278DC
    //procedure v14(?:?); virtual;//v14//004278E0
    procedure Clone; virtual;//v18//00427848
    function GetMaxByteCount(CharCount:Integer):Integer; virtual;//v1C//00427920
    function GetMaxCharCount(ByteCount:Integer):Integer; virtual;//v20//00427928
    //procedure GetPreamble(?:?); virtual;//v24//0042792C
    constructor v28; virtual;//v28//00427730
    constructor v2C(CodePage:Integer); virtual;//v2C//00427774
    constructor Create(WCharToMBFlags:Integer; MBToWCharFlags:Integer); virtual;//v30//004277BC
  end;
  TUTF7Encoding = class(TMBCSEncoding)
  published
    procedure GetMaxByteCount(CharCount:Integer);//00427AC8
    function GetMaxCharCount(ByteCount:Integer):Integer;//00427AD0
    constructor Create;//00427A78
    procedure Clone;//00427AB8
  public
    procedure Clone; virtual;//v18//00427AB8
    procedure GetMaxByteCount(CharCount:Integer); virtual;//v1C//00427AC8
    function GetMaxCharCount(ByteCount:Integer):Integer; virtual;//v20//00427AD0
    constructor Create; virtual;//v28//00427A78
  end;
  TUTF8Encoding = class(TUTF7Encoding)
  published
    function GetMaxCharCount(ByteCount:Integer):Integer;//00427B30
    //procedure GetPreamble(?:?);//00427B34
    function GetMaxByteCount(CharCount:Integer):Integer;//00427B28
    constructor Create;//00427AD4
    procedure Clone;//00427B18
  public
    procedure Clone; virtual;//v18//00427B18
    function GetMaxByteCount(CharCount:Integer):Integer; virtual;//v1C//00427B28
    function GetMaxCharCount(ByteCount:Integer):Integer; virtual;//v20//00427B30
    //procedure GetPreamble(?:?); virtual;//v24//00427B34
    constructor Create; virtual;//v28//00427AD4
  end;
  TUnicodeEncoding = class(TEncoding)
  published
    procedure GetMaxCharCount(ByteCount:Integer);//00427C98
    //procedure GetPreamble(?:?);//00427CA8
    procedure GetMaxByteCount(CharCount:Integer);//00427C90
    constructor Create;//00427BBC
    procedure Clone;//00427BE8
  public
    //procedure v0(?:?; ?:?); virtual;//v0//00427BF8
    //function v4(?:?; ?:?; ?:?):?; virtual;//v4//00427C00
    //procedure v8(?:?; ?:?); virtual;//v8//00427C1C
    //function vC(?:?):?; virtual;//vC//00427C28
    //function v10:?; virtual;//v10//00427C48
    //procedure v14(?:?); virtual;//v14//00427C50
    procedure Clone; virtual;//v18//00427BE8
    procedure GetMaxByteCount(CharCount:Integer); virtual;//v1C//00427C90
    procedure GetMaxCharCount(ByteCount:Integer); virtual;//v20//00427C98
    //procedure GetPreamble(?:?); virtual;//v24//00427CA8
    constructor Create; virtual;//v28//00427BBC
  end;
  TBigEndianUnicodeEncoding = class(TUnicodeEncoding)
  published
    //procedure GetPreamble(?:?);//00427E1C
    procedure Clone;//00427D28
  public
    procedure v4; virtual;//v4//00427D38
    //function vC(?:?; ?:?; ?:?):?; virtual;//vC//00427D6C
    //function v10:?; virtual;//v10//00427DB8
    //procedure v14(?:?); virtual;//v14//00427DC0
    procedure Clone; virtual;//v18//00427D28
    //procedure GetPreamble(?:?); virtual;//v24//00427E1C
  end;

implementation

Initialization
//0079C11C
{*
 0079C11C    push        ebx
 0079C11D    push        esi
 0079C11E    add         esp,0FFFFFEB4
 0079C124    sub         dword ptr ds:[7C7DD8],1
>0079C12B    jae         0079C401
 0079C131    lea         eax,[esp+30]
 0079C135    xor         ecx,ecx
 0079C137    mov         edx,11C
 0079C13C    call        @FillChar
 0079C141    mov         dword ptr [esp+30],11C
 0079C149    lea         eax,[esp+30]
 0079C14D    push        eax
 0079C14E    call        kernel32.GetVersionExW
 0079C153    mov         byte ptr ds:[7C7DCC],0;gvar_007C7DCC
 0079C15A    mov         eax,dword ptr [esp+34]
 0079C15E    mov         [007C7DC0],eax;gvar_007C7DC0
 0079C163    mov         eax,dword ptr [esp+38]
 0079C167    mov         [007C7DC4],eax;gvar_007C7DC4
 0079C16C    mov         eax,dword ptr [esp+3C]
 0079C170    mov         [007C7DBC],eax;gvar_007C7DBC
 0079C175    movzx       eax,word ptr [esp+144]
 0079C17D    mov         [007C7DD0],eax;gvar_007C7DD0
 0079C182    movzx       eax,word ptr [esp+146]
 0079C18A    mov         [007C7DD4],eax;gvar_007C7DD4
 0079C18F    lea         eax,[esp+0C]
 0079C193    xor         ecx,ecx
 0079C195    mov         edx,24
 0079C19A    call        @FillChar
 0079C19F    mov         edx,1
 0079C1A4    mov         eax,5
 0079C1A9    call        00427F94
 0079C1AE    test        al,al
>0079C1B0    je          0079C1BC
 0079C1B2    lea         eax,[esp+0C]
 0079C1B6    push        eax
 0079C1B7    call        00410810
 0079C1BC    cmp         word ptr [esp+0C],9
 0079C1C2    sete        al
 0079C1C5    and         eax,7F
 0079C1C8    movzx       eax,byte ptr [eax+79F568]
 0079C1CF    mov         [007C7DB8],al;gvar_007C7DB8
 0079C1D4    cmp         dword ptr ds:[7C7DC0],6;gvar_007C7DC0
>0079C1DB    jg          0079C1EF
 0079C1DD    cmp         dword ptr ds:[7C7DC0],6;gvar_007C7DC0
>0079C1E4    jne         0079C253
 0079C1E6    cmp         dword ptr ds:[7C7DC4],1;gvar_007C7DC4
>0079C1ED    jle         0079C253
 0079C1EF    xor         eax,eax
 0079C1F1    mov         dword ptr [esp+8],eax
 0079C1F5    movzx       ebx,word ptr ds:[7C7DD0];gvar_007C7DD0
 0079C1FC    movzx       esi,word ptr ds:[7C7DD4];gvar_007C7DD4
 0079C203    lea         edx,[esp+4]
 0079C207    mov         eax,esp
 0079C209    call        00424B14
 0079C20E    test        al,al
>0079C210    jne         0079C229
 0079C212    lea         eax,[esp+8]
 0079C216    push        eax
 0079C217    lea         ecx,[esp+8]
 0079C21B    lea         edx,[esp+4]
 0079C21F    mov         eax,79C418;'kernel32.dll'
 0079C224    call        00424CA8
 0079C229    mov         eax,dword ptr [esp]
 0079C22C    mov         [007C7DC0],eax;gvar_007C7DC0
 0079C231    mov         eax,dword ptr [esp+4]
 0079C235    mov         [007C7DC4],eax;gvar_007C7DC4
 0079C23A    movzx       eax,bx
 0079C23D    mov         [007C7DD0],eax;gvar_007C7DD0
 0079C242    movzx       eax,si
 0079C245    mov         [007C7DD4],eax;gvar_007C7DD4
 0079C24A    mov         eax,dword ptr [esp+8]
 0079C24E    mov         [007C7DBC],eax;gvar_007C7DBC
 0079C253    mov         edx,7C7DC8;gvar_007C7DC8:UnicodeString
 0079C258    mov         eax,[007C4D84];^SResString183:TResStringRec
 0079C25D    call        LoadResString
 0079C262    mov         eax,[007C7DC0];gvar_007C7DC0
 0079C267    sub         eax,5
>0079C26A    je          0079C380
 0079C270    dec         eax
>0079C271    je          0079C29E
 0079C273    sub         eax,4
>0079C276    jne         0079C401
 0079C27C    mov         eax,[007C7DC4];gvar_007C7DC4
 0079C281    sub         eax,1
>0079C284    jae         0079C401
 0079C28A    mov         edx,7C7DC8;gvar_007C7DC8:UnicodeString
 0079C28F    mov         eax,[007C4BC8];^SResString196:TResStringRec
 0079C294    call        LoadResString
>0079C299    jmp         0079C401
 0079C29E    mov         eax,[007C7DC4];gvar_007C7DC4
 0079C2A3    sub         eax,1
>0079C2A6    jb          0079C2B9
>0079C2A8    je          0079C2EB
 0079C2AA    dec         eax
>0079C2AB    je          0079C31D
 0079C2AD    dec         eax
>0079C2AE    je          0079C34F
>0079C2B4    jmp         0079C401
 0079C2B9    cmp         byte ptr [esp+14A],1
>0079C2C1    jne         0079C2D7
 0079C2C3    mov         edx,7C7DC8;gvar_007C7DC8:UnicodeString
 0079C2C8    mov         eax,[007C48C4];^SResString184:TResStringRec
 0079C2CD    call        LoadResString
>0079C2D2    jmp         0079C401
 0079C2D7    mov         edx,7C7DC8;gvar_007C7DC8:UnicodeString
 0079C2DC    mov         eax,[007C4B14];^SResString185:TResStringRec
 0079C2E1    call        LoadResString
>0079C2E6    jmp         0079C401
 0079C2EB    cmp         byte ptr [esp+14A],1
>0079C2F3    jne         0079C309
 0079C2F5    mov         edx,7C7DC8;gvar_007C7DC8:UnicodeString
 0079C2FA    mov         eax,[007C4ECC];^SResString186:TResStringRec
 0079C2FF    call        LoadResString
>0079C304    jmp         0079C401
 0079C309    mov         edx,7C7DC8;gvar_007C7DC8:UnicodeString
 0079C30E    mov         eax,[007C4848];^SResString187:TResStringRec
 0079C313    call        LoadResString
>0079C318    jmp         0079C401
 0079C31D    cmp         byte ptr [esp+14A],1
>0079C325    jne         0079C33B
 0079C327    mov         edx,7C7DC8;gvar_007C7DC8:UnicodeString
 0079C32C    mov         eax,[007C41C8];^SResString194:TResStringRec
 0079C331    call        LoadResString
>0079C336    jmp         0079C401
 0079C33B    mov         edx,7C7DC8;gvar_007C7DC8:UnicodeString
 0079C340    mov         eax,[007C4220];^SResString192:TResStringRec
 0079C345    call        LoadResString
>0079C34A    jmp         0079C401
 0079C34F    call        00427F38
 0079C354    test        al,al
>0079C356    jne         0079C36C
 0079C358    mov         edx,7C7DC8;gvar_007C7DC8:UnicodeString
 0079C35D    mov         eax,[007C4CA8];^SResString195:TResStringRec
 0079C362    call        LoadResString
>0079C367    jmp         0079C401
 0079C36C    mov         edx,7C7DC8;gvar_007C7DC8:UnicodeString
 0079C371    mov         eax,[007C4D00];^SResString193:TResStringRec
 0079C376    call        LoadResString
>0079C37B    jmp         0079C401
 0079C380    mov         eax,[007C7DC4];gvar_007C7DC4
 0079C385    sub         eax,1
>0079C388    jb          0079C391
>0079C38A    je          0079C3A2
 0079C38C    dec         eax
>0079C38D    je          0079C3B3
>0079C38F    jmp         0079C401
 0079C391    mov         edx,7C7DC8;gvar_007C7DC8:UnicodeString
 0079C396    mov         eax,[007C4EC8];^SResString188:TResStringRec
 0079C39B    call        LoadResString
>0079C3A0    jmp         0079C401
 0079C3A2    mov         edx,7C7DC8;gvar_007C7DC8:UnicodeString
 0079C3A7    mov         eax,[007C49E0];^SResString189:TResStringRec
 0079C3AC    call        LoadResString
>0079C3B1    jmp         0079C401
 0079C3B3    cmp         byte ptr [esp+14A],1
>0079C3BB    jne         0079C3D6
 0079C3BD    cmp         word ptr [esp+0C],9
>0079C3C3    jne         0079C3D6
 0079C3C5    mov         edx,7C7DC8;gvar_007C7DC8:UnicodeString
 0079C3CA    mov         eax,[007C49E0];^SResString189:TResStringRec
 0079C3CF    call        LoadResString
>0079C3D4    jmp         0079C401
 0079C3D6    push        59
 0079C3D8    call        user32.GetSystemMetrics
 0079C3DD    test        eax,eax
>0079C3DF    jne         0079C3F2
 0079C3E1    mov         edx,7C7DC8;gvar_007C7DC8:UnicodeString
 0079C3E6    mov         eax,[007C41DC];^SResString190:TResStringRec
 0079C3EB    call        LoadResString
>0079C3F0    jmp         0079C401
 0079C3F2    mov         edx,7C7DC8;gvar_007C7DC8:UnicodeString
 0079C3F7    mov         eax,[007C4CB8];^SResString191:TResStringRec
 0079C3FC    call        LoadResString
 0079C401    add         esp,14C
 0079C407    pop         esi
 0079C408    pop         ebx
 0079C409    ret
*}
Finalization
end.