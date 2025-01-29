//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Vcl.Printers;

interface

uses
  SysUtils, Classes, System.Win.Registry, Vcl.Graphics, System.UIConsts, System.TypInfo, System.Classes, Vcl.Printers;

type
  _COMDLG_FILTERSPEC = _COMDLG_FILTERSPEC = record//size=8
pszName:PWideChar;//f0
pszSpec:PWideChar;//f4
end;;
  TComdlgFilterSpecArray = array of _COMDLG_FILTERSPEC;
//elSize = 8;
  tagOFNW = tagOFNW = record//size=58
lStructSize:Cardinal;//f0
hWndOwner:HWND;//f4
hInstance:NativeUInt;//f8
lpstrFilter:PWideChar;//fC
lpstrCustomFilter:PWideChar;//f10
nMaxCustFilter:Cardinal;//f14
nFilterIndex:Cardinal;//f18
lpstrFile:PWideChar;//f1C
nMaxFile:Cardinal;//f20
lpstrFileTitle:PWideChar;//f24
nMaxFileTitle:Cardinal;//f28
lpstrInitialDir:PWideChar;//f2C
lpstrTitle:PWideChar;//f30
Flags:Cardinal;//f34
nFileOffset:Word;//f38
nFileExtension:Word;//f3A
lpstrDefExt:PWideChar;//f3C
lCustData:NativeInt;//f40
lpfnHook:?;//f44
lpTemplateName:PWideChar;//f48
pvReserved:Pointer;//f4C
dwReserved:Cardinal;//f50
FlagsEx:Cardinal;//f54
end;;
  EPrinter = class(Exception)
  end;
  TPrinter = class(TObject)
  published
    procedure NewPage;//00519A0C
    procedure EndDoc;//005199D8
    procedure SetPrinter(ADevice:PWideChar; ADriver:PWideChar; ADeviceMode:NativeUInt; APort:PWideChar);//00519AE8
    procedure GetPrinter(ADevice:PWideChar; ADriver:PWideChar; var ADeviceMode:NativeUInt; APort:PWideChar);//00519A40
    destructor Destroy();//0051972C
    constructor Create();//005196F0
    procedure BeginDoc;//00519944
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FCanvas:TCanvas;//f4
    FFonts:TStrings;//f8
    FPageNumber:Integer;//fC
    FPrinters:TStrings;//f10
    FPrinterIndex:Integer;//f14
    FTitle:string;//f18
    FPrinting:Boolean;//f1C
    FAborted:Boolean;//f1D
    FCapabilities:TPrinterCapabilities;//f1E
    State:TPrinterState;//f1F
    DC:HDC;//f20
    FPrinterHandle:NativeUInt;//f24
    FDevMode:PDeviceModeW;//f28
    FDeviceMode:NativeUInt;//f2C
    procedure SetState(Value:UITypes.TPrinterState);//005197A4
    procedure CheckPrinting(Value:Boolean);//005198D4
    procedure SetPrinterCapabilities(Value:Integer);//00519AAC
    function GetCanvas:TCanvas;//00519D08
    function GetFonts:TStrings;//00519D84
    function GetHandle:HDC;//00519E20
    function GetNumCopies:Integer;//00519E34
    procedure SetNumCopies(Value:Integer);//00519E98
    function GetOrientation:TPrinterOrientation;//00519F10
    procedure SetOrientation(Value:UITypes.TPrinterOrientation);//00519F7C
    function GetPageHeight:Integer;//0051A000
    function GetPageWidth:Integer;//0051A01C
    function GetPrinterIndex:Integer;//0051A038
    function GetPrinters:TStrings;//0051A16C
    procedure SetToDefaultPrinter;//0051A3B4
    procedure FreePrinters;//0051A5D4
    procedure FreeFonts;//0051A624
  end;
  TPrinterDevice = class(TObject)
  public
    Driver:string;//f4
    Device:string;//f8
    Port:string;//fC
    constructor Create(ADriver:PChar; ADevice:PChar; APort:PChar);//005192C8
    function IsEqual(ADriver:PChar; ADevice:PChar; APort:PChar):Boolean;//00519328
  end;
  TPrinterCanvas = class(TCanvas)
  published
    procedure UpdateFont;//005196A8
    constructor Create;//00519628
    procedure CreateHandle;//00519664
    procedure Changing;//00519688
  public
    Printer:TPrinter;//f58
    procedure Changing; virtual;//v28//00519688
    procedure CreateHandle; virtual;//v9C//00519664
  end;
    constructor Create(AControl:TWinControl);//00518080
    procedure sub_005180C4(?:TMemoStyleHook);//005180C4
    //procedure sub_0051812C(?:?);//0051812C
    //procedure WMNCCalcSize(?:?);//0051819C
    function SHBrowseForFolderW:PItemIDList; stdcall;//00518770
    function SHGetDesktopFolder:HRESULT; stdcall;//00518778
    function SHGetMalloc:HRESULT; stdcall;//00518780
    function SHGetPathFromIDListW(pszPath:Windows.LPWSTR):BOOL; stdcall;//00518788
    function SHGetSpecialFolderPathW(lpszPath:Windows.LPWSTR; nFolder:Integer; fCreate:Windows.BOOL):BOOL; stdcall;//00518790
    //function sub_005187B8:?;//005187B8
    function SHGetFolderPathW(csidl:Integer; hToken:Windows.THandle; dwFlags:Windows.DWORD; pszPath:Windows.LPWSTR):HRESULT; stdcall;//005187C0
    function GetOpenFileNameW:BOOL; stdcall;//00518A14
    function GetSaveFileNameW:BOOL; stdcall;//00518A1C
    function ChooseFontW:BOOL; stdcall;//00518A24
    function PrintDlgW:BOOL; stdcall;//00518A2C
    function ClosePrinter:BOOL; stdcall;//00518A34
    function DocumentPropertiesW(hPrinter:Windows.THandle; pDeviceName:Windows.LPWSTR; pDevModeOutput:Windows.PDeviceModeW; pDevModeInput:Windows.PDeviceModeW; fMode:Windows.DWORD):LongInt; stdcall;//00518A3C
    function EnumPrintersW(Name:Windows.LPWSTR; Level:Windows.DWORD; pPrinterEnum:Pointer; cbBuf:Windows.DWORD; var pcbNeeded:Windows.DWORD; var pcReturned:Windows.DWORD):BOOL; stdcall;//00518A44
    function OpenPrinterW(var phPrinter:Windows.THandle; pDefault:PPrinterDefaultsW):BOOL; stdcall;//00518A4C
    function FetchStr(var Str:PChar):PChar;//0051914C
    procedure RaiseError(const Msg:UnicodeString);//0051918C
    function AbortProc(Prn:Windows.HDC; Error:Integer):BOOL; stdcall;//005191A4
    function EnumFontsProc(var LogFont:Windows.TLogFont; var TextMetric:Windows.TTextMetric; FontType:Integer; Data:Pointer):Integer; stdcall;//00519D28
    function GetDefaultPrinterW(pcchBuffer:Windows.LPDWORD):BOOL; stdcall;//0051A3AC
    function Printer:TPrinter;//0051A640

implementation

//00518080
constructor TMemoStyleHook.Create(AControl:TWinControl);
begin
{*
 00518080    push        ebx
 00518081    push        esi
 00518082    test        dl,dl
>00518084    je          0051808E
 00518086    add         esp,0FFFFFFF0
 00518089    call        @ClassCreate
 0051808E    mov         ebx,edx
 00518090    mov         esi,eax
 00518092    xor         edx,edx
 00518094    mov         eax,esi
 00518096    call        TScrollingStyleHook.Create
 0051809B    mov         byte ptr [esi+18],1;TMemoStyleHook.FOverridePaintNC:Boolean
 0051809F    mov         byte ptr [esi+16],1;TMemoStyleHook.FOverrideEraseBkgnd:Boolean
 005180A3    mov         eax,esi
 005180A5    call        005180C4
 005180AA    mov         eax,esi
 005180AC    test        bl,bl
>005180AE    je          005180BF
 005180B0    call        @AfterConstruction
 005180B5    pop         dword ptr fs:[0]
 005180BC    add         esp,0C
 005180BF    mov         eax,esi
 005180C1    pop         esi
 005180C2    pop         ebx
 005180C3    ret
*}
end;

//005180C4
procedure sub_005180C4(?:TMemoStyleHook);
begin
{*
 005180C4    push        ebx
 005180C5    push        esi
 005180C6    push        edi
 005180C7    mov         ebx,eax
 005180C9    call        StyleServices
 005180CE    mov         esi,eax
 005180D0    mov         eax,dword ptr [ebx+8];TMemoStyleHook.FControl:TWinControl
 005180D3    mov         edx,dword ptr [eax]
 005180D5    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 005180D8    and         eax,7F
 005180DB    movzx       edx,byte ptr [eax+7A14D2]
 005180E2    mov         eax,esi
 005180E4    call        TCustomStyleServices.GetStyleColor
 005180E9    mov         edx,eax
 005180EB    mov         eax,dword ptr [ebx+4];TMemoStyleHook.FBrush:TBrush
 005180EE    call        TBrush.SetColor
 005180F3    mov         edi,dword ptr [ebx+8];TMemoStyleHook.FControl:TWinControl
 005180F6    test        byte ptr [edi+188],1;TWinControl.FStyleElements:TStyleElements
>005180FD    je          0051811C
 005180FF    mov         eax,edi
 00518101    mov         edx,dword ptr [eax]
 00518103    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 00518106    and         eax,7F
 00518109    movzx       edx,byte ptr [eax+7A14D4]
 00518110    mov         eax,esi
 00518112    call        TCustomStyleServices.GetStyleFontColor
 00518117    mov         dword ptr [ebx+10],eax;TMemoStyleHook.FFontColor:TColor
>0051811A    jmp         00518125
 0051811C    mov         eax,dword ptr [edi+74];TWinControl.FFont:TFont
 0051811F    mov         eax,dword ptr [eax+18];TFont.FColor:TColor
 00518122    mov         dword ptr [ebx+10],eax;TMemoStyleHook.FFontColor:TColor
 00518125    pop         edi
 00518126    pop         esi
 00518127    pop         ebx
 00518128    ret
*}
end;

