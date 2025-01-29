//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit3;

interface

uses
  SysUtils, Classes, System;

type
  TIntegerDynArray = array of Integer;
//elSize = 4
//varType equivalent: varInteger;
  TDuplicates = (dupIgnore, dupAccept, dupError);
  TDirection = (FromBeginning, FromEnd);
  TSize = TSize = record//size=8
cx:Integer;//f0
cy:Integer;//f4
end;
//Methods:
Create(P:TSize);//0079EC18
Create(X:Integer;Y:Integer);//0040EBD4
&op_Equality(Lhs:TSize;Rhs:TSize):Boolean;//0079EC18
&op_Inequality(Lhs:TSize;Rhs:TSize):Boolean;//0079EC18
&op_Addition(Lhs:TSize;Rhs:TSize):TSize;//0079EC18
&op_Subtraction(Lhs:TSize;Rhs:TSize):TSize;//0079EC18
Add(Point:TSize):TSize;//0079EC18
Distance(P2:TSize):Double;//0079EC18
IsZero:Boolean;//0079EC18
Subtract(Point:TSize):TSize;//0079EC18;
  TSmallPoint = TSmallPoint = record//size=4
x:SmallInt;//f0
y:SmallInt;//f2
end;
//Methods:
Create(P:TSmallPoint);//0079EC18
Create(X:Word;Y:Word);//0079EC18
Create(X:SmallInt;Y:SmallInt);//0079EC18
&op_Equality(Lhs:TSmallPoint;Rhs:TSmallPoint):Boolean;//0079EC18
&op_Inequality(Lhs:TSmallPoint;Rhs:TSmallPoint):Boolean;//0079EC18
&op_Addition(Lhs:TSmallPoint;Rhs:TSmallPoint):TSmallPoint;//0079EC18
&op_Subtraction(Lhs:TSmallPoint;Rhs:TSmallPoint):TSmallPoint;//0079EC18
Add(Point:TSmallPoint):TSmallPoint;//0079EC18
Distance(P2:TSmallPoint):Double;//0079EC18
IsZero:Boolean;//0079EC18
Subtract(Point:TSmallPoint):TSmallPoint;//0079EC18;
  TPoint = TPoint = record//size=8
X:Integer;//f0
Y:Integer;//f4
end;
//Methods:
Create(P:TPoint);//0079EC18
Create(X:Integer;Y:Integer);//0040E7E4
&op_Equality(Lhs:TPoint;Rhs:TPoint):Boolean;//0040E7BC
&op_Inequality(Lhs:TPoint;Rhs:TPoint):Boolean;//0079EC18
&op_Addition(Lhs:TPoint;Rhs:TPoint):TPoint;//0079EC18
&op_Subtraction(Lhs:TPoint;Rhs:TPoint):TPoint;//0079EC18
&op_Implicit(Value:TSmallPoint):TPoint;//0040E7D0
&op_Explicit(Value:TPoint):TSmallPoint;//0079EC18
PointInCircle(Point:TPoint;Center:TPoint;Radius:Integer):Boolean;//0079EC18
Zero:TPoint;//0079EC18
Distance(P2:TPoint):Double;//0079EC18
SetLocation(X:Integer;Y:Integer);//0079EC18
SetLocation(P:TPoint);//0079EC18
Offset(DX:Integer;DY:Integer);//0079EC18
Offset(Point:TPoint);//0079EC18
Add(Point:TPoint):TPoint;//0079EC18
Subtract(Point:TPoint):TPoint;//0079EC18
IsZero:Boolean;//0079EC18
Angle(APoint:TPoint):Single;//0079EC18;
  TSplitRectType = (srLeft, srRight, srTop, srBottom);
  TRect = TRect = record//size=10
Left:Integer;//f0
Top:Integer;//f4
Right:Integer;//f8
Bottom:Integer;//fC
TopLeft:TPoint;//f0
BottomRight:TPoint;//f8
end;
//Methods:
Create(Origin:TPoint);//0079EC18
Create(Origin:TPoint;Width:Integer;Height:Integer);//0079EC18
Create(Left:Integer;Top:Integer;Right:Integer;Bottom:Integer);//0040E7EC
Create(P1:TPoint;P2:TPoint;Normalize:Boolean);//0079EC18
Create(R:TRect;Normalize:Boolean);//0079EC18
&op_Equality(Lhs:TRect;Rhs:TRect):Boolean;//0079EC18
&op_Inequality(Lhs:TRect;Rhs:TRect):Boolean;//0079EC18
&op_Addition(Lhs:TRect;Rhs:TRect):TRect;//0079EC18
&op_Multiply(Lhs:TRect;Rhs:TRect):TRect;//0079EC18
Empty:TRect;//0079EC18
NormalizeRect;//0079EC18
IsEmpty:Boolean;//0079EC18
Contains(Pt:TPoint):Boolean;//0040E844
Contains(R:TRect):Boolean;//0079EC18
IntersectsWith(R:TRect):Boolean;//0079EC18
Intersect(R1:TRect;R2:TRect):TRect;//0079EC18
Intersect(R:TRect);//0079EC18
Union(R1:TRect;R2:TRect):TRect;//0079EC18
Union(R:TRect);//0079EC18
Union(Points:TPoint):TRect;//0079EC18
Offset(DX:Integer;DY:Integer);//0079EC18
Offset(Point:TPoint);//0079EC18
SetLocation(X:Integer;Y:Integer);//0079EC18
SetLocation(Point:TPoint);//0079EC18
Inflate(DX:Integer;DY:Integer);//0079EC18
Inflate(DL:Integer;DT:Integer;DR:Integer;DB:Integer);//0079EC18
CenterPoint:TPoint;//0040E84C
SplitRect(SplitType:TSplitRectType;Size:Integer):TRect;//0079EC18
SplitRect(SplitType:TSplitRectType;Percent:Double):TRect;//0079EC18;
  TWaitResult = (wrSignaled, wrTimeout, wrAbandoned, wrError, wrIOCompletion);
  TMultiWaitEvent.TWaiterFlag = (Waiting, WaitAll);
  TMultiWaitEvent.TWaiterFlags = set of TMultiWaitEvent.TWaiterFlag;
  :TMultiWaitEvent.TMultiWaiter.:1 = :TMultiWaitEvent.TMultiWaiter.:1 = record//size=4
FiredEvent:Integer;//f0
EventCount:Integer;//f0
end;;
  TMultiWaitEvent.TMultiWaiter = class(TObject)
  published
    destructor TMultiWaiter.Destroy();//0040ECD0
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FCond:TObject;//f4
    FRefCount:Integer;//f8
    FFlags:TWaiterFlags;//fC
    FStatus:TMultiWaiter.:1;//f10
  end;
  TMultiWaitEvent.TWaitInfo = TMultiWaitEvent.TWaitInfo = record//size=8
FWaiter:TMultiWaitEvent.TMultiWaiter;//f0
FIndex:Integer;//f4
end;;
  TMultiWaitEvent = class(TObject)
  published
    destructor Destroy();//0040EBDC
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    destructor Destroy(); virtual;//0040EBDC
    procedure v0; virtual; abstract;//v0//00405554
    procedure Acquire; virtual; abstract;//v4//00405554
    procedure v8; virtual; abstract;//v8//00405554
    procedure vC; virtual; abstract;//vC//00405554
    procedure v10; virtual; abstract;//v10//00405554
    procedure v14; virtual; abstract;//v14//00405554
    procedure v18; virtual; abstract;//v18//00405554
    procedure v1C; virtual; abstract;//v1C//00405554
    procedure v20; virtual; abstract;//v20//00405554
    procedure v24; virtual; abstract;//v24//00405554
    procedure v28; virtual; abstract;//v28//00405554
    procedure v2C; virtual; abstract;//v2C//00405554
    procedure WaitFor; virtual; abstract;//v30//00405554
  end;
  TOpenOption = (ofReadOnly, ofOverwritePrompt, ofHideReadOnly, ofNoChangeDir, ofShowHelp, ofNoValidate, ofAllowMultiSelect, ofExtensionDifferent, ofPathMustExist, ofFileMustExist, ofCreatePrompt, ofShareAware, ofNoReadOnlyReturn, ofNoTestFileCreate, ofNoNetworkButton, ofNoLongNames, ofOldStyleDialog, ofNoDereferenceLinks, ofEnableIncludeNotify, ofEnableSizing, ofDontAddToRecent, ofForceShowHidden);
  TOpenOptions = set of TOpenOption;
  TOpenOptionEx = (ofExNoPlacesBar);
  TOpenOptionsEx = set of TOpenOptionEx;
  TPrintRange = (prAllPages, prSelection, prPageNums);
  TPrintDialogOption = (poPrintToFile, poPageNums, poSelection, poWarning, poHelp, poDisablePrintToFile);
  TPrintDialogOptions = set of TPrintDialogOption;
  TBorderIcon = (biSystemMenu, biMinimize, biMaximize, biHelp);
  TBorderIcons = set of TBorderIcon;
  TWindowState = (wsNormal, wsMinimized, wsMaximized);
  TEditCharCase = (ecNormal, ecUpperCase, ecLowerCase);
  TFontPitch = (fpDefault, fpVariable, fpFixed);
  TFontQuality = (fqDefault, fqDraft, fqProof, fqNonAntialiased, fqAntialiased, fqClearType, fqClearTypeNatural);
  TFontStyle = (fsBold, fsItalic, fsUnderline, fsStrikeOut);
  TFontStyles = set of TFontStyle;
  TFontStylesBase = set of TFontStyle;
  TCloseAction = (caNone, caHide, caFree, caMinimize);
  TMouseButton = (mbLeft, mbRight, mbMiddle);
  TMouseActivate = (maDefault, maActivate, maActivateAndEat, maNoActivate, maNoActivateAndEat);
  TDragMode = (dmManual, dmAutomatic);
  TDragState = (dsDragEnter, dsDragLeave, dsDragMove);
  TDragKind = (dkDrag, dkDock);
  TAnchorKind = (akLeft, akTop, akRight, akBottom);
  TAnchors = set of TAnchorKind;
  TScrollCode = (scLineUp, scLineDown, scPageUp, scPageDown, scPosition, scTrack, scTop, scBottom, scEndScroll);
  TPrinterState = (psNoHandle, psHandleIC, psHandleDC);
  TPrinterOrientation = (poPortrait, poLandscape);
  TPrinterCapability = (pcCopies, pcOrientation, pcCollation);
  TPrinterCapabilities = set of TPrinterCapability;
  TScrollStyle = (ssNone, ssHorizontal, ssVertical, ssBoth);
  _LIST_ENTRY = _LIST_ENTRY = record//size=8
Flink:PListEntry;//f0
Blink:PListEntry;//f4
end;;
  _RTL_CRITICAL_SECTION_DEBUG = _RTL_CRITICAL_SECTION_DEBUG = record//size=20
Type_18:Word;//f0
CreatorBackTraceIndex:Word;//f2
CriticalSection:PRTLCriticalSection;//f4
ProcessLocksList:_LIST_ENTRY;//f8
EntryCount:Cardinal;//f10
ContentionCount:Cardinal;//f14
Spare:?;//f18
end;;
  _RTL_CRITICAL_SECTION = _RTL_CRITICAL_SECTION = record//size=18
DebugInfo:PRTLCriticalSectionDebug;//f0
LockCount:Integer;//f4
RecursionCount:Integer;//f8
OwningThread:NativeUInt;//fC
LockSemaphore:NativeUInt;//f10
Reserved:NativeUInt;//f14
end;;
  _SECURITY_ATTRIBUTES = _SECURITY_ATTRIBUTES = record//size=C
nLength:Cardinal;//f0
lpSecurityDescriptor:Pointer;//f4
bInheritHandle:LongBool;//f8
end;;
  _FILETIME = _FILETIME = record//size=8
dwLowDateTime:Cardinal;//f0
dwHighDateTime:Cardinal;//f4
end;;
  _WIN32_FIND_DATAW = _WIN32_FIND_DATAW = record//size=250
dwFileAttributes:Cardinal;//f0
ftCreationTime:_FILETIME;//f4
ftLastAccessTime:_FILETIME;//fC
ftLastWriteTime:_FILETIME;//f14
nFileSizeHigh:Cardinal;//f1C
nFileSizeLow:Cardinal;//f20
dwReserved0:Cardinal;//f24
dwReserved1:Cardinal;//f28
cFileName:?;//f2C
cAlternateFileName:?;//f234
end;;
  tagBITMAP = tagBITMAP = record//size=18
bmType:Integer;//f0
bmWidth:Integer;//f4
bmHeight:Integer;//f8
bmWidthBytes:Integer;//fC
bmPlanes:Word;//f10
bmBitsPixel:Word;//f12
bmBits:Pointer;//f14
end;;
  tagBITMAPINFOHEADER = tagBITMAPINFOHEADER = record//size=28
biSize:Cardinal;//f0
biWidth:Integer;//f4
biHeight:Integer;//f8
biPlanes:Word;//fC
biBitCount:Word;//fE
biCompression:Cardinal;//f10
biSizeImage:Cardinal;//f14
biXPelsPerMeter:Integer;//f18
biYPelsPerMeter:Integer;//f1C
biClrUsed:Cardinal;//f20
biClrImportant:Cardinal;//f24
end;;
  _devicemodeW = _devicemodeW = record//size=DC
dmDeviceName:?;//f0
dmSpecVersion:Word;//f40
dmDriverVersion:Word;//f42
dmSize:Word;//f44
dmDriverExtra:Word;//f46
dmFields:Cardinal;//f48
dmOrientation:SmallInt;//f4C
dmPaperSize:SmallInt;//f4E
dmPaperLength:SmallInt;//f50
dmPaperWidth:SmallInt;//f52
dmScale:SmallInt;//f54
dmCopies:SmallInt;//f56
dmDefaultSource:SmallInt;//f58
dmPrintQuality:SmallInt;//f5A
dmColor:SmallInt;//f5C
dmDuplex:SmallInt;//f5E
dmYResolution:SmallInt;//f60
dmTTOption:SmallInt;//f62
dmCollate:SmallInt;//f64
dmFormName:?;//f66
dmLogPixels:Word;//fA6
dmBitsPerPel:Cardinal;//fA8
dmPelsWidth:Cardinal;//fAC
dmPelsHeight:Cardinal;//fB0
dmDisplayFlags:Cardinal;//fB4
dmDisplayFrequency:Cardinal;//fB8
dmICMMethod:Cardinal;//fBC
dmICMIntent:Cardinal;//fC0
dmMediaType:Cardinal;//fC4
dmDitherType:Cardinal;//fC8
dmICCManufacturer:Cardinal;//fCC
dmICCModel:Cardinal;//fD0
dmPanningWidth:Cardinal;//fD4
dmPanningHeight:Cardinal;//fD8
end;;
  tagDIBSECTION = tagDIBSECTION = record//size=54
dsBm:tagBITMAP;//f0
dsBmih:tagBITMAPINFOHEADER;//f18
dsBitfields:?;//f40
dshSection:NativeUInt;//f4C
dsOffset:Cardinal;//f50
end;;
  tagMSG = tagMSG = record//size=1C
hwnd:HWND;//f0
message:Cardinal;//f4
wParam:NativeUInt;//f8
lParam:NativeInt;//fC
time:Cardinal;//f10
pt:TPoint;//f14
end;;
  tagNMHDR = tagNMHDR = record//size=C
hwndFrom:HWND;//f0
idFrom:NativeUInt;//f4
code:Integer;//f8
end;;
  :1 = (odSelected, odGrayed, odDisabled, odChecked, odFocused, odDefault, odHotLight, odInactive, odNoAccel, odNoFocusRect, odReserved1, odReserved2, odComboBoxEdit);
  TOwnerDrawState = set of :1;
  GESTURECONFIG = GESTURECONFIG = record//size=C
