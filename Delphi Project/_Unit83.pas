//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit83;

interface

uses
  SysUtils, Classes;

    constructor Create(AOwner:TComponent);//005C76C4
    //procedure sub_004EE458(?:?; ?:?);//005C7734
    procedure sub_004EE464;//005C7864
    procedure CMFontChanged(var Message:TMessage);//005C7884
    //procedure sub_004EE62C(?:?; ?:?; ?:?; ?:?);//005C78D0
    //procedure WMNCHitTest(?:?);//005C78FC
    procedure WMNCLButtonDown(Message:Messages.TWMNCLButtonDown);//005C7924
    //procedure CMControlLIstChange(?:?);//005C79B8
    //procedure sub_005C7A10(?:?);//005C7A10
    //procedure CMUndockClient(?:?);//005C7B38
    procedure CMVisibleChanged;//005C7B50
    //function sub_005C7B90(?:TMonitor):?;//005C7B90
    function GetHeight:Integer;//005C7BA8
    //function sub_005C7BC4(?:TMonitor):?;//005C7BC4
    function GetWidth:Integer;//005C7BDC
    function GetBoundsRect:TRect;//005C7BF8
    //procedure sub_005C7C24(?:TMonitor; ?:?);//005C7C24
    function GetPrimary:Boolean;//005C7C50
    //function sub_005C7C70(?:TMonitor):?;//005C7C70
    constructor Create;//005C7D68
    destructor Destroy();//005C7F04
    //function sub_005C80C0:?;//005C80C0
    //function sub_005C80C8:?;//005C80C8
    //function sub_005C80D0:?;//005C80D0
    //function sub_005C80D8:?;//005C80D8
    //function sub_005C80E0:?;//005C80E0
    //function sub_005C80E8:?;//005C80E8
    function GetMonitor(Index:Integer):TMonitor;//005C80F0
    function GetMonitorCount:Integer;//005C8104
    function GetForm(Index:Integer):TForm;//005C811C
    function GetFormCount:Integer;//005C8130
    function GetCustomForms(Index:Integer):TCustomForm;//005C8138
    //function sub_005C814C(?:?):?;//005C814C
    //procedure sub_005C8154(?:?);//005C8154
    //procedure sub_005C81A0(?:?; ?:TCustomForm);//005C81A0
    //procedure sub_005C81D8(?:?; ?:TCustomForm);//005C81D8
    //procedure sub_005C8248(?:?);//005C8248
    procedure sub_005C82A0(?:TScreen);//005C82A0
    procedure sub_005C8300(?:TScreen; ?:Integer);//005C8300
    //function sub_005C8348(?:?):?;//005C8348
    procedure sub_005C839C(?:TScreen; ?:HMONITOR);//005C839C
    procedure sub_005C83C8(?:TScreen; ?:Integer; ?:HICON);//005C83C8
    //function sub_005C83F4(?:TScreen):?;//005C83F4
    //procedure sub_005C8638(?:TScreen; ?:?);//005C8638
    //procedure sub_005C8654(?:?; ?:?);//005C8654
    function GetDataModule(Index:Integer):TDataModule;//005C86A8
    function GetDataModuleCount:Integer;//005C86BC
    function GetCursors(Index:Integer):HICON;//005C86C4
    procedure sub_005C86F0(?:TScreen; ?:TCursor);//005C86F0
    procedure SetCursors(Index:Integer; Handle:HICON);//005C8798
    //procedure sub_005C8824(?:?);//005C8824
    procedure DisableAlign;//005C89EC
    procedure EnableAlign;//005C89F4
    procedure Realign;//005C8A14
    //function sub_005C8A1C(?:TCustomForm; ?:Pointer; ?:?):Boolean;//005C8A1C
    //procedure sub_005C8AA4(?:Pointer; ?:?; ?:?);//005C8AA4
    //procedure sub_005C8C5C(?:?; ?:?);//005C8C5C
    //function sub_005C8DAC(?:?):?;//005C8DAC
    //procedure sub_005C8E04(?:TScreen; ?:TCustomForm; ?:?);//005C8E04
    //function sub_005C8E8C(?:TScreen; ?:TCustomForm):?;//005C8E8C
    procedure ResetFonts;//005C8FE4
    //procedure sub_005C9000(?:TControl; ?:?);//005C9000
    //function sub_005C9038:?;//005C9038
    procedure sub_005C914C;//005C914C
    procedure sub_005C91C0;//005C91C0
    //function sub_005C9244:?;//005C9244
    //procedure sub_005C9274(?:?);//005C9274
    //procedure sub_005C92A0(?:HWND; ?:?);//005C92A0
    procedure sub_005C9334;//005C9334
    function MonitorFromPoint(Point:TPoint; MonitorDefault:TMonitorDefaultTo):TMonitor;//005C9378
    function MonitorFromWindow(Handle:NativeUInt; MonitorDefault:TMonitorDefaultTo):TMonitor;//005C93A4
    //procedure sub_005C93CC(?:?);//005C93CC
    procedure GetMonitors;//005C9404
    function DoGetPrimaryMonitor:TMonitor;//005C9424
    function GetPrimaryMonitor:TMonitor;//005C9474
    procedure sub_005C9570(?:TBiDiKeyboard);//005C9570
    procedure sub_005C9580(?:TBiDiKeyboard);//005C9580
    constructor Create;//005C9590
    destructor Destroy();//005C9804
    procedure CreateHandle;//005C99D4
    procedure ControlDestroyed(Control:TControl);//005C9BEC
    //procedure sub_005C9D18(?:TApplication; ?:?);//005C9D18
    procedure ModalStarted;//005C9DC0
    procedure ModalFinished;//005C9DEC
    procedure NormalizeTopMosts;//005C9E18
    procedure NormalizeAllTopMosts;//005C9E20
    procedure RemovePopupForm(APopupForm:TCustomForm);//005C9E28
    procedure RestoreTopMosts;//005C9E80
    //procedure sub_005C9FF8(?:TApplication; ?:?);//005C9FF8
    function UseRightToLeftReading:Boolean;//005CA178
    function UseRightToLeftAlignment:Boolean;//005CA190
    //function sub_005CA1A8(?:?; ?:?):?;//005CA1A8
    //procedure sub_005CA228(?:?; ?:?);//005CA228
    //procedure sub_005CA2A4(?:?);//005CA2A4
    //procedure sub_005CA2E4(?:?);//005CA2E4
    //procedure sub_005CA334(?:?; ?:?);//005CA334
    procedure sub_005CAAE4(?:TApplication);//005CAAE4
    procedure Minimize;//005CAB00
    procedure Restore;//005CAC04
    procedure BringToFront;//005CAD38
    //procedure sub_005CAD90(?:TApplication; ?:?);//005CAD90
    //procedure sub_005CAF2C(?:?; ?:?);//005CAF2C
    //function sub_005CAFD4(?:?; ?:?):?;//005CAFD4
    //function sub_005CB01C(?:?; ?:?):?;//005CB01C
    //function sub_005CB06C(?:?; ?:?):?;//005CB06C
    //function sub_005CB164(?:?; ?:?):?;//005CB164
    //function sub_005CB198(?:?; ?:?):?;//005CB198
    function ProcessMessage(var Msg:Windows.TMsg):Boolean;//005CB2D0
    procedure ProcessMessages;//005CB3E4
    procedure HandleMessage;//005CB3FC
    //procedure HookMainWindow(Hook:TWindowHook; ?:?);//005CB420
    //procedure UnhookMainWindow(Hook:TWindowHook; ?:?);//005CB480
    procedure Initialize;//005CB4FC
    //procedure CreateForm(InstanceClass:TComponentClass; var Reference:?);//005CB514
    procedure Run;//005CB670
    procedure Terminate;//005CB790
    //function sub_005CB7A4(?:?; ?:?):?;//005CB7A4
    procedure HandleException(Sender:TObject);//005CB828
    function MessageBox(Text:PWideChar; Caption:PWideChar; Flags:Integer):Integer;//005CB8AC
    procedure ShowException(E:Exception);//005CBA2C
    procedure sub_005CBB00(?:TApplication; ?:Integer; ?:NativeInt);//005CBB00
    //function sub_005CBC34(?:TApplication; ?:?; ?:PWideChar; ?:?):?;//005CBC34
    function HelpKeyword(Keyword:string):Boolean;//005CBD00
    function HelpContext(Context:THelpContext):Boolean;//005CBD90
    procedure HelpCommand(Command:Integer; Data:NativeInt);//005CBE18
    //procedure sub_005CBE20(?:TApplication; ?:?);//005CBE20
    procedure SetShowHint(Value:Boolean);//005CBE30
    procedure sub_005CBEB8;//005CBEB8
    //function sub_005CBF1C(?:TApplication):?;//005CBF1C
    procedure sub_005CBF40;//005CBF40
    procedure sub_005CBFA8(?:TApplication);//005CBFA8
    //procedure sub_005CC120(?:?; ?:?; ?:?; ?:?);//005CC120
    //procedure sub_005CC168(?:?);//005CC168
    //procedure sub_005CC1DC(?:TApplication; ?:?);//005CC1DC
    //procedure sub_005CC270(?:?; ?:?);//005CC270
    //procedure sub_005CC318(?:?);//005CC318
    function sub_005CC3A0(?:TApplication):Boolean;//005CC3A0
    //procedure sub_005CC3C0(?:TApplication; ?:Integer; ?:?);//005CC3C0
    procedure sub_005CC400(?:TApplication);//005CC400
    procedure HintMouseMessage(Control:TControl; var Message:TMessage);//005CC420
    procedure HideHint;//005CC588
    procedure CancelHint;//005CC5FC
    //function sub_005CC630(?:?; ?:Integer):?;//005CC630
    //function sub_005CC640:?;//005CC640
    //procedure sub_005CC794(?:?; ?:?);//005CC794
    //function sub_005CC7EC(?:UnicodeString; ?:?):?;//005CC7EC
    procedure ActivateHint(CursorPos:TPoint);//005CC8CC
    procedure ApplyBiDiKeyboardLayout;//005CCC84
    procedure ApplyNonBiDiKeyboardLayout;//005CCC90
    function AddPopupForm(APopupForm:TCustomForm):Integer;//005CCC9C
    //procedure sub_005CCD80(?:TApplication; ?:?);//005CCD80
    //function sub_005CCE10(?:TApplication):?;//005CCE10
    //function sub_005CCE5C(?:TApplication):?;//005CCE5C
    //function sub_005CCE9C(?:?; ?:?; ?:?):?;//005CCE9C
    function ExecuteAction(Action:TBasicAction):Boolean;//005CCF34
    function UpdateAction(Action:TBasicAction):Boolean;//005CCF5C
    procedure sub_005CCF84;//005CCF84
    procedure HookSynchronizeWakeup;//005CD00C
    procedure UnhookSynchronizeWakeup;//005CD01C
    //function sub_005CD02C(?:?; ?:?):?;//005CD02C
    //procedure sub_005CD098(?:?);//005CD098
    constructor Create(Client:TCustomForm);//005CD278
    procedure Assign(Source:TPersistent);//005CD2CC
    procedure sub_005CD324;//005CD324
    function FrameExtended:Boolean;//005CD380
    procedure IntersectsControl(Control:TControl);//005CD3C8
    procedure SetEnabled(Value:Boolean);//005CD4AC
    //procedure SetLeft(Value:Integer; ?:?);//005CD4DC
    procedure SetSheetOfGlass(Value:Boolean);//005CD534
    constructor TScrollWindow.Create(AOwner:TComponent);//005CD560
    procedure TScrollWindow.CreateParams(var Params:TCreateParams);//005CD5AC
    //procedure TScrollWindow.WMNCHitTest(?:?);//005CD604
    //procedure TScrollWindow.WMPaint(?:?);//005CD60C
    procedure sub_005CD748;//005CD748
    //procedure TScrollWindow.WMEraseBkgnd(?:?);//005CD750
    constructor Create(AControl:TWinControl);//005CD758
    destructor Destroy();//005CD7A0
    function sub_005CD820(?:TScrollingStyleHook):Boolean;//005CD820
    procedure sub_005CD860(?:TScrollingStyleHook);//005CD860
    procedure sub_005CDAE4;//005CDAE4
    procedure sub_005CDB34;//005CDB34
    //procedure sub_005CDB68(?:?);//005CDB68
    procedure sub_005CDB84(?:TScrollingStyleHook);//005CDB84
    //procedure sub_005CDE48(?:?);//005CDE48
    //procedure sub_005CE1D4(?:?);//005CE1D4
    //procedure sub_005CE560(?:TScrollingStyleHook; ?:?);//005CE560
    //procedure sub_005CE5A0(?:TScrollingStyleHook; ?:?);//005CE5A0
    //procedure sub_005CE674(?:TScrollingStyleHook; ?:?);//005CE674
    //procedure sub_005CE75C(?:TScrollingStyleHook; ?:?);//005CE75C
    //procedure sub_005CE7A0(?:TScrollingStyleHook; ?:?);//005CE7A0
    //procedure sub_005CE7DC(?:TScrollingStyleHook; ?:?);//005CE7DC
    //procedure sub_005CE818(?:TScrollingStyleHook; ?:?);//005CE818
    //procedure sub_005CE8EC(?:TScrollingStyleHook; ?:?);//005CE8EC
    //procedure sub_005CE9D4(?:TScrollingStyleHook; ?:?);//005CE9D4
    //procedure sub_005CEA18(?:TScrollingStyleHook; ?:?);//005CEA18
    procedure sub_005CEA54;//005CEA54
    procedure sub_005CEA7C;//005CEA7C
    procedure WMHScroll;//005CEAAC
    procedure WMVScroll;//005CEAC4
    procedure WMMouseWheel;//005CEADC
    //procedure sub_005CEAF4(?:?);//005CEAF4
    //procedure WMNCLButtonDown(?:?);//005CEB50
    procedure WMNCLButtonDblClk;//005CEDD0
    //procedure WMNCLButtonUp(?:?);//005CEDD8
    //procedure WMNCMouseMove(?:?);//005CEFC4
    procedure WMLButtonUp;//005CF2EC
    //procedure WMMouseMove(?:?);//005CF41C
    procedure WMKeyDown;//005CF7E0
    procedure WMKeyUp;//005CF7F8
    procedure WMLButtonDown;//005CF810
    procedure sub_005CF828;//005CF828
    procedure sub_005CF830;//005CF830
    procedure WMClose;//005CF844
    //procedure WMShowWindow(?:?);//005CF84C
    //procedure WMWindowPosChangedMsg(?:?);//005CF8D8
    procedure sub_005CF948;//005CF948
    procedure CMVisibleChanged;//005CF950
    procedure WMMove;//005CF9C8
    procedure WMSize;//005CFA04
    //procedure sub_005CFA1C(?:?; ?:?; ?:?);//005CFA1C
    constructor sub_005CFA80(FormHook:TFormStyleHook);//005CFA80
    destructor TMainMenuBarStyleHook.Destroy();//005CFB84
    //function sub_005CFBC8(?:TFormStyleHook):?;//005CFBC8
    //procedure sub_005CFBE0(?:?);//005CFBE0
    //function sub_005CFCF4(?:TFormStyleHook):?;//005CFCF4
    //function sub_005CFD38(?:TFormStyleHook):?;//005CFD38
    //procedure sub_005CFD68(?:TMainMenuBarStyleHook; ?:?);//005CFD68
    //function sub_005CFDC0(?:?; ?:?):?;//005CFDC0
    //function sub_005CFDF8(?:?; ?:?):?;//005CFDF8
    //function sub_005CFE1C(?:?; ?:?):?;//005CFE1C
    //function sub_005CFE38(?:TFormStyleHook; ?:LongBool; ?:?):?;//005CFE38
    procedure TMainMenuBarStyleHook.MenuEnter(ATrackMenu:Boolean);//005CFE58
    procedure sub_005CFE8C(?:TFormStyleHook);//005CFE8C
    function TMainMenuBarStyleHook.CheckHotKeyItem(ACharCode:Word):Boolean;//005CFF28
    procedure TMainMenuBarStyleHook.ProcessMenuLoop(ATrackMenu:Boolean);//005CFFBC
    //function sub_005D02F0(?:TFormStyleHook; ?:?):?;//005D02F0
    //function sub_005D0344(?:TFormStyleHook; ?:?):?;//005D0344
    //function sub_005D038C(?:TFormStyleHook; ?:?; ?:?):?;//005D038C
    //function sub_005D0404(?:TFormStyleHook; ?:?):?;//005D0404
    //function sub_005D0590(?:TFormStyleHook; ?:?):?;//005D0590
    //procedure sub_005D0704(?:TFormStyleHook; ?:?);//005D0704
    procedure sub_005D0820(?:TFormStyleHook);//005D0820
    procedure sub_005D0860(?:TFormStyleHook);//005D0860
    //function sub_005D0894(?:?):?;//005D0894
    procedure sub_005D08DC(?:TFormStyleHook);//005D08DC
    procedure sub_005D0918(?:TFormStyleHook);//005D0918
    procedure sub_005D0954(?:TFormStyleHook);//005D0954
    //function sub_005D0990(?:TFormStyleHook; ?:Integer; ?:Integer):?;//005D0990
    //function sub_005D09E4(?:TFormStyleHook; ?:Integer; ?:Integer):?;//005D09E4
    procedure TMainMenuBarStyleHook.Invalidate;//005D0A64
    //function sub_005D0A70(?:TFormStyleHook):?;//005D0A70
    //procedure sub_005D0A98(?:Integer; ?:Integer; ?:TMenuItem; ?:?);//005D0A98
    //function sub_005D0B28(?:TMenuItem; ?:?):?;//005D0B28
    //function sub_005D0B7C(?:?; ?:?; ?:?):?;//005D0B7C
    function TMainMenuBarStyleHook.GetMenuHeight(AWidth:Integer):Integer;//005D0D28
    //function sub_005D0F08(?:TFormStyleHook; ?:?; ?:TCanvas):?;//005D0F08
    //procedure sub_005D0FC0(?:TFormStyleHook; ?:?);//005D0FC0
    //procedure sub_005D1298(?:Integer; ?:Integer; ?:TMenuItem; ?:?);//005D1298
    //function sub_005D1328(?:TMenuItem; ?:?):?;//005D1328
    //function sub_005D137C(?:?; ?:TMenu; ?:?):?;//005D137C
    //function sub_005D1528(?:?; ?:?; ?:?):Boolean;//005D1528
    procedure TMainMenuBarStyleHook.Paint(Canvas:TCanvas);//005D1590
    //function sub_005D1CDC(?:?; ?:?; ?:?):?;//005D1CDC
    //procedure sub_005D2280(?:TMainMenuBarStyleHook; ?:?);//005D2280
    procedure TMainMenuBarStyleHook.MouseUp(X:Integer; Y:Integer);//005D2290
    procedure TMainMenuBarStyleHook.MouseDown(X:Integer; Y:Integer);//005D2370
    procedure TMainMenuBarStyleHook.MouseMove(X:Integer; Y:Integer);//005D2420
    procedure TMainMenuBarStyleHook.TrackMDIChildSystemMenu;//005D2570
    //function TMainMenuBarStyleHook.TrackSystemMenu:?;//005D2674
    procedure sub_005D2760(?:TFormStyleHook);//005D2760
    constructor Create(AControl:TWinControl);//005D28D4
    destructor Destroy();//005D29F4
    //function sub_005D2AFC(?:TFormStyleHook):?;//005D2AFC
    procedure Invalidate;//005D2B24
    //procedure sub_005D2B28(?:?; ?:?);//005D2B28
    //procedure sub_005D2BD8(?:?; ?:?);//005D2BD8
    //procedure sub_005D2C88(?:?; ?:?; ?:?);//005D2C88
    //procedure sub_005D2CD4(?:?; ?:?; ?:?);//005D2CD4
    //function sub_005D2D20(?:TFormStyleHook):?;//005D2D20
    //procedure sub_005D2D50(?:TFormStyleHook; ?:?);//005D2D50
    procedure sub_005D33B8(?:TFormStyleHook);//005D33B8
    procedure sub_005D3518(?:TFormStyleHook);//005D3518
    //procedure sub_005D3738(?:string; ?:?);//005D3738
    //procedure sub_005D3794(?:?);//005D3794
    //procedure sub_005D3888(?:?);//005D3888
    //procedure sub_005D38F0(?:TFormStyleHook; ?:?);//005D38F0
    //function sub_005D3A90(?:string):?;//005D3A90
    //procedure sub_005D3A94(?:TFormStyleHook; ?:?; ?:?);//005D3A94
    //function sub_005D3BEC(?:TFormStyleHook; ?:?):?;//005D3BEC
    //procedure CMDialogChar(?:?);//005D3F54
    procedure WMSetText(Message:Messages.TMessage);//005D3F98
    //function sub_005D3FC8(?:?):?;//005D3FC8
    //procedure sub_005D4054(?:?);//005D4054
    procedure WMDestroy;//005D40D4
    //procedure WMSysCommand(?:?);//005D4104
    //procedure WMInitMenu(?:?);//005D41C4
    procedure CMMenuChanged;//005D41FC
    //procedure WMNCHitTest(?:?);//005D4234
    //procedure WMNCCalcSize(?:?);//005D427C
    //function sub_005D4428(?:TFormStyleHook):?;//005D4428
    //procedure sub_005D4440(?:?);//005D4440
    //function sub_005D4544(?:?):?;//005D4544
    //procedure sub_005D45E0(?:?);//005D45E0
    //procedure sub_005D467C(?:?);//005D467C
    //function sub_005D4714(?:?; ?:?):?;//005D4714
    //procedure sub_005D4754(?:?);//005D4754
    //procedure sub_005D499C(?:?);//005D499C
    //procedure WMNCActivate(?:?);//005D5620
    //procedure sub_005D5728(?:?);//005D5728
    procedure sub_005D5A64(?:TFormStyleHook);//005D5A64
    procedure WMMove;//005D5B38
    //procedure sub_005D5B70(?:?);//005D5B70
    //procedure WMSize(?:?);//005D5BF8
    //procedure WMWindowPosChangingMsg(?:?);//005D5CB8
    //procedure sub_005D5EC4(?:?);//005D5EC4
    procedure sub_005D5F38(?:TFormStyleHook);//005D5F38
    //procedure WMNCMouseMove(?:?);//005D5F60
    //procedure WMNCRButtonDown(?:?);//005D6040
    //procedure WMNCLButtonDown(?:?);//005D6074
    //procedure WMNCRButtonUp(?:?);//005D6194
    //procedure WMNCLButtonUp(?:?);//005D61E8
    //procedure WMNCLButtonDblClk(?:?);//005D6380
    procedure sub_005D63D0;//005D63D0
    procedure sub_005D63E4;//005D63E4
    //procedure WMActivate(?:?);//005D6428
    procedure sub_005D6454;//005D6454
    procedure sub_005D6470;//005D6470
    procedure sub_005D649C;//005D649C
    procedure sub_005D64D4;//005D64D4
    procedure sub_005D6538;//005D6538
    procedure sub_005D659C;//005D659C
    //procedure WMShowWindow(?:?);//005D65BC
    //procedure WMGetMinMaxInfo(?:?);//005D66CC
    constructor Create(AControl:TWinControl);//005D670C
    //procedure sub_005D677C(?:?);//005D677C

implementation

//005C76C4
constructor TCustomDockForm.Create(AOwner:TComponent);
begin
{*
 005C76C4    push        ebp
 005C76C5    mov         ebp,esp
 005C76C7    push        ecx
 005C76C8    push        ebx
 005C76C9    push        esi
 005C76CA    test        dl,dl
>005C76CC    je          005C76D6
 005C76CE    add         esp,0FFFFFFF0
 005C76D1    call        @ClassCreate
 005C76D6    mov         byte ptr [ebp-1],dl
 005C76D9    mov         ebx,eax
 005C76DB    push        0
 005C76DD    xor         edx,edx
 005C76DF    mov         eax,ebx
 005C76E1    mov         esi,dword ptr [eax]
 005C76E3    call        dword ptr [esi+130];TCustomDockForm.sub_005C0DB0
 005C76E9    xor         edx,edx
 005C76EB    mov         eax,ebx
 005C76ED    call        TForm.SetPosition
 005C76F2    xor         edx,edx
 005C76F4    mov         eax,ebx
 005C76F6    call        TScrollBox.SetAutoScroll
 005C76FB    mov         dl,5
 005C76FD    mov         eax,ebx
 005C76FF    call        TForm.SetBorderStyle
 005C7704    mov         dl,1
 005C7706    mov         eax,ebx
 005C7708    call        TGroupBox.SetDockSite
 005C770D    mov         dl,3
 005C770F    mov         eax,ebx
 005C7711    call        TForm.SetFormStyle
 005C7716    mov         eax,ebx
 005C7718    cmp         byte ptr [ebp-1],0
>005C771C    je          005C772D
 005C771E    call        @AfterConstruction
 005C7723    pop         dword ptr fs:[0]
 005C772A    add         esp,0C
 005C772D    mov         eax,ebx
 005C772F    pop         esi
 005C7730    pop         ebx
 005C7731    pop         ecx
 005C7732    pop         ebp
 005C7733    ret
*}
end;

//005C7734
{*procedure TCustomDockForm.sub_004EE458(?:?; ?:?);
begin
 005C7734    push        ebp
 005C7735    mov         ebp,esp
 005C7737    add         esp,0FFFFFFEC
 005C773A    push        ebx
 005C773B    push        esi
 005C773C    xor         ebx,ebx
 005C773E    mov         dword ptr [ebp-4],ebx
 005C7741    mov         dword ptr [ebp-0C],ecx
 005C7744    mov         dword ptr [ebp-8],edx
 005C7747    mov         esi,eax
 005C7749    xor         eax,eax
 005C774B    push        ebp
 005C774C    push        5C7835
 005C7751    push        dword ptr fs:[eax]
 005C7754    mov         dword ptr fs:[eax],esp
 005C7757    mov         eax,esi
 005C7759    call        TWinControl.GetDockClientCount
 005C775E    dec         eax
>005C775F    jne         005C77F9
 005C7765    mov         eax,dword ptr [ebp-8]
 005C7768    call        TControl.GetTextLen
 005C776D    mov         ecx,eax
 005C776F    inc         ecx
 005C7770    lea         eax,[ebp-4]
 005C7773    xor         edx,edx
 005C7775    call        @UStrFromPWCharLen
 005C777A    mov         ebx,dword ptr [ebp-4]
 005C777D    test        ebx,ebx
>005C777F    je          005C7786
 005C7781    sub         ebx,4
 005C7784    mov         ebx,dword ptr [ebx]
 005C7786    mov         eax,dword ptr [ebp-4]
 005C7789    call        @UStrToPWChar
 005C778E    mov         edx,eax
 005C7790    mov         ecx,ebx
 005C7792    mov         eax,dword ptr [ebp-8]
 005C7795    call        TControl.GetTextBuf
 005C779A    mov         eax,dword ptr [ebp-4]
 005C779D    test        eax,eax
>005C779F    je          005C77A6
 005C77A1    sub         eax,4
 005C77A4    mov         eax,dword ptr [eax]
 005C77A6    test        eax,eax
>005C77A8    jle         005C77EF
 005C77AA    mov         ebx,1
 005C77AF    mov         edx,dword ptr [ebp-4]
 005C77B2    movzx       edx,word ptr [edx+ebx*2-2]
 005C77B7    mov         word ptr [ebp-0E],dx
 005C77BB    mov         edx,5C7844
 005C77C0    mov         dword ptr [ebp-14],edx
 005C77C3    mov         edx,dword ptr [ebp-14]
 005C77C6    movzx       ecx,word ptr [ebp-0E]
 005C77CA    cmp         cx,0FF
>005C77CF    ja          005C77D7
 005C77D1    movzx       ecx,cx
 005C77D4    bt          dword ptr [edx],ecx
 005C77D7    setb        dl
 005C77DA    test        dl,dl
>005C77DC    je          005C77EB
 005C77DE    mov         edx,ebx
 005C77E0    dec         edx
 005C77E1    lea         eax,[ebp-4]
 005C77E4    call        @UStrSetLength
>005C77E9    jmp         005C77EF
 005C77EB    inc         ebx
 005C77EC    dec         eax
>005C77ED    jne         005C77AF
 005C77EF    mov         edx,dword ptr [ebp-4]
 005C77F2    mov         eax,esi
 005C77F4    call        TControl.SetText
 005C77F9    mov         ecx,dword ptr [ebp-0C]
 005C77FC    mov         edx,dword ptr [ebp-8]
 005C77FF    mov         eax,esi
 005C7801    call        TWinControl.sub_004EE458
 005C7806    mov         dl,5
 005C7808    mov         eax,dword ptr [ebp-8]
 005C780B    call        TGroupBox.SetAlign
 005C7810    test        byte ptr [esi+1C],1;TCustomDockForm.FComponentState:TComponentState
>005C7814    jne         005C781F
 005C7816    mov         dl,1
 005C7818    mov         eax,esi
 005C781A    call        TForm.SetVisible
 005C781F    xor         eax,eax
 005C7821    pop         edx
 005C7822    pop         ecx
 005C7823    pop         ecx
 005C7824    mov         dword ptr fs:[eax],edx
 005C7827    push        5C783C
 005C782C    lea         eax,[ebp-4]
 005C782F    call        @UStrClr
 005C7834    ret
>005C7835    jmp         @HandleFinally
>005C783A    jmp         005C782C
 005C783C    pop         esi
 005C783D    pop         ebx
 005C783E    mov         esp,ebp
 005C7840    pop         ebp
 005C7841    ret
end;*}

//005C7864
procedure TCustomDockForm.sub_004EE464;
begin
{*
 005C7864    push        ebx
 005C7865    mov         ebx,eax
 005C7867    mov         eax,ebx
 005C7869    call        TWinControl.sub_004EE464
 005C786E    mov         eax,ebx
 005C7870    call        TWinControl.GetDockClientCount
 005C7875    test        eax,eax
>005C7877    jne         005C7880
 005C7879    mov         eax,ebx
 005C787B    call        TCustomForm.Release
 005C7880    pop         ebx
 005C7881    ret
*}
end;

//005C7884
procedure TCustomDockForm.CMFontChanged(var Message:TMessage);
begin
{*
 005C7884    push        ebx
 005C7885    push        esi
 005C7886    push        edi
 005C7887    push        ebp
 005C7888    add         esp,0FFFFFFF0
 005C788B    mov         ebx,eax
 005C788D    mov         eax,ebx
 005C788F    call        TWinControl.GetControlCount
 005C7894    mov         edi,eax
 005C7896    dec         edi
 005C7897    test        edi,edi
>005C7899    jl          005C78C1
 005C789B    inc         edi
 005C789C    xor         ebp,ebp
 005C789E    mov         edx,esp
 005C78A0    mov         eax,ebx
 005C78A2    mov         ecx,dword ptr [eax]
 005C78A4    call        dword ptr [ecx+64];TCustomForm.GetClientRect
 005C78A7    push        esp
 005C78A8    mov         edx,ebp
 005C78AA    mov         eax,ebx
 005C78AC    call        TWinControl.GetControl
 005C78B1    mov         edx,ebx
 005C78B3    pop         ecx
 005C78B4    mov         si,0FFCB
 005C78B8    call        @CallDynaInst;TControl.sub_004E6558
 005C78BD    inc         ebp
 005C78BE    dec         edi
>005C78BF    jne         005C789E
 005C78C1    mov         eax,ebx
 005C78C3    call        TCustomForm.CMFontChanged
 005C78C8    add         esp,10
 005C78CB    pop         ebp
 005C78CC    pop         edi
 005C78CD    pop         esi
 005C78CE    pop         ebx
 005C78CF    ret
*}
end;

//005C78D0
{*procedure TCustomDockForm.sub_004EE62C(?:?; ?:?; ?:?; ?:?);
begin
 005C78D0    push        ebp
 005C78D1    mov         ebp,esp
 005C78D3    add         esp,0FFFFFFF8
 005C78D6    push        ebx
 005C78D7    push        esi
 005C78D8    push        edi
 005C78D9    mov         esi,dword ptr [ebp+0C]
 005C78DC    lea         edi,[ebp-8]
 005C78DF    movs        dword ptr [edi],dword ptr [esi]
 005C78E0    movs        dword ptr [edi],dword ptr [esi]
 005C78E1    mov         ebx,eax
 005C78E3    mov         eax,ebx
 005C78E5    call        TWinControl.GetDockClientCount
 005C78EA    test        eax,eax
 005C78EC    mov         eax,dword ptr [ebp+8]
 005C78EF    sete        byte ptr [eax]
 005C78F2    pop         edi
 005C78F3    pop         esi
 005C78F4    pop         ebx
 005C78F5    pop         ecx
 005C78F6    pop         ecx
 005C78F7    pop         ebp
 005C78F8    ret         8
end;*}

//005C78FC
{*procedure TCustomDockForm.WMNCHitTest(?:?);
begin
 005C78FC    push        ebx
 005C78FD    push        esi
 005C78FE    mov         esi,edx
 005C7900    mov         ebx,eax
 005C7902    mov         edx,esi
 005C7904    mov         eax,ebx
 005C7906    call        TCustomForm.WMNCHitTest
 005C790B    test        byte ptr [ebx+1C],10;TCustomDockForm.FComponentState:TComponentState
>005C790F    jne         005C791E
 005C7911    cmp         dword ptr [esi+0C],1
>005C7915    jne         005C791E
 005C7917    mov         dword ptr [esi+0C],2
 005C791E    pop         esi
 005C791F    pop         ebx
 005C7920    ret
end;*}

//005C7924
procedure TCustomDockForm.WMNCLButtonDown(Message:Messages.TWMNCLButtonDown);
begin
{*
 005C7924    push        ebx
 005C7925    push        esi
 005C7926    mov         esi,edx
 005C7928    mov         ebx,eax
 005C792A    cmp         dword ptr [esi+4],2
>005C792E    jne         005C79AC
 005C7930    cmp         byte ptr [ebx+9B],1;TCustomDockForm.FDragKind:TDragKind
>005C7937    je          005C79AC
 005C7939    test        byte ptr [ebx+1C],10;TCustomDockForm.FComponentState:TComponentState
>005C793D    jne         005C79AC
 005C793F    mov         eax,ebx
 005C7941    call        TWinControl.GetHandle
 005C7946    call        005BE99C
 005C794B    test        eax,eax
>005C794D    jne         005C79AC
 005C794F    mov         eax,ebx
 005C7951    call        TWinControl.GetDockClientCount
 005C7956    test        eax,eax
>005C7958    jle         005C79AC
 005C795A    push        7
 005C795C    push        0
 005C795E    push        0
 005C7960    push        0
 005C7962    push        0
 005C7964    push        0
 005C7966    mov         eax,ebx
 005C7968    call        TWinControl.GetHandle
 005C796D    push        eax
 005C796E    call        user32.SetWindowPos
 005C7973    mov         eax,dword ptr [esi+8]
 005C7976    push        eax
 005C7977    mov         eax,dword ptr [esi+4]
 005C797A    push        eax
 005C797B    push        0A2
 005C7980    mov         eax,ebx
 005C7982    call        TWinControl.GetHandle
 005C7987    push        eax
 005C7988    call        user32.PostMessageW
 005C798D    cmp         byte ptr [ebx+2C1],0;TCustomDockForm.FActive:Boolean
>005C7994    je          005C79B5
 005C7996    xor         edx,edx
 005C7998    mov         eax,ebx
 005C799A    call        TWinControl.GetDockClients
 005C799F    or          ecx,0FFFFFFFF
 005C79A2    mov         dl,1
 005C79A4    call        TControl.BeginDrag
 005C79A9    pop         esi
 005C79AA    pop         ebx
 005C79AB    ret
 005C79AC    mov         edx,esi
 005C79AE    mov         eax,ebx
 005C79B0    call        TCustomForm.WMNCLButtonDown
 005C79B5    pop         esi
 005C79B6    pop         ebx
 005C79B7    ret
*}
end;

//005C79B8
{*procedure TCustomDockForm.CMControlLIstChange(?:?);
begin
 005C79B8    push        ebx
 005C79B9    push        esi
 005C79BA    push        edi
 005C79BB    add         esp,0FFFFFFF0
 005C79BE    mov         esi,edx
 005C79C0    mov         ebx,eax
 005C79C2    mov         edx,esi
 005C79C4    mov         eax,ebx
 005C79C6    call        TWinControl.CMControlLIstChange
 005C79CB    cmp         dword ptr [esi+8],0
>005C79CF    jne         005C7A07
 005C79D1    mov         eax,dword ptr [esi+4]
 005C79D4    push        eax
 005C79D5    xor         ecx,ecx
 005C79D7    mov         edx,0B039
 005C79DC    mov         eax,ebx
 005C79DE    call        TControl.Perform
 005C79E3    mov         edi,dword ptr [esi+4]
 005C79E6    cmp         ebx,dword ptr [edi+0A0]
>005C79EC    jne         005C7A07
 005C79EE    mov         edx,esp
 005C79F0    mov         eax,edi
 005C79F2    call        TControl.GetBoundsRect
 005C79F7    mov         ecx,esp
 005C79F9    mov         eax,edi
 005C79FB    or          edx,0FFFFFFFF
 005C79FE    mov         si,0FFCB
 005C7A02    call        @CallDynaInst
 005C7A07    add         esp,10
 005C7A0A    pop         edi
 005C7A0B    pop         esi
 005C7A0C    pop         ebx
 005C7A0D    ret
end;*}

//005C7A10
{*procedure TCustomDockForm.sub_005C7A10(?:?);
begin
 005C7A10    push        ebp
 005C7A11    mov         ebp,esp
 005C7A13    add         esp,0FFFFFFF4
 005C7A16    push        ebx
 005C7A17    push        esi
 005C7A18    xor         ecx,ecx
 005C7A1A    mov         dword ptr [ebp-4],ecx
 005C7A1D    mov         ebx,edx
 005C7A1F    mov         dword ptr [ebp-8],eax
 005C7A22    xor         eax,eax
 005C7A24    push        ebp
 005C7A25    push        5C7B08
 005C7A2A    push        dword ptr fs:[eax]
 005C7A2D    mov         dword ptr fs:[eax],esp
 005C7A30    mov         edx,ebx
 005C7A32    mov         eax,dword ptr [ebp-8]
 005C7A35    mov         ecx,dword ptr [eax]
 005C7A37    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 005C7A3A    mov         eax,dword ptr [ebx+8]
 005C7A3D    mov         eax,dword ptr [eax]
 005C7A3F    sub         eax,0C
>005C7A42    je          005C7A63
 005C7A44    sub         eax,0AFFF
>005C7A49    jne         005C7AF2
 005C7A4F    mov         eax,dword ptr [ebx+4]
 005C7A52    movzx       edx,byte ptr [eax+69]
 005C7A56    mov         eax,dword ptr [ebp-8]
 005C7A59    call        TForm.SetVisible
>005C7A5E    jmp         005C7AF2
 005C7A63    mov         eax,dword ptr [ebx+4]
 005C7A66    call        TControl.GetTextLen
 005C7A6B    mov         ecx,eax
 005C7A6D    inc         ecx
 005C7A6E    lea         eax,[ebp-4]
 005C7A71    xor         edx,edx
 005C7A73    call        @UStrFromPWCharLen
 005C7A78    mov         esi,dword ptr [ebp-4]
 005C7A7B    test        esi,esi
>005C7A7D    je          005C7A84
 005C7A7F    sub         esi,4
 005C7A82    mov         esi,dword ptr [esi]
 005C7A84    mov         eax,dword ptr [ebp-4]
 005C7A87    call        @UStrToPWChar
 005C7A8C    mov         edx,eax
 005C7A8E    mov         eax,dword ptr [ebx+4]
 005C7A91    mov         ecx,esi
 005C7A93    call        TControl.GetTextBuf
 005C7A98    mov         eax,dword ptr [ebp-4]
 005C7A9B    test        eax,eax
>005C7A9D    je          005C7AA4
 005C7A9F    sub         eax,4
 005C7AA2    mov         eax,dword ptr [eax]
 005C7AA4    test        eax,eax
>005C7AA6    jle         005C7AE7
 005C7AA8    mov         ebx,1
 005C7AAD    mov         edx,dword ptr [ebp-4]
 005C7AB0    movzx       esi,word ptr [edx+ebx*2-2]
 005C7AB5    mov         edx,5C7B18
 005C7ABA    mov         dword ptr [ebp-0C],edx
 005C7ABD    mov         edx,dword ptr [ebp-0C]
 005C7AC0    mov         ecx,esi
 005C7AC2    cmp         cx,0FF
>005C7AC7    ja          005C7ACF
 005C7AC9    movzx       ecx,cx
 005C7ACC    bt          dword ptr [edx],ecx
 005C7ACF    setb        dl
 005C7AD2    test        dl,dl
>005C7AD4    je          005C7AE3
 005C7AD6    mov         edx,ebx
 005C7AD8    dec         edx
 005C7AD9    lea         eax,[ebp-4]
 005C7ADC    call        @UStrSetLength
>005C7AE1    jmp         005C7AE7
 005C7AE3    inc         ebx
 005C7AE4    dec         eax
>005C7AE5    jne         005C7AAD
 005C7AE7    mov         edx,dword ptr [ebp-4]
 005C7AEA    mov         eax,dword ptr [ebp-8]
 005C7AED    call        TControl.SetText
 005C7AF2    xor         eax,eax
 005C7AF4    pop         edx
 005C7AF5    pop         ecx
 005C7AF6    pop         ecx
 005C7AF7    mov         dword ptr fs:[eax],edx
 005C7AFA    push        5C7B0F
 005C7AFF    lea         eax,[ebp-4]
 005C7B02    call        @UStrClr
 005C7B07    ret
>005C7B08    jmp         @HandleFinally
>005C7B0D    jmp         005C7AFF
 005C7B0F    pop         esi
 005C7B10    pop         ebx
 005C7B11    mov         esp,ebp
 005C7B13    pop         ebp
 005C7B14    ret
end;*}

//005C7B38
{*procedure TCustomDockForm.CMUndockClient(?:?);
begin
 005C7B38    push        ebx
 005C7B39    mov         ebx,edx
 005C7B3B    mov         edx,ebx
 005C7B3D    call        TWinControl.CMUndockClient
 005C7B42    mov         eax,dword ptr [ebx+8]
 005C7B45    xor         edx,edx
 005C7B47    call        TGroupBox.SetAlign
 005C7B4C    pop         ebx
 005C7B4D    ret
end;*}

//005C7B50
procedure TCustomDockForm.CMVisibleChanged;
begin
{*
 005C7B50    push        ebx
 005C7B51    push        esi
 005C7B52    push        edi
 005C7B53    mov         ebx,eax
 005C7B55    mov         eax,ebx
 005C7B57    call        TWinControl.CMVisibleChanged
 005C7B5C    test        byte ptr [ebx+1C],8;TCustomDockForm.FComponentState:TComponentState
>005C7B60    jne         005C7B89
 005C7B62    mov         eax,ebx
 005C7B64    call        TWinControl.GetDockClientCount
 005C7B69    mov         esi,eax
 005C7B6B    dec         esi
 005C7B6C    test        esi,esi
>005C7B6E    jl          005C7B89
 005C7B70    inc         esi
 005C7B71    xor         edi,edi
 005C7B73    mov         edx,edi
 005C7B75    mov         eax,ebx
 005C7B77    call        TWinControl.GetDockClients
 005C7B7C    movzx       edx,byte ptr [ebx+69];TCustomDockForm.FVisible:Boolean
 005C7B80    call        TControl.SetVisible
 005C7B85    inc         edi
 005C7B86    dec         esi
>005C7B87    jne         005C7B73
 005C7B89    pop         edi
 005C7B8A    pop         esi
 005C7B8B    pop         ebx
 005C7B8C    ret
*}
end;

//005C7B90
{*function sub_005C7B90(?:TMonitor):?;
begin
 005C7B90    push        ebx
 005C7B91    add         esp,0FFFFFFF0
 005C7B94    mov         ebx,eax
 005C7B96    mov         edx,esp
 005C7B98    mov         eax,ebx
 005C7B9A    call        TMonitor.GetBoundsRect
 005C7B9F    mov         eax,dword ptr [esp]
 005C7BA2    add         esp,10
 005C7BA5    pop         ebx
 005C7BA6    ret
end;*}

//005C7BA8
function TMonitor.GetHeight:Integer;
begin
{*
 005C7BA8    push        ebx
 005C7BA9    add         esp,0FFFFFFF0
 005C7BAC    mov         ebx,eax
 005C7BAE    mov         edx,esp
 005C7BB0    mov         eax,ebx
 005C7BB2    call        TMonitor.GetBoundsRect
 005C7BB7    mov         eax,dword ptr [esp+0C]
 005C7BBB    sub         eax,dword ptr [esp+4]
 005C7BBF    add         esp,10
 005C7BC2    pop         ebx
 005C7BC3    ret
*}
end;

//005C7BC4
{*function sub_005C7BC4(?:TMonitor):?;
begin
 005C7BC4    push        ebx
 005C7BC5    add         esp,0FFFFFFF0
 005C7BC8    mov         ebx,eax
 005C7BCA    mov         edx,esp
 005C7BCC    mov         eax,ebx
 005C7BCE    call        TMonitor.GetBoundsRect
 005C7BD3    mov         eax,dword ptr [esp+4]
 005C7BD7    add         esp,10
 005C7BDA    pop         ebx
 005C7BDB    ret
end;*}

//005C7BDC
function TMonitor.GetWidth:Integer;
begin
{*
 005C7BDC    push        ebx
 005C7BDD    add         esp,0FFFFFFF0
 005C7BE0    mov         ebx,eax
 005C7BE2    mov         edx,esp
 005C7BE4    mov         eax,ebx
 005C7BE6    call        TMonitor.GetBoundsRect
 005C7BEB    mov         eax,dword ptr [esp+8]
 005C7BEF    sub         eax,dword ptr [esp]
 005C7BF2    add         esp,10
 005C7BF5    pop         ebx
 005C7BF6    ret
*}
end;

//005C7BF8
function TMonitor.GetBoundsRect:TRect;
begin
{*
 005C7BF8    push        ebx
 005C7BF9    push        esi
 005C7BFA    push        edi
 005C7BFB    add         esp,0FFFFFFD8
 005C7BFE    mov         ebx,edx
 005C7C00    mov         dword ptr [esp],28
 005C7C07    push        esp
 005C7C08    mov         eax,dword ptr [eax+4]
 005C7C0B    push        eax
 005C7C0C    call        user32.GetMonitorInfoW
 005C7C11    mov         edi,ebx
 005C7C13    lea         esi,[esp+4]
 005C7C17    movs        dword ptr [edi],dword ptr [esi]
 005C7C18    movs        dword ptr [edi],dword ptr [esi]
 005C7C19    movs        dword ptr [edi],dword ptr [esi]
 005C7C1A    movs        dword ptr [edi],dword ptr [esi]
 005C7C1B    add         esp,28
 005C7C1E    pop         edi
 005C7C1F    pop         esi
 005C7C20    pop         ebx
 005C7C21    ret
*}
end;

//005C7C24
{*procedure sub_005C7C24(?:TMonitor; ?:?);
begin
 005C7C24    push        ebx
 005C7C25    push        esi
 005C7C26    push        edi
 005C7C27    add         esp,0FFFFFFD8
 005C7C2A    mov         ebx,edx
 005C7C2C    mov         dword ptr [esp],28
 005C7C33    push        esp
 005C7C34    mov         eax,dword ptr [eax+4];TMonitor.FHandle:HMONITOR
 005C7C37    push        eax
 005C7C38    call        user32.GetMonitorInfoW
 005C7C3D    mov         edi,ebx
 005C7C3F    lea         esi,[esp+14]
 005C7C43    movs        dword ptr [edi],dword ptr [esi]
 005C7C44    movs        dword ptr [edi],dword ptr [esi]
 005C7C45    movs        dword ptr [edi],dword ptr [esi]
 005C7C46    movs        dword ptr [edi],dword ptr [esi]
 005C7C47    add         esp,28
 005C7C4A    pop         edi
 005C7C4B    pop         esi
 005C7C4C    pop         ebx
 005C7C4D    ret
end;*}

//005C7C50
function TMonitor.GetPrimary:Boolean;
begin
{*
 005C7C50    add         esp,0FFFFFFD8
 005C7C53    mov         dword ptr [esp],28
 005C7C5A    push        esp
 005C7C5B    mov         eax,dword ptr [eax+4]
 005C7C5E    push        eax
 005C7C5F    call        user32.GetMonitorInfoW
 005C7C64    test        byte ptr [esp+24],1
 005C7C69    setne       al
 005C7C6C    add         esp,28
 005C7C6F    ret
*}
end;

//005C7C70
{*function sub_005C7C70(?:TMonitor):?;
begin
 005C7C70    push        ebx
 005C7C71    push        esi
 005C7C72    add         esp,0FFFFFFF8
 005C7C75    mov         ebx,eax
 005C7C77    mov         edx,3
 005C7C7C    mov         eax,6
 005C7C81    call        CheckWin32Version
 005C7C86    test        al,al
>005C7C88    je          005C7CAC
 005C7C8A    lea         eax,[esp+4]
 005C7C8E    push        eax
 005C7C8F    lea         eax,[esp+4]
 005C7C93    push        eax
 005C7C94    push        0
 005C7C96    mov         eax,dword ptr [ebx+4];TMonitor.FHandle:HMONITOR
 005C7C99    push        eax
 005C7C9A    call        005B3D54
 005C7C9F    test        eax,eax
>005C7CA1    jne         005C7CA8
 005C7CA3    mov         esi,dword ptr [esp]
>005C7CA6    jmp         005C7CC7
 005C7CA8    xor         esi,esi
>005C7CAA    jmp         005C7CC7
 005C7CAC    push        0
 005C7CAE    call        user32.GetDC
 005C7CB3    mov         ebx,eax
 005C7CB5    push        5A
 005C7CB7    push        ebx
 005C7CB8    call        gdi32.GetDeviceCaps
 005C7CBD    mov         esi,eax
 005C7CBF    push        ebx
 005C7CC0    push        0
 005C7CC2    call        user32.ReleaseDC
 005C7CC7    mov         eax,esi
 005C7CC9    pop         ecx
 005C7CCA    pop         edx
 005C7CCB    pop         esi
 005C7CCC    pop         ebx
 005C7CCD    ret
end;*}

//005C7D68
constructor TScreen.Create;
begin
{*
 005C7D68    push        ebp
 005C7D69    mov         ebp,esp
 005C7D6B    push        ecx
 005C7D6C    push        ebx
 005C7D6D    push        esi
 005C7D6E    test        dl,dl
>005C7D70    je          005C7D7A
 005C7D72    add         esp,0FFFFFFF0
 005C7D75    call        @ClassCreate
 005C7D7A    mov         byte ptr [ebp-1],dl
 005C7D7D    mov         ebx,eax
 005C7D7F    xor         edx,edx
 005C7D81    mov         eax,ebx
 005C7D83    call        TComponent.Create
 005C7D88    mov         eax,[007C4478];^gvar_007A05D0
 005C7D8D    mov         dword ptr [eax+4],ebx
 005C7D90    mov         dword ptr [eax],5C8230
 005C7D96    mov         eax,[007C4494];^gvar_007A05D8
 005C7D9B    mov         dword ptr [eax+4],ebx
 005C7D9E    mov         dword ptr [eax],5C823C
 005C7DA4    mov         eax,ebx
 005C7DA6    call        005C8248
 005C7DAB    push        0
 005C7DAD    call        user32.GetKeyboardLayout
 005C7DB2    mov         dword ptr [ebx+4C],eax
 005C7DB5    mov         dl,1
 005C7DB7    mov         eax,[0046C204];TList
 005C7DBC    call        TObject.Create
 005C7DC1    mov         dword ptr [ebx+5C],eax
 005C7DC4    mov         dl,1
 005C7DC6    mov         eax,[0046C204];TList
 005C7DCB    call        TObject.Create
 005C7DD0    mov         dword ptr [ebx+60],eax
 005C7DD3    mov         dl,1
 005C7DD5    mov         eax,[0046C204];TList
 005C7DDA    call        TObject.Create
 005C7DDF    mov         dword ptr [ebx+64],eax
 005C7DE2    mov         dl,1
 005C7DE4    mov         eax,[0046C204];TList
 005C7DE9    call        TObject.Create
 005C7DEE    mov         dword ptr [ebx+68],eax
 005C7DF1    mov         dl,1
 005C7DF3    mov         eax,[0046C204];TList
 005C7DF8    call        TObject.Create
 005C7DFD    mov         dword ptr [ebx+84],eax
 005C7E03    push        0
 005C7E05    call        user32.GetDC
 005C7E0A    mov         esi,eax
 005C7E0C    push        5A
 005C7E0E    push        esi
 005C7E0F    call        gdi32.GetDeviceCaps
 005C7E14    mov         dword ptr [ebx+50],eax
 005C7E17    push        esi
 005C7E18    push        0
 005C7E1A    call        user32.ReleaseDC
 005C7E1F    mov         eax,dword ptr [ebx+68]
 005C7E22    push        eax
 005C7E23    mov         eax,5C2E00;sub_005C2E00
 005C7E28    push        eax
 005C7E29    push        0
 005C7E2B    push        0
 005C7E2D    call        user32.EnumDisplayMonitors
 005C7E32    mov         dl,1
 005C7E34    mov         eax,[004BDD74];TFont
 005C7E39    call        TFont.Create
 005C7E3E    mov         dword ptr [ebx+8C],eax
 005C7E44    mov         dl,1
 005C7E46    mov         eax,[004BDD74];TFont
 005C7E4B    call        TFont.Create
 005C7E50    mov         dword ptr [ebx+90],eax
 005C7E56    mov         dl,1
 005C7E58    mov         eax,[004BDD74];TFont
 005C7E5D    call        TFont.Create
 005C7E62    mov         dword ptr [ebx+88],eax
 005C7E68    mov         dl,1
 005C7E6A    mov         eax,[004BDD74];TFont
 005C7E6F    call        TFont.Create
 005C7E74    mov         dword ptr [ebx+94],eax
 005C7E7A    mov         dl,1
 005C7E7C    mov         eax,[004BDD74];TFont
 005C7E81    call        TFont.Create
 005C7E86    mov         dword ptr [ebx+98],eax
 005C7E8C    mov         eax,ebx
 005C7E8E    call        005C8824
 005C7E93    mov         eax,dword ptr [ebx+8C]
 005C7E99    mov         dword ptr [eax+0C],ebx
 005C7E9C    mov         dword ptr [eax+8],5C8654;sub_005C8654
 005C7EA3    mov         eax,dword ptr [ebx+90]
 005C7EA9    mov         dword ptr [eax+0C],ebx
 005C7EAC    mov         dword ptr [eax+8],5C8654;sub_005C8654
 005C7EB3    mov         eax,dword ptr [ebx+88]
 005C7EB9    mov         dword ptr [eax+0C],ebx
 005C7EBC    mov         dword ptr [eax+8],5C8654;sub_005C8654
 005C7EC3    mov         eax,dword ptr [ebx+94]
 005C7EC9    mov         dword ptr [eax+0C],ebx
 005C7ECC    mov         dword ptr [eax+8],5C8654;sub_005C8654
 005C7ED3    mov         eax,dword ptr [ebx+98]
 005C7ED9    mov         dword ptr [eax+0C],ebx
 005C7EDC    mov         dword ptr [eax+8],5C8654;sub_005C8654
 005C7EE3    mov         eax,ebx
 005C7EE5    cmp         byte ptr [ebp-1],0
>005C7EE9    je          005C7EFA
 005C7EEB    call        @AfterConstruction
 005C7EF0    pop         dword ptr fs:[0]
 005C7EF7    add         esp,0C
 005C7EFA    mov         eax,ebx
 005C7EFC    pop         esi
 005C7EFD    pop         ebx
 005C7EFE    pop         ecx
 005C7EFF    pop         ebp
 005C7F00    ret
*}
end;

//005C7F04
destructor TScreen.Destroy();
begin
{*
 005C7F04    push        ebx
 005C7F05    push        esi
 005C7F06    push        edi
 005C7F07    push        ebp
 005C7F08    add         esp,0FFFFFFD0
 005C7F0B    call        @BeforeDestruction
 005C7F10    mov         ebx,edx
 005C7F12    mov         ebp,eax
 005C7F14    lea         eax,[ebp+94];TScreen.FMessageFont:TFont
 005C7F1A    mov         dword ptr [esp],eax
 005C7F1D    mov         eax,dword ptr [esp]
 005C7F20    mov         eax,dword ptr [eax]
 005C7F22    mov         edx,dword ptr [esp]
 005C7F25    xor         ecx,ecx
 005C7F27    mov         dword ptr [edx],ecx
 005C7F29    call        TObject.Free
 005C7F2E    lea         eax,[ebp+88];TScreen.FHintFont:TFont
 005C7F34    mov         dword ptr [esp+4],eax
 005C7F38    mov         eax,dword ptr [esp+4]
 005C7F3C    mov         eax,dword ptr [eax]
 005C7F3E    mov         edx,dword ptr [esp+4]
 005C7F42    xor         ecx,ecx
 005C7F44    mov         dword ptr [edx],ecx
 005C7F46    call        TObject.Free
 005C7F4B    lea         eax,[ebp+90];TScreen.FMenuFont:TFont
 005C7F51    mov         dword ptr [esp+8],eax
 005C7F55    mov         eax,dword ptr [esp+8]
 005C7F59    mov         eax,dword ptr [eax]
 005C7F5B    mov         edx,dword ptr [esp+8]
 005C7F5F    xor         ecx,ecx
 005C7F61    mov         dword ptr [edx],ecx
 005C7F63    call        TObject.Free
 005C7F68    lea         eax,[ebp+8C];TScreen.FIconFont:TFont
 005C7F6E    mov         dword ptr [esp+0C],eax
 005C7F72    mov         eax,dword ptr [esp+0C]
 005C7F76    mov         eax,dword ptr [eax]
 005C7F78    mov         edx,dword ptr [esp+0C]
 005C7F7C    xor         ecx,ecx
 005C7F7E    mov         dword ptr [edx],ecx
 005C7F80    call        TObject.Free
 005C7F85    lea         eax,[ebp+98];TScreen.FCaptionFont:TFont
 005C7F8B    mov         dword ptr [esp+10],eax
 005C7F8F    mov         eax,dword ptr [esp+10]
 005C7F93    mov         eax,dword ptr [eax]
 005C7F95    mov         edx,dword ptr [esp+10]
 005C7F99    xor         ecx,ecx
 005C7F9B    mov         dword ptr [edx],ecx
 005C7F9D    call        TObject.Free
 005C7FA2    lea         eax,[ebp+64];TScreen.FDataModules:TList
 005C7FA5    mov         dword ptr [esp+14],eax
 005C7FA9    mov         eax,dword ptr [esp+14]
 005C7FAD    mov         eax,dword ptr [eax]
 005C7FAF    mov         edx,dword ptr [esp+14]
 005C7FB3    xor         ecx,ecx
 005C7FB5    mov         dword ptr [edx],ecx
 005C7FB7    call        TObject.Free
 005C7FBC    lea         eax,[ebp+60];TScreen.FCustomForms:TList
 005C7FBF    mov         dword ptr [esp+18],eax
 005C7FC3    mov         eax,dword ptr [esp+18]
 005C7FC7    mov         eax,dword ptr [eax]
 005C7FC9    mov         edx,dword ptr [esp+18]
 005C7FCD    xor         ecx,ecx
 005C7FCF    mov         dword ptr [edx],ecx
 005C7FD1    call        TObject.Free
 005C7FD6    lea         eax,[ebp+5C];TScreen.FForms:TList
 005C7FD9    mov         dword ptr [esp+1C],eax
 005C7FDD    mov         eax,dword ptr [esp+1C]
 005C7FE1    mov         eax,dword ptr [eax]
 005C7FE3    mov         edx,dword ptr [esp+1C]
 005C7FE7    xor         ecx,ecx
 005C7FE9    mov         dword ptr [edx],ecx
 005C7FEB    call        TObject.Free
 005C7FF0    lea         eax,[ebp+40];TScreen.FFonts:TStrings
 005C7FF3    mov         dword ptr [esp+20],eax
 005C7FF7    mov         eax,dword ptr [esp+20]
 005C7FFB    mov         eax,dword ptr [eax]
 005C7FFD    mov         edx,dword ptr [esp+20]
 005C8001    xor         ecx,ecx
 005C8003    mov         dword ptr [edx],ecx
 005C8005    call        TObject.Free
 005C800A    lea         eax,[ebp+44];TScreen.FImes:TStrings
 005C800D    mov         dword ptr [esp+24],eax
 005C8011    mov         eax,dword ptr [esp+24]
 005C8015    mov         eax,dword ptr [eax]
 005C8017    mov         edx,dword ptr [esp+24]
 005C801B    xor         ecx,ecx
 005C801D    mov         dword ptr [edx],ecx
 005C801F    call        TObject.Free
 005C8024    lea         eax,[ebp+84];TScreen.FSaveFocusedList:TList
 005C802A    mov         dword ptr [esp+28],eax
 005C802E    mov         eax,dword ptr [esp+28]
 005C8032    mov         eax,dword ptr [eax]
 005C8034    mov         edx,dword ptr [esp+28]
 005C8038    xor         ecx,ecx
 005C803A    mov         dword ptr [edx],ecx
 005C803C    call        TObject.Free
 005C8041    mov         eax,dword ptr [ebp+68];TScreen.FMonitors:TList
 005C8044    test        eax,eax
>005C8046    je          005C8066
 005C8048    mov         esi,dword ptr [eax+8];TList.FCount:Integer
 005C804B    dec         esi
 005C804C    test        esi,esi
>005C804E    jl          005C8066
 005C8050    inc         esi
 005C8051    xor         edi,edi
 005C8053    mov         eax,dword ptr [ebp+68];TScreen.FMonitors:TList
 005C8056    mov         edx,edi
 005C8058    call        TList.Get
 005C805D    call        TObject.Free
 005C8062    inc         edi
 005C8063    dec         esi
>005C8064    jne         005C8053
 005C8066    lea         eax,[ebp+68];TScreen.FMonitors:TList
 005C8069    mov         dword ptr [esp+2C],eax
 005C806D    mov         eax,dword ptr [esp+2C]
 005C8071    mov         eax,dword ptr [eax]
 005C8073    mov         edx,dword ptr [esp+2C]
 005C8077    xor         ecx,ecx
 005C8079    mov         dword ptr [edx],ecx
 005C807B    call        TObject.Free
 005C8080    mov         eax,ebp
 005C8082    call        005C82A0
 005C8087    mov         eax,[007C4478];^gvar_007A05D0
 005C808C    xor         edx,edx
 005C808E    mov         dword ptr [eax],edx
 005C8090    mov         dword ptr [eax+4],edx
 005C8093    mov         eax,[007C4494];^gvar_007A05D8
 005C8098    xor         edx,edx
 005C809A    mov         dword ptr [eax],edx
 005C809C    mov         dword ptr [eax+4],edx
 005C809F    mov         dl,0FC
 005C80A1    and         dl,bl
 005C80A3    mov         eax,ebp
 005C80A5    call        TComponent.Destroy
 005C80AA    test        bl,bl
>005C80AC    jle         005C80B5
 005C80AE    mov         eax,ebp
 005C80B0    call        @ClassDestroy
 005C80B5    add         esp,30
 005C80B8    pop         ebp
 005C80B9    pop         edi
 005C80BA    pop         esi
 005C80BB    pop         ebx
 005C80BC    ret
*}
end;

//005C80C0
{*function sub_005C80C0:?;
begin
 005C80C0    push        1
 005C80C2    call        user32.GetSystemMetrics
 005C80C7    ret
end;*}

//005C80C8
{*function sub_005C80C8:?;
begin
 005C80C8    push        0
 005C80CA    call        user32.GetSystemMetrics
 005C80CF    ret
end;*}

//005C80D0
{*function sub_005C80D0:?;
begin
 005C80D0    push        4D
 005C80D2    call        user32.GetSystemMetrics
 005C80D7    ret
end;*}

//005C80D8
{*function sub_005C80D8:?;
begin
 005C80D8    push        4C
 005C80DA    call        user32.GetSystemMetrics
 005C80DF    ret
end;*}

//005C80E0
{*function sub_005C80E0:?;
begin
 005C80E0    push        4F
 005C80E2    call        user32.GetSystemMetrics
 005C80E7    ret
end;*}

//005C80E8
{*function sub_005C80E8:?;
begin
 005C80E8    push        4E
 005C80EA    call        user32.GetSystemMetrics
 005C80EF    ret
end;*}

//005C80F0
function TScreen.GetMonitor(Index:Integer):TMonitor;
begin
{*
 005C80F0    push        ebx
 005C80F1    push        esi
 005C80F2    mov         esi,edx
 005C80F4    mov         ebx,eax
 005C80F6    mov         edx,esi
 005C80F8    mov         eax,dword ptr [ebx+68]
 005C80FB    call        TList.Get
 005C8100    pop         esi
 005C8101    pop         ebx
 005C8102    ret
*}
end;

//005C8104
function TScreen.GetMonitorCount:Integer;
begin
{*
 005C8104    mov         edx,dword ptr [eax+68]
 005C8107    mov         edx,dword ptr [edx+8]
 005C810A    test        edx,edx
>005C810C    jne         005C8116
 005C810E    push        50
 005C8110    call        user32.GetSystemMetrics
 005C8115    ret
 005C8116    mov         eax,edx
 005C8118    ret
*}
end;

//005C811C
function TScreen.GetForm(Index:Integer):TForm;
begin
{*
 005C811C    push        ebx
 005C811D    push        esi
 005C811E    mov         esi,edx
 005C8120    mov         ebx,eax
 005C8122    mov         edx,esi
 005C8124    mov         eax,dword ptr [ebx+5C]
 005C8127    call        TList.Get
 005C812C    pop         esi
 005C812D    pop         ebx
 005C812E    ret
*}
end;

//005C8130
function TScreen.GetFormCount:Integer;
begin
{*
 005C8130    mov         eax,dword ptr [eax+5C]
 005C8133    mov         eax,dword ptr [eax+8]
 005C8136    ret
*}
end;

//005C8138
function TScreen.GetCustomForms(Index:Integer):TCustomForm;
begin
{*
 005C8138    push        ebx
 005C8139    push        esi
 005C813A    mov         esi,edx
 005C813C    mov         ebx,eax
 005C813E    mov         edx,esi
 005C8140    mov         eax,dword ptr [ebx+60];TScreen.FCustomForms:TList
 005C8143    call        TList.Get
 005C8148    pop         esi
 005C8149    pop         ebx
 005C814A    ret
*}
end;

//005C814C
{*function sub_005C814C(?:?):?;
begin
 005C814C    mov         eax,dword ptr [eax+60]
 005C814F    mov         eax,dword ptr [eax+8]
 005C8152    ret
end;*}

//005C8154
{*procedure sub_005C8154(?:?);
begin
 005C8154    push        ebx
 005C8155    mov         ebx,eax
 005C8157    mov         eax,dword ptr [ebx+70]
 005C815A    cmp         eax,dword ptr [ebx+7C]
>005C815D    je          005C817A
 005C815F    mov         dword ptr [ebx+7C],eax
 005C8162    cmp         word ptr [ebx+0B2],0
>005C816A    je          005C817A
 005C816C    mov         edx,ebx
 005C816E    mov         eax,dword ptr [ebx+0B4]
 005C8174    call        dword ptr [ebx+0B0]
 005C817A    mov         eax,dword ptr [ebx+6C]
 005C817D    cmp         eax,dword ptr [ebx+78]
>005C8180    je          005C819D
 005C8182    mov         dword ptr [ebx+78],eax
 005C8185    cmp         word ptr [ebx+0AA],0
>005C818D    je          005C819D
 005C818F    mov         edx,ebx
 005C8191    mov         eax,dword ptr [ebx+0AC]
 005C8197    call        dword ptr [ebx+0A8]
 005C819D    pop         ebx
 005C819E    ret
end;*}

//005C81A0
{*procedure sub_005C81A0(?:?; ?:TCustomForm);
begin
 005C81A0    push        ebx
 005C81A1    push        esi
 005C81A2    mov         esi,edx
 005C81A4    mov         ebx,eax
 005C81A6    mov         edx,esi
 005C81A8    mov         eax,dword ptr [ebx+60]
 005C81AB    call        TList.Add
 005C81B0    mov         eax,esi
 005C81B2    mov         edx,dword ptr ds:[5B865C];TForm
 005C81B8    call        @IsClass
 005C81BD    test        al,al
>005C81BF    je          005C81D5
 005C81C1    mov         edx,esi
 005C81C3    mov         eax,dword ptr [ebx+5C]
 005C81C6    call        TList.Add
 005C81CB    mov         eax,[007CA7C8];Application:TApplication
 005C81D0    call        005CC318
 005C81D5    pop         esi
 005C81D6    pop         ebx
 005C81D7    ret
end;*}

//005C81D8
{*procedure sub_005C81D8(?:?; ?:TCustomForm);
begin
 005C81D8    push        ebx
 005C81D9    push        esi
 005C81DA    push        edi
 005C81DB    mov         esi,edx
 005C81DD    mov         ebx,eax
 005C81DF    mov         eax,dword ptr [ebx+60]
 005C81E2    mov         edi,esi
 005C81E4    mov         edx,edi
 005C81E6    xor         ecx,ecx
 005C81E8    call        TList.RemoveItem
 005C81ED    mov         eax,dword ptr [ebx+5C]
 005C81F0    mov         edx,edi
 005C81F2    xor         ecx,ecx
 005C81F4    call        TList.RemoveItem
 005C81F9    mov         eax,[007CA7C8];Application:TApplication
 005C81FE    call        005CC318
 005C8203    mov         eax,dword ptr [ebx+60]
 005C8206    cmp         dword ptr [eax+8],0
>005C820A    jne         005C822A
 005C820C    mov         eax,[007CA7C8];Application:TApplication
 005C8211    cmp         dword ptr [eax+98],0
>005C8218    je          005C822A
 005C821A    mov         eax,[007CA7C8];Application:TApplication
 005C821F    mov         eax,dword ptr [eax+98]
 005C8225    call        THintWindow.ReleaseHandle
 005C822A    pop         edi
 005C822B    pop         esi
 005C822C    pop         ebx
 005C822D    ret
end;*}

//005C8248
{*procedure sub_005C8248(?:?);
begin
 005C8248    push        ebx
 005C8249    push        esi
 005C824A    push        edi
 005C824B    push        ebp
 005C824C    mov         ebp,eax
 005C824E    push        7F00
 005C8253    push        0
 005C8255    call        user32.LoadCursorW
 005C825A    mov         dword ptr [ebp+0BC],eax
 005C8260    mov         ebx,0FFFFFFEA
 005C8265    mov         esi,7A1D50
 005C826A    cmp         ebx,0FFFFFFEF
>005C826D    jl          005C827C
 005C826F    cmp         ebx,0FFFFFFF4
>005C8272    jg          005C827C
 005C8274    mov         edi,dword ptr ds:[7C7C54];gvar_007C7C54
>005C827A    jmp         005C827E
 005C827C    xor         edi,edi
 005C827E    mov         eax,dword ptr [esi]
 005C8280    push        eax
 005C8281    push        edi
 005C8282    call        user32.LoadCursorW
 005C8287    mov         ecx,eax
 005C8289    mov         edx,ebx
 005C828B    mov         eax,ebp
 005C828D    call        005C83C8
 005C8292    inc         ebx
 005C8293    add         esi,4
 005C8296    cmp         ebx,0FFFFFFFF
>005C8299    jne         005C826A
 005C829B    pop         ebp
 005C829C    pop         edi
 005C829D    pop         esi
 005C829E    pop         ebx
 005C829F    ret
end;*}

//005C82A0
procedure sub_005C82A0(?:TScreen);
begin
{*
 005C82A0    push        ebx
 005C82A1    push        esi
 005C82A2    push        edi
 005C82A3    push        ebp
 005C82A4    mov         ebp,eax
 005C82A6    mov         ebx,dword ptr [ebp+0B8];TScreen.FCursorList:PCursorRec
 005C82AC    test        ebx,ebx
>005C82AE    je          005C82DE
 005C82B0    mov         esi,dword ptr [ebx+4]
 005C82B3    cmp         esi,0FFFFFFEF
>005C82B6    jl          005C82BD
 005C82B8    cmp         esi,0FFFFFFF4
>005C82BB    jle         005C82C6
 005C82BD    cmp         esi,0FFFFFFEB
>005C82C0    je          005C82C6
 005C82C2    test        esi,esi
>005C82C4    jle         005C82CF
 005C82C6    mov         eax,dword ptr [ebx+8]
 005C82C9    push        eax
 005C82CA    call        user32.DestroyCursor
 005C82CF    mov         edi,dword ptr [ebx]
 005C82D1    mov         eax,ebx
 005C82D3    call        @FreeMem
 005C82D8    mov         ebx,edi
 005C82DA    test        ebx,ebx
>005C82DC    jne         005C82B0
 005C82DE    push        7F00
 005C82E3    push        0
 005C82E5    call        user32.LoadCursorW
 005C82EA    mov         edx,dword ptr [ebp+0BC];TScreen.FDefaultCursor:HICON
 005C82F0    cmp         eax,edx
>005C82F2    je          005C82FA
 005C82F4    push        edx
 005C82F5    call        user32.DestroyCursor
 005C82FA    pop         ebp
 005C82FB    pop         edi
 005C82FC    pop         esi
 005C82FD    pop         ebx
 005C82FE    ret
*}
end;

//005C8300
procedure sub_005C8300(?:TScreen; ?:Integer);
begin
{*
 005C8300    push        ebx
 005C8301    push        esi
 005C8302    push        edi
 005C8303    mov         edi,eax
 005C8305    mov         ebx,dword ptr [edi+0B8]
 005C830B    xor         esi,esi
>005C830D    jmp         005C8313
 005C830F    mov         esi,ebx
 005C8311    mov         ebx,dword ptr [ebx]
 005C8313    test        ebx,ebx
>005C8315    je          005C831C
 005C8317    cmp         edx,dword ptr [ebx+4]
>005C831A    jne         005C830F
 005C831C    test        ebx,ebx
>005C831E    je          005C8342
 005C8320    mov         eax,dword ptr [ebx+8]
 005C8323    push        eax
 005C8324    call        user32.DestroyCursor
 005C8329    test        esi,esi
>005C832B    jne         005C8337
 005C832D    mov         eax,dword ptr [ebx]
 005C832F    mov         dword ptr [edi+0B8],eax
>005C8335    jmp         005C833B
 005C8337    mov         eax,dword ptr [ebx]
 005C8339    mov         dword ptr [esi],eax
 005C833B    mov         eax,ebx
 005C833D    call        @FreeMem
 005C8342    pop         edi
 005C8343    pop         esi
 005C8344    pop         ebx
 005C8345    ret
*}
end;

//005C8348
{*function sub_005C8348(?:?):?;
begin
 005C8348    push        ebp
 005C8349    mov         ebp,esp
 005C834B    push        ebx
 005C834C    push        esi
 005C834D    push        edi
 005C834E    xor         edi,edi
 005C8350    mov         eax,dword ptr [ebp+8]
 005C8353    mov         eax,dword ptr [eax-4]
 005C8356    call        TScreen.GetMonitorCount
 005C835B    mov         esi,eax
 005C835D    dec         esi
 005C835E    test        esi,esi
>005C8360    jl          005C8392
 005C8362    inc         esi
 005C8363    xor         ebx,ebx
 005C8365    mov         eax,dword ptr [ebp+8]
 005C8368    mov         eax,dword ptr [eax-4]
 005C836B    mov         edx,ebx
 005C836D    call        TScreen.GetMonitor
 005C8372    mov         eax,dword ptr [eax+4];TMonitor.FHandle:HMONITOR
 005C8375    mov         edx,dword ptr [ebp+8]
 005C8378    cmp         eax,dword ptr [edx-8]
>005C837B    jne         005C838E
 005C837D    mov         eax,dword ptr [ebp+8]
 005C8380    mov         eax,dword ptr [eax-4]
 005C8383    mov         edx,ebx
 005C8385    call        TScreen.GetMonitor
 005C838A    mov         edi,eax
>005C838C    jmp         005C8392
 005C838E    inc         ebx
 005C838F    dec         esi
>005C8390    jne         005C8365
 005C8392    mov         eax,edi
 005C8394    pop         edi
 005C8395    pop         esi
 005C8396    pop         ebx
 005C8397    pop         ebp
 005C8398    ret
end;*}

//005C839C
procedure sub_005C839C(?:TScreen; ?:HMONITOR);
begin
{*
 005C839C    push        ebp
 005C839D    mov         ebp,esp
 005C839F    add         esp,0FFFFFFF8
 005C83A2    mov         dword ptr [ebp-8],edx
 005C83A5    mov         dword ptr [ebp-4],eax
 005C83A8    push        ebp
 005C83A9    call        005C8348
 005C83AE    pop         ecx
 005C83AF    test        eax,eax
>005C83B1    jne         005C83C2
 005C83B3    mov         eax,dword ptr [ebp-4]
 005C83B6    call        TScreen.GetMonitors
 005C83BB    push        ebp
 005C83BC    call        005C8348
 005C83C1    pop         ecx
 005C83C2    pop         ecx
 005C83C3    pop         ecx
 005C83C4    pop         ebp
 005C83C5    ret
*}
end;

//005C83C8
procedure sub_005C83C8(?:TScreen; ?:Integer; ?:HICON);
begin
{*
 005C83C8    push        ebx
 005C83C9    push        esi
 005C83CA    push        edi
 005C83CB    mov         edi,ecx
 005C83CD    mov         esi,edx
 005C83CF    mov         ebx,eax
 005C83D1    mov         eax,0C
 005C83D6    call        @GetMem
 005C83DB    mov         edx,dword ptr [ebx+0B8]
 005C83E1    mov         dword ptr [eax],edx
 005C83E3    mov         dword ptr [eax+4],esi
 005C83E6    mov         dword ptr [eax+8],edi
 005C83E9    mov         dword ptr [ebx+0B8],eax
 005C83EF    pop         edi
 005C83F0    pop         esi
 005C83F1    pop         ebx
 005C83F2    ret
*}
end;

//005C83F4
{*function sub_005C83F4(?:TScreen):?;
begin
 005C83F4    push        ebp
 005C83F5    mov         ebp,esp
 005C83F7    add         esp,0FFFFFC60
 005C83FD    push        ebx
 005C83FE    xor         edx,edx
 005C8400    mov         dword ptr [ebp-3A0],edx
 005C8406    mov         dword ptr [ebp-4],eax
 005C8409    xor         eax,eax
 005C840B    push        ebp
 005C840C    push        5C859F
 005C8411    push        dword ptr fs:[eax]
 005C8414    mov         dword ptr fs:[eax],esp
 005C8417    mov         eax,dword ptr [ebp-4]
 005C841A    cmp         dword ptr [eax+44],0;TScreen.FImes:TStrings
>005C841E    jne         005C8580
 005C8424    mov         dl,1
 005C8426    mov         eax,[0046F9A0];TStringList
 005C842B    call        TStringList.Create;TStringList.Create
 005C8430    mov         edx,dword ptr [ebp-4]
 005C8433    mov         dword ptr [edx+44],eax;TScreen.FImes:TStrings
 005C8436    mov         eax,dword ptr [ebp-4]
 005C8439    add         eax,48;TScreen.FDefaultIme:string
 005C843C    call        @UStrClr
 005C8441    lea         eax,[ebp-114]
 005C8447    push        eax
 005C8448    push        40
 005C844A    call        user32.GetKeyboardLayoutList
 005C844F    dec         eax
 005C8450    test        eax,eax
>005C8452    jl          005C856F
 005C8458    inc         eax
 005C8459    mov         dword ptr [ebp-10],eax
 005C845C    lea         eax,[ebp-114]
 005C8462    mov         dword ptr [ebp-14],eax
 005C8465    mov         eax,dword ptr [ebp-14]
 005C8468    mov         eax,dword ptr [eax]
 005C846A    call        004F6684
 005C846F    test        al,al
>005C8471    je          005C8562
 005C8477    lea         eax,[ebp-0C]
 005C847A    push        eax
 005C847B    push        20019
 005C8480    push        0
 005C8482    push        0
 005C8484    mov         eax,dword ptr [ebp-14]
 005C8487    mov         eax,dword ptr [eax]
 005C8489    mov         dword ptr [ebp-39C],eax
 005C848F    mov         byte ptr [ebp-398],0
 005C8496    lea         ecx,[ebp-39C]
 005C849C    mov         edx,5C85B0
 005C84A1    lea         eax,[ebp-394]
 005C84A7    call        StrFmt
 005C84AC    push        eax
 005C84AD    push        80000002
 005C84B2    call        advapi32.RegOpenKeyExW
 005C84B7    test        eax,eax
>005C84B9    jne         005C8562
 005C84BF    xor         eax,eax
 005C84C1    push        ebp
 005C84C2    push        5C855B
 005C84C7    push        dword ptr fs:[eax]
 005C84CA    mov         dword ptr fs:[eax],esp
 005C84CD    mov         dword ptr [ebp-8],200
 005C84D4    lea         eax,[ebp-8]
 005C84D7    push        eax
 005C84D8    lea         eax,[ebp-314]
 005C84DE    push        eax
 005C84DF    push        0
 005C84E1    push        0
 005C84E3    push        5C8620;'layout text'
 005C84E8    mov         eax,dword ptr [ebp-0C]
 005C84EB    push        eax
 005C84EC    call        advapi32.RegQueryValueExW
 005C84F1    test        eax,eax
>005C84F3    jne         005C8544
 005C84F5    lea         eax,[ebp-3A0]
 005C84FB    lea         edx,[ebp-314]
 005C8501    mov         ecx,100
 005C8506    call        @UStrFromWArray
 005C850B    mov         edx,dword ptr [ebp-3A0]
 005C8511    mov         eax,dword ptr [ebp-14]
 005C8514    mov         ecx,dword ptr [eax]
 005C8516    mov         eax,dword ptr [ebp-4]
 005C8519    mov         eax,dword ptr [eax+44];TScreen.FImes:TStrings
 005C851C    mov         ebx,dword ptr [eax]
 005C851E    call        dword ptr [ebx+40];TStrings.AddObject
 005C8521    mov         eax,dword ptr [ebp-14]
 005C8524    mov         eax,dword ptr [eax]
 005C8526    mov         edx,dword ptr [ebp-4]
 005C8529    cmp         eax,dword ptr [edx+4C];TScreen.FDefaultKbLayout:HKL
>005C852C    jne         005C8544
 005C852E    mov         eax,dword ptr [ebp-4]
 005C8531    add         eax,48;TScreen.FDefaultIme:string
 005C8534    lea         edx,[ebp-314]
 005C853A    mov         ecx,100
 005C853F    call        @UStrFromWArray
 005C8544    xor         eax,eax
 005C8546    pop         edx
 005C8547    pop         ecx
 005C8548    pop         ecx
 005C8549    mov         dword ptr fs:[eax],edx
 005C854C    push        5C8562
 005C8551    mov         eax,dword ptr [ebp-0C]
 005C8554    push        eax
 005C8555    call        advapi32.RegCloseKey
 005C855A    ret
>005C855B    jmp         @HandleFinally
>005C8560    jmp         005C8551
 005C8562    add         dword ptr [ebp-14],4
 005C8566    dec         dword ptr [ebp-10]
>005C8569    jne         005C8465
 005C856F    mov         eax,dword ptr [ebp-4]
 005C8572    mov         eax,dword ptr [eax+44];TScreen.FImes:TStrings
 005C8575    mov         byte ptr [eax+39],0
 005C8579    mov         dl,1
 005C857B    call        TStringList.SetSorted
 005C8580    mov         eax,dword ptr [ebp-4]
 005C8583    mov         ebx,dword ptr [eax+44];TScreen.FImes:TStrings
 005C8586    xor         eax,eax
 005C8588    pop         edx
 005C8589    pop         ecx
 005C858A    pop         ecx
 005C858B    mov         dword ptr fs:[eax],edx
 005C858E    push        5C85A6
 005C8593    lea         eax,[ebp-3A0]
 005C8599    call        @UStrClr
 005C859E    ret
>005C859F    jmp         @HandleFinally
>005C85A4    jmp         005C8593
 005C85A6    mov         eax,ebx
 005C85A8    pop         ebx
 005C85A9    mov         esp,ebp
 005C85AB    pop         ebp
 005C85AC    ret
end;*}

//005C8638
{*procedure sub_005C8638(?:TScreen; ?:?);
begin
 005C8638    push        ebx
 005C8639    push        esi
 005C863A    mov         esi,edx
 005C863C    mov         ebx,eax
 005C863E    mov         eax,ebx
 005C8640    call        005C83F4
 005C8645    mov         eax,esi
 005C8647    mov         edx,dword ptr [ebx+48];TScreen.FDefaultIme:string
 005C864A    call        @UStrAsg
 005C864F    pop         esi
 005C8650    pop         ebx
 005C8651    ret
end;*}

//005C8654
{*procedure sub_005C8654(?:?; ?:?);
begin
 005C8654    push        ebx
 005C8655    push        esi
 005C8656    mov         esi,edx
 005C8658    mov         ebx,eax
 005C865A    push        0
 005C865C    xor         ecx,ecx
 005C865E    mov         dx,0B035
 005C8662    mov         eax,[007CA7C8];Application:TApplication
 005C8667    call        005CC120
 005C866C    cmp         esi,dword ptr [ebx+88]
>005C8672    jne         005C86A3
 005C8674    cmp         dword ptr ds:[7CA7C8],0;Application:TApplication
>005C867B    je          005C86A3
 005C867D    mov         eax,[007CA7C8];Application:TApplication
 005C8682    cmp         byte ptr [eax+9C],0
>005C8689    je          005C86A3
 005C868B    xor         edx,edx
 005C868D    mov         eax,[007CA7C8];Application:TApplication
 005C8692    call        TApplication.SetShowHint
 005C8697    mov         dl,1
 005C8699    mov         eax,[007CA7C8];Application:TApplication
 005C869E    call        TApplication.SetShowHint
 005C86A3    pop         esi
 005C86A4    pop         ebx
 005C86A5    ret
end;*}

//005C86A8
function TScreen.GetDataModule(Index:Integer):TDataModule;
begin
{*
 005C86A8    push        ebx
 005C86A9    push        esi
 005C86AA    mov         esi,edx
 005C86AC    mov         ebx,eax
 005C86AE    mov         edx,esi
 005C86B0    mov         eax,dword ptr [ebx+64]
 005C86B3    call        TList.Get
 005C86B8    pop         esi
 005C86B9    pop         ebx
 005C86BA    ret
*}
end;

//005C86BC
function TScreen.GetDataModuleCount:Integer;
begin
{*
 005C86BC    mov         eax,dword ptr [eax+64]
 005C86BF    mov         eax,dword ptr [eax+8]
 005C86C2    ret
*}
end;

//005C86C4
function TScreen.GetCursors(Index:Integer):HICON;
begin
{*
 005C86C4    xor         ecx,ecx
 005C86C6    cmp         edx,0FFFFFFFF
>005C86C9    je          005C86ED
 005C86CB    mov         ecx,dword ptr [eax+0B8];TScreen.FCursorList:PCursorRec
>005C86D1    jmp         005C86D5
 005C86D3    mov         ecx,dword ptr [ecx]
 005C86D5    test        ecx,ecx
>005C86D7    je          005C86DE
 005C86D9    cmp         edx,dword ptr [ecx+4]
>005C86DC    jne         005C86D3
 005C86DE    test        ecx,ecx
>005C86E0    jne         005C86EA
 005C86E2    mov         ecx,dword ptr [eax+0BC];TScreen.FDefaultCursor:HICON
>005C86E8    jmp         005C86ED
 005C86EA    mov         ecx,dword ptr [ecx+8]
 005C86ED    mov         eax,ecx
 005C86EF    ret
*}
end;

//005C86F0
procedure sub_005C86F0(?:TScreen; ?:TCursor);
begin
{*
 005C86F0    push        ebx
 005C86F1    push        esi
 005C86F2    push        edi
 005C86F3    push        ebp
 005C86F4    add         esp,0FFFFFFF0
 005C86F7    mov         esi,edx
 005C86F9    mov         ebx,eax
 005C86FB    cmp         si,word ptr [ebx+54];TScreen.FCursor:TCursor
>005C86FF    je          005C878D
 005C8705    mov         word ptr [ebx+54],si;TScreen.FCursor:TCursor
 005C8709    test        si,si
>005C870C    jne         005C877D
 005C870E    push        esp
 005C870F    call        user32.GetCursorPos
 005C8714    push        dword ptr [esp+4]
 005C8718    push        dword ptr [esp+4]
 005C871C    call        user32.WindowFromPoint
 005C8721    mov         edi,eax
 005C8723    test        edi,edi
>005C8725    je          005C877D
 005C8727    push        0
 005C8729    push        edi
 005C872A    call        user32.GetWindowThreadProcessId
 005C872F    mov         ebp,eax
 005C8731    call        kernel32.GetCurrentThreadId
 005C8736    cmp         ebp,eax
>005C8738    jne         005C877D
 005C873A    mov         eax,dword ptr [esp]
 005C873D    mov         dword ptr [esp+8],eax
 005C8741    mov         eax,dword ptr [esp+4]
 005C8745    mov         dword ptr [esp+0C],eax
 005C8749    mov         eax,dword ptr [esp+8]
 005C874D    and         eax,0FFFF
 005C8752    mov         edx,dword ptr [esp+0C]
 005C8756    shl         edx,10
 005C8759    or          eax,edx
 005C875B    push        eax
 005C875C    push        0
 005C875E    push        84
 005C8763    push        edi
 005C8764    call        user32.SendMessageW
 005C8769    movzx       eax,ax
 005C876C    or          eax,2000000
 005C8771    push        eax
 005C8772    push        edi
 005C8773    push        20
 005C8775    push        edi
 005C8776    call        user32.SendMessageW
>005C877B    jmp         005C8790
 005C877D    movsx       edx,si
 005C8780    mov         eax,ebx
 005C8782    call        TScreen.GetCursors
 005C8787    push        eax
 005C8788    call        user32.SetCursor
 005C878D    inc         dword ptr [ebx+58];TScreen.FCursorCount:Integer
 005C8790    add         esp,10
 005C8793    pop         ebp
 005C8794    pop         edi
 005C8795    pop         esi
 005C8796    pop         ebx
 005C8797    ret
*}
end;

//005C8798
procedure TScreen.SetCursors(Index:Integer; Handle:HICON);
begin
{*
 005C8798    push        ebx
 005C8799    push        esi
 005C879A    push        edi
 005C879B    mov         edi,ecx
 005C879D    mov         esi,edx
 005C879F    mov         ebx,eax
 005C87A1    test        esi,esi
>005C87A3    jne         005C87C5
 005C87A5    test        edi,edi
>005C87A7    jne         005C87BD
 005C87A9    push        7F00
 005C87AE    push        0
 005C87B0    call        user32.LoadCursorW
 005C87B5    mov         dword ptr [ebx+0BC],eax;TScreen.FDefaultCursor:HICON
>005C87BB    jmp         005C87E2
 005C87BD    mov         dword ptr [ebx+0BC],edi;TScreen.FDefaultCursor:HICON
>005C87C3    jmp         005C87E2
 005C87C5    cmp         esi,0FFFFFFFF
>005C87C8    je          005C87E2
 005C87CA    mov         edx,esi
 005C87CC    mov         eax,ebx
 005C87CE    call        005C8300
 005C87D3    test        edi,edi
>005C87D5    je          005C87E2
 005C87D7    mov         ecx,edi
 005C87D9    mov         edx,esi
 005C87DB    mov         eax,ebx
 005C87DD    call        005C83C8
 005C87E2    pop         edi
 005C87E3    pop         esi
 005C87E4    pop         ebx
 005C87E5    ret
*}
end;

//005C8824
{*procedure sub_005C8824(?:?);
begin
 005C8824    push        ebp
 005C8825    mov         ebp,esp
 005C8827    add         esp,0FFFFFDA8
 005C882D    push        ebx
 005C882E    push        esi
 005C882F    mov         ebx,eax
 005C8831    mov         byte ptr [ebp-1],0
 005C8835    cmp         dword ptr ds:[7CA7C8],0;Application:TApplication
>005C883C    je          005C884D
 005C883E    mov         eax,[007CA7C8];Application:TApplication
 005C8843    movzx       eax,byte ptr [eax+9C]
 005C884A    mov         byte ptr [ebp-1],al
 005C884D    xor         eax,eax
 005C884F    push        ebp
 005C8850    push        5C89DD
 005C8855    push        dword ptr fs:[eax]
 005C8858    mov         dword ptr fs:[eax],esp
 005C885B    cmp         dword ptr ds:[7CA7C8],0;Application:TApplication
>005C8862    je          005C8870
 005C8864    xor         edx,edx
 005C8866    mov         eax,[007CA7C8];Application:TApplication
 005C886B    call        TApplication.SetShowHint
 005C8870    mov         esi,5C
 005C8875    push        0
 005C8877    lea         eax,[ebp-60]
 005C887A    push        eax
 005C887B    push        esi
 005C887C    push        1F
 005C887E    call        user32.SystemParametersInfoW
 005C8883    test        eax,eax
>005C8885    je          005C889F
 005C8887    lea         eax,[ebp-60]
 005C888A    push        eax
 005C888B    call        gdi32.CreateFontIndirectW
 005C8890    mov         edx,eax
 005C8892    mov         eax,dword ptr [ebx+8C]
 005C8898    call        TFont.SetHandle
>005C889D    jmp         005C88B3
 005C889F    push        0D
 005C88A1    call        gdi32.GetStockObject
 005C88A6    mov         edx,eax
 005C88A8    mov         eax,dword ptr [ebx+8C]
 005C88AE    call        TFont.SetHandle
 005C88B3    call        tagNONCLIENTMETRICSW.SizeOf
 005C88B8    mov         esi,eax
 005C88BA    mov         dword ptr [ebp-258],esi
 005C88C0    push        0
 005C88C2    lea         eax,[ebp-258]
 005C88C8    push        eax
 005C88C9    push        0
 005C88CB    push        29
 005C88CD    call        user32.SystemParametersInfoW
 005C88D2    test        eax,eax
>005C88D4    je          005C893C
 005C88D6    lea         eax,[ebp-11C]
 005C88DC    push        eax
 005C88DD    call        gdi32.CreateFontIndirectW
 005C88E2    mov         edx,eax
 005C88E4    mov         eax,dword ptr [ebx+88]
 005C88EA    call        TFont.SetHandle
 005C88EF    lea         eax,[ebp-178]
 005C88F5    push        eax
 005C88F6    call        gdi32.CreateFontIndirectW
 005C88FB    mov         edx,eax
 005C88FD    mov         eax,dword ptr [ebx+90]
 005C8903    call        TFont.SetHandle
 005C8908    lea         eax,[ebp-0C0]
 005C890E    push        eax
 005C890F    call        gdi32.CreateFontIndirectW
 005C8914    mov         edx,eax
 005C8916    mov         eax,dword ptr [ebx+94]
 005C891C    call        TFont.SetHandle
 005C8921    lea         eax,[ebp-240]
 005C8927    push        eax
 005C8928    call        gdi32.CreateFontIndirectW
 005C892D    mov         edx,eax
 005C892F    mov         eax,dword ptr [ebx+98]
 005C8935    call        TFont.SetHandle
>005C893A    jmp         005C8988
 005C893C    mov         eax,dword ptr [ebx+88]
 005C8942    mov         edx,8
 005C8947    call        TFont.SetSize
 005C894C    push        0D
 005C894E    call        gdi32.GetStockObject
 005C8953    mov         edx,eax
 005C8955    mov         eax,dword ptr [ebx+90]
 005C895B    call        TFont.SetHandle
 005C8960    push        0D
 005C8962    call        gdi32.GetStockObject
 005C8967    mov         edx,eax
 005C8969    mov         eax,dword ptr [ebx+94]
 005C896F    call        TFont.SetHandle
 005C8974    push        0D
 005C8976    call        gdi32.GetStockObject
 005C897B    mov         edx,eax
 005C897D    mov         eax,dword ptr [ebx+98]
 005C8983    call        TFont.SetHandle
 005C8988    mov         eax,dword ptr [ebx+88]
 005C898E    mov         edx,0FF000017
 005C8993    call        TFont.SetColor
 005C8998    mov         eax,dword ptr [ebx+90]
 005C899E    mov         edx,0FF000007
 005C89A3    call        TFont.SetColor
 005C89A8    mov         eax,dword ptr [ebx+94]
 005C89AE    mov         edx,0FF000008
 005C89B3    call        TFont.SetColor
 005C89B8    xor         eax,eax
 005C89BA    pop         edx
 005C89BB    pop         ecx
 005C89BC    pop         ecx
 005C89BD    mov         dword ptr fs:[eax],edx
 005C89C0    push        5C89E4
 005C89C5    cmp         dword ptr ds:[7CA7C8],0;Application:TApplication
>005C89CC    je          005C89DC
 005C89CE    movzx       edx,byte ptr [ebp-1]
 005C89D2    mov         eax,[007CA7C8];Application:TApplication
 005C89D7    call        TApplication.SetShowHint
 005C89DC    ret
>005C89DD    jmp         @HandleFinally
>005C89E2    jmp         005C89C5
 005C89E4    pop         esi
 005C89E5    pop         ebx
 005C89E6    mov         esp,ebp
 005C89E8    pop         ebp
 005C89E9    ret
end;*}

//005C89EC
procedure TScreen.DisableAlign;
begin
{*
 005C89EC    inc         word ptr [eax+9C];TScreen.FAlignLevel:Word
 005C89F3    ret
*}
end;

//005C89F4
procedure TScreen.EnableAlign;
begin
{*
 005C89F4    dec         word ptr [eax+9C];TScreen.FAlignLevel:Word
 005C89FB    cmp         word ptr [eax+9C],0;TScreen.FAlignLevel:Word
>005C8A03    jne         005C8A13
 005C8A05    test        byte ptr [eax+9E],10;TScreen.FControlState:TControlState
>005C8A0C    je          005C8A13
 005C8A0E    call        TScreen.Realign
 005C8A13    ret
*}
end;

//005C8A14
procedure TScreen.Realign;
begin
{*
 005C8A14    xor         edx,edx
 005C8A16    call        005C8E8C
 005C8A1B    ret
*}
end;

//005C8A1C
{*function sub_005C8A1C(?:TCustomForm; ?:Pointer; ?:?):Boolean;
begin
 005C8A1C    push        ebx
 005C8A1D    push        esi
 005C8A1E    push        edi
 005C8A1F    mov         edi,edx
 005C8A21    mov         esi,eax
 005C8A23    xor         eax,eax
 005C8A25    dec         cl
>005C8A27    je          005C8A37
 005C8A29    dec         cl
>005C8A2B    je          005C8A4E
 005C8A2D    dec         cl
>005C8A2F    je          005C8A6B
 005C8A31    dec         cl
>005C8A33    je          005C8A82
>005C8A35    jmp         005C8A9D
 005C8A37    mov         eax,esi
 005C8A39    call        TCustomForm.GetTop
 005C8A3E    mov         ebx,eax
 005C8A40    mov         eax,edi
 005C8A42    call        TCustomForm.GetTop
 005C8A47    cmp         ebx,eax
 005C8A49    setl        al
>005C8A4C    jmp         005C8A9D
 005C8A4E    mov         eax,edi
 005C8A50    call        TCustomForm.GetTop
 005C8A55    mov         ebx,eax
 005C8A57    add         ebx,dword ptr [edi+5C]
 005C8A5A    mov         eax,esi
 005C8A5C    call        TCustomForm.GetTop
 005C8A61    add         eax,dword ptr [esi+5C]
 005C8A64    cmp         ebx,eax
 005C8A66    setl        al
>005C8A69    jmp         005C8A9D
 005C8A6B    mov         eax,esi
 005C8A6D    call        TCustomForm.GetLeft
 005C8A72    mov         ebx,eax
 005C8A74    mov         eax,edi
 005C8A76    call        TCustomForm.GetLeft
 005C8A7B    cmp         ebx,eax
 005C8A7D    setl        al
>005C8A80    jmp         005C8A9D
 005C8A82    mov         eax,edi
 005C8A84    call        TCustomForm.GetLeft
 005C8A89    mov         ebx,eax
 005C8A8B    add         ebx,dword ptr [edi+58]
 005C8A8E    mov         eax,esi
 005C8A90    call        TCustomForm.GetLeft
 005C8A95    add         eax,dword ptr [esi+58]
 005C8A98    cmp         ebx,eax
 005C8A9A    setl        al
 005C8A9D    pop         edi
 005C8A9E    pop         esi
 005C8A9F    pop         ebx
 005C8AA0    ret
end;*}

//005C8AA4
{*procedure sub_005C8AA4(?:Pointer; ?:?; ?:?);
begin
 005C8AA4    push        ebp
 005C8AA5    mov         ebp,esp
 005C8AA7    add         esp,0FFFFFFF0
 005C8AAA    push        ebx
 005C8AAB    push        esi
 005C8AAC    push        edi
 005C8AAD    mov         byte ptr [ebp-1],dl
 005C8AB0    mov         ebx,eax
 005C8AB2    mov         eax,dword ptr [ebp+8]
 005C8AB5    mov         esi,dword ptr [eax-4]
 005C8AB8    mov         esi,dword ptr [esi+8]
 005C8ABB    mov         eax,dword ptr [ebp+8]
 005C8ABE    mov         eax,dword ptr [eax-4]
 005C8AC1    sub         esi,dword ptr [eax]
 005C8AC3    test        esi,esi
>005C8AC5    jl          005C8AD1
 005C8AC7    movzx       eax,byte ptr [ebp-1]
 005C8ACB    add         al,0FD
 005C8ACD    sub         al,2
>005C8ACF    jae         005C8AD4
 005C8AD1    mov         esi,dword ptr [ebx+58]
 005C8AD4    mov         eax,dword ptr [ebp+8]
 005C8AD7    mov         eax,dword ptr [eax-4]
 005C8ADA    mov         eax,dword ptr [eax+0C]
 005C8ADD    mov         edx,dword ptr [ebp+8]
 005C8AE0    mov         edx,dword ptr [edx-4]
 005C8AE3    sub         eax,dword ptr [edx+4]
 005C8AE6    mov         dword ptr [ebp-10],eax
 005C8AE9    cmp         dword ptr [ebp-10],0
>005C8AED    jl          005C8AF8
 005C8AEF    movzx       eax,byte ptr [ebp-1]
 005C8AF3    dec         eax
 005C8AF4    sub         al,2
>005C8AF6    jae         005C8AFE
 005C8AF8    mov         eax,dword ptr [ebx+5C]
 005C8AFB    mov         dword ptr [ebp-10],eax
 005C8AFE    cmp         byte ptr [ebp-1],1
>005C8B02    jne         005C8B2C
 005C8B04    cmp         byte ptr [ebx+2BE],2
>005C8B0B    jne         005C8B2C
 005C8B0D    mov         eax,ebx
 005C8B0F    call        TCustomForm.GetLeft
 005C8B14    mov         dword ptr [ebp-8],eax
 005C8B17    mov         eax,ebx
 005C8B19    call        TCustomForm.GetTop
 005C8B1E    mov         dword ptr [ebp-0C],eax
 005C8B21    push        3D
 005C8B23    call        user32.GetSystemMetrics
 005C8B28    mov         esi,eax
>005C8B2A    jmp         005C8B43
 005C8B2C    mov         eax,dword ptr [ebp+8]
 005C8B2F    mov         eax,dword ptr [eax-4]
 005C8B32    mov         eax,dword ptr [eax]
 005C8B34    mov         dword ptr [ebp-8],eax
 005C8B37    mov         eax,dword ptr [ebp+8]
 005C8B3A    mov         eax,dword ptr [eax-4]
 005C8B3D    mov         eax,dword ptr [eax+4]
 005C8B40    mov         dword ptr [ebp-0C],eax
 005C8B43    movzx       eax,byte ptr [ebp-1]
 005C8B47    dec         al
>005C8B49    je          005C8B59
 005C8B4B    dec         al
>005C8B4D    je          005C8B67
 005C8B4F    dec         al
>005C8B51    je          005C8B81
 005C8B53    dec         al
>005C8B55    je          005C8B8B
>005C8B57    jmp         005C8BA0
 005C8B59    mov         eax,dword ptr [ebp+8]
 005C8B5C    mov         eax,dword ptr [eax-4]
 005C8B5F    mov         edx,dword ptr [ebp-10]
 005C8B62    add         dword ptr [eax+4],edx
>005C8B65    jmp         005C8BA0
 005C8B67    mov         eax,dword ptr [ebp+8]
 005C8B6A    mov         eax,dword ptr [eax-4]
 005C8B6D    mov         edx,dword ptr [ebp-10]
 005C8B70    sub         dword ptr [eax+0C],edx
 005C8B73    mov         eax,dword ptr [ebp+8]
 005C8B76    mov         eax,dword ptr [eax-4]
 005C8B79    mov         eax,dword ptr [eax+0C]
 005C8B7C    mov         dword ptr [ebp-0C],eax
>005C8B7F    jmp         005C8BA0
 005C8B81    mov         eax,dword ptr [ebp+8]
 005C8B84    mov         eax,dword ptr [eax-4]
 005C8B87    add         dword ptr [eax],esi
>005C8B89    jmp         005C8BA0
 005C8B8B    mov         eax,dword ptr [ebp+8]
 005C8B8E    mov         eax,dword ptr [eax-4]
 005C8B91    sub         dword ptr [eax+8],esi
 005C8B94    mov         eax,dword ptr [ebp+8]
 005C8B97    mov         eax,dword ptr [eax-4]
 005C8B9A    mov         eax,dword ptr [eax+8]
 005C8B9D    mov         dword ptr [ebp-8],eax
 005C8BA0    push        esi
 005C8BA1    mov         eax,dword ptr [ebp-10]
 005C8BA4    push        eax
 005C8BA5    mov         ecx,dword ptr [ebp-0C]
 005C8BA8    mov         edx,dword ptr [ebp-8]
 005C8BAB    mov         eax,ebx
 005C8BAD    mov         edi,dword ptr [eax]
 005C8BAF    call        dword ptr [edi+0B0]
 005C8BB5    cmp         byte ptr [ebx+2BE],2
>005C8BBC    jne         005C8BC7
 005C8BBE    sub         esi,dword ptr [ebp-8]
 005C8BC1    mov         eax,dword ptr [ebp-0C]
 005C8BC4    sub         dword ptr [ebp-10],eax
 005C8BC7    mov         eax,dword ptr [ebx+58]
 005C8BCA    cmp         esi,eax
>005C8BCC    jne         005C8BD6
 005C8BCE    mov         edx,dword ptr [ebx+5C]
 005C8BD1    cmp         edx,dword ptr [ebp-10]
>005C8BD4    je          005C8C53
 005C8BD6    movzx       edx,byte ptr [ebp-1]
 005C8BDA    cmp         edx,5
>005C8BDD    ja          005C8C53
 005C8BDF    jmp         dword ptr [edx*4+5C8BE6]
 005C8BDF    dd          005C8C53
 005C8BDF    dd          005C8BFE
 005C8BDF    dd          005C8C0F
 005C8BDF    dd          005C8C20
 005C8BDF    dd          005C8C2C
 005C8BDF    dd          005C8C39
 005C8BFE    mov         eax,dword ptr [ebp-10]
 005C8C01    sub         eax,dword ptr [ebx+5C]
 005C8C04    mov         edx,dword ptr [ebp+8]
 005C8C07    mov         edx,dword ptr [edx-4]
 005C8C0A    sub         dword ptr [edx+4],eax
>005C8C0D    jmp         005C8C53
 005C8C0F    mov         eax,dword ptr [ebp-10]
 005C8C12    sub         eax,dword ptr [ebx+5C]
 005C8C15    mov         edx,dword ptr [ebp+8]
 005C8C18    mov         edx,dword ptr [edx-4]
 005C8C1B    add         dword ptr [edx+0C],eax
>005C8C1E    jmp         005C8C53
 005C8C20    sub         esi,eax
 005C8C22    mov         eax,dword ptr [ebp+8]
 005C8C25    mov         eax,dword ptr [eax-4]
 005C8C28    sub         dword ptr [eax],esi
>005C8C2A    jmp         005C8C53
 005C8C2C    sub         esi,eax
 005C8C2E    mov         eax,dword ptr [ebp+8]
 005C8C31    mov         eax,dword ptr [eax-4]
 005C8C34    add         dword ptr [eax+8],esi
>005C8C37    jmp         005C8C53
 005C8C39    sub         esi,eax
 005C8C3B    mov         eax,dword ptr [ebp+8]
 005C8C3E    mov         eax,dword ptr [eax-4]
 005C8C41    add         dword ptr [eax+8],esi
 005C8C44    mov         eax,dword ptr [ebp-10]
 005C8C47    sub         eax,dword ptr [ebx+5C]
 005C8C4A    mov         edx,dword ptr [ebp+8]
 005C8C4D    mov         edx,dword ptr [edx-4]
 005C8C50    add         dword ptr [edx+0C],eax
 005C8C53    pop         edi
 005C8C54    pop         esi
 005C8C55    pop         ebx
 005C8C56    mov         esp,ebp
 005C8C58    pop         ebp
 005C8C59    ret
end;*}

//005C8C5C
{*procedure sub_005C8C5C(?:?; ?:?);
begin
 005C8C5C    push        ebp
 005C8C5D    mov         ebp,esp
 005C8C5F    add         esp,0FFFFFFF8
 005C8C62    push        ebx
 005C8C63    push        esi
 005C8C64    push        edi
 005C8C65    mov         byte ptr [ebp-1],al
 005C8C68    mov         eax,dword ptr [ebp+8]
 005C8C6B    mov         eax,dword ptr [eax-8]
 005C8C6E    mov         edx,dword ptr [eax]
 005C8C70    call        dword ptr [edx+8]
 005C8C73    mov         eax,dword ptr [ebp+8]
 005C8C76    cmp         dword ptr [eax-0C],0
>005C8C7A    je          005C8CCF
 005C8C7C    mov         eax,dword ptr [ebp+8]
 005C8C7F    mov         eax,dword ptr [eax-0C]
 005C8C82    cmp         dword ptr [eax+40],0
>005C8C86    jne         005C8CCF
 005C8C88    mov         eax,dword ptr [ebp+8]
 005C8C8B    mov         eax,dword ptr [eax-0C]
 005C8C8E    test        byte ptr [eax+1C],10
>005C8C92    jne         005C8CCF
 005C8C94    mov         eax,dword ptr [ebp+8]
 005C8C97    mov         eax,dword ptr [eax-0C]
 005C8C9A    cmp         byte ptr [eax+69],0
>005C8C9E    je          005C8CCF
 005C8CA0    mov         eax,dword ptr [ebp+8]
 005C8CA3    mov         eax,dword ptr [eax-0C]
 005C8CA6    movzx       eax,byte ptr [eax+6D]
 005C8CAA    cmp         al,byte ptr [ebp-1]
>005C8CAD    jne         005C8CCF
 005C8CAF    mov         eax,dword ptr [ebp+8]
 005C8CB2    mov         eax,dword ptr [eax-0C]
 005C8CB5    cmp         byte ptr [eax+2BE],1
>005C8CBC    je          005C8CCF
 005C8CBE    mov         eax,dword ptr [ebp+8]
 005C8CC1    mov         edx,dword ptr [eax-0C]
 005C8CC4    mov         eax,dword ptr [ebp+8]
 005C8CC7    mov         eax,dword ptr [eax-8]
 005C8CCA    call        TList.Add
 005C8CCF    mov         eax,dword ptr [ebp+8]
 005C8CD2    mov         eax,dword ptr [eax-10]
 005C8CD5    call        005C814C
 005C8CDA    mov         edi,eax
 005C8CDC    dec         edi
 005C8CDD    test        edi,edi
>005C8CDF    jl          005C8D6C
 005C8CE5    inc         edi
 005C8CE6    mov         dword ptr [ebp-8],0
 005C8CED    mov         eax,dword ptr [ebp+8]
 005C8CF0    mov         eax,dword ptr [eax-10]
 005C8CF3    mov         edx,dword ptr [ebp-8]
 005C8CF6    call        TScreen.GetCustomForms
 005C8CFB    mov         ebx,eax
 005C8CFD    cmp         dword ptr [ebx+40],0;TCustomForm.FParent:TWinControl
>005C8D01    jne         005C8D66
 005C8D03    movzx       eax,byte ptr [ebx+6D];TCustomForm.FAlign:TAlign
 005C8D07    cmp         al,byte ptr [ebp-1]
>005C8D0A    jne         005C8D66
 005C8D0C    test        byte ptr [ebx+1C],10;TCustomForm.FComponentState:TComponentState
>005C8D10    jne         005C8D66
 005C8D12    cmp         byte ptr [ebx+69],0;TCustomForm.FVisible:Boolean
>005C8D16    je          005C8D66
 005C8D18    cmp         byte ptr [ebx+2BE],1;TCustomForm.FWindowState:TWindowState
>005C8D1F    je          005C8D66
 005C8D21    mov         eax,dword ptr [ebp+8]
 005C8D24    cmp         ebx,dword ptr [eax-0C]
>005C8D27    je          005C8D66
 005C8D29    xor         esi,esi
>005C8D2B    jmp         005C8D2E
 005C8D2D    inc         esi
 005C8D2E    mov         eax,dword ptr [ebp+8]
 005C8D31    mov         eax,dword ptr [eax-8]
 005C8D34    cmp         esi,dword ptr [eax+8]
>005C8D37    jge         005C8D57
 005C8D39    mov         eax,dword ptr [ebp+8]
 005C8D3C    mov         eax,dword ptr [eax-8]
 005C8D3F    mov         edx,esi
 005C8D41    call        TList.Get
 005C8D46    mov         edx,eax
 005C8D48    movzx       ecx,byte ptr [ebp-1]
 005C8D4C    mov         eax,ebx
 005C8D4E    call        005C8A1C
 005C8D53    test        al,al
>005C8D55    je          005C8D2D
 005C8D57    mov         eax,dword ptr [ebp+8]
 005C8D5A    mov         eax,dword ptr [eax-8]
 005C8D5D    mov         ecx,ebx
 005C8D5F    mov         edx,esi
 005C8D61    call        TList.Insert
 005C8D66    inc         dword ptr [ebp-8]
 005C8D69    dec         edi
>005C8D6A    jne         005C8CED
 005C8D6C    mov         eax,dword ptr [ebp+8]
 005C8D6F    mov         eax,dword ptr [eax-8]
 005C8D72    mov         edi,dword ptr [eax+8]
 005C8D75    dec         edi
 005C8D76    test        edi,edi
>005C8D78    jl          005C8DA4
 005C8D7A    inc         edi
 005C8D7B    mov         dword ptr [ebp-8],0
 005C8D82    mov         eax,dword ptr [ebp+8]
 005C8D85    push        eax
 005C8D86    mov         eax,dword ptr [ebp+8]
 005C8D89    mov         eax,dword ptr [eax-8]
 005C8D8C    mov         edx,dword ptr [ebp-8]
 005C8D8F    call        TList.Get
 005C8D94    movzx       edx,byte ptr [ebp-1]
 005C8D98    call        005C8AA4
 005C8D9D    pop         ecx
 005C8D9E    inc         dword ptr [ebp-8]
 005C8DA1    dec         edi
>005C8DA2    jne         005C8D82
 005C8DA4    pop         edi
 005C8DA5    pop         esi
 005C8DA6    pop         ebx
 005C8DA7    pop         ecx
 005C8DA8    pop         ecx
 005C8DA9    pop         ebp
 005C8DAA    ret
end;*}

//005C8DAC
{*function sub_005C8DAC(?:?):?;
begin
 005C8DAC    push        ebp
 005C8DAD    mov         ebp,esp
 005C8DAF    push        ebx
 005C8DB0    push        esi
 005C8DB1    mov         bl,1
 005C8DB3    mov         eax,dword ptr [ebp+8]
 005C8DB6    mov         eax,dword ptr [eax-10]
 005C8DB9    call        005C814C
 005C8DBE    mov         esi,eax
 005C8DC0    dec         esi
 005C8DC1    cmp         esi,0
>005C8DC4    jl          005C8DFA
 005C8DC6    mov         eax,dword ptr [ebp+8]
 005C8DC9    mov         eax,dword ptr [eax-10]
 005C8DCC    mov         edx,esi
 005C8DCE    call        TScreen.GetCustomForms
 005C8DD3    cmp         dword ptr [eax+40],0;TCustomForm.FParent:TWinControl
>005C8DD7    jne         005C8DF4
 005C8DD9    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005C8DDD    jne         005C8DF4
 005C8DDF    cmp         byte ptr [eax+6D],0;TCustomForm.FAlign:TAlign
>005C8DE3    je          005C8DF4
 005C8DE5    cmp         byte ptr [eax+69],0;TCustomForm.FVisible:Boolean
>005C8DE9    je          005C8DF4
 005C8DEB    cmp         byte ptr [eax+2BE],1;TCustomForm.FWindowState:TWindowState
>005C8DF2    jne         005C8DFC
 005C8DF4    dec         esi
 005C8DF5    cmp         esi,0FFFFFFFF
>005C8DF8    jne         005C8DC6
 005C8DFA    xor         ebx,ebx
 005C8DFC    mov         eax,ebx
 005C8DFE    pop         esi
 005C8DFF    pop         ebx
 005C8E00    pop         ebp
 005C8E01    ret
end;*}

//005C8E04
{*procedure sub_005C8E04(?:TScreen; ?:TCustomForm; ?:?);
begin
 005C8E04    push        ebp
 005C8E05    mov         ebp,esp
 005C8E07    add         esp,0FFFFFFF0
 005C8E0A    mov         dword ptr [ebp-4],ecx
 005C8E0D    mov         dword ptr [ebp-0C],edx
 005C8E10    mov         dword ptr [ebp-10],eax
 005C8E13    push        ebp
 005C8E14    call        005C8DAC
 005C8E19    pop         ecx
 005C8E1A    test        al,al
>005C8E1C    je          005C8E85
 005C8E1E    mov         dl,1
 005C8E20    mov         eax,[0046C204];TList
 005C8E25    call        TObject.Create;TList.Create
 005C8E2A    mov         dword ptr [ebp-8],eax
 005C8E2D    xor         eax,eax
 005C8E2F    push        ebp
 005C8E30    push        5C8E7E
 005C8E35    push        dword ptr fs:[eax]
 005C8E38    mov         dword ptr fs:[eax],esp
 005C8E3B    push        ebp
 005C8E3C    mov         al,1
 005C8E3E    call        005C8C5C
 005C8E43    pop         ecx
 005C8E44    push        ebp
 005C8E45    mov         al,2
 005C8E47    call        005C8C5C
 005C8E4C    pop         ecx
 005C8E4D    push        ebp
 005C8E4E    mov         al,3
 005C8E50    call        005C8C5C
 005C8E55    pop         ecx
 005C8E56    push        ebp
 005C8E57    mov         al,4
 005C8E59    call        005C8C5C
 005C8E5E    pop         ecx
 005C8E5F    push        ebp
 005C8E60    mov         al,5
 005C8E62    call        005C8C5C
 005C8E67    pop         ecx
 005C8E68    xor         eax,eax
 005C8E6A    pop         edx
 005C8E6B    pop         ecx
 005C8E6C    pop         ecx
 005C8E6D    mov         dword ptr fs:[eax],edx
 005C8E70    push        5C8E85
 005C8E75    mov         eax,dword ptr [ebp-8]
 005C8E78    call        TObject.Free
 005C8E7D    ret
>005C8E7E    jmp         @HandleFinally
>005C8E83    jmp         005C8E75
 005C8E85    mov         esp,ebp
 005C8E87    pop         ebp
 005C8E88    ret
end;*}

//005C8E8C
{*function sub_005C8E8C(?:TScreen; ?:TCustomForm):?;
begin
 005C8E8C    push        ebp
 005C8E8D    mov         ebp,esp
 005C8E8F    add         esp,0FFFFFFEC
 005C8E92    push        ebx
 005C8E93    mov         ebx,edx
 005C8E95    mov         dword ptr [ebp-4],eax
 005C8E98    mov         eax,dword ptr [ebp-4]
 005C8E9B    cmp         word ptr [eax+9C],0;TScreen.FAlignLevel:Word
>005C8EA3    je          005C8EB1
 005C8EA5    mov         eax,dword ptr [ebp-4]
 005C8EA8    or          dword ptr [eax+9E],10;TScreen.FControlState:TControlState
>005C8EAF    jmp         005C8F0A
 005C8EB1    mov         eax,dword ptr [ebp-4]
 005C8EB4    call        TScreen.DisableAlign
 005C8EB9    xor         eax,eax
 005C8EBB    push        ebp
 005C8EBC    push        5C8F03
 005C8EC1    push        dword ptr fs:[eax]
 005C8EC4    mov         dword ptr fs:[eax],esp
 005C8EC7    push        0
 005C8EC9    lea         eax,[ebp-14]
 005C8ECC    push        eax
 005C8ECD    push        0
 005C8ECF    push        30
 005C8ED1    call        user32.SystemParametersInfoW
 005C8ED6    lea         ecx,[ebp-14]
 005C8ED9    mov         edx,ebx
 005C8EDB    mov         eax,dword ptr [ebp-4]
 005C8EDE    call        005C8E04
 005C8EE3    xor         eax,eax
 005C8EE5    pop         edx
 005C8EE6    pop         ecx
 005C8EE7    pop         ecx
 005C8EE8    mov         dword ptr fs:[eax],edx
 005C8EEB    push        5C8F0A
 005C8EF0    mov         eax,dword ptr [ebp-4]
 005C8EF3    and         dword ptr [eax+9E],0FFFFFFEF;TScreen.FControlState:TControlState
 005C8EFA    mov         eax,dword ptr [ebp-4]
 005C8EFD    call        TScreen.EnableAlign
 005C8F02    ret
>005C8F03    jmp         @HandleFinally
>005C8F08    jmp         005C8EF0
 005C8F0A    pop         ebx
 005C8F0B    mov         esp,ebp
 005C8F0D    pop         ebp
 005C8F0E    ret
end;*}

//005C8FE4
procedure TScreen.ResetFonts;
begin
{*
 005C8FE4    push        ecx
 005C8FE5    add         eax,40;TScreen.FFonts:TStrings
 005C8FE8    mov         dword ptr [esp],eax
 005C8FEB    mov         eax,dword ptr [esp]
 005C8FEE    mov         eax,dword ptr [eax]
 005C8FF0    mov         edx,dword ptr [esp]
 005C8FF3    xor         ecx,ecx
 005C8FF5    mov         dword ptr [edx],ecx
 005C8FF7    call        TObject.Free
 005C8FFC    pop         edx
 005C8FFD    ret
*}
end;

//005C9000
{*procedure sub_005C9000(?:TControl; ?:?);
begin
 005C9000    push        ebx
 005C9001    push        esi
 005C9002    mov         esi,edx
 005C9004    mov         ebx,eax
 005C9006    test        ebx,ebx
>005C9008    je          005C902C
 005C900A    cmp         dword ptr [ebx+90],0
>005C9011    jne         005C9018
 005C9013    mov         ebx,dword ptr [ebx+40]
>005C9016    jmp         005C9028
 005C9018    mov         eax,esi
 005C901A    mov         edx,dword ptr [ebx+90]
 005C9020    call        @UStrAsg
 005C9025    pop         esi
 005C9026    pop         ebx
 005C9027    ret
 005C9028    test        ebx,ebx
>005C902A    jne         005C900A
 005C902C    mov         eax,esi
 005C902E    call        @UStrClr
 005C9033    pop         esi
 005C9034    pop         ebx
 005C9035    ret
end;*}

//005C9038
{*function sub_005C9038:?;
begin
>005C9038    jmp         005C903D
end;*}

//005C914C
procedure sub_005C914C;
begin
{*
 005C914C    push        ecx
 005C914D    mov         eax,[007CA7C8];Application:TApplication
 005C9152    cmp         byte ptr [eax+0C5],0
>005C9159    jne         005C91BE
 005C915B    cmp         dword ptr ds:[7CA7EC],0;gvar_007CA7EC:HHOOK
>005C9162    jne         005C917E
 005C9164    call        kernel32.GetCurrentThreadId
 005C9169    push        eax
 005C916A    push        0
 005C916C    mov         eax,[007A1DAC];^gvar_005C9108
 005C9171    push        eax
 005C9172    push        3
 005C9174    call        user32.SetWindowsHookExW
 005C9179    mov         [007CA7EC],eax;gvar_007CA7EC:HHOOK
 005C917E    cmp         dword ptr ds:[7CA7E8],0;gvar_007CA7E8:THandle
>005C9185    jne         005C9199
 005C9187    push        0
 005C9189    push        0
 005C918B    push        0
 005C918D    push        0
 005C918F    call        kernel32.CreateEventW
 005C9194    mov         [007CA7E8],eax;gvar_007CA7E8:THandle
 005C9199    cmp         dword ptr ds:[7CA7F0],0;gvar_007CA7F0:NativeUInt
>005C91A0    jne         005C91BE
 005C91A2    push        esp
 005C91A3    push        0
 005C91A5    push        0
 005C91A7    mov         eax,[007A1DA8];^gvar_005C90AC
 005C91AC    push        eax
 005C91AD    push        3E8
 005C91B2    push        0
 005C91B4    call        kernel32.CreateThread
 005C91B9    mov         [007CA7F0],eax;gvar_007CA7F0:NativeUInt
 005C91BE    pop         edx
 005C91BF    ret
*}
end;

//005C91C0
procedure sub_005C91C0;
begin
{*
 005C91C0    add         esp,0FFFFFFF8
 005C91C3    cmp         dword ptr ds:[7CA7EC],0;gvar_007CA7EC:HHOOK
>005C91CA    je          005C91D7
 005C91CC    mov         eax,[007CA7EC];gvar_007CA7EC:HHOOK
 005C91D1    push        eax
 005C91D2    call        user32.UnhookWindowsHookEx
 005C91D7    xor         eax,eax
 005C91D9    mov         [007CA7EC],eax;gvar_007CA7EC:HHOOK
 005C91DE    mov         dword ptr [esp+4],7CA7F0;gvar_007CA7F0:NativeUInt
 005C91E6    push        0
 005C91E8    mov         eax,dword ptr [esp+8]
 005C91EC    push        eax
 005C91ED    call        kernel32.InterlockedExchange
 005C91F2    mov         dword ptr [esp],eax
 005C91F5    cmp         dword ptr [esp],0
>005C91F9    je          005C9241
 005C91FB    mov         eax,[007CA7E8];gvar_007CA7E8:THandle
 005C9200    push        eax
 005C9201    call        kernel32.SetEvent
 005C9206    call        kernel32.GetCurrentThreadId
 005C920B    cmp         eax,dword ptr ds:[7CA7E4];gvar_007CA7E4
>005C9211    je          005C9238
>005C9213    jmp         005C921F
 005C9215    mov         eax,[007CA7C8];Application:TApplication
 005C921A    call        TApplication.HandleMessage
 005C921F    push        4FF
 005C9224    push        0FF
 005C9226    push        0
 005C9228    lea         eax,[esp+0C]
 005C922C    push        eax
 005C922D    push        1
 005C922F    call        user32.MsgWaitForMultipleObjects
 005C9234    test        eax,eax
>005C9236    jne         005C9215
 005C9238    mov         eax,dword ptr [esp]
 005C923B    push        eax
 005C923C    call        kernel32.CloseHandle
 005C9241    pop         ecx
 005C9242    pop         edx
 005C9243    ret
*}
end;

//005C9244
{*function sub_005C9244:?;
begin
 005C9244    push        ebx
 005C9245    add         esp,0FFFFFFF8
 005C9248    mov         ebx,8
 005C924D    mov         dword ptr [esp],ebx
 005C9250    push        0
 005C9252    lea         eax,[esp+4]
 005C9256    push        eax
 005C9257    push        ebx
 005C9258    push        48
 005C925A    call        user32.SystemParametersInfoW
 005C925F    test        eax,eax
>005C9261    je          005C926D
 005C9263    cmp         dword ptr [esp+4],0
 005C9268    setne       al
>005C926B    jmp         005C926F
 005C926D    xor         eax,eax
 005C926F    pop         ecx
 005C9270    pop         edx
 005C9271    pop         ebx
 005C9272    ret
end;*}

//005C9274
{*procedure sub_005C9274(?:?);
begin
 005C9274    add         esp,0FFFFFFF8
 005C9277    mov         dword ptr [esp],8
 005C927E    cmp         al,1
 005C9280    cmc
 005C9281    sbb         eax,eax
 005C9283    mov         dword ptr [esp+4],eax
 005C9287    push        0
 005C9289    lea         eax,[esp+4]
 005C928D    push        eax
 005C928E    mov         eax,dword ptr [esp+8]
 005C9292    push        eax
 005C9293    push        49
 005C9295    call        user32.SystemParametersInfoW
 005C929A    pop         ecx
 005C929B    pop         edx
 005C929C    ret
end;*}

//005C92A0
{*procedure sub_005C92A0(?:HWND; ?:?);
begin
 005C92A0    push        ebx
 005C92A1    push        esi
 005C92A2    push        edi
 005C92A3    mov         edi,edx
 005C92A5    mov         esi,eax
 005C92A7    call        005C9244
 005C92AC    mov         ebx,eax
 005C92AE    test        bl,bl
>005C92B0    je          005C92B9
 005C92B2    xor         eax,eax
 005C92B4    call        005C9274
 005C92B9    push        edi
 005C92BA    push        esi
 005C92BB    call        user32.ShowWindow
 005C92C0    test        bl,bl
>005C92C2    je          005C92CB
 005C92C4    mov         al,1
 005C92C6    call        005C9274
 005C92CB    pop         edi
 005C92CC    pop         esi
 005C92CD    pop         ebx
 005C92CE    ret
end;*}

//005C9334
procedure sub_005C9334;
begin
{*
 005C9334    push        0
 005C9336    push        edx
 005C9337    push        0
 005C9339    push        30
 005C933B    call        user32.SystemParametersInfoW
 005C9340    ret
*}
end;

//005C9378
function TScreen.MonitorFromPoint(Point:TPoint; MonitorDefault:TMonitorDefaultTo):TMonitor;
begin
{*
 005C9378    push        ebx
 005C9379    push        esi
 005C937A    push        edi
 005C937B    mov         ebx,ecx
 005C937D    mov         esi,edx
 005C937F    mov         edi,eax
 005C9381    movzx       eax,bl
 005C9384    mov         eax,dword ptr [eax*4+7A1DB0]
 005C938B    push        eax
 005C938C    push        dword ptr [esi+4]
 005C938F    push        dword ptr [esi]
 005C9391    call        user32.MonitorFromPoint
 005C9396    mov         edx,eax
 005C9398    mov         eax,edi
 005C939A    call        005C839C
 005C939F    pop         edi
 005C93A0    pop         esi
 005C93A1    pop         ebx
 005C93A2    ret
*}
end;

//005C93A4
function TScreen.MonitorFromWindow(Handle:NativeUInt; MonitorDefault:TMonitorDefaultTo):TMonitor;
begin
{*
 005C93A4    push        ebx
 005C93A5    push        esi
 005C93A6    push        edi
 005C93A7    mov         ebx,ecx
 005C93A9    mov         esi,edx
 005C93AB    mov         edi,eax
 005C93AD    movzx       eax,bl
 005C93B0    mov         eax,dword ptr [eax*4+7A1DB0]
 005C93B7    push        eax
 005C93B8    push        esi
 005C93B9    call        user32.MonitorFromWindow
 005C93BE    mov         edx,eax
 005C93C0    mov         eax,edi
 005C93C2    call        005C839C
 005C93C7    pop         edi
 005C93C8    pop         esi
 005C93C9    pop         ebx
 005C93CA    ret
*}
end;

//005C93CC
{*procedure sub_005C93CC(?:?);
begin
 005C93CC    push        ebx
 005C93CD    push        esi
 005C93CE    push        edi
 005C93CF    mov         edi,eax
 005C93D1    mov         eax,dword ptr [edi+68]
 005C93D4    mov         ebx,dword ptr [eax+8]
 005C93D7    dec         ebx
 005C93D8    test        ebx,ebx
>005C93DA    jl          005C93F2
 005C93DC    inc         ebx
 005C93DD    xor         esi,esi
 005C93DF    mov         eax,dword ptr [edi+68]
 005C93E2    mov         edx,esi
 005C93E4    call        TList.Get
 005C93E9    call        TObject.Free
 005C93EE    inc         esi
 005C93EF    dec         ebx
>005C93F0    jne         005C93DF
 005C93F2    mov         eax,[007CA7CC];Screen:TScreen
 005C93F7    mov         eax,dword ptr [eax+68]
 005C93FA    mov         edx,dword ptr [eax]
 005C93FC    call        dword ptr [edx+8]
 005C93FF    pop         edi
 005C9400    pop         esi
 005C9401    pop         ebx
 005C9402    ret
end;*}

//005C9404
procedure TScreen.GetMonitors;
begin
{*
 005C9404    call        005C93CC
 005C9409    mov         eax,[007CA7CC];Screen:TScreen
 005C940E    mov         eax,dword ptr [eax+68]
 005C9411    push        eax
 005C9412    mov         eax,5C2E00;sub_005C2E00
 005C9417    push        eax
 005C9418    push        0
 005C941A    push        0
 005C941C    call        user32.EnumDisplayMonitors
 005C9421    ret
*}
end;

//005C9424
function DoGetPrimaryMonitor:TMonitor;
begin
{*
 005C9424    push        ebp
 005C9425    mov         ebp,esp
 005C9427    push        ebx
 005C9428    push        esi
 005C9429    push        edi
 005C942A    xor         edi,edi
 005C942C    mov         eax,dword ptr [ebp+8]
 005C942F    mov         eax,dword ptr [eax-4]
 005C9432    call        TScreen.GetMonitorCount
 005C9437    mov         esi,eax
 005C9439    dec         esi
 005C943A    test        esi,esi
>005C943C    jl          005C946C
 005C943E    inc         esi
 005C943F    xor         ebx,ebx
 005C9441    mov         eax,dword ptr [ebp+8]
 005C9444    mov         eax,dword ptr [eax-4]
 005C9447    mov         edx,ebx
 005C9449    call        TScreen.GetMonitor
 005C944E    call        TMonitor.GetPrimary
 005C9453    test        al,al
>005C9455    je          005C9468
 005C9457    mov         eax,dword ptr [ebp+8]
 005C945A    mov         eax,dword ptr [eax-4]
 005C945D    mov         edx,ebx
 005C945F    call        TScreen.GetMonitor
 005C9464    mov         edi,eax
>005C9466    jmp         005C946C
 005C9468    inc         ebx
 005C9469    dec         esi
>005C946A    jne         005C9441
 005C946C    mov         eax,edi
 005C946E    pop         edi
 005C946F    pop         esi
 005C9470    pop         ebx
 005C9471    pop         ebp
 005C9472    ret
*}
end;

//005C9474
function TScreen.GetPrimaryMonitor:TMonitor;
begin
{*
 005C9474    push        ebp
 005C9475    mov         ebp,esp
 005C9477    push        ecx
 005C9478    mov         dword ptr [ebp-4],eax
 005C947B    push        ebp
 005C947C    call        DoGetPrimaryMonitor
 005C9481    pop         ecx
 005C9482    test        eax,eax
>005C9484    jne         005C9495
 005C9486    mov         eax,dword ptr [ebp-4]
 005C9489    call        TScreen.GetMonitors
 005C948E    push        ebp
 005C948F    call        DoGetPrimaryMonitor
 005C9494    pop         ecx
 005C9495    pop         ecx
 005C9496    pop         ebp
 005C9497    ret
*}
end;

//005C9570
procedure sub_005C9570(?:TBiDiKeyboard);
begin
{*
 005C9570    mov         edx,dword ptr [eax+8]
 005C9573    test        edx,edx
>005C9575    je          005C957F
 005C9577    push        0
 005C9579    push        edx
 005C957A    call        user32.ActivateKeyboardLayout
 005C957F    ret
*}
end;

//005C9580
procedure sub_005C9580(?:TBiDiKeyboard);
begin
{*
 005C9580    mov         edx,dword ptr [eax+0C]
 005C9583    test        edx,edx
>005C9585    je          005C958F
 005C9587    push        0
 005C9589    push        edx
 005C958A    call        user32.ActivateKeyboardLayout
 005C958F    ret
*}
end;

//005C9590
constructor TApplication.Create;
begin
{*
 005C9590    push        ebp
 005C9591    mov         ebp,esp
 005C9593    add         esp,0FFFFFDFC
 005C9599    push        ebx
 005C959A    push        esi
 005C959B    test        dl,dl
>005C959D    je          005C95A7
 005C959F    add         esp,0FFFFFFF0
 005C95A2    call        @ClassCreate
 005C95A7    mov         byte ptr [ebp-1],dl
 005C95AA    mov         ebx,eax
 005C95AC    xor         edx,edx
 005C95AE    mov         eax,ebx
 005C95B0    call        TComponent.Create
 005C95B5    mov         eax,[007C41B8];IsLibrary:Boolean
 005C95BA    cmp         byte ptr [eax],0
>005C95BD    jne         005C95D4
 005C95BF    push        0
 005C95C1    call        ole32.OleInitialize
 005C95C6    test        eax,80000000
 005C95CB    sete        al
 005C95CE    mov         byte ptr [ebx+194],al
 005C95D4    mov         eax,[007C4840];^gvar_007A05E0
 005C95D9    cmp         word ptr [eax+2],0
>005C95DE    jne         005C95EE
 005C95E0    mov         eax,[007C4840];^gvar_007A05E0
 005C95E5    mov         dword ptr [eax+4],ebx
 005C95E8    mov         dword ptr [eax],5CB828;TApplication.HandleException
 005C95EE    mov         eax,[007C4A8C];^gvar_007A05E8
 005C95F3    cmp         word ptr [eax+2],0
>005C95F8    jne         005C9608
 005C95FA    mov         eax,[007C4A8C];^gvar_007A05E8
 005C95FF    mov         dword ptr [eax+4],ebx
 005C9602    mov         dword ptr [eax],5CBA2C;TApplication.ShowException
 005C9608    mov         byte ptr [ebx+41],0
 005C960C    mov         dl,1
 005C960E    mov         eax,[004BDD74];TFont
 005C9613    call        TFont.Create
 005C9618    mov         esi,eax
 005C961A    mov         dword ptr [ebx+54],esi
 005C961D    mov         dword ptr [esi+0C],ebx
 005C9620    mov         dword ptr [esi+8],5CBEA8
 005C9627    mov         dl,1
 005C9629    mov         eax,[0046C204];TList
 005C962E    call        TObject.Create
 005C9633    mov         dword ptr [ebx+0A8],eax
 005C9639    mov         dl,1
 005C963B    mov         eax,[0046C204];TList
 005C9640    call        TObject.Create
 005C9645    mov         dword ptr [ebx+0C8],eax
 005C964B    xor         eax,eax
 005C964D    mov         dword ptr [ebx+74],eax
 005C9650    xor         eax,eax
 005C9652    mov         dword ptr [ebx+98],eax
 005C9658    mov         dword ptr [ebx+70],0FF000018
 005C965F    mov         dword ptr [ebx+8C],1F4
 005C9669    mov         byte ptr [ebx+90],1
 005C9670    xor         eax,eax
 005C9672    mov         dword ptr [ebx+94],eax
 005C9678    mov         dword ptr [ebx+88],9C4
 005C9682    mov         byte ptr [ebx+9C],0
 005C9689    mov         byte ptr [ebx+0BD],1
 005C9690    mov         byte ptr [ebx+0D4],1
 005C9697    mov         dl,1
 005C9699    mov         eax,[004C2694];TIcon
 005C969E    call        TIcon.Create
 005C96A3    mov         esi,eax
 005C96A5    mov         dword ptr [ebx+0B8],esi
 005C96AB    push        5C97F0
 005C96B0    mov         eax,[007C458C];MainInstance:NativeUInt
 005C96B5    mov         eax,dword ptr [eax]
 005C96B7    push        eax
 005C96B8    call        user32.LoadIconW
 005C96BD    mov         edx,eax
 005C96BF    mov         eax,esi
 005C96C1    call        TIcon.SetHandle
 005C96C6    mov         eax,dword ptr [ebx+0B8]
 005C96CC    mov         dword ptr [eax+14],ebx
 005C96CF    mov         dword ptr [eax+10],5CC168;sub_005CC168
 005C96D6    mov         dl,1
 005C96D8    mov         eax,[0046C204];TList
 005C96DD    call        TObject.Create
 005C96E2    mov         dword ptr [ebx+0B0],eax
 005C96E8    push        100
 005C96ED    lea         eax,[ebp-202]
 005C96F3    push        eax
 005C96F4    mov         eax,[007C458C];MainInstance:NativeUInt
 005C96F9    mov         eax,dword ptr [eax]
 005C96FB    push        eax
 005C96FC    call        kernel32.GetModuleFileNameW
 005C9701    lea         eax,[ebp-202]
 005C9707    mov         dx,5C
 005C970B    call        0041F3A8
 005C9710    test        eax,eax
>005C9712    je          005C9722
 005C9714    lea         edx,[eax+2]
 005C9717    lea         eax,[ebp-202]
 005C971D    call        StrCopy
 005C9722    lea         eax,[ebp-202]
 005C9728    mov         dx,2E
 005C972C    call        0041F38C
 005C9731    test        eax,eax
>005C9733    je          005C973A
 005C9735    mov         word ptr [eax],0
 005C973A    lea         eax,[ebp-202]
 005C9740    push        eax
 005C9741    call        user32.CharNextW
 005C9746    push        eax
 005C9747    call        user32.CharLowerW
 005C974C    lea         eax,[ebx+0A4]
 005C9752    lea         edx,[ebp-202]
 005C9758    mov         ecx,100
 005C975D    call        @UStrFromWArray
 005C9762    push        ebx
 005C9763    push        5CB204
 005C9768    call        AllocateHWnd
 005C976D    mov         dword ptr [ebx+190],eax
 005C9773    mov         byte ptr [ebx+0E8],0
 005C977A    mov         eax,[007C41B8];IsLibrary:Boolean
 005C977F    cmp         byte ptr [eax],0
>005C9782    jne         005C978B
 005C9784    mov         eax,ebx
 005C9786    call        TApplication.CreateHandle
 005C978B    mov         byte ptr [ebx+6D],1
 005C978F    mov         byte ptr [ebx+6E],1
 005C9793    mov         byte ptr [ebx+6F],1
 005C9797    mov         byte ptr [ebx+0BE],1
 005C979E    mov         byte ptr [ebx+0E9],0
 005C97A5    mov         byte ptr [ebx+0F4],0
 005C97AC    xor         eax,eax
 005C97AE    mov         dword ptr [ebx+0EC],eax
 005C97B4    mov         byte ptr [ebx+0EB],0
 005C97BB    xor         eax,eax
 005C97BD    mov         dword ptr [ebx+0C0],eax
 005C97C3    mov         eax,ebx
 005C97C5    call        005CC3A0
 005C97CA    mov         eax,ebx
 005C97CC    call        TApplication.HookSynchronizeWakeup
 005C97D1    mov         eax,ebx
 005C97D3    cmp         byte ptr [ebp-1],0
>005C97D7    je          005C97E8
 005C97D9    call        @AfterConstruction
 005C97DE    pop         dword ptr fs:[0]
 005C97E5    add         esp,0C
 005C97E8    mov         eax,ebx
 005C97EA    pop         esi
 005C97EB    pop         ebx
 005C97EC    mov         esp,ebp
 005C97EE    pop         ebp
 005C97EF    ret
*}
end;

//005C9804
destructor TApplication.Destroy();
begin
{*
 005C9804    push        ebx
 005C9805    push        esi
 005C9806    add         esp,0FFFFFFEC
 005C9809    call        @BeforeDestruction
 005C980E    mov         ebx,edx
 005C9810    mov         esi,eax
 005C9812    mov         eax,esi
 005C9814    call        TApplication.UnhookSynchronizeWakeup
 005C9819    mov         dword ptr [esp+4],esi
 005C981D    mov         dword ptr [esp],5CB828;TApplication.HandleException
 005C9824    mov         eax,[007C4840];^gvar_007A05E0
 005C9829    mov         eax,dword ptr [eax]
 005C982B    cmp         eax,dword ptr [esp]
>005C982E    jne         005C983C
 005C9830    mov         eax,[007C4840];^gvar_007A05E0
 005C9835    xor         edx,edx
 005C9837    mov         dword ptr [eax],edx
 005C9839    mov         dword ptr [eax+4],edx
 005C983C    mov         dword ptr [esp+0C],esi
 005C9840    mov         dword ptr [esp+8],5CBA2C;TApplication.ShowException
 005C9848    mov         eax,[007C4A8C];^gvar_007A05E8
 005C984D    mov         eax,dword ptr [eax]
 005C984F    cmp         eax,dword ptr [esp+8]
>005C9853    jne         005C9861
 005C9855    mov         eax,[007C4A8C];^gvar_007A05E8
 005C985A    xor         edx,edx
 005C985C    mov         dword ptr [eax],edx
 005C985E    mov         dword ptr [eax+4],edx
 005C9861    mov         eax,dword ptr [esi+0C0];TApplication.FTestLib:NativeUInt
 005C9867    test        eax,eax
>005C9869    je          005C9871
 005C986B    push        eax
 005C986C    call        kernel32.FreeLibrary
 005C9871    mov         byte ptr [esi+0BD],0;TApplication.FActive:Boolean
 005C9878    mov         eax,esi
 005C987A    call        TApplication.CancelHint
 005C987F    xor         edx,edx
 005C9881    mov         eax,esi
 005C9883    call        TApplication.SetShowHint
 005C9888    mov         dl,0FC
 005C988A    and         dl,bl
 005C988C    mov         eax,esi
 005C988E    call        TComponent.Destroy
 005C9893    mov         eax,dword ptr [esi+190];TApplication.FPopupControlWnd:HWND
 005C9899    test        eax,eax
>005C989B    je          005C98A2
 005C989D    call        005BEE78
 005C98A2    push        esi
 005C98A3    push        5CA1A8;sub_005CA1A8
 005C98A8    mov         eax,esi
 005C98AA    call        TApplication.UnhookMainWindow
 005C98AF    mov         eax,dword ptr [esi+188];TApplication.FHandle:HWND
 005C98B5    test        eax,eax
>005C98B7    je          005C9951
 005C98BD    cmp         byte ptr [esi+0C4],0;TApplication.FHandleCreated:Boolean
>005C98C4    je          005C9951
 005C98CA    mov         edx,dword ptr ds:[7C4770];^gvar_007CA5E0
 005C98D0    cmp         byte ptr [edx],0
>005C98D3    je          005C98E4
 005C98D5    push        0
 005C98D7    push        1
 005C98D9    push        80
 005C98DE    push        eax
 005C98DF    call        user32.SendMessageW
 005C98E4    mov         eax,[007C4364];^gvar_007C7DC0
 005C98E9    cmp         dword ptr [eax],5
>005C98EC    jg          005C9906
 005C98EE    mov         eax,[007C4364];^gvar_007C7DC0
 005C98F3    cmp         dword ptr [eax],5
>005C98F6    jne         005C9902
 005C98F8    mov         eax,[007C4904];^gvar_007C7DC4
 005C98FD    cmp         dword ptr [eax],1
>005C9900    jge         005C9906
 005C9902    xor         eax,eax
>005C9904    jmp         005C9908
 005C9906    mov         al,1
 005C9908    test        al,al
>005C990A    je          005C9918
 005C990C    mov         eax,dword ptr [esi+188];TApplication.FHandle:HWND
 005C9912    push        eax
 005C9913    call        004114D0
 005C9918    mov         eax,[007C4364];^gvar_007C7DC0
 005C991D    cmp         dword ptr [eax],6
>005C9920    jg          005C993A
 005C9922    mov         eax,[007C4364];^gvar_007C7DC0
 005C9927    cmp         dword ptr [eax],6
>005C992A    jne         005C9936
 005C992C    mov         eax,[007C4904];^gvar_007C7DC4
 005C9931    cmp         dword ptr [eax],0
>005C9934    jge         005C993A
 005C9936    xor         eax,eax
>005C9938    jmp         005C993C
 005C993A    mov         al,1
 005C993C    test        al,al
>005C993E    je          005C9945
 005C9940    call        004D4254
 005C9945    mov         eax,dword ptr [esi+188];TApplication.FHandle:HWND
 005C994B    push        eax
 005C994C    call        user32.DestroyWindow
 005C9951    cmp         dword ptr [esi+60],0;TApplication.FHelpSystem:IHelpSystem
>005C9955    je          005C995F
 005C9957    lea         eax,[esi+60];TApplication.FHelpSystem:IHelpSystem
 005C995A    call        @IntfClear
 005C995F    mov         eax,dword ptr [esi+18C];TApplication.FObjectInstance:Pointer
 005C9965    test        eax,eax
>005C9967    je          005C996E
 005C9969    call        005BEE5C
 005C996E    mov         eax,dword ptr [esi+0C8];TApplication.FWindowHooks:TList
 005C9974    call        TObject.Free
 005C9979    mov         eax,dword ptr [esi+0A8];TApplication.FTopMostList:TList
 005C997F    call        TObject.Free
 005C9984    mov         eax,dword ptr [esi+0B0];TApplication.FPopupOwners:TList
 005C998A    call        TObject.Free
 005C998F    mov         eax,dword ptr [esi+0B8];TApplication.FIcon:TIcon
 005C9995    call        TObject.Free
 005C999A    lea         eax,[esi+54];TApplication.FDefaultFont:TFont
 005C999D    mov         dword ptr [esp+10],eax
 005C99A1    mov         eax,dword ptr [esp+10]
 005C99A5    mov         eax,dword ptr [eax]
 005C99A7    mov         edx,dword ptr [esp+10]
 005C99AB    xor         ecx,ecx
 005C99AD    mov         dword ptr [edx],ecx
 005C99AF    call        TObject.Free
 005C99B4    cmp         byte ptr [esi+194],0;TApplication.FNeedToUninitialize:Boolean
>005C99BB    je          005C99C2
 005C99BD    call        ole32.OleUninitialize
 005C99C2    test        bl,bl
>005C99C4    jle         005C99CD
 005C99C6    mov         eax,esi
 005C99C8    call        @ClassDestroy
 005C99CD    add         esp,14
 005C99D0    pop         esi
 005C99D1    pop         ebx
 005C99D2    ret
*}
end;

//005C99D4
procedure TApplication.CreateHandle;
begin
{*
 005C99D4    push        ebp
 005C99D5    mov         ebp,esp
 005C99D7    add         esp,0FFFFFFD4
 005C99DA    push        ebx
 005C99DB    push        esi
 005C99DC    xor         edx,edx
 005C99DE    mov         dword ptr [ebp-2C],edx
 005C99E1    mov         ebx,eax
 005C99E3    xor         eax,eax
 005C99E5    push        ebp
 005C99E6    push        5C9BDE
 005C99EB    push        dword ptr fs:[eax]
 005C99EE    mov         dword ptr fs:[eax],esp
 005C99F1    cmp         byte ptr [ebx+0C4],0;TApplication.FHandleCreated:Boolean
>005C99F8    jne         005C9BC8
 005C99FE    mov         eax,[007C4B64];^gvar_007C505C:Boolean
 005C9A03    cmp         byte ptr [eax],0
>005C9A06    jne         005C9BC8
 005C9A0C    push        ebx
 005C9A0D    push        5CA334;sub_005CA334
 005C9A12    call        MakeObjectInstance
 005C9A17    mov         dword ptr [ebx+18C],eax;TApplication.FObjectInstance:Pointer
 005C9A1D    mov         eax,410E98;user32.DefWindowProcW:IntPtr
 005C9A22    mov         [007A1DC0],eax;^user32.DefWindowProcW:IntPtr
 005C9A27    lea         eax,[ebp-28]
 005C9A2A    push        eax
 005C9A2B    mov         eax,[007A1DE0];^gvar_005C9498
 005C9A30    push        eax
 005C9A31    mov         eax,[007C7C54];gvar_007C7C54
 005C9A36    push        eax
 005C9A37    call        user32.GetClassInfoW
 005C9A3C    test        eax,eax
>005C9A3E    jne         005C9A7A
 005C9A40    mov         eax,[007C7C54];gvar_007C7C54
 005C9A45    mov         [007A1DCC],eax;gvar_007A1DCC
 005C9A4A    push        7A1DBC
 005C9A4F    call        user32.RegisterClassW
 005C9A54    test        ax,ax
>005C9A57    jne         005C9A7A
 005C9A59    lea         edx,[ebp-2C]
 005C9A5C    mov         eax,[007C4398];^SResString229:TResStringRec
 005C9A61    call        LoadResString
 005C9A66    mov         ecx,dword ptr [ebp-2C]
 005C9A69    mov         dl,1
 005C9A6B    mov         eax,[0046BDEC];EOutOfResources
 005C9A70    call        Exception.Create;EOutOfResources.Create
 005C9A75    call        @RaiseExcept
 005C9A7A    push        84CA0000
 005C9A7F    push        0
 005C9A81    call        user32.GetSystemMetrics
 005C9A86    sar         eax,1
>005C9A88    jns         005C9A8D
 005C9A8A    adc         eax,0
 005C9A8D    push        eax
 005C9A8E    push        1
 005C9A90    call        user32.GetSystemMetrics
 005C9A95    sar         eax,1
>005C9A97    jns         005C9A9C
 005C9A99    adc         eax,0
 005C9A9C    push        eax
 005C9A9D    push        0
 005C9A9F    push        0
 005C9AA1    push        0
 005C9AA3    push        0
 005C9AA5    mov         eax,[007C7C54];gvar_007C7C54
 005C9AAA    push        eax
 005C9AAB    push        0
 005C9AAD    mov         eax,dword ptr [ebx+0A4];TApplication.FTitle:string
 005C9AB3    call        @UStrToPWChar
 005C9AB8    mov         ecx,eax
 005C9ABA    mov         edx,dword ptr ds:[7A1DE0];^gvar_005C9498
 005C9AC0    mov         eax,80
 005C9AC5    call        CreateWindowEx
 005C9ACA    mov         dword ptr [ebx+188],eax;TApplication.FHandle:HWND
 005C9AD0    mov         byte ptr [ebx+0C4],1;TApplication.FHandleCreated:Boolean
 005C9AD7    mov         edx,dword ptr ds:[7C4364];^gvar_007C7DC0
 005C9ADD    cmp         dword ptr [edx],5
>005C9AE0    jg          005C9AFC
 005C9AE2    mov         edx,dword ptr ds:[7C4364];^gvar_007C7DC0
 005C9AE8    cmp         dword ptr [edx],5
>005C9AEB    jne         005C9AF8
 005C9AED    mov         edx,dword ptr ds:[7C4904];^gvar_007C7DC4
 005C9AF3    cmp         dword ptr [edx],1
>005C9AF6    jge         005C9AFC
 005C9AF8    xor         edx,edx
>005C9AFA    jmp         005C9AFE
 005C9AFC    mov         dl,1
 005C9AFE    test        dl,dl
>005C9B00    je          005C9B0A
 005C9B02    push        0
 005C9B04    push        eax
 005C9B05    call        004114B8
 005C9B0A    mov         eax,[007C4364];^gvar_007C7DC0
 005C9B0F    cmp         dword ptr [eax],6
>005C9B12    jg          005C9B2C
 005C9B14    mov         eax,[007C4364];^gvar_007C7DC0
 005C9B19    cmp         dword ptr [eax],6
>005C9B1C    jne         005C9B28
 005C9B1E    mov         eax,[007C4904];^gvar_007C7DC4
 005C9B23    cmp         dword ptr [eax],0
>005C9B26    jge         005C9B2C
 005C9B28    xor         eax,eax
>005C9B2A    jmp         005C9B2E
 005C9B2C    mov         al,1
 005C9B2E    test        al,al
>005C9B30    je          005C9B37
 005C9B32    call        004D423C
 005C9B37    mov         eax,dword ptr [ebx+188];TApplication.FHandle:HWND
 005C9B3D    mov         edx,dword ptr [ebx+18C];TApplication.FObjectInstance:Pointer
 005C9B43    push        edx
 005C9B44    push        0FC
 005C9B46    push        eax
 005C9B47    call        user32.SetWindowLongW
 005C9B4C    mov         eax,[007C4770];^gvar_007CA5E0
 005C9B51    cmp         byte ptr [eax],0
>005C9B54    je          005C9B87
 005C9B56    mov         eax,ebx
 005C9B58    call        005CAAE4
 005C9B5D    push        eax
 005C9B5E    push        1
 005C9B60    push        80
 005C9B65    mov         eax,dword ptr [ebx+188];TApplication.FHandle:HWND
 005C9B6B    push        eax
 005C9B6C    call        user32.SendMessageW
 005C9B71    mov         esi,dword ptr [ebx+188];TApplication.FHandle:HWND
 005C9B77    mov         eax,ebx
 005C9B79    call        005CAAE4
 005C9B7E    push        eax
 005C9B7F    push        0F2
 005C9B81    push        esi
 005C9B82    call        user32.SetClassLongW
 005C9B87    push        0
 005C9B89    mov         eax,dword ptr [ebx+188];TApplication.FHandle:HWND
 005C9B8F    push        eax
 005C9B90    call        user32.GetSystemMenu
 005C9B95    mov         ebx,eax
 005C9B97    push        0
 005C9B99    push        0F030
 005C9B9E    push        ebx
 005C9B9F    call        user32.DeleteMenu
 005C9BA4    push        0
 005C9BA6    push        0F000
 005C9BAB    push        ebx
 005C9BAC    call        user32.DeleteMenu
 005C9BB1    mov         eax,[007C4770];^gvar_007CA5E0
 005C9BB6    cmp         byte ptr [eax],0
>005C9BB9    je          005C9BC8
 005C9BBB    push        0
 005C9BBD    push        0F010
 005C9BC2    push        ebx
 005C9BC3    call        user32.DeleteMenu
 005C9BC8    xor         eax,eax
 005C9BCA    pop         edx
 005C9BCB    pop         ecx
 005C9BCC    pop         ecx
 005C9BCD    mov         dword ptr fs:[eax],edx
 005C9BD0    push        5C9BE5
 005C9BD5    lea         eax,[ebp-2C]
 005C9BD8    call        @UStrClr
 005C9BDD    ret
>005C9BDE    jmp         @HandleFinally
>005C9BE3    jmp         005C9BD5
 005C9BE5    pop         esi
 005C9BE6    pop         ebx
 005C9BE7    mov         esp,ebp
 005C9BE9    pop         ebp
 005C9BEA    ret
*}
end;

//005C9BEC
procedure TApplication.ControlDestroyed(Control:TControl);
begin
{*
 005C9BEC    push        ebx
 005C9BED    push        esi
 005C9BEE    mov         ecx,7CA7CC;Screen:TScreen
 005C9BF3    cmp         edx,dword ptr [eax+58];TApplication.FMainForm:TForm
>005C9BF6    jne         005C9BFD
 005C9BF8    xor         ebx,ebx
 005C9BFA    mov         dword ptr [eax+58],ebx;TApplication.FMainForm:TForm
 005C9BFD    cmp         edx,dword ptr [eax+5C];TApplication.FMouseControl:TControl
>005C9C00    jne         005C9C07
 005C9C02    xor         ebx,ebx
 005C9C04    mov         dword ptr [eax+5C],ebx;TApplication.FMouseControl:TControl
 005C9C07    mov         ebx,dword ptr [ecx]
 005C9C09    cmp         edx,dword ptr [ebx+6C]
>005C9C0C    jne         005C9C15
 005C9C0E    mov         ebx,dword ptr [ecx]
 005C9C10    xor         esi,esi
 005C9C12    mov         dword ptr [ebx+6C],esi
 005C9C15    mov         ebx,dword ptr [ecx]
 005C9C17    cmp         edx,dword ptr [ebx+70]
>005C9C1A    jne         005C9C2A
 005C9C1C    mov         ebx,dword ptr [ecx]
 005C9C1E    xor         esi,esi
 005C9C20    mov         dword ptr [ebx+70],esi
 005C9C23    mov         ebx,dword ptr [ecx]
 005C9C25    xor         esi,esi
 005C9C27    mov         dword ptr [ebx+74],esi
 005C9C2A    mov         ebx,dword ptr [ecx]
 005C9C2C    cmp         edx,dword ptr [ebx+80]
>005C9C32    jne         005C9C3E
 005C9C34    mov         ebx,dword ptr [ecx]
 005C9C36    xor         esi,esi
 005C9C38    mov         dword ptr [ebx+80],esi
 005C9C3E    cmp         edx,dword ptr [eax+74];TApplication.FHintControl:TControl
>005C9C41    jne         005C9C48
 005C9C43    xor         edx,edx
 005C9C45    mov         dword ptr [eax+74],edx;TApplication.FHintControl:TControl
 005C9C48    mov         eax,dword ptr [ecx]
 005C9C4A    call        005C8154
 005C9C4F    pop         esi
 005C9C50    pop         ebx
 005C9C51    ret
*}
end;

//005C9D18
{*procedure sub_005C9D18(?:TApplication; ?:?);
begin
 005C9D18    push        ebx
 005C9D19    push        esi
 005C9D1A    add         esp,0FFFFFFF8
 005C9D1D    mov         ebx,eax
 005C9D1F    mov         eax,dword ptr [ebx+188]
 005C9D25    test        eax,eax
>005C9D27    je          005C9DBA
 005C9D2D    cmp         dword ptr [ebx+0AC],0
>005C9D34    jne         005C9DB4
 005C9D36    mov         dword ptr [esp],eax
 005C9D39    mov         byte ptr [esp+4],dl
 005C9D3D    mov         eax,esp
 005C9D3F    push        eax
 005C9D40    push        5C9C54
 005C9D45    call        user32.EnumWindows
 005C9D4A    mov         eax,dword ptr [ebx+0A8]
 005C9D50    cmp         dword ptr [eax+8],0
>005C9D54    je          005C9DB4
 005C9D56    push        3
 005C9D58    mov         eax,dword ptr [esp+4]
 005C9D5C    push        eax
 005C9D5D    call        user32.GetWindow
 005C9D62    mov         esi,eax
 005C9D64    mov         dword ptr [esp],esi
 005C9D67    push        0EC
 005C9D69    push        esi
 005C9D6A    call        user32.GetWindowLongW
 005C9D6F    test        al,8
>005C9D71    je          005C9D7A
 005C9D73    mov         dword ptr [esp],0FFFFFFFE
 005C9D7A    mov         eax,dword ptr [ebx+0A8]
 005C9D80    mov         esi,dword ptr [eax+8]
 005C9D83    dec         esi
 005C9D84    cmp         esi,0
>005C9D87    jl          005C9DB4
 005C9D89    push        213
 005C9D8E    push        0
 005C9D90    push        0
 005C9D92    push        0
 005C9D94    push        0
 005C9D96    mov         eax,dword ptr [esp+14]
 005C9D9A    push        eax
 005C9D9B    mov         edx,esi
 005C9D9D    mov         eax,dword ptr [ebx+0A8]
 005C9DA3    call        TList.Get
 005C9DA8    push        eax
 005C9DA9    call        user32.SetWindowPos
 005C9DAE    dec         esi
 005C9DAF    cmp         esi,0FFFFFFFF
>005C9DB2    jne         005C9D89
 005C9DB4    inc         dword ptr [ebx+0AC]
 005C9DBA    pop         ecx
 005C9DBB    pop         edx
 005C9DBC    pop         esi
 005C9DBD    pop         ebx
 005C9DBE    ret
end;*}

//005C9DC0
procedure TApplication.ModalStarted;
begin
{*
 005C9DC0    push        ebx
 005C9DC1    inc         dword ptr [eax+0DC];TApplication.FModalLevel:Integer
 005C9DC7    cmp         dword ptr [eax+0DC],1;TApplication.FModalLevel:Integer
>005C9DCE    jne         005C9DEA
 005C9DD0    cmp         word ptr [eax+12A],0;TApplication.?f12A:word
>005C9DD8    je          005C9DEA
 005C9DDA    mov         ebx,eax
 005C9DDC    mov         edx,eax
 005C9DDE    mov         eax,dword ptr [ebx+12C];TApplication.?f12C:dword
 005C9DE4    call        dword ptr [ebx+128];TApplication.FOnModalBegin
 005C9DEA    pop         ebx
 005C9DEB    ret
*}
end;

//005C9DEC
procedure TApplication.ModalFinished;
begin
{*
 005C9DEC    push        ebx
 005C9DED    dec         dword ptr [eax+0DC];TApplication.FModalLevel:Integer
 005C9DF3    cmp         dword ptr [eax+0DC],0;TApplication.FModalLevel:Integer
>005C9DFA    jne         005C9E16
 005C9DFC    cmp         word ptr [eax+132],0;TApplication.?f132:word
>005C9E04    je          005C9E16
 005C9E06    mov         ebx,eax
 005C9E08    mov         edx,eax
 005C9E0A    mov         eax,dword ptr [ebx+134];TApplication.?f134:dword
 005C9E10    call        dword ptr [ebx+130];TApplication.FOnModalEnd
 005C9E16    pop         ebx
 005C9E17    ret
*}
end;

//005C9E18
procedure TApplication.NormalizeTopMosts;
begin
{*
 005C9E18    xor         edx,edx
 005C9E1A    call        005C9D18
 005C9E1F    ret
*}
end;

//005C9E20
procedure TApplication.NormalizeAllTopMosts;
begin
{*
 005C9E20    mov         dl,1
 005C9E22    call        005C9D18
 005C9E27    ret
*}
end;

//005C9E28
procedure TApplication.RemovePopupForm(APopupForm:TCustomForm);
begin
{*
 005C9E28    push        ebx
 005C9E29    push        esi
 005C9E2A    push        edi
 005C9E2B    push        ecx
 005C9E2C    mov         ecx,dword ptr [eax+0E4];TApplication.FPopupForms:TPopupFormArray
 005C9E32    mov         dword ptr [esp],ecx
 005C9E35    mov         ecx,dword ptr [esp]
 005C9E38    test        ecx,ecx
>005C9E3A    je          005C9E41
 005C9E3C    sub         ecx,4
 005C9E3F    mov         ecx,dword ptr [ecx]
 005C9E41    mov         esi,ecx
 005C9E43    dec         esi
 005C9E44    test        esi,esi
>005C9E46    jl          005C9E79
 005C9E48    inc         esi
 005C9E49    xor         ecx,ecx
 005C9E4B    lea         edi,[ecx+ecx*2]
 005C9E4E    mov         ebx,dword ptr [eax+0E4];TApplication.FPopupForms:TPopupFormArray
 005C9E54    cmp         edx,dword ptr [ebx+edi*4+4]
>005C9E58    jne         005C9E75
 005C9E5A    mov         edx,dword ptr [eax+0E4];TApplication.FPopupForms:TPopupFormArray
 005C9E60    xor         ebx,ebx
 005C9E62    mov         dword ptr [edx+edi*4+4],ebx
 005C9E66    mov         eax,dword ptr [eax+0E4];TApplication.FPopupForms:TPopupFormArray
 005C9E6C    mov         dword ptr [eax+edi*4],0FFFFFFFF
>005C9E73    jmp         005C9E79
 005C9E75    inc         ecx
 005C9E76    dec         esi
>005C9E77    jne         005C9E4B
 005C9E79    pop         edx
 005C9E7A    pop         edi
 005C9E7B    pop         esi
 005C9E7C    pop         ebx
 005C9E7D    ret
*}
end;

//005C9E80
procedure TApplication.RestoreTopMosts;
begin
{*
 005C9E80    push        ebx
 005C9E81    push        esi
 005C9E82    mov         ebx,eax
 005C9E84    cmp         dword ptr [ebx+188],0;TApplication.FHandle:HWND
>005C9E8B    je          005C9EE7
 005C9E8D    cmp         dword ptr [ebx+0AC],0;TApplication.FTopMostLevel:Integer
>005C9E94    jle         005C9EE7
 005C9E96    dec         dword ptr [ebx+0AC];TApplication.FTopMostLevel:Integer
 005C9E9C    cmp         dword ptr [ebx+0AC],0;TApplication.FTopMostLevel:Integer
>005C9EA3    jne         005C9EE7
 005C9EA5    mov         eax,dword ptr [ebx+0A8];TApplication.FTopMostList:TList
 005C9EAB    mov         esi,dword ptr [eax+8];TList.FCount:Integer
 005C9EAE    dec         esi
 005C9EAF    cmp         esi,0
>005C9EB2    jl          005C9EDC
 005C9EB4    push        213
 005C9EB9    push        0
 005C9EBB    push        0
 005C9EBD    push        0
 005C9EBF    push        0
 005C9EC1    push        0FF
 005C9EC3    mov         edx,esi
 005C9EC5    mov         eax,dword ptr [ebx+0A8];TApplication.FTopMostList:TList
 005C9ECB    call        TList.Get
 005C9ED0    push        eax
 005C9ED1    call        user32.SetWindowPos
 005C9ED6    dec         esi
 005C9ED7    cmp         esi,0FFFFFFFF
>005C9EDA    jne         005C9EB4
 005C9EDC    mov         eax,dword ptr [ebx+0A8];TApplication.FTopMostList:TList
 005C9EE2    mov         edx,dword ptr [eax]
 005C9EE4    call        dword ptr [edx+8];TList.Clear
 005C9EE7    pop         esi
 005C9EE8    pop         ebx
 005C9EE9    ret
*}
end;

//005C9FF8
{*procedure sub_005C9FF8(?:TApplication; ?:?);
begin
 005C9FF8    push        ebx
 005C9FF9    push        esi
 005C9FFA    push        edi
 005C9FFB    add         esp,0FFFFFFF8
 005C9FFE    mov         ebx,edx
 005CA000    mov         esi,eax
 005CA002    mov         eax,[007CA7C8];Application:TApplication
 005CA007    cmp         dword ptr [eax+188],0
>005CA00E    je          005CA172
 005CA014    test        bl,bl
>005CA016    jne         005CA0BD
 005CA01C    cmp         dword ptr [esi+0B4],0
>005CA023    jne         005CA0B2
 005CA029    mov         eax,esi
 005CA02B    call        005CCE5C
 005CA030    push        eax
 005CA031    push        5C9EEC
 005CA036    call        user32.EnumWindows
 005CA03B    cmp         dword ptr [esi+58],0
>005CA03F    je          005CA083
 005CA041    mov         eax,[007CA7C8];Application:TApplication
 005CA046    cmp         byte ptr [eax+0EB],0
>005CA04D    je          005CA083
 005CA04F    mov         eax,dword ptr [esi+0F0]
 005CA055    mov         dword ptr [esp],eax
 005CA058    mov         eax,dword ptr [esp]
 005CA05B    test        eax,eax
>005CA05D    je          005CA064
 005CA05F    sub         eax,4
 005CA062    mov         eax,dword ptr [eax]
 005CA064    mov         edi,eax
 005CA066    dec         edi
 005CA067    cmp         edi,0
>005CA06A    jl          005CA083
 005CA06C    push        0
 005CA06E    mov         eax,dword ptr [esi+0F0]
 005CA074    mov         eax,dword ptr [eax+edi*4]
 005CA077    push        eax
 005CA078    call        user32.ShowWindow
 005CA07D    dec         edi
 005CA07E    cmp         edi,0FFFFFFFF
>005CA081    jne         005CA06C
 005CA083    mov         eax,dword ptr [esi+0B0]
 005CA089    mov         edi,dword ptr [eax+8]
 005CA08C    dec         edi
 005CA08D    cmp         edi,0
>005CA090    jl          005CA0B2
 005CA092    cmp         bl,1
 005CA095    cmc
 005CA096    sbb         eax,eax
 005CA098    push        eax
 005CA099    mov         edx,edi
 005CA09B    mov         eax,dword ptr [esi+0B0]
 005CA0A1    call        TList.Get
 005CA0A6    push        eax
 005CA0A7    call        user32.ShowOwnedPopups
 005CA0AC    dec         edi
 005CA0AD    cmp         edi,0FFFFFFFF
>005CA0B0    jne         005CA092
 005CA0B2    inc         dword ptr [esi+0B4]
>005CA0B8    jmp         005CA172
 005CA0BD    cmp         dword ptr [esi+0B4],0
>005CA0C4    jle         005CA172
 005CA0CA    dec         dword ptr [esi+0B4]
 005CA0D0    cmp         dword ptr [esi+0B4],0
>005CA0D7    jne         005CA172
 005CA0DD    cmp         dword ptr [esi+58],0
>005CA0E1    je          005CA127
 005CA0E3    mov         eax,[007CA7C8];Application:TApplication
 005CA0E8    cmp         byte ptr [eax+0EB],0
>005CA0EF    je          005CA127
 005CA0F1    mov         eax,dword ptr [esi+0F0]
 005CA0F7    mov         dword ptr [esp+4],eax
 005CA0FB    mov         eax,dword ptr [esp+4]
 005CA0FF    test        eax,eax
>005CA101    je          005CA108
 005CA103    sub         eax,4
 005CA106    mov         eax,dword ptr [eax]
 005CA108    mov         edi,eax
 005CA10A    dec         edi
 005CA10B    cmp         edi,0
>005CA10E    jl          005CA127
 005CA110    push        5
 005CA112    mov         eax,dword ptr [esi+0F0]
 005CA118    mov         eax,dword ptr [eax+edi*4]
 005CA11B    push        eax
 005CA11C    call        user32.ShowWindow
 005CA121    dec         edi
 005CA122    cmp         edi,0FFFFFFFF
>005CA125    jne         005CA110
 005CA127    mov         eax,dword ptr [esi+0B0]
 005CA12D    mov         edi,dword ptr [eax+8]
 005CA130    dec         edi
 005CA131    cmp         edi,0
>005CA134    jl          005CA156
 005CA136    cmp         bl,1
 005CA139    cmc
 005CA13A    sbb         eax,eax
 005CA13C    push        eax
 005CA13D    mov         edx,edi
 005CA13F    mov         eax,dword ptr [esi+0B0]
 005CA145    call        TList.Get
 005CA14A    push        eax
 005CA14B    call        user32.ShowOwnedPopups
 005CA150    dec         edi
 005CA151    cmp         edi,0FFFFFFFF
>005CA154    jne         005CA136
 005CA156    mov         eax,dword ptr [esi+0B0]
 005CA15C    mov         edx,dword ptr [eax]
 005CA15E    call        dword ptr [edx+8]
 005CA161    lea         eax,[esi+0F0]
 005CA167    mov         edx,dword ptr ds:[5BB5AC];:TApplication.:1
 005CA16D    call        @DynArrayClear
 005CA172    pop         ecx
 005CA173    pop         edx
 005CA174    pop         edi
 005CA175    pop         esi
 005CA176    pop         ebx
 005CA177    ret
end;*}

//005CA178
function TApplication.UseRightToLeftReading:Boolean;
begin
{*
 005CA178    mov         edx,dword ptr ds:[7C4EF4];^gvar_007C7CB8:Cardinal
 005CA17E    cmp         byte ptr [edx+0D],0
>005CA182    je          005CA18A
 005CA184    cmp         byte ptr [eax+41],0;TApplication.FBiDiMode:TBiDiMode
>005CA188    jne         005CA18D
 005CA18A    xor         eax,eax
 005CA18C    ret
 005CA18D    mov         al,1
 005CA18F    ret
*}
end;

//005CA190
function TApplication.UseRightToLeftAlignment:Boolean;
begin
{*
 005CA190    mov         edx,dword ptr ds:[7C4EF4];^gvar_007C7CB8:Cardinal
 005CA196    cmp         byte ptr [edx+0D],0
>005CA19A    je          005CA1A2
 005CA19C    cmp         byte ptr [eax+41],1;TApplication.FBiDiMode:TBiDiMode
>005CA1A0    je          005CA1A5
 005CA1A2    xor         eax,eax
 005CA1A4    ret
 005CA1A5    mov         al,1
 005CA1A7    ret
*}
end;

//005CA1A8
{*function sub_005CA1A8(?:?; ?:?):?;
begin
 005CA1A8    push        ebx
 005CA1A9    push        esi
 005CA1AA    push        edi
 005CA1AB    mov         esi,edx
 005CA1AD    mov         edi,eax
 005CA1AF    xor         ebx,ebx
 005CA1B1    mov         eax,dword ptr [esi]
 005CA1B3    cmp         eax,dword ptr ds:[7CA7DC];gvar_007CA7DC:LongWord
>005CA1B9    je          005CA1C0
 005CA1BB    cmp         eax,1A
>005CA1BE    jne         005CA220
 005CA1C0    cmp         byte ptr [edi+6D],0
>005CA1C4    je          005CA1D5
 005CA1C6    push        400
 005CA1CB    call        kernel32.SetThreadLocale
 005CA1D0    call        004253CC
 005CA1D5    cmp         byte ptr [edi+6E],0
>005CA1D9    je          005CA1E5
 005CA1DB    mov         eax,[007CA7CC];Screen:TScreen
 005CA1E0    call        005C8824
 005CA1E5    mov         eax,dword ptr [esi]
 005CA1E7    cmp         eax,dword ptr ds:[7CA7DC];gvar_007CA7DC:LongWord
>005CA1ED    jne         005CA220
 005CA1EF    mov         eax,[007CA7CC];Screen:TScreen
 005CA1F4    call        TScreen.ResetFonts
 005CA1F9    cmp         byte ptr [edi+0EB],0
>005CA200    je          005CA220
 005CA202    mov         cl,1
 005CA204    mov         dl,1
 005CA206    mov         eax,dword ptr [edi+188]
 005CA20C    call        005BEA20
 005CA211    mov         cl,1
 005CA213    xor         edx,edx
 005CA215    mov         eax,dword ptr [edi+188]
 005CA21B    call        005BEA20
 005CA220    mov         eax,ebx
 005CA222    pop         edi
 005CA223    pop         esi
 005CA224    pop         ebx
 005CA225    ret
end;*}

//005CA228
{*procedure sub_005CA228(?:?; ?:?);
begin
 005CA228    push        ebp
 005CA229    mov         ebp,esp
 005CA22B    add         esp,0FFFFFFF8
 005CA22E    push        ebx
 005CA22F    push        esi
 005CA230    xor         ecx,ecx
 005CA232    mov         dword ptr [ebp-8],ecx
 005CA235    mov         esi,edx
 005CA237    mov         ebx,eax
 005CA239    xor         eax,eax
 005CA23B    push        ebp
 005CA23C    push        5CA297
 005CA241    push        dword ptr fs:[eax]
 005CA244    mov         dword ptr fs:[eax],esp
 005CA247    cmp         word ptr [ebx+182],0
>005CA24F    je          005CA281
 005CA251    mov         eax,dword ptr [esi+0C]
 005CA254    mov         dword ptr [ebp-4],eax
 005CA257    lea         eax,[ebp-8]
 005CA25A    mov         edx,dword ptr [esi+8]
 005CA25D    call        @UStrFromPWChar
 005CA262    mov         eax,dword ptr [ebp-8]
 005CA265    push        eax
 005CA266    lea         eax,[ebp-4]
 005CA269    push        eax
 005CA26A    mov         ecx,dword ptr [esi+4]
 005CA26D    mov         edx,ebx
 005CA26F    mov         eax,dword ptr [ebx+184]
 005CA275    call        dword ptr [ebx+180]
 005CA27B    mov         eax,dword ptr [ebp-4]
 005CA27E    mov         dword ptr [esi+0C],eax
 005CA281    xor         eax,eax
 005CA283    pop         edx
 005CA284    pop         ecx
 005CA285    pop         ecx
 005CA286    mov         dword ptr fs:[eax],edx
 005CA289    push        5CA29E
 005CA28E    lea         eax,[ebp-8]
 005CA291    call        @UStrClr
 005CA296    ret
>005CA297    jmp         @HandleFinally
>005CA29C    jmp         005CA28E
 005CA29E    pop         esi
 005CA29F    pop         ebx
 005CA2A0    pop         ecx
 005CA2A1    pop         ecx
 005CA2A2    pop         ebp
 005CA2A3    ret
end;*}

//005CA2A4
{*procedure sub_005CA2A4(?:?);
begin
 005CA2A4    push        ebp
 005CA2A5    mov         ebp,esp
 005CA2A7    mov         eax,dword ptr [ebp+8]
 005CA2AA    mov         eax,dword ptr [eax-8]
 005CA2AD    mov         eax,dword ptr [eax+8]
 005CA2B0    push        eax
 005CA2B1    mov         eax,dword ptr [ebp+8]
 005CA2B4    mov         eax,dword ptr [eax-8]
 005CA2B7    mov         eax,dword ptr [eax+4]
 005CA2BA    push        eax
 005CA2BB    mov         eax,dword ptr [ebp+8]
 005CA2BE    mov         eax,dword ptr [eax-8]
 005CA2C1    mov         eax,dword ptr [eax]
 005CA2C3    push        eax
 005CA2C4    mov         eax,dword ptr [ebp+8]
 005CA2C7    mov         eax,dword ptr [eax-4]
 005CA2CA    mov         eax,dword ptr [eax+188]
 005CA2D0    push        eax
 005CA2D1    call        user32.DefWindowProcW
 005CA2D6    mov         edx,dword ptr [ebp+8]
 005CA2D9    mov         edx,dword ptr [edx-8]
 005CA2DC    mov         dword ptr [edx+0C],eax
 005CA2DF    pop         ebp
 005CA2E0    ret
end;*}

//005CA2E4
{*procedure sub_005CA2E4(?:?);
begin
 005CA2E4    push        ebp
 005CA2E5    mov         ebp,esp
 005CA2E7    add         esp,0FFFFFFC0
 005CA2EA    push        ebx
 005CA2EB    lea         eax,[ebp-40]
 005CA2EE    push        eax
 005CA2EF    mov         eax,dword ptr [ebp+8]
 005CA2F2    mov         eax,dword ptr [eax-4]
 005CA2F5    mov         eax,dword ptr [eax+188]
 005CA2FB    push        eax
 005CA2FC    call        user32.BeginPaint
 005CA301    mov         ebx,eax
 005CA303    mov         eax,dword ptr [ebp+8]
 005CA306    mov         eax,dword ptr [eax-4]
 005CA309    call        005CAAE4
 005CA30E    push        eax
 005CA30F    push        0
 005CA311    push        0
 005CA313    push        ebx
 005CA314    call        user32.DrawIcon
 005CA319    lea         eax,[ebp-40]
 005CA31C    push        eax
 005CA31D    mov         eax,dword ptr [ebp+8]
 005CA320    mov         eax,dword ptr [eax-4]
 005CA323    mov         eax,dword ptr [eax+188]
 005CA329    push        eax
 005CA32A    call        user32.EndPaint
 005CA32F    pop         ebx
 005CA330    mov         esp,ebp
 005CA332    pop         ebp
 005CA333    ret
end;*}

//005CA334
{*procedure sub_005CA334(?:?; ?:?);
begin
 005CA334    push        ebp
 005CA335    mov         ebp,esp
 005CA337    add         esp,0FFFFFFB8
 005CA33A    push        ebx
 005CA33B    push        esi
 005CA33C    push        edi
 005CA33D    mov         dword ptr [ebp-8],edx
 005CA340    mov         dword ptr [ebp-4],eax
 005CA343    xor         edx,edx
 005CA345    push        ebp
 005CA346    push        5CAAC6
 005CA34B    push        dword ptr fs:[edx]
 005CA34E    mov         dword ptr fs:[edx],esp
 005CA351    mov         eax,dword ptr [ebp-8]
 005CA354    xor         edx,edx
 005CA356    mov         dword ptr [eax+0C],edx
 005CA359    mov         eax,dword ptr [ebp-4]
 005CA35C    mov         eax,dword ptr [eax+0C8]
 005CA362    mov         ebx,dword ptr [eax+8]
 005CA365    dec         ebx
 005CA366    test        ebx,ebx
>005CA368    jl          005CA39C
 005CA36A    inc         ebx
 005CA36B    xor         esi,esi
 005CA36D    mov         eax,dword ptr [ebp-4]
 005CA370    mov         eax,dword ptr [eax+0C8]
 005CA376    mov         edx,esi
 005CA378    call        TList.Get
 005CA37D    mov         edi,eax
 005CA37F    mov         edx,dword ptr [ebp-8]
 005CA382    mov         eax,dword ptr [edi+4]
 005CA385    call        dword ptr [edi]
 005CA387    test        al,al
>005CA389    je          005CA398
 005CA38B    xor         eax,eax
 005CA38D    pop         edx
 005CA38E    pop         ecx
 005CA38F    pop         ecx
 005CA390    mov         dword ptr fs:[eax],edx
>005CA393    jmp         005CAADB
 005CA398    inc         esi
 005CA399    dec         ebx
>005CA39A    jne         005CA36D
 005CA39C    mov         edx,dword ptr [ebp-8]
 005CA39F    mov         eax,dword ptr [ebp-4]
 005CA3A2    call        005CA1A8
 005CA3A7    mov         ebx,dword ptr [ebp-8]
 005CA3AA    mov         ebx,dword ptr [ebx]
 005CA3AC    mov         eax,ebx
 005CA3AE    cmp         eax,112
>005CA3B3    jg          005CA464
>005CA3B9    je          005CA507
 005CA3BF    cmp         eax,14
>005CA3C2    jg          005CA422
>005CA3C4    je          005CA5A3
 005CA3CA    cmp         eax,11
>005CA3CD    ja          005CAAB5
 005CA3D3    jmp         dword ptr [eax*4+5CA3DA]
 005CA3D3    dd          005CAAA0
 005CA3D3    dd          005CAAB5
 005CA3D3    dd          005CAAB5
 005CA3D3    dd          005CAAB5
 005CA3D3    dd          005CAAB5
 005CA3D3    dd          005CA548
 005CA3D3    dd          005CAAB5
 005CA3D3    dd          005CA5CB
 005CA3D3    dd          005CAAB5
 005CA3D3    dd          005CAAB5
 005CA3D3    dd          005CA67C
 005CA3D3    dd          005CAAB5
 005CA3D3    dd          005CAAB5
 005CA3D3    dd          005CAAB5
 005CA3D3    dd          005CAAB5
 005CA3D3    dd          005CA579
 005CA3D3    dd          005CA561
 005CA3D3    dd          005CA789
 005CA422    cmp         eax,1D
>005CA425    jg          005CA44D
>005CA427    je          005CAA21
 005CA42D    sub         eax,16
>005CA430    je          005CA72E
 005CA436    sub         eax,4
>005CA439    je          005CA9F8
 005CA43F    sub         eax,2
>005CA442    je          005CA5EF
>005CA448    jmp         005CAAB5
 005CA44D    sub         eax,37
>005CA450    je          005CA5B8
 005CA456    sub         eax,1C
>005CA459    je          005CA974
>005CA45F    jmp         005CAAB5
 005CA464    cmp         eax,0B017
>005CA469    jg          005CA4BE
>005CA46B    je          005CA7D8
 005CA471    cmp         eax,0B000
>005CA476    jg          005CA4A5
>005CA478    je          005CA871
 005CA47E    add         eax,0FFFFFECE
 005CA483    sub         eax,7
>005CA486    jb          005CA708
 005CA48C    sub         eax,178
>005CA491    je          005CAAA9
 005CA497    sub         eax,69
>005CA49A    je          005CAA37
>005CA4A0    jmp         005CAAB5
 005CA4A5    sub         eax,0B001
>005CA4AA    je          005CA8F0
 005CA4B0    sub         eax,15
>005CA4B3    je          005CA7B6
>005CA4B9    jmp         005CAAB5
 005CA4BE    cmp         eax,0B031
>005CA4C3    jg          005CA4EB
>005CA4C5    je          005CA9C7
 005CA4CB    sub         eax,0B01A
>005CA4D0    je          005CA930
 005CA4D6    sub         eax,5
>005CA4D9    je          005CA974
 005CA4DF    dec         eax
>005CA4E0    je          005CA98E
>005CA4E6    jmp         005CAAB5
 005CA4EB    add         eax,0FFFF4FC1
 005CA4F0    sub         eax,2
>005CA4F3    jb          005CA798
 005CA4F9    sub         eax,15
>005CA4FC    je          005CAA85
>005CA502    jmp         005CAAB5
 005CA507    mov         eax,dword ptr [ebp-8]
 005CA50A    mov         eax,dword ptr [eax+4]
 005CA50D    and         eax,0FFF0
 005CA512    sub         eax,0F020
>005CA517    je          005CA522
 005CA519    sub         eax,100
>005CA51E    je          005CA52F
>005CA520    jmp         005CA53C
 005CA522    mov         eax,dword ptr [ebp-4]
 005CA525    call        TApplication.Minimize
>005CA52A    jmp         005CAABC
 005CA52F    mov         eax,dword ptr [ebp-4]
 005CA532    call        TApplication.Restore
>005CA537    jmp         005CAABC
 005CA53C    push        ebp
 005CA53D    call        005CA2A4
 005CA542    pop         ecx
>005CA543    jmp         005CAABC
 005CA548    mov         eax,dword ptr [ebp-8]
 005CA54B    cmp         dword ptr [eax+4],1
>005CA54F    jne         005CAABC
 005CA555    mov         eax,dword ptr [ebp-4]
 005CA558    mov         byte ptr [eax+40],1
>005CA55C    jmp         005CAABC
 005CA561    mov         eax,dword ptr [ebp-4]
 005CA564    mov         eax,dword ptr [eax+58]
 005CA567    test        eax,eax
>005CA569    je          005CAABC
 005CA56F    call        TCustomForm.Close
>005CA574    jmp         005CAABC
 005CA579    mov         eax,dword ptr [ebp-4]
 005CA57C    mov         eax,dword ptr [eax+188]
 005CA582    call        005BE99C
 005CA587    test        eax,eax
>005CA589    je          005CA597
 005CA58B    push        ebp
 005CA58C    call        005CA2E4
 005CA591    pop         ecx
>005CA592    jmp         005CAABC
 005CA597    push        ebp
 005CA598    call        005CA2A4
 005CA59D    pop         ecx
>005CA59E    jmp         005CAABC
 005CA5A3    mov         eax,dword ptr [ebp-8]
 005CA5A6    mov         dword ptr [eax],27
 005CA5AC    push        ebp
 005CA5AD    call        005CA2A4
 005CA5B2    pop         ecx
>005CA5B3    jmp         005CAABC
 005CA5B8    mov         eax,dword ptr [ebp-4]
 005CA5BB    call        005CAAE4
 005CA5C0    mov         edx,dword ptr [ebp-8]
 005CA5C3    mov         dword ptr [edx+0C],eax
>005CA5C6    jmp         005CAABC
 005CA5CB    push        0
 005CA5CD    push        0
 005CA5CF    push        0B01A
 005CA5D4    mov         eax,dword ptr [ebp-4]
 005CA5D7    mov         eax,dword ptr [eax+188]
 005CA5DD    push        eax
 005CA5DE    call        user32.PostMessageW
 005CA5E3    push        ebp
 005CA5E4    call        005CA2A4
 005CA5E9    pop         ecx
>005CA5EA    jmp         005CAABC
 005CA5EF    push        ebp
 005CA5F0    call        005CA2A4
 005CA5F5    pop         ecx
 005CA5F6    mov         eax,dword ptr [ebp-8]
 005CA5F9    mov         esi,eax
 005CA5FB    lea         edi,[ebp-28]
 005CA5FE    movs        dword ptr [edi],dword ptr [esi]
 005CA5FF    movs        dword ptr [edi],dword ptr [esi]
 005CA600    movs        dword ptr [edi],dword ptr [esi]
 005CA601    movs        dword ptr [edi],dword ptr [esi]
 005CA602    cmp         dword ptr [ebp-24],1
 005CA606    sbb         eax,eax
 005CA608    inc         eax
 005CA609    mov         edx,dword ptr [ebp-4]
 005CA60C    mov         byte ptr [edx+0BD],al
 005CA612    test        al,al
>005CA614    je          005CA657
 005CA616    mov         eax,dword ptr [ebp-4]
 005CA619    cmp         byte ptr [eax+0EB],0
>005CA620    je          005CA632
 005CA622    mov         eax,dword ptr [ebp-4]
 005CA625    cmp         byte ptr [eax+40],0
>005CA629    je          005CA632
 005CA62B    mov         eax,dword ptr [ebp-4]
 005CA62E    mov         byte ptr [eax+40],0
 005CA632    mov         eax,dword ptr [ebp-4]
 005CA635    call        TApplication.RestoreTopMosts
 005CA63A    push        0
 005CA63C    push        0
 005CA63E    push        0B000
 005CA643    mov         eax,dword ptr [ebp-4]
 005CA646    mov         eax,dword ptr [eax+188]
 005CA64C    push        eax
 005CA64D    call        user32.PostMessageW
>005CA652    jmp         005CAABC
 005CA657    mov         eax,dword ptr [ebp-4]
 005CA65A    call        TApplication.NormalizeTopMosts
 005CA65F    push        0
 005CA661    push        0
 005CA663    push        0B001
 005CA668    mov         eax,dword ptr [ebp-4]
 005CA66B    mov         eax,dword ptr [eax+188]
 005CA671    push        eax
 005CA672    call        user32.PostMessageW
>005CA677    jmp         005CAABC
 005CA67C    mov         eax,dword ptr [ebp-8]
 005CA67F    mov         esi,eax
 005CA681    lea         edi,[ebp-38]
 005CA684    movs        dword ptr [edi],dword ptr [esi]
 005CA685    movs        dword ptr [edi],dword ptr [esi]
 005CA686    movs        dword ptr [edi],dword ptr [esi]
 005CA687    movs        dword ptr [edi],dword ptr [esi]
 005CA688    cmp         dword ptr [ebp-34],0
>005CA68C    je          005CA6C8
 005CA68E    cmp         byte ptr ds:[7A1CC0],0;gvar_007A1CC0
>005CA695    jne         005CA6BC
 005CA697    mov         eax,dword ptr [ebp-4]
 005CA69A    call        TApplication.RestoreTopMosts
 005CA69F    mov         eax,dword ptr [ebp-4]
 005CA6A2    mov         eax,dword ptr [eax+0CC]
 005CA6A8    test        eax,eax
>005CA6AA    je          005CA6BC
 005CA6AC    call        EnableTaskWindows
 005CA6B1    mov         eax,dword ptr [ebp-4]
 005CA6B4    xor         edx,edx
 005CA6B6    mov         dword ptr [eax+0CC],edx
 005CA6BC    push        ebp
 005CA6BD    call        005CA2A4
 005CA6C2    pop         ecx
>005CA6C3    jmp         005CAABC
 005CA6C8    push        ebp
 005CA6C9    call        005CA2A4
 005CA6CE    pop         ecx
 005CA6CF    mov         eax,dword ptr [ebp-4]
 005CA6D2    cmp         dword ptr [eax+0CC],0
>005CA6D9    jne         005CA6FB
 005CA6DB    cmp         byte ptr ds:[7A1CC0],0;gvar_007A1CC0
>005CA6E2    jne         005CA6FB
 005CA6E4    mov         eax,dword ptr [ebp-4]
 005CA6E7    mov         eax,dword ptr [eax+188]
 005CA6ED    call        DisableTaskWindows
 005CA6F2    mov         edx,dword ptr [ebp-4]
 005CA6F5    mov         dword ptr [edx+0CC],eax
 005CA6FB    mov         eax,dword ptr [ebp-4]
 005CA6FE    call        TApplication.NormalizeAllTopMosts
>005CA703    jmp         005CAABC
 005CA708    mov         esi,dword ptr [ebp-8]
 005CA70B    mov         esi,dword ptr [esi+8]
 005CA70E    push        esi
 005CA70F    mov         eax,dword ptr [ebp-8]
 005CA712    mov         eax,dword ptr [eax+4]
 005CA715    push        eax
 005CA716    add         ebx,0BC00
 005CA71C    push        ebx
 005CA71D    push        esi
 005CA71E    call        user32.SendMessageW
 005CA723    mov         edx,dword ptr [ebp-8]
 005CA726    mov         dword ptr [edx+0C],eax
>005CA729    jmp         005CAABC
 005CA72E    mov         eax,dword ptr [ebp-8]
 005CA731    mov         esi,eax
 005CA733    lea         edi,[ebp-48]
 005CA736    movs        dword ptr [edi],dword ptr [esi]
 005CA737    movs        dword ptr [edi],dword ptr [esi]
 005CA738    movs        dword ptr [edi],dword ptr [esi]
 005CA739    movs        dword ptr [edi],dword ptr [esi]
 005CA73A    xor         eax,eax
 005CA73C    mov         dword ptr [ebp-3C],eax
 005CA73F    mov         eax,dword ptr [ebp-4]
 005CA742    mov         eax,dword ptr [eax+58]
 005CA745    test        eax,eax
>005CA747    je          005CA76B
 005CA749    cmp         byte ptr [eax+2BE],1
>005CA750    jne         005CA76B
 005CA752    mov         eax,dword ptr [ebp-8]
 005CA755    mov         eax,dword ptr [eax+8]
 005CA758    push        eax
 005CA759    mov         ecx,dword ptr [ebp-8]
 005CA75C    mov         ecx,dword ptr [ecx+4]
 005CA75F    mov         dx,16
 005CA763    mov         eax,dword ptr [ebp-4]
 005CA766    call        005CC120
 005CA76B    cmp         dword ptr [ebp-44],0
>005CA76F    je          005CAABC
 005CA775    mov         eax,[007CA7C8];Application:TApplication
 005CA77A    call        TApplication.Terminate
 005CA77F    call        @Halt0
>005CA784    jmp         005CAABC
 005CA789    mov         eax,dword ptr [ebp-8]
 005CA78C    mov         dword ptr [eax+0C],1
>005CA793    jmp         005CAABC
 005CA798    mov         ecx,dword ptr [ebp-8]
 005CA79B    mov         ecx,dword ptr [ecx+8]
 005CA79E    mov         edx,ebx
 005CA7A0    mov         eax,dword ptr [ebp-4]
 005CA7A3    call        005CCE9C
 005CA7A8    and         eax,7F
 005CA7AB    mov         edx,dword ptr [ebp-8]
 005CA7AE    mov         dword ptr [edx+0C],eax
>005CA7B1    jmp         005CAABC
 005CA7B6    mov         edx,dword ptr [ebp-8]
 005CA7B9    mov         eax,dword ptr [ebp-4]
 005CA7BC    call        005CB198
 005CA7C1    test        al,al
>005CA7C3    je          005CAABC
 005CA7C9    mov         eax,dword ptr [ebp-8]
 005CA7CC    mov         dword ptr [eax+0C],1
>005CA7D3    jmp         005CAABC
 005CA7D8    mov         eax,dword ptr [ebp-4]
 005CA7DB    mov         eax,dword ptr [eax+58]
 005CA7DE    test        eax,eax
>005CA7E0    je          005CAABC
 005CA7E6    mov         ebx,eax
 005CA7E8    mov         eax,ebx
 005CA7EA    call        TWinControl.GetHandle
 005CA7EF    test        eax,eax
>005CA7F1    je          005CAABC
 005CA7F7    mov         eax,ebx
 005CA7F9    call        TWinControl.GetHandle
 005CA7FE    push        eax
 005CA7FF    call        user32.IsWindowEnabled
 005CA804    test        eax,eax
>005CA806    je          005CAABC
 005CA80C    mov         eax,ebx
 005CA80E    call        TWinControl.GetHandle
 005CA813    push        eax
 005CA814    call        user32.IsWindowVisible
 005CA819    test        eax,eax
>005CA81B    je          005CAABC
 005CA821    mov         byte ptr ds:[7A1CAC],0;gvar_007A1CAC
 005CA828    call        user32.GetFocus
 005CA82D    mov         esi,eax
 005CA82F    mov         eax,ebx
 005CA831    call        TWinControl.GetHandle
 005CA836    push        eax
 005CA837    call        user32.SetFocus
 005CA83C    mov         eax,dword ptr [ebp-8]
 005CA83F    mov         eax,dword ptr [eax+8]
 005CA842    push        eax
 005CA843    mov         ecx,dword ptr [ebp-8]
 005CA846    mov         ecx,dword ptr [ecx+4]
 005CA849    mov         edx,112
 005CA84E    mov         eax,ebx
 005CA850    call        TControl.Perform
 005CA855    push        esi
 005CA856    call        user32.SetFocus
 005CA85B    mov         byte ptr ds:[7A1CAC],1;gvar_007A1CAC
 005CA862    mov         eax,dword ptr [ebp-8]
 005CA865    mov         dword ptr [eax+0C],1
>005CA86C    jmp         005CAABC
 005CA871    mov         eax,dword ptr [ebp-4]
 005CA874    cmp         word ptr [eax+15A],0
>005CA87C    je          005CA890
 005CA87E    mov         ebx,dword ptr [ebp-4]
 005CA881    mov         edx,dword ptr [ebp-4]
 005CA884    mov         eax,dword ptr [ebx+15C]
 005CA88A    call        dword ptr [ebx+158]
 005CA890    mov         eax,[007CA7C8];Application:TApplication
 005CA895    mov         ebx,dword ptr [eax+58]
 005CA898    test        ebx,ebx
>005CA89A    je          005CA8E0
 005CA89C    mov         eax,[007CA7C8];Application:TApplication
 005CA8A1    cmp         byte ptr [eax+0EB],0
>005CA8A8    je          005CA8E0
 005CA8AA    mov         eax,ebx
 005CA8AC    call        TWinControl.GetHandle
 005CA8B1    push        eax
 005CA8B2    call        user32.IsWindowEnabled
 005CA8B7    test        eax,eax
>005CA8B9    jne         005CA8E0
 005CA8BB    mov         eax,dword ptr [ebp-4]
 005CA8BE    mov         eax,dword ptr [eax+58]
 005CA8C1    call        TWinControl.GetHandle
 005CA8C6    mov         edx,dword ptr [ebp-4]
 005CA8C9    cmp         eax,dword ptr [edx+0EC]
>005CA8CF    je          005CA8E0
 005CA8D1    mov         eax,dword ptr [ebp-4]
 005CA8D4    mov         eax,dword ptr [eax+0EC]
 005CA8DA    push        eax
 005CA8DB    call        user32.SetFocus
 005CA8E0    mov         eax,dword ptr [ebp-4]
 005CA8E3    xor         edx,edx
 005CA8E5    mov         dword ptr [eax+0EC],edx
>005CA8EB    jmp         005CAABC
 005CA8F0    mov         eax,dword ptr [ebp-4]
 005CA8F3    mov         eax,dword ptr [eax+188]
 005CA8F9    push        eax
 005CA8FA    call        user32.GetLastActivePopup
 005CA8FF    mov         edx,dword ptr [ebp-4]
 005CA902    mov         dword ptr [edx+0EC],eax
 005CA908    mov         eax,dword ptr [ebp-4]
 005CA90B    cmp         word ptr [eax+152],0
>005CA913    je          005CAABC
 005CA919    mov         ebx,dword ptr [ebp-4]
 005CA91C    mov         edx,dword ptr [ebp-4]
 005CA91F    mov         eax,dword ptr [ebx+154]
 005CA925    call        dword ptr [ebx+150]
>005CA92B    jmp         005CAABC
 005CA930    mov         eax,dword ptr [ebp-4]
 005CA933    mov         eax,dword ptr [eax+188]
 005CA939    call        005BE99C
 005CA93E    test        eax,eax
>005CA940    jne         005CAABC
 005CA946    call        user32.GetFocus
 005CA94B    mov         edx,dword ptr [ebp-4]
 005CA94E    cmp         eax,dword ptr [edx+188]
>005CA954    jne         005CAABC
 005CA95A    xor         eax,eax
 005CA95C    call        FindTopMostWindow
 005CA961    test        eax,eax
>005CA963    je          005CAABC
 005CA969    push        eax
 005CA96A    call        user32.SetFocus
>005CA96F    jmp         005CAABC
 005CA974    mov         ecx,dword ptr [ebp-8]
 005CA977    mov         ecx,dword ptr [ecx+8]
 005CA97A    mov         edx,dword ptr [ebp-8]
 005CA97D    movzx       edx,word ptr [edx+4]
 005CA981    mov         eax,dword ptr [ebp-4]
 005CA984    call        005CBB00
>005CA989    jmp         005CAABC
 005CA98E    mov         eax,dword ptr [ebp-8]
 005CA991    cmp         dword ptr [eax+4],0
>005CA995    jne         005CA9AF
 005CA997    mov         eax,dword ptr [ebp-8]
 005CA99A    mov         eax,dword ptr [eax+8]
 005CA99D    push        dword ptr [eax+4]
 005CA9A0    push        dword ptr [eax]
 005CA9A2    mov         eax,dword ptr [ebp-4]
 005CA9A5    call        TApplication.HookMainWindow
>005CA9AA    jmp         005CAABC
 005CA9AF    mov         eax,dword ptr [ebp-8]
 005CA9B2    mov         eax,dword ptr [eax+8]
 005CA9B5    push        dword ptr [eax+4]
 005CA9B8    push        dword ptr [eax]
 005CA9BA    mov         eax,dword ptr [ebp-4]
 005CA9BD    call        TApplication.UnhookMainWindow
>005CA9C2    jmp         005CAABC
 005CA9C7    mov         eax,dword ptr [ebp-8]
 005CA9CA    cmp         dword ptr [eax+4],1
>005CA9CE    jne         005CA9E4
 005CA9D0    mov         eax,dword ptr [ebp-4]
 005CA9D3    mov         eax,dword ptr [eax+0D0]
 005CA9D9    mov         edx,dword ptr [ebp-8]
 005CA9DC    mov         dword ptr [edx+0C],eax
>005CA9DF    jmp         005CAABC
 005CA9E4    mov         eax,dword ptr [ebp-8]
 005CA9E7    mov         eax,dword ptr [eax+8]
 005CA9EA    mov         edx,dword ptr [ebp-4]
 005CA9ED    mov         dword ptr [edx+0D0],eax
>005CA9F3    jmp         005CAABC
 005CA9F8    mov         edx,dword ptr [ebp-8]
 005CA9FB    mov         edx,dword ptr [edx+4]
 005CA9FE    mov         eax,[007C4DA0];^gvar_007CA5D4
 005CAA03    mov         eax,dword ptr [eax]
 005CAA05    call        TMouse.SettingChanged
 005CAA0A    mov         edx,dword ptr [ebp-8]
 005CAA0D    mov         eax,dword ptr [ebp-4]
 005CAA10    call        005CA228
 005CAA15    push        ebp
 005CAA16    call        005CA2A4
 005CAA1B    pop         ecx
>005CAA1C    jmp         005CAABC
 005CAA21    mov         eax,[007CA7CC];Screen:TScreen
 005CAA26    call        TScreen.ResetFonts
 005CAA2B    push        ebp
 005CAA2C    call        005CA2A4
 005CAA31    pop         ecx
>005CAA32    jmp         005CAABC
 005CAA37    call        StyleServices
 005CAA3C    call        TCustomStyleServices.ApplyThemeChange
 005CAA41    mov         dword ptr [ebp-18],0B051
 005CAA48    xor         eax,eax
 005CAA4A    mov         dword ptr [ebp-14],eax
 005CAA4D    xor         eax,eax
 005CAA4F    mov         dword ptr [ebp-10],eax
 005CAA52    xor         eax,eax
 005CAA54    mov         dword ptr [ebp-0C],eax
 005CAA57    mov         eax,[007CA7CC];Screen:TScreen
 005CAA5C    call        TScreen.GetFormCount
 005CAA61    mov         ebx,eax
 005CAA63    dec         ebx
 005CAA64    test        ebx,ebx
>005CAA66    jl          005CAABC
 005CAA68    inc         ebx
 005CAA69    xor         esi,esi
 005CAA6B    mov         edx,esi
 005CAA6D    mov         eax,[007CA7CC];Screen:TScreen
 005CAA72    call        TScreen.GetForm
 005CAA77    lea         edx,[ebp-18]
 005CAA7A    call        TWinControl.Broadcast
 005CAA7F    inc         esi
 005CAA80    dec         ebx
>005CAA81    jne         005CAA6B
>005CAA83    jmp         005CAABC
 005CAA85    mov         eax,dword ptr [ebp-8]
 005CAA88    mov         eax,dword ptr [eax+8]
 005CAA8B    push        eax
 005CAA8C    mov         ecx,dword ptr [ebp-8]
 005CAA8F    mov         ecx,dword ptr [ecx+4]
 005CAA92    mov         dx,0B056
 005CAA96    mov         eax,dword ptr [ebp-4]
 005CAA99    call        005CC120
>005CAA9E    jmp         005CAABC
 005CAAA0    xor         eax,eax
 005CAAA2    call        CheckSynchronize
>005CAAA7    jmp         005CAABC
 005CAAA9    mov         eax,[007CA7CC];Screen:TScreen
 005CAAAE    call        TScreen.GetMonitors
>005CAAB3    jmp         005CAABC
 005CAAB5    push        ebp
 005CAAB6    call        005CA2A4
 005CAABB    pop         ecx
 005CAABC    xor         eax,eax
 005CAABE    pop         edx
 005CAABF    pop         ecx
 005CAAC0    pop         ecx
 005CAAC1    mov         dword ptr fs:[eax],edx
>005CAAC4    jmp         005CAADB
>005CAAC6    jmp         @HandleAnyException
 005CAACB    mov         edx,dword ptr [ebp-4]
 005CAACE    mov         eax,dword ptr [ebp-4]
 005CAAD1    call        TApplication.HandleException
 005CAAD6    call        @DoneExcept
 005CAADB    pop         edi
 005CAADC    pop         esi
 005CAADD    pop         ebx
 005CAADE    mov         esp,ebp
 005CAAE0    pop         ebp
 005CAAE1    ret
end;*}

//005CAAE4
procedure sub_005CAAE4(?:TApplication);
begin
{*
 005CAAE4    mov         eax,dword ptr [eax+0B8];TApplication.FIcon:TIcon
 005CAAEA    call        TIcon.GetHandle
 005CAAEF    test        eax,eax
>005CAAF1    jne         005CAAFF
 005CAAF3    push        7F00
 005CAAF8    push        0
 005CAAFA    call        user32.LoadIconW
 005CAAFF    ret
*}
end;

//005CAB00
procedure TApplication.Minimize;
begin
{*
 005CAB00    push        ebx
 005CAB01    mov         ebx,eax
 005CAB03    mov         eax,dword ptr [ebx+188];TApplication.FHandle:HWND
 005CAB09    call        005BE99C
 005CAB0E    test        eax,eax
>005CAB10    jne         005CAC02
 005CAB16    mov         eax,ebx
 005CAB18    call        TApplication.NormalizeTopMosts
 005CAB1D    cmp         byte ptr [ebx+0EB],0;TApplication.FMainFormOnTaskBar:Boolean
>005CAB24    jne         005CAB32
 005CAB26    mov         eax,dword ptr [ebx+188];TApplication.FHandle:HWND
 005CAB2C    push        eax
 005CAB2D    call        user32.SetActiveWindow
 005CAB32    mov         byte ptr [ebx+40],1;TApplication.FAppIconic:Boolean
 005CAB36    xor         edx,edx
 005CAB38    mov         eax,ebx
 005CAB3A    call        005C9FF8
 005CAB3F    cmp         byte ptr [ebx+0EB],0;TApplication.FMainFormOnTaskBar:Boolean
>005CAB46    je          005CAB67
 005CAB48    mov         eax,dword ptr [ebx+58];TApplication.FMainForm:TForm
 005CAB4B    test        eax,eax
>005CAB4D    je          005CAB5B
 005CAB4F    mov         dl,1
 005CAB51    call        TForm.SetWindowState
>005CAB56    jmp         005CABEA
 005CAB5B    mov         byte ptr [ebx+0F4],1;TApplication.FInitialMainFormState:TWindowState
>005CAB62    jmp         005CABEA
 005CAB67    cmp         dword ptr [ebx+58],0;TApplication.FMainForm:TForm
>005CAB6B    je          005CABDA
 005CAB6D    cmp         byte ptr [ebx+6F],0;TApplication.FShowMainForm:Boolean
>005CAB71    jne         005CAB7C
 005CAB73    mov         eax,dword ptr [ebx+58];TApplication.FMainForm:TForm
 005CAB76    cmp         byte ptr [eax+69],0;TForm.FVisible:Boolean
>005CAB7A    je          005CABDA
 005CAB7C    mov         eax,dword ptr [ebx+58];TApplication.FMainForm:TForm
 005CAB7F    call        TWinControl.GetHandle
 005CAB84    push        eax
 005CAB85    call        user32.IsWindowEnabled
 005CAB8A    test        eax,eax
>005CAB8C    je          005CABDA
 005CAB8E    push        40
 005CAB90    push        0
 005CAB92    mov         eax,dword ptr [ebx+58];TApplication.FMainForm:TForm
 005CAB95    mov         eax,dword ptr [eax+58];TForm.FWidth:Integer
 005CAB98    push        eax
 005CAB99    mov         eax,dword ptr [ebx+58];TApplication.FMainForm:TForm
 005CAB9C    call        TCustomForm.GetTop
 005CABA1    push        eax
 005CABA2    mov         eax,dword ptr [ebx+58];TApplication.FMainForm:TForm
 005CABA5    call        TCustomForm.GetLeft
 005CABAA    push        eax
 005CABAB    mov         eax,dword ptr [ebx+58];TApplication.FMainForm:TForm
 005CABAE    call        TWinControl.GetHandle
 005CABB3    push        eax
 005CABB4    mov         eax,dword ptr [ebx+188];TApplication.FHandle:HWND
 005CABBA    push        eax
 005CABBB    call        user32.SetWindowPos
 005CABC0    push        0
 005CABC2    push        0F020
 005CABC7    push        112
 005CABCC    mov         eax,dword ptr [ebx+188];TApplication.FHandle:HWND
 005CABD2    push        eax
 005CABD3    call        user32.DefWindowProcW
>005CABD8    jmp         005CABEA
 005CABDA    mov         edx,6
 005CABDF    mov         eax,dword ptr [ebx+188];TApplication.FHandle:HWND
 005CABE5    call        005C92A0
 005CABEA    cmp         word ptr [ebx+162],0;TApplication.?f162:word
>005CABF2    je          005CAC02
 005CABF4    mov         edx,ebx
 005CABF6    mov         eax,dword ptr [ebx+164];TApplication.?f164:dword
 005CABFC    call        dword ptr [ebx+160];TApplication.FOnMinimize
 005CAC02    pop         ebx
 005CAC03    ret
*}
end;

//005CAC04
procedure TApplication.Restore;
begin
{*
 005CAC04    push        ebx
 005CAC05    push        esi
 005CAC06    mov         ebx,eax
 005CAC08    mov         eax,dword ptr [ebx+188];TApplication.FHandle:HWND
 005CAC0E    call        005BE99C
 005CAC13    test        eax,eax
>005CAC15    je          005CAD33
 005CAC1B    mov         byte ptr [ebx+40],0;TApplication.FAppIconic:Boolean
 005CAC1F    mov         eax,dword ptr [ebx+188];TApplication.FHandle:HWND
 005CAC25    push        eax
 005CAC26    call        user32.SetActiveWindow
 005CAC2B    mov         esi,dword ptr [ebx+58];TApplication.FMainForm:TForm
 005CAC2E    test        esi,esi
>005CAC30    je          005CACCD
 005CAC36    cmp         byte ptr [ebx+0EB],0;TApplication.FMainFormOnTaskBar:Boolean
>005CAC3D    je          005CAC50
 005CAC3F    push        9
 005CAC41    mov         eax,esi
 005CAC43    call        TWinControl.GetHandle
 005CAC48    push        eax
 005CAC49    call        user32.ShowWindow
>005CAC4E    jmp         005CACCD
 005CAC50    cmp         byte ptr [ebx+6F],0;TApplication.FShowMainForm:Boolean
>005CAC54    jne         005CAC5F
 005CAC56    mov         eax,dword ptr [ebx+58];TApplication.FMainForm:TForm
 005CAC59    cmp         byte ptr [eax+69],0;TForm.FVisible:Boolean
>005CAC5D    je          005CAC8B
 005CAC5F    mov         eax,dword ptr [ebx+58];TApplication.FMainForm:TForm
 005CAC62    call        TWinControl.GetHandle
 005CAC67    push        eax
 005CAC68    call        user32.IsWindowEnabled
 005CAC6D    test        eax,eax
>005CAC6F    je          005CAC8B
 005CAC71    push        0
 005CAC73    push        0F120
 005CAC78    push        112
 005CAC7D    mov         eax,dword ptr [ebx+188];TApplication.FHandle:HWND
 005CAC83    push        eax
 005CAC84    call        user32.DefWindowProcW
>005CAC89    jmp         005CAC9B
 005CAC8B    mov         edx,9
 005CAC90    mov         eax,dword ptr [ebx+188];TApplication.FHandle:HWND
 005CAC96    call        005C92A0
 005CAC9B    push        40
 005CAC9D    push        0
 005CAC9F    push        0
 005CACA1    push        1
 005CACA3    call        user32.GetSystemMetrics
 005CACA8    sar         eax,1
>005CACAA    jns         005CACAF
 005CACAC    adc         eax,0
 005CACAF    push        eax
 005CACB0    push        0
 005CACB2    call        user32.GetSystemMetrics
 005CACB7    sar         eax,1
>005CACB9    jns         005CACBE
 005CACBB    adc         eax,0
 005CACBE    push        eax
 005CACBF    push        0
 005CACC1    mov         eax,dword ptr [ebx+188];TApplication.FHandle:HWND
 005CACC7    push        eax
 005CACC8    call        user32.SetWindowPos
 005CACCD    mov         eax,dword ptr [ebx+58];TApplication.FMainForm:TForm
 005CACD0    test        eax,eax
>005CACD2    je          005CACF2
 005CACD4    cmp         byte ptr [eax+2BE],1;TForm.FWindowState:TWindowState
>005CACDB    jne         005CACF2
 005CACDD    cmp         byte ptr [eax+69],0;TForm.FVisible:Boolean
>005CACE1    jne         005CACF2
 005CACE3    xor         edx,edx
 005CACE5    call        TForm.SetWindowState
 005CACEA    mov         eax,dword ptr [ebx+58];TApplication.FMainForm:TForm
 005CACED    call        TCustomForm.Show
 005CACF2    mov         eax,ebx
 005CACF4    call        TApplication.RestoreTopMosts
 005CACF9    mov         dl,1
 005CACFB    mov         eax,ebx
 005CACFD    call        005C9FF8
 005CAD02    mov         eax,[007CA7CC];Screen:TScreen
 005CAD07    mov         esi,dword ptr [eax+6C]
 005CAD0A    test        esi,esi
>005CAD0C    je          005CAD1B
 005CAD0E    mov         eax,esi
 005CAD10    call        TWinControl.GetHandle
 005CAD15    push        eax
 005CAD16    call        user32.SetFocus
 005CAD1B    cmp         word ptr [ebx+16A],0;TApplication.?f16A:word
>005CAD23    je          005CAD33
 005CAD25    mov         edx,ebx
 005CAD27    mov         eax,dword ptr [ebx+16C];TApplication.?f16C:dword
 005CAD2D    call        dword ptr [ebx+168];TApplication.FOnRestore
 005CAD33    pop         esi
 005CAD34    pop         ebx
 005CAD35    ret
*}
end;

//005CAD38
procedure TApplication.BringToFront;
begin
{*
 005CAD38    push        ebx
 005CAD39    push        esi
 005CAD3A    mov         ebx,eax
 005CAD3C    cmp         byte ptr [ebx+0EB],0;TApplication.FMainFormOnTaskBar:Boolean
>005CAD43    je          005CAD55
 005CAD45    cmp         dword ptr [ebx+58],0;TApplication.FMainForm:TForm
>005CAD49    je          005CAD55
 005CAD4B    mov         eax,dword ptr [ebx+58];TApplication.FMainForm:TForm
 005CAD4E    call        TWinControl.GetHandle
>005CAD53    jmp         005CAD5B
 005CAD55    mov         eax,dword ptr [ebx+188];TApplication.FHandle:HWND
 005CAD5B    test        eax,eax
>005CAD5D    je          005CAD8D
 005CAD5F    push        eax
 005CAD60    call        user32.GetLastActivePopup
 005CAD65    mov         esi,eax
 005CAD67    test        esi,esi
>005CAD69    je          005CAD8D
 005CAD6B    cmp         esi,dword ptr [ebx+188];TApplication.FHandle:HWND
>005CAD71    je          005CAD8D
 005CAD73    push        esi
 005CAD74    call        user32.IsWindowVisible
 005CAD79    test        eax,eax
>005CAD7B    je          005CAD8D
 005CAD7D    push        esi
 005CAD7E    call        user32.IsWindowEnabled
 005CAD83    test        eax,eax
>005CAD85    je          005CAD8D
 005CAD87    push        esi
 005CAD88    call        user32.SetForegroundWindow
 005CAD8D    pop         esi
 005CAD8E    pop         ebx
 005CAD8F    ret
*}
end;

//005CAD90
{*procedure sub_005CAD90(?:TApplication; ?:?);
begin
 005CAD90    push        ebx
 005CAD91    push        esi
 005CAD92    add         esp,0FFFFFE00
 005CAD98    mov         esi,edx
 005CAD9A    mov         ebx,eax
 005CAD9C    cmp         byte ptr [ebx+0C4],0;TApplication.FHandleCreated:Boolean
>005CADA3    je          005CADED
 005CADA5    cmp         byte ptr [ebx+0EB],0;TApplication.FMainFormOnTaskBar:Boolean
>005CADAC    jne         005CADED
 005CADAE    push        100
 005CADB3    lea         eax,[esp+4]
 005CADB7    push        eax
 005CADB8    mov         eax,dword ptr [ebx+188];TApplication.FHandle:HWND
 005CADBE    push        eax
 005CADBF    call        user32.GetWindowTextW
 005CADC4    mov         ecx,eax
 005CADC6    mov         edx,esp
 005CADC8    mov         eax,esi
 005CADCA    call        @UStrFromPWCharLen
 005CADCF    mov         eax,dword ptr [esi]
 005CADD1    test        eax,eax
>005CADD3    je          005CADDA
 005CADD5    sub         eax,4
 005CADD8    mov         eax,dword ptr [eax]
 005CADDA    test        eax,eax
>005CADDC    jne         005CADFA
 005CADDE    mov         eax,esi
 005CADE0    mov         edx,dword ptr [ebx+0A4];TApplication.FTitle:string
 005CADE6    call        @UStrAsg
>005CADEB    jmp         005CADFA
 005CADED    mov         eax,esi
 005CADEF    mov         edx,dword ptr [ebx+0A4];TApplication.FTitle:string
 005CADF5    call        @UStrAsg
 005CADFA    add         esp,200
 005CAE00    pop         esi
 005CAE01    pop         ebx
 005CAE02    ret
end;*}

//005CAF2C
{*procedure sub_005CAF2C(?:?; ?:?);
begin
 005CAF2C    push        ebx
 005CAF2D    push        esi
 005CAF2E    push        edi
 005CAF2F    mov         esi,edx
 005CAF31    mov         ebx,eax
 005CAF33    mov         eax,dword ptr [ebx+0A4]
 005CAF39    mov         edx,esi
 005CAF3B    call        @UStrEqual
>005CAF40    je          005CAF85
 005CAF42    cmp         byte ptr [ebx+0C4],0
>005CAF49    je          005CAF78
 005CAF4B    cmp         byte ptr [ebx+0EB],0
>005CAF52    je          005CAF64
 005CAF54    push        0
 005CAF56    mov         eax,dword ptr [ebx+188]
 005CAF5C    push        eax
 005CAF5D    call        user32.SetWindowTextW
>005CAF62    jmp         005CAF78
 005CAF64    mov         edi,dword ptr [ebx+188]
 005CAF6A    mov         eax,esi
 005CAF6C    call        @UStrToPWChar
 005CAF71    push        eax
 005CAF72    push        edi
 005CAF73    call        user32.SetWindowTextW
 005CAF78    lea         eax,[ebx+0A4]
 005CAF7E    mov         edx,esi
 005CAF80    call        @UStrAsg
 005CAF85    pop         edi
 005CAF86    pop         esi
 005CAF87    pop         ebx
 005CAF88    ret
end;*}

//005CAFD4
{*function sub_005CAFD4(?:?; ?:?):?;
begin
 005CAFD4    push        ebx
 005CAFD5    push        esi
 005CAFD6    mov         esi,edx
 005CAFD8    mov         ebx,eax
 005CAFDA    xor         eax,eax
 005CAFDC    cmp         dword ptr [ebx+0D0],0
>005CAFE3    je          005CB019
 005CAFE5    mov         eax,dword ptr [esi]
 005CAFE7    push        eax
 005CAFE8    call        user32.IsWindowUnicode
 005CAFED    test        eax,eax
>005CAFEF    je          005CB006
 005CAFF1    push        esi
 005CAFF2    mov         eax,dword ptr [ebx+0D0]
 005CAFF8    push        eax
 005CAFF9    call        user32.IsDialogMessageW
 005CAFFE    cmp         eax,1
 005CB001    sbb         eax,eax
 005CB003    inc         eax
>005CB004    jmp         005CB019
 005CB006    push        esi
 005CB007    mov         eax,dword ptr [ebx+0D0]
 005CB00D    push        eax
 005CB00E    call        user32.IsDialogMessageA
 005CB013    cmp         eax,1
 005CB016    sbb         eax,eax
 005CB018    inc         eax
 005CB019    pop         esi
 005CB01A    pop         ebx
 005CB01B    ret
end;*}

//005CB01C
{*function sub_005CB01C(?:?; ?:?):?;
begin
 005CB01C    push        ebx
 005CB01D    push        esi
 005CB01E    push        edi
 005CB01F    mov         edi,edx
 005CB021    mov         ebx,eax
 005CB023    xor         eax,eax
 005CB025    mov         esi,dword ptr [ebx+58]
 005CB028    test        esi,esi
>005CB02A    je          005CB066
 005CB02C    cmp         byte ptr [esi+2C2],2
>005CB033    jne         005CB066
 005CB035    mov         edx,dword ptr ds:[7CA7CC];Screen:TScreen
 005CB03B    cmp         dword ptr [edx+74],0
>005CB03F    je          005CB066
 005CB041    mov         edx,dword ptr ds:[7CA7CC];Screen:TScreen
 005CB047    mov         edx,dword ptr [edx+74]
 005CB04A    cmp         byte ptr [edx+2C2],1
>005CB051    jne         005CB066
 005CB053    push        edi
 005CB054    mov         eax,dword ptr [esi+3B4]
 005CB05A    push        eax
 005CB05B    call        user32.TranslateMDISysAccel
 005CB060    cmp         eax,1
 005CB063    sbb         eax,eax
 005CB065    inc         eax
 005CB066    pop         edi
 005CB067    pop         esi
 005CB068    pop         ebx
 005CB069    ret
end;*}

//005CB06C
{*function sub_005CB06C(?:?; ?:?):?;
begin
 005CB06C    push        ebx
 005CB06D    push        esi
 005CB06E    push        edi
 005CB06F    push        ebp
 005CB070    add         esp,0FFFFFFF8
 005CB073    mov         esi,edx
 005CB075    mov         edi,eax
 005CB077    xor         ebx,ebx
 005CB079    mov         eax,dword ptr [esi+4]
 005CB07C    cmp         eax,100
>005CB081    jb          005CB15A
 005CB087    cmp         eax,109
>005CB08C    ja          005CB15A
 005CB092    call        user32.GetCapture
 005CB097    mov         ebp,eax
 005CB099    test        ebp,ebp
>005CB09B    jne         005CB11C
 005CB09D    mov         ebp,dword ptr [esi]
 005CB09F    mov         eax,dword ptr [edi+58]
 005CB0A2    test        eax,eax
>005CB0A4    je          005CB0BF
 005CB0A6    cmp         ebp,dword ptr [eax+3B4]
>005CB0AC    jne         005CB0BF
 005CB0AE    call        TWinControl.GetHandle
 005CB0B3    mov         ebp,eax
>005CB0B5    jmp         005CB0D4
 005CB0B7    push        ebp
 005CB0B8    call        user32.GetParent
 005CB0BD    mov         ebp,eax
 005CB0BF    mov         eax,ebp
 005CB0C1    call        IsVCLControl
 005CB0C6    test        al,al
>005CB0C8    jne         005CB0CE
 005CB0CA    test        ebp,ebp
>005CB0CC    jne         005CB0B7
 005CB0CE    test        ebp,ebp
>005CB0D0    jne         005CB0D4
 005CB0D2    mov         ebp,dword ptr [esi]
 005CB0D4    push        ebp
 005CB0D5    call        user32.IsWindowUnicode
 005CB0DA    test        eax,eax
>005CB0DC    je          005CB0FD
 005CB0DE    mov         eax,dword ptr [esi+0C]
 005CB0E1    push        eax
 005CB0E2    mov         eax,dword ptr [esi+8]
 005CB0E5    push        eax
 005CB0E6    mov         eax,dword ptr [esi+4]
 005CB0E9    add         eax,0BC00
 005CB0EE    push        eax
 005CB0EF    push        ebp
 005CB0F0    call        user32.SendMessageW
 005CB0F5    test        eax,eax
>005CB0F7    je          005CB15A
 005CB0F9    mov         bl,1
>005CB0FB    jmp         005CB15A
 005CB0FD    mov         eax,dword ptr [esi+0C]
 005CB100    push        eax
 005CB101    mov         eax,dword ptr [esi+8]
 005CB104    push        eax
 005CB105    mov         eax,dword ptr [esi+4]
 005CB108    add         eax,0BC00
 005CB10D    push        eax
 005CB10E    push        ebp
 005CB10F    call        user32.SendMessageA
 005CB114    test        eax,eax
>005CB116    je          005CB15A
 005CB118    mov         bl,1
>005CB11A    jmp         005CB15A
 005CB11C    push        esp
 005CB11D    push        ebp
 005CB11E    call        user32.GetWindowThreadProcessId
 005CB123    lea         eax,[esp+4]
 005CB127    push        eax
 005CB128    mov         eax,dword ptr [edi+188]
 005CB12E    push        eax
 005CB12F    call        user32.GetWindowThreadProcessId
 005CB134    mov         eax,dword ptr [esp]
 005CB137    cmp         eax,dword ptr [esp+4]
>005CB13B    jne         005CB15A
 005CB13D    mov         eax,dword ptr [esi+0C]
 005CB140    push        eax
 005CB141    mov         eax,dword ptr [esi+8]
 005CB144    push        eax
 005CB145    mov         eax,dword ptr [esi+4]
 005CB148    add         eax,0BC00
 005CB14D    push        eax
 005CB14E    push        ebp
 005CB14F    call        user32.SendMessageW
 005CB154    test        eax,eax
>005CB156    je          005CB15A
 005CB158    mov         bl,1
 005CB15A    mov         eax,ebx
 005CB15C    pop         ecx
 005CB15D    pop         edx
 005CB15E    pop         ebp
 005CB15F    pop         edi
 005CB160    pop         esi
 005CB161    pop         ebx
 005CB162    ret
end;*}

//005CB164
{*function sub_005CB164(?:?; ?:?):?;
begin
 005CB164    push        ebx
 005CB165    push        esi
 005CB166    push        edi
 005CB167    push        ebp
 005CB168    mov         edi,edx
 005CB16A    mov         ebp,eax
 005CB16C    xor         ebx,ebx
 005CB16E    mov         esi,dword ptr [ebp+98]
 005CB174    test        esi,esi
>005CB176    je          005CB18F
 005CB178    mov         edx,edi
 005CB17A    mov         eax,esi
 005CB17C    mov         ecx,dword ptr [eax]
 005CB17E    call        dword ptr [ecx+114]
 005CB184    test        al,al
>005CB186    je          005CB18F
 005CB188    mov         eax,ebp
 005CB18A    call        TApplication.CancelHint
 005CB18F    mov         eax,ebx
 005CB191    pop         ebp
 005CB192    pop         edi
 005CB193    pop         esi
 005CB194    pop         ebx
 005CB195    ret
end;*}

//005CB198
{*function sub_005CB198(?:?; ?:?):?;
begin
 005CB198    push        ebx
 005CB199    push        esi
 005CB19A    push        edi
 005CB19B    push        ebp
 005CB19C    push        ecx
 005CB19D    mov         ebp,edx
 005CB19F    mov         ebx,eax
 005CB1A1    mov         byte ptr [esp],0
 005CB1A5    cmp         word ptr [ebx+172],0
>005CB1AD    je          005CB1BF
 005CB1AF    mov         ecx,esp
 005CB1B1    mov         edx,ebp
 005CB1B3    mov         eax,dword ptr [ebx+174]
 005CB1B9    call        dword ptr [ebx+170]
 005CB1BF    cmp         byte ptr [esp],0
>005CB1C3    jne         005CB1F3
 005CB1C5    mov         edi,dword ptr [ebx+58]
 005CB1C8    test        edi,edi
>005CB1CA    je          005CB1EF
 005CB1CC    mov         eax,edi
 005CB1CE    call        TWinControl.GetHandle
 005CB1D3    push        eax
 005CB1D4    call        user32.IsWindowEnabled
 005CB1D9    test        eax,eax
>005CB1DB    je          005CB1EF
 005CB1DD    mov         edx,ebp
 005CB1DF    mov         eax,dword ptr [ebx+58]
 005CB1E2    mov         si,0FFA1
 005CB1E6    call        @CallDynaInst
 005CB1EB    test        al,al
>005CB1ED    jne         005CB1F3
 005CB1EF    xor         eax,eax
>005CB1F1    jmp         005CB1F5
 005CB1F3    mov         al,1
 005CB1F5    mov         byte ptr [esp],al
 005CB1F8    movzx       eax,byte ptr [esp]
 005CB1FC    pop         edx
 005CB1FD    pop         ebp
 005CB1FE    pop         edi
 005CB1FF    pop         esi
 005CB200    pop         ebx
 005CB201    ret
end;*}

//005CB2D0
function TApplication.ProcessMessage(var Msg:Windows.TMsg):Boolean;
begin
{*
 005CB2D0    push        ebx
 005CB2D1    push        esi
 005CB2D2    push        edi
 005CB2D3    push        ebp
 005CB2D4    push        ecx
 005CB2D5    mov         edi,edx
 005CB2D7    mov         esi,eax
 005CB2D9    xor         ebx,ebx
 005CB2DB    push        0
 005CB2DD    push        0
 005CB2DF    push        0
 005CB2E1    push        0
 005CB2E3    push        edi
 005CB2E4    call        user32.PeekMessageW
 005CB2E9    test        eax,eax
>005CB2EB    je          005CB3D9
 005CB2F1    mov         ebp,dword ptr [edi]
 005CB2F3    test        ebp,ebp
>005CB2F5    je          005CB305
 005CB2F7    push        ebp
 005CB2F8    call        user32.IsWindowUnicode
 005CB2FD    test        eax,eax
>005CB2FF    jne         005CB305
 005CB301    xor         eax,eax
>005CB303    jmp         005CB307
 005CB305    mov         al,1
 005CB307    mov         byte ptr [esp+1],al
 005CB30B    cmp         byte ptr [esp+1],0
>005CB310    je          005CB328
 005CB312    push        1
 005CB314    push        0
 005CB316    push        0
 005CB318    push        0
 005CB31A    push        edi
 005CB31B    call        user32.PeekMessageW
 005CB320    cmp         eax,1
 005CB323    sbb         eax,eax
 005CB325    inc         eax
>005CB326    jmp         005CB33C
 005CB328    push        1
 005CB32A    push        0
 005CB32C    push        0
 005CB32E    push        0
 005CB330    push        edi
 005CB331    call        user32.PeekMessageA
 005CB336    cmp         eax,1
 005CB339    sbb         eax,eax
 005CB33B    inc         eax
 005CB33C    test        al,al
>005CB33E    je          005CB3D9
 005CB344    mov         bl,1
 005CB346    cmp         dword ptr [edi+4],12
>005CB34A    je          005CB3D2
 005CB350    mov         byte ptr [esp],0
 005CB354    cmp         word ptr [esi+122],0
>005CB35C    je          005CB36E
 005CB35E    mov         ecx,esp
 005CB360    mov         edx,edi
 005CB362    mov         eax,dword ptr [esi+124]
 005CB368    call        dword ptr [esi+120]
 005CB36E    mov         edx,edi
 005CB370    mov         eax,esi
 005CB372    call        005CD02C
 005CB377    test        al,al
>005CB379    jne         005CB3D9
 005CB37B    mov         edx,edi
 005CB37D    mov         eax,esi
 005CB37F    call        005CB164
 005CB384    test        al,al
>005CB386    jne         005CB3D9
 005CB388    cmp         byte ptr [esp],0
>005CB38C    jne         005CB3D9
 005CB38E    mov         edx,edi
 005CB390    mov         eax,esi
 005CB392    call        005CB01C
 005CB397    test        al,al
>005CB399    jne         005CB3D9
 005CB39B    mov         edx,edi
 005CB39D    mov         eax,esi
 005CB39F    call        005CB06C
 005CB3A4    test        al,al
>005CB3A6    jne         005CB3D9
 005CB3A8    mov         edx,edi
 005CB3AA    mov         eax,esi
 005CB3AC    call        005CAFD4
 005CB3B1    test        al,al
>005CB3B3    jne         005CB3D9
 005CB3B5    push        edi
 005CB3B6    call        user32.TranslateMessage
 005CB3BB    cmp         byte ptr [esp+1],0
>005CB3C0    je          005CB3CA
 005CB3C2    push        edi
 005CB3C3    call        user32.DispatchMessageW
>005CB3C8    jmp         005CB3D9
 005CB3CA    push        edi
 005CB3CB    call        user32.DispatchMessageA
>005CB3D0    jmp         005CB3D9
 005CB3D2    mov         byte ptr [esi+0BC],1
 005CB3D9    mov         eax,ebx
 005CB3DB    pop         edx
 005CB3DC    pop         ebp
 005CB3DD    pop         edi
 005CB3DE    pop         esi
 005CB3DF    pop         ebx
 005CB3E0    ret
*}
end;

//005CB3E4
procedure TApplication.ProcessMessages;
begin
{*
 005CB3E4    push        ebx
 005CB3E5    add         esp,0FFFFFFE4
 005CB3E8    mov         ebx,eax
 005CB3EA    mov         edx,esp
 005CB3EC    mov         eax,ebx
 005CB3EE    call        TApplication.ProcessMessage
 005CB3F3    test        al,al
>005CB3F5    jne         005CB3EA
 005CB3F7    add         esp,1C
 005CB3FA    pop         ebx
 005CB3FB    ret
*}
end;

//005CB3FC
procedure TApplication.HandleMessage;
begin
{*
 005CB3FC    push        ebx
 005CB3FD    add         esp,0FFFFFFE4
 005CB400    mov         ebx,eax
 005CB402    mov         edx,esp
 005CB404    mov         eax,ebx
 005CB406    call        TApplication.ProcessMessage
 005CB40B    test        al,al
>005CB40D    jne         005CB418
 005CB40F    mov         edx,esp
 005CB411    mov         eax,ebx
 005CB413    call        005CBFA8
 005CB418    add         esp,1C
 005CB41B    pop         ebx
 005CB41C    ret
*}
end;

//005CB420
{*procedure TApplication.HookMainWindow(Hook:TWindowHook; ?:?);
begin
 005CB420    push        ebp
 005CB421    mov         ebp,esp
 005CB423    push        ebx
 005CB424    mov         ebx,eax
 005CB426    cmp         byte ptr [ebx+0C4],0;TApplication.FHandleCreated:Boolean
>005CB42D    jne         005CB44C
 005CB42F    mov         eax,dword ptr [ebx+188];TApplication.FHandle:HWND
 005CB435    test        eax,eax
>005CB437    je          005CB479
 005CB439    lea         edx,[ebp+8]
 005CB43C    push        edx
 005CB43D    push        0
 005CB43F    push        0B020
 005CB444    push        eax
 005CB445    call        user32.SendMessageW
>005CB44A    jmp         005CB479
 005CB44C    mov         eax,dword ptr [ebx+0C8];TApplication.FWindowHooks:TList
 005CB452    call        TList.Expand
 005CB457    mov         eax,8
 005CB45C    call        @GetMem
 005CB461    mov         edx,dword ptr [ebp+8]
 005CB464    mov         dword ptr [eax],edx
 005CB466    mov         edx,dword ptr [ebp+0C]
 005CB469    mov         dword ptr [eax+4],edx
 005CB46C    mov         edx,eax
 005CB46E    mov         eax,dword ptr [ebx+0C8];TApplication.FWindowHooks:TList
 005CB474    call        TList.Add
 005CB479    pop         ebx
 005CB47A    pop         ebp
 005CB47B    ret         8
end;*}

//005CB480
{*procedure TApplication.UnhookMainWindow(Hook:TWindowHook; ?:?);
begin
 005CB480    push        ebp
 005CB481    mov         ebp,esp
 005CB483    push        ebx
 005CB484    push        esi
 005CB485    push        edi
 005CB486    mov         ebx,eax
 005CB488    cmp         byte ptr [ebx+0C4],0;TApplication.FHandleCreated:Boolean
>005CB48F    jne         005CB4AE
 005CB491    mov         eax,dword ptr [ebx+188];TApplication.FHandle:HWND
 005CB497    test        eax,eax
>005CB499    je          005CB4F3
 005CB49B    lea         edx,[ebp+8]
 005CB49E    push        edx
 005CB49F    push        1
 005CB4A1    push        0B020
 005CB4A6    push        eax
 005CB4A7    call        user32.SendMessageW
>005CB4AC    jmp         005CB4F3
 005CB4AE    mov         eax,dword ptr [ebx+0C8];TApplication.FWindowHooks:TList
 005CB4B4    mov         edi,dword ptr [eax+8];TList.FCount:Integer
 005CB4B7    dec         edi
 005CB4B8    test        edi,edi
>005CB4BA    jl          005CB4F3
 005CB4BC    inc         edi
 005CB4BD    xor         esi,esi
 005CB4BF    mov         edx,esi
 005CB4C1    mov         eax,dword ptr [ebx+0C8];TApplication.FWindowHooks:TList
 005CB4C7    call        TList.Get
 005CB4CC    mov         edx,dword ptr [eax]
 005CB4CE    cmp         edx,dword ptr [ebp+8]
>005CB4D1    jne         005CB4EF
 005CB4D3    mov         edx,dword ptr [ebp+0C]
 005CB4D6    cmp         edx,dword ptr [eax+4]
>005CB4D9    jne         005CB4EF
 005CB4DB    call        @FreeMem
 005CB4E0    mov         edx,esi
 005CB4E2    mov         eax,dword ptr [ebx+0C8];TApplication.FWindowHooks:TList
 005CB4E8    call        TList.Delete
>005CB4ED    jmp         005CB4F3
 005CB4EF    inc         esi
 005CB4F0    dec         edi
>005CB4F1    jne         005CB4BF
 005CB4F3    pop         edi
 005CB4F4    pop         esi
 005CB4F5    pop         ebx
 005CB4F6    pop         ebp
 005CB4F7    ret         8
end;*}

//005CB4FC
procedure TApplication.Initialize;
begin
{*
 005CB4FC    push        ebx
 005CB4FD    mov         eax,[007C4804];^InitProc:Pointer
 005CB502    cmp         dword ptr [eax],0
>005CB505    je          005CB511
 005CB507    mov         ebx,dword ptr ds:[7C4804];^InitProc:Pointer
 005CB50D    mov         ebx,dword ptr [ebx]
 005CB50F    call        ebx
 005CB511    pop         ebx
 005CB512    ret
*}
end;

//005CB514
{*procedure TApplication.CreateForm(InstanceClass:TComponentClass; var Reference:?);
begin
 005CB514    push        ebp
 005CB515    mov         ebp,esp
 005CB517    add         esp,0FFFFFFF4
 005CB51A    push        ebx
 005CB51B    push        esi
 005CB51C    push        edi
 005CB51D    mov         dword ptr [ebp-8],ecx
 005CB520    mov         ebx,edx
 005CB522    mov         dword ptr [ebp-4],eax
 005CB525    mov         eax,dword ptr [ebp-4]
 005CB528    cmp         dword ptr [eax+58],0;TApplication.FMainForm:TForm
>005CB52C    jne         005CB53F
 005CB52E    mov         edx,dword ptr ds:[5B865C];TForm
 005CB534    mov         eax,ebx
 005CB536    call        TObject.InheritsFrom
 005CB53B    test        al,al
>005CB53D    jne         005CB543
 005CB53F    xor         eax,eax
>005CB541    jmp         005CB545
 005CB543    mov         al,1
 005CB545    mov         edx,dword ptr [ebp-4]
 005CB548    mov         byte ptr [edx+0E9],al;TApplication.FCreatingMainForm:Boolean
 005CB54E    xor         eax,eax
 005CB550    mov         dword ptr [ebp-0C],eax
 005CB553    xor         ecx,ecx
 005CB555    push        ebp
 005CB556    push        5CB662
 005CB55B    push        dword ptr fs:[ecx]
 005CB55E    mov         dword ptr fs:[ecx],esp
 005CB561    mov         eax,ebx
 005CB563    call        dword ptr [eax-0C]
 005CB566    mov         dword ptr [ebp-0C],eax
 005CB569    mov         eax,dword ptr [ebp-8]
 005CB56C    mov         edx,dword ptr [ebp-0C]
 005CB56F    mov         dword ptr [eax],edx
 005CB571    xor         eax,eax
 005CB573    push        ebp
 005CB574    push        5CB597
 005CB579    push        dword ptr fs:[eax]
 005CB57C    mov         dword ptr fs:[eax],esp
 005CB57F    mov         ecx,dword ptr [ebp-4]
 005CB582    or          edx,0FFFFFFFF
 005CB585    mov         eax,dword ptr [ebp-0C]
 005CB588    mov         ebx,dword ptr [eax]
 005CB58A    call        dword ptr [ebx+3C]
 005CB58D    xor         eax,eax
 005CB58F    pop         edx
 005CB590    pop         ecx
 005CB591    pop         ecx
 005CB592    mov         dword ptr fs:[eax],edx
>005CB595    jmp         005CB5B2
>005CB597    jmp         @HandleAnyException
 005CB59C    mov         eax,dword ptr [ebp-8]
 005CB59F    xor         edx,edx
 005CB5A1    mov         dword ptr [eax],edx
 005CB5A3    xor         eax,eax
 005CB5A5    mov         dword ptr [ebp-0C],eax
 005CB5A8    call        @RaiseAgain
 005CB5AD    call        @DoneExcept
 005CB5B2    mov         eax,dword ptr [ebp-4]
 005CB5B5    cmp         dword ptr [eax+58],0;TApplication.FMainForm:TForm
>005CB5B9    jne         005CB62F
 005CB5BB    mov         eax,dword ptr [ebp-0C]
 005CB5BE    mov         edx,dword ptr ds:[5B865C];TForm
 005CB5C4    call        @IsClass
 005CB5C9    test        al,al
>005CB5CB    je          005CB62F
 005CB5CD    mov         ebx,dword ptr [ebp-0C]
 005CB5D0    mov         eax,ebx
 005CB5D2    call        TWinControl.HandleNeeded
 005CB5D7    mov         eax,dword ptr [ebp-4]
 005CB5DA    mov         dword ptr [eax+58],ebx;TApplication.FMainForm:TForm
 005CB5DD    mov         eax,dword ptr [ebp-4]
 005CB5E0    cmp         byte ptr [eax+0EB],0;TApplication.FMainFormOnTaskBar:Boolean
>005CB5E7    je          005CB611
 005CB5E9    mov         eax,dword ptr [ebp-4]
 005CB5EC    mov         eax,dword ptr [eax+188];TApplication.FHandle:HWND
 005CB5F2    push        0EC
 005CB5F4    push        eax
 005CB5F5    call        user32.GetWindowLongW
 005CB5FA    mov         edx,dword ptr [ebp-4]
 005CB5FD    mov         edx,dword ptr [edx+188];TApplication.FHandle:HWND
 005CB603    or          eax,8000000
 005CB608    push        eax
 005CB609    push        0EC
 005CB60B    push        edx
 005CB60C    call        user32.SetWindowLongW
 005CB611    mov         eax,dword ptr [ebp-4]
 005CB614    movzx       eax,byte ptr [eax+0EB];TApplication.FMainFormOnTaskBar:Boolean
 005CB61B    xor         al,1
 005CB61D    mov         ecx,eax
 005CB61F    mov         edx,eax
 005CB621    mov         eax,dword ptr [ebp-4]
 005CB624    mov         eax,dword ptr [eax+188];TApplication.FHandle:HWND
 005CB62A    call        005BEA20
 005CB62F    xor         eax,eax
 005CB631    pop         edx
 005CB632    pop         ecx
 005CB633    pop         ecx
 005CB634    mov         dword ptr fs:[eax],edx
 005CB637    push        5CB669
 005CB63C    mov         eax,dword ptr [ebp-4]
 005CB63F    cmp         dword ptr [eax+58],0;TApplication.FMainForm:TForm
>005CB643    jne         005CB661
 005CB645    mov         eax,dword ptr [ebp-0C]
 005CB648    mov         edx,dword ptr ds:[5B865C];TForm
 005CB64E    call        @IsClass
 005CB653    test        al,al
>005CB655    je          005CB661
 005CB657    mov         eax,dword ptr [ebp-0C]
 005CB65A    mov         byte ptr [eax+3A8],0
 005CB661    ret
>005CB662    jmp         @HandleFinally
>005CB667    jmp         005CB63C
 005CB669    pop         edi
 005CB66A    pop         esi
 005CB66B    pop         ebx
 005CB66C    mov         esp,ebp
 005CB66E    pop         ebp
 005CB66F    ret
end;*}

//005CB670
procedure TApplication.Run;
begin
{*
 005CB670    push        ebp
 005CB671    mov         ebp,esp
 005CB673    push        ecx
 005CB674    push        ebx
 005CB675    push        esi
 005CB676    push        edi
 005CB677    mov         dword ptr [ebp-4],eax
 005CB67A    mov         eax,dword ptr [ebp-4]
 005CB67D    mov         byte ptr [eax+0C5],1;TApplication.FRunning:Boolean
 005CB684    xor         edx,edx
 005CB686    push        ebp
 005CB687    push        5CB781
 005CB68C    push        dword ptr fs:[edx]
 005CB68F    mov         dword ptr fs:[edx],esp
 005CB692    mov         eax,5BEAE4;sub_005BEAE4
 005CB697    call        0041D520
 005CB69C    mov         eax,dword ptr [ebp-4]
 005CB69F    mov         eax,dword ptr [eax+58];TApplication.FMainForm:TForm
 005CB6A2    test        eax,eax
>005CB6A4    je          005CB769
 005CB6AA    mov         edx,dword ptr ds:[7C496C];^gvar_007C504C
 005CB6B0    mov         edx,dword ptr [edx]
 005CB6B2    sub         edx,3
>005CB6B5    je          005CB6D5
 005CB6B7    sub         edx,4
>005CB6BA    jne         005CB6DC
 005CB6BC    mov         eax,dword ptr [ebp-4]
 005CB6BF    mov         byte ptr [eax+0F4],1;TApplication.FInitialMainFormState:TWindowState
 005CB6C6    mov         eax,dword ptr [ebp-4]
 005CB6C9    mov         eax,dword ptr [eax+58];TApplication.FMainForm:TForm
 005CB6CC    mov         byte ptr [eax+2BE],1;TForm.FWindowState:TWindowState
>005CB6D3    jmp         005CB6DC
 005CB6D5    mov         dl,2
 005CB6D7    call        TForm.SetWindowState
 005CB6DC    mov         eax,dword ptr [ebp-4]
 005CB6DF    cmp         byte ptr [eax+6F],0;TApplication.FShowMainForm:Boolean
>005CB6E3    je          005CB728
 005CB6E5    mov         eax,dword ptr [ebp-4]
 005CB6E8    mov         eax,dword ptr [eax+58];TApplication.FMainForm:TForm
 005CB6EB    cmp         byte ptr [eax+2BE],1;TForm.FWindowState:TWindowState
>005CB6F2    je          005CB700
 005CB6F4    mov         edx,dword ptr [ebp-4]
 005CB6F7    cmp         byte ptr [edx+0F4],1;TApplication.FInitialMainFormState:TWindowState
>005CB6FE    jne         005CB721
 005CB700    mov         eax,dword ptr [ebp-4]
 005CB703    call        TApplication.Minimize
 005CB708    mov         eax,dword ptr [ebp-4]
 005CB70B    cmp         byte ptr [eax+0F4],1;TApplication.FInitialMainFormState:TWindowState
>005CB712    jne         005CB728
 005CB714    mov         eax,dword ptr [ebp-4]
 005CB717    mov         eax,dword ptr [eax+58];TApplication.FMainForm:TForm
 005CB71A    call        TCustomForm.Show
>005CB71F    jmp         005CB728
 005CB721    mov         dl,1
 005CB723    call        TForm.SetVisible
 005CB728    xor         eax,eax
 005CB72A    push        ebp
 005CB72B    push        5CB748
 005CB730    push        dword ptr fs:[eax]
 005CB733    mov         dword ptr fs:[eax],esp
 005CB736    mov         eax,dword ptr [ebp-4]
 005CB739    call        TApplication.HandleMessage
 005CB73E    xor         eax,eax
 005CB740    pop         edx
 005CB741    pop         ecx
 005CB742    pop         ecx
 005CB743    mov         dword ptr fs:[eax],edx
>005CB746    jmp         005CB75D
>005CB748    jmp         @HandleAnyException
 005CB74D    mov         edx,dword ptr [ebp-4]
 005CB750    mov         eax,dword ptr [ebp-4]
 005CB753    call        TApplication.HandleException
 005CB758    call        @DoneExcept
 005CB75D    mov         eax,dword ptr [ebp-4]
 005CB760    cmp         byte ptr [eax+0BC],0;TApplication.FTerminate:Boolean
>005CB767    je          005CB728
 005CB769    xor         eax,eax
 005CB76B    pop         edx
 005CB76C    pop         ecx
 005CB76D    pop         ecx
 005CB76E    mov         dword ptr fs:[eax],edx
 005CB771    push        5CB788
 005CB776    mov         eax,dword ptr [ebp-4]
 005CB779    mov         byte ptr [eax+0C5],0;TApplication.FRunning:Boolean
 005CB780    ret
>005CB781    jmp         @HandleFinally
>005CB786    jmp         005CB776
 005CB788    pop         edi
 005CB789    pop         esi
 005CB78A    pop         ebx
 005CB78B    pop         ecx
 005CB78C    pop         ebp
 005CB78D    ret
*}
end;

//005CB790
procedure TApplication.Terminate;
begin
{*
 005CB790    call        00425AA8
 005CB795    test        al,al
>005CB797    je          005CB7A0
 005CB799    push        0
 005CB79B    call        user32.PostQuitMessage
 005CB7A0    ret
*}
end;

//005CB7A4
{*function sub_005CB7A4(?:?; ?:?):?;
begin
 005CB7A4    push        ebp
 005CB7A5    mov         ebp,esp
 005CB7A7    push        0
 005CB7A9    push        0
 005CB7AB    push        ebx
 005CB7AC    push        esi
 005CB7AD    mov         esi,edx
 005CB7AF    xor         edx,edx
 005CB7B1    push        ebp
 005CB7B2    push        5CB817
 005CB7B7    push        dword ptr fs:[edx]
 005CB7BA    mov         dword ptr fs:[edx],esp
 005CB7BD    mov         eax,dword ptr [eax]
 005CB7BF    mov         edx,eax
 005CB7C1    mov         ebx,edx
>005CB7C3    jmp         005CB7CE
 005CB7C5    mov         eax,ebx
 005CB7C7    call        TObject.ClassParent
 005CB7CC    mov         ebx,eax
 005CB7CE    test        ebx,ebx
>005CB7D0    je          005CB7F5
 005CB7D2    lea         edx,[ebp-4]
 005CB7D5    mov         eax,ebx
 005CB7D7    call        TObject.ClassName
 005CB7DC    mov         eax,dword ptr [ebp-4]
 005CB7DF    push        eax
 005CB7E0    lea         edx,[ebp-8]
 005CB7E3    mov         eax,esi
 005CB7E5    call        TObject.ClassName
 005CB7EA    mov         edx,dword ptr [ebp-8]
 005CB7ED    pop         eax
 005CB7EE    call        @UStrEqual
>005CB7F3    jne         005CB7C5
 005CB7F5    test        ebx,ebx
 005CB7F7    setne       al
 005CB7FA    mov         ebx,eax
 005CB7FC    xor         eax,eax
 005CB7FE    pop         edx
 005CB7FF    pop         ecx
 005CB800    pop         ecx
 005CB801    mov         dword ptr fs:[eax],edx
 005CB804    push        5CB81E
 005CB809    lea         eax,[ebp-8]
 005CB80C    mov         edx,2
 005CB811    call        @UStrArrayClr
 005CB816    ret
>005CB817    jmp         @HandleFinally
>005CB81C    jmp         005CB809
 005CB81E    mov         eax,ebx
 005CB820    pop         esi
 005CB821    pop         ebx
 005CB822    pop         ecx
 005CB823    pop         ecx
 005CB824    pop         ebp
 005CB825    ret
end;*}

//005CB828
procedure TApplication.HandleException(Sender:TObject);
begin
{*
 005CB828    push        ebx
 005CB829    push        esi
 005CB82A    push        edi
 005CB82B    mov         edi,edx
 005CB82D    mov         esi,eax
 005CB82F    call        user32.GetCapture
 005CB834    test        eax,eax
>005CB836    je          005CB849
 005CB838    push        0
 005CB83A    push        0
 005CB83C    push        1F
 005CB83E    call        user32.GetCapture
 005CB843    push        eax
 005CB844    call        user32.SendMessageW
 005CB849    call        ExceptObject
 005CB84E    mov         ebx,eax
 005CB850    mov         edx,dword ptr ds:[4174D0];Exception
 005CB856    mov         eax,ebx
 005CB858    call        005CB7A4
 005CB85D    test        al,al
>005CB85F    je          005CB899
 005CB861    mov         edx,dword ptr ds:[418164];EAbort
 005CB867    mov         eax,ebx
 005CB869    call        005CB7A4
 005CB86E    test        al,al
>005CB870    jne         005CB8A7
 005CB872    cmp         word ptr [esi+10A],0
>005CB87A    je          005CB88E
 005CB87C    mov         ecx,ebx
 005CB87E    mov         edx,edi
 005CB880    mov         eax,dword ptr [esi+10C]
 005CB886    call        dword ptr [esi+108]
>005CB88C    jmp         005CB8A7
 005CB88E    mov         edx,ebx
 005CB890    mov         eax,esi
 005CB892    call        TApplication.ShowException
>005CB897    jmp         005CB8A7
 005CB899    call        ExceptAddr
 005CB89E    mov         edx,eax
 005CB8A0    mov         eax,ebx
 005CB8A2    call        ShowException
 005CB8A7    pop         edi
 005CB8A8    pop         esi
 005CB8A9    pop         ebx
 005CB8AA    ret
*}
end;

//005CB8AC
function TApplication.MessageBox(Text:PWideChar; Caption:PWideChar; Flags:Integer):Integer;
begin
{*
 005CB8AC    push        ebp
 005CB8AD    mov         ebp,esp
 005CB8AF    add         esp,0FFFFFFA8
 005CB8B2    push        ebx
 005CB8B3    push        esi
 005CB8B4    push        edi
 005CB8B5    mov         dword ptr [ebp-8],ecx
 005CB8B8    mov         edi,edx
 005CB8BA    mov         dword ptr [ebp-4],eax
 005CB8BD    mov         esi,dword ptr [ebp+8]
 005CB8C0    mov         eax,dword ptr [ebp-4]
 005CB8C3    call        005CCE10
 005CB8C8    mov         dword ptr [ebp-10],eax
 005CB8CB    cmp         dword ptr [ebp-10],0
>005CB8CF    jne         005CB8DC
 005CB8D1    mov         eax,dword ptr [ebp-4]
 005CB8D4    mov         ebx,dword ptr [eax+188];TApplication.FHandle:HWND
>005CB8DA    jmp         005CB8DF
 005CB8DC    mov         ebx,dword ptr [ebp-10]
 005CB8DF    push        2
 005CB8E1    mov         eax,dword ptr [ebp-10]
 005CB8E4    push        eax
 005CB8E5    call        user32.MonitorFromWindow
 005CB8EA    mov         dword ptr [ebp-14],eax
 005CB8ED    push        2
 005CB8EF    mov         eax,dword ptr [ebp-4]
 005CB8F2    mov         eax,dword ptr [eax+188];TApplication.FHandle:HWND
 005CB8F8    push        eax
 005CB8F9    call        user32.MonitorFromWindow
 005CB8FE    mov         dword ptr [ebp-18],eax
 005CB901    mov         eax,dword ptr [ebp-14]
 005CB904    cmp         eax,dword ptr [ebp-18]
>005CB907    je          005CB96B
 005CB909    mov         dword ptr [ebp-48],28
 005CB910    lea         eax,[ebp-48]
 005CB913    push        eax
 005CB914    mov         eax,dword ptr [ebp-14]
 005CB917    push        eax
 005CB918    call        user32.GetMonitorInfoW
 005CB91D    lea         eax,[ebp-58]
 005CB920    push        eax
 005CB921    mov         eax,dword ptr [ebp-4]
 005CB924    mov         eax,dword ptr [eax+188];TApplication.FHandle:HWND
 005CB92A    push        eax
 005CB92B    call        user32.GetWindowRect
 005CB930    push        1D
 005CB932    push        0
 005CB934    push        0
 005CB936    mov         ecx,dword ptr [ebp-38]
 005CB939    mov         edx,dword ptr [ebp-40]
 005CB93C    sub         ecx,edx
 005CB93E    sar         ecx,1
>005CB940    jns         005CB945
 005CB942    adc         ecx,0
 005CB945    add         ecx,edx
 005CB947    push        ecx
 005CB948    mov         edx,dword ptr [ebp-3C]
 005CB94B    mov         eax,dword ptr [ebp-44]
 005CB94E    sub         edx,eax
 005CB950    sar         edx,1
>005CB952    jns         005CB957
 005CB954    adc         edx,0
 005CB957    add         edx,eax
 005CB959    push        edx
 005CB95A    push        0
 005CB95C    mov         eax,dword ptr [ebp-4]
 005CB95F    mov         eax,dword ptr [eax+188];TApplication.FHandle:HWND
 005CB965    push        eax
 005CB966    call        user32.SetWindowPos
 005CB96B    mov         eax,dword ptr [ebp-10]
 005CB96E    call        DisableTaskWindows
 005CB973    mov         dword ptr [ebp-20],eax
 005CB976    call        005BE9C0
 005CB97B    mov         dword ptr [ebp-1C],eax
 005CB97E    mov         eax,dword ptr [ebp-4]
 005CB981    call        TApplication.UseRightToLeftReading
 005CB986    test        al,al
>005CB988    je          005CB990
 005CB98A    or          esi,100000
 005CB990    xor         ecx,ecx
 005CB992    push        ebp
 005CB993    push        5CBA17
 005CB998    push        dword ptr fs:[ecx]
 005CB99B    mov         dword ptr fs:[ecx],esp
 005CB99E    push        esi
 005CB99F    mov         eax,dword ptr [ebp-8]
 005CB9A2    push        eax
 005CB9A3    push        edi
 005CB9A4    push        ebx
 005CB9A5    call        user32.MessageBoxW
 005CB9AA    mov         dword ptr [ebp-0C],eax
 005CB9AD    xor         eax,eax
 005CB9AF    pop         edx
 005CB9B0    pop         ecx
 005CB9B1    pop         ecx
 005CB9B2    mov         dword ptr fs:[eax],edx
 005CB9B5    push        5CBA1E
 005CB9BA    mov         eax,dword ptr [ebp-14]
 005CB9BD    cmp         eax,dword ptr [ebp-18]
>005CB9C0    je          005CB9FD
 005CB9C2    push        1D
 005CB9C4    push        0
 005CB9C6    push        0
 005CB9C8    mov         ecx,dword ptr [ebp-4C]
 005CB9CB    mov         edx,dword ptr [ebp-54]
 005CB9CE    sub         ecx,edx
 005CB9D0    sar         ecx,1
>005CB9D2    jns         005CB9D7
 005CB9D4    adc         ecx,0
 005CB9D7    add         ecx,edx
 005CB9D9    push        ecx
 005CB9DA    mov         edx,dword ptr [ebp-50]
 005CB9DD    mov         eax,dword ptr [ebp-58]
 005CB9E0    sub         edx,eax
 005CB9E2    sar         edx,1
>005CB9E4    jns         005CB9E9
 005CB9E6    adc         edx,0
 005CB9E9    add         edx,eax
 005CB9EB    push        edx
 005CB9EC    push        0
 005CB9EE    mov         eax,dword ptr [ebp-4]
 005CB9F1    mov         eax,dword ptr [eax+188];TApplication.FHandle:HWND
 005CB9F7    push        eax
 005CB9F8    call        user32.SetWindowPos
 005CB9FD    mov         eax,dword ptr [ebp-20]
 005CBA00    call        EnableTaskWindows
 005CBA05    mov         eax,dword ptr [ebp-10]
 005CBA08    push        eax
 005CBA09    call        user32.SetActiveWindow
 005CBA0E    mov         eax,dword ptr [ebp-1C]
 005CBA11    call        005BE9C8
 005CBA16    ret
>005CBA17    jmp         @HandleFinally
>005CBA1C    jmp         005CB9BA
 005CBA1E    mov         eax,dword ptr [ebp-0C]
 005CBA21    pop         edi
 005CBA22    pop         esi
 005CBA23    pop         ebx
 005CBA24    mov         esp,ebp
 005CBA26    pop         ebp
 005CBA27    ret         4
*}
end;

//005CBA2C
procedure TApplication.ShowException(E:Exception);
begin
{*
 005CBA2C    push        ebp
 005CBA2D    mov         ebp,esp
 005CBA2F    push        0
 005CBA31    push        0
 005CBA33    push        ebx
 005CBA34    push        esi
 005CBA35    push        edi
 005CBA36    mov         ebx,edx
 005CBA38    mov         edi,eax
 005CBA3A    xor         eax,eax
 005CBA3C    push        ebp
 005CBA3D    push        5CBAE1
 005CBA42    push        dword ptr fs:[eax]
 005CBA45    mov         dword ptr fs:[eax],esp
 005CBA48    lea         eax,[ebp-4]
 005CBA4B    mov         edx,dword ptr [ebx+4];Exception.FMessage:string
 005CBA4E    call        @UStrLAsg
 005CBA53    mov         eax,ebx
 005CBA55    mov         edx,dword ptr [eax]
 005CBA57    call        dword ptr [edx+4];Exception.GetBaseException
 005CBA5A    mov         esi,eax
 005CBA5C    cmp         ebx,esi
>005CBA5E    je          005CBA75
 005CBA60    mov         ebx,esi
 005CBA62    cmp         dword ptr [ebx+4],0
>005CBA66    je          005CBA53
 005CBA68    lea         eax,[ebp-4]
 005CBA6B    mov         edx,dword ptr [ebx+4]
 005CBA6E    call        @UStrLAsg
>005CBA73    jmp         005CBA53
 005CBA75    cmp         dword ptr [ebp-4],0
>005CBA79    je          005CBA9F
 005CBA7B    mov         eax,dword ptr [ebp-4]
 005CBA7E    test        eax,eax
>005CBA80    je          005CBA87
 005CBA82    sub         eax,4
 005CBA85    mov         eax,dword ptr [eax]
 005CBA87    mov         edx,dword ptr [ebp-4]
 005CBA8A    cmp         word ptr [edx+eax*2-2],2E
>005CBA90    jbe         005CBA9F
 005CBA92    lea         eax,[ebp-4]
 005CBA95    mov         edx,5CBAFC;'.'
 005CBA9A    call        @UStrCat
 005CBA9F    push        10
 005CBAA1    lea         edx,[ebp-8]
 005CBAA4    mov         eax,edi
 005CBAA6    call        005CAD90
 005CBAAB    mov         eax,dword ptr [ebp-8]
 005CBAAE    call        @UStrToPWChar
 005CBAB3    push        eax
 005CBAB4    mov         eax,dword ptr [ebp-4]
 005CBAB7    call        @UStrToPWChar
 005CBABC    mov         edx,eax
 005CBABE    mov         eax,edi
 005CBAC0    pop         ecx
 005CBAC1    call        TApplication.MessageBox
 005CBAC6    xor         eax,eax
 005CBAC8    pop         edx
 005CBAC9    pop         ecx
 005CBACA    pop         ecx
 005CBACB    mov         dword ptr fs:[eax],edx
 005CBACE    push        5CBAE8
 005CBAD3    lea         eax,[ebp-8]
 005CBAD6    mov         edx,2
 005CBADB    call        @UStrArrayClr
 005CBAE0    ret
>005CBAE1    jmp         @HandleFinally
>005CBAE6    jmp         005CBAD3
 005CBAE8    pop         edi
 005CBAE9    pop         esi
 005CBAEA    pop         ebx
 005CBAEB    pop         ecx
 005CBAEC    pop         ecx
 005CBAED    pop         ebp
 005CBAEE    ret
*}
end;

//005CBB00
procedure sub_005CBB00(?:TApplication; ?:Integer; ?:NativeInt);
begin
{*
 005CBB00    push        ebx
 005CBB01    push        esi
 005CBB02    push        edi
 005CBB03    push        ebp
 005CBB04    add         esp,0FFFFFFF4
 005CBB07    mov         dword ptr [esp],ecx
 005CBB0A    mov         ebp,edx
 005CBB0C    mov         esi,eax
 005CBB0E    xor         edi,edi
 005CBB10    mov         byte ptr [esp+4],1
 005CBB15    lea         eax,[esp+4]
 005CBB19    push        eax
 005CBB1A    mov         ecx,dword ptr [esp+4]
 005CBB1E    mov         edx,ebp
 005CBB20    mov         eax,esi
 005CBB22    call        005CBC34
 005CBB27    mov         ebx,eax
 005CBB29    test        bl,bl
>005CBB2B    jne         005CBB69
 005CBB2D    mov         eax,[007CA7CC];Screen:TScreen
 005CBB32    mov         edi,dword ptr [eax+70]
 005CBB35    test        edi,edi
>005CBB37    je          005CBB44
 005CBB39    test        byte ptr [edi+1C],10
>005CBB3D    je          005CBB44
 005CBB3F    mov         byte ptr [esp+4],0
 005CBB44    test        edi,edi
>005CBB46    je          005CBB69
 005CBB48    mov         eax,edi
 005CBB4A    call        TGroupBox.GetTabOrder
 005CBB4F    cmp         ax,0FFFFFFFF
>005CBB53    jne         005CBB69
 005CBB55    cmp         byte ptr [edi+69],0
>005CBB59    jne         005CBB69
 005CBB5B    cmp         dword ptr [edi+2B4],0
>005CBB62    jne         005CBB69
 005CBB64    mov         byte ptr [esp+4],0
 005CBB69    cmp         byte ptr [esp+4],0
>005CBB6E    je          005CBC28
 005CBB74    test        edi,edi
>005CBB76    je          005CBBC2
 005CBB78    mov         eax,edi
 005CBB7A    call        TWinControl.HandleAllocated
 005CBB7F    test        al,al
>005CBB81    je          005CBBC2
 005CBB83    cmp         dword ptr [edi+2CC],0
>005CBB8A    je          005CBBC2
 005CBB8C    mov         eax,edi
 005CBB8E    call        TWinControl.GetHandle
 005CBB93    mov         dword ptr [esp+8],eax
 005CBB97    mov         eax,esi
 005CBB99    call        005CC3A0
 005CBB9E    test        al,al
>005CBBA0    je          005CBC28
 005CBBA6    push        ebp
 005CBBA7    mov         eax,dword ptr [esp+4]
 005CBBAB    push        eax
 005CBBAC    mov         ecx,dword ptr [edi+2CC]
 005CBBB2    mov         edx,dword ptr [esp+10]
 005CBBB6    mov         eax,dword ptr [esi+60]
 005CBBB9    mov         ebx,dword ptr [eax]
 005CBBBB    call        dword ptr [ebx+20]
 005CBBBE    mov         ebx,eax
>005CBBC0    jmp         005CBC28
 005CBBC2    cmp         dword ptr [esi+64],0
>005CBBC6    je          005CBC06
 005CBBC8    mov         eax,dword ptr [esi+188]
 005CBBCE    mov         dword ptr [esp+8],eax
 005CBBD2    mov         eax,dword ptr [esi+58]
 005CBBD5    test        eax,eax
>005CBBD7    je          005CBBE2
 005CBBD9    call        TWinControl.GetHandle
 005CBBDE    mov         dword ptr [esp+8],eax
 005CBBE2    mov         eax,esi
 005CBBE4    call        005CC3A0
 005CBBE9    test        al,al
>005CBBEB    je          005CBC28
 005CBBED    push        ebp
 005CBBEE    mov         eax,dword ptr [esp+4]
 005CBBF2    push        eax
 005CBBF3    mov         ecx,dword ptr [esi+64]
 005CBBF6    mov         edx,dword ptr [esp+10]
 005CBBFA    mov         eax,dword ptr [esi+60]
 005CBBFD    mov         ebx,dword ptr [eax]
 005CBBFF    call        dword ptr [ebx+20]
 005CBC02    mov         ebx,eax
>005CBC04    jmp         005CBC28
 005CBC06    cmp         byte ptr [esi+0C4],0
>005CBC0D    jne         005CBC28
 005CBC0F    mov         eax,dword ptr [esp]
 005CBC12    push        eax
 005CBC13    movzx       eax,bp
 005CBC16    push        eax
 005CBC17    push        0B01F
 005CBC1C    mov         eax,dword ptr [esi+188]
 005CBC22    push        eax
 005CBC23    call        user32.PostMessageW
 005CBC28    mov         eax,ebx
 005CBC2A    add         esp,0C
 005CBC2D    pop         ebp
 005CBC2E    pop         edi
 005CBC2F    pop         esi
 005CBC30    pop         ebx
 005CBC31    ret
*}
end;

//005CBC34
{*function sub_005CBC34(?:TApplication; ?:?; ?:PWideChar; ?:?):?;
begin
 005CBC34    push        ebp
 005CBC35    mov         ebp,esp
 005CBC37    add         esp,0FFFFFFF4
 005CBC3A    push        ebx
 005CBC3B    push        esi
 005CBC3C    mov         dword ptr [ebp-0C],ecx
 005CBC3F    mov         word ptr [ebp-6],dx
 005CBC43    mov         dword ptr [ebp-4],eax
 005CBC46    xor         ebx,ebx
 005CBC48    mov         eax,dword ptr [ebp+8]
 005CBC4B    mov         byte ptr [eax],1
 005CBC4E    xor         esi,esi
 005CBC50    mov         eax,[007CA7CC];Screen:TScreen
 005CBC55    mov         eax,dword ptr [eax+6C]
 005CBC58    test        eax,eax
>005CBC5A    je          005CBC8C
 005CBC5C    xor         edx,edx
 005CBC5E    call        GetParentForm
 005CBC63    mov         esi,eax
 005CBC65    test        esi,esi
>005CBC67    je          005CBC8C
 005CBC69    cmp         word ptr [esi+342],0;TCustomForm.?f342:word
>005CBC71    je          005CBC8C
 005CBC73    mov         eax,dword ptr [ebp+8]
 005CBC76    push        eax
 005CBC77    mov         ecx,dword ptr [ebp-0C]
 005CBC7A    movzx       edx,word ptr [ebp-6]
 005CBC7E    mov         eax,dword ptr [esi+344];TCustomForm.?f344:dword
 005CBC84    call        dword ptr [esi+340];TCustomForm.FOnHelp
 005CBC8A    mov         ebx,eax
 005CBC8C    test        bl,bl
>005CBC8E    jne         005CBCF6
 005CBC90    mov         eax,[007CA7CC];Screen:TScreen
 005CBC95    mov         eax,dword ptr [eax+70]
 005CBC98    test        eax,eax
>005CBC9A    je          005CBCC9
 005CBC9C    cmp         esi,eax
>005CBC9E    je          005CBCC9
 005CBCA0    mov         esi,eax
 005CBCA2    test        esi,esi
>005CBCA4    je          005CBCC9
 005CBCA6    cmp         word ptr [esi+342],0
>005CBCAE    je          005CBCC9
 005CBCB0    mov         eax,dword ptr [ebp+8]
 005CBCB3    push        eax
 005CBCB4    mov         ecx,dword ptr [ebp-0C]
 005CBCB7    movzx       edx,word ptr [ebp-6]
 005CBCBB    mov         eax,dword ptr [esi+344]
 005CBCC1    call        dword ptr [esi+340]
 005CBCC7    mov         ebx,eax
 005CBCC9    test        bl,bl
>005CBCCB    jne         005CBCF6
 005CBCCD    mov         eax,dword ptr [ebp-4]
 005CBCD0    cmp         word ptr [eax+13A],0
>005CBCD8    je          005CBCF6
 005CBCDA    mov         eax,dword ptr [ebp+8]
 005CBCDD    push        eax
 005CBCDE    mov         ebx,dword ptr [ebp-4]
 005CBCE1    mov         ecx,dword ptr [ebp-0C]
 005CBCE4    movzx       edx,word ptr [ebp-6]
 005CBCE8    mov         eax,dword ptr [ebx+13C]
 005CBCEE    call        dword ptr [ebx+138]
 005CBCF4    mov         ebx,eax
 005CBCF6    mov         eax,ebx
 005CBCF8    pop         esi
 005CBCF9    pop         ebx
 005CBCFA    mov         esp,ebp
 005CBCFC    pop         ebp
 005CBCFD    ret         4
end;*}

//005CBD00
function TApplication.HelpKeyword(Keyword:string):Boolean;
begin
{*
 005CBD00    push        ebp
 005CBD01    mov         ebp,esp
 005CBD03    add         esp,0FFFFFFF8
 005CBD06    push        ebx
 005CBD07    push        esi
 005CBD08    push        edi
 005CBD09    xor         ecx,ecx
 005CBD0B    mov         dword ptr [ebp-8],ecx
 005CBD0E    mov         edi,edx
 005CBD10    mov         esi,eax
 005CBD12    xor         eax,eax
 005CBD14    push        ebp
 005CBD15    push        5CBD7E
 005CBD1A    push        dword ptr fs:[eax]
 005CBD1D    mov         dword ptr fs:[eax],esp
 005CBD20    lea         eax,[ebp-1]
 005CBD23    push        eax
 005CBD24    mov         eax,edi
 005CBD26    call        @UStrToPWChar
 005CBD2B    mov         ecx,eax
 005CBD2D    mov         dx,102
 005CBD31    mov         eax,esi
 005CBD33    call        005CBC34
 005CBD38    mov         ebx,eax
 005CBD3A    cmp         byte ptr [ebp-1],0
>005CBD3E    je          005CBD68
 005CBD40    mov         eax,esi
 005CBD42    call        005CC3A0
 005CBD47    test        al,al
>005CBD49    je          005CBD66
 005CBD4B    mov         bl,1
 005CBD4D    lea         edx,[ebp-8]
 005CBD50    mov         eax,esi
 005CBD52    call        005CCD80
 005CBD57    mov         ecx,dword ptr [ebp-8]
 005CBD5A    mov         edx,edi
 005CBD5C    mov         eax,dword ptr [esi+60];TApplication.FHelpSystem:IHelpSystem
 005CBD5F    mov         esi,dword ptr [eax]
 005CBD61    call        dword ptr [esi+0C]
>005CBD64    jmp         005CBD68
 005CBD66    xor         ebx,ebx
 005CBD68    xor         eax,eax
 005CBD6A    pop         edx
 005CBD6B    pop         ecx
 005CBD6C    pop         ecx
 005CBD6D    mov         dword ptr fs:[eax],edx
 005CBD70    push        5CBD85
 005CBD75    lea         eax,[ebp-8]
 005CBD78    call        @UStrClr
 005CBD7D    ret
>005CBD7E    jmp         @HandleFinally
>005CBD83    jmp         005CBD75
 005CBD85    mov         eax,ebx
 005CBD87    pop         edi
 005CBD88    pop         esi
 005CBD89    pop         ebx
 005CBD8A    pop         ecx
 005CBD8B    pop         ecx
 005CBD8C    pop         ebp
 005CBD8D    ret
*}
end;

//005CBD90
function TApplication.HelpContext(Context:THelpContext):Boolean;
begin
{*
 005CBD90    push        ebp
 005CBD91    mov         ebp,esp
 005CBD93    add         esp,0FFFFFFF8
 005CBD96    push        ebx
 005CBD97    push        esi
 005CBD98    push        edi
 005CBD99    xor         ecx,ecx
 005CBD9B    mov         dword ptr [ebp-8],ecx
 005CBD9E    mov         edi,edx
 005CBDA0    mov         esi,eax
 005CBDA2    xor         eax,eax
 005CBDA4    push        ebp
 005CBDA5    push        5CBE07
 005CBDAA    push        dword ptr fs:[eax]
 005CBDAD    mov         dword ptr fs:[eax],esp
 005CBDB0    lea         eax,[ebp-1]
 005CBDB3    push        eax
 005CBDB4    mov         ecx,edi
 005CBDB6    mov         dx,1
 005CBDBA    mov         eax,esi
 005CBDBC    call        005CBC34
 005CBDC1    mov         ebx,eax
 005CBDC3    cmp         byte ptr [ebp-1],0
>005CBDC7    je          005CBDF1
 005CBDC9    mov         eax,esi
 005CBDCB    call        005CC3A0
 005CBDD0    test        al,al
>005CBDD2    je          005CBDEF
 005CBDD4    mov         bl,1
 005CBDD6    lea         edx,[ebp-8]
 005CBDD9    mov         eax,esi
 005CBDDB    call        005CCD80
 005CBDE0    mov         ecx,dword ptr [ebp-8]
 005CBDE3    mov         edx,edi
 005CBDE5    mov         eax,dword ptr [esi+60];TApplication.FHelpSystem:IHelpSystem
 005CBDE8    mov         esi,dword ptr [eax]
 005CBDEA    call        dword ptr [esi+10]
>005CBDED    jmp         005CBDF1
 005CBDEF    xor         ebx,ebx
 005CBDF1    xor         eax,eax
 005CBDF3    pop         edx
 005CBDF4    pop         ecx
 005CBDF5    pop         ecx
 005CBDF6    mov         dword ptr fs:[eax],edx
 005CBDF9    push        5CBE0E
 005CBDFE    lea         eax,[ebp-8]
 005CBE01    call        @UStrClr
 005CBE06    ret
>005CBE07    jmp         @HandleFinally
>005CBE0C    jmp         005CBDFE
 005CBE0E    mov         eax,ebx
 005CBE10    pop         edi
 005CBE11    pop         esi
 005CBE12    pop         ebx
 005CBE13    pop         ecx
 005CBE14    pop         ecx
 005CBE15    pop         ebp
 005CBE16    ret
*}
end;

//005CBE18
procedure TApplication.HelpCommand(Command:Integer; Data:NativeInt);
begin
{*
 005CBE18    call        005CBB00
 005CBE1D    ret
*}
end;

//005CBE20
{*procedure sub_005CBE20(?:TApplication; ?:?);
begin
 005CBE20    push        ebx
 005CBE21    mov         ebx,edx
 005CBE23    mov         edx,ebx
 005CBE25    xor         eax,eax
 005CBE27    call        ParamStr
 005CBE2C    pop         ebx
 005CBE2D    ret
end;*}

//005CBE30
procedure TApplication.SetShowHint(Value:Boolean);
begin
{*
 005CBE30    push        ebx
 005CBE31    push        esi
 005CBE32    mov         ebx,eax
 005CBE34    cmp         dl,byte ptr [ebx+9C]
>005CBE3A    je          005CBE84
 005CBE3C    mov         eax,edx
 005CBE3E    mov         byte ptr [ebx+9C],al
 005CBE44    test        al,al
>005CBE46    je          005CBE71
 005CBE48    cmp         dword ptr ds:[7A1CA4],0;^gvar_004E0380
>005CBE4F    je          005CBE84
 005CBE51    mov         ecx,ebx
 005CBE53    mov         dl,1
 005CBE55    mov         eax,[007A1CA4];^gvar_004E0380
 005CBE5A    call        dword ptr [eax+3C]
 005CBE5D    mov         esi,eax
 005CBE5F    mov         dword ptr [ebx+98],esi
 005CBE65    mov         edx,dword ptr [ebx+70]
 005CBE68    mov         eax,esi
 005CBE6A    call        TGroupBox.SetColor
>005CBE6F    jmp         005CBE84
 005CBE71    mov         eax,dword ptr [ebx+98]
 005CBE77    call        TObject.Free
 005CBE7C    xor         eax,eax
 005CBE7E    mov         dword ptr [ebx+98],eax
 005CBE84    pop         esi
 005CBE85    pop         ebx
 005CBE86    ret
*}
end;

//005CBEB8
procedure sub_005CBEB8;
begin
{*
 005CBEB8    push        esi
 005CBEB9    push        edi
 005CBEBA    push        ebp
 005CBEBB    mov         eax,[007CA7CC];Screen:TScreen
 005CBEC0    call        005C814C
 005CBEC5    mov         edi,eax
 005CBEC7    dec         edi
 005CBEC8    test        edi,edi
>005CBECA    jl          005CBF18
 005CBECC    inc         edi
 005CBECD    xor         ebp,ebp
 005CBECF    mov         edx,ebp
 005CBED1    mov         eax,[007CA7CC];Screen:TScreen
 005CBED6    call        TScreen.GetCustomForms
 005CBEDB    mov         esi,eax
 005CBEDD    mov         eax,esi
 005CBEDF    call        TWinControl.HandleAllocated
 005CBEE4    test        al,al
>005CBEE6    je          005CBF14
 005CBEE8    mov         eax,esi
 005CBEEA    call        TWinControl.GetHandle
 005CBEEF    push        eax
 005CBEF0    call        user32.IsWindowVisible
 005CBEF5    test        eax,eax
>005CBEF7    je          005CBF14
 005CBEF9    mov         eax,esi
 005CBEFB    call        TWinControl.GetHandle
 005CBF00    push        eax
 005CBF01    call        user32.IsWindowEnabled
 005CBF06    test        eax,eax
>005CBF08    je          005CBF14
 005CBF0A    mov         eax,esi
 005CBF0C    mov         edx,dword ptr [eax]
 005CBF0E    call        dword ptr [edx+12C];TCustomForm.sub_005C6DA0
 005CBF14    inc         ebp
 005CBF15    dec         edi
>005CBF16    jne         005CBECF
 005CBF18    pop         ebp
 005CBF19    pop         edi
 005CBF1A    pop         esi
 005CBF1B    ret
*}
end;

//005CBF1C
{*function sub_005CBF1C(?:TApplication):?;
begin
 005CBF1C    push        ebx
 005CBF1D    add         esp,0FFFFFFF8
 005CBF20    mov         ebx,eax
 005CBF22    push        esp
 005CBF23    call        user32.GetCursorPos
 005CBF28    mov         eax,esp
 005CBF2A    mov         dl,1
 005CBF2C    call        FindDragTarget
 005CBF31    cmp         eax,dword ptr [ebx+5C]
>005CBF34    je          005CBF39
 005CBF36    mov         dword ptr [ebx+5C],eax
 005CBF39    pop         ecx
 005CBF3A    pop         edx
 005CBF3B    pop         ebx
 005CBF3C    ret
end;*}

//005CBF40
procedure sub_005CBF40;
begin
{*
 005CBF40    push        ebp
 005CBF41    mov         ebp,esp
 005CBF43    push        ebx
 005CBF44    push        esi
 005CBF45    push        edi
 005CBF46    cmp         dword ptr ds:[7CA7C8],0;Application:TApplication
>005CBF4D    je          005CBF9F
 005CBF4F    xor         eax,eax
 005CBF51    push        ebp
 005CBF52    push        5CBF85
 005CBF57    push        dword ptr fs:[eax]
 005CBF5A    mov         dword ptr fs:[eax],esp
 005CBF5D    mov         eax,[007CA7F4];gvar_007CA7F4:LongWord
 005CBF62    push        eax
 005CBF63    push        0
 005CBF65    call        user32.KillTimer
 005CBF6A    xor         eax,eax
 005CBF6C    mov         [007CA7F4],eax;gvar_007CA7F4:LongWord
 005CBF71    mov         eax,[007CA7C8];Application:TApplication
 005CBF76    call        005CBEB8
 005CBF7B    xor         eax,eax
 005CBF7D    pop         edx
 005CBF7E    pop         ecx
 005CBF7F    pop         ecx
 005CBF80    mov         dword ptr fs:[eax],edx
>005CBF83    jmp         005CBF9F
>005CBF85    jmp         @HandleAnyException
 005CBF8A    mov         edx,dword ptr ds:[7CA7C8];Application:TApplication
 005CBF90    mov         eax,[007CA7C8];Application:TApplication
 005CBF95    call        TApplication.HandleException
 005CBF9A    call        @DoneExcept
 005CBF9F    pop         edi
 005CBFA0    pop         esi
 005CBFA1    pop         ebx
 005CBFA2    pop         ebp
 005CBFA3    ret         10
*}
end;

//005CBFA8
procedure sub_005CBFA8(?:TApplication);
begin
{*
 005CBFA8    push        ebp
 005CBFA9    mov         ebp,esp
 005CBFAB    add         esp,0FFFFFFF0
 005CBFAE    push        ebx
 005CBFAF    push        esi
 005CBFB0    push        edi
 005CBFB1    xor         ecx,ecx
 005CBFB3    mov         dword ptr [ebp-0C],ecx
 005CBFB6    mov         dword ptr [ebp-10],ecx
 005CBFB9    mov         dword ptr [ebp-4],eax
 005CBFBC    xor         eax,eax
 005CBFBE    push        ebp
 005CBFBF    push        5CC111
 005CBFC4    push        dword ptr fs:[eax]
 005CBFC7    mov         dword ptr fs:[eax],esp
 005CBFCA    mov         eax,dword ptr [ebp-4]
 005CBFCD    call        005CBF1C
 005CBFD2    mov         ebx,eax
 005CBFD4    mov         eax,dword ptr [ebp-4]
 005CBFD7    cmp         byte ptr [eax+9C],0;TApplication.FShowHint:Boolean
>005CBFDE    je          005CBFF1
 005CBFE0    mov         eax,dword ptr [ebp-4]
 005CBFE3    cmp         dword ptr [eax+5C],0;TApplication.FMouseControl:TControl
>005CBFE7    jne         005CBFF1
 005CBFE9    mov         eax,dword ptr [ebp-4]
 005CBFEC    call        TApplication.CancelHint
 005CBFF1    lea         edx,[ebp-10]
 005CBFF4    mov         eax,ebx
 005CBFF6    call        005C9000
 005CBFFB    mov         eax,dword ptr [ebp-10]
 005CBFFE    lea         edx,[ebp-0C]
 005CC001    call        GetLongHint
 005CC006    mov         edx,dword ptr [ebp-0C]
 005CC009    mov         eax,[007CA7C8];Application:TApplication
 005CC00E    call        005CC1DC
 005CC013    mov         byte ptr [ebp-5],1
 005CC017    xor         eax,eax
 005CC019    push        ebp
 005CC01A    push        5CC0B8
 005CC01F    push        dword ptr fs:[eax]
 005CC022    mov         dword ptr fs:[eax],esp
 005CC025    mov         eax,dword ptr [ebp-4]
 005CC028    cmp         word ptr [eax+14A],0;TApplication.?f14A:word
>005CC030    je          005CC047
 005CC032    lea         ecx,[ebp-5]
 005CC035    mov         ebx,dword ptr [ebp-4]
 005CC038    mov         edx,dword ptr [ebp-4]
 005CC03B    mov         eax,dword ptr [ebx+14C];TApplication.?f14C:dword
 005CC041    call        dword ptr [ebx+148];TApplication.FOnIdle
 005CC047    cmp         byte ptr [ebp-5],0
>005CC04B    je          005CC0AE
 005CC04D    mov         eax,dword ptr [ebp-4]
 005CC050    cmp         dword ptr [eax+0D8],0;TApplication.FActionUpdateDelay:Integer
>005CC057    jg          005CC063
 005CC059    mov         eax,dword ptr [ebp-4]
 005CC05C    call        005CBEB8
>005CC061    jmp         005CC0AE
 005CC063    cmp         dword ptr ds:[7CA7F4],0;gvar_007CA7F4:LongWord
>005CC06A    jne         005CC0AE
 005CC06C    cmp         dword ptr ds:[7CA7F8],0;gvar_007CA7F8
>005CC073    jne         005CC07F
 005CC075    mov         dword ptr ds:[7CA7F8],5CBF40
 005CC07F    mov         eax,[007CA7F8];gvar_007CA7F8
 005CC084    push        eax
 005CC085    mov         eax,dword ptr [ebp-4]
 005CC088    mov         eax,dword ptr [eax+0D8];TApplication.FActionUpdateDelay:Integer
 005CC08E    push        eax
 005CC08F    push        0
 005CC091    push        0
 005CC093    call        user32.SetTimer
 005CC098    mov         [007CA7F4],eax;gvar_007CA7F4:LongWord
 005CC09D    cmp         dword ptr ds:[7CA7F4],0;gvar_007CA7F4:LongWord
>005CC0A4    jne         005CC0AE
 005CC0A6    mov         eax,dword ptr [ebp-4]
 005CC0A9    call        005CBEB8
 005CC0AE    xor         eax,eax
 005CC0B0    pop         edx
 005CC0B1    pop         ecx
 005CC0B2    pop         ecx
 005CC0B3    mov         dword ptr fs:[eax],edx
>005CC0B6    jmp         005CC0CD
>005CC0B8    jmp         @HandleAnyException
 005CC0BD    mov         edx,dword ptr [ebp-4]
 005CC0C0    mov         eax,dword ptr [ebp-4]
 005CC0C3    call        TApplication.HandleException
 005CC0C8    call        @DoneExcept
 005CC0CD    call        kernel32.GetCurrentThreadId
 005CC0D2    mov         edx,dword ptr ds:[7C4EF8];^MainThreadID:Cardinal
 005CC0D8    cmp         eax,dword ptr [edx]
>005CC0DA    jne         005CC0EB
 005CC0DC    xor         eax,eax
 005CC0DE    call        CheckSynchronize
 005CC0E3    test        al,al
>005CC0E5    je          005CC0EB
 005CC0E7    mov         byte ptr [ebp-5],0
 005CC0EB    cmp         byte ptr [ebp-5],0
>005CC0EF    je          005CC0F6
 005CC0F1    call        user32.WaitMessage
 005CC0F6    xor         eax,eax
 005CC0F8    pop         edx
 005CC0F9    pop         ecx
 005CC0FA    pop         ecx
 005CC0FB    mov         dword ptr fs:[eax],edx
 005CC0FE    push        5CC118
 005CC103    lea         eax,[ebp-10]
 005CC106    mov         edx,2
 005CC10B    call        @UStrArrayClr
 005CC110    ret
>005CC111    jmp         @HandleFinally
>005CC116    jmp         005CC103
 005CC118    pop         edi
 005CC119    pop         esi
 005CC11A    pop         ebx
 005CC11B    mov         esp,ebp
 005CC11D    pop         ebp
 005CC11E    ret
*}
end;

//005CC120
{*procedure sub_005CC120(?:?; ?:?; ?:?; ?:?);
begin
 005CC120    push        ebp
 005CC121    mov         ebp,esp
 005CC123    push        ecx
 005CC124    push        ebx
 005CC125    push        esi
 005CC126    push        edi
 005CC127    mov         dword ptr [ebp-4],ecx
 005CC12A    mov         edi,edx
 005CC12C    mov         eax,[007CA7CC];Screen:TScreen
 005CC131    call        TScreen.GetFormCount
 005CC136    mov         ebx,eax
 005CC138    dec         ebx
 005CC139    test        ebx,ebx
>005CC13B    jl          005CC15F
 005CC13D    inc         ebx
 005CC13E    xor         esi,esi
 005CC140    mov         eax,dword ptr [ebp+8]
 005CC143    push        eax
 005CC144    mov         edx,esi
 005CC146    mov         eax,[007CA7CC];Screen:TScreen
 005CC14B    call        TScreen.GetForm
 005CC150    movzx       edx,di
 005CC153    mov         ecx,dword ptr [ebp-4]
 005CC156    call        TControl.Perform
 005CC15B    inc         esi
 005CC15C    dec         ebx
>005CC15D    jne         005CC140
 005CC15F    pop         edi
 005CC160    pop         esi
 005CC161    pop         ebx
 005CC162    pop         ecx
 005CC163    pop         ebp
 005CC164    ret         4
end;*}

//005CC168
{*procedure sub_005CC168(?:?);
begin
 005CC168    push        ebx
 005CC169    push        esi
 005CC16A    mov         ebx,eax
 005CC16C    mov         eax,[007C4770];^gvar_007CA5E0
 005CC171    cmp         byte ptr [eax],0
>005CC174    je          005CC1A9
 005CC176    mov         eax,ebx
 005CC178    call        005CAAE4
 005CC17D    push        eax
 005CC17E    push        1
 005CC180    push        80
 005CC185    mov         eax,dword ptr [ebx+188]
 005CC18B    push        eax
 005CC18C    call        user32.SendMessageW
 005CC191    mov         esi,dword ptr [ebx+188]
 005CC197    mov         eax,ebx
 005CC199    call        005CAAE4
 005CC19E    push        eax
 005CC19F    push        0F2
 005CC1A1    push        esi
 005CC1A2    call        user32.SetClassLongW
>005CC1A7    jmp         005CC1C8
 005CC1A9    mov         eax,dword ptr [ebx+188]
 005CC1AF    call        005BE99C
 005CC1B4    test        eax,eax
>005CC1B6    je          005CC1C8
 005CC1B8    push        0FF
 005CC1BA    push        0
 005CC1BC    mov         eax,dword ptr [ebx+188]
 005CC1C2    push        eax
 005CC1C3    call        user32.InvalidateRect
 005CC1C8    push        0
 005CC1CA    xor         ecx,ecx
 005CC1CC    mov         dx,0B01D
 005CC1D0    mov         eax,ebx
 005CC1D2    call        005CC120
 005CC1D7    pop         esi
 005CC1D8    pop         ebx
 005CC1D9    ret
end;*}

//005CC1DC
{*procedure sub_005CC1DC(?:TApplication; ?:?);
begin
 005CC1DC    push        ebp
 005CC1DD    mov         ebp,esp
 005CC1DF    push        ecx
 005CC1E0    push        ebx
 005CC1E1    push        esi
 005CC1E2    mov         esi,edx
 005CC1E4    mov         ebx,eax
 005CC1E6    mov         eax,dword ptr [ebx+68];TApplication.FHint:string
 005CC1E9    mov         edx,esi
 005CC1EB    call        @UStrEqual
>005CC1F0    je          005CC26B
 005CC1F2    lea         eax,[ebx+68];TApplication.FHint:string
 005CC1F5    mov         edx,esi
 005CC1F7    call        @UStrAsg
 005CC1FC    cmp         word ptr [ebx+142],0;TApplication.?f142:word
>005CC204    je          005CC216
 005CC206    mov         edx,ebx
 005CC208    mov         eax,dword ptr [ebx+144];TApplication.?f144:dword
 005CC20E    call        dword ptr [ebx+140];TApplication.FOnHint
>005CC214    jmp         005CC26B
 005CC216    mov         ecx,ebx
 005CC218    mov         dl,1
 005CC21A    mov         eax,[0051DF10];THintAction
 005CC21F    call        THintAction.Create;THintAction.Create
 005CC224    mov         dword ptr [ebp-4],eax
 005CC227    mov         edx,esi
 005CC229    mov         eax,dword ptr [ebp-4]
 005CC22C    mov         ecx,dword ptr [eax]
 005CC22E    call        dword ptr [ecx+88];TVirtualListAction.SetHint
 005CC234    xor         eax,eax
 005CC236    push        ebp
 005CC237    push        5CC264
 005CC23C    push        dword ptr fs:[eax]
 005CC23F    mov         dword ptr fs:[eax],esp
 005CC242    mov         eax,dword ptr [ebp-4]
 005CC245    mov         si,0FFEF
 005CC249    call        @CallDynaInst;TCustomAction.Update
 005CC24E    xor         eax,eax
 005CC250    pop         edx
 005CC251    pop         ecx
 005CC252    pop         ecx
 005CC253    mov         dword ptr fs:[eax],edx
 005CC256    push        5CC26B
 005CC25B    mov         eax,dword ptr [ebp-4]
 005CC25E    call        TObject.Free
 005CC263    ret
>005CC264    jmp         @HandleFinally
>005CC269    jmp         005CC25B
 005CC26B    pop         esi
 005CC26C    pop         ebx
 005CC26D    pop         ecx
 005CC26E    pop         ebp
 005CC26F    ret
end;*}

//005CC270
{*procedure sub_005CC270(?:?; ?:?);
begin
 005CC270    push        ebp
 005CC271    mov         ebp,esp
 005CC273    push        ebx
 005CC274    mov         ebx,eax
 005CC276    mov         eax,dword ptr [ebp+8]
 005CC279    mov         eax,dword ptr [eax-4]
 005CC27C    mov         eax,dword ptr [eax+188]
 005CC282    push        eax
 005CC283    call        user32.IsWindowVisible
 005CC288    cmp         eax,1
 005CC28B    sbb         eax,eax
 005CC28D    inc         eax
 005CC28E    cmp         al,byte ptr ds:[7A1DE4];0x0 gvar_007A1DE4
>005CC294    jne         005CC312
 005CC296    cmp         bl,byte ptr ds:[7A1DE4];0x0 gvar_007A1DE4
>005CC29C    je          005CC312
 005CC29E    mov         eax,dword ptr [ebp+8]
 005CC2A1    mov         eax,dword ptr [eax-4]
 005CC2A4    cmp         byte ptr [eax+0EB],0
>005CC2AB    je          005CC2E4
 005CC2AD    cmp         byte ptr ds:[7A1DE4],0;gvar_007A1DE4
>005CC2B4    jne         005CC2E4
 005CC2B6    mov         eax,dword ptr [ebp+8]
 005CC2B9    mov         eax,dword ptr [eax-4]
 005CC2BC    mov         eax,dword ptr [eax+188]
 005CC2C2    push        0EC
 005CC2C4    push        eax
 005CC2C5    call        user32.GetWindowLongW
 005CC2CA    mov         edx,dword ptr [ebp+8]
 005CC2CD    mov         edx,dword ptr [edx-4]
 005CC2D0    mov         edx,dword ptr [edx+188]
 005CC2D6    or          eax,8000000
 005CC2DB    push        eax
 005CC2DC    push        0EC
 005CC2DE    push        edx
 005CC2DF    call        user32.SetWindowLongW
 005CC2E4    movzx       eax,bl
 005CC2E7    movzx       eax,word ptr [eax*2+7A1DE6]
 005CC2EF    push        eax
 005CC2F0    push        0
 005CC2F2    push        0
 005CC2F4    push        0
 005CC2F6    push        0
 005CC2F8    push        0
 005CC2FA    mov         eax,dword ptr [ebp+8]
 005CC2FD    mov         eax,dword ptr [eax-4]
 005CC300    mov         eax,dword ptr [eax+188]
 005CC306    push        eax
 005CC307    call        user32.SetWindowPos
 005CC30C    mov         byte ptr ds:[7A1DE4],bl;gvar_007A1DE4
 005CC312    pop         ebx
 005CC313    pop         ebp
 005CC314    ret
end;*}

//005CC318
{*procedure sub_005CC318(?:?);
begin
 005CC318    push        ebp
 005CC319    mov         ebp,esp
 005CC31B    push        ecx
 005CC31C    push        ebx
 005CC31D    push        esi
 005CC31E    push        edi
 005CC31F    mov         dword ptr [ebp-4],eax
 005CC322    mov         eax,dword ptr [ebp-4]
 005CC325    cmp         dword ptr [eax+188],0
>005CC32C    je          005CC39A
 005CC32E    mov         eax,[007CA7CC];Screen:TScreen
 005CC333    call        TScreen.GetFormCount
 005CC338    mov         esi,eax
 005CC33A    dec         esi
 005CC33B    test        esi,esi
>005CC33D    jl          005CC391
 005CC33F    inc         esi
 005CC340    xor         edi,edi
 005CC342    mov         edx,edi
 005CC344    mov         eax,[007CA7CC];Screen:TScreen
 005CC349    call        TScreen.GetForm
 005CC34E    mov         ebx,eax
 005CC350    cmp         byte ptr [ebx+69],0;TForm.FVisible:Boolean
>005CC354    je          005CC38D
 005CC356    cmp         dword ptr [ebx+1E4],0;TForm.FParentWindow:HWND
>005CC35D    je          005CC382
 005CC35F    mov         eax,ebx
 005CC361    call        TWinControl.HandleAllocated
 005CC366    test        al,al
>005CC368    je          005CC382
 005CC36A    mov         eax,dword ptr [ebx+1E4];TForm.FParentWindow:HWND
 005CC370    push        eax
 005CC371    mov         eax,ebx
 005CC373    call        TWinControl.GetHandle
 005CC378    push        eax
 005CC379    call        user32.IsChild
 005CC37E    test        eax,eax
>005CC380    jne         005CC38D
 005CC382    push        ebp
 005CC383    mov         al,1
 005CC385    call        005CC270
 005CC38A    pop         ecx
>005CC38B    jmp         005CC39A
 005CC38D    inc         edi
 005CC38E    dec         esi
>005CC38F    jne         005CC342
 005CC391    push        ebp
 005CC392    xor         eax,eax
 005CC394    call        005CC270
 005CC399    pop         ecx
 005CC39A    pop         edi
 005CC39B    pop         esi
 005CC39C    pop         ebx
 005CC39D    pop         ecx
 005CC39E    pop         ebp
 005CC39F    ret
end;*}

//005CC3A0
function sub_005CC3A0(?:TApplication):Boolean;
begin
{*
 005CC3A0    push        ebx
 005CC3A1    mov         ebx,eax
 005CC3A3    cmp         dword ptr [ebx+60],0;TApplication.FHelpSystem:IHelpSystem
>005CC3A7    jne         005CC3B6
 005CC3A9    lea         eax,[ebx+60];TApplication.FHelpSystem:IHelpSystem
 005CC3AC    call        @IntfClear
 005CC3B1    call        GetHelpSystem
 005CC3B6    cmp         dword ptr [ebx+60],0;TApplication.FHelpSystem:IHelpSystem
 005CC3BA    setne       al
 005CC3BD    pop         ebx
 005CC3BE    ret
*}
end;

//005CC3C0
{*procedure sub_005CC3C0(?:TApplication; ?:Integer; ?:?);
begin
 005CC3C0    push        ebx
 005CC3C1    push        esi
 005CC3C2    push        edi
 005CC3C3    mov         ebx,ecx
 005CC3C5    mov         esi,edx
 005CC3C7    mov         edi,eax
 005CC3C9    mov         eax,edi
 005CC3CB    call        005CC400
 005CC3D0    mov         eax,[007A1DA4];^gvar_005C9058
 005CC3D5    push        eax
 005CC3D6    push        esi
 005CC3D7    push        0
 005CC3D9    push        0
 005CC3DB    call        user32.SetTimer
 005CC3E0    mov         dword ptr [edi+0A0],eax
 005CC3E6    mov         byte ptr [edi+9D],bl
 005CC3EC    cmp         dword ptr [edi+0A0],0
>005CC3F3    jne         005CC3FC
 005CC3F5    mov         eax,edi
 005CC3F7    call        TApplication.CancelHint
 005CC3FC    pop         edi
 005CC3FD    pop         esi
 005CC3FE    pop         ebx
 005CC3FF    ret
end;*}

//005CC400
procedure sub_005CC400(?:TApplication);
begin
{*
 005CC400    push        ebx
 005CC401    mov         ebx,eax
 005CC403    mov         eax,dword ptr [ebx+0A0]
 005CC409    test        eax,eax
>005CC40B    je          005CC41D
 005CC40D    push        eax
 005CC40E    push        0
 005CC410    call        user32.KillTimer
 005CC415    xor         eax,eax
 005CC417    mov         dword ptr [ebx+0A0],eax
 005CC41D    pop         ebx
 005CC41E    ret
*}
end;

//005CC420
procedure TApplication.HintMouseMessage(Control:TControl; var Message:TMessage);
begin
{*
 005CC420    push        ebx
 005CC421    push        esi
 005CC422    push        edi
 005CC423    add         esp,0FFFFFFC4
 005CC426    mov         edi,ecx
 005CC428    mov         ebx,edx
 005CC42A    mov         esi,eax
 005CC42C    push        esi
 005CC42D    mov         esi,edi
 005CC42F    lea         edi,[esp+28]
 005CC433    movs        dword ptr [edi],dword ptr [esi]
 005CC434    movs        dword ptr [edi],dword ptr [esi]
 005CC435    movs        dword ptr [edi],dword ptr [esi]
 005CC436    movs        dword ptr [edi],dword ptr [esi]
 005CC437    pop         esi
 005CC438    lea         eax,[esp+2C]
 005CC43C    mov         dword ptr [esp+0C],eax
 005CC440    mov         eax,dword ptr [esp+0C]
 005CC444    movsx       eax,word ptr [eax]
 005CC447    mov         dword ptr [esp+10],eax
 005CC44B    mov         eax,dword ptr [esp+0C]
 005CC44F    movsx       eax,word ptr [eax+2]
 005CC453    mov         dword ptr [esp+14],eax
 005CC457    lea         ecx,[esp+34]
 005CC45B    lea         edx,[esp+10]
 005CC45F    mov         eax,ebx
 005CC461    call        TControl.ClientToScreen
 005CC466    lea         eax,[esp+34]
 005CC46A    mov         dl,1
 005CC46C    call        FindDragTarget
 005CC471    call        005C9038
 005CC476    mov         edi,eax
 005CC478    test        edi,edi
>005CC47A    je          005CC485
 005CC47C    cmp         byte ptr [edi+99],0
>005CC483    jne         005CC491
 005CC485    mov         eax,esi
 005CC487    call        TApplication.CancelHint
>005CC48C    jmp         005CC548
 005CC491    cmp         edi,dword ptr [esi+74];TApplication.FHintControl:TControl
>005CC494    je          005CC49A
 005CC496    mov         al,1
>005CC498    jmp         005CC4D6
 005CC49A    lea         eax,[esp+2C]
 005CC49E    mov         dword ptr [esp+18],eax
 005CC4A2    mov         eax,dword ptr [esp+18]
 005CC4A6    movsx       eax,word ptr [eax]
 005CC4A9    mov         dword ptr [esp+1C],eax
 005CC4AD    mov         eax,dword ptr [esp+18]
 005CC4B1    movsx       eax,word ptr [eax+2]
 005CC4B5    mov         dword ptr [esp+20],eax
 005CC4B9    lea         ecx,[esp+34]
 005CC4BD    lea         edx,[esp+1C]
 005CC4C1    mov         eax,ebx
 005CC4C3    call        TControl.ClientToScreen
 005CC4C8    lea         edx,[esp+34]
 005CC4CC    lea         eax,[esi+78];TApplication.FHintCursorRect:TRect
 005CC4CF    call        TRect.Contains
 005CC4D4    xor         al,1
 005CC4D6    test        al,al
>005CC4D8    je          005CC548
 005CC4DA    movzx       ebx,byte ptr [esi+6C];TApplication.FHintActive:Boolean
 005CC4DE    test        bl,bl
>005CC4E0    je          005CC4ED
 005CC4E2    mov         eax,dword ptr [esi+94];TApplication.FHintShortPause:Integer
 005CC4E8    mov         dword ptr [esp],eax
>005CC4EB    jmp         005CC4F6
 005CC4ED    mov         eax,dword ptr [esi+8C];TApplication.FHintPause:Integer
 005CC4F3    mov         dword ptr [esp],eax
 005CC4F6    mov         eax,esp
 005CC4F8    push        eax
 005CC4F9    movzx       ecx,bl
 005CC4FC    mov         edx,0B041
 005CC501    mov         eax,edi
 005CC503    call        TControl.Perform
 005CC508    test        bl,bl
>005CC50A    je          005CC52F
 005CC50C    cmp         dword ptr [esp],0
>005CC510    jne         005CC52F
 005CC512    mov         byte ptr [esi+6C],bl;TApplication.FHintActive:Boolean
 005CC515    mov         dword ptr [esi+74],edi;TApplication.FHintControl:TControl
 005CC518    lea         eax,[esp+4]
 005CC51C    push        eax
 005CC51D    call        user32.GetCursorPos
 005CC522    lea         edx,[esp+4]
 005CC526    mov         eax,esi
 005CC528    call        TApplication.ActivateHint
>005CC52D    jmp         005CC548
 005CC52F    mov         eax,esi
 005CC531    call        TApplication.CancelHint
 005CC536    mov         byte ptr [esi+6C],bl;TApplication.FHintActive:Boolean
 005CC539    mov         dword ptr [esi+74],edi;TApplication.FHintControl:TControl
 005CC53C    xor         ecx,ecx
 005CC53E    mov         edx,dword ptr [esp]
 005CC541    mov         eax,esi
 005CC543    call        005CC3C0
 005CC548    add         esp,3C
 005CC54B    pop         edi
 005CC54C    pop         esi
 005CC54D    pop         ebx
 005CC54E    ret
*}
end;

//005CC588
procedure TApplication.HideHint;
begin
{*
 005CC588    push        ebx
 005CC589    push        esi
 005CC58A    mov         ebx,eax
 005CC58C    mov         esi,dword ptr [ebx+98];TApplication.FHintWindow:THintWindow
 005CC592    test        esi,esi
>005CC594    je          005CC5F9
 005CC596    mov         eax,esi
 005CC598    call        TWinControl.HandleAllocated
 005CC59D    test        al,al
>005CC59F    je          005CC5F9
 005CC5A1    mov         eax,dword ptr [ebx+98];TApplication.FHintWindow:THintWindow
 005CC5A7    call        TWinControl.GetHandle
 005CC5AC    push        eax
 005CC5AD    call        user32.IsWindowVisible
 005CC5B2    test        eax,eax
>005CC5B4    je          005CC5F9
 005CC5B6    mov         eax,dword ptr [ebx+98];TApplication.FHintWindow:THintWindow
 005CC5BC    mov         edx,dword ptr [eax]
 005CC5BE    call        dword ptr [edx+118];THintWindow.ShouldHideHint
 005CC5C4    test        al,al
>005CC5C6    je          005CC5EA
 005CC5C8    push        0
 005CC5CA    mov         eax,dword ptr [ebx+98];TApplication.FHintWindow:THintWindow
 005CC5D0    call        TWinControl.GetHandle
 005CC5D5    push        eax
 005CC5D6    call        user32.ShowWindow
 005CC5DB    xor         edx,edx
 005CC5DD    mov         eax,dword ptr [ebx+98];TApplication.FHintWindow:THintWindow
 005CC5E3    call        TControl.SetVisible
>005CC5E8    jmp         005CC5F9
 005CC5EA    mov         cl,1
 005CC5EC    mov         edx,dword ptr [ebx+88];TApplication.FHintHidePause:Integer
 005CC5F2    mov         eax,ebx
 005CC5F4    call        005CC3C0
 005CC5F9    pop         esi
 005CC5FA    pop         ebx
 005CC5FB    ret
*}
end;

//005CC5FC
procedure TApplication.CancelHint;
begin
{*
 005CC5FC    push        ebx
 005CC5FD    push        ecx
 005CC5FE    mov         ebx,eax
 005CC600    lea         eax,[ebx+74];TApplication.FHintControl:TControl
 005CC603    mov         dword ptr [esp],eax
 005CC606    push        0
 005CC608    mov         eax,dword ptr [esp+4]
 005CC60C    push        eax
 005CC60D    call        kernel32.InterlockedExchange
 005CC612    test        eax,eax
>005CC614    je          005CC62D
 005CC616    mov         eax,ebx
 005CC618    call        TApplication.HideHint
 005CC61D    mov         byte ptr [ebx+6C],0;TApplication.FHintActive:Boolean
 005CC621    call        005C91C0
 005CC626    mov         eax,ebx
 005CC628    call        005CC400
 005CC62D    pop         edx
 005CC62E    pop         ebx
 005CC62F    ret
*}
end;

//005CC630
{*function sub_005CC630(?:?; ?:Integer):?;
begin
 005CC630    push        ecx
 005CC631    mov         ecx,edx
 005CC633    mov         edx,edi
 005CC635    mov         edi,eax
 005CC637    pop         eax
 005CC638    repe scas   byte ptr [edi]
 005CC63A    mov         eax,ecx
 005CC63C    mov         edi,edx
 005CC63E    ret
end;*}

//005CC640
{*function sub_005CC640:?;
begin
 005CC640    push        ebp
 005CC641    mov         ebp,esp
 005CC643    add         esp,0FFFFFFD8
 005CC646    push        ebx
 005CC647    push        esi
 005CC648    push        edi
 005CC649    push        0E
 005CC64B    call        user32.GetSystemMetrics
 005CC650    mov         dword ptr [ebp-4],eax
 005CC653    lea         eax,[ebp-28]
 005CC656    push        eax
 005CC657    call        user32.GetCursor
 005CC65C    push        eax
 005CC65D    call        user32.GetIconInfo
 005CC662    test        eax,eax
>005CC664    je          005CC787
 005CC66A    xor         edx,edx
 005CC66C    push        ebp
 005CC66D    push        5CC780
 005CC672    push        dword ptr fs:[edx]
 005CC675    mov         dword ptr fs:[edx],esp
 005CC678    lea         ecx,[ebp-0C]
 005CC67B    lea         edx,[ebp-8]
 005CC67E    mov         eax,dword ptr [ebp-1C]
 005CC681    call        GetDIBSizes
 005CC686    mov         eax,dword ptr [ebp-8]
 005CC689    add         eax,dword ptr [ebp-0C]
 005CC68C    call        AllocMem
 005CC691    mov         dword ptr [ebp-10],eax
 005CC694    xor         edx,edx
 005CC696    push        ebp
 005CC697    push        5CC751
 005CC69C    push        dword ptr fs:[edx]
 005CC69F    mov         dword ptr fs:[edx],esp
 005CC6A2    mov         ebx,dword ptr [ebp-10]
 005CC6A5    add         ebx,dword ptr [ebp-8]
 005CC6A8    push        ebx
 005CC6A9    mov         esi,dword ptr [ebp-10]
 005CC6AC    mov         ecx,esi
 005CC6AE    xor         edx,edx
 005CC6B0    mov         eax,dword ptr [ebp-1C]
 005CC6B3    call        GetDIB
 005CC6B8    test        al,al
>005CC6BA    je          005CC735
 005CC6BC    mov         eax,dword ptr [ebp-10]
 005CC6BF    cmp         word ptr [eax+0E],1
>005CC6C4    jne         005CC735
 005CC6C6    mov         eax,dword ptr [esi+4]
 005CC6C9    mov         edx,eax
 005CC6CB    movzx       ecx,word ptr [esi+0E]
 005CC6CF    imul        edx,ecx
 005CC6D2    add         edx,1F
 005CC6D5    and         edx,0FFFFFFE0
 005CC6D8    test        edx,edx
>005CC6DA    jns         005CC6DF
 005CC6DC    add         edx,7
 005CC6DF    sar         edx,3
 005CC6E2    mov         dword ptr [ebp-14],edx
 005CC6E5    mov         edi,eax
 005CC6E7    imul        edi,dword ptr [ebp-14]
 005CC6EB    add         ebx,dword ptr [ebp-0C]
 005CC6EE    sub         ebx,edi
 005CC6F0    mov         ecx,0FF
 005CC6F5    mov         edx,edi
 005CC6F7    mov         eax,ebx
 005CC6F9    call        005CC630
 005CC6FE    mov         dword ptr [ebp-4],eax
 005CC701    cmp         dword ptr [ebp-4],0
>005CC705    jne         005CC723
 005CC707    mov         eax,dword ptr [esi+8]
 005CC70A    mov         edx,dword ptr [esi+4]
 005CC70D    add         edx,edx
 005CC70F    cmp         eax,edx
>005CC711    jl          005CC723
 005CC713    mov         eax,ebx
 005CC715    sub         eax,edi
 005CC717    xor         ecx,ecx
 005CC719    mov         edx,edi
 005CC71B    call        005CC630
 005CC720    mov         dword ptr [ebp-4],eax
 005CC723    mov         ecx,dword ptr [ebp-14]
 005CC726    mov         eax,dword ptr [ebp-4]
 005CC729    cdq
 005CC72A    idiv        eax,ecx
 005CC72C    mov         dword ptr [ebp-4],eax
 005CC72F    mov         eax,dword ptr [ebp-20]
 005CC732    sub         dword ptr [ebp-4],eax
 005CC735    xor         eax,eax
 005CC737    pop         edx
 005CC738    pop         ecx
 005CC739    pop         ecx
 005CC73A    mov         dword ptr fs:[eax],edx
 005CC73D    push        5CC758
 005CC742    mov         edx,dword ptr [ebp-8]
 005CC745    add         edx,dword ptr [ebp-0C]
 005CC748    mov         eax,dword ptr [ebp-10]
 005CC74B    call        @FreeMem
 005CC750    ret
>005CC751    jmp         @HandleFinally
>005CC756    jmp         005CC742
 005CC758    xor         eax,eax
 005CC75A    pop         edx
 005CC75B    pop         ecx
 005CC75C    pop         ecx
 005CC75D    mov         dword ptr fs:[eax],edx
 005CC760    push        5CC787
 005CC765    mov         eax,dword ptr [ebp-18]
 005CC768    test        eax,eax
>005CC76A    je          005CC772
 005CC76C    push        eax
 005CC76D    call        gdi32.DeleteObject
 005CC772    mov         eax,dword ptr [ebp-1C]
 005CC775    test        eax,eax
>005CC777    je          005CC77F
 005CC779    push        eax
 005CC77A    call        gdi32.DeleteObject
 005CC77F    ret
>005CC780    jmp         @HandleFinally
>005CC785    jmp         005CC765
 005CC787    mov         eax,dword ptr [ebp-4]
 005CC78A    pop         edi
 005CC78B    pop         esi
 005CC78C    pop         ebx
 005CC78D    mov         esp,ebp
 005CC78F    pop         ebp
 005CC790    ret
end;*}

//005CC794
{*procedure sub_005CC794(?:?; ?:?);
begin
 005CC794    push        ebp
 005CC795    mov         ebp,esp
 005CC797    push        ebx
 005CC798    push        esi
 005CC799    mov         ebx,eax
 005CC79B    test        ebx,ebx
>005CC79D    jne         005CC7A5
 005CC79F    mov         ebx,dword ptr ds:[7A1CA4];^gvar_004E0380
 005CC7A5    mov         eax,dword ptr [ebp+8]
 005CC7A8    mov         eax,dword ptr [eax-4]
 005CC7AB    mov         edx,dword ptr [eax+98]
 005CC7B1    test        edx,edx
>005CC7B3    jne         005CC7B9
 005CC7B5    mov         al,1
>005CC7B7    jmp         005CC7C4
 005CC7B9    mov         eax,edx
 005CC7BB    mov         eax,dword ptr [eax]
 005CC7BD    mov         esi,eax
 005CC7BF    cmp         ebx,esi
 005CC7C1    setne       al
 005CC7C4    test        al,al
>005CC7C6    je          005CC7E8
 005CC7C8    mov         eax,edx
 005CC7CA    call        TObject.Free
 005CC7CF    mov         eax,dword ptr [ebp+8]
 005CC7D2    mov         ecx,dword ptr [eax-4]
 005CC7D5    mov         dl,1
 005CC7D7    mov         eax,ebx
 005CC7D9    call        dword ptr [eax+3C]
 005CC7DC    mov         edx,dword ptr [ebp+8]
 005CC7DF    mov         edx,dword ptr [edx-4]
 005CC7E2    mov         dword ptr [edx+98],eax
 005CC7E8    pop         esi
 005CC7E9    pop         ebx
 005CC7EA    pop         ebp
 005CC7EB    ret
end;*}

//005CC7EC
{*function sub_005CC7EC(?:UnicodeString; ?:?):?;
begin
 005CC7EC    push        ebp
 005CC7ED    mov         ebp,esp
 005CC7EF    add         esp,0FFFFFFF8
 005CC7F2    push        ebx
 005CC7F3    push        esi
 005CC7F4    push        edi
 005CC7F5    xor         edx,edx
 005CC7F7    mov         dword ptr [ebp-4],edx
 005CC7FA    xor         edx,edx
 005CC7FC    push        ebp
 005CC7FD    push        5CC89A
 005CC802    push        dword ptr fs:[edx]
 005CC805    mov         dword ptr fs:[edx],esp
 005CC808    xor         edx,edx
 005CC80A    mov         dword ptr [ebp-8],edx
 005CC80D    mov         ebx,eax
 005CC80F    test        ebx,ebx
>005CC811    je          005CC884
>005CC813    jmp         005CC87E
 005CC815    mov         esi,ebx
>005CC817    jmp         005CC822
 005CC819    mov         eax,ebx
 005CC81B    call        004250B4
 005CC820    mov         ebx,eax
 005CC822    mov         edx,5CC8AC
 005CC827    movzx       eax,word ptr [ebx]
 005CC82A    call        CharInSet
 005CC82F    test        al,al
>005CC831    je          005CC819
 005CC833    mov         ecx,ebx
 005CC835    sub         ecx,esi
 005CC837    sar         ecx,1
>005CC839    jns         005CC83E
 005CC83B    adc         ecx,0
 005CC83E    lea         eax,[ebp-4]
 005CC841    mov         edx,esi
 005CC843    call        @UStrFromPWCharLen
 005CC848    mov         eax,dword ptr [ebp+8]
 005CC84B    mov         eax,dword ptr [eax-4]
 005CC84E    mov         eax,dword ptr [eax+98]
 005CC854    mov         eax,dword ptr [eax+290]
 005CC85A    mov         edx,dword ptr [ebp-4]
 005CC85D    call        TCustomCanvas.TextWidth
 005CC862    mov         edi,eax
 005CC864    cmp         edi,dword ptr [ebp-8]
>005CC867    jle         005CC86C
 005CC869    mov         dword ptr [ebp-8],edi
 005CC86C    cmp         word ptr [ebx],0D
>005CC870    jne         005CC875
 005CC872    add         ebx,2
 005CC875    cmp         word ptr [ebx],0A
>005CC879    jne         005CC87E
 005CC87B    add         ebx,2
 005CC87E    cmp         word ptr [ebx],0
>005CC882    jne         005CC815
 005CC884    xor         eax,eax
 005CC886    pop         edx
 005CC887    pop         ecx
 005CC888    pop         ecx
 005CC889    mov         dword ptr fs:[eax],edx
 005CC88C    push        5CC8A1
 005CC891    lea         eax,[ebp-4]
 005CC894    call        @UStrClr
 005CC899    ret
>005CC89A    jmp         @HandleFinally
>005CC89F    jmp         005CC891
 005CC8A1    mov         eax,dword ptr [ebp-8]
 005CC8A4    pop         edi
 005CC8A5    pop         esi
 005CC8A6    pop         ebx
 005CC8A7    pop         ecx
 005CC8A8    pop         ecx
 005CC8A9    pop         ebp
 005CC8AA    ret
end;*}

//005CC8CC
procedure TApplication.ActivateHint(CursorPos:TPoint);
begin
{*
 005CC8CC    push        ebp
 005CC8CD    mov         ebp,esp
 005CC8CF    add         esp,0FFFFFF70
 005CC8D5    push        ebx
 005CC8D6    push        esi
 005CC8D7    push        edi
 005CC8D8    xor         ecx,ecx
 005CC8DA    mov         dword ptr [ebp-8C],ecx
 005CC8E0    mov         dword ptr [ebp-90],ecx
 005CC8E6    mov         esi,edx
 005CC8E8    lea         edi,[ebp-4C]
 005CC8EB    movs        dword ptr [edi],dword ptr [esi]
 005CC8EC    movs        dword ptr [edi],dword ptr [esi]
 005CC8ED    mov         dword ptr [ebp-4],eax
 005CC8F0    lea         eax,[ebp-44]
 005CC8F3    mov         edx,dword ptr ds:[4D8124];THintInfo
 005CC8F9    call        @AddRefRecord
 005CC8FE    lea         ebx,[ebp-4]
 005CC901    xor         eax,eax
 005CC903    push        ebp
 005CC904    push        5CCC74
 005CC909    push        dword ptr fs:[eax]
 005CC90C    mov         dword ptr fs:[eax],esp
 005CC90F    mov         eax,dword ptr [ebx]
 005CC911    mov         byte ptr [eax+6C],0;TApplication.FHintActive:Boolean
 005CC915    xor         eax,eax
 005CC917    mov         dword ptr [ebp-14],eax
 005CC91A    mov         eax,dword ptr [ebx]
 005CC91C    cmp         byte ptr [eax+9C],0;TApplication.FShowHint:Boolean
>005CC923    je          005CCC2D
 005CC929    mov         eax,dword ptr [ebx]
 005CC92B    cmp         dword ptr [eax+74],0;TApplication.FHintControl:TControl
>005CC92F    je          005CCC2D
 005CC935    mov         eax,dword ptr [ebx]
 005CC937    movzx       eax,byte ptr [eax+0EA];TApplication.FEnumAllWindowsOnActivateHint:Boolean
 005CC93E    call        ForegroundTaskCheck
 005CC943    test        al,al
>005CC945    je          005CCC2D
 005CC94B    lea         eax,[ebp-4C]
 005CC94E    mov         dl,1
 005CC950    call        FindDragTarget
 005CC955    call        005C9038
 005CC95A    mov         edx,dword ptr [ebx]
 005CC95C    cmp         eax,dword ptr [edx+74];TApplication.FHintControl:TControl
>005CC95F    jne         005CCC2D
 005CC965    mov         eax,dword ptr [ebx]
 005CC967    mov         eax,dword ptr [eax+74];TApplication.FHintControl:TControl
 005CC96A    call        TControl.GetCustomHint
 005CC96F    test        eax,eax
>005CC971    jne         005CCC2D
 005CC977    mov         eax,dword ptr [ebx]
 005CC979    mov         eax,dword ptr [eax+74];TApplication.FHintControl:TControl
 005CC97C    mov         dword ptr [ebp-44],eax
 005CC97F    mov         eax,dword ptr [ebp-4C]
 005CC982    mov         dword ptr [ebp-3C],eax
 005CC985    mov         eax,dword ptr [ebp-48]
 005CC988    mov         dword ptr [ebp-38],eax
 005CC98B    call        005CC640
 005CC990    add         dword ptr [ebp-38],eax
 005CC993    mov         eax,[007CA7CC];Screen:TScreen
 005CC998    call        005C80C8
 005CC99D    mov         dword ptr [ebp-34],eax
 005CC9A0    mov         eax,dword ptr [ebx]
 005CC9A2    mov         eax,dword ptr [eax+70];TApplication.FHintColor:TColor
 005CC9A5    mov         dword ptr [ebp-30],eax
 005CC9A8    lea         edx,[ebp-80]
 005CC9AB    mov         eax,dword ptr [ebx]
 005CC9AD    mov         eax,dword ptr [eax+74];TApplication.FHintControl:TControl
 005CC9B0    call        TControl.GetBoundsRect
 005CC9B5    lea         esi,[ebp-80]
 005CC9B8    lea         edi,[ebp-2C]
 005CC9BB    movs        dword ptr [edi],dword ptr [esi]
 005CC9BC    movs        dword ptr [edi],dword ptr [esi]
 005CC9BD    movs        dword ptr [edi],dword ptr [esi]
 005CC9BE    movs        dword ptr [edi],dword ptr [esi]
 005CC9BF    lea         edx,[ebp-54]
 005CC9C2    mov         eax,dword ptr [ebx]
 005CC9C4    mov         eax,dword ptr [eax+74];TApplication.FHintControl:TControl
 005CC9C7    mov         ecx,dword ptr [eax]
 005CC9C9    call        dword ptr [ecx+60];TControl.sub_004E682C
 005CC9CC    xor         eax,eax
 005CC9CE    mov         dword ptr [ebp-5C],eax
 005CC9D1    xor         eax,eax
 005CC9D3    mov         dword ptr [ebp-58],eax
 005CC9D6    mov         eax,dword ptr [ebx]
 005CC9D8    mov         eax,dword ptr [eax+74];TApplication.FHintControl:TControl
 005CC9DB    mov         esi,dword ptr [eax+40];TControl.FParent:TWinControl
 005CC9DE    test        esi,esi
>005CC9E0    je          005CC9EE
 005CC9E2    lea         edx,[ebp-5C]
 005CC9E5    mov         eax,esi
 005CC9E7    mov         ecx,dword ptr [eax]
 005CC9E9    call        dword ptr [ecx+60];TWinControl.GetClientOrigin
>005CC9EC    jmp         005CCA1D
 005CC9EE    mov         eax,dword ptr [ebx]
 005CC9F0    mov         esi,dword ptr [eax+74];TApplication.FHintControl:TControl
 005CC9F3    mov         eax,esi
 005CC9F5    mov         edx,dword ptr ds:[4DE8CC];TWinControl
 005CC9FB    call        @IsClass
 005CCA00    test        al,al
>005CCA02    je          005CCA1D
 005CCA04    cmp         dword ptr [esi+1E4],0
>005CCA0B    je          005CCA1D
 005CCA0D    lea         eax,[ebp-5C]
 005CCA10    push        eax
 005CCA11    mov         eax,dword ptr [esi+1E4]
 005CCA17    push        eax
 005CCA18    call        user32.ClientToScreen
 005CCA1D    mov         ecx,dword ptr [ebp-58]
 005CCA20    sub         ecx,dword ptr [ebp-50]
 005CCA23    mov         edx,dword ptr [ebp-5C]
 005CCA26    sub         edx,dword ptr [ebp-54]
 005CCA29    lea         eax,[ebp-2C]
 005CCA2C    call        OffsetRect
 005CCA31    lea         ecx,[ebp-88]
 005CCA37    lea         edx,[ebp-4C]
 005CCA3A    mov         eax,dword ptr [ebx]
 005CCA3C    mov         eax,dword ptr [eax+74];TApplication.FHintControl:TControl
 005CCA3F    call        TControl.ScreenToClient
 005CCA44    mov         eax,dword ptr [ebp-88]
 005CCA4A    mov         dword ptr [ebp-1C],eax
 005CCA4D    mov         eax,dword ptr [ebp-84]
 005CCA53    mov         dword ptr [ebp-18],eax
 005CCA56    lea         edx,[ebp-90]
 005CCA5C    mov         eax,dword ptr [ebx]
 005CCA5E    mov         eax,dword ptr [eax+74];TApplication.FHintControl:TControl
 005CCA61    call        005C9000
 005CCA66    mov         eax,dword ptr [ebp-90]
 005CCA6C    lea         edx,[ebp-8C]
 005CCA72    call        GetShortHint
 005CCA77    mov         edx,dword ptr [ebp-8C]
 005CCA7D    lea         eax,[ebp-0C]
 005CCA80    call        @UStrLAsg
 005CCA85    mov         eax,dword ptr [ebx]
 005CCA87    mov         eax,dword ptr [eax+88];TApplication.FHintHidePause:Integer
 005CCA8D    mov         dword ptr [ebp-10],eax
 005CCA90    mov         eax,[007A1CA4];^gvar_004E0380
 005CCA95    mov         dword ptr [ebp-40],eax
 005CCA98    xor         eax,eax
 005CCA9A    mov         dword ptr [ebp-8],eax
 005CCA9D    lea         eax,[ebp-44]
 005CCAA0    push        eax
 005CCAA1    mov         eax,dword ptr [ebx]
 005CCAA3    mov         eax,dword ptr [eax+74];TApplication.FHintControl:TControl
 005CCAA6    xor         ecx,ecx
 005CCAA8    mov         edx,0B030
 005CCAAD    call        TControl.Perform
 005CCAB2    test        eax,eax
 005CCAB4    sete        byte ptr [ebp-5D]
 005CCAB8    cmp         byte ptr [ebp-5D],0
>005CCABC    je          005CCAE2
 005CCABE    mov         eax,dword ptr [ebx]
 005CCAC0    cmp         word ptr [eax+17A],0;TApplication.?f17A:word
>005CCAC8    je          005CCAE2
 005CCACA    lea         eax,[ebp-44]
 005CCACD    push        eax
 005CCACE    lea         ecx,[ebp-5D]
 005CCAD1    lea         edx,[ebp-0C]
 005CCAD4    mov         esi,dword ptr [ebx]
 005CCAD6    mov         eax,dword ptr [esi+17C];TApplication.?f17C:dword
 005CCADC    call        dword ptr [esi+178]
 005CCAE2    cmp         byte ptr [ebp-5D],0
>005CCAE6    je          005CCAF0
 005CCAE8    mov         eax,dword ptr [ebx]
 005CCAEA    cmp         dword ptr [eax+74],0;TApplication.FHintControl:TControl
>005CCAEE    jne         005CCAF4
 005CCAF0    xor         eax,eax
>005CCAF2    jmp         005CCAF6
 005CCAF4    mov         al,1
 005CCAF6    mov         edx,dword ptr [ebx]
 005CCAF8    mov         byte ptr [edx+6C],al;TApplication.FHintActive:Boolean
 005CCAFB    mov         eax,dword ptr [ebx]
 005CCAFD    cmp         byte ptr [eax+6C],0;TApplication.FHintActive:Boolean
>005CCB01    je          005CCC2D
 005CCB07    cmp         dword ptr [ebp-0C],0
>005CCB0B    je          005CCC2D
 005CCB11    push        ebp
 005CCB12    mov         eax,dword ptr [ebp-40]
 005CCB15    call        005CC794
 005CCB1A    pop         ecx
 005CCB1B    mov         eax,dword ptr [ebx]
 005CCB1D    mov         eax,dword ptr [eax+74];TApplication.FHintControl:TControl
 005CCB20    movzx       edx,byte ptr [eax+71];TControl.FBiDiMode:TBiDiMode
 005CCB24    mov         eax,dword ptr [ebx]
 005CCB26    mov         eax,dword ptr [eax+98];TApplication.FHintWindow:THintWindow
 005CCB2C    mov         ecx,dword ptr [eax]
 005CCB2E    call        dword ptr [ecx+94];TGroupBox.SetBiDiMode
 005CCB34    mov         eax,dword ptr [ebp-8]
 005CCB37    push        eax
 005CCB38    lea         eax,[ebp-70]
 005CCB3B    push        eax
 005CCB3C    mov         eax,dword ptr [ebx]
 005CCB3E    mov         eax,dword ptr [eax+98];TApplication.FHintWindow:THintWindow
 005CCB44    mov         ecx,dword ptr [ebp-0C]
 005CCB47    mov         edx,dword ptr [ebp-34]
 005CCB4A    mov         esi,dword ptr [eax]
 005CCB4C    call        dword ptr [esi+120];THintWindow.CalcHintRect
 005CCB52    lea         eax,[ebp-70]
 005CCB55    mov         ecx,dword ptr [ebp-38]
 005CCB58    mov         edx,dword ptr [ebp-3C]
 005CCB5B    call        OffsetRect
 005CCB60    mov         eax,dword ptr [ebx]
 005CCB62    mov         eax,dword ptr [eax+98];TApplication.FHintWindow:THintWindow
 005CCB68    mov         si,0FFC6
 005CCB6C    call        @CallDynaInst;TControl.sub_004E7698
 005CCB71    test        al,al
>005CCB73    je          005CCB88
 005CCB75    push        ebp
 005CCB76    mov         eax,dword ptr [ebp-0C]
 005CCB79    call        005CC7EC
 005CCB7E    pop         ecx
 005CCB7F    add         eax,5
 005CCB82    sub         dword ptr [ebp-70],eax
 005CCB85    sub         dword ptr [ebp-68],eax
 005CCB88    lea         ecx,[ebp-88]
 005CCB8E    lea         edx,[ebp-2C]
 005CCB91    mov         eax,dword ptr [ebx]
 005CCB93    mov         eax,dword ptr [eax+74];TApplication.FHintControl:TControl
 005CCB96    call        TControl.ClientToScreen
 005CCB9B    mov         eax,dword ptr [ebx]
 005CCB9D    mov         edx,dword ptr [ebp-88]
 005CCBA3    mov         dword ptr [eax+78],edx;TApplication.FHintCursorRect:TRect
 005CCBA6    mov         edx,dword ptr [ebp-84]
 005CCBAC    mov         dword ptr [eax+7C],edx;TApplication.FHintCursorRect.Top:LongInt
 005CCBAF    lea         ecx,[ebp-88]
 005CCBB5    lea         edx,[ebp-24]
 005CCBB8    mov         eax,dword ptr [ebx]
 005CCBBA    mov         eax,dword ptr [eax+74];TApplication.FHintControl:TControl
 005CCBBD    call        TControl.ClientToScreen
 005CCBC2    mov         eax,dword ptr [ebx]
 005CCBC4    mov         edx,dword ptr [ebp-88]
 005CCBCA    mov         dword ptr [eax+80],edx;TApplication.FHintHidePause:Integer
 005CCBD0    mov         edx,dword ptr [ebp-84]
 005CCBD6    mov         dword ptr [eax+84],edx;TApplication.FHintPause:Integer
 005CCBDC    mov         eax,dword ptr [ebx]
 005CCBDE    mov         eax,dword ptr [eax+98];TApplication.FHintWindow:THintWindow
 005CCBE4    mov         edx,dword ptr [ebp-30]
 005CCBE7    call        TGroupBox.SetColor
 005CCBEC    mov         eax,dword ptr [ebp-8]
 005CCBEF    push        eax
 005CCBF0    mov         eax,dword ptr [ebx]
 005CCBF2    mov         eax,dword ptr [eax+98];TApplication.FHintWindow:THintWindow
 005CCBF8    mov         ecx,dword ptr [ebp-0C]
 005CCBFB    lea         edx,[ebp-70]
 005CCBFE    mov         esi,dword ptr [eax]
 005CCC00    call        dword ptr [esi+11C];THintWindow.ActivateHintData
 005CCC06    call        005C914C
 005CCC0B    mov         eax,dword ptr [ebp-14]
 005CCC0E    test        eax,eax
>005CCC10    jle         005CCC1F
 005CCC12    xor         ecx,ecx
 005CCC14    mov         edx,eax
 005CCC16    mov         eax,dword ptr [ebx]
 005CCC18    call        005CC3C0
>005CCC1D    jmp         005CCC48
 005CCC1F    mov         cl,1
 005CCC21    mov         edx,dword ptr [ebp-10]
 005CCC24    mov         eax,dword ptr [ebx]
 005CCC26    call        005CC3C0
>005CCC2B    jmp         005CCC48
 005CCC2D    mov         eax,dword ptr [ebp-14]
 005CCC30    test        eax,eax
>005CCC32    jle         005CCC41
 005CCC34    xor         ecx,ecx
 005CCC36    mov         edx,eax
 005CCC38    mov         eax,dword ptr [ebx]
 005CCC3A    call        005CC3C0
>005CCC3F    jmp         005CCC48
 005CCC41    mov         eax,dword ptr [ebx]
 005CCC43    call        TApplication.CancelHint
 005CCC48    xor         eax,eax
 005CCC4A    pop         edx
 005CCC4B    pop         ecx
 005CCC4C    pop         ecx
 005CCC4D    mov         dword ptr fs:[eax],edx
 005CCC50    push        5CCC7B
 005CCC55    lea         eax,[ebp-90]
 005CCC5B    mov         edx,2
 005CCC60    call        @UStrArrayClr
 005CCC65    lea         eax,[ebp-44]
 005CCC68    mov         edx,dword ptr ds:[4D8124];THintInfo
 005CCC6E    call        @FinalizeRecord
 005CCC73    ret
>005CCC74    jmp         @HandleFinally
>005CCC79    jmp         005CCC55
 005CCC7B    pop         edi
 005CCC7C    pop         esi
 005CCC7D    pop         ebx
 005CCC7E    mov         esp,ebp
 005CCC80    pop         ebp
 005CCC81    ret
*}
end;

//005CCC84
procedure TApplication.ApplyBiDiKeyboardLayout;
begin
{*
 005CCC84    add         eax,44;TApplication.FBiDiKeyboard:TBiDiKeyboard
 005CCC87    call        005C9570
 005CCC8C    ret
*}
end;

//005CCC90
procedure TApplication.ApplyNonBiDiKeyboardLayout;
begin
{*
 005CCC90    add         eax,44;TApplication.FBiDiKeyboard:TBiDiKeyboard
 005CCC93    call        005C9580
 005CCC98    ret
*}
end;

//005CCC9C
function TApplication.AddPopupForm(APopupForm:TCustomForm):Integer;
begin
{*
 005CCC9C    push        ebx
 005CCC9D    push        esi
 005CCC9E    push        edi
 005CCC9F    push        ebp
 005CCCA0    add         esp,0FFFFFFF4
 005CCCA3    mov         ebp,edx
 005CCCA5    mov         esi,eax
 005CCCA7    xor         ebx,ebx
>005CCCA9    jmp         005CCCD8
 005CCCAB    lea         edi,[ebx+ebx*2]
 005CCCAE    mov         eax,dword ptr [esi+0E4];TApplication.FPopupForms:TPopupFormArray
 005CCCB4    cmp         ebp,dword ptr [eax+edi*4+4]
>005CCCB8    jne         005CCCCB
 005CCCBA    mov         eax,dword ptr [esi+0E4];TApplication.FPopupForms:TPopupFormArray
 005CCCC0    mov         eax,dword ptr [eax+edi*4]
 005CCCC3    mov         dword ptr [esp],eax
>005CCCC6    jmp         005CCD74
 005CCCCB    mov         eax,dword ptr [esi+0E4];TApplication.FPopupForms:TPopupFormArray
 005CCCD1    cmp         dword ptr [eax+edi*4],0FFFFFFFF
>005CCCD5    je          005CCCE7
 005CCCD7    inc         ebx
 005CCCD8    mov         eax,dword ptr [esi+0E4];TApplication.FPopupForms:TPopupFormArray
 005CCCDE    call        0040ABA8
 005CCCE3    cmp         ebx,eax
>005CCCE5    jl          005CCCAB
 005CCCE7    mov         eax,dword ptr [esi+0E0];TApplication.FCurrentPopupID:Integer
 005CCCED    mov         dword ptr [esp],eax
 005CCCF0    inc         dword ptr [esi+0E0];TApplication.FCurrentPopupID:Integer
 005CCCF6    mov         eax,dword ptr [esi+0E4];TApplication.FPopupForms:TPopupFormArray
 005CCCFC    mov         dword ptr [esp+4],eax
 005CCD00    mov         eax,dword ptr [esp+4]
 005CCD04    test        eax,eax
>005CCD06    je          005CCD0D
 005CCD08    sub         eax,4
 005CCD0B    mov         eax,dword ptr [eax]
 005CCD0D    cmp         eax,ebx
>005CCD0F    jg          005CCD47
 005CCD11    mov         eax,dword ptr [esi+0E4];TApplication.FPopupForms:TPopupFormArray
 005CCD17    mov         dword ptr [esp+8],eax
 005CCD1B    mov         eax,dword ptr [esp+8]
 005CCD1F    test        eax,eax
>005CCD21    je          005CCD28
 005CCD23    sub         eax,4
 005CCD26    mov         eax,dword ptr [eax]
 005CCD28    mov         ebx,eax
 005CCD2A    lea         eax,[ebx+1]
 005CCD2D    push        eax
 005CCD2E    lea         eax,[esi+0E4];TApplication.FPopupForms:TPopupFormArray
 005CCD34    mov         ecx,1
 005CCD39    mov         edx,dword ptr ds:[5BB0DC];TPopupFormArray
 005CCD3F    call        @DynArraySetLength
 005CCD44    add         esp,4
 005CCD47    lea         eax,[ebx+ebx*2]
 005CCD4A    mov         edx,dword ptr [esi+0E4];TApplication.FPopupForms:TPopupFormArray
 005CCD50    mov         ecx,dword ptr [esp]
 005CCD53    mov         dword ptr [edx+eax*4],ecx
 005CCD56    mov         edx,dword ptr [esi+0E4];TApplication.FPopupForms:TPopupFormArray
 005CCD5C    mov         dword ptr [edx+eax*4+4],ebp
 005CCD60    mov         edx,dword ptr [esi+0E4];TApplication.FPopupForms:TPopupFormArray
 005CCD66    cmp         dword ptr [ebp+394],0;TCustomForm.FInternalPopupParentWnd:HWND
 005CCD6D    setne       cl
 005CCD70    mov         byte ptr [edx+eax*4+8],cl
 005CCD74    mov         eax,dword ptr [esp]
 005CCD77    add         esp,0C
 005CCD7A    pop         ebp
 005CCD7B    pop         edi
 005CCD7C    pop         esi
 005CCD7D    pop         ebx
 005CCD7E    ret
*}
end;

//005CCD80
{*procedure sub_005CCD80(?:TApplication; ?:?);
begin
 005CCD80    push        ebx
 005CCD81    push        esi
 005CCD82    push        edi
 005CCD83    mov         edi,edx
 005CCD85    mov         esi,eax
 005CCD87    mov         eax,[007CA7CC];Screen:TScreen
 005CCD8C    mov         ebx,dword ptr [eax+70]
 005CCD8F    test        ebx,ebx
>005CCD91    je          005CCDAB
 005CCD93    cmp         dword ptr [ebx+2CC],0
>005CCD9A    je          005CCDAB
 005CCD9C    mov         eax,edi
 005CCD9E    mov         edx,dword ptr [ebx+2CC]
 005CCDA4    call        @UStrAsg
>005CCDA9    jmp         005CCDB5
 005CCDAB    mov         eax,edi
 005CCDAD    mov         edx,dword ptr [esi+64];TApplication.FHelpFile:string
 005CCDB0    call        @UStrAsg
 005CCDB5    pop         edi
 005CCDB6    pop         esi
 005CCDB7    pop         ebx
 005CCDB8    ret
end;*}

//005CCE10
{*function sub_005CCE10(?:TApplication):?;
begin
 005CCE10    push        ebx
 005CCE11    push        ecx
 005CCE12    mov         ebx,eax
 005CCE14    xor         eax,eax
 005CCE16    mov         dword ptr [esp],eax
 005CCE19    cmp         word ptr [ebx+112],0;TApplication.?f112:word
>005CCE21    je          005CCE31
 005CCE23    mov         edx,esp
 005CCE25    mov         eax,dword ptr [ebx+114];TApplication.?f114:dword
 005CCE2B    call        dword ptr [ebx+110];TApplication.FOnGetActiveFormHandle
 005CCE31    cmp         dword ptr [esp],0
>005CCE35    jne         005CCE3F
 005CCE37    call        user32.GetActiveWindow
 005CCE3C    mov         dword ptr [esp],eax
 005CCE3F    cmp         dword ptr [esp],0
>005CCE43    jne         005CCE54
 005CCE45    mov         eax,dword ptr [ebx+188];TApplication.FHandle:HWND
 005CCE4B    push        eax
 005CCE4C    call        user32.GetLastActivePopup
 005CCE51    mov         dword ptr [esp],eax
 005CCE54    mov         eax,dword ptr [esp]
 005CCE57    pop         edx
 005CCE58    pop         ebx
 005CCE59    ret
end;*}

//005CCE5C
{*function sub_005CCE5C(?:TApplication):?;
begin
 005CCE5C    push        ebx
 005CCE5D    push        ecx
 005CCE5E    mov         ebx,eax
 005CCE60    xor         eax,eax
 005CCE62    mov         dword ptr [esp],eax
 005CCE65    cmp         word ptr [ebx+11A],0;TApplication.?f11A:word
>005CCE6D    je          005CCE7D
 005CCE6F    mov         edx,esp
 005CCE71    mov         eax,dword ptr [ebx+11C];TApplication.?f11C:dword
 005CCE77    call        dword ptr [ebx+118];TApplication.FOnGetMainFormHandle
 005CCE7D    cmp         dword ptr [esp],0
>005CCE81    jne         005CCE94
 005CCE83    cmp         dword ptr [ebx+58],0;TApplication.FMainForm:TForm
>005CCE87    je          005CCE94
 005CCE89    mov         eax,dword ptr [ebx+58];TApplication.FMainForm:TForm
 005CCE8C    call        TWinControl.GetHandle
 005CCE91    mov         dword ptr [esp],eax
 005CCE94    mov         eax,dword ptr [esp]
 005CCE97    pop         edx
 005CCE98    pop         ebx
 005CCE99    ret
end;*}

//005CCE9C
{*function sub_005CCE9C(?:?; ?:?; ?:?):?;
begin
 005CCE9C    push        ebx
 005CCE9D    push        esi
 005CCE9E    push        edi
 005CCE9F    push        ebp
 005CCEA0    add         esp,0FFFFFFF8
 005CCEA3    mov         ebx,ecx
 005CCEA5    mov         dword ptr [esp],edx
 005CCEA8    mov         esi,eax
 005CCEAA    mov         eax,[007CA7CC];Screen:TScreen
 005CCEAF    mov         edi,dword ptr [eax+70]
 005CCEB2    test        edi,edi
>005CCEB4    je          005CCEC7
 005CCEB6    push        ebx
 005CCEB7    xor         ecx,ecx
 005CCEB9    mov         edx,dword ptr [esp+4]
 005CCEBD    mov         eax,edi
 005CCEBF    call        TControl.Perform
 005CCEC4    dec         eax
>005CCEC5    je          005CCEE7
 005CCEC7    mov         ebp,dword ptr [esi+58]
 005CCECA    cmp         edi,ebp
>005CCECC    je          005CCEE3
 005CCECE    test        ebp,ebp
>005CCED0    je          005CCEE3
 005CCED2    push        ebx
 005CCED3    xor         ecx,ecx
 005CCED5    mov         edx,dword ptr [esp+4]
 005CCED9    mov         eax,ebp
 005CCEDB    call        TControl.Perform
 005CCEE0    dec         eax
>005CCEE1    je          005CCEE7
 005CCEE3    xor         eax,eax
>005CCEE5    jmp         005CCEE9
 005CCEE7    mov         al,1
 005CCEE9    mov         byte ptr [esp+4],al
 005CCEED    cmp         byte ptr [esp+4],0
>005CCEF2    jne         005CCF26
 005CCEF4    mov         eax,ebx
 005CCEF6    mov         edx,dword ptr ds:[4D55AC];TCustomAction
 005CCEFC    call        @IsClass
 005CCF01    test        al,al
>005CCF03    je          005CCF26
 005CCF05    cmp         byte ptr [ebx+71],0
>005CCF09    je          005CCF26
 005CCF0B    cmp         byte ptr [ebx+69],0
>005CCF0F    je          005CCF26
 005CCF11    test        byte ptr [ebx+1C],10
>005CCF15    jne         005CCF26
 005CCF17    cmp         word ptr [ebx+52],0
 005CCF1C    setne       dl
 005CCF1F    mov         eax,ebx
 005CCF21    mov         ecx,dword ptr [eax]
 005CCF23    call        dword ptr [ecx+74]
 005CCF26    movzx       eax,byte ptr [esp+4]
 005CCF2B    pop         ecx
 005CCF2C    pop         edx
 005CCF2D    pop         ebp
 005CCF2E    pop         edi
 005CCF2F    pop         esi
 005CCF30    pop         ebx
 005CCF31    ret
end;*}

//005CCF34
function TApplication.ExecuteAction(Action:TBasicAction):Boolean;
begin
{*
 005CCF34    push        ebx
 005CCF35    push        ecx
 005CCF36    mov         byte ptr [esp],0
 005CCF3A    cmp         word ptr [eax+0FA],0;TApplication.?fFA:word
>005CCF42    je          005CCF54
 005CCF44    mov         ecx,esp
 005CCF46    mov         ebx,eax
 005CCF48    mov         eax,dword ptr [ebx+0FC];TApplication.?fFC:dword
 005CCF4E    call        dword ptr [ebx+0F8];TApplication.FOnActionExecute
 005CCF54    movzx       eax,byte ptr [esp]
 005CCF58    pop         edx
 005CCF59    pop         ebx
 005CCF5A    ret
*}
end;

//005CCF5C
function TApplication.UpdateAction(Action:TBasicAction):Boolean;
begin
{*
 005CCF5C    push        ebx
 005CCF5D    push        ecx
 005CCF5E    mov         byte ptr [esp],0
 005CCF62    cmp         word ptr [eax+102],0;TApplication.?f102:word
>005CCF6A    je          005CCF7C
 005CCF6C    mov         ecx,esp
 005CCF6E    mov         ebx,eax
 005CCF70    mov         eax,dword ptr [ebx+104];TApplication.?f104:dword
 005CCF76    call        dword ptr [ebx+100];TApplication.FOnActionUpdate
 005CCF7C    movzx       eax,byte ptr [esp]
 005CCF80    pop         edx
 005CCF81    pop         ebx
 005CCF82    ret
*}
end;

//005CCF84
procedure sub_005CCF84;
begin
{*
 005CCF84    push        ebx
 005CCF85    push        5CCFA8;'user32.dll'
 005CCF8A    call        kernel32.GetModuleHandleW
 005CCF8F    mov         ebx,eax
 005CCF91    test        ebx,ebx
>005CCF93    je          005CCFA5
 005CCF95    push        5CCFC0;'SetLayeredWindowAttributes'
 005CCF9A    push        ebx
 005CCF9B    call        GetProcAddress
 005CCFA0    mov         [007A1CA8],eax;gvar_007A1CA8:Pointer
 005CCFA5    pop         ebx
 005CCFA6    ret
*}
end;

//005CD00C
procedure TApplication.HookSynchronizeWakeup;
begin
{*
 005CD00C    mov         edx,dword ptr ds:[7C4D90];^gvar_007A05F8
 005CD012    mov         dword ptr [edx+4],eax
 005CD015    mov         dword ptr [edx],5CCFF8
 005CD01B    ret
*}
end;

//005CD01C
procedure TApplication.UnhookSynchronizeWakeup;
begin
{*
 005CD01C    mov         eax,[007C4D90];^gvar_007A05F8
 005CD021    xor         edx,edx
 005CD023    mov         dword ptr [eax],edx
 005CD025    mov         dword ptr [eax+4],edx
 005CD028    ret
*}
end;

//005CD02C
{*function sub_005CD02C(?:?; ?:?):?;
begin
 005CD02C    push        ebx
 005CD02D    push        esi
 005CD02E    push        edi
 005CD02F    push        ebp
 005CD030    mov         edi,edx
 005CD032    mov         esi,eax
 005CD034    xor         ebx,ebx
 005CD036    call        user32.GetCapture
 005CD03B    mov         ebp,eax
 005CD03D    test        ebp,ebp
>005CD03F    jne         005CD08F
 005CD041    mov         ebp,dword ptr [edi]
 005CD043    mov         eax,dword ptr [esi+58]
 005CD046    test        eax,eax
>005CD048    je          005CD056
 005CD04A    cmp         ebp,dword ptr [eax+3B4]
>005CD050    jne         005CD056
 005CD052    mov         esi,eax
>005CD054    jmp         005CD07C
 005CD056    mov         eax,ebp
 005CD058    call        FindControl
 005CD05D    mov         esi,eax
 005CD05F    test        esi,esi
>005CD061    jne         005CD07C
 005CD063    push        ebp
 005CD064    call        user32.GetParent
 005CD069    mov         ebp,eax
 005CD06B    test        ebp,ebp
>005CD06D    je          005CD07C
 005CD06F    mov         eax,ebp
 005CD071    call        FindControl
 005CD076    mov         esi,eax
 005CD078    test        esi,esi
>005CD07A    je          005CD063
 005CD07C    test        esi,esi
>005CD07E    je          005CD08F
 005CD080    mov         edx,edi
 005CD082    mov         eax,esi
 005CD084    mov         si,0FFAE
 005CD088    call        @CallDynaInst;TWinControl.sub_004F2098
 005CD08D    mov         ebx,eax
 005CD08F    mov         eax,ebx
 005CD091    pop         ebp
 005CD092    pop         edi
 005CD093    pop         esi
 005CD094    pop         ebx
 005CD095    ret
end;*}

//005CD098
{*procedure sub_005CD098(?:?);
begin
 005CD098    push        ebx
 005CD099    push        esi
 005CD09A    mov         ebx,eax
 005CD09C    mov         byte ptr [ebx+40],0
 005CD0A0    mov         eax,[007CA7CC];Screen:TScreen
 005CD0A5    mov         eax,dword ptr [eax+74]
 005CD0A8    mov         esi,dword ptr [ebx+58]
 005CD0AB    cmp         eax,esi
>005CD0AD    je          005CD0CD
 005CD0AF    test        esi,esi
>005CD0B1    je          005CD0CD
 005CD0B3    cmp         byte ptr [esi+2C2],2
>005CD0BA    je          005CD0CD
 005CD0BC    mov         eax,esi
 005CD0BE    call        TWinControl.GetHandle
 005CD0C3    mov         edx,9
 005CD0C8    call        005C92A0
 005CD0CD    mov         eax,dword ptr [ebx+188]
 005CD0D3    push        eax
 005CD0D4    call        user32.SetActiveWindow
 005CD0D9    mov         eax,ebx
 005CD0DB    call        TApplication.RestoreTopMosts
 005CD0E0    mov         dl,1
 005CD0E2    mov         eax,ebx
 005CD0E4    call        005C9FF8
 005CD0E9    mov         eax,[007CA7CC];Screen:TScreen
 005CD0EE    mov         esi,dword ptr [eax+6C]
 005CD0F1    test        esi,esi
>005CD0F3    je          005CD102
 005CD0F5    mov         eax,esi
 005CD0F7    call        TWinControl.GetHandle
 005CD0FC    push        eax
 005CD0FD    call        user32.SetFocus
 005CD102    cmp         word ptr [ebx+16A],0
>005CD10A    je          005CD11A
 005CD10C    mov         edx,ebx
 005CD10E    mov         eax,dword ptr [ebx+16C]
 005CD114    call        dword ptr [ebx+168]
 005CD11A    pop         esi
 005CD11B    pop         ebx
 005CD11C    ret
end;*}

//005CD278
constructor TGlassFrame.Create(Client:TCustomForm);
begin
{*
 005CD278    push        ebx
 005CD279    push        esi
 005CD27A    push        edi
 005CD27B    test        dl,dl
>005CD27D    je          005CD287
 005CD27F    add         esp,0FFFFFFF0
 005CD282    call        @ClassCreate
 005CD287    mov         esi,ecx
 005CD289    mov         ebx,edx
 005CD28B    mov         edi,eax
 005CD28D    xor         edx,edx
 005CD28F    mov         eax,edi
 005CD291    call        TObject.Create
 005CD296    mov         dword ptr [edi+4],esi;TGlassFrame.FClient:TCustomForm
 005CD299    xor         eax,eax
 005CD29B    mov         dword ptr [edi+0C],eax;TGlassFrame.FLeft:Integer
 005CD29E    xor         eax,eax
 005CD2A0    mov         dword ptr [edi+10],eax;TGlassFrame.FTop:Integer
 005CD2A3    xor         eax,eax
 005CD2A5    mov         dword ptr [edi+14],eax;TGlassFrame.FRight:Integer
 005CD2A8    xor         eax,eax
 005CD2AA    mov         dword ptr [edi+18],eax;TGlassFrame.FBottom:Integer
 005CD2AD    mov         byte ptr [edi+28],0;TGlassFrame.FSheetOfGlass:Boolean
 005CD2B1    mov         eax,edi
 005CD2B3    test        bl,bl
>005CD2B5    je          005CD2C6
 005CD2B7    call        @AfterConstruction
 005CD2BC    pop         dword ptr fs:[0]
 005CD2C3    add         esp,0C
 005CD2C6    mov         eax,edi
 005CD2C8    pop         edi
 005CD2C9    pop         esi
 005CD2CA    pop         ebx
 005CD2CB    ret
*}
end;

//005CD2CC
procedure TGlassFrame.Assign(Source:TPersistent);
begin
{*
 005CD2CC    push        ebx
 005CD2CD    push        esi
 005CD2CE    mov         esi,edx
 005CD2D0    mov         ebx,eax
 005CD2D2    mov         eax,esi
 005CD2D4    mov         edx,dword ptr ds:[5B6DC0];TGlassFrame
 005CD2DA    call        @IsClass
 005CD2DF    test        al,al
>005CD2E1    je          005CD315
 005CD2E3    mov         eax,esi
 005CD2E5    movzx       edx,byte ptr [eax+8]
 005CD2E9    mov         byte ptr [ebx+8],dl;TGlassFrame.FEnabled:Boolean
 005CD2EC    mov         edx,dword ptr [eax+0C]
 005CD2EF    mov         dword ptr [ebx+0C],edx;TGlassFrame.FLeft:Integer
 005CD2F2    mov         edx,dword ptr [eax+10]
 005CD2F5    mov         dword ptr [ebx+10],edx;TGlassFrame.FTop:Integer
 005CD2F8    mov         edx,dword ptr [eax+14]
 005CD2FB    mov         dword ptr [ebx+14],edx;TGlassFrame.FRight:Integer
 005CD2FE    mov         edx,dword ptr [eax+18]
 005CD301    mov         dword ptr [ebx+18],edx;TGlassFrame.FBottom:Integer
 005CD304    movzx       eax,byte ptr [eax+28]
 005CD308    mov         byte ptr [ebx+28],al;TGlassFrame.FSheetOfGlass:Boolean
 005CD30B    mov         eax,ebx
 005CD30D    mov         edx,dword ptr [eax]
 005CD30F    call        dword ptr [edx+0C];TGlassFrame.sub_005CD324
 005CD312    pop         esi
 005CD313    pop         ebx
 005CD314    ret
 005CD315    mov         edx,esi
 005CD317    mov         eax,ebx
 005CD319    call        TPersistent.Assign
 005CD31E    pop         esi
 005CD31F    pop         ebx
 005CD320    ret
*}
end;

//005CD324
procedure sub_005CD324;
begin
{*
 005CD324    push        ebx
 005CD325    push        esi
 005CD326    add         esp,0FFFFFFF0
 005CD329    mov         ebx,eax
 005CD32B    mov         eax,dword ptr [ebx+4];TGlassFrame.FClient:TCustomForm
 005CD32E    test        byte ptr [eax+1C],1;TCustomForm.FComponentState:TComponentState
>005CD332    jne         005CD377
 005CD334    cmp         word ptr [ebx+22],0;TGlassFrame.?f22:word
>005CD339    je          005CD343
 005CD33B    mov         edx,ebx
 005CD33D    mov         eax,dword ptr [ebx+24];TGlassFrame.?f24:TCustomForm
 005CD340    call        dword ptr [ebx+20];TGlassFrame.FOnChange
 005CD343    mov         eax,dword ptr [ebx+4];TGlassFrame.FClient:TCustomForm
 005CD346    call        TControl.GetClientHeight
 005CD34B    sub         eax,dword ptr [ebx+18]
 005CD34E    push        eax
 005CD34F    lea         eax,[esp+4]
 005CD353    push        eax
 005CD354    mov         esi,dword ptr [ebx+4];TGlassFrame.FClient:TCustomForm
 005CD357    mov         eax,esi
 005CD359    call        TControl.GetClientWidth
 005CD35E    mov         ecx,eax
 005CD360    sub         ecx,dword ptr [ebx+14]
 005CD363    mov         edx,dword ptr [ebx+10];TGlassFrame.FTop:Integer
 005CD366    mov         eax,dword ptr [ebx+0C];TGlassFrame.FLeft:Integer
 005CD369    call        Rect
 005CD36E    mov         edx,esp
 005CD370    mov         eax,esi
 005CD372    call        005C7678
 005CD377    add         esp,10
 005CD37A    pop         esi
 005CD37B    pop         ebx
 005CD37C    ret
*}
end;

//005CD380
function TGlassFrame.FrameExtended:Boolean;
begin
{*
 005CD380    push        ebx
 005CD381    mov         ebx,eax
 005CD383    cmp         byte ptr [ebx+8],0;TGlassFrame.FEnabled:Boolean
>005CD387    je          005CD3BE
 005CD389    call        004D7288
 005CD38E    test        al,al
>005CD390    je          005CD3BE
 005CD392    call        TStyleManager.GetActiveStyle
 005CD397    call        TCustomStyleServices.GetIsSystemStyle
 005CD39C    test        al,al
>005CD39E    je          005CD3BE
 005CD3A0    cmp         byte ptr [ebx+28],0;TGlassFrame.FSheetOfGlass:Boolean
>005CD3A4    jne         005CD3C2
 005CD3A6    cmp         dword ptr [ebx+0C],0;TGlassFrame.FLeft:Integer
>005CD3AA    jne         005CD3C2
 005CD3AC    cmp         dword ptr [ebx+10],0;TGlassFrame.FTop:Integer
>005CD3B0    jne         005CD3C2
 005CD3B2    cmp         dword ptr [ebx+14],0;TGlassFrame.FRight:Integer
>005CD3B6    jne         005CD3C2
 005CD3B8    cmp         dword ptr [ebx+18],0;TGlassFrame.FBottom:Integer
>005CD3BC    jne         005CD3C2
 005CD3BE    xor         eax,eax
 005CD3C0    pop         ebx
 005CD3C1    ret
 005CD3C2    mov         al,1
 005CD3C4    pop         ebx
 005CD3C5    ret
*}
end;

//005CD3C8
procedure TGlassFrame.IntersectsControl(Control:TControl);
begin
{*
 005CD3C8    push        ebx
 005CD3C9    push        esi
 005CD3CA    push        edi
 005CD3CB    add         esp,0FFFFFFC8
 005CD3CE    mov         edi,edx
 005CD3D0    mov         esi,eax
 005CD3D2    xor         ebx,ebx
 005CD3D4    cmp         byte ptr [esi+8],0;TGlassFrame.FEnabled:Boolean
>005CD3D8    je          005CD4A2
 005CD3DE    call        004D7288
 005CD3E3    test        al,al
>005CD3E5    je          005CD4A2
 005CD3EB    movzx       ebx,byte ptr [esi+28];TGlassFrame.FSheetOfGlass:Boolean
 005CD3EF    test        bl,bl
>005CD3F1    jne         005CD4A2
 005CD3F7    mov         edx,esp
 005CD3F9    mov         eax,edi
 005CD3FB    mov         ecx,dword ptr [eax]
 005CD3FD    call        dword ptr [ecx+64];TControl.sub_004E6794
 005CD400    lea         eax,[esp+20]
 005CD404    push        eax
 005CD405    lea         edx,[esp+4]
 005CD409    mov         ecx,dword ptr [esi+4];TGlassFrame.FClient:TCustomForm
 005CD40C    mov         eax,edi
 005CD40E    call        TControl.ClientToParent
 005CD413    mov         eax,dword ptr [esp+20]
 005CD417    mov         dword ptr [esp],eax
 005CD41A    mov         eax,dword ptr [esp+24]
 005CD41E    mov         dword ptr [esp+4],eax
 005CD422    lea         eax,[esp+20]
 005CD426    push        eax
 005CD427    lea         edx,[esp+0C]
 005CD42B    mov         ecx,dword ptr [esi+4];TGlassFrame.FClient:TCustomForm
 005CD42E    mov         eax,edi
 005CD430    call        TControl.ClientToParent
 005CD435    mov         eax,dword ptr [esp+20]
 005CD439    mov         dword ptr [esp+8],eax
 005CD43D    mov         eax,dword ptr [esp+24]
 005CD441    mov         dword ptr [esp+0C],eax
 005CD445    lea         edx,[esp+10]
 005CD449    mov         eax,dword ptr [esi+4];TGlassFrame.FClient:TCustomForm
 005CD44C    mov         ecx,dword ptr [eax]
 005CD44E    call        dword ptr [ecx+64];TCustomForm.GetClientRect
 005CD451    mov         eax,dword ptr [esp+1C]
 005CD455    sub         eax,dword ptr [esi+18]
 005CD458    push        eax
 005CD459    lea         eax,[esp+2C]
 005CD45D    push        eax
 005CD45E    mov         ecx,dword ptr [esp+20]
 005CD462    sub         ecx,dword ptr [esi+14]
 005CD465    mov         edx,dword ptr [esi+10];TGlassFrame.FTop:Integer
 005CD468    mov         eax,dword ptr [esi+0C];TGlassFrame.FLeft:Integer
 005CD46B    call        Rect
 005CD470    lea         esi,[esp+28]
 005CD474    lea         edi,[esp+10]
 005CD478    movs        dword ptr [edi],dword ptr [esi]
 005CD479    movs        dword ptr [edi],dword ptr [esi]
 005CD47A    movs        dword ptr [edi],dword ptr [esi]
 005CD47B    movs        dword ptr [edi],dword ptr [esi]
 005CD47C    mov         edx,esp
 005CD47E    lea         eax,[esp+10]
 005CD482    call        TRect.Contains
 005CD487    test        al,al
>005CD489    je          005CD4A0
 005CD48B    lea         edx,[esp+8]
 005CD48F    lea         eax,[esp+10]
 005CD493    call        TRect.Contains
 005CD498    test        al,al
>005CD49A    je          005CD4A0
 005CD49C    xor         ebx,ebx
>005CD49E    jmp         005CD4A2
 005CD4A0    mov         bl,1
 005CD4A2    mov         eax,ebx
 005CD4A4    add         esp,38
 005CD4A7    pop         edi
 005CD4A8    pop         esi
 005CD4A9    pop         ebx
 005CD4AA    ret
*}
end;

//005CD4AC
procedure TGlassFrame.SetEnabled(Value:Boolean);
begin
{*
 005CD4AC    push        ebx
 005CD4AD    mov         ebx,eax
 005CD4AF    cmp         dl,byte ptr [ebx+8];TGlassFrame.FEnabled:Boolean
>005CD4B2    je          005CD4DA
 005CD4B4    mov         byte ptr [ebx+8],dl;TGlassFrame.FEnabled:Boolean
 005CD4B7    cmp         byte ptr [ebx+8],0;TGlassFrame.FEnabled:Boolean
>005CD4BB    je          005CD4D3
 005CD4BD    mov         eax,dword ptr [ebx+4];TGlassFrame.FClient:TCustomForm
 005CD4C0    cmp         byte ptr [eax+3A0],0;TCustomForm.FTransparentColor:Boolean
>005CD4C7    je          005CD4D3
 005CD4C9    xor         edx,edx
 005CD4CB    mov         eax,dword ptr [ebx+4];TGlassFrame.FClient:TCustomForm
 005CD4CE    call        TForm.SetTransparentColor
 005CD4D3    mov         eax,ebx
 005CD4D5    mov         edx,dword ptr [eax]
 005CD4D7    call        dword ptr [edx+0C];TGlassFrame.sub_005CD324
 005CD4DA    pop         ebx
 005CD4DB    ret
*}
end;

//005CD4DC
{*procedure TGlassFrame.SetLeft(Value:Integer; ?:?);
begin
 005CD4DC    sub         edx,1
>005CD4DF    jb          005CD4EB
>005CD4E1    je          005CD4FC
 005CD4E3    dec         edx
>005CD4E4    je          005CD50D
 005CD4E6    dec         edx
>005CD4E7    je          005CD51E
>005CD4E9    jmp         005CD532
 005CD4EB    cmp         ecx,dword ptr [eax+0C];TGlassFrame.FLeft:Integer
>005CD4EE    je          005CD52D
 005CD4F0    mov         dword ptr [eax+0C],ecx;TGlassFrame.FLeft:Integer
 005CD4F3    inc         ecx
>005CD4F4    jne         005CD52D
 005CD4F6    mov         byte ptr [eax+28],1;TGlassFrame.FSheetOfGlass:Boolean
>005CD4FA    jmp         005CD52D
 005CD4FC    cmp         ecx,dword ptr [eax+10];TGlassFrame.FTop:Integer
>005CD4FF    je          005CD52D
 005CD501    mov         dword ptr [eax+10],ecx;TGlassFrame.FTop:Integer
 005CD504    inc         ecx
>005CD505    jne         005CD52D
 005CD507    mov         byte ptr [eax+28],1;TGlassFrame.FSheetOfGlass:Boolean
>005CD50B    jmp         005CD52D
 005CD50D    cmp         ecx,dword ptr [eax+14];TGlassFrame.FRight:Integer
>005CD510    je          005CD52D
 005CD512    mov         dword ptr [eax+14],ecx;TGlassFrame.FRight:Integer
 005CD515    inc         ecx
>005CD516    jne         005CD52D
 005CD518    mov         byte ptr [eax+28],1;TGlassFrame.FSheetOfGlass:Boolean
>005CD51C    jmp         005CD52D
 005CD51E    cmp         ecx,dword ptr [eax+18];TGlassFrame.FBottom:Integer
>005CD521    je          005CD52D
 005CD523    mov         dword ptr [eax+18],ecx;TGlassFrame.FBottom:Integer
 005CD526    inc         ecx
>005CD527    jne         005CD52D
 005CD529    mov         byte ptr [eax+28],1;TGlassFrame.FSheetOfGlass:Boolean
 005CD52D    mov         edx,dword ptr [eax]
 005CD52F    call        dword ptr [edx+0C];TGlassFrame.sub_005CD324
 005CD532    ret
end;*}

//005CD534
procedure TGlassFrame.SetSheetOfGlass(Value:Boolean);
begin
{*
 005CD534    cmp         dl,byte ptr [eax+28];TGlassFrame.FSheetOfGlass:Boolean
>005CD537    je          005CD55F
 005CD539    cmp         byte ptr [eax+28],0;TGlassFrame.FSheetOfGlass:Boolean
>005CD53D    je          005CD557
 005CD53F    cmp         dword ptr [eax+0C],0FFFFFFFF;TGlassFrame.FLeft:Integer
>005CD543    je          005CD55F
 005CD545    cmp         dword ptr [eax+10],0FFFFFFFF;TGlassFrame.FTop:Integer
>005CD549    je          005CD55F
 005CD54B    cmp         dword ptr [eax+14],0FFFFFFFF;TGlassFrame.FRight:Integer
>005CD54F    je          005CD55F
 005CD551    cmp         dword ptr [eax+18],0FFFFFFFF;TGlassFrame.FBottom:Integer
>005CD555    je          005CD55F
 005CD557    mov         byte ptr [eax+28],dl;TGlassFrame.FSheetOfGlass:Boolean
 005CD55A    mov         edx,dword ptr [eax]
 005CD55C    call        dword ptr [edx+0C];TGlassFrame.sub_005CD324
 005CD55F    ret
*}
end;

//005CD560
constructor TScrollingStyleHook.TScrollWindow.Create(AOwner:TComponent);
begin
{*
 005CD560    push        ebx
 005CD561    push        esi
 005CD562    test        dl,dl
>005CD564    je          005CD56E
 005CD566    add         esp,0FFFFFFF0
 005CD569    call        @ClassCreate
 005CD56E    mov         ebx,edx
 005CD570    mov         esi,eax
 005CD572    xor         edx,edx
 005CD574    mov         eax,esi
 005CD576    call        TWinControl.Create
 005CD57B    mov         eax,[005CD5A8];^gvar_00800000
 005CD580    or          dword ptr [esi+60],eax
 005CD583    xor         eax,eax
 005CD585    mov         dword ptr [esi+290],eax
 005CD58B    mov         eax,esi
 005CD58D    test        bl,bl
>005CD58F    je          005CD5A0
 005CD591    call        @AfterConstruction
 005CD596    pop         dword ptr fs:[0]
 005CD59D    add         esp,0C
 005CD5A0    mov         eax,esi
 005CD5A2    pop         esi
 005CD5A3    pop         ebx
 005CD5A4    ret
*}
end;

//005CD5AC
procedure TScrollingStyleHook.TScrollWindow.CreateParams(var Params:TCreateParams);
begin
{*
 005CD5AC    push        ebx
 005CD5AD    push        esi
 005CD5AE    push        edi
 005CD5AF    mov         ebx,edx
 005CD5B1    mov         esi,eax
 005CD5B3    mov         edx,ebx
 005CD5B5    mov         eax,esi
 005CD5B7    call        TWinControl.CreateParams
 005CD5BC    mov         eax,dword ptr [ebx+4];TCreateParams.Style:DWORD
 005CD5BF    or          eax,40000000
 005CD5C4    or          eax,2000000
 005CD5C9    or          eax,4000000
 005CD5CE    mov         dword ptr [ebx+4],eax;TCreateParams.Style:DWORD
 005CD5D1    or          dword ptr [ebx+8],4;TCreateParams.ExStyle:DWORD
 005CD5D5    mov         eax,dword ptr [ebx+24];TCreateParams.WindowClass:TWndClass
 005CD5D8    mov         dword ptr [ebx+24],eax;TCreateParams.WindowClass:TWndClass
 005CD5DB    mov         edi,dword ptr [esi+290]
 005CD5E1    test        edi,edi
>005CD5E3    je          005CD5FE
 005CD5E5    mov         eax,edi
 005CD5E7    call        005CD820
 005CD5EC    test        al,al
>005CD5EE    je          005CD5FE
 005CD5F0    mov         eax,dword ptr [ebx+8];TCreateParams.ExStyle:DWORD
 005CD5F3    or          eax,80
 005CD5F8    or          eax,8
 005CD5FB    mov         dword ptr [ebx+8],eax;TCreateParams.ExStyle:DWORD
 005CD5FE    pop         edi
 005CD5FF    pop         esi
 005CD600    pop         ebx
 005CD601    ret
*}
end;

//005CD604
{*procedure TScrollingStyleHook.TScrollWindow.WMNCHitTest(?:?);
begin
 005CD604    mov         dword ptr [edx+0C],0FFFFFFFF
 005CD60B    ret
end;*}

//005CD60C
{*procedure TScrollingStyleHook.TScrollWindow.WMPaint(?:?);
begin
 005CD60C    push        ebp
 005CD60D    mov         ebp,esp
 005CD60F    add         esp,0FFFFFF98
 005CD612    mov         dword ptr [ebp-4],eax
 005CD615    lea         eax,[ebp-48]
 005CD618    push        eax
 005CD619    mov         eax,dword ptr [ebp-4]
 005CD61C    call        TWinControl.GetHandle
 005CD621    push        eax
 005CD622    call        user32.BeginPaint
 005CD627    xor         edx,edx
 005CD629    push        ebp
 005CD62A    push        5CD73C
 005CD62F    push        dword ptr fs:[edx]
 005CD632    mov         dword ptr fs:[edx],esp
 005CD635    mov         eax,dword ptr [ebp-4]
 005CD638    mov         eax,dword ptr [eax+290]
 005CD63E    test        eax,eax
>005CD640    je          005CD71C
 005CD646    mov         edx,dword ptr [eax+8]
 005CD649    cmp         dword ptr [edx+58],0
>005CD64D    jle         005CD71C
 005CD653    mov         eax,dword ptr [eax+8]
 005CD656    cmp         dword ptr [eax+5C],0
>005CD65A    jle         005CD71C
 005CD660    mov         eax,dword ptr [ebp-4]
 005CD663    call        TWinControl.GetHandle
 005CD668    push        eax
 005CD669    call        user32.GetWindowDC
 005CD66E    mov         dword ptr [ebp-8],eax
 005CD671    xor         eax,eax
 005CD673    push        ebp
 005CD674    push        5CD715
 005CD679    push        dword ptr fs:[eax]
 005CD67C    mov         dword ptr fs:[eax],esp
 005CD67F    mov         eax,dword ptr [ebp-4]
 005CD682    cmp         byte ptr [eax+294],0
>005CD689    je          005CD6C1
 005CD68B    lea         edx,[ebp-58]
 005CD68E    mov         eax,dword ptr [ebp-4]
 005CD691    mov         eax,dword ptr [eax+290]
 005CD697    call        005CE5A0
 005CD69C    mov         ecx,dword ptr [ebp-54]
 005CD69F    neg         ecx
 005CD6A1    mov         edx,dword ptr [ebp-58]
 005CD6A4    neg         edx
 005CD6A6    mov         eax,dword ptr [ebp-8]
 005CD6A9    call        MoveWindowOrg
 005CD6AE    mov         eax,dword ptr [ebp-4]
 005CD6B1    mov         eax,dword ptr [eax+290]
 005CD6B7    mov         edx,dword ptr [ebp-8]
 005CD6BA    mov         ecx,dword ptr [eax]
 005CD6BC    call        dword ptr [ecx+48]
>005CD6BF    jmp         005CD6F5
 005CD6C1    lea         edx,[ebp-68]
 005CD6C4    mov         eax,dword ptr [ebp-4]
 005CD6C7    mov         eax,dword ptr [eax+290]
 005CD6CD    call        005CE818
 005CD6D2    mov         ecx,dword ptr [ebp-64]
 005CD6D5    neg         ecx
 005CD6D7    mov         edx,dword ptr [ebp-68]
 005CD6DA    neg         edx
 005CD6DC    mov         eax,dword ptr [ebp-8]
 005CD6DF    call        MoveWindowOrg
 005CD6E4    mov         eax,dword ptr [ebp-4]
 005CD6E7    mov         eax,dword ptr [eax+290]
 005CD6ED    mov         edx,dword ptr [ebp-8]
 005CD6F0    mov         ecx,dword ptr [eax]
 005CD6F2    call        dword ptr [ecx+44]
 005CD6F5    xor         eax,eax
 005CD6F7    pop         edx
 005CD6F8    pop         ecx
 005CD6F9    pop         ecx
 005CD6FA    mov         dword ptr fs:[eax],edx
 005CD6FD    push        5CD71C
 005CD702    mov         eax,dword ptr [ebp-8]
 005CD705    push        eax
 005CD706    mov         eax,dword ptr [ebp-4]
 005CD709    call        TWinControl.GetHandle
 005CD70E    push        eax
 005CD70F    call        user32.ReleaseDC
 005CD714    ret
>005CD715    jmp         @HandleFinally
>005CD71A    jmp         005CD702
 005CD71C    xor         eax,eax
 005CD71E    pop         edx
 005CD71F    pop         ecx
 005CD720    pop         ecx
 005CD721    mov         dword ptr fs:[eax],edx
 005CD724    push        5CD743
 005CD729    lea         eax,[ebp-48]
 005CD72C    push        eax
 005CD72D    mov         eax,dword ptr [ebp-4]
 005CD730    call        TWinControl.GetHandle
 005CD735    push        eax
 005CD736    call        user32.EndPaint
 005CD73B    ret
>005CD73C    jmp         @HandleFinally
>005CD741    jmp         005CD729
 005CD743    mov         esp,ebp
 005CD745    pop         ebp
 005CD746    ret
end;*}

//005CD748
procedure sub_005CD748;
begin
{*
 005CD748    call        004ECAFC
 005CD74D    ret
*}
end;

//005CD750
{*procedure TScrollingStyleHook.TScrollWindow.WMEraseBkgnd(?:?);
begin
 005CD750    mov         dword ptr [edx+0C],1
 005CD757    ret
end;*}

//005CD758
constructor TScrollingStyleHook.Create(AControl:TWinControl);
begin
{*
 005CD758    push        ebx
 005CD759    push        esi
 005CD75A    test        dl,dl
>005CD75C    je          005CD766
 005CD75E    add         esp,0FFFFFFF0
 005CD761    call        @ClassCreate
 005CD766    mov         ebx,edx
 005CD768    mov         esi,eax
 005CD76A    xor         edx,edx
 005CD76C    mov         eax,esi
 005CD76E    call        TMouseTrackControlStyleHook.Create
 005CD773    mov         byte ptr [esi+18],1;TScrollingStyleHook.FOverridePaintNC:Boolean
 005CD777    xor         eax,eax
 005CD779    mov         dword ptr [esi+44],eax;TScrollingStyleHook.FVertScrollWnd:TScrollWindow
 005CD77C    xor         eax,eax
 005CD77E    mov         dword ptr [esi+2C],eax;TScrollingStyleHook.FHorzScrollWnd:TScrollWindow
 005CD781    mov         byte ptr [esi+4A],0;TScrollingStyleHook.FInitingScrollBars:Boolean
 005CD785    mov         eax,esi
 005CD787    test        bl,bl
>005CD789    je          005CD79A
 005CD78B    call        @AfterConstruction
 005CD790    pop         dword ptr fs:[0]
 005CD797    add         esp,0C
 005CD79A    mov         eax,esi
 005CD79C    pop         esi
 005CD79D    pop         ebx
 005CD79E    ret
*}
end;

//005CD7A0
destructor TScrollingStyleHook.Destroy();
begin
{*
 005CD7A0    push        ebx
 005CD7A1    push        esi
 005CD7A2    add         esp,0FFFFFFF8
 005CD7A5    call        @BeforeDestruction
 005CD7AA    mov         ebx,edx
 005CD7AC    mov         esi,eax
 005CD7AE    mov         byte ptr [esi+4A],1;TScrollingStyleHook.FInitingScrollBars:Boolean
 005CD7B2    mov         eax,dword ptr [esi+44];TScrollingStyleHook.FVertScrollWnd:TScrollWindow
 005CD7B5    test        eax,eax
>005CD7B7    je          005CD7D8
 005CD7B9    xor         edx,edx
 005CD7BB    mov         dword ptr [eax+290],edx
 005CD7C1    lea         eax,[esi+44];TScrollingStyleHook.FVertScrollWnd:TScrollWindow
 005CD7C4    mov         dword ptr [esp],eax
 005CD7C7    mov         eax,dword ptr [esp]
 005CD7CA    mov         eax,dword ptr [eax]
 005CD7CC    mov         edx,dword ptr [esp]
 005CD7CF    xor         ecx,ecx
 005CD7D1    mov         dword ptr [edx],ecx
 005CD7D3    call        TObject.Free
 005CD7D8    mov         eax,dword ptr [esi+2C];TScrollingStyleHook.FHorzScrollWnd:TScrollWindow
 005CD7DB    test        eax,eax
>005CD7DD    je          005CD801
 005CD7DF    xor         edx,edx
 005CD7E1    mov         dword ptr [eax+290],edx
 005CD7E7    lea         eax,[esi+2C];TScrollingStyleHook.FHorzScrollWnd:TScrollWindow
 005CD7EA    mov         dword ptr [esp+4],eax
 005CD7EE    mov         eax,dword ptr [esp+4]
 005CD7F2    mov         eax,dword ptr [eax]
 005CD7F4    mov         edx,dword ptr [esp+4]
 005CD7F8    xor         ecx,ecx
 005CD7FA    mov         dword ptr [edx],ecx
 005CD7FC    call        TObject.Free
 005CD801    mov         byte ptr [esi+4A],0;TScrollingStyleHook.FInitingScrollBars:Boolean
 005CD805    mov         dl,0FC
 005CD807    and         dl,bl
 005CD809    mov         eax,esi
 005CD80B    call        TMouseTrackControlStyleHook.Destroy
 005CD810    test        bl,bl
>005CD812    jle         005CD81B
 005CD814    mov         eax,esi
 005CD816    call        @ClassDestroy
 005CD81B    pop         ecx
 005CD81C    pop         edx
 005CD81D    pop         esi
 005CD81E    pop         ebx
 005CD81F    ret
*}
end;

//005CD820
function sub_005CD820(?:TScrollingStyleHook):Boolean;
begin
{*
 005CD820    push        ebx
 005CD821    mov         ebx,eax
 005CD823    mov         eax,ebx
 005CD825    call        TStyleHook.GetHandle
 005CD82A    push        0EC
 005CD82C    push        eax
 005CD82D    call        user32.GetWindowLongW
 005CD832    and         eax,80
 005CD837    cmp         eax,80
>005CD83C    jne         005CD842
 005CD83E    mov         al,1
 005CD840    pop         ebx
 005CD841    ret
 005CD842    mov         eax,ebx
 005CD844    call        TStyleHook.GetHandle
 005CD849    push        0F0
 005CD84B    push        eax
 005CD84C    call        user32.GetWindowLongW
 005CD851    and         eax,80000000
 005CD856    cmp         eax,80000000
 005CD85B    sete        al
 005CD85E    pop         ebx
 005CD85F    ret
*}
end;

//005CD860
procedure sub_005CD860(?:TScrollingStyleHook);
begin
{*
 005CD860    push        ebx
 005CD861    push        esi
 005CD862    push        edi
 005CD863    push        ebp
 005CD864    add         esp,0FFFFFFD0
 005CD867    mov         ebx,eax
 005CD869    mov         edi,esp
 005CD86B    cmp         byte ptr [ebx+4A],0
>005CD86F    jne         005CDAD9
 005CD875    mov         byte ptr [ebx+4A],1
 005CD879    mov         eax,ebx
 005CD87B    call        005CDB68
 005CD880    mov         eax,dword ptr [ebx+8]
 005CD883    call        TWinControl.GetHandle
 005CD888    push        eax
 005CD889    call        user32.GetParent
 005CD88E    mov         ecx,eax
 005CD890    mov         dl,1
 005CD892    mov         eax,[005BD308];TScrollingStyleHook.TScrollWindow
 005CD897    call        TScrollBar.Create
 005CD89C    mov         esi,eax
 005CD89E    mov         dword ptr [ebx+44],esi
 005CD8A1    mov         dword ptr [esi+290],ebx
 005CD8A7    mov         byte ptr [esi+294],1
 005CD8AE    mov         edx,edi
 005CD8B0    mov         eax,ebx
 005CD8B2    call        005CE5A0
 005CD8B7    mov         eax,dword ptr [ebx+8]
 005CD8BA    cmp         byte ptr [eax+71],1
>005CD8BE    jne         005CD90C
 005CD8C0    mov         eax,edi
 005CD8C2    call        IsRectEmpty
 005CD8C7    test        al,al
>005CD8C9    jne         005CD90C
 005CD8CB    mov         edx,dword ptr [edi]
 005CD8CD    neg         edx
 005CD8CF    mov         eax,edi
 005CD8D1    xor         ecx,ecx
 005CD8D3    call        OffsetRect
 005CD8D8    mov         eax,ebx
 005CD8DA    mov         edx,dword ptr [eax]
 005CD8DC    call        dword ptr [edx+4]
 005CD8DF    test        al,al
>005CD8E1    je          005CD90C
 005CD8E3    mov         eax,ebx
 005CD8E5    mov         edx,dword ptr [eax]
 005CD8E7    call        dword ptr [edx+8]
 005CD8EA    test        al,al
>005CD8EC    je          005CD8FE
 005CD8EE    mov         eax,edi
 005CD8F0    xor         ecx,ecx
 005CD8F2    mov         edx,2
 005CD8F7    call        OffsetRect
>005CD8FC    jmp         005CD90C
 005CD8FE    mov         eax,edi
 005CD900    xor         ecx,ecx
 005CD902    mov         edx,1
 005CD907    call        OffsetRect
 005CD90C    mov         eax,ebx
 005CD90E    call        005CD820
 005CD913    test        al,al
>005CD915    je          005CD94A
 005CD917    push        8
 005CD919    mov         eax,dword ptr [edi+0C]
 005CD91C    sub         eax,dword ptr [edi+4]
 005CD91F    push        eax
 005CD920    mov         eax,dword ptr [edi+8]
 005CD923    mov         ebp,dword ptr [edi]
 005CD925    sub         eax,ebp
 005CD927    push        eax
 005CD928    mov         esi,dword ptr [ebx+8]
 005CD92B    mov         eax,dword ptr [esi+54]
 005CD92E    add         eax,dword ptr [edi+4]
 005CD931    push        eax
 005CD932    mov         eax,dword ptr [esi+50]
 005CD935    add         eax,ebp
 005CD937    push        eax
 005CD938    push        0FF
 005CD93A    mov         eax,dword ptr [ebx+44]
 005CD93D    call        TWinControl.GetHandle
 005CD942    push        eax
 005CD943    call        user32.SetWindowPos
>005CD948    jmp         005CD97B
 005CD94A    push        8
 005CD94C    mov         eax,dword ptr [edi+0C]
 005CD94F    sub         eax,dword ptr [edi+4]
 005CD952    push        eax
 005CD953    mov         eax,dword ptr [edi+8]
 005CD956    mov         ebp,dword ptr [edi]
 005CD958    sub         eax,ebp
 005CD95A    push        eax
 005CD95B    mov         esi,dword ptr [ebx+8]
 005CD95E    mov         eax,dword ptr [esi+54]
 005CD961    add         eax,dword ptr [edi+4]
 005CD964    push        eax
 005CD965    mov         eax,dword ptr [esi+50]
 005CD968    add         eax,ebp
 005CD96A    push        eax
 005CD96B    push        0
 005CD96D    mov         eax,dword ptr [ebx+44]
 005CD970    call        TWinControl.GetHandle
 005CD975    push        eax
 005CD976    call        user32.SetWindowPos
 005CD97B    lea         edx,[esp+20]
 005CD97F    mov         eax,ebx
 005CD981    call        005CE5A0
 005CD986    lea         eax,[esp+20]
 005CD98A    call        IsRectEmpty
 005CD98F    test        al,al
>005CD991    je          005CD9A5
 005CD993    push        0
 005CD995    mov         eax,dword ptr [ebx+44]
 005CD998    call        TWinControl.GetHandle
 005CD99D    push        eax
 005CD99E    call        user32.ShowWindow
>005CD9A3    jmp         005CD9B5
 005CD9A5    push        5
 005CD9A7    mov         eax,dword ptr [ebx+44]
 005CD9AA    call        TWinControl.GetHandle
 005CD9AF    push        eax
 005CD9B0    call        user32.ShowWindow
 005CD9B5    mov         eax,dword ptr [ebx+8]
 005CD9B8    call        TWinControl.GetHandle
 005CD9BD    push        eax
 005CD9BE    call        user32.GetParent
 005CD9C3    mov         ecx,eax
 005CD9C5    mov         dl,1
 005CD9C7    mov         eax,[005BD308];TScrollingStyleHook.TScrollWindow
 005CD9CC    call        TScrollBar.Create
 005CD9D1    mov         esi,eax
 005CD9D3    mov         dword ptr [ebx+2C],esi
 005CD9D6    mov         dword ptr [esi+290],ebx
 005CD9DC    mov         byte ptr [esi+294],0
 005CD9E3    mov         edx,edi
 005CD9E5    mov         eax,ebx
 005CD9E7    call        005CE818
 005CD9EC    mov         eax,dword ptr [ebx+8]
 005CD9EF    cmp         byte ptr [eax+71],1
>005CD9F3    jne         005CDA2C
 005CD9F5    lea         edx,[esp+20]
 005CD9F9    mov         eax,ebx
 005CD9FB    call        005CE5A0
 005CDA00    lea         eax,[esp+20]
 005CDA04    call        IsRectEmpty
 005CDA09    test        al,al
>005CDA0B    jne         005CDA2C
 005CDA0D    lea         edx,[esp+10]
 005CDA11    mov         eax,ebx
 005CDA13    call        005CE5A0
 005CDA18    lea         eax,[esp+10]
 005CDA1C    call        RectWidth
 005CDA21    mov         edx,eax
 005CDA23    mov         eax,edi
 005CDA25    xor         ecx,ecx
 005CDA27    call        OffsetRect
 005CDA2C    mov         eax,ebx
 005CDA2E    call        005CD820
 005CDA33    test        al,al
>005CDA35    je          005CDA6A
 005CDA37    push        8
 005CDA39    mov         eax,dword ptr [edi+0C]
 005CDA3C    sub         eax,dword ptr [edi+4]
 005CDA3F    push        eax
 005CDA40    mov         eax,dword ptr [edi+8]
 005CDA43    mov         ebp,dword ptr [edi]
 005CDA45    sub         eax,ebp
 005CDA47    push        eax
 005CDA48    mov         esi,dword ptr [ebx+8]
 005CDA4B    mov         eax,dword ptr [esi+54]
 005CDA4E    add         eax,dword ptr [edi+4]
 005CDA51    push        eax
 005CDA52    mov         eax,dword ptr [esi+50]
 005CDA55    add         eax,ebp
 005CDA57    push        eax
 005CDA58    push        0FF
 005CDA5A    mov         eax,dword ptr [ebx+2C]
 005CDA5D    call        TWinControl.GetHandle
 005CDA62    push        eax
 005CDA63    call        user32.SetWindowPos
>005CDA68    jmp         005CDA9B
 005CDA6A    push        8
 005CDA6C    mov         eax,dword ptr [edi+0C]
 005CDA6F    sub         eax,dword ptr [edi+4]
 005CDA72    push        eax
 005CDA73    mov         eax,dword ptr [edi+8]
 005CDA76    mov         ebp,dword ptr [edi]
 005CDA78    sub         eax,ebp
 005CDA7A    push        eax
 005CDA7B    mov         esi,dword ptr [ebx+8]
 005CDA7E    mov         eax,dword ptr [esi+54]
 005CDA81    add         eax,dword ptr [edi+4]
 005CDA84    push        eax
 005CDA85    mov         eax,dword ptr [esi+50]
 005CDA88    add         eax,ebp
 005CDA8A    push        eax
 005CDA8B    push        0
 005CDA8D    mov         eax,dword ptr [ebx+2C]
 005CDA90    call        TWinControl.GetHandle
 005CDA95    push        eax
 005CDA96    call        user32.SetWindowPos
 005CDA9B    lea         edx,[esp+20]
 005CDA9F    mov         eax,ebx
 005CDAA1    call        005CE818
 005CDAA6    lea         eax,[esp+20]
 005CDAAA    call        IsRectEmpty
 005CDAAF    test        al,al
>005CDAB1    je          005CDAC5
 005CDAB3    push        0
 005CDAB5    mov         eax,dword ptr [ebx+2C]
 005CDAB8    call        TWinControl.GetHandle
 005CDABD    push        eax
 005CDABE    call        user32.ShowWindow
>005CDAC3    jmp         005CDAD5
 005CDAC5    push        5
 005CDAC7    mov         eax,dword ptr [ebx+2C]
 005CDACA    call        TWinControl.GetHandle
 005CDACF    push        eax
 005CDAD0    call        user32.ShowWindow
 005CDAD5    mov         byte ptr [ebx+4A],0
 005CDAD9    add         esp,30
 005CDADC    pop         ebp
 005CDADD    pop         edi
 005CDADE    pop         esi
 005CDADF    pop         ebx
 005CDAE0    ret
*}
end;

//005CDAE4
procedure sub_005CDAE4;
begin
{*
 005CDAE4    push        ebx
 005CDAE5    mov         ebx,eax
 005CDAE7    mov         eax,ebx
 005CDAE9    call        0058DB48
 005CDAEE    cmp         byte ptr [ebx+48],1B;TScrollingStyleHook.FVertSliderState:TThemedScrollBar
>005CDAF2    jne         005CDAF8
 005CDAF4    mov         byte ptr [ebx+48],1A;TScrollingStyleHook.FVertSliderState:TThemedScrollBar
 005CDAF8    cmp         byte ptr [ebx+30],17;TScrollingStyleHook.FHorzSliderState:TThemedScrollBar
>005CDAFC    jne         005CDB02
 005CDAFE    mov         byte ptr [ebx+30],16;TScrollingStyleHook.FHorzSliderState:TThemedScrollBar
 005CDB02    cmp         byte ptr [ebx+49],3;TScrollingStyleHook.FVertUpState:TThemedScrollBar
>005CDB06    jne         005CDB0C
 005CDB08    mov         byte ptr [ebx+49],2;TScrollingStyleHook.FVertUpState:TThemedScrollBar
 005CDB0C    cmp         byte ptr [ebx+40],7;TScrollingStyleHook.FVertDownState:TThemedScrollBar
>005CDB10    jne         005CDB16
 005CDB12    mov         byte ptr [ebx+40],6;TScrollingStyleHook.FVertDownState:TThemedScrollBar
 005CDB16    cmp         byte ptr [ebx+31],0B;TScrollingStyleHook.FHorzUpState:TThemedScrollBar
>005CDB1A    jne         005CDB20
 005CDB1C    mov         byte ptr [ebx+31],0A;TScrollingStyleHook.FHorzUpState:TThemedScrollBar
 005CDB20    cmp         byte ptr [ebx+28],0F;TScrollingStyleHook.FHorzDownState:TThemedScrollBar
>005CDB24    jne         005CDB2A
 005CDB26    mov         byte ptr [ebx+28],0E;TScrollingStyleHook.FHorzDownState:TThemedScrollBar
 005CDB2A    mov         eax,ebx
 005CDB2C    mov         edx,dword ptr [eax]
 005CDB2E    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CDB31    pop         ebx
 005CDB32    ret
*}
end;

//005CDB34
procedure sub_005CDB34;
begin
{*
 005CDB34    push        esi
 005CDB35    mov         esi,eax
 005CDB37    cmp         byte ptr [esi+4A],0;TScrollingStyleHook.FInitingScrollBars:Boolean
>005CDB3B    jne         005CDB66
 005CDB3D    mov         eax,esi
 005CDB3F    call        0058D52C
 005CDB44    mov         eax,esi
 005CDB46    mov         edx,dword ptr [eax]
 005CDB48    call        dword ptr [edx+40];TScrollingStyleHook.sub_005CEA54
 005CDB4B    cmp         dword ptr [esi+44],0;TScrollingStyleHook.FVertScrollWnd:TScrollWindow
>005CDB4F    jne         005CDB58
 005CDB51    mov         eax,esi
 005CDB53    call        005CD860
 005CDB58    mov         eax,esi
 005CDB5A    call        005CDB84
 005CDB5F    mov         eax,esi
 005CDB61    mov         edx,dword ptr [eax]
 005CDB63    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CDB66    pop         esi
 005CDB67    ret
*}
end;

//005CDB68
{*procedure sub_005CDB68(?:?);
begin
 005CDB68    mov         byte ptr [eax+48],1A
 005CDB6C    mov         byte ptr [eax+49],2
 005CDB70    mov         byte ptr [eax+40],6
 005CDB74    mov         byte ptr [eax+30],16
 005CDB78    mov         byte ptr [eax+31],0A
 005CDB7C    mov         byte ptr [eax+28],0E
 005CDB80    ret
end;*}

//005CDB84
procedure sub_005CDB84(?:TScrollingStyleHook);
begin
{*
 005CDB84    push        ebx
 005CDB85    push        esi
 005CDB86    push        edi
 005CDB87    push        ebp
 005CDB88    add         esp,0FFFFFFC8
 005CDB8B    mov         ebx,eax
 005CDB8D    mov         esi,dword ptr [ebx+44];TScrollingStyleHook.FVertScrollWnd:TScrollWindow
 005CDB90    test        esi,esi
>005CDB92    je          005CDB9F
 005CDB94    mov         eax,esi
 005CDB96    call        TWinControl.HandleAllocated
 005CDB9B    test        al,al
>005CDB9D    je          005CDBB1
 005CDB9F    mov         edi,dword ptr [ebx+2C];TScrollingStyleHook.FHorzScrollWnd:TScrollWindow
 005CDBA2    test        edi,edi
>005CDBA4    je          005CDBFA
 005CDBA6    mov         eax,edi
 005CDBA8    call        TWinControl.HandleAllocated
 005CDBAD    test        al,al
>005CDBAF    jne         005CDBFA
 005CDBB1    cmp         dword ptr [ebx+44],0;TScrollingStyleHook.FVertScrollWnd:TScrollWindow
>005CDBB5    je          005CDBCE
 005CDBB7    lea         eax,[ebx+44];TScrollingStyleHook.FVertScrollWnd:TScrollWindow
 005CDBBA    mov         dword ptr [esp],eax
 005CDBBD    mov         eax,dword ptr [esp]
 005CDBC0    mov         eax,dword ptr [eax]
 005CDBC2    mov         edx,dword ptr [esp]
 005CDBC5    xor         ecx,ecx
 005CDBC7    mov         dword ptr [edx],ecx
 005CDBC9    call        TObject.Free
 005CDBCE    cmp         dword ptr [ebx+2C],0;TScrollingStyleHook.FHorzScrollWnd:TScrollWindow
>005CDBD2    je          005CDBEE
 005CDBD4    lea         eax,[ebx+2C];TScrollingStyleHook.FHorzScrollWnd:TScrollWindow
 005CDBD7    mov         dword ptr [esp+4],eax
 005CDBDB    mov         eax,dword ptr [esp+4]
 005CDBDF    mov         eax,dword ptr [eax]
 005CDBE1    mov         edx,dword ptr [esp+4]
 005CDBE5    xor         ecx,ecx
 005CDBE7    mov         dword ptr [edx],ecx
 005CDBE9    call        TObject.Free
 005CDBEE    mov         eax,ebx
 005CDBF0    call        005CD860
>005CDBF5    jmp         005CDE3F
 005CDBFA    mov         esi,dword ptr [ebx+44];TScrollingStyleHook.FVertScrollWnd:TScrollWindow
 005CDBFD    test        esi,esi
>005CDBFF    je          005CDD2B
 005CDC05    mov         eax,esi
 005CDC07    call        TWinControl.HandleAllocated
 005CDC0C    test        al,al
>005CDC0E    je          005CDD2B
 005CDC14    lea         edx,[esp+8]
 005CDC18    mov         eax,ebx
 005CDC1A    call        005CE5A0
 005CDC1F    mov         eax,dword ptr [ebx+8];TScrollingStyleHook.FControl:TWinControl
 005CDC22    cmp         byte ptr [eax+71],1;TWinControl.FBiDiMode:TBiDiMode
>005CDC26    jne         005CDC7E
 005CDC28    lea         eax,[esp+8]
 005CDC2C    call        IsRectEmpty
 005CDC31    test        al,al
>005CDC33    jne         005CDC7E
 005CDC35    mov         edx,dword ptr [esp+8]
 005CDC39    neg         edx
 005CDC3B    lea         eax,[esp+8]
 005CDC3F    xor         ecx,ecx
 005CDC41    call        OffsetRect
 005CDC46    mov         eax,ebx
 005CDC48    mov         edx,dword ptr [eax]
 005CDC4A    call        dword ptr [edx+4];TScrollingStyleHook.sub_0058D43C
 005CDC4D    test        al,al
>005CDC4F    je          005CDC7E
 005CDC51    mov         eax,ebx
 005CDC53    mov         edx,dword ptr [eax]
 005CDC55    call        dword ptr [edx+8];TScrollingStyleHook.sub_0058D47C
 005CDC58    test        al,al
>005CDC5A    je          005CDC6E
 005CDC5C    lea         eax,[esp+8]
 005CDC60    xor         ecx,ecx
 005CDC62    mov         edx,2
 005CDC67    call        OffsetRect
>005CDC6C    jmp         005CDC7E
 005CDC6E    lea         eax,[esp+8]
 005CDC72    xor         ecx,ecx
 005CDC74    mov         edx,1
 005CDC79    call        OffsetRect
 005CDC7E    lea         eax,[esp+8]
 005CDC82    call        IsRectEmpty
 005CDC87    test        al,al
>005CDC89    je          005CDCA0
 005CDC8B    push        0
 005CDC8D    mov         eax,dword ptr [ebx+44];TScrollingStyleHook.FVertScrollWnd:TScrollWindow
 005CDC90    call        TWinControl.GetHandle
 005CDC95    push        eax
 005CDC96    call        user32.ShowWindow
>005CDC9B    jmp         005CDD2B
 005CDCA0    push        5
 005CDCA2    mov         eax,dword ptr [ebx+44];TScrollingStyleHook.FVertScrollWnd:TScrollWindow
 005CDCA5    call        TWinControl.GetHandle
 005CDCAA    push        eax
 005CDCAB    call        user32.ShowWindow
 005CDCB0    mov         eax,ebx
 005CDCB2    call        005CD820
 005CDCB7    test        al,al
>005CDCB9    je          005CDCF4
 005CDCBB    push        40
 005CDCBD    mov         eax,dword ptr [esp+18]
 005CDCC1    mov         ebp,dword ptr [esp+10]
 005CDCC5    sub         eax,ebp
 005CDCC7    push        eax
 005CDCC8    mov         eax,dword ptr [esp+18]
 005CDCCC    mov         edi,dword ptr [esp+10]
 005CDCD0    sub         eax,edi
 005CDCD2    push        eax
 005CDCD3    mov         esi,dword ptr [ebx+8];TScrollingStyleHook.FControl:TWinControl
 005CDCD6    mov         eax,dword ptr [esi+54];TWinControl.FTop:Integer
 005CDCD9    add         eax,ebp
 005CDCDB    push        eax
 005CDCDC    mov         eax,dword ptr [esi+50];TWinControl.FLeft:Integer
 005CDCDF    add         eax,edi
 005CDCE1    push        eax
 005CDCE2    push        0FF
 005CDCE4    mov         eax,dword ptr [ebx+44];TScrollingStyleHook.FVertScrollWnd:TScrollWindow
 005CDCE7    call        TWinControl.GetHandle
 005CDCEC    push        eax
 005CDCED    call        user32.SetWindowPos
>005CDCF2    jmp         005CDD2B
 005CDCF4    push        40
 005CDCF6    mov         eax,dword ptr [esp+18]
 005CDCFA    mov         ebp,dword ptr [esp+10]
 005CDCFE    sub         eax,ebp
 005CDD00    push        eax
 005CDD01    mov         eax,dword ptr [esp+18]
 005CDD05    mov         edi,dword ptr [esp+10]
 005CDD09    sub         eax,edi
 005CDD0B    push        eax
 005CDD0C    mov         esi,dword ptr [ebx+8];TScrollingStyleHook.FControl:TWinControl
 005CDD0F    mov         eax,dword ptr [esi+54];TWinControl.FTop:Integer
 005CDD12    add         eax,ebp
 005CDD14    push        eax
 005CDD15    mov         eax,dword ptr [esi+50];TWinControl.FLeft:Integer
 005CDD18    add         eax,edi
 005CDD1A    push        eax
 005CDD1B    push        0
 005CDD1D    mov         eax,dword ptr [ebx+44];TScrollingStyleHook.FVertScrollWnd:TScrollWindow
 005CDD20    call        TWinControl.GetHandle
 005CDD25    push        eax
 005CDD26    call        user32.SetWindowPos
 005CDD2B    mov         esi,dword ptr [ebx+2C];TScrollingStyleHook.FHorzScrollWnd:TScrollWindow
 005CDD2E    test        esi,esi
>005CDD30    je          005CDE3F
 005CDD36    mov         eax,esi
 005CDD38    call        TWinControl.HandleAllocated
 005CDD3D    test        al,al
>005CDD3F    je          005CDE3F
 005CDD45    lea         edx,[esp+8]
 005CDD49    mov         eax,ebx
 005CDD4B    call        005CE818
 005CDD50    mov         eax,dword ptr [ebx+8];TScrollingStyleHook.FControl:TWinControl
 005CDD53    cmp         byte ptr [eax+71],1;TWinControl.FBiDiMode:TBiDiMode
>005CDD57    jne         005CDD92
 005CDD59    lea         edx,[esp+28]
 005CDD5D    mov         eax,ebx
 005CDD5F    call        005CE5A0
 005CDD64    lea         eax,[esp+28]
 005CDD68    call        IsRectEmpty
 005CDD6D    test        al,al
>005CDD6F    jne         005CDD92
 005CDD71    lea         edx,[esp+18]
 005CDD75    mov         eax,ebx
 005CDD77    call        005CE5A0
 005CDD7C    lea         eax,[esp+18]
 005CDD80    call        RectWidth
 005CDD85    mov         edx,eax
 005CDD87    lea         eax,[esp+8]
 005CDD8B    xor         ecx,ecx
 005CDD8D    call        OffsetRect
 005CDD92    lea         eax,[esp+8]
 005CDD96    call        IsRectEmpty
 005CDD9B    test        al,al
>005CDD9D    je          005CDDB4
 005CDD9F    push        0
 005CDDA1    mov         eax,dword ptr [ebx+2C];TScrollingStyleHook.FHorzScrollWnd:TScrollWindow
 005CDDA4    call        TWinControl.GetHandle
 005CDDA9    push        eax
 005CDDAA    call        user32.ShowWindow
>005CDDAF    jmp         005CDE3F
 005CDDB4    push        5
 005CDDB6    mov         eax,dword ptr [ebx+2C];TScrollingStyleHook.FHorzScrollWnd:TScrollWindow
 005CDDB9    call        TWinControl.GetHandle
 005CDDBE    push        eax
 005CDDBF    call        user32.ShowWindow
 005CDDC4    mov         eax,ebx
 005CDDC6    call        005CD820
 005CDDCB    test        al,al
>005CDDCD    je          005CDE08
 005CDDCF    push        40
 005CDDD1    mov         eax,dword ptr [esp+18]
 005CDDD5    mov         ebp,dword ptr [esp+10]
 005CDDD9    sub         eax,ebp
 005CDDDB    push        eax
 005CDDDC    mov         eax,dword ptr [esp+18]
 005CDDE0    mov         edi,dword ptr [esp+10]
 005CDDE4    sub         eax,edi
 005CDDE6    push        eax
 005CDDE7    mov         esi,dword ptr [ebx+8];TScrollingStyleHook.FControl:TWinControl
 005CDDEA    mov         eax,dword ptr [esi+54];TWinControl.FTop:Integer
 005CDDED    add         eax,ebp
 005CDDEF    push        eax
 005CDDF0    mov         eax,dword ptr [esi+50];TWinControl.FLeft:Integer
 005CDDF3    add         eax,edi
 005CDDF5    push        eax
 005CDDF6    push        0FF
 005CDDF8    mov         eax,dword ptr [ebx+2C];TScrollingStyleHook.FHorzScrollWnd:TScrollWindow
 005CDDFB    call        TWinControl.GetHandle
 005CDE00    push        eax
 005CDE01    call        user32.SetWindowPos
>005CDE06    jmp         005CDE3F
 005CDE08    push        40
 005CDE0A    mov         eax,dword ptr [esp+18]
 005CDE0E    mov         ebp,dword ptr [esp+10]
 005CDE12    sub         eax,ebp
 005CDE14    push        eax
 005CDE15    mov         eax,dword ptr [esp+18]
 005CDE19    mov         edi,dword ptr [esp+10]
 005CDE1D    sub         eax,edi
 005CDE1F    push        eax
 005CDE20    mov         esi,dword ptr [ebx+8];TScrollingStyleHook.FControl:TWinControl
 005CDE23    mov         eax,dword ptr [esi+54];TWinControl.FTop:Integer
 005CDE26    add         eax,ebp
 005CDE28    push        eax
 005CDE29    mov         eax,dword ptr [esi+50];TWinControl.FLeft:Integer
 005CDE2C    add         eax,edi
 005CDE2E    push        eax
 005CDE2F    push        0
 005CDE31    mov         eax,dword ptr [ebx+2C];TScrollingStyleHook.FHorzScrollWnd:TScrollWindow
 005CDE34    call        TWinControl.GetHandle
 005CDE39    push        eax
 005CDE3A    call        user32.SetWindowPos
 005CDE3F    add         esp,38
 005CDE42    pop         ebp
 005CDE43    pop         edi
 005CDE44    pop         esi
 005CDE45    pop         ebx
 005CDE46    ret
*}
end;

//005CDE48
{*procedure sub_005CDE48(?:?);
begin
 005CDE48    push        ebp
 005CDE49    mov         ebp,esp
 005CDE4B    add         esp,0FFFFFF30
 005CDE51    push        ebx
 005CDE52    push        esi
 005CDE53    push        edi
 005CDE54    mov         esi,edx
 005CDE56    mov         ebx,eax
 005CDE58    mov         eax,ebx
 005CDE5A    call        TStyleHook.GetHandle
 005CDE5F    test        eax,eax
>005CDE61    je          005CE1CD
 005CDE67    test        esi,esi
>005CDE69    je          005CE1CD
 005CDE6F    lea         edx,[ebp-30]
 005CDE72    mov         eax,ebx
 005CDE74    call        005CE5A0
 005CDE79    lea         eax,[ebp-30]
 005CDE7C    call        RectWidth
 005CDE81    test        eax,eax
>005CDE83    jle         005CE1CD
 005CDE89    lea         edx,[ebp-40]
 005CDE8C    mov         eax,ebx
 005CDE8E    call        005CE5A0
 005CDE93    lea         eax,[ebp-40]
 005CDE96    call        RectHeight
 005CDE9B    test        eax,eax
>005CDE9D    jle         005CE1CD
 005CDEA3    mov         dl,1
 005CDEA5    mov         eax,[004C1D10];TBitmap
 005CDEAA    call        TBitmap.Create;TBitmap.Create
 005CDEAF    mov         dword ptr [ebp-4],eax
 005CDEB2    xor         eax,eax
 005CDEB4    push        ebp
 005CDEB5    push        5CE1C6
 005CDEBA    push        dword ptr fs:[eax]
 005CDEBD    mov         dword ptr fs:[eax],esp
 005CDEC0    lea         edx,[ebp-50]
 005CDEC3    mov         eax,ebx
 005CDEC5    call        005CE5A0
 005CDECA    lea         eax,[ebp-50]
 005CDECD    call        RectWidth
 005CDED2    mov         edx,eax
 005CDED4    mov         eax,dword ptr [ebp-4]
 005CDED7    mov         ecx,dword ptr [eax]
 005CDED9    call        dword ptr [ecx+44];TBitmap.SetWidth
 005CDEDC    lea         edx,[ebp-60]
 005CDEDF    mov         eax,ebx
 005CDEE1    call        005CE5A0
 005CDEE6    lea         eax,[ebp-60]
 005CDEE9    call        RectHeight
 005CDEEE    mov         edx,eax
 005CDEF0    mov         eax,dword ptr [ebp-4]
 005CDEF3    mov         ecx,dword ptr [eax]
 005CDEF5    call        dword ptr [ecx+38];TBitmap.SetHeight
 005CDEF8    lea         edx,[ebp-0C0]
 005CDEFE    mov         eax,ebx
 005CDF00    call        005CE5A0
 005CDF05    mov         eax,dword ptr [ebp-0BC]
 005CDF0B    neg         eax
 005CDF0D    push        eax
 005CDF0E    lea         edx,[ebp-0D0]
 005CDF14    mov         eax,ebx
 005CDF16    call        005CE5A0
 005CDF1B    mov         eax,dword ptr [ebp-0D0]
 005CDF21    neg         eax
 005CDF23    push        eax
 005CDF24    mov         eax,dword ptr [ebp-4]
 005CDF27    call        TBitmap.GetCanvas
 005CDF2C    call        TCanvas.GetHandle
 005CDF31    pop         edx
 005CDF32    pop         ecx
 005CDF33    call        MoveWindowOrg
 005CDF38    call        StyleServices
 005CDF3D    mov         edx,dword ptr [eax]
 005CDF3F    call        dword ptr [edx+48];@AbstractError
 005CDF42    test        al,al
>005CDF44    je          005CE12A
 005CDF4A    lea         edx,[ebp-20]
 005CDF4D    mov         eax,ebx
 005CDF4F    call        005CE5A0
 005CDF54    lea         edx,[ebp-0C0]
 005CDF5A    mov         eax,ebx
 005CDF5C    call        005CE7A0
 005CDF61    mov         eax,dword ptr [ebp-0B4]
 005CDF67    mov         dword ptr [ebp-1C],eax
 005CDF6A    lea         edx,[ebp-0C0]
 005CDF70    mov         eax,ebx
 005CDF72    call        005CE560
 005CDF77    mov         eax,dword ptr [ebp-0BC]
 005CDF7D    mov         dword ptr [ebp-14],eax
 005CDF80    lea         eax,[ebp-20]
 005CDF83    call        RectHeight
 005CDF88    test        eax,eax
>005CDF8A    jle         005CDFCC
 005CDF8C    lea         eax,[ebp-20]
 005CDF8F    call        RectWidth
 005CDF94    test        eax,eax
>005CDF96    jle         005CDFCC
 005CDF98    call        StyleServices
 005CDF9D    lea         ecx,[ebp-10]
 005CDFA0    mov         dl,2D
 005CDFA2    mov         edi,dword ptr [eax]
 005CDFA4    call        dword ptr [edi+0C4];TCustomStyleServices.GetElementDetails
 005CDFAA    lea         eax,[ebp-20]
 005CDFAD    push        eax
 005CDFAE    push        0
 005CDFB0    mov         eax,dword ptr [ebp-4]
 005CDFB3    call        TBitmap.GetCanvas
 005CDFB8    call        TCanvas.GetHandle
 005CDFBD    push        eax
 005CDFBE    call        StyleServices
 005CDFC3    lea         ecx,[ebp-10]
 005CDFC6    pop         edx
 005CDFC7    call        TCustomStyleServices.DrawElement
 005CDFCC    lea         edx,[ebp-70]
 005CDFCF    mov         eax,ebx
 005CDFD1    call        005CE674
 005CDFD6    lea         eax,[ebp-70]
 005CDFD9    call        RectHeight
 005CDFDE    test        eax,eax
>005CDFE0    jle         005CE03E
 005CDFE2    lea         edx,[ebp-80]
 005CDFE5    mov         eax,ebx
 005CDFE7    call        005CE674
 005CDFEC    lea         eax,[ebp-80]
 005CDFEF    call        RectWidth
 005CDFF4    test        eax,eax
>005CDFF6    jle         005CE03E
 005CDFF8    call        StyleServices
 005CDFFD    movzx       edx,byte ptr [ebx+48];TScrollingStyleHook.FVertSliderState:TThemedScrollBar
 005CE001    lea         ecx,[ebp-10]
 005CE004    mov         edi,dword ptr [eax]
 005CE006    call        dword ptr [edi+0C4];TCustomStyleServices.GetElementDetails
 005CE00C    lea         edx,[ebp-0C0]
 005CE012    mov         eax,ebx
 005CE014    call        005CE674
 005CE019    lea         eax,[ebp-0C0]
 005CE01F    push        eax
 005CE020    push        0
 005CE022    mov         eax,dword ptr [ebp-4]
 005CE025    call        TBitmap.GetCanvas
 005CE02A    call        TCanvas.GetHandle
 005CE02F    push        eax
 005CE030    call        StyleServices
 005CE035    lea         ecx,[ebp-10]
 005CE038    pop         edx
 005CE039    call        TCustomStyleServices.DrawElement
 005CE03E    lea         edx,[ebp-90]
 005CE044    mov         eax,ebx
 005CE046    call        005CE674
 005CE04B    lea         eax,[ebp-90]
 005CE051    call        RectHeight
 005CE056    test        eax,eax
>005CE058    je          005CE070
 005CE05A    call        StyleServices
 005CE05F    movzx       edx,byte ptr [ebx+49];TScrollingStyleHook.FVertUpState:TThemedScrollBar
 005CE063    lea         ecx,[ebp-10]
 005CE066    mov         edi,dword ptr [eax]
 005CE068    call        dword ptr [edi+0C4];TCustomStyleServices.GetElementDetails
>005CE06E    jmp         005CE082
 005CE070    call        StyleServices
 005CE075    lea         ecx,[ebp-10]
 005CE078    mov         dl,5
 005CE07A    mov         edi,dword ptr [eax]
 005CE07C    call        dword ptr [edi+0C4];TCustomStyleServices.GetElementDetails
 005CE082    lea         edx,[ebp-0C0]
 005CE088    mov         eax,ebx
 005CE08A    call        005CE7A0
 005CE08F    lea         eax,[ebp-0C0]
 005CE095    push        eax
 005CE096    push        0
 005CE098    mov         eax,dword ptr [ebp-4]
 005CE09B    call        TBitmap.GetCanvas
 005CE0A0    call        TCanvas.GetHandle
 005CE0A5    push        eax
 005CE0A6    call        StyleServices
 005CE0AB    lea         ecx,[ebp-10]
 005CE0AE    pop         edx
 005CE0AF    call        TCustomStyleServices.DrawElement
 005CE0B4    lea         edx,[ebp-0A0]
 005CE0BA    mov         eax,ebx
 005CE0BC    call        005CE674
 005CE0C1    lea         eax,[ebp-0A0]
 005CE0C7    call        RectHeight
 005CE0CC    test        eax,eax
>005CE0CE    je          005CE0E6
 005CE0D0    call        StyleServices
 005CE0D5    movzx       edx,byte ptr [ebx+40];TScrollingStyleHook.FVertDownState:TThemedScrollBar
 005CE0D9    lea         ecx,[ebp-10]
 005CE0DC    mov         edi,dword ptr [eax]
 005CE0DE    call        dword ptr [edi+0C4];TCustomStyleServices.GetElementDetails
>005CE0E4    jmp         005CE0F8
 005CE0E6    call        StyleServices
 005CE0EB    lea         ecx,[ebp-10]
 005CE0EE    mov         dl,9
 005CE0F0    mov         edi,dword ptr [eax]
 005CE0F2    call        dword ptr [edi+0C4];TCustomStyleServices.GetElementDetails
 005CE0F8    lea         edx,[ebp-0C0]
 005CE0FE    mov         eax,ebx
 005CE100    call        005CE560
 005CE105    lea         eax,[ebp-0C0]
 005CE10B    push        eax
 005CE10C    push        0
 005CE10E    mov         eax,dword ptr [ebp-4]
 005CE111    call        TBitmap.GetCanvas
 005CE116    call        TCanvas.GetHandle
 005CE11B    push        eax
 005CE11C    call        StyleServices
 005CE121    lea         ecx,[ebp-10]
 005CE124    pop         edx
 005CE125    call        TCustomStyleServices.DrawElement
 005CE12A    lea         edx,[ebp-0C0]
 005CE130    mov         eax,ebx
 005CE132    call        005CE5A0
 005CE137    mov         eax,dword ptr [ebp-0BC]
 005CE13D    push        eax
 005CE13E    lea         edx,[ebp-0D0]
 005CE144    mov         eax,ebx
 005CE146    call        005CE5A0
 005CE14B    mov         eax,dword ptr [ebp-0D0]
 005CE151    push        eax
 005CE152    mov         eax,dword ptr [ebp-4]
 005CE155    call        TBitmap.GetCanvas
 005CE15A    call        TCanvas.GetHandle
 005CE15F    pop         edx
 005CE160    pop         ecx
 005CE161    call        MoveWindowOrg
 005CE166    lea         edx,[ebp-0B0]
 005CE16C    mov         eax,ebx
 005CE16E    call        005CE5A0
 005CE173    push        0CC0020
 005CE178    push        0
 005CE17A    push        0
 005CE17C    mov         eax,dword ptr [ebp-4]
 005CE17F    call        TBitmap.GetCanvas
 005CE184    call        TCanvas.GetHandle
 005CE189    push        eax
 005CE18A    mov         eax,dword ptr [ebp-4]
 005CE18D    mov         edx,dword ptr [eax]
 005CE18F    call        dword ptr [edx+24];TBitmap.GetHeight
 005CE192    push        eax
 005CE193    mov         eax,dword ptr [ebp-4]
 005CE196    mov         edx,dword ptr [eax]
 005CE198    call        dword ptr [edx+30];TBitmap.GetWidth
 005CE19B    push        eax
 005CE19C    mov         eax,dword ptr [ebp-0AC]
 005CE1A2    push        eax
 005CE1A3    mov         eax,dword ptr [ebp-0B0]
 005CE1A9    push        eax
 005CE1AA    push        esi
 005CE1AB    call        gdi32.BitBlt
 005CE1B0    xor         eax,eax
 005CE1B2    pop         edx
 005CE1B3    pop         ecx
 005CE1B4    pop         ecx
 005CE1B5    mov         dword ptr fs:[eax],edx
 005CE1B8    push        5CE1CD
 005CE1BD    mov         eax,dword ptr [ebp-4]
 005CE1C0    call        TObject.Free
 005CE1C5    ret
>005CE1C6    jmp         @HandleFinally
>005CE1CB    jmp         005CE1BD
 005CE1CD    pop         edi
 005CE1CE    pop         esi
 005CE1CF    pop         ebx
 005CE1D0    mov         esp,ebp
 005CE1D2    pop         ebp
 005CE1D3    ret
end;*}

//005CE1D4
{*procedure sub_005CE1D4(?:?);
begin
 005CE1D4    push        ebp
 005CE1D5    mov         ebp,esp
 005CE1D7    add         esp,0FFFFFF30
 005CE1DD    push        ebx
 005CE1DE    push        esi
 005CE1DF    push        edi
 005CE1E0    mov         esi,edx
 005CE1E2    mov         ebx,eax
 005CE1E4    mov         eax,ebx
 005CE1E6    call        TStyleHook.GetHandle
 005CE1EB    test        eax,eax
>005CE1ED    je          005CE559
 005CE1F3    test        esi,esi
>005CE1F5    je          005CE559
 005CE1FB    lea         edx,[ebp-30]
 005CE1FE    mov         eax,ebx
 005CE200    call        005CE818
 005CE205    lea         eax,[ebp-30]
 005CE208    call        RectHeight
 005CE20D    test        eax,eax
>005CE20F    jle         005CE559
 005CE215    lea         edx,[ebp-40]
 005CE218    mov         eax,ebx
 005CE21A    call        005CE818
 005CE21F    lea         eax,[ebp-40]
 005CE222    call        RectWidth
 005CE227    test        eax,eax
>005CE229    jle         005CE559
 005CE22F    mov         dl,1
 005CE231    mov         eax,[004C1D10];TBitmap
 005CE236    call        TBitmap.Create;TBitmap.Create
 005CE23B    mov         dword ptr [ebp-4],eax
 005CE23E    xor         eax,eax
 005CE240    push        ebp
 005CE241    push        5CE552
 005CE246    push        dword ptr fs:[eax]
 005CE249    mov         dword ptr fs:[eax],esp
 005CE24C    lea         edx,[ebp-50]
 005CE24F    mov         eax,ebx
 005CE251    call        005CE818
 005CE256    lea         eax,[ebp-50]
 005CE259    call        RectWidth
 005CE25E    mov         edx,eax
 005CE260    mov         eax,dword ptr [ebp-4]
 005CE263    mov         ecx,dword ptr [eax]
 005CE265    call        dword ptr [ecx+44];TBitmap.SetWidth
 005CE268    lea         edx,[ebp-60]
 005CE26B    mov         eax,ebx
 005CE26D    call        005CE818
 005CE272    lea         eax,[ebp-60]
 005CE275    call        RectHeight
 005CE27A    mov         edx,eax
 005CE27C    mov         eax,dword ptr [ebp-4]
 005CE27F    mov         ecx,dword ptr [eax]
 005CE281    call        dword ptr [ecx+38];TBitmap.SetHeight
 005CE284    lea         edx,[ebp-0C0]
 005CE28A    mov         eax,ebx
 005CE28C    call        005CE818
 005CE291    mov         eax,dword ptr [ebp-0BC]
 005CE297    neg         eax
 005CE299    push        eax
 005CE29A    lea         edx,[ebp-0D0]
 005CE2A0    mov         eax,ebx
 005CE2A2    call        005CE818
 005CE2A7    mov         eax,dword ptr [ebp-0D0]
 005CE2AD    neg         eax
 005CE2AF    push        eax
 005CE2B0    mov         eax,dword ptr [ebp-4]
 005CE2B3    call        TBitmap.GetCanvas
 005CE2B8    call        TCanvas.GetHandle
 005CE2BD    pop         edx
 005CE2BE    pop         ecx
 005CE2BF    call        MoveWindowOrg
 005CE2C4    call        StyleServices
 005CE2C9    mov         edx,dword ptr [eax]
 005CE2CB    call        dword ptr [edx+48];@AbstractError
 005CE2CE    test        al,al
>005CE2D0    je          005CE4B6
 005CE2D6    lea         edx,[ebp-20]
 005CE2D9    mov         eax,ebx
 005CE2DB    call        005CE818
 005CE2E0    lea         edx,[ebp-0C0]
 005CE2E6    mov         eax,ebx
 005CE2E8    call        005CEA18
 005CE2ED    mov         eax,dword ptr [ebp-0B8]
 005CE2F3    mov         dword ptr [ebp-20],eax
 005CE2F6    lea         edx,[ebp-0C0]
 005CE2FC    mov         eax,ebx
 005CE2FE    call        005CE7DC
 005CE303    mov         eax,dword ptr [ebp-0C0]
 005CE309    mov         dword ptr [ebp-18],eax
 005CE30C    lea         eax,[ebp-20]
 005CE30F    call        RectHeight
 005CE314    test        eax,eax
>005CE316    jle         005CE358
 005CE318    lea         eax,[ebp-20]
 005CE31B    call        RectWidth
 005CE320    test        eax,eax
>005CE322    jle         005CE358
 005CE324    call        StyleServices
 005CE329    lea         ecx,[ebp-10]
 005CE32C    mov         dl,23
 005CE32E    mov         edi,dword ptr [eax]
 005CE330    call        dword ptr [edi+0C4];TCustomStyleServices.GetElementDetails
 005CE336    lea         eax,[ebp-20]
 005CE339    push        eax
 005CE33A    push        0
 005CE33C    mov         eax,dword ptr [ebp-4]
 005CE33F    call        TBitmap.GetCanvas
 005CE344    call        TCanvas.GetHandle
 005CE349    push        eax
 005CE34A    call        StyleServices
 005CE34F    lea         ecx,[ebp-10]
 005CE352    pop         edx
 005CE353    call        TCustomStyleServices.DrawElement
 005CE358    lea         edx,[ebp-70]
 005CE35B    mov         eax,ebx
 005CE35D    call        005CE8EC
 005CE362    lea         eax,[ebp-70]
 005CE365    call        RectHeight
 005CE36A    test        eax,eax
>005CE36C    jle         005CE3CA
 005CE36E    lea         edx,[ebp-80]
 005CE371    mov         eax,ebx
 005CE373    call        005CE8EC
 005CE378    lea         eax,[ebp-80]
 005CE37B    call        RectWidth
 005CE380    test        eax,eax
>005CE382    jle         005CE3CA
 005CE384    call        StyleServices
 005CE389    movzx       edx,byte ptr [ebx+30];TScrollingStyleHook.FHorzSliderState:TThemedScrollBar
 005CE38D    lea         ecx,[ebp-10]
 005CE390    mov         edi,dword ptr [eax]
 005CE392    call        dword ptr [edi+0C4];TCustomStyleServices.GetElementDetails
 005CE398    lea         edx,[ebp-0C0]
 005CE39E    mov         eax,ebx
 005CE3A0    call        005CE8EC
 005CE3A5    lea         eax,[ebp-0C0]
 005CE3AB    push        eax
 005CE3AC    push        0
 005CE3AE    mov         eax,dword ptr [ebp-4]
 005CE3B1    call        TBitmap.GetCanvas
 005CE3B6    call        TCanvas.GetHandle
 005CE3BB    push        eax
 005CE3BC    call        StyleServices
 005CE3C1    lea         ecx,[ebp-10]
 005CE3C4    pop         edx
 005CE3C5    call        TCustomStyleServices.DrawElement
 005CE3CA    lea         edx,[ebp-90]
 005CE3D0    mov         eax,ebx
 005CE3D2    call        005CE8EC
 005CE3D7    lea         eax,[ebp-90]
 005CE3DD    call        RectHeight
 005CE3E2    test        eax,eax
>005CE3E4    jle         005CE3FC
 005CE3E6    call        StyleServices
 005CE3EB    movzx       edx,byte ptr [ebx+31];TScrollingStyleHook.FHorzUpState:TThemedScrollBar
 005CE3EF    lea         ecx,[ebp-10]
 005CE3F2    mov         edi,dword ptr [eax]
 005CE3F4    call        dword ptr [edi+0C4];TCustomStyleServices.GetElementDetails
>005CE3FA    jmp         005CE40E
 005CE3FC    call        StyleServices
 005CE401    lea         ecx,[ebp-10]
 005CE404    mov         dl,0D
 005CE406    mov         edi,dword ptr [eax]
 005CE408    call        dword ptr [edi+0C4];TCustomStyleServices.GetElementDetails
 005CE40E    lea         edx,[ebp-0C0]
 005CE414    mov         eax,ebx
 005CE416    call        005CEA18
 005CE41B    lea         eax,[ebp-0C0]
 005CE421    push        eax
 005CE422    push        0
 005CE424    mov         eax,dword ptr [ebp-4]
 005CE427    call        TBitmap.GetCanvas
 005CE42C    call        TCanvas.GetHandle
 005CE431    push        eax
 005CE432    call        StyleServices
 005CE437    lea         ecx,[ebp-10]
 005CE43A    pop         edx
 005CE43B    call        TCustomStyleServices.DrawElement
 005CE440    lea         edx,[ebp-0A0]
 005CE446    mov         eax,ebx
 005CE448    call        005CE8EC
 005CE44D    lea         eax,[ebp-0A0]
 005CE453    call        RectHeight
 005CE458    test        eax,eax
>005CE45A    jle         005CE472
 005CE45C    call        StyleServices
 005CE461    movzx       edx,byte ptr [ebx+28];TScrollingStyleHook.FHorzDownState:TThemedScrollBar
 005CE465    lea         ecx,[ebp-10]
 005CE468    mov         edi,dword ptr [eax]
 005CE46A    call        dword ptr [edi+0C4];TCustomStyleServices.GetElementDetails
>005CE470    jmp         005CE484
 005CE472    call        StyleServices
 005CE477    lea         ecx,[ebp-10]
 005CE47A    mov         dl,11
 005CE47C    mov         edi,dword ptr [eax]
 005CE47E    call        dword ptr [edi+0C4];TCustomStyleServices.GetElementDetails
 005CE484    lea         edx,[ebp-0C0]
 005CE48A    mov         eax,ebx
 005CE48C    call        005CE7DC
 005CE491    lea         eax,[ebp-0C0]
 005CE497    push        eax
 005CE498    push        0
 005CE49A    mov         eax,dword ptr [ebp-4]
 005CE49D    call        TBitmap.GetCanvas
 005CE4A2    call        TCanvas.GetHandle
 005CE4A7    push        eax
 005CE4A8    call        StyleServices
 005CE4AD    lea         ecx,[ebp-10]
 005CE4B0    pop         edx
 005CE4B1    call        TCustomStyleServices.DrawElement
 005CE4B6    lea         edx,[ebp-0C0]
 005CE4BC    mov         eax,ebx
 005CE4BE    call        005CE818
 005CE4C3    mov         eax,dword ptr [ebp-0BC]
 005CE4C9    push        eax
 005CE4CA    lea         edx,[ebp-0D0]
 005CE4D0    mov         eax,ebx
 005CE4D2    call        005CE818
 005CE4D7    mov         eax,dword ptr [ebp-0D0]
 005CE4DD    push        eax
 005CE4DE    mov         eax,dword ptr [ebp-4]
 005CE4E1    call        TBitmap.GetCanvas
 005CE4E6    call        TCanvas.GetHandle
 005CE4EB    pop         edx
 005CE4EC    pop         ecx
 005CE4ED    call        MoveWindowOrg
 005CE4F2    lea         edx,[ebp-0B0]
 005CE4F8    mov         eax,ebx
 005CE4FA    call        005CE818
 005CE4FF    push        0CC0020
 005CE504    push        0
 005CE506    push        0
 005CE508    mov         eax,dword ptr [ebp-4]
 005CE50B    call        TBitmap.GetCanvas
 005CE510    call        TCanvas.GetHandle
 005CE515    push        eax
 005CE516    mov         eax,dword ptr [ebp-4]
 005CE519    mov         edx,dword ptr [eax]
 005CE51B    call        dword ptr [edx+24];TBitmap.GetHeight
 005CE51E    push        eax
 005CE51F    mov         eax,dword ptr [ebp-4]
 005CE522    mov         edx,dword ptr [eax]
 005CE524    call        dword ptr [edx+30];TBitmap.GetWidth
 005CE527    push        eax
 005CE528    mov         eax,dword ptr [ebp-0AC]
 005CE52E    push        eax
 005CE52F    mov         eax,dword ptr [ebp-0B0]
 005CE535    push        eax
 005CE536    push        esi
 005CE537    call        gdi32.BitBlt
 005CE53C    xor         eax,eax
 005CE53E    pop         edx
 005CE53F    pop         ecx
 005CE540    pop         ecx
 005CE541    mov         dword ptr fs:[eax],edx
 005CE544    push        5CE559
 005CE549    mov         eax,dword ptr [ebp-4]
 005CE54C    call        TObject.Free
 005CE551    ret
>005CE552    jmp         @HandleFinally
>005CE557    jmp         005CE549
 005CE559    pop         edi
 005CE55A    pop         esi
 005CE55B    pop         ebx
 005CE55C    mov         esp,ebp
 005CE55E    pop         ebp
 005CE55F    ret
end;*}

//005CE560
{*procedure sub_005CE560(?:TScrollingStyleHook; ?:?);
begin
 005CE560    push        ebx
 005CE561    push        esi
 005CE562    mov         ebx,edx
 005CE564    mov         esi,eax
 005CE566    mov         edx,ebx
 005CE568    mov         eax,esi
 005CE56A    call        005CE5A0
 005CE56F    mov         eax,ebx
 005CE571    call        RectWidth
 005CE576    test        eax,eax
>005CE578    jle         005CE58C
 005CE57A    push        9
 005CE57C    call        user32.GetSystemMetrics
 005CE581    mov         edx,dword ptr [ebx+0C]
 005CE584    sub         edx,eax
 005CE586    mov         dword ptr [ebx+4],edx
 005CE589    pop         esi
 005CE58A    pop         ebx
 005CE58B    ret
 005CE58C    push        0
 005CE58E    push        ebx
 005CE58F    xor         ecx,ecx
 005CE591    xor         edx,edx
 005CE593    xor         eax,eax
 005CE595    call        Rect
 005CE59A    pop         esi
 005CE59B    pop         ebx
 005CE59C    ret
end;*}

//005CE5A0
{*procedure sub_005CE5A0(?:TScrollingStyleHook; ?:?);
begin
 005CE5A0    push        ebx
 005CE5A1    push        esi
 005CE5A2    add         esp,0FFFFFFBC
 005CE5A5    mov         esi,edx
 005CE5A7    mov         ebx,eax
 005CE5A9    mov         dword ptr [esp+8],3C
 005CE5B1    lea         eax,[esp+8]
 005CE5B5    push        eax
 005CE5B6    push        0FB
 005CE5B8    mov         eax,ebx
 005CE5BA    call        TStyleHook.GetHandle
 005CE5BF    push        eax
 005CE5C0    call        user32.GetScrollBarInfo
 005CE5C5    test        byte ptr [esp+2D],80
>005CE5CA    je          005CE5DF
 005CE5CC    push        0
 005CE5CE    push        esi
 005CE5CF    xor         ecx,ecx
 005CE5D1    xor         edx,edx
 005CE5D3    xor         eax,eax
 005CE5D5    call        Rect
>005CE5DA    jmp         005CE66C
 005CE5DF    mov         eax,dword ptr [esp+0C]
 005CE5E3    mov         dword ptr [esp],eax
 005CE5E6    mov         eax,dword ptr [esp+10]
 005CE5EA    mov         dword ptr [esp+4],eax
 005CE5EE    push        esp
 005CE5EF    mov         eax,ebx
 005CE5F1    call        TStyleHook.GetHandle
 005CE5F6    push        eax
 005CE5F7    call        user32.ScreenToClient
 005CE5FC    mov         eax,dword ptr [esp]
 005CE5FF    mov         dword ptr [esi],eax
 005CE601    mov         eax,dword ptr [esp+4]
 005CE605    mov         dword ptr [esi+4],eax
 005CE608    mov         eax,dword ptr [esp+14]
 005CE60C    mov         dword ptr [esp],eax
 005CE60F    mov         eax,dword ptr [esp+18]
 005CE613    mov         dword ptr [esp+4],eax
 005CE617    push        esp
 005CE618    mov         eax,ebx
 005CE61A    call        TStyleHook.GetHandle
 005CE61F    push        eax
 005CE620    call        user32.ScreenToClient
 005CE625    mov         eax,dword ptr [esp]
 005CE628    mov         dword ptr [esi+8],eax
 005CE62B    mov         eax,dword ptr [esp+4]
 005CE62F    mov         dword ptr [esi+0C],eax
 005CE632    mov         eax,ebx
 005CE634    mov         edx,dword ptr [eax]
 005CE636    call        dword ptr [edx+4];TScrollingStyleHook.sub_0058D43C
 005CE639    test        al,al
>005CE63B    je          005CE66C
 005CE63D    mov         eax,ebx
 005CE63F    mov         edx,dword ptr [eax]
 005CE641    call        dword ptr [edx+8];TScrollingStyleHook.sub_0058D47C
 005CE644    test        al,al
>005CE646    je          005CE65B
 005CE648    mov         eax,esi
 005CE64A    mov         ecx,2
 005CE64F    mov         edx,2
 005CE654    call        OffsetRect
>005CE659    jmp         005CE66C
 005CE65B    mov         eax,esi
 005CE65D    mov         ecx,1
 005CE662    mov         edx,1
 005CE667    call        OffsetRect
 005CE66C    add         esp,44
 005CE66F    pop         esi
 005CE670    pop         ebx
 005CE671    ret
end;*}

//005CE674
{*procedure sub_005CE674(?:TScrollingStyleHook; ?:?);
begin
 005CE674    push        ebx
 005CE675    push        esi
 005CE676    add         esp,0FFFFFFBC
 005CE679    mov         esi,edx
 005CE67B    mov         ebx,eax
 005CE67D    mov         dword ptr [esp+8],3C
 005CE685    lea         eax,[esp+8]
 005CE689    push        eax
 005CE68A    push        0FB
 005CE68C    mov         eax,ebx
 005CE68E    call        TStyleHook.GetHandle
 005CE693    push        eax
 005CE694    call        user32.GetScrollBarInfo
 005CE699    mov         eax,dword ptr [esp+2C]
 005CE69D    test        ah,80
>005CE6A0    jne         005CE6A6
 005CE6A2    test        al,1
>005CE6A4    je          005CE6B9
 005CE6A6    push        0
 005CE6A8    push        esi
 005CE6A9    xor         ecx,ecx
 005CE6AB    xor         edx,edx
 005CE6AD    xor         eax,eax
 005CE6AF    call        Rect
>005CE6B4    jmp         005CE754
 005CE6B9    mov         eax,dword ptr [esp+0C]
 005CE6BD    mov         dword ptr [esp],eax
 005CE6C0    mov         eax,dword ptr [esp+10]
 005CE6C4    mov         dword ptr [esp+4],eax
 005CE6C8    push        esp
 005CE6C9    mov         eax,ebx
 005CE6CB    call        TStyleHook.GetHandle
 005CE6D0    push        eax
 005CE6D1    call        user32.ScreenToClient
 005CE6D6    mov         eax,dword ptr [esp]
 005CE6D9    mov         dword ptr [esi],eax
 005CE6DB    mov         eax,dword ptr [esp+4]
 005CE6DF    mov         dword ptr [esi+4],eax
 005CE6E2    mov         eax,dword ptr [esp+14]
 005CE6E6    mov         dword ptr [esp],eax
 005CE6E9    mov         eax,dword ptr [esp+18]
 005CE6ED    mov         dword ptr [esp+4],eax
 005CE6F1    push        esp
 005CE6F2    mov         eax,ebx
 005CE6F4    call        TStyleHook.GetHandle
 005CE6F9    push        eax
 005CE6FA    call        user32.ScreenToClient
 005CE6FF    mov         eax,dword ptr [esp]
 005CE702    mov         dword ptr [esi+8],eax
 005CE705    mov         eax,dword ptr [esp+4]
 005CE709    mov         dword ptr [esi+0C],eax
 005CE70C    mov         eax,dword ptr [esp+20]
 005CE710    mov         dword ptr [esi+4],eax
 005CE713    mov         eax,dword ptr [esp+24]
 005CE717    mov         dword ptr [esi+0C],eax
 005CE71A    mov         eax,ebx
 005CE71C    mov         edx,dword ptr [eax]
 005CE71E    call        dword ptr [edx+4];TScrollingStyleHook.sub_0058D43C
 005CE721    test        al,al
>005CE723    je          005CE754
 005CE725    mov         eax,ebx
 005CE727    mov         edx,dword ptr [eax]
 005CE729    call        dword ptr [edx+8];TScrollingStyleHook.sub_0058D47C
 005CE72C    test        al,al
>005CE72E    je          005CE743
 005CE730    mov         eax,esi
 005CE732    mov         ecx,2
 005CE737    mov         edx,2
 005CE73C    call        OffsetRect
>005CE741    jmp         005CE754
 005CE743    mov         eax,esi
 005CE745    mov         ecx,1
 005CE74A    mov         edx,1
 005CE74F    call        OffsetRect
 005CE754    add         esp,44
 005CE757    pop         esi
 005CE758    pop         ebx
 005CE759    ret
end;*}

//005CE75C
{*procedure sub_005CE75C(?:TScrollingStyleHook; ?:?);
begin
 005CE75C    push        ebx
 005CE75D    push        esi
 005CE75E    mov         ebx,edx
 005CE760    mov         esi,eax
 005CE762    mov         edx,ebx
 005CE764    mov         eax,esi
 005CE766    call        005CE5A0
 005CE76B    mov         eax,ebx
 005CE76D    call        RectWidth
 005CE772    test        eax,eax
>005CE774    jle         005CE78D
 005CE776    push        9
 005CE778    call        user32.GetSystemMetrics
 005CE77D    add         dword ptr [ebx+4],eax
 005CE780    push        9
 005CE782    call        user32.GetSystemMetrics
 005CE787    sub         dword ptr [ebx+0C],eax
 005CE78A    pop         esi
 005CE78B    pop         ebx
 005CE78C    ret
 005CE78D    push        0
 005CE78F    push        ebx
 005CE790    xor         ecx,ecx
 005CE792    xor         edx,edx
 005CE794    xor         eax,eax
 005CE796    call        Rect
 005CE79B    pop         esi
 005CE79C    pop         ebx
 005CE79D    ret
end;*}

//005CE7A0
{*procedure sub_005CE7A0(?:TScrollingStyleHook; ?:?);
begin
 005CE7A0    push        ebx
 005CE7A1    push        esi
 005CE7A2    mov         ebx,edx
 005CE7A4    mov         esi,eax
 005CE7A6    mov         edx,ebx
 005CE7A8    mov         eax,esi
 005CE7AA    call        005CE5A0
 005CE7AF    mov         eax,ebx
 005CE7B1    call        RectWidth
 005CE7B6    test        eax,eax
>005CE7B8    jle         005CE7CA
 005CE7BA    push        9
 005CE7BC    call        user32.GetSystemMetrics
 005CE7C1    add         eax,dword ptr [ebx+4]
 005CE7C4    mov         dword ptr [ebx+0C],eax
 005CE7C7    pop         esi
 005CE7C8    pop         ebx
 005CE7C9    ret
 005CE7CA    push        0
 005CE7CC    push        ebx
 005CE7CD    xor         ecx,ecx
 005CE7CF    xor         edx,edx
 005CE7D1    xor         eax,eax
 005CE7D3    call        Rect
 005CE7D8    pop         esi
 005CE7D9    pop         ebx
 005CE7DA    ret
end;*}

//005CE7DC
{*procedure sub_005CE7DC(?:TScrollingStyleHook; ?:?);
begin
 005CE7DC    push        ebx
 005CE7DD    push        esi
 005CE7DE    mov         ebx,edx
 005CE7E0    mov         esi,eax
 005CE7E2    mov         edx,ebx
 005CE7E4    mov         eax,esi
 005CE7E6    call        005CE818
 005CE7EB    mov         eax,ebx
 005CE7ED    call        RectHeight
 005CE7F2    test        eax,eax
>005CE7F4    jle         005CE807
 005CE7F6    push        0A
 005CE7F8    call        user32.GetSystemMetrics
 005CE7FD    mov         edx,dword ptr [ebx+8]
 005CE800    sub         edx,eax
 005CE802    mov         dword ptr [ebx],edx
 005CE804    pop         esi
 005CE805    pop         ebx
 005CE806    ret
 005CE807    push        0
 005CE809    push        ebx
 005CE80A    xor         ecx,ecx
 005CE80C    xor         edx,edx
 005CE80E    xor         eax,eax
 005CE810    call        Rect
 005CE815    pop         esi
 005CE816    pop         ebx
 005CE817    ret
end;*}

//005CE818
{*procedure sub_005CE818(?:TScrollingStyleHook; ?:?);
begin
 005CE818    push        ebx
 005CE819    push        esi
 005CE81A    add         esp,0FFFFFFBC
 005CE81D    mov         esi,edx
 005CE81F    mov         ebx,eax
 005CE821    mov         dword ptr [esp+8],3C
 005CE829    lea         eax,[esp+8]
 005CE82D    push        eax
 005CE82E    push        0FA
 005CE830    mov         eax,ebx
 005CE832    call        TStyleHook.GetHandle
 005CE837    push        eax
 005CE838    call        user32.GetScrollBarInfo
 005CE83D    test        byte ptr [esp+2D],80
>005CE842    je          005CE857
 005CE844    push        0
 005CE846    push        esi
 005CE847    xor         ecx,ecx
 005CE849    xor         edx,edx
 005CE84B    xor         eax,eax
 005CE84D    call        Rect
>005CE852    jmp         005CE8E4
 005CE857    mov         eax,dword ptr [esp+0C]
 005CE85B    mov         dword ptr [esp],eax
 005CE85E    mov         eax,dword ptr [esp+10]
 005CE862    mov         dword ptr [esp+4],eax
 005CE866    push        esp
 005CE867    mov         eax,ebx
 005CE869    call        TStyleHook.GetHandle
 005CE86E    push        eax
 005CE86F    call        user32.ScreenToClient
 005CE874    mov         eax,dword ptr [esp]
 005CE877    mov         dword ptr [esi],eax
 005CE879    mov         eax,dword ptr [esp+4]
 005CE87D    mov         dword ptr [esi+4],eax
 005CE880    mov         eax,dword ptr [esp+14]
 005CE884    mov         dword ptr [esp],eax
 005CE887    mov         eax,dword ptr [esp+18]
 005CE88B    mov         dword ptr [esp+4],eax
 005CE88F    push        esp
 005CE890    mov         eax,ebx
 005CE892    call        TStyleHook.GetHandle
 005CE897    push        eax
 005CE898    call        user32.ScreenToClient
 005CE89D    mov         eax,dword ptr [esp]
 005CE8A0    mov         dword ptr [esi+8],eax
 005CE8A3    mov         eax,dword ptr [esp+4]
 005CE8A7    mov         dword ptr [esi+0C],eax
 005CE8AA    mov         eax,ebx
 005CE8AC    mov         edx,dword ptr [eax]
 005CE8AE    call        dword ptr [edx+4];TScrollingStyleHook.sub_0058D43C
 005CE8B1    test        al,al
>005CE8B3    je          005CE8E4
 005CE8B5    mov         eax,ebx
 005CE8B7    mov         edx,dword ptr [eax]
 005CE8B9    call        dword ptr [edx+8];TScrollingStyleHook.sub_0058D47C
 005CE8BC    test        al,al
>005CE8BE    je          005CE8D3
 005CE8C0    mov         eax,esi
 005CE8C2    mov         ecx,2
 005CE8C7    mov         edx,2
 005CE8CC    call        OffsetRect
>005CE8D1    jmp         005CE8E4
 005CE8D3    mov         eax,esi
 005CE8D5    mov         ecx,1
 005CE8DA    mov         edx,1
 005CE8DF    call        OffsetRect
 005CE8E4    add         esp,44
 005CE8E7    pop         esi
 005CE8E8    pop         ebx
 005CE8E9    ret
end;*}

//005CE8EC
{*procedure sub_005CE8EC(?:TScrollingStyleHook; ?:?);
begin
 005CE8EC    push        ebx
 005CE8ED    push        esi
 005CE8EE    add         esp,0FFFFFFBC
 005CE8F1    mov         esi,edx
 005CE8F3    mov         ebx,eax
 005CE8F5    mov         dword ptr [esp+8],3C
 005CE8FD    lea         eax,[esp+8]
 005CE901    push        eax
 005CE902    push        0FA
 005CE904    mov         eax,ebx
 005CE906    call        TStyleHook.GetHandle
 005CE90B    push        eax
 005CE90C    call        user32.GetScrollBarInfo
 005CE911    mov         eax,dword ptr [esp+2C]
 005CE915    test        ah,80
>005CE918    jne         005CE91E
 005CE91A    test        al,1
>005CE91C    je          005CE932
 005CE91E    push        0
 005CE920    push        0
 005CE922    mov         eax,esi
 005CE924    xor         ecx,ecx
 005CE926    xor         edx,edx
 005CE928    call        TRect.Create
>005CE92D    jmp         005CE9CC
 005CE932    mov         eax,dword ptr [esp+0C]
 005CE936    mov         dword ptr [esp],eax
 005CE939    mov         eax,dword ptr [esp+10]
 005CE93D    mov         dword ptr [esp+4],eax
 005CE941    push        esp
 005CE942    mov         eax,ebx
 005CE944    call        TStyleHook.GetHandle
 005CE949    push        eax
 005CE94A    call        user32.ScreenToClient
 005CE94F    mov         eax,dword ptr [esp]
 005CE952    mov         dword ptr [esi],eax
 005CE954    mov         eax,dword ptr [esp+4]
 005CE958    mov         dword ptr [esi+4],eax
 005CE95B    mov         eax,dword ptr [esp+14]
 005CE95F    mov         dword ptr [esp],eax
 005CE962    mov         eax,dword ptr [esp+18]
 005CE966    mov         dword ptr [esp+4],eax
 005CE96A    push        esp
 005CE96B    mov         eax,ebx
 005CE96D    call        TStyleHook.GetHandle
 005CE972    push        eax
 005CE973    call        user32.ScreenToClient
 005CE978    mov         eax,dword ptr [esp]
 005CE97B    mov         dword ptr [esi+8],eax
 005CE97E    mov         eax,dword ptr [esp+4]
 005CE982    mov         dword ptr [esi+0C],eax
 005CE985    mov         eax,dword ptr [esp+20]
 005CE989    mov         dword ptr [esi],eax
 005CE98B    mov         eax,dword ptr [esp+24]
 005CE98F    mov         dword ptr [esi+8],eax
 005CE992    mov         eax,ebx
 005CE994    mov         edx,dword ptr [eax]
 005CE996    call        dword ptr [edx+4];TScrollingStyleHook.sub_0058D43C
 005CE999    test        al,al
>005CE99B    je          005CE9CC
 005CE99D    mov         eax,ebx
 005CE99F    mov         edx,dword ptr [eax]
 005CE9A1    call        dword ptr [edx+8];TScrollingStyleHook.sub_0058D47C
 005CE9A4    test        al,al
>005CE9A6    je          005CE9BB
 005CE9A8    mov         eax,esi
 005CE9AA    mov         ecx,2
 005CE9AF    mov         edx,2
 005CE9B4    call        OffsetRect
>005CE9B9    jmp         005CE9CC
 005CE9BB    mov         eax,esi
 005CE9BD    mov         ecx,1
 005CE9C2    mov         edx,1
 005CE9C7    call        OffsetRect
 005CE9CC    add         esp,44
 005CE9CF    pop         esi
 005CE9D0    pop         ebx
 005CE9D1    ret
end;*}

//005CE9D4
{*procedure sub_005CE9D4(?:TScrollingStyleHook; ?:?);
begin
 005CE9D4    push        ebx
 005CE9D5    push        esi
 005CE9D6    mov         ebx,edx
 005CE9D8    mov         esi,eax
 005CE9DA    mov         edx,ebx
 005CE9DC    mov         eax,esi
 005CE9DE    call        005CE818
 005CE9E3    mov         eax,ebx
 005CE9E5    call        RectWidth
 005CE9EA    test        eax,eax
>005CE9EC    jle         005CEA04
 005CE9EE    push        0A
 005CE9F0    call        user32.GetSystemMetrics
 005CE9F5    add         dword ptr [ebx],eax
 005CE9F7    push        0A
 005CE9F9    call        user32.GetSystemMetrics
 005CE9FE    sub         dword ptr [ebx+8],eax
 005CEA01    pop         esi
 005CEA02    pop         ebx
 005CEA03    ret
 005CEA04    push        0
 005CEA06    push        ebx
 005CEA07    xor         ecx,ecx
 005CEA09    xor         edx,edx
 005CEA0B    xor         eax,eax
 005CEA0D    call        Rect
 005CEA12    pop         esi
 005CEA13    pop         ebx
 005CEA14    ret
end;*}

//005CEA18
{*procedure sub_005CEA18(?:TScrollingStyleHook; ?:?);
begin
 005CEA18    push        ebx
 005CEA19    push        esi
 005CEA1A    mov         ebx,edx
 005CEA1C    mov         esi,eax
 005CEA1E    mov         edx,ebx
 005CEA20    mov         eax,esi
 005CEA22    call        005CE818
 005CEA27    mov         eax,ebx
 005CEA29    call        RectHeight
 005CEA2E    test        eax,eax
>005CEA30    jle         005CEA41
 005CEA32    push        0A
 005CEA34    call        user32.GetSystemMetrics
 005CEA39    add         eax,dword ptr [ebx]
 005CEA3B    mov         dword ptr [ebx+8],eax
 005CEA3E    pop         esi
 005CEA3F    pop         ebx
 005CEA40    ret
 005CEA41    push        0
 005CEA43    push        ebx
 005CEA44    xor         ecx,ecx
 005CEA46    xor         edx,edx
 005CEA48    xor         eax,eax
 005CEA4A    call        Rect
 005CEA4F    pop         esi
 005CEA50    pop         ebx
 005CEA51    ret
end;*}

//005CEA54
procedure sub_005CEA54;
begin
{*
 005CEA54    push        ebx
 005CEA55    mov         ebx,eax
 005CEA57    call        StyleServices
 005CEA5C    mov         edx,dword ptr [eax]
 005CEA5E    call        dword ptr [edx+48];@AbstractError
 005CEA61    test        al,al
>005CEA63    je          005CEA77
 005CEA65    call        StyleServices
 005CEA6A    mov         cl,1
 005CEA6C    mov         edx,dword ptr [ebx+8];TScrollingStyleHook.FControl:TWinControl
 005CEA6F    mov         ebx,dword ptr [eax]
 005CEA71    call        dword ptr [ebx+114];TCustomStyleServices.PaintBorder
 005CEA77    pop         ebx
 005CEA78    ret
*}
end;

//005CEA7C
procedure sub_005CEA7C;
begin
{*
 005CEA7C    push        esi
 005CEA7D    push        edi
 005CEA7E    mov         esi,eax
 005CEA80    cmp         byte ptr [esi+4A],0;TScrollingStyleHook.FInitingScrollBars:Boolean
>005CEA84    jne         005CEAA8
 005CEA86    mov         edi,dword ptr [esi+44];TScrollingStyleHook.FVertScrollWnd:TScrollWindow
 005CEA89    test        edi,edi
>005CEA8B    je          005CEA97
 005CEA8D    mov         eax,edi
 005CEA8F    mov         edx,dword ptr [eax]
 005CEA91    call        dword ptr [edx+0AC]
 005CEA97    mov         edi,dword ptr [esi+2C];TScrollingStyleHook.FHorzScrollWnd:TScrollWindow
 005CEA9A    test        edi,edi
>005CEA9C    je          005CEAA8
 005CEA9E    mov         eax,edi
 005CEAA0    mov         edx,dword ptr [eax]
 005CEAA2    call        dword ptr [edx+0AC]
 005CEAA8    pop         edi
 005CEAA9    pop         esi
 005CEAAA    ret
*}
end;

//005CEAAC
procedure TScrollingStyleHook.WMHScroll;
begin
{*
 005CEAAC    push        ebx
 005CEAAD    mov         ebx,eax
 005CEAAF    mov         eax,ebx
 005CEAB1    call        TStyleHook.CallDefaultProc
 005CEAB6    mov         eax,ebx
 005CEAB8    mov         edx,dword ptr [eax]
 005CEABA    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CEABD    mov         byte ptr [ebx+14],1;TScrollingStyleHook.FHandled:Boolean
 005CEAC1    pop         ebx
 005CEAC2    ret
*}
end;

//005CEAC4
procedure TScrollingStyleHook.WMVScroll;
begin
{*
 005CEAC4    push        ebx
 005CEAC5    mov         ebx,eax
 005CEAC7    mov         eax,ebx
 005CEAC9    call        TStyleHook.CallDefaultProc
 005CEACE    mov         eax,ebx
 005CEAD0    mov         edx,dword ptr [eax]
 005CEAD2    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CEAD5    mov         byte ptr [ebx+14],1;TScrollingStyleHook.FHandled:Boolean
 005CEAD9    pop         ebx
 005CEADA    ret
*}
end;

//005CEADC
procedure TScrollingStyleHook.WMMouseWheel;
begin
{*
 005CEADC    push        ebx
 005CEADD    mov         ebx,eax
 005CEADF    mov         eax,ebx
 005CEAE1    call        TStyleHook.CallDefaultProc
 005CEAE6    mov         eax,ebx
 005CEAE8    mov         edx,dword ptr [eax]
 005CEAEA    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CEAED    mov         byte ptr [ebx+14],1;TScrollingStyleHook.FHandled:Boolean
 005CEAF1    pop         ebx
 005CEAF2    ret
*}
end;

//005CEAF4
{*procedure TScrollingStyleHook.sub_005CEAF4(?:?);
begin
 005CEAF4    push        ebx
 005CEAF5    push        esi
 005CEAF6    mov         esi,edx
 005CEAF8    mov         ebx,eax
 005CEAFA    cmp         byte ptr [ebx+49],4;TScrollingStyleHook.FVertUpState:TThemedScrollBar
>005CEAFE    jne         005CEB0B
 005CEB00    mov         byte ptr [ebx+49],2;TScrollingStyleHook.FVertUpState:TThemedScrollBar
 005CEB04    mov         eax,ebx
 005CEB06    mov         edx,dword ptr [eax]
 005CEB08    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CEB0B    cmp         byte ptr [ebx+40],8;TScrollingStyleHook.FVertDownState:TThemedScrollBar
>005CEB0F    jne         005CEB1C
 005CEB11    mov         byte ptr [ebx+40],6;TScrollingStyleHook.FVertDownState:TThemedScrollBar
 005CEB15    mov         eax,ebx
 005CEB17    mov         edx,dword ptr [eax]
 005CEB19    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CEB1C    cmp         byte ptr [ebx+31],0C;TScrollingStyleHook.FHorzUpState:TThemedScrollBar
>005CEB20    jne         005CEB2D
 005CEB22    mov         byte ptr [ebx+31],0A;TScrollingStyleHook.FHorzUpState:TThemedScrollBar
 005CEB26    mov         eax,ebx
 005CEB28    mov         edx,dword ptr [eax]
 005CEB2A    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CEB2D    cmp         byte ptr [ebx+28],10;TScrollingStyleHook.FHorzDownState:TThemedScrollBar
>005CEB31    jne         005CEB3E
 005CEB33    mov         byte ptr [ebx+28],0E;TScrollingStyleHook.FHorzDownState:TThemedScrollBar
 005CEB37    mov         eax,ebx
 005CEB39    mov         edx,dword ptr [eax]
 005CEB3B    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CEB3E    mov         edx,esi
 005CEB40    mov         eax,ebx
 005CEB42    call        TStyleHook.CallDefaultProc
 005CEB47    mov         byte ptr [ebx+14],1;TScrollingStyleHook.FHandled:Boolean
 005CEB4B    pop         esi
 005CEB4C    pop         ebx
 005CEB4D    ret
end;*}

//005CEB50
{*procedure TScrollingStyleHook.WMNCLButtonDown(?:?);
begin
 005CEB50    push        esi
 005CEB51    add         esp,0FFFFFF2C
 005CEB57    mov         esi,eax
 005CEB59    movsx       eax,word ptr [edx+8]
 005CEB5D    movsx       edx,word ptr [edx+0A]
 005CEB61    mov         dword ptr [esp+8],eax
 005CEB65    mov         dword ptr [esp+0C],edx
 005CEB69    mov         eax,dword ptr [esp+8]
 005CEB6D    mov         dword ptr [esp],eax
 005CEB70    mov         eax,dword ptr [esp+0C]
 005CEB74    mov         dword ptr [esp+4],eax
 005CEB78    push        esp
 005CEB79    mov         eax,esi
 005CEB7B    call        TStyleHook.GetHandle
 005CEB80    push        eax
 005CEB81    call        user32.ScreenToClient
 005CEB86    mov         eax,esi
 005CEB88    mov         edx,dword ptr [eax]
 005CEB8A    call        dword ptr [edx+4];TScrollingStyleHook.sub_0058D43C
 005CEB8D    test        al,al
>005CEB8F    je          005CEBAE
 005CEB91    mov         eax,esi
 005CEB93    mov         edx,dword ptr [eax]
 005CEB95    call        dword ptr [edx+8];TScrollingStyleHook.sub_0058D47C
 005CEB98    test        al,al
>005CEB9A    je          005CEBA7
 005CEB9C    add         dword ptr [esp],2
 005CEBA0    add         dword ptr [esp+4],2
>005CEBA5    jmp         005CEBAE
 005CEBA7    inc         dword ptr [esp]
 005CEBAA    inc         dword ptr [esp+4]
 005CEBAE    lea         edx,[esp+2C]
 005CEBB2    mov         eax,esi
 005CEBB4    call        005CE674
 005CEBB9    lea         eax,[esp+2C]
 005CEBBD    mov         edx,esp
 005CEBBF    call        TRect.Contains
 005CEBC4    test        al,al
>005CEBC6    je          005CEC3E
 005CEBC8    mov         byte ptr [esi+32],1;TScrollingStyleHook.FLeftButtonDown:Boolean
 005CEBCC    mov         dword ptr [esp+14],17
 005CEBD4    mov         dword ptr [esp+10],1C
 005CEBDC    lea         eax,[esp+10]
 005CEBE0    push        eax
 005CEBE1    push        1
 005CEBE3    mov         eax,esi
 005CEBE5    call        TStyleHook.GetHandle
 005CEBEA    push        eax
 005CEBEB    call        user32.GetScrollInfo
 005CEBF0    fild        dword ptr [esp+24]
 005CEBF4    fstp        dword ptr [esi+34];TScrollingStyleHook.FListPos:Single
 005CEBF7    wait
 005CEBF8    fild        dword ptr [esp+24]
 005CEBFC    fstp        dword ptr [esi+3C];TScrollingStyleHook.FScrollPos:Single
 005CEBFF    wait
 005CEC00    lea         edx,[esp+0CC]
 005CEC07    mov         eax,[007C4DA0];^gvar_007CA5D4
 005CEC0C    mov         eax,dword ptr [eax]
 005CEC0E    call        TMouse.GetCursorPos
 005CEC13    mov         eax,dword ptr [esp+0D0]
 005CEC1A    mov         dword ptr [esi+38],eax;TScrollingStyleHook.FPrevScrollPos:Integer
 005CEC1D    mov         byte ptr [esi+48],1C;TScrollingStyleHook.FVertSliderState:TThemedScrollBar
 005CEC21    mov         eax,esi
 005CEC23    mov         edx,dword ptr [eax]
 005CEC25    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CEC28    mov         eax,esi
 005CEC2A    call        TStyleHook.GetHandle
 005CEC2F    push        eax
 005CEC30    call        user32.SetCapture
 005CEC35    mov         byte ptr [esi+14],1;TScrollingStyleHook.FHandled:Boolean
>005CEC39    jmp         005CEDC5
 005CEC3E    lea         edx,[esp+3C]
 005CEC42    mov         eax,esi
 005CEC44    call        005CE8EC
 005CEC49    lea         eax,[esp+3C]
 005CEC4D    mov         edx,esp
 005CEC4F    call        TRect.Contains
 005CEC54    test        al,al
>005CEC56    je          005CECCE
 005CEC58    mov         byte ptr [esi+32],1;TScrollingStyleHook.FLeftButtonDown:Boolean
 005CEC5C    mov         dword ptr [esp+14],17
 005CEC64    mov         dword ptr [esp+10],1C
 005CEC6C    lea         eax,[esp+10]
 005CEC70    push        eax
 005CEC71    push        0
 005CEC73    mov         eax,esi
 005CEC75    call        TStyleHook.GetHandle
 005CEC7A    push        eax
 005CEC7B    call        user32.GetScrollInfo
 005CEC80    fild        dword ptr [esp+24]
 005CEC84    fstp        dword ptr [esi+34];TScrollingStyleHook.FListPos:Single
 005CEC87    wait
 005CEC88    fild        dword ptr [esp+24]
 005CEC8C    fstp        dword ptr [esi+3C];TScrollingStyleHook.FScrollPos:Single
 005CEC8F    wait
 005CEC90    lea         edx,[esp+0CC]
 005CEC97    mov         eax,[007C4DA0];^gvar_007CA5D4
 005CEC9C    mov         eax,dword ptr [eax]
 005CEC9E    call        TMouse.GetCursorPos
 005CECA3    mov         eax,dword ptr [esp+0CC]
 005CECAA    mov         dword ptr [esi+38],eax;TScrollingStyleHook.FPrevScrollPos:Integer
 005CECAD    mov         byte ptr [esi+30],18;TScrollingStyleHook.FHorzSliderState:TThemedScrollBar
 005CECB1    mov         eax,esi
 005CECB3    mov         edx,dword ptr [eax]
 005CECB5    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CECB8    mov         eax,esi
 005CECBA    call        TStyleHook.GetHandle
 005CECBF    push        eax
 005CECC0    call        user32.SetCapture
 005CECC5    mov         byte ptr [esi+14],1;TScrollingStyleHook.FHandled:Boolean
>005CECC9    jmp         005CEDC5
 005CECCE    lea         edx,[esp+4C]
 005CECD2    mov         eax,esi
 005CECD4    call        005CE560
 005CECD9    lea         eax,[esp+4C]
 005CECDD    mov         edx,esp
 005CECDF    call        TRect.Contains
 005CECE4    test        al,al
>005CECE6    je          005CED04
 005CECE8    lea         edx,[esp+5C]
 005CECEC    mov         eax,esi
 005CECEE    call        005CE674
 005CECF3    lea         eax,[esp+5C]
 005CECF7    call        RectHeight
 005CECFC    test        eax,eax
>005CECFE    jle         005CED04
 005CED00    mov         byte ptr [esi+40],8;TScrollingStyleHook.FVertDownState:TThemedScrollBar
 005CED04    lea         edx,[esp+6C]
 005CED08    mov         eax,esi
 005CED0A    call        005CE7A0
 005CED0F    lea         eax,[esp+6C]
 005CED13    mov         edx,esp
 005CED15    call        TRect.Contains
 005CED1A    test        al,al
>005CED1C    je          005CED3A
 005CED1E    lea         edx,[esp+7C]
 005CED22    mov         eax,esi
 005CED24    call        005CE674
 005CED29    lea         eax,[esp+7C]
 005CED2D    call        RectHeight
 005CED32    test        eax,eax
>005CED34    jle         005CED3A
 005CED36    mov         byte ptr [esi+49],4;TScrollingStyleHook.FVertUpState:TThemedScrollBar
 005CED3A    lea         edx,[esp+8C]
 005CED41    mov         eax,esi
 005CED43    call        005CE7DC
 005CED48    lea         eax,[esp+8C]
 005CED4F    mov         edx,esp
 005CED51    call        TRect.Contains
 005CED56    test        al,al
>005CED58    je          005CED7C
 005CED5A    lea         edx,[esp+9C]
 005CED61    mov         eax,esi
 005CED63    call        005CE8EC
 005CED68    lea         eax,[esp+9C]
 005CED6F    call        RectWidth
 005CED74    test        eax,eax
>005CED76    jle         005CED7C
 005CED78    mov         byte ptr [esi+28],10;TScrollingStyleHook.FHorzDownState:TThemedScrollBar
 005CED7C    lea         edx,[esp+0AC]
 005CED83    mov         eax,esi
 005CED85    call        005CEA18
 005CED8A    lea         eax,[esp+0AC]
 005CED91    mov         edx,esp
 005CED93    call        TRect.Contains
 005CED98    test        al,al
>005CED9A    je          005CEDBE
 005CED9C    lea         edx,[esp+0BC]
 005CEDA3    mov         eax,esi
 005CEDA5    call        005CE8EC
 005CEDAA    lea         eax,[esp+0BC]
 005CEDB1    call        RectWidth
 005CEDB6    test        eax,eax
>005CEDB8    jle         005CEDBE
 005CEDBA    mov         byte ptr [esi+31],0C;TScrollingStyleHook.FHorzUpState:TThemedScrollBar
 005CEDBE    mov         eax,esi
 005CEDC0    mov         edx,dword ptr [eax]
 005CEDC2    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CEDC5    add         esp,0D4
 005CEDCB    pop         esi
 005CEDCC    ret
end;*}

//005CEDD0
procedure TScrollingStyleHook.WMNCLButtonDblClk;
begin
{*
 005CEDD0    call        TScrollingStyleHook.WMNCLButtonDown
 005CEDD5    ret
*}
end;

//005CEDD8
{*procedure TScrollingStyleHook.WMNCLButtonUp(?:?);
begin
 005CEDD8    push        ebx
 005CEDD9    push        esi
 005CEDDA    add         esp,0FFFFFF50
 005CEDE0    mov         esi,edx
 005CEDE2    mov         ebx,eax
 005CEDE4    movsx       eax,word ptr [esi+8]
 005CEDE8    movsx       edx,word ptr [esi+0A]
 005CEDEC    mov         dword ptr [esp+8],eax
 005CEDF0    mov         dword ptr [esp+0C],edx
 005CEDF4    mov         eax,dword ptr [esp+8]
 005CEDF8    mov         dword ptr [esp],eax
 005CEDFB    mov         eax,dword ptr [esp+0C]
 005CEDFF    mov         dword ptr [esp+4],eax
 005CEE03    push        esp
 005CEE04    mov         eax,ebx
 005CEE06    call        TStyleHook.GetHandle
 005CEE0B    push        eax
 005CEE0C    call        user32.ScreenToClient
 005CEE11    mov         eax,ebx
 005CEE13    mov         edx,dword ptr [eax]
 005CEE15    call        dword ptr [edx+4];TScrollingStyleHook.sub_0058D43C
 005CEE18    test        al,al
>005CEE1A    je          005CEE39
 005CEE1C    mov         eax,ebx
 005CEE1E    mov         edx,dword ptr [eax]
 005CEE20    call        dword ptr [edx+8];TScrollingStyleHook.sub_0058D47C
 005CEE23    test        al,al
>005CEE25    je          005CEE32
 005CEE27    add         dword ptr [esp],2
 005CEE2B    add         dword ptr [esp+4],2
>005CEE30    jmp         005CEE39
 005CEE32    inc         dword ptr [esp]
 005CEE35    inc         dword ptr [esp+4]
 005CEE39    cmp         byte ptr [ebx+48],1C;TScrollingStyleHook.FVertSliderState:TThemedScrollBar
>005CEE3D    jne         005CEE57
 005CEE3F    mov         byte ptr [ebx+32],0;TScrollingStyleHook.FLeftButtonDown:Boolean
 005CEE43    mov         byte ptr [ebx+48],1A;TScrollingStyleHook.FVertSliderState:TThemedScrollBar
 005CEE47    mov         eax,ebx
 005CEE49    mov         edx,dword ptr [eax]
 005CEE4B    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CEE4E    mov         byte ptr [ebx+14],1;TScrollingStyleHook.FHandled:Boolean
>005CEE52    jmp         005CEFBB
 005CEE57    cmp         byte ptr [ebx+30],18;TScrollingStyleHook.FHorzSliderState:TThemedScrollBar
>005CEE5B    jne         005CEE75
 005CEE5D    mov         byte ptr [ebx+32],0;TScrollingStyleHook.FLeftButtonDown:Boolean
 005CEE61    mov         byte ptr [ebx+30],16;TScrollingStyleHook.FHorzSliderState:TThemedScrollBar
 005CEE65    mov         eax,ebx
 005CEE67    mov         edx,dword ptr [eax]
 005CEE69    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CEE6C    mov         byte ptr [ebx+14],1;TScrollingStyleHook.FHandled:Boolean
>005CEE70    jmp         005CEFBB
 005CEE75    lea         edx,[esp+10]
 005CEE79    mov         eax,ebx
 005CEE7B    call        005CE674
 005CEE80    lea         eax,[esp+10]
 005CEE84    call        RectHeight
 005CEE89    test        eax,eax
>005CEE8B    jle         005CEEB1
 005CEE8D    lea         edx,[esp+20]
 005CEE91    mov         eax,ebx
 005CEE93    call        005CE560
 005CEE98    lea         eax,[esp+20]
 005CEE9C    mov         edx,esp
 005CEE9E    call        TRect.Contains
 005CEEA3    test        al,al
>005CEEA5    je          005CEEAD
 005CEEA7    mov         byte ptr [ebx+40],7;TScrollingStyleHook.FVertDownState:TThemedScrollBar
>005CEEAB    jmp         005CEEB1
 005CEEAD    mov         byte ptr [ebx+40],6;TScrollingStyleHook.FVertDownState:TThemedScrollBar
 005CEEB1    lea         edx,[esp+30]
 005CEEB5    mov         eax,ebx
 005CEEB7    call        005CE674
 005CEEBC    lea         eax,[esp+30]
 005CEEC0    call        RectHeight
 005CEEC5    test        eax,eax
>005CEEC7    jle         005CEEED
 005CEEC9    lea         edx,[esp+40]
 005CEECD    mov         eax,ebx
 005CEECF    call        005CE7A0
 005CEED4    lea         eax,[esp+40]
 005CEED8    mov         edx,esp
 005CEEDA    call        TRect.Contains
 005CEEDF    test        al,al
>005CEEE1    je          005CEEE9
 005CEEE3    mov         byte ptr [ebx+49],3;TScrollingStyleHook.FVertUpState:TThemedScrollBar
>005CEEE7    jmp         005CEEED
 005CEEE9    mov         byte ptr [ebx+49],2;TScrollingStyleHook.FVertUpState:TThemedScrollBar
 005CEEED    lea         edx,[esp+50]
 005CEEF1    mov         eax,ebx
 005CEEF3    call        005CE8EC
 005CEEF8    lea         eax,[esp+50]
 005CEEFC    call        RectWidth
 005CEF01    test        eax,eax
>005CEF03    jle         005CEF29
 005CEF05    lea         edx,[esp+60]
 005CEF09    mov         eax,ebx
 005CEF0B    call        005CE7DC
 005CEF10    lea         eax,[esp+60]
 005CEF14    mov         edx,esp
 005CEF16    call        TRect.Contains
 005CEF1B    test        al,al
>005CEF1D    je          005CEF25
 005CEF1F    mov         byte ptr [ebx+28],0F;TScrollingStyleHook.FHorzDownState:TThemedScrollBar
>005CEF23    jmp         005CEF29
 005CEF25    mov         byte ptr [ebx+28],0E;TScrollingStyleHook.FHorzDownState:TThemedScrollBar
 005CEF29    lea         edx,[esp+70]
 005CEF2D    mov         eax,ebx
 005CEF2F    call        005CE8EC
 005CEF34    lea         eax,[esp+70]
 005CEF38    call        RectWidth
 005CEF3D    test        eax,eax
>005CEF3F    jle         005CEF6B
 005CEF41    lea         edx,[esp+80]
 005CEF48    mov         eax,ebx
 005CEF4A    call        005CEA18
 005CEF4F    lea         eax,[esp+80]
 005CEF56    mov         edx,esp
 005CEF58    call        TRect.Contains
 005CEF5D    test        al,al
>005CEF5F    je          005CEF67
 005CEF61    mov         byte ptr [ebx+31],0B;TScrollingStyleHook.FHorzUpState:TThemedScrollBar
>005CEF65    jmp         005CEF6B
 005CEF67    mov         byte ptr [ebx+31],0A;TScrollingStyleHook.FHorzUpState:TThemedScrollBar
 005CEF6B    mov         edx,esi
 005CEF6D    mov         eax,ebx
 005CEF6F    call        TStyleHook.CallDefaultProc
 005CEF74    lea         edx,[esp+90]
 005CEF7B    mov         eax,ebx
 005CEF7D    call        005CE8EC
 005CEF82    lea         eax,[esp+90]
 005CEF89    call        RectWidth
 005CEF8E    test        eax,eax
>005CEF90    jg          005CEFB0
 005CEF92    lea         edx,[esp+0A0]
 005CEF99    mov         eax,ebx
 005CEF9B    call        005CE674
 005CEFA0    lea         eax,[esp+0A0]
 005CEFA7    call        RectHeight
 005CEFAC    test        eax,eax
>005CEFAE    jle         005CEFB7
 005CEFB0    mov         eax,ebx
 005CEFB2    mov         edx,dword ptr [eax]
 005CEFB4    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CEFB7    mov         byte ptr [ebx+14],1;TScrollingStyleHook.FHandled:Boolean
 005CEFBB    add         esp,0B0
 005CEFC1    pop         esi
 005CEFC2    pop         ebx
 005CEFC3    ret
end;*}

//005CEFC4
{*procedure TScrollingStyleHook.WMNCMouseMove(?:?);
begin
 005CEFC4    push        ebx
 005CEFC5    push        esi
 005CEFC6    add         esp,0FFFFFED0
 005CEFCC    mov         ebx,edx
 005CEFCE    mov         esi,eax
 005CEFD0    mov         edx,ebx
 005CEFD2    mov         eax,esi
 005CEFD4    call        TMouseTrackControlStyleHook.WMNCMouseMove
 005CEFD9    movsx       eax,word ptr [ebx+8]
 005CEFDD    movsx       edx,word ptr [ebx+0A]
 005CEFE1    mov         dword ptr [esp+8],eax
 005CEFE5    mov         dword ptr [esp+0C],edx
 005CEFE9    mov         eax,dword ptr [esp+8]
 005CEFED    mov         dword ptr [esp],eax
 005CEFF0    mov         eax,dword ptr [esp+0C]
 005CEFF4    mov         dword ptr [esp+4],eax
 005CEFF8    push        esp
 005CEFF9    mov         eax,esi
 005CEFFB    call        TStyleHook.GetHandle
 005CF000    push        eax
 005CF001    call        user32.ScreenToClient
 005CF006    mov         eax,esi
 005CF008    mov         edx,dword ptr [eax]
 005CF00A    call        dword ptr [edx+4];TScrollingStyleHook.sub_0058D43C
 005CF00D    test        al,al
>005CF00F    je          005CF02E
 005CF011    mov         eax,esi
 005CF013    mov         edx,dword ptr [eax]
 005CF015    call        dword ptr [edx+8];TScrollingStyleHook.sub_0058D47C
 005CF018    test        al,al
>005CF01A    je          005CF027
 005CF01C    add         dword ptr [esp],2
 005CF020    add         dword ptr [esp+4],2
>005CF025    jmp         005CF02E
 005CF027    inc         dword ptr [esp]
 005CF02A    inc         dword ptr [esp+4]
 005CF02E    xor         ebx,ebx
 005CF030    lea         edx,[esp+10]
 005CF034    mov         eax,esi
 005CF036    call        005CE674
 005CF03B    lea         eax,[esp+10]
 005CF03F    call        RectHeight
 005CF044    test        eax,eax
>005CF046    jle         005CF096
 005CF048    lea         edx,[esp+20]
 005CF04C    mov         eax,esi
 005CF04E    call        005CE674
 005CF053    lea         eax,[esp+20]
 005CF057    mov         edx,esp
 005CF059    call        TRect.Contains
 005CF05E    test        al,al
>005CF060    je          005CF070
 005CF062    cmp         byte ptr [esi+48],1A;TScrollingStyleHook.FVertSliderState:TThemedScrollBar
>005CF066    jne         005CF070
 005CF068    mov         byte ptr [esi+48],1B;TScrollingStyleHook.FVertSliderState:TThemedScrollBar
 005CF06C    mov         bl,1
>005CF06E    jmp         005CF096
 005CF070    lea         edx,[esp+30]
 005CF074    mov         eax,esi
 005CF076    call        005CE674
 005CF07B    lea         eax,[esp+30]
 005CF07F    mov         edx,esp
 005CF081    call        TRect.Contains
 005CF086    test        al,al
>005CF088    jne         005CF096
 005CF08A    cmp         byte ptr [esi+48],1B;TScrollingStyleHook.FVertSliderState:TThemedScrollBar
>005CF08E    jne         005CF096
 005CF090    mov         byte ptr [esi+48],1A;TScrollingStyleHook.FVertSliderState:TThemedScrollBar
 005CF094    mov         bl,1
 005CF096    lea         edx,[esp+40]
 005CF09A    mov         eax,esi
 005CF09C    call        005CE8EC
 005CF0A1    lea         eax,[esp+40]
 005CF0A5    call        RectWidth
 005CF0AA    test        eax,eax
>005CF0AC    jle         005CF0FC
 005CF0AE    lea         edx,[esp+50]
 005CF0B2    mov         eax,esi
 005CF0B4    call        005CE8EC
 005CF0B9    lea         eax,[esp+50]
 005CF0BD    mov         edx,esp
 005CF0BF    call        TRect.Contains
 005CF0C4    test        al,al
>005CF0C6    je          005CF0D6
 005CF0C8    cmp         byte ptr [esi+30],16;TScrollingStyleHook.FHorzSliderState:TThemedScrollBar
>005CF0CC    jne         005CF0D6
 005CF0CE    mov         byte ptr [esi+30],17;TScrollingStyleHook.FHorzSliderState:TThemedScrollBar
 005CF0D2    mov         bl,1
>005CF0D4    jmp         005CF0FC
 005CF0D6    lea         edx,[esp+60]
 005CF0DA    mov         eax,esi
 005CF0DC    call        005CE8EC
 005CF0E1    lea         eax,[esp+60]
 005CF0E5    mov         edx,esp
 005CF0E7    call        TRect.Contains
 005CF0EC    test        al,al
>005CF0EE    jne         005CF0FC
 005CF0F0    cmp         byte ptr [esi+30],17;TScrollingStyleHook.FHorzSliderState:TThemedScrollBar
>005CF0F4    jne         005CF0FC
 005CF0F6    mov         byte ptr [esi+30],16;TScrollingStyleHook.FHorzSliderState:TThemedScrollBar
 005CF0FA    mov         bl,1
 005CF0FC    lea         edx,[esp+70]
 005CF100    mov         eax,esi
 005CF102    call        005CE674
 005CF107    lea         eax,[esp+70]
 005CF10B    call        RectHeight
 005CF110    test        eax,eax
>005CF112    jle         005CF16E
 005CF114    lea         edx,[esp+80]
 005CF11B    mov         eax,esi
 005CF11D    call        005CE560
 005CF122    lea         eax,[esp+80]
 005CF129    mov         edx,esp
 005CF12B    call        TRect.Contains
 005CF130    test        al,al
>005CF132    je          005CF142
 005CF134    cmp         byte ptr [esi+40],6;TScrollingStyleHook.FVertDownState:TThemedScrollBar
>005CF138    jne         005CF142
 005CF13A    mov         byte ptr [esi+40],7;TScrollingStyleHook.FVertDownState:TThemedScrollBar
 005CF13E    mov         bl,1
>005CF140    jmp         005CF16E
 005CF142    lea         edx,[esp+90]
 005CF149    mov         eax,esi
 005CF14B    call        005CE560
 005CF150    lea         eax,[esp+90]
 005CF157    mov         edx,esp
 005CF159    call        TRect.Contains
 005CF15E    test        al,al
>005CF160    jne         005CF16E
 005CF162    cmp         byte ptr [esi+40],7;TScrollingStyleHook.FVertDownState:TThemedScrollBar
>005CF166    jne         005CF16E
 005CF168    mov         byte ptr [esi+40],6;TScrollingStyleHook.FVertDownState:TThemedScrollBar
 005CF16C    mov         bl,1
 005CF16E    lea         edx,[esp+0A0]
 005CF175    mov         eax,esi
 005CF177    call        005CE674
 005CF17C    lea         eax,[esp+0A0]
 005CF183    call        RectHeight
 005CF188    test        eax,eax
>005CF18A    jle         005CF1E6
 005CF18C    lea         edx,[esp+0B0]
 005CF193    mov         eax,esi
 005CF195    call        005CE7A0
 005CF19A    lea         eax,[esp+0B0]
 005CF1A1    mov         edx,esp
 005CF1A3    call        TRect.Contains
 005CF1A8    test        al,al
>005CF1AA    je          005CF1BA
 005CF1AC    cmp         byte ptr [esi+49],2;TScrollingStyleHook.FVertUpState:TThemedScrollBar
>005CF1B0    jne         005CF1BA
 005CF1B2    mov         byte ptr [esi+49],3;TScrollingStyleHook.FVertUpState:TThemedScrollBar
 005CF1B6    mov         bl,1
>005CF1B8    jmp         005CF1E6
 005CF1BA    lea         edx,[esp+0C0]
 005CF1C1    mov         eax,esi
 005CF1C3    call        005CE7A0
 005CF1C8    lea         eax,[esp+0C0]
 005CF1CF    mov         edx,esp
 005CF1D1    call        TRect.Contains
 005CF1D6    test        al,al
>005CF1D8    jne         005CF1E6
 005CF1DA    cmp         byte ptr [esi+49],3;TScrollingStyleHook.FVertUpState:TThemedScrollBar
>005CF1DE    jne         005CF1E6
 005CF1E0    mov         byte ptr [esi+49],2;TScrollingStyleHook.FVertUpState:TThemedScrollBar
 005CF1E4    mov         bl,1
 005CF1E6    lea         edx,[esp+0D0]
 005CF1ED    mov         eax,esi
 005CF1EF    call        005CE8EC
 005CF1F4    lea         eax,[esp+0D0]
 005CF1FB    call        RectWidth
 005CF200    test        eax,eax
>005CF202    jle         005CF25E
 005CF204    lea         edx,[esp+0E0]
 005CF20B    mov         eax,esi
 005CF20D    call        005CE7DC
 005CF212    lea         eax,[esp+0E0]
 005CF219    mov         edx,esp
 005CF21B    call        TRect.Contains
 005CF220    test        al,al
>005CF222    je          005CF232
 005CF224    cmp         byte ptr [esi+28],0E;TScrollingStyleHook.FHorzDownState:TThemedScrollBar
>005CF228    jne         005CF232
 005CF22A    mov         byte ptr [esi+28],0F;TScrollingStyleHook.FHorzDownState:TThemedScrollBar
 005CF22E    mov         bl,1
>005CF230    jmp         005CF25E
 005CF232    lea         edx,[esp+0F0]
 005CF239    mov         eax,esi
 005CF23B    call        005CE7DC
 005CF240    lea         eax,[esp+0F0]
 005CF247    mov         edx,esp
 005CF249    call        TRect.Contains
 005CF24E    test        al,al
>005CF250    jne         005CF25E
 005CF252    cmp         byte ptr [esi+28],0F;TScrollingStyleHook.FHorzDownState:TThemedScrollBar
>005CF256    jne         005CF25E
 005CF258    mov         byte ptr [esi+28],0E;TScrollingStyleHook.FHorzDownState:TThemedScrollBar
 005CF25C    mov         bl,1
 005CF25E    lea         edx,[esp+100]
 005CF265    mov         eax,esi
 005CF267    call        005CE8EC
 005CF26C    lea         eax,[esp+100]
 005CF273    call        RectWidth
 005CF278    test        eax,eax
>005CF27A    jle         005CF2D6
 005CF27C    lea         edx,[esp+110]
 005CF283    mov         eax,esi
 005CF285    call        005CEA18
 005CF28A    lea         eax,[esp+110]
 005CF291    mov         edx,esp
 005CF293    call        TRect.Contains
 005CF298    test        al,al
>005CF29A    je          005CF2AA
 005CF29C    cmp         byte ptr [esi+31],0A;TScrollingStyleHook.FHorzUpState:TThemedScrollBar
>005CF2A0    jne         005CF2AA
 005CF2A2    mov         byte ptr [esi+31],0B;TScrollingStyleHook.FHorzUpState:TThemedScrollBar
 005CF2A6    mov         bl,1
>005CF2A8    jmp         005CF2D6
 005CF2AA    lea         edx,[esp+120]
 005CF2B1    mov         eax,esi
 005CF2B3    call        005CEA18
 005CF2B8    lea         eax,[esp+120]
 005CF2BF    mov         edx,esp
 005CF2C1    call        TRect.Contains
 005CF2C6    test        al,al
>005CF2C8    jne         005CF2D6
 005CF2CA    cmp         byte ptr [esi+31],0B;TScrollingStyleHook.FHorzUpState:TThemedScrollBar
>005CF2CE    jne         005CF2D6
 005CF2D0    mov         byte ptr [esi+31],0A;TScrollingStyleHook.FHorzUpState:TThemedScrollBar
 005CF2D4    mov         bl,1
 005CF2D6    test        bl,bl
>005CF2D8    je          005CF2E1
 005CF2DA    mov         eax,esi
 005CF2DC    mov         edx,dword ptr [eax]
 005CF2DE    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CF2E1    add         esp,130
 005CF2E7    pop         esi
 005CF2E8    pop         ebx
 005CF2E9    ret
end;*}

//005CF2EC
procedure TScrollingStyleHook.WMLButtonUp;
begin
{*
 005CF2EC    push        ebx
 005CF2ED    push        esi
 005CF2EE    add         esp,0FFFFFFF0
 005CF2F1    mov         ebx,eax
 005CF2F3    cmp         byte ptr [ebx+48],1C;TScrollingStyleHook.FVertSliderState:TThemedScrollBar
>005CF2F7    jne         005CF36B
 005CF2F9    mov         eax,ebx
 005CF2FB    call        TStyleHook.GetHandle
 005CF300    mov         esi,eax
 005CF302    fld         dword ptr [ebx+3C];TScrollingStyleHook.FScrollPos:Single
 005CF305    call        @ROUND
 005CF30A    mov         word ptr [esp],4
 005CF310    mov         word ptr [esp+2],ax
 005CF315    push        0
 005CF317    mov         eax,dword ptr [esp+4]
 005CF31B    push        eax
 005CF31C    push        115
 005CF321    push        esi
 005CF322    call        user32.PostMessageW
 005CF327    mov         byte ptr [ebx+32],0;TScrollingStyleHook.FLeftButtonDown:Boolean
 005CF32B    mov         byte ptr [ebx+48],1A;TScrollingStyleHook.FVertSliderState:TThemedScrollBar
 005CF32F    mov         eax,ebx
 005CF331    mov         edx,dword ptr [eax]
 005CF333    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CF336    mov         byte ptr [ebx+14],1;TScrollingStyleHook.FHandled:Boolean
 005CF33A    call        user32.ReleaseCapture
 005CF33F    mov         eax,ebx
 005CF341    call        TStyleHook.GetHandle
 005CF346    mov         word ptr [esp+4],8
 005CF34D    mov         word ptr [esp+6],0
 005CF354    push        0
 005CF356    mov         edx,dword ptr [esp+8]
 005CF35A    push        edx
 005CF35B    push        115
 005CF360    push        eax
 005CF361    call        user32.PostMessageW
>005CF366    jmp         005CF414
 005CF36B    cmp         byte ptr [ebx+30],18;TScrollingStyleHook.FHorzSliderState:TThemedScrollBar
>005CF36F    jne         005CF3E1
 005CF371    mov         eax,ebx
 005CF373    call        TStyleHook.GetHandle
 005CF378    mov         esi,eax
 005CF37A    fld         dword ptr [ebx+3C];TScrollingStyleHook.FScrollPos:Single
 005CF37D    call        @ROUND
 005CF382    mov         word ptr [esp+8],4
 005CF389    mov         word ptr [esp+0A],ax
 005CF38E    push        0
 005CF390    mov         eax,dword ptr [esp+0C]
 005CF394    push        eax
 005CF395    push        114
 005CF39A    push        esi
 005CF39B    call        user32.PostMessageW
 005CF3A0    mov         byte ptr [ebx+32],0;TScrollingStyleHook.FLeftButtonDown:Boolean
 005CF3A4    mov         byte ptr [ebx+30],16;TScrollingStyleHook.FHorzSliderState:TThemedScrollBar
 005CF3A8    mov         eax,ebx
 005CF3AA    mov         edx,dword ptr [eax]
 005CF3AC    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CF3AF    mov         byte ptr [ebx+14],1;TScrollingStyleHook.FHandled:Boolean
 005CF3B3    call        user32.ReleaseCapture
 005CF3B8    mov         eax,ebx
 005CF3BA    call        TStyleHook.GetHandle
 005CF3BF    mov         word ptr [esp+0C],8
 005CF3C6    mov         word ptr [esp+0E],0
 005CF3CD    push        0
 005CF3CF    mov         edx,dword ptr [esp+10]
 005CF3D3    push        edx
 005CF3D4    push        114
 005CF3D9    push        eax
 005CF3DA    call        user32.PostMessageW
>005CF3DF    jmp         005CF414
 005CF3E1    cmp         byte ptr [ebx+49],4;TScrollingStyleHook.FVertUpState:TThemedScrollBar
>005CF3E5    jne         005CF3EB
 005CF3E7    mov         byte ptr [ebx+49],2;TScrollingStyleHook.FVertUpState:TThemedScrollBar
 005CF3EB    cmp         byte ptr [ebx+40],8;TScrollingStyleHook.FVertDownState:TThemedScrollBar
>005CF3EF    jne         005CF3F5
 005CF3F1    mov         byte ptr [ebx+40],6;TScrollingStyleHook.FVertDownState:TThemedScrollBar
 005CF3F5    cmp         byte ptr [ebx+31],0C;TScrollingStyleHook.FHorzUpState:TThemedScrollBar
>005CF3F9    jne         005CF3FF
 005CF3FB    mov         byte ptr [ebx+31],0A;TScrollingStyleHook.FHorzUpState:TThemedScrollBar
 005CF3FF    cmp         byte ptr [ebx+28],10;TScrollingStyleHook.FHorzDownState:TThemedScrollBar
>005CF403    jne         005CF409
 005CF405    mov         byte ptr [ebx+28],0E;TScrollingStyleHook.FHorzDownState:TThemedScrollBar
 005CF409    mov         byte ptr [ebx+32],0;TScrollingStyleHook.FLeftButtonDown:Boolean
 005CF40D    mov         eax,ebx
 005CF40F    mov         edx,dword ptr [eax]
 005CF411    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CF414    add         esp,10
 005CF417    pop         esi
 005CF418    pop         ebx
 005CF419    ret
*}
end;

//005CF41C
{*procedure TScrollingStyleHook.WMMouseMove(?:?);
begin
 005CF41C    push        ebx
 005CF41D    push        esi
 005CF41E    push        edi
 005CF41F    push        ebp
 005CF420    add         esp,0FFFFFFA0
 005CF423    mov         esi,edx
 005CF425    mov         ebx,eax
 005CF427    lea         edi,[esp+8]
 005CF42B    mov         edx,esi
 005CF42D    mov         eax,ebx
 005CF42F    call        TMouseTrackControlStyleHook.WMMouseMove
 005CF434    cmp         byte ptr [ebx+48],1C;TScrollingStyleHook.FVertSliderState:TThemedScrollBar
>005CF438    jne         005CF5B2
 005CF43E    mov         dword ptr [edi+4],17
 005CF445    mov         dword ptr [edi],1C
 005CF44B    push        edi
 005CF44C    push        1
 005CF44E    mov         eax,ebx
 005CF450    call        TStyleHook.GetHandle
 005CF455    push        eax
 005CF456    call        user32.GetScrollInfo
 005CF45B    fld         dword ptr [ebx+3C];TScrollingStyleHook.FScrollPos:Single
 005CF45E    call        @ROUND
 005CF463    push        edx
 005CF464    push        eax
 005CF465    mov         esi,dword ptr [edi+14]
 005CF468    mov         eax,esi
 005CF46A    cdq
 005CF46B    cmp         edx,dword ptr [esp+4]
>005CF46F    jne         005CF474
 005CF471    cmp         eax,dword ptr [esp]
 005CF474    pop         edx
 005CF475    pop         eax
>005CF476    je          005CF484
 005CF478    mov         dword ptr [esp+44],esi
 005CF47C    fild        dword ptr [esp+44]
 005CF480    fstp        dword ptr [ebx+3C];TScrollingStyleHook.FScrollPos:Single
 005CF483    wait
 005CF484    lea         edx,[esp+48]
 005CF488    mov         eax,[007C4DA0];^gvar_007CA5D4
 005CF48D    mov         eax,dword ptr [eax]
 005CF48F    call        TMouse.GetCursorPos
 005CF494    mov         eax,dword ptr [esp+4C]
 005CF498    sub         eax,dword ptr [ebx+38]
 005CF49B    mov         dword ptr [esp+44],eax
 005CF49F    fild        dword ptr [esp+44]
 005CF4A3    fstp        tbyte ptr [esp+50]
 005CF4A7    wait
 005CF4A8    lea         edx,[esp+24]
 005CF4AC    mov         eax,ebx
 005CF4AE    call        005CE75C
 005CF4B3    lea         eax,[esp+24]
 005CF4B7    call        RectHeight
 005CF4BC    mov         dword ptr [esp+5C],eax
 005CF4C0    fild        dword ptr [esp+5C]
 005CF4C4    fld         tbyte ptr [esp+50]
 005CF4C8    fdivrp      st(1),st
 005CF4CA    mov         eax,dword ptr [edi+0C]
 005CF4CD    sub         eax,dword ptr [edi+8]
 005CF4D0    mov         dword ptr [esp+44],eax
 005CF4D4    fild        dword ptr [esp+44]
 005CF4D8    fmulp       st(1),st
 005CF4DA    fadd        dword ptr [ebx+3C];TScrollingStyleHook.FScrollPos:Single
 005CF4DD    fstp        dword ptr [ebx+3C];TScrollingStyleHook.FScrollPos:Single
 005CF4E0    wait
 005CF4E1    fild        dword ptr [edi+8]
 005CF4E4    fcomp       dword ptr [ebx+3C];TScrollingStyleHook.FScrollPos:Single
 005CF4E7    wait
 005CF4E8    fnstsw      al
 005CF4EA    sahf
>005CF4EB    jbe         005CF4F4
 005CF4ED    fild        dword ptr [edi+8]
 005CF4F0    fstp        dword ptr [ebx+3C];TScrollingStyleHook.FScrollPos:Single
 005CF4F3    wait
 005CF4F4    fild        dword ptr [edi+0C]
 005CF4F7    fcomp       dword ptr [ebx+3C];TScrollingStyleHook.FScrollPos:Single
 005CF4FA    wait
 005CF4FB    fnstsw      al
 005CF4FD    sahf
>005CF4FE    jae         005CF507
 005CF500    fild        dword ptr [edi+0C]
 005CF503    fstp        dword ptr [ebx+3C];TScrollingStyleHook.FScrollPos:Single
 005CF506    wait
 005CF507    mov         esi,dword ptr [edi+10]
 005CF50A    test        esi,esi
>005CF50C    je          005CF540
 005CF50E    fld         dword ptr [ebx+3C];TScrollingStyleHook.FScrollPos:Single
 005CF511    call        @ROUND
 005CF516    push        edx
 005CF517    push        eax
 005CF518    mov         ebp,dword ptr [edi+0C]
 005CF51B    sub         ebp,esi
 005CF51D    inc         ebp
 005CF51E    mov         eax,ebp
 005CF520    cdq
 005CF521    cmp         edx,dword ptr [esp+4]
>005CF525    jne         005CF530
 005CF527    cmp         eax,dword ptr [esp]
 005CF52A    pop         edx
 005CF52B    pop         eax
>005CF52C    jae         005CF540
>005CF52E    jmp         005CF534
 005CF530    pop         edx
 005CF531    pop         eax
>005CF532    jge         005CF540
 005CF534    mov         dword ptr [esp+44],ebp
 005CF538    fild        dword ptr [esp+44]
 005CF53C    fstp        dword ptr [ebx+3C];TScrollingStyleHook.FScrollPos:Single
 005CF53F    wait
 005CF540    lea         edx,[esp+48]
 005CF544    mov         eax,[007C4DA0];^gvar_007CA5D4
 005CF549    mov         eax,dword ptr [eax]
 005CF54B    call        TMouse.GetCursorPos
 005CF550    mov         eax,dword ptr [esp+4C]
 005CF554    mov         dword ptr [ebx+38],eax;TScrollingStyleHook.FPrevScrollPos:Integer
 005CF557    fld         dword ptr [ebx+3C];TScrollingStyleHook.FScrollPos:Single
 005CF55A    call        @ROUND
 005CF55F    mov         dword ptr [edi+14],eax
 005CF562    push        0
 005CF564    push        edi
 005CF565    push        1
 005CF567    mov         eax,ebx
 005CF569    call        TStyleHook.GetHandle
 005CF56E    push        eax
 005CF56F    call        user32.SetScrollInfo
 005CF574    mov         eax,ebx
 005CF576    call        TStyleHook.GetHandle
 005CF57B    mov         esi,eax
 005CF57D    fld         dword ptr [ebx+3C];TScrollingStyleHook.FScrollPos:Single
 005CF580    call        @ROUND
 005CF585    mov         word ptr [esp],5
 005CF58B    mov         word ptr [esp+2],ax
 005CF590    push        0
 005CF592    mov         eax,dword ptr [esp+4]
 005CF596    push        eax
 005CF597    push        115
 005CF59C    push        esi
 005CF59D    call        user32.PostMessageW
 005CF5A2    mov         eax,ebx
 005CF5A4    mov         edx,dword ptr [eax]
 005CF5A6    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CF5A9    mov         byte ptr [ebx+14],1;TScrollingStyleHook.FHandled:Boolean
>005CF5AD    jmp         005CF7D5
 005CF5B2    cmp         byte ptr [ebx+30],18;TScrollingStyleHook.FHorzSliderState:TThemedScrollBar
>005CF5B6    jne         005CF731
 005CF5BC    mov         dword ptr [edi+4],17
 005CF5C3    mov         dword ptr [edi],1C
 005CF5C9    push        edi
 005CF5CA    push        0
 005CF5CC    mov         eax,ebx
 005CF5CE    call        TStyleHook.GetHandle
 005CF5D3    push        eax
 005CF5D4    call        user32.GetScrollInfo
 005CF5D9    fld         dword ptr [ebx+3C];TScrollingStyleHook.FScrollPos:Single
 005CF5DC    call        @ROUND
 005CF5E1    push        edx
 005CF5E2    push        eax
 005CF5E3    mov         esi,dword ptr [edi+14]
 005CF5E6    mov         eax,esi
 005CF5E8    cdq
 005CF5E9    cmp         edx,dword ptr [esp+4]
>005CF5ED    jne         005CF5F2
 005CF5EF    cmp         eax,dword ptr [esp]
 005CF5F2    pop         edx
 005CF5F3    pop         eax
>005CF5F4    je          005CF602
 005CF5F6    mov         dword ptr [esp+44],esi
 005CF5FA    fild        dword ptr [esp+44]
 005CF5FE    fstp        dword ptr [ebx+3C];TScrollingStyleHook.FScrollPos:Single
 005CF601    wait
 005CF602    lea         edx,[esp+48]
 005CF606    mov         eax,[007C4DA0];^gvar_007CA5D4
 005CF60B    mov         eax,dword ptr [eax]
 005CF60D    call        TMouse.GetCursorPos
 005CF612    mov         eax,dword ptr [esp+48]
 005CF616    sub         eax,dword ptr [ebx+38]
 005CF619    mov         dword ptr [esp+44],eax
 005CF61D    fild        dword ptr [esp+44]
 005CF621    fstp        tbyte ptr [esp+50]
 005CF625    wait
 005CF626    lea         edx,[esp+34]
 005CF62A    mov         eax,ebx
 005CF62C    call        005CE9D4
 005CF631    lea         eax,[esp+34]
 005CF635    call        RectWidth
 005CF63A    mov         dword ptr [esp+5C],eax
 005CF63E    fild        dword ptr [esp+5C]
 005CF642    fld         tbyte ptr [esp+50]
 005CF646    fdivrp      st(1),st
 005CF648    mov         eax,dword ptr [edi+0C]
 005CF64B    sub         eax,dword ptr [edi+8]
 005CF64E    mov         dword ptr [esp+44],eax
 005CF652    fild        dword ptr [esp+44]
 005CF656    fmulp       st(1),st
 005CF658    fadd        dword ptr [ebx+3C];TScrollingStyleHook.FScrollPos:Single
 005CF65B    fstp        dword ptr [ebx+3C];TScrollingStyleHook.FScrollPos:Single
 005CF65E    wait
 005CF65F    fild        dword ptr [edi+8]
 005CF662    fcomp       dword ptr [ebx+3C];TScrollingStyleHook.FScrollPos:Single
 005CF665    wait
 005CF666    fnstsw      al
 005CF668    sahf
>005CF669    jbe         005CF672
 005CF66B    fild        dword ptr [edi+8]
 005CF66E    fstp        dword ptr [ebx+3C];TScrollingStyleHook.FScrollPos:Single
 005CF671    wait
 005CF672    fild        dword ptr [edi+0C]
 005CF675    fcomp       dword ptr [ebx+3C];TScrollingStyleHook.FScrollPos:Single
 005CF678    wait
 005CF679    fnstsw      al
 005CF67B    sahf
>005CF67C    jae         005CF685
 005CF67E    fild        dword ptr [edi+0C]
 005CF681    fstp        dword ptr [ebx+3C];TScrollingStyleHook.FScrollPos:Single
 005CF684    wait
 005CF685    mov         esi,dword ptr [edi+10]
 005CF688    test        esi,esi
>005CF68A    je          005CF6BE
 005CF68C    fld         dword ptr [ebx+3C];TScrollingStyleHook.FScrollPos:Single
 005CF68F    call        @ROUND
 005CF694    push        edx
 005CF695    push        eax
 005CF696    mov         ebp,dword ptr [edi+0C]
 005CF699    sub         ebp,esi
 005CF69B    inc         ebp
 005CF69C    mov         eax,ebp
 005CF69E    cdq
 005CF69F    cmp         edx,dword ptr [esp+4]
>005CF6A3    jne         005CF6AE
 005CF6A5    cmp         eax,dword ptr [esp]
 005CF6A8    pop         edx
 005CF6A9    pop         eax
>005CF6AA    jae         005CF6BE
>005CF6AC    jmp         005CF6B2
 005CF6AE    pop         edx
 005CF6AF    pop         eax
>005CF6B0    jge         005CF6BE
 005CF6B2    mov         dword ptr [esp+44],ebp
 005CF6B6    fild        dword ptr [esp+44]
 005CF6BA    fstp        dword ptr [ebx+3C];TScrollingStyleHook.FScrollPos:Single
 005CF6BD    wait
 005CF6BE    lea         edx,[esp+48]
 005CF6C2    mov         eax,[007C4DA0];^gvar_007CA5D4
 005CF6C7    mov         eax,dword ptr [eax]
 005CF6C9    call        TMouse.GetCursorPos
 005CF6CE    mov         eax,dword ptr [esp+48]
 005CF6D2    mov         dword ptr [ebx+38],eax;TScrollingStyleHook.FPrevScrollPos:Integer
 005CF6D5    fld         dword ptr [ebx+3C];TScrollingStyleHook.FScrollPos:Single
 005CF6D8    call        @ROUND
 005CF6DD    mov         dword ptr [edi+14],eax
 005CF6E0    push        0
 005CF6E2    push        edi
 005CF6E3    push        0
 005CF6E5    mov         eax,ebx
 005CF6E7    call        TStyleHook.GetHandle
 005CF6EC    push        eax
 005CF6ED    call        user32.SetScrollInfo
 005CF6F2    mov         eax,ebx
 005CF6F4    call        TStyleHook.GetHandle
 005CF6F9    mov         esi,eax
 005CF6FB    fld         dword ptr [ebx+3C];TScrollingStyleHook.FScrollPos:Single
 005CF6FE    call        @ROUND
 005CF703    mov         word ptr [esp+4],5
 005CF70A    mov         word ptr [esp+6],ax
 005CF70F    push        0
 005CF711    mov         eax,dword ptr [esp+8]
 005CF715    push        eax
 005CF716    push        114
 005CF71B    push        esi
 005CF71C    call        user32.PostMessageW
 005CF721    mov         eax,ebx
 005CF723    mov         edx,dword ptr [eax]
 005CF725    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CF728    mov         byte ptr [ebx+14],1;TScrollingStyleHook.FHandled:Boolean
>005CF72C    jmp         005CF7D5
 005CF731    movzx       eax,byte ptr [ebx+30];TScrollingStyleHook.FHorzSliderState:TThemedScrollBar
 005CF735    cmp         al,18
>005CF737    je          005CF748
 005CF739    cmp         al,17
>005CF73B    jne         005CF748
 005CF73D    mov         byte ptr [ebx+30],16;TScrollingStyleHook.FHorzSliderState:TThemedScrollBar
 005CF741    mov         eax,ebx
 005CF743    mov         edx,dword ptr [eax]
 005CF745    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CF748    movzx       eax,byte ptr [ebx+48];TScrollingStyleHook.FVertSliderState:TThemedScrollBar
 005CF74C    cmp         al,1C
>005CF74E    je          005CF75F
 005CF750    cmp         al,1B
>005CF752    jne         005CF75F
 005CF754    mov         byte ptr [ebx+48],1A;TScrollingStyleHook.FVertSliderState:TThemedScrollBar
 005CF758    mov         eax,ebx
 005CF75A    mov         edx,dword ptr [eax]
 005CF75C    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CF75F    movzx       eax,byte ptr [ebx+31];TScrollingStyleHook.FHorzUpState:TThemedScrollBar
 005CF763    cmp         al,0C
>005CF765    je          005CF776
 005CF767    cmp         al,0B
>005CF769    jne         005CF776
 005CF76B    mov         byte ptr [ebx+31],0A;TScrollingStyleHook.FHorzUpState:TThemedScrollBar
 005CF76F    mov         eax,ebx
 005CF771    mov         edx,dword ptr [eax]
 005CF773    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CF776    movzx       eax,byte ptr [ebx+28];TScrollingStyleHook.FHorzDownState:TThemedScrollBar
 005CF77A    cmp         al,10
>005CF77C    je          005CF78D
 005CF77E    cmp         al,0F
>005CF780    jne         005CF78D
 005CF782    mov         byte ptr [ebx+28],0E;TScrollingStyleHook.FHorzDownState:TThemedScrollBar
 005CF786    mov         eax,ebx
 005CF788    mov         edx,dword ptr [eax]
 005CF78A    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CF78D    movzx       eax,byte ptr [ebx+49];TScrollingStyleHook.FVertUpState:TThemedScrollBar
 005CF791    cmp         al,4
>005CF793    je          005CF7A4
 005CF795    cmp         al,3
>005CF797    jne         005CF7A4
 005CF799    mov         byte ptr [ebx+49],2;TScrollingStyleHook.FVertUpState:TThemedScrollBar
 005CF79D    mov         eax,ebx
 005CF79F    mov         edx,dword ptr [eax]
 005CF7A1    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CF7A4    movzx       eax,byte ptr [ebx+40];TScrollingStyleHook.FVertDownState:TThemedScrollBar
 005CF7A8    cmp         al,8
>005CF7AA    je          005CF7BB
 005CF7AC    cmp         al,7
>005CF7AE    jne         005CF7BB
 005CF7B0    mov         byte ptr [ebx+40],6;TScrollingStyleHook.FVertDownState:TThemedScrollBar
 005CF7B4    mov         eax,ebx
 005CF7B6    mov         edx,dword ptr [eax]
 005CF7B8    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CF7BB    mov         edx,esi
 005CF7BD    mov         eax,ebx
 005CF7BF    call        TStyleHook.CallDefaultProc
 005CF7C4    cmp         byte ptr [ebx+32],0;TScrollingStyleHook.FLeftButtonDown:Boolean
>005CF7C8    je          005CF7D1
 005CF7CA    mov         eax,ebx
 005CF7CC    mov         edx,dword ptr [eax]
 005CF7CE    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CF7D1    mov         byte ptr [ebx+14],1;TScrollingStyleHook.FHandled:Boolean
 005CF7D5    add         esp,60
 005CF7D8    pop         ebp
 005CF7D9    pop         edi
 005CF7DA    pop         esi
 005CF7DB    pop         ebx
 005CF7DC    ret
end;*}

//005CF7E0
procedure TScrollingStyleHook.WMKeyDown;
begin
{*
 005CF7E0    push        ebx
 005CF7E1    mov         ebx,eax
 005CF7E3    mov         eax,ebx
 005CF7E5    call        TStyleHook.CallDefaultProc
 005CF7EA    mov         eax,ebx
 005CF7EC    mov         edx,dword ptr [eax]
 005CF7EE    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CF7F1    mov         byte ptr [ebx+14],1;TScrollingStyleHook.FHandled:Boolean
 005CF7F5    pop         ebx
 005CF7F6    ret
*}
end;

//005CF7F8
procedure TScrollingStyleHook.WMKeyUp;
begin
{*
 005CF7F8    push        ebx
 005CF7F9    mov         ebx,eax
 005CF7FB    mov         eax,ebx
 005CF7FD    call        TStyleHook.CallDefaultProc
 005CF802    mov         eax,ebx
 005CF804    mov         edx,dword ptr [eax]
 005CF806    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CF809    mov         byte ptr [ebx+14],1;TScrollingStyleHook.FHandled:Boolean
 005CF80D    pop         ebx
 005CF80E    ret
*}
end;

//005CF810
procedure TScrollingStyleHook.WMLButtonDown;
begin
{*
 005CF810    push        ebx
 005CF811    mov         ebx,eax
 005CF813    mov         eax,ebx
 005CF815    call        TStyleHook.CallDefaultProc
 005CF81A    mov         eax,ebx
 005CF81C    mov         edx,dword ptr [eax]
 005CF81E    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CF821    mov         byte ptr [ebx+14],1;TScrollingStyleHook.FHandled:Boolean
 005CF825    pop         ebx
 005CF826    ret
*}
end;

//005CF828
procedure sub_005CF828;
begin
{*
 005CF828    mov         edx,dword ptr [eax]
 005CF82A    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CF82D    ret
*}
end;

//005CF830
procedure sub_005CF830;
begin
{*
 005CF830    push        esi
 005CF831    mov         esi,eax
 005CF833    mov         eax,esi
 005CF835    call        0058D4F8
 005CF83A    mov         eax,esi
 005CF83C    mov         edx,dword ptr [eax]
 005CF83E    call        dword ptr [edx+4C];TScrollingStyleHook.sub_005CEA7C
 005CF841    pop         esi
 005CF842    ret
*}
end;

//005CF844
procedure TScrollingStyleHook.WMClose;
begin
{*
 005CF844    mov         byte ptr [eax+14],1;TScrollingStyleHook.FHandled:Boolean
 005CF848    ret
*}
end;

//005CF84C
{*procedure TScrollingStyleHook.WMShowWindow(?:?);
begin
 005CF84C    push        ebx
 005CF84D    push        esi
 005CF84E    push        edi
 005CF84F    mov         esi,edx
 005CF851    mov         ebx,eax
 005CF853    mov         edx,esi
 005CF855    mov         eax,ebx
 005CF857    call        TStyleHook.CallDefaultProc
 005CF85C    mov         edi,dword ptr [ebx+44];TScrollingStyleHook.FVertScrollWnd:TScrollWindow
 005CF85F    test        edi,edi
>005CF861    je          005CF896
 005CF863    mov         eax,edi
 005CF865    call        TWinControl.HandleAllocated
 005CF86A    test        al,al
>005CF86C    je          005CF896
 005CF86E    cmp         dword ptr [esi+4],0
>005CF872    je          005CF886
 005CF874    push        5
 005CF876    mov         eax,dword ptr [ebx+44];TScrollingStyleHook.FVertScrollWnd:TScrollWindow
 005CF879    call        TWinControl.GetHandle
 005CF87E    push        eax
 005CF87F    call        user32.ShowWindow
>005CF884    jmp         005CF896
 005CF886    push        0
 005CF888    mov         eax,dword ptr [ebx+44];TScrollingStyleHook.FVertScrollWnd:TScrollWindow
 005CF88B    call        TWinControl.GetHandle
 005CF890    push        eax
 005CF891    call        user32.ShowWindow
 005CF896    mov         edi,dword ptr [ebx+2C];TScrollingStyleHook.FHorzScrollWnd:TScrollWindow
 005CF899    test        edi,edi
>005CF89B    je          005CF8D0
 005CF89D    mov         eax,edi
 005CF89F    call        TWinControl.HandleAllocated
 005CF8A4    test        al,al
>005CF8A6    je          005CF8D0
 005CF8A8    cmp         dword ptr [esi+4],0
>005CF8AC    je          005CF8C0
 005CF8AE    push        5
 005CF8B0    mov         eax,dword ptr [ebx+2C];TScrollingStyleHook.FHorzScrollWnd:TScrollWindow
 005CF8B3    call        TWinControl.GetHandle
 005CF8B8    push        eax
 005CF8B9    call        user32.ShowWindow
>005CF8BE    jmp         005CF8D0
 005CF8C0    push        0
 005CF8C2    mov         eax,dword ptr [ebx+2C];TScrollingStyleHook.FHorzScrollWnd:TScrollWindow
 005CF8C5    call        TWinControl.GetHandle
 005CF8CA    push        eax
 005CF8CB    call        user32.ShowWindow
 005CF8D0    mov         byte ptr [ebx+14],1;TScrollingStyleHook.FHandled:Boolean
 005CF8D4    pop         edi
 005CF8D5    pop         esi
 005CF8D6    pop         ebx
 005CF8D7    ret
end;*}

//005CF8D8
{*procedure TScrollingStyleHook.WMWindowPosChangedMsg(?:?);
begin
 005CF8D8    push        ebx
 005CF8D9    push        esi
 005CF8DA    mov         esi,edx
 005CF8DC    mov         ebx,eax
 005CF8DE    mov         edx,esi
 005CF8E0    mov         eax,ebx
 005CF8E2    call        TStyleHook.CallDefaultProc
 005CF8E7    mov         eax,dword ptr [esi+8]
 005CF8EA    mov         eax,dword ptr [eax+18]
 005CF8ED    and         eax,80
 005CF8F2    cmp         eax,80
>005CF8F7    jne         005CF927
 005CF8F9    mov         esi,dword ptr [ebx+44];TScrollingStyleHook.FVertScrollWnd:TScrollWindow
 005CF8FC    test        esi,esi
>005CF8FE    je          005CF90F
 005CF900    push        0
 005CF902    mov         eax,esi
 005CF904    call        TWinControl.GetHandle
 005CF909    push        eax
 005CF90A    call        user32.ShowWindow
 005CF90F    mov         esi,dword ptr [ebx+2C];TScrollingStyleHook.FHorzScrollWnd:TScrollWindow
 005CF912    test        esi,esi
>005CF914    je          005CF940
 005CF916    push        0
 005CF918    mov         eax,esi
 005CF91A    call        TWinControl.GetHandle
 005CF91F    push        eax
 005CF920    call        user32.ShowWindow
>005CF925    jmp         005CF940
 005CF927    mov         eax,dword ptr [ebx+8];TScrollingStyleHook.FControl:TWinControl
 005CF92A    call        TWinControl.GetHandle
 005CF92F    push        eax
 005CF930    call        user32.IsWindowVisible
 005CF935    test        eax,eax
>005CF937    je          005CF940
 005CF939    mov         eax,ebx
 005CF93B    call        005CDB84
 005CF940    mov         byte ptr [ebx+14],1;TScrollingStyleHook.FHandled:Boolean
 005CF944    pop         esi
 005CF945    pop         ebx
 005CF946    ret
end;*}

//005CF948
procedure sub_005CF948;
begin
{*
 005CF948    call        0058DB4C
 005CF94D    ret
*}
end;

//005CF950
procedure TScrollingStyleHook.CMVisibleChanged;
begin
{*
 005CF950    push        ebx
 005CF951    push        esi
 005CF952    mov         ebx,eax
 005CF954    mov         eax,dword ptr [ebx+8];TScrollingStyleHook.FControl:TWinControl
 005CF957    call        TWinControl.HandleAllocated
 005CF95C    test        al,al
>005CF95E    je          005CF9C0
 005CF960    mov         esi,dword ptr [ebx+44];TScrollingStyleHook.FVertScrollWnd:TScrollWindow
 005CF963    test        esi,esi
>005CF965    je          005CF990
 005CF967    mov         eax,dword ptr [ebx+8];TScrollingStyleHook.FControl:TWinControl
 005CF96A    cmp         byte ptr [eax+69],0;TWinControl.FVisible:Boolean
>005CF96E    je          005CF981
 005CF970    push        5
 005CF972    mov         eax,esi
 005CF974    call        TWinControl.GetHandle
 005CF979    push        eax
 005CF97A    call        user32.ShowWindow
>005CF97F    jmp         005CF990
 005CF981    push        0
 005CF983    mov         eax,esi
 005CF985    call        TWinControl.GetHandle
 005CF98A    push        eax
 005CF98B    call        user32.ShowWindow
 005CF990    mov         esi,dword ptr [ebx+2C];TScrollingStyleHook.FHorzScrollWnd:TScrollWindow
 005CF993    test        esi,esi
>005CF995    je          005CF9C0
 005CF997    mov         eax,dword ptr [ebx+8];TScrollingStyleHook.FControl:TWinControl
 005CF99A    cmp         byte ptr [eax+69],0;TWinControl.FVisible:Boolean
>005CF99E    je          005CF9B1
 005CF9A0    push        5
 005CF9A2    mov         eax,esi
 005CF9A4    call        TWinControl.GetHandle
 005CF9A9    push        eax
 005CF9AA    call        user32.ShowWindow
>005CF9AF    jmp         005CF9C0
 005CF9B1    push        0
 005CF9B3    mov         eax,esi
 005CF9B5    call        TWinControl.GetHandle
 005CF9BA    push        eax
 005CF9BB    call        user32.ShowWindow
 005CF9C0    mov         byte ptr [ebx+14],0;TScrollingStyleHook.FHandled:Boolean
 005CF9C4    pop         esi
 005CF9C5    pop         ebx
 005CF9C6    ret
*}
end;

//005CF9C8
procedure TScrollingStyleHook.WMMove;
begin
{*
 005CF9C8    push        ebx
 005CF9C9    mov         ebx,eax
 005CF9CB    mov         eax,ebx
 005CF9CD    call        TStyleHook.CallDefaultProc
 005CF9D2    cmp         dword ptr [ebx+44],0;TScrollingStyleHook.FVertScrollWnd:TScrollWindow
>005CF9D6    jne         005CF9DE
 005CF9D8    cmp         dword ptr [ebx+2C],0;TScrollingStyleHook.FHorzScrollWnd:TScrollWindow
>005CF9DC    je          005CF9F7
 005CF9DE    push        37
 005CF9E0    push        0
 005CF9E2    push        0
 005CF9E4    push        0
 005CF9E6    push        0
 005CF9E8    push        0
 005CF9EA    mov         eax,ebx
 005CF9EC    call        TStyleHook.GetHandle
 005CF9F1    push        eax
 005CF9F2    call        user32.SetWindowPos
 005CF9F7    mov         eax,ebx
 005CF9F9    call        005CDB84
 005CF9FE    mov         byte ptr [ebx+14],1;TScrollingStyleHook.FHandled:Boolean
 005CFA02    pop         ebx
 005CFA03    ret
*}
end;

//005CFA04
procedure TScrollingStyleHook.WMSize;
begin
{*
 005CFA04    push        ebx
 005CFA05    mov         ebx,eax
 005CFA07    mov         eax,ebx
 005CFA09    call        TStyleHook.CallDefaultProc
 005CFA0E    mov         eax,ebx
 005CFA10    call        005CDB84
 005CFA15    mov         byte ptr [ebx+14],1;TScrollingStyleHook.FHandled:Boolean
 005CFA19    pop         ebx
 005CFA1A    ret
*}
end;

//005CFA1C
{*procedure sub_005CFA1C(?:?; ?:?; ?:?);
begin
 005CFA1C    push        ebx
 005CFA1D    push        esi
 005CFA1E    push        edi
 005CFA1F    add         esp,0FFFFFFF0
 005CFA22    mov         esi,edx
 005CFA24    lea         edi,[esp]
 005CFA27    movs        dword ptr [edi],dword ptr [esi]
 005CFA28    movs        dword ptr [edi],dword ptr [esi]
 005CFA29    movs        dword ptr [edi],dword ptr [esi]
 005CFA2A    movs        dword ptr [edi],dword ptr [esi]
 005CFA2B    mov         esi,ecx
 005CFA2D    mov         ebx,eax
 005CFA2F    mov         ecx,dword ptr [ebx+4]
 005CFA32    neg         ecx
 005CFA34    mov         edx,dword ptr [ebx]
 005CFA36    neg         edx
 005CFA38    mov         eax,ebx
 005CFA3A    call        OffsetRect
 005CFA3F    mov         eax,esp
 005CFA41    call        RectHeight
 005CFA46    push        eax
 005CFA47    mov         eax,ebx
 005CFA49    call        RectHeight
 005CFA4E    pop         ecx
 005CFA4F    sub         ecx,eax
 005CFA51    sar         ecx,1
>005CFA53    jns         005CFA58
 005CFA55    adc         ecx,0
 005CFA58    mov         eax,ebx
 005CFA5A    xor         edx,edx
 005CFA5C    call        OffsetRect
 005CFA61    mov         eax,ebx
 005CFA63    mov         ecx,dword ptr [esp+4]
 005CFA67    mov         edx,dword ptr [esp]
 005CFA6A    call        OffsetRect
 005CFA6F    mov         edi,esi
 005CFA71    mov         esi,ebx
 005CFA73    movs        dword ptr [edi],dword ptr [esi]
 005CFA74    movs        dword ptr [edi],dword ptr [esi]
 005CFA75    movs        dword ptr [edi],dword ptr [esi]
 005CFA76    movs        dword ptr [edi],dword ptr [esi]
 005CFA77    add         esp,10
 005CFA7A    pop         edi
 005CFA7B    pop         esi
 005CFA7C    pop         ebx
 005CFA7D    ret
end;*}

//005CFA80
constructor sub_005CFA80(FormHook:TFormStyleHook);
begin
{*
 005CFA80    push        ebp
 005CFA81    mov         ebp,esp
 005CFA83    add         esp,0FFFFFFE8
 005CFA86    push        ebx
 005CFA87    push        esi
 005CFA88    push        edi
 005CFA89    test        dl,dl
>005CFA8B    je          005CFA95
 005CFA8D    add         esp,0FFFFFFF0
 005CFA90    call        @ClassCreate
 005CFA95    mov         ebx,edx
 005CFA97    mov         esi,eax
 005CFA99    mov         dword ptr [esi+1C],ecx
 005CFA9C    push        0
 005CFA9E    lea         eax,[ebp-18]
 005CFAA1    push        eax
 005CFAA2    xor         ecx,ecx
 005CFAA4    xor         edx,edx
 005CFAA6    xor         eax,eax
 005CFAA8    call        Rect
 005CFAAD    push        esi
 005CFAAE    lea         edi,[esi+8]
 005CFAB1    lea         esi,[ebp-18]
 005CFAB4    movs        dword ptr [edi],dword ptr [esi]
 005CFAB5    movs        dword ptr [edi],dword ptr [esi]
 005CFAB6    movs        dword ptr [edi],dword ptr [esi]
 005CFAB7    movs        dword ptr [edi],dword ptr [esi]
 005CFAB8    pop         esi
 005CFAB9    xor         eax,eax
 005CFABB    mov         dword ptr [esi+20],eax
 005CFABE    xor         eax,eax
 005CFAC0    mov         dword ptr [esi+2C],eax
 005CFAC3    mov         byte ptr [esi+86],0
 005CFACA    mov         byte ptr [esi+8C],0
 005CFAD1    mov         dword ptr [esi+4],0FFFFFFFF
 005CFAD8    mov         dword ptr [esi+94],0FFFFFFFF
 005CFAE2    mov         byte ptr [esi+8D],0
 005CFAE9    xor         eax,eax
 005CFAEB    mov         [007CA7D4],eax;gvar_007CA7D4
 005CFAF0    mov         dword ptr [ebp-8],0FFFFFFFF
 005CFAF7    mov         dword ptr [ebp-4],0FFFFFFFF
 005CFAFE    mov         eax,dword ptr [ebp-8]
 005CFB01    mov         dword ptr [esi+98],eax
 005CFB07    mov         eax,dword ptr [ebp-4]
 005CFB0A    mov         dword ptr [esi+9C],eax
 005CFB10    mov         byte ptr [esi+18],0
 005CFB14    mov         byte ptr [esi+0A7],0
 005CFB1B    mov         byte ptr [esi+85],0
 005CFB22    mov         byte ptr [esi+0A5],0
 005CFB29    mov         dword ptr [esi+34],0FFFFFFFF
 005CFB30    mov         dword ptr [esi+0A0],0FFFFFFFF
 005CFB3A    mov         dword ptr [esi+38],0FFFFFFFF
 005CFB41    mov         byte ptr [esi+90],0
 005CFB48    mov         byte ptr [esi+8F],0
 005CFB4F    mov         byte ptr [esi+8E],0
 005CFB56    mov         byte ptr [esi+0A6],0
 005CFB5D    mov         byte ptr [esi+84],0
 005CFB64    mov         eax,esi
 005CFB66    test        bl,bl
>005CFB68    je          005CFB79
 005CFB6A    call        @AfterConstruction
 005CFB6F    pop         dword ptr fs:[0]
 005CFB76    add         esp,0C
 005CFB79    mov         eax,esi
 005CFB7B    pop         edi
 005CFB7C    pop         esi
 005CFB7D    pop         ebx
 005CFB7E    mov         esp,ebp
 005CFB80    pop         ebp
 005CFB81    ret
*}
end;

//005CFB84
destructor TFormStyleHook.TMainMenuBarStyleHook.Destroy();
begin
{*
 005CFB84    push        ebx
 005CFB85    push        esi
 005CFB86    push        ecx
 005CFB87    call        @BeforeDestruction
 005CFB8C    mov         ebx,edx
 005CFB8E    mov         esi,eax
 005CFB90    cmp         dword ptr [esi+20],0
>005CFB94    je          005CFBAD
 005CFB96    lea         eax,[esi+20]
 005CFB99    mov         dword ptr [esp],eax
 005CFB9C    mov         eax,dword ptr [esp]
 005CFB9F    mov         eax,dword ptr [eax]
 005CFBA1    mov         edx,dword ptr [esp]
 005CFBA4    xor         ecx,ecx
 005CFBA6    mov         dword ptr [edx],ecx
 005CFBA8    call        TObject.Free
 005CFBAD    mov         dl,0FC
 005CFBAF    and         dl,bl
 005CFBB1    mov         eax,esi
 005CFBB3    call        TObject.Destroy
 005CFBB8    test        bl,bl
>005CFBBA    jle         005CFBC3
 005CFBBC    mov         eax,esi
 005CFBBE    call        @ClassDestroy
 005CFBC3    pop         edx
 005CFBC4    pop         esi
 005CFBC5    pop         ebx
 005CFBC6    ret
*}
end;

//005CFBC8
{*function sub_005CFBC8(?:TFormStyleHook):?;
begin
 005CFBC8    mov         edx,dword ptr [eax+20]
 005CFBCB    test        edx,edx
>005CFBCD    je          005CFBD5
 005CFBCF    cmp         dword ptr [eax+24],0
>005CFBD3    jne         005CFBDB
 005CFBD5    call        005CFBE0
 005CFBDA    ret
 005CFBDB    mov         eax,edx
 005CFBDD    ret
end;*}

//005CFBE0
{*procedure sub_005CFBE0(?:?);
begin
 005CFBE0    push        ebx
 005CFBE1    push        esi
 005CFBE2    push        edi
 005CFBE3    push        ebp
 005CFBE4    add         esp,0FFFFFD74
 005CFBEA    mov         esi,eax
 005CFBEC    mov         eax,esi
 005CFBEE    call        005CFCF4
 005CFBF3    test        al,al
>005CFBF5    jne         005CFBFE
 005CFBF7    xor         eax,eax
>005CFBF9    jmp         005CFCE8
 005CFBFE    mov         eax,dword ptr [esi+1C]
 005CFC01    call        005D3A90
 005CFC06    call        005C2D30
 005CFC0B    call        TWinControl.GetHandle
 005CFC10    mov         edi,eax
 005CFC12    xor         ebx,ebx
 005CFC14    test        ebx,ebx
>005CFC16    jne         005CFC26
 005CFC18    push        0
 005CFC1A    push        0
 005CFC1C    push        7F
 005CFC1E    push        edi
 005CFC1F    call        user32.SendMessageW
 005CFC24    mov         ebx,eax
 005CFC26    test        ebx,ebx
>005CFC28    jne         005CFC38
 005CFC2A    push        0
 005CFC2C    push        1
 005CFC2E    push        7F
 005CFC30    push        edi
 005CFC31    call        user32.SendMessageW
 005CFC36    mov         ebx,eax
 005CFC38    test        ebx,ebx
>005CFC3A    jne         005CFC87
 005CFC3C    push        12D
 005CFC41    lea         eax,[esp+34]
 005CFC45    push        eax
 005CFC46    push        edi
 005CFC47    call        user32.GetClassNameW
 005CFC4C    mov         eax,esp
 005CFC4E    xor         ecx,ecx
 005CFC50    mov         edx,30
 005CFC55    call        @FillChar
 005CFC5A    mov         dword ptr [esp],30
 005CFC61    push        0FA
 005CFC63    push        edi
 005CFC64    call        user32.GetWindowLongW
 005CFC69    mov         edi,eax
 005CFC6B    push        esp
 005CFC6C    lea         eax,[esp+34]
 005CFC70    push        eax
 005CFC71    push        edi
 005CFC72    call        user32.GetClassInfoExW
 005CFC77    test        eax,eax
>005CFC79    je          005CFC87
 005CFC7B    mov         ebx,dword ptr [esp+2C]
 005CFC7F    test        ebx,ebx
>005CFC81    jne         005CFC87
 005CFC83    mov         ebx,dword ptr [esp+18]
 005CFC87    cmp         dword ptr [esi+20],0
>005CFC8B    jne         005CFC9C
 005CFC8D    mov         dl,1
 005CFC8F    mov         eax,[004C2694];TIcon
 005CFC94    call        TIcon.Create;TIcon.Create
 005CFC99    mov         dword ptr [esi+20],eax
 005CFC9C    test        ebx,ebx
>005CFC9E    je          005CFCE5
 005CFCA0    push        31
 005CFCA2    call        user32.GetSystemMetrics
 005CFCA7    mov         edi,eax
 005CFCA9    test        edi,edi
>005CFCAB    jne         005CFCB6
 005CFCAD    push        1E
 005CFCAF    call        user32.GetSystemMetrics
 005CFCB4    mov         edi,eax
 005CFCB6    push        32
 005CFCB8    call        user32.GetSystemMetrics
 005CFCBD    mov         ebp,eax
 005CFCBF    test        ebp,ebp
>005CFCC1    jne         005CFCCC
 005CFCC3    push        1F
 005CFCC5    call        user32.GetSystemMetrics
 005CFCCA    mov         ebp,eax
 005CFCCC    push        0
 005CFCCE    push        ebp
 005CFCCF    push        edi
 005CFCD0    push        1
 005CFCD2    push        ebx
 005CFCD3    call        user32.CopyImage
 005CFCD8    mov         edx,eax
 005CFCDA    mov         eax,dword ptr [esi+20]
 005CFCDD    call        TIcon.SetHandle
 005CFCE2    mov         dword ptr [esi+24],ebx
 005CFCE5    mov         eax,dword ptr [esi+20]
 005CFCE8    add         esp,28C
 005CFCEE    pop         ebp
 005CFCEF    pop         edi
 005CFCF0    pop         esi
 005CFCF1    pop         ebx
 005CFCF2    ret
end;*}

//005CFCF4
{*function sub_005CFCF4(?:TFormStyleHook):?;
begin
 005CFCF4    push        ebx
 005CFCF5    mov         ebx,eax
 005CFCF7    mov         eax,dword ptr [ebx+1C]
 005CFCFA    call        005D3A90
 005CFCFF    cmp         byte ptr [eax+2C2],2
>005CFD06    jne         005CFD2F
 005CFD08    mov         eax,dword ptr [ebx+1C]
 005CFD0B    call        005D3A90
 005CFD10    call        005C2D30
 005CFD15    test        eax,eax
>005CFD17    je          005CFD2F
 005CFD19    mov         eax,dword ptr [ebx+1C]
 005CFD1C    call        005D3A90
 005CFD21    call        005C2D30
 005CFD26    test        byte ptr [eax+2BC],1
>005CFD2D    jne         005CFD33
 005CFD2F    xor         eax,eax
 005CFD31    pop         ebx
 005CFD32    ret
 005CFD33    mov         al,1
 005CFD35    pop         ebx
 005CFD36    ret
end;*}

//005CFD38
{*function sub_005CFD38(?:TFormStyleHook):?;
begin
 005CFD38    push        ebx
 005CFD39    mov         ebx,eax
 005CFD3B    mov         eax,dword ptr [ebx+1C]
 005CFD3E    call        005D3A90
 005CFD43    test        byte ptr [eax+2BC],1
>005CFD4A    je          005CFD5D
 005CFD4C    mov         eax,dword ptr [ebx+1C]
 005CFD4F    call        005D3A90
 005CFD54    cmp         byte ptr [eax+2BD],0
>005CFD5B    jne         005CFD61
 005CFD5D    xor         eax,eax
 005CFD5F    pop         ebx
 005CFD60    ret
 005CFD61    mov         al,1
 005CFD63    pop         ebx
 005CFD64    ret
end;*}

//005CFD68
{*procedure sub_005CFD68(?:TMainMenuBarStyleHook; ?:?);
begin
 005CFD68    push        ebx
 005CFD69    push        ecx
 005CFD6A    mov         ebx,eax
 005CFD6C    cmp         dl,byte ptr [ebx+0A5]
>005CFD72    je          005CFDBA
 005CFD74    mov         byte ptr [ebx+0A5],dl
 005CFD7A    mov         dword ptr [ebx+34],0FFFFFFFF
 005CFD81    mov         dword ptr [ebx+0A0],0FFFFFFFF
 005CFD8B    mov         dword ptr [ebx+38],0FFFFFFFF
 005CFD92    test        dl,dl
>005CFD94    jne         005CFDB3
 005CFD96    cmp         dword ptr [ebx+20],0
>005CFD9A    je          005CFDB3
 005CFD9C    lea         eax,[ebx+20]
 005CFD9F    mov         dword ptr [esp],eax
 005CFDA2    mov         eax,dword ptr [esp]
 005CFDA5    mov         eax,dword ptr [eax]
 005CFDA7    mov         edx,dword ptr [esp]
 005CFDAA    xor         ecx,ecx
 005CFDAC    mov         dword ptr [edx],ecx
 005CFDAE    call        TObject.Free
 005CFDB3    mov         eax,ebx
 005CFDB5    call        TFormStyleHook.TMainMenuBarStyleHook.Invalidate
 005CFDBA    pop         edx
 005CFDBB    pop         ebx
 005CFDBC    ret
end;*}

//005CFDC0
{*function sub_005CFDC0(?:?; ?:?):?;
begin
 005CFDC0    push        ebx
 005CFDC1    push        esi
 005CFDC2    push        edi
 005CFDC3    push        ebp
 005CFDC4    mov         edi,edx
 005CFDC6    mov         dl,1
 005CFDC8    mov         ecx,dword ptr [eax+2C]
 005CFDCB    dec         ecx
 005CFDCC    test        ecx,ecx
>005CFDCE    jl          005CFDF1
 005CFDD0    inc         ecx
 005CFDD1    xor         esi,esi
 005CFDD3    mov         ebx,esi
 005CFDD5    add         ebx,ebx
 005CFDD7    add         ebx,ebx
 005CFDD9    add         ebx,ebx
 005CFDDB    sub         ebx,esi
 005CFDDD    mov         ebp,dword ptr [eax+30]
 005CFDE0    mov         ebx,dword ptr [ebp+ebx*4+8]
 005CFDE4    cmp         ebx,dword ptr [edi+70]
>005CFDE7    jne         005CFDED
 005CFDE9    xor         edx,edx
>005CFDEB    jmp         005CFDF1
 005CFDED    inc         esi
 005CFDEE    dec         ecx
>005CFDEF    jne         005CFDD3
 005CFDF1    mov         eax,edx
 005CFDF3    pop         ebp
 005CFDF4    pop         edi
 005CFDF5    pop         esi
 005CFDF6    pop         ebx
 005CFDF7    ret
end;*}

//005CFDF8
{*function sub_005CFDF8(?:?; ?:?):?;
begin
 005CFDF8    push        ebx
 005CFDF9    push        esi
 005CFDFA    mov         esi,edx
 005CFDFC    mov         ebx,eax
 005CFDFE    test        esi,esi
>005CFE00    je          005CFE14
 005CFE02    mov         edx,esi
 005CFE04    mov         eax,ebx
 005CFE06    call        005CFDC0
 005CFE0B    test        al,al
>005CFE0D    je          005CFE14
 005CFE0F    xor         eax,eax
 005CFE11    pop         esi
 005CFE12    pop         ebx
 005CFE13    ret
 005CFE14    mov         al,1
 005CFE16    pop         esi
 005CFE17    pop         ebx
 005CFE18    ret
end;*}

//005CFE1C
{*function sub_005CFE1C(?:?; ?:?):?;
begin
 005CFE1C    push        ebx
 005CFE1D    mov         ebx,edx
 005CFE1F    test        ebx,ebx
>005CFE21    je          005CFE32
 005CFE23    mov         eax,ebx
 005CFE25    call        TMenuItem.GetCount
 005CFE2A    test        eax,eax
>005CFE2C    je          005CFE32
 005CFE2E    xor         eax,eax
 005CFE30    pop         ebx
 005CFE31    ret
 005CFE32    mov         al,1
 005CFE34    pop         ebx
 005CFE35    ret
end;*}

//005CFE38
{*function sub_005CFE38(?:TFormStyleHook; ?:LongBool; ?:?):?;
begin
 005CFE38    push        ebx
 005CFE39    push        esi
 005CFE3A    push        edi
 005CFE3B    mov         ebx,ecx
 005CFE3D    mov         esi,edx
 005CFE3F    mov         edi,eax
 005CFE41    mov         eax,edi
 005CFE43    call        005D0A70
 005CFE48    mov         ecx,ebx
 005CFE4A    mov         edx,esi
 005CFE4C    call        TMenu.FindItem
 005CFE51    pop         edi
 005CFE52    pop         esi
 005CFE53    pop         ebx
 005CFE54    ret
end;*}

//005CFE58
procedure TFormStyleHook.TMainMenuBarStyleHook.MenuEnter(ATrackMenu:Boolean);
begin
{*
 005CFE58    push        ebx
 005CFE59    push        esi
 005CFE5A    mov         ebx,edx
 005CFE5C    mov         esi,eax
 005CFE5E    push        0
 005CFE60    call        user32.HideCaret
 005CFE65    mov         byte ptr [esi+84],0
 005CFE6C    mov         byte ptr [esi+0A6],0;TFormStyleHook.FMinButtonRect.Top:LongInt
 005CFE73    test        bl,bl
>005CFE75    jne         005CFE80
 005CFE77    mov         dl,1
 005CFE79    mov         eax,esi
 005CFE7B    call        005D02F0
 005CFE80    mov         edx,ebx
 005CFE82    mov         eax,esi
 005CFE84    call        TFormStyleHook.TMainMenuBarStyleHook.ProcessMenuLoop
 005CFE89    pop         esi
 005CFE8A    pop         ebx
 005CFE8B    ret
*}
end;

//005CFE8C
procedure sub_005CFE8C(?:TFormStyleHook);
begin
{*
 005CFE8C    push        ebx
 005CFE8D    push        esi
 005CFE8E    add         esp,0FFFFFFF8
 005CFE91    mov         ebx,eax
 005CFE93    push        0
 005CFE95    call        user32.ShowCaret
 005CFE9A    mov         byte ptr [ebx+28],0
 005CFE9E    mov         byte ptr [ebx+8C],0
 005CFEA5    mov         byte ptr [ebx+86],0
 005CFEAC    mov         byte ptr [ebx+18],0
 005CFEB0    mov         byte ptr [ebx+84],0
 005CFEB7    mov         byte ptr [ebx+0A6],0
 005CFEBE    cmp         dword ptr [ebx+4],0FFFFFFFF
>005CFEC2    je          005CFF0B
 005CFEC4    mov         edx,esp
 005CFEC6    mov         eax,[007C4DA0];^gvar_007CA5D4
 005CFECB    mov         eax,dword ptr [eax]
 005CFECD    call        TMouse.GetCursorPos
 005CFED2    push        dword ptr [esp+4]
 005CFED6    push        dword ptr [esp+4]
 005CFEDA    call        user32.WindowFromPoint
 005CFEDF    mov         esi,eax
 005CFEE1    mov         eax,dword ptr [ebx+1C]
 005CFEE4    call        TStyleHook.GetHandle
 005CFEE9    cmp         esi,eax
>005CFEEB    jne         005CFF0B
 005CFEED    mov         eax,ebx
 005CFEEF    call        005D0894
 005CFEF4    inc         eax
>005CFEF5    je          005CFF0B
 005CFEF7    mov         eax,ebx
 005CFEF9    call        005D0894
 005CFEFE    mov         esi,eax
 005CFF00    mov         dword ptr [ebx+4],esi
 005CFF03    mov         dword ptr [ebx+94],esi
>005CFF09    jmp         005CFF1C
 005CFF0B    mov         dword ptr [ebx+4],0FFFFFFFF
 005CFF12    mov         dword ptr [ebx+94],0FFFFFFFF
 005CFF1C    mov         eax,ebx
 005CFF1E    call        TFormStyleHook.TMainMenuBarStyleHook.Invalidate
 005CFF23    pop         ecx
 005CFF24    pop         edx
 005CFF25    pop         esi
 005CFF26    pop         ebx
 005CFF27    ret
*}
end;

//005CFF28
function TFormStyleHook.TMainMenuBarStyleHook.CheckHotKeyItem(ACharCode:Word):Boolean;
begin
{*
 005CFF28    push        ebx
 005CFF29    push        esi
 005CFF2A    push        edi
 005CFF2B    push        ebp
 005CFF2C    mov         edi,eax
 005CFF2E    xor         ebx,ebx
 005CFF30    movzx       eax,dx
 005CFF33    mov         edx,eax
 005CFF35    mov         cl,1
 005CFF37    mov         eax,edi
 005CFF39    call        005D038C
 005CFF3E    mov         esi,eax
 005CFF40    cmp         esi,0FFFFFFFF
>005CFF43    je          005CFFB3
 005CFF45    cmp         esi,dword ptr [edi+4];TFormStyleHook.FBrush:TBrush
>005CFF48    jne         005CFFB3
 005CFF4A    mov         bl,1
 005CFF4C    mov         eax,dword ptr [edi+4];TFormStyleHook.FBrush:TBrush
 005CFF4F    mov         edx,eax
 005CFF51    add         eax,eax
 005CFF53    add         eax,eax
 005CFF55    add         eax,eax
 005CFF57    sub         eax,edx
 005CFF59    mov         edx,dword ptr [edi+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005CFF5C    mov         eax,dword ptr [edx+eax*4+8]
 005CFF60    call        TMenuItem.GetCount
 005CFF65    test        eax,eax
>005CFF67    jne         005CFFA8
 005CFF69    mov         eax,edi
 005CFF6B    call        005CFE8C
 005CFF70    mov         ebp,esi
 005CFF72    add         ebp,ebp
 005CFF74    add         ebp,ebp
 005CFF76    add         ebp,ebp
 005CFF78    sub         ebp,esi
 005CFF7A    mov         eax,dword ptr [edi+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005CFF7D    mov         eax,dword ptr [eax+ebp*4+8]
 005CFF81    call        TMenuItem.GetParentMenu
 005CFF86    test        eax,eax
>005CFF88    je          005CFFB3
 005CFF8A    mov         eax,dword ptr [edi+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005CFF8D    mov         eax,dword ptr [eax+ebp*4+8]
 005CFF91    call        TMenuItem.GetParentMenu
 005CFF96    mov         edx,dword ptr [edi+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005CFF99    mov         edx,dword ptr [edx+ebp*4+8]
 005CFF9D    movzx       edx,word ptr [edx+5C]
 005CFFA1    call        TMenu.DispatchCommand
>005CFFA6    jmp         005CFFB3
 005CFFA8    mov         byte ptr [edi+18],1;TFormStyleHook.FOverridePaintNC:Boolean
 005CFFAC    mov         eax,edi
 005CFFAE    call        005D2760
 005CFFB3    mov         eax,ebx
 005CFFB5    pop         ebp
 005CFFB6    pop         edi
 005CFFB7    pop         esi
 005CFFB8    pop         ebx
 005CFFB9    ret
*}
end;

//005CFFBC
procedure TFormStyleHook.TMainMenuBarStyleHook.ProcessMenuLoop(ATrackMenu:Boolean);
begin
{*
 005CFFBC    push        ebx
 005CFFBD    push        esi
 005CFFBE    push        edi
 005CFFBF    push        ebp
 005CFFC0    add         esp,0FFFFFFE0
 005CFFC3    mov         byte ptr [esp],dl
 005CFFC6    mov         esi,eax
 005CFFC8    cmp         byte ptr [esi+28],0;TFormStyleHook.FCaptionRect:TRect
>005CFFCC    jne         005D02E7
 005CFFD2    mov         byte ptr [esi+28],1;TFormStyleHook.FCaptionRect:TRect
 005CFFD6    cmp         byte ptr [esp],0
>005CFFDA    je          005CFFE3
 005CFFDC    mov         eax,esi
 005CFFDE    call        005D2760
 005CFFE3    xor         ebx,ebx
 005CFFE5    push        1
 005CFFE7    push        0
 005CFFE9    push        0
 005CFFEB    push        0
 005CFFED    lea         eax,[esp+14]
 005CFFF1    push        eax
 005CFFF2    call        user32.PeekMessageW
 005CFFF7    test        eax,eax
>005CFFF9    je          005D02BF
 005CFFFF    mov         eax,dword ptr [esp+8]
 005D0003    cmp         eax,0A7
>005D0008    jge         005D005E
 005D000A    cmp         eax,1F
>005D000D    jg          005D0038
>005D000F    je          005D02AD
 005D0015    add         eax,0FFFFFFFA
 005D0018    sub         eax,3
>005D001B    jb          005D02AD
 005D0021    sub         eax,7
>005D0024    je          005D00E4
 005D002A    sub         eax,2
>005D002D    je          005D00D1
>005D0033    jmp         005D02B5
 005D0038    sub         eax,86
>005D003D    je          005D02AD
 005D0043    add         eax,0FFFFFFE5
 005D0046    sub         eax,2
>005D0049    jb          005D02AD
 005D004F    dec         eax
 005D0050    sub         eax,2
>005D0053    jb          005D02AD
>005D0059    jmp         005D02B5
 005D005E    cmp         eax,201
>005D0063    jge         005D008D
 005D0065    add         eax,0FFFFFF59
 005D006A    sub         eax,2
>005D006D    jb          005D02AD
 005D0073    sub         eax,57
>005D0076    je          005D00EF
 005D0078    sub         eax,4
>005D007B    je          005D00BB
 005D007D    sub         eax,0FC
>005D0082    je          005D02BF
>005D0088    jmp         005D02B5
 005D008D    add         eax,0FFFFFDFF
 005D0092    sub         eax,2
>005D0095    jb          005D02AD
 005D009B    dec         eax
 005D009C    sub         eax,2
>005D009F    jb          005D02AD
 005D00A5    dec         eax
 005D00A6    sub         eax,2
>005D00A9    jb          005D02AD
 005D00AF    sub         eax,0AE18
>005D00B4    je          005D00E4
>005D00B6    jmp         005D02B5
 005D00BB    cmp         dword ptr [esp+0C],12
>005D00C0    jne         005D02BF
 005D00C6    mov         byte ptr [esi+28],0;TFormStyleHook.FCaptionRect:TRect
 005D00CA    mov         bl,1
>005D00CC    jmp         005D02BF
 005D00D1    mov         byte ptr [esi+28],0;TFormStyleHook.FCaptionRect:TRect
 005D00D5    mov         eax,dword ptr [esp+0C]
 005D00D9    push        eax
 005D00DA    call        user32.PostQuitMessage
>005D00DF    jmp         005D02BF
 005D00E4    mov         byte ptr [esi+28],0;TFormStyleHook.FCaptionRect:TRect
 005D00E8    mov         bl,1
>005D00EA    jmp         005D02BF
 005D00EF    cmp         byte ptr [esi+18],0;TFormStyleHook.FOverridePaintNC:Boolean
>005D00F3    jne         005D0100
 005D00F5    mov         byte ptr [esi+18],1;TFormStyleHook.FOverridePaintNC:Boolean
 005D00F9    mov         eax,esi
 005D00FB    call        TFormStyleHook.TMainMenuBarStyleHook.Invalidate
 005D0100    mov         cl,1
 005D0102    mov         edx,dword ptr [esp+0C]
 005D0106    mov         eax,esi
 005D0108    call        005D038C
 005D010D    mov         edi,eax
 005D010F    cmp         edi,0FFFFFFFF
>005D0112    je          005D0188
 005D0114    cmp         edi,dword ptr [esi+4];TFormStyleHook.FBrush:TBrush
>005D0117    jne         005D0188
 005D0119    mov         eax,dword ptr [esi+4];TFormStyleHook.FBrush:TBrush
 005D011C    mov         edx,eax
 005D011E    add         eax,eax
 005D0120    add         eax,eax
 005D0122    add         eax,eax
 005D0124    sub         eax,edx
 005D0126    mov         edx,dword ptr [esi+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D0129    mov         eax,dword ptr [edx+eax*4+8]
 005D012D    call        TMenuItem.GetCount
 005D0132    test        eax,eax
>005D0134    jne         005D017C
 005D0136    mov         eax,esi
 005D0138    call        005CFE8C
 005D013D    mov         ebp,edi
 005D013F    add         ebp,ebp
 005D0141    add         ebp,ebp
 005D0143    add         ebp,ebp
 005D0145    sub         ebp,edi
 005D0147    mov         eax,dword ptr [esi+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D014A    mov         eax,dword ptr [eax+ebp*4+8]
 005D014E    call        TMenuItem.GetParentMenu
 005D0153    test        eax,eax
>005D0155    je          005D02BF
 005D015B    mov         eax,dword ptr [esi+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D015E    mov         eax,dword ptr [eax+ebp*4+8]
 005D0162    call        TMenuItem.GetParentMenu
 005D0167    mov         edx,dword ptr [esi+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D016A    mov         edx,dword ptr [edx+ebp*4+8]
 005D016E    movzx       edx,word ptr [edx+5C]
 005D0172    call        TMenu.DispatchCommand
>005D0177    jmp         005D02BF
 005D017C    mov         eax,esi
 005D017E    call        005D2760
>005D0183    jmp         005D02BF
 005D0188    mov         eax,dword ptr [esp+0C]
 005D018C    cmp         eax,25
>005D018F    jg          005D01A2
>005D0191    je          005D01E3
 005D0193    sub         eax,0D
>005D0196    je          005D020B
 005D0198    sub         eax,0E
>005D019B    je          005D01AF
>005D019D    jmp         005D02BF
 005D01A2    sub         eax,27
>005D01A5    je          005D01BB
 005D01A7    dec         eax
>005D01A8    je          005D020B
>005D01AA    jmp         005D02BF
 005D01AF    mov         eax,esi
 005D01B1    call        005CFE8C
>005D01B6    jmp         005D02BF
 005D01BB    mov         eax,dword ptr [esi+1C];TFormStyleHook.FText:string
 005D01BE    mov         eax,dword ptr [eax+8]
 005D01C1    cmp         byte ptr [eax+71],1
>005D01C5    jne         005D01D5
 005D01C7    mov         dl,1
 005D01C9    mov         eax,esi
 005D01CB    call        005D0590
>005D01D0    jmp         005D02BF
 005D01D5    mov         dl,1
 005D01D7    mov         eax,esi
 005D01D9    call        005D0404
>005D01DE    jmp         005D02BF
 005D01E3    mov         eax,dword ptr [esi+1C];TFormStyleHook.FText:string
 005D01E6    mov         eax,dword ptr [eax+8]
 005D01E9    cmp         byte ptr [eax+71],1
>005D01ED    jne         005D01FD
 005D01EF    mov         dl,1
 005D01F1    mov         eax,esi
 005D01F3    call        005D0404
>005D01F8    jmp         005D02BF
 005D01FD    mov         dl,1
 005D01FF    mov         eax,esi
 005D0201    call        005D0590
>005D0206    jmp         005D02BF
 005D020B    cmp         byte ptr [esi+84],0
>005D0212    je          005D0227
 005D0214    mov         eax,esi
 005D0216    call        005CFE8C
 005D021B    mov         eax,esi
 005D021D    call        TFormStyleHook.TMainMenuBarStyleHook.TrackMDIChildSystemMenu
>005D0222    jmp         005D02BF
 005D0227    cmp         byte ptr [esi+0A6],0;TFormStyleHook.FMinButtonRect.Top:LongInt
>005D022E    je          005D0240
 005D0230    mov         eax,esi
 005D0232    call        005CFE8C
 005D0237    mov         eax,esi
 005D0239    call        TFormStyleHook.TMainMenuBarStyleHook.TrackSystemMenu
>005D023E    jmp         005D02BF
 005D0240    mov         edi,dword ptr [esi+4];TFormStyleHook.FBrush:TBrush
 005D0243    cmp         edi,0FFFFFFFF
>005D0246    je          005D02BF
 005D0248    mov         eax,edi
 005D024A    add         eax,eax
 005D024C    add         eax,eax
 005D024E    add         eax,eax
 005D0250    sub         eax,edi
 005D0252    mov         edx,dword ptr [esi+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D0255    mov         eax,dword ptr [edx+eax*4+8]
 005D0259    call        TMenuItem.GetCount
 005D025E    test        eax,eax
>005D0260    jne         005D02A4
 005D0262    mov         edi,dword ptr [esi+4];TFormStyleHook.FBrush:TBrush
 005D0265    mov         eax,esi
 005D0267    call        005CFE8C
 005D026C    mov         ebp,edi
 005D026E    add         ebp,ebp
 005D0270    add         ebp,ebp
 005D0272    add         ebp,ebp
 005D0274    sub         ebp,edi
 005D0276    mov         eax,dword ptr [esi+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D0279    mov         eax,dword ptr [eax+ebp*4+8]
 005D027D    call        TMenuItem.GetParentMenu
 005D0282    test        eax,eax
>005D0284    je          005D02BF
 005D0286    mov         eax,dword ptr [esi+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D0289    mov         eax,dword ptr [eax+ebp*4+8]
 005D028D    call        TMenuItem.GetParentMenu
 005D0292    mov         edx,dword ptr [esi+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D0295    mov         edx,dword ptr [edx+ebp*4+8]
 005D0299    movzx       edx,word ptr [edx+5C]
 005D029D    call        TMenu.DispatchCommand
>005D02A2    jmp         005D02BF
 005D02A4    mov         eax,esi
 005D02A6    call        005D2760
>005D02AB    jmp         005D02BF
 005D02AD    mov         byte ptr [esi+28],0;TFormStyleHook.FCaptionRect:TRect
 005D02B1    mov         bl,1
>005D02B3    jmp         005D02BF
 005D02B5    lea         eax,[esp+4]
 005D02B9    push        eax
 005D02BA    call        user32.DispatchMessageW
 005D02BF    cmp         byte ptr [esi+28],0;TFormStyleHook.FCaptionRect:TRect
>005D02C3    jne         005CFFD6
 005D02C9    cmp         byte ptr [esi+8F],0;TFormStyleHook.?f8F:byte
>005D02D0    jne         005D02D9
 005D02D2    mov         eax,esi
 005D02D4    call        005CFE8C
 005D02D9    test        bl,bl
>005D02DB    je          005D02E7
 005D02DD    lea         eax,[esp+4]
 005D02E1    push        eax
 005D02E2    call        user32.DispatchMessageW
 005D02E7    add         esp,20
 005D02EA    pop         ebp
 005D02EB    pop         edi
 005D02EC    pop         esi
 005D02ED    pop         ebx
 005D02EE    ret
*}
end;

//005D02F0
{*function sub_005D02F0(?:TFormStyleHook; ?:?):?;
begin
 005D02F0    push        ebx
 005D02F1    push        esi
 005D02F2    push        edi
 005D02F3    push        ebp
 005D02F4    push        ecx
 005D02F5    mov         byte ptr [esp],dl
 005D02F8    or          ebp,0FFFFFFFF
 005D02FB    mov         esi,dword ptr [eax+2C];TFormStyleHook.FCaptionRect.Top:LongInt
 005D02FE    dec         esi
 005D02FF    test        esi,esi
>005D0301    jl          005D0339
 005D0303    inc         esi
 005D0304    xor         ebx,ebx
 005D0306    mov         edx,ebx
 005D0308    add         edx,edx
 005D030A    add         edx,edx
 005D030C    add         edx,edx
 005D030E    sub         edx,ebx
 005D0310    mov         ecx,dword ptr [eax+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D0313    mov         edi,dword ptr [ecx+edx*4+8]
 005D0317    cmp         byte ptr [edi+4A],0
>005D031B    je          005D0335
 005D031D    cmp         byte ptr [edi+45],0
>005D0321    je          005D0335
 005D0323    mov         ebp,ebx
 005D0325    cmp         byte ptr [esp],0
>005D0329    je          005D0339
 005D032B    mov         dword ptr [eax+4],ebx;TFormStyleHook.FBrush:TBrush
 005D032E    call        TFormStyleHook.TMainMenuBarStyleHook.Invalidate
>005D0333    jmp         005D0339
 005D0335    inc         ebx
 005D0336    dec         esi
>005D0337    jne         005D0306
 005D0339    mov         eax,ebp
 005D033B    pop         edx
 005D033C    pop         ebp
 005D033D    pop         edi
 005D033E    pop         esi
 005D033F    pop         ebx
 005D0340    ret
end;*}

//005D0344
{*function sub_005D0344(?:TFormStyleHook; ?:?):?;
begin
 005D0344    push        ebx
 005D0345    push        esi
 005D0346    push        edi
 005D0347    or          edi,0FFFFFFFF
 005D034A    mov         ebx,dword ptr [eax+2C]
 005D034D    dec         ebx
 005D034E    cmp         ebx,0
>005D0351    jl          005D0386
 005D0353    mov         ecx,ebx
 005D0355    add         ecx,ecx
 005D0357    add         ecx,ecx
 005D0359    add         ecx,ecx
 005D035B    sub         ecx,ebx
 005D035D    mov         esi,dword ptr [eax+30]
 005D0360    mov         esi,dword ptr [esi+ecx*4+8]
 005D0364    cmp         byte ptr [esi+4A],0
>005D0368    je          005D0380
 005D036A    cmp         byte ptr [esi+45],0
>005D036E    je          005D0380
 005D0370    mov         edi,ebx
 005D0372    test        dl,dl
>005D0374    je          005D0386
 005D0376    mov         dword ptr [eax+4],ebx
 005D0379    call        TFormStyleHook.TMainMenuBarStyleHook.Invalidate
>005D037E    jmp         005D0386
 005D0380    dec         ebx
 005D0381    cmp         ebx,0FFFFFFFF
>005D0384    jne         005D0353
 005D0386    mov         eax,edi
 005D0388    pop         edi
 005D0389    pop         esi
 005D038A    pop         ebx
 005D038B    ret
end;*}

//005D038C
{*function sub_005D038C(?:TFormStyleHook; ?:?; ?:?):?;
begin
 005D038C    push        ebx
 005D038D    push        esi
 005D038E    push        edi
 005D038F    push        ebp
 005D0390    add         esp,0FFFFFFF4
 005D0393    mov         byte ptr [esp+4],cl
 005D0397    mov         dword ptr [esp],edx
 005D039A    mov         esi,eax
 005D039C    mov         dword ptr [esp+8],0FFFFFFFF
 005D03A4    mov         ebp,dword ptr [esi+2C];TFormStyleHook.FCaptionRect.Top:LongInt
 005D03A7    dec         ebp
 005D03A8    test        ebp,ebp
>005D03AA    jl          005D03F7
 005D03AC    inc         ebp
 005D03AD    xor         ebx,ebx
 005D03AF    mov         eax,ebx
 005D03B1    add         eax,eax
 005D03B3    add         eax,eax
 005D03B5    add         eax,eax
 005D03B7    sub         eax,ebx
 005D03B9    mov         edx,dword ptr [esi+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D03BC    mov         edi,dword ptr [edx+eax*4+8]
 005D03C0    cmp         byte ptr [edi+4A],0
>005D03C4    je          005D03F3
 005D03C6    cmp         byte ptr [edi+45],0
>005D03CA    je          005D03F3
 005D03CC    mov         edx,dword ptr [edi+40]
 005D03CF    movzx       eax,word ptr [esp]
 005D03D3    call        IsAccel
 005D03D8    test        al,al
>005D03DA    je          005D03F3
 005D03DC    mov         dword ptr [esp+8],ebx
 005D03E0    cmp         byte ptr [esp+4],0
>005D03E5    je          005D03F7
 005D03E7    mov         dword ptr [esi+4],ebx;TFormStyleHook.FBrush:TBrush
 005D03EA    mov         eax,esi
 005D03EC    call        TFormStyleHook.TMainMenuBarStyleHook.Invalidate
>005D03F1    jmp         005D03F7
 005D03F3    inc         ebx
 005D03F4    dec         ebp
>005D03F5    jne         005D03AF
 005D03F7    mov         eax,dword ptr [esp+8]
 005D03FB    add         esp,0C
 005D03FE    pop         ebp
 005D03FF    pop         edi
 005D0400    pop         esi
 005D0401    pop         ebx
 005D0402    ret
end;*}

//005D0404
{*function sub_005D0404(?:TFormStyleHook; ?:?):?;
begin
 005D0404    push        ebx
 005D0405    push        esi
 005D0406    push        edi
 005D0407    push        ecx
 005D0408    mov         byte ptr [esp],dl
 005D040B    mov         ebx,eax
 005D040D    or          edi,0FFFFFFFF
 005D0410    mov         eax,dword ptr [ebx+4];TFormStyleHook.FBrush:TBrush
 005D0413    cmp         eax,0FFFFFFFF
>005D0416    jne         005D041C
 005D0418    xor         eax,eax
>005D041A    jmp         005D041D
 005D041C    inc         eax
 005D041D    mov         esi,eax
 005D041F    mov         eax,dword ptr [ebx+2C];TFormStyleHook.FCaptionRect.Top:LongInt
 005D0422    dec         eax
 005D0423    sub         eax,esi
>005D0425    jl          005D045D
 005D0427    inc         eax
 005D0428    mov         edx,esi
 005D042A    add         edx,edx
 005D042C    add         edx,edx
 005D042E    add         edx,edx
 005D0430    sub         edx,esi
 005D0432    mov         ecx,dword ptr [ebx+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D0435    mov         edx,dword ptr [ecx+edx*4+8]
 005D0439    cmp         byte ptr [edx+4A],0
>005D043D    je          005D0459
 005D043F    cmp         byte ptr [edx+45],0
>005D0443    je          005D0459
 005D0445    mov         edi,esi
 005D0447    cmp         byte ptr [esp],0
>005D044B    je          005D045D
 005D044D    mov         dword ptr [ebx+4],esi;TFormStyleHook.FBrush:TBrush
 005D0450    mov         eax,ebx
 005D0452    call        TFormStyleHook.TMainMenuBarStyleHook.Invalidate
>005D0457    jmp         005D045D
 005D0459    inc         esi
 005D045A    dec         eax
>005D045B    jne         005D0428
 005D045D    cmp         edi,0FFFFFFFF
>005D0460    jne         005D047F
 005D0462    mov         eax,ebx
 005D0464    call        005CFD38
 005D0469    test        al,al
>005D046B    jne         005D047F
 005D046D    movzx       edx,byte ptr [esp]
 005D0471    mov         eax,ebx
 005D0473    call        005D02F0
 005D0478    mov         edi,eax
>005D047A    jmp         005D0588
 005D047F    cmp         edi,0FFFFFFFF
>005D0482    jne         005D052C
 005D0488    mov         eax,ebx
 005D048A    call        005CFD38
 005D048F    test        al,al
>005D0491    je          005D052C
 005D0497    cmp         byte ptr [ebx+8C],0;TFormStyleHook.FMDIHorzScrollBar:TWinControl
>005D049E    jne         005D052C
 005D04A4    cmp         byte ptr [ebx+0A6],0;TFormStyleHook.FMinButtonRect.Top:LongInt
>005D04AB    jne         005D04DA
 005D04AD    cmp         byte ptr [ebx+84],0
>005D04B4    jne         005D04DA
 005D04B6    mov         byte ptr [ebx+0A6],1;TFormStyleHook.FMinButtonRect.Top:LongInt
 005D04BD    mov         byte ptr [ebx+84],0
 005D04C4    cmp         byte ptr [esp],0
>005D04C8    je          005D0588
 005D04CE    mov         eax,ebx
 005D04D0    call        TFormStyleHook.TMainMenuBarStyleHook.Invalidate
>005D04D5    jmp         005D0588
 005D04DA    mov         eax,ebx
 005D04DC    call        005CFCF4
 005D04E1    test        al,al
>005D04E3    je          005D050F
 005D04E5    cmp         byte ptr [ebx+84],0
>005D04EC    jne         005D050F
 005D04EE    mov         byte ptr [ebx+0A6],0;TFormStyleHook.FMinButtonRect.Top:LongInt
 005D04F5    mov         byte ptr [ebx+84],1
 005D04FC    cmp         byte ptr [esp],0
>005D0500    je          005D0588
 005D0506    mov         eax,ebx
 005D0508    call        TFormStyleHook.TMainMenuBarStyleHook.Invalidate
>005D050D    jmp         005D0588
 005D050F    mov         byte ptr [ebx+0A6],0;TFormStyleHook.FMinButtonRect.Top:LongInt
 005D0516    mov         byte ptr [ebx+84],0
 005D051D    movzx       edx,byte ptr [esp]
 005D0521    mov         eax,ebx
 005D0523    call        005D02F0
 005D0528    mov         edi,eax
>005D052A    jmp         005D0588
 005D052C    cmp         edi,0FFFFFFFF
>005D052F    jne         005D0588
 005D0531    cmp         byte ptr [ebx+8C],0;TFormStyleHook.FMDIHorzScrollBar:TWinControl
>005D0538    je          005D0588
 005D053A    mov         eax,ebx
 005D053C    call        005CFD38
 005D0541    and         al,byte ptr [esp]
>005D0544    je          005D0556
 005D0546    mov         eax,ebx
 005D0548    call        005CFE8C
 005D054D    mov         eax,ebx
 005D054F    call        TFormStyleHook.TMainMenuBarStyleHook.TrackSystemMenu
>005D0554    jmp         005D0588
 005D0556    mov         eax,ebx
 005D0558    call        005CFCF4
 005D055D    and         al,byte ptr [esp]
>005D0560    je          005D0572
 005D0562    mov         eax,ebx
 005D0564    call        005CFE8C
 005D0569    mov         eax,ebx
 005D056B    call        TFormStyleHook.TMainMenuBarStyleHook.TrackMDIChildSystemMenu
>005D0570    jmp         005D0588
 005D0572    cmp         dword ptr [ebx+88],0;TFormStyleHook.FMDIClientInstance:Pointer
>005D0579    jne         005D0588
 005D057B    movzx       edx,byte ptr [esp]
 005D057F    mov         eax,ebx
 005D0581    call        005D02F0
 005D0586    mov         edi,eax
 005D0588    mov         eax,edi
 005D058A    pop         edx
 005D058B    pop         edi
 005D058C    pop         esi
 005D058D    pop         ebx
 005D058E    ret
end;*}

//005D0590
{*function sub_005D0590(?:TFormStyleHook; ?:?):?;
begin
 005D0590    push        ebx
 005D0591    push        esi
 005D0592    push        edi
 005D0593    push        ebp
 005D0594    mov         ebx,edx
 005D0596    mov         esi,eax
 005D0598    or          edi,0FFFFFFFF
 005D059B    mov         eax,dword ptr [esi+4];TFormStyleHook.FBrush:TBrush
 005D059E    cmp         eax,0FFFFFFFF
>005D05A1    jne         005D05A8
 005D05A3    mov         eax,dword ptr [esi+2C];TFormStyleHook.FCaptionRect.Top:LongInt
>005D05A6    jmp         005D05A9
 005D05A8    dec         eax
 005D05A9    mov         ebp,eax
 005D05AB    cmp         ebp,0
>005D05AE    jl          005D05E5
 005D05B0    mov         eax,ebp
 005D05B2    add         eax,eax
 005D05B4    add         eax,eax
 005D05B6    add         eax,eax
 005D05B8    sub         eax,ebp
 005D05BA    mov         edx,dword ptr [esi+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D05BD    mov         eax,dword ptr [edx+eax*4+8]
 005D05C1    cmp         byte ptr [eax+4A],0
>005D05C5    je          005D05DF
 005D05C7    cmp         byte ptr [eax+45],0
>005D05CB    je          005D05DF
 005D05CD    mov         edi,ebp
 005D05CF    test        bl,bl
>005D05D1    je          005D05E5
 005D05D3    mov         dword ptr [esi+4],ebp;TFormStyleHook.FBrush:TBrush
 005D05D6    mov         eax,esi
 005D05D8    call        TFormStyleHook.TMainMenuBarStyleHook.Invalidate
>005D05DD    jmp         005D05E5
 005D05DF    dec         ebp
 005D05E0    cmp         ebp,0FFFFFFFF
>005D05E3    jne         005D05B0
 005D05E5    cmp         edi,0FFFFFFFF
>005D05E8    jne         005D0605
 005D05EA    mov         eax,esi
 005D05EC    call        005CFD38
 005D05F1    test        al,al
>005D05F3    jne         005D0605
 005D05F5    mov         edx,ebx
 005D05F7    mov         eax,esi
 005D05F9    call        005D0344
 005D05FE    mov         edi,eax
>005D0600    jmp         005D06FC
 005D0605    cmp         edi,0FFFFFFFF
>005D0608    jne         005D06A4
 005D060E    mov         eax,esi
 005D0610    call        005CFD38
 005D0615    test        al,al
>005D0617    je          005D06A4
 005D061D    cmp         byte ptr [esi+8C],0;TFormStyleHook.FMDIHorzScrollBar:TWinControl
>005D0624    jne         005D06A4
 005D0626    mov         eax,esi
 005D0628    call        005CFCF4
 005D062D    test        al,al
>005D062F    je          005D0665
 005D0631    cmp         byte ptr [esi+84],0
>005D0638    jne         005D0665
 005D063A    cmp         byte ptr [esi+0A6],0;TFormStyleHook.FMinButtonRect.Top:LongInt
>005D0641    jne         005D0665
 005D0643    mov         byte ptr [esi+0A6],0;TFormStyleHook.FMinButtonRect.Top:LongInt
 005D064A    mov         byte ptr [esi+84],1
 005D0651    test        bl,bl
>005D0653    je          005D06FC
 005D0659    mov         eax,esi
 005D065B    call        TFormStyleHook.TMainMenuBarStyleHook.Invalidate
>005D0660    jmp         005D06FC
 005D0665    cmp         byte ptr [esi+0A6],0;TFormStyleHook.FMinButtonRect.Top:LongInt
>005D066C    jne         005D0689
 005D066E    mov         byte ptr [esi+0A6],1;TFormStyleHook.FMinButtonRect.Top:LongInt
 005D0675    mov         byte ptr [esi+84],0
 005D067C    test        bl,bl
>005D067E    je          005D06FC
 005D0680    mov         eax,esi
 005D0682    call        TFormStyleHook.TMainMenuBarStyleHook.Invalidate
>005D0687    jmp         005D06FC
 005D0689    mov         byte ptr [esi+0A6],0;TFormStyleHook.FMinButtonRect.Top:LongInt
 005D0690    mov         byte ptr [esi+84],0
 005D0697    mov         edx,ebx
 005D0699    mov         eax,esi
 005D069B    call        005D0344
 005D06A0    mov         edi,eax
>005D06A2    jmp         005D06FC
 005D06A4    cmp         edi,0FFFFFFFF
>005D06A7    jne         005D06FC
 005D06A9    cmp         byte ptr [esi+8C],0;TFormStyleHook.FMDIHorzScrollBar:TWinControl
>005D06B0    je          005D06FC
 005D06B2    mov         eax,esi
 005D06B4    call        005CFCF4
 005D06B9    test        al,bl
>005D06BB    je          005D06CD
 005D06BD    mov         eax,esi
 005D06BF    call        005CFE8C
 005D06C4    mov         eax,esi
 005D06C6    call        TFormStyleHook.TMainMenuBarStyleHook.TrackMDIChildSystemMenu
>005D06CB    jmp         005D06FC
 005D06CD    mov         eax,esi
 005D06CF    call        005CFD38
 005D06D4    test        al,bl
>005D06D6    je          005D06E8
 005D06D8    mov         eax,esi
 005D06DA    call        005CFE8C
 005D06DF    mov         eax,esi
 005D06E1    call        TFormStyleHook.TMainMenuBarStyleHook.TrackSystemMenu
>005D06E6    jmp         005D06FC
 005D06E8    cmp         dword ptr [esi+88],0;TFormStyleHook.FMDIClientInstance:Pointer
>005D06EF    jne         005D06FC
 005D06F1    mov         edx,ebx
 005D06F3    mov         eax,esi
 005D06F5    call        005D0344
 005D06FA    mov         edi,eax
 005D06FC    mov         eax,edi
 005D06FE    pop         ebp
 005D06FF    pop         edi
 005D0700    pop         esi
 005D0701    pop         ebx
 005D0702    ret
end;*}

//005D0704
{*procedure sub_005D0704(?:TFormStyleHook; ?:?);
begin
 005D0704    push        ebx
 005D0705    push        esi
 005D0706    push        edi
 005D0707    add         esp,0FFFFFFBC
 005D070A    mov         esi,edx
 005D070C    lea         edi,[esp+18]
 005D0710    push        ecx
 005D0711    mov         ecx,7
 005D0716    rep movs    dword ptr [edi],dword ptr [esi]
 005D0718    pop         ecx
 005D0719    mov         ebx,ecx
 005D071B    mov         esi,eax
 005D071D    mov         edi,dword ptr [esp+24]
 005D0721    lea         eax,[esp+24]
 005D0725    call        RectHeight
 005D072A    add         eax,dword ptr [esp+28]
 005D072E    mov         dword ptr [esp+8],edi
 005D0732    mov         dword ptr [esp+0C],eax
 005D0736    mov         eax,dword ptr [esp+8]
 005D073A    mov         dword ptr [ebx],eax
 005D073C    mov         eax,dword ptr [esp+0C]
 005D0740    mov         dword ptr [ebx+4],eax
 005D0743    mov         eax,dword ptr [ebx]
 005D0745    mov         edx,dword ptr [esi+1C]
 005D0748    add         eax,dword ptr [edx+0B0]
 005D074E    add         eax,dword ptr [esi+8]
 005D0751    mov         dword ptr [ebx],eax
 005D0753    mov         eax,dword ptr [ebx+4]
 005D0756    mov         edx,dword ptr [esi+1C]
 005D0759    add         eax,dword ptr [edx+0DC]
 005D075F    add         eax,dword ptr [esi+0C]
 005D0762    mov         dword ptr [ebx+4],eax
 005D0765    lea         eax,[esp+24]
 005D0769    call        RectWidth
 005D076E    add         eax,dword ptr [ebx]
 005D0770    mov         edx,dword ptr [ebx+4]
 005D0773    mov         dword ptr [esp+10],eax
 005D0777    mov         dword ptr [esp+14],edx
 005D077B    mov         eax,dword ptr [esp+10]
 005D077F    mov         dword ptr [esp],eax
 005D0782    mov         eax,dword ptr [esp+14]
 005D0786    mov         dword ptr [esp+4],eax
 005D078A    mov         edx,ebx
 005D078C    xor         ecx,ecx
 005D078E    mov         eax,[007CA7CC];Screen:TScreen
 005D0793    call        TScreen.MonitorFromPoint
 005D0798    mov         edi,eax
 005D079A    mov         edx,esp
 005D079C    xor         ecx,ecx
 005D079E    mov         eax,[007CA7CC];Screen:TScreen
 005D07A3    call        TScreen.MonitorFromPoint
 005D07A8    cmp         edi,eax
>005D07AA    je          005D0800
 005D07AC    mov         eax,dword ptr [esi+1C]
 005D07AF    mov         eax,dword ptr [eax+8]
 005D07B2    cmp         byte ptr [eax+71],1
>005D07B6    je          005D07D7
 005D07B8    mov         edx,esp
 005D07BA    xor         ecx,ecx
 005D07BC    mov         eax,[007CA7CC];Screen:TScreen
 005D07C1    call        TScreen.MonitorFromPoint
 005D07C6    lea         edx,[esp+34]
 005D07CA    call        005C7C24
 005D07CF    mov         eax,dword ptr [esp+34]
 005D07D3    mov         dword ptr [ebx],eax
>005D07D5    jmp         005D0800
 005D07D7    mov         edx,ebx
 005D07D9    xor         ecx,ecx
 005D07DB    mov         eax,[007CA7CC];Screen:TScreen
 005D07E0    call        TScreen.MonitorFromPoint
 005D07E5    lea         edx,[esp+34]
 005D07E9    call        005C7C24
 005D07EE    mov         edi,dword ptr [esp+3C]
 005D07F2    lea         eax,[esp+24]
 005D07F6    call        RectWidth
 005D07FB    sub         edi,eax
 005D07FD    dec         edi
 005D07FE    mov         dword ptr [ebx],edi
 005D0800    mov         eax,dword ptr [esi+1C]
 005D0803    mov         eax,dword ptr [eax+8]
 005D0806    cmp         byte ptr [eax+71],1
>005D080A    jne         005D0817
 005D080C    lea         eax,[esp+24]
 005D0810    call        RectWidth
 005D0815    add         dword ptr [ebx],eax
 005D0817    add         esp,44
 005D081A    pop         edi
 005D081B    pop         esi
 005D081C    pop         ebx
 005D081D    ret
end;*}

//005D0820
procedure sub_005D0820(?:TFormStyleHook);
begin
{*
 005D0820    push        ebx
 005D0821    mov         ebx,eax
 005D0823    mov         byte ptr [ebx+0A4],1
 005D082A    mov         dword ptr ds:[7CA7D4],ebx;gvar_007CA7D4
 005D0830    xor         eax,eax
 005D0832    mov         [007CA7D0],eax;gvar_007CA7D0
 005D0837    cmp         dword ptr [ebx+88],0
>005D083E    jne         005D085B
 005D0840    call        kernel32.GetCurrentThreadId
 005D0845    push        eax
 005D0846    push        0
 005D0848    mov         eax,5D1CDC;sub_005D1CDC
 005D084D    push        eax
 005D084E    push        0FF
 005D0850    call        user32.SetWindowsHookExW
 005D0855    mov         dword ptr [ebx+88],eax
 005D085B    pop         ebx
 005D085C    ret
*}
end;

//005D0860
procedure sub_005D0860(?:TFormStyleHook);
begin
{*
 005D0860    push        ebx
 005D0861    mov         ebx,eax
 005D0863    mov         eax,dword ptr [ebx+88]
 005D0869    test        eax,eax
>005D086B    je          005D0873
 005D086D    push        eax
 005D086E    call        user32.UnhookWindowsHookEx
 005D0873    xor         eax,eax
 005D0875    mov         [007CA7D4],eax;gvar_007CA7D4
 005D087A    xor         eax,eax
 005D087C    mov         [007CA7D0],eax;gvar_007CA7D0
 005D0881    xor         eax,eax
 005D0883    mov         dword ptr [ebx+88],eax
 005D0889    mov         byte ptr [ebx+0A4],0
 005D0890    pop         ebx
 005D0891    ret
*}
end;

//005D0894
{*function sub_005D0894(?:?):?;
begin
 005D0894    push        ebx
 005D0895    add         esp,0FFFFFFF8
 005D0898    mov         ebx,eax
 005D089A    mov         edx,esp
 005D089C    mov         eax,[007C4DA0];^gvar_007CA5D4
 005D08A1    mov         eax,dword ptr [eax]
 005D08A3    call        TMouse.GetCursorPos
 005D08A8    mov         eax,dword ptr [ebx+1C]
 005D08AB    mov         edx,dword ptr [esp]
 005D08AE    sub         edx,dword ptr [eax+0B0]
 005D08B4    sub         edx,dword ptr [ebx+8]
 005D08B7    mov         dword ptr [esp],edx
 005D08BA    mov         edx,dword ptr [esp+4]
 005D08BE    sub         edx,dword ptr [eax+0DC]
 005D08C4    sub         edx,dword ptr [ebx+0C]
 005D08C7    mov         dword ptr [esp+4],edx
 005D08CB    mov         ecx,edx
 005D08CD    mov         eax,ebx
 005D08CF    mov         edx,dword ptr [esp]
 005D08D2    call        005D09E4
 005D08D7    pop         ecx
 005D08D8    pop         edx
 005D08D9    pop         ebx
 005D08DA    ret
end;*}

//005D08DC
procedure sub_005D08DC(?:TFormStyleHook);
begin
{*
 005D08DC    push        ebx
 005D08DD    mov         ebx,eax
 005D08DF    mov         eax,dword ptr [ebx+1C]
 005D08E2    call        005D3A90
 005D08E7    call        005C2D30
 005D08EC    test        eax,eax
>005D08EE    je          005D0914
 005D08F0    push        0
 005D08F2    push        0F060
 005D08F7    push        112
 005D08FC    mov         eax,dword ptr [ebx+1C]
 005D08FF    call        005D3A90
 005D0904    call        005C2D30
 005D0909    call        TWinControl.GetHandle
 005D090E    push        eax
 005D090F    call        user32.SendMessageW
 005D0914    pop         ebx
 005D0915    ret
*}
end;

//005D0918
procedure sub_005D0918(?:TFormStyleHook);
begin
{*
 005D0918    push        ebx
 005D0919    mov         ebx,eax
 005D091B    mov         eax,dword ptr [ebx+1C]
 005D091E    call        005D3A90
 005D0923    call        005C2D30
 005D0928    test        eax,eax
>005D092A    je          005D0950
 005D092C    push        0
 005D092E    push        0F120
 005D0933    push        112
 005D0938    mov         eax,dword ptr [ebx+1C]
 005D093B    call        005D3A90
 005D0940    call        005C2D30
 005D0945    call        TWinControl.GetHandle
 005D094A    push        eax
 005D094B    call        user32.SendMessageW
 005D0950    pop         ebx
 005D0951    ret
*}
end;

//005D0954
procedure sub_005D0954(?:TFormStyleHook);
begin
{*
 005D0954    push        ebx
 005D0955    mov         ebx,eax
 005D0957    mov         eax,dword ptr [ebx+1C]
 005D095A    call        005D3A90
 005D095F    call        005C2D30
 005D0964    test        eax,eax
>005D0966    je          005D098C
 005D0968    push        0
 005D096A    push        0F020
 005D096F    push        112
 005D0974    mov         eax,dword ptr [ebx+1C]
 005D0977    call        005D3A90
 005D097C    call        005C2D30
 005D0981    call        TWinControl.GetHandle
 005D0986    push        eax
 005D0987    call        user32.SendMessageW
 005D098C    pop         ebx
 005D098D    ret
*}
end;

//005D0990
{*function sub_005D0990(?:TFormStyleHook; ?:Integer; ?:Integer):?;
begin
 005D0990    push        ebx
 005D0991    push        esi
 005D0992    push        edi
 005D0993    push        ebp
 005D0994    add         esp,0FFFFFFF0
 005D0997    mov         dword ptr [esp],ecx
 005D099A    mov         ebp,edx
 005D099C    mov         esi,eax
 005D099E    mov         dword ptr [esp+4],0FFFFFFFF
 005D09A6    xor         ebx,ebx
 005D09A8    mov         dword ptr [esp+8],ebp
 005D09AC    mov         eax,dword ptr [esp]
 005D09AF    mov         dword ptr [esp+0C],eax
 005D09B3    lea         edx,[esp+8]
 005D09B7    lea         edi,[ebx+ebx*2]
 005D09BA    lea         eax,[esi+edi*8+44]
 005D09BE    call        TRect.Contains
 005D09C3    test        al,al
>005D09C5    je          005D09D1
 005D09C7    mov         eax,dword ptr [esi+edi*8+3C]
 005D09CB    mov         dword ptr [esp+4],eax
>005D09CF    jmp         005D09D7
 005D09D1    inc         ebx
 005D09D2    cmp         ebx,3
>005D09D5    jne         005D09A8
 005D09D7    mov         eax,dword ptr [esp+4]
 005D09DB    add         esp,10
 005D09DE    pop         ebp
 005D09DF    pop         edi
 005D09E0    pop         esi
 005D09E1    pop         ebx
 005D09E2    ret
end;*}

//005D09E4
{*function sub_005D09E4(?:TFormStyleHook; ?:Integer; ?:Integer):?;
begin
 005D09E4    push        ebx
 005D09E5    push        esi
 005D09E6    push        edi
 005D09E7    push        ebp
 005D09E8    add         esp,0FFFFFFEC
 005D09EB    mov         dword ptr [esp+4],ecx
 005D09EF    mov         dword ptr [esp],edx
 005D09F2    mov         esi,eax
 005D09F4    mov         dword ptr [esp+8],0FFFFFFFF
 005D09FC    mov         edi,dword ptr [esi+2C]
 005D09FF    dec         edi
 005D0A00    test        edi,edi
>005D0A02    jl          005D0A57
 005D0A04    inc         edi
 005D0A05    xor         ebx,ebx
 005D0A07    mov         ebp,ebx
 005D0A09    add         ebp,ebp
 005D0A0B    add         ebp,ebp
 005D0A0D    add         ebp,ebp
 005D0A0F    sub         ebp,ebx
 005D0A11    mov         eax,dword ptr [esi+30]
 005D0A14    mov         eax,dword ptr [eax+ebp*4+8]
 005D0A18    cmp         byte ptr [eax+4A],0
>005D0A1C    je          005D0A53
 005D0A1E    cmp         byte ptr [eax+45],0
>005D0A22    je          005D0A53
 005D0A24    mov         eax,dword ptr [esp]
 005D0A27    mov         dword ptr [esp+0C],eax
 005D0A2B    mov         eax,dword ptr [esp+4]
 005D0A2F    mov         dword ptr [esp+10],eax
 005D0A33    mov         eax,dword ptr [esi+30]
 005D0A36    lea         eax,[eax+ebp*4+0C]
 005D0A3A    lea         edx,[esp+0C]
 005D0A3E    call        TRect.Contains
 005D0A43    test        al,al
>005D0A45    je          005D0A53
 005D0A47    mov         eax,dword ptr [esi+30]
 005D0A4A    mov         eax,dword ptr [eax+ebp*4]
 005D0A4D    mov         dword ptr [esp+8],eax
>005D0A51    jmp         005D0A57
 005D0A53    inc         ebx
 005D0A54    dec         edi
>005D0A55    jne         005D0A07
 005D0A57    mov         eax,dword ptr [esp+8]
 005D0A5B    add         esp,14
 005D0A5E    pop         ebp
 005D0A5F    pop         edi
 005D0A60    pop         esi
 005D0A61    pop         ebx
 005D0A62    ret
end;*}

//005D0A64
procedure TFormStyleHook.TMainMenuBarStyleHook.Invalidate;
begin
{*
 005D0A64    mov         eax,dword ptr [eax+1C];TFormStyleHook.FText:string
 005D0A67    mov         edx,dword ptr [eax]
 005D0A69    call        dword ptr [edx+2C]
 005D0A6C    ret
*}
end;

//005D0A70
{*function sub_005D0A70(?:TFormStyleHook):?;
begin
 005D0A70    push        ebx
 005D0A71    mov         ebx,eax
 005D0A73    mov         eax,dword ptr [ebx+1C]
 005D0A76    call        005D3A90
 005D0A7B    cmp         byte ptr [eax+2C2],1
>005D0A82    jne         005D0A88
 005D0A84    xor         eax,eax
 005D0A86    pop         ebx
 005D0A87    ret
 005D0A88    mov         eax,dword ptr [ebx+1C]
 005D0A8B    call        005D3A90
 005D0A90    mov         eax,dword ptr [eax+2D8]
 005D0A96    pop         ebx
 005D0A97    ret
end;*}

//005D0A98
{*procedure sub_005D0A98(?:Integer; ?:Integer; ?:TMenuItem; ?:?);
begin
 005D0A98    push        ebp
 005D0A99    mov         ebp,esp
 005D0A9B    push        ecx
 005D0A9C    push        ebx
 005D0A9D    push        esi
 005D0A9E    push        edi
 005D0A9F    mov         dword ptr [ebp-4],ecx
 005D0AA2    inc         dword ptr [edx]
 005D0AA4    mov         ecx,dword ptr [edx]
 005D0AA6    dec         ecx
 005D0AA7    cmp         eax,ecx
>005D0AA9    jne         005D0ACA
 005D0AAB    mov         edx,eax
 005D0AAD    add         eax,eax
 005D0AAF    add         eax,eax
 005D0AB1    add         eax,eax
 005D0AB3    sub         eax,edx
 005D0AB5    mov         edx,dword ptr [ebp+8]
 005D0AB8    mov         edx,dword ptr [edx+8]
 005D0ABB    mov         edx,dword ptr [edx-4]
 005D0ABE    mov         edx,dword ptr [edx+30]
 005D0AC1    mov         ecx,dword ptr [ebp-4]
 005D0AC4    mov         dword ptr [edx+eax*4+8],ecx
>005D0AC8    jmp         005D0B20
 005D0ACA    lea         ebx,[eax+1]
 005D0ACD    sub         ebx,ecx
>005D0ACF    jg          005D0B03
 005D0AD1    dec         ebx
 005D0AD2    mov         edx,ecx
 005D0AD4    mov         ecx,edx
 005D0AD6    add         ecx,ecx
 005D0AD8    add         ecx,ecx
 005D0ADA    add         ecx,ecx
 005D0ADC    sub         ecx,edx
 005D0ADE    mov         esi,dword ptr [ebp+8]
 005D0AE1    mov         esi,dword ptr [esi+8]
 005D0AE4    mov         esi,dword ptr [esi-4]
 005D0AE7    mov         esi,dword ptr [esi+30]
 005D0AEA    push        dword ptr [esi+ecx*4-14]
 005D0AEE    mov         esi,dword ptr [ebp+8]
 005D0AF1    mov         esi,dword ptr [esi+8]
 005D0AF4    mov         esi,dword ptr [esi-4]
 005D0AF7    mov         esi,dword ptr [esi+30]
 005D0AFA    pop         edi
 005D0AFB    mov         dword ptr [esi+ecx*4+8],edi
 005D0AFF    dec         edx
 005D0B00    inc         ebx
>005D0B01    jne         005D0AD4
 005D0B03    mov         edx,eax
 005D0B05    add         eax,eax
 005D0B07    add         eax,eax
 005D0B09    add         eax,eax
 005D0B0B    sub         eax,edx
 005D0B0D    mov         edx,dword ptr [ebp+8]
 005D0B10    mov         edx,dword ptr [edx+8]
 005D0B13    mov         edx,dword ptr [edx-4]
 005D0B16    mov         edx,dword ptr [edx+30]
 005D0B19    mov         ecx,dword ptr [ebp-4]
 005D0B1C    mov         dword ptr [edx+eax*4+8],ecx
 005D0B20    pop         edi
 005D0B21    pop         esi
 005D0B22    pop         ebx
 005D0B23    pop         ecx
 005D0B24    pop         ebp
 005D0B25    ret
end;*}

//005D0B28
{*function sub_005D0B28(?:TMenuItem; ?:?):?;
begin
 005D0B28    push        ebp
 005D0B29    mov         ebp,esp
 005D0B2B    push        ecx
 005D0B2C    push        ebx
 005D0B2D    push        esi
 005D0B2E    push        edi
 005D0B2F    mov         edi,eax
 005D0B31    mov         byte ptr [ebp-1],1
 005D0B35    mov         eax,dword ptr [ebp+8]
 005D0B38    mov         eax,dword ptr [eax-4]
 005D0B3B    mov         eax,dword ptr [eax+44]
 005D0B3E    call        TMenuItem.GetCount
 005D0B43    mov         ebx,eax
 005D0B45    dec         ebx
 005D0B46    test        ebx,ebx
>005D0B48    jl          005D0B70
 005D0B4A    inc         ebx
 005D0B4B    xor         esi,esi
 005D0B4D    mov         eax,dword ptr [ebp+8]
 005D0B50    mov         eax,dword ptr [eax-4]
 005D0B53    mov         eax,dword ptr [eax+44]
 005D0B56    mov         edx,esi
 005D0B58    call        TMenuItem.GetItem
 005D0B5D    movzx       eax,byte ptr [eax+4B];TMenuItem.FGroupIndex:byte
 005D0B61    cmp         al,byte ptr [edi+4B]
>005D0B64    jne         005D0B6C
 005D0B66    mov         byte ptr [ebp-1],0
>005D0B6A    jmp         005D0B70
 005D0B6C    inc         esi
 005D0B6D    dec         ebx
>005D0B6E    jne         005D0B4D
 005D0B70    movzx       eax,byte ptr [ebp-1]
 005D0B74    pop         edi
 005D0B75    pop         esi
 005D0B76    pop         ebx
 005D0B77    pop         ecx
 005D0B78    pop         ebp
 005D0B79    ret
end;*}

//005D0B7C
{*function sub_005D0B7C(?:?; ?:?; ?:?):?;
begin
 005D0B7C    push        ebp
 005D0B7D    mov         ebp,esp
 005D0B7F    add         esp,0FFFFFFF0
 005D0B82    push        ebx
 005D0B83    push        esi
 005D0B84    push        edi
 005D0B85    mov         dword ptr [ebp-4],edx
 005D0B88    mov         edi,eax
 005D0B8A    test        edi,edi
>005D0B8C    jne         005D0B98
 005D0B8E    xor         eax,eax
 005D0B90    mov         dword ptr [ebp-8],eax
>005D0B93    jmp         005D0D1E
 005D0B98    cmp         dword ptr [ebp-4],0
>005D0B9C    je          005D0CC3
 005D0BA2    mov         eax,dword ptr [edi+44]
 005D0BA5    call        TMenuItem.GetCount
 005D0BAA    mov         ebx,eax
 005D0BAC    mov         eax,dword ptr [ebp-4]
 005D0BAF    mov         eax,dword ptr [eax+44]
 005D0BB2    call        TMenuItem.GetCount
 005D0BB7    add         ebx,eax
 005D0BB9    push        ebx
 005D0BBA    mov         eax,dword ptr [ebp+8]
 005D0BBD    mov         eax,dword ptr [eax-4]
 005D0BC0    add         eax,30
 005D0BC3    mov         ecx,1
 005D0BC8    mov         edx,dword ptr ds:[5BD978];:TFormStyleHook.TMainMenuBarStyleHook.:1
 005D0BCE    call        @DynArraySetLength
 005D0BD3    add         esp,4
 005D0BD6    mov         eax,dword ptr [ebp-4]
 005D0BD9    mov         eax,dword ptr [eax+44]
 005D0BDC    call        TMenuItem.GetCount
 005D0BE1    mov         dword ptr [ebp-8],eax
 005D0BE4    mov         esi,dword ptr [ebp-8]
 005D0BE7    dec         esi
 005D0BE8    test        esi,esi
>005D0BEA    jl          005D0C17
 005D0BEC    inc         esi
 005D0BED    xor         ebx,ebx
 005D0BEF    mov         eax,dword ptr [ebp-4]
 005D0BF2    mov         eax,dword ptr [eax+44]
 005D0BF5    mov         edx,ebx
 005D0BF7    call        TMenuItem.GetItem
 005D0BFC    mov         edx,ebx
 005D0BFE    add         edx,edx
 005D0C00    add         edx,edx
 005D0C02    add         edx,edx
 005D0C04    sub         edx,ebx
 005D0C06    mov         ecx,dword ptr [ebp+8]
 005D0C09    mov         ecx,dword ptr [ecx-4]
 005D0C0C    mov         ecx,dword ptr [ecx+30]
 005D0C0F    mov         dword ptr [ecx+edx*4+8],eax
 005D0C13    inc         ebx
 005D0C14    dec         esi
>005D0C15    jne         005D0BEF
 005D0C17    mov         eax,dword ptr [edi+44]
 005D0C1A    call        TMenuItem.GetCount
 005D0C1F    mov         ebx,eax
 005D0C21    dec         ebx
 005D0C22    cmp         ebx,0
>005D0C25    jl          005D0D1E
 005D0C2B    push        ebp
 005D0C2C    mov         eax,dword ptr [edi+44]
 005D0C2F    mov         edx,ebx
 005D0C31    call        TMenuItem.GetItem
 005D0C36    call        005D0B28
 005D0C3B    pop         ecx
 005D0C3C    test        al,al
>005D0C3E    je          005D0CB7
 005D0C40    mov         dword ptr [ebp-10],0FFFFFFFF
 005D0C47    mov         esi,dword ptr [ebp-8]
 005D0C4A    dec         esi
 005D0C4B    test        esi,esi
>005D0C4D    jl          005D0C92
 005D0C4F    inc         esi
 005D0C50    mov         dword ptr [ebp-0C],0
 005D0C57    mov         eax,dword ptr [edi+44]
 005D0C5A    mov         edx,ebx
 005D0C5C    call        TMenuItem.GetItem
 005D0C61    movzx       eax,byte ptr [eax+4B];TMenuItem.FGroupIndex:byte
 005D0C65    mov         edx,dword ptr [ebp-0C]
 005D0C68    mov         ecx,edx
 005D0C6A    add         edx,edx
 005D0C6C    add         edx,edx
 005D0C6E    add         edx,edx
 005D0C70    sub         edx,ecx
 005D0C72    mov         ecx,dword ptr [ebp+8]
 005D0C75    mov         ecx,dword ptr [ecx-4]
 005D0C78    mov         ecx,dword ptr [ecx+30]
 005D0C7B    mov         edx,dword ptr [ecx+edx*4+8]
 005D0C7F    cmp         al,byte ptr [edx+4B]
>005D0C82    ja          005D0C8C
 005D0C84    mov         eax,dword ptr [ebp-0C]
 005D0C87    mov         dword ptr [ebp-10],eax
>005D0C8A    jmp         005D0C92
 005D0C8C    inc         dword ptr [ebp-0C]
 005D0C8F    dec         esi
>005D0C90    jne         005D0C57
 005D0C92    cmp         dword ptr [ebp-10],0FFFFFFFF
>005D0C96    jne         005D0C9E
 005D0C98    mov         eax,dword ptr [ebp-8]
 005D0C9B    mov         dword ptr [ebp-10],eax
 005D0C9E    push        ebp
 005D0C9F    mov         eax,dword ptr [edi+44]
 005D0CA2    mov         edx,ebx
 005D0CA4    call        TMenuItem.GetItem
 005D0CA9    mov         ecx,eax
 005D0CAB    lea         edx,[ebp-8]
 005D0CAE    mov         eax,dword ptr [ebp-10]
 005D0CB1    call        005D0A98
 005D0CB6    pop         ecx
 005D0CB7    dec         ebx
 005D0CB8    cmp         ebx,0FFFFFFFF
>005D0CBB    jne         005D0C2B
>005D0CC1    jmp         005D0D1E
 005D0CC3    mov         eax,dword ptr [edi+44]
 005D0CC6    call        TMenuItem.GetCount
 005D0CCB    mov         dword ptr [ebp-8],eax
 005D0CCE    mov         eax,dword ptr [ebp-8]
 005D0CD1    push        eax
 005D0CD2    mov         eax,dword ptr [ebp+8]
 005D0CD5    mov         eax,dword ptr [eax-4]
 005D0CD8    add         eax,30
 005D0CDB    mov         ecx,1
 005D0CE0    mov         edx,dword ptr ds:[5BD978];:TFormStyleHook.TMainMenuBarStyleHook.:1
 005D0CE6    call        @DynArraySetLength
 005D0CEB    add         esp,4
 005D0CEE    mov         esi,dword ptr [ebp-8]
 005D0CF1    dec         esi
 005D0CF2    test        esi,esi
>005D0CF4    jl          005D0D1E
 005D0CF6    inc         esi
 005D0CF7    xor         ebx,ebx
 005D0CF9    mov         eax,dword ptr [edi+44]
 005D0CFC    mov         edx,ebx
 005D0CFE    call        TMenuItem.GetItem
 005D0D03    mov         edx,ebx
 005D0D05    add         edx,edx
 005D0D07    add         edx,edx
 005D0D09    add         edx,edx
 005D0D0B    sub         edx,ebx
 005D0D0D    mov         ecx,dword ptr [ebp+8]
 005D0D10    mov         ecx,dword ptr [ecx-4]
 005D0D13    mov         ecx,dword ptr [ecx+30]
 005D0D16    mov         dword ptr [ecx+edx*4+8],eax
 005D0D1A    inc         ebx
 005D0D1B    dec         esi
>005D0D1C    jne         005D0CF9
 005D0D1E    mov         eax,dword ptr [ebp-8]
 005D0D21    pop         edi
 005D0D22    pop         esi
 005D0D23    pop         ebx
 005D0D24    mov         esp,ebp
 005D0D26    pop         ebp
 005D0D27    ret
end;*}

//005D0D28
function TFormStyleHook.TMainMenuBarStyleHook.GetMenuHeight(AWidth:Integer):Integer;
begin
{*
 005D0D28    push        ebp
 005D0D29    mov         ebp,esp
 005D0D2B    add         esp,0FFFFFFE8
 005D0D2E    push        ebx
 005D0D2F    push        esi
 005D0D30    push        edi
 005D0D31    mov         dword ptr [ebp-8],edx
 005D0D34    mov         dword ptr [ebp-4],eax
 005D0D37    push        0F
 005D0D39    call        user32.GetSystemMetrics
 005D0D3E    mov         dword ptr [ebp-0C],eax
 005D0D41    mov         eax,dword ptr [ebp-4]
 005D0D44    call        005D0A70
 005D0D49    test        eax,eax
>005D0D4B    je          005D0EFD
 005D0D51    mov         eax,dword ptr [ebp-4]
 005D0D54    cmp         byte ptr [eax+0A5],0;TFormStyleHook.FMinButtonRect.Top:LongInt
>005D0D5B    je          005D0D68
 005D0D5D    mov         eax,dword ptr [ebp-0C]
 005D0D60    lea         eax,[eax+eax*2]
 005D0D63    mov         dword ptr [ebp-18],eax
>005D0D66    jmp         005D0D6D
 005D0D68    xor         eax,eax
 005D0D6A    mov         dword ptr [ebp-18],eax
 005D0D6D    mov         eax,dword ptr [ebp-4]
 005D0D70    call        005D0A70
 005D0D75    mov         edi,eax
 005D0D77    xor         esi,esi
 005D0D79    mov         eax,dword ptr [ebp-4]
 005D0D7C    mov         eax,dword ptr [eax+1C];TFormStyleHook.FText:string
 005D0D7F    call        005D3A90
 005D0D84    cmp         byte ptr [eax+2C2],2
>005D0D8B    jne         005D0DF2
 005D0D8D    mov         eax,dword ptr [ebp-4]
 005D0D90    mov         eax,dword ptr [eax+1C];TFormStyleHook.FText:string
 005D0D93    call        005D3A90
 005D0D98    mov         ebx,eax
 005D0D9A    mov         eax,ebx
 005D0D9C    call        005C2D30
 005D0DA1    test        eax,eax
>005D0DA3    je          005D0DF2
 005D0DA5    mov         eax,ebx
 005D0DA7    call        005C2D30
 005D0DAC    cmp         dword ptr [eax+2D8],0
>005D0DB3    je          005D0DF2
 005D0DB5    mov         eax,ebx
 005D0DB7    call        005C2D30
 005D0DBC    mov         eax,dword ptr [eax+2D8]
 005D0DC2    mov         eax,dword ptr [eax+44]
 005D0DC5    call        TMenuItem.GetCount
 005D0DCA    test        eax,eax
>005D0DCC    jle         005D0DF2
 005D0DCE    mov         eax,ebx
 005D0DD0    call        005C2D30
 005D0DD5    call        TWinControl.GetHandle
 005D0DDA    mov         edx,dword ptr [ebp-4]
 005D0DDD    mov         edx,dword ptr [edx+1C];TFormStyleHook.FText:string
 005D0DE0    cmp         eax,dword ptr [edx+3C]
>005D0DE3    je          005D0DF2
 005D0DE5    mov         eax,ebx
 005D0DE7    call        005C2D30
 005D0DEC    mov         esi,dword ptr [eax+2D8]
 005D0DF2    push        ebp
 005D0DF3    mov         edx,esi
 005D0DF5    mov         eax,edi
 005D0DF7    call        005D0B7C
 005D0DFC    pop         ecx
 005D0DFD    mov         edx,dword ptr [ebp-4]
 005D0E00    mov         dword ptr [edx+2C],eax;TFormStyleHook.FCaptionRect.Top:LongInt
 005D0E03    mov         dl,1
 005D0E05    mov         eax,[004C1D10];TBitmap
 005D0E0A    call        TBitmap.Create;TBitmap.Create
 005D0E0F    mov         dword ptr [ebp-10],eax
 005D0E12    xor         edx,edx
 005D0E14    push        ebp
 005D0E15    push        5D0EDB
 005D0E1A    push        dword ptr fs:[edx]
 005D0E1D    mov         dword ptr fs:[edx],esp
 005D0E20    mov         eax,dword ptr [ebp-10]
 005D0E23    call        TBitmap.GetCanvas
 005D0E28    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 005D0E2B    mov         edx,dword ptr ds:[7CA7CC];Screen:TScreen
 005D0E31    mov         edx,dword ptr [edx+90]
 005D0E37    mov         ecx,dword ptr [eax]
 005D0E39    call        dword ptr [ecx+8];TFont.Assign
 005D0E3C    mov         eax,dword ptr [ebp-4]
 005D0E3F    cmp         byte ptr [eax+0A5],0;TFormStyleHook.FMinButtonRect.Top:LongInt
>005D0E46    je          005D0E54
 005D0E48    mov         eax,dword ptr [ebp-4]
 005D0E4B    call        005CFCF4
 005D0E50    test        al,al
>005D0E52    jne         005D0E58
 005D0E54    xor         eax,eax
>005D0E56    jmp         005D0E5A
 005D0E58    mov         al,1
 005D0E5A    test        al,al
>005D0E5C    je          005D0E6A
 005D0E5E    push        0F
 005D0E60    call        user32.GetSystemMetrics
 005D0E65    mov         dword ptr [ebp-14],eax
>005D0E68    jmp         005D0E6F
 005D0E6A    xor         eax,eax
 005D0E6C    mov         dword ptr [ebp-14],eax
 005D0E6F    mov         eax,dword ptr [ebp-4]
 005D0E72    mov         ebx,dword ptr [eax+2C];TFormStyleHook.FCaptionRect.Top:LongInt
 005D0E75    dec         ebx
 005D0E76    test        ebx,ebx
>005D0E78    jl          005D0EC5
 005D0E7A    inc         ebx
 005D0E7B    xor         esi,esi
 005D0E7D    mov         eax,dword ptr [ebp-10]
 005D0E80    call        TBitmap.GetCanvas
 005D0E85    mov         ecx,eax
 005D0E87    mov         eax,esi
 005D0E89    add         eax,eax
 005D0E8B    add         eax,eax
 005D0E8D    add         eax,eax
 005D0E8F    sub         eax,esi
 005D0E91    mov         edx,dword ptr [ebp-4]
 005D0E94    mov         edx,dword ptr [edx+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D0E97    mov         edx,dword ptr [edx+eax*4+8]
 005D0E9B    mov         eax,dword ptr [ebp-4]
 005D0E9E    call        005D0F08
 005D0EA3    add         dword ptr [ebp-14],eax
 005D0EA6    mov         edx,dword ptr [ebp-14]
 005D0EA9    cmp         edx,dword ptr [ebp-8]
>005D0EAC    jle         005D0EC1
 005D0EAE    cmp         dword ptr [ebp-14],0
>005D0EB2    je          005D0EC1
 005D0EB4    mov         dword ptr [ebp-14],eax
 005D0EB7    push        0F
 005D0EB9    call        user32.GetSystemMetrics
 005D0EBE    add         dword ptr [ebp-0C],eax
 005D0EC1    inc         esi
 005D0EC2    dec         ebx
>005D0EC3    jne         005D0E7D
 005D0EC5    xor         eax,eax
 005D0EC7    pop         edx
 005D0EC8    pop         ecx
 005D0EC9    pop         ecx
 005D0ECA    mov         dword ptr fs:[eax],edx
 005D0ECD    push        5D0EE2
 005D0ED2    mov         eax,dword ptr [ebp-10]
 005D0ED5    call        TObject.Free
 005D0EDA    ret
>005D0EDB    jmp         @HandleFinally
>005D0EE0    jmp         005D0ED2
 005D0EE2    cmp         dword ptr [ebp-18],0
>005D0EE6    je          005D0EFD
 005D0EE8    mov         eax,dword ptr [ebp-14]
 005D0EEB    add         eax,dword ptr [ebp-18]
 005D0EEE    cmp         eax,dword ptr [ebp-8]
>005D0EF1    jle         005D0EFD
 005D0EF3    push        0F
 005D0EF5    call        user32.GetSystemMetrics
 005D0EFA    add         dword ptr [ebp-0C],eax
 005D0EFD    mov         eax,dword ptr [ebp-0C]
 005D0F00    pop         edi
 005D0F01    pop         esi
 005D0F02    pop         ebx
 005D0F03    mov         esp,ebp
 005D0F05    pop         ebp
 005D0F06    ret
*}
end;

//005D0F08
{*function sub_005D0F08(?:TFormStyleHook; ?:?; ?:TCanvas):?;
begin
 005D0F08    push        ebx
 005D0F09    push        esi
 005D0F0A    push        edi
 005D0F0B    push        ebp
 005D0F0C    add         esp,0FFFFFFF0
 005D0F0F    mov         esi,ecx
 005D0F11    mov         ebx,edx
 005D0F13    mov         ebp,eax
 005D0F15    mov         eax,ebx
 005D0F17    call        TMenuItem.GetParentMenu
 005D0F1C    test        eax,eax
>005D0F1E    je          005D0F26
 005D0F20    cmp         byte ptr [ebx+4A],0
>005D0F24    jne         005D0F2D
 005D0F26    xor         esi,esi
>005D0F28    jmp         005D0FB3
 005D0F2D    push        0
 005D0F2F    lea         eax,[esp+4]
 005D0F33    push        eax
 005D0F34    xor         ecx,ecx
 005D0F36    xor         edx,edx
 005D0F38    xor         eax,eax
 005D0F3A    call        Rect
 005D0F3F    mov         eax,esi
 005D0F41    call        TCanvas.GetHandle
 005D0F46    mov         edi,eax
 005D0F48    mov         eax,dword ptr [ebx+40]
 005D0F4B    mov         esi,eax
 005D0F4D    test        esi,esi
>005D0F4F    je          005D0F56
 005D0F51    sub         esi,4
 005D0F54    mov         esi,dword ptr [esi]
 005D0F56    push        400
 005D0F5B    lea         eax,[esp+4]
 005D0F5F    push        eax
 005D0F60    push        esi
 005D0F61    mov         eax,dword ptr [ebx+40]
 005D0F64    call        @UStrToPWChar
 005D0F69    push        eax
 005D0F6A    push        edi
 005D0F6B    call        user32.DrawTextW
 005D0F70    mov         eax,esp
 005D0F72    call        RectWidth
 005D0F77    mov         esi,eax
 005D0F79    add         esi,0A
 005D0F7C    mov         eax,ebx
 005D0F7E    call        TMenuItem.GetParentMenu
 005D0F83    cmp         dword ptr [eax+54],0;TMenu.FImages:TCustomImageList
>005D0F87    je          005D0FB3
 005D0F89    cmp         dword ptr [ebx+4C],0
>005D0F8D    jl          005D0FB3
 005D0F8F    mov         eax,ebx
 005D0F91    call        TMenuItem.GetParentMenu
 005D0F96    mov         eax,dword ptr [eax+54];TMenu.FImages:TCustomImageList
 005D0F99    mov         edx,dword ptr [eax]
 005D0F9B    call        dword ptr [edx+48];TCustomImageList.sub_005A8A54
 005D0F9E    cmp         eax,dword ptr [ebx+4C]
>005D0FA1    jle         005D0FB3
 005D0FA3    mov         eax,ebp
 005D0FA5    call        005D0A70
 005D0FAA    mov         eax,dword ptr [eax+54]
 005D0FAD    add         esi,dword ptr [eax+54]
 005D0FB0    add         esi,6
 005D0FB3    mov         eax,esi
 005D0FB5    add         esp,10
 005D0FB8    pop         ebp
 005D0FB9    pop         edi
 005D0FBA    pop         esi
 005D0FBB    pop         ebx
 005D0FBC    ret
end;*}

//005D0FC0
{*procedure sub_005D0FC0(?:TFormStyleHook; ?:?);
begin
 005D0FC0    push        ebp
 005D0FC1    mov         ebp,esp
 005D0FC3    add         esp,0FFFFFFB0
 005D0FC6    push        ebx
 005D0FC7    push        esi
 005D0FC8    push        edi
 005D0FC9    mov         esi,edx
 005D0FCB    lea         edi,[ebp-34]
 005D0FCE    push        ecx
 005D0FCF    mov         ecx,7
 005D0FD4    rep movs    dword ptr [edi],dword ptr [esi]
 005D0FD6    pop         ecx
 005D0FD7    mov         dword ptr [ebp-8],ecx
 005D0FDA    mov         dword ptr [ebp-4],eax
 005D0FDD    mov         eax,dword ptr [ebp-2C]
 005D0FE0    call        TMenuItem.GetParentMenu
 005D0FE5    test        eax,eax
>005D0FE7    je          005D1291
 005D0FED    call        StyleServices
 005D0FF2    mov         dword ptr [ebp-18],eax
 005D0FF5    mov         eax,dword ptr [ebp-2C]
 005D0FF8    call        TMenuItem.GetParentMenu
 005D0FFD    mov         dword ptr [ebp-14],eax
 005D1000    mov         eax,dword ptr [ebp-4]
 005D1003    mov         eax,dword ptr [eax+4]
 005D1006    cmp         eax,dword ptr [ebp-34]
>005D1009    jne         005D1041
 005D100B    mov         eax,dword ptr [ebp-4]
 005D100E    cmp         byte ptr [eax+8C],0
>005D1015    je          005D101D
 005D1017    mov         byte ptr [ebp-30],0E
>005D101B    jmp         005D1054
 005D101D    mov         eax,dword ptr [ebp-4]
 005D1020    cmp         byte ptr [eax+0A6],0
>005D1027    jne         005D103B
 005D1029    mov         eax,dword ptr [ebp-4]
 005D102C    cmp         byte ptr [eax+84],0
>005D1033    jne         005D103B
 005D1035    mov         byte ptr [ebp-30],0D
>005D1039    jmp         005D1054
 005D103B    mov         byte ptr [ebp-30],0C
>005D103F    jmp         005D1054
 005D1041    mov         eax,dword ptr [ebp-2C]
 005D1044    cmp         byte ptr [eax+45],0
>005D1048    je          005D1050
 005D104A    mov         byte ptr [ebp-30],0C
>005D104E    jmp         005D1054
 005D1050    mov         byte ptr [ebp-30],0F
 005D1054    movzx       edx,byte ptr [ebp-30]
 005D1058    lea         ecx,[ebp-40]
 005D105B    mov         eax,dword ptr [ebp-18]
 005D105E    mov         ebx,dword ptr [eax]
 005D1060    call        dword ptr [ebx+0A4];TCustomStyleServices.GetElementDetails
 005D1066    mov         eax,dword ptr [ebp-8]
 005D1069    call        TCanvas.GetHandle
 005D106E    push        eax
 005D106F    call        gdi32.SaveDC
 005D1074    mov         dword ptr [ebp-0C],eax
 005D1077    xor         eax,eax
 005D1079    push        ebp
 005D107A    push        5D10C0
 005D107F    push        dword ptr fs:[eax]
 005D1082    mov         dword ptr fs:[eax],esp
 005D1085    lea         eax,[ebp-28]
 005D1088    push        eax
 005D1089    push        0
 005D108B    mov         eax,dword ptr [ebp-8]
 005D108E    call        TCanvas.GetHandle
 005D1093    mov         edx,eax
 005D1095    lea         ecx,[ebp-40]
 005D1098    mov         eax,dword ptr [ebp-18]
 005D109B    call        TCustomStyleServices.DrawElement
 005D10A0    xor         eax,eax
 005D10A2    pop         edx
 005D10A3    pop         ecx
 005D10A4    pop         ecx
 005D10A5    mov         dword ptr fs:[eax],edx
 005D10A8    push        5D10C7
 005D10AD    mov         eax,dword ptr [ebp-0C]
 005D10B0    push        eax
 005D10B1    mov         eax,dword ptr [ebp-8]
 005D10B4    call        TCanvas.GetHandle
 005D10B9    push        eax
 005D10BA    call        gdi32.RestoreDC
 005D10BF    ret
>005D10C0    jmp         @HandleFinally
>005D10C5    jmp         005D10AD
 005D10C7    lea         esi,[ebp-28]
 005D10CA    lea         edi,[ebp-50]
 005D10CD    movs        dword ptr [edi],dword ptr [esi]
 005D10CE    movs        dword ptr [edi],dword ptr [esi]
 005D10CF    movs        dword ptr [edi],dword ptr [esi]
 005D10D0    movs        dword ptr [edi],dword ptr [esi]
 005D10D1    mov         eax,dword ptr [ebp-4]
 005D10D4    mov         eax,dword ptr [eax+1C]
 005D10D7    mov         eax,dword ptr [eax+8]
 005D10DA    cmp         byte ptr [eax+71],1
>005D10DE    je          005D10E6
 005D10E0    add         dword ptr [ebp-50],5
>005D10E4    jmp         005D10EA
 005D10E6    sub         dword ptr [ebp-48],5
 005D10EA    mov         eax,dword ptr [ebp-14]
 005D10ED    cmp         dword ptr [eax+54],0;TMenu.FImages:TCustomImageList
>005D10F1    je          005D11C5
 005D10F7    mov         eax,dword ptr [ebp-2C]
 005D10FA    cmp         dword ptr [eax+4C],0
>005D10FE    jl          005D11C5
 005D1104    mov         eax,dword ptr [ebp-4]
 005D1107    call        005D0A70
 005D110C    mov         eax,dword ptr [eax+54]
 005D110F    mov         edx,dword ptr [eax]
 005D1111    call        dword ptr [edx+48]
 005D1114    mov         edx,dword ptr [ebp-2C]
 005D1117    cmp         eax,dword ptr [edx+4C]
>005D111A    jle         005D11C5
 005D1120    mov         eax,dword ptr [ebp-4]
 005D1123    mov         eax,dword ptr [eax+1C]
 005D1126    mov         eax,dword ptr [eax+8]
 005D1129    cmp         byte ptr [eax+71],1
>005D112D    je          005D1134
 005D112F    mov         ebx,dword ptr [ebp-50]
>005D1132    jmp         005D1140
 005D1134    mov         eax,dword ptr [ebp-14]
 005D1137    mov         eax,dword ptr [eax+54];TMenu.FImages:TCustomImageList
 005D113A    mov         ebx,dword ptr [ebp-48]
 005D113D    sub         ebx,dword ptr [eax+54]
 005D1140    lea         eax,[ebp-50]
 005D1143    call        RectHeight
 005D1148    mov         esi,eax
 005D114A    sar         esi,1
>005D114C    jns         005D1151
 005D114E    adc         esi,0
 005D1151    add         esi,dword ptr [ebp-4C]
 005D1154    mov         eax,dword ptr [ebp-14]
 005D1157    mov         eax,dword ptr [eax+54];TMenu.FImages:TCustomImageList
 005D115A    mov         eax,dword ptr [eax+50];TCustomImageList.FHeight:Integer
 005D115D    sar         eax,1
>005D115F    jns         005D1164
 005D1161    adc         eax,0
 005D1164    sub         esi,eax
 005D1166    push        1
 005D1168    push        esi
 005D1169    push        ebx
 005D116A    mov         eax,dword ptr [ebp-8]
 005D116D    call        TCanvas.GetHandle
 005D1172    push        eax
 005D1173    mov         eax,dword ptr [ebp-2C]
 005D1176    mov         eax,dword ptr [eax+4C]
 005D1179    push        eax
 005D117A    mov         eax,dword ptr [ebp-4]
 005D117D    call        005D0A70
 005D1182    mov         eax,dword ptr [eax+54]
 005D1185    call        TCustomImageList.GetHandle
 005D118A    push        eax
 005D118B    call        comctl32.ImageList_Draw
 005D1190    mov         eax,dword ptr [ebp-4]
 005D1193    mov         eax,dword ptr [eax+1C]
 005D1196    mov         eax,dword ptr [eax+8]
 005D1199    cmp         byte ptr [eax+71],1
>005D119D    je          005D11B3
 005D119F    mov         eax,dword ptr [ebp-14]
 005D11A2    mov         eax,dword ptr [eax+54];TMenu.FImages:TCustomImageList
 005D11A5    mov         eax,dword ptr [eax+54];TCustomImageList.FWidth:Integer
 005D11A8    add         eax,dword ptr [ebp-50]
 005D11AB    add         eax,3
 005D11AE    mov         dword ptr [ebp-50],eax
>005D11B1    jmp         005D11C5
 005D11B3    mov         eax,dword ptr [ebp-14]
 005D11B6    mov         eax,dword ptr [eax+54];TMenu.FImages:TCustomImageList
 005D11B9    mov         edx,dword ptr [ebp-48]
 005D11BC    sub         edx,dword ptr [eax+54]
 005D11BF    sub         edx,3
 005D11C2    mov         dword ptr [ebp-48],edx
 005D11C5    lea         eax,[ebp-10]
 005D11C8    push        eax
 005D11C9    mov         cl,2
 005D11CB    lea         edx,[ebp-40]
 005D11CE    mov         eax,dword ptr [ebp-18]
 005D11D1    call        TCustomStyleServices.GetElementColor
 005D11D6    test        al,al
>005D11D8    je          005D11E8
 005D11DA    mov         eax,dword ptr [ebp-8]
 005D11DD    mov         eax,dword ptr [eax+40]
 005D11E0    mov         edx,dword ptr [ebp-10]
 005D11E3    call        TFont.SetColor
 005D11E8    mov         eax,dword ptr [ebp-4]
 005D11EB    cmp         byte ptr [eax+8C],0
>005D11F2    jne         005D1200
 005D11F4    mov         eax,dword ptr [ebp-4]
 005D11F7    cmp         byte ptr [eax+86],0
>005D11FE    je          005D124E
 005D1200    mov         eax,dword ptr [ebp-4]
 005D1203    cmp         byte ptr [eax+18],0
>005D1207    je          005D124E
 005D1209    mov         eax,dword ptr [ebp-8]
 005D120C    call        TCanvas.GetHandle
 005D1211    mov         esi,eax
 005D1213    mov         edi,dword ptr [ebp-2C]
 005D1216    mov         eax,dword ptr [edi+40]
 005D1219    mov         ebx,eax
 005D121B    test        ebx,ebx
>005D121D    je          005D1224
 005D121F    sub         ebx,4
 005D1222    mov         ebx,dword ptr [ebx]
 005D1224    mov         eax,dword ptr [ebp-4]
 005D1227    mov         eax,dword ptr [eax+1C]
 005D122A    mov         eax,dword ptr [eax+8]
 005D122D    mov         edx,24
 005D1232    call        TControl.DrawTextBiDiModeFlags
 005D1237    push        eax
 005D1238    lea         eax,[ebp-50]
 005D123B    push        eax
 005D123C    push        ebx
 005D123D    mov         eax,dword ptr [edi+40]
 005D1240    call        @UStrToPWChar
 005D1245    push        eax
 005D1246    push        esi
 005D1247    call        user32.DrawTextW
>005D124C    jmp         005D1291
 005D124E    mov         eax,dword ptr [ebp-8]
 005D1251    call        TCanvas.GetHandle
 005D1256    mov         esi,eax
 005D1258    mov         edi,dword ptr [ebp-2C]
 005D125B    mov         eax,dword ptr [edi+40]
 005D125E    mov         ebx,eax
 005D1260    test        ebx,ebx
>005D1262    je          005D1269
 005D1264    sub         ebx,4
 005D1267    mov         ebx,dword ptr [ebx]
 005D1269    mov         eax,dword ptr [ebp-4]
 005D126C    mov         eax,dword ptr [eax+1C]
 005D126F    mov         eax,dword ptr [eax+8]
 005D1272    mov         edx,100024
 005D1277    call        TControl.DrawTextBiDiModeFlags
 005D127C    push        eax
 005D127D    lea         eax,[ebp-50]
 005D1280    push        eax
 005D1281    push        ebx
 005D1282    mov         eax,dword ptr [edi+40]
 005D1285    call        @UStrToPWChar
 005D128A    push        eax
 005D128B    push        esi
 005D128C    call        user32.DrawTextW
 005D1291    pop         edi
 005D1292    pop         esi
 005D1293    pop         ebx
 005D1294    mov         esp,ebp
 005D1296    pop         ebp
 005D1297    ret
end;*}

//005D1298
{*procedure sub_005D1298(?:Integer; ?:Integer; ?:TMenuItem; ?:?);
begin
 005D1298    push        ebp
 005D1299    mov         ebp,esp
 005D129B    push        ecx
 005D129C    push        ebx
 005D129D    push        esi
 005D129E    push        edi
 005D129F    mov         dword ptr [ebp-4],ecx
 005D12A2    inc         dword ptr [edx]
 005D12A4    mov         ecx,dword ptr [edx]
 005D12A6    dec         ecx
 005D12A7    cmp         eax,ecx
>005D12A9    jne         005D12CA
 005D12AB    mov         edx,eax
 005D12AD    add         eax,eax
 005D12AF    add         eax,eax
 005D12B1    add         eax,eax
 005D12B3    sub         eax,edx
 005D12B5    mov         edx,dword ptr [ebp+8]
 005D12B8    mov         edx,dword ptr [edx+8]
 005D12BB    mov         edx,dword ptr [edx-4]
 005D12BE    mov         edx,dword ptr [edx+30]
 005D12C1    mov         ecx,dword ptr [ebp-4]
 005D12C4    mov         dword ptr [edx+eax*4+8],ecx
>005D12C8    jmp         005D1320
 005D12CA    lea         ebx,[eax+1]
 005D12CD    sub         ebx,ecx
>005D12CF    jg          005D1303
 005D12D1    dec         ebx
 005D12D2    mov         edx,ecx
 005D12D4    mov         ecx,edx
 005D12D6    add         ecx,ecx
 005D12D8    add         ecx,ecx
 005D12DA    add         ecx,ecx
 005D12DC    sub         ecx,edx
 005D12DE    mov         esi,dword ptr [ebp+8]
 005D12E1    mov         esi,dword ptr [esi+8]
 005D12E4    mov         esi,dword ptr [esi-4]
 005D12E7    mov         esi,dword ptr [esi+30]
 005D12EA    push        dword ptr [esi+ecx*4-14]
 005D12EE    mov         esi,dword ptr [ebp+8]
 005D12F1    mov         esi,dword ptr [esi+8]
 005D12F4    mov         esi,dword ptr [esi-4]
 005D12F7    mov         esi,dword ptr [esi+30]
 005D12FA    pop         edi
 005D12FB    mov         dword ptr [esi+ecx*4+8],edi
 005D12FF    dec         edx
 005D1300    inc         ebx
>005D1301    jne         005D12D4
 005D1303    mov         edx,eax
 005D1305    add         eax,eax
 005D1307    add         eax,eax
 005D1309    add         eax,eax
 005D130B    sub         eax,edx
 005D130D    mov         edx,dword ptr [ebp+8]
 005D1310    mov         edx,dword ptr [edx+8]
 005D1313    mov         edx,dword ptr [edx-4]
 005D1316    mov         edx,dword ptr [edx+30]
 005D1319    mov         ecx,dword ptr [ebp-4]
 005D131C    mov         dword ptr [edx+eax*4+8],ecx
 005D1320    pop         edi
 005D1321    pop         esi
 005D1322    pop         ebx
 005D1323    pop         ecx
 005D1324    pop         ebp
 005D1325    ret
end;*}

//005D1328
{*function sub_005D1328(?:TMenuItem; ?:?):?;
begin
 005D1328    push        ebp
 005D1329    mov         ebp,esp
 005D132B    push        ecx
 005D132C    push        ebx
 005D132D    push        esi
 005D132E    push        edi
 005D132F    mov         edi,eax
 005D1331    mov         byte ptr [ebp-1],1
 005D1335    mov         eax,dword ptr [ebp+8]
 005D1338    mov         eax,dword ptr [eax-4]
 005D133B    mov         eax,dword ptr [eax+44]
 005D133E    call        TMenuItem.GetCount
 005D1343    mov         ebx,eax
 005D1345    dec         ebx
 005D1346    test        ebx,ebx
>005D1348    jl          005D1370
 005D134A    inc         ebx
 005D134B    xor         esi,esi
 005D134D    mov         eax,dword ptr [ebp+8]
 005D1350    mov         eax,dword ptr [eax-4]
 005D1353    mov         eax,dword ptr [eax+44]
 005D1356    mov         edx,esi
 005D1358    call        TMenuItem.GetItem
 005D135D    movzx       eax,byte ptr [eax+4B];TMenuItem.FGroupIndex:byte
 005D1361    cmp         al,byte ptr [edi+4B]
>005D1364    jne         005D136C
 005D1366    mov         byte ptr [ebp-1],0
>005D136A    jmp         005D1370
 005D136C    inc         esi
 005D136D    dec         ebx
>005D136E    jne         005D134D
 005D1370    movzx       eax,byte ptr [ebp-1]
 005D1374    pop         edi
 005D1375    pop         esi
 005D1376    pop         ebx
 005D1377    pop         ecx
 005D1378    pop         ebp
 005D1379    ret
end;*}

//005D137C
{*function sub_005D137C(?:?; ?:TMenu; ?:?):?;
begin
 005D137C    push        ebp
 005D137D    mov         ebp,esp
 005D137F    add         esp,0FFFFFFF0
 005D1382    push        ebx
 005D1383    push        esi
 005D1384    push        edi
 005D1385    mov         dword ptr [ebp-4],edx
 005D1388    mov         edi,eax
 005D138A    test        edi,edi
>005D138C    jne         005D1398
 005D138E    xor         eax,eax
 005D1390    mov         dword ptr [ebp-8],eax
>005D1393    jmp         005D151E
 005D1398    cmp         dword ptr [ebp-4],0
>005D139C    je          005D14C3
 005D13A2    mov         eax,dword ptr [edi+44]
 005D13A5    call        TMenuItem.GetCount
 005D13AA    mov         ebx,eax
 005D13AC    mov         eax,dword ptr [ebp-4]
 005D13AF    mov         eax,dword ptr [eax+44]
 005D13B2    call        TMenuItem.GetCount
 005D13B7    add         ebx,eax
 005D13B9    push        ebx
 005D13BA    mov         eax,dword ptr [ebp+8]
 005D13BD    mov         eax,dword ptr [eax-4]
 005D13C0    add         eax,30
 005D13C3    mov         ecx,1
 005D13C8    mov         edx,dword ptr ds:[5BD978];:TFormStyleHook.TMainMenuBarStyleHook.:1
 005D13CE    call        @DynArraySetLength
 005D13D3    add         esp,4
 005D13D6    mov         eax,dword ptr [ebp-4]
 005D13D9    mov         eax,dword ptr [eax+44]
 005D13DC    call        TMenuItem.GetCount
 005D13E1    mov         dword ptr [ebp-8],eax
 005D13E4    mov         esi,dword ptr [ebp-8]
 005D13E7    dec         esi
 005D13E8    test        esi,esi
>005D13EA    jl          005D1417
 005D13EC    inc         esi
 005D13ED    xor         ebx,ebx
 005D13EF    mov         eax,dword ptr [ebp-4]
 005D13F2    mov         eax,dword ptr [eax+44]
 005D13F5    mov         edx,ebx
 005D13F7    call        TMenuItem.GetItem
 005D13FC    mov         edx,ebx
 005D13FE    add         edx,edx
 005D1400    add         edx,edx
 005D1402    add         edx,edx
 005D1404    sub         edx,ebx
 005D1406    mov         ecx,dword ptr [ebp+8]
 005D1409    mov         ecx,dword ptr [ecx-4]
 005D140C    mov         ecx,dword ptr [ecx+30]
 005D140F    mov         dword ptr [ecx+edx*4+8],eax
 005D1413    inc         ebx
 005D1414    dec         esi
>005D1415    jne         005D13EF
 005D1417    mov         eax,dword ptr [edi+44]
 005D141A    call        TMenuItem.GetCount
 005D141F    mov         ebx,eax
 005D1421    dec         ebx
 005D1422    cmp         ebx,0
>005D1425    jl          005D151E
 005D142B    push        ebp
 005D142C    mov         eax,dword ptr [edi+44]
 005D142F    mov         edx,ebx
 005D1431    call        TMenuItem.GetItem
 005D1436    call        005D1328
 005D143B    pop         ecx
 005D143C    test        al,al
>005D143E    je          005D14B7
 005D1440    mov         dword ptr [ebp-10],0FFFFFFFF
 005D1447    mov         esi,dword ptr [ebp-8]
 005D144A    dec         esi
 005D144B    test        esi,esi
>005D144D    jl          005D1492
 005D144F    inc         esi
 005D1450    mov         dword ptr [ebp-0C],0
 005D1457    mov         eax,dword ptr [edi+44]
 005D145A    mov         edx,ebx
 005D145C    call        TMenuItem.GetItem
 005D1461    movzx       eax,byte ptr [eax+4B];TMenuItem.FGroupIndex:byte
 005D1465    mov         edx,dword ptr [ebp-0C]
 005D1468    mov         ecx,edx
 005D146A    add         edx,edx
 005D146C    add         edx,edx
 005D146E    add         edx,edx
 005D1470    sub         edx,ecx
 005D1472    mov         ecx,dword ptr [ebp+8]
 005D1475    mov         ecx,dword ptr [ecx-4]
 005D1478    mov         ecx,dword ptr [ecx+30]
 005D147B    mov         edx,dword ptr [ecx+edx*4+8]
 005D147F    cmp         al,byte ptr [edx+4B]
>005D1482    ja          005D148C
 005D1484    mov         eax,dword ptr [ebp-0C]
 005D1487    mov         dword ptr [ebp-10],eax
>005D148A    jmp         005D1492
 005D148C    inc         dword ptr [ebp-0C]
 005D148F    dec         esi
>005D1490    jne         005D1457
 005D1492    cmp         dword ptr [ebp-10],0FFFFFFFF
>005D1496    jne         005D149E
 005D1498    mov         eax,dword ptr [ebp-8]
 005D149B    mov         dword ptr [ebp-10],eax
 005D149E    push        ebp
 005D149F    mov         eax,dword ptr [edi+44]
 005D14A2    mov         edx,ebx
 005D14A4    call        TMenuItem.GetItem
 005D14A9    mov         ecx,eax
 005D14AB    lea         edx,[ebp-8]
 005D14AE    mov         eax,dword ptr [ebp-10]
 005D14B1    call        005D1298
 005D14B6    pop         ecx
 005D14B7    dec         ebx
 005D14B8    cmp         ebx,0FFFFFFFF
>005D14BB    jne         005D142B
>005D14C1    jmp         005D151E
 005D14C3    mov         eax,dword ptr [edi+44]
 005D14C6    call        TMenuItem.GetCount
 005D14CB    mov         dword ptr [ebp-8],eax
 005D14CE    mov         eax,dword ptr [ebp-8]
 005D14D1    push        eax
 005D14D2    mov         eax,dword ptr [ebp+8]
 005D14D5    mov         eax,dword ptr [eax-4]
 005D14D8    add         eax,30
 005D14DB    mov         ecx,1
 005D14E0    mov         edx,dword ptr ds:[5BD978];:TFormStyleHook.TMainMenuBarStyleHook.:1
 005D14E6    call        @DynArraySetLength
 005D14EB    add         esp,4
 005D14EE    mov         esi,dword ptr [ebp-8]
 005D14F1    dec         esi
 005D14F2    test        esi,esi
>005D14F4    jl          005D151E
 005D14F6    inc         esi
 005D14F7    xor         ebx,ebx
 005D14F9    mov         eax,dword ptr [edi+44]
 005D14FC    mov         edx,ebx
 005D14FE    call        TMenuItem.GetItem
 005D1503    mov         edx,ebx
 005D1505    add         edx,edx
 005D1507    add         edx,edx
 005D1509    add         edx,edx
 005D150B    sub         edx,ebx
 005D150D    mov         ecx,dword ptr [ebp+8]
 005D1510    mov         ecx,dword ptr [ecx-4]
 005D1513    mov         ecx,dword ptr [ecx+30]
 005D1516    mov         dword ptr [ecx+edx*4+8],eax
 005D151A    inc         ebx
 005D151B    dec         esi
>005D151C    jne         005D14F9
 005D151E    mov         eax,dword ptr [ebp-8]
 005D1521    pop         edi
 005D1522    pop         esi
 005D1523    pop         ebx
 005D1524    mov         esp,ebp
 005D1526    pop         ebp
 005D1527    ret
end;*}

//005D1528
{*function sub_005D1528(?:?; ?:?; ?:?):Boolean;
begin
 005D1528    push        ebp
 005D1529    mov         ebp,esp
 005D152B    add         esp,0FFFFFFD0
 005D152E    push        ebx
 005D152F    push        esi
 005D1530    mov         esi,edx
 005D1532    mov         ebx,eax
 005D1534    lea         eax,[ebp-30]
 005D1537    xor         ecx,ecx
 005D1539    mov         edx,30
 005D153E    call        @FillChar
 005D1543    mov         dword ptr [ebp-30],30
 005D154A    mov         dword ptr [ebp-2C],10
 005D1551    lea         eax,[ebp-30]
 005D1554    push        eax
 005D1555    push        0
 005D1557    mov         eax,esi
 005D1559    add         eax,eax
 005D155B    add         eax,eax
 005D155D    add         eax,eax
 005D155F    sub         eax,esi
 005D1561    mov         edx,dword ptr [ebp+8]
 005D1564    mov         edx,dword ptr [edx-4]
 005D1567    mov         edx,dword ptr [edx+30]
 005D156A    mov         eax,dword ptr [edx+eax*4+8]
 005D156E    movzx       eax,word ptr [eax+5C]
 005D1572    push        eax
 005D1573    push        ebx
 005D1574    call        user32.GetMenuItemInfoW
 005D1579    mov         eax,dword ptr [ebp-28]
 005D157C    and         eax,4000
 005D1581    cmp         eax,4000
 005D1586    sete        al
 005D1589    pop         esi
 005D158A    pop         ebx
 005D158B    mov         esp,ebp
 005D158D    pop         ebp
 005D158E    ret
end;*}

//005D1590
procedure TFormStyleHook.TMainMenuBarStyleHook.Paint(Canvas:TCanvas);
begin
{*
 005D1590    push        ebp
 005D1591    mov         ebp,esp
 005D1593    add         esp,0FFFFFFB0
 005D1596    push        ebx
 005D1597    push        esi
 005D1598    push        edi
 005D1599    mov         dword ptr [ebp-8],edx
 005D159C    mov         dword ptr [ebp-4],eax
 005D159F    mov         eax,dword ptr [ebp-4]
 005D15A2    add         eax,8;TFormStyleHook.FControl:TWinControl
 005D15A5    call        RectWidth
 005D15AA    test        eax,eax
>005D15AC    je          005D1CD4
 005D15B2    mov         eax,dword ptr [ebp-4]
 005D15B5    add         eax,8;TFormStyleHook.FControl:TWinControl
 005D15B8    call        RectHeight
 005D15BD    test        eax,eax
>005D15BF    je          005D1CD4
 005D15C5    call        StyleServices
 005D15CA    mov         dword ptr [ebp-30],eax
 005D15CD    mov         eax,dword ptr [ebp-30]
 005D15D0    mov         edx,dword ptr [eax]
 005D15D2    call        dword ptr [edx+48];@AbstractError
 005D15D5    test        al,al
>005D15D7    je          005D1CD4
 005D15DD    mov         eax,dword ptr [ebp-4]
 005D15E0    call        005D0A70
 005D15E5    mov         dword ptr [ebp-10],eax
 005D15E8    cmp         dword ptr [ebp-10],0
>005D15EC    je          005D1CD4
 005D15F2    xor         eax,eax
 005D15F4    mov         dword ptr [ebp-14],eax
 005D15F7    mov         eax,dword ptr [ebp-4]
 005D15FA    mov         eax,dword ptr [eax+1C];TFormStyleHook.FText:string
 005D15FD    call        005D3A90
 005D1602    mov         eax,dword ptr [eax+2D8]
 005D1608    mov         eax,dword ptr [eax+44]
 005D160B    mov         ebx,dword ptr [eax+74]
 005D160E    test        ebx,ebx
>005D1610    je          005D163D
 005D1612    mov         eax,ebx
 005D1614    call        TMenuItem.GetCount
 005D1619    test        eax,eax
>005D161B    jle         005D163D
 005D161D    mov         eax,ebx
 005D161F    call        TMenuItem.GetParentMenu
 005D1624    mov         edx,dword ptr ds:[5ABC3C];TMainMenu
 005D162A    call        @IsClass
 005D162F    test        al,al
>005D1631    je          005D163D
 005D1633    mov         eax,ebx
 005D1635    call        TMenuItem.GetParentMenu
 005D163A    mov         dword ptr [ebp-14],eax
 005D163D    mov         dl,1
 005D163F    mov         eax,[004C1D10];TBitmap
 005D1644    call        TBitmap.Create;TBitmap.Create
 005D1649    mov         dword ptr [ebp-0C],eax
 005D164C    xor         edx,edx
 005D164E    push        ebp
 005D164F    push        5D1CCD
 005D1654    push        dword ptr fs:[edx]
 005D1657    mov         dword ptr fs:[edx],esp
 005D165A    mov         eax,dword ptr [ebp-4]
 005D165D    add         eax,8;TFormStyleHook.FControl:TWinControl
 005D1660    call        RectHeight
 005D1665    push        eax
 005D1666    mov         eax,dword ptr [ebp-4]
 005D1669    add         eax,8;TFormStyleHook.FControl:TWinControl
 005D166C    call        RectWidth
 005D1671    mov         edx,eax
 005D1673    mov         eax,dword ptr [ebp-0C]
 005D1676    pop         ecx
 005D1677    mov         ebx,dword ptr [eax]
 005D1679    call        dword ptr [ebx+6C];TBitmap.SetSize
 005D167C    mov         eax,dword ptr [ebp-0C]
 005D167F    call        TBitmap.GetCanvas
 005D1684    call        TCanvas.GetHandle
 005D1689    push        eax
 005D168A    call        gdi32.SaveDC
 005D168F    mov         dword ptr [ebp-28],eax
 005D1692    xor         eax,eax
 005D1694    push        ebp
 005D1695    push        5D1715
 005D169A    push        dword ptr fs:[eax]
 005D169D    mov         dword ptr fs:[eax],esp
 005D16A0    lea         ecx,[ebp-40]
 005D16A3    mov         dl,0A
 005D16A5    mov         eax,dword ptr [ebp-30]
 005D16A8    mov         ebx,dword ptr [eax]
 005D16AA    call        dword ptr [ebx+0A4];TCustomStyleServices.GetElementDetails
 005D16B0    mov         eax,dword ptr [ebp-0C]
 005D16B3    mov         edx,dword ptr [eax]
 005D16B5    call        dword ptr [edx+24];TBitmap.GetHeight
 005D16B8    push        eax
 005D16B9    lea         eax,[ebp-50]
 005D16BC    push        eax
 005D16BD    mov         eax,dword ptr [ebp-0C]
 005D16C0    mov         edx,dword ptr [eax]
 005D16C2    call        dword ptr [edx+30];TBitmap.GetWidth
 005D16C5    mov         ecx,eax
 005D16C7    xor         edx,edx
 005D16C9    xor         eax,eax
 005D16CB    call        Rect
 005D16D0    lea         eax,[ebp-50]
 005D16D3    push        eax
 005D16D4    push        0
 005D16D6    mov         eax,dword ptr [ebp-0C]
 005D16D9    call        TBitmap.GetCanvas
 005D16DE    call        TCanvas.GetHandle
 005D16E3    mov         edx,eax
 005D16E5    lea         ecx,[ebp-40]
 005D16E8    mov         eax,dword ptr [ebp-30]
 005D16EB    call        TCustomStyleServices.DrawElement
 005D16F0    xor         eax,eax
 005D16F2    pop         edx
 005D16F3    pop         ecx
 005D16F4    pop         ecx
 005D16F5    mov         dword ptr fs:[eax],edx
 005D16F8    push        5D171C
 005D16FD    mov         eax,dword ptr [ebp-28]
 005D1700    push        eax
 005D1701    mov         eax,dword ptr [ebp-0C]
 005D1704    call        TBitmap.GetCanvas
 005D1709    call        TCanvas.GetHandle
 005D170E    push        eax
 005D170F    call        gdi32.RestoreDC
 005D1714    ret
>005D1715    jmp         @HandleFinally
>005D171A    jmp         005D16FD
 005D171C    mov         eax,dword ptr [ebp-0C]
 005D171F    call        TBitmap.GetCanvas
 005D1724    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 005D1727    mov         edx,dword ptr ds:[7CA7CC];Screen:TScreen
 005D172D    mov         edx,dword ptr [edx+90]
 005D1733    mov         ecx,dword ptr [eax]
 005D1735    call        dword ptr [ecx+8];TFont.Assign
 005D1738    mov         eax,dword ptr [ebp-0C]
 005D173B    call        TBitmap.GetCanvas
 005D1740    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 005D1743    mov         dl,1
 005D1745    call        TBrush.SetStyle
 005D174A    mov         eax,dword ptr [ebp-4]
 005D174D    cmp         byte ptr [eax+0A5],0;TFormStyleHook.FMinButtonRect.Top:LongInt
>005D1754    je          005D1762
 005D1756    mov         eax,dword ptr [ebp-4]
 005D1759    call        005CFCF4
 005D175E    test        al,al
>005D1760    jne         005D1766
 005D1762    xor         ebx,ebx
>005D1764    jmp         005D1768
 005D1766    mov         bl,1
 005D1768    test        bl,bl
>005D176A    je          005D179B
 005D176C    push        3
 005D176E    push        0
 005D1770    push        0
 005D1772    push        0
 005D1774    push        0
 005D1776    mov         eax,dword ptr [ebp-4]
 005D1779    call        005CFBC8
 005D177E    call        TIcon.GetHandle
 005D1783    push        eax
 005D1784    push        2
 005D1786    push        2
 005D1788    mov         eax,dword ptr [ebp-0C]
 005D178B    call        TBitmap.GetCanvas
 005D1790    call        TCanvas.GetHandle
 005D1795    push        eax
 005D1796    call        user32.DrawIconEx
 005D179B    push        ebp
 005D179C    mov         edx,dword ptr [ebp-14]
 005D179F    mov         eax,dword ptr [ebp-10]
 005D17A2    call        005D137C
 005D17A7    pop         ecx
 005D17A8    mov         edx,dword ptr [ebp-4]
 005D17AB    mov         dword ptr [edx+2C],eax;TFormStyleHook.FCaptionRect.Top:LongInt
 005D17AE    mov         eax,dword ptr [ebp-4]
 005D17B1    mov         eax,dword ptr [eax+1C];TFormStyleHook.FText:string
 005D17B4    mov         eax,dword ptr [eax+8]
 005D17B7    cmp         byte ptr [eax+71],1
 005D17BB    sete        byte ptr [ebp-29]
 005D17BF    push        0F
 005D17C1    call        user32.GetSystemMetrics
 005D17C6    mov         dword ptr [ebp-24],eax
 005D17C9    xor         eax,eax
 005D17CB    mov         dword ptr [ebp-1C],eax
 005D17CE    mov         eax,dword ptr [ebp-4]
 005D17D1    cmp         byte ptr [eax+0A5],0;TFormStyleHook.FMinButtonRect.Top:LongInt
>005D17D8    je          005D17F2
 005D17DA    mov         eax,dword ptr [ebp-4]
 005D17DD    add         eax,8;TFormStyleHook.FControl:TWinControl
 005D17E0    call        RectWidth
 005D17E5    mov         edx,dword ptr [ebp-24]
 005D17E8    lea         edx,[edx+edx*2]
 005D17EB    sub         eax,edx
 005D17ED    mov         dword ptr [ebp-34],eax
>005D17F0    jmp         005D1800
 005D17F2    mov         eax,dword ptr [ebp-4]
 005D17F5    add         eax,8;TFormStyleHook.FControl:TWinControl
 005D17F8    call        RectWidth
 005D17FD    mov         dword ptr [ebp-34],eax
 005D1800    cmp         byte ptr [ebp-29],0
>005D1804    jne         005D1819
 005D1806    test        bl,bl
>005D1808    je          005D1812
 005D180A    mov         eax,dword ptr [ebp-24]
 005D180D    mov         dword ptr [ebp-18],eax
>005D1810    jmp         005D181F
 005D1812    xor         eax,eax
 005D1814    mov         dword ptr [ebp-18],eax
>005D1817    jmp         005D181F
 005D1819    mov         eax,dword ptr [ebp-34]
 005D181C    mov         dword ptr [ebp-18],eax
 005D181F    mov         eax,dword ptr [ebp-4]
 005D1822    mov         edi,dword ptr [eax+2C];TFormStyleHook.FCaptionRect.Top:LongInt
 005D1825    dec         edi
 005D1826    test        edi,edi
>005D1828    jl          005D19FA
 005D182E    inc         edi
 005D182F    xor         ebx,ebx
 005D1831    mov         esi,ebx
 005D1833    add         esi,esi
 005D1835    add         esi,esi
 005D1837    add         esi,esi
 005D1839    sub         esi,ebx
 005D183B    mov         eax,dword ptr [ebp-4]
 005D183E    mov         eax,dword ptr [eax+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D1841    mov         dword ptr [eax+esi*4],ebx
 005D1844    mov         eax,dword ptr [ebp-0C]
 005D1847    call        TBitmap.GetCanvas
 005D184C    mov         ecx,eax
 005D184E    mov         eax,dword ptr [ebp-4]
 005D1851    mov         eax,dword ptr [eax+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D1854    mov         edx,dword ptr [eax+esi*4+8]
 005D1858    mov         eax,dword ptr [ebp-4]
 005D185B    call        005D0F08
 005D1860    mov         dword ptr [ebp-20],eax
 005D1863    cmp         dword ptr [ebp-20],0
>005D1867    jne         005D1892
 005D1869    push        0
 005D186B    lea         eax,[ebp-50]
 005D186E    push        eax
 005D186F    xor         ecx,ecx
 005D1871    xor         edx,edx
 005D1873    xor         eax,eax
 005D1875    call        Rect
 005D187A    mov         eax,dword ptr [ebp-4]
 005D187D    mov         eax,dword ptr [eax+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D1880    push        edi
 005D1881    lea         edi,[eax+esi*4+0C]
 005D1885    lea         esi,[ebp-50]
 005D1888    movs        dword ptr [edi],dword ptr [esi]
 005D1889    movs        dword ptr [edi],dword ptr [esi]
 005D188A    movs        dword ptr [edi],dword ptr [esi]
 005D188B    movs        dword ptr [edi],dword ptr [esi]
 005D188C    pop         edi
>005D188D    jmp         005D19F2
 005D1892    cmp         byte ptr [ebp-29],0
>005D1896    jne         005D190E
 005D1898    mov         edx,dword ptr [ebp-4]
 005D189B    mov         edx,dword ptr [edx+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D189E    mov         eax,dword ptr [ebp-18]
 005D18A1    mov         dword ptr [edx+esi*4+0C],eax
 005D18A5    add         eax,dword ptr [ebp-20]
 005D18A8    mov         edx,dword ptr [ebp-4]
 005D18AB    mov         edx,dword ptr [edx+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D18AE    mov         dword ptr [edx+esi*4+14],eax
 005D18B2    mov         eax,dword ptr [ebp-4]
 005D18B5    add         eax,8;TFormStyleHook.FControl:TWinControl
 005D18B8    call        RectWidth
 005D18BD    mov         esi,ebx
 005D18BF    add         esi,esi
 005D18C1    add         esi,esi
 005D18C3    add         esi,esi
 005D18C5    sub         esi,ebx
 005D18C7    mov         edx,dword ptr [ebp-4]
 005D18CA    mov         edx,dword ptr [edx+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D18CD    cmp         eax,dword ptr [edx+esi*4+14]
>005D18D1    jge         005D18FC
 005D18D3    cmp         dword ptr [ebp-18],0
>005D18D7    je          005D18FC
 005D18D9    push        0F
 005D18DB    call        user32.GetSystemMetrics
 005D18E0    add         dword ptr [ebp-1C],eax
 005D18E3    mov         eax,dword ptr [ebp-4]
 005D18E6    mov         eax,dword ptr [eax+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D18E9    xor         edx,edx
 005D18EB    mov         dword ptr [eax+esi*4+0C],edx
 005D18EF    mov         eax,dword ptr [ebp-4]
 005D18F2    mov         eax,dword ptr [eax+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D18F5    mov         edx,dword ptr [ebp-20]
 005D18F8    mov         dword ptr [eax+esi*4+14],edx
 005D18FC    mov         eax,dword ptr [ebp-4]
 005D18FF    mov         eax,dword ptr [eax+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D1902    mov         eax,dword ptr [eax+esi*4+14]
 005D1906    mov         dword ptr [ebp-18],eax
>005D1909    jmp         005D19B6
 005D190E    mov         edx,dword ptr [ebp-4]
 005D1911    mov         edx,dword ptr [edx+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D1914    mov         eax,dword ptr [ebp-18]
 005D1917    sub         eax,dword ptr [ebp-20]
 005D191A    mov         dword ptr [edx+esi*4+0C],eax
 005D191E    add         eax,dword ptr [ebp-20]
 005D1921    mov         edx,dword ptr [ebp-4]
 005D1924    mov         edx,dword ptr [edx+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D1927    mov         dword ptr [edx+esi*4+14],eax
 005D192B    mov         esi,ebx
 005D192D    add         esi,esi
 005D192F    add         esi,esi
 005D1931    add         esi,esi
 005D1933    sub         esi,ebx
 005D1935    mov         eax,dword ptr [ebp-4]
 005D1938    mov         eax,dword ptr [eax+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D193B    cmp         dword ptr [eax+esi*4+0C],0
>005D1940    jge         005D19A9
 005D1942    cmp         dword ptr [ebp-18],0
>005D1946    je          005D19A9
 005D1948    push        0F
 005D194A    call        user32.GetSystemMetrics
 005D194F    add         dword ptr [ebp-1C],eax
 005D1952    mov         eax,dword ptr [ebp-4]
 005D1955    cmp         byte ptr [eax+0A5],0;TFormStyleHook.FMinButtonRect.Top:LongInt
>005D195C    je          005D197D
 005D195E    mov         eax,dword ptr [ebp-4]
 005D1961    add         eax,8;TFormStyleHook.FControl:TWinControl
 005D1964    call        RectWidth
 005D1969    mov         edx,dword ptr [ebp-24]
 005D196C    lea         edx,[edx+edx*2]
 005D196F    sub         eax,edx
 005D1971    mov         edx,dword ptr [ebp-4]
 005D1974    mov         edx,dword ptr [edx+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D1977    mov         dword ptr [edx+esi*4+14],eax
>005D197B    jmp         005D1992
 005D197D    mov         eax,dword ptr [ebp-4]
 005D1980    add         eax,8;TFormStyleHook.FControl:TWinControl
 005D1983    call        RectWidth
 005D1988    mov         edx,dword ptr [ebp-4]
 005D198B    mov         edx,dword ptr [edx+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D198E    mov         dword ptr [edx+esi*4+14],eax
 005D1992    mov         eax,dword ptr [ebp-4]
 005D1995    mov         eax,dword ptr [eax+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D1998    mov         eax,dword ptr [eax+esi*4+14]
 005D199C    sub         eax,dword ptr [ebp-20]
 005D199F    mov         edx,dword ptr [ebp-4]
 005D19A2    mov         edx,dword ptr [edx+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D19A5    mov         dword ptr [edx+esi*4+0C],eax
 005D19A9    mov         eax,dword ptr [ebp-4]
 005D19AC    mov         eax,dword ptr [eax+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D19AF    mov         eax,dword ptr [eax+esi*4+0C]
 005D19B3    mov         dword ptr [ebp-18],eax
 005D19B6    mov         esi,ebx
 005D19B8    add         esi,esi
 005D19BA    add         esi,esi
 005D19BC    add         esi,esi
 005D19BE    sub         esi,ebx
 005D19C0    mov         eax,dword ptr [ebp-4]
 005D19C3    mov         eax,dword ptr [eax+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D19C6    mov         edx,dword ptr [ebp-1C]
 005D19C9    mov         dword ptr [eax+esi*4+10],edx
 005D19CD    push        0F
 005D19CF    call        user32.GetSystemMetrics
 005D19D4    mov         edx,ebx
 005D19D6    add         edx,edx
 005D19D8    add         edx,edx
 005D19DA    add         edx,edx
 005D19DC    sub         edx,ebx
 005D19DE    mov         ecx,dword ptr [ebp-4]
 005D19E1    mov         ecx,dword ptr [ecx+30]
 005D19E4    add         eax,dword ptr [ecx+edx*4+10]
 005D19E8    mov         edx,dword ptr [ebp-4]
 005D19EB    mov         edx,dword ptr [edx+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D19EE    mov         dword ptr [edx+esi*4+18],eax
 005D19F2    inc         ebx
 005D19F3    dec         edi
>005D19F4    jne         005D1831
 005D19FA    cmp         byte ptr [ebp-29],0
>005D19FE    jne         005D1ACE
 005D1A04    or          esi,0FFFFFFFF
 005D1A07    mov         eax,dword ptr [ebp-4]
 005D1A0A    mov         ebx,dword ptr [eax+2C];TFormStyleHook.FCaptionRect.Top:LongInt
 005D1A0D    dec         ebx
 005D1A0E    cmp         ebx,0
>005D1A11    jl          005D1ACE
 005D1A17    push        ebp
 005D1A18    mov         eax,dword ptr [ebp-10]
 005D1A1B    mov         edx,dword ptr [eax]
 005D1A1D    call        dword ptr [edx+48]
 005D1A20    mov         edx,ebx
 005D1A22    call        005D1528
 005D1A27    pop         ecx
 005D1A28    test        al,al
>005D1A2A    je          005D1AC4
 005D1A30    mov         eax,ebx
 005D1A32    add         eax,eax
 005D1A34    add         eax,eax
 005D1A36    add         eax,eax
 005D1A38    sub         eax,ebx
 005D1A3A    mov         edx,dword ptr [ebp-4]
 005D1A3D    mov         edx,dword ptr [edx+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D1A40    mov         dword ptr [edx+eax*4],ebx
 005D1A43    mov         edx,dword ptr [ebp-4]
 005D1A46    mov         edx,dword ptr [edx+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D1A49    lea         eax,[edx+eax*4+0C]
 005D1A4D    call        RectWidth
 005D1A52    mov         dword ptr [ebp-20],eax
 005D1A55    cmp         dword ptr [ebp-20],0
>005D1A59    jle         005D1AC4
 005D1A5B    cmp         esi,0FFFFFFFF
>005D1A5E    je          005D1A8E
 005D1A60    test        esi,esi
>005D1A62    jl          005D1AC4
 005D1A64    mov         eax,ebx
 005D1A66    add         eax,eax
 005D1A68    add         eax,eax
 005D1A6A    add         eax,eax
 005D1A6C    sub         eax,ebx
 005D1A6E    mov         edx,dword ptr [ebp-4]
 005D1A71    mov         edx,dword ptr [edx+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D1A74    mov         eax,dword ptr [edx+eax*4+10]
 005D1A78    mov         edx,esi
 005D1A7A    add         edx,edx
 005D1A7C    add         edx,edx
 005D1A7E    add         edx,edx
 005D1A80    sub         edx,esi
 005D1A82    mov         ecx,dword ptr [ebp-4]
 005D1A85    mov         ecx,dword ptr [ecx+30]
 005D1A88    cmp         eax,dword ptr [ecx+edx*4+10]
>005D1A8C    jne         005D1AC4
 005D1A8E    mov         eax,ebx
 005D1A90    add         eax,eax
 005D1A92    add         eax,eax
 005D1A94    add         eax,eax
 005D1A96    sub         eax,ebx
 005D1A98    mov         edx,dword ptr [ebp-4]
 005D1A9B    mov         edx,dword ptr [edx+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D1A9E    mov         ecx,dword ptr [ebp-34]
 005D1AA1    sub         ecx,dword ptr [ebp-20]
 005D1AA4    mov         dword ptr [edx+eax*4+0C],ecx
 005D1AA8    mov         edx,dword ptr [ebp-4]
 005D1AAB    mov         edx,dword ptr [edx+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D1AAE    mov         ecx,dword ptr [ebp-34]
 005D1AB1    mov         dword ptr [edx+eax*4+14],ecx
 005D1AB5    mov         edx,dword ptr [ebp-4]
 005D1AB8    mov         edx,dword ptr [edx+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D1ABB    mov         eax,dword ptr [edx+eax*4+0C]
 005D1ABF    mov         dword ptr [ebp-34],eax
 005D1AC2    mov         esi,ebx
 005D1AC4    dec         ebx
 005D1AC5    cmp         ebx,0FFFFFFFF
>005D1AC8    jne         005D1A17
 005D1ACE    mov         eax,dword ptr [ebp-4]
 005D1AD1    mov         edi,dword ptr [eax+2C];TFormStyleHook.FCaptionRect.Top:LongInt
 005D1AD4    dec         edi
 005D1AD5    test        edi,edi
>005D1AD7    jl          005D1B18
 005D1AD9    inc         edi
 005D1ADA    xor         ebx,ebx
 005D1ADC    mov         esi,ebx
 005D1ADE    add         esi,esi
 005D1AE0    add         esi,esi
 005D1AE2    add         esi,esi
 005D1AE4    sub         esi,ebx
 005D1AE6    mov         eax,dword ptr [ebp-4]
 005D1AE9    mov         eax,dword ptr [eax+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D1AEC    lea         eax,[eax+esi*4+0C]
 005D1AF0    call        RectWidth
 005D1AF5    test        eax,eax
>005D1AF7    jle         005D1B14
 005D1AF9    mov         eax,dword ptr [ebp-0C]
 005D1AFC    call        TBitmap.GetCanvas
 005D1B01    mov         ecx,eax
 005D1B03    mov         eax,dword ptr [ebp-4]
 005D1B06    mov         eax,dword ptr [eax+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D1B09    lea         edx,[eax+esi*4]
 005D1B0C    mov         eax,dword ptr [ebp-4]
 005D1B0F    call        005D0FC0
 005D1B14    inc         ebx
 005D1B15    dec         edi
>005D1B16    jne         005D1ADC
 005D1B18    mov         eax,dword ptr [ebp-0C]
 005D1B1B    mov         edx,dword ptr [eax]
 005D1B1D    call        dword ptr [edx+30];TBitmap.GetWidth
 005D1B20    mov         dword ptr [ebp-18],eax
 005D1B23    mov         eax,dword ptr [ebp-0C]
 005D1B26    mov         edx,dword ptr [eax]
 005D1B28    call        dword ptr [edx+24];TBitmap.GetHeight
 005D1B2B    sub         eax,dword ptr [ebp-24]
 005D1B2E    mov         dword ptr [ebp-1C],eax
 005D1B31    mov         eax,dword ptr [ebp-4]
 005D1B34    cmp         byte ptr [eax+0A5],0;TFormStyleHook.FMinButtonRect.Top:LongInt
>005D1B3B    je          005D1C9F
 005D1B41    xor         ebx,ebx
 005D1B43    lea         eax,[ebx+ebx*2]
 005D1B46    mov         edx,dword ptr [ebp-4]
 005D1B49    mov         dword ptr [edx+eax*8+3C],ebx
 005D1B4D    mov         eax,ebx
 005D1B4F    sub         eax,1
>005D1B52    jb          005D1B62
>005D1B54    je          005D1BA8
 005D1B56    dec         eax
>005D1B57    je          005D1BE8
>005D1B5D    jmp         005D1C26
 005D1B62    mov         eax,dword ptr [ebp-4]
 005D1B65    mov         eax,dword ptr [eax+34]
 005D1B68    cmp         ebx,eax
>005D1B6A    jne         005D1B87
 005D1B6C    mov         edx,dword ptr [ebp-4]
 005D1B6F    cmp         ebx,dword ptr [edx+0A0];TFormStyleHook.FMinButtonRect:TRect
>005D1B75    jne         005D1B87
 005D1B77    lea         eax,[ebx+ebx*2]
 005D1B7A    mov         edx,dword ptr [ebp-4]
 005D1B7D    mov         byte ptr [edx+eax*8+40],3E
>005D1B82    jmp         005D1C26
 005D1B87    cmp         eax,ebx
>005D1B89    jne         005D1B9B
 005D1B8B    lea         eax,[ebx+ebx*2]
 005D1B8E    mov         edx,dword ptr [ebp-4]
 005D1B91    mov         byte ptr [edx+eax*8+40],3D
>005D1B96    jmp         005D1C26
 005D1B9B    lea         eax,[ebx+ebx*2]
 005D1B9E    mov         edx,dword ptr [ebp-4]
 005D1BA1    mov         byte ptr [edx+eax*8+40],3C
>005D1BA6    jmp         005D1C26
 005D1BA8    mov         eax,dword ptr [ebp-4]
 005D1BAB    mov         eax,dword ptr [eax+34]
 005D1BAE    cmp         ebx,eax
>005D1BB0    jne         005D1BCA
 005D1BB2    mov         edx,dword ptr [ebp-4]
 005D1BB5    cmp         ebx,dword ptr [edx+0A0];TFormStyleHook.FMinButtonRect:TRect
>005D1BBB    jne         005D1BCA
 005D1BBD    lea         eax,[ebx+ebx*2]
 005D1BC0    mov         edx,dword ptr [ebp-4]
 005D1BC3    mov         byte ptr [edx+eax*8+40],46
>005D1BC8    jmp         005D1C26
 005D1BCA    cmp         eax,ebx
>005D1BCC    jne         005D1BDB
 005D1BCE    lea         eax,[ebx+ebx*2]
 005D1BD1    mov         edx,dword ptr [ebp-4]
 005D1BD4    mov         byte ptr [edx+eax*8+40],45
>005D1BD9    jmp         005D1C26
 005D1BDB    lea         eax,[ebx+ebx*2]
 005D1BDE    mov         edx,dword ptr [ebp-4]
 005D1BE1    mov         byte ptr [edx+eax*8+40],44
>005D1BE6    jmp         005D1C26
 005D1BE8    mov         eax,dword ptr [ebp-4]
 005D1BEB    mov         eax,dword ptr [eax+34]
 005D1BEE    cmp         ebx,eax
>005D1BF0    jne         005D1C0A
 005D1BF2    mov         edx,dword ptr [ebp-4]
 005D1BF5    cmp         ebx,dword ptr [edx+0A0];TFormStyleHook.FMinButtonRect:TRect
>005D1BFB    jne         005D1C0A
 005D1BFD    lea         eax,[ebx+ebx*2]
 005D1C00    mov         edx,dword ptr [ebp-4]
 005D1C03    mov         byte ptr [edx+eax*8+40],2E
>005D1C08    jmp         005D1C26
 005D1C0A    cmp         eax,ebx
>005D1C0C    jne         005D1C1B
 005D1C0E    lea         eax,[ebx+ebx*2]
 005D1C11    mov         edx,dword ptr [ebp-4]
 005D1C14    mov         byte ptr [edx+eax*8+40],2D
>005D1C19    jmp         005D1C26
 005D1C1B    lea         eax,[ebx+ebx*2]
 005D1C1E    mov         edx,dword ptr [ebp-4]
 005D1C21    mov         byte ptr [edx+eax*8+40],2C
 005D1C26    mov         eax,dword ptr [ebp-1C]
 005D1C29    add         eax,dword ptr [ebp-24]
 005D1C2C    push        eax
 005D1C2D    lea         eax,[ebp-50]
 005D1C30    push        eax
 005D1C31    mov         eax,dword ptr [ebp-18]
 005D1C34    sub         eax,dword ptr [ebp-24]
 005D1C37    mov         ecx,dword ptr [ebp-18]
 005D1C3A    mov         edx,dword ptr [ebp-1C]
 005D1C3D    call        Rect
 005D1C42    lea         esi,[ebx+ebx*2]
 005D1C45    mov         eax,dword ptr [ebp-4]
 005D1C48    push        esi
 005D1C49    lea         edi,[eax+esi*8+44]
 005D1C4D    lea         esi,[ebp-50]
 005D1C50    movs        dword ptr [edi],dword ptr [esi]
 005D1C51    movs        dword ptr [edi],dword ptr [esi]
 005D1C52    movs        dword ptr [edi],dword ptr [esi]
 005D1C53    movs        dword ptr [edi],dword ptr [esi]
 005D1C54    pop         esi
 005D1C55    mov         eax,dword ptr [ebp-4]
 005D1C58    movzx       edx,byte ptr [eax+esi*8+40]
 005D1C5D    lea         ecx,[ebp-40]
 005D1C60    mov         eax,dword ptr [ebp-30]
 005D1C63    mov         edi,dword ptr [eax]
 005D1C65    call        dword ptr [edi+10C];TCustomStyleServices.GetElementDetails
 005D1C6B    mov         eax,dword ptr [ebp-4]
 005D1C6E    lea         eax,[eax+esi*8+44]
 005D1C72    push        eax
 005D1C73    push        0
 005D1C75    mov         eax,dword ptr [ebp-0C]
 005D1C78    call        TBitmap.GetCanvas
 005D1C7D    call        TCanvas.GetHandle
 005D1C82    mov         edx,eax
 005D1C84    lea         ecx,[ebp-40]
 005D1C87    mov         eax,dword ptr [ebp-30]
 005D1C8A    call        TCustomStyleServices.DrawElement
 005D1C8F    mov         eax,dword ptr [ebp-24]
 005D1C92    sub         dword ptr [ebp-18],eax
 005D1C95    inc         ebx
 005D1C96    cmp         ebx,3
>005D1C99    jne         005D1B43
 005D1C9F    mov         eax,dword ptr [ebp-0C]
 005D1CA2    push        eax
 005D1CA3    mov         eax,dword ptr [ebp-4]
 005D1CA6    mov         ecx,dword ptr [eax+0C];TFormStyleHook.FCallDefaultProc:Boolean
 005D1CA9    mov         eax,dword ptr [ebp-4]
 005D1CAC    mov         edx,dword ptr [eax+8];TFormStyleHook.FControl:TWinControl
 005D1CAF    mov         eax,dword ptr [ebp-8]
 005D1CB2    mov         ebx,dword ptr [eax]
 005D1CB4    call        dword ptr [ebx+44];TCanvas.Draw
 005D1CB7    xor         eax,eax
 005D1CB9    pop         edx
 005D1CBA    pop         ecx
 005D1CBB    pop         ecx
 005D1CBC    mov         dword ptr fs:[eax],edx
 005D1CBF    push        5D1CD4
 005D1CC4    mov         eax,dword ptr [ebp-0C]
 005D1CC7    call        TObject.Free
 005D1CCC    ret
>005D1CCD    jmp         @HandleFinally
>005D1CD2    jmp         005D1CC4
 005D1CD4    pop         edi
 005D1CD5    pop         esi
 005D1CD6    pop         ebx
 005D1CD7    mov         esp,ebp
 005D1CD9    pop         ebp
 005D1CDA    ret
*}
end;

//005D1CDC
{*function sub_005D1CDC(?:?; ?:?; ?:?):?;
begin
 005D1CDC    push        ebp
 005D1CDD    mov         ebp,esp
 005D1CDF    add         esp,0FFFFFFD0
 005D1CE2    push        ebx
 005D1CE3    push        esi
 005D1CE4    push        edi
 005D1CE5    mov         ebx,dword ptr [ebp+10]
 005D1CE8    mov         edi,dword ptr [ebp+8]
 005D1CEB    cmp         dword ptr ds:[7CA7D4],0;gvar_007CA7D4
>005D1CF2    je          005D1D0B
 005D1CF4    cmp         dword ptr ds:[7CA7D4],0;gvar_007CA7D4
>005D1CFB    je          005D1D12
 005D1CFD    mov         eax,[007CA7D4];gvar_007CA7D4
 005D1D02    call        005D0A70
 005D1D07    test        eax,eax
>005D1D09    jne         005D1D12
 005D1D0B    xor         esi,esi
>005D1D0D    jmp         005D2272
 005D1D12    push        ebx
 005D1D13    mov         eax,dword ptr [ebp+0C]
 005D1D16    push        eax
 005D1D17    push        edi
 005D1D18    mov         eax,[007CA7D4];gvar_007CA7D4
 005D1D1D    mov         eax,dword ptr [eax+88]
 005D1D23    push        eax
 005D1D24    call        user32.CallNextHookEx
 005D1D29    mov         esi,eax
 005D1D2B    test        esi,esi
>005D1D2D    jne         005D2272
 005D1D33    mov         eax,[007CA7D4];gvar_007CA7D4
 005D1D38    cmp         byte ptr [eax+0A4],0
>005D1D3F    je          005D1D7C
 005D1D41    mov         eax,[007CA7D4];gvar_007CA7D4
 005D1D46    mov         byte ptr [eax+0A4],0
 005D1D4D    mov         eax,[007C461C];^gvar_007CA765
 005D1D52    test        byte ptr [eax],1
>005D1D55    jne         005D1D7C
 005D1D57    cmp         dword ptr [ebx+4],11F
>005D1D5E    je          005D1D7C
 005D1D60    mov         eax,[007CA7D4];gvar_007CA7D4
 005D1D65    cmp         byte ptr [eax+18],0
>005D1D69    je          005D1D7C
 005D1D6B    push        0
 005D1D6D    push        28
 005D1D6F    push        100
 005D1D74    mov         eax,dword ptr [ebx]
 005D1D76    push        eax
 005D1D77    call        user32.PostMessageW
 005D1D7C    cmp         edi,2
>005D1D7F    jne         005D2272
 005D1D85    mov         eax,dword ptr [ebx+4]
 005D1D88    sub         eax,100
>005D1D8D    je          005D1F1B
 005D1D93    sub         eax,4
>005D1D96    je          005D1EAC
 005D1D9C    sub         eax,1B
>005D1D9F    je          005D1ED1
 005D1DA5    sub         eax,0E1
>005D1DAA    jne         005D2272
 005D1DB0    lea         edx,[ebp-30]
 005D1DB3    mov         eax,[007C4DA0];^gvar_007CA5D4
 005D1DB8    mov         eax,dword ptr [eax]
 005D1DBA    call        TMouse.GetCursorPos
 005D1DBF    push        dword ptr [ebp-2C]
 005D1DC2    push        dword ptr [ebp-30]
 005D1DC5    call        user32.WindowFromPoint
 005D1DCA    mov         ebx,eax
 005D1DCC    mov         eax,[007CA7D4];gvar_007CA7D4
 005D1DD1    mov         eax,dword ptr [eax+1C]
 005D1DD4    call        TStyleHook.GetHandle
 005D1DD9    cmp         ebx,eax
>005D1DDB    jne         005D2272
 005D1DE1    mov         eax,[007CA7D4];gvar_007CA7D4
 005D1DE6    cmp         byte ptr [eax+8F],0
>005D1DED    jne         005D2272
 005D1DF3    lea         edx,[ebp-0C]
 005D1DF6    mov         eax,[007C4DA0];^gvar_007CA5D4
 005D1DFB    mov         eax,dword ptr [eax]
 005D1DFD    call        TMouse.GetCursorPos
 005D1E02    mov         eax,[007CA7D4];gvar_007CA7D4
 005D1E07    mov         eax,dword ptr [eax+1C]
 005D1E0A    mov         eax,dword ptr [eax+8]
 005D1E0D    mov         edx,dword ptr [ebp-0C]
 005D1E10    sub         edx,dword ptr [eax+50]
 005D1E13    mov         ecx,dword ptr ds:[7CA7D4];gvar_007CA7D4
 005D1E19    sub         edx,dword ptr [ecx+8]
 005D1E1C    mov         dword ptr [ebp-0C],edx
 005D1E1F    mov         edx,dword ptr [ebp-8]
 005D1E22    sub         edx,dword ptr [eax+54]
 005D1E25    mov         eax,[007CA7D4];gvar_007CA7D4
 005D1E2A    sub         edx,dword ptr [eax+0C]
 005D1E2D    mov         dword ptr [ebp-8],edx
 005D1E30    mov         eax,[007CA7D4];gvar_007CA7D4
 005D1E35    mov         ebx,dword ptr [eax+4]
 005D1E38    mov         ecx,edx
 005D1E3A    mov         eax,[007CA7D4];gvar_007CA7D4
 005D1E3F    mov         edx,dword ptr [ebp-0C]
 005D1E42    call        TFormStyleHook.TMainMenuBarStyleHook.MouseMove
 005D1E47    mov         eax,[007CA7D4];gvar_007CA7D4
 005D1E4C    mov         eax,dword ptr [eax+4]
 005D1E4F    cmp         ebx,eax
>005D1E51    je          005D2272
 005D1E57    inc         eax
>005D1E58    je          005D2272
 005D1E5E    lea         edx,[ebp-0C]
 005D1E61    mov         eax,[007C4DA0];^gvar_007CA5D4
 005D1E66    mov         eax,dword ptr [eax]
 005D1E68    call        TMouse.GetCursorPos
 005D1E6D    mov         eax,[007CA7D4];gvar_007CA7D4
 005D1E72    mov         byte ptr [eax+8F],1
 005D1E79    mov         eax,[007CA7D4];gvar_007CA7D4
 005D1E7E    mov         eax,dword ptr [eax+1C]
 005D1E81    call        TStyleHook.GetHandle
 005D1E86    movzx       edx,word ptr [ebp-0C]
 005D1E8A    mov         word ptr [ebp-10],dx
 005D1E8E    movzx       edx,word ptr [ebp-8]
 005D1E92    mov         word ptr [ebp-0E],dx
 005D1E96    mov         edx,dword ptr [ebp-10]
 005D1E99    push        edx
 005D1E9A    push        1
 005D1E9C    push        0A1
 005D1EA1    push        eax
 005D1EA2    call        user32.PostMessageW
>005D1EA7    jmp         005D2272
 005D1EAC    cmp         dword ptr [ebx+8],12
>005D1EB0    jne         005D2272
 005D1EB6    mov         eax,[007CA7D4];gvar_007CA7D4
 005D1EBB    mov         byte ptr [eax+8F],0
 005D1EC2    mov         eax,[007CA7D4];gvar_007CA7D4
 005D1EC7    call        005CFE8C
>005D1ECC    jmp         005D2272
 005D1ED1    mov         byte ptr [ebp-1],0
 005D1ED5    mov         eax,dword ptr [ebx+8]
 005D1ED8    shr         eax,10
 005D1EDB    test        al,10
>005D1EDD    je          005D1EE3
 005D1EDF    mov         byte ptr [ebp-1],1
 005D1EE3    cmp         byte ptr [ebp-1],1
>005D1EE7    jne         005D1EFB
 005D1EE9    movzx       eax,word ptr [ebx+8]
 005D1EED    push        eax
 005D1EEE    mov         eax,dword ptr [ebx+0C]
 005D1EF1    push        eax
 005D1EF2    call        user32.GetSubMenu
 005D1EF7    mov         ebx,eax
>005D1EF9    jmp         005D1F01
 005D1EFB    movzx       eax,word ptr [ebx+8]
 005D1EFF    mov         ebx,eax
 005D1F01    movzx       ecx,byte ptr [ebp-1]
 005D1F05    mov         edx,ebx
 005D1F07    mov         eax,[007CA7D4];gvar_007CA7D4
 005D1F0C    call        005CFE38
 005D1F11    mov         [007CA7D0],eax;gvar_007CA7D0
>005D1F16    jmp         005D2272
 005D1F1B    mov         eax,[007CA7D4];gvar_007CA7D4
 005D1F20    mov         eax,dword ptr [eax+1C]
 005D1F23    mov         eax,dword ptr [eax+8]
 005D1F26    cmp         byte ptr [eax+71],1
>005D1F2A    jne         005D1F49
 005D1F2C    mov         eax,dword ptr [ebx+8]
 005D1F2F    cmp         eax,27
>005D1F32    jne         005D1F3D
 005D1F34    mov         dword ptr [ebx+8],25
>005D1F3B    jmp         005D1F49
 005D1F3D    cmp         eax,25
>005D1F40    jne         005D1F49
 005D1F42    mov         dword ptr [ebx+8],27
 005D1F49    xor         eax,eax
 005D1F4B    mov         edx,dword ptr [ebx+8]
 005D1F4E    cmp         edx,27
>005D1F51    jne         005D1F65
 005D1F53    mov         edx,dword ptr ds:[7CA7D0];gvar_007CA7D0
 005D1F59    mov         eax,[007CA7D4];gvar_007CA7D4
 005D1F5E    call        005CFE1C
>005D1F63    jmp         005D1F7A
 005D1F65    cmp         edx,25
>005D1F68    jne         005D1F7A
 005D1F6A    mov         edx,dword ptr ds:[7CA7D0];gvar_007CA7D0
 005D1F70    mov         eax,[007CA7D4];gvar_007CA7D4
 005D1F75    call        005CFDF8
 005D1F7A    mov         edx,dword ptr [ebx+8]
 005D1F7D    sub         edx,25
>005D1F80    je          005D20FD
 005D1F86    sub         edx,2
>005D1F89    jne         005D2272
 005D1F8F    test        al,al
>005D1F91    je          005D2272
 005D1F97    mov         eax,[007CA7D4];gvar_007CA7D4
 005D1F9C    mov         byte ptr [eax+18],1
 005D1FA0    mov         eax,[007CA7D4];gvar_007CA7D4
 005D1FA5    cmp         byte ptr [eax+0A7],0
>005D1FAC    je          005D200F
 005D1FAE    mov         eax,[007CA7D4];gvar_007CA7D4
 005D1FB3    call        005CFCF4
 005D1FB8    test        al,al
>005D1FBA    je          005D200F
 005D1FBC    lea         edx,[ebp-0C]
 005D1FBF    mov         eax,[007C4DA0];^gvar_007CA5D4
 005D1FC4    mov         eax,dword ptr [eax]
 005D1FC6    call        TMouse.GetCursorPos
 005D1FCB    mov         eax,[007CA7D4];gvar_007CA7D4
 005D1FD0    mov         byte ptr [eax+8E],1
 005D1FD7    call        user32.EndMenu
 005D1FDC    mov         eax,[007CA7D4];gvar_007CA7D4
 005D1FE1    mov         eax,dword ptr [eax+1C]
 005D1FE4    call        TStyleHook.GetHandle
 005D1FE9    movzx       edx,word ptr [ebp-0C]
 005D1FED    mov         word ptr [ebp-14],dx
 005D1FF1    movzx       edx,word ptr [ebp-8]
 005D1FF5    mov         word ptr [ebp-12],dx
 005D1FF9    mov         edx,dword ptr [ebp-14]
 005D1FFC    push        edx
 005D1FFD    push        1
 005D1FFF    push        0A1
 005D2004    push        eax
 005D2005    call        user32.PostMessageW
>005D200A    jmp         005D2272
 005D200F    mov         eax,[007CA7D4];gvar_007CA7D4
 005D2014    cmp         byte ptr [eax+0A7],0
>005D201B    jne         005D202B
 005D201D    xor         edx,edx
 005D201F    mov         eax,[007CA7D4];gvar_007CA7D4
 005D2024    call        005D0404
>005D2029    jmp         005D2037
 005D202B    xor         edx,edx
 005D202D    mov         eax,[007CA7D4];gvar_007CA7D4
 005D2032    call        005D02F0
 005D2037    cmp         eax,0FFFFFFFF
>005D203A    je          005D2098
 005D203C    mov         edx,dword ptr ds:[7CA7D4];gvar_007CA7D4
 005D2042    mov         dword ptr [edx+4],eax
 005D2045    lea         edx,[ebp-0C]
 005D2048    mov         eax,[007C4DA0];^gvar_007CA5D4
 005D204D    mov         eax,dword ptr [eax]
 005D204F    call        TMouse.GetCursorPos
 005D2054    mov         eax,[007CA7D4];gvar_007CA7D4
 005D2059    mov         byte ptr [eax+8F],1
 005D2060    call        user32.EndMenu
 005D2065    mov         eax,[007CA7D4];gvar_007CA7D4
 005D206A    mov         eax,dword ptr [eax+1C]
 005D206D    call        TStyleHook.GetHandle
 005D2072    movzx       edx,word ptr [ebp-0C]
 005D2076    mov         word ptr [ebp-18],dx
 005D207A    movzx       edx,word ptr [ebp-8]
 005D207E    mov         word ptr [ebp-16],dx
 005D2082    mov         edx,dword ptr [ebp-18]
 005D2085    push        edx
 005D2086    push        1
 005D2088    push        0A1
 005D208D    push        eax
 005D208E    call        user32.PostMessageW
>005D2093    jmp         005D2272
 005D2098    mov         eax,[007CA7D4];gvar_007CA7D4
 005D209D    cmp         byte ptr [eax+0A7],0
>005D20A4    jne         005D2272
 005D20AA    lea         edx,[ebp-0C]
 005D20AD    mov         eax,[007C4DA0];^gvar_007CA5D4
 005D20B2    mov         eax,dword ptr [eax]
 005D20B4    call        TMouse.GetCursorPos
 005D20B9    mov         eax,[007CA7D4];gvar_007CA7D4
 005D20BE    mov         byte ptr [eax+90],1
 005D20C5    call        user32.EndMenu
 005D20CA    mov         eax,[007CA7D4];gvar_007CA7D4
 005D20CF    mov         eax,dword ptr [eax+1C]
 005D20D2    call        TStyleHook.GetHandle
 005D20D7    movzx       edx,word ptr [ebp-0C]
 005D20DB    mov         word ptr [ebp-1C],dx
 005D20DF    movzx       edx,word ptr [ebp-8]
 005D20E3    mov         word ptr [ebp-1A],dx
 005D20E7    mov         edx,dword ptr [ebp-1C]
 005D20EA    push        edx
 005D20EB    push        1
 005D20ED    push        0A1
 005D20F2    push        eax
 005D20F3    call        user32.PostMessageW
>005D20F8    jmp         005D2272
 005D20FD    test        al,al
>005D20FF    je          005D2272
 005D2105    mov         eax,[007CA7D4];gvar_007CA7D4
 005D210A    mov         byte ptr [eax+18],1
 005D210E    mov         eax,[007CA7D4];gvar_007CA7D4
 005D2113    cmp         byte ptr [eax+85],0
>005D211A    je          005D2121
 005D211C    or          eax,0FFFFFFFF
>005D211F    jmp         005D2149
 005D2121    mov         eax,[007CA7D4];gvar_007CA7D4
 005D2126    cmp         byte ptr [eax+0A7],0
>005D212D    jne         005D213D
 005D212F    xor         edx,edx
 005D2131    mov         eax,[007CA7D4];gvar_007CA7D4
 005D2136    call        005D0590
>005D213B    jmp         005D2149
 005D213D    xor         edx,edx
 005D213F    mov         eax,[007CA7D4];gvar_007CA7D4
 005D2144    call        005D0344
 005D2149    cmp         eax,0FFFFFFFF
>005D214C    je          005D21AA
 005D214E    mov         edx,dword ptr ds:[7CA7D4];gvar_007CA7D4
 005D2154    mov         dword ptr [edx+4],eax
 005D2157    lea         edx,[ebp-0C]
 005D215A    mov         eax,[007C4DA0];^gvar_007CA5D4
 005D215F    mov         eax,dword ptr [eax]
 005D2161    call        TMouse.GetCursorPos
 005D2166    mov         eax,[007CA7D4];gvar_007CA7D4
 005D216B    mov         byte ptr [eax+8F],1
 005D2172    call        user32.EndMenu
 005D2177    mov         eax,[007CA7D4];gvar_007CA7D4
 005D217C    mov         eax,dword ptr [eax+1C]
 005D217F    call        TStyleHook.GetHandle
 005D2184    movzx       edx,word ptr [ebp-0C]
 005D2188    mov         word ptr [ebp-20],dx
 005D218C    movzx       edx,word ptr [ebp-8]
 005D2190    mov         word ptr [ebp-1E],dx
 005D2194    mov         edx,dword ptr [ebp-20]
 005D2197    push        edx
 005D2198    push        1
 005D219A    push        0A1
 005D219F    push        eax
 005D21A0    call        user32.PostMessageW
>005D21A5    jmp         005D2272
 005D21AA    mov         eax,[007CA7D4];gvar_007CA7D4
 005D21AF    call        005CFCF4
 005D21B4    test        al,al
>005D21B6    je          005D2216
 005D21B8    mov         eax,[007CA7D4];gvar_007CA7D4
 005D21BD    cmp         byte ptr [eax+85],0
>005D21C4    jne         005D2216
 005D21C6    lea         edx,[ebp-0C]
 005D21C9    mov         eax,[007C4DA0];^gvar_007CA5D4
 005D21CE    mov         eax,dword ptr [eax]
 005D21D0    call        TMouse.GetCursorPos
 005D21D5    mov         eax,[007CA7D4];gvar_007CA7D4
 005D21DA    mov         byte ptr [eax+8E],1
 005D21E1    call        user32.EndMenu
 005D21E6    mov         eax,[007CA7D4];gvar_007CA7D4
 005D21EB    mov         eax,dword ptr [eax+1C]
 005D21EE    call        TStyleHook.GetHandle
 005D21F3    movzx       edx,word ptr [ebp-0C]
 005D21F7    mov         word ptr [ebp-24],dx
 005D21FB    movzx       edx,word ptr [ebp-8]
 005D21FF    mov         word ptr [ebp-22],dx
 005D2203    mov         edx,dword ptr [ebp-24]
 005D2206    push        edx
 005D2207    push        1
 005D2209    push        0A1
 005D220E    push        eax
 005D220F    call        user32.PostMessageW
>005D2214    jmp         005D2272
 005D2216    mov         eax,[007CA7D4];gvar_007CA7D4
 005D221B    cmp         byte ptr [eax+0A7],0
>005D2222    jne         005D2272
 005D2224    lea         edx,[ebp-0C]
 005D2227    mov         eax,[007C4DA0];^gvar_007CA5D4
 005D222C    mov         eax,dword ptr [eax]
 005D222E    call        TMouse.GetCursorPos
 005D2233    mov         eax,[007CA7D4];gvar_007CA7D4
 005D2238    mov         byte ptr [eax+90],1
 005D223F    call        user32.EndMenu
 005D2244    mov         eax,[007CA7D4];gvar_007CA7D4
 005D2249    mov         eax,dword ptr [eax+1C]
 005D224C    call        TStyleHook.GetHandle
 005D2251    movzx       edx,word ptr [ebp-0C]
 005D2255    mov         word ptr [ebp-28],dx
 005D2259    movzx       edx,word ptr [ebp-8]
 005D225D    mov         word ptr [ebp-26],dx
 005D2261    mov         edx,dword ptr [ebp-28]
 005D2264    push        edx
 005D2265    push        1
 005D2267    push        0A1
 005D226C    push        eax
 005D226D    call        user32.PostMessageW
 005D2272    mov         eax,esi
 005D2274    pop         edi
 005D2275    pop         esi
 005D2276    pop         ebx
 005D2277    mov         esp,ebp
 005D2279    pop         ebp
 005D227A    ret         0C
end;*}

//005D2280
{*procedure sub_005D2280(?:TMainMenuBarStyleHook; ?:?);
begin
 005D2280    push        esi
 005D2281    push        edi
 005D2282    mov         esi,edx
 005D2284    lea         edi,[eax+8]
 005D2287    movs        dword ptr [edi],dword ptr [esi]
 005D2288    movs        dword ptr [edi],dword ptr [esi]
 005D2289    movs        dword ptr [edi],dword ptr [esi]
 005D228A    movs        dword ptr [edi],dword ptr [esi]
 005D228B    pop         edi
 005D228C    pop         esi
 005D228D    ret
end;*}

//005D2290
procedure TFormStyleHook.TMainMenuBarStyleHook.MouseUp(X:Integer; Y:Integer);
begin
{*
 005D2290    push        ebx
 005D2291    push        esi
 005D2292    push        edi
 005D2293    push        ebp
 005D2294    mov         ebp,ecx
 005D2296    mov         edi,edx
 005D2298    mov         ebx,eax
 005D229A    mov         ecx,ebp
 005D229C    mov         edx,edi
 005D229E    mov         eax,ebx
 005D22A0    call        005D09E4
 005D22A5    mov         esi,eax
 005D22A7    mov         dword ptr [ebx+4],esi;TFormStyleHook.FBrush:TBrush
 005D22AA    inc         esi
>005D22AB    je          005D22F5
 005D22AD    mov         eax,ebx
 005D22AF    call        TFormStyleHook.TMainMenuBarStyleHook.Invalidate
 005D22B4    mov         eax,dword ptr [ebx+4];TFormStyleHook.FBrush:TBrush
 005D22B7    mov         edx,eax
 005D22B9    add         eax,eax
 005D22BB    add         eax,eax
 005D22BD    add         eax,eax
 005D22BF    sub         eax,edx
 005D22C1    mov         edx,dword ptr [ebx+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D22C4    mov         eax,dword ptr [edx+eax*4+8]
 005D22C8    call        TMenuItem.GetCount
 005D22CD    test        eax,eax
>005D22CF    jne         005D22F5
 005D22D1    mov         eax,ebx
 005D22D3    call        005D0A70
 005D22D8    mov         edx,dword ptr [ebx+4];TFormStyleHook.FBrush:TBrush
 005D22DB    mov         ecx,edx
 005D22DD    add         edx,edx
 005D22DF    add         edx,edx
 005D22E1    add         edx,edx
 005D22E3    sub         edx,ecx
 005D22E5    mov         ecx,dword ptr [ebx+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D22E8    mov         edx,dword ptr [ecx+edx*4+8]
 005D22EC    movzx       edx,word ptr [edx+5C]
 005D22F0    call        TMenu.DispatchCommand
 005D22F5    cmp         byte ptr [ebx+0A5],0;TFormStyleHook.FMinButtonRect.Top:LongInt
>005D22FC    je          005D2368
 005D22FE    mov         ecx,ebp
 005D2300    mov         edx,edi
 005D2302    mov         eax,ebx
 005D2304    call        005D0990
 005D2309    mov         dword ptr [ebx+34],eax
 005D230C    mov         eax,dword ptr [ebx+34]
 005D230F    cmp         eax,0FFFFFFFF
>005D2312    je          005D235E
 005D2314    cmp         eax,dword ptr [ebx+0A0];TFormStyleHook.FMinButtonRect:TRect
>005D231A    jne         005D235E
 005D231C    mov         dword ptr [ebx+0A0],0FFFFFFFF;TFormStyleHook.FMinButtonRect:TRect
 005D2326    mov         eax,ebx
 005D2328    call        TFormStyleHook.TMainMenuBarStyleHook.Invalidate
 005D232D    mov         eax,dword ptr [ebx+34]
 005D2330    lea         eax,[eax+eax*2]
 005D2333    mov         eax,dword ptr [ebx+eax*8+3C]
 005D2337    sub         eax,1
>005D233A    jb          005D2343
>005D233C    je          005D234C
 005D233E    dec         eax
>005D233F    je          005D2355
>005D2341    jmp         005D2368
 005D2343    mov         eax,ebx
 005D2345    call        005D08DC
>005D234A    jmp         005D2368
 005D234C    mov         eax,ebx
 005D234E    call        005D0918
>005D2353    jmp         005D2368
 005D2355    mov         eax,ebx
 005D2357    call        005D0954
>005D235C    jmp         005D2368
 005D235E    mov         dword ptr [ebx+0A0],0FFFFFFFF;TFormStyleHook.FMinButtonRect:TRect
 005D2368    pop         ebp
 005D2369    pop         edi
 005D236A    pop         esi
 005D236B    pop         ebx
 005D236C    ret
*}
end;

//005D2370
procedure TFormStyleHook.TMainMenuBarStyleHook.MouseDown(X:Integer; Y:Integer);
begin
{*
 005D2370    push        ebx
 005D2371    push        esi
 005D2372    push        edi
 005D2373    push        ebp
 005D2374    add         esp,0FFFFFFE8
 005D2377    mov         ebp,ecx
 005D2379    mov         edi,edx
 005D237B    mov         ebx,eax
 005D237D    mov         ecx,ebp
 005D237F    mov         edx,edi
 005D2381    mov         eax,ebx
 005D2383    call        005D09E4
 005D2388    mov         esi,eax
 005D238A    mov         dword ptr [ebx+4],esi;TFormStyleHook.FBrush:TBrush
 005D238D    inc         esi
>005D238E    je          005D239B
 005D2390    mov         dl,1
 005D2392    mov         eax,ebx
 005D2394    call        TFormStyleHook.TMainMenuBarStyleHook.MenuEnter
>005D2399    jmp         005D23EB
 005D239B    cmp         byte ptr [ebx+0A5],0;TFormStyleHook.FMinButtonRect.Top:LongInt
>005D23A2    je          005D23EB
 005D23A4    mov         eax,ebx
 005D23A6    call        005CFCF4
 005D23AB    test        al,al
>005D23AD    je          005D23EB
 005D23AF    mov         dword ptr [esp],edi
 005D23B2    mov         dword ptr [esp+4],ebp
 005D23B6    push        0F
 005D23B8    call        user32.GetSystemMetrics
 005D23BD    push        eax
 005D23BE    lea         eax,[esp+0C]
 005D23C2    push        eax
 005D23C3    push        0F
 005D23C5    call        user32.GetSystemMetrics
 005D23CA    mov         ecx,eax
 005D23CC    xor         edx,edx
 005D23CE    xor         eax,eax
 005D23D0    call        Rect
 005D23D5    lea         eax,[esp+8]
 005D23D9    mov         edx,esp
 005D23DB    call        TRect.Contains
 005D23E0    test        al,al
>005D23E2    je          005D23EB
 005D23E4    mov         eax,ebx
 005D23E6    call        TFormStyleHook.TMainMenuBarStyleHook.TrackMDIChildSystemMenu
 005D23EB    cmp         byte ptr [ebx+0A5],0;TFormStyleHook.FMinButtonRect.Top:LongInt
>005D23F2    je          005D2416
 005D23F4    mov         ecx,ebp
 005D23F6    mov         edx,edi
 005D23F8    mov         eax,ebx
 005D23FA    call        005D0990
 005D23FF    mov         esi,eax
 005D2401    mov         dword ptr [ebx+34],esi
 005D2404    mov         eax,esi
 005D2406    mov         dword ptr [ebx+0A0],eax;TFormStyleHook.FMinButtonRect:TRect
 005D240C    inc         eax
>005D240D    je          005D2416
 005D240F    mov         eax,ebx
 005D2411    call        TFormStyleHook.TMainMenuBarStyleHook.Invalidate
 005D2416    add         esp,18
 005D2419    pop         ebp
 005D241A    pop         edi
 005D241B    pop         esi
 005D241C    pop         ebx
 005D241D    ret
*}
end;

//005D2420
procedure TFormStyleHook.TMainMenuBarStyleHook.MouseMove(X:Integer; Y:Integer);
begin
{*
 005D2420    push        ebx
 005D2421    push        esi
 005D2422    push        edi
 005D2423    push        ebp
 005D2424    add         esp,0FFFFFFF8
 005D2427    mov         edi,ecx
 005D2429    mov         esi,edx
 005D242B    mov         ebx,eax
 005D242D    cmp         byte ptr [ebx+8F],0;TFormStyleHook.?f8F:byte
>005D2434    jne         005D2569
 005D243A    mov         edx,esp
 005D243C    mov         eax,[007C4DA0];^gvar_007CA5D4
 005D2441    mov         eax,dword ptr [eax]
 005D2443    call        TMouse.GetCursorPos
 005D2448    mov         edx,esp
 005D244A    lea         eax,[ebx+98];TFormStyleHook.FMDIStopHorzScrollBar:Boolean
 005D2450    call        TPoint.&op_Equality
 005D2455    test        al,al
>005D2457    je          005D2473
 005D2459    cmp         byte ptr [ebx+86],0
>005D2460    jne         005D2569
 005D2466    cmp         byte ptr [ebx+8C],0;TFormStyleHook.FMDIHorzScrollBar:TWinControl
>005D246D    jne         005D2569
 005D2473    mov         edx,esp
 005D2475    mov         eax,[007C4DA0];^gvar_007CA5D4
 005D247A    mov         eax,dword ptr [eax]
 005D247C    call        TMouse.GetCursorPos
 005D2481    mov         eax,dword ptr [esp]
 005D2484    mov         dword ptr [ebx+98],eax;TFormStyleHook.FMDIStopHorzScrollBar:Boolean
 005D248A    mov         eax,dword ptr [esp+4]
 005D248E    mov         dword ptr [ebx+9C],eax;TFormStyleHook.FMDIVertScrollBar:TWinControl
 005D2494    test        esi,esi
>005D2496    jl          005D249C
 005D2498    test        edi,edi
>005D249A    jge         005D24A0
 005D249C    xor         eax,eax
>005D249E    jmp         005D24A2
 005D24A0    mov         al,1
 005D24A2    mov         byte ptr [ebx+8D],al;TFormStyleHook.?f8D:byte
 005D24A8    cmp         byte ptr [ebx+8C],0;TFormStyleHook.FMDIHorzScrollBar:TWinControl
>005D24AF    je          005D24CF
 005D24B1    mov         ecx,edi
 005D24B3    mov         edx,esi
 005D24B5    mov         eax,ebx
 005D24B7    call        005D09E4
 005D24BC    inc         eax
>005D24BD    je          005D24DD
 005D24BF    mov         ecx,edi
 005D24C1    mov         edx,esi
 005D24C3    mov         eax,ebx
 005D24C5    call        005D09E4
 005D24CA    mov         dword ptr [ebx+4],eax;TFormStyleHook.FBrush:TBrush
>005D24CD    jmp         005D24DD
 005D24CF    mov         ecx,edi
 005D24D1    mov         edx,esi
 005D24D3    mov         eax,ebx
 005D24D5    call        005D09E4
 005D24DA    mov         dword ptr [ebx+4],eax;TFormStyleHook.FBrush:TBrush
 005D24DD    mov         eax,dword ptr [ebx+4];TFormStyleHook.FBrush:TBrush
 005D24E0    cmp         eax,dword ptr [ebx+94];TFormStyleHook.FMDIScrollSizeBox:TWinControl
>005D24E6    je          005D252E
 005D24E8    mov         eax,ebx
 005D24EA    call        TFormStyleHook.TMainMenuBarStyleHook.Invalidate
 005D24EF    mov         eax,dword ptr [ebx+4];TFormStyleHook.FBrush:TBrush
 005D24F2    mov         dword ptr [ebx+94],eax;TFormStyleHook.FMDIScrollSizeBox:TWinControl
 005D24F8    cmp         byte ptr [ebx+8C],0;TFormStyleHook.FMDIHorzScrollBar:TWinControl
>005D24FF    je          005D252E
 005D2501    cmp         dword ptr [ebx+88],0;TFormStyleHook.FMDIClientInstance:Pointer
>005D2508    jne         005D252E
 005D250A    mov         eax,dword ptr [ebx+4];TFormStyleHook.FBrush:TBrush
 005D250D    mov         edx,eax
 005D250F    add         eax,eax
 005D2511    add         eax,eax
 005D2513    add         eax,eax
 005D2515    sub         eax,edx
 005D2517    mov         edx,dword ptr [ebx+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D251A    mov         eax,dword ptr [edx+eax*4+8]
 005D251E    call        TMenuItem.GetCount
 005D2523    test        eax,eax
>005D2525    je          005D252E
 005D2527    mov         eax,ebx
 005D2529    call        005D2760
 005D252E    cmp         byte ptr [ebx+0A5],0;TFormStyleHook.FMinButtonRect.Top:LongInt
>005D2535    je          005D2569
 005D2537    mov         ecx,edi
 005D2539    mov         edx,esi
 005D253B    mov         eax,ebx
 005D253D    call        005D0990
 005D2542    mov         ebp,eax
 005D2544    mov         dword ptr [ebx+34],ebp
 005D2547    cmp         ebp,dword ptr [ebx+38];TFormStyleHook.FChangeSizeCalled:Boolean
>005D254A    je          005D2559
 005D254C    mov         eax,ebx
 005D254E    call        TFormStyleHook.TMainMenuBarStyleHook.Invalidate
 005D2553    mov         eax,dword ptr [ebx+34]
 005D2556    mov         dword ptr [ebx+38],eax;TFormStyleHook.FChangeSizeCalled:Boolean
 005D2559    cmp         dword ptr [ebx+34],0FFFFFFFF
>005D255D    jne         005D2569
 005D255F    mov         dword ptr [ebx+0A0],0FFFFFFFF;TFormStyleHook.FMinButtonRect:TRect
 005D2569    pop         ecx
 005D256A    pop         edx
 005D256B    pop         ebp
 005D256C    pop         edi
 005D256D    pop         esi
 005D256E    pop         ebx
 005D256F    ret
*}
end;

//005D2570
procedure TFormStyleHook.TMainMenuBarStyleHook.TrackMDIChildSystemMenu;
begin
{*
 005D2570    push        ebx
 005D2571    push        esi
 005D2572    push        edi
 005D2573    push        ebp
 005D2574    add         esp,0FFFFFFE0
 005D2577    mov         ebx,eax
 005D2579    mov         byte ptr [ebx+84],0
 005D2580    mov         byte ptr [ebx+0A6],0;TFormStyleHook.FMinButtonRect.Top:LongInt
 005D2587    mov         eax,dword ptr [ebx+1C];TFormStyleHook.FText:string
 005D258A    call        005D3A90
 005D258F    cmp         byte ptr [eax+2C2],2
>005D2596    jne         005D266A
 005D259C    mov         eax,dword ptr [ebx+1C];TFormStyleHook.FText:string
 005D259F    call        005D3A90
 005D25A4    call        005C2D30
 005D25A9    mov         esi,eax
 005D25AB    test        esi,esi
>005D25AD    je          005D266A
 005D25B3    mov         byte ptr [ebx+85],1
 005D25BA    cmp         byte ptr [esi+2BE],2
>005D25C1    jne         005D25DA
 005D25C3    mov         eax,dword ptr [ebx+1C];TFormStyleHook.FText:string
 005D25C6    mov         edi,dword ptr [eax+0B0]
 005D25CC    add         edi,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D25CF    mov         ebp,dword ptr [eax+0DC]
 005D25D5    add         ebp,dword ptr [ebx+14];TFormStyleHook.FHandled:Boolean
>005D25D8    jmp         005D262E
 005D25DA    xor         eax,eax
 005D25DC    mov         dword ptr [esp+8],eax
 005D25E0    xor         eax,eax
 005D25E2    mov         dword ptr [esp+0C],eax
 005D25E6    mov         ecx,esp
 005D25E8    lea         edx,[esp+8]
 005D25EC    mov         eax,dword ptr [ebx+1C];TFormStyleHook.FText:string
 005D25EF    mov         eax,dword ptr [eax+8]
 005D25F2    call        TControl.ClientToScreen
 005D25F7    lea         edx,[esp+10]
 005D25FB    mov         eax,dword ptr [ebx+1C];TFormStyleHook.FText:string
 005D25FE    call        005D3738
 005D2603    mov         eax,esi
 005D2605    call        TCustomForm.GetLeft
 005D260A    mov         edi,eax
 005D260C    mov         eax,dword ptr [esp]
 005D260F    add         eax,dword ptr [esp+10]
 005D2613    add         edi,eax
 005D2615    add         edi,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D2618    mov         eax,esi
 005D261A    call        TCustomForm.GetTop
 005D261F    mov         ebp,eax
 005D2621    mov         eax,dword ptr [esp+4]
 005D2625    add         eax,dword ptr [esp+14]
 005D2629    add         ebp,eax
 005D262B    add         ebp,dword ptr [ebx+0C];TFormStyleHook.FCallDefaultProc:Boolean
 005D262E    mov         eax,ebx
 005D2630    call        005D0820
 005D2635    movzx       eax,di
 005D2638    movzx       edx,bp
 005D263B    shl         edx,10
 005D263E    or          eax,edx
 005D2640    push        eax
 005D2641    push        0
 005D2643    push        313
 005D2648    mov         eax,esi
 005D264A    call        TWinControl.GetHandle
 005D264F    push        eax
 005D2650    call        user32.SendMessageW
 005D2655    mov         eax,ebx
 005D2657    call        005D0860
 005D265C    mov         byte ptr [ebx+85],0
 005D2663    mov         eax,ebx
 005D2665    call        TFormStyleHook.TMainMenuBarStyleHook.Invalidate
 005D266A    add         esp,20
 005D266D    pop         ebp
 005D266E    pop         edi
 005D266F    pop         esi
 005D2670    pop         ebx
 005D2671    ret
*}
end;

//005D2674
{*function TFormStyleHook.TMainMenuBarStyleHook.TrackSystemMenu:?;
begin
 005D2674    push        ebx
 005D2675    push        esi
 005D2676    push        edi
 005D2677    push        ebp
 005D2678    add         esp,0FFFFFFD0
 005D267B    mov         ebx,eax
 005D267D    mov         byte ptr [ebx+84],0
 005D2684    mov         byte ptr [ebx+0A6],0;TFormStyleHook.FMinButtonRect.Top:LongInt
 005D268B    mov         byte ptr [ebx+0A7],1;TFormStyleHook.FMinButtonRect.Top:LongInt
 005D2692    mov         eax,dword ptr [ebx+1C];TFormStyleHook.FText:string
 005D2695    mov         esi,dword ptr [eax+0B0]
 005D269B    add         esi,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D269E    mov         edi,dword ptr [eax+0DC]
 005D26A4    add         edi,dword ptr [ebx+0C];TFormStyleHook.FCallDefaultProc:Boolean
 005D26A7    mov         dword ptr [esp+10],esi
 005D26AB    mov         dword ptr [esp+14],edi
 005D26AF    mov         eax,dword ptr [esp+10]
 005D26B3    mov         dword ptr [esp],eax
 005D26B6    mov         eax,dword ptr [esp+14]
 005D26BA    mov         dword ptr [esp+4],eax
 005D26BE    lea         eax,[esi+32]
 005D26C1    mov         dword ptr [esp+18],eax
 005D26C5    mov         dword ptr [esp+1C],edi
 005D26C9    mov         eax,dword ptr [esp+18]
 005D26CD    mov         dword ptr [esp+8],eax
 005D26D1    mov         eax,dword ptr [esp+1C]
 005D26D5    mov         dword ptr [esp+0C],eax
 005D26D9    mov         edx,esp
 005D26DB    xor         ecx,ecx
 005D26DD    mov         eax,[007CA7CC];Screen:TScreen
 005D26E2    call        TScreen.MonitorFromPoint
 005D26E7    mov         ebp,eax
 005D26E9    lea         edx,[esp+8]
 005D26ED    xor         ecx,ecx
 005D26EF    mov         eax,[007CA7CC];Screen:TScreen
 005D26F4    call        TScreen.MonitorFromPoint
 005D26F9    cmp         ebp,eax
>005D26FB    je          005D271A
 005D26FD    lea         edx,[esp+8]
 005D2701    xor         ecx,ecx
 005D2703    mov         eax,[007CA7CC];Screen:TScreen
 005D2708    call        TScreen.MonitorFromPoint
 005D270D    lea         edx,[esp+20]
 005D2711    call        005C7C24
 005D2716    mov         esi,dword ptr [esp+20]
 005D271A    mov         eax,ebx
 005D271C    call        005D0820
 005D2721    movzx       eax,si
 005D2724    movzx       edx,di
 005D2727    shl         edx,10
 005D272A    or          eax,edx
 005D272C    push        eax
 005D272D    push        0
 005D272F    push        313
 005D2734    mov         eax,dword ptr [ebx+1C];TFormStyleHook.FText:string
 005D2737    call        TStyleHook.GetHandle
 005D273C    push        eax
 005D273D    call        user32.SendMessageW
 005D2742    mov         eax,ebx
 005D2744    call        005D0860
 005D2749    mov         byte ptr [ebx+0A7],0;TFormStyleHook.FMinButtonRect.Top:LongInt
 005D2750    mov         eax,ebx
 005D2752    call        TFormStyleHook.TMainMenuBarStyleHook.Invalidate
 005D2757    add         esp,30
 005D275A    pop         ebp
 005D275B    pop         edi
 005D275C    pop         esi
 005D275D    pop         ebx
 005D275E    ret
end;*}

//005D2760
procedure sub_005D2760(?:TFormStyleHook);
begin
{*
 005D2760    push        ebx
 005D2761    push        esi
 005D2762    push        edi
 005D2763    push        ebp
 005D2764    add         esp,0FFFFFFF8
 005D2767    mov         ebx,eax
 005D2769    mov         byte ptr [ebx+84],0
 005D2770    mov         byte ptr [ebx+0A6],0;TFormStyleHook.FMinButtonRect.Top:LongInt
 005D2777    mov         byte ptr [ebx+8C],1;TFormStyleHook.FMDIHorzScrollBar:TWinControl
 005D277E    mov         eax,ebx
 005D2780    call        TFormStyleHook.TMainMenuBarStyleHook.Invalidate
 005D2785    mov         eax,dword ptr [ebx+4];TFormStyleHook.FBrush:TBrush
 005D2788    mov         edx,eax
 005D278A    add         eax,eax
 005D278C    add         eax,eax
 005D278E    add         eax,eax
 005D2790    sub         eax,edx
 005D2792    mov         edx,dword ptr [ebx+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D2795    mov         eax,dword ptr [edx+eax*4+8]
 005D2799    call        TMenuItem.GetCount
 005D279E    test        eax,eax
>005D27A0    je          005D28CB
 005D27A6    mov         eax,dword ptr [ebx+4];TFormStyleHook.FBrush:TBrush
 005D27A9    mov         edx,eax
 005D27AB    add         eax,eax
 005D27AD    add         eax,eax
 005D27AF    add         eax,eax
 005D27B1    sub         eax,edx
 005D27B3    mov         edx,dword ptr [ebx+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D27B6    lea         edx,[edx+eax*4]
 005D27B9    mov         ecx,esp
 005D27BB    mov         eax,ebx
 005D27BD    call        005D0704
 005D27C2    mov         eax,ebx
 005D27C4    call        005D0820
 005D27C9    mov         eax,dword ptr [ebx+1C];TFormStyleHook.FText:string
 005D27CC    mov         eax,dword ptr [eax+8]
 005D27CF    cmp         byte ptr [eax+71],1
>005D27D3    je          005D2814
 005D27D5    push        0
 005D27D7    mov         eax,dword ptr [ebx+1C];TFormStyleHook.FText:string
 005D27DA    call        TStyleHook.GetHandle
 005D27DF    push        eax
 005D27E0    push        0
 005D27E2    mov         eax,dword ptr [esp+10]
 005D27E6    push        eax
 005D27E7    mov         eax,dword ptr [esp+10]
 005D27EB    push        eax
 005D27EC    push        4102
 005D27F1    mov         eax,dword ptr [ebx+4];TFormStyleHook.FBrush:TBrush
 005D27F4    mov         edx,eax
 005D27F6    add         eax,eax
 005D27F8    add         eax,eax
 005D27FA    add         eax,eax
 005D27FC    sub         eax,edx
 005D27FE    mov         edx,dword ptr [ebx+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D2801    mov         eax,dword ptr [edx+eax*4+8]
 005D2805    call        005AD984
 005D280A    push        eax
 005D280B    call        user32.TrackPopupMenu
 005D2810    mov         esi,eax
>005D2812    jmp         005D2851
 005D2814    push        0
 005D2816    mov         eax,dword ptr [ebx+1C];TFormStyleHook.FText:string
 005D2819    call        TStyleHook.GetHandle
 005D281E    push        eax
 005D281F    push        0
 005D2821    mov         eax,dword ptr [esp+10]
 005D2825    push        eax
 005D2826    mov         eax,dword ptr [esp+10]
 005D282A    push        eax
 005D282B    push        410A
 005D2830    mov         eax,dword ptr [ebx+4];TFormStyleHook.FBrush:TBrush
 005D2833    mov         edx,eax
 005D2835    add         eax,eax
 005D2837    add         eax,eax
 005D2839    add         eax,eax
 005D283B    sub         eax,edx
 005D283D    mov         edx,dword ptr [ebx+30];TFormStyleHook.FCaptionRect.Right:LongInt
 005D2840    mov         eax,dword ptr [edx+eax*4+8]
 005D2844    call        005AD984
 005D2849    push        eax
 005D284A    call        user32.TrackPopupMenu
 005D284F    mov         esi,eax
 005D2851    mov         eax,ebx
 005D2853    call        005D0860
 005D2858    mov         byte ptr [ebx+8C],0;TFormStyleHook.FMDIHorzScrollBar:TWinControl
 005D285F    test        esi,esi
>005D2861    je          005D28A7
 005D2863    xor         ecx,ecx
 005D2865    mov         ebp,esi
 005D2867    mov         edx,ebp
 005D2869    mov         eax,ebx
 005D286B    call        005CFE38
 005D2870    mov         edi,eax
 005D2872    test        edi,edi
>005D2874    je          005D2888
 005D2876    mov         eax,edi
 005D2878    call        TMenuItem.GetParentMenu
 005D287D    movzx       edx,word ptr [edi+5C]
 005D2881    call        TMenu.DispatchCommand
>005D2886    jmp         005D289E
 005D2888    push        0
 005D288A    push        ebp
 005D288B    push        111
 005D2890    mov         eax,dword ptr [ebx+1C];TFormStyleHook.FText:string
 005D2893    call        TStyleHook.GetHandle
 005D2898    push        eax
 005D2899    call        user32.PostMessageW
 005D289E    mov         eax,ebx
 005D28A0    call        005CFE8C
>005D28A5    jmp         005D28C4
 005D28A7    cmp         byte ptr [ebx+8F],0;TFormStyleHook.?f8F:byte
>005D28AE    jne         005D28C4
 005D28B0    mov         byte ptr [ebx+86],1
 005D28B7    mov         byte ptr [ebx+28],0;TFormStyleHook.FCaptionRect:TRect
 005D28BB    xor         edx,edx
 005D28BD    mov         eax,ebx
 005D28BF    call        TFormStyleHook.TMainMenuBarStyleHook.ProcessMenuLoop
 005D28C4    mov         eax,ebx
 005D28C6    call        TFormStyleHook.TMainMenuBarStyleHook.Invalidate
 005D28CB    pop         ecx
 005D28CC    pop         edx
 005D28CD    pop         ebp
 005D28CE    pop         edi
 005D28CF    pop         esi
 005D28D0    pop         ebx
 005D28D1    ret
*}
end;

//005D28D4
constructor TFormStyleHook.Create(AControl:TWinControl);
begin
{*
 005D28D4    push        ebx
 005D28D5    push        esi
 005D28D6    test        dl,dl
>005D28D8    je          005D28E2
 005D28DA    add         esp,0FFFFFFF0
 005D28DD    call        @ClassCreate
 005D28E2    mov         ebx,edx
 005D28E4    mov         esi,eax
 005D28E6    xor         edx,edx
 005D28E8    mov         eax,esi
 005D28EA    call        TMouseTrackControlStyleHook.Create
 005D28EF    mov         byte ptr [esi+0F],0;TFormStyleHook.FFocusUpdate:Boolean
 005D28F3    mov         eax,esi
 005D28F5    call        005D3A90
 005D28FA    test        byte ptr [eax+188],2
>005D2901    je          005D2907
 005D2903    mov         byte ptr [esi+16],1;TFormStyleHook.FOverrideEraseBkgnd:Boolean
 005D2907    mov         eax,esi
 005D2909    call        005D2AFC
 005D290E    test        al,al
>005D2910    je          005D2916
 005D2912    mov         byte ptr [esi+18],1;TFormStyleHook.FOverridePaintNC:Boolean
 005D2916    xor         eax,eax
 005D2918    mov         dword ptr [esi+74],eax;TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D291B    xor         eax,eax
 005D291D    mov         dword ptr [esi+8C],eax;TFormStyleHook.FMDIHorzScrollBar:TWinControl
 005D2923    xor         eax,eax
 005D2925    mov         dword ptr [esi+9C],eax;TFormStyleHook.FMDIVertScrollBar:TWinControl
 005D292B    xor         eax,eax
 005D292D    mov         dword ptr [esi+94],eax;TFormStyleHook.FMDIScrollSizeBox:TWinControl
 005D2933    xor         eax,eax
 005D2935    mov         dword ptr [esi+88],eax;TFormStyleHook.FMDIClientInstance:Pointer
 005D293B    xor         eax,eax
 005D293D    mov         dword ptr [esi+90],eax;TFormStyleHook.FMDIPrevClientProc:Pointer
 005D2943    xor         eax,eax
 005D2945    mov         dword ptr [esi+3C],eax;TFormStyleHook.FChangeVisibleChildHandle:HWND
 005D2948    mov         byte ptr [esi+0C8],0;TFormStyleHook.FStopCheckChildMove:Boolean
 005D294F    xor         eax,eax
 005D2951    mov         dword ptr [esi+0B8],eax;TFormStyleHook.FOldHorzSrollBarPosition:Integer
 005D2957    xor         eax,eax
 005D2959    mov         dword ptr [esi+0BC],eax;TFormStyleHook.FOldVertSrollBarPosition:Integer
 005D295F    mov         byte ptr [esi+98],0;TFormStyleHook.FMDIStopHorzScrollBar:Boolean
 005D2966    mov         byte ptr [esi+99],0;TFormStyleHook.FMDIStopVertScrollBar:Boolean
 005D296D    mov         byte ptr [esi+25],1;TFormStyleHook.FMouseInNCArea:Boolean
 005D2971    mov         byte ptr [esi+50],0;TFormStyleHook.FFormActive:Boolean
 005D2975    mov         byte ptr [esi+38],0;TFormStyleHook.FChangeSizeCalled:Boolean
 005D2979    xor         eax,eax
 005D297B    mov         dword ptr [esi+0C4],eax;TFormStyleHook.FRegion:HRGN
 005D2981    mov         eax,dword ptr [esi+8];TFormStyleHook.FControl:TWinControl
 005D2984    mov         eax,dword ptr [eax+50];TWinControl.FLeft:Integer
 005D2987    mov         dword ptr [esi+0B0],eax;TFormStyleHook.FLeft:Integer
 005D298D    mov         eax,dword ptr [esi+8];TFormStyleHook.FControl:TWinControl
 005D2990    mov         eax,dword ptr [eax+54];TWinControl.FTop:Integer
 005D2993    mov         dword ptr [esi+0DC],eax;TFormStyleHook.FTop:Integer
 005D2999    mov         eax,dword ptr [esi+8];TFormStyleHook.FControl:TWinControl
 005D299C    mov         eax,dword ptr [eax+58];TWinControl.FWidth:Integer
 005D299F    mov         dword ptr [esi+0E0],eax;TFormStyleHook.FWidth:Integer
 005D29A5    mov         eax,dword ptr [esi+8];TFormStyleHook.FControl:TWinControl
 005D29A8    mov         eax,dword ptr [eax+5C];TWinControl.FHeight:Integer
 005D29AB    mov         dword ptr [esi+58],eax;TFormStyleHook.FHeight:Integer
 005D29AE    mov         byte ptr [esi+0B4],1;TFormStyleHook.FNeedsUpdate:Boolean
 005D29B5    xor         eax,eax
 005D29B7    mov         dword ptr [esi+6C],eax;TFormStyleHook.FIcon:TIcon
 005D29BA    xor         eax,eax
 005D29BC    mov         dword ptr [esi+70],eax;TFormStyleHook.FIconHandle:HICON
 005D29BF    xor         eax,eax
 005D29C1    mov         dword ptr [esi+54],eax;TFormStyleHook.FHotButton:Integer
 005D29C4    xor         eax,eax
 005D29C6    mov         dword ptr [esi+0C0],eax;TFormStyleHook.FPressedButton:Integer
 005D29CC    mov         byte ptr [esi+0E4],0;TFormStyleHook.FCaptionEmulation:Boolean
 005D29D3    mov         byte ptr [esi+0E5],0;TFormStyleHook.FRestoring:Boolean
 005D29DA    mov         eax,esi
 005D29DC    test        bl,bl
>005D29DE    je          005D29EF
 005D29E0    call        @AfterConstruction
 005D29E5    pop         dword ptr fs:[0]
 005D29EC    add         esp,0C
 005D29EF    mov         eax,esi
 005D29F1    pop         esi
 005D29F2    pop         ebx
 005D29F3    ret
*}
end;

//005D29F4
destructor TFormStyleHook.Destroy();
begin
{*
 005D29F4    push        ebx
 005D29F5    push        esi
 005D29F6    add         esp,0FFFFFFEC
 005D29F9    call        @BeforeDestruction
 005D29FE    mov         ebx,edx
 005D2A00    mov         esi,eax
 005D2A02    cmp         dword ptr [esi+6C],0;TFormStyleHook.FIcon:TIcon
>005D2A06    je          005D2A1F
 005D2A08    lea         eax,[esi+6C];TFormStyleHook.FIcon:TIcon
 005D2A0B    mov         dword ptr [esp],eax
 005D2A0E    mov         eax,dword ptr [esp]
 005D2A11    mov         eax,dword ptr [eax]
 005D2A13    mov         edx,dword ptr [esp]
 005D2A16    xor         ecx,ecx
 005D2A18    mov         dword ptr [edx],ecx
 005D2A1A    call        TObject.Free
 005D2A1F    cmp         dword ptr [esi+88],0;TFormStyleHook.FMDIClientInstance:Pointer
>005D2A26    je          005D2A4B
 005D2A28    mov         eax,dword ptr [esi+8];TFormStyleHook.FControl:TWinControl
 005D2A2B    mov         eax,dword ptr [eax+3B4]
 005D2A31    mov         edx,dword ptr [esi+90];TFormStyleHook.FMDIPrevClientProc:Pointer
 005D2A37    push        edx
 005D2A38    push        0FC
 005D2A3A    push        eax
 005D2A3B    call        user32.SetWindowLongW
 005D2A40    mov         eax,dword ptr [esi+88];TFormStyleHook.FMDIClientInstance:Pointer
 005D2A46    call        005BEE5C
 005D2A4B    cmp         dword ptr [esi+74],0;TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
>005D2A4F    je          005D2A6B
 005D2A51    lea         eax,[esi+74];TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D2A54    mov         dword ptr [esp+4],eax
 005D2A58    mov         eax,dword ptr [esp+4]
 005D2A5C    mov         eax,dword ptr [eax]
 005D2A5E    mov         edx,dword ptr [esp+4]
 005D2A62    xor         ecx,ecx
 005D2A64    mov         dword ptr [edx],ecx
 005D2A66    call        TObject.Free
 005D2A6B    cmp         dword ptr [esi+8C],0;TFormStyleHook.FMDIHorzScrollBar:TWinControl
>005D2A72    je          005D2A91
 005D2A74    lea         eax,[esi+8C];TFormStyleHook.FMDIHorzScrollBar:TWinControl
 005D2A7A    mov         dword ptr [esp+8],eax
 005D2A7E    mov         eax,dword ptr [esp+8]
 005D2A82    mov         eax,dword ptr [eax]
 005D2A84    mov         edx,dword ptr [esp+8]
 005D2A88    xor         ecx,ecx
 005D2A8A    mov         dword ptr [edx],ecx
 005D2A8C    call        TObject.Free
 005D2A91    cmp         dword ptr [esi+9C],0;TFormStyleHook.FMDIVertScrollBar:TWinControl
>005D2A98    je          005D2AB7
 005D2A9A    lea         eax,[esi+9C];TFormStyleHook.FMDIVertScrollBar:TWinControl
 005D2AA0    mov         dword ptr [esp+0C],eax
 005D2AA4    mov         eax,dword ptr [esp+0C]
 005D2AA8    mov         eax,dword ptr [eax]
 005D2AAA    mov         edx,dword ptr [esp+0C]
 005D2AAE    xor         ecx,ecx
 005D2AB0    mov         dword ptr [edx],ecx
 005D2AB2    call        TObject.Free
 005D2AB7    cmp         dword ptr [esi+94],0;TFormStyleHook.FMDIScrollSizeBox:TWinControl
>005D2ABE    je          005D2ADD
 005D2AC0    lea         eax,[esi+94];TFormStyleHook.FMDIScrollSizeBox:TWinControl
 005D2AC6    mov         dword ptr [esp+10],eax
 005D2ACA    mov         eax,dword ptr [esp+10]
 005D2ACE    mov         eax,dword ptr [eax]
 005D2AD0    mov         edx,dword ptr [esp+10]
 005D2AD4    xor         ecx,ecx
 005D2AD6    mov         dword ptr [edx],ecx
 005D2AD8    call        TObject.Free
 005D2ADD    mov         dl,0FC
 005D2ADF    and         dl,bl
 005D2AE1    mov         eax,esi
 005D2AE3    call        TMouseTrackControlStyleHook.Destroy
 005D2AE8    test        bl,bl
>005D2AEA    jle         005D2AF3
 005D2AEC    mov         eax,esi
 005D2AEE    call        @ClassDestroy
 005D2AF3    add         esp,14
 005D2AF6    pop         esi
 005D2AF7    pop         ebx
 005D2AF8    ret
*}
end;

//005D2AFC
{*function sub_005D2AFC(?:TFormStyleHook):?;
begin
 005D2AFC    push        ebx
 005D2AFD    mov         ebx,eax
 005D2AFF    mov         eax,[007C41E8];^gvar_007CA764
 005D2B04    cmp         byte ptr [eax],0
>005D2B07    jne         005D2B19
 005D2B09    mov         eax,ebx
 005D2B0B    call        005D3A90
 005D2B10    test        byte ptr [eax+188],4
>005D2B17    jne         005D2B1D
 005D2B19    xor         eax,eax
 005D2B1B    pop         ebx
 005D2B1C    ret
 005D2B1D    mov         al,1
 005D2B1F    pop         ebx
 005D2B20    ret
end;*}

//005D2B24
procedure TFormStyleHook.Invalidate;
begin
{*
 005D2B24    ret
*}
end;

//005D2B28
{*procedure sub_005D2B28(?:?; ?:?);
begin
 005D2B28    push        ebp
 005D2B29    mov         ebp,esp
 005D2B2B    push        ecx
 005D2B2C    push        ebx
 005D2B2D    push        esi
 005D2B2E    push        edi
 005D2B2F    mov         edi,edx
 005D2B31    mov         dword ptr [ebp-4],eax
 005D2B34    mov         eax,dword ptr [ebp-4]
 005D2B37    mov         byte ptr [eax+0C8],1
 005D2B3E    xor         eax,eax
 005D2B40    push        ebp
 005D2B41    push        5D2BC0
 005D2B46    push        dword ptr fs:[eax]
 005D2B49    mov         dword ptr fs:[eax],esp
 005D2B4C    mov         eax,dword ptr [ebp-4]
 005D2B4F    call        005D3A90
 005D2B54    call        005C2D64
 005D2B59    mov         esi,eax
 005D2B5B    dec         esi
 005D2B5C    test        esi,esi
>005D2B5E    jl          005D2BA8
 005D2B60    inc         esi
 005D2B61    xor         ebx,ebx
 005D2B63    mov         eax,dword ptr [ebp-4]
 005D2B66    call        005D3A90
 005D2B6B    mov         edx,ebx
 005D2B6D    call        TForm.get_MDIChildren
 005D2B72    cmp         byte ptr [eax+69],0;TForm.FVisible:Boolean
>005D2B76    je          005D2BA4
 005D2B78    mov         eax,dword ptr [ebp-4]
 005D2B7B    call        005D3A90
 005D2B80    mov         edx,ebx
 005D2B82    call        TForm.get_MDIChildren
 005D2B87    call        TCustomForm.GetLeft
 005D2B8C    add         eax,edi
 005D2B8E    push        eax
 005D2B8F    mov         eax,dword ptr [ebp-4]
 005D2B92    call        005D3A90
 005D2B97    mov         edx,ebx
 005D2B99    call        TForm.get_MDIChildren
 005D2B9E    pop         edx
 005D2B9F    call        TCustomForm.SetLeft
 005D2BA4    inc         ebx
 005D2BA5    dec         esi
>005D2BA6    jne         005D2B63
 005D2BA8    xor         eax,eax
 005D2BAA    pop         edx
 005D2BAB    pop         ecx
 005D2BAC    pop         ecx
 005D2BAD    mov         dword ptr fs:[eax],edx
 005D2BB0    push        5D2BC7
 005D2BB5    mov         eax,dword ptr [ebp-4]
 005D2BB8    mov         byte ptr [eax+0C8],0
 005D2BBF    ret
>005D2BC0    jmp         @HandleFinally
>005D2BC5    jmp         005D2BB5
 005D2BC7    xor         edx,edx
 005D2BC9    mov         eax,dword ptr [ebp-4]
 005D2BCC    call        005D2D50
 005D2BD1    pop         edi
 005D2BD2    pop         esi
 005D2BD3    pop         ebx
 005D2BD4    pop         ecx
 005D2BD5    pop         ebp
 005D2BD6    ret
end;*}

//005D2BD8
{*procedure sub_005D2BD8(?:?; ?:?);
begin
 005D2BD8    push        ebp
 005D2BD9    mov         ebp,esp
 005D2BDB    push        ecx
 005D2BDC    push        ebx
 005D2BDD    push        esi
 005D2BDE    push        edi
 005D2BDF    mov         edi,edx
 005D2BE1    mov         dword ptr [ebp-4],eax
 005D2BE4    mov         eax,dword ptr [ebp-4]
 005D2BE7    mov         byte ptr [eax+0C8],1
 005D2BEE    xor         eax,eax
 005D2BF0    push        ebp
 005D2BF1    push        5D2C70
 005D2BF6    push        dword ptr fs:[eax]
 005D2BF9    mov         dword ptr fs:[eax],esp
 005D2BFC    mov         eax,dword ptr [ebp-4]
 005D2BFF    call        005D3A90
 005D2C04    call        005C2D64
 005D2C09    mov         esi,eax
 005D2C0B    dec         esi
 005D2C0C    test        esi,esi
>005D2C0E    jl          005D2C58
 005D2C10    inc         esi
 005D2C11    xor         ebx,ebx
 005D2C13    mov         eax,dword ptr [ebp-4]
 005D2C16    call        005D3A90
 005D2C1B    mov         edx,ebx
 005D2C1D    call        TForm.get_MDIChildren
 005D2C22    cmp         byte ptr [eax+69],0;TForm.FVisible:Boolean
>005D2C26    je          005D2C54
 005D2C28    mov         eax,dword ptr [ebp-4]
 005D2C2B    call        005D3A90
 005D2C30    mov         edx,ebx
 005D2C32    call        TForm.get_MDIChildren
 005D2C37    call        TCustomForm.GetTop
 005D2C3C    add         eax,edi
 005D2C3E    push        eax
 005D2C3F    mov         eax,dword ptr [ebp-4]
 005D2C42    call        005D3A90
 005D2C47    mov         edx,ebx
 005D2C49    call        TForm.get_MDIChildren
 005D2C4E    pop         edx
 005D2C4F    call        TCustomForm.SetTop
 005D2C54    inc         ebx
 005D2C55    dec         esi
>005D2C56    jne         005D2C13
 005D2C58    xor         eax,eax
 005D2C5A    pop         edx
 005D2C5B    pop         ecx
 005D2C5C    pop         ecx
 005D2C5D    mov         dword ptr fs:[eax],edx
 005D2C60    push        5D2C77
 005D2C65    mov         eax,dword ptr [ebp-4]
 005D2C68    mov         byte ptr [eax+0C8],0
 005D2C6F    ret
>005D2C70    jmp         @HandleFinally
>005D2C75    jmp         005D2C65
 005D2C77    xor         edx,edx
 005D2C79    mov         eax,dword ptr [ebp-4]
 005D2C7C    call        005D2D50
 005D2C81    pop         edi
 005D2C82    pop         esi
 005D2C83    pop         ebx
 005D2C84    pop         ecx
 005D2C85    pop         ebp
 005D2C86    ret
end;*}

//005D2C88
{*procedure sub_005D2C88(?:?; ?:?; ?:?);
begin
 005D2C88    push        ebp
 005D2C89    mov         ebp,esp
 005D2C8B    push        ebx
 005D2C8C    mov         ebx,eax
 005D2C8E    cmp         byte ptr [ebx+98],0
>005D2C95    jne         005D2CCF
 005D2C97    cmp         cl,8
>005D2C9A    jne         005D2CCF
 005D2C9C    mov         eax,dword ptr [ebx+8C]
 005D2CA2    mov         eax,dword ptr [eax+294]
 005D2CA8    sub         eax,dword ptr [ebx+0B8]
 005D2CAE    test        eax,eax
>005D2CB0    je          005D2CBD
 005D2CB2    mov         edx,eax
 005D2CB4    neg         edx
 005D2CB6    mov         eax,ebx
 005D2CB8    call        005D2B28
 005D2CBD    mov         eax,dword ptr [ebx+8C]
 005D2CC3    mov         eax,dword ptr [eax+294]
 005D2CC9    mov         dword ptr [ebx+0B8],eax
 005D2CCF    pop         ebx
 005D2CD0    pop         ebp
 005D2CD1    ret         4
end;*}

//005D2CD4
{*procedure sub_005D2CD4(?:?; ?:?; ?:?);
begin
 005D2CD4    push        ebp
 005D2CD5    mov         ebp,esp
 005D2CD7    push        ebx
 005D2CD8    mov         ebx,eax
 005D2CDA    cmp         byte ptr [ebx+99],0
>005D2CE1    jne         005D2D1B
 005D2CE3    cmp         cl,8
>005D2CE6    jne         005D2D1B
 005D2CE8    mov         eax,dword ptr [ebx+9C]
 005D2CEE    mov         eax,dword ptr [eax+294]
 005D2CF4    sub         eax,dword ptr [ebx+0BC]
 005D2CFA    test        eax,eax
>005D2CFC    je          005D2D09
 005D2CFE    mov         edx,eax
 005D2D00    neg         edx
 005D2D02    mov         eax,ebx
 005D2D04    call        005D2BD8
 005D2D09    mov         eax,dword ptr [ebx+9C]
 005D2D0F    mov         eax,dword ptr [eax+294]
 005D2D15    mov         dword ptr [ebx+0BC],eax
 005D2D1B    pop         ebx
 005D2D1C    pop         ebp
 005D2D1D    ret         4
end;*}

//005D2D20
{*function sub_005D2D20(?:TFormStyleHook):?;
begin
 005D2D20    push        ebx
 005D2D21    mov         ebx,eax
 005D2D23    mov         eax,ebx
 005D2D25    call        005D3A90
 005D2D2A    call        005C2D30
 005D2D2F    test        eax,eax
>005D2D31    je          005D2D48
 005D2D33    mov         eax,ebx
 005D2D35    call        005D3A90
 005D2D3A    call        005C2D30
 005D2D3F    cmp         byte ptr [eax+2BE],2
>005D2D46    je          005D2D4C
 005D2D48    xor         eax,eax
 005D2D4A    pop         ebx
 005D2D4B    ret
 005D2D4C    mov         al,1
 005D2D4E    pop         ebx
 005D2D4F    ret
end;*}

//005D2D50
{*procedure sub_005D2D50(?:TFormStyleHook; ?:?);
begin
 005D2D50    push        ebx
 005D2D51    push        esi
 005D2D52    push        edi
 005D2D53    push        ebp
 005D2D54    add         esp,0FFFFFFAC
 005D2D57    mov         byte ptr [esp],dl
 005D2D5A    mov         ebx,eax
 005D2D5C    mov         esi,dword ptr [ebx+8C]
 005D2D62    mov         edi,dword ptr [ebx+9C]
 005D2D68    test        esi,esi
>005D2D6A    je          005D33B0
 005D2D70    test        edi,edi
>005D2D72    je          005D33B0
 005D2D78    mov         eax,edi
 005D2D7A    call        TWinControl.HandleAllocated
 005D2D7F    test        al,al
>005D2D81    je          005D33B0
 005D2D87    mov         eax,esi
 005D2D89    call        TWinControl.HandleAllocated
 005D2D8E    test        al,al
>005D2D90    je          005D33B0
 005D2D96    mov         eax,ebx
 005D2D98    call        005D2D20
 005D2D9D    test        al,al
>005D2D9F    je          005D2E12
 005D2DA1    mov         eax,esi
 005D2DA3    call        TWinControl.GetHandle
 005D2DA8    push        eax
 005D2DA9    call        user32.IsWindowVisible
 005D2DAE    test        eax,eax
>005D2DB0    je          005D2DC1
 005D2DB2    push        0
 005D2DB4    mov         eax,esi
 005D2DB6    call        TWinControl.GetHandle
 005D2DBB    push        eax
 005D2DBC    call        user32.ShowWindow
 005D2DC1    mov         eax,edi
 005D2DC3    call        TWinControl.GetHandle
 005D2DC8    push        eax
 005D2DC9    call        user32.IsWindowVisible
 005D2DCE    test        eax,eax
>005D2DD0    je          005D2DE1
 005D2DD2    push        0
 005D2DD4    mov         eax,edi
 005D2DD6    call        TWinControl.GetHandle
 005D2DDB    push        eax
 005D2DDC    call        user32.ShowWindow
 005D2DE1    mov         eax,dword ptr [ebx+94]
 005D2DE7    call        TWinControl.GetHandle
 005D2DEC    push        eax
 005D2DED    call        user32.IsWindowVisible
 005D2DF2    test        eax,eax
>005D2DF4    je          005D33B0
 005D2DFA    push        0
 005D2DFC    mov         eax,dword ptr [ebx+94]
 005D2E02    call        TWinControl.GetHandle
 005D2E07    push        eax
 005D2E08    call        user32.ShowWindow
>005D2E0D    jmp         005D33B0
 005D2E12    mov         byte ptr [esp+18],0
 005D2E17    lea         edx,[esp+24]
 005D2E1B    mov         eax,ebx
 005D2E1D    call        005D3738
 005D2E22    mov         dword ptr [esp+4],7FFFFFFF
 005D2E2A    mov         dword ptr [esp+8],7FFFFFFF
 005D2E32    mov         dword ptr [esp+0C],80000001
 005D2E3A    mov         dword ptr [esp+10],80000001
 005D2E42    mov         eax,ebx
 005D2E44    call        005D3A90
 005D2E49    call        005C2D64
 005D2E4E    dec         eax
 005D2E4F    test        eax,eax
>005D2E51    jl          005D2F50
 005D2E57    inc         eax
 005D2E58    mov         dword ptr [esp+1C],eax
 005D2E5C    xor         ebp,ebp
 005D2E5E    mov         eax,ebx
 005D2E60    call        005D3A90
 005D2E65    mov         edx,ebp
 005D2E67    call        TForm.get_MDIChildren
 005D2E6C    cmp         byte ptr [eax+69],0;TForm.FVisible:Boolean
>005D2E70    je          005D2F45
 005D2E76    mov         eax,ebx
 005D2E78    call        005D3A90
 005D2E7D    mov         edx,ebp
 005D2E7F    call        TForm.get_MDIChildren
 005D2E84    call        TWinControl.GetHandle
 005D2E89    cmp         eax,dword ptr [ebx+3C]
>005D2E8C    je          005D2F45
 005D2E92    mov         eax,ebx
 005D2E94    call        005D3A90
 005D2E99    mov         dword ptr [esp+20],eax
 005D2E9D    lea         eax,[esp+34]
 005D2EA1    push        eax
 005D2EA2    mov         edx,ebp
 005D2EA4    mov         eax,dword ptr [esp+24]
 005D2EA8    call        TForm.get_MDIChildren
 005D2EAD    call        TWinControl.GetHandle
 005D2EB2    push        eax
 005D2EB3    call        user32.GetWindowRect
 005D2EB8    lea         eax,[esp+44]
 005D2EBC    push        eax
 005D2EBD    mov         eax,dword ptr [ebx+8]
 005D2EC0    mov         eax,dword ptr [eax+3B4]
 005D2EC6    push        eax
 005D2EC7    call        user32.GetWindowRect
 005D2ECC    mov         ecx,dword ptr [esp+48]
 005D2ED0    neg         ecx
 005D2ED2    mov         edx,dword ptr [esp+44]
 005D2ED6    neg         edx
 005D2ED8    lea         eax,[esp+34]
 005D2EDC    call        OffsetRect
 005D2EE1    mov         eax,dword ptr [esp+34]
 005D2EE5    cmp         eax,dword ptr [esp+4]
>005D2EE9    jge         005D2EEF
 005D2EEB    mov         dword ptr [esp+4],eax
 005D2EEF    mov         eax,dword ptr [esp+38]
 005D2EF3    cmp         eax,dword ptr [esp+8]
>005D2EF7    jge         005D2EFD
 005D2EF9    mov         dword ptr [esp+8],eax
 005D2EFD    lea         eax,[esp+34]
 005D2F01    call        RectWidth
 005D2F06    add         eax,dword ptr [esp+34]
 005D2F0A    cmp         eax,dword ptr [esp+0C]
>005D2F0E    jle         005D2F21
 005D2F10    lea         eax,[esp+34]
 005D2F14    call        RectWidth
 005D2F19    add         eax,dword ptr [esp+34]
 005D2F1D    mov         dword ptr [esp+0C],eax
 005D2F21    lea         eax,[esp+34]
 005D2F25    call        RectHeight
 005D2F2A    add         eax,dword ptr [esp+38]
 005D2F2E    cmp         eax,dword ptr [esp+10]
>005D2F32    jle         005D2F45
 005D2F34    lea         eax,[esp+34]
 005D2F38    call        RectHeight
 005D2F3D    add         eax,dword ptr [esp+38]
 005D2F41    mov         dword ptr [esp+10],eax
 005D2F45    inc         ebp
 005D2F46    dec         dword ptr [esp+1C]
>005D2F4A    jne         005D2E5E
 005D2F50    cmp         dword ptr [esp+4],0
>005D2F55    jl          005D2F6A
 005D2F57    lea         eax,[esp+24]
 005D2F5B    call        RectWidth
 005D2F60    cmp         eax,dword ptr [esp+0C]
>005D2F64    jl          005D2F6A
 005D2F66    xor         eax,eax
>005D2F68    jmp         005D2F6C
 005D2F6A    mov         al,1
 005D2F6C    mov         byte ptr [esp+19],al
 005D2F70    cmp         dword ptr [esp+8],0
>005D2F75    jl          005D2F8A
 005D2F77    lea         eax,[esp+24]
 005D2F7B    call        RectHeight
 005D2F80    cmp         eax,dword ptr [esp+10]
>005D2F84    jl          005D2F8A
 005D2F86    xor         eax,eax
>005D2F88    jmp         005D2F8C
 005D2F8A    mov         al,1
 005D2F8C    mov         byte ptr [esp+1A],al
 005D2F90    cmp         byte ptr [esp+1A],0
>005D2F95    je          005D2FC1
 005D2F97    cmp         byte ptr [esp+19],0
>005D2F9C    jne         005D2FC1
 005D2F9E    cmp         dword ptr [esp+4],0
>005D2FA3    jl          005D2FBB
 005D2FA5    lea         eax,[esp+24]
 005D2FA9    call        RectWidth
 005D2FAE    sub         eax,dword ptr [edi+58]
 005D2FB1    cmp         eax,dword ptr [esp+0C]
>005D2FB5    jl          005D2FBB
 005D2FB7    xor         eax,eax
>005D2FB9    jmp         005D2FBD
 005D2FBB    mov         al,1
 005D2FBD    mov         byte ptr [esp+19],al
 005D2FC1    cmp         byte ptr [esp+19],0
>005D2FC6    je          005D2FF2
 005D2FC8    cmp         byte ptr [esp+1A],0
>005D2FCD    jne         005D2FF2
 005D2FCF    cmp         dword ptr [esp+8],0
>005D2FD4    jl          005D2FEC
 005D2FD6    lea         eax,[esp+24]
 005D2FDA    call        RectHeight
 005D2FDF    sub         eax,dword ptr [esi+5C]
 005D2FE2    cmp         eax,dword ptr [esp+10]
>005D2FE6    jl          005D2FEC
 005D2FE8    xor         eax,eax
>005D2FEA    jmp         005D2FEE
 005D2FEC    mov         al,1
 005D2FEE    mov         byte ptr [esp+1A],al
 005D2FF2    cmp         byte ptr [esp+19],0
>005D2FF7    je          005D304C
 005D2FF9    mov         eax,esi
 005D2FFB    call        TWinControl.GetHandle
 005D3000    push        eax
 005D3001    call        user32.IsWindowVisible
 005D3006    test        eax,eax
>005D3008    jne         005D304C
 005D300A    push        40
 005D300C    mov         eax,dword ptr [esi+5C]
 005D300F    push        eax
 005D3010    lea         eax,[esp+2C]
 005D3014    call        RectWidth
 005D3019    push        eax
 005D301A    mov         eax,dword ptr [esp+3C]
 005D301E    sub         eax,dword ptr [esi+5C]
 005D3021    push        eax
 005D3022    mov         eax,dword ptr [esp+34]
 005D3026    push        eax
 005D3027    push        0
 005D3029    mov         eax,esi
 005D302B    call        TWinControl.GetHandle
 005D3030    push        eax
 005D3031    call        user32.SetWindowPos
 005D3036    push        5
 005D3038    mov         eax,esi
 005D303A    call        TWinControl.GetHandle
 005D303F    push        eax
 005D3040    call        user32.ShowWindow
 005D3045    mov         byte ptr [esp+18],1
>005D304A    jmp         005D3078
 005D304C    cmp         byte ptr [esp+19],0
>005D3051    jne         005D3078
 005D3053    mov         eax,esi
 005D3055    call        TWinControl.GetHandle
 005D305A    push        eax
 005D305B    call        user32.IsWindowVisible
 005D3060    test        eax,eax
>005D3062    je          005D3078
 005D3064    push        0
 005D3066    mov         eax,esi
 005D3068    call        TWinControl.GetHandle
 005D306D    push        eax
 005D306E    call        user32.ShowWindow
 005D3073    mov         byte ptr [esp+18],1
 005D3078    cmp         byte ptr [esp+1A],0
>005D307D    je          005D310C
 005D3083    mov         eax,edi
 005D3085    call        TWinControl.GetHandle
 005D308A    push        eax
 005D308B    call        user32.IsWindowVisible
 005D3090    test        eax,eax
>005D3092    jne         005D310C
 005D3094    cmp         byte ptr [esp+19],0
>005D3099    je          005D30CB
 005D309B    push        40
 005D309D    lea         eax,[esp+28]
 005D30A1    call        RectHeight
 005D30A6    sub         eax,dword ptr [esi+5C]
 005D30A9    push        eax
 005D30AA    mov         ebp,dword ptr [edi+58]
 005D30AD    push        ebp
 005D30AE    mov         eax,dword ptr [esp+34]
 005D30B2    push        eax
 005D30B3    mov         eax,dword ptr [esp+3C]
 005D30B7    sub         eax,ebp
 005D30B9    push        eax
 005D30BA    push        0
 005D30BC    mov         eax,edi
 005D30BE    call        TWinControl.GetHandle
 005D30C3    push        eax
 005D30C4    call        user32.SetWindowPos
>005D30C9    jmp         005D30F6
 005D30CB    push        40
 005D30CD    lea         eax,[esp+28]
 005D30D1    call        RectHeight
 005D30D6    push        eax
 005D30D7    mov         ebp,dword ptr [edi+58]
 005D30DA    push        ebp
 005D30DB    mov         eax,dword ptr [esp+34]
 005D30DF    push        eax
 005D30E0    mov         eax,dword ptr [esp+3C]
 005D30E4    sub         eax,ebp
 005D30E6    push        eax
 005D30E7    push        0
 005D30E9    mov         eax,edi
 005D30EB    call        TWinControl.GetHandle
 005D30F0    push        eax
 005D30F1    call        user32.SetWindowPos
 005D30F6    push        5
 005D30F8    mov         eax,edi
 005D30FA    call        TWinControl.GetHandle
 005D30FF    push        eax
 005D3100    call        user32.ShowWindow
 005D3105    mov         byte ptr [esp+18],1
>005D310A    jmp         005D3138
 005D310C    cmp         byte ptr [esp+1A],0
>005D3111    jne         005D3138
 005D3113    mov         eax,edi
 005D3115    call        TWinControl.GetHandle
 005D311A    push        eax
 005D311B    call        user32.IsWindowVisible
 005D3120    test        eax,eax
>005D3122    je          005D3138
 005D3124    push        0
 005D3126    mov         eax,edi
 005D3128    call        TWinControl.GetHandle
 005D312D    push        eax
 005D312E    call        user32.ShowWindow
 005D3133    mov         byte ptr [esp+18],1
 005D3138    lea         eax,[esp+24]
 005D313C    call        RectWidth
 005D3141    mov         ebp,eax
 005D3143    lea         eax,[esp+24]
 005D3147    call        RectHeight
 005D314C    mov         dword ptr [esp+14],eax
 005D3150    mov         eax,ebx
 005D3152    call        005D3518
 005D3157    mov         eax,esi
 005D3159    call        TWinControl.GetHandle
 005D315E    push        eax
 005D315F    call        user32.IsWindowVisible
 005D3164    test        eax,eax
>005D3166    je          005D3204
 005D316C    cmp         dword ptr [esp+4],0
>005D3171    jle         005D3179
 005D3173    xor         eax,eax
 005D3175    mov         dword ptr [esp+4],eax
 005D3179    lea         eax,[esp+24]
 005D317D    call        RectWidth
 005D3182    cmp         eax,dword ptr [esp+0C]
>005D3186    jle         005D3195
 005D3188    lea         eax,[esp+24]
 005D318C    call        RectWidth
 005D3191    mov         dword ptr [esp+0C],eax
 005D3195    cmp         byte ptr [esp],0
>005D3199    je          005D31F6
 005D319B    mov         byte ptr [ebx+98],1
 005D31A2    mov         eax,edi
 005D31A4    call        TWinControl.GetHandle
 005D31A9    push        eax
 005D31AA    call        user32.IsWindowVisible
 005D31AF    test        eax,eax
>005D31B1    je          005D31C1
 005D31B3    mov         edx,ebp
 005D31B5    sub         edx,dword ptr [edi+58]
 005D31B8    mov         eax,esi
 005D31BA    call        TScrollBar.SetPageSize
>005D31BF    jmp         005D31CA
 005D31C1    mov         edx,ebp
 005D31C3    mov         eax,esi
 005D31C5    call        TScrollBar.SetPageSize
 005D31CA    mov         eax,dword ptr [esp+0C]
 005D31CE    sub         eax,dword ptr [esp+4]
 005D31D2    dec         eax
 005D31D3    push        eax
 005D31D4    mov         edx,dword ptr [esp+8]
 005D31D8    neg         edx
 005D31DA    xor         ecx,ecx
 005D31DC    mov         eax,esi
 005D31DE    call        TScrollBar.SetParams
 005D31E3    mov         eax,dword ptr [esi+294]
 005D31E9    mov         dword ptr [ebx+0B8],eax
 005D31EF    mov         byte ptr [ebx+98],0
 005D31F6    movzx       eax,word ptr [esi+2A0]
 005D31FD    mov         word ptr [esi+2AA],ax
 005D3204    mov         eax,edi
 005D3206    call        TWinControl.GetHandle
 005D320B    push        eax
 005D320C    call        user32.IsWindowVisible
 005D3211    test        eax,eax
>005D3213    je          005D32B5
 005D3219    cmp         dword ptr [esp+8],0
>005D321E    jle         005D3226
 005D3220    xor         eax,eax
 005D3222    mov         dword ptr [esp+8],eax
 005D3226    lea         eax,[esp+24]
 005D322A    call        RectHeight
 005D322F    cmp         eax,dword ptr [esp+10]
>005D3233    jle         005D3242
 005D3235    lea         eax,[esp+24]
 005D3239    call        RectHeight
 005D323E    mov         dword ptr [esp+10],eax
 005D3242    cmp         byte ptr [esp],0
>005D3246    je          005D32A7
 005D3248    mov         byte ptr [ebx+99],1
 005D324F    mov         eax,esi
 005D3251    call        TWinControl.GetHandle
 005D3256    push        eax
 005D3257    call        user32.IsWindowVisible
 005D325C    test        eax,eax
>005D325E    je          005D3270
 005D3260    mov         edx,dword ptr [esp+14]
 005D3264    sub         edx,dword ptr [esi+5C]
 005D3267    mov         eax,edi
 005D3269    call        TScrollBar.SetPageSize
>005D326E    jmp         005D327B
 005D3270    mov         edx,dword ptr [esp+14]
 005D3274    mov         eax,edi
 005D3276    call        TScrollBar.SetPageSize
 005D327B    mov         eax,dword ptr [esp+10]
 005D327F    sub         eax,dword ptr [esp+8]
 005D3283    dec         eax
 005D3284    push        eax
 005D3285    mov         edx,dword ptr [esp+0C]
 005D3289    neg         edx
 005D328B    xor         ecx,ecx
 005D328D    mov         eax,edi
 005D328F    call        TScrollBar.SetParams
 005D3294    mov         eax,dword ptr [edi+294]
 005D329A    mov         dword ptr [ebx+0BC],eax
 005D32A0    mov         byte ptr [ebx+99],0
 005D32A7    movzx       eax,word ptr [edi+2A0]
 005D32AE    mov         word ptr [edi+2AA],ax
 005D32B5    mov         eax,esi
 005D32B7    call        TWinControl.GetHandle
 005D32BC    push        eax
 005D32BD    call        user32.IsWindowVisible
 005D32C2    test        eax,eax
>005D32C4    jne         005D32DC
 005D32C6    mov         eax,edi
 005D32C8    call        TWinControl.GetHandle
 005D32CD    push        eax
 005D32CE    call        user32.IsWindowVisible
 005D32D3    test        eax,eax
>005D32D5    jne         005D32DC
 005D32D7    mov         byte ptr [esp+18],0
 005D32DC    mov         eax,esi
 005D32DE    call        TWinControl.GetHandle
 005D32E3    push        eax
 005D32E4    call        user32.IsWindowVisible
 005D32E9    test        eax,eax
>005D32EB    je          005D3354
 005D32ED    mov         eax,edi
 005D32EF    call        TWinControl.GetHandle
 005D32F4    push        eax
 005D32F5    call        user32.IsWindowVisible
 005D32FA    test        eax,eax
>005D32FC    je          005D3354
 005D32FE    mov         eax,dword ptr [ebx+94]
 005D3304    call        TWinControl.GetHandle
 005D3309    push        eax
 005D330A    call        user32.IsWindowVisible
 005D330F    test        eax,eax
>005D3311    jne         005D3354
 005D3313    push        40
 005D3315    mov         eax,dword ptr [esi+5C]
 005D3318    push        eax
 005D3319    mov         ebp,dword ptr [edi+58]
 005D331C    push        ebp
 005D331D    mov         eax,dword ptr [esp+3C]
 005D3321    sub         eax,dword ptr [esi+5C]
 005D3324    push        eax
 005D3325    mov         eax,dword ptr [esp+3C]
 005D3329    sub         eax,ebp
 005D332B    push        eax
 005D332C    push        0
 005D332E    mov         eax,dword ptr [ebx+94]
 005D3334    call        TWinControl.GetHandle
 005D3339    push        eax
 005D333A    call        user32.SetWindowPos
 005D333F    push        5
 005D3341    mov         eax,dword ptr [ebx+94]
 005D3347    call        TWinControl.GetHandle
 005D334C    push        eax
 005D334D    call        user32.ShowWindow
>005D3352    jmp         005D339E
 005D3354    mov         eax,esi
 005D3356    call        TWinControl.GetHandle
 005D335B    push        eax
 005D335C    call        user32.IsWindowVisible
 005D3361    test        eax,eax
>005D3363    je          005D338B
 005D3365    mov         eax,edi
 005D3367    call        TWinControl.GetHandle
 005D336C    push        eax
 005D336D    call        user32.IsWindowVisible
 005D3372    test        eax,eax
>005D3374    jne         005D339E
 005D3376    mov         eax,dword ptr [ebx+94]
 005D337C    call        TWinControl.GetHandle
 005D3381    push        eax
 005D3382    call        user32.IsWindowVisible
 005D3387    test        eax,eax
>005D3389    je          005D339E
 005D338B    push        0
 005D338D    mov         eax,dword ptr [ebx+94]
 005D3393    call        TWinControl.GetHandle
 005D3398    push        eax
 005D3399    call        user32.ShowWindow
 005D339E    cmp         byte ptr [esp+18],0
>005D33A3    je          005D33B0
 005D33A5    movzx       edx,byte ptr [esp]
 005D33A9    mov         eax,ebx
 005D33AB    call        005D2D50
 005D33B0    add         esp,54
 005D33B3    pop         ebp
 005D33B4    pop         edi
 005D33B5    pop         esi
 005D33B6    pop         ebx
 005D33B7    ret
end;*}

//005D33B8
procedure sub_005D33B8(?:TFormStyleHook);
begin
{*
 005D33B8    push        ebx
 005D33B9    push        esi
 005D33BA    mov         ebx,eax
 005D33BC    cmp         dword ptr [ebx+8C],0
>005D33C3    jne         005D3432
 005D33C5    mov         eax,dword ptr [ebx+8]
 005D33C8    call        TWinControl.GetHandle
 005D33CD    mov         ecx,eax
 005D33CF    mov         dl,1
 005D33D1    mov         eax,[00502F40];TScrollBar
 005D33D6    call        TScrollBar.Create;TScrollBar.Create
 005D33DB    mov         esi,eax
 005D33DD    mov         dword ptr [ebx+8C],esi
 005D33E3    xor         edx,edx
 005D33E5    mov         eax,esi
 005D33E7    call        TScrollBar.SetKind
 005D33EC    mov         dword ptr [esi+2BC],ebx;TScrollBar.?f2BC:dword
 005D33F2    mov         dword ptr [esi+2B8],5D2C88;TScrollBar.FOnScroll:TScrollEvent sub_005D2C88
 005D33FC    push        8
 005D33FE    push        3
 005D3400    call        user32.GetSystemMetrics
 005D3405    push        eax
 005D3406    push        0
 005D3408    push        0
 005D340A    push        0
 005D340C    push        0
 005D340E    mov         eax,dword ptr [ebx+8C]
 005D3414    call        TWinControl.GetHandle
 005D3419    push        eax
 005D341A    call        user32.SetWindowPos
 005D341F    push        0
 005D3421    mov         eax,dword ptr [ebx+8C]
 005D3427    call        TWinControl.GetHandle
 005D342C    push        eax
 005D342D    call        user32.ShowWindow
 005D3432    cmp         dword ptr [ebx+9C],0
>005D3439    jne         005D34A8
 005D343B    mov         eax,dword ptr [ebx+8]
 005D343E    call        TWinControl.GetHandle
 005D3443    mov         ecx,eax
 005D3445    mov         dl,1
 005D3447    mov         eax,[00502F40];TScrollBar
 005D344C    call        TScrollBar.Create;TScrollBar.Create
 005D3451    mov         esi,eax
 005D3453    mov         dword ptr [ebx+9C],esi
 005D3459    mov         dl,1
 005D345B    mov         eax,esi
 005D345D    call        TScrollBar.SetKind
 005D3462    mov         dword ptr [esi+2BC],ebx;TScrollBar.?f2BC:dword
 005D3468    mov         dword ptr [esi+2B8],5D2CD4;TScrollBar.FOnScroll:TScrollEvent sub_005D2CD4
 005D3472    push        8
 005D3474    push        0
 005D3476    push        2
 005D3478    call        user32.GetSystemMetrics
 005D347D    push        eax
 005D347E    push        0
 005D3480    push        0
 005D3482    push        0
 005D3484    mov         eax,dword ptr [ebx+9C]
 005D348A    call        TWinControl.GetHandle
 005D348F    push        eax
 005D3490    call        user32.SetWindowPos
 005D3495    push        0
 005D3497    mov         eax,dword ptr [ebx+9C]
 005D349D    call        TWinControl.GetHandle
 005D34A2    push        eax
 005D34A3    call        user32.ShowWindow
 005D34A8    cmp         dword ptr [ebx+94],0
>005D34AF    jne         005D3514
 005D34B1    mov         eax,dword ptr [ebx+8]
 005D34B4    call        TWinControl.GetHandle
 005D34B9    mov         ecx,eax
 005D34BB    mov         dl,1
 005D34BD    mov         eax,[005046D0];TScrollBarStyleHook.TScrollWindow
 005D34C2    call        TScrollBar.Create
 005D34C7    mov         esi,eax
 005D34C9    mov         dword ptr [ebx+94],esi
 005D34CF    mov         eax,esi
 005D34D1    mov         byte ptr [eax+290],1
 005D34D8    push        8
 005D34DA    push        3
 005D34DC    call        user32.GetSystemMetrics
 005D34E1    push        eax
 005D34E2    push        2
 005D34E4    call        user32.GetSystemMetrics
 005D34E9    push        eax
 005D34EA    push        0
 005D34EC    push        0
 005D34EE    push        0
 005D34F0    mov         eax,dword ptr [ebx+94]
 005D34F6    call        TWinControl.GetHandle
 005D34FB    push        eax
 005D34FC    call        user32.SetWindowPos
 005D3501    push        0
 005D3503    mov         eax,dword ptr [ebx+94]
 005D3509    call        TWinControl.GetHandle
 005D350E    push        eax
 005D350F    call        user32.ShowWindow
 005D3514    pop         esi
 005D3515    pop         ebx
 005D3516    ret
*}
end;

//005D3518
procedure sub_005D3518(?:TFormStyleHook);
begin
{*
 005D3518    push        ebx
 005D3519    push        esi
 005D351A    push        edi
 005D351B    add         esp,0FFFFFFF0
 005D351E    mov         ebx,eax
 005D3520    mov         edx,esp
 005D3522    mov         eax,ebx
 005D3524    call        005D3738
 005D3529    mov         esi,dword ptr [ebx+8C]
 005D352F    test        esi,esi
>005D3531    je          005D35EA
 005D3537    mov         eax,esi
 005D3539    call        TWinControl.GetHandle
 005D353E    push        eax
 005D353F    call        user32.IsWindowVisible
 005D3544    test        eax,eax
>005D3546    je          005D35EA
 005D354C    mov         esi,dword ptr [ebx+9C]
 005D3552    test        esi,esi
>005D3554    je          005D35AE
 005D3556    mov         eax,esi
 005D3558    call        TWinControl.GetHandle
 005D355D    push        eax
 005D355E    call        user32.IsWindowVisible
 005D3563    test        eax,eax
>005D3565    je          005D35AE
 005D3567    push        40
 005D3569    mov         eax,dword ptr [ebx+8C]
 005D356F    mov         eax,dword ptr [eax+5C]
 005D3572    push        eax
 005D3573    lea         eax,[esp+8]
 005D3577    call        RectWidth
 005D357C    mov         edx,dword ptr [ebx+9C]
 005D3582    sub         eax,dword ptr [edx+58]
 005D3585    push        eax
 005D3586    mov         eax,dword ptr [ebx+8C]
 005D358C    mov         edx,dword ptr [esp+18]
 005D3590    sub         edx,dword ptr [eax+5C]
 005D3593    push        edx
 005D3594    mov         eax,dword ptr [esp+10]
 005D3598    push        eax
 005D3599    push        0
 005D359B    mov         eax,dword ptr [ebx+8C]
 005D35A1    call        TWinControl.GetHandle
 005D35A6    push        eax
 005D35A7    call        user32.SetWindowPos
>005D35AC    jmp         005D35EA
 005D35AE    push        40
 005D35B0    mov         eax,dword ptr [ebx+8C]
 005D35B6    mov         eax,dword ptr [eax+5C]
 005D35B9    push        eax
 005D35BA    lea         eax,[esp+8]
 005D35BE    call        RectWidth
 005D35C3    push        eax
 005D35C4    mov         eax,dword ptr [ebx+8C]
 005D35CA    mov         edx,dword ptr [esp+18]
 005D35CE    sub         edx,dword ptr [eax+5C]
 005D35D1    push        edx
 005D35D2    mov         eax,dword ptr [esp+10]
 005D35D6    push        eax
 005D35D7    push        0
 005D35D9    mov         eax,dword ptr [ebx+8C]
 005D35DF    call        TWinControl.GetHandle
 005D35E4    push        eax
 005D35E5    call        user32.SetWindowPos
 005D35EA    mov         esi,dword ptr [ebx+9C]
 005D35F0    test        esi,esi
>005D35F2    je          005D369D
 005D35F8    mov         eax,esi
 005D35FA    call        TWinControl.GetHandle
 005D35FF    push        eax
 005D3600    call        user32.IsWindowVisible
 005D3605    test        eax,eax
>005D3607    je          005D369D
 005D360D    mov         esi,dword ptr [ebx+8C]
 005D3613    test        esi,esi
>005D3615    je          005D3668
 005D3617    mov         eax,esi
 005D3619    call        TWinControl.GetHandle
 005D361E    push        eax
 005D361F    call        user32.IsWindowVisible
 005D3624    test        eax,eax
>005D3626    je          005D3668
 005D3628    push        40
 005D362A    lea         eax,[esp+4]
 005D362E    call        RectHeight
 005D3633    mov         edx,dword ptr [ebx+8C]
 005D3639    sub         eax,dword ptr [edx+5C]
 005D363C    push        eax
 005D363D    mov         eax,dword ptr [ebx+9C]
 005D3643    mov         esi,dword ptr [eax+58]
 005D3646    push        esi
 005D3647    mov         eax,dword ptr [esp+10]
 005D364B    push        eax
 005D364C    mov         eax,dword ptr [esp+18]
 005D3650    sub         eax,esi
 005D3652    push        eax
 005D3653    push        0
 005D3655    mov         eax,dword ptr [ebx+9C]
 005D365B    call        TWinControl.GetHandle
 005D3660    push        eax
 005D3661    call        user32.SetWindowPos
>005D3666    jmp         005D369D
 005D3668    push        40
 005D366A    lea         eax,[esp+4]
 005D366E    call        RectHeight
 005D3673    push        eax
 005D3674    mov         eax,dword ptr [ebx+9C]
 005D367A    mov         esi,dword ptr [eax+58]
 005D367D    push        esi
 005D367E    mov         eax,dword ptr [esp+10]
 005D3682    push        eax
 005D3683    mov         eax,dword ptr [esp+18]
 005D3687    sub         eax,esi
 005D3689    push        eax
 005D368A    push        0
 005D368C    mov         eax,dword ptr [ebx+9C]
 005D3692    call        TWinControl.GetHandle
 005D3697    push        eax
 005D3698    call        user32.SetWindowPos
 005D369D    mov         esi,dword ptr [ebx+94]
 005D36A3    test        esi,esi
>005D36A5    je          005D372F
 005D36AB    mov         eax,esi
 005D36AD    call        TWinControl.GetHandle
 005D36B2    push        eax
 005D36B3    call        user32.IsWindowVisible
 005D36B8    test        eax,eax
>005D36BA    je          005D372F
 005D36BC    cmp         dword ptr [ebx+9C],0
>005D36C3    je          005D372F
 005D36C5    mov         eax,dword ptr [ebx+9C]
 005D36CB    call        TWinControl.GetHandle
 005D36D0    push        eax
 005D36D1    call        user32.IsWindowVisible
 005D36D6    test        eax,eax
>005D36D8    je          005D372F
 005D36DA    cmp         dword ptr [ebx+8C],0
>005D36E1    je          005D372F
 005D36E3    mov         eax,dword ptr [ebx+8C]
 005D36E9    call        TWinControl.GetHandle
 005D36EE    push        eax
 005D36EF    call        user32.IsWindowVisible
 005D36F4    test        eax,eax
>005D36F6    je          005D372F
 005D36F8    push        40
 005D36FA    mov         eax,dword ptr [ebx+8C]
 005D3700    mov         edi,dword ptr [eax+5C]
 005D3703    push        edi
 005D3704    mov         eax,dword ptr [ebx+9C]
 005D370A    mov         esi,dword ptr [eax+58]
 005D370D    push        esi
 005D370E    mov         eax,dword ptr [esp+18]
 005D3712    sub         eax,edi
 005D3714    push        eax
 005D3715    mov         eax,dword ptr [esp+18]
 005D3719    sub         eax,esi
 005D371B    push        eax
 005D371C    push        0
 005D371E    mov         eax,dword ptr [ebx+94]
 005D3724    call        TWinControl.GetHandle
 005D3729    push        eax
 005D372A    call        user32.SetWindowPos
 005D372F    add         esp,10
 005D3732    pop         edi
 005D3733    pop         esi
 005D3734    pop         ebx
 005D3735    ret
*}
end;

//005D3738
{*procedure sub_005D3738(?:string; ?:?);
begin
 005D3738    push        ebx
 005D3739    push        esi
 005D373A    add         esp,0FFFFFFF0
 005D373D    mov         esi,edx
 005D373F    mov         ebx,eax
 005D3741    mov         edx,esi
 005D3743    mov         eax,dword ptr [ebx+8]
 005D3746    mov         ecx,dword ptr [eax]
 005D3748    call        dword ptr [ecx+64]
 005D374B    mov         eax,dword ptr [ebx+8]
 005D374E    mov         eax,dword ptr [eax+3B4]
 005D3754    test        eax,eax
>005D3756    je          005D378B
 005D3758    push        esi
 005D3759    push        eax
 005D375A    call        user32.GetWindowRect
 005D375F    xor         eax,eax
 005D3761    mov         dword ptr [esp+8],eax
 005D3765    xor         eax,eax
 005D3767    mov         dword ptr [esp+0C],eax
 005D376B    mov         ecx,esp
 005D376D    lea         edx,[esp+8]
 005D3771    mov         eax,dword ptr [ebx+8]
 005D3774    call        TControl.ClientToScreen
 005D3779    mov         ecx,dword ptr [esp+4]
 005D377D    neg         ecx
 005D377F    mov         edx,dword ptr [esp]
 005D3782    neg         edx
 005D3784    mov         eax,esi
 005D3786    call        OffsetRect
 005D378B    add         esp,10
 005D378E    pop         esi
 005D378F    pop         ebx
 005D3790    ret
end;*}

//005D3794
{*procedure sub_005D3794(?:?);
begin
 005D3794    push        ebx
 005D3795    push        esi
 005D3796    push        edi
 005D3797    add         esp,0FFFFFFE4
 005D379A    mov         esi,edx
 005D379C    mov         edi,eax
 005D379E    mov         bl,1
 005D37A0    mov         eax,dword ptr [esi]
 005D37A2    sub         eax,14
>005D37A5    je          005D37F5
 005D37A7    sub         eax,6F
>005D37AA    je          005D37ED
 005D37AC    sub         eax,2
>005D37AF    je          005D37F1
 005D37B1    dec         eax
>005D37B2    jne         005D3853
 005D37B8    mov         eax,dword ptr [edi+8];TFormStyleHook.FControl:TWinControl
 005D37BB    call        005C2D30
 005D37C0    test        eax,eax
>005D37C2    je          005D37E2
 005D37C4    mov         eax,dword ptr [esi+8]
 005D37C7    push        eax
 005D37C8    mov         eax,dword ptr [esi+4]
 005D37CB    push        eax
 005D37CC    mov         eax,dword ptr [esi]
 005D37CE    push        eax
 005D37CF    mov         eax,dword ptr [edi+8];TFormStyleHook.FControl:TWinControl
 005D37D2    call        005C2D30
 005D37D7    call        TWinControl.GetHandle
 005D37DC    push        eax
 005D37DD    call        user32.SendMessageW
 005D37E2    xor         ebx,ebx
 005D37E4    mov         dword ptr [esi+0C],1
>005D37EB    jmp         005D3853
 005D37ED    xor         ebx,ebx
>005D37EF    jmp         005D3853
 005D37F1    xor         ebx,ebx
>005D37F3    jmp         005D3853
 005D37F5    call        StyleServices
 005D37FA    mov         edx,dword ptr [eax]
 005D37FC    call        dword ptr [edx+48];@AbstractError
 005D37FF    test        al,al
>005D3801    je          005D3853
 005D3803    mov         byte ptr [esp+10],1F
 005D3808    xor         eax,eax
 005D380A    mov         dword ptr [esp+14],eax
 005D380E    mov         eax,dword ptr [edi+8];TFormStyleHook.FControl:TWinControl
 005D3811    call        TControl.GetClientHeight
 005D3816    push        eax
 005D3817    lea         eax,[esp+4]
 005D381B    push        eax
 005D381C    mov         eax,dword ptr [edi+8];TFormStyleHook.FControl:TWinControl
 005D381F    call        TControl.GetClientWidth
 005D3824    mov         ecx,eax
 005D3826    xor         edx,edx
 005D3828    xor         eax,eax
 005D382A    call        Rect
 005D382F    call        StyleServices
 005D3834    mov         edx,dword ptr [eax]
 005D3836    call        dword ptr [edx+48];@AbstractError
 005D3839    test        al,al
>005D383B    je          005D3851
 005D383D    push        esp
 005D383E    push        0
 005D3840    call        StyleServices
 005D3845    mov         edx,dword ptr [esi+4]
 005D3848    lea         ecx,[esp+18]
 005D384C    call        TCustomStyleServices.DrawElement
 005D3851    xor         ebx,ebx
 005D3853    test        bl,bl
>005D3855    je          005D387F
 005D3857    mov         eax,dword ptr [esi+8]
 005D385A    push        eax
 005D385B    mov         eax,dword ptr [esi+4]
 005D385E    push        eax
 005D385F    mov         eax,dword ptr [esi]
 005D3861    push        eax
 005D3862    mov         eax,edi
 005D3864    call        005D3A90
 005D3869    mov         eax,dword ptr [eax+3B4]
 005D386F    push        eax
 005D3870    mov         eax,dword ptr [edi+90];TFormStyleHook.FMDIPrevClientProc:Pointer
 005D3876    push        eax
 005D3877    call        user32.CallWindowProcW
 005D387C    mov         dword ptr [esi+0C],eax
 005D387F    add         esp,1C
 005D3882    pop         edi
 005D3883    pop         esi
 005D3884    pop         ebx
 005D3885    ret
end;*}

//005D3888
{*procedure sub_005D3888(?:?);
begin
 005D3888    push        ebx
 005D3889    push        esi
 005D388A    add         esp,0FFFFFFE4
 005D388D    mov         esi,edx
 005D388F    mov         ebx,eax
 005D3891    call        StyleServices
 005D3896    mov         edx,dword ptr [eax]
 005D3898    call        dword ptr [edx+48];@AbstractError
 005D389B    test        al,al
>005D389D    je          005D38E8
 005D389F    mov         byte ptr [esp],1F
 005D38A3    xor         eax,eax
 005D38A5    mov         dword ptr [esp+4],eax
 005D38A9    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D38AC    call        TControl.GetClientHeight
 005D38B1    push        eax
 005D38B2    lea         eax,[esp+10]
 005D38B6    push        eax
 005D38B7    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D38BA    call        TControl.GetClientWidth
 005D38BF    mov         ecx,eax
 005D38C1    xor         edx,edx
 005D38C3    xor         eax,eax
 005D38C5    call        Rect
 005D38CA    lea         eax,[esp+0C]
 005D38CE    push        eax
 005D38CF    push        0
 005D38D1    mov         eax,esi
 005D38D3    call        TCanvas.GetHandle
 005D38D8    push        eax
 005D38D9    call        StyleServices
 005D38DE    lea         ecx,[esp+0C]
 005D38E2    pop         edx
 005D38E3    call        TCustomStyleServices.DrawElement
 005D38E8    add         esp,1C
 005D38EB    pop         esi
 005D38EC    pop         ebx
 005D38ED    ret
end;*}

//005D38F0
{*procedure sub_005D38F0(?:TFormStyleHook; ?:?);
begin
 005D38F0    push        ebx
 005D38F1    push        esi
 005D38F2    push        edi
 005D38F3    add         esp,0FFFFFFEC
 005D38F6    mov         edi,edx
 005D38F8    mov         esi,eax
 005D38FA    push        0
 005D38FC    push        edi
 005D38FD    xor         ecx,ecx
 005D38FF    xor         edx,edx
 005D3901    xor         eax,eax
 005D3903    call        Rect
 005D3908    mov         eax,esi
 005D390A    call        005D3A90
 005D390F    cmp         byte ptr [eax+2BD],0
>005D3916    je          005D3A87
 005D391C    call        StyleServices
 005D3921    mov         edx,dword ptr [eax]
 005D3923    call        dword ptr [edx+48];@AbstractError
 005D3926    test        al,al
>005D3928    je          005D3A87
 005D392E    mov         eax,esi
 005D3930    call        005D3A90
 005D3935    cmp         byte ptr [eax+2BD],4
>005D393C    je          005D3952
 005D393E    mov         eax,esi
 005D3940    call        005D3A90
 005D3945    cmp         byte ptr [eax+2BD],5
>005D394C    je          005D3952
 005D394E    mov         bl,2
>005D3950    jmp         005D3954
 005D3952    mov         bl,5
 005D3954    call        StyleServices
 005D3959    mov         edx,ebx
 005D395B    lea         ecx,[esp+8]
 005D395F    mov         ebx,dword ptr [eax]
 005D3961    call        dword ptr [ebx+10C];TCustomStyleServices.GetElementDetails
 005D3967    push        1
 005D3969    lea         eax,[esp+4]
 005D396D    push        eax
 005D396E    call        StyleServices
 005D3973    lea         ecx,[esp+10]
 005D3977    xor         edx,edx
 005D3979    call        TCustomStyleServices.GetElementSize
 005D397E    mov         eax,dword ptr [esp+4]
 005D3982    mov         dword ptr [edi+4],eax
 005D3985    mov         eax,esi
 005D3987    call        005D3A90
 005D398C    cmp         byte ptr [eax+2BD],4
>005D3993    je          005D39A9
 005D3995    mov         eax,esi
 005D3997    call        005D3A90
 005D399C    cmp         byte ptr [eax+2BD],5
>005D39A3    je          005D39A9
 005D39A5    mov         bl,14
>005D39A7    jmp         005D39AB
 005D39A9    mov         bl,1A
 005D39AB    call        StyleServices
 005D39B0    mov         edx,ebx
 005D39B2    lea         ecx,[esp+8]
 005D39B6    mov         ebx,dword ptr [eax]
 005D39B8    call        dword ptr [ebx+10C];TCustomStyleServices.GetElementDetails
 005D39BE    push        1
 005D39C0    lea         eax,[esp+4]
 005D39C4    push        eax
 005D39C5    call        StyleServices
 005D39CA    lea         ecx,[esp+10]
 005D39CE    xor         edx,edx
 005D39D0    call        TCustomStyleServices.GetElementSize
 005D39D5    mov         eax,dword ptr [esp]
 005D39D8    mov         dword ptr [edi],eax
 005D39DA    mov         eax,esi
 005D39DC    call        005D3A90
 005D39E1    cmp         byte ptr [eax+2BD],4
>005D39E8    je          005D39FE
 005D39EA    mov         eax,esi
 005D39EC    call        005D3A90
 005D39F1    cmp         byte ptr [eax+2BD],5
>005D39F8    je          005D39FE
 005D39FA    mov         bl,16
>005D39FC    jmp         005D3A00
 005D39FE    mov         bl,1C
 005D3A00    call        StyleServices
 005D3A05    mov         edx,ebx
 005D3A07    lea         ecx,[esp+8]
 005D3A0B    mov         ebx,dword ptr [eax]
 005D3A0D    call        dword ptr [ebx+10C];TCustomStyleServices.GetElementDetails
 005D3A13    push        1
 005D3A15    lea         eax,[esp+4]
 005D3A19    push        eax
 005D3A1A    call        StyleServices
 005D3A1F    lea         ecx,[esp+10]
 005D3A23    xor         edx,edx
 005D3A25    call        TCustomStyleServices.GetElementSize
 005D3A2A    mov         eax,dword ptr [esp]
 005D3A2D    mov         dword ptr [edi+8],eax
 005D3A30    mov         eax,esi
 005D3A32    call        005D3A90
 005D3A37    cmp         byte ptr [eax+2BD],4
>005D3A3E    je          005D3A54
 005D3A40    mov         eax,esi
 005D3A42    call        005D3A90
 005D3A47    cmp         byte ptr [eax+2BD],5
>005D3A4E    je          005D3A54
 005D3A50    mov         bl,18
>005D3A52    jmp         005D3A56
 005D3A54    mov         bl,1E
 005D3A56    call        StyleServices
 005D3A5B    mov         edx,ebx
 005D3A5D    lea         ecx,[esp+8]
 005D3A61    mov         ebx,dword ptr [eax]
 005D3A63    call        dword ptr [ebx+10C];TCustomStyleServices.GetElementDetails
 005D3A69    push        1
 005D3A6B    lea         eax,[esp+4]
 005D3A6F    push        eax
 005D3A70    call        StyleServices
 005D3A75    lea         ecx,[esp+10]
 005D3A79    xor         edx,edx
 005D3A7B    call        TCustomStyleServices.GetElementSize
 005D3A80    mov         eax,dword ptr [esp+4]
 005D3A84    mov         dword ptr [edi+0C],eax
 005D3A87    add         esp,14
 005D3A8A    pop         edi
 005D3A8B    pop         esi
 005D3A8C    pop         ebx
 005D3A8D    ret
end;*}

//005D3A90
{*function sub_005D3A90(?:string):?;
begin
 005D3A90    mov         eax,dword ptr [eax+8]
 005D3A93    ret
end;*}

//005D3A94
{*procedure sub_005D3A94(?:TFormStyleHook; ?:?; ?:?);
begin
 005D3A94    push        ebx
 005D3A95    push        esi
 005D3A96    push        edi
 005D3A97    add         esp,0FFFFFFC8
 005D3A9A    mov         esi,edx
 005D3A9C    lea         edi,[esp]
 005D3A9F    movs        dword ptr [edi],dword ptr [esi]
 005D3AA0    movs        dword ptr [edi],dword ptr [esi]
 005D3AA1    mov         esi,ecx
 005D3AA3    mov         ebx,eax
 005D3AA5    mov         edi,dword ptr [ebx+8]
 005D3AA8    cmp         byte ptr [edi+2C2],1
>005D3AAF    jne         005D3AB5
 005D3AB1    mov         al,1
>005D3AB3    jmp         005D3ABC
 005D3AB5    cmp         dword ptr [edi+40],0
 005D3AB9    setne       al
 005D3ABC    test        al,al
>005D3ABE    je          005D3B62
 005D3AC4    mov         eax,edi
 005D3AC6    call        TWinControl.GetHandle
 005D3ACB    push        eax
 005D3ACC    call        user32.GetParent
 005D3AD1    mov         edx,dword ptr [ebx+0B0]
 005D3AD7    mov         ecx,dword ptr [ebx+0DC]
 005D3ADD    mov         dword ptr [esp+18],edx
 005D3AE1    mov         dword ptr [esp+1C],ecx
 005D3AE5    mov         edx,dword ptr [esp+18]
 005D3AE9    mov         dword ptr [esp+8],edx
 005D3AED    mov         edx,dword ptr [esp+1C]
 005D3AF1    mov         dword ptr [esp+0C],edx
 005D3AF5    lea         edx,[esp+8]
 005D3AF9    push        edx
 005D3AFA    push        eax
 005D3AFB    call        user32.ClientToScreen
 005D3B00    xor         eax,eax
 005D3B02    mov         dword ptr [esp+20],eax
 005D3B06    xor         eax,eax
 005D3B08    mov         dword ptr [esp+24],eax
 005D3B0C    mov         eax,dword ptr [esp+20]
 005D3B10    mov         dword ptr [esp+10],eax
 005D3B14    mov         eax,dword ptr [esp+24]
 005D3B18    mov         dword ptr [esp+14],eax
 005D3B1C    lea         eax,[esp+10]
 005D3B20    push        eax
 005D3B21    mov         eax,ebx
 005D3B23    call        TStyleHook.GetHandle
 005D3B28    push        eax
 005D3B29    call        user32.ClientToScreen
 005D3B2E    mov         eax,dword ptr [esp]
 005D3B31    mov         dword ptr [esi],eax
 005D3B33    mov         eax,dword ptr [esp+4]
 005D3B37    mov         dword ptr [esi+4],eax
 005D3B3A    push        esi
 005D3B3B    mov         eax,ebx
 005D3B3D    call        TStyleHook.GetHandle
 005D3B42    push        eax
 005D3B43    call        user32.ScreenToClient
 005D3B48    mov         eax,dword ptr [esp+10]
 005D3B4C    sub         eax,dword ptr [esp+8]
 005D3B50    add         dword ptr [esi],eax
 005D3B52    mov         eax,dword ptr [esp+14]
 005D3B56    sub         eax,dword ptr [esp+0C]
 005D3B5A    add         dword ptr [esi+4],eax
>005D3B5D    jmp         005D3BE3
 005D3B62    mov         eax,dword ptr [ebx+0B0]
 005D3B68    mov         edx,dword ptr [ebx+0DC]
 005D3B6E    mov         dword ptr [esp+28],eax
 005D3B72    mov         dword ptr [esp+2C],edx
 005D3B76    mov         eax,dword ptr [esp+28]
 005D3B7A    mov         dword ptr [esp+8],eax
 005D3B7E    mov         eax,dword ptr [esp+2C]
 005D3B82    mov         dword ptr [esp+0C],eax
 005D3B86    xor         eax,eax
 005D3B88    mov         dword ptr [esp+30],eax
 005D3B8C    xor         eax,eax
 005D3B8E    mov         dword ptr [esp+34],eax
 005D3B92    mov         eax,dword ptr [esp+30]
 005D3B96    mov         dword ptr [esp+10],eax
 005D3B9A    mov         eax,dword ptr [esp+34]
 005D3B9E    mov         dword ptr [esp+14],eax
 005D3BA2    lea         eax,[esp+10]
 005D3BA6    push        eax
 005D3BA7    mov         eax,ebx
 005D3BA9    call        TStyleHook.GetHandle
 005D3BAE    push        eax
 005D3BAF    call        user32.ClientToScreen
 005D3BB4    mov         eax,dword ptr [esp]
 005D3BB7    mov         dword ptr [esi],eax
 005D3BB9    mov         eax,dword ptr [esp+4]
 005D3BBD    mov         dword ptr [esi+4],eax
 005D3BC0    push        esi
 005D3BC1    mov         eax,ebx
 005D3BC3    call        TStyleHook.GetHandle
 005D3BC8    push        eax
 005D3BC9    call        user32.ScreenToClient
 005D3BCE    mov         eax,dword ptr [esp+10]
 005D3BD2    sub         eax,dword ptr [esp+8]
 005D3BD6    add         dword ptr [esi],eax
 005D3BD8    mov         eax,dword ptr [esp+14]
 005D3BDC    sub         eax,dword ptr [esp+0C]
 005D3BE0    add         dword ptr [esi+4],eax
 005D3BE3    add         esp,38
 005D3BE6    pop         edi
 005D3BE7    pop         esi
 005D3BE8    pop         ebx
 005D3BE9    ret
end;*}

//005D3BEC
{*function sub_005D3BEC(?:TFormStyleHook; ?:?):?;
begin
 005D3BEC    push        ebx
 005D3BED    push        esi
 005D3BEE    push        edi
 005D3BEF    push        ebp
 005D3BF0    add         esp,0FFFFFF48
 005D3BF6    mov         esi,edx
 005D3BF8    lea         edi,[esp]
 005D3BFB    movs        dword ptr [edi],dword ptr [esi]
 005D3BFC    movs        dword ptr [edi],dword ptr [esi]
 005D3BFD    mov         ebx,eax
 005D3BFF    mov         esi,1
 005D3C04    mov         eax,dword ptr [ebx+8]
 005D3C07    cmp         byte ptr [eax+2BD],0
>005D3C0E    jne         005D3C37
 005D3C10    mov         edi,dword ptr [ebx+74]
 005D3C13    test        edi,edi
>005D3C15    je          005D3F45
 005D3C1B    mov         edx,esp
 005D3C1D    lea         eax,[edi+8]
 005D3C20    call        TRect.Contains
 005D3C25    test        al,al
>005D3C27    je          005D3F45
 005D3C2D    mov         esi,5
>005D3C32    jmp         005D3F45
 005D3C37    lea         edx,[esp+8]
 005D3C3B    mov         eax,ebx
 005D3C3D    call        005D38F0
 005D3C42    push        esi
 005D3C43    lea         esi,[ebx+28]
 005D3C46    lea         edi,[esp+9C]
 005D3C4D    movs        dword ptr [edi],dword ptr [esi]
 005D3C4E    movs        dword ptr [edi],dword ptr [esi]
 005D3C4F    movs        dword ptr [edi],dword ptr [esi]
 005D3C50    movs        dword ptr [edi],dword ptr [esi]
 005D3C51    pop         esi
 005D3C52    mov         eax,dword ptr [esp+8]
 005D3C56    mov         dword ptr [esp+9C],eax
 005D3C5D    mov         dword ptr [esp+0C],eax
 005D3C61    mov         edi,dword ptr [ebx+74]
 005D3C64    test        edi,edi
>005D3C66    je          005D3C80
 005D3C68    mov         edx,esp
 005D3C6A    lea         eax,[edi+8]
 005D3C6D    call        TRect.Contains
 005D3C72    test        al,al
>005D3C74    je          005D3C80
 005D3C76    mov         esi,5
>005D3C7B    jmp         005D3F45
 005D3C80    mov         edx,esp
 005D3C82    lea         eax,[esp+98]
 005D3C89    call        TRect.Contains
 005D3C8E    test        al,al
>005D3C90    je          005D3C9C
 005D3C92    mov         esi,2
>005D3C97    jmp         005D3F45
 005D3C9C    mov         edx,esp
 005D3C9E    lea         eax,[ebx+40]
 005D3CA1    call        TRect.Contains
 005D3CA6    test        al,al
>005D3CA8    je          005D3CB4
 005D3CAA    mov         esi,14
>005D3CAF    jmp         005D3F45
 005D3CB4    mov         edx,esp
 005D3CB6    lea         eax,[ebx+78]
 005D3CB9    call        TRect.Contains
 005D3CBE    test        al,al
>005D3CC0    je          005D3CCC
 005D3CC2    mov         esi,9
>005D3CC7    jmp         005D3F45
 005D3CCC    mov         edx,esp
 005D3CCE    lea         eax,[ebx+0A0]
 005D3CD4    call        TRect.Contains
 005D3CD9    test        al,al
>005D3CDB    je          005D3CE7
 005D3CDD    mov         esi,8
>005D3CE2    jmp         005D3F45
 005D3CE7    mov         edx,esp
 005D3CE9    lea         eax,[ebx+5C]
 005D3CEC    call        TRect.Contains
 005D3CF1    test        al,al
>005D3CF3    je          005D3CFF
 005D3CF5    mov         esi,15
>005D3CFA    jmp         005D3F45
 005D3CFF    mov         edx,esp
 005D3D01    lea         eax,[ebx+0CC]
 005D3D07    call        TRect.Contains
 005D3D0C    test        al,al
>005D3D0E    je          005D3D1A
 005D3D10    mov         esi,3
>005D3D15    jmp         005D3F45
 005D3D1A    mov         edi,dword ptr [ebx+8]
 005D3D1D    movzx       eax,byte ptr [edi+2BE]
 005D3D24    cmp         al,2
>005D3D26    jne         005D3D2C
 005D3D28    mov         al,1
>005D3D2A    jmp         005D3D31
 005D3D2C    cmp         al,1
 005D3D2E    sete        al
 005D3D31    test        al,al
>005D3D33    jne         005D3F45
 005D3D39    movzx       edx,byte ptr [edi+2BD]
 005D3D40    cmp         dl,3
>005D3D43    jne         005D3D49
 005D3D45    mov         al,1
>005D3D47    jmp         005D3D4F
 005D3D49    cmp         dl,1
 005D3D4C    sete        al
 005D3D4F    test        al,al
>005D3D51    je          005D3D57
 005D3D53    mov         al,1
>005D3D55    jmp         005D3D5D
 005D3D57    cmp         dl,4
 005D3D5A    sete        al
 005D3D5D    test        al,al
>005D3D5F    je          005D3DAE
 005D3D61    mov         eax,dword ptr [ebx+58]
 005D3D64    sub         eax,dword ptr [esp+14]
 005D3D68    push        eax
 005D3D69    lea         eax,[esp+0AC]
 005D3D70    push        eax
 005D3D71    mov         ecx,dword ptr [ebx+0E0]
 005D3D77    sub         ecx,dword ptr [esp+18]
 005D3D7B    mov         edx,dword ptr [esp+14]
 005D3D7F    mov         eax,dword ptr [esp+10]
 005D3D83    call        Rect
 005D3D88    lea         eax,[esp+0A8]
 005D3D8F    mov         edx,esp
 005D3D91    call        TRect.Contains
 005D3D96    test        al,al
>005D3D98    je          005D3DA4
 005D3D9A    mov         esi,1
>005D3D9F    jmp         005D3F45
 005D3DA4    mov         esi,12
>005D3DA9    jmp         005D3F45
 005D3DAE    mov         edi,dword ptr [esp+0C]
 005D3DB2    push        edi
 005D3DB3    lea         eax,[esp+1C]
 005D3DB7    push        eax
 005D3DB8    mov         ebp,dword ptr [esp+10]
 005D3DBC    mov         ecx,ebp
 005D3DBE    xor         edx,edx
 005D3DC0    xor         eax,eax
 005D3DC2    call        Rect
 005D3DC7    push        edi
 005D3DC8    lea         eax,[esp+2C]
 005D3DCC    push        eax
 005D3DCD    mov         eax,dword ptr [ebx+0E0]
 005D3DD3    sub         eax,dword ptr [esp+18]
 005D3DD7    mov         ecx,dword ptr [ebx+0E0]
 005D3DDD    xor         edx,edx
 005D3DDF    call        Rect
 005D3DE4    mov         eax,dword ptr [ebx+58]
 005D3DE7    push        eax
 005D3DE8    lea         eax,[esp+3C]
 005D3DEC    push        eax
 005D3DED    mov         edx,dword ptr [ebx+58]
 005D3DF0    sub         edx,dword ptr [esp+1C]
 005D3DF4    mov         ecx,ebp
 005D3DF6    xor         eax,eax
 005D3DF8    call        Rect
 005D3DFD    mov         eax,dword ptr [ebx+58]
 005D3E00    push        eax
 005D3E01    lea         eax,[esp+4C]
 005D3E05    push        eax
 005D3E06    mov         edx,dword ptr [ebx+58]
 005D3E09    sub         edx,dword ptr [esp+1C]
 005D3E0D    mov         eax,dword ptr [ebx+0E0]
 005D3E13    sub         eax,dword ptr [esp+18]
 005D3E17    mov         ecx,dword ptr [ebx+0E0]
 005D3E1D    call        Rect
 005D3E22    push        edi
 005D3E23    lea         eax,[esp+5C]
 005D3E27    push        eax
 005D3E28    mov         ecx,dword ptr [esp+30]
 005D3E2C    xor         edx,edx
 005D3E2E    mov         eax,dword ptr [esp+28]
 005D3E32    call        Rect
 005D3E37    mov         eax,dword ptr [esp+3C]
 005D3E3B    push        eax
 005D3E3C    lea         eax,[esp+6C]
 005D3E40    push        eax
 005D3E41    mov         ecx,ebp
 005D3E43    mov         edx,dword ptr [esp+2C]
 005D3E47    xor         eax,eax
 005D3E49    call        Rect
 005D3E4E    mov         eax,dword ptr [esp+4C]
 005D3E52    push        eax
 005D3E53    lea         eax,[esp+7C]
 005D3E57    push        eax
 005D3E58    mov         edi,dword ptr [ebx+0E0]
 005D3E5E    mov         eax,edi
 005D3E60    sub         eax,dword ptr [esp+18]
 005D3E64    mov         ecx,edi
 005D3E66    mov         edx,dword ptr [esp+3C]
 005D3E6A    call        Rect
 005D3E6F    mov         edi,dword ptr [ebx+58]
 005D3E72    push        edi
 005D3E73    lea         eax,[esp+8C]
 005D3E7A    push        eax
 005D3E7B    mov         edx,edi
 005D3E7D    sub         edx,dword ptr [esp+1C]
 005D3E81    mov         ecx,dword ptr [esp+50]
 005D3E85    mov         eax,dword ptr [esp+48]
 005D3E89    call        Rect
 005D3E8E    mov         edx,esp
 005D3E90    lea         eax,[esp+18]
 005D3E94    call        TRect.Contains
 005D3E99    test        al,al
>005D3E9B    je          005D3EA7
 005D3E9D    mov         esi,0D
>005D3EA2    jmp         005D3F45
 005D3EA7    mov         edx,esp
 005D3EA9    lea         eax,[esp+28]
 005D3EAD    call        TRect.Contains
 005D3EB2    test        al,al
>005D3EB4    je          005D3EC0
 005D3EB6    mov         esi,0E
>005D3EBB    jmp         005D3F45
 005D3EC0    mov         edx,esp
 005D3EC2    lea         eax,[esp+38]
 005D3EC6    call        TRect.Contains
 005D3ECB    test        al,al
>005D3ECD    je          005D3ED6
 005D3ECF    mov         esi,10
>005D3ED4    jmp         005D3F45
 005D3ED6    mov         edx,esp
 005D3ED8    lea         eax,[esp+48]
 005D3EDC    call        TRect.Contains
 005D3EE1    test        al,al
>005D3EE3    je          005D3EEC
 005D3EE5    mov         esi,11
>005D3EEA    jmp         005D3F45
 005D3EEC    mov         edx,esp
 005D3EEE    lea         eax,[esp+68]
 005D3EF2    call        TRect.Contains
 005D3EF7    test        al,al
>005D3EF9    je          005D3F02
 005D3EFB    mov         esi,0A
>005D3F00    jmp         005D3F45
 005D3F02    mov         edx,esp
 005D3F04    lea         eax,[esp+78]
 005D3F08    call        TRect.Contains
 005D3F0D    test        al,al
>005D3F0F    je          005D3F18
 005D3F11    mov         esi,0B
>005D3F16    jmp         005D3F45
 005D3F18    mov         edx,esp
 005D3F1A    lea         eax,[esp+88]
 005D3F21    call        TRect.Contains
 005D3F26    test        al,al
>005D3F28    je          005D3F31
 005D3F2A    mov         esi,0F
>005D3F2F    jmp         005D3F45
 005D3F31    mov         edx,esp
 005D3F33    lea         eax,[esp+58]
 005D3F37    call        TRect.Contains
 005D3F3C    test        al,al
>005D3F3E    je          005D3F45
 005D3F40    mov         esi,0C
 005D3F45    mov         eax,esi
 005D3F47    add         esp,0B8
 005D3F4D    pop         ebp
 005D3F4E    pop         edi
 005D3F4F    pop         esi
 005D3F50    pop         ebx
 005D3F51    ret
end;*}

//005D3F54
{*procedure TFormStyleHook.CMDialogChar(?:?);
begin
 005D3F54    push        ebx
 005D3F55    push        esi
 005D3F56    mov         esi,edx
 005D3F58    mov         ebx,eax
 005D3F5A    cmp         dword ptr [ebx+74],0;TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
>005D3F5E    je          005D3F8F
 005D3F60    mov         eax,dword ptr [esi+8]
 005D3F63    call        KeyDataToShiftState
 005D3F68    movzx       edx,word ptr ds:[5D3F94];0x2 gvar_005D3F94
 005D3F6F    cmp         dx,ax
>005D3F72    jne         005D3F8F
 005D3F74    movzx       edx,word ptr [esi+4]
 005D3F78    mov         eax,dword ptr [ebx+74];TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D3F7B    call        TFormStyleHook.TMainMenuBarStyleHook.CheckHotKeyItem
 005D3F80    test        al,al
>005D3F82    je          005D3F8F
 005D3F84    mov         dword ptr [esi+0C],1
 005D3F8B    mov         byte ptr [ebx+14],1;TFormStyleHook.FHandled:Boolean
 005D3F8F    pop         esi
 005D3F90    pop         ebx
 005D3F91    ret
end;*}

//005D3F98
procedure TFormStyleHook.WMSetText(Message:Messages.TMessage);
begin
{*
 005D3F98    push        ebx
 005D3F99    push        esi
 005D3F9A    mov         esi,edx
 005D3F9C    mov         ebx,eax
 005D3F9E    mov         eax,ebx
 005D3FA0    call        005D2AFC
 005D3FA5    test        al,al
>005D3FA7    jne         005D3FB0
 005D3FA9    mov         byte ptr [ebx+14],0;TFormStyleHook.FHandled:Boolean
 005D3FAD    pop         esi
 005D3FAE    pop         ebx
 005D3FAF    ret
 005D3FB0    mov         edx,esi
 005D3FB2    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D3FB5    mov         ecx,dword ptr [eax]
 005D3FB7    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 005D3FBA    mov         eax,ebx
 005D3FBC    mov         edx,dword ptr [eax]
 005D3FBE    call        dword ptr [edx+2C];TStyleHook.InvalidateNC
 005D3FC1    mov         byte ptr [ebx+14],1;TFormStyleHook.FHandled:Boolean
 005D3FC5    pop         esi
 005D3FC6    pop         ebx
 005D3FC7    ret
*}
end;

//005D3FC8
{*function sub_005D3FC8(?:?):?;
begin
 005D3FC8    push        ebp
 005D3FC9    mov         ebp,esp
 005D3FCB    push        ecx
 005D3FCC    push        ebx
 005D3FCD    push        esi
 005D3FCE    push        edi
 005D3FCF    mov         byte ptr [ebp-1],0
 005D3FD3    mov         eax,dword ptr [ebp+8]
 005D3FD6    mov         ebx,dword ptr [eax-4]
 005D3FD9    mov         eax,dword ptr [ebx+8]
 005D3FDC    call        005C2D64
 005D3FE1    mov         esi,eax
 005D3FE3    dec         esi
 005D3FE4    test        esi,esi
>005D3FE6    jl          005D404A
 005D3FE8    inc         esi
 005D3FE9    xor         ebx,ebx
 005D3FEB    mov         eax,dword ptr [ebp+8]
 005D3FEE    mov         edi,dword ptr [eax-4]
 005D3FF1    mov         eax,dword ptr [edi+8]
 005D3FF4    mov         edx,ebx
 005D3FF6    call        TForm.get_MDIChildren
 005D3FFB    call        TWinControl.GetHandle
 005D4000    mov         edx,dword ptr [ebp+8]
 005D4003    mov         edx,dword ptr [edx-4]
 005D4006    cmp         eax,dword ptr [edx+3C]
>005D4009    je          005D4021
 005D400B    mov         eax,dword ptr [ebp+8]
 005D400E    mov         edi,dword ptr [eax-4]
 005D4011    mov         eax,dword ptr [edi+8]
 005D4014    mov         edx,ebx
 005D4016    call        TForm.get_MDIChildren
 005D401B    movzx       eax,byte ptr [eax+69];TForm.FVisible:Boolean
>005D401F    jmp         005D4023
 005D4021    xor         eax,eax
 005D4023    test        al,al
>005D4025    je          005D4046
 005D4027    mov         eax,dword ptr [ebp+8]
 005D402A    mov         edi,dword ptr [eax-4]
 005D402D    mov         eax,dword ptr [edi+8]
 005D4030    mov         edx,ebx
 005D4032    call        TForm.get_MDIChildren
 005D4037    cmp         byte ptr [eax+2BE],2;TForm.FWindowState:TWindowState
>005D403E    jne         005D4046
 005D4040    mov         byte ptr [ebp-1],1
>005D4044    jmp         005D404A
 005D4046    inc         ebx
 005D4047    dec         esi
>005D4048    jne         005D3FEB
 005D404A    movzx       eax,byte ptr [ebp-1]
 005D404E    pop         edi
 005D404F    pop         esi
 005D4050    pop         ebx
 005D4051    pop         ecx
 005D4052    pop         ebp
 005D4053    ret
end;*}

//005D4054
{*procedure TFormStyleHook.sub_005D4054(?:?);
begin
 005D4054    push        ebp
 005D4055    mov         ebp,esp
 005D4057    push        ecx
 005D4058    mov         dword ptr [ebp-4],eax
 005D405B    mov         eax,dword ptr [edx+4]
 005D405E    mov         edx,dword ptr [ebp-4]
 005D4061    mov         dword ptr [edx+3C],eax;TFormStyleHook.FChangeVisibleChildHandle:HWND
 005D4064    mov         eax,dword ptr [ebp-4]
 005D4067    cmp         dword ptr [eax+74],0;TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
>005D406B    je          005D40C5
 005D406D    push        ebp
 005D406E    call        005D3FC8
 005D4073    pop         ecx
 005D4074    test        al,al
>005D4076    je          005D4096
 005D4078    mov         eax,dword ptr [ebp-4]
 005D407B    mov         eax,dword ptr [eax+74];TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D407E    cmp         byte ptr [eax+0A5],0
>005D4085    jne         005D4096
 005D4087    mov         eax,dword ptr [ebp-4]
 005D408A    mov         eax,dword ptr [eax+74];TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D408D    mov         dl,1
 005D408F    call        005CFD68
>005D4094    jmp         005D40BD
 005D4096    push        ebp
 005D4097    call        005D3FC8
 005D409C    pop         ecx
 005D409D    test        al,al
>005D409F    jne         005D40BD
 005D40A1    mov         eax,dword ptr [ebp-4]
 005D40A4    mov         eax,dword ptr [eax+74];TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D40A7    cmp         byte ptr [eax+0A5],0
>005D40AE    je          005D40BD
 005D40B0    mov         eax,dword ptr [ebp-4]
 005D40B3    mov         eax,dword ptr [eax+74];TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D40B6    xor         edx,edx
 005D40B8    call        005CFD68
 005D40BD    mov         eax,dword ptr [ebp-4]
 005D40C0    mov         edx,dword ptr [eax]
 005D40C2    call        dword ptr [edx+2C];TStyleHook.InvalidateNC
 005D40C5    mov         dl,1
 005D40C7    mov         eax,dword ptr [ebp-4]
 005D40CA    call        005D2D50
 005D40CF    pop         ecx
 005D40D0    pop         ebp
 005D40D1    ret
end;*}

//005D40D4
procedure TFormStyleHook.WMDestroy;
begin
{*
 005D40D4    mov         edx,dword ptr [eax+8];TFormStyleHook.FControl:TWinControl
 005D40D7    test        byte ptr [edx+65],20;TWinControl.FAlign:TAlign
>005D40DB    jne         005D4102
 005D40DD    cmp         byte ptr [edx+2C2],1
>005D40E4    jne         005D4102
 005D40E6    push        0
 005D40E8    push        0
 005D40EA    push        52D
 005D40EF    mov         eax,[007CA7C8];Application:TApplication
 005D40F4    mov         eax,dword ptr [eax+58]
 005D40F7    call        TWinControl.GetHandle
 005D40FC    push        eax
 005D40FD    call        user32.PostMessageW
 005D4102    ret
*}
end;

//005D4104
{*procedure TFormStyleHook.WMSysCommand(?:?);
begin
 005D4104    push        ebx
 005D4105    push        esi
 005D4106    mov         esi,edx
 005D4108    mov         ebx,eax
 005D410A    mov         eax,ebx
 005D410C    call        005D2AFC
 005D4111    test        al,al
>005D4113    je          005D41BE
 005D4119    mov         eax,dword ptr [esi+4]
 005D411C    sub         eax,0F020
>005D4121    je          005D4181
 005D4123    sub         eax,40
>005D4126    je          005D4150
 005D4128    sub         eax,0A0
>005D412D    je          005D4193
 005D412F    sub         eax,20
>005D4132    jne         005D41BE
 005D4138    mov         byte ptr [ebx+0E5],1;TFormStyleHook.FRestoring:Boolean
 005D413F    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D4142    mov         eax,dword ptr [eax+80];TWinControl.FConstraints:TSizeConstraints
 005D4148    mov         dword ptr [ebx+0E8],eax;TFormStyleHook.FRestoringConstraints:TSizeConstraints
>005D414E    jmp         005D41BE
 005D4150    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D4153    cmp         byte ptr [eax+2C2],1
>005D415A    jne         005D41BE
 005D415C    push        0
 005D415E    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D4161    call        TWinControl.GetHandle
 005D4166    push        eax
 005D4167    push        52D
 005D416C    mov         eax,[007CA7C8];Application:TApplication
 005D4171    mov         eax,dword ptr [eax+58]
 005D4174    call        TWinControl.GetHandle
 005D4179    push        eax
 005D417A    call        user32.PostMessageW
>005D417F    jmp         005D41BE
 005D4181    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D4184    cmp         byte ptr [eax+2C2],1
>005D418B    jne         005D41BE
 005D418D    mov         byte ptr [ebx+50],0;TFormStyleHook.FFormActive:Boolean
>005D4191    jmp         005D41BE
 005D4193    mov         eax,dword ptr [ebx+74];TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D4196    test        eax,eax
>005D4198    je          005D41BE
 005D419A    cmp         word ptr [esi+8],20
>005D419F    jne         005D41A8
 005D41A1    call        TFormStyleHook.TMainMenuBarStyleHook.TrackSystemMenu
>005D41A6    jmp         005D41BA
 005D41A8    mov         byte ptr [eax+86],1
 005D41AF    mov         byte ptr [eax+18],1
 005D41B3    xor         edx,edx
 005D41B5    call        TFormStyleHook.TMainMenuBarStyleHook.MenuEnter
 005D41BA    mov         byte ptr [ebx+14],1;TFormStyleHook.FHandled:Boolean
 005D41BE    pop         esi
 005D41BF    pop         ebx
 005D41C0    ret
end;*}

//005D41C4
{*procedure TFormStyleHook.WMInitMenu(?:?);
begin
 005D41C4    push        ebx
 005D41C5    push        esi
 005D41C6    mov         esi,edx
 005D41C8    mov         ebx,eax
 005D41CA    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D41CD    call        TWinControl.GetHandle
 005D41D2    push        eax
 005D41D3    call        user32.GetMenu
 005D41D8    cmp         eax,dword ptr [esi+4]
>005D41DB    jne         005D41F8
 005D41DD    mov         eax,ebx
 005D41DF    call        005D2AFC
 005D41E4    test        al,al
>005D41E6    je          005D41F8
 005D41E8    push        0
 005D41EA    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D41ED    call        TWinControl.GetHandle
 005D41F2    push        eax
 005D41F3    call        user32.SetMenu
 005D41F8    pop         esi
 005D41F9    pop         ebx
 005D41FA    ret
end;*}

//005D41FC
procedure TFormStyleHook.CMMenuChanged;
begin
{*
 005D41FC    push        ebx
 005D41FD    mov         ebx,eax
 005D41FF    mov         eax,ebx
 005D4201    call        005D2AFC
 005D4206    test        al,al
>005D4208    je          005D4230
 005D420A    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D420D    call        TWinControl.GetHandle
 005D4212    push        eax
 005D4213    call        user32.GetMenu
 005D4218    test        eax,eax
>005D421A    je          005D422C
 005D421C    push        0
 005D421E    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D4221    call        TWinControl.GetHandle
 005D4226    push        eax
 005D4227    call        user32.SetMenu
 005D422C    mov         byte ptr [ebx+14],1;TFormStyleHook.FHandled:Boolean
 005D4230    pop         ebx
 005D4231    ret
*}
end;

//005D4234
{*procedure TFormStyleHook.WMNCHitTest(?:?);
begin
 005D4234    push        ebx
 005D4235    push        esi
 005D4236    add         esp,0FFFFFFF0
 005D4239    mov         esi,edx
 005D423B    mov         ebx,eax
 005D423D    mov         eax,ebx
 005D423F    call        005D2AFC
 005D4244    test        al,al
>005D4246    je          005D4275
 005D4248    movsx       eax,word ptr [esi+8]
 005D424C    movsx       edx,word ptr [esi+0A]
 005D4250    mov         dword ptr [esp+8],eax
 005D4254    mov         dword ptr [esp+0C],edx
 005D4258    mov         ecx,esp
 005D425A    lea         edx,[esp+8]
 005D425E    mov         eax,ebx
 005D4260    call        005D3A94
 005D4265    mov         edx,esp
 005D4267    mov         eax,ebx
 005D4269    call        005D3BEC
 005D426E    mov         dword ptr [esi+0C],eax
 005D4271    mov         byte ptr [ebx+14],1;TFormStyleHook.FHandled:Boolean
 005D4275    add         esp,10
 005D4278    pop         esi
 005D4279    pop         ebx
 005D427A    ret
end;*}

//005D427C
{*procedure TFormStyleHook.WMNCCalcSize(?:?);
begin
 005D427C    push        ebx
 005D427D    push        esi
 005D427E    push        edi
 005D427F    push        ebp
 005D4280    add         esp,0FFFFFFE0
 005D4283    mov         esi,edx
 005D4285    mov         ebx,eax
 005D4287    mov         eax,ebx
 005D4289    call        005D2AFC
 005D428E    test        al,al
>005D4290    jne         005D429B
 005D4292    mov         byte ptr [ebx+14],0;TFormStyleHook.FHandled:Boolean
>005D4296    jmp         005D441E
 005D429B    mov         edi,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D429E    cmp         byte ptr [edi+2C2],1
>005D42A5    jne         005D42B1
 005D42A7    xor         eax,eax
 005D42A9    mov         dword ptr [ebx+74],eax;TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
>005D42AC    jmp         005D4335
 005D42B1    mov         ebp,dword ptr [edi+2D8]
 005D42B7    test        ebp,ebp
>005D42B9    je          005D42C3
 005D42BB    movzx       eax,byte ptr [ebp+6C]
 005D42BF    xor         al,1
>005D42C1    jmp         005D42C5
 005D42C3    xor         eax,eax
 005D42C5    test        al,al
>005D42C7    je          005D42D8
 005D42C9    mov         eax,dword ptr [ebp+44]
 005D42CC    call        TMenuItem.GetCount
 005D42D1    test        eax,eax
 005D42D3    setg        al
>005D42D6    jmp         005D42DA
 005D42D8    xor         eax,eax
 005D42DA    test        al,al
>005D42DC    je          005D42E7
 005D42DE    cmp         dword ptr [ebx+74],0;TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D42E2    sete        al
>005D42E5    jmp         005D42E9
 005D42E7    xor         eax,eax
 005D42E9    test        al,al
>005D42EB    je          005D4300
 005D42ED    mov         ecx,ebx
 005D42EF    mov         dl,1
 005D42F1    mov         eax,[005BD9C8];TFormStyleHook.TMainMenuBarStyleHook
 005D42F6    call        005CFA80
 005D42FB    mov         dword ptr [ebx+74],eax;TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
>005D42FE    jmp         005D4335
 005D4300    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D4303    mov         edi,dword ptr [eax+2D8]
 005D4309    test        edi,edi
>005D430B    jne         005D4311
 005D430D    mov         al,1
>005D430F    jmp         005D4326
 005D4311    test        edi,edi
>005D4313    je          005D4324
 005D4315    mov         eax,dword ptr [edi+44]
 005D4318    call        TMenuItem.GetCount
 005D431D    test        eax,eax
 005D431F    sete        al
>005D4322    jmp         005D4326
 005D4324    xor         eax,eax
 005D4326    test        al,al
>005D4328    je          005D4335
 005D432A    cmp         dword ptr [ebx+74],0;TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
>005D432E    je          005D4335
 005D4330    xor         eax,eax
 005D4332    mov         dword ptr [ebx+74],eax;TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D4335    cmp         dword ptr [esi+4],0
>005D4339    je          005D434A
 005D433B    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D433E    cmp         byte ptr [eax+2BD],0
 005D4345    setne       al
>005D4348    jmp         005D434C
 005D434A    xor         eax,eax
 005D434C    test        al,al
>005D434E    je          005D4354
 005D4350    mov         al,1
>005D4352    jmp         005D436B
 005D4354    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D4357    cmp         byte ptr [eax+2BD],0
>005D435E    jne         005D4369
 005D4360    cmp         dword ptr [ebx+74],0;TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D4364    setne       al
>005D4367    jmp         005D436B
 005D4369    xor         eax,eax
 005D436B    test        al,al
>005D436D    je          005D441E
 005D4373    mov         edx,esp
 005D4375    mov         eax,ebx
 005D4377    call        005D38F0
 005D437C    mov         eax,dword ptr [ebx+74];TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D437F    test        eax,eax
>005D4381    je          005D43C8
 005D4383    mov         edx,dword ptr [ebx+0E0];TFormStyleHook.FWidth:Integer
 005D4389    mov         ebp,dword ptr [esp]
 005D438C    sub         edx,ebp
 005D438E    sub         edx,dword ptr [esp+8]
 005D4392    call        TFormStyleHook.TMainMenuBarStyleHook.GetMenuHeight
 005D4397    mov         edi,eax
 005D4399    mov         eax,dword ptr [esp+4]
 005D439D    add         eax,edi
 005D439F    push        eax
 005D43A0    lea         eax,[esp+14]
 005D43A4    push        eax
 005D43A5    mov         ecx,dword ptr [ebx+0E0];TFormStyleHook.FWidth:Integer
 005D43AB    sub         ecx,dword ptr [esp+10]
 005D43AF    mov         edx,dword ptr [esp+0C]
 005D43B3    mov         eax,ebp
 005D43B5    call        Rect
 005D43BA    lea         edx,[esp+10]
 005D43BE    mov         eax,dword ptr [ebx+74];TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D43C1    call        005D2280
>005D43C6    jmp         005D43CA
 005D43C8    xor         edi,edi
 005D43CA    mov         eax,dword ptr [esi+8]
 005D43CD    mov         edx,dword ptr [esp]
 005D43D0    add         dword ptr [eax],edx
 005D43D2    add         edi,dword ptr [esp+4]
 005D43D6    add         dword ptr [eax+4],edi
 005D43D9    mov         edx,dword ptr [esp+8]
 005D43DD    sub         dword ptr [eax+8],edx
 005D43E0    mov         edx,dword ptr [esp+0C]
 005D43E4    sub         dword ptr [eax+0C],edx
 005D43E7    mov         edx,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D43EA    mov         edx,dword ptr [edx+1C8];TWinControl.FBorderWidth:TBorderWidth
 005D43F0    test        edx,edx
>005D43F2    je          005D441A
 005D43F4    add         dword ptr [eax],edx
 005D43F6    mov         edx,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D43F9    mov         edx,dword ptr [edx+1C8];TWinControl.FBorderWidth:TBorderWidth
 005D43FF    add         dword ptr [eax+4],edx
 005D4402    mov         edx,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D4405    mov         edx,dword ptr [edx+1C8];TWinControl.FBorderWidth:TBorderWidth
 005D440B    sub         dword ptr [eax+8],edx
 005D440E    mov         edx,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D4411    mov         edx,dword ptr [edx+1C8];TWinControl.FBorderWidth:TBorderWidth
 005D4417    sub         dword ptr [eax+0C],edx
 005D441A    mov         byte ptr [ebx+14],1;TFormStyleHook.FHandled:Boolean
 005D441E    add         esp,20
 005D4421    pop         ebp
 005D4422    pop         edi
 005D4423    pop         esi
 005D4424    pop         ebx
 005D4425    ret
end;*}

//005D4428
{*function sub_005D4428(?:TFormStyleHook):?;
begin
 005D4428    mov         edx,dword ptr [eax+6C]
 005D442B    test        edx,edx
>005D442D    je          005D4435
 005D442F    cmp         dword ptr [eax+70],0
>005D4433    jne         005D443B
 005D4435    call        005D4440
 005D443A    ret
 005D443B    mov         eax,edx
 005D443D    ret
end;*}

//005D4440
{*procedure sub_005D4440(?:?);
begin
 005D4440    push        ebx
 005D4441    push        esi
 005D4442    push        edi
 005D4443    push        ebp
 005D4444    add         esp,0FFFFFDD0
 005D444A    mov         ebx,eax
 005D444C    push        0
 005D444E    push        0
 005D4450    push        7F
 005D4452    mov         eax,ebx
 005D4454    call        TStyleHook.GetHandle
 005D4459    push        eax
 005D445A    call        user32.SendMessageW
 005D445F    mov         esi,eax
 005D4461    test        esi,esi
>005D4463    jne         005D447A
 005D4465    push        0
 005D4467    push        1
 005D4469    push        7F
 005D446B    mov         eax,ebx
 005D446D    call        TStyleHook.GetHandle
 005D4472    push        eax
 005D4473    call        user32.SendMessageW
 005D4478    mov         esi,eax
 005D447A    test        esi,esi
>005D447C    jne         005D44D7
 005D447E    push        100
 005D4483    lea         eax,[esp+34]
 005D4487    push        eax
 005D4488    mov         eax,ebx
 005D448A    call        TStyleHook.GetHandle
 005D448F    push        eax
 005D4490    call        user32.GetClassNameW
 005D4495    mov         eax,esp
 005D4497    xor         ecx,ecx
 005D4499    mov         edx,30
 005D449E    call        @FillChar
 005D44A3    mov         dword ptr [esp],30
 005D44AA    mov         eax,ebx
 005D44AC    call        TStyleHook.GetHandle
 005D44B1    push        0FA
 005D44B3    push        eax
 005D44B4    call        user32.GetWindowLongW
 005D44B9    mov         edi,eax
 005D44BB    push        esp
 005D44BC    lea         eax,[esp+34]
 005D44C0    push        eax
 005D44C1    push        edi
 005D44C2    call        user32.GetClassInfoExW
 005D44C7    test        eax,eax
>005D44C9    je          005D44D7
 005D44CB    mov         esi,dword ptr [esp+2C]
 005D44CF    test        esi,esi
>005D44D1    jne         005D44D7
 005D44D3    mov         esi,dword ptr [esp+18]
 005D44D7    cmp         dword ptr [ebx+6C],0
>005D44DB    jne         005D44EC
 005D44DD    mov         dl,1
 005D44DF    mov         eax,[004C2694];TIcon
 005D44E4    call        TIcon.Create;TIcon.Create
 005D44E9    mov         dword ptr [ebx+6C],eax
 005D44EC    test        esi,esi
>005D44EE    je          005D4535
 005D44F0    push        31
 005D44F2    call        user32.GetSystemMetrics
 005D44F7    mov         edi,eax
 005D44F9    test        edi,edi
>005D44FB    jne         005D4506
 005D44FD    push        1E
 005D44FF    call        user32.GetSystemMetrics
 005D4504    mov         edi,eax
 005D4506    push        32
 005D4508    call        user32.GetSystemMetrics
 005D450D    mov         ebp,eax
 005D450F    test        ebp,ebp
>005D4511    jne         005D451C
 005D4513    push        1F
 005D4515    call        user32.GetSystemMetrics
 005D451A    mov         ebp,eax
 005D451C    push        0
 005D451E    push        ebp
 005D451F    push        edi
 005D4520    push        1
 005D4522    push        esi
 005D4523    call        user32.CopyImage
 005D4528    mov         edx,eax
 005D452A    mov         eax,dword ptr [ebx+6C]
 005D452D    call        TIcon.SetHandle
 005D4532    mov         dword ptr [ebx+70],esi
 005D4535    mov         eax,dword ptr [ebx+6C]
 005D4538    add         esp,230
 005D453E    pop         ebp
 005D453F    pop         edi
 005D4540    pop         esi
 005D4541    pop         ebx
 005D4542    ret
end;*}

//005D4544
{*function sub_005D4544(?:?):?;
begin
 005D4544    push        ebp
 005D4545    mov         ebp,esp
 005D4547    add         esp,0FFFFFFE8
 005D454A    push        ebx
 005D454B    push        esi
 005D454C    mov         eax,dword ptr [ebp+8]
 005D454F    mov         eax,dword ptr [eax-34]
 005D4552    mov         eax,dword ptr [eax+8]
 005D4555    call        TCustomForm.GetLeft
 005D455A    mov         edx,dword ptr [ebp+8]
 005D455D    mov         edx,dword ptr [edx-34]
 005D4560    mov         edx,dword ptr [edx+8]
 005D4563    mov         edx,dword ptr [edx+58]
 005D4566    sar         edx,1
>005D4568    jns         005D456D
 005D456A    adc         edx,0
 005D456D    add         eax,edx
 005D456F    mov         dword ptr [ebp-8],eax
 005D4572    mov         eax,dword ptr [ebp+8]
 005D4575    mov         eax,dword ptr [eax-34]
 005D4578    mov         eax,dword ptr [eax+8]
 005D457B    call        TCustomForm.GetTop
 005D4580    mov         edx,dword ptr [ebp+8]
 005D4583    mov         edx,dword ptr [edx-34]
 005D4586    mov         edx,dword ptr [edx+8]
 005D4589    mov         edx,dword ptr [edx+5C]
 005D458C    sar         edx,1
>005D458E    jns         005D4593
 005D4590    adc         edx,0
 005D4593    add         eax,edx
 005D4595    mov         dword ptr [ebp-4],eax
 005D4598    lea         edx,[ebp-8]
 005D459B    xor         ecx,ecx
 005D459D    mov         eax,[007CA7CC];Screen:TScreen
 005D45A2    call        TScreen.MonitorFromPoint
 005D45A7    lea         edx,[ebp-18]
 005D45AA    call        005C7C24
 005D45AF    mov         ebx,dword ptr [ebp-14]
 005D45B2    mov         eax,dword ptr [ebp+8]
 005D45B5    mov         esi,dword ptr [eax-34]
 005D45B8    mov         eax,dword ptr [esi+8]
 005D45BB    call        TCustomForm.GetTop
 005D45C0    cmp         ebx,eax
>005D45C2    jle         005D45D6
 005D45C4    mov         eax,dword ptr [ebp+8]
 005D45C7    mov         esi,dword ptr [eax-34]
 005D45CA    mov         eax,dword ptr [esi+8]
 005D45CD    call        TCustomForm.GetTop
 005D45D2    sub         ebx,eax
>005D45D4    jmp         005D45D8
 005D45D6    xor         ebx,ebx
 005D45D8    mov         eax,ebx
 005D45DA    pop         esi
 005D45DB    pop         ebx
 005D45DC    mov         esp,ebp
 005D45DE    pop         ebp
 005D45DF    ret
end;*}

//005D45E0
{*procedure sub_005D45E0(?:?);
begin
 005D45E0    push        ebp
 005D45E1    mov         ebp,esp
 005D45E3    add         esp,0FFFFFFF0
 005D45E6    mov         eax,dword ptr [ebp+8]
 005D45E9    mov         eax,dword ptr [eax-34]
 005D45EC    mov         eax,dword ptr [eax+8]
 005D45EF    cmp         byte ptr [eax+2BE],2
>005D45F6    jne         005D460D
 005D45F8    mov         eax,dword ptr [ebp+8]
 005D45FB    mov         eax,dword ptr [eax-34]
 005D45FE    mov         eax,dword ptr [eax+8]
 005D4601    cmp         byte ptr [eax+2C2],1
 005D4608    setne       al
>005D460B    jmp         005D460F
 005D460D    xor         eax,eax
 005D460F    test        al,al
>005D4611    je          005D4675
 005D4613    mov         eax,dword ptr [ebp+8]
 005D4616    add         eax,0FFFFFFF0
 005D4619    call        RectWidth
 005D461E    test        eax,eax
>005D4620    jle         005D4675
 005D4622    lea         edx,[ebp-10]
 005D4625    mov         eax,dword ptr [ebp+8]
 005D4628    mov         eax,dword ptr [eax-34]
 005D462B    call        005D38F0
 005D4630    mov         eax,dword ptr [ebp+8]
 005D4633    push        eax
 005D4634    call        005D4544
 005D4639    pop         ecx
 005D463A    mov         edx,dword ptr [ebp-8]
 005D463D    neg         edx
 005D463F    mov         ecx,dword ptr [ebp+8]
 005D4642    mov         ecx,dword ptr [ecx-0C]
 005D4645    cmp         eax,ecx
>005D4647    jle         005D4675
 005D4649    sub         eax,ecx
 005D464B    mov         ecx,dword ptr [ebp+8]
 005D464E    add         ecx,0FFFFFFF0
 005D4651    xchg        eax,ecx
 005D4652    call        OffsetRect
 005D4657    mov         eax,dword ptr [ebp+8]
 005D465A    mov         eax,dword ptr [eax-4]
 005D465D    sub         eax,dword ptr [ebp-0C]
 005D4660    test        eax,eax
>005D4662    jle         005D4675
 005D4664    mov         ecx,eax
 005D4666    neg         ecx
 005D4668    mov         eax,dword ptr [ebp+8]
 005D466B    add         eax,0FFFFFFF0
 005D466E    xor         edx,edx
 005D4670    call        OffsetRect
 005D4675    mov         esp,ebp
 005D4677    pop         ebp
 005D4678    ret
end;*}

//005D467C
{*procedure sub_005D467C(?:?);
begin
 005D467C    push        ebp
 005D467D    mov         ebp,esp
 005D467F    add         esp,0FFFFFFF0
 005D4682    mov         eax,dword ptr [ebp+8]
 005D4685    mov         eax,dword ptr [eax-34]
 005D4688    mov         eax,dword ptr [eax+8]
 005D468B    cmp         byte ptr [eax+2BE],2
>005D4692    jne         005D46A9
 005D4694    mov         eax,dword ptr [ebp+8]
 005D4697    mov         eax,dword ptr [eax-34]
 005D469A    mov         eax,dword ptr [eax+8]
 005D469D    cmp         byte ptr [eax+2C2],1
 005D46A4    setne       al
>005D46A7    jmp         005D46AB
 005D46A9    xor         eax,eax
 005D46AB    test        al,al
>005D46AD    je          005D470F
 005D46AF    mov         eax,dword ptr [ebp+8]
 005D46B2    add         eax,0FFFFFFF0
 005D46B5    call        RectWidth
 005D46BA    test        eax,eax
>005D46BC    jle         005D470F
 005D46BE    lea         edx,[ebp-10]
 005D46C1    mov         eax,dword ptr [ebp+8]
 005D46C4    mov         eax,dword ptr [eax-34]
 005D46C7    call        005D38F0
 005D46CC    mov         eax,dword ptr [ebp+8]
 005D46CF    push        eax
 005D46D0    call        005D4544
 005D46D5    pop         ecx
 005D46D6    mov         edx,dword ptr [ebp-10]
 005D46D9    mov         ecx,dword ptr [ebp+8]
 005D46DC    mov         ecx,dword ptr [ecx-0C]
 005D46DF    cmp         eax,ecx
>005D46E1    jle         005D470F
 005D46E3    sub         eax,ecx
 005D46E5    mov         ecx,dword ptr [ebp+8]
 005D46E8    add         ecx,0FFFFFFF0
 005D46EB    xchg        eax,ecx
 005D46EC    call        OffsetRect
 005D46F1    mov         eax,dword ptr [ebp+8]
 005D46F4    mov         eax,dword ptr [eax-4]
 005D46F7    sub         eax,dword ptr [ebp-0C]
 005D46FA    test        eax,eax
>005D46FC    jle         005D470F
 005D46FE    mov         ecx,eax
 005D4700    neg         ecx
 005D4702    mov         eax,dword ptr [ebp+8]
 005D4705    add         eax,0FFFFFFF0
 005D4708    xor         edx,edx
 005D470A    call        OffsetRect
 005D470F    mov         esp,ebp
 005D4711    pop         ebp
 005D4712    ret
end;*}

//005D4714
{*function sub_005D4714(?:?; ?:?):?;
begin
 005D4714    mov         ecx,dword ptr [eax+4]
 005D4717    cmp         ecx,dword ptr [edx+4]
>005D471A    jle         005D471F
 005D471C    mov         dword ptr [edx+4],ecx
 005D471F    mov         ecx,dword ptr [eax+0C]
 005D4722    cmp         ecx,dword ptr [edx+0C]
>005D4725    jge         005D472A
 005D4727    mov         dword ptr [edx+0C],ecx
 005D472A    mov         ecx,dword ptr [eax]
 005D472C    cmp         ecx,dword ptr [edx]
>005D472E    jle         005D4732
 005D4730    mov         dword ptr [edx],ecx
 005D4732    mov         ecx,dword ptr [eax+0C]
 005D4735    cmp         ecx,dword ptr [edx+0C]
>005D4738    jge         005D473D
 005D473A    mov         dword ptr [edx+0C],ecx
 005D473D    mov         eax,dword ptr [edx+4]
 005D4740    cmp         eax,dword ptr [edx+0C]
>005D4743    jg          005D474C
 005D4745    mov         eax,dword ptr [edx]
 005D4747    cmp         eax,dword ptr [edx+8]
>005D474A    jle         005D474F
 005D474C    xor         eax,eax
 005D474E    ret
 005D474F    mov         al,1
 005D4751    ret
end;*}

//005D4754
{*procedure sub_005D4754(?:?);
begin
 005D4754    push        ebp
 005D4755    mov         ebp,esp
 005D4757    add         esp,0FFFFFFC4
 005D475A    push        ebx
 005D475B    push        esi
 005D475C    push        edi
 005D475D    mov         ebx,dword ptr [ebp+8]
 005D4760    add         ebx,0FFFFFFE0
 005D4763    mov         esi,dword ptr [ebp+8]
 005D4766    add         esi,0FFFFFFCC
 005D4769    mov         edi,dword ptr [ebp+8]
 005D476C    add         edi,0FFFFFFD0
 005D476F    mov         eax,dword ptr [esi]
 005D4771    mov         eax,dword ptr [eax+8]
 005D4774    cmp         dword ptr [eax+1C8],0
>005D477B    je          005D4993
 005D4781    call        StyleServices
 005D4786    mov         dl,1D
 005D4788    call        TCustomStyleServices.GetStyleColor
 005D478D    mov         edx,eax
 005D478F    mov         eax,dword ptr [ebp+8]
 005D4792    mov         eax,dword ptr [eax-38]
 005D4795    mov         eax,dword ptr [eax+48]
 005D4798    call        TBrush.SetColor
 005D479D    mov         eax,dword ptr [ebp+8]
 005D47A0    mov         eax,dword ptr [eax-38]
 005D47A3    mov         eax,dword ptr [eax+48]
 005D47A6    xor         edx,edx
 005D47A8    call        TBrush.SetStyle
 005D47AD    mov         eax,dword ptr [esi]
 005D47AF    mov         eax,dword ptr [eax+8]
 005D47B2    cmp         byte ptr [eax+2BD],0
>005D47B9    jne         005D47CE
 005D47BB    push        0
 005D47BD    lea         eax,[ebp-2C]
 005D47C0    push        eax
 005D47C1    xor         ecx,ecx
 005D47C3    xor         edx,edx
 005D47C5    xor         eax,eax
 005D47C7    call        Rect
>005D47CC    jmp         005D47D8
 005D47CE    lea         edx,[ebp-2C]
 005D47D1    mov         eax,dword ptr [esi]
 005D47D3    call        005D38F0
 005D47D8    mov         eax,dword ptr [esi]
 005D47DA    mov         eax,dword ptr [eax+58]
 005D47DD    sub         eax,dword ptr [ebp-20]
 005D47E0    push        eax
 005D47E1    lea         eax,[ebp-3C]
 005D47E4    push        eax
 005D47E5    mov         eax,dword ptr [esi]
 005D47E7    mov         ecx,dword ptr [eax+0E0]
 005D47ED    sub         ecx,dword ptr [ebp-24]
 005D47F0    mov         edx,dword ptr [ebp-28]
 005D47F3    mov         eax,dword ptr [ebp-2C]
 005D47F6    call        Rect
 005D47FB    push        esi
 005D47FC    push        edi
 005D47FD    lea         esi,[ebp-3C]
 005D4800    mov         edi,ebx
 005D4802    movs        dword ptr [edi],dword ptr [esi]
 005D4803    movs        dword ptr [edi],dword ptr [esi]
 005D4804    movs        dword ptr [edi],dword ptr [esi]
 005D4805    movs        dword ptr [edi],dword ptr [esi]
 005D4806    pop         edi
 005D4807    pop         esi
 005D4808    mov         eax,dword ptr [esi]
 005D480A    cmp         dword ptr [eax+74],0
>005D480E    je          005D482B
 005D4810    mov         eax,dword ptr [esi]
 005D4812    mov         edx,dword ptr [eax+0E0]
 005D4818    sub         edx,dword ptr [ebp-2C]
 005D481B    sub         edx,dword ptr [ebp-24]
 005D481E    mov         eax,dword ptr [esi]
 005D4820    mov         eax,dword ptr [eax+74]
 005D4823    call        TFormStyleHook.TMainMenuBarStyleHook.GetMenuHeight
 005D4828    add         dword ptr [ebx+4],eax
 005D482B    mov         eax,dword ptr [esi]
 005D482D    mov         dword ptr [ebp-4],eax
 005D4830    mov         eax,dword ptr [ebx+0C]
 005D4833    push        eax
 005D4834    lea         eax,[ebp-3C]
 005D4837    push        eax
 005D4838    mov         ecx,dword ptr [ebx]
 005D483A    mov         eax,dword ptr [ebp-4]
 005D483D    mov         eax,dword ptr [eax+8]
 005D4840    add         ecx,dword ptr [eax+1C8]
 005D4846    mov         edx,dword ptr [ebx+4]
 005D4849    mov         eax,dword ptr [ebx]
 005D484B    call        Rect
 005D4850    push        esi
 005D4851    push        edi
 005D4852    lea         esi,[ebp-3C]
 005D4855    movs        dword ptr [edi],dword ptr [esi]
 005D4856    movs        dword ptr [edi],dword ptr [esi]
 005D4857    movs        dword ptr [edi],dword ptr [esi]
 005D4858    movs        dword ptr [edi],dword ptr [esi]
 005D4859    pop         edi
 005D485A    pop         esi
 005D485B    mov         edx,edi
 005D485D    mov         eax,ebx
 005D485F    call        005D4714
 005D4864    test        al,al
>005D4866    je          005D4875
 005D4868    mov         edx,edi
 005D486A    mov         eax,dword ptr [ebp+8]
 005D486D    mov         eax,dword ptr [eax-38]
 005D4870    mov         ecx,dword ptr [eax]
 005D4872    call        dword ptr [ecx+54]
 005D4875    mov         eax,dword ptr [esi]
 005D4877    mov         dword ptr [ebp-8],eax
 005D487A    mov         eax,dword ptr [ebx+0C]
 005D487D    push        eax
 005D487E    lea         eax,[ebp-3C]
 005D4881    push        eax
 005D4882    mov         eax,dword ptr [ebx+8]
 005D4885    mov         edx,dword ptr [ebp-8]
 005D4888    mov         edx,dword ptr [edx+8]
 005D488B    sub         eax,dword ptr [edx+1C8]
 005D4891    mov         ecx,dword ptr [ebx+8]
 005D4894    mov         edx,dword ptr [ebx+4]
 005D4897    call        Rect
 005D489C    push        esi
 005D489D    push        edi
 005D489E    lea         esi,[ebp-3C]
 005D48A1    movs        dword ptr [edi],dword ptr [esi]
 005D48A2    movs        dword ptr [edi],dword ptr [esi]
 005D48A3    movs        dword ptr [edi],dword ptr [esi]
 005D48A4    movs        dword ptr [edi],dword ptr [esi]
 005D48A5    pop         edi
 005D48A6    pop         esi
 005D48A7    mov         edx,edi
 005D48A9    mov         eax,ebx
 005D48AB    call        005D4714
 005D48B0    test        al,al
>005D48B2    je          005D48C1
 005D48B4    mov         edx,edi
 005D48B6    mov         eax,dword ptr [ebp+8]
 005D48B9    mov         eax,dword ptr [eax-38]
 005D48BC    mov         ecx,dword ptr [eax]
 005D48BE    call        dword ptr [ecx+54]
 005D48C1    mov         eax,dword ptr [esi]
 005D48C3    mov         dword ptr [ebp-0C],eax
 005D48C6    mov         eax,dword ptr [esi]
 005D48C8    mov         dword ptr [ebp-10],eax
 005D48CB    mov         eax,dword ptr [esi]
 005D48CD    mov         dword ptr [ebp-14],eax
 005D48D0    mov         eax,dword ptr [ebx+4]
 005D48D3    mov         edx,dword ptr [ebp-14]
 005D48D6    mov         edx,dword ptr [edx+8]
 005D48D9    add         eax,dword ptr [edx+1C8]
 005D48DF    push        eax
 005D48E0    lea         eax,[ebp-3C]
 005D48E3    push        eax
 005D48E4    mov         ecx,dword ptr [ebx+8]
 005D48E7    mov         eax,dword ptr [ebp-10]
 005D48EA    mov         eax,dword ptr [eax+8]
 005D48ED    sub         ecx,dword ptr [eax+1C8]
 005D48F3    mov         eax,dword ptr [ebx]
 005D48F5    mov         edx,dword ptr [ebp-0C]
 005D48F8    mov         edx,dword ptr [edx+8]
 005D48FB    add         eax,dword ptr [edx+1C8]
 005D4901    mov         edx,dword ptr [ebx+4]
 005D4904    call        Rect
 005D4909    push        esi
 005D490A    push        edi
 005D490B    lea         esi,[ebp-3C]
 005D490E    movs        dword ptr [edi],dword ptr [esi]
 005D490F    movs        dword ptr [edi],dword ptr [esi]
 005D4910    movs        dword ptr [edi],dword ptr [esi]
 005D4911    movs        dword ptr [edi],dword ptr [esi]
 005D4912    pop         edi
 005D4913    pop         esi
 005D4914    mov         edx,edi
 005D4916    mov         eax,ebx
 005D4918    call        005D4714
 005D491D    test        al,al
>005D491F    je          005D492E
 005D4921    mov         edx,edi
 005D4923    mov         eax,dword ptr [ebp+8]
 005D4926    mov         eax,dword ptr [eax-38]
 005D4929    mov         ecx,dword ptr [eax]
 005D492B    call        dword ptr [ecx+54]
 005D492E    mov         eax,dword ptr [esi]
 005D4930    mov         dword ptr [ebp-18],eax
 005D4933    mov         eax,dword ptr [esi]
 005D4935    mov         dword ptr [ebp-1C],eax
 005D4938    mov         esi,dword ptr [esi]
 005D493A    mov         eax,dword ptr [ebx+0C]
 005D493D    push        eax
 005D493E    lea         eax,[ebp-3C]
 005D4941    push        eax
 005D4942    mov         ecx,dword ptr [ebx+8]
 005D4945    mov         eax,dword ptr [esi+8]
 005D4948    sub         ecx,dword ptr [eax+1C8]
 005D494E    mov         edx,dword ptr [ebx+0C]
 005D4951    mov         eax,dword ptr [ebp-1C]
 005D4954    mov         eax,dword ptr [eax+8]
 005D4957    sub         edx,dword ptr [eax+1C8]
 005D495D    mov         eax,dword ptr [ebx]
 005D495F    mov         esi,dword ptr [ebp-18]
 005D4962    mov         esi,dword ptr [esi+8]
 005D4965    add         eax,dword ptr [esi+1C8]
 005D496B    call        Rect
 005D4970    push        edi
 005D4971    lea         esi,[ebp-3C]
 005D4974    movs        dword ptr [edi],dword ptr [esi]
 005D4975    movs        dword ptr [edi],dword ptr [esi]
 005D4976    movs        dword ptr [edi],dword ptr [esi]
 005D4977    movs        dword ptr [edi],dword ptr [esi]
 005D4978    pop         edi
 005D4979    mov         edx,edi
 005D497B    mov         eax,ebx
 005D497D    call        005D4714
 005D4982    test        al,al
>005D4984    je          005D4993
 005D4986    mov         edx,edi
 005D4988    mov         eax,dword ptr [ebp+8]
 005D498B    mov         eax,dword ptr [eax-38]
 005D498E    mov         ecx,dword ptr [eax]
 005D4990    call        dword ptr [ecx+54]
 005D4993    pop         edi
 005D4994    pop         esi
 005D4995    pop         ebx
 005D4996    mov         esp,ebp
 005D4998    pop         ebp
 005D4999    ret
end;*}

//005D499C
{*procedure sub_005D499C(?:?);
begin
 005D499C    push        ebp
 005D499D    mov         ebp,esp
 005D499F    add         esp,0FFFFFF68
 005D49A5    push        ebx
 005D49A6    push        esi
 005D49A7    push        edi
 005D49A8    xor         ecx,ecx
 005D49AA    mov         dword ptr [ebp-3C],ecx
 005D49AD    mov         dword ptr [ebp-38],edx
 005D49B0    mov         dword ptr [ebp-34],eax
 005D49B3    lea         ebx,[ebp-34]
 005D49B6    xor         eax,eax
 005D49B8    push        ebp
 005D49B9    push        5D560C
 005D49BE    push        dword ptr fs:[eax]
 005D49C1    mov         dword ptr fs:[eax],esp
 005D49C4    mov         eax,dword ptr [ebx]
 005D49C6    mov         eax,dword ptr [eax+8];TFormStyleHook.FControl:TWinControl
 005D49C9    cmp         byte ptr [eax+2BD],0
>005D49D0    jne         005D49F3
 005D49D2    mov         eax,dword ptr [ebx]
 005D49D4    cmp         dword ptr [eax+74],0;TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
>005D49D8    je          005D49E7
 005D49DA    mov         eax,dword ptr [ebx]
 005D49DC    mov         eax,dword ptr [eax+74];TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D49DF    mov         edx,dword ptr [ebp-38]
 005D49E2    call        TFormStyleHook.TMainMenuBarStyleHook.Paint
 005D49E7    push        ebp
 005D49E8    call        005D4754
 005D49ED    pop         ecx
>005D49EE    jmp         005D55F6
 005D49F3    push        0
 005D49F5    lea         eax,[ebp-98]
 005D49FB    push        eax
 005D49FC    xor         ecx,ecx
 005D49FE    xor         edx,edx
 005D4A00    xor         eax,eax
 005D4A02    call        Rect
 005D4A07    mov         eax,dword ptr [ebx]
 005D4A09    lea         esi,[ebp-98]
 005D4A0F    lea         edi,[eax+40];TFormStyleHook.FCloseButtonRect:TRect
 005D4A12    movs        dword ptr [edi],dword ptr [esi]
 005D4A13    movs        dword ptr [edi],dword ptr [esi]
 005D4A14    movs        dword ptr [edi],dword ptr [esi]
 005D4A15    movs        dword ptr [edi],dword ptr [esi]
 005D4A16    push        0
 005D4A18    lea         eax,[ebp-98]
 005D4A1E    push        eax
 005D4A1F    xor         ecx,ecx
 005D4A21    xor         edx,edx
 005D4A23    xor         eax,eax
 005D4A25    call        Rect
 005D4A2A    mov         eax,dword ptr [ebx]
 005D4A2C    lea         esi,[ebp-98]
 005D4A32    lea         edi,[eax+78];TFormStyleHook.FMaxButtonRect:TRect
 005D4A35    movs        dword ptr [edi],dword ptr [esi]
 005D4A36    movs        dword ptr [edi],dword ptr [esi]
 005D4A37    movs        dword ptr [edi],dword ptr [esi]
 005D4A38    movs        dword ptr [edi],dword ptr [esi]
 005D4A39    push        0
 005D4A3B    lea         eax,[ebp-98]
 005D4A41    push        eax
 005D4A42    xor         ecx,ecx
 005D4A44    xor         edx,edx
 005D4A46    xor         eax,eax
 005D4A48    call        Rect
 005D4A4D    mov         eax,dword ptr [ebx]
 005D4A4F    lea         esi,[ebp-98]
 005D4A55    lea         edi,[eax+0A0];TFormStyleHook.FMinButtonRect:TRect
 005D4A5B    movs        dword ptr [edi],dword ptr [esi]
 005D4A5C    movs        dword ptr [edi],dword ptr [esi]
 005D4A5D    movs        dword ptr [edi],dword ptr [esi]
 005D4A5E    movs        dword ptr [edi],dword ptr [esi]
 005D4A5F    push        0
 005D4A61    lea         eax,[ebp-98]
 005D4A67    push        eax
 005D4A68    xor         ecx,ecx
 005D4A6A    xor         edx,edx
 005D4A6C    xor         eax,eax
 005D4A6E    call        Rect
 005D4A73    mov         eax,dword ptr [ebx]
 005D4A75    lea         esi,[ebp-98]
 005D4A7B    lea         edi,[eax+5C];TFormStyleHook.FHelpButtonRect:TRect
 005D4A7E    movs        dword ptr [edi],dword ptr [esi]
 005D4A7F    movs        dword ptr [edi],dword ptr [esi]
 005D4A80    movs        dword ptr [edi],dword ptr [esi]
 005D4A81    movs        dword ptr [edi],dword ptr [esi]
 005D4A82    push        0
 005D4A84    lea         eax,[ebp-98]
 005D4A8A    push        eax
 005D4A8B    xor         ecx,ecx
 005D4A8D    xor         edx,edx
 005D4A8F    xor         eax,eax
 005D4A91    call        Rect
 005D4A96    mov         eax,dword ptr [ebx]
 005D4A98    lea         esi,[ebp-98]
 005D4A9E    lea         edi,[eax+0CC];TFormStyleHook.FSysMenuButtonRect:TRect
 005D4AA4    movs        dword ptr [edi],dword ptr [esi]
 005D4AA5    movs        dword ptr [edi],dword ptr [esi]
 005D4AA6    movs        dword ptr [edi],dword ptr [esi]
 005D4AA7    movs        dword ptr [edi],dword ptr [esi]
 005D4AA8    push        0
 005D4AAA    lea         eax,[ebp-98]
 005D4AB0    push        eax
 005D4AB1    xor         ecx,ecx
 005D4AB3    xor         edx,edx
 005D4AB5    xor         eax,eax
 005D4AB7    call        Rect
 005D4ABC    mov         eax,dword ptr [ebx]
 005D4ABE    lea         esi,[ebp-98]
 005D4AC4    lea         edi,[eax+28];TFormStyleHook.FCaptionRect:TRect
 005D4AC7    movs        dword ptr [edi],dword ptr [esi]
 005D4AC8    movs        dword ptr [edi],dword ptr [esi]
 005D4AC9    movs        dword ptr [edi],dword ptr [esi]
 005D4ACA    movs        dword ptr [edi],dword ptr [esi]
 005D4ACB    call        StyleServices
 005D4AD0    mov         edx,dword ptr [eax]
 005D4AD2    call        dword ptr [edx+48];@AbstractError
 005D4AD5    test        al,al
>005D4AD7    je          005D55F6
 005D4ADD    lea         edx,[ebp-20]
 005D4AE0    mov         eax,dword ptr [ebx]
 005D4AE2    call        005D38F0
 005D4AE7    mov         eax,dword ptr [ebx]
 005D4AE9    mov         eax,dword ptr [eax+8];TFormStyleHook.FControl:TWinControl
 005D4AEC    cmp         byte ptr [eax+2BD],4
>005D4AF3    je          005D4B06
 005D4AF5    mov         eax,dword ptr [ebx]
 005D4AF7    mov         eax,dword ptr [eax+8];TFormStyleHook.FControl:TWinControl
 005D4AFA    cmp         byte ptr [eax+2BD],5
 005D4B01    setne       al
>005D4B04    jmp         005D4B08
 005D4B06    xor         eax,eax
 005D4B08    test        al,al
>005D4B0A    je          005D4B20
 005D4B0C    mov         eax,dword ptr [ebx]
 005D4B0E    cmp         byte ptr [eax+50],0;TFormStyleHook.FFormActive:Boolean
>005D4B12    je          005D4B1A
 005D4B14    mov         byte ptr [ebp-3D],2
>005D4B18    jmp         005D4B32
 005D4B1A    mov         byte ptr [ebp-3D],3
>005D4B1E    jmp         005D4B32
 005D4B20    mov         eax,dword ptr [ebx]
 005D4B22    cmp         byte ptr [eax+50],0;TFormStyleHook.FFormActive:Boolean
>005D4B26    je          005D4B2E
 005D4B28    mov         byte ptr [ebp-3D],5
>005D4B2C    jmp         005D4B32
 005D4B2E    mov         byte ptr [ebp-3D],6
 005D4B32    mov         dl,1
 005D4B34    mov         eax,[004C1D10];TBitmap
 005D4B39    call        TBitmap.Create;TBitmap.Create
 005D4B3E    mov         esi,eax
 005D4B40    mov         eax,dword ptr [ebx]
 005D4B42    mov         edx,dword ptr [eax+0E0];TFormStyleHook.FWidth:Integer
 005D4B48    mov         ecx,dword ptr [ebp-1C]
 005D4B4B    mov         eax,esi
 005D4B4D    mov         edi,dword ptr [eax]
 005D4B4F    call        dword ptr [edi+6C];TBitmap.SetSize
 005D4B52    mov         eax,esi
 005D4B54    mov         edx,dword ptr [eax]
 005D4B56    call        dword ptr [edx+24];TBitmap.GetHeight
 005D4B59    push        eax
 005D4B5A    lea         eax,[ebp-30]
 005D4B5D    push        eax
 005D4B5E    mov         eax,esi
 005D4B60    mov         edx,dword ptr [eax]
 005D4B62    call        dword ptr [edx+30];TBitmap.GetWidth
 005D4B65    mov         ecx,eax
 005D4B67    xor         edx,edx
 005D4B69    xor         eax,eax
 005D4B6B    call        Rect
 005D4B70    call        StyleServices
 005D4B75    movzx       edx,byte ptr [ebp-3D]
 005D4B79    lea         ecx,[ebp-50]
 005D4B7C    mov         edi,dword ptr [eax]
 005D4B7E    call        dword ptr [edi+10C];TCustomStyleServices.GetElementDetails
 005D4B84    lea         eax,[ebp-30]
 005D4B87    push        eax
 005D4B88    push        0
 005D4B8A    mov         eax,esi
 005D4B8C    call        TBitmap.GetCanvas
 005D4B91    call        TCanvas.GetHandle
 005D4B96    push        eax
 005D4B97    call        StyleServices
 005D4B9C    lea         ecx,[ebp-50]
 005D4B9F    pop         edx
 005D4BA0    call        TCustomStyleServices.DrawElement
 005D4BA5    push        esi
 005D4BA6    lea         esi,[ebp-30]
 005D4BA9    lea         edi,[ebp-88]
 005D4BAF    movs        dword ptr [edi],dword ptr [esi]
 005D4BB0    movs        dword ptr [edi],dword ptr [esi]
 005D4BB1    movs        dword ptr [edi],dword ptr [esi]
 005D4BB2    movs        dword ptr [edi],dword ptr [esi]
 005D4BB3    pop         esi
 005D4BB4    mov         eax,dword ptr [ebp-50]
 005D4BB7    mov         dword ptr [ebp-5C],eax
 005D4BBA    mov         eax,dword ptr [ebp-4C]
 005D4BBD    mov         dword ptr [ebp-58],eax
 005D4BC0    mov         eax,dword ptr [ebp-48]
 005D4BC3    mov         dword ptr [ebp-54],eax
 005D4BC6    mov         dword ptr [ebp-44],3
 005D4BCD    mov         eax,dword ptr [ebx]
 005D4BCF    mov         eax,dword ptr [eax+8];TFormStyleHook.FControl:TWinControl
 005D4BD2    test        byte ptr [eax+2BC],1
>005D4BD9    je          005D4BE7
 005D4BDB    cmp         byte ptr [eax+2BD],3
 005D4BE2    setne       dl
>005D4BE5    jmp         005D4BE9
 005D4BE7    xor         edx,edx
 005D4BE9    test        dl,dl
>005D4BEB    je          005D4BF9
 005D4BED    cmp         byte ptr [eax+2BD],4
 005D4BF4    setne       dl
>005D4BF7    jmp         005D4BFB
 005D4BF9    xor         edx,edx
 005D4BFB    test        dl,dl
>005D4BFD    je          005D4C0B
 005D4BFF    cmp         byte ptr [eax+2BD],5
 005D4C06    setne       al
>005D4C09    jmp         005D4C0D
 005D4C0B    xor         eax,eax
 005D4C0D    test        al,al
>005D4C0F    je          005D4D2E
 005D4C15    call        StyleServices
 005D4C1A    lea         ecx,[ebp-68]
 005D4C1D    mov         dl,20
 005D4C1F    mov         edi,dword ptr [eax]
 005D4C21    call        dword ptr [edi+10C];TCustomStyleServices.GetElementDetails
 005D4C27    lea         eax,[ebp-30]
 005D4C2A    push        eax
 005D4C2B    lea         eax,[ebp-10]
 005D4C2E    push        eax
 005D4C2F    call        StyleServices
 005D4C34    lea         ecx,[ebp-68]
 005D4C37    xor         edx,edx
 005D4C39    call        TCustomStyleServices.GetElementContentRect
 005D4C3E    test        al,al
>005D4C40    jne         005D4C53
 005D4C42    push        0
 005D4C44    lea         eax,[ebp-10]
 005D4C47    push        eax
 005D4C48    xor         ecx,ecx
 005D4C4A    xor         edx,edx
 005D4C4C    xor         eax,eax
 005D4C4E    call        Rect
 005D4C53    push        esi
 005D4C54    lea         esi,[ebp-10]
 005D4C57    lea         edi,[ebp-78]
 005D4C5A    movs        dword ptr [edi],dword ptr [esi]
 005D4C5B    movs        dword ptr [edi],dword ptr [esi]
 005D4C5C    movs        dword ptr [edi],dword ptr [esi]
 005D4C5D    movs        dword ptr [edi],dword ptr [esi]
 005D4C5E    pop         esi
 005D4C5F    call        StyleServices
 005D4C64    lea         edx,[ebp-50]
 005D4C67    call        TCustomStyleServices.HasElementFixedPosition
 005D4C6C    test        al,al
>005D4C6E    jne         005D4C99
 005D4C70    push        ebp
 005D4C71    lea         eax,[ebp-10]
 005D4C74    call        005D467C
 005D4C79    pop         ecx
 005D4C7A    mov         eax,dword ptr [ebp-74]
 005D4C7D    sub         eax,dword ptr [ebp-0C]
 005D4C80    cdq
 005D4C81    xor         eax,edx
 005D4C83    sub         eax,edx
 005D4C85    mov         dword ptr [ebp-44],eax
 005D4C88    mov         eax,dword ptr [ebp-44]
 005D4C8B    cmp         eax,dword ptr [ebp-1C]
>005D4C8E    jle         005D4C9E
 005D4C90    mov         dword ptr [ebp-44],3
>005D4C97    jmp         005D4C9E
 005D4C99    xor         eax,eax
 005D4C9B    mov         dword ptr [ebp-44],eax
 005D4C9E    push        32
 005D4CA0    call        user32.GetSystemMetrics
 005D4CA5    push        eax
 005D4CA6    lea         eax,[ebp-78]
 005D4CA9    push        eax
 005D4CAA    push        31
 005D4CAC    call        user32.GetSystemMetrics
 005D4CB1    mov         ecx,eax
 005D4CB3    xor         edx,edx
 005D4CB5    xor         eax,eax
 005D4CB7    call        Rect
 005D4CBC    lea         ecx,[ebp-98]
 005D4CC2    lea         eax,[ebp-78]
 005D4CC5    lea         edx,[ebp-10]
 005D4CC8    call        005CFA1C
 005D4CCD    lea         eax,[ebp-10]
 005D4CD0    call        RectWidth
 005D4CD5    test        eax,eax
>005D4CD7    jle         005D4D0A
 005D4CD9    push        3
 005D4CDB    push        0
 005D4CDD    push        0
 005D4CDF    push        0
 005D4CE1    push        0
 005D4CE3    mov         eax,dword ptr [ebx]
 005D4CE5    call        005D4428
 005D4CEA    call        TIcon.GetHandle
 005D4CEF    push        eax
 005D4CF0    mov         eax,dword ptr [ebp-74]
 005D4CF3    push        eax
 005D4CF4    mov         eax,dword ptr [ebp-78]
 005D4CF7    push        eax
 005D4CF8    mov         eax,esi
 005D4CFA    call        TBitmap.GetCanvas
 005D4CFF    call        TCanvas.GetHandle
 005D4D04    push        eax
 005D4D05    call        user32.DrawIconEx
 005D4D0A    lea         eax,[ebp-10]
 005D4D0D    call        RectWidth
 005D4D12    add         eax,5
 005D4D15    add         dword ptr [ebp-88],eax
 005D4D1B    mov         eax,dword ptr [ebx]
 005D4D1D    push        esi
 005D4D1E    lea         edi,[eax+0CC];TFormStyleHook.FSysMenuButtonRect:TRect
 005D4D24    lea         esi,[ebp-10]
 005D4D27    movs        dword ptr [edi],dword ptr [esi]
 005D4D28    movs        dword ptr [edi],dword ptr [esi]
 005D4D29    movs        dword ptr [edi],dword ptr [esi]
 005D4D2A    movs        dword ptr [edi],dword ptr [esi]
 005D4D2B    pop         esi
>005D4D2C    jmp         005D4D37
 005D4D2E    mov         eax,dword ptr [ebp-20]
 005D4D31    add         dword ptr [ebp-88],eax
 005D4D37    mov         eax,dword ptr [ebx]
 005D4D39    mov         eax,dword ptr [eax+8];TFormStyleHook.FControl:TWinControl
 005D4D3C    test        byte ptr [eax+2BC],1
>005D4D43    je          005D4E84
 005D4D49    mov         eax,dword ptr [ebx]
 005D4D4B    mov         eax,dword ptr [eax+8];TFormStyleHook.FControl:TWinControl
 005D4D4E    cmp         byte ptr [eax+2BD],4
>005D4D55    je          005D4D68
 005D4D57    mov         eax,dword ptr [ebx]
 005D4D59    mov         eax,dword ptr [eax+8];TFormStyleHook.FControl:TWinControl
 005D4D5C    cmp         byte ptr [eax+2BD],5
 005D4D63    setne       al
>005D4D66    jmp         005D4D6A
 005D4D68    xor         eax,eax
 005D4D6A    test        al,al
>005D4D6C    je          005D4DA9
 005D4D6E    mov         eax,dword ptr [ebx]
 005D4D70    cmp         dword ptr [eax+0C0],14;TFormStyleHook.FPressedButton:Integer
>005D4D77    jne         005D4D87
 005D4D79    mov         eax,dword ptr [ebx]
 005D4D7B    cmp         dword ptr [eax+54],14;TFormStyleHook.FHotButton:Integer
>005D4D7F    jne         005D4D87
 005D4D81    mov         byte ptr [ebp-3E],36
>005D4D85    jmp         005D4DE2
 005D4D87    mov         eax,dword ptr [ebx]
 005D4D89    cmp         dword ptr [eax+54],14;TFormStyleHook.FHotButton:Integer
>005D4D8D    jne         005D4D95
 005D4D8F    mov         byte ptr [ebp-3E],35
>005D4D93    jmp         005D4DE2
 005D4D95    mov         eax,dword ptr [ebx]
 005D4D97    cmp         byte ptr [eax+50],0;TFormStyleHook.FFormActive:Boolean
>005D4D9B    je          005D4DA3
 005D4D9D    mov         byte ptr [ebp-3E],34
>005D4DA1    jmp         005D4DE2
 005D4DA3    mov         byte ptr [ebp-3E],37
>005D4DA7    jmp         005D4DE2
 005D4DA9    mov         eax,dword ptr [ebx]
 005D4DAB    cmp         dword ptr [eax+0C0],14;TFormStyleHook.FPressedButton:Integer
>005D4DB2    jne         005D4DC2
 005D4DB4    mov         eax,dword ptr [ebx]
 005D4DB6    cmp         dword ptr [eax+54],14;TFormStyleHook.FHotButton:Integer
>005D4DBA    jne         005D4DC2
 005D4DBC    mov         byte ptr [ebp-3E],3A
>005D4DC0    jmp         005D4DE2
 005D4DC2    mov         eax,dword ptr [ebx]
 005D4DC4    cmp         dword ptr [eax+54],14;TFormStyleHook.FHotButton:Integer
>005D4DC8    jne         005D4DD0
 005D4DCA    mov         byte ptr [ebp-3E],39
>005D4DCE    jmp         005D4DE2
 005D4DD0    mov         eax,dword ptr [ebx]
 005D4DD2    cmp         byte ptr [eax+50],0;TFormStyleHook.FFormActive:Boolean
>005D4DD6    je          005D4DDE
 005D4DD8    mov         byte ptr [ebp-3E],38
>005D4DDC    jmp         005D4DE2
 005D4DDE    mov         byte ptr [ebp-3E],3B
 005D4DE2    call        StyleServices
 005D4DE7    movzx       edx,byte ptr [ebp-3E]
 005D4DEB    lea         ecx,[ebp-50]
 005D4DEE    mov         edi,dword ptr [eax]
 005D4DF0    call        dword ptr [edi+10C];TCustomStyleServices.GetElementDetails
 005D4DF6    lea         eax,[ebp-30]
 005D4DF9    push        eax
 005D4DFA    lea         eax,[ebp-10]
 005D4DFD    push        eax
 005D4DFE    call        StyleServices
 005D4E03    lea         ecx,[ebp-50]
 005D4E06    xor         edx,edx
 005D4E08    call        TCustomStyleServices.GetElementContentRect
 005D4E0D    test        al,al
>005D4E0F    jne         005D4E22
 005D4E11    push        0
 005D4E13    lea         eax,[ebp-10]
 005D4E16    push        eax
 005D4E17    xor         ecx,ecx
 005D4E19    xor         edx,edx
 005D4E1B    xor         eax,eax
 005D4E1D    call        Rect
 005D4E22    call        StyleServices
 005D4E27    lea         edx,[ebp-50]
 005D4E2A    call        TCustomStyleServices.HasElementFixedPosition
 005D4E2F    test        al,al
>005D4E31    jne         005D4E3D
 005D4E33    push        ebp
 005D4E34    lea         eax,[ebp-10]
 005D4E37    call        005D45E0
 005D4E3C    pop         ecx
 005D4E3D    lea         eax,[ebp-10]
 005D4E40    call        RectWidth
 005D4E45    test        eax,eax
>005D4E47    jle         005D4E6A
 005D4E49    lea         eax,[ebp-10]
 005D4E4C    push        eax
 005D4E4D    push        0
 005D4E4F    mov         eax,esi
 005D4E51    call        TBitmap.GetCanvas
 005D4E56    call        TCanvas.GetHandle
 005D4E5B    push        eax
 005D4E5C    call        StyleServices
 005D4E61    lea         ecx,[ebp-50]
 005D4E64    pop         edx
 005D4E65    call        TCustomStyleServices.DrawElement
 005D4E6A    cmp         dword ptr [ebp-10],0
>005D4E6E    jle         005D4E76
 005D4E70    mov         eax,dword ptr [ebp-10]
 005D4E73    mov         dword ptr [ebp-80],eax
 005D4E76    mov         eax,dword ptr [ebx]
 005D4E78    push        esi
 005D4E79    lea         edi,[eax+40];TFormStyleHook.FCloseButtonRect:TRect
 005D4E7C    lea         esi,[ebp-10]
 005D4E7F    movs        dword ptr [edi],dword ptr [esi]
 005D4E80    movs        dword ptr [edi],dword ptr [esi]
 005D4E81    movs        dword ptr [edi],dword ptr [esi]
 005D4E82    movs        dword ptr [edi],dword ptr [esi]
 005D4E83    pop         esi
 005D4E84    mov         eax,dword ptr [ebx]
 005D4E86    mov         eax,dword ptr [eax+8];TFormStyleHook.FControl:TWinControl
 005D4E89    test        byte ptr [eax+2BC],4
>005D4E90    je          005D4EA3
 005D4E92    mov         edx,dword ptr [ebx]
 005D4E94    mov         edx,dword ptr [edx+8];TFormStyleHook.FControl:TWinControl
 005D4E97    test        byte ptr [edx+2BC],1
 005D4E9E    setne       dl
>005D4EA1    jmp         005D4EA5
 005D4EA3    xor         edx,edx
 005D4EA5    test        dl,dl
>005D4EA7    je          005D4EB5
 005D4EA9    cmp         byte ptr [eax+2BD],3
 005D4EB0    setne       dl
>005D4EB3    jmp         005D4EB7
 005D4EB5    xor         edx,edx
 005D4EB7    test        dl,dl
>005D4EB9    je          005D4EC7
 005D4EBB    cmp         byte ptr [eax+2BD],4
 005D4EC2    setne       dl
>005D4EC5    jmp         005D4EC9
 005D4EC7    xor         edx,edx
 005D4EC9    test        dl,dl
>005D4ECB    je          005D4FFD
 005D4ED1    cmp         byte ptr [eax+2BD],5
>005D4ED8    je          005D4FFD
 005D4EDE    cmp         byte ptr [eax+2BE],2
>005D4EE5    jne         005D4F22
 005D4EE7    mov         eax,dword ptr [ebx]
 005D4EE9    cmp         dword ptr [eax+0C0],9;TFormStyleHook.FPressedButton:Integer
>005D4EF0    jne         005D4F00
 005D4EF2    mov         eax,dword ptr [ebx]
 005D4EF4    cmp         dword ptr [eax+54],9;TFormStyleHook.FHotButton:Integer
>005D4EF8    jne         005D4F00
 005D4EFA    mov         byte ptr [ebp-3E],42
>005D4EFE    jmp         005D4F5B
 005D4F00    mov         eax,dword ptr [ebx]
 005D4F02    cmp         dword ptr [eax+54],9;TFormStyleHook.FHotButton:Integer
>005D4F06    jne         005D4F0E
 005D4F08    mov         byte ptr [ebp-3E],41
>005D4F0C    jmp         005D4F5B
 005D4F0E    mov         eax,dword ptr [ebx]
 005D4F10    cmp         byte ptr [eax+50],0;TFormStyleHook.FFormActive:Boolean
>005D4F14    je          005D4F1C
 005D4F16    mov         byte ptr [ebp-3E],40
>005D4F1A    jmp         005D4F5B
 005D4F1C    mov         byte ptr [ebp-3E],43
>005D4F20    jmp         005D4F5B
 005D4F22    mov         eax,dword ptr [ebx]
 005D4F24    cmp         dword ptr [eax+0C0],9;TFormStyleHook.FPressedButton:Integer
>005D4F2B    jne         005D4F3B
 005D4F2D    mov         eax,dword ptr [ebx]
 005D4F2F    cmp         dword ptr [eax+54],9;TFormStyleHook.FHotButton:Integer
>005D4F33    jne         005D4F3B
 005D4F35    mov         byte ptr [ebp-3E],32
>005D4F39    jmp         005D4F5B
 005D4F3B    mov         eax,dword ptr [ebx]
 005D4F3D    cmp         dword ptr [eax+54],9;TFormStyleHook.FHotButton:Integer
>005D4F41    jne         005D4F49
 005D4F43    mov         byte ptr [ebp-3E],31
>005D4F47    jmp         005D4F5B
 005D4F49    mov         eax,dword ptr [ebx]
 005D4F4B    cmp         byte ptr [eax+50],0;TFormStyleHook.FFormActive:Boolean
>005D4F4F    je          005D4F57
 005D4F51    mov         byte ptr [ebp-3E],30
>005D4F55    jmp         005D4F5B
 005D4F57    mov         byte ptr [ebp-3E],33
 005D4F5B    call        StyleServices
 005D4F60    movzx       edx,byte ptr [ebp-3E]
 005D4F64    lea         ecx,[ebp-50]
 005D4F67    mov         edi,dword ptr [eax]
 005D4F69    call        dword ptr [edi+10C];TCustomStyleServices.GetElementDetails
 005D4F6F    lea         eax,[ebp-30]
 005D4F72    push        eax
 005D4F73    lea         eax,[ebp-10]
 005D4F76    push        eax
 005D4F77    call        StyleServices
 005D4F7C    lea         ecx,[ebp-50]
 005D4F7F    xor         edx,edx
 005D4F81    call        TCustomStyleServices.GetElementContentRect
 005D4F86    test        al,al
>005D4F88    jne         005D4F9B
 005D4F8A    push        0
 005D4F8C    lea         eax,[ebp-10]
 005D4F8F    push        eax
 005D4F90    xor         ecx,ecx
 005D4F92    xor         edx,edx
 005D4F94    xor         eax,eax
 005D4F96    call        Rect
 005D4F9B    call        StyleServices
 005D4FA0    lea         edx,[ebp-50]
 005D4FA3    call        TCustomStyleServices.HasElementFixedPosition
 005D4FA8    test        al,al
>005D4FAA    jne         005D4FB6
 005D4FAC    push        ebp
 005D4FAD    lea         eax,[ebp-10]
 005D4FB0    call        005D45E0
 005D4FB5    pop         ecx
 005D4FB6    lea         eax,[ebp-10]
 005D4FB9    call        RectWidth
 005D4FBE    test        eax,eax
>005D4FC0    jle         005D4FE3
 005D4FC2    lea         eax,[ebp-10]
 005D4FC5    push        eax
 005D4FC6    push        0
 005D4FC8    mov         eax,esi
 005D4FCA    call        TBitmap.GetCanvas
 005D4FCF    call        TCanvas.GetHandle
 005D4FD4    push        eax
 005D4FD5    call        StyleServices
 005D4FDA    lea         ecx,[ebp-50]
 005D4FDD    pop         edx
 005D4FDE    call        TCustomStyleServices.DrawElement
 005D4FE3    cmp         dword ptr [ebp-10],0
>005D4FE7    jle         005D4FEF
 005D4FE9    mov         eax,dword ptr [ebp-10]
 005D4FEC    mov         dword ptr [ebp-80],eax
 005D4FEF    mov         eax,dword ptr [ebx]
 005D4FF1    push        esi
 005D4FF2    lea         edi,[eax+78];TFormStyleHook.FMaxButtonRect:TRect
 005D4FF5    lea         esi,[ebp-10]
 005D4FF8    movs        dword ptr [edi],dword ptr [esi]
 005D4FF9    movs        dword ptr [edi],dword ptr [esi]
 005D4FFA    movs        dword ptr [edi],dword ptr [esi]
 005D4FFB    movs        dword ptr [edi],dword ptr [esi]
 005D4FFC    pop         esi
 005D4FFD    mov         eax,dword ptr [ebx]
 005D4FFF    mov         eax,dword ptr [eax+8];TFormStyleHook.FControl:TWinControl
 005D5002    test        byte ptr [eax+2BC],2
>005D5009    je          005D501C
 005D500B    mov         edx,dword ptr [ebx]
 005D500D    mov         edx,dword ptr [edx+8];TFormStyleHook.FControl:TWinControl
 005D5010    test        byte ptr [edx+2BC],1
 005D5017    setne       dl
>005D501A    jmp         005D501E
 005D501C    xor         edx,edx
 005D501E    test        dl,dl
>005D5020    je          005D502E
 005D5022    cmp         byte ptr [eax+2BD],3
 005D5029    setne       dl
>005D502C    jmp         005D5030
 005D502E    xor         edx,edx
 005D5030    test        dl,dl
>005D5032    je          005D5040
 005D5034    cmp         byte ptr [eax+2BD],4
 005D503B    setne       dl
>005D503E    jmp         005D5042
 005D5040    xor         edx,edx
 005D5042    test        dl,dl
>005D5044    je          005D5135
 005D504A    cmp         byte ptr [eax+2BD],5
>005D5051    je          005D5135
 005D5057    mov         eax,dword ptr [ebx]
 005D5059    cmp         dword ptr [eax+0C0],8;TFormStyleHook.FPressedButton:Integer
>005D5060    jne         005D5070
 005D5062    mov         eax,dword ptr [ebx]
 005D5064    cmp         dword ptr [eax+54],8;TFormStyleHook.FHotButton:Integer
>005D5068    jne         005D5070
 005D506A    mov         byte ptr [ebp-3E],2A
>005D506E    jmp         005D5090
 005D5070    mov         eax,dword ptr [ebx]
 005D5072    cmp         dword ptr [eax+54],8;TFormStyleHook.FHotButton:Integer
>005D5076    jne         005D507E
 005D5078    mov         byte ptr [ebp-3E],29
>005D507C    jmp         005D5090
 005D507E    mov         eax,dword ptr [ebx]
 005D5080    cmp         byte ptr [eax+50],0;TFormStyleHook.FFormActive:Boolean
>005D5084    je          005D508C
 005D5086    mov         byte ptr [ebp-3E],28
>005D508A    jmp         005D5090
 005D508C    mov         byte ptr [ebp-3E],2B
 005D5090    call        StyleServices
 005D5095    movzx       edx,byte ptr [ebp-3E]
 005D5099    lea         ecx,[ebp-50]
 005D509C    mov         edi,dword ptr [eax]
 005D509E    call        dword ptr [edi+10C];TCustomStyleServices.GetElementDetails
 005D50A4    lea         eax,[ebp-30]
 005D50A7    push        eax
 005D50A8    lea         eax,[ebp-10]
 005D50AB    push        eax
 005D50AC    call        StyleServices
 005D50B1    lea         ecx,[ebp-50]
 005D50B4    xor         edx,edx
 005D50B6    call        TCustomStyleServices.GetElementContentRect
 005D50BB    test        al,al
>005D50BD    jne         005D50D0
 005D50BF    push        0
 005D50C1    lea         eax,[ebp-10]
 005D50C4    push        eax
 005D50C5    xor         ecx,ecx
 005D50C7    xor         edx,edx
 005D50C9    xor         eax,eax
 005D50CB    call        Rect
 005D50D0    call        StyleServices
 005D50D5    lea         edx,[ebp-50]
 005D50D8    call        TCustomStyleServices.HasElementFixedPosition
 005D50DD    test        al,al
>005D50DF    jne         005D50EB
 005D50E1    push        ebp
 005D50E2    lea         eax,[ebp-10]
 005D50E5    call        005D45E0
 005D50EA    pop         ecx
 005D50EB    lea         eax,[ebp-10]
 005D50EE    call        RectWidth
 005D50F3    test        eax,eax
>005D50F5    jle         005D5118
 005D50F7    lea         eax,[ebp-10]
 005D50FA    push        eax
 005D50FB    push        0
 005D50FD    mov         eax,esi
 005D50FF    call        TBitmap.GetCanvas
 005D5104    call        TCanvas.GetHandle
 005D5109    push        eax
 005D510A    call        StyleServices
 005D510F    lea         ecx,[ebp-50]
 005D5112    pop         edx
 005D5113    call        TCustomStyleServices.DrawElement
 005D5118    cmp         dword ptr [ebp-10],0
>005D511C    jle         005D5124
 005D511E    mov         eax,dword ptr [ebp-10]
 005D5121    mov         dword ptr [ebp-80],eax
 005D5124    mov         eax,dword ptr [ebx]
 005D5126    push        esi
 005D5127    lea         edi,[eax+0A0];TFormStyleHook.FMinButtonRect:TRect
 005D512D    lea         esi,[ebp-10]
 005D5130    movs        dword ptr [edi],dword ptr [esi]
 005D5131    movs        dword ptr [edi],dword ptr [esi]
 005D5132    movs        dword ptr [edi],dword ptr [esi]
 005D5133    movs        dword ptr [edi],dword ptr [esi]
 005D5134    pop         esi
 005D5135    mov         eax,dword ptr [ebx]
 005D5137    mov         eax,dword ptr [eax+8];TFormStyleHook.FControl:TWinControl
 005D513A    test        byte ptr [eax+2BC],8
>005D5141    je          005D5154
 005D5143    mov         eax,dword ptr [ebx]
 005D5145    mov         eax,dword ptr [eax+8];TFormStyleHook.FControl:TWinControl
 005D5148    test        byte ptr [eax+2BC],1
 005D514F    setne       al
>005D5152    jmp         005D5156
 005D5154    xor         eax,eax
 005D5156    test        al,al
>005D5158    je          005D527B
 005D515E    mov         eax,dword ptr [ebx]
 005D5160    mov         eax,dword ptr [eax+8];TFormStyleHook.FControl:TWinControl
 005D5163    test        byte ptr [eax+2BC],4
>005D516A    jne         005D517F
 005D516C    mov         eax,dword ptr [ebx]
 005D516E    mov         eax,dword ptr [eax+8];TFormStyleHook.FControl:TWinControl
 005D5171    test        byte ptr [eax+2BC],2
 005D5178    setne       al
 005D517B    xor         al,1
>005D517D    jmp         005D5181
 005D517F    xor         eax,eax
 005D5181    test        al,al
>005D5183    je          005D5189
 005D5185    mov         al,1
>005D5187    jmp         005D5198
 005D5189    mov         eax,dword ptr [ebx]
 005D518B    mov         eax,dword ptr [eax+8];TFormStyleHook.FControl:TWinControl
 005D518E    cmp         byte ptr [eax+2BD],3
 005D5195    sete        al
 005D5198    test        al,al
>005D519A    je          005D527B
 005D51A0    mov         eax,dword ptr [ebx]
 005D51A2    cmp         dword ptr [eax+0C0],15;TFormStyleHook.FPressedButton:Integer
>005D51A9    jne         005D51B9
 005D51AB    mov         eax,dword ptr [ebx]
 005D51AD    cmp         dword ptr [eax+54],15;TFormStyleHook.FHotButton:Integer
>005D51B1    jne         005D51B9
 005D51B3    mov         byte ptr [ebp-3E],4A
>005D51B7    jmp         005D51D9
 005D51B9    mov         eax,dword ptr [ebx]
 005D51BB    cmp         dword ptr [eax+54],15;TFormStyleHook.FHotButton:Integer
>005D51BF    jne         005D51C7
 005D51C1    mov         byte ptr [ebp-3E],49
>005D51C5    jmp         005D51D9
 005D51C7    mov         eax,dword ptr [ebx]
 005D51C9    cmp         byte ptr [eax+50],0;TFormStyleHook.FFormActive:Boolean
>005D51CD    je          005D51D5
 005D51CF    mov         byte ptr [ebp-3E],48
>005D51D3    jmp         005D51D9
 005D51D5    mov         byte ptr [ebp-3E],4B
 005D51D9    call        StyleServices
 005D51DE    movzx       edx,byte ptr [ebp-3E]
 005D51E2    lea         ecx,[ebp-50]
 005D51E5    mov         edi,dword ptr [eax]
 005D51E7    call        dword ptr [edi+10C];TCustomStyleServices.GetElementDetails
 005D51ED    lea         eax,[ebp-30]
 005D51F0    push        eax
 005D51F1    lea         eax,[ebp-10]
 005D51F4    push        eax
 005D51F5    call        StyleServices
 005D51FA    lea         ecx,[ebp-50]
 005D51FD    xor         edx,edx
 005D51FF    call        TCustomStyleServices.GetElementContentRect
 005D5204    test        al,al
>005D5206    jne         005D5219
 005D5208    push        0
 005D520A    lea         eax,[ebp-10]
 005D520D    push        eax
 005D520E    xor         ecx,ecx
 005D5210    xor         edx,edx
 005D5212    xor         eax,eax
 005D5214    call        Rect
 005D5219    call        StyleServices
 005D521E    lea         edx,[ebp-50]
 005D5221    call        TCustomStyleServices.HasElementFixedPosition
 005D5226    test        al,al
>005D5228    jne         005D5234
 005D522A    push        ebp
 005D522B    lea         eax,[ebp-10]
 005D522E    call        005D45E0
 005D5233    pop         ecx
 005D5234    lea         eax,[ebp-10]
 005D5237    call        RectWidth
 005D523C    test        eax,eax
>005D523E    jle         005D5261
 005D5240    lea         eax,[ebp-10]
 005D5243    push        eax
 005D5244    push        0
 005D5246    mov         eax,esi
 005D5248    call        TBitmap.GetCanvas
 005D524D    call        TCanvas.GetHandle
 005D5252    push        eax
 005D5253    call        StyleServices
 005D5258    lea         ecx,[ebp-50]
 005D525B    pop         edx
 005D525C    call        TCustomStyleServices.DrawElement
 005D5261    cmp         dword ptr [ebp-10],0
>005D5265    jle         005D526D
 005D5267    mov         eax,dword ptr [ebp-10]
 005D526A    mov         dword ptr [ebp-80],eax
 005D526D    mov         eax,dword ptr [ebx]
 005D526F    push        esi
 005D5270    lea         edi,[eax+5C];TFormStyleHook.FHelpButtonRect:TRect
 005D5273    lea         esi,[ebp-10]
 005D5276    movs        dword ptr [edi],dword ptr [esi]
 005D5277    movs        dword ptr [edi],dword ptr [esi]
 005D5278    movs        dword ptr [edi],dword ptr [esi]
 005D5279    movs        dword ptr [edi],dword ptr [esi]
 005D527A    pop         esi
 005D527B    mov         edi,dword ptr ds:[5D561C];0x14100 gvar_005D561C
 005D5281    mov         eax,dword ptr [ebx]
 005D5283    mov         eax,dword ptr [eax+8];TFormStyleHook.FControl:TWinControl
 005D5286    call        TControl.UseRightToLeftReading
 005D528B    test        al,al
>005D528D    je          005D5295
 005D528F    or          edi,2000
 005D5295    lea         edx,[ebp-3C]
 005D5298    mov         eax,dword ptr [ebx]
 005D529A    call        TStyleHook.GetText
 005D529F    mov         eax,dword ptr [ebx]
 005D52A1    mov         eax,dword ptr [eax+8];TFormStyleHook.FControl:TWinControl
 005D52A4    cmp         byte ptr [eax+2BE],2
>005D52AB    jne         005D52BE
 005D52AD    mov         eax,dword ptr [ebx]
 005D52AF    mov         eax,dword ptr [eax+8];TFormStyleHook.FControl:TWinControl
 005D52B2    cmp         byte ptr [eax+2C2],1
 005D52B9    setne       al
>005D52BC    jmp         005D52C0
 005D52BE    xor         eax,eax
 005D52C0    test        al,al
>005D52C2    je          005D52CD
 005D52C4    cmp         dword ptr [ebp-44],0
 005D52C8    setne       al
>005D52CB    jmp         005D52CF
 005D52CD    xor         eax,eax
 005D52CF    test        al,al
>005D52D1    je          005D52E4
 005D52D3    mov         eax,dword ptr [ebx]
 005D52D5    mov         eax,dword ptr [eax+8];TFormStyleHook.FControl:TWinControl
 005D52D8    test        byte ptr [eax+2BC],1
 005D52DF    setne       al
>005D52E2    jmp         005D52E6
 005D52E4    xor         eax,eax
 005D52E6    test        al,al
>005D52E8    je          005D534F
 005D52EA    mov         eax,dword ptr [ebp-20]
 005D52ED    add         dword ptr [ebp-88],eax
 005D52F3    mov         eax,esi
 005D52F5    call        TBitmap.GetCanvas
 005D52FA    call        TCanvas.GetHandle
 005D52FF    mov         ecx,dword ptr [ebp-44]
 005D5302    xor         edx,edx
 005D5304    call        MoveWindowOrg
 005D5309    mov         eax,dword ptr [ebp-3C]
 005D530C    push        eax
 005D530D    lea         eax,[ebp-88]
 005D5313    push        eax
 005D5314    push        edi
 005D5315    push        1FFFFFFF
 005D531A    mov         eax,esi
 005D531C    call        TBitmap.GetCanvas
 005D5321    call        TCanvas.GetHandle
 005D5326    push        eax
 005D5327    call        StyleServices
 005D532C    lea         ecx,[ebp-5C]
 005D532F    pop         edx
 005D5330    call        TCustomStyleServices.DrawText
 005D5335    mov         eax,esi
 005D5337    call        TBitmap.GetCanvas
 005D533C    call        TCanvas.GetHandle
 005D5341    mov         ecx,dword ptr [ebp-44]
 005D5344    neg         ecx
 005D5346    xor         edx,edx
 005D5348    call        MoveWindowOrg
>005D534D    jmp         005D537B
 005D534F    mov         eax,dword ptr [ebp-3C]
 005D5352    push        eax
 005D5353    lea         eax,[ebp-88]
 005D5359    push        eax
 005D535A    push        edi
 005D535B    push        1FFFFFFF
 005D5360    mov         eax,esi
 005D5362    call        TBitmap.GetCanvas
 005D5367    call        TCanvas.GetHandle
 005D536C    push        eax
 005D536D    call        StyleServices
 005D5372    lea         ecx,[ebp-5C]
 005D5375    pop         edx
 005D5376    call        TCustomStyleServices.DrawText
 005D537B    mov         eax,dword ptr [ebx]
 005D537D    push        esi
 005D537E    lea         edi,[eax+28];TFormStyleHook.FCaptionRect:TRect
 005D5381    lea         esi,[ebp-88]
 005D5387    movs        dword ptr [edi],dword ptr [esi]
 005D5388    movs        dword ptr [edi],dword ptr [esi]
 005D5389    movs        dword ptr [edi],dword ptr [esi]
 005D538A    movs        dword ptr [edi],dword ptr [esi]
 005D538B    pop         esi
 005D538C    push        esi
 005D538D    xor         ecx,ecx
 005D538F    xor         edx,edx
 005D5391    mov         eax,dword ptr [ebp-38]
 005D5394    mov         edi,dword ptr [eax]
 005D5396    call        dword ptr [edi+44]
 005D5399    mov         eax,esi
 005D539B    call        TObject.Free
 005D53A0    mov         eax,dword ptr [ebx]
 005D53A2    mov         esi,dword ptr [eax+74];TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D53A5    test        esi,esi
>005D53A7    je          005D53E9
 005D53A9    mov         eax,dword ptr [esi+10]
 005D53AC    mov         edx,dword ptr [ebx]
 005D53AE    mov         edx,dword ptr [edx+0E0];TFormStyleHook.FWidth:Integer
 005D53B4    sub         edx,dword ptr [ebp-18]
 005D53B7    cmp         eax,edx
>005D53B9    jge         005D53E9
 005D53BB    mov         eax,dword ptr [esi+14]
 005D53BE    push        eax
 005D53BF    lea         eax,[ebp-98]
 005D53C5    push        eax
 005D53C6    mov         eax,dword ptr [ebx]
 005D53C8    mov         ecx,dword ptr [eax+0E0];TFormStyleHook.FWidth:Integer
 005D53CE    sub         ecx,dword ptr [ebp-18]
 005D53D1    mov         edx,dword ptr [esi+0C]
 005D53D4    mov         eax,dword ptr [esi+8]
 005D53D7    call        Rect
 005D53DC    lea         edx,[ebp-98]
 005D53E2    mov         eax,esi
 005D53E4    call        005D2280
 005D53E9    mov         eax,dword ptr [ebx]
 005D53EB    cmp         dword ptr [eax+74],0;TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
>005D53EF    je          005D53FE
 005D53F1    mov         eax,dword ptr [ebx]
 005D53F3    mov         eax,dword ptr [eax+74];TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D53F6    mov         edx,dword ptr [ebp-38]
 005D53F9    call        TFormStyleHook.TMainMenuBarStyleHook.Paint
 005D53FE    mov         eax,dword ptr [ebx]
 005D5400    mov         eax,dword ptr [eax+8];TFormStyleHook.FControl:TWinControl
 005D5403    cmp         byte ptr [eax+2BD],4
>005D540A    je          005D541D
 005D540C    mov         eax,dword ptr [ebx]
 005D540E    mov         eax,dword ptr [eax+8];TFormStyleHook.FControl:TWinControl
 005D5411    cmp         byte ptr [eax+2BD],5
 005D5418    setne       al
>005D541B    jmp         005D541F
 005D541D    xor         eax,eax
 005D541F    test        al,al
>005D5421    je          005D5437
 005D5423    mov         eax,dword ptr [ebx]
 005D5425    cmp         byte ptr [eax+50],0;TFormStyleHook.FFormActive:Boolean
>005D5429    je          005D5431
 005D542B    mov         byte ptr [ebp-3D],14
>005D542F    jmp         005D5449
 005D5431    mov         byte ptr [ebp-3D],15
>005D5435    jmp         005D5449
 005D5437    mov         eax,dword ptr [ebx]
 005D5439    cmp         byte ptr [eax+50],0;TFormStyleHook.FFormActive:Boolean
>005D543D    je          005D5445
 005D543F    mov         byte ptr [ebp-3D],1A
>005D5443    jmp         005D5449
 005D5445    mov         byte ptr [ebp-3D],1B
 005D5449    mov         eax,dword ptr [ebx]
 005D544B    mov         eax,dword ptr [eax+58];TFormStyleHook.FHeight:Integer
 005D544E    sub         eax,dword ptr [ebp-14]
 005D5451    push        eax
 005D5452    lea         eax,[ebp-30]
 005D5455    push        eax
 005D5456    mov         ecx,dword ptr [ebp-20]
 005D5459    mov         edx,dword ptr [ebp-1C]
 005D545C    xor         eax,eax
 005D545E    call        Rect
 005D5463    call        StyleServices
 005D5468    movzx       edx,byte ptr [ebp-3D]
 005D546C    lea         ecx,[ebp-50]
 005D546F    mov         esi,dword ptr [eax]
 005D5471    call        dword ptr [esi+10C];TCustomStyleServices.GetElementDetails
 005D5477    mov         eax,dword ptr [ebp-24]
 005D547A    sub         eax,dword ptr [ebp-2C]
 005D547D    test        eax,eax
>005D547F    jle         005D549E
 005D5481    lea         eax,[ebp-30]
 005D5484    push        eax
 005D5485    push        0
 005D5487    mov         eax,dword ptr [ebp-38]
 005D548A    call        TCanvas.GetHandle
 005D548F    push        eax
 005D5490    call        StyleServices
 005D5495    lea         ecx,[ebp-50]
 005D5498    pop         edx
 005D5499    call        TCustomStyleServices.DrawElement
 005D549E    mov         eax,dword ptr [ebx]
 005D54A0    mov         eax,dword ptr [eax+8];TFormStyleHook.FControl:TWinControl
 005D54A3    cmp         byte ptr [eax+2BD],4
>005D54AA    je          005D54BD
 005D54AC    mov         eax,dword ptr [ebx]
 005D54AE    mov         eax,dword ptr [eax+8];TFormStyleHook.FControl:TWinControl
 005D54B1    cmp         byte ptr [eax+2BD],5
 005D54B8    setne       al
>005D54BB    jmp         005D54BF
 005D54BD    xor         eax,eax
 005D54BF    test        al,al
>005D54C1    je          005D54D7
 005D54C3    mov         eax,dword ptr [ebx]
 005D54C5    cmp         byte ptr [eax+50],0;TFormStyleHook.FFormActive:Boolean
>005D54C9    je          005D54D1
 005D54CB    mov         byte ptr [ebp-3D],16
>005D54CF    jmp         005D54E9
 005D54D1    mov         byte ptr [ebp-3D],17
>005D54D5    jmp         005D54E9
 005D54D7    mov         eax,dword ptr [ebx]
 005D54D9    cmp         byte ptr [eax+50],0;TFormStyleHook.FFormActive:Boolean
>005D54DD    je          005D54E5
 005D54DF    mov         byte ptr [ebp-3D],1C
>005D54E3    jmp         005D54E9
 005D54E5    mov         byte ptr [ebp-3D],1D
 005D54E9    mov         eax,dword ptr [ebx]
 005D54EB    mov         eax,dword ptr [eax+58];TFormStyleHook.FHeight:Integer
 005D54EE    sub         eax,dword ptr [ebp-14]
 005D54F1    push        eax
 005D54F2    lea         eax,[ebp-30]
 005D54F5    push        eax
 005D54F6    mov         eax,dword ptr [ebx]
 005D54F8    mov         esi,dword ptr [eax+0E0];TFormStyleHook.FWidth:Integer
 005D54FE    mov         ecx,esi
 005D5500    mov         eax,esi
 005D5502    sub         eax,dword ptr [ebp-18]
 005D5505    mov         edx,dword ptr [ebp-1C]
 005D5508    call        Rect
 005D550D    call        StyleServices
 005D5512    movzx       edx,byte ptr [ebp-3D]
 005D5516    lea         ecx,[ebp-50]
 005D5519    mov         esi,dword ptr [eax]
 005D551B    call        dword ptr [esi+10C];TCustomStyleServices.GetElementDetails
 005D5521    mov         eax,dword ptr [ebp-24]
 005D5524    sub         eax,dword ptr [ebp-2C]
 005D5527    test        eax,eax
>005D5529    jle         005D5548
 005D552B    lea         eax,[ebp-30]
 005D552E    push        eax
 005D552F    push        0
 005D5531    mov         eax,dword ptr [ebp-38]
 005D5534    call        TCanvas.GetHandle
 005D5539    push        eax
 005D553A    call        StyleServices
 005D553F    lea         ecx,[ebp-50]
 005D5542    pop         edx
 005D5543    call        TCustomStyleServices.DrawElement
 005D5548    mov         eax,dword ptr [ebx]
 005D554A    mov         eax,dword ptr [eax+8];TFormStyleHook.FControl:TWinControl
 005D554D    cmp         byte ptr [eax+2BD],4
>005D5554    je          005D5567
 005D5556    mov         eax,dword ptr [ebx]
 005D5558    mov         eax,dword ptr [eax+8];TFormStyleHook.FControl:TWinControl
 005D555B    cmp         byte ptr [eax+2BD],5
 005D5562    setne       al
>005D5565    jmp         005D5569
 005D5567    xor         eax,eax
 005D5569    test        al,al
>005D556B    je          005D5581
 005D556D    mov         eax,dword ptr [ebx]
 005D556F    cmp         byte ptr [eax+50],0;TFormStyleHook.FFormActive:Boolean
>005D5573    je          005D557B
 005D5575    mov         byte ptr [ebp-3D],18
>005D5579    jmp         005D5593
 005D557B    mov         byte ptr [ebp-3D],19
>005D557F    jmp         005D5593
 005D5581    mov         eax,dword ptr [ebx]
 005D5583    cmp         byte ptr [eax+50],0;TFormStyleHook.FFormActive:Boolean
>005D5587    je          005D558F
 005D5589    mov         byte ptr [ebp-3D],1E
>005D558D    jmp         005D5593
 005D558F    mov         byte ptr [ebp-3D],1F
 005D5593    mov         eax,dword ptr [ebx]
 005D5595    mov         eax,dword ptr [eax+58];TFormStyleHook.FHeight:Integer
 005D5598    push        eax
 005D5599    lea         eax,[ebp-30]
 005D559C    push        eax
 005D559D    mov         eax,dword ptr [ebx]
 005D559F    mov         ecx,dword ptr [eax+0E0];TFormStyleHook.FWidth:Integer
 005D55A5    mov         eax,dword ptr [ebx]
 005D55A7    mov         edx,dword ptr [eax+58];TFormStyleHook.FHeight:Integer
 005D55AA    sub         edx,dword ptr [ebp-14]
 005D55AD    xor         eax,eax
 005D55AF    call        Rect
 005D55B4    call        StyleServices
 005D55B9    movzx       edx,byte ptr [ebp-3D]
 005D55BD    lea         ecx,[ebp-50]
 005D55C0    mov         ebx,dword ptr [eax]
 005D55C2    call        dword ptr [ebx+10C];TCustomStyleServices.GetElementDetails
 005D55C8    mov         eax,dword ptr [ebp-24]
 005D55CB    sub         eax,dword ptr [ebp-2C]
 005D55CE    test        eax,eax
>005D55D0    jle         005D55EF
 005D55D2    lea         eax,[ebp-30]
 005D55D5    push        eax
 005D55D6    push        0
 005D55D8    mov         eax,dword ptr [ebp-38]
 005D55DB    call        TCanvas.GetHandle
 005D55E0    push        eax
 005D55E1    call        StyleServices
 005D55E6    lea         ecx,[ebp-50]
 005D55E9    pop         edx
 005D55EA    call        TCustomStyleServices.DrawElement
 005D55EF    push        ebp
 005D55F0    call        005D4754
 005D55F5    pop         ecx
 005D55F6    xor         eax,eax
 005D55F8    pop         edx
 005D55F9    pop         ecx
 005D55FA    pop         ecx
 005D55FB    mov         dword ptr fs:[eax],edx
 005D55FE    push        5D5613
 005D5603    lea         eax,[ebp-3C]
 005D5606    call        @UStrClr
 005D560B    ret
>005D560C    jmp         @HandleFinally
>005D5611    jmp         005D5603
 005D5613    pop         edi
 005D5614    pop         esi
 005D5615    pop         ebx
 005D5616    mov         esp,ebp
 005D5618    pop         ebp
 005D5619    ret
end;*}

//005D5620
{*procedure TFormStyleHook.WMNCActivate(?:?);
begin
 005D5620    push        ebx
 005D5621    push        esi
 005D5622    mov         esi,edx
 005D5624    mov         ebx,eax
 005D5626    mov         eax,ebx
 005D5628    call        005D2AFC
 005D562D    test        al,al
>005D562F    jne         005D5638
 005D5631    mov         byte ptr [ebx+14],0;TFormStyleHook.FHandled:Boolean
 005D5635    pop         esi
 005D5636    pop         ebx
 005D5637    ret
 005D5638    cmp         dword ptr [esi+4],0
 005D563C    seta        al
 005D563F    mov         byte ptr [ebx+50],al;TFormStyleHook.FFormActive:Boolean
 005D5642    mov         eax,dword ptr [ebx+74];TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D5645    test        eax,eax
>005D5647    je          005D5653
 005D5649    cmp         byte ptr [eax+28],0
>005D564D    je          005D5653
 005D564F    mov         byte ptr [eax+28],0
 005D5653    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D5656    movzx       eax,byte ptr [eax+2C2]
 005D565D    cmp         al,1
>005D565F    jne         005D56CA
 005D5661    cmp         al,1
>005D5663    jne         005D5678
 005D5665    mov         eax,[007C4590];^gvar_0079EDE0
 005D566A    cmp         dword ptr [eax],6
>005D566D    jl          005D5678
 005D566F    xor         edx,edx
 005D5671    mov         eax,ebx
 005D5673    call        0058D3E4
 005D5678    mov         edx,esi
 005D567A    mov         eax,ebx
 005D567C    call        TStyleHook.CallDefaultProc
 005D5681    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D5684    cmp         byte ptr [eax+2C2],1
>005D568B    jne         005D56D1
 005D568D    mov         eax,[007C4590];^gvar_0079EDE0
 005D5692    cmp         dword ptr [eax],6
>005D5695    jl          005D56D1
 005D5697    mov         dl,1
 005D5699    mov         eax,ebx
 005D569B    call        0058D3E4
 005D56A0    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D56A3    test        byte ptr [eax+1C],8;TWinControl.FComponentState:TComponentState
>005D56A7    jne         005D56D1
 005D56A9    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D56AC    test        byte ptr [eax+1C],1;TWinControl.FComponentState:TComponentState
>005D56B0    jne         005D56D1
 005D56B2    push        181
 005D56B7    push        0
 005D56B9    push        0
 005D56BB    mov         eax,ebx
 005D56BD    call        TStyleHook.GetHandle
 005D56C2    push        eax
 005D56C3    call        user32.RedrawWindow
>005D56C8    jmp         005D56D1
 005D56CA    mov         dword ptr [esi+0C],1
 005D56D1    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D56D4    mov         eax,dword ptr [eax+3B4]
 005D56DA    test        eax,eax
>005D56DC    je          005D56F1
 005D56DE    mov         edx,dword ptr [esi+8]
 005D56E1    push        edx
 005D56E2    mov         edx,dword ptr [esi+4]
 005D56E5    push        edx
 005D56E6    push        86
 005D56EB    push        eax
 005D56EC    call        user32.PostMessageW
 005D56F1    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D56F4    cmp         byte ptr [eax+2BD],0
>005D56FB    je          005D571F
 005D56FD    cmp         byte ptr [eax+2C2],1
>005D5704    jne         005D5712
 005D5706    cmp         byte ptr [eax+2BE],2
 005D570D    sete        al
>005D5710    jmp         005D5714
 005D5712    xor         eax,eax
 005D5714    test        al,al
>005D5716    jne         005D571F
 005D5718    mov         eax,ebx
 005D571A    mov         edx,dword ptr [eax]
 005D571C    call        dword ptr [edx+2C];TStyleHook.InvalidateNC
 005D571F    mov         byte ptr [ebx+14],1;TFormStyleHook.FHandled:Boolean
 005D5723    pop         esi
 005D5724    pop         ebx
 005D5725    ret
end;*}

//005D5728
{*procedure sub_005D5728(?:?);
begin
 005D5728    push        ebx
 005D5729    push        esi
 005D572A    push        edi
 005D572B    push        ebp
 005D572C    add         esp,0FFFFFFA8
 005D572F    mov         esi,eax
 005D5731    xor         eax,eax
 005D5733    mov         dword ptr [esp],eax
 005D5736    call        StyleServices
 005D573B    mov         edx,dword ptr [eax]
 005D573D    call        dword ptr [edx+48];@AbstractError
 005D5740    test        al,al
>005D5742    je          005D5A58
 005D5748    mov         eax,dword ptr [esi+58]
 005D574B    push        eax
 005D574C    lea         eax,[esp+20]
 005D5750    push        eax
 005D5751    mov         ecx,dword ptr [esi+0E0]
 005D5757    xor         edx,edx
 005D5759    xor         eax,eax
 005D575B    call        Rect
 005D5760    mov         eax,dword ptr [esi+8]
 005D5763    movzx       eax,byte ptr [eax+2BD]
 005D576A    cmp         al,4
>005D576C    je          005D5775
 005D576E    cmp         al,5
 005D5770    setne       al
>005D5773    jmp         005D5777
 005D5775    xor         eax,eax
 005D5777    test        al,al
>005D5779    je          005D577F
 005D577B    mov         bl,2
>005D577D    jmp         005D5781
 005D577F    mov         bl,5
 005D5781    call        StyleServices
 005D5786    mov         edx,ebx
 005D5788    lea         ecx,[esp+4C]
 005D578C    mov         ebx,dword ptr [eax]
 005D578E    call        dword ptr [ebx+10C];TCustomStyleServices.GetElementDetails
 005D5794    push        esp
 005D5795    call        StyleServices
 005D579A    lea         ecx,[esp+20]
 005D579E    lea         edx,[esp+50]
 005D57A2    call        TCustomStyleServices.GetElementRegion
 005D57A7    mov         edx,dword ptr [esi+8]
 005D57AA    cmp         byte ptr [edx+2BE],2
>005D57B1    jne         005D57BF
 005D57B3    cmp         byte ptr [edx+2C2],1
 005D57BA    setne       al
>005D57BD    jmp         005D57C1
 005D57BF    xor         eax,eax
 005D57C1    test        al,al
>005D57C3    je          005D5A58
 005D57C9    cmp         byte ptr [edx+2BD],0
>005D57D0    je          005D5A58
 005D57D6    mov         eax,dword ptr [esi+0E0]
 005D57DC    sar         eax,1
>005D57DE    jns         005D57E3
 005D57E0    adc         eax,0
 005D57E3    add         eax,dword ptr [esi+0B0]
 005D57E9    mov         dword ptr [esp+4],eax
 005D57ED    mov         eax,dword ptr [esi+58]
 005D57F0    sar         eax,1
>005D57F2    jns         005D57F7
 005D57F4    adc         eax,0
 005D57F7    add         eax,dword ptr [esi+0DC]
 005D57FD    mov         dword ptr [esp+8],eax
 005D5801    lea         edx,[esp+0C]
 005D5805    mov         eax,[007CA7CC];Screen:TScreen
 005D580A    call        005C9334
 005D580F    lea         edx,[esp+4]
 005D5813    xor         ecx,ecx
 005D5815    mov         eax,[007CA7CC];Screen:TScreen
 005D581A    call        TScreen.MonitorFromPoint
 005D581F    lea         edx,[esp+1C]
 005D5823    call        005C7C24
 005D5828    lea         edx,[esp+4]
 005D582C    xor         ecx,ecx
 005D582E    mov         eax,[007CA7CC];Screen:TScreen
 005D5833    call        TScreen.MonitorFromPoint
 005D5838    lea         edx,[esp+2C]
 005D583C    call        TMonitor.GetBoundsRect
 005D5841    mov         edi,dword ptr [esp+30]
 005D5845    mov         eax,edi
 005D5847    add         eax,dword ptr [esp+38]
 005D584B    push        eax
 005D584C    lea         eax,[esp+40]
 005D5850    push        eax
 005D5851    mov         ebx,dword ptr [esp+34]
 005D5855    mov         ecx,ebx
 005D5857    add         ecx,dword ptr [esp+3C]
 005D585B    mov         edx,edi
 005D585D    mov         eax,ebx
 005D585F    call        Rect
 005D5864    xor         eax,eax
 005D5866    xor         edx,edx
 005D5868    xor         ecx,ecx
 005D586A    xor         edi,edi
 005D586C    mov         ebp,dword ptr [esp+20]
 005D5870    cmp         ebp,dword ptr [esi+0DC]
>005D5876    jle         005D588F
 005D5878    mov         ebx,ebp
 005D587A    sub         ebx,dword ptr [esi+0DC]
 005D5880    cmp         ebx,64
>005D5883    jge         005D588F
 005D5885    mov         edx,ebp
 005D5887    sub         edx,dword ptr [esi+0DC]
>005D588D    jmp         005D58D3
 005D588F    mov         ebp,dword ptr [esp+40]
 005D5893    cmp         ebp,dword ptr [esi+0DC]
>005D5899    jle         005D58B2
 005D589B    mov         ebx,ebp
 005D589D    sub         ebx,dword ptr [esi+0DC]
 005D58A3    cmp         ebx,64
>005D58A6    jge         005D58B2
 005D58A8    mov         edx,ebp
 005D58AA    sub         edx,dword ptr [esi+0DC]
>005D58B0    jmp         005D58D3
 005D58B2    mov         ebp,dword ptr [esp+10]
 005D58B6    cmp         ebp,dword ptr [esi+0DC]
>005D58BC    jle         005D58D3
 005D58BE    mov         ebx,ebp
 005D58C0    sub         ebx,dword ptr [esi+0DC]
 005D58C6    cmp         ebx,64
>005D58C9    jge         005D58D3
 005D58CB    mov         edx,ebp
 005D58CD    sub         edx,dword ptr [esi+0DC]
 005D58D3    mov         ebp,dword ptr [esp+1C]
 005D58D7    cmp         ebp,dword ptr [esi+0B0]
>005D58DD    jle         005D58F6
 005D58DF    mov         ebx,ebp
 005D58E1    sub         ebx,dword ptr [esi+0B0]
 005D58E7    cmp         ebx,64
>005D58EA    jge         005D58F6
 005D58EC    mov         eax,ebp
 005D58EE    sub         eax,dword ptr [esi+0B0]
>005D58F4    jmp         005D593A
 005D58F6    mov         ebp,dword ptr [esp+3C]
 005D58FA    cmp         ebp,dword ptr [esi+0B0]
>005D5900    jle         005D5919
 005D5902    mov         ebx,ebp
 005D5904    sub         ebx,dword ptr [esi+0B0]
 005D590A    cmp         ebx,64
>005D590D    jge         005D5919
 005D590F    mov         eax,ebp
 005D5911    sub         eax,dword ptr [esi+0B0]
>005D5917    jmp         005D593A
 005D5919    mov         ebp,dword ptr [esp+0C]
 005D591D    cmp         ebp,dword ptr [esi+0B0]
>005D5923    jle         005D593A
 005D5925    mov         ebx,ebp
 005D5927    sub         ebx,dword ptr [esi+0B0]
 005D592D    cmp         ebx,64
>005D5930    jge         005D593A
 005D5932    mov         eax,ebp
 005D5934    sub         eax,dword ptr [esi+0B0]
 005D593A    mov         ebp,dword ptr [esi+0B0]
 005D5940    add         ebp,dword ptr [esi+0E0]
 005D5946    cmp         ebp,dword ptr [esp+24]
>005D594A    jle         005D595F
 005D594C    mov         ebx,ebp
 005D594E    sub         ebx,dword ptr [esp+24]
 005D5952    cmp         ebx,64
>005D5955    jge         005D595F
 005D5957    mov         ecx,ebp
 005D5959    sub         ecx,dword ptr [esp+24]
>005D595D    jmp         005D59BB
 005D595F    mov         ebp,dword ptr [esi+0B0]
 005D5965    add         ebp,dword ptr [esi+0E0]
 005D596B    cmp         ebp,dword ptr [esp+44]
>005D596F    jle         005D5984
 005D5971    mov         ebx,ebp
 005D5973    sub         ebx,dword ptr [esp+44]
 005D5977    cmp         ebx,64
>005D597A    jge         005D5984
 005D597C    mov         ecx,ebp
 005D597E    sub         ecx,dword ptr [esp+44]
>005D5982    jmp         005D59BB
 005D5984    mov         ebx,dword ptr [esi+0B0]
 005D598A    add         ebx,dword ptr [esi+0E0]
 005D5990    cmp         ebx,dword ptr [esp+14]
>005D5994    jle         005D59BB
 005D5996    mov         ebx,dword ptr [esi+0B0]
 005D599C    add         ebx,dword ptr [esi+0E0]
 005D59A2    sub         ebx,dword ptr [esp+14]
 005D59A6    cmp         ebx,64
>005D59A9    jge         005D59BB
 005D59AB    mov         ecx,dword ptr [esi+0B0]
 005D59B1    add         ecx,dword ptr [esi+0E0]
 005D59B7    sub         ecx,dword ptr [esp+14]
 005D59BB    mov         ebp,dword ptr [esi+0DC]
 005D59C1    add         ebp,dword ptr [esi+58]
 005D59C4    cmp         ebp,dword ptr [esp+28]
>005D59C8    jle         005D59DD
 005D59CA    mov         ebx,ebp
 005D59CC    sub         ebx,dword ptr [esp+28]
 005D59D0    cmp         ebx,64
>005D59D3    jge         005D59DD
 005D59D5    mov         edi,ebp
 005D59D7    sub         edi,dword ptr [esp+28]
>005D59DB    jmp         005D5A2D
 005D59DD    mov         ebp,dword ptr [esi+0DC]
 005D59E3    add         ebp,dword ptr [esi+58]
 005D59E6    cmp         ebp,dword ptr [esp+48]
>005D59EA    jle         005D59FF
 005D59EC    mov         ebx,ebp
 005D59EE    sub         ebx,dword ptr [esp+48]
 005D59F2    cmp         ebx,64
>005D59F5    jge         005D59FF
 005D59F7    mov         edi,ebp
 005D59F9    sub         edi,dword ptr [esp+48]
>005D59FD    jmp         005D5A2D
 005D59FF    mov         ebx,dword ptr [esi+0DC]
 005D5A05    add         ebx,dword ptr [esi+58]
 005D5A08    cmp         ebx,dword ptr [esp+18]
>005D5A0C    jle         005D5A2D
 005D5A0E    mov         ebx,dword ptr [esi+0DC]
 005D5A14    add         ebx,dword ptr [esi+58]
 005D5A17    sub         ebx,dword ptr [esp+18]
 005D5A1B    cmp         ebx,64
>005D5A1E    jge         005D5A2D
 005D5A20    mov         edi,dword ptr [esi+0DC]
 005D5A26    add         edi,dword ptr [esi+58]
 005D5A29    sub         edi,dword ptr [esp+18]
 005D5A2D    test        eax,eax
>005D5A2F    jne         005D5A3D
 005D5A31    test        ecx,ecx
>005D5A33    jne         005D5A3D
 005D5A35    test        edx,edx
>005D5A37    jne         005D5A3D
 005D5A39    test        edi,edi
>005D5A3B    je          005D5A58
 005D5A3D    mov         ebx,dword ptr [esi+58]
 005D5A40    sub         ebx,edi
 005D5A42    push        ebx
 005D5A43    mov         ebx,dword ptr [esi+0E0]
 005D5A49    sub         ebx,ecx
 005D5A4B    push        ebx
 005D5A4C    push        edx
 005D5A4D    push        eax
 005D5A4E    mov         eax,dword ptr [esp+10]
 005D5A52    push        eax
 005D5A53    call        gdi32.SetRectRgn
 005D5A58    mov         eax,dword ptr [esp]
 005D5A5B    add         esp,58
 005D5A5E    pop         ebp
 005D5A5F    pop         edi
 005D5A60    pop         esi
 005D5A61    pop         ebx
 005D5A62    ret
end;*}

//005D5A64
procedure sub_005D5A64(?:TFormStyleHook);
begin
{*
 005D5A64    push        ebp
 005D5A65    mov         ebp,esp
 005D5A67    add         esp,0FFFFFFEC
 005D5A6A    mov         dword ptr [ebp-4],eax
 005D5A6D    mov         eax,dword ptr [ebp-4]
 005D5A70    mov         byte ptr [eax+38],1
 005D5A74    xor         edx,edx
 005D5A76    push        ebp
 005D5A77    push        5D5B2A
 005D5A7C    push        dword ptr fs:[edx]
 005D5A7F    mov         dword ptr fs:[edx],esp
 005D5A82    mov         eax,dword ptr [ebp-4]
 005D5A85    call        TStyleHook.GetHandle
 005D5A8A    call        005BE99C
 005D5A8F    test        eax,eax
>005D5A91    je          005D5AAA
 005D5A93    lea         edx,[ebp-14]
 005D5A96    mov         eax,dword ptr [ebp-4]
 005D5A99    call        005D38F0
 005D5A9E    mov         eax,dword ptr [ebp-10]
 005D5AA1    add         eax,dword ptr [ebp-8]
 005D5AA4    mov         edx,dword ptr [ebp-4]
 005D5AA7    mov         dword ptr [edx+58],eax
 005D5AAA    mov         eax,dword ptr [ebp-4]
 005D5AAD    mov         eax,dword ptr [eax+8]
 005D5AB0    movzx       eax,byte ptr [eax+2BD]
 005D5AB7    test        al,al
>005D5AB9    je          005D5AE8
 005D5ABB    mov         eax,dword ptr [ebp-4]
 005D5ABE    call        005D5728
 005D5AC3    mov         edx,dword ptr [ebp-4]
 005D5AC6    mov         dword ptr [edx+0C4],eax
 005D5ACC    push        0FF
 005D5ACE    mov         eax,dword ptr [ebp-4]
 005D5AD1    mov         eax,dword ptr [eax+0C4]
 005D5AD7    push        eax
 005D5AD8    mov         eax,dword ptr [ebp-4]
 005D5ADB    call        TStyleHook.GetHandle
 005D5AE0    push        eax
 005D5AE1    call        user32.SetWindowRgn
>005D5AE6    jmp         005D5B15
 005D5AE8    test        al,al
>005D5AEA    jne         005D5B15
 005D5AEC    mov         eax,dword ptr [ebp-4]
 005D5AEF    cmp         dword ptr [eax+0C4],0
>005D5AF6    je          005D5B15
 005D5AF8    push        0FF
 005D5AFA    push        0
 005D5AFC    mov         eax,dword ptr [ebp-4]
 005D5AFF    call        TStyleHook.GetHandle
 005D5B04    push        eax
 005D5B05    call        user32.SetWindowRgn
 005D5B0A    mov         eax,dword ptr [ebp-4]
 005D5B0D    xor         edx,edx
 005D5B0F    mov         dword ptr [eax+0C4],edx
 005D5B15    xor         eax,eax
 005D5B17    pop         edx
 005D5B18    pop         ecx
 005D5B19    pop         ecx
 005D5B1A    mov         dword ptr fs:[eax],edx
 005D5B1D    push        5D5B31
 005D5B22    mov         eax,dword ptr [ebp-4]
 005D5B25    mov         byte ptr [eax+38],0
 005D5B29    ret
>005D5B2A    jmp         @HandleFinally
>005D5B2F    jmp         005D5B22
 005D5B31    mov         esp,ebp
 005D5B33    pop         ebp
 005D5B34    ret
*}
end;

//005D5B38
procedure TFormStyleHook.WMMove;
begin
{*
 005D5B38    push        ebx
 005D5B39    mov         ebx,eax
 005D5B3B    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D5B3E    cmp         byte ptr [eax+2C2],1
>005D5B45    jne         005D5B6E
 005D5B47    mov         eax,ebx
 005D5B49    call        TStyleHook.CallDefaultProc
 005D5B4E    push        0
 005D5B50    push        0
 005D5B52    push        52C
 005D5B57    mov         eax,[007CA7C8];Application:TApplication
 005D5B5C    mov         eax,dword ptr [eax+58]
 005D5B5F    call        TWinControl.GetHandle
 005D5B64    push        eax
 005D5B65    call        user32.SendMessageW
 005D5B6A    mov         byte ptr [ebx+14],1;TFormStyleHook.FHandled:Boolean
 005D5B6E    pop         ebx
 005D5B6F    ret
*}
end;

//005D5B70
{*procedure TFormStyleHook.sub_005D5B70(?:?);
begin
 005D5B70    push        ebx
 005D5B71    mov         ebx,eax
 005D5B73    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D5B76    cmp         byte ptr [eax+2C2],2
>005D5B7D    jne         005D5BF5
 005D5B7F    cmp         byte ptr [ebx+0C8],0;TFormStyleHook.FStopCheckChildMove:Boolean
>005D5B86    jne         005D5BF5
 005D5B88    mov         eax,dword ptr [edx+4]
 005D5B8B    mov         dword ptr [ebx+3C],eax;TFormStyleHook.FChangeVisibleChildHandle:HWND
 005D5B8E    mov         dl,1
 005D5B90    mov         eax,ebx
 005D5B92    call        005D2D50
 005D5B97    xor         eax,eax
 005D5B99    mov         dword ptr [ebx+3C],eax;TFormStyleHook.FChangeVisibleChildHandle:HWND
 005D5B9C    cmp         dword ptr [ebx+74],0;TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
>005D5BA0    je          005D5BF1
 005D5BA2    mov         eax,ebx
 005D5BA4    call        005D2AFC
 005D5BA9    test        al,al
>005D5BAB    je          005D5BF1
 005D5BAD    mov         eax,ebx
 005D5BAF    call        005D2D20
 005D5BB4    test        al,al
>005D5BB6    je          005D5BD0
 005D5BB8    mov         eax,dword ptr [ebx+74];TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D5BBB    cmp         byte ptr [eax+0A5],0
>005D5BC2    jne         005D5BD0
 005D5BC4    mov         dl,1
 005D5BC6    mov         eax,dword ptr [ebx+74];TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D5BC9    call        005CFD68
>005D5BCE    jmp         005D5BF1
 005D5BD0    mov         eax,ebx
 005D5BD2    call        005D2D20
 005D5BD7    test        al,al
>005D5BD9    jne         005D5BF1
 005D5BDB    mov         eax,dword ptr [ebx+74];TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D5BDE    cmp         byte ptr [eax+0A5],0
>005D5BE5    je          005D5BF1
 005D5BE7    xor         edx,edx
 005D5BE9    mov         eax,dword ptr [ebx+74];TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D5BEC    call        005CFD68
 005D5BF1    mov         byte ptr [ebx+14],1;TFormStyleHook.FHandled:Boolean
 005D5BF5    pop         ebx
 005D5BF6    ret
end;*}

//005D5BF8
{*procedure TFormStyleHook.WMSize(?:?);
begin
 005D5BF8    push        ebx
 005D5BF9    push        esi
 005D5BFA    push        edi
 005D5BFB    mov         esi,edx
 005D5BFD    mov         ebx,eax
 005D5BFF    mov         eax,ebx
 005D5C01    call        TStyleHook.GetHandle
 005D5C06    call        005BE99C
 005D5C0B    test        eax,eax
>005D5C0D    je          005D5C3B
 005D5C0F    mov         eax,[007CA7C8];Application:TApplication
 005D5C14    mov         eax,dword ptr [eax+58]
 005D5C17    call        TWinControl.GetHandle
 005D5C1C    mov         edi,eax
 005D5C1E    mov         eax,ebx
 005D5C20    call        TStyleHook.GetHandle
 005D5C25    cmp         edi,eax
>005D5C27    je          005D5C3B
 005D5C29    mov         eax,ebx
 005D5C2B    call        005D2AFC
 005D5C30    test        al,al
>005D5C32    je          005D5C3B
 005D5C34    mov         eax,ebx
 005D5C36    mov         edx,dword ptr [eax]
 005D5C38    call        dword ptr [edx+2C];TStyleHook.InvalidateNC
 005D5C3B    cmp         dword ptr [ebx+88],0;TFormStyleHook.FMDIClientInstance:Pointer
>005D5C42    je          005D5C5C
 005D5C44    mov         edx,esi
 005D5C46    mov         eax,ebx
 005D5C48    call        TStyleHook.CallDefaultProc
 005D5C4D    mov         dl,1
 005D5C4F    mov         eax,ebx
 005D5C51    call        005D2D50
 005D5C56    mov         byte ptr [ebx+14],1;TFormStyleHook.FHandled:Boolean
>005D5C5A    jmp         005D5CB3
 005D5C5C    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D5C5F    cmp         byte ptr [eax+2C2],1
>005D5C66    jne         005D5CB3
 005D5C68    mov         edx,esi
 005D5C6A    mov         eax,ebx
 005D5C6C    call        TStyleHook.CallDefaultProc
 005D5C71    push        0
 005D5C73    push        0
 005D5C75    push        52C
 005D5C7A    mov         eax,[007CA7C8];Application:TApplication
 005D5C7F    mov         eax,dword ptr [eax+58]
 005D5C82    call        TWinControl.GetHandle
 005D5C87    push        eax
 005D5C88    call        user32.SendMessageW
 005D5C8D    mov         eax,ebx
 005D5C8F    call        TStyleHook.GetHandle
 005D5C94    call        005BE99C
 005D5C99    test        eax,eax
>005D5C9B    je          005D5CAF
 005D5C9D    mov         eax,ebx
 005D5C9F    call        005D2AFC
 005D5CA4    test        al,al
>005D5CA6    je          005D5CAF
 005D5CA8    mov         eax,ebx
 005D5CAA    mov         edx,dword ptr [eax]
 005D5CAC    call        dword ptr [edx+2C];TStyleHook.InvalidateNC
 005D5CAF    mov         byte ptr [ebx+14],1;TFormStyleHook.FHandled:Boolean
 005D5CB3    pop         edi
 005D5CB4    pop         esi
 005D5CB5    pop         ebx
 005D5CB6    ret
end;*}

//005D5CB8
{*procedure TFormStyleHook.WMWindowPosChangingMsg(?:?);
begin
 005D5CB8    push        ebx
 005D5CB9    push        esi
 005D5CBA    push        edi
 005D5CBB    mov         esi,edx
 005D5CBD    mov         ebx,eax
 005D5CBF    mov         eax,ebx
 005D5CC1    call        005D2AFC
 005D5CC6    test        al,al
>005D5CC8    jne         005D5CD3
 005D5CCA    mov         byte ptr [ebx+14],0;TFormStyleHook.FHandled:Boolean
>005D5CCE    jmp         005D5EBE
 005D5CD3    mov         edx,esi
 005D5CD5    mov         eax,ebx
 005D5CD7    call        TStyleHook.CallDefaultProc
 005D5CDC    mov         eax,dword ptr [esi+8]
 005D5CDF    test        byte ptr [eax+18],40
>005D5CE3    je          005D5DE0
 005D5CE9    cmp         byte ptr [ebx+0B4],0;TFormStyleHook.FNeedsUpdate:Boolean
>005D5CF0    je          005D5DE0
 005D5CF6    mov         byte ptr [ebx+0B4],0;TFormStyleHook.FNeedsUpdate:Boolean
 005D5CFD    mov         edi,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D5D00    mov         eax,edi
 005D5D02    mov         edx,dword ptr ds:[5B865C];TForm
 005D5D08    call        @IsClass
 005D5D0D    test        al,al
>005D5D0F    je          005D5D6F
 005D5D11    cmp         byte ptr [edi+2C2],2
>005D5D18    jne         005D5D6F
 005D5D1A    cmp         dword ptr [ebx+88],0;TFormStyleHook.FMDIClientInstance:Pointer
>005D5D21    jne         005D5D6F
 005D5D23    mov         eax,dword ptr [edi+3B4]
 005D5D29    push        0FC
 005D5D2B    push        eax
 005D5D2C    call        user32.GetWindowLongW
 005D5D31    mov         dword ptr [ebx+90],eax;TFormStyleHook.FMDIPrevClientProc:Pointer
 005D5D37    push        ebx
 005D5D38    mov         eax,dword ptr [ebx]
 005D5D3A    mov         eax,dword ptr [eax+4C]
 005D5D3D    push        eax
 005D5D3E    call        MakeObjectInstance
 005D5D43    mov         dword ptr [ebx+88],eax;TFormStyleHook.FMDIClientInstance:Pointer
 005D5D49    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D5D4C    mov         eax,dword ptr [eax+3B4]
 005D5D52    mov         edx,dword ptr [ebx+88];TFormStyleHook.FMDIClientInstance:Pointer
 005D5D58    push        edx
 005D5D59    push        0FC
 005D5D5B    push        eax
 005D5D5C    call        user32.SetWindowLongW
 005D5D61    mov         eax,ebx
 005D5D63    call        005D33B8
 005D5D68    mov         eax,ebx
 005D5D6A    call        005D3518
 005D5D6F    mov         eax,ebx
 005D5D71    call        005D2AFC
 005D5D76    test        al,al
>005D5D78    je          005D5DA1
 005D5D7A    call        TStyleManager.GetSystemStyle
 005D5D7F    mov         edx,dword ptr [eax]
 005D5D81    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 005D5D84    test        al,al
>005D5D86    jne         005D5DA1
 005D5D88    mov         eax,ebx
 005D5D8A    call        TStyleHook.GetHandle
 005D5D8F    push        0F0
 005D5D91    push        eax
 005D5D92    call        user32.GetWindowLongW
 005D5D97    test        eax,0C00000
 005D5D9C    setne       al
>005D5D9F    jmp         005D5DA3
 005D5DA1    xor         eax,eax
 005D5DA3    test        al,al
>005D5DA5    je          005D5DE0
 005D5DA7    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D5DAA    cmp         byte ptr [eax+2C2],1
>005D5DB1    je          005D5DE0
 005D5DB3    mov         byte ptr [ebx+0E4],1;TFormStyleHook.FCaptionEmulation:Boolean
 005D5DBA    mov         eax,ebx
 005D5DBC    call        TStyleHook.GetHandle
 005D5DC1    mov         edi,eax
 005D5DC3    mov         eax,ebx
 005D5DC5    call        TStyleHook.GetHandle
 005D5DCA    push        0F0
 005D5DCC    push        eax
 005D5DCD    call        user32.GetWindowLongW
 005D5DD2    and         eax,0FF3FFFFF
 005D5DD7    push        eax
 005D5DD8    push        0F0
 005D5DDA    push        edi
 005D5DDB    call        user32.SetWindowLongW
 005D5DE0    mov         byte ptr [ebx+14],1;TFormStyleHook.FHandled:Boolean
 005D5DE4    xor         eax,eax
 005D5DE6    cmp         byte ptr [ebx+38],0;TFormStyleHook.FChangeSizeCalled:Boolean
>005D5DEA    je          005D5E31
 005D5DEC    cmp         byte ptr [ebx+0E5],0;TFormStyleHook.FRestoring:Boolean
>005D5DF3    je          005D5EBE
 005D5DF9    mov         byte ptr [ebx+0E5],0;TFormStyleHook.FRestoring:Boolean
 005D5E00    mov         eax,dword ptr [ebx+0E8];TFormStyleHook.FRestoringConstraints:TSizeConstraints
 005D5E06    cmp         dword ptr [eax+10],0;TSizeConstraints.FMinHeight:TConstraintSize
>005D5E0A    jne         005D5E22
 005D5E0C    cmp         dword ptr [eax+14],0;TSizeConstraints.FMinWidth:TConstraintSize
>005D5E10    jne         005D5E22
 005D5E12    cmp         dword ptr [eax+0C],0;TSizeConstraints.FMaxWidth:TConstraintSize
>005D5E16    jne         005D5E22
 005D5E18    cmp         dword ptr [eax+8],0;TSizeConstraints.FMaxHeight:TConstraintSize
>005D5E1C    je          005D5EBE
 005D5E22    mov         edx,eax
 005D5E24    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D5E27    call        TGroupBox.SetConstraints
>005D5E2C    jmp         005D5EBE
 005D5E31    mov         edi,dword ptr [esi+8]
 005D5E34    mov         edx,dword ptr [edi+18]
 005D5E37    test        dl,1
>005D5E3A    je          005D5E41
 005D5E3C    test        dl,2
>005D5E3F    jne         005D5E95
 005D5E41    test        dl,2
>005D5E44    jne         005D5E5B
 005D5E46    mov         edx,dword ptr [edi+8]
 005D5E49    mov         dword ptr [ebx+0B0],edx;TFormStyleHook.FLeft:Integer
 005D5E4F    mov         edx,dword ptr [esi+8]
 005D5E52    mov         edx,dword ptr [edx+0C]
 005D5E55    mov         dword ptr [ebx+0DC],edx;TFormStyleHook.FTop:Integer
 005D5E5B    mov         edx,dword ptr [esi+8]
 005D5E5E    test        byte ptr [edx+18],1
>005D5E62    jne         005D5E95
 005D5E64    mov         edx,dword ptr [esi+8]
 005D5E67    mov         edi,dword ptr [edx+10]
 005D5E6A    cmp         edi,dword ptr [ebx+0E0];TFormStyleHook.FWidth:Integer
>005D5E70    jne         005D5E7A
 005D5E72    mov         eax,dword ptr [edx+14]
 005D5E75    cmp         eax,dword ptr [ebx+58];TFormStyleHook.FHeight:Integer
>005D5E78    je          005D5E80
 005D5E7A    test        byte ptr [edx+18],1
>005D5E7E    je          005D5E84
 005D5E80    xor         eax,eax
>005D5E82    jmp         005D5E86
 005D5E84    mov         al,1
 005D5E86    mov         dword ptr [ebx+0E0],edi;TFormStyleHook.FWidth:Integer
 005D5E8C    mov         edx,dword ptr [esi+8]
 005D5E8F    mov         edx,dword ptr [edx+14]
 005D5E92    mov         dword ptr [ebx+58],edx;TFormStyleHook.FHeight:Integer
 005D5E95    mov         edx,dword ptr [esi+8]
 005D5E98    test        byte ptr [edx+18],20
>005D5E9C    je          005D5EA0
 005D5E9E    mov         al,1
 005D5EA0    test        al,al
>005D5EA2    je          005D5EBE
 005D5EA4    mov         eax,ebx
 005D5EA6    call        005D5A64
 005D5EAB    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D5EAE    cmp         byte ptr [eax+2BD],0
>005D5EB5    je          005D5EBE
 005D5EB7    mov         eax,ebx
 005D5EB9    mov         edx,dword ptr [eax]
 005D5EBB    call        dword ptr [edx+2C];TStyleHook.InvalidateNC
 005D5EBE    pop         edi
 005D5EBF    pop         esi
 005D5EC0    pop         ebx
 005D5EC1    ret
end;*}

//005D5EC4
{*procedure sub_005D5EC4(?:?);
begin
 005D5EC4    push        ebx
 005D5EC5    push        esi
 005D5EC6    mov         esi,edx
 005D5EC8    mov         ebx,eax
 005D5ECA    mov         edx,esi
 005D5ECC    mov         eax,ebx
 005D5ECE    call        0058DB4C
 005D5ED3    mov         eax,dword ptr [esi]
 005D5ED5    sub         eax,47
>005D5ED8    jne         005D5F33
 005D5EDA    mov         eax,ebx
 005D5EDC    call        005D2AFC
 005D5EE1    test        al,al
>005D5EE3    je          005D5F33
 005D5EE5    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D5EE8    cmp         byte ptr [eax+2BE],2
>005D5EEF    jne         005D5F33
 005D5EF1    mov         edx,dword ptr [esi+8]
 005D5EF4    mov         eax,dword ptr [edx+18]
 005D5EF7    test        al,1
>005D5EF9    je          005D5EFF
 005D5EFB    test        al,2
>005D5EFD    jne         005D5F33
 005D5EFF    test        al,2
>005D5F01    jne         005D5F18
 005D5F03    mov         eax,dword ptr [edx+8]
 005D5F06    mov         dword ptr [ebx+0B0],eax;TFormStyleHook.FLeft:Integer
 005D5F0C    mov         eax,dword ptr [esi+8]
 005D5F0F    mov         eax,dword ptr [eax+0C]
 005D5F12    mov         dword ptr [ebx+0DC],eax;TFormStyleHook.FTop:Integer
 005D5F18    mov         eax,dword ptr [esi+8]
 005D5F1B    test        byte ptr [eax+18],1
>005D5F1F    jne         005D5F33
 005D5F21    mov         eax,dword ptr [eax+10]
 005D5F24    mov         dword ptr [ebx+0E0],eax;TFormStyleHook.FWidth:Integer
 005D5F2A    mov         eax,dword ptr [esi+8]
 005D5F2D    mov         eax,dword ptr [eax+14]
 005D5F30    mov         dword ptr [ebx+58],eax;TFormStyleHook.FHeight:Integer
 005D5F33    pop         esi
 005D5F34    pop         ebx
 005D5F35    ret
end;*}

//005D5F38
procedure sub_005D5F38(?:TFormStyleHook);
begin
{*
 005D5F38    push        ebx
 005D5F39    mov         ebx,eax
 005D5F3B    mov         eax,dword ptr [ebx+8]
 005D5F3E    cmp         byte ptr [eax+2BD],0
>005D5F45    je          005D5F5C
 005D5F47    mov         edx,dword ptr [eax+58]
 005D5F4A    dec         edx
 005D5F4B    call        TControl.SetWidth
 005D5F50    mov         eax,dword ptr [ebx+8]
 005D5F53    mov         edx,dword ptr [eax+58]
 005D5F56    inc         edx
 005D5F57    call        TControl.SetWidth
 005D5F5C    pop         ebx
 005D5F5D    ret
*}
end;

//005D5F60
{*procedure TFormStyleHook.WMNCMouseMove(?:?);
begin
 005D5F60    push        ebx
 005D5F61    push        esi
 005D5F62    add         esp,0FFFFFFF0
 005D5F65    mov         esi,edx
 005D5F67    mov         ebx,eax
 005D5F69    mov         eax,ebx
 005D5F6B    call        005D2AFC
 005D5F70    test        al,al
>005D5F72    jne         005D5F7D
 005D5F74    mov         byte ptr [ebx+14],0;TFormStyleHook.FHandled:Boolean
>005D5F78    jmp         005D6039
 005D5F7D    mov         edx,esi
 005D5F7F    mov         eax,ebx
 005D5F81    call        TMouseTrackControlStyleHook.WMNCMouseMove
 005D5F86    cmp         dword ptr [ebx+74],0;TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
>005D5F8A    je          005D5FD1
 005D5F8C    cmp         dword ptr [esi+4],5
>005D5F90    jne         005D5FD1
 005D5F92    movsx       eax,word ptr [esi+8]
 005D5F96    movsx       edx,word ptr [esi+0A]
 005D5F9A    mov         dword ptr [esp+8],eax
 005D5F9E    mov         dword ptr [esp+0C],edx
 005D5FA2    mov         ecx,esp
 005D5FA4    lea         edx,[esp+8]
 005D5FA8    mov         eax,ebx
 005D5FAA    call        005D3A94
 005D5FAF    mov         eax,dword ptr [ebx+74];TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D5FB2    mov         edx,dword ptr [eax+8]
 005D5FB5    sub         dword ptr [esp],edx
 005D5FB8    mov         edx,dword ptr [eax+0C]
 005D5FBB    sub         dword ptr [esp+4],edx
 005D5FBF    mov         ecx,dword ptr [esp+4]
 005D5FC3    mov         edx,dword ptr [esp]
 005D5FC6    call        TFormStyleHook.TMainMenuBarStyleHook.MouseMove
 005D5FCB    mov         byte ptr [ebx+14],1;TFormStyleHook.FHandled:Boolean
>005D5FCF    jmp         005D5FF2
 005D5FD1    mov         eax,dword ptr [ebx+74];TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D5FD4    test        eax,eax
>005D5FD6    je          005D5FF2
 005D5FD8    cmp         byte ptr [eax+8D],0
>005D5FDF    je          005D5FF2
 005D5FE1    cmp         dword ptr [esi+4],5
>005D5FE5    je          005D5FF2
 005D5FE7    or          ecx,0FFFFFFFF
 005D5FEA    or          edx,0FFFFFFFF
 005D5FED    call        TFormStyleHook.TMainMenuBarStyleHook.MouseMove
 005D5FF2    mov         eax,dword ptr [esi+4]
 005D5FF5    cmp         eax,14
>005D5FF8    je          005D6009
 005D5FFA    cmp         eax,9
>005D5FFD    je          005D6009
 005D5FFF    cmp         eax,8
>005D6002    je          005D6009
 005D6004    cmp         eax,15
>005D6007    jne         005D6027
 005D6009    cmp         eax,dword ptr [ebx+54];TFormStyleHook.FHotButton:Integer
>005D600C    je          005D6018
 005D600E    mov         dword ptr [ebx+54],eax;TFormStyleHook.FHotButton:Integer
 005D6011    mov         eax,ebx
 005D6013    mov         edx,dword ptr [eax]
 005D6015    call        dword ptr [edx+2C];TStyleHook.InvalidateNC
 005D6018    xor         eax,eax
 005D601A    mov         dword ptr [esi+0C],eax
 005D601D    xor         eax,eax
 005D601F    mov         dword ptr [esi],eax
 005D6021    mov         byte ptr [ebx+14],1;TFormStyleHook.FHandled:Boolean
>005D6025    jmp         005D6039
 005D6027    cmp         dword ptr [ebx+54],0;TFormStyleHook.FHotButton:Integer
>005D602B    je          005D6039
 005D602D    xor         eax,eax
 005D602F    mov         dword ptr [ebx+54],eax;TFormStyleHook.FHotButton:Integer
 005D6032    mov         eax,ebx
 005D6034    mov         edx,dword ptr [eax]
 005D6036    call        dword ptr [edx+2C];TStyleHook.InvalidateNC
 005D6039    add         esp,10
 005D603C    pop         esi
 005D603D    pop         ebx
 005D603E    ret
end;*}

//005D6040
{*procedure TFormStyleHook.WMNCRButtonDown(?:?);
begin
 005D6040    push        ebx
 005D6041    push        esi
 005D6042    mov         esi,edx
 005D6044    mov         ebx,eax
 005D6046    mov         eax,ebx
 005D6048    call        005D2AFC
 005D604D    test        al,al
>005D604F    jne         005D6058
 005D6051    mov         byte ptr [ebx+14],0;TFormStyleHook.FHandled:Boolean
 005D6055    pop         esi
 005D6056    pop         ebx
 005D6057    ret
 005D6058    mov         edx,esi
 005D605A    mov         eax,ebx
 005D605C    mov         ecx,dword ptr [eax]
 005D605E    call        dword ptr [ecx-10];TObject.DefaultHandler
 005D6061    cmp         dword ptr [ebx+74],0;TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
>005D6065    je          005D6071
 005D6067    cmp         dword ptr [esi+4],5
>005D606B    jne         005D6071
 005D606D    mov         byte ptr [ebx+14],1;TFormStyleHook.FHandled:Boolean
 005D6071    pop         esi
 005D6072    pop         ebx
 005D6073    ret
end;*}

//005D6074
{*procedure TFormStyleHook.WMNCLButtonDown(?:?);
begin
 005D6074    push        ebx
 005D6075    push        esi
 005D6076    add         esp,0FFFFFFF0
 005D6079    mov         esi,edx
 005D607B    mov         ebx,eax
 005D607D    mov         eax,ebx
 005D607F    call        005D2AFC
 005D6084    test        al,al
>005D6086    jne         005D6091
 005D6088    mov         byte ptr [ebx+14],0;TFormStyleHook.FHandled:Boolean
>005D608C    jmp         005D618E
 005D6091    mov         edx,esi
 005D6093    mov         eax,ebx
 005D6095    mov         ecx,dword ptr [eax]
 005D6097    call        dword ptr [ecx-10];TObject.DefaultHandler
 005D609A    mov         eax,dword ptr [ebx+74];TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D609D    test        eax,eax
>005D609F    je          005D60C3
 005D60A1    cmp         byte ptr [eax+8E],0
>005D60A8    je          005D60C3
 005D60AA    mov         byte ptr [eax+28],0
 005D60AE    mov         byte ptr [eax+8E],0
 005D60B5    call        TFormStyleHook.TMainMenuBarStyleHook.TrackMDIChildSystemMenu
 005D60BA    mov         byte ptr [ebx+14],1;TFormStyleHook.FHandled:Boolean
>005D60BE    jmp         005D618E
 005D60C3    mov         eax,dword ptr [ebx+74];TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D60C6    test        eax,eax
>005D60C8    je          005D60EC
 005D60CA    cmp         byte ptr [eax+90],0
>005D60D1    je          005D60EC
 005D60D3    mov         byte ptr [eax+28],0
 005D60D7    mov         byte ptr [eax+90],0
 005D60DE    call        TFormStyleHook.TMainMenuBarStyleHook.TrackSystemMenu
 005D60E3    mov         byte ptr [ebx+14],1;TFormStyleHook.FHandled:Boolean
>005D60E7    jmp         005D618E
 005D60EC    mov         eax,dword ptr [ebx+74];TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D60EF    test        eax,eax
>005D60F1    je          005D6114
 005D60F3    cmp         byte ptr [eax+8F],0
>005D60FA    je          005D6114
 005D60FC    mov         byte ptr [eax+28],0
 005D6100    mov         byte ptr [eax+8F],0
 005D6107    mov         dl,1
 005D6109    call        TFormStyleHook.TMainMenuBarStyleHook.ProcessMenuLoop
 005D610E    mov         byte ptr [ebx+14],1;TFormStyleHook.FHandled:Boolean
>005D6112    jmp         005D618E
 005D6114    cmp         dword ptr [ebx+74],0;TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
>005D6118    je          005D615D
 005D611A    cmp         dword ptr [esi+4],5
>005D611E    jne         005D615D
 005D6120    movsx       eax,word ptr [esi+8]
 005D6124    movsx       edx,word ptr [esi+0A]
 005D6128    mov         dword ptr [esp+8],eax
 005D612C    mov         dword ptr [esp+0C],edx
 005D6130    mov         ecx,esp
 005D6132    lea         edx,[esp+8]
 005D6136    mov         eax,ebx
 005D6138    call        005D3A94
 005D613D    mov         eax,dword ptr [ebx+74];TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D6140    mov         edx,dword ptr [eax+8]
 005D6143    sub         dword ptr [esp],edx
 005D6146    mov         edx,dword ptr [eax+0C]
 005D6149    sub         dword ptr [esp+4],edx
 005D614D    mov         ecx,dword ptr [esp+4]
 005D6151    mov         edx,dword ptr [esp]
 005D6154    call        TFormStyleHook.TMainMenuBarStyleHook.MouseDown
 005D6159    mov         byte ptr [ebx+14],1;TFormStyleHook.FHandled:Boolean
 005D615D    mov         eax,dword ptr [esi+4]
 005D6160    cmp         eax,14
>005D6163    je          005D6174
 005D6165    cmp         eax,9
>005D6168    je          005D6174
 005D616A    cmp         eax,8
>005D616D    je          005D6174
 005D616F    cmp         eax,15
>005D6172    jne         005D618E
 005D6174    mov         dword ptr [ebx+0C0],eax;TFormStyleHook.FPressedButton:Integer
 005D617A    mov         eax,ebx
 005D617C    mov         edx,dword ptr [eax]
 005D617E    call        dword ptr [edx+2C];TStyleHook.InvalidateNC
 005D6181    xor         eax,eax
 005D6183    mov         dword ptr [esi+0C],eax
 005D6186    xor         eax,eax
 005D6188    mov         dword ptr [esi],eax
 005D618A    mov         byte ptr [ebx+14],1;TFormStyleHook.FHandled:Boolean
 005D618E    add         esp,10
 005D6191    pop         esi
 005D6192    pop         ebx
 005D6193    ret
end;*}

//005D6194
{*procedure TFormStyleHook.WMNCRButtonUp(?:?);
begin
 005D6194    push        ebx
 005D6195    push        esi
 005D6196    mov         esi,edx
 005D6198    mov         ebx,eax
 005D619A    mov         eax,ebx
 005D619C    call        005D2AFC
 005D61A1    test        al,al
>005D61A3    jne         005D61AC
 005D61A5    mov         byte ptr [ebx+14],0;TFormStyleHook.FHandled:Boolean
 005D61A9    pop         esi
 005D61AA    pop         ebx
 005D61AB    ret
 005D61AC    cmp         dword ptr [esi+4],2
>005D61B0    jne         005D61E3
 005D61B2    cmp         byte ptr [ebx+0E4],0;TFormStyleHook.FCaptionEmulation:Boolean
>005D61B9    je          005D61E3
 005D61BB    mov         eax,ebx
 005D61BD    call        TStyleHook.GetHandle
 005D61C2    movzx       edx,word ptr [esi+8]
 005D61C6    movzx       ecx,word ptr [esi+0A]
 005D61CA    movzx       edx,dx
 005D61CD    movzx       ecx,cx
 005D61D0    shl         ecx,10
 005D61D3    or          edx,ecx
 005D61D5    push        edx
 005D61D6    push        0
 005D61D8    push        313
 005D61DD    push        eax
 005D61DE    call        user32.SendMessageW
 005D61E3    pop         esi
 005D61E4    pop         ebx
 005D61E5    ret
end;*}

//005D61E8
{*procedure TFormStyleHook.WMNCLButtonUp(?:?);
begin
 005D61E8    push        ebx
 005D61E9    push        esi
 005D61EA    push        edi
 005D61EB    add         esp,0FFFFFFF0
 005D61EE    mov         ebx,edx
 005D61F0    mov         esi,eax
 005D61F2    mov         eax,esi
 005D61F4    call        005D2AFC
 005D61F9    test        al,al
>005D61FB    jne         005D6206
 005D61FD    mov         byte ptr [esi+14],0;TFormStyleHook.FHandled:Boolean
>005D6201    jmp         005D6376
 005D6206    mov         eax,dword ptr [esi+0C0];TFormStyleHook.FPressedButton:Integer
 005D620C    mov         edi,eax
 005D620E    test        eax,eax
>005D6210    je          005D6221
 005D6212    xor         eax,eax
 005D6214    mov         dword ptr [esi+0C0],eax;TFormStyleHook.FPressedButton:Integer
 005D621A    mov         eax,esi
 005D621C    mov         edx,dword ptr [eax]
 005D621E    call        dword ptr [edx+2C];TStyleHook.InvalidateNC
 005D6221    cmp         dword ptr [esi+74],0;TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
>005D6225    je          005D626A
 005D6227    cmp         dword ptr [ebx+4],5
>005D622B    jne         005D626A
 005D622D    movsx       eax,word ptr [ebx+8]
 005D6231    movsx       edx,word ptr [ebx+0A]
 005D6235    mov         dword ptr [esp+8],eax
 005D6239    mov         dword ptr [esp+0C],edx
 005D623D    mov         ecx,esp
 005D623F    lea         edx,[esp+8]
 005D6243    mov         eax,esi
 005D6245    call        005D3A94
 005D624A    mov         eax,dword ptr [esi+74];TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D624D    mov         edx,dword ptr [eax+8]
 005D6250    sub         dword ptr [esp],edx
 005D6253    mov         edx,dword ptr [eax+0C]
 005D6256    sub         dword ptr [esp+4],edx
 005D625A    mov         ecx,dword ptr [esp+4]
 005D625E    mov         edx,dword ptr [esp]
 005D6261    call        TFormStyleHook.TMainMenuBarStyleHook.MouseUp
 005D6266    mov         byte ptr [esi+14],1;TFormStyleHook.FHandled:Boolean
 005D626A    mov         eax,dword ptr [ebx+4]
 005D626D    cmp         eax,0C
>005D6270    je          005D6376
 005D6276    cmp         eax,0F
>005D6279    je          005D6376
 005D627F    cmp         eax,0A
>005D6282    je          005D6376
 005D6288    cmp         eax,0B
>005D628B    je          005D6376
 005D6291    cmp         eax,2
>005D6294    je          005D6376
 005D629A    cmp         eax,0D
>005D629D    je          005D6376
 005D62A3    cmp         eax,0E
>005D62A6    je          005D6376
 005D62AC    cmp         eax,11
>005D62AF    je          005D6376
 005D62B5    cmp         eax,10
>005D62B8    je          005D6376
 005D62BE    cmp         eax,3
>005D62C1    je          005D6376
 005D62C7    cmp         edi,dword ptr [esi+54];TFormStyleHook.FHotButton:Integer
>005D62CA    jne         005D6369
 005D62D0    cmp         eax,14
>005D62D3    jne         005D62E1
 005D62D5    mov         eax,esi
 005D62D7    mov         edx,dword ptr [eax]
 005D62D9    call        dword ptr [edx+40];TFormStyleHook.sub_005D6470
>005D62DC    jmp         005D6369
 005D62E1    cmp         eax,9
>005D62E4    jne         005D62F5
 005D62E6    mov         edx,dword ptr [esi+8];TFormStyleHook.FControl:TWinControl
 005D62E9    test        byte ptr [edx+2BC],4
 005D62F0    setne       dl
>005D62F3    jmp         005D62F7
 005D62F5    xor         edx,edx
 005D62F7    test        dl,dl
>005D62F9    je          005D6319
 005D62FB    mov         eax,dword ptr [esi+8];TFormStyleHook.FControl:TWinControl
 005D62FE    cmp         byte ptr [eax+2BE],2
>005D6305    je          005D6310
 005D6307    mov         eax,esi
 005D6309    mov         edx,dword ptr [eax]
 005D630B    call        dword ptr [edx+48];TFormStyleHook.sub_005D64D4
>005D630E    jmp         005D6369
 005D6310    mov         eax,esi
 005D6312    mov         edx,dword ptr [eax]
 005D6314    call        dword ptr [edx+54];TFormStyleHook.sub_005D649C
>005D6317    jmp         005D6369
 005D6319    cmp         eax,8
>005D631C    jne         005D632D
 005D631E    mov         edx,dword ptr [esi+8];TFormStyleHook.FControl:TWinControl
 005D6321    test        byte ptr [edx+2BC],2
 005D6328    setne       dl
>005D632B    jmp         005D632F
 005D632D    xor         edx,edx
 005D632F    test        dl,dl
>005D6331    je          005D6351
 005D6333    mov         eax,dword ptr [esi+8];TFormStyleHook.FControl:TWinControl
 005D6336    cmp         byte ptr [eax+2BE],1
>005D633D    je          005D6348
 005D633F    mov         eax,esi
 005D6341    mov         edx,dword ptr [eax]
 005D6343    call        dword ptr [edx+50];TFormStyleHook.sub_005D6538
>005D6346    jmp         005D6369
 005D6348    mov         eax,esi
 005D634A    mov         edx,dword ptr [eax]
 005D634C    call        dword ptr [edx+54];TFormStyleHook.sub_005D649C
>005D634F    jmp         005D6369
 005D6351    cmp         eax,15
>005D6354    jne         005D6369
 005D6356    mov         eax,dword ptr [esi+8];TFormStyleHook.FControl:TWinControl
 005D6359    test        byte ptr [eax+2BC],8
>005D6360    je          005D6369
 005D6362    mov         eax,esi
 005D6364    mov         edx,dword ptr [eax]
 005D6366    call        dword ptr [edx+44];TFormStyleHook.sub_005D659C
 005D6369    xor         eax,eax
 005D636B    mov         dword ptr [ebx+0C],eax
 005D636E    xor         eax,eax
 005D6370    mov         dword ptr [ebx],eax
 005D6372    mov         byte ptr [esi+14],1;TFormStyleHook.FHandled:Boolean
 005D6376    add         esp,10
 005D6379    pop         edi
 005D637A    pop         esi
 005D637B    pop         ebx
 005D637C    ret
end;*}

//005D6380
{*procedure TFormStyleHook.WMNCLButtonDblClk(?:?);
begin
 005D6380    push        ebx
 005D6381    push        esi
 005D6382    mov         ebx,edx
 005D6384    mov         esi,eax
 005D6386    mov         edx,ebx
 005D6388    mov         eax,esi
 005D638A    mov         ecx,dword ptr [eax]
 005D638C    call        dword ptr [ecx-10];TObject.DefaultHandler
 005D638F    mov         eax,dword ptr [ebx+4]
 005D6392    cmp         eax,0C
>005D6395    je          005D63CC
 005D6397    cmp         eax,0F
>005D639A    je          005D63CC
 005D639C    cmp         eax,0A
>005D639F    je          005D63CC
 005D63A1    cmp         eax,0B
>005D63A4    je          005D63CC
 005D63A6    cmp         eax,2
>005D63A9    je          005D63CC
 005D63AB    cmp         eax,0D
>005D63AE    je          005D63CC
 005D63B0    cmp         eax,0E
>005D63B3    je          005D63CC
 005D63B5    cmp         eax,11
>005D63B8    je          005D63CC
 005D63BA    cmp         eax,10
>005D63BD    je          005D63CC
 005D63BF    xor         eax,eax
 005D63C1    mov         dword ptr [ebx+0C],eax
 005D63C4    xor         eax,eax
 005D63C6    mov         dword ptr [ebx],eax
 005D63C8    mov         byte ptr [esi+14],1;TFormStyleHook.FHandled:Boolean
 005D63CC    pop         esi
 005D63CD    pop         ebx
 005D63CE    ret
end;*}

//005D63D0
procedure sub_005D63D0;
begin
{*
 005D63D0    push        ebx
 005D63D1    mov         ebx,eax
 005D63D3    mov         eax,ebx
 005D63D5    call        0058DB44
 005D63DA    xor         eax,eax
 005D63DC    mov         dword ptr [ebx+0C0],eax;TFormStyleHook.FPressedButton:Integer
 005D63E2    pop         ebx
 005D63E3    ret
*}
end;

//005D63E4
procedure sub_005D63E4;
begin
{*
 005D63E4    push        ebx
 005D63E5    mov         ebx,eax
 005D63E7    mov         eax,ebx
 005D63E9    call        0058DB48
 005D63EE    cmp         dword ptr [ebx+54],0;TFormStyleHook.FHotButton:Integer
>005D63F2    je          005D6414
 005D63F4    xor         eax,eax
 005D63F6    mov         dword ptr [ebx+54],eax;TFormStyleHook.FHotButton:Integer
 005D63F9    xor         eax,eax
 005D63FB    mov         dword ptr [ebx+0C0],eax;TFormStyleHook.FPressedButton:Integer
 005D6401    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D6404    cmp         byte ptr [eax+2BD],0
>005D640B    je          005D6414
 005D640D    mov         eax,ebx
 005D640F    mov         edx,dword ptr [eax]
 005D6411    call        dword ptr [edx+2C];TStyleHook.InvalidateNC
 005D6414    mov         eax,dword ptr [ebx+74];TFormStyleHook.FMainMenuBarHook:TMainMenuBarStyleHook
 005D6417    test        eax,eax
>005D6419    je          005D6426
 005D641B    or          ecx,0FFFFFFFF
 005D641E    or          edx,0FFFFFFFF
 005D6421    call        TFormStyleHook.TMainMenuBarStyleHook.MouseMove
 005D6426    pop         ebx
 005D6427    ret
*}
end;

//005D6428
{*procedure TFormStyleHook.WMActivate(?:?);
begin
 005D6428    push        ebx
 005D6429    push        esi
 005D642A    mov         esi,edx
 005D642C    mov         ebx,eax
 005D642E    mov         eax,ebx
 005D6430    call        005D2AFC
 005D6435    test        al,al
>005D6437    je          005D6451
 005D6439    mov         edx,esi
 005D643B    mov         eax,ebx
 005D643D    call        TStyleHook.CallDefaultProc
 005D6442    cmp         word ptr [esi+4],0
 005D6447    seta        al
 005D644A    mov         byte ptr [ebx+50],al;TFormStyleHook.FFormActive:Boolean
 005D644D    mov         byte ptr [ebx+14],1;TFormStyleHook.FHandled:Boolean
 005D6451    pop         esi
 005D6452    pop         ebx
 005D6453    ret
end;*}

//005D6454
procedure TFormStyleHook.sub_005D6454;
begin
{*
 005D6454    push        ebx
 005D6455    mov         ebx,eax
 005D6457    mov         eax,ebx
 005D6459    call        005D2AFC
 005D645E    test        al,al
>005D6460    je          005D646D
 005D6462    mov         eax,ebx
 005D6464    mov         edx,dword ptr [eax]
 005D6466    call        dword ptr [edx+2C];TStyleHook.InvalidateNC
 005D6469    mov         byte ptr [ebx+14],1;TFormStyleHook.FHandled:Boolean
 005D646D    pop         ebx
 005D646E    ret
*}
end;

//005D6470
procedure sub_005D6470;
begin
{*
 005D6470    push        ebx
 005D6471    mov         ebx,eax
 005D6473    mov         eax,ebx
 005D6475    call        TStyleHook.GetHandle
 005D647A    test        eax,eax
>005D647C    je          005D6497
 005D647E    push        0
 005D6480    push        0F060
 005D6485    push        112
 005D648A    mov         eax,ebx
 005D648C    call        TStyleHook.GetHandle
 005D6491    push        eax
 005D6492    call        user32.SendMessageW
 005D6497    pop         ebx
 005D6498    ret
*}
end;

//005D649C
procedure sub_005D649C;
begin
{*
 005D649C    push        ebx
 005D649D    mov         ebx,eax
 005D649F    xor         eax,eax
 005D64A1    mov         dword ptr [ebx+0C0],eax;TFormStyleHook.FPressedButton:Integer
 005D64A7    xor         eax,eax
 005D64A9    mov         dword ptr [ebx+54],eax;TFormStyleHook.FHotButton:Integer
 005D64AC    mov         eax,ebx
 005D64AE    call        TStyleHook.GetHandle
 005D64B3    test        eax,eax
>005D64B5    je          005D64D0
 005D64B7    push        0
 005D64B9    push        0F120
 005D64BE    push        112
 005D64C3    mov         eax,ebx
 005D64C5    call        TStyleHook.GetHandle
 005D64CA    push        eax
 005D64CB    call        user32.SendMessageW
 005D64D0    pop         ebx
 005D64D1    ret
*}
end;

//005D64D4
procedure sub_005D64D4;
begin
{*
 005D64D4    push        ebx
 005D64D5    mov         ebx,eax
 005D64D7    mov         eax,ebx
 005D64D9    call        TStyleHook.GetHandle
 005D64DE    test        eax,eax
>005D64E0    je          005D6534
 005D64E2    xor         eax,eax
 005D64E4    mov         dword ptr [ebx+0C0],eax;TFormStyleHook.FPressedButton:Integer
 005D64EA    xor         eax,eax
 005D64EC    mov         dword ptr [ebx+54],eax;TFormStyleHook.FHotButton:Integer
 005D64EF    mov         eax,ebx
 005D64F1    call        TStyleHook.GetHandle
 005D64F6    push        eax
 005D64F7    call        user32.IsZoomed
 005D64FC    test        eax,eax
>005D64FE    je          005D651B
 005D6500    push        0
 005D6502    push        0F120
 005D6507    push        112
 005D650C    mov         eax,ebx
 005D650E    call        TStyleHook.GetHandle
 005D6513    push        eax
 005D6514    call        user32.SendMessageW
>005D6519    jmp         005D6534
 005D651B    push        0
 005D651D    push        0F030
 005D6522    push        112
 005D6527    mov         eax,ebx
 005D6529    call        TStyleHook.GetHandle
 005D652E    push        eax
 005D652F    call        user32.SendMessageW
 005D6534    pop         ebx
 005D6535    ret
*}
end;

//005D6538
procedure sub_005D6538;
begin
{*
 005D6538    push        ebx
 005D6539    mov         ebx,eax
 005D653B    mov         eax,ebx
 005D653D    call        TStyleHook.GetHandle
 005D6542    test        eax,eax
>005D6544    je          005D6597
 005D6546    xor         eax,eax
 005D6548    mov         dword ptr [ebx+0C0],eax;TFormStyleHook.FPressedButton:Integer
 005D654E    xor         eax,eax
 005D6550    mov         dword ptr [ebx+54],eax;TFormStyleHook.FHotButton:Integer
 005D6553    mov         eax,ebx
 005D6555    call        TStyleHook.GetHandle
 005D655A    call        005BE99C
 005D655F    test        eax,eax
>005D6561    je          005D657E
 005D6563    push        0
 005D6565    push        0F120
 005D656A    push        112
 005D656F    mov         eax,ebx
 005D6571    call        TStyleHook.GetHandle
 005D6576    push        eax
 005D6577    call        user32.SendMessageW
>005D657C    jmp         005D6597
 005D657E    push        0
 005D6580    push        0F020
 005D6585    push        112
 005D658A    mov         eax,ebx
 005D658C    call        TStyleHook.GetHandle
 005D6591    push        eax
 005D6592    call        user32.SendMessageW
 005D6597    pop         ebx
 005D6598    ret
*}
end;

//005D659C
procedure sub_005D659C;
begin
{*
 005D659C    push        ebx
 005D659D    mov         ebx,eax
 005D659F    push        0
 005D65A1    push        0F180
 005D65A6    push        112
 005D65AB    mov         eax,ebx
 005D65AD    call        TStyleHook.GetHandle
 005D65B2    push        eax
 005D65B3    call        user32.SendMessageW
 005D65B8    pop         ebx
 005D65B9    ret
*}
end;

//005D65BC
{*procedure TFormStyleHook.WMShowWindow(?:?);
begin
 005D65BC    push        ebx
 005D65BD    push        esi
 005D65BE    mov         ebx,eax
 005D65C0    cmp         dword ptr [edx+4],0
>005D65C4    je          005D66C8
 005D65CA    cmp         byte ptr [ebx+0B4],0;TFormStyleHook.FNeedsUpdate:Boolean
>005D65D1    je          005D66C8
 005D65D7    mov         byte ptr [ebx+0B4],0;TFormStyleHook.FNeedsUpdate:Boolean
 005D65DE    mov         esi,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D65E1    mov         eax,esi
 005D65E3    mov         edx,dword ptr ds:[5B865C];TForm
 005D65E9    call        @IsClass
 005D65EE    test        al,al
>005D65F0    je          005D6650
 005D65F2    cmp         byte ptr [esi+2C2],2
>005D65F9    jne         005D6650
 005D65FB    cmp         dword ptr [ebx+88],0;TFormStyleHook.FMDIClientInstance:Pointer
>005D6602    jne         005D6650
 005D6604    mov         eax,dword ptr [esi+3B4]
 005D660A    push        0FC
 005D660C    push        eax
 005D660D    call        user32.GetWindowLongW
 005D6612    mov         dword ptr [ebx+90],eax;TFormStyleHook.FMDIPrevClientProc:Pointer
 005D6618    push        ebx
 005D6619    mov         eax,dword ptr [ebx]
 005D661B    mov         eax,dword ptr [eax+4C]
 005D661E    push        eax
 005D661F    call        MakeObjectInstance
 005D6624    mov         dword ptr [ebx+88],eax;TFormStyleHook.FMDIClientInstance:Pointer
 005D662A    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D662D    mov         eax,dword ptr [eax+3B4]
 005D6633    mov         edx,dword ptr [ebx+88];TFormStyleHook.FMDIClientInstance:Pointer
 005D6639    push        edx
 005D663A    push        0FC
 005D663C    push        eax
 005D663D    call        user32.SetWindowLongW
 005D6642    mov         eax,ebx
 005D6644    call        005D33B8
 005D6649    mov         eax,ebx
 005D664B    call        005D3518
 005D6650    mov         eax,ebx
 005D6652    call        005D2AFC
 005D6657    test        al,al
>005D6659    je          005D6682
 005D665B    call        TStyleManager.GetSystemStyle
 005D6660    mov         edx,dword ptr [eax]
 005D6662    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 005D6665    test        al,al
>005D6667    jne         005D6682
 005D6669    mov         eax,ebx
 005D666B    call        TStyleHook.GetHandle
 005D6670    push        0F0
 005D6672    push        eax
 005D6673    call        user32.GetWindowLongW
 005D6678    test        eax,0C00000
 005D667D    setne       al
>005D6680    jmp         005D6684
 005D6682    xor         eax,eax
 005D6684    test        al,al
>005D6686    je          005D66C1
 005D6688    mov         eax,dword ptr [ebx+8];TFormStyleHook.FControl:TWinControl
 005D668B    cmp         byte ptr [eax+2C2],1
>005D6692    je          005D66C1
 005D6694    mov         byte ptr [ebx+0E4],1;TFormStyleHook.FCaptionEmulation:Boolean
 005D669B    mov         eax,ebx
 005D669D    call        TStyleHook.GetHandle
 005D66A2    mov         esi,eax
 005D66A4    mov         eax,ebx
 005D66A6    call        TStyleHook.GetHandle
 005D66AB    push        0F0
 005D66AD    push        eax
 005D66AE    call        user32.GetWindowLongW
 005D66B3    and         eax,0FF3FFFFF
 005D66B8    push        eax
 005D66B9    push        0F0
 005D66BB    push        esi
 005D66BC    call        user32.SetWindowLongW
 005D66C1    mov         eax,ebx
 005D66C3    call        005D5F38
 005D66C8    pop         esi
 005D66C9    pop         ebx
 005D66CA    ret
end;*}

//005D66CC
{*procedure TFormStyleHook.WMGetMinMaxInfo(?:?);
begin
 005D66CC    push        ebx
 005D66CD    push        esi
 005D66CE    add         esp,0FFFFFFF0
 005D66D1    mov         esi,edx
 005D66D3    mov         ebx,eax
 005D66D5    mov         eax,ebx
 005D66D7    call        005D2AFC
 005D66DC    test        al,al
>005D66DE    je          005D6704
 005D66E0    mov         edx,esi
 005D66E2    mov         eax,ebx
 005D66E4    call        TStyleHook.CallDefaultProc
 005D66E9    mov         edx,esp
 005D66EB    mov         eax,ebx
 005D66ED    call        005D38F0
 005D66F2    mov         eax,dword ptr [esi+8]
 005D66F5    mov         edx,dword ptr [esp+4]
 005D66F9    add         edx,dword ptr [esp+0C]
 005D66FD    mov         dword ptr [eax+1C],edx
 005D6700    mov         byte ptr [ebx+14],1;TFormStyleHook.FHandled:Boolean
 005D6704    add         esp,10
 005D6707    pop         esi
 005D6708    pop         ebx
 005D6709    ret
end;*}

//005D670C
constructor TScrollBoxStyleHook.Create(AControl:TWinControl);
begin
{*
 005D670C    push        ebp
 005D670D    mov         ebp,esp
 005D670F    push        ecx
 005D6710    push        ebx
 005D6711    test        dl,dl
>005D6713    je          005D671D
 005D6715    add         esp,0FFFFFFF0
 005D6718    call        @ClassCreate
 005D671D    mov         byte ptr [ebp-1],dl
 005D6720    mov         ebx,eax
 005D6722    xor         edx,edx
 005D6724    mov         eax,ebx
 005D6726    call        TScrollingStyleHook.Create
 005D672B    mov         byte ptr [ebx+16],1;TScrollBoxStyleHook.FOverrideEraseBkgnd:Boolean
 005D672F    mov         eax,dword ptr [ebx+8];TScrollBoxStyleHook.FControl:TWinControl
 005D6732    test        byte ptr [eax+188],2;TWinControl.FStyleElements:TStyleElements
>005D6739    je          005D6753
 005D673B    call        StyleServices
 005D6740    mov         dl,17
 005D6742    call        TCustomStyleServices.GetStyleColor
 005D6747    mov         edx,eax
 005D6749    mov         eax,dword ptr [ebx+4];TScrollBoxStyleHook.FBrush:TBrush
 005D674C    call        TBrush.SetColor
>005D6751    jmp         005D675E
 005D6753    mov         edx,dword ptr [eax+7C];TWinControl.FColor:TColor
 005D6756    mov         eax,dword ptr [ebx+4];TScrollBoxStyleHook.FBrush:TBrush
 005D6759    call        TBrush.SetColor
 005D675E    mov         eax,ebx
 005D6760    cmp         byte ptr [ebp-1],0
>005D6764    je          005D6775
 005D6766    call        @AfterConstruction
 005D676B    pop         dword ptr fs:[0]
 005D6772    add         esp,0C
 005D6775    mov         eax,ebx
 005D6777    pop         ebx
 005D6778    pop         ecx
 005D6779    pop         ebp
 005D677A    ret
*}
end;

//005D677C
{*procedure sub_005D677C(?:?);
begin
 005D677C    push        ebx
 005D677D    push        esi
 005D677E    mov         ebx,edx
 005D6780    mov         esi,eax
 005D6782    mov         edx,ebx
 005D6784    mov         eax,esi
 005D6786    call        005CF948
 005D678B    mov         eax,dword ptr [ebx]
 005D678D    add         eax,0FFFFFEEC
 005D6792    sub         eax,2
>005D6795    jae         005D67B7
 005D6797    cmp         word ptr [ebx+4],8
>005D679C    jne         005D67B7
 005D679E    push        37
 005D67A0    push        0
 005D67A2    push        0
 005D67A4    push        0
 005D67A6    push        0
 005D67A8    push        0
 005D67AA    mov         eax,esi
 005D67AC    call        TStyleHook.GetHandle
 005D67B1    push        eax
 005D67B2    call        user32.SetWindowPos
 005D67B7    pop         esi
 005D67B8    pop         ebx
 005D67B9    ret
end;*}

Initialization
//0079D794
{*
 0079D794    sub         dword ptr ds:[7CA7D8],1
>0079D79B    jae         0079D7DB
 0079D79D    mov         eax,5D67BC
 0079D7A2    call        @InitImports
 0079D7A7    call        005CCF84
 0079D7AC    push        79D7DC;'TaskbarCreated'
 0079D7B1    call        user32.RegisterWindowMessageW
 0079D7B6    mov         [007CA7DC],eax;gvar_007CA7DC:LongWord
 0079D7BB    push        79D7FC;'TaskbarButtonCreated'
 0079D7C0    call        user32.RegisterWindowMessageW
 0079D7C5    mov         [007CA7E0],eax;gvar_007CA7E0:LongWord
 0079D7CA    mov         eax,5BEDC8;FindGlobalComponent:Classes.TComponent
 0079D7CF    call        0048BAC0
 0079D7D4    xor         eax,eax
 0079D7D6    mov         [007CA7F4],eax;gvar_007CA7F4:LongWord
 0079D7DB    ret
*}
Finalization
//005D67CC
{*
 005D67CC    inc         dword ptr ds:[7CA7D8]
>005D67D2    jne         005D6800
 005D67D4    cmp         dword ptr ds:[7CA7C8],0;Application:TApplication
>005D67DB    je          005D67E2
 005D67DD    call        005BEAE4
 005D67E2    cmp         dword ptr ds:[7CA7E8],0;gvar_007CA7E8:THandle
>005D67E9    je          005D67F6
 005D67EB    mov         eax,[007CA7E8];gvar_007CA7E8:THandle
 005D67F0    push        eax
 005D67F1    call        kernel32.CloseHandle
 005D67F6    mov         eax,5BEDC8;FindGlobalComponent:Classes.TComponent
 005D67FB    call        0048BB18
 005D6800    ret
*}
end.