//0051812C
{*procedure sub_0051812C(?:?);
begin
 0051812C    push        ebx
 0051812D    push        esi
 0051812E    push        edi
 0051812F    mov         esi,edx
 00518131    mov         ebx,eax
 00518133    mov         eax,dword ptr [esi]
 00518135    sub         eax,0B00C
>0051813A    je          00518181
 0051813C    add         eax,0FFFFF2DA
 00518141    sub         eax,7
>00518144    jae         0051818E
 00518146    mov         eax,dword ptr [ebx+10];TMemoStyleHook.FFontColor:TColor
 00518149    call        ColorToRGB
 0051814E    push        eax
 0051814F    mov         eax,dword ptr [esi+4]
 00518152    push        eax
 00518153    call        gdi32.SetTextColor
 00518158    mov         edi,dword ptr [ebx+4];TMemoStyleHook.FBrush:TBrush
 0051815B    mov         eax,dword ptr [edi+10];TBrush.FResource:PResource
 0051815E    mov         eax,dword ptr [eax+18]
 00518161    call        ColorToRGB
 00518166    push        eax
 00518167    mov         eax,dword ptr [esi+4]
 0051816A    push        eax
 0051816B    call        gdi32.SetBkColor
 00518170    mov         eax,dword ptr [ebx+4];TMemoStyleHook.FBrush:TBrush
 00518173    call        TBrush.GetHandle
 00518178    mov         dword ptr [esi+0C],eax
 0051817B    mov         byte ptr [ebx+14],1;TMemoStyleHook.FHandled:Boolean
>0051817F    jmp         00518197
 00518181    mov         eax,ebx
 00518183    call        005180C4
 00518188    mov         byte ptr [ebx+14],0;TMemoStyleHook.FHandled:Boolean
>0051818C    jmp         00518197
 0051818E    mov         edx,esi
 00518190    mov         eax,ebx
 00518192    call        005CF948
 00518197    pop         edi
 00518198    pop         esi
 00518199    pop         ebx
 0051819A    ret
end;*}

//0051819C
{*procedure TMemoStyleHook.WMNCCalcSize(?:?);
begin
 0051819C    push        ebx
 0051819D    push        esi
 0051819E    push        edi
 0051819F    mov         edi,edx
 005181A1    mov         ebx,eax
 005181A3    mov         esi,dword ptr [ebx+8];TMemoStyleHook.FControl:TWinControl
 005181A6    mov         eax,esi
 005181A8    mov         edx,dword ptr ds:[4FB24C];TCustomMemo
 005181AE    call        @IsClass
 005181B3    test        al,al
>005181B5    je          005181EA
 005181B7    cmp         byte ptr [esi+1C1],0;TWinControl.FBevelKind:TBevelKind
>005181BE    je          005181EA
 005181C0    mov         eax,ebx
 005181C2    mov         edx,dword ptr [eax]
 005181C4    call        dword ptr [edx+4];TMemoStyleHook.sub_0058D43C
 005181C7    test        al,al
>005181C9    je          005181EA
 005181CB    mov         edx,edi
 005181CD    mov         eax,ebx
 005181CF    call        TStyleHook.CallDefaultProc
 005181D4    mov         eax,dword ptr [edi+8]
 005181D7    sub         dword ptr [eax],2
 005181DA    sub         dword ptr [eax+4],2
 005181DE    add         dword ptr [eax+8],2
 005181E2    add         dword ptr [eax+0C],2
 005181E6    mov         byte ptr [ebx+14],1;TMemoStyleHook.FHandled:Boolean
 005181EA    pop         edi
 005181EB    pop         esi
 005181EC    pop         ebx
 005181ED    ret
end;*}

//00518770
function shell32.SHBrowseForFolderW:PItemIDList; stdcall;
begin
{*
 00518770    jmp         dword ptr ds:[9054D0]
*}
end;

//00518778
function shell32.SHGetDesktopFolder:HRESULT; stdcall;
begin
{*
 00518778    jmp         dword ptr ds:[9054CC]
*}
end;

//00518780
function shell32.SHGetMalloc:HRESULT; stdcall;
begin
{*
 00518780    jmp         dword ptr ds:[9054C8]
*}
end;

//00518788
function shell32.SHGetPathFromIDListW(pszPath:Windows.LPWSTR):BOOL; stdcall;
begin
{*
 00518788    jmp         dword ptr ds:[9054C4]
*}
end;

//00518790
function shell32.SHGetSpecialFolderPathW(lpszPath:Windows.LPWSTR; nFolder:Integer; fCreate:Windows.BOOL):BOOL; stdcall;
begin
{*
 00518790    jmp         dword ptr ds:[9054C0]
*}
end;

//005187B8
{*function sub_005187B8:?;
begin
 005187B8    jmp         dword ptr ds:[90827C]
end;*}

//005187C0
function shell32.SHGetFolderPathW(csidl:Integer; hToken:Windows.THandle; dwFlags:Windows.DWORD; pszPath:Windows.LPWSTR):HRESULT; stdcall;
begin
{*
 005187C0    jmp         dword ptr ds:[9054BC]
*}
end;

//00518A14
function comdlg32.GetOpenFileNameW:BOOL; stdcall;
begin
{*
 00518A14    jmp         dword ptr ds:[9054E4]
*}
end;

//00518A1C
function comdlg32.GetSaveFileNameW:BOOL; stdcall;
begin
{*
 00518A1C    jmp         dword ptr ds:[9054E0]
*}
end;

//00518A24
function comdlg32.ChooseFontW:BOOL; stdcall;
begin
{*
 00518A24    jmp         dword ptr ds:[9054DC]
*}
end;

//00518A2C
function comdlg32.PrintDlgW:BOOL; stdcall;
begin
{*
 00518A2C    jmp         dword ptr ds:[9054D8]
*}
end;

//00518A34
function winspool.ClosePrinter:BOOL; stdcall;
begin
{*
 00518A34    jmp         dword ptr ds:[9054F8]
*}
end;

//00518A3C
function winspool.DocumentPropertiesW(hPrinter:Windows.THandle; pDeviceName:Windows.LPWSTR; pDevModeOutput:Windows.PDeviceModeW; pDevModeInput:Windows.PDeviceModeW; fMode:Windows.DWORD):LongInt; stdcall;
begin
{*
 00518A3C    jmp         dword ptr ds:[9054F4]
*}
end;

//00518A44
function winspool.EnumPrintersW(Name:Windows.LPWSTR; Level:Windows.DWORD; pPrinterEnum:Pointer; cbBuf:Windows.DWORD; var pcbNeeded:Windows.DWORD; var pcReturned:Windows.DWORD):BOOL; stdcall;
begin
{*
 00518A44    jmp         dword ptr ds:[9054F0]
*}
end;

//00518A4C
function winspool.OpenPrinterW(var phPrinter:Windows.THandle; pDefault:PPrinterDefaultsW):BOOL; stdcall;
begin
{*
 00518A4C    jmp         dword ptr ds:[9054EC]
*}
end;

//0051914C
function FetchStr(var Str:PChar):PChar;
begin
{*
 0051914C    push        esi
 0051914D    mov         esi,dword ptr [eax]
 0051914F    cmp         dword ptr [eax],0
>00519152    je          00519186
 00519154    mov         edx,dword ptr [eax]
>00519156    jmp         0051915B
 00519158    add         edx,2
 0051915B    cmp         word ptr [edx],20
>0051915F    je          00519158
 00519161    mov         esi,edx
>00519163    jmp         00519168
 00519165    add         edx,2
 00519168    movzx       ecx,word ptr [edx]
 0051916B    test        cx,cx
>0051916E    je          00519176
 00519170    cmp         cx,2C
>00519174    jne         00519165
 00519176    cmp         word ptr [edx],2C
>0051917A    jne         00519184
 0051917C    mov         word ptr [edx],0
 00519181    add         edx,2
 00519184    mov         dword ptr [eax],edx
 00519186    mov         eax,esi
 00519188    pop         esi
 00519189    ret
*}
end;

//0051918C
procedure RaiseError(const Msg:UnicodeString);
begin
{*
 0051918C    push        ebx
 0051918D    mov         ebx,eax
 0051918F    mov         ecx,ebx
 00519191    mov         dl,1
 00519193    mov         eax,[00518A54];EPrinter
 00519198    call        Exception.Create
 0051919D    call        @RaiseExcept
 005191A2    pop         ebx
 005191A3    ret
*}
end;

//005191A4
function AbortProc(Prn:Windows.HDC; Error:Integer):BOOL; stdcall;
begin
{*
 005191A4    push        ebp
 005191A5    mov         ebp,esp
 005191A7    mov         eax,[007C4A18];^Application:TApplication
 005191AC    mov         eax,dword ptr [eax]
 005191AE    call        TApplication.ProcessMessages
 005191B3    mov         eax,[007A14F8];gvar_007A14F8
 005191B8    movzx       eax,byte ptr [eax+1D]
 005191BC    xor         al,1
 005191BE    neg         al
 005191C0    sbb         eax,eax
 005191C2    pop         ebp
 005191C3    ret         8
*}
end;

//005192C8
constructor TPrinterDevice.Create(ADriver:PChar; ADevice:PChar; APort:PChar);
begin
{*
 005192C8    push        ebp
 005192C9    mov         ebp,esp
 005192CB    push        ebx
 005192CC    push        esi
 005192CD    push        edi
 005192CE    test        dl,dl
>005192D0    je          005192DA
 005192D2    add         esp,0FFFFFFF0
 005192D5    call        @ClassCreate
 005192DA    mov         esi,ecx
 005192DC    mov         ebx,edx
 005192DE    mov         edi,eax
 005192E0    xor         edx,edx
 005192E2    mov         eax,edi
 005192E4    call        TObject.Create
 005192E9    lea         eax,[edi+4]
 005192EC    mov         edx,esi
 005192EE    call        @UStrFromPWChar
 005192F3    lea         eax,[edi+8]
 005192F6    mov         edx,dword ptr [ebp+0C]
 005192F9    call        @UStrFromPWChar
 005192FE    lea         eax,[edi+0C]
 00519301    mov         edx,dword ptr [ebp+8]
 00519304    call        @UStrFromPWChar
 00519309    mov         eax,edi
 0051930B    test        bl,bl
>0051930D    je          0051931E
 0051930F    call        @AfterConstruction
 00519314    pop         dword ptr fs:[0]
 0051931B    add         esp,0C
 0051931E    mov         eax,edi
 00519320    pop         edi
 00519321    pop         esi
 00519322    pop         ebx
 00519323    pop         ebp
 00519324    ret         8
*}
end;

//00519328
function TPrinterDevice.IsEqual(ADriver:PChar; ADevice:PChar; APort:PChar):Boolean;
begin
{*
 00519328    push        ebp
 00519329    mov         ebp,esp
 0051932B    push        0
 0051932D    push        0
 0051932F    push        ebx
 00519330    push        esi
 00519331    mov         esi,ecx
 00519333    mov         ebx,eax
 00519335    xor         eax,eax
 00519337    push        ebp
 00519338    push        51939B
 0051933D    push        dword ptr fs:[eax]
 00519340    mov         dword ptr fs:[eax],esp
 00519343    lea         eax,[ebp-4]
 00519346    mov         edx,esi
 00519348    call        @UStrFromPWChar
 0051934D    mov         edx,dword ptr [ebp-4]
 00519350    mov         eax,dword ptr [ebx+8]
 00519353    call        @UStrEqual
>00519358    jne         00519378
 0051935A    cmp         dword ptr [ebx+0C],0
>0051935E    je          0051937C
 00519360    lea         eax,[ebp-8]
 00519363    mov         edx,dword ptr [ebp+8]
 00519366    call        @UStrFromPWChar
 0051936B    mov         edx,dword ptr [ebp-8]
 0051936E    mov         eax,dword ptr [ebx+0C]
 00519371    call        @UStrEqual
>00519376    je          0051937C
 00519378    xor         eax,eax
>0051937A    jmp         0051937E
 0051937C    mov         al,1
 0051937E    mov         ebx,eax
 00519380    xor         eax,eax
 00519382    pop         edx
 00519383    pop         ecx
 00519384    pop         ecx
 00519385    mov         dword ptr fs:[eax],edx
 00519388    push        5193A2
 0051938D    lea         eax,[ebp-8]
 00519390    mov         edx,2
 00519395    call        @UStrArrayClr
 0051939A    ret
>0051939B    jmp         @HandleFinally
>005193A0    jmp         0051938D
 005193A2    mov         eax,ebx
 005193A4    pop         esi
 005193A5    pop         ebx
 005193A6    pop         ecx
 005193A7    pop         ecx
 005193A8    pop         ebp
 005193A9    ret         4
*}
end;