dwID:Cardinal;//f0
dwWant:Cardinal;//f4
dwBlock:Cardinal;//f8
end;;
    function &op_Equality(const Rhs:TPoint):Boolean;//0040E7BC
    function &op_Implicit:TPoint;//0040E7D0
    //procedure sub_0040E7E4(?:?; ?:?; ?:?);//0040E7E4
    constructor Create(const Top:Integer; const Right:Integer; const Bottom:Integer);//0040E7EC
    function RectWidth(const Rect:TRect):Integer;//0040E804
    procedure sub_0040E80C(?:TRect; ?:Integer);//0040E80C
    function RectHeight(const Rect:TRect):Integer;//0040E814
    function PtInRect(const Rect:TRect; const P:TPoint):Boolean;//0040E820
    function Contains(const R:TRect):Boolean;//0040E844
    function CenterPoint(const Rect:TRect):TPoint;//0040E84C
    function SplitRect(const Rect:TRect; SplitType:TSplitRectType; Size:Integer):TRect;//0040E878
    function SplitRect(const Rect:TRect; SplitType:TSplitRectType; Percent:Double):TRect;//0040E8D0
    function CenteredRect(const SourceRect:TRect; const CenteredRect:TRect):TRect;//0040E974
    function EqualRect(const R1:TRect; const R2:TRect):Boolean;//0040E9F0
    function Rect(Left:Integer; Top:Integer; Right:Integer; Bottom:Integer):TRect;//0040EA14
    function GetWidth:Integer;//0040EA30
    function GetHeight:Integer;//0040EA38
    function SmallPoint(XY:LongWord):TSmallPoint;//0040EA44
    function IntersectRect(var Rect:TRect; const R1:TRect; const R2:TRect):Boolean;//0040EA5C
    function UnionRect(var Rect:TRect; const R1:TRect; const R2:TRect):Boolean;//0040EAD0
    procedure InflateRect(var R:TRect; const DX:Integer; const DY:Integer);//0040EB50
    function IsRectEmpty(const Rect:TRect):Boolean;//0040EB5C
    function OffsetRect(var R:TRect; DX:Integer; DY:Integer):Boolean;//0040EB74
    function Bounds(ALeft:Integer; ATop:Integer; AWidth:Integer; AHeight:Integer):TRect;//0040EB8C
    function CenterPoint:TPoint;//0040EBA8
    //procedure sub_0040EBD4(?:?; ?:?; ?:?);//0040EBD4
    procedure sub_0040EC08(?:TMultiWaitEvent);//0040EC08
    //function sub_0040EC48(?:TMultiWaitEvent; ?:?):?;//0040EC48
    function RegCloseKey:Integer; stdcall;//0041052C
    function RegCreateKeyExW(lpSubKey:PWideChar; Reserved:Types.DWORD; lpClass:PWideChar; dwOptions:Types.DWORD; samDesired:Types.DWORD; lpSecurityAttributes:PSecurityAttributes; var phkResult:HKEY; lpdwDisposition:PDWORD):LongInt; stdcall;//00410534
    procedure dll;//0041053C
    procedure $thunk_RegDeleteKeyExA;//0041054C
    function RegDeleteKeyEx(hKey:HKEY; lpSubKey:PWideChar; samDesired:Types.DWORD; Reserved:Types.DWORD):LongInt; stdcall;//0041055C
    function RegDeleteKeyW(lpSubKey:PWideChar):LongInt; stdcall;//00410564
    function RegDeleteValueW(lpValueName:PWideChar):LongInt; stdcall;//0041056C
    function RegEnumKeyExW(dwIndex:Types.DWORD; lpName:PWideChar; var lpcbName:Types.DWORD; lpReserved:Pointer; lpClass:PWideChar; lpcbClass:PDWORD; lpftLastWriteTime:PFileTime):LongInt; stdcall;//00410574
    function RegEnumValueW(dwIndex:Types.DWORD; lpValueName:PWideChar; var lpcbValueName:Types.DWORD; lpReserved:Pointer; lpType:PDWORD; lpData:Types.PByte; lpcbData:PDWORD):LongInt; stdcall;//0041057C
    function RegFlushKey:LongInt; stdcall;//00410584
    function RegOpenKeyExW(lpSubKey:PWideChar; ulOptions:Types.DWORD; samDesired:Types.DWORD; var phkResult:HKEY):LongInt; stdcall;//0041058C
    function RegQueryInfoKeyW(lpClass:PWideChar; lpcbClass:PDWORD; lpReserved:Pointer; lpcSubKeys:PDWORD; lpcbMaxSubKeyLen:PDWORD; lpcbMaxClassLen:PDWORD; lpcValues:PDWORD; lpcbMaxValueNameLen:PDWORD; lpcbMaxValueLen:PDWORD; lpcbSecurityDescriptor:PDWORD; lpftLastWriteTime:PFileTime):LongInt; stdcall;//00410594
    function RegQueryValueExW(lpValueName:PWideChar; lpReserved:Pointer; lpType:PDWORD; lpData:Types.PByte; lpcbData:PDWORD):LongInt; stdcall;//0041059C
    function RegSetValueExW(lpValueName:PWideChar; Reserved:Types.DWORD; dwType:Types.DWORD; lpData:Pointer; cbData:Types.DWORD):LongInt; stdcall;//004105A4
    function CloseHandle:LongBool; stdcall;//004105AC
    function CompareStringW(dwCmpFlags:Types.DWORD; lpString1:PWideChar; cchCount1:Integer; lpString2:PWideChar; cchCount2:Integer):Integer; stdcall;//004105B4
    function CompareStringA(dwCmpFlags:Types.DWORD; lpString1:MarshaledAString; cchCount1:Integer; lpString2:MarshaledAString; cchCount2:Integer):Integer; stdcall;//004105BC
    function CompareStringW(dwCmpFlags:Types.DWORD; lpString1:PWideChar; cchCount1:Integer; lpString2:PWideChar; cchCount2:Integer):Integer; stdcall;//004105C4
    procedure dll;//004105CC
    function CopyFileW(lpNewFileName:PWideChar; bFailIfExists:LongBool):LongBool; stdcall;//004105DC
    function CreateDirectoryW(lpSecurityAttributes:PSecurityAttributes):LongBool; stdcall;//004105E4
    function CreateEventW(bManualReset:LongBool; bInitialState:LongBool; lpName:PWideChar):THandle; stdcall;//004105EC
    function CreateFileW(dwDesiredAccess:Types.DWORD; dwShareMode:Types.DWORD; lpSecurityAttributes:PSecurityAttributes; dwCreationDisposition:Types.DWORD; dwFlagsAndAttributes:Types.DWORD; hTemplateFile:THandle):THandle; stdcall;//004105F4
    function CreateFileA(dwDesiredAccess:Types.DWORD; dwShareMode:Types.DWORD; lpSecurityAttributes:PSecurityAttributes; dwCreationDisposition:Types.DWORD; dwFlagsAndAttributes:Types.DWORD; hTemplateFile:THandle):THandle; stdcall;//004105FC
    function CreateSemaphoreA(lInitialCount:LongInt; lMaximumCount:LongInt; lpName:MarshaledAString):THandle; stdcall;//00410604
    function CreateThread(StackSize:NativeUInt; ThreadFunc:TThreadFunc; Parameter:Pointer; CreationFlags:Cardinal; var ThreadId:Cardinal):NativeUInt; stdcall;//0041060C
    procedure DeleteCriticalSection; stdcall;//00410614
    function DeleteFileW:LongBool; stdcall;//0041061C
    function DeviceIoControl(dwIoControlCode:Types.DWORD; lpInBuffer:Pointer; nInBufferSize:Types.DWORD; lpOutBuffer:Pointer; nOutBufferSize:Types.DWORD; var lpBytesReturned:Types.DWORD; lpOverlapped:POverlapped):LongBool; stdcall;//00410624
    procedure EnterCriticalSection; stdcall;//0041062C
    function EnumCalendarInfoW(Locale:Types.DWORD; Calendar:Types.DWORD; CalType:Types.DWORD):LongBool; stdcall;//00410634
    function FileTimeToDosDateTime(var lpFatDate:Word; var lpFatTime:Word):LongBool;//0041063C
    function FileTimeToLocalFileTime(var lpLocalFileTime:_FILETIME):LongBool;//00410644
    function FileTimeToSystemTime(var lpSystemTime:_SYSTEMTIME):LongBool; stdcall;//0041064C
    procedure FindClose;//00410654
    function FindFirstFileW(var lpFindFileData:_WIN32_FIND_DATAW):THandle; stdcall;//0041065C
    function FindFirstFileA(var lpFindFileData:_WIN32_FIND_DATAA):THandle; stdcall;//00410664
    function FindNextFileW(var lpFindFileData:_WIN32_FIND_DATAW):LongBool; stdcall;//0041066C
    function FindNextFileA(var lpFindFileData:_WIN32_FIND_DATAA):LongBool; stdcall;//00410674
    function FindResourceW(lpName:PWideChar; lpType:PWideChar):HRSRC; stdcall;//0041067C
    function FormatMessageW(lpSource:Pointer; dwMessageId:Types.DWORD; dwLanguageId:Types.DWORD; lpBuffer:PWideChar; nSize:Types.DWORD; Arguments:Pointer):DWORD; stdcall;//00410684
    function FreeLibrary:LongBool; stdcall;//0041068C
    function InterlockedCompareExchange(Exchange:Integer; Comparand:Integer):Integer; stdcall;//00410694
    function InterlockedDecrement:Integer; stdcall;//0041069C
    function InterlockedExchange(Value:Integer):Integer; stdcall;//004106A4
    function InterlockedIncrement:Integer; stdcall;//004106AC
    function FreeResource:LongBool; stdcall;//004106B4
    function GetACP:Cardinal;//004106BC
    function GetCPInfo(var lpCPInfo:_cpinfo):LongBool; stdcall;//004106C4
    function GetCPInfoExW(dwFlags:Types.DWORD; var lpCPInfoEx:_cpinfoExW):LongBool; stdcall;//004106CC
    function GetComputerNameW(var nSize:Types.DWORD):LongBool; stdcall;//004106D4
    function GetCurrentProcess:THandle;//004106DC
    function GetCurrentProcessId:DWORD;//004106E4
    function GetCurrentThread:THandle;//004106EC
    function GetCurrentThreadId:Cardinal;//004106F4
    function GetDateFormatW(dwFlags:Types.DWORD; lpDate:PSystemTime; lpFormat:PWideChar; lpDateStr:PWideChar; cchDate:Integer):Integer; stdcall;//004106FC
    function GetDiskFreeSpaceW(var lpSectorsPerCluster:Types.DWORD; var lpBytesPerSector:Types.DWORD; var lpNumberOfFreeClusters:Types.DWORD; var lpTotalNumberOfClusters:Types.DWORD):LongBool; stdcall;//00410704
    function GetEnvironmentVariableA(lpBuffer:MarshaledAString; nSize:Types.DWORD):DWORD; stdcall;//0041070C
    function GetExitCodeThread(var lpExitCode:Types.DWORD):LongBool; stdcall;//00410714
    function GetFileAttributesW:DWORD; stdcall;//0041071C
    function GetFileSize(lpFileSizeHigh:Pointer):Cardinal; stdcall;//00410724
    function GetFullPathNameW(nBufferLength:Types.DWORD; lpBuffer:PWideChar; var lpFilePart:PWideChar):DWORD; stdcall;//0041072C
    function GetLastError:Integer;//00410734
    procedure GetLocalTime; stdcall;//0041073C
    function GetLocaleInfoW(LCType:Types.DWORD; lpLCData:PWideChar; cchData:Integer):Integer; stdcall;//00410744
    function GetModuleFileNameW(lpFilename:PWideChar; nSize:Types.DWORD):DWORD; stdcall;//0041074C
    function GetModuleFileNameA(Filename:@PAnsiChr; Size:Integer):Integer; stdcall;//00410754
    function GetModuleHandleW:HINST; stdcall;//0041075C
    function GetModuleHandleA:HINST; stdcall;//00410764
    function GetPrivateProfileStringW(lpKeyName:PWideChar; lpDefault:PWideChar; lpReturnedString:PWideChar; nSize:Types.DWORD; lpFileName:PWideChar):DWORD; stdcall;//0041076C
    function GetProcAddress(lpProcName:MarshaledAString):Pointer; stdcall;//00410774
    function GetProcAddress(hModule:HMODULE; lpProcName:PWideChar):Pointer; stdcall;//0041077C
    function GetProcessHeap:THandle;//004107F0
    function GetStdHandle:THandle; stdcall;//004107F8
    procedure $thunk_ActivateActCtx;//00410800
    procedure sub_00410810;//00410810
    procedure GetSystemTime; stdcall;//00410818
    function GetTempFileNameW(lpPrefixString:PWideChar; uUnique:LongWord; lpTempFileName:PWideChar):LongWord; stdcall;//00410820
    function GetThreadLocale:Cardinal;//00410828
    function GetThreadPriority:Integer; stdcall;//00410830
    function GetTickCount:Cardinal;//00410838
    function GetVersion:DWORD;//00410840
    function GetVersionExW:LongBool; stdcall;//00410848
    function GetVersionExW:LongBool; stdcall;//00410850
    function GetVolumeInformationA(lpVolumeNameBuffer:MarshaledAString; nVolumeNameSize:Types.DWORD; lpVolumeSerialNumber:PDWORD; var lpMaximumComponentLength:Types.DWORD; var lpFileSystemFlags:Types.DWORD; lpFileSystemNameBuffer:MarshaledAString; nFileSystemNameSize:Types.DWORD):LongBool; stdcall;//00410858
    function GlobalAddAtomW:Word; stdcall;//00410860
    function GlobalAlloc(dwBytes:NativeUInt):THandle; stdcall;//00410868
    function GlobalDeleteAtom:Word; stdcall;//00410870
    function GlobalFindAtomW:Word; stdcall;//00410878
    function GlobalFree:THandle; stdcall;//00410880
    function GlobalLock:Pointer; stdcall;//00410888
    function GlobalSize:NativeUInt; stdcall;//00410890
    function GlobalUnlock:LongBool; stdcall;//00410898
    function HeapAlloc(dwFlags:Types.DWORD; dwBytes:NativeUInt):Pointer; stdcall;//004108A0
    function HeapCreate(dwInitialSize:NativeUInt; dwMaximumSize:NativeUInt):THandle; stdcall;//004108A8
    function HeapDestroy:LongBool; stdcall;//004108B0
    function HeapFree(Flags:Cardinal; Ptr:Pointer):LongBool; stdcall;//004108B8
    function HeapReAlloc(dwFlags:Types.DWORD; lpMem:Pointer; dwBytes:NativeUInt):Pointer; stdcall;//004108C0
    procedure InitializeCriticalSection; stdcall;//004108C8
    function IsValidLocale(dwFlags:Cardinal):LongBool; stdcall;//004108D0
    procedure LeaveCriticalSection; stdcall;//004108D8
    function LoadLibraryW:HMODULE; stdcall;//004108E0
    function LoadLibraryA:HMODULE; stdcall;//004108E8
    function LoadResource(hResInfo:HRSRC):THandle; stdcall;//004108F0
    function LocalAlloc(size:Integer):Pointer; stdcall;//004108F8
    function LocalFree:THandle; stdcall;//00410900
    function LockResource:Pointer; stdcall;//00410908
    function MoveFileW(lpNewFileName:PWideChar):LongBool; stdcall;//00410910
    function MulDiv(nNumerator:Integer; nDenominator:Integer):Integer; stdcall;//00410918
    function OpenSemaphoreA(bInheritHandle:LongBool; lpName:MarshaledAString):THandle; stdcall;//00410920
    procedure OutputDebugStringA; stdcall;//00410928
    function QueryPerformanceCounter:LongBool; stdcall;//00410930
    function QueryPerformanceFrequency:LongBool; stdcall;//00410938
    function ReadFile(var Buffer:void ; nNumberOfBytesToRead:Types.DWORD; var lpNumberOfBytesRead:Types.DWORD; lpOverlapped:POverlapped):LongBool; stdcall;//00410940
    function ReleaseSemaphore(lReleaseCount:LongInt; lpPreviousCount:Pointer):LongBool; stdcall;//00410948
    function RemoveDirectoryW:LongBool; stdcall;//00410950
    function ResetEvent:LongBool; stdcall;//00410958
    function ResumeThread:DWORD; stdcall;//00410960
    function SearchPathA(lpFileName:MarshaledAString; lpExtension:MarshaledAString; nBufferLength:Types.DWORD; lpBuffer:MarshaledAString; var lpFilePart:MarshaledAString):DWORD; stdcall;//00410968
    function SetEndOfFile:LongBool; stdcall;//00410970
    function SetErrorMode:LongWord; stdcall;//00410978
    function SetEvent:LongBool; stdcall;//00410980
    function SetFilePointer(lDistanceToMove:Integer; lpDistanceToMoveHigh:Pointer; dwMoveMethod:Cardinal):Cardinal; stdcall;//00410988
    procedure SetLastError; stdcall;//00410990
    function SetThreadLocale:LongBool; stdcall;//00410998
    function SetThreadPriority(nPriority:Integer):LongBool; stdcall;//004109A0
    function SizeofResource(hResInfo:HRSRC):DWORD; stdcall;//004109A8
    procedure Sleep; stdcall;//004109B0
    function SuspendThread:DWORD; stdcall;//004109B8
    procedure SwitchToThread;//004109C0
    procedure SystemTimeToFileTime(var Dest:TFileTime); stdcall;//004109C8
    function TerminateProcess(uExitCode:LongWord):LongBool; stdcall;//004109D0
    function TlsAlloc:DWORD;//004109D8
    function TlsSetValue(lpTlsValue:Pointer):LongBool; stdcall;//004109E0
    function VerifyVersionInfoW(dwTypeMask:Types.DWORD; dwlConditionMask:UInt64):LongBool; stdcall;//004109E8
    //function VerSetConditionMask:?;//004109F0
    function VirtualAlloc(dwSize:NativeUInt; flAllocationType:Types.DWORD; flProtect:Types.DWORD):Pointer; stdcall;//004109F8
    function VirtualFree(dwSize:NativeUInt; dwFreeType:Cardinal):LongBool; stdcall;//00410A00
    function VirtualProtect(dwSize:NativeUInt; flNewProtect:Types.DWORD; var OldProtect:Types.DWORD):LongBool; stdcall;//00410A08
    function VirtualQuery(var lpBuffer:TMemoryBasicInformation; dwLength:NativeUInt):NativeUInt; stdcall;//00410A10
    function VirtualQueryEx(lpAddress:Pointer; var lpBuffer:_MEMORY_BASIC_INFORMATION; dwLength:NativeUInt):NativeUInt; stdcall;//00410A18
    function WaitForMultipleObjectsEx(lpHandles:PWOHandleArray; bWaitAll:LongBool; dwMilliseconds:Types.DWORD; bAlertable:LongBool):DWORD; stdcall;//00410A20
    function WaitForSingleObject(dwMilliseconds:Types.DWORD):DWORD; stdcall;//00410A28
    function WideCharToMultiByte(dwFlags:Types.DWORD; lpWideCharStr:PWideChar; cchWideChar:Integer; lpMultiByteStr:MarshaledAString; cchMultiByte:Integer; lpDefaultChar:MarshaledAString; lpUsedDefaultChar:PBOOL):Integer; stdcall;//00410A30
    function WriteFile(const Buffer:void ; nNumberOfBytesToWrite:Types.DWORD; var lpNumberOfBytesWritten:Types.DWORD; lpOverlapped:POverlapped):LongBool; stdcall;//00410A38
    function WritePrivateProfileStringW(lpKeyName:PWideChar; lpString:PWideChar; lpFileName:PWideChar):LongBool; stdcall;//00410A40
    function lstrcmpW(lpString2:PWideChar):Integer; stdcall;//00410A48
    function GetFileVersionInfoW(dwHandle:Types.DWORD; dwLen:Types.DWORD; lpData:Pointer):LongBool; stdcall;//00410A50
    function GetFileVersionInfoSizeW(var lpdwHandle:Types.DWORD):DWORD; stdcall;//00410A58
    function VerQueryValueW(lpSubBlock:PWideChar; var lplpBuffer:Pointer; var puLen:LongWord):LongBool; stdcall;//00410A60
    procedure dll;//00410A68
    procedure $thunk_AlphaBlend;//00410A78
    function AlphaBlend(DC:HDC; p2:Integer; p3:Integer; p4:Integer; p5:Integer; DC6:HDC; p7:Integer; p8:Integer; p9:Integer; p10:Integer; p11:_BLENDFUNCTION):LongBool; stdcall;//00410A88
    function AngleArc(p2:Integer; p3:Integer; p4:Types.DWORD; p5:Single; p6:Single):LongBool; stdcall;//00410A90
    function Arc(left:Integer; top:Integer; right:Integer; bottom:Integer; startX:Integer; startY:Integer; endX:Integer; endY:Integer):LongBool; stdcall;//00410A98
    function ArcTo(RLeft:Integer; RTop:Integer; RRight:Integer; RBottom:Integer; X1:Integer; Y1:Integer; X2:Integer; Y2:Integer):LongBool; stdcall;//00410AA0
    function BitBlt(X:Integer; Y:Integer; Width:Integer; Height:Integer; SrcDC:HDC; XSrc:Integer; YSrc:Integer; Rop:Types.DWORD):LongBool; stdcall;//00410AA8
    function Chord(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer; X3:Integer; Y3:Integer; X4:Integer; Y4:Integer):LongBool; stdcall;//00410AB0
    function CopyEnhMetaFileW(p2:PWideChar):HENHMETAFILE; stdcall;//00410AB8
    function CreateBitmap(Height:Integer; Planes:LongInt; BitCount:LongInt; Bits:Pointer):HBITMAP; stdcall;//00410AC0
    function CreateBrushIndirect:HBRUSH; stdcall;//00410AC8
    function CreateCompatibleBitmap(Width:Integer; Height:Integer):HBITMAP; stdcall;//00410AD0
    function CreateCompatibleDC:HDC; stdcall;//00410AD8
    function CreateDCW(lpszDevice:PWideChar; lpszOutput:PWideChar; lpdvmInit:PDeviceModeW):HDC; stdcall;//00410AE0
    function CreateDIBSection(const p2:tagBITMAPINFO; p3:LongWord; var p4:Pointer; p5:THandle; p6:Types.DWORD):HBITMAP; stdcall;//00410AE8
    function CreateDIBitmap(var InfoHeader:tagBITMAPINFOHEADER; dwUsage:Types.DWORD; InitBits:Pointer; var InitInfo:tagBITMAPINFO; wUsage:LongWord):HBITMAP; stdcall;//00410AF0
    function CreateFontIndirectW:HFONT; stdcall;//00410AF8
    function CreateHalftonePalette:HPALETTE; stdcall;//00410B00
    function CreateICW(lpszDevice:PWideChar; lpszOutput:PWideChar; lpdvmInit:PDeviceModeW):HDC; stdcall;//00410B08
    function CreatePalette:HPALETTE;//00410B10
    function CreatePenIndirect:HPEN; stdcall;//00410B18
    function CreateRectRgn(p2:Integer; p3:Integer; p4:Integer):HRGN; stdcall;//00410B20
    function CreateSolidBrush:HBRUSH; stdcall;//00410B28
    function DeleteDC:LongBool; stdcall;//00410B30
    function DeleteEnhMetaFile:LongBool; stdcall;//00410B38
    function DeleteObject:LongBool; stdcall;//00410B40
    function Ellipse(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer):LongBool; stdcall;//00410B48
    function EndDoc:Integer; stdcall;//00410B50
    function EndPage:Integer; stdcall;//00410B58
    function EnumFontFamiliesExW(const p2:tagLOGFONTW; p3:Pointer; p4:IntPtr; p5:Types.DWORD):LongBool; stdcall;//00410B60
    function EnumFontsW(lpszFace:PWideChar; fntenmprc:Pointer; lParam:IntPtr):Integer; stdcall;//00410B68
    function ExcludeClipRect(LeftRect:Integer; TopRect:Integer; RightRect:Integer; BottomRect:Integer):Integer; stdcall;//00410B70
    function ExtCreatePen(Width:Types.DWORD; const Brush:tagLOGBRUSH; StyleCount:Types.DWORD; Style:Pointer):HPEN; stdcall;//00410B78
    function ExtFloodFill(X:Integer; Y:Integer; Color:Types.DWORD; FillType:LongWord):LongBool; stdcall;//00410B80
    function ExtTextOutW(X:Integer; Y:Integer; Dx:PInteger; Count:LongInt; const Str:UnicodeString; Rect:Types.PRect; Options:LongInt):LongBool;//00410B88
    function FrameRgn(hrgn:HRGN; hbr:HBRUSH; Width:Integer; Height:Integer):LongBool; stdcall;//00410B90
    function GdiFlush:LongBool;//00410B98
    function GetBitmapBits(Count:LongInt; Bits:Pointer):LongInt; stdcall;//00410BA0
    function GetBrushOrgEx(var lppt:Types.TPoint):LongBool; stdcall;//00410BA8
    function GetClipBox(var Rect:Types.TRect):Integer; stdcall;//00410BB0
    function GetCurrentPositionEx(Point:Types.PPoint):LongBool; stdcall;//00410BB8
    function GetDIBColorTable(p2:LongWord; p3:LongWord; var RGBQuadStructs:void ):LongWord; stdcall;//00410BC0
    function GetDIBits(Bitmap:HBITMAP; StartScan:LongWord; NumScans:LongWord; Bits:Pointer; var BitInfo:tagBITMAPINFO; Usage:LongWord):Integer; stdcall;//00410BC8
    function GetDeviceCaps(Index:Integer):Integer; stdcall;//00410BD0
    function GetEnhMetaFileBits(p2:LongWord; p3:Types.PByte):LongWord; stdcall;//00410BD8
    function GetEnhMetaFileDescriptionW(p2:LongWord; p3:PWideChar):LongWord; stdcall;//00410BE0
    function GetEnhMetaFileHeader(p2:LongWord; p3:PEnhMetaHeader):LongWord; stdcall;//00410BE8
    function GetEnhMetaFilePaletteEntries(p2:LongWord; p3:Pointer):LongWord; stdcall;//00410BF0
    function GetObjectW(p2:Integer; p3:Pointer):Integer; stdcall;//00410BF8
    function GetPaletteEntries(StartIndex:LongWord; NumEntries:LongWord; var PaletteEntries:void ):LongWord; stdcall;//00410C00
    function GetPixel(X:Integer; Y:Integer):DWORD; stdcall;//00410C08
    function GetRgnBox(var p2:Types.TRect):Integer; stdcall;//00410C10
    function GetStockObject:HGDIOBJ; stdcall;//00410C18
    function GetSystemPaletteEntries(StartIndex:LongWord; NumEntries:LongWord; var PaletteEntries:void ):LongWord; stdcall;//00410C20
    function GetTextExtentPoint32W(Str:PWideChar; Count:Integer; var Size:Types.TSize):LongBool; stdcall;//00410C28
    function GetTextExtentPointW(Str:PWideChar; Count:Integer; var Size:Types.TSize):LongBool; stdcall;//00410C30
    function GetTextMetricsW(var TM:tagTEXTMETRICW):LongBool; stdcall;//00410C38
    function GetWinMetaFileBits(p2:LongWord; p3:Types.PByte; p4:Integer; p5:HDC):LongWord; stdcall;//00410C40
    function GetWindowOrgEx(var Point:Types.TPoint):LongBool; stdcall;//00410C48
    procedure $thunk_AlphaDIBBlend;//00410C50
    procedure sub_00410C60;//00410C60
    function IntersectClipRect(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer):Integer; stdcall;//00410C68
    function LineTo(X:Integer; Y:Integer):LongBool; stdcall;//00410C70
    function MaskBlt(XDest:Integer; YDest:Integer; Width:Integer; Height:Integer; SrcDC:HDC; XScr:Integer; YScr:Integer; Mask:HBITMAP; xMask:Integer; yMask:Integer; Rop:Types.DWORD):LongBool; stdcall;//00410C78
    function MoveToEx(p2:Integer; p3:Integer; p4:Types.PPoint):LongBool; stdcall;//00410C80
    function PatBlt(X:Integer; Y:Integer; Width:Integer; Height:Integer; Rop:Types.DWORD):LongBool; stdcall;//00410C88
    function Pie(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer; X3:Integer; Y3:Integer; X4:Integer; Y4:Integer):LongBool; stdcall;//00410C90
    function PlayEnhMetaFile(p2:HENHMETAFILE; const p3:Types.TRect):LongBool; stdcall;//00410C98
    function PolyBezier(const Points:void ; Count:Types.DWORD):LongBool; stdcall;//00410CA0
    function PolyBezierTo(const Points:void ; Count:Types.DWORD):LongBool; stdcall;//00410CA8
    function PolyPolyline(const PointStructs:void ; const Points:void ; p4:Types.DWORD):LongBool; stdcall;//00410CB0
    function Polygon(const Points:void ; Count:Integer):LongBool; stdcall;//00410CB8
    function Polyline(const Points:void ; Count:Integer):LongBool; stdcall;//00410CC0
    function RealizePalette:LongWord; stdcall;//00410CC8
    function RectVisible(const Rect:Types.TRect):LongBool; stdcall;//00410CD0
    function Rectangle(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer):LongBool; stdcall;//00410CD8
    function RestoreDC(SavedDC:Integer):LongBool; stdcall;//00410CE0
    function RoundRect(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer; X3:Integer; Y3:Integer):LongBool; stdcall;//00410CE8
    function SaveDC:Integer; stdcall;//00410CF0
    function SelectClipRgn(Region:HRGN):Integer; stdcall;//00410CF8
    function SelectObject(p2:HGDIOBJ):HGDIOBJ; stdcall;//00410D00
    function SelectPalette(Palette:HPALETTE; ForceBackground:LongBool):HPALETTE; stdcall;//00410D08
    function SetAbortProc(lpAbortProc:TFNAbortProc):Integer; stdcall;//00410D10
    function SetBkColor(Color:Types.DWORD):DWORD; stdcall;//00410D18
    function SetBkMode(BkMode:Integer):Integer; stdcall;//00410D20
    function SetBrushOrgEx(X:Integer; Y:Integer; PrevPt:Types.PPoint):LongBool; stdcall;//00410D28
    function SetDIBColorTable(p2:LongWord; p3:LongWord; var RGBQuadSTructs:void ):LongWord; stdcall;//00410D30
    function SetDIBits(Bitmap:HBITMAP; StartScan:LongWord; NumScans:LongWord; Bits:Pointer; var BitsInfo:tagBITMAPINFO; Usage:LongWord):Integer; stdcall;//00410D38
    function SetEnhMetaFileBits(p2:Types.PByte):HENHMETAFILE; stdcall;//00410D40
    function SetMapMode(p2:Integer):Integer; stdcall;//00410D48
    function SetPixel(X:Integer; Y:Integer; Color:Types.DWORD):DWORD; stdcall;//00410D50
    function SetROP2(p2:Integer):Integer; stdcall;//00410D58
    function SetRectRgn(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer):LongBool; stdcall;//00410D60
    function SetStretchBltMode(StretchMode:Integer):Integer; stdcall;//00410D68
    function SetTextColor(Color:Types.DWORD):DWORD; stdcall;//00410D70
    function SetViewportExtEx(XExt:Integer; YExt:Integer; Size:Types.PSize):LongBool; stdcall;//00410D78
    function SetViewportOrgEx(X:Integer; Y:Integer; Point:Types.PPoint):LongBool; stdcall;//00410D80
    function SetWinMetaFileBits(p2:Types.PByte; p3:HDC; const p4:tagMETAFILEPICT):HENHMETAFILE; stdcall;//00410D88
    function SetWindowExtEx(XExt:Integer; YExt:Integer; Size:Types.PSize):LongBool; stdcall;//00410D90
    function SetWindowOrgEx(X:Integer; Y:Integer; Point:Types.PPoint):LongBool; stdcall;//00410D98
    function StartDocW(const p2:_DOCINFOW):Integer; stdcall;//00410DA0
    function StartPage:Integer; stdcall;//00410DA8
    function StretchBlt(X:Integer; Y:Integer; Width:Integer; Height:Integer; SrcDC:HDC; XSrc:Integer; YSrc:Integer; SrcWidth:Integer; SrcHeight:Integer; Rop:Types.DWORD):LongBool; stdcall;//00410DB0
    function UnrealizeObject:LongBool; stdcall;//00410DB8
    function ActivateKeyboardLayout(Flags:LongWord):HKL; stdcall;//00410DC0
    function AdjustWindowRectEx(dwStyle:Types.DWORD; bMenu:LongBool; dwExStyle:Types.DWORD):LongBool; stdcall;//00410DC8
    function BeginDeferWindowPos:THandle; stdcall;//00410DD0
    function BeginPaint(var lpPaint:tagPAINTSTRUCT):HDC; stdcall;//00410DD8
    procedure dll;//00410DE0
    function CallNextHookEx(nCode:Integer; wParam:UIntPtr; lParam:IntPtr):IntPtr; stdcall;//00410DF0
    function CallWindowProcW(hWnd:HWND; Msg:LongWord; wParam:UIntPtr; lParam:IntPtr):IntPtr; stdcall;//00410DF8
    function CharLowerW:PWideChar; stdcall;//00410E00
    function CharLowerBuffW(cchLength:Types.DWORD):DWORD; stdcall;//00410E08
    function CharLowerBuffW(cchLength:Types.DWORD):DWORD; stdcall;//00410E10
    function CharNextW:PWideChar; stdcall;//00410E18
    function CharUpperW:PWideChar; stdcall;//00410E20
    function CharUpperBuffW(cchLength:Types.DWORD):DWORD; stdcall;//00410E28
    function CharUpperBuffA(cchLength:Types.DWORD):DWORD; stdcall;//00410E30
    function CheckMenuItem(uIDCheckItem:LongWord; uCheck:LongWord):DWORD; stdcall;//00410E38
    function ChildWindowFromPoint(Point:Types.TPoint):HWND; stdcall;//00410E40
    function ClientToScreen(var lpPoint:Types.TPoint):LongBool; stdcall;//00410E48
    function CloseClipboard:LongBool;//00410E50
    function CopyImage(ImageType:LongWord; X:Integer; Y:Integer; Flags:LongWord):THandle; stdcall;//00410E58
    function CountClipboardFormats:Integer;//00410E60
    function CreateCaret(hBitmap:HBITMAP; nWidth:Integer; nHeight:Integer):LongBool; stdcall;//00410E68
    function CreateIcon(nWidth:Integer; nHeight:Integer; cPlanes:Byte; cBitsPixel:Byte; lpbANDbits:Pointer; lpbXORbits:Pointer):HICON; stdcall;//00410E70
    function CreateMenu:HMENU;//00410E78
    function CreatePopupMenu:HMENU;//00410E80
    function DefFrameProcW(hWndMDIClient:HWND; uMsg:LongWord; wParam:UIntPtr; lParam:IntPtr):IntPtr; stdcall;//00410E88
    function DefMDIChildProcW(uMsg:LongWord; wParam:UIntPtr; lParam:IntPtr):IntPtr; stdcall;//00410E90
    function DefWindowProcW(Msg:LongWord; wParam:UIntPtr; lParam:IntPtr):IntPtr; stdcall;//00410E98
    function DeferWindowPos(hWnd:HWND; hWndInsertAfter:HWND; x:Integer; y:Integer; cx:Integer; cy:Integer; uFlags:LongWord):THandle; stdcall;//00410EA0
    function DeleteMenu(uPosition:LongWord; uFlags:LongWord):LongBool; stdcall;//00410EA8
    function DestroyCaret:LongBool;//00410EB0
    function DestroyCursor:LongBool; stdcall;//00410EB8
    function DestroyIcon:LongBool; stdcall;//00410EC0
    function DestroyMenu:LongBool; stdcall;//00410EC8
    function DestroyWindow:LongBool; stdcall;//00410ED0
    function DispatchMessageW:LongInt; stdcall;//00410ED8
    function DispatchMessageA:LongInt; stdcall;//00410EE0
    function DispatchMessageW:LongInt; stdcall;//00410EE8
    function DrawEdge(var qrc:Types.TRect; edge:LongWord; grfFlags:LongWord):LongBool; stdcall;//00410EF0
    function DrawFocusRect(const lprc:Types.TRect):LongBool; stdcall;//00410EF8
    function DrawFrameControl(const Rect:Types.TRect; uType:LongWord; uState:LongWord):LongBool; stdcall;//00410F00
    function DrawIcon(X:Integer; Y:Integer; hIcon:HICON):LongBool; stdcall;//00410F08
    function DrawIconEx(xLeft:Integer; yTop:Integer; hIcon:HICON; cxWidth:Integer; cyWidth:Integer; istepIfAniCur:LongWord; hbrFlickerFreeDraw:HBRUSH; diFlags:LongWord):LongBool; stdcall;//00410F10
    function DrawMenuBar:LongBool; stdcall;//00410F18
    function DrawTextW(lpString:PWideChar; nCount:Integer; var lpRect:Types.TRect; uFormat:LongWord):Integer; stdcall;//00410F20
    function DrawTextW(lpString:PWideChar; nCount:Integer; var lpRect:Types.TRect; uFormat:LongWord):Integer; stdcall;//00410F28
    function DrawTextExW(lpchText:PWideChar; cchText:Integer; var p4:Types.TRect; dwDTFormat:LongWord; DTParams:PDrawTextParams):Integer; stdcall;//00410F30
    function EmptyClipboard:LongBool;//00410F38
    function EnableMenuItem(uIDEnableItem:LongWord; uEnable:LongWord):LongBool; stdcall;//00410F40
    function EnableScrollBar(wSBflags:LongWord; wArrows:LongWord):LongBool; stdcall;//00410F48
    function EnableWindow(bEnable:LongBool):LongBool; stdcall;//00410F50
    function EndDeferWindowPos:LongBool; stdcall;//00410F58
    function EndMenu:LongBool;//00410F60
    function EndPaint(const lpPaint:tagPAINTSTRUCT):LongBool; stdcall;//00410F68
    function EnumChildWindows(lpEnumFunc:Pointer; lParam:IntPtr):LongBool; stdcall;//00410F70
    function EnumClipboardFormats:LongWord; stdcall;//00410F78
    function EnumThreadWindows(lpfn:Pointer; lParam:IntPtr):LongBool; stdcall;//00410F80
    function EnumWindows(lParam:IntPtr):LongBool; stdcall;//00410F88
    function FillRect(const lprc:Types.TRect; hbr:HBRUSH):Integer; stdcall;//00410F90
    function FindWindowW(lpWindowName:PWideChar):HWND; stdcall;//00410F98
    function FindWindowExW(Child:HWND; ClassName:PWideChar; WindowName:PWideChar):HWND; stdcall;//00410FA0
    function FrameRect(const lprc:Types.TRect; hbr:HBRUSH):Integer; stdcall;//00410FA8
    function GetActiveWindow:HWND;//00410FB0
    function GetCapture:HWND;//00410FB8
    function GetCaretPos:LongBool; stdcall;//00410FC0
    function GetClassInfoW(lpClassName:PWideChar; var lpWndClass:tagWNDCLASSW):LongBool; stdcall;//00410FC8
    function GetClassInfoExW(Classname:PWideChar; var WndClass:tagWNDCLASSEXW):LongBool; stdcall;//00410FD0
    function GetClassNameW(lpClassName:PWideChar; nMaxCount:Integer):Integer; stdcall;//00410FD8
    function GetClientRect(var lpRect:Types.TRect):LongBool; stdcall;//00410FE0
    function GetClipboardData:THandle; stdcall;//00410FE8
    function GetCursor:HICON;//00410FF0
    function GetCursorPos:LongBool; stdcall;//00410FF8
    function GetDC:HDC; stdcall;//00411000
    function GetDCEx(hrgnClip:HRGN; flags:Types.DWORD):HDC; stdcall;//00411008
    function GetDesktopWindow:HWND;//00411010
    function GetDlgCtrlID:Integer; stdcall;//00411018
    function GetDlgItem(nIDDlgItem:Integer):HWND; stdcall;//00411020
    function GetDoubleClickTime:LongWord;//00411028
    function GetFocus:HWND;//00411030
    function GetForegroundWindow:HWND;//00411038
    function GetIconInfo(var piconinfo:_ICONINFO):LongBool; stdcall;//00411040
    function GetKeyNameTextW(lpString:PWideChar; nSize:Integer):Integer; stdcall;//00411048
    function GetKeyState:SmallInt; stdcall;//00411050
    function GetKeyboardLayout:HKL; stdcall;//00411058
    function GetKeyboardLayoutList(var List:void ):LongWord; stdcall;//00411060
    function GetKeyboardLayoutNameW:LongBool; stdcall;//00411068
    function GetKeyboardState:LongBool; stdcall;//00411070
    function GetLastActivePopup:HWND; stdcall;//00411078
    function GetMenu:HMENU; stdcall;//00411080
    function GetMenuItemCount:Integer; stdcall;//00411088
    function GetMenuItemID(nPos:Integer):LongWord; stdcall;//00411090
    function GetMenuItemInfoW(p2:LongWord; p3:LongBool; var p4:tagMENUITEMINFOW):LongBool; stdcall;//00411098
    function GetMenuState(uId:LongWord; uFlags:LongWord):LongWord; stdcall;//004110A0
    function GetMenuStringW(uIDItem:LongWord; lpString:PWideChar; nMaxCount:Integer; uFlag:LongWord):Integer; stdcall;//004110A8
    function GetMessageExtraInfo:IntPtr;//004110B0
    function GetMessagePos:DWORD;//004110B8
    function GetMessageTime:LongInt;//004110C0
    function GetWindow(uCmd:LongWord):HWND; stdcall;//004110C8
    function GetParent:HWND; stdcall;//004110D0
    function GetPropW(lpString:PWideChar):THandle; stdcall;//004110D8
    function GetScrollBarInfo(idObject:LongInt; var psbi:tagSCROLLBARINFO):LongBool; stdcall;//004110E0
    function GetScrollInfo(BarFlag:Integer; var ScrollInfo:tagSCROLLINFO):LongBool; stdcall;//004110E8
    function GetScrollPos(nBar:Integer):Integer; stdcall;//004110F0
    function GetScrollRange(nBar:Integer; var lpMinPos:Integer; var lpMaxPos:Integer):LongBool; stdcall;//004110F8
    function GetSubMenu(nPos:Integer):HMENU; stdcall;//00411100
    function GetSysColor:DWORD; stdcall;//00411108
    function GetSysColorBrush:HBRUSH; stdcall;//00411110
    function GetSystemMenu(bRevert:LongBool):HMENU; stdcall;//00411118
    function GetSystemMetrics:Integer; stdcall;//00411120
    function GetTopWindow:HWND; stdcall;//00411128
    function GetUpdateRect(lpRect:Types.PRect; bErase:LongBool):LongBool; stdcall;//00411130
    function GetWindow(uCmd:LongWord):HWND; stdcall;//00411138
    function GetWindowDC:HDC; stdcall;//00411140
    function GetWindowLong(hWnd:HWND; nIndex:Integer):NativeInt;//00411148
    function GetWindowPlacement(var WindowPlacement:tagWINDOWPLACEMENT):LongBool; stdcall;//00411150
    function GetWindowRect(var lpRect:Types.TRect):LongBool; stdcall;//00411158
    function GetWindowTextW(lpString:PWideChar; nMaxCount:Integer):Integer; stdcall;//00411160
    function GetWindowThreadProcessId(lpdwProcessId:Pointer):DWORD; stdcall;//00411168
    function GetWindowThreadProcessId(lpdwProcessId:Pointer):DWORD; stdcall;//00411170
    function HideCaret:LongBool; stdcall;//00411178
    procedure InflateRect(const DY:Single; const DX:Single);//00411180
    function InsertMenuW(uPosition:LongWord; uFlags:LongWord; uIDNewItem:UIntPtr; lpNewItem:PWideChar):LongBool; stdcall;//00411188
    function InsertMenuItemW(p2:LongWord; p3:LongBool; const p4:tagMENUITEMINFOW):LongBool; stdcall;//00411190
    function InvalidateRect(const lpRect:Types.TRect; bErase:LongBool):LongBool; stdcall;//00411198
    function InvalidateRect(const lpRect:Types.TRect; bErase:LongBool):LongBool; stdcall;//004111A0
    function IsCharAlphaW:LongBool; stdcall;//004111A8
    function IsCharAlphaNumericW:LongBool; stdcall;//004111B0
    function IsChild(hWnd:HWND):LongBool; stdcall;//004111B8
    function IsClipboardFormatAvailable:LongBool; stdcall;//004111C0
    function IsDialogMessageA(var lpMsg:tagMSG):LongBool; stdcall;//004111C8
    function IsDialogMessageW(var lpMsg:tagMSG):LongBool; stdcall;//004111D0
    function IsIconic:BOOL;//004111D8
    function IsWindow:LongBool; stdcall;//004111E0
    function IsWindowEnabled:LongBool; stdcall;//004111E8
    function IsWindowUnicode:LongBool; stdcall;//004111F0
    function IsWindowVisible:LongBool; stdcall;//004111F8
    function IsZoomed:LongBool; stdcall;//00411200
    function KillTimer(uIDEvent:UIntPtr):LongBool; stdcall;//00411208
    function LoadBitmapW(lpBitmapName:PWideChar):HBITMAP; stdcall;//00411210
    function LoadCursorW(const lpCursorName:UnicodeString):HICON;//00411218
    function LoadIconW(lpIconName:PWideChar):HICON; stdcall;//00411220
    function LoadKeyboardLayoutW(Flags:LongWord):HKL; stdcall;//00411228
    function LoadStringW(uID:LongWord; lpBuffer:PWideChar; nBufferMax:Integer):Integer; stdcall;//00411230
    function MapVirtualKeyW(uMapType:LongWord):LongWord; stdcall;//00411238
    function MapWindowPoints(hWndTo:HWND; var lpPoints:void ; cPoints:LongWord):Integer; stdcall;//00411240
    function MessageBeep:LongBool; stdcall;//00411248
    function MessageBoxW(lpText:PWideChar; lpCaption:PWideChar; uType:Cardinal):Integer; stdcall;//00411250
    function MsgWaitForMultipleObjects(var pHandles:void ; fWaitAll:LongBool; dwMilliseconds:Types.DWORD; dwWakeMask:Types.DWORD):DWORD; stdcall;//00411258
    function MsgWaitForMultipleObjectsEx(var pHandles:void ; dwMilliseconds:Types.DWORD; dwWakeMask:Types.DWORD; dwFlags:Types.DWORD):DWORD; stdcall;//00411260
    function OemToCharA(lpszDst:MarshaledAString):LongBool; stdcall;//00411268
    function OffsetRect(DY:Single; DX:Single):Boolean;//00411270
    function OpenClipboard:LongBool; stdcall;//00411278
    function PeekMessageW(hWnd:HWND; wMsgFilterMin:LongWord; wMsgFilterMax:LongWord; wRemoveMsg:LongWord):LongBool; stdcall;//00411280
    function PeekMessageA(hWnd:HWND; wMsgFilterMin:LongWord; wMsgFilterMax:LongWord; wRemoveMsg:LongWord):LongBool; stdcall;//00411288
    function PeekMessageW(hWnd:HWND; wMsgFilterMin:LongWord; wMsgFilterMax:LongWord; wRemoveMsg:LongWord):LongBool; stdcall;//00411290
    function PostMessageW(Msg:LongWord; wParam:UIntPtr; lParam:IntPtr):LongBool; stdcall;//00411298
    procedure PostQuitMessage; stdcall;//004112A0
    function RedrawWindow(const lprcUpdate:Types.TRect; hrgnUpdate:HRGN; flags:LongWord):LongBool; stdcall;//004112A8
    function RedrawWindow(const lprcUpdate:Types.TRect; hrgnUpdate:HRGN; flags:LongWord):LongBool; stdcall;//004112B0
    function RegisterClassW:Word; stdcall;//004112B8
    function RegisterClipboardFormatW:LongWord; stdcall;//004112C0
    function RegisterWindowMessageW:LongWord; stdcall;//004112C8
    function ReleaseCapture:LongBool;//004112D0
    function ReleaseDC(hDC:HDC):Integer; stdcall;//004112D8
    function RemoveMenu(uPosition:LongWord; uFlags:LongWord):LongBool; stdcall;//004112E0
    function RemovePropW(lpString:PWideChar):THandle; stdcall;//004112E8
    function ScreenToClient(var lpPoint:Types.TPoint):LongBool; stdcall;//004112F0
    procedure $thunk_AddClipboardFormatListener;//004112F8
    procedure sub_00411308;//00411308
    function ScrollWindow(XAmount:Integer; YAmount:Integer; Rect:Types.PRect; ClipRect:Types.PRect):LongBool; stdcall;//00411310
    function ScrollWindowEx(dx:Integer; dy:Integer; prcScroll:Types.PRect; prcClip:Types.PRect; hrgnUpdate:HRGN; prcUpdate:Types.PRect; flags:LongWord):LongBool; stdcall;//00411318
    function SendDlgItemMessageW(nIDDlgItem:Integer; Msg:LongWord; wParam:UIntPtr; lParam:IntPtr):LongInt; stdcall;//00411320
    function SendMessageW(Msg:LongWord; wParam:UIntPtr; lParam:IntPtr):IntPtr; stdcall;//00411328
    function SendMessageW(Msg:LongWord; wParam:UIntPtr; lParam:IntPtr):IntPtr; stdcall;//00411330
    function SendMessageA(Msg:LongWord; wParam:UIntPtr; lParam:IntPtr):IntPtr; stdcall;//00411338
    function SendMessageW(Msg:LongWord; wParam:UIntPtr; lParam:IntPtr):IntPtr; stdcall;//00411340
    function SendMessageW(Msg:LongWord; wParam:UIntPtr; lParam:IntPtr):IntPtr; stdcall;//00411348
    function SetActiveWindow:HWND; stdcall;//00411350
    function SetCapture:HWND; stdcall;//00411358
    function SetCaretPos(Y:Integer):LongBool; stdcall;//00411360
    function SetClipboardData(hMem:THandle):THandle; stdcall;//00411368
    function SetCursor:HICON; stdcall;//00411370
    function SetCursorPos(Y:Integer):LongBool; stdcall;//00411378
    function SetFocus:HWND; stdcall;//00411380
    function SetForegroundWindow:LongBool; stdcall;//00411388
    function SetKeyboardState:LongBool; stdcall;//00411390
    function SetMenu(hMenu:HMENU):LongBool; stdcall;//00411398
    function SetMenuItemInfoW(p2:LongWord; p3:LongBool; const p4:tagMENUITEMINFOW):LongBool; stdcall;//004113A0
    function SetParent(hWndNewParent:HWND):HWND; stdcall;//004113A8
    function SetPropW(lpString:PWideChar; hData:THandle):LongBool; stdcall;//004113B0
    function SetRect(xLeft:Integer; yTop:Integer; xRight:Integer; yBottom:Integer):LongBool; stdcall;//004113B8
    function SetScrollInfo(BarFlag:Integer; const ScrollInfo:tagSCROLLINFO; Redraw:LongBool):Integer; stdcall;//004113C0
    function SetScrollPos(nBar:Integer; nPos:Integer; bRedraw:LongBool):Integer; stdcall;//004113C8
    function SetScrollRange(nBar:Integer; nMinPos:Integer; nMaxPos:Integer; bRedraw:LongBool):LongBool; stdcall;//004113D0
    function SetTimer(nIDEvent:UIntPtr; uElapse:LongWord; lpTimerFunc:Pointer):LongWord; stdcall;//004113D8
    function SetWindowPlacement(const WindowPlacement:tagWINDOWPLACEMENT):LongBool; stdcall;//004113E0
    function SetWindowPos(hWndInsertAfter:HWND; X:Integer; Y:Integer; cx:Integer; cy:Integer; uFlags:LongWord):LongBool; stdcall;//004113E8
    function SetWindowTextW(lpString:PWideChar):LongBool; stdcall;//004113F0
    function SetWindowsHookExW(lpfn:TFNHookProc; hmod:HINST; dwThreadId:Types.DWORD):HHOOK; stdcall;//004113F8
    function SetWindowRgn(hRgn:HRGN; bRedraw:LongBool):Integer; stdcall;//00411400
    function ShowCaret:LongBool; stdcall;//00411408
    function ShowOwnedPopups(fShow:LongBool):LongBool; stdcall;//00411410
    function ShowScrollBar(wBar:Integer; bShow:LongBool):LongBool; stdcall;//00411418
    function ShowWindow(nCmdShow:Integer):LongBool; stdcall;//00411420
    function SystemParametersInfoW(uiParam:LongWord; pvParam:Pointer; fWinIni:LongWord):LongBool; stdcall;//00411428
    function SystemParametersInfoW(uiParam:LongWord; pvParam:Pointer; fWinIni:LongWord):LongBool; stdcall;//00411430
    function SystemParametersInfoW(uiParam:LongWord; pvParam:Pointer; fWinIni:LongWord):LongBool; stdcall;//00411438
    function TrackPopupMenu(uFlags:LongWord; x:Integer; y:Integer; nReserved:Integer; hWnd:HWND; prcRect:Types.PRect):LongBool; stdcall;//00411440
    function TranslateMDISysAccel(const lpMsg:tagMSG):LongBool; stdcall;//00411448
    function TranslateMessage:LongBool; stdcall;//00411450
    function UnhookWindowsHookEx:LongBool; stdcall;//00411458
    function UnregisterClassW(hInstance:HINST):LongBool; stdcall;//00411460
    function UpdateWindow:LongBool; stdcall;//00411468
    function ValidateRect(lpRect:Types.PRect):LongBool; stdcall;//00411470
    function ValidateRect(lpRect:Types.PRect):LongBool; stdcall;//00411478
    function WaitMessage:LongBool;//00411480
    function WindowFromPoint:HWND; stdcall;//00411488
    procedure keybd_event(bScan:Byte; dwFlags:Types.DWORD; dwExtraInfo:UIntPtr); stdcall;//00411490
    procedure dll;//00411498
    procedure $thunk_WTSRegisterSessionNotification;//004114A8
    procedure sub_004114B8;//004114B8
    procedure $thunk_WTSUnRegisterSessionNotification;//004114C0
    procedure sub_004114D0;//004114D0
    function CreateWindowExW(dwExStyle:Types.DWORD; lpClassName:PWideChar; lpParam:Pointer; hInstance:HINST; hMenu:HMENU; hWndParent:HWND; nHeight:Integer; nWidth:Integer; Y:Integer; X:Integer; dwStyle:Types.DWORD):HWND;//004114D8
    function CreateWindowEx(dwExStyle:Types.DWORD; lpClassName:PWideChar; lpWindowName:PWideChar; dwStyle:Types.DWORD; X:Integer; Y:Integer; nWidth:Integer; nHeight:Integer; hWndParent:HWND; hMenu:HMENU; hInstance:HINST; lpParam:Pointer):HWND;//004114E0
    function HwndMSWheel(var puiMsh_MsgMouseWheel:LongWord; var puiMsh_Msg3DSupport:LongWord; var puiMsh_MsgScrollLines:LongWord; var pf3DSupport:LongBool; var piScrollLines:Integer):HWND;//00411538
    function GetWindowLongW(nIndex:Integer):NativeInt;//00411680
    function SetWindowLongW(nIndex:Integer; dwNewLong:NativeInt):NativeInt;//00411688
    function GetClassLongW(nIndex:Integer):NativeUInt;//00411690
    function SetClassLongW(nIndex:Integer; dwNewLong:NativeInt):NativeUInt;//00411698
    procedure $thunk_CalculatePopupWindowPosition;//004116A0
    //function sub_004116B0:?;//004116B0
    procedure $thunk_CloseGestureInfoHandle;//004116B8
    procedure sub_004116C8;//004116C8
    procedure $thunk_CloseTouchInputHandle;//004116D0
    procedure sub_004116E0;//004116E0
    procedure InitVersionInfo;//004116E8
    function SizeOf:Integer;//00411724
    procedure $thunk_AddRefActCtx;//0041173C
    function IsWow64Process(hProcess:THandle; Wow64Process:PBOOL):LongBool; stdcall;//0041174C

