//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit82;

interface

uses
  SysUtils, Classes;

    procedure AfterConstruction;//005C0C04
    procedure sub_005C0C3C;//005C0C3C
    constructor Create(AOwner:TComponent; Dummy:Integer);//005C0DB0
    procedure BeforeDestruction;//005C0DF8
    destructor Destroy();//005C0E70
    procedure sub_005C0FC4;//005C0FC4
    procedure sub_005C1040;//005C1040
    procedure CMFontChanged(var Message:TMessage);//005C10A0
    procedure Notification(AComponent:TComponent; Operation:TOperation);//005C1124
    procedure ReadState(Reader:TReader);//005C1280
    procedure DefineProperties(Filer:TFiler);//005C14F8
    //function GetLeft:?;//005C1650
    //function GetTop:?;//005C1670
    procedure BeginAutoDrag;//005C16B4
    procedure ChangeScale(M:Integer; D:Integer);//005C16B8
    procedure sub_005C1740(?:TCustomForm);//005C1740
    function IsStoredClientHeight(Value:Integer):Boolean;//005C179C
    function IsStoredHeight(Value:Integer):Boolean;//005C17AC
    function IsStoredAutoScroll(Value:Boolean):Boolean;//005C17D4
    //procedure sub_005C1808(?:?);//005C1808
    procedure sub_005C1828;//005C1828
    procedure sub_005C1848;//005C1848
    procedure sub_005C1868;//005C1868
    procedure sub_005C187C;//005C187C
    procedure sub_005C1890;//005C1890
    //procedure GetClientRect(?:?);//005C18A8
    //procedure GetChildren(Root:TComponent; Proc:TGetChildProc; ?:?);//005C1930
    procedure sub_005C199C;//005C199C
    //function sub_005C19B4:?;//005C19B4
    procedure SetChildOrder(Child:Classes.TComponent; Order:Integer);//005C19E8
    procedure SetParentBiDiMode(Value:Boolean);//005C1A7C
    procedure SetClientWidth(Value:Integer);//005C1AA4
    procedure SetClientHeight(Value:Integer);//005C1AD0
    procedure SetVisible(Value:Boolean);//005C1AFC
    procedure sub_004E8418;//005C1B68
    function WantChildKey(Child:TControl; var Message:TMessage):Boolean;//005C1BD4
    //procedure sub_005C1BD8(?:?);//005C1BD8
    //procedure sub_005C1C94(?:?; ?:?; ?:?);//005C1C94
    //procedure sub_005C1CD4(?:?);//005C1CD4
    //procedure sub_005C2314(?:?);//005C2314
    //function sub_005C2360(?:?):?;//005C2360
    //procedure sub_005C23A0(?:?);//005C23A0
    procedure AlignControls(AControl:TControl; var ARect:TRect);//005C2584
    procedure CMBiDiModeChanged(Message:Messages.TMessage);//005C2640
    procedure CMParentBiDiModeChanged;//005C26D8
    //procedure sub_005C276C(?:?);//005C276C
    //procedure sub_005C2830(?:?; ?:?);//005C2830
    procedure SetBorderIcons(Value:TBorderIcons);//005C28F8
    //procedure sub_005C29E0(?:?; ?:?; ?:?);//005C29E0
    procedure SetBorderStyle(Value:TFormBorderStyle);//005C2AF4
    procedure Dock(NewDockSite:TWinControl; ARect:TRect);//005C2C94
    //procedure sub_004E668C(?:?; ?:?);//005C2CD8
    //function sub_005C2D30(?:TWinControl):?;//005C2D30
    //function sub_005C2D64(?:TCustomForm):?;//005C2D64
    function get_MDIChildren(I:Integer):TForm;//005C2DB0
    //function sub_005C2E00(?:?; ?:?):?;//005C2E00
    //function sub_005C2E30(?:TCustomForm):?;//005C2E30
    //function sub_005C2ECC(?:TForm):?;//005C2ECC
    procedure SetIcon(Value:TIcon);//005C2ED4
    function IsStoredActiveControl(Value:TPersistent):Boolean;//005C2EE0
    function IsStoredIcon(Value:TIcon):Boolean;//005C2EE8
    procedure SetFormStyle(Value:TFormStyle);//005C2F10
    //procedure sub_005C3084(?:TCustomForm; ?:?);//005C3084
    procedure sub_005C30B8(?:TCustomForm);//005C30B8
    procedure SetObjectMenuItem(Value:TMenuItem);//005C3134
    procedure SetWindowMenu(Value:TMenuItem);//005C3158
    procedure SetMenu(Value:TComponent);//005C3180
    //function GetPixelsPerInch:?;//005C33C0
    //function sub_005C33D4(?:TCustomForm):?;//005C33D4
    //function sub_005C33FC(?:TCustomForm):?;//005C33FC
    procedure SetPixelsPerInch(Value:Integer);//005C3424
    procedure SetPosition(Value:TPosition);//005C3458
    procedure SetPopupMode(Value:TPopupMode);//005C3474
    procedure set_PopupParent(Value:TCustomForm);//005C34C8
    function GetScaled:Boolean;//005C352C
    procedure SetScaled(Value:Boolean);//005C3538
    procedure CMColorChanged(var Message:Messages.TMessage);//005C3568
    //function sub_005C359C(?:TCustomForm):?;//005C359C
    procedure CMCtl3DChanged;//005C35B4
    procedure CMFontChanged;//005C35FC
    procedure CMMenuChanged;//005C361C
    procedure SetWindowState(Value:TWindowState);//005C3638
    procedure sub_005C3678(?:TCustomForm);//005C3678
    //function sub_005C3A24:?;//005C3A24
    procedure CreateParams(var Params:TCreateParams);//005C3AA0
    procedure CreateWnd;//005C40AC
    procedure sub_005C42C4;//005C42C4
    procedure sub_005C4440;//005C4440
    procedure sub_005C4574;//005C4574
    //procedure DefaultHandler(var Message:?);//005C45D0
    procedure SetActiveControl(Control:TWinControl);//005C4634
    procedure DefocusControl(Control:TWinControl; Removing:Boolean);//005C4710
    procedure FocusControl(Control:TWinControl);//005C4758
    function SetFocusedControl(Control:TWinControl):Boolean;//005C47C4
    procedure sub_005C4A64;//005C4A64
    procedure sub_005C4A68(?:TCustomForm);//005C4A68
    //procedure sub_005C4AE0(?:TCustomForm; ?:?);//005C4AE0
    procedure SendCancelMode(Sender:TControl);//005C4B58
    //procedure sub_005C4BA8(?:TCustomForm; ?:?);//005C4BA8
    //procedure sub_005C4C50(?:?; ?:TWinControl; ?:TCustomForm);//005C4C50
    procedure sub_005C4C9C;//005C4C9C
    procedure sub_005C4CCC;//005C4CCC
    procedure sub_005C4CFC;//005C4CFC
    //function sub_005C4D1C(?:TCustomForm):?;//005C4D1C
    //procedure sub_005C4D38(?:?);//005C4D38
    //procedure sub_004E5D58(?:?);//005C4F34
    //procedure WMPaint(?:?);//005C4FD8
    //procedure WMNCPaint(?:?);//005C5048
    //procedure WMEraseBkgnd(?:?);//005C5070
    //procedure WMEraseBkgnd(?:?);//005C50D0
    //procedure WMQueryDragIcon(?:?);//005C5104
    //procedure sub_005C5118(?:?);//005C5118
    procedure WMNCCreate;//005C5214
    //procedure WMNCHitTest(?:?);//005C5248
    procedure WMNCLButtonDown(Message:Messages.TWMNCLButtonDown);//005C5260
    //procedure WMDestroy(?:?);//005C52EC
    procedure WMCommand(Message:Messages.TWMCharToItem);//005C548C
    //procedure WMInitMenuPopup(?:?);//005C54DC
    //procedure WMMenuChar(?:?);//005C54F4
    //procedure WMMenuSelect(?:?);//005C552C
    //procedure WMActivate(?:?);//005C55D4
    //procedure sub_005C5618(?:?);//005C5618
    procedure WMClose;//005C5650
    //procedure WMQueryEndSession(?:?);//005C5658
    //procedure CMAppSysCommand(?:?);//005C5674
    //procedure WMSysCommand(?:?);//005C56CC
    //procedure WMShowWindow(?:?);//005C5754
    //procedure WMMDIActivate(?:?);//005C580C
    //procedure WMNextDlgCtl(?:?);//005C5864
    //procedure WMEnterMenuLoop(?:?);//005C5890
    //function sub_005C58AC(?:TMenu; ?:?):?;//005C58AC
    //function sub_005C58EC(?:TWinControl):?;//005C58EC
    //procedure sub_005C5924(?:TWinControl; ?:?; ?:?; ?:?);//005C5924
    //procedure WMHelp(?:?);//005C5958
    //procedure WMGetMinMaxInfo(?:?);//005C5ABC
    //procedure sub_005C5B2C(?:?; ?:?; ?:Integer; ?:?);//005C5B2C
    procedure WMWindowPosChangingMsg(Message:Messages.TWMWindowPosChanging);//005C5B58
    //procedure WMNCCalcSize(?:?);//005C5D38
    //procedure sub_004F1B70(?:?);//005C5D8C
    procedure sub_005C5D94;//005C5D94
    //procedure sub_005C5DAC(?:?);//005C5DAC
    //procedure sub_005C5DD4(?:?);//005C5DD4
    procedure CMActivate;//005C5EDC
    procedure CMDeactivate;//005C5F00
    //procedure CMDialogKey(?:?);//005C5F24
    procedure CMShowingChanged;//005C5FC0
    procedure CMIconChanged;//005C6638
    procedure CMRelease;//005C6658
    procedure CMTextChanged;//005C6660
    procedure CMUIActivate;//005C66B0
    //procedure CMParentFontChanged(?:?);//005C66B8
    //procedure CMDockNotification(?:?);//005C66F0
    procedure CMRawX11Event;//005C671C
    procedure Close;//005C672C
    function CloseQuery:Boolean;//005C67D0
    procedure sub_005C6834(?:TCustomForm);//005C6834
    procedure Hide;//005C68CC
    procedure Show;//005C68D4
    procedure SetFocus;//005C68EC
    procedure RecreateAsPopup(AWindowHandle:HWND);//005C6978
    procedure Release;//005C69A8
    function ShowModal:Integer;//005C69C4
    //procedure sub_005C6D1C(?:TControl; ?:?);//005C6D1C
    procedure sub_005C6DA0;//005C6DA0
    procedure sub_005C6E18(?:TCustomForm);//005C6E18
    procedure sub_005C6E6C;//005C6E6C
    procedure WMSettingChange(Message:Messages.TMessage);//005C6E8C
    //function sub_005C6EAC(?:TControl; ?:?):?;//005C6EAC
    //function sub_005C6EDC(?:TControl; ?:?):?;//005C6EDC
    //procedure CMActionExecute(?:?);//005C6F64
    //function sub_005C6FB8(?:TControl; ?:?):?;//005C6FB8
    //function sub_005C6FE0(?:TControl; ?:?):?;//005C6FE0
    //procedure CMActionUpdate(?:?);//005C7070
    //function sub_005C70C4(?:TComponent; ?:?):?;//005C70C4
    procedure IsShortCut(var Message:TWMKey);//005C7140
    //function QueryInterface(const IID:TGUID; var Obj:Pointer):?; stdcall;//005C71B8
    procedure MouseWheelHandler(var Message:TMessage);//005C71F4
    procedure sub_005C722C;//005C722C
    procedure sub_005C723C(?:TCustomForm);//005C723C
    procedure SetAlphaBlend(Value:Boolean);//005C7318
    procedure SetAlphaBlendValue(Value:Byte);//005C732C
    procedure SetTransparentColorValue(Value:TColor);//005C7340
    procedure SetTransparentColor(Value:Boolean);//005C7354
    procedure sub_005C7390(?:TCustomForm; ?:TCreateParams);//005C7390
    procedure SetLeft(Value:Integer);//005C73BC
    procedure SetTop(Value:Integer);//005C73F8
    procedure SetGlassFrame(Value:TGlassFrame);//005C7438
    procedure sub_005C7444(?:TCustomForm);//005C7444
    //procedure sub_005C753C(?:TControl; ?:?);//005C753C
    //procedure sub_005C7678(?:TCustomForm; ?:?);//005C7678

implementation

//005C0C04
procedure TCustomForm.AfterConstruction;
begin
{*
 005C0C04    push        ebx
 005C0C05    push        esi
 005C0C06    mov         ebx,eax
 005C0C08    cmp         byte ptr [ebx+3B1],0
>005C0C0F    jne         005C0C1B
 005C0C11    mov         eax,ebx
 005C0C13    mov         edx,dword ptr [eax]
 005C0C15    call        dword ptr [edx+118]
 005C0C1B    test        byte ptr [ebx+3BC],20
>005C0C22    je          005C0C36
 005C0C24    mov         eax,ebx
 005C0C26    mov         si,0FFAD
 005C0C2A    call        @CallDynaInst
 005C0C2F    and         byte ptr [ebx+3BC],0DF
 005C0C36    pop         esi
 005C0C37    pop         ebx
 005C0C38    ret
*}
end;

//005C0C3C
procedure TCustomForm.sub_005C0C3C;
begin
{*
 005C0C3C    push        ebx
 005C0C3D    push        esi
 005C0C3E    mov         ebx,eax
 005C0C40    mov         eax,[005C0DA8];0x2800AB gvar_005C0DA8
 005C0C45    mov         dword ptr [ebx+60],eax;TCustomForm.FControlStyle:TControlStyle
 005C0C48    xor         edx,edx
 005C0C4A    mov         eax,ebx
 005C0C4C    call        TCustomForm.SetLeft
 005C0C51    xor         edx,edx
 005C0C53    mov         eax,ebx
 005C0C55    call        TCustomForm.SetTop
 005C0C5A    mov         edx,140
 005C0C5F    mov         eax,ebx
 005C0C61    call        TControl.SetWidth
 005C0C66    mov         edx,0F0
 005C0C6B    mov         eax,ebx
 005C0C6D    call        TControl.SetHeight
 005C0C72    mov         dl,1
 005C0C74    mov         eax,[004C2694];TIcon
 005C0C79    call        TIcon.Create;TIcon.Create
 005C0C7E    mov         esi,eax
 005C0C80    mov         dword ptr [ebx+2D0],esi;TCustomForm.FIcon:TIcon
 005C0C86    push        31
 005C0C88    call        user32.GetSystemMetrics
 005C0C8D    mov         edx,eax
 005C0C8F    mov         eax,esi
 005C0C91    mov         ecx,dword ptr [eax]
 005C0C93    call        dword ptr [ecx+44];TIcon.SetWidth
 005C0C96    push        32
 005C0C98    call        user32.GetSystemMetrics
 005C0C9D    mov         edx,eax
 005C0C9F    mov         eax,dword ptr [ebx+2D0];TCustomForm.FIcon:TIcon
 005C0CA5    mov         ecx,dword ptr [eax]
 005C0CA7    call        dword ptr [ecx+38];TIcon.SetHeight
 005C0CAA    mov         eax,dword ptr [ebx+2D0];TCustomForm.FIcon:TIcon
 005C0CB0    mov         dword ptr [eax+14],ebx;TIcon.?f14:TCustomForm
 005C0CB3    mov         dword ptr [eax+10],5C1740;TIcon.FOnChange:TNotifyEvent sub_005C1740
 005C0CBA    mov         byte ptr [ebx+2C3],2;TCustomForm.FPosition:TPosition
 005C0CC1    mov         dl,1
 005C0CC3    mov         eax,[004D9044];TControlCanvas
 005C0CC8    call        TCanvas.Create;TControlCanvas.Create
 005C0CCD    mov         esi,eax
 005C0CCF    mov         dword ptr [ebx+2C8],esi;TCustomForm.FCanvas:TControlCanvas
 005C0CD5    mov         edx,ebx
 005C0CD7    mov         eax,esi
 005C0CD9    call        TControlCanvas.SetControl
 005C0CDE    movzx       eax,byte ptr ds:[5C0DAC];0x7 gvar_005C0DAC
 005C0CE5    mov         byte ptr [ebx+2BC],al;TCustomForm.FBorderIcons:TBorderIcons
 005C0CEB    mov         byte ptr [ebx+2BD],2;TCustomForm.FBorderStyle:TFormBorderStyle
 005C0CF2    mov         byte ptr [ebx+2BE],0;TCustomForm.FWindowState:TWindowState
 005C0CF9    mov         byte ptr [ebx+2C4],3;TCustomForm.FDefaultMonitor:TDefaultMonitor
 005C0D00    mov         byte ptr [ebx+2D4],0;TCustomForm.FInCMParentBiDiModeChanged:Boolean
 005C0D07    mov         eax,[007CA7CC];Screen:TScreen
 005C0D0C    mov         eax,dword ptr [eax+50]
 005C0D0F    mov         dword ptr [ebx+2E8],eax;TCustomForm.FPixelsPerInch:Integer
 005C0D15    mov         ecx,ebx
 005C0D17    mov         dl,1
 005C0D19    mov         eax,[005B6DC0];TGlassFrame
 005C0D1E    call        TGlassFrame.Create;TGlassFrame.Create
 005C0D23    mov         esi,eax
 005C0D25    mov         dword ptr [ebx+3AC],esi;TCustomForm.FGlassFrame:TGlassFrame
 005C0D2B    mov         dword ptr [esi+24],ebx;TGlassFrame.?f24:TCustomForm
 005C0D2E    mov         dword ptr [esi+20],5C7444;TGlassFrame.FOnChange:TNotifyEvent sub_005C7444
 005C0D35    mov         byte ptr [ebx+3B0],0;TCustomForm.FRefreshGlassFrame:Boolean
 005C0D3C    mov         byte ptr [ebx+2C7],1;TCustomForm.FPrintScale:TPrintScale
 005C0D43    mov         edx,dword ptr [ebx]
 005C0D45    mov         eax,edx
 005C0D47    mov         dword ptr [ebx+0B8],eax;TCustomForm.FFloatingDockSiteClass:TWinControlClass
 005C0D4D    mov         byte ptr [ebx+379],0FF;TCustomForm.FAlphaBlendValue:byte
 005C0D54    xor         eax,eax
 005C0D56    mov         dword ptr [ebx+3A4],eax;TCustomForm.FTransparentColorValue:TColor
 005C0D5C    xor         edx,edx
 005C0D5E    mov         eax,ebx
 005C0D60    call        TForm.SetVisible
 005C0D65    xor         edx,edx
 005C0D67    mov         eax,ebx
 005C0D69    call        TGroupBox.SetParentColor
 005C0D6E    xor         edx,edx
 005C0D70    mov         eax,ebx
 005C0D72    call        TGroupBox.SetParentFont
 005C0D77    xor         edx,edx
 005C0D79    mov         eax,ebx
 005C0D7B    mov         ecx,dword ptr [eax]
 005C0D7D    call        dword ptr [ecx+0F4];TGroupBox.SetParentDoubleBuffered
 005C0D83    mov         dl,1
 005C0D85    mov         eax,ebx
 005C0D87    call        TWinControl.SetCtl3D
 005C0D8C    mov         edx,ebx
 005C0D8E    mov         eax,[007CA7CC];Screen:TScreen
 005C0D93    call        005C81A0
 005C0D98    mov         dword ptr [ebx+39C],0A;TCustomForm.FSnapBuffer:Integer
 005C0DA2    pop         esi
 005C0DA3    pop         ebx
 005C0DA4    ret
*}
end;

//005C0DB0
constructor TInputQueryForm.Create(AOwner:TComponent; Dummy:Integer);
begin
{*
 005C0DB0    push        ebp
 005C0DB1    mov         ebp,esp
 005C0DB3    push        ebx
 005C0DB4    push        esi
 005C0DB5    push        edi
 005C0DB6    test        dl,dl
>005C0DB8    je          005C0DC2
 005C0DBA    add         esp,0FFFFFFF0
 005C0DBD    call        @ClassCreate
 005C0DC2    mov         ebx,edx
 005C0DC4    mov         edi,eax
 005C0DC6    xor         edx,edx
 005C0DC8    mov         eax,edi
 005C0DCA    call        TScrollingWinControl.Create
 005C0DCF    mov         eax,edi
 005C0DD1    mov         si,0FFA3
 005C0DD5    call        @CallDynaInst;TCustomForm.sub_005C0C3C
 005C0DDA    mov         eax,edi
 005C0DDC    test        bl,bl
>005C0DDE    je          005C0DEF
 005C0DE0    call        @AfterConstruction
 005C0DE5    pop         dword ptr fs:[0]
 005C0DEC    add         esp,0C
 005C0DEF    mov         eax,edi
 005C0DF1    pop         edi
 005C0DF2    pop         esi
 005C0DF3    pop         ebx
 005C0DF4    pop         ebp
 005C0DF5    ret         4
*}
end;

//005C0DF8
procedure TCustomForm.BeforeDestruction;
begin
{*
 005C0DF8    push        esi
 005C0DF9    mov         esi,eax
 005C0DFB    mov         eax,[007C4E68];^gvar_007CA3B8:IInterface
 005C0E00    mov         eax,dword ptr [eax]
 005C0E02    mov         edx,dword ptr [eax]
 005C0E04    call        dword ptr [edx+14]
 005C0E07    mov         eax,esi
 005C0E09    call        TComponent.Destroying
 005C0E0E    mov         eax,[007CA7CC];Screen:TScreen
 005C0E13    mov         eax,dword ptr [eax+84]
 005C0E19    mov         edx,esi
 005C0E1B    xor         ecx,ecx
 005C0E1D    call        TList.RemoveItem
 005C0E22    xor         edx,edx
 005C0E24    mov         eax,esi
 005C0E26    call        RemoveFixupReferences
 005C0E2B    cmp         dword ptr [esi+2F0],0
>005C0E32    je          005C0E3F
 005C0E34    mov         eax,dword ptr [esi+2F0]
 005C0E3A    mov         edx,dword ptr [eax]
 005C0E3C    call        dword ptr [edx+0C]
 005C0E3F    cmp         byte ptr [esi+2C2],1
>005C0E46    je          005C0E58
 005C0E48    test        byte ptr [esi+3BC],4
>005C0E4F    jne         005C0E58
 005C0E51    mov         eax,esi
 005C0E53    call        TCustomForm.Hide
 005C0E58    cmp         byte ptr [esi+3B1],0
>005C0E5F    jne         005C0E6B
 005C0E61    mov         eax,esi
 005C0E63    mov         edx,dword ptr [eax]
 005C0E65    call        dword ptr [edx+11C]
 005C0E6B    pop         esi
 005C0E6C    ret
*}
end;

//005C0E70
destructor TCustomForm.Destroy();
begin
{*
 005C0E70    push        ebp
 005C0E71    mov         ebp,esp
 005C0E73    add         esp,0FFFFFFE4
 005C0E76    call        @BeforeDestruction
 005C0E7B    mov         byte ptr [ebp-5],dl
 005C0E7E    mov         dword ptr [ebp-4],eax
 005C0E81    mov         edx,dword ptr [ebp-4]
 005C0E84    mov         eax,[007CA7C8];Application:TApplication
 005C0E89    call        TApplication.RemovePopupForm
 005C0E8E    mov         eax,dword ptr [ebp-4]
 005C0E91    test        byte ptr [eax+1C],8;TCustomForm.FComponentState:TComponentState
>005C0E95    jne         005C0EA3
 005C0E97    mov         eax,[007C4E68];^gvar_007CA3B8:IInterface
 005C0E9C    mov         eax,dword ptr [eax]
 005C0E9E    mov         edx,dword ptr [eax]
 005C0EA0    call        dword ptr [edx+14]
 005C0EA3    xor         edx,edx
 005C0EA5    push        ebp
 005C0EA6    push        5C0FAB
 005C0EAB    push        dword ptr fs:[edx]
 005C0EAE    mov         dword ptr fs:[edx],esp
 005C0EB1    mov         eax,dword ptr [ebp-4]
 005C0EB4    cmp         byte ptr [eax+3B1],0;TCustomForm.FOldCreateOrder:Boolean
>005C0EBB    je          005C0EC8
 005C0EBD    mov         eax,dword ptr [ebp-4]
 005C0EC0    mov         edx,dword ptr [eax]
 005C0EC2    call        dword ptr [edx+11C];TCustomForm.sub_005C1040
 005C0EC8    xor         edx,edx
 005C0ECA    mov         eax,dword ptr [ebp-4]
 005C0ECD    call        005C4BA8
 005C0ED2    mov         eax,dword ptr [ebp-4]
 005C0ED5    call        TWinControl.HandleAllocated
 005C0EDA    test        al,al
>005C0EDC    je          005C0EE9
 005C0EDE    mov         eax,dword ptr [ebp-4]
 005C0EE1    mov         edx,dword ptr [eax]
 005C0EE3    call        dword ptr [edx+0DC];TCustomForm.sub_005C4574
 005C0EE9    mov         edx,dword ptr [ebp-4]
 005C0EEC    mov         eax,[007CA7CC];Screen:TScreen
 005C0EF1    call        005C81D8
 005C0EF6    mov         eax,dword ptr [ebp-4]
 005C0EF9    add         eax,2C8;TCustomForm.FCanvas:TControlCanvas
 005C0EFE    mov         dword ptr [ebp-0C],eax
 005C0F01    mov         eax,dword ptr [ebp-0C]
 005C0F04    mov         eax,dword ptr [eax]
 005C0F06    mov         edx,dword ptr [ebp-0C]
 005C0F09    xor         ecx,ecx
 005C0F0B    mov         dword ptr [edx],ecx
 005C0F0D    call        TObject.Free
 005C0F12    mov         eax,dword ptr [ebp-4]
 005C0F15    add         eax,2D0;TCustomForm.FIcon:TIcon
 005C0F1A    mov         dword ptr [ebp-10],eax
 005C0F1D    mov         eax,dword ptr [ebp-10]
 005C0F20    mov         eax,dword ptr [eax]
 005C0F22    mov         edx,dword ptr [ebp-10]
 005C0F25    xor         ecx,ecx
 005C0F27    mov         dword ptr [edx],ecx
 005C0F29    call        TObject.Free
 005C0F2E    mov         eax,dword ptr [ebp-4]
 005C0F31    add         eax,37C;TCustomForm.FPopupChildren:TList
 005C0F36    mov         dword ptr [ebp-14],eax
 005C0F39    mov         eax,dword ptr [ebp-14]
 005C0F3C    mov         eax,dword ptr [eax]
 005C0F3E    mov         edx,dword ptr [ebp-14]
 005C0F41    xor         ecx,ecx
 005C0F43    mov         dword ptr [edx],ecx
 005C0F45    call        TObject.Free
 005C0F4A    mov         eax,dword ptr [ebp-4]
 005C0F4D    add         eax,388;TCustomForm.FRecreateChildren:TList
 005C0F52    mov         dword ptr [ebp-18],eax
 005C0F55    mov         eax,dword ptr [ebp-18]
 005C0F58    mov         eax,dword ptr [eax]
 005C0F5A    mov         edx,dword ptr [ebp-18]
 005C0F5D    xor         ecx,ecx
 005C0F5F    mov         dword ptr [edx],ecx
 005C0F61    call        TObject.Free
 005C0F66    mov         eax,dword ptr [ebp-4]
 005C0F69    add         eax,3AC;TCustomForm.FGlassFrame:TGlassFrame
 005C0F6E    mov         dword ptr [ebp-1C],eax
 005C0F71    mov         eax,dword ptr [ebp-1C]
 005C0F74    mov         eax,dword ptr [eax]
 005C0F76    mov         edx,dword ptr [ebp-1C]
 005C0F79    xor         ecx,ecx
 005C0F7B    mov         dword ptr [edx],ecx
 005C0F7D    call        TObject.Free
 005C0F82    movzx       edx,byte ptr [ebp-5]
 005C0F86    and         dl,0FC
 005C0F89    mov         eax,dword ptr [ebp-4]
 005C0F8C    call        TScrollingWinControl.Destroy
 005C0F91    xor         eax,eax
 005C0F93    pop         edx
 005C0F94    pop         ecx
 005C0F95    pop         ecx
 005C0F96    mov         dword ptr fs:[eax],edx
 005C0F99    push        5C0FB2
 005C0F9E    mov         eax,[007C4E68];^gvar_007CA3B8:IInterface
 005C0FA3    mov         eax,dword ptr [eax]
 005C0FA5    mov         edx,dword ptr [eax]
 005C0FA7    call        dword ptr [edx+18]
 005C0FAA    ret
>005C0FAB    jmp         @HandleFinally
>005C0FB0    jmp         005C0F9E
 005C0FB2    cmp         byte ptr [ebp-5],0
>005C0FB6    jle         005C0FC0
 005C0FB8    mov         eax,dword ptr [ebp-4]
 005C0FBB    call        @ClassDestroy
 005C0FC0    mov         esp,ebp
 005C0FC2    pop         ebp
 005C0FC3    ret
*}
end;

//005C0FC4
procedure sub_005C0FC4;
begin
{*
 005C0FC4    push        ebp
 005C0FC5    mov         ebp,esp
 005C0FC7    push        ecx
 005C0FC8    push        ebx
 005C0FC9    push        esi
 005C0FCA    push        edi
 005C0FCB    mov         dword ptr [ebp-4],eax
 005C0FCE    mov         eax,dword ptr [ebp-4]
 005C0FD1    cmp         word ptr [eax+36A],0;TCustomForm.?f36A:word
>005C0FD9    je          005C1024
 005C0FDB    xor         eax,eax
 005C0FDD    push        ebp
 005C0FDE    push        5C1005
 005C0FE3    push        dword ptr fs:[eax]
 005C0FE6    mov         dword ptr fs:[eax],esp
 005C0FE9    mov         ebx,dword ptr [ebp-4]
 005C0FEC    mov         edx,dword ptr [ebp-4]
 005C0FEF    mov         eax,dword ptr [ebx+36C];TCustomForm.FPopupWnds:TPopupWndArray
 005C0FF5    call        dword ptr [ebx+368];TCustomForm.FOnCreate
 005C0FFB    xor         eax,eax
 005C0FFD    pop         edx
 005C0FFE    pop         ecx
 005C0FFF    pop         ecx
 005C1000    mov         dword ptr fs:[eax],edx
>005C1003    jmp         005C1024
>005C1005    jmp         @HandleAnyException
 005C100A    mov         eax,dword ptr [ebp-4]
 005C100D    mov         si,0FFA4
 005C1011    call        @CallDynaInst;TCustomForm.sub_005C722C
 005C1016    test        al,al
>005C1018    jne         005C101F
 005C101A    call        @RaiseAgain
 005C101F    call        @DoneExcept
 005C1024    mov         eax,dword ptr [ebp-4]
 005C1027    test        byte ptr [eax+3BC],2;TCustomForm.FFormState:TFormState
>005C102E    je          005C103A
 005C1030    mov         dl,1
 005C1032    mov         eax,dword ptr [ebp-4]
 005C1035    call        TForm.SetVisible
 005C103A    pop         edi
 005C103B    pop         esi
 005C103C    pop         ebx
 005C103D    pop         ecx
 005C103E    pop         ebp
 005C103F    ret
*}
end;

//005C1040
procedure sub_005C1040;
begin
{*
 005C1040    push        ebp
 005C1041    mov         ebp,esp
 005C1043    push        ecx
 005C1044    push        ebx
 005C1045    push        esi
 005C1046    push        edi
 005C1047    mov         dword ptr [ebp-4],eax
 005C104A    mov         eax,dword ptr [ebp-4]
 005C104D    cmp         word ptr [eax+372],0;TCustomForm.?f372:word
>005C1055    je          005C1098
 005C1057    xor         eax,eax
 005C1059    push        ebp
 005C105A    push        5C1081
 005C105F    push        dword ptr fs:[eax]
 005C1062    mov         dword ptr fs:[eax],esp
 005C1065    mov         ebx,dword ptr [ebp-4]
 005C1068    mov         edx,dword ptr [ebp-4]
 005C106B    mov         eax,dword ptr [ebx+374];TCustomForm.FInternalPopupParentWnd:HWND
 005C1071    call        dword ptr [ebx+370];TCustomForm.FOnDestroy
 005C1077    xor         eax,eax
 005C1079    pop         edx
 005C107A    pop         ecx
 005C107B    pop         ecx
 005C107C    mov         dword ptr fs:[eax],edx
>005C107F    jmp         005C1098
>005C1081    jmp         @HandleAnyException
 005C1086    mov         edx,dword ptr [ebp-4]
 005C1089    mov         eax,[007CA7C8];Application:TApplication
 005C108E    call        TApplication.HandleException
 005C1093    call        @DoneExcept
 005C1098    pop         edi
 005C1099    pop         esi
 005C109A    pop         ebx
 005C109B    pop         ecx
 005C109C    pop         ebp
 005C109D    ret
*}
end;

//005C10A0
procedure TCustomForm.CMFontChanged(var Message:TMessage);
begin
{*
 005C10A0    push        ebx
 005C10A1    push        esi
 005C10A2    push        edi
 005C10A3    mov         ebx,eax
 005C10A5    mov         eax,ebx
 005C10A7    call        TWinControl.CMFontChanged
 005C10AC    cmp         dword ptr [ebx+2B4],0;TCustomForm.FActiveControl:TWinControl
>005C10B3    je          005C10E7
 005C10B5    cmp         dword ptr [ebx+40],0;TCustomForm.FParent:TWinControl
>005C10B9    je          005C10C1
 005C10BB    test        byte ptr [ebx+1C],10;TCustomForm.FComponentState:TComponentState
>005C10BF    jne         005C10E7
 005C10C1    mov         edi,dword ptr [ebx+2B4];TCustomForm.FActiveControl:TWinControl
 005C10C7    xor         eax,eax
 005C10C9    mov         dword ptr [ebx+2B4],eax;TCustomForm.FActiveControl:TWinControl
 005C10CF    mov         eax,edi
 005C10D1    mov         si,0FFB4
 005C10D5    call        @CallDynaInst;TWinControl.sub_004EFD3C
 005C10DA    test        al,al
>005C10DC    je          005C10E7
 005C10DE    mov         edx,edi
 005C10E0    mov         eax,ebx
 005C10E2    call        TCustomForm.SetActiveControl
 005C10E7    cmp         byte ptr [ebx+6B],0;TCustomForm.FParentFont:Boolean
>005C10EB    je          005C1106
 005C10ED    mov         eax,[007CA7C8];Application:TApplication
 005C10F2    mov         edx,dword ptr [eax+54]
 005C10F5    mov         eax,dword ptr [ebx+74];TCustomForm.FFont:TFont
 005C10F8    mov         ecx,dword ptr [eax]
 005C10FA    call        dword ptr [ecx+8];TFont.Assign
 005C10FD    mov         dl,1
 005C10FF    mov         eax,ebx
 005C1101    call        TGroupBox.SetParentFont
 005C1106    mov         eax,dword ptr [ebx+3AC];TCustomForm.FGlassFrame:TGlassFrame
 005C110C    call        TGlassFrame.FrameExtended
 005C1111    test        al,al
>005C1113    je          005C111E
 005C1115    xor         edx,edx
 005C1117    mov         eax,ebx
 005C1119    call        005C7444
 005C111E    pop         edi
 005C111F    pop         esi
 005C1120    pop         ebx
 005C1121    ret
*}
end;

//005C1124
procedure TCustomForm.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 005C1124    push        ebx
 005C1125    push        esi
 005C1126    push        edi
 005C1127    mov         ebx,ecx
 005C1129    mov         esi,edx
 005C112B    mov         edi,eax
 005C112D    mov         ecx,ebx
 005C112F    mov         edx,esi
 005C1131    mov         eax,edi
 005C1133    call        TWinControl.Notification
 005C1138    mov         eax,ebx
 005C113A    sub         al,1
>005C113C    jb          005C1145
>005C113E    je          005C1188
>005C1140    jmp         005C1263
 005C1145    test        byte ptr [edi+1C],1;TCustomForm.FComponentState:TComponentState
>005C1149    jne         005C1263
 005C114F    cmp         dword ptr [edi+2D8],0;TCustomForm.FMenu:TMainMenu
>005C1156    jne         005C1263
 005C115C    cmp         edi,dword ptr [esi+4];TComponent.FOwner:TComponent
>005C115F    jne         005C1263
 005C1165    mov         eax,esi
 005C1167    mov         edx,dword ptr ds:[5ABC3C];TMainMenu
 005C116D    call        @IsClass
 005C1172    test        al,al
>005C1174    je          005C1263
 005C117A    mov         edx,esi
 005C117C    mov         eax,edi
 005C117E    call        TForm.SetMenu
>005C1183    jmp         005C1263
 005C1188    cmp         esi,dword ptr [edi+2D8];TCustomForm.FMenu:TMainMenu
>005C118E    jne         005C1199
 005C1190    xor         edx,edx
 005C1192    mov         eax,edi
 005C1194    call        TForm.SetMenu
 005C1199    cmp         esi,dword ptr [edi+2E4];TCustomForm.FWindowMenu:TMenuItem
>005C119F    jne         005C11AA
 005C11A1    xor         edx,edx
 005C11A3    mov         eax,edi
 005C11A5    call        TForm.SetWindowMenu
 005C11AA    cmp         esi,dword ptr [edi+2EC];TCustomForm.FObjectMenuItem:TMenuItem
>005C11B0    jne         005C11BB
 005C11B2    xor         edx,edx
 005C11B4    mov         eax,edi
 005C11B6    call        TForm.SetObjectMenuItem
 005C11BB    cmp         esi,dword ptr [edi+384];TCustomForm.FPopupParent:TCustomForm
>005C11C1    jne         005C11CC
 005C11C3    xor         edx,edx
 005C11C5    mov         eax,edi
 005C11C7    call        TCustomForm.set_PopupParent
 005C11CC    cmp         esi,dword ptr [edi+2B0];TCustomForm.FTaskbarHandler:TTaskbarHandler
>005C11D2    jne         005C11DD
 005C11D4    xor         edx,edx
 005C11D6    mov         eax,edi
 005C11D8    call        005C3084
 005C11DD    mov         eax,dword ptr [edi+37C];TCustomForm.FPopupChildren:TList
 005C11E3    test        eax,eax
>005C11E5    je          005C1208
 005C11E7    mov         edx,esi
 005C11E9    call        TList.IndexOf
 005C11EE    test        eax,eax
>005C11F0    jl          005C1208
 005C11F2    mov         edx,eax
 005C11F4    mov         eax,dword ptr [edi+37C];TCustomForm.FPopupChildren:TList
 005C11FA    call        TList.Delete
 005C11FF    mov         edx,edi
 005C1201    mov         eax,esi
 005C1203    call        TComponent.RemoveFreeNotification
 005C1208    mov         eax,dword ptr [edi+388];TCustomForm.FRecreateChildren:TList
 005C120E    test        eax,eax
>005C1210    je          005C1233
 005C1212    mov         edx,esi
 005C1214    call        TList.IndexOf
 005C1219    test        eax,eax
>005C121B    jl          005C1233
 005C121D    mov         edx,eax
 005C121F    mov         eax,dword ptr [edi+388];TCustomForm.FRecreateChildren:TList
 005C1225    call        TList.Delete
 005C122A    mov         edx,edi
 005C122C    mov         eax,esi
 005C122E    call        TComponent.RemoveFreeNotification
 005C1233    cmp         esi,dword ptr [edi+390];TCustomForm.FInternalPopupParent:TCustomForm
>005C1239    jne         005C1243
 005C123B    xor         eax,eax
 005C123D    mov         dword ptr [edi+390],eax;TCustomForm.FInternalPopupParent:TCustomForm
 005C1243    cmp         esi,dword ptr [edi+304];TCustomForm.FActiveOleControl:TWinControl
>005C1249    jne         005C1253
 005C124B    xor         eax,eax
 005C124D    mov         dword ptr [edi+304],eax;TCustomForm.FActiveOleControl:TWinControl
 005C1253    cmp         esi,dword ptr [edi+2B0];TCustomForm.FTaskbarHandler:TTaskbarHandler
>005C1259    jne         005C1263
 005C125B    xor         eax,eax
 005C125D    mov         dword ptr [edi+2B0],eax;TCustomForm.FTaskbarHandler:TTaskbarHandler
 005C1263    cmp         dword ptr [edi+2E0],0;TCustomForm.FDesigner:IDesignerHook
>005C126A    je          005C127B
 005C126C    mov         ecx,ebx
 005C126E    mov         edx,esi
 005C1270    mov         eax,dword ptr [edi+2E0];TCustomForm.FDesigner:IDesignerHook
 005C1276    mov         ebx,dword ptr [eax]
 005C1278    call        dword ptr [ebx+10]
 005C127B    pop         edi
 005C127C    pop         esi
 005C127D    pop         ebx
 005C127E    ret
*}
end;

//005C1280
procedure TCustomForm.ReadState(Reader:TReader);
begin
{*
 005C1280    push        ebp
 005C1281    mov         ebp,esp
 005C1283    add         esp,0FFFFFFF0
 005C1286    push        ebx
 005C1287    push        esi
 005C1288    push        edi
 005C1289    mov         esi,edx
 005C128B    mov         dword ptr [ebp-4],eax
 005C128E    mov         eax,dword ptr [ebp-4]
 005C1291    call        TWinControl.DisableAlign
 005C1296    xor         edx,edx
 005C1298    push        ebp
 005C1299    push        5C14E4
 005C129E    push        dword ptr fs:[edx]
 005C12A1    mov         dword ptr fs:[edx],esp
 005C12A4    mov         eax,dword ptr [ebp-4]
 005C12A7    xor         edx,edx
 005C12A9    mov         dword ptr [eax+2F4],edx;TCustomForm.FClientWidth:Integer
 005C12AF    mov         eax,dword ptr [ebp-4]
 005C12B2    xor         edx,edx
 005C12B4    mov         dword ptr [eax+2F8],edx;TCustomForm.FClientHeight:Integer
 005C12BA    xor         ebx,ebx
 005C12BC    mov         eax,dword ptr [ebp-4]
 005C12BF    mov         eax,dword ptr [eax]
 005C12C1    call        TObject.ClassParent
 005C12C6    cmp         eax,dword ptr ds:[5B865C];TForm
>005C12CC    jne         005C12E0
 005C12CE    movzx       eax,byte ptr ds:[7C7C51];gvar_007C7C51
 005C12D5    xor         al,1
 005C12D7    mov         edx,dword ptr [ebp-4]
 005C12DA    mov         byte ptr [edx+3B1],al;TCustomForm.FOldCreateOrder:Boolean
 005C12E0    mov         edx,esi
 005C12E2    mov         eax,dword ptr [ebp-4]
 005C12E5    call        TWinControl.ReadState
 005C12EA    mov         eax,dword ptr [ebp-4]
 005C12ED    cmp         dword ptr [eax+2E8],0;TCustomForm.FPixelsPerInch:Integer
>005C12F4    je          005C1457
 005C12FA    mov         edx,3
 005C12FF    mov         eax,6
 005C1304    call        CheckWin32Version
 005C1309    test        al,al
>005C130B    je          005C134B
 005C130D    mov         eax,dword ptr [ebp-4]
 005C1310    call        TCustomForm.GetLeft
 005C1315    inc         eax
 005C1316    mov         dword ptr [ebp-0C],eax
 005C1319    mov         eax,dword ptr [ebp-4]
 005C131C    call        TCustomForm.GetTop
 005C1321    inc         eax
 005C1322    mov         dword ptr [ebp-8],eax
 005C1325    lea         edx,[ebp-0C]
 005C1328    xor         ecx,ecx
 005C132A    mov         eax,[007CA7CC];Screen:TScreen
 005C132F    call        TScreen.MonitorFromPoint
 005C1334    test        eax,eax
>005C1336    je          005C1341
 005C1338    call        005C7C70
 005C133D    mov         edi,eax
>005C133F    jmp         005C1353
 005C1341    mov         eax,[007CA7CC];Screen:TScreen
 005C1346    mov         edi,dword ptr [eax+50]
>005C1349    jmp         005C1353
 005C134B    mov         eax,[007CA7CC];Screen:TScreen
 005C1350    mov         edi,dword ptr [eax+50]
 005C1353    mov         eax,dword ptr [ebp-4]
 005C1356    mov         eax,dword ptr [eax+1B4];TCustomForm.FReserved:Pointer
 005C135C    test        eax,eax
>005C135E    jne         005C136B
 005C1360    mov         eax,dword ptr [ebp-4]
 005C1363    mov         esi,dword ptr [eax+2E8];TCustomForm.FPixelsPerInch:Integer
>005C1369    jmp         005C136D
 005C136B    mov         esi,eax
 005C136D    cmp         edi,esi
>005C136F    je          005C1457
 005C1375    mov         bl,1
 005C1377    mov         eax,dword ptr [ebp-4]
 005C137A    mov         eax,dword ptr [eax+74];TCustomForm.FFont:TFont
 005C137D    mov         dword ptr [ebp-10],eax
 005C1380    push        esi
 005C1381    push        edi
 005C1382    mov         eax,dword ptr [ebp-10]
 005C1385    mov         eax,dword ptr [eax+10];TFont.FResource:PResource
 005C1388    mov         eax,dword ptr [eax+18]
 005C138B    push        eax
 005C138C    call        kernel32.MulDiv
 005C1391    mov         edx,eax
 005C1393    mov         eax,dword ptr [ebp-4]
 005C1396    mov         eax,dword ptr [eax+74];TCustomForm.FFont:TFont
 005C1399    call        TFont.SetHeight
 005C139E    mov         ecx,esi
 005C13A0    mov         edx,edi
 005C13A2    mov         eax,dword ptr [ebp-4]
 005C13A5    call        TScrollingWinControl.ScaleScrollBars
 005C13AA    mov         ecx,esi
 005C13AC    mov         edx,edi
 005C13AE    mov         eax,dword ptr [ebp-4]
 005C13B1    call        004E68E8
 005C13B6    mov         ecx,esi
 005C13B8    mov         edx,edi
 005C13BA    mov         eax,dword ptr [ebp-4]
 005C13BD    call        004EF7C8
 005C13C2    mov         eax,dword ptr [ebp-4]
 005C13C5    test        byte ptr [eax+98],4;TCustomForm.FScalingFlags:TScalingFlags
>005C13CC    je          005C13E8
 005C13CE    push        esi
 005C13CF    push        edi
 005C13D0    mov         eax,dword ptr [ebp-4]
 005C13D3    mov         eax,dword ptr [eax+2F4];TCustomForm.FClientWidth:Integer
 005C13D9    push        eax
 005C13DA    call        kernel32.MulDiv
 005C13DF    mov         edx,dword ptr [ebp-4]
 005C13E2    mov         dword ptr [edx+2F4],eax;TCustomForm.FClientWidth:Integer
 005C13E8    mov         eax,dword ptr [ebp-4]
 005C13EB    test        byte ptr [eax+98],8;TCustomForm.FScalingFlags:TScalingFlags
>005C13F2    je          005C140E
 005C13F4    push        esi
 005C13F5    push        edi
 005C13F6    mov         eax,dword ptr [ebp-4]
 005C13F9    mov         eax,dword ptr [eax+2F8];TCustomForm.FClientHeight:Integer
 005C13FF    push        eax
 005C1400    call        kernel32.MulDiv
 005C1405    mov         edx,dword ptr [ebp-4]
 005C1408    mov         dword ptr [edx+2F8],eax;TCustomForm.FClientHeight:Integer
 005C140E    mov         eax,dword ptr [ebp-4]
 005C1411    test        byte ptr [eax+98],20;TCustomForm.FScalingFlags:TScalingFlags
>005C1418    je          005C144E
 005C141A    push        esi
 005C141B    push        edi
 005C141C    mov         eax,dword ptr [ebp-4]
 005C141F    mov         eax,dword ptr [eax+284];TCustomForm.FDesignSize:TPoint
 005C1425    push        eax
 005C1426    call        kernel32.MulDiv
 005C142B    mov         edx,dword ptr [ebp-4]
 005C142E    mov         dword ptr [edx+284],eax;TCustomForm.FDesignSize:TPoint
 005C1434    push        esi
 005C1435    push        edi
 005C1436    mov         eax,dword ptr [ebp-4]
 005C1439    mov         eax,dword ptr [eax+288]
 005C143F    push        eax
 005C1440    call        kernel32.MulDiv
 005C1445    mov         edx,dword ptr [ebp-4]
 005C1448    mov         dword ptr [edx+288],eax
 005C144E    mov         eax,dword ptr [ebp-4]
 005C1451    mov         dword ptr [eax+1B4],edi;TCustomForm.FReserved:Pointer
 005C1457    mov         eax,dword ptr [ebp-4]
 005C145A    mov         eax,dword ptr [eax+2F4];TCustomForm.FClientWidth:Integer
 005C1460    test        eax,eax
>005C1462    jle         005C146E
 005C1464    mov         edx,eax
 005C1466    mov         eax,dword ptr [ebp-4]
 005C1469    call        TControl.SetClientWidth
 005C146E    mov         eax,dword ptr [ebp-4]
 005C1471    mov         eax,dword ptr [eax+2F8];TCustomForm.FClientHeight:Integer
 005C1477    test        eax,eax
>005C1479    jle         005C1485
 005C147B    mov         edx,eax
 005C147D    mov         eax,dword ptr [ebp-4]
 005C1480    call        TControl.SetClientHeight
 005C1485    mov         eax,dword ptr [ebp-4]
 005C1488    movzx       edx,byte ptr ds:[5C14F4];0x0 gvar_005C14F4
 005C148F    mov         byte ptr [eax+98],dl;TCustomForm.FScalingFlags:TScalingFlags
 005C1495    test        bl,bl
>005C1497    jne         005C14BD
 005C1499    mov         ecx,1
 005C149E    mov         edx,1
 005C14A3    mov         eax,dword ptr [ebp-4]
 005C14A6    call        TScrollingWinControl.ScaleScrollBars
 005C14AB    mov         ecx,1
 005C14B0    mov         edx,1
 005C14B5    mov         eax,dword ptr [ebp-4]
 005C14B8    call        004EF7C8
 005C14BD    push        0
 005C14BF    xor         ecx,ecx
 005C14C1    mov         edx,0B03D
 005C14C6    mov         eax,dword ptr [ebp-4]
 005C14C9    call        TControl.Perform
 005C14CE    xor         eax,eax
 005C14D0    pop         edx
 005C14D1    pop         ecx
 005C14D2    pop         ecx
 005C14D3    mov         dword ptr fs:[eax],edx
 005C14D6    push        5C14EB
 005C14DB    mov         eax,dword ptr [ebp-4]
 005C14DE    call        TWinControl.EnableAlign
 005C14E3    ret
>005C14E4    jmp         @HandleFinally
>005C14E9    jmp         005C14DB
 005C14EB    pop         edi
 005C14EC    pop         esi
 005C14ED    pop         ebx
 005C14EE    mov         esp,ebp
 005C14F0    pop         ebp
 005C14F1    ret
*}
end;

//005C14F8
procedure TCustomForm.DefineProperties(Filer:TFiler);
begin
{*
 005C14F8    push        ebx
 005C14F9    push        esi
 005C14FA    push        edi
 005C14FB    mov         esi,edx
 005C14FD    mov         ebx,eax
 005C14FF    mov         edx,esi
 005C1501    mov         eax,ebx
 005C1503    call        TWinControl.DefineProperties
 005C1508    push        0
 005C150A    push        0
 005C150C    push        ebx
 005C150D    push        5C1634
 005C1512    movzx       ecx,byte ptr [ebx+70];TCustomForm.FIsControl:Boolean
 005C1516    xor         cl,1
 005C1519    mov         edx,5C156C;'PixelsPerInch'
 005C151E    mov         eax,esi
 005C1520    mov         edi,dword ptr [eax]
 005C1522    call        dword ptr [edi+4];TFiler.DefineProperty
 005C1525    push        ebx
 005C1526    push        5C1600
 005C152B    push        ebx
 005C152C    push        5C1618
 005C1531    movzx       ecx,byte ptr [ebx+70];TCustomForm.FIsControl:Boolean
 005C1535    xor         cl,1
 005C1538    mov         edx,5C1594;'TextHeight'
 005C153D    mov         eax,esi
 005C153F    mov         edi,dword ptr [eax]
 005C1541    call        dword ptr [edi+4];TFiler.DefineProperty
 005C1544    push        ebx
 005C1545    push        5C15E0
 005C154A    push        0
 005C154C    push        0
 005C154E    xor         ecx,ecx
 005C1550    mov         edx,5C15B8;'IgnoreFontProperty'
 005C1555    mov         eax,esi
 005C1557    mov         ebx,dword ptr [eax]
 005C1559    call        dword ptr [ebx+4];TFiler.DefineProperty
 005C155C    pop         edi
 005C155D    pop         esi
 005C155E    pop         ebx
 005C155F    ret
*}
end;

//005C1650
{*function TCustomForm.GetLeft:?;
begin
 005C1650    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005C1654    je          005C166B
 005C1656    cmp         dword ptr [eax+40],0;TCustomForm.FParent:TWinControl
>005C165A    je          005C166B
 005C165C    mov         eax,dword ptr [eax+18];TCustomForm.FDesignInfo:Integer
 005C165F    and         eax,0FFFF0000
 005C1664    shr         eax,10
 005C1667    movsx       eax,ax
 005C166A    ret
 005C166B    mov         eax,dword ptr [eax+50];TCustomForm.FLeft:Integer
 005C166E    ret
end;*}

//005C1670
{*function TCustomForm.GetTop:?;
begin
 005C1670    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005C1674    je          005C1688
 005C1676    cmp         dword ptr [eax+40],0;TCustomForm.FParent:TWinControl
>005C167A    je          005C1688
 005C167C    movzx       eax,word ptr [eax+18];TCustomForm.FDesignInfo:Integer
 005C1680    and         ax,0FFFFFFFF
 005C1684    movsx       eax,ax
 005C1687    ret
 005C1688    mov         eax,dword ptr [eax+54];TCustomForm.FTop:Integer
 005C168B    ret
end;*}

//005C16B4
procedure TCustomForm.BeginAutoDrag;
begin
{*
 005C16B4    ret
*}
end;

//005C16B8
procedure TCustomForm.ChangeScale(M:Integer; D:Integer);
begin
{*
 005C16B8    push        ebx
 005C16B9    push        esi
 005C16BA    push        edi
 005C16BB    push        ebp
 005C16BC    mov         edi,ecx
 005C16BE    mov         esi,edx
 005C16C0    mov         ebx,eax
 005C16C2    mov         ecx,edi
 005C16C4    mov         edx,esi
 005C16C6    mov         eax,ebx
 005C16C8    call        TScrollingWinControl.ScaleScrollBars
 005C16CD    mov         ecx,edi
 005C16CF    mov         edx,esi
 005C16D1    mov         eax,ebx
 005C16D3    call        004EF7C8
 005C16D8    mov         eax,ebx
 005C16DA    call        TForm.IsStoredClientHeight
 005C16DF    test        al,al
>005C16E1    je          005C1715
 005C16E3    mov         eax,ebx
 005C16E5    call        TControl.GetClientHeight
 005C16EA    mov         ebp,eax
 005C16EC    push        edi
 005C16ED    push        esi
 005C16EE    mov         eax,ebx
 005C16F0    call        TControl.GetClientWidth
 005C16F5    push        eax
 005C16F6    call        kernel32.MulDiv
 005C16FB    mov         edx,eax
 005C16FD    mov         eax,ebx
 005C16FF    call        TForm.SetClientWidth
 005C1704    push        edi
 005C1705    push        esi
 005C1706    push        ebp
 005C1707    call        kernel32.MulDiv
 005C170C    mov         edx,eax
 005C170E    mov         eax,ebx
 005C1710    call        TForm.SetClientHeight
 005C1715    mov         ebp,dword ptr [ebx+74];TCustomForm.FFont:TFont
 005C1718    push        edi
 005C1719    push        esi
 005C171A    mov         eax,dword ptr [ebp+10];TFont.FResource:PResource
 005C171D    mov         eax,dword ptr [eax+18]
 005C1720    push        eax
 005C1721    call        kernel32.MulDiv
 005C1726    mov         edx,eax
 005C1728    mov         eax,dword ptr [ebx+74];TCustomForm.FFont:TFont
 005C172B    call        TFont.SetHeight
 005C1730    mov         ecx,edi
 005C1732    mov         edx,esi
 005C1734    mov         eax,ebx
 005C1736    call        004E68E8
 005C173B    pop         ebp
 005C173C    pop         edi
 005C173D    pop         esi
 005C173E    pop         ebx
 005C173F    ret
*}
end;

//005C1740
procedure sub_005C1740(?:TCustomForm);
begin
{*
 005C1740    push        esi
 005C1741    mov         esi,eax
 005C1743    mov         eax,[007C4770];^gvar_007CA5E0
 005C1748    cmp         byte ptr [eax],0
>005C174B    je          005C177F
 005C174D    mov         eax,esi
 005C174F    call        TWinControl.HandleAllocated
 005C1754    test        al,al
>005C1756    je          005C1799
 005C1758    cmp         byte ptr [esi+2BD],3
>005C175F    je          005C1799
 005C1761    mov         eax,esi
 005C1763    call        005C4D1C
 005C1768    push        eax
 005C1769    push        1
 005C176B    push        80
 005C1770    mov         eax,esi
 005C1772    call        TWinControl.GetHandle
 005C1777    push        eax
 005C1778    call        user32.SendMessageW
 005C177D    pop         esi
 005C177E    ret
 005C177F    mov         eax,esi
 005C1781    call        TWinControl.GetHandle
 005C1786    call        005BE99C
 005C178B    test        eax,eax
>005C178D    je          005C1799
 005C178F    mov         eax,esi
 005C1791    mov         edx,dword ptr [eax]
 005C1793    call        dword ptr [edx+0A8]
 005C1799    pop         esi
 005C179A    ret
*}
end;

//005C179C
function TForm.IsStoredClientHeight(Value:Integer):Boolean;
begin
{*
 005C179C    push        ebx
 005C179D    mov         ebx,eax
 005C179F    mov         eax,ebx
 005C17A1    call        TForm.IsStoredHeight
 005C17A6    xor         al,1
 005C17A8    pop         ebx
 005C17A9    ret
*}
end;

//005C17AC
function TForm.IsStoredHeight(Value:Integer):Boolean;
begin
{*
 005C17AC    cmp         byte ptr [eax+294],0;TForm.FAutoScroll:Boolean
>005C17B3    jne         005C17D0
 005C17B5    mov         edx,dword ptr [eax+298];TForm.FHorzScrollBar:TControlScrollBar
 005C17BB    cmp         dword ptr [edx+10],0;TControlScrollBar.FRange:Integer
>005C17BF    jne         005C17D0
 005C17C1    mov         eax,dword ptr [eax+2A8];TForm.FVertScrollBar:TControlScrollBar
 005C17C7    cmp         dword ptr [eax+10],0;TControlScrollBar.FRange:Integer
>005C17CB    jne         005C17D0
 005C17CD    xor         eax,eax
 005C17CF    ret
 005C17D0    mov         al,1
 005C17D2    ret
*}
end;

//005C17D4
function TForm.IsStoredAutoScroll(Value:Boolean):Boolean;
begin
{*
 005C17D4    push        ebx
 005C17D5    mov         ebx,eax
 005C17D7    mov         eax,ebx
 005C17D9    call        TForm.IsStoredActiveControl
 005C17DE    test        al,al
>005C17E0    je          005C17FF
 005C17E2    movzx       eax,byte ptr [ebx+2BD];TForm.FBorderStyle:TFormBorderStyle
 005C17E9    sub         al,2
>005C17EB    je          005C17F5
 005C17ED    sub         al,3
>005C17EF    je          005C17F5
 005C17F1    xor         eax,eax
>005C17F3    jmp         005C17F7
 005C17F5    mov         al,1
 005C17F7    cmp         al,byte ptr [ebx+294];TForm.FAutoScroll:Boolean
>005C17FD    je          005C1803
 005C17FF    xor         eax,eax
 005C1801    pop         ebx
 005C1802    ret
 005C1803    mov         al,1
 005C1805    pop         ebx
 005C1806    ret
*}
end;

//005C1808
{*procedure TCustomForm.sub_005C1808(?:?);
begin
 005C1808    push        ebx
 005C1809    cmp         word ptr [eax+32A],0;TCustomForm.?f32A:word
>005C1811    je          005C1825
 005C1813    mov         ecx,edx
 005C1815    mov         ebx,eax
 005C1817    mov         edx,eax
 005C1819    mov         eax,dword ptr [ebx+32C];TCustomForm.?f32C:dword
 005C181F    call        dword ptr [ebx+328];TCustomForm.FOnClose
 005C1825    pop         ebx
 005C1826    ret
end;*}

//005C1828
procedure TCustomForm.sub_005C1828;
begin
{*
 005C1828    push        ebx
 005C1829    cmp         word ptr [eax+34A],0;TCustomForm.?f34A:word
>005C1831    je          005C1843
 005C1833    mov         ebx,eax
 005C1835    mov         edx,eax
 005C1837    mov         eax,dword ptr [ebx+34C];TCustomForm.?f34C:dword
 005C183D    call        dword ptr [ebx+348];TCustomForm.FOnHide
 005C1843    pop         ebx
 005C1844    ret
*}
end;

//005C1848
procedure TCustomForm.sub_005C1848;
begin
{*
 005C1848    push        ebx
 005C1849    cmp         word ptr [eax+362],0;TCustomForm.?f362:word
>005C1851    je          005C1863
 005C1853    mov         ebx,eax
 005C1855    mov         edx,eax
 005C1857    mov         eax,dword ptr [ebx+364];TCustomForm.FPopupParent:TCustomForm
 005C185D    call        dword ptr [ebx+360];TCustomForm.FOnShow
 005C1863    pop         ebx
 005C1864    ret
*}
end;

//005C1868
procedure sub_005C1868;
begin
{*
 005C1868    mov         ecx,dword ptr [eax+2B0];TCustomForm.FTaskbarHandler:TTaskbarHandler
 005C186E    test        ecx,ecx
>005C1870    je          005C1879
 005C1872    mov         eax,ecx
 005C1874    mov         ecx,dword ptr [eax]
 005C1876    call        dword ptr [ecx+4C];@AbstractError
 005C1879    ret
*}
end;

//005C187C
procedure sub_005C187C;
begin
{*
 005C187C    mov         edx,dword ptr [eax+2B0];TCustomForm.FTaskbarHandler:TTaskbarHandler
 005C1882    test        edx,edx
>005C1884    je          005C188D
 005C1886    mov         eax,edx
 005C1888    mov         edx,dword ptr [eax]
 005C188A    call        dword ptr [edx+44];@AbstractError
 005C188D    ret
*}
end;

//005C1890
procedure sub_005C1890;
begin
{*
 005C1890    push        ebx
 005C1891    push        esi
 005C1892    mov         esi,dword ptr [eax+2B0];TCustomForm.FTaskbarHandler:TTaskbarHandler
 005C1898    test        esi,esi
>005C189A    je          005C18A3
 005C189C    mov         eax,esi
 005C189E    mov         ebx,dword ptr [eax]
 005C18A0    call        dword ptr [ebx+48];@AbstractError
 005C18A3    pop         esi
 005C18A4    pop         ebx
 005C18A5    ret
*}
end;

//005C18A8
{*procedure TCustomForm.GetClientRect(?:?);
begin
 005C18A8    push        ebx
 005C18A9    push        esi
 005C18AA    push        edi
 005C18AB    mov         esi,edx
 005C18AD    mov         ebx,eax
 005C18AF    mov         eax,ebx
 005C18B1    call        TWinControl.GetHandle
 005C18B6    call        005BE99C
 005C18BB    test        eax,eax
>005C18BD    je          005C1923
 005C18BF    push        0
 005C18C1    push        0
 005C18C3    push        0
 005C18C5    push        0
 005C18C7    push        esi
 005C18C8    call        user32.SetRect
 005C18CD    mov         eax,ebx
 005C18CF    call        TWinControl.GetHandle
 005C18D4    push        0F0
 005C18D6    push        eax
 005C18D7    call        user32.GetWindowLongW
 005C18DC    mov         edi,eax
 005C18DE    mov         eax,ebx
 005C18E0    call        TWinControl.GetHandle
 005C18E5    push        0EC
 005C18E7    push        eax
 005C18E8    call        user32.GetWindowLongW
 005C18ED    push        eax
 005C18EE    cmp         dword ptr [ebx+2D8],0;TCustomForm.FMenu:TMainMenu
 005C18F5    setne       al
 005C18F8    neg         al
 005C18FA    sbb         eax,eax
 005C18FC    push        eax
 005C18FD    push        edi
 005C18FE    push        esi
 005C18FF    call        user32.AdjustWindowRectEx
 005C1904    mov         eax,dword ptr [ebx+5C];TCustomForm.FHeight:Integer
 005C1907    sub         eax,dword ptr [esi+0C]
 005C190A    add         eax,dword ptr [esi+4]
 005C190D    push        eax
 005C190E    mov         eax,dword ptr [ebx+58];TCustomForm.FWidth:Integer
 005C1911    sub         eax,dword ptr [esi+8]
 005C1914    add         eax,dword ptr [esi]
 005C1916    push        eax
 005C1917    push        0
 005C1919    push        0
 005C191B    push        esi
 005C191C    call        user32.SetRect
>005C1921    jmp         005C192C
 005C1923    mov         edx,esi
 005C1925    mov         eax,ebx
 005C1927    call        TWinControl.GetClientRect
 005C192C    pop         edi
 005C192D    pop         esi
 005C192E    pop         ebx
 005C192F    ret
end;*}

//005C1930
{*procedure TCustomForm.GetChildren(Root:TComponent; Proc:TGetChildProc; ?:?);
begin
 005C1930    push        ebp
 005C1931    mov         ebp,esp
 005C1933    add         esp,0FFFFFFF8
 005C1936    push        ebx
 005C1937    push        esi
 005C1938    push        edi
 005C1939    mov         esi,edx
 005C193B    mov         ebx,eax
 005C193D    push        dword ptr [ebp+0C]
 005C1940    push        dword ptr [ebp+8]
 005C1943    mov         edx,esi
 005C1945    mov         eax,ebx
 005C1947    call        TWinControl.GetChildren
 005C194C    cmp         ebx,esi
>005C194E    jne         005C1992
 005C1950    mov         eax,ebx
 005C1952    call        TComponent.GetComponentCount
 005C1957    dec         eax
 005C1958    test        eax,eax
>005C195A    jl          005C1992
 005C195C    inc         eax
 005C195D    mov         dword ptr [ebp-8],eax
 005C1960    mov         dword ptr [ebp-4],0
 005C1967    mov         edx,dword ptr [ebp-4]
 005C196A    mov         eax,ebx
 005C196C    call        TComponent.GetComponent
 005C1971    mov         edi,eax
 005C1973    mov         eax,edi
 005C1975    mov         si,0FFF0
 005C1979    call        @CallDynaInst;TComponent.sub_0049EC8C
 005C197E    test        al,al
>005C1980    jne         005C198A
 005C1982    mov         edx,edi
 005C1984    mov         eax,dword ptr [ebp+0C]
 005C1987    call        dword ptr [ebp+8]
 005C198A    inc         dword ptr [ebp-4]
 005C198D    dec         dword ptr [ebp-8]
>005C1990    jne         005C1967
 005C1992    pop         edi
 005C1993    pop         esi
 005C1994    pop         ebx
 005C1995    pop         ecx
 005C1996    pop         ecx
 005C1997    pop         ebp
 005C1998    ret         8
end;*}

//005C199C
procedure TCustomForm.sub_005C199C;
begin
{*
 005C199C    mov         edx,dword ptr [eax+278];TCustomForm.FHandle:HWND
 005C19A2    test        edx,edx
>005C19A4    je          005C19AF
 005C19A6    push        4
 005C19A8    push        edx
 005C19A9    call        user32.GetWindow
 005C19AE    ret
 005C19AF    xor         eax,eax
 005C19B1    ret
*}
end;

//005C19B4
{*function sub_005C19B4:?;
begin
 005C19B4    push        esi
 005C19B5    mov         esi,eax
 005C19B7    mov         eax,esi
 005C19B9    call        004E9BD0
 005C19BE    test        al,al
>005C19C0    je          005C19C6
 005C19C2    mov         al,1
 005C19C4    pop         esi
 005C19C5    ret
 005C19C6    cmp         dword ptr [esi+0A0],0;TCustomForm.FHostDockSite:TWinControl
>005C19CD    jne         005C19E1
 005C19CF    mov         eax,esi
 005C19D1    mov         edx,dword ptr [eax]
 005C19D3    call        dword ptr [edx+74];TCustomForm.sub_004E9BFC
 005C19D6    mov         ecx,dword ptr [esi]
 005C19D8    mov         edx,ecx
 005C19DA    cmp         edx,eax
 005C19DC    sete        al
>005C19DF    jmp         005C19E3
 005C19E1    xor         eax,eax
 005C19E3    pop         esi
 005C19E4    ret
end;*}

//005C19E8
procedure TCustomForm.SetChildOrder(Child:Classes.TComponent; Order:Integer);
begin
{*
 005C19E8    push        ebx
 005C19E9    push        esi
 005C19EA    push        edi
 005C19EB    push        ebp
 005C19EC    add         esp,0FFFFFFF4
 005C19EF    mov         dword ptr [esp+4],ecx
 005C19F3    mov         dword ptr [esp],edx
 005C19F6    mov         ebp,eax
 005C19F8    mov         eax,dword ptr [esp]
 005C19FB    mov         edx,dword ptr ds:[4DC470];TControl
 005C1A01    call        @IsClass
 005C1A06    test        al,al
>005C1A08    je          005C1A1A
 005C1A0A    mov         ecx,dword ptr [esp+4]
 005C1A0E    mov         edx,dword ptr [esp]
 005C1A11    mov         eax,ebp
 005C1A13    call        TWinControl.SetChildOrder
>005C1A18    jmp         005C1A72
 005C1A1A    mov         eax,ebp
 005C1A1C    call        TWinControl.GetControlCount
 005C1A21    sub         dword ptr [esp+4],eax
 005C1A25    mov         dword ptr [esp+8],0FFFFFFFF
 005C1A2D    mov         eax,ebp
 005C1A2F    call        TComponent.GetComponentCount
 005C1A34    mov         ebx,eax
 005C1A36    dec         ebx
 005C1A37    test        ebx,ebx
>005C1A39    jl          005C1A72
 005C1A3B    inc         ebx
 005C1A3C    xor         edi,edi
 005C1A3E    mov         edx,edi
 005C1A40    mov         eax,ebp
 005C1A42    call        TComponent.GetComponent
 005C1A47    mov         si,0FFF0
 005C1A4B    call        @CallDynaInst;TComponent.sub_0049EC8C
 005C1A50    test        al,al
>005C1A52    jne         005C1A6E
 005C1A54    inc         dword ptr [esp+8]
 005C1A58    mov         eax,dword ptr [esp+8]
 005C1A5C    cmp         eax,dword ptr [esp+4]
>005C1A60    jne         005C1A6E
 005C1A62    mov         edx,edi
 005C1A64    mov         eax,dword ptr [esp]
 005C1A67    call        0049F62C
>005C1A6C    jmp         005C1A72
 005C1A6E    inc         edi
 005C1A6F    dec         ebx
>005C1A70    jne         005C1A3E
 005C1A72    add         esp,0C
 005C1A75    pop         ebp
 005C1A76    pop         edi
 005C1A77    pop         esi
 005C1A78    pop         ebx
 005C1A79    ret
*}
end;

//005C1A7C
procedure TForm.SetParentBiDiMode(Value:Boolean);
begin
{*
 005C1A7C    push        ebx
 005C1A7D    mov         ebx,eax
 005C1A7F    cmp         dl,byte ptr [ebx+72];TForm.FParentBiDiMode:Boolean
>005C1A82    je          005C1AA1
 005C1A84    mov         eax,ebx
 005C1A86    call        TGroupBox.SetParentBiDiMode
 005C1A8B    cmp         dword ptr [ebx+40],0;TForm.FParent:TWinControl
>005C1A8F    jne         005C1AA1
 005C1A91    push        0
 005C1A93    xor         ecx,ecx
 005C1A95    mov         edx,0B03D
 005C1A9A    mov         eax,ebx
 005C1A9C    call        TControl.Perform
 005C1AA1    pop         ebx
 005C1AA2    ret
*}
end;

//005C1AA4
procedure TForm.SetClientWidth(Value:Integer);
begin
{*
 005C1AA4    push        ebx
 005C1AA5    mov         ebx,eax
 005C1AA7    test        byte ptr [ebx+64],8;TForm.FControlState:TControlState
>005C1AAB    je          005C1AC2
 005C1AAD    mov         dword ptr [ebx+2F4],edx;TForm.FClientWidth:Integer
 005C1AB3    movzx       eax,byte ptr ds:[5C1ACC];0x4 gvar_005C1ACC
 005C1ABA    or          byte ptr [ebx+98],al;TForm.FScalingFlags:TScalingFlags
 005C1AC0    pop         ebx
 005C1AC1    ret
 005C1AC2    mov         eax,ebx
 005C1AC4    call        TControl.SetClientWidth
 005C1AC9    pop         ebx
 005C1ACA    ret
*}
end;

//005C1AD0
procedure TForm.SetClientHeight(Value:Integer);
begin
{*
 005C1AD0    push        ebx
 005C1AD1    mov         ebx,eax
 005C1AD3    test        byte ptr [ebx+64],8;TForm.FControlState:TControlState
>005C1AD7    je          005C1AEE
 005C1AD9    mov         dword ptr [ebx+2F8],edx;TForm.FClientHeight:Integer
 005C1ADF    movzx       eax,byte ptr ds:[5C1AF8];0x8 gvar_005C1AF8
 005C1AE6    or          byte ptr [ebx+98],al;TForm.FScalingFlags:TScalingFlags
 005C1AEC    pop         ebx
 005C1AED    ret
 005C1AEE    mov         eax,ebx
 005C1AF0    call        TControl.SetClientHeight
 005C1AF5    pop         ebx
 005C1AF6    ret
*}
end;

//005C1AFC
procedure TForm.SetVisible(Value:Boolean);
begin
{*
 005C1AFC    push        ebx
 005C1AFD    push        esi
 005C1AFE    push        ecx
 005C1AFF    mov         ebx,edx
 005C1B01    mov         esi,eax
 005C1B03    test        byte ptr [esi+3BC],1;TForm.FFormState:TFormState
>005C1B0A    je          005C1B22
 005C1B0C    test        bl,bl
>005C1B0E    je          005C1B19
 005C1B10    or          byte ptr [esi+3BC],2;TForm.FFormState:TFormState
>005C1B17    jmp         005C1B64
 005C1B19    and         byte ptr [esi+3BC],0FD;TForm.FFormState:TFormState
>005C1B20    jmp         005C1B64
 005C1B22    cmp         bl,byte ptr [esi+69];TForm.FVisible:Boolean
 005C1B25    setne       byte ptr [esp]
 005C1B29    test        byte ptr [esp],bl
>005C1B2C    je          005C1B35
 005C1B2E    mov         eax,esi
 005C1B30    call        005C3678
 005C1B35    mov         edx,ebx
 005C1B37    mov         eax,esi
 005C1B39    call        TControl.SetVisible
 005C1B3E    mov         eax,dword ptr [esi+2B0];TForm.FTaskbarHandler:TTaskbarHandler
 005C1B44    test        eax,eax
 005C1B46    setne       dl
 005C1B49    and         dl,byte ptr [esp]
>005C1B4C    je          005C1B64
 005C1B4E    test        byte ptr [esi+1C],8;TForm.FComponentState:TComponentState
>005C1B52    jne         005C1B64
 005C1B54    test        bl,bl
>005C1B56    je          005C1B5F
 005C1B58    mov         edx,dword ptr [eax]
 005C1B5A    call        dword ptr [edx+54];@AbstractError
>005C1B5D    jmp         005C1B64
 005C1B5F    mov         edx,dword ptr [eax]
 005C1B61    call        dword ptr [edx+58];@AbstractError
 005C1B64    pop         edx
 005C1B65    pop         esi
 005C1B66    pop         ebx
 005C1B67    ret
*}
end;

//005C1B68
procedure TCustomForm.sub_004E8418;
begin
{*
 005C1B68    push        ebp
 005C1B69    mov         ebp,esp
 005C1B6B    push        0
 005C1B6D    xor         edx,edx
 005C1B6F    push        ebp
 005C1B70    push        5C1BC7
 005C1B75    push        dword ptr fs:[edx]
 005C1B78    mov         dword ptr fs:[edx],esp
 005C1B7B    cmp         byte ptr [eax+2C2],1;TCustomForm.FFormStyle:TFormStyle
>005C1B82    jne         005C1BB1
 005C1B84    cmp         byte ptr [eax+69],0;TCustomForm.FVisible:Boolean
>005C1B88    je          005C1BB1
 005C1B8A    cmp         dword ptr [eax+40],0;TCustomForm.FParent:TWinControl
>005C1B8E    jne         005C1BB1
 005C1B90    lea         edx,[ebp-4]
 005C1B93    mov         eax,[007C42CC];^SResString233:TResStringRec
 005C1B98    call        LoadResString
 005C1B9D    mov         ecx,dword ptr [ebp-4]
 005C1BA0    mov         dl,1
 005C1BA2    mov         eax,[0046BE9C];EInvalidOperation
 005C1BA7    call        Exception.Create;EInvalidOperation.Create
 005C1BAC    call        @RaiseExcept
 005C1BB1    xor         eax,eax
 005C1BB3    pop         edx
 005C1BB4    pop         ecx
 005C1BB5    pop         ecx
 005C1BB6    mov         dword ptr fs:[eax],edx
 005C1BB9    push        5C1BCE
 005C1BBE    lea         eax,[ebp-4]
 005C1BC1    call        @UStrClr
 005C1BC6    ret
>005C1BC7    jmp         @HandleFinally
>005C1BCC    jmp         005C1BBE
 005C1BCE    pop         ecx
 005C1BCF    pop         ebp
 005C1BD0    ret
*}
end;

//005C1BD4
function TCustomForm.WantChildKey(Child:TControl; var Message:TMessage):Boolean;
begin
{*
 005C1BD4    xor         eax,eax
 005C1BD6    ret
*}
end;

//005C1BD8
{*procedure sub_005C1BD8(?:?);
begin
 005C1BD8    push        ebp
 005C1BD9    mov         ebp,esp
 005C1BDB    add         esp,0FFFFFFF8
 005C1BDE    push        ebx
 005C1BDF    mov         ebx,edx
 005C1BE1    mov         dword ptr [ebp-4],eax
 005C1BE4    mov         eax,dword ptr [ebp-4]
 005C1BE7    mov         eax,dword ptr [eax+40];TCustomForm.FParent:TWinControl
 005C1BEA    cmp         ebx,eax
>005C1BEC    je          005C1C8F
 005C1BF2    cmp         ebx,dword ptr [ebp-4]
>005C1BF5    je          005C1C8F
 005C1BFB    test        eax,eax
 005C1BFD    sete        byte ptr [ebp-5]
 005C1C01    cmp         byte ptr [ebp-5],0
>005C1C05    je          005C1C11
 005C1C07    mov         dl,1
 005C1C09    mov         eax,dword ptr [ebp-4]
 005C1C0C    call        004F2104
 005C1C11    xor         eax,eax
 005C1C13    push        ebp
 005C1C14    push        5C1C88
 005C1C19    push        dword ptr fs:[eax]
 005C1C1C    mov         dword ptr fs:[eax],esp
 005C1C1F    cmp         byte ptr [ebp-5],0
>005C1C23    je          005C1C30
 005C1C25    mov         eax,dword ptr [ebp-4]
 005C1C28    mov         edx,dword ptr [eax]
 005C1C2A    call        dword ptr [edx+0D8];TCustomForm.sub_005C4440
 005C1C30    mov         eax,dword ptr [ebp-4]
 005C1C33    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005C1C37    jne         005C1C44
 005C1C39    mov         eax,dword ptr [ebp-4]
 005C1C3C    xor         edx,edx
 005C1C3E    mov         dword ptr [eax+2B4],edx;TCustomForm.FActiveControl:TWinControl
 005C1C44    mov         eax,dword ptr [ebp-4]
 005C1C47    xor         edx,edx
 005C1C49    mov         dword ptr [eax+2B8],edx;TCustomForm.FFocusedControl:TWinControl
 005C1C4F    mov         edx,ebx
 005C1C51    mov         eax,dword ptr [ebp-4]
 005C1C54    call        004F22F8
 005C1C59    mov         eax,dword ptr [ebp-4]
 005C1C5C    cmp         dword ptr [eax+40],0;TCustomForm.FParent:TWinControl
>005C1C60    jne         005C1C6A
 005C1C62    mov         eax,dword ptr [ebp-4]
 005C1C65    call        TWinControl.UpdateControlState
 005C1C6A    xor         eax,eax
 005C1C6C    pop         edx
 005C1C6D    pop         ecx
 005C1C6E    pop         ecx
 005C1C6F    mov         dword ptr fs:[eax],edx
 005C1C72    push        5C1C8F
 005C1C77    cmp         byte ptr [ebp-5],0
>005C1C7B    je          005C1C87
 005C1C7D    xor         edx,edx
 005C1C7F    mov         eax,dword ptr [ebp-4]
 005C1C82    call        004F2104
 005C1C87    ret
>005C1C88    jmp         @HandleFinally
>005C1C8D    jmp         005C1C77
 005C1C8F    pop         ebx
 005C1C90    pop         ecx
 005C1C91    pop         ecx
 005C1C92    pop         ebp
 005C1C93    ret
end;*}

//005C1C94
{*procedure sub_005C1C94(?:?; ?:?; ?:?);
begin
 005C1C94    push        ebp
 005C1C95    mov         ebp,esp
 005C1C97    push        ebx
 005C1C98    push        esi
 005C1C99    push        edi
 005C1C9A    mov         edi,ecx
 005C1C9C    mov         esi,edx
 005C1C9E    mov         ebx,eax
 005C1CA0    mov         eax,dword ptr [ebp+8]
 005C1CA3    push        eax
 005C1CA4    mov         ecx,edi
 005C1CA6    mov         edx,esi
 005C1CA8    mov         eax,ebx
 005C1CAA    call        0049ECFC
 005C1CAF    cmp         dword ptr [ebx+2E0],0;TCustomForm.FDesigner:IDesignerHook
>005C1CB6    je          005C1CCB
 005C1CB8    mov         eax,dword ptr [ebp+8]
 005C1CBB    push        eax
 005C1CBC    mov         ecx,edi
 005C1CBE    mov         edx,esi
 005C1CC0    mov         eax,dword ptr [ebx+2E0];TCustomForm.FDesigner:IDesignerHook
 005C1CC6    mov         ebx,dword ptr [eax]
 005C1CC8    call        dword ptr [ebx+34]
 005C1CCB    pop         edi
 005C1CCC    pop         esi
 005C1CCD    pop         ebx
 005C1CCE    pop         ebp
 005C1CCF    ret         4
end;*}

//005C1CD4
{*procedure sub_005C1CD4(?:?);
begin
 005C1CD4    push        ebp
 005C1CD5    mov         ebp,esp
 005C1CD7    add         esp,0FFFFFFE8
 005C1CDA    push        ebx
 005C1CDB    push        esi
 005C1CDC    push        edi
 005C1CDD    mov         ebx,edx
 005C1CDF    mov         dword ptr [ebp-4],eax
 005C1CE2    mov         eax,dword ptr [ebx]
 005C1CE4    mov         edx,eax
 005C1CE6    cmp         edx,31E
>005C1CEC    jge         005C1D29
 005C1CEE    cmp         edx,2C
>005C1CF1    jg          005C1D13
>005C1CF3    je          005C20D1
 005C1CF9    add         edx,0FFFFFFFA
 005C1CFC    sub         edx,3
>005C1CFF    jb          005C1E04
 005C1D05    sub         edx,22
>005C1D08    je          005C1FD0
>005C1D0E    jmp         005C2260
 005C1D13    sub         edx,46
>005C1D16    je          005C1F54
 005C1D1C    sub         edx,0CC
>005C1D22    je          005C1D71
>005C1D24    jmp         005C2260
 005C1D29    cmp         edx,0B01B
>005C1D2F    jg          005C1D57
>005C1D31    je          005C1F12
 005C1D37    add         edx,0FFFFFCE2
 005C1D3D    sub         edx,2
>005C1D40    jb          005C21FF
 005C1D46    sub         edx,0ACFA
>005C1D4C    je          005C1F33
>005C1D52    jmp         005C2260
 005C1D57    sub         edx,0B047
>005C1D5D    je          005C1E7E
 005C1D63    sub         edx,12
>005C1D66    je          005C220E
>005C1D6C    jmp         005C2260
 005C1D71    mov         eax,dword ptr [ebx+4]
 005C1D74    and         eax,0FFF0
 005C1D79    cmp         eax,0F120
>005C1D7E    je          005C1DA2
 005C1D80    mov         eax,dword ptr [ebx+4]
 005C1D83    and         eax,0FFF0
 005C1D88    cmp         eax,0F030
>005C1D8D    jne         005C22FB
 005C1D93    mov         eax,[007CA7C8];Application:TApplication
 005C1D98    cmp         byte ptr [eax+40],0
>005C1D9C    je          005C22FB
 005C1DA2    mov         eax,[007CA7C8];Application:TApplication
 005C1DA7    mov         eax,dword ptr [eax+58]
 005C1DAA    cmp         eax,dword ptr [ebp-4]
>005C1DAD    jne         005C22FB
 005C1DB3    mov         eax,[007CA7C8];Application:TApplication
 005C1DB8    cmp         byte ptr [eax+0EB],0
>005C1DBF    je          005C22FB
 005C1DC5    mov         eax,[007CA7C8];Application:TApplication
 005C1DCA    mov         eax,dword ptr [eax+58]
 005C1DCD    call        TWinControl.GetHandle
 005C1DD2    push        eax
 005C1DD3    call        user32.IsIconic
 005C1DD8    cmp         eax,1
 005C1DDB    sbb         eax,eax
 005C1DDD    inc         eax
 005C1DDE    mov         byte ptr [ebp-11],al
 005C1DE1    mov         edx,ebx
 005C1DE3    mov         eax,dword ptr [ebp-4]
 005C1DE6    call        004ECAFC
 005C1DEB    cmp         byte ptr [ebp-11],0
>005C1DEF    je          005C2305
 005C1DF5    mov         eax,[007CA7C8];Application:TApplication
 005C1DFA    call        005CD098
>005C1DFF    jmp         005C2305
 005C1E04    cmp         byte ptr ds:[7A1CAC],0;gvar_007A1CAC
>005C1E0B    je          005C2305
 005C1E11    cmp         dword ptr [ebx],7
>005C1E14    jne         005C22FB
 005C1E1A    mov         eax,dword ptr [ebp-4]
 005C1E1D    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005C1E21    jne         005C22FB
 005C1E27    xor         esi,esi
 005C1E29    mov         eax,dword ptr [ebp-4]
 005C1E2C    cmp         byte ptr [eax+2C2],2;TCustomForm.FFormStyle:TFormStyle
>005C1E33    jne         005C1E52
 005C1E35    mov         eax,dword ptr [ebp-4]
 005C1E38    call        005C2D30
 005C1E3D    test        eax,eax
>005C1E3F    je          005C1E6B
 005C1E41    mov         eax,dword ptr [ebp-4]
 005C1E44    call        005C2D30
 005C1E49    call        TWinControl.GetHandle
 005C1E4E    mov         esi,eax
>005C1E50    jmp         005C1E6B
 005C1E52    mov         eax,dword ptr [ebp-4]
 005C1E55    mov         eax,dword ptr [eax+2B4];TCustomForm.FActiveControl:TWinControl
 005C1E5B    test        eax,eax
>005C1E5D    je          005C1E6B
 005C1E5F    cmp         eax,dword ptr [ebp-4]
>005C1E62    je          005C1E6B
 005C1E64    call        TWinControl.GetHandle
 005C1E69    mov         esi,eax
 005C1E6B    test        esi,esi
>005C1E6D    je          005C22FB
 005C1E73    push        esi
 005C1E74    call        user32.SetFocus
>005C1E79    jmp         005C2305
 005C1E7E    mov         esi,dword ptr [ebx+4]
 005C1E81    xor         edi,edi
>005C1E83    jmp         005C1E96
 005C1E85    mov         eax,esi
 005C1E87    call        FindControl
 005C1E8C    mov         edi,eax
 005C1E8E    push        esi
 005C1E8F    call        user32.GetParent
 005C1E94    mov         esi,eax
 005C1E96    test        esi,esi
>005C1E98    je          005C1E9E
 005C1E9A    test        edi,edi
>005C1E9C    je          005C1E85
 005C1E9E    test        edi,edi
>005C1EA0    je          005C22FB
 005C1EA6    mov         dl,1
 005C1EA8    mov         eax,edi
 005C1EAA    call        GetParentForm
 005C1EAF    mov         esi,eax
 005C1EB1    mov         eax,dword ptr [ebp-4]
 005C1EB4    cmp         edi,dword ptr [eax+2B4];TCustomForm.FActiveControl:TWinControl
>005C1EBA    jne         005C1ECA
 005C1EBC    mov         eax,[007CA7CC];Screen:TScreen
 005C1EC1    cmp         edi,dword ptr [eax+6C]
>005C1EC4    je          005C22FB
 005C1ECA    test        esi,esi
>005C1ECC    je          005C22FB
 005C1ED2    cmp         esi,dword ptr [ebp-4]
>005C1ED5    je          005C1EE5
 005C1ED7    mov         eax,[007CA7CC];Screen:TScreen
 005C1EDC    cmp         esi,dword ptr [eax+70]
>005C1EDF    je          005C22FB
 005C1EE5    mov         eax,dword ptr [esi+2B4];TCustomForm.FActiveControl:TWinControl
 005C1EEB    test        eax,eax
>005C1EED    je          005C1F01
 005C1EEF    cmp         edi,eax
>005C1EF1    je          005C1F01
 005C1EF3    push        0
 005C1EF5    xor         ecx,ecx
 005C1EF7    mov         edx,8
 005C1EFC    call        TControl.Perform
 005C1F01    mov         edx,edi
 005C1F03    mov         eax,esi
 005C1F05    mov         ecx,dword ptr [eax]
 005C1F07    call        dword ptr [ecx+138];TCustomForm.SetFocusedControl
>005C1F0D    jmp         005C22FB
 005C1F12    mov         eax,dword ptr [ebp-4]
 005C1F15    cmp         dword ptr [eax+0A0],0;TCustomForm.FHostDockSite:TWinControl
>005C1F1C    je          005C22FB
 005C1F22    mov         eax,dword ptr [ebp-4]
 005C1F25    mov         si,0FFAB
 005C1F29    call        @CallDynaInst;TCustomForm.sub_005C4CCC
>005C1F2E    jmp         005C22FB
 005C1F33    mov         eax,dword ptr [ebp-4]
 005C1F36    cmp         dword ptr [eax+0A0],0;TCustomForm.FHostDockSite:TWinControl
>005C1F3D    je          005C22FB
 005C1F43    mov         eax,dword ptr [ebp-4]
 005C1F46    mov         si,0FFAD
 005C1F4A    call        @CallDynaInst;TCustomForm.sub_005C4C9C
>005C1F4F    jmp         005C22FB
 005C1F54    mov         eax,dword ptr [ebp-4]
 005C1F57    movzx       eax,word ptr [eax+1C];TCustomForm.FComponentState:TComponentState
 005C1F5B    and         ax,word ptr ds:[5C230C];0x11 gvar_005C230C
 005C1F62    movzx       edx,word ptr ds:[5C2310];0x1 gvar_005C2310
 005C1F69    cmp         dx,ax
>005C1F6C    jne         005C22FB
 005C1F72    mov         eax,dword ptr [ebx+8]
 005C1F75    mov         edx,dword ptr [ebp-4]
 005C1F78    movzx       edx,byte ptr [edx+2C3];TCustomForm.FPosition:TPosition
 005C1F7F    dec         edx
 005C1F80    sub         dl,2
>005C1F83    jae         005C1F97
 005C1F85    mov         edx,dword ptr [ebp-4]
 005C1F88    cmp         byte ptr [edx+2BE],2;TCustomForm.FWindowState:TWindowState
>005C1F8F    je          005C1F97
 005C1F91    mov         edx,eax
 005C1F93    or          dword ptr [edx+18],2
 005C1F97    mov         edx,dword ptr [ebp-4]
 005C1F9A    movzx       edx,byte ptr [edx+2C3];TCustomForm.FPosition:TPosition
 005C1FA1    sub         dl,1
>005C1FA4    je          005C1FAF
 005C1FA6    sub         dl,2
>005C1FA9    jne         005C22FB
 005C1FAF    mov         edx,dword ptr [ebp-4]
 005C1FB2    movzx       edx,byte ptr [edx+2BD];TCustomForm.FBorderStyle:TFormBorderStyle
 005C1FB9    sub         dl,2
>005C1FBC    je          005C1FC7
 005C1FBE    sub         dl,3
>005C1FC1    jne         005C22FB
 005C1FC7    or          dword ptr [eax+18],1
>005C1FCB    jmp         005C22FB
 005C1FD0    mov         eax,dword ptr [ebx+8]
 005C1FD3    mov         dword ptr [ebp-18],eax
 005C1FD6    mov         eax,dword ptr [ebp-18]
 005C1FD9    cmp         dword ptr [eax],1
>005C1FDC    jne         005C22FB
 005C1FE2    mov         eax,dword ptr [ebp-4]
 005C1FE5    cmp         dword ptr [eax+2D8],0;TCustomForm.FMenu:TMainMenu
>005C1FEC    je          005C22FB
 005C1FF2    mov         eax,dword ptr [ebp-18]
 005C1FF5    mov         edx,dword ptr [eax+8]
 005C1FF8    mov         eax,dword ptr [ebp-4]
 005C1FFB    mov         eax,dword ptr [eax+2D8];TCustomForm.FMenu:TMainMenu
 005C2001    xor         ecx,ecx
 005C2003    call        TMenu.FindItem
 005C2008    mov         edi,eax
 005C200A    test        edi,edi
>005C200C    je          005C22FB
 005C2012    mov         dl,1
 005C2014    mov         eax,[004D9044];TControlCanvas
 005C2019    call        TCanvas.Create;TControlCanvas.Create
 005C201E    mov         dword ptr [ebp-0C],eax
 005C2021    xor         eax,eax
 005C2023    push        ebp
 005C2024    push        5C20CA
 005C2029    push        dword ptr fs:[eax]
 005C202C    mov         dword ptr fs:[eax],esp
 005C202F    mov         eax,dword ptr [ebp-18]
 005C2032    mov         eax,dword ptr [eax+18]
 005C2035    push        eax
 005C2036    call        gdi32.SaveDC
 005C203B    mov         dword ptr [ebp-8],eax
 005C203E    xor         eax,eax
 005C2040    push        ebp
 005C2041    push        5C20AD
 005C2046    push        dword ptr fs:[eax]
 005C2049    mov         dword ptr fs:[eax],esp
 005C204C    mov         eax,dword ptr [ebp-18]
 005C204F    mov         edx,dword ptr [eax+18]
 005C2052    mov         eax,dword ptr [ebp-0C]
 005C2055    call        TCanvas.SetHandle
 005C205A    mov         eax,[007CA7CC];Screen:TScreen
 005C205F    mov         edx,dword ptr [eax+90]
 005C2065    mov         eax,dword ptr [ebp-0C]
 005C2068    call        TCanvas.SetFont
 005C206D    mov         eax,dword ptr [ebp-18]
 005C2070    movzx       eax,word ptr [eax+10]
 005C2074    push        eax
 005C2075    mov         eax,dword ptr [ebp-18]
 005C2078    lea         ecx,[eax+1C]
 005C207B    mov         edx,dword ptr [ebp-0C]
 005C207E    mov         eax,edi
 005C2080    call        005B3624
 005C2085    xor         eax,eax
 005C2087    pop         edx
 005C2088    pop         ecx
 005C2089    pop         ecx
 005C208A    mov         dword ptr fs:[eax],edx
 005C208D    push        5C20B4
 005C2092    xor         edx,edx
 005C2094    mov         eax,dword ptr [ebp-0C]
 005C2097    call        TCanvas.SetHandle
 005C209C    mov         eax,dword ptr [ebp-8]
 005C209F    push        eax
 005C20A0    mov         eax,dword ptr [ebp-18]
 005C20A3    mov         eax,dword ptr [eax+18]
 005C20A6    push        eax
 005C20A7    call        gdi32.RestoreDC
 005C20AC    ret
>005C20AD    jmp         @HandleFinally
>005C20B2    jmp         005C2092
 005C20B4    xor         eax,eax
 005C20B6    pop         edx
 005C20B7    pop         ecx
 005C20B8    pop         ecx
 005C20B9    mov         dword ptr fs:[eax],edx
 005C20BC    push        5C2305
 005C20C1    mov         eax,dword ptr [ebp-0C]
 005C20C4    call        TObject.Free
 005C20C9    ret
>005C20CA    jmp         @HandleFinally
>005C20CF    jmp         005C20C1
 005C20D1    mov         esi,dword ptr [ebx+8]
 005C20D4    cmp         dword ptr [esi],1
>005C20D7    jne         005C22FB
 005C20DD    mov         eax,dword ptr [ebp-4]
 005C20E0    cmp         dword ptr [eax+2D8],0;TCustomForm.FMenu:TMainMenu
>005C20E7    je          005C22FB
 005C20ED    mov         edx,dword ptr [esi+8]
 005C20F0    mov         eax,dword ptr [ebp-4]
 005C20F3    mov         eax,dword ptr [eax+2D8];TCustomForm.FMenu:TMainMenu
 005C20F9    xor         ecx,ecx
 005C20FB    call        TMenu.FindItem
 005C2100    mov         edi,eax
 005C2102    test        edi,edi
>005C2104    je          005C22FB
 005C210A    mov         eax,dword ptr [ebp-4]
 005C210D    call        TWinControl.GetHandle
 005C2112    push        eax
 005C2113    call        user32.GetWindowDC
 005C2118    mov         dword ptr [ebp-10],eax
 005C211B    xor         eax,eax
 005C211D    push        ebp
 005C211E    push        5C21F8
 005C2123    push        dword ptr fs:[eax]
 005C2126    mov         dword ptr fs:[eax],esp
 005C2129    mov         dl,1
 005C212B    mov         eax,[004D9044];TControlCanvas
 005C2130    call        TCanvas.Create;TControlCanvas.Create
 005C2135    mov         dword ptr [ebp-0C],eax
 005C2138    xor         eax,eax
 005C213A    push        ebp
 005C213B    push        5C21D1
 005C2140    push        dword ptr fs:[eax]
 005C2143    mov         dword ptr fs:[eax],esp
 005C2146    mov         eax,dword ptr [ebp-10]
 005C2149    push        eax
 005C214A    call        gdi32.SaveDC
 005C214F    mov         dword ptr [ebp-8],eax
 005C2152    xor         eax,eax
 005C2154    push        ebp
 005C2155    push        5C21B4
 005C215A    push        dword ptr fs:[eax]
 005C215D    mov         dword ptr fs:[eax],esp
 005C2160    mov         edx,dword ptr [ebp-10]
 005C2163    mov         eax,dword ptr [ebp-0C]
 005C2166    call        TCanvas.SetHandle
 005C216B    mov         eax,[007CA7CC];Screen:TScreen
 005C2170    mov         edx,dword ptr [eax+90]
 005C2176    mov         eax,dword ptr [ebp-0C]
 005C2179    call        TCanvas.SetFont
 005C217E    lea         eax,[esi+10]
 005C2181    push        eax
 005C2182    lea         ecx,[esi+0C]
 005C2185    mov         edx,dword ptr [ebp-0C]
 005C2188    mov         eax,edi
 005C218A    mov         ebx,dword ptr [eax]
 005C218C    call        dword ptr [ebx+4C];TMenuItem.sub_005B02C4
 005C218F    xor         eax,eax
 005C2191    pop         edx
 005C2192    pop         ecx
 005C2193    pop         ecx
 005C2194    mov         dword ptr fs:[eax],edx
 005C2197    push        5C21BB
 005C219C    xor         edx,edx
 005C219E    mov         eax,dword ptr [ebp-0C]
 005C21A1    call        TCanvas.SetHandle
 005C21A6    mov         eax,dword ptr [ebp-8]
 005C21A9    push        eax
 005C21AA    mov         eax,dword ptr [ebp-10]
 005C21AD    push        eax
 005C21AE    call        gdi32.RestoreDC
 005C21B3    ret
>005C21B4    jmp         @HandleFinally
>005C21B9    jmp         005C219C
 005C21BB    xor         eax,eax
 005C21BD    pop         edx
 005C21BE    pop         ecx
 005C21BF    pop         ecx
 005C21C0    mov         dword ptr fs:[eax],edx
 005C21C3    push        5C21D8
 005C21C8    mov         eax,dword ptr [ebp-0C]
 005C21CB    call        TObject.Free
 005C21D0    ret
>005C21D1    jmp         @HandleFinally
>005C21D6    jmp         005C21C8
 005C21D8    xor         eax,eax
 005C21DA    pop         edx
 005C21DB    pop         ecx
 005C21DC    pop         ecx
 005C21DD    mov         dword ptr fs:[eax],edx
 005C21E0    push        5C2305
 005C21E5    mov         eax,dword ptr [ebp-10]
 005C21E8    push        eax
 005C21E9    mov         eax,dword ptr [ebp-4]
 005C21EC    call        TWinControl.GetHandle
 005C21F1    push        eax
 005C21F2    call        user32.ReleaseDC
 005C21F7    ret
>005C21F8    jmp         @HandleFinally
>005C21FD    jmp         005C21E5
 005C21FF    xor         edx,edx
 005C2201    mov         eax,dword ptr [ebp-4]
 005C2204    call        005C7444
>005C2209    jmp         005C22FB
 005C220E    mov         eax,dword ptr [ebp-4]
 005C2211    mov         edi,dword ptr [eax+2B4];TCustomForm.FActiveControl:TWinControl
 005C2217    push        0
 005C2219    xor         ecx,ecx
 005C221B    mov         edx,0B
 005C2220    mov         eax,dword ptr [ebp-4]
 005C2223    call        TControl.Perform
 005C2228    push        0
 005C222A    xor         ecx,ecx
 005C222C    mov         edx,0B033
 005C2231    mov         eax,dword ptr [ebp-4]
 005C2234    call        TControl.Perform
 005C2239    mov         dword ptr [ebx],0B051
 005C223F    mov         edx,ebx
 005C2241    mov         eax,dword ptr [ebp-4]
 005C2244    call        TWinControl.Broadcast
 005C2249    test        edi,edi
>005C224B    je          005C22FB
 005C2251    mov         edx,edi
 005C2253    mov         eax,dword ptr [ebp-4]
 005C2256    call        TCustomForm.SetActiveControl
>005C225B    jmp         005C22FB
 005C2260    cmp         eax,dword ptr ds:[7CA7DC];gvar_007CA7DC:LongWord
>005C2266    jne         005C22E1
 005C2268    push        0
 005C226A    xor         ecx,ecx
 005C226C    mov         edx,0B025
 005C2271    mov         eax,dword ptr [ebp-4]
 005C2274    call        TControl.Perform
 005C2279    push        0
 005C227B    xor         ecx,ecx
 005C227D    mov         edx,0B024
 005C2282    mov         eax,dword ptr [ebp-4]
 005C2285    call        TControl.Perform
 005C228A    push        0
 005C228C    xor         ecx,ecx
 005C228E    mov         edx,0B035
 005C2293    mov         eax,dword ptr [ebp-4]
 005C2296    call        TControl.Perform
 005C229B    push        0
 005C229D    xor         ecx,ecx
 005C229F    mov         edx,0B009
 005C22A4    mov         eax,dword ptr [ebp-4]
 005C22A7    call        TControl.Perform
 005C22AC    push        0
 005C22AE    xor         ecx,ecx
 005C22B0    mov         edx,0B008
 005C22B5    mov         eax,dword ptr [ebp-4]
 005C22B8    call        TControl.Perform
 005C22BD    push        0
 005C22BF    xor         ecx,ecx
 005C22C1    mov         edx,0B03D
 005C22C6    mov         eax,dword ptr [ebp-4]
 005C22C9    call        TControl.Perform
 005C22CE    push        0
 005C22D0    xor         ecx,ecx
 005C22D2    mov         edx,0B050
 005C22D7    mov         eax,dword ptr [ebp-4]
 005C22DA    call        TControl.Perform
>005C22DF    jmp         005C22FB
 005C22E1    cmp         eax,dword ptr ds:[7CA7E0];gvar_007CA7E0:LongWord
>005C22E7    jne         005C22FB
 005C22E9    mov         eax,dword ptr [ebp-4]
 005C22EC    mov         eax,dword ptr [eax+2B0];TCustomForm.FTaskbarHandler:TTaskbarHandler
 005C22F2    test        eax,eax
>005C22F4    je          005C22FB
 005C22F6    mov         edx,dword ptr [eax]
 005C22F8    call        dword ptr [edx+50];@AbstractError
 005C22FB    mov         edx,ebx
 005C22FD    mov         eax,dword ptr [ebp-4]
 005C2300    call        004ECAFC
 005C2305    pop         edi
 005C2306    pop         esi
 005C2307    pop         ebx
 005C2308    mov         esp,ebp
 005C230A    pop         ebp
 005C230B    ret
end;*}

//005C2314
{*procedure sub_005C2314(?:?);
begin
 005C2314    push        ebp
 005C2315    mov         ebp,esp
 005C2317    mov         eax,dword ptr [ebp+8]
 005C231A    mov         eax,dword ptr [eax-8]
 005C231D    mov         eax,dword ptr [eax+8]
 005C2320    push        eax
 005C2321    mov         eax,dword ptr [ebp+8]
 005C2324    mov         eax,dword ptr [eax-8]
 005C2327    mov         eax,dword ptr [eax+4]
 005C232A    push        eax
 005C232B    mov         eax,dword ptr [ebp+8]
 005C232E    mov         eax,dword ptr [eax-8]
 005C2331    mov         eax,dword ptr [eax]
 005C2333    push        eax
 005C2334    mov         eax,dword ptr [ebp+8]
 005C2337    mov         eax,dword ptr [eax-4]
 005C233A    mov         eax,dword ptr [eax+3B4]
 005C2340    push        eax
 005C2341    mov         eax,dword ptr [ebp+8]
 005C2344    mov         eax,dword ptr [eax-4]
 005C2347    mov         eax,dword ptr [eax+300]
 005C234D    push        eax
 005C234E    call        user32.CallWindowProcW
 005C2353    mov         edx,dword ptr [ebp+8]
 005C2356    mov         edx,dword ptr [edx-8]
 005C2359    mov         dword ptr [edx+0C],eax
 005C235C    pop         ebp
 005C235D    ret
end;*}

//005C2360
{*function sub_005C2360(?:?):?;
begin
 005C2360    push        ebp
 005C2361    mov         ebp,esp
 005C2363    push        ebx
 005C2364    push        esi
 005C2365    mov         eax,dword ptr [ebp+8]
 005C2368    mov         eax,dword ptr [eax-4]
 005C236B    call        005C2D64
 005C2370    mov         ebx,eax
 005C2372    dec         ebx
 005C2373    test        ebx,ebx
>005C2375    jl          005C2398
 005C2377    inc         ebx
 005C2378    xor         esi,esi
 005C237A    mov         eax,dword ptr [ebp+8]
 005C237D    mov         eax,dword ptr [eax-4]
 005C2380    mov         edx,esi
 005C2382    call        TForm.get_MDIChildren
 005C2387    cmp         byte ptr [eax+2BE],2;TForm.FWindowState:TWindowState
>005C238E    jne         005C2394
 005C2390    mov         al,1
>005C2392    jmp         005C239A
 005C2394    inc         esi
 005C2395    dec         ebx
>005C2396    jne         005C237A
 005C2398    xor         eax,eax
 005C239A    pop         esi
 005C239B    pop         ebx
 005C239C    pop         ebp
 005C239D    ret
end;*}

//005C23A0
{*procedure sub_005C23A0(?:?);
begin
 005C23A0    push        ebp
 005C23A1    mov         ebp,esp
 005C23A3    add         esp,0FFFFFF8C
 005C23A6    mov         dword ptr [ebp-8],edx
 005C23A9    mov         dword ptr [ebp-4],eax
 005C23AC    mov         eax,dword ptr [ebp-8]
 005C23AF    mov         eax,dword ptr [eax]
 005C23B1    sub         eax,0F
>005C23B4    je          005C24C1
 005C23BA    sub         eax,5
>005C23BD    je          005C23F4
 005C23BF    sub         eax,2B
>005C23C2    je          005C247A
 005C23C8    sub         eax,45
>005C23CB    jne         005C2578
 005C23D1    push        ebp
 005C23D2    call        005C2314
 005C23D7    pop         ecx
 005C23D8    mov         eax,dword ptr [ebp-8]
 005C23DB    cmp         dword ptr [eax+0C],1
>005C23DF    jne         005C257F
 005C23E5    mov         eax,dword ptr [ebp-8]
 005C23E8    mov         dword ptr [eax+0C],0FFFFFFFF
>005C23EF    jmp         005C257F
 005C23F4    mov         eax,dword ptr [ebp-8]
 005C23F7    mov         eax,dword ptr [eax+4]
 005C23FA    mov         dword ptr [ebp-0C],eax
 005C23FD    mov         eax,dword ptr [ebp-4]
 005C2400    mov         eax,dword ptr [eax+1D0];TCustomForm.FBrush:TBrush
 005C2406    call        TBrush.GetHandle
 005C240B    push        eax
 005C240C    lea         edx,[ebp-6C]
 005C240F    mov         eax,dword ptr [ebp-4]
 005C2412    mov         ecx,dword ptr [eax]
 005C2414    call        dword ptr [ecx+64];TCustomForm.GetClientRect
 005C2417    lea         eax,[ebp-6C]
 005C241A    push        eax
 005C241B    mov         eax,dword ptr [ebp-0C]
 005C241E    push        eax
 005C241F    call        user32.FillRect
 005C2424    mov         eax,dword ptr [ebp-4]
 005C2427    cmp         byte ptr [eax+2C2],2;TCustomForm.FFormStyle:TFormStyle
>005C242E    jne         005C246B
 005C2430    mov         eax,dword ptr [ebp-4]
 005C2433    cmp         dword ptr [eax+3B4],0;TCustomForm.FClientHandle:HWND
>005C243A    je          005C246B
 005C243C    lea         eax,[ebp-5C]
 005C243F    push        eax
 005C2440    mov         eax,dword ptr [ebp-4]
 005C2443    mov         eax,dword ptr [eax+3B4];TCustomForm.FClientHandle:HWND
 005C2449    push        eax
 005C244A    call        user32.GetClientRect
 005C244F    mov         eax,dword ptr [ebp-4]
 005C2452    mov         eax,dword ptr [eax+1D0];TCustomForm.FBrush:TBrush
 005C2458    call        TBrush.GetHandle
 005C245D    push        eax
 005C245E    lea         eax,[ebp-5C]
 005C2461    push        eax
 005C2462    mov         eax,dword ptr [ebp-0C]
 005C2465    push        eax
 005C2466    call        user32.FillRect
 005C246B    mov         eax,dword ptr [ebp-8]
 005C246E    mov         dword ptr [eax+0C],1
>005C2475    jmp         005C257F
 005C247A    push        ebp
 005C247B    call        005C2314
 005C2480    pop         ecx
 005C2481    mov         eax,dword ptr [ebp-4]
 005C2484    cmp         byte ptr [eax+2C2],2;TCustomForm.FFormStyle:TFormStyle
>005C248B    jne         005C257F
 005C2491    mov         eax,dword ptr [ebp-4]
 005C2494    call        005C2D64
 005C2499    test        eax,eax
>005C249B    je          005C24AC
 005C249D    push        ebp
 005C249E    call        005C2360
 005C24A3    pop         ecx
 005C24A4    test        al,al
>005C24A6    je          005C24AC
 005C24A8    xor         edx,edx
>005C24AA    jmp         005C24AE
 005C24AC    mov         dl,1
 005C24AE    mov         eax,dword ptr [ebp-4]
 005C24B1    mov         eax,dword ptr [eax+3B4];TCustomForm.FClientHandle:HWND
 005C24B7    call        005BE9D0
>005C24BC    jmp         005C257F
 005C24C1    mov         eax,dword ptr [ebp-8]
 005C24C4    mov         eax,dword ptr [eax+4]
 005C24C7    mov         dword ptr [ebp-0C],eax
 005C24CA    cmp         dword ptr [ebp-0C],0
>005C24CE    jne         005C24E9
 005C24D0    lea         eax,[ebp-4C]
 005C24D3    push        eax
 005C24D4    mov         eax,dword ptr [ebp-4]
 005C24D7    mov         eax,dword ptr [eax+3B4];TCustomForm.FClientHandle:HWND
 005C24DD    push        eax
 005C24DE    call        user32.BeginPaint
 005C24E3    mov         edx,dword ptr [ebp-8]
 005C24E6    mov         dword ptr [edx+4],eax
 005C24E9    xor         eax,eax
 005C24EB    push        ebp
 005C24EC    push        5C2571
 005C24F1    push        dword ptr fs:[eax]
 005C24F4    mov         dword ptr fs:[eax],esp
 005C24F7    cmp         dword ptr [ebp-0C],0
>005C24FB    jne         005C253F
 005C24FD    lea         eax,[ebp-5C]
 005C2500    push        eax
 005C2501    mov         eax,dword ptr [ebp-4]
 005C2504    mov         eax,dword ptr [eax+3B4];TCustomForm.FClientHandle:HWND
 005C250A    push        eax
 005C250B    call        user32.GetWindowRect
 005C2510    lea         ecx,[ebp-74]
 005C2513    lea         edx,[ebp-5C]
 005C2516    mov         eax,dword ptr [ebp-4]
 005C2519    call        TControl.ScreenToClient
 005C251E    mov         eax,dword ptr [ebp-74]
 005C2521    mov         dword ptr [ebp-5C],eax
 005C2524    mov         eax,dword ptr [ebp-70]
 005C2527    mov         dword ptr [ebp-58],eax
 005C252A    mov         ecx,dword ptr [ebp-58]
 005C252D    neg         ecx
 005C252F    mov         edx,dword ptr [ebp-5C]
 005C2532    neg         edx
 005C2534    mov         eax,dword ptr [ebp-8]
 005C2537    mov         eax,dword ptr [eax+4]
 005C253A    call        MoveWindowOrg
 005C253F    mov         edx,dword ptr [ebp-8]
 005C2542    mov         eax,dword ptr [ebp-4]
 005C2545    call        004ED25C
 005C254A    xor         eax,eax
 005C254C    pop         edx
 005C254D    pop         ecx
 005C254E    pop         ecx
 005C254F    mov         dword ptr fs:[eax],edx
 005C2552    push        5C257F
 005C2557    cmp         dword ptr [ebp-0C],0
>005C255B    jne         005C2570
 005C255D    lea         eax,[ebp-4C]
 005C2560    push        eax
 005C2561    mov         eax,dword ptr [ebp-4]
 005C2564    mov         eax,dword ptr [eax+3B4];TCustomForm.FClientHandle:HWND
 005C256A    push        eax
 005C256B    call        user32.EndPaint
 005C2570    ret
>005C2571    jmp         @HandleFinally
>005C2576    jmp         005C2557
 005C2578    push        ebp
 005C2579    call        005C2314
 005C257E    pop         ecx
 005C257F    mov         esp,ebp
 005C2581    pop         ebp
 005C2582    ret
end;*}

//005C2584
procedure TCustomForm.AlignControls(AControl:TControl; var ARect:TRect);
begin
{*
 005C2584    push        ebx
 005C2585    push        esi
 005C2586    push        edi
 005C2587    add         esp,0FFFFFFE0
 005C258A    mov         esi,ecx
 005C258C    mov         ebx,eax
 005C258E    mov         ecx,esi
 005C2590    mov         eax,ebx
 005C2592    call        TScrollingWinControl.AlignControls
 005C2597    mov         eax,dword ptr [ebx+3B4];TCustomForm.FClientHandle:HWND
 005C259D    test        eax,eax
>005C259F    je          005C25E8
 005C25A1    push        14
 005C25A3    mov         ecx,dword ptr [esi+0C]
 005C25A6    mov         edi,dword ptr [esi+4];TRect.Top:LongInt
 005C25A9    sub         ecx,edi
 005C25AB    push        ecx
 005C25AC    mov         ecx,dword ptr [esi+8];TRect.Right:LongInt
 005C25AF    mov         edx,dword ptr [esi]
 005C25B1    sub         ecx,edx
 005C25B3    push        ecx
 005C25B4    push        edi
 005C25B5    push        edx
 005C25B6    push        1
 005C25B8    push        eax
 005C25B9    call        user32.SetWindowPos
 005C25BE    cmp         byte ptr [ebx+2C2],2;TCustomForm.FFormStyle:TFormStyle
>005C25C5    jne         005C25E8
 005C25C7    push        esp
 005C25C8    mov         eax,dword ptr [ebx+3B4];TCustomForm.FClientHandle:HWND
 005C25CE    push        eax
 005C25CF    call        user32.GetClientRect
 005C25D4    test        eax,eax
>005C25D6    je          005C25E8
 005C25D8    push        0FF
 005C25DA    push        0
 005C25DC    mov         eax,dword ptr [ebx+3B4];TCustomForm.FClientHandle:HWND
 005C25E2    push        eax
 005C25E3    call        user32.InvalidateRect
 005C25E8    test        byte ptr [ebx+65],80;TCustomForm.FAlign:TAlign
>005C25EC    je          005C2638
 005C25EE    test        byte ptr [ebx+1C],1;TCustomForm.FComponentState:TComponentState
>005C25F2    jne         005C2638
 005C25F4    mov         eax,ebx
 005C25F6    call        TControl.GetClientHeight
 005C25FB    mov         edx,dword ptr [ebx+3AC];TCustomForm.FGlassFrame:TGlassFrame
 005C2601    sub         eax,dword ptr [edx+18]
 005C2604    push        eax
 005C2605    lea         eax,[esp+14]
 005C2609    push        eax
 005C260A    mov         eax,ebx
 005C260C    call        TControl.GetClientWidth
 005C2611    mov         ecx,eax
 005C2613    mov         eax,dword ptr [ebx+3AC];TCustomForm.FGlassFrame:TGlassFrame
 005C2619    sub         ecx,dword ptr [eax+14]
 005C261C    mov         esi,dword ptr [ebx+3AC];TCustomForm.FGlassFrame:TGlassFrame
 005C2622    mov         edx,dword ptr [esi+10];TGlassFrame.FTop:Integer
 005C2625    mov         eax,dword ptr [esi+0C];TGlassFrame.FLeft:Integer
 005C2628    call        Rect
 005C262D    lea         edx,[esp+10]
 005C2631    mov         eax,ebx
 005C2633    call        005C7678
 005C2638    add         esp,20
 005C263B    pop         edi
 005C263C    pop         esi
 005C263D    pop         ebx
 005C263E    ret
*}
end;

//005C2640
procedure TCustomForm.CMBiDiModeChanged(Message:Messages.TMessage);
begin
{*
 005C2640    push        ebx
 005C2641    push        esi
 005C2642    push        edi
 005C2643    push        ecx
 005C2644    mov         ebx,eax
 005C2646    mov         eax,ebx
 005C2648    call        TScrollingWinControl.CMBiDiModeChanged
 005C264D    mov         eax,ebx
 005C264F    call        TWinControl.HandleAllocated
 005C2654    test        al,al
>005C2656    je          005C2695
 005C2658    mov         eax,ebx
 005C265A    call        TWinControl.GetHandle
 005C265F    push        0EC
 005C2661    push        eax
 005C2662    call        user32.GetWindowLongW
 005C2667    and         eax,0FFFFEFFF
 005C266C    and         eax,0FFFFDFFF
 005C2671    and         eax,0FFFFBFFF
 005C2676    mov         dword ptr [esp],eax
 005C2679    mov         edx,esp
 005C267B    mov         eax,ebx
 005C267D    call        TWinControl.AddBiDiModeExStyle
 005C2682    mov         eax,ebx
 005C2684    call        TWinControl.GetHandle
 005C2689    mov         edx,dword ptr [esp]
 005C268C    push        edx
 005C268D    push        0EC
 005C268F    push        eax
 005C2690    call        user32.SetWindowLongW
 005C2695    mov         eax,ebx
 005C2697    call        TComponent.GetComponentCount
 005C269C    mov         edi,eax
 005C269E    dec         edi
 005C269F    test        edi,edi
>005C26A1    jl          005C26D0
 005C26A3    inc         edi
 005C26A4    xor         esi,esi
 005C26A6    mov         edx,esi
 005C26A8    mov         eax,ebx
 005C26AA    call        TComponent.GetComponent
 005C26AF    mov         edx,dword ptr ds:[5AB560];TMenu
 005C26B5    call        @IsClass
 005C26BA    test        al,al
>005C26BC    je          005C26CC
 005C26BE    mov         edx,esi
 005C26C0    mov         eax,ebx
 005C26C2    call        TComponent.GetComponent
 005C26C7    call        TMenu.ParentBiDiModeChanged
 005C26CC    inc         esi
 005C26CD    dec         edi
>005C26CE    jne         005C26A6
 005C26D0    pop         edx
 005C26D1    pop         edi
 005C26D2    pop         esi
 005C26D3    pop         ebx
 005C26D4    ret
*}
end;

//005C26D8
procedure TCustomForm.CMParentBiDiModeChanged;
begin
{*
 005C26D8    push        ebp
 005C26D9    mov         ebp,esp
 005C26DB    push        ecx
 005C26DC    mov         dword ptr [ebp-4],eax
 005C26DF    mov         eax,dword ptr [ebp-4]
 005C26E2    cmp         byte ptr [eax+2D4],0;TCustomForm.FInCMParentBiDiModeChanged:Boolean
>005C26E9    jne         005C2767
 005C26EB    mov         eax,dword ptr [ebp-4]
 005C26EE    mov         byte ptr [eax+2D4],1;TCustomForm.FInCMParentBiDiModeChanged:Boolean
 005C26F5    xor         edx,edx
 005C26F7    push        ebp
 005C26F8    push        5C2760
 005C26FD    push        dword ptr fs:[edx]
 005C2700    mov         dword ptr fs:[edx],esp
 005C2703    mov         eax,dword ptr [ebp-4]
 005C2706    cmp         byte ptr [eax+72],0;TCustomForm.FParentBiDiMode:Boolean
>005C270A    je          005C2748
 005C270C    mov         eax,dword ptr [ebp-4]
 005C270F    mov         eax,dword ptr [eax+40];TCustomForm.FParent:TWinControl
 005C2712    test        eax,eax
>005C2714    jne         005C272C
 005C2716    mov         eax,[007CA7C8];Application:TApplication
 005C271B    movzx       edx,byte ptr [eax+41]
 005C271F    mov         eax,dword ptr [ebp-4]
 005C2722    mov         ecx,dword ptr [eax]
 005C2724    call        dword ptr [ecx+94];TGroupBox.SetBiDiMode
>005C272A    jmp         005C273B
 005C272C    movzx       edx,byte ptr [eax+71];TWinControl.FBiDiMode:TBiDiMode
 005C2730    mov         eax,dword ptr [ebp-4]
 005C2733    mov         ecx,dword ptr [eax]
 005C2735    call        dword ptr [ecx+94];TGroupBox.SetBiDiMode
 005C273B    mov         dl,1
 005C273D    mov         eax,dword ptr [ebp-4]
 005C2740    mov         ecx,dword ptr [eax]
 005C2742    call        dword ptr [ecx+90];TForm.SetParentBiDiMode
 005C2748    xor         eax,eax
 005C274A    pop         edx
 005C274B    pop         ecx
 005C274C    pop         ecx
 005C274D    mov         dword ptr fs:[eax],edx
 005C2750    push        5C2767
 005C2755    mov         eax,dword ptr [ebp-4]
 005C2758    mov         byte ptr [eax+2D4],0;TCustomForm.FInCMParentBiDiModeChanged:Boolean
 005C275F    ret
>005C2760    jmp         @HandleFinally
>005C2765    jmp         005C2755
 005C2767    pop         ecx
 005C2768    pop         ebp
 005C2769    ret
*}
end;

//005C276C
{*procedure TCustomForm.sub_005C276C(?:?);
begin
 005C276C    push        ebx
 005C276D    push        esi
 005C276E    push        edi
 005C276F    push        ecx
 005C2770    mov         esi,edx
 005C2772    mov         ebx,eax
 005C2774    mov         eax,dword ptr [esi+4]
 005C2777    mov         eax,dword ptr [eax+4]
 005C277A    call        FindControl
 005C277F    test        eax,eax
>005C2781    je          005C278C
 005C2783    mov         eax,dword ptr [esi+4]
 005C2786    cmp         byte ptr [eax+8],0
>005C278A    jne         005C27DB
 005C278C    mov         eax,dword ptr [ebx+38C];TCustomForm.FPopupWnds:TPopupWndArray
 005C2792    mov         dword ptr [esp],eax
 005C2795    mov         eax,dword ptr [esp]
 005C2798    test        eax,eax
>005C279A    je          005C27A1
 005C279C    sub         eax,4
 005C279F    mov         eax,dword ptr [eax]
 005C27A1    mov         edi,eax
 005C27A3    lea         eax,[edi+1]
 005C27A6    push        eax
 005C27A7    lea         eax,[ebx+38C];TCustomForm.FPopupWnds:TPopupWndArray
 005C27AD    mov         ecx,1
 005C27B2    mov         edx,dword ptr ds:[5B6828];TPopupWndArray
 005C27B8    call        @DynArraySetLength
 005C27BD    add         esp,4
 005C27C0    mov         eax,dword ptr [ebx+38C];TCustomForm.FPopupWnds:TPopupWndArray
 005C27C6    mov         edx,dword ptr [esi+4]
 005C27C9    mov         edx,dword ptr [edx]
 005C27CB    mov         dword ptr [eax+edi*8],edx
 005C27CE    mov         eax,dword ptr [ebx+38C];TCustomForm.FPopupWnds:TPopupWndArray
 005C27D4    mov         edx,dword ptr [esi+8]
 005C27D7    mov         dword ptr [eax+edi*8+4],edx
 005C27DB    pop         edx
 005C27DC    pop         edi
 005C27DD    pop         esi
 005C27DE    pop         ebx
 005C27DF    ret
end;*}

//005C2830
{*procedure TCustomForm.sub_005C2830(?:?; ?:?);
begin
 005C2830    push        ebx
 005C2831    push        esi
 005C2832    push        edi
 005C2833    push        ebp
 005C2834    push        ecx
 005C2835    mov         ebp,ecx
 005C2837    mov         edi,edx
 005C2839    mov         esi,eax
 005C283B    and         dword ptr [edi],0FFF4FFFF
 005C2841    and         dword ptr [ebp],0FFFFFBFF
 005C2848    movzx       eax,byte ptr [esi+2BD];TCustomForm.FBorderStyle:TFormBorderStyle
 005C284F    mov         byte ptr [esp],al
 005C2852    cmp         byte ptr [esi+2C2],1;TCustomForm.FFormStyle:TFormStyle
>005C2859    jne         005C286B
 005C285B    movzx       eax,byte ptr [esp]
 005C285F    test        al,al
>005C2861    je          005C2867
 005C2863    sub         al,3
>005C2865    jne         005C286B
 005C2867    mov         byte ptr [esp],2
 005C286B    movzx       ebx,byte ptr [esi+2BC];TCustomForm.FBorderIcons:TBorderIcons
 005C2872    movzx       eax,byte ptr [esp]
 005C2876    sub         al,1
>005C2878    jb          005C2885
 005C287A    sub         al,2
>005C287C    je          005C288E
 005C287E    dec         eax
 005C287F    sub         al,2
>005C2881    jb          005C2899
>005C2883    jmp         005C28A2
 005C2885    movzx       ebx,byte ptr ds:[5C28EC];0x0 gvar_005C28EC
>005C288C    jmp         005C28A2
 005C288E    movzx       eax,byte ptr ds:[5C28F0];0x9 gvar_005C28F0
 005C2895    and         bl,al
>005C2897    jmp         005C28A2
 005C2899    movzx       eax,byte ptr ds:[5C28F4];0x1 gvar_005C28F4
 005C28A0    and         bl,al
 005C28A2    movzx       eax,byte ptr [esp]
 005C28A6    sub         al,3
>005C28A8    jae         005C28CE
 005C28AA    cmp         byte ptr [esi+2C2],1;TCustomForm.FFormStyle:TFormStyle
>005C28B1    jne         005C28B8
 005C28B3    test        bl,1
>005C28B6    je          005C28CE
 005C28B8    test        bl,2
>005C28BB    je          005C28C3
 005C28BD    or          dword ptr [edi],20000
 005C28C3    test        bl,4
>005C28C6    je          005C28CE
 005C28C8    or          dword ptr [edi],10000
 005C28CE    test        bl,1
>005C28D1    je          005C28D9
 005C28D3    or          dword ptr [edi],80000
 005C28D9    test        bl,8
>005C28DC    je          005C28E5
 005C28DE    or          dword ptr [ebp],400
 005C28E5    pop         edx
 005C28E6    pop         ebp
 005C28E7    pop         edi
 005C28E8    pop         esi
 005C28E9    pop         ebx
 005C28EA    ret
end;*}

//005C28F8
procedure TForm.SetBorderIcons(Value:TBorderIcons);
begin
{*
 005C28F8    push        ebx
 005C28F9    push        esi
 005C28FA    add         esp,0FFFFFFF4
 005C28FD    mov         byte ptr [esp],dl
 005C2900    mov         ebx,eax
 005C2902    movzx       eax,byte ptr [esp]
 005C2906    cmp         al,byte ptr [ebx+2BC];TForm.FBorderIcons:TBorderIcons
>005C290C    je          005C29DA
 005C2912    movzx       eax,byte ptr [esp]
 005C2916    mov         byte ptr [ebx+2BC],al;TForm.FBorderIcons:TBorderIcons
 005C291C    mov         eax,ebx
 005C291E    call        TWinControl.HandleAllocated
 005C2923    test        al,al
>005C2925    je          005C29DA
 005C292B    test        byte ptr [ebx+1C],10;TForm.FComponentState:TComponentState
>005C292F    je          005C2945
 005C2931    test        byte ptr [ebx+1C],10;TForm.FComponentState:TComponentState
>005C2935    je          005C29DA
 005C293B    cmp         dword ptr [ebx+40],0;TForm.FParent:TWinControl
>005C293F    je          005C29DA
 005C2945    cmp         byte ptr [ebx+2C2],1;TForm.FFormStyle:TFormStyle
>005C294C    jne         005C2957
 005C294E    cmp         byte ptr [ebx+2BE],2;TForm.FWindowState:TWindowState
>005C2955    je          005C29D3
 005C2957    mov         eax,ebx
 005C2959    call        TWinControl.GetHandle
 005C295E    push        0F0
 005C2960    push        eax
 005C2961    call        user32.GetWindowLongW
 005C2966    mov         dword ptr [esp+4],eax
 005C296A    mov         eax,ebx
 005C296C    call        TWinControl.GetHandle
 005C2971    push        0EC
 005C2973    push        eax
 005C2974    call        user32.GetWindowLongW
 005C2979    mov         dword ptr [esp+8],eax
 005C297D    lea         ecx,[esp+8]
 005C2981    lea         edx,[esp+4]
 005C2985    mov         eax,ebx
 005C2987    mov         si,0FFA7
 005C298B    call        @CallDynaInst;TCustomForm.sub_005C2830
 005C2990    mov         eax,ebx
 005C2992    call        TWinControl.GetHandle
 005C2997    mov         edx,dword ptr [esp+4]
 005C299B    push        edx
 005C299C    push        0F0
 005C299E    push        eax
 005C299F    call        user32.SetWindowLongW
 005C29A4    mov         eax,ebx
 005C29A6    call        TWinControl.GetHandle
 005C29AB    mov         edx,dword ptr [esp+8]
 005C29AF    push        edx
 005C29B0    push        0EC
 005C29B2    push        eax
 005C29B3    call        user32.SetWindowLongW
 005C29B8    push        37
 005C29BA    push        0
 005C29BC    push        0
 005C29BE    push        0
 005C29C0    push        0
 005C29C2    push        0
 005C29C4    mov         eax,ebx
 005C29C6    call        TWinControl.GetHandle
 005C29CB    push        eax
 005C29CC    call        user32.SetWindowPos
>005C29D1    jmp         005C29DA
 005C29D3    mov         eax,ebx
 005C29D5    call        TWinControl.RecreateWnd
 005C29DA    add         esp,0C
 005C29DD    pop         esi
 005C29DE    pop         ebx
 005C29DF    ret
*}
end;

//005C29E0
{*procedure TCustomForm.sub_005C29E0(?:?; ?:?; ?:?);
begin
 005C29E0    push        ebp
 005C29E1    mov         ebp,esp
 005C29E3    push        esi
 005C29E4    push        edi
 005C29E5    mov         edi,ecx
 005C29E7    mov         esi,eax
 005C29E9    and         dword ptr [edx],7F3BFF7F
 005C29EF    and         dword ptr [edi],0FFFFFE7E
 005C29F5    mov         eax,dword ptr [ebp+8]
 005C29F8    and         dword ptr [eax],0FFFFD7FF
 005C29FE    movzx       eax,byte ptr [esi+2BD];TCustomForm.FBorderStyle:TFormBorderStyle
 005C2A05    cmp         byte ptr [esi+2C2],1;TCustomForm.FFormStyle:TFormStyle
>005C2A0C    jne         005C2A1B
 005C2A0E    mov         ecx,eax
 005C2A10    test        cl,cl
>005C2A12    je          005C2A19
 005C2A14    sub         cl,3
>005C2A17    jne         005C2A1B
 005C2A19    mov         al,2
 005C2A1B    movzx       ecx,al
 005C2A1E    cmp         ecx,5
>005C2A21    ja          005C2AD6
 005C2A27    jmp         dword ptr [ecx*4+5C2A2E]
 005C2A27    dd          005C2A46
 005C2A27    dd          005C2A61
 005C2A27    dd          005C2A69
 005C2A27    dd          005C2A71
 005C2A27    dd          005C2A61
 005C2A27    dd          005C2A69
 005C2A46    cmp         dword ptr [esi+40],0;TCustomForm.FParent:TWinControl
>005C2A4A    jne         005C2AD6
 005C2A50    cmp         dword ptr [esi+1E4],0;TCustomForm.FParentWindow:HWND
>005C2A57    jne         005C2AD6
 005C2A59    or          dword ptr [edx],80000000
>005C2A5F    jmp         005C2AD6
 005C2A61    or          dword ptr [edx],0C00000
>005C2A67    jmp         005C2AD6
 005C2A69    or          dword ptr [edx],0C40000
>005C2A6F    jmp         005C2AD6
 005C2A71    test        byte ptr [esi+1C],10;TCustomForm.FComponentState:TComponentState
>005C2A75    je          005C2A85
 005C2A77    cmp         dword ptr [esi+40],0;TCustomForm.FParent:TWinControl
>005C2A7B    je          005C2A85
 005C2A7D    or          dword ptr [edx],0C00000
>005C2A83    jmp         005C2A95
 005C2A85    mov         ecx,dword ptr [edx]
 005C2A87    or          ecx,80000000
 005C2A8D    or          ecx,0C00000
 005C2A93    mov         dword ptr [edx],ecx
 005C2A95    mov         ecx,dword ptr [edi]
 005C2A97    or          ecx,1
 005C2A9A    or          ecx,100
 005C2AA0    mov         dword ptr [edi],ecx
 005C2AA2    mov         ecx,dword ptr ds:[7C4770];^gvar_007CA5E0
 005C2AA8    cmp         byte ptr [ecx],0
>005C2AAB    jne         005C2ABD
 005C2AAD    mov         ecx,dword ptr [edx]
 005C2AAF    or          ecx,400000
 005C2AB5    or          ecx,80
 005C2ABB    mov         dword ptr [edx],ecx
 005C2ABD    mov         edx,dword ptr [ebp+8]
 005C2AC0    mov         edx,dword ptr [edx]
 005C2AC2    or          edx,8
 005C2AC5    or          edx,800
 005C2ACB    or          edx,2000
 005C2AD1    mov         ecx,dword ptr [ebp+8]
 005C2AD4    mov         dword ptr [ecx],edx
 005C2AD6    add         al,0FC
 005C2AD8    sub         al,2
>005C2ADA    jae         005C2AEB
 005C2ADC    cmp         byte ptr [esi+2C2],1;TCustomForm.FFormStyle:TFormStyle
>005C2AE3    je          005C2AEB
 005C2AE5    or          dword ptr [edi],80
 005C2AEB    pop         edi
 005C2AEC    pop         esi
 005C2AED    pop         ebp
 005C2AEE    ret         4
end;*}

//005C2AF4
procedure TForm.SetBorderStyle(Value:TFormBorderStyle);
begin
{*
 005C2AF4    push        esi
 005C2AF5    push        edi
 005C2AF6    add         esp,0FFFFFFF4
 005C2AF9    mov         edi,eax
 005C2AFB    cmp         dl,byte ptr [edi+2BD];TForm.FBorderStyle:TFormBorderStyle
>005C2B01    je          005C2C8B
 005C2B07    mov         byte ptr [edi+2BD],dl;TForm.FBorderStyle:TFormBorderStyle
 005C2B0D    cmp         byte ptr [edi+294],0;TForm.FAutoScroll:Boolean
>005C2B14    je          005C2B25
 005C2B16    movzx       eax,byte ptr [edi+2BD];TForm.FBorderStyle:TFormBorderStyle
 005C2B1D    sub         al,2
>005C2B1F    je          005C2B29
 005C2B21    sub         al,3
>005C2B23    je          005C2B29
 005C2B25    xor         edx,edx
>005C2B27    jmp         005C2B2B
 005C2B29    mov         dl,1
 005C2B2B    mov         eax,edi
 005C2B2D    call        TScrollBox.SetAutoScroll
 005C2B32    mov         eax,edi
 005C2B34    call        TWinControl.HandleAllocated
 005C2B39    test        al,al
>005C2B3B    je          005C2C8B
 005C2B41    test        byte ptr [edi+1C],10;TForm.FComponentState:TComponentState
>005C2B45    je          005C2B5B
 005C2B47    test        byte ptr [edi+1C],10;TForm.FComponentState:TComponentState
>005C2B4B    je          005C2C8B
 005C2B51    cmp         dword ptr [edi+40],0;TForm.FParent:TWinControl
>005C2B55    je          005C2C8B
 005C2B5B    mov         eax,edi
 005C2B5D    call        TWinControl.GetHandle
 005C2B62    push        0F0
 005C2B64    push        eax
 005C2B65    call        user32.GetWindowLongW
 005C2B6A    mov         dword ptr [esp],eax
 005C2B6D    mov         eax,edi
 005C2B6F    call        TWinControl.GetHandle
 005C2B74    push        0EC
 005C2B76    push        eax
 005C2B77    call        user32.GetWindowLongW
 005C2B7C    mov         dword ptr [esp+4],eax
 005C2B80    mov         eax,edi
 005C2B82    call        TWinControl.GetHandle
 005C2B87    push        0E6
 005C2B89    push        eax
 005C2B8A    call        user32.GetClassLongW
 005C2B8F    mov         dword ptr [esp+8],eax
 005C2B93    lea         eax,[esp+8]
 005C2B97    push        eax
 005C2B98    lea         ecx,[esp+8]
 005C2B9C    lea         edx,[esp+4]
 005C2BA0    mov         eax,edi
 005C2BA2    mov         si,0FFA6
 005C2BA6    call        @CallDynaInst;TCustomForm.sub_005C29E0
 005C2BAB    lea         ecx,[esp+4]
 005C2BAF    mov         edx,esp
 005C2BB1    mov         eax,edi
 005C2BB3    mov         si,0FFA7
 005C2BB7    call        @CallDynaInst;TCustomForm.sub_005C2830
 005C2BBC    mov         eax,edi
 005C2BBE    call        TWinControl.GetHandle
 005C2BC3    mov         edx,dword ptr [esp]
 005C2BC6    push        edx
 005C2BC7    push        0F0
 005C2BC9    push        eax
 005C2BCA    call        user32.SetWindowLongW
 005C2BCF    mov         eax,edi
 005C2BD1    call        TWinControl.GetHandle
 005C2BD6    mov         edx,dword ptr [esp+4]
 005C2BDA    push        edx
 005C2BDB    push        0EC
 005C2BDD    push        eax
 005C2BDE    call        user32.SetWindowLongW
 005C2BE3    mov         eax,edi
 005C2BE5    call        TWinControl.GetHandle
 005C2BEA    mov         edx,dword ptr [esp+8]
 005C2BEE    push        edx
 005C2BEF    push        0E6
 005C2BF1    push        eax
 005C2BF2    call        user32.SetClassLongW
 005C2BF7    mov         eax,edi
 005C2BF9    call        TWinControl.HandleAllocated
 005C2BFE    test        al,al
>005C2C00    je          005C2C68
 005C2C02    mov         eax,[007C4770];^gvar_007CA5E0
 005C2C07    cmp         byte ptr [eax],0
>005C2C0A    je          005C2C49
 005C2C0C    cmp         byte ptr [edi+2BD],3;TForm.FBorderStyle:TFormBorderStyle
>005C2C13    je          005C2C33
 005C2C15    mov         eax,edi
 005C2C17    call        005C4D1C
 005C2C1C    push        eax
 005C2C1D    push        1
 005C2C1F    push        80
 005C2C24    mov         eax,edi
 005C2C26    call        TWinControl.GetHandle
 005C2C2B    push        eax
 005C2C2C    call        user32.SendMessageW
>005C2C31    jmp         005C2C49
 005C2C33    push        0
 005C2C35    push        1
 005C2C37    push        80
 005C2C3C    mov         eax,edi
 005C2C3E    call        TWinControl.GetHandle
 005C2C43    push        eax
 005C2C44    call        user32.SendMessageW
 005C2C49    push        0FF
 005C2C4B    mov         eax,edi
 005C2C4D    call        TWinControl.GetHandle
 005C2C52    push        eax
 005C2C53    call        user32.GetSystemMenu
 005C2C58    push        0
 005C2C5A    xor         ecx,ecx
 005C2C5C    mov         edx,81
 005C2C61    mov         eax,edi
 005C2C63    call        TControl.Perform
 005C2C68    push        37
 005C2C6A    push        0
 005C2C6C    push        0
 005C2C6E    push        0
 005C2C70    push        0
 005C2C72    push        0
 005C2C74    mov         eax,edi
 005C2C76    call        TWinControl.GetHandle
 005C2C7B    push        eax
 005C2C7C    call        user32.SetWindowPos
 005C2C81    mov         eax,edi
 005C2C83    mov         edx,dword ptr [eax]
 005C2C85    call        dword ptr [edx+0A8];TWinControl.Invalidate
 005C2C8B    add         esp,0C
 005C2C8E    pop         edi
 005C2C8F    pop         esi
 005C2C90    ret
*}
end;

//005C2C94
procedure TCustomForm.Dock(NewDockSite:TWinControl; ARect:TRect);
begin
{*
 005C2C94    push        ebx
 005C2C95    push        esi
 005C2C96    push        edi
 005C2C97    add         esp,0FFFFFFF0
 005C2C9A    mov         esi,ecx
 005C2C9C    lea         edi,[esp]
 005C2C9F    movs        dword ptr [edi],dword ptr [esi]
 005C2CA0    movs        dword ptr [edi],dword ptr [esi]
 005C2CA1    movs        dword ptr [edi],dword ptr [esi]
 005C2CA2    movs        dword ptr [edi],dword ptr [esi]
 005C2CA3    mov         ebx,eax
 005C2CA5    mov         edi,dword ptr [ebx+40];TCustomForm.FParent:TWinControl
 005C2CA8    mov         esi,dword ptr [ebx+0A0];TCustomForm.FHostDockSite:TWinControl
 005C2CAE    mov         ecx,esp
 005C2CB0    mov         eax,ebx
 005C2CB2    call        TControl.Dock
 005C2CB7    mov         eax,dword ptr [ebx+40];TCustomForm.FParent:TWinControl
 005C2CBA    test        eax,eax
>005C2CBC    je          005C2CD1
 005C2CBE    cmp         edi,eax
>005C2CC0    jne         005C2CD1
 005C2CC2    cmp         esi,dword ptr [ebx+0A0];TCustomForm.FHostDockSite:TWinControl
>005C2CC8    je          005C2CD1
 005C2CCA    mov         eax,ebx
 005C2CCC    call        TWinControl.RecreateWnd
 005C2CD1    add         esp,10
 005C2CD4    pop         edi
 005C2CD5    pop         esi
 005C2CD6    pop         ebx
 005C2CD7    ret
*}
end;

//005C2CD8
{*procedure TCustomForm.sub_004E668C(?:?; ?:?);
begin
 005C2CD8    push        ebx
 005C2CD9    push        esi
 005C2CDA    push        edi
 005C2CDB    mov         edi,ecx
 005C2CDD    mov         esi,edx
 005C2CDF    mov         ebx,eax
 005C2CE1    cmp         esi,dword ptr [ebx+0A0];TCustomForm.FHostDockSite:TWinControl
>005C2CE7    je          005C2D1F
 005C2CE9    test        esi,esi
>005C2CEB    je          005C2CF8
 005C2CED    mov         eax,ebx
 005C2CEF    mov         edx,dword ptr [eax]
 005C2CF1    call        dword ptr [edx+70];TCustomForm.sub_005C19B4
 005C2CF4    test        al,al
>005C2CF6    je          005C2D1F
 005C2CF8    test        esi,esi
>005C2CFA    jne         005C2D0B
 005C2CFC    movzx       eax,byte ptr [ebx+308];TCustomForm.FSavedBorderStyle:TFormBorderStyle
 005C2D03    mov         byte ptr [ebx+2BD],al;TCustomForm.FBorderStyle:TFormBorderStyle
>005C2D09    jmp         005C2D1F
 005C2D0B    movzx       eax,byte ptr [ebx+2BD];TCustomForm.FBorderStyle:TFormBorderStyle
 005C2D12    mov         byte ptr [ebx+308],al;TCustomForm.FSavedBorderStyle:TFormBorderStyle
 005C2D18    mov         byte ptr [ebx+2BD],0;TCustomForm.FBorderStyle:TFormBorderStyle
 005C2D1F    mov         ecx,edi
 005C2D21    mov         edx,esi
 005C2D23    mov         eax,ebx
 005C2D25    call        TControl.sub_004E668C
 005C2D2A    pop         edi
 005C2D2B    pop         esi
 005C2D2C    pop         ebx
 005C2D2D    ret
end;*}

//005C2D30
{*function sub_005C2D30(?:TWinControl):?;
begin
 005C2D30    push        ebx
 005C2D31    mov         ebx,eax
 005C2D33    xor         eax,eax
 005C2D35    cmp         byte ptr [ebx+2C2],2;TCustomForm.FFormStyle:TFormStyle
>005C2D3C    jne         005C2D61
 005C2D3E    cmp         dword ptr [ebx+3B4],0;TCustomForm.FClientHandle:HWND
>005C2D45    je          005C2D61
 005C2D47    push        0
 005C2D49    push        0
 005C2D4B    push        229
 005C2D50    mov         eax,dword ptr [ebx+3B4];TCustomForm.FClientHandle:HWND
 005C2D56    push        eax
 005C2D57    call        user32.SendMessageW
 005C2D5C    call        FindControl
 005C2D61    pop         ebx
 005C2D62    ret
end;*}

//005C2D64
{*function sub_005C2D64(?:TCustomForm):?;
begin
 005C2D64    push        ebx
 005C2D65    push        esi
 005C2D66    push        edi
 005C2D67    xor         edi,edi
 005C2D69    cmp         byte ptr [eax+2C2],2;TCustomForm.FFormStyle:TFormStyle
>005C2D70    jne         005C2DA9
 005C2D72    cmp         dword ptr [eax+3B4],0;TCustomForm.FClientHandle:HWND
>005C2D79    je          005C2DA9
 005C2D7B    mov         eax,[007CA7CC];Screen:TScreen
 005C2D80    call        TScreen.GetFormCount
 005C2D85    mov         ebx,eax
 005C2D87    dec         ebx
 005C2D88    test        ebx,ebx
>005C2D8A    jl          005C2DA9
 005C2D8C    inc         ebx
 005C2D8D    xor         esi,esi
 005C2D8F    mov         edx,esi
 005C2D91    mov         eax,[007CA7CC];Screen:TScreen
 005C2D96    call        TScreen.GetForm
 005C2D9B    cmp         byte ptr [eax+2C2],1;TForm.FFormStyle:TFormStyle
>005C2DA2    jne         005C2DA5
 005C2DA4    inc         edi
 005C2DA5    inc         esi
 005C2DA6    dec         ebx
>005C2DA7    jne         005C2D8F
 005C2DA9    mov         eax,edi
 005C2DAB    pop         edi
 005C2DAC    pop         esi
 005C2DAD    pop         ebx
 005C2DAE    ret
end;*}

//005C2DB0
function TForm.get_MDIChildren(I:Integer):TForm;
begin
{*
 005C2DB0    push        ebx
 005C2DB1    push        esi
 005C2DB2    push        edi
 005C2DB3    mov         edi,edx
 005C2DB5    cmp         byte ptr [eax+2C2],2;TForm.FFormStyle:TFormStyle
>005C2DBC    jne         005C2DF9
 005C2DBE    cmp         dword ptr [eax+3B4],0;TForm.FClientHandle:HWND
>005C2DC5    je          005C2DF9
 005C2DC7    mov         eax,[007CA7CC];Screen:TScreen
 005C2DCC    call        TScreen.GetFormCount
 005C2DD1    mov         ebx,eax
 005C2DD3    dec         ebx
 005C2DD4    test        ebx,ebx
>005C2DD6    jl          005C2DF9
 005C2DD8    inc         ebx
 005C2DD9    xor         esi,esi
 005C2DDB    mov         edx,esi
 005C2DDD    mov         eax,[007CA7CC];Screen:TScreen
 005C2DE2    call        TScreen.GetForm
 005C2DE7    cmp         byte ptr [eax+2C2],1;TForm.FFormStyle:TFormStyle
>005C2DEE    jne         005C2DF5
 005C2DF0    dec         edi
 005C2DF1    test        edi,edi
>005C2DF3    jl          005C2DFB
 005C2DF5    inc         esi
 005C2DF6    dec         ebx
>005C2DF7    jne         005C2DDB
 005C2DF9    xor         eax,eax
 005C2DFB    pop         edi
 005C2DFC    pop         esi
 005C2DFD    pop         ebx
 005C2DFE    ret
*}
end;

//005C2E00
{*function sub_005C2E00(?:?; ?:?):?;
begin
 005C2E00    push        ebp
 005C2E01    mov         ebp,esp
 005C2E03    push        ebx
 005C2E04    mov         ebx,dword ptr [ebp+14]
 005C2E07    mov         dl,1
 005C2E09    mov         eax,[005B9EDC];TMonitor
 005C2E0E    call        TObject.Create;TMonitor.Create
 005C2E13    mov         edx,dword ptr [ebp+8]
 005C2E16    mov         dword ptr [eax+4],edx;TMonitor.FHandle:HMONITOR
 005C2E19    mov         edx,dword ptr [ebx+8]
 005C2E1C    mov         dword ptr [eax+8],edx;TMonitor.FMonitorNum:Integer
 005C2E1F    mov         edx,eax
 005C2E21    mov         eax,ebx
 005C2E23    call        TList.Add
 005C2E28    mov         al,1
 005C2E2A    pop         ebx
 005C2E2B    pop         ebp
 005C2E2C    ret         10
end;*}

//005C2E30
{*function sub_005C2E30(?:TCustomForm):?;
begin
 005C2E30    push        ebx
 005C2E31    push        esi
 005C2E32    push        edi
 005C2E33    push        ebp
 005C2E34    mov         ebx,eax
 005C2E36    xor         ebp,ebp
 005C2E38    push        2
 005C2E3A    mov         eax,ebx
 005C2E3C    call        TWinControl.GetHandle
 005C2E41    push        eax
 005C2E42    call        user32.MonitorFromWindow
 005C2E47    mov         edi,eax
 005C2E49    mov         eax,[007CA7CC];Screen:TScreen
 005C2E4E    call        TScreen.GetMonitorCount
 005C2E53    mov         esi,eax
 005C2E55    dec         esi
 005C2E56    test        esi,esi
>005C2E58    jl          005C2E82
 005C2E5A    inc         esi
 005C2E5B    xor         ebx,ebx
 005C2E5D    mov         edx,ebx
 005C2E5F    mov         eax,[007CA7CC];Screen:TScreen
 005C2E64    call        TScreen.GetMonitor
 005C2E69    cmp         edi,dword ptr [eax+4];TMonitor.FHandle:HMONITOR
>005C2E6C    jne         005C2E7E
 005C2E6E    mov         edx,ebx
 005C2E70    mov         eax,[007CA7CC];Screen:TScreen
 005C2E75    call        TScreen.GetMonitor
 005C2E7A    mov         ebp,eax
>005C2E7C    jmp         005C2EC5
 005C2E7E    inc         ebx
 005C2E7F    dec         esi
>005C2E80    jne         005C2E5D
 005C2E82    mov         eax,[007CA7CC];Screen:TScreen
 005C2E87    call        TScreen.GetMonitors
 005C2E8C    mov         eax,[007CA7CC];Screen:TScreen
 005C2E91    call        TScreen.GetMonitorCount
 005C2E96    mov         esi,eax
 005C2E98    dec         esi
 005C2E99    test        esi,esi
>005C2E9B    jl          005C2EC5
 005C2E9D    inc         esi
 005C2E9E    xor         ebx,ebx
 005C2EA0    mov         edx,ebx
 005C2EA2    mov         eax,[007CA7CC];Screen:TScreen
 005C2EA7    call        TScreen.GetMonitor
 005C2EAC    cmp         edi,dword ptr [eax+4];TMonitor.FHandle:HMONITOR
>005C2EAF    jne         005C2EC1
 005C2EB1    mov         edx,ebx
 005C2EB3    mov         eax,[007CA7CC];Screen:TScreen
 005C2EB8    call        TScreen.GetMonitor
 005C2EBD    mov         ebp,eax
>005C2EBF    jmp         005C2EC5
 005C2EC1    inc         ebx
 005C2EC2    dec         esi
>005C2EC3    jne         005C2EA0
 005C2EC5    mov         eax,ebp
 005C2EC7    pop         ebp
 005C2EC8    pop         edi
 005C2EC9    pop         esi
 005C2ECA    pop         ebx
 005C2ECB    ret
end;*}

//005C2ECC
{*function sub_005C2ECC(?:TForm):?;
begin
 005C2ECC    mov         eax,dword ptr [eax+2C8];TForm.FCanvas:TControlCanvas
 005C2ED2    ret
end;*}

//005C2ED4
procedure TForm.SetIcon(Value:TIcon);
begin
{*
 005C2ED4    mov         eax,dword ptr [eax+2D0];TForm.FIcon:TIcon
 005C2EDA    mov         ecx,dword ptr [eax]
 005C2EDC    call        dword ptr [ecx+8];TIcon.Assign
 005C2EDF    ret
*}
end;

//005C2EE0
function TForm.IsStoredActiveControl(Value:TPersistent):Boolean;
begin
{*
 005C2EE0    movzx       eax,byte ptr [eax+70];TForm.FIsControl:Boolean
 005C2EE4    xor         al,1
 005C2EE6    ret
*}
end;

//005C2EE8
function TForm.IsStoredIcon(Value:TIcon):Boolean;
begin
{*
 005C2EE8    push        ebx
 005C2EE9    mov         ebx,eax
 005C2EEB    mov         eax,ebx
 005C2EED    call        TForm.IsStoredActiveControl
 005C2EF2    test        al,al
>005C2EF4    je          005C2F05
 005C2EF6    mov         eax,dword ptr [ebx+2D0];TForm.FIcon:TIcon
 005C2EFC    call        TIcon.GetHandle
 005C2F01    test        eax,eax
>005C2F03    jne         005C2F09
 005C2F05    xor         eax,eax
 005C2F07    pop         ebx
 005C2F08    ret
 005C2F09    mov         al,1
 005C2F0B    pop         ebx
 005C2F0C    ret
*}
end;

//005C2F10
procedure TForm.SetFormStyle(Value:TFormStyle);
begin
{*
 005C2F10    push        ebp
 005C2F11    mov         ebp,esp
 005C2F13    add         esp,0FFFFFFF8
 005C2F16    push        ebx
 005C2F17    mov         ebx,edx
 005C2F19    mov         dword ptr [ebp-4],eax
 005C2F1C    mov         eax,dword ptr [ebp-4]
 005C2F1F    cmp         bl,byte ptr [eax+2C2];TForm.FFormStyle:TFormStyle
>005C2F25    je          005C307F
 005C2F2B    test        bl,bl
>005C2F2D    jne         005C2F3B
 005C2F2F    mov         eax,dword ptr [ebp-4]
 005C2F32    cmp         byte ptr [eax+2C2],3;TForm.FFormStyle:TFormStyle
>005C2F39    je          005C2F4C
 005C2F3B    cmp         bl,3
>005C2F3E    jne         005C2FAA
 005C2F40    mov         eax,dword ptr [ebp-4]
 005C2F43    cmp         byte ptr [eax+2C2],0;TForm.FFormStyle:TFormStyle
>005C2F4A    jne         005C2FAA
 005C2F4C    mov         eax,dword ptr [ebp-4]
 005C2F4F    mov         byte ptr [eax+2C2],bl;TForm.FFormStyle:TFormStyle
 005C2F55    mov         eax,dword ptr [ebp-4]
 005C2F58    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
>005C2F5C    jne         005C307F
 005C2F62    mov         eax,dword ptr [ebp-4]
 005C2F65    call        TWinControl.HandleAllocated
 005C2F6A    test        al,al
>005C2F6C    je          005C307F
 005C2F72    push        213
 005C2F77    push        0
 005C2F79    push        0
 005C2F7B    push        0
 005C2F7D    push        0
 005C2F7F    mov         eax,dword ptr [ebp-4]
 005C2F82    cmp         byte ptr [eax+2C2],3;TForm.FFormStyle:TFormStyle
 005C2F89    sete        al
 005C2F8C    and         eax,7F
 005C2F8F    mov         eax,dword ptr [eax*4+7A1D14]
 005C2F96    push        eax
 005C2F97    mov         eax,dword ptr [ebp-4]
 005C2F9A    call        TWinControl.GetHandle
 005C2F9F    push        eax
 005C2FA0    call        user32.SetWindowPos
>005C2FA5    jmp         005C307F
 005C2FAA    cmp         bl,1
>005C2FAD    jne         005C2FC5
 005C2FAF    mov         eax,dword ptr [ebp-4]
 005C2FB2    cmp         byte ptr [eax+2C3],0;TForm.FPosition:TPosition
>005C2FB9    jne         005C2FC5
 005C2FBB    mov         dl,1
 005C2FBD    mov         eax,dword ptr [ebp-4]
 005C2FC0    call        TForm.SetPosition
 005C2FC5    mov         eax,dword ptr [ebp-4]
 005C2FC8    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
 005C2FCC    setne       al
 005C2FCF    xor         al,1
 005C2FD1    mov         byte ptr [ebp-5],al
 005C2FD4    cmp         byte ptr [ebp-5],0
>005C2FD8    je          005C2FE4
 005C2FDA    mov         dl,1
 005C2FDC    mov         eax,dword ptr [ebp-4]
 005C2FDF    call        004F2104
 005C2FE4    xor         edx,edx
 005C2FE6    push        ebp
 005C2FE7    push        5C3078
 005C2FEC    push        dword ptr fs:[edx]
 005C2FEF    mov         dword ptr fs:[edx],esp
 005C2FF2    cmp         byte ptr [ebp-5],0
>005C2FF6    je          005C3003
 005C2FF8    mov         eax,dword ptr [ebp-4]
 005C2FFB    mov         edx,dword ptr [eax]
 005C2FFD    call        dword ptr [edx+0D8];TForm.sub_005C4440
 005C3003    mov         eax,dword ptr [ebp-4]
 005C3006    movzx       eax,byte ptr [eax+2C2];TForm.FFormStyle:TFormStyle
 005C300D    mov         edx,dword ptr [ebp-4]
 005C3010    mov         byte ptr [edx+2C2],bl;TForm.FFormStyle:TFormStyle
 005C3016    cmp         bl,2
>005C3019    je          005C301F
 005C301B    cmp         al,2
>005C301D    jne         005C303D
 005C301F    mov         eax,dword ptr [ebp-4]
 005C3022    cmp         byte ptr [eax+204],0;TForm.FCtl3D:Boolean
>005C3029    jne         005C303D
 005C302B    mov         eax,dword ptr [ebp-4]
 005C302E    call        005C359C
 005C3033    mov         edx,eax
 005C3035    mov         eax,dword ptr [ebp-4]
 005C3038    call        TGroupBox.SetColor
 005C303D    cmp         byte ptr [ebp-5],0
>005C3041    je          005C304B
 005C3043    mov         eax,dword ptr [ebp-4]
 005C3046    call        TWinControl.UpdateControlState
 005C304B    cmp         bl,1
>005C304E    jne         005C305A
 005C3050    mov         dl,1
 005C3052    mov         eax,dword ptr [ebp-4]
 005C3055    call        TForm.SetVisible
 005C305A    xor         eax,eax
 005C305C    pop         edx
 005C305D    pop         ecx
 005C305E    pop         ecx
 005C305F    mov         dword ptr fs:[eax],edx
 005C3062    push        5C307F
 005C3067    cmp         byte ptr [ebp-5],0
>005C306B    je          005C3077
 005C306D    xor         edx,edx
 005C306F    mov         eax,dword ptr [ebp-4]
 005C3072    call        004F2104
 005C3077    ret
>005C3078    jmp         @HandleFinally
>005C307D    jmp         005C3067
 005C307F    pop         ebx
 005C3080    pop         ecx
 005C3081    pop         ecx
 005C3082    pop         ebp
 005C3083    ret
*}
end;

//005C3084
{*procedure sub_005C3084(?:TCustomForm; ?:?);
begin
 005C3084    push        ebx
 005C3085    push        esi
 005C3086    mov         esi,edx
 005C3088    mov         ebx,eax
 005C308A    mov         eax,dword ptr [ebx+2B0];TCustomForm.FTaskbarHandler:TTaskbarHandler
 005C3090    cmp         esi,eax
>005C3092    je          005C30B2
 005C3094    test        eax,eax
>005C3096    je          005C309F
 005C3098    mov         edx,ebx
 005C309A    call        TComponent.RemoveFreeNotification
 005C309F    mov         eax,esi
 005C30A1    mov         dword ptr [ebx+2B0],eax;TCustomForm.FTaskbarHandler:TTaskbarHandler
 005C30A7    test        eax,eax
>005C30A9    je          005C30B2
 005C30AB    mov         edx,ebx
 005C30AD    call        TComponent.FreeNotification
 005C30B2    pop         esi
 005C30B3    pop         ebx
 005C30B4    ret
end;*}

//005C30B8
procedure sub_005C30B8(?:TCustomForm);
begin
{*
 005C30B8    push        ebx
 005C30B9    push        esi
 005C30BA    push        edi
 005C30BB    push        ebp
 005C30BC    mov         ebp,eax
 005C30BE    cmp         byte ptr [ebp+2C2],2
>005C30C5    jne         005C312C
 005C30C7    cmp         dword ptr [ebp+3B4],0
>005C30CE    je          005C312C
 005C30D0    xor         esi,esi
 005C30D2    mov         eax,dword ptr [ebp+2D8]
 005C30D8    test        eax,eax
>005C30DA    je          005C30E3
 005C30DC    mov         edx,dword ptr [eax]
 005C30DE    call        dword ptr [edx+48]
 005C30E1    mov         esi,eax
 005C30E3    xor         edi,edi
 005C30E5    mov         eax,dword ptr [ebp+2E4]
 005C30EB    test        eax,eax
>005C30ED    je          005C30F6
 005C30EF    call        005AD984
 005C30F4    mov         edi,eax
 005C30F6    mov         eax,ebp
 005C30F8    call        TWinControl.GetHandle
 005C30FD    push        eax
 005C30FE    call        user32.GetMenu
 005C3103    cmp         esi,eax
 005C3105    setne       bl
 005C3108    push        edi
 005C3109    push        esi
 005C310A    push        230
 005C310F    mov         eax,dword ptr [ebp+3B4]
 005C3115    push        eax
 005C3116    call        user32.SendMessageW
 005C311B    test        bl,bl
>005C311D    je          005C312C
 005C311F    mov         eax,ebp
 005C3121    call        TWinControl.GetHandle
 005C3126    push        eax
 005C3127    call        user32.DrawMenuBar
 005C312C    pop         ebp
 005C312D    pop         edi
 005C312E    pop         esi
 005C312F    pop         ebx
 005C3130    ret
*}
end;

//005C3134
procedure TForm.SetObjectMenuItem(Value:TMenuItem);
begin
{*
 005C3134    push        ebx
 005C3135    mov         ebx,edx
 005C3137    mov         dword ptr [eax+2EC],ebx;TForm.FObjectMenuItem:TMenuItem
 005C313D    test        ebx,ebx
>005C313F    je          005C3153
 005C3141    mov         edx,eax
 005C3143    mov         eax,ebx
 005C3145    call        TComponent.FreeNotification
 005C314A    xor         edx,edx
 005C314C    mov         eax,ebx
 005C314E    call        TMenuItem.SetEnabled
 005C3153    pop         ebx
 005C3154    ret
*}
end;

//005C3158
procedure TForm.SetWindowMenu(Value:TMenuItem);
begin
{*
 005C3158    push        ebx
 005C3159    mov         ebx,eax
 005C315B    cmp         edx,dword ptr [ebx+2E4];TForm.FWindowMenu:TMenuItem
>005C3161    je          005C317D
 005C3163    mov         dword ptr [ebx+2E4],edx;TForm.FWindowMenu:TMenuItem
 005C3169    test        edx,edx
>005C316B    je          005C3176
 005C316D    mov         eax,edx
 005C316F    mov         edx,ebx
 005C3171    call        TComponent.FreeNotification
 005C3176    mov         eax,ebx
 005C3178    call        005C30B8
 005C317D    pop         ebx
 005C317E    ret
*}
end;

//005C3180
procedure TForm.SetMenu(Value:TComponent);
begin
{*
 005C3180    push        ebp
 005C3181    mov         ebp,esp
 005C3183    add         esp,0FFFFFFF0
 005C3186    push        ebx
 005C3187    push        esi
 005C3188    push        edi
 005C3189    xor         ecx,ecx
 005C318B    mov         dword ptr [ebp-10],ecx
 005C318E    mov         esi,edx
 005C3190    mov         ebx,eax
 005C3192    xor         eax,eax
 005C3194    push        ebp
 005C3195    push        5C33B0
 005C319A    push        dword ptr fs:[eax]
 005C319D    mov         dword ptr fs:[eax],esp
 005C31A0    test        esi,esi
>005C31A2    je          005C3214
 005C31A4    mov         eax,[007CA7CC];Screen:TScreen
 005C31A9    call        TScreen.GetFormCount
 005C31AE    dec         eax
 005C31AF    test        eax,eax
>005C31B1    jl          005C3214
 005C31B3    inc         eax
 005C31B4    mov         dword ptr [ebp-4],eax
 005C31B7    xor         edi,edi
 005C31B9    mov         edx,edi
 005C31BB    mov         eax,[007CA7CC];Screen:TScreen
 005C31C0    call        TScreen.GetForm
 005C31C5    cmp         esi,dword ptr [eax+2D8];TForm.FMenu:TMainMenu
>005C31CB    jne         005C320E
 005C31CD    mov         edx,edi
 005C31CF    mov         eax,[007CA7CC];Screen:TScreen
 005C31D4    call        TScreen.GetForm
 005C31D9    cmp         ebx,eax
>005C31DB    je          005C320E
 005C31DD    mov         eax,dword ptr [esi+8];TComponent.FName:TComponentName
 005C31E0    mov         dword ptr [ebp-0C],eax
 005C31E3    mov         byte ptr [ebp-8],11
 005C31E7    lea         eax,[ebp-0C]
 005C31EA    push        eax
 005C31EB    push        0
 005C31ED    lea         edx,[ebp-10]
 005C31F0    mov         eax,[007C44C8];^SResString317:TResStringRec
 005C31F5    call        LoadResString
 005C31FA    mov         ecx,dword ptr [ebp-10]
 005C31FD    mov         dl,1
 005C31FF    mov         eax,[0046BE9C];EInvalidOperation
 005C3204    call        Exception.CreateFmt;EInvalidOperation.Create
 005C3209    call        @RaiseExcept
 005C320E    inc         edi
 005C320F    dec         dword ptr [ebp-4]
>005C3212    jne         005C31B9
 005C3214    mov         eax,dword ptr [ebx+2D8];TForm.FMenu:TMainMenu
 005C321A    test        eax,eax
>005C321C    je          005C3225
 005C321E    xor         edx,edx
 005C3220    call        005B2778
 005C3225    test        byte ptr [ebx+1C],8;TForm.FComponentState:TComponentState
>005C3229    jne         005C3235
 005C322B    test        esi,esi
>005C322D    je          005C3237
 005C322F    test        byte ptr [esi+1C],8;TComponent.FComponentState:TComponentState
>005C3233    je          005C3237
 005C3235    xor         esi,esi
 005C3237    mov         dword ptr [ebx+2D8],esi;TForm.FMenu:TMainMenu
 005C323D    test        esi,esi
>005C323F    je          005C324A
 005C3241    mov         edx,ebx
 005C3243    mov         eax,esi
 005C3245    call        TComponent.FreeNotification
 005C324A    test        esi,esi
>005C324C    je          005C3319
 005C3252    test        byte ptr [ebx+1C],10;TForm.FComponentState:TComponentState
>005C3256    jne         005C3265
 005C3258    cmp         byte ptr [ebx+2BD],3;TForm.FBorderStyle:TFormBorderStyle
>005C325F    je          005C3319
 005C3265    mov         eax,dword ptr [ebx+2D8];TForm.FMenu:TMainMenu
 005C326B    cmp         byte ptr [eax+6C],0;TMainMenu.FAutoMerge:Boolean
>005C326F    jne         005C327A
 005C3271    cmp         byte ptr [ebx+2C2],1;TForm.FFormStyle:TFormStyle
>005C3278    jne         005C3280
 005C327A    test        byte ptr [ebx+1C],10;TForm.FComponentState:TComponentState
>005C327E    je          005C32F4
 005C3280    mov         eax,ebx
 005C3282    call        TWinControl.HandleAllocated
 005C3287    test        al,al
>005C3289    je          005C3333
 005C328F    mov         eax,dword ptr [ebx+2D8];TForm.FMenu:TMainMenu
 005C3295    mov         edx,dword ptr [eax]
 005C3297    call        dword ptr [edx+48];TMainMenu.sub_005B2DB4
 005C329A    mov         edi,eax
 005C329C    mov         eax,ebx
 005C329E    call        TWinControl.GetHandle
 005C32A3    push        eax
 005C32A4    call        user32.GetMenu
 005C32A9    cmp         edi,eax
>005C32AB    je          005C32E2
 005C32AD    call        TStyleManager.GetIsCustomStyleActive
 005C32B2    test        al,al
>005C32B4    je          005C32C9
 005C32B6    mov         eax,[007C41E8];^gvar_007CA764
 005C32BB    cmp         byte ptr [eax],1
>005C32BE    je          005C32C9
 005C32C0    test        byte ptr [ebx+188],4;TForm.FStyleElements:TStyleElements
>005C32C7    jne         005C32E2
 005C32C9    mov         eax,dword ptr [ebx+2D8];TForm.FMenu:TMainMenu
 005C32CF    mov         edx,dword ptr [eax]
 005C32D1    call        dword ptr [edx+48];TMainMenu.sub_005B2DB4
 005C32D4    push        eax
 005C32D5    mov         eax,ebx
 005C32D7    call        TWinControl.GetHandle
 005C32DC    push        eax
 005C32DD    call        user32.SetMenu
 005C32E2    mov         eax,ebx
 005C32E4    call        TWinControl.GetHandle
 005C32E9    mov         edx,eax
 005C32EB    mov         eax,esi
 005C32ED    call        005B2778
>005C32F2    jmp         005C3333
 005C32F4    cmp         byte ptr [ebx+2C2],1;TForm.FFormStyle:TFormStyle
>005C32FB    je          005C3333
 005C32FD    mov         eax,ebx
 005C32FF    call        TWinControl.HandleAllocated
 005C3304    test        al,al
>005C3306    je          005C3333
 005C3308    push        0
 005C330A    mov         eax,ebx
 005C330C    call        TWinControl.GetHandle
 005C3311    push        eax
 005C3312    call        user32.SetMenu
>005C3317    jmp         005C3333
 005C3319    mov         eax,ebx
 005C331B    call        TWinControl.HandleAllocated
 005C3320    test        al,al
>005C3322    je          005C3333
 005C3324    push        0
 005C3326    mov         eax,ebx
 005C3328    call        TWinControl.GetHandle
 005C332D    push        eax
 005C332E    call        user32.SetMenu
 005C3333    cmp         byte ptr [ebx+2C1],0;TForm.FActive:Boolean
>005C333A    je          005C3345
 005C333C    mov         dl,1
 005C333E    mov         eax,ebx
 005C3340    call        005C4BA8
 005C3345    mov         eax,ebx
 005C3347    call        005C30B8
 005C334C    cmp         dword ptr [ebx+2E0],0;TForm.FDesigner:IDesignerHook
>005C3353    je          005C339A
 005C3355    test        byte ptr [ebx+1C],10;TForm.FComponentState:TComponentState
>005C3359    je          005C339A
 005C335B    cmp         dword ptr [ebx+40],0;TForm.FParent:TWinControl
>005C335F    je          005C339A
 005C3361    push        37
 005C3363    push        0
 005C3365    push        0
 005C3367    push        0
 005C3369    push        0
 005C336B    push        0
 005C336D    mov         eax,ebx
 005C336F    call        TWinControl.GetHandle
 005C3374    push        eax
 005C3375    call        user32.SetWindowPos
 005C337A    push        0
 005C337C    xor         ecx,ecx
 005C337E    mov         edx,85
 005C3383    mov         eax,ebx
 005C3385    call        TControl.Perform
 005C338A    push        0
 005C338C    xor         ecx,ecx
 005C338E    mov         edx,0F
 005C3393    mov         eax,ebx
 005C3395    call        TControl.Perform
 005C339A    xor         eax,eax
 005C339C    pop         edx
 005C339D    pop         ecx
 005C339E    pop         ecx
 005C339F    mov         dword ptr fs:[eax],edx
 005C33A2    push        5C33B7
 005C33A7    lea         eax,[ebp-10]
 005C33AA    call        @UStrClr
 005C33AF    ret
>005C33B0    jmp         @HandleFinally
>005C33B5    jmp         005C33A7
 005C33B7    pop         edi
 005C33B8    pop         esi
 005C33B9    pop         ebx
 005C33BA    mov         esp,ebp
 005C33BC    pop         ebp
 005C33BD    ret
*}
end;

//005C33C0
{*function TForm.GetPixelsPerInch:?;
begin
 005C33C0    mov         eax,dword ptr [eax+2E8];TForm.FPixelsPerInch:Integer
 005C33C6    test        eax,eax
>005C33C8    jne         005C33D2
 005C33CA    mov         eax,[007CA7CC];Screen:TScreen
 005C33CF    mov         eax,dword ptr [eax+50]
 005C33D2    ret
end;*}

//005C33D4
{*function sub_005C33D4(?:TCustomForm):?;
begin
 005C33D4    push        ebx
 005C33D5    mov         ebx,eax
 005C33D7    cmp         dword ptr [ebx+37C],0
>005C33DE    jne         005C33F2
 005C33E0    mov         dl,1
 005C33E2    mov         eax,[0046C204];TList
 005C33E7    call        TObject.Create;TList.Create
 005C33EC    mov         dword ptr [ebx+37C],eax
 005C33F2    mov         eax,dword ptr [ebx+37C]
 005C33F8    pop         ebx
 005C33F9    ret
end;*}

//005C33FC
{*function sub_005C33FC(?:TCustomForm):?;
begin
 005C33FC    push        ebx
 005C33FD    mov         ebx,eax
 005C33FF    cmp         dword ptr [ebx+388],0
>005C3406    jne         005C341A
 005C3408    mov         dl,1
 005C340A    mov         eax,[0046C204];TList
 005C340F    call        TObject.Create;TList.Create
 005C3414    mov         dword ptr [ebx+388],eax
 005C341A    mov         eax,dword ptr [ebx+388]
 005C3420    pop         ebx
 005C3421    ret
end;*}

//005C3424
procedure TForm.SetPixelsPerInch(Value:Integer);
begin
{*
 005C3424    push        ebx
 005C3425    push        esi
 005C3426    mov         esi,edx
 005C3428    mov         ebx,eax
 005C342A    mov         eax,ebx
 005C342C    call        TForm.GetPixelsPerInch
 005C3431    cmp         esi,eax
>005C3433    je          005C3453
 005C3435    test        esi,esi
>005C3437    je          005C343E
 005C3439    cmp         esi,24
>005C343C    jl          005C3453
 005C343E    test        byte ptr [ebx+1C],1;TForm.FComponentState:TComponentState
>005C3442    je          005C344D
 005C3444    cmp         dword ptr [ebx+2E8],0;TForm.FPixelsPerInch:Integer
>005C344B    je          005C3453
 005C344D    mov         dword ptr [ebx+2E8],esi;TForm.FPixelsPerInch:Integer
 005C3453    pop         esi
 005C3454    pop         ebx
 005C3455    ret
*}
end;

//005C3458
procedure TForm.SetPosition(Value:TPosition);
begin
{*
 005C3458    cmp         dl,byte ptr [eax+2C3];TForm.FPosition:TPosition
>005C345E    je          005C3471
 005C3460    mov         byte ptr [eax+2C3],dl;TForm.FPosition:TPosition
 005C3466    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
>005C346A    jne         005C3471
 005C346C    call        TWinControl.RecreateWnd
 005C3471    ret
*}
end;

//005C3474
procedure TForm.SetPopupMode(Value:TPopupMode);
begin
{*
 005C3474    push        ebx
 005C3475    mov         ebx,eax
 005C3477    cmp         dl,byte ptr [ebx+380];TForm.FPopupMode:TPopupMode
>005C347D    je          005C34C4
 005C347F    mov         byte ptr [ebx+380],dl;TForm.FPopupMode:TPopupMode
 005C3485    cmp         dl,1
>005C3488    jne         005C349C
 005C348A    cmp         dword ptr [ebx+384],0;TForm.FPopupParent:TCustomForm
>005C3491    je          005C349C
 005C3493    xor         edx,edx
 005C3495    mov         eax,ebx
 005C3497    call        TCustomForm.set_PopupParent
 005C349C    xor         eax,eax
 005C349E    mov         dword ptr [ebx+390],eax;TForm.FInternalPopupParent:TCustomForm
 005C34A4    xor         eax,eax
 005C34A6    mov         dword ptr [ebx+394],eax;TForm.FInternalPopupParentWnd:HWND
 005C34AC    mov         eax,ebx
 005C34AE    call        TWinControl.HandleAllocated
 005C34B3    test        al,al
>005C34B5    je          005C34C4
 005C34B7    test        byte ptr [ebx+1C],10;TForm.FComponentState:TComponentState
>005C34BB    jne         005C34C4
 005C34BD    mov         eax,ebx
 005C34BF    call        TWinControl.RecreateWnd
 005C34C4    pop         ebx
 005C34C5    ret
*}
end;

//005C34C8
procedure TCustomForm.set_PopupParent(Value:TCustomForm);
begin
{*
 005C34C8    push        ebx
 005C34C9    push        esi
 005C34CA    mov         esi,edx
 005C34CC    mov         ebx,eax
 005C34CE    mov         eax,dword ptr [ebx+384];TCustomForm.FPopupParent:TCustomForm
 005C34D4    cmp         esi,eax
>005C34D6    je          005C3529
 005C34D8    cmp         ebx,esi
>005C34DA    je          005C3529
 005C34DC    test        eax,eax
>005C34DE    je          005C34E7
 005C34E0    mov         edx,ebx
 005C34E2    call        TComponent.RemoveFreeNotification
 005C34E7    mov         dword ptr [ebx+384],esi;TCustomForm.FPopupParent:TCustomForm
 005C34ED    test        esi,esi
>005C34EF    je          005C3501
 005C34F1    mov         edx,ebx
 005C34F3    mov         eax,esi
 005C34F5    call        TComponent.FreeNotification
 005C34FA    mov         byte ptr [ebx+380],2;TCustomForm.FPopupMode:TPopupMode
 005C3501    xor         eax,eax
 005C3503    mov         dword ptr [ebx+390],eax;TCustomForm.FInternalPopupParent:TCustomForm
 005C3509    xor         eax,eax
 005C350B    mov         dword ptr [ebx+394],eax;TCustomForm.FInternalPopupParentWnd:HWND
 005C3511    mov         eax,ebx
 005C3513    call        TWinControl.HandleAllocated
 005C3518    test        al,al
>005C351A    je          005C3529
 005C351C    test        byte ptr [ebx+1C],10;TCustomForm.FComponentState:TComponentState
>005C3520    jne         005C3529
 005C3522    mov         eax,ebx
 005C3524    call        TWinControl.RecreateWnd
 005C3529    pop         esi
 005C352A    pop         ebx
 005C352B    ret
*}
end;

//005C352C
function TForm.GetScaled:Boolean;
begin
{*
 005C352C    cmp         dword ptr [eax+2E8],0;TForm.FPixelsPerInch:Integer
 005C3533    setne       al
 005C3536    ret
*}
end;

//005C3538
procedure TForm.SetScaled(Value:Boolean);
begin
{*
 005C3538    push        ebx
 005C3539    push        esi
 005C353A    mov         ebx,edx
 005C353C    mov         esi,eax
 005C353E    mov         eax,esi
 005C3540    call        TForm.GetScaled
 005C3545    cmp         bl,al
>005C3547    je          005C3563
 005C3549    xor         eax,eax
 005C354B    mov         dword ptr [esi+2E8],eax;TForm.FPixelsPerInch:Integer
 005C3551    test        bl,bl
>005C3553    je          005C3563
 005C3555    mov         eax,[007CA7CC];Screen:TScreen
 005C355A    mov         eax,dword ptr [eax+50]
 005C355D    mov         dword ptr [esi+2E8],eax;TForm.FPixelsPerInch:Integer
 005C3563    pop         esi
 005C3564    pop         ebx
 005C3565    ret
*}
end;

//005C3568
procedure TCustomForm.CMColorChanged(var Message:Messages.TMessage);
begin
{*
 005C3568    push        ebx
 005C3569    mov         ebx,eax
 005C356B    mov         eax,ebx
 005C356D    call        TWinControl.CMColorChanged
 005C3572    mov         eax,dword ptr [ebx+2C8];TCustomForm.FCanvas:TControlCanvas
 005C3578    test        eax,eax
>005C357A    je          005C3597
 005C357C    mov         eax,dword ptr [eax+48];TControlCanvas.FBrush:TBrush
 005C357F    mov         edx,dword ptr [ebx+7C];TCustomForm.FColor:TColor
 005C3582    call        TBrush.SetColor
 005C3587    push        0
 005C3589    xor         ecx,ecx
 005C358B    mov         edx,0B03B
 005C3590    mov         eax,ebx
 005C3592    call        TControl.Perform
 005C3597    pop         ebx
 005C3598    ret
*}
end;

//005C359C
{*function sub_005C359C(?:TCustomForm):?;
begin
 005C359C    mov         edx,0FF000005
 005C35A1    cmp         byte ptr [eax+2C2],2;TForm.FFormStyle:TFormStyle
>005C35A8    jne         005C35AF
 005C35AA    mov         edx,0FF00000C
 005C35AF    mov         eax,edx
 005C35B1    ret
end;*}

//005C35B4
procedure TCustomForm.CMCtl3DChanged;
begin
{*
 005C35B4    push        ebx
 005C35B5    mov         ebx,eax
 005C35B7    mov         eax,ebx
 005C35B9    call        TWinControl.CMCtl3DChanged
 005C35BE    cmp         byte ptr [ebx+204],0;TCustomForm.FCtl3D:Boolean
>005C35C5    je          005C35E1
 005C35C7    mov         eax,ebx
 005C35C9    call        005C359C
 005C35CE    cmp         eax,dword ptr [ebx+7C];TCustomForm.FColor:TColor
>005C35D1    jne         005C35FA
 005C35D3    mov         edx,0FF00000F
 005C35D8    mov         eax,ebx
 005C35DA    call        TGroupBox.SetColor
 005C35DF    pop         ebx
 005C35E0    ret
 005C35E1    cmp         dword ptr [ebx+7C],0FF00000F;TCustomForm.FColor:TColor
>005C35E8    jne         005C35FA
 005C35EA    mov         eax,ebx
 005C35EC    call        005C359C
 005C35F1    mov         edx,eax
 005C35F3    mov         eax,ebx
 005C35F5    call        TGroupBox.SetColor
 005C35FA    pop         ebx
 005C35FB    ret
*}
end;

//005C35FC
procedure TCustomForm.CMFontChanged;
begin
{*
 005C35FC    push        ebx
 005C35FD    mov         ebx,eax
 005C35FF    mov         eax,ebx
 005C3601    call        TWinControl.CMFontChanged
 005C3606    mov         eax,dword ptr [ebx+2C8];TCustomForm.FCanvas:TControlCanvas
 005C360C    test        eax,eax
>005C360E    je          005C3618
 005C3610    mov         edx,dword ptr [ebx+74];TCustomForm.FFont:TFont
 005C3613    call        TCanvas.SetFont
 005C3618    pop         ebx
 005C3619    ret
*}
end;

//005C361C
procedure TCustomForm.CMMenuChanged;
begin
{*
 005C361C    push        ebx
 005C361D    mov         ebx,eax
 005C361F    mov         eax,ebx
 005C3621    call        005C30B8
 005C3626    mov         edx,dword ptr [ebx+2D8];TCustomForm.FMenu:TMainMenu
 005C362C    mov         eax,ebx
 005C362E    call        TForm.SetMenu
 005C3633    pop         ebx
 005C3634    ret
*}
end;

//005C3638
procedure TForm.SetWindowState(Value:TWindowState);
begin
{*
 005C3638    push        ebx
 005C3639    push        esi
 005C363A    mov         ebx,edx
 005C363C    mov         esi,eax
 005C363E    cmp         bl,byte ptr [esi+2BE];TForm.FWindowState:TWindowState
>005C3644    je          005C3673
 005C3646    mov         byte ptr [esi+2BE],bl;TForm.FWindowState:TWindowState
 005C364C    test        byte ptr [esi+1C],10;TForm.FComponentState:TComponentState
>005C3650    jne         005C3673
 005C3652    cmp         byte ptr [esi+205],0;TForm.FShowing:Boolean
>005C3659    je          005C3673
 005C365B    movzx       eax,bl
 005C365E    mov         eax,dword ptr [eax*4+7A1D1C]
 005C3665    push        eax
 005C3666    mov         eax,esi
 005C3668    call        TWinControl.GetHandle
 005C366D    push        eax
 005C366E    call        user32.ShowWindow
 005C3673    pop         esi
 005C3674    pop         ebx
 005C3675    ret
*}
end;

//005C3678
procedure sub_005C3678(?:TCustomForm);
begin
{*
 005C3678    push        ebx
 005C3679    push        esi
 005C367A    push        edi
 005C367B    push        ebp
 005C367C    add         esp,0FFFFFFD8
 005C367F    mov         esi,eax
 005C3681    movzx       eax,byte ptr [esi+2C4];TForm.FDefaultMonitor:TDefaultMonitor
 005C3688    test        al,al
>005C368A    je          005C3A1A
 005C3690    mov         edx,dword ptr ds:[7CA7C8];Application:TApplication
 005C3696    cmp         dword ptr [edx+58],0
>005C369A    je          005C3A1A
 005C36A0    xor         edx,edx
 005C36A2    mov         dword ptr [esp],edx
 005C36A5    cmp         al,2
>005C36A7    jne         005C36BE
 005C36A9    mov         eax,[007CA7C8];Application:TApplication
 005C36AE    mov         eax,dword ptr [eax+58]
 005C36B1    call        005C2E30
 005C36B6    mov         eax,dword ptr [eax+4]
 005C36B9    mov         dword ptr [esp],eax
>005C36BC    jmp         005C36FE
 005C36BE    movzx       eax,byte ptr [esi+2C4];TForm.FDefaultMonitor:TDefaultMonitor
 005C36C5    cmp         al,3
>005C36C7    jne         005C36EA
 005C36C9    mov         edx,dword ptr ds:[7CA7CC];Screen:TScreen
 005C36CF    cmp         dword ptr [edx+70],0
>005C36D3    je          005C36EA
 005C36D5    mov         eax,[007CA7CC];Screen:TScreen
 005C36DA    mov         eax,dword ptr [eax+70]
 005C36DD    call        005C2E30
 005C36E2    mov         eax,dword ptr [eax+4]
 005C36E5    mov         dword ptr [esp],eax
>005C36E8    jmp         005C36FE
 005C36EA    cmp         al,1
>005C36EC    jne         005C36FE
 005C36EE    mov         eax,[007CA7CC];Screen:TScreen
 005C36F3    call        TScreen.GetPrimaryMonitor
 005C36F8    mov         eax,dword ptr [eax+4];TMonitor.FHandle:HMONITOR
 005C36FB    mov         dword ptr [esp],eax
 005C36FE    mov         eax,esi
 005C3700    call        005C2E30
 005C3705    mov         eax,dword ptr [eax+4]
 005C3708    mov         dword ptr [esp+4],eax
 005C370C    mov         eax,[007CA7CC];Screen:TScreen
 005C3711    call        TScreen.GetMonitorCount
 005C3716    dec         eax
 005C3717    test        eax,eax
>005C3719    jl          005C3A1A
 005C371F    inc         eax
 005C3720    mov         dword ptr [esp+14],eax
 005C3724    xor         edi,edi
 005C3726    mov         edx,edi
 005C3728    mov         eax,[007CA7CC];Screen:TScreen
 005C372D    call        TScreen.GetMonitor
 005C3732    mov         eax,dword ptr [eax+4];TMonitor.FHandle:HMONITOR
 005C3735    cmp         eax,dword ptr [esp]
>005C3738    jne         005C3A0F
 005C373E    mov         eax,dword ptr [esp]
 005C3741    cmp         eax,dword ptr [esp+4]
>005C3745    je          005C39B3
 005C374B    mov         eax,[007CA7CC];Screen:TScreen
 005C3750    call        TScreen.GetMonitorCount
 005C3755    mov         ebp,eax
 005C3757    dec         ebp
 005C3758    test        ebp,ebp
>005C375A    jl          005C3A0F
 005C3760    inc         ebp
 005C3761    mov         dword ptr [esp+8],0
 005C3769    mov         edx,dword ptr [esp+8]
 005C376D    mov         eax,[007CA7CC];Screen:TScreen
 005C3772    call        TScreen.GetMonitor
 005C3777    mov         eax,dword ptr [eax+4];TMonitor.FHandle:HMONITOR
 005C377A    cmp         eax,dword ptr [esp+4]
>005C377E    jne         005C39A6
 005C3784    movzx       eax,byte ptr [esi+2C3];TForm.FPosition:TPosition
 005C378B    cmp         al,4
>005C378D    jne         005C37E7
 005C378F    mov         edx,edi
 005C3791    mov         eax,[007CA7CC];Screen:TScreen
 005C3796    call        TScreen.GetMonitor
 005C379B    lea         edx,[esp+18]
 005C379F    call        005C7C24
 005C37A4    mov         eax,dword ptr [esi+58];TForm.FWidth:Integer
 005C37A7    push        eax
 005C37A8    mov         eax,dword ptr [esi+5C];TForm.FHeight:Integer
 005C37AB    push        eax
 005C37AC    mov         ecx,dword ptr [esp+2C]
 005C37B0    sub         ecx,dword ptr [esp+24]
 005C37B4    sub         ecx,dword ptr [esi+5C]
 005C37B7    sar         ecx,1
>005C37B9    jns         005C37BE
 005C37BB    adc         ecx,0
 005C37BE    add         ecx,dword ptr [esp+24]
 005C37C2    mov         edx,dword ptr [esp+28]
 005C37C6    sub         edx,dword ptr [esp+20]
 005C37CA    sub         edx,dword ptr [esi+58]
 005C37CD    sar         edx,1
>005C37CF    jns         005C37D4
 005C37D1    adc         edx,0
 005C37D4    add         edx,dword ptr [esp+20]
 005C37D8    mov         eax,esi
 005C37DA    mov         ebx,dword ptr [eax]
 005C37DC    call        dword ptr [ebx+0B0];TWinControl.SetBounds
>005C37E2    jmp         005C39A6
 005C37E7    cmp         al,6
>005C37E9    jne         005C3866
 005C37EB    mov         eax,dword ptr [esi+58];TForm.FWidth:Integer
 005C37EE    push        eax
 005C37EF    mov         eax,dword ptr [esi+5C];TForm.FHeight:Integer
 005C37F2    push        eax
 005C37F3    mov         edx,edi
 005C37F5    mov         eax,[007CA7CC];Screen:TScreen
 005C37FA    call        TScreen.GetMonitor
 005C37FF    call        005C7BC4
 005C3804    mov         ebx,eax
 005C3806    mov         edx,edi
 005C3808    mov         eax,[007CA7CC];Screen:TScreen
 005C380D    call        TScreen.GetMonitor
 005C3812    call        TMonitor.GetHeight
 005C3817    sub         eax,dword ptr [esi+5C]
 005C381A    sar         eax,1
>005C381C    jns         005C3821
 005C381E    adc         eax,0
 005C3821    add         ebx,eax
 005C3823    push        ebx
 005C3824    mov         edx,edi
 005C3826    mov         eax,[007CA7CC];Screen:TScreen
 005C382B    call        TScreen.GetMonitor
 005C3830    call        005C7B90
 005C3835    mov         ebx,eax
 005C3837    mov         edx,edi
 005C3839    mov         eax,[007CA7CC];Screen:TScreen
 005C383E    call        TScreen.GetMonitor
 005C3843    call        TMonitor.GetWidth
 005C3848    sub         eax,dword ptr [esi+58]
 005C384B    sar         eax,1
>005C384D    jns         005C3852
 005C384F    adc         eax,0
 005C3852    add         ebx,eax
 005C3854    mov         edx,ebx
 005C3856    mov         eax,esi
 005C3858    pop         ecx
 005C3859    mov         ebx,dword ptr [eax]
 005C385B    call        dword ptr [ebx+0B0];TWinControl.SetBounds
>005C3861    jmp         005C39A6
 005C3866    mov         edx,edi
 005C3868    mov         eax,[007CA7CC];Screen:TScreen
 005C386D    call        TScreen.GetMonitor
 005C3872    call        005C7B90
 005C3877    mov         ebx,eax
 005C3879    mov         eax,esi
 005C387B    call        TCustomForm.GetLeft
 005C3880    add         ebx,eax
 005C3882    mov         edx,dword ptr [esp+8]
 005C3886    mov         eax,[007CA7CC];Screen:TScreen
 005C388B    call        TScreen.GetMonitor
 005C3890    call        005C7B90
 005C3895    sub         ebx,eax
 005C3897    mov         dword ptr [esp+0C],ebx
 005C389B    mov         edx,edi
 005C389D    mov         eax,[007CA7CC];Screen:TScreen
 005C38A2    call        TScreen.GetMonitor
 005C38A7    call        005C7B90
 005C38AC    mov         ebx,eax
 005C38AE    mov         edx,edi
 005C38B0    mov         eax,[007CA7CC];Screen:TScreen
 005C38B5    call        TScreen.GetMonitor
 005C38BA    call        TMonitor.GetWidth
 005C38BF    add         ebx,eax
 005C38C1    mov         eax,dword ptr [esp+0C]
 005C38C5    add         eax,dword ptr [esi+58];TForm.FWidth:Integer
 005C38C8    cmp         ebx,eax
>005C38CA    jge         005C38F9
 005C38CC    mov         edx,edi
 005C38CE    mov         eax,[007CA7CC];Screen:TScreen
 005C38D3    call        TScreen.GetMonitor
 005C38D8    call        005C7B90
 005C38DD    mov         ebx,eax
 005C38DF    mov         edx,edi
 005C38E1    mov         eax,[007CA7CC];Screen:TScreen
 005C38E6    call        TScreen.GetMonitor
 005C38EB    call        TMonitor.GetWidth
 005C38F0    add         ebx,eax
 005C38F2    sub         ebx,dword ptr [esi+58]
 005C38F5    mov         dword ptr [esp+0C],ebx
 005C38F9    mov         edx,edi
 005C38FB    mov         eax,[007CA7CC];Screen:TScreen
 005C3900    call        TScreen.GetMonitor
 005C3905    call        005C7BC4
 005C390A    mov         ebx,eax
 005C390C    mov         eax,esi
 005C390E    call        TCustomForm.GetTop
 005C3913    add         ebx,eax
 005C3915    mov         edx,dword ptr [esp+8]
 005C3919    mov         eax,[007CA7CC];Screen:TScreen
 005C391E    call        TScreen.GetMonitor
 005C3923    call        005C7BC4
 005C3928    sub         ebx,eax
 005C392A    mov         dword ptr [esp+10],ebx
 005C392E    mov         edx,edi
 005C3930    mov         eax,[007CA7CC];Screen:TScreen
 005C3935    call        TScreen.GetMonitor
 005C393A    call        005C7BC4
 005C393F    mov         ebx,eax
 005C3941    mov         edx,edi
 005C3943    mov         eax,[007CA7CC];Screen:TScreen
 005C3948    call        TScreen.GetMonitor
 005C394D    call        TMonitor.GetHeight
 005C3952    add         ebx,eax
 005C3954    mov         eax,dword ptr [esp+10]
 005C3958    add         eax,dword ptr [esi+5C];TForm.FHeight:Integer
 005C395B    cmp         ebx,eax
>005C395D    jge         005C398C
 005C395F    mov         edx,edi
 005C3961    mov         eax,[007CA7CC];Screen:TScreen
 005C3966    call        TScreen.GetMonitor
 005C396B    call        005C7BC4
 005C3970    mov         ebx,eax
 005C3972    mov         edx,edi
 005C3974    mov         eax,[007CA7CC];Screen:TScreen
 005C3979    call        TScreen.GetMonitor
 005C397E    call        TMonitor.GetHeight
 005C3983    add         ebx,eax
 005C3985    sub         ebx,dword ptr [esi+5C]
 005C3988    mov         dword ptr [esp+10],ebx
 005C398C    mov         eax,dword ptr [esi+58];TForm.FWidth:Integer
 005C398F    push        eax
 005C3990    mov         eax,dword ptr [esi+5C];TForm.FHeight:Integer
 005C3993    push        eax
 005C3994    mov         ecx,dword ptr [esp+18]
 005C3998    mov         edx,dword ptr [esp+14]
 005C399C    mov         eax,esi
 005C399E    mov         ebx,dword ptr [eax]
 005C39A0    call        dword ptr [ebx+0B0];TWinControl.SetBounds
 005C39A6    inc         dword ptr [esp+8]
 005C39AA    dec         ebp
>005C39AB    jne         005C3769
>005C39B1    jmp         005C3A0F
 005C39B3    cmp         byte ptr [esi+2C3],4;TForm.FPosition:TPosition
>005C39BA    jne         005C3A0F
 005C39BC    mov         edx,edi
 005C39BE    mov         eax,[007CA7CC];Screen:TScreen
 005C39C3    call        TScreen.GetMonitor
 005C39C8    lea         edx,[esp+18]
 005C39CC    call        005C7C24
 005C39D1    mov         eax,dword ptr [esi+58];TForm.FWidth:Integer
 005C39D4    push        eax
 005C39D5    mov         eax,dword ptr [esi+5C];TForm.FHeight:Integer
 005C39D8    push        eax
 005C39D9    mov         ecx,dword ptr [esp+2C]
 005C39DD    sub         ecx,dword ptr [esp+24]
 005C39E1    sub         ecx,dword ptr [esi+5C]
 005C39E4    sar         ecx,1
>005C39E6    jns         005C39EB
 005C39E8    adc         ecx,0
 005C39EB    add         ecx,dword ptr [esp+24]
 005C39EF    mov         edx,dword ptr [esp+28]
 005C39F3    mov         ebp,dword ptr [esp+20]
 005C39F7    sub         edx,ebp
 005C39F9    sub         edx,dword ptr [esi+58]
 005C39FC    sar         edx,1
>005C39FE    jns         005C3A03
 005C3A00    adc         edx,0
 005C3A03    add         edx,ebp
 005C3A05    mov         eax,esi
 005C3A07    mov         ebx,dword ptr [eax]
 005C3A09    call        dword ptr [ebx+0B0];TWinControl.SetBounds
 005C3A0F    inc         edi
 005C3A10    dec         dword ptr [esp+14]
>005C3A14    jne         005C3726
 005C3A1A    add         esp,28
 005C3A1D    pop         ebp
 005C3A1E    pop         edi
 005C3A1F    pop         esi
 005C3A20    pop         ebx
 005C3A21    ret
*}
end;

//005C3A24
{*function sub_005C3A24:?;
begin
 005C3A24    push        ebx
 005C3A25    push        eax
 005C3A26    call        user32.GetParent
 005C3A2B    mov         ebx,eax
>005C3A2D    jmp         005C3A37
 005C3A2F    push        ebx
 005C3A30    call        user32.GetParent
 005C3A35    mov         ebx,eax
 005C3A37    test        ebx,ebx
>005C3A39    je          005C3A53
 005C3A3B    mov         edx,0FFFFFFEC
 005C3A40    mov         eax,ebx
 005C3A42    call        GetWindowLong
 005C3A47    and         eax,80
 005C3A4C    cmp         eax,80
>005C3A51    je          005C3A2F
 005C3A53    test        ebx,ebx
>005C3A55    jne         005C3A99
 005C3A57    mov         eax,[007CA7C8];Application:TApplication
 005C3A5C    mov         eax,dword ptr [eax+58]
 005C3A5F    test        eax,eax
>005C3A61    je          005C3A77
 005C3A63    call        TWinControl.GetHandle
 005C3A68    push        0EC
 005C3A6A    push        eax
 005C3A6B    call        user32.GetWindowLongW
 005C3A70    test        al,80
 005C3A72    sete        al
>005C3A75    jmp         005C3A79
 005C3A77    xor         eax,eax
 005C3A79    test        al,al
>005C3A7B    je          005C3A8E
 005C3A7D    mov         eax,[007CA7C8];Application:TApplication
 005C3A82    mov         eax,dword ptr [eax+58]
 005C3A85    call        TWinControl.GetHandle
 005C3A8A    mov         ebx,eax
>005C3A8C    jmp         005C3A99
 005C3A8E    mov         eax,[007CA7C8];Application:TApplication
 005C3A93    mov         ebx,dword ptr [eax+188]
 005C3A99    mov         eax,ebx
 005C3A9B    pop         ebx
 005C3A9C    ret
end;*}

//005C3AA0
procedure TCustomForm.CreateParams(var Params:TCreateParams);
begin
{*
 005C3AA0    push        ebx
 005C3AA1    push        esi
 005C3AA2    push        edi
 005C3AA3    push        ebp
 005C3AA4    add         esp,0FFFFFFF0
 005C3AA7    mov         edi,edx
 005C3AA9    mov         ebx,eax
 005C3AAB    mov         edx,edi
 005C3AAD    mov         eax,ebx
 005C3AAF    call        TScrollingWinControl.CreateParams
 005C3AB4    mov         edx,edi
 005C3AB6    mov         eax,ebx
 005C3AB8    call        005C7390
 005C3ABD    cmp         dword ptr [ebx+40],0;TCustomForm.FParent:TWinControl
>005C3AC1    jne         005C3EC8
 005C3AC7    cmp         dword ptr [ebx+1E4],0;TCustomForm.FParentWindow:HWND
>005C3ACE    jne         005C3EC8
 005C3AD4    xor         esi,esi
 005C3AD6    test        byte ptr [ebx+1C],10;TCustomForm.FComponentState:TComponentState
>005C3ADA    je          005C3AE0
 005C3ADC    mov         al,2
>005C3ADE    jmp         005C3B0A
 005C3AE0    test        byte ptr [ebx+3BC],8;TCustomForm.FFormState:TFormState
>005C3AE7    je          005C3AF6
 005C3AE9    cmp         byte ptr [ebx+380],0;TCustomForm.FPopupMode:TPopupMode
>005C3AF0    jne         005C3AF6
 005C3AF2    mov         al,1
>005C3AF4    jmp         005C3B0A
 005C3AF6    cmp         byte ptr [ebx+2C2],0;TCustomForm.FFormStyle:TFormStyle
>005C3AFD    jne         005C3B08
 005C3AFF    movzx       eax,byte ptr [ebx+380];TCustomForm.FPopupMode:TPopupMode
>005C3B06    jmp         005C3B0A
 005C3B08    xor         eax,eax
 005C3B0A    mov         ebp,dword ptr [ebx+390];TCustomForm.FInternalPopupParent:TCustomForm
 005C3B10    test        ebp,ebp
>005C3B12    jne         005C3E5A
 005C3B18    cmp         dword ptr [ebx+394],0;TCustomForm.FInternalPopupParentWnd:HWND
>005C3B1F    jne         005C3E5A
 005C3B25    sub         al,1
>005C3B27    jb          005C3B3C
>005C3B29    je          005C3C25
 005C3B2F    dec         al
>005C3B31    je          005C3DBF
>005C3B37    jmp         005C3E75
 005C3B3C    mov         eax,[007CA7C8];Application:TApplication
 005C3B41    cmp         byte ptr [eax+0EB],0
>005C3B48    je          005C3BF9
 005C3B4E    cmp         byte ptr [ebx+3A8],0;TCustomForm.FCreatingMainForm:Boolean
>005C3B55    jne         005C3B61
 005C3B57    mov         eax,[007CA7C8];Application:TApplication
 005C3B5C    cmp         ebx,dword ptr [eax+58]
>005C3B5F    jne         005C3B6B
 005C3B61    xor         eax,eax
 005C3B63    mov         dword ptr [edi+1C],eax;TCreateParams.WndParent:HWND
>005C3B66    jmp         005C3E75
 005C3B6B    mov         eax,[007CA7C8];Application:TApplication
 005C3B70    mov         ebp,dword ptr [eax+58]
 005C3B73    test        ebp,ebp
>005C3B75    je          005C3BE6
 005C3B77    mov         eax,ebp
 005C3B79    call        TWinControl.HandleAllocated
 005C3B7E    test        al,al
>005C3B80    je          005C3BE6
 005C3B82    mov         eax,[007CA7C8];Application:TApplication
 005C3B87    call        005CCE5C
 005C3B8C    mov         ebp,eax
 005C3B8E    mov         dword ptr [edi+1C],ebp;TCreateParams.WndParent:HWND
 005C3B91    mov         eax,[007CA7C8];Application:TApplication
 005C3B96    mov         eax,dword ptr [eax+58]
 005C3B99    call        TWinControl.GetHandle
 005C3B9E    cmp         ebp,eax
>005C3BA0    jne         005C3E75
 005C3BA6    mov         eax,[007CA7C8];Application:TApplication
 005C3BAB    mov         eax,dword ptr [eax+58]
 005C3BAE    call        005C33D4
 005C3BB3    mov         edx,ebx
 005C3BB5    call        TList.IndexOf
 005C3BBA    test        eax,eax
>005C3BBC    jge         005C3BD2
 005C3BBE    mov         eax,[007CA7C8];Application:TApplication
 005C3BC3    mov         eax,dword ptr [eax+58]
 005C3BC6    call        005C33D4
 005C3BCB    mov         edx,ebx
 005C3BCD    call        TList.Add
 005C3BD2    mov         eax,[007CA7C8];Application:TApplication
 005C3BD7    mov         edx,dword ptr [eax+58]
 005C3BDA    mov         eax,ebx
 005C3BDC    call        TComponent.FreeNotification
>005C3BE1    jmp         005C3E75
 005C3BE6    mov         eax,[007CA7C8];Application:TApplication
 005C3BEB    mov         eax,dword ptr [eax+188]
 005C3BF1    mov         dword ptr [edi+1C],eax;TCreateParams.WndParent:HWND
>005C3BF4    jmp         005C3E75
 005C3BF9    mov         eax,[007CA7C8];Application:TApplication
 005C3BFE    mov         eax,dword ptr [eax+188]
 005C3C04    mov         dword ptr [edi+1C],eax;TCreateParams.WndParent:HWND
 005C3C07    push        0EC
 005C3C09    push        eax
 005C3C0A    call        user32.GetWindowLongW
 005C3C0F    mov         edx,dword ptr [edi+1C];TCreateParams.WndParent:HWND
 005C3C12    and         eax,0FFFFFF7F
 005C3C17    push        eax
 005C3C18    push        0EC
 005C3C1A    push        edx
 005C3C1B    call        user32.SetWindowLongW
>005C3C20    jmp         005C3E75
 005C3C25    cmp         byte ptr [ebx+3A8],0;TCustomForm.FCreatingMainForm:Boolean
>005C3C2C    je          005C3C35
 005C3C2E    xor         eax,eax
 005C3C30    mov         dword ptr [edi+1C],eax;TCreateParams.WndParent:HWND
>005C3C33    jmp         005C3C42
 005C3C35    mov         eax,[007CA7C8];Application:TApplication
 005C3C3A    call        005CCE10
 005C3C3F    mov         dword ptr [edi+1C],eax;TCreateParams.WndParent:HWND
 005C3C42    cmp         dword ptr [edi+1C],0;TCreateParams.WndParent:HWND
>005C3C46    je          005C3C73
 005C3C48    mov         eax,dword ptr [edi+1C];TCreateParams.WndParent:HWND
 005C3C4B    call        005BE99C
 005C3C50    test        eax,eax
>005C3C52    jne         005C3C6E
 005C3C54    mov         eax,dword ptr [edi+1C];TCreateParams.WndParent:HWND
 005C3C57    push        eax
 005C3C58    call        user32.IsWindowVisible
 005C3C5D    test        eax,eax
>005C3C5F    je          005C3C6E
 005C3C61    mov         eax,dword ptr [edi+1C];TCreateParams.WndParent:HWND
 005C3C64    push        eax
 005C3C65    call        user32.IsWindowEnabled
 005C3C6A    test        eax,eax
>005C3C6C    jne         005C3C73
 005C3C6E    xor         eax,eax
 005C3C70    mov         dword ptr [edi+1C],eax;TCreateParams.WndParent:HWND
 005C3C73    mov         eax,dword ptr [edi+1C];TCreateParams.WndParent:HWND
 005C3C76    test        eax,eax
>005C3C78    je          005C3C99
 005C3C7A    push        0EC
 005C3C7C    push        eax
 005C3C7D    call        user32.GetWindowLongW
 005C3C82    and         eax,80
 005C3C87    cmp         eax,80
>005C3C8C    jne         005C3C99
 005C3C8E    mov         eax,dword ptr [edi+1C];TCreateParams.WndParent:HWND
 005C3C91    call        005C3A24
 005C3C96    mov         dword ptr [edi+1C],eax;TCreateParams.WndParent:HWND
 005C3C99    mov         eax,dword ptr [edi+1C];TCreateParams.WndParent:HWND
 005C3C9C    test        eax,eax
>005C3C9E    je          005C3CCA
 005C3CA0    mov         edx,dword ptr ds:[7CA7CC];Screen:TScreen
 005C3CA6    cmp         dword ptr [edx+74],0
>005C3CAA    je          005C3CCA
 005C3CAC    mov         edx,dword ptr ds:[7CA7CC];Screen:TScreen
 005C3CB2    mov         edx,dword ptr [edx+74]
 005C3CB5    cmp         eax,dword ptr [edx+278]
>005C3CBB    jne         005C3CCA
 005C3CBD    mov         eax,[007CA7CC];Screen:TScreen
 005C3CC2    mov         esi,dword ptr [eax+74]
>005C3CC5    jmp         005C3E75
 005C3CCA    test        eax,eax
>005C3CCC    jne         005C3E75
 005C3CD2    mov         eax,[007CA7C8];Application:TApplication
 005C3CD7    cmp         byte ptr [eax+0EB],0
>005C3CDE    je          005C3D93
 005C3CE4    cmp         byte ptr [ebx+3A8],0;TCustomForm.FCreatingMainForm:Boolean
>005C3CEB    jne         005C3CF7
 005C3CED    mov         eax,[007CA7C8];Application:TApplication
 005C3CF2    cmp         ebx,dword ptr [eax+58]
>005C3CF5    jne         005C3D01
 005C3CF7    xor         eax,eax
 005C3CF9    mov         dword ptr [edi+1C],eax;TCreateParams.WndParent:HWND
>005C3CFC    jmp         005C3E75
 005C3D01    mov         eax,[007CA7C8];Application:TApplication
 005C3D06    cmp         dword ptr [eax+58],0
>005C3D0A    je          005C3D80
 005C3D0C    mov         eax,[007CA7C8];Application:TApplication
 005C3D11    mov         eax,dword ptr [eax+58]
 005C3D14    call        TWinControl.HandleAllocated
 005C3D19    test        al,al
>005C3D1B    je          005C3D80
 005C3D1D    mov         eax,[007CA7C8];Application:TApplication
 005C3D22    call        005CCE5C
 005C3D27    mov         dword ptr [edi+1C],eax;TCreateParams.WndParent:HWND
 005C3D2A    mov         eax,[007CA7C8];Application:TApplication
 005C3D2F    mov         eax,dword ptr [eax+58]
 005C3D32    call        TWinControl.GetHandle
 005C3D37    cmp         eax,dword ptr [edi+1C];TCreateParams.WndParent:HWND
>005C3D3A    jne         005C3E75
 005C3D40    mov         eax,[007CA7C8];Application:TApplication
 005C3D45    mov         eax,dword ptr [eax+58]
 005C3D48    call        005C33D4
 005C3D4D    mov         edx,ebx
 005C3D4F    call        TList.IndexOf
 005C3D54    test        eax,eax
>005C3D56    jge         005C3D6C
 005C3D58    mov         eax,[007CA7C8];Application:TApplication
 005C3D5D    mov         eax,dword ptr [eax+58]
 005C3D60    call        005C33D4
 005C3D65    mov         edx,ebx
 005C3D67    call        TList.Add
 005C3D6C    mov         eax,[007CA7C8];Application:TApplication
 005C3D71    mov         edx,dword ptr [eax+58]
 005C3D74    mov         eax,ebx
 005C3D76    call        TComponent.FreeNotification
>005C3D7B    jmp         005C3E75
 005C3D80    mov         eax,[007CA7C8];Application:TApplication
 005C3D85    mov         eax,dword ptr [eax+188]
 005C3D8B    mov         dword ptr [edi+1C],eax;TCreateParams.WndParent:HWND
>005C3D8E    jmp         005C3E75
 005C3D93    mov         eax,[007CA7C8];Application:TApplication
 005C3D98    mov         eax,dword ptr [eax+188]
 005C3D9E    mov         dword ptr [edi+1C],eax;TCreateParams.WndParent:HWND
 005C3DA1    push        0EC
 005C3DA3    push        eax
 005C3DA4    call        user32.GetWindowLongW
 005C3DA9    mov         edx,dword ptr [edi+1C];TCreateParams.WndParent:HWND
 005C3DAC    and         eax,0FFFFFF7F
 005C3DB1    push        eax
 005C3DB2    push        0EC
 005C3DB4    push        edx
 005C3DB5    call        user32.SetWindowLongW
>005C3DBA    jmp         005C3E75
 005C3DBF    mov         ebp,dword ptr [ebx+384];TCustomForm.FPopupParent:TCustomForm
 005C3DC5    test        ebp,ebp
>005C3DC7    je          005C3DE1
 005C3DC9    test        byte ptr [ebx+1C],10;TCustomForm.FComponentState:TComponentState
>005C3DCD    jne         005C3DE1
 005C3DCF    mov         eax,ebp
 005C3DD1    call        TWinControl.GetHandle
 005C3DD6    mov         dword ptr [edi+1C],eax;TCreateParams.WndParent:HWND
 005C3DD9    mov         esi,dword ptr [ebx+384];TCustomForm.FPopupParent:TCustomForm
>005C3DDF    jmp         005C3DEE
 005C3DE1    mov         eax,[007CA7C8];Application:TApplication
 005C3DE6    call        005CCE5C
 005C3DEB    mov         dword ptr [edi+1C],eax;TCreateParams.WndParent:HWND
 005C3DEE    mov         eax,dword ptr [edi+1C];TCreateParams.WndParent:HWND
 005C3DF1    test        eax,eax
>005C3DF3    je          005C3E1C
 005C3DF5    mov         edx,dword ptr ds:[7CA7C8];Application:TApplication
 005C3DFB    cmp         dword ptr [edx+58],0
>005C3DFF    je          005C3E1C
 005C3E01    mov         edx,dword ptr ds:[7CA7C8];Application:TApplication
 005C3E07    mov         edx,dword ptr [edx+58]
 005C3E0A    cmp         eax,dword ptr [edx+278]
>005C3E10    jne         005C3E1C
 005C3E12    mov         eax,[007CA7C8];Application:TApplication
 005C3E17    mov         esi,dword ptr [eax+58]
>005C3E1A    jmp         005C3E75
 005C3E1C    test        eax,eax
>005C3E1E    jne         005C3E75
 005C3E20    mov         eax,[007CA7C8];Application:TApplication
 005C3E25    mov         eax,dword ptr [eax+188]
 005C3E2B    mov         dword ptr [edi+1C],eax;TCreateParams.WndParent:HWND
 005C3E2E    mov         eax,[007CA7C8];Application:TApplication
 005C3E33    cmp         byte ptr [eax+0EB],0
>005C3E3A    jne         005C3E75
 005C3E3C    mov         eax,dword ptr [edi+1C];TCreateParams.WndParent:HWND
 005C3E3F    push        0EC
 005C3E41    push        eax
 005C3E42    call        user32.GetWindowLongW
 005C3E47    mov         edx,dword ptr [edi+1C];TCreateParams.WndParent:HWND
 005C3E4A    and         eax,0FFFFFF7F
 005C3E4F    push        eax
 005C3E50    push        0EC
 005C3E52    push        edx
 005C3E53    call        user32.SetWindowLongW
>005C3E58    jmp         005C3E75
 005C3E5A    mov         eax,dword ptr [ebx+394];TCustomForm.FInternalPopupParentWnd:HWND
 005C3E60    test        eax,eax
>005C3E62    je          005C3E69
 005C3E64    mov         dword ptr [edi+1C],eax;TCreateParams.WndParent:HWND
>005C3E67    jmp         005C3E75
 005C3E69    mov         esi,ebp
 005C3E6B    mov         eax,ebp
 005C3E6D    call        TWinControl.GetHandle
 005C3E72    mov         dword ptr [edi+1C],eax;TCreateParams.WndParent:HWND
 005C3E75    test        esi,esi
>005C3E77    je          005C3EAA
 005C3E79    mov         eax,esi
 005C3E7B    call        005C33D4
 005C3E80    mov         edx,ebx
 005C3E82    call        TList.IndexOf
 005C3E87    test        eax,eax
>005C3E89    jge         005C3E99
 005C3E8B    mov         eax,esi
 005C3E8D    call        005C33D4
 005C3E92    mov         edx,ebx
 005C3E94    call        TList.Add
 005C3E99    mov         edx,esi
 005C3E9B    mov         eax,ebx
 005C3E9D    call        TComponent.FreeNotification
 005C3EA2    mov         dword ptr [ebx+390],esi;TCustomForm.FInternalPopupParent:TCustomForm
>005C3EA8    jmp         005C3EC1
 005C3EAA    mov         eax,dword ptr [edi+1C];TCreateParams.WndParent:HWND
 005C3EAD    mov         edx,dword ptr ds:[7CA7C8];Application:TApplication
 005C3EB3    cmp         eax,dword ptr [edx+188]
>005C3EB9    je          005C3EC1
 005C3EBB    mov         dword ptr [ebx+394],eax;TCustomForm.FInternalPopupParentWnd:HWND
 005C3EC1    and         dword ptr [edi+4],0BFFCFFFF;TCreateParams.Style:DWORD
 005C3EC8    mov         dword ptr [edi+24],8;TCreateParams.WindowClass:TWndClass
 005C3ECF    test        byte ptr [ebx+1C],10;TCustomForm.FComponentState:TComponentState
>005C3ED3    je          005C3EE7
 005C3ED5    cmp         dword ptr [ebx+40],0;TCustomForm.FParent:TWinControl
>005C3ED9    jne         005C3EE7
 005C3EDB    or          dword ptr [edi+4],0CF0000;TCreateParams.Style:DWORD
>005C3EE2    jmp         005C40A2
 005C3EE7    test        byte ptr [ebx+1C],10;TCustomForm.FComponentState:TComponentState
>005C3EEB    je          005C3EF3
 005C3EED    cmp         dword ptr [ebx+40],0;TCustomForm.FParent:TWinControl
>005C3EF1    jne         005C3F0D
 005C3EF3    movzx       eax,byte ptr [ebx+2C3];TCustomForm.FPosition:TPosition
 005C3EFA    dec         eax
 005C3EFB    sub         al,2
>005C3EFD    jae         005C3F0D
 005C3EFF    mov         dword ptr [edi+0C],80000000;TCreateParams.X:Integer
 005C3F06    mov         dword ptr [edi+10],80000000;TCreateParams.Y:Integer
 005C3F0D    lea         eax,[edi+24];TCreateParams.WindowClass:TWndClass
 005C3F10    push        eax
 005C3F11    lea         ecx,[edi+8];TCreateParams.ExStyle:DWORD
 005C3F14    lea         edx,[edi+4];TCreateParams.Style:DWORD
 005C3F17    mov         eax,ebx
 005C3F19    mov         si,0FFA6
 005C3F1D    call        @CallDynaInst;TCustomForm.sub_005C29E0
 005C3F22    movzx       eax,byte ptr [ebx+2BD];TCustomForm.FBorderStyle:TFormBorderStyle
 005C3F29    cmp         byte ptr [ebx+2C2],1;TCustomForm.FFormStyle:TFormStyle
>005C3F30    jne         005C3F3F
 005C3F32    mov         edx,eax
 005C3F34    test        dl,dl
>005C3F36    je          005C3F3D
 005C3F38    sub         dl,3
>005C3F3B    jne         005C3F3F
 005C3F3D    mov         al,2
 005C3F3F    mov         edx,eax
 005C3F41    sub         dl,2
>005C3F44    je          005C3F4B
 005C3F46    sub         dl,3
>005C3F49    jne         005C3F76
 005C3F4B    test        byte ptr [ebx+1C],10;TCustomForm.FComponentState:TComponentState
>005C3F4F    je          005C3F57
 005C3F51    cmp         dword ptr [ebx+40],0;TCustomForm.FParent:TWinControl
>005C3F55    jne         005C3F76
 005C3F57    movzx       edx,byte ptr [ebx+2C3];TCustomForm.FPosition:TPosition
 005C3F5E    sub         dl,1
>005C3F61    je          005C3F68
 005C3F63    sub         dl,2
>005C3F66    jne         005C3F76
 005C3F68    mov         dword ptr [edi+14],80000000;TCreateParams.Width:Integer
 005C3F6F    mov         dword ptr [edi+18],80000000;TCreateParams.Height:Integer
 005C3F76    sub         al,3
>005C3F78    jae         005C3FC6
 005C3F7A    test        byte ptr [ebx+1C],10;TCustomForm.FComponentState:TComponentState
>005C3F7E    jne         005C3FCD
 005C3F80    movzx       eax,byte ptr [ebx+2BE];TCustomForm.FWindowState:TWindowState
 005C3F87    cmp         al,1
>005C3F89    jne         005C3FB9
 005C3F8B    mov         eax,[007CA7C8];Application:TApplication
 005C3F90    cmp         byte ptr [eax+0EB],0
>005C3F97    je          005C3FB0
 005C3F99    cmp         byte ptr [ebx+3A8],0;TCustomForm.FCreatingMainForm:Boolean
>005C3FA0    je          005C3FB0
 005C3FA2    mov         eax,[007CA7C8];Application:TApplication
 005C3FA7    mov         byte ptr [eax+0F4],1
>005C3FAE    jmp         005C3FCD
 005C3FB0    or          dword ptr [edi+4],20000000;TCreateParams.Style:DWORD
>005C3FB7    jmp         005C3FCD
 005C3FB9    cmp         al,2
>005C3FBB    jne         005C3FCD
 005C3FBD    or          dword ptr [edi+4],1000000;TCreateParams.Style:DWORD
>005C3FC4    jmp         005C3FCD
 005C3FC6    mov         byte ptr [ebx+2BE],0;TCustomForm.FWindowState:TWindowState
 005C3FCD    test        byte ptr [ebx+1D],2;TCustomForm.?f1D:byte
>005C3FD1    je          005C3FDA
 005C3FD3    and         dword ptr [edi+4],0FF3FFFFF;TCreateParams.Style:DWORD
 005C3FDA    cmp         byte ptr [ebx+2C2],1;TCustomForm.FFormStyle:TFormStyle
>005C3FE1    jne         005C3FEB
 005C3FE3    mov         eax,410E90;user32.DefMDIChildProcW:IntPtr
 005C3FE8    mov         dword ptr [edi+28],eax;TCreateParams.WindowClass:TWndClass
 005C3FEB    lea         ecx,[edi+8];TCreateParams.ExStyle:DWORD
 005C3FEE    lea         edx,[edi+4];TCreateParams.Style:DWORD
 005C3FF1    mov         eax,ebx
 005C3FF3    mov         si,0FFA7
 005C3FF7    call        @CallDynaInst;TCustomForm.sub_005C2830
 005C3FFC    mov         eax,[007CA7C8];Application:TApplication
 005C4001    cmp         byte ptr [eax+0EB],0
>005C4008    je          005C4039
 005C400A    cmp         byte ptr [ebx+3A8],0;TCustomForm.FCreatingMainForm:Boolean
>005C4011    jne         005C4032
 005C4013    test        byte ptr [ebx+1C],10;TCustomForm.FComponentState:TComponentState
>005C4017    jne         005C401F
 005C4019    test        byte ptr [ebx+65],20;TCustomForm.FAlign:TAlign
>005C401D    je          005C4039
 005C401F    cmp         byte ptr [ebx+2C2],1;TCustomForm.FFormStyle:TFormStyle
>005C4026    je          005C4039
 005C4028    mov         eax,[007CA7C8];Application:TApplication
 005C402D    cmp         ebx,dword ptr [eax+58]
>005C4030    jne         005C4039
 005C4032    or          dword ptr [edi+8],40000;TCreateParams.ExStyle:DWORD
 005C4039    mov         eax,ebx
 005C403B    call        TForm.IsStoredClientHeight
 005C4040    test        al,al
>005C4042    je          005C40A2
 005C4044    cmp         byte ptr [ebx+2BE],2;TCustomForm.FWindowState:TWindowState
>005C404B    jne         005C40A2
 005C404D    mov         eax,dword ptr [ebx+2F8];TCustomForm.FClientHeight:Integer
 005C4053    push        eax
 005C4054    lea         eax,[esp+4]
 005C4058    push        eax
 005C4059    mov         ecx,dword ptr [ebx+2F4];TCustomForm.FClientWidth:Integer
 005C405F    xor         edx,edx
 005C4061    xor         eax,eax
 005C4063    call        Rect
 005C4068    mov         eax,dword ptr [edi+8];TCreateParams.ExStyle:DWORD
 005C406B    push        eax
 005C406C    cmp         dword ptr [ebx+2D8],0;TCustomForm.FMenu:TMainMenu
 005C4073    setne       al
 005C4076    neg         al
 005C4078    sbb         eax,eax
 005C407A    push        eax
 005C407B    mov         eax,dword ptr [edi+4];TCreateParams.Style:DWORD
 005C407E    push        eax
 005C407F    lea         eax,[esp+0C]
 005C4083    push        eax
 005C4084    call        user32.AdjustWindowRectEx
 005C4089    test        eax,eax
>005C408B    je          005C40A2
 005C408D    mov         eax,dword ptr [esp+8]
 005C4091    sub         eax,dword ptr [esp]
 005C4094    mov         dword ptr [edi+14],eax;TCreateParams.Width:Integer
 005C4097    mov         eax,dword ptr [esp+0C]
 005C409B    sub         eax,dword ptr [esp+4]
 005C409F    mov         dword ptr [edi+18],eax;TCreateParams.Height:Integer
 005C40A2    add         esp,10
 005C40A5    pop         ebp
 005C40A6    pop         edi
 005C40A7    pop         esi
 005C40A8    pop         ebx
 005C40A9    ret
*}
end;

//005C40AC
procedure TCustomForm.CreateWnd;
begin
{*
 005C40AC    push        ebx
 005C40AD    push        esi
 005C40AE    push        edi
 005C40AF    add         esp,0FFFFFFF4
 005C40B2    mov         ebx,eax
 005C40B4    mov         eax,ebx
 005C40B6    call        TScrollingWinControl.CreateWnd
 005C40BB    mov         eax,[007C4770];^gvar_007CA5E0
 005C40C0    cmp         byte ptr [eax],0
>005C40C3    je          005C4102
 005C40C5    cmp         byte ptr [ebx+2BD],3;TCustomForm.FBorderStyle:TFormBorderStyle
>005C40CC    je          005C40EC
 005C40CE    mov         eax,ebx
 005C40D0    call        005C4D1C
 005C40D5    push        eax
 005C40D6    push        1
 005C40D8    push        80
 005C40DD    mov         eax,ebx
 005C40DF    call        TWinControl.GetHandle
 005C40E4    push        eax
 005C40E5    call        user32.SendMessageW
>005C40EA    jmp         005C4102
 005C40EC    push        0
 005C40EE    push        1
 005C40F0    push        80
 005C40F5    mov         eax,ebx
 005C40F7    call        TWinControl.GetHandle
 005C40FC    push        eax
 005C40FD    call        user32.SendMessageW
 005C4102    test        byte ptr [ebx+1C],10;TCustomForm.FComponentState:TComponentState
>005C4106    jne         005C41E3
 005C410C    movzx       eax,byte ptr [ebx+2C2];TCustomForm.FFormStyle:TFormStyle
 005C4113    sub         al,2
>005C4115    je          005C4124
 005C4117    dec         al
>005C4119    je          005C41CA
>005C411F    jmp         005C41E3
 005C4124    mov         dword ptr [esp+4],0FF00
 005C412C    xor         eax,eax
 005C412E    mov         dword ptr [esp],eax
 005C4131    mov         esi,dword ptr [ebx+2E4];TCustomForm.FWindowMenu:TMenuItem
 005C4137    test        esi,esi
>005C4139    je          005C4145
 005C413B    mov         eax,esi
 005C413D    call        005AD984
 005C4142    mov         dword ptr [esp],eax
 005C4145    push        56330001
 005C414A    push        0
 005C414C    push        0
 005C414E    mov         eax,ebx
 005C4150    call        TControl.GetClientWidth
 005C4155    push        eax
 005C4156    mov         eax,ebx
 005C4158    call        TControl.GetClientHeight
 005C415D    push        eax
 005C415E    mov         eax,ebx
 005C4160    call        TWinControl.GetHandle
 005C4165    push        eax
 005C4166    push        0
 005C4168    mov         eax,[007C7C54];gvar_007C7C54
 005C416D    push        eax
 005C416E    lea         eax,[esp+20]
 005C4172    push        eax
 005C4173    mov         edx,5C42B0
 005C4178    xor         ecx,ecx
 005C417A    mov         eax,200
 005C417F    call        CreateWindowEx
 005C4184    mov         dword ptr [ebx+3B4],eax;TCustomForm.FClientHandle:HWND
 005C418A    push        ebx
 005C418B    mov         eax,dword ptr [ebx]
 005C418D    mov         eax,dword ptr [eax+114];TCustomForm.?f114:dword
 005C4193    push        eax
 005C4194    call        MakeObjectInstance
 005C4199    mov         dword ptr [ebx+3B8],eax;TCustomForm.FClientInstance:Pointer
 005C419F    mov         eax,dword ptr [ebx+3B4];TCustomForm.FClientHandle:HWND
 005C41A5    push        0FC
 005C41A7    push        eax
 005C41A8    call        user32.GetWindowLongW
 005C41AD    mov         dword ptr [ebx+300],eax;TCustomForm.FDefClientProc:Pointer
 005C41B3    mov         eax,dword ptr [ebx+3B4];TCustomForm.FClientHandle:HWND
 005C41B9    mov         edx,dword ptr [ebx+3B8];TCustomForm.FClientInstance:Pointer
 005C41BF    push        edx
 005C41C0    push        0FC
 005C41C2    push        eax
 005C41C3    call        user32.SetWindowLongW
>005C41C8    jmp         005C41E3
 005C41CA    push        13
 005C41CC    push        0
 005C41CE    push        0
 005C41D0    push        0
 005C41D2    push        0
 005C41D4    push        0FF
 005C41D6    mov         eax,ebx
 005C41D8    call        TWinControl.GetHandle
 005C41DD    push        eax
 005C41DE    call        user32.SetWindowPos
 005C41E3    mov         eax,dword ptr [ebx+388];TCustomForm.FRecreateChildren:TList
 005C41E9    test        eax,eax
>005C41EB    je          005C4219
 005C41ED    mov         edi,dword ptr [eax+8];TList.FCount:Integer
 005C41F0    dec         edi
 005C41F1    test        edi,edi
>005C41F3    jl          005C420E
 005C41F5    inc         edi
 005C41F6    xor         esi,esi
 005C41F8    mov         edx,esi
 005C41FA    mov         eax,dword ptr [ebx+388];TCustomForm.FRecreateChildren:TList
 005C4200    call        TList.Get
 005C4205    call        TWinControl.UpdateControlState
 005C420A    inc         esi
 005C420B    dec         edi
>005C420C    jne         005C41F8
 005C420E    mov         eax,dword ptr [ebx+388];TCustomForm.FRecreateChildren:TList
 005C4214    mov         edx,dword ptr [eax]
 005C4216    call        dword ptr [edx+8];TList.Clear
 005C4219    mov         eax,dword ptr [ebx+38C];TCustomForm.FPopupWnds:TPopupWndArray
 005C421F    mov         dword ptr [esp+8],eax
 005C4223    mov         eax,dword ptr [esp+8]
 005C4227    test        eax,eax
>005C4229    je          005C4230
 005C422B    sub         eax,4
 005C422E    mov         eax,dword ptr [eax]
 005C4230    mov         edi,eax
 005C4232    dec         edi
 005C4233    test        edi,edi
>005C4235    jl          005C4264
 005C4237    inc         edi
 005C4238    xor         esi,esi
 005C423A    mov         eax,dword ptr [ebx+278];TCustomForm.FHandle:HWND
 005C4240    push        eax
 005C4241    mov         eax,dword ptr [ebx+38C];TCustomForm.FPopupWnds:TPopupWndArray
 005C4247    mov         eax,dword ptr [eax+esi*8]
 005C424A    push        eax
 005C424B    push        0B049
 005C4250    mov         eax,dword ptr [ebx+38C];TCustomForm.FPopupWnds:TPopupWndArray
 005C4256    mov         eax,dword ptr [eax+esi*8+4]
 005C425A    push        eax
 005C425B    call        user32.SendMessageW
 005C4260    inc         esi
 005C4261    dec         edi
>005C4262    jne         005C423A
 005C4264    lea         eax,[ebx+38C];TCustomForm.FPopupWnds:TPopupWndArray
 005C426A    mov         edx,dword ptr ds:[5B6828];TPopupWndArray
 005C4270    call        @DynArrayClear
 005C4275    test        byte ptr [ebx+1C],1;TCustomForm.FComponentState:TComponentState
>005C4279    jne         005C4293
 005C427B    mov         eax,dword ptr [ebx+3AC];TCustomForm.FGlassFrame:TGlassFrame
 005C4281    call        TGlassFrame.FrameExtended
 005C4286    test        al,al
>005C4288    je          005C4293
 005C428A    xor         edx,edx
 005C428C    mov         eax,ebx
 005C428E    call        005C7444
 005C4293    test        byte ptr [ebx+1C],1;TCustomForm.FComponentState:TComponentState
>005C4297    jne         005C42A9
 005C4299    call        TStyleManager.GetIsCustomStyleActive
 005C429E    test        al,al
>005C42A0    je          005C42A9
 005C42A2    mov         eax,ebx
 005C42A4    call        TWinControl.Realign
 005C42A9    add         esp,0C
 005C42AC    pop         edi
 005C42AD    pop         esi
 005C42AE    pop         ebx
 005C42AF    ret
*}
end;

//005C42C4
procedure sub_005C42C4;
begin
{*
 005C42C4    push        ebp
 005C42C5    mov         ebp,esp
 005C42C7    add         esp,0FFFFFF0C
 005C42CD    push        ebx
 005C42CE    push        esi
 005C42CF    push        edi
 005C42D0    xor         ecx,ecx
 005C42D2    mov         dword ptr [ebp-0F4],ecx
 005C42D8    mov         ebx,eax
 005C42DA    xor         eax,eax
 005C42DC    push        ebp
 005C42DD    push        5C43EC
 005C42E2    push        dword ptr fs:[eax]
 005C42E5    mov         dword ptr fs:[eax],esp
 005C42E8    cmp         byte ptr [ebx+2C2],1;TCustomForm.FFormStyle:TFormStyle
>005C42EF    jne         005C439F
 005C42F5    test        byte ptr [ebx+1C],10;TCustomForm.FComponentState:TComponentState
>005C42F9    jne         005C439F
 005C42FF    mov         eax,[007CA7C8];Application:TApplication
 005C4304    mov         eax,dword ptr [eax+58]
 005C4307    test        eax,eax
>005C4309    je          005C4314
 005C430B    cmp         dword ptr [eax+3B4],0
>005C4312    jne         005C433B
 005C4314    lea         edx,[ebp-0F4]
 005C431A    mov         eax,[007C4C64];^SResString248:TResStringRec
 005C431F    call        LoadResString
 005C4324    mov         ecx,dword ptr [ebp-0F4]
 005C432A    mov         dl,1
 005C432C    mov         eax,[0046BE9C];EInvalidOperation
 005C4331    call        Exception.Create;EInvalidOperation.Create
 005C4336    call        @RaiseExcept
 005C433B    lea         eax,[edx+4C]
 005C433E    mov         dword ptr [ebp-24],eax
 005C4341    mov         eax,dword ptr [edx]
 005C4343    mov         dword ptr [ebp-20],eax
 005C4346    mov         eax,[007C7C54];gvar_007C7C54
 005C434B    mov         dword ptr [ebp-1C],eax
 005C434E    mov         eax,dword ptr [edx+0C]
 005C4351    mov         dword ptr [ebp-18],eax
 005C4354    mov         eax,dword ptr [edx+10]
 005C4357    mov         dword ptr [ebp-14],eax
 005C435A    mov         eax,dword ptr [edx+14]
 005C435D    mov         dword ptr [ebp-10],eax
 005C4360    mov         eax,dword ptr [edx+18]
 005C4363    mov         dword ptr [ebp-0C],eax
 005C4366    mov         eax,dword ptr [edx+4]
 005C4369    mov         dword ptr [ebp-8],eax
 005C436C    mov         eax,dword ptr [edx+20]
 005C436F    mov         dword ptr [ebp-4],eax
 005C4372    lea         eax,[ebp-24]
 005C4375    push        eax
 005C4376    mov         eax,[007CA7C8];Application:TApplication
 005C437B    mov         eax,dword ptr [eax+58]
 005C437E    mov         eax,dword ptr [eax+3B4]
 005C4384    xor         ecx,ecx
 005C4386    mov         edx,220
 005C438B    call        SendStructMessage
 005C4390    mov         dword ptr [ebx+278],eax;TCustomForm.FHandle:HWND
 005C4396    or          byte ptr [ebx+3BC],10;TCustomForm.FFormState:TFormState
>005C439D    jmp         005C43CC
 005C439F    mov         esi,edx
 005C43A1    lea         edi,[ebp-0F0]
 005C43A7    mov         ecx,33
 005C43AC    rep movs    dword ptr [edi],dword ptr [esi]
 005C43AE    and         dword ptr [ebp-0E8],0FFF7FFFF
 005C43B8    lea         edx,[ebp-0F0]
 005C43BE    mov         eax,ebx
 005C43C0    call        004EBDE4
 005C43C5    and         byte ptr [ebx+3BC],0EF;TCustomForm.FFormState:TFormState
 005C43CC    mov         eax,ebx
 005C43CE    call        005C723C
 005C43D3    xor         eax,eax
 005C43D5    pop         edx
 005C43D6    pop         ecx
 005C43D7    pop         ecx
 005C43D8    mov         dword ptr fs:[eax],edx
 005C43DB    push        5C43F3
 005C43E0    lea         eax,[ebp-0F4]
 005C43E6    call        @UStrClr
 005C43EB    ret
>005C43EC    jmp         @HandleFinally
>005C43F1    jmp         005C43E0
 005C43F3    pop         edi
 005C43F4    pop         esi
 005C43F5    pop         ebx
 005C43F6    mov         esp,ebp
 005C43F8    pop         ebp
 005C43F9    ret
*}
end;

//005C4440
procedure sub_005C4440;
begin
{*
 005C4440    push        ebp
 005C4441    mov         ebp,esp
 005C4443    add         esp,0FFFFFFE8
 005C4446    mov         dword ptr [ebp-4],eax
 005C4449    mov         eax,dword ptr [ebp-4]
 005C444C    cmp         dword ptr [eax+278],0;TCustomForm.FHandle:HWND
>005C4453    je          005C4566
 005C4459    mov         eax,dword ptr [ebp-4]
 005C445C    cmp         dword ptr [eax+37C],0;TCustomForm.FPopupChildren:TList
>005C4463    je          005C4539
 005C4469    mov         eax,dword ptr [ebp-4]
 005C446C    call        005C33FC
 005C4471    mov         dword ptr [ebp-0C],eax
 005C4474    mov         eax,dword ptr [ebp-4]
 005C4477    mov         eax,dword ptr [eax+37C];TCustomForm.FPopupChildren:TList
 005C447D    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005C4480    dec         eax
 005C4481    test        eax,eax
>005C4483    jl          005C4539
 005C4489    inc         eax
 005C448A    mov         dword ptr [ebp-18],eax
 005C448D    mov         dword ptr [ebp-8],0
 005C4494    mov         eax,dword ptr [ebp-4]
 005C4497    test        byte ptr [eax+65],20;TCustomForm.FAlign:TAlign
>005C449B    je          005C44B5
 005C449D    mov         eax,dword ptr [ebp-4]
 005C44A0    mov         eax,dword ptr [eax+37C];TCustomForm.FPopupChildren:TList
 005C44A6    mov         edx,dword ptr [ebp-8]
 005C44A9    call        TList.Get
 005C44AE    mov         dl,1
 005C44B0    call        004F2104
 005C44B5    xor         eax,eax
 005C44B7    push        ebp
 005C44B8    push        5C4526
 005C44BD    push        dword ptr fs:[eax]
 005C44C0    mov         dword ptr fs:[eax],esp
 005C44C3    mov         eax,dword ptr [ebp-4]
 005C44C6    mov         eax,dword ptr [eax+37C];TCustomForm.FPopupChildren:TList
 005C44CC    mov         edx,dword ptr [ebp-8]
 005C44CF    call        TList.Get
 005C44D4    mov         edx,eax
 005C44D6    mov         eax,dword ptr [ebp-0C]
 005C44D9    call        TList.Add
 005C44DE    mov         eax,dword ptr [ebp-4]
 005C44E1    mov         eax,dword ptr [eax+37C];TCustomForm.FPopupChildren:TList
 005C44E7    mov         edx,dword ptr [ebp-8]
 005C44EA    call        TList.Get
 005C44EF    mov         edx,dword ptr [eax]
 005C44F1    call        dword ptr [edx+0D8]
 005C44F7    xor         eax,eax
 005C44F9    pop         edx
 005C44FA    pop         ecx
 005C44FB    pop         ecx
 005C44FC    mov         dword ptr fs:[eax],edx
 005C44FF    push        5C452D
 005C4504    mov         eax,dword ptr [ebp-4]
 005C4507    test        byte ptr [eax+65],20;TCustomForm.FAlign:TAlign
>005C450B    je          005C4525
 005C450D    mov         eax,dword ptr [ebp-4]
 005C4510    mov         eax,dword ptr [eax+37C];TCustomForm.FPopupChildren:TList
 005C4516    mov         edx,dword ptr [ebp-8]
 005C4519    call        TList.Get
 005C451E    xor         edx,edx
 005C4520    call        004F2104
 005C4525    ret
>005C4526    jmp         @HandleFinally
>005C452B    jmp         005C4504
 005C452D    inc         dword ptr [ebp-8]
 005C4530    dec         dword ptr [ebp-18]
>005C4533    jne         005C4494
 005C4539    mov         eax,dword ptr [ebp-4]
 005C453C    mov         eax,dword ptr [eax+278];TCustomForm.FHandle:HWND
 005C4542    mov         dword ptr [ebp-14],eax
 005C4545    mov         eax,dword ptr [ebp-4]
 005C4548    test        byte ptr [eax+65],20;TCustomForm.FAlign:TAlign
 005C454C    setne       al
 005C454F    mov         byte ptr [ebp-10],al
 005C4552    lea         eax,[ebp-14]
 005C4555    push        eax
 005C4556    push        5C43FC
 005C455B    call        kernel32.GetCurrentThreadId
 005C4560    push        eax
 005C4561    call        user32.EnumThreadWindows
 005C4566    mov         eax,dword ptr [ebp-4]
 005C4569    call        004EC288
 005C456E    mov         esp,ebp
 005C4570    pop         ebp
 005C4571    ret
*}
end;

//005C4574
procedure sub_005C4574;
begin
{*
 005C4574    push        ebx
 005C4575    mov         ebx,eax
 005C4577    test        byte ptr [ebx+3BC],10;TCustomForm.FFormState:TFormState
>005C457E    je          005C45BD
 005C4580    mov         eax,[007C4A7C];^gvar_007CA74C
 005C4585    test        byte ptr [eax],1
>005C4588    je          005C4598
 005C458A    mov         ecx,ebx
 005C458C    xor         edx,edx
 005C458E    mov         eax,[00573D6C];TStyleManager
 005C4593    call        TStyleManager.Notification
 005C4598    push        0
 005C459A    mov         eax,ebx
 005C459C    call        TWinControl.GetHandle
 005C45A1    push        eax
 005C45A2    push        221
 005C45A7    mov         eax,[007CA7C8];Application:TApplication
 005C45AC    mov         eax,dword ptr [eax+58]
 005C45AF    mov         eax,dword ptr [eax+3B4]
 005C45B5    push        eax
 005C45B6    call        user32.SendMessageW
>005C45BB    jmp         005C45C4
 005C45BD    mov         eax,ebx
 005C45BF    call        004EC074
 005C45C4    xor         eax,eax
 005C45C6    mov         dword ptr [ebx+3B4],eax;TCustomForm.FClientHandle:HWND
 005C45CC    pop         ebx
 005C45CD    ret
*}
end;

//005C45D0
{*procedure TCustomForm.DefaultHandler(var Message:?);
begin
 005C45D0    push        ebx
 005C45D1    push        esi
 005C45D2    mov         esi,edx
 005C45D4    mov         ebx,eax
 005C45D6    cmp         dword ptr [ebx+3B4],0
>005C45DD    je          005C4626
 005C45DF    cmp         dword ptr [esi],5
>005C45E2    jne         005C4601
 005C45E4    mov         eax,dword ptr [esi+8]
 005C45E7    push        eax
 005C45E8    mov         eax,dword ptr [esi+4]
 005C45EB    push        eax
 005C45EC    mov         eax,dword ptr [esi]
 005C45EE    push        eax
 005C45EF    mov         eax,ebx
 005C45F1    call        TWinControl.GetHandle
 005C45F6    push        eax
 005C45F7    call        user32.DefWindowProcW
 005C45FC    mov         dword ptr [esi+0C],eax
>005C45FF    jmp         005C462F
 005C4601    mov         eax,dword ptr [esi+8]
 005C4604    push        eax
 005C4605    mov         eax,dword ptr [esi+4]
 005C4608    push        eax
 005C4609    mov         eax,dword ptr [esi]
 005C460B    push        eax
 005C460C    mov         eax,dword ptr [ebx+3B4]
 005C4612    push        eax
 005C4613    mov         eax,ebx
 005C4615    call        TWinControl.GetHandle
 005C461A    push        eax
 005C461B    call        user32.DefFrameProcW
 005C4620    mov         dword ptr [esi+0C],eax
 005C4623    pop         esi
 005C4624    pop         ebx
 005C4625    ret
 005C4626    mov         edx,esi
 005C4628    mov         eax,ebx
 005C462A    call        TWinControl.DefaultHandler
 005C462F    pop         esi
 005C4630    pop         ebx
 005C4631    ret
end;*}

//005C4634
procedure TCustomForm.SetActiveControl(Control:TWinControl);
begin
{*
 005C4634    push        ebp
 005C4635    mov         ebp,esp
 005C4637    push        0
 005C4639    push        ebx
 005C463A    push        esi
 005C463B    push        edi
 005C463C    mov         edi,edx
 005C463E    mov         ebx,eax
 005C4640    xor         eax,eax
 005C4642    push        ebp
 005C4643    push        5C46E4
 005C4648    push        dword ptr fs:[eax]
 005C464B    mov         dword ptr fs:[eax],esp
 005C464E    cmp         edi,dword ptr [ebx+2B4]
>005C4654    je          005C46CE
 005C4656    test        edi,edi
>005C4658    je          005C46A7
 005C465A    test        byte ptr [ebx+1C],10
>005C465E    jne         005C46A7
 005C4660    cmp         ebx,edi
>005C4662    je          005C4686
 005C4664    mov         dl,1
 005C4666    mov         eax,edi
 005C4668    call        GetRealParentForm
 005C466D    cmp         ebx,eax
>005C466F    jne         005C4686
 005C4671    test        byte ptr [ebx+1C],1
>005C4675    jne         005C46A7
 005C4677    mov         eax,edi
 005C4679    mov         si,0FFB4
 005C467D    call        @CallDynaInst
 005C4682    test        al,al
>005C4684    jne         005C46A7
 005C4686    lea         edx,[ebp-4]
 005C4689    mov         eax,[007C4CB0];^SResString230:TResStringRec
 005C468E    call        LoadResString
 005C4693    mov         ecx,dword ptr [ebp-4]
 005C4696    mov         dl,1
 005C4698    mov         eax,[0046BE9C];EInvalidOperation
 005C469D    call        Exception.Create
 005C46A2    call        @RaiseExcept
 005C46A7    mov         dword ptr [ebx+2B4],edi
 005C46AD    test        byte ptr [ebx+1C],1
>005C46B1    jne         005C46CE
 005C46B3    cmp         byte ptr [ebx+2C1],0
>005C46BA    je          005C46C3
 005C46BC    mov         eax,ebx
 005C46BE    call        005C4A68
 005C46C3    mov         eax,ebx
 005C46C5    mov         si,0FFAC
 005C46C9    call        @CallDynaInst
 005C46CE    xor         eax,eax
 005C46D0    pop         edx
 005C46D1    pop         ecx
 005C46D2    pop         ecx
 005C46D3    mov         dword ptr fs:[eax],edx
 005C46D6    push        5C46EB
 005C46DB    lea         eax,[ebp-4]
 005C46DE    call        @UStrClr
 005C46E3    ret
>005C46E4    jmp         @HandleFinally
>005C46E9    jmp         005C46DB
 005C46EB    pop         edi
 005C46EC    pop         esi
 005C46ED    pop         ebx
 005C46EE    pop         ecx
 005C46EF    pop         ebp
 005C46F0    ret
*}
end;

//005C4710
procedure TCustomForm.DefocusControl(Control:TWinControl; Removing:Boolean);
begin
{*
 005C4710    push        ebx
 005C4711    push        esi
 005C4712    push        edi
 005C4713    mov         ebx,ecx
 005C4715    mov         esi,edx
 005C4717    mov         edi,eax
 005C4719    test        bl,bl
>005C471B    je          005C4737
 005C471D    mov         edx,dword ptr [edi+2B8]
 005C4723    mov         eax,esi
 005C4725    call        TWinControl.ContainsControl
 005C472A    test        al,al
>005C472C    je          005C4737
 005C472E    mov         eax,dword ptr [esi+40]
 005C4731    mov         dword ptr [edi+2B8],eax
 005C4737    mov         edx,dword ptr [edi+2B4]
 005C473D    mov         eax,esi
 005C473F    call        TWinControl.ContainsControl
 005C4744    test        al,al
>005C4746    je          005C4751
 005C4748    xor         edx,edx
 005C474A    mov         eax,edi
 005C474C    call        TCustomForm.SetActiveControl
 005C4751    pop         edi
 005C4752    pop         esi
 005C4753    pop         ebx
 005C4754    ret
*}
end;

//005C4758
procedure TCustomForm.FocusControl(Control:TWinControl);
begin
{*
 005C4758    push        ebx
 005C4759    push        esi
 005C475A    push        edi
 005C475B    push        ebp
 005C475C    mov         edi,edx
 005C475E    mov         ebp,eax
 005C4760    movzx       ebx,byte ptr [ebp+2C1];TCustomForm.FActive:Boolean
 005C4767    test        bl,bl
>005C4769    je          005C47A7
 005C476B    cmp         byte ptr [ebp+2C2],1;TCustomForm.FFormStyle:TFormStyle
>005C4772    jne         005C47A7
 005C4774    test        edi,edi
>005C4776    je          005C47A7
 005C4778    cmp         edi,dword ptr [ebp+2B4];TCustomForm.FActiveControl:TWinControl
>005C477E    jne         005C47A7
 005C4780    mov         eax,edi
 005C4782    call        TWinControl.HandleAllocated
 005C4787    test        al,al
>005C4789    je          005C47A7
 005C478B    mov         eax,edi
 005C478D    mov         si,0FFB1
 005C4791    call        @CallDynaInst;TWinControl.sub_004EFDB8
 005C4796    test        al,al
>005C4798    jne         005C47A7
 005C479A    mov         eax,edi
 005C479C    call        TWinControl.GetHandle
 005C47A1    push        eax
 005C47A2    call        user32.SetFocus
 005C47A7    mov         edx,edi
 005C47A9    mov         eax,ebp
 005C47AB    call        TCustomForm.SetActiveControl
 005C47B0    test        bl,bl
>005C47B2    jne         005C47BE
 005C47B4    mov         eax,ebp
 005C47B6    mov         edx,dword ptr [eax]
 005C47B8    call        dword ptr [edx+104];TCustomForm.SetFocus
 005C47BE    pop         ebp
 005C47BF    pop         edi
 005C47C0    pop         esi
 005C47C1    pop         ebx
 005C47C2    ret
*}
end;

//005C47C4
function TCustomForm.SetFocusedControl(Control:TWinControl):Boolean;
begin
{*
 005C47C4    push        ebp
 005C47C5    mov         ebp,esp
 005C47C7    add         esp,0FFFFFFF8
 005C47CA    push        ebx
 005C47CB    push        esi
 005C47CC    push        edi
 005C47CD    mov         dword ptr [ebp-4],edx
 005C47D0    mov         edi,eax
 005C47D2    mov         byte ptr [ebp-5],0
 005C47D6    inc         dword ptr ds:[7A1CB0];gvar_007A1CB0
 005C47DC    cmp         dword ptr [edi+2E0],0;TCustomForm.FDesigner:IDesignerHook
>005C47E3    jne         005C47FD
 005C47E5    cmp         edi,dword ptr [ebp-4]
>005C47E8    je          005C47F5
 005C47EA    mov         eax,dword ptr [ebp-4]
 005C47ED    mov         dword ptr [edi+2B4],eax;TCustomForm.FActiveControl:TWinControl
>005C47F3    jmp         005C47FD
 005C47F5    xor         eax,eax
 005C47F7    mov         dword ptr [edi+2B4],eax;TCustomForm.FActiveControl:TWinControl
 005C47FD    mov         eax,[007CA7CC];Screen:TScreen
 005C4802    mov         edx,dword ptr [ebp-4]
 005C4805    mov         dword ptr [eax+6C],edx
 005C4808    mov         eax,[007CA7CC];Screen:TScreen
 005C480D    mov         dword ptr [eax+70],edi
 005C4810    mov         eax,[007CA7CC];Screen:TScreen
 005C4815    mov         eax,dword ptr [eax+60]
 005C4818    mov         esi,edi
 005C481A    mov         edx,esi
 005C481C    xor         ecx,ecx
 005C481E    call        TList.RemoveItem
 005C4823    mov         eax,[007CA7CC];Screen:TScreen
 005C4828    mov         eax,dword ptr [eax+60]
 005C482B    mov         ecx,edi
 005C482D    xor         edx,edx
 005C482F    call        TList.Insert
 005C4834    mov         eax,edi
 005C4836    mov         edx,dword ptr ds:[5B865C];TForm
 005C483C    call        @IsClass
 005C4841    test        al,al
>005C4843    je          005C4871
 005C4845    mov         eax,[007CA7CC];Screen:TScreen
 005C484A    mov         dword ptr [eax+74],edi
 005C484D    mov         eax,[007CA7CC];Screen:TScreen
 005C4852    mov         eax,dword ptr [eax+5C]
 005C4855    mov         edx,esi
 005C4857    xor         ecx,ecx
 005C4859    call        TList.RemoveItem
 005C485E    mov         eax,[007CA7CC];Screen:TScreen
 005C4863    mov         eax,dword ptr [eax+5C]
 005C4866    mov         ecx,edi
 005C4868    xor         edx,edx
 005C486A    call        TList.Insert
>005C486F    jmp         005C487B
 005C4871    mov         eax,[007CA7CC];Screen:TScreen
 005C4876    xor         edx,edx
 005C4878    mov         dword ptr [eax+74],edx
 005C487B    mov         eax,dword ptr [ebp-4]
 005C487E    test        byte ptr [eax+64],20;TWinControl.FControlState:TControlState
>005C4882    jne         005C4A53
 005C4888    mov         eax,dword ptr [ebp-4]
 005C488B    mov         edx,dword ptr ds:[5C4A60];0x20 gvar_005C4A60
 005C4891    or          dword ptr [eax+64],edx;TWinControl.FControlState:TControlState
 005C4894    xor         edx,edx
 005C4896    push        ebp
 005C4897    push        5C4A3E
 005C489C    push        dword ptr fs:[edx]
 005C489F    mov         dword ptr fs:[edx],esp
 005C48A2    mov         eax,[007CA7CC];Screen:TScreen
 005C48A7    mov         eax,dword ptr [eax+80]
 005C48AD    cmp         edi,eax
>005C48AF    je          005C490B
 005C48B1    test        eax,eax
>005C48B3    je          005C48E2
 005C48B5    call        TWinControl.GetHandle
 005C48BA    mov         ebx,eax
 005C48BC    mov         eax,[007CA7CC];Screen:TScreen
 005C48C1    xor         edx,edx
 005C48C3    mov         dword ptr [eax+80],edx
 005C48C9    mov         dx,0B001
 005C48CD    mov         eax,ebx
 005C48CF    call        SendFocusMessage
 005C48D4    test        al,al
>005C48D6    jne         005C48E2
 005C48D8    call        @TryFinallyExit
>005C48DD    jmp         005C4A53
 005C48E2    mov         eax,[007CA7CC];Screen:TScreen
 005C48E7    mov         dword ptr [eax+80],edi
 005C48ED    mov         eax,edi
 005C48EF    call        TWinControl.GetHandle
 005C48F4    mov         dx,0B000
 005C48F8    call        SendFocusMessage
 005C48FD    test        al,al
>005C48FF    jne         005C490B
 005C4901    call        @TryFinallyExit
>005C4906    jmp         005C4A53
 005C490B    cmp         dword ptr [edi+2B8],0;TCustomForm.FFocusedControl:TWinControl
>005C4912    jne         005C491A
 005C4914    mov         dword ptr [edi+2B8],edi;TCustomForm.FFocusedControl:TWinControl
 005C491A    mov         eax,dword ptr [edi+2B8];TCustomForm.FFocusedControl:TWinControl
 005C4920    cmp         eax,dword ptr [ebp-4]
>005C4923    je          005C4A22
>005C4929    jmp         005C4960
 005C492B    mov         eax,dword ptr [edi+2B8];TCustomForm.FFocusedControl:TWinControl
 005C4931    call        TWinControl.GetHandle
 005C4936    mov         ebx,eax
 005C4938    mov         eax,dword ptr [edi+2B8];TCustomForm.FFocusedControl:TWinControl
 005C493E    mov         eax,dword ptr [eax+40];TWinControl.FParent:TWinControl
 005C4941    mov         dword ptr [edi+2B8],eax;TCustomForm.FFocusedControl:TWinControl
 005C4947    mov         dx,0B01B
 005C494B    mov         eax,ebx
 005C494D    call        SendFocusMessage
 005C4952    test        al,al
>005C4954    jne         005C4960
 005C4956    call        @TryFinallyExit
>005C495B    jmp         005C4A53
 005C4960    mov         esi,dword ptr [edi+2B8];TCustomForm.FFocusedControl:TWinControl
 005C4966    test        esi,esi
>005C4968    je          005C49B0
 005C496A    mov         eax,esi
 005C496C    mov         edx,dword ptr [ebp-4]
 005C496F    call        TWinControl.ContainsControl
 005C4974    test        al,al
>005C4976    je          005C492B
>005C4978    jmp         005C49B0
 005C497A    mov         esi,dword ptr [ebp-4]
>005C497D    jmp         005C4981
 005C497F    mov         esi,ebx
 005C4981    mov         ebx,dword ptr [esi+40]
 005C4984    cmp         ebx,dword ptr [edi+2B8];TCustomForm.FFocusedControl:TWinControl
>005C498A    jne         005C497F
 005C498C    mov         dword ptr [edi+2B8],esi;TCustomForm.FFocusedControl:TWinControl
 005C4992    mov         eax,esi
 005C4994    call        TWinControl.GetHandle
 005C4999    mov         dx,0B01A
 005C499D    call        SendFocusMessage
 005C49A2    test        al,al
>005C49A4    jne         005C49B0
 005C49A6    call        @TryFinallyExit
>005C49AB    jmp         005C4A53
 005C49B0    mov         eax,dword ptr [edi+2B8];TCustomForm.FFocusedControl:TWinControl
 005C49B6    cmp         eax,dword ptr [ebp-4]
>005C49B9    jne         005C497A
 005C49BB    mov         eax,dword ptr [ebp-4]
 005C49BE    mov         esi,dword ptr [eax+40];TWinControl.FParent:TWinControl
 005C49C1    mov         eax,dword ptr [ebp-4]
 005C49C4    test        byte ptr [eax+1C],10;TWinControl.FComponentState:TComponentState
>005C49C8    jne         005C49F3
 005C49CA    test        esi,esi
>005C49CC    je          005C49F3
 005C49CE    mov         eax,esi
 005C49D0    mov         edx,dword ptr ds:[5B472C];TScrollingWinControl
 005C49D6    call        @IsClass
 005C49DB    test        al,al
>005C49DD    je          005C49EC
 005C49DF    mov         edx,dword ptr [ebp-4]
 005C49E2    mov         eax,esi
 005C49E4    mov         ecx,dword ptr [eax]
 005C49E6    call        dword ptr [ecx+10C]
 005C49EC    mov         esi,dword ptr [esi+40];TWinControl.FParent:TWinControl
 005C49EF    test        esi,esi
>005C49F1    jne         005C49CE
 005C49F3    mov         eax,dword ptr [ebp-4]
 005C49F6    push        eax
 005C49F7    xor         ecx,ecx
 005C49F9    mov         edx,0B007
 005C49FE    mov         eax,edi
 005C4A00    call        TControl.Perform
 005C4A05    mov         eax,dword ptr [edi+304];TCustomForm.FActiveOleControl:TWinControl
 005C4A0B    test        eax,eax
>005C4A0D    je          005C4A22
 005C4A0F    cmp         eax,dword ptr [ebp-4]
>005C4A12    je          005C4A22
 005C4A14    push        0
 005C4A16    xor         ecx,ecx
 005C4A18    mov         edx,0B02A
 005C4A1D    call        TControl.Perform
 005C4A22    xor         eax,eax
 005C4A24    pop         edx
 005C4A25    pop         ecx
 005C4A26    pop         ecx
 005C4A27    mov         dword ptr fs:[eax],edx
 005C4A2A    push        5C4A45
 005C4A2F    mov         eax,dword ptr [ebp-4]
 005C4A32    mov         edx,dword ptr ds:[5C4A60];0x20 gvar_005C4A60
 005C4A38    not         edx
 005C4A3A    and         dword ptr [eax+64],edx;TWinControl.FControlState:TControlState
 005C4A3D    ret
>005C4A3E    jmp         @HandleFinally
>005C4A43    jmp         005C4A2F
 005C4A45    mov         eax,[007CA7CC];Screen:TScreen
 005C4A4A    call        005C8154
 005C4A4F    mov         byte ptr [ebp-5],1
 005C4A53    movzx       eax,byte ptr [ebp-5]
 005C4A57    pop         edi
 005C4A58    pop         esi
 005C4A59    pop         ebx
 005C4A5A    pop         ecx
 005C4A5B    pop         ecx
 005C4A5C    pop         ebp
 005C4A5D    ret
*}
end;

//005C4A64
procedure TCustomForm.sub_005C4A64;
begin
{*
 005C4A64    ret
*}
end;

//005C4A68
procedure sub_005C4A68(?:TCustomForm);
begin
{*
 005C4A68    push        ebx
 005C4A69    push        esi
 005C4A6A    mov         ebx,eax
 005C4A6C    mov         eax,dword ptr [ebx+2B4]
 005C4A72    test        eax,eax
>005C4A74    je          005C4A83
 005C4A76    cmp         dword ptr [ebx+2E0],0
>005C4A7D    jne         005C4A83
 005C4A7F    mov         esi,eax
>005C4A81    jmp         005C4AAD
 005C4A83    cmp         dword ptr [ebx+40],0
>005C4A87    je          005C4AAB
 005C4A89    cmp         dword ptr [ebx+2E0],0
>005C4A90    jne         005C4AAB
 005C4A92    push        1
 005C4A94    push        0
 005C4A96    mov         cl,1
 005C4A98    xor         edx,edx
 005C4A9A    mov         eax,ebx
 005C4A9C    call        TWinControl.FindNextControl
 005C4AA1    mov         esi,eax
 005C4AA3    test        esi,esi
>005C4AA5    jne         005C4AAD
 005C4AA7    mov         esi,ebx
>005C4AA9    jmp         005C4AAD
 005C4AAB    mov         esi,ebx
 005C4AAD    mov         eax,esi
 005C4AAF    call        TWinControl.GetHandle
 005C4AB4    push        eax
 005C4AB5    call        user32.SetFocus
 005C4ABA    mov         eax,esi
 005C4ABC    call        TWinControl.GetHandle
 005C4AC1    mov         ebx,eax
 005C4AC3    call        user32.GetFocus
 005C4AC8    cmp         ebx,eax
>005C4ACA    jne         005C4ADC
 005C4ACC    push        0
 005C4ACE    xor         ecx,ecx
 005C4AD0    mov         edx,0B029
 005C4AD5    mov         eax,esi
 005C4AD7    call        TControl.Perform
 005C4ADC    pop         esi
 005C4ADD    pop         ebx
 005C4ADE    ret
*}
end;

//005C4AE0
{*procedure sub_005C4AE0(?:TCustomForm; ?:?);
begin
 005C4AE0    push        ebx
 005C4AE1    push        esi
 005C4AE2    mov         ebx,edx
 005C4AE4    mov         esi,eax
 005C4AE6    mov         byte ptr [esi+2C1],bl
 005C4AEC    mov         eax,dword ptr [esi+304]
 005C4AF2    test        eax,eax
>005C4AF4    je          005C4B05
 005C4AF6    push        0
 005C4AF8    movzx       ecx,bl
 005C4AFB    mov         edx,0B02B
 005C4B00    call        TControl.Perform
 005C4B05    test        bl,bl
>005C4B07    je          005C4B54
 005C4B09    cmp         dword ptr [esi+2B4],0
>005C4B10    jne         005C4B30
 005C4B12    test        byte ptr [esi+1C],10
>005C4B16    jne         005C4B30
 005C4B18    push        1
 005C4B1A    push        0
 005C4B1C    mov         cl,1
 005C4B1E    xor         edx,edx
 005C4B20    mov         eax,esi
 005C4B22    call        TWinControl.FindNextControl
 005C4B27    mov         edx,eax
 005C4B29    mov         eax,esi
 005C4B2B    call        TCustomForm.SetActiveControl
 005C4B30    mov         dl,1
 005C4B32    mov         eax,esi
 005C4B34    call        005C4BA8
 005C4B39    mov         eax,esi
 005C4B3B    call        005C4A68
 005C4B40    mov         eax,dword ptr [esi+2B0]
 005C4B46    test        eax,eax
 005C4B48    setne       dl
 005C4B4B    test        dl,bl
>005C4B4D    je          005C4B54
 005C4B4F    mov         edx,dword ptr [eax]
 005C4B51    call        dword ptr [edx+5C]
 005C4B54    pop         esi
 005C4B55    pop         ebx
 005C4B56    ret
end;*}

//005C4B58
procedure TCustomForm.SendCancelMode(Sender:TControl);
begin
{*
 005C4B58    push        ebx
 005C4B59    push        esi
 005C4B5A    mov         esi,edx
 005C4B5C    mov         ebx,eax
 005C4B5E    cmp         byte ptr [ebx+2C1],0;TCustomForm.FActive:Boolean
>005C4B65    je          005C4B83
 005C4B67    cmp         dword ptr [ebx+2B4],0;TCustomForm.FActiveControl:TWinControl
>005C4B6E    je          005C4B83
 005C4B70    push        esi
 005C4B71    xor         ecx,ecx
 005C4B73    mov         edx,0B004
 005C4B78    mov         eax,dword ptr [ebx+2B4];TCustomForm.FActiveControl:TWinControl
 005C4B7E    call        TControl.Perform
 005C4B83    cmp         byte ptr [ebx+2C2],2;TCustomForm.FFormStyle:TFormStyle
>005C4B8A    jne         005C4BA5
 005C4B8C    mov         eax,ebx
 005C4B8E    call        005C2D30
 005C4B93    test        eax,eax
>005C4B95    je          005C4BA5
 005C4B97    mov         eax,ebx
 005C4B99    call        005C2D30
 005C4B9E    mov         edx,esi
 005C4BA0    call        TCustomForm.SendCancelMode
 005C4BA5    pop         esi
 005C4BA6    pop         ebx
 005C4BA7    ret
*}
end;

//005C4BA8
{*procedure sub_005C4BA8(?:TCustomForm; ?:?);
begin
 005C4BA8    push        esi
 005C4BA9    test        byte ptr [eax+3BC],8;TCustomForm.FFormState:TFormState
>005C4BB0    jne         005C4C4C
 005C4BB6    mov         ecx,dword ptr ds:[7CA7C8];Application:TApplication
 005C4BBC    cmp         dword ptr [ecx+58],0
>005C4BC0    je          005C4C4C
 005C4BC6    mov         ecx,dword ptr ds:[7CA7C8];Application:TApplication
 005C4BCC    mov         ecx,dword ptr [ecx+58]
 005C4BCF    cmp         dword ptr [ecx+2D8],0
>005C4BD6    je          005C4C4C
 005C4BD8    mov         ecx,dword ptr ds:[7CA7C8];Application:TApplication
 005C4BDE    cmp         eax,dword ptr [ecx+58]
>005C4BE1    je          005C4C4C
 005C4BE3    cmp         byte ptr [eax+2C2],1;TCustomForm.FFormStyle:TFormStyle
>005C4BEA    je          005C4BFE
 005C4BEC    mov         ecx,dword ptr ds:[7CA7C8];Application:TApplication
 005C4BF2    mov         ecx,dword ptr [ecx+58]
 005C4BF5    cmp         byte ptr [ecx+2C2],2
>005C4BFC    je          005C4C4C
 005C4BFE    xor         esi,esi
 005C4C00    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005C4C04    jne         005C4C2A
 005C4C06    cmp         dword ptr [eax+2D8],0;TCustomForm.FMenu:TMainMenu
>005C4C0D    je          005C4C2A
 005C4C0F    mov         ecx,dword ptr [eax+2D8];TCustomForm.FMenu:TMainMenu
 005C4C15    cmp         byte ptr [ecx+6C],0;TMainMenu.FAutoMerge:Boolean
>005C4C19    jne         005C4C24
 005C4C1B    cmp         byte ptr [eax+2C2],1;TCustomForm.FFormStyle:TFormStyle
>005C4C22    jne         005C4C2A
 005C4C24    mov         esi,dword ptr [eax+2D8];TCustomForm.FMenu:TMainMenu
 005C4C2A    mov         eax,[007CA7C8];Application:TApplication
 005C4C2F    mov         eax,dword ptr [eax+58]
 005C4C32    mov         eax,dword ptr [eax+2D8]
 005C4C38    test        dl,dl
>005C4C3A    je          005C4C45
 005C4C3C    mov         edx,esi
 005C4C3E    call        TMainMenu.Merge
>005C4C43    jmp         005C4C4C
 005C4C45    mov         edx,esi
 005C4C47    call        TMainMenu.Unmerge
 005C4C4C    pop         esi
 005C4C4D    ret
end;*}

//005C4C50
{*procedure sub_005C4C50(?:?; ?:TWinControl; ?:TCustomForm);
begin
 005C4C50    push        ebx
 005C4C51    push        esi
 005C4C52    push        edi
 005C4C53    push        ebp
 005C4C54    mov         edi,ecx
 005C4C56    mov         ebx,edx
 005C4C58    mov         ebp,eax
 005C4C5A    test        ebx,ebx
>005C4C5C    je          005C4C94
>005C4C5E    jmp         005C4C62
 005C4C60    mov         ebx,esi
 005C4C62    mov         esi,dword ptr [ebx+40]
 005C4C65    test        esi,esi
>005C4C67    je          005C4C7A
 005C4C69    mov         eax,ebx
 005C4C6B    mov         edx,dword ptr ds:[5B7120];TCustomForm
 005C4C71    call        @IsClass
 005C4C76    test        al,al
>005C4C78    je          005C4C60
 005C4C7A    test        ebx,ebx
>005C4C7C    je          005C4C94
 005C4C7E    cmp         edi,ebx
>005C4C80    je          005C4C94
 005C4C82    push        0
 005C4C84    push        0
 005C4C86    push        ebp
 005C4C87    mov         eax,ebx
 005C4C89    call        TWinControl.GetHandle
 005C4C8E    push        eax
 005C4C8F    call        user32.SendMessageW
 005C4C94    pop         ebp
 005C4C95    pop         edi
 005C4C96    pop         esi
 005C4C97    pop         ebx
 005C4C98    ret
end;*}

//005C4C9C
procedure TCustomForm.sub_005C4C9C;
begin
{*
 005C4C9C    push        ebx
 005C4C9D    mov         ebx,eax
 005C4C9F    mov         ecx,ebx
 005C4CA1    mov         edx,dword ptr [ebx+2B4];TCustomForm.FActiveControl:TWinControl
 005C4CA7    mov         eax,0B000
 005C4CAC    call        005C4C50
 005C4CB1    cmp         word ptr [ebx+312],0;TCustomForm.?f312:word
>005C4CB9    je          005C4CC9
 005C4CBB    mov         edx,ebx
 005C4CBD    mov         eax,dword ptr [ebx+314];TCustomForm.?f314:dword
 005C4CC3    call        dword ptr [ebx+310];TCustomForm.FOnActivate
 005C4CC9    pop         ebx
 005C4CCA    ret
*}
end;

//005C4CCC
procedure TCustomForm.sub_005C4CCC;
begin
{*
 005C4CCC    push        ebx
 005C4CCD    mov         ebx,eax
 005C4CCF    mov         ecx,ebx
 005C4CD1    mov         edx,dword ptr [ebx+2B4];TCustomForm.FActiveControl:TWinControl
 005C4CD7    mov         eax,0B001
 005C4CDC    call        005C4C50
 005C4CE1    cmp         word ptr [ebx+33A],0;TCustomForm.?f33A:word
>005C4CE9    je          005C4CF9
 005C4CEB    mov         edx,ebx
 005C4CED    mov         eax,dword ptr [ebx+33C];TCustomForm.?f33C:dword
 005C4CF3    call        dword ptr [ebx+338];TCustomForm.FOnDeactivate
 005C4CF9    pop         ebx
 005C4CFA    ret
*}
end;

//005C4CFC
procedure TCustomForm.sub_005C4CFC;
begin
{*
 005C4CFC    push        ebx
 005C4CFD    cmp         word ptr [eax+352],0;TCustomForm.?f352:word
>005C4D05    je          005C4D17
 005C4D07    mov         ebx,eax
 005C4D09    mov         edx,eax
 005C4D0B    mov         eax,dword ptr [ebx+354];TCustomForm.?f354:dword
 005C4D11    call        dword ptr [ebx+350];TCustomForm.FOnPaint
 005C4D17    pop         ebx
 005C4D18    ret
*}
end;

//005C4D1C
{*function sub_005C4D1C(?:TCustomForm):?;
begin
 005C4D1C    mov         eax,dword ptr [eax+2D0];TCustomForm.FIcon:TIcon
 005C4D22    call        TIcon.GetHandle
 005C4D27    test        eax,eax
>005C4D29    jne         005C4D35
 005C4D2B    mov         eax,[007CA7C8];Application:TApplication
 005C4D30    call        005CAAE4
 005C4D35    ret
end;*}

//005C4D38
{*procedure sub_005C4D38(?:?);
begin
 005C4D38    push        ebp
 005C4D39    mov         ebp,esp
 005C4D3B    add         esp,0FFFFFFE4
 005C4D3E    push        ebx
 005C4D3F    push        esi
 005C4D40    mov         dword ptr [ebp-8],edx
 005C4D43    mov         dword ptr [ebp-4],eax
 005C4D46    mov         eax,dword ptr [ebp-4]
 005C4D49    mov         eax,dword ptr [eax+2C8];TCustomForm.FCanvas:TControlCanvas
 005C4D4F    call        TCustomCanvas.Lock
 005C4D54    xor         eax,eax
 005C4D56    push        ebp
 005C4D57    push        5C4F24
 005C4D5C    push        dword ptr fs:[eax]
 005C4D5F    mov         dword ptr fs:[eax],esp
 005C4D62    mov         eax,dword ptr [ebp-4]
 005C4D65    mov         eax,dword ptr [eax+2C8];TCustomForm.FCanvas:TControlCanvas
 005C4D6B    mov         edx,dword ptr [ebp-8]
 005C4D6E    call        TCanvas.SetHandle
 005C4D73    xor         eax,eax
 005C4D75    push        ebp
 005C4D76    push        5C4F01
 005C4D7B    push        dword ptr fs:[eax]
 005C4D7E    mov         dword ptr fs:[eax],esp
 005C4D81    mov         eax,dword ptr [ebp-8]
 005C4D84    push        eax
 005C4D85    call        gdi32.SaveDC
 005C4D8A    mov         dword ptr [ebp-0C],eax
 005C4D8D    xor         eax,eax
 005C4D8F    push        ebp
 005C4D90    push        5C4EB4
 005C4D95    push        dword ptr fs:[eax]
 005C4D98    mov         dword ptr fs:[eax],esp
 005C4D9B    mov         eax,dword ptr [ebp-4]
 005C4D9E    mov         ebx,dword ptr [eax+3AC];TCustomForm.FGlassFrame:TGlassFrame
 005C4DA4    mov         eax,ebx
 005C4DA6    call        TGlassFrame.FrameExtended
 005C4DAB    test        al,al
>005C4DAD    jne         005C4DC9
 005C4DAF    mov         eax,dword ptr [ebp-4]
 005C4DB2    cmp         dword ptr [eax+2E0],0;TCustomForm.FDesigner:IDesignerHook
>005C4DB9    je          005C4E99
 005C4DBF    cmp         byte ptr [ebx+8],0;TGlassFrame.FEnabled:Boolean
>005C4DC3    je          005C4E99
 005C4DC9    lea         edx,[ebp-1C]
 005C4DCC    mov         eax,dword ptr [ebp-4]
 005C4DCF    mov         ecx,dword ptr [eax]
 005C4DD1    call        dword ptr [ecx+64];TCustomForm.GetClientRect
 005C4DD4    cmp         byte ptr [ebx+28],0;TGlassFrame.FSheetOfGlass:Boolean
>005C4DD8    jne         005C4E07
 005C4DDA    mov         eax,dword ptr [ebp-4]
 005C4DDD    cmp         byte ptr [eax+3B0],0;TCustomForm.FRefreshGlassFrame:Boolean
>005C4DE4    jne         005C4E07
 005C4DE6    mov         eax,dword ptr [ebp-10]
 005C4DE9    sub         eax,dword ptr [ebx+18]
 005C4DEC    push        eax
 005C4DED    mov         eax,dword ptr [ebp-14]
 005C4DF0    sub         eax,dword ptr [ebx+14]
 005C4DF3    push        eax
 005C4DF4    mov         eax,dword ptr [ebx+10];TGlassFrame.FTop:Integer
 005C4DF7    push        eax
 005C4DF8    mov         eax,dword ptr [ebx+0C];TGlassFrame.FLeft:Integer
 005C4DFB    push        eax
 005C4DFC    mov         eax,dword ptr [ebp-8]
 005C4DFF    push        eax
 005C4E00    call        gdi32.ExcludeClipRect
>005C4E05    jmp         005C4E11
 005C4E07    mov         eax,dword ptr [ebp-4]
 005C4E0A    mov         byte ptr [eax+3B0],0;TCustomForm.FRefreshGlassFrame:Boolean
 005C4E11    mov         eax,dword ptr [ebp-4]
 005C4E14    cmp         dword ptr [eax+2E0],0;TCustomForm.FDesigner:IDesignerHook
>005C4E1B    jne         005C4E3F
 005C4E1D    push        4
 005C4E1F    call        gdi32.GetStockObject
 005C4E24    push        eax
 005C4E25    lea         eax,[ebp-1C]
 005C4E28    push        eax
 005C4E29    mov         eax,dword ptr [ebp-4]
 005C4E2C    mov         eax,dword ptr [eax+2C8];TCustomForm.FCanvas:TControlCanvas
 005C4E32    call        TCanvas.GetHandle
 005C4E37    push        eax
 005C4E38    call        user32.FillRect
>005C4E3D    jmp         005C4E99
 005C4E3F    mov         eax,dword ptr [ebp-4]
 005C4E42    mov         eax,dword ptr [eax+2C8];TCustomForm.FCanvas:TControlCanvas
 005C4E48    mov         eax,dword ptr [eax+48];TControlCanvas.FBrush:TBrush
 005C4E4B    mov         edx,0FF000002
 005C4E50    call        TBrush.SetColor
 005C4E55    mov         eax,dword ptr [ebp-4]
 005C4E58    mov         eax,dword ptr [eax+2C8];TCustomForm.FCanvas:TControlCanvas
 005C4E5E    mov         eax,dword ptr [eax+48];TControlCanvas.FBrush:TBrush
 005C4E61    mov         dl,5
 005C4E63    call        TBrush.SetStyle
 005C4E68    mov         eax,dword ptr [ebp-4]
 005C4E6B    mov         eax,dword ptr [eax+7C];TCustomForm.FColor:TColor
 005C4E6E    call        ColorToRGB
 005C4E73    push        eax
 005C4E74    mov         eax,dword ptr [ebp-4]
 005C4E77    mov         eax,dword ptr [eax+2C8];TCustomForm.FCanvas:TControlCanvas
 005C4E7D    call        TCanvas.GetHandle
 005C4E82    push        eax
 005C4E83    call        gdi32.SetBkColor
 005C4E88    lea         edx,[ebp-1C]
 005C4E8B    mov         eax,dword ptr [ebp-4]
 005C4E8E    mov         eax,dword ptr [eax+2C8];TCustomForm.FCanvas:TControlCanvas
 005C4E94    mov         ecx,dword ptr [eax]
 005C4E96    call        dword ptr [ecx+54];TCanvas.FillRect
 005C4E99    xor         eax,eax
 005C4E9B    pop         edx
 005C4E9C    pop         ecx
 005C4E9D    pop         ecx
 005C4E9E    mov         dword ptr fs:[eax],edx
 005C4EA1    push        5C4EBB
 005C4EA6    mov         eax,dword ptr [ebp-0C]
 005C4EA9    push        eax
 005C4EAA    mov         eax,dword ptr [ebp-8]
 005C4EAD    push        eax
 005C4EAE    call        gdi32.RestoreDC
 005C4EB3    ret
>005C4EB4    jmp         @HandleFinally
>005C4EB9    jmp         005C4EA6
 005C4EBB    mov         eax,dword ptr [ebp-4]
 005C4EBE    cmp         dword ptr [eax+2E0],0;TCustomForm.FDesigner:IDesignerHook
>005C4EC5    je          005C4ED7
 005C4EC7    mov         eax,dword ptr [ebp-4]
 005C4ECA    mov         eax,dword ptr [eax+2E0];TCustomForm.FDesigner:IDesignerHook
 005C4ED0    mov         edx,dword ptr [eax]
 005C4ED2    call        dword ptr [edx+2C]
>005C4ED5    jmp         005C4EE3
 005C4ED7    mov         eax,dword ptr [ebp-4]
 005C4EDA    mov         si,0FFA2
 005C4EDE    call        @CallDynaInst;TCustomForm.sub_005C4CFC
 005C4EE3    xor         eax,eax
 005C4EE5    pop         edx
 005C4EE6    pop         ecx
 005C4EE7    pop         ecx
 005C4EE8    mov         dword ptr fs:[eax],edx
 005C4EEB    push        5C4F08
 005C4EF0    mov         eax,dword ptr [ebp-4]
 005C4EF3    mov         eax,dword ptr [eax+2C8];TCustomForm.FCanvas:TControlCanvas
 005C4EF9    xor         edx,edx
 005C4EFB    call        TCanvas.SetHandle
 005C4F00    ret
>005C4F01    jmp         @HandleFinally
>005C4F06    jmp         005C4EF0
 005C4F08    xor         eax,eax
 005C4F0A    pop         edx
 005C4F0B    pop         ecx
 005C4F0C    pop         ecx
 005C4F0D    mov         dword ptr fs:[eax],edx
 005C4F10    push        5C4F2B
 005C4F15    mov         eax,dword ptr [ebp-4]
 005C4F18    mov         eax,dword ptr [eax+2C8];TCustomForm.FCanvas:TControlCanvas
 005C4F1E    call        TCustomCanvas.Unlock
 005C4F23    ret
>005C4F24    jmp         @HandleFinally
>005C4F29    jmp         005C4F15
 005C4F2B    pop         esi
 005C4F2C    pop         ebx
 005C4F2D    mov         esp,ebp
 005C4F2F    pop         ebp
 005C4F30    ret
end;*}

//005C4F34
{*procedure TCustomForm.sub_004E5D58(?:?);
begin
 005C4F34    push        ebx
 005C4F35    push        esi
 005C4F36    push        edi
 005C4F37    push        ebp
 005C4F38    add         esp,0FFFFFFF0
 005C4F3B    mov         byte ptr [esp+4],dl
 005C4F3F    mov         dword ptr [esp],eax
 005C4F42    xor         ebx,ebx
 005C4F44    mov         eax,dword ptr [esp]
 005C4F47    call        005C2D30
 005C4F4C    mov         dword ptr [esp+0C],eax
 005C4F50    cmp         dword ptr [esp+0C],0
>005C4F55    je          005C4F6B
 005C4F57    movzx       edx,byte ptr [esp+4]
 005C4F5C    mov         eax,dword ptr [esp+0C]
 005C4F60    mov         si,0FFD0
 005C4F64    call        @CallDynaInst
 005C4F69    mov         ebx,eax
 005C4F6B    mov         eax,dword ptr [esp]
 005C4F6E    call        005C2D64
 005C4F73    mov         ebp,eax
 005C4F75    dec         ebp
 005C4F76    test        ebp,ebp
>005C4F78    jl          005C4FB6
 005C4F7A    inc         ebp
 005C4F7B    mov         dword ptr [esp+8],0
 005C4F83    test        byte ptr [esp+4],bl
>005C4F87    jne         005C4FCB
 005C4F89    mov         edx,dword ptr [esp+8]
 005C4F8D    mov         eax,dword ptr [esp]
 005C4F90    call        TForm.get_MDIChildren
 005C4F95    mov         edi,eax
 005C4F97    cmp         edi,dword ptr [esp+0C]
>005C4F9B    je          005C4FAF
 005C4F9D    movzx       edx,byte ptr [esp+4]
 005C4FA2    mov         eax,edi
 005C4FA4    mov         si,0FFD0
 005C4FA8    call        @CallDynaInst;TCustomForm.sub_004E5D58
 005C4FAD    or          bl,al
 005C4FAF    inc         dword ptr [esp+8]
 005C4FB3    dec         ebp
>005C4FB4    jne         005C4F83
 005C4FB6    test        byte ptr [esp+4],bl
>005C4FBA    jne         005C4FCB
 005C4FBC    movzx       edx,byte ptr [esp+4]
 005C4FC1    mov         eax,dword ptr [esp]
 005C4FC4    call        TWinControl.sub_004E5D58
 005C4FC9    mov         ebx,eax
 005C4FCB    mov         eax,ebx
 005C4FCD    add         esp,10
 005C4FD0    pop         ebp
 005C4FD1    pop         edi
 005C4FD2    pop         esi
 005C4FD3    pop         ebx
 005C4FD4    ret
end;*}

//005C4FD8
{*procedure TCustomForm.WMPaint(?:?);
begin
 005C4FD8    push        ebx
 005C4FD9    push        esi
 005C4FDA    add         esp,0FFFFFFC0
 005C4FDD    mov         esi,edx
 005C4FDF    mov         ebx,eax
 005C4FE1    mov         eax,ebx
 005C4FE3    call        TWinControl.GetHandle
 005C4FE8    call        005BE99C
 005C4FED    test        eax,eax
>005C4FEF    jne         005C500E
 005C4FF1    mov         eax,[005C5044];0x100 gvar_005C5044
 005C4FF6    or          dword ptr [ebx+64],eax;TCustomForm.FControlState:TControlState
 005C4FF9    mov         edx,esi
 005C4FFB    mov         eax,ebx
 005C4FFD    call        TWinControl.WMPaint
 005C5002    mov         eax,[005C5044];0x100 gvar_005C5044
 005C5007    not         eax
 005C5009    and         dword ptr [ebx+64],eax;TCustomForm.FControlState:TControlState
>005C500C    jmp         005C503E
 005C500E    push        esp
 005C500F    mov         eax,ebx
 005C5011    call        TWinControl.GetHandle
 005C5016    push        eax
 005C5017    call        user32.BeginPaint
 005C501C    mov         esi,eax
 005C501E    mov         eax,ebx
 005C5020    call        005C4D1C
 005C5025    push        eax
 005C5026    push        0
 005C5028    push        0
 005C502A    push        esi
 005C502B    call        user32.DrawIcon
 005C5030    push        esp
 005C5031    mov         eax,ebx
 005C5033    call        TWinControl.GetHandle
 005C5038    push        eax
 005C5039    call        user32.EndPaint
 005C503E    add         esp,40
 005C5041    pop         esi
 005C5042    pop         ebx
 005C5043    ret
end;*}

//005C5048
{*procedure TCustomForm.WMNCPaint(?:?);
begin
 005C5048    push        ebx
 005C5049    mov         ebx,eax
 005C504B    mov         eax,ebx
 005C504D    call        TWinControl.WMNCPaint
 005C5052    cmp         dword ptr [ebx+2E0],0;TCustomForm.FDesigner:IDesignerHook
>005C5059    je          005C506C
 005C505B    cmp         dword ptr [ebx+40],0;TCustomForm.FParent:TWinControl
>005C505F    je          005C506C
 005C5061    mov         eax,dword ptr [ebx+2E0];TCustomForm.FDesigner:IDesignerHook
 005C5067    mov         edx,dword ptr [eax]
 005C5069    call        dword ptr [edx+30]
 005C506C    pop         ebx
 005C506D    ret
end;*}

//005C5070
{*procedure TCustomForm.WMEraseBkgnd(?:?);
begin
 005C5070    push        ebx
 005C5071    push        esi
 005C5072    add         esp,0FFFFFFF0
 005C5075    mov         esi,edx
 005C5077    mov         ebx,eax
 005C5079    cmp         byte ptr [ebx+2C2],1;TCustomForm.FFormStyle:TFormStyle
>005C5080    jne         005C50C9
 005C5082    cmp         byte ptr [ebx+2C2],1;TCustomForm.FFormStyle:TFormStyle
>005C5089    jne         005C50C0
 005C508B    test        byte ptr [ebx+1C],10;TCustomForm.FComponentState:TComponentState
>005C508F    jne         005C50C0
 005C5091    mov         eax,[007CA7C8];Application:TApplication
 005C5096    mov         eax,dword ptr [eax+58]
 005C5099    mov         eax,dword ptr [eax+1D0]
 005C509F    call        TBrush.GetHandle
 005C50A4    push        eax
 005C50A5    lea         edx,[esp+4]
 005C50A9    mov         eax,ebx
 005C50AB    mov         ecx,dword ptr [eax]
 005C50AD    call        dword ptr [ecx+64];TCustomForm.GetClientRect
 005C50B0    lea         eax,[esp+4]
 005C50B4    push        eax
 005C50B5    mov         eax,dword ptr [esi+4]
 005C50B8    push        eax
 005C50B9    call        user32.FillRect
>005C50BE    jmp         005C50C9
 005C50C0    mov         edx,esi
 005C50C2    mov         eax,ebx
 005C50C4    mov         ecx,dword ptr [eax]
 005C50C6    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 005C50C9    add         esp,10
 005C50CC    pop         esi
 005C50CD    pop         ebx
 005C50CE    ret
end;*}

//005C50D0
{*procedure TCustomForm.WMEraseBkgnd(?:?);
begin
 005C50D0    push        ebx
 005C50D1    push        esi
 005C50D2    mov         esi,edx
 005C50D4    mov         ebx,eax
 005C50D6    mov         eax,ebx
 005C50D8    call        TWinControl.GetHandle
 005C50DD    call        005BE99C
 005C50E2    test        eax,eax
>005C50E4    jne         005C50F2
 005C50E6    mov         edx,esi
 005C50E8    mov         eax,ebx
 005C50EA    call        TWinControl.WMEraseBkgnd
 005C50EF    pop         esi
 005C50F0    pop         ebx
 005C50F1    ret
 005C50F2    mov         dword ptr [esi],27
 005C50F8    mov         edx,esi
 005C50FA    mov         eax,ebx
 005C50FC    mov         ecx,dword ptr [eax]
 005C50FE    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 005C5101    pop         esi
 005C5102    pop         ebx
 005C5103    ret
end;*}

//005C5104
{*procedure TCustomForm.WMQueryDragIcon(?:?);
begin
 005C5104    push        ebx
 005C5105    push        esi
 005C5106    mov         esi,edx
 005C5108    mov         ebx,eax
 005C510A    mov         eax,ebx
 005C510C    call        005C4D1C
 005C5111    mov         dword ptr [esi+0C],eax
 005C5114    pop         esi
 005C5115    pop         ebx
 005C5116    ret
end;*}

//005C5118
{*procedure sub_005C5118(?:?);
begin
 005C5118    push        ebp
 005C5119    mov         ebp,esp
 005C511B    push        ebx
 005C511C    mov         eax,dword ptr [ebp+8]
 005C511F    mov         eax,dword ptr [eax-4]
 005C5122    cmp         byte ptr [eax+2BD],0
>005C5129    je          005C520E
 005C512F    mov         eax,dword ptr [ebp+8]
 005C5132    mov         eax,dword ptr [eax-4]
 005C5135    test        byte ptr [eax+2BC],1
>005C513C    je          005C520E
 005C5142    mov         eax,dword ptr [ebp+8]
 005C5145    mov         eax,dword ptr [eax-4]
 005C5148    cmp         byte ptr [eax+2C2],1
>005C514F    je          005C520E
 005C5155    push        0
 005C5157    mov         eax,dword ptr [ebp+8]
 005C515A    mov         eax,dword ptr [eax-4]
 005C515D    call        TWinControl.GetHandle
 005C5162    push        eax
 005C5163    call        user32.GetSystemMenu
 005C5168    mov         ebx,eax
 005C516A    mov         eax,dword ptr [ebp+8]
 005C516D    mov         eax,dword ptr [eax-4]
 005C5170    cmp         byte ptr [eax+2BD],3
>005C5177    jne         005C51D6
 005C5179    push        0
 005C517B    push        0F130
 005C5180    push        ebx
 005C5181    call        user32.DeleteMenu
 005C5186    push        400
 005C518B    push        7
 005C518D    push        ebx
 005C518E    call        user32.DeleteMenu
 005C5193    push        400
 005C5198    push        5
 005C519A    push        ebx
 005C519B    call        user32.DeleteMenu
 005C51A0    push        0
 005C51A2    push        0F030
 005C51A7    push        ebx
 005C51A8    call        user32.DeleteMenu
 005C51AD    push        0
 005C51AF    push        0F020
 005C51B4    push        ebx
 005C51B5    call        user32.DeleteMenu
 005C51BA    push        0
 005C51BC    push        0F000
 005C51C1    push        ebx
 005C51C2    call        user32.DeleteMenu
 005C51C7    push        0
 005C51C9    push        0F120
 005C51CE    push        ebx
 005C51CF    call        user32.DeleteMenu
>005C51D4    jmp         005C520E
 005C51D6    mov         eax,dword ptr [ebp+8]
 005C51D9    mov         eax,dword ptr [eax-4]
 005C51DC    test        byte ptr [eax+2BC],2
>005C51E3    jne         005C51F2
 005C51E5    push        1
 005C51E7    push        0F020
 005C51EC    push        ebx
 005C51ED    call        user32.EnableMenuItem
 005C51F2    mov         eax,dword ptr [ebp+8]
 005C51F5    mov         eax,dword ptr [eax-4]
 005C51F8    test        byte ptr [eax+2BC],4
>005C51FF    jne         005C520E
 005C5201    push        1
 005C5203    push        0F030
 005C5208    push        ebx
 005C5209    call        user32.EnableMenuItem
 005C520E    pop         ebx
 005C520F    pop         ebp
 005C5210    ret
end;*}

//005C5214
procedure TCustomForm.WMNCCreate;
begin
{*
 005C5214    push        ebp
 005C5215    mov         ebp,esp
 005C5217    push        ecx
 005C5218    mov         dword ptr [ebp-4],eax
 005C521B    mov         eax,dword ptr [ebp-4]
 005C521E    mov         ecx,dword ptr [eax]
 005C5220    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 005C5223    mov         eax,dword ptr [ebp-4]
 005C5226    mov         edx,dword ptr [eax+2D8];TCustomForm.FMenu:TMainMenu
 005C522C    mov         eax,dword ptr [ebp-4]
 005C522F    call        TForm.SetMenu
 005C5234    mov         eax,dword ptr [ebp-4]
 005C5237    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005C523B    jne         005C5244
 005C523D    push        ebp
 005C523E    call        005C5118
 005C5243    pop         ecx
 005C5244    pop         ecx
 005C5245    pop         ebp
 005C5246    ret
*}
end;

//005C5248
{*procedure TCustomForm.WMNCHitTest(?:?);
begin
 005C5248    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005C524C    je          005C525A
 005C524E    cmp         dword ptr [eax+40],0;TCustomForm.FParent:TWinControl
>005C5252    je          005C525A
 005C5254    mov         ecx,dword ptr [eax]
 005C5256    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 005C5259    ret
 005C525A    call        TWinControl.WMNCHitTest
 005C525F    ret
end;*}

//005C5260
procedure TCustomForm.WMNCLButtonDown(Message:Messages.TWMNCLButtonDown);
begin
{*
 005C5260    push        ebx
 005C5261    push        esi
 005C5262    mov         esi,edx
 005C5264    mov         ebx,eax
 005C5266    cmp         dword ptr [esi+4],2
>005C526A    jne         005C52E0
 005C526C    cmp         byte ptr [ebx+9B],1;TCustomForm.FDragKind:TDragKind
>005C5273    jne         005C52E0
 005C5275    test        byte ptr [ebx+1C],10;TCustomForm.FComponentState:TComponentState
>005C5279    jne         005C52E0
 005C527B    mov         eax,ebx
 005C527D    call        TWinControl.GetHandle
 005C5282    call        005BE99C
 005C5287    test        eax,eax
>005C5289    jne         005C52E0
 005C528B    push        7
 005C528D    push        0
 005C528F    push        0
 005C5291    push        0
 005C5293    push        0
 005C5295    push        0
 005C5297    mov         eax,ebx
 005C5299    call        TWinControl.GetHandle
 005C529E    push        eax
 005C529F    call        user32.SetWindowPos
 005C52A4    mov         eax,dword ptr [esi+8]
 005C52A7    push        eax
 005C52A8    mov         eax,dword ptr [esi+4]
 005C52AB    push        eax
 005C52AC    push        0A2
 005C52B1    mov         eax,ebx
 005C52B3    call        TWinControl.GetHandle
 005C52B8    push        eax
 005C52B9    call        user32.PostMessageW
 005C52BE    cmp         byte ptr [ebx+2C1],0;TCustomForm.FActive:Boolean
>005C52C5    je          005C52E9
 005C52C7    mov         eax,ebx
 005C52C9    mov         edx,dword ptr [eax]
 005C52CB    call        dword ptr [edx+70];TCustomForm.sub_005C19B4
 005C52CE    mov         edx,eax
 005C52D0    xor         dl,1
 005C52D3    or          ecx,0FFFFFFFF
 005C52D6    mov         eax,ebx
 005C52D8    call        TControl.BeginDrag
 005C52DD    pop         esi
 005C52DE    pop         ebx
 005C52DF    ret
 005C52E0    mov         edx,esi
 005C52E2    mov         eax,ebx
 005C52E4    call        TControl.WMNCLButtonDown
 005C52E9    pop         esi
 005C52EA    pop         ebx
 005C52EB    ret
*}
end;

//005C52EC
{*procedure TCustomForm.WMDestroy(?:?);
begin
 005C52EC    push        ebx
 005C52ED    push        esi
 005C52EE    push        edi
 005C52EF    push        ebp
 005C52F0    add         esp,0FFFFFFF0
 005C52F3    mov         dword ptr [esp],edx
 005C52F6    mov         edi,eax
 005C52F8    test        byte ptr [edi+65],20;TCustomForm.FAlign:TAlign
>005C52FC    je          005C536B
 005C52FE    cmp         dword ptr [edi+37C],0;TCustomForm.FPopupChildren:TList
>005C5305    je          005C536B
 005C5307    mov         eax,edi
 005C5309    call        005C33FC
 005C530E    mov         ebp,eax
 005C5310    mov         eax,dword ptr [edi+37C];TCustomForm.FPopupChildren:TList
 005C5316    mov         esi,dword ptr [eax+8];TList.FCount:Integer
 005C5319    dec         esi
 005C531A    test        esi,esi
>005C531C    jl          005C536B
 005C531E    inc         esi
 005C531F    xor         ebx,ebx
 005C5321    mov         edx,ebx
 005C5323    mov         eax,dword ptr [edi+37C];TCustomForm.FPopupChildren:TList
 005C5329    call        TList.Get
 005C532E    call        TWinControl.HandleAllocated
 005C5333    test        al,al
>005C5335    je          005C5367
 005C5337    mov         edx,ebx
 005C5339    mov         eax,dword ptr [edi+37C];TCustomForm.FPopupChildren:TList
 005C533F    call        TList.Get
 005C5344    mov         edx,eax
 005C5346    mov         eax,ebp
 005C5348    call        TList.IndexOf
 005C534D    test        eax,eax
>005C534F    jge         005C5367
 005C5351    mov         edx,ebx
 005C5353    mov         eax,dword ptr [edi+37C];TCustomForm.FPopupChildren:TList
 005C5359    call        TList.Get
 005C535E    mov         edx,eax
 005C5360    mov         eax,ebp
 005C5362    call        TList.Add
 005C5367    inc         ebx
 005C5368    dec         esi
>005C5369    jne         005C5321
 005C536B    cmp         dword ptr [edi+390],0;TCustomForm.FInternalPopupParent:TCustomForm
>005C5372    je          005C53BB
 005C5374    mov         eax,dword ptr [edi+390];TCustomForm.FInternalPopupParent:TCustomForm
 005C537A    call        005C33FC
 005C537F    mov         edx,edi
 005C5381    call        TList.IndexOf
 005C5386    test        eax,eax
>005C5388    jge         005C542B
 005C538E    mov         eax,dword ptr [edi+390];TCustomForm.FInternalPopupParent:TCustomForm
 005C5394    call        005C33D4
 005C5399    mov         edx,edi
 005C539B    call        TList.IndexOf
 005C53A0    inc         eax
>005C53A1    jle         005C542B
 005C53A7    mov         eax,dword ptr [edi+390];TCustomForm.FInternalPopupParent:TCustomForm
 005C53AD    call        005C33FC
 005C53B2    mov         edx,edi
 005C53B4    call        TList.Add
>005C53B9    jmp         005C542B
 005C53BB    test        byte ptr [edi+1C],8;TCustomForm.FComponentState:TComponentState
>005C53BF    jne         005C5423
 005C53C1    mov         eax,edi
 005C53C3    mov         si,0FFA5
 005C53C7    call        @CallDynaInst;TCustomForm.sub_005C199C
 005C53CC    mov         ebx,eax
 005C53CE    test        ebx,ebx
>005C53D0    je          005C5423
 005C53D2    mov         eax,[007CA7C8];Application:TApplication
 005C53D7    cmp         ebx,dword ptr [eax+188]
>005C53DD    je          005C5423
 005C53DF    mov         edx,edi
 005C53E1    mov         eax,[007CA7C8];Application:TApplication
 005C53E6    call        TApplication.AddPopupForm
 005C53EB    mov         dword ptr [esp+4],eax
 005C53EF    mov         eax,dword ptr [edi+278];TCustomForm.FHandle:HWND
 005C53F5    mov         dword ptr [esp+8],eax
 005C53F9    cmp         dword ptr [edi+394],0;TCustomForm.FInternalPopupParentWnd:HWND
 005C5400    setne       al
 005C5403    mov         byte ptr [esp+0C],al
 005C5407    mov         eax,[007CA7C8];Application:TApplication
 005C540C    mov         eax,dword ptr [eax+190]
 005C5412    push        eax
 005C5413    lea         eax,[esp+8]
 005C5417    push        eax
 005C5418    push        0B048
 005C541D    push        ebx
 005C541E    call        user32.SendMessageW
 005C5423    xor         eax,eax
 005C5425    mov         dword ptr [edi+394],eax;TCustomForm.FInternalPopupParentWnd:HWND
 005C542B    mov         eax,[007C4770];^gvar_007CA5E0
 005C5430    cmp         byte ptr [eax],0
>005C5433    je          005C544B
 005C5435    push        0
 005C5437    push        1
 005C5439    push        80
 005C543E    mov         eax,edi
 005C5440    call        TWinControl.GetHandle
 005C5445    push        eax
 005C5446    call        user32.SendMessageW
 005C544B    cmp         dword ptr [edi+2D8],0;TCustomForm.FMenu:TMainMenu
>005C5452    je          005C5479
 005C5454    cmp         byte ptr [edi+2C2],1;TCustomForm.FFormStyle:TFormStyle
>005C545B    je          005C5479
 005C545D    push        0
 005C545F    mov         eax,edi
 005C5461    call        TWinControl.GetHandle
 005C5466    push        eax
 005C5467    call        user32.SetMenu
 005C546C    xor         edx,edx
 005C546E    mov         eax,dword ptr [edi+2D8];TCustomForm.FMenu:TMainMenu
 005C5474    call        005B2778
 005C5479    mov         edx,dword ptr [esp]
 005C547C    mov         eax,edi
 005C547E    call        TWinControl.WMDestroy
 005C5483    add         esp,10
 005C5486    pop         ebp
 005C5487    pop         edi
 005C5488    pop         esi
 005C5489    pop         ebx
 005C548A    ret
end;*}

//005C548C
procedure TCustomForm.WMCommand(Message:Messages.TWMCharToItem);
begin
{*
 005C548C    push        esi
 005C548D    push        edi
 005C548E    mov         edi,edx
 005C5490    mov         esi,eax
 005C5492    cmp         word ptr [edi+6],1800
>005C5498    jne         005C54AB
 005C549A    movzx       edx,word ptr [edi+4]
 005C549E    mov         eax,esi
 005C54A0    mov         ecx,dword ptr [eax]
 005C54A2    call        dword ptr [ecx+120];TCustomForm.sub_005C1868
 005C54A8    pop         edi
 005C54A9    pop         esi
 005C54AA    ret
 005C54AB    cmp         dword ptr [edi+8],0
>005C54AF    jne         005C54CD
 005C54B1    cmp         dword ptr [esi+2D8],0;TCustomForm.FMenu:TMainMenu
>005C54B8    je          005C54CD
 005C54BA    movzx       edx,word ptr [edi+4]
 005C54BE    mov         eax,dword ptr [esi+2D8];TCustomForm.FMenu:TMainMenu
 005C54C4    call        TMenu.DispatchCommand
 005C54C9    test        al,al
>005C54CB    jne         005C54D6
 005C54CD    mov         edx,edi
 005C54CF    mov         eax,esi
 005C54D1    call        TWinControl.WMCharToItem
 005C54D6    pop         edi
 005C54D7    pop         esi
 005C54D8    ret
*}
end;

//005C54DC
{*procedure TCustomForm.WMInitMenuPopup(?:?);
begin
 005C54DC    mov         ecx,dword ptr [eax+2D8];TCustomForm.FMenu:TMainMenu
 005C54E2    test        ecx,ecx
>005C54E4    je          005C54F0
 005C54E6    mov         edx,dword ptr [edx+4]
 005C54E9    mov         eax,ecx
 005C54EB    call        TMenu.DispatchPopup
 005C54F0    ret
end;*}

//005C54F4
{*procedure TCustomForm.WMMenuChar(?:?);
begin
 005C54F4    push        ebx
 005C54F5    push        esi
 005C54F6    mov         esi,edx
 005C54F8    mov         ebx,eax
 005C54FA    mov         eax,dword ptr [ebx+2D8];TCustomForm.FMenu:TMainMenu
 005C5500    test        eax,eax
>005C5502    je          005C551D
 005C5504    mov         edx,esi
 005C5506    call        TMenu.ProcessMenuChar
 005C550B    cmp         dword ptr [esi+0C],0
>005C550F    jne         005C5526
 005C5511    mov         edx,esi
 005C5513    mov         eax,ebx
 005C5515    mov         ecx,dword ptr [eax]
 005C5517    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 005C551A    pop         esi
 005C551B    pop         ebx
 005C551C    ret
 005C551D    mov         edx,esi
 005C551F    mov         eax,ebx
 005C5521    mov         ecx,dword ptr [eax]
 005C5523    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 005C5526    pop         esi
 005C5527    pop         ebx
 005C5528    ret
end;*}

//005C552C
{*procedure TCustomForm.WMMenuSelect(?:?);
begin
 005C552C    push        ebp
 005C552D    mov         ebp,esp
 005C552F    push        0
 005C5531    push        ebx
 005C5532    push        esi
 005C5533    push        edi
 005C5534    mov         edi,eax
 005C5536    xor         eax,eax
 005C5538    push        ebp
 005C5539    push        5C55C7
 005C553E    push        dword ptr fs:[eax]
 005C5541    mov         dword ptr fs:[eax],esp
 005C5544    cmp         dword ptr [edi+2D8],0;TCustomForm.FMenu:TMainMenu
>005C554B    je          005C55B1
 005C554D    xor         esi,esi
 005C554F    cmp         word ptr [edx+6],0FFFF
>005C5555    jne         005C555E
 005C5557    cmp         word ptr [edx+4],0
>005C555C    je          005C5587
 005C555E    xor         ebx,ebx
 005C5560    movzx       eax,word ptr [edx+4]
 005C5564    test        byte ptr [edx+6],10
>005C5568    je          005C5576
 005C556A    mov         bl,1
 005C556C    push        eax
 005C556D    mov         eax,dword ptr [edx+8]
 005C5570    push        eax
 005C5571    call        user32.GetSubMenu
 005C5576    mov         ecx,ebx
 005C5578    mov         edx,eax
 005C557A    mov         eax,dword ptr [edi+2D8];TCustomForm.FMenu:TMainMenu
 005C5580    call        TMenu.FindItem
 005C5585    mov         esi,eax
 005C5587    test        esi,esi
>005C5589    je          005C55A5
 005C558B    lea         edx,[ebp-4]
 005C558E    mov         eax,dword ptr [esi+64]
 005C5591    call        GetLongHint
 005C5596    mov         edx,dword ptr [ebp-4]
 005C5599    mov         eax,[007CA7C8];Application:TApplication
 005C559E    call        005CC1DC
>005C55A3    jmp         005C55B1
 005C55A5    xor         edx,edx
 005C55A7    mov         eax,[007CA7C8];Application:TApplication
 005C55AC    call        005CC1DC
 005C55B1    xor         eax,eax
 005C55B3    pop         edx
 005C55B4    pop         ecx
 005C55B5    pop         ecx
 005C55B6    mov         dword ptr fs:[eax],edx
 005C55B9    push        5C55CE
 005C55BE    lea         eax,[ebp-4]
 005C55C1    call        @UStrClr
 005C55C6    ret
>005C55C7    jmp         @HandleFinally
>005C55CC    jmp         005C55BE
 005C55CE    pop         edi
 005C55CF    pop         esi
 005C55D0    pop         ebx
 005C55D1    pop         ecx
 005C55D2    pop         ebp
 005C55D3    ret
end;*}

//005C55D4
{*procedure TCustomForm.WMActivate(?:?);
begin
 005C55D4    push        ebx
 005C55D5    push        esi
 005C55D6    mov         esi,edx
 005C55D8    mov         ebx,eax
 005C55DA    mov         eax,ebx
 005C55DC    call        TWinControl.GetHandle
 005C55E1    push        0F0
 005C55E3    push        eax
 005C55E4    call        user32.GetWindowLongW
 005C55E9    and         eax,40000000
 005C55EE    cmp         eax,40000000
>005C55F3    je          005C5613
 005C55F5    cmp         byte ptr [ebx+2C2],2;TCustomForm.FFormStyle:TFormStyle
>005C55FC    jne         005C5604
 005C55FE    test        byte ptr [ebx+1C],10;TCustomForm.FComponentState:TComponentState
>005C5602    je          005C5613
 005C5604    cmp         word ptr [esi+4],0
 005C5609    setne       dl
 005C560C    mov         eax,ebx
 005C560E    call        005C4AE0
 005C5613    pop         esi
 005C5614    pop         ebx
 005C5615    ret
end;*}

//005C5618
{*procedure sub_005C5618(?:?);
begin
 005C5618    push        ebx
 005C5619    mov         ebx,eax
 005C561B    test        byte ptr [ebx+1C],10;TCustomForm.FComponentState:TComponentState
>005C561F    jne         005C562D
 005C5621    test        byte ptr [ebx+65],20;TCustomForm.FAlign:TAlign
>005C5625    jne         005C562D
 005C5627    mov         byte ptr [ebx+2BE],dl;TCustomForm.FWindowState:TWindowState
 005C562D    cmp         dl,1
>005C5630    je          005C5639
 005C5632    mov         eax,ebx
 005C5634    mov         edx,dword ptr [eax]
 005C5636    call        dword ptr [edx+78];TCustomForm.sub_005C6E6C
 005C5639    cmp         dword ptr [ebx+2F0],0;TCustomForm.FOleForm:IOleForm
>005C5640    je          005C564D
 005C5642    mov         eax,dword ptr [ebx+2F0];TCustomForm.FOleForm:IOleForm
 005C5648    mov         edx,dword ptr [eax]
 005C564A    call        dword ptr [edx+10]
 005C564D    pop         ebx
 005C564E    ret
end;*}

//005C5650
procedure TCustomForm.WMClose;
begin
{*
 005C5650    call        TCustomForm.Close
 005C5655    ret
*}
end;

//005C5658
{*procedure TCustomForm.WMQueryEndSession(?:?);
begin
 005C5658    push        ebx
 005C5659    push        esi
 005C565A    mov         esi,edx
 005C565C    mov         ebx,eax
 005C565E    mov         eax,ebx
 005C5660    mov         edx,dword ptr [eax]
 005C5662    call        dword ptr [edx+134];TCustomForm.CloseQuery
 005C5668    and         eax,7F
 005C566B    mov         dword ptr [esi+0C],eax
 005C566E    pop         esi
 005C566F    pop         ebx
 005C5670    ret
end;*}

//005C5674
{*procedure TCustomForm.CMAppSysCommand(?:?);
begin
 005C5674    push        ebx
 005C5675    push        esi
 005C5676    mov         ebx,edx
 005C5678    xor         edx,edx
 005C567A    mov         dword ptr [ebx+0C],edx
 005C567D    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005C5681    jne         005C56A1
 005C5683    cmp         byte ptr [eax+2C2],1;TCustomForm.FFormStyle:TFormStyle
>005C568A    je          005C56A1
 005C568C    cmp         dword ptr [eax+2D8],0;TCustomForm.FMenu:TMainMenu
>005C5693    je          005C56A1
 005C5695    mov         edx,dword ptr [eax+2D8];TCustomForm.FMenu:TMainMenu
 005C569B    cmp         byte ptr [edx+6C],0;TMainMenu.FAutoMerge:Boolean
>005C569F    je          005C56C7
 005C56A1    mov         esi,dword ptr [ebx+8]
 005C56A4    xor         edx,edx
 005C56A6    call        TCustomForm.SendCancelMode
 005C56AB    movzx       ecx,word ptr [esi+8]
 005C56AF    mov         edx,dword ptr [esi+4]
 005C56B2    mov         eax,0B017
 005C56B7    call        004E3688
 005C56BC    test        eax,eax
>005C56BE    je          005C56C7
 005C56C0    mov         dword ptr [ebx+0C],1
 005C56C7    pop         esi
 005C56C8    pop         ebx
 005C56C9    ret
end;*}

//005C56CC
{*procedure TCustomForm.WMSysCommand(?:?);
begin
 005C56CC    push        ebx
 005C56CD    push        esi
 005C56CE    mov         ebx,edx
 005C56D0    mov         esi,eax
 005C56D2    mov         eax,dword ptr [ebx+4]
 005C56D5    and         eax,0FFF0
 005C56DA    cmp         eax,0F020
>005C56DF    jne         005C56F9
 005C56E1    mov         eax,[007CA7C8];Application:TApplication
 005C56E6    cmp         esi,dword ptr [eax+58]
>005C56E9    jne         005C56F9
 005C56EB    mov         edx,ebx
 005C56ED    mov         eax,[007CA7C8];Application:TApplication
 005C56F2    call        005CA334
>005C56F7    jmp         005C5726
 005C56F9    mov         eax,dword ptr [ebx+4]
 005C56FC    and         eax,0FFF0
 005C5701    cmp         eax,0F010
>005C5706    jne         005C571D
 005C5708    test        byte ptr [esi+1C],10;TCustomForm.FComponentState:TComponentState
>005C570C    jne         005C571D
 005C570E    cmp         byte ptr [esi+6D],0;TCustomForm.FAlign:TAlign
>005C5712    je          005C571D
 005C5714    cmp         byte ptr [esi+2BE],1;TCustomForm.FWindowState:TWindowState
>005C571B    jne         005C5726
 005C571D    mov         edx,ebx
 005C571F    mov         eax,esi
 005C5721    call        TWinControl.WMSysCommand
 005C5726    mov         eax,dword ptr [ebx+4]
 005C5729    and         eax,0FFF0
 005C572E    cmp         eax,0F020
>005C5733    je          005C573C
 005C5735    cmp         eax,0F120
>005C573A    jne         005C574F
 005C573C    test        byte ptr [esi+1C],10;TCustomForm.FComponentState:TComponentState
>005C5740    jne         005C574F
 005C5742    cmp         byte ptr [esi+6D],0;TCustomForm.FAlign:TAlign
>005C5746    je          005C574F
 005C5748    mov         eax,esi
 005C574A    mov         edx,dword ptr [eax]
 005C574C    call        dword ptr [edx+78];TCustomForm.sub_005C6E6C
 005C574F    pop         esi
 005C5750    pop         ebx
 005C5751    ret
end;*}

//005C5754
{*procedure TCustomForm.WMShowWindow(?:?);
begin
 005C5754    push        ebx
 005C5755    push        esi
 005C5756    mov         esi,edx
 005C5758    mov         ebx,eax
 005C575A    mov         eax,dword ptr [esi+8]
 005C575D    dec         eax
>005C575E    je          005C576A
 005C5760    sub         eax,2
>005C5763    je          005C57B0
>005C5765    jmp         005C57FE
 005C576A    mov         eax,ebx
 005C576C    call        TWinControl.GetHandle
 005C5771    call        005BE99C
 005C5776    test        eax,eax
>005C5778    je          005C5783
 005C577A    mov         byte ptr [ebx+2BF],2;TCustomForm.FShowAction:TShowAction
>005C5781    jmp         005C57A4
 005C5783    mov         eax,ebx
 005C5785    call        TWinControl.GetHandle
 005C578A    push        eax
 005C578B    call        user32.IsZoomed
 005C5790    test        eax,eax
>005C5792    je          005C579D
 005C5794    mov         byte ptr [ebx+2BF],3;TCustomForm.FShowAction:TShowAction
>005C579B    jmp         005C57A4
 005C579D    mov         byte ptr [ebx+2BF],1;TCustomForm.FShowAction:TShowAction
 005C57A4    mov         edx,esi
 005C57A6    mov         eax,ebx
 005C57A8    mov         ecx,dword ptr [eax]
 005C57AA    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 005C57AD    pop         esi
 005C57AE    pop         ebx
 005C57AF    ret
 005C57B0    cmp         byte ptr [ebx+2BF],0;TCustomForm.FShowAction:TShowAction
>005C57B7    je          005C5807
 005C57B9    movzx       eax,byte ptr [ebx+2BF];TCustomForm.FShowAction:TShowAction
 005C57C0    mov         eax,dword ptr [eax*4+7A1D24]
 005C57C7    push        eax
 005C57C8    mov         eax,ebx
 005C57CA    call        TWinControl.GetHandle
 005C57CF    push        eax
 005C57D0    call        user32.ShowWindow
 005C57D5    mov         byte ptr [ebx+2BF],0;TCustomForm.FShowAction:TShowAction
 005C57DC    mov         eax,[007CA7C8];Application:TApplication
 005C57E1    cmp         ebx,dword ptr [eax+58]
>005C57E4    jne         005C57EF
 005C57E6    mov         eax,[007CA7C8];Application:TApplication
 005C57EB    mov         byte ptr [eax+40],0
 005C57EF    mov         dl,1
 005C57F1    mov         eax,[007CA7C8];Application:TApplication
 005C57F6    call        005C9FF8
 005C57FB    pop         esi
 005C57FC    pop         ebx
 005C57FD    ret
 005C57FE    mov         edx,esi
 005C5800    mov         eax,ebx
 005C5802    mov         ecx,dword ptr [eax]
 005C5804    call        dword ptr [ecx-10]
 005C5807    pop         esi
 005C5808    pop         ebx
 005C5809    ret
end;*}

//005C580C
{*procedure TCustomForm.WMMDIActivate(?:?);
begin
 005C580C    push        ebx
 005C580D    push        esi
 005C580E    mov         ebx,edx
 005C5810    mov         esi,eax
 005C5812    mov         edx,ebx
 005C5814    mov         eax,esi
 005C5816    mov         ecx,dword ptr [eax]
 005C5818    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 005C581B    cmp         byte ptr [esi+2C2],1;TCustomForm.FFormStyle:TFormStyle
>005C5822    jne         005C5861
 005C5824    mov         eax,esi
 005C5826    call        TWinControl.GetHandle
 005C582B    cmp         eax,dword ptr [ebx+8]
 005C582E    sete        al
 005C5831    mov         ebx,eax
 005C5833    mov         edx,ebx
 005C5835    mov         eax,esi
 005C5837    call        005C4AE0
 005C583C    test        bl,bl
>005C583E    je          005C5861
 005C5840    mov         eax,[007CA7C8];Application:TApplication
 005C5845    mov         eax,dword ptr [eax+58]
 005C5848    test        byte ptr [eax+64],4
>005C584C    je          005C5861
 005C584E    mov         eax,[007CA7C8];Application:TApplication
 005C5853    mov         eax,dword ptr [eax+58]
 005C5856    mov         dl,1
 005C5858    mov         si,0FFD0
 005C585C    call        @CallDynaInst
 005C5861    pop         esi
 005C5862    pop         ebx
 005C5863    ret
end;*}

//005C5864
{*procedure TCustomForm.WMNextDlgCtl(?:?);
begin
 005C5864    cmp         word ptr [edx+8],0
>005C5869    je          005C5875
 005C586B    mov         eax,dword ptr [edx+4]
 005C586E    push        eax
 005C586F    call        user32.SetFocus
 005C5874    ret
 005C5875    push        1
 005C5877    mov         ecx,dword ptr [edx+4]
 005C587A    cmp         ecx,1
 005C587D    sbb         ecx,ecx
 005C587F    neg         ecx
 005C5881    mov         edx,dword ptr [eax+2B4];TCustomForm.FActiveControl:TWinControl
 005C5887    call        004F04A0
 005C588C    ret
end;*}

//005C5890
{*procedure TCustomForm.WMEnterMenuLoop(?:?);
begin
 005C5890    push        ebx
 005C5891    push        esi
 005C5892    mov         esi,edx
 005C5894    mov         ebx,eax
 005C5896    xor         edx,edx
 005C5898    mov         eax,ebx
 005C589A    call        TCustomForm.SendCancelMode
 005C589F    mov         edx,esi
 005C58A1    mov         eax,ebx
 005C58A3    mov         ecx,dword ptr [eax]
 005C58A5    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 005C58A8    pop         esi
 005C58A9    pop         ebx
 005C58AA    ret
end;*}

//005C58AC
{*function sub_005C58AC(?:TMenu; ?:?):?;
begin
 005C58AC    push        ebp
 005C58AD    mov         ebp,esp
 005C58AF    push        ebx
 005C58B0    mov         ebx,eax
 005C58B2    xor         eax,eax
 005C58B4    test        ebx,ebx
>005C58B6    je          005C58E6
 005C58B8    mov         eax,dword ptr [ebp+8]
 005C58BB    mov         eax,dword ptr [eax-4]
 005C58BE    mov         eax,dword ptr [eax+8]
 005C58C1    mov         edx,dword ptr [eax+8]
 005C58C4    mov         cl,1
 005C58C6    mov         eax,ebx
 005C58C8    call        TMenu.GetHelpContext
 005C58CD    test        eax,eax
>005C58CF    jne         005C58E6
 005C58D1    mov         eax,dword ptr [ebp+8]
 005C58D4    mov         eax,dword ptr [eax-4]
 005C58D7    mov         eax,dword ptr [eax+8]
 005C58DA    mov         edx,dword ptr [eax+0C]
 005C58DD    xor         ecx,ecx
 005C58DF    mov         eax,ebx
 005C58E1    call        TMenu.GetHelpContext
 005C58E6    pop         ebx
 005C58E7    pop         ebp
 005C58E8    ret
end;*}

//005C58EC
{*function sub_005C58EC(?:TWinControl):?;
begin
 005C58EC    push        ebx
 005C58ED    push        esi
 005C58EE    mov         esi,eax
 005C58F0    xor         ebx,ebx
 005C58F2    cmp         byte ptr [esi+170],1
>005C58F9    jne         005C5908
 005C58FB    cmp         dword ptr [esi+178],0
>005C5902    je          005C5908
 005C5904    mov         bl,1
>005C5906    jmp         005C591C
 005C5908    cmp         byte ptr [esi+170],0
>005C590F    jne         005C591C
 005C5911    cmp         dword ptr [esi+174],0
>005C5918    je          005C591C
 005C591A    mov         bl,1
 005C591C    mov         eax,ebx
 005C591E    pop         esi
 005C591F    pop         ebx
 005C5920    ret
end;*}

//005C5924
{*procedure sub_005C5924(?:TWinControl; ?:?; ?:?; ?:?);
begin
 005C5924    push        ebp
 005C5925    mov         ebp,esp
 005C5927    push        ebx
 005C5928    mov         ebx,eax
 005C592A    cmp         byte ptr [ebx+170],1
>005C5931    jne         005C5940
 005C5933    mov         byte ptr [edx],1
 005C5936    mov         eax,dword ptr [ebx+178]
 005C593C    mov         dword ptr [ecx],eax
>005C593E    jmp         005C5951
 005C5940    mov         byte ptr [edx],0
 005C5943    mov         eax,dword ptr [ebp+8]
 005C5946    mov         edx,dword ptr [ebx+174]
 005C594C    call        @UStrAsg
 005C5951    pop         ebx
 005C5952    pop         ebp
 005C5953    ret         4
end;*}

//005C5958
{*procedure TCustomForm.WMHelp(?:?);
begin
 005C5958    push        ebp
 005C5959    mov         ebp,esp
 005C595B    add         esp,0FFFFFFD0
 005C595E    push        ebx
 005C595F    push        esi
 005C5960    xor         ecx,ecx
 005C5962    mov         dword ptr [ebp-8],ecx
 005C5965    mov         dword ptr [ebp-4],edx
 005C5968    mov         esi,eax
 005C596A    xor         eax,eax
 005C596C    push        ebp
 005C596D    push        5C5AAC
 005C5972    push        dword ptr fs:[eax]
 005C5975    mov         dword ptr fs:[eax],esp
 005C5978    test        byte ptr [esi+1C],10;TCustomForm.FComponentState:TComponentState
>005C597C    jne         005C5A96
 005C5982    mov         eax,dword ptr [ebp-4]
 005C5985    mov         eax,dword ptr [eax+8]
 005C5988    cmp         dword ptr [eax+4],1
>005C598C    jne         005C59DE
 005C598E    mov         eax,dword ptr [eax+0C]
 005C5991    call        FindControl
 005C5996    mov         ebx,eax
>005C5998    jmp         005C599D
 005C599A    mov         ebx,dword ptr [ebx+40];TWinControl.FParent:TWinControl
 005C599D    test        ebx,ebx
>005C599F    je          005C59AC
 005C59A1    mov         eax,ebx
 005C59A3    call        005C58EC
 005C59A8    test        al,al
>005C59AA    je          005C599A
 005C59AC    test        ebx,ebx
>005C59AE    je          005C5A96
 005C59B4    lea         eax,[ebp-8]
 005C59B7    push        eax
 005C59B8    lea         ecx,[ebp-0C]
 005C59BB    lea         edx,[ebp-0D]
 005C59BE    mov         eax,ebx
 005C59C0    call        005C5924
 005C59C5    xor         eax,eax
 005C59C7    mov         dword ptr [ebp-20],eax
 005C59CA    xor         eax,eax
 005C59CC    mov         dword ptr [ebp-1C],eax
 005C59CF    lea         ecx,[ebp-18]
 005C59D2    lea         edx,[ebp-20]
 005C59D5    mov         eax,ebx
 005C59D7    call        TControl.ClientToScreen
>005C59DC    jmp         005C5A1F
 005C59DE    mov         byte ptr [ebp-0D],1
 005C59E2    push        ebp
 005C59E3    mov         eax,dword ptr [esi+2D8];TCustomForm.FMenu:TMainMenu
 005C59E9    call        005C58AC
 005C59EE    pop         ecx
 005C59EF    mov         dword ptr [ebp-0C],eax
 005C59F2    cmp         dword ptr [ebp-0C],0
>005C59F6    jne         005C5A08
 005C59F8    push        ebp
 005C59F9    mov         eax,dword ptr [esi+8C];TCustomForm.FPopupMenu:TPopupMenu
 005C59FF    call        005C58AC
 005C5A04    pop         ecx
 005C5A05    mov         dword ptr [ebp-0C],eax
 005C5A08    xor         eax,eax
 005C5A0A    mov         dword ptr [ebp-28],eax
 005C5A0D    xor         eax,eax
 005C5A0F    mov         dword ptr [ebp-24],eax
 005C5A12    lea         ecx,[ebp-18]
 005C5A15    lea         edx,[ebp-28]
 005C5A18    mov         eax,esi
 005C5A1A    call        TControl.ClientToScreen
 005C5A1F    test        byte ptr [esi+2BC],8;TCustomForm.FBorderIcons:TBorderIcons
>005C5A26    je          005C5A6E
 005C5A28    cmp         byte ptr [ebp-0D],1
>005C5A2C    jne         005C5A6E
 005C5A2E    mov         eax,dword ptr [ebp-18]
 005C5A31    mov         dword ptr [ebp-30],eax
 005C5A34    mov         eax,dword ptr [ebp-14]
 005C5A37    mov         dword ptr [ebp-2C],eax
 005C5A3A    mov         ecx,dword ptr [ebp-30]
 005C5A3D    and         ecx,0FFFF
 005C5A43    mov         eax,dword ptr [ebp-2C]
 005C5A46    shl         eax,10
 005C5A49    or          ecx,eax
 005C5A4B    mov         edx,0D
 005C5A50    mov         eax,[007CA7C8];Application:TApplication
 005C5A55    call        TApplication.HelpCommand
 005C5A5A    mov         ecx,dword ptr [ebp-0C]
 005C5A5D    mov         edx,8
 005C5A62    mov         eax,[007CA7C8];Application:TApplication
 005C5A67    call        TApplication.HelpCommand
>005C5A6C    jmp         005C5A96
 005C5A6E    cmp         byte ptr [ebp-0D],1
>005C5A72    jne         005C5A83
 005C5A74    mov         edx,dword ptr [ebp-0C]
 005C5A77    mov         eax,[007CA7C8];Application:TApplication
 005C5A7C    call        TApplication.HelpContext
>005C5A81    jmp         005C5A96
 005C5A83    cmp         byte ptr [ebp-0D],0
>005C5A87    jne         005C5A96
 005C5A89    mov         edx,dword ptr [ebp-8]
 005C5A8C    mov         eax,[007CA7C8];Application:TApplication
 005C5A91    call        TApplication.HelpKeyword
 005C5A96    xor         eax,eax
 005C5A98    pop         edx
 005C5A99    pop         ecx
 005C5A9A    pop         ecx
 005C5A9B    mov         dword ptr fs:[eax],edx
 005C5A9E    push        5C5AB3
 005C5AA3    lea         eax,[ebp-8]
 005C5AA6    call        @UStrClr
 005C5AAB    ret
>005C5AAC    jmp         @HandleFinally
>005C5AB1    jmp         005C5AA3
 005C5AB3    pop         esi
 005C5AB4    pop         ebx
 005C5AB5    mov         esp,ebp
 005C5AB7    pop         ebp
 005C5AB8    ret
end;*}

//005C5ABC
{*procedure TCustomForm.WMGetMinMaxInfo(?:?);
begin
 005C5ABC    push        ebx
 005C5ABD    push        esi
 005C5ABE    push        edi
 005C5ABF    push        ecx
 005C5AC0    mov         dword ptr [esp],edx
 005C5AC3    mov         esi,eax
 005C5AC5    test        byte ptr [esi+1C],2;TCustomForm.FComponentState:TComponentState
>005C5AC9    jne         005C5B1A
 005C5ACB    mov         eax,dword ptr [esp]
 005C5ACE    mov         eax,dword ptr [eax+8]
 005C5AD1    mov         edi,eax
 005C5AD3    mov         eax,dword ptr [esi+80];TCustomForm.FConstraints:TSizeConstraints
 005C5AD9    lea         edx,[edi+18]
 005C5ADC    mov         ecx,dword ptr [eax+14];TSizeConstraints.FMinWidth:TConstraintSize
 005C5ADF    test        ecx,ecx
>005C5AE1    jbe         005C5AE5
 005C5AE3    mov         dword ptr [edx],ecx
 005C5AE5    mov         ecx,dword ptr [eax+10];TSizeConstraints.FMinHeight:TConstraintSize
 005C5AE8    test        ecx,ecx
>005C5AEA    jbe         005C5AEF
 005C5AEC    mov         dword ptr [edx+4],ecx
 005C5AEF    lea         edx,[edi+20]
 005C5AF2    mov         ecx,dword ptr [eax+0C];TSizeConstraints.FMaxWidth:TConstraintSize
 005C5AF5    test        ecx,ecx
>005C5AF7    jbe         005C5AFB
 005C5AF9    mov         dword ptr [edx],ecx
 005C5AFB    mov         ecx,dword ptr [eax+8];TSizeConstraints.FMaxHeight:TConstraintSize
 005C5AFE    test        ecx,ecx
>005C5B00    jbe         005C5B05
 005C5B02    mov         dword ptr [edx+4],ecx
 005C5B05    lea         eax,[edi+20]
 005C5B08    push        eax
 005C5B09    lea         eax,[edi+24]
 005C5B0C    push        eax
 005C5B0D    lea         ecx,[edi+1C]
 005C5B10    lea         edx,[edi+18]
 005C5B13    mov         eax,esi
 005C5B15    mov         ebx,dword ptr [eax]
 005C5B17    call        dword ptr [ebx+4C];TWinControl.ConstrainedResize
 005C5B1A    mov         edx,dword ptr [esp]
 005C5B1D    mov         eax,esi
 005C5B1F    mov         ecx,dword ptr [eax]
 005C5B21    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 005C5B24    pop         edx
 005C5B25    pop         edi
 005C5B26    pop         esi
 005C5B27    pop         ebx
 005C5B28    ret
end;*}

//005C5B2C
{*procedure sub_005C5B2C(?:?; ?:?; ?:Integer; ?:?);
begin
 005C5B2C    push        ebp
 005C5B2D    mov         ebp,esp
 005C5B2F    push        ebx
 005C5B30    push        esi
 005C5B31    mov         esi,edx
 005C5B33    mov         ebx,eax
 005C5B35    mov         eax,dword ptr [ebx]
 005C5B37    add         eax,ecx
 005C5B39    sub         eax,esi
 005C5B3B    cdq
 005C5B3C    xor         eax,edx
 005C5B3E    sub         eax,edx
 005C5B40    mov         edx,dword ptr [ebp+8]
 005C5B43    mov         edx,dword ptr [edx-4]
 005C5B46    cmp         eax,dword ptr [edx+39C]
>005C5B4C    jge         005C5B52
 005C5B4E    sub         esi,ecx
 005C5B50    mov         dword ptr [ebx],esi
 005C5B52    pop         esi
 005C5B53    pop         ebx
 005C5B54    pop         ebp
 005C5B55    ret
end;*}

//005C5B58
procedure TCustomForm.WMWindowPosChangingMsg(Message:Messages.TWMWindowPosChanging);
begin
{*
 005C5B58    push        ebp
 005C5B59    mov         ebp,esp
 005C5B5B    add         esp,0FFFFFFCC
 005C5B5E    push        ebx
 005C5B5F    push        esi
 005C5B60    push        edi
 005C5B61    mov         esi,edx
 005C5B63    mov         dword ptr [ebp-4],eax
 005C5B66    mov         ebx,dword ptr [esi+8]
 005C5B69    mov         eax,dword ptr [ebx+18]
 005C5B6C    and         eax,8000
 005C5B71    cmp         eax,8000
>005C5B76    jne         005C5B80
 005C5B78    mov         eax,dword ptr [ebp-4]
 005C5B7B    call        005C6E18
 005C5B80    mov         eax,dword ptr [ebp-4]
 005C5B83    cmp         byte ptr [eax+398],0;TCustomForm.FScreenSnap:Boolean
>005C5B8A    je          005C5C18
 005C5B90    mov         eax,dword ptr [ebp-4]
 005C5B93    cmp         dword ptr [eax+40],0;TCustomForm.FParent:TWinControl
>005C5B97    je          005C5BA2
 005C5B99    mov         eax,dword ptr [ebp-4]
 005C5B9C    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005C5BA0    jne         005C5C18
 005C5BA2    cmp         dword ptr [ebx+8],0
>005C5BA6    jne         005C5BAE
 005C5BA8    cmp         dword ptr [ebx+0C],0
>005C5BAC    je          005C5C18
 005C5BAE    mov         eax,dword ptr [ebp-4]
 005C5BB1    mov         eax,dword ptr [eax+58];TCustomForm.FWidth:Integer
 005C5BB4    cmp         eax,dword ptr [ebx+10]
>005C5BB7    jne         005C5C18
 005C5BB9    mov         eax,dword ptr [ebp-4]
 005C5BBC    mov         eax,dword ptr [eax+5C];TCustomForm.FHeight:Integer
 005C5BBF    cmp         eax,dword ptr [ebx+14]
>005C5BC2    jne         005C5C18
 005C5BC4    mov         eax,dword ptr [ebp-4]
 005C5BC7    call        005C2E30
 005C5BCC    lea         edx,[ebp-34]
 005C5BCF    call        005C7C24
 005C5BD4    push        ebp
 005C5BD5    lea         eax,[ebx+8]
 005C5BD8    xor         ecx,ecx
 005C5BDA    mov         edx,dword ptr [ebp-34]
 005C5BDD    call        005C5B2C
 005C5BE2    pop         ecx
 005C5BE3    push        ebp
 005C5BE4    lea         eax,[ebx+0C]
 005C5BE7    xor         ecx,ecx
 005C5BE9    mov         edx,dword ptr [ebp-30]
 005C5BEC    call        005C5B2C
 005C5BF1    pop         ecx
 005C5BF2    push        ebp
 005C5BF3    mov         eax,dword ptr [ebp-4]
 005C5BF6    mov         ecx,dword ptr [eax+58];TCustomForm.FWidth:Integer
 005C5BF9    lea         eax,[ebx+8]
 005C5BFC    mov         edx,dword ptr [ebp-2C]
 005C5BFF    call        005C5B2C
 005C5C04    pop         ecx
 005C5C05    push        ebp
 005C5C06    mov         eax,dword ptr [ebp-4]
 005C5C09    mov         ecx,dword ptr [eax+5C];TCustomForm.FHeight:Integer
 005C5C0C    lea         eax,[ebx+0C]
 005C5C0F    mov         edx,dword ptr [ebp-28]
 005C5C12    call        005C5B2C
 005C5C17    pop         ecx
 005C5C18    mov         edx,esi
 005C5C1A    mov         eax,dword ptr [ebp-4]
 005C5C1D    call        TWinControl.WMWindowPosChanging
 005C5C22    mov         eax,dword ptr [ebp-4]
 005C5C25    mov         esi,dword ptr [eax+3AC];TCustomForm.FGlassFrame:TGlassFrame
 005C5C2B    mov         eax,esi
 005C5C2D    call        TGlassFrame.FrameExtended
 005C5C32    test        al,al
>005C5C34    je          005C5D31
 005C5C3A    cmp         byte ptr [esi+28],0;TGlassFrame.FSheetOfGlass:Boolean
>005C5C3E    jne         005C5D31
 005C5C44    mov         eax,dword ptr [ebp-4]
 005C5C47    cmp         byte ptr [eax+69],0;TCustomForm.FVisible:Boolean
>005C5C4B    jne         005C5C5A
 005C5C4D    mov         eax,dword ptr [ebp-4]
 005C5C50    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005C5C54    je          005C5D31
 005C5C5A    mov         eax,dword ptr [ebx+10]
 005C5C5D    test        eax,eax
>005C5C5F    jne         005C5C6B
 005C5C61    cmp         dword ptr [ebx+14],0
>005C5C65    je          005C5D31
 005C5C6B    mov         edx,dword ptr [ebp-4]
 005C5C6E    mov         edi,eax
 005C5C70    sub         edi,dword ptr [edx+58]
 005C5C73    mov         eax,dword ptr [ebp-4]
 005C5C76    mov         edx,dword ptr [ebx+14]
 005C5C79    sub         edx,dword ptr [eax+5C]
 005C5C7C    mov         ebx,edx
 005C5C7E    test        edi,edi
>005C5C80    jne         005C5C8A
 005C5C82    test        ebx,ebx
>005C5C84    je          005C5D31
 005C5C8A    lea         edx,[ebp-14]
 005C5C8D    mov         eax,dword ptr [ebp-4]
 005C5C90    mov         ecx,dword ptr [eax]
 005C5C92    call        dword ptr [ecx+64];TCustomForm.GetClientRect
 005C5C95    mov         eax,dword ptr [ebp-8]
 005C5C98    sub         eax,dword ptr [esi+18]
 005C5C9B    push        eax
 005C5C9C    lea         eax,[ebp-24]
 005C5C9F    push        eax
 005C5CA0    mov         ecx,dword ptr [ebp-0C]
 005C5CA3    sub         ecx,dword ptr [esi+14]
 005C5CA6    mov         edx,dword ptr [esi+10];TGlassFrame.FTop:Integer
 005C5CA9    mov         eax,dword ptr [esi+0C];TGlassFrame.FLeft:Integer
 005C5CAC    call        Rect
 005C5CB1    mov         eax,dword ptr [ebp-18]
 005C5CB4    cmp         eax,dword ptr [esi+10];TGlassFrame.FTop:Integer
>005C5CB7    jg          005C5CD7
 005C5CB9    test        ebx,ebx
>005C5CBB    jle         005C5CD7
 005C5CBD    mov         eax,dword ptr [ebp-20]
 005C5CC0    sub         eax,ebx
 005C5CC2    mov         dword ptr [ebp-18],eax
 005C5CC5    mov         eax,dword ptr [esi+18];TGlassFrame.FBottom:Integer
 005C5CC8    mov         dword ptr [ebp-20],eax
 005C5CCB    mov         eax,dword ptr [ebp-4]
 005C5CCE    mov         byte ptr [eax+3B0],1;TCustomForm.FRefreshGlassFrame:Boolean
>005C5CD5    jmp         005C5CE9
 005C5CD7    test        ebx,ebx
>005C5CD9    jle         005C5CDE
 005C5CDB    add         dword ptr [ebp-18],ebx
 005C5CDE    mov         eax,dword ptr [ebp-20]
 005C5CE1    cmp         eax,dword ptr [ebp-18]
>005C5CE4    jle         005C5CE9
 005C5CE6    mov         dword ptr [ebp-18],eax
 005C5CE9    mov         edx,dword ptr [esi+0C];TGlassFrame.FLeft:Integer
 005C5CEC    mov         eax,dword ptr [ebp-1C]
 005C5CEF    cmp         edx,eax
>005C5CF1    jle         005C5D0B
 005C5CF3    test        edi,edi
>005C5CF5    jle         005C5D0B
 005C5CF7    sub         eax,edi
 005C5CF9    mov         dword ptr [ebp-24],eax
 005C5CFC    mov         dword ptr [ebp-1C],edx
 005C5CFF    mov         eax,dword ptr [ebp-4]
 005C5D02    mov         byte ptr [eax+3B0],1;TCustomForm.FRefreshGlassFrame:Boolean
>005C5D09    jmp         005C5D1D
 005C5D0B    test        edi,edi
>005C5D0D    jle         005C5D12
 005C5D0F    add         dword ptr [ebp-1C],edi
 005C5D12    mov         eax,dword ptr [ebp-24]
 005C5D15    cmp         eax,dword ptr [ebp-1C]
>005C5D18    jle         005C5D1D
 005C5D1A    mov         dword ptr [ebp-1C],eax
 005C5D1D    push        0
 005C5D1F    lea         eax,[ebp-24]
 005C5D22    push        eax
 005C5D23    mov         eax,dword ptr [ebp-4]
 005C5D26    call        TWinControl.GetHandle
 005C5D2B    push        eax
 005C5D2C    call        user32.InvalidateRect
 005C5D31    pop         edi
 005C5D32    pop         esi
 005C5D33    pop         ebx
 005C5D34    mov         esp,ebp
 005C5D36    pop         ebp
 005C5D37    ret
*}
end;

//005C5D38
{*procedure TCustomForm.WMNCCalcSize(?:?);
begin
 005C5D38    push        ebx
 005C5D39    push        esi
 005C5D3A    mov         esi,edx
 005C5D3C    mov         ebx,eax
 005C5D3E    mov         edx,esi
 005C5D40    mov         eax,ebx
 005C5D42    call        TWinControl.WMNCCalcSize
 005C5D47    test        byte ptr [ebx+1C],10;TCustomForm.FComponentState:TComponentState
>005C5D4B    je          005C5D87
 005C5D4D    cmp         dword ptr [ebx+40],0;TCustomForm.FParent:TWinControl
>005C5D51    je          005C5D87
 005C5D53    cmp         dword ptr [ebx+2D8],0;TCustomForm.FMenu:TMainMenu
>005C5D5A    je          005C5D87
 005C5D5C    mov         eax,dword ptr [ebx+2D8];TCustomForm.FMenu:TMainMenu
 005C5D62    cmp         dword ptr [eax+44],0;TMainMenu.FItems:TMenuItem
>005C5D66    je          005C5D87
 005C5D68    mov         eax,dword ptr [ebx+2D8];TCustomForm.FMenu:TMainMenu
 005C5D6E    mov         eax,dword ptr [eax+44];TMainMenu.FItems:TMenuItem
 005C5D71    call        TMenuItem.GetCount
 005C5D76    test        eax,eax
>005C5D78    jle         005C5D87
 005C5D7A    mov         ebx,dword ptr [esi+8]
 005C5D7D    push        0F
 005C5D7F    call        user32.GetSystemMetrics
 005C5D84    add         dword ptr [ebx+4],eax
 005C5D87    pop         esi
 005C5D88    pop         ebx
 005C5D89    ret
end;*}

//005C5D8C
{*procedure TCustomForm.sub_004F1B70(?:?);
begin
 005C5D8C    call        TWinControl.sub_004F1B70
 005C5D91    ret
end;*}

//005C5D94
procedure TCustomForm.sub_005C5D94;
begin
{*
 005C5D94    push        esi
 005C5D95    mov         esi,eax
 005C5D97    mov         eax,esi
 005C5D99    mov         ecx,dword ptr [eax]
 005C5D9B    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 005C5D9E    mov         eax,esi
 005C5DA0    mov         edx,dword ptr [eax]
 005C5DA2    call        dword ptr [edx+124];TCustomForm.sub_005C187C
 005C5DA8    pop         esi
 005C5DA9    ret
*}
end;

//005C5DAC
{*procedure TCustomForm.sub_005C5DAC(?:?);
begin
 005C5DAC    push        ebx
 005C5DAD    push        esi
 005C5DAE    push        edi
 005C5DAF    mov         edi,edx
 005C5DB1    mov         esi,eax
 005C5DB3    mov         edx,edi
 005C5DB5    mov         eax,esi
 005C5DB7    mov         ecx,dword ptr [eax]
 005C5DB9    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 005C5DBC    movzx       ecx,word ptr [edi+0A]
 005C5DC0    movzx       edx,word ptr [edi+8]
 005C5DC4    mov         eax,esi
 005C5DC6    mov         ebx,dword ptr [eax]
 005C5DC8    call        dword ptr [ebx+128];TCustomForm.sub_005C1890
 005C5DCE    pop         edi
 005C5DCF    pop         esi
 005C5DD0    pop         ebx
 005C5DD1    ret
end;*}

//005C5DD4
{*procedure TCustomForm.sub_005C5DD4(?:?);
begin
 005C5DD4    push        ebx
 005C5DD5    push        esi
 005C5DD6    push        edi
 005C5DD7    push        ebp
 005C5DD8    push        ecx
 005C5DD9    mov         edi,edx
 005C5DDB    mov         ebx,eax
 005C5DDD    test        byte ptr [ebx+1C],10;TCustomForm.FComponentState:TComponentState
>005C5DE1    jne         005C5ED4
 005C5DE7    cmp         word ptr [edi+4],0
>005C5DEC    je          005C5DF7
 005C5DEE    cmp         dword ptr [ebx+2E8],0;TCustomForm.FPixelsPerInch:Integer
>005C5DF5    jne         005C5E29
 005C5DF7    mov         eax,[007CA7C8];Application:TApplication
 005C5DFC    mov         esi,dword ptr [eax+58]
 005C5DFF    test        esi,esi
>005C5E01    je          005C5ED4
 005C5E07    mov         eax,esi
 005C5E09    call        TForm.GetPixelsPerInch
 005C5E0E    test        eax,eax
>005C5E10    je          005C5ED4
 005C5E16    mov         eax,[007CA7C8];Application:TApplication
 005C5E1B    mov         eax,dword ptr [eax+58]
 005C5E1E    call        TForm.GetPixelsPerInch
 005C5E23    mov         dword ptr [ebx+2E8],eax;TCustomForm.FPixelsPerInch:Integer
 005C5E29    movzx       edx,word ptr [edi+4]
 005C5E2D    mov         eax,dword ptr [ebx+2E8];TCustomForm.FPixelsPerInch:Integer
 005C5E33    cmp         edx,eax
>005C5E35    je          005C5ECF
 005C5E3B    cmp         word ptr [ebx+322],0;TCustomForm.?f322:word
>005C5E43    je          005C5E56
 005C5E45    push        edx
 005C5E46    mov         ecx,eax
 005C5E48    mov         edx,ebx
 005C5E4A    mov         eax,dword ptr [ebx+324];TCustomForm.?f324:dword
 005C5E50    call        dword ptr [ebx+320];TCustomForm.FOnBeforeMonitorDpiChanged
 005C5E56    movzx       edx,word ptr [edi+4]
 005C5E5A    mov         ecx,dword ptr [ebx+2E8];TCustomForm.FPixelsPerInch:Integer
 005C5E60    mov         eax,ebx
 005C5E62    mov         si,0FFEC
 005C5E66    call        @CallDynaInst;TCustomForm.ChangeScale
 005C5E6B    mov         eax,ebx
 005C5E6D    call        005C2D64
 005C5E72    mov         ebp,eax
 005C5E74    dec         ebp
 005C5E75    test        ebp,ebp
>005C5E77    jl          005C5EA4
 005C5E79    inc         ebp
 005C5E7A    mov         dword ptr [esp],0
 005C5E81    mov         edx,dword ptr [esp]
 005C5E84    mov         eax,ebx
 005C5E86    call        TForm.get_MDIChildren
 005C5E8B    movzx       edx,word ptr [edi+4]
 005C5E8F    mov         ecx,dword ptr [ebx+2E8];TCustomForm.FPixelsPerInch:Integer
 005C5E95    mov         si,0FFEC
 005C5E99    call        @CallDynaInst;TCustomForm.ChangeScale
 005C5E9E    inc         dword ptr [esp]
 005C5EA1    dec         ebp
>005C5EA2    jne         005C5E81
 005C5EA4    mov         eax,dword ptr [ebx+2E8];TCustomForm.FPixelsPerInch:Integer
 005C5EAA    movzx       edx,word ptr [edi+4]
 005C5EAE    mov         dword ptr [ebx+2E8],edx;TCustomForm.FPixelsPerInch:Integer
 005C5EB4    cmp         word ptr [ebx+31A],0;TCustomForm.?f31A:word
>005C5EBC    je          005C5ECF
 005C5EBE    push        edx
 005C5EBF    mov         ecx,eax
 005C5EC1    mov         edx,ebx
 005C5EC3    mov         eax,dword ptr [ebx+31C];TCustomForm.?f31C:dword
 005C5EC9    call        dword ptr [ebx+318];TCustomForm.FOnAfterMonitorDpiChanged
 005C5ECF    xor         eax,eax
 005C5ED1    mov         dword ptr [edi+0C],eax
 005C5ED4    pop         edx
 005C5ED5    pop         ebp
 005C5ED6    pop         edi
 005C5ED7    pop         esi
 005C5ED8    pop         ebx
 005C5ED9    ret
end;*}

//005C5EDC
procedure TCustomForm.CMActivate;
begin
{*
 005C5EDC    push        ebx
 005C5EDD    push        esi
 005C5EDE    mov         ebx,eax
 005C5EE0    test        byte ptr [ebx+1C],2;TCustomForm.FComponentState:TComponentState
>005C5EE4    jne         005C5EF4
 005C5EE6    mov         eax,ebx
 005C5EE8    mov         si,0FFAD
 005C5EEC    call        @CallDynaInst;TCustomForm.sub_005C4C9C
 005C5EF1    pop         esi
 005C5EF2    pop         ebx
 005C5EF3    ret
 005C5EF4    or          byte ptr [ebx+3BC],20;TCustomForm.FFormState:TFormState
 005C5EFB    pop         esi
 005C5EFC    pop         ebx
 005C5EFD    ret
*}
end;

//005C5F00
procedure TCustomForm.CMDeactivate;
begin
{*
 005C5F00    push        ebx
 005C5F01    push        esi
 005C5F02    mov         ebx,eax
 005C5F04    test        byte ptr [ebx+1C],2;TCustomForm.FComponentState:TComponentState
>005C5F08    jne         005C5F18
 005C5F0A    mov         eax,ebx
 005C5F0C    mov         si,0FFAB
 005C5F10    call        @CallDynaInst;TCustomForm.sub_005C4CCC
 005C5F15    pop         esi
 005C5F16    pop         ebx
 005C5F17    ret
 005C5F18    and         byte ptr [ebx+3BC],0DF;TCustomForm.FFormState:TFormState
 005C5F1F    pop         esi
 005C5F20    pop         ebx
 005C5F21    ret
*}
end;

//005C5F24
{*procedure TCustomForm.CMDialogKey(?:?);
begin
 005C5F24    push        ebx
 005C5F25    push        esi
 005C5F26    mov         esi,edx
 005C5F28    mov         ebx,eax
 005C5F2A    push        12
 005C5F2C    call        user32.GetKeyState
 005C5F31    test        ax,ax
>005C5F34    jl          005C5FB2
 005C5F36    movzx       eax,word ptr [esi+4]
 005C5F3A    sub         ax,9
>005C5F3E    je          005C5F4B
 005C5F40    add         eax,0FFFFFFE4
 005C5F43    sub         ax,4
>005C5F47    jb          005C5F7D
>005C5F49    jmp         005C5FB2
 005C5F4B    push        11
 005C5F4D    call        user32.GetKeyState
 005C5F52    test        ax,ax
>005C5F55    jl          005C5FB2
 005C5F57    push        1
 005C5F59    push        10
 005C5F5B    call        user32.GetKeyState
 005C5F60    test        ax,ax
 005C5F63    setge       cl
 005C5F66    mov         edx,dword ptr [ebx+2B4];TCustomForm.FActiveControl:TWinControl
 005C5F6C    mov         eax,ebx
 005C5F6E    call        004F04A0
 005C5F73    mov         dword ptr [esi+0C],1
 005C5F7A    pop         esi
 005C5F7B    pop         ebx
 005C5F7C    ret
 005C5F7D    mov         eax,dword ptr [ebx+2B4];TCustomForm.FActiveControl:TWinControl
 005C5F83    test        eax,eax
>005C5F85    je          005C5FBB
 005C5F87    push        0
 005C5F89    movzx       edx,word ptr [esi+4]
 005C5F8D    cmp         dx,27
>005C5F91    je          005C5F9D
 005C5F93    cmp         dx,28
>005C5F97    je          005C5F9D
 005C5F99    xor         ecx,ecx
>005C5F9B    jmp         005C5F9F
 005C5F9D    mov         cl,1
 005C5F9F    mov         edx,dword ptr [eax+40];TWinControl.FParent:TWinControl
 005C5FA2    xchg        eax,edx
 005C5FA3    call        004F04A0
 005C5FA8    mov         dword ptr [esi+0C],1
 005C5FAF    pop         esi
 005C5FB0    pop         ebx
 005C5FB1    ret
 005C5FB2    mov         edx,esi
 005C5FB4    mov         eax,ebx
 005C5FB6    call        TWinControl.CMDialogKey
 005C5FBB    pop         esi
 005C5FBC    pop         ebx
 005C5FBD    ret
end;*}

//005C5FC0
procedure TCustomForm.CMShowingChanged;
begin
{*
 005C5FC0    push        ebp
 005C5FC1    mov         ebp,esp
 005C5FC3    add         esp,0FFFFFFE8
 005C5FC6    push        ebx
 005C5FC7    push        esi
 005C5FC8    push        edi
 005C5FC9    xor         ecx,ecx
 005C5FCB    mov         dword ptr [ebp-18],ecx
 005C5FCE    mov         dword ptr [ebp-4],eax
 005C5FD1    xor         eax,eax
 005C5FD3    push        ebp
 005C5FD4    push        5C662A
 005C5FD9    push        dword ptr fs:[eax]
 005C5FDC    mov         dword ptr fs:[eax],esp
 005C5FDF    mov         eax,dword ptr [ebp-4]
 005C5FE2    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005C5FE6    jne         005C6015
 005C5FE8    mov         eax,dword ptr [ebp-4]
 005C5FEB    test        byte ptr [eax+3BC],4;TCustomForm.FFormState:TFormState
>005C5FF2    je          005C6015
 005C5FF4    lea         edx,[ebp-18]
 005C5FF7    mov         eax,[007C4EA8];^SResString234:TResStringRec
 005C5FFC    call        LoadResString
 005C6001    mov         ecx,dword ptr [ebp-18]
 005C6004    mov         dl,1
 005C6006    mov         eax,[0046BE9C];EInvalidOperation
 005C600B    call        Exception.Create;EInvalidOperation.Create
 005C6010    call        @RaiseExcept
 005C6015    mov         eax,[007CA7C8];Application:TApplication
 005C601A    call        005CC318
 005C601F    mov         eax,dword ptr [ebp-4]
 005C6022    or          byte ptr [eax+3BC],4;TCustomForm.FFormState:TFormState
 005C6029    xor         edx,edx
 005C602B    push        ebp
 005C602C    push        5C660D
 005C6031    push        dword ptr fs:[edx]
 005C6034    mov         dword ptr fs:[edx],esp
 005C6037    mov         eax,dword ptr [ebp-4]
 005C603A    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005C603E    jne         005C65C7
 005C6044    mov         eax,dword ptr [ebp-4]
 005C6047    cmp         byte ptr [eax+205],0;TCustomForm.FShowing:Boolean
>005C604E    je          005C64BB
 005C6054    xor         eax,eax
 005C6056    push        ebp
 005C6057    push        5C6078
 005C605C    push        dword ptr fs:[eax]
 005C605F    mov         dword ptr fs:[eax],esp
 005C6062    mov         eax,dword ptr [ebp-4]
 005C6065    mov         si,0FFA8
 005C6069    call        @CallDynaInst;TCustomForm.sub_005C1848
 005C606E    xor         eax,eax
 005C6070    pop         edx
 005C6071    pop         ecx
 005C6072    pop         ecx
 005C6073    mov         dword ptr fs:[eax],edx
>005C6076    jmp         005C608F
>005C6078    jmp         @HandleAnyException
 005C607D    mov         edx,dword ptr [ebp-4]
 005C6080    mov         eax,[007CA7C8];Application:TApplication
 005C6085    call        TApplication.HandleException
 005C608A    call        @DoneExcept
 005C608F    mov         eax,dword ptr [ebp-4]
 005C6092    cmp         byte ptr [eax+2C3],4;TCustomForm.FPosition:TPosition
>005C6099    je          005C60BB
 005C609B    mov         eax,dword ptr [ebp-4]
 005C609E    cmp         byte ptr [eax+2C3],6;TCustomForm.FPosition:TPosition
>005C60A5    jne         005C61A7
 005C60AB    mov         eax,dword ptr [ebp-4]
 005C60AE    cmp         byte ptr [eax+2C2],1;TCustomForm.FFormStyle:TFormStyle
>005C60B5    jne         005C61A7
 005C60BB    mov         eax,dword ptr [ebp-4]
 005C60BE    cmp         byte ptr [eax+2C2],1;TCustomForm.FFormStyle:TFormStyle
>005C60C5    jne         005C6101
 005C60C7    mov         eax,[007CA7C8];Application:TApplication
 005C60CC    mov         eax,dword ptr [eax+58]
 005C60CF    call        TControl.GetClientWidth
 005C60D4    mov         esi,eax
 005C60D6    mov         eax,dword ptr [ebp-4]
 005C60D9    sub         esi,dword ptr [eax+58]
 005C60DC    sar         esi,1
>005C60DE    jns         005C60E3
 005C60E0    adc         esi,0
 005C60E3    mov         eax,[007CA7C8];Application:TApplication
 005C60E8    mov         eax,dword ptr [eax+58]
 005C60EB    call        TControl.GetClientHeight
 005C60F0    mov         edi,eax
 005C60F2    mov         eax,dword ptr [ebp-4]
 005C60F5    sub         edi,dword ptr [eax+5C]
 005C60F8    sar         edi,1
>005C60FA    jns         005C613C
 005C60FC    adc         edi,0
>005C60FF    jmp         005C613C
 005C6101    lea         edx,[ebp-14]
 005C6104    mov         eax,[007CA7CC];Screen:TScreen
 005C6109    call        005C9334
 005C610E    mov         esi,dword ptr [ebp-0C]
 005C6111    mov         eax,dword ptr [ebp-14]
 005C6114    sub         esi,eax
 005C6116    mov         edx,dword ptr [ebp-4]
 005C6119    sub         esi,dword ptr [edx+58]
 005C611C    sar         esi,1
>005C611E    jns         005C6123
 005C6120    adc         esi,0
 005C6123    add         esi,eax
 005C6125    mov         edi,dword ptr [ebp-8]
 005C6128    mov         eax,dword ptr [ebp-10]
 005C612B    sub         edi,eax
 005C612D    mov         edx,dword ptr [ebp-4]
 005C6130    sub         edi,dword ptr [edx+5C]
 005C6133    sar         edi,1
>005C6135    jns         005C613A
 005C6137    adc         edi,0
 005C613A    add         edi,eax
 005C613C    mov         eax,[007CA7CC];Screen:TScreen
 005C6141    call        005C80D8
 005C6146    cmp         esi,eax
>005C6148    jge         005C6156
 005C614A    mov         eax,[007CA7CC];Screen:TScreen
 005C614F    call        005C80D8
 005C6154    mov         esi,eax
 005C6156    mov         eax,[007CA7CC];Screen:TScreen
 005C615B    call        005C80D0
 005C6160    cmp         edi,eax
>005C6162    jge         005C6170
 005C6164    mov         eax,[007CA7CC];Screen:TScreen
 005C6169    call        005C80D0
 005C616E    mov         edi,eax
 005C6170    mov         eax,dword ptr [ebp-4]
 005C6173    mov         eax,dword ptr [eax+58];TCustomForm.FWidth:Integer
 005C6176    push        eax
 005C6177    mov         eax,dword ptr [ebp-4]
 005C617A    mov         eax,dword ptr [eax+5C];TCustomForm.FHeight:Integer
 005C617D    push        eax
 005C617E    mov         ecx,edi
 005C6180    mov         edx,esi
 005C6182    mov         eax,dword ptr [ebp-4]
 005C6185    mov         ebx,dword ptr [eax]
 005C6187    call        dword ptr [ebx+0B0];TWinControl.SetBounds
 005C618D    mov         eax,dword ptr [ebp-4]
 005C6190    cmp         byte ptr [eax+69],0;TCustomForm.FVisible:Boolean
>005C6194    je          005C63C7
 005C619A    mov         eax,dword ptr [ebp-4]
 005C619D    call        005C3678
>005C61A2    jmp         005C63C7
 005C61A7    mov         eax,dword ptr [ebp-4]
 005C61AA    movzx       eax,byte ptr [eax+2C3];TCustomForm.FPosition:TPosition
 005C61B1    mov         edx,eax
 005C61B3    add         dl,0FA
 005C61B6    sub         dl,2
>005C61B9    jae         005C62CC
 005C61BF    mov         eax,[007CA7C8];Application:TApplication
 005C61C4    mov         ebx,dword ptr [eax+58]
 005C61C7    mov         eax,dword ptr [ebp-4]
 005C61CA    cmp         byte ptr [eax+2C3],7;TCustomForm.FPosition:TPosition
>005C61D1    jne         005C61EE
 005C61D3    mov         eax,dword ptr [ebp-4]
 005C61D6    mov         eax,dword ptr [eax+4];TCustomForm.FOwner:TComponent
 005C61D9    mov         edx,dword ptr ds:[5B7120];TCustomForm
 005C61DF    call        @IsClass
 005C61E4    test        al,al
>005C61E6    je          005C61EE
 005C61E8    mov         eax,dword ptr [ebp-4]
 005C61EB    mov         ebx,dword ptr [eax+4];TCustomForm.FOwner:TComponent
 005C61EE    test        ebx,ebx
>005C61F0    je          005C622F
 005C61F2    cmp         ebx,dword ptr [ebp-4]
>005C61F5    je          005C622F
 005C61F7    mov         eax,ebx
 005C61F9    call        TCustomForm.GetLeft
 005C61FE    mov         esi,eax
 005C6200    mov         eax,dword ptr [ebx+58]
 005C6203    mov         edx,dword ptr [ebp-4]
 005C6206    sub         eax,dword ptr [edx+58]
 005C6209    sar         eax,1
>005C620B    jns         005C6210
 005C620D    adc         eax,0
 005C6210    add         esi,eax
 005C6212    mov         eax,ebx
 005C6214    call        TCustomForm.GetTop
 005C6219    mov         edi,eax
 005C621B    mov         eax,dword ptr [ebx+5C]
 005C621E    mov         edx,dword ptr [ebp-4]
 005C6221    sub         eax,dword ptr [edx+5C]
 005C6224    sar         eax,1
>005C6226    jns         005C622B
 005C6228    adc         eax,0
 005C622B    add         edi,eax
>005C622D    jmp         005C6261
 005C622F    mov         eax,[007CA7CC];Screen:TScreen
 005C6234    call        005C80C8
 005C6239    mov         esi,eax
 005C623B    mov         eax,dword ptr [ebp-4]
 005C623E    sub         esi,dword ptr [eax+58]
 005C6241    sar         esi,1
>005C6243    jns         005C6248
 005C6245    adc         esi,0
 005C6248    mov         eax,[007CA7CC];Screen:TScreen
 005C624D    call        005C80C0
 005C6252    mov         edi,eax
 005C6254    mov         eax,dword ptr [ebp-4]
 005C6257    sub         edi,dword ptr [eax+5C]
 005C625A    sar         edi,1
>005C625C    jns         005C6261
 005C625E    adc         edi,0
 005C6261    mov         eax,[007CA7CC];Screen:TScreen
 005C6266    call        005C80D8
 005C626B    cmp         esi,eax
>005C626D    jge         005C627B
 005C626F    mov         eax,[007CA7CC];Screen:TScreen
 005C6274    call        005C80D8
 005C6279    mov         esi,eax
 005C627B    mov         eax,[007CA7CC];Screen:TScreen
 005C6280    call        005C80D0
 005C6285    cmp         edi,eax
>005C6287    jge         005C6295
 005C6289    mov         eax,[007CA7CC];Screen:TScreen
 005C628E    call        005C80D0
 005C6293    mov         edi,eax
 005C6295    mov         eax,dword ptr [ebp-4]
 005C6298    mov         eax,dword ptr [eax+58];TCustomForm.FWidth:Integer
 005C629B    push        eax
 005C629C    mov         eax,dword ptr [ebp-4]
 005C629F    mov         eax,dword ptr [eax+5C];TCustomForm.FHeight:Integer
 005C62A2    push        eax
 005C62A3    mov         ecx,edi
 005C62A5    mov         edx,esi
 005C62A7    mov         eax,dword ptr [ebp-4]
 005C62AA    mov         ebx,dword ptr [eax]
 005C62AC    call        dword ptr [ebx+0B0];TWinControl.SetBounds
 005C62B2    mov         eax,dword ptr [ebp-4]
 005C62B5    cmp         byte ptr [eax+69],0;TCustomForm.FVisible:Boolean
>005C62B9    je          005C63C7
 005C62BF    mov         eax,dword ptr [ebp-4]
 005C62C2    call        005C3678
>005C62C7    jmp         005C63C7
 005C62CC    cmp         al,5
>005C62CE    jne         005C63C7
 005C62D4    mov         eax,dword ptr [ebp-4]
 005C62D7    cmp         byte ptr [eax+2C2],1;TCustomForm.FFormStyle:TFormStyle
>005C62DE    jne         005C631A
 005C62E0    mov         eax,[007CA7C8];Application:TApplication
 005C62E5    mov         eax,dword ptr [eax+58]
 005C62E8    call        TControl.GetClientWidth
 005C62ED    mov         esi,eax
 005C62EF    mov         eax,dword ptr [ebp-4]
 005C62F2    sub         esi,dword ptr [eax+58]
 005C62F5    sar         esi,1
>005C62F7    jns         005C62FC
 005C62F9    adc         esi,0
 005C62FC    mov         eax,[007CA7C8];Application:TApplication
 005C6301    mov         eax,dword ptr [eax+58]
 005C6304    call        TControl.GetClientHeight
 005C6309    mov         edi,eax
 005C630B    mov         eax,dword ptr [ebp-4]
 005C630E    sub         edi,dword ptr [eax+5C]
 005C6311    sar         edi,1
>005C6313    jns         005C6376
 005C6315    adc         edi,0
>005C6318    jmp         005C6376
 005C631A    mov         eax,[007CA7CC];Screen:TScreen
 005C631F    call        005C80E8
 005C6324    mov         esi,eax
 005C6326    sar         esi,1
>005C6328    jns         005C632D
 005C632A    adc         esi,0
 005C632D    mov         eax,[007CA7CC];Screen:TScreen
 005C6332    call        005C80D8
 005C6337    add         esi,eax
 005C6339    mov         eax,dword ptr [ebp-4]
 005C633C    mov         eax,dword ptr [eax+58];TCustomForm.FWidth:Integer
 005C633F    sar         eax,1
>005C6341    jns         005C6346
 005C6343    adc         eax,0
 005C6346    sub         esi,eax
 005C6348    mov         eax,[007CA7CC];Screen:TScreen
 005C634D    call        005C80E0
 005C6352    mov         edi,eax
 005C6354    sar         edi,1
>005C6356    jns         005C635B
 005C6358    adc         edi,0
 005C635B    mov         eax,[007CA7CC];Screen:TScreen
 005C6360    call        005C80D0
 005C6365    add         edi,eax
 005C6367    mov         eax,dword ptr [ebp-4]
 005C636A    mov         eax,dword ptr [eax+5C];TCustomForm.FHeight:Integer
 005C636D    sar         eax,1
>005C636F    jns         005C6374
 005C6371    adc         eax,0
 005C6374    sub         edi,eax
 005C6376    mov         eax,[007CA7CC];Screen:TScreen
 005C637B    call        005C80D8
 005C6380    cmp         esi,eax
>005C6382    jge         005C6390
 005C6384    mov         eax,[007CA7CC];Screen:TScreen
 005C6389    call        005C80D8
 005C638E    mov         esi,eax
 005C6390    mov         eax,[007CA7CC];Screen:TScreen
 005C6395    call        005C80D0
 005C639A    cmp         edi,eax
>005C639C    jge         005C63AA
 005C639E    mov         eax,[007CA7CC];Screen:TScreen
 005C63A3    call        005C80D0
 005C63A8    mov         edi,eax
 005C63AA    mov         eax,dword ptr [ebp-4]
 005C63AD    mov         eax,dword ptr [eax+58];TCustomForm.FWidth:Integer
 005C63B0    push        eax
 005C63B1    mov         eax,dword ptr [ebp-4]
 005C63B4    mov         eax,dword ptr [eax+5C];TCustomForm.FHeight:Integer
 005C63B7    push        eax
 005C63B8    mov         ecx,edi
 005C63BA    mov         edx,esi
 005C63BC    mov         eax,dword ptr [ebp-4]
 005C63BF    mov         ebx,dword ptr [eax]
 005C63C1    call        dword ptr [ebx+0B0];TWinControl.SetBounds
 005C63C7    mov         eax,dword ptr [ebp-4]
 005C63CA    mov         byte ptr [eax+2C3],0;TCustomForm.FPosition:TPosition
 005C63D1    mov         eax,dword ptr [ebp-4]
 005C63D4    cmp         byte ptr [eax+2C2],1;TCustomForm.FFormStyle:TFormStyle
>005C63DB    jne         005C6496
 005C63E1    mov         eax,dword ptr [ebp-4]
 005C63E4    cmp         byte ptr [eax+2BE],2;TCustomForm.FWindowState:TWindowState
>005C63EB    jne         005C6423
 005C63ED    push        0
 005C63EF    mov         eax,dword ptr [ebp-4]
 005C63F2    call        TWinControl.GetHandle
 005C63F7    push        eax
 005C63F8    push        223
 005C63FD    mov         eax,[007CA7C8];Application:TApplication
 005C6402    mov         eax,dword ptr [eax+58]
 005C6405    mov         eax,dword ptr [eax+3B4]
 005C640B    push        eax
 005C640C    call        user32.SendMessageW
 005C6411    push        3
 005C6413    mov         eax,dword ptr [ebp-4]
 005C6416    call        TWinControl.GetHandle
 005C641B    push        eax
 005C641C    call        user32.ShowWindow
>005C6421    jmp         005C6474
 005C6423    mov         eax,dword ptr [ebp-4]
 005C6426    movzx       eax,byte ptr [eax+2BE];TCustomForm.FWindowState:TWindowState
 005C642D    mov         eax,dword ptr [eax*4+7A1D34]
 005C6434    push        eax
 005C6435    mov         eax,dword ptr [ebp-4]
 005C6438    call        TWinControl.GetHandle
 005C643D    push        eax
 005C643E    call        user32.ShowWindow
 005C6443    mov         eax,dword ptr [ebp-4]
 005C6446    mov         eax,dword ptr [eax+58];TCustomForm.FWidth:Integer
 005C6449    mov         edx,dword ptr [ebp-4]
 005C644C    mov         edx,dword ptr [edx+5C];TCustomForm.FHeight:Integer
 005C644F    shl         edx,10
 005C6452    or          eax,edx
 005C6454    push        eax
 005C6455    push        0
 005C6457    push        5
 005C6459    mov         eax,dword ptr [ebp-4]
 005C645C    call        TWinControl.GetHandle
 005C6461    push        eax
 005C6462    push        410E90;user32.DefMDIChildProcW:IntPtr
 005C6467    call        user32.CallWindowProcW
 005C646C    mov         eax,dword ptr [ebp-4]
 005C646F    call        TControl.BringToFront
 005C6474    push        0
 005C6476    push        0
 005C6478    push        234
 005C647D    mov         eax,[007CA7C8];Application:TApplication
 005C6482    mov         eax,dword ptr [eax+58]
 005C6485    mov         eax,dword ptr [eax+3B4]
 005C648B    push        eax
 005C648C    call        user32.SendMessageW
>005C6491    jmp         005C65F5
 005C6496    mov         eax,dword ptr [ebp-4]
 005C6499    movzx       eax,byte ptr [eax+2BE];TCustomForm.FWindowState:TWindowState
 005C64A0    mov         eax,dword ptr [eax*4+7A1D34]
 005C64A7    push        eax
 005C64A8    mov         eax,dword ptr [ebp-4]
 005C64AB    call        TWinControl.GetHandle
 005C64B0    push        eax
 005C64B1    call        user32.ShowWindow
>005C64B6    jmp         005C65F5
 005C64BB    xor         eax,eax
 005C64BD    push        ebp
 005C64BE    push        5C64DF
 005C64C3    push        dword ptr fs:[eax]
 005C64C6    mov         dword ptr fs:[eax],esp
 005C64C9    mov         eax,dword ptr [ebp-4]
 005C64CC    mov         si,0FFA9
 005C64D0    call        @CallDynaInst;TCustomForm.sub_005C1828
 005C64D5    xor         eax,eax
 005C64D7    pop         edx
 005C64D8    pop         ecx
 005C64D9    pop         ecx
 005C64DA    mov         dword ptr fs:[eax],edx
>005C64DD    jmp         005C64F6
>005C64DF    jmp         @HandleAnyException
 005C64E4    mov         edx,dword ptr [ebp-4]
 005C64E7    mov         eax,[007CA7C8];Application:TApplication
 005C64EC    call        TApplication.HandleException
 005C64F1    call        @DoneExcept
 005C64F6    mov         eax,[007CA7CC];Screen:TScreen
 005C64FB    mov         eax,dword ptr [eax+74]
 005C64FE    cmp         eax,dword ptr [ebp-4]
>005C6501    jne         005C650D
 005C6503    xor         edx,edx
 005C6505    mov         eax,dword ptr [ebp-4]
 005C6508    call        005C4BA8
 005C650D    mov         eax,dword ptr [ebp-4]
 005C6510    cmp         byte ptr [eax+2C2],1;TCustomForm.FFormStyle:TFormStyle
>005C6517    jne         005C6529
 005C6519    mov         eax,dword ptr [ebp-4]
 005C651C    mov         edx,dword ptr [eax]
 005C651E    call        dword ptr [edx+0D8];TCustomForm.sub_005C4440
>005C6524    jmp         005C65F5
 005C6529    mov         eax,dword ptr [ebp-4]
 005C652C    test        byte ptr [eax+3BC],8;TCustomForm.FFormState:TFormState
>005C6533    je          005C6557
 005C6535    push        97
 005C653A    push        0
 005C653C    push        0
 005C653E    push        0
 005C6540    push        0
 005C6542    push        0
 005C6544    mov         eax,dword ptr [ebp-4]
 005C6547    call        TWinControl.GetHandle
 005C654C    push        eax
 005C654D    call        user32.SetWindowPos
>005C6552    jmp         005C65F5
 005C6557    xor         ebx,ebx
 005C6559    mov         eax,dword ptr [ebp-4]
 005C655C    call        TWinControl.GetHandle
 005C6561    mov         esi,eax
 005C6563    call        user32.GetActiveWindow
 005C6568    cmp         esi,eax
>005C656A    jne         005C658C
 005C656C    mov         eax,dword ptr [ebp-4]
 005C656F    call        TWinControl.GetHandle
 005C6574    call        005BE99C
 005C6579    test        eax,eax
>005C657B    jne         005C658C
 005C657D    mov         eax,dword ptr [ebp-4]
 005C6580    call        TWinControl.GetHandle
 005C6585    call        FindTopMostWindow
 005C658A    mov         ebx,eax
 005C658C    test        ebx,ebx
>005C658E    je          005C65B5
 005C6590    push        97
 005C6595    push        0
 005C6597    push        0
 005C6599    push        0
 005C659B    push        0
 005C659D    push        0
 005C659F    mov         eax,dword ptr [ebp-4]
 005C65A2    call        TWinControl.GetHandle
 005C65A7    push        eax
 005C65A8    call        user32.SetWindowPos
 005C65AD    push        ebx
 005C65AE    call        user32.SetActiveWindow
>005C65B3    jmp         005C65F5
 005C65B5    push        0
 005C65B7    mov         eax,dword ptr [ebp-4]
 005C65BA    call        TWinControl.GetHandle
 005C65BF    push        eax
 005C65C0    call        user32.ShowWindow
>005C65C5    jmp         005C65F5
 005C65C7    mov         eax,dword ptr [ebp-4]
 005C65CA    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005C65CE    je          005C65F5
 005C65D0    mov         eax,dword ptr [ebp-4]
 005C65D3    cmp         dword ptr [eax+40],0;TCustomForm.FParent:TWinControl
>005C65D7    je          005C65F5
 005C65D9    mov         eax,dword ptr [ebp-4]
 005C65DC    cmp         byte ptr [eax+205],0;TCustomForm.FShowing:Boolean
>005C65E3    je          005C65F5
 005C65E5    push        1
 005C65E7    mov         eax,dword ptr [ebp-4]
 005C65EA    call        TWinControl.GetHandle
 005C65EF    push        eax
 005C65F0    call        user32.ShowWindow
 005C65F5    xor         eax,eax
 005C65F7    pop         edx
 005C65F8    pop         ecx
 005C65F9    pop         ecx
 005C65FA    mov         dword ptr fs:[eax],edx
 005C65FD    push        5C6614
 005C6602    mov         eax,dword ptr [ebp-4]
 005C6605    and         byte ptr [eax+3BC],0FB;TCustomForm.FFormState:TFormState
 005C660C    ret
>005C660D    jmp         @HandleFinally
>005C6612    jmp         005C6602
 005C6614    xor         eax,eax
 005C6616    pop         edx
 005C6617    pop         ecx
 005C6618    pop         ecx
 005C6619    mov         dword ptr fs:[eax],edx
 005C661C    push        5C6631
 005C6621    lea         eax,[ebp-18]
 005C6624    call        @UStrClr
 005C6629    ret
>005C662A    jmp         @HandleFinally
>005C662F    jmp         005C6621
 005C6631    pop         edi
 005C6632    pop         esi
 005C6633    pop         ebx
 005C6634    mov         esp,ebp
 005C6636    pop         ebp
 005C6637    ret
*}
end;

//005C6638
procedure TCustomForm.CMIconChanged;
begin
{*
 005C6638    push        ebx
 005C6639    mov         ebx,eax
 005C663B    mov         eax,dword ptr [ebx+2D0];TCustomForm.FIcon:TIcon
 005C6641    call        TIcon.GetHandle
 005C6646    test        eax,eax
>005C6648    jne         005C6653
 005C664A    xor         edx,edx
 005C664C    mov         eax,ebx
 005C664E    call        005C1740
 005C6653    pop         ebx
 005C6654    ret
*}
end;

//005C6658
procedure TCustomForm.CMRelease;
begin
{*
 005C6658    call        TObject.Free
 005C665D    ret
*}
end;

//005C6660
procedure TCustomForm.CMTextChanged;
begin
{*
 005C6660    push        ebx
 005C6661    mov         ebx,eax
 005C6663    mov         eax,ebx
 005C6665    call        TWinControl.CMTextChanged
 005C666A    cmp         byte ptr [ebx+2C2],1;TCustomForm.FFormStyle:TFormStyle
>005C6671    jne         005C66AC
 005C6673    mov         eax,[007CA7C8];Application:TApplication
 005C6678    cmp         dword ptr [eax+58],0
>005C667C    je          005C66AC
 005C667E    mov         eax,[007CA7C8];Application:TApplication
 005C6683    mov         eax,dword ptr [eax+58]
 005C6686    cmp         dword ptr [eax+3B4],0
>005C668D    je          005C66AC
 005C668F    push        0
 005C6691    push        0
 005C6693    push        234
 005C6698    mov         eax,[007CA7C8];Application:TApplication
 005C669D    mov         eax,dword ptr [eax+58]
 005C66A0    mov         eax,dword ptr [eax+3B4]
 005C66A6    push        eax
 005C66A7    call        user32.SendMessageW
 005C66AC    pop         ebx
 005C66AD    ret
*}
end;

//005C66B0
procedure TCustomForm.CMUIActivate;
begin
{*
 005C66B0    mov         ecx,dword ptr [eax]
 005C66B2    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 005C66B5    ret
*}
end;

//005C66B8
{*procedure TCustomForm.CMParentFontChanged(?:?);
begin
 005C66B8    push        ebx
 005C66B9    mov         ebx,eax
 005C66BB    cmp         byte ptr [ebx+6B],0;TCustomForm.FParentFont:Boolean
>005C66BF    je          005C66ED
 005C66C1    cmp         dword ptr [edx+4],0
>005C66C5    je          005C66D4
 005C66C7    mov         edx,dword ptr [edx+8]
 005C66CA    mov         eax,dword ptr [ebx+74];TCustomForm.FFont:TFont
 005C66CD    mov         ecx,dword ptr [eax]
 005C66CF    call        dword ptr [ecx+8];TFont.Assign
>005C66D2    jmp         005C66ED
 005C66D4    mov         eax,[007CA7C8];Application:TApplication
 005C66D9    mov         edx,dword ptr [eax+54]
 005C66DC    mov         eax,dword ptr [ebx+74];TCustomForm.FFont:TFont
 005C66DF    mov         ecx,dword ptr [eax]
 005C66E1    call        dword ptr [ecx+8];TFont.Assign
 005C66E4    mov         dl,1
 005C66E6    mov         eax,ebx
 005C66E8    call        TGroupBox.SetParentFont
 005C66ED    pop         ebx
 005C66EE    ret
end;*}

//005C66F0
{*procedure TCustomForm.CMDockNotification(?:?);
begin
 005C66F0    push        ebx
 005C66F1    push        esi
 005C66F2    push        edi
 005C66F3    mov         ebx,edx
 005C66F5    mov         edi,eax
 005C66F7    mov         edx,ebx
 005C66F9    mov         eax,edi
 005C66FB    mov         si,0FFA1
 005C66FF    call        @CallDynaInst;TCustomForm.sub_005C7140
 005C6704    test        al,al
>005C6706    je          005C6711
 005C6708    mov         dword ptr [ebx+0C],1
>005C670F    jmp         005C6716
 005C6711    xor         eax,eax
 005C6713    mov         dword ptr [ebx+0C],eax
 005C6716    pop         edi
 005C6717    pop         esi
 005C6718    pop         ebx
 005C6719    ret
end;*}

//005C671C
procedure TCustomForm.CMRawX11Event;
begin
{*
 005C671C    push        esi
 005C671D    mov         esi,eax
 005C671F    mov         eax,esi
 005C6721    mov         edx,dword ptr [eax]
 005C6723    call        dword ptr [edx+12C];TCustomForm.sub_005C6DA0
 005C6729    pop         esi
 005C672A    ret
*}
end;

//005C672C
procedure TCustomForm.Close;
begin
{*
 005C672C    push        ebx
 005C672D    push        esi
 005C672E    push        ecx
 005C672F    mov         ebx,eax
 005C6731    test        byte ptr [ebx+3BC],8
>005C6738    je          005C6749
 005C673A    mov         dword ptr [ebx+2DC],2
>005C6744    jmp         005C67C9
 005C6749    mov         eax,ebx
 005C674B    mov         edx,dword ptr [eax]
 005C674D    call        dword ptr [edx+134]
 005C6753    test        al,al
>005C6755    je          005C67C9
 005C6757    cmp         byte ptr [ebx+2C2],1
>005C675E    jne         005C6775
 005C6760    test        byte ptr [ebx+2BC],2
>005C6767    je          005C676F
 005C6769    mov         byte ptr [esp],3
>005C676D    jmp         005C6779
 005C676F    mov         byte ptr [esp],0
>005C6773    jmp         005C6779
 005C6775    mov         byte ptr [esp],1
 005C6779    mov         edx,esp
 005C677B    mov         eax,ebx
 005C677D    mov         si,0FFAA
 005C6781    call        @CallDynaInst
 005C6786    cmp         byte ptr [esp],0
>005C678A    je          005C67C9
 005C678C    mov         eax,[007CA7C8];Application:TApplication
 005C6791    cmp         ebx,dword ptr [eax+58]
>005C6794    jne         005C67A2
 005C6796    mov         eax,[007CA7C8];Application:TApplication
 005C679B    call        TApplication.Terminate
>005C67A0    jmp         005C67C9
 005C67A2    cmp         byte ptr [esp],1
>005C67A6    jne         005C67B1
 005C67A8    mov         eax,ebx
 005C67AA    call        TCustomForm.Hide
>005C67AF    jmp         005C67C9
 005C67B1    cmp         byte ptr [esp],3
>005C67B5    jne         005C67C2
 005C67B7    mov         dl,1
 005C67B9    mov         eax,ebx
 005C67BB    call        TForm.SetWindowState
>005C67C0    jmp         005C67C9
 005C67C2    mov         eax,ebx
 005C67C4    call        TCustomForm.Release
 005C67C9    pop         edx
 005C67CA    pop         esi
 005C67CB    pop         ebx
 005C67CC    ret
*}
end;

//005C67D0
function TCustomForm.CloseQuery:Boolean;
begin
{*
 005C67D0    push        ebx
 005C67D1    push        esi
 005C67D2    push        edi
 005C67D3    push        ecx
 005C67D4    mov         ebx,eax
 005C67D6    cmp         byte ptr [ebx+2C2],2;TCustomForm.FFormStyle:TFormStyle
>005C67DD    jne         005C680D
 005C67DF    mov         byte ptr [esp],0
 005C67E3    mov         eax,ebx
 005C67E5    call        005C2D64
 005C67EA    mov         esi,eax
 005C67EC    dec         esi
 005C67ED    test        esi,esi
>005C67EF    jl          005C680D
 005C67F1    inc         esi
 005C67F2    xor         edi,edi
 005C67F4    mov         edx,edi
 005C67F6    mov         eax,ebx
 005C67F8    call        TForm.get_MDIChildren
 005C67FD    mov         edx,dword ptr [eax]
 005C67FF    call        dword ptr [edx+134];TCustomForm.CloseQuery
 005C6805    test        al,al
>005C6807    je          005C682B
 005C6809    inc         edi
 005C680A    dec         esi
>005C680B    jne         005C67F4
 005C680D    mov         byte ptr [esp],1
 005C6811    cmp         word ptr [ebx+332],0;TCustomForm.?f332:word
>005C6819    je          005C682B
 005C681B    mov         ecx,esp
 005C681D    mov         edx,ebx
 005C681F    mov         eax,dword ptr [ebx+334];TCustomForm.?f334:dword
 005C6825    call        dword ptr [ebx+330];TCustomForm.FOnCloseQuery
 005C682B    movzx       eax,byte ptr [esp]
 005C682F    pop         edx
 005C6830    pop         edi
 005C6831    pop         esi
 005C6832    pop         ebx
 005C6833    ret
*}
end;

//005C6834
procedure sub_005C6834(?:TCustomForm);
begin
{*
 005C6834    push        ebp
 005C6835    mov         ebp,esp
 005C6837    add         esp,0FFFFFFF8
 005C683A    push        ebx
 005C683B    push        esi
 005C683C    push        edi
 005C683D    mov         dword ptr [ebp-4],eax
 005C6840    xor         eax,eax
 005C6842    push        ebp
 005C6843    push        5C68A1
 005C6848    push        dword ptr fs:[eax]
 005C684B    mov         dword ptr fs:[eax],esp
 005C684E    mov         byte ptr [ebp-5],0
 005C6852    mov         eax,dword ptr [ebp-4]
 005C6855    mov         edx,dword ptr [eax]
 005C6857    call        dword ptr [edx+134]
 005C685D    test        al,al
>005C685F    je          005C6874
 005C6861    mov         byte ptr [ebp-5],1
 005C6865    lea         edx,[ebp-5]
 005C6868    mov         eax,dword ptr [ebp-4]
 005C686B    mov         si,0FFAA
 005C686F    call        @CallDynaInst
 005C6874    movzx       eax,byte ptr [ebp-5]
 005C6878    sub         al,1
>005C687A    jb          005C6882
 005C687C    dec         al
>005C687E    je          005C688F
>005C6880    jmp         005C6897
 005C6882    mov         eax,dword ptr [ebp-4]
 005C6885    xor         edx,edx
 005C6887    mov         dword ptr [eax+2DC],edx
>005C688D    jmp         005C6897
 005C688F    mov         eax,dword ptr [ebp-4]
 005C6892    call        TCustomForm.Release
 005C6897    xor         eax,eax
 005C6899    pop         edx
 005C689A    pop         ecx
 005C689B    pop         ecx
 005C689C    mov         dword ptr fs:[eax],edx
>005C689F    jmp         005C68C3
>005C68A1    jmp         @HandleAnyException
 005C68A6    mov         eax,dword ptr [ebp-4]
 005C68A9    xor         edx,edx
 005C68AB    mov         dword ptr [eax+2DC],edx
 005C68B1    mov         edx,dword ptr [ebp-4]
 005C68B4    mov         eax,[007CA7C8];Application:TApplication
 005C68B9    call        TApplication.HandleException
 005C68BE    call        @DoneExcept
 005C68C3    pop         edi
 005C68C4    pop         esi
 005C68C5    pop         ebx
 005C68C6    pop         ecx
 005C68C7    pop         ecx
 005C68C8    pop         ebp
 005C68C9    ret
*}
end;

//005C68CC
procedure TCustomForm.Hide;
begin
{*
 005C68CC    xor         edx,edx
 005C68CE    call        TForm.SetVisible
 005C68D3    ret
*}
end;

//005C68D4
procedure TCustomForm.Show;
begin
{*
 005C68D4    push        ebx
 005C68D5    mov         ebx,eax
 005C68D7    mov         dl,1
 005C68D9    mov         eax,ebx
 005C68DB    call        TForm.SetVisible
 005C68E0    mov         eax,ebx
 005C68E2    call        TControl.BringToFront
 005C68E7    pop         ebx
 005C68E8    ret
*}
end;

//005C68EC
procedure TCustomForm.SetFocus;
begin
{*
 005C68EC    push        ebp
 005C68ED    mov         ebp,esp
 005C68EF    push        0
 005C68F1    push        ebx
 005C68F2    mov         ebx,eax
 005C68F4    xor         eax,eax
 005C68F6    push        ebp
 005C68F7    push        5C696B
 005C68FC    push        dword ptr fs:[eax]
 005C68FF    mov         dword ptr fs:[eax],esp
 005C6902    cmp         byte ptr [ebx+2C1],0;TCustomForm.FActive:Boolean
>005C6909    jne         005C6955
 005C690B    cmp         byte ptr [ebx+69],0;TCustomForm.FVisible:Boolean
>005C690F    je          005C691C
 005C6911    mov         eax,ebx
 005C6913    mov         edx,dword ptr [eax]
 005C6915    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 005C6918    test        al,al
>005C691A    jne         005C694E
 005C691C    test        byte ptr [ebx+1C],10;TCustomForm.FComponentState:TComponentState
>005C6920    je          005C692D
 005C6922    mov         eax,ebx
 005C6924    call        TWinControl.HandleAllocated
 005C6929    test        al,al
>005C692B    jne         005C694E
 005C692D    lea         edx,[ebp-4]
 005C6930    mov         eax,[007C4CB0];^SResString230:TResStringRec
 005C6935    call        LoadResString
 005C693A    mov         ecx,dword ptr [ebp-4]
 005C693D    mov         dl,1
 005C693F    mov         eax,[0046BE9C];EInvalidOperation
 005C6944    call        Exception.Create;EInvalidOperation.Create
 005C6949    call        @RaiseExcept
 005C694E    mov         eax,ebx
 005C6950    call        005C4A68
 005C6955    xor         eax,eax
 005C6957    pop         edx
 005C6958    pop         ecx
 005C6959    pop         ecx
 005C695A    mov         dword ptr fs:[eax],edx
 005C695D    push        5C6972
 005C6962    lea         eax,[ebp-4]
 005C6965    call        @UStrClr
 005C696A    ret
>005C696B    jmp         @HandleFinally
>005C6970    jmp         005C6962
 005C6972    pop         ebx
 005C6973    pop         ecx
 005C6974    pop         ebp
 005C6975    ret
*}
end;

//005C6978
procedure TCustomForm.RecreateAsPopup(AWindowHandle:HWND);
begin
{*
 005C6978    push        ebx
 005C6979    mov         ebx,eax
 005C697B    mov         dword ptr [ebx+394],edx;TCustomForm.FInternalPopupParentWnd:HWND
 005C6981    xor         eax,eax
 005C6983    mov         dword ptr [ebx+390],eax;TCustomForm.FInternalPopupParent:TCustomForm
 005C6989    mov         eax,ebx
 005C698B    call        TWinControl.HandleAllocated
 005C6990    test        al,al
>005C6992    je          005C699D
 005C6994    mov         eax,ebx
 005C6996    call        TWinControl.RecreateWnd
 005C699B    pop         ebx
 005C699C    ret
 005C699D    mov         eax,ebx
 005C699F    call        TWinControl.UpdateControlState
 005C69A4    pop         ebx
 005C69A5    ret
*}
end;

//005C69A8
procedure TCustomForm.Release;
begin
{*
 005C69A8    push        ebx
 005C69A9    mov         ebx,eax
 005C69AB    push        0
 005C69AD    push        0
 005C69AF    push        0B021
 005C69B4    mov         eax,ebx
 005C69B6    call        TWinControl.GetHandle
 005C69BB    push        eax
 005C69BC    call        user32.PostMessageW
 005C69C1    pop         ebx
 005C69C2    ret
*}
end;

//005C69C4
function TCustomForm.ShowModal:Integer;
begin
{*
 005C69C4    push        ebp
 005C69C5    mov         ebp,esp
 005C69C7    add         esp,0FFFFFFE0
 005C69CA    push        ebx
 005C69CB    xor         edx,edx
 005C69CD    mov         dword ptr [ebp-20],edx
 005C69D0    mov         dword ptr [ebp-4],eax
 005C69D3    xor         eax,eax
 005C69D5    push        ebp
 005C69D6    push        5C6D0D
 005C69DB    push        dword ptr fs:[eax]
 005C69DE    mov         dword ptr fs:[eax],esp
 005C69E1    call        CancelDrag
 005C69E6    mov         eax,dword ptr [ebp-4]
 005C69E9    cmp         byte ptr [eax+69],0;TCustomForm.FVisible:Boolean
>005C69ED    jne         005C6A13
 005C69EF    mov         eax,dword ptr [ebp-4]
 005C69F2    mov         edx,dword ptr [eax]
 005C69F4    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 005C69F7    test        al,al
>005C69F9    je          005C6A13
 005C69FB    mov         eax,dword ptr [ebp-4]
 005C69FE    test        byte ptr [eax+3BC],8;TCustomForm.FFormState:TFormState
>005C6A05    jne         005C6A13
 005C6A07    mov         eax,dword ptr [ebp-4]
 005C6A0A    cmp         byte ptr [eax+2C2],1;TCustomForm.FFormStyle:TFormStyle
>005C6A11    jne         005C6A34
 005C6A13    lea         edx,[ebp-20]
 005C6A16    mov         eax,[007C47BC];^SResString235:TResStringRec
 005C6A1B    call        LoadResString
 005C6A20    mov         ecx,dword ptr [ebp-20]
 005C6A23    mov         dl,1
 005C6A25    mov         eax,[0046BE9C];EInvalidOperation
 005C6A2A    call        Exception.Create;EInvalidOperation.Create
 005C6A2F    call        @RaiseExcept
 005C6A34    call        user32.GetCapture
 005C6A39    test        eax,eax
>005C6A3B    je          005C6A4E
 005C6A3D    push        0
 005C6A3F    push        0
 005C6A41    push        1F
 005C6A43    call        user32.GetCapture
 005C6A48    push        eax
 005C6A49    call        user32.SendMessageW
 005C6A4E    call        user32.ReleaseCapture
 005C6A53    mov         eax,[007CA7C8];Application:TApplication
 005C6A58    call        TApplication.ModalStarted
 005C6A5D    xor         ecx,ecx
 005C6A5F    push        ebp
 005C6A60    push        5C6CF0
 005C6A65    push        dword ptr fs:[ecx]
 005C6A68    mov         dword ptr fs:[ecx],esp
 005C6A6B    call        user32.GetActiveWindow
 005C6A70    mov         dword ptr [ebp-1C],eax
 005C6A73    mov         eax,dword ptr [ebp-4]
 005C6A76    or          byte ptr [eax+3BC],8;TCustomForm.FFormState:TFormState
 005C6A7D    mov         eax,dword ptr [ebp-4]
 005C6A80    cmp         byte ptr [eax+380],0;TCustomForm.FPopupMode:TPopupMode
>005C6A87    jne         005C6AC2
 005C6A89    mov         eax,[007CA7C8];Application:TApplication
 005C6A8E    cmp         byte ptr [eax+0E8],0
>005C6A95    je          005C6AC2
 005C6A97    mov         eax,dword ptr [ebp-4]
 005C6A9A    call        TWinControl.RecreateWnd
 005C6A9F    mov         eax,dword ptr [ebp-4]
 005C6AA2    call        TWinControl.HandleNeeded
 005C6AA7    cmp         dword ptr [ebp-1C],0
>005C6AAB    je          005C6ABA
 005C6AAD    mov         eax,dword ptr [ebp-1C]
 005C6AB0    push        eax
 005C6AB1    call        user32.IsWindow
 005C6AB6    test        eax,eax
>005C6AB8    jne         005C6AC2
 005C6ABA    call        user32.GetActiveWindow
 005C6ABF    mov         dword ptr [ebp-1C],eax
 005C6AC2    call        005BE9C0
 005C6AC7    mov         dword ptr [ebp-10],eax
 005C6ACA    mov         eax,[007CA7CC];Screen:TScreen
 005C6ACF    mov         ecx,dword ptr [eax+80]
 005C6AD5    mov         eax,[007CA7CC];Screen:TScreen
 005C6ADA    mov         eax,dword ptr [eax+84]
 005C6AE0    xor         edx,edx
 005C6AE2    call        TList.Insert
 005C6AE7    mov         eax,[007CA7CC];Screen:TScreen
 005C6AEC    mov         edx,dword ptr [ebp-4]
 005C6AEF    mov         dword ptr [eax+80],edx
 005C6AF5    mov         eax,[007CA7CC];Screen:TScreen
 005C6AFA    movzx       eax,word ptr [eax+54]
 005C6AFE    mov         word ptr [ebp-12],ax
 005C6B02    xor         edx,edx
 005C6B04    mov         eax,[007CA7CC];Screen:TScreen
 005C6B09    call        005C86F0
 005C6B0E    mov         eax,[007CA7CC];Screen:TScreen
 005C6B13    mov         eax,dword ptr [eax+58]
 005C6B16    mov         dword ptr [ebp-18],eax
 005C6B19    xor         eax,eax
 005C6B1B    call        DisableTaskWindows
 005C6B20    mov         dword ptr [ebp-0C],eax
 005C6B23    xor         ecx,ecx
 005C6B25    push        ebp
 005C6B26    push        5C6CCE
 005C6B2B    push        dword ptr fs:[ecx]
 005C6B2E    mov         dword ptr fs:[ecx],esp
 005C6B31    mov         eax,dword ptr [ebp-4]
 005C6B34    call        TCustomForm.Show
 005C6B39    xor         edx,edx
 005C6B3B    push        ebp
 005C6B3C    push        5C6BF9
 005C6B41    push        dword ptr fs:[edx]
 005C6B44    mov         dword ptr fs:[edx],esp
 005C6B47    push        0
 005C6B49    push        0
 005C6B4B    push        0B000
 005C6B50    mov         eax,dword ptr [ebp-4]
 005C6B53    call        TWinControl.GetHandle
 005C6B58    push        eax
 005C6B59    call        user32.SendMessageW
 005C6B5E    mov         eax,dword ptr [ebp-4]
 005C6B61    xor         edx,edx
 005C6B63    mov         dword ptr [eax+2DC],edx;TCustomForm.FModalResult:TModalResult
 005C6B69    mov         eax,[007CA7C8];Application:TApplication
 005C6B6E    call        TApplication.HandleMessage
 005C6B73    mov         eax,[007CA7C8];Application:TApplication
 005C6B78    cmp         byte ptr [eax+0BC],0
>005C6B7F    je          005C6B90
 005C6B81    mov         eax,dword ptr [ebp-4]
 005C6B84    mov         dword ptr [eax+2DC],2;TCustomForm.FModalResult:TModalResult
>005C6B8E    jmp         005C6BA4
 005C6B90    mov         eax,dword ptr [ebp-4]
 005C6B93    cmp         dword ptr [eax+2DC],0;TCustomForm.FModalResult:TModalResult
>005C6B9A    je          005C6BA4
 005C6B9C    mov         eax,dword ptr [ebp-4]
 005C6B9F    call        005C6834
 005C6BA4    mov         eax,dword ptr [ebp-4]
 005C6BA7    mov         eax,dword ptr [eax+2DC];TCustomForm.FModalResult:TModalResult
 005C6BAD    test        eax,eax
>005C6BAF    je          005C6B69
 005C6BB1    mov         dword ptr [ebp-8],eax
 005C6BB4    push        0
 005C6BB6    push        0
 005C6BB8    push        0B001
 005C6BBD    mov         eax,dword ptr [ebp-4]
 005C6BC0    call        TWinControl.GetHandle
 005C6BC5    push        eax
 005C6BC6    call        user32.SendMessageW
 005C6BCB    mov         eax,dword ptr [ebp-4]
 005C6BCE    call        TWinControl.GetHandle
 005C6BD3    mov         ebx,eax
 005C6BD5    call        user32.GetActiveWindow
 005C6BDA    cmp         ebx,eax
>005C6BDC    je          005C6BE3
 005C6BDE    xor         eax,eax
 005C6BE0    mov         dword ptr [ebp-1C],eax
 005C6BE3    xor         eax,eax
 005C6BE5    pop         edx
 005C6BE6    pop         ecx
 005C6BE7    pop         ecx
 005C6BE8    mov         dword ptr fs:[eax],edx
 005C6BEB    push        5C6C00
 005C6BF0    mov         eax,dword ptr [ebp-4]
 005C6BF3    call        TCustomForm.Hide
 005C6BF8    ret
>005C6BF9    jmp         @HandleFinally
>005C6BFE    jmp         005C6BF0
 005C6C00    xor         eax,eax
 005C6C02    pop         edx
 005C6C03    pop         ecx
 005C6C04    pop         ecx
 005C6C05    mov         dword ptr fs:[eax],edx
 005C6C08    push        5C6CD8
 005C6C0D    mov         eax,[007CA7CC];Screen:TScreen
 005C6C12    mov         eax,dword ptr [eax+58]
 005C6C15    cmp         eax,dword ptr [ebp-18]
>005C6C18    jne         005C6C2A
 005C6C1A    movzx       edx,word ptr [ebp-12]
 005C6C1E    mov         eax,[007CA7CC];Screen:TScreen
 005C6C23    call        005C86F0
>005C6C28    jmp         005C6C36
 005C6C2A    xor         edx,edx
 005C6C2C    mov         eax,[007CA7CC];Screen:TScreen
 005C6C31    call        005C86F0
 005C6C36    mov         eax,dword ptr [ebp-0C]
 005C6C39    call        EnableTaskWindows
 005C6C3E    mov         eax,[007CA7CC];Screen:TScreen
 005C6C43    mov         eax,dword ptr [eax+84]
 005C6C49    cmp         dword ptr [eax+8],0
>005C6C4D    jle         005C6C82
 005C6C4F    xor         edx,edx
 005C6C51    call        TList.Get
 005C6C56    mov         edx,dword ptr ds:[7CA7CC];Screen:TScreen
 005C6C5C    mov         dword ptr [edx+80],eax
 005C6C62    mov         eax,[007CA7CC];Screen:TScreen
 005C6C67    mov         eax,dword ptr [eax+84]
 005C6C6D    mov         edx,dword ptr ds:[7CA7CC];Screen:TScreen
 005C6C73    mov         edx,dword ptr [edx+80]
 005C6C79    xor         ecx,ecx
 005C6C7B    call        TList.RemoveItem
>005C6C80    jmp         005C6C8F
 005C6C82    mov         eax,[007CA7CC];Screen:TScreen
 005C6C87    xor         edx,edx
 005C6C89    mov         dword ptr [eax+80],edx
 005C6C8F    cmp         dword ptr [ebp-1C],0
>005C6C93    je          005C6CAC
 005C6C95    mov         eax,dword ptr [ebp-1C]
 005C6C98    push        eax
 005C6C99    call        user32.IsWindow
 005C6C9E    test        eax,eax
>005C6CA0    jne         005C6CAC
 005C6CA2    xor         eax,eax
 005C6CA4    call        FindTopMostWindow
 005C6CA9    mov         dword ptr [ebp-1C],eax
 005C6CAC    cmp         dword ptr [ebp-1C],0
>005C6CB0    je          005C6CBB
 005C6CB2    mov         eax,dword ptr [ebp-1C]
 005C6CB5    push        eax
 005C6CB6    call        user32.SetActiveWindow
 005C6CBB    mov         eax,dword ptr [ebp-10]
 005C6CBE    call        005BE9C8
 005C6CC3    mov         eax,dword ptr [ebp-4]
 005C6CC6    and         byte ptr [eax+3BC],0F7;TCustomForm.FFormState:TFormState
 005C6CCD    ret
>005C6CCE    jmp         @HandleFinally
>005C6CD3    jmp         005C6C0D
 005C6CD8    xor         eax,eax
 005C6CDA    pop         edx
 005C6CDB    pop         ecx
 005C6CDC    pop         ecx
 005C6CDD    mov         dword ptr fs:[eax],edx
 005C6CE0    push        5C6CF7
 005C6CE5    mov         eax,[007CA7C8];Application:TApplication
 005C6CEA    call        TApplication.ModalFinished
 005C6CEF    ret
>005C6CF0    jmp         @HandleFinally
>005C6CF5    jmp         005C6CE5
 005C6CF7    xor         eax,eax
 005C6CF9    pop         edx
 005C6CFA    pop         ecx
 005C6CFB    pop         ecx
 005C6CFC    mov         dword ptr fs:[eax],edx
 005C6CFF    push        5C6D14
 005C6D04    lea         eax,[ebp-20]
 005C6D07    call        @UStrClr
 005C6D0C    ret
>005C6D0D    jmp         @HandleFinally
>005C6D12    jmp         005C6D04
 005C6D14    mov         eax,dword ptr [ebp-8]
 005C6D17    pop         ebx
 005C6D18    mov         esp,ebp
 005C6D1A    pop         ebp
 005C6D1B    ret
*}
end;

//005C6D1C
{*procedure sub_005C6D1C(?:TControl; ?:?);
begin
 005C6D1C    push        ebp
 005C6D1D    mov         ebp,esp
 005C6D1F    push        ecx
 005C6D20    push        ebx
 005C6D21    push        esi
 005C6D22    push        edi
 005C6D23    mov         edi,eax
 005C6D25    cmp         byte ptr [edi+205],0
>005C6D2C    je          005C6D9A
 005C6D2E    test        byte ptr [edi+1C],10
>005C6D32    jne         005C6D9A
 005C6D34    mov         eax,edi
 005C6D36    call        TWinControl.GetControlCount
 005C6D3B    mov         esi,eax
 005C6D3D    dec         esi
 005C6D3E    test        esi,esi
>005C6D40    jl          005C6D9A
 005C6D42    inc         esi
 005C6D43    mov         dword ptr [ebp-4],0
 005C6D4A    mov         edx,dword ptr [ebp-4]
 005C6D4D    mov         eax,edi
 005C6D4F    call        TWinControl.GetControl
 005C6D54    mov         ebx,eax
 005C6D56    test        byte ptr [ebx+61],80;TControl.FVisible:Boolean
>005C6D5A    je          005C6D6C
 005C6D5C    cmp         byte ptr [ebx+69],0;TControl.FVisible:Boolean
>005C6D60    je          005C6D6C
 005C6D62    mov         eax,ebx
 005C6D64    mov         edx,dword ptr [eax]
 005C6D66    call        dword ptr [edx+0A4];TControl.InitiateAction
 005C6D6C    mov         eax,ebx
 005C6D6E    mov         edx,dword ptr ds:[4DE8CC];TWinControl
 005C6D74    call        @IsClass
 005C6D79    test        al,al
>005C6D7B    je          005C6D94
 005C6D7D    mov         eax,ebx
 005C6D7F    call        TWinControl.GetControlCount
 005C6D84    test        eax,eax
>005C6D86    jle         005C6D94
 005C6D88    mov         eax,dword ptr [ebp+8]
 005C6D8B    push        eax
 005C6D8C    mov         eax,ebx
 005C6D8E    call        005C6D1C
 005C6D93    pop         ecx
 005C6D94    inc         dword ptr [ebp-4]
 005C6D97    dec         esi
>005C6D98    jne         005C6D4A
 005C6D9A    pop         edi
 005C6D9B    pop         esi
 005C6D9C    pop         ebx
 005C6D9D    pop         ecx
 005C6D9E    pop         ebp
 005C6D9F    ret
end;*}

//005C6DA0
procedure sub_005C6DA0;
begin
{*
 005C6DA0    push        ebp
 005C6DA1    mov         ebp,esp
 005C6DA3    push        ebx
 005C6DA4    push        esi
 005C6DA5    push        edi
 005C6DA6    push        ecx
 005C6DA7    mov         esi,eax
 005C6DA9    test        byte ptr [esi+1C],10;TCustomForm.FComponentState:TComponentState
>005C6DAD    jne         005C6E12
 005C6DAF    cmp         byte ptr [esi+205],0;TCustomForm.FShowing:Boolean
>005C6DB6    je          005C6E12
 005C6DB8    mov         eax,esi
 005C6DBA    mov         edx,dword ptr [eax]
 005C6DBC    call        dword ptr [edx+0A4];TControl.InitiateAction
 005C6DC2    mov         ebx,dword ptr [esi+2D8];TCustomForm.FMenu:TMainMenu
 005C6DC8    test        ebx,ebx
>005C6DCA    je          005C6E09
 005C6DCC    mov         eax,dword ptr [ebx+44];TMainMenu.FItems:TMenuItem
 005C6DCF    call        TMenuItem.GetCount
 005C6DD4    mov         ebp,eax
 005C6DD6    dec         ebp
 005C6DD7    test        ebp,ebp
>005C6DD9    jl          005C6E09
 005C6DDB    inc         ebp
 005C6DDC    mov         dword ptr [esp],0
 005C6DE3    mov         eax,dword ptr [esi+2D8];TCustomForm.FMenu:TMainMenu
 005C6DE9    mov         eax,dword ptr [eax+44];TMainMenu.FItems:TMenuItem
 005C6DEC    mov         edx,dword ptr [esp]
 005C6DEF    call        TMenuItem.GetItem
 005C6DF4    mov         edi,eax
 005C6DF6    cmp         byte ptr [edi+4A],0;TMenuItem.FVisible:Boolean
>005C6DFA    je          005C6E03
 005C6DFC    mov         eax,edi
 005C6DFE    mov         edx,dword ptr [eax]
 005C6E00    call        dword ptr [edx+54];TMenuItem.InitiateAction
 005C6E03    inc         dword ptr [esp]
 005C6E06    dec         ebp
>005C6E07    jne         005C6DE3
 005C6E09    push        ebp
 005C6E0A    mov         eax,esi
 005C6E0C    call        005C6D1C
 005C6E11    pop         ecx
 005C6E12    pop         edx
 005C6E13    pop         edi
 005C6E14    pop         esi
 005C6E15    pop         ebx
 005C6E16    pop         ebp
 005C6E17    ret
*}
end;

//005C6E18
procedure sub_005C6E18(?:TCustomForm);
begin
{*
 005C6E18    push        ebx
 005C6E19    add         esp,0FFFFFFD4
 005C6E1C    mov         ebx,eax
 005C6E1E    mov         eax,ebx
 005C6E20    call        TWinControl.HandleAllocated
 005C6E25    test        al,al
>005C6E27    je          005C6E65
 005C6E29    mov         dword ptr [esp],2C
 005C6E30    push        esp
 005C6E31    mov         eax,ebx
 005C6E33    call        TWinControl.GetHandle
 005C6E38    push        eax
 005C6E39    call        user32.GetWindowPlacement
 005C6E3E    mov         eax,dword ptr [esp+8]
 005C6E42    sub         eax,2
>005C6E45    je          005C6E4C
 005C6E47    dec         eax
>005C6E48    je          005C6E55
>005C6E4A    jmp         005C6E5E
 005C6E4C    mov         byte ptr [ebx+2BE],1;TCustomForm.FWindowState:TWindowState
>005C6E53    jmp         005C6E65
 005C6E55    mov         byte ptr [ebx+2BE],2;TCustomForm.FWindowState:TWindowState
>005C6E5C    jmp         005C6E65
 005C6E5E    mov         byte ptr [ebx+2BE],0;TCustomForm.FWindowState:TWindowState
 005C6E65    add         esp,2C
 005C6E68    pop         ebx
 005C6E69    ret
*}
end;

//005C6E6C
procedure sub_005C6E6C;
begin
{*
 005C6E6C    cmp         dword ptr [eax+40],0;TCustomForm.FParent:TWinControl
>005C6E70    jne         005C6E7F
 005C6E72    mov         edx,eax
 005C6E74    mov         eax,[007CA7CC];Screen:TScreen
 005C6E79    call        005C8E8C
 005C6E7E    ret
 005C6E7F    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005C6E83    jne         005C6E8A
 005C6E85    call        004EE248
 005C6E8A    ret
*}
end;

//005C6E8C
procedure TCustomForm.WMSettingChange(Message:Messages.TMessage);
begin
{*
 005C6E8C    push        ebx
 005C6E8D    push        esi
 005C6E8E    mov         ebx,edx
 005C6E90    mov         esi,eax
 005C6E92    mov         edx,ebx
 005C6E94    mov         eax,esi
 005C6E96    call        TWinControl.WMWinIniChange
 005C6E9B    cmp         dword ptr [ebx+4],2F
>005C6E9F    jne         005C6EA8
 005C6EA1    mov         eax,esi
 005C6EA3    mov         edx,dword ptr [eax]
 005C6EA5    call        dword ptr [edx+78];TCustomForm.sub_005C6E6C
 005C6EA8    pop         esi
 005C6EA9    pop         ebx
 005C6EAA    ret
*}
end;

//005C6EAC
{*function sub_005C6EAC(?:TControl; ?:?):?;
begin
 005C6EAC    push        ebp
 005C6EAD    mov         ebp,esp
 005C6EAF    push        ebx
 005C6EB0    push        esi
 005C6EB1    mov         ebx,eax
 005C6EB3    test        ebx,ebx
>005C6EB5    je          005C6ECF
 005C6EB7    mov         eax,dword ptr [ebp+8]
 005C6EBA    mov         edx,dword ptr [eax-4]
 005C6EBD    mov         edx,dword ptr [edx+8]
 005C6EC0    mov         eax,ebx
 005C6EC2    mov         si,0FFF2
 005C6EC6    call        @CallDynaInst
 005C6ECB    test        al,al
>005C6ECD    jne         005C6ED3
 005C6ECF    xor         eax,eax
>005C6ED1    jmp         005C6ED5
 005C6ED3    mov         al,1
 005C6ED5    pop         esi
 005C6ED6    pop         ebx
 005C6ED7    pop         ebp
 005C6ED8    ret
end;*}

//005C6EDC
{*function sub_005C6EDC(?:TControl; ?:?):?;
begin
 005C6EDC    push        ebp
 005C6EDD    mov         ebp,esp
 005C6EDF    push        ecx
 005C6EE0    push        ebx
 005C6EE1    push        esi
 005C6EE2    push        edi
 005C6EE3    mov         dword ptr [ebp-4],eax
 005C6EE6    mov         eax,dword ptr [ebp-4]
 005C6EE9    cmp         byte ptr [eax+205],0
>005C6EF0    je          005C6F5A
 005C6EF2    mov         eax,dword ptr [ebp-4]
 005C6EF5    call        TWinControl.GetControlCount
 005C6EFA    mov         esi,eax
 005C6EFC    dec         esi
 005C6EFD    test        esi,esi
>005C6EFF    jl          005C6F5A
 005C6F01    inc         esi
 005C6F02    xor         edi,edi
 005C6F04    mov         edx,edi
 005C6F06    mov         eax,dword ptr [ebp-4]
 005C6F09    call        TWinControl.GetControl
 005C6F0E    mov         ebx,eax
 005C6F10    cmp         byte ptr [ebx+69],0;TControl.FVisible:Boolean
>005C6F14    je          005C6F26
 005C6F16    mov         eax,dword ptr [ebp+8]
 005C6F19    push        eax
 005C6F1A    mov         eax,ebx
 005C6F1C    call        005C6EAC
 005C6F21    pop         ecx
 005C6F22    test        al,al
>005C6F24    jne         005C6F52
 005C6F26    mov         eax,ebx
 005C6F28    mov         edx,dword ptr ds:[4DE8CC];TWinControl
 005C6F2E    call        @IsClass
 005C6F33    test        al,al
>005C6F35    je          005C6F56
 005C6F37    mov         eax,ebx
 005C6F39    call        TWinControl.GetControlCount
 005C6F3E    test        eax,eax
>005C6F40    jle         005C6F56
 005C6F42    mov         eax,dword ptr [ebp+8]
 005C6F45    push        eax
 005C6F46    mov         eax,ebx
 005C6F48    call        005C6EDC
 005C6F4D    pop         ecx
 005C6F4E    test        al,al
>005C6F50    je          005C6F56
 005C6F52    mov         al,1
>005C6F54    jmp         005C6F5C
 005C6F56    inc         edi
 005C6F57    dec         esi
>005C6F58    jne         005C6F04
 005C6F5A    xor         eax,eax
 005C6F5C    pop         edi
 005C6F5D    pop         esi
 005C6F5E    pop         ebx
 005C6F5F    pop         ecx
 005C6F60    pop         ebp
 005C6F61    ret
end;*}

//005C6F64
{*procedure TCustomForm.CMActionExecute(?:?);
begin
 005C6F64    push        ebp
 005C6F65    mov         ebp,esp
 005C6F67    push        ecx
 005C6F68    push        ebx
 005C6F69    mov         dword ptr [ebp-4],edx
 005C6F6C    mov         ebx,eax
 005C6F6E    test        byte ptr [ebx+1C],10;TCustomForm.FComponentState:TComponentState
>005C6F72    jne         005C6FB2
 005C6F74    cmp         byte ptr [ebx+205],0;TCustomForm.FShowing:Boolean
>005C6F7B    je          005C6FB2
 005C6F7D    push        ebp
 005C6F7E    mov         eax,dword ptr [ebx+2B4];TCustomForm.FActiveControl:TWinControl
 005C6F84    call        005C6EAC
 005C6F89    pop         ecx
 005C6F8A    test        al,al
>005C6F8C    jne         005C6FA8
 005C6F8E    push        ebp
 005C6F8F    mov         eax,ebx
 005C6F91    call        005C6EAC
 005C6F96    pop         ecx
 005C6F97    test        al,al
>005C6F99    jne         005C6FA8
 005C6F9B    push        ebp
 005C6F9C    mov         eax,ebx
 005C6F9E    call        005C6EDC
 005C6FA3    pop         ecx
 005C6FA4    test        al,al
>005C6FA6    je          005C6FB2
 005C6FA8    mov         eax,dword ptr [ebp-4]
 005C6FAB    mov         dword ptr [eax+0C],1
 005C6FB2    pop         ebx
 005C6FB3    pop         ecx
 005C6FB4    pop         ebp
 005C6FB5    ret
end;*}

//005C6FB8
{*function sub_005C6FB8(?:TControl; ?:?):?;
begin
 005C6FB8    push        ebp
 005C6FB9    mov         ebp,esp
 005C6FBB    push        ebx
 005C6FBC    mov         ebx,eax
 005C6FBE    test        ebx,ebx
>005C6FC0    je          005C6FD6
 005C6FC2    mov         eax,dword ptr [ebp+8]
 005C6FC5    mov         edx,dword ptr [eax-4]
 005C6FC8    mov         edx,dword ptr [edx+8]
 005C6FCB    mov         eax,ebx
 005C6FCD    mov         ecx,dword ptr [eax]
 005C6FCF    call        dword ptr [ecx+40]
 005C6FD2    test        al,al
>005C6FD4    jne         005C6FDB
 005C6FD6    xor         eax,eax
 005C6FD8    pop         ebx
 005C6FD9    pop         ebp
 005C6FDA    ret
 005C6FDB    mov         al,1
 005C6FDD    pop         ebx
 005C6FDE    pop         ebp
 005C6FDF    ret
end;*}

//005C6FE0
{*function sub_005C6FE0(?:TControl; ?:?):?;
begin
 005C6FE0    push        ebp
 005C6FE1    mov         ebp,esp
 005C6FE3    push        ecx
 005C6FE4    push        ebx
 005C6FE5    push        esi
 005C6FE6    push        edi
 005C6FE7    mov         edi,eax
 005C6FE9    cmp         byte ptr [edi+205],0
>005C6FF0    je          005C7066
 005C6FF2    test        byte ptr [edi+1C],10
>005C6FF6    jne         005C7066
 005C6FF8    mov         eax,edi
 005C6FFA    call        TWinControl.GetControlCount
 005C6FFF    mov         esi,eax
 005C7001    dec         esi
 005C7002    test        esi,esi
>005C7004    jl          005C7066
 005C7006    inc         esi
 005C7007    mov         dword ptr [ebp-4],0
 005C700E    mov         edx,dword ptr [ebp-4]
 005C7011    mov         eax,edi
 005C7013    call        TWinControl.GetControl
 005C7018    mov         ebx,eax
 005C701A    cmp         byte ptr [ebx+69],0;TControl.FVisible:Boolean
>005C701E    je          005C7030
 005C7020    mov         eax,dword ptr [ebp+8]
 005C7023    push        eax
 005C7024    mov         eax,ebx
 005C7026    call        005C6FB8
 005C702B    pop         ecx
 005C702C    test        al,al
>005C702E    jne         005C705C
 005C7030    mov         eax,ebx
 005C7032    mov         edx,dword ptr ds:[4DE8CC];TWinControl
 005C7038    call        @IsClass
 005C703D    test        al,al
>005C703F    je          005C7060
 005C7041    mov         eax,ebx
 005C7043    call        TWinControl.GetControlCount
 005C7048    test        eax,eax
>005C704A    jle         005C7060
 005C704C    mov         eax,dword ptr [ebp+8]
 005C704F    push        eax
 005C7050    mov         eax,ebx
 005C7052    call        005C6FE0
 005C7057    pop         ecx
 005C7058    test        al,al
>005C705A    je          005C7060
 005C705C    mov         al,1
>005C705E    jmp         005C7068
 005C7060    inc         dword ptr [ebp-4]
 005C7063    dec         esi
>005C7064    jne         005C700E
 005C7066    xor         eax,eax
 005C7068    pop         edi
 005C7069    pop         esi
 005C706A    pop         ebx
 005C706B    pop         ecx
 005C706C    pop         ebp
 005C706D    ret
end;*}

//005C7070
{*procedure TCustomForm.CMActionUpdate(?:?);
begin
 005C7070    push        ebp
 005C7071    mov         ebp,esp
 005C7073    push        ecx
 005C7074    push        ebx
 005C7075    mov         dword ptr [ebp-4],edx
 005C7078    mov         ebx,eax
 005C707A    test        byte ptr [ebx+1C],10;TCustomForm.FComponentState:TComponentState
>005C707E    jne         005C70BE
 005C7080    cmp         byte ptr [ebx+205],0;TCustomForm.FShowing:Boolean
>005C7087    je          005C70BE
 005C7089    push        ebp
 005C708A    mov         eax,dword ptr [ebx+2B4];TCustomForm.FActiveControl:TWinControl
 005C7090    call        005C6FB8
 005C7095    pop         ecx
 005C7096    test        al,al
>005C7098    jne         005C70B4
 005C709A    push        ebp
 005C709B    mov         eax,ebx
 005C709D    call        005C6FB8
 005C70A2    pop         ecx
 005C70A3    test        al,al
>005C70A5    jne         005C70B4
 005C70A7    push        ebp
 005C70A8    mov         eax,ebx
 005C70AA    call        005C6FE0
 005C70AF    pop         ecx
 005C70B0    test        al,al
>005C70B2    je          005C70BE
 005C70B4    mov         eax,dword ptr [ebp-4]
 005C70B7    mov         dword ptr [eax+0C],1
 005C70BE    pop         ebx
 005C70BF    pop         ecx
 005C70C0    pop         ebp
 005C70C1    ret
end;*}

//005C70C4
{*function sub_005C70C4(?:TComponent; ?:?):?;
begin
 005C70C4    push        ebp
 005C70C5    mov         ebp,esp
 005C70C7    add         esp,0FFFFFFF8
 005C70CA    push        ebx
 005C70CB    push        esi
 005C70CC    push        edi
 005C70CD    mov         dword ptr [ebp-4],eax
 005C70D0    mov         byte ptr [ebp-5],0
 005C70D4    mov         eax,dword ptr [ebp-4]
 005C70D7    call        TComponent.GetComponentCount
 005C70DC    mov         esi,eax
 005C70DE    dec         esi
 005C70DF    test        esi,esi
>005C70E1    jl          005C7133
 005C70E3    inc         esi
 005C70E4    xor         edi,edi
 005C70E6    mov         edx,edi
 005C70E8    mov         eax,dword ptr [ebp-4]
 005C70EB    call        TComponent.GetComponent
 005C70F0    mov         ebx,eax
 005C70F2    mov         eax,ebx
 005C70F4    mov         edx,dword ptr ds:[4D5100];TCustomActionList
 005C70FA    call        @IsClass
 005C70FF    test        al,al
>005C7101    je          005C711A
 005C7103    mov         eax,dword ptr [ebp+8]
 005C7106    mov         edx,dword ptr [eax-4]
 005C7109    mov         eax,ebx
 005C710B    call        TCustomActionList.IsShortCut
 005C7110    test        al,al
>005C7112    je          005C712F
 005C7114    mov         byte ptr [ebp-5],1
>005C7118    jmp         005C7133
 005C711A    mov         eax,dword ptr [ebp+8]
 005C711D    push        eax
 005C711E    mov         eax,ebx
 005C7120    call        005C70C4
 005C7125    pop         ecx
 005C7126    mov         byte ptr [ebp-5],al
 005C7129    cmp         byte ptr [ebp-5],0
>005C712D    jne         005C7133
 005C712F    inc         edi
 005C7130    dec         esi
>005C7131    jne         005C70E6
 005C7133    movzx       eax,byte ptr [ebp-5]
 005C7137    pop         edi
 005C7138    pop         esi
 005C7139    pop         ebx
 005C713A    pop         ecx
 005C713B    pop         ecx
 005C713C    pop         ebp
 005C713D    ret
end;*}

//005C7140
procedure TCustomForm.IsShortCut(var Message:TWMKey);
begin
{*
 005C7140    push        ebp
 005C7141    mov         ebp,esp
 005C7143    add         esp,0FFFFFFF8
 005C7146    push        ebx
 005C7147    push        esi
 005C7148    push        edi
 005C7149    mov         dword ptr [ebp-4],edx
 005C714C    mov         ebx,eax
 005C714E    mov         byte ptr [ebp-5],0
 005C7152    cmp         word ptr [ebx+35A],0;TCustomForm.?f35A:word
>005C715A    je          005C716E
 005C715C    lea         ecx,[ebp-5]
 005C715F    mov         edx,dword ptr [ebp-4]
 005C7162    mov         eax,dword ptr [ebx+35C];TCustomForm.FPopupChildren:TList
 005C7168    call        dword ptr [ebx+358];TCustomForm.FOnShortCut
 005C716E    cmp         byte ptr [ebp-5],0
>005C7172    jne         005C71A7
 005C7174    mov         edi,dword ptr [ebx+2D8];TCustomForm.FMenu:TMainMenu
 005C717A    test        edi,edi
>005C717C    je          005C7196
 005C717E    cmp         dword ptr [edi+48],0;TMainMenu.FWindowHandle:HWND
>005C7182    je          005C7196
 005C7184    mov         edx,dword ptr [ebp-4]
 005C7187    mov         eax,edi
 005C7189    mov         si,0FFEE
 005C718D    call        @CallDynaInst;TMenu.sub_005B2390
 005C7192    test        al,al
>005C7194    jne         005C71A7
 005C7196    push        ebp
 005C7197    mov         eax,ebx
 005C7199    call        005C70C4
 005C719E    pop         ecx
 005C719F    test        al,al
>005C71A1    jne         005C71A7
 005C71A3    xor         eax,eax
>005C71A5    jmp         005C71A9
 005C71A7    mov         al,1
 005C71A9    mov         byte ptr [ebp-5],al
 005C71AC    movzx       eax,byte ptr [ebp-5]
 005C71B0    pop         edi
 005C71B1    pop         esi
 005C71B2    pop         ebx
 005C71B3    pop         ecx
 005C71B4    pop         ecx
 005C71B5    pop         ebp
 005C71B6    ret
*}
end;

//005C71B8
{*function TCustomForm.QueryInterface(const IID:TGUID; var Obj:Pointer):?; stdcall;
begin
 005C71B8    push        ebp
 005C71B9    mov         ebp,esp
 005C71BB    push        ebx
 005C71BC    push        esi
 005C71BD    push        edi
 005C71BE    mov         edi,dword ptr [ebp+10]
 005C71C1    mov         esi,dword ptr [ebp+0C]
 005C71C4    mov         ebx,dword ptr [ebp+8]
 005C71C7    cmp         dword ptr [ebx+2E0],0
>005C71CE    je          005C71E1
 005C71D0    push        edi
 005C71D1    push        esi
 005C71D2    mov         eax,dword ptr [ebx+2E0]
 005C71D8    push        eax
 005C71D9    mov         eax,dword ptr [eax]
 005C71DB    call        dword ptr [eax]
 005C71DD    test        eax,eax
>005C71DF    je          005C71EB
 005C71E1    push        edi
 005C71E2    push        esi
 005C71E3    push        ebx
 005C71E4    call        TComponent.QueryInterface
>005C71E9    jmp         005C71ED
 005C71EB    xor         eax,eax
 005C71ED    pop         edi
 005C71EE    pop         esi
 005C71EF    pop         ebx
 005C71F0    pop         ebp
 005C71F1    ret         0C
end;*}

//005C71F4
procedure TCustomForm.MouseWheelHandler(var Message:TMessage);
begin
{*
 005C71F4    push        ebx
 005C71F5    push        esi
 005C71F6    push        edi
 005C71F7    mov         esi,edx
 005C71F9    mov         ebx,eax
 005C71FB    mov         edi,dword ptr [ebx+2B8];TCustomForm.FFocusedControl:TWinControl
 005C7201    test        edi,edi
>005C7203    je          005C721D
 005C7205    mov         eax,dword ptr [esi+8]
 005C7208    push        eax
 005C7209    mov         ecx,dword ptr [esi+4]
 005C720C    mov         edx,0B043
 005C7211    mov         eax,edi
 005C7213    call        TControl.Perform
 005C7218    mov         dword ptr [esi+0C],eax
>005C721B    jmp         005C7226
 005C721D    mov         edx,esi
 005C721F    mov         eax,ebx
 005C7221    call        TControl.MouseWheelHandler
 005C7226    pop         edi
 005C7227    pop         esi
 005C7228    pop         ebx
 005C7229    ret
*}
end;

//005C722C
procedure TCustomForm.sub_005C722C;
begin
{*
 005C722C    mov         edx,eax
 005C722E    mov         eax,[007CA7C8];Application:TApplication
 005C7233    call        TApplication.HandleException
 005C7238    mov         al,1
 005C723A    ret
*}
end;

//005C723C
procedure sub_005C723C(?:TCustomForm);
begin
{*
 005C723C    push        ebx
 005C723D    push        esi
 005C723E    mov         ebx,eax
 005C7240    test        byte ptr [ebx+1C],10;TCustomForm.FComponentState:TComponentState
>005C7244    jne         005C7314
 005C724A    cmp         dword ptr ds:[7A1CA8],0;gvar_007A1CA8:Pointer
>005C7251    je          005C7314
 005C7257    mov         eax,ebx
 005C7259    call        TWinControl.HandleAllocated
 005C725E    test        al,al
>005C7260    je          005C7314
 005C7266    mov         eax,ebx
 005C7268    call        TWinControl.GetHandle
 005C726D    push        0EC
 005C726F    push        eax
 005C7270    call        user32.GetWindowLongW
 005C7275    mov         esi,eax
 005C7277    cmp         byte ptr [ebx+378],0;TCustomForm.FAlphaBlend:Boolean
>005C727E    jne         005C7289
 005C7280    cmp         byte ptr [ebx+3A0],0;TCustomForm.FTransparentColor:Boolean
>005C7287    je          005C72E8
 005C7289    test        esi,80000
>005C728F    jne         005C72A7
 005C7291    mov         eax,ebx
 005C7293    call        TWinControl.GetHandle
 005C7298    or          esi,80000
 005C729E    push        esi
 005C729F    push        0EC
 005C72A1    push        eax
 005C72A2    call        user32.SetWindowLongW
 005C72A7    movzx       eax,byte ptr [ebx+378];TCustomForm.FAlphaBlend:Boolean
 005C72AE    mov         eax,dword ptr [eax*4+7A1D40]
 005C72B5    movzx       edx,byte ptr [ebx+3A0];TCustomForm.FTransparentColor:Boolean
 005C72BC    or          eax,dword ptr [edx*4+7A1D48]
 005C72C3    push        eax
 005C72C4    movzx       eax,byte ptr [ebx+379];TCustomForm.FAlphaBlendValue:byte
 005C72CB    push        eax
 005C72CC    mov         eax,dword ptr [ebx+3A4];TCustomForm.FTransparentColorValue:TColor
 005C72D2    call        ColorToRGB
 005C72D7    push        eax
 005C72D8    mov         eax,ebx
 005C72DA    call        TWinControl.GetHandle
 005C72DF    push        eax
 005C72E0    call        dword ptr ds:[7A1CA8]
>005C72E6    jmp         005C7314
 005C72E8    mov         eax,ebx
 005C72EA    call        TWinControl.GetHandle
 005C72EF    and         esi,0FFF7FFFF
 005C72F5    push        esi
 005C72F6    push        0EC
 005C72F8    push        eax
 005C72F9    call        user32.SetWindowLongW
 005C72FE    push        485
 005C7303    push        0
 005C7305    push        0
 005C7307    mov         eax,ebx
 005C7309    call        TWinControl.GetHandle
 005C730E    push        eax
 005C730F    call        user32.RedrawWindow
 005C7314    pop         esi
 005C7315    pop         ebx
 005C7316    ret
*}
end;

//005C7318
procedure TForm.SetAlphaBlend(Value:Boolean);
begin
{*
 005C7318    cmp         dl,byte ptr [eax+378];TForm.FAlphaBlend:Boolean
>005C731E    je          005C732B
 005C7320    mov         byte ptr [eax+378],dl;TForm.FAlphaBlend:Boolean
 005C7326    call        005C723C
 005C732B    ret
*}
end;

//005C732C
procedure TForm.SetAlphaBlendValue(Value:Byte);
begin
{*
 005C732C    cmp         dl,byte ptr [eax+379];TForm.FAlphaBlendValue:byte
>005C7332    je          005C733F
 005C7334    mov         byte ptr [eax+379],dl;TForm.FAlphaBlendValue:byte
 005C733A    call        005C723C
 005C733F    ret
*}
end;

//005C7340
procedure TForm.SetTransparentColorValue(Value:TColor);
begin
{*
 005C7340    cmp         edx,dword ptr [eax+3A4];TForm.FTransparentColorValue:TColor
>005C7346    je          005C7353
 005C7348    mov         dword ptr [eax+3A4],edx;TForm.FTransparentColorValue:TColor
 005C734E    call        005C723C
 005C7353    ret
*}
end;

//005C7354
procedure TForm.SetTransparentColor(Value:Boolean);
begin
{*
 005C7354    push        ebx
 005C7355    mov         ebx,eax
 005C7357    cmp         dl,byte ptr [ebx+3A0];TForm.FTransparentColor:Boolean
>005C735D    je          005C738E
 005C735F    mov         byte ptr [ebx+3A0],dl;TForm.FTransparentColor:Boolean
 005C7365    cmp         byte ptr [ebx+3A0],0;TForm.FTransparentColor:Boolean
>005C736C    je          005C7387
 005C736E    mov         eax,dword ptr [ebx+3AC];TForm.FGlassFrame:TGlassFrame
 005C7374    cmp         byte ptr [eax+8],0;TGlassFrame.FEnabled:Boolean
>005C7378    je          005C7387
 005C737A    xor         edx,edx
 005C737C    mov         eax,dword ptr [ebx+3AC];TForm.FGlassFrame:TGlassFrame
 005C7382    call        TGlassFrame.SetEnabled
 005C7387    mov         eax,ebx
 005C7389    call        005C723C
 005C738E    pop         ebx
 005C738F    ret
*}
end;

//005C7390
procedure sub_005C7390(?:TCustomForm; ?:TCreateParams);
begin
{*
 005C7390    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005C7394    jne         005C73B8
 005C7396    cmp         dword ptr ds:[7A1CA8],0;gvar_007A1CA8:Pointer
>005C739D    je          005C73B8
 005C739F    cmp         byte ptr [eax+378],0;TCustomForm.FAlphaBlend:Boolean
>005C73A6    jne         005C73B1
 005C73A8    cmp         byte ptr [eax+3A0],0;TCustomForm.FTransparentColor:Boolean
>005C73AF    je          005C73B8
 005C73B1    or          dword ptr [edx+8],80000;TCreateParams.ExStyle:DWORD
 005C73B8    ret
*}
end;

//005C73BC
procedure TCustomForm.SetLeft(Value:Integer);
begin
{*
 005C73BC    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005C73C0    je          005C73F0
 005C73C2    cmp         dword ptr [eax+40],0;TCustomForm.FParent:TWinControl
>005C73C6    je          005C73F0
 005C73C8    mov         ecx,dword ptr [eax+18];TCustomForm.FDesignInfo:Integer
 005C73CB    and         ecx,0FFFF
 005C73D1    shl         edx,10
 005C73D4    or          ecx,edx
 005C73D6    mov         dword ptr [eax+18],ecx;TCustomForm.FDesignInfo:Integer
 005C73D9    test        byte ptr [eax+1C],1;TCustomForm.FComponentState:TComponentState
>005C73DD    jne         005C73F5
 005C73DF    cmp         byte ptr [eax+2C3],3;TCustomForm.FPosition:TPosition
>005C73E6    je          005C73F5
 005C73E8    xor         edx,edx
 005C73EA    call        TForm.SetPosition
 005C73EF    ret
 005C73F0    call        TControl.SetLeft
 005C73F5    ret
*}
end;

//005C73F8
procedure TCustomForm.SetTop(Value:Integer);
begin
{*
 005C73F8    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005C73FC    je          005C742F
 005C73FE    cmp         dword ptr [eax+40],0;TCustomForm.FParent:TWinControl
>005C7402    je          005C742F
 005C7404    mov         ecx,dword ptr [eax+18];TCustomForm.FDesignInfo:Integer
 005C7407    and         ecx,0FFFF0000
 005C740D    and         edx,0FFFF
 005C7413    or          ecx,edx
 005C7415    mov         dword ptr [eax+18],ecx;TCustomForm.FDesignInfo:Integer
 005C7418    test        byte ptr [eax+1C],1;TCustomForm.FComponentState:TComponentState
>005C741C    jne         005C7434
 005C741E    cmp         byte ptr [eax+2C3],3;TCustomForm.FPosition:TPosition
>005C7425    je          005C7434
 005C7427    xor         edx,edx
 005C7429    call        TForm.SetPosition
 005C742E    ret
 005C742F    call        TControl.SetTop
 005C7434    ret
*}
end;

//005C7438
procedure TForm.SetGlassFrame(Value:TGlassFrame);
begin
{*
 005C7438    mov         eax,dword ptr [eax+3AC];TForm.FGlassFrame:TGlassFrame
 005C743E    mov         ecx,dword ptr [eax]
 005C7440    call        dword ptr [ecx+8];TGlassFrame.Assign
 005C7443    ret
*}
end;

//005C7444
procedure sub_005C7444(?:TCustomForm);
begin
{*
 005C7444    push        esi
 005C7445    add         esp,0FFFFFFF0
 005C7448    mov         esi,eax
 005C744A    call        004D7288
 005C744F    test        al,al
>005C7451    je          005C750F
 005C7457    mov         eax,esi
 005C7459    call        TWinControl.HandleAllocated
 005C745E    test        al,al
>005C7460    je          005C750F
 005C7466    mov         eax,dword ptr [esi+3AC];TCustomForm.FGlassFrame:TGlassFrame
 005C746C    cmp         byte ptr [eax+8],0;TGlassFrame.FEnabled:Boolean
>005C7470    je          005C74C4
 005C7472    cmp         byte ptr [eax+28],0;TGlassFrame.FSheetOfGlass:Boolean
>005C7476    jne         005C7495
 005C7478    mov         edx,dword ptr [eax+0C];TGlassFrame.FLeft:Integer
 005C747B    mov         dword ptr [esp],edx
 005C747E    mov         edx,dword ptr [eax+14];TGlassFrame.FRight:Integer
 005C7481    mov         dword ptr [esp+4],edx
 005C7485    mov         edx,dword ptr [eax+10];TGlassFrame.FTop:Integer
 005C7488    mov         dword ptr [esp+8],edx
 005C748C    mov         eax,dword ptr [eax+18];TGlassFrame.FBottom:Integer
 005C748F    mov         dword ptr [esp+0C],eax
>005C7493    jmp         005C74B4
 005C7495    mov         dword ptr [esp],0FFFFFFFF
 005C749C    mov         dword ptr [esp+4],0FFFFFFFF
 005C74A4    mov         dword ptr [esp+8],0FFFFFFFF
 005C74AC    mov         dword ptr [esp+0C],0FFFFFFFF
 005C74B4    test        byte ptr [esi+1C],10;TCustomForm.FComponentState:TComponentState
>005C74B8    jne         005C74DC
 005C74BA    mov         eax,[005C7538];0x8000 gvar_005C7538
 005C74BF    or          dword ptr [esi+64],eax;TCustomForm.FControlState:TControlState
>005C74C2    jmp         005C74DC
 005C74C4    mov         eax,[005C7538];0x8000 gvar_005C7538
 005C74C9    not         eax
 005C74CB    and         dword ptr [esi+64],eax;TCustomForm.FControlState:TControlState
 005C74CE    mov         eax,esp
 005C74D0    xor         ecx,ecx
 005C74D2    mov         edx,10
 005C74D7    call        @FillChar
 005C74DC    test        byte ptr [esi+1C],10;TCustomForm.FComponentState:TComponentState
>005C74E0    je          005C74F5
 005C74E2    push        0FF
 005C74E4    push        0
 005C74E6    mov         eax,esi
 005C74E8    call        TWinControl.GetHandle
 005C74ED    push        eax
 005C74EE    call        user32.InvalidateRect
>005C74F3    jmp         005C7530
 005C74F5    push        esp
 005C74F6    mov         eax,esi
 005C74F8    call        TWinControl.GetHandle
 005C74FD    push        eax
 005C74FE    call        004D7268
 005C7503    mov         eax,esi
 005C7505    mov         edx,dword ptr [eax]
 005C7507    call        dword ptr [edx+0A8];TWinControl.Invalidate
>005C750D    jmp         005C7530
 005C750F    mov         eax,[005C7538];0x8000 gvar_005C7538
 005C7514    not         eax
 005C7516    and         dword ptr [esi+64],eax;TCustomForm.FControlState:TControlState
 005C7519    test        byte ptr [esi+1C],10;TCustomForm.FComponentState:TComponentState
>005C751D    je          005C7530
 005C751F    push        0FF
 005C7521    push        0
 005C7523    mov         eax,esi
 005C7525    call        TWinControl.GetHandle
 005C752A    push        eax
 005C752B    call        user32.InvalidateRect
 005C7530    add         esp,10
 005C7533    pop         esi
 005C7534    ret
*}
end;

//005C753C
{*procedure sub_005C753C(?:TControl; ?:?);
begin
 005C753C    push        ebp
 005C753D    mov         ebp,esp
 005C753F    add         esp,0FFFFFFE0
 005C7542    push        ebx
 005C7543    push        esi
 005C7544    mov         dword ptr [ebp-4],eax
 005C7547    mov         eax,dword ptr [ebp-4]
 005C754A    call        TWinControl.GetControlCount
 005C754F    mov         esi,eax
 005C7551    dec         esi
 005C7552    test        esi,esi
>005C7554    jl          005C766B
 005C755A    inc         esi
 005C755B    mov         dword ptr [ebp-8],0
 005C7562    mov         edx,dword ptr [ebp-8]
 005C7565    mov         eax,dword ptr [ebp-4]
 005C7568    call        TWinControl.GetControl
 005C756D    mov         ebx,eax
 005C756F    mov         eax,dword ptr [ebp+8]
 005C7572    mov         eax,dword ptr [eax-4]
 005C7575    mov         eax,dword ptr [eax+3AC]
 005C757B    cmp         byte ptr [eax+28],0
>005C757F    jne         005C75CB
 005C7581    lea         edx,[ebp-18]
 005C7584    mov         eax,ebx
 005C7586    mov         ecx,dword ptr [eax]
 005C7588    call        dword ptr [ecx+64];TControl.sub_004E6794
 005C758B    lea         eax,[ebp-20]
 005C758E    push        eax
 005C758F    mov         eax,dword ptr [ebp+8]
 005C7592    mov         ecx,dword ptr [eax-4]
 005C7595    lea         edx,[ebp-18]
 005C7598    mov         eax,ebx
 005C759A    call        TControl.ClientToParent
 005C759F    mov         eax,dword ptr [ebp-20]
 005C75A2    mov         dword ptr [ebp-18],eax
 005C75A5    mov         eax,dword ptr [ebp-1C]
 005C75A8    mov         dword ptr [ebp-14],eax
 005C75AB    lea         eax,[ebp-20]
 005C75AE    push        eax
 005C75AF    mov         eax,dword ptr [ebp+8]
 005C75B2    mov         ecx,dword ptr [eax-4]
 005C75B5    lea         edx,[ebp-10]
 005C75B8    mov         eax,ebx
 005C75BA    call        TControl.ClientToParent
 005C75BF    mov         eax,dword ptr [ebp-20]
 005C75C2    mov         dword ptr [ebp-10],eax
 005C75C5    mov         eax,dword ptr [ebp-1C]
 005C75C8    mov         dword ptr [ebp-0C],eax
 005C75CB    mov         eax,dword ptr [ebp+8]
 005C75CE    mov         eax,dword ptr [eax-4]
 005C75D1    mov         eax,dword ptr [eax+3AC]
 005C75D7    cmp         byte ptr [eax+28],0
>005C75DB    je          005C75E1
 005C75DD    mov         al,1
>005C75DF    jmp         005C7620
 005C75E1    mov         eax,dword ptr [ebp+8]
 005C75E4    mov         eax,dword ptr [eax-8]
 005C75E7    mov         eax,dword ptr [eax]
 005C75E9    cmp         eax,dword ptr [ebp-18]
>005C75EC    jg          005C7618
 005C75EE    mov         eax,dword ptr [ebp+8]
 005C75F1    mov         eax,dword ptr [eax-8]
 005C75F4    mov         eax,dword ptr [eax+8]
 005C75F7    cmp         eax,dword ptr [ebp-10]
>005C75FA    jl          005C7618
 005C75FC    mov         eax,dword ptr [ebp+8]
 005C75FF    mov         eax,dword ptr [eax-8]
 005C7602    mov         eax,dword ptr [eax+4]
 005C7605    cmp         eax,dword ptr [ebp-14]
>005C7608    jg          005C7618
 005C760A    mov         eax,dword ptr [ebp+8]
 005C760D    mov         eax,dword ptr [eax-8]
 005C7610    mov         eax,dword ptr [eax+0C]
 005C7613    cmp         eax,dword ptr [ebp-0C]
>005C7616    jge         005C761C
 005C7618    xor         eax,eax
>005C761A    jmp         005C761E
 005C761C    mov         al,1
 005C761E    xor         al,1
 005C7620    test        al,al
>005C7622    je          005C7634
 005C7624    test        byte ptr [ebx+65],80;TControl.FAlign:TAlign
>005C7628    jne         005C7644
 005C762A    mov         eax,[005C7674];0x8000 gvar_005C7674
 005C762F    or          dword ptr [ebx+64],eax;TControl.FControlState:TControlState
>005C7632    jmp         005C7644
 005C7634    test        byte ptr [ebx+65],80;TControl.FAlign:TAlign
>005C7638    je          005C7644
 005C763A    mov         eax,[005C7674];0x8000 gvar_005C7674
 005C763F    not         eax
 005C7641    and         dword ptr [ebx+64],eax;TControl.FControlState:TControlState
 005C7644    mov         eax,ebx
 005C7646    mov         edx,dword ptr ds:[4DE8CC];TWinControl
 005C764C    call        @IsClass
 005C7651    test        al,al
>005C7653    je          005C7661
 005C7655    mov         eax,dword ptr [ebp+8]
 005C7658    push        eax
 005C7659    mov         eax,ebx
 005C765B    call        005C753C
 005C7660    pop         ecx
 005C7661    inc         dword ptr [ebp-8]
 005C7664    dec         esi
>005C7665    jne         005C7562
 005C766B    pop         esi
 005C766C    pop         ebx
 005C766D    mov         esp,ebp
 005C766F    pop         ebp
 005C7670    ret
end;*}

//005C7678
{*procedure sub_005C7678(?:TCustomForm; ?:?);
begin
 005C7678    push        ebp
 005C7679    mov         ebp,esp
 005C767B    add         esp,0FFFFFFF8
 005C767E    mov         dword ptr [ebp-8],edx
 005C7681    mov         dword ptr [ebp-4],eax
 005C7684    mov         eax,dword ptr [ebp-4]
 005C7687    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005C768B    jne         005C76A0
 005C768D    call        004D7288
 005C7692    test        al,al
>005C7694    je          005C76A0
 005C7696    push        ebp
 005C7697    mov         eax,dword ptr [ebp-4]
 005C769A    call        005C753C
 005C769F    pop         ecx
 005C76A0    pop         ecx
 005C76A1    pop         ecx
 005C76A2    pop         ebp
 005C76A3    ret
end;*}

Initialization
//0079D774
{*
 0079D774    sub         dword ptr ds:[7CA7C4],1
>0079D77B    jae         0079D793
 0079D77D    mov         ecx,dword ptr ds:[5BE298];TFormStyleHook
 0079D783    mov         edx,dword ptr ds:[5B865C];TForm
 0079D789    mov         eax,[005738E0];TCustomStyleEngine
 0079D78E    call        TCustomStyleEngine.RegisterStyleHook
 0079D793    ret
*}
Finalization
end.