//00519628
constructor TPrinterCanvas.Create;
begin
{*
 00519628    push        ebx
 00519629    push        esi
 0051962A    push        edi
 0051962B    test        dl,dl
>0051962D    je          00519637
 0051962F    add         esp,0FFFFFFF0
 00519632    call        @ClassCreate
 00519637    mov         esi,ecx
 00519639    mov         ebx,edx
 0051963B    mov         edi,eax
 0051963D    xor         edx,edx
 0051963F    mov         eax,edi
 00519641    call        TCanvas.Create
 00519646    mov         dword ptr [edi+58],esi
 00519649    mov         eax,edi
 0051964B    test        bl,bl
>0051964D    je          0051965E
 0051964F    call        @AfterConstruction
 00519654    pop         dword ptr fs:[0]
 0051965B    add         esp,0C
 0051965E    mov         eax,edi
 00519660    pop         edi
 00519661    pop         esi
 00519662    pop         ebx
 00519663    ret
*}
end;

//00519664
procedure TPrinterCanvas.CreateHandle;
begin
{*
 00519664    push        ebx
 00519665    mov         ebx,eax
 00519667    mov         dl,1
 00519669    mov         eax,dword ptr [ebx+58]
 0051966C    call        TPrinter.SetState
 00519671    mov         eax,ebx
 00519673    call        TPrinterCanvas.UpdateFont
 00519678    mov         eax,dword ptr [ebx+58]
 0051967B    mov         edx,dword ptr [eax+20]
 0051967E    mov         eax,ebx
 00519680    call        TCanvas.SetHandle
 00519685    pop         ebx
 00519686    ret
*}
end;

//00519688
procedure TPrinterCanvas.Changing;
begin
{*
 00519688    push        ebx
 00519689    mov         ebx,eax
 0051968B    mov         dl,1
 0051968D    mov         eax,dword ptr [ebx+58]
 00519690    call        TPrinter.CheckPrinting
 00519695    mov         eax,ebx
 00519697    call        TCustomCanvas.Changing
 0051969C    mov         eax,ebx
 0051969E    call        TPrinterCanvas.UpdateFont
 005196A3    pop         ebx
 005196A4    ret
*}
end;

//005196A8
procedure TPrinterCanvas.UpdateFont;
begin
{*
 005196A8    push        ebx
 005196A9    push        esi
 005196AA    push        edi
 005196AB    mov         ebx,eax
 005196AD    push        5A
 005196AF    mov         eax,dword ptr [ebx+58]
 005196B2    mov         eax,dword ptr [eax+20]
 005196B5    push        eax
 005196B6    call        gdi32.GetDeviceCaps
 005196BB    mov         esi,dword ptr [ebx+40]
 005196BE    cmp         eax,dword ptr [esi+1C]
>005196C1    je          005196E9
 005196C3    mov         eax,esi
 005196C5    call        TFont.GetSize
 005196CA    mov         esi,eax
 005196CC    push        5A
 005196CE    mov         eax,dword ptr [ebx+58]
 005196D1    mov         eax,dword ptr [eax+20]
 005196D4    push        eax
 005196D5    call        gdi32.GetDeviceCaps
 005196DA    mov         edi,dword ptr [ebx+40]
 005196DD    mov         dword ptr [edi+1C],eax
 005196E0    mov         edx,esi
 005196E2    mov         eax,edi
 005196E4    call        TFont.SetSize
 005196E9    pop         edi
 005196EA    pop         esi
 005196EB    pop         ebx
 005196EC    ret
*}
end;

//005196F0
constructor TPrinter.Create();
begin
{*
 005196F0    push        ebx
 005196F1    push        esi
 005196F2    test        dl,dl
>005196F4    je          005196FE
 005196F6    add         esp,0FFFFFFF0
 005196F9    call        @ClassCreate
 005196FE    mov         ebx,edx
 00519700    mov         esi,eax
 00519702    xor         edx,edx
 00519704    mov         eax,esi
 00519706    call        TObject.Create
 0051970B    mov         dword ptr [esi+14],0FFFFFFFF
 00519712    mov         eax,esi
 00519714    test        bl,bl
>00519716    je          00519727
 00519718    call        @AfterConstruction
 0051971D    pop         dword ptr fs:[0]
 00519724    add         esp,0C
 00519727    mov         eax,esi
 00519729    pop         esi
 0051972A    pop         ebx
 0051972B    ret
*}
end;

//0051972C
destructor TPrinter.Destroy();
begin
{*
 0051972C    push        ebx
 0051972D    push        esi
 0051972E    call        @BeforeDestruction
 00519733    mov         ebx,edx
 00519735    mov         esi,eax
 00519737    cmp         byte ptr [esi+1C],0
>0051973B    je          00519744
 0051973D    mov         eax,esi
 0051973F    call        TPrinter.EndDoc
 00519744    xor         edx,edx
 00519746    mov         eax,esi
 00519748    call        TPrinter.SetState
 0051974D    mov         eax,esi
 0051974F    call        TPrinter.FreePrinters
 00519754    mov         eax,esi
 00519756    call        TPrinter.FreeFonts
 0051975B    mov         eax,dword ptr [esi+4]
 0051975E    call        TObject.Free
 00519763    mov         eax,dword ptr [esi+24]
 00519766    test        eax,eax
>00519768    je          00519770
 0051976A    push        eax
 0051976B    call        winspool.ClosePrinter
 00519770    mov         eax,dword ptr [esi+2C]
 00519773    test        eax,eax
>00519775    je          0051978B
 00519777    push        eax
 00519778    call        kernel32.GlobalUnlock
 0051977D    mov         eax,dword ptr [esi+2C]
 00519780    push        eax
 00519781    call        kernel32.GlobalFree
 00519786    xor         eax,eax
 00519788    mov         dword ptr [esi+2C],eax
 0051978B    mov         dl,0FC
 0051978D    and         dl,bl
 0051978F    mov         eax,esi
 00519791    call        TObject.Destroy
 00519796    test        bl,bl
>00519798    jle         005197A1
 0051979A    mov         eax,esi
 0051979C    call        @ClassDestroy
 005197A1    pop         esi
 005197A2    pop         ebx
 005197A3    ret
*}
end;

//005197A4
procedure TPrinter.SetState(Value:UITypes.TPrinterState);
begin
{*
 005197A4    push        ebp
 005197A5    mov         ebp,esp
 005197A7    add         esp,0FFFFFFF8
 005197AA    push        ebx
 005197AB    push        esi
 005197AC    push        edi
 005197AD    xor         ecx,ecx
 005197AF    mov         dword ptr [ebp-8],ecx
 005197B2    mov         ebx,edx
 005197B4    mov         esi,eax
 005197B6    xor         eax,eax
 005197B8    push        ebp
 005197B9    push        5198C3
 005197BE    push        dword ptr fs:[eax]
 005197C1    mov         dword ptr fs:[eax],esp
 005197C4    movzx       eax,byte ptr [esi+1F]
 005197C8    cmp         bl,al
>005197CA    je          005198AD
 005197D0    xor         edi,edi
 005197D2    mov         edx,ebx
 005197D4    sub         dl,1
>005197D7    jb          005197E1
>005197D9    je          00519808
 005197DB    dec         dl
>005197DD    je          00519817
>005197DF    jmp         00519837
 005197E1    xor         edx,edx
 005197E3    mov         eax,esi
 005197E5    call        TPrinter.CheckPrinting
 005197EA    mov         eax,dword ptr [esi+4]
 005197ED    test        eax,eax
>005197EF    je          005197F8
 005197F1    xor         edx,edx
 005197F3    call        TCanvas.SetHandle
 005197F8    mov         eax,dword ptr [esi+20]
 005197FB    push        eax
 005197FC    call        gdi32.DeleteDC
 00519801    xor         eax,eax
 00519803    mov         dword ptr [esi+20],eax
>00519806    jmp         00519837
 00519808    cmp         al,2
>0051980A    je          005198AD
 00519810    mov         edi,410B08;gdi32.CreateICW:HDC
>00519815    jmp         00519837
 00519817    mov         eax,dword ptr [esi+4]
 0051981A    test        eax,eax
>0051981C    je          00519825
 0051981E    xor         edx,edx
 00519820    call        TCanvas.SetHandle
 00519825    mov         eax,dword ptr [esi+20]
 00519828    test        eax,eax
>0051982A    je          00519832
 0051982C    push        eax
 0051982D    call        gdi32.DeleteDC
 00519832    mov         edi,410AE0;gdi32.CreateDCW:HDC
 00519837    test        edi,edi
>00519839    je          005198AA
 0051983B    mov         eax,esi
 0051983D    call        TPrinter.GetPrinterIndex
 00519842    push        eax
 00519843    mov         eax,esi
 00519845    call        TPrinter.GetPrinters
 0051984A    pop         edx
 0051984B    mov         ecx,dword ptr [eax]
 0051984D    call        dword ptr [ecx+18]
 00519850    mov         dword ptr [ebp-4],eax
 00519853    mov         eax,dword ptr [esi+28]
 00519856    push        eax
 00519857    mov         eax,dword ptr [ebp-4]
 0051985A    mov         eax,dword ptr [eax+0C]
 0051985D    call        @UStrToPWChar
 00519862    push        eax
 00519863    mov         eax,dword ptr [ebp-4]
 00519866    mov         eax,dword ptr [eax+8]
 00519869    call        @UStrToPWChar
 0051986E    push        eax
 0051986F    mov         eax,dword ptr [ebp-4]
 00519872    mov         eax,dword ptr [eax+4]
 00519875    call        @UStrToPWChar
 0051987A    push        eax
 0051987B    call        edi
 0051987D    mov         dword ptr [esi+20],eax
 00519880    cmp         dword ptr [esi+20],0
>00519884    jne         0051989B
 00519886    lea         edx,[ebp-8]
 00519889    mov         eax,[007C4BD8];^SResString245:TResStringRec
 0051988E    call        LoadResString
 00519893    mov         eax,dword ptr [ebp-8]
 00519896    call        RaiseError
 0051989B    mov         eax,dword ptr [esi+4]
 0051989E    test        eax,eax
>005198A0    je          005198AA
 005198A2    mov         edx,dword ptr [esi+20]
 005198A5    call        TCanvas.SetHandle
 005198AA    mov         byte ptr [esi+1F],bl
 005198AD    xor         eax,eax
 005198AF    pop         edx
 005198B0    pop         ecx
 005198B1    pop         ecx
 005198B2    mov         dword ptr fs:[eax],edx
 005198B5    push        5198CA
 005198BA    lea         eax,[ebp-8]
 005198BD    call        @UStrClr
 005198C2    ret
>005198C3    jmp         @HandleFinally
>005198C8    jmp         005198BA
 005198CA    pop         edi
 005198CB    pop         esi
 005198CC    pop         ebx
 005198CD    pop         ecx
 005198CE    pop         ecx
 005198CF    pop         ebp
 005198D0    ret
*}
end;