implementation

//0040E7BC
function TPoint.&op_Equality(const Rhs:TPoint):Boolean;
begin
{*
 0040E7BC    mov         ecx,dword ptr [eax]
 0040E7BE    cmp         ecx,dword ptr [edx]
>0040E7C0    jne         0040E7CA
 0040E7C2    mov         eax,dword ptr [eax+4]
 0040E7C5    cmp         eax,dword ptr [edx+4]
>0040E7C8    je          0040E7CD
 0040E7CA    xor         eax,eax
 0040E7CC    ret
 0040E7CD    mov         al,1
 0040E7CF    ret
*}
end;

//0040E7D0
function TPoint.&op_Implicit:TPoint;
begin
{*
 0040E7D0    push        ecx
 0040E7D1    mov         dword ptr [esp],eax
 0040E7D4    movsx       eax,word ptr [esp]
 0040E7D8    mov         dword ptr [edx],eax
 0040E7DA    movsx       eax,word ptr [esp+2]
 0040E7DF    mov         dword ptr [edx+4],eax
 0040E7E2    pop         edx
 0040E7E3    ret
*}
end;

//0040E7E4
{*procedure sub_0040E7E4(?:?; ?:?; ?:?);
begin
 0040E7E4    mov         dword ptr [eax],edx
 0040E7E6    mov         dword ptr [eax+4],ecx
 0040E7E9    ret
end;*}

//0040E7EC
constructor TRect.Create(const Top:Integer; const Right:Integer; const Bottom:Integer);
begin
{*
 0040E7EC    push        ebp
 0040E7ED    mov         ebp,esp
 0040E7EF    mov         dword ptr [eax],edx
 0040E7F1    mov         dword ptr [eax+4],ecx
 0040E7F4    mov         edx,dword ptr [ebp+0C]
 0040E7F7    mov         dword ptr [eax+8],edx
 0040E7FA    mov         edx,dword ptr [ebp+8]
 0040E7FD    mov         dword ptr [eax+0C],edx
 0040E800    pop         ebp
 0040E801    ret         8
*}
end;

//0040E804
function RectWidth(const Rect:TRect):Integer;
begin
{*
 0040E804    mov         edx,dword ptr [eax+8]
 0040E807    sub         edx,dword ptr [eax]
 0040E809    mov         eax,edx
 0040E80B    ret
*}
end;

//0040E80C
procedure sub_0040E80C(?:TRect; ?:Integer);
begin
{*
 0040E80C    add         edx,dword ptr [eax+4]
 0040E80F    mov         dword ptr [eax+0C],edx
 0040E812    ret
*}
end;

//0040E814
function RectHeight(const Rect:TRect):Integer;
begin
{*
 0040E814    mov         edx,dword ptr [eax+0C]
 0040E817    sub         edx,dword ptr [eax+4]
 0040E81A    mov         eax,edx
 0040E81C    ret
*}
end;

//0040E820
function PtInRect(const Rect:TRect; const P:TPoint):Boolean;
begin
{*
 0040E820    mov         ecx,dword ptr [edx]
 0040E822    cmp         ecx,dword ptr [eax]
>0040E824    jl          0040E83B
 0040E826    cmp         ecx,dword ptr [eax+8]
>0040E829    jge         0040E83B
 0040E82B    mov         ecx,dword ptr [edx+4]
 0040E82E    cmp         ecx,dword ptr [eax+4]
>0040E831    jl          0040E83B
 0040E833    mov         edx,dword ptr [edx+4]
 0040E836    cmp         edx,dword ptr [eax+0C]
>0040E839    jl          0040E83E
 0040E83B    xor         eax,eax
 0040E83D    ret
 0040E83E    mov         al,1
 0040E840    ret
*}
end;

//0040E844
function TRect.Contains(const R:TRect):Boolean;
begin
{*
 0040E844    call        PtInRect
 0040E849    ret
*}
end;

//0040E84C
function CenterPoint(const Rect:TRect):TPoint;
begin
{*
 0040E84C    push        ebx
 0040E84D    mov         ebx,dword ptr [eax+8]
 0040E850    mov         ecx,dword ptr [eax]
 0040E852    sub         ebx,ecx
 0040E854    sar         ebx,1
>0040E856    jns         0040E85B
 0040E858    adc         ebx,0
 0040E85B    add         ebx,ecx
 0040E85D    mov         dword ptr [edx],ebx
 0040E85F    mov         ebx,dword ptr [eax+0C]
 0040E862    mov         ecx,dword ptr [eax+4]
 0040E865    sub         ebx,ecx
 0040E867    sar         ebx,1
>0040E869    jns         0040E86E
 0040E86B    adc         ebx,0
 0040E86E    add         ebx,ecx
 0040E870    mov         dword ptr [edx+4],ebx
 0040E873    pop         ebx
 0040E874    ret
*}
end;

//0040E878
function SplitRect(const Rect:TRect; SplitType:TSplitRectType; Size:Integer):TRect;
begin
{*
 0040E878    push        ebp
 0040E879    mov         ebp,esp
 0040E87B    push        ecx
 0040E87C    push        ebx
 0040E87D    push        esi
 0040E87E    push        edi
 0040E87F    mov         dword ptr [ebp-4],ecx
 0040E882    mov         ebx,dword ptr [ebp+8]
 0040E885    mov         esi,eax
 0040E887    mov         edi,ebx
 0040E889    movs        dword ptr [edi],dword ptr [esi]
 0040E88A    movs        dword ptr [edi],dword ptr [esi]
 0040E88B    movs        dword ptr [edi],dword ptr [esi]
 0040E88C    movs        dword ptr [edi],dword ptr [esi]
 0040E88D    sub         dl,1
>0040E890    jb          0040E89E
>0040E892    je          0040E8A8
 0040E894    dec         dl
>0040E896    je          0040E8B2
 0040E898    dec         dl
>0040E89A    je          0040E8BD
>0040E89C    jmp         0040E8C6
 0040E89E    mov         eax,dword ptr [eax]
 0040E8A0    add         eax,dword ptr [ebp-4]
 0040E8A3    mov         dword ptr [ebx+8],eax
>0040E8A6    jmp         0040E8C6
 0040E8A8    mov         eax,dword ptr [eax+8]
 0040E8AB    sub         eax,dword ptr [ebp-4]
 0040E8AE    mov         dword ptr [ebx],eax
>0040E8B0    jmp         0040E8C6
 0040E8B2    mov         eax,dword ptr [eax+4]
 0040E8B5    add         eax,dword ptr [ebp-4]
 0040E8B8    mov         dword ptr [ebx+0C],eax
>0040E8BB    jmp         0040E8C6
 0040E8BD    mov         eax,dword ptr [eax+0C]
 0040E8C0    sub         eax,dword ptr [ebp-4]
 0040E8C3    mov         dword ptr [ebx+4],eax
 0040E8C6    pop         edi
 0040E8C7    pop         esi
 0040E8C8    pop         ebx
 0040E8C9    pop         ecx
 0040E8CA    pop         ebp
 0040E8CB    ret         4
*}
end;

