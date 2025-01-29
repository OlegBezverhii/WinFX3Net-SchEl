//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit System;

interface

uses
  SysUtils, Classes;

type
  Boolean = (False, True);
  ByteBool = (False, True);
  WordBool = (False, True);
  LongBool = (False, True);
  TGUID = TGUID = record//size=10
D1:Cardinal;//f0
D2:Word;//f4
D3:Word;//f6
D4:?;//f8
end;
//Methods:
&op_Equality(Left:TGUID;Right:TGUID):Boolean;//0040CC88
&op_Inequality(Left:TGUID;Right:TGUID):Boolean;//0079EC18
Empty:TGUID;//0079EC18
Create(Data:?;BigEndian:Boolean):TGUID;//0079EC18
Create(Data:Byte;AStartIndex:Cardinal;BigEndian:Boolean):TGUID;//0079EC18;
  TInterfaceEntry = TInterfaceEntry = record//size=1C
IID:TGUID;//f0
VTable:Pointer;//f10
IOffset:Integer;//f14
ImplGetter:NativeUInt;//f18
end;;
  TInterfaceTable = TInterfaceTable = record//size=445C4
EntryCount:Integer;//f0
Entries:?;//f4
end;;
  TMethod = TMethod = record//size=8
Code:Pointer;//f0
Data:Pointer;//f4
end;
//Methods:
&op_Equality(Left:TMethod;Right:TMethod):Boolean;//0079EC18
&op_Inequality(Left:TMethod;Right:TMethod):Boolean;//0079EC18
&op_GreaterThan(Left:TMethod;Right:TMethod):Boolean;//0079EC18
&op_GreaterThanOrEqual(Left:TMethod;Right:TMethod):Boolean;//0079EC18
&op_LessThan(Left:TMethod;Right:TMethod):Boolean;//0079EC18
&op_LessThanOrEqual(Left:TMethod;Right:TMethod):Boolean;//0079EC18;
  TObject = class()
  published
    function Equals(Obj:TObject):Boolean;//00406E54
    function GetHashCode:Integer;//00406E5C
    function ToString:string;//004070B0
    function UnitName:string;//00406F50
    function FieldAddress(Name:string):Pointer;//004072E0
    //function GetInterface(IID:TGUID; Obj:?):Boolean;//00406E60
    function GetInterfaceEntry(IID:TGUID):PInterfaceEntry;//00406F0C
    function SafeCallException(ExceptObject:TObject; ExceptAddr:Pointer):HRESULT;//004070A8
    function NewInstance:TObject;//00406D30
    procedure FreeInstance;//00406D4C
    destructor Destroy();//00406D88
    //procedure DefaultHandler(var Message:?);//004070C4
    procedure AfterConstruction;//004070C8
    procedure BeforeDestruction;//004070CC
    //procedure Dispatch(var Message:?);//004070D0
    procedure CleanupInstance;//00406DFC
    function ClassName:string;//00406C90
    function ClassNameIs(Name:string):Boolean;//00406CA8
    function InitInstance(Instance:Pointer):TObject;//00406DA4
    constructor Create();//00406D68
    procedure Free;//00406D98
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function ClassParent:TClass;//00406D24
    function MethodAddress(Name:string):Pointer;//004071F8
    function MethodName(Address:Pointer):string;//00407220
    function FieldAddress(Name:ShortString):Pointer;//0040726C
    function MethodAddress(Name:ShortString):Pointer;//00407174
    function ClassInfo:Pointer;//004070A0
    function InstanceSize:Integer;//00406D60
    function InheritsFrom(AClass:TClass):Boolean;//0040708C
  end;
  TCustomAttribute = class(TObject)
  end;
  WeakAttribute = class(TCustomAttribute)
  end;
  VolatileAttribute = class(TCustomAttribute)
  end;
  HPPGENAttribute = class(TCustomAttribute)
  published
    constructor sub_004054FC(AFlag:Integer; AData:string);//004054FC
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  end;
  TInterfacedObject = class(TObject)
  published
    function NewInstance:TObject;//0040C6F0
    procedure BeforeDestruction;//0040C6DC
    procedure AfterConstruction;//0040C6D0
  public
    .FRefCount:Integer;//f4
    function _AddRef:Integer; stdcall;//0040C728
    function _Release:Integer; stdcall;//0040C744
  end;
  TVarArrayBound = TVarArrayBound = record//size=8
ElementCount:Integer;//f0
LowBound:Integer;//f4
end;;
  TVarArrayBoundArray = array [1..1] of TVarArrayBound;
  TVarArray = TVarArray = record//size=18
DimCount:Word;//f0
Flags:Word;//f2
ElementSize:Integer;//f4
LockCount:Integer;//f8
Data:Pointer;//fC
Bounds:TVarArrayBoundArray;//f10
end;;
  TVarRecord = TVarRecord = record//size=8
PRecord:Pointer;//f0
RecInfo:Pointer;//f4
end;;
  TVarData = TVarData = record//size=10
VType:Word;//f0
Reserved1:Word;//f2
Reserved2:Word;//f4
Reserved3:Word;//f6
VSmallInt:SmallInt;//f8
VInteger:Integer;//f8
VSingle:Single;//f8
VDouble:Double;//f8
VCurrency:Currency;//f8
VDate:TDateTime;//f8
VOleStr:PWideChar;//f8
VDispatch:Pointer;//f8
VError:HRESULT;//f8
VBoolean:WordBool;//f8
VUnknown:Pointer;//f8
VShortInt:ShortInt;//f8
VByte:Byte;//f8
VWord:Word;//f8
VLongWord:Cardinal;//f8
VInt64:Int64;//f8
VUInt64:UInt64;//f8
VString:Pointer;//f8
VAny:Pointer;//f8
VArray:PVarArray;//f8
VPointer:Pointer;//f8
VUString:Pointer;//f8
VRecord:TVarRecord;//f8
VLongs:?;//f4
VWords:?;//f2
VBytes:?;//f2
RawData:?;//f0
end;;
  TTypeKind = (tkUnknown, tkInteger, tkChar, tkEnumeration, tkFloat, tkString, tkSet, tkClass, tkMethod, tkWChar, tkLString, tkWString, tkVariant, tkArray, tkRecord, tkInterface, tkInt64, tkDynArray, tkUString, tkClassRef, tkPointer, tkProcedure);
  TVarRec = TVarRec = record//size=8
VInteger:Integer;//f0
VBoolean:Boolean;//f0
VChar:AnsiChar;//f0
VExtended:PExtended;//f0
VString:PShortString;//f0
VPointer:Pointer;//f0
VPChar:PAnsiChar;//f0
VObject:TObject;//f0
VClass:TClass;//f0
VWideChar:Char;//f0
VPWideChar:PWideChar;//f0
VAnsiString:Pointer;//f0
VCurrency:PCurrency;//f0
VVariant:PVariant;//f0
VInterface:Pointer;//f0
VWideString:Pointer;//f0
VInt64:PInt64;//f0
VUnicodeString:Pointer;//f0
_Reserved1:NativeInt;//f0
VType:Byte;//f4
end;;
  TTypeTable = array [1..536870911] of Pointer;
  TPackageTypeInfo = TPackageTypeInfo = record//size=10
TypeCount:Integer;//f0
TypeTable:PTypeTable;//f4
UnitCount:Integer;//f8
UnitNames:PShortString;//fC
end;;
  TArray<System.Byte> = array of Byte;
//elSize = 1
//varType equivalent: varByte;
  TArray<System.Char> = array of Char;
//elSize = 2;
  TArray<System.Integer> = array of Integer;
//elSize = 4
//varType equivalent: varInteger;
  TLibModule = TLibModule = record//size=1C
Next:PLibModule;//f0
Instance:NativeUInt;//f4
CodeInstance:NativeUInt;//f8
DataInstance:NativeUInt;//fC
ResInstance:NativeUInt;//f10
TypeInfo:PPackageTypeInfo;//f14
Reserved:NativeInt;//f18
end;;
  TResStringRec = TResStringRec = record//size=8
Module:?;//f0
Identifier:NativeUInt;//f4
end;;
  TFloatSpecial = (fsZero, fsNZero, fsDenormal, fsNDenormal, fsPositive, fsNegative, fsInf, fsNInf, fsNaN);
  TExtended80Rec = TExtended80Rec = record//size=A
aExtended80:Extended;//f0
end;
//Methods:
Exponent:Integer;//0079EC18
Fraction:Extended;//0079EC18
Mantissa:UInt64;//0079EC18
SpecialType:TFloatSpecial;//0079EC18
BuildUp(SignFlag:Boolean;Mantissa:UInt64;Exponent:Integer);//0079EC18
&op_Explicit(a:Extended):TExtended80Rec;//0079EC18
&op_Explicit(a:TExtended80Rec):Extended;//0079EC18;
  TExceptionRecord = TExceptionRecord = record//size=50
ExceptionCode:Cardinal;//f0
ExceptionFlags:Cardinal;//f4
ExceptionRecord:PExceptionRecord;//f8
ExceptionAddress:Pointer;//fC
NumberParameters:Cardinal;//f10
ExceptionInformation:?;//f14
ExceptAddr:Pointer;//f14
ExceptObject:Pointer;//f18
end;;
    function CloseHandle:LongBool; stdcall;//00403270
    function GetStdHandle:THandle; stdcall;//00403278
    function CreateFileW(dwDesiredAccess:Types.DWORD; dwShareMode:Types.DWORD; lpSecurityAttributes:PSecurityAttributes; dwCreationDisposition:Types.DWORD; dwFlagsAndAttributes:Types.DWORD; hTemplateFile:THandle):THandle; stdcall;//00403280
    function GetFileSize(lpFileSizeHigh:Pointer):Cardinal; stdcall;//00403288
    function GetFileType:DWORD; stdcall;//00403290
    function ReadFile(var Buffer:void ; nNumberOfBytesToRead:Types.DWORD; var lpNumberOfBytesRead:Types.DWORD; lpOverlapped:POverlapped):LongBool; stdcall;//00403298
    function SetEndOfFile:LongBool; stdcall;//004032A0
    function SetFilePointer(lDistanceToMove:Integer; lpDistanceToMoveHigh:Pointer; dwMoveMethod:Cardinal):Cardinal; stdcall;//004032A8
    function WriteFile(const Buffer:void ; nNumberOfBytesToWrite:Types.DWORD; var lpNumberOfBytesWritten:Types.DWORD; lpOverlapped:POverlapped):LongBool; stdcall;//004032B0
    procedure FindClose;//004032B8
    function FindFirstFileW(var lpFindFileData:_WIN32_FIND_DATAW):THandle; stdcall;//004032C0
    procedure InitializeCriticalSection; stdcall;//004032C8
    procedure EnterCriticalSection; stdcall;//004032D0
    procedure LeaveCriticalSection; stdcall;//004032D8
    procedure DeleteCriticalSection; stdcall;//004032E0
    function CreateThread(StackSize:NativeUInt; ThreadFunc:TThreadFunc; Parameter:Pointer; CreationFlags:Cardinal; var ThreadId:Cardinal):NativeUInt; stdcall;//004032E8
    function GetCurrentThreadId:Cardinal;//004032F0
    function SwitchToThread:LongBool;//004032F8
    procedure ExitThread; stdcall;//00403300
    procedure ExitProcess; stdcall;//00403308
    procedure RaiseException(dwExceptionFlags:Types.DWORD; nNumberOfArguments:Types.DWORD; lpArguments:PUINT_PTR); stdcall;//00403310
    procedure RtlUnwind;//00403318
    function UnhandledExceptionFilter:LongInt; stdcall;//00403320
    function GetLastError:Integer;//00403328
    function FreeLibrary:LongBool; stdcall;//00403330
    function LoadStringW(uID:LongWord; lpBuffer:PWideChar; nBufferMax:Integer):Integer; stdcall;//00403338
    function GetCommandLineW:PWideChar;//00403340
    function GetModuleFileNameW(lpFilename:PWideChar; nSize:Types.DWORD):DWORD; stdcall;//00403348
    function GetModuleHandleW:HINST; stdcall;//00403350
    function GetProcAddress(lpProcName:MarshaledAString):Pointer; stdcall;//00403358
    procedure GetStartupInfoW; stdcall;//00403360
    function LoadLibraryExW(hFile:THandle; dwFlags:Types.DWORD):HMODULE; stdcall;//00403368
    function GetACP:Cardinal;//00403370
    function GetConsoleCP:Cardinal;//00403378
    function GetConsoleOutputCP:Cardinal;//00403380
    function MultiByteToWideChar(dwFlags:Cardinal; const lpMultiByteStr:PAnsiChar; cchMultiByte:Integer; lpWideCharStr:PWideChar; cchWideChar:Integer):Integer; stdcall;//00403388
    function WideCharToMultiByte(dwFlags:Types.DWORD; lpWideCharStr:PWideChar; cchWideChar:Integer; lpMultiByteStr:MarshaledAString; cchMultiByte:Integer; lpDefaultChar:MarshaledAString; lpUsedDefaultChar:PBOOL):Integer; stdcall;//00403390
    function GetLocaleInfoW(LCType:Types.DWORD; lpLCData:PWideChar; cchData:Integer):Integer; stdcall;//00403398
    function GetUserDefaultUILanguage:LANGID;//004033A0
    function GetSystemDefaultUILanguage:Word;//004033A8
    function SetThreadLocale:LongBool; stdcall;//004033B0
    function IsValidLocale(dwFlags:Cardinal):LongBool; stdcall;//004033B8
    function IsDBCSLeadByteEx(TestChar:Byte):LongBool; stdcall;//004033C0
    function CharNextW:PWideChar; stdcall;//004033C8
    function CompareStringW(dwCmpFlags:Types.DWORD; lpString1:PWideChar; cchCount1:Integer; lpString2:PWideChar; cchCount2:Integer):Integer; stdcall;//004033D0
    procedure dll;//004033D8
    procedure $thunk_GetLogicalProcessorInformation;//004033E8
    function MessageBoxA(hWnd:NativeUInt; lpText:PAnsiChar; lpCaption:PAnsiChar; uType:Cardinal):Integer; stdcall;//004033F8
    function RegCloseKey:Integer; stdcall;//00403400
    function RegOpenKeyExW(lpSubKey:PWideChar; ulOptions:Types.DWORD; samDesired:Types.DWORD; var phkResult:HKEY):LongInt; stdcall;//00403408
    function RegQueryValueExW(lpValueName:PWideChar; lpReserved:Pointer; lpType:PDWORD; lpData:Types.PByte; lpcbData:PDWORD):LongInt; stdcall;//00403410
    function GetVersion:DWORD;//00403418
    procedure GetSystemInfo; stdcall;//00403420
    function GetTickCount:Cardinal;//00403428
    function QueryPerformanceCounter:LongBool; stdcall;//00403430
    function VirtualQuery(var lpBuffer:TMemoryBasicInformation; dwLength:NativeUInt):NativeUInt; stdcall;//00403438
    function SysAllocStringLen(len:Integer):PWideChar; stdcall;//00403440
    function SysReAllocStringLen(P:PWideChar; Len:Integer):LongBool; stdcall;//00403448
    procedure SysFreeString; stdcall;//00403450
    function lstrlenW:Integer; stdcall;//00403458
    function GetLogicalProcessorInformation(Buffer:PSYSTEM_LOGICAL_PROCESSOR_INFORMATION; var ReturnedLength:Cardinal):LongBool; stdcall;//00403480
    function GetCmdShow:Integer;//00403488
    function VirtualAlloc(dwSize:NativeUInt; flAllocationType:Types.DWORD; flProtect:Types.DWORD):Pointer; stdcall;//004034B4
    function VirtualFree(dwSize:NativeUInt; dwFreeType:Cardinal):LongBool; stdcall;//004034BC
    //function Sleep:?; stdcall;//004034C4
    function WriteFile(const Buffer:void ; nNumberOfBytesToWrite:Types.DWORD; var lpNumberOfBytesWritten:Types.DWORD; lpOverlapped:POverlapped):LongBool; stdcall;//004034CC
    function LockCmpxchg(CompareVal:Byte; NewVal:Byte; AAddress:PByte):Byte;//004035B4
    procedure Move12(const ASource:void ; var ADest:void ; ACount:NativeInt);//004035BC
    procedure Move20(const ASource:void ; var ADest:void ; ACount:NativeInt);//004035D0
    procedure Move28(const ASource:void ; var ADest:void ; ACount:NativeInt);//004035F0
    procedure Move36(const ASource:void ; var ADest:void ; ACount:NativeInt);//0040361C
    procedure Move44(const ASource:void ; var ADest:void ; ACount:NativeInt);//0040363C
    procedure Move52(const ASource:void ; var ADest:void ; ACount:NativeInt);//00403660
    procedure Move60(const ASource:void ; var ADest:void ; ACount:NativeInt);//0040368C
    procedure Move68(const ASource:void ; var ADest:void ; ACount:NativeInt);//004036BC
    procedure MoveX16LP(const ASource:void ; var ADest:void ; ACount:NativeInt);//004036F4
    procedure MoveX8LP(const ASource:void ; var ADest:void ; ACount:NativeInt);//00403724
    procedure RemoveMediumFreeBlock(APMediumFreeBlock:PMediumFreeBlock);//00403740
    procedure InsertMediumBlockIntoBin(APMediumFreeBlock:PMediumFreeBlock; AMediumBlockSize:Cardinal);//00403780
    procedure BinMediumSequentialFeedRemainder;//004037E0
    function AllocNewSequentialFeedMediumPool(AFirstBlockSize:Cardinal):Pointer;//0040384C
    procedure LockLargeBlocks;//004038C8
    function AllocateLargeBlock(ASize:NativeUInt):Pointer;//00403910
    function FreeLargeBlock(APointer:Pointer):Integer;//00403974
    function ReallocateLargeBlock(APointer:Pointer; ANewSize:NativeUInt):Pointer;//00403A18
    function SysGetMem(Size:NativeInt):Pointer;//00403B68
    function SysFreeMem(P:Pointer):Integer;//00403EEC
    function SysReallocMem(P:Pointer; Size:NativeInt):Pointer;//004040E4
    function SysAllocMem(Size:NativeInt):Pointer;//004043FC
    //procedure sub_00404430(?:?; ?:?);//00404430
    function NextMediumBlock(APMediumBlock:Pointer):Pointer;//004044B4
    function GetFirstMediumBlockInPool(APMediumBlockPoolHeader:PMediumBlockPoolHeader):Pointer;//004044D8
    procedure GetFirstAndLastSmallBlockInPool(APSmallBlockPool:PSmallBlockPoolHeader; var AFirstPtr:Pointer; var ALastPtr:Pointer);//00404518
    function NativeUIntToStrBuf(ANum:NativeUInt; APBuffer:PAnsiChar):PAnsiChar;//00404554
    function AppendStringToBuffer(const ASource:PAnsiChar; const ADestination:PAnsiChar; ACount:Cardinal):PAnsiChar;//004045A4
    function AppendClassNameToBuffer(AClass:TClass; ADestination:PAnsiChar):PAnsiChar;//004045BC
    function IsValidVMTAddress(APAddress:Pointer):Boolean;//004045F0
    function InternalIsValidClass(AClassPointer:Pointer; ADepth:Integer):Boolean;//00404668
    function GetObjectClass(APointer:Pointer):TClass;//004046E8
    function LockExpectedMemoryLeaksList:Boolean;//00404710
    function SysRegisterExpectedMemoryLeak(P:Pointer):Boolean;//00404784
    function SysUnregisterExpectedMemoryLeak(P:Pointer):Boolean;//004047C4
    procedure CheckSmallBlockPoolForLeaks(APSmallBlockPool:PSmallBlockPoolHeader);//0040481C
    procedure ScanForMemoryLeaks;//004049D8
    procedure BuildBlockTypeLookupTable;//00404DD0
    procedure InitializeMemoryManager;//00404E14
    procedure FreeAllMemory;//00404F3C
    procedure FinalizeMemoryManager;//00404FEC
    function AllocMem(Size:NativeInt):Pointer;//00405040
    function @GetMem(size:Integer):Pointer;//00405058
    function @FreeMem(p:Pointer):Integer;//00405074
    function @ReallocMem(var P:Pointer; NewSize:Integer):Pointer;//0040508C
    function ExceptObject:TObject;//004050DC
    function ExceptAddr:Pointer;//004050FC
    function AcquireExceptionObject:Pointer;//0040511C
    function RaiseList:Pointer;//00405150
    procedure RunErrorAt(ErrCode:Integer; ErrorAtAddr:Pointer);//0040515C
    procedure ErrorAt(ErrorCode:Byte; ErrorAddr:Pointer);//00405168
    procedure Error(errorCode:TRuntimeError);//004051B4
    procedure @_IOTest;//004051CC
    procedure SetInOutRes(NewValue:Integer);//004051EC
    function IOResult:Integer;//004051FC
    procedure Move(const Source:void ; var Dest:void ; Count:NativeInt);//0040521C
    function GetParamStr(P:PWideChar; var Param:AnsiString):PWideChar;//0040531C
    function ParamCount:Integer;//004053D8
    function ParamStr(Index:Integer):string;//00405438
    procedure Randomize;//00405498
    procedure Reset8087CW;//004054C0
    procedure Set8087CW(NewCW:Word);//004054D0
    function Get8087CW:Word;//004054E0
    function GetMXCSR:Cardinal;//004054E8
    procedure @ROUND;//00405524
    function @TRUNC(X:Extended):Int64;//00405530
    procedure @AbstractError;//00405554
    procedure @_FlushMBCSBuffer(var t:TTextRec);//00405578
    function OpenText(var t:TTextRec; Mode:Word):Integer;//00405588
    function @ResetText(var T:TTextRec):Integer;//004055EC
    function TextIn(var t:TTextRec):Integer;//004055F8
    function FileNOPProc(var t:void ):Integer;//00405634
    function TextOut(var t:TTextRec):Integer;//00405638
    function InternalClose(Handle:NativeUInt):Boolean;//00405674
    function TextClose(var t:TTextRec):Integer;//00405688
    function TextOpenCleanup(var t:TTextRec):Integer;//004056A8
    function TextOpen(var t:TTextRec):Integer;//004056C0
    //function sub_0040592C(?:?; ?:?; ?:?):?;//0040592C
    function InternalFlush(var t:TTextRec; Func:TTextIOFunc):Integer;//004059D4
    function Flush(var t:Text):Integer;//00405A1C
    procedure @Close(var F:TFileRec);//00405A28
    function @EofText(var T:TTextRec):Boolean;//00405A80
    procedure @FillChar(var dst:Pointer; cnt:Integer; val:Char);//00405AAC
    function TryOpenForInput(var t:TTextRec):Boolean;//00405B48
    function @ReadByte(var t:TTextRec; var IsEof:Boolean):Byte;//00405B84
    function @ReadWord(var t:TTextRec; var IsEof:Boolean):Word;//00405BF8
    function @GetAnsiChar(var t:TTextRec; var IsEof:Boolean; codepage:Word):Byte;//00405C70
    procedure @SkipAnsiChar(var t:TTextRec);//00405E0C
    function @GetWideChar(var t:TTextRec; var IsEof:Boolean):Word;//00405E38
    procedure @SkipWideChar(var t:TTextRec);//00406058
    function @ValLongL(const s:AnsiString; var code:Integer):Integer;//00406088
    function @ReadLong(var T:TTextRec):Longint;//004060DC
    procedure @PushCRLF(var t:TTextRec);//004061A8
    function ReadAnsiLineEx(var t:TTextRec; buf:Pointer; maxLen:Integer; var Count:Integer; CodePage:Word):Pointer;//004061C8
    function ReadAnsiLineEx2(var t:TTextRec; buf:Pointer; maxLen:Integer; var Count:Integer):Pointer;//00406288
    function ReadWideLineEx2(var t:TTextRec; buf:Pointer; maxLen:Integer; var Count:Integer):Pointer;//00406348
    procedure @ReadLString(var T:TTextRec; var S:AnsiString);//0040640C
    procedure @ReadUString(var T:TTextRec; var S:UnicodeString);//00406574
    function @ReadExt(var T:TTextRec):Extended;//00406680
    procedure @ReadLn(var T:TTextRec);//00406750
    function @SeekEof(var T:TTextRec):Boolean;//004067C4
    function @ValLong(s:AnsiString; var code:Integer):Longint;//00406804
    procedure @_CToPasStr(Dest:PShortString; const Source:PAnsiChar);//00406908
    procedure @_CLenToPasStr(Dest:PShortString; const Source:PAnsiChar; MaxLen:NativeInt);//00406914
    procedure @SetElem(var Dest:SET; Elem:Byte; Size:Byte);//00406944
    procedure @SetRange;//00406968
    procedure @SetEq;//004069C0
    procedure @SetUnion;//004069F4
    procedure @SetSub;//00406A00
    procedure @SetExpand;//00406A10
    procedure @ValExt(s:AnsiString; var code:Integer);//00406A30
    procedure sub_00406B68;//00406B68
    procedure @Pow10;//00406B70
    function GetBriefSSEType:Cardinal;//00406C24
    procedure @InitializeControlWord;//00406C58
    procedure @FpuInit;//00406C74
    procedure @BoundErr;//00406C80
    procedure @IntOver;//00406C88
    function InvokeImplGetter(const Self:TObject; ImplGetter:NativeUInt):IInterface;//00406E24
    function @IsClass(Child:TObject; Parent:TClass):Boolean;//00406FD4
    function @AsClass(child:TObject; parent:TClass):TObject;//00406FF8
    function GetDynaMethod(vmt:TClass; selector:SmallInt):Pointer;//00407028
    procedure @CallDynaInst;//00407058
    function @FindDynaInst(const Self:TObject; Selector:SmallInt):Pointer;//00407078
    function UTF8Compare(const Str1:ShortString; const Str2:ShortString):Boolean;//004070FC
    function UTF8ShortStringToString(const Str:ShortString):string;//004071E4
    function @ClassCreate(InstanceOrVMT:Pointer; Alloc:ShortInt):Pointer;//00407308
    procedure @ClassDestroy(const Instance:TObject);//00407358
    function @AfterConstruction(const Instance:TObject):TObject;//00407360
    function @BeforeDestruction(const Instance:TObject; OuterMost:ShortInt):TObject;//004073B0
    procedure TSpinWait.SpinCycle;//004073C0
    procedure TSpinLock.Enter;//00407438
    procedure TSpinLock.Exit;//00407464
    procedure Spin;//0040746C
    function GetCacheLineSize:Integer;//0040747C
    procedure CheckMonitorSupport;//00407578
    function CheckOwningThread:Cardinal;//0040758C
    function Create:PMonitor;//004075A4
    procedure Destroy;//00407600
    procedure Destroy;//00407618
    function Enter(Timeout:Cardinal):Boolean;//00407644
    function DequeueWaiter:PWaitingThread;//00407660
    function Enter(Timeout:Cardinal):Boolean;//004076E0
    procedure Exit;//00407878
    procedure Exit;//004078C0
    function GetEvent:Pointer;//004078D8
    function GetFieldAddress:PPMonitor;//00407938
    function GetMonitor:PMonitor;//00407948
    procedure Pulse;//0040797C
    procedure Pulse;//00407998
    procedure PulseAll;//004079B0
    procedure PulseAll;//004079E4
    procedure QueueWaiter(var WaitingThread:TWaitingThread);//004079FC
    procedure RemoveWaiter(var WaitingThread:TWaitingThread);//00407A6C
    procedure SetSpinCount(ASpinCount:Integer);//00407B10
    function TryEnter:Boolean;//00407B28
    function TryEnter:Boolean;//00407B40
    function Wait(ALock:PMonitor; Timeout:Cardinal):Boolean;//00407B80
    function Wait(Timeout:Cardinal):Boolean;//00407C34
    function Wait(const ALock:TObject; Timeout:Cardinal):Boolean;//00407C54
    procedure NotifyReRaise;//00407C80
    procedure NotifyNonDelphiException;//00407C9C
    procedure NotifyExcept;//00407CC0
    procedure NotifyOnExcept;//00407CD8
    procedure NotifyAnyExcept;//00407CEC
    procedure CheckJmp;//00407D00
    procedure NotifyExceptFinally;//00407D20
    procedure NotifyTerminate;//00407D48
    procedure NotifyUnhandled;//00407D64
    procedure @HandleAnyException;//00407D84
    procedure @HandleOnException;//00407EB0
    procedure @HandleFinally;//00408038
    procedure @HandleFinallyInternal;//004080E0
    procedure @HandleAutoException;//00408118
    procedure @RaiseExcept;//004081DC
    procedure @RaiseAgain;//0040824C
    procedure @DoneExcept;//004082A0
    procedure @TryFinallyExit;//004082D0
    procedure MapToRunError(P:PExceptionRecord); stdcall;//004082E8
    procedure @ExceptionHandler;//00408388
    procedure SetExceptionHandler(Context:PInitContext);//00408428
    procedure UnsetExceptionHandler(Context:PInitContext);//00408448
    procedure FinalizeUnits;//00408470
    procedure InitUnits;//004084D8
    procedure @StartExe(InitTable:PackageInfo; Module:PLibModule);//00408544
    function LoadResStringA(ResStringRec:PResStringRec):AnsiString;//0040858C
    function LoadResStringW(ResStringRec:PResStringRec):WideString;//004085E0
    function LoadResStringU(ResStringRec:PResStringRec):string;//00408630
    procedure @InitResStringImports(InitTable:Pointer);//00408644
    procedure @InitImports(InitTable:Pointer);//00408688
    procedure @FinalizeResStringImports(InitTable:Pointer);//004086AC
    procedure MakeErrorMessage;//004086E8
    procedure ExitDll(Context:PInitContext);//00408744
    procedure WriteErrorMessage;//00408770
    procedure @Halt0;//00408808
    procedure @Halt(Code:Integer);//00408940
    procedure @RunError(errorCode:Byte);//0040894C
    procedure @Assert(Message:String; Filename:String; LineNumber:Integer);//00408968
    function ThreadWrapper(Parameter:Pointer):Integer; stdcall;//004089A4
    function BeginThread(SecurityAttributes:Pointer; StackSize:Cardinal; ThreadFunc:TThreadFunc; Parameter:Pointer; CreationFlags:Cardinal; var ThreadId:Cardinal):NativeUInt;//004089DC
    procedure EndThread(ExitCode:Integer);//00408A54
    function @NewUnicodeString(CharLength:Integer):Pointer;//00408A70
    function @NewAnsiString(CharLength:Integer; CodePage:Word):Pointer;//00408AB0
    procedure WStrError;//00408AFC
    function @NewWideString(CharLength:Integer):Pointer;//00408B04
    procedure @UStrClr(var S:UnicodeString);//00408B1C
    procedure @LStrClr(var S:AnsiString);//00408B40
    procedure @WStrClr(var S:WideString);//00408B64
    procedure @UStrArrayClr(var StrArray:Pointer; Count:Integer);//00408B7C
    procedure @LStrArrayClr(var StrArray:Pointer; Count:Integer);//00408BAC
    procedure @WStrArrayClr(var StrArray:Pointer; Count:Integer);//00408BDC
    function @UStrAddRef(var S:UnicodeString):Pointer;//00408C00
    function @LStrAddRef(var S:AnsiString):Pointer;//00408C10
    function @WStrAddRef(var S:WideString):Pointer;//00408C20
    function CharFromWChar(CharDest:PAnsiChar; DestBytes:Integer; const WCharSource:PWideChar; SrcChars:Integer; CodePage:Integer):Integer;//00408C40
    function CharFromWChar(CharDest:PAnsiChar; DestBytes:Integer; const WCharSource:PWideChar; SrcChars:Integer):Integer;//00408C6C
    function WCharFromChar(WCharDest:PWideChar; DestChars:Integer; const CharSource:PAnsiChar; SrcBytes:Integer; CodePage:Integer):Integer;//00408C88
    procedure @UStrFromPWCharLen(var Dest:UnicodeString; Source:PWideChar; Length:Integer);//00408CA4
    procedure @WStrFromPWCharLen(var Dest:WideString; Source:PWideChar; Length:Integer);//00408CD4
    procedure @LStrFromPCharLen(var Dest:AnsiString; Source:PAnsiChar; Length:Integer);//00408CF8
    procedure InternalUStrFromPCharLen(var Dest:AnsiString; Source:PAnsiChar; Length:Integer; CodePage:Integer);//00408D30
    procedure @UStrFromPCharLen(var Dest:UnicodeString; Source:PAnsiChar; Length:Integer);//00408DC4
    procedure InternalWStrFromPCharLen(var Dest:WideString; Source:PAnsiChar; Length:Integer; CodePage:Integer);//00408DD4
    procedure @WStrFromPCharLen(var Dest:WideString; Source:PAnsiChar; Length:Integer);//00408E68
    procedure @LStrFromPWCharLen(var Dest:AnsiString; Source:PWideChar; Length:Integer);//00408E78
    procedure @UStrAsg(var Dest:UnicodeString; Source:UnicodeString);//00408EFC
    procedure @UStrLAsg(var Dest:UnicodeString; const Source:UnicodeString);//00408F44
    procedure @WStrAsg(var Dest:WideString; Source:WideString);//00408F70
    procedure @LStrAsg(var Dest:AnsiString; Source:AnsiString);//00408F98
    procedure @LStrLAsg(var Dest:AnsiString; const Source:AnsiString);//00408FE0
    function @UStrLen(S:UnicodeString):Integer;//0040900C
    function @LStrLen(S:AnsiString):Integer;//00409018
    function @PCharLen(P:PAnsiChar):Integer;//00409024
    function @PWCharLen(P:PWideChar):Integer;//00409038
    function InternalUniqueStringU(var Str:AnsiString):Pointer;//0040904C
    function InternalUniqueStringA(var Str:AnsiString):Pointer;//00409090
    function @UniqueStringU(var Str:AnsiString):Pointer;//004090D4
    function @UniqueStringA(var Str:AnsiString):Pointer;//004090DC
    procedure UniqueString(var Str:AnsiString);//004090E4
    procedure @PStrCmp(S1:PShortString; S2:PShortString);//004090EC
    procedure @AStrCmp(S1:PShortString; S2:PShortString; Bytes:Integer);//00409170
    procedure @PStrCpy(Dest:PShortString; Source:PShortString);//004091E0
    procedure @PStrNCpy(Dest:PShortString; Source:PShortString; MaxLen:Byte);//004091EC
    procedure @Copy(S:ShortString; Index:Integer; Count:Integer; Result:ShortString);//00409208
    //procedure sub_0040924C(?:?; ?:?);//0040924C
    procedure @LStrFromChar(var Dest:AnsiString; Source:AnsiChar);//00409250
    procedure @LStrFromPChar(var Dest:AnsiString; Source:PAnsiChar);//00409260
    procedure @LStrFromPWChar(var Dest:AnsiString; Source:PWideChar);//00409294
    procedure @LStrFromString(var Dest:AnsiString; const Source:ShortString);//004092D4
    procedure @LStrFromWStr(var Dest:AnsiString; const Source:WideString);//004092E8
    procedure @LStrToString(var Dest:ShortString; const Source:AnsiString; MaxLen:Integer);//00409300
    procedure @LStrCat(var Dest:AnsiString; Source:AnsiString);//00409324
    procedure @LStrCat3(var Dest:AnsiString; Source1:AnsiString; Source2:AnsiString);//0040937C
    procedure @LStrCatN(var Dest:AnsiString; ArgCnt:Integer);//00409400
    procedure @LStrEqual(Left:AnsiString; Right:AnsiString);//004094C8
    function @LStrToPChar(S:AnsiString):PChar;//00409548
    function @LStrCopy(const S:AnsiString; Index:Integer; Count:Integer):AnsiString;//00409560
    procedure @LStrDelete(var S:AnsiString; Index:Integer; Count:Integer);//004095C0
    procedure @LStrSetLength(var S:AnsiString; NewLen:Integer);//0040960C
    procedure @LStrFromUStr(var Dest:AnsiString; const Source:AnsiString; CodePage:Word);//00409684
    procedure WStrSet(var S:WideString; P:PWideChar);//0040969C
    procedure @WStrFromChar(var Dest:WideString; Source:AnsiChar);//004096AC
    procedure @WStrFromWChar(var Dest:WideString; Source:WideChar);//004096C4
    procedure @WStrFromPChar(var Dest:WideString; Source:PAnsiChar);//004096D4
    procedure @WStrFromPWChar(var Dest:WideString; Source:PWideChar);//00409704
    procedure @WStrFromLStr(var Dest:WideString; const Source:AnsiString);//00409740
    function @WStrToPWChar(S:WideString):PWideChar;//00409760
    //function @WStrCmp(Left:WideString; Right:WideString):?;//00409774
    procedure @WStrEqual(Left:WideString; Right:WideString);//004097F8
    function @WStrCopy(const S:WideString; Index:Integer; Count:Integer):WideString;//00409800
    procedure @WStrSetLength(var S:WideString; NewLen:Integer);//0040984C
    procedure @WCharToString(Dest:PShortString; const Source:Char; MaxLen:Integer);//00409894
    function @UStrToPWChar(S:UnicodeString):PWideChar;//004098F0
    procedure @UStrFromChar(var Dest:UnicodeString; Source:AnsiChar);//00409908
    procedure @UStrFromWChar(var Dest:UnicodeString; Source:WideChar);//00409918
    procedure @UStrFromPChar(var Dest:UnicodeString; Source:PAnsiChar);//00409928
    procedure @UStrFromPWChar(var Dest:UnicodeString; Source:PWideChar);//00409958
    procedure @UStrFromWArray(var Dest:UnicodeString; Source:PWideChar; Length:Integer);//00409994
    procedure @UStrFromLStr(var Dest:UnicodeString; const Source:AnsiString);//004099B0
    procedure @UStrFromWStr(var Dest:UnicodeString; const Source:WideString);//004099D0
    procedure @WStrFromUStr(var Dest:WideString; const Source:AnsiString);//004099E4
    procedure @UStrToString(var Dest:ShortString; const Source:UnicodeString; MaxLen:Integer);//004099F4
    procedure @UStrFromString(var Dest:UnicodeString; const Source:ShortString);//00409A60
    procedure @UStrSetLength(var S:UnicodeString; NewLen:Integer);//00409A6C
    procedure @UStrCat(var Dest:UnicodeString; Source:UnicodeString);//00409AEC
    procedure @UStrCat3(var Dest:UnicodeString; Source1:UnicodeString; Source2:UnicodeString);//00409B44
    procedure @UStrCatN(var Dest:UnicodeString; ArgCnt:Integer);//00409BCC
    procedure @UStrEqual(Left:UnicodeString; Right:UnicodeString);//00409C7C
    function @UStrCopy(const S:UnicodeString; Index:Integer; Count:Integer):UnicodeString;//00409CB4
    procedure @UStrDelete(var S:UnicodeString; Index:Integer; Count:Integer);//00409CFC
    procedure @UStrInsert(const Source:UnicodeString; var S:UnicodeString; Index:Integer);//00409D58
    function Pos(const SubStr:ShortString; const Str:ShortString; Offset:Integer):Integer;//00409E10
    function Pos(const SubStr:AnsiString; const Str:AnsiString; Offset:Integer):Integer;//00409EC4
    function Pos(const SubStr:RawByteString; const Str:RawByteString; Offset:Integer):Integer;//00409F94
    function StringOfChar(Ch:Char; Count:Integer):string;//0040A044
    procedure SetAnsiString(Dest:PAnsiString; Source:PWideChar; Length:Integer; CodePage:Word);//0040A06C
    procedure SetCodePage(var S:RawByteString; CodePage:Word; Convert:Boolean);//0040A080
    procedure @AddRefRecord(P:Pointer; TypeInfo:Pointer);//0040A1D0
    procedure @AddRefArray(P:Pointer; TypeInfo:Pointer; ElemCount:NativeUInt);//0040A204
    procedure @AddRef(P:Pointer; TypeInfo:Pointer);//0040A29C
    procedure @FinalizeRecord(P:Pointer; TypeInfo:Pointer);//0040A2A8
    procedure @VarClr(var v:TVarData);//0040A2E0
    procedure @FinalizeArray(P:Pointer; TypeInfo:Pointer; ElemCount:NativeUInt);//0040A2F8
    procedure @Finalize(p:Pointer; typeInfo:Pointer);//0040A408
    procedure @InitializeRecord(p:Pointer; typeInfo:Pointer);//0040A414
    procedure @VarAddRef(var v:TVarData);//0040A448
    procedure @InitializeArray(p:Pointer; typeInfo:Pointer; elemCount:NativeUInt);//0040A460
    procedure @VarCopy(var Dest:TVarData; const Src:TVarData);//0040A524
    procedure @CopyRecord(Dest:Pointer; Source:Pointer; TypeInfo:Pointer);//0040A53C
    procedure @CopyArray(Dest:Pointer; Source:Pointer; TypeInfo:Pointer; Cnt:Integer);//0040A684
    function @New(Size:NativeInt; TypeInfo:Pointer):Pointer;//0040A79C
    procedure @Dispose(P:Pointer; TypeInfo:Pointer);//0040A7B0
    procedure CopyArray(Dest:Pointer; Source:Pointer; TypeInfo:Pointer; Count:NativeInt);//0040A7C0
    procedure FinalizeArray(P:Pointer; TypeInfo:Pointer; Count:NativeUInt);//0040A7D8
    function StringToOleStr(const Source:AnsiString):PWideChar;//0040A7E0
    function StringToOleStr(const Source:AnsiString):PWideChar;//0040A800
    procedure @DispCallByIDError;//0040A820
    procedure @_llmul;//0040A828
    procedure @_lldiv;//0040A84C
    procedure @_lludiv;//0040A8E0
    function @ValInt64(const S:AnsiString; var Code:Integer):Int64;//0040A92C
    //function sub_0040ABA8(?:Byte):?;//0040ABA8
    procedure DynArraySetLength(var arr:Pointer; typeInfo:PDynArrayTypeInfo; dimCnt:Longint; lenVec:PLongint);//0040ABB4
    procedure @DynArraySetLength(var Arr:Pointer; TypeInfo:PDynArrayTypeInfo; DimCnt:Longint; LengthVec:Longint);//0040ADC0
    procedure @DynArrayCopy(Arr:Pointer; TypeInfo:PDynArrayTypeInfo; var Result:Pointer);//0040ADCC
    procedure @DynArrayCopyRange(Arr:Pointer; TypeInfo:PDynArrayTypeInfo; Index:Integer; Count:Integer; var Result:Pointer);//0040ADF0
    procedure @DynArrayClear(var Arr:Pointer; TypeInfo:PDynArrayTypeInfo);//0040AEE4
    procedure @DynArrayAsg(var Dest:Pointer; Source:Pointer; TypeInfo:PDynArrayTypeInfo);//0040AF28
    procedure @DynArrayAddRef(Arr:Pointer);//0040AF64
    //procedure sub_0040AF74(?:?; ?:?; ?:?);//0040AF74
    //procedure sub_0040B078(?:TArray<System.Types.TMultiWaitEvent.TWaitInfo>; ?:?; ?:?; ?:?);//0040B078
    function FindHInstance(Address:Pointer):NativeUInt;//0040B168
    function FindClassHInstance(ClassType:TClass):NativeUInt;//0040B190
    function DelayLoadResourceModule(Module:PLibModule):NativeUInt;//0040B198
    function FindResourceHInstance(Instance:NativeUInt):NativeUInt;//0040B1E0
    procedure InitializeLocaleData;//0040B444
    procedure FinalizeLocaleDate;//0040B534
    procedure StringCopy(Dest:PWideChar; DestSize:Integer; Src:PWideChar);//0040B540
    function LastHyphenPos(S:AnsiString):Integer;//0040B574
    function ConvertResToUILanguages(ResBuffer:PAnsiChar):string;//0040B5E0
    function GetPreferredLangForOldOS(LANGID:Word):string;//0040B6C0
    function CheckDifferentLanguageList(src1:PWideChar; src2:PWideChar; len:Integer):Boolean;//0040B854
    function ThreadUILanguages(var bufsize:Integer):PWideChar;//0040B878
    function GetPreferredLangForNewOS(const LANGID:Word):string;//0040B8BC
    function GetUILanguages(const LANGID:Word):string;//0040B9D8
    function FindBS(Current:PWideChar):PWideChar;//0040BAF8
    function ToLongPath(AFileName:PWideChar; BufLen:Integer):PWideChar;//0040BB1C
    function InternalGetLocaleOverride(AppName:AnsiString):string;//0040BD0C
    function GetLocaleOverride(const AppName:AnsiString):string;//0040C028
    procedure SetLocaleOverride(const NewPreferredLanguages:AnsiString);//0040C08C
    function ResouceDLLExists(S:AnsiString):Boolean;//0040C0E8
    function LoadLanguageList(FileNameBody:AnsiString; List:AnsiString):string;//0040C154
    function Load3LettersModule(FileNameBody:AnsiString):string;//0040C220
    function GetResourceModuleName(HostAppName:AnsiString; ModuleName:AnsiString):string;//0040C2EC
    function LoadResourceModule(ModuleName:PWideChar; CheckOwner:Boolean):Cardinal;//0040C410
    procedure sub_0040C4DC;//0040C4DC
    procedure sub_0040C4E4;//0040C4E4
    procedure AddModuleUnloadProc(Proc:TModuleUnloadProcLW);//0040C4EC
    procedure RemoveModuleUnloadProc(Proc:TModuleUnloadProcLW);//0040C50C
    procedure NotifyModuleUnload(HInstance:Cardinal);//0040C568
    procedure RegisterModule(LibModule:PLibModule);//0040C5C4
    procedure UnregisterModule(LibModule:PLibModule);//0040C5D4
    function @IntfClear(var Dest:IInterface):Pointer;//0040C644
    procedure @IntfCopy(var Dest:IInterface; const Source:IInterface);//0040C65C
    procedure @IntfCast(var Dest:IInterface; const Source:IInterface; const IID:TGUID);//0040C688
    procedure @IntfAddRef(const Dest:IInterface);//0040C6B8
    function QueryInterface(const IID:TGUID; var Obj:Pointer):HRESULT; stdcall;//0040C700
    function @CheckAutoResult(ResultCode:HRESULT):HRESULT;//0040C788
    function UnicodeToUtf8(Dest:PAnsiChar; MaxDestBytes:Cardinal; Source:PWideChar; SourceChars:Cardinal):Cardinal;//0040C7BC
    function Utf8ToUnicode(Dest:PWideChar; MaxDestChars:Cardinal; Source:PAnsiChar; SourceBytes:Cardinal):Cardinal;//0040C85C
    function UTF8Encode(const US:AnsiString):RawByteString;//0040C8EC
    function UTF8EncodeToShortString(const US:AnsiString):ShortString;//0040C9C8
    function UTF8Decode(const S:RawByteString):WideString;//0040CA00
    function UTF8ToUnicodeString(const S:ShortString):string;//0040CAA8
    function UTF8ToString(const S:RawByteString):string;//0040CB38
    function UTF8ToString(const S:array[$0..-$1] of Byte; const _Dv_:$0..-$1):string;//0040CB4C
    function LoadResString(ResStringRec:PResStringRec):string;//0040CB84
    function LocaleCharsFromUnicode(CodePage:Cardinal; Flags:Cardinal; UnicodeStr:PWideChar; UnicodeStrLen:Integer; LocaleStr:PAnsiChar; LocaleStrLen:Integer; DefaultChar:PAnsiChar; UsedDefaultChar:PLongBool):Integer;//0040CBF0
    function UnicodeFromLocaleChars(CodePage:Cardinal; Flags:Cardinal; LocaleStr:PAnsiChar; LocaleStrLen:Integer; UnicodeStr:PWideChar; UnicodeStrLen:Integer):Integer;//0040CC18
    function GetCPUCount:Integer;//0040CC38
    procedure SetUtf8CompareLocale;//0040CC4C
    function &op_Equality(const Right:TGUID):Boolean;//0040CC88

implementation

//00403270
function kernel32.CloseHandle:LongBool; stdcall;
begin
{*
 00403270    jmp         dword ptr ds:[904C70]
*}
end;

//00403278
function kernel32.GetStdHandle:THandle; stdcall;
begin
{*
 00403278    jmp         dword ptr ds:[904C6C]
*}
end;

//00403280
function kernel32.CreateFileW(dwDesiredAccess:Types.DWORD; dwShareMode:Types.DWORD; lpSecurityAttributes:PSecurityAttributes; dwCreationDisposition:Types.DWORD; dwFlagsAndAttributes:Types.DWORD; hTemplateFile:THandle):THandle; stdcall;
begin
{*
 00403280    jmp         dword ptr ds:[904C68]
*}
end;

//00403288
function kernel32.GetFileSize(lpFileSizeHigh:Pointer):Cardinal; stdcall;
begin
{*
 00403288    jmp         dword ptr ds:[904C64]
*}
end;

//00403290
function kernel32.GetFileType:DWORD; stdcall;
begin
{*
 00403290    jmp         dword ptr ds:[904C60]
*}
end;

//00403298
function kernel32.ReadFile(var Buffer:void ; nNumberOfBytesToRead:Types.DWORD; var lpNumberOfBytesRead:Types.DWORD; lpOverlapped:POverlapped):LongBool; stdcall;
begin
{*
 00403298    jmp         dword ptr ds:[904C5C]
*}
end;

//004032A0
function kernel32.SetEndOfFile:LongBool; stdcall;
begin
{*
 004032A0    jmp         dword ptr ds:[904C58]
*}
end;

//004032A8
function kernel32.SetFilePointer(lDistanceToMove:Integer; lpDistanceToMoveHigh:Pointer; dwMoveMethod:Cardinal):Cardinal; stdcall;
begin
{*
 004032A8    jmp         dword ptr ds:[904C54]
*}
end;

//004032B0
function kernel32.WriteFile(const Buffer:void ; nNumberOfBytesToWrite:Types.DWORD; var lpNumberOfBytesWritten:Types.DWORD; lpOverlapped:POverlapped):LongBool; stdcall;
begin
{*
 004032B0    jmp         dword ptr ds:[904C50]
*}
end;

//004032B8
procedure kernel32.FindClose;
begin
{*
 004032B8    jmp         dword ptr ds:[904C4C]
*}
end;

//004032C0
function kernel32.FindFirstFileW(var lpFindFileData:_WIN32_FIND_DATAW):THandle; stdcall;
begin
{*
 004032C0    jmp         dword ptr ds:[904C48]
*}
end;

//004032C8
procedure kernel32.InitializeCriticalSection; stdcall;
begin
{*
 004032C8    jmp         dword ptr ds:[904C44]
*}
end;

//004032D0
procedure kernel32.EnterCriticalSection; stdcall;
begin
{*
 004032D0    jmp         dword ptr ds:[904C40]
*}
end;

//004032D8
procedure kernel32.LeaveCriticalSection; stdcall;
begin
{*
 004032D8    jmp         dword ptr ds:[904C3C]
*}
end;

//004032E0
procedure kernel32.DeleteCriticalSection; stdcall;
begin
{*
 004032E0    jmp         dword ptr ds:[904C38]
*}
end;

//004032E8
function kernel32.CreateThread(StackSize:NativeUInt; ThreadFunc:TThreadFunc; Parameter:Pointer; CreationFlags:Cardinal; var ThreadId:Cardinal):NativeUInt; stdcall;
begin
{*
 004032E8    jmp         dword ptr ds:[904C34]
*}
end;

//004032F0
function kernel32.GetCurrentThreadId:Cardinal;
begin
{*
 004032F0    jmp         dword ptr ds:[904C30]
*}
end;

//004032F8
function kernel32.SwitchToThread:LongBool;
begin
{*
 004032F8    jmp         dword ptr ds:[904C2C]
*}
end;

//00403300
procedure kernel32.ExitThread; stdcall;
begin
{*
 00403300    jmp         dword ptr ds:[904C28]
*}
end;

//00403308
procedure kernel32.ExitProcess; stdcall;
begin
{*
 00403308    jmp         dword ptr ds:[904C24]
*}
end;

//00403310
procedure kernel32.RaiseException(dwExceptionFlags:Types.DWORD; nNumberOfArguments:Types.DWORD; lpArguments:PUINT_PTR); stdcall;
begin
{*
 00403310    jmp         dword ptr ds:[904C20]
*}
end;

//00403318
procedure kernel32.RtlUnwind;
begin
{*
 00403318    jmp         dword ptr ds:[904C1C]
*}
end;

//00403320
function kernel32.UnhandledExceptionFilter:LongInt; stdcall;
begin
{*
 00403320    jmp         dword ptr ds:[904C18]
*}
end;

//00403328
function kernel32.GetLastError:Integer;
begin
{*
 00403328    jmp         dword ptr ds:[904C14]
*}
end;

//00403330
function kernel32.FreeLibrary:LongBool; stdcall;
begin
{*
 00403330    jmp         dword ptr ds:[904C10]
*}
end;

//00403338
function user32.LoadStringW(uID:LongWord; lpBuffer:PWideChar; nBufferMax:Integer):Integer; stdcall;
begin
{*
 00403338    jmp         dword ptr ds:[904B9C]
*}
end;

//00403340
function kernel32.GetCommandLineW:PWideChar;
begin
{*
 00403340    jmp         dword ptr ds:[904C0C]
*}
end;

//00403348
function kernel32.GetModuleFileNameW(lpFilename:PWideChar; nSize:Types.DWORD):DWORD; stdcall;
begin
{*
 00403348    jmp         dword ptr ds:[904C08]
*}
end;

//00403350
function kernel32.GetModuleHandleW:HINST; stdcall;
begin
{*
 00403350    jmp         dword ptr ds:[904C04]
*}
end;

//00403358
function kernel32.GetProcAddress(lpProcName:MarshaledAString):Pointer; stdcall;
begin
{*
 00403358    jmp         dword ptr ds:[904C00]
*}
end;

//00403360
procedure kernel32.GetStartupInfoW; stdcall;
begin
{*
 00403360    jmp         dword ptr ds:[904BFC]
*}
end;

//00403368
function kernel32.LoadLibraryExW(hFile:THandle; dwFlags:Types.DWORD):HMODULE; stdcall;
begin
{*
 00403368    jmp         dword ptr ds:[904BF8]
*}
end;

//00403370
function kernel32.GetACP:Cardinal;
begin
{*
 00403370    jmp         dword ptr ds:[904BF4]
*}
end;

//00403378
function kernel32.GetConsoleCP:Cardinal;
begin
{*
 00403378    jmp         dword ptr ds:[904BF0]
*}
end;

//00403380
function kernel32.GetConsoleOutputCP:Cardinal;
begin
{*
 00403380    jmp         dword ptr ds:[904BEC]
*}
end;

//00403388
function kernel32.MultiByteToWideChar(dwFlags:Cardinal; const lpMultiByteStr:PAnsiChar; cchMultiByte:Integer; lpWideCharStr:PWideChar; cchWideChar:Integer):Integer; stdcall;
begin
{*
 00403388    jmp         dword ptr ds:[904BE8]
*}
end;

//00403390
function kernel32.WideCharToMultiByte(dwFlags:Types.DWORD; lpWideCharStr:PWideChar; cchWideChar:Integer; lpMultiByteStr:MarshaledAString; cchMultiByte:Integer; lpDefaultChar:MarshaledAString; lpUsedDefaultChar:PBOOL):Integer; stdcall;
begin
{*
 00403390    jmp         dword ptr ds:[904BE4]
*}
end;

//00403398
function kernel32.GetLocaleInfoW(LCType:Types.DWORD; lpLCData:PWideChar; cchData:Integer):Integer; stdcall;
begin
{*
 00403398    jmp         dword ptr ds:[904BE0]
*}
end;

//004033A0
function kernel32.GetUserDefaultUILanguage:LANGID;
begin
{*
 004033A0    jmp         dword ptr ds:[904BDC]
*}
end;

//004033A8
function kernel32.GetSystemDefaultUILanguage:Word;
begin
{*
 004033A8    jmp         dword ptr ds:[904BD8]
*}
end;

//004033B0
function kernel32.SetThreadLocale:LongBool; stdcall;
begin
{*
 004033B0    jmp         dword ptr ds:[904BD4]
*}
end;

//004033B8
function kernel32.IsValidLocale(dwFlags:Cardinal):LongBool; stdcall;
begin
{*
 004033B8    jmp         dword ptr ds:[904BD0]
*}
end;

//004033C0
function kernel32.IsDBCSLeadByteEx(TestChar:Byte):LongBool; stdcall;
begin
{*
 004033C0    jmp         dword ptr ds:[904BCC]
*}
end;

//004033C8
function user32.CharNextW:PWideChar; stdcall;
begin
{*
 004033C8    jmp         dword ptr ds:[904B98]
*}
end;

//004033D0
function kernel32.CompareStringW(dwCmpFlags:Types.DWORD; lpString1:PWideChar; cchCount1:Integer; lpString2:PWideChar; cchCount2:Integer):Integer; stdcall;
begin
{*
 004033D0    jmp         dword ptr ds:[904BC8]
*}
end;

//004033D8
procedure kernel32.dll;
begin
{*
 004033D8    push        908020
 004033DD    call        @DelayLoadHelper2
 004033E2    pop         ecx
 004033E3    pop         edx
 004033E4    xchg        eax,dword ptr [esp]
 004033E7    ret
*}
end;

//004033E8
procedure $thunk_GetLogicalProcessorInformation;
begin
{*
 004033E8    push        eax
 004033E9    push        edx
 004033EA    push        ecx
 004033EB    push        9081FC;^$thunk_GetLogicalProcessorInformation
>004033F0    jmp         kernel32.dll
*}
end;

//004033F8
function MessageBoxA(hWnd:NativeUInt; lpText:PAnsiChar; lpCaption:PAnsiChar; uType:Cardinal):Integer; stdcall;
begin
{*
 004033F8    jmp         dword ptr ds:[9081FC]
*}
end;

//00403400
function advapi32.RegCloseKey:Integer; stdcall;
begin
{*
 00403400    jmp         dword ptr ds:[904B90]
*}
end;

//00403408
function advapi32.RegOpenKeyExW(lpSubKey:PWideChar; ulOptions:Types.DWORD; samDesired:Types.DWORD; var phkResult:HKEY):LongInt; stdcall;
begin
{*
 00403408    jmp         dword ptr ds:[904B8C]
*}
end;

//00403410
function advapi32.RegQueryValueExW(lpValueName:PWideChar; lpReserved:Pointer; lpType:PDWORD; lpData:Types.PByte; lpcbData:PDWORD):LongInt; stdcall;
begin
{*
 00403410    jmp         dword ptr ds:[904B88]
*}
end;

//00403418
function kernel32.GetVersion:DWORD;
begin
{*
 00403418    jmp         dword ptr ds:[904BC4]
*}
end;

//00403420
procedure kernel32.GetSystemInfo; stdcall;
begin
{*
 00403420    jmp         dword ptr ds:[904BC0]
*}
end;

//00403428
function kernel32.GetTickCount:Cardinal;
begin
{*
 00403428    jmp         dword ptr ds:[904BBC]
*}
end;

//00403430
function kernel32.QueryPerformanceCounter:LongBool; stdcall;
begin
{*
 00403430    jmp         dword ptr ds:[904BB8]
*}
end;

//00403438
function kernel32.VirtualQuery(var lpBuffer:TMemoryBasicInformation; dwLength:NativeUInt):NativeUInt; stdcall;
begin
{*
 00403438    jmp         dword ptr ds:[904BB4]
*}
end;

//00403440
function oleaut32.SysAllocStringLen(len:Integer):PWideChar; stdcall;
begin
{*
 00403440    jmp         dword ptr ds:[904B80]
*}
end;

//00403448
function oleaut32.SysReAllocStringLen(P:PWideChar; Len:Integer):LongBool; stdcall;
begin
{*
 00403448    jmp         dword ptr ds:[904B7C]
*}
end;

//00403450
procedure oleaut32.SysFreeString; stdcall;
begin
{*
 00403450    jmp         dword ptr ds:[904B78]
*}
end;

//00403458
function kernel32.lstrlenW:Integer; stdcall;
begin
{*
 00403458    jmp         dword ptr ds:[904BB0]
*}
end;

//00403480
function GetLogicalProcessorInformation(Buffer:PSYSTEM_LOGICAL_PROCESSOR_INFORMATION; var ReturnedLength:Cardinal):LongBool; stdcall;
begin
{*
 00403480    jmp         dword ptr ds:[9081F8]
*}
end;

//00403488
function GetCmdShow:Integer;
begin
{*
 00403488    push        ebx
 00403489    add         esp,0FFFFFFBC
 0040348C    mov         ebx,0A
 00403491    mov         dword ptr [esp],44
 00403498    push        esp
 00403499    call        kernel32.GetStartupInfoW
 0040349E    test        byte ptr [esp+2C],1
>004034A3    je          004034AA
 004034A5    movzx       ebx,word ptr [esp+30]
 004034AA    mov         eax,ebx
 004034AC    add         esp,44
 004034AF    pop         ebx
 004034B0    ret
*}
end;

//004034B4
function kernel32.VirtualAlloc(dwSize:NativeUInt; flAllocationType:Types.DWORD; flProtect:Types.DWORD):Pointer; stdcall;
begin
{*
 004034B4    jmp         dword ptr ds:[904BAC]
*}
end;

//004034BC
function kernel32.VirtualFree(dwSize:NativeUInt; dwFreeType:Cardinal):LongBool; stdcall;
begin
{*
 004034BC    jmp         dword ptr ds:[904BA8]
*}
end;

//004034C4
{*function kernel32.Sleep:?; stdcall;
begin
 004034C4    jmp         dword ptr ds:[904BA4]
end;*}

//004034CC
function kernel32.WriteFile(const Buffer:void ; nNumberOfBytesToWrite:Types.DWORD; var lpNumberOfBytesWritten:Types.DWORD; lpOverlapped:POverlapped):LongBool; stdcall;
begin
{*
 004034CC    jmp         dword ptr ds:[904C50]
*}
end;

//004035B4
function LockCmpxchg(CompareVal:Byte; NewVal:Byte; AAddress:PByte):Byte;
begin
{*
 004035B4    lock cmpxchgbyte ptr [ecx],dl
 004035B8    ret
*}
end;

//004035BC
procedure Move12(const ASource:void ; var ADest:void ; ACount:NativeInt);
begin
{*
 004035BC    mov         ecx,dword ptr [eax]
 004035BE    mov         dword ptr [edx],ecx
 004035C0    mov         ecx,dword ptr [eax+4]
 004035C3    mov         eax,dword ptr [eax+8]
 004035C6    mov         dword ptr [edx+4],ecx
 004035C9    mov         dword ptr [edx+8],eax
 004035CC    ret
*}
end;

//004035D0
procedure Move20(const ASource:void ; var ADest:void ; ACount:NativeInt);
begin
{*
 004035D0    mov         ecx,dword ptr [eax]
 004035D2    mov         dword ptr [edx],ecx
 004035D4    mov         ecx,dword ptr [eax+4]
 004035D7    mov         dword ptr [edx+4],ecx
 004035DA    mov         ecx,dword ptr [eax+8]
 004035DD    mov         dword ptr [edx+8],ecx
 004035E0    mov         ecx,dword ptr [eax+0C]
 004035E3    mov         eax,dword ptr [eax+10]
 004035E6    mov         dword ptr [edx+0C],ecx
 004035E9    mov         dword ptr [edx+10],eax
 004035EC    ret
*}
end;

//004035F0
procedure Move28(const ASource:void ; var ADest:void ; ACount:NativeInt);
begin
{*
 004035F0    mov         ecx,dword ptr [eax]
 004035F2    mov         dword ptr [edx],ecx
 004035F4    mov         ecx,dword ptr [eax+4]
 004035F7    mov         dword ptr [edx+4],ecx
 004035FA    mov         ecx,dword ptr [eax+8]
 004035FD    mov         dword ptr [edx+8],ecx
 00403600    mov         ecx,dword ptr [eax+0C]
 00403603    mov         dword ptr [edx+0C],ecx
 00403606    mov         ecx,dword ptr [eax+10]
 00403609    mov         dword ptr [edx+10],ecx
 0040360C    mov         ecx,dword ptr [eax+14]
 0040360F    mov         eax,dword ptr [eax+18]
 00403612    mov         dword ptr [edx+14],ecx
 00403615    mov         dword ptr [edx+18],eax
 00403618    ret
*}
end;

//0040361C
procedure Move36(const ASource:void ; var ADest:void ; ACount:NativeInt);
begin
{*
 0040361C    fild        qword ptr [eax]
 0040361E    fild        qword ptr [eax+8]
 00403621    fild        qword ptr [eax+10]
 00403624    fild        qword ptr [eax+18]
 00403627    mov         ecx,dword ptr [eax+20]
 0040362A    mov         dword ptr [edx+20],ecx
 0040362D    fistp       qword ptr [edx+18]
 00403630    fistp       qword ptr [edx+10]
 00403633    fistp       qword ptr [edx+8]
 00403636    fistp       qword ptr [edx]
 00403638    ret
*}
end;

//0040363C
procedure Move44(const ASource:void ; var ADest:void ; ACount:NativeInt);
begin
{*
 0040363C    fild        qword ptr [eax]
 0040363E    fild        qword ptr [eax+8]
 00403641    fild        qword ptr [eax+10]
 00403644    fild        qword ptr [eax+18]
 00403647    fild        qword ptr [eax+20]
 0040364A    mov         ecx,dword ptr [eax+28]
 0040364D    mov         dword ptr [edx+28],ecx
 00403650    fistp       qword ptr [edx+20]
 00403653    fistp       qword ptr [edx+18]
 00403656    fistp       qword ptr [edx+10]
 00403659    fistp       qword ptr [edx+8]
 0040365C    fistp       qword ptr [edx]
 0040365E    ret
*}
end;

//00403660
procedure Move52(const ASource:void ; var ADest:void ; ACount:NativeInt);
begin
{*
 00403660    fild        qword ptr [eax]
 00403662    fild        qword ptr [eax+8]
 00403665    fild        qword ptr [eax+10]
 00403668    fild        qword ptr [eax+18]
 0040366B    fild        qword ptr [eax+20]
 0040366E    fild        qword ptr [eax+28]
 00403671    mov         ecx,dword ptr [eax+30]
 00403674    mov         dword ptr [edx+30],ecx
 00403677    fistp       qword ptr [edx+28]
 0040367A    fistp       qword ptr [edx+20]
 0040367D    fistp       qword ptr [edx+18]
 00403680    fistp       qword ptr [edx+10]
 00403683    fistp       qword ptr [edx+8]
 00403686    fistp       qword ptr [edx]
 00403688    ret
*}
end;

//0040368C
procedure Move60(const ASource:void ; var ADest:void ; ACount:NativeInt);
begin
{*
 0040368C    fild        qword ptr [eax]
 0040368E    fild        qword ptr [eax+8]
 00403691    fild        qword ptr [eax+10]
 00403694    fild        qword ptr [eax+18]
 00403697    fild        qword ptr [eax+20]
 0040369A    fild        qword ptr [eax+28]
 0040369D    fild        qword ptr [eax+30]
 004036A0    mov         ecx,dword ptr [eax+38]
 004036A3    mov         dword ptr [edx+38],ecx
 004036A6    fistp       qword ptr [edx+30]
 004036A9    fistp       qword ptr [edx+28]
 004036AC    fistp       qword ptr [edx+20]
 004036AF    fistp       qword ptr [edx+18]
 004036B2    fistp       qword ptr [edx+10]
 004036B5    fistp       qword ptr [edx+8]
 004036B8    fistp       qword ptr [edx]
 004036BA    ret
*}
end;

//004036BC
procedure Move68(const ASource:void ; var ADest:void ; ACount:NativeInt);
begin
{*
 004036BC    fild        qword ptr [eax]
 004036BE    fild        qword ptr [eax+8]
 004036C1    fild        qword ptr [eax+10]
 004036C4    fild        qword ptr [eax+18]
 004036C7    fild        qword ptr [eax+20]
 004036CA    fild        qword ptr [eax+28]
 004036CD    fild        qword ptr [eax+30]
 004036D0    fild        qword ptr [eax+38]
 004036D3    mov         ecx,dword ptr [eax+40]
 004036D6    mov         dword ptr [edx+40],ecx
 004036D9    fistp       qword ptr [edx+38]
 004036DC    fistp       qword ptr [edx+30]
 004036DF    fistp       qword ptr [edx+28]
 004036E2    fistp       qword ptr [edx+20]
 004036E5    fistp       qword ptr [edx+18]
 004036E8    fistp       qword ptr [edx+10]
 004036EB    fistp       qword ptr [edx+8]
 004036EE    fistp       qword ptr [edx]
 004036F0    ret
*}
end;

//004036F4
procedure MoveX16LP(const ASource:void ; var ADest:void ; ACount:NativeInt);
begin
{*
 004036F4    sub         ecx,0C
 004036F7    add         eax,ecx
 004036F9    add         edx,ecx
 004036FB    neg         ecx
>004036FD    jns         00403712
 004036FF    fild        qword ptr [ecx+eax]
 00403702    fild        qword ptr [ecx+eax+8]
 00403706    fistp       qword ptr [ecx+edx+8]
 0040370A    fistp       qword ptr [ecx+edx]
 0040370D    add         ecx,10
>00403710    js          004036FF
 00403712    fild        qword ptr [ecx+eax]
 00403715    fistp       qword ptr [ecx+edx]
 00403718    mov         eax,dword ptr [ecx+eax+8]
 0040371C    mov         dword ptr [ecx+edx+8],eax
 00403720    ret
*}
end;

//00403724
procedure MoveX8LP(const ASource:void ; var ADest:void ; ACount:NativeInt);
begin
{*
 00403724    sub         ecx,4
 00403727    add         eax,ecx
 00403729    add         edx,ecx
 0040372B    neg         ecx
 0040372D    fild        qword ptr [ecx+eax]
 00403730    fistp       qword ptr [ecx+edx]
 00403733    add         ecx,8
>00403736    js          0040372D
 00403738    mov         eax,dword ptr [ecx+eax]
 0040373B    mov         dword ptr [ecx+edx],eax
 0040373E    ret
*}
end;

//00403740
procedure RemoveMediumFreeBlock(APMediumFreeBlock:PMediumFreeBlock);
begin
{*
 00403740    mov         ecx,dword ptr [eax+4]
 00403743    mov         edx,dword ptr [eax]
 00403745    cmp         ecx,edx
 00403747    mov         dword ptr [ecx],edx
 00403749    mov         dword ptr [edx+4],ecx
>0040374C    je          00403750
 0040374E    ret
 0040374F    nop
 00403750    sub         ecx,7C5AFC
 00403756    mov         edx,ecx
 00403758    shr         ecx,3
 0040375B    movzx       edx,dh
 0040375E    mov         eax,0FFFFFFFE
 00403763    rol         eax,cl
 00403765    and         dword ptr [edx*4+7C5A7C],eax
>0040376C    jne         0040374E
 0040376E    mov         eax,0FFFFFFFE
 00403773    mov         ecx,edx
 00403775    rol         eax,cl
 00403777    and         dword ptr ds:[7C5A78],eax
 0040377D    ret
*}
end;

//00403780
procedure InsertMediumBlockIntoBin(APMediumFreeBlock:PMediumFreeBlock; AMediumBlockSize:Cardinal);
begin
{*
 00403780    sub         edx,0B30
 00403786    shr         edx,8
 00403789    sub         edx,3FF
 0040378F    sbb         ecx,ecx
 00403791    and         edx,ecx
 00403793    add         edx,3FF
 00403799    lea         ecx,[edx*8+7C5AFC]
 004037A0    mov         edx,dword ptr [ecx+4]
 004037A3    cmp         edx,ecx
 004037A5    mov         dword ptr [eax],ecx
 004037A7    mov         dword ptr [eax+4],edx
 004037AA    mov         dword ptr [edx],eax
 004037AC    mov         dword ptr [ecx+4],eax
>004037AF    je          004037B4
 004037B1    ret
 004037B2    nop
 004037B3    nop
 004037B4    sub         ecx,7C5AFC
 004037BA    mov         edx,ecx
 004037BC    shr         ecx,3
 004037BF    movzx       edx,dh
 004037C2    mov         eax,1
 004037C7    shl         eax,cl
 004037C9    or          dword ptr [edx*4+7C5A7C],eax
 004037D0    mov         eax,1
 004037D5    mov         ecx,edx
 004037D7    shl         eax,cl
 004037D9    or          dword ptr ds:[7C5A78],eax
 004037DF    ret
*}
end;

//004037E0
procedure BinMediumSequentialFeedRemainder;
begin
{*
 004037E0    cmp         dword ptr ds:[7C5A74],0
>004037E7    jne         004037EC
 004037E9    ret
 004037EA    nop
 004037EB    nop
 004037EC    mov         eax,[007C5A70]
 004037F1    test        byte ptr [eax-4],1
>004037F5    jne         0040381C
 004037F7    or          dword ptr [eax-4],8
 004037FB    mov         edx,dword ptr ds:[7C5A74]
 00403801    sub         eax,edx
 00403803    lea         ecx,[edx+3]
 00403806    mov         dword ptr [eax-4],ecx
 00403809    mov         dword ptr [edx+eax-8],edx
 0040380D    cmp         edx,0B30
>00403813    jae         00403780
 00403819    ret
 0040381A    nop
 0040381B    nop
 0040381C    mov         edx,0FFFFFFF0
 00403821    and         edx,dword ptr [eax-4]
 00403824    cmp         edx,0B30
>0040382A    jb          0040383E
 0040382C    call        RemoveMediumFreeBlock
 00403831    mov         eax,[007C5A70]
 00403836    mov         edx,0FFFFFFF0
 0040383B    and         edx,dword ptr [eax-4]
 0040383E    mov         ecx,dword ptr ds:[7C5A74]
 00403844    sub         eax,ecx
 00403846    add         edx,ecx
>00403848    jmp         00403803
 0040384A    ret
*}
end;

//0040384C
function AllocNewSequentialFeedMediumPool(AFirstBlockSize:Cardinal):Pointer;
begin
{*
 0040384C    push        ebx
 0040384D    push        esi
 0040384E    mov         ebx,eax
 00403850    call        BinMediumSequentialFeedRemainder
 00403855    push        4
 00403857    push        1000
 0040385C    push        13FFF0
 00403861    push        0
 00403863    call        kernel32.VirtualAlloc
 00403868    test        eax,eax
>0040386A    je          004038BA
 0040386C    mov         ecx,dword ptr ds:[7C5A60]
 00403872    mov         edx,eax
 00403874    mov         dword ptr [edx],7C5A5C
 0040387A    mov         [007C5A60],eax
 0040387F    mov         dword ptr [edx+4],ecx
 00403882    mov         dword ptr [ecx],eax
 00403884    mov         ecx,edx
 00403886    add         ecx,13FFF0
 0040388C    mov         esi,ecx
 0040388E    sub         esi,4
 00403891    mov         dword ptr [esi],2
 00403897    mov         esi,13FFE0
 0040389C    sub         esi,ebx
 0040389E    mov         dword ptr ds:[7C5A74],esi
 004038A4    sub         ecx,ebx
 004038A6    mov         eax,ecx
 004038A8    mov         [007C5A70],eax
 004038AD    or          ebx,2
 004038B0    mov         edx,eax
 004038B2    sub         edx,4
 004038B5    mov         dword ptr [edx],ebx
 004038B7    pop         esi
 004038B8    pop         ebx
 004038B9    ret
 004038BA    xor         eax,eax
 004038BC    mov         [007C5A74],eax
 004038C1    xor         eax,eax
 004038C3    pop         esi
 004038C4    pop         ebx
 004038C5    ret
*}
end;

//004038C8
procedure LockLargeBlocks;
begin
{*
 004038C8    cmp         byte ptr ds:[7C505D],0
>004038CF    je          0040390E
>004038D1    jmp         004038FC
 004038D3    cmp         byte ptr ds:[7C590D],0
>004038DA    jne         004038FC
 004038DC    push        0
 004038DE    call        kernel32.Sleep
 004038E3    mov         ecx,7C7AFC
 004038E8    mov         dl,1
 004038EA    xor         eax,eax
 004038EC    call        LockCmpxchg
 004038F1    test        al,al
>004038F3    je          0040390E
 004038F5    push        0A
 004038F7    call        kernel32.Sleep
 004038FC    mov         ecx,7C7AFC
 00403901    mov         dl,1
 00403903    xor         eax,eax
 00403905    call        LockCmpxchg
 0040390A    test        al,al
>0040390C    jne         004038D3
 0040390E    ret
*}
end;

//00403910
function AllocateLargeBlock(ASize:NativeUInt):Pointer;
begin
{*
 00403910    push        ebx
 00403911    push        esi
 00403912    push        edi
 00403913    push        ebp
 00403914    mov         ebp,eax
 00403916    lea         esi,[ebp+10010]
 0040391C    dec         esi
 0040391D    add         esi,4
 00403920    and         esi,0FFFF0000
 00403926    push        4
 00403928    push        101000
 0040392D    push        esi
 0040392E    push        0
 00403930    call        kernel32.VirtualAlloc
 00403935    mov         ebx,eax
 00403937    test        ebx,ebx
>00403939    je          0040396B
 0040393B    mov         edi,ebx
 0040393D    mov         dword ptr [edi+8],ebp
 00403940    or          esi,4
 00403943    mov         dword ptr [edi+0C],esi
 00403946    call        LockLargeBlocks
 0040394B    mov         eax,[007C7B04]
 00403950    mov         dword ptr [edi],7C7B00
 00403956    mov         dword ptr ds:[7C7B04],ebx
 0040395C    mov         dword ptr [edi+4],eax
 0040395F    mov         dword ptr [eax],ebx
 00403961    mov         byte ptr ds:[7C7AFC],0
 00403968    add         ebx,10
 0040396B    mov         eax,ebx
 0040396D    pop         ebp
 0040396E    pop         edi
 0040396F    pop         esi
 00403970    pop         ebx
 00403971    ret
*}
end;

//00403974
function FreeLargeBlock(APointer:Pointer):Integer;
begin
{*
 00403974    push        ebx
 00403975    push        esi
 00403976    push        edi
 00403977    push        ebp
 00403978    add         esp,0FFFFFFDC
 0040397B    mov         esi,eax
 0040397D    sub         esi,10
 00403980    call        LockLargeBlocks
 00403985    mov         eax,esi
 00403987    mov         edx,dword ptr [eax]
 00403989    mov         dword ptr [esp],edx
 0040398C    mov         edx,dword ptr [eax+4]
 0040398F    mov         dword ptr [esp+4],edx
 00403993    mov         edx,dword ptr [eax+0C]
 00403996    test        dl,8
>00403999    jne         004039B5
 0040399B    push        8000
 004039A0    push        0
 004039A2    push        esi
 004039A3    call        kernel32.VirtualFree
 004039A8    test        eax,eax
>004039AA    je          004039B0
 004039AC    xor         edi,edi
>004039AE    jmp         004039EF
 004039B0    or          edi,0FFFFFFFF
>004039B3    jmp         004039EF
 004039B5    mov         ebx,esi
 004039B7    mov         ebp,edx
 004039B9    and         ebp,0FFFFFFF0
 004039BC    xor         edi,edi
 004039BE    push        1C
 004039C0    lea         eax,[esp+0C]
 004039C4    push        eax
 004039C5    push        ebx
 004039C6    call        kernel32.VirtualQuery
 004039CB    push        8000
 004039D0    push        0
 004039D2    push        ebx
 004039D3    call        kernel32.VirtualFree
 004039D8    test        eax,eax
>004039DA    jne         004039E1
 004039DC    or          edi,0FFFFFFFF
>004039DF    jmp         004039EF
 004039E1    mov         esi,dword ptr [esp+14]
 004039E5    cmp         ebp,esi
>004039E7    jbe         004039EF
 004039E9    sub         ebp,esi
 004039EB    add         ebx,esi
>004039ED    jmp         004039BE
 004039EF    test        edi,edi
>004039F1    jne         00403A06
 004039F3    mov         eax,dword ptr [esp+4]
 004039F7    mov         edx,dword ptr [esp]
 004039FA    mov         dword ptr [eax],edx
 004039FC    mov         eax,dword ptr [esp]
 004039FF    mov         edx,dword ptr [esp+4]
 00403A03    mov         dword ptr [eax+4],edx
 00403A06    mov         byte ptr ds:[7C7AFC],0
 00403A0D    mov         eax,edi
 00403A0F    add         esp,24
 00403A12    pop         ebp
 00403A13    pop         edi
 00403A14    pop         esi
 00403A15    pop         ebx
 00403A16    ret
*}
end;

//00403A18
function ReallocateLargeBlock(APointer:Pointer; ANewSize:NativeUInt):Pointer;
begin
{*
 00403A18    push        ebx
 00403A19    push        esi
 00403A1A    push        edi
 00403A1B    push        ebp
 00403A1C    add         esp,0FFFFFFE0
 00403A1F    mov         esi,edx
 00403A21    mov         edi,eax
 00403A23    mov         eax,edi
 00403A25    sub         eax,4
 00403A28    mov         eax,dword ptr [eax]
 00403A2A    mov         ebx,0FFFFFFF0
 00403A2F    and         ebx,eax
 00403A31    sub         ebx,14
 00403A34    cmp         ebx,esi
>00403A36    jae         00403B1D
 00403A3C    mov         edx,ebx
 00403A3E    shr         edx,2
 00403A41    add         edx,ebx
 00403A43    cmp         edx,esi
>00403A45    jbe         00403A4B
 00403A47    mov         ebp,edx
>00403A49    jmp         00403A4D
 00403A4B    mov         ebp,esi
 00403A4D    mov         edx,edi
 00403A4F    sub         edx,10
 00403A52    and         eax,0FFFFFFF0
 00403A55    add         edx,eax
 00403A57    mov         dword ptr [esp],edx
 00403A5A    push        1C
 00403A5C    lea         eax,[esp+8]
 00403A60    push        eax
 00403A61    mov         eax,dword ptr [esp+8]
 00403A65    push        eax
 00403A66    call        kernel32.VirtualQuery
 00403A6B    cmp         dword ptr [esp+14],10000
>00403A73    jne         00403AE5
 00403A75    and         dword ptr [esp+10],0FFFF0000
 00403A7D    mov         edx,esi
 00403A7F    sub         edx,ebx
 00403A81    mov         eax,dword ptr [esp+10]
 00403A85    cmp         edx,eax
>00403A87    jae         00403AE5
 00403A89    mov         edx,ebp
 00403A8B    sub         edx,ebx
 00403A8D    add         edx,10000
 00403A93    dec         edx
 00403A94    and         edx,0FFFF0000
 00403A9A    mov         ebx,edx
 00403A9C    cmp         eax,ebx
>00403A9E    jae         00403AA2
 00403AA0    mov         ebx,eax
 00403AA2    push        4
 00403AA4    push        2000
 00403AA9    push        ebx
 00403AAA    mov         eax,dword ptr [esp+0C]
 00403AAE    push        eax
 00403AAF    call        kernel32.VirtualAlloc
 00403AB4    test        eax,eax
>00403AB6    je          00403AE5
 00403AB8    push        4
 00403ABA    push        1000
 00403ABF    push        ebx
 00403AC0    mov         eax,dword ptr [esp+0C]
 00403AC4    push        eax
 00403AC5    call        kernel32.VirtualAlloc
 00403ACA    test        eax,eax
>00403ACC    je          00403AE5
 00403ACE    mov         eax,edi
 00403AD0    sub         eax,10
 00403AD3    mov         dword ptr [eax+8],esi
 00403AD6    mov         edx,eax
 00403AD8    add         ebx,dword ptr [edx+0C]
 00403ADB    or          ebx,8
 00403ADE    mov         dword ptr [edx+0C],ebx
 00403AE1    mov         ebx,edi
>00403AE3    jmp         00403B5C
 00403AE5    mov         eax,ebp
 00403AE7    call        SysGetMem
 00403AEC    mov         ebx,eax
 00403AEE    test        ebx,ebx
>00403AF0    je          00403B5C
 00403AF2    cmp         ebp,40A2C
>00403AF8    jbe         00403B02
 00403AFA    mov         eax,ebx
 00403AFC    sub         eax,10
 00403AFF    mov         dword ptr [eax+8],esi
 00403B02    mov         eax,edi
 00403B04    sub         eax,10
 00403B07    mov         eax,dword ptr [eax+8]
 00403B0A    mov         edx,ebx
 00403B0C    mov         ecx,edi
 00403B0E    xchg        eax,ecx
 00403B0F    call        MoveX16LP
 00403B14    mov         eax,edi
 00403B16    call        SysFreeMem
>00403B1B    jmp         00403B5C
 00403B1D    shr         ebx,1
 00403B1F    cmp         esi,ebx
>00403B21    jb          00403B2D
 00403B23    mov         ebx,edi
 00403B25    sub         edi,10
 00403B28    mov         dword ptr [edi+8],esi
>00403B2B    jmp         00403B5C
 00403B2D    mov         eax,esi
 00403B2F    call        SysGetMem
 00403B34    mov         ebx,eax
 00403B36    test        ebx,ebx
>00403B38    je          00403B5C
 00403B3A    cmp         esi,40A2C
>00403B40    jbe         00403B4A
 00403B42    mov         eax,edi
 00403B44    sub         eax,10
 00403B47    mov         dword ptr [eax+8],esi
 00403B4A    mov         edx,ebx
 00403B4C    mov         eax,edi
 00403B4E    mov         ecx,esi
 00403B50    call        MoveX8LP
 00403B55    mov         eax,edi
 00403B57    call        SysFreeMem
 00403B5C    mov         eax,ebx
 00403B5E    add         esp,20
 00403B61    pop         ebp
 00403B62    pop         edi
 00403B63    pop         esi
 00403B64    pop         ebx
 00403B65    ret
*}
end;

//00403B68
function SysGetMem(Size:NativeInt):Pointer;
begin
{*
 00403B68    lea         edx,[eax+3]
 00403B6B    shr         edx,3
 00403B6E    cmp         eax,0A2C
 00403B73    push        ebx
 00403B74    mov         cl,byte ptr ds:[7C505D]
>00403B7A    ja          00403DC8
 00403B80    test        cl,cl
 00403B82    movzx       eax,byte ptr [edx+7C5914]
 00403B89    lea         ebx,[eax*8+79E078]
>00403B90    jne         00403BE8
 00403B92    mov         edx,dword ptr [ebx+8]
 00403B95    mov         eax,dword ptr [edx+10]
 00403B98    mov         ecx,0FFFFFFF8
 00403B9D    cmp         edx,ebx
>00403B9F    je          00403BB8
 00403BA1    add         dword ptr [edx+14],1
 00403BA5    and         ecx,dword ptr [eax-4]
 00403BA8    mov         dword ptr [edx+10],ecx
 00403BAB    mov         dword ptr [eax-4],edx
>00403BAE    je          00403BD8
 00403BB0    mov         byte ptr [ebx],0
 00403BB3    pop         ebx
 00403BB4    ret
 00403BB5    nop
 00403BB6    nop
 00403BB7    nop
 00403BB8    mov         edx,dword ptr [ebx+18]
 00403BBB    movzx       ecx,word ptr [ebx+2]
 00403BBF    add         ecx,eax
 00403BC1    cmp         eax,dword ptr [ebx+14]
>00403BC4    ja          00403C3C
 00403BC6    add         dword ptr [edx+14],1
 00403BCA    mov         dword ptr [ebx+10],ecx
 00403BCD    mov         byte ptr [ebx],0
 00403BD0    mov         dword ptr [eax-4],edx
 00403BD3    pop         ebx
 00403BD4    ret
 00403BD5    nop
 00403BD6    nop
 00403BD7    nop
 00403BD8    mov         ecx,dword ptr [edx+8]
 00403BDB    mov         dword ptr [ecx+0C],ebx
 00403BDE    mov         dword ptr [ebx+8],ecx
 00403BE1    mov         byte ptr [ebx],0
 00403BE4    pop         ebx
 00403BE5    ret
 00403BE6    nop
 00403BE7    nop
 00403BE8    mov         eax,100
 00403BED    lock cmpxchgbyte ptr [ebx],ah
>00403BF1    je          00403B92
 00403BF3    add         ebx,20
 00403BF6    mov         eax,100
 00403BFB    lock cmpxchgbyte ptr [ebx],ah
>00403BFF    je          00403B92
 00403C01    add         ebx,20
 00403C04    mov         eax,100
 00403C09    lock cmpxchgbyte ptr [ebx],ah
>00403C0D    je          00403B92
 00403C0F    sub         ebx,40
 00403C12    rep nop
 00403C14    cmp         byte ptr ds:[7C590D],0
>00403C1B    jne         00403BE8
 00403C1D    push        0
 00403C1F    call        kernel32.Sleep
 00403C24    mov         eax,100
 00403C29    lock cmpxchgbyte ptr [ebx],ah
>00403C2D    je          00403B92
 00403C33    push        0A
 00403C35    call        kernel32.Sleep
>00403C3A    jmp         00403BE8
 00403C3C    push        esi
 00403C3D    push        edi
 00403C3E    cmp         byte ptr ds:[7C505D],0
>00403C45    je          00403C80
 00403C47    mov         eax,100
 00403C4C    lock cmpxchgbyte ptr ds:[7C5A6C],ah
>00403C54    je          00403C80
 00403C56    rep nop
 00403C58    cmp         byte ptr ds:[7C590D],0
>00403C5F    jne         00403C47
 00403C61    push        0
 00403C63    call        kernel32.Sleep
 00403C68    mov         eax,100
 00403C6D    lock cmpxchgbyte ptr ds:[7C5A6C],ah
>00403C75    je          00403C80
 00403C77    push        0A
 00403C79    call        kernel32.Sleep
>00403C7E    jmp         00403C47
 00403C80    movsx       esi,byte ptr [ebx+1]
 00403C84    and         esi,dword ptr ds:[7C5A78]
>00403C8A    je          00403CFC
 00403C8C    bsf         eax,esi
 00403C8F    lea         esi,[eax*8+0]
 00403C96    mov         ecx,dword ptr [eax*4+7C5A7C]
 00403C9D    bsf         ecx,ecx
 00403CA0    lea         ecx,[ecx+esi*4]
 00403CA3    lea         edi,[ecx*8+7C5AFC]
 00403CAA    mov         esi,dword ptr [edi+4]
 00403CAD    mov         edx,dword ptr [esi+4]
 00403CB0    mov         dword ptr [edi+4],edx
 00403CB3    mov         dword ptr [edx],edi
 00403CB5    cmp         edi,edx
>00403CB7    jne         00403CD0
 00403CB9    mov         edx,0FFFFFFFE
 00403CBE    rol         edx,cl
 00403CC0    and         dword ptr [eax*4+7C5A7C],edx
>00403CC7    jne         00403CD0
 00403CC9    btr         dword ptr ds:[7C5A78],eax
 00403CD0    mov         edi,0FFFFFFF0
 00403CD5    and         edi,dword ptr [esi-4]
 00403CD8    cmp         edi,10A60
>00403CDE    jb          00403D4C
 00403CE0    mov         edx,edi
 00403CE2    movzx       edi,word ptr [ebx+6]
 00403CE6    sub         edx,edi
 00403CE8    lea         eax,[edi+esi]
 00403CEB    lea         ecx,[edx+3]
 00403CEE    mov         dword ptr [eax-4],ecx
 00403CF1    mov         dword ptr [edx+eax-8],edx
 00403CF5    call        InsertMediumBlockIntoBin
>00403CFA    jmp         00403D51
 00403CFC    movzx       ecx,word ptr [ebx+4]
 00403D00    mov         edi,dword ptr ds:[7C5A74]
 00403D06    cmp         edi,ecx
>00403D08    jb          00403D30
 00403D0A    mov         esi,dword ptr ds:[7C5A70]
 00403D10    movzx       ecx,word ptr [ebx+6]
 00403D14    lea         edx,[ecx+0B30]
 00403D1A    cmp         edi,edx
>00403D1C    jb          00403D20
 00403D1E    mov         edi,ecx
 00403D20    sub         esi,edi
 00403D22    sub         dword ptr ds:[7C5A74],edi
 00403D28    mov         dword ptr ds:[7C5A70],esi
>00403D2E    jmp         00403D51
 00403D30    movzx       eax,word ptr [ebx+6]
 00403D34    mov         edi,eax
 00403D36    call        AllocNewSequentialFeedMediumPool
 00403D3B    mov         esi,eax
 00403D3D    test        eax,eax
>00403D3F    jne         00403D51
 00403D41    mov         [007C5A6C],al
 00403D46    mov         byte ptr [ebx],al
 00403D48    pop         edi
 00403D49    pop         esi
 00403D4A    pop         ebx
 00403D4B    ret
 00403D4C    and         byte ptr [edi+esi-4],0F7
 00403D51    lea         ecx,[edi+6]
 00403D54    mov         dword ptr [esi-4],ecx
 00403D57    xor         eax,eax
 00403D59    mov         [007C5A6C],al
 00403D5E    mov         dword ptr [esi],ebx
 00403D60    mov         dword ptr [esi+10],eax
 00403D63    mov         dword ptr [esi+14],1
 00403D6A    mov         dword ptr [ebx+18],esi
 00403D6D    lea         eax,[esi+20]
 00403D70    movzx       ecx,word ptr [ebx+2]
 00403D74    lea         edx,[ecx+eax]
 00403D77    mov         dword ptr [ebx+10],edx
 00403D7A    add         edi,esi
 00403D7C    sub         edi,ecx
 00403D7E    mov         dword ptr [ebx+14],edi
 00403D81    mov         byte ptr [ebx],0
 00403D84    mov         dword ptr [eax-4],esi
 00403D87    pop         edi
 00403D88    pop         esi
 00403D89    pop         ebx
 00403D8A    ret
 00403D8B    nop
 00403D8C    mov         eax,100
 00403D91    lock cmpxchgbyte ptr ds:[7C5A6C],ah
>00403D99    je          00403DE6
 00403D9B    rep nop
 00403D9D    cmp         byte ptr ds:[7C590D],0
>00403DA4    jne         00403D8C
 00403DA6    push        0
 00403DA8    call        kernel32.Sleep
 00403DAD    mov         eax,100
 00403DB2    lock cmpxchgbyte ptr ds:[7C5A6C],ah
>00403DBA    je          00403DE6
 00403DBC    push        0A
 00403DBE    call        kernel32.Sleep
>00403DC3    jmp         00403D8C
 00403DC5    nop
 00403DC6    nop
 00403DC7    nop
 00403DC8    cmp         eax,40A2C
>00403DCD    ja          00403EE0
 00403DD3    lea         ebx,[eax+0D3]
 00403DD9    and         ebx,0FFFFFF00
 00403DDF    add         ebx,30
 00403DE2    test        cl,cl
>00403DE4    jne         00403D8C
 00403DE6    lea         edx,[ebx-0B30]
 00403DEC    mov         ecx,edx
 00403DEE    shr         edx,0D
 00403DF1    shr         ecx,8
 00403DF4    mov         eax,0FFFFFFFF
 00403DF9    shl         eax,cl
 00403DFB    and         eax,dword ptr [edx*4+7C5A7C]
>00403E02    je          00403E10
 00403E04    and         ecx,0FFFFFFE0
 00403E07    bsf         eax,eax
 00403E0A    or          ecx,eax
>00403E0C    jmp         00403E6C
 00403E0E    nop
 00403E0F    nop
 00403E10    mov         eax,0FFFFFFFE
 00403E15    mov         ecx,edx
 00403E17    shl         eax,cl
 00403E19    and         eax,dword ptr ds:[7C5A78]
>00403E1F    je          00403E38
 00403E21    bsf         edx,eax
 00403E24    mov         eax,dword ptr [edx*4+7C5A7C]
 00403E2B    bsf         ecx,eax
 00403E2E    mov         eax,edx
 00403E30    shl         eax,5
 00403E33    or          ecx,eax
>00403E35    jmp         00403E6C
 00403E37    nop
 00403E38    mov         ecx,dword ptr ds:[7C5A74]
 00403E3E    sub         ecx,ebx
>00403E40    jb          00403E5C
 00403E42    mov         eax,[007C5A70]
 00403E47    sub         eax,ebx
 00403E49    mov         [007C5A70],eax
 00403E4E    mov         dword ptr ds:[7C5A74],ecx
 00403E54    or          ebx,2
 00403E57    mov         dword ptr [eax-4],ebx
>00403E5A    jmp         00403E63
 00403E5C    mov         eax,ebx
 00403E5E    call        AllocNewSequentialFeedMediumPool
 00403E63    mov         byte ptr ds:[7C5A6C],0
 00403E6A    pop         ebx
 00403E6B    ret
 00403E6C    push        esi
 00403E6D    push        edi
 00403E6E    lea         edi,[ecx*8+7C5AFC]
 00403E75    mov         esi,dword ptr [edi+4]
 00403E78    mov         eax,dword ptr [esi+4]
 00403E7B    mov         dword ptr [edi+4],eax
 00403E7E    mov         dword ptr [eax],edi
 00403E80    cmp         edi,eax
>00403E82    jne         00403E9B
 00403E84    mov         eax,0FFFFFFFE
 00403E89    rol         eax,cl
 00403E8B    and         dword ptr [edx*4+7C5A7C],eax
>00403E92    jne         00403E9B
 00403E94    btr         dword ptr ds:[7C5A78],edx
 00403E9B    mov         edi,0FFFFFFF0
 00403EA0    and         edi,dword ptr [esi-4]
 00403EA3    mov         edx,edi
 00403EA5    sub         edx,ebx
>00403EA7    je          00403EC8
 00403EA9    lea         eax,[ebx+esi]
 00403EAC    lea         ecx,[edx+3]
 00403EAF    mov         dword ptr [eax-4],ecx
 00403EB2    mov         dword ptr [edx+eax-8],edx
 00403EB6    cmp         edx,0B30
>00403EBC    jb          00403ECD
 00403EBE    call        InsertMediumBlockIntoBin
>00403EC3    jmp         00403ECD
 00403EC5    nop
 00403EC6    nop
 00403EC7    nop
 00403EC8    and         byte ptr [edi+esi-4],0F7
 00403ECD    lea         ecx,[ebx+2]
 00403ED0    mov         dword ptr [esi-4],ecx
 00403ED3    mov         byte ptr ds:[7C5A6C],0
 00403EDA    mov         eax,esi
 00403EDC    pop         edi
 00403EDD    pop         esi
 00403EDE    pop         ebx
 00403EDF    ret
 00403EE0    pop         ebx
 00403EE1    test        eax,eax
>00403EE3    jns         00403910
 00403EE9    xor         eax,eax
 00403EEB    ret
*}
end;

//00403EEC
function SysFreeMem(P:Pointer):Integer;
begin
{*
 00403EEC    mov         edx,dword ptr [eax-4]
 00403EEF    test        dl,7
 00403EF2    mov         ecx,eax
 00403EF4    push        ebx
 00403EF5    mov         bl,byte ptr ds:[7C505D]
>00403EFB    jne         00403FE4
 00403F01    test        bl,bl
 00403F03    mov         ebx,dword ptr [edx]
>00403F05    jne         00403F68
 00403F07    sub         dword ptr [edx+14],1
 00403F0B    mov         eax,dword ptr [edx+10]
>00403F0E    je          00403F3C
 00403F10    test        eax,eax
 00403F12    mov         dword ptr [edx+10],ecx
 00403F15    lea         eax,[eax+1]
 00403F18    mov         dword ptr [ecx-4],eax
>00403F1B    je          00403F24
 00403F1D    xor         eax,eax
 00403F1F    mov         byte ptr [ebx],al
 00403F21    pop         ebx
 00403F22    ret
 00403F23    nop
 00403F24    mov         ecx,dword ptr [ebx+8]
 00403F27    mov         dword ptr [edx+0C],ebx
 00403F2A    mov         dword ptr [edx+8],ecx
 00403F2D    mov         dword ptr [ecx+0C],edx
 00403F30    mov         dword ptr [ebx+8],edx
 00403F33    mov         byte ptr [ebx],0
 00403F36    xor         eax,eax
 00403F38    pop         ebx
 00403F39    ret
 00403F3A    nop
 00403F3B    nop
 00403F3C    test        eax,eax
>00403F3E    je          00403F53
 00403F40    mov         eax,dword ptr [edx+0C]
 00403F43    mov         ecx,dword ptr [edx+8]
 00403F46    mov         dword ptr [eax+8],ecx
 00403F49    mov         dword ptr [ecx+0C],eax
 00403F4C    xor         eax,eax
 00403F4E    cmp         dword ptr [ebx+18],edx
>00403F51    jne         00403F56
 00403F53    mov         dword ptr [ebx+14],eax
 00403F56    mov         byte ptr [ebx],al
 00403F58    mov         eax,edx
 00403F5A    mov         edx,dword ptr [edx-4]
 00403F5D    mov         bl,byte ptr ds:[7C505D]
>00403F63    jmp         00403FED
 00403F68    mov         eax,100
 00403F6D    lock cmpxchgbyte ptr [ebx],ah
>00403F71    je          00403F07
 00403F73    rep nop
 00403F75    cmp         byte ptr ds:[7C590D],0
>00403F7C    jne         00403F68
 00403F7E    push        ecx
 00403F7F    push        edx
 00403F80    push        0
 00403F82    call        kernel32.Sleep
 00403F87    pop         edx
 00403F88    pop         ecx
 00403F89    mov         eax,100
 00403F8E    lock cmpxchgbyte ptr [ebx],ah
>00403F92    je          00403F07
 00403F98    push        ecx
 00403F99    push        edx
 00403F9A    push        0A
 00403F9C    call        kernel32.Sleep
 00403FA1    pop         edx
 00403FA2    pop         ecx
>00403FA3    jmp         00403F68
 00403FA5    nop
 00403FA6    nop
 00403FA7    nop
 00403FA8    mov         eax,100
 00403FAD    lock cmpxchgbyte ptr ds:[7C5A6C],ah
>00403FB5    je          00403FF9
 00403FB7    rep nop
 00403FB9    cmp         byte ptr ds:[7C590D],0
>00403FC0    jne         00403FA8
 00403FC2    push        0
 00403FC4    call        kernel32.Sleep
 00403FC9    mov         eax,100
 00403FCE    lock cmpxchgbyte ptr ds:[7C5A6C],ah
>00403FD6    je          00403FF9
 00403FD8    push        0A
 00403FDA    call        kernel32.Sleep
>00403FDF    jmp         00403FA8
 00403FE1    nop
 00403FE2    nop
 00403FE3    nop
 00403FE4    test        dl,5
>00403FE7    jne         004040D4
 00403FED    and         edx,0FFFFFFF0
 00403FF0    test        bl,bl
 00403FF2    mov         ebx,edx
 00403FF4    push        esi
 00403FF5    mov         esi,eax
>00403FF7    jne         00403FA8
 00403FF9    test        dword ptr [ebx+esi-4],1;{gvar_00404000}
 00404001    mov         ecx,dword ptr [ebx+esi-4]
>00404005    jne         0040403C
 00404007    or          ecx,8
 0040400A    mov         dword ptr [ebx+esi-4],ecx
 0040400E    test        byte ptr [esi-4],8
>00404012    jne         00404054
 00404014    cmp         ebx,13FFE0
>0040401A    je          0040406C
 0040401C    lea         eax,[ebx+3]
 0040401F    mov         dword ptr [esi-4],eax
 00404022    mov         dword ptr [ebx+esi-8],ebx
 00404026    mov         eax,esi
 00404028    mov         edx,ebx
 0040402A    call        InsertMediumBlockIntoBin
 0040402F    mov         byte ptr ds:[7C5A6C],0
 00404036    xor         eax,eax
 00404038    pop         esi
 00404039    pop         ebx
 0040403A    ret
 0040403B    nop
 0040403C    lea         eax,[ebx+esi]
 0040403F    and         ecx,0FFFFFFF0
 00404042    add         ebx,ecx
 00404044    cmp         ecx,0B30
>0040404A    jb          0040400E
 0040404C    call        RemoveMediumFreeBlock
>00404051    jmp         0040400E
 00404053    nop
 00404054    mov         ecx,dword ptr [esi-8]
 00404057    sub         esi,ecx
 00404059    add         ebx,ecx
 0040405B    cmp         ecx,0B30
>00404061    jb          00404014
 00404063    mov         eax,esi
 00404065    call        RemoveMediumFreeBlock
>0040406A    jmp         00404014
 0040406C    cmp         dword ptr ds:[7C5A74],13FFE0
>00404076    jne         004040A4
 00404078    sub         esi,10
 0040407B    mov         eax,dword ptr [esi]
 0040407D    mov         edx,dword ptr [esi+4]
 00404080    mov         dword ptr [eax+4],edx
 00404083    mov         dword ptr [edx],eax
 00404085    mov         byte ptr ds:[7C5A6C],0
 0040408C    push        8000
 00404091    push        0
 00404093    push        esi
 00404094    call        kernel32.VirtualFree
 00404099    cmp         eax,1
 0040409C    sbb         eax,eax
 0040409E    pop         esi
 0040409F    pop         ebx
 004040A0    ret
 004040A1    nop
 004040A2    nop
 004040A3    nop
 004040A4    lea         ebx,[esi+13FFE0]
 004040AA    call        BinMediumSequentialFeedRemainder
 004040AF    mov         dword ptr [ebx-4],2
 004040B6    mov         dword ptr ds:[7C5A74],13FFE0
 004040C0    mov         dword ptr ds:[7C5A70],ebx
 004040C6    mov         byte ptr ds:[7C5A6C],0
 004040CD    xor         eax,eax
 004040CF    pop         esi
 004040D0    pop         ebx
 004040D1    ret
 004040D2    nop
 004040D3    nop
 004040D4    pop         ebx
 004040D5    test        dl,3
>004040D8    je          00403974
 004040DE    mov         eax,0FFFFFFFF
 004040E3    ret
*}
end;

//004040E4
function SysReallocMem(P:Pointer; Size:NativeInt):Pointer;
begin
{*
 004040E4    mov         ecx,dword ptr [eax-4]
 004040E7    test        cl,7
 004040EA    push        ebx
 004040EB    push        esi
 004040EC    mov         esi,eax
>004040EE    jne         0040417C
 004040F4    mov         ebx,dword ptr [ecx]
 004040F6    movzx       ecx,word ptr [ebx+2]
 004040FA    sub         ecx,4
 004040FD    cmp         ecx,edx
>004040FF    jb          00404138
 00404101    lea         ebx,[edx*4+40]
 00404108    cmp         ebx,ecx
>0040410A    jb          00404110
 0040410C    pop         esi
 0040410D    pop         ebx
 0040410E    ret
 0040410F    nop
 00404110    mov         ebx,edx
 00404112    mov         eax,edx
 00404114    call        SysGetMem
 00404119    test        eax,eax
>0040411B    je          00404133
 0040411D    mov         ecx,ebx
 0040411F    mov         edx,eax
 00404121    mov         ebx,eax
 00404123    mov         eax,esi
 00404125    call        MoveX8LP
 0040412A    mov         eax,esi
 0040412C    call        SysFreeMem
 00404131    mov         eax,ebx
 00404133    pop         esi
 00404134    pop         ebx
 00404135    ret
 00404136    nop
 00404137    nop
 00404138    lea         ecx,[ecx+ecx+20]
 0040413C    push        edi
 0040413D    mov         edi,edx
 0040413F    xor         eax,eax
 00404141    sub         ecx,edx
 00404143    adc         eax,0FFFFFFFF
 00404146    and         eax,ecx
 00404148    add         eax,edx
 0040414A    call        SysGetMem
 0040414F    test        eax,eax
>00404151    je          00404177
 00404153    cmp         edi,40A2C
>00404159    jbe         0040415E
 0040415B    mov         dword ptr [eax-8],edi
 0040415E    movzx       ecx,word ptr [ebx+2]
 00404162    sub         ecx,4
 00404165    mov         edx,eax
 00404167    mov         edi,eax
 00404169    mov         eax,esi
 0040416B    call        dword ptr [ebx+1C]
 0040416E    mov         eax,esi
 00404170    call        SysFreeMem
 00404175    mov         eax,edi
 00404177    pop         edi
 00404178    pop         esi
 00404179    pop         ebx
 0040417A    ret
 0040417B    nop
 0040417C    test        cl,5
>0040417F    jne         004043EC
 00404185    mov         ebx,ecx
 00404187    and         ecx,0FFFFFFF0
 0040418A    push        edi
 0040418B    lea         edi,[ecx+eax]
 0040418E    sub         ecx,4
 00404191    and         ebx,0F
 00404194    cmp         edx,ecx
 00404196    push        ebp
>00404197    ja          004042AC
 0040419D    lea         ebp,[edx+edx]
 004041A0    cmp         ebp,ecx
>004041A2    jb          004041AC
 004041A4    pop         ebp
 004041A5    pop         edi
 004041A6    pop         esi
 004041A7    pop         ebx
 004041A8    ret
 004041A9    nop
 004041AA    nop
 004041AB    nop
 004041AC    cmp         edx,0B2C
>004041B2    jae         004041C9
 004041B4    cmp         edx,2CC
>004041BA    jb          00404284
 004041C0    mov         edx,0B2C
 004041C5    cmp         ecx,edx
>004041C7    jbe         004041A4
 004041C9    lea         ebp,[edx+0D3]
 004041CF    and         ebp,0FFFFFF00
 004041D5    add         ebp,30
 004041D8    add         ecx,4
 004041DB    sub         ecx,ebp
 004041DD    cmp         byte ptr ds:[7C505D],0
>004041E4    je          0040422C
 004041E6    mov         eax,100
 004041EB    lock cmpxchgbyte ptr ds:[7C5A6C],ah
>004041F3    je          00404224
 004041F5    rep nop
 004041F7    cmp         byte ptr ds:[7C590D],0
>004041FE    jne         004041E6
 00404200    push        ecx
 00404201    push        0
 00404203    call        kernel32.Sleep
 00404208    pop         ecx
 00404209    mov         eax,100
 0040420E    lock cmpxchgbyte ptr ds:[7C5A6C],ah
>00404216    je          00404224
 00404218    push        ecx
 00404219    push        0A
 0040421B    call        kernel32.Sleep
 00404220    pop         ecx
>00404221    jmp         004041E6
 00404223    nop
 00404224    mov         ebx,0F
 00404229    and         ebx,dword ptr [esi-4]
 0040422C    or          ebx,ebp
 0040422E    mov         dword ptr [esi-4],ebx
 00404231    mov         ebx,ecx
 00404233    mov         edx,dword ptr [edi-4]
 00404236    test        dl,1
>00404239    jne         00404244
 0040423B    or          edx,8
 0040423E    mov         dword ptr [edi-4],edx
>00404241    jmp         0040425A
 00404243    nop
 00404244    mov         eax,edi
 00404246    and         edx,0FFFFFFF0
 00404249    add         ebx,edx
 0040424B    add         edi,edx
 0040424D    cmp         edx,0B30
>00404253    jb          0040425A
 00404255    call        RemoveMediumFreeBlock
 0040425A    mov         dword ptr [edi-8],ebx
 0040425D    lea         eax,[ebx+3]
 00404260    mov         dword ptr [esi+ebp-4],eax
 00404264    cmp         ebx,0B30
>0040426A    jb          00404276
 0040426C    lea         eax,[esi+ebp]
 0040426F    mov         edx,ebx
 00404271    call        InsertMediumBlockIntoBin
 00404276    mov         byte ptr ds:[7C5A6C],0
 0040427D    mov         eax,esi
 0040427F    pop         ebp
 00404280    pop         edi
 00404281    pop         esi
 00404282    pop         ebx
 00404283    ret
 00404284    mov         edi,edx
 00404286    mov         eax,edx
 00404288    call        SysGetMem
 0040428D    test        eax,eax
>0040428F    je          004042A7
 00404291    mov         ebp,eax
 00404293    mov         edx,eax
 00404295    mov         eax,esi
 00404297    mov         ecx,edi
 00404299    call        MoveX8LP
 0040429E    mov         eax,esi
 004042A0    call        SysFreeMem
 004042A5    mov         eax,ebp
 004042A7    pop         ebp
 004042A8    pop         edi
 004042A9    pop         esi
 004042AA    pop         ebx
 004042AB    ret
 004042AC    mov         eax,dword ptr [edi-4]
 004042AF    test        al,1
>004042B1    je          004043A4
 004042B7    and         eax,0FFFFFFF0
 004042BA    lea         ebp,[ecx+eax]
 004042BD    cmp         edx,ebp
>004042BF    ja          004043A4
 004042C5    cmp         byte ptr ds:[7C505D],0
>004042CC    je          00404329
 004042CE    mov         eax,100
 004042D3    lock cmpxchgbyte ptr ds:[7C5A6C],ah
>004042DB    je          00404310
 004042DD    rep nop
 004042DF    cmp         byte ptr ds:[7C590D],0
>004042E6    jne         004042CE
 004042E8    push        ecx
 004042E9    push        edx
 004042EA    push        0
 004042EC    call        kernel32.Sleep
 004042F1    pop         edx
 004042F2    pop         ecx
 004042F3    mov         eax,100
 004042F8    lock cmpxchgbyte ptr ds:[7C5A6C],ah
>00404300    je          00404310
 00404302    push        ecx
 00404303    push        edx
 00404304    push        0A
 00404306    call        kernel32.Sleep
 0040430B    pop         edx
 0040430C    pop         ecx
>0040430D    jmp         004042CE
 0040430F    nop
 00404310    mov         ebx,0F
 00404315    and         ebx,dword ptr [esi-4]
 00404318    mov         eax,dword ptr [edi-4]
 0040431B    test        al,1
>0040431D    je          0040439D
 0040431F    and         eax,0FFFFFFF0
 00404322    lea         ebp,[ecx+eax]
 00404325    cmp         edx,ebp
>00404327    ja          0040439D
 00404329    cmp         eax,0B30
>0040432E    jb          0040433B
 00404330    mov         eax,edi
 00404332    push        ecx
 00404333    push        edx
 00404334    call        RemoveMediumFreeBlock
 00404339    pop         edx
 0040433A    pop         ecx
 0040433B    mov         eax,ecx
 0040433D    shr         eax,2
 00404340    add         eax,ecx
 00404342    xor         edi,edi
 00404344    sub         eax,edx
 00404346    adc         edi,0FFFFFFFF
 00404349    and         eax,edi
 0040434B    lea         eax,[edx+eax+0D3]
 00404352    and         eax,0FFFFFF00
 00404357    add         eax,30
 0040435A    lea         edx,[ebp+4]
 0040435D    sub         edx,eax
>0040435F    ja          0040436C
 00404361    and         dword ptr [esi+ebp],0FFFFFFF7
 00404365    add         ebp,4
>00404368    jmp         00404388
 0040436A    nop
 0040436B    nop
 0040436C    mov         dword ptr [esi+ebp-4],edx
 00404370    lea         edi,[edx+3]
 00404373    mov         dword ptr [eax+esi-4],edi
 00404377    mov         ebp,eax
 00404379    cmp         edx,0B30
>0040437F    jb          00404388
 00404381    add         eax,esi
 00404383    call        InsertMediumBlockIntoBin
 00404388    or          ebp,ebx
 0040438A    mov         dword ptr [esi-4],ebp
 0040438D    mov         byte ptr ds:[7C5A6C],0
 00404394    mov         eax,esi
 00404396    pop         ebp
 00404397    pop         edi
 00404398    pop         esi
 00404399    pop         ebx
 0040439A    ret
 0040439B    nop
 0040439C    nop
 0040439D    mov         byte ptr ds:[7C5A6C],0
 004043A4    mov         eax,ecx
 004043A6    shr         eax,2
 004043A9    add         eax,ecx
 004043AB    xor         edi,edi
 004043AD    sub         eax,edx
 004043AF    adc         edi,0FFFFFFFF
 004043B2    and         eax,edi
 004043B4    add         eax,edx
 004043B6    mov         ebp,eax
 004043B8    mov         edi,ecx
 004043BA    push        edx
 004043BB    call        SysGetMem
 004043C0    pop         edx
 004043C1    test        eax,eax
>004043C3    je          00404396
 004043C5    cmp         ebp,40A2C
>004043CB    jbe         004043D0
 004043CD    mov         dword ptr [eax-8],edx
 004043D0    mov         ebp,eax
 004043D2    mov         edx,eax
 004043D4    mov         eax,esi
 004043D6    mov         ecx,edi
 004043D8    call        MoveX16LP
 004043DD    mov         eax,esi
 004043DF    call        SysFreeMem
 004043E4    mov         eax,ebp
 004043E6    pop         ebp
 004043E7    pop         edi
 004043E8    pop         esi
 004043E9    pop         ebx
 004043EA    ret
 004043EB    nop
 004043EC    pop         esi
 004043ED    pop         ebx
 004043EE    test        cl,3
>004043F1    je          00403A18
 004043F7    xor         eax,eax
 004043F9    ret
*}
end;

//004043FC
function SysAllocMem(Size:NativeInt):Pointer;
begin
{*
 004043FC    push        ebx
 004043FD    lea         ebx,[eax-1]
 00404400    and         ebx,0FFFFFFFC
 00404403    call        SysGetMem
 00404408    cmp         eax,1
 0040440B    sbb         ecx,ecx
 0040440D    lea         edx,[ebx+eax]
 00404410    or          ebx,ecx
 00404412    cmp         ebx,40A2C
>00404418    jae         0040442C
 0040441A    neg         ebx
 0040441C    fldz
 0040441E    fst         qword ptr [ebx+edx]
 00404421    add         ebx,8
>00404424    js          0040441E
 00404426    mov         dword ptr [edx],ecx
 00404428    ffree       st(0)
 0040442A    fincstp
 0040442C    pop         ebx
 0040442D    ret
*}
end;

//00404430
{*procedure sub_00404430(?:?; ?:?);
begin
 00404430    push        ebx
 00404431    push        esi
 00404432    push        ecx
 00404433    mov         esi,edx
 00404435    mov         ebx,eax
 00404437    cmp         byte ptr ds:[7C505C],0;gvar_007C505C:Boolean
>0040443E    je          004044A1
 00404440    push        0
 00404442    lea         eax,[esp+4]
 00404446    push        eax
 00404447    mov         eax,esi
 00404449    call        @PCharLen
 0040444E    push        eax
 0040444F    push        esi
 00404450    push        0F4
 00404452    call        kernel32.GetStdHandle
 00404457    push        eax
 00404458    call        kernel32.WriteFile
 0040445D    push        0
 0040445F    lea         eax,[esp+4]
 00404463    push        eax
 00404464    mov         eax,[0079E070];^gvar_00403598
 00404469    call        @PCharLen
 0040446E    push        eax
 0040446F    mov         eax,[0079E070];^gvar_00403598
 00404474    push        eax
 00404475    push        0F4
 00404477    call        kernel32.GetStdHandle
 0040447C    push        eax
 0040447D    call        kernel32.WriteFile
 00404482    push        0
 00404484    lea         eax,[esp+4]
 00404488    push        eax
 00404489    mov         eax,ebx
 0040448B    call        @PCharLen
 00404490    push        eax
 00404491    push        ebx
 00404492    push        0F4
 00404494    call        kernel32.GetStdHandle
 00404499    push        eax
 0040449A    call        kernel32.WriteFile
>0040449F    jmp         004044AF
 004044A1    push        2010
 004044A6    push        esi
 004044A7    push        ebx
 004044A8    push        0
 004044AA    call        MessageBoxA
 004044AF    pop         edx
 004044B0    pop         esi
 004044B1    pop         ebx
 004044B2    ret
end;*}

//004044B4
function NextMediumBlock(APMediumBlock:Pointer):Pointer;
begin
{*
 004044B4    mov         ecx,eax
 004044B6    mov         edx,ecx
 004044B8    sub         edx,4
 004044BB    mov         edx,dword ptr [edx]
 004044BD    and         edx,0FFFFFFF0
 004044C0    add         edx,ecx
 004044C2    mov         eax,edx
 004044C4    mov         edx,eax
 004044C6    sub         edx,4
 004044C9    mov         edx,dword ptr [edx]
 004044CB    and         edx,0FFFFFFF0
 004044CE    test        edx,edx
>004044D0    jne         004044D4
 004044D2    xor         eax,eax
 004044D4    ret
*}
end;

//004044D8
function GetFirstMediumBlockInPool(APMediumBlockPoolHeader:PMediumBlockPoolHeader):Pointer;
begin
{*
 004044D8    cmp         dword ptr ds:[7C5A74],0
>004044DF    je          004044FB
 004044E1    mov         edx,dword ptr ds:[7C5A70]
 004044E7    cmp         edx,eax
>004044E9    jb          004044FB
 004044EB    mov         edx,eax
 004044ED    add         edx,13FFF0
 004044F3    cmp         edx,dword ptr ds:[7C5A70]
>004044F9    jae         004044FF
 004044FB    add         eax,10
 004044FE    ret
 004044FF    cmp         dword ptr ds:[7C5A74],13FFE0
>00404509    je          00404512
 0040450B    mov         eax,[007C5A70]
>00404510    jmp         00404514
 00404512    xor         eax,eax
 00404514    ret
*}
end;

//00404518
procedure GetFirstAndLastSmallBlockInPool(APSmallBlockPool:PSmallBlockPoolHeader; var AFirstPtr:Pointer; var ALastPtr:Pointer);
begin
{*
 00404518    push        ebx
 00404519    push        esi
 0040451A    mov         ebx,eax
 0040451C    add         ebx,20
 0040451F    mov         dword ptr [edx],ebx
 00404521    mov         edx,dword ptr [eax]
 00404523    cmp         eax,dword ptr [edx+18]
>00404526    jne         00404530
 00404528    mov         ebx,dword ptr [edx+10]
 0040452B    cmp         ebx,dword ptr [edx+14]
>0040452E    jbe         00404549
 00404530    mov         esi,eax
 00404532    mov         ebx,esi
 00404534    sub         ebx,4
 00404537    mov         ebx,dword ptr [ebx]
 00404539    and         ebx,0FFFFFFF0
 0040453C    add         ebx,esi
 0040453E    movzx       eax,word ptr [edx+2]
 00404542    sub         ebx,eax
 00404544    mov         dword ptr [ecx],ebx
 00404546    pop         esi
 00404547    pop         ebx
 00404548    ret
 00404549    mov         eax,dword ptr [edx+10]
 0040454C    dec         eax
 0040454D    mov         dword ptr [ecx],eax
 0040454F    pop         esi
 00404550    pop         ebx
 00404551    ret
*}
end;

//00404554
function NativeUIntToStrBuf(ANum:NativeUInt; APBuffer:PAnsiChar):PAnsiChar;
begin
{*
 00404554    push        ebx
 00404555    push        esi
 00404556    push        edi
 00404557    push        ebp
 00404558    add         esp,0FFFFFFEC
 0040455B    mov         ebp,edx
 0040455D    mov         ebx,eax
 0040455F    xor         esi,esi
 00404561    mov         edi,ebx
 00404563    mov         ecx,0A
 00404568    mov         eax,ebx
 0040456A    xor         edx,edx
 0040456C    div         eax,ecx
 0040456E    mov         ebx,eax
 00404570    mov         eax,ebx
 00404572    add         eax,eax
 00404574    lea         eax,[eax+eax*4]
 00404577    sub         edi,eax
 00404579    inc         esi
 0040457A    mov         edx,edi
 0040457C    add         dl,30
 0040457F    mov         eax,14
 00404584    sub         eax,esi
 00404586    mov         byte ptr [esp+eax],dl
 00404589    test        ebx,ebx
>0040458B    jne         00404561
 0040458D    mov         edx,ebp
 0040458F    lea         eax,[esp+eax]
 00404592    mov         ecx,esi
 00404594    call        Move
 00404599    lea         eax,[esi+ebp]
 0040459C    add         esp,14
 0040459F    pop         ebp
 004045A0    pop         edi
 004045A1    pop         esi
 004045A2    pop         ebx
 004045A3    ret
*}
end;

//004045A4
function AppendStringToBuffer(const ASource:PAnsiChar; const ADestination:PAnsiChar; ACount:Cardinal):PAnsiChar;
begin
{*
 004045A4    push        ebx
 004045A5    push        esi
 004045A6    mov         esi,ecx
 004045A8    mov         ebx,edx
 004045AA    mov         edx,ebx
 004045AC    mov         ecx,esi
 004045AE    call        Move
 004045B3    mov         eax,ebx
 004045B5    add         eax,esi
 004045B7    pop         esi
 004045B8    pop         ebx
 004045B9    ret
*}
end;

//004045BC
function AppendClassNameToBuffer(AClass:TClass; ADestination:PAnsiChar):PAnsiChar;
begin
{*
 004045BC    push        ebx
 004045BD    mov         ebx,edx
 004045BF    test        eax,eax
>004045C1    je          004045D5
 004045C3    add         eax,0FFFFFFC8
 004045C6    mov         eax,dword ptr [eax]
 004045C8    movzx       ecx,byte ptr [eax]
 004045CB    inc         eax
 004045CC    mov         edx,ebx
 004045CE    call        AppendStringToBuffer
 004045D3    pop         ebx
 004045D4    ret
 004045D5    mov         eax,[0079E064]
 004045DA    call        @PCharLen
 004045DF    mov         ecx,eax
 004045E1    mov         edx,ebx
 004045E3    mov         eax,[0079E064]
 004045E8    call        AppendStringToBuffer
 004045ED    pop         ebx
 004045EE    ret
*}
end;

//004045F0
function IsValidVMTAddress(APAddress:Pointer):Boolean;
begin
{*
 004045F0    push        ebp
 004045F1    mov         ebp,esp
 004045F3    push        ebx
 004045F4    mov         edx,eax
 004045F6    cmp         edx,0FFFF
>004045FC    jbe         00404663
 004045FE    test        dl,3
>00404601    jne         00404663
 00404603    mov         edx,dword ptr [ebp+8]
 00404606    mov         edx,dword ptr [edx-1C]
 00404609    mov         ecx,eax
 0040460B    cmp         edx,ecx
>0040460D    ja          0040461C
 0040460F    mov         ebx,dword ptr [ebp+8]
 00404612    add         edx,dword ptr [ebx-10]
 00404615    add         ecx,4
 00404618    cmp         edx,ecx
>0040461A    jae         00404633
 0040461C    mov         edx,dword ptr [ebp+8]
 0040461F    xor         ecx,ecx
 00404621    mov         dword ptr [edx-10],ecx
 00404624    push        1C
 00404626    mov         edx,dword ptr [ebp+8]
 00404629    add         edx,0FFFFFFE4
 0040462C    push        edx
 0040462D    push        eax
 0040462E    call        kernel32.VirtualQuery
 00404633    mov         eax,dword ptr [ebp+8]
 00404636    cmp         dword ptr [eax-10],4
>0040463A    jb          0040465A
 0040463C    mov         eax,dword ptr [ebp+8]
 0040463F    cmp         dword ptr [eax-0C],1000
>00404646    jne         0040465A
 00404648    mov         eax,dword ptr [ebp+8]
 0040464B    test        byte ptr [eax-8],0F6
>0040464F    je          0040465A
 00404651    mov         eax,dword ptr [ebp+8]
 00404654    test        byte ptr [eax-7],1
>00404658    je          0040465E
 0040465A    xor         eax,eax
>0040465C    jmp         00404665
 0040465E    mov         al,1
 00404660    pop         ebx
 00404661    pop         ebp
 00404662    ret
 00404663    xor         eax,eax
 00404665    pop         ebx
 00404666    pop         ebp
 00404667    ret
*}
end;

//00404668
function InternalIsValidClass(AClassPointer:Pointer; ADepth:Integer):Boolean;
begin
{*
 00404668    push        ebp
 00404669    mov         ebp,esp
 0040466B    push        ebx
 0040466C    push        esi
 0040466D    push        edi
 0040466E    mov         edi,edx
 00404670    mov         ebx,eax
 00404672    cmp         edi,3E8
>00404678    jge         004046DF
 0040467A    mov         eax,dword ptr [ebp+8]
 0040467D    push        eax
 0040467E    mov         eax,ebx
 00404680    add         eax,0FFFFFFA8
 00404683    call        IsValidVMTAddress
 00404688    pop         ecx
 00404689    test        al,al
>0040468B    je          004046DF
 0040468D    mov         eax,dword ptr [ebp+8]
 00404690    push        eax
 00404691    mov         eax,ebx
 00404693    add         eax,0FFFFFFD0
 00404696    call        IsValidVMTAddress
 0040469B    pop         ecx
 0040469C    test        al,al
>0040469E    je          004046DF
 004046A0    mov         eax,ebx
 004046A2    add         eax,0FFFFFFD0
 004046A5    mov         esi,dword ptr [eax]
 004046A7    mov         eax,ebx
 004046A9    add         eax,0FFFFFFA8
 004046AC    cmp         ebx,dword ptr [eax]
>004046AE    jne         004046D7
 004046B0    test        esi,esi
>004046B2    je          004046DB
 004046B4    mov         eax,dword ptr [ebp+8]
 004046B7    push        eax
 004046B8    mov         eax,esi
 004046BA    call        IsValidVMTAddress
 004046BF    pop         ecx
 004046C0    test        al,al
>004046C2    je          004046D7
 004046C4    mov         eax,dword ptr [ebp+8]
 004046C7    push        eax
 004046C8    lea         edx,[edi+1]
 004046CB    mov         eax,dword ptr [esi]
 004046CD    call        InternalIsValidClass
 004046D2    pop         ecx
 004046D3    test        al,al
>004046D5    jne         004046DB
 004046D7    xor         eax,eax
>004046D9    jmp         004046E1
 004046DB    mov         al,1
>004046DD    jmp         004046E1
 004046DF    xor         eax,eax
 004046E1    pop         edi
 004046E2    pop         esi
 004046E3    pop         ebx
 004046E4    pop         ebp
 004046E5    ret
*}
end;

//004046E8
function GetObjectClass(APointer:Pointer):TClass;
begin
{*
 004046E8    push        ebp
 004046E9    mov         ebp,esp
 004046EB    add         esp,0FFFFFFE4
 004046EE    push        ebx
 004046EF    mov         ebx,dword ptr [eax]
 004046F1    xor         eax,eax
 004046F3    mov         dword ptr [ebp-10],eax
 004046F6    push        ebp
 004046F7    xor         edx,edx
 004046F9    mov         eax,ebx
 004046FB    call        InternalIsValidClass
 00404700    pop         ecx
 00404701    test        al,al
>00404703    jne         00404707
 00404705    xor         ebx,ebx
 00404707    mov         eax,ebx
 00404709    pop         ebx
 0040470A    mov         esp,ebp
 0040470C    pop         ebp
 0040470D    ret
*}
end;

//00404710
function LockExpectedMemoryLeaksList:Boolean;
begin
{*
 00404710    cmp         byte ptr ds:[7C505D],0
>00404717    je          00404756
>00404719    jmp         00404744
 0040471B    cmp         byte ptr ds:[7C590D],0
>00404722    jne         00404744
 00404724    push        0
 00404726    call        kernel32.Sleep
 0040472B    mov         ecx,7C7B14
 00404730    mov         dl,1
 00404732    xor         eax,eax
 00404734    call        LockCmpxchg
 00404739    test        al,al
>0040473B    je          00404756
 0040473D    push        0A
 0040473F    call        kernel32.Sleep
 00404744    mov         ecx,7C7B14
 00404749    mov         dl,1
 0040474B    xor         eax,eax
 0040474D    call        LockCmpxchg
 00404752    test        al,al
>00404754    jne         0040471B
 00404756    cmp         dword ptr ds:[7C7B10],0
>0040475D    jne         00404777
 0040475F    push        4
 00404761    push        1000
 00404766    push        10000
 0040476B    push        0
 0040476D    call        kernel32.VirtualAlloc
 00404772    mov         [007C7B10],eax
 00404777    cmp         dword ptr ds:[7C7B10],0
 0040477E    setne       al
 00404781    ret
*}
end;

//00404784
function SysRegisterExpectedMemoryLeak(P:Pointer):Boolean;
begin
{*
 00404784    push        ebx
 00404785    mov         ebx,eax
 00404787    call        LockExpectedMemoryLeaksList
 0040478C    test        al,al
>0040478E    je          004047B9
 00404790    mov         eax,[007C7B10]
 00404795    cmp         dword ptr [eax],3FFE
>0040479B    jge         004047B9
 0040479D    mov         eax,[007C7B10]
 004047A2    mov         eax,dword ptr [eax]
 004047A4    mov         edx,dword ptr ds:[7C7B10]
 004047AA    mov         dword ptr [edx+eax*4+4],ebx
 004047AE    mov         eax,[007C7B10]
 004047B3    inc         dword ptr [eax]
 004047B5    mov         al,1
>004047B7    jmp         004047BB
 004047B9    xor         eax,eax
 004047BB    mov         byte ptr ds:[7C7B14],0
 004047C2    pop         ebx
 004047C3    ret
*}
end;

//004047C4
function SysUnregisterExpectedMemoryLeak(P:Pointer):Boolean;
begin
{*
 004047C4    push        ebx
 004047C5    push        esi
 004047C6    push        edi
 004047C7    mov         esi,eax
 004047C9    mov         edi,7C7B10
 004047CE    xor         ebx,ebx
 004047D0    cmp         dword ptr [edi],0
>004047D3    je          00404814
 004047D5    call        LockExpectedMemoryLeaksList
 004047DA    test        al,al
>004047DC    je          00404814
 004047DE    mov         eax,dword ptr [edi]
 004047E0    mov         edx,dword ptr [eax]
 004047E2    dec         edx
 004047E3    test        edx,edx
>004047E5    jl          0040480D
 004047E7    inc         edx
 004047E8    xor         eax,eax
 004047EA    mov         ecx,dword ptr [edi]
 004047EC    cmp         esi,dword ptr [ecx+eax*4+4]
>004047F0    jne         00404809
 004047F2    mov         edx,dword ptr [edi]
 004047F4    mov         edx,dword ptr [edx]
 004047F6    mov         ecx,dword ptr [edi]
 004047F8    mov         edx,dword ptr [ecx+edx*4]
 004047FB    mov         ecx,dword ptr [edi]
 004047FD    mov         dword ptr [ecx+eax*4+4],edx
 00404801    mov         edx,dword ptr [edi]
 00404803    dec         dword ptr [edx]
 00404805    mov         bl,1
>00404807    jmp         0040480D
 00404809    inc         eax
 0040480A    dec         edx
>0040480B    jne         004047EA
 0040480D    mov         byte ptr ds:[7C7B14],0
 00404814    mov         eax,ebx
 00404816    pop         edi
 00404817    pop         esi
 00404818    pop         ebx
 00404819    ret
*}
end;

//0040481C
procedure CheckSmallBlockPoolForLeaks(APSmallBlockPool:PSmallBlockPoolHeader);
begin
{*
 0040481C    push        ebp
 0040481D    mov         ebp,esp
 0040481F    add         esp,0FFFFFFD8
 00404822    push        ebx
 00404823    push        esi
 00404824    push        edi
 00404825    mov         dword ptr [ebp-4],eax
 00404828    mov         eax,dword ptr [ebp-4]
 0040482B    mov         eax,dword ptr [eax]
 0040482D    sub         eax,79E078
 00404833    shr         eax,5
 00404836    shl         eax,8
 00404839    mov         edx,dword ptr [ebp+8]
 0040483C    lea         esi,[edx+eax*8-1B800]
 00404843    lea         ecx,[ebp-24]
 00404846    lea         edx,[ebp-20]
 00404849    mov         eax,dword ptr [ebp-4]
 0040484C    call        GetFirstAndLastSmallBlockInPool
>00404851    jmp         004049C3
 00404856    mov         eax,dword ptr [ebp-20]
 00404859    sub         eax,4
 0040485C    test        byte ptr [eax],1
>0040485F    jne         004049B7
 00404865    mov         eax,dword ptr [ebp-20]
 00404868    call        SysUnregisterExpectedMemoryLeak
 0040486D    test        al,al
>0040486F    jne         004049B7
 00404875    mov         eax,dword ptr [ebp+8]
 00404878    mov         byte ptr [eax-1B801],0
 0040487F    xor         ebx,ebx
 00404881    mov         eax,dword ptr [ebp-20]
 00404884    call        GetObjectClass
 00404889    mov         edi,eax
 0040488B    test        edi,edi
>0040488D    jne         0040498B
 00404893    mov         eax,dword ptr [ebp-20]
 00404896    cmp         dword ptr [eax+4],100
>0040489D    jge         004049B3
 004048A3    mov         eax,dword ptr [ebp-20]
 004048A6    mov         eax,dword ptr [eax+8]
 004048A9    mov         dword ptr [ebp-0C],eax
 004048AC    mov         eax,dword ptr [ebp-20]
 004048AF    movzx       eax,word ptr [eax+2]
 004048B3    mov         dword ptr [ebp-10],eax
 004048B6    cmp         dword ptr [ebp-10],1
>004048BA    je          004048C6
 004048BC    cmp         dword ptr [ebp-10],2
>004048C0    jne         004049B3
 004048C6    cmp         dword ptr [ebp-0C],0
>004048CA    jle         004049B3
 004048D0    mov         eax,dword ptr [ebp-4]
 004048D3    mov         eax,dword ptr [eax]
 004048D5    movzx       eax,word ptr [eax+2]
 004048D9    sub         eax,4
 004048DC    sub         eax,0C
 004048DF    cdq
 004048E0    idiv        eax,dword ptr [ebp-10]
 004048E3    cmp         eax,dword ptr [ebp-0C]
>004048E6    jle         004049B3
 004048EC    mov         byte ptr [ebp-19],1
 004048F0    cmp         dword ptr [ebp-10],1
>004048F4    jne         00404941
 004048F6    mov         eax,dword ptr [ebp-20]
 004048F9    add         eax,0C
 004048FC    mov         dword ptr [ebp-14],eax
 004048FF    mov         eax,dword ptr [ebp-0C]
 00404902    test        eax,eax
>00404904    jle         00404928
 00404906    mov         dword ptr [ebp-28],eax
 00404909    cmp         byte ptr [ebp-19],0
>0040490D    je          00404917
 0040490F    mov         eax,dword ptr [ebp-14]
 00404912    cmp         byte ptr [eax],20
>00404915    jae         0040491B
 00404917    xor         eax,eax
>00404919    jmp         0040491D
 0040491B    mov         al,1
 0040491D    mov         byte ptr [ebp-19],al
 00404920    inc         dword ptr [ebp-14]
 00404923    dec         dword ptr [ebp-28]
>00404926    jne         00404909
 00404928    cmp         byte ptr [ebp-19],0
>0040492C    je          004049B3
 00404932    mov         eax,dword ptr [ebp-14]
 00404935    cmp         byte ptr [eax],0
>00404938    jne         004049B3
 0040493A    mov         ebx,1
>0040493F    jmp         004049B3
 00404941    mov         eax,dword ptr [ebp-20]
 00404944    add         eax,0C
 00404947    mov         dword ptr [ebp-18],eax
 0040494A    mov         eax,dword ptr [ebp-0C]
 0040494D    test        eax,eax
>0040494F    jle         00404975
 00404951    mov         dword ptr [ebp-28],eax
 00404954    cmp         byte ptr [ebp-19],0
>00404958    je          00404963
 0040495A    mov         eax,dword ptr [ebp-18]
 0040495D    cmp         word ptr [eax],20
>00404961    jae         00404967
 00404963    xor         eax,eax
>00404965    jmp         00404969
 00404967    mov         al,1
 00404969    mov         byte ptr [ebp-19],al
 0040496C    add         dword ptr [ebp-18],2
 00404970    dec         dword ptr [ebp-28]
>00404973    jne         00404954
 00404975    cmp         byte ptr [ebp-19],0
>00404979    je          004049B3
 0040497B    mov         eax,dword ptr [ebp-18]
 0040497E    cmp         word ptr [eax],0
>00404982    jne         004049B3
 00404984    mov         ebx,2
>00404989    jmp         004049B3
 0040498B    mov         ebx,3
 00404990    cmp         edi,dword ptr [esi+ebx*8]
>00404993    je          004049A4
 00404995    cmp         dword ptr [esi+ebx*8],0
>00404999    je          004049A4
 0040499B    inc         ebx
 0040499C    cmp         ebx,0FF
>004049A2    jle         00404990
 004049A4    cmp         ebx,0FF
>004049AA    jg          004049B1
 004049AC    mov         dword ptr [esi+ebx*8],edi
>004049AF    jmp         004049B3
 004049B1    xor         ebx,ebx
 004049B3    inc         dword ptr [esi+ebx*8+4]
 004049B7    mov         eax,dword ptr [ebp-4]
 004049BA    mov         eax,dword ptr [eax]
 004049BC    movzx       eax,word ptr [eax+2]
 004049C0    add         dword ptr [ebp-20],eax
 004049C3    mov         eax,dword ptr [ebp-20]
 004049C6    cmp         eax,dword ptr [ebp-24]
>004049C9    jbe         00404856
 004049CF    pop         edi
 004049D0    pop         esi
 004049D1    pop         ebx
 004049D2    mov         esp,ebp
 004049D4    pop         ebp
 004049D5    ret
*}
end;

//004049D8
procedure ScanForMemoryLeaks;
begin
{*
 004049D8    push        ebp
 004049D9    mov         ebp,esp
 004049DB    push        eax
 004049DC    mov         eax,27
 004049E1    add         esp,0FFFFF004
 004049E7    push        eax
 004049E8    dec         eax
>004049E9    jne         004049E1
 004049EB    mov         eax,dword ptr [ebp-4]
 004049EE    add         esp,0FFFFF7E0
 004049F4    push        ebx
 004049F5    push        esi
 004049F6    push        edi
 004049F7    lea         eax,[ebp-1B800]
 004049FD    xor         ecx,ecx
 004049FF    mov         edx,1B800
 00404A04    call        @FillChar
 00404A09    lea         eax,[ebp-1F824]
 00404A0F    xor         ecx,ecx
 00404A11    mov         edx,4000
 00404A16    call        @FillChar
 00404A1B    xor         eax,eax
 00404A1D    mov         dword ptr [ebp-1B808],eax
 00404A23    mov         byte ptr [ebp-1B801],1
 00404A2A    mov         edi,dword ptr ds:[7C5A60]
>00404A30    jmp         00404AB7
 00404A35    mov         eax,edi
 00404A37    call        GetFirstMediumBlockInPool
 00404A3C    mov         ebx,eax
 00404A3E    test        ebx,ebx
>00404A40    je          00404AB4
 00404A42    mov         eax,ebx
 00404A44    sub         eax,4
 00404A47    mov         esi,dword ptr [eax]
 00404A49    test        esi,1
>00404A4F    jne         00404AA7
 00404A51    test        esi,4
>00404A57    je          00404A64
 00404A59    push        ebp
 00404A5A    mov         eax,ebx
 00404A5C    call        CheckSmallBlockPoolForLeaks
 00404A61    pop         ecx
>00404A62    jmp         00404AA7
 00404A64    cmp         dword ptr [ebp-1B808],1000
>00404A6E    jge         00404AA7
 00404A70    and         esi,0FFFFFFF0
 00404A73    sub         esi,4
 00404A76    mov         dword ptr [ebp-1B814],esi
 00404A7C    mov         eax,ebx
 00404A7E    call        SysUnregisterExpectedMemoryLeak
 00404A83    test        al,al
>00404A85    jne         00404AA7
 00404A87    mov         byte ptr [ebp-1B801],0
 00404A8E    mov         eax,dword ptr [ebp-1B808]
 00404A94    mov         edx,dword ptr [ebp-1B814]
 00404A9A    mov         dword ptr [ebp+eax*4-1F824],edx
 00404AA1    inc         dword ptr [ebp-1B808]
 00404AA7    mov         eax,ebx
 00404AA9    call        NextMediumBlock
 00404AAE    mov         ebx,eax
 00404AB0    test        ebx,ebx
>00404AB2    jne         00404A42
 00404AB4    mov         edi,dword ptr [edi+4]
 00404AB7    cmp         edi,7C5A5C
>00404ABD    jne         00404A35
 00404AC3    mov         ebx,dword ptr ds:[7C7B04]
>00404AC9    jmp         00404B02
 00404ACB    mov         eax,ebx
 00404ACD    add         eax,10
 00404AD0    call        SysUnregisterExpectedMemoryLeak
 00404AD5    test        al,al
>00404AD7    jne         00404AFF
 00404AD9    mov         byte ptr [ebp-1B801],0
 00404AE0    mov         esi,dword ptr [ebx+0C]
 00404AE3    and         esi,0FFFFFFF0
 00404AE6    sub         esi,4
 00404AE9    sub         esi,10
 00404AEC    mov         eax,dword ptr [ebp-1B808]
 00404AF2    mov         dword ptr [ebp+eax*4-1F824],esi
 00404AF9    inc         dword ptr [ebp-1B808]
 00404AFF    mov         ebx,dword ptr [ebx+4]
 00404B02    cmp         ebx,7C7B00
>00404B08    je          00404B16
 00404B0A    cmp         dword ptr [ebp-1B808],1000
>00404B14    jl          00404ACB
 00404B16    cmp         byte ptr [ebp-1B801],0
>00404B1D    jne         00404DC9
 00404B23    mov         byte ptr [ebp-1B809],0
 00404B2A    xor         eax,eax
 00404B2C    mov         dword ptr [ebp-1B818],eax
 00404B32    mov         eax,[0079E054]
 00404B37    call        @PCharLen
 00404B3C    mov         ecx,eax
 00404B3E    lea         edx,[ebp-27824]
 00404B44    mov         eax,[0079E054]
 00404B49    call        AppendStringToBuffer
 00404B4E    mov         ebx,eax
 00404B50    mov         dword ptr [ebp-1B810],37
 00404B5A    mov         dword ptr [ebp-1B820],79E07A
 00404B64    lea         eax,[ebp-1B004]
 00404B6A    mov         dword ptr [ebp-1B824],eax
 00404B70    mov         eax,dword ptr [ebp-1B820]
 00404B76    movzx       eax,word ptr [eax]
 00404B79    sub         eax,4
 00404B7C    mov         dword ptr [ebp-1B81C],eax
 00404B82    mov         byte ptr [ebp-1B80A],0
 00404B89    mov         edi,0FF
 00404B8E    mov         eax,dword ptr [ebp-1B824]
 00404B94    mov         esi,eax
 00404B96    lea         eax,[ebp-20025]
 00404B9C    cmp         ebx,eax
>00404B9E    ja          00404CD0
 00404BA4    cmp         dword ptr [esi],0
>00404BA7    jbe         00404CC3
 00404BAD    cmp         byte ptr [ebp-1B809],0
>00404BB4    jne         00404BD7
 00404BB6    mov         eax,[0079E058]
 00404BBB    call        @PCharLen
 00404BC0    mov         ecx,eax
 00404BC2    mov         edx,ebx
 00404BC4    mov         eax,[0079E058]
 00404BC9    call        AppendStringToBuffer
 00404BCE    mov         ebx,eax
 00404BD0    mov         byte ptr [ebp-1B809],1
 00404BD7    cmp         byte ptr [ebp-1B80A],0
>00404BDE    jne         00404C36
 00404BE0    mov         byte ptr [ebx],0D
 00404BE3    inc         ebx
 00404BE4    mov         byte ptr [ebx],0A
 00404BE7    inc         ebx
 00404BE8    mov         eax,dword ptr [ebp-1B818]
 00404BEE    inc         eax
 00404BEF    mov         edx,ebx
 00404BF1    call        NativeUIntToStrBuf
 00404BF6    mov         ebx,eax
 00404BF8    mov         byte ptr [ebx],20
 00404BFB    inc         ebx
 00404BFC    mov         byte ptr [ebx],2D
 00404BFF    inc         ebx
 00404C00    mov         byte ptr [ebx],20
 00404C03    inc         ebx
 00404C04    mov         edx,ebx
 00404C06    mov         eax,dword ptr [ebp-1B81C]
 00404C0C    call        NativeUIntToStrBuf
 00404C11    mov         ebx,eax
 00404C13    mov         eax,[0079E060]
 00404C18    call        @PCharLen
 00404C1D    mov         ecx,eax
 00404C1F    mov         edx,ebx
 00404C21    mov         eax,[0079E060]
 00404C26    call        AppendStringToBuffer
 00404C2B    mov         ebx,eax
 00404C2D    mov         byte ptr [ebp-1B80A],1
>00404C34    jmp         00404C3E
 00404C36    mov         byte ptr [ebx],2C
 00404C39    inc         ebx
 00404C3A    mov         byte ptr [ebx],20
 00404C3D    inc         ebx
 00404C3E    mov         eax,edi
 00404C40    sub         eax,1
>00404C43    jb          00404C4C
>00404C45    je          00404C68
 00404C47    dec         eax
>00404C48    je          00404C84
>00404C4A    jmp         00404CA0
 00404C4C    mov         eax,[0079E064]
 00404C51    call        @PCharLen
 00404C56    mov         ecx,eax
 00404C58    mov         edx,ebx
 00404C5A    mov         eax,[0079E064]
 00404C5F    call        AppendStringToBuffer
 00404C64    mov         ebx,eax
>00404C66    jmp         00404CAC
 00404C68    mov         eax,[0079E068]
 00404C6D    call        @PCharLen
 00404C72    mov         ecx,eax
 00404C74    mov         edx,ebx
 00404C76    mov         eax,[0079E068]
 00404C7B    call        AppendStringToBuffer
 00404C80    mov         ebx,eax
>00404C82    jmp         00404CAC
 00404C84    mov         eax,[0079E06C]
 00404C89    call        @PCharLen
 00404C8E    mov         ecx,eax
 00404C90    mov         edx,ebx
 00404C92    mov         eax,[0079E06C]
 00404C97    call        AppendStringToBuffer
 00404C9C    mov         ebx,eax
>00404C9E    jmp         00404CAC
 00404CA0    mov         eax,dword ptr [esi-4]
 00404CA3    mov         edx,ebx
 00404CA5    call        AppendClassNameToBuffer
 00404CAA    mov         ebx,eax
 00404CAC    mov         byte ptr [ebx],20
 00404CAF    inc         ebx
 00404CB0    mov         byte ptr [ebx],78
 00404CB3    inc         ebx
 00404CB4    mov         byte ptr [ebx],20
 00404CB7    inc         ebx
 00404CB8    mov         eax,dword ptr [esi]
 00404CBA    mov         edx,ebx
 00404CBC    call        NativeUIntToStrBuf
 00404CC1    mov         ebx,eax
 00404CC3    dec         edi
 00404CC4    sub         esi,8
 00404CC7    cmp         edi,0FFFFFFFF
>00404CCA    jne         00404B96
 00404CD0    cmp         byte ptr [ebp-1B80A],0
>00404CD7    jne         00404CEF
 00404CD9    cmp         byte ptr ds:[7C5A5A],0
>00404CE0    je          00404CEF
 00404CE2    mov         eax,dword ptr [ebp-1B81C]
 00404CE8    add         eax,4
 00404CEB    test        al,0F
>00404CED    jne         00404CFB
 00404CEF    mov         eax,dword ptr [ebp-1B81C]
 00404CF5    mov         dword ptr [ebp-1B818],eax
 00404CFB    add         dword ptr [ebp-1B824],800
 00404D05    add         dword ptr [ebp-1B820],20
 00404D0C    dec         dword ptr [ebp-1B810]
>00404D12    jne         00404B70
 00404D18    cmp         dword ptr [ebp-1B808],0
>00404D1F    jle         00404DA0
 00404D21    cmp         byte ptr [ebp-1B809],0
>00404D28    je          00404D3A
 00404D2A    mov         byte ptr [ebx],0D
 00404D2D    inc         ebx
 00404D2E    mov         byte ptr [ebx],0A
 00404D31    inc         ebx
 00404D32    mov         byte ptr [ebx],0D
 00404D35    inc         ebx
 00404D36    mov         byte ptr [ebx],0A
 00404D39    inc         ebx
 00404D3A    mov         eax,[0079E05C]
 00404D3F    call        @PCharLen
 00404D44    mov         ecx,eax
 00404D46    mov         edx,ebx
 00404D48    mov         eax,[0079E05C]
 00404D4D    call        AppendStringToBuffer
 00404D52    mov         ebx,eax
 00404D54    mov         esi,dword ptr [ebp-1B808]
 00404D5A    dec         esi
 00404D5B    test        esi,esi
>00404D5D    jb          00404DA0
 00404D5F    inc         esi
 00404D60    xor         edi,edi
 00404D62    lea         eax,[ebp-1F824]
 00404D68    mov         dword ptr [ebp-1B824],eax
 00404D6E    test        edi,edi
>00404D70    je          00404D7A
 00404D72    mov         byte ptr [ebx],2C
 00404D75    inc         ebx
 00404D76    mov         byte ptr [ebx],20
 00404D79    inc         ebx
 00404D7A    mov         eax,dword ptr [ebp-1B824]
 00404D80    mov         eax,dword ptr [eax]
 00404D82    mov         edx,ebx
 00404D84    call        NativeUIntToStrBuf
 00404D89    mov         ebx,eax
 00404D8B    lea         eax,[ebp-20025]
 00404D91    cmp         ebx,eax
>00404D93    ja          00404DA0
 00404D95    inc         edi
 00404D96    add         dword ptr [ebp-1B824],4
 00404D9D    dec         esi
>00404D9E    jne         00404D6E
 00404DA0    mov         eax,[0079E070];^gvar_00403598
 00404DA5    call        @PCharLen
 00404DAA    mov         ecx,eax
 00404DAC    mov         edx,ebx
 00404DAE    mov         eax,[0079E070];^gvar_00403598
 00404DB3    call        AppendStringToBuffer
 00404DB8    lea         eax,[ebp-27824]
 00404DBE    mov         edx,dword ptr ds:[79E074]
 00404DC4    call        00404430
 00404DC9    pop         edi
 00404DCA    pop         esi
 00404DCB    pop         ebx
 00404DCC    mov         esp,ebp
 00404DCE    pop         ebp
 00404DCF    ret
*}
end;

//00404DD0
procedure BuildBlockTypeLookupTable;
begin
{*
 00404DD0    push        esi
 00404DD1    push        edi
 00404DD2    xor         eax,eax
 00404DD4    xor         esi,esi
 00404DD6    mov         edx,79E07A
 00404DDB    cmp         byte ptr ds:[7C5A5A],0
>00404DE2    je          00404DE9
 00404DE4    test        byte ptr [edx],0F
>00404DE7    jne         00404E06
 00404DE9    movzx       edi,word ptr [edx]
 00404DEC    shr         edi,3
 00404DEF    mov         ecx,esi
 00404DF1    add         ecx,ecx
 00404DF3    add         ecx,ecx
 00404DF5    cmp         edi,eax
>00404DF7    jbe         00404E04
 00404DF9    mov         byte ptr [eax+7C5914],cl
 00404DFF    inc         eax
 00404E00    cmp         edi,eax
>00404E02    ja          00404DF9
 00404E04    mov         eax,edi
 00404E06    inc         esi
 00404E07    add         edx,20
 00404E0A    cmp         esi,37
>00404E0D    jne         00404DDB
 00404E0F    pop         edi
 00404E10    pop         esi
 00404E11    ret
*}
end;

//00404E14
procedure InitializeMemoryManager;
begin
{*
 00404E14    push        ebx
 00404E15    push        esi
 00404E16    push        edi
 00404E17    mov         esi,37
 00404E1C    mov         ebx,79E094;^Move12
 00404E21    cmp         dword ptr [ebx],0
>00404E24    jne         00404E2C
 00404E26    mov         dword ptr [ebx],4036F4;MoveX16LP
 00404E2C    lea         eax,[ebx-1C]
 00404E2F    mov         dword ptr [ebx-10],eax
 00404E32    lea         eax,[ebx-1C]
 00404E35    mov         dword ptr [ebx-14],eax
 00404E38    xor         eax,eax
 00404E3A    mov         dword ptr [ebx-8],eax
 00404E3D    mov         dword ptr [ebx-0C],1
 00404E44    movzx       eax,word ptr [ebx-1A]
 00404E48    add         eax,eax
 00404E4A    add         eax,eax
 00404E4C    lea         eax,[eax+eax*2]
 00404E4F    add         eax,0EF
 00404E54    and         eax,0FFFFFF00
 00404E59    add         eax,30
 00404E5C    cmp         eax,0B30
>00404E61    jae         00404E68
 00404E63    mov         eax,0B30
 00404E68    add         eax,4D0
 00404E6D    shr         eax,0D
 00404E70    cmp         eax,7
>00404E73    jbe         00404E7A
 00404E75    mov         eax,7
 00404E7A    mov         ecx,eax
 00404E7C    mov         edx,0FF
 00404E81    shl         edx,cl
 00404E83    mov         byte ptr [ebx-1B],dl
 00404E86    shl         eax,0D
 00404E89    add         ax,0B30
 00404E8D    mov         word ptr [ebx-18],ax
 00404E91    movzx       edi,word ptr [ebx-1A]
 00404E95    movzx       eax,di
 00404E98    mov         ecx,eax
 00404E9A    shl         ecx,4
 00404E9D    lea         ecx,[ecx+ecx*2]
 00404EA0    add         ecx,0EF
 00404EA6    and         ecx,0FFFFFF00
 00404EAC    add         ecx,30
 00404EAF    cmp         ecx,7330
>00404EB5    jae         00404EBC
 00404EB7    mov         ecx,7330
 00404EBC    cmp         ecx,0FF30
>00404EC2    jbe         00404EC9
 00404EC4    mov         ecx,0FF30
 00404EC9    mov         eax,ecx
 00404ECB    sub         eax,20
 00404ECE    movzx       edx,di
 00404ED1    mov         ecx,edx
 00404ED3    xor         edx,edx
 00404ED5    div         eax,ecx
 00404ED7    imul        di
 00404EDA    add         ax,0EF
 00404EDE    and         ax,0FF00
 00404EE2    add         ax,30
 00404EE6    mov         word ptr [ebx-16],ax
 00404EEA    add         ebx,20
 00404EED    dec         esi
>00404EEE    jne         00404E21
 00404EF4    call        BuildBlockTypeLookupTable
 00404EF9    mov         dword ptr ds:[7C5A5C],7C5A5C
 00404F03    mov         dword ptr ds:[7C5A60],7C5A5C
 00404F0D    mov         esi,400
 00404F12    mov         edx,7C5AFC
 00404F17    mov         eax,edx
 00404F19    mov         dword ptr [eax],eax
 00404F1B    mov         dword ptr [eax+4],eax
 00404F1E    add         edx,8
 00404F21    dec         esi
>00404F22    jne         00404F17
 00404F24    mov         dword ptr ds:[7C7B00],7C7B00
 00404F2E    mov         dword ptr ds:[7C7B04],7C7B00
 00404F38    pop         edi
 00404F39    pop         esi
 00404F3A    pop         ebx
 00404F3B    ret
*}
end;

//00404F3C
procedure FreeAllMemory;
begin
{*
 00404F3C    push        ebx
 00404F3D    push        esi
 00404F3E    push        edi
 00404F3F    push        ebp
 00404F40    mov         esi,7C5A5C
 00404F45    mov         ebx,7C7B00
 00404F4A    mov         edi,dword ptr [esi+4]
>00404F4D    jmp         00404F61
 00404F4F    mov         ebp,dword ptr [edi+4]
 00404F52    push        8000
 00404F57    push        0
 00404F59    push        edi
 00404F5A    call        kernel32.VirtualFree
 00404F5F    mov         edi,ebp
 00404F61    cmp         edi,esi
>00404F63    jne         00404F4F
 00404F65    mov         edx,37
 00404F6A    mov         eax,79E078
 00404F6F    mov         ecx,eax
 00404F71    mov         dword ptr [eax+0C],ecx
 00404F74    mov         ecx,eax
 00404F76    mov         dword ptr [eax+8],ecx
 00404F79    mov         dword ptr [eax+10],1
 00404F80    xor         ecx,ecx
 00404F82    mov         dword ptr [eax+14],ecx
 00404F85    add         eax,20
 00404F88    dec         edx
>00404F89    jne         00404F6F
 00404F8B    mov         dword ptr [esi],esi
 00404F8D    mov         dword ptr [esi+4],esi
 00404F90    mov         edx,400
 00404F95    mov         ecx,7C5AFC
 00404F9A    mov         eax,ecx
 00404F9C    mov         dword ptr [eax],eax
 00404F9E    mov         dword ptr [eax+4],eax
 00404FA1    add         ecx,8
 00404FA4    dec         edx
>00404FA5    jne         00404F9A
 00404FA7    xor         eax,eax
 00404FA9    mov         [007C5A78],eax
 00404FAE    mov         eax,7C5A7C
 00404FB3    xor         ecx,ecx
 00404FB5    mov         edx,80
 00404FBA    call        @FillChar
 00404FBF    xor         eax,eax
 00404FC1    mov         [007C5A74],eax
 00404FC6    mov         esi,dword ptr [ebx+4]
>00404FC9    jmp         00404FDD
 00404FCB    mov         edi,dword ptr [esi+4]
 00404FCE    push        8000
 00404FD3    push        0
 00404FD5    push        esi
 00404FD6    call        kernel32.VirtualFree
 00404FDB    mov         esi,edi
 00404FDD    cmp         esi,ebx
>00404FDF    jne         00404FCB
 00404FE1    mov         dword ptr [ebx],ebx
 00404FE3    mov         dword ptr [ebx+4],ebx
 00404FE6    pop         ebp
 00404FE7    pop         edi
 00404FE8    pop         esi
 00404FE9    pop         ebx
 00404FEA    ret
*}
end;

//00404FEC
procedure FinalizeMemoryManager;
begin
{*
 00404FEC    cmp         dword ptr ds:[7C7B18],0
>00404FF3    je          00405007
 00404FF5    mov         eax,[007C7B18]
 00404FFA    push        eax
 00404FFB    call        kernel32.CloseHandle
 00405000    xor         eax,eax
 00405002    mov         [007C7B18],eax
 00405007    cmp         byte ptr ds:[7C590C],0
>0040500E    je          00405015
 00405010    call        ScanForMemoryLeaks
 00405015    cmp         dword ptr ds:[7C7B10],0
>0040501C    je          00405037
 0040501E    push        8000
 00405023    push        0
 00405025    mov         eax,[007C7B10]
 0040502A    push        eax
 0040502B    call        kernel32.VirtualFree
 00405030    xor         eax,eax
 00405032    mov         [007C7B10],eax
 00405037    call        FreeAllMemory
 0040503C    ret
*}
end;

//00405040
function AllocMem(Size:NativeInt):Pointer;
begin
{*
 00405040    test        eax,eax
>00405042    je          0040504E
 00405044    call        dword ptr ds:[79E764]
 0040504A    test        eax,eax
>0040504C    je          00405050
 0040504E    rep ret
 00405050    mov         al,1
>00405052    jmp         Error
 00405057    ret
*}
end;

//00405058
function @GetMem(size:Integer):Pointer;
begin
{*
 00405058    test        eax,eax
>0040505A    jle         0040506F
 0040505C    call        dword ptr ds:[79E758]
 00405062    test        eax,eax
>00405064    je          00405068
 00405066    rep ret
 00405068    mov         al,1
>0040506A    jmp         Error
 0040506F    xor         eax,eax
 00405071    rep ret
*}
end;

//00405074
function @FreeMem(p:Pointer):Integer;
begin
{*
 00405074    test        eax,eax
>00405076    je          00405082
 00405078    call        dword ptr ds:[79E75C]
 0040507E    test        eax,eax
>00405080    jne         00405084
 00405082    rep ret
 00405084    mov         al,2
>00405086    jmp         Error
 0040508B    ret
*}
end;

//0040508C
function @ReallocMem(var P:Pointer; NewSize:Integer):Pointer;
begin
{*
 0040508C    mov         ecx,dword ptr [eax]
 0040508E    test        ecx,ecx
>00405090    je          004050C4
 00405092    test        edx,edx
>00405094    je          004050AE
 00405096    push        eax
 00405097    mov         eax,ecx
 00405099    call        dword ptr ds:[79E760]
 0040509F    pop         ecx
 004050A0    or          eax,eax
>004050A2    je          004050BD
 004050A4    mov         dword ptr [ecx],eax
 004050A6    ret
 004050A7    mov         al,2
>004050A9    jmp         Error
 004050AE    mov         dword ptr [eax],edx
 004050B0    mov         eax,ecx
 004050B2    call        dword ptr ds:[79E75C]
 004050B8    or          eax,eax
>004050BA    jne         004050A7
 004050BC    ret
 004050BD    mov         al,1
>004050BF    jmp         Error
 004050C4    test        edx,edx
>004050C6    je          004050D8
 004050C8    push        eax
 004050C9    mov         eax,edx
 004050CB    call        dword ptr ds:[79E758]
 004050D1    pop         ecx
 004050D2    or          eax,eax
>004050D4    je          004050BD
 004050D6    mov         dword ptr [ecx],eax
 004050D8    ret
*}
end;

//004050DC
function ExceptObject:TObject;
begin
{*
 004050DC    call        @GetTls
 004050E1    cmp         dword ptr [eax+0],0;{RaiseListPtr:Pointer}
>004050E8    je          004050F9
 004050EA    call        @GetTls
 004050EF    mov         eax,dword ptr [eax+0];{RaiseListPtr:Pointer}
 004050F5    mov         eax,dword ptr [eax+8]
 004050F8    ret
 004050F9    xor         eax,eax
 004050FB    ret
*}
end;

//004050FC
function ExceptAddr:Pointer;
begin
{*
 004050FC    call        @GetTls
 00405101    cmp         dword ptr [eax+0],0;{RaiseListPtr:Pointer}
>00405108    je          00405119
 0040510A    call        @GetTls
 0040510F    mov         eax,dword ptr [eax+0];{RaiseListPtr:Pointer}
 00405115    mov         eax,dword ptr [eax+4]
 00405118    ret
 00405119    xor         eax,eax
 0040511B    ret
*}
end;

//0040511C
function AcquireExceptionObject:Pointer;
begin
{*
 0040511C    push        ebx
 0040511D    call        @GetTls
 00405122    mov         eax,dword ptr [eax+0];{RaiseListPtr:Pointer}
 00405128    test        eax,eax
>0040512A    je          00405147
 0040512C    mov         ebx,dword ptr [eax+8]
 0040512F    xor         edx,edx
 00405131    mov         dword ptr [eax+8],edx
 00405134    cmp         dword ptr ds:[7C5028],0
>0040513B    je          00405149
 0040513D    mov         eax,ebx
 0040513F    call        dword ptr ds:[7C5028]
>00405145    jmp         00405149
 00405147    xor         ebx,ebx
 00405149    mov         eax,ebx
 0040514B    pop         ebx
 0040514C    ret
*}
end;

//00405150
function RaiseList:Pointer;
begin
{*
 00405150    call        @GetTls
 00405155    mov         eax,dword ptr [eax+0];{RaiseListPtr:Pointer}
 0040515B    ret
*}
end;

//0040515C
procedure RunErrorAt(ErrCode:Integer; ErrorAtAddr:Pointer);
begin
{*
 0040515C    mov         dword ptr ds:[79E004],edx
 00405162    call        @Halt
 00405167    ret
*}
end;

//00405168
procedure ErrorAt(ErrorCode:Byte; ErrorAddr:Pointer);
begin
{*
 00405168    push        ebx
 00405169    push        esi
 0040516A    mov         esi,edx
 0040516C    mov         ebx,eax
 0040516E    and         bl,7F
 00405171    cmp         dword ptr ds:[7C5010],0;gvar_007C5010
>00405178    je          00405184
 0040517A    mov         edx,esi
 0040517C    mov         eax,ebx
 0040517E    call        dword ptr ds:[7C5010]
 00405184    test        bl,bl
>00405186    jne         00405195
 00405188    call        @GetTls
 0040518D    mov         ebx,dword ptr [eax+4];{InOutRes:Integer}
>00405193    jmp         004051A4
 00405195    cmp         bl,1C
>00405198    ja          004051A4
 0040519A    movzx       eax,bl
 0040519D    movzx       ebx,byte ptr [eax+79E770]
 004051A4    movzx       eax,bl
 004051A7    mov         edx,esi
 004051A9    call        RunErrorAt
 004051AE    pop         esi
 004051AF    pop         ebx
 004051B0    ret
*}
end;

//004051B4
procedure Error(errorCode:TRuntimeError);
begin
{*
 004051B4    push        ebp
 004051B5    mov         ebp,esp
 004051B7    push        ecx
 004051B8    mov         byte ptr [ebp-1],al
 004051BB    mov         edx,dword ptr [ebp+4]
 004051BE    movzx       eax,byte ptr [ebp-1]
 004051C2    call        ErrorAt
 004051C7    pop         ecx
 004051C8    pop         ebp
 004051C9    ret
*}
end;

//004051CC
procedure @_IOTest;
begin
{*
 004051CC    push        eax
 004051CD    push        edx
 004051CE    push        ecx
 004051CF    call        @GetTls
 004051D4    cmp         dword ptr [eax+4],0;{InOutRes:Integer}
 004051DB    pop         ecx
 004051DC    pop         edx
 004051DD    pop         eax
>004051DE    jne         004051E1
 004051E0    ret
 004051E1    xor         eax,eax
>004051E3    jmp         Error
 004051E8    ret
*}
end;

//004051EC
procedure SetInOutRes(NewValue:Integer);
begin
{*
 004051EC    push        ebx
 004051ED    mov         ebx,eax
 004051EF    call        @GetTls
 004051F4    mov         dword ptr [eax+4],ebx;{InOutRes:Integer}
 004051FA    pop         ebx
 004051FB    ret
*}
end;

//004051FC
function IOResult:Integer;
begin
{*
 004051FC    push        ebx
 004051FD    call        @GetTls
 00405202    mov         ebx,dword ptr [eax+4];{InOutRes:Integer}
 00405208    call        @GetTls
 0040520D    xor         edx,edx
 0040520F    mov         dword ptr [eax+4],edx;{InOutRes:Integer}
 00405215    mov         eax,ebx
 00405217    pop         ebx
 00405218    ret
*}
end;

//0040521C
procedure Move(const Source:void ; var Dest:void ; Count:NativeInt);
begin
{*
 0040521C    cmp         eax,edx
>0040521E    je          00405251
 00405220    cmp         ecx,20
>00405223    ja          004052A1
 00405225    sub         ecx,8
>00405228    jg          00405231
 0040522A    jmp         dword ptr [ecx*4+405274]
 00405231    fild        qword ptr [ecx+eax]
 00405234    fild        qword ptr [eax]
 00405236    cmp         ecx,8
>00405239    jle         0040524C
 0040523B    fild        qword ptr [eax+8]
 0040523E    cmp         ecx,10
>00405241    jle         00405249
 00405243    fild        qword ptr [eax+10]
 00405246    fistp       qword ptr [edx+10]
 00405249    fistp       qword ptr [edx+8]
 0040524C    fistp       qword ptr [edx]
 0040524E    fistp       qword ptr [ecx+edx]
 00405251    ret
 00405252    nop
 00405253    nop
 00405254    push        ecx
 00405255    push        edx
 00405256    inc         eax
 00405257    add         dl,dl
 00405259    push        edx
 0040525A    inc         eax
 0040525B    add         al,bl
 0040525D    push        edx
 0040525E    inc         eax
 0040525F    add         bh,bl
 00405261    push        edx
 00405262    inc         eax
 00405263    add         ah,ch
 00405265    push        edx
 00405266    inc         eax
 00405267    add         cl,dh
 00405269    push        edx
 0040526A    inc         eax
 0040526B    add         ah,bh
 0040526D    push        edx
 0040526E    inc         eax
 0040526F    add         byte ptr [ecx],cl
 00405271    push        ebx
 00405272    inc         eax
 00405273    add         byte ptr [ebx+edx*2],dl
 00405276    inc         eax
 00405277    add         byte ptr [edx-21],dl
 0040527A    sub         byte ptr [ebp-7207FEBC],cl
 00405280    dec         esp
 00405281    or          bh,al
 00405283    fild        qword ptr [eax]
 00405285    push        ecx
 00405286    neg         ecx
 00405288    and         edx,0FFFFFFF8
 0040528B    lea         ecx,[edx+ecx+8]
 0040528F    pop         edx
 00405290    fild        qword ptr [ecx+eax]
 00405293    fistp       qword ptr [ecx+edx]
 00405296    add         ecx,8
>00405299    jl          00405290
 0040529B    fistp       qword ptr [edx]
 0040529D    pop         edx
 0040529E    fistp       qword ptr [edx]
 004052A0    ret
>004052A1    jle         004052D1
 004052A3    cmp         eax,edx
>004052A5    ja          00405278
 004052A7    sub         edx,ecx
 004052A9    cmp         eax,edx
 004052AB    lea         edx,[ecx+edx]
>004052AE    jbe         00405278
 004052B0    sub         ecx,8
 004052B3    push        ecx
 004052B4    fild        qword ptr [ecx+eax]
 004052B7    fild        qword ptr [eax]
 004052B9    add         ecx,edx
 004052BB    and         ecx,0FFFFFFF8
 004052BE    sub         ecx,edx
 004052C0    fild        qword ptr [ecx+eax]
 004052C3    fistp       qword ptr [ecx+edx]
 004052C6    sub         ecx,8
>004052C9    jg          004052C0
 004052CB    pop         ecx
 004052CC    fistp       qword ptr [edx]
 004052CE    fistp       qword ptr [ecx+edx]
 004052D1    ret
*}
end;

//0040531C
function GetParamStr(P:PWideChar; var Param:AnsiString):PWideChar;
begin
{*
 0040531C    push        ebx
 0040531D    push        esi
 0040531E    push        edi
 0040531F    push        ebp
 00405320    mov         ebx,edx
>00405322    jmp         00405327
 00405324    add         eax,2
 00405327    movzx       edx,word ptr [eax]
 0040532A    test        dx,dx
>0040532D    je          00405335
 0040532F    cmp         dx,20
>00405333    jbe         00405324
 00405335    cmp         word ptr [eax],22
>00405339    jne         00405347
 0040533B    cmp         word ptr [eax+2],22
>00405340    jne         00405347
 00405342    add         eax,4
>00405345    jmp         00405327
 00405347    xor         edi,edi
 00405349    mov         esi,eax
>0040534B    jmp         00405379
 0040534D    cmp         bp,22
>00405351    jne         00405375
 00405353    add         eax,2
>00405356    jmp         0040535C
 00405358    inc         edi
 00405359    add         eax,2
 0040535C    movzx       edx,word ptr [eax]
 0040535F    test        dx,dx
>00405362    je          0040536A
 00405364    cmp         dx,22
>00405368    jne         00405358
 0040536A    cmp         word ptr [eax],0
>0040536E    je          00405379
 00405370    add         eax,2
>00405373    jmp         00405379
 00405375    inc         edi
 00405376    add         eax,2
 00405379    movzx       ebp,word ptr [eax]
 0040537C    cmp         bp,20
>00405380    ja          0040534D
 00405382    mov         eax,ebx
 00405384    mov         edx,edi
 00405386    call        @UStrSetLength
 0040538B    mov         eax,esi
 0040538D    mov         esi,dword ptr [ebx]
 0040538F    xor         ecx,ecx
>00405391    jmp         004053C7
 00405393    cmp         di,22
>00405397    jne         004053BF
 00405399    add         eax,2
>0040539C    jmp         004053A6
 0040539E    mov         word ptr [esi+ecx*2],dx
 004053A2    add         eax,2
 004053A5    inc         ecx
 004053A6    movzx       edx,word ptr [eax]
 004053A9    test        dx,dx
>004053AC    je          004053B4
 004053AE    cmp         dx,22
>004053B2    jne         0040539E
 004053B4    cmp         word ptr [eax],0
>004053B8    je          004053C7
 004053BA    add         eax,2
>004053BD    jmp         004053C7
 004053BF    mov         word ptr [esi+ecx*2],di
 004053C3    add         eax,2
 004053C6    inc         ecx
 004053C7    movzx       edi,word ptr [eax]
 004053CA    cmp         di,20
>004053CE    ja          00405393
 004053D0    pop         ebp
 004053D1    pop         edi
 004053D2    pop         esi
 004053D3    pop         ebx
 004053D4    ret
*}
end;

//004053D8
function ParamCount:Integer;
begin
{*
 004053D8    push        ebp
 004053D9    mov         ebp,esp
 004053DB    push        0
 004053DD    push        ebx
 004053DE    push        esi
 004053DF    xor         eax,eax
 004053E1    push        ebp
 004053E2    push        405429
 004053E7    push        dword ptr fs:[eax]
 004053EA    mov         dword ptr fs:[eax],esp
 004053ED    xor         esi,esi
 004053EF    call        kernel32.GetCommandLineW
 004053F4    lea         edx,[ebp-4]
 004053F7    call        GetParamStr
 004053FC    mov         ebx,eax
 004053FE    lea         edx,[ebp-4]
 00405401    mov         eax,ebx
 00405403    call        GetParamStr
 00405408    mov         ebx,eax
 0040540A    cmp         dword ptr [ebp-4],0
>0040540E    je          00405413
 00405410    inc         esi
>00405411    jmp         004053FE
 00405413    xor         eax,eax
 00405415    pop         edx
 00405416    pop         ecx
 00405417    pop         ecx
 00405418    mov         dword ptr fs:[eax],edx
 0040541B    push        405430
 00405420    lea         eax,[ebp-4]
 00405423    call        @UStrClr
 00405428    ret
>00405429    jmp         @HandleFinally
>0040542E    jmp         00405420
 00405430    mov         eax,esi
 00405432    pop         esi
 00405433    pop         ebx
 00405434    pop         ecx
 00405435    pop         ebp
 00405436    ret
*}
end;

//00405438
function ParamStr(Index:Integer):string;
begin
{*
 00405438    push        ebx
 00405439    push        esi
 0040543A    push        edi
 0040543B    add         esp,0FFFFFDF4
 00405441    mov         ebx,edx
 00405443    mov         esi,eax
 00405445    mov         eax,ebx
 00405447    call        @UStrClr
 0040544C    test        esi,esi
>0040544E    jne         0040546E
 00405450    push        105
 00405455    lea         eax,[esp+4]
 00405459    push        eax
 0040545A    push        0
 0040545C    call        kernel32.GetModuleFileNameW
 00405461    mov         ecx,eax
 00405463    mov         edx,esp
 00405465    mov         eax,ebx
 00405467    call        @UStrFromPWCharLen
>0040546C    jmp         0040548C
 0040546E    call        kernel32.GetCommandLineW
 00405473    mov         edi,eax
 00405475    mov         edx,ebx
 00405477    mov         eax,edi
 00405479    call        GetParamStr
 0040547E    mov         edi,eax
 00405480    test        esi,esi
>00405482    je          0040548C
 00405484    cmp         dword ptr [ebx],0
>00405487    je          0040548C
 00405489    dec         esi
>0040548A    jmp         00405475
 0040548C    add         esp,20C
 00405492    pop         edi
 00405493    pop         esi
 00405494    pop         ebx
 00405495    ret
*}
end;

//00405498
procedure Randomize;
begin
{*
 00405498    add         esp,0FFFFFFF8
 0040549B    push        esp
 0040549C    call        kernel32.QueryPerformanceCounter
 004054A1    test        eax,eax
>004054A3    je          004054B0
 004054A5    mov         eax,dword ptr [esp]
 004054A8    mov         [0079E008],eax
 004054AD    pop         ecx
 004054AE    pop         edx
 004054AF    ret
 004054B0    call        kernel32.GetTickCount
 004054B5    mov         [0079E008],eax
 004054BA    pop         ecx
 004054BB    pop         edx
 004054BC    ret
*}
end;

//004054C0
procedure Reset8087CW;
begin
{*
 004054C0    movzx       eax,word ptr ds:[79E028]
 004054C7    call        Set8087CW
 004054CC    ret
*}
end;

//004054D0
procedure Set8087CW(NewCW:Word);
begin
{*
 004054D0    mov         [0079E028],ax
 004054D6    fnclex
 004054D8    fldcw       word ptr ds:[79E028]
 004054DE    ret
*}
end;

//004054E0
function Get8087CW:Word;
begin
{*
 004054E0    push        0
 004054E2    fnstcw      word ptr [esp]
 004054E5    pop         eax
 004054E6    ret
*}
end;

//004054E8
function GetMXCSR:Cardinal;
begin
{*
 004054E8    xor         eax,eax
 004054EA    cmp         dword ptr ds:[7C5060],eax;gvar_007C5060
>004054F0    je          004054F8
 004054F2    push        eax
 004054F3    ???
 004054F4    scas        byte ptr [edi]
 004054F5    sbb         al,24
 004054F7    pop         eax
 004054F8    ret
*}
end;

//004054FC
constructor sub_004054FC(AFlag:Integer; AData:string);
begin
{*
 004054FC    push        ebp
 004054FD    mov         ebp,esp
 004054FF    test        dl,dl
>00405501    je          0040550B
 00405503    add         esp,0FFFFFFF0
 00405506    call        @ClassCreate
 0040550B    test        dl,dl
>0040550D    je          0040551E
 0040550F    call        @AfterConstruction
 00405514    pop         dword ptr fs:[0]
 0040551B    add         esp,0C
 0040551E    pop         ebp
 0040551F    ret         4
*}
end;

//00405524
procedure @ROUND;
begin
{*
 00405524    sub         esp,0C
 00405527    fistp       qword ptr [esp+4]
 0040552B    wait
 0040552C    pop         ecx
 0040552D    pop         eax
 0040552E    pop         edx
 0040552F    ret
*}
end;

//00405530
function @TRUNC(X:Extended):Int64;
begin
{*
 00405530    sub         esp,0C
 00405533    fnstcw      word ptr [esp]
 00405536    fnstcw      word ptr [esp+2]
 0040553A    wait
 0040553B    or          word ptr [esp+2],0F00
 00405542    fldcw       word ptr [esp+2]
 00405546    fistp       qword ptr [esp+4]
 0040554A    wait
 0040554B    fldcw       word ptr [esp]
 0040554E    pop         ecx
 0040554F    pop         eax
 00405550    pop         edx
 00405551    ret
*}
end;

//00405554
procedure @AbstractError;
begin
{*
 00405554    push        ebp
 00405555    mov         ebp,esp
 00405557    cmp         dword ptr ds:[7C503C],0;gvar_007C503C
>0040555E    je          00405566
 00405560    call        dword ptr ds:[7C503C]
 00405566    mov         edx,dword ptr [ebp+4]
 00405569    mov         eax,0D2
 0040556E    call        RunErrorAt
 00405573    pop         ebp
 00405574    ret
*}
end;

//00405578
procedure @_FlushMBCSBuffer(var t:TTextRec);
begin
{*
 00405578    mov         byte ptr [eax+2D2],0
 0040557F    mov         byte ptr [eax+2D3],0
 00405586    ret
*}
end;

//00405588
function OpenText(var t:TTextRec; Mode:Word):Integer;
begin
{*
 00405588    push        ebx
 00405589    push        esi
 0040558A    mov         esi,edx
 0040558C    mov         ebx,eax
 0040558E    movzx       eax,word ptr [ebx+4]
 00405592    cmp         ax,0D7B0
>00405596    jb          0040559E
 00405598    cmp         ax,0D7B3
>0040559C    jbe         004055A5
 0040559E    mov         ebx,66
>004055A3    jmp         004055DA
 004055A5    mov         eax,ebx
 004055A7    call        @_FlushMBCSBuffer
 004055AC    cmp         word ptr [ebx+4],0D7B0
>004055B2    je          004055BB
 004055B4    mov         eax,ebx
 004055B6    call        @Close
 004055BB    mov         word ptr [ebx+4],si
 004055BF    cmp         word ptr [ebx+48],0
>004055C4    jne         004055D3
 004055C6    cmp         dword ptr [ebx+18],0
>004055CA    jne         004055D3
 004055CC    mov         dword ptr [ebx+18],4056C0;TextOpen:Integer
 004055D3    mov         eax,ebx
 004055D5    call        dword ptr [ebx+18]
 004055D8    mov         ebx,eax
 004055DA    test        ebx,ebx
>004055DC    je          004055E5
 004055DE    mov         eax,ebx
 004055E0    call        SetInOutRes
 004055E5    mov         eax,ebx
 004055E7    pop         esi
 004055E8    pop         ebx
 004055E9    ret
*}
end;

//004055EC
function @ResetText(var T:TTextRec):Integer;
begin
{*
 004055EC    mov         dx,0D7B1
 004055F0    call        OpenText
 004055F5    ret
*}
end;

//004055F8
function TextIn(var t:TTextRec):Integer;
begin
{*
 004055F8    push        ebx
 004055F9    mov         ebx,eax
 004055FB    xor         eax,eax
 004055FD    mov         dword ptr [ebx+10],eax
 00405600    xor         eax,eax
 00405602    mov         dword ptr [ebx+0C],eax
 00405605    push        0
 00405607    lea         eax,[ebx+10]
 0040560A    push        eax
 0040560B    mov         eax,dword ptr [ebx+8]
 0040560E    push        eax
 0040560F    mov         eax,dword ptr [ebx+14]
 00405612    push        eax
 00405613    mov         eax,dword ptr [ebx]
 00405615    push        eax
 00405616    call        kernel32.ReadFile
 0040561B    test        eax,eax
>0040561D    jne         0040562D
 0040561F    call        kernel32.GetLastError
 00405624    cmp         eax,6D
>00405627    jne         0040562F
 00405629    xor         eax,eax
 0040562B    pop         ebx
 0040562C    ret
 0040562D    xor         eax,eax
 0040562F    pop         ebx
 00405630    ret
*}
end;

//00405634
function FileNOPProc(var t:void ):Integer;
begin
{*
 00405634    xor         eax,eax
 00405636    ret
*}
end;

//00405638
function TextOut(var t:TTextRec):Integer;
begin
{*
 00405638    push        ebx
 00405639    push        esi
 0040563A    push        ecx
 0040563B    mov         ebx,eax
 0040563D    mov         esi,dword ptr [ebx+0C]
 00405640    test        esi,esi
>00405642    jne         00405648
 00405644    xor         eax,eax
>00405646    jmp         0040566E
 00405648    push        0
 0040564A    lea         eax,[esp+4]
 0040564E    push        eax
 0040564F    push        esi
 00405650    mov         eax,dword ptr [ebx+14]
 00405653    push        eax
 00405654    mov         eax,dword ptr [ebx]
 00405656    push        eax
 00405657    call        kernel32.WriteFile
 0040565C    test        eax,eax
>0040565E    jne         00405667
 00405660    call        kernel32.GetLastError
>00405665    jmp         00405669
 00405667    xor         eax,eax
 00405669    xor         edx,edx
 0040566B    mov         dword ptr [ebx+0C],edx
 0040566E    pop         edx
 0040566F    pop         esi
 00405670    pop         ebx
 00405671    ret
*}
end;

//00405674
function InternalClose(Handle:NativeUInt):Boolean;
begin
{*
 00405674    push        ebx
 00405675    mov         ebx,eax
 00405677    push        ebx
 00405678    call        kernel32.CloseHandle
 0040567D    cmp         eax,1
 00405680    sbb         eax,eax
 00405682    inc         eax
 00405683    pop         ebx
 00405684    ret
*}
end;

//00405688
function TextClose(var t:TTextRec):Integer;
begin
{*
 00405688    push        ebx
 00405689    mov         ebx,eax
 0040568B    mov         word ptr [ebx+4],0D7B0
 00405691    mov         eax,dword ptr [ebx]
 00405693    call        InternalClose
 00405698    test        al,al
>0040569A    jne         004056A3
 0040569C    call        kernel32.GetLastError
 004056A1    pop         ebx
 004056A2    ret
 004056A3    xor         eax,eax
 004056A5    pop         ebx
 004056A6    ret
*}
end;

//004056A8
function TextOpenCleanup(var t:TTextRec):Integer;
begin
{*
 004056A8    push        ebx
 004056A9    mov         ebx,eax
 004056AB    mov         eax,dword ptr [ebx]
 004056AD    call        InternalClose
 004056B2    mov         word ptr [ebx+4],0D7B0
 004056B8    call        kernel32.GetLastError
 004056BD    pop         ebx
 004056BE    ret
*}
end;

//004056C0
function TextOpen(var t:TTextRec):Integer;
begin
{*
 004056C0    push        ebx
 004056C1    push        esi
 004056C2    push        edi
 004056C3    push        ecx
 004056C4    mov         ebx,eax
 004056C6    xor         esi,esi
 004056C8    xor         eax,eax
 004056CA    mov         dword ptr [ebx+0C],eax
 004056CD    xor         eax,eax
 004056CF    mov         dword ptr [ebx+10],eax
 004056D2    movzx       eax,word ptr [ebx+4]
 004056D6    sub         ax,0D7B1
>004056DA    je          004056EB
 004056DC    dec         ax
>004056DF    je          004056FE
 004056E1    dec         ax
>004056E4    je          00405711
>004056E6    jmp         00405923
 004056EB    mov         eax,80000000
 004056F0    mov         edx,3
 004056F5    mov         dword ptr [ebx+1C],4055F8;TextIn:Integer
>004056FC    jmp         00405722
 004056FE    mov         eax,40000000
 00405703    mov         edx,2
 00405708    mov         dword ptr [ebx+1C],405638;TextOut:Integer
>0040570F    jmp         00405722
 00405711    mov         eax,0C0000000
 00405716    mov         edx,3
 0040571B    mov         dword ptr [ebx+1C],405638;TextOut:Integer
 00405722    mov         dword ptr [ebx+20],405634;FileNOPProc:Integer
 00405729    cmp         word ptr [ebx+48],0
>0040572E    jne         004057D8
 00405734    cmp         dword ptr [ebx+14],0
>00405738    jne         0040574A
 0040573A    lea         eax,[ebx+250]
 00405740    mov         dword ptr [ebx+14],eax
 00405743    mov         dword ptr [ebx+8],80
 0040574A    mov         dword ptr [ebx+24],405634;FileNOPProc:Integer
 00405751    cmp         word ptr [ebx+4],0D7B2
>00405757    jne         00405777
 00405759    cmp         ebx,7C5620
>0040575F    jne         00405768
 00405761    mov         edi,0FFFFFFF4
>00405766    jmp         0040576D
 00405768    mov         edi,0FFFFFFF5
 0040576D    push        edi
 0040576E    call        kernel32.GetStdHandle
 00405773    mov         dword ptr [ebx],eax
>00405775    jmp         00405780
 00405777    push        0F6
 00405779    call        kernel32.GetStdHandle
 0040577E    mov         dword ptr [ebx],eax
 00405780    cmp         word ptr [ebx+2D0],0
>00405788    jne         004058F4
 0040578E    mov         eax,dword ptr [ebx]
 00405790    push        eax
 00405791    call        kernel32.GetFileType
 00405796    cmp         eax,2
>00405799    jne         004057C5
 0040579B    cmp         word ptr [ebx+4],0D7B2
>004057A1    jne         004057B4
 004057A3    call        kernel32.GetConsoleOutputCP
 004057A8    mov         word ptr [ebx+2D0],ax
>004057AF    jmp         004058F4
 004057B4    call        kernel32.GetConsoleCP
 004057B9    mov         word ptr [ebx+2D0],ax
>004057C0    jmp         004058F4
 004057C5    movzx       eax,word ptr ds:[7C5900];gvar_007C5900
 004057CC    mov         word ptr [ebx+2D0],ax
>004057D3    jmp         004058F4
 004057D8    mov         dword ptr [ebx+24],405688;TextClose:Integer
 004057DF    push        0
 004057E1    push        80
 004057E6    push        edx
 004057E7    push        0
 004057E9    push        1
 004057EB    push        eax
 004057EC    lea         eax,[ebx+48]
 004057EF    push        eax
 004057F0    call        kernel32.CreateFileW
 004057F5    cmp         eax,0FFFFFFFF
>004057F8    jne         0040580C
 004057FA    mov         word ptr [ebx+4],0D7B0
 00405800    call        kernel32.GetLastError
 00405805    mov         esi,eax
>00405807    jmp         00405923
 0040580C    mov         dword ptr [ebx],eax
 0040580E    cmp         word ptr [ebx+4],0D7B3
>00405814    jne         004058DC
 0040581A    mov         word ptr [ebx+4],0D7B2
 00405820    push        0
 00405822    mov         eax,dword ptr [ebx]
 00405824    push        eax
 00405825    call        kernel32.GetFileSize
 0040582A    mov         edi,eax
 0040582C    cmp         edi,0FFFFFFFF
>0040582F    jne         0040583F
 00405831    mov         eax,ebx
 00405833    call        TextOpenCleanup
 00405838    mov         esi,eax
>0040583A    jmp         00405923
 0040583F    sub         edi,80
 00405845    test        edi,edi
>00405847    jge         0040584B
 00405849    xor         edi,edi
 0040584B    push        0
 0040584D    push        0
 0040584F    push        edi
 00405850    mov         eax,dword ptr [ebx]
 00405852    push        eax
 00405853    call        kernel32.SetFilePointer
 00405858    inc         eax
>00405859    je          0040587A
 0040585B    push        0
 0040585D    lea         eax,[esp+4]
 00405861    push        eax
 00405862    push        80
 00405867    lea         eax,[ebx+250]
 0040586D    push        eax
 0040586E    mov         eax,dword ptr [ebx]
 00405870    push        eax
 00405871    call        kernel32.ReadFile
 00405876    test        eax,eax
>00405878    jne         00405888
 0040587A    mov         eax,ebx
 0040587C    call        TextOpenCleanup
 00405881    mov         esi,eax
>00405883    jmp         00405923
 00405888    test        byte ptr [ebx+6],1
>0040588C    je          004058DC
 0040588E    cmp         dword ptr [esp],0
>00405892    jbe         004058DC
 00405894    mov         edx,dword ptr [esp]
 00405897    dec         edx
 00405898    test        edx,edx
>0040589A    jb          004058DC
 0040589C    inc         edx
 0040589D    xor         edi,edi
 0040589F    lea         eax,[ebx+250]
 004058A5    cmp         byte ptr [eax],1A
>004058A8    jne         004058D7
 004058AA    push        2
 004058AC    push        0
 004058AE    mov         eax,edi
 004058B0    sub         eax,dword ptr [esp+8]
 004058B4    push        eax
 004058B5    mov         eax,dword ptr [ebx]
 004058B7    push        eax
 004058B8    call        kernel32.SetFilePointer
 004058BD    inc         eax
>004058BE    je          004058CC
 004058C0    mov         eax,dword ptr [ebx]
 004058C2    push        eax
 004058C3    call        kernel32.SetEndOfFile
 004058C8    test        eax,eax
>004058CA    jne         004058DC
 004058CC    mov         eax,ebx
 004058CE    call        TextOpenCleanup
 004058D3    mov         esi,eax
>004058D5    jmp         00405923
 004058D7    inc         edi
 004058D8    inc         eax
 004058D9    dec         edx
>004058DA    jne         004058A5
 004058DC    cmp         word ptr [ebx+2D0],0
>004058E4    jne         004058F4
 004058E6    movzx       eax,word ptr ds:[7C5900];gvar_007C5900
 004058ED    mov         word ptr [ebx+2D0],ax
 004058F4    cmp         word ptr [ebx+4],0D7B1
>004058FA    je          00405923
 004058FC    mov         eax,dword ptr [ebx]
 004058FE    push        eax
 004058FF    call        kernel32.GetFileType
 00405904    sub         eax,1
>00405907    jb          0040590E
 00405909    dec         eax
>0040590A    je          0040591C
>0040590C    jmp         00405923
 0040590E    mov         eax,ebx
 00405910    call        TextOpenCleanup
 00405915    mov         esi,69
>0040591A    jmp         00405923
 0040591C    mov         dword ptr [ebx+20],405638;TextOut:Integer
 00405923    mov         eax,esi
 00405925    pop         edx
 00405926    pop         edi
 00405927    pop         esi
 00405928    pop         ebx
 00405929    ret
*}
end;

//0040592C
{*function sub_0040592C(?:?; ?:?; ?:?):?;
begin
 0040592C    push        ebx
 0040592D    push        esi
 0040592E    push        edi
 0040592F    push        ecx
 00405930    mov         esi,ecx
 00405932    mov         edi,edx
 00405934    mov         ebx,eax
 00405936    mov         eax,ebx
 00405938    xor         ecx,ecx
 0040593A    mov         edx,2DA
 0040593F    call        @FillChar
 00405944    lea         eax,[ebx+250]
 0040594A    mov         dword ptr [ebx+14],eax
 0040594D    mov         word ptr [ebx+4],0D7B0
 00405953    movzx       eax,byte ptr ds:[79E033];0x1 gvar_0079E033
 0040595A    mov         word ptr [ebx+6],ax
 0040595E    test        si,si
>00405961    jne         00405973
 00405963    movzx       eax,word ptr ds:[7C5900];gvar_007C5900
 0040596A    mov         word ptr [ebx+2D0],ax
>00405971    jmp         0040597A
 00405973    mov         word ptr [ebx+2D0],si
 0040597A    mov         dword ptr [ebx+8],80
 00405981    mov         dword ptr [ebx+18],4056C0;TextOpen:Integer
 00405988    mov         eax,edi
 0040598A    call        @PWCharLen
 0040598F    mov         esi,eax
 00405991    cmp         esi,103
>00405997    jle         004059A8
 00405999    mov         eax,3
 0040599E    call        SetInOutRes
 004059A3    mov         esi,103
 004059A8    mov         eax,edi
 004059AA    lea         edx,[ebx+48]
 004059AD    mov         dword ptr [esp],edx
 004059B0    mov         ecx,esi
 004059B2    add         ecx,ecx
 004059B4    mov         edx,dword ptr [esp]
 004059B7    call        Move
 004059BC    mov         word ptr [ebx+esi*2+48],0
 004059C3    mov         byte ptr [ebx+2D2],0
 004059CA    xor         eax,eax
 004059CC    pop         edx
 004059CD    pop         edi
 004059CE    pop         esi
 004059CF    pop         ebx
 004059D0    ret
end;*}

//004059D4
function InternalFlush(var t:TTextRec; Func:TTextIOFunc):Integer;
begin
{*
 004059D4    push        ebx
 004059D5    movzx       ecx,word ptr [eax+4]
 004059D9    sub         cx,0D7B1
>004059DE    je          004059EF
 004059E0    dec         ecx
 004059E1    sub         cx,2
>004059E5    jae         004059F3
 004059E7    mov         ebx,edx
 004059E9    call        ebx
 004059EB    mov         ebx,eax
>004059ED    jmp         00405A0A
 004059EF    xor         ebx,ebx
>004059F1    jmp         00405A0A
 004059F3    cmp         eax,7C5344
>004059F8    je          00405A01
 004059FA    cmp         eax,7C5620
>004059FF    jne         00405A05
 00405A01    xor         ebx,ebx
>00405A03    jmp         00405A0A
 00405A05    mov         ebx,67
 00405A0A    test        ebx,ebx
>00405A0C    je          00405A15
 00405A0E    mov         eax,ebx
 00405A10    call        SetInOutRes
 00405A15    mov         eax,ebx
 00405A17    pop         ebx
 00405A18    ret
*}
end;

//00405A1C
function Flush(var t:Text):Integer;
begin
{*
 00405A1C    mov         edx,dword ptr [eax+1C]
 00405A1F    call        InternalFlush
 00405A24    ret
*}
end;

//00405A28
procedure @Close(var F:TFileRec);
begin
{*
 00405A28    push        ebx
 00405A29    push        esi
 00405A2A    mov         ebx,eax
 00405A2C    xor         esi,esi
 00405A2E    movzx       eax,word ptr [ebx+4]
 00405A32    cmp         ax,0D7B1
>00405A36    jb          00405A67
 00405A38    cmp         ax,0D7B3
>00405A3C    ja          00405A67
 00405A3E    and         ax,0D7B2
 00405A42    cmp         ax,0D7B2
>00405A46    jne         00405A4F
 00405A48    mov         eax,ebx
 00405A4A    call        dword ptr [ebx+1C]
 00405A4D    mov         esi,eax
 00405A4F    test        esi,esi
>00405A51    jne         00405A5A
 00405A53    mov         eax,ebx
 00405A55    call        dword ptr [ebx+24]
 00405A58    mov         esi,eax
 00405A5A    test        esi,esi
>00405A5C    je          00405A79
 00405A5E    mov         eax,esi
 00405A60    call        SetInOutRes
>00405A65    jmp         00405A79
 00405A67    cmp         ebx,7C5068
>00405A6D    je          00405A79
 00405A6F    mov         eax,67
 00405A74    call        SetInOutRes
 00405A79    mov         eax,esi
 00405A7B    pop         esi
 00405A7C    pop         ebx
 00405A7D    ret
*}
end;

//00405A80
function @EofText(var T:TTextRec):Boolean;
begin
{*
 00405A80    push        ebx
 00405A81    push        ecx
 00405A82    mov         ebx,eax
 00405A84    cmp         byte ptr [ebx+2D2],0
>00405A8B    je          00405A93
 00405A8D    mov         byte ptr [esp],0
>00405A91    jmp         00405AA5
 00405A93    mov         edx,esp
 00405A95    mov         eax,ebx
 00405A97    call        @ReadByte
 00405A9C    cmp         byte ptr [esp],0
>00405AA0    jne         00405AA5
 00405AA2    dec         dword ptr [ebx+0C]
 00405AA5    movzx       eax,byte ptr [esp]
 00405AA9    pop         edx
 00405AAA    pop         ebx
 00405AAB    ret
*}
end;

//00405AAC
procedure @FillChar(var dst:Pointer; cnt:Integer; val:Char);
begin
{*
 00405AAC    cmp         edx,20
 00405AAF    mov         ch,cl
>00405AB1    jl          00405AF2
 00405AB3    mov         word ptr [eax],cx
 00405AB6    mov         word ptr [eax+2],cx
 00405ABA    mov         word ptr [eax+4],cx
 00405ABE    mov         word ptr [eax+6],cx
 00405AC2    sub         edx,10
 00405AC5    fld         qword ptr [eax]
 00405AC7    fst         qword ptr [edx+eax]
 00405ACA    fst         qword ptr [edx+eax+8]
 00405ACE    mov         ecx,eax
 00405AD0    and         ecx,7
 00405AD3    sub         ecx,8
 00405AD6    sub         eax,ecx
 00405AD8    add         edx,ecx
 00405ADA    add         eax,edx
 00405ADC    neg         edx
 00405ADE    fst         qword ptr [edx+eax]
 00405AE1    fst         qword ptr [edx+eax+8]
 00405AE5    add         edx,10
>00405AE8    jl          00405ADE
 00405AEA    ffree       st(0)
 00405AEC    fincstp
 00405AEE    ret
 00405AEF    nop
 00405AF0    nop
 00405AF1    nop
 00405AF2    test        edx,edx
>00405AF4    jle         00405B46
 00405AF6    mov         byte ptr [edx+eax-1],cl
 00405AFA    and         edx,0FFFFFFFE
 00405AFD    neg         edx
 00405AFF    lea         edx,[edx*2+405B46]
 00405B06    jmp         edx
 00405B08    nop
 00405B09    nop
 00405B0A    mov         word ptr [eax+1C],cx
 00405B0E    mov         word ptr [eax+1A],cx
 00405B12    mov         word ptr [eax+18],cx
 00405B16    mov         word ptr [eax+16],cx
 00405B1A    mov         word ptr [eax+14],cx
 00405B1E    mov         word ptr [eax+12],cx
 00405B22    mov         word ptr [eax+10],cx
 00405B26    mov         word ptr [eax+0E],cx
 00405B2A    mov         word ptr [eax+0C],cx
 00405B2E    mov         word ptr [eax+0A],cx
 00405B32    mov         word ptr [eax+8],cx
 00405B36    mov         word ptr [eax+6],cx
 00405B3A    mov         word ptr [eax+4],cx
 00405B3E    mov         word ptr [eax+2],cx
 00405B42    mov         word ptr [eax],cx
 00405B45    ret
 00405B46    ret
*}
end;

//00405B48
function TryOpenForInput(var t:TTextRec):Boolean;
begin
{*
 00405B48    push        ebx
 00405B49    mov         ebx,eax
 00405B4B    cmp         ebx,7C5068
>00405B51    jne         00405B65
 00405B53    movzx       eax,byte ptr ds:[79E033];gvar_0079E033
 00405B5A    mov         word ptr [ebx+6],ax
 00405B5E    mov         eax,ebx
 00405B60    call        @ResetText
 00405B65    cmp         word ptr [ebx+4],0D7B1
 00405B6B    sete        al
 00405B6E    mov         ebx,eax
 00405B70    test        bl,bl
>00405B72    jne         00405B7E
 00405B74    mov         eax,68
 00405B79    call        SetInOutRes
 00405B7E    mov         eax,ebx
 00405B80    pop         ebx
 00405B81    ret
*}
end;

//00405B84
function @ReadByte(var t:TTextRec; var IsEof:Boolean):Byte;
begin
{*
 00405B84    push        ebx
 00405B85    push        esi
 00405B86    push        edi
 00405B87    mov         edi,edx
 00405B89    mov         esi,eax
 00405B8B    mov         bl,1A
 00405B8D    mov         byte ptr [edi],1
 00405B90    cmp         word ptr [esi+4],0D7B1
>00405B96    je          00405BA3
 00405B98    mov         eax,esi
 00405B9A    call        TryOpenForInput
 00405B9F    test        al,al
>00405BA1    je          00405BF0
 00405BA3    mov         eax,dword ptr [esi+0C]
 00405BA6    cmp         eax,dword ptr [esi+10]
>00405BA9    jb          00405BD5
 00405BAB    mov         eax,esi
 00405BAD    call        dword ptr [esi+1C]
 00405BB0    test        eax,eax
>00405BB2    je          00405BBB
 00405BB4    call        SetInOutRes
>00405BB9    jmp         00405BF0
 00405BBB    mov         eax,dword ptr [esi+0C]
 00405BBE    cmp         eax,dword ptr [esi+10]
>00405BC1    jb          00405BD5
 00405BC3    test        byte ptr [esi+6],1
>00405BC7    je          00405BF0
 00405BC9    mov         edx,dword ptr [esi+14]
 00405BCC    mov         byte ptr [edx+eax],1A
 00405BD0    inc         dword ptr [esi+10]
>00405BD3    jmp         00405BF0
 00405BD5    mov         eax,dword ptr [esi+0C]
 00405BD8    mov         edx,dword ptr [esi+14]
 00405BDB    movzx       ebx,byte ptr [edx+eax]
 00405BDF    test        byte ptr [esi+6],1
>00405BE3    je          00405BEA
 00405BE5    cmp         bl,1A
>00405BE8    je          00405BF0
 00405BEA    inc         dword ptr [esi+0C]
 00405BED    mov         byte ptr [edi],0
 00405BF0    mov         eax,ebx
 00405BF2    pop         edi
 00405BF3    pop         esi
 00405BF4    pop         ebx
 00405BF5    ret
*}
end;

//00405BF8
function @ReadWord(var t:TTextRec; var IsEof:Boolean):Word;
begin
{*
 00405BF8    push        ebx
 00405BF9    push        esi
 00405BFA    push        edi
 00405BFB    mov         edi,edx
 00405BFD    mov         ebx,eax
 00405BFF    mov         si,1A
 00405C03    mov         byte ptr [edi],1
 00405C06    cmp         word ptr [ebx+4],0D7B1
>00405C0C    je          00405C19
 00405C0E    mov         eax,ebx
 00405C10    call        TryOpenForInput
 00405C15    test        al,al
>00405C17    je          00405C67
 00405C19    mov         eax,dword ptr [ebx+0C]
 00405C1C    cmp         eax,dword ptr [ebx+10]
>00405C1F    jb          00405C4B
 00405C21    mov         eax,ebx
 00405C23    call        dword ptr [ebx+1C]
 00405C26    test        eax,eax
>00405C28    je          00405C31
 00405C2A    call        SetInOutRes
>00405C2F    jmp         00405C67
 00405C31    mov         eax,dword ptr [ebx+0C]
 00405C34    cmp         eax,dword ptr [ebx+10]
>00405C37    jb          00405C4B
 00405C39    test        byte ptr [ebx+6],1
>00405C3D    je          00405C67
 00405C3F    mov         edx,dword ptr [ebx+14]
 00405C42    mov         byte ptr [edx+eax],1A
 00405C46    inc         dword ptr [ebx+10]
>00405C49    jmp         00405C67
 00405C4B    mov         eax,dword ptr [ebx+14]
 00405C4E    add         eax,dword ptr [ebx+0C]
 00405C51    movzx       esi,word ptr [eax]
 00405C54    test        byte ptr [ebx+6],1
>00405C58    je          00405C60
 00405C5A    cmp         si,1A
>00405C5E    je          00405C67
 00405C60    add         dword ptr [ebx+0C],2
 00405C64    mov         byte ptr [edi],0
 00405C67    mov         eax,esi
 00405C69    pop         edi
 00405C6A    pop         esi
 00405C6B    pop         ebx
 00405C6C    ret
*}
end;

//00405C70
function @GetAnsiChar(var t:TTextRec; var IsEof:Boolean; codepage:Word):Byte;
begin
{*
 00405C70    push        ebp
 00405C71    mov         ebp,esp
 00405C73    add         esp,0FFFFFFE8
 00405C76    push        ebx
 00405C77    push        esi
 00405C78    push        edi
 00405C79    xor         ebx,ebx
 00405C7B    mov         dword ptr [ebp-4],ebx
 00405C7E    mov         word ptr [ebp-6],cx
 00405C82    mov         esi,edx
 00405C84    mov         ebx,eax
 00405C86    xor         eax,eax
 00405C88    push        ebp
 00405C89    push        405DF7
 00405C8E    push        dword ptr fs:[eax]
 00405C91    mov         dword ptr fs:[eax],esp
 00405C94    mov         byte ptr [esi],0
 00405C97    movzx       eax,byte ptr [ebx+2D2]
 00405C9E    test        al,al
>00405CA0    jge         00405CEC
 00405CA2    cmp         byte ptr [ebx+2D3],0
>00405CA9    je          00405CB4
 00405CAB    mov         byte ptr [ebx+2D2],0
>00405CB2    jmp         00405CEC
 00405CB4    movsx       eax,al
 00405CB7    neg         eax
 00405CB9    push        eax
 00405CBA    movzx       eax,word ptr [ebp-6]
 00405CBE    push        eax
 00405CBF    lea         ecx,[ebx+2D4]
 00405CC5    lea         eax,[ebp-15]
 00405CC8    mov         edx,6
 00405CCD    call        CharFromWChar
 00405CD2    mov         edi,eax
 00405CD4    mov         eax,edi
 00405CD6    mov         byte ptr [ebx+2D2],al
 00405CDC    lea         edx,[ebx+2D4]
 00405CE2    lea         eax,[ebp-15]
 00405CE5    mov         ecx,edi
 00405CE7    call        Move
 00405CEC    cmp         byte ptr [ebx+2D2],0
>00405CF3    jle         00405D0C
 00405CF5    movzx       eax,byte ptr [ebx+2D3]
 00405CFC    movzx       eax,byte ptr [ebx+eax+2D4]
 00405D04    mov         byte ptr [ebp-7],al
>00405D07    jmp         00405DE1
 00405D0C    movzx       eax,word ptr [ebx+2D0]
 00405D13    cmp         ax,word ptr [ebp-6]
>00405D17    jne         00405D36
 00405D19    mov         edx,esi
 00405D1B    mov         eax,ebx
 00405D1D    call        @ReadByte
 00405D22    mov         byte ptr [ebp-7],al
 00405D25    cmp         byte ptr [esi],0
>00405D28    jne         00405DE1
 00405D2E    dec         dword ptr [ebx+0C]
>00405D31    jmp         00405DE1
 00405D36    mov         edi,1
 00405D3B    mov         edx,esi
 00405D3D    mov         eax,ebx
 00405D3F    call        @GetWideChar
 00405D44    mov         word ptr [ebp-0E],ax
 00405D48    cmp         byte ptr [esi],0
>00405D4B    jne         00405DDD
 00405D51    movzx       eax,word ptr [ebp-0E]
 00405D55    cmp         ax,0D800
>00405D59    jb          00405D81
 00405D5B    cmp         ax,0DC00
>00405D5F    jae         00405D81
 00405D61    inc         edi
 00405D62    mov         eax,ebx
 00405D64    call        @SkipWideChar
 00405D69    mov         edx,esi
 00405D6B    mov         eax,ebx
 00405D6D    call        @GetWideChar
 00405D72    mov         word ptr [ebp-0C],ax
 00405D76    cmp         byte ptr [esi],0
>00405D79    je          00405D81
 00405D7B    mov         byte ptr [ebp-7],1A
>00405D7F    jmp         00405DE1
 00405D81    mov         eax,ebx
 00405D83    call        @SkipWideChar
 00405D88    movzx       eax,word ptr [ebp-6]
 00405D8C    push        eax
 00405D8D    lea         edx,[ebp-0E]
 00405D90    lea         eax,[ebp-4]
 00405D93    mov         ecx,edi
 00405D95    call        @LStrFromPWCharLen
 00405D9A    mov         eax,dword ptr [ebp-4]
 00405D9D    call        @LStrLen
 00405DA2    mov         edi,eax
 00405DA4    test        edi,edi
>00405DA6    jne         00405DAE
 00405DA8    mov         byte ptr [ebp-7],0
>00405DAC    jmp         00405DE1
 00405DAE    lea         eax,[ebp-4]
 00405DB1    call        @UniqueStringA
 00405DB6    lea         edx,[ebx+2D4]
 00405DBC    mov         ecx,edi
 00405DBE    call        Move
 00405DC3    mov         byte ptr [ebx+2D3],0
 00405DCA    mov         eax,edi
 00405DCC    mov         byte ptr [ebx+2D2],al
 00405DD2    mov         eax,dword ptr [ebp-4]
 00405DD5    movzx       eax,byte ptr [eax]
 00405DD8    mov         byte ptr [ebp-7],al
>00405DDB    jmp         00405DE1
 00405DDD    mov         byte ptr [ebp-7],1A
 00405DE1    xor         eax,eax
 00405DE3    pop         edx
 00405DE4    pop         ecx
 00405DE5    pop         ecx
 00405DE6    mov         dword ptr fs:[eax],edx
 00405DE9    push        405DFE
 00405DEE    lea         eax,[ebp-4]
 00405DF1    call        @LStrClr
 00405DF6    ret
>00405DF7    jmp         @HandleFinally
>00405DFC    jmp         00405DEE
 00405DFE    movzx       eax,byte ptr [ebp-7]
 00405E02    pop         edi
 00405E03    pop         esi
 00405E04    pop         ebx
 00405E05    mov         esp,ebp
 00405E07    pop         ebp
 00405E08    ret
*}
end;

//00405E0C
procedure @SkipAnsiChar(var t:TTextRec);
begin
{*
 00405E0C    cmp         byte ptr [eax+2D2],0
>00405E13    jle         00405E32
 00405E15    inc         byte ptr [eax+2D3]
 00405E1B    movzx       edx,byte ptr [eax+2D2]
 00405E22    cmp         dl,byte ptr [eax+2D3]
>00405E28    jne         00405E35
 00405E2A    mov         byte ptr [eax+2D2],0
 00405E31    ret
 00405E32    inc         dword ptr [eax+0C]
 00405E35    ret
*}
end;

//00405E38
function @GetWideChar(var t:TTextRec; var IsEof:Boolean):Word;
begin
{*
 00405E38    push        ebp
 00405E39    mov         ebp,esp
 00405E3B    add         esp,0FFFFFFEC
 00405E3E    push        ebx
 00405E3F    push        esi
 00405E40    push        edi
 00405E41    xor         ecx,ecx
 00405E43    mov         dword ptr [ebp-4],ecx
 00405E46    mov         dword ptr [ebp-8],ecx
 00405E49    mov         edi,edx
 00405E4B    mov         ebx,eax
 00405E4D    xor         eax,eax
 00405E4F    push        ebp
 00405E50    push        406047
 00405E55    push        dword ptr fs:[eax]
 00405E58    mov         dword ptr fs:[eax],esp
 00405E5B    mov         byte ptr [edi],0
 00405E5E    movzx       eax,byte ptr [ebx+2D2]
 00405E65    test        al,al
>00405E67    jle         00405EB6
 00405E69    cmp         byte ptr [ebx+2D3],0
>00405E70    je          00405E7B
 00405E72    mov         byte ptr [ebx+2D2],0
>00405E79    jmp         00405EB6
 00405E7B    movsx       eax,al
 00405E7E    push        eax
 00405E7F    mov         eax,[007C5900];gvar_007C5900
 00405E84    push        eax
 00405E85    lea         ecx,[ebx+2D4]
 00405E8B    lea         eax,[ebp-14]
 00405E8E    mov         edx,2
 00405E93    call        WCharFromChar
 00405E98    mov         esi,eax
 00405E9A    mov         eax,esi
 00405E9C    neg         al
 00405E9E    mov         byte ptr [ebx+2D2],al
 00405EA4    mov         ecx,esi
 00405EA6    add         ecx,ecx
 00405EA8    lea         edx,[ebx+2D4]
 00405EAE    lea         eax,[ebp-14]
 00405EB1    call        Move
 00405EB6    cmp         byte ptr [ebx+2D2],0
>00405EBD    jge         00405ED3
 00405EBF    movzx       eax,byte ptr [ebx+2D3]
 00405EC6    movzx       esi,word ptr [ebx+eax*2+2D4]
>00405ECE    jmp         00406029
 00405ED3    cmp         word ptr [ebx+2D0],4B0
>00405EDC    jne         00405EFB
 00405EDE    mov         edx,edi
 00405EE0    mov         eax,ebx
 00405EE2    call        @ReadWord
 00405EE7    mov         esi,eax
 00405EE9    cmp         byte ptr [edi],0
>00405EEC    jne         00406029
 00405EF2    sub         dword ptr [ebx+0C],2
>00405EF6    jmp         00406029
 00405EFB    mov         edx,edi
 00405EFD    mov         eax,ebx
 00405EFF    call        @ReadByte
 00405F04    mov         byte ptr [ebp-9],al
 00405F07    cmp         byte ptr [edi],0
>00405F0A    je          00405F15
 00405F0C    mov         si,1A
>00405F10    jmp         00406029
 00405F15    cmp         word ptr [ebx+2D0],0FDE9
>00405F1E    jne         00405F5A
 00405F20    movzx       eax,byte ptr [ebp-9]
 00405F24    add         al,3E
 00405F26    sub         al,1E
>00405F28    jae         00405F31
 00405F2A    mov         esi,2
>00405F2F    jmp         00405F7A
 00405F31    movzx       eax,byte ptr [ebp-9]
 00405F35    add         al,20
 00405F37    sub         al,10
>00405F39    jae         00405F42
 00405F3B    mov         esi,3
>00405F40    jmp         00405F7A
 00405F42    movzx       eax,byte ptr [ebp-9]
 00405F46    add         al,10
 00405F48    sub         al,5
>00405F4A    jae         00405F53
 00405F4C    mov         esi,4
>00405F51    jmp         00405F7A
 00405F53    mov         esi,1
>00405F58    jmp         00405F7A
 00405F5A    movzx       eax,byte ptr [ebp-9]
 00405F5E    push        eax
 00405F5F    mov         eax,[007C5900];gvar_007C5900
 00405F64    push        eax
 00405F65    call        kernel32.IsDBCSLeadByteEx
 00405F6A    test        eax,eax
>00405F6C    je          00405F75
 00405F6E    mov         esi,2
>00405F73    jmp         00405F7A
 00405F75    mov         esi,1
 00405F7A    lea         eax,[ebp-4]
 00405F7D    xor         ecx,ecx
 00405F7F    mov         edx,esi
 00405F81    call        @LStrSetLength
 00405F86    movzx       edx,word ptr [ebx+2D0]
 00405F8D    lea         eax,[ebp-4]
 00405F90    xor         ecx,ecx
 00405F92    call        SetCodePage
 00405F97    lea         eax,[ebp-4]
 00405F9A    call        @UniqueStringA
 00405F9F    movzx       edx,byte ptr [ebp-9]
 00405FA3    mov         byte ptr [eax],dl
 00405FA5    mov         dword ptr [ebp-10],2
 00405FAC    dec         esi
 00405FAD    test        esi,esi
>00405FAF    jle         00405FD8
 00405FB1    mov         edx,edi
 00405FB3    mov         eax,ebx
 00405FB5    call        @ReadByte
 00405FBA    mov         byte ptr [ebp-9],al
 00405FBD    lea         eax,[ebp-4]
 00405FC0    call        @UniqueStringA
 00405FC5    mov         edx,dword ptr [ebp-10]
 00405FC8    movzx       ecx,byte ptr [ebp-9]
 00405FCC    mov         byte ptr [eax+edx-1],cl
 00405FD0    inc         dword ptr [ebp-10]
 00405FD3    dec         esi
 00405FD4    test        esi,esi
>00405FD6    jg          00405FB1
 00405FD8    lea         eax,[ebp-8]
 00405FDB    mov         edx,dword ptr [ebp-4]
 00405FDE    call        @UStrFromLStr
 00405FE3    mov         eax,dword ptr [ebp-8]
 00405FE6    call        @UStrLen
 00405FEB    mov         esi,eax
 00405FED    test        esi,esi
>00405FEF    jle         00406027
 00405FF1    lea         eax,[ebp-8]
 00405FF4    call        @UniqueStringU
 00405FF9    mov         ecx,esi
 00405FFB    add         ecx,ecx
 00405FFD    lea         edx,[ebx+2D4]
 00406003    call        Move
 00406008    mov         byte ptr [ebx+2D3],0
 0040600F    mov         eax,dword ptr [ebp-8]
 00406012    call        @UStrLen
 00406017    neg         al
 00406019    mov         byte ptr [ebx+2D2],al
 0040601F    mov         eax,dword ptr [ebp-8]
 00406022    movzx       esi,word ptr [eax]
>00406025    jmp         00406029
 00406027    xor         esi,esi
 00406029    xor         eax,eax
 0040602B    pop         edx
 0040602C    pop         ecx
 0040602D    pop         ecx
 0040602E    mov         dword ptr fs:[eax],edx
 00406031    push        40604E
 00406036    lea         eax,[ebp-8]
 00406039    call        @UStrClr
 0040603E    lea         eax,[ebp-4]
 00406041    call        @LStrClr
 00406046    ret
>00406047    jmp         @HandleFinally
>0040604C    jmp         00406036
 0040604E    mov         eax,esi
 00406050    pop         edi
 00406051    pop         esi
 00406052    pop         ebx
 00406053    mov         esp,ebp
 00406055    pop         ebp
 00406056    ret
*}
end;

//00406058
procedure @SkipWideChar(var t:TTextRec);
begin
{*
 00406058    cmp         byte ptr [eax+2D2],0
>0040605F    jge         00406083
 00406061    inc         byte ptr [eax+2D3]
 00406067    movsx       edx,byte ptr [eax+2D2]
 0040606E    neg         edx
 00406070    movzx       ecx,byte ptr [eax+2D3]
 00406077    cmp         edx,ecx
>00406079    jne         00406087
 0040607B    mov         byte ptr [eax+2D2],0
 00406082    ret
 00406083    add         dword ptr [eax+0C],2
 00406087    ret
*}
end;

//00406088
function @ValLongL(const s:AnsiString; var code:Integer):Integer;
begin
{*
 00406088    push        ebp
 00406089    mov         ebp,esp
 0040608B    push        0
 0040608D    push        ebx
 0040608E    push        esi
 0040608F    mov         esi,edx
 00406091    mov         ebx,eax
 00406093    xor         eax,eax
 00406095    push        ebp
 00406096    push        4060CD
 0040609B    push        dword ptr fs:[eax]
 0040609E    mov         dword ptr fs:[eax],esp
 004060A1    lea         eax,[ebp-4]
 004060A4    mov         edx,ebx
 004060A6    call        @UStrFromLStr
 004060AB    mov         eax,dword ptr [ebp-4]
 004060AE    mov         edx,esi
 004060B0    call        @ValLong
 004060B5    mov         ebx,eax
 004060B7    xor         eax,eax
 004060B9    pop         edx
 004060BA    pop         ecx
 004060BB    pop         ecx
 004060BC    mov         dword ptr fs:[eax],edx
 004060BF    push        4060D4
 004060C4    lea         eax,[ebp-4]
 004060C7    call        @UStrClr
 004060CC    ret
>004060CD    jmp         @HandleFinally
>004060D2    jmp         004060C4
 004060D4    mov         eax,ebx
 004060D6    pop         esi
 004060D7    pop         ebx
 004060D8    pop         ecx
 004060D9    pop         ebp
 004060DA    ret
*}
end;

//004060DC
function @ReadLong(var T:TTextRec):Longint;
begin
{*
 004060DC    push        ebp
 004060DD    mov         ebp,esp
 004060DF    add         esp,0FFFFFFC0
 004060E2    push        ebx
 004060E3    push        esi
 004060E4    xor         edx,edx
 004060E6    mov         dword ptr [ebp-40],edx
 004060E9    mov         dword ptr [ebp-4],eax
 004060EC    xor         eax,eax
 004060EE    push        ebp
 004060EF    push        406197
 004060F4    push        dword ptr fs:[eax]
 004060F7    mov         dword ptr fs:[eax],esp
 004060FA    mov         eax,dword ptr [ebp-4]
 004060FD    call        @SeekEof
 00406102    test        al,al
>00406104    je          0040610A
 00406106    xor         ebx,ebx
>00406108    jmp         00406181
 0040610A    lea         ebx,[ebp-30]
 0040610D    mov         esi,20
 00406112    lea         edx,[ebp-5]
 00406115    mov         eax,dword ptr [ebp-4]
 00406118    movzx       ecx,word ptr ds:[7C5900];gvar_007C5900
 0040611F    call        @GetAnsiChar
 00406124    cmp         al,20
>00406126    jbe         00406136
 00406128    mov         byte ptr [ebx],al
 0040612A    mov         eax,dword ptr [ebp-4]
 0040612D    call        @SkipAnsiChar
 00406132    inc         ebx
 00406133    dec         esi
>00406134    jne         00406112
 00406136    mov         byte ptr [ebx],0
 00406139    mov         word ptr [ebp-3C],0
 0040613F    mov         word ptr [ebp-3A],1
 00406145    mov         dword ptr [ebp-38],0FFFFFFFF
 0040614C    lea         eax,[ebp-30]
 0040614F    sub         ebx,eax
 00406151    mov         dword ptr [ebp-34],ebx
 00406154    lea         eax,[ebp-40]
 00406157    lea         edx,[ebp-30]
 0040615A    mov         ecx,0
 0040615F    call        @LStrFromPChar
 00406164    mov         eax,dword ptr [ebp-40]
 00406167    lea         edx,[ebp-0C]
 0040616A    call        @ValLongL
 0040616F    mov         ebx,eax
 00406171    cmp         dword ptr [ebp-0C],0
>00406175    je          00406181
 00406177    mov         eax,6A
 0040617C    call        SetInOutRes
 00406181    xor         eax,eax
 00406183    pop         edx
 00406184    pop         ecx
 00406185    pop         ecx
 00406186    mov         dword ptr fs:[eax],edx
 00406189    push        40619E
 0040618E    lea         eax,[ebp-40]
 00406191    call        @LStrClr
 00406196    ret
>00406197    jmp         @HandleFinally
>0040619C    jmp         0040618E
 0040619E    mov         eax,ebx
 004061A0    pop         esi
 004061A1    pop         ebx
 004061A2    mov         esp,ebp
 004061A4    pop         ebp
 004061A5    ret
*}
end;

//004061A8
procedure @PushCRLF(var t:TTextRec);
begin
{*
 004061A8    mov         byte ptr [eax+2D4],0D
 004061AF    mov         byte ptr [eax+2D5],0A
 004061B6    mov         byte ptr [eax+2D2],2
 004061BD    mov         byte ptr [eax+2D3],0
 004061C4    ret
*}
end;

//004061C8
function ReadAnsiLineEx(var t:TTextRec; buf:Pointer; maxLen:Integer; var Count:Integer; CodePage:Word):Pointer;
begin
{*
 004061C8    push        ebp
 004061C9    mov         ebp,esp
 004061CB    add         esp,0FFFFFFF0
 004061CE    push        ebx
 004061CF    push        esi
 004061D0    push        edi
 004061D1    mov         dword ptr [ebp-4],ecx
 004061D4    mov         ebx,edx
 004061D6    mov         esi,eax
 004061D8    mov         edi,dword ptr [ebp+8]
 004061DB    mov         dword ptr [ebp-8],esi
 004061DE    mov         eax,dword ptr [ebp+0C]
 004061E1    xor         edx,edx
 004061E3    mov         dword ptr [eax],edx
 004061E5    cmp         word ptr [esi+4],0D7B1
>004061EB    je          004061FC
 004061ED    mov         eax,esi
 004061EF    call        TryOpenForInput
 004061F4    test        al,al
>004061F6    je          0040627C
 004061FC    cmp         dword ptr [ebp-4],0
>00406200    jle         0040627C
 00406202    test        di,di
>00406205    jne         0040620E
 00406207    movzx       edi,word ptr ds:[7C5900];gvar_007C5900
 0040620E    mov         dword ptr [ebp-10],ebx
 00406211    cmp         dword ptr [ebp-4],0
>00406215    jle         0040627C
 00406217    lea         edx,[ebp-9]
 0040621A    mov         eax,esi
 0040621C    mov         ecx,edi
 0040621E    call        @GetAnsiChar
 00406223    mov         ebx,eax
 00406225    cmp         byte ptr [ebp-9],0
>00406229    jne         0040627C
 0040622B    cmp         bl,0A
>0040622E    je          0040627C
 00406230    cmp         bl,0D
>00406233    jne         0040625F
 00406235    mov         eax,esi
 00406237    call        @SkipAnsiChar
 0040623C    lea         edx,[ebp-9]
 0040623F    mov         eax,esi
 00406241    mov         ecx,edi
 00406243    call        @GetAnsiChar
 00406248    mov         ebx,eax
 0040624A    cmp         bl,0A
>0040624D    jne         00406276
 0040624F    mov         eax,esi
 00406251    call        @SkipAnsiChar
 00406256    mov         eax,esi
 00406258    call        @PushCRLF
>0040625D    jmp         0040627C
 0040625F    mov         eax,dword ptr [ebp-10]
 00406262    mov         byte ptr [eax],bl
 00406264    mov         eax,esi
 00406266    call        @SkipAnsiChar
 0040626B    inc         dword ptr [ebp-10]
 0040626E    dec         dword ptr [ebp-4]
 00406271    mov         eax,dword ptr [ebp+0C]
 00406274    inc         dword ptr [eax]
 00406276    cmp         dword ptr [ebp-4],0
>0040627A    jg          00406217
 0040627C    mov         eax,dword ptr [ebp-8]
 0040627F    pop         edi
 00406280    pop         esi
 00406281    pop         ebx
 00406282    mov         esp,ebp
 00406284    pop         ebp
 00406285    ret         8
*}
end;

//00406288
function ReadAnsiLineEx2(var t:TTextRec; buf:Pointer; maxLen:Integer; var Count:Integer):Pointer;
begin
{*
 00406288    push        ebp
 00406289    mov         ebp,esp
 0040628B    add         esp,0FFFFFFF4
 0040628E    push        ebx
 0040628F    push        esi
 00406290    push        edi
 00406291    mov         edi,ecx
 00406293    mov         ebx,edx
 00406295    mov         esi,eax
 00406297    cmp         byte ptr [esi+2D2],0
>0040629E    je          004062BC
 004062A0    mov         eax,dword ptr [ebp+8]
 004062A3    push        eax
 004062A4    movzx       eax,word ptr [esi+2D0]
 004062AB    push        eax
 004062AC    mov         eax,esi
 004062AE    mov         ecx,edi
 004062B0    mov         edx,ebx
 004062B2    call        ReadAnsiLineEx
 004062B7    mov         dword ptr [ebp-4],eax
>004062BA    jmp         0040633B
 004062BC    mov         dword ptr [ebp-4],esi
 004062BF    mov         eax,dword ptr [ebp+8]
 004062C2    xor         edx,edx
 004062C4    mov         dword ptr [eax],edx
 004062C6    cmp         word ptr [esi+4],0D7B1
>004062CC    je          004062D9
 004062CE    mov         eax,esi
 004062D0    call        TryOpenForInput
 004062D5    test        al,al
>004062D7    je          0040633B
 004062D9    test        edi,edi
>004062DB    jle         0040633B
 004062DD    mov         dword ptr [ebp-0C],ebx
 004062E0    test        edi,edi
>004062E2    jle         0040633B
 004062E4    lea         edx,[ebp-5]
 004062E7    mov         eax,esi
 004062E9    call        @ReadByte
 004062EE    mov         ebx,eax
 004062F0    cmp         byte ptr [ebp-5],0
>004062F4    jne         0040633B
 004062F6    cmp         bl,0A
>004062F9    jne         00406300
 004062FB    dec         dword ptr [esi+0C]
>004062FE    jmp         0040633B
 00406300    cmp         bl,0D
>00406303    jne         00406329
 00406305    lea         edx,[ebp-5]
 00406308    mov         eax,esi
 0040630A    call        @ReadByte
 0040630F    mov         ebx,eax
 00406311    cmp         bl,1A
>00406314    je          0040633B
 00406316    cmp         bl,0A
>00406319    jne         00406324
 0040631B    mov         eax,esi
 0040631D    call        @PushCRLF
>00406322    jmp         0040633B
 00406324    dec         dword ptr [esi+0C]
>00406327    jmp         00406337
 00406329    mov         eax,dword ptr [ebp-0C]
 0040632C    mov         byte ptr [eax],bl
 0040632E    inc         dword ptr [ebp-0C]
 00406331    dec         edi
 00406332    mov         eax,dword ptr [ebp+8]
 00406335    inc         dword ptr [eax]
 00406337    test        edi,edi
>00406339    jg          004062E4
 0040633B    mov         eax,dword ptr [ebp-4]
 0040633E    pop         edi
 0040633F    pop         esi
 00406340    pop         ebx
 00406341    mov         esp,ebp
 00406343    pop         ebp
 00406344    ret         4
*}
end;

//00406348
function ReadWideLineEx2(var t:TTextRec; buf:Pointer; maxLen:Integer; var Count:Integer):Pointer;
begin
{*
 00406348    push        ebp
 00406349    mov         ebp,esp
 0040634B    add         esp,0FFFFFFF4
 0040634E    push        ebx
 0040634F    push        esi
 00406350    push        edi
 00406351    mov         edi,ecx
 00406353    mov         ebx,edx
 00406355    mov         esi,eax
 00406357    cmp         byte ptr [esi+2D2],0
>0040635E    je          0040637F
 00406360    mov         eax,dword ptr [ebp+8]
 00406363    push        eax
 00406364    movzx       eax,word ptr [esi+2D0]
 0040636B    push        eax
 0040636C    mov         eax,esi
 0040636E    mov         ecx,edi
 00406370    mov         edx,ebx
 00406372    call        ReadAnsiLineEx
 00406377    mov         dword ptr [ebp-4],eax
>0040637A    jmp         00406400
 0040637F    mov         dword ptr [ebp-4],esi
 00406382    mov         eax,dword ptr [ebp+8]
 00406385    xor         edx,edx
 00406387    mov         dword ptr [eax],edx
 00406389    cmp         word ptr [esi+4],0D7B1
>0040638F    je          0040639C
 00406391    mov         eax,esi
 00406393    call        TryOpenForInput
 00406398    test        al,al
>0040639A    je          00406400
 0040639C    test        edi,edi
>0040639E    jle         00406400
 004063A0    mov         dword ptr [ebp-0C],ebx
 004063A3    test        edi,edi
>004063A5    jle         00406400
 004063A7    lea         edx,[ebp-5]
 004063AA    mov         eax,esi
 004063AC    call        @ReadWord
 004063B1    mov         ebx,eax
 004063B3    cmp         byte ptr [ebp-5],0
>004063B7    jne         00406400
 004063B9    cmp         bx,0A
>004063BD    jne         004063C5
 004063BF    sub         dword ptr [esi+0C],2
>004063C3    jmp         00406400
 004063C5    cmp         bx,0D
>004063C9    jne         004063EC
 004063CB    lea         edx,[ebp-5]
 004063CE    mov         eax,esi
 004063D0    call        @ReadWord
 004063D5    mov         ebx,eax
 004063D7    cmp         bx,0A
>004063DB    jne         004063E6
 004063DD    mov         eax,esi
 004063DF    call        @PushCRLF
>004063E4    jmp         00406400
 004063E6    sub         dword ptr [esi+0C],2
>004063EA    jmp         004063FC
 004063EC    mov         eax,dword ptr [ebp-0C]
 004063EF    mov         word ptr [eax],bx
 004063F2    add         dword ptr [ebp-0C],2
 004063F6    dec         edi
 004063F7    mov         eax,dword ptr [ebp+8]
 004063FA    inc         dword ptr [eax]
 004063FC    test        edi,edi
>004063FE    jg          004063A7
 00406400    mov         eax,dword ptr [ebp-4]
 00406403    pop         edi
 00406404    pop         esi
 00406405    pop         ebx
 00406406    mov         esp,ebp
 00406408    pop         ebp
 00406409    ret         4
*}
end;

//0040640C
procedure @ReadLString(var T:TTextRec; var S:AnsiString);
begin
{*
 0040640C    push        ebp
 0040640D    mov         ebp,esp
 0040640F    push        0
 00406411    push        0
 00406413    push        0
 00406415    push        0
 00406417    push        ebx
 00406418    push        esi
 00406419    push        edi
 0040641A    mov         edi,ecx
 0040641C    mov         esi,edx
 0040641E    mov         ebx,eax
 00406420    xor         eax,eax
 00406422    push        ebp
 00406423    push        406566
 00406428    push        dword ptr fs:[eax]
 0040642B    mov         dword ptr fs:[eax],esp
 0040642E    mov         eax,esi
 00406430    call        @LStrClr
 00406435    cmp         word ptr [ebx+2D0],4B0
>0040643E    jne         0040645B
 00406440    lea         edx,[ebp-0C]
 00406443    mov         eax,ebx
 00406445    call        @ReadUString
 0040644A    mov         eax,esi
 0040644C    mov         ecx,edi
 0040644E    mov         edx,dword ptr [ebp-0C]
 00406451    call        @LStrFromUStr
>00406456    jmp         00406543
 0040645B    lea         eax,[ebp-8]
 0040645E    xor         ecx,ecx
 00406460    mov         edx,0FF
 00406465    call        @LStrSetLength
 0040646A    movzx       edx,word ptr [ebx+2D0]
 00406471    lea         eax,[ebp-8]
 00406474    xor         ecx,ecx
 00406476    call        SetCodePage
 0040647B    lea         eax,[ebp-10]
 0040647E    push        eax
 0040647F    lea         eax,[ebp-8]
 00406482    call        @UniqueStringA
 00406487    mov         edx,eax
 00406489    mov         eax,ebx
 0040648B    mov         ecx,0FF
 00406490    call        ReadAnsiLineEx2
 00406495    lea         eax,[ebp-8]
 00406498    xor         ecx,ecx
 0040649A    mov         edx,dword ptr [ebp-10]
 0040649D    call        @LStrSetLength
 004064A2    lea         eax,[ebp-4]
 004064A5    mov         edx,dword ptr [ebp-8]
 004064A8    call        @LStrLAsg
 004064AD    cmp         dword ptr [ebp-10],0FF
>004064B4    jne         00406511
 004064B6    lea         eax,[ebp-8]
 004064B9    xor         ecx,ecx
 004064BB    mov         edx,0FF
 004064C0    call        @LStrSetLength
 004064C5    movzx       edx,word ptr [ebx+2D0]
 004064CC    lea         eax,[ebp-8]
 004064CF    xor         ecx,ecx
 004064D1    call        SetCodePage
 004064D6    lea         eax,[ebp-10]
 004064D9    push        eax
 004064DA    lea         eax,[ebp-8]
 004064DD    call        @UniqueStringA
 004064E2    mov         edx,eax
 004064E4    mov         eax,ebx
 004064E6    mov         ecx,0FF
 004064EB    call        ReadAnsiLineEx2
 004064F0    lea         eax,[ebp-8]
 004064F3    xor         ecx,ecx
 004064F5    mov         edx,dword ptr [ebp-10]
 004064F8    call        @LStrSetLength
 004064FD    lea         eax,[ebp-4]
 00406500    mov         edx,dword ptr [ebp-8]
 00406503    call        @LStrCat
 00406508    cmp         dword ptr [ebp-10],0FF
>0040650F    je          004064B6
 00406511    cmp         di,word ptr [ebx+2D0]
>00406518    je          00406539
 0040651A    cmp         dword ptr [ebp-4],0
>0040651E    je          00406543
 00406520    lea         eax,[ebp-0C]
 00406523    mov         edx,dword ptr [ebp-4]
 00406526    call        @UStrFromLStr
 0040652B    mov         eax,esi
 0040652D    mov         ecx,edi
 0040652F    mov         edx,dword ptr [ebp-0C]
 00406532    call        @LStrFromUStr
>00406537    jmp         00406543
 00406539    mov         eax,esi
 0040653B    mov         edx,dword ptr [ebp-4]
 0040653E    call        @LStrAsg
 00406543    xor         eax,eax
 00406545    pop         edx
 00406546    pop         ecx
 00406547    pop         ecx
 00406548    mov         dword ptr fs:[eax],edx
 0040654B    push        40656D
 00406550    lea         eax,[ebp-0C]
 00406553    call        @UStrClr
 00406558    lea         eax,[ebp-8]
 0040655B    mov         edx,2
 00406560    call        @LStrArrayClr
 00406565    ret
>00406566    jmp         @HandleFinally
>0040656B    jmp         00406550
 0040656D    pop         edi
 0040656E    pop         esi
 0040656F    pop         ebx
 00406570    mov         esp,ebp
 00406572    pop         ebp
 00406573    ret
*}
end;

//00406574
procedure @ReadUString(var T:TTextRec; var S:UnicodeString);
begin
{*
 00406574    push        ebp
 00406575    mov         ebp,esp
 00406577    push        0
 00406579    push        0
 0040657B    push        0
 0040657D    push        ebx
 0040657E    push        esi
 0040657F    mov         ebx,edx
 00406581    mov         esi,eax
 00406583    xor         eax,eax
 00406585    push        ebp
 00406586    push        406670
 0040658B    push        dword ptr fs:[eax]
 0040658E    mov         dword ptr fs:[eax],esp
 00406591    mov         eax,ebx
 00406593    call        @UStrClr
 00406598    movzx       eax,word ptr [esi+2D0]
 0040659F    cmp         ax,4B0
>004065A3    jne         00406636
 004065A9    lea         eax,[ebp-4]
 004065AC    mov         edx,0FF
 004065B1    call        @UStrSetLength
 004065B6    lea         eax,[ebp-0C]
 004065B9    push        eax
 004065BA    mov         eax,esi
 004065BC    mov         ecx,0FF
 004065C1    mov         edx,dword ptr [ebp-4]
 004065C4    call        ReadWideLineEx2
 004065C9    lea         eax,[ebp-4]
 004065CC    mov         edx,dword ptr [ebp-0C]
 004065CF    call        @UStrSetLength
 004065D4    mov         eax,ebx
 004065D6    mov         edx,dword ptr [ebp-4]
 004065D9    call        @UStrAsg
 004065DE    cmp         dword ptr [ebp-0C],0FF
>004065E5    jne         00406652
 004065E7    lea         eax,[ebp-4]
 004065EA    mov         edx,0FF
 004065EF    call        @UStrSetLength
 004065F4    lea         eax,[ebp-0C]
 004065F7    push        eax
 004065F8    mov         eax,dword ptr [ebp-4]
 004065FB    call        @UStrToPWChar
 00406600    mov         edx,eax
 00406602    mov         eax,esi
 00406604    mov         ecx,0FF
 00406609    call        ReadWideLineEx2
 0040660E    lea         eax,[ebp-4]
 00406611    mov         edx,dword ptr [ebp-0C]
 00406614    call        @UStrSetLength
 00406619    mov         eax,ebx
 0040661B    mov         edx,dword ptr [ebp-4]
 0040661E    call        @UStrCat
 00406623    lea         eax,[ebp-4]
 00406626    call        @UStrClr
 0040662B    cmp         dword ptr [ebp-0C],0FF
>00406632    je          004065E7
>00406634    jmp         00406652
 00406636    mov         ecx,eax
 00406638    lea         edx,[ebp-8]
 0040663B    mov         eax,esi
 0040663D    call        @ReadLString
 00406642    cmp         dword ptr [ebp-8],0
>00406646    je          00406652
 00406648    mov         eax,ebx
 0040664A    mov         edx,dword ptr [ebp-8]
 0040664D    call        @UStrFromLStr
 00406652    xor         eax,eax
 00406654    pop         edx
 00406655    pop         ecx
 00406656    pop         ecx
 00406657    mov         dword ptr fs:[eax],edx
 0040665A    push        406677
 0040665F    lea         eax,[ebp-8]
 00406662    call        @LStrClr
 00406667    lea         eax,[ebp-4]
 0040666A    call        @UStrClr
 0040666F    ret
>00406670    jmp         @HandleFinally
>00406675    jmp         0040665F
 00406677    pop         esi
 00406678    pop         ebx
 00406679    mov         esp,ebp
 0040667B    pop         ebp
 0040667C    ret
*}
end;

//00406680
function @ReadExt(var T:TTextRec):Extended;
begin
{*
 00406680    push        ebp
 00406681    mov         ebp,esp
 00406683    add         esp,0FFFFFFE0
 00406686    push        ebx
 00406687    push        esi
 00406688    xor         edx,edx
 0040668A    mov         dword ptr [ebp-4],edx
 0040668D    mov         dword ptr [ebp-8],eax
 00406690    xor         eax,eax
 00406692    push        ebp
 00406693    push        406740
 00406698    push        dword ptr fs:[eax]
 0040669B    mov         dword ptr fs:[eax],esp
 0040669E    mov         eax,dword ptr [ebp-8]
 004066A1    call        @SeekEof
 004066A6    test        al,al
>004066A8    je          004066B8
 004066AA    xor         eax,eax
 004066AC    mov         dword ptr [ebp-18],eax
 004066AF    mov         dword ptr [ebp-14],eax
 004066B2    mov         word ptr [ebp-10],ax
>004066B6    jmp         0040672A
 004066B8    lea         eax,[ebp-4]
 004066BB    mov         edx,40
 004066C0    call        @UStrSetLength
 004066C5    mov         ebx,dword ptr [ebp-4]
 004066C8    mov         esi,40
 004066CD    lea         edx,[ebp-19]
 004066D0    mov         eax,dword ptr [ebp-8]
 004066D3    movzx       ecx,word ptr ds:[7C5900];gvar_007C5900
 004066DA    call        @GetAnsiChar
 004066DF    cmp         al,20
>004066E1    jbe         004066F7
 004066E3    movzx       eax,al
 004066E6    mov         word ptr [ebx],ax
 004066E9    mov         eax,dword ptr [ebp-8]
 004066EC    call        @SkipAnsiChar
 004066F1    add         ebx,2
 004066F4    dec         esi
>004066F5    jne         004066CD
 004066F7    mov         edx,ebx
 004066F9    sub         edx,dword ptr [ebp-4]
 004066FC    sar         edx,1
>004066FE    jns         00406703
 00406700    adc         edx,0
 00406703    lea         eax,[ebp-4]
 00406706    call        @UStrSetLength
 0040670B    lea         edx,[ebp-20]
 0040670E    mov         eax,dword ptr [ebp-4]
 00406711    call        @ValExt
 00406716    fstp        tbyte ptr [ebp-18]
 00406719    wait
 0040671A    cmp         dword ptr [ebp-20],0
>0040671E    je          0040672A
 00406720    mov         eax,6A
 00406725    call        SetInOutRes
 0040672A    xor         eax,eax
 0040672C    pop         edx
 0040672D    pop         ecx
 0040672E    pop         ecx
 0040672F    mov         dword ptr fs:[eax],edx
 00406732    push        406747
 00406737    lea         eax,[ebp-4]
 0040673A    call        @UStrClr
 0040673F    ret
>00406740    jmp         @HandleFinally
>00406745    jmp         00406737
 00406747    fld         tbyte ptr [ebp-18]
 0040674A    pop         esi
 0040674B    pop         ebx
 0040674C    mov         esp,ebp
 0040674E    pop         ebp
 0040674F    ret
*}
end;

//00406750
procedure @ReadLn(var T:TTextRec);
begin
{*
 00406750    push        ebx
 00406751    push        esi
 00406752    push        ecx
 00406753    mov         esi,eax
 00406755    mov         edx,esp
 00406757    mov         eax,esi
 00406759    movzx       ecx,word ptr ds:[7C5900];gvar_007C5900
 00406760    call        @GetAnsiChar
 00406765    mov         ebx,eax
 00406767    mov         eax,esi
 00406769    call        @SkipAnsiChar
 0040676E    cmp         bl,0A
>00406771    je          004067BF
 00406773    cmp         byte ptr [esp],0
>00406777    jne         004067BF
 00406779    cmp         bl,0D
>0040677C    jne         004067A4
 0040677E    mov         edx,esp
 00406780    mov         eax,esi
 00406782    movzx       ecx,word ptr ds:[7C5900];gvar_007C5900
 00406789    call        @GetAnsiChar
 0040678E    mov         ebx,eax
 00406790    mov         eax,esi
 00406792    call        @SkipAnsiChar
 00406797    cmp         bl,0A
>0040679A    je          004067BF
 0040679C    cmp         byte ptr [esp],0
>004067A0    jne         004067BF
>004067A2    jmp         0040676E
 004067A4    mov         edx,esp
 004067A6    mov         eax,esi
 004067A8    movzx       ecx,word ptr ds:[7C5900];gvar_007C5900
 004067AF    call        @GetAnsiChar
 004067B4    mov         ebx,eax
 004067B6    mov         eax,esi
 004067B8    call        @SkipAnsiChar
>004067BD    jmp         0040676E
 004067BF    pop         edx
 004067C0    pop         esi
 004067C1    pop         ebx
 004067C2    ret
*}
end;

//004067C4
function @SeekEof(var T:TTextRec):Boolean;
begin
{*
 004067C4    push        ebx
 004067C5    push        esi
 004067C6    push        ecx
 004067C7    mov         esi,eax
 004067C9    mov         byte ptr [esp],0
 004067CD    lea         edx,[esp+1]
 004067D1    mov         eax,esi
 004067D3    movzx       ecx,word ptr ds:[7C5900];gvar_007C5900
 004067DA    call        @GetAnsiChar
 004067DF    mov         ebx,eax
 004067E1    cmp         bl,20
>004067E4    ja          004067FC
 004067E6    cmp         byte ptr [esp+1],0
>004067EB    je          004067F3
 004067ED    mov         byte ptr [esp],1
>004067F1    jmp         004067FC
 004067F3    mov         eax,esi
 004067F5    call        @SkipAnsiChar
>004067FA    jmp         004067CD
 004067FC    movzx       eax,byte ptr [esp]
 00406800    pop         edx
 00406801    pop         esi
 00406802    pop         ebx
 00406803    ret
*}
end;

//00406804
function @ValLong(s:AnsiString; var code:Integer):Longint;
begin
{*
 00406804    push        ebx
 00406805    push        esi
 00406806    push        edi
 00406807    mov         esi,eax
 00406809    push        eax
 0040680A    test        eax,eax
>0040680C    je          00406895
 00406812    xor         eax,eax
 00406814    xor         ebx,ebx
 00406816    mov         edi,0CCCCCCC
 0040681B    mov         bx,word ptr [esi]
 0040681E    add         esi,2
 00406821    cmp         bx,20
>00406825    je          0040681B
 00406827    mov         ch,0
 00406829    cmp         bx,2D
>0040682D    je          004068A5
 0040682F    cmp         bx,2B
>00406833    je          004068A7
 00406835    cmp         bx,24
>00406839    je          004068AF
 0040683B    cmp         bx,78
>0040683F    je          004068AF
 00406841    cmp         bx,58
>00406845    je          004068AF
 00406847    cmp         bx,30
>0040684B    jne         00406866
 0040684D    mov         bx,word ptr [esi]
 00406850    add         esi,2
 00406853    cmp         bx,78
>00406857    je          004068AF
 00406859    cmp         bx,58
>0040685D    je          004068AF
 0040685F    test        bx,bx
>00406862    je          0040688B
>00406864    jmp         0040686B
 00406866    test        bx,bx
>00406869    je          004068A0
 0040686B    sub         bx,30
 0040686F    cmp         bx,9
>00406873    ja          004068A0
 00406875    cmp         eax,edi
>00406877    ja          004068A0
 00406879    lea         eax,[eax+eax*4]
 0040687C    add         eax,eax
 0040687E    add         eax,ebx
 00406880    mov         bx,word ptr [esi]
 00406883    add         esi,2
 00406886    test        bx,bx
>00406889    jne         0040686B
 0040688B    dec         ch
>0040688D    je          0040689A
 0040688F    test        eax,eax
>00406891    jge         004068FB
>00406893    jmp         004068A0
 00406895    add         esi,2
>00406898    jmp         004068A0
 0040689A    neg         eax
>0040689C    jle         004068FB
>0040689E    js          004068FB
 004068A0    pop         ebx
 004068A1    sub         esi,ebx
>004068A3    jmp         004068FE
 004068A5    inc         ch
 004068A7    mov         bx,word ptr [esi]
 004068AA    add         esi,2
>004068AD    jmp         00406835
 004068AF    mov         edi,0FFFFFFF
 004068B4    mov         bx,word ptr [esi]
 004068B7    add         esi,2
 004068BA    test        bx,bx
>004068BD    je          00406895
 004068BF    cmp         bx,61
>004068C3    jb          004068C9
 004068C5    sub         bx,20
 004068C9    sub         bx,30
 004068CD    cmp         bx,9
>004068D1    jbe         004068E1
 004068D3    sub         bx,11
 004068D7    cmp         bx,5
>004068DB    ja          004068A0
 004068DD    add         bx,0A
 004068E1    cmp         eax,edi
>004068E3    ja          004068A0
 004068E5    shl         eax,4
 004068E8    add         eax,ebx
 004068EA    mov         bx,word ptr [esi]
 004068ED    add         esi,2
 004068F0    test        bx,bx
>004068F3    jne         004068BF
 004068F5    dec         ch
>004068F7    jne         004068FB
 004068F9    neg         eax
 004068FB    pop         ecx
 004068FC    xor         esi,esi
 004068FE    shr         esi,1
 00406900    mov         dword ptr [edx],esi
 00406902    pop         edi
 00406903    pop         esi
 00406904    pop         ebx
 00406905    ret
*}
end;

//00406908
procedure @_CToPasStr(Dest:PShortString; const Source:PAnsiChar);
begin
{*
 00406908    mov         ecx,0FF
 0040690D    call        @_CLenToPasStr
 00406912    ret
*}
end;

//00406914
procedure @_CLenToPasStr(Dest:PShortString; const Source:PAnsiChar; MaxLen:NativeInt);
begin
{*
 00406914    push        ebx
 00406915    push        eax
 00406916    test        edx,edx
>00406918    je          0040693B
 0040691A    cmp         ecx,0FF
>00406920    jbe         00406927
 00406922    mov         ecx,0FF
 00406927    mov         bl,byte ptr [edx]
 00406929    inc         edx
 0040692A    test        bl,bl
>0040692C    je          00406934
 0040692E    inc         eax
 0040692F    mov         byte ptr [eax],bl
 00406931    dec         ecx
>00406932    jne         00406927
 00406934    pop         edx
 00406935    sub         eax,edx
 00406937    mov         byte ptr [edx],al
 00406939    pop         ebx
 0040693A    ret
 0040693B    pop         edx
 0040693C    xor         eax,eax
>0040693E    jmp         00406937
 00406940    ret
*}
end;

//00406944
procedure @SetElem(var Dest:SET; Elem:Byte; Size:Byte);
begin
{*
 00406944    push        ebx
 00406945    push        edi
 00406946    mov         edi,eax
 00406948    xor         ebx,ebx
 0040694A    mov         bl,cl
 0040694C    mov         ecx,ebx
 0040694E    xor         eax,eax
 00406950    rep stos    byte ptr [edi]
 00406952    sub         edi,ebx
 00406954    inc         eax
 00406955    mov         cl,dl
 00406957    rol         al,cl
 00406959    shr         ecx,3
 0040695C    cmp         ecx,ebx
>0040695E    jae         00406963
 00406960    or          byte ptr [ecx+edi],al
 00406963    pop         edi
 00406964    pop         ebx
 00406965    ret
*}
end;

//00406968
procedure @SetRange;
begin
{*
 00406968    push        ebx
 00406969    push        esi
 0040696A    push        edi
 0040696B    xor         ebx,ebx
 0040696D    mov         bl,ah
 0040696F    movzx       esi,al
 00406972    movzx       edx,dl
 00406975    mov         edi,ecx
 00406977    mov         ecx,ebx
 00406979    xor         eax,eax
 0040697B    rep stos    byte ptr [edi]
 0040697D    sub         edi,ebx
 0040697F    shl         ebx,3
 00406982    cmp         edx,ebx
>00406984    jb          00406989
 00406986    lea         edx,[ebx-1]
 00406989    cmp         esi,edx
>0040698B    ja          004069BA
 0040698D    dec         eax
 0040698E    mov         ecx,esi
 00406990    and         cl,7
 00406993    shl         al,cl
 00406995    shr         esi,3
 00406998    mov         cl,dl
 0040699A    not         cl
 0040699C    and         cl,7
 0040699F    shr         ah,cl
 004069A1    shr         edx,3
 004069A4    add         edi,esi
 004069A6    mov         ecx,edx
 004069A8    sub         ecx,esi
>004069AA    jne         004069B2
 004069AC    and         al,ah
 004069AE    mov         byte ptr [edi],al
>004069B0    jmp         004069BA
 004069B2    stos        byte ptr [edi]
 004069B3    dec         ecx
 004069B4    mov         al,0FF
 004069B6    rep stos    byte ptr [edi]
 004069B8    mov         byte ptr [edi],ah
 004069BA    pop         edi
 004069BB    pop         esi
 004069BC    pop         ebx
 004069BD    ret
*}
end;

//004069C0
procedure @SetEq;
begin
{*
 004069C0    push        esi
 004069C1    push        edi
 004069C2    mov         esi,eax
 004069C4    mov         edi,edx
 004069C6    and         ecx,0FF
 004069CC    dec         ecx
>004069CD    je          004069E3
 004069CF    movzx       eax,word ptr [ecx+esi-1]
 004069D4    movzx       edx,word ptr [ecx+edi-1]
 004069D9    cmp         eax,edx
>004069DB    jne         004069E0
 004069DD    dec         ecx
>004069DE    jne         004069CC
 004069E0    pop         edi
 004069E1    pop         esi
 004069E2    ret
 004069E3    mov         al,byte ptr [ecx+esi]
 004069E6    mov         dl,byte ptr [ecx+edi]
 004069E9    cmp         al,dl
>004069EB    jne         004069E0
 004069ED    or          ecx,ecx
 004069EF    pop         edi
 004069F0    pop         esi
 004069F1    ret
*}
end;

//004069F4
procedure @SetUnion;
begin
{*
 004069F4    mov         ch,byte ptr [edx]
 004069F6    inc         edx
 004069F7    or          byte ptr [eax],ch
 004069F9    inc         eax
 004069FA    dec         cl
>004069FC    jne         004069F4
 004069FE    ret
*}
end;

//00406A00
procedure @SetSub;
begin
{*
 00406A00    mov         ch,byte ptr [edx]
 00406A02    not         ch
 00406A04    inc         edx
 00406A05    and         byte ptr [eax],ch
 00406A07    inc         eax
 00406A08    dec         cl
>00406A0A    jne         00406A00
 00406A0C    ret
*}
end;

//00406A10
procedure @SetExpand;
begin
{*
 00406A10    push        esi
 00406A11    push        edi
 00406A12    mov         esi,eax
 00406A14    mov         edi,edx
 00406A16    mov         edx,ecx
 00406A18    xor         ecx,ecx
 00406A1A    xor         eax,eax
 00406A1C    mov         cl,dl
 00406A1E    rep stos    byte ptr [edi]
 00406A20    mov         cl,dh
 00406A22    sub         cl,dl
 00406A24    rep movs    byte ptr [edi],byte ptr [esi]
 00406A26    mov         cl,20
 00406A28    sub         cl,dh
 00406A2A    rep stos    byte ptr [edi]
 00406A2C    pop         edi
 00406A2D    pop         esi
 00406A2E    ret
*}
end;

//00406A30
procedure @ValExt(s:AnsiString; var code:Integer);
begin
{*
 00406A30    push        ebx
 00406A31    xor         ebx,ebx
 00406A33    push        esi
 00406A34    push        edi
 00406A35    push        ebx
 00406A36    mov         esi,eax
 00406A38    push        eax
 00406A39    fldz
 00406A3B    xor         eax,eax
 00406A3D    xor         ebx,ebx
 00406A3F    xor         edi,edi
 00406A41    push        ebx
 00406A42    test        esi,esi
>00406A44    je          00406B5B
 00406A4A    mov         bx,word ptr [esi]
 00406A4D    add         esi,2
 00406A50    cmp         bx,20
>00406A54    je          00406A4A
 00406A56    mov         ch,0
 00406A58    cmp         bx,2D
>00406A5C    je          00406A66
 00406A5E    cmp         bx,2B
>00406A62    je          00406A68
>00406A64    jmp         00406A6E
 00406A66    inc         ch
 00406A68    mov         bx,word ptr [esi]
 00406A6B    add         esi,2
 00406A6E    test        bx,bx
>00406A71    je          00406B5E
 00406A77    mov         edi,dword ptr [esp+8]
 00406A7B    sub         bx,30
 00406A7F    cmp         bx,9
>00406A83    ja          00406A9E
 00406A85    fmul        qword ptr [edi+79E790]
 00406A8B    mov         dword ptr [esp],ebx
 00406A8E    fiadd       dword ptr [esp]
 00406A91    mov         bx,word ptr [esi]
 00406A94    add         esi,2
 00406A97    test        bx,bx
>00406A9A    jne         00406A7B
>00406A9C    jmp         00406AD1
 00406A9E    cmp         bx,0FFFFFFFE
>00406AA2    jne         00406AD5
 00406AA4    mov         bx,word ptr [esi]
 00406AA7    add         esi,2
 00406AAA    test        bx,bx
>00406AAD    je          00406AD1
 00406AAF    sub         bx,30
 00406AB3    cmp         bx,9
>00406AB7    ja          00406AD5
 00406AB9    fmul        qword ptr [edi+79E790]
 00406ABF    mov         dword ptr [esp],ebx
 00406AC2    fiadd       dword ptr [esp]
 00406AC5    dec         eax
 00406AC6    mov         bx,word ptr [esi]
 00406AC9    add         esi,2
 00406ACC    test        bx,bx
>00406ACF    jne         00406AAF
 00406AD1    xor         edi,edi
>00406AD3    jmp         00406B3B
 00406AD5    cmp         bx,15
>00406AD9    je          00406AE1
 00406ADB    cmp         bx,35
>00406ADF    jne         00406B5E
 00406AE1    mov         bx,word ptr [esi]
 00406AE4    add         esi,2
 00406AE7    mov         ah,0
 00406AE9    cmp         bx,2D
>00406AED    je          00406AF7
 00406AEF    cmp         bx,2B
>00406AF3    je          00406AF9
>00406AF5    jmp         00406AFF
 00406AF7    inc         ah
 00406AF9    mov         bx,word ptr [esi]
 00406AFC    add         esi,2
 00406AFF    sub         bx,30
 00406B03    cmp         bx,9
>00406B07    ja          00406B5E
 00406B09    mov         edi,ebx
 00406B0B    mov         bx,word ptr [esi]
 00406B0E    add         esi,2
 00406B11    test        bx,bx
>00406B14    je          00406B32
 00406B16    sub         bx,30
 00406B1A    cmp         bx,9
>00406B1E    ja          00406B5E
 00406B20    lea         edi,[edi+edi*4]
 00406B23    add         edi,edi
 00406B25    add         edi,ebx
 00406B27    mov         bx,word ptr [esi]
 00406B2A    add         esi,2
 00406B2D    test        bx,bx
>00406B30    jne         00406B16
 00406B32    dec         ah
>00406B34    jne         00406B38
 00406B36    neg         edi
 00406B38    movsx       eax,al
 00406B3B    add         eax,edi
 00406B3D    push        edx
 00406B3E    push        ecx
 00406B3F    call        @Pow10
 00406B44    pop         ecx
 00406B45    pop         edx
 00406B46    dec         ch
>00406B48    je          00406B57
 00406B4A    add         esp,0C
 00406B4D    xor         esi,esi
 00406B4F    shr         esi,1
 00406B51    mov         dword ptr [edx],esi
 00406B53    pop         edi
 00406B54    pop         esi
 00406B55    pop         ebx
 00406B56    ret
 00406B57    fchs
>00406B59    jmp         00406B4A
 00406B5B    add         esi,2
 00406B5E    pop         eax
 00406B5F    pop         ebx
 00406B60    sub         esi,ebx
 00406B62    add         esp,4
>00406B65    jmp         00406B4F
 00406B67    ret
*}
end;

//00406B68
procedure sub_00406B68;
begin
{*
>00406B68    jmp         @Pow10
*}
end;

//00406B70
procedure @Pow10;
begin
{*
 00406B70    push        ebx
 00406B71    xor         ebx,ebx
 00406B73    test        eax,eax
>00406B75    jl          00406BC4
>00406B77    je          00406C17
 00406B7D    cmp         eax,1400
>00406B82    jge         00406C09
 00406B88    mov         edx,eax
 00406B8A    and         edx,1F
 00406B8D    lea         edx,[edx+edx*4]
 00406B90    fld         tbyte ptr [ebx+edx*2+79E798]
 00406B97    fmulp       st(1),st
 00406B99    shr         eax,5
>00406B9C    je          00406C17
 00406B9E    mov         edx,eax
 00406BA0    and         edx,0F
>00406BA3    je          00406BB1
 00406BA5    lea         edx,[edx+edx*4]
 00406BA8    fld         tbyte ptr [ebx+edx*2+79E8CE]
 00406BAF    fmulp       st(1),st
 00406BB1    shr         eax,4
>00406BB4    je          00406C17
 00406BB6    lea         eax,[eax+eax*4]
 00406BB9    fld         tbyte ptr [ebx+eax*2+79E966]
 00406BC0    fmulp       st(1),st
>00406BC2    jmp         00406C17
 00406BC4    neg         eax
 00406BC6    cmp         eax,1400
>00406BCB    jge         00406C13
 00406BCD    mov         edx,eax
 00406BCF    and         edx,1F
 00406BD2    lea         edx,[edx+edx*4]
 00406BD5    fld         tbyte ptr [ebx+edx*2+79E798]
 00406BDC    fdivp       st(1),st
 00406BDE    shr         eax,5
>00406BE1    je          00406C17
 00406BE3    mov         edx,eax
 00406BE5    and         edx,0F
>00406BE8    je          00406BF6
 00406BEA    lea         edx,[edx+edx*4]
 00406BED    fld         tbyte ptr [ebx+edx*2+79E8CE]
 00406BF4    fdivp       st(1),st
 00406BF6    shr         eax,4
>00406BF9    je          00406C17
 00406BFB    lea         eax,[eax+eax*4]
 00406BFE    fld         tbyte ptr [ebx+eax*2+79E966]
 00406C05    fdivp       st(1),st
>00406C07    jmp         00406C17
 00406C09    fstp        st(0)
 00406C0B    fld         tbyte ptr [ebx+406C19]
>00406C11    jmp         00406C17
 00406C13    fstp        st(0)
 00406C15    fldz
 00406C17    pop         ebx
 00406C18    ret
*}
end;

//00406C24
function GetBriefSSEType:Cardinal;
begin
{*
 00406C24    push        ebx
 00406C25    pushfd
 00406C26    pop         eax
 00406C27    mov         ecx,eax
 00406C29    xor         eax,200000
 00406C2E    push        eax
 00406C2F    popfd
 00406C30    pushfd
 00406C31    pop         eax
 00406C32    xor         eax,ecx
>00406C34    je          00406C55
 00406C36    mov         eax,1
 00406C3B    cpuid
 00406C3D    xor         eax,eax
 00406C3F    test        edx,2000000
>00406C45    je          00406C4A
 00406C47    or          eax,1
 00406C4A    test        edx,4000000
>00406C50    je          00406C55
 00406C52    or          eax,2
 00406C55    pop         ebx
 00406C56    ret
*}
end;

//00406C58
procedure @InitializeControlWord;
begin
{*
 00406C58    call        GetBriefSSEType
 00406C5D    mov         [007C5060],eax;gvar_007C5060
 00406C62    call        GetMXCSR
 00406C67    and         eax,0FFC0
 00406C6C    mov         [0079E02C],eax
 00406C71    ret
*}
end;

//00406C74
procedure @FpuInit;
begin
{*
 00406C74    fninit
 00406C76    wait
 00406C77    fldcw       word ptr ds:[79E028]
 00406C7D    ret
*}
end;

//00406C80
procedure @BoundErr;
begin
{*
 00406C80    mov         al,4
>00406C82    jmp         Error
 00406C87    ret
*}
end;

//00406C88
procedure @IntOver;
begin
{*
 00406C88    mov         al,5
>00406C8A    jmp         Error
 00406C8F    ret
*}
end;

//00406C90
function TObject.ClassName:string;
begin
{*
 00406C90    push        ebx
 00406C91    push        esi
 00406C92    mov         esi,edx
 00406C94    mov         ebx,eax
 00406C96    mov         edx,esi
 00406C98    add         ebx,0FFFFFFC8
 00406C9B    mov         eax,dword ptr [ebx]
 00406C9D    call        UTF8ToString
 00406CA2    pop         esi
 00406CA3    pop         ebx
 00406CA4    ret
*}
end;

//00406CA8
function TObject.ClassNameIs(Name:string):Boolean;
begin
{*
 00406CA8    push        ebp
 00406CA9    mov         ebp,esp
 00406CAB    push        0
 00406CAD    push        ebx
 00406CAE    push        esi
 00406CAF    mov         esi,edx
 00406CB1    mov         ebx,eax
 00406CB3    xor         eax,eax
 00406CB5    push        ebp
 00406CB6    push        406D16
 00406CBB    push        dword ptr fs:[eax]
 00406CBE    mov         dword ptr fs:[eax],esp
 00406CC1    lea         edx,[ebp-4]
 00406CC4    mov         eax,ebx
 00406CC6    call        TObject.ClassName
 00406CCB    mov         eax,esi
 00406CCD    call        @UStrLen
 00406CD2    push        eax
 00406CD3    mov         eax,esi
 00406CD5    call        @UStrToPWChar
 00406CDA    push        eax
 00406CDB    mov         eax,dword ptr [ebp-4]
 00406CDE    call        @UStrLen
 00406CE3    push        eax
 00406CE4    mov         eax,dword ptr [ebp-4]
 00406CE7    call        @UStrToPWChar
 00406CEC    push        eax
 00406CED    push        1
 00406CEF    mov         eax,[007C5908]
 00406CF4    push        eax
 00406CF5    call        kernel32.CompareStringW
 00406CFA    cmp         eax,2
 00406CFD    sete        bl
 00406D00    xor         eax,eax
 00406D02    pop         edx
 00406D03    pop         ecx
 00406D04    pop         ecx
 00406D05    mov         dword ptr fs:[eax],edx
 00406D08    push        406D1D
 00406D0D    lea         eax,[ebp-4]
 00406D10    call        @UStrClr
 00406D15    ret
>00406D16    jmp         @HandleFinally
>00406D1B    jmp         00406D0D
 00406D1D    mov         eax,ebx
 00406D1F    pop         esi
 00406D20    pop         ebx
 00406D21    pop         ecx
 00406D22    pop         ebp
 00406D23    ret
*}
end;

//00406D24
function TObject.ClassParent:TClass;
begin
{*
 00406D24    mov         eax,dword ptr [eax-30]
 00406D27    test        eax,eax
>00406D29    je          00406D2D
 00406D2B    mov         eax,dword ptr [eax]
 00406D2D    ret
*}
end;

//00406D30
function TObject.NewInstance:TObject;
begin
{*
 00406D30    push        ebx
 00406D31    mov         ebx,eax
 00406D33    mov         eax,ebx
 00406D35    call        TObject.InstanceSize
 00406D3A    call        @GetMem
 00406D3F    mov         edx,eax
 00406D41    mov         eax,ebx
 00406D43    call        TObject.InitInstance
 00406D48    pop         ebx
 00406D49    ret
*}
end;

//00406D4C
procedure TObject.FreeInstance;
begin
{*
 00406D4C    push        ebx
 00406D4D    mov         ebx,eax
 00406D4F    mov         eax,ebx
 00406D51    call        TObject.CleanupInstance
 00406D56    mov         eax,ebx
 00406D58    call        @FreeMem
 00406D5D    pop         ebx
 00406D5E    ret
*}
end;

//00406D60
function TObject.InstanceSize:Integer;
begin
{*
 00406D60    add         eax,0FFFFFFCC
 00406D63    mov         eax,dword ptr [eax]
 00406D65    ret
*}
end;

//00406D68
constructor TObject.Create();
begin
{*
 00406D68    test        dl,dl
>00406D6A    je          00406D74
 00406D6C    add         esp,0FFFFFFF0
 00406D6F    call        @ClassCreate
 00406D74    test        dl,dl
>00406D76    je          00406D87
 00406D78    call        @AfterConstruction
 00406D7D    pop         dword ptr fs:[0]
 00406D84    add         esp,0C
 00406D87    ret
*}
end;

//00406D88
destructor TObject.Destroy();
begin
{*
 00406D88    call        @BeforeDestruction
 00406D8D    test        dl,dl
>00406D8F    jle         00406D96
 00406D91    call        @ClassDestroy
 00406D96    ret
*}
end;

//00406D98
procedure TObject.Free;
begin
{*
 00406D98    test        eax,eax
>00406D9A    je          00406DA3
 00406D9C    mov         dl,1
 00406D9E    mov         ecx,dword ptr [eax]
 00406DA0    call        dword ptr [ecx-4]
 00406DA3    ret
*}
end;

//00406DA4
function TObject.InitInstance(Instance:Pointer):TObject;
begin
{*
 00406DA4    push        ebx
 00406DA5    push        esi
 00406DA6    push        edi
 00406DA7    mov         ebx,eax
 00406DA9    mov         edi,edx
 00406DAB    stos        dword ptr [edi]
 00406DAC    mov         ecx,dword ptr [ebx-34]
 00406DAF    xor         eax,eax
 00406DB1    push        ecx
 00406DB2    shr         ecx,2
 00406DB5    dec         ecx
 00406DB6    rep stos    dword ptr [edi]
 00406DB8    pop         ecx
 00406DB9    and         ecx,3
 00406DBC    rep stos    byte ptr [edi]
 00406DBE    mov         eax,edx
 00406DC0    mov         edx,esp
 00406DC2    mov         ecx,dword ptr [ebx-54]
 00406DC5    test        ecx,ecx
>00406DC7    je          00406DCA
 00406DC9    push        ecx
 00406DCA    mov         ebx,dword ptr [ebx-30]
 00406DCD    test        ebx,ebx
>00406DCF    je          00406DD5
 00406DD1    mov         ebx,dword ptr [ebx]
>00406DD3    jmp         00406DC2
 00406DD5    cmp         esp,edx
>00406DD7    je          00406DF6
 00406DD9    pop         ebx
 00406DDA    mov         ecx,dword ptr [ebx]
 00406DDC    add         ebx,4
 00406DDF    mov         esi,dword ptr [ebx+10]
 00406DE2    test        esi,esi
>00406DE4    je          00406DEC
 00406DE6    mov         edi,dword ptr [ebx+14]
 00406DE9    mov         dword ptr [edi+eax],esi
 00406DEC    add         ebx,1C
 00406DEF    dec         ecx
>00406DF0    jne         00406DDF
 00406DF2    cmp         esp,edx
>00406DF4    jne         00406DD9
 00406DF6    pop         edi
 00406DF7    pop         esi
 00406DF8    pop         ebx
 00406DF9    ret
*}
end;

//00406DFC
procedure TObject.CleanupInstance;
begin
{*
 00406DFC    push        ebx
 00406DFD    push        esi
 00406DFE    mov         ebx,eax
 00406E00    mov         esi,eax
 00406E02    mov         esi,dword ptr [esi]
 00406E04    mov         edx,dword ptr [esi-4C]
 00406E07    mov         esi,dword ptr [esi-30]
 00406E0A    test        edx,edx
>00406E0C    je          00406E15
 00406E0E    call        @FinalizeRecord
 00406E13    mov         eax,ebx
 00406E15    test        esi,esi
>00406E17    jne         00406E02
 00406E19    mov         eax,ebx
 00406E1B    call        TMonitor.Destroy
 00406E20    pop         esi
 00406E21    pop         ebx
 00406E22    ret
*}
end;

//00406E24
function InvokeImplGetter(const Self:TObject; ImplGetter:NativeUInt):IInterface;
begin
{*
 00406E24    xchg        edx,ecx
 00406E26    cmp         ecx,0FF000000
>00406E2C    jae         00406E3F
 00406E2E    cmp         ecx,0FE000000
>00406E34    jb          00406E3D
 00406E36    movsx       ecx,cx
 00406E39    add         ecx,dword ptr [eax]
 00406E3B    jmp         dword ptr [ecx]
 00406E3D    jmp         ecx
 00406E3F    and         ecx,0FFFFFF
 00406E45    add         ecx,eax
 00406E47    mov         eax,edx
 00406E49    mov         edx,dword ptr [ecx]
>00406E4B    jmp         @IntfCopy
 00406E50    ret
*}
end;

//00406E54
function TObject.Equals(Obj:TObject):Boolean;
begin
{*
 00406E54    cmp         eax,edx
 00406E56    sete        al
 00406E59    ret
*}
end;

//00406E5C
function TObject.GetHashCode:Integer;
begin
{*
 00406E5C    ret
*}
end;

//00406E60
{*function TObject.GetInterface(IID:TGUID; Obj:?):Boolean;
begin
 00406E60    push        ebp
 00406E61    mov         ebp,esp
 00406E63    add         esp,0FFFFFFF8
 00406E66    push        ebx
 00406E67    push        esi
 00406E68    push        edi
 00406E69    xor         ebx,ebx
 00406E6B    mov         dword ptr [ebp-8],ebx
 00406E6E    mov         ebx,ecx
 00406E70    mov         dword ptr [ebp-4],edx
 00406E73    mov         edi,eax
 00406E75    xor         eax,eax
 00406E77    push        ebp
 00406E78    push        406EFB
 00406E7D    push        dword ptr fs:[eax]
 00406E80    mov         dword ptr fs:[eax],esp
 00406E83    xor         eax,eax
 00406E85    mov         dword ptr [ebx],eax
 00406E87    mov         edx,dword ptr [ebp-4]
 00406E8A    mov         eax,dword ptr [edi]
 00406E8C    call        TObject.GetInterfaceEntry
 00406E91    mov         esi,eax
 00406E93    test        esi,esi
>00406E95    je          00406ECA
 00406E97    mov         eax,dword ptr [esi+14]
 00406E9A    test        eax,eax
>00406E9C    je          00406EB1
 00406E9E    add         edi,eax
 00406EA0    mov         dword ptr [ebx],edi
 00406EA2    cmp         dword ptr [ebx],0
>00406EA5    je          00406EDD
 00406EA7    mov         eax,dword ptr [ebx]
 00406EA9    push        eax
 00406EAA    mov         eax,dword ptr [eax]
 00406EAC    call        dword ptr [eax+4]
>00406EAF    jmp         00406EDD
 00406EB1    lea         ecx,[ebp-8]
 00406EB4    mov         edx,dword ptr [esi+18]
 00406EB7    mov         eax,edi
 00406EB9    call        InvokeImplGetter
 00406EBE    mov         edx,dword ptr [ebp-8]
 00406EC1    mov         eax,ebx
 00406EC3    call        @IntfCopy
>00406EC8    jmp         00406EDD
 00406ECA    mov         edx,dword ptr [ebp-4]
 00406ECD    mov         eax,79E044
 00406ED2    call        TGUID.&op_Equality
 00406ED7    test        al,al
>00406ED9    je          00406EDD
 00406EDB    mov         dword ptr [ebx],edi
 00406EDD    cmp         dword ptr [ebx],0
 00406EE0    setne       al
 00406EE3    mov         ebx,eax
 00406EE5    xor         eax,eax
 00406EE7    pop         edx
 00406EE8    pop         ecx
 00406EE9    pop         ecx
 00406EEA    mov         dword ptr fs:[eax],edx
 00406EED    push        406F02
 00406EF2    lea         eax,[ebp-8]
 00406EF5    call        @IntfClear
 00406EFA    ret
>00406EFB    jmp         @HandleFinally
>00406F00    jmp         00406EF2
 00406F02    mov         eax,ebx
 00406F04    pop         edi
 00406F05    pop         esi
 00406F06    pop         ebx
 00406F07    pop         ecx
 00406F08    pop         ecx
 00406F09    pop         ebp
 00406F0A    ret
end;*}

//00406F0C
function TObject.GetInterfaceEntry(IID:TGUID):PInterfaceEntry;
begin
{*
 00406F0C    push        ebx
 00406F0D    push        esi
 00406F0E    mov         ebx,eax
 00406F10    mov         eax,dword ptr [ebx-54]
 00406F13    test        eax,eax
>00406F15    je          00406F40
 00406F17    mov         ecx,dword ptr [eax]
 00406F19    add         eax,4
 00406F1C    mov         esi,dword ptr [edx]
 00406F1E    cmp         esi,dword ptr [eax]
>00406F20    jne         00406F3A
 00406F22    mov         esi,dword ptr [edx+4]
 00406F25    cmp         esi,dword ptr [eax+4]
>00406F28    jne         00406F3A
 00406F2A    mov         esi,dword ptr [edx+8]
 00406F2D    cmp         esi,dword ptr [eax+8]
>00406F30    jne         00406F3A
 00406F32    mov         esi,dword ptr [edx+0C]
 00406F35    cmp         esi,dword ptr [eax+0C]
>00406F38    je          00406F4D
 00406F3A    add         eax,1C
 00406F3D    dec         ecx
>00406F3E    jne         00406F1C
 00406F40    mov         ebx,dword ptr [ebx-30]
 00406F43    test        ebx,ebx
>00406F45    je          00406F4B
 00406F47    mov         ebx,dword ptr [ebx]
>00406F49    jmp         00406F10
 00406F4B    xor         eax,eax
 00406F4D    pop         esi
 00406F4E    pop         ebx
 00406F4F    ret
*}
end;

//00406F50
function TObject.UnitName:string;
begin
{*
 00406F50    push        ebx
 00406F51    push        esi
 00406F52    add         esp,0FFFFFF00
 00406F58    mov         esi,edx
 00406F5A    call        TObject.ClassInfo
 00406F5F    test        eax,eax
>00406F61    je          00406FC1
 00406F63    mov         edx,eax
 00406F65    mov         ecx,edx
 00406F67    add         ecx,2
 00406F6A    inc         edx
 00406F6B    movzx       eax,byte ptr [edx]
 00406F6E    add         ecx,eax
 00406F70    lea         ebx,[ecx+0A]
 00406F73    cmp         byte ptr [ebx+1],40
>00406F77    je          00406F84
 00406F79    mov         edx,esi
 00406F7B    mov         eax,ebx
 00406F7D    call        UTF8ToString
>00406F82    jmp         00406FC8
 00406F84    push        esp
 00406F85    lea         eax,[esp+4]
 00406F89    mov         dx,3A
 00406F8D    mov         ecx,0FF
 00406F92    call        @WCharToString
 00406F97    lea         eax,[esp+4]
 00406F9B    mov         edx,ebx
 00406F9D    mov         ecx,1
 00406FA2    call        Pos
 00406FA7    mov         edx,eax
 00406FA9    inc         edx
 00406FAA    mov         eax,ebx
 00406FAC    mov         ecx,7FFFFFFF
 00406FB1    call        @Copy
 00406FB6    mov         eax,esp
 00406FB8    mov         edx,esi
 00406FBA    call        UTF8ToString
>00406FBF    jmp         00406FC8
 00406FC1    mov         eax,esi
 00406FC3    call        @UStrClr
 00406FC8    add         esp,100
 00406FCE    pop         esi
 00406FCF    pop         ebx
 00406FD0    ret
*}
end;

//00406FD4
function @IsClass(Child:TObject; Parent:TClass):Boolean;
begin
{*
 00406FD4    push        ebx
 00406FD5    push        esi
 00406FD6    mov         esi,edx
 00406FD8    mov         ebx,eax
 00406FDA    test        ebx,ebx
>00406FDC    je          00406FEB
 00406FDE    mov         edx,esi
 00406FE0    mov         eax,dword ptr [ebx]
 00406FE2    call        TObject.InheritsFrom
 00406FE7    test        al,al
>00406FE9    jne         00406FF0
 00406FEB    xor         eax,eax
 00406FED    pop         esi
 00406FEE    pop         ebx
 00406FEF    ret
 00406FF0    mov         al,1
 00406FF2    pop         esi
 00406FF3    pop         ebx
 00406FF4    ret
*}
end;

//00406FF8
function @AsClass(child:TObject; parent:TClass):TObject;
begin
{*
 00406FF8    push        ebp
 00406FF9    mov         ebp,esp
 00406FFB    push        ecx
 00406FFC    push        ebx
 00406FFD    push        esi
 00406FFE    mov         esi,edx
 00407000    mov         ebx,eax
 00407002    mov         dword ptr [ebp-4],ebx
 00407005    test        ebx,ebx
>00407007    je          00407020
 00407009    mov         eax,ebx
 0040700B    mov         edx,esi
 0040700D    call        @IsClass
 00407012    test        al,al
>00407014    jne         00407020
 00407016    mov         edx,dword ptr [ebp+4]
 00407019    mov         al,0A
 0040701B    call        ErrorAt
 00407020    mov         eax,dword ptr [ebp-4]
 00407023    pop         esi
 00407024    pop         ebx
 00407025    pop         ecx
 00407026    pop         ebp
 00407027    ret
*}
end;

//00407028
function GetDynaMethod(vmt:TClass; selector:SmallInt):Pointer;
begin
{*
 00407028    push        edi
 00407029    xchg        eax,edx
>0040702A    jmp         0040702E
 0040702C    mov         edx,dword ptr [edx]
 0040702E    mov         edi,dword ptr [edx-3C]
 00407031    test        edi,edi
>00407033    je          00407042
 00407035    movzx       ecx,word ptr [edi]
 00407038    push        ecx
 00407039    add         edi,2
 0040703C    repne scas  word ptr [edi]
>0040703F    je          0040704D
 00407041    pop         ecx
 00407042    mov         edx,dword ptr [edx-30]
 00407045    test        edx,edx
>00407047    jne         0040702C
 00407049    xor         eax,eax
 0040704B    pop         edi
 0040704C    ret
 0040704D    pop         eax
 0040704E    add         eax,eax
 00407050    sub         eax,ecx
 00407052    mov         eax,dword ptr [edi+eax*2-4]
 00407056    pop         edi
 00407057    ret
*}
end;

//00407058
procedure @CallDynaInst;
begin
{*
 00407058    push        eax
 00407059    push        ecx
 0040705A    xchg        esi,edx
 0040705C    mov         eax,dword ptr [eax]
 0040705E    call        GetDynaMethod
 00407063    mov         edx,eax
 00407065    xchg        esi,edx
 00407067    pop         ecx
 00407068    pop         eax
 00407069    test        esi,esi
>0040706B    je          0040706F
 0040706D    jmp         esi
 0040706F    pop         ecx
>00407070    jmp         @AbstractError
 00407075    ret
*}
end;

//00407078
function @FindDynaInst(const Self:TObject; Selector:SmallInt):Pointer;
begin
{*
 00407078    mov         eax,dword ptr [eax]
 0040707A    call        GetDynaMethod
 0040707F    test        eax,eax
>00407081    jne         00407089
 00407083    pop         ecx
>00407084    jmp         @AbstractError
 00407089    ret
*}
end;

//0040708C
function TObject.InheritsFrom(AClass:TClass):Boolean;
begin
{*
>0040708C    jmp         00407090
 0040708E    mov         eax,dword ptr [eax]
 00407090    cmp         eax,edx
>00407092    je          0040709C
 00407094    mov         eax,dword ptr [eax-30]
 00407097    test        eax,eax
>00407099    jne         0040708E
 0040709B    ret
 0040709C    mov         al,1
 0040709E    ret
*}
end;

//004070A0
function TObject.ClassInfo:Pointer;
begin
{*
 004070A0    add         eax,0FFFFFFB8
 004070A3    mov         eax,dword ptr [eax]
 004070A5    ret
*}
end;

//004070A8
function TObject.SafeCallException(ExceptObject:TObject; ExceptAddr:Pointer):HRESULT;
begin
{*
 004070A8    mov         eax,8000FFFF
 004070AD    ret
*}
end;

//004070B0
function TObject.ToString:string;
begin
{*
 004070B0    push        ebx
 004070B1    push        esi
 004070B2    mov         esi,edx
 004070B4    mov         ebx,eax
 004070B6    mov         edx,esi
 004070B8    mov         eax,dword ptr [ebx]
 004070BA    call        TObject.ClassName
 004070BF    pop         esi
 004070C0    pop         ebx
 004070C1    ret
*}
end;

//004070C4
{*procedure TObject.DefaultHandler(var Message:?);
begin
 004070C4    ret
end;*}

//004070C8
procedure TObject.AfterConstruction;
begin
{*
 004070C8    ret
*}
end;

//004070CC
procedure TObject.BeforeDestruction;
begin
{*
 004070CC    ret
*}
end;

//004070D0
{*procedure TObject.Dispatch(var Message:?);
begin
 004070D0    push        edx
 004070D1    mov         dx,word ptr [edx]
 004070D4    or          dx,dx
>004070D7    je          004070F2
 004070D9    cmp         dx,0C000
>004070DE    jae         004070F2
 004070E0    push        eax
 004070E1    mov         eax,dword ptr [eax]
 004070E3    call        GetDynaMethod
 004070E8    mov         ecx,eax
 004070EA    pop         eax
 004070EB    test        ecx,ecx
>004070ED    je          004070F2
 004070EF    pop         edx
 004070F0    jmp         ecx
 004070F2    pop         edx
 004070F3    mov         ecx,dword ptr [eax]
 004070F5    jmp         dword ptr [ecx-10]
 004070F8    ret
end;*}

//004070FC
function UTF8Compare(const Str1:ShortString; const Str2:ShortString):Boolean;
begin
{*
 004070FC    push        ebx
 004070FD    push        esi
 004070FE    add         esp,0FFFFFC00
 00407104    mov         ebx,edx
 00407106    push        100
 0040710B    lea         edx,[esp+4]
 0040710F    push        edx
 00407110    movzx       edx,byte ptr [eax]
 00407113    push        edx
 00407114    inc         eax
 00407115    push        eax
 00407116    push        0
 00407118    push        0FDE9
 0040711D    call        kernel32.MultiByteToWideChar
 00407122    mov         esi,eax
 00407124    push        100
 00407129    lea         eax,[esp+204]
 00407130    push        eax
 00407131    movzx       eax,byte ptr [ebx]
 00407134    push        eax
 00407135    lea         eax,[ebx+1]
 00407138    push        eax
 00407139    push        0
 0040713B    push        0FDE9
 00407140    call        kernel32.MultiByteToWideChar
 00407145    mov         ebx,eax
 00407147    push        ebx
 00407148    lea         eax,[esp+204]
 0040714F    push        eax
 00407150    push        esi
 00407151    lea         eax,[esp+0C]
 00407155    push        eax
 00407156    push        1
 00407158    mov         eax,[007C5908]
 0040715D    push        eax
 0040715E    call        kernel32.CompareStringW
 00407163    cmp         eax,2
 00407166    sete        al
 00407169    add         esp,400
 0040716F    pop         esi
 00407170    pop         ebx
 00407171    ret
*}
end;

//00407174
function TObject.MethodAddress(Name:ShortString):Pointer;
begin
{*
 00407174    push        ebx
 00407175    push        esi
 00407176    push        edi
 00407177    xor         ecx,ecx
 00407179    xor         edi,edi
 0040717B    mov         bl,byte ptr [edx]
>0040717D    jmp         00407181
 0040717F    mov         eax,dword ptr [eax]
 00407181    mov         esi,dword ptr [eax-40]
 00407184    test        esi,esi
>00407186    je          004071A1
 00407188    mov         di,word ptr [esi]
 0040718B    test        edi,edi
>0040718D    je          004071A1
 0040718F    add         esi,2
 00407192    mov         cl,byte ptr [esi+6]
 00407195    cmp         cl,bl
>00407197    je          004071C2
 00407199    mov         cx,word ptr [esi]
 0040719C    add         esi,ecx
 0040719E    dec         edi
>0040719F    jne         00407192
 004071A1    mov         eax,dword ptr [eax-30]
 004071A4    test        eax,eax
>004071A6    jne         0040717F
>004071A8    jmp         004071E0
 004071AA    mov         bl,byte ptr [edx]
>004071AC    jmp         00407199
 004071AE    push        eax
 004071AF    push        edx
 004071B0    lea         eax,[esi+6]
 004071B3    call        UTF8Compare
 004071B8    xor         ecx,ecx
 004071BA    test        al,al
 004071BC    pop         edx
 004071BD    pop         eax
>004071BE    je          004071AA
>004071C0    jmp         004071DD
 004071C2    mov         ch,0
 004071C4    mov         bl,byte ptr [ecx+esi+6]
 004071C8    test        bl,80
>004071CB    jne         004071AE
 004071CD    xor         bl,byte ptr [ecx+edx]
 004071D0    test        bl,80
>004071D3    jne         004071AE
 004071D5    and         bl,0DF
>004071D8    jne         004071AA
 004071DA    dec         ecx
>004071DB    jne         004071C4
 004071DD    mov         eax,dword ptr [esi+2]
 004071E0    pop         edi
 004071E1    pop         esi
 004071E2    pop         ebx
 004071E3    ret
*}
end;

//004071E4
function UTF8ShortStringToString(const Str:ShortString):string;
begin
{*
 004071E4    push        ebx
 004071E5    push        esi
 004071E6    mov         esi,edx
 004071E8    mov         ebx,eax
 004071EA    mov         edx,esi
 004071EC    mov         eax,ebx
 004071EE    call        UTF8ToString
 004071F3    pop         esi
 004071F4    pop         ebx
 004071F5    ret
*}
end;

//004071F8
function TObject.MethodAddress(Name:string):Pointer;
begin
{*
 004071F8    push        ebx
 004071F9    push        esi
 004071FA    add         esp,0FFFFFF00
 00407200    mov         esi,edx
 00407202    mov         ebx,eax
 00407204    mov         edx,esp
 00407206    mov         eax,esi
 00407208    call        UTF8EncodeToShortString
 0040720D    mov         edx,esp
 0040720F    mov         eax,ebx
 00407211    call        TObject.MethodAddress
 00407216    add         esp,100
 0040721C    pop         esi
 0040721D    pop         ebx
 0040721E    ret
*}
end;

//00407220
function TObject.MethodName(Address:Pointer):string;
begin
{*
 00407220    push        esi
 00407221    push        edi
 00407222    push        ebx
 00407223    mov         edi,ecx
 00407225    xor         ebx,ebx
 00407227    xor         ecx,ecx
>00407229    jmp         0040722D
 0040722B    mov         eax,dword ptr [eax]
 0040722D    mov         esi,dword ptr [eax-40]
 00407230    test        esi,esi
>00407232    je          0040724B
 00407234    mov         cx,word ptr [esi]
 00407237    test        ecx,ecx
>00407239    je          0040724B
 0040723B    add         esi,2
 0040723E    cmp         edx,dword ptr [esi+2]
>00407241    je          0040725B
 00407243    mov         bx,word ptr [esi]
 00407246    add         esi,ebx
 00407248    dec         ecx
>00407249    jne         0040723E
 0040724B    mov         eax,dword ptr [eax-30]
 0040724E    test        eax,eax
>00407250    jne         0040722B
 00407252    lea         esi,ds:[40725A]
>00407258    jmp         0040725E
 0040725A    add         byte ptr [ebx-0F76F93A],al
 00407260    mov         edx,edi
 00407262    pop         ebx
 00407263    pop         edi
 00407264    pop         esi
>00407265    jmp         UTF8ShortStringToString
 0040726A    ret
*}
end;

//0040726C
function TObject.FieldAddress(Name:ShortString):Pointer;
begin
{*
 0040726C    push        ebx
 0040726D    push        esi
 0040726E    push        edi
 0040726F    xor         ecx,ecx
 00407271    xor         edi,edi
 00407273    mov         bl,byte ptr [edx]
 00407275    push        eax
 00407276    mov         eax,dword ptr [eax]
 00407278    mov         esi,dword ptr [eax-44]
 0040727B    test        esi,esi
>0040727D    je          00407297
 0040727F    mov         di,word ptr [esi]
 00407282    test        edi,edi
>00407284    je          00407297
 00407286    add         esi,6
 00407289    mov         cl,byte ptr [esi+6]
 0040728C    cmp         cl,bl
>0040728E    je          004072BC
 00407290    lea         esi,[ecx+esi+7]
 00407294    dec         edi
>00407295    jne         00407289
 00407297    mov         eax,dword ptr [eax-30]
 0040729A    test        eax,eax
>0040729C    jne         00407276
 0040729E    pop         edx
>0040729F    jmp         004072DA
 004072A1    mov         bl,byte ptr [edx]
 004072A3    mov         cl,byte ptr [esi+6]
>004072A6    jmp         00407290
 004072A8    push        eax
 004072A9    push        edx
 004072AA    lea         eax,[esi+6]
 004072AD    call        UTF8Compare
 004072B2    xor         ecx,ecx
 004072B4    test        al,al
 004072B6    pop         edx
 004072B7    pop         eax
>004072B8    je          004072A1
>004072BA    jmp         004072D5
 004072BC    mov         bl,byte ptr [ecx+esi+6]
 004072C0    test        bl,80
>004072C3    jne         004072A8
 004072C5    xor         bl,byte ptr [ecx+edx]
 004072C8    test        bl,80
>004072CB    jne         004072A8
 004072CD    and         bl,0DF
>004072D0    jne         004072A1
 004072D2    dec         ecx
>004072D3    jne         004072BC
 004072D5    mov         eax,dword ptr [esi]
 004072D7    pop         edx
 004072D8    add         eax,edx
 004072DA    pop         edi
 004072DB    pop         esi
 004072DC    pop         ebx
 004072DD    ret
*}
end;

//004072E0
function TObject.FieldAddress(Name:string):Pointer;
begin
{*
 004072E0    push        ebx
 004072E1    push        esi
 004072E2    add         esp,0FFFFFF00
 004072E8    mov         esi,edx
 004072EA    mov         ebx,eax
 004072EC    mov         edx,esp
 004072EE    mov         eax,esi
 004072F0    call        UTF8EncodeToShortString
 004072F5    mov         edx,esp
 004072F7    mov         eax,ebx
 004072F9    call        TObject.FieldAddress
 004072FE    add         esp,100
 00407304    pop         esi
 00407305    pop         ebx
 00407306    ret
*}
end;

//00407308
function @ClassCreate(InstanceOrVMT:Pointer; Alloc:ShortInt):Pointer;
begin
{*
 00407308    push        edx
 00407309    push        ecx
 0040730A    push        ebx
 0040730B    test        dl,dl
>0040730D    jl          00407312
 0040730F    call        dword ptr [eax-0C]
 00407312    xor         edx,edx
 00407314    lea         ecx,[esp+10]
 00407318    mov         ebx,dword ptr fs:[edx]
 0040731B    mov         dword ptr [ecx],ebx
 0040731D    mov         dword ptr [ecx+8],ebp
 00407320    mov         dword ptr [ecx+4],407331
 00407327    mov         dword ptr [ecx+0C],eax
 0040732A    mov         dword ptr fs:[edx],ecx
 0040732D    pop         ebx
 0040732E    pop         ecx
 0040732F    pop         edx
 00407330    ret
*}
end;

//00407358
procedure @ClassDestroy(const Instance:TObject);
begin
{*
 00407358    mov         edx,dword ptr [eax]
 0040735A    call        dword ptr [edx-8]
 0040735D    ret
*}
end;

//00407360
function @AfterConstruction(const Instance:TObject):TObject;
begin
{*
 00407360    push        ebp
 00407361    mov         ebp,esp
 00407363    push        ecx
 00407364    push        ebx
 00407365    push        esi
 00407366    push        edi
 00407367    mov         dword ptr [ebp-4],eax
 0040736A    xor         edx,edx
 0040736C    push        ebp
 0040736D    push        40738F
 00407372    push        dword ptr fs:[edx]
 00407375    mov         dword ptr fs:[edx],esp
 00407378    mov         eax,dword ptr [ebp-4]
 0040737B    mov         edx,dword ptr [eax]
 0040737D    call        dword ptr [edx-1C]
 00407380    mov         eax,dword ptr [ebp-4]
 00407383    pop         dword ptr fs:[0]
 0040738A    add         esp,8
>0040738D    jmp         004073A8
>0040738F    jmp         @HandleAnyException
 00407394    mov         dl,1
 00407396    mov         eax,dword ptr [ebp-4]
 00407399    call        @BeforeDestruction
 0040739E    call        @RaiseAgain
 004073A3    call        @DoneExcept
 004073A8    pop         edi
 004073A9    pop         esi
 004073AA    pop         ebx
 004073AB    pop         ecx
 004073AC    pop         ebp
 004073AD    ret
*}
end;

//004073B0
function @BeforeDestruction(const Instance:TObject; OuterMost:ShortInt):TObject;
begin
{*
 004073B0    test        dl,dl
>004073B2    jg          004073B5
 004073B4    ret
 004073B5    push        eax
 004073B6    push        edx
 004073B7    mov         edx,dword ptr [eax]
 004073B9    call        dword ptr [edx-18]
 004073BC    pop         edx
 004073BD    pop         eax
 004073BE    ret
*}
end;

//004073C0
procedure TMonitor.TSpinWait.SpinCycle;
begin
{*
 004073C0    push        ebx
 004073C1    push        esi
 004073C2    mov         ebx,eax
 004073C4    mov         eax,dword ptr [ebx]
 004073C6    cmp         eax,0A
>004073C9    jg          004073D4
 004073CB    cmp         dword ptr ds:[7C5064],1;CPUCount:Integer
>004073D2    jg          00407419
 004073D4    cmp         eax,0A
>004073D7    jl          004073E0
 004073D9    mov         ecx,eax
 004073DB    sub         ecx,0A
>004073DE    jmp         004073E2
 004073E0    mov         ecx,eax
 004073E2    mov         eax,ecx
 004073E4    mov         esi,14
 004073E9    cdq
 004073EA    idiv        eax,esi
 004073EC    cmp         edx,13
>004073EF    jne         004073FA
 004073F1    push        1
 004073F3    call        kernel32.Sleep
>004073F8    jmp         00407427
 004073FA    mov         eax,ecx
 004073FC    mov         ecx,5
 00407401    cdq
 00407402    idiv        eax,ecx
 00407404    cmp         edx,4
>00407407    jne         00407412
 00407409    push        0
 0040740B    call        kernel32.Sleep
>00407410    jmp         00407427
 00407412    call        kernel32.SwitchToThread
>00407417    jmp         00407427
 00407419    mov         ecx,eax
 0040741B    mov         eax,4
 00407420    shl         eax,cl
 00407422    call        TMonitor.Spin
 00407427    inc         dword ptr [ebx]
 00407429    cmp         dword ptr [ebx],0
>0040742C    jge         00407434
 0040742E    mov         dword ptr [ebx],0A
 00407434    pop         esi
 00407435    pop         ebx
 00407436    ret
*}
end;

//00407438
procedure TMonitor.TSpinLock.Enter;
begin
{*
 00407438    push        ebx
 00407439    push        esi
 0040743A    push        ecx
 0040743B    mov         esi,eax
 0040743D    xor         eax,eax
 0040743F    mov         dword ptr [esp],eax
 00407442    mov         ebx,dword ptr [esi]
 00407444    test        ebx,ebx
>00407446    jne         00407457
 00407448    mov         eax,ebx
 0040744A    mov         edx,1
 0040744F    lock cmpxchgdword ptr [esi],edx
 00407453    cmp         ebx,eax
>00407455    je          00407460
 00407457    mov         eax,esp
 00407459    call        TMonitor.TSpinWait.SpinCycle
>0040745E    jmp         00407442
 00407460    pop         edx
 00407461    pop         esi
 00407462    pop         ebx
 00407463    ret
*}
end;

//00407464
procedure TMonitor.TSpinLock.Exit;
begin
{*
 00407464    xor         edx,edx
 00407466    lock xchg   edx,dword ptr [eax]
 00407469    ret
*}
end;

//0040746C
procedure TMonitor.Spin;
begin
{*
 0040746C    cmp         eax,0
>0040746F    jle         00407479
 00407471    rep nop
 00407473    dec         eax
 00407474    cmp         eax,0
>00407477    jg          00407471
 00407479    ret
*}
end;

//0040747C
function TMonitor.GetCacheLineSize:Integer;
begin
{*
 0040747C    push        ebp
 0040747D    mov         ebp,esp
 0040747F    add         esp,0FFFFFFF8
 00407482    push        ebx
 00407483    xor         eax,eax
 00407485    mov         dword ptr [ebp-8],eax
 00407488    push        40753C
 0040748D    push        40755C
 00407492    call        kernel32.GetModuleHandleW
 00407497    push        eax
 00407498    call        kernel32.GetProcAddress
 0040749D    test        eax,eax
>0040749F    je          0040752F
 004074A5    lea         eax,[ebp-8]
 004074A8    push        eax
 004074A9    push        0
 004074AB    call        GetLogicalProcessorInformation
 004074B0    test        eax,eax
>004074B2    jne         0040752F
 004074B4    call        kernel32.GetLastError
 004074B9    cmp         eax,7A
>004074BC    jne         0040752F
 004074BE    mov         eax,dword ptr [ebp-8]
 004074C1    call        @GetMem
 004074C6    mov         dword ptr [ebp-4],eax
 004074C9    xor         edx,edx
 004074CB    push        ebp
 004074CC    push        407528
 004074D1    push        dword ptr fs:[edx]
 004074D4    mov         dword ptr fs:[edx],esp
 004074D7    lea         eax,[ebp-8]
 004074DA    push        eax
 004074DB    mov         eax,dword ptr [ebp-4]
 004074DE    push        eax
 004074DF    call        GetLogicalProcessorInformation
 004074E4    mov         eax,dword ptr [ebp-4]
 004074E7    cmp         dword ptr [ebp-8],0
>004074EB    jbe         00407512
 004074ED    cmp         word ptr [eax+4],2
>004074F2    jne         00407505
 004074F4    cmp         byte ptr [eax+8],1
>004074F8    jne         00407505
 004074FA    movzx       ebx,word ptr [eax+0A]
 004074FE    call        @TryFinallyExit
>00407503    jmp         00407534
 00407505    add         eax,18
 00407508    sub         dword ptr [ebp-8],18
 0040750C    cmp         dword ptr [ebp-8],0
>00407510    ja          004074ED
 00407512    xor         eax,eax
 00407514    pop         edx
 00407515    pop         ecx
 00407516    pop         ecx
 00407517    mov         dword ptr fs:[eax],edx
 0040751A    push        40752F
 0040751F    mov         eax,dword ptr [ebp-4]
 00407522    call        @FreeMem
 00407527    ret
>00407528    jmp         @HandleFinally
>0040752D    jmp         0040751F
 0040752F    mov         ebx,40
 00407534    mov         eax,ebx
 00407536    pop         ebx
 00407537    pop         ecx
 00407538    pop         ecx
 00407539    pop         ebp
 0040753A    ret
*}
end;

//00407578
procedure TMonitor.CheckMonitorSupport;
begin
{*
 00407578    cmp         dword ptr ds:[7C58FC],0;gvar_007C58FC
>0040757F    jne         00407588
 00407581    mov         al,1A
 00407583    call        Error
 00407588    ret
*}
end;

//0040758C
function TMonitor.CheckOwningThread:Cardinal;
begin
{*
 0040758C    push        ebx
 0040758D    mov         ebx,dword ptr [eax+8]
 00407590    call        kernel32.GetCurrentThreadId
 00407595    cmp         ebx,eax
>00407597    je          004075A0
 00407599    mov         al,19
 0040759B    call        Error
 004075A0    mov         eax,ebx
 004075A2    pop         ebx
 004075A3    ret
*}
end;

//004075A4
function TMonitor.Create:PMonitor;
begin
{*
 004075A4    cmp         dword ptr ds:[7C5000],0
>004075AB    jne         004075B9
 004075AD    call        TMonitor.GetCacheLineSize
 004075B2    lock xchg   eax,dword ptr ds:[7C5000]
 004075B9    cmp         dword ptr ds:[7C5064],1;CPUCount:Integer
>004075C0    jle         004075D7
 004075C2    cmp         dword ptr ds:[7C5004],0
>004075C9    jne         004075D7
 004075CB    mov         eax,3E8
 004075D0    lock xchg   eax,dword ptr ds:[7C5004]
 004075D7    cmp         dword ptr ds:[7C5000],1C
>004075DE    jle         004075EC
 004075E0    mov         eax,[007C5000]
 004075E5    call        AllocMem
>004075EA    jmp         004075F6
 004075EC    mov         eax,1C
 004075F1    call        AllocMem
 004075F6    mov         edx,dword ptr ds:[7C5004]
 004075FC    mov         dword ptr [eax+10],edx
 004075FF    ret
*}
end;

//00407600
procedure TMonitor.Destroy;
begin
{*
 00407600    call        TMonitor.GetFieldAddress
 00407605    mov         edx,dword ptr [eax]
 00407607    test        edx,edx
>00407609    je          00407616
 0040760B    xor         ecx,ecx
 0040760D    mov         dword ptr [eax],ecx
 0040760F    mov         eax,edx
 00407611    call        TMonitor.Destroy
 00407616    ret
*}
end;

//00407618
procedure TMonitor.Destroy;
begin
{*
 00407618    push        ebx
 00407619    push        esi
 0040761A    mov         ebx,eax
 0040761C    cmp         dword ptr ds:[7C58FC],0;gvar_007C58FC
>00407623    je          00407637
 00407625    cmp         dword ptr [ebx+0C],0
>00407629    je          00407637
 0040762B    mov         eax,dword ptr [ebx+0C]
 0040762E    mov         esi,dword ptr ds:[7C58FC];gvar_007C58FC
 00407634    call        dword ptr [esi+4]
 00407637    mov         eax,ebx
 00407639    call        @FreeMem
 0040763E    pop         esi
 0040763F    pop         ebx
 00407640    ret
*}
end;

//00407644
function TMonitor.Enter(Timeout:Cardinal):Boolean;
begin
{*
 00407644    push        ebx
 00407645    push        esi
 00407646    mov         esi,edx
 00407648    mov         ebx,eax
 0040764A    call        TMonitor.CheckMonitorSupport
 0040764F    mov         eax,ebx
 00407651    call        TMonitor.GetMonitor
 00407656    mov         edx,esi
 00407658    call        TMonitor.Enter
 0040765D    pop         esi
 0040765E    pop         ebx
 0040765F    ret
*}
end;

//00407660
function TMonitor.DequeueWaiter:PWaitingThread;
begin
{*
 00407660    push        ebp
 00407661    mov         ebp,esp
 00407663    add         esp,0FFFFFFF8
 00407666    mov         dword ptr [ebp-4],eax
 00407669    mov         eax,dword ptr [ebp-4]
 0040766C    add         eax,18
 0040766F    call        TMonitor.TSpinLock.Enter
 00407674    xor         ecx,ecx
 00407676    push        ebp
 00407677    push        4076D2
 0040767C    push        dword ptr fs:[ecx]
 0040767F    mov         dword ptr fs:[ecx],esp
 00407682    mov         eax,dword ptr [ebp-4]
 00407685    mov         eax,dword ptr [eax+14]
 00407688    mov         dword ptr [ebp-8],eax
 0040768B    cmp         dword ptr [ebp-8],0
>0040768F    je          0040769B
 00407691    mov         eax,dword ptr [ebp-8]
 00407694    mov         eax,dword ptr [eax]
 00407696    cmp         eax,dword ptr [ebp-8]
>00407699    jne         004076AA
 0040769B    mov         eax,dword ptr [ebp-4]
 0040769E    xor         edx,edx
 004076A0    mov         dword ptr [eax+14],edx
 004076A3    call        @TryFinallyExit
>004076A8    jmp         004076D9
 004076AA    mov         eax,dword ptr [ebp-4]
 004076AD    mov         eax,dword ptr [eax+14]
 004076B0    mov         edx,dword ptr [eax]
 004076B2    mov         dword ptr [ebp-8],edx
 004076B5    mov         edx,dword ptr [edx]
 004076B7    mov         dword ptr [eax],edx
 004076B9    xor         eax,eax
 004076BB    pop         edx
 004076BC    pop         ecx
 004076BD    pop         ecx
 004076BE    mov         dword ptr fs:[eax],edx
 004076C1    push        4076D9
 004076C6    mov         eax,dword ptr [ebp-4]
 004076C9    add         eax,18
 004076CC    call        TMonitor.TSpinLock.Exit
 004076D1    ret
>004076D2    jmp         @HandleFinally
>004076D7    jmp         004076C6
 004076D9    mov         eax,dword ptr [ebp-8]
 004076DC    pop         ecx
 004076DD    pop         ecx
 004076DE    pop         ebp
 004076DF    ret
*}
end;

//004076E0
function TMonitor.Enter(Timeout:Cardinal):Boolean;
begin
{*
 004076E0    push        ebx
 004076E1    push        esi
 004076E2    push        edi
 004076E3    push        ebp
 004076E4    add         esp,0FFFFFFF0
 004076E7    mov         edi,edx
 004076E9    mov         esi,eax
 004076EB    mov         ebp,dword ptr [esi+10]
 004076EE    mov         eax,esi
 004076F0    call        TMonitor.TryEnter
 004076F5    mov         byte ptr [esp],al
 004076F8    cmp         byte ptr [esp],0
>004076FC    jne         0040786A
 00407702    test        edi,edi
>00407704    je          0040786A
 0040770A    mov         byte ptr [esp+1],0
 0040770F    test        ebp,ebp
>00407711    jle         004077AA
 00407717    call        kernel32.GetTickCount
 0040771C    mov         dword ptr [esp+4],eax
 00407720    xor         eax,eax
 00407722    mov         dword ptr [esp+0C],eax
 00407726    test        ebp,ebp
>00407728    jle         00407785
 0040772A    cmp         edi,0FFFFFFFF
>0040772D    je          00407745
 0040772F    call        kernel32.GetTickCount
 00407734    sub         eax,dword ptr [esp+4]
 00407738    cmp         edi,eax
>0040773A    ja          00407745
 0040773C    mov         byte ptr [esp],0
>00407740    jmp         0040786A
 00407745    mov         ebx,dword ptr [esi]
 00407747    cmp         ebx,1
>0040774A    jg          00407785
 0040774C    test        ebx,ebx
>0040774E    jne         00407777
 00407750    xor         eax,eax
 00407752    mov         edx,1
 00407757    lock cmpxchgdword ptr [esi],edx
 0040775B    test        eax,eax
>0040775D    jne         00407777
 0040775F    call        kernel32.GetCurrentThreadId
 00407764    mov         dword ptr [esi+8],eax
 00407767    mov         dword ptr [esi+4],1
 0040776E    mov         byte ptr [esp],1
>00407772    jmp         0040786A
 00407777    lea         eax,[esp+0C]
 0040777B    call        TMonitor.TSpinWait.SpinCycle
 00407780    dec         ebp
 00407781    test        ebp,ebp
>00407783    jg          0040772A
 00407785    cmp         edi,0FFFFFFFF
>00407788    je          004077AA
 0040778A    call        kernel32.GetTickCount
 0040778F    mov         dword ptr [esp+8],eax
 00407793    mov         eax,dword ptr [esp+8]
 00407797    sub         eax,dword ptr [esp+4]
 0040779B    cmp         edi,eax
>0040779D    ja          004077A8
 0040779F    mov         byte ptr [esp],0
>004077A3    jmp         0040786A
 004077A8    sub         edi,eax
 004077AA    mov         ebx,dword ptr [esi]
 004077AC    test        ebx,ebx
>004077AE    je          004076EE
 004077B4    lea         edx,[ebx+2]
 004077B7    mov         eax,ebx
 004077B9    lock cmpxchgdword ptr [esi],edx
 004077BD    cmp         ebx,eax
>004077BF    jne         004077AA
 004077C1    call        kernel32.GetTickCount
 004077C6    mov         dword ptr [esp+4],eax
 004077CA    mov         eax,esi
 004077CC    call        TMonitor.GetEvent
 004077D1    mov         edx,eax
 004077D3    mov         ebx,dword ptr ds:[7C58FC];gvar_007C58FC
 004077D9    mov         ecx,edi
 004077DB    xor         eax,eax
 004077DD    call        dword ptr [ebx+10]
 004077E0    test        eax,eax
 004077E2    sete        byte ptr [esp]
 004077E6    cmp         edi,0FFFFFFFF
>004077E9    je          0040780E
 004077EB    call        kernel32.GetTickCount
 004077F0    mov         dword ptr [esp+8],eax
 004077F4    mov         eax,dword ptr [esp+8]
 004077F8    sub         eax,dword ptr [esp+4]
 004077FC    cmp         edi,eax
>004077FE    jbe         0040780C
 00407800    mov         eax,dword ptr [esp+8]
 00407804    sub         eax,dword ptr [esp+4]
 00407808    sub         edi,eax
>0040780A    jmp         0040780E
 0040780C    xor         edi,edi
 0040780E    cmp         byte ptr [esp],0
>00407812    je          00407834
 00407814    mov         ebx,dword ptr [esi]
 00407816    test        bl,1
>00407819    jne         0040784A
 0040781B    mov         edx,ebx
 0040781D    sub         edx,2
 00407820    or          edx,1
 00407823    mov         eax,ebx
 00407825    lock cmpxchgdword ptr [esi],edx
 00407829    cmp         ebx,eax
>0040782B    jne         00407814
 0040782D    mov         byte ptr [esp+1],1
>00407832    jmp         0040784A
 00407834    mov         ebx,dword ptr [esi]
 00407836    mov         edx,ebx
 00407838    sub         edx,2
 0040783B    mov         eax,ebx
 0040783D    lock cmpxchgdword ptr [esi],edx
 00407841    cmp         ebx,eax
>00407843    jne         00407834
 00407845    mov         byte ptr [esp+1],1
 0040784A    cmp         byte ptr [esp+1],0
>0040784F    je          004077C1
 00407855    cmp         byte ptr [esp],0
>00407859    je          0040786A
 0040785B    call        kernel32.GetCurrentThreadId
 00407860    mov         dword ptr [esi+8],eax
 00407863    mov         dword ptr [esi+4],1
 0040786A    movzx       eax,byte ptr [esp]
 0040786E    add         esp,10
 00407871    pop         ebp
 00407872    pop         edi
 00407873    pop         esi
 00407874    pop         ebx
 00407875    ret
*}
end;

//00407878
procedure TMonitor.Exit;
begin
{*
 00407878    push        ebx
 00407879    push        esi
 0040787A    mov         esi,eax
 0040787C    mov         eax,esi
 0040787E    call        TMonitor.CheckOwningThread
 00407883    dec         dword ptr [esi+4]
 00407886    cmp         dword ptr [esi+4],0
>0040788A    jne         004078BC
 0040788C    xor         eax,eax
 0040788E    mov         dword ptr [esi+8],eax
 00407891    mov         ebx,dword ptr [esi]
 00407893    mov         edx,ebx
 00407895    dec         edx
 00407896    mov         eax,ebx
 00407898    lock cmpxchgdword ptr [esi],edx
 0040789C    cmp         ebx,eax
>0040789E    jne         00407891
 004078A0    test        ebx,0FFFFFFFE
>004078A6    je          004078BC
 004078A8    mov         eax,esi
 004078AA    call        TMonitor.GetEvent
 004078AF    mov         ebx,dword ptr ds:[7C58FC];gvar_007C58FC
 004078B5    xor         ecx,ecx
 004078B7    xor         edx,edx
 004078B9    call        dword ptr [ebx+10]
 004078BC    pop         esi
 004078BD    pop         ebx
 004078BE    ret
*}
end;

//004078C0
procedure TMonitor.Exit;
begin
{*
 004078C0    push        ebx
 004078C1    mov         ebx,eax
 004078C3    call        TMonitor.CheckMonitorSupport
 004078C8    mov         eax,ebx
 004078CA    call        TMonitor.GetMonitor
 004078CF    call        TMonitor.Exit
 004078D4    pop         ebx
 004078D5    ret
*}
end;

//004078D8
function TMonitor.GetEvent:Pointer;
begin
{*
 004078D8    push        ebx
 004078D9    push        esi
 004078DA    push        edi
 004078DB    push        ebp
 004078DC    mov         ebp,eax
 004078DE    mov         esi,1
 004078E3    mov         ebx,dword ptr [ebp+0C]
 004078E6    test        ebx,ebx
>004078E8    jne         00407931
 004078EA    mov         ebx,dword ptr ds:[7C58FC];gvar_007C58FC
 004078F0    call        dword ptr [ebx]
 004078F2    mov         edi,eax
 004078F4    xor         eax,eax
 004078F6    lock cmpxchgdword ptr [ebp+0C],edi
 004078FB    mov         ebx,eax
 004078FD    test        ebx,ebx
>004078FF    jne         00407905
 00407901    mov         ebx,edi
>00407903    jmp         00407914
 00407905    test        edi,edi
>00407907    je          00407914
 00407909    mov         edx,dword ptr ds:[7C58FC];gvar_007C58FC
 0040790F    mov         eax,edi
 00407911    call        dword ptr [edx+4]
 00407914    test        ebx,ebx
>00407916    jne         00407931
 00407918    push        esi
 00407919    call        kernel32.Sleep
 0040791E    cmp         esi,200
>00407924    jle         0040792D
 00407926    mov         esi,1
>0040792B    jmp         004078EA
 0040792D    add         esi,esi
>0040792F    jmp         004078EA
 00407931    mov         eax,ebx
 00407933    pop         ebp
 00407934    pop         edi
 00407935    pop         esi
 00407936    pop         ebx
 00407937    ret
*}
end;

//00407938
function TMonitor.GetFieldAddress:PPMonitor;
begin
{*
 00407938    mov         edx,dword ptr [eax]
 0040793A    add         edx,0FFFFFFCC
 0040793D    mov         edx,dword ptr [edx]
 0040793F    add         edx,eax
 00407941    sub         edx,4
 00407944    mov         eax,edx
 00407946    ret
*}
end;

//00407948
function TMonitor.GetMonitor:PMonitor;
begin
{*
 00407948    push        ebx
 00407949    push        esi
 0040794A    call        TMonitor.GetFieldAddress
 0040794F    mov         esi,eax
 00407951    mov         ebx,dword ptr [esi]
 00407953    test        ebx,ebx
>00407955    jne         00407975
 00407957    call        TMonitor.Create
 0040795C    mov         edx,eax
 0040795E    xor         eax,eax
 00407960    lock cmpxchgdword ptr [esi],edx
 00407964    mov         ebx,eax
 00407966    test        ebx,ebx
>00407968    jne         0040796E
 0040796A    mov         ebx,edx
>0040796C    jmp         00407975
 0040796E    mov         eax,edx
 00407970    call        @FreeMem
 00407975    mov         eax,ebx
 00407977    pop         esi
 00407978    pop         ebx
 00407979    ret
*}
end;

//0040797C
procedure TMonitor.Pulse;
begin
{*
 0040797C    push        ebx
 0040797D    call        TMonitor.DequeueWaiter
 00407982    test        eax,eax
>00407984    je          00407996
 00407986    mov         ebx,dword ptr ds:[7C58FC];gvar_007C58FC
 0040798C    xor         ecx,ecx
 0040798E    xor         edx,edx
 00407990    mov         eax,dword ptr [eax+8]
 00407993    call        dword ptr [ebx+10]
 00407996    pop         ebx
 00407997    ret
*}
end;

//00407998
procedure TMonitor.Pulse;
begin
{*
 00407998    push        ebx
 00407999    mov         ebx,eax
 0040799B    call        TMonitor.CheckMonitorSupport
 004079A0    mov         eax,ebx
 004079A2    call        TMonitor.GetMonitor
 004079A7    call        TMonitor.Pulse
 004079AC    pop         ebx
 004079AD    ret
*}
end;

//004079B0
procedure TMonitor.PulseAll;
begin
{*
 004079B0    push        ebx
 004079B1    push        esi
 004079B2    push        edi
 004079B3    mov         esi,eax
 004079B5    mov         eax,esi
 004079B7    call        TMonitor.DequeueWaiter
 004079BC    mov         ebx,eax
 004079BE    test        ebx,ebx
>004079C0    je          004079DF
 004079C2    mov         edi,dword ptr ds:[7C58FC];gvar_007C58FC
 004079C8    xor         ecx,ecx
 004079CA    xor         edx,edx
 004079CC    mov         eax,dword ptr [ebx+8]
 004079CF    call        dword ptr [edi+10]
 004079D2    mov         eax,esi
 004079D4    call        TMonitor.DequeueWaiter
 004079D9    mov         ebx,eax
 004079DB    test        ebx,ebx
>004079DD    jne         004079C2
 004079DF    pop         edi
 004079E0    pop         esi
 004079E1    pop         ebx
 004079E2    ret
*}
end;

//004079E4
procedure TMonitor.PulseAll;
begin
{*
 004079E4    push        ebx
 004079E5    mov         ebx,eax
 004079E7    call        TMonitor.CheckMonitorSupport
 004079EC    mov         eax,ebx
 004079EE    call        TMonitor.GetMonitor
 004079F3    call        TMonitor.PulseAll
 004079F8    pop         ebx
 004079F9    ret
*}
end;

//004079FC
procedure TMonitor.QueueWaiter(var WaitingThread:TWaitingThread);
begin
{*
 004079FC    push        ebp
 004079FD    mov         ebp,esp
 004079FF    push        ecx
 00407A00    push        ebx
 00407A01    mov         ebx,edx
 00407A03    mov         dword ptr [ebp-4],eax
 00407A06    mov         eax,dword ptr [ebp-4]
 00407A09    add         eax,18
 00407A0C    call        TMonitor.TSpinLock.Enter
 00407A11    xor         edx,edx
 00407A13    push        ebp
 00407A14    push        407A5E
 00407A19    push        dword ptr fs:[edx]
 00407A1C    mov         dword ptr fs:[edx],esp
 00407A1F    mov         eax,dword ptr [ebp-4]
 00407A22    mov         eax,dword ptr [eax+14]
 00407A25    test        eax,eax
>00407A27    jne         00407A33
 00407A29    mov         eax,dword ptr [ebp-4]
 00407A2C    mov         dword ptr [eax+14],ebx
 00407A2F    mov         dword ptr [ebx],ebx
>00407A31    jmp         00407A45
 00407A33    mov         eax,dword ptr [eax]
 00407A35    mov         dword ptr [ebx],eax
 00407A37    mov         eax,dword ptr [ebp-4]
 00407A3A    mov         eax,dword ptr [eax+14]
 00407A3D    mov         dword ptr [eax],ebx
 00407A3F    mov         eax,dword ptr [ebp-4]
 00407A42    mov         dword ptr [eax+14],ebx
 00407A45    xor         eax,eax
 00407A47    pop         edx
 00407A48    pop         ecx
 00407A49    pop         ecx
 00407A4A    mov         dword ptr fs:[eax],edx
 00407A4D    push        407A65
 00407A52    mov         eax,dword ptr [ebp-4]
 00407A55    add         eax,18
 00407A58    call        TMonitor.TSpinLock.Exit
 00407A5D    ret
>00407A5E    jmp         @HandleFinally
>00407A63    jmp         00407A52
 00407A65    pop         ebx
 00407A66    pop         ecx
 00407A67    pop         ebp
 00407A68    ret
*}
end;

//00407A6C
procedure TMonitor.RemoveWaiter(var WaitingThread:TWaitingThread);
begin
{*
 00407A6C    push        ebp
 00407A6D    mov         ebp,esp
 00407A6F    push        ecx
 00407A70    push        ebx
 00407A71    push        esi
 00407A72    mov         ebx,edx
 00407A74    mov         dword ptr [ebp-4],eax
 00407A77    mov         eax,dword ptr [ebp-4]
 00407A7A    cmp         dword ptr [eax+14],0
>00407A7E    je          00407B09
 00407A84    mov         eax,dword ptr [ebp-4]
 00407A87    add         eax,18
 00407A8A    call        TMonitor.TSpinLock.Enter
 00407A8F    xor         esi,esi
 00407A91    push        ebp
 00407A92    push        407B02
 00407A97    push        dword ptr fs:[esi]
 00407A9A    mov         dword ptr fs:[esi],esp
 00407A9D    mov         eax,dword ptr [ebp-4]
 00407AA0    mov         eax,dword ptr [eax+14]
 00407AA3    test        eax,eax
>00407AA5    je          00407AE9
 00407AA7    mov         edx,eax
 00407AA9    mov         eax,dword ptr [edx]
>00407AAB    jmp         00407ABB
 00407AAD    cmp         eax,ebx
>00407AAF    jne         00407AB7
 00407AB1    mov         ecx,dword ptr [eax]
 00407AB3    mov         dword ptr [edx],ecx
>00407AB5    jmp         00407AC3
 00407AB7    mov         edx,eax
 00407AB9    mov         eax,dword ptr [eax]
 00407ABB    mov         ecx,dword ptr [ebp-4]
 00407ABE    cmp         eax,dword ptr [ecx+14]
>00407AC1    jne         00407AAD
 00407AC3    mov         ecx,dword ptr [ebp-4]
 00407AC6    cmp         eax,dword ptr [ecx+14]
>00407AC9    jne         00407AE9
 00407ACB    cmp         eax,ebx
>00407ACD    jne         00407AE9
 00407ACF    mov         ecx,dword ptr [eax]
 00407AD1    cmp         eax,ecx
>00407AD3    jne         00407ADF
 00407AD5    mov         eax,dword ptr [ebp-4]
 00407AD8    xor         edx,edx
 00407ADA    mov         dword ptr [eax+14],edx
>00407ADD    jmp         00407AE9
 00407ADF    mov         ebx,ecx
 00407AE1    mov         eax,dword ptr [ebp-4]
 00407AE4    mov         dword ptr [eax+14],ebx
 00407AE7    mov         dword ptr [edx],ebx
 00407AE9    xor         eax,eax
 00407AEB    pop         edx
 00407AEC    pop         ecx
 00407AED    pop         ecx
 00407AEE    mov         dword ptr fs:[eax],edx
 00407AF1    push        407B09
 00407AF6    mov         eax,dword ptr [ebp-4]
 00407AF9    add         eax,18
 00407AFC    call        TMonitor.TSpinLock.Exit
 00407B01    ret
>00407B02    jmp         @HandleFinally
>00407B07    jmp         00407AF6
 00407B09    pop         esi
 00407B0A    pop         ebx
 00407B0B    pop         ecx
 00407B0C    pop         ebp
 00407B0D    ret
*}
end;

//00407B10
procedure TMonitor.SetSpinCount(ASpinCount:Integer);
begin
{*
 00407B10    push        ebx
 00407B11    mov         ebx,edx
 00407B13    cmp         dword ptr ds:[7C5064],1;CPUCount:Integer
>00407B1A    jle         00407B25
 00407B1C    call        TMonitor.GetMonitor
 00407B21    lock xchg   ebx,dword ptr [eax+10]
 00407B25    pop         ebx
 00407B26    ret
*}
end;

//00407B28
function TMonitor.TryEnter:Boolean;
begin
{*
 00407B28    push        ebx
 00407B29    mov         ebx,eax
 00407B2B    call        TMonitor.CheckMonitorSupport
 00407B30    mov         eax,ebx
 00407B32    call        TMonitor.GetMonitor
 00407B37    call        TMonitor.TryEnter
 00407B3C    pop         ebx
 00407B3D    ret
*}
end;

//00407B40
function TMonitor.TryEnter:Boolean;
begin
{*
 00407B40    push        ebx
 00407B41    mov         ebx,eax
 00407B43    call        kernel32.GetCurrentThreadId
 00407B48    cmp         eax,dword ptr [ebx+8]
>00407B4B    jne         00407B54
 00407B4D    inc         dword ptr [ebx+4]
 00407B50    mov         al,1
 00407B52    pop         ebx
 00407B53    ret
 00407B54    cmp         dword ptr [ebx],0
>00407B57    jne         00407B7B
 00407B59    xor         eax,eax
 00407B5B    mov         edx,1
 00407B60    lock cmpxchgdword ptr [ebx],edx
 00407B64    test        eax,eax
>00407B66    jne         00407B7B
 00407B68    call        kernel32.GetCurrentThreadId
 00407B6D    mov         dword ptr [ebx+8],eax
 00407B70    mov         dword ptr [ebx+4],1
 00407B77    mov         al,1
>00407B79    jmp         00407B7D
 00407B7B    xor         eax,eax
 00407B7D    pop         ebx
 00407B7E    ret
*}
end;

//00407B80
function TMonitor.Wait(ALock:PMonitor; Timeout:Cardinal):Boolean;
begin
{*
 00407B80    push        ebp
 00407B81    mov         ebp,esp
 00407B83    add         esp,0FFFFFFE8
 00407B86    push        ebx
 00407B87    push        esi
 00407B88    push        edi
 00407B89    mov         dword ptr [ebp-4],ecx
 00407B8C    mov         ebx,edx
 00407B8E    mov         esi,eax
 00407B90    xor         eax,eax
 00407B92    mov         dword ptr [ebp-18],eax
 00407B95    mov         eax,ebx
 00407B97    call        TMonitor.CheckOwningThread
 00407B9C    mov         dword ptr [ebp-14],eax
 00407B9F    mov         edi,dword ptr ds:[7C58FC];gvar_007C58FC
 00407BA5    call        dword ptr [edi+8]
 00407BA8    mov         dword ptr [ebp-10],eax
 00407BAB    xor         eax,eax
 00407BAD    push        ebp
 00407BAE    push        407C22
 00407BB3    push        dword ptr fs:[eax]
 00407BB6    mov         dword ptr fs:[eax],esp
 00407BB9    mov         eax,dword ptr [ebx+4]
 00407BBC    mov         dword ptr [ebp-0C],eax
 00407BBF    lea         edx,[ebp-18]
 00407BC2    mov         eax,esi
 00407BC4    call        TMonitor.QueueWaiter
 00407BC9    mov         dword ptr [ebx+4],1
 00407BD0    mov         eax,ebx
 00407BD2    call        TMonitor.Exit
 00407BD7    mov         edi,dword ptr ds:[7C58FC];gvar_007C58FC
 00407BDD    mov         ecx,dword ptr [ebp-4]
 00407BE0    mov         edx,dword ptr [ebp-10]
 00407BE3    xor         eax,eax
 00407BE5    call        dword ptr [edi+10]
 00407BE8    test        eax,eax
 00407BEA    sete        byte ptr [ebp-5]
 00407BEE    mov         eax,ebx
 00407BF0    or          edx,0FFFFFFFF
 00407BF3    call        TMonitor.Enter
 00407BF8    lea         edx,[ebp-18]
 00407BFB    mov         eax,esi
 00407BFD    call        TMonitor.RemoveWaiter
 00407C02    mov         eax,dword ptr [ebp-0C]
 00407C05    mov         dword ptr [ebx+4],eax
 00407C08    xor         eax,eax
 00407C0A    pop         edx
 00407C0B    pop         ecx
 00407C0C    pop         ecx
 00407C0D    mov         dword ptr fs:[eax],edx
 00407C10    push        407C29
 00407C15    mov         ebx,dword ptr ds:[7C58FC];gvar_007C58FC
 00407C1B    mov         eax,dword ptr [ebp-10]
 00407C1E    call        dword ptr [ebx+0C]
 00407C21    ret
>00407C22    jmp         @HandleFinally
>00407C27    jmp         00407C15
 00407C29    movzx       eax,byte ptr [ebp-5]
 00407C2D    pop         edi
 00407C2E    pop         esi
 00407C2F    pop         ebx
 00407C30    mov         esp,ebp
 00407C32    pop         ebp
 00407C33    ret
*}
end;

//00407C34
function TMonitor.Wait(Timeout:Cardinal):Boolean;
begin
{*
 00407C34    push        ebx
 00407C35    push        esi
 00407C36    mov         esi,edx
 00407C38    mov         ebx,eax
 00407C3A    call        TMonitor.CheckMonitorSupport
 00407C3F    mov         eax,ebx
 00407C41    call        TMonitor.GetMonitor
 00407C46    mov         edx,eax
 00407C48    mov         ecx,esi
 00407C4A    xchg        eax,edx
 00407C4B    call        TMonitor.Wait
 00407C50    pop         esi
 00407C51    pop         ebx
 00407C52    ret
*}
end;

//00407C54
function TMonitor.Wait(const ALock:TObject; Timeout:Cardinal):Boolean;
begin
{*
 00407C54    push        ebx
 00407C55    push        esi
 00407C56    push        edi
 00407C57    mov         edi,ecx
 00407C59    mov         esi,edx
 00407C5B    mov         ebx,eax
 00407C5D    call        TMonitor.CheckMonitorSupport
 00407C62    mov         eax,esi
 00407C64    call        TMonitor.GetMonitor
 00407C69    push        eax
 00407C6A    mov         eax,ebx
 00407C6C    call        TMonitor.GetMonitor
 00407C71    mov         ecx,edi
 00407C73    pop         edx
 00407C74    call        TMonitor.Wait
 00407C79    pop         edi
 00407C7A    pop         esi
 00407C7B    pop         ebx
 00407C7C    ret
*}
end;

//00407C80
procedure NotifyReRaise;
begin
{*
 00407C80    cmp         byte ptr ds:[79E030],1
>00407C87    jbe         00407C9A
 00407C89    push        0
 00407C8B    push        0
 00407C8D    push        0
 00407C8F    push        0EEDFADF
 00407C94    call        dword ptr ds:[7C501C]
 00407C9A    ret
*}
end;

//00407C9C
procedure NotifyNonDelphiException;
begin
{*
 00407C9C    cmp         byte ptr ds:[79E030],0
>00407CA3    je          00407CBC
 00407CA5    push        eax
 00407CA6    push        eax
 00407CA7    push        edx
 00407CA8    push        esp
 00407CA9    push        2
 00407CAB    push        0
 00407CAD    push        0EEDFAE4
 00407CB2    call        dword ptr ds:[7C501C]
 00407CB8    add         esp,8
 00407CBB    pop         eax
 00407CBC    ret
*}
end;

//00407CC0
procedure NotifyExcept;
begin
{*
 00407CC0    push        esp
 00407CC1    push        1
 00407CC3    push        0
 00407CC5    push        0EEDFAE0
 00407CCA    call        dword ptr ds:[7C501C]
 00407CD0    add         esp,4
 00407CD3    pop         eax
 00407CD4    ret
*}
end;

//00407CD8
procedure NotifyOnExcept;
begin
{*
 00407CD8    cmp         byte ptr ds:[79E030],1
>00407CDF    jbe         00407CEA
 00407CE1    push        eax
 00407CE2    push        dword ptr [ebx+4]
>00407CE5    jmp         NotifyExcept
 00407CEA    ret
*}
end;

//00407CEC
procedure NotifyAnyExcept;
begin
{*
 00407CEC    cmp         byte ptr ds:[79E030],1
>00407CF3    jbe         00407CFC
 00407CF5    push        eax
 00407CF6    push        ebx
>00407CF7    jmp         NotifyExcept
 00407CFC    ret
*}
end;

//00407D00
procedure CheckJmp;
begin
{*
 00407D00    test        ecx,ecx
>00407D02    je          00407D1D
 00407D04    mov         eax,dword ptr [ecx+1]
 00407D07    cmp         byte ptr [ecx],0E9
>00407D0A    je          00407D18
 00407D0C    cmp         byte ptr [ecx],0EB
>00407D0F    jne         00407D1D
 00407D11    movsx       eax,al
 00407D14    inc         ecx
 00407D15    inc         ecx
>00407D16    jmp         00407D1B
 00407D18    add         ecx,5
 00407D1B    add         ecx,eax
 00407D1D    ret
*}
end;

//00407D20
procedure NotifyExceptFinally;
begin
{*
 00407D20    cmp         byte ptr ds:[79E030],1
>00407D27    jbe         00407D46
 00407D29    push        eax
 00407D2A    push        edx
 00407D2B    push        ecx
 00407D2C    call        CheckJmp
 00407D31    push        ecx
 00407D32    push        esp
 00407D33    push        1
 00407D35    push        0
 00407D37    push        0EEDFAE1
 00407D3C    call        dword ptr ds:[7C501C]
 00407D42    pop         ecx
 00407D43    pop         ecx
 00407D44    pop         edx
 00407D45    pop         eax
 00407D46    ret
*}
end;

//00407D48
procedure NotifyTerminate;
begin
{*
 00407D48    cmp         byte ptr ds:[79E030],1
>00407D4F    jbe         00407D63
 00407D51    push        edx
 00407D52    push        esp
 00407D53    push        1
 00407D55    push        0
 00407D57    push        0EEDFAE2
 00407D5C    call        dword ptr ds:[7C501C]
 00407D62    pop         edx
 00407D63    ret
*}
end;

//00407D64
procedure NotifyUnhandled;
begin
{*
 00407D64    push        eax
 00407D65    push        edx
 00407D66    cmp         byte ptr ds:[79E030],1
>00407D6D    jbe         00407D7F
 00407D6F    push        esp
 00407D70    push        2
 00407D72    push        0
 00407D74    push        0EEDFAE3
 00407D79    call        dword ptr ds:[7C501C]
 00407D7F    pop         edx
 00407D80    pop         eax
 00407D81    ret
*}
end;

//00407D84
procedure @HandleAnyException;
begin
{*
 00407D84    mov         eax,dword ptr [esp+4]
 00407D88    test        dword ptr [eax+4],6
>00407D8F    jne         00407EA8
 00407D95    cmp         dword ptr [eax],0EEDFADE
 00407D9B    mov         edx,dword ptr [eax+18]
 00407D9E    mov         ecx,dword ptr [eax+14]
>00407DA1    je          00407E11
 00407DA3    cld
 00407DA4    call        @FpuInit
 00407DA9    mov         edx,dword ptr ds:[7C5018];gvar_007C5018
 00407DAF    test        edx,edx
>00407DB1    je          00407EA8
 00407DB7    call        edx
 00407DB9    test        eax,eax
>00407DBB    je          00407EA8
 00407DC1    mov         edx,dword ptr [esp+0C]
 00407DC5    mov         ecx,dword ptr [esp+4]
 00407DC9    cmp         dword ptr [ecx],0EEFFACE
>00407DCF    je          00407E08
 00407DD1    call        NotifyNonDelphiException
 00407DD6    cmp         byte ptr ds:[79E031],0
>00407DDD    jbe         00407E08
 00407DDF    cmp         byte ptr ds:[79E030],0
>00407DE6    ja          00407E08
 00407DE8    lea         ecx,[esp+4]
 00407DEC    push        eax
 00407DED    push        ecx
 00407DEE    call        kernel32.UnhandledExceptionFilter
 00407DF3    cmp         eax,0
 00407DF6    pop         eax
>00407DF7    je          00407EA8
 00407DFD    mov         edx,eax
 00407DFF    mov         eax,dword ptr [esp+4]
 00407E03    mov         ecx,dword ptr [eax+0C]
>00407E06    jmp         00407E38
 00407E08    mov         edx,eax
 00407E0A    mov         eax,dword ptr [esp+4]
 00407E0E    mov         ecx,dword ptr [eax+0C]
 00407E11    cmp         byte ptr ds:[79E031],1
>00407E18    jbe         00407E38
 00407E1A    cmp         byte ptr ds:[79E030],0
>00407E21    ja          00407E38
 00407E23    push        eax
 00407E24    lea         eax,[esp+8]
 00407E28    push        edx
 00407E29    push        ecx
 00407E2A    push        eax
 00407E2B    call        kernel32.UnhandledExceptionFilter
 00407E30    cmp         eax,0
 00407E33    pop         ecx
 00407E34    pop         edx
 00407E35    pop         eax
>00407E36    je          00407EA8
 00407E38    or          dword ptr [eax+4],2
 00407E3C    push        ebx
 00407E3D    xor         ebx,ebx
 00407E3F    push        esi
 00407E40    push        edi
 00407E41    push        ebp
 00407E42    mov         ebx,dword ptr fs:[ebx]
 00407E45    push        ebx
 00407E46    push        eax
 00407E47    push        edx
 00407E48    push        ecx
 00407E49    mov         edx,dword ptr [esp+28]
 00407E4D    push        0
 00407E4F    push        eax
 00407E50    push        407E5C
 00407E55    push        edx
 00407E56    call        dword ptr ds:[7C5020]
 00407E5C    mov         edi,dword ptr [esp+28]
 00407E60    call        @GetTls
 00407E65    push        dword ptr [eax+0];{RaiseListPtr:Pointer}
 00407E6B    mov         dword ptr [eax+0],esp;{RaiseListPtr:Pointer}
 00407E71    mov         ebp,dword ptr [edi+8]
 00407E74    mov         ebx,dword ptr [edi+4]
 00407E77    mov         dword ptr [edi+4],407E88
 00407E7E    add         ebx,5
 00407E81    call        NotifyAnyExcept
 00407E86    jmp         ebx
>00407E88    jmp         @HandleFinallyInternal
 00407E8D    call        @GetTls
 00407E92    mov         ecx,dword ptr [eax+0];{RaiseListPtr:Pointer}
 00407E98    mov         edx,dword ptr [ecx]
 00407E9A    mov         dword ptr [eax+0],edx;{RaiseListPtr:Pointer}
 00407EA0    mov         eax,dword ptr [ecx+8]
>00407EA3    jmp         TObject.Free
 00407EA8    mov         eax,1
 00407EAD    ret
*}
end;

//00407EB0
procedure @HandleOnException;
begin
{*
 00407EB0    mov         eax,dword ptr [esp+4]
 00407EB4    test        dword ptr [eax+4],6
>00407EBB    jne         00408030
 00407EC1    cmp         dword ptr [eax],0EEDFADE
>00407EC7    je          00407EE8
 00407EC9    cld
 00407ECA    call        @FpuInit
 00407ECF    mov         edx,dword ptr ds:[7C5014];gvar_007C5014
 00407ED5    test        edx,edx
>00407ED7    je          00408030
 00407EDD    call        edx
 00407EDF    test        eax,eax
>00407EE1    jne         00407EED
>00407EE3    jmp         00408030
 00407EE8    mov         eax,dword ptr [eax+18]
 00407EEB    mov         eax,dword ptr [eax]
 00407EED    mov         edx,dword ptr [esp+8]
 00407EF1    push        ebx
 00407EF2    push        esi
 00407EF3    push        edi
 00407EF4    push        ebp
 00407EF5    mov         ecx,dword ptr [edx+4]
 00407EF8    mov         ebx,dword ptr [ecx+5]
 00407EFB    lea         esi,[ecx+9]
 00407EFE    mov         ebp,eax
 00407F00    mov         eax,dword ptr [esi]
 00407F02    test        eax,eax
>00407F04    je          00407F49
 00407F06    mov         edi,ebp
>00407F08    jmp         00407F0C
 00407F0A    mov         edi,dword ptr [edi]
 00407F0C    mov         eax,dword ptr [eax]
 00407F0E    cmp         eax,edi
>00407F10    je          00407F49
 00407F12    mov         ecx,dword ptr [eax-34]
 00407F15    cmp         ecx,dword ptr [edi-34]
>00407F18    jne         00407F31
 00407F1A    mov         eax,dword ptr [eax-38]
 00407F1D    mov         edx,dword ptr [edi-38]
 00407F20    xor         ecx,ecx
 00407F22    mov         cl,byte ptr [eax]
 00407F24    cmp         cl,byte ptr [edx]
>00407F26    jne         00407F31
 00407F28    inc         eax
 00407F29    inc         edx
 00407F2A    call        @AStrCmp
>00407F2F    je          00407F49
 00407F31    mov         edi,dword ptr [edi-30]
 00407F34    mov         eax,dword ptr [esi]
 00407F36    test        edi,edi
>00407F38    jne         00407F0A
 00407F3A    add         esi,8
 00407F3D    dec         ebx
>00407F3E    jne         00407F00
 00407F40    pop         ebp
 00407F41    pop         edi
 00407F42    pop         esi
 00407F43    pop         ebx
>00407F44    jmp         00408030
 00407F49    mov         eax,dword ptr [esp+14]
 00407F4D    cmp         dword ptr [eax],0EEDFADE
 00407F53    mov         edx,dword ptr [eax+18]
 00407F56    mov         ecx,dword ptr [eax+14]
>00407F59    je          00407F9C
 00407F5B    call        dword ptr ds:[7C5018]
 00407F61    mov         edx,dword ptr [esp+1C]
 00407F65    call        NotifyNonDelphiException
 00407F6A    cmp         byte ptr ds:[79E031],0
>00407F71    jbe         00407F91
 00407F73    cmp         byte ptr ds:[79E030],0
>00407F7A    ja          00407F91
 00407F7C    lea         ecx,[esp+14]
 00407F80    push        eax
 00407F81    push        ecx
 00407F82    call        kernel32.UnhandledExceptionFilter
 00407F87    cmp         eax,0
 00407F8A    pop         eax
>00407F8B    je          00408030
 00407F91    mov         edx,eax
 00407F93    mov         eax,dword ptr [esp+14]
 00407F97    mov         ecx,dword ptr [eax+0C]
>00407F9A    jmp         00407FC3
 00407F9C    cmp         byte ptr ds:[79E031],1
>00407FA3    jbe         00407FC3
 00407FA5    cmp         byte ptr ds:[79E030],0
>00407FAC    ja          00407FC3
 00407FAE    push        eax
 00407FAF    lea         eax,[esp+18]
 00407FB3    push        edx
 00407FB4    push        ecx
 00407FB5    push        eax
 00407FB6    call        kernel32.UnhandledExceptionFilter
 00407FBB    cmp         eax,0
 00407FBE    pop         ecx
 00407FBF    pop         edx
 00407FC0    pop         eax
>00407FC1    je          00408030
 00407FC3    xor         ebx,ebx
 00407FC5    mov         ebx,dword ptr fs:[ebx]
 00407FC8    push        ebx
 00407FC9    push        eax
 00407FCA    push        edx
 00407FCB    push        ecx
 00407FCC    mov         edx,dword ptr [esp+28]
 00407FD0    or          dword ptr [eax+4],2
 00407FD4    push        esi
 00407FD5    push        0
 00407FD7    push        eax
 00407FD8    push        407FE4
 00407FDD    push        edx
 00407FDE    call        dword ptr ds:[7C5020]
 00407FE4    pop         ebx
 00407FE5    mov         edi,dword ptr [esp+28]
 00407FE9    call        @GetTls
 00407FEE    push        dword ptr [eax+0];{RaiseListPtr:Pointer}
 00407FF4    mov         dword ptr [eax+0],esp;{RaiseListPtr:Pointer}
 00407FFA    mov         ebp,dword ptr [edi+8]
 00407FFD    mov         dword ptr [edi+4],408010
 00408004    mov         eax,dword ptr [esp+8]
 00408008    call        NotifyOnExcept
 0040800D    jmp         dword ptr [ebx+4]
>00408010    jmp         @HandleFinallyInternal
 00408015    call        @GetTls
 0040801A    mov         ecx,dword ptr [eax+0];{RaiseListPtr:Pointer}
 00408020    mov         edx,dword ptr [ecx]
 00408022    mov         dword ptr [eax+0],edx;{RaiseListPtr:Pointer}
 00408028    mov         eax,dword ptr [ecx+8]
>0040802B    jmp         TObject.Free
 00408030    mov         eax,1
 00408035    ret
*}
end;

//00408038
procedure @HandleFinally;
begin
{*
 00408038    mov         eax,dword ptr [esp+4]
 0040803C    test        dword ptr [eax+4],6
>00408043    je          004080D8
 00408049    push        ebx
 0040804A    xor         ebx,ebx
 0040804C    push        esi
 0040804D    push        edi
 0040804E    push        ebp
 0040804F    push        ebp
 00408050    push        4080B8
 00408055    push        dword ptr fs:[ebx]
 00408058    mov         dword ptr fs:[ebx],esp
 0040805B    mov         ebx,dword ptr fs:[ebx]
 0040805E    mov         edx,dword ptr [eax+18]
 00408061    mov         ecx,dword ptr [eax+14]
 00408064    push        ebx
 00408065    push        eax
 00408066    push        edx
 00408067    push        ecx
 00408068    mov         edi,dword ptr [esp+34]
 0040806C    call        @GetTls
 00408071    push        dword ptr [eax+0];{RaiseListPtr:Pointer}
 00408077    mov         dword ptr [eax+0],esp;{RaiseListPtr:Pointer}
 0040807D    mov         ecx,dword ptr [edi+4]
 00408080    mov         ebp,dword ptr [edi+8]
 00408083    mov         dword ptr [edi+4],4080B8
 0040808A    add         ecx,5
 0040808D    call        NotifyExceptFinally
 00408092    call        ecx
 00408094    call        @GetTls
 00408099    mov         ecx,dword ptr [eax+0];{RaiseListPtr:Pointer}
 0040809F    mov         edx,dword ptr [ecx]
 004080A1    mov         dword ptr [eax+0],edx;{RaiseListPtr:Pointer}
 004080A7    add         esp,14
 004080AA    xor         eax,eax
 004080AC    pop         edx
 004080AD    pop         ecx
 004080AE    pop         ecx
 004080AF    mov         dword ptr fs:[eax],edx
 004080B2    pop         ebp
 004080B3    pop         edi
 004080B4    pop         esi
 004080B5    pop         ebx
>004080B6    jmp         004080D8
>004080B8    jmp         @HandleFinallyInternal
 004080BD    call        @GetTls
 004080C2    mov         ecx,dword ptr [eax+0];{RaiseListPtr:Pointer}
 004080C8    mov         edx,dword ptr [ecx]
 004080CA    mov         dword ptr [eax+0],edx;{RaiseListPtr:Pointer}
 004080D0    mov         eax,dword ptr [ecx+8]
>004080D3    jmp         TObject.Free
 004080D8    mov         eax,1
 004080DD    ret
*}
end;

//004080E0
procedure @HandleFinallyInternal;
begin
{*
 004080E0    mov         eax,dword ptr [esp+4]
 004080E4    mov         edx,dword ptr [esp+8]
 004080E8    test        dword ptr [eax+4],6
>004080EF    je          00408110
 004080F1    mov         ecx,dword ptr [edx+4]
 004080F4    mov         dword ptr [edx+4],408110
 004080FB    push        ebx
 004080FC    push        esi
 004080FD    push        edi
 004080FE    push        ebp
 004080FF    mov         ebp,dword ptr [edx+8]
 00408102    add         ecx,5
 00408105    call        NotifyExceptFinally
 0040810A    call        ecx
 0040810C    pop         ebp
 0040810D    pop         edi
 0040810E    pop         esi
 0040810F    pop         ebx
 00408110    mov         eax,1
 00408115    ret
*}
end;

//00408118
procedure @HandleAutoException;
begin
{*
 00408118    mov         eax,dword ptr [esp+4]
 0040811C    test        dword ptr [eax+4],6
>00408123    jne         004081D4
 00408129    cmp         dword ptr [eax],0EEDFADE
 0040812F    cld
 00408130    call        @FpuInit
>00408135    je          0040815E
 00408137    cmp         byte ptr ds:[79E031],0
>0040813E    jbe         0040815E
 00408140    cmp         byte ptr ds:[79E030],0
>00408147    ja          0040815E
 00408149    lea         eax,[esp+4]
 0040814D    push        eax
 0040814E    call        kernel32.UnhandledExceptionFilter
 00408153    cmp         eax,0
>00408156    je          004081D4
 00408158    mov         eax,dword ptr [esp+4]
>0040815C    jmp         00408170
 0040815E    cmp         byte ptr ds:[79E031],1
>00408165    jbe         00408170
 00408167    cmp         byte ptr ds:[79E030],0
>0040816E    jbe         00408149
 00408170    or          dword ptr [eax+4],2
 00408174    push        esi
 00408175    push        edi
 00408176    push        ebp
 00408177    mov         edx,dword ptr [esp+14]
 0040817B    push        0
 0040817D    push        eax
 0040817E    push        40818A
 00408183    push        edx
 00408184    call        dword ptr ds:[7C5020]
 0040818A    pop         ebp
 0040818B    pop         edi
 0040818C    pop         esi
 0040818D    mov         eax,dword ptr [esp+4]
 00408191    mov         ebx,8000FFFF
 00408196    cmp         dword ptr [eax],0EEDFADE
>0040819C    jne         004081C2
 0040819E    mov         edx,dword ptr [eax+18]
 004081A1    mov         ecx,dword ptr [eax+14]
 004081A4    mov         eax,dword ptr [esp+8]
 004081A8    mov         eax,dword ptr [eax+0C]
 004081AB    test        eax,eax
>004081AD    je          004081B6
 004081AF    mov         ebx,dword ptr [eax]
 004081B1    call        dword ptr [ebx-20]
 004081B4    mov         ebx,eax
 004081B6    mov         eax,dword ptr [esp+4]
 004081BA    mov         eax,dword ptr [eax+18]
 004081BD    call        TObject.Free
 004081C2    xor         eax,eax
 004081C4    mov         esp,dword ptr [esp+8]
 004081C8    pop         ecx
 004081C9    mov         dword ptr fs:[eax],ecx
 004081CC    pop         edx
 004081CD    pop         ebp
 004081CE    lea         edx,[edx+5]
 004081D1    pop         ecx
 004081D2    jmp         edx
 004081D4    mov         eax,1
 004081D9    ret
*}
end;

//004081DC
procedure @RaiseExcept;
begin
{*
 004081DC    or          eax,eax
>004081DE    jne         004081EA
 004081E0    mov         eax,0D8
 004081E5    call        @RunError
 004081EA    pop         edx
 004081EB    push        esp
 004081EC    push        ebp
 004081ED    push        edi
 004081EE    push        esi
 004081EF    push        ebx
 004081F0    push        eax
 004081F1    push        edx
 004081F2    mov         eax,esp
 004081F4    push        esp
 004081F5    push        7
 004081F7    push        1
 004081F9    push        0EEDFADE
 004081FE    push        edx
 004081FF    mov         edx,dword ptr ds:[7C5024];gvar_007C5024
 00408205    test        edx,edx
>00408207    je          00408242
 00408209    push        dword ptr [eax+18]
 0040820C    push        dword ptr [eax+14]
 0040820F    push        dword ptr [eax+10]
 00408212    push        dword ptr [eax+0C]
 00408215    push        dword ptr [eax+8]
 00408218    push        dword ptr [eax+4]
 0040821B    push        dword ptr [eax]
 0040821D    push        7
 0040821F    push        dword ptr [eax]
 00408221    push        eax
 00408222    push        edx
 00408223    call        RaiseList
 00408228    mov         ecx,eax
 0040822A    pop         edx
 0040822B    pop         eax
 0040822C    test        ecx,ecx
>0040822E    je          00408233
 00408230    mov         ecx,dword ptr [ecx+0C]
 00408233    push        ecx
 00408234    push        1
 00408236    push        0EEDFADE
 0040823B    mov         eax,esp
 0040823D    call        edx
 0040823F    add         esp,30
 00408242    jmp         dword ptr ds:[7C501C]
 00408242    dd          00408DC3
*}
end;

//0040824C
procedure @RaiseAgain;
begin
{*
 0040824C    mov         eax,dword ptr [esp+30]
 00408250    mov         dword ptr [eax+4],408297
 00408257    call        @GetTls
 0040825C    mov         edx,dword ptr [eax+0];{RaiseListPtr:Pointer}
 00408262    mov         ecx,dword ptr [edx]
 00408264    mov         dword ptr [eax+0],ecx;{RaiseListPtr:Pointer}
 0040826A    mov         eax,dword ptr [edx+0C]
 0040826D    and         dword ptr [eax+4],0FFFFFFFD
 00408271    cmp         dword ptr [eax],0EEDFADE
>00408277    je          00408286
 00408279    mov         eax,dword ptr [edx+8]
 0040827C    call        TObject.Free
 00408281    call        NotifyReRaise
 00408286    xor         eax,eax
 00408288    add         esp,14
 0040828B    mov         edx,dword ptr fs:[eax]
 0040828E    pop         ecx
 0040828F    mov         edx,dword ptr [edx]
 00408291    mov         dword ptr [ecx],edx
 00408293    pop         ebp
 00408294    pop         edi
 00408295    pop         esi
 00408296    pop         ebx
 00408297    mov         eax,1
 0040829C    ret
*}
end;

//004082A0
procedure @DoneExcept;
begin
{*
 004082A0    call        @GetTls
 004082A5    mov         edx,dword ptr [eax+0];{RaiseListPtr:Pointer}
 004082AB    mov         ecx,dword ptr [edx]
 004082AD    mov         dword ptr [eax+0],ecx;{RaiseListPtr:Pointer}
 004082B3    mov         eax,dword ptr [edx+8]
 004082B6    call        TObject.Free
 004082BB    pop         edx
 004082BC    mov         esp,dword ptr [esp+2C]
 004082C0    xor         eax,eax
 004082C2    pop         ecx
 004082C3    mov         dword ptr fs:[eax],ecx
 004082C6    pop         eax
 004082C7    pop         ebp
 004082C8    call        NotifyTerminate
 004082CD    jmp         edx
 004082CF    ret
*}
end;

//004082D0
procedure @TryFinallyExit;
begin
{*
 004082D0    xor         edx,edx
 004082D2    mov         ecx,dword ptr [esp+8]
 004082D6    mov         eax,dword ptr [esp+4]
 004082DA    add         ecx,5
 004082DD    mov         dword ptr fs:[edx],eax
 004082E0    call        ecx
 004082E2    ret         0C
*}
end;

//004082E8
procedure MapToRunError(P:PExceptionRecord); stdcall;
begin
{*
 004082E8    push        ebp
 004082E9    mov         ebp,esp
 004082EB    mov         edx,dword ptr [ebp+8]
 004082EE    mov         eax,dword ptr [edx]
 004082F0    cmp         eax,0C0000092
>004082F5    jg          00408323
>004082F7    je          00408355
 004082F9    cmp         eax,0C000008E
>004082FE    jg          00408315
>00408300    je          00408359
 00408302    sub         eax,0C0000005
>00408307    je          00408365
 00408309    sub         eax,87
>0040830E    je          0040834D
 00408310    dec         eax
>00408311    je          00408361
>00408313    jmp         00408375
 00408315    add         eax,3FFFFF71
 0040831A    sub         eax,2
>0040831D    jb          00408355
>0040831F    je          00408351
>00408321    jmp         00408375
 00408323    cmp         eax,0C0000096
>00408328    jg          0040833B
>0040832A    je          00408369
 0040832C    sub         eax,0C0000093
>00408331    je          00408361
 00408333    dec         eax
>00408334    je          00408349
 00408336    dec         eax
>00408337    je          0040835D
>00408339    jmp         00408375
 0040833B    sub         eax,0C00000FD
>00408340    je          00408371
 00408342    sub         eax,3D
>00408345    je          0040836D
>00408347    jmp         00408375
 00408349    mov         al,0C8
>0040834B    jmp         00408377
 0040834D    mov         al,0C9
>0040834F    jmp         00408377
 00408351    mov         al,0CD
>00408353    jmp         00408377
 00408355    mov         al,0CF
>00408357    jmp         00408377
 00408359    mov         al,0C8
>0040835B    jmp         00408377
 0040835D    mov         al,0D7
>0040835F    jmp         00408377
 00408361    mov         al,0CE
>00408363    jmp         00408377
 00408365    mov         al,0D8
>00408367    jmp         00408377
 00408369    mov         al,0DA
>0040836B    jmp         00408377
 0040836D    mov         al,0D9
>0040836F    jmp         00408377
 00408371    mov         al,0CA
>00408373    jmp         00408377
 00408375    mov         al,0FF
 00408377    movzx       eax,al
 0040837A    mov         edx,dword ptr [edx+0C]
 0040837D    call        RunErrorAt
 00408382    pop         ebp
 00408383    ret         4
*}
end;

//00408388
procedure @ExceptionHandler;
begin
{*
 00408388    mov         eax,dword ptr [esp+4]
 0040838C    test        dword ptr [eax+4],6
>00408393    jne         00408422
 00408399    cmp         byte ptr ds:[79E030],0
>004083A0    ja          004083B1
 004083A2    lea         eax,[esp+4]
 004083A6    push        eax
 004083A7    call        kernel32.UnhandledExceptionFilter
 004083AC    cmp         eax,0
>004083AF    je          00408422
 004083B1    mov         eax,dword ptr [esp+4]
 004083B5    cld
 004083B6    call        @FpuInit
 004083BB    mov         edx,dword ptr [esp+8]
 004083BF    push        0
 004083C1    push        eax
 004083C2    push        4083CE
 004083C7    push        edx
 004083C8    call        dword ptr ds:[7C5020]
 004083CE    mov         ebx,dword ptr [esp+4]
 004083D2    cmp         dword ptr [ebx],0EEDFADE
 004083D8    mov         edx,dword ptr [ebx+14]
 004083DB    mov         eax,dword ptr [ebx+18]
>004083DE    je          004083FD
 004083E0    mov         edx,dword ptr ds:[7C5018];gvar_007C5018
 004083E6    test        edx,edx
>004083E8    je          004082E8
 004083EE    mov         eax,ebx
 004083F0    call        edx
 004083F2    test        eax,eax
>004083F4    je          004082E8
 004083FA    mov         edx,dword ptr [ebx+0C]
 004083FD    call        NotifyUnhandled
 00408402    mov         ecx,dword ptr ds:[7C500C];gvar_007C500C
 00408408    test        ecx,ecx
>0040840A    je          0040840E
 0040840C    call        ecx
 0040840E    mov         ecx,dword ptr [esp+4]
 00408412    mov         eax,0D9
 00408417    mov         edx,dword ptr [ecx+14]
 0040841A    mov         dword ptr [esp],edx
>0040841D    jmp         @RunError
 00408422    xor         eax,eax
 00408424    ret
*}
end;

//00408428
procedure SetExceptionHandler(Context:PInitContext);
begin
{*
 00408428    push        eax
 00408429    xor         edx,edx
 0040842B    lea         eax,[ebp-10]
 0040842E    mov         ecx,dword ptr fs:[edx]
 00408431    mov         dword ptr fs:[edx],eax
 00408434    mov         dword ptr [eax],ecx
 00408436    mov         dword ptr [eax+4],408388;@ExceptionHandler
 0040843D    mov         dword ptr [eax+8],ebp
 00408440    pop         ecx
 00408441    mov         dword ptr [ecx+4],eax
 00408444    ret
*}
end;

//00408448
procedure UnsetExceptionHandler(Context:PInitContext);
begin
{*
 00408448    mov         eax,dword ptr [eax+4]
 0040844B    xor         edx,edx
 0040844D    test        eax,eax
>0040844F    je          0040846D
 00408451    mov         ecx,dword ptr fs:[edx]
 00408454    cmp         eax,ecx
>00408456    jne         00408460
 00408458    mov         eax,dword ptr [eax]
 0040845A    mov         dword ptr fs:[edx],eax
 0040845D    ret
 0040845E    mov         ecx,dword ptr [ecx]
 00408460    cmp         ecx,0FFFFFFFF
>00408463    je          0040846D
 00408465    cmp         dword ptr [ecx],eax
>00408467    jne         0040845E
 00408469    mov         eax,dword ptr [eax]
 0040846B    mov         dword ptr [ecx],eax
 0040846D    ret
*}
end;

//00408470
procedure FinalizeUnits;
begin
{*
 00408470    push        ebp
 00408471    mov         ebp,esp
 00408473    push        ebx
 00408474    push        esi
 00408475    push        edi
 00408476    mov         eax,[007C7B24]
 0040847B    test        eax,eax
>0040847D    je          004084D2
 0040847F    mov         ebx,dword ptr ds:[7C7B28]
 00408485    mov         edi,dword ptr [eax+4]
 00408488    xor         eax,eax
 0040848A    push        ebp
 0040848B    push        4084BE
 00408490    push        dword ptr fs:[eax]
 00408493    mov         dword ptr fs:[eax],esp
 00408496    test        ebx,ebx
>00408498    jle         004084B4
 0040849A    dec         ebx
 0040849B    mov         dword ptr ds:[7C7B28],ebx
 004084A1    mov         esi,dword ptr [edi+ebx*8+4]
 004084A5    test        esi,esi
>004084A7    je          004084B0
 004084A9    cmp         dword ptr [esi],0
>004084AC    je          004084B0
 004084AE    call        esi
 004084B0    test        ebx,ebx
>004084B2    jg          0040849A
 004084B4    xor         eax,eax
 004084B6    pop         edx
 004084B7    pop         ecx
 004084B8    pop         ecx
 004084B9    mov         dword ptr fs:[eax],edx
>004084BC    jmp         004084D2
>004084BE    jmp         @HandleAnyException
 004084C3    call        FinalizeUnits
 004084C8    call        @RaiseAgain
 004084CD    call        @DoneExcept
 004084D2    pop         edi
 004084D3    pop         esi
 004084D4    pop         ebx
 004084D5    pop         ebp
 004084D6    ret
*}
end;

//004084D8
procedure InitUnits;
begin
{*
 004084D8    push        ebp
 004084D9    mov         ebp,esp
 004084DB    push        ecx
 004084DC    push        ebx
 004084DD    push        esi
 004084DE    push        edi
 004084DF    mov         eax,[007C7B24]
 004084E4    test        eax,eax
>004084E6    je          0040853E
 004084E8    mov         edi,dword ptr [eax]
 004084EA    xor         ebx,ebx
 004084EC    mov         eax,dword ptr [eax+4]
 004084EF    mov         dword ptr [ebp-4],eax
 004084F2    xor         eax,eax
 004084F4    push        ebp
 004084F5    push        40852A
 004084FA    push        dword ptr fs:[eax]
 004084FD    mov         dword ptr fs:[eax],esp
 00408500    cmp         edi,ebx
>00408502    jle         00408520
 00408504    mov         eax,dword ptr [ebp-4]
 00408507    mov         esi,dword ptr [eax+ebx*8]
 0040850A    inc         ebx
 0040850B    mov         dword ptr ds:[7C7B28],ebx
 00408511    test        esi,esi
>00408513    je          0040851C
 00408515    cmp         dword ptr [esi],0
>00408518    je          0040851C
 0040851A    call        esi
 0040851C    cmp         edi,ebx
>0040851E    jg          00408504
 00408520    xor         eax,eax
 00408522    pop         edx
 00408523    pop         ecx
 00408524    pop         ecx
 00408525    mov         dword ptr fs:[eax],edx
>00408528    jmp         0040853E
>0040852A    jmp         @HandleAnyException
 0040852F    call        FinalizeUnits
 00408534    call        @RaiseAgain
 00408539    call        @DoneExcept
 0040853E    pop         edi
 0040853F    pop         esi
 00408540    pop         ebx
 00408541    pop         ecx
 00408542    pop         ebp
 00408543    ret
*}
end;

//00408544
procedure @StartExe(InitTable:PackageInfo; Module:PLibModule);
begin
{*
 00408544    mov         dword ptr ds:[7C501C],403310
 0040854E    mov         dword ptr ds:[7C5020],403318
 00408558    mov         [007C7B24],eax
 0040855D    xor         eax,eax
 0040855F    mov         [007C7B28],eax
 00408564    mov         dword ptr ds:[7C7B2C],edx
 0040856A    mov         eax,dword ptr [edx+4]
 0040856D    mov         [007C5040],eax
 00408572    mov         eax,7C7B1C
 00408577    call        SetExceptionHandler
 0040857C    mov         byte ptr ds:[7C5048],0
 00408583    call        InitUnits
 00408588    ret
*}
end;

//0040858C
function LoadResStringA(ResStringRec:PResStringRec):AnsiString;
begin
{*
 0040858C    push        ebp
 0040858D    mov         ebp,esp
 0040858F    push        0
 00408591    push        ebx
 00408592    push        esi
 00408593    mov         esi,edx
 00408595    mov         ebx,eax
 00408597    xor         eax,eax
 00408599    push        ebp
 0040859A    push        4085D4
 0040859F    push        dword ptr fs:[eax]
 004085A2    mov         dword ptr fs:[eax],esp
 004085A5    lea         edx,[ebp-4]
 004085A8    mov         eax,ebx
 004085AA    call        LoadResString
 004085AF    mov         edx,dword ptr [ebp-4]
 004085B2    mov         eax,esi
 004085B4    mov         ecx,0
 004085B9    call        @LStrFromUStr
 004085BE    xor         eax,eax
 004085C0    pop         edx
 004085C1    pop         ecx
 004085C2    pop         ecx
 004085C3    mov         dword ptr fs:[eax],edx
 004085C6    push        4085DB
 004085CB    lea         eax,[ebp-4]
 004085CE    call        @UStrClr
 004085D3    ret
>004085D4    jmp         @HandleFinally
>004085D9    jmp         004085CB
 004085DB    pop         esi
 004085DC    pop         ebx
 004085DD    pop         ecx
 004085DE    pop         ebp
 004085DF    ret
*}
end;

//004085E0
function LoadResStringW(ResStringRec:PResStringRec):WideString;
begin
{*
 004085E0    push        ebp
 004085E1    mov         ebp,esp
 004085E3    push        0
 004085E5    push        ebx
 004085E6    push        esi
 004085E7    mov         esi,edx
 004085E9    mov         ebx,eax
 004085EB    xor         eax,eax
 004085ED    push        ebp
 004085EE    push        408623
 004085F3    push        dword ptr fs:[eax]
 004085F6    mov         dword ptr fs:[eax],esp
 004085F9    lea         edx,[ebp-4]
 004085FC    mov         eax,ebx
 004085FE    call        LoadResString
 00408603    mov         edx,dword ptr [ebp-4]
 00408606    mov         eax,esi
 00408608    call        @WStrFromUStr
 0040860D    xor         eax,eax
 0040860F    pop         edx
 00408610    pop         ecx
 00408611    pop         ecx
 00408612    mov         dword ptr fs:[eax],edx
 00408615    push        40862A
 0040861A    lea         eax,[ebp-4]
 0040861D    call        @UStrClr
 00408622    ret
>00408623    jmp         @HandleFinally
>00408628    jmp         0040861A
 0040862A    pop         esi
 0040862B    pop         ebx
 0040862C    pop         ecx
 0040862D    pop         ebp
 0040862E    ret
*}
end;

//00408630
function LoadResStringU(ResStringRec:PResStringRec):string;
begin
{*
 00408630    push        ebx
 00408631    push        esi
 00408632    mov         esi,edx
 00408634    mov         ebx,eax
 00408636    mov         edx,esi
 00408638    mov         eax,ebx
 0040863A    call        LoadResString
 0040863F    pop         esi
 00408640    pop         ebx
 00408641    ret
*}
end;

//00408644
procedure @InitResStringImports(InitTable:Pointer);
begin
{*
 00408644    push        ebx
 00408645    xor         ebx,ebx
 00408647    push        edi
 00408648    push        esi
 00408649    mov         edi,dword ptr [eax+ebx]
 0040864C    lea         esi,[eax+ebx+4]
 00408650    mov         eax,dword ptr [esi+4]
 00408653    mov         eax,dword ptr [eax+ebx]
 00408656    mov         edx,dword ptr [esi]
 00408658    add         edx,ebx
 0040865A    mov         ecx,dword ptr [esi+8]
 0040865D    test        ecx,ecx
>0040865F    je          00408668
 00408661    dec         ecx
>00408662    je          0040866F
 00408664    dec         ecx
>00408665    je          00408676
 00408667    int         3
 00408668    call        LoadResStringA
>0040866D    jmp         0040867B
 0040866F    call        LoadResStringW
>00408674    jmp         0040867B
 00408676    call        LoadResStringU
 0040867B    add         esi,0C
 0040867E    dec         edi
>0040867F    jne         00408650
 00408681    pop         esi
 00408682    pop         edi
 00408683    pop         ebx
 00408684    ret
*}
end;

//00408688
procedure @InitImports(InitTable:Pointer);
begin
{*
 00408688    push        ebx
 00408689    xor         ebx,ebx
 0040868B    push        edi
 0040868C    push        esi
 0040868D    mov         edi,dword ptr [eax+ebx]
 00408690    lea         esi,[eax+ebx+4]
 00408694    mov         eax,dword ptr [esi+4]
 00408697    mov         edx,dword ptr [esi]
 00408699    mov         eax,dword ptr [eax+ebx]
 0040869C    add         eax,dword ptr [esi+8]
 0040869F    mov         dword ptr [edx+ebx],eax
 004086A2    add         esi,0C
 004086A5    dec         edi
>004086A6    jne         00408694
 004086A8    pop         esi
 004086A9    pop         edi
 004086AA    pop         ebx
 004086AB    ret
*}
end;

//004086AC
procedure @FinalizeResStringImports(InitTable:Pointer);
begin
{*
 004086AC    push        ebx
 004086AD    xor         ebx,ebx
 004086AF    push        edi
 004086B0    push        esi
 004086B1    mov         edi,dword ptr [eax+ebx]
 004086B4    lea         esi,[eax+ebx+4]
 004086B8    mov         eax,dword ptr [esi]
 004086BA    add         edx,ebx
 004086BC    mov         ecx,dword ptr [esi+8]
 004086BF    test        ecx,ecx
>004086C1    je          004086CA
 004086C3    dec         ecx
>004086C4    je          004086D1
 004086C6    dec         ecx
>004086C7    je          004086D8
 004086C9    int         3
 004086CA    call        @LStrClr
>004086CF    jmp         004086DD
 004086D1    call        @WStrClr
>004086D6    jmp         004086DD
 004086D8    call        @UStrClr
 004086DD    add         esi,0C
 004086E0    dec         edi
>004086E1    jne         004086B8
 004086E3    pop         esi
 004086E4    pop         edi
 004086E5    pop         ebx
 004086E6    ret
*}
end;

//004086E8
procedure MakeErrorMessage;
begin
{*
 004086E8    push        ebx
 004086E9    push        esi
 004086EA    push        edi
 004086EB    mov         edi,79E9D0
 004086F0    mov         bl,10
 004086F2    mov         esi,dword ptr ds:[79E000];gvar_0079E000:Integer
 004086F8    mov         eax,esi
 004086FA    mov         ecx,0A
 004086FF    cdq
 00408700    idiv        eax,ecx
 00408702    add         dl,30
 00408705    movzx       eax,bl
 00408708    mov         byte ptr [edi+eax],dl
 0040870B    mov         ecx,0A
 00408710    mov         eax,esi
 00408712    cdq
 00408713    idiv        eax,ecx
 00408715    mov         esi,eax
 00408717    dec         ebx
 00408718    test        esi,esi
>0040871A    jne         004086F8
 0040871C    mov         bl,1C
 0040871E    mov         eax,[0079E004]
 00408723    mov         edx,0F
 00408728    and         edx,eax
 0040872A    movzx       edx,byte ptr [edx+79E9EE]
 00408731    movzx       ecx,bl
 00408734    mov         byte ptr [edi+ecx],dl
 00408737    shr         eax,4
 0040873A    dec         ebx
 0040873B    test        eax,eax
>0040873D    jne         00408723
 0040873F    pop         edi
 00408740    pop         esi
 00408741    pop         ebx
 00408742    ret
*}
end;

//00408744
procedure ExitDll(Context:PInitContext);
begin
{*
 00408744    mov         edi,eax
 00408746    mov         ebx,dword ptr [edi+18]
 00408749    mov         ebp,dword ptr [edi+14]
 0040874C    push        dword ptr [edi+1C]
 0040874F    push        dword ptr [edi+20]
 00408752    mov         esi,dword ptr [edi]
 00408754    mov         ecx,0C
 00408759    rep movs    dword ptr [edi],dword ptr [esi]
 0040875B    pop         edi
 0040875C    pop         esi
 0040875D    xor         eax,eax
 0040875F    xchg        eax,dword ptr ds:[79E000];gvar_0079E000:Integer
 00408765    neg         eax
 00408767    sbb         eax,eax
 00408769    inc         eax
 0040876A    leave
 0040876B    ret         0C
*}
end;

//00408770
procedure WriteErrorMessage;
begin
{*
 00408770    push        ecx
 00408771    cmp         byte ptr ds:[7C505C],0;gvar_007C505C:Boolean
>00408778    je          004087D7
 0040877A    cmp         word ptr ds:[7C5348],0D7B2
>00408783    jne         00408799
 00408785    cmp         dword ptr ds:[7C5350],0
>0040878C    jbe         00408799
 0040878E    mov         eax,7C5344
 00408793    call        dword ptr ds:[7C5360]
 00408799    push        0
 0040879B    lea         eax,[esp+4]
 0040879F    push        eax
 004087A0    push        1D
 004087A2    push        79E9D0
 004087A7    push        0F5
 004087A9    call        kernel32.GetStdHandle
 004087AE    push        eax
 004087AF    call        kernel32.WriteFile
 004087B4    push        0
 004087B6    lea         eax,[esp+4]
 004087BA    push        eax
 004087BB    push        2
 004087BD    mov         eax,408804;#13+#10
 004087C2    call        @LStrToPChar
 004087C7    push        eax
 004087C8    push        0F5
 004087CA    call        kernel32.GetStdHandle
 004087CF    push        eax
 004087D0    call        kernel32.WriteFile
 004087D5    pop         edx
 004087D6    ret
 004087D7    cmp         byte ptr ds:[79E032],0
>004087DE    jne         004087F3
 004087E0    push        0
 004087E2    push        79E9CA
 004087E7    push        79E9D0
 004087EC    push        0
 004087EE    call        MessageBoxA
 004087F3    pop         edx
 004087F4    ret
*}
end;

//00408808
procedure @Halt0;
begin
{*
 00408808    push        ebx
 00408809    push        esi
 0040880A    push        edi
 0040880B    push        ebp
 0040880C    mov         esi,7C7B1C
 00408811    cmp         dword ptr ds:[79E004],0
>00408818    je          0040882B
 0040881A    call        MakeErrorMessage
 0040881F    call        WriteErrorMessage
 00408824    xor         eax,eax
 00408826    mov         [0079E004],eax
 0040882B    cmp         dword ptr ds:[7C7B50],0
>00408832    je          00408855
 00408834    call        kernel32.GetCurrentThreadId
 00408839    cmp         eax,dword ptr ds:[7C7B78]
>0040883F    jne         00408855
 00408841    mov         eax,7C7B4C
 00408846    call        UnsetExceptionHandler
 0040884B    mov         eax,7C7B4C
 00408850    call        ExitDll
 00408855    cmp         byte ptr [esi+28],0
>00408859    jne         0040887D
 0040885B    cmp         dword ptr ds:[7C5058],0;gvar_007C5058
>00408862    je          0040887D
 00408864    mov         eax,[007C5058];gvar_007C5058
 00408869    mov         ebx,eax
 0040886B    xor         eax,eax
 0040886D    mov         [007C5058],eax;gvar_007C5058
 00408872    call        ebx
 00408874    cmp         dword ptr ds:[7C5058],0;gvar_007C5058
>0040887B    jne         00408864
 0040887D    cmp         byte ptr [esi+28],2
>00408881    jne         00408891
 00408883    cmp         dword ptr ds:[79E000],0;gvar_0079E000:Integer
>0040888A    jne         00408891
 0040888C    xor         eax,eax
 0040888E    mov         dword ptr [esi+0C],eax
 00408891    cmp         byte ptr [esi+28],0
>00408895    jne         004088B4
 00408897    call        AcquireExceptionObject
 0040889C    mov         ebx,eax
 0040889E    test        ebx,ebx
>004088A0    je          004088B4
 004088A2    mov         eax,ebx
 004088A4    call        TObject.Free
 004088A9    call        AcquireExceptionObject
 004088AE    mov         ebx,eax
 004088B0    test        ebx,ebx
>004088B2    jne         004088A2
 004088B4    call        FinalizeUnits
 004088B9    cmp         byte ptr [esi+28],1
>004088BD    jbe         004088C8
 004088BF    cmp         dword ptr ds:[79E000],0;gvar_0079E000:Integer
>004088C6    je          004088EB
 004088C8    cmp         dword ptr [esi+10],0
>004088CC    je          004088EB
 004088CE    mov         eax,dword ptr [esi+10]
 004088D1    call        UnregisterModule
 004088D6    mov         edi,dword ptr [esi+10]
 004088D9    mov         ebp,dword ptr [edi+10]
 004088DC    cmp         ebp,dword ptr [edi+4]
>004088DF    je          004088EB
 004088E1    test        ebp,ebp
>004088E3    je          004088EB
 004088E5    push        ebp
 004088E6    call        kernel32.FreeLibrary
 004088EB    mov         eax,esi
 004088ED    call        UnsetExceptionHandler
 004088F2    cmp         byte ptr [esi+28],1
>004088F6    jne         004088FB
 004088F8    call        dword ptr [esi+24]
 004088FB    cmp         byte ptr [esi+28],0
>004088FF    je          00408908
 00408901    mov         eax,esi
 00408903    call        ExitDll
 00408908    cmp         dword ptr [esi],0
>0040890B    jne         00408927
 0040890D    cmp         dword ptr ds:[7C5038],0
>00408914    je          0040891C
 00408916    call        dword ptr ds:[7C5038]
 0040891C    mov         eax,[0079E000];gvar_0079E000:Integer
 00408921    push        eax
 00408922    call        kernel32.ExitProcess
 00408927    mov         eax,dword ptr [esi]
 00408929    push        esi
 0040892A    mov         edi,esi
 0040892C    mov         esi,eax
 0040892E    mov         ecx,0C
 00408933    rep movs    dword ptr [edi],dword ptr [esi]
 00408935    pop         esi
>00408936    jmp         0040887D
 0040893B    pop         ebp
 0040893C    pop         edi
 0040893D    pop         esi
 0040893E    pop         ebx
 0040893F    ret
*}
end;

//00408940
procedure @Halt(Code:Integer);
begin
{*
 00408940    mov         [0079E000],eax;gvar_0079E000:Integer
 00408945    call        @Halt0
 0040894A    ret
*}
end;

//0040894C
procedure @RunError(errorCode:Byte);
begin
{*
 0040894C    push        ebp
 0040894D    mov         ebp,esp
 0040894F    push        ecx
 00408950    mov         byte ptr [ebp-1],al
 00408953    mov         eax,dword ptr [ebp+4]
 00408956    mov         [0079E004],eax
 0040895B    movzx       eax,byte ptr [ebp-1]
 0040895F    call        @Halt
 00408964    pop         ecx
 00408965    pop         ebp
 00408966    ret
*}
end;

//00408968
procedure @Assert(Message:String; Filename:String; LineNumber:Integer);
begin
{*
 00408968    push        ebp
 00408969    mov         ebp,esp
 0040896B    add         esp,0FFFFFFF4
 0040896E    mov         dword ptr [ebp-0C],ecx
 00408971    mov         dword ptr [ebp-8],edx
 00408974    mov         dword ptr [ebp-4],eax
 00408977    cmp         dword ptr ds:[7C5034],0;gvar_007C5034
>0040897E    je          00408995
 00408980    mov         eax,dword ptr [ebp+4]
 00408983    push        eax
 00408984    mov         ecx,dword ptr [ebp-0C]
 00408987    mov         edx,dword ptr [ebp-8]
 0040898A    mov         eax,dword ptr [ebp-4]
 0040898D    call        dword ptr ds:[7C5034]
>00408993    jmp         0040899F
 00408995    mov         edx,dword ptr [ebp+4]
 00408998    mov         al,15
 0040899A    call        ErrorAt
 0040899F    mov         esp,ebp
 004089A1    pop         ebp
 004089A2    ret
*}
end;

//004089A4
function ThreadWrapper(Parameter:Pointer):Integer; stdcall;
begin
{*
 004089A4    push        ebp
 004089A5    mov         ebp,esp
 004089A7    call        @FpuInit
 004089AC    push        ebp
 004089AD    xor         ecx,ecx
 004089AF    push        408388;@ExceptionHandler
 004089B4    mov         edx,dword ptr fs:[ecx]
 004089B7    push        edx
 004089B8    mov         dword ptr fs:[ecx],esp
 004089BB    mov         eax,dword ptr [ebp+8]
 004089BE    mov         ecx,dword ptr [eax+4]
 004089C1    mov         edx,dword ptr [eax]
 004089C3    push        ecx
 004089C4    push        edx
 004089C5    call        @FreeMem
 004089CA    pop         edx
 004089CB    pop         eax
 004089CC    call        edx
 004089CE    xor         edx,edx
 004089D0    pop         ecx
 004089D1    mov         dword ptr fs:[edx],ecx
 004089D4    pop         ecx
 004089D5    pop         ebp
 004089D6    pop         ebp
 004089D7    ret         4
*}
end;

//004089DC
function BeginThread(SecurityAttributes:Pointer; StackSize:Cardinal; ThreadFunc:TThreadFunc; Parameter:Pointer; CreationFlags:Cardinal; var ThreadId:Cardinal):NativeUInt;
begin
{*
 004089DC    push        ebp
 004089DD    mov         ebp,esp
 004089DF    add         esp,0FFFFFFF8
 004089E2    push        ebx
 004089E3    push        esi
 004089E4    push        edi
 004089E5    mov         esi,ecx
 004089E7    mov         dword ptr [ebp-8],edx
 004089EA    mov         dword ptr [ebp-4],eax
 004089ED    mov         edi,dword ptr [ebp+10]
 004089F0    cmp         dword ptr ds:[79E034],0
>004089F7    je          00408A07
 004089F9    mov         edx,edi
 004089FB    mov         eax,esi
 004089FD    call        dword ptr ds:[79E034]
 00408A03    mov         ebx,eax
>00408A05    jmp         00408A18
 00408A07    mov         eax,8
 00408A0C    call        @GetMem
 00408A11    mov         ebx,eax
 00408A13    mov         dword ptr [ebx],esi
 00408A15    mov         dword ptr [ebx+4],edi
 00408A18    mov         byte ptr ds:[7C505D],1
 00408A1F    mov         eax,dword ptr [ebp+8]
 00408A22    push        eax
 00408A23    mov         eax,dword ptr [ebp+0C]
 00408A26    push        eax
 00408A27    push        ebx
 00408A28    mov         eax,4089A4;ThreadWrapper:Integer
 00408A2D    push        eax
 00408A2E    mov         eax,dword ptr [ebp-8]
 00408A31    push        eax
 00408A32    mov         eax,dword ptr [ebp-4]
 00408A35    push        eax
 00408A36    call        kernel32.CreateThread
 00408A3B    mov         esi,eax
 00408A3D    test        esi,esi
>00408A3F    jne         00408A48
 00408A41    mov         eax,ebx
 00408A43    call        @FreeMem
 00408A48    mov         eax,esi
 00408A4A    pop         edi
 00408A4B    pop         esi
 00408A4C    pop         ebx
 00408A4D    pop         ecx
 00408A4E    pop         ecx
 00408A4F    pop         ebp
 00408A50    ret         0C
*}
end;

//00408A54
procedure EndThread(ExitCode:Integer);
begin
{*
 00408A54    push        ebx
 00408A55    mov         ebx,eax
 00408A57    cmp         dword ptr ds:[79E038],0
>00408A5E    je          00408A68
 00408A60    mov         eax,ebx
 00408A62    call        dword ptr ds:[79E038]
 00408A68    push        ebx
 00408A69    call        kernel32.ExitThread
 00408A6E    pop         ebx
 00408A6F    ret
*}
end;

//00408A70
function @NewUnicodeString(CharLength:Integer):Pointer;
begin
{*
 00408A70    test        eax,eax
>00408A72    jle         00408AAD
 00408A74    push        eax
 00408A75    add         eax,eax
>00408A77    jo          00408AA8
 00408A79    add         eax,0E
>00408A7C    jo          00408AA8
 00408A7E    call        @GetMem
 00408A83    add         eax,0C
 00408A86    pop         edx
 00408A87    mov         dword ptr [eax-8],1
 00408A8E    mov         dword ptr [eax-4],edx
 00408A91    mov         word ptr [eax+edx*2],0
 00408A97    mov         word ptr [eax-0A],2
 00408A9D    mov         edx,dword ptr ds:[7C5904]
 00408AA3    mov         word ptr [eax-0C],dx
 00408AA7    ret
>00408AA8    jmp         @IntOver
 00408AAD    xor         eax,eax
 00408AAF    ret
*}
end;

//00408AB0
function @NewAnsiString(CharLength:Integer; CodePage:Word):Pointer;
begin
{*
 00408AB0    test        eax,eax
>00408AB2    jle         00408AF7
 00408AB4    push        eax
 00408AB5    add         eax,0E
>00408AB8    jo          00408AF2
 00408ABA    and         eax,0FFFFFFFE
 00408ABD    push        edx
 00408ABE    push        eax
 00408ABF    call        @GetMem
 00408AC4    pop         edx
 00408AC5    pop         ecx
 00408AC6    mov         word ptr [edx+eax-2],0
 00408ACD    add         eax,0C
 00408AD0    pop         edx
 00408AD1    mov         dword ptr [eax-4],edx
 00408AD4    mov         dword ptr [eax-8],1
 00408ADB    test        ecx,ecx
>00408ADD    jne         00408AE5
 00408ADF    mov         ecx,dword ptr ds:[7C5900];gvar_007C5900
 00408AE5    mov         edx,ecx
 00408AE7    mov         word ptr [eax-0C],dx
 00408AEB    mov         word ptr [eax-0A],1
 00408AF1    ret
>00408AF2    jmp         @IntOver
 00408AF7    xor         eax,eax
 00408AF9    ret
*}
end;

//00408AFC
procedure WStrError;
begin
{*
 00408AFC    mov         al,1
>00408AFE    jmp         Error
 00408B03    ret
*}
end;

//00408B04
function @NewWideString(CharLength:Integer):Pointer;
begin
{*
 00408B04    test        eax,eax
>00408B06    je          00408B18
 00408B08    push        eax
 00408B09    push        0
 00408B0B    call        oleaut32.SysAllocStringLen
 00408B10    test        eax,eax
>00408B12    je          00408AFC
 00408B18    ret
*}
end;

//00408B1C
procedure @UStrClr(var S:UnicodeString);
begin
{*
 00408B1C    mov         edx,dword ptr [eax]
 00408B1E    test        edx,edx
>00408B20    je          00408B3E
 00408B22    mov         dword ptr [eax],0
 00408B28    mov         ecx,dword ptr [edx-8]
 00408B2B    dec         ecx
>00408B2C    jl          00408B3E
 00408B2E    lock dec    dword ptr [edx-8]
>00408B32    jne         00408B3E
 00408B34    push        eax
 00408B35    lea         eax,[edx-0C]
 00408B38    call        @FreeMem
 00408B3D    pop         eax
 00408B3E    ret
*}
end;

//00408B40
procedure @LStrClr(var S:AnsiString);
begin
{*
 00408B40    mov         edx,dword ptr [eax]
 00408B42    test        edx,edx
>00408B44    je          00408B62
 00408B46    mov         dword ptr [eax],0
 00408B4C    mov         ecx,dword ptr [edx-8]
 00408B4F    dec         ecx
>00408B50    jl          00408B62
 00408B52    lock dec    dword ptr [edx-8]
>00408B56    jne         00408B62
 00408B58    push        eax
 00408B59    lea         eax,[edx-0C]
 00408B5C    call        @FreeMem
 00408B61    pop         eax
 00408B62    ret
*}
end;

//00408B64
procedure @WStrClr(var S:WideString);
begin
{*
 00408B64    mov         edx,dword ptr [eax]
 00408B66    test        edx,edx
>00408B68    je          00408B78
 00408B6A    mov         dword ptr [eax],0
 00408B70    push        eax
 00408B71    push        edx
 00408B72    call        oleaut32.SysFreeString
 00408B77    pop         eax
 00408B78    ret
*}
end;

//00408B7C
procedure @UStrArrayClr(var StrArray:Pointer; Count:Integer);
begin
{*
 00408B7C    push        ebx
 00408B7D    push        esi
 00408B7E    mov         ebx,eax
 00408B80    mov         esi,edx
 00408B82    mov         edx,dword ptr [ebx]
 00408B84    test        edx,edx
>00408B86    je          00408BA2
 00408B88    mov         dword ptr [ebx],0
 00408B8E    mov         ecx,dword ptr [edx-8]
 00408B91    dec         ecx
>00408B92    jl          00408BA2
 00408B94    lock dec    dword ptr [edx-8]
>00408B98    jne         00408BA2
 00408B9A    lea         eax,[edx-0C]
 00408B9D    call        @FreeMem
 00408BA2    add         ebx,4
 00408BA5    dec         esi
>00408BA6    jne         00408B82
 00408BA8    pop         esi
 00408BA9    pop         ebx
 00408BAA    ret
*}
end;

//00408BAC
procedure @LStrArrayClr(var StrArray:Pointer; Count:Integer);
begin
{*
 00408BAC    push        ebx
 00408BAD    push        esi
 00408BAE    mov         ebx,eax
 00408BB0    mov         esi,edx
 00408BB2    mov         edx,dword ptr [ebx]
 00408BB4    test        edx,edx
>00408BB6    je          00408BD2
 00408BB8    mov         dword ptr [ebx],0
 00408BBE    mov         ecx,dword ptr [edx-8]
 00408BC1    dec         ecx
>00408BC2    jl          00408BD2
 00408BC4    lock dec    dword ptr [edx-8]
>00408BC8    jne         00408BD2
 00408BCA    lea         eax,[edx-0C]
 00408BCD    call        @FreeMem
 00408BD2    add         ebx,4
 00408BD5    dec         esi
>00408BD6    jne         00408BB2
 00408BD8    pop         esi
 00408BD9    pop         ebx
 00408BDA    ret
*}
end;

//00408BDC
procedure @WStrArrayClr(var StrArray:Pointer; Count:Integer);
begin
{*
 00408BDC    push        ebx
 00408BDD    push        esi
 00408BDE    mov         ebx,eax
 00408BE0    mov         esi,edx
 00408BE2    mov         eax,dword ptr [ebx]
 00408BE4    test        eax,eax
>00408BE6    je          00408BF4
 00408BE8    mov         dword ptr [ebx],0
 00408BEE    push        eax
 00408BEF    call        oleaut32.SysFreeString
 00408BF4    add         ebx,4
 00408BF7    dec         esi
>00408BF8    jne         00408BE2
 00408BFA    pop         esi
 00408BFB    pop         ebx
 00408BFC    ret
*}
end;

//00408C00
function @UStrAddRef(var S:UnicodeString):Pointer;
begin
{*
 00408C00    test        eax,eax
>00408C02    je          00408C0E
 00408C04    mov         edx,dword ptr [eax-8]
 00408C07    inc         edx
>00408C08    jle         00408C0E
 00408C0A    lock inc    dword ptr [eax-8]
 00408C0E    ret
*}
end;

//00408C10
function @LStrAddRef(var S:AnsiString):Pointer;
begin
{*
 00408C10    test        eax,eax
>00408C12    je          00408C1E
 00408C14    mov         edx,dword ptr [eax-8]
 00408C17    inc         edx
>00408C18    jle         00408C1E
 00408C1A    lock inc    dword ptr [eax-8]
 00408C1E    ret
*}
end;

//00408C20
function @WStrAddRef(var S:WideString):Pointer;
begin
{*
 00408C20    mov         edx,dword ptr [eax]
 00408C22    test        edx,edx
>00408C24    je          00408C3E
 00408C26    push        eax
 00408C27    mov         ecx,dword ptr [edx-4]
 00408C2A    shr         ecx,1
 00408C2C    push        ecx
 00408C2D    push        edx
 00408C2E    call        oleaut32.SysAllocStringLen
 00408C33    pop         edx
 00408C34    test        eax,eax
>00408C36    je          00408AFC
 00408C3C    mov         dword ptr [edx],eax
 00408C3E    ret
*}
end;

//00408C40
function CharFromWChar(CharDest:PAnsiChar; DestBytes:Integer; const WCharSource:PWideChar; SrcChars:Integer; CodePage:Integer):Integer;
begin
{*
 00408C40    push        ebp
 00408C41    mov         ebp,esp
 00408C43    push        ebx
 00408C44    push        esi
 00408C45    mov         esi,dword ptr [ebp+8]
 00408C48    test        esi,esi
>00408C4A    jne         00408C52
 00408C4C    mov         esi,dword ptr ds:[7C5900];gvar_007C5900
 00408C52    mov         ebx,dword ptr [ebp+0C]
 00408C55    push        ebx
 00408C56    push        eax
 00408C57    push        edx
 00408C58    push        0
 00408C5A    push        0
 00408C5C    mov         eax,esi
 00408C5E    xor         edx,edx
 00408C60    call        LocaleCharsFromUnicode
 00408C65    pop         esi
 00408C66    pop         ebx
 00408C67    pop         ebp
 00408C68    ret         8
*}
end;

//00408C6C
function CharFromWChar(CharDest:PAnsiChar; DestBytes:Integer; const WCharSource:PWideChar; SrcChars:Integer):Integer;
begin
{*
 00408C6C    push        ebp
 00408C6D    mov         ebp,esp
 00408C6F    push        ebx
 00408C70    mov         ebx,dword ptr [ebp+8]
 00408C73    push        ebx
 00408C74    mov         ebx,dword ptr ds:[7C5900];gvar_007C5900
 00408C7A    push        ebx
 00408C7B    call        CharFromWChar
 00408C80    pop         ebx
 00408C81    pop         ebp
 00408C82    ret         4
*}
end;

//00408C88
function WCharFromChar(WCharDest:PWideChar; DestChars:Integer; const CharSource:PAnsiChar; SrcBytes:Integer; CodePage:Integer):Integer;
begin
{*
 00408C88    push        ebp
 00408C89    mov         ebp,esp
 00408C8B    push        ebx
 00408C8C    mov         ebx,dword ptr [ebp+0C]
 00408C8F    push        ebx
 00408C90    push        eax
 00408C91    push        edx
 00408C92    mov         eax,dword ptr [ebp+8]
 00408C95    xor         edx,edx
 00408C97    call        UnicodeFromLocaleChars
 00408C9C    pop         ebx
 00408C9D    pop         ebp
 00408C9E    ret         8
*}
end;

//00408CA4
procedure @UStrFromPWCharLen(var Dest:UnicodeString; Source:PWideChar; Length:Integer);
begin
{*
 00408CA4    push        ebx
 00408CA5    push        esi
 00408CA6    push        edi
 00408CA7    mov         ebx,eax
 00408CA9    mov         esi,edx
 00408CAB    mov         edi,ecx
 00408CAD    mov         eax,edi
 00408CAF    call        @NewUnicodeString
 00408CB4    mov         ecx,edi
 00408CB6    mov         edi,eax
 00408CB8    test        esi,esi
>00408CBA    je          00408CC7
 00408CBC    mov         edx,eax
 00408CBE    mov         eax,esi
 00408CC0    shl         ecx,1
 00408CC2    call        Move
 00408CC7    mov         eax,ebx
 00408CC9    call        @LStrClr
 00408CCE    mov         dword ptr [ebx],edi
 00408CD0    pop         edi
 00408CD1    pop         esi
 00408CD2    pop         ebx
 00408CD3    ret
*}
end;

//00408CD4
procedure @WStrFromPWCharLen(var Dest:WideString; Source:PWideChar; Length:Integer);
begin
{*
 00408CD4    test        ecx,ecx
>00408CD6    je          00408B64
 00408CDC    push        eax
 00408CDD    push        ecx
 00408CDE    push        edx
 00408CDF    call        oleaut32.SysAllocStringLen
 00408CE4    test        eax,eax
 00408CE6    pop         edx
>00408CE7    je          00408AFC
 00408CED    push        dword ptr [edx]
 00408CEF    mov         dword ptr [edx],eax
 00408CF1    call        oleaut32.SysFreeString
 00408CF6    ret
*}
end;

//00408CF8
procedure @LStrFromPCharLen(var Dest:AnsiString; Source:PAnsiChar; Length:Integer);
begin
{*
 00408CF8    push        ebp
 00408CF9    mov         ebp,esp
 00408CFB    push        ebx
 00408CFC    push        esi
 00408CFD    push        edi
 00408CFE    mov         ebx,eax
 00408D00    mov         esi,edx
 00408D02    mov         edi,ecx
 00408D04    mov         eax,edi
 00408D06    movzx       edx,word ptr [ebp+8]
 00408D0A    call        @NewAnsiString
 00408D0F    mov         ecx,edi
 00408D11    mov         edi,eax
 00408D13    test        esi,esi
>00408D15    je          00408D20
 00408D17    mov         edx,eax
 00408D19    mov         eax,esi
 00408D1B    call        Move
 00408D20    mov         eax,ebx
 00408D22    call        @LStrClr
 00408D27    mov         dword ptr [ebx],edi
 00408D29    pop         edi
 00408D2A    pop         esi
 00408D2B    pop         ebx
 00408D2C    pop         ebp
 00408D2D    ret         4
*}
end;

//00408D30
procedure InternalUStrFromPCharLen(var Dest:AnsiString; Source:PAnsiChar; Length:Integer; CodePage:Integer);
begin
{*
 00408D30    push        ebp
 00408D31    mov         ebp,esp
 00408D33    add         esp,0FFFFF004
 00408D39    push        eax
 00408D3A    add         esp,0FFFFFFFC
 00408D3D    push        ebx
 00408D3E    push        esi
 00408D3F    push        edi
 00408D40    mov         esi,ecx
 00408D42    mov         dword ptr [ebp-4],edx
 00408D45    mov         edi,eax
 00408D47    test        esi,esi
>00408D49    jg          00408D54
 00408D4B    mov         eax,edi
 00408D4D    call        @UStrClr
>00408D52    jmp         00408DBB
 00408D54    lea         eax,[esi+1]
 00408D57    cmp         eax,7FF
>00408D5C    jge         00408D8D
 00408D5E    push        esi
 00408D5F    mov         eax,dword ptr [ebp+8]
 00408D62    push        eax
 00408D63    lea         eax,[ebp-1004]
 00408D69    mov         ecx,dword ptr [ebp-4]
 00408D6C    mov         edx,7FF
 00408D71    call        WCharFromChar
 00408D76    mov         ebx,eax
 00408D78    test        ebx,ebx
>00408D7A    jle         00408D8D
 00408D7C    lea         edx,[ebp-1004]
 00408D82    mov         eax,edi
 00408D84    mov         ecx,ebx
 00408D86    call        @UStrFromPWCharLen
>00408D8B    jmp         00408DBB
 00408D8D    lea         ebx,[esi+1]
 00408D90    mov         eax,edi
 00408D92    mov         edx,ebx
 00408D94    call        @UStrSetLength
 00408D99    push        esi
 00408D9A    mov         eax,dword ptr [ebp+8]
 00408D9D    push        eax
 00408D9E    mov         eax,dword ptr [edi]
 00408DA0    mov         ecx,dword ptr [ebp-4]
 00408DA3    mov         edx,ebx
 00408DA5    call        WCharFromChar
 00408DAA    mov         ebx,eax
 00408DAC    test        ebx,ebx
>00408DAE    jge         00408DB2
 00408DB0    xor         ebx,ebx
 00408DB2    mov         eax,edi
 00408DB4    mov         edx,ebx
 00408DB6    call        @UStrSetLength
 00408DBB    pop         edi
 00408DBC    pop         esi
 00408DBD    pop         ebx
 00408DBE    mov         esp,ebp
 00408DC0    pop         ebp
 00408DC1    ret         4
*}
end;

//00408DC4
procedure @UStrFromPCharLen(var Dest:UnicodeString; Source:PAnsiChar; Length:Integer);
begin
{*
 00408DC4    push        ebx
 00408DC5    mov         ebx,dword ptr ds:[7C5900];gvar_007C5900
 00408DCB    push        ebx
 00408DCC    call        InternalUStrFromPCharLen
 00408DD1    pop         ebx
 00408DD2    ret
*}
end;

//00408DD4
procedure InternalWStrFromPCharLen(var Dest:WideString; Source:PAnsiChar; Length:Integer; CodePage:Integer);
begin
{*
 00408DD4    push        ebp
 00408DD5    mov         ebp,esp
 00408DD7    add         esp,0FFFFF004
 00408DDD    push        eax
 00408DDE    add         esp,0FFFFFFFC
 00408DE1    push        ebx
 00408DE2    push        esi
 00408DE3    push        edi
 00408DE4    mov         esi,ecx
 00408DE6    mov         dword ptr [ebp-4],edx
 00408DE9    mov         edi,eax
 00408DEB    test        esi,esi
>00408DED    jg          00408DF8
 00408DEF    mov         eax,edi
 00408DF1    call        @WStrClr
>00408DF6    jmp         00408E5F
 00408DF8    lea         eax,[esi+1]
 00408DFB    cmp         eax,7FF
>00408E00    jge         00408E31
 00408E02    push        esi
 00408E03    mov         eax,dword ptr [ebp+8]
 00408E06    push        eax
 00408E07    lea         eax,[ebp-1004]
 00408E0D    mov         ecx,dword ptr [ebp-4]
 00408E10    mov         edx,7FF
 00408E15    call        WCharFromChar
 00408E1A    mov         ebx,eax
 00408E1C    test        ebx,ebx
>00408E1E    jle         00408E31
 00408E20    lea         edx,[ebp-1004]
 00408E26    mov         eax,edi
 00408E28    mov         ecx,ebx
 00408E2A    call        @WStrFromPWCharLen
>00408E2F    jmp         00408E5F
 00408E31    lea         ebx,[esi+1]
 00408E34    mov         eax,edi
 00408E36    mov         edx,ebx
 00408E38    call        @WStrSetLength
 00408E3D    push        esi
 00408E3E    mov         eax,dword ptr [ebp+8]
 00408E41    push        eax
 00408E42    mov         eax,dword ptr [edi]
 00408E44    mov         ecx,dword ptr [ebp-4]
 00408E47    mov         edx,ebx
 00408E49    call        WCharFromChar
 00408E4E    mov         ebx,eax
 00408E50    test        ebx,ebx
>00408E52    jge         00408E56
 00408E54    xor         ebx,ebx
 00408E56    mov         eax,edi
 00408E58    mov         edx,ebx
 00408E5A    call        @WStrSetLength
 00408E5F    pop         edi
 00408E60    pop         esi
 00408E61    pop         ebx
 00408E62    mov         esp,ebp
 00408E64    pop         ebp
 00408E65    ret         4
*}
end;

//00408E68
procedure @WStrFromPCharLen(var Dest:WideString; Source:PAnsiChar; Length:Integer);
begin
{*
 00408E68    push        ebx
 00408E69    mov         ebx,dword ptr ds:[7C5900];gvar_007C5900
 00408E6F    push        ebx
 00408E70    call        InternalWStrFromPCharLen
 00408E75    pop         ebx
 00408E76    ret
*}
end;

//00408E78
procedure @LStrFromPWCharLen(var Dest:AnsiString; Source:PWideChar; Length:Integer);
begin
{*
 00408E78    push        ebp
 00408E79    mov         ebp,esp
 00408E7B    add         esp,0FFFFFFF8
 00408E7E    push        ebx
 00408E7F    push        esi
 00408E80    push        edi
 00408E81    mov         dword ptr [ebp-8],ecx
 00408E84    mov         dword ptr [ebp-4],edx
 00408E87    mov         edi,eax
 00408E89    mov         ebx,dword ptr [ebp+8]
 00408E8C    cmp         dword ptr [ebp-8],0
>00408E90    jg          00408E9B
 00408E92    mov         eax,edi
 00408E94    call        @LStrClr
>00408E99    jmp         00408EF1
 00408E9B    test        bx,bx
>00408E9E    jne         00408EA7
 00408EA0    movzx       ebx,word ptr ds:[7C5900];gvar_007C5900
 00408EA7    mov         eax,dword ptr [ebp-8]
 00408EAA    push        eax
 00408EAB    movzx       eax,bx
 00408EAE    push        eax
 00408EAF    mov         ecx,dword ptr [ebp-4]
 00408EB2    xor         edx,edx
 00408EB4    xor         eax,eax
 00408EB6    call        CharFromWChar
 00408EBB    mov         esi,eax
 00408EBD    mov         eax,edi
 00408EBF    xor         ecx,ecx
 00408EC1    mov         edx,esi
 00408EC3    call        @LStrSetLength
 00408EC8    test        esi,esi
>00408ECA    jle         00408EEA
 00408ECC    mov         eax,dword ptr [ebp-8]
 00408ECF    push        eax
 00408ED0    movzx       eax,bx
 00408ED3    push        eax
 00408ED4    mov         eax,dword ptr [edi]
 00408ED6    mov         ecx,dword ptr [ebp-4]
 00408ED9    mov         edx,esi
 00408EDB    call        CharFromWChar
 00408EE0    mov         eax,dword ptr [edi]
 00408EE2    sub         eax,0C
 00408EE5    mov         word ptr [eax],bx
>00408EE8    jmp         00408EF1
 00408EEA    mov         eax,edi
 00408EEC    call        @LStrClr
 00408EF1    pop         edi
 00408EF2    pop         esi
 00408EF3    pop         ebx
 00408EF4    pop         ecx
 00408EF5    pop         ecx
 00408EF6    pop         ebp
 00408EF7    ret         4
*}
end;

//00408EFC
procedure @UStrAsg(var Dest:UnicodeString; Source:UnicodeString);
begin
{*
 00408EFC    test        edx,edx
>00408EFE    je          00408F26
 00408F00    mov         ecx,dword ptr [edx-8]
 00408F03    inc         ecx
>00408F04    jg          00408F22
 00408F06    push        eax
 00408F07    push        edx
 00408F08    mov         eax,dword ptr [edx-4]
 00408F0B    call        @NewUnicodeString
 00408F10    mov         edx,eax
 00408F12    pop         eax
 00408F13    push        edx
 00408F14    mov         ecx,dword ptr [eax-4]
 00408F17    shl         ecx,1
 00408F19    call        Move
 00408F1E    pop         edx
 00408F1F    pop         eax
>00408F20    jmp         00408F26
 00408F22    lock inc    dword ptr [edx-8]
 00408F26    xchg        edx,dword ptr [eax]
 00408F28    test        edx,edx
>00408F2A    je          00408F40
 00408F2C    mov         ecx,dword ptr [edx-8]
 00408F2F    dec         ecx
>00408F30    jl          00408F40
 00408F32    lock dec    dword ptr [edx-8]
>00408F36    jne         00408F40
 00408F38    lea         eax,[edx-0C]
 00408F3B    call        @FreeMem
 00408F40    ret
*}
end;

//00408F44
procedure @UStrLAsg(var Dest:UnicodeString; const Source:UnicodeString);
begin
{*
 00408F44    test        edx,edx
>00408F46    je          00408F52
 00408F48    mov         ecx,dword ptr [edx-8]
 00408F4B    inc         ecx
>00408F4C    jle         00408F52
 00408F4E    lock inc    dword ptr [edx-8]
 00408F52    xchg        edx,dword ptr [eax]
 00408F54    test        edx,edx
>00408F56    je          00408F6C
 00408F58    mov         ecx,dword ptr [edx-8]
 00408F5B    dec         ecx
>00408F5C    jl          00408F6C
 00408F5E    lock dec    dword ptr [edx-8]
>00408F62    jne         00408F6C
 00408F64    lea         eax,[edx-0C]
 00408F67    call        @FreeMem
 00408F6C    ret
*}
end;

//00408F70
procedure @WStrAsg(var Dest:WideString; Source:WideString);
begin
{*
 00408F70    cmp         dword ptr [eax],edx
>00408F72    je          00408F97
 00408F74    test        edx,edx
>00408F76    je          00408B64
 00408F7C    mov         ecx,dword ptr [edx-4]
 00408F7F    shr         ecx,1
>00408F81    je          00408B64
 00408F87    push        ecx
 00408F88    push        edx
 00408F89    push        eax
 00408F8A    call        oleaut32.SysReAllocStringLen
 00408F8F    test        eax,eax
>00408F91    je          00408AFC
 00408F97    ret
*}
end;

//00408F98
procedure @LStrAsg(var Dest:AnsiString; Source:AnsiString);
begin
{*
 00408F98    test        edx,edx
>00408F9A    je          00408FC4
 00408F9C    mov         ecx,dword ptr [edx-8]
 00408F9F    inc         ecx
>00408FA0    jg          00408FC0
 00408FA2    push        eax
 00408FA3    push        edx
 00408FA4    mov         eax,dword ptr [edx-4]
 00408FA7    movzx       edx,word ptr [edx-0C]
 00408FAB    call        @NewAnsiString
 00408FB0    mov         edx,eax
 00408FB2    pop         eax
 00408FB3    push        edx
 00408FB4    mov         ecx,dword ptr [eax-4]
 00408FB7    call        Move
 00408FBC    pop         edx
 00408FBD    pop         eax
>00408FBE    jmp         00408FC4
 00408FC0    lock inc    dword ptr [edx-8]
 00408FC4    xchg        edx,dword ptr [eax]
 00408FC6    test        edx,edx
>00408FC8    je          00408FDE
 00408FCA    mov         ecx,dword ptr [edx-8]
 00408FCD    dec         ecx
>00408FCE    jl          00408FDE
 00408FD0    lock dec    dword ptr [edx-8]
>00408FD4    jne         00408FDE
 00408FD6    lea         eax,[edx-0C]
 00408FD9    call        @FreeMem
 00408FDE    ret
*}
end;

//00408FE0
procedure @LStrLAsg(var Dest:AnsiString; const Source:AnsiString);
begin
{*
 00408FE0    test        edx,edx
>00408FE2    je          00408FEE
 00408FE4    mov         ecx,dword ptr [edx-8]
 00408FE7    inc         ecx
>00408FE8    jle         00408FEE
 00408FEA    lock inc    dword ptr [edx-8]
 00408FEE    xchg        edx,dword ptr [eax]
 00408FF0    test        edx,edx
>00408FF2    je          00409008
 00408FF4    mov         ecx,dword ptr [edx-8]
 00408FF7    dec         ecx
>00408FF8    jl          00409008
 00408FFA    lock dec    dword ptr [edx-8]
>00408FFE    jne         00409008
 00409000    lea         eax,[edx-0C]
 00409003    call        @FreeMem
 00409008    ret
*}
end;

//0040900C
function @UStrLen(S:UnicodeString):Integer;
begin
{*
 0040900C    test        eax,eax
>0040900E    je          00409015
 00409010    sub         eax,4
 00409013    mov         eax,dword ptr [eax]
 00409015    ret
*}
end;

//00409018
function @LStrLen(S:AnsiString):Integer;
begin
{*
 00409018    test        eax,eax
>0040901A    je          00409021
 0040901C    sub         eax,4
 0040901F    mov         eax,dword ptr [eax]
 00409021    ret
*}
end;

//00409024
function @PCharLen(P:PAnsiChar):Integer;
begin
{*
 00409024    xor         edx,edx
 00409026    test        eax,eax
>00409028    je          00409033
>0040902A    jmp         0040902D
 0040902C    inc         edx
 0040902D    cmp         byte ptr [eax+edx],0
>00409031    jne         0040902C
 00409033    mov         eax,edx
 00409035    ret
*}
end;

//00409038
function @PWCharLen(P:PWideChar):Integer;
begin
{*
 00409038    xor         edx,edx
 0040903A    test        eax,eax
>0040903C    je          00409048
>0040903E    jmp         00409041
 00409040    inc         edx
 00409041    cmp         word ptr [eax+edx*2],0
>00409046    jne         00409040
 00409048    mov         eax,edx
 0040904A    ret
*}
end;

//0040904C
function InternalUniqueStringU(var Str:AnsiString):Pointer;
begin
{*
 0040904C    mov         edx,dword ptr [eax]
 0040904E    test        edx,edx
>00409050    je          0040908A
 00409052    mov         ecx,dword ptr [edx-8]
 00409055    dec         ecx
>00409056    je          0040908A
 00409058    push        ebx
 00409059    mov         ebx,eax
 0040905B    mov         eax,dword ptr [edx-4]
 0040905E    call        @NewUnicodeString
 00409063    mov         edx,eax
 00409065    xchg        eax,dword ptr [ebx]
 00409067    push        eax
 00409068    mov         ecx,dword ptr [eax-4]
 0040906B    shl         ecx,1
 0040906D    call        Move
 00409072    pop         eax
 00409073    mov         ecx,dword ptr [eax-8]
 00409076    dec         ecx
>00409077    jl          00409087
 00409079    lock dec    dword ptr [eax-8]
>0040907D    jne         00409087
 0040907F    lea         eax,[eax-0C]
 00409082    call        @FreeMem
 00409087    mov         edx,dword ptr [ebx]
 00409089    pop         ebx
 0040908A    mov         eax,edx
 0040908C    ret
*}
end;

//00409090
function InternalUniqueStringA(var Str:AnsiString):Pointer;
begin
{*
 00409090    mov         edx,dword ptr [eax]
 00409092    test        edx,edx
>00409094    je          004090D0
 00409096    mov         ecx,dword ptr [edx-8]
 00409099    dec         ecx
>0040909A    je          004090D0
 0040909C    push        ebx
 0040909D    mov         ebx,eax
 0040909F    mov         eax,dword ptr [edx-4]
 004090A2    movzx       edx,word ptr [edx-0C]
 004090A6    call        @NewAnsiString
 004090AB    mov         edx,eax
 004090AD    xchg        eax,dword ptr [ebx]
 004090AF    push        eax
 004090B0    mov         ecx,dword ptr [eax-4]
 004090B3    call        Move
 004090B8    pop         eax
 004090B9    mov         ecx,dword ptr [eax-8]
 004090BC    dec         ecx
>004090BD    jl          004090CD
 004090BF    lock dec    dword ptr [eax-8]
>004090C3    jne         004090CD
 004090C5    lea         eax,[eax-0C]
 004090C8    call        @FreeMem
 004090CD    mov         edx,dword ptr [ebx]
 004090CF    pop         ebx
 004090D0    mov         eax,edx
 004090D2    ret
*}
end;

//004090D4
function @UniqueStringU(var Str:AnsiString):Pointer;
begin
{*
>004090D4    jmp         InternalUniqueStringU
 004090D9    ret
*}
end;

//004090DC
function @UniqueStringA(var Str:AnsiString):Pointer;
begin
{*
>004090DC    jmp         InternalUniqueStringA
 004090E1    ret
*}
end;

//004090E4
procedure UniqueString(var Str:AnsiString);
begin
{*
>004090E4    jmp         InternalUniqueStringU
 004090E9    ret
*}
end;

//004090EC
procedure @PStrCmp(S1:PShortString; S2:PShortString);
begin
{*
 004090EC    push        ebx
 004090ED    push        esi
 004090EE    push        edi
 004090EF    mov         esi,eax
 004090F1    mov         edi,edx
 004090F3    xor         eax,eax
 004090F5    xor         edx,edx
 004090F7    mov         al,byte ptr [esi]
 004090F9    mov         dl,byte ptr [edi]
 004090FB    inc         esi
 004090FC    inc         edi
 004090FD    sub         eax,edx
>004090FF    ja          00409103
 00409101    add         edx,eax
 00409103    push        edx
 00409104    shr         edx,2
>00409107    je          0040912F
 00409109    mov         ecx,dword ptr [esi]
 0040910B    mov         ebx,dword ptr [edi]
 0040910D    cmp         ecx,ebx
>0040910F    jne         00409155
 00409111    dec         edx
>00409112    je          00409129
 00409114    mov         ecx,dword ptr [esi+4]
 00409117    mov         ebx,dword ptr [edi+4]
 0040911A    cmp         ecx,ebx
>0040911C    jne         00409155
 0040911E    add         esi,8
 00409121    add         edi,8
 00409124    dec         edx
>00409125    jne         00409109
>00409127    jmp         0040912F
 00409129    add         esi,4
 0040912C    add         edi,4
 0040912F    pop         edx
 00409130    and         edx,3
>00409133    je          00409151
 00409135    mov         cl,byte ptr [esi]
 00409137    cmp         cl,byte ptr [edi]
>00409139    jne         0040916A
 0040913B    dec         edx
>0040913C    je          00409151
 0040913E    mov         cl,byte ptr [esi+1]
 00409141    cmp         cl,byte ptr [edi+1]
>00409144    jne         0040916A
 00409146    dec         edx
>00409147    je          00409151
 00409149    mov         cl,byte ptr [esi+2]
 0040914C    cmp         cl,byte ptr [edi+2]
>0040914F    jne         0040916A
 00409151    add         eax,eax
>00409153    jmp         0040916A
 00409155    pop         edx
 00409156    cmp         cl,bl
>00409158    jne         0040916A
 0040915A    cmp         ch,bh
>0040915C    jne         0040916A
 0040915E    shr         ecx,10
 00409161    shr         ebx,10
 00409164    cmp         cl,bl
>00409166    jne         0040916A
 00409168    cmp         ch,bh
 0040916A    pop         edi
 0040916B    pop         esi
 0040916C    pop         ebx
 0040916D    ret
*}
end;

//00409170
procedure @AStrCmp(S1:PShortString; S2:PShortString; Bytes:Integer);
begin
{*
 00409170    push        ebx
 00409171    push        esi
 00409172    push        ecx
 00409173    mov         esi,ecx
 00409175    shr         esi,2
>00409178    je          004091A0
 0040917A    mov         ecx,dword ptr [eax]
 0040917C    mov         ebx,dword ptr [edx]
 0040917E    cmp         ecx,ebx
>00409180    jne         004091C7
 00409182    dec         esi
>00409183    je          0040919A
 00409185    mov         ecx,dword ptr [eax+4]
 00409188    mov         ebx,dword ptr [edx+4]
 0040918B    cmp         ecx,ebx
>0040918D    jne         004091C7
 0040918F    add         eax,8
 00409192    add         edx,8
 00409195    dec         esi
>00409196    jne         0040917A
>00409198    jmp         004091A0
 0040919A    add         eax,4
 0040919D    add         edx,4
 004091A0    pop         esi
 004091A1    and         esi,3
>004091A4    je          004091DC
 004091A6    mov         cl,byte ptr [eax]
 004091A8    cmp         cl,byte ptr [edx]
>004091AA    jne         004091DC
 004091AC    dec         esi
>004091AD    je          004091C2
 004091AF    mov         cl,byte ptr [eax+1]
 004091B2    cmp         cl,byte ptr [edx+1]
>004091B5    jne         004091DC
 004091B7    dec         esi
>004091B8    je          004091C2
 004091BA    mov         cl,byte ptr [eax+2]
 004091BD    cmp         cl,byte ptr [edx+2]
>004091C0    jne         004091DC
 004091C2    xor         eax,eax
 004091C4    pop         esi
 004091C5    pop         ebx
 004091C6    ret
 004091C7    pop         esi
 004091C8    cmp         cl,bl
>004091CA    jne         004091DC
 004091CC    cmp         ch,bh
>004091CE    jne         004091DC
 004091D0    shr         ecx,10
 004091D3    shr         ebx,10
 004091D6    cmp         cl,bl
>004091D8    jne         004091DC
 004091DA    cmp         ch,bh
 004091DC    pop         esi
 004091DD    pop         ebx
 004091DE    ret
*}
end;

//004091E0
procedure @PStrCpy(Dest:PShortString; Source:PShortString);
begin
{*
 004091E0    movzx       ecx,byte ptr [edx]
 004091E3    inc         ecx
 004091E4    xchg        eax,edx
 004091E5    call        Move
 004091EA    ret
*}
end;

//004091EC
procedure @PStrNCpy(Dest:PShortString; Source:PShortString; MaxLen:Byte);
begin
{*
 004091EC    push        ebx
 004091ED    movzx       ebx,byte ptr [edx]
 004091F0    cmp         cl,bl
>004091F2    jbe         004091F6
 004091F4    mov         ecx,ebx
 004091F6    mov         byte ptr [eax],cl
 004091F8    inc         edx
 004091F9    inc         eax
 004091FA    movzx       ecx,cl
 004091FD    xchg        eax,edx
 004091FE    call        Move
 00409203    pop         ebx
 00409204    ret
*}
end;

//00409208
procedure @Copy(S:ShortString; Index:Integer; Count:Integer; Result:ShortString);
begin
{*
 00409208    push        ebp
 00409209    mov         ebp,esp
 0040920B    push        esi
 0040920C    push        edi
 0040920D    mov         esi,eax
 0040920F    mov         edi,dword ptr [ebp+8]
 00409212    xor         eax,eax
 00409214    or          al,byte ptr [esi]
>00409216    je          00409243
 00409218    test        edx,edx
>0040921A    jle         00409234
 0040921C    cmp         edx,eax
>0040921E    jg          0040923B
 00409220    sub         eax,edx
 00409222    inc         eax
 00409223    test        ecx,ecx
>00409225    jl          0040923B
 00409227    cmp         ecx,eax
>00409229    jg          0040923F
 0040922B    add         esi,edx
 0040922D    mov         byte ptr [edi],cl
 0040922F    inc         edi
 00409230    rep movs    byte ptr [edi],byte ptr [esi]
>00409232    jmp         00409245
 00409234    mov         edx,1
>00409239    jmp         00409220
 0040923B    xor         ecx,ecx
>0040923D    jmp         0040922B
 0040923F    mov         ecx,eax
>00409241    jmp         0040922B
 00409243    mov         byte ptr [edi],al
 00409245    pop         edi
 00409246    pop         esi
 00409247    pop         ebp
 00409248    ret         4
*}
end;

//0040924C
{*procedure sub_0040924C(?:?; ?:?);
begin
 0040924C    mov         byte ptr [eax],dl
 0040924E    ret
end;*}

//00409250
procedure @LStrFromChar(var Dest:AnsiString; Source:AnsiChar);
begin
{*
 00409250    push        edx
 00409251    mov         edx,esp
 00409253    push        ecx
 00409254    mov         ecx,1
 00409259    call        @LStrFromPCharLen
 0040925E    pop         edx
 0040925F    ret
*}
end;

//00409260
procedure @LStrFromPChar(var Dest:AnsiString; Source:PAnsiChar);
begin
{*
 00409260    push        dword ptr [esp]
 00409263    mov         dword ptr [esp+4],ecx
 00409267    xor         ecx,ecx
 00409269    test        edx,edx
>0040926B    je          0040928E
 0040926D    push        edx
 0040926E    cmp         cl,byte ptr [edx]
>00409270    je          00409289
 00409272    cmp         cl,byte ptr [edx+1]
>00409275    je          00409288
 00409277    cmp         cl,byte ptr [edx+2]
>0040927A    je          00409287
 0040927C    cmp         cl,byte ptr [edx+3]
>0040927F    je          00409286
 00409281    add         edx,4
>00409284    jmp         0040926E
 00409286    inc         edx
 00409287    inc         edx
 00409288    inc         edx
 00409289    mov         ecx,edx
 0040928B    pop         edx
 0040928C    sub         ecx,edx
>0040928E    jmp         @LStrFromPCharLen
 00409293    ret
*}
end;

//00409294
procedure @LStrFromPWChar(var Dest:AnsiString; Source:PWideChar);
begin
{*
 00409294    push        dword ptr [esp]
 00409297    mov         dword ptr [esp+4],ecx
 0040929B    xor         ecx,ecx
 0040929D    test        edx,edx
>0040929F    je          004092CE
 004092A1    push        edx
 004092A2    cmp         cx,word ptr [edx]
>004092A5    je          004092C7
 004092A7    cmp         cx,word ptr [edx+2]
>004092AB    je          004092C4
 004092AD    cmp         cx,word ptr [edx+4]
>004092B1    je          004092C1
 004092B3    cmp         cx,word ptr [edx+6]
>004092B7    je          004092BE
 004092B9    add         edx,8
>004092BC    jmp         004092A2
 004092BE    add         edx,2
 004092C1    add         edx,2
 004092C4    add         edx,2
 004092C7    mov         ecx,edx
 004092C9    pop         edx
 004092CA    sub         ecx,edx
 004092CC    shr         ecx,1
>004092CE    jmp         @LStrFromPWCharLen
 004092D3    ret
*}
end;

//004092D4
procedure @LStrFromString(var Dest:AnsiString; const Source:ShortString);
begin
{*
 004092D4    push        dword ptr [esp]
 004092D7    mov         dword ptr [esp+4],ecx
 004092DB    xor         ecx,ecx
 004092DD    mov         cl,byte ptr [edx]
 004092DF    inc         edx
>004092E0    jmp         @LStrFromPCharLen
 004092E5    ret
*}
end;

//004092E8
procedure @LStrFromWStr(var Dest:AnsiString; const Source:WideString);
begin
{*
 004092E8    push        dword ptr [esp]
 004092EB    mov         dword ptr [esp+4],ecx
 004092EF    xor         ecx,ecx
 004092F1    test        edx,edx
>004092F3    je          004092FA
 004092F5    mov         ecx,dword ptr [edx-4]
 004092F8    shr         ecx,1
>004092FA    jmp         @LStrFromPWCharLen
 004092FF    ret
*}
end;

//00409300
procedure @LStrToString(var Dest:ShortString; const Source:AnsiString; MaxLen:Integer);
begin
{*
 00409300    push        ebx
 00409301    test        edx,edx
>00409303    je          0040931D
 00409305    mov         ebx,dword ptr [edx-4]
 00409308    test        ebx,ebx
>0040930A    je          0040931D
 0040930C    cmp         ecx,ebx
>0040930E    jl          00409312
 00409310    mov         ecx,ebx
 00409312    mov         byte ptr [eax],cl
 00409314    inc         eax
 00409315    xchg        eax,edx
 00409316    call        Move
 0040931B    pop         ebx
 0040931C    ret
 0040931D    mov         byte ptr [eax],0
 00409320    pop         ebx
 00409321    ret
*}
end;

//00409324
procedure @LStrCat(var Dest:AnsiString; Source:AnsiString);
begin
{*
 00409324    test        edx,edx
>00409326    je          0040937A
 00409328    mov         ecx,dword ptr [eax]
 0040932A    test        ecx,ecx
>0040932C    je          00408F98
 00409332    push        ebx
 00409333    push        esi
 00409334    push        edi
 00409335    mov         ebx,eax
 00409337    mov         esi,edx
 00409339    mov         edi,ecx
 0040933B    cmp         esi,ecx
 0040933D    mov         edi,dword ptr [ecx-4]
 00409340    mov         edx,dword ptr [esi-4]
 00409343    add         edx,edi
>00409345    jo          00409375
 00409347    cmp         esi,ecx
>00409349    je          00409366
 0040934B    movzx       ecx,word ptr [ecx-0C]
 0040934F    call        @LStrSetLength
 00409354    mov         eax,esi
 00409356    mov         ecx,dword ptr [esi-4]
 00409359    mov         edx,dword ptr [ebx]
 0040935B    add         edx,edi
 0040935D    call        Move
 00409362    pop         edi
 00409363    pop         esi
 00409364    pop         ebx
 00409365    ret
 00409366    movzx       ecx,word ptr [ecx-0C]
 0040936A    call        @LStrSetLength
 0040936F    mov         eax,dword ptr [ebx]
 00409371    mov         ecx,edi
>00409373    jmp         00409359
>00409375    jmp         @IntOver
 0040937A    ret
*}
end;

//0040937C
procedure @LStrCat3(var Dest:AnsiString; Source1:AnsiString; Source2:AnsiString);
begin
{*
 0040937C    test        edx,edx
>0040937E    je          004093E9
 00409380    test        ecx,ecx
>00409382    je          00408F98
 00409388    cmp         edx,dword ptr [eax]
>0040938A    je          004093F0
 0040938C    cmp         ecx,dword ptr [eax]
>0040938E    je          0040939E
 00409390    push        eax
 00409391    push        ecx
 00409392    call        @LStrAsg
 00409397    pop         edx
 00409398    pop         eax
>00409399    jmp         @LStrCat
 0040939E    push        edi
 0040939F    mov         edi,dword ptr [edx-4]
 004093A2    add         edi,dword ptr [ecx-4]
>004093A5    jo          004093F7
 004093A7    push        ebx
 004093A8    push        esi
 004093A9    push        eax
 004093AA    mov         ebx,edx
 004093AC    mov         esi,ecx
 004093AE    mov         eax,edi
 004093B0    movzx       edx,word ptr [esi-0C]
 004093B4    call        @NewAnsiString
 004093B9    mov         edi,eax
 004093BB    mov         edx,edi
 004093BD    mov         eax,ebx
 004093BF    mov         ecx,dword ptr [ebx-4]
 004093C2    call        Move
 004093C7    mov         edx,edi
 004093C9    mov         eax,esi
 004093CB    mov         ecx,dword ptr [esi-4]
 004093CE    add         edx,dword ptr [ebx-4]
 004093D1    call        Move
 004093D6    pop         eax
 004093D7    mov         edx,edi
 004093D9    test        edi,edi
>004093DB    je          004093E0
 004093DD    dec         dword ptr [edi-8]
 004093E0    call        @LStrAsg
 004093E5    pop         esi
 004093E6    pop         ebx
 004093E7    pop         edi
 004093E8    ret
 004093E9    mov         edx,ecx
>004093EB    jmp         @LStrAsg
 004093F0    mov         edx,ecx
>004093F2    jmp         @LStrCat
 004093F7    pop         edi
>004093F8    jmp         @IntOver
 004093FD    ret
*}
end;

//00409400
procedure @LStrCatN(var Dest:AnsiString; ArgCnt:Integer);
begin
{*
 00409400    push        0
 00409402    push        ebx
 00409403    push        esi
 00409404    push        edi
 00409405    push        edx
 00409406    push        eax
 00409407    push        0
 00409409    mov         ebx,edx
 0040940B    xor         edi,edi
 0040940D    mov         ecx,dword ptr [esp+edx*4+1C]
 00409411    test        ecx,ecx
>00409413    je          00409429
 00409415    movzx       esi,word ptr [ecx-0C]
 00409419    mov         dword ptr [esp+18],esi
 0040941D    cmp         dword ptr [eax],ecx
>0040941F    jne         00409429
 00409421    mov         edi,ecx
 00409423    mov         eax,dword ptr [ecx-4]
 00409426    dec         edx
>00409427    jmp         0040942B
 00409429    xor         eax,eax
 0040942B    mov         ecx,dword ptr [esp+edx*4+1C]
 0040942F    test        ecx,ecx
>00409431    je          00409451
 00409433    add         eax,dword ptr [ecx-4]
>00409436    jo          004094C2
 0040943C    cmp         dword ptr [esp+18],0
>00409441    jne         0040944B
 00409443    movzx       esi,word ptr [ecx-0C]
 00409447    mov         dword ptr [esp+18],esi
 0040944B    cmp         edi,ecx
>0040944D    jne         00409451
 0040944F    xor         edi,edi
 00409451    dec         edx
>00409452    jne         0040942B
 00409454    test        edi,edi
>00409456    je          00409478
 00409458    mov         edx,eax
 0040945A    mov         eax,dword ptr [esp+4]
 0040945E    mov         esi,dword ptr [edi-4]
 00409461    movzx       ecx,word ptr [edi-0C]
 00409465    call        @LStrSetLength
 0040946A    mov         edi,dword ptr [esp+4]
 0040946E    mov         eax,dword ptr [edi]
 00409470    mov         dword ptr [esp],eax
 00409473    add         esi,dword ptr [edi]
 00409475    dec         ebx
>00409476    jmp         00409486
 00409478    mov         edx,dword ptr [esp+18]
 0040947C    call        @NewAnsiString
 00409481    mov         dword ptr [esp],eax
 00409484    mov         esi,eax
 00409486    mov         eax,dword ptr [esp+ebx*4+1C]
 0040948A    mov         edx,esi
 0040948C    test        eax,eax
>0040948E    je          0040949A
 00409490    mov         ecx,dword ptr [eax-4]
 00409493    add         esi,ecx
 00409495    call        Move
 0040949A    dec         ebx
>0040949B    jne         00409486
 0040949D    mov         edx,dword ptr [esp]
 004094A0    mov         eax,dword ptr [esp+4]
 004094A4    test        edi,edi
>004094A6    jne         004094B4
 004094A8    test        edx,edx
>004094AA    je          004094AF
 004094AC    dec         dword ptr [edx-8]
 004094AF    call        @LStrAsg
 004094B4    add         esp,8
 004094B7    pop         edx
 004094B8    pop         edi
 004094B9    pop         esi
 004094BA    pop         ebx
 004094BB    pop         eax
 004094BC    pop         eax
 004094BD    lea         esp,[esp+edx*4]
 004094C0    jmp         eax
>004094C2    jmp         @IntOver
 004094C7    ret
*}
end;

//004094C8
procedure @LStrEqual(Left:AnsiString; Right:AnsiString);
begin
{*
 004094C8    cmp         eax,edx
>004094CA    je          004094F7
 004094CC    test        eax,edx
>004094CE    je          004094FC
 004094D0    mov         ecx,dword ptr [eax-4]
 004094D3    cmp         ecx,dword ptr [edx-4]
>004094D6    jne         004094F7
 004094D8    push        ebx
 004094D9    lea         edx,[ecx+edx-4]
 004094DD    lea         ebx,[ecx+eax-4]
 004094E1    neg         ecx
 004094E3    mov         eax,dword ptr [ebx]
 004094E5    cmp         eax,dword ptr [edx]
>004094E7    jne         004094F6
 004094E9    add         ecx,4
>004094EC    jns         004094F8
 004094EE    mov         eax,dword ptr [ecx+ebx]
 004094F1    cmp         eax,dword ptr [ecx+edx]
>004094F4    je          004094E9
 004094F6    pop         ebx
 004094F7    ret
 004094F8    xor         eax,eax
 004094FA    pop         ebx
 004094FB    ret
 004094FC    test        eax,eax
>004094FE    je          00409508
 00409500    test        edx,edx
>00409502    jne         004094D0
 00409504    cmp         dword ptr [eax-4],edx
 00409507    ret
 00409508    cmp         eax,dword ptr [edx-4]
 0040950B    ret
*}
end;

//00409548
function @LStrToPChar(S:AnsiString):PChar;
begin
{*
 00409548    mov         edx,eax
 0040954A    test        edx,edx
>0040954C    jne         0040955C
 0040954E    mov         eax,[0079EA00];^'ÿÿ'+#1+#0+ÿÿÿÿ'+#0+#0+#0+#0+#0+#0
 00409553    call        @LStrToPChar
 00409558    add         eax,0C
 0040955B    ret
 0040955C    mov         eax,edx
 0040955E    ret
*}
end;

//00409560
function @LStrCopy(const S:AnsiString; Index:Integer; Count:Integer):AnsiString;
begin
{*
 00409560    push        ebp
 00409561    mov         ebp,esp
 00409563    push        ebx
 00409564    push        esi
 00409565    mov         ebx,eax
 00409567    test        ebx,ebx
>00409569    je          00409570
 0040956B    sub         ebx,4
 0040956E    mov         ebx,dword ptr [ebx]
 00409570    cmp         edx,1
>00409573    jge         00409579
 00409575    xor         edx,edx
>00409577    jmp         00409580
 00409579    dec         edx
 0040957A    cmp         ebx,edx
>0040957C    jge         00409580
 0040957E    mov         edx,ebx
 00409580    test        ecx,ecx
>00409582    jge         00409588
 00409584    xor         esi,esi
>00409586    jmp         00409592
 00409588    mov         esi,ebx
 0040958A    sub         esi,edx
 0040958C    cmp         ecx,esi
>0040958E    jge         00409592
 00409590    mov         esi,ecx
 00409592    mov         ecx,eax
 00409594    test        ecx,ecx
>00409596    jne         004095A2
 00409598    mov         eax,dword ptr [ebp+8]
 0040959B    call        @LStrClr
>004095A0    jmp         004095B9
 004095A2    mov         ebx,ecx
 004095A4    sub         ebx,0C
 004095A7    movzx       ebx,word ptr [ebx]
 004095AA    push        ebx
 004095AB    mov         ebx,dword ptr [ebp+8]
 004095AE    add         edx,ecx
 004095B0    mov         ecx,esi
 004095B2    mov         eax,ebx
 004095B4    call        @LStrFromPCharLen
 004095B9    pop         esi
 004095BA    pop         ebx
 004095BB    pop         ebp
 004095BC    ret         4
*}
end;

//004095C0
procedure @LStrDelete(var S:AnsiString; Index:Integer; Count:Integer);
begin
{*
 004095C0    push        ebx
 004095C1    push        esi
 004095C2    push        edi
 004095C3    mov         ebx,eax
 004095C5    mov         esi,edx
 004095C7    mov         edi,ecx
 004095C9    call        InternalUniqueStringA
 004095CE    mov         edx,dword ptr [ebx]
 004095D0    test        edx,edx
>004095D2    je          00409608
 004095D4    mov         ecx,dword ptr [edx-4]
 004095D7    dec         esi
>004095D8    jl          00409608
 004095DA    cmp         esi,ecx
>004095DC    jge         00409608
 004095DE    test        edi,edi
>004095E0    jle         00409608
 004095E2    sub         ecx,esi
 004095E4    cmp         edi,ecx
>004095E6    jle         004095EA
 004095E8    mov         edi,ecx
 004095EA    sub         ecx,edi
 004095EC    add         edx,esi
 004095EE    lea         eax,[edi+edx]
 004095F1    call        Move
 004095F6    mov         edx,dword ptr [ebx]
 004095F8    mov         eax,ebx
 004095FA    movzx       ecx,word ptr [edx-0C]
 004095FE    mov         edx,dword ptr [edx-4]
 00409601    sub         edx,edi
 00409603    call        @LStrSetLength
 00409608    pop         edi
 00409609    pop         esi
 0040960A    pop         ebx
 0040960B    ret
*}
end;

//0040960C
procedure @LStrSetLength(var S:AnsiString; NewLen:Integer);
begin
{*
 0040960C    push        ebx
 0040960D    push        esi
 0040960E    push        edi
 0040960F    push        ebp
 00409610    push        0
 00409612    mov         ebx,eax
 00409614    mov         esi,edx
 00409616    mov         ebp,ecx
 00409618    xor         edi,edi
 0040961A    test        edx,edx
>0040961C    jle         00409673
 0040961E    mov         eax,dword ptr [ebx]
 00409620    test        eax,eax
>00409622    je          00409652
 00409624    cmp         dword ptr [eax-8],1
>00409628    jne         00409652
 0040962A    sub         eax,0C
 0040962D    add         edx,0D
>00409630    jo          0040964D
 00409632    mov         dword ptr [esp],eax
 00409635    mov         eax,esp
 00409637    call        @ReallocMem
 0040963C    mov         eax,dword ptr [esp]
 0040963F    add         eax,0C
 00409642    mov         dword ptr [ebx],eax
 00409644    mov         dword ptr [eax-4],esi
 00409647    mov         byte ptr [esi+eax],0
>0040964B    jmp         0040967C
>0040964D    jmp         @IntOver
 00409652    mov         eax,edx
 00409654    mov         edx,ebp
 00409656    call        @NewAnsiString
 0040965B    mov         edi,eax
 0040965D    mov         eax,dword ptr [ebx]
 0040965F    test        eax,eax
>00409661    je          00409673
 00409663    mov         edx,edi
 00409665    mov         ecx,dword ptr [eax-4]
 00409668    cmp         ecx,esi
>0040966A    jl          0040966E
 0040966C    mov         ecx,esi
 0040966E    call        Move
 00409673    mov         eax,ebx
 00409675    call        @LStrClr
 0040967A    mov         dword ptr [ebx],edi
 0040967C    pop         edx
 0040967D    pop         ebp
 0040967E    pop         edi
 0040967F    pop         esi
 00409680    pop         ebx
 00409681    ret
*}
end;

//00409684
procedure @LStrFromUStr(var Dest:AnsiString; const Source:AnsiString; CodePage:Word);
begin
{*
 00409684    push        dword ptr [esp]
 00409687    mov         dword ptr [esp+4],ecx
 0040968B    xor         ecx,ecx
 0040968D    test        edx,edx
>0040968F    je          00409694
 00409691    mov         ecx,dword ptr [edx-4]
>00409694    jmp         @LStrFromPWCharLen
 00409699    ret
*}
end;

//0040969C
procedure WStrSet(var S:WideString; P:PWideChar);
begin
{*
 0040969C    xchg        edx,dword ptr [eax]
 0040969E    test        edx,edx
>004096A0    je          004096A8
 004096A2    push        edx
 004096A3    call        oleaut32.SysFreeString
 004096A8    ret
*}
end;

//004096AC
procedure @WStrFromChar(var Dest:WideString; Source:AnsiChar);
begin
{*
 004096AC    push        edx
 004096AD    mov         edx,esp
 004096AF    mov         ecx,1
 004096B4    push        dword ptr ds:[7C5900];gvar_007C5900
 004096BA    call        InternalWStrFromPCharLen
 004096BF    pop         edx
 004096C0    ret
*}
end;

//004096C4
procedure @WStrFromWChar(var Dest:WideString; Source:WideChar);
begin
{*
 004096C4    push        edx
 004096C5    mov         edx,esp
 004096C7    mov         ecx,1
 004096CC    call        @WStrFromPWCharLen
 004096D1    pop         edx
 004096D2    ret
*}
end;

//004096D4
procedure @WStrFromPChar(var Dest:WideString; Source:PAnsiChar);
begin
{*
 004096D4    xor         ecx,ecx
 004096D6    test        edx,edx
>004096D8    je          004096FB
 004096DA    push        edx
 004096DB    cmp         cl,byte ptr [edx]
>004096DD    je          004096F6
 004096DF    cmp         cl,byte ptr [edx+1]
>004096E2    je          004096F5
 004096E4    cmp         cl,byte ptr [edx+2]
>004096E7    je          004096F4
 004096E9    cmp         cl,byte ptr [edx+3]
>004096EC    je          004096F3
 004096EE    add         edx,4
>004096F1    jmp         004096DB
 004096F3    inc         edx
 004096F4    inc         edx
 004096F5    inc         edx
 004096F6    mov         ecx,edx
 004096F8    pop         edx
 004096F9    sub         ecx,edx
>004096FB    jmp         @WStrFromPCharLen
 00409700    ret
*}
end;

//00409704
procedure @WStrFromPWChar(var Dest:WideString; Source:PWideChar);
begin
{*
 00409704    xor         ecx,ecx
 00409706    test        edx,edx
>00409708    je          00409737
 0040970A    push        edx
 0040970B    cmp         cx,word ptr [edx]
>0040970E    je          00409730
 00409710    cmp         cx,word ptr [edx+2]
>00409714    je          0040972D
 00409716    cmp         cx,word ptr [edx+4]
>0040971A    je          0040972A
 0040971C    cmp         cx,word ptr [edx+6]
>00409720    je          00409727
 00409722    add         edx,8
>00409725    jmp         0040970B
 00409727    add         edx,2
 0040972A    add         edx,2
 0040972D    add         edx,2
 00409730    mov         ecx,edx
 00409732    pop         edx
 00409733    sub         ecx,edx
 00409735    shr         ecx,1
>00409737    jmp         @WStrFromPWCharLen
 0040973C    ret
*}
end;

//00409740
procedure @WStrFromLStr(var Dest:WideString; const Source:AnsiString);
begin
{*
 00409740    xor         ecx,ecx
 00409742    test        edx,edx
>00409744    je          00409759
 00409746    movzx       ecx,word ptr [edx-0C]
 0040974A    push        dword ptr [esp]
 0040974D    mov         dword ptr [esp+4],ecx
 00409751    mov         ecx,dword ptr [edx-4]
>00409754    jmp         InternalWStrFromPCharLen
>00409759    jmp         @WStrClr
 0040975E    ret
*}
end;

//00409760
function @WStrToPWChar(S:WideString):PWideChar;
begin
{*
 00409760    mov         edx,eax
 00409762    test        edx,edx
>00409764    jne         0040976C
 00409766    mov         eax,409770
 0040976B    ret
 0040976C    mov         eax,edx
 0040976E    ret
*}
end;

//00409774
{*function @WStrCmp(Left:WideString; Right:WideString):?;
begin
 00409774    push        ebx
 00409775    push        esi
 00409776    push        edi
 00409777    mov         esi,eax
 00409779    mov         edi,edx
 0040977B    cmp         eax,edx
>0040977D    je          004097F1
 0040977F    test        esi,esi
>00409781    je          004097D4
 00409783    test        edi,edi
>00409785    je          004097DB
 00409787    mov         eax,dword ptr [esi-4]
 0040978A    mov         edx,dword ptr [edi-4]
 0040978D    sub         eax,edx
>0040978F    ja          00409793
 00409791    add         edx,eax
 00409793    push        edx
 00409794    shr         edx,2
>00409797    je          004097BF
 00409799    mov         ecx,dword ptr [esi]
 0040979B    mov         ebx,dword ptr [edi]
 0040979D    cmp         ecx,ebx
>0040979F    jne         004097E2
 004097A1    dec         edx
>004097A2    je          004097B9
 004097A4    mov         ecx,dword ptr [esi+4]
 004097A7    mov         ebx,dword ptr [edi+4]
 004097AA    cmp         ecx,ebx
>004097AC    jne         004097E2
 004097AE    add         esi,8
 004097B1    add         edi,8
 004097B4    dec         edx
>004097B5    jne         00409799
>004097B7    jmp         004097BF
 004097B9    add         esi,4
 004097BC    add         edi,4
 004097BF    pop         edx
 004097C0    and         edx,2
>004097C3    je          004097D0
 004097C5    mov         cx,word ptr [esi]
 004097C8    mov         bx,word ptr [edi]
 004097CB    cmp         cx,bx
>004097CE    jne         004097F1
 004097D0    add         eax,eax
>004097D2    jmp         004097F1
 004097D4    mov         edx,dword ptr [edi-4]
 004097D7    sub         eax,edx
>004097D9    jmp         004097F1
 004097DB    mov         eax,dword ptr [esi-4]
 004097DE    sub         eax,edx
>004097E0    jmp         004097F1
 004097E2    pop         edx
 004097E3    cmp         cx,bx
>004097E6    jne         004097F1
 004097E8    shr         ecx,10
 004097EB    shr         ebx,10
 004097EE    cmp         cx,bx
 004097F1    pop         edi
 004097F2    pop         esi
 004097F3    pop         ebx
 004097F4    ret
end;*}

//004097F8
procedure @WStrEqual(Left:WideString; Right:WideString);
begin
{*
>004097F8    jmp         @WStrCmp
 004097FD    ret
*}
end;

//00409800
function @WStrCopy(const S:WideString; Index:Integer; Count:Integer):WideString;
begin
{*
 00409800    push        ebp
 00409801    mov         ebp,esp
 00409803    push        ebx
 00409804    push        esi
 00409805    mov         ebx,eax
 00409807    test        ebx,ebx
>00409809    je          00409812
 0040980B    sub         ebx,4
 0040980E    mov         ebx,dword ptr [ebx]
 00409810    shr         ebx,1
 00409812    cmp         edx,1
>00409815    jge         0040981B
 00409817    xor         edx,edx
>00409819    jmp         00409822
 0040981B    dec         edx
 0040981C    cmp         ebx,edx
>0040981E    jge         00409822
 00409820    mov         edx,ebx
 00409822    test        ecx,ecx
>00409824    jge         0040982A
 00409826    xor         esi,esi
>00409828    jmp         00409834
 0040982A    mov         esi,ebx
 0040982C    sub         esi,edx
 0040982E    cmp         ecx,esi
>00409830    jge         00409834
 00409832    mov         esi,ecx
 00409834    mov         ecx,dword ptr [ebp+8]
 00409837    add         edx,edx
 00409839    add         edx,eax
 0040983B    mov         eax,esi
 0040983D    xchg        eax,ecx
 0040983E    call        @WStrFromPWCharLen
 00409843    pop         esi
 00409844    pop         ebx
 00409845    pop         ebp
 00409846    ret         4
*}
end;

//0040984C
procedure @WStrSetLength(var S:WideString; NewLen:Integer);
begin
{*
 0040984C    push        ebx
 0040984D    push        esi
 0040984E    push        edi
 0040984F    mov         esi,edx
 00409851    mov         edi,eax
 00409853    xor         ebx,ebx
 00409855    test        esi,esi
>00409857    jle         00409886
 00409859    mov         eax,esi
 0040985B    call        @NewWideString
 00409860    mov         ebx,eax
 00409862    mov         eax,dword ptr [edi]
 00409864    test        eax,eax
>00409866    je          0040986F
 00409868    sub         eax,4
 0040986B    mov         eax,dword ptr [eax]
 0040986D    shr         eax,1
 0040986F    test        eax,eax
>00409871    jle         00409886
 00409873    cmp         esi,eax
>00409875    jge         00409879
 00409877    mov         eax,esi
 00409879    mov         ecx,eax
 0040987B    add         ecx,ecx
 0040987D    mov         edx,ebx
 0040987F    mov         eax,dword ptr [edi]
 00409881    call        Move
 00409886    mov         eax,edi
 00409888    mov         edx,ebx
 0040988A    call        WStrSet
 0040988F    pop         edi
 00409890    pop         esi
 00409891    pop         ebx
 00409892    ret
*}
end;

//00409894
procedure @WCharToString(Dest:PShortString; const Source:Char; MaxLen:Integer);
begin
{*
 00409894    push        ebx
 00409895    push        esi
 00409896    add         esp,0FFFFFEFC
 0040989C    mov         ebx,ecx
 0040989E    mov         word ptr [esp],dx
 004098A2    mov         esi,eax
 004098A4    cmp         ebx,0FF
>004098AA    jle         004098B1
 004098AC    mov         ebx,0FF
 004098B1    push        1
 004098B3    lea         ecx,[esp+4]
 004098B7    lea         eax,[esp+6]
 004098BB    mov         edx,0FF
 004098C0    call        CharFromWChar
 004098C5    test        eax,eax
>004098C7    jge         004098CD
 004098C9    xor         eax,eax
>004098CB    jmp         004098D3
 004098CD    cmp         ebx,eax
>004098CF    jge         004098D3
 004098D1    mov         eax,ebx
 004098D3    mov         byte ptr [esi],al
 004098D5    test        eax,eax
>004098D7    jle         004098E6
 004098D9    lea         edx,[esi+1]
 004098DC    lea         ecx,[esp+2]
 004098E0    xchg        eax,ecx
 004098E1    call        Move
 004098E6    add         esp,104
 004098EC    pop         esi
 004098ED    pop         ebx
 004098EE    ret
*}
end;

//004098F0
function @UStrToPWChar(S:UnicodeString):PWideChar;
begin
{*
 004098F0    mov         edx,eax
 004098F2    test        edx,edx
>004098F4    jne         00409904
 004098F6    mov         eax,[0079EA04];^'ÿÿ'+#2+#0+ÿÿÿÿ'+#0+#0+#0+#0+#0+#0
 004098FB    call        @LStrToPChar
 00409900    add         eax,0C
 00409903    ret
 00409904    mov         eax,edx
 00409906    ret
*}
end;

//00409908
procedure @UStrFromChar(var Dest:UnicodeString; Source:AnsiChar);
begin
{*
 00409908    push        edx
 00409909    mov         edx,esp
 0040990B    mov         ecx,1
 00409910    call        @UStrFromPCharLen
 00409915    pop         edx
 00409916    ret
*}
end;

//00409918
procedure @UStrFromWChar(var Dest:UnicodeString; Source:WideChar);
begin
{*
 00409918    push        edx
 00409919    mov         edx,esp
 0040991B    mov         ecx,1
 00409920    call        @UStrFromPWCharLen
 00409925    pop         edx
 00409926    ret
*}
end;

//00409928
procedure @UStrFromPChar(var Dest:UnicodeString; Source:PAnsiChar);
begin
{*
 00409928    xor         ecx,ecx
 0040992A    test        edx,edx
>0040992C    je          0040994F
 0040992E    push        edx
 0040992F    cmp         cl,byte ptr [edx]
>00409931    je          0040994A
 00409933    cmp         cl,byte ptr [edx+1]
>00409936    je          00409949
 00409938    cmp         cl,byte ptr [edx+2]
>0040993B    je          00409948
 0040993D    cmp         cl,byte ptr [edx+3]
>00409940    je          00409947
 00409942    add         edx,4
>00409945    jmp         0040992F
 00409947    inc         edx
 00409948    inc         edx
 00409949    inc         edx
 0040994A    mov         ecx,edx
 0040994C    pop         edx
 0040994D    sub         ecx,edx
>0040994F    jmp         @UStrFromPCharLen
 00409954    ret
*}
end;

//00409958
procedure @UStrFromPWChar(var Dest:UnicodeString; Source:PWideChar);
begin
{*
 00409958    xor         ecx,ecx
 0040995A    test        edx,edx
>0040995C    je          0040998B
 0040995E    push        edx
 0040995F    cmp         cx,word ptr [edx]
>00409962    je          00409984
 00409964    cmp         cx,word ptr [edx+2]
>00409968    je          00409981
 0040996A    cmp         cx,word ptr [edx+4]
>0040996E    je          0040997E
 00409970    cmp         cx,word ptr [edx+6]
>00409974    je          0040997B
 00409976    add         edx,8
>00409979    jmp         0040995F
 0040997B    add         edx,2
 0040997E    add         edx,2
 00409981    add         edx,2
 00409984    mov         ecx,edx
 00409986    pop         edx
 00409987    sub         ecx,edx
 00409989    shr         ecx,1
>0040998B    jmp         @UStrFromPWCharLen
 00409990    ret
*}
end;

//00409994
procedure @UStrFromWArray(var Dest:UnicodeString; Source:PWideChar; Length:Integer);
begin
{*
 00409994    push        edi
 00409995    push        eax
 00409996    push        ecx
 00409997    mov         edi,edx
 00409999    xor         eax,eax
 0040999B    repne scas  word ptr [edi]
>0040999E    jne         004099A2
 004099A0    not         ecx
 004099A2    pop         eax
 004099A3    add         ecx,eax
 004099A5    pop         eax
 004099A6    pop         edi
>004099A7    jmp         @UStrFromPWCharLen
 004099AC    ret
*}
end;

//004099B0
procedure @UStrFromLStr(var Dest:UnicodeString; const Source:AnsiString);
begin
{*
 004099B0    xor         ecx,ecx
 004099B2    test        edx,edx
>004099B4    je          004099C9
 004099B6    movzx       ecx,word ptr [edx-0C]
 004099BA    push        dword ptr [esp]
 004099BD    mov         dword ptr [esp+4],ecx
 004099C1    mov         ecx,dword ptr [edx-4]
>004099C4    jmp         InternalUStrFromPCharLen
>004099C9    jmp         @UStrFromPCharLen
 004099CE    ret
*}
end;

//004099D0
procedure @UStrFromWStr(var Dest:UnicodeString; const Source:WideString);
begin
{*
 004099D0    xor         ecx,ecx
 004099D2    test        edx,edx
>004099D4    je          004099DB
 004099D6    mov         ecx,dword ptr [edx-4]
 004099D9    shr         ecx,1
>004099DB    jmp         @UStrFromPWCharLen
 004099E0    ret
*}
end;

//004099E4
procedure @WStrFromUStr(var Dest:WideString; const Source:AnsiString);
begin
{*
 004099E4    xor         ecx,ecx
 004099E6    test        edx,edx
>004099E8    je          004099ED
 004099EA    mov         ecx,dword ptr [edx-4]
>004099ED    jmp         @WStrFromPWCharLen
 004099F2    ret
*}
end;

//004099F4
procedure @UStrToString(var Dest:ShortString; const Source:UnicodeString; MaxLen:Integer);
begin
{*
 004099F4    push        ebx
 004099F5    push        esi
 004099F6    add         esp,0FFFFFE00
 004099FC    mov         ebx,ecx
 004099FE    mov         esi,eax
 00409A00    cmp         ebx,0FF
>00409A06    jle         00409A0D
 00409A08    mov         ebx,0FF
 00409A0D    mov         eax,edx
 00409A0F    test        eax,eax
>00409A11    je          00409A18
 00409A13    sub         eax,4
 00409A16    mov         eax,dword ptr [eax]
 00409A18    cmp         ebx,eax
>00409A1A    jg          00409A1E
 00409A1C    mov         eax,ebx
 00409A1E    test        eax,eax
>00409A20    jne         00409A26
 00409A22    xor         eax,eax
>00409A24    jmp         00409A45
 00409A26    push        eax
 00409A27    lea         eax,[esp+4]
 00409A2B    mov         ecx,edx
 00409A2D    mov         edx,1FF
 00409A32    call        CharFromWChar
 00409A37    test        eax,eax
>00409A39    jge         00409A3F
 00409A3B    xor         eax,eax
>00409A3D    jmp         00409A45
 00409A3F    cmp         ebx,eax
>00409A41    jge         00409A45
 00409A43    mov         eax,ebx
 00409A45    mov         byte ptr [esi],al
 00409A47    test        eax,eax
>00409A49    jle         00409A56
 00409A4B    lea         edx,[esi+1]
 00409A4E    mov         ecx,esp
 00409A50    xchg        eax,ecx
 00409A51    call        Move
 00409A56    add         esp,200
 00409A5C    pop         esi
 00409A5D    pop         ebx
 00409A5E    ret
*}
end;

//00409A60
procedure @UStrFromString(var Dest:UnicodeString; const Source:ShortString);
begin
{*
 00409A60    xor         ecx,ecx
 00409A62    mov         cl,byte ptr [edx]
 00409A64    inc         edx
>00409A65    jmp         @UStrFromPCharLen
 00409A6A    ret
*}
end;

//00409A6C
procedure @UStrSetLength(var S:UnicodeString; NewLen:Integer);
begin
{*
 00409A6C    push        ebx
 00409A6D    push        esi
 00409A6E    push        edi
 00409A6F    mov         ebx,eax
 00409A71    mov         esi,edx
 00409A73    xor         edi,edi
 00409A75    test        edx,edx
>00409A77    jle         00409ADD
 00409A79    mov         eax,dword ptr [ebx]
 00409A7B    test        eax,eax
>00409A7D    je          00409ABC
 00409A7F    cmp         dword ptr [eax-8],1
>00409A83    jne         00409ABC
 00409A85    sub         eax,0C
 00409A88    add         edx,edx
>00409A8A    jo          00409AB7
 00409A8C    add         edx,0E
>00409A8F    jo          00409AB7
 00409A91    push        eax
 00409A92    mov         eax,esp
 00409A94    call        @ReallocMem
 00409A99    pop         eax
 00409A9A    add         eax,0C
 00409A9D    mov         dword ptr [ebx],eax
 00409A9F    mov         dword ptr [eax-4],esi
 00409AA2    mov         word ptr [eax+esi*2],0
 00409AA8    test        edi,edi
>00409AAA    je          00409AE6
 00409AAC    push        edi
 00409AAD    mov         eax,esp
 00409AAF    call        @LStrClr
 00409AB4    pop         edi
>00409AB5    jmp         00409AE6
>00409AB7    jmp         @IntOver
 00409ABC    mov         eax,edx
 00409ABE    call        @NewUnicodeString
 00409AC3    mov         edi,eax
 00409AC5    mov         eax,dword ptr [ebx]
 00409AC7    test        eax,eax
>00409AC9    je          00409ADD
 00409ACB    mov         edx,edi
 00409ACD    mov         ecx,dword ptr [eax-4]
 00409AD0    cmp         ecx,esi
>00409AD2    jl          00409AD6
 00409AD4    mov         ecx,esi
 00409AD6    shl         ecx,1
 00409AD8    call        Move
 00409ADD    mov         eax,ebx
 00409ADF    call        @LStrClr
 00409AE4    mov         dword ptr [ebx],edi
 00409AE6    pop         edi
 00409AE7    pop         esi
 00409AE8    pop         ebx
 00409AE9    ret
*}
end;

//00409AEC
procedure @UStrCat(var Dest:UnicodeString; Source:UnicodeString);
begin
{*
 00409AEC    test        edx,edx
>00409AEE    je          00409B40
 00409AF0    mov         ecx,dword ptr [eax]
 00409AF2    test        ecx,ecx
>00409AF4    je          00408EFC
 00409AFA    push        ebx
 00409AFB    push        esi
 00409AFC    push        edi
 00409AFD    mov         ebx,eax
 00409AFF    mov         esi,edx
 00409B01    mov         edi,dword ptr [ecx-4]
 00409B04    mov         edx,dword ptr [esi-4]
 00409B07    add         edx,edi
 00409B09    test        edx,0C0000000
>00409B0F    jne         00409B3B
 00409B11    cmp         esi,ecx
>00409B13    je          00409B30
 00409B15    call        @UStrSetLength
 00409B1A    mov         eax,esi
 00409B1C    mov         ecx,dword ptr [esi-4]
 00409B1F    mov         edx,dword ptr [ebx]
 00409B21    shl         edi,1
 00409B23    add         edx,edi
 00409B25    shl         ecx,1
 00409B27    call        Move
 00409B2C    pop         edi
 00409B2D    pop         esi
 00409B2E    pop         ebx
 00409B2F    ret
 00409B30    call        @UStrSetLength
 00409B35    mov         eax,dword ptr [ebx]
 00409B37    mov         ecx,edi
>00409B39    jmp         00409B1F
>00409B3B    jmp         @IntOver
 00409B40    ret
*}
end;

//00409B44
procedure @UStrCat3(var Dest:UnicodeString; Source1:UnicodeString; Source2:UnicodeString);
begin
{*
 00409B44    test        edx,edx
>00409B46    je          00409BB6
 00409B48    test        ecx,ecx
>00409B4A    je          00408EFC
 00409B50    cmp         edx,dword ptr [eax]
>00409B52    je          00409BBD
 00409B54    cmp         ecx,dword ptr [eax]
>00409B56    je          00409B66
 00409B58    push        eax
 00409B59    push        ecx
 00409B5A    call        @UStrAsg
 00409B5F    pop         edx
 00409B60    pop         eax
>00409B61    jmp         @UStrCat
 00409B66    push        ebx
 00409B67    push        esi
 00409B68    push        edi
 00409B69    mov         ebx,edx
 00409B6B    mov         esi,ecx
 00409B6D    push        eax
 00409B6E    mov         eax,dword ptr [ebx-4]
 00409B71    add         eax,dword ptr [esi-4]
 00409B74    test        eax,0C0000000
>00409B79    jne         00409BC4
 00409B7B    call        @NewUnicodeString
 00409B80    mov         edi,eax
 00409B82    mov         edx,edi
 00409B84    mov         eax,ebx
 00409B86    mov         ecx,dword ptr [ebx-4]
 00409B89    shl         ecx,1
 00409B8B    call        Move
 00409B90    mov         eax,esi
 00409B92    mov         ecx,dword ptr [esi-4]
 00409B95    shl         ecx,1
 00409B97    mov         edx,dword ptr [ebx-4]
 00409B9A    shl         edx,1
 00409B9C    add         edx,edi
 00409B9E    call        Move
 00409BA3    pop         eax
 00409BA4    mov         edx,edi
 00409BA6    test        edi,edi
>00409BA8    je          00409BAD
 00409BAA    dec         dword ptr [edi-8]
 00409BAD    call        @UStrAsg
 00409BB2    pop         edi
 00409BB3    pop         esi
 00409BB4    pop         ebx
 00409BB5    ret
 00409BB6    mov         edx,ecx
>00409BB8    jmp         @UStrAsg
 00409BBD    mov         edx,ecx
>00409BBF    jmp         @UStrCat
>00409BC4    jmp         @IntOver
 00409BC9    ret
*}
end;

//00409BCC
procedure @UStrCatN(var Dest:UnicodeString; ArgCnt:Integer);
begin
{*
 00409BCC    sub         esp,4
 00409BCF    push        ebx
 00409BD0    push        esi
 00409BD1    push        edi
 00409BD2    push        edx
 00409BD3    push        eax
 00409BD4    push        0
 00409BD6    mov         ebx,edx
 00409BD8    xor         edi,edi
 00409BDA    mov         ecx,dword ptr [esp+edx*4+1C]
 00409BDE    test        ecx,ecx
>00409BE0    je          00409BEE
 00409BE2    cmp         dword ptr [eax],ecx
>00409BE4    jne         00409BEE
 00409BE6    mov         edi,ecx
 00409BE8    mov         eax,dword ptr [ecx-4]
 00409BEB    dec         edx
>00409BEC    jmp         00409BF0
 00409BEE    xor         eax,eax
 00409BF0    mov         ecx,dword ptr [esp+edx*4+1C]
 00409BF4    test        ecx,ecx
>00409BF6    je          00409C08
 00409BF8    add         eax,dword ptr [ecx-4]
 00409BFB    test        eax,0C0000000
>00409C00    jne         00409C75
 00409C02    cmp         edi,ecx
>00409C04    jne         00409C08
 00409C06    xor         edi,edi
 00409C08    dec         edx
>00409C09    jne         00409BF0
 00409C0B    test        edi,edi
>00409C0D    je          00409C2D
 00409C0F    mov         edx,eax
 00409C11    mov         eax,dword ptr [esp+4]
 00409C15    mov         esi,dword ptr [edi-4]
 00409C18    call        @UStrSetLength
 00409C1D    mov         edi,dword ptr [esp+4]
 00409C21    mov         eax,dword ptr [edi]
 00409C23    mov         dword ptr [esp],eax
 00409C26    shl         esi,1
 00409C28    add         esi,dword ptr [edi]
 00409C2A    dec         ebx
>00409C2B    jmp         00409C37
 00409C2D    call        @NewUnicodeString
 00409C32    mov         dword ptr [esp],eax
 00409C35    mov         esi,eax
 00409C37    mov         eax,dword ptr [esp+ebx*4+1C]
 00409C3B    mov         edx,esi
 00409C3D    test        eax,eax
>00409C3F    je          00409C4D
 00409C41    mov         ecx,dword ptr [eax-4]
 00409C44    shl         ecx,1
 00409C46    add         esi,ecx
 00409C48    call        Move
 00409C4D    dec         ebx
>00409C4E    jne         00409C37
 00409C50    mov         edx,dword ptr [esp]
 00409C53    mov         eax,dword ptr [esp+4]
 00409C57    test        edi,edi
>00409C59    jne         00409C67
 00409C5B    test        edx,edx
>00409C5D    je          00409C62
 00409C5F    dec         dword ptr [edx-8]
 00409C62    call        @UStrAsg
 00409C67    add         esp,8
 00409C6A    pop         edx
 00409C6B    pop         edi
 00409C6C    pop         esi
 00409C6D    pop         ebx
 00409C6E    pop         eax
 00409C6F    pop         eax
 00409C70    lea         esp,[esp+edx*4]
 00409C73    jmp         eax
>00409C75    jmp         @IntOver
 00409C7A    ret
*}
end;

//00409C7C
procedure @UStrEqual(Left:UnicodeString; Right:UnicodeString);
begin
{*
 00409C7C    cmp         eax,edx
>00409C7E    je          00409CB0
 00409C80    test        eax,edx
>00409C82    je          00409CA6
 00409C84    mov         ecx,dword ptr [eax-4]
 00409C87    cmp         ecx,dword ptr [edx-4]
>00409C8A    jne         00409CB0
 00409C8C    add         ecx,ecx
 00409C8E    add         eax,ecx
 00409C90    add         edx,ecx
 00409C92    neg         ecx
 00409C94    push        ebx
 00409C95    mov         ebx,dword ptr [ecx+eax]
 00409C98    cmp         ebx,dword ptr [ecx+edx]
>00409C9B    jne         00409CA4
 00409C9D    add         ecx,4
>00409CA0    js          00409C95
 00409CA2    xor         eax,eax
 00409CA4    pop         ebx
 00409CA5    ret
 00409CA6    test        eax,eax
>00409CA8    je          00409CAE
 00409CAA    test        edx,edx
>00409CAC    jne         00409C84
 00409CAE    cmp         eax,edx
 00409CB0    ret
*}
end;

//00409CB4
function @UStrCopy(const S:UnicodeString; Index:Integer; Count:Integer):UnicodeString;
begin
{*
 00409CB4    push        ebp
 00409CB5    mov         ebp,esp
 00409CB7    push        ebx
 00409CB8    push        esi
 00409CB9    mov         ebx,eax
 00409CBB    test        ebx,ebx
>00409CBD    je          00409CC4
 00409CBF    sub         ebx,4
 00409CC2    mov         ebx,dword ptr [ebx]
 00409CC4    cmp         edx,1
>00409CC7    jge         00409CCD
 00409CC9    xor         edx,edx
>00409CCB    jmp         00409CD4
 00409CCD    dec         edx
 00409CCE    cmp         ebx,edx
>00409CD0    jge         00409CD4
 00409CD2    mov         edx,ebx
 00409CD4    test        ecx,ecx
>00409CD6    jge         00409CDC
 00409CD8    xor         esi,esi
>00409CDA    jmp         00409CE6
 00409CDC    mov         esi,ebx
 00409CDE    sub         esi,edx
 00409CE0    cmp         ecx,esi
>00409CE2    jge         00409CE6
 00409CE4    mov         esi,ecx
 00409CE6    mov         ecx,dword ptr [ebp+8]
 00409CE9    add         edx,edx
 00409CEB    add         edx,eax
 00409CED    mov         eax,esi
 00409CEF    xchg        eax,ecx
 00409CF0    call        @UStrFromPWCharLen
 00409CF5    pop         esi
 00409CF6    pop         ebx
 00409CF7    pop         ebp
 00409CF8    ret         4
*}
end;

//00409CFC
procedure @UStrDelete(var S:UnicodeString; Index:Integer; Count:Integer);
begin
{*
 00409CFC    push        ebx
 00409CFD    push        esi
 00409CFE    push        edi
 00409CFF    mov         edi,ecx
 00409D01    mov         ebx,edx
 00409D03    mov         esi,eax
 00409D05    mov         eax,esi
 00409D07    call        InternalUniqueStringU
 00409D0C    mov         eax,dword ptr [esi]
 00409D0E    test        eax,eax
>00409D10    je          00409D17
 00409D12    sub         eax,4
 00409D15    mov         eax,dword ptr [eax]
 00409D17    cmp         ebx,1
>00409D1A    jl          00409D52
 00409D1C    cmp         eax,ebx
>00409D1E    jl          00409D52
 00409D20    test        edi,edi
>00409D22    jle         00409D52
 00409D24    dec         ebx
 00409D25    mov         edx,eax
 00409D27    sub         edx,ebx
 00409D29    sub         edx,edi
 00409D2B    mov         edi,edx
 00409D2D    test        edi,edi
>00409D2F    jge         00409D33
 00409D31    xor         edi,edi
 00409D33    sub         eax,edi
 00409D35    mov         edx,dword ptr [esi]
 00409D37    lea         eax,[edx+eax*2]
 00409D3A    mov         ecx,edi
 00409D3C    add         ecx,ecx
 00409D3E    mov         edx,dword ptr [esi]
 00409D40    lea         edx,[edx+ebx*2]
 00409D43    call        Move
 00409D48    lea         edx,[edi+ebx]
 00409D4B    mov         eax,esi
 00409D4D    call        @UStrSetLength
 00409D52    pop         edi
 00409D53    pop         esi
 00409D54    pop         ebx
 00409D55    ret
*}
end;

//00409D58
procedure @UStrInsert(const Source:UnicodeString; var S:UnicodeString; Index:Integer);
begin
{*
 00409D58    push        ebx
 00409D59    push        esi
 00409D5A    push        edi
 00409D5B    push        ebp
 00409D5C    add         esp,0FFFFFFF4
 00409D5F    mov         esi,ecx
 00409D61    mov         edi,edx
 00409D63    mov         dword ptr [esp],eax
 00409D66    mov         eax,dword ptr [esp]
 00409D69    test        eax,eax
>00409D6B    je          00409D72
 00409D6D    sub         eax,4
 00409D70    mov         eax,dword ptr [eax]
 00409D72    mov         ebp,eax
 00409D74    test        ebp,ebp
>00409D76    jle         00409E07
 00409D7C    mov         eax,dword ptr [edi]
 00409D7E    test        eax,eax
>00409D80    je          00409D87
 00409D82    sub         eax,4
 00409D85    mov         eax,dword ptr [eax]
 00409D87    mov         ebx,eax
 00409D89    cmp         esi,1
>00409D8C    jge         00409D92
 00409D8E    xor         esi,esi
>00409D90    jmp         00409D99
 00409D92    dec         esi
 00409D93    cmp         ebx,esi
>00409D95    jge         00409D99
 00409D97    mov         esi,ebx
 00409D99    mov         eax,dword ptr [edi]
 00409D9B    cmp         eax,dword ptr [esp]
 00409D9E    sete        byte ptr [esp+8]
 00409DA3    lea         eax,[ebp+ebx]
 00409DA7    mov         dword ptr [esp+4],eax
 00409DAB    cmp         dword ptr [esp+4],0
>00409DB0    jge         00409DB7
 00409DB2    call        @IntOver
 00409DB7    mov         eax,edi
 00409DB9    mov         edx,dword ptr [esp+4]
 00409DBD    call        @UStrSetLength
 00409DC2    cmp         ebx,esi
>00409DC4    jle         00409DDF
 00409DC6    lea         eax,[ebp+esi]
 00409DCA    mov         edx,dword ptr [edi]
 00409DCC    lea         edx,[edx+eax*2]
 00409DCF    mov         eax,dword ptr [edi]
 00409DD1    lea         eax,[eax+esi*2]
 00409DD4    sub         ebx,esi
 00409DD6    mov         ecx,ebx
 00409DD8    add         ecx,ecx
 00409DDA    call        Move
 00409DDF    cmp         byte ptr [esp+8],0
>00409DE4    je          00409DF6
 00409DE6    mov         eax,dword ptr [edi]
 00409DE8    lea         edx,[eax+esi*2]
 00409DEB    mov         ecx,ebp
 00409DED    add         ecx,ecx
 00409DEF    call        Move
>00409DF4    jmp         00409E07
 00409DF6    mov         eax,dword ptr [edi]
 00409DF8    lea         edx,[eax+esi*2]
 00409DFB    mov         ecx,ebp
 00409DFD    add         ecx,ecx
 00409DFF    mov         eax,dword ptr [esp]
 00409E02    call        Move
 00409E07    add         esp,0C
 00409E0A    pop         ebp
 00409E0B    pop         edi
 00409E0C    pop         esi
 00409E0D    pop         ebx
 00409E0E    ret
*}
end;

//00409E10
function Pos(const SubStr:ShortString; const Str:ShortString; Offset:Integer):Integer;
begin
{*
 00409E10    test        eax,eax
>00409E12    je          00409E6F
 00409E14    test        edx,edx
>00409E16    je          00409E6F
 00409E18    dec         ecx
>00409E19    jl          00409E6F
 00409E1B    push        esi
 00409E1C    push        ebx
 00409E1D    movzx       esi,byte ptr [edx]
 00409E20    movzx       ebx,byte ptr [eax]
 00409E23    inc         edx
 00409E24    inc         eax
 00409E25    sub         esi,ecx
 00409E27    add         edx,ecx
 00409E29    cmp         esi,ebx
>00409E2B    jl          00409E6D
 00409E2D    test        ebx,ebx
>00409E2F    jle         00409E6D
 00409E31    add         esp,0FFFFFFF4
 00409E34    add         ebx,0FFFFFFFF
 00409E37    add         esi,edx
 00409E39    add         edx,ebx
 00409E3B    mov         dword ptr [esp+8],esi
 00409E3F    add         eax,ebx
 00409E41    sub         ecx,edx
 00409E43    neg         ebx
 00409E45    mov         dword ptr [esp+4],ecx
 00409E49    mov         dword ptr [esp],ebx
 00409E4C    movzx       ecx,byte ptr [eax]
 00409E4F    cmp         cl,byte ptr [edx]
>00409E51    je          00409E82
 00409E53    cmp         cl,byte ptr [edx+1]
>00409E56    je          00409E85
 00409E58    add         edx,4
 00409E5B    cmp         edx,dword ptr [esp+8]
>00409E5F    jb          00409E72
 00409E61    add         edx,0FFFFFFFE
 00409E64    cmp         edx,dword ptr [esp+8]
>00409E68    jb          00409E4F
 00409E6A    add         esp,0C
 00409E6D    pop         ebx
 00409E6E    pop         esi
 00409E6F    xor         eax,eax
 00409E71    ret
 00409E72    cmp         cl,byte ptr [edx-2]
>00409E75    je          00409E7F
 00409E77    cmp         cl,byte ptr [edx-1]
>00409E7A    jne         00409E4F
 00409E7C    add         edx,1
 00409E7F    add         edx,0FFFFFFFE
 00409E82    add         edx,0FFFFFFFF
 00409E85    mov         esi,dword ptr [esp]
 00409E88    test        esi,esi
>00409E8A    je          00409EAD
 00409E8C    movzx       ebx,word ptr [eax+esi]
 00409E90    cmp         bx,word ptr [edx+esi+1]
>00409E95    jne         00409E58
 00409E97    cmp         esi,0FFFFFFFE
>00409E9A    jge         00409EAD
 00409E9C    movzx       ebx,word ptr [eax+esi+2]
 00409EA1    cmp         bx,word ptr [edx+esi+3]
>00409EA6    jne         00409E58
 00409EA8    add         esi,4
>00409EAB    jl          00409E8C
 00409EAD    mov         eax,dword ptr [esp+4]
 00409EB1    add         edx,2
 00409EB4    cmp         edx,dword ptr [esp+8]
>00409EB8    ja          00409E6A
 00409EBA    add         esp,0C
 00409EBD    add         eax,edx
 00409EBF    pop         ebx
 00409EC0    pop         esi
 00409EC1    ret
*}
end;

//00409EC4
function Pos(const SubStr:AnsiString; const Str:AnsiString; Offset:Integer):Integer;
begin
{*
 00409EC4    test        eax,eax
>00409EC6    je          00409F30
 00409EC8    test        edx,edx
>00409ECA    je          00409F30
 00409ECC    dec         ecx
>00409ECD    jl          00409F30
 00409ECF    push        esi
 00409ED0    push        ebx
 00409ED1    mov         esi,dword ptr [edx-4]
 00409ED4    mov         ebx,dword ptr [eax-4]
 00409ED7    sub         esi,ecx
 00409ED9    shl         ecx,1
 00409EDB    add         edx,ecx
 00409EDD    cmp         esi,ebx
>00409EDF    jl          00409F27
 00409EE1    test        ebx,ebx
>00409EE3    jle         00409F27
 00409EE5    add         esp,0FFFFFFF4
 00409EE8    add         ebx,0FFFFFFFF
 00409EEB    shl         esi,1
 00409EED    add         esi,edx
 00409EEF    shl         ebx,1
 00409EF1    add         edx,ebx
 00409EF3    mov         dword ptr [esp+8],esi
 00409EF7    add         eax,ebx
 00409EF9    sub         ecx,edx
 00409EFB    neg         ebx
 00409EFD    mov         dword ptr [esp+4],ecx
 00409F01    mov         dword ptr [esp],ebx
 00409F04    movzx       ecx,word ptr [eax]
 00409F07    cmp         cx,word ptr [edx]
>00409F0A    je          00409F45
 00409F0C    cmp         cx,word ptr [edx+2]
>00409F10    je          00409F48
 00409F12    add         edx,8
 00409F15    cmp         edx,dword ptr [esp+8]
>00409F19    jb          00409F33
 00409F1B    add         edx,0FFFFFFFC
 00409F1E    cmp         edx,dword ptr [esp+8]
>00409F22    jb          00409F07
 00409F24    add         esp,0C
 00409F27    mov         eax,dword ptr [esp]
 00409F2A    or          eax,dword ptr [esp+4]
 00409F2E    pop         ebx
 00409F2F    pop         esi
 00409F30    xor         eax,eax
 00409F32    ret
 00409F33    cmp         cx,word ptr [edx-4]
>00409F37    je          00409F42
 00409F39    cmp         cx,word ptr [edx-2]
>00409F3D    jne         00409F07
 00409F3F    add         edx,2
 00409F42    add         edx,0FFFFFFFC
 00409F45    add         edx,0FFFFFFFE
 00409F48    mov         esi,dword ptr [esp]
 00409F4B    test        esi,esi
>00409F4D    je          00409F6C
 00409F4F    mov         ebx,dword ptr [eax+esi]
 00409F52    cmp         ebx,dword ptr [edx+esi+2]
>00409F56    jne         00409F12
 00409F58    cmp         esi,0FFFFFFFC
>00409F5B    jge         00409F6C
 00409F5D    mov         ebx,dword ptr [eax+esi+4]
 00409F61    cmp         ebx,dword ptr [edx+esi+6]
>00409F65    jne         00409F12
 00409F67    add         esi,8
>00409F6A    jl          00409F4F
 00409F6C    mov         eax,dword ptr [esp+4]
 00409F70    add         edx,4
 00409F73    cmp         edx,dword ptr [esp+8]
>00409F77    ja          00409F24
 00409F79    add         esp,0C
 00409F7C    mov         ecx,dword ptr [esp]
 00409F7F    or          ecx,dword ptr [esp+4]
>00409F83    je          00409F8D
 00409F85    mov         ebx,eax
 00409F87    mov         esi,edx
 00409F89    mov         eax,ebx
 00409F8B    mov         edx,esi
 00409F8D    add         eax,edx
 00409F8F    shr         eax,1
 00409F91    pop         ebx
 00409F92    pop         esi
 00409F93    ret
*}
end;

//00409F94
function Pos(const SubStr:RawByteString; const Str:RawByteString; Offset:Integer):Integer;
begin
{*
 00409F94    test        eax,eax
>00409F96    je          00409FF1
 00409F98    test        edx,edx
>00409F9A    je          00409FF1
 00409F9C    dec         ecx
>00409F9D    jl          00409FF1
 00409F9F    push        esi
 00409FA0    push        ebx
 00409FA1    mov         esi,dword ptr [edx-4]
 00409FA4    mov         ebx,dword ptr [eax-4]
 00409FA7    sub         esi,ecx
 00409FA9    add         edx,ecx
 00409FAB    cmp         esi,ebx
>00409FAD    jl          00409FEF
 00409FAF    test        ebx,ebx
>00409FB1    jle         00409FEF
 00409FB3    add         esp,0FFFFFFF4
 00409FB6    add         ebx,0FFFFFFFF
 00409FB9    add         esi,edx
 00409FBB    add         edx,ebx
 00409FBD    mov         dword ptr [esp+8],esi
 00409FC1    add         eax,ebx
 00409FC3    sub         ecx,edx
 00409FC5    neg         ebx
 00409FC7    mov         dword ptr [esp+4],ecx
 00409FCB    mov         dword ptr [esp],ebx
 00409FCE    movzx       ecx,byte ptr [eax]
 00409FD1    cmp         cl,byte ptr [edx]
>00409FD3    je          0040A004
 00409FD5    cmp         cl,byte ptr [edx+1]
>00409FD8    je          0040A007
 00409FDA    add         edx,4
 00409FDD    cmp         edx,dword ptr [esp+8]
>00409FE1    jb          00409FF4
 00409FE3    add         edx,0FFFFFFFE
 00409FE6    cmp         edx,dword ptr [esp+8]
>00409FEA    jb          00409FD1
 00409FEC    add         esp,0C
 00409FEF    pop         ebx
 00409FF0    pop         esi
 00409FF1    xor         eax,eax
 00409FF3    ret
 00409FF4    cmp         cl,byte ptr [edx-2]
>00409FF7    je          0040A001
 00409FF9    cmp         cl,byte ptr [edx-1]
>00409FFC    jne         00409FD1
 00409FFE    add         edx,1
 0040A001    add         edx,0FFFFFFFE
 0040A004    add         edx,0FFFFFFFF
 0040A007    mov         esi,dword ptr [esp]
 0040A00A    test        esi,esi
>0040A00C    je          0040A02F
 0040A00E    movzx       ebx,word ptr [eax+esi]
 0040A012    cmp         bx,word ptr [edx+esi+1]
>0040A017    jne         00409FDA
 0040A019    cmp         esi,0FFFFFFFE
>0040A01C    jge         0040A02F
 0040A01E    movzx       ebx,word ptr [eax+esi+2]
 0040A023    cmp         bx,word ptr [edx+esi+3]
>0040A028    jne         00409FDA
 0040A02A    add         esi,4
>0040A02D    jl          0040A00E
 0040A02F    mov         eax,dword ptr [esp+4]
 0040A033    add         edx,2
 0040A036    cmp         edx,dword ptr [esp+8]
>0040A03A    ja          00409FEC
 0040A03C    add         esp,0C
 0040A03F    add         eax,edx
 0040A041    pop         ebx
 0040A042    pop         esi
 0040A043    ret
*}
end;

//0040A044
function StringOfChar(Ch:Char; Count:Integer):string;
begin
{*
 0040A044    push        ebx
 0040A045    push        esi
 0040A046    push        edi
 0040A047    mov         edi,ecx
 0040A049    mov         ebx,edx
 0040A04B    mov         esi,eax
 0040A04D    mov         eax,edi
 0040A04F    mov         ecx,ebx
 0040A051    xor         edx,edx
 0040A053    call        @UStrFromPWCharLen
 0040A058    mov         eax,dword ptr [edi]
 0040A05A    test        ebx,ebx
>0040A05C    jle         0040A067
 0040A05E    dec         ebx
 0040A05F    mov         word ptr [eax+ebx*2],si
 0040A063    test        ebx,ebx
>0040A065    jg          0040A05E
 0040A067    pop         edi
 0040A068    pop         esi
 0040A069    pop         ebx
 0040A06A    ret
*}
end;

//0040A06C
procedure SetAnsiString(Dest:PAnsiString; Source:PWideChar; Length:Integer; CodePage:Word);
begin
{*
 0040A06C    push        ebp
 0040A06D    mov         ebp,esp
 0040A06F    push        ebx
 0040A070    movzx       ebx,word ptr [ebp+8]
 0040A074    push        ebx
 0040A075    call        @LStrFromPWCharLen
 0040A07A    pop         ebx
 0040A07B    pop         ebp
 0040A07C    ret         4
*}
end;

//0040A080
procedure SetCodePage(var S:RawByteString; CodePage:Word; Convert:Boolean);
begin
{*
 0040A080    push        ebp
 0040A081    mov         ebp,esp
 0040A083    add         esp,0FFFFFFF4
 0040A086    push        ebx
 0040A087    push        esi
 0040A088    push        edi
 0040A089    xor         ebx,ebx
 0040A08B    mov         dword ptr [ebp-4],ebx
 0040A08E    mov         byte ptr [ebp-5],cl
 0040A091    mov         esi,edx
 0040A093    mov         ebx,eax
 0040A095    xor         eax,eax
 0040A097    push        ebp
 0040A098    push        40A1C0
 0040A09D    push        dword ptr fs:[eax]
 0040A0A0    mov         dword ptr fs:[eax],esp
 0040A0A3    cmp         dword ptr [ebx],0
>0040A0A6    je          0040A0B2
 0040A0A8    mov         eax,dword ptr [ebx]
 0040A0AA    sub         eax,0C
 0040A0AD    movzx       eax,word ptr [eax]
>0040A0B0    jmp         0040A0B9
 0040A0B2    movzx       eax,word ptr ds:[7C5900];gvar_007C5900
 0040A0B9    cmp         si,ax
>0040A0BC    jne         0040A0C2
 0040A0BE    mov         al,1
>0040A0C0    jmp         0040A0D2
 0040A0C2    mov         eax,dword ptr [ebx]
 0040A0C4    test        eax,eax
>0040A0C6    je          0040A0CD
 0040A0C8    sub         eax,4
 0040A0CB    mov         eax,dword ptr [eax]
 0040A0CD    test        eax,eax
 0040A0CF    sete        al
 0040A0D2    test        al,al
>0040A0D4    jne         0040A1AA
 0040A0DA    cmp         byte ptr [ebp-5],0
>0040A0DE    je          0040A18C
 0040A0E4    cmp         dword ptr [ebx],0
>0040A0E7    je          0040A0F3
 0040A0E9    mov         eax,dword ptr [ebx]
 0040A0EB    sub         eax,0A
 0040A0EE    movzx       eax,word ptr [eax]
>0040A0F1    jmp         0040A0F7
 0040A0F3    mov         ax,1
 0040A0F7    cmp         ax,1
>0040A0FB    jne         0040A109
 0040A0FD    lea         eax,[ebp-4]
 0040A100    mov         edx,dword ptr [ebx]
 0040A102    call        @UStrFromLStr
>0040A107    jmp         0040A113
 0040A109    lea         eax,[ebp-4]
 0040A10C    mov         edx,dword ptr [ebx]
 0040A10E    call        @UStrLAsg
 0040A113    mov         edi,dword ptr [ebp-4]
 0040A116    test        edi,edi
>0040A118    je          0040A11F
 0040A11A    sub         edi,4
 0040A11D    mov         edi,dword ptr [edi]
 0040A11F    push        edi
 0040A120    movzx       eax,si
 0040A123    push        eax
 0040A124    mov         eax,dword ptr [ebp-4]
 0040A127    call        @UStrToPWChar
 0040A12C    mov         ecx,eax
 0040A12E    xor         edx,edx
 0040A130    xor         eax,eax
 0040A132    call        CharFromWChar
 0040A137    mov         edi,eax
 0040A139    mov         eax,ebx
 0040A13B    xor         ecx,ecx
 0040A13D    mov         edx,edi
 0040A13F    call        @LStrSetLength
 0040A144    test        edi,edi
>0040A146    jle         0040A193
 0040A148    mov         edi,dword ptr [ebx]
 0040A14A    test        edi,edi
>0040A14C    je          0040A153
 0040A14E    sub         edi,4
 0040A151    mov         edi,dword ptr [edi]
 0040A153    mov         eax,dword ptr [ebp-4]
 0040A156    mov         dword ptr [ebp-0C],eax
 0040A159    cmp         dword ptr [ebp-0C],0
>0040A15D    je          0040A16A
 0040A15F    mov         eax,dword ptr [ebp-0C]
 0040A162    sub         eax,4
 0040A165    mov         eax,dword ptr [eax]
 0040A167    mov         dword ptr [ebp-0C],eax
 0040A16A    mov         eax,dword ptr [ebp-0C]
 0040A16D    push        eax
 0040A16E    movzx       eax,si
 0040A171    push        eax
 0040A172    mov         eax,dword ptr [ebp-4]
 0040A175    call        @UStrToPWChar
 0040A17A    push        eax
 0040A17B    mov         eax,dword ptr [ebx]
 0040A17D    call        @LStrToPChar
 0040A182    mov         edx,edi
 0040A184    pop         ecx
 0040A185    call        CharFromWChar
>0040A18A    jmp         0040A193
 0040A18C    mov         eax,ebx
 0040A18E    call        InternalUniqueStringA
 0040A193    mov         eax,dword ptr [ebx]
 0040A195    test        eax,eax
>0040A197    je          0040A19E
 0040A199    sub         eax,4
 0040A19C    mov         eax,dword ptr [eax]
 0040A19E    test        eax,eax
>0040A1A0    jle         0040A1AA
 0040A1A2    mov         eax,dword ptr [ebx]
 0040A1A4    sub         eax,0C
 0040A1A7    mov         word ptr [eax],si
 0040A1AA    xor         eax,eax
 0040A1AC    pop         edx
 0040A1AD    pop         ecx
 0040A1AE    pop         ecx
 0040A1AF    mov         dword ptr fs:[eax],edx
 0040A1B2    push        40A1C7
 0040A1B7    lea         eax,[ebp-4]
 0040A1BA    call        @UStrClr
 0040A1BF    ret
>0040A1C0    jmp         @HandleFinally
>0040A1C5    jmp         0040A1B7
 0040A1C7    pop         edi
 0040A1C8    pop         esi
 0040A1C9    pop         ebx
 0040A1CA    mov         esp,ebp
 0040A1CC    pop         ebp
 0040A1CD    ret
*}
end;

//0040A1D0
procedure @AddRefRecord(P:Pointer; TypeInfo:Pointer);
begin
{*
 0040A1D0    xor         ecx,ecx
 0040A1D2    push        ebx
 0040A1D3    mov         cl,byte ptr [edx+1]
 0040A1D6    push        esi
 0040A1D7    push        edi
 0040A1D8    mov         ebx,eax
 0040A1DA    lea         esi,[ecx+edx+0A]
 0040A1DE    mov         edi,dword ptr [ecx+edx+6]
 0040A1E2    test        edi,edi
>0040A1E4    je          0040A1FF
 0040A1E6    mov         edx,dword ptr [esi]
 0040A1E8    mov         eax,dword ptr [esi+4]
 0040A1EB    add         eax,ebx
 0040A1ED    mov         edx,dword ptr [edx]
 0040A1EF    mov         ecx,1
 0040A1F4    call        @AddRefArray
 0040A1F9    add         esi,8
 0040A1FC    dec         edi
>0040A1FD    jg          0040A1E6
 0040A1FF    pop         edi
 0040A200    pop         esi
 0040A201    pop         ebx
 0040A202    ret
*}
end;

//0040A204
procedure @AddRefArray(P:Pointer; TypeInfo:Pointer; ElemCount:NativeUInt);
begin
{*
 0040A204    test        ecx,ecx
>0040A206    je          0040A29A
 0040A20C    push        ebx
 0040A20D    push        esi
 0040A20E    push        edi
 0040A20F    mov         ebx,eax
 0040A211    mov         esi,edx
 0040A213    mov         edi,ecx
 0040A215    xor         edx,edx
 0040A217    mov         al,byte ptr [esi]
 0040A219    mov         dl,byte ptr [esi+1]
 0040A21C    xor         ecx,ecx
 0040A21E    cmp         al,0A
>0040A220    je          0040A248
 0040A222    cmp         al,0B
>0040A224    je          0040A248
 0040A226    cmp         al,0C
>0040A228    je          0040A252
 0040A22A    cmp         al,0D
>0040A22C    je          0040A265
 0040A22E    cmp         al,0E
>0040A230    je          0040A283
 0040A232    cmp         al,0F
>0040A234    je          0040A248
 0040A236    cmp         al,11
>0040A238    je          0040A248
 0040A23A    cmp         al,12
>0040A23C    je          0040A248
 0040A23E    mov         al,2
 0040A240    pop         edi
 0040A241    pop         esi
 0040A242    pop         ebx
>0040A243    jmp         Error
 0040A248    mov         dword ptr [ebx],ecx
 0040A24A    add         ebx,4
 0040A24D    dec         edi
>0040A24E    jg          0040A248
>0040A250    jmp         0040A297
 0040A252    mov         dword ptr [ebx],ecx
 0040A254    mov         dword ptr [ebx+4],ecx
 0040A257    mov         dword ptr [ebx+8],ecx
 0040A25A    mov         dword ptr [ebx+0C],ecx
 0040A25D    add         ebx,10
 0040A260    dec         edi
>0040A261    jg          0040A252
>0040A263    jmp         0040A297
 0040A265    push        ebp
 0040A266    mov         ebp,edx
 0040A268    mov         edx,dword ptr [esi+ebp+0A]
 0040A26C    mov         eax,ebx
 0040A26E    add         ebx,dword ptr [esi+ebp+2]
 0040A272    mov         ecx,dword ptr [esi+ebp+6]
 0040A276    mov         edx,dword ptr [edx]
 0040A278    call        @AddRefArray
 0040A27D    dec         edi
>0040A27E    jg          0040A268
 0040A280    pop         ebp
>0040A281    jmp         0040A297
 0040A283    push        ebp
 0040A284    mov         ebp,edx
 0040A286    mov         eax,ebx
 0040A288    add         ebx,dword ptr [esi+ebp+2]
 0040A28C    mov         edx,esi
 0040A28E    call        @AddRefRecord
 0040A293    dec         edi
>0040A294    jg          0040A286
 0040A296    pop         ebp
 0040A297    pop         edi
 0040A298    pop         esi
 0040A299    pop         ebx
 0040A29A    ret
*}
end;

//0040A29C
procedure @AddRef(P:Pointer; TypeInfo:Pointer);
begin
{*
 0040A29C    mov         ecx,1
>0040A2A1    jmp         @AddRefArray
 0040A2A6    ret
*}
end;

//0040A2A8
procedure @FinalizeRecord(P:Pointer; TypeInfo:Pointer);
begin
{*
 0040A2A8    xor         ecx,ecx
 0040A2AA    push        ebx
 0040A2AB    mov         cl,byte ptr [edx+1]
 0040A2AE    push        esi
 0040A2AF    push        edi
 0040A2B0    mov         ebx,eax
 0040A2B2    lea         esi,[ecx+edx+0A]
 0040A2B6    mov         edi,dword ptr [ecx+edx+6]
 0040A2BA    test        edi,edi
>0040A2BC    je          0040A2D7
 0040A2BE    mov         edx,dword ptr [esi]
 0040A2C0    mov         eax,dword ptr [esi+4]
 0040A2C3    add         eax,ebx
 0040A2C5    mov         edx,dword ptr [edx]
 0040A2C7    mov         ecx,1
 0040A2CC    call        @FinalizeArray
 0040A2D1    add         esi,8
 0040A2D4    dec         edi
>0040A2D5    jg          0040A2BE
 0040A2D7    mov         eax,ebx
 0040A2D9    pop         edi
 0040A2DA    pop         esi
 0040A2DB    pop         ebx
 0040A2DC    ret
*}
end;

//0040A2E0
procedure @VarClr(var v:TVarData);
begin
{*
 0040A2E0    cmp         dword ptr ds:[79E010],0
>0040A2E7    je          0040A2F0
 0040A2E9    call        dword ptr ds:[79E010]
 0040A2EF    ret
 0040A2F0    mov         al,10
 0040A2F2    call        Error
 0040A2F7    ret
*}
end;

//0040A2F8
procedure @FinalizeArray(P:Pointer; TypeInfo:Pointer; ElemCount:NativeUInt);
begin
{*
 0040A2F8    cmp         ecx,0
>0040A2FB    je          0040A406
 0040A301    push        eax
 0040A302    push        ebx
 0040A303    push        esi
 0040A304    push        edi
 0040A305    mov         ebx,eax
 0040A307    mov         esi,edx
 0040A309    mov         edi,ecx
 0040A30B    xor         edx,edx
 0040A30D    mov         al,byte ptr [esi]
 0040A30F    mov         dl,byte ptr [esi+1]
 0040A312    cmp         al,0A
>0040A314    je          0040A343
 0040A316    cmp         al,12
>0040A318    je          0040A37D
 0040A31A    cmp         al,0B
>0040A31C    je          0040A360
 0040A31E    cmp         al,0C
>0040A320    je          0040A394
 0040A322    cmp         al,0D
>0040A324    je          0040A3A3
 0040A326    cmp         al,0E
>0040A328    je          0040A3C1
 0040A32E    cmp         al,0F
>0040A330    je          0040A3D7
 0040A336    cmp         al,11
>0040A338    je          0040A3E6
>0040A33E    jmp         0040A3F7
 0040A343    cmp         ecx,1
 0040A346    mov         eax,ebx
>0040A348    jg          0040A354
 0040A34A    call        @LStrClr
>0040A34F    jmp         0040A402
 0040A354    mov         edx,ecx
 0040A356    call        @LStrArrayClr
>0040A35B    jmp         0040A402
 0040A360    cmp         ecx,1
 0040A363    mov         eax,ebx
>0040A365    jg          0040A371
 0040A367    call        @WStrClr
>0040A36C    jmp         0040A402
 0040A371    mov         edx,ecx
 0040A373    call        @WStrArrayClr
>0040A378    jmp         0040A402
 0040A37D    cmp         ecx,1
 0040A380    mov         eax,ebx
>0040A382    jg          0040A38B
 0040A384    call        @UStrClr
>0040A389    jmp         0040A402
 0040A38B    mov         edx,ecx
 0040A38D    call        @UStrArrayClr
>0040A392    jmp         0040A402
 0040A394    mov         eax,ebx
 0040A396    add         ebx,10
 0040A399    call        @VarClr
 0040A39E    dec         edi
>0040A39F    jg          0040A394
>0040A3A1    jmp         0040A402
 0040A3A3    push        ebp
 0040A3A4    mov         ebp,edx
 0040A3A6    mov         edx,dword ptr [esi+ebp+0A]
 0040A3AA    mov         eax,ebx
 0040A3AC    add         ebx,dword ptr [esi+ebp+2]
 0040A3B0    mov         ecx,dword ptr [esi+ebp+6]
 0040A3B4    mov         edx,dword ptr [edx]
 0040A3B6    call        @FinalizeArray
 0040A3BB    dec         edi
>0040A3BC    jg          0040A3A6
 0040A3BE    pop         ebp
>0040A3BF    jmp         0040A402
 0040A3C1    push        ebp
 0040A3C2    mov         ebp,edx
 0040A3C4    mov         eax,ebx
 0040A3C6    add         ebx,dword ptr [esi+ebp+2]
 0040A3CA    mov         edx,esi
 0040A3CC    call        @FinalizeRecord
 0040A3D1    dec         edi
>0040A3D2    jg          0040A3C4
 0040A3D4    pop         ebp
>0040A3D5    jmp         0040A402
 0040A3D7    mov         eax,ebx
 0040A3D9    add         ebx,4
 0040A3DC    call        @IntfClear
 0040A3E1    dec         edi
>0040A3E2    jg          0040A3D7
>0040A3E4    jmp         0040A402
 0040A3E6    mov         eax,ebx
 0040A3E8    mov         edx,esi
 0040A3EA    add         ebx,4
 0040A3ED    call        @DynArrayClear
 0040A3F2    dec         edi
>0040A3F3    jg          0040A3E6
>0040A3F5    jmp         0040A402
 0040A3F7    pop         edi
 0040A3F8    pop         esi
 0040A3F9    pop         ebx
 0040A3FA    pop         eax
 0040A3FB    mov         al,2
>0040A3FD    jmp         Error
 0040A402    pop         edi
 0040A403    pop         esi
 0040A404    pop         ebx
 0040A405    pop         eax
 0040A406    ret
*}
end;

//0040A408
procedure @Finalize(p:Pointer; typeInfo:Pointer);
begin
{*
 0040A408    mov         ecx,1
>0040A40D    jmp         @FinalizeArray
 0040A412    ret
*}
end;

//0040A414
procedure @InitializeRecord(p:Pointer; typeInfo:Pointer);
begin
{*
 0040A414    xor         ecx,ecx
 0040A416    push        ebx
 0040A417    mov         cl,byte ptr [edx+1]
 0040A41A    push        esi
 0040A41B    push        edi
 0040A41C    mov         ebx,eax
 0040A41E    lea         esi,[ecx+edx+0A]
 0040A422    mov         edi,dword ptr [ecx+edx+6]
 0040A426    test        edi,edi
>0040A428    je          0040A443
 0040A42A    mov         edx,dword ptr [esi]
 0040A42C    mov         eax,dword ptr [esi+4]
 0040A42F    add         eax,ebx
 0040A431    mov         edx,dword ptr [edx]
 0040A433    mov         ecx,1
 0040A438    call        @InitializeArray
 0040A43D    add         esi,8
 0040A440    dec         edi
>0040A441    jg          0040A42A
 0040A443    pop         edi
 0040A444    pop         esi
 0040A445    pop         ebx
 0040A446    ret
*}
end;

//0040A448
procedure @VarAddRef(var v:TVarData);
begin
{*
 0040A448    cmp         dword ptr ds:[79E014],0
>0040A44F    je          0040A458
 0040A451    call        dword ptr ds:[79E014]
 0040A457    ret
 0040A458    mov         al,10
 0040A45A    call        Error
 0040A45F    ret
*}
end;

//0040A460
procedure @InitializeArray(p:Pointer; typeInfo:Pointer; elemCount:NativeUInt);
begin
{*
 0040A460    push        ebx
 0040A461    push        esi
 0040A462    push        edi
 0040A463    test        ecx,ecx
>0040A465    je          0040A51F
 0040A46B    mov         ebx,eax
 0040A46D    mov         esi,edx
 0040A46F    mov         edi,ecx
 0040A471    xor         edx,edx
 0040A473    mov         al,byte ptr [esi]
 0040A475    mov         dl,byte ptr [esi+1]
 0040A478    cmp         al,0A
>0040A47A    je          0040A4A2
 0040A47C    cmp         al,0B
>0040A47E    je          0040A4B1
 0040A480    cmp         al,12
>0040A482    je          0040A4A2
 0040A484    cmp         al,0C
>0040A486    je          0040A4C0
 0040A488    cmp         al,0D
>0040A48A    je          0040A4CF
 0040A48C    cmp         al,0E
>0040A48E    je          0040A4ED
 0040A490    cmp         al,0F
>0040A492    je          0040A503
 0040A494    cmp         al,11
>0040A496    je          0040A512
 0040A498    mov         al,2
 0040A49A    pop         edi
 0040A49B    pop         esi
 0040A49C    pop         ebx
>0040A49D    jmp         Error
 0040A4A2    mov         eax,dword ptr [ebx]
 0040A4A4    add         ebx,4
 0040A4A7    call        @LStrAddRef
 0040A4AC    dec         edi
>0040A4AD    jg          0040A4A2
>0040A4AF    jmp         0040A51F
 0040A4B1    mov         eax,ebx
 0040A4B3    add         ebx,4
 0040A4B6    call        @WStrAddRef
 0040A4BB    dec         edi
>0040A4BC    jg          0040A4B1
>0040A4BE    jmp         0040A51F
 0040A4C0    mov         eax,ebx
 0040A4C2    add         ebx,10
 0040A4C5    call        @VarAddRef
 0040A4CA    dec         edi
>0040A4CB    jg          0040A4C0
>0040A4CD    jmp         0040A51F
 0040A4CF    push        ebp
 0040A4D0    mov         ebp,edx
 0040A4D2    mov         edx,dword ptr [esi+ebp+0A]
 0040A4D6    mov         eax,ebx
 0040A4D8    add         ebx,dword ptr [esi+ebp+2]
 0040A4DC    mov         ecx,dword ptr [esi+ebp+6]
 0040A4E0    mov         edx,dword ptr [edx]
 0040A4E2    call        @InitializeArray
 0040A4E7    dec         edi
>0040A4E8    jg          0040A4D2
 0040A4EA    pop         ebp
>0040A4EB    jmp         0040A51F
 0040A4ED    push        ebp
 0040A4EE    mov         ebp,edx
 0040A4F0    mov         eax,ebx
 0040A4F2    add         ebx,dword ptr [esi+ebp+2]
 0040A4F6    mov         edx,esi
 0040A4F8    call        @InitializeRecord
 0040A4FD    dec         edi
>0040A4FE    jg          0040A4F0
 0040A500    pop         ebp
>0040A501    jmp         0040A51F
 0040A503    mov         eax,dword ptr [ebx]
 0040A505    add         ebx,4
 0040A508    call        @IntfAddRef
 0040A50D    dec         edi
>0040A50E    jg          0040A503
>0040A510    jmp         0040A51F
 0040A512    mov         eax,dword ptr [ebx]
 0040A514    add         ebx,4
 0040A517    call        @DynArrayAddRef
 0040A51C    dec         edi
>0040A51D    jg          0040A512
 0040A51F    pop         edi
 0040A520    pop         esi
 0040A521    pop         ebx
 0040A522    ret
*}
end;

//0040A524
procedure @VarCopy(var Dest:TVarData; const Src:TVarData);
begin
{*
 0040A524    cmp         dword ptr ds:[79E018],0
>0040A52B    je          0040A534
 0040A52D    call        dword ptr ds:[79E018]
 0040A533    ret
 0040A534    mov         al,10
 0040A536    call        Error
 0040A53B    ret
*}
end;

//0040A53C
procedure @CopyRecord(Dest:Pointer; Source:Pointer; TypeInfo:Pointer);
begin
{*
 0040A53C    push        ebx
 0040A53D    push        esi
 0040A53E    push        edi
 0040A53F    push        ebp
 0040A540    push        0
 0040A542    push        0
 0040A544    mov         ebx,eax
 0040A546    mov         esi,edx
 0040A548    xor         eax,eax
 0040A54A    mov         al,byte ptr [ecx+1]
 0040A54D    lea         edi,[eax+ecx+0A]
 0040A551    mov         ebp,dword ptr [edi-4]
 0040A554    xor         eax,eax
 0040A556    mov         ecx,dword ptr [edi-8]
 0040A559    test        ebp,ebp
>0040A55B    je          0040A66C
 0040A561    push        ecx
 0040A562    mov         ecx,dword ptr [edi+4]
 0040A565    sub         ecx,eax
>0040A567    jle         0040A574
 0040A569    mov         edx,eax
 0040A56B    add         eax,esi
 0040A56D    add         edx,ebx
 0040A56F    call        Move
 0040A574    mov         eax,dword ptr [edi+4]
 0040A577    mov         edx,dword ptr [edi]
 0040A579    mov         edx,dword ptr [edx]
 0040A57B    mov         cl,byte ptr [edx]
 0040A57D    cmp         cl,0F
>0040A580    je          0040A63C
 0040A586    cmp         cl,0A
>0040A589    je          0040A5BC
 0040A58B    cmp         cl,0B
>0040A58E    je          0040A5E1
 0040A590    cmp         cl,12
>0040A593    je          0040A5D0
 0040A595    cmp         cl,0C
>0040A598    je          0040A5F2
 0040A59A    cmp         cl,0D
>0040A59D    je          0040A603
 0040A59F    cmp         cl,0E
>0040A5A2    je          0040A623
 0040A5A4    cmp         cl,11
>0040A5A7    je          0040A64D
 0040A5AD    mov         al,2
 0040A5AF    pop         ecx
 0040A5B0    add         esp,8
 0040A5B3    pop         ebp
 0040A5B4    pop         edi
 0040A5B5    pop         esi
 0040A5B6    pop         ebx
>0040A5B7    jmp         Error
 0040A5BC    mov         edx,dword ptr [eax+esi]
 0040A5BF    add         eax,ebx
 0040A5C1    call        @LStrAsg
 0040A5C6    mov         eax,4
>0040A5CB    jmp         0040A65E
 0040A5D0    mov         edx,dword ptr [eax+esi]
 0040A5D3    add         eax,ebx
 0040A5D5    call        @UStrAsg
 0040A5DA    mov         eax,4
>0040A5DF    jmp         0040A65E
 0040A5E1    mov         edx,dword ptr [eax+esi]
 0040A5E4    add         eax,ebx
 0040A5E6    call        @WStrAsg
 0040A5EB    mov         eax,4
>0040A5F0    jmp         0040A65E
 0040A5F2    lea         edx,[eax+esi]
 0040A5F5    add         eax,ebx
 0040A5F7    call        @VarCopy
 0040A5FC    mov         eax,10
>0040A601    jmp         0040A65E
 0040A603    xor         ecx,ecx
 0040A605    mov         cl,byte ptr [edx+1]
 0040A608    push        dword ptr [ecx+edx+2]
 0040A60C    push        dword ptr [ecx+edx+6]
 0040A610    mov         ecx,dword ptr [ecx+edx+0A]
 0040A614    mov         ecx,dword ptr [ecx]
 0040A616    lea         edx,[eax+esi]
 0040A619    add         eax,ebx
 0040A61B    call        @CopyArray
 0040A620    pop         eax
>0040A621    jmp         0040A65E
 0040A623    xor         ecx,ecx
 0040A625    mov         cl,byte ptr [edx+1]
 0040A628    mov         ecx,dword ptr [ecx+edx+2]
 0040A62C    push        ecx
 0040A62D    mov         ecx,edx
 0040A62F    lea         edx,[eax+esi]
 0040A632    add         eax,ebx
 0040A634    call        @CopyRecord
 0040A639    pop         eax
>0040A63A    jmp         0040A65E
 0040A63C    mov         edx,dword ptr [eax+esi]
 0040A63F    add         eax,ebx
 0040A641    call        @IntfCopy
 0040A646    mov         eax,4
>0040A64B    jmp         0040A65E
 0040A64D    mov         ecx,edx
 0040A64F    mov         edx,dword ptr [eax+esi]
 0040A652    add         eax,ebx
 0040A654    call        @DynArrayAsg
 0040A659    mov         eax,4
 0040A65E    add         eax,dword ptr [edi+4]
 0040A661    add         edi,8
 0040A664    dec         ebp
>0040A665    jne         0040A562
 0040A66B    pop         ecx
 0040A66C    sub         ecx,eax
>0040A66E    jle         0040A67A
 0040A670    lea         edx,[eax+ebx]
 0040A673    add         eax,esi
 0040A675    call        Move
 0040A67A    add         esp,8
 0040A67D    pop         ebp
 0040A67E    pop         edi
 0040A67F    pop         esi
 0040A680    pop         ebx
 0040A681    ret
*}
end;

//0040A684
procedure @CopyArray(Dest:Pointer; Source:Pointer; TypeInfo:Pointer; Cnt:Integer);
begin
{*
 0040A684    push        ebx
 0040A685    push        esi
 0040A686    push        edi
 0040A687    push        ebp
 0040A688    mov         ebx,eax
 0040A68A    mov         esi,edx
 0040A68C    mov         edi,ecx
 0040A68E    mov         ebp,dword ptr [esp+14]
 0040A692    mov         cl,byte ptr [edi]
 0040A694    cmp         cl,0A
>0040A697    je          0040A6D3
 0040A699    cmp         cl,0B
>0040A69C    je          0040A6EA
 0040A69E    cmp         cl,12
>0040A6A1    je          0040A701
 0040A6A3    cmp         cl,0C
>0040A6A6    je          0040A715
 0040A6A8    cmp         cl,0D
>0040A6AB    je          0040A729
 0040A6AD    cmp         cl,0E
>0040A6B0    je          0040A74C
 0040A6B6    cmp         cl,0F
>0040A6B9    je          0040A769
 0040A6BF    cmp         cl,11
>0040A6C2    je          0040A77D
 0040A6C8    mov         al,2
 0040A6CA    pop         ebp
 0040A6CB    pop         edi
 0040A6CC    pop         esi
 0040A6CD    pop         ebx
>0040A6CE    jmp         Error
 0040A6D3    mov         eax,ebx
 0040A6D5    mov         edx,dword ptr [esi]
 0040A6D7    call        @LStrAsg
 0040A6DC    add         ebx,4
 0040A6DF    add         esi,4
 0040A6E2    dec         ebp
>0040A6E3    jne         0040A6D3
>0040A6E5    jmp         0040A791
 0040A6EA    mov         eax,ebx
 0040A6EC    mov         edx,dword ptr [esi]
 0040A6EE    call        @WStrAsg
 0040A6F3    add         ebx,4
 0040A6F6    add         esi,4
 0040A6F9    dec         ebp
>0040A6FA    jne         0040A6EA
>0040A6FC    jmp         0040A791
 0040A701    mov         eax,ebx
 0040A703    mov         edx,dword ptr [esi]
 0040A705    call        @UStrAsg
 0040A70A    add         ebx,4
 0040A70D    add         esi,4
 0040A710    dec         ebp
>0040A711    jne         0040A701
>0040A713    jmp         0040A791
 0040A715    mov         eax,ebx
 0040A717    mov         edx,esi
 0040A719    call        @VarCopy
 0040A71E    add         ebx,10
 0040A721    add         esi,10
 0040A724    dec         ebp
>0040A725    jne         0040A715
>0040A727    jmp         0040A791
 0040A729    xor         ecx,ecx
 0040A72B    mov         cl,byte ptr [edi+1]
 0040A72E    lea         edi,[ecx+edi+2]
 0040A732    mov         eax,ebx
 0040A734    mov         edx,esi
 0040A736    mov         ecx,dword ptr [edi+8]
 0040A739    mov         ecx,dword ptr [ecx]
 0040A73B    push        dword ptr [edi+4]
 0040A73E    call        @CopyArray
 0040A743    add         ebx,dword ptr [edi]
 0040A745    add         esi,dword ptr [edi]
 0040A747    dec         ebp
>0040A748    jne         0040A732
>0040A74A    jmp         0040A791
 0040A74C    mov         eax,ebx
 0040A74E    mov         edx,esi
 0040A750    mov         ecx,edi
 0040A752    call        @CopyRecord
 0040A757    xor         eax,eax
 0040A759    mov         al,byte ptr [edi+1]
 0040A75C    add         ebx,dword ptr [eax+edi+2]
 0040A760    add         esi,dword ptr [eax+edi+2]
 0040A764    dec         ebp
>0040A765    jne         0040A74C
>0040A767    jmp         0040A791
 0040A769    mov         eax,ebx
 0040A76B    mov         edx,dword ptr [esi]
 0040A76D    call        @IntfCopy
 0040A772    add         ebx,4
 0040A775    add         esi,4
 0040A778    dec         ebp
>0040A779    jne         0040A769
>0040A77B    jmp         0040A791
 0040A77D    mov         eax,ebx
 0040A77F    mov         edx,dword ptr [esi]
 0040A781    mov         ecx,edi
 0040A783    call        @DynArrayAsg
 0040A788    add         ebx,4
 0040A78B    add         esi,4
 0040A78E    dec         ebp
>0040A78F    jne         0040A77D
 0040A791    pop         ebp
 0040A792    pop         edi
 0040A793    pop         esi
 0040A794    pop         ebx
 0040A795    ret         4
*}
end;

//0040A79C
function @New(Size:NativeInt; TypeInfo:Pointer):Pointer;
begin
{*
 0040A79C    push        edx
 0040A79D    call        @GetMem
 0040A7A2    pop         edx
 0040A7A3    test        eax,eax
>0040A7A5    je          0040A7AE
 0040A7A7    push        eax
 0040A7A8    call        @AddRef
 0040A7AD    pop         eax
 0040A7AE    ret
*}
end;

//0040A7B0
procedure @Dispose(P:Pointer; TypeInfo:Pointer);
begin
{*
 0040A7B0    push        eax
 0040A7B1    call        @Finalize
 0040A7B6    pop         eax
 0040A7B7    call        @FreeMem
 0040A7BC    ret
*}
end;

//0040A7C0
procedure CopyArray(Dest:Pointer; Source:Pointer; TypeInfo:Pointer; Count:NativeInt);
begin
{*
 0040A7C0    push        ebp
 0040A7C1    mov         ebp,esp
 0040A7C3    cmp         dword ptr [ebp+8],0
>0040A7C7    jbe         0040A7D1
 0040A7C9    push        dword ptr [ebp+8]
 0040A7CC    call        @CopyArray
 0040A7D1    pop         ebp
 0040A7D2    ret         4
*}
end;

//0040A7D8
procedure FinalizeArray(P:Pointer; TypeInfo:Pointer; Count:NativeUInt);
begin
{*
>0040A7D8    jmp         @FinalizeArray
 0040A7DD    ret
*}
end;

//0040A7E0
function StringToOleStr(const Source:AnsiString):PWideChar;
begin
{*
 0040A7E0    push        ecx
 0040A7E1    xor         edx,edx
 0040A7E3    mov         dword ptr [esp],edx
 0040A7E6    mov         edx,eax
 0040A7E8    test        edx,edx
>0040A7EA    je          0040A7F1
 0040A7EC    sub         edx,4
 0040A7EF    mov         edx,dword ptr [edx]
 0040A7F1    mov         ecx,esp
 0040A7F3    xchg        eax,ecx
 0040A7F4    xchg        edx,ecx
 0040A7F6    call        @WStrFromPCharLen
 0040A7FB    mov         eax,dword ptr [esp]
 0040A7FE    pop         edx
 0040A7FF    ret
*}
end;

//0040A800
function StringToOleStr(const Source:AnsiString):PWideChar;
begin
{*
 0040A800    push        ecx
 0040A801    xor         edx,edx
 0040A803    mov         dword ptr [esp],edx
 0040A806    mov         edx,eax
 0040A808    test        edx,edx
>0040A80A    je          0040A811
 0040A80C    sub         edx,4
 0040A80F    mov         edx,dword ptr [edx]
 0040A811    mov         ecx,esp
 0040A813    xchg        eax,ecx
 0040A814    xchg        edx,ecx
 0040A816    call        @WStrFromPWCharLen
 0040A81B    mov         eax,dword ptr [esp]
 0040A81E    pop         edx
 0040A81F    ret
*}
end;

//0040A820
procedure @DispCallByIDError;
begin
{*
 0040A820    mov         al,11
>0040A822    jmp         Error
 0040A827    ret
*}
end;

//0040A828
procedure @_llmul;
begin
{*
 0040A828    push        edx
 0040A829    push        eax
 0040A82A    mov         eax,dword ptr [esp+10]
 0040A82E    mul         eax,dword ptr [esp]
 0040A831    mov         ecx,eax
 0040A833    mov         eax,dword ptr [esp+4]
 0040A837    mul         eax,dword ptr [esp+0C]
 0040A83B    add         ecx,eax
 0040A83D    mov         eax,dword ptr [esp]
 0040A840    mul         eax,dword ptr [esp+0C]
 0040A844    add         edx,ecx
 0040A846    pop         ecx
 0040A847    pop         ecx
 0040A848    ret         8
*}
end;

//0040A84C
procedure @_lldiv;
begin
{*
 0040A84C    push        ebx
 0040A84D    push        esi
 0040A84E    push        edi
 0040A84F    mov         ebx,dword ptr [esp+10]
 0040A853    mov         ecx,dword ptr [esp+14]
 0040A857    mov         esi,edx
 0040A859    mov         edi,ecx
 0040A85B    sar         esi,1F
 0040A85E    xor         eax,esi
 0040A860    xor         edx,esi
 0040A862    sub         eax,esi
 0040A864    sbb         edx,esi
 0040A866    sar         edi,1F
 0040A869    xor         esi,edi
 0040A86B    xor         ebx,edi
 0040A86D    xor         ecx,edi
 0040A86F    sub         ebx,edi
 0040A871    sbb         ecx,edi
>0040A873    jne         0040A888
 0040A875    cmp         edx,ebx
>0040A877    jb          0040A882
 0040A879    mov         ecx,eax
 0040A87B    mov         eax,edx
 0040A87D    xor         edx,edx
 0040A87F    div         eax,ebx
 0040A881    xchg        eax,ecx
 0040A882    div         eax,ebx
 0040A884    mov         edx,ecx
>0040A886    jmp         0040A8CF
 0040A888    sub         esp,0C
 0040A88B    mov         dword ptr [esp],eax
 0040A88E    mov         dword ptr [esp+4],ebx
 0040A892    mov         dword ptr [esp+8],edx
 0040A896    mov         edi,ecx
 0040A898    shr         edx,1
 0040A89A    rcr         eax,1
 0040A89C    ror         edi,1
 0040A89E    rcr         ebx,1
 0040A8A0    bsr         ecx,ecx
 0040A8A3    shrd        ebx,edi,cl
 0040A8A6    shrd        eax,edx,cl
 0040A8A9    shr         edx,cl
 0040A8AB    rol         edi,1
 0040A8AD    div         eax,ebx
 0040A8AF    mov         ebx,dword ptr [esp]
 0040A8B2    mov         ecx,eax
 0040A8B4    imul        edi,eax
 0040A8B7    mul         eax,dword ptr [esp+4]
 0040A8BB    add         edx,edi
 0040A8BD    sub         ebx,eax
 0040A8BF    mov         eax,ecx
 0040A8C1    mov         ecx,dword ptr [esp+8]
 0040A8C5    sbb         ecx,edx
 0040A8C7    sbb         eax,0
 0040A8CA    xor         edx,edx
 0040A8CC    add         esp,0C
 0040A8CF    xor         eax,esi
 0040A8D1    xor         edx,esi
 0040A8D3    sub         eax,esi
 0040A8D5    sbb         edx,esi
 0040A8D7    pop         edi
 0040A8D8    pop         esi
 0040A8D9    pop         ebx
 0040A8DA    ret         8
*}
end;

//0040A8E0
procedure @_lludiv;
begin
{*
 0040A8E0    push        ebp
 0040A8E1    push        ebx
 0040A8E2    push        esi
 0040A8E3    push        edi
 0040A8E4    mov         ebx,dword ptr [esp+14]
 0040A8E8    mov         ecx,dword ptr [esp+18]
 0040A8EC    or          ecx,ecx
>0040A8EE    jne         0040A8F8
 0040A8F0    or          edx,edx
>0040A8F2    je          0040A923
 0040A8F4    or          ebx,ebx
>0040A8F6    je          0040A923
 0040A8F8    mov         ebp,ecx
 0040A8FA    mov         ecx,40
 0040A8FF    xor         edi,edi
 0040A901    xor         esi,esi
 0040A903    shl         eax,1
 0040A905    rcl         edx,1
 0040A907    rcl         esi,1
 0040A909    rcl         edi,1
 0040A90B    cmp         edi,ebp
>0040A90D    jb          0040A91A
>0040A90F    ja          0040A915
 0040A911    cmp         esi,ebx
>0040A913    jb          0040A91A
 0040A915    sub         esi,ebx
 0040A917    sbb         edi,ebp
 0040A919    inc         eax
 0040A91A    loop        0040A903
 0040A91C    pop         edi
 0040A91D    pop         esi
 0040A91E    pop         ebx
 0040A91F    pop         ebp
 0040A920    ret         8
 0040A923    div         eax,ebx
 0040A925    xor         edx,edx
>0040A927    jmp         0040A91C
 0040A929    ret
*}
end;

//0040A92C
function @ValInt64(const S:AnsiString; var Code:Integer):Int64;
begin
{*
 0040A92C    push        ebx
 0040A92D    push        esi
 0040A92E    push        edi
 0040A92F    push        ebp
 0040A930    add         esp,0FFFFFFEC
 0040A933    mov         dword ptr [esp],edx
 0040A936    mov         esi,eax
 0040A938    mov         ebp,1
 0040A93D    mov         byte ptr [esp+10],0
 0040A942    mov         dword ptr [esp+8],0
 0040A94A    mov         dword ptr [esp+0C],0
 0040A952    xor         edi,edi
 0040A954    mov         bl,1
 0040A956    test        esi,esi
>0040A958    jne         0040A969
 0040A95A    mov         eax,dword ptr [esp]
 0040A95D    mov         dword ptr [eax],1
>0040A963    jmp         0040AB97
 0040A968    inc         ebp
 0040A969    cmp         word ptr [esi+ebp*2-2],20
>0040A96F    je          0040A968
 0040A971    movzx       eax,word ptr [esi+ebp*2-2]
 0040A976    cmp         ax,2D
>0040A97A    jne         0040A984
 0040A97C    mov         byte ptr [esp+10],1
 0040A981    inc         ebp
>0040A982    jmp         0040A98B
 0040A984    cmp         ax,2B
>0040A988    jne         0040A98B
 0040A98A    inc         ebp
 0040A98B    cmp         word ptr [esi+ebp*2-2],30
>0040A991    jne         0040A9A5
 0040A993    mov         eax,esi
 0040A995    test        eax,eax
>0040A997    je          0040A99E
 0040A999    sub         eax,4
 0040A99C    mov         eax,dword ptr [eax]
 0040A99E    cmp         eax,ebp
 0040A9A0    setg        al
>0040A9A3    jmp         0040A9A7
 0040A9A5    xor         eax,eax
 0040A9A7    test        al,al
>0040A9A9    je          0040A9C3
 0040A9AB    movzx       eax,word ptr [esi+ebp*2]
 0040A9AF    cmp         ax,58
>0040A9B3    je          0040A9BF
 0040A9B5    cmp         ax,78
>0040A9B9    je          0040A9BF
 0040A9BB    xor         eax,eax
>0040A9BD    jmp         0040A9C5
 0040A9BF    mov         al,1
>0040A9C1    jmp         0040A9C5
 0040A9C3    xor         eax,eax
 0040A9C5    test        al,al
>0040A9C7    je          0040A9CD
 0040A9C9    mov         al,1
>0040A9CB    jmp         0040A9D6
 0040A9CD    cmp         word ptr [esi+ebp*2-2],24
 0040A9D3    sete        al
 0040A9D6    test        al,al
>0040A9D8    je          0040A9DE
 0040A9DA    mov         al,1
>0040A9DC    jmp         0040A9E7
 0040A9DE    cmp         word ptr [esi+ebp*2-2],58
 0040A9E4    sete        al
 0040A9E7    test        al,al
>0040A9E9    je          0040A9EF
 0040A9EB    mov         al,1
>0040A9ED    jmp         0040A9F8
 0040A9EF    cmp         word ptr [esi+ebp*2-2],78
 0040A9F5    sete        al
 0040A9F8    test        al,al
>0040A9FA    je          0040AAC6
 0040AA00    cmp         word ptr [esi+ebp*2-2],30
>0040AA06    jne         0040AA09
 0040AA08    inc         ebp
 0040AA09    inc         ebp
 0040AA0A    movzx       ecx,word ptr [esi+ebp*2-2]
 0040AA0F    mov         eax,ecx
 0040AA11    add         eax,0FFFFFFD0
 0040AA14    sub         ax,0A
>0040AA18    jb          0040AA2E
 0040AA1A    add         eax,0FFFFFFF9
 0040AA1D    sub         ax,6
>0040AA21    jb          0040AA36
 0040AA23    add         eax,0FFFFFFE6
 0040AA26    sub         ax,6
>0040AA2A    jb          0040AA41
>0040AA2C    jmp         0040AA9F
 0040AA2E    movzx       edi,cx
 0040AA31    sub         edi,30
>0040AA34    jmp         0040AA4A
 0040AA36    movzx       edi,cx
 0040AA39    sub         edi,41
 0040AA3C    add         edi,0A
>0040AA3F    jmp         0040AA4A
 0040AA41    movzx       edi,cx
 0040AA44    sub         edi,61
 0040AA47    add         edi,0A
 0040AA4A    cmp         dword ptr [esp+0C],0
>0040AA4F    jne         0040AA5A
 0040AA51    cmp         dword ptr [esp+8],0
>0040AA56    jb          0040AA9F
>0040AA58    jmp         0040AA5C
>0040AA5A    jl          0040AA9F
 0040AA5C    cmp         dword ptr [esp+0C],0FFFFFFF
>0040AA64    jne         0040AA6F
 0040AA66    cmp         dword ptr [esp+8],0FFFFFFFF
>0040AA6B    jbe         0040AA71
>0040AA6D    jmp         0040AA9F
>0040AA6F    jg          0040AA9F
 0040AA71    mov         eax,edi
 0040AA73    cdq
 0040AA74    push        edx
 0040AA75    push        eax
 0040AA76    mov         eax,dword ptr [esp+10]
 0040AA7A    mov         edx,dword ptr [esp+14]
 0040AA7E    shld        edx,eax,4
 0040AA82    shl         eax,4
 0040AA85    add         eax,dword ptr [esp]
 0040AA88    adc         edx,dword ptr [esp+4]
 0040AA8C    add         esp,8
 0040AA8F    mov         dword ptr [esp+8],eax
 0040AA93    mov         dword ptr [esp+0C],edx
 0040AA97    inc         ebp
 0040AA98    xor         ebx,ebx
>0040AA9A    jmp         0040AA0A
 0040AA9F    cmp         byte ptr [esp+10],0
>0040AAA4    je          0040AB7A
 0040AAAA    mov         eax,dword ptr [esp+8]
 0040AAAE    mov         edx,dword ptr [esp+0C]
 0040AAB2    neg         eax
 0040AAB4    adc         edx,0
 0040AAB7    neg         edx
 0040AAB9    mov         dword ptr [esp+8],eax
 0040AABD    mov         dword ptr [esp+0C],edx
>0040AAC1    jmp         0040AB7A
 0040AAC6    movzx       eax,word ptr [esi+ebp*2-2]
 0040AACB    add         eax,0FFFFFFD0
 0040AACE    sub         ax,0A
>0040AAD2    jae         0040AB33
 0040AAD4    movzx       edi,word ptr [esi+ebp*2-2]
 0040AAD9    sub         edi,30
 0040AADC    cmp         dword ptr [esp+0C],0
>0040AAE1    jne         0040AAEC
 0040AAE3    cmp         dword ptr [esp+8],0
>0040AAE8    jb          0040AB33
>0040AAEA    jmp         0040AAEE
>0040AAEC    jl          0040AB33
 0040AAEE    cmp         dword ptr [esp+0C],0CCCCCCC
>0040AAF6    jne         0040AB04
 0040AAF8    cmp         dword ptr [esp+8],0CCCCCCCC
>0040AB00    jbe         0040AB06
>0040AB02    jmp         0040AB33
>0040AB04    jg          0040AB33
 0040AB06    push        0
 0040AB08    push        0A
 0040AB0A    mov         eax,dword ptr [esp+10]
 0040AB0E    mov         edx,dword ptr [esp+14]
 0040AB12    call        @_llmul
 0040AB17    push        edx
 0040AB18    push        eax
 0040AB19    mov         eax,edi
 0040AB1B    cdq
 0040AB1C    add         eax,dword ptr [esp]
 0040AB1F    adc         edx,dword ptr [esp+4]
 0040AB23    add         esp,8
 0040AB26    mov         dword ptr [esp+8],eax
 0040AB2A    mov         dword ptr [esp+0C],edx
 0040AB2E    inc         ebp
 0040AB2F    xor         ebx,ebx
>0040AB31    jmp         0040AAC6
 0040AB33    cmp         byte ptr [esp+10],0
>0040AB38    je          0040AB51
 0040AB3A    mov         eax,dword ptr [esp+8]
 0040AB3E    mov         edx,dword ptr [esp+0C]
 0040AB42    neg         eax
 0040AB44    adc         edx,0
 0040AB47    neg         edx
 0040AB49    mov         dword ptr [esp+8],eax
 0040AB4D    mov         dword ptr [esp+0C],edx
 0040AB51    cmp         dword ptr [esp+0C],0
>0040AB56    jne         0040AB5D
 0040AB58    cmp         dword ptr [esp+8],0
>0040AB5D    je          0040AB7A
 0040AB5F    cmp         dword ptr [esp+0C],0
>0040AB64    jne         0040AB70
 0040AB66    cmp         dword ptr [esp+8],0
 0040AB6B    setb        al
>0040AB6E    jmp         0040AB73
 0040AB70    setl        al
 0040AB73    cmp         al,byte ptr [esp+10]
>0040AB77    je          0040AB7A
 0040AB79    dec         ebp
 0040AB7A    cmp         word ptr [esi+ebp*2-2],0
 0040AB80    setne       al
 0040AB83    or          bl,al
>0040AB85    je          0040AB90
 0040AB87    inc         ebp
 0040AB88    dec         ebp
 0040AB89    mov         eax,dword ptr [esp]
 0040AB8C    mov         dword ptr [eax],ebp
>0040AB8E    jmp         0040AB97
 0040AB90    mov         eax,dword ptr [esp]
 0040AB93    xor         edx,edx
 0040AB95    mov         dword ptr [eax],edx
 0040AB97    mov         eax,dword ptr [esp+8]
 0040AB9B    mov         edx,dword ptr [esp+0C]
 0040AB9F    add         esp,14
 0040ABA2    pop         ebp
 0040ABA3    pop         edi
 0040ABA4    pop         esi
 0040ABA5    pop         ebx
 0040ABA6    ret
*}
end;

//0040ABA8
{*function sub_0040ABA8(?:Byte):?;
begin
 0040ABA8    test        eax,eax
>0040ABAA    je          0040ABB1
 0040ABAC    sub         eax,4
 0040ABAF    mov         eax,dword ptr [eax]
 0040ABB1    ret
end;*}

//0040ABB4
procedure DynArraySetLength(var arr:Pointer; typeInfo:PDynArrayTypeInfo; dimCnt:Longint; lenVec:PLongint);
begin
{*
 0040ABB4    push        ebp
 0040ABB5    mov         ebp,esp
 0040ABB7    add         esp,0FFFFFFE0
 0040ABBA    push        ebx
 0040ABBB    push        esi
 0040ABBC    push        edi
 0040ABBD    mov         dword ptr [ebp-0C],ecx
 0040ABC0    mov         dword ptr [ebp-8],edx
 0040ABC3    mov         dword ptr [ebp-4],eax
 0040ABC6    mov         eax,dword ptr [ebp-4]
 0040ABC9    mov         eax,dword ptr [eax]
 0040ABCB    mov         dword ptr [ebp-1C],eax
 0040ABCE    mov         eax,dword ptr [ebp+8]
 0040ABD1    mov         ebx,dword ptr [eax]
 0040ABD3    test        ebx,ebx
>0040ABD5    jg          0040ABF2
 0040ABD7    test        ebx,ebx
>0040ABD9    jge         0040ABE2
 0040ABDB    mov         al,4
 0040ABDD    call        Error
 0040ABE2    mov         eax,dword ptr [ebp-4]
 0040ABE5    mov         edx,dword ptr [ebp-8]
 0040ABE8    call        @DynArrayClear
>0040ABED    jmp         0040ADB4
 0040ABF2    xor         edi,edi
 0040ABF4    cmp         dword ptr [ebp-1C],0
>0040ABF8    je          0040AC04
 0040ABFA    sub         dword ptr [ebp-1C],8
 0040ABFE    mov         eax,dword ptr [ebp-1C]
 0040AC01    mov         edi,dword ptr [eax+4]
 0040AC04    mov         eax,dword ptr [ebp-8]
 0040AC07    movzx       eax,byte ptr [eax+1]
 0040AC0B    add         dword ptr [ebp-8],eax
 0040AC0E    mov         eax,dword ptr [ebp-8]
 0040AC11    mov         edx,dword ptr [eax+2]
 0040AC14    mov         dword ptr [ebp-14],edx
 0040AC17    mov         edx,dword ptr [eax+6]
 0040AC1A    test        edx,edx
>0040AC1C    je          0040AC25
 0040AC1E    mov         eax,dword ptr [edx]
 0040AC20    mov         dword ptr [ebp-18],eax
>0040AC23    jmp         0040AC2A
 0040AC25    xor         eax,eax
 0040AC27    mov         dword ptr [ebp-18],eax
 0040AC2A    mov         esi,ebx
 0040AC2C    imul        esi,dword ptr [ebp-14]
 0040AC30    mov         eax,esi
 0040AC32    cdq
 0040AC33    idiv        eax,ebx
 0040AC35    cmp         eax,dword ptr [ebp-14]
>0040AC38    je          0040AC41
 0040AC3A    mov         al,4
 0040AC3C    call        Error
 0040AC41    add         esi,8
 0040AC44    test        esi,esi
>0040AC46    jge         0040AC4F
 0040AC48    mov         al,4
 0040AC4A    call        Error
 0040AC4F    cmp         dword ptr [ebp-1C],0
>0040AC53    je          0040AC5D
 0040AC55    mov         eax,dword ptr [ebp-1C]
 0040AC58    cmp         dword ptr [eax],1
>0040AC5B    jne         0040AC99
 0040AC5D    mov         eax,dword ptr [ebp-1C]
 0040AC60    mov         dword ptr [ebp-20],eax
 0040AC63    cmp         edi,ebx
>0040AC65    jle         0040AC87
 0040AC67    cmp         dword ptr [ebp-18],0
>0040AC6B    je          0040AC87
 0040AC6D    mov         eax,dword ptr [ebp-1C]
 0040AC70    add         eax,8
 0040AC73    mov         edx,ebx
 0040AC75    imul        edx,dword ptr [ebp-14]
 0040AC79    add         eax,edx
 0040AC7B    mov         ecx,edi
 0040AC7D    sub         ecx,ebx
 0040AC7F    mov         edx,dword ptr [ebp-18]
 0040AC82    call        FinalizeArray
 0040AC87    lea         eax,[ebp-20]
 0040AC8A    mov         edx,esi
 0040AC8C    call        @ReallocMem
 0040AC91    mov         eax,dword ptr [ebp-20]
 0040AC94    mov         dword ptr [ebp-1C],eax
>0040AC97    jmp         0040ACFB
 0040AC99    mov         eax,esi
 0040AC9B    call        @GetMem
 0040ACA0    mov         dword ptr [ebp-1C],eax
 0040ACA3    mov         esi,edi
 0040ACA5    cmp         ebx,esi
>0040ACA7    jge         0040ACAB
 0040ACA9    mov         esi,ebx
 0040ACAB    cmp         dword ptr [ebp-18],0
>0040ACAF    je          0040ACDA
 0040ACB1    mov         edx,esi
 0040ACB3    imul        edx,dword ptr [ebp-14]
 0040ACB7    mov         eax,dword ptr [ebp-1C]
 0040ACBA    add         eax,8
 0040ACBD    xor         ecx,ecx
 0040ACBF    call        @FillChar
 0040ACC4    push        esi
 0040ACC5    mov         edx,dword ptr [ebp-4]
 0040ACC8    mov         edx,dword ptr [edx]
 0040ACCA    mov         eax,dword ptr [ebp-1C]
 0040ACCD    add         eax,8
 0040ACD0    mov         ecx,dword ptr [ebp-18]
 0040ACD3    call        CopyArray
>0040ACD8    jmp         0040ACF0
 0040ACDA    mov         ecx,esi
 0040ACDC    imul        ecx,dword ptr [ebp-14]
 0040ACE0    mov         edx,dword ptr [ebp-1C]
 0040ACE3    add         edx,8
 0040ACE6    mov         eax,dword ptr [ebp-4]
 0040ACE9    mov         eax,dword ptr [eax]
 0040ACEB    call        Move
 0040ACF0    mov         eax,dword ptr [ebp-4]
 0040ACF3    mov         edx,dword ptr [ebp-8]
 0040ACF6    call        @DynArrayClear
 0040ACFB    mov         eax,dword ptr [ebp-1C]
 0040ACFE    mov         dword ptr [eax],1
 0040AD04    mov         dword ptr [eax+4],ebx
 0040AD07    add         dword ptr [ebp-1C],8
 0040AD0B    cmp         edi,ebx
>0040AD0D    jge         0040AD27
 0040AD0F    mov         edx,ebx
 0040AD11    sub         edx,edi
 0040AD13    imul        edx,dword ptr [ebp-14]
 0040AD17    mov         eax,dword ptr [ebp-14]
 0040AD1A    imul        eax,edi
 0040AD1D    add         eax,dword ptr [ebp-1C]
 0040AD20    xor         ecx,ecx
 0040AD22    call        @FillChar
 0040AD27    cmp         dword ptr [ebp-0C],1
>0040AD2B    jle         0040ADAC
 0040AD2D    add         dword ptr [ebp+8],4
 0040AD31    dec         dword ptr [ebp-0C]
 0040AD34    xor         eax,eax
 0040AD36    mov         dword ptr [ebp-10],eax
 0040AD39    xor         eax,eax
 0040AD3B    push        ebp
 0040AD3C    push        40AD76
 0040AD41    push        dword ptr fs:[eax]
 0040AD44    mov         dword ptr fs:[eax],esp
 0040AD47    cmp         ebx,dword ptr [ebp-10]
>0040AD4A    jle         0040AD6C
 0040AD4C    mov         eax,dword ptr [ebp+8]
 0040AD4F    push        eax
 0040AD50    mov         eax,dword ptr [ebp-1C]
 0040AD53    mov         edx,dword ptr [ebp-10]
 0040AD56    lea         eax,[eax+edx*4]
 0040AD59    mov         ecx,dword ptr [ebp-0C]
 0040AD5C    mov         edx,dword ptr [ebp-18]
 0040AD5F    call        DynArraySetLength
 0040AD64    inc         dword ptr [ebp-10]
 0040AD67    cmp         ebx,dword ptr [ebp-10]
>0040AD6A    jg          0040AD4C
 0040AD6C    xor         eax,eax
 0040AD6E    pop         edx
 0040AD6F    pop         ecx
 0040AD70    pop         ecx
 0040AD71    mov         dword ptr fs:[eax],edx
>0040AD74    jmp         0040ADAC
>0040AD76    jmp         @HandleAnyException
 0040AD7B    mov         ebx,dword ptr [ebp-10]
 0040AD7E    test        ebx,ebx
>0040AD80    jl          0040AD97
 0040AD82    inc         ebx
 0040AD83    xor         esi,esi
 0040AD85    mov         eax,dword ptr [ebp-1C]
 0040AD88    lea         eax,[eax+esi*4]
 0040AD8B    mov         edx,dword ptr [ebp-8]
 0040AD8E    call        @DynArrayClear
 0040AD93    inc         esi
 0040AD94    dec         ebx
>0040AD95    jne         0040AD85
 0040AD97    lea         eax,[ebp-1C]
 0040AD9A    mov         edx,dword ptr [ebp-18]
 0040AD9D    call        @DynArrayClear
 0040ADA2    call        @RaiseAgain
 0040ADA7    call        @DoneExcept
 0040ADAC    mov         eax,dword ptr [ebp-4]
 0040ADAF    mov         edx,dword ptr [ebp-1C]
 0040ADB2    mov         dword ptr [eax],edx
 0040ADB4    pop         edi
 0040ADB5    pop         esi
 0040ADB6    pop         ebx
 0040ADB7    mov         esp,ebp
 0040ADB9    pop         ebp
 0040ADBA    ret         4
*}
end;

//0040ADC0
procedure @DynArraySetLength(var Arr:Pointer; TypeInfo:PDynArrayTypeInfo; DimCnt:Longint; LengthVec:Longint);
begin
{*
 0040ADC0    push        esp
 0040ADC1    add         dword ptr [esp],4
 0040ADC5    call        DynArraySetLength
 0040ADCA    ret
*}
end;

//0040ADCC
procedure @DynArrayCopy(Arr:Pointer; TypeInfo:PDynArrayTypeInfo; var Result:Pointer);
begin
{*
 0040ADCC    push        ebx
 0040ADCD    test        eax,eax
>0040ADCF    je          0040ADE4
 0040ADD1    mov         ebx,eax
 0040ADD3    sub         ebx,8
 0040ADD6    mov         ebx,dword ptr [ebx+4]
 0040ADD9    push        ebx
 0040ADDA    push        ecx
 0040ADDB    xor         ecx,ecx
 0040ADDD    call        @DynArrayCopyRange
 0040ADE2    pop         ebx
 0040ADE3    ret
 0040ADE4    mov         eax,ecx
 0040ADE6    call        @DynArrayClear
 0040ADEB    pop         ebx
 0040ADEC    ret
*}
end;

//0040ADF0
procedure @DynArrayCopyRange(Arr:Pointer; TypeInfo:PDynArrayTypeInfo; Index:Integer; Count:Integer; var Result:Pointer);
begin
{*
 0040ADF0    push        ebp
 0040ADF1    mov         ebp,esp
 0040ADF3    add         esp,0FFFFFFF0
 0040ADF6    push        ebx
 0040ADF7    push        esi
 0040ADF8    push        edi
 0040ADF9    mov         edi,ecx
 0040ADFB    mov         dword ptr [ebp-8],edx
 0040ADFE    mov         dword ptr [ebp-4],eax
 0040AE01    mov         ebx,dword ptr [ebp+0C]
 0040AE04    xor         esi,esi
 0040AE06    cmp         dword ptr [ebp-4],0
>0040AE0A    je          0040AECB
 0040AE10    mov         eax,dword ptr [ebp-8]
 0040AE13    mov         dword ptr [ebp-10],eax
 0040AE16    test        edi,edi
>0040AE18    jge         0040AE1E
 0040AE1A    add         ebx,edi
 0040AE1C    xor         edi,edi
 0040AE1E    mov         eax,dword ptr [ebp-4]
 0040AE21    sub         eax,8
 0040AE24    mov         eax,dword ptr [eax+4]
 0040AE27    cmp         eax,edi
>0040AE29    jge         0040AE2D
 0040AE2B    mov         edi,eax
 0040AE2D    mov         edx,eax
 0040AE2F    sub         edx,edi
 0040AE31    cmp         ebx,edx
>0040AE33    jle         0040AE37
 0040AE35    mov         ebx,edx
 0040AE37    test        ebx,ebx
>0040AE39    jge         0040AE3D
 0040AE3B    xor         ebx,ebx
 0040AE3D    test        ebx,ebx
>0040AE3F    jle         0040AECB
 0040AE45    mov         eax,dword ptr [ebp-10]
 0040AE48    movzx       eax,byte ptr [eax+1]
 0040AE4C    add         dword ptr [ebp-10],eax
 0040AE4F    mov         eax,dword ptr [ebp-10]
 0040AE52    mov         eax,dword ptr [eax+2]
 0040AE55    mov         dword ptr [ebp-0C],eax
 0040AE58    mov         eax,dword ptr [ebp-10]
 0040AE5B    mov         eax,dword ptr [eax+6]
 0040AE5E    test        eax,eax
>0040AE60    je          0040AE69
 0040AE62    mov         eax,dword ptr [eax]
 0040AE64    mov         dword ptr [ebp-10],eax
>0040AE67    jmp         0040AE6E
 0040AE69    xor         eax,eax
 0040AE6B    mov         dword ptr [ebp-10],eax
 0040AE6E    mov         eax,ebx
 0040AE70    imul        dword ptr [ebp-0C]
 0040AE73    add         eax,8
 0040AE76    call        @GetMem
 0040AE7B    mov         esi,eax
 0040AE7D    mov         eax,esi
 0040AE7F    mov         dword ptr [eax],1
 0040AE85    mov         dword ptr [eax+4],ebx
 0040AE88    add         esi,8
 0040AE8B    imul        edi,dword ptr [ebp-0C]
 0040AE8F    add         dword ptr [ebp-4],edi
 0040AE92    test        ebx,ebx
>0040AE94    jle         0040AECB
 0040AE96    cmp         dword ptr [ebp-10],0
>0040AE9A    je          0040AEBB
 0040AE9C    mov         edx,ebx
 0040AE9E    imul        edx,dword ptr [ebp-0C]
 0040AEA2    mov         eax,esi
 0040AEA4    xor         ecx,ecx
 0040AEA6    call        @FillChar
 0040AEAB    push        ebx
 0040AEAC    mov         ecx,dword ptr [ebp-10]
 0040AEAF    mov         edx,dword ptr [ebp-4]
 0040AEB2    mov         eax,esi
 0040AEB4    call        CopyArray
>0040AEB9    jmp         0040AECB
 0040AEBB    mov         ecx,ebx
 0040AEBD    imul        ecx,dword ptr [ebp-0C]
 0040AEC1    mov         edx,esi
 0040AEC3    mov         eax,dword ptr [ebp-4]
 0040AEC6    call        Move
 0040AECB    mov         eax,dword ptr [ebp+8]
 0040AECE    mov         edx,dword ptr [ebp-8]
 0040AED1    call        @DynArrayClear
 0040AED6    mov         eax,dword ptr [ebp+8]
 0040AED9    mov         dword ptr [eax],esi
 0040AEDB    pop         edi
 0040AEDC    pop         esi
 0040AEDD    pop         ebx
 0040AEDE    mov         esp,ebp
 0040AEE0    pop         ebp
 0040AEE1    ret         8
*}
end;

//0040AEE4
procedure @DynArrayClear(var Arr:Pointer; TypeInfo:PDynArrayTypeInfo);
begin
{*
 0040AEE4    mov         ecx,dword ptr [eax]
 0040AEE6    test        ecx,ecx
>0040AEE8    je          0040AF25
 0040AEEA    mov         dword ptr [eax],0
 0040AEF0    cmp         dword ptr [ecx-8],0
>0040AEF4    jle         0040AF25
 0040AEF6    lock dec    dword ptr [ecx-8]
>0040AEFA    jne         0040AF25
 0040AEFC    push        eax
 0040AEFD    mov         eax,ecx
 0040AEFF    xor         ecx,ecx
 0040AF01    mov         cl,byte ptr [edx+1]
 0040AF04    mov         edx,dword ptr [ecx+edx+6]
 0040AF08    test        edx,edx
>0040AF0A    je          0040AF1C
 0040AF0C    mov         ecx,dword ptr [eax-4]
 0040AF0F    test        ecx,ecx
>0040AF11    je          0040AF1C
 0040AF13    mov         edx,dword ptr [edx]
 0040AF15    push        eax
 0040AF16    call        @FinalizeArray
 0040AF1B    pop         eax
 0040AF1C    sub         eax,8
 0040AF1F    call        @FreeMem
 0040AF24    pop         eax
 0040AF25    ret
*}
end;

//0040AF28
procedure @DynArrayAsg(var Dest:Pointer; Source:Pointer; TypeInfo:PDynArrayTypeInfo);
begin
{*
 0040AF28    test        edx,edx
>0040AF2A    je          0040AF36
 0040AF2C    cmp         dword ptr [edx-8],0
>0040AF30    jl          0040AF5B
 0040AF32    lock inc    dword ptr [edx-8]
 0040AF36    push        ebx
 0040AF37    mov         ebx,dword ptr [eax]
 0040AF39    test        ebx,ebx
>0040AF3B    je          0040AF57
 0040AF3D    cmp         dword ptr [ebx-8],0
>0040AF41    jle         0040AF57
 0040AF43    lock dec    dword ptr [ebx-8]
>0040AF47    jne         0040AF57
 0040AF49    push        eax
 0040AF4A    push        edx
 0040AF4B    mov         edx,ecx
 0040AF4D    inc         dword ptr [ebx-8]
 0040AF50    call        @DynArrayClear
 0040AF55    pop         edx
 0040AF56    pop         eax
 0040AF57    mov         dword ptr [eax],edx
 0040AF59    pop         ebx
 0040AF5A    ret
*}
end;

//0040AF64
procedure @DynArrayAddRef(Arr:Pointer);
begin
{*
 0040AF64    test        eax,eax
>0040AF66    je          0040AF72
 0040AF68    cmp         dword ptr [eax-8],0
>0040AF6C    jl          0040AF72
 0040AF6E    lock inc    dword ptr [eax-8]
 0040AF72    ret
*}
end;

//0040AF74
{*procedure sub_0040AF74(?:?; ?:?; ?:?);
begin
 0040AF74    push        ebx
 0040AF75    push        esi
 0040AF76    push        edi
 0040AF77    push        ebp
 0040AF78    add         esp,0FFFFFFE4
 0040AF7B    mov         dword ptr [esp],ecx
 0040AF7E    mov         ebx,edx
 0040AF80    mov         esi,eax
 0040AF82    test        ebx,ebx
>0040AF84    je          0040B06E
 0040AF8A    cmp         dword ptr [esi],0
>0040AF8D    jne         0040AFA0
 0040AF8F    mov         eax,esi
 0040AF91    mov         ecx,dword ptr [esp]
 0040AF94    mov         edx,ebx
 0040AF96    call        @DynArrayAsg
>0040AF9B    jmp         0040B06E
 0040AFA0    mov         eax,dword ptr [esi]
 0040AFA2    sub         eax,8
 0040AFA5    mov         eax,dword ptr [eax+4]
 0040AFA8    mov         dword ptr [esp+4],eax
 0040AFAC    mov         eax,ebx
 0040AFAE    sub         eax,8
 0040AFB1    mov         eax,dword ptr [eax+4]
 0040AFB4    mov         dword ptr [esp+8],eax
 0040AFB8    mov         eax,dword ptr [esp+4]
 0040AFBC    add         eax,dword ptr [esp+8]
 0040AFC0    mov         dword ptr [esp+0C],eax
 0040AFC4    mov         eax,dword ptr [esp]
 0040AFC7    movzx       edi,byte ptr [eax+1]
 0040AFCB    add         edi,eax
 0040AFCD    mov         eax,edi
 0040AFCF    mov         ebp,dword ptr [eax+2]
 0040AFD2    mov         edx,dword ptr [eax+6]
 0040AFD5    test        edx,edx
>0040AFD7    je          0040AFDD
 0040AFD9    mov         edi,dword ptr [edx]
>0040AFDB    jmp         0040AFDF
 0040AFDD    xor         edi,edi
 0040AFDF    mov         eax,dword ptr [esp+0C]
 0040AFE3    imul        ebp
 0040AFE5    mov         dword ptr [esp+10],eax
 0040AFE9    mov         eax,dword ptr [esp+10]
 0040AFED    cdq
 0040AFEE    idiv        eax,dword ptr [esp+0C]
 0040AFF2    cmp         ebp,eax
>0040AFF4    je          0040AFFB
 0040AFF6    call        @IntOver
 0040AFFB    add         dword ptr [esp+10],8
 0040B000    cmp         dword ptr [esp+10],0
>0040B005    jge         0040B00C
 0040B007    call        @IntOver
 0040B00C    mov         eax,dword ptr [esi]
 0040B00E    mov         dword ptr [esp+18],eax
 0040B012    mov         eax,dword ptr [esp+0C]
 0040B016    mov         dword ptr [esp+14],eax
 0040B01A    lea         eax,[esp+14]
 0040B01E    push        eax
 0040B01F    mov         eax,esi
 0040B021    mov         ecx,1
 0040B026    mov         edx,dword ptr [esp+4]
 0040B02A    call        DynArraySetLength
 0040B02F    cmp         ebx,dword ptr [esp+18]
>0040B033    jne         0040B037
 0040B035    mov         ebx,dword ptr [esi]
 0040B037    test        edi,edi
>0040B039    je          0040B056
 0040B03B    mov         eax,dword ptr [esp+4]
 0040B03F    imul        ebp
 0040B041    mov         edx,dword ptr [esi]
 0040B043    lea         eax,[edx+eax]
 0040B046    mov         edx,dword ptr [esp+8]
 0040B04A    push        edx
 0040B04B    mov         ecx,edi
 0040B04D    mov         edx,ebx
 0040B04F    call        CopyArray
>0040B054    jmp         0040B06E
 0040B056    mov         eax,dword ptr [esp+4]
 0040B05A    imul        ebp
 0040B05C    mov         edx,dword ptr [esi]
 0040B05E    add         edx,eax
 0040B060    mov         ecx,dword ptr [esp+8]
 0040B064    imul        ecx,ebp
 0040B067    mov         eax,ebx
 0040B069    call        Move
 0040B06E    add         esp,1C
 0040B071    pop         ebp
 0040B072    pop         edi
 0040B073    pop         esi
 0040B074    pop         ebx
 0040B075    ret
end;*}

//0040B078
{*procedure sub_0040B078(?:TArray<System.Types.TMultiWaitEvent.TWaitInfo>; ?:?; ?:?; ?:?);
begin
 0040B078    push        ebp
 0040B079    mov         ebp,esp
 0040B07B    add         esp,0FFFFFFE4
 0040B07E    push        ebx
 0040B07F    push        esi
 0040B080    push        edi
 0040B081    mov         dword ptr [ebp-8],ecx
 0040B084    mov         dword ptr [ebp-4],edx
 0040B087    mov         ebx,eax
 0040B089    cmp         dword ptr [ebx],0
>0040B08C    je          0040B15E
 0040B092    mov         eax,dword ptr [ebx]
 0040B094    sub         eax,8
 0040B097    mov         eax,dword ptr [eax+4]
 0040B09A    cmp         dword ptr [ebp-4],0
>0040B09E    jl          0040B15E
 0040B0A4    cmp         eax,dword ptr [ebp-4]
>0040B0A7    jle         0040B15E
 0040B0AD    cmp         dword ptr [ebp-8],0
>0040B0B1    jle         0040B15E
 0040B0B7    mov         edx,eax
 0040B0B9    sub         edx,dword ptr [ebp-4]
 0040B0BC    sub         edx,dword ptr [ebp-8]
 0040B0BF    mov         dword ptr [ebp-0C],edx
 0040B0C2    cmp         dword ptr [ebp-0C],0
>0040B0C6    jge         0040B0CD
 0040B0C8    xor         edx,edx
 0040B0CA    mov         dword ptr [ebp-0C],edx
 0040B0CD    mov         edx,dword ptr [ebp+8]
 0040B0D0    movzx       edi,byte ptr [edx+1]
 0040B0D4    add         edi,edx
 0040B0D6    mov         edx,edi
 0040B0D8    mov         esi,dword ptr [edx+2]
 0040B0DB    cmp         dword ptr [edx+6],0
>0040B0DF    je          0040B0E8
 0040B0E1    mov         edx,dword ptr [edx+6]
 0040B0E4    mov         edi,dword ptr [edx]
>0040B0E6    jmp         0040B0EA
 0040B0E8    xor         edi,edi
 0040B0EA    mov         edx,dword ptr [ebp-4]
 0040B0ED    imul        edx,esi
 0040B0F0    mov         ecx,dword ptr [ebx]
 0040B0F2    lea         edx,[ecx+edx]
 0040B0F5    mov         dword ptr [ebp-18],edx
 0040B0F8    sub         eax,dword ptr [ebp-0C]
 0040B0FB    imul        esi
 0040B0FD    mov         edx,dword ptr [ebx]
 0040B0FF    lea         eax,[edx+eax]
 0040B102    mov         dword ptr [ebp-14],eax
 0040B105    test        edi,edi
>0040B107    je          0040B131
 0040B109    mov         eax,dword ptr [ebp-0C]
 0040B10C    test        eax,eax
>0040B10E    jle         0040B142
 0040B110    mov         dword ptr [ebp-1C],eax
 0040B113    push        1
 0040B115    mov         ecx,edi
 0040B117    mov         edx,dword ptr [ebp-14]
 0040B11A    mov         eax,dword ptr [ebp-18]
 0040B11D    call        CopyArray
 0040B122    mov         eax,esi
 0040B124    add         dword ptr [ebp-18],eax
 0040B127    add         dword ptr [ebp-14],eax
 0040B12A    dec         dword ptr [ebp-1C]
>0040B12D    jne         0040B113
>0040B12F    jmp         0040B142
 0040B131    mov         ecx,dword ptr [ebp-0C]
 0040B134    imul        ecx,esi
 0040B137    mov         edx,dword ptr [ebp-18]
 0040B13A    mov         eax,dword ptr [ebp-14]
 0040B13D    call        Move
 0040B142    mov         eax,dword ptr [ebp-4]
 0040B145    add         eax,dword ptr [ebp-0C]
 0040B148    mov         dword ptr [ebp-10],eax
 0040B14B    lea         eax,[ebp-10]
 0040B14E    push        eax
 0040B14F    mov         eax,ebx
 0040B151    mov         ecx,1
 0040B156    mov         edx,dword ptr [ebp+8]
 0040B159    call        DynArraySetLength
 0040B15E    pop         edi
 0040B15F    pop         esi
 0040B160    pop         ebx
 0040B161    mov         esp,ebp
 0040B163    pop         ebp
 0040B164    ret         4
end;*}

//0040B168
function FindHInstance(Address:Pointer):NativeUInt;
begin
{*
 0040B168    add         esp,0FFFFFFE4
 0040B16B    push        1C
 0040B16D    lea         edx,[esp+4]
 0040B171    push        edx
 0040B172    push        eax
 0040B173    call        kernel32.VirtualQuery
 0040B178    cmp         dword ptr [esp+10],1000
>0040B180    jne         0040B188
 0040B182    mov         eax,dword ptr [esp+4]
>0040B186    jmp         0040B18A
 0040B188    xor         eax,eax
 0040B18A    add         esp,1C
 0040B18D    ret
*}
end;

//0040B190
function FindClassHInstance(ClassType:TClass):NativeUInt;
begin
{*
 0040B190    call        FindHInstance
 0040B195    ret
*}
end;

//0040B198
function DelayLoadResourceModule(Module:PLibModule):NativeUInt;
begin
{*
 0040B198    push        ebx
 0040B199    push        esi
 0040B19A    add         esp,0FFFFFDF4
 0040B1A0    mov         ebx,eax
 0040B1A2    cmp         dword ptr [ebx+10],0
>0040B1A6    jne         0040B1D3
 0040B1A8    push        20A
 0040B1AD    lea         eax,[esp+4]
 0040B1B1    push        eax
 0040B1B2    mov         eax,dword ptr [ebx+4]
 0040B1B5    push        eax
 0040B1B6    call        kernel32.GetModuleFileNameW
 0040B1BB    mov         eax,esp
 0040B1BD    mov         dl,1
 0040B1BF    call        LoadResourceModule
 0040B1C4    mov         esi,eax
 0040B1C6    mov         dword ptr [ebx+10],esi
 0040B1C9    test        esi,esi
>0040B1CB    jne         0040B1D3
 0040B1CD    mov         eax,dword ptr [ebx+4]
 0040B1D0    mov         dword ptr [ebx+10],eax
 0040B1D3    mov         eax,dword ptr [ebx+10]
 0040B1D6    add         esp,20C
 0040B1DC    pop         esi
 0040B1DD    pop         ebx
 0040B1DE    ret
*}
end;

//0040B1E0
function FindResourceHInstance(Instance:NativeUInt):NativeUInt;
begin
{*
 0040B1E0    push        ebx
 0040B1E1    push        esi
 0040B1E2    push        edi
 0040B1E3    mov         esi,eax
 0040B1E5    mov         ebx,dword ptr ds:[79E03C];gvar_0079E03C
 0040B1EB    test        ebx,ebx
>0040B1ED    je          0040B20F
 0040B1EF    cmp         esi,dword ptr [ebx+4]
>0040B1F2    je          0040B1FE
 0040B1F4    cmp         esi,dword ptr [ebx+8]
>0040B1F7    je          0040B1FE
 0040B1F9    cmp         esi,dword ptr [ebx+0C]
>0040B1FC    jne         0040B209
 0040B1FE    mov         eax,ebx
 0040B200    call        DelayLoadResourceModule
 0040B205    mov         edi,eax
>0040B207    jmp         0040B211
 0040B209    mov         ebx,dword ptr [ebx]
 0040B20B    test        ebx,ebx
>0040B20D    jne         0040B1EF
 0040B20F    mov         edi,esi
 0040B211    mov         eax,edi
 0040B213    pop         edi
 0040B214    pop         esi
 0040B215    pop         ebx
 0040B216    ret
*}
end;

//0040B444
procedure InitializeLocaleData;
begin
{*
 0040B444    push        7C7B8C
 0040B449    call        kernel32.InitializeCriticalSection
 0040B44E    mov         word ptr ds:[7C7BA4],7F
 0040B457    call        kernel32.GetVersion
 0040B45C    and         eax,0FF
 0040B461    cmp         eax,6
 0040B464    setae       byte ptr ds:[7C7B88]
 0040B46B    cmp         byte ptr ds:[7C7B88],0
>0040B472    je          0040B4C2
 0040B474    push        40B4C4
 0040B479    push        40B4E4
 0040B47E    call        kernel32.GetModuleHandleW
 0040B483    push        eax
 0040B484    call        kernel32.GetProcAddress
 0040B489    mov         [007C7B7C],eax
 0040B48E    push        40B500
 0040B493    push        40B4E4
 0040B498    call        kernel32.GetModuleHandleW
 0040B49D    push        eax
 0040B49E    call        kernel32.GetProcAddress
 0040B4A3    mov         [007C7B80],eax
 0040B4A8    push        40B520
 0040B4AD    push        40B4E4
 0040B4B2    call        kernel32.GetModuleHandleW
 0040B4B7    push        eax
 0040B4B8    call        kernel32.GetProcAddress
 0040B4BD    mov         [007C7B84],eax
 0040B4C2    ret
*}
end;

//0040B534
procedure FinalizeLocaleDate;
begin
{*
 0040B534    push        7C7B8C
 0040B539    call        kernel32.DeleteCriticalSection
 0040B53E    ret
*}
end;

//0040B540
procedure StringCopy(Dest:PWideChar; DestSize:Integer; Src:PWideChar);
begin
{*
 0040B540    push        ebx
 0040B541    test        edx,edx
>0040B543    jne         0040B54C
 0040B545    mov         word ptr [eax],0
>0040B54A    jmp         0040B572
 0040B54C    test        edx,edx
>0040B54E    jle         0040B566
 0040B550    movzx       ebx,word ptr [ecx]
 0040B553    mov         word ptr [eax],bx
 0040B556    test        bx,bx
>0040B559    je          0040B572
 0040B55B    add         eax,2
 0040B55E    add         ecx,2
 0040B561    dec         edx
 0040B562    test        edx,edx
>0040B564    jg          0040B550
 0040B566    test        edx,edx
>0040B568    jne         0040B572
 0040B56A    sub         eax,2
 0040B56D    mov         word ptr [eax],0
 0040B572    pop         ebx
 0040B573    ret
*}
end;

//0040B574
function LastHyphenPos(S:AnsiString):Integer;
begin
{*
 0040B574    push        ebp
 0040B575    mov         ebp,esp
 0040B577    push        ecx
 0040B578    push        ebx
 0040B579    mov         dword ptr [ebp-4],eax
 0040B57C    mov         eax,dword ptr [ebp-4]
 0040B57F    call        @UStrAddRef
 0040B584    xor         eax,eax
 0040B586    push        ebp
 0040B587    push        40B5D0
 0040B58C    push        dword ptr fs:[eax]
 0040B58F    mov         dword ptr fs:[eax],esp
 0040B592    mov         eax,dword ptr [ebp-4]
 0040B595    test        eax,eax
>0040B597    je          0040B59E
 0040B599    sub         eax,4
 0040B59C    mov         eax,dword ptr [eax]
 0040B59E    cmp         eax,1
>0040B5A1    jl          0040B5B8
 0040B5A3    mov         edx,dword ptr [ebp-4]
 0040B5A6    cmp         word ptr [edx+eax*2-2],2D
>0040B5AC    jne         0040B5B3
 0040B5AE    mov         ebx,eax
 0040B5B0    dec         ebx
>0040B5B1    jmp         0040B5BA
 0040B5B3    dec         eax
 0040B5B4    test        eax,eax
>0040B5B6    jne         0040B5A3
 0040B5B8    xor         ebx,ebx
 0040B5BA    xor         eax,eax
 0040B5BC    pop         edx
 0040B5BD    pop         ecx
 0040B5BE    pop         ecx
 0040B5BF    mov         dword ptr fs:[eax],edx
 0040B5C2    push        40B5D7
 0040B5C7    lea         eax,[ebp-4]
 0040B5CA    call        @UStrClr
 0040B5CF    ret
>0040B5D0    jmp         @HandleFinally
>0040B5D5    jmp         0040B5C7
 0040B5D7    mov         eax,ebx
 0040B5D9    pop         ebx
 0040B5DA    pop         ecx
 0040B5DB    pop         ebp
 0040B5DC    ret
*}
end;

//0040B5E0
function ConvertResToUILanguages(ResBuffer:PAnsiChar):string;
begin
{*
 0040B5E0    push        ebp
 0040B5E1    mov         ebp,esp
 0040B5E3    push        0
 0040B5E5    push        0
 0040B5E7    push        0
 0040B5E9    push        ebx
 0040B5EA    push        esi
 0040B5EB    mov         ebx,edx
 0040B5ED    mov         esi,eax
 0040B5EF    xor         eax,eax
 0040B5F1    push        ebp
 0040B5F2    push        40B6A3
 0040B5F7    push        dword ptr fs:[eax]
 0040B5FA    mov         dword ptr fs:[eax],esp
 0040B5FD    mov         eax,ebx
 0040B5FF    mov         edx,esi
 0040B601    call        @UStrFromPChar
 0040B606    mov         eax,dword ptr [ebx]
 0040B608    test        eax,eax
>0040B60A    je          0040B611
 0040B60C    sub         eax,4
 0040B60F    mov         eax,dword ptr [eax]
 0040B611    test        eax,eax
>0040B613    jle         0040B628
 0040B615    mov         edx,1
 0040B61A    mov         ecx,dword ptr [ebx]
 0040B61C    cmp         word ptr [ecx+edx*2-2],2C
>0040B622    je          0040B688
 0040B624    inc         edx
 0040B625    dec         eax
>0040B626    jne         0040B61A
 0040B628    lea         eax,[ebp-8]
 0040B62B    mov         edx,dword ptr [ebx]
 0040B62D    call        @UStrLAsg
 0040B632    mov         eax,ebx
 0040B634    call        @UStrClr
>0040B639    jmp         0040B682
 0040B63B    push        dword ptr [ebx]
 0040B63D    push        dword ptr [ebp-4]
 0040B640    push        dword ptr [ebp-8]
 0040B643    mov         eax,ebx
 0040B645    mov         edx,3
 0040B64A    call        @UStrCatN
 0040B64F    lea         eax,[ebp-4]
 0040B652    mov         edx,40B6BC;','
 0040B657    call        @UStrLAsg
 0040B65C    lea         eax,[ebp-0C]
 0040B65F    push        eax
 0040B660    mov         eax,dword ptr [ebp-8]
 0040B663    call        LastHyphenPos
 0040B668    mov         ecx,eax
 0040B66A    mov         edx,1
 0040B66F    mov         eax,dword ptr [ebp-8]
 0040B672    call        @UStrCopy
 0040B677    mov         edx,dword ptr [ebp-0C]
 0040B67A    lea         eax,[ebp-8]
 0040B67D    call        @UStrLAsg
 0040B682    cmp         dword ptr [ebp-8],0
>0040B686    jne         0040B63B
 0040B688    xor         eax,eax
 0040B68A    pop         edx
 0040B68B    pop         ecx
 0040B68C    pop         ecx
 0040B68D    mov         dword ptr fs:[eax],edx
 0040B690    push        40B6AA
 0040B695    lea         eax,[ebp-0C]
 0040B698    mov         edx,3
 0040B69D    call        @UStrArrayClr
 0040B6A2    ret
>0040B6A3    jmp         @HandleFinally
>0040B6A8    jmp         0040B695
 0040B6AA    pop         esi
 0040B6AB    pop         ebx
 0040B6AC    mov         esp,ebp
 0040B6AE    pop         ebp
 0040B6AF    ret
*}
end;

//0040B6C0
function GetPreferredLangForOldOS(LANGID:Word):string;
begin
{*
 0040B6C0    push        ebp
 0040B6C1    mov         ebp,esp
 0040B6C3    add         esp,0FFFFFE98
 0040B6C9    push        ebx
 0040B6CA    push        esi
 0040B6CB    push        edi
 0040B6CC    xor         ecx,ecx
 0040B6CE    mov         dword ptr [ebp-160],ecx
 0040B6D4    mov         dword ptr [ebp-164],ecx
 0040B6DA    mov         dword ptr [ebp-168],ecx
 0040B6E0    mov         dword ptr [ebp-4],edx
 0040B6E3    mov         esi,eax
 0040B6E5    xor         eax,eax
 0040B6E7    push        ebp
 0040B6E8    push        40B825
 0040B6ED    push        dword ptr fs:[eax]
 0040B6F0    mov         dword ptr fs:[eax],esp
 0040B6F3    mov         eax,dword ptr [ebp-4]
 0040B6F6    call        @UStrClr
 0040B6FB    cmp         si,word ptr ds:[79EA08]
>0040B702    jb          0040B758
 0040B704    cmp         si,word ptr ds:[79EC08]
>0040B70B    ja          0040B758
 0040B70D    mov         edi,40
 0040B712    xor         eax,eax
 0040B714    mov         dword ptr [ebp-8],eax
 0040B717    cmp         edi,dword ptr [ebp-8]
>0040B71A    jb          0040B758
 0040B71C    mov         ebx,edi
 0040B71E    add         ebx,dword ptr [ebp-8]
 0040B721    shr         ebx,1
 0040B723    cmp         si,word ptr [ebx*8+79EA08]
>0040B72B    jae         0040B732
 0040B72D    mov         edi,ebx
 0040B72F    dec         edi
>0040B730    jmp         0040B753
 0040B732    cmp         si,word ptr [ebx*8+79EA08]
>0040B73A    jbe         0040B742
 0040B73C    inc         ebx
 0040B73D    mov         dword ptr [ebp-8],ebx
>0040B740    jmp         0040B753
 0040B742    mov         edx,dword ptr [ebp-4]
 0040B745    mov         eax,dword ptr [ebx*8+79EA0C]
 0040B74C    call        ConvertResToUILanguages
>0040B751    jmp         0040B758
 0040B753    cmp         edi,dword ptr [ebp-8]
>0040B756    jae         0040B71C
 0040B758    mov         eax,dword ptr [ebp-4]
 0040B75B    cmp         dword ptr [eax],0
>0040B75E    jne         0040B807
 0040B764    push        2
 0040B766    movzx       eax,si
 0040B769    push        eax
 0040B76A    call        kernel32.IsValidLocale
 0040B76F    test        eax,eax
>0040B771    je          0040B807
 0040B777    push        55
 0040B779    lea         eax,[ebp-0B2]
 0040B77F    push        eax
 0040B780    push        59
 0040B782    movzx       ebx,si
 0040B785    push        ebx
 0040B786    call        kernel32.GetLocaleInfoW
 0040B78B    push        55
 0040B78D    lea         eax,[ebp-15C]
 0040B793    push        eax
 0040B794    push        5A
 0040B796    push        ebx
 0040B797    call        kernel32.GetLocaleInfoW
 0040B79C    lea         eax,[ebp-160]
 0040B7A2    lea         edx,[ebp-0B2]
 0040B7A8    mov         ecx,55
 0040B7AD    call        @UStrFromWArray
 0040B7B2    push        dword ptr [ebp-160]
 0040B7B8    push        40B840;'-'
 0040B7BD    lea         eax,[ebp-164]
 0040B7C3    lea         edx,[ebp-15C]
 0040B7C9    mov         ecx,55
 0040B7CE    call        @UStrFromWArray
 0040B7D3    push        dword ptr [ebp-164]
 0040B7D9    push        40B850;','
 0040B7DE    lea         eax,[ebp-168]
 0040B7E4    lea         edx,[ebp-0B2]
 0040B7EA    mov         ecx,55
 0040B7EF    call        @UStrFromWArray
 0040B7F4    push        dword ptr [ebp-168]
 0040B7FA    mov         eax,dword ptr [ebp-4]
 0040B7FD    mov         edx,5
 0040B802    call        @UStrCatN
 0040B807    xor         eax,eax
 0040B809    pop         edx
 0040B80A    pop         ecx
 0040B80B    pop         ecx
 0040B80C    mov         dword ptr fs:[eax],edx
 0040B80F    push        40B82C
 0040B814    lea         eax,[ebp-168]
 0040B81A    mov         edx,3
 0040B81F    call        @UStrArrayClr
 0040B824    ret
>0040B825    jmp         @HandleFinally
>0040B82A    jmp         0040B814
 0040B82C    pop         edi
 0040B82D    pop         esi
 0040B82E    pop         ebx
 0040B82F    mov         esp,ebp
 0040B831    pop         ebp
 0040B832    ret
*}
end;

//0040B854
function CheckDifferentLanguageList(src1:PWideChar; src2:PWideChar; len:Integer):Boolean;
begin
{*
 0040B854    push        ebx
 0040B855    push        esi
 0040B856    mov         esi,ecx
 0040B858    mov         cl,1
 0040B85A    test        esi,esi
>0040B85C    jle         0040B871
 0040B85E    movzx       ebx,word ptr [eax]
 0040B861    cmp         bx,word ptr [edx]
>0040B864    jne         0040B873
 0040B866    add         eax,2
 0040B869    add         edx,2
 0040B86C    dec         esi
 0040B86D    test        esi,esi
>0040B86F    jg          0040B85E
 0040B871    xor         ecx,ecx
 0040B873    mov         eax,ecx
 0040B875    pop         esi
 0040B876    pop         ebx
 0040B877    ret
*}
end;

//0040B878
function ThreadUILanguages(var bufsize:Integer):PWideChar;
begin
{*
 0040B878    push        ebp
 0040B879    mov         ebp,esp
 0040B87B    push        ecx
 0040B87C    push        ebx
 0040B87D    push        esi
 0040B87E    mov         ebx,eax
 0040B880    xor         esi,esi
 0040B882    xor         eax,eax
 0040B884    mov         dword ptr [ebx],eax
 0040B886    push        ebx
 0040B887    push        0
 0040B889    lea         eax,[ebp-4]
 0040B88C    push        eax
 0040B88D    push        38
 0040B88F    call        dword ptr ds:[7C7B7C]
 0040B895    test        al,al
>0040B897    je          0040B8B2
 0040B899    mov         eax,dword ptr [ebx]
 0040B89B    add         eax,eax
 0040B89D    call        @GetMem
 0040B8A2    mov         esi,eax
 0040B8A4    push        ebx
 0040B8A5    push        esi
 0040B8A6    lea         eax,[ebp-4]
 0040B8A9    push        eax
 0040B8AA    push        38
 0040B8AC    call        dword ptr ds:[7C7B7C]
 0040B8B2    mov         eax,esi
 0040B8B4    pop         esi
 0040B8B5    pop         ebx
 0040B8B6    pop         ecx
 0040B8B7    pop         ebp
 0040B8B8    ret
*}
end;

//0040B8BC
function GetPreferredLangForNewOS(const LANGID:Word):string;
begin
{*
 0040B8BC    push        ebp
 0040B8BD    mov         ebp,esp
 0040B8BF    add         esp,0FFFFFFE4
 0040B8C2    push        ebx
 0040B8C3    push        esi
 0040B8C4    mov         esi,edx
 0040B8C6    mov         ebx,eax
 0040B8C8    xor         eax,eax
 0040B8CA    mov         dword ptr [ebp-0C],eax
 0040B8CD    call        dword ptr ds:[7C7B84]
 0040B8D3    cmp         bx,ax
>0040B8D6    je          0040B931
 0040B8D8    lea         eax,[ebp-4]
 0040B8DB    call        ThreadUILanguages
 0040B8E0    mov         dword ptr [ebp-0C],eax
 0040B8E3    mov         edx,ebx
 0040B8E5    mov         dword ptr [ebp-10],3
 0040B8EC    lea         eax,[ebp-16]
 0040B8EF    mov         cx,0F
 0040B8F3    and         cx,dx
 0040B8F6    movzx       ecx,cx
 0040B8F9    movzx       ecx,byte ptr [ecx+79E9EE]
 0040B900    mov         word ptr [eax],cx
 0040B903    movzx       edx,dx
 0040B906    shr         edx,4
 0040B909    dec         dword ptr [ebp-10]
 0040B90C    sub         eax,2
 0040B90F    cmp         dword ptr [ebp-10],0FFFFFFFF
>0040B913    jne         0040B8EF
 0040B915    mov         word ptr [ebp-14],0
 0040B91B    mov         word ptr [ebp-12],0
 0040B921    lea         eax,[ebp-10]
 0040B924    push        eax
 0040B925    lea         eax,[ebp-1C]
 0040B928    push        eax
 0040B929    push        4
 0040B92B    call        dword ptr ds:[7C7B80]
 0040B931    lea         eax,[ebp-8]
 0040B934    call        ThreadUILanguages
 0040B939    mov         ebx,eax
 0040B93B    test        ebx,ebx
>0040B93D    je          0040B97A
 0040B93F    mov         eax,dword ptr [ebp-8]
 0040B942    sub         eax,2
 0040B945    test        eax,eax
>0040B947    jl          0040B96A
 0040B949    inc         eax
 0040B94A    mov         dword ptr [ebp-10],0
 0040B951    mov         edx,dword ptr [ebp-10]
 0040B954    cmp         word ptr [ebx+edx*2],0
>0040B959    jne         0040B964
 0040B95B    mov         edx,dword ptr [ebp-10]
 0040B95E    mov         word ptr [ebx+edx*2],2C
 0040B964    inc         dword ptr [ebp-10]
 0040B967    dec         eax
>0040B968    jne         0040B951
 0040B96A    mov         eax,esi
 0040B96C    mov         edx,ebx
 0040B96E    call        @UStrFromPWChar
 0040B973    mov         eax,ebx
 0040B975    call        @FreeMem
 0040B97A    cmp         dword ptr [ebp-0C],0
>0040B97E    je          0040B9D0
 0040B980    lea         eax,[ebp-10]
 0040B983    push        eax
 0040B984    push        0
 0040B986    push        0
 0040B988    call        dword ptr ds:[7C7B80]
 0040B98E    lea         eax,[ebp-8]
 0040B991    call        ThreadUILanguages
 0040B996    mov         ebx,eax
 0040B998    mov         eax,dword ptr [ebp-4]
 0040B99B    cmp         eax,dword ptr [ebp-8]
>0040B99E    jne         0040B9B1
 0040B9A0    mov         ecx,dword ptr [ebp-8]
 0040B9A3    mov         edx,ebx
 0040B9A5    mov         eax,dword ptr [ebp-0C]
 0040B9A8    call        CheckDifferentLanguageList
 0040B9AD    test        al,al
>0040B9AF    je          0040B9C1
 0040B9B1    lea         eax,[ebp-10]
 0040B9B4    push        eax
 0040B9B5    mov         eax,dword ptr [ebp-0C]
 0040B9B8    push        eax
 0040B9B9    push        8
 0040B9BB    call        dword ptr ds:[7C7B80]
 0040B9C1    mov         eax,ebx
 0040B9C3    call        @FreeMem
 0040B9C8    mov         eax,dword ptr [ebp-0C]
 0040B9CB    call        @FreeMem
 0040B9D0    pop         esi
 0040B9D1    pop         ebx
 0040B9D2    mov         esp,ebp
 0040B9D4    pop         ebp
 0040B9D5    ret
*}
end;

//0040B9D8
function GetUILanguages(const LANGID:Word):string;
begin
{*
 0040B9D8    push        ebp
 0040B9D9    mov         ebp,esp
 0040B9DB    push        0
 0040B9DD    push        ebx
 0040B9DE    push        esi
 0040B9DF    mov         esi,edx
 0040B9E1    mov         ebx,eax
 0040B9E3    xor         eax,eax
 0040B9E5    push        ebp
 0040B9E6    push        40BADC
 0040B9EB    push        dword ptr fs:[eax]
 0040B9EE    mov         dword ptr fs:[eax],esp
 0040B9F1    push        7C7B8C
 0040B9F6    call        kernel32.EnterCriticalSection
 0040B9FB    cmp         bx,word ptr ds:[7C7BA4]
>0040BA02    jne         0040BA24
 0040BA04    mov         eax,esi
 0040BA06    mov         edx,7C7BA6
 0040BA0B    mov         ecx,55
 0040BA10    call        @UStrFromWArray
 0040BA15    push        7C7B8C
 0040BA1A    call        kernel32.LeaveCriticalSection
>0040BA1F    jmp         0040BAC6
 0040BA24    push        7C7B8C
 0040BA29    call        kernel32.LeaveCriticalSection
 0040BA2E    mov         eax,esi
 0040BA30    call        @UStrClr
 0040BA35    push        2
 0040BA37    movzx       eax,bx
 0040BA3A    push        eax
 0040BA3B    call        kernel32.IsValidLocale
 0040BA40    test        eax,eax
>0040BA42    je          0040BA93
 0040BA44    cmp         byte ptr ds:[7C7B88],0
>0040BA4B    je          0040BA58
 0040BA4D    mov         edx,esi
 0040BA4F    mov         eax,ebx
 0040BA51    call        GetPreferredLangForNewOS
>0040BA56    jmp         0040BA93
 0040BA58    mov         edx,esi
 0040BA5A    mov         eax,ebx
 0040BA5C    call        GetPreferredLangForOldOS
 0040BA61    call        kernel32.GetSystemDefaultUILanguage
 0040BA66    cmp         bx,ax
>0040BA69    je          0040BA93
 0040BA6B    cmp         dword ptr [esi],0
>0040BA6E    je          0040BA7C
 0040BA70    mov         eax,esi
 0040BA72    mov         edx,40BAF4;','
 0040BA77    call        @UStrCat
 0040BA7C    call        kernel32.GetSystemDefaultUILanguage
 0040BA81    lea         edx,[ebp-4]
 0040BA84    call        GetPreferredLangForOldOS
 0040BA89    mov         edx,dword ptr [ebp-4]
 0040BA8C    mov         eax,esi
 0040BA8E    call        @UStrCat
 0040BA93    push        7C7B8C
 0040BA98    call        kernel32.EnterCriticalSection
 0040BA9D    mov         word ptr ds:[7C7BA4],bx
 0040BAA4    mov         eax,dword ptr [esi]
 0040BAA6    call        @UStrToPWChar
 0040BAAB    mov         ecx,eax
 0040BAAD    mov         eax,7C7BA6
 0040BAB2    mov         edx,0AA
 0040BAB7    call        StringCopy
 0040BABC    push        7C7B8C
 0040BAC1    call        kernel32.LeaveCriticalSection
 0040BAC6    xor         eax,eax
 0040BAC8    pop         edx
 0040BAC9    pop         ecx
 0040BACA    pop         ecx
 0040BACB    mov         dword ptr fs:[eax],edx
 0040BACE    push        40BAE3
 0040BAD3    lea         eax,[ebp-4]
 0040BAD6    call        @UStrClr
 0040BADB    ret
>0040BADC    jmp         @HandleFinally
>0040BAE1    jmp         0040BAD3
 0040BAE3    pop         esi
 0040BAE4    pop         ebx
 0040BAE5    pop         ecx
 0040BAE6    pop         ebp
 0040BAE7    ret
*}
end;

//0040BAF8
function FindBS(Current:PWideChar):PWideChar;
begin
{*
 0040BAF8    push        ebx
 0040BAF9    push        esi
 0040BAFA    mov         ebx,eax
>0040BAFC    jmp         0040BB06
 0040BAFE    push        ebx
 0040BAFF    call        user32.CharNextW
 0040BB04    mov         ebx,eax
 0040BB06    movzx       esi,word ptr [ebx]
 0040BB09    test        si,si
>0040BB0C    je          0040BB14
 0040BB0E    cmp         si,5C
>0040BB12    jne         0040BAFE
 0040BB14    mov         eax,ebx
 0040BB16    pop         esi
 0040BB17    pop         ebx
 0040BB18    ret
*}
end;

//0040BB1C
function ToLongPath(AFileName:PWideChar; BufLen:Integer):PWideChar;
begin
{*
 0040BB1C    push        ebp
 0040BB1D    mov         ebp,esp
 0040BB1F    add         esp,0FFFFFB94
 0040BB25    push        ebx
 0040BB26    push        esi
 0040BB27    push        edi
 0040BB28    mov         dword ptr [ebp-8],edx
 0040BB2B    mov         dword ptr [ebp-4],eax
 0040BB2E    mov         eax,dword ptr [ebp-4]
 0040BB31    mov         dword ptr [ebp-0C],eax
 0040BB34    push        40BCDC
 0040BB39    call        kernel32.GetModuleHandleW
 0040BB3E    mov         esi,eax
 0040BB40    test        esi,esi
>0040BB42    je          0040BB81
 0040BB44    push        40BCF8
 0040BB49    push        esi
 0040BB4A    call        kernel32.GetProcAddress
 0040BB4F    mov         ebx,eax
 0040BB51    test        ebx,ebx
>0040BB53    je          0040BB81
 0040BB55    push        105
 0040BB5A    lea         eax,[ebp-46A]
 0040BB60    push        eax
 0040BB61    mov         eax,dword ptr [ebp-4]
 0040BB64    push        eax
 0040BB65    call        ebx
 0040BB67    test        eax,eax
>0040BB69    je          0040BB81
 0040BB6B    lea         ecx,[ebp-46A]
 0040BB71    mov         edx,dword ptr [ebp-8]
 0040BB74    mov         eax,dword ptr [ebp-4]
 0040BB77    call        StringCopy
>0040BB7C    jmp         0040BCD2
 0040BB81    mov         eax,dword ptr [ebp-4]
 0040BB84    cmp         word ptr [eax],5C
>0040BB88    jne         0040BBC5
 0040BB8A    mov         eax,dword ptr [ebp-4]
 0040BB8D    cmp         word ptr [eax+2],5C
>0040BB92    jne         0040BCD2
 0040BB98    mov         eax,dword ptr [ebp-4]
 0040BB9B    add         eax,4
 0040BB9E    call        FindBS
 0040BBA3    mov         esi,eax
 0040BBA5    cmp         word ptr [esi],0
>0040BBA9    je          0040BCD2
 0040BBAF    lea         eax,[esi+2]
 0040BBB2    call        FindBS
 0040BBB7    mov         esi,eax
 0040BBB9    cmp         word ptr [esi],0
>0040BBBD    je          0040BCD2
>0040BBC3    jmp         0040BBCB
 0040BBC5    mov         esi,dword ptr [ebp-4]
 0040BBC8    add         esi,4
 0040BBCB    mov         ebx,esi
 0040BBCD    sub         ebx,dword ptr [ebp-4]
 0040BBD0    sar         ebx,1
>0040BBD2    jns         0040BBD7
 0040BBD4    adc         ebx,0
 0040BBD7    lea         eax,[ebx+1]
 0040BBDA    cmp         eax,105
>0040BBDF    jg          0040BCD2
 0040BBE5    mov         edx,eax
 0040BBE7    lea         eax,[ebp-46A]
 0040BBED    mov         ecx,dword ptr [ebp-4]
 0040BBF0    call        StringCopy
>0040BBF5    jmp         0040BCB7
 0040BBFA    lea         eax,[esi+2]
 0040BBFD    call        FindBS
 0040BC02    mov         edi,eax
 0040BC04    mov         eax,edi
 0040BC06    sub         eax,esi
 0040BC08    sar         eax,1
>0040BC0A    jns         0040BC0F
 0040BC0C    adc         eax,0
 0040BC0F    add         eax,ebx
 0040BC11    inc         eax
 0040BC12    cmp         eax,105
>0040BC17    jg          0040BCD2
 0040BC1D    lea         eax,[ebp-46A]
 0040BC23    mov         edx,ebx
 0040BC25    add         edx,edx
 0040BC27    add         eax,edx
 0040BC29    mov         edx,edi
 0040BC2B    sub         edx,esi
 0040BC2D    sar         edx,1
>0040BC2F    jns         0040BC34
 0040BC31    adc         edx,0
 0040BC34    inc         edx
 0040BC35    mov         ecx,esi
 0040BC37    call        StringCopy
 0040BC3C    lea         eax,[ebp-260]
 0040BC42    push        eax
 0040BC43    lea         eax,[ebp-46A]
 0040BC49    push        eax
 0040BC4A    call        kernel32.FindFirstFileW
 0040BC4F    mov         dword ptr [ebp-10],eax
 0040BC52    cmp         dword ptr [ebp-10],0FFFFFFFF
>0040BC56    je          0040BCD2
 0040BC58    mov         eax,dword ptr [ebp-10]
 0040BC5B    push        eax
 0040BC5C    call        kernel32.FindClose
 0040BC61    lea         eax,[ebp-234]
 0040BC67    push        eax
 0040BC68    call        kernel32.lstrlenW
 0040BC6D    lea         edx,[ebx+1]
 0040BC70    add         eax,edx
 0040BC72    inc         eax
 0040BC73    cmp         eax,105
>0040BC78    jg          0040BCD2
 0040BC7A    mov         word ptr [ebp+ebx*2-46A],5C
 0040BC84    lea         eax,[ebp-46A]
 0040BC8A    mov         edx,ebx
 0040BC8C    add         edx,edx
 0040BC8E    add         eax,edx
 0040BC90    add         eax,2
 0040BC93    lea         ecx,[ebp-234]
 0040BC99    mov         edx,105
 0040BC9E    sub         edx,ebx
 0040BCA0    dec         edx
 0040BCA1    call        StringCopy
 0040BCA6    lea         eax,[ebp-234]
 0040BCAC    push        eax
 0040BCAD    call        kernel32.lstrlenW
 0040BCB2    inc         eax
 0040BCB3    add         ebx,eax
 0040BCB5    mov         esi,edi
 0040BCB7    cmp         word ptr [esi],0
>0040BCBB    jne         0040BBFA
 0040BCC1    lea         ecx,[ebp-46A]
 0040BCC7    mov         edx,dword ptr [ebp-8]
 0040BCCA    mov         eax,dword ptr [ebp-4]
 0040BCCD    call        StringCopy
 0040BCD2    mov         eax,dword ptr [ebp-0C]
 0040BCD5    pop         edi
 0040BCD6    pop         esi
 0040BCD7    pop         ebx
 0040BCD8    mov         esp,ebp
 0040BCDA    pop         ebp
 0040BCDB    ret
*}
end;

//0040BD0C
function InternalGetLocaleOverride(AppName:AnsiString):string;
begin
{*
 0040BD0C    push        ebp
 0040BD0D    mov         ebp,esp
 0040BD0F    add         esp,0FFFFFDE4
 0040BD15    push        ebx
 0040BD16    mov         ebx,edx
 0040BD18    mov         dword ptr [ebp-4],eax
 0040BD1B    mov         eax,dword ptr [ebp-4]
 0040BD1E    call        @UStrAddRef
 0040BD23    xor         eax,eax
 0040BD25    push        ebp
 0040BD26    push        40BF31
 0040BD2B    push        dword ptr fs:[eax]
 0040BD2E    mov         dword ptr fs:[eax],esp
 0040BD31    cmp         dword ptr [ebp-4],0
>0040BD35    jne         0040BD4C
 0040BD37    push        105
 0040BD3C    lea         eax,[ebp-21A]
 0040BD42    push        eax
 0040BD43    push        0
 0040BD45    call        kernel32.GetModuleFileNameW
>0040BD4A    jmp         0040BD66
 0040BD4C    mov         eax,dword ptr [ebp-4]
 0040BD4F    call        @UStrToPWChar
 0040BD54    mov         ecx,eax
 0040BD56    lea         eax,[ebp-21A]
 0040BD5C    mov         edx,105
 0040BD61    call        StringCopy
 0040BD66    cmp         word ptr [ebp-21A],0
>0040BD6E    je          0040BF1B
 0040BD74    xor         eax,eax
 0040BD76    mov         dword ptr [ebp-8],eax
 0040BD79    lea         eax,[ebp-0C]
 0040BD7C    push        eax
 0040BD7D    push        0F0019
 0040BD82    push        0
 0040BD84    push        40BF40
 0040BD89    push        80000001
 0040BD8E    call        advapi32.RegOpenKeyExW
 0040BD93    test        eax,eax
>0040BD95    je          0040BE35
 0040BD9B    lea         eax,[ebp-0C]
 0040BD9E    push        eax
 0040BD9F    push        0F0019
 0040BDA4    push        0
 0040BDA6    push        40BF40
 0040BDAB    push        80000002
 0040BDB0    call        advapi32.RegOpenKeyExW
 0040BDB5    test        eax,eax
>0040BDB7    je          0040BE35
 0040BDB9    lea         eax,[ebp-0C]
 0040BDBC    push        eax
 0040BDBD    push        0F0019
 0040BDC2    push        0
 0040BDC4    push        40BF7C
 0040BDC9    push        80000001
 0040BDCE    call        advapi32.RegOpenKeyExW
 0040BDD3    test        eax,eax
>0040BDD5    je          0040BE35
 0040BDD7    lea         eax,[ebp-0C]
 0040BDDA    push        eax
 0040BDDB    push        0F0019
 0040BDE0    push        0
 0040BDE2    push        40BF7C
 0040BDE7    push        80000002
 0040BDEC    call        advapi32.RegOpenKeyExW
 0040BDF1    test        eax,eax
>0040BDF3    je          0040BE35
 0040BDF5    lea         eax,[ebp-0C]
 0040BDF8    push        eax
 0040BDF9    push        0F0019
 0040BDFE    push        0
 0040BE00    push        40BFB0
 0040BE05    push        80000001
 0040BE0A    call        advapi32.RegOpenKeyExW
 0040BE0F    test        eax,eax
>0040BE11    je          0040BE35
 0040BE13    lea         eax,[ebp-0C]
 0040BE16    push        eax
 0040BE17    push        0F0019
 0040BE1C    push        0
 0040BE1E    push        40BFE4
 0040BE23    push        80000001
 0040BE28    call        advapi32.RegOpenKeyExW
 0040BE2D    test        eax,eax
>0040BE2F    jne         0040BF1B
 0040BE35    xor         eax,eax
 0040BE37    push        ebp
 0040BE38    push        40BF14
 0040BE3D    push        dword ptr fs:[eax]
 0040BE40    mov         dword ptr fs:[eax],esp
 0040BE43    lea         eax,[ebp-21A]
 0040BE49    mov         edx,105
 0040BE4E    call        ToLongPath
 0040BE53    lea         eax,[ebp-10]
 0040BE56    push        eax
 0040BE57    push        0
 0040BE59    push        0
 0040BE5B    push        0
 0040BE5D    lea         eax,[ebp-21A]
 0040BE63    push        eax
 0040BE64    mov         eax,dword ptr [ebp-0C]
 0040BE67    push        eax
 0040BE68    call        advapi32.RegQueryValueExW
 0040BE6D    test        eax,eax
>0040BE6F    jne         0040BEA4
 0040BE71    mov         eax,dword ptr [ebp-10]
 0040BE74    call        @GetMem
 0040BE79    mov         dword ptr [ebp-8],eax
 0040BE7C    lea         eax,[ebp-10]
 0040BE7F    push        eax
 0040BE80    mov         eax,dword ptr [ebp-8]
 0040BE83    push        eax
 0040BE84    push        0
 0040BE86    push        0
 0040BE88    lea         eax,[ebp-21A]
 0040BE8E    push        eax
 0040BE8F    mov         eax,dword ptr [ebp-0C]
 0040BE92    push        eax
 0040BE93    call        advapi32.RegQueryValueExW
 0040BE98    mov         eax,ebx
 0040BE9A    mov         edx,dword ptr [ebp-8]
 0040BE9D    call        @UStrFromPWChar
>0040BEA2    jmp         0040BEEF
 0040BEA4    lea         eax,[ebp-10]
 0040BEA7    push        eax
 0040BEA8    push        0
 0040BEAA    push        0
 0040BEAC    push        0
 0040BEAE    push        40C024
 0040BEB3    mov         eax,dword ptr [ebp-0C]
 0040BEB6    push        eax
 0040BEB7    call        advapi32.RegQueryValueExW
 0040BEBC    test        eax,eax
>0040BEBE    jne         0040BEEF
 0040BEC0    mov         eax,dword ptr [ebp-10]
 0040BEC3    call        @GetMem
 0040BEC8    mov         dword ptr [ebp-8],eax
 0040BECB    lea         eax,[ebp-10]
 0040BECE    push        eax
 0040BECF    mov         eax,dword ptr [ebp-8]
 0040BED2    push        eax
 0040BED3    push        0
 0040BED5    push        0
 0040BED7    push        40C024
 0040BEDC    mov         eax,dword ptr [ebp-0C]
 0040BEDF    push        eax
 0040BEE0    call        advapi32.RegQueryValueExW
 0040BEE5    mov         eax,ebx
 0040BEE7    mov         edx,dword ptr [ebp-8]
 0040BEEA    call        @UStrFromPWChar
 0040BEEF    xor         eax,eax
 0040BEF1    pop         edx
 0040BEF2    pop         ecx
 0040BEF3    pop         ecx
 0040BEF4    mov         dword ptr fs:[eax],edx
 0040BEF7    push        40BF1B
 0040BEFC    cmp         dword ptr [ebp-8],0
>0040BF00    je          0040BF0A
 0040BF02    mov         eax,dword ptr [ebp-8]
 0040BF05    call        @FreeMem
 0040BF0A    mov         eax,dword ptr [ebp-0C]
 0040BF0D    push        eax
 0040BF0E    call        advapi32.RegCloseKey
 0040BF13    ret
>0040BF14    jmp         @HandleFinally
>0040BF19    jmp         0040BEFC
 0040BF1B    xor         eax,eax
 0040BF1D    pop         edx
 0040BF1E    pop         ecx
 0040BF1F    pop         ecx
 0040BF20    mov         dword ptr fs:[eax],edx
 0040BF23    push        40BF38
 0040BF28    lea         eax,[ebp-4]
 0040BF2B    call        @UStrClr
 0040BF30    ret
>0040BF31    jmp         @HandleFinally
>0040BF36    jmp         0040BF28
 0040BF38    pop         ebx
 0040BF39    mov         esp,ebp
 0040BF3B    pop         ebp
 0040BF3C    ret
*}
end;

//0040C028
function GetLocaleOverride(const AppName:AnsiString):string;
begin
{*
 0040C028    push        ebp
 0040C029    mov         ebp,esp
 0040C02B    push        0
 0040C02D    push        ebx
 0040C02E    push        esi
 0040C02F    mov         ebx,edx
 0040C031    mov         esi,eax
 0040C033    xor         eax,eax
 0040C035    push        ebp
 0040C036    push        40C07F
 0040C03B    push        dword ptr fs:[eax]
 0040C03E    mov         dword ptr fs:[eax],esp
 0040C041    cmp         dword ptr ds:[79EC10],0
>0040C048    jne         0040C05C
 0040C04A    lea         edx,[ebp-4]
 0040C04D    mov         eax,esi
 0040C04F    call        InternalGetLocaleOverride
 0040C054    mov         eax,dword ptr [ebp-4]
 0040C057    call        SetLocaleOverride
 0040C05C    mov         eax,ebx
 0040C05E    mov         edx,dword ptr ds:[79EC10]
 0040C064    call        @UStrFromPWChar
 0040C069    xor         eax,eax
 0040C06B    pop         edx
 0040C06C    pop         ecx
 0040C06D    pop         ecx
 0040C06E    mov         dword ptr fs:[eax],edx
 0040C071    push        40C086
 0040C076    lea         eax,[ebp-4]
 0040C079    call        @UStrClr
 0040C07E    ret
>0040C07F    jmp         @HandleFinally
>0040C084    jmp         0040C076
 0040C086    pop         esi
 0040C087    pop         ebx
 0040C088    pop         ecx
 0040C089    pop         ebp
 0040C08A    ret
*}
end;

//0040C08C
procedure SetLocaleOverride(const NewPreferredLanguages:AnsiString);
begin
{*
 0040C08C    push        ebx
 0040C08D    push        esi
 0040C08E    push        edi
 0040C08F    mov         esi,eax
 0040C091    cmp         dword ptr ds:[79EC10],0
>0040C098    je          0040C0A4
 0040C09A    mov         eax,[0079EC10]
 0040C09F    call        @FreeMem
 0040C0A4    mov         eax,esi
 0040C0A6    test        eax,eax
>0040C0A8    je          0040C0AF
 0040C0AA    sub         eax,4
 0040C0AD    mov         eax,dword ptr [eax]
 0040C0AF    mov         ebx,eax
 0040C0B1    test        ebx,ebx
>0040C0B3    jle         0040C0DC
 0040C0B5    inc         ebx
 0040C0B6    mov         edi,ebx
 0040C0B8    add         edi,edi
 0040C0BA    mov         eax,edi
 0040C0BC    call        @GetMem
 0040C0C1    mov         [0079EC10],eax
 0040C0C6    mov         eax,esi
 0040C0C8    call        @UStrToPWChar
 0040C0CD    mov         edx,dword ptr ds:[79EC10]
 0040C0D3    mov         ecx,edi
 0040C0D5    call        Move
>0040C0DA    jmp         0040C0E3
 0040C0DC    xor         eax,eax
 0040C0DE    mov         [0079EC10],eax
 0040C0E3    pop         edi
 0040C0E4    pop         esi
 0040C0E5    pop         ebx
 0040C0E6    ret
*}
end;

//0040C0E8
function ResouceDLLExists(S:AnsiString):Boolean;
begin
{*
 0040C0E8    push        ebp
 0040C0E9    mov         ebp,esp
 0040C0EB    add         esp,0FFFFFDAC
 0040C0F1    push        ebx
 0040C0F2    mov         dword ptr [ebp-4],eax
 0040C0F5    mov         eax,dword ptr [ebp-4]
 0040C0F8    call        @UStrAddRef
 0040C0FD    xor         eax,eax
 0040C0FF    push        ebp
 0040C100    push        40C146
 0040C105    push        dword ptr fs:[eax]
 0040C108    mov         dword ptr fs:[eax],esp
 0040C10B    lea         eax,[ebp-254]
 0040C111    push        eax
 0040C112    mov         eax,dword ptr [ebp-4]
 0040C115    call        @UStrToPWChar
 0040C11A    push        eax
 0040C11B    call        kernel32.FindFirstFileW
 0040C120    cmp         eax,0FFFFFFFF
 0040C123    setne       bl
 0040C126    test        bl,bl
>0040C128    je          0040C130
 0040C12A    push        eax
 0040C12B    call        kernel32.FindClose
 0040C130    xor         eax,eax
 0040C132    pop         edx
 0040C133    pop         ecx
 0040C134    pop         ecx
 0040C135    mov         dword ptr fs:[eax],edx
 0040C138    push        40C14D
 0040C13D    lea         eax,[ebp-4]
 0040C140    call        @UStrClr
 0040C145    ret
>0040C146    jmp         @HandleFinally
>0040C14B    jmp         0040C13D
 0040C14D    mov         eax,ebx
 0040C14F    pop         ebx
 0040C150    mov         esp,ebp
 0040C152    pop         ebp
 0040C153    ret
*}
end;

//0040C154
function LoadLanguageList(FileNameBody:AnsiString; List:AnsiString):string;
begin
{*
 0040C154    push        ebp
 0040C155    mov         ebp,esp
 0040C157    add         esp,0FFFFFFF4
 0040C15A    push        ebx
 0040C15B    push        esi
 0040C15C    push        edi
 0040C15D    xor         ebx,ebx
 0040C15F    mov         dword ptr [ebp-0C],ebx
 0040C162    mov         edi,ecx
 0040C164    mov         dword ptr [ebp-8],edx
 0040C167    mov         dword ptr [ebp-4],eax
 0040C16A    mov         eax,dword ptr [ebp-4]
 0040C16D    call        @UStrAddRef
 0040C172    mov         eax,dword ptr [ebp-8]
 0040C175    call        @UStrAddRef
 0040C17A    xor         eax,eax
 0040C17C    push        ebp
 0040C17D    push        40C20F
 0040C182    push        dword ptr fs:[eax]
 0040C185    mov         dword ptr fs:[eax],esp
 0040C188    mov         eax,edi
 0040C18A    call        @UStrClr
 0040C18F    mov         ebx,1
>0040C194    jmp         0040C1E1
 0040C196    mov         esi,ebx
>0040C198    jmp         0040C19B
 0040C19A    inc         ebx
 0040C19B    mov         eax,dword ptr [ebp-8]
 0040C19E    call        @UStrLen
 0040C1A3    cmp         ebx,eax
>0040C1A5    jg          0040C1B2
 0040C1A7    mov         eax,dword ptr [ebp-8]
 0040C1AA    cmp         word ptr [eax+ebx*2-2],2C
>0040C1B0    jne         0040C19A
 0040C1B2    cmp         ebx,esi
>0040C1B4    je          0040C1E0
 0040C1B6    lea         eax,[ebp-0C]
 0040C1B9    push        eax
 0040C1BA    mov         ecx,ebx
 0040C1BC    sub         ecx,esi
 0040C1BE    mov         edx,esi
 0040C1C0    mov         eax,dword ptr [ebp-8]
 0040C1C3    call        @UStrCopy
 0040C1C8    mov         ecx,dword ptr [ebp-0C]
 0040C1CB    mov         eax,edi
 0040C1CD    mov         edx,dword ptr [ebp-4]
 0040C1D0    call        @UStrCat3
 0040C1D5    mov         eax,dword ptr [edi]
 0040C1D7    call        ResouceDLLExists
 0040C1DC    test        al,al
>0040C1DE    jne         0040C1F4
 0040C1E0    inc         ebx
 0040C1E1    mov         eax,dword ptr [ebp-8]
 0040C1E4    call        @UStrLen
 0040C1E9    cmp         ebx,eax
>0040C1EB    jle         0040C196
 0040C1ED    mov         eax,edi
 0040C1EF    call        @UStrClr
 0040C1F4    xor         eax,eax
 0040C1F6    pop         edx
 0040C1F7    pop         ecx
 0040C1F8    pop         ecx
 0040C1F9    mov         dword ptr fs:[eax],edx
 0040C1FC    push        40C216
 0040C201    lea         eax,[ebp-0C]
 0040C204    mov         edx,3
 0040C209    call        @UStrArrayClr
 0040C20E    ret
>0040C20F    jmp         @HandleFinally
>0040C214    jmp         0040C201
 0040C216    pop         edi
 0040C217    pop         esi
 0040C218    pop         ebx
 0040C219    mov         esp,ebp
 0040C21B    pop         ebp
 0040C21C    ret
*}
end;

//0040C220
function Load3LettersModule(FileNameBody:AnsiString):string;
begin
{*
 0040C220    push        ebp
 0040C221    mov         ebp,esp
 0040C223    add         esp,0FFFFFFEC
 0040C226    push        ebx
 0040C227    xor         ecx,ecx
 0040C229    mov         dword ptr [ebp-14],ecx
 0040C22C    mov         dword ptr [ebp-10],ecx
 0040C22F    mov         ebx,edx
 0040C231    mov         dword ptr [ebp-4],eax
 0040C234    mov         eax,dword ptr [ebp-4]
 0040C237    call        @UStrAddRef
 0040C23C    xor         eax,eax
 0040C23E    push        ebp
 0040C23F    push        40C2E0
 0040C244    push        dword ptr fs:[eax]
 0040C247    mov         dword ptr fs:[eax],esp
 0040C24A    push        4
 0040C24C    lea         eax,[ebp-0C]
 0040C24F    push        eax
 0040C250    push        3
 0040C252    call        kernel32.GetUserDefaultUILanguage
 0040C257    movzx       eax,ax
 0040C25A    push        eax
 0040C25B    call        kernel32.GetLocaleInfoW
 0040C260    lea         eax,[ebp-10]
 0040C263    lea         edx,[ebp-0C]
 0040C266    mov         ecx,4
 0040C26B    call        @UStrFromWArray
 0040C270    mov         ecx,dword ptr [ebp-10]
 0040C273    mov         eax,ebx
 0040C275    mov         edx,dword ptr [ebp-4]
 0040C278    call        @UStrCat3
 0040C27D    mov         eax,dword ptr [ebx]
 0040C27F    call        ResouceDLLExists
 0040C284    test        al,al
>0040C286    jne         0040C2BD
 0040C288    mov         word ptr [ebp-8],0
 0040C28E    lea         eax,[ebp-14]
 0040C291    lea         edx,[ebp-0C]
 0040C294    mov         ecx,4
 0040C299    call        @UStrFromWArray
 0040C29E    mov         ecx,dword ptr [ebp-14]
 0040C2A1    mov         eax,ebx
 0040C2A3    mov         edx,dword ptr [ebp-4]
 0040C2A6    call        @UStrCat3
 0040C2AB    mov         eax,dword ptr [ebx]
 0040C2AD    call        ResouceDLLExists
 0040C2B2    test        al,al
>0040C2B4    jne         0040C2BD
 0040C2B6    mov         eax,ebx
 0040C2B8    call        @UStrClr
 0040C2BD    xor         eax,eax
 0040C2BF    pop         edx
 0040C2C0    pop         ecx
 0040C2C1    pop         ecx
 0040C2C2    mov         dword ptr fs:[eax],edx
 0040C2C5    push        40C2E7
 0040C2CA    lea         eax,[ebp-14]
 0040C2CD    mov         edx,2
 0040C2D2    call        @UStrArrayClr
 0040C2D7    lea         eax,[ebp-4]
 0040C2DA    call        @UStrClr
 0040C2DF    ret
>0040C2E0    jmp         @HandleFinally
>0040C2E5    jmp         0040C2CA
 0040C2E7    pop         ebx
 0040C2E8    mov         esp,ebp
 0040C2EA    pop         ebp
 0040C2EB    ret
*}
end;

//0040C2EC
function GetResourceModuleName(HostAppName:AnsiString; ModuleName:AnsiString):string;
begin
{*
 0040C2EC    push        ebp
 0040C2ED    mov         ebp,esp
 0040C2EF    push        0
 0040C2F1    push        0
 0040C2F3    push        0
 0040C2F5    push        0
 0040C2F7    push        0
 0040C2F9    push        0
 0040C2FB    push        ebx
 0040C2FC    push        esi
 0040C2FD    mov         esi,ecx
 0040C2FF    mov         dword ptr [ebp-8],edx
 0040C302    mov         dword ptr [ebp-4],eax
 0040C305    mov         eax,dword ptr [ebp-4]
 0040C308    call        @UStrAddRef
 0040C30D    mov         eax,dword ptr [ebp-8]
 0040C310    call        @UStrAddRef
 0040C315    xor         eax,eax
 0040C317    push        ebp
 0040C318    push        40C403
 0040C31D    push        dword ptr fs:[eax]
 0040C320    mov         dword ptr fs:[eax],esp
 0040C323    mov         eax,esi
 0040C325    call        @UStrClr
 0040C32A    cmp         dword ptr [ebp-8],0
>0040C32E    je          0040C3E8
 0040C334    lea         eax,[ebp-10]
 0040C337    mov         edx,dword ptr [ebp-8]
 0040C33A    call        @UStrLAsg
 0040C33F    mov         eax,dword ptr [ebp-8]
 0040C342    test        eax,eax
>0040C344    je          0040C34B
 0040C346    sub         eax,4
 0040C349    mov         eax,dword ptr [eax]
 0040C34B    mov         ebx,eax
 0040C34D    cmp         ebx,1
>0040C350    jl          0040C377
 0040C352    mov         eax,dword ptr [ebp-8]
 0040C355    cmp         word ptr [eax+ebx*2-2],2E
>0040C35B    jne         0040C372
 0040C35D    lea         eax,[ebp-10]
 0040C360    push        eax
 0040C361    mov         ecx,ebx
 0040C363    mov         edx,1
 0040C368    mov         eax,dword ptr [ebp-8]
 0040C36B    call        @UStrCopy
>0040C370    jmp         0040C377
 0040C372    dec         ebx
 0040C373    test        ebx,ebx
>0040C375    jne         0040C352
 0040C377    lea         edx,[ebp-0C]
 0040C37A    mov         eax,dword ptr [ebp-4]
 0040C37D    call        GetLocaleOverride
 0040C382    cmp         dword ptr [ebp-0C],0
>0040C386    je          0040C397
 0040C388    mov         ecx,esi
 0040C38A    mov         edx,dword ptr [ebp-0C]
 0040C38D    mov         eax,dword ptr [ebp-10]
 0040C390    call        LoadLanguageList
>0040C395    jmp         0040C3E8
 0040C397    call        kernel32.GetUserDefaultUILanguage
 0040C39C    lea         edx,[ebp-14]
 0040C39F    call        GetUILanguages
 0040C3A4    mov         edx,dword ptr [ebp-14]
 0040C3A7    mov         ecx,esi
 0040C3A9    mov         eax,dword ptr [ebp-10]
 0040C3AC    call        LoadLanguageList
 0040C3B1    cmp         dword ptr [esi],0
>0040C3B4    jne         0040C3D9
 0040C3B6    cmp         byte ptr ds:[7C7B88],0
>0040C3BD    jne         0040C3D9
 0040C3BF    call        kernel32.GetSystemDefaultUILanguage
 0040C3C4    lea         edx,[ebp-18]
 0040C3C7    call        GetUILanguages
 0040C3CC    mov         edx,dword ptr [ebp-18]
 0040C3CF    mov         ecx,esi
 0040C3D1    mov         eax,dword ptr [ebp-10]
 0040C3D4    call        LoadLanguageList
 0040C3D9    cmp         dword ptr [esi],0
>0040C3DC    jne         0040C3E8
 0040C3DE    mov         edx,esi
 0040C3E0    mov         eax,dword ptr [ebp-10]
 0040C3E3    call        Load3LettersModule
 0040C3E8    xor         eax,eax
 0040C3EA    pop         edx
 0040C3EB    pop         ecx
 0040C3EC    pop         ecx
 0040C3ED    mov         dword ptr fs:[eax],edx
 0040C3F0    push        40C40A
 0040C3F5    lea         eax,[ebp-18]
 0040C3F8    mov         edx,6
 0040C3FD    call        @UStrArrayClr
 0040C402    ret
>0040C403    jmp         @HandleFinally
>0040C408    jmp         0040C3F5
 0040C40A    pop         esi
 0040C40B    pop         ebx
 0040C40C    mov         esp,ebp
 0040C40E    pop         ebp
 0040C40F    ret
*}
end;

//0040C410
function LoadResourceModule(ModuleName:PWideChar; CheckOwner:Boolean):Cardinal;
begin
{*
 0040C410    push        ebp
 0040C411    mov         ebp,esp
 0040C413    add         esp,0FFFFFDE8
 0040C419    push        ebx
 0040C41A    push        esi
 0040C41B    xor         ecx,ecx
 0040C41D    mov         dword ptr [ebp-214],ecx
 0040C423    mov         dword ptr [ebp-218],ecx
 0040C429    mov         dword ptr [ebp-4],ecx
 0040C42C    mov         esi,eax
 0040C42E    xor         eax,eax
 0040C430    push        ebp
 0040C431    push        40C4CA
 0040C436    push        dword ptr fs:[eax]
 0040C439    mov         dword ptr fs:[eax],esp
 0040C43C    xor         ebx,ebx
 0040C43E    push        105
 0040C443    lea         eax,[ebp-20E]
 0040C449    push        eax
 0040C44A    push        0
 0040C44C    call        kernel32.GetModuleFileNameW
 0040C451    lea         eax,[ebp-214]
 0040C457    mov         edx,esi
 0040C459    call        @UStrFromPWChar
 0040C45E    mov         eax,dword ptr [ebp-214]
 0040C464    push        eax
 0040C465    lea         eax,[ebp-218]
 0040C46B    lea         edx,[ebp-20E]
 0040C471    mov         ecx,105
 0040C476    call        @UStrFromWArray
 0040C47B    mov         eax,dword ptr [ebp-218]
 0040C481    lea         ecx,[ebp-4]
 0040C484    pop         edx
 0040C485    call        GetResourceModuleName
 0040C48A    cmp         dword ptr [ebp-4],0
>0040C48E    je          0040C4A4
 0040C490    push        2
 0040C492    push        0
 0040C494    mov         eax,dword ptr [ebp-4]
 0040C497    call        @UStrToPWChar
 0040C49C    push        eax
 0040C49D    call        kernel32.LoadLibraryExW
 0040C4A2    mov         ebx,eax
 0040C4A4    xor         eax,eax
 0040C4A6    pop         edx
 0040C4A7    pop         ecx
 0040C4A8    pop         ecx
 0040C4A9    mov         dword ptr fs:[eax],edx
 0040C4AC    push        40C4D1
 0040C4B1    lea         eax,[ebp-218]
 0040C4B7    mov         edx,2
 0040C4BC    call        @UStrArrayClr
 0040C4C1    lea         eax,[ebp-4]
 0040C4C4    call        @UStrClr
 0040C4C9    ret
>0040C4CA    jmp         @HandleFinally
>0040C4CF    jmp         0040C4B1
 0040C4D1    mov         eax,ebx
 0040C4D3    pop         esi
 0040C4D4    pop         ebx
 0040C4D5    mov         esp,ebp
 0040C4D7    pop         ebp
 0040C4D8    ret
*}
end;

//0040C4DC
procedure sub_0040C4DC;
begin
{*
 0040C4DC    call        AddModuleUnloadProc
 0040C4E1    ret
*}
end;

//0040C4E4
procedure sub_0040C4E4;
begin
{*
 0040C4E4    call        RemoveModuleUnloadProc
 0040C4E9    ret
*}
end;

//0040C4EC
procedure AddModuleUnloadProc(Proc:TModuleUnloadProcLW);
begin
{*
 0040C4EC    push        ebx
 0040C4ED    mov         ebx,eax
 0040C4EF    mov         eax,8
 0040C4F4    call        @GetMem
 0040C4F9    mov         edx,dword ptr ds:[79E040]
 0040C4FF    mov         dword ptr [eax],edx
 0040C501    mov         dword ptr [eax+4],ebx
 0040C504    mov         [0079E040],eax
 0040C509    pop         ebx
 0040C50A    ret
*}
end;

//0040C50C
procedure RemoveModuleUnloadProc(Proc:TModuleUnloadProcLW);
begin
{*
 0040C50C    push        ebx
 0040C50D    push        esi
 0040C50E    push        edi
 0040C50F    push        ebp
 0040C510    mov         ebp,eax
 0040C512    mov         edi,dword ptr ds:[79E040]
 0040C518    test        edi,edi
>0040C51A    je          0040C538
 0040C51C    mov         eax,dword ptr [edi+4]
 0040C51F    cmp         eax,ebp
>0040C521    jne         0040C538
 0040C523    mov         eax,[0079E040]
 0040C528    mov         eax,dword ptr [eax]
 0040C52A    mov         [0079E040],eax
 0040C52F    mov         eax,edi
 0040C531    call        @FreeMem
>0040C536    jmp         0040C560
 0040C538    mov         ebx,edi
 0040C53A    test        ebx,ebx
>0040C53C    je          0040C560
 0040C53E    mov         esi,dword ptr [ebx]
 0040C540    test        esi,esi
>0040C542    je          0040C55A
 0040C544    mov         eax,dword ptr [esi+4]
 0040C547    cmp         eax,ebp
>0040C549    jne         0040C55A
 0040C54B    mov         edi,esi
 0040C54D    mov         eax,dword ptr [esi]
 0040C54F    mov         dword ptr [ebx],eax
 0040C551    mov         eax,edi
 0040C553    call        @FreeMem
>0040C558    jmp         0040C560
 0040C55A    mov         ebx,dword ptr [ebx]
 0040C55C    test        ebx,ebx
>0040C55E    jne         0040C53E
 0040C560    pop         ebp
 0040C561    pop         edi
 0040C562    pop         esi
 0040C563    pop         ebx
 0040C564    ret
*}
end;

//0040C568
procedure NotifyModuleUnload(HInstance:Cardinal);
begin
{*
 0040C568    push        ebp
 0040C569    mov         ebp,esp
 0040C56B    add         esp,0FFFFFFF8
 0040C56E    push        ebx
 0040C56F    push        esi
 0040C570    push        edi
 0040C571    mov         dword ptr [ebp-4],eax
 0040C574    mov         eax,[0079E040]
 0040C579    mov         dword ptr [ebp-8],eax
 0040C57C    cmp         dword ptr [ebp-8],0
>0040C580    je          0040C5BB
 0040C582    xor         eax,eax
 0040C584    push        ebp
 0040C585    push        40C5A3
 0040C58A    push        dword ptr fs:[eax]
 0040C58D    mov         dword ptr fs:[eax],esp
 0040C590    mov         ebx,dword ptr [ebp-8]
 0040C593    mov         eax,dword ptr [ebp-4]
 0040C596    call        dword ptr [ebx+4]
 0040C599    xor         eax,eax
 0040C59B    pop         edx
 0040C59C    pop         ecx
 0040C59D    pop         ecx
 0040C59E    mov         dword ptr fs:[eax],edx
>0040C5A1    jmp         0040C5AD
>0040C5A3    jmp         @HandleAnyException
 0040C5A8    call        @DoneExcept
 0040C5AD    mov         eax,dword ptr [ebp-8]
 0040C5B0    mov         eax,dword ptr [eax]
 0040C5B2    mov         dword ptr [ebp-8],eax
 0040C5B5    cmp         dword ptr [ebp-8],0
>0040C5B9    jne         0040C582
 0040C5BB    pop         edi
 0040C5BC    pop         esi
 0040C5BD    pop         ebx
 0040C5BE    pop         ecx
 0040C5BF    pop         ecx
 0040C5C0    pop         ebp
 0040C5C1    ret
*}
end;

//0040C5C4
procedure RegisterModule(LibModule:PLibModule);
begin
{*
 0040C5C4    mov         edx,dword ptr ds:[79E03C];gvar_0079E03C
 0040C5CA    mov         dword ptr [eax],edx
 0040C5CC    mov         [0079E03C],eax;gvar_0079E03C
 0040C5D1    ret
*}
end;

//0040C5D4
procedure UnregisterModule(LibModule:PLibModule);
begin
{*
 0040C5D4    push        ebp
 0040C5D5    mov         ebp,esp
 0040C5D7    push        ecx
 0040C5D8    mov         dword ptr [ebp-4],eax
 0040C5DB    xor         edx,edx
 0040C5DD    push        ebp
 0040C5DE    push        40C638
 0040C5E3    push        dword ptr fs:[edx]
 0040C5E6    mov         dword ptr fs:[edx],esp
 0040C5E9    mov         eax,dword ptr [ebp-4]
 0040C5EC    mov         eax,dword ptr [eax+4]
 0040C5EF    call        NotifyModuleUnload
 0040C5F4    xor         eax,eax
 0040C5F6    pop         edx
 0040C5F7    pop         ecx
 0040C5F8    pop         ecx
 0040C5F9    mov         dword ptr fs:[eax],edx
 0040C5FC    push        40C63F
 0040C601    mov         eax,dword ptr [ebp-4]
 0040C604    cmp         eax,dword ptr ds:[79E03C];gvar_0079E03C
>0040C60A    jne         0040C618
 0040C60C    mov         eax,dword ptr [ebp-4]
 0040C60F    mov         eax,dword ptr [eax]
 0040C611    mov         [0079E03C],eax;gvar_0079E03C
>0040C616    jmp         0040C637
 0040C618    mov         eax,[0079E03C];gvar_0079E03C
 0040C61D    test        eax,eax
>0040C61F    je          0040C637
 0040C621    mov         edx,dword ptr [eax]
 0040C623    cmp         edx,dword ptr [ebp-4]
>0040C626    jne         0040C631
 0040C628    mov         edx,dword ptr [ebp-4]
 0040C62B    mov         edx,dword ptr [edx]
 0040C62D    mov         dword ptr [eax],edx
>0040C62F    jmp         0040C637
 0040C631    mov         eax,dword ptr [eax]
 0040C633    test        eax,eax
>0040C635    jne         0040C621
 0040C637    ret
>0040C638    jmp         @HandleFinally
>0040C63D    jmp         0040C601
 0040C63F    pop         ecx
 0040C640    pop         ebp
 0040C641    ret
*}
end;

//0040C644
function @IntfClear(var Dest:IInterface):Pointer;
begin
{*
 0040C644    mov         edx,dword ptr [eax]
 0040C646    test        edx,edx
>0040C648    je          0040C658
 0040C64A    mov         dword ptr [eax],0
 0040C650    push        eax
 0040C651    push        edx
 0040C652    mov         eax,dword ptr [edx]
 0040C654    call        dword ptr [eax+8]
 0040C657    pop         eax
 0040C658    ret
*}
end;

//0040C65C
procedure @IntfCopy(var Dest:IInterface; const Source:IInterface);
begin
{*
 0040C65C    test        edx,edx
>0040C65E    je          0040C679
 0040C660    push        edx
 0040C661    push        eax
 0040C662    mov         eax,dword ptr [edx]
 0040C664    push        edx
 0040C665    call        dword ptr [eax+4]
 0040C668    pop         eax
 0040C669    mov         ecx,dword ptr [eax]
 0040C66B    pop         dword ptr [eax]
 0040C66D    test        ecx,ecx
>0040C66F    jne         0040C672
 0040C671    ret
 0040C672    mov         eax,dword ptr [ecx]
 0040C674    push        ecx
 0040C675    call        dword ptr [eax+8]
 0040C678    ret
 0040C679    mov         ecx,dword ptr [eax]
 0040C67B    test        ecx,ecx
 0040C67D    mov         dword ptr [eax],edx
>0040C67F    je          0040C687
 0040C681    mov         eax,dword ptr [ecx]
 0040C683    push        ecx
 0040C684    call        dword ptr [eax+8]
 0040C687    ret
*}
end;

//0040C688
procedure @IntfCast(var Dest:IInterface; const Source:IInterface; const IID:TGUID);
begin
{*
 0040C688    test        edx,edx
>0040C68A    je          0040C644
 0040C690    push        edi
 0040C691    mov         edi,eax
 0040C693    push        0
 0040C695    push        esp
 0040C696    push        ecx
 0040C697    push        edx
 0040C698    mov         eax,dword ptr [edx]
 0040C69A    call        dword ptr [eax]
 0040C69C    test        eax,eax
>0040C69E    je          0040C6A7
 0040C6A0    mov         al,17
>0040C6A2    jmp         Error
 0040C6A7    mov         eax,dword ptr [edi]
 0040C6A9    test        eax,eax
>0040C6AB    je          0040C6B3
 0040C6AD    push        eax
 0040C6AE    mov         eax,dword ptr [eax]
 0040C6B0    call        dword ptr [eax+8]
 0040C6B3    pop         eax
 0040C6B4    mov         dword ptr [edi],eax
 0040C6B6    pop         edi
 0040C6B7    ret
*}
end;

//0040C6B8
procedure @IntfAddRef(const Dest:IInterface);
begin
{*
 0040C6B8    test        eax,eax
>0040C6BA    je          0040C6C2
 0040C6BC    push        eax
 0040C6BD    mov         eax,dword ptr [eax]
 0040C6BF    call        dword ptr [eax+4]
 0040C6C2    ret
*}
end;

//0040C6D0
procedure TInterfacedObject.AfterConstruction;
begin
{*
 0040C6D0    or          edx,0FFFFFFFF
 0040C6D3    lock xadd   dword ptr [eax+4],edx
 0040C6D8    add         edx,0FFFFFFFF
 0040C6DB    ret
*}
end;

//0040C6DC
procedure TInterfacedObject.BeforeDestruction;
begin
{*
 0040C6DC    test        dword ptr [eax+4],7FFFFFFF;TInterfacedObject...FRefCount:Integer
>0040C6E3    je          0040C6EC
 0040C6E5    mov         al,2
 0040C6E7    call        Error
 0040C6EC    ret
*}
end;

//0040C6F0
function TInterfacedObject.NewInstance:TObject;
begin
{*
 0040C6F0    call        TObject.NewInstance
 0040C6F5    mov         dword ptr [eax+4],1
 0040C6FC    ret
*}
end;

//0040C700
function TContainedObject.QueryInterface(const IID:TGUID; var Obj:Pointer):HRESULT; stdcall;
begin
{*
 0040C700    push        ebp
 0040C701    mov         ebp,esp
 0040C703    push        ebx
 0040C704    mov         ebx,dword ptr [ebp+8]
 0040C707    mov         ecx,dword ptr [ebp+10]
 0040C70A    mov         edx,dword ptr [ebp+0C]
 0040C70D    mov         eax,ebx
 0040C70F    call        TObject.GetInterface
 0040C714    test        al,al
>0040C716    je          0040C71C
 0040C718    xor         eax,eax
>0040C71A    jmp         0040C721
 0040C71C    mov         eax,80004002
 0040C721    pop         ebx
 0040C722    pop         ebp
 0040C723    ret         0C
*}
end;

//0040C728
function TInterfacedObject._AddRef:Integer; stdcall;
begin
{*
 0040C728    push        ebp
 0040C729    mov         ebp,esp
 0040C72B    mov         eax,dword ptr [ebp+8]
 0040C72E    mov         edx,1
 0040C733    lock xadd   dword ptr [eax+4],edx
 0040C738    add         edx,1
 0040C73B    mov         eax,edx
 0040C73D    pop         ebp
 0040C73E    ret         4
*}
end;

//0040C744
function TInterfacedObject._Release:Integer; stdcall;
begin
{*
 0040C744    push        ebp
 0040C745    mov         ebp,esp
 0040C747    push        ebx
 0040C748    push        esi
 0040C749    mov         eax,dword ptr [ebp+8]
 0040C74C    or          esi,0FFFFFFFF
 0040C74F    lock xadd   dword ptr [eax+4],esi
 0040C754    add         esi,0FFFFFFFF
 0040C757    test        esi,esi
>0040C759    jne         0040C77D
 0040C75B    mov         ecx,dword ptr [ebp+8]
 0040C75E    mov         edx,dword ptr [ecx+4]
 0040C761    mov         ebx,80000000
 0040C766    or          ebx,edx
 0040C768    mov         eax,edx
 0040C76A    lock cmpxchgdword ptr [ecx+4],ebx
 0040C76F    cmp         edx,eax
>0040C771    jne         0040C75B
 0040C773    mov         dl,1
 0040C775    mov         eax,dword ptr [ebp+8]
 0040C778    mov         ecx,dword ptr [eax]
 0040C77A    call        dword ptr [ecx-4]
 0040C77D    mov         eax,esi
 0040C77F    pop         esi
 0040C780    pop         ebx
 0040C781    pop         ebp
 0040C782    ret         4
*}
end;

//0040C788
function @CheckAutoResult(ResultCode:HRESULT):HRESULT;
begin
{*
 0040C788    push        ebp
 0040C789    mov         ebp,esp
 0040C78B    push        ecx
 0040C78C    mov         dword ptr [ebp-4],eax
 0040C78F    cmp         dword ptr [ebp-4],0
>0040C793    jge         0040C7B4
 0040C795    cmp         dword ptr ds:[7C5030],0;SafeCallErrorProc:TSafeCallErrorProc
>0040C79C    je          0040C7AA
 0040C79E    mov         edx,dword ptr [ebp+4]
 0040C7A1    mov         eax,dword ptr [ebp-4]
 0040C7A4    call        dword ptr ds:[7C5030]
 0040C7AA    mov         edx,dword ptr [ebp+4]
 0040C7AD    mov         al,18
 0040C7AF    call        ErrorAt
 0040C7B4    mov         eax,dword ptr [ebp-4]
 0040C7B7    pop         ecx
 0040C7B8    pop         ebp
 0040C7B9    ret
*}
end;

//0040C7BC
function UnicodeToUtf8(Dest:PAnsiChar; MaxDestBytes:Cardinal; Source:PWideChar; SourceChars:Cardinal):Cardinal;
begin
{*
 0040C7BC    push        ebp
 0040C7BD    mov         ebp,esp
 0040C7BF    push        ecx
 0040C7C0    push        ebx
 0040C7C1    push        esi
 0040C7C2    mov         esi,ecx
 0040C7C4    mov         dword ptr [ebp-4],edx
 0040C7C7    mov         ebx,eax
 0040C7C9    xor         eax,eax
 0040C7CB    test        esi,esi
>0040C7CD    je          0040C854
 0040C7D3    test        ebx,ebx
>0040C7D5    je          0040C83A
 0040C7D7    mov         eax,dword ptr [ebp+8]
 0040C7DA    push        eax
 0040C7DB    push        ebx
 0040C7DC    mov         eax,dword ptr [ebp-4]
 0040C7DF    push        eax
 0040C7E0    push        0
 0040C7E2    push        0
 0040C7E4    mov         ecx,esi
 0040C7E6    xor         edx,edx
 0040C7E8    mov         eax,0FDE9
 0040C7ED    call        LocaleCharsFromUnicode
 0040C7F2    test        eax,eax
>0040C7F4    jbe         0040C854
 0040C7F6    cmp         eax,dword ptr [ebp-4]
>0040C7F9    ja          0040C854
 0040C7FB    cmp         dword ptr [ebp+8],0FFFFFFFF
>0040C7FF    jne         0040C808
 0040C801    cmp         byte ptr [ebx+eax-1],0
>0040C806    je          0040C854
 0040C808    cmp         eax,dword ptr [ebp-4]
>0040C80B    jne         0040C832
>0040C80D    jmp         0040C810
 0040C80F    dec         eax
 0040C810    cmp         eax,1
>0040C813    jbe         0040C833
 0040C815    cmp         byte ptr [ebx+eax-1],7F
>0040C81A    jbe         0040C833
 0040C81C    test        byte ptr [ebx+eax-1],80
>0040C821    je          0040C833
 0040C823    movzx       edx,byte ptr [ebx+eax-1]
 0040C828    and         dl,0C0
 0040C82B    cmp         dl,0C0
>0040C82E    jne         0040C80F
>0040C830    jmp         0040C833
 0040C832    inc         eax
 0040C833    mov         byte ptr [ebx+eax-1],0
>0040C838    jmp         0040C854
 0040C83A    mov         eax,dword ptr [ebp+8]
 0040C83D    push        eax
 0040C83E    push        0
 0040C840    push        0
 0040C842    push        0
 0040C844    push        0
 0040C846    mov         ecx,esi
 0040C848    xor         edx,edx
 0040C84A    mov         eax,0FDE9
 0040C84F    call        LocaleCharsFromUnicode
 0040C854    pop         esi
 0040C855    pop         ebx
 0040C856    pop         ecx
 0040C857    pop         ebp
 0040C858    ret         4
*}
end;

//0040C85C
function Utf8ToUnicode(Dest:PWideChar; MaxDestChars:Cardinal; Source:PAnsiChar; SourceBytes:Cardinal):Cardinal;
begin
{*
 0040C85C    push        ebp
 0040C85D    mov         ebp,esp
 0040C85F    push        ecx
 0040C860    push        ebx
 0040C861    push        esi
 0040C862    mov         dword ptr [ebp-4],ecx
 0040C865    mov         esi,edx
 0040C867    mov         ebx,eax
 0040C869    xor         eax,eax
 0040C86B    cmp         dword ptr [ebp-4],0
>0040C86F    je          0040C8E3
 0040C871    test        ebx,ebx
>0040C873    je          0040C8CC
 0040C875    test        esi,esi
>0040C877    jbe         0040C8CC
 0040C879    mov         eax,dword ptr [ebp+8]
 0040C87C    push        eax
 0040C87D    push        ebx
 0040C87E    push        esi
 0040C87F    mov         ecx,dword ptr [ebp-4]
 0040C882    xor         edx,edx
 0040C884    mov         eax,0FDE9
 0040C889    call        UnicodeFromLocaleChars
 0040C88E    test        eax,eax
>0040C890    jbe         0040C8E3
 0040C892    cmp         esi,eax
>0040C894    jb          0040C8E3
 0040C896    cmp         dword ptr [ebp+8],0FFFFFFFF
>0040C89A    jne         0040C8A4
 0040C89C    cmp         word ptr [ebx+eax*2-2],0
>0040C8A2    je          0040C8E3
 0040C8A4    cmp         esi,eax
>0040C8A6    jne         0040C8C2
 0040C8A8    cmp         eax,1
>0040C8AB    jbe         0040C8C3
 0040C8AD    cmp         word ptr [ebx+eax*2-2],0DC00
>0040C8B4    jb          0040C8C3
 0040C8B6    cmp         word ptr [ebx+eax*2-2],0DFFF
>0040C8BD    ja          0040C8C3
 0040C8BF    dec         eax
>0040C8C0    jmp         0040C8C3
 0040C8C2    inc         eax
 0040C8C3    mov         word ptr [ebx+eax*2-2],0
>0040C8CA    jmp         0040C8E3
 0040C8CC    mov         eax,dword ptr [ebp+8]
 0040C8CF    push        eax
 0040C8D0    push        0
 0040C8D2    push        0
 0040C8D4    mov         ecx,dword ptr [ebp-4]
 0040C8D7    xor         edx,edx
 0040C8D9    mov         eax,0FDE9
 0040C8DE    call        UnicodeFromLocaleChars
 0040C8E3    pop         esi
 0040C8E4    pop         ebx
 0040C8E5    pop         ecx
 0040C8E6    pop         ebp
 0040C8E7    ret         4
*}
end;

//0040C8EC
function UTF8Encode(const US:AnsiString):RawByteString;
begin
{*
 0040C8EC    push        ebp
 0040C8ED    mov         ebp,esp
 0040C8EF    add         esp,0FFFFFFF4
 0040C8F2    push        ebx
 0040C8F3    push        esi
 0040C8F4    xor         ecx,ecx
 0040C8F6    mov         dword ptr [ebp-4],ecx
 0040C8F9    mov         dword ptr [ebp-0C],edx
 0040C8FC    mov         dword ptr [ebp-8],eax
 0040C8FF    xor         eax,eax
 0040C901    push        ebp
 0040C902    push        40C9BA
 0040C907    push        dword ptr fs:[eax]
 0040C90A    mov         dword ptr fs:[eax],esp
 0040C90D    mov         eax,dword ptr [ebp-0C]
 0040C910    call        @LStrClr
 0040C915    cmp         dword ptr [ebp-8],0
>0040C919    je          0040C9A4
 0040C91F    mov         eax,dword ptr [ebp-8]
 0040C922    test        eax,eax
>0040C924    je          0040C92B
 0040C926    sub         eax,4
 0040C929    mov         eax,dword ptr [eax]
 0040C92B    mov         ebx,eax
 0040C92D    lea         edx,[ebx+ebx*2]
 0040C930    lea         eax,[ebp-4]
 0040C933    mov         ecx,0FDE9
 0040C938    call        @LStrSetLength
 0040C93D    mov         esi,dword ptr [ebp-4]
 0040C940    test        esi,esi
>0040C942    je          0040C949
 0040C944    sub         esi,4
 0040C947    mov         esi,dword ptr [esi]
 0040C949    push        ebx
 0040C94A    mov         eax,dword ptr [ebp-8]
 0040C94D    call        @UStrToPWChar
 0040C952    push        eax
 0040C953    mov         eax,dword ptr [ebp-4]
 0040C956    call        @LStrToPChar
 0040C95B    lea         edx,[esi+1]
 0040C95E    pop         ecx
 0040C95F    call        UnicodeToUtf8
 0040C964    mov         ebx,eax
 0040C966    test        ebx,ebx
>0040C968    jle         0040C97C
 0040C96A    mov         edx,ebx
 0040C96C    dec         edx
 0040C96D    lea         eax,[ebp-4]
 0040C970    mov         ecx,0FDE9
 0040C975    call        @LStrSetLength
>0040C97A    jmp         0040C984
 0040C97C    lea         eax,[ebp-4]
 0040C97F    call        @LStrClr
 0040C984    mov         eax,dword ptr [ebp-0C]
 0040C987    mov         edx,dword ptr [ebp-4]
 0040C98A    call        @LStrAsg
 0040C98F    mov         eax,dword ptr [ebp-0C]
 0040C992    cmp         dword ptr [eax],0
>0040C995    je          0040C9A4
 0040C997    mov         eax,dword ptr [ebp-0C]
 0040C99A    mov         eax,dword ptr [eax]
 0040C99C    sub         eax,0C
 0040C99F    mov         word ptr [eax],0FDE9
 0040C9A4    xor         eax,eax
 0040C9A6    pop         edx
 0040C9A7    pop         ecx
 0040C9A8    pop         ecx
 0040C9A9    mov         dword ptr fs:[eax],edx
 0040C9AC    push        40C9C1
 0040C9B1    lea         eax,[ebp-4]
 0040C9B4    call        @LStrClr
 0040C9B9    ret
>0040C9BA    jmp         @HandleFinally
>0040C9BF    jmp         0040C9B1
 0040C9C1    pop         esi
 0040C9C2    pop         ebx
 0040C9C3    mov         esp,ebp
 0040C9C5    pop         ebp
 0040C9C6    ret
*}
end;

//0040C9C8
function UTF8EncodeToShortString(const US:AnsiString):ShortString;
begin
{*
 0040C9C8    push        ebx
 0040C9C9    push        esi
 0040C9CA    push        edi
 0040C9CB    mov         edi,edx
 0040C9CD    mov         esi,eax
 0040C9CF    mov         ebx,esi
 0040C9D1    test        ebx,ebx
>0040C9D3    je          0040C9DA
 0040C9D5    sub         ebx,4
 0040C9D8    mov         ebx,dword ptr [ebx]
 0040C9DA    push        ebx
 0040C9DB    mov         eax,esi
 0040C9DD    call        @UStrToPWChar
 0040C9E2    mov         ecx,eax
 0040C9E4    lea         eax,[edi+1]
 0040C9E7    mov         edx,0FF
 0040C9EC    call        UnicodeToUtf8
 0040C9F1    dec         eax
 0040C9F2    test        eax,eax
>0040C9F4    jge         0040C9F8
 0040C9F6    xor         eax,eax
 0040C9F8    mov         byte ptr [edi],al
 0040C9FA    pop         edi
 0040C9FB    pop         esi
 0040C9FC    pop         ebx
 0040C9FD    ret
*}
end;

//0040CA00
function UTF8Decode(const S:RawByteString):WideString;
begin
{*
 0040CA00    push        ebp
 0040CA01    mov         ebp,esp
 0040CA03    add         esp,0FFFFFFF8
 0040CA06    push        ebx
 0040CA07    push        esi
 0040CA08    xor         ecx,ecx
 0040CA0A    mov         dword ptr [ebp-4],ecx
 0040CA0D    mov         dword ptr [ebp-8],edx
 0040CA10    mov         esi,eax
 0040CA12    xor         eax,eax
 0040CA14    push        ebp
 0040CA15    push        40CA99
 0040CA1A    push        dword ptr fs:[eax]
 0040CA1D    mov         dword ptr fs:[eax],esp
 0040CA20    mov         eax,dword ptr [ebp-8]
 0040CA23    call        @WStrClr
 0040CA28    test        esi,esi
>0040CA2A    je          0040CA83
 0040CA2C    mov         eax,esi
 0040CA2E    test        eax,eax
>0040CA30    je          0040CA37
 0040CA32    sub         eax,4
 0040CA35    mov         eax,dword ptr [eax]
 0040CA37    mov         ebx,eax
 0040CA39    lea         eax,[ebp-4]
 0040CA3C    mov         edx,ebx
 0040CA3E    call        @WStrSetLength
 0040CA43    push        ebx
 0040CA44    mov         eax,esi
 0040CA46    call        @LStrToPChar
 0040CA4B    push        eax
 0040CA4C    mov         eax,dword ptr [ebp-4]
 0040CA4F    call        @WStrToPWChar
 0040CA54    lea         edx,[ebx+1]
 0040CA57    pop         ecx
 0040CA58    call        Utf8ToUnicode
 0040CA5D    mov         ebx,eax
 0040CA5F    test        ebx,ebx
>0040CA61    jle         0040CA70
 0040CA63    mov         edx,ebx
 0040CA65    dec         edx
 0040CA66    lea         eax,[ebp-4]
 0040CA69    call        @WStrSetLength
>0040CA6E    jmp         0040CA78
 0040CA70    lea         eax,[ebp-4]
 0040CA73    call        @WStrClr
 0040CA78    mov         eax,dword ptr [ebp-8]
 0040CA7B    mov         edx,dword ptr [ebp-4]
 0040CA7E    call        @WStrAsg
 0040CA83    xor         eax,eax
 0040CA85    pop         edx
 0040CA86    pop         ecx
 0040CA87    pop         ecx
 0040CA88    mov         dword ptr fs:[eax],edx
 0040CA8B    push        40CAA0
 0040CA90    lea         eax,[ebp-4]
 0040CA93    call        @WStrClr
 0040CA98    ret
>0040CA99    jmp         @HandleFinally
>0040CA9E    jmp         0040CA90
 0040CAA0    pop         esi
 0040CAA1    pop         ebx
 0040CAA2    pop         ecx
 0040CAA3    pop         ecx
 0040CAA4    pop         ebp
 0040CAA5    ret
*}
end;

//0040CAA8
function UTF8ToUnicodeString(const S:ShortString):string;
begin
{*
 0040CAA8    push        ebp
 0040CAA9    mov         ebp,esp
 0040CAAB    push        0
 0040CAAD    push        ebx
 0040CAAE    push        esi
 0040CAAF    push        edi
 0040CAB0    mov         edi,edx
 0040CAB2    mov         esi,eax
 0040CAB4    xor         eax,eax
 0040CAB6    push        ebp
 0040CAB7    push        40CB2A
 0040CABC    push        dword ptr fs:[eax]
 0040CABF    mov         dword ptr fs:[eax],esp
 0040CAC2    mov         eax,edi
 0040CAC4    call        @UStrClr
 0040CAC9    cmp         byte ptr [esi],0
>0040CACC    je          0040CB14
 0040CACE    movzx       ebx,byte ptr [esi]
 0040CAD1    lea         eax,[ebp-4]
 0040CAD4    mov         edx,ebx
 0040CAD6    call        @UStrSetLength
 0040CADB    push        ebx
 0040CADC    mov         eax,dword ptr [ebp-4]
 0040CADF    call        @UStrToPWChar
 0040CAE4    lea         ecx,[esi+1]
 0040CAE7    lea         edx,[ebx+1]
 0040CAEA    call        Utf8ToUnicode
 0040CAEF    mov         ebx,eax
 0040CAF1    test        ebx,ebx
>0040CAF3    jle         0040CB02
 0040CAF5    mov         edx,ebx
 0040CAF7    dec         edx
 0040CAF8    lea         eax,[ebp-4]
 0040CAFB    call        @UStrSetLength
>0040CB00    jmp         0040CB0A
 0040CB02    lea         eax,[ebp-4]
 0040CB05    call        @UStrClr
 0040CB0A    mov         eax,edi
 0040CB0C    mov         edx,dword ptr [ebp-4]
 0040CB0F    call        @UStrAsg
 0040CB14    xor         eax,eax
 0040CB16    pop         edx
 0040CB17    pop         ecx
 0040CB18    pop         ecx
 0040CB19    mov         dword ptr fs:[eax],edx
 0040CB1C    push        40CB31
 0040CB21    lea         eax,[ebp-4]
 0040CB24    call        @UStrClr
 0040CB29    ret
>0040CB2A    jmp         @HandleFinally
>0040CB2F    jmp         0040CB21
 0040CB31    pop         edi
 0040CB32    pop         esi
 0040CB33    pop         ebx
 0040CB34    pop         ecx
 0040CB35    pop         ebp
 0040CB36    ret
*}
end;

//0040CB38
function UTF8ToString(const S:RawByteString):string;
begin
{*
 0040CB38    push        ebx
 0040CB39    push        esi
 0040CB3A    mov         esi,edx
 0040CB3C    mov         ebx,eax
 0040CB3E    mov         edx,esi
 0040CB40    mov         eax,ebx
 0040CB42    call        UTF8ToUnicodeString
 0040CB47    pop         esi
 0040CB48    pop         ebx
 0040CB49    ret
*}
end;

//0040CB4C
function UTF8ToString(const S:array[$0..-$1] of Byte; const _Dv_:$0..-$1):string;
begin
{*
 0040CB4C    push        ebx
 0040CB4D    push        esi
 0040CB4E    add         esp,0FFFFFC00
 0040CB54    mov         esi,ecx
 0040CB56    mov         ebx,eax
 0040CB58    movzx       eax,byte ptr [ebx]
 0040CB5B    push        eax
 0040CB5C    lea         ecx,[ebx+1]
 0040CB5F    lea         eax,[esp+4]
 0040CB63    mov         edx,200
 0040CB68    call        Utf8ToUnicode
 0040CB6D    mov         ecx,eax
 0040CB6F    dec         ecx
 0040CB70    mov         edx,esp
 0040CB72    mov         eax,esi
 0040CB74    call        @UStrFromPWCharLen
 0040CB79    add         esp,400
 0040CB7F    pop         esi
 0040CB80    pop         ebx
 0040CB81    ret
*}
end;

//0040CB84
function LoadResString(ResStringRec:PResStringRec):string;
begin
{*
 0040CB84    push        ebx
 0040CB85    push        esi
 0040CB86    push        eax
 0040CB87    mov         eax,2
 0040CB8C    add         esp,0FFFFF004
 0040CB92    push        eax
 0040CB93    dec         eax
>0040CB94    jne         0040CB8C
 0040CB96    mov         eax,dword ptr [esp+2000]
 0040CB9D    add         esp,4
 0040CBA0    mov         esi,edx
 0040CBA2    mov         ebx,eax
 0040CBA4    test        ebx,ebx
>0040CBA6    je          0040CBE5
 0040CBA8    cmp         dword ptr [ebx+4],10000
>0040CBAF    jae         0040CBDB
 0040CBB1    push        1000
 0040CBB6    lea         eax,[esp+4]
 0040CBBA    push        eax
 0040CBBB    mov         eax,dword ptr [ebx+4]
 0040CBBE    push        eax
 0040CBBF    mov         eax,dword ptr [ebx]
 0040CBC1    mov         eax,dword ptr [eax]
 0040CBC3    call        FindResourceHInstance
 0040CBC8    push        eax
 0040CBC9    call        user32.LoadStringW
 0040CBCE    mov         ecx,eax
 0040CBD0    mov         edx,esp
 0040CBD2    mov         eax,esi
 0040CBD4    call        @UStrFromPWCharLen
>0040CBD9    jmp         0040CBE5
 0040CBDB    mov         eax,esi
 0040CBDD    mov         edx,dword ptr [ebx+4]
 0040CBE0    call        @UStrFromPWChar
 0040CBE5    add         esp,2000
 0040CBEB    pop         esi
 0040CBEC    pop         ebx
 0040CBED    ret
*}
end;

//0040CBF0
function LocaleCharsFromUnicode(CodePage:Cardinal; Flags:Cardinal; UnicodeStr:PWideChar; UnicodeStrLen:Integer; LocaleStr:PAnsiChar; LocaleStrLen:Integer; DefaultChar:PAnsiChar; UsedDefaultChar:PLongBool):Integer;
begin
{*
 0040CBF0    push        ebp
 0040CBF1    mov         ebp,esp
 0040CBF3    push        ebx
 0040CBF4    mov         ebx,dword ptr [ebp+8]
 0040CBF7    push        ebx
 0040CBF8    mov         ebx,dword ptr [ebp+0C]
 0040CBFB    push        ebx
 0040CBFC    mov         ebx,dword ptr [ebp+10]
 0040CBFF    push        ebx
 0040CC00    mov         ebx,dword ptr [ebp+14]
 0040CC03    push        ebx
 0040CC04    mov         ebx,dword ptr [ebp+18]
 0040CC07    push        ebx
 0040CC08    push        ecx
 0040CC09    push        edx
 0040CC0A    push        eax
 0040CC0B    call        kernel32.WideCharToMultiByte
 0040CC10    pop         ebx
 0040CC11    pop         ebp
 0040CC12    ret         14
*}
end;

//0040CC18
function UnicodeFromLocaleChars(CodePage:Cardinal; Flags:Cardinal; LocaleStr:PAnsiChar; LocaleStrLen:Integer; UnicodeStr:PWideChar; UnicodeStrLen:Integer):Integer;
begin
{*
 0040CC18    push        ebp
 0040CC19    mov         ebp,esp
 0040CC1B    push        ebx
 0040CC1C    mov         ebx,dword ptr [ebp+8]
 0040CC1F    push        ebx
 0040CC20    mov         ebx,dword ptr [ebp+0C]
 0040CC23    push        ebx
 0040CC24    mov         ebx,dword ptr [ebp+10]
 0040CC27    push        ebx
 0040CC28    push        ecx
 0040CC29    push        edx
 0040CC2A    push        eax
 0040CC2B    call        kernel32.MultiByteToWideChar
 0040CC30    pop         ebx
 0040CC31    pop         ebp
 0040CC32    ret         0C
*}
end;

//0040CC38
function GetCPUCount:Integer;
begin
{*
 0040CC38    add         esp,0FFFFFFDC
 0040CC3B    push        esp
 0040CC3C    call        kernel32.GetSystemInfo
 0040CC41    mov         eax,dword ptr [esp+14]
 0040CC45    add         esp,24
 0040CC48    ret
*}
end;

//0040CC4C
procedure SetUtf8CompareLocale;
begin
{*
 0040CC4C    call        kernel32.GetVersion
 0040CC51    mov         edx,0FF
 0040CC56    and         edx,eax
 0040CC58    and         eax,0FF00
 0040CC5D    shr         eax,8
 0040CC60    cmp         edx,5
>0040CC63    jne         0040CC6A
 0040CC65    cmp         eax,1
>0040CC68    jae         0040CC6F
 0040CC6A    cmp         edx,5
>0040CC6D    jbe         0040CC7A
 0040CC6F    mov         dword ptr ds:[7C5908],7F
 0040CC79    ret
 0040CC7A    mov         dword ptr ds:[7C5908],409
 0040CC84    ret
*}
end;

//0040CC88
function TGUID.&op_Equality(const Right:TGUID):Boolean;
begin
{*
 0040CC88    mov         ecx,dword ptr [eax]
 0040CC8A    cmp         ecx,dword ptr [edx]
>0040CC8C    jne         0040CCA6
 0040CC8E    mov         ecx,dword ptr [eax+4]
 0040CC91    cmp         ecx,dword ptr [edx+4]
>0040CC94    jne         0040CCA6
 0040CC96    mov         ecx,dword ptr [eax+8]
 0040CC99    cmp         ecx,dword ptr [edx+8]
>0040CC9C    jne         0040CCA6
 0040CC9E    mov         eax,dword ptr [eax+0C]
 0040CCA1    cmp         eax,dword ptr [edx+0C]
>0040CCA4    je          0040CCA9
 0040CCA6    xor         eax,eax
 0040CCA8    ret
 0040CCA9    mov         al,1
 0040CCAB    ret
*}
end;

Initialization
//0079C000
{*
 0079C000    sub         dword ptr ds:[7C5910],1
>0079C007    jae         0079C0B3
 0079C00D    push        400
 0079C012    call        kernel32.SetThreadLocale
 0079C017    call        InitializeMemoryManager
 0079C01C    call        InitializeLocaleData
 0079C021    mov         byte ptr ds:[79E00C],2
 0079C028    mov         dword ptr ds:[7C501C],403310
 0079C032    mov         dword ptr ds:[7C5020],403318
 0079C03C    mov         byte ptr ds:[7C505E],2
 0079C043    call        GetCPUCount
 0079C048    mov         [007C5064],eax;CPUCount:Integer
 0079C04D    mov         dword ptr ds:[7C5008],40A820
 0079C057    call        @InitializeControlWord
 0079C05C    call        @FpuInit
 0079C061    mov         word ptr ds:[7C506C],0D7B0
 0079C06A    mov         word ptr ds:[7C5348],0D7B0
 0079C073    mov         word ptr ds:[7C5624],0D7B0
 0079C07C    call        kernel32.GetCommandLineW
 0079C081    mov         [007C5050],eax
 0079C086    call        GetCmdShow
 0079C08B    mov         [007C504C],eax;gvar_007C504C
 0079C090    call        kernel32.GetACP
 0079C095    mov         [007C5900],eax;gvar_007C5900
 0079C09A    mov         dword ptr ds:[7C5904],4B0
 0079C0A4    call        kernel32.GetCurrentThreadId
 0079C0A9    mov         [007C5044],eax;MainThreadID:Cardinal
 0079C0AE    call        SetUtf8CompareLocale
 0079C0B3    ret
*}
Finalization
//0040CCAC
{*
 0040CCAC    inc         dword ptr ds:[7C5910]
>0040CCB2    jne         0040CCEF
 0040CCB4    mov         eax,7C5068
 0040CCB9    call        @Close
 0040CCBE    mov         eax,7C5344
 0040CCC3    call        @Close
 0040CCC8    mov         eax,7C5620
 0040CCCD    call        @Close
 0040CCD2    call        FinalizeLocaleDate
 0040CCD7    cmp         dword ptr ds:[79EC10],0
>0040CCDE    je          0040CCEA
 0040CCE0    mov         eax,[0079EC10]
 0040CCE5    call        @FreeMem
 0040CCEA    call        FinalizeMemoryManager
 0040CCEF    ret
*}
end.