//005198D4
procedure TPrinter.CheckPrinting(Value:Boolean);
begin
{*
 005198D4    push        ebp
 005198D5    mov         ebp,esp
 005198D7    push        0
 005198D9    push        0
 005198DB    xor         ecx,ecx
 005198DD    push        ebp
 005198DE    push        519939
 005198E3    push        dword ptr fs:[ecx]
 005198E6    mov         dword ptr fs:[ecx],esp
 005198E9    cmp         dl,byte ptr [eax+1C]
>005198EC    je          0051991E
 005198EE    test        dl,dl
>005198F0    je          00519909
 005198F2    lea         edx,[ebp-4]
 005198F5    mov         eax,[007C4D20];^SResString242:TResStringRec
 005198FA    call        LoadResString
 005198FF    mov         eax,dword ptr [ebp-4]
 00519902    call        RaiseError
>00519907    jmp         0051991E
 00519909    lea         edx,[ebp-8]
 0051990C    mov         eax,[007C4838];^SResString243:TResStringRec
 00519911    call        LoadResString
 00519916    mov         eax,dword ptr [ebp-8]
 00519919    call        RaiseError
 0051991E    xor         eax,eax
 00519920    pop         edx
 00519921    pop         ecx
 00519922    pop         ecx
 00519923    mov         dword ptr fs:[eax],edx
 00519926    push        519940
 0051992B    lea         eax,[ebp-8]
 0051992E    mov         edx,2
 00519933    call        @UStrArrayClr
 00519938    ret
>00519939    jmp         @HandleFinally
>0051993E    jmp         0051992B
 00519940    pop         ecx
 00519941    pop         ecx
 00519942    pop         ebp
 00519943    ret
*}
end;

//00519944
procedure TPrinter.BeginDoc;
begin
{*
 00519944    push        ebx
 00519945    add         esp,0FFFFFFEC
 00519948    mov         ebx,eax
 0051994A    xor         edx,edx
 0051994C    mov         eax,ebx
 0051994E    call        TPrinter.CheckPrinting
 00519953    mov         dl,2
 00519955    mov         eax,ebx
 00519957    call        TPrinter.SetState
 0051995C    mov         eax,ebx
 0051995E    call        TPrinter.GetCanvas
 00519963    mov         edx,dword ptr [eax]
 00519965    call        dword ptr [edx+80]
 0051996B    mov         eax,ebx
 0051996D    call        TPrinter.GetCanvas
 00519972    call        TPrinterCanvas.UpdateFont
 00519977    mov         byte ptr [ebx+1C],1
 0051997B    mov         byte ptr [ebx+1D],0
 0051997F    mov         dword ptr [ebx+0C],1
 00519986    mov         eax,esp
 00519988    xor         ecx,ecx
 0051998A    mov         edx,14
 0051998F    call        @FillChar
 00519994    mov         dword ptr [esp],14
 0051999B    mov         eax,dword ptr [ebx+18]
 0051999E    call        @UStrToPWChar
 005199A3    mov         dword ptr [esp+4],eax
 005199A7    push        5191A4;AbortProc:Windows.BOOL
 005199AC    mov         eax,dword ptr [ebx+20]
 005199AF    push        eax
 005199B0    call        gdi32.SetAbortProc
 005199B5    push        esp
 005199B6    mov         eax,dword ptr [ebx+20]
 005199B9    push        eax
 005199BA    call        gdi32.StartDocW
 005199BF    test        eax,eax
>005199C1    jg          005199C9
 005199C3    mov         byte ptr [ebx+1C],0
>005199C7    jmp         005199D2
 005199C9    mov         eax,dword ptr [ebx+20]
 005199CC    push        eax
 005199CD    call        gdi32.StartPage
 005199D2    add         esp,14
 005199D5    pop         ebx
 005199D6    ret
*}
end;

//005199D8
procedure TPrinter.EndDoc;
begin
{*
 005199D8    push        ebx
 005199D9    mov         ebx,eax
 005199DB    mov         dl,1
 005199DD    mov         eax,ebx
 005199DF    call        TPrinter.CheckPrinting
 005199E4    mov         eax,dword ptr [ebx+20]
 005199E7    push        eax
 005199E8    call        gdi32.EndPage
 005199ED    cmp         byte ptr [ebx+1D],0
>005199F1    jne         005199FC
 005199F3    mov         eax,dword ptr [ebx+20]
 005199F6    push        eax
 005199F7    call        gdi32.EndDoc
 005199FC    mov         byte ptr [ebx+1C],0
 00519A00    mov         byte ptr [ebx+1D],0
 00519A04    xor         eax,eax
 00519A06    mov         dword ptr [ebx+0C],eax
 00519A09    pop         ebx
 00519A0A    ret
*}
end;

//00519A0C
procedure TPrinter.NewPage;
begin
{*
 00519A0C    push        ebx
 00519A0D    mov         ebx,eax
 00519A0F    mov         dl,1
 00519A11    mov         eax,ebx
 00519A13    call        TPrinter.CheckPrinting
 00519A18    mov         eax,dword ptr [ebx+20]
 00519A1B    push        eax
 00519A1C    call        gdi32.EndPage
 00519A21    mov         eax,dword ptr [ebx+20]
 00519A24    push        eax
 00519A25    call        gdi32.StartPage
 00519A2A    inc         dword ptr [ebx+0C]
 00519A2D    mov         eax,ebx
 00519A2F    call        TPrinter.GetCanvas
 00519A34    mov         edx,dword ptr [eax]
 00519A36    call        dword ptr [edx+80]
 00519A3C    pop         ebx
 00519A3D    ret
*}
end;

//00519A40
procedure TPrinter.GetPrinter(ADevice:PWideChar; ADriver:PWideChar; var ADeviceMode:NativeUInt; APort:PWideChar);
begin
{*
 00519A40    push        ebp
 00519A41    mov         ebp,esp
 00519A43    push        ecx
 00519A44    push        ebx
 00519A45    push        esi
 00519A46    push        edi
 00519A47    mov         dword ptr [ebp-4],ecx
 00519A4A    mov         edi,edx
 00519A4C    mov         ebx,eax
 00519A4E    mov         eax,ebx
 00519A50    call        TPrinter.GetPrinterIndex
 00519A55    push        eax
 00519A56    mov         eax,ebx
 00519A58    call        TPrinter.GetPrinters
 00519A5D    pop         edx
 00519A5E    mov         ecx,dword ptr [eax]
 00519A60    call        dword ptr [ecx+18]
 00519A63    mov         esi,eax
 00519A65    mov         eax,dword ptr [esi+8]
 00519A68    call        @UStrToPWChar
 00519A6D    mov         edx,eax
 00519A6F    mov         eax,edi
 00519A71    call        StrCopy
 00519A76    mov         eax,dword ptr [esi+4]
 00519A79    call        @UStrToPWChar
 00519A7E    mov         edx,eax
 00519A80    mov         eax,dword ptr [ebp-4]
 00519A83    call        StrCopy
 00519A88    mov         eax,dword ptr [esi+0C]
 00519A8B    call        @UStrToPWChar
 00519A90    mov         edx,eax
 00519A92    mov         eax,dword ptr [ebp+0C]
 00519A95    call        StrCopy
 00519A9A    mov         eax,dword ptr [ebp+8]
 00519A9D    mov         edx,dword ptr [ebx+2C]
 00519AA0    mov         dword ptr [eax],edx
 00519AA2    pop         edi
 00519AA3    pop         esi
 00519AA4    pop         ebx
 00519AA5    pop         ecx
 00519AA6    pop         ebp
 00519AA7    ret         8
*}
end;

//00519AAC
procedure TPrinter.SetPrinterCapabilities(Value:Integer);
begin
{*
 00519AAC    push        ebx
 00519AAD    push        esi
 00519AAE    mov         esi,edx
 00519AB0    mov         ebx,eax
 00519AB2    movzx       eax,byte ptr ds:[519AE4]
 00519AB9    mov         byte ptr [ebx+1E],al
 00519ABC    test        esi,1
>00519AC2    je          00519AC8
 00519AC4    or          byte ptr [ebx+1E],2
 00519AC8    test        esi,100
>00519ACE    je          00519AD4
 00519AD0    or          byte ptr [ebx+1E],1
 00519AD4    test        esi,8000
>00519ADA    je          00519AE0
 00519ADC    or          byte ptr [ebx+1E],4
 00519AE0    pop         esi
 00519AE1    pop         ebx
 00519AE2    ret
*}
end;