//0040E8D0
function SplitRect(const Rect:TRect; SplitType:TSplitRectType; Percent:Double):TRect;
begin
{*
 0040E8D0    push        ebp
 0040E8D1    mov         ebp,esp
 0040E8D3    push        ecx
 0040E8D4    push        ebx
 0040E8D5    push        esi
 0040E8D6    push        edi
 0040E8D7    mov         esi,ecx
 0040E8D9    mov         ebx,eax
 0040E8DB    push        esi
 0040E8DC    mov         edi,esi
 0040E8DE    mov         esi,ebx
 0040E8E0    movs        dword ptr [edi],dword ptr [esi]
 0040E8E1    movs        dword ptr [edi],dword ptr [esi]
 0040E8E2    movs        dword ptr [edi],dword ptr [esi]
 0040E8E3    movs        dword ptr [edi],dword ptr [esi]
 0040E8E4    pop         esi
 0040E8E5    sub         dl,1
>0040E8E8    jb          0040E8F6
>0040E8EA    je          0040E912
 0040E8EC    dec         dl
>0040E8EE    je          0040E930
 0040E8F0    dec         dl
>0040E8F2    je          0040E94D
>0040E8F4    jmp         0040E96A
 0040E8F6    mov         eax,ebx
 0040E8F8    call        TRect.GetWidth
 0040E8FD    mov         dword ptr [ebp-4],eax
 0040E900    fild        dword ptr [ebp-4]
 0040E903    fmul        qword ptr [ebp+8]
 0040E906    call        @TRUNC
 0040E90B    add         eax,dword ptr [ebx]
 0040E90D    mov         dword ptr [esi+8],eax
>0040E910    jmp         0040E96A
 0040E912    mov         eax,ebx
 0040E914    call        TRect.GetWidth
 0040E919    mov         dword ptr [ebp-4],eax
 0040E91C    fild        dword ptr [ebp-4]
 0040E91F    fmul        qword ptr [ebp+8]
 0040E922    call        @TRUNC
 0040E927    mov         edx,dword ptr [ebx+8]
 0040E92A    sub         edx,eax
 0040E92C    mov         dword ptr [esi],edx
>0040E92E    jmp         0040E96A
 0040E930    mov         eax,ebx
 0040E932    call        TRect.GetHeight
 0040E937    mov         dword ptr [ebp-4],eax
 0040E93A    fild        dword ptr [ebp-4]
 0040E93D    fmul        qword ptr [ebp+8]
 0040E940    call        @TRUNC
 0040E945    add         eax,dword ptr [ebx+4]
 0040E948    mov         dword ptr [esi+0C],eax
>0040E94B    jmp         0040E96A
 0040E94D    mov         eax,ebx
 0040E94F    call        TRect.GetHeight
 0040E954    mov         dword ptr [ebp-4],eax
 0040E957    fild        dword ptr [ebp-4]
 0040E95A    fmul        qword ptr [ebp+8]
 0040E95D    call        @TRUNC
 0040E962    mov         edx,dword ptr [ebx+0C]
 0040E965    sub         edx,eax
 0040E967    mov         dword ptr [esi+4],edx
 0040E96A    pop         edi
 0040E96B    pop         esi
 0040E96C    pop         ebx
 0040E96D    pop         ecx
 0040E96E    pop         ebp
 0040E96F    ret         8
*}
end;

//0040E974
function CenteredRect(const SourceRect:TRect; const CenteredRect:TRect):TRect;
begin
{*
 0040E974    push        ebx
 0040E975    push        esi
 0040E976    push        edi
 0040E977    push        ebp
 0040E978    push        ecx
 0040E979    mov         dword ptr [esp],ecx
 0040E97C    mov         edi,edx
 0040E97E    mov         ebx,eax
 0040E980    mov         eax,edi
 0040E982    call        TRect.GetWidth
 0040E987    mov         esi,eax
 0040E989    mov         eax,edi
 0040E98B    call        TRect.GetHeight
 0040E990    mov         edi,eax
 0040E992    mov         ebp,dword ptr [ebx+8]
 0040E995    add         ebp,dword ptr [ebx]
 0040E997    sar         ebp,1
>0040E999    jns         0040E99E
 0040E99B    adc         ebp,0
 0040E99E    mov         eax,dword ptr [ebx+4]
 0040E9A1    add         eax,dword ptr [ebx+0C]
 0040E9A4    sar         eax,1
>0040E9A6    jns         0040E9AB
 0040E9A8    adc         eax,0
 0040E9AB    mov         ebx,eax
 0040E9AD    lea         eax,[edi+1]
 0040E9B0    sar         eax,1
>0040E9B2    jns         0040E9B7
 0040E9B4    adc         eax,0
 0040E9B7    add         eax,ebx
 0040E9B9    push        eax
 0040E9BA    mov         eax,dword ptr [esp+4]
 0040E9BE    push        eax
 0040E9BF    sar         edi,1
>0040E9C1    jns         0040E9C6
 0040E9C3    adc         edi,0
 0040E9C6    mov         edx,ebx
 0040E9C8    sub         edx,edi
 0040E9CA    mov         eax,esi
 0040E9CC    sar         eax,1
>0040E9CE    jns         0040E9D3
 0040E9D0    adc         eax,0
 0040E9D3    push        eax
 0040E9D4    mov         eax,ebp
 0040E9D6    pop         ecx
 0040E9D7    sub         eax,ecx
 0040E9D9    lea         ecx,[esi+1]
 0040E9DC    sar         ecx,1
>0040E9DE    jns         0040E9E3
 0040E9E0    adc         ecx,0
 0040E9E3    add         ecx,ebp
 0040E9E5    call        Rect
 0040E9EA    pop         edx
 0040E9EB    pop         ebp
 0040E9EC    pop         edi
 0040E9ED    pop         esi
 0040E9EE    pop         ebx
 0040E9EF    ret
*}
end;

//0040E9F0
function EqualRect(const R1:TRect; const R2:TRect):Boolean;
begin
{*
 0040E9F0    mov         ecx,dword ptr [eax]
 0040E9F2    cmp         ecx,dword ptr [edx]
>0040E9F4    jne         0040EA0E
 0040E9F6    mov         ecx,dword ptr [eax+8]
 0040E9F9    cmp         ecx,dword ptr [edx+8]
>0040E9FC    jne         0040EA0E
 0040E9FE    mov         ecx,dword ptr [eax+4]
 0040EA01    cmp         ecx,dword ptr [edx+4]
>0040EA04    jne         0040EA0E
 0040EA06    mov         eax,dword ptr [eax+0C]
 0040EA09    cmp         eax,dword ptr [edx+0C]
>0040EA0C    je          0040EA11
 0040EA0E    xor         eax,eax
 0040EA10    ret
 0040EA11    mov         al,1
 0040EA13    ret
*}
end;

//0040EA14
function Rect(Left:Integer; Top:Integer; Right:Integer; Bottom:Integer):TRect;
begin
{*
 0040EA14    push        ebp
 0040EA15    mov         ebp,esp
 0040EA17    push        ebx
 0040EA18    mov         ebx,dword ptr [ebp+8]
 0040EA1B    mov         dword ptr [ebx],eax
 0040EA1D    mov         dword ptr [ebx+4],edx
 0040EA20    mov         eax,dword ptr [ebp+0C]
 0040EA23    mov         dword ptr [ebx+0C],eax
 0040EA26    mov         dword ptr [ebx+8],ecx
 0040EA29    pop         ebx
 0040EA2A    pop         ebp
 0040EA2B    ret         8
*}
end;

//0040EA30
function TRect.GetWidth:Integer;
begin
{*
 0040EA30    mov         edx,dword ptr [eax+8]
 0040EA33    sub         edx,dword ptr [eax]
 0040EA35    mov         eax,edx
 0040EA37    ret
*}
end;

//0040EA38
function TRect.GetHeight:Integer;
begin
{*
 0040EA38    mov         edx,dword ptr [eax+0C]
 0040EA3B    sub         edx,dword ptr [eax+4]
 0040EA3E    mov         eax,edx
 0040EA40    ret
*}
end;

//0040EA44
function SmallPoint(XY:LongWord):TSmallPoint;
begin
{*
 0040EA44    push        ecx
 0040EA45    mov         edx,eax
 0040EA47    and         dx,0FFFFFFFF
 0040EA4B    mov         word ptr [esp],dx
 0040EA4F    shr         eax,10
 0040EA52    mov         word ptr [esp+2],ax
 0040EA57    mov         eax,dword ptr [esp]
 0040EA5A    pop         edx
 0040EA5B    ret
*}
end;

//0040EA5C
function IntersectRect(var Rect:TRect; const R1:TRect; const R2:TRect):Boolean;
begin
{*
 0040EA5C    push        ebx
 0040EA5D    push        esi
 0040EA5E    push        edi
 0040EA5F    add         esp,0FFFFFFF0
 0040EA62    mov         ebx,ecx
 0040EA64    mov         esi,eax
 0040EA66    push        esi
 0040EA67    mov         esi,edx
 0040EA69    lea         edi,[esp+4]
 0040EA6D    movs        dword ptr [edi],dword ptr [esi]
 0040EA6E    movs        dword ptr [edi],dword ptr [esi]
 0040EA6F    movs        dword ptr [edi],dword ptr [esi]
 0040EA70    movs        dword ptr [edi],dword ptr [esi]
 0040EA71    pop         esi
 0040EA72    mov         eax,dword ptr [ebx]
 0040EA74    cmp         eax,dword ptr [edx]
>0040EA76    jle         0040EA7B
 0040EA78    mov         dword ptr [esp],eax
 0040EA7B    mov         eax,dword ptr [ebx+4]
 0040EA7E    cmp         eax,dword ptr [edx+4]
>0040EA81    jle         0040EA87
 0040EA83    mov         dword ptr [esp+4],eax
 0040EA87    mov         eax,dword ptr [ebx+8]
 0040EA8A    cmp         eax,dword ptr [edx+8]
>0040EA8D    jge         0040EA93
 0040EA8F    mov         dword ptr [esp+8],eax
 0040EA93    mov         eax,dword ptr [ebx+0C]
 0040EA96    cmp         eax,dword ptr [edx+0C]
>0040EA99    jge         0040EA9F
 0040EA9B    mov         dword ptr [esp+0C],eax
 0040EA9F    mov         eax,esp
 0040EAA1    call        IsRectEmpty
 0040EAA6    mov         ebx,eax
 0040EAA8    xor         bl,1
 0040EAAB    test        bl,bl
>0040EAAD    jne         0040EABD
 0040EAAF    mov         eax,esp
 0040EAB1    xor         ecx,ecx
 0040EAB3    mov         edx,10
 0040EAB8    call        @FillChar
 0040EABD    mov         edi,esi
 0040EABF    mov         esi,esp
 0040EAC1    movs        dword ptr [edi],dword ptr [esi]
 0040EAC2    movs        dword ptr [edi],dword ptr [esi]
 0040EAC3    movs        dword ptr [edi],dword ptr [esi]
 0040EAC4    movs        dword ptr [edi],dword ptr [esi]
 0040EAC5    mov         eax,ebx
 0040EAC7    add         esp,10
 0040EACA    pop         edi
 0040EACB    pop         esi
 0040EACC    pop         ebx
 0040EACD    ret
*}
end;

//0040EAD0
function UnionRect(var Rect:TRect; const R1:TRect; const R2:TRect):Boolean;
begin
{*
 0040EAD0    push        ebx
 0040EAD1    push        esi
 0040EAD2    push        edi
 0040EAD3    add         esp,0FFFFFFF0
 0040EAD6    mov         ebx,ecx
 0040EAD8    mov         esi,edx
 0040EADA    mov         edi,eax
 0040EADC    push        esi
 0040EADD    push        edi
 0040EADE    lea         edi,[esp+8]
 0040EAE2    movs        dword ptr [edi],dword ptr [esi]
 0040EAE3    movs        dword ptr [edi],dword ptr [esi]
 0040EAE4    movs        dword ptr [edi],dword ptr [esi]
 0040EAE5    movs        dword ptr [edi],dword ptr [esi]
 0040EAE6    pop         edi
 0040EAE7    pop         esi
 0040EAE8    mov         eax,ebx
 0040EAEA    call        IsRectEmpty
 0040EAEF    test        al,al
>0040EAF1    jne         0040EB20
 0040EAF3    mov         eax,dword ptr [ebx]
 0040EAF5    cmp         eax,dword ptr [esi]
>0040EAF7    jge         0040EAFC
 0040EAF9    mov         dword ptr [esp],eax
 0040EAFC    mov         eax,dword ptr [ebx+4]
 0040EAFF    cmp         eax,dword ptr [esi+4]
>0040EB02    jge         0040EB08
 0040EB04    mov         dword ptr [esp+4],eax
 0040EB08    mov         eax,dword ptr [ebx+8]
 0040EB0B    cmp         eax,dword ptr [esi+8]
>0040EB0E    jle         0040EB14
 0040EB10    mov         dword ptr [esp+8],eax
 0040EB14    mov         eax,dword ptr [ebx+0C]
 0040EB17    cmp         eax,dword ptr [esi+0C]
>0040EB1A    jle         0040EB20
 0040EB1C    mov         dword ptr [esp+0C],eax
 0040EB20    mov         eax,esp
 0040EB22    call        IsRectEmpty
 0040EB27    mov         ebx,eax
 0040EB29    xor         bl,1
 0040EB2C    test        bl,bl
>0040EB2E    jne         0040EB3E
 0040EB30    mov         eax,esp
 0040EB32    xor         ecx,ecx
 0040EB34    mov         edx,10
 0040EB39    call        @FillChar
 0040EB3E    mov         esi,esp
 0040EB40    movs        dword ptr [edi],dword ptr [esi]
 0040EB41    movs        dword ptr [edi],dword ptr [esi]
 0040EB42    movs        dword ptr [edi],dword ptr [esi]
 0040EB43    movs        dword ptr [edi],dword ptr [esi]
 0040EB44    mov         eax,ebx
 0040EB46    add         esp,10
 0040EB49    pop         edi
 0040EB4A    pop         esi
 0040EB4B    pop         ebx
 0040EB4C    ret
*}
end;

//0040EB50
procedure InflateRect(var R:TRect; const DX:Integer; const DY:Integer);
begin
{*
 0040EB50    sub         dword ptr [eax],edx
 0040EB52    add         dword ptr [eax+8],edx
 0040EB55    sub         dword ptr [eax+4],ecx
 0040EB58    add         dword ptr [eax+0C],ecx
 0040EB5B    ret
*}
end;

//0040EB5C
function IsRectEmpty(const Rect:TRect):Boolean;
begin
{*
 0040EB5C    mov         edx,dword ptr [eax+8]
 0040EB5F    cmp         edx,dword ptr [eax]
>0040EB61    jle         0040EB6E
 0040EB63    mov         edx,dword ptr [eax+0C]
 0040EB66    cmp         edx,dword ptr [eax+4]
>0040EB69    jle         0040EB6E
 0040EB6B    xor         eax,eax
 0040EB6D    ret
 0040EB6E    mov         al,1
 0040EB70    ret
*}
end;

//0040EB74
function OffsetRect(var R:TRect; DX:Integer; DY:Integer):Boolean;
begin
{*
 0040EB74    test        eax,eax
>0040EB76    je          0040EB86
 0040EB78    add         dword ptr [eax],edx
 0040EB7A    add         dword ptr [eax+8],edx
 0040EB7D    add         dword ptr [eax+4],ecx
 0040EB80    add         dword ptr [eax+0C],ecx
 0040EB83    mov         al,1
 0040EB85    ret
 0040EB86    xor         eax,eax
 0040EB88    ret
*}
end;

//0040EB8C
function Bounds(ALeft:Integer; ATop:Integer; AWidth:Integer; AHeight:Integer):TRect;
begin
{*
 0040EB8C    push        ebp
 0040EB8D    mov         ebp,esp
 0040EB8F    push        ebx
 0040EB90    mov         ebx,dword ptr [ebp+8]
 0040EB93    mov         dword ptr [ebx],eax
 0040EB95    mov         dword ptr [ebx+4],edx
 0040EB98    add         ecx,eax
 0040EB9A    mov         dword ptr [ebx+8],ecx
 0040EB9D    add         edx,dword ptr [ebp+0C]
 0040EBA0    mov         dword ptr [ebx+0C],edx
 0040EBA3    pop         ebx
 0040EBA4    pop         ebp
 0040EBA5    ret         8
*}
end;

//0040EBA8
function TRect.CenterPoint:TPoint;
begin
{*
 0040EBA8    push        ebx
 0040EBA9    mov         ebx,dword ptr [eax+8]
 0040EBAC    mov         ecx,dword ptr [eax]
 0040EBAE    sub         ebx,ecx
 0040EBB0    sar         ebx,1
>0040EBB2    jns         0040EBB7
 0040EBB4    adc         ebx,0
 0040EBB7    add         ebx,ecx
 0040EBB9    mov         dword ptr [edx],ebx
 0040EBBB    mov         ebx,dword ptr [eax+0C]
 0040EBBE    mov         ecx,dword ptr [eax+4]
 0040EBC1    sub         ebx,ecx
 0040EBC3    sar         ebx,1
>0040EBC5    jns         0040EBCA
 0040EBC7    adc         ebx,0
 0040EBCA    add         ebx,ecx
 0040EBCC    mov         dword ptr [edx+4],ebx
 0040EBCF    pop         ebx
 0040EBD0    ret
*}
end;

//0040EBD4
{*procedure sub_0040EBD4(?:?; ?:?; ?:?);
begin
 0040EBD4    mov         dword ptr [eax],edx
 0040EBD6    mov         dword ptr [eax+4],ecx
 0040EBD9    ret
end;*}

//0040EBDC
destructor TMultiWaitEvent.Destroy();
begin
{*
 0040EBDC    push        ebx
 0040EBDD    push        esi
 0040EBDE    call        @BeforeDestruction
 0040EBE3    mov         ebx,edx
 0040EBE5    mov         esi,eax
 0040EBE7    mov         eax,esi
 0040EBE9    call        0040EC08
 0040EBEE    mov         dl,0FC
 0040EBF0    and         dl,bl
 0040EBF2    mov         eax,esi
 0040EBF4    call        TObject.Destroy
 0040EBF9    test        bl,bl
>0040EBFB    jle         0040EC04
 0040EBFD    mov         eax,esi
 0040EBFF    call        @ClassDestroy
 0040EC04    pop         esi
 0040EC05    pop         ebx
 0040EC06    ret
*}
end;

//0040EC08
procedure sub_0040EC08(?:TMultiWaitEvent);
begin
{*
 0040EC08    push        ebx
 0040EC09    push        esi
 0040EC0A    push        edi
 0040EC0B    mov         esi,eax
 0040EC0D    mov         eax,esi
 0040EC0F    mov         edx,dword ptr [eax]
 0040EC11    call        dword ptr [edx+28];@AbstractError
 0040EC14    mov         ebx,eax
 0040EC16    dec         ebx
 0040EC17    cmp         ebx,0
>0040EC1A    jl          0040EC43
 0040EC1C    mov         edx,ebx
 0040EC1E    mov         eax,esi
 0040EC20    mov         ecx,dword ptr [eax]
 0040EC22    call        dword ptr [ecx+2C];@AbstractError
 0040EC25    mov         edi,eax
 0040EC27    mov         edx,edi
 0040EC29    mov         eax,esi
 0040EC2B    call        0040EC48
 0040EC30    test        al,al
>0040EC32    je          0040EC3D
 0040EC34    mov         edx,ebx
 0040EC36    mov         eax,esi
 0040EC38    mov         ecx,dword ptr [eax]
 0040EC3A    call        dword ptr [ecx+24];@AbstractError
 0040EC3D    dec         ebx
 0040EC3E    cmp         ebx,0FFFFFFFF
>0040EC41    jne         0040EC1C
 0040EC43    pop         edi
 0040EC44    pop         esi
 0040EC45    pop         ebx
 0040EC46    ret
*}
end;

//0040EC48
{*function sub_0040EC48(?:TMultiWaitEvent; ?:?):?;
begin
 0040EC48    push        ebp
 0040EC49    mov         ebp,esp
 0040EC4B    add         esp,0FFFFFFF4
 0040EC4E    mov         dword ptr [ebp-4],edx
 0040EC51    mov         eax,dword ptr [ebp-4]
 0040EC54    mov         eax,dword ptr [eax]
 0040EC56    call        TMonitor.TryEnter
 0040EC5B    mov         byte ptr [ebp-5],al
 0040EC5E    cmp         byte ptr [ebp-5],0
>0040EC62    je          0040ECC7
 0040EC64    xor         edx,edx
 0040EC66    push        ebp
 0040EC67    push        40ECC0
 0040EC6C    push        dword ptr fs:[edx]
 0040EC6F    mov         dword ptr fs:[edx],esp
 0040EC72    mov         eax,dword ptr [ebp-4]
 0040EC75    mov         eax,dword ptr [eax]
 0040EC77    test        byte ptr [eax+0C],1
>0040EC7B    jne         0040EC80
 0040EC7D    dec         dword ptr [eax+8]
 0040EC80    xor         eax,eax
 0040EC82    pop         edx
 0040EC83    pop         ecx
 0040EC84    pop         ecx
 0040EC85    mov         dword ptr fs:[eax],edx
 0040EC88    push        40ECC7
 0040EC8D    mov         eax,dword ptr [ebp-4]
 0040EC90    mov         eax,dword ptr [eax]
 0040EC92    cmp         dword ptr [eax+8],0
>0040EC96    jne         0040ECB6
 0040EC98    call        TMonitor.Exit
 0040EC9D    mov         eax,dword ptr [ebp-4]
 0040ECA0    mov         dword ptr [ebp-0C],eax
 0040ECA3    mov         eax,dword ptr [ebp-0C]
 0040ECA6    mov         eax,dword ptr [eax]
 0040ECA8    mov         edx,dword ptr [ebp-0C]
 0040ECAB    xor         ecx,ecx
 0040ECAD    mov         dword ptr [edx],ecx
 0040ECAF    call        TObject.Free
>0040ECB4    jmp         0040ECBF
 0040ECB6    call        TMonitor.Exit
 0040ECBB    mov         byte ptr [ebp-5],0
 0040ECBF    ret
>0040ECC0    jmp         @HandleFinally
>0040ECC5    jmp         0040EC8D
 0040ECC7    movzx       eax,byte ptr [ebp-5]
 0040ECCB    mov         esp,ebp
 0040ECCD    pop         ebp
 0040ECCE    ret
end;*}

//0040ECD0
destructor TMultiWaitEvent.TMultiWaiter.Destroy();
begin
{*
 0040ECD0    push        ebx
 0040ECD1    push        esi
 0040ECD2    call        @BeforeDestruction
 0040ECD7    mov         ebx,edx
 0040ECD9    mov         esi,eax
 0040ECDB    mov         eax,dword ptr [esi+4]
 0040ECDE    call        TObject.Free
 0040ECE3    mov         dl,0FC
 0040ECE5    and         dl,bl
 0040ECE7    mov         eax,esi
 0040ECE9    call        TObject.Destroy
 0040ECEE    test        bl,bl
>0040ECF0    jle         0040ECF9
 0040ECF2    mov         eax,esi
 0040ECF4    call        @ClassDestroy
 0040ECF9    pop         esi
 0040ECFA    pop         ebx
 0040ECFB    ret
*}
end;

//0041052C
function advapi32.RegCloseKey:Integer; stdcall;
begin
{*
 0041052C    jmp         dword ptr ds:[9053A0]
*}
end;

//00410534
function advapi32.RegCreateKeyExW(lpSubKey:PWideChar; Reserved:Types.DWORD; lpClass:PWideChar; dwOptions:Types.DWORD; samDesired:Types.DWORD; lpSecurityAttributes:PSecurityAttributes; var phkResult:HKEY; lpdwDisposition:PDWORD):LongInt; stdcall;
begin
{*
 00410534    jmp         dword ptr ds:[90539C]
*}
end;

//0041053C
procedure advapi32.dll;
begin
{*
 0041053C    push        9080C0
 00410541    call        @DelayLoadHelper2
 00410546    pop         ecx
 00410547    pop         edx
 00410548    xchg        eax,dword ptr [esp]
 0041054B    ret
*}
end;

//0041054C
procedure $thunk_RegDeleteKeyExA;
begin
{*
 0041054C    push        eax
 0041054D    push        edx
 0041054E    push        ecx
 0041054F    push        908228;^$thunk_RegDeleteKeyExA
>00410554    jmp         advapi32.dll
*}
end;

//0041055C
function RegDeleteKeyEx(hKey:HKEY; lpSubKey:PWideChar; samDesired:Types.DWORD; Reserved:Types.DWORD):LongInt; stdcall;
begin
{*
 0041055C    jmp         dword ptr ds:[908228]
*}
end;

//00410564
function advapi32.RegDeleteKeyW(lpSubKey:PWideChar):LongInt; stdcall;
begin
{*
 00410564    jmp         dword ptr ds:[905398]
*}
end;

//0041056C
function advapi32.RegDeleteValueW(lpValueName:PWideChar):LongInt; stdcall;
begin
{*
 0041056C    jmp         dword ptr ds:[905394]
*}
end;

//00410574
function advapi32.RegEnumKeyExW(dwIndex:Types.DWORD; lpName:PWideChar; var lpcbName:Types.DWORD; lpReserved:Pointer; lpClass:PWideChar; lpcbClass:PDWORD; lpftLastWriteTime:PFileTime):LongInt; stdcall;
begin
{*
 00410574    jmp         dword ptr ds:[905390]
*}
end;

//0041057C
function advapi32.RegEnumValueW(dwIndex:Types.DWORD; lpValueName:PWideChar; var lpcbValueName:Types.DWORD; lpReserved:Pointer; lpType:PDWORD; lpData:Types.PByte; lpcbData:PDWORD):LongInt; stdcall;
begin
{*
 0041057C    jmp         dword ptr ds:[90538C]
*}
end;

//00410584
function advapi32.RegFlushKey:LongInt; stdcall;
begin
{*
 00410584    jmp         dword ptr ds:[905388]
*}
end;

//0041058C
function advapi32.RegOpenKeyExW(lpSubKey:PWideChar; ulOptions:Types.DWORD; samDesired:Types.DWORD; var phkResult:HKEY):LongInt; stdcall;
begin
{*
 0041058C    jmp         dword ptr ds:[905384]
*}
end;

//00410594
function advapi32.RegQueryInfoKeyW(lpClass:PWideChar; lpcbClass:PDWORD; lpReserved:Pointer; lpcSubKeys:PDWORD; lpcbMaxSubKeyLen:PDWORD; lpcbMaxClassLen:PDWORD; lpcValues:PDWORD; lpcbMaxValueNameLen:PDWORD; lpcbMaxValueLen:PDWORD; lpcbSecurityDescriptor:PDWORD; lpftLastWriteTime:PFileTime):LongInt; stdcall;
begin
{*
 00410594    jmp         dword ptr ds:[905380]
*}
end;

//0041059C
function advapi32.RegQueryValueExW(lpValueName:PWideChar; lpReserved:Pointer; lpType:PDWORD; lpData:Types.PByte; lpcbData:PDWORD):LongInt; stdcall;
begin
{*
 0041059C    jmp         dword ptr ds:[90537C]
*}
end;

//004105A4
function advapi32.RegSetValueExW(lpValueName:PWideChar; Reserved:Types.DWORD; dwType:Types.DWORD; lpData:Pointer; cbData:Types.DWORD):LongInt; stdcall;
begin
{*
 004105A4    jmp         dword ptr ds:[905378]
*}
end;

//004105AC
function kernel32.CloseHandle:LongBool; stdcall;
begin
{*
 004105AC    jmp         dword ptr ds:[905370]
*}
end;

//004105B4
function kernel32.CompareStringW(dwCmpFlags:Types.DWORD; lpString1:PWideChar; cchCount1:Integer; lpString2:PWideChar; cchCount2:Integer):Integer; stdcall;
begin
{*
 004105B4    jmp         dword ptr ds:[90536C]
*}
end;

//004105BC
function kernel32.CompareStringA(dwCmpFlags:Types.DWORD; lpString1:MarshaledAString; cchCount1:Integer; lpString2:MarshaledAString; cchCount2:Integer):Integer; stdcall;
begin
{*
 004105BC    jmp         dword ptr ds:[905368]
*}
end;

//004105C4
function kernel32.CompareStringW(dwCmpFlags:Types.DWORD; lpString1:PWideChar; cchCount1:Integer; lpString2:PWideChar; cchCount2:Integer):Integer; stdcall;
begin
{*
 004105C4    jmp         dword ptr ds:[90536C]
*}
end;

//004105CC
procedure kernel32.dll;
begin
{*
 004105CC    push        9080A0
 004105D1    call        @DelayLoadHelper2
 004105D6    pop         ecx
 004105D7    pop         edx
 004105D8    xchg        eax,dword ptr [esp]
 004105DB    ret
*}
end;

//004105DC
function kernel32.CopyFileW(lpNewFileName:PWideChar; bFailIfExists:LongBool):LongBool; stdcall;
begin
{*
 004105DC    jmp         dword ptr ds:[905364]
*}
end;

//004105E4
function kernel32.CreateDirectoryW(lpSecurityAttributes:PSecurityAttributes):LongBool; stdcall;
begin
{*
 004105E4    jmp         dword ptr ds:[905360]
*}
end;

//004105EC
function kernel32.CreateEventW(bManualReset:LongBool; bInitialState:LongBool; lpName:PWideChar):THandle; stdcall;
begin
{*
 004105EC    jmp         dword ptr ds:[90535C]
*}
end;

//004105F4
function kernel32.CreateFileW(dwDesiredAccess:Types.DWORD; dwShareMode:Types.DWORD; lpSecurityAttributes:PSecurityAttributes; dwCreationDisposition:Types.DWORD; dwFlagsAndAttributes:Types.DWORD; hTemplateFile:THandle):THandle; stdcall;
begin
{*
 004105F4    jmp         dword ptr ds:[905358]
*}
end;

//004105FC
function kernel32.CreateFileA(dwDesiredAccess:Types.DWORD; dwShareMode:Types.DWORD; lpSecurityAttributes:PSecurityAttributes; dwCreationDisposition:Types.DWORD; dwFlagsAndAttributes:Types.DWORD; hTemplateFile:THandle):THandle; stdcall;
begin
{*
 004105FC    jmp         dword ptr ds:[905354]
*}
end;

//00410604
function kernel32.CreateSemaphoreA(lInitialCount:LongInt; lMaximumCount:LongInt; lpName:MarshaledAString):THandle; stdcall;
begin
{*
 00410604    jmp         dword ptr ds:[905350]
*}
end;

//0041060C
function kernel32.CreateThread(StackSize:NativeUInt; ThreadFunc:TThreadFunc; Parameter:Pointer; CreationFlags:Cardinal; var ThreadId:Cardinal):NativeUInt; stdcall;
begin
{*
 0041060C    jmp         dword ptr ds:[90534C]
*}
end;

//00410614
procedure kernel32.DeleteCriticalSection; stdcall;
begin
{*
 00410614    jmp         dword ptr ds:[905348]
*}
end;

//0041061C
function kernel32.DeleteFileW:LongBool; stdcall;
begin
{*
 0041061C    jmp         dword ptr ds:[905344]
*}
end;

//00410624
function kernel32.DeviceIoControl(dwIoControlCode:Types.DWORD; lpInBuffer:Pointer; nInBufferSize:Types.DWORD; lpOutBuffer:Pointer; nOutBufferSize:Types.DWORD; var lpBytesReturned:Types.DWORD; lpOverlapped:POverlapped):LongBool; stdcall;
begin
{*
 00410624    jmp         dword ptr ds:[905340]
*}
end;

//0041062C
procedure kernel32.EnterCriticalSection; stdcall;
begin
{*
 0041062C    jmp         dword ptr ds:[90533C]
*}
end;

//00410634
function kernel32.EnumCalendarInfoW(Locale:Types.DWORD; Calendar:Types.DWORD; CalType:Types.DWORD):LongBool; stdcall;
begin
{*
 00410634    jmp         dword ptr ds:[905338]
*}
end;

//0041063C
function kernel32.FileTimeToDosDateTime(var lpFatDate:Word; var lpFatTime:Word):LongBool;
begin
{*
 0041063C    jmp         dword ptr ds:[905334]
*}
end;

//00410644
function kernel32.FileTimeToLocalFileTime(var lpLocalFileTime:_FILETIME):LongBool;
begin
{*
 00410644    jmp         dword ptr ds:[905330]
*}
end;

//0041064C
function kernel32.FileTimeToSystemTime(var lpSystemTime:_SYSTEMTIME):LongBool; stdcall;
begin
{*
 0041064C    jmp         dword ptr ds:[90532C]
*}
end;

//00410654
procedure kernel32.FindClose;
begin
{*
 00410654    jmp         dword ptr ds:[905328]
*}
end;

//0041065C
function kernel32.FindFirstFileW(var lpFindFileData:_WIN32_FIND_DATAW):THandle; stdcall;
begin
{*
 0041065C    jmp         dword ptr ds:[905324]
*}
end;

//00410664
function kernel32.FindFirstFileA(var lpFindFileData:_WIN32_FIND_DATAA):THandle; stdcall;
begin
{*
 00410664    jmp         dword ptr ds:[905320]
*}
end;

//0041066C
function kernel32.FindNextFileW(var lpFindFileData:_WIN32_FIND_DATAW):LongBool; stdcall;
begin
{*
 0041066C    jmp         dword ptr ds:[90531C]
*}
end;

//00410674
function kernel32.FindNextFileA(var lpFindFileData:_WIN32_FIND_DATAA):LongBool; stdcall;
begin
{*
 00410674    jmp         dword ptr ds:[905318]
*}
end;

//0041067C
function kernel32.FindResourceW(lpName:PWideChar; lpType:PWideChar):HRSRC; stdcall;
begin
{*
 0041067C    jmp         dword ptr ds:[905314]
*}
end;

//00410684
function kernel32.FormatMessageW(lpSource:Pointer; dwMessageId:Types.DWORD; dwLanguageId:Types.DWORD; lpBuffer:PWideChar; nSize:Types.DWORD; Arguments:Pointer):DWORD; stdcall;
begin
{*
 00410684    jmp         dword ptr ds:[905310]
*}
end;

//0041068C
function kernel32.FreeLibrary:LongBool; stdcall;
begin
{*
 0041068C    jmp         dword ptr ds:[90530C]
*}
end;

//00410694
function kernel32.InterlockedCompareExchange(Exchange:Integer; Comparand:Integer):Integer; stdcall;
begin
{*
 00410694    jmp         dword ptr ds:[905308]
*}
end;

//0041069C
function kernel32.InterlockedDecrement:Integer; stdcall;
begin
{*
 0041069C    jmp         dword ptr ds:[905304]
*}
end;

//004106A4
function kernel32.InterlockedExchange(Value:Integer):Integer; stdcall;
begin
{*
 004106A4    jmp         dword ptr ds:[905300]
*}
end;

//004106AC
function kernel32.InterlockedIncrement:Integer; stdcall;
begin
{*
 004106AC    jmp         dword ptr ds:[9052FC]
*}
end;

//004106B4
function kernel32.FreeResource:LongBool; stdcall;
begin
{*
 004106B4    jmp         dword ptr ds:[9052F8]
*}
end;

//004106BC
function kernel32.GetACP:Cardinal;
begin
{*
 004106BC    jmp         dword ptr ds:[9052F4]
*}
end;

//004106C4
function kernel32.GetCPInfo(var lpCPInfo:_cpinfo):LongBool; stdcall;
begin
{*
 004106C4    jmp         dword ptr ds:[9052F0]
*}
end;

//004106CC
function kernel32.GetCPInfoExW(dwFlags:Types.DWORD; var lpCPInfoEx:_cpinfoExW):LongBool; stdcall;
begin
{*
 004106CC    jmp         dword ptr ds:[9052EC]
*}
end;

//004106D4
function kernel32.GetComputerNameW(var nSize:Types.DWORD):LongBool; stdcall;
begin
{*
 004106D4    jmp         dword ptr ds:[9052E8]
*}
end;

//004106DC
function kernel32.GetCurrentProcess:THandle;
begin
{*
 004106DC    jmp         dword ptr ds:[9052E4]
*}
end;

//004106E4
function kernel32.GetCurrentProcessId:DWORD;
begin
{*
 004106E4    jmp         dword ptr ds:[9052E0]
*}
end;

//004106EC
function kernel32.GetCurrentThread:THandle;
begin
{*
 004106EC    jmp         dword ptr ds:[9052DC]
*}
end;

//004106F4
function kernel32.GetCurrentThreadId:Cardinal;
begin
{*
 004106F4    jmp         dword ptr ds:[9052D8]
*}
end;

//004106FC
function kernel32.GetDateFormatW(dwFlags:Types.DWORD; lpDate:PSystemTime; lpFormat:PWideChar; lpDateStr:PWideChar; cchDate:Integer):Integer; stdcall;
begin
{*
 004106FC    jmp         dword ptr ds:[9052D4]
*}
end;

//00410704
function kernel32.GetDiskFreeSpaceW(var lpSectorsPerCluster:Types.DWORD; var lpBytesPerSector:Types.DWORD; var lpNumberOfFreeClusters:Types.DWORD; var lpTotalNumberOfClusters:Types.DWORD):LongBool; stdcall;
begin
{*
 00410704    jmp         dword ptr ds:[9052D0]
*}
end;

//0041070C
function kernel32.GetEnvironmentVariableA(lpBuffer:MarshaledAString; nSize:Types.DWORD):DWORD; stdcall;
begin
{*
 0041070C    jmp         dword ptr ds:[9052CC]
*}
end;

//00410714
function kernel32.GetExitCodeThread(var lpExitCode:Types.DWORD):LongBool; stdcall;
begin
{*
 00410714    jmp         dword ptr ds:[9052C8]
*}
end;

//0041071C
function kernel32.GetFileAttributesW:DWORD; stdcall;
begin
{*
 0041071C    jmp         dword ptr ds:[9052C4]
*}
end;

//00410724
function kernel32.GetFileSize(lpFileSizeHigh:Pointer):Cardinal; stdcall;
begin
{*
 00410724    jmp         dword ptr ds:[9052C0]
*}
end;

//0041072C
function kernel32.GetFullPathNameW(nBufferLength:Types.DWORD; lpBuffer:PWideChar; var lpFilePart:PWideChar):DWORD; stdcall;
begin
{*
 0041072C    jmp         dword ptr ds:[9052BC]
*}
end;

//00410734
function kernel32.GetLastError:Integer;
begin
{*
 00410734    jmp         dword ptr ds:[9052B8]
*}
end;

//0041073C
procedure kernel32.GetLocalTime; stdcall;
begin
{*
 0041073C    jmp         dword ptr ds:[9052B4]
*}
end;

//00410744
function kernel32.GetLocaleInfoW(LCType:Types.DWORD; lpLCData:PWideChar; cchData:Integer):Integer; stdcall;
begin
{*
 00410744    jmp         dword ptr ds:[9052B0]
*}
end;

//0041074C
function kernel32.GetModuleFileNameW(lpFilename:PWideChar; nSize:Types.DWORD):DWORD; stdcall;
begin
{*
 0041074C    jmp         dword ptr ds:[9052AC]
*}
end;

//00410754
function kernel32.GetModuleFileNameA(Filename:@PAnsiChr; Size:Integer):Integer; stdcall;
begin
{*
 00410754    jmp         dword ptr ds:[9052A8]
*}
end;

//0041075C
function kernel32.GetModuleHandleW:HINST; stdcall;
begin
{*
 0041075C    jmp         dword ptr ds:[9052A4]
*}
end;

//00410764
function kernel32.GetModuleHandleA:HINST; stdcall;
begin
{*
 00410764    jmp         dword ptr ds:[9052A0]
*}
end;

//0041076C
function kernel32.GetPrivateProfileStringW(lpKeyName:PWideChar; lpDefault:PWideChar; lpReturnedString:PWideChar; nSize:Types.DWORD; lpFileName:PWideChar):DWORD; stdcall;
begin
{*
 0041076C    jmp         dword ptr ds:[90529C]
*}
end;

//00410774
function kernel32.GetProcAddress(lpProcName:MarshaledAString):Pointer; stdcall;
begin
{*
 00410774    jmp         dword ptr ds:[905298]
*}
end;

//0041077C
function GetProcAddress(hModule:HMODULE; lpProcName:PWideChar):Pointer; stdcall;
begin
{*
 0041077C    push        ebp
 0041077D    mov         ebp,esp
 0041077F    push        0
 00410781    push        ebx
 00410782    push        esi
 00410783    mov         ebx,dword ptr [ebp+0C]
 00410786    mov         esi,dword ptr [ebp+8]
 00410789    xor         eax,eax
 0041078B    push        ebp
 0041078C    push        4107DF
 00410791    push        dword ptr fs:[eax]
 00410794    mov         dword ptr fs:[eax],esp
 00410797    mov         eax,ebx
 00410799    shr         eax,10
>0041079C    jne         004107A9
 0041079E    push        ebx
 0041079F    push        esi
 004107A0    call        kernel32.GetProcAddress
 004107A5    mov         ebx,eax
>004107A7    jmp         004107C9
 004107A9    lea         eax,[ebp-4]
 004107AC    mov         edx,ebx
 004107AE    mov         ecx,0
 004107B3    call        @LStrFromPWChar
 004107B8    mov         eax,dword ptr [ebp-4]
 004107BB    call        @LStrToPChar
 004107C0    push        eax
 004107C1    push        esi
 004107C2    call        kernel32.GetProcAddress
 004107C7    mov         ebx,eax
 004107C9    xor         eax,eax
 004107CB    pop         edx
 004107CC    pop         ecx
 004107CD    pop         ecx
 004107CE    mov         dword ptr fs:[eax],edx
 004107D1    push        4107E6
 004107D6    lea         eax,[ebp-4]
 004107D9    call        @LStrClr
 004107DE    ret
>004107DF    jmp         @HandleFinally
>004107E4    jmp         004107D6
 004107E6    mov         eax,ebx
 004107E8    pop         esi
 004107E9    pop         ebx
 004107EA    pop         ecx
 004107EB    pop         ebp
 004107EC    ret         8
*}
end;

//004107F0
function kernel32.GetProcessHeap:THandle;
begin
{*
 004107F0    jmp         dword ptr ds:[905294]
*}
end;

//004107F8
function kernel32.GetStdHandle:THandle; stdcall;
begin
{*
 004107F8    jmp         dword ptr ds:[905290]
*}
end;

//00410800
procedure $thunk_ActivateActCtx;
begin
{*
 00410800    push        eax
 00410801    push        edx
 00410802    push        ecx
 00410803    push        908224;^$thunk_ActivateActCtx
>00410808    jmp         kernel32.dll
*}
end;

//00410810
procedure sub_00410810;
begin
{*
 00410810    jmp         dword ptr ds:[908224]
*}
end;

//00410818
procedure kernel32.GetSystemTime; stdcall;
begin
{*
 00410818    jmp         dword ptr ds:[90528C]
*}
end;

//00410820
function kernel32.GetTempFileNameW(lpPrefixString:PWideChar; uUnique:LongWord; lpTempFileName:PWideChar):LongWord; stdcall;
begin
{*
 00410820    jmp         dword ptr ds:[905288]
*}
end;

//00410828
function kernel32.GetThreadLocale:Cardinal;
begin
{*
 00410828    jmp         dword ptr ds:[905284]
*}
end;

//00410830
function kernel32.GetThreadPriority:Integer; stdcall;
begin
{*
 00410830    jmp         dword ptr ds:[905280]
*}
end;

//00410838
function kernel32.GetTickCount:Cardinal;
begin
{*
 00410838    jmp         dword ptr ds:[90527C]
*}
end;

//00410840
function kernel32.GetVersion:DWORD;
begin
{*
 00410840    jmp         dword ptr ds:[905278]
*}
end;

//00410848
function kernel32.GetVersionExW:LongBool; stdcall;
begin
{*
 00410848    jmp         dword ptr ds:[905274]
*}
end;

//00410850
function kernel32.GetVersionExW:LongBool; stdcall;
begin
{*
 00410850    jmp         dword ptr ds:[905274]
*}
end;

//00410858
function kernel32.GetVolumeInformationA(lpVolumeNameBuffer:MarshaledAString; nVolumeNameSize:Types.DWORD; lpVolumeSerialNumber:PDWORD; var lpMaximumComponentLength:Types.DWORD; var lpFileSystemFlags:Types.DWORD; lpFileSystemNameBuffer:MarshaledAString; nFileSystemNameSize:Types.DWORD):LongBool; stdcall;
begin
{*
 00410858    jmp         dword ptr ds:[905270]
*}
end;

//00410860
function kernel32.GlobalAddAtomW:Word; stdcall;
begin
{*
 00410860    jmp         dword ptr ds:[90526C]
*}
end;

//00410868
function kernel32.GlobalAlloc(dwBytes:NativeUInt):THandle; stdcall;
begin
{*
 00410868    jmp         dword ptr ds:[905268]
*}
end;

//00410870
function kernel32.GlobalDeleteAtom:Word; stdcall;
begin
{*
 00410870    jmp         dword ptr ds:[905264]
*}
end;

//00410878
function kernel32.GlobalFindAtomW:Word; stdcall;
begin
{*
 00410878    jmp         dword ptr ds:[905260]
*}
end;

//00410880
function kernel32.GlobalFree:THandle; stdcall;
begin
{*
 00410880    jmp         dword ptr ds:[90525C]
*}
end;

//00410888
function kernel32.GlobalLock:Pointer; stdcall;
begin
{*
 00410888    jmp         dword ptr ds:[905258]
*}
end;

//00410890
function kernel32.GlobalSize:NativeUInt; stdcall;
begin
{*
 00410890    jmp         dword ptr ds:[905254]
*}
end;

//00410898
function kernel32.GlobalUnlock:LongBool; stdcall;
begin
{*
 00410898    jmp         dword ptr ds:[905250]
*}
end;

//004108A0
function kernel32.HeapAlloc(dwFlags:Types.DWORD; dwBytes:NativeUInt):Pointer; stdcall;
begin
{*
 004108A0    jmp         dword ptr ds:[90524C]
*}
end;

//004108A8
function kernel32.HeapCreate(dwInitialSize:NativeUInt; dwMaximumSize:NativeUInt):THandle; stdcall;
begin
{*
 004108A8    jmp         dword ptr ds:[905248]
*}
end;

//004108B0
function kernel32.HeapDestroy:LongBool; stdcall;
begin
{*
 004108B0    jmp         dword ptr ds:[905244]
*}
end;

//004108B8
function kernel32.HeapFree(Flags:Cardinal; Ptr:Pointer):LongBool; stdcall;
begin
{*
 004108B8    jmp         dword ptr ds:[905240]
*}
end;

//004108C0
function kernel32.HeapReAlloc(dwFlags:Types.DWORD; lpMem:Pointer; dwBytes:NativeUInt):Pointer; stdcall;
begin
{*
 004108C0    jmp         dword ptr ds:[90523C]
*}
end;

//004108C8
procedure kernel32.InitializeCriticalSection; stdcall;
begin
{*
 004108C8    jmp         dword ptr ds:[905238]
*}
end;

//004108D0
function kernel32.IsValidLocale(dwFlags:Cardinal):LongBool; stdcall;
begin
{*
 004108D0    jmp         dword ptr ds:[905234]
*}
end;

//004108D8
procedure kernel32.LeaveCriticalSection; stdcall;
begin
{*
 004108D8    jmp         dword ptr ds:[905230]
*}
end;

//004108E0
function kernel32.LoadLibraryW:HMODULE; stdcall;
begin
{*
 004108E0    jmp         dword ptr ds:[90522C]
*}
end;

//004108E8
function kernel32.LoadLibraryA:HMODULE; stdcall;
begin
{*
 004108E8    jmp         dword ptr ds:[905228]
*}
end;

//004108F0
function kernel32.LoadResource(hResInfo:HRSRC):THandle; stdcall;
begin
{*
 004108F0    jmp         dword ptr ds:[905224]
*}
end;

//004108F8
function kernel32.LocalAlloc(size:Integer):Pointer; stdcall;
begin
{*
 004108F8    jmp         dword ptr ds:[905220]
*}
end;

//00410900
function kernel32.LocalFree:THandle; stdcall;
begin
{*
 00410900    jmp         dword ptr ds:[90521C]
*}
end;

//00410908
function kernel32.LockResource:Pointer; stdcall;
begin
{*
 00410908    jmp         dword ptr ds:[905218]
*}
end;

//00410910
function kernel32.MoveFileW(lpNewFileName:PWideChar):LongBool; stdcall;
begin
{*
 00410910    jmp         dword ptr ds:[905214]
*}
end;

//00410918
function kernel32.MulDiv(nNumerator:Integer; nDenominator:Integer):Integer; stdcall;
begin
{*
 00410918    jmp         dword ptr ds:[905210]
*}
end;

//00410920
function kernel32.OpenSemaphoreA(bInheritHandle:LongBool; lpName:MarshaledAString):THandle; stdcall;
begin
{*
 00410920    jmp         dword ptr ds:[90520C]
*}
end;

//00410928
procedure kernel32.OutputDebugStringA; stdcall;
begin
{*
 00410928    jmp         dword ptr ds:[905208]
*}
end;

//00410930
function kernel32.QueryPerformanceCounter:LongBool; stdcall;
begin
{*
 00410930    jmp         dword ptr ds:[905204]
*}
end;

//00410938
function kernel32.QueryPerformanceFrequency:LongBool; stdcall;
begin
{*
 00410938    jmp         dword ptr ds:[905200]
*}
end;

//00410940
function kernel32.ReadFile(var Buffer:void ; nNumberOfBytesToRead:Types.DWORD; var lpNumberOfBytesRead:Types.DWORD; lpOverlapped:POverlapped):LongBool; stdcall;
begin
{*
 00410940    jmp         dword ptr ds:[9051FC]
*}
end;

//00410948
function kernel32.ReleaseSemaphore(lReleaseCount:LongInt; lpPreviousCount:Pointer):LongBool; stdcall;
begin
{*
 00410948    jmp         dword ptr ds:[9051F8]
*}
end;

//00410950
function kernel32.RemoveDirectoryW:LongBool; stdcall;
begin
{*
 00410950    jmp         dword ptr ds:[9051F4]
*}
end;

//00410958
function kernel32.ResetEvent:LongBool; stdcall;
begin
{*
 00410958    jmp         dword ptr ds:[9051F0]
*}
end;

//00410960
function kernel32.ResumeThread:DWORD; stdcall;
begin
{*
 00410960    jmp         dword ptr ds:[9051EC]
*}
end;

//00410968
function kernel32.SearchPathA(lpFileName:MarshaledAString; lpExtension:MarshaledAString; nBufferLength:Types.DWORD; lpBuffer:MarshaledAString; var lpFilePart:MarshaledAString):DWORD; stdcall;
begin
{*
 00410968    jmp         dword ptr ds:[9051E8]
*}
end;

//00410970
function kernel32.SetEndOfFile:LongBool; stdcall;
begin
{*
 00410970    jmp         dword ptr ds:[9051E4]
*}
end;

//00410978
function kernel32.SetErrorMode:LongWord; stdcall;
begin
{*
 00410978    jmp         dword ptr ds:[9051E0]
*}
end;

//00410980
function kernel32.SetEvent:LongBool; stdcall;
begin
{*
 00410980    jmp         dword ptr ds:[9051DC]
*}
end;

//00410988
function kernel32.SetFilePointer(lDistanceToMove:Integer; lpDistanceToMoveHigh:Pointer; dwMoveMethod:Cardinal):Cardinal; stdcall;
begin
{*
 00410988    jmp         dword ptr ds:[9051D8]
*}
end;

//00410990
procedure kernel32.SetLastError; stdcall;
begin
{*
 00410990    jmp         dword ptr ds:[9051D4]
*}
end;

//00410998
function kernel32.SetThreadLocale:LongBool; stdcall;
begin
{*
 00410998    jmp         dword ptr ds:[9051D0]
*}
end;

//004109A0
function kernel32.SetThreadPriority(nPriority:Integer):LongBool; stdcall;
begin
{*
 004109A0    jmp         dword ptr ds:[9051CC]
*}
end;

//004109A8
function kernel32.SizeofResource(hResInfo:HRSRC):DWORD; stdcall;
begin
{*
 004109A8    jmp         dword ptr ds:[9051C8]
*}
end;

//004109B0
procedure kernel32.Sleep; stdcall;
begin
{*
 004109B0    jmp         dword ptr ds:[9051C4]
*}
end;

//004109B8
function kernel32.SuspendThread:DWORD; stdcall;
begin
{*
 004109B8    jmp         dword ptr ds:[9051C0]
*}
end;

//004109C0
procedure kernel32.SwitchToThread;
begin
{*
 004109C0    jmp         dword ptr ds:[9051BC]
*}
end;

//004109C8
procedure kernel32.SystemTimeToFileTime(var Dest:TFileTime); stdcall;
begin
{*
 004109C8    jmp         dword ptr ds:[9051B8]
*}
end;

//004109D0
function kernel32.TerminateProcess(uExitCode:LongWord):LongBool; stdcall;
begin
{*
 004109D0    jmp         dword ptr ds:[9051B4]
*}
end;

//004109D8
function kernel32.TlsAlloc:DWORD;
begin
{*
 004109D8    jmp         dword ptr ds:[9051B0]
*}
end;

//004109E0
function kernel32.TlsSetValue(lpTlsValue:Pointer):LongBool; stdcall;
begin
{*
 004109E0    jmp         dword ptr ds:[9051AC]
*}
end;

//004109E8
function kernel32.VerifyVersionInfoW(dwTypeMask:Types.DWORD; dwlConditionMask:UInt64):LongBool; stdcall;
begin
{*
 004109E8    jmp         dword ptr ds:[9051A8]
*}
end;