//00519AE8
procedure TPrinter.SetPrinter(ADevice:PWideChar; ADriver:PWideChar; ADeviceMode:NativeUInt; APort:PWideChar);
begin
{*
 00519AE8    push        ebp
 00519AE9    mov         ebp,esp
 00519AEB    add         esp,0FFFFFFD8
 00519AEE    push        ebx
 00519AEF    push        esi
 00519AF0    push        edi
 00519AF1    xor         ebx,ebx
 00519AF3    mov         dword ptr [ebp-14],ebx
 00519AF6    mov         dword ptr [ebp-18],ebx
 00519AF9    mov         dword ptr [ebp-8],ecx
 00519AFC    mov         dword ptr [ebp-4],edx
 00519AFF    mov         ebx,eax
 00519B01    mov         esi,dword ptr [ebp+8]
 00519B04    xor         eax,eax
 00519B06    push        ebp
 00519B07    push        519CF5
 00519B0C    push        dword ptr fs:[eax]
 00519B0F    mov         dword ptr fs:[eax],esp
 00519B12    xor         edx,edx
 00519B14    mov         eax,ebx
 00519B16    call        TPrinter.CheckPrinting
 00519B1B    mov         eax,dword ptr [ebx+2C]
 00519B1E    cmp         esi,eax
>00519B20    je          00519B3D
 00519B22    test        eax,eax
>00519B24    je          00519B3A
 00519B26    push        eax
 00519B27    call        kernel32.GlobalUnlock
 00519B2C    mov         eax,dword ptr [ebx+2C]
 00519B2F    push        eax
 00519B30    call        kernel32.GlobalFree
 00519B35    xor         eax,eax
 00519B37    mov         dword ptr [ebx+28],eax
 00519B3A    mov         dword ptr [ebx+2C],esi
 00519B3D    mov         esi,dword ptr [ebx+2C]
 00519B40    test        esi,esi
>00519B42    je          00519B59
 00519B44    push        esi
 00519B45    call        kernel32.GlobalLock
 00519B4A    mov         edi,eax
 00519B4C    mov         dword ptr [ebx+28],edi
 00519B4F    mov         edx,dword ptr [edi+48]
 00519B52    mov         eax,ebx
 00519B54    call        TPrinter.SetPrinterCapabilities
 00519B59    mov         eax,ebx
 00519B5B    call        TPrinter.FreeFonts
 00519B60    mov         eax,dword ptr [ebx+24]
 00519B63    test        eax,eax
>00519B65    je          00519B72
 00519B67    push        eax
 00519B68    call        winspool.ClosePrinter
 00519B6D    xor         eax,eax
 00519B6F    mov         dword ptr [ebx+24],eax
 00519B72    xor         edx,edx
 00519B74    mov         eax,ebx
 00519B76    call        TPrinter.SetState
 00519B7B    mov         dword ptr [ebp-0C],0FFFFFFFF
 00519B82    mov         eax,ebx
 00519B84    call        TPrinter.GetPrinters
 00519B89    mov         dword ptr [ebp-10],eax
 00519B8C    mov         eax,dword ptr [ebp-10]
 00519B8F    mov         edx,dword ptr [eax]
 00519B91    call        dword ptr [edx+14]
 00519B94    mov         edi,eax
 00519B96    dec         edi
 00519B97    test        edi,edi
>00519B99    jl          00519BD9
 00519B9B    inc         edi
 00519B9C    xor         esi,esi
 00519B9E    mov         eax,dword ptr [ebp+0C]
 00519BA1    push        eax
 00519BA2    mov         edx,esi
 00519BA4    mov         eax,dword ptr [ebp-10]
 00519BA7    mov         ecx,dword ptr [eax]
 00519BA9    call        dword ptr [ecx+18]
 00519BAC    mov         ecx,dword ptr [ebp-4]
 00519BAF    mov         edx,dword ptr [ebp-8]
 00519BB2    call        TPrinterDevice.IsEqual
 00519BB7    test        al,al
>00519BB9    je          00519BD5
 00519BBB    mov         edx,esi
 00519BBD    mov         eax,dword ptr [ebp-10]
 00519BC0    mov         ecx,dword ptr [eax]
 00519BC2    call        dword ptr [ecx+18]
 00519BC5    add         eax,0C
 00519BC8    mov         edx,dword ptr [ebp+0C]
 00519BCB    call        @UStrFromPWChar
 00519BD0    mov         dword ptr [ebp-0C],esi
>00519BD3    jmp         00519BD9
 00519BD5    inc         esi
 00519BD6    dec         edi
>00519BD7    jne         00519B9E
 00519BD9    cmp         dword ptr [ebp-0C],0FFFFFFFF
>00519BDD    jne         00519C43
 00519BDF    mov         eax,dword ptr [ebx+10]
 00519BE2    mov         edx,dword ptr [eax]
 00519BE4    call        dword ptr [edx+14]
 00519BE7    mov         dword ptr [ebp-0C],eax
 00519BEA    mov         eax,dword ptr [ebp-4]
 00519BED    push        eax
 00519BEE    mov         eax,dword ptr [ebp+0C]
 00519BF1    push        eax
 00519BF2    mov         ecx,dword ptr [ebp-8]
 00519BF5    mov         dl,1
 00519BF7    mov         eax,[005191C8];TPrinterDevice
 00519BFC    call        TPrinterDevice.Create
 00519C01    push        eax
 00519C02    lea         eax,[ebp-14]
 00519C05    push        eax
 00519C06    lea         edx,[ebp-18]
 00519C09    mov         eax,[007C43A4];^SResString246:TResStringRec
 00519C0E    call        LoadResString
 00519C13    mov         eax,dword ptr [ebp-18]
 00519C16    mov         edx,dword ptr [ebp-4]
 00519C19    mov         dword ptr [ebp-28],edx
 00519C1C    mov         byte ptr [ebp-24],0A
 00519C20    mov         edx,dword ptr [ebp+0C]
 00519C23    mov         dword ptr [ebp-20],edx
 00519C26    mov         byte ptr [ebp-1C],0A
 00519C2A    lea         edx,[ebp-28]
 00519C2D    mov         ecx,1
 00519C32    call        Format
 00519C37    mov         edx,dword ptr [ebp-14]
 00519C3A    mov         eax,dword ptr [ebx+10]
 00519C3D    pop         ecx
 00519C3E    mov         esi,dword ptr [eax]
 00519C40    call        dword ptr [esi+40]
 00519C43    mov         eax,dword ptr [ebp-0C]
 00519C46    mov         dword ptr [ebx+14],eax
 00519C49    push        0
 00519C4B    lea         eax,[ebx+24]
 00519C4E    push        eax
 00519C4F    mov         eax,dword ptr [ebp-4]
 00519C52    push        eax
 00519C53    call        winspool.OpenPrinterW
 00519C58    test        eax,eax
>00519C5A    je          00519CDA
 00519C5C    cmp         dword ptr [ebx+2C],0
>00519C60    jne         00519CC7
 00519C62    push        0
 00519C64    push        0
 00519C66    push        0
 00519C68    mov         eax,dword ptr [ebp-4]
 00519C6B    push        eax
 00519C6C    mov         eax,dword ptr [ebx+24]
 00519C6F    push        eax
 00519C70    push        0
 00519C72    call        winspool.DocumentPropertiesW
 00519C77    push        eax
 00519C78    push        42
 00519C7A    call        kernel32.GlobalAlloc
 00519C7F    mov         esi,eax
 00519C81    mov         dword ptr [ebx+2C],esi
 00519C84    test        esi,esi
>00519C86    je          00519CC7
 00519C88    push        esi
 00519C89    call        kernel32.GlobalLock
 00519C8E    mov         edi,eax
 00519C90    mov         dword ptr [ebx+28],edi
 00519C93    push        2
 00519C95    push        0
 00519C97    push        edi
 00519C98    mov         eax,dword ptr [ebp-4]
 00519C9B    push        eax
 00519C9C    mov         eax,dword ptr [ebx+24]
 00519C9F    push        eax
 00519CA0    push        0
 00519CA2    call        winspool.DocumentPropertiesW
 00519CA7    test        eax,eax
>00519CA9    jge         00519CC7
 00519CAB    mov         eax,dword ptr [ebx+2C]
 00519CAE    push        eax
 00519CAF    call        kernel32.GlobalUnlock
 00519CB4    mov         eax,dword ptr [ebx+2C]
 00519CB7    push        eax
 00519CB8    call        kernel32.GlobalFree
 00519CBD    xor         eax,eax
 00519CBF    mov         dword ptr [ebx+2C],eax
 00519CC2    xor         eax,eax
 00519CC4    mov         dword ptr [ebx+28],eax
 00519CC7    cmp         dword ptr [ebx+2C],0
>00519CCB    je          00519CDA
 00519CCD    mov         eax,dword ptr [ebx+28]
 00519CD0    mov         edx,dword ptr [eax+48]
 00519CD3    mov         eax,ebx
 00519CD5    call        TPrinter.SetPrinterCapabilities
 00519CDA    xor         eax,eax
 00519CDC    pop         edx
 00519CDD    pop         ecx
 00519CDE    pop         ecx
 00519CDF    mov         dword ptr fs:[eax],edx
 00519CE2    push        519CFC
 00519CE7    lea         eax,[ebp-18]
 00519CEA    mov         edx,2
 00519CEF    call        @UStrArrayClr
 00519CF4    ret
>00519CF5    jmp         @HandleFinally
>00519CFA    jmp         00519CE7
 00519CFC    pop         edi
 00519CFD    pop         esi
 00519CFE    pop         ebx
 00519CFF    mov         esp,ebp
 00519D01    pop         ebp
 00519D02    ret         8
*}
end;

//00519D08
function TPrinter.GetCanvas:TCanvas;
begin
{*
 00519D08    push        ebx
 00519D09    mov         ebx,eax
 00519D0B    cmp         dword ptr [ebx+4],0
>00519D0F    jne         00519D22
 00519D11    mov         ecx,ebx
 00519D13    mov         dl,1
 00519D15    mov         eax,[005193AC];TPrinterCanvas
 00519D1A    call        TPrinterCanvas.Create
 00519D1F    mov         dword ptr [ebx+4],eax
 00519D22    mov         eax,dword ptr [ebx+4]
 00519D25    pop         ebx
 00519D26    ret
*}
end;

//00519D28
function EnumFontsProc(var LogFont:Windows.TLogFont; var TextMetric:Windows.TTextMetric; FontType:Integer; Data:Pointer):Integer; stdcall;
begin
{*
 00519D28    push        ebp
 00519D29    mov         ebp,esp
 00519D2B    push        0
 00519D2D    push        ebx
 00519D2E    xor         eax,eax
 00519D30    push        ebp
 00519D31    push        519D75
 00519D36    push        dword ptr fs:[eax]
 00519D39    mov         dword ptr fs:[eax],esp
 00519D3C    lea         eax,[ebp-4]
 00519D3F    mov         edx,dword ptr [ebp+8]
 00519D42    add         edx,1C
 00519D45    mov         ecx,20
 00519D4A    call        @UStrFromWArray
 00519D4F    mov         edx,dword ptr [ebp-4]
 00519D52    mov         eax,dword ptr [ebp+14]
 00519D55    mov         ecx,dword ptr [eax]
 00519D57    call        dword ptr [ecx+3C]
 00519D5A    mov         ebx,1
 00519D5F    xor         eax,eax
 00519D61    pop         edx
 00519D62    pop         ecx
 00519D63    pop         ecx
 00519D64    mov         dword ptr fs:[eax],edx
 00519D67    push        519D7C
 00519D6C    lea         eax,[ebp-4]
 00519D6F    call        @UStrClr
 00519D74    ret
>00519D75    jmp         @HandleFinally
>00519D7A    jmp         00519D6C
 00519D7C    mov         eax,ebx
 00519D7E    pop         ebx
 00519D7F    pop         ecx
 00519D80    pop         ebp
 00519D81    ret         10
*}
end;