//004109F0
{*function kernel32.VerSetConditionMask:?;
begin
 004109F0    jmp         dword ptr ds:[9051A4]
end;*}

//004109F8
function kernel32.VirtualAlloc(dwSize:NativeUInt; flAllocationType:Types.DWORD; flProtect:Types.DWORD):Pointer; stdcall;
begin
{*
 004109F8    jmp         dword ptr ds:[9051A0]
*}
end;

//00410A00
function kernel32.VirtualFree(dwSize:NativeUInt; dwFreeType:Cardinal):LongBool; stdcall;
begin
{*
 00410A00    jmp         dword ptr ds:[90519C]
*}
end;

//00410A08
function kernel32.VirtualProtect(dwSize:NativeUInt; flNewProtect:Types.DWORD; var OldProtect:Types.DWORD):LongBool; stdcall;
begin
{*
 00410A08    jmp         dword ptr ds:[905198]
*}
end;

//00410A10
function kernel32.VirtualQuery(var lpBuffer:TMemoryBasicInformation; dwLength:NativeUInt):NativeUInt; stdcall;
begin
{*
 00410A10    jmp         dword ptr ds:[905194]
*}
end;

//00410A18
function kernel32.VirtualQueryEx(lpAddress:Pointer; var lpBuffer:_MEMORY_BASIC_INFORMATION; dwLength:NativeUInt):NativeUInt; stdcall;
begin
{*
 00410A18    jmp         dword ptr ds:[905190]
*}
end;

//00410A20
function kernel32.WaitForMultipleObjectsEx(lpHandles:PWOHandleArray; bWaitAll:LongBool; dwMilliseconds:Types.DWORD; bAlertable:LongBool):DWORD; stdcall;
begin
{*
 00410A20    jmp         dword ptr ds:[90518C]
*}
end;

//00410A28
function kernel32.WaitForSingleObject(dwMilliseconds:Types.DWORD):DWORD; stdcall;
begin
{*
 00410A28    jmp         dword ptr ds:[905188]
*}
end;

//00410A30
function kernel32.WideCharToMultiByte(dwFlags:Types.DWORD; lpWideCharStr:PWideChar; cchWideChar:Integer; lpMultiByteStr:MarshaledAString; cchMultiByte:Integer; lpDefaultChar:MarshaledAString; lpUsedDefaultChar:PBOOL):Integer; stdcall;
begin
{*
 00410A30    jmp         dword ptr ds:[905184]
*}
end;

//00410A38
function kernel32.WriteFile(const Buffer:void ; nNumberOfBytesToWrite:Types.DWORD; var lpNumberOfBytesWritten:Types.DWORD; lpOverlapped:POverlapped):LongBool; stdcall;
begin
{*
 00410A38    jmp         dword ptr ds:[905180]
*}
end;

//00410A40
function kernel32.WritePrivateProfileStringW(lpKeyName:PWideChar; lpString:PWideChar; lpFileName:PWideChar):LongBool; stdcall;
begin
{*
 00410A40    jmp         dword ptr ds:[90517C]
*}
end;

//00410A48
function kernel32.lstrcmpW(lpString2:PWideChar):Integer; stdcall;
begin
{*
 00410A48    jmp         dword ptr ds:[905178]
*}
end;

//00410A50
function version.GetFileVersionInfoW(dwHandle:Types.DWORD; dwLen:Types.DWORD; lpData:Pointer):LongBool; stdcall;
begin
{*
 00410A50    jmp         dword ptr ds:[905170]
*}
end;

//00410A58
function version.GetFileVersionInfoSizeW(var lpdwHandle:Types.DWORD):DWORD; stdcall;
begin
{*
 00410A58    jmp         dword ptr ds:[90516C]
*}
end;

//00410A60
function version.VerQueryValueW(lpSubBlock:PWideChar; var lplpBuffer:Pointer; var puLen:LongWord):LongBool; stdcall;
begin
{*
 00410A60    jmp         dword ptr ds:[905168]
*}
end;

//00410A68
procedure msimg32.dll;
begin
{*
 00410A68    push        908080
 00410A6D    call        @DelayLoadHelper2
 00410A72    pop         ecx
 00410A73    pop         edx
 00410A74    xchg        eax,dword ptr [esp]
 00410A77    ret
*}
end;

//00410A78
procedure $thunk_AlphaBlend;
begin
{*
 00410A78    push        eax
 00410A79    push        edx
 00410A7A    push        ecx
 00410A7B    push        90821C;^$thunk_AlphaBlend
>00410A80    jmp         msimg32.dll
*}
end;

//00410A88
function AlphaBlend(DC:HDC; p2:Integer; p3:Integer; p4:Integer; p5:Integer; DC6:HDC; p7:Integer; p8:Integer; p9:Integer; p10:Integer; p11:_BLENDFUNCTION):LongBool; stdcall;
begin
{*
 00410A88    jmp         dword ptr ds:[90821C]
*}
end;

//00410A90
function gdi32.AngleArc(p2:Integer; p3:Integer; p4:Types.DWORD; p5:Single; p6:Single):LongBool; stdcall;
begin
{*
 00410A90    jmp         dword ptr ds:[905160]
*}
end;

//00410A98
function gdi32.Arc(left:Integer; top:Integer; right:Integer; bottom:Integer; startX:Integer; startY:Integer; endX:Integer; endY:Integer):LongBool; stdcall;
begin
{*
 00410A98    jmp         dword ptr ds:[90515C]
*}
end;

//00410AA0
function gdi32.ArcTo(RLeft:Integer; RTop:Integer; RRight:Integer; RBottom:Integer; X1:Integer; Y1:Integer; X2:Integer; Y2:Integer):LongBool; stdcall;
begin
{*
 00410AA0    jmp         dword ptr ds:[905158]
*}
end;

//00410AA8
function gdi32.BitBlt(X:Integer; Y:Integer; Width:Integer; Height:Integer; SrcDC:HDC; XSrc:Integer; YSrc:Integer; Rop:Types.DWORD):LongBool; stdcall;
begin
{*
 00410AA8    jmp         dword ptr ds:[905154]
*}
end;

//00410AB0
function gdi32.Chord(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer; X3:Integer; Y3:Integer; X4:Integer; Y4:Integer):LongBool; stdcall;
begin
{*
 00410AB0    jmp         dword ptr ds:[905150]
*}
end;

//00410AB8
function gdi32.CopyEnhMetaFileW(p2:PWideChar):HENHMETAFILE; stdcall;
begin
{*
 00410AB8    jmp         dword ptr ds:[90514C]
*}
end;

//00410AC0
function gdi32.CreateBitmap(Height:Integer; Planes:LongInt; BitCount:LongInt; Bits:Pointer):HBITMAP; stdcall;
begin
{*
 00410AC0    jmp         dword ptr ds:[905148]
*}
end;

//00410AC8
function gdi32.CreateBrushIndirect:HBRUSH; stdcall;
begin
{*
 00410AC8    jmp         dword ptr ds:[905144]
*}
end;

//00410AD0
function gdi32.CreateCompatibleBitmap(Width:Integer; Height:Integer):HBITMAP; stdcall;
begin
{*
 00410AD0    jmp         dword ptr ds:[905140]
*}
end;

//00410AD8
function gdi32.CreateCompatibleDC:HDC; stdcall;
begin
{*
 00410AD8    jmp         dword ptr ds:[90513C]
*}
end;

//00410AE0
function gdi32.CreateDCW(lpszDevice:PWideChar; lpszOutput:PWideChar; lpdvmInit:PDeviceModeW):HDC; stdcall;
begin
{*
 00410AE0    jmp         dword ptr ds:[905138]
*}
end;

//00410AE8
function gdi32.CreateDIBSection(const p2:tagBITMAPINFO; p3:LongWord; var p4:Pointer; p5:THandle; p6:Types.DWORD):HBITMAP; stdcall;
begin
{*
 00410AE8    jmp         dword ptr ds:[905134]
*}
end;

//00410AF0
function gdi32.CreateDIBitmap(var InfoHeader:tagBITMAPINFOHEADER; dwUsage:Types.DWORD; InitBits:Pointer; var InitInfo:tagBITMAPINFO; wUsage:LongWord):HBITMAP; stdcall;
begin
{*
 00410AF0    jmp         dword ptr ds:[905130]
*}
end;

//00410AF8
function gdi32.CreateFontIndirectW:HFONT; stdcall;
begin
{*
 00410AF8    jmp         dword ptr ds:[90512C]
*}
end;

//00410B00
function gdi32.CreateHalftonePalette:HPALETTE; stdcall;
begin
{*
 00410B00    jmp         dword ptr ds:[905128]
*}
end;

//00410B08
function gdi32.CreateICW(lpszDevice:PWideChar; lpszOutput:PWideChar; lpdvmInit:PDeviceModeW):HDC; stdcall;
begin
{*
 00410B08    jmp         dword ptr ds:[905124]
*}
end;

//00410B10
function gdi32.CreatePalette:HPALETTE;
begin
{*
 00410B10    jmp         dword ptr ds:[905120]
*}
end;

//00410B18
function gdi32.CreatePenIndirect:HPEN; stdcall;
begin
{*
 00410B18    jmp         dword ptr ds:[90511C]
*}
end;

//00410B20
function gdi32.CreateRectRgn(p2:Integer; p3:Integer; p4:Integer):HRGN; stdcall;
begin
{*
 00410B20    jmp         dword ptr ds:[905118]
*}
end;

//00410B28
function gdi32.CreateSolidBrush:HBRUSH; stdcall;
begin
{*
 00410B28    jmp         dword ptr ds:[905114]
*}
end;

//00410B30
function gdi32.DeleteDC:LongBool; stdcall;
begin
{*
 00410B30    jmp         dword ptr ds:[905110]
*}
end;

//00410B38
function gdi32.DeleteEnhMetaFile:LongBool; stdcall;
begin
{*
 00410B38    jmp         dword ptr ds:[90510C]
*}
end;

//00410B40
function gdi32.DeleteObject:LongBool; stdcall;
begin
{*
 00410B40    jmp         dword ptr ds:[905108]
*}
end;

//00410B48
function gdi32.Ellipse(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer):LongBool; stdcall;
begin
{*
 00410B48    jmp         dword ptr ds:[905104]
*}
end;

//00410B50
function gdi32.EndDoc:Integer; stdcall;
begin
{*
 00410B50    jmp         dword ptr ds:[905100]
*}
end;

//00410B58
function gdi32.EndPage:Integer; stdcall;
begin
{*
 00410B58    jmp         dword ptr ds:[9050FC]
*}
end;

//00410B60
function gdi32.EnumFontFamiliesExW(const p2:tagLOGFONTW; p3:Pointer; p4:IntPtr; p5:Types.DWORD):LongBool; stdcall;
begin
{*
 00410B60    jmp         dword ptr ds:[9050F8]
*}
end;

//00410B68
function gdi32.EnumFontsW(lpszFace:PWideChar; fntenmprc:Pointer; lParam:IntPtr):Integer; stdcall;
begin
{*
 00410B68    jmp         dword ptr ds:[9050F4]
*}
end;

//00410B70
function gdi32.ExcludeClipRect(LeftRect:Integer; TopRect:Integer; RightRect:Integer; BottomRect:Integer):Integer; stdcall;
begin
{*
 00410B70    jmp         dword ptr ds:[9050F0]
*}
end;

//00410B78
function gdi32.ExtCreatePen(Width:Types.DWORD; const Brush:tagLOGBRUSH; StyleCount:Types.DWORD; Style:Pointer):HPEN; stdcall;
begin
{*
 00410B78    jmp         dword ptr ds:[9050EC]
*}
end;

//00410B80
function gdi32.ExtFloodFill(X:Integer; Y:Integer; Color:Types.DWORD; FillType:LongWord):LongBool; stdcall;
begin
{*
 00410B80    jmp         dword ptr ds:[9050E8]
*}
end;

//00410B88
function gdi32.ExtTextOutW(X:Integer; Y:Integer; Dx:PInteger; Count:LongInt; const Str:UnicodeString; Rect:Types.PRect; Options:LongInt):LongBool;
begin
{*
 00410B88    jmp         dword ptr ds:[9050E4]
*}
end;

//00410B90
function gdi32.FrameRgn(hrgn:HRGN; hbr:HBRUSH; Width:Integer; Height:Integer):LongBool; stdcall;
begin
{*
 00410B90    jmp         dword ptr ds:[9050E0]
*}
end;

//00410B98
function gdi32.GdiFlush:LongBool;
begin
{*
 00410B98    jmp         dword ptr ds:[9050DC]
*}
end;

//00410BA0
function gdi32.GetBitmapBits(Count:LongInt; Bits:Pointer):LongInt; stdcall;
begin
{*
 00410BA0    jmp         dword ptr ds:[9050D8]
*}
end;

//00410BA8
function gdi32.GetBrushOrgEx(var lppt:Types.TPoint):LongBool; stdcall;
begin
{*
 00410BA8    jmp         dword ptr ds:[9050D4]
*}
end;

//00410BB0
function gdi32.GetClipBox(var Rect:Types.TRect):Integer; stdcall;
begin
{*
 00410BB0    jmp         dword ptr ds:[9050D0]
*}
end;

//00410BB8
function gdi32.GetCurrentPositionEx(Point:Types.PPoint):LongBool; stdcall;
begin
{*
 00410BB8    jmp         dword ptr ds:[9050CC]
*}
end;

//00410BC0
function gdi32.GetDIBColorTable(p2:LongWord; p3:LongWord; var RGBQuadStructs:void ):LongWord; stdcall;
begin
{*
 00410BC0    jmp         dword ptr ds:[9050C8]
*}
end;

//00410BC8
function gdi32.GetDIBits(Bitmap:HBITMAP; StartScan:LongWord; NumScans:LongWord; Bits:Pointer; var BitInfo:tagBITMAPINFO; Usage:LongWord):Integer; stdcall;
begin
{*
 00410BC8    jmp         dword ptr ds:[9050C4]
*}
end;

//00410BD0
function gdi32.GetDeviceCaps(Index:Integer):Integer; stdcall;
begin
{*
 00410BD0    jmp         dword ptr ds:[9050C0]
*}
end;

//00410BD8
function gdi32.GetEnhMetaFileBits(p2:LongWord; p3:Types.PByte):LongWord; stdcall;
begin
{*
 00410BD8    jmp         dword ptr ds:[9050BC]
*}
end;

//00410BE0
function gdi32.GetEnhMetaFileDescriptionW(p2:LongWord; p3:PWideChar):LongWord; stdcall;
begin
{*
 00410BE0    jmp         dword ptr ds:[9050B8]
*}
end;

//00410BE8
function gdi32.GetEnhMetaFileHeader(p2:LongWord; p3:PEnhMetaHeader):LongWord; stdcall;
begin
{*
 00410BE8    jmp         dword ptr ds:[9050B4]
*}
end;

//00410BF0
function gdi32.GetEnhMetaFilePaletteEntries(p2:LongWord; p3:Pointer):LongWord; stdcall;
begin
{*
 00410BF0    jmp         dword ptr ds:[9050B0]
*}
end;

//00410BF8
function gdi32.GetObjectW(p2:Integer; p3:Pointer):Integer; stdcall;
begin
{*
 00410BF8    jmp         dword ptr ds:[9050AC]
*}
end;

//00410C00
function gdi32.GetPaletteEntries(StartIndex:LongWord; NumEntries:LongWord; var PaletteEntries:void ):LongWord; stdcall;
begin
{*
 00410C00    jmp         dword ptr ds:[9050A8]
*}
end;

//00410C08
function gdi32.GetPixel(X:Integer; Y:Integer):DWORD; stdcall;
begin
{*
 00410C08    jmp         dword ptr ds:[9050A4]
*}
end;

//00410C10
function gdi32.GetRgnBox(var p2:Types.TRect):Integer; stdcall;
begin
{*
 00410C10    jmp         dword ptr ds:[9050A0]
*}
end;

//00410C18
function gdi32.GetStockObject:HGDIOBJ; stdcall;
begin
{*
 00410C18    jmp         dword ptr ds:[90509C]
*}
end;

//00410C20
function gdi32.GetSystemPaletteEntries(StartIndex:LongWord; NumEntries:LongWord; var PaletteEntries:void ):LongWord; stdcall;
begin
{*
 00410C20    jmp         dword ptr ds:[905098]
*}
end;

//00410C28
function gdi32.GetTextExtentPoint32W(Str:PWideChar; Count:Integer; var Size:Types.TSize):LongBool; stdcall;
begin
{*
 00410C28    jmp         dword ptr ds:[905094]
*}
end;

//00410C30
function gdi32.GetTextExtentPointW(Str:PWideChar; Count:Integer; var Size:Types.TSize):LongBool; stdcall;
begin
{*
 00410C30    jmp         dword ptr ds:[905090]
*}
end;

//00410C38
function gdi32.GetTextMetricsW(var TM:tagTEXTMETRICW):LongBool; stdcall;
begin
{*
 00410C38    jmp         dword ptr ds:[90508C]
*}
end;

//00410C40
function gdi32.GetWinMetaFileBits(p2:LongWord; p3:Types.PByte; p4:Integer; p5:HDC):LongWord; stdcall;
begin
{*
 00410C40    jmp         dword ptr ds:[905088]
*}
end;

//00410C48
function gdi32.GetWindowOrgEx(var Point:Types.TPoint):LongBool; stdcall;
begin
{*
 00410C48    jmp         dword ptr ds:[905084]
*}
end;

//00410C50
procedure $thunk_AlphaDIBBlend;
begin
{*
 00410C50    push        eax
 00410C51    push        edx
 00410C52    push        ecx
 00410C53    push        908218;^$thunk_AlphaDIBBlend
>00410C58    jmp         msimg32.dll
*}
end;

//00410C60
procedure sub_00410C60;
begin
{*
 00410C60    jmp         dword ptr ds:[908218]
*}
end;

//00410C68
function gdi32.IntersectClipRect(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer):Integer; stdcall;
begin
{*
 00410C68    jmp         dword ptr ds:[905080]
*}
end;

//00410C70
function gdi32.LineTo(X:Integer; Y:Integer):LongBool; stdcall;
begin
{*
 00410C70    jmp         dword ptr ds:[90507C]
*}
end;

//00410C78
function gdi32.MaskBlt(XDest:Integer; YDest:Integer; Width:Integer; Height:Integer; SrcDC:HDC; XScr:Integer; YScr:Integer; Mask:HBITMAP; xMask:Integer; yMask:Integer; Rop:Types.DWORD):LongBool; stdcall;
begin
{*
 00410C78    jmp         dword ptr ds:[905078]
*}
end;

//00410C80
function gdi32.MoveToEx(p2:Integer; p3:Integer; p4:Types.PPoint):LongBool; stdcall;
begin
{*
 00410C80    jmp         dword ptr ds:[905074]
*}
end;

//00410C88
function gdi32.PatBlt(X:Integer; Y:Integer; Width:Integer; Height:Integer; Rop:Types.DWORD):LongBool; stdcall;
begin
{*
 00410C88    jmp         dword ptr ds:[905070]
*}
end;

//00410C90
function gdi32.Pie(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer; X3:Integer; Y3:Integer; X4:Integer; Y4:Integer):LongBool; stdcall;
begin
{*
 00410C90    jmp         dword ptr ds:[90506C]
*}
end;

//00410C98
function gdi32.PlayEnhMetaFile(p2:HENHMETAFILE; const p3:Types.TRect):LongBool; stdcall;
begin
{*
 00410C98    jmp         dword ptr ds:[905068]
*}
end;

//00410CA0
function gdi32.PolyBezier(const Points:void ; Count:Types.DWORD):LongBool; stdcall;
begin
{*
 00410CA0    jmp         dword ptr ds:[905064]
*}
end;

//00410CA8
function gdi32.PolyBezierTo(const Points:void ; Count:Types.DWORD):LongBool; stdcall;
begin
{*
 00410CA8    jmp         dword ptr ds:[905060]
*}
end;

//00410CB0
function gdi32.PolyPolyline(const PointStructs:void ; const Points:void ; p4:Types.DWORD):LongBool; stdcall;
begin
{*
 00410CB0    jmp         dword ptr ds:[90505C]
*}
end;

//00410CB8
function gdi32.Polygon(const Points:void ; Count:Integer):LongBool; stdcall;
begin
{*
 00410CB8    jmp         dword ptr ds:[905058]
*}
end;

//00410CC0
function gdi32.Polyline(const Points:void ; Count:Integer):LongBool; stdcall;
begin
{*
 00410CC0    jmp         dword ptr ds:[905054]
*}
end;

//00410CC8
function gdi32.RealizePalette:LongWord; stdcall;
begin
{*
 00410CC8    jmp         dword ptr ds:[905050]
*}
end;

//00410CD0
function gdi32.RectVisible(const Rect:Types.TRect):LongBool; stdcall;
begin
{*
 00410CD0    jmp         dword ptr ds:[90504C]
*}
end;

//00410CD8
function gdi32.Rectangle(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer):LongBool; stdcall;
begin
{*
 00410CD8    jmp         dword ptr ds:[905048]
*}
end;

//00410CE0
function gdi32.RestoreDC(SavedDC:Integer):LongBool; stdcall;
begin
{*
 00410CE0    jmp         dword ptr ds:[905044]
*}
end;

//00410CE8
function gdi32.RoundRect(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer; X3:Integer; Y3:Integer):LongBool; stdcall;
begin
{*
 00410CE8    jmp         dword ptr ds:[905040]
*}
end;

//00410CF0
function gdi32.SaveDC:Integer; stdcall;
begin
{*
 00410CF0    jmp         dword ptr ds:[90503C]
*}
end;

//00410CF8
function gdi32.SelectClipRgn(Region:HRGN):Integer; stdcall;
begin
{*
 00410CF8    jmp         dword ptr ds:[905038]
*}
end;

//00410D00
function gdi32.SelectObject(p2:HGDIOBJ):HGDIOBJ; stdcall;
begin
{*
 00410D00    jmp         dword ptr ds:[905034]
*}
end;

//00410D08
function gdi32.SelectPalette(Palette:HPALETTE; ForceBackground:LongBool):HPALETTE; stdcall;
begin
{*
 00410D08    jmp         dword ptr ds:[905030]
*}
end;

//00410D10
function gdi32.SetAbortProc(lpAbortProc:TFNAbortProc):Integer; stdcall;
begin
{*
 00410D10    jmp         dword ptr ds:[90502C]
*}
end;

//00410D18
function gdi32.SetBkColor(Color:Types.DWORD):DWORD; stdcall;
begin
{*
 00410D18    jmp         dword ptr ds:[905028]
*}
end;

//00410D20
function gdi32.SetBkMode(BkMode:Integer):Integer; stdcall;
begin
{*
 00410D20    jmp         dword ptr ds:[905024]
*}
end;

//00410D28
function gdi32.SetBrushOrgEx(X:Integer; Y:Integer; PrevPt:Types.PPoint):LongBool; stdcall;
begin
{*
 00410D28    jmp         dword ptr ds:[905020]
*}
end;

//00410D30
function gdi32.SetDIBColorTable(p2:LongWord; p3:LongWord; var RGBQuadSTructs:void ):LongWord; stdcall;
begin
{*
 00410D30    jmp         dword ptr ds:[90501C]
*}
end;

//00410D38
function gdi32.SetDIBits(Bitmap:HBITMAP; StartScan:LongWord; NumScans:LongWord; Bits:Pointer; var BitsInfo:tagBITMAPINFO; Usage:LongWord):Integer; stdcall;
begin
{*
 00410D38    jmp         dword ptr ds:[905018]
*}
end;

//00410D40
function gdi32.SetEnhMetaFileBits(p2:Types.PByte):HENHMETAFILE; stdcall;
begin
{*
 00410D40    jmp         dword ptr ds:[905014]
*}
end;

//00410D48
function gdi32.SetMapMode(p2:Integer):Integer; stdcall;
begin
{*
 00410D48    jmp         dword ptr ds:[905010]
*}
end;

//00410D50
function gdi32.SetPixel(X:Integer; Y:Integer; Color:Types.DWORD):DWORD; stdcall;
begin
{*
 00410D50    jmp         dword ptr ds:[90500C]
*}
end;

//00410D58
function gdi32.SetROP2(p2:Integer):Integer; stdcall;
begin
{*
 00410D58    jmp         dword ptr ds:[905008]
*}
end;

//00410D60
function gdi32.SetRectRgn(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer):LongBool; stdcall;
begin
{*
 00410D60    jmp         dword ptr ds:[905004]
*}
end;

//00410D68
function gdi32.SetStretchBltMode(StretchMode:Integer):Integer; stdcall;
begin
{*
 00410D68    jmp         dword ptr ds:[905000]
*}
end;

//00410D70
function gdi32.SetTextColor(Color:Types.DWORD):DWORD; stdcall;
begin
{*
 00410D70    jmp         dword ptr ds:[904FFC]
*}
end;

//00410D78
function gdi32.SetViewportExtEx(XExt:Integer; YExt:Integer; Size:Types.PSize):LongBool; stdcall;
begin
{*
 00410D78    jmp         dword ptr ds:[904FF8]
*}
end;

//00410D80
function gdi32.SetViewportOrgEx(X:Integer; Y:Integer; Point:Types.PPoint):LongBool; stdcall;
begin
{*
 00410D80    jmp         dword ptr ds:[904FF4]
*}
end;

//00410D88
function gdi32.SetWinMetaFileBits(p2:Types.PByte; p3:HDC; const p4:tagMETAFILEPICT):HENHMETAFILE; stdcall;
begin
{*
 00410D88    jmp         dword ptr ds:[904FF0]
*}
end;

//00410D90
function gdi32.SetWindowExtEx(XExt:Integer; YExt:Integer; Size:Types.PSize):LongBool; stdcall;
begin
{*
 00410D90    jmp         dword ptr ds:[904FEC]
*}
end;

//00410D98
function gdi32.SetWindowOrgEx(X:Integer; Y:Integer; Point:Types.PPoint):LongBool; stdcall;
begin
{*
 00410D98    jmp         dword ptr ds:[904FE8]
*}
end;

//00410DA0
function gdi32.StartDocW(const p2:_DOCINFOW):Integer; stdcall;
begin
{*
 00410DA0    jmp         dword ptr ds:[904FE4]
*}
end;

//00410DA8
function gdi32.StartPage:Integer; stdcall;
begin
{*
 00410DA8    jmp         dword ptr ds:[904FE0]
*}
end;

//00410DB0
function gdi32.StretchBlt(X:Integer; Y:Integer; Width:Integer; Height:Integer; SrcDC:HDC; XSrc:Integer; YSrc:Integer; SrcWidth:Integer; SrcHeight:Integer; Rop:Types.DWORD):LongBool; stdcall;
begin
{*
 00410DB0    jmp         dword ptr ds:[904FDC]
*}
end;

//00410DB8
function gdi32.UnrealizeObject:LongBool; stdcall;
begin
{*
 00410DB8    jmp         dword ptr ds:[904FD8]
*}
end;

//00410DC0
function user32.ActivateKeyboardLayout(Flags:LongWord):HKL; stdcall;
begin
{*
 00410DC0    jmp         dword ptr ds:[904FD0]
*}
end;

//00410DC8
function user32.AdjustWindowRectEx(dwStyle:Types.DWORD; bMenu:LongBool; dwExStyle:Types.DWORD):LongBool; stdcall;
begin
{*
 00410DC8    jmp         dword ptr ds:[904FCC]
*}
end;

//00410DD0
function user32.BeginDeferWindowPos:THandle; stdcall;
begin
{*
 00410DD0    jmp         dword ptr ds:[904FC4]
*}
end;

//00410DD8
function user32.BeginPaint(var lpPaint:tagPAINTSTRUCT):HDC; stdcall;
begin
{*
 00410DD8    jmp         dword ptr ds:[904FC0]
*}
end;

//00410DE0
procedure user32.dll;
begin
{*
 00410DE0    push        908060
 00410DE5    call        @DelayLoadHelper2
 00410DEA    pop         ecx
 00410DEB    pop         edx
 00410DEC    xchg        eax,dword ptr [esp]
 00410DEF    ret
*}
end;

//00410DF0
function user32.CallNextHookEx(nCode:Integer; wParam:UIntPtr; lParam:IntPtr):IntPtr; stdcall;
begin
{*
 00410DF0    jmp         dword ptr ds:[904FBC]
*}
end;

//00410DF8
function user32.CallWindowProcW(hWnd:HWND; Msg:LongWord; wParam:UIntPtr; lParam:IntPtr):IntPtr; stdcall;
begin
{*
 00410DF8    jmp         dword ptr ds:[904FB8]
*}
end;

//00410E00
function user32.CharLowerW:PWideChar; stdcall;
begin
{*
 00410E00    jmp         dword ptr ds:[904FB4]
*}
end;

//00410E08
function user32.CharLowerBuffW(cchLength:Types.DWORD):DWORD; stdcall;
begin
{*
 00410E08    jmp         dword ptr ds:[904FB0]
*}
end;

//00410E10
function user32.CharLowerBuffW(cchLength:Types.DWORD):DWORD; stdcall;
begin
{*
 00410E10    jmp         dword ptr ds:[904FB0]
*}
end;

//00410E18
function user32.CharNextW:PWideChar; stdcall;
begin
{*
 00410E18    jmp         dword ptr ds:[904FAC]
*}
end;

//00410E20
function user32.CharUpperW:PWideChar; stdcall;
begin
{*
 00410E20    jmp         dword ptr ds:[904FA8]
*}
end;

//00410E28
function user32.CharUpperBuffW(cchLength:Types.DWORD):DWORD; stdcall;
begin
{*
 00410E28    jmp         dword ptr ds:[904FA4]
*}
end;

//00410E30
function user32.CharUpperBuffA(cchLength:Types.DWORD):DWORD; stdcall;
begin
{*
 00410E30    jmp         dword ptr ds:[904FC8]
*}
end;

//00410E38
function user32.CheckMenuItem(uIDCheckItem:LongWord; uCheck:LongWord):DWORD; stdcall;
begin
{*
 00410E38    jmp         dword ptr ds:[904FA0]
*}
end;

//00410E40
function user32.ChildWindowFromPoint(Point:Types.TPoint):HWND; stdcall;
begin
{*
 00410E40    jmp         dword ptr ds:[904F9C]
*}
end;

//00410E48
function user32.ClientToScreen(var lpPoint:Types.TPoint):LongBool; stdcall;
begin
{*
 00410E48    jmp         dword ptr ds:[904F98]
*}
end;

//00410E50
function user32.CloseClipboard:LongBool;
begin
{*
 00410E50    jmp         dword ptr ds:[904F94]
*}
end;

//00410E58
function user32.CopyImage(ImageType:LongWord; X:Integer; Y:Integer; Flags:LongWord):THandle; stdcall;
begin
{*
 00410E58    jmp         dword ptr ds:[904F90]
*}
end;

//00410E60
function user32.CountClipboardFormats:Integer;
begin
{*
 00410E60    jmp         dword ptr ds:[904F8C]
*}
end;

//00410E68
function user32.CreateCaret(hBitmap:HBITMAP; nWidth:Integer; nHeight:Integer):LongBool; stdcall;
begin
{*
 00410E68    jmp         dword ptr ds:[904F88]
*}
end;

//00410E70
function user32.CreateIcon(nWidth:Integer; nHeight:Integer; cPlanes:Byte; cBitsPixel:Byte; lpbANDbits:Pointer; lpbXORbits:Pointer):HICON; stdcall;
begin
{*
 00410E70    jmp         dword ptr ds:[904F84]
*}
end;

//00410E78
function user32.CreateMenu:HMENU;
begin
{*
 00410E78    jmp         dword ptr ds:[904F80]
*}
end;

//00410E80
function user32.CreatePopupMenu:HMENU;
begin
{*
 00410E80    jmp         dword ptr ds:[904F7C]
*}
end;

//00410E88
function user32.DefFrameProcW(hWndMDIClient:HWND; uMsg:LongWord; wParam:UIntPtr; lParam:IntPtr):IntPtr; stdcall;
begin
{*
 00410E88    jmp         dword ptr ds:[904F78]
*}
end;

//00410E90
function user32.DefMDIChildProcW(uMsg:LongWord; wParam:UIntPtr; lParam:IntPtr):IntPtr; stdcall;
begin
{*
 00410E90    jmp         dword ptr ds:[904F74]
*}
end;

//00410E98
function user32.DefWindowProcW(Msg:LongWord; wParam:UIntPtr; lParam:IntPtr):IntPtr; stdcall;
begin
{*
 00410E98    jmp         dword ptr ds:[904F70]
*}
end;

//00410EA0
function user32.DeferWindowPos(hWnd:HWND; hWndInsertAfter:HWND; x:Integer; y:Integer; cx:Integer; cy:Integer; uFlags:LongWord):THandle; stdcall;
begin
{*
 00410EA0    jmp         dword ptr ds:[904F6C]
*}
end;

//00410EA8
function user32.DeleteMenu(uPosition:LongWord; uFlags:LongWord):LongBool; stdcall;
begin
{*
 00410EA8    jmp         dword ptr ds:[904F68]
*}
end;

//00410EB0
function user32.DestroyCaret:LongBool;
begin
{*
 00410EB0    jmp         dword ptr ds:[904F64]
*}
end;

//00410EB8
function user32.DestroyCursor:LongBool; stdcall;
begin
{*
 00410EB8    jmp         dword ptr ds:[904F60]
*}
end;

//00410EC0
function user32.DestroyIcon:LongBool; stdcall;
begin
{*
 00410EC0    jmp         dword ptr ds:[904F5C]
*}
end;

//00410EC8
function user32.DestroyMenu:LongBool; stdcall;
begin
{*
 00410EC8    jmp         dword ptr ds:[904F58]
*}
end;

//00410ED0
function user32.DestroyWindow:LongBool; stdcall;
begin
{*
 00410ED0    jmp         dword ptr ds:[904F54]
*}
end;

//00410ED8
function user32.DispatchMessageW:LongInt; stdcall;
begin
{*
 00410ED8    jmp         dword ptr ds:[904F50]
*}
end;

//00410EE0
function user32.DispatchMessageA:LongInt; stdcall;
begin
{*
 00410EE0    jmp         dword ptr ds:[904F4C]
*}
end;

//00410EE8
function user32.DispatchMessageW:LongInt; stdcall;
begin
{*
 00410EE8    jmp         dword ptr ds:[904F50]
*}
end;

//00410EF0
function user32.DrawEdge(var qrc:Types.TRect; edge:LongWord; grfFlags:LongWord):LongBool; stdcall;
begin
{*
 00410EF0    jmp         dword ptr ds:[904F48]
*}
end;

//00410EF8
function user32.DrawFocusRect(const lprc:Types.TRect):LongBool; stdcall;
begin
{*
 00410EF8    jmp         dword ptr ds:[904F44]
*}
end;

//00410F00
function user32.DrawFrameControl(const Rect:Types.TRect; uType:LongWord; uState:LongWord):LongBool; stdcall;
begin
{*
 00410F00    jmp         dword ptr ds:[904F40]
*}
end;

//00410F08
function user32.DrawIcon(X:Integer; Y:Integer; hIcon:HICON):LongBool; stdcall;
begin
{*
 00410F08    jmp         dword ptr ds:[904F3C]
*}
end;

//00410F10
function user32.DrawIconEx(xLeft:Integer; yTop:Integer; hIcon:HICON; cxWidth:Integer; cyWidth:Integer; istepIfAniCur:LongWord; hbrFlickerFreeDraw:HBRUSH; diFlags:LongWord):LongBool; stdcall;
begin
{*
 00410F10    jmp         dword ptr ds:[904F38]
*}
end;

//00410F18
function user32.DrawMenuBar:LongBool; stdcall;
begin
{*
 00410F18    jmp         dword ptr ds:[904F34]
*}
end;

//00410F20
function user32.DrawTextW(lpString:PWideChar; nCount:Integer; var lpRect:Types.TRect; uFormat:LongWord):Integer; stdcall;
begin
{*
 00410F20    jmp         dword ptr ds:[904F30]
*}
end;

//00410F28
function user32.DrawTextW(lpString:PWideChar; nCount:Integer; var lpRect:Types.TRect; uFormat:LongWord):Integer; stdcall;
begin
{*
 00410F28    jmp         dword ptr ds:[904F30]
*}
end;

//00410F30
function user32.DrawTextExW(lpchText:PWideChar; cchText:Integer; var p4:Types.TRect; dwDTFormat:LongWord; DTParams:PDrawTextParams):Integer; stdcall;
begin
{*
 00410F30    jmp         dword ptr ds:[904F2C]
*}
end;

//00410F38
function user32.EmptyClipboard:LongBool;
begin
{*
 00410F38    jmp         dword ptr ds:[904F28]
*}
end;

//00410F40
function user32.EnableMenuItem(uIDEnableItem:LongWord; uEnable:LongWord):LongBool; stdcall;
begin
{*
 00410F40    jmp         dword ptr ds:[904F24]
*}
end;

//00410F48
function user32.EnableScrollBar(wSBflags:LongWord; wArrows:LongWord):LongBool; stdcall;
begin
{*
 00410F48    jmp         dword ptr ds:[904F20]
*}
end;

//00410F50
function user32.EnableWindow(bEnable:LongBool):LongBool; stdcall;
begin
{*
 00410F50    jmp         dword ptr ds:[904F1C]
*}
end;

//00410F58
function user32.EndDeferWindowPos:LongBool; stdcall;
begin
{*
 00410F58    jmp         dword ptr ds:[904F18]
*}
end;

//00410F60
function user32.EndMenu:LongBool;
begin
{*
 00410F60    jmp         dword ptr ds:[904F14]
*}
end;

//00410F68
function user32.EndPaint(const lpPaint:tagPAINTSTRUCT):LongBool; stdcall;
begin
{*
 00410F68    jmp         dword ptr ds:[904F10]
*}
end;

//00410F70
function user32.EnumChildWindows(lpEnumFunc:Pointer; lParam:IntPtr):LongBool; stdcall;
begin
{*
 00410F70    jmp         dword ptr ds:[904F0C]
*}
end;

//00410F78
function user32.EnumClipboardFormats:LongWord; stdcall;
begin
{*
 00410F78    jmp         dword ptr ds:[904F08]
*}
end;

//00410F80
function user32.EnumThreadWindows(lpfn:Pointer; lParam:IntPtr):LongBool; stdcall;
begin
{*
 00410F80    jmp         dword ptr ds:[904F04]
*}
end;

//00410F88
function user32.EnumWindows(lParam:IntPtr):LongBool; stdcall;
begin
{*
 00410F88    jmp         dword ptr ds:[904F00]
*}
end;

//00410F90
function user32.FillRect(const lprc:Types.TRect; hbr:HBRUSH):Integer; stdcall;
begin
{*
 00410F90    jmp         dword ptr ds:[904EFC]
*}
end;

//00410F98
function user32.FindWindowW(lpWindowName:PWideChar):HWND; stdcall;
begin
{*
 00410F98    jmp         dword ptr ds:[904EF8]
*}
end;

//00410FA0
function user32.FindWindowExW(Child:HWND; ClassName:PWideChar; WindowName:PWideChar):HWND; stdcall;
begin
{*
 00410FA0    jmp         dword ptr ds:[904EF4]
*}
end;

//00410FA8
function user32.FrameRect(const lprc:Types.TRect; hbr:HBRUSH):Integer; stdcall;
begin
{*
 00410FA8    jmp         dword ptr ds:[904EF0]
*}
end;

//00410FB0
function user32.GetActiveWindow:HWND;
begin
{*
 00410FB0    jmp         dword ptr ds:[904EEC]
*}
end;

//00410FB8
function user32.GetCapture:HWND;
begin
{*
 00410FB8    jmp         dword ptr ds:[904EE8]
*}
end;

//00410FC0
function user32.GetCaretPos:LongBool; stdcall;
begin
{*
 00410FC0    jmp         dword ptr ds:[904EE4]
*}
end;

//00410FC8
function user32.GetClassInfoW(lpClassName:PWideChar; var lpWndClass:tagWNDCLASSW):LongBool; stdcall;
begin
{*
 00410FC8    jmp         dword ptr ds:[904EE0]
*}
end;

//00410FD0
function user32.GetClassInfoExW(Classname:PWideChar; var WndClass:tagWNDCLASSEXW):LongBool; stdcall;
begin
{*
 00410FD0    jmp         dword ptr ds:[904EDC]
*}
end;

//00410FD8
function user32.GetClassNameW(lpClassName:PWideChar; nMaxCount:Integer):Integer; stdcall;
begin
{*
 00410FD8    jmp         dword ptr ds:[904ED8]
*}
end;

//00410FE0
function user32.GetClientRect(var lpRect:Types.TRect):LongBool; stdcall;
begin
{*
 00410FE0    jmp         dword ptr ds:[904ED4]
*}
end;

//00410FE8
function user32.GetClipboardData:THandle; stdcall;
begin
{*
 00410FE8    jmp         dword ptr ds:[904ED0]
*}
end;

//00410FF0
function user32.GetCursor:HICON;
begin
{*
 00410FF0    jmp         dword ptr ds:[904ECC]
*}
end;

//00410FF8
function user32.GetCursorPos:LongBool; stdcall;
begin
{*
 00410FF8    jmp         dword ptr ds:[904EC8]
*}
end;

//00411000
function user32.GetDC:HDC; stdcall;
begin
{*
 00411000    jmp         dword ptr ds:[904EC4]
*}
end;

//00411008
function user32.GetDCEx(hrgnClip:HRGN; flags:Types.DWORD):HDC; stdcall;
begin
{*
 00411008    jmp         dword ptr ds:[904EC0]
*}
end;

//00411010
function user32.GetDesktopWindow:HWND;
begin
{*
 00411010    jmp         dword ptr ds:[904EBC]
*}
end;

//00411018
function user32.GetDlgCtrlID:Integer; stdcall;
begin
{*
 00411018    jmp         dword ptr ds:[904EB8]
*}
end;

//00411020
function user32.GetDlgItem(nIDDlgItem:Integer):HWND; stdcall;
begin
{*
 00411020    jmp         dword ptr ds:[904EB4]
*}
end;

//00411028
function user32.GetDoubleClickTime:LongWord;
begin
{*
 00411028    jmp         dword ptr ds:[904EB0]
*}
end;

//00411030
function user32.GetFocus:HWND;
begin
{*
 00411030    jmp         dword ptr ds:[904EAC]
*}
end;

//00411038
function user32.GetForegroundWindow:HWND;
begin
{*
 00411038    jmp         dword ptr ds:[904EA8]
*}
end;

//00411040
function user32.GetIconInfo(var piconinfo:_ICONINFO):LongBool; stdcall;
begin
{*
 00411040    jmp         dword ptr ds:[904EA4]
*}
end;

//00411048
function user32.GetKeyNameTextW(lpString:PWideChar; nSize:Integer):Integer; stdcall;
begin
{*
 00411048    jmp         dword ptr ds:[904EA0]
*}
end;

//00411050
function user32.GetKeyState:SmallInt; stdcall;
begin
{*
 00411050    jmp         dword ptr ds:[904E9C]
*}
end;

//00411058
function user32.GetKeyboardLayout:HKL; stdcall;
begin
{*
 00411058    jmp         dword ptr ds:[904E98]
*}
end;

//00411060
function user32.GetKeyboardLayoutList(var List:void ):LongWord; stdcall;
begin
{*
 00411060    jmp         dword ptr ds:[904E94]
*}
end;

//00411068
function user32.GetKeyboardLayoutNameW:LongBool; stdcall;
begin
{*
 00411068    jmp         dword ptr ds:[904E90]
*}
end;

//00411070
function user32.GetKeyboardState:LongBool; stdcall;
begin
{*
 00411070    jmp         dword ptr ds:[904E8C]
*}
end;

//00411078
function user32.GetLastActivePopup:HWND; stdcall;
begin
{*
 00411078    jmp         dword ptr ds:[904E88]
*}
end;

//00411080
function user32.GetMenu:HMENU; stdcall;
begin
{*
 00411080    jmp         dword ptr ds:[904E84]
*}
end;

//00411088
function user32.GetMenuItemCount:Integer; stdcall;
begin
{*
 00411088    jmp         dword ptr ds:[904E80]
*}
end;

//00411090
function user32.GetMenuItemID(nPos:Integer):LongWord; stdcall;
begin
{*
 00411090    jmp         dword ptr ds:[904E7C]
*}
end;

//00411098
function user32.GetMenuItemInfoW(p2:LongWord; p3:LongBool; var p4:tagMENUITEMINFOW):LongBool; stdcall;
begin
{*
 00411098    jmp         dword ptr ds:[904E78]
*}
end;

//004110A0
function user32.GetMenuState(uId:LongWord; uFlags:LongWord):LongWord; stdcall;
begin
{*
 004110A0    jmp         dword ptr ds:[904E74]
*}
end;

//004110A8
function user32.GetMenuStringW(uIDItem:LongWord; lpString:PWideChar; nMaxCount:Integer; uFlag:LongWord):Integer; stdcall;
begin
{*
 004110A8    jmp         dword ptr ds:[904E70]
*}
end;

//004110B0
function user32.GetMessageExtraInfo:IntPtr;
begin
{*
 004110B0    jmp         dword ptr ds:[904E6C]
*}
end;

//004110B8
function user32.GetMessagePos:DWORD;
begin
{*
 004110B8    jmp         dword ptr ds:[904E68]
*}
end;

//004110C0
function user32.GetMessageTime:LongInt;
begin
{*
 004110C0    jmp         dword ptr ds:[904E64]
*}
end;

//004110C8
function user32.GetWindow(uCmd:LongWord):HWND; stdcall;
begin
{*
 004110C8    jmp         dword ptr ds:[904E60]
*}
end;

//004110D0
function user32.GetParent:HWND; stdcall;
begin
{*
 004110D0    jmp         dword ptr ds:[904E5C]
*}
end;

//004110D8
function user32.GetPropW(lpString:PWideChar):THandle; stdcall;
begin
{*
 004110D8    jmp         dword ptr ds:[904E58]
*}
end;

//004110E0
function user32.GetScrollBarInfo(idObject:LongInt; var psbi:tagSCROLLBARINFO):LongBool; stdcall;
begin
{*
 004110E0    jmp         dword ptr ds:[904E54]
*}
end;

//004110E8
function user32.GetScrollInfo(BarFlag:Integer; var ScrollInfo:tagSCROLLINFO):LongBool; stdcall;
begin
{*
 004110E8    jmp         dword ptr ds:[904E50]
*}
end;

//004110F0
function user32.GetScrollPos(nBar:Integer):Integer; stdcall;
begin
{*
 004110F0    jmp         dword ptr ds:[904E4C]
*}
end;

//004110F8
function user32.GetScrollRange(nBar:Integer; var lpMinPos:Integer; var lpMaxPos:Integer):LongBool; stdcall;
begin
{*
 004110F8    jmp         dword ptr ds:[904E48]
*}
end;

//00411100
function user32.GetSubMenu(nPos:Integer):HMENU; stdcall;
begin
{*
 00411100    jmp         dword ptr ds:[904E44]
*}
end;

//00411108
function user32.GetSysColor:DWORD; stdcall;
begin
{*
 00411108    jmp         dword ptr ds:[904E40]
*}
end;

//00411110
function user32.GetSysColorBrush:HBRUSH; stdcall;
begin
{*
 00411110    jmp         dword ptr ds:[904E3C]
*}
end;

//00411118
function user32.GetSystemMenu(bRevert:LongBool):HMENU; stdcall;
begin
{*
 00411118    jmp         dword ptr ds:[904E38]
*}
end;

//00411120
function user32.GetSystemMetrics:Integer; stdcall;
begin
{*
 00411120    jmp         dword ptr ds:[904E34]
*}
end;

//00411128
function user32.GetTopWindow:HWND; stdcall;
begin
{*
 00411128    jmp         dword ptr ds:[904E30]
*}
end;

//00411130
function user32.GetUpdateRect(lpRect:Types.PRect; bErase:LongBool):LongBool; stdcall;
begin
{*
 00411130    jmp         dword ptr ds:[904E2C]
*}
end;

//00411138
function user32.GetWindow(uCmd:LongWord):HWND; stdcall;
begin
{*
 00411138    jmp         dword ptr ds:[904E60]
*}
end;

//00411140
function user32.GetWindowDC:HDC; stdcall;
begin
{*
 00411140    jmp         dword ptr ds:[904E28]
*}
end;

//00411148
function GetWindowLong(hWnd:HWND; nIndex:Integer):NativeInt;
begin
{*
 00411148    push        edx
 00411149    push        eax
 0041114A    call        user32.GetWindowLongW
 0041114F    ret
*}
end;

//00411150
function user32.GetWindowPlacement(var WindowPlacement:tagWINDOWPLACEMENT):LongBool; stdcall;
begin
{*
 00411150    jmp         dword ptr ds:[904E24]
*}
end;

//00411158
function user32.GetWindowRect(var lpRect:Types.TRect):LongBool; stdcall;
begin
{*
 00411158    jmp         dword ptr ds:[904E20]
*}
end;

//00411160
function user32.GetWindowTextW(lpString:PWideChar; nMaxCount:Integer):Integer; stdcall;
begin
{*
 00411160    jmp         dword ptr ds:[904E1C]
*}
end;

//00411168
function user32.GetWindowThreadProcessId(lpdwProcessId:Pointer):DWORD; stdcall;
begin
{*
 00411168    jmp         dword ptr ds:[904E18]
*}
end;

//00411170
function user32.GetWindowThreadProcessId(lpdwProcessId:Pointer):DWORD; stdcall;
begin
{*
 00411170    jmp         dword ptr ds:[904E18]
*}
end;

//00411178
function user32.HideCaret:LongBool; stdcall;
begin
{*
 00411178    jmp         dword ptr ds:[904E14]
*}
end;

//00411180
procedure user32.InflateRect(const DY:Single; const DX:Single);
begin
{*
 00411180    jmp         dword ptr ds:[904E10]
*}
end;

//00411188
function user32.InsertMenuW(uPosition:LongWord; uFlags:LongWord; uIDNewItem:UIntPtr; lpNewItem:PWideChar):LongBool; stdcall;
begin
{*
 00411188    jmp         dword ptr ds:[904E0C]
*}
end;

//00411190
function user32.InsertMenuItemW(p2:LongWord; p3:LongBool; const p4:tagMENUITEMINFOW):LongBool; stdcall;
begin
{*
 00411190    jmp         dword ptr ds:[904E08]
*}
end;

//00411198
function user32.InvalidateRect(const lpRect:Types.TRect; bErase:LongBool):LongBool; stdcall;
begin
{*
 00411198    jmp         dword ptr ds:[904E04]
*}
end;

//004111A0
function user32.InvalidateRect(const lpRect:Types.TRect; bErase:LongBool):LongBool; stdcall;
begin
{*
 004111A0    jmp         dword ptr ds:[904E04]
*}
end;

//004111A8
function user32.IsCharAlphaW:LongBool; stdcall;
begin
{*
 004111A8    jmp         dword ptr ds:[904E00]
*}
end;

//004111B0
function user32.IsCharAlphaNumericW:LongBool; stdcall;
begin
{*
 004111B0    jmp         dword ptr ds:[904DFC]
*}
end;

//004111B8
function user32.IsChild(hWnd:HWND):LongBool; stdcall;
begin
{*
 004111B8    jmp         dword ptr ds:[904DF8]
*}
end;

//004111C0
function user32.IsClipboardFormatAvailable:LongBool; stdcall;
begin
{*
 004111C0    jmp         dword ptr ds:[904DF4]
*}
end;

//004111C8
function user32.IsDialogMessageA(var lpMsg:tagMSG):LongBool; stdcall;
begin
{*
 004111C8    jmp         dword ptr ds:[904DEC]
*}
end;

//004111D0
function user32.IsDialogMessageW(var lpMsg:tagMSG):LongBool; stdcall;
begin
{*
 004111D0    jmp         dword ptr ds:[904DF0]
*}
end;

//004111D8
function user32.IsIconic:BOOL;
begin
{*
 004111D8    jmp         dword ptr ds:[904DE8]
*}
end;

//004111E0
function user32.IsWindow:LongBool; stdcall;
begin
{*
 004111E0    jmp         dword ptr ds:[904DE4]
*}
end;

//004111E8
function user32.IsWindowEnabled:LongBool; stdcall;
begin
{*
 004111E8    jmp         dword ptr ds:[904DE0]
*}
end;

//004111F0
function user32.IsWindowUnicode:LongBool; stdcall;
begin
{*
 004111F0    jmp         dword ptr ds:[904DDC]
*}
end;

//004111F8
function user32.IsWindowVisible:LongBool; stdcall;
begin
{*
 004111F8    jmp         dword ptr ds:[904DD8]
*}
end;

//00411200
function user32.IsZoomed:LongBool; stdcall;
begin
{*
 00411200    jmp         dword ptr ds:[904DD4]
*}
end;

//00411208
function user32.KillTimer(uIDEvent:UIntPtr):LongBool; stdcall;
begin
{*
 00411208    jmp         dword ptr ds:[904DD0]
*}
end;