//00519D84
function TPrinter.GetFonts:TStrings;
begin
{*
 00519D84    push        ebp
 00519D85    mov         ebp,esp
 00519D87    add         esp,0FFFFFFF8
 00519D8A    push        ebx
 00519D8B    push        esi
 00519D8C    push        edi
 00519D8D    mov         dword ptr [ebp-4],eax
 00519D90    mov         eax,dword ptr [ebp-4]
 00519D93    cmp         dword ptr [eax+8],0
>00519D97    jne         00519E10
 00519D99    xor         edx,edx
 00519D9B    push        ebp
 00519D9C    push        519DE7
 00519DA1    push        dword ptr fs:[edx]
 00519DA4    mov         dword ptr fs:[edx],esp
 00519DA7    mov         dl,1
 00519DA9    mov         eax,dword ptr [ebp-4]
 00519DAC    call        TPrinter.SetState
 00519DB1    mov         dl,1
 00519DB3    mov         eax,[0046F9A0];TStringList
 00519DB8    call        TStringList.Create
 00519DBD    mov         edx,dword ptr [ebp-4]
 00519DC0    mov         dword ptr [edx+8],eax
 00519DC3    mov         eax,dword ptr [ebp-4]
 00519DC6    mov         eax,dword ptr [eax+8]
 00519DC9    push        eax
 00519DCA    push        519D28;EnumFontsProc:Integer
 00519DCF    push        0
 00519DD1    mov         eax,dword ptr [ebp-4]
 00519DD4    mov         eax,dword ptr [eax+20]
 00519DD7    push        eax
 00519DD8    call        gdi32.EnumFontsW
 00519DDD    xor         eax,eax
 00519DDF    pop         edx
 00519DE0    pop         ecx
 00519DE1    pop         ecx
 00519DE2    mov         dword ptr fs:[eax],edx
>00519DE5    jmp         00519E10
>00519DE7    jmp         @HandleAnyException
 00519DEC    mov         eax,dword ptr [ebp-4]
 00519DEF    add         eax,8
 00519DF2    mov         dword ptr [ebp-8],eax
 00519DF5    mov         eax,dword ptr [ebp-8]
 00519DF8    mov         eax,dword ptr [eax]
 00519DFA    mov         edx,dword ptr [ebp-8]
 00519DFD    xor         ecx,ecx
 00519DFF    mov         dword ptr [edx],ecx
 00519E01    call        TObject.Free
 00519E06    call        @RaiseAgain
 00519E0B    call        @DoneExcept
 00519E10    mov         eax,dword ptr [ebp-4]
 00519E13    mov         eax,dword ptr [eax+8]
 00519E16    pop         edi
 00519E17    pop         esi
 00519E18    pop         ebx
 00519E19    pop         ecx
 00519E1A    pop         ecx
 00519E1B    pop         ebp
 00519E1C    ret
*}
end;

//00519E20
function TPrinter.GetHandle:HDC;
begin
{*
 00519E20    push        ebx
 00519E21    mov         ebx,eax
 00519E23    mov         dl,1
 00519E25    mov         eax,ebx
 00519E27    call        TPrinter.SetState
 00519E2C    mov         eax,dword ptr [ebx+20]
 00519E2F    pop         ebx
 00519E30    ret
*}
end;

//00519E34
function TPrinter.GetNumCopies:Integer;
begin
{*
 00519E34    push        ebp
 00519E35    mov         ebp,esp
 00519E37    push        0
 00519E39    push        ebx
 00519E3A    mov         ebx,eax
 00519E3C    xor         eax,eax
 00519E3E    push        ebp
 00519E3F    push        519E8B
 00519E44    push        dword ptr fs:[eax]
 00519E47    mov         dword ptr fs:[eax],esp
 00519E4A    mov         eax,ebx
 00519E4C    call        TPrinter.GetPrinterIndex
 00519E51    cmp         dword ptr [ebx+2C],0
>00519E55    jne         00519E6C
 00519E57    lea         edx,[ebp-4]
 00519E5A    mov         eax,[007C4EBC];^SResString315:TResStringRec
 00519E5F    call        LoadResString
 00519E64    mov         eax,dword ptr [ebp-4]
 00519E67    call        RaiseError
 00519E6C    mov         eax,dword ptr [ebx+28]
 00519E6F    movsx       eax,word ptr [eax+56]
 00519E73    mov         ebx,eax
 00519E75    xor         eax,eax
 00519E77    pop         edx
 00519E78    pop         ecx
 00519E79    pop         ecx
 00519E7A    mov         dword ptr fs:[eax],edx
 00519E7D    push        519E92
 00519E82    lea         eax,[ebp-4]
 00519E85    call        @UStrClr
 00519E8A    ret
>00519E8B    jmp         @HandleFinally
>00519E90    jmp         00519E82
 00519E92    mov         eax,ebx
 00519E94    pop         ebx
 00519E95    pop         ecx
 00519E96    pop         ebp
 00519E97    ret
*}
end;

//00519E98
procedure TPrinter.SetNumCopies(Value:Integer);
begin
{*
 00519E98    push        ebp
 00519E99    mov         ebp,esp
 00519E9B    push        0
 00519E9D    push        ebx
 00519E9E    push        esi
 00519E9F    mov         esi,edx
 00519EA1    mov         ebx,eax
 00519EA3    xor         eax,eax
 00519EA5    push        ebp
 00519EA6    push        519F02
 00519EAB    push        dword ptr fs:[eax]
 00519EAE    mov         dword ptr fs:[eax],esp
 00519EB1    xor         edx,edx
 00519EB3    mov         eax,ebx
 00519EB5    call        TPrinter.CheckPrinting
 00519EBA    mov         eax,ebx
 00519EBC    call        TPrinter.GetPrinterIndex
 00519EC1    cmp         dword ptr [ebx+2C],0
>00519EC5    jne         00519EDC
 00519EC7    lea         edx,[ebp-4]
 00519ECA    mov         eax,[007C4EBC];^SResString315:TResStringRec
 00519ECF    call        LoadResString
 00519ED4    mov         eax,dword ptr [ebp-4]
 00519ED7    call        RaiseError
 00519EDC    xor         edx,edx
 00519EDE    mov         eax,ebx
 00519EE0    call        TPrinter.SetState
 00519EE5    mov         eax,dword ptr [ebx+28]
 00519EE8    mov         word ptr [eax+56],si
 00519EEC    xor         eax,eax
 00519EEE    pop         edx
 00519EEF    pop         ecx
 00519EF0    pop         ecx
 00519EF1    mov         dword ptr fs:[eax],edx
 00519EF4    push        519F09
 00519EF9    lea         eax,[ebp-4]
 00519EFC    call        @UStrClr
 00519F01    ret
>00519F02    jmp         @HandleFinally
>00519F07    jmp         00519EF9
 00519F09    pop         esi
 00519F0A    pop         ebx
 00519F0B    pop         ecx
 00519F0C    pop         ebp
 00519F0D    ret
*}
end;

//00519F10
function TPrinter.GetOrientation:TPrinterOrientation;
begin
{*
 00519F10    push        ebp
 00519F11    mov         ebp,esp
 00519F13    push        0
 00519F15    push        ebx
 00519F16    mov         ebx,eax
 00519F18    xor         eax,eax
 00519F1A    push        ebp
 00519F1B    push        519F6E
 00519F20    push        dword ptr fs:[eax]
 00519F23    mov         dword ptr fs:[eax],esp
 00519F26    mov         eax,ebx
 00519F28    call        TPrinter.GetPrinterIndex
 00519F2D    cmp         dword ptr [ebx+2C],0
>00519F31    jne         00519F48
 00519F33    lea         edx,[ebp-4]
 00519F36    mov         eax,[007C4EBC];^SResString315:TResStringRec
 00519F3B    call        LoadResString
 00519F40    mov         eax,dword ptr [ebp-4]
 00519F43    call        RaiseError
 00519F48    mov         eax,dword ptr [ebx+28]
 00519F4B    cmp         word ptr [eax+4C],1
>00519F50    jne         00519F56
 00519F52    xor         ebx,ebx
>00519F54    jmp         00519F58
 00519F56    mov         bl,1
 00519F58    xor         eax,eax
 00519F5A    pop         edx
 00519F5B    pop         ecx
 00519F5C    pop         ecx
 00519F5D    mov         dword ptr fs:[eax],edx
 00519F60    push        519F75
 00519F65    lea         eax,[ebp-4]
 00519F68    call        @UStrClr
 00519F6D    ret
>00519F6E    jmp         @HandleFinally
>00519F73    jmp         00519F65
 00519F75    mov         eax,ebx
 00519F77    pop         ebx
 00519F78    pop         ecx
 00519F79    pop         ebp
 00519F7A    ret
*}
end;

//00519F7C
procedure TPrinter.SetOrientation(Value:UITypes.TPrinterOrientation);
begin
{*
 00519F7C    push        ebp
 00519F7D    mov         ebp,esp
 00519F7F    push        0
 00519F81    push        ebx
 00519F82    push        esi
 00519F83    mov         ebx,edx
 00519F85    mov         esi,eax
 00519F87    xor         eax,eax
 00519F89    push        ebp
 00519F8A    push        519FF1
 00519F8F    push        dword ptr fs:[eax]
 00519F92    mov         dword ptr fs:[eax],esp
 00519F95    xor         edx,edx
 00519F97    mov         eax,esi
 00519F99    call        TPrinter.CheckPrinting
 00519F9E    mov         eax,esi
 00519FA0    call        TPrinter.GetPrinterIndex
 00519FA5    cmp         dword ptr [esi+2C],0
>00519FA9    jne         00519FC0
 00519FAB    lea         edx,[ebp-4]
 00519FAE    mov         eax,[007C4EBC];^SResString315:TResStringRec
 00519FB3    call        LoadResString
 00519FB8    mov         eax,dword ptr [ebp-4]
 00519FBB    call        RaiseError
 00519FC0    xor         edx,edx
 00519FC2    mov         eax,esi
 00519FC4    call        TPrinter.SetState
 00519FC9    movzx       eax,bl
 00519FCC    movzx       eax,word ptr [eax*4+7A14FC]
 00519FD4    mov         edx,dword ptr [esi+28]
 00519FD7    mov         word ptr [edx+4C],ax
 00519FDB    xor         eax,eax
 00519FDD    pop         edx
 00519FDE    pop         ecx
 00519FDF    pop         ecx
 00519FE0    mov         dword ptr fs:[eax],edx
 00519FE3    push        519FF8
 00519FE8    lea         eax,[ebp-4]
 00519FEB    call        @UStrClr
 00519FF0    ret
>00519FF1    jmp         @HandleFinally
>00519FF6    jmp         00519FE8
 00519FF8    pop         esi
 00519FF9    pop         ebx
 00519FFA    pop         ecx
 00519FFB    pop         ebp
 00519FFC    ret
*}
end;

//0051A000
function TPrinter.GetPageHeight:Integer;
begin
{*
 0051A000    push        ebx
 0051A001    mov         ebx,eax
 0051A003    mov         dl,1
 0051A005    mov         eax,ebx
 0051A007    call        TPrinter.SetState
 0051A00C    push        0A
 0051A00E    mov         eax,dword ptr [ebx+20]
 0051A011    push        eax
 0051A012    call        gdi32.GetDeviceCaps
 0051A017    pop         ebx
 0051A018    ret
*}
end;