//00411210
function user32.LoadBitmapW(lpBitmapName:PWideChar):HBITMAP; stdcall;
begin
{*
 00411210    jmp         dword ptr ds:[904DCC]
*}
end;

//00411218
function user32.LoadCursorW(const lpCursorName:UnicodeString):HICON;
begin
{*
 00411218    jmp         dword ptr ds:[904DC8]
*}
end;

//00411220
function user32.LoadIconW(lpIconName:PWideChar):HICON; stdcall;
begin
{*
 00411220    jmp         dword ptr ds:[904DC4]
*}
end;

//00411228
function user32.LoadKeyboardLayoutW(Flags:LongWord):HKL; stdcall;
begin
{*
 00411228    jmp         dword ptr ds:[904DC0]
*}
end;

//00411230
function user32.LoadStringW(uID:LongWord; lpBuffer:PWideChar; nBufferMax:Integer):Integer; stdcall;
begin
{*
 00411230    jmp         dword ptr ds:[904DBC]
*}
end;

//00411238
function user32.MapVirtualKeyW(uMapType:LongWord):LongWord; stdcall;
begin
{*
 00411238    jmp         dword ptr ds:[904DB8]
*}
end;

//00411240
function user32.MapWindowPoints(hWndTo:HWND; var lpPoints:void ; cPoints:LongWord):Integer; stdcall;
begin
{*
 00411240    jmp         dword ptr ds:[904DB4]
*}
end;

//00411248
function user32.MessageBeep:LongBool; stdcall;
begin
{*
 00411248    jmp         dword ptr ds:[904DB0]
*}
end;

//00411250
function user32.MessageBoxW(lpText:PWideChar; lpCaption:PWideChar; uType:Cardinal):Integer; stdcall;
begin
{*
 00411250    jmp         dword ptr ds:[904DAC]
*}
end;

//00411258
function user32.MsgWaitForMultipleObjects(var pHandles:void ; fWaitAll:LongBool; dwMilliseconds:Types.DWORD; dwWakeMask:Types.DWORD):DWORD; stdcall;
begin
{*
 00411258    jmp         dword ptr ds:[904DA8]
*}
end;

//00411260
function user32.MsgWaitForMultipleObjectsEx(var pHandles:void ; dwMilliseconds:Types.DWORD; dwWakeMask:Types.DWORD; dwFlags:Types.DWORD):DWORD; stdcall;
begin
{*
 00411260    jmp         dword ptr ds:[904DA4]
*}
end;

//00411268
function user32.OemToCharA(lpszDst:MarshaledAString):LongBool; stdcall;
begin
{*
 00411268    jmp         dword ptr ds:[904DA0]
*}
end;

//00411270
function user32.OffsetRect(DY:Single; DX:Single):Boolean;
begin
{*
 00411270    jmp         dword ptr ds:[904D9C]
*}
end;

//00411278
function user32.OpenClipboard:LongBool; stdcall;
begin
{*
 00411278    jmp         dword ptr ds:[904D98]
*}
end;

//00411280
function user32.PeekMessageW(hWnd:HWND; wMsgFilterMin:LongWord; wMsgFilterMax:LongWord; wRemoveMsg:LongWord):LongBool; stdcall;
begin
{*
 00411280    jmp         dword ptr ds:[904D94]
*}
end;

//00411288
function user32.PeekMessageA(hWnd:HWND; wMsgFilterMin:LongWord; wMsgFilterMax:LongWord; wRemoveMsg:LongWord):LongBool; stdcall;
begin
{*
 00411288    jmp         dword ptr ds:[904D90]
*}
end;

//00411290
function user32.PeekMessageW(hWnd:HWND; wMsgFilterMin:LongWord; wMsgFilterMax:LongWord; wRemoveMsg:LongWord):LongBool; stdcall;
begin
{*
 00411290    jmp         dword ptr ds:[904D94]
*}
end;

//00411298
function user32.PostMessageW(Msg:LongWord; wParam:UIntPtr; lParam:IntPtr):LongBool; stdcall;
begin
{*
 00411298    jmp         dword ptr ds:[904D8C]
*}
end;

//004112A0
procedure user32.PostQuitMessage; stdcall;
begin
{*
 004112A0    jmp         dword ptr ds:[904D88]
*}
end;

//004112A8
function user32.RedrawWindow(const lprcUpdate:Types.TRect; hrgnUpdate:HRGN; flags:LongWord):LongBool; stdcall;
begin
{*
 004112A8    jmp         dword ptr ds:[904D84]
*}
end;

//004112B0
function user32.RedrawWindow(const lprcUpdate:Types.TRect; hrgnUpdate:HRGN; flags:LongWord):LongBool; stdcall;
begin
{*
 004112B0    jmp         dword ptr ds:[904D84]
*}
end;

//004112B8
function user32.RegisterClassW:Word; stdcall;
begin
{*
 004112B8    jmp         dword ptr ds:[904D80]
*}
end;

//004112C0
function user32.RegisterClipboardFormatW:LongWord; stdcall;
begin
{*
 004112C0    jmp         dword ptr ds:[904D7C]
*}
end;

//004112C8
function user32.RegisterWindowMessageW:LongWord; stdcall;
begin
{*
 004112C8    jmp         dword ptr ds:[904D78]
*}
end;

//004112D0
function user32.ReleaseCapture:LongBool;
begin
{*
 004112D0    jmp         dword ptr ds:[904D74]
*}
end;

//004112D8
function user32.ReleaseDC(hDC:HDC):Integer; stdcall;
begin
{*
 004112D8    jmp         dword ptr ds:[904D70]
*}
end;

//004112E0
function user32.RemoveMenu(uPosition:LongWord; uFlags:LongWord):LongBool; stdcall;
begin
{*
 004112E0    jmp         dword ptr ds:[904D6C]
*}
end;

//004112E8
function user32.RemovePropW(lpString:PWideChar):THandle; stdcall;
begin
{*
 004112E8    jmp         dword ptr ds:[904D68]
*}
end;

//004112F0
function user32.ScreenToClient(var lpPoint:Types.TPoint):LongBool; stdcall;
begin
{*
 004112F0    jmp         dword ptr ds:[904D64]
*}
end;

//004112F8
procedure $thunk_AddClipboardFormatListener;
begin
{*
 004112F8    push        eax
 004112F9    push        edx
 004112FA    push        ecx
 004112FB    push        908214;^$thunk_AddClipboardFormatListener
>00411300    jmp         user32.dll
*}
end;

//00411308
procedure sub_00411308;
begin
{*
 00411308    jmp         dword ptr ds:[908214]
*}
end;

//00411310
function user32.ScrollWindow(XAmount:Integer; YAmount:Integer; Rect:Types.PRect; ClipRect:Types.PRect):LongBool; stdcall;
begin
{*
 00411310    jmp         dword ptr ds:[904D60]
*}
end;

//00411318
function user32.ScrollWindowEx(dx:Integer; dy:Integer; prcScroll:Types.PRect; prcClip:Types.PRect; hrgnUpdate:HRGN; prcUpdate:Types.PRect; flags:LongWord):LongBool; stdcall;
begin
{*
 00411318    jmp         dword ptr ds:[904D5C]
*}
end;

//00411320
function user32.SendDlgItemMessageW(nIDDlgItem:Integer; Msg:LongWord; wParam:UIntPtr; lParam:IntPtr):LongInt; stdcall;
begin
{*
 00411320    jmp         dword ptr ds:[904D58]
*}
end;

//00411328
function user32.SendMessageW(Msg:LongWord; wParam:UIntPtr; lParam:IntPtr):IntPtr; stdcall;
begin
{*
 00411328    jmp         dword ptr ds:[904D54]
*}
end;

//00411330
function user32.SendMessageW(Msg:LongWord; wParam:UIntPtr; lParam:IntPtr):IntPtr; stdcall;
begin
{*
 00411330    jmp         dword ptr ds:[904D54]
*}
end;

//00411338
function user32.SendMessageA(Msg:LongWord; wParam:UIntPtr; lParam:IntPtr):IntPtr; stdcall;
begin
{*
 00411338    jmp         dword ptr ds:[904D50]
*}
end;

//00411340
function user32.SendMessageW(Msg:LongWord; wParam:UIntPtr; lParam:IntPtr):IntPtr; stdcall;
begin
{*
 00411340    jmp         dword ptr ds:[904D54]
*}
end;

//00411348
function user32.SendMessageW(Msg:LongWord; wParam:UIntPtr; lParam:IntPtr):IntPtr; stdcall;
begin
{*
 00411348    jmp         dword ptr ds:[904D54]
*}
end;

//00411350
function user32.SetActiveWindow:HWND; stdcall;
begin
{*
 00411350    jmp         dword ptr ds:[904D4C]
*}
end;

//00411358
function user32.SetCapture:HWND; stdcall;
begin
{*
 00411358    jmp         dword ptr ds:[904D48]
*}
end;

//00411360
function user32.SetCaretPos(Y:Integer):LongBool; stdcall;
begin
{*
 00411360    jmp         dword ptr ds:[904D44]
*}
end;

//00411368
function user32.SetClipboardData(hMem:THandle):THandle; stdcall;
begin
{*
 00411368    jmp         dword ptr ds:[904D40]
*}
end;

//00411370
function user32.SetCursor:HICON; stdcall;
begin
{*
 00411370    jmp         dword ptr ds:[904D3C]
*}
end;

//00411378
function user32.SetCursorPos(Y:Integer):LongBool; stdcall;
begin
{*
 00411378    jmp         dword ptr ds:[904D38]
*}
end;

//00411380
function user32.SetFocus:HWND; stdcall;
begin
{*
 00411380    jmp         dword ptr ds:[904D34]
*}
end;

//00411388
function user32.SetForegroundWindow:LongBool; stdcall;
begin
{*
 00411388    jmp         dword ptr ds:[904D30]
*}
end;

//00411390
function user32.SetKeyboardState:LongBool; stdcall;
begin
{*
 00411390    jmp         dword ptr ds:[904D2C]
*}
end;

//00411398
function user32.SetMenu(hMenu:HMENU):LongBool; stdcall;
begin
{*
 00411398    jmp         dword ptr ds:[904D28]
*}
end;

//004113A0
function user32.SetMenuItemInfoW(p2:LongWord; p3:LongBool; const p4:tagMENUITEMINFOW):LongBool; stdcall;
begin
{*
 004113A0    jmp         dword ptr ds:[904D24]
*}
end;

//004113A8
function user32.SetParent(hWndNewParent:HWND):HWND; stdcall;
begin
{*
 004113A8    jmp         dword ptr ds:[904D20]
*}
end;

//004113B0
function user32.SetPropW(lpString:PWideChar; hData:THandle):LongBool; stdcall;
begin
{*
 004113B0    jmp         dword ptr ds:[904D1C]
*}
end;

//004113B8
function user32.SetRect(xLeft:Integer; yTop:Integer; xRight:Integer; yBottom:Integer):LongBool; stdcall;
begin
{*
 004113B8    jmp         dword ptr ds:[904D18]
*}
end;

//004113C0
function user32.SetScrollInfo(BarFlag:Integer; const ScrollInfo:tagSCROLLINFO; Redraw:LongBool):Integer; stdcall;
begin
{*
 004113C0    jmp         dword ptr ds:[904D14]
*}
end;

//004113C8
function user32.SetScrollPos(nBar:Integer; nPos:Integer; bRedraw:LongBool):Integer; stdcall;
begin
{*
 004113C8    jmp         dword ptr ds:[904D10]
*}
end;

//004113D0
function user32.SetScrollRange(nBar:Integer; nMinPos:Integer; nMaxPos:Integer; bRedraw:LongBool):LongBool; stdcall;
begin
{*
 004113D0    jmp         dword ptr ds:[904D0C]
*}
end;

//004113D8
function user32.SetTimer(nIDEvent:UIntPtr; uElapse:LongWord; lpTimerFunc:Pointer):LongWord; stdcall;
begin
{*
 004113D8    jmp         dword ptr ds:[904D08]
*}
end;

//004113E0
function user32.SetWindowPlacement(const WindowPlacement:tagWINDOWPLACEMENT):LongBool; stdcall;
begin
{*
 004113E0    jmp         dword ptr ds:[904D04]
*}
end;

//004113E8
function user32.SetWindowPos(hWndInsertAfter:HWND; X:Integer; Y:Integer; cx:Integer; cy:Integer; uFlags:LongWord):LongBool; stdcall;
begin
{*
 004113E8    jmp         dword ptr ds:[904D00]
*}
end;

//004113F0
function user32.SetWindowTextW(lpString:PWideChar):LongBool; stdcall;
begin
{*
 004113F0    jmp         dword ptr ds:[904CFC]
*}
end;

//004113F8
function user32.SetWindowsHookExW(lpfn:TFNHookProc; hmod:HINST; dwThreadId:Types.DWORD):HHOOK; stdcall;
begin
{*
 004113F8    jmp         dword ptr ds:[904CF8]
*}
end;

//00411400
function user32.SetWindowRgn(hRgn:HRGN; bRedraw:LongBool):Integer; stdcall;
begin
{*
 00411400    jmp         dword ptr ds:[904CF4]
*}
end;

//00411408
function user32.ShowCaret:LongBool; stdcall;
begin
{*
 00411408    jmp         dword ptr ds:[904CF0]
*}
end;

//00411410
function user32.ShowOwnedPopups(fShow:LongBool):LongBool; stdcall;
begin
{*
 00411410    jmp         dword ptr ds:[904CEC]
*}
end;

//00411418
function user32.ShowScrollBar(wBar:Integer; bShow:LongBool):LongBool; stdcall;
begin
{*
 00411418    jmp         dword ptr ds:[904CE8]
*}
end;

//00411420
function user32.ShowWindow(nCmdShow:Integer):LongBool; stdcall;
begin
{*
 00411420    jmp         dword ptr ds:[904CE4]
*}
end;

//00411428
function user32.SystemParametersInfoW(uiParam:LongWord; pvParam:Pointer; fWinIni:LongWord):LongBool; stdcall;
begin
{*
 00411428    jmp         dword ptr ds:[904CE0]
*}
end;

//00411430
function user32.SystemParametersInfoW(uiParam:LongWord; pvParam:Pointer; fWinIni:LongWord):LongBool; stdcall;
begin
{*
 00411430    jmp         dword ptr ds:[904CE0]
*}
end;

//00411438
function user32.SystemParametersInfoW(uiParam:LongWord; pvParam:Pointer; fWinIni:LongWord):LongBool; stdcall;
begin
{*
 00411438    jmp         dword ptr ds:[904CE0]
*}
end;

//00411440
function user32.TrackPopupMenu(uFlags:LongWord; x:Integer; y:Integer; nReserved:Integer; hWnd:HWND; prcRect:Types.PRect):LongBool; stdcall;
begin
{*
 00411440    jmp         dword ptr ds:[904CDC]
*}
end;

//00411448
function user32.TranslateMDISysAccel(const lpMsg:tagMSG):LongBool; stdcall;
begin
{*
 00411448    jmp         dword ptr ds:[904CD8]
*}
end;

//00411450
function user32.TranslateMessage:LongBool; stdcall;
begin
{*
 00411450    jmp         dword ptr ds:[904CD4]
*}
end;

//00411458
function user32.UnhookWindowsHookEx:LongBool; stdcall;
begin
{*
 00411458    jmp         dword ptr ds:[904CD0]
*}
end;

//00411460
function user32.UnregisterClassW(hInstance:HINST):LongBool; stdcall;
begin
{*
 00411460    jmp         dword ptr ds:[904CCC]
*}
end;

//00411468
function user32.UpdateWindow:LongBool; stdcall;
begin
{*
 00411468    jmp         dword ptr ds:[904CC8]
*}
end;

//00411470
function user32.ValidateRect(lpRect:Types.PRect):LongBool; stdcall;
begin
{*
 00411470    jmp         dword ptr ds:[904CC4]
*}
end;

//00411478
function user32.ValidateRect(lpRect:Types.PRect):LongBool; stdcall;
begin
{*
 00411478    jmp         dword ptr ds:[904CC4]
*}
end;

//00411480
function user32.WaitMessage:LongBool;
begin
{*
 00411480    jmp         dword ptr ds:[904CC0]
*}
end;

//00411488
function user32.WindowFromPoint:HWND; stdcall;
begin
{*
 00411488    jmp         dword ptr ds:[904CBC]
*}
end;

//00411490
procedure user32.keybd_event(bScan:Byte; dwFlags:Types.DWORD; dwExtraInfo:UIntPtr); stdcall;
begin
{*
 00411490    jmp         dword ptr ds:[904CB8]
*}
end;

//00411498
procedure wtsapi32.dll;
begin
{*
 00411498    push        908040
 0041149D    call        @DelayLoadHelper2
 004114A2    pop         ecx
 004114A3    pop         edx
 004114A4    xchg        eax,dword ptr [esp]
 004114A7    ret
*}
end;

//004114A8
procedure $thunk_WTSRegisterSessionNotification;
begin
{*
 004114A8    push        eax
 004114A9    push        edx
 004114AA    push        ecx
 004114AB    push        908204;^$thunk_WTSRegisterSessionNotification
>004114B0    jmp         wtsapi32.dll
*}
end;

//004114B8
procedure sub_004114B8;
begin
{*
 004114B8    jmp         dword ptr ds:[908204]
*}
end;

//004114C0
procedure $thunk_WTSUnRegisterSessionNotification;
begin
{*
 004114C0    push        eax
 004114C1    push        edx
 004114C2    push        ecx
 004114C3    push        908200;^$thunk_WTSUnRegisterSessionNotification
>004114C8    jmp         wtsapi32.dll
*}
end;

//004114D0
procedure sub_004114D0;
begin
{*
 004114D0    jmp         dword ptr ds:[908200]
*}
end;

//004114D8
function user32.CreateWindowExW(dwExStyle:Types.DWORD; lpClassName:PWideChar; lpParam:Pointer; hInstance:HINST; hMenu:HMENU; hWndParent:HWND; nHeight:Integer; nWidth:Integer; Y:Integer; X:Integer; dwStyle:Types.DWORD):HWND;
begin
{*
 004114D8    jmp         dword ptr ds:[904CB4]
*}
end;

//004114E0
function CreateWindowEx(dwExStyle:Types.DWORD; lpClassName:PWideChar; lpWindowName:PWideChar; dwStyle:Types.DWORD; X:Integer; Y:Integer; nWidth:Integer; nHeight:Integer; hWndParent:HWND; hMenu:HMENU; hInstance:HINST; lpParam:Pointer):HWND;
begin
{*
 004114E0    push        ebp
 004114E1    mov         ebp,esp
 004114E3    push        ecx
 004114E4    push        ebx
 004114E5    push        esi
 004114E6    push        edi
 004114E7    mov         dword ptr [ebp-4],ecx
 004114EA    mov         edi,edx
 004114EC    mov         esi,eax
 004114EE    call        Get8087CW
 004114F3    mov         ebx,eax
 004114F5    mov         eax,dword ptr [ebp+8]
 004114F8    push        eax
 004114F9    mov         eax,dword ptr [ebp+0C]
 004114FC    push        eax
 004114FD    mov         eax,dword ptr [ebp+10]
 00411500    push        eax
 00411501    mov         eax,dword ptr [ebp+14]
 00411504    push        eax
 00411505    mov         eax,dword ptr [ebp+18]
 00411508    push        eax
 00411509    mov         eax,dword ptr [ebp+1C]
 0041150C    push        eax
 0041150D    mov         eax,dword ptr [ebp+20]
 00411510    push        eax
 00411511    mov         eax,dword ptr [ebp+24]
 00411514    push        eax
 00411515    mov         eax,dword ptr [ebp+28]
 00411518    push        eax
 00411519    mov         eax,dword ptr [ebp-4]
 0041151C    push        eax
 0041151D    push        edi
 0041151E    push        esi
 0041151F    call        user32.CreateWindowExW
 00411524    mov         esi,eax
 00411526    mov         eax,ebx
 00411528    call        Set8087CW
 0041152D    mov         eax,esi
 0041152F    pop         edi
 00411530    pop         esi
 00411531    pop         ebx
 00411532    pop         ecx
 00411533    pop         ebp
 00411534    ret         24
*}
end;

//00411538
function HwndMSWheel(var puiMsh_MsgMouseWheel:LongWord; var puiMsh_Msg3DSupport:LongWord; var puiMsh_MsgScrollLines:LongWord; var pf3DSupport:LongBool; var piScrollLines:Integer):HWND;
begin
{*
 00411538    push        ebp
 00411539    mov         ebp,esp
 0041153B    push        ecx
 0041153C    push        ebx
 0041153D    push        esi
 0041153E    push        edi
 0041153F    mov         edi,ecx
 00411541    mov         esi,edx
 00411543    mov         dword ptr [ebp-4],eax
 00411546    push        4115D4
 0041154B    push        4115F8
 00411550    call        user32.FindWindowW
 00411555    mov         ebx,eax
 00411557    push        411608
 0041155C    call        user32.RegisterWindowMessageW
 00411561    mov         edx,dword ptr [ebp-4]
 00411564    mov         dword ptr [edx],eax
 00411566    push        411628
 0041156B    call        user32.RegisterWindowMessageW
 00411570    mov         dword ptr [esi],eax
 00411572    push        411654
 00411577    call        user32.RegisterWindowMessageW
 0041157C    mov         dword ptr [edi],eax
 0041157E    cmp         dword ptr [esi],0
>00411581    je          0041159B
 00411583    test        ebx,ebx
>00411585    je          0041159B
 00411587    push        0
 00411589    push        0
 0041158B    mov         eax,dword ptr [esi]
 0041158D    push        eax
 0041158E    push        ebx
 0041158F    call        user32.SendMessageW
 00411594    mov         edx,dword ptr [ebp+0C]
 00411597    mov         dword ptr [edx],eax
>00411599    jmp         004115A2
 0041159B    mov         eax,dword ptr [ebp+0C]
 0041159E    xor         edx,edx
 004115A0    mov         dword ptr [eax],edx
 004115A2    cmp         dword ptr [edi],0
>004115A5    je          004115BF
 004115A7    test        ebx,ebx
>004115A9    je          004115BF
 004115AB    push        0
 004115AD    push        0
 004115AF    mov         eax,dword ptr [edi]
 004115B1    push        eax
 004115B2    push        ebx
 004115B3    call        user32.SendMessageW
 004115B8    mov         edx,dword ptr [ebp+8]
 004115BB    mov         dword ptr [edx],eax
>004115BD    jmp         004115C8
 004115BF    mov         eax,dword ptr [ebp+8]
 004115C2    mov         dword ptr [eax],3
 004115C8    mov         eax,ebx
 004115CA    pop         edi
 004115CB    pop         esi
 004115CC    pop         ebx
 004115CD    pop         ecx
 004115CE    pop         ebp
 004115CF    ret         8
*}
end;

//00411680
function user32.GetWindowLongW(nIndex:Integer):NativeInt;
begin
{*
 00411680    jmp         dword ptr ds:[904CB0]
*}
end;

//00411688
function user32.SetWindowLongW(nIndex:Integer; dwNewLong:NativeInt):NativeInt;
begin
{*
 00411688    jmp         dword ptr ds:[904CAC]
*}
end;

//00411690
function user32.GetClassLongW(nIndex:Integer):NativeUInt;
begin
{*
 00411690    jmp         dword ptr ds:[904CA8]
*}
end;

//00411698
function user32.SetClassLongW(nIndex:Integer; dwNewLong:NativeInt):NativeUInt;
begin
{*
 00411698    jmp         dword ptr ds:[904CA4]
*}
end;

//004116A0
procedure $thunk_CalculatePopupWindowPosition;
begin
{*
 004116A0    push        eax
 004116A1    push        edx
 004116A2    push        ecx
 004116A3    push        908210;^$thunk_CalculatePopupWindowPosition
>004116A8    jmp         user32.dll
*}
end;

//004116B0
{*function sub_004116B0:?;
begin
 004116B0    jmp         dword ptr ds:[908210]
end;*}

//004116B8
procedure $thunk_CloseGestureInfoHandle;
begin
{*
 004116B8    push        eax
 004116B9    push        edx
 004116BA    push        ecx
 004116BB    push        90820C;^$thunk_CloseGestureInfoHandle
>004116C0    jmp         user32.dll
*}
end;

//004116C8
procedure sub_004116C8;
begin
{*
 004116C8    jmp         dword ptr ds:[90820C]
*}
end;

//004116D0
procedure $thunk_CloseTouchInputHandle;
begin
{*
 004116D0    push        eax
 004116D1    push        edx
 004116D2    push        ecx
 004116D3    push        908208;^$thunk_CloseTouchInputHandle
>004116D8    jmp         user32.dll
*}
end;

//004116E0
procedure sub_004116E0;
begin
{*
 004116E0    jmp         dword ptr ds:[908208]
*}
end;

//004116E8
procedure InitVersionInfo;
begin
{*
 004116E8    add         esp,0FFFFFEEC
 004116EE    mov         dword ptr [esp],114
 004116F5    push        esp
 004116F6    call        kernel32.GetVersionExW
 004116FB    test        eax,eax
>004116FD    je          0041171A
 004116FF    mov         eax,dword ptr [esp+10]
 00411703    mov         [0079ECA8],eax
 00411708    mov         eax,dword ptr [esp+4]
 0041170C    mov         [0079ECA0],eax
 00411711    mov         eax,dword ptr [esp+8]
 00411715    mov         [0079ECA4],eax
 0041171A    add         esp,114
 00411720    ret
*}
end;

//00411724
function tagNONCLIENTMETRICSW.SizeOf:Integer;
begin
{*
 00411724    cmp         dword ptr ds:[79ECA0],6
>0041172B    jl          00411733
 0041172D    mov         eax,1F8
 00411732    ret
 00411733    mov         eax,1F4
 00411738    ret
*}
end;

//0041173C
procedure $thunk_AddRefActCtx;
begin
{*
 0041173C    push        eax
 0041173D    push        edx
 0041173E    push        ecx
 0041173F    push        908220;^$thunk_AddRefActCtx
>00411744    jmp         kernel32.dll
*}
end;

//0041174C
function IsWow64Process(hProcess:THandle; Wow64Process:PBOOL):LongBool; stdcall;
begin
{*
 0041174C    jmp         dword ptr ds:[908220]
*}
end;

Initialization
//0079C0BC
{*
 0079C0BC    sub         dword ptr ds:[7C7C78],1
>0079C0C3    jae         0079C0D1
 0079C0C5    call        InitVersionInfo
 0079C0CA    xor         eax,eax
 0079C0CC    mov         [007C7C7C],eax;gvar_007C7C7C
 0079C0D1    ret
*}
Finalization
end.