//0051A01C
function TPrinter.GetPageWidth:Integer;
begin
{*
 0051A01C    push        ebx
 0051A01D    mov         ebx,eax
 0051A01F    mov         dl,1
 0051A021    mov         eax,ebx
 0051A023    call        TPrinter.SetState
 0051A028    push        8
 0051A02A    mov         eax,dword ptr [ebx+20]
 0051A02D    push        eax
 0051A02E    call        gdi32.GetDeviceCaps
 0051A033    pop         ebx
 0051A034    ret
*}
end;

//0051A038
function TPrinter.GetPrinterIndex:Integer;
begin
{*
 0051A038    push        ebx
 0051A039    mov         ebx,eax
 0051A03B    cmp         dword ptr [ebx+14],0FFFFFFFF
>0051A03F    jne         0051A048
 0051A041    mov         eax,ebx
 0051A043    call        TPrinter.SetToDefaultPrinter
 0051A048    mov         eax,dword ptr [ebx+14]
 0051A04B    pop         ebx
 0051A04C    ret
*}
end;

//0051A16C
function TPrinter.GetPrinters:TStrings;
begin
{*
 0051A16C    push        ebp
 0051A16D    mov         ebp,esp
 0051A16F    add         esp,0FFFFFFC4
 0051A172    push        ebx
 0051A173    push        esi
 0051A174    push        edi
 0051A175    xor         edx,edx
 0051A177    mov         dword ptr [ebp-28],edx
 0051A17A    mov         dword ptr [ebp-2C],edx
 0051A17D    mov         dword ptr [ebp-24],edx
 0051A180    mov         dword ptr [ebp-4],eax
 0051A183    xor         eax,eax
 0051A185    push        ebp
 0051A186    push        51A39B
 0051A18B    push        dword ptr fs:[eax]
 0051A18E    mov         dword ptr fs:[eax],esp
 0051A191    mov         eax,dword ptr [ebp-4]
 0051A194    cmp         dword ptr [eax+10],0
>0051A198    jne         0051A37A
 0051A19E    mov         dl,1
 0051A1A0    mov         eax,[0046F9A0];TStringList
 0051A1A5    call        TStringList.Create
 0051A1AA    mov         ebx,eax
 0051A1AC    mov         eax,dword ptr [ebp-4]
 0051A1AF    mov         dword ptr [eax+10],ebx
 0051A1B2    xor         edx,edx
 0051A1B4    push        ebp
 0051A1B5    push        51A358
 0051A1BA    push        dword ptr fs:[edx]
 0051A1BD    mov         dword ptr fs:[edx],esp
 0051A1C0    mov         eax,[007C4EC4];^gvar_0079EDDC
 0051A1C5    cmp         dword ptr [eax],2
>0051A1C8    jne         0051A1D5
 0051A1CA    mov         esi,6
 0051A1CF    mov         byte ptr [ebp-0D],4
>0051A1D3    jmp         0051A1DE
 0051A1D5    mov         esi,2
 0051A1DA    mov         byte ptr [ebp-0D],5
 0051A1DE    xor         eax,eax
 0051A1E0    mov         dword ptr [ebp-8],eax
 0051A1E3    lea         eax,[ebp-0C]
 0051A1E6    push        eax
 0051A1E7    lea         eax,[ebp-8]
 0051A1EA    push        eax
 0051A1EB    push        0
 0051A1ED    push        0
 0051A1EF    movzx       edi,byte ptr [ebp-0D]
 0051A1F3    push        edi
 0051A1F4    push        0
 0051A1F6    push        esi
 0051A1F7    call        winspool.EnumPrintersW
 0051A1FC    cmp         dword ptr [ebp-8],0
>0051A200    jne         0051A20F
 0051A202    xor         eax,eax
 0051A204    pop         edx
 0051A205    pop         ecx
 0051A206    pop         ecx
 0051A207    mov         dword ptr fs:[eax],edx
>0051A20A    jmp         0051A380
 0051A20F    mov         eax,dword ptr [ebp-8]
 0051A212    call        @GetMem
 0051A217    mov         dword ptr [ebp-18],eax
 0051A21A    xor         edx,edx
 0051A21C    push        ebp
 0051A21D    push        51A347
 0051A222    push        dword ptr fs:[edx]
 0051A225    mov         dword ptr fs:[edx],esp
 0051A228    lea         eax,[ebp-0C]
 0051A22B    push        eax
 0051A22C    lea         eax,[ebp-8]
 0051A22F    push        eax
 0051A230    mov         eax,dword ptr [ebp-8]
 0051A233    push        eax
 0051A234    mov         eax,dword ptr [ebp-18]
 0051A237    push        eax
 0051A238    push        edi
 0051A239    push        0
 0051A23B    push        esi
 0051A23C    call        winspool.EnumPrintersW
 0051A241    test        eax,eax
>0051A243    jne         0051A257
 0051A245    call        @TryFinallyExit
 0051A24A    xor         eax,eax
 0051A24C    pop         edx
 0051A24D    pop         ecx
 0051A24E    pop         ecx
 0051A24F    mov         dword ptr fs:[eax],edx
>0051A252    jmp         0051A380
 0051A257    mov         eax,dword ptr [ebp-18]
 0051A25A    mov         dword ptr [ebp-1C],eax
 0051A25D    mov         eax,dword ptr [ebp-0C]
 0051A260    dec         eax
 0051A261    test        eax,eax
>0051A263    jl          0051A32E
 0051A269    inc         eax
 0051A26A    mov         dword ptr [ebp-20],eax
 0051A26D    cmp         byte ptr [ebp-0D],4
>0051A271    jne         0051A2A9
 0051A273    mov         ebx,dword ptr [ebp-1C]
 0051A276    mov         esi,dword ptr [ebx]
 0051A278    push        esi
 0051A279    push        0
 0051A27B    xor         ecx,ecx
 0051A27D    mov         dl,1
 0051A27F    mov         eax,[005191C8];TPrinterDevice
 0051A284    call        TPrinterDevice.Create
 0051A289    push        eax
 0051A28A    lea         eax,[ebp-24]
 0051A28D    mov         edx,esi
 0051A28F    call        @UStrFromPWChar
 0051A294    mov         edx,dword ptr [ebp-24]
 0051A297    mov         eax,dword ptr [ebp-4]
 0051A29A    mov         eax,dword ptr [eax+10]
 0051A29D    pop         ecx
 0051A29E    mov         ebx,dword ptr [eax]
 0051A2A0    call        dword ptr [ebx+40]
 0051A2A3    add         dword ptr [ebp-1C],0C
>0051A2A7    jmp         0051A325
 0051A2A9    mov         esi,dword ptr [ebp-1C]
 0051A2AC    mov         eax,dword ptr [esi+4]
 0051A2AF    mov         dword ptr [ebp-14],eax
 0051A2B2    lea         eax,[ebp-14]
 0051A2B5    call        FetchStr
 0051A2BA    mov         ebx,eax
>0051A2BC    jmp         0051A31B
 0051A2BE    mov         eax,dword ptr [esi]
 0051A2C0    push        eax
 0051A2C1    push        ebx
 0051A2C2    xor         ecx,ecx
 0051A2C4    mov         dl,1
 0051A2C6    mov         eax,[005191C8];TPrinterDevice
 0051A2CB    call        TPrinterDevice.Create
 0051A2D0    push        eax
 0051A2D1    lea         eax,[ebp-28]
 0051A2D4    push        eax
 0051A2D5    lea         edx,[ebp-2C]
 0051A2D8    mov         eax,[007C43A4];^SResString246:TResStringRec
 0051A2DD    call        LoadResString
 0051A2E2    mov         eax,dword ptr [ebp-2C]
 0051A2E5    mov         edx,dword ptr [esi]
 0051A2E7    mov         dword ptr [ebp-3C],edx
 0051A2EA    mov         byte ptr [ebp-38],0A
 0051A2EE    mov         dword ptr [ebp-34],ebx
 0051A2F1    mov         byte ptr [ebp-30],0A
 0051A2F5    lea         edx,[ebp-3C]
 0051A2F8    mov         ecx,1
 0051A2FD    call        Format
 0051A302    mov         edx,dword ptr [ebp-28]
 0051A305    mov         eax,dword ptr [ebp-4]
 0051A308    mov         eax,dword ptr [eax+10]
 0051A30B    pop         ecx
 0051A30C    mov         ebx,dword ptr [eax]
 0051A30E    call        dword ptr [ebx+40]
 0051A311    lea         eax,[ebp-14]
 0051A314    call        FetchStr
 0051A319    mov         ebx,eax
 0051A31B    cmp         word ptr [ebx],0
>0051A31F    jne         0051A2BE
 0051A321    add         dword ptr [ebp-1C],14
 0051A325    dec         dword ptr [ebp-20]
>0051A328    jne         0051A26D
 0051A32E    xor         eax,eax
 0051A330    pop         edx
 0051A331    pop         ecx
 0051A332    pop         ecx
 0051A333    mov         dword ptr fs:[eax],edx
 0051A336    push        51A34E
 0051A33B    mov         edx,dword ptr [ebp-8]
 0051A33E    mov         eax,dword ptr [ebp-18]
 0051A341    call        @FreeMem
 0051A346    ret
>0051A347    jmp         @HandleFinally
>0051A34C    jmp         0051A33B
 0051A34E    xor         eax,eax
 0051A350    pop         edx
 0051A351    pop         ecx
 0051A352    pop         ecx
 0051A353    mov         dword ptr fs:[eax],edx
>0051A356    jmp         0051A37A
>0051A358    jmp         @HandleAnyException
 0051A35D    mov         eax,dword ptr [ebp-4]
 0051A360    mov         eax,dword ptr [eax+10]
 0051A363    call        TObject.Free
 0051A368    mov         eax,dword ptr [ebp-4]
 0051A36B    xor         edx,edx
 0051A36D    mov         dword ptr [eax+10],edx
 0051A370    call        @RaiseAgain
 0051A375    call        @DoneExcept
 0051A37A    mov         eax,dword ptr [ebp-4]
 0051A37D    mov         ebx,dword ptr [eax+10]
 0051A380    xor         eax,eax
 0051A382    pop         edx
 0051A383    pop         ecx
 0051A384    pop         ecx
 0051A385    mov         dword ptr fs:[eax],edx
 0051A388    push        51A3A2
 0051A38D    lea         eax,[ebp-2C]
 0051A390    mov         edx,3
 0051A395    call        @UStrArrayClr
 0051A39A    ret
>0051A39B    jmp         @HandleFinally
>0051A3A0    jmp         0051A38D
 0051A3A2    mov         eax,ebx
 0051A3A4    pop         edi
 0051A3A5    pop         esi
 0051A3A6    pop         ebx
 0051A3A7    mov         esp,ebp
 0051A3A9    pop         ebp
 0051A3AA    ret
*}
end;

//0051A3AC
function winspool.GetDefaultPrinterW(pcchBuffer:Windows.LPDWORD):BOOL; stdcall;
begin
{*
 0051A3AC    jmp         dword ptr ds:[905500]
*}
end;

//0051A3B4
procedure TPrinter.SetToDefaultPrinter;
begin
{*
 0051A3B4    push        ebp
 0051A3B5    mov         ebp,esp
 0051A3B7    add         esp,0FFFFF7D4
 0051A3BD    push        ebx
 0051A3BE    push        esi
 0051A3BF    push        edi
 0051A3C0    xor         edx,edx
 0051A3C2    mov         dword ptr [ebp-82C],edx
 0051A3C8    mov         dword ptr [ebp-824],edx
 0051A3CE    mov         dword ptr [ebp-820],edx
 0051A3D4    mov         dword ptr [ebp-4],eax
 0051A3D7    xor         eax,eax
 0051A3D9    push        ebp
 0051A3DA    push        51A5C5
 0051A3DF    push        dword ptr fs:[eax]
 0051A3E2    mov         dword ptr fs:[eax],esp
 0051A3E5    xor         eax,eax
 0051A3E7    mov         dword ptr [ebp-0C],eax
 0051A3EA    xor         eax,eax
 0051A3EC    mov         dword ptr [ebp-10],eax
 0051A3EF    lea         eax,[ebp-10]
 0051A3F2    push        eax
 0051A3F3    lea         eax,[ebp-0C]
 0051A3F6    push        eax
 0051A3F7    push        0
 0051A3F9    push        0
 0051A3FB    push        5
 0051A3FD    push        0
 0051A3FF    push        1
 0051A401    call        winspool.EnumPrintersW
 0051A406    test        eax,eax
>0051A408    jne         0051A440
 0051A40A    call        kernel32.GetLastError
 0051A40F    cmp         eax,7A
>0051A412    je          0051A440
 0051A414    call        kernel32.GetLastError
 0051A419    cmp         eax,7B
>0051A41C    jne         0051A43B
 0051A41E    lea         edx,[ebp-820]
 0051A424    mov         eax,[007C4490];^SResString316:TResStringRec
 0051A429    call        LoadResString
 0051A42E    mov         eax,dword ptr [ebp-820]
 0051A434    call        RaiseError
>0051A439    jmp         0051A440
 0051A43B    call        RaiseLastOSError
 0051A440    mov         eax,dword ptr [ebp-0C]
 0051A443    call        AllocMem
 0051A448    mov         dword ptr [ebp-1C],eax
 0051A44B    xor         edx,edx
 0051A44D    push        ebp
 0051A44E    push        51A57A
 0051A453    push        dword ptr fs:[edx]
 0051A456    mov         dword ptr fs:[edx],esp
 0051A459    lea         eax,[ebp-10]
 0051A45C    push        eax
 0051A45D    lea         eax,[ebp-0C]
 0051A460    push        eax
 0051A461    mov         eax,dword ptr [ebp-0C]
 0051A464    push        eax
 0051A465    mov         eax,dword ptr [ebp-1C]
 0051A468    push        eax
 0051A469    push        5
 0051A46B    push        0
 0051A46D    push        1
 0051A46F    call        winspool.EnumPrintersW
 0051A474    cmp         dword ptr [ebp-10],0
>0051A478    jbe         0051A484
 0051A47A    mov         eax,dword ptr [ebp-1C]
 0051A47D    mov         eax,dword ptr [eax]
 0051A47F    mov         dword ptr [ebp-18],eax
>0051A482    jmp         0051A4C5
 0051A484    mov         dword ptr [ebp-8],400
 0051A48B    lea         eax,[ebp-8]
 0051A48E    push        eax
 0051A48F    lea         eax,[ebp-81C]
 0051A495    push        eax
 0051A496    call        winspool.GetDefaultPrinterW
 0051A49B    test        eax,eax
>0051A49D    jne         0051A4B1
 0051A49F    mov         edx,dword ptr [ebp-8]
 0051A4A2    add         edx,edx
 0051A4A4    lea         eax,[ebp-81C]
 0051A4AA    xor         ecx,ecx
 0051A4AC    call        @FillChar
 0051A4B1    lea         eax,[ebp-81C]
 0051A4B7    mov         dword ptr [ebp-14],eax
 0051A4BA    lea         eax,[ebp-14]
 0051A4BD    call        FetchStr
 0051A4C2    mov         dword ptr [ebp-18],eax
 0051A4C5    mov         eax,dword ptr [ebp-4]
 0051A4C8    call        TPrinter.GetPrinters
 0051A4CD    mov         esi,eax
 0051A4CF    mov         eax,esi
 0051A4D1    mov         edx,dword ptr [eax]
 0051A4D3    call        dword ptr [edx+14]
 0051A4D6    mov         ebx,eax
 0051A4D8    dec         ebx
 0051A4D9    test        ebx,ebx
>0051A4DB    jl          0051A564
 0051A4E1    inc         ebx
 0051A4E2    mov         dword ptr [ebp-8],0
 0051A4E9    mov         edx,dword ptr [ebp-8]
 0051A4EC    mov         eax,esi
 0051A4EE    mov         ecx,dword ptr [eax]
 0051A4F0    call        dword ptr [ecx+18]
 0051A4F3    mov         edi,dword ptr [eax+8]
 0051A4F6    lea         eax,[ebp-824]
 0051A4FC    mov         edx,dword ptr [ebp-18]
 0051A4FF    call        @UStrFromPWChar
 0051A504    mov         edx,dword ptr [ebp-824]
 0051A50A    mov         dword ptr [ebp-828],edi
 0051A510    mov         eax,dword ptr [ebp-828]
 0051A516    call        AnsiCompareText
 0051A51B    test        eax,eax
 0051A51D    sete        al
 0051A520    test        al,al
>0051A522    je          0051A55E
 0051A524    mov         edx,dword ptr [ebp-8]
 0051A527    mov         eax,esi
 0051A529    mov         ecx,dword ptr [eax]
 0051A52B    call        dword ptr [ecx+18]
 0051A52E    mov         ebx,eax
 0051A530    mov         eax,dword ptr [ebx+0C]
 0051A533    call        @UStrToPWChar
 0051A538    push        eax
 0051A539    push        0
 0051A53B    mov         eax,dword ptr [ebx+4]
 0051A53E    call        @UStrToPWChar
 0051A543    push        eax
 0051A544    mov         eax,dword ptr [ebx+8]
 0051A547    call        @UStrToPWChar
 0051A54C    mov         edx,eax
 0051A54E    mov         eax,dword ptr [ebp-4]
 0051A551    pop         ecx
 0051A552    call        TPrinter.SetPrinter
 0051A557    call        @TryFinallyExit
>0051A55C    jmp         0051A59C
 0051A55E    inc         dword ptr [ebp-8]
 0051A561    dec         ebx
>0051A562    jne         0051A4E9
 0051A564    xor         eax,eax
 0051A566    pop         edx
 0051A567    pop         ecx
 0051A568    pop         ecx
 0051A569    mov         dword ptr fs:[eax],edx
 0051A56C    push        51A581
 0051A571    mov         eax,dword ptr [ebp-1C]
 0051A574    call        @FreeMem
 0051A579    ret
>0051A57A    jmp         @HandleFinally
>0051A57F    jmp         0051A571
 0051A581    lea         edx,[ebp-82C]
 0051A587    mov         eax,[007C4490];^SResString316:TResStringRec
 0051A58C    call        LoadResString
 0051A591    mov         eax,dword ptr [ebp-82C]
 0051A597    call        RaiseError
 0051A59C    xor         eax,eax
 0051A59E    pop         edx
 0051A59F    pop         ecx
 0051A5A0    pop         ecx
 0051A5A1    mov         dword ptr fs:[eax],edx
 0051A5A4    push        51A5CC
 0051A5A9    lea         eax,[ebp-82C]
 0051A5AF    call        @UStrClr
 0051A5B4    lea         eax,[ebp-824]
 0051A5BA    mov         edx,2
 0051A5BF    call        @UStrArrayClr
 0051A5C4    ret
>0051A5C5    jmp         @HandleFinally
>0051A5CA    jmp         0051A5A9
 0051A5CC    pop         edi
 0051A5CD    pop         esi
 0051A5CE    pop         ebx
 0051A5CF    mov         esp,ebp
 0051A5D1    pop         ebp
 0051A5D2    ret
*}
end;

//0051A5D4
procedure TPrinter.FreePrinters;
begin
{*
 0051A5D4    push        ebx
 0051A5D5    push        esi
 0051A5D6    push        edi
 0051A5D7    push        ecx
 0051A5D8    mov         esi,eax
 0051A5DA    mov         ebx,dword ptr [esi+10]
 0051A5DD    test        ebx,ebx
>0051A5DF    je          0051A61C
 0051A5E1    mov         eax,ebx
 0051A5E3    mov         edx,dword ptr [eax]
 0051A5E5    call        dword ptr [edx+14]
 0051A5E8    dec         eax
 0051A5E9    test        eax,eax
>0051A5EB    jl          0051A605
 0051A5ED    inc         eax
 0051A5EE    mov         ebx,eax
 0051A5F0    xor         edi,edi
 0051A5F2    mov         edx,edi
 0051A5F4    mov         eax,dword ptr [esi+10]
 0051A5F7    mov         ecx,dword ptr [eax]
 0051A5F9    call        dword ptr [ecx+18]
 0051A5FC    call        TObject.Free
 0051A601    inc         edi
 0051A602    dec         ebx
>0051A603    jne         0051A5F2
 0051A605    lea         eax,[esi+10]
 0051A608    mov         dword ptr [esp],eax
 0051A60B    mov         eax,dword ptr [esp]
 0051A60E    mov         eax,dword ptr [eax]
 0051A610    mov         edx,dword ptr [esp]
 0051A613    xor         ecx,ecx
 0051A615    mov         dword ptr [edx],ecx
 0051A617    call        TObject.Free
 0051A61C    pop         edx
 0051A61D    pop         edi
 0051A61E    pop         esi
 0051A61F    pop         ebx
 0051A620    ret
*}
end;

//0051A624
procedure TPrinter.FreeFonts;
begin
{*
 0051A624    push        ecx
 0051A625    add         eax,8
 0051A628    mov         dword ptr [esp],eax
 0051A62B    mov         eax,dword ptr [esp]
 0051A62E    mov         eax,dword ptr [eax]
 0051A630    mov         edx,dword ptr [esp]
 0051A633    xor         ecx,ecx
 0051A635    mov         dword ptr [edx],ecx
 0051A637    call        TObject.Free
 0051A63C    pop         edx
 0051A63D    ret
*}
end;

//0051A640
function Printer:TPrinter;
begin
{*
 0051A640    cmp         dword ptr ds:[7A14F8],0;gvar_007A14F8
>0051A647    jne         0051A65A
 0051A649    mov         dl,1
 0051A64B    mov         eax,[00518AF4];TPrinter
 0051A650    call        TPrinter.Create
 0051A655    mov         [007A14F8],eax;gvar_007A14F8
 0051A65A    mov         eax,[007A14F8];gvar_007A14F8
 0051A65F    ret
*}
end;

end.