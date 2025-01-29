//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit48;

interface

uses
  SysUtils, Classes;

    procedure CreateParams(var Params:TCreateParams);//00510A3C
    //procedure CMDialogChar(?:?);//00510AC0
    procedure CMFontChanged;//00510B68
    procedure CMTextChanged;//00510B7C
    procedure CMFontChanged(var Message:TMessage);//00510B9C
    procedure sub_00510BB0(?:TCustomStaticText);//00510BB0
    procedure Notification(AComponent:TComponent; Operation:TOperation);//00510CE4
    procedure SetAlignment(Value:TAlignment);//00510D14
    procedure SetAutoSize(Value:Boolean);//00510D28
    procedure SetBorderStyle(Value:TStaticBorderStyle);//00510D40
    procedure SetFocusControl(Value:TWinControl);//00510D54
    procedure SetShowAccelChar(Value:Boolean);//00510D68
    //procedure sub_00510D7C(?:?);//00510D7C
    procedure SetTransparent(Value:Boolean);//00510DDC
    //function GetTransparent:?;//00510E18
    constructor TScrollWindow.Create(AOwner:TComponent);//00510E24
    procedure TScrollWindow.CreateParams(var Params:TCreateParams);//00510E68
    //procedure TScrollWindow.WMNCHitTest(?:?);//00510E90
    //procedure TScrollWindow.WMEraseBkgnd(?:?);//00510EA4
    //procedure TScrollWindow.WMPaint(?:?);//00510EAC
    procedure sub_00511064;//00511064
    constructor Create(AControl:TWinControl);//0051106C
    destructor Destroy();//005110C0
    function sub_0051110C:Boolean;//0051110C
    //function sub_0051111C:?;//0051111C
    //procedure sub_00511148(?:TScrollBarStyleHook; ?:?);//00511148
    procedure CMVisibleChanged;//00511188
    //procedure WMPaint(?:?);//005111CC
    //procedure WMShowWindow(?:?);//005111D4
    procedure WMWindowPosChangedMsg;//00511228
    procedure sub_00511254;//00511254
    procedure WMMove;//0051125C
    procedure WMSize;//00511274
    procedure sub_0051128C(?:TScrollBarStyleHook);//0051128C
    procedure sub_0051132C(?:TScrollBarStyleHook);//0051132C
    procedure sub_005113B8(?:TScrollBarStyleHook);//005113B8
    procedure sub_005113D0;//005113D0
    procedure sub_005113D8;//005113D8
    function sub_005113E0:Boolean;//005113E0
    //procedure sub_005113F4(?:?; ?:?);//005113F4
    procedure sub_00511418(?:TScrollBarStyleHook; ?:TRect);//00511418
    //procedure sub_00511718(?:?; ?:?);//00511718
    //procedure sub_0051176C(?:TScrollBarStyleHook; ?:?);//0051176C
    //procedure sub_00511838(?:TScrollBarStyleHook; ?:?);//00511838
    //procedure sub_00511908(?:?; ?:?);//00511908
    procedure sub_0051192C(?:TScrollBarStyleHook; ?:TRect);//0051192C
    //procedure sub_00511C28(?:?; ?:?);//00511C28
    //procedure sub_00511C7C(?:TScrollBarStyleHook; ?:?);//00511C7C
    //procedure sub_00511D44(?:TScrollBarStyleHook; ?:?);//00511D44
    //procedure sub_00511E10(?:?; ?:HDC);//00511E10
    //procedure sub_00512104(?:?; ?:HDC);//00512104
    procedure WMNCPaint(var Message:Messages.TMessage);//005123E0
    procedure WMMouseWheel;//005123EC
    //procedure WMLButtonDown(?:?);//00512404
    //procedure WMLButtonUp(?:?);//0051252C
    //procedure WMMouseMove(?:?);//005126A4
    procedure WMLButtonDblClk;//00512984
    procedure WMSetFocus(var Message:Messages.TMessage);//0051298C
    procedure WMKillFocus(var Message:Messages.TMessage);//005129A4
    procedure WMKeyDown;//005129BC
    procedure WMKeyUp;//005129D4
    procedure sub_005129EC;//005129EC
    //procedure sub_00512A3C(?:?);//00512A3C
    constructor Create(AControl:TWinControl);//00512AB4
    //procedure WMNCCalcSize(?:?);//00512AF8
    procedure sub_00512B44;//00512B44
    procedure sub_00512B4C;//00512B4C
    //procedure sub_00512B54(?:?);//00512B54
    procedure sub_00512C74(?:TEditStyleHook);//00512C74
    //procedure sub_00512CDC(?:?);//00512CDC
    constructor Create(AControl:TWinControl);//00512D8C
    destructor Destroy();//00512E1C
    //function sub_00512E74(?:?):?;//00512E74
    function sub_00512E88:Boolean;//00512E88
    //procedure sub_00512E98(?:?; ?:?);//00512E98
    procedure sub_00512EDC(?:TComboBoxStyleHook);//00512EDC
    //function sub_00512EF0(?:TComboBoxStyleHook):?;//00512EF0
    //procedure sub_00512F44(?:TComboBoxStyleHook; ?:?);//00512F44
    //function sub_00512F90(?:TComboBoxStyleHook):?;//00512F90
    procedure sub_0051302C(?:TComboBoxStyleHook);//0051302C
    //procedure sub_005130AC(?:?);//005130AC
    //procedure sub_00513440(?:?; ?:?; ?:?; ?:?);//00513440
    //procedure WMParentNotify(?:?);//005134EC
    //procedure sub_00513524(?:?);//00513524
    procedure sub_005135FC;//005135FC
    procedure sub_00513610;//00513610
    //procedure WMMouseMove(?:?);//00513638
    procedure sub_005136C0;//005136C0
    procedure WMDrawItem;//005136D0
    //procedure WMPaint(?:?);//005136E0
    //procedure WMCommand(?:?);//00513900
    //procedure sub_00513960(?:?);//00513960
    //function sub_005139C0(?:TComboBoxStyleHook; ?:?):?;//005139C0
    //procedure sub_00513A00(?:?);//00513A00
    //procedure sub_00513A0C(?:?);//00513A0C
    //procedure sub_00513A18(?:?; ?:?);//00513A18
    //procedure sub_00513AA8(?:?; ?:?);//00513AA8
    //procedure sub_00513AF8(?:?; ?:?);//00513AF8
    //procedure sub_00513B48(?:TComboBoxStyleHook; ?:?);//00513B48
    //procedure sub_00513BC8(?:?; ?:?);//00513BC8
    //procedure sub_00513DD8(?:?; ?:?);//00513DD8
    //procedure sub_00513E2C(?:?; ?:?);//00513E2C
    //procedure sub_00513E78(?:?; ?:?);//00513E78
    //procedure sub_00513EC4(?:?; ?:TCanvas; ?:TRect);//00513EC4
    procedure sub_00513EF0(?:TComboBoxStyleHook; ?:HDC);//00513EF0
    procedure sub_0051421C(?:TComboBoxStyleHook);//0051421C
    //procedure sub_005143C4(?:?; ?:?);//005143C4
    //procedure sub_00514590(?:?; ?:?);//00514590
    //procedure sub_00514654(?:?; ?:?);//00514654
    //procedure sub_0051487C(?:?; ?:?);//0051487C
    //procedure sub_00514D8C(?:?; ?:?);//00514D8C
    //procedure sub_00515260(?:?; ?:?);//00515260
    //procedure sub_00515388(?:?; ?:?);//00515388
    //procedure sub_00515404(?:?; ?:?);//00515404
    //procedure sub_0051555C(?:?);//0051555C
    //procedure sub_00515974(?:?);//00515974
    constructor Create(AControl:TWinControl);//00515C30
    procedure WMSetFocus(Message:Messages.TMessage);//00515C70
    //procedure sub_00515CA8(?:?);//00515CA8
    procedure sub_00515D18(?:TListBoxStyleHook);//00515D18
    procedure WMKillFocus(Message:Messages.TMessage);//00515D80
    procedure sub_00515DB8(?:TBitmap);//00515DB8
    constructor Create(AControl:TWinControl);//00515DF8
    //function sub_00515E44(?:TButtonStyleHook):?;//00515E44
    //procedure sub_00515E80(?:TButtonStyleHook; ?:?);//00515E80
    //procedure sub_00515F64(?:?);//00515F64
    //procedure sub_00515FB8(?:?; ?:?; ?:?; ?:?);//00515FB8
    //function sub_00516154(?:?):?;//00516154
    //procedure sub_00516204(?:?; ?:?);//00516204
    //function sub_00516C14(?:?):?;//00516C14
    procedure sub_00516C68;//00516C68
    procedure sub_00516C74(?:TButtonStyleHook);//00516C74
    procedure WMSetFocus(Message:Messages.TMessage);//00516CC4
    //procedure sub_00516CFC(?:?);//00516CFC
    procedure WMKillFocus(Message:Messages.TMessage);//00516E44
    //procedure WMKeyDown(?:?);//00516E7C
    //procedure WMKeyUp(?:?);//00516E98
    //procedure sub_00516EE4(?:?);//00516EE4
    procedure WMLButtonDblClk;//00516F48
    //procedure WMLButtonDown(?:?);//00516F58
    procedure WMLButtonUp;//00517008
    //procedure WMMouseMove(?:?);//0051703C
    procedure sub_00517078;//00517078
    procedure sub_00517090;//00517090
    //procedure sub_005170A8(?:?; ?:?; ?:?);//005170A8
    constructor Create(AControl:TWinControl);//0051710C
    function sub_00517150(?:TCheckBoxStyleHook):Boolean;//00517150
    //function sub_00517174(?:?):?;//00517174
    //procedure sub_00517210(?:?);//00517210
    //procedure sub_005175F0(?:?);//005175F0
    //procedure sub_00517644(?:?);//00517644
    //procedure WMLButtonDblClk(?:?);//00517674
    //procedure WMLButtonDown(?:?);//005176A4
    //procedure WMLButtonUp(?:?);//005176D8
    procedure sub_0051770C;//0051770C
    //procedure WMKeyUp(?:?);//00517714
    //procedure WMKeyDown(?:?);//00517754
    procedure sub_00517794;//00517794
    procedure sub_005177AC;//005177AC
    constructor Create(AControl:TWinControl);//005177C4
    //function sub_00517808(?:?):?;//00517808
    procedure sub_00517884;//00517884
    //procedure sub_0051788C(?:TGroupBoxStyleHook; ?:?; ?:?);//0051788C
    //procedure sub_00517968(?:TGroupBoxStyleHook; ?:?; ?:?);//00517968
    procedure WMEraseBkgnd(Message:Messages.TMessage);//00517A08
    //procedure WMPaint(?:?);//00517A10
    procedure sub_00517AE4;//00517AE4
    //procedure sub_00517AEC(?:?);//00517AEC
    //procedure sub_00517B3C(?:?);//00517B3C
    constructor Create(AControl:TWinControl);//00517C9C
    //procedure sub_00517CE8(?:?);//00517CE8
    //procedure sub_00517E30(?:?);//00517E30
    procedure sub_00517F78;//00517F78

implementation

//00510A3C
procedure TCustomStaticText.CreateParams(var Params:TCreateParams);
begin
{*
 00510A3C    push        ebx
 00510A3D    push        esi
 00510A3E    push        edi
 00510A3F    mov         edi,edx
 00510A41    mov         ebx,eax
 00510A43    mov         edx,edi
 00510A45    mov         eax,ebx
 00510A47    call        TWinControl.CreateParams
 00510A4C    mov         ecx,510AB0;'S'
 00510A51    mov         edx,edi
 00510A53    mov         eax,ebx
 00510A55    call        TWinControl.CreateSubClass
 00510A5A    mov         eax,ebx
 00510A5C    mov         si,0FFC6
 00510A60    call        @CallDynaInst;TControl.sub_004E7698
 00510A65    and         eax,7F
 00510A68    lea         eax,[eax+eax*2]
 00510A6B    lea         eax,[eax*4+7A1484]
 00510A72    movzx       edx,byte ptr [ebx+290];TCustomStaticText.FAlignment:TAlignment
 00510A79    mov         eax,dword ptr [eax+edx*4]
 00510A7C    mov         edx,dword ptr [edi+4];TCreateParams.Style:DWORD
 00510A7F    or          edx,100
 00510A85    or          eax,edx
 00510A87    movzx       edx,byte ptr [ebx+292];TCustomStaticText.FBorderStyle:TStaticBorderStyle
 00510A8E    or          eax,dword ptr [edx*4+7A149C]
 00510A95    mov         dword ptr [edi+4],eax;TCreateParams.Style:DWORD
 00510A98    cmp         byte ptr [ebx+298],0;TCustomStaticText.FShowAccelChar:Boolean
>00510A9F    jne         00510AA8
 00510AA1    or          dword ptr [edi+4],80;TCreateParams.Style:DWORD
 00510AA8    and         dword ptr [edi+24],0FFFFFFFE;TCreateParams.WindowClass:TWndClass
 00510AAC    pop         edi
 00510AAD    pop         esi
 00510AAE    pop         ebx
 00510AAF    ret
*}
end;

//00510AC0
{*procedure TCustomStaticText.CMDialogChar(?:?);
begin
 00510AC0    push        ebp
 00510AC1    mov         ebp,esp
 00510AC3    add         esp,0FFFFFFF8
 00510AC6    push        ebx
 00510AC7    push        esi
 00510AC8    push        edi
 00510AC9    xor         ecx,ecx
 00510ACB    mov         dword ptr [ebp-8],ecx
 00510ACE    mov         dword ptr [ebp-4],edx
 00510AD1    mov         ebx,eax
 00510AD3    xor         eax,eax
 00510AD5    push        ebp
 00510AD6    push        510B5A
 00510ADB    push        dword ptr fs:[eax]
 00510ADE    mov         dword ptr fs:[eax],esp
 00510AE1    cmp         dword ptr [ebx+294],0;TCustomStaticText.FFocusControl:TWinControl
>00510AE8    je          00510B44
 00510AEA    mov         eax,ebx
 00510AEC    mov         edx,dword ptr [eax]
 00510AEE    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 00510AF1    test        al,al
>00510AF3    je          00510B44
 00510AF5    cmp         byte ptr [ebx+298],0;TCustomStaticText.FShowAccelChar:Boolean
>00510AFC    je          00510B44
 00510AFE    lea         edx,[ebp-8]
 00510B01    mov         eax,ebx
 00510B03    call        TControl.GetText
 00510B08    mov         edx,dword ptr [ebp-8]
 00510B0B    mov         eax,dword ptr [ebp-4]
 00510B0E    movzx       eax,word ptr [eax+4]
 00510B12    call        IsAccel
 00510B17    test        al,al
>00510B19    je          00510B44
 00510B1B    mov         edi,dword ptr [ebx+294];TCustomStaticText.FFocusControl:TWinControl
 00510B21    mov         eax,edi
 00510B23    mov         si,0FFB4
 00510B27    call        @CallDynaInst;TWinControl.sub_004EFD3C
 00510B2C    test        al,al
>00510B2E    je          00510B44
 00510B30    mov         eax,edi
 00510B32    mov         edx,dword ptr [eax]
 00510B34    call        dword ptr [edx+104];TWinControl.SetFocus
 00510B3A    mov         eax,dword ptr [ebp-4]
 00510B3D    mov         dword ptr [eax+0C],1
 00510B44    xor         eax,eax
 00510B46    pop         edx
 00510B47    pop         ecx
 00510B48    pop         ecx
 00510B49    mov         dword ptr fs:[eax],edx
 00510B4C    push        510B61
 00510B51    lea         eax,[ebp-8]
 00510B54    call        @UStrClr
 00510B59    ret
>00510B5A    jmp         @HandleFinally
>00510B5F    jmp         00510B51
 00510B61    pop         edi
 00510B62    pop         esi
 00510B63    pop         ebx
 00510B64    pop         ecx
 00510B65    pop         ecx
 00510B66    pop         ebp
 00510B67    ret
end;*}

//00510B68
procedure TCustomStaticText.CMFontChanged;
begin
{*
 00510B68    push        ebx
 00510B69    mov         ebx,eax
 00510B6B    mov         eax,ebx
 00510B6D    call        TWinControl.CMFontChanged
 00510B72    mov         eax,ebx
 00510B74    call        00510BB0
 00510B79    pop         ebx
 00510B7A    ret
*}
end;

//00510B7C
procedure TCustomStaticText.CMTextChanged;
begin
{*
 00510B7C    push        esi
 00510B7D    mov         esi,eax
 00510B7F    mov         eax,esi
 00510B81    call        TWinControl.CMTextChanged
 00510B86    mov         eax,esi
 00510B88    call        00510BB0
 00510B8D    mov         eax,esi
 00510B8F    mov         edx,dword ptr [eax]
 00510B91    call        dword ptr [edx+0A8];TWinControl.Invalidate
 00510B97    pop         esi
 00510B98    ret
*}
end;

//00510B9C
procedure TCustomStaticText.CMFontChanged(var Message:TMessage);
begin
{*
 00510B9C    push        ebx
 00510B9D    mov         ebx,eax
 00510B9F    mov         eax,ebx
 00510BA1    call        TWinControl.CMFontChanged
 00510BA6    mov         eax,ebx
 00510BA8    call        00510BB0
 00510BAD    pop         ebx
 00510BAE    ret
*}
end;

//00510BB0
procedure sub_00510BB0(?:TCustomStaticText);
begin
{*
 00510BB0    push        ebp
 00510BB1    mov         ebp,esp
 00510BB3    add         esp,0FFFFFFE8
 00510BB6    push        ebx
 00510BB7    push        esi
 00510BB8    xor         edx,edx
 00510BBA    mov         dword ptr [ebp-18],edx
 00510BBD    mov         dword ptr [ebp-4],edx
 00510BC0    mov         dword ptr [ebp-8],eax
 00510BC3    xor         eax,eax
 00510BC5    push        ebp
 00510BC6    push        510CD5
 00510BCB    push        dword ptr fs:[eax]
 00510BCE    mov         dword ptr fs:[eax],esp
 00510BD1    mov         eax,dword ptr [ebp-8]
 00510BD4    test        byte ptr [eax+1C],2;TCustomStaticText.FComponentState:TComponentState
>00510BD8    jne         00510CB7
 00510BDE    mov         eax,dword ptr [ebp-8]
 00510BE1    cmp         byte ptr [eax+291],0;TCustomStaticText.FAutoSize:Boolean
>00510BE8    je          00510CB7
 00510BEE    push        0
 00510BF0    call        user32.GetDC
 00510BF5    mov         dword ptr [ebp-0C],eax
 00510BF8    xor         edx,edx
 00510BFA    push        ebp
 00510BFB    push        510C7B
 00510C00    push        dword ptr fs:[edx]
 00510C03    mov         dword ptr fs:[edx],esp
 00510C06    mov         eax,dword ptr [ebp-8]
 00510C09    mov         eax,dword ptr [eax+74];TCustomStaticText.FFont:TFont
 00510C0C    call        TFont.GetHandle
 00510C11    push        eax
 00510C12    mov         eax,dword ptr [ebp-0C]
 00510C15    push        eax
 00510C16    call        gdi32.SelectObject
 00510C1B    mov         esi,eax
 00510C1D    lea         edx,[ebp-4]
 00510C20    mov         eax,dword ptr [ebp-8]
 00510C23    call        TControl.GetText
 00510C28    lea         edx,[ebp-18]
 00510C2B    mov         eax,dword ptr [ebp-8]
 00510C2E    call        TControl.GetText
 00510C33    mov         eax,dword ptr [ebp-18]
 00510C36    mov         ebx,eax
 00510C38    test        ebx,ebx
>00510C3A    je          00510C41
 00510C3C    sub         ebx,4
 00510C3F    mov         ebx,dword ptr [ebx]
 00510C41    lea         eax,[ebp-14]
 00510C44    push        eax
 00510C45    push        ebx
 00510C46    mov         eax,dword ptr [ebp-4]
 00510C49    call        @UStrToPWChar
 00510C4E    push        eax
 00510C4F    mov         eax,dword ptr [ebp-0C]
 00510C52    push        eax
 00510C53    call        gdi32.GetTextExtentPoint32W
 00510C58    push        esi
 00510C59    mov         eax,dword ptr [ebp-0C]
 00510C5C    push        eax
 00510C5D    call        gdi32.SelectObject
 00510C62    xor         eax,eax
 00510C64    pop         edx
 00510C65    pop         ecx
 00510C66    pop         ecx
 00510C67    mov         dword ptr fs:[eax],edx
 00510C6A    push        510C82
 00510C6F    mov         eax,dword ptr [ebp-0C]
 00510C72    push        eax
 00510C73    push        0
 00510C75    call        user32.ReleaseDC
 00510C7A    ret
>00510C7B    jmp         @HandleFinally
>00510C80    jmp         00510C6F
 00510C82    push        5
 00510C84    call        user32.GetSystemMetrics
 00510C89    add         eax,eax
 00510C8B    add         eax,eax
 00510C8D    add         eax,dword ptr [ebp-14]
 00510C90    push        eax
 00510C91    push        6
 00510C93    call        user32.GetSystemMetrics
 00510C98    add         eax,eax
 00510C9A    add         eax,eax
 00510C9C    add         eax,dword ptr [ebp-10]
 00510C9F    push        eax
 00510CA0    mov         eax,dword ptr [ebp-8]
 00510CA3    mov         ecx,dword ptr [eax+54];TCustomStaticText.FTop:Integer
 00510CA6    mov         eax,dword ptr [ebp-8]
 00510CA9    mov         edx,dword ptr [eax+50];TCustomStaticText.FLeft:Integer
 00510CAC    mov         eax,dword ptr [ebp-8]
 00510CAF    mov         ebx,dword ptr [eax]
 00510CB1    call        dword ptr [ebx+0B0];TWinControl.SetBounds
 00510CB7    xor         eax,eax
 00510CB9    pop         edx
 00510CBA    pop         ecx
 00510CBB    pop         ecx
 00510CBC    mov         dword ptr fs:[eax],edx
 00510CBF    push        510CDC
 00510CC4    lea         eax,[ebp-18]
 00510CC7    call        @UStrClr
 00510CCC    lea         eax,[ebp-4]
 00510CCF    call        @UStrClr
 00510CD4    ret
>00510CD5    jmp         @HandleFinally
>00510CDA    jmp         00510CC4
 00510CDC    pop         esi
 00510CDD    pop         ebx
 00510CDE    mov         esp,ebp
 00510CE0    pop         ebp
 00510CE1    ret
*}
end;

//00510CE4
procedure TCustomStaticText.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 00510CE4    push        ebx
 00510CE5    push        esi
 00510CE6    push        edi
 00510CE7    mov         ebx,ecx
 00510CE9    mov         esi,edx
 00510CEB    mov         edi,eax
 00510CED    mov         ecx,ebx
 00510CEF    mov         edx,esi
 00510CF1    mov         eax,edi
 00510CF3    call        TWinControl.Notification
 00510CF8    cmp         bl,1
>00510CFB    jne         00510D0D
 00510CFD    cmp         esi,dword ptr [edi+294];TCustomStaticText.FFocusControl:TWinControl
>00510D03    jne         00510D0D
 00510D05    xor         eax,eax
 00510D07    mov         dword ptr [edi+294],eax;TCustomStaticText.FFocusControl:TWinControl
 00510D0D    pop         edi
 00510D0E    pop         esi
 00510D0F    pop         ebx
 00510D10    ret
*}
end;

//00510D14
procedure TStaticText.SetAlignment(Value:TAlignment);
begin
{*
 00510D14    cmp         dl,byte ptr [eax+290];TStaticText.FAlignment:TAlignment
>00510D1A    je          00510D27
 00510D1C    mov         byte ptr [eax+290],dl;TStaticText.FAlignment:TAlignment
 00510D22    call        TWinControl.RecreateWnd
 00510D27    ret
*}
end;

//00510D28
procedure TStaticText.SetAutoSize(Value:Boolean);
begin
{*
 00510D28    cmp         dl,byte ptr [eax+291];TStaticText.FAutoSize:Boolean
>00510D2E    je          00510D3F
 00510D30    mov         byte ptr [eax+291],dl;TStaticText.FAutoSize:Boolean
 00510D36    test        dl,dl
>00510D38    je          00510D3F
 00510D3A    call        00510BB0
 00510D3F    ret
*}
end;

//00510D40
procedure TStaticText.SetBorderStyle(Value:TStaticBorderStyle);
begin
{*
 00510D40    cmp         dl,byte ptr [eax+292];TStaticText.FBorderStyle:TStaticBorderStyle
>00510D46    je          00510D53
 00510D48    mov         byte ptr [eax+292],dl;TStaticText.FBorderStyle:TStaticBorderStyle
 00510D4E    call        TWinControl.RecreateWnd
 00510D53    ret
*}
end;

//00510D54
procedure TStaticText.SetFocusControl(Value:TWinControl);
begin
{*
 00510D54    mov         dword ptr [eax+294],edx;TStaticText.FFocusControl:TWinControl
 00510D5A    test        edx,edx
>00510D5C    je          00510D64
 00510D5E    xchg        eax,edx
 00510D5F    call        TComponent.FreeNotification
 00510D64    ret
*}
end;

//00510D68
procedure TStaticText.SetShowAccelChar(Value:Boolean);
begin
{*
 00510D68    cmp         dl,byte ptr [eax+298];TStaticText.FShowAccelChar:Boolean
>00510D6E    je          00510D7B
 00510D70    mov         byte ptr [eax+298],dl;TStaticText.FShowAccelChar:Boolean
 00510D76    call        TWinControl.RecreateWnd
 00510D7B    ret
*}
end;

//00510D7C
{*procedure TCustomStaticText.sub_00510D7C(?:?);
begin
 00510D7C    push        ebx
 00510D7D    push        esi
 00510D7E    mov         esi,edx
 00510D80    mov         ebx,eax
 00510D82    call        StyleServices
 00510D87    mov         edx,dword ptr [eax]
 00510D89    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 00510D8C    test        al,al
>00510D8E    je          00510DCF
 00510D90    mov         eax,ebx
 00510D92    call        TStaticText.GetTransparent
 00510D97    test        al,al
>00510D99    je          00510DCF
 00510D9B    push        1
 00510D9D    mov         eax,dword ptr [esi+4]
 00510DA0    push        eax
 00510DA1    call        gdi32.SetBkMode
 00510DA6    push        0
 00510DA8    push        0
 00510DAA    push        0
 00510DAC    mov         eax,ebx
 00510DAE    call        TWinControl.GetHandle
 00510DB3    push        eax
 00510DB4    call        StyleServices
 00510DB9    mov         ecx,dword ptr [esi+4]
 00510DBC    pop         edx
 00510DBD    call        TCustomStyleServices.DrawParentBackground
 00510DC2    push        5
 00510DC4    call        gdi32.GetStockObject
 00510DC9    mov         dword ptr [esi+0C],eax
 00510DCC    pop         esi
 00510DCD    pop         ebx
 00510DCE    ret
 00510DCF    mov         edx,esi
 00510DD1    mov         eax,ebx
 00510DD3    mov         ecx,dword ptr [eax]
 00510DD5    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 00510DD8    pop         esi
 00510DD9    pop         ebx
 00510DDA    ret
end;*}

//00510DDC
procedure TStaticText.SetTransparent(Value:Boolean);
begin
{*
 00510DDC    push        ebx
 00510DDD    push        esi
 00510DDE    mov         ebx,edx
 00510DE0    mov         esi,eax
 00510DE2    mov         eax,esi
 00510DE4    call        TStaticText.GetTransparent
 00510DE9    cmp         bl,al
>00510DEB    je          00510E0F
 00510DED    test        bl,bl
>00510DEF    je          00510DFD
 00510DF1    mov         eax,[00510E14];0x40 gvar_00510E14
 00510DF6    not         eax
 00510DF8    and         dword ptr [esi+60],eax;TStaticText.FControlStyle:TControlStyle
>00510DFB    jmp         00510E05
 00510DFD    mov         eax,[00510E14];0x40 gvar_00510E14
 00510E02    or          dword ptr [esi+60],eax;TStaticText.FControlStyle:TControlStyle
 00510E05    mov         eax,esi
 00510E07    mov         edx,dword ptr [eax]
 00510E09    call        dword ptr [edx+0A8];TWinControl.Invalidate
 00510E0F    pop         esi
 00510E10    pop         ebx
 00510E11    ret
*}
end;

//00510E18
{*function TStaticText.GetTransparent:?;
begin
 00510E18    test        byte ptr [eax+60],40;TStaticText.FControlStyle:TControlStyle
 00510E1C    setne       al
 00510E1F    xor         al,1
 00510E21    ret
end;*}

//00510E24
constructor TScrollBarStyleHook.TScrollWindow.Create(AOwner:TComponent);
begin
{*
 00510E24    push        ebx
 00510E25    push        esi
 00510E26    test        dl,dl
>00510E28    je          00510E32
 00510E2A    add         esp,0FFFFFFF0
 00510E2D    call        @ClassCreate
 00510E32    mov         ebx,edx
 00510E34    mov         esi,eax
 00510E36    xor         edx,edx
 00510E38    mov         eax,esi
 00510E3A    call        TWinControl.Create
 00510E3F    mov         eax,[00510E64];^gvar_00800000
 00510E44    or          dword ptr [esi+60],eax
 00510E47    mov         eax,esi
 00510E49    test        bl,bl
>00510E4B    je          00510E5C
 00510E4D    call        @AfterConstruction
 00510E52    pop         dword ptr fs:[0]
 00510E59    add         esp,0C
 00510E5C    mov         eax,esi
 00510E5E    pop         esi
 00510E5F    pop         ebx
 00510E60    ret
*}
end;

//00510E68
procedure TScrollBarStyleHook.TScrollWindow.CreateParams(var Params:TCreateParams);
begin
{*
 00510E68    push        ebx
 00510E69    mov         ebx,edx
 00510E6B    mov         edx,ebx
 00510E6D    call        TWinControl.CreateParams
 00510E72    mov         eax,dword ptr [ebx+4];TCreateParams.Style:DWORD
 00510E75    or          eax,40000000
 00510E7A    or          eax,2000000
 00510E7F    or          eax,4000000
 00510E84    mov         dword ptr [ebx+4],eax;TCreateParams.Style:DWORD
 00510E87    or          dword ptr [ebx+8],4;TCreateParams.ExStyle:DWORD
 00510E8B    pop         ebx
 00510E8C    ret
*}
end;

//00510E90
{*procedure TScrollBarStyleHook.TScrollWindow.WMNCHitTest(?:?);
begin
 00510E90    cmp         byte ptr [eax+290],0
>00510E97    jne         00510EA0
 00510E99    mov         dword ptr [edx+0C],0FFFFFFFF
 00510EA0    ret
end;*}

//00510EA4
{*procedure TScrollBarStyleHook.TScrollWindow.WMEraseBkgnd(?:?);
begin
 00510EA4    mov         dword ptr [edx+0C],1
 00510EAB    ret
end;*}

//00510EAC
{*procedure TScrollBarStyleHook.TScrollWindow.WMPaint(?:?);
begin
 00510EAC    push        ebp
 00510EAD    mov         ebp,esp
 00510EAF    add         esp,0FFFFFFA4
 00510EB2    mov         dword ptr [ebp-4],eax
 00510EB5    lea         eax,[ebp-4C]
 00510EB8    push        eax
 00510EB9    mov         eax,dword ptr [ebp-4]
 00510EBC    call        TWinControl.GetHandle
 00510EC1    push        eax
 00510EC2    call        user32.BeginPaint
 00510EC7    xor         eax,eax
 00510EC9    push        ebp
 00510ECA    push        511058
 00510ECF    push        dword ptr fs:[eax]
 00510ED2    mov         dword ptr fs:[eax],esp
 00510ED5    mov         eax,dword ptr [ebp-4]
 00510ED8    cmp         dword ptr [eax+294],0
>00510EDF    je          00510F57
 00510EE1    mov         eax,dword ptr [ebp-4]
 00510EE4    call        TWinControl.GetHandle
 00510EE9    push        eax
 00510EEA    call        user32.GetWindowDC
 00510EEF    mov         dword ptr [ebp-8],eax
 00510EF2    xor         eax,eax
 00510EF4    push        ebp
 00510EF5    push        510F50
 00510EFA    push        dword ptr fs:[eax]
 00510EFD    mov         dword ptr fs:[eax],esp
 00510F00    mov         eax,dword ptr [ebp-4]
 00510F03    cmp         byte ptr [eax+298],0
>00510F0A    je          00510F1F
 00510F0C    mov         eax,dword ptr [ebp-4]
 00510F0F    mov         eax,dword ptr [eax+294]
 00510F15    mov         edx,dword ptr [ebp-8]
 00510F18    call        00511E10
>00510F1D    jmp         00510F30
 00510F1F    mov         eax,dword ptr [ebp-4]
 00510F22    mov         eax,dword ptr [eax+294]
 00510F28    mov         edx,dword ptr [ebp-8]
 00510F2B    call        00512104
 00510F30    xor         eax,eax
 00510F32    pop         edx
 00510F33    pop         ecx
 00510F34    pop         ecx
 00510F35    mov         dword ptr fs:[eax],edx
 00510F38    push        511038
 00510F3D    mov         eax,dword ptr [ebp-8]
 00510F40    push        eax
 00510F41    mov         eax,dword ptr [ebp-4]
 00510F44    call        TWinControl.GetHandle
 00510F49    push        eax
 00510F4A    call        user32.ReleaseDC
 00510F4F    ret
>00510F50    jmp         @HandleFinally
>00510F55    jmp         00510F3D
 00510F57    mov         eax,dword ptr [ebp-4]
 00510F5A    cmp         byte ptr [eax+290],0
>00510F61    je          00511038
 00510F67    mov         dl,1
 00510F69    mov         eax,[004BF670];TCanvas
 00510F6E    call        TCanvas.Create;TCanvas.Create
 00510F73    mov         dword ptr [ebp-0C],eax
 00510F76    xor         eax,eax
 00510F78    push        ebp
 00510F79    push        511031
 00510F7E    push        dword ptr fs:[eax]
 00510F81    mov         dword ptr fs:[eax],esp
 00510F84    mov         eax,dword ptr [ebp-4]
 00510F87    call        TWinControl.GetHandle
 00510F8C    push        eax
 00510F8D    call        user32.GetWindowDC
 00510F92    mov         edx,eax
 00510F94    mov         eax,dword ptr [ebp-0C]
 00510F97    call        TCanvas.SetHandle
 00510F9C    call        StyleServices
 00510FA1    mov         edx,dword ptr [eax]
 00510FA3    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 00510FA6    test        al,al
>00510FA8    je          00510FFA
 00510FAA    mov         eax,dword ptr [ebp-0C]
 00510FAD    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 00510FB0    xor         edx,edx
 00510FB2    call        TBrush.SetStyle
 00510FB7    call        StyleServices
 00510FBC    xor         ecx,ecx
 00510FBE    mov         edx,0FF00000F
 00510FC3    call        TCustomStyleServices.ColorToRGB
 00510FC8    mov         edx,eax
 00510FCA    mov         eax,dword ptr [ebp-0C]
 00510FCD    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 00510FD0    call        TBrush.SetColor
 00510FD5    mov         eax,dword ptr [ebp-4]
 00510FD8    mov         eax,dword ptr [eax+5C]
 00510FDB    push        eax
 00510FDC    lea         eax,[ebp-5C]
 00510FDF    push        eax
 00510FE0    mov         eax,dword ptr [ebp-4]
 00510FE3    mov         ecx,dword ptr [eax+58]
 00510FE6    xor         edx,edx
 00510FE8    xor         eax,eax
 00510FEA    call        Rect
 00510FEF    lea         edx,[ebp-5C]
 00510FF2    mov         eax,dword ptr [ebp-0C]
 00510FF5    mov         ecx,dword ptr [eax]
 00510FF7    call        dword ptr [ecx+54];TCanvas.FillRect
 00510FFA    xor         eax,eax
 00510FFC    pop         edx
 00510FFD    pop         ecx
 00510FFE    pop         ecx
 00510FFF    mov         dword ptr fs:[eax],edx
 00511002    push        511038
 00511007    mov         eax,dword ptr [ebp-0C]
 0051100A    call        TCanvas.GetHandle
 0051100F    push        eax
 00511010    mov         eax,dword ptr [ebp-4]
 00511013    call        TWinControl.GetHandle
 00511018    push        eax
 00511019    call        user32.ReleaseDC
 0051101E    xor         edx,edx
 00511020    mov         eax,dword ptr [ebp-0C]
 00511023    call        TCanvas.SetHandle
 00511028    mov         eax,dword ptr [ebp-0C]
 0051102B    call        TObject.Free
 00511030    ret
>00511031    jmp         @HandleFinally
>00511036    jmp         00511007
 00511038    xor         eax,eax
 0051103A    pop         edx
 0051103B    pop         ecx
 0051103C    pop         ecx
 0051103D    mov         dword ptr fs:[eax],edx
 00511040    push        51105F
 00511045    lea         eax,[ebp-4C]
 00511048    push        eax
 00511049    mov         eax,dword ptr [ebp-4]
 0051104C    call        TWinControl.GetHandle
 00511051    push        eax
 00511052    call        user32.EndPaint
 00511057    ret
>00511058    jmp         @HandleFinally
>0051105D    jmp         00511045
 0051105F    mov         esp,ebp
 00511061    pop         ebp
 00511062    ret
end;*}

//00511064
procedure sub_00511064;
begin
{*
 00511064    call        004ECAFC
 00511069    ret
*}
end;

//0051106C
constructor TScrollBarStyleHook.Create(AControl:TWinControl);
begin
{*
 0051106C    push        ebx
 0051106D    push        esi
 0051106E    test        dl,dl
>00511070    je          0051107A
 00511072    add         esp,0FFFFFFF0
 00511075    call        @ClassCreate
 0051107A    mov         ebx,edx
 0051107C    mov         esi,eax
 0051107E    xor         edx,edx
 00511080    mov         eax,esi
 00511082    call        TMouseTrackControlStyleHook.Create
 00511087    xor         eax,eax
 00511089    mov         dword ptr [esi+28],eax;TScrollBarStyleHook.FScrollWnd:TScrollWindow
 0051108C    mov         byte ptr [esi+2C],1A;TScrollBarStyleHook.FVSliderState:TThemedScrollBar
 00511090    mov         byte ptr [esi+2D],2;TScrollBarStyleHook.FVUpState:TThemedScrollBar
 00511094    mov         byte ptr [esi+2E],6;TScrollBarStyleHook.FVDownState:TThemedScrollBar
 00511098    mov         byte ptr [esi+2F],16;TScrollBarStyleHook.FHSliderState:TThemedScrollBar
 0051109C    mov         byte ptr [esi+30],0A;TScrollBarStyleHook.FHUpState:TThemedScrollBar
 005110A0    mov         byte ptr [esi+31],0E;TScrollBarStyleHook.FHDownState:TThemedScrollBar
 005110A4    mov         eax,esi
 005110A6    test        bl,bl
>005110A8    je          005110B9
 005110AA    call        @AfterConstruction
 005110AF    pop         dword ptr fs:[0]
 005110B6    add         esp,0C
 005110B9    mov         eax,esi
 005110BB    pop         esi
 005110BC    pop         ebx
 005110BD    ret
*}
end;

//005110C0
destructor TScrollBarStyleHook.Destroy();
begin
{*
 005110C0    push        ebx
 005110C1    push        esi
 005110C2    push        ecx
 005110C3    call        @BeforeDestruction
 005110C8    mov         ebx,edx
 005110CA    mov         esi,eax
 005110CC    mov         eax,dword ptr [esi+28];TScrollBarStyleHook.FScrollWnd:TScrollWindow
 005110CF    test        eax,eax
>005110D1    je          005110F2
 005110D3    xor         edx,edx
 005110D5    mov         dword ptr [eax+294],edx
 005110DB    lea         eax,[esi+28];TScrollBarStyleHook.FScrollWnd:TScrollWindow
 005110DE    mov         dword ptr [esp],eax
 005110E1    mov         eax,dword ptr [esp]
 005110E4    mov         eax,dword ptr [eax]
 005110E6    mov         edx,dword ptr [esp]
 005110E9    xor         ecx,ecx
 005110EB    mov         dword ptr [edx],ecx
 005110ED    call        TObject.Free
 005110F2    mov         dl,0FC
 005110F4    and         dl,bl
 005110F6    mov         eax,esi
 005110F8    call        TMouseTrackControlStyleHook.Destroy
 005110FD    test        bl,bl
>005110FF    jle         00511108
 00511101    mov         eax,esi
 00511103    call        @ClassDestroy
 00511108    pop         edx
 00511109    pop         esi
 0051110A    pop         ebx
 0051110B    ret
*}
end;

//0051110C
function sub_0051110C:Boolean;
begin
{*
 0051110C    mov         eax,dword ptr [eax+8];TScrollBarStyleHook.FControl:TWinControl
 0051110F    test        byte ptr [eax+188],2;TWinControl.FStyleElements:TStyleElements
 00511116    setne       al
 00511119    ret
*}
end;

//0051111C
{*function sub_0051111C:?;
begin
 0051111C    push        ebx
 0051111D    push        esi
 0051111E    push        edi
 0051111F    mov         edi,eax
 00511121    xor         ebx,ebx
 00511123    mov         esi,dword ptr [edi+8];TScrollBarStyleHook.FControl:TWinControl
 00511126    mov         eax,esi
 00511128    mov         edx,dword ptr ds:[502F40];TScrollBar
 0051112E    call        @IsClass
 00511133    test        al,al
>00511135    je          00511142
 00511137    cmp         byte ptr [esi+204],0;TWinControl.FCtl3D:Boolean
>0051113E    je          00511142
 00511140    mov         bl,1
 00511142    mov         eax,ebx
 00511144    pop         edi
 00511145    pop         esi
 00511146    pop         ebx
 00511147    ret
end;*}

//00511148
{*procedure sub_00511148(?:TScrollBarStyleHook; ?:?);
begin
 00511148    push        ebx
 00511149    push        esi
 0051114A    push        edi
 0051114B    add         esp,0FFFFFFF0
 0051114E    mov         esi,edx
 00511150    mov         ebx,eax
 00511152    mov         edx,esp
 00511154    mov         eax,dword ptr [ebx+8]
 00511157    call        TControl.GetBoundsRect
 0051115C    mov         eax,ebx
 0051115E    mov         edx,dword ptr [eax]
 00511160    call        dword ptr [edx+4]
 00511163    test        al,al
>00511165    je          00511178
 00511167    mov         eax,esp
 00511169    mov         ecx,1
 0051116E    mov         edx,1
 00511173    call        InflateRect
 00511178    mov         edi,esi
 0051117A    mov         esi,esp
 0051117C    movs        dword ptr [edi],dword ptr [esi]
 0051117D    movs        dword ptr [edi],dword ptr [esi]
 0051117E    movs        dword ptr [edi],dword ptr [esi]
 0051117F    movs        dword ptr [edi],dword ptr [esi]
 00511180    add         esp,10
 00511183    pop         edi
 00511184    pop         esi
 00511185    pop         ebx
 00511186    ret
end;*}

//00511188
procedure TScrollBarStyleHook.CMVisibleChanged;
begin
{*
 00511188    push        ebx
 00511189    push        esi
 0051118A    mov         ebx,eax
 0051118C    mov         esi,dword ptr [ebx+28];TScrollBarStyleHook.FScrollWnd:TScrollWindow
 0051118F    test        esi,esi
>00511191    je          005111C9
 00511193    mov         eax,esi
 00511195    call        TWinControl.HandleAllocated
 0051119A    test        al,al
>0051119C    je          005111C9
 0051119E    mov         eax,dword ptr [ebx+8];TScrollBarStyleHook.FControl:TWinControl
 005111A1    cmp         byte ptr [eax+69],0;TWinControl.FVisible:Boolean
>005111A5    je          005111B9
 005111A7    push        5
 005111A9    mov         eax,dword ptr [ebx+28];TScrollBarStyleHook.FScrollWnd:TScrollWindow
 005111AC    call        TWinControl.GetHandle
 005111B1    push        eax
 005111B2    call        user32.ShowWindow
>005111B7    jmp         005111C9
 005111B9    push        0
 005111BB    mov         eax,dword ptr [ebx+28];TScrollBarStyleHook.FScrollWnd:TScrollWindow
 005111BE    call        TWinControl.GetHandle
 005111C3    push        eax
 005111C4    call        user32.ShowWindow
 005111C9    pop         esi
 005111CA    pop         ebx
 005111CB    ret
*}
end;

//005111CC
{*procedure TScrollBarStyleHook.WMPaint(?:?);
begin
 005111CC    call        005113B8
 005111D1    ret
end;*}

//005111D4
{*procedure TScrollBarStyleHook.WMShowWindow(?:?);
begin
 005111D4    push        ebx
 005111D5    push        esi
 005111D6    push        edi
 005111D7    mov         edi,edx
 005111D9    mov         ebx,eax
 005111DB    mov         edx,edi
 005111DD    mov         eax,ebx
 005111DF    call        TStyleHook.CallDefaultProc
 005111E4    mov         esi,dword ptr [ebx+28];TScrollBarStyleHook.FScrollWnd:TScrollWindow
 005111E7    test        esi,esi
>005111E9    je          0051121E
 005111EB    mov         eax,esi
 005111ED    call        TWinControl.HandleAllocated
 005111F2    test        al,al
>005111F4    je          0051121E
 005111F6    cmp         dword ptr [edi+4],0
>005111FA    je          0051120E
 005111FC    push        5
 005111FE    mov         eax,dword ptr [ebx+28];TScrollBarStyleHook.FScrollWnd:TScrollWindow
 00511201    call        TWinControl.GetHandle
 00511206    push        eax
 00511207    call        user32.ShowWindow
>0051120C    jmp         0051121E
 0051120E    push        0
 00511210    mov         eax,dword ptr [ebx+28];TScrollBarStyleHook.FScrollWnd:TScrollWindow
 00511213    call        TWinControl.GetHandle
 00511218    push        eax
 00511219    call        user32.ShowWindow
 0051121E    mov         byte ptr [ebx+14],1;TScrollBarStyleHook.FHandled:Boolean
 00511222    pop         edi
 00511223    pop         esi
 00511224    pop         ebx
 00511225    ret
end;*}

//00511228
procedure TScrollBarStyleHook.WMWindowPosChangedMsg;
begin
{*
 00511228    push        ebx
 00511229    mov         ebx,eax
 0051122B    mov         eax,ebx
 0051122D    call        TStyleHook.CallDefaultProc
 00511232    mov         eax,dword ptr [ebx+8];TScrollBarStyleHook.FControl:TWinControl
 00511235    call        TWinControl.GetHandle
 0051123A    push        eax
 0051123B    call        user32.IsWindowVisible
 00511240    test        eax,eax
>00511242    je          0051124B
 00511244    mov         eax,ebx
 00511246    call        0051132C
 0051124B    mov         byte ptr [ebx+14],1;TScrollBarStyleHook.FHandled:Boolean
 0051124F    pop         ebx
 00511250    ret
*}
end;

//00511254
procedure sub_00511254;
begin
{*
 00511254    call        0058DB4C
 00511259    ret
*}
end;

//0051125C
procedure TScrollBarStyleHook.WMMove;
begin
{*
 0051125C    push        ebx
 0051125D    mov         ebx,eax
 0051125F    mov         eax,ebx
 00511261    call        TStyleHook.CallDefaultProc
 00511266    mov         eax,ebx
 00511268    call        0051132C
 0051126D    mov         byte ptr [ebx+14],1;TScrollBarStyleHook.FHandled:Boolean
 00511271    pop         ebx
 00511272    ret
*}
end;

//00511274
procedure TScrollBarStyleHook.WMSize;
begin
{*
 00511274    push        ebx
 00511275    mov         ebx,eax
 00511277    mov         eax,ebx
 00511279    call        TStyleHook.CallDefaultProc
 0051127E    mov         eax,ebx
 00511280    call        0051132C
 00511285    mov         byte ptr [ebx+14],1;TScrollBarStyleHook.FHandled:Boolean
 00511289    pop         ebx
 0051128A    ret
*}
end;

//0051128C
procedure sub_0051128C(?:TScrollBarStyleHook);
begin
{*
 0051128C    push        ebx
 0051128D    push        esi
 0051128E    add         esp,0FFFFFFF0
 00511291    mov         ebx,eax
 00511293    mov         eax,dword ptr [ebx+8]
 00511296    call        TWinControl.GetHandle
 0051129B    push        eax
 0051129C    call        user32.GetParent
 005112A1    mov         ecx,eax
 005112A3    mov         dl,1
 005112A5    mov         eax,[005046D0];TScrollBarStyleHook.TScrollWindow
 005112AA    call        TScrollBar.Create
 005112AF    mov         esi,eax
 005112B1    mov         dword ptr [ebx+28],esi
 005112B4    mov         dword ptr [esi+294],ebx
 005112BA    mov         eax,ebx
 005112BC    call        005113E0
 005112C1    xor         al,1
 005112C3    mov         esi,dword ptr [ebx+28]
 005112C6    mov         byte ptr [esi+298],al
 005112CC    mov         byte ptr [esi+290],0
 005112D3    mov         edx,esp
 005112D5    mov         eax,ebx
 005112D7    call        00511148
 005112DC    push        8
 005112DE    lea         eax,[esp+4]
 005112E2    call        RectHeight
 005112E7    push        eax
 005112E8    lea         eax,[esp+8]
 005112EC    call        RectWidth
 005112F1    push        eax
 005112F2    mov         eax,dword ptr [esp+10]
 005112F6    push        eax
 005112F7    mov         eax,dword ptr [esp+10]
 005112FB    push        eax
 005112FC    push        0
 005112FE    mov         eax,dword ptr [ebx+28]
 00511301    call        TWinControl.GetHandle
 00511306    push        eax
 00511307    call        user32.SetWindowPos
 0051130C    mov         eax,dword ptr [ebx+8]
 0051130F    cmp         byte ptr [eax+69],0
>00511313    je          00511325
 00511315    push        5
 00511317    mov         eax,dword ptr [ebx+28]
 0051131A    call        TWinControl.GetHandle
 0051131F    push        eax
 00511320    call        user32.ShowWindow
 00511325    add         esp,10
 00511328    pop         esi
 00511329    pop         ebx
 0051132A    ret
*}
end;

//0051132C
procedure sub_0051132C(?:TScrollBarStyleHook);
begin
{*
 0051132C    push        ebx
 0051132D    push        esi
 0051132E    add         esp,0FFFFFFEC
 00511331    mov         ebx,eax
 00511333    mov         esi,dword ptr [ebx+28];TScrollBarStyleHook.FScrollWnd:TScrollWindow
 00511336    test        esi,esi
>00511338    je          00511365
 0051133A    mov         eax,esi
 0051133C    call        TWinControl.HandleAllocated
 00511341    test        al,al
>00511343    jne         00511365
 00511345    lea         eax,[ebx+28];TScrollBarStyleHook.FScrollWnd:TScrollWindow
 00511348    mov         dword ptr [esp],eax
 0051134B    mov         eax,dword ptr [esp]
 0051134E    mov         eax,dword ptr [eax]
 00511350    mov         edx,dword ptr [esp]
 00511353    xor         ecx,ecx
 00511355    mov         dword ptr [edx],ecx
 00511357    call        TObject.Free
 0051135C    mov         eax,ebx
 0051135E    call        0051128C
>00511363    jmp         005113AF
 00511365    mov         eax,dword ptr [ebx+8];TScrollBarStyleHook.FControl:TWinControl
 00511368    cmp         byte ptr [eax+69],0;TWinControl.FVisible:Boolean
>0051136C    je          005113AF
 0051136E    cmp         dword ptr [ebx+28],0;TScrollBarStyleHook.FScrollWnd:TScrollWindow
>00511372    je          005113AF
 00511374    lea         edx,[esp+4]
 00511378    mov         eax,ebx
 0051137A    call        00511148
 0051137F    push        40
 00511381    lea         eax,[esp+8]
 00511385    call        RectHeight
 0051138A    push        eax
 0051138B    lea         eax,[esp+0C]
 0051138F    call        RectWidth
 00511394    push        eax
 00511395    mov         eax,dword ptr [esp+14]
 00511399    push        eax
 0051139A    mov         eax,dword ptr [esp+14]
 0051139E    push        eax
 0051139F    push        0
 005113A1    mov         eax,dword ptr [ebx+28];TScrollBarStyleHook.FScrollWnd:TScrollWindow
 005113A4    call        TWinControl.GetHandle
 005113A9    push        eax
 005113AA    call        user32.SetWindowPos
 005113AF    add         esp,14
 005113B2    pop         esi
 005113B3    pop         ebx
 005113B4    ret
*}
end;

//005113B8
procedure sub_005113B8(?:TScrollBarStyleHook);
begin
{*
 005113B8    push        esi
 005113B9    push        edi
 005113BA    mov         esi,eax
 005113BC    mov         edi,dword ptr [esi+28];TScrollBarStyleHook.FScrollWnd:TScrollWindow
 005113BF    test        edi,edi
>005113C1    je          005113CD
 005113C3    mov         eax,edi
 005113C5    mov         edx,dword ptr [eax]
 005113C7    call        dword ptr [edx+0AC]
 005113CD    pop         edi
 005113CE    pop         esi
 005113CF    ret
*}
end;

//005113D0
procedure TScrollBarStyleHook.sub_005113D0;
begin
{*
 005113D0    call        005113B8
 005113D5    ret
*}
end;

//005113D8
procedure TScrollBarStyleHook.sub_005113D8;
begin
{*
 005113D8    call        005113B8
 005113DD    ret
*}
end;

//005113E0
function sub_005113E0:Boolean;
begin
{*
 005113E0    call        TStyleHook.GetHandle
 005113E5    push        0F0
 005113E7    push        eax
 005113E8    call        user32.GetWindowLongW
 005113ED    test        al,1
 005113EF    sete        al
 005113F2    ret
*}
end;

//005113F4
{*procedure sub_005113F4(?:?; ?:?);
begin
 005113F4    push        ebx
 005113F5    push        esi
 005113F6    push        edi
 005113F7    mov         edi,edx
 005113F9    mov         ebx,eax
 005113FB    mov         esi,dword ptr [ebx+8]
 005113FE    mov         eax,dword ptr [esi+58]
 00511401    push        eax
 00511402    mov         eax,dword ptr [esi+5C]
 00511405    push        eax
 00511406    mov         eax,edi
 00511408    xor         ecx,ecx
 0051140A    xor         edx,edx
 0051140C    call        TRect.Create
 00511411    pop         edi
 00511412    pop         esi
 00511413    pop         ebx
 00511414    ret
end;*}

//00511418
procedure sub_00511418(?:TScrollBarStyleHook; ?:TRect);
begin
{*
 00511418    push        ebx
 00511419    push        esi
 0051141A    push        edi
 0051141B    push        ebp
 0051141C    add         esp,0FFFFFF68
 00511422    mov         esi,edx
 00511424    mov         ebx,eax
 00511426    mov         eax,dword ptr [ebx+8]
 00511429    mov         edx,dword ptr [eax]
 0051142B    call        dword ptr [edx+6C]
 0051142E    test        al,al
>00511430    jne         00511446
 00511432    push        0
 00511434    push        0
 00511436    xor         ecx,ecx
 00511438    xor         edx,edx
 0051143A    mov         eax,esi
 0051143C    call        TRect.Create
>00511441    jmp         0051170D
 00511446    mov         edx,esi
 00511448    mov         eax,dword ptr [ebx+8]
 0051144B    mov         ecx,dword ptr [eax]
 0051144D    call        dword ptr [ecx+64]
 00511450    mov         dword ptr [esp+4],17
 00511458    mov         dword ptr [esp],1C
 0051145F    push        esp
 00511460    push        2
 00511462    mov         eax,ebx
 00511464    call        TStyleHook.GetHandle
 00511469    push        eax
 0051146A    call        user32.GetScrollInfo
 0051146F    mov         eax,dword ptr [esp+0C]
 00511473    sub         eax,dword ptr [esp+8]
>00511477    jne         00511499
 00511479    push        0
 0051147B    push        0
 0051147D    lea         eax,[esp+64]
 00511481    xor         ecx,ecx
 00511483    xor         edx,edx
 00511485    call        TRect.Create
 0051148A    mov         edi,esi
 0051148C    lea         esi,[esp+5C]
 00511490    movs        dword ptr [edi],dword ptr [esi]
 00511491    movs        dword ptr [edi],dword ptr [esi]
 00511492    movs        dword ptr [edi],dword ptr [esi]
 00511493    movs        dword ptr [edi],dword ptr [esi]
>00511494    jmp         0051170D
 00511499    cmp         dword ptr [esp+10],0
>0051149E    jne         00511526
 005114A4    lea         edx,[esp+6C]
 005114A8    mov         eax,ebx
 005114AA    call        00511718
 005114AF    mov         ebp,dword ptr [esp+70]
 005114B3    lea         edx,[esp+1C]
 005114B7    mov         eax,ebx
 005114B9    call        00511718
 005114BE    lea         eax,[esp+1C]
 005114C2    call        RectHeight
 005114C7    push        eax
 005114C8    push        9
 005114CA    call        user32.GetSystemMetrics
 005114CF    pop         edx
 005114D0    sub         edx,eax
 005114D2    mov         dword ptr [esp+7C],edx
 005114D6    fild        dword ptr [esp+7C]
 005114DA    mov         eax,dword ptr [esp+14]
 005114DE    mov         edi,dword ptr [esp+8]
 005114E2    sub         eax,edi
 005114E4    mov         dword ptr [esp+80],eax
 005114EB    fild        dword ptr [esp+80]
 005114F2    mov         eax,dword ptr [esp+0C]
 005114F6    sub         eax,edi
 005114F8    mov         dword ptr [esp+84],eax
 005114FF    fild        dword ptr [esp+84]
 00511506    fdivp       st(1),st
 00511508    fmulp       st(1),st
 0051150A    call        @ROUND
 0051150F    add         ebp,eax
 00511511    mov         dword ptr [esi+4],ebp
 00511514    push        9
 00511516    call        user32.GetSystemMetrics
 0051151B    add         eax,dword ptr [esi+4]
 0051151E    mov         dword ptr [esi+0C],eax
>00511521    jmp         005116AA
 00511526    lea         edx,[esp+6C]
 0051152A    mov         eax,ebx
 0051152C    call        00511718
 00511531    mov         ebp,dword ptr [esp+70]
 00511535    lea         edx,[esp+2C]
 00511539    mov         eax,ebx
 0051153B    call        00511718
 00511540    lea         eax,[esp+2C]
 00511544    call        RectHeight
 00511549    mov         dword ptr [esp+7C],eax
 0051154D    fild        dword ptr [esp+7C]
 00511551    mov         eax,dword ptr [esp+14]
 00511555    mov         edi,dword ptr [esp+8]
 00511559    sub         eax,edi
 0051155B    mov         dword ptr [esp+80],eax
 00511562    fild        dword ptr [esp+80]
 00511569    mov         eax,dword ptr [esp+0C]
 0051156D    sub         eax,edi
 0051156F    mov         dword ptr [esp+84],eax
 00511576    fild        dword ptr [esp+84]
 0051157D    fdivp       st(1),st
 0051157F    fmulp       st(1),st
 00511581    call        @ROUND
 00511586    add         ebp,eax
 00511588    mov         dword ptr [esi+4],ebp
 0051158B    lea         edx,[esp+6C]
 0051158F    mov         eax,ebx
 00511591    call        00511718
 00511596    mov         ebp,dword ptr [esp+70]
 0051159A    lea         edx,[esp+3C]
 0051159E    mov         eax,ebx
 005115A0    call        00511718
 005115A5    lea         eax,[esp+3C]
 005115A9    call        RectHeight
 005115AE    mov         dword ptr [esp+7C],eax
 005115B2    fild        dword ptr [esp+7C]
 005115B6    mov         eax,dword ptr [esp+14]
 005115BA    add         eax,dword ptr [esp+10]
 005115BE    mov         edi,dword ptr [esp+8]
 005115C2    sub         eax,edi
 005115C4    dec         eax
 005115C5    mov         dword ptr [esp+80],eax
 005115CC    fild        dword ptr [esp+80]
 005115D3    mov         eax,dword ptr [esp+0C]
 005115D7    sub         eax,edi
 005115D9    mov         dword ptr [esp+84],eax
 005115E0    fild        dword ptr [esp+84]
 005115E7    fdivp       st(1),st
 005115E9    fmulp       st(1),st
 005115EB    call        @ROUND
 005115F0    add         ebp,eax
 005115F2    mov         dword ptr [esi+0C],ebp
 005115F5    push        9
 005115F7    call        user32.GetSystemMetrics
 005115FC    sub         ebp,dword ptr [esi+4]
 005115FF    cmp         eax,ebp
>00511601    jle         005116AA
 00511607    mov         eax,dword ptr [esp+0C]
 0051160B    sub         eax,dword ptr [esp+8]
 0051160F    sub         eax,dword ptr [esp+10]
>00511613    jne         00511629
 00511615    lea         edx,[esp+6C]
 00511619    mov         eax,ebx
 0051161B    call        00511718
 00511620    mov         eax,dword ptr [esp+70]
 00511624    mov         dword ptr [esi+4],eax
>00511627    jmp         0051169D
 00511629    lea         edx,[esp+6C]
 0051162D    mov         eax,ebx
 0051162F    call        00511718
 00511634    mov         ebp,dword ptr [esp+70]
 00511638    lea         edx,[esp+4C]
 0051163C    mov         eax,ebx
 0051163E    call        00511718
 00511643    lea         eax,[esp+4C]
 00511647    call        RectHeight
 0051164C    push        eax
 0051164D    push        9
 0051164F    call        user32.GetSystemMetrics
 00511654    pop         edx
 00511655    sub         edx,eax
 00511657    mov         dword ptr [esp+7C],edx
 0051165B    fild        dword ptr [esp+7C]
 0051165F    mov         eax,dword ptr [esp+14]
 00511663    mov         edi,dword ptr [esp+8]
 00511667    sub         eax,edi
 00511669    mov         dword ptr [esp+80],eax
 00511670    fild        dword ptr [esp+80]
 00511677    mov         eax,dword ptr [esp+0C]
 0051167B    sub         eax,edi
 0051167D    sub         eax,dword ptr [esp+10]
 00511681    mov         dword ptr [esp+84],eax
 00511688    fild        dword ptr [esp+84]
 0051168F    fdivp       st(1),st
 00511691    fmulp       st(1),st
 00511693    call        @ROUND
 00511698    add         ebp,eax
 0051169A    mov         dword ptr [esi+4],ebp
 0051169D    push        9
 0051169F    call        user32.GetSystemMetrics
 005116A4    add         eax,dword ptr [esi+4]
 005116A7    mov         dword ptr [esi+0C],eax
 005116AA    lea         edx,[esp+6C]
 005116AE    mov         eax,ebx
 005116B0    call        00511838
 005116B5    mov         eax,dword ptr [esp+70]
 005116B9    cmp         eax,dword ptr [esi+0C]
>005116BC    jge         005116D0
 005116BE    lea         edx,[esp+6C]
 005116C2    mov         eax,ebx
 005116C4    call        00511838
 005116C9    mov         eax,dword ptr [esp+70]
 005116CD    mov         dword ptr [esi+0C],eax
 005116D0    lea         edx,[esp+6C]
 005116D4    mov         eax,ebx
 005116D6    call        00511838
 005116DB    mov         edi,dword ptr [esp+70]
 005116DF    lea         edx,[esp+88]
 005116E6    mov         eax,ebx
 005116E8    call        0051176C
 005116ED    sub         edi,dword ptr [esp+94]
 005116F4    push        9
 005116F6    call        user32.GetSystemMetrics
 005116FB    cmp         edi,eax
>005116FD    jge         0051170D
 005116FF    push        0
 00511701    push        esi
 00511702    xor         ecx,ecx
 00511704    xor         edx,edx
 00511706    xor         eax,eax
 00511708    call        Rect
 0051170D    add         esp,98
 00511713    pop         ebp
 00511714    pop         edi
 00511715    pop         esi
 00511716    pop         ebx
 00511717    ret
*}
end;

//00511718
{*procedure sub_00511718(?:?; ?:?);
begin
 00511718    push        ebx
 00511719    push        esi
 0051171A    push        edi
 0051171B    add         esp,0FFFFFFF0
 0051171E    mov         ebx,edx
 00511720    mov         esi,eax
 00511722    mov         edx,ebx
 00511724    mov         eax,esi
 00511726    call        005113F4
 0051172B    mov         eax,ebx
 0051172D    call        RectWidth
 00511732    test        eax,eax
>00511734    jle         0051174C
 00511736    push        9
 00511738    call        user32.GetSystemMetrics
 0051173D    add         dword ptr [ebx+4],eax
 00511740    push        9
 00511742    call        user32.GetSystemMetrics
 00511747    sub         dword ptr [ebx+0C],eax
>0051174A    jmp         00511765
 0051174C    push        0
 0051174E    push        0
 00511750    xor         ecx,ecx
 00511752    xor         edx,edx
 00511754    lea         eax,[esp+8]
 00511758    call        TRect.Create
 0051175D    mov         edi,ebx
 0051175F    mov         esi,esp
 00511761    movs        dword ptr [edi],dword ptr [esi]
 00511762    movs        dword ptr [edi],dword ptr [esi]
 00511763    movs        dword ptr [edi],dword ptr [esi]
 00511764    movs        dword ptr [edi],dword ptr [esi]
 00511765    add         esp,10
 00511768    pop         edi
 00511769    pop         esi
 0051176A    pop         ebx
 0051176B    ret
end;*}

//0051176C
{*procedure sub_0051176C(?:TScrollBarStyleHook; ?:?);
begin
 0051176C    push        ebx
 0051176D    push        esi
 0051176E    push        edi
 0051176F    add         esp,0FFFFFFD0
 00511772    mov         ebx,edx
 00511774    mov         esi,eax
 00511776    mov         edx,ebx
 00511778    mov         eax,esi
 0051177A    call        005113F4
 0051177F    mov         eax,ebx
 00511781    call        RectWidth
 00511786    test        eax,eax
>00511788    jle         00511813
 0051178E    push        9
 00511790    call        user32.GetSystemMetrics
 00511795    add         eax,dword ptr [ebx+4]
 00511798    mov         dword ptr [ebx+0C],eax
 0051179B    mov         edx,esp
 0051179D    mov         eax,esi
 0051179F    call        005113F4
 005117A4    mov         eax,esp
 005117A6    call        RectHeight
 005117AB    mov         edi,eax
 005117AD    push        9
 005117AF    call        user32.GetSystemMetrics
 005117B4    add         eax,eax
 005117B6    cmp         edi,eax
>005117B8    jge         005117E5
 005117BA    lea         edx,[esp+10]
 005117BE    mov         eax,esi
 005117C0    call        005113F4
 005117C5    lea         eax,[esp+10]
 005117C9    call        RectHeight
 005117CE    push        eax
 005117CF    push        9
 005117D1    call        user32.GetSystemMetrics
 005117D6    add         eax,eax
 005117D8    pop         edx
 005117D9    sub         eax,edx
 005117DB    sar         eax,1
>005117DD    jns         005117E2
 005117DF    adc         eax,0
 005117E2    sub         dword ptr [ebx+0C],eax
 005117E5    push        9
 005117E7    call        user32.GetSystemMetrics
 005117EC    sar         eax,1
>005117EE    jns         005117F3
 005117F0    adc         eax,0
 005117F3    mov         edx,dword ptr [ebx+0C]
 005117F6    sub         edx,dword ptr [ebx+4]
 005117F9    cmp         eax,edx
>005117FB    jle         0051182E
 005117FD    push        9
 005117FF    call        user32.GetSystemMetrics
 00511804    sar         eax,1
>00511806    jns         0051180B
 00511808    adc         eax,0
 0051180B    add         eax,dword ptr [ebx+4]
 0051180E    mov         dword ptr [ebx+0C],eax
>00511811    jmp         0051182E
 00511813    push        0
 00511815    push        0
 00511817    lea         eax,[esp+28]
 0051181B    xor         ecx,ecx
 0051181D    xor         edx,edx
 0051181F    call        TRect.Create
 00511824    mov         edi,ebx
 00511826    lea         esi,[esp+20]
 0051182A    movs        dword ptr [edi],dword ptr [esi]
 0051182B    movs        dword ptr [edi],dword ptr [esi]
 0051182C    movs        dword ptr [edi],dword ptr [esi]
 0051182D    movs        dword ptr [edi],dword ptr [esi]
 0051182E    add         esp,30
 00511831    pop         edi
 00511832    pop         esi
 00511833    pop         ebx
 00511834    ret
end;*}

//00511838
{*procedure sub_00511838(?:TScrollBarStyleHook; ?:?);
begin
 00511838    push        ebx
 00511839    push        esi
 0051183A    push        edi
 0051183B    add         esp,0FFFFFFD0
 0051183E    mov         ebx,edx
 00511840    mov         esi,eax
 00511842    mov         edx,ebx
 00511844    mov         eax,esi
 00511846    call        005113F4
 0051184B    mov         eax,ebx
 0051184D    call        RectWidth
 00511852    test        eax,eax
>00511854    jle         005118E3
 0051185A    push        9
 0051185C    call        user32.GetSystemMetrics
 00511861    mov         edx,dword ptr [ebx+0C]
 00511864    sub         edx,eax
 00511866    mov         dword ptr [ebx+4],edx
 00511869    mov         edx,esp
 0051186B    mov         eax,esi
 0051186D    call        005113F4
 00511872    mov         eax,esp
 00511874    call        RectHeight
 00511879    mov         edi,eax
 0051187B    push        9
 0051187D    call        user32.GetSystemMetrics
 00511882    add         eax,eax
 00511884    cmp         edi,eax
>00511886    jge         005118B3
 00511888    lea         edx,[esp+10]
 0051188C    mov         eax,esi
 0051188E    call        005113F4
 00511893    lea         eax,[esp+10]
 00511897    call        RectHeight
 0051189C    push        eax
 0051189D    push        9
 0051189F    call        user32.GetSystemMetrics
 005118A4    add         eax,eax
 005118A6    pop         edx
 005118A7    sub         eax,edx
 005118A9    sar         eax,1
>005118AB    jns         005118B0
 005118AD    adc         eax,0
 005118B0    add         dword ptr [ebx+4],eax
 005118B3    push        9
 005118B5    call        user32.GetSystemMetrics
 005118BA    sar         eax,1
>005118BC    jns         005118C1
 005118BE    adc         eax,0
 005118C1    mov         edx,dword ptr [ebx+0C]
 005118C4    sub         edx,dword ptr [ebx+4]
 005118C7    cmp         eax,edx
>005118C9    jle         005118FE
 005118CB    push        9
 005118CD    call        user32.GetSystemMetrics
 005118D2    sar         eax,1
>005118D4    jns         005118D9
 005118D6    adc         eax,0
 005118D9    mov         edx,dword ptr [ebx+0C]
 005118DC    sub         edx,eax
 005118DE    mov         dword ptr [ebx+4],edx
>005118E1    jmp         005118FE
 005118E3    push        0
 005118E5    push        0
 005118E7    lea         eax,[esp+28]
 005118EB    xor         ecx,ecx
 005118ED    xor         edx,edx
 005118EF    call        TRect.Create
 005118F4    mov         edi,ebx
 005118F6    lea         esi,[esp+20]
 005118FA    movs        dword ptr [edi],dword ptr [esi]
 005118FB    movs        dword ptr [edi],dword ptr [esi]
 005118FC    movs        dword ptr [edi],dword ptr [esi]
 005118FD    movs        dword ptr [edi],dword ptr [esi]
 005118FE    add         esp,30
 00511901    pop         edi
 00511902    pop         esi
 00511903    pop         ebx
 00511904    ret
end;*}

//00511908
{*procedure sub_00511908(?:?; ?:?);
begin
 00511908    push        ebx
 00511909    push        esi
 0051190A    push        edi
 0051190B    mov         edi,edx
 0051190D    mov         ebx,eax
 0051190F    mov         esi,dword ptr [ebx+8]
 00511912    mov         eax,dword ptr [esi+58]
 00511915    push        eax
 00511916    mov         eax,dword ptr [esi+5C]
 00511919    push        eax
 0051191A    mov         eax,edi
 0051191C    xor         ecx,ecx
 0051191E    xor         edx,edx
 00511920    call        TRect.Create
 00511925    pop         edi
 00511926    pop         esi
 00511927    pop         ebx
 00511928    ret
end;*}

//0051192C
procedure sub_0051192C(?:TScrollBarStyleHook; ?:TRect);
begin
{*
 0051192C    push        ebx
 0051192D    push        esi
 0051192E    push        edi
 0051192F    push        ebp
 00511930    add         esp,0FFFFFF68
 00511936    mov         esi,edx
 00511938    mov         ebx,eax
 0051193A    mov         eax,dword ptr [ebx+8]
 0051193D    mov         edx,dword ptr [eax]
 0051193F    call        dword ptr [edx+6C]
 00511942    test        al,al
>00511944    jne         0051195A
 00511946    push        0
 00511948    push        0
 0051194A    xor         ecx,ecx
 0051194C    xor         edx,edx
 0051194E    mov         eax,esi
 00511950    call        TRect.Create
>00511955    jmp         00511C1A
 0051195A    mov         edx,esi
 0051195C    mov         eax,dword ptr [ebx+8]
 0051195F    mov         ecx,dword ptr [eax]
 00511961    call        dword ptr [ecx+64]
 00511964    mov         dword ptr [esp+4],17
 0051196C    mov         dword ptr [esp],1C
 00511973    push        esp
 00511974    push        2
 00511976    mov         eax,ebx
 00511978    call        TStyleHook.GetHandle
 0051197D    push        eax
 0051197E    call        user32.GetScrollInfo
 00511983    mov         eax,dword ptr [esp+0C]
 00511987    sub         eax,dword ptr [esp+8]
>0051198B    jne         005119AD
 0051198D    push        0
 0051198F    push        0
 00511991    lea         eax,[esp+64]
 00511995    xor         ecx,ecx
 00511997    xor         edx,edx
 00511999    call        TRect.Create
 0051199E    mov         edi,esi
 005119A0    lea         esi,[esp+5C]
 005119A4    movs        dword ptr [edi],dword ptr [esi]
 005119A5    movs        dword ptr [edi],dword ptr [esi]
 005119A6    movs        dword ptr [edi],dword ptr [esi]
 005119A7    movs        dword ptr [edi],dword ptr [esi]
>005119A8    jmp         00511C1A
 005119AD    cmp         dword ptr [esp+10],0
>005119B2    jne         00511A38
 005119B8    lea         edx,[esp+6C]
 005119BC    mov         eax,ebx
 005119BE    call        00511C28
 005119C3    mov         ebp,dword ptr [esp+6C]
 005119C7    lea         edx,[esp+1C]
 005119CB    mov         eax,ebx
 005119CD    call        00511C28
 005119D2    lea         eax,[esp+1C]
 005119D6    call        RectWidth
 005119DB    push        eax
 005119DC    push        0A
 005119DE    call        user32.GetSystemMetrics
 005119E3    pop         edx
 005119E4    sub         edx,eax
 005119E6    mov         dword ptr [esp+7C],edx
 005119EA    fild        dword ptr [esp+7C]
 005119EE    mov         eax,dword ptr [esp+14]
 005119F2    mov         edi,dword ptr [esp+8]
 005119F6    sub         eax,edi
 005119F8    mov         dword ptr [esp+80],eax
 005119FF    fild        dword ptr [esp+80]
 00511A06    mov         eax,dword ptr [esp+0C]
 00511A0A    sub         eax,edi
 00511A0C    mov         dword ptr [esp+84],eax
 00511A13    fild        dword ptr [esp+84]
 00511A1A    fdivp       st(1),st
 00511A1C    fmulp       st(1),st
 00511A1E    call        @ROUND
 00511A23    add         ebp,eax
 00511A25    mov         dword ptr [esi],ebp
 00511A27    push        0A
 00511A29    call        user32.GetSystemMetrics
 00511A2E    add         eax,dword ptr [esi]
 00511A30    mov         dword ptr [esi+8],eax
>00511A33    jmp         00511BB7
 00511A38    lea         edx,[esp+6C]
 00511A3C    mov         eax,ebx
 00511A3E    call        00511C28
 00511A43    mov         ebp,dword ptr [esp+6C]
 00511A47    lea         edx,[esp+2C]
 00511A4B    mov         eax,ebx
 00511A4D    call        00511C28
 00511A52    lea         eax,[esp+2C]
 00511A56    call        RectWidth
 00511A5B    mov         dword ptr [esp+7C],eax
 00511A5F    fild        dword ptr [esp+7C]
 00511A63    mov         eax,dword ptr [esp+14]
 00511A67    mov         edi,dword ptr [esp+8]
 00511A6B    sub         eax,edi
 00511A6D    mov         dword ptr [esp+80],eax
 00511A74    fild        dword ptr [esp+80]
 00511A7B    mov         eax,dword ptr [esp+0C]
 00511A7F    sub         eax,edi
 00511A81    mov         dword ptr [esp+84],eax
 00511A88    fild        dword ptr [esp+84]
 00511A8F    fdivp       st(1),st
 00511A91    fmulp       st(1),st
 00511A93    call        @ROUND
 00511A98    add         ebp,eax
 00511A9A    mov         dword ptr [esi],ebp
 00511A9C    lea         edx,[esp+6C]
 00511AA0    mov         eax,ebx
 00511AA2    call        00511C28
 00511AA7    mov         ebp,dword ptr [esp+6C]
 00511AAB    lea         edx,[esp+3C]
 00511AAF    mov         eax,ebx
 00511AB1    call        00511C28
 00511AB6    lea         eax,[esp+3C]
 00511ABA    call        RectWidth
 00511ABF    mov         dword ptr [esp+7C],eax
 00511AC3    fild        dword ptr [esp+7C]
 00511AC7    mov         eax,dword ptr [esp+14]
 00511ACB    add         eax,dword ptr [esp+10]
 00511ACF    mov         edi,dword ptr [esp+8]
 00511AD3    sub         eax,edi
 00511AD5    dec         eax
 00511AD6    mov         dword ptr [esp+80],eax
 00511ADD    fild        dword ptr [esp+80]
 00511AE4    mov         eax,dword ptr [esp+0C]
 00511AE8    sub         eax,edi
 00511AEA    mov         dword ptr [esp+84],eax
 00511AF1    fild        dword ptr [esp+84]
 00511AF8    fdivp       st(1),st
 00511AFA    fmulp       st(1),st
 00511AFC    call        @ROUND
 00511B01    add         ebp,eax
 00511B03    mov         dword ptr [esi+8],ebp
 00511B06    push        0A
 00511B08    call        user32.GetSystemMetrics
 00511B0D    sub         ebp,dword ptr [esi]
 00511B0F    cmp         eax,ebp
>00511B11    jle         00511BB7
 00511B17    mov         eax,dword ptr [esp+0C]
 00511B1B    sub         eax,dword ptr [esp+8]
 00511B1F    sub         eax,dword ptr [esp+10]
>00511B23    jne         00511B38
 00511B25    lea         edx,[esp+6C]
 00511B29    mov         eax,ebx
 00511B2B    call        00511C28
 00511B30    mov         eax,dword ptr [esp+6C]
 00511B34    mov         dword ptr [esi],eax
>00511B36    jmp         00511BAB
 00511B38    lea         edx,[esp+6C]
 00511B3C    mov         eax,ebx
 00511B3E    call        00511C28
 00511B43    mov         ebp,dword ptr [esp+6C]
 00511B47    lea         edx,[esp+4C]
 00511B4B    mov         eax,ebx
 00511B4D    call        00511C28
 00511B52    lea         eax,[esp+4C]
 00511B56    call        RectWidth
 00511B5B    push        eax
 00511B5C    push        0A
 00511B5E    call        user32.GetSystemMetrics
 00511B63    pop         edx
 00511B64    sub         edx,eax
 00511B66    mov         dword ptr [esp+7C],edx
 00511B6A    fild        dword ptr [esp+7C]
 00511B6E    mov         eax,dword ptr [esp+14]
 00511B72    mov         edi,dword ptr [esp+8]
 00511B76    sub         eax,edi
 00511B78    mov         dword ptr [esp+80],eax
 00511B7F    fild        dword ptr [esp+80]
 00511B86    mov         eax,dword ptr [esp+0C]
 00511B8A    sub         eax,edi
 00511B8C    sub         eax,dword ptr [esp+10]
 00511B90    mov         dword ptr [esp+84],eax
 00511B97    fild        dword ptr [esp+84]
 00511B9E    fdivp       st(1),st
 00511BA0    fmulp       st(1),st
 00511BA2    call        @ROUND
 00511BA7    add         ebp,eax
 00511BA9    mov         dword ptr [esi],ebp
 00511BAB    push        0A
 00511BAD    call        user32.GetSystemMetrics
 00511BB2    add         eax,dword ptr [esi]
 00511BB4    mov         dword ptr [esi+8],eax
 00511BB7    lea         edx,[esp+6C]
 00511BBB    mov         eax,ebx
 00511BBD    call        00511D44
 00511BC2    mov         eax,dword ptr [esp+6C]
 00511BC6    cmp         eax,dword ptr [esi+8]
>00511BC9    jge         00511BDD
 00511BCB    lea         edx,[esp+6C]
 00511BCF    mov         eax,ebx
 00511BD1    call        00511D44
 00511BD6    mov         eax,dword ptr [esp+6C]
 00511BDA    mov         dword ptr [esi+8],eax
 00511BDD    lea         edx,[esp+6C]
 00511BE1    mov         eax,ebx
 00511BE3    call        00511D44
 00511BE8    mov         edi,dword ptr [esp+6C]
 00511BEC    lea         edx,[esp+88]
 00511BF3    mov         eax,ebx
 00511BF5    call        00511C7C
 00511BFA    sub         edi,dword ptr [esp+90]
 00511C01    push        0A
 00511C03    call        user32.GetSystemMetrics
 00511C08    cmp         edi,eax
>00511C0A    jge         00511C1A
 00511C0C    push        0
 00511C0E    push        esi
 00511C0F    xor         ecx,ecx
 00511C11    xor         edx,edx
 00511C13    xor         eax,eax
 00511C15    call        Rect
 00511C1A    add         esp,98
 00511C20    pop         ebp
 00511C21    pop         edi
 00511C22    pop         esi
 00511C23    pop         ebx
 00511C24    ret
*}
end;

//00511C28
{*procedure sub_00511C28(?:?; ?:?);
begin
 00511C28    push        ebx
 00511C29    push        esi
 00511C2A    push        edi
 00511C2B    add         esp,0FFFFFFF0
 00511C2E    mov         ebx,edx
 00511C30    mov         esi,eax
 00511C32    mov         edx,ebx
 00511C34    mov         eax,esi
 00511C36    call        00511908
 00511C3B    mov         eax,ebx
 00511C3D    call        RectWidth
 00511C42    test        eax,eax
>00511C44    jle         00511C5B
 00511C46    push        0A
 00511C48    call        user32.GetSystemMetrics
 00511C4D    add         dword ptr [ebx],eax
 00511C4F    push        0A
 00511C51    call        user32.GetSystemMetrics
 00511C56    sub         dword ptr [ebx+8],eax
>00511C59    jmp         00511C74
 00511C5B    push        0
 00511C5D    push        0
 00511C5F    xor         ecx,ecx
 00511C61    xor         edx,edx
 00511C63    lea         eax,[esp+8]
 00511C67    call        TRect.Create
 00511C6C    mov         edi,ebx
 00511C6E    mov         esi,esp
 00511C70    movs        dword ptr [edi],dword ptr [esi]
 00511C71    movs        dword ptr [edi],dword ptr [esi]
 00511C72    movs        dword ptr [edi],dword ptr [esi]
 00511C73    movs        dword ptr [edi],dword ptr [esi]
 00511C74    add         esp,10
 00511C77    pop         edi
 00511C78    pop         esi
 00511C79    pop         ebx
 00511C7A    ret
end;*}

//00511C7C
{*procedure sub_00511C7C(?:TScrollBarStyleHook; ?:?);
begin
 00511C7C    push        ebx
 00511C7D    push        esi
 00511C7E    push        edi
 00511C7F    add         esp,0FFFFFFD0
 00511C82    mov         ebx,edx
 00511C84    mov         esi,eax
 00511C86    mov         edx,ebx
 00511C88    mov         eax,esi
 00511C8A    call        00511908
 00511C8F    mov         eax,ebx
 00511C91    call        RectHeight
 00511C96    test        eax,eax
>00511C98    jle         00511D20
 00511C9E    push        0A
 00511CA0    call        user32.GetSystemMetrics
 00511CA5    add         eax,dword ptr [ebx]
 00511CA7    mov         dword ptr [ebx+8],eax
 00511CAA    mov         edx,esp
 00511CAC    mov         eax,esi
 00511CAE    call        00511908
 00511CB3    mov         eax,esp
 00511CB5    call        RectWidth
 00511CBA    mov         edi,eax
 00511CBC    push        0A
 00511CBE    call        user32.GetSystemMetrics
 00511CC3    add         eax,eax
 00511CC5    cmp         edi,eax
>00511CC7    jge         00511CF4
 00511CC9    lea         edx,[esp+10]
 00511CCD    mov         eax,esi
 00511CCF    call        00511908
 00511CD4    lea         eax,[esp+10]
 00511CD8    call        RectWidth
 00511CDD    push        eax
 00511CDE    push        0A
 00511CE0    call        user32.GetSystemMetrics
 00511CE5    add         eax,eax
 00511CE7    pop         edx
 00511CE8    sub         eax,edx
 00511CEA    sar         eax,1
>00511CEC    jns         00511CF1
 00511CEE    adc         eax,0
 00511CF1    sub         dword ptr [ebx+8],eax
 00511CF4    push        0A
 00511CF6    call        user32.GetSystemMetrics
 00511CFB    sar         eax,1
>00511CFD    jns         00511D02
 00511CFF    adc         eax,0
 00511D02    mov         edx,dword ptr [ebx+8]
 00511D05    sub         edx,dword ptr [ebx]
 00511D07    cmp         eax,edx
>00511D09    jle         00511D3B
 00511D0B    push        0A
 00511D0D    call        user32.GetSystemMetrics
 00511D12    sar         eax,1
>00511D14    jns         00511D19
 00511D16    adc         eax,0
 00511D19    add         eax,dword ptr [ebx]
 00511D1B    mov         dword ptr [ebx+8],eax
>00511D1E    jmp         00511D3B
 00511D20    push        0
 00511D22    push        0
 00511D24    lea         eax,[esp+28]
 00511D28    xor         ecx,ecx
 00511D2A    xor         edx,edx
 00511D2C    call        TRect.Create
 00511D31    mov         edi,ebx
 00511D33    lea         esi,[esp+20]
 00511D37    movs        dword ptr [edi],dword ptr [esi]
 00511D38    movs        dword ptr [edi],dword ptr [esi]
 00511D39    movs        dword ptr [edi],dword ptr [esi]
 00511D3A    movs        dword ptr [edi],dword ptr [esi]
 00511D3B    add         esp,30
 00511D3E    pop         edi
 00511D3F    pop         esi
 00511D40    pop         ebx
 00511D41    ret
end;*}

//00511D44
{*procedure sub_00511D44(?:TScrollBarStyleHook; ?:?);
begin
 00511D44    push        ebx
 00511D45    push        esi
 00511D46    push        edi
 00511D47    add         esp,0FFFFFFD0
 00511D4A    mov         ebx,edx
 00511D4C    mov         esi,eax
 00511D4E    mov         edx,ebx
 00511D50    mov         eax,esi
 00511D52    call        00511908
 00511D57    mov         eax,ebx
 00511D59    call        RectHeight
 00511D5E    test        eax,eax
>00511D60    jle         00511DEB
 00511D66    push        0A
 00511D68    call        user32.GetSystemMetrics
 00511D6D    mov         edx,dword ptr [ebx+8]
 00511D70    sub         edx,eax
 00511D72    mov         dword ptr [ebx],edx
 00511D74    mov         edx,esp
 00511D76    mov         eax,esi
 00511D78    call        00511908
 00511D7D    mov         eax,esp
 00511D7F    call        RectWidth
 00511D84    mov         edi,eax
 00511D86    push        0A
 00511D88    call        user32.GetSystemMetrics
 00511D8D    add         eax,eax
 00511D8F    cmp         edi,eax
>00511D91    jge         00511DBD
 00511D93    lea         edx,[esp+10]
 00511D97    mov         eax,esi
 00511D99    call        00511908
 00511D9E    lea         eax,[esp+10]
 00511DA2    call        RectWidth
 00511DA7    push        eax
 00511DA8    push        0A
 00511DAA    call        user32.GetSystemMetrics
 00511DAF    add         eax,eax
 00511DB1    pop         edx
 00511DB2    sub         eax,edx
 00511DB4    sar         eax,1
>00511DB6    jns         00511DBB
 00511DB8    adc         eax,0
 00511DBB    add         dword ptr [ebx],eax
 00511DBD    push        0A
 00511DBF    call        user32.GetSystemMetrics
 00511DC4    sar         eax,1
>00511DC6    jns         00511DCB
 00511DC8    adc         eax,0
 00511DCB    mov         edx,dword ptr [ebx+8]
 00511DCE    sub         edx,dword ptr [ebx]
 00511DD0    cmp         eax,edx
>00511DD2    jle         00511E06
 00511DD4    push        0A
 00511DD6    call        user32.GetSystemMetrics
 00511DDB    sar         eax,1
>00511DDD    jns         00511DE2
 00511DDF    adc         eax,0
 00511DE2    mov         edx,dword ptr [ebx+8]
 00511DE5    sub         edx,eax
 00511DE7    mov         dword ptr [ebx],edx
>00511DE9    jmp         00511E06
 00511DEB    push        0
 00511DED    push        0
 00511DEF    lea         eax,[esp+28]
 00511DF3    xor         ecx,ecx
 00511DF5    xor         edx,edx
 00511DF7    call        TRect.Create
 00511DFC    mov         edi,ebx
 00511DFE    lea         esi,[esp+20]
 00511E02    movs        dword ptr [edi],dword ptr [esi]
 00511E03    movs        dword ptr [edi],dword ptr [esi]
 00511E04    movs        dword ptr [edi],dword ptr [esi]
 00511E05    movs        dword ptr [edi],dword ptr [esi]
 00511E06    add         esp,30
 00511E09    pop         edi
 00511E0A    pop         esi
 00511E0B    pop         ebx
 00511E0C    ret
end;*}

//00511E10
{*procedure sub_00511E10(?:?; ?:HDC);
begin
 00511E10    push        ebp
 00511E11    mov         ebp,esp
 00511E13    add         esp,0FFFFFF7C
 00511E19    push        ebx
 00511E1A    push        esi
 00511E1B    push        edi
 00511E1C    mov         dword ptr [ebp-4],edx
 00511E1F    mov         esi,eax
 00511E21    mov         eax,esi
 00511E23    call        TStyleHook.GetHandle
 00511E28    test        eax,eax
>00511E2A    je          005120FC
 00511E30    cmp         dword ptr [ebp-4],0
>00511E34    je          005120FC
 00511E3A    lea         edx,[ebp-34]
 00511E3D    mov         eax,esi
 00511E3F    call        00511148
 00511E44    lea         eax,[ebp-34]
 00511E47    call        RectWidth
 00511E4C    test        eax,eax
>00511E4E    je          005120FC
 00511E54    lea         edx,[ebp-44]
 00511E57    mov         eax,esi
 00511E59    call        00511148
 00511E5E    lea         eax,[ebp-44]
 00511E61    call        RectHeight
 00511E66    test        eax,eax
>00511E68    je          005120FC
 00511E6E    call        StyleServices
 00511E73    mov         ebx,eax
 00511E75    lea         edx,[ebp-54]
 00511E78    mov         eax,esi
 00511E7A    call        005113F4
 00511E7F    lea         eax,[ebp-54]
 00511E82    call        RectWidth
 00511E87    test        eax,eax
>00511E89    jle         005120FC
 00511E8F    mov         eax,ebx
 00511E91    mov         edx,dword ptr [eax]
 00511E93    call        dword ptr [edx+48];@AbstractError
 00511E96    test        al,al
>00511E98    je          005120FC
 00511E9E    mov         dl,1
 00511EA0    mov         eax,[004C1D10];TBitmap
 00511EA5    call        TBitmap.Create;TBitmap.Create
 00511EAA    mov         dword ptr [ebp-8],eax
 00511EAD    xor         eax,eax
 00511EAF    push        ebp
 00511EB0    push        5120F5
 00511EB5    push        dword ptr fs:[eax]
 00511EB8    mov         dword ptr fs:[eax],esp
 00511EBB    lea         edx,[ebp-74]
 00511EBE    mov         eax,esi
 00511EC0    call        00511148
 00511EC5    lea         eax,[ebp-74]
 00511EC8    call        RectHeight
 00511ECD    push        eax
 00511ECE    lea         edx,[ebp-64]
 00511ED1    mov         eax,esi
 00511ED3    call        00511148
 00511ED8    lea         eax,[ebp-64]
 00511EDB    call        RectWidth
 00511EE0    mov         edx,eax
 00511EE2    mov         eax,dword ptr [ebp-8]
 00511EE5    pop         ecx
 00511EE6    mov         ebx,dword ptr [eax]
 00511EE8    call        dword ptr [ebx+6C];TBitmap.SetSize
 00511EEB    call        StyleServices
 00511EF0    xor         ecx,ecx
 00511EF2    mov         edx,0FF00000F
 00511EF7    call        TCustomStyleServices.ColorToRGB
 00511EFC    push        eax
 00511EFD    mov         eax,dword ptr [ebp-8]
 00511F00    call        TBitmap.GetCanvas
 00511F05    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 00511F08    pop         edx
 00511F09    call        TBrush.SetColor
 00511F0E    mov         eax,dword ptr [ebp-8]
 00511F11    mov         edx,dword ptr [eax]
 00511F13    call        dword ptr [edx+24];TBitmap.GetHeight
 00511F16    push        eax
 00511F17    lea         eax,[ebp-84]
 00511F1D    push        eax
 00511F1E    mov         eax,dword ptr [ebp-8]
 00511F21    mov         edx,dword ptr [eax]
 00511F23    call        dword ptr [edx+30];TBitmap.GetWidth
 00511F26    mov         ecx,eax
 00511F28    xor         edx,edx
 00511F2A    xor         eax,eax
 00511F2C    call        Rect
 00511F31    lea         eax,[ebp-84]
 00511F37    push        eax
 00511F38    mov         eax,dword ptr [ebp-8]
 00511F3B    call        TBitmap.GetCanvas
 00511F40    pop         edx
 00511F41    mov         ecx,dword ptr [eax]
 00511F43    call        dword ptr [ecx+54];TCanvas.FillRect
 00511F46    lea         edx,[ebp-18]
 00511F49    mov         eax,esi
 00511F4B    call        005113F4
 00511F50    lea         edx,[ebp-84]
 00511F56    mov         eax,esi
 00511F58    call        0051176C
 00511F5D    mov         eax,dword ptr [ebp-78]
 00511F60    mov         dword ptr [ebp-14],eax
 00511F63    lea         edx,[ebp-84]
 00511F69    mov         eax,esi
 00511F6B    call        00511838
 00511F70    mov         eax,dword ptr [ebp-80]
 00511F73    mov         dword ptr [ebp-0C],eax
 00511F76    lea         eax,[ebp-18]
 00511F79    call        RectHeight
 00511F7E    test        eax,eax
>00511F80    jle         00511FB6
 00511F82    call        StyleServices
 00511F87    lea         ecx,[ebp-24]
 00511F8A    mov         dl,2D
 00511F8C    mov         ebx,dword ptr [eax]
 00511F8E    call        dword ptr [ebx+0C4];TCustomStyleServices.GetElementDetails
 00511F94    lea         eax,[ebp-18]
 00511F97    push        eax
 00511F98    push        0
 00511F9A    mov         eax,dword ptr [ebp-8]
 00511F9D    call        TBitmap.GetCanvas
 00511FA2    call        TCanvas.GetHandle
 00511FA7    push        eax
 00511FA8    call        StyleServices
 00511FAD    lea         ecx,[ebp-24]
 00511FB0    pop         edx
 00511FB1    call        TCustomStyleServices.DrawElement
 00511FB6    lea         edx,[ebp-18]
 00511FB9    mov         eax,esi
 00511FBB    call        00511418
 00511FC0    mov         eax,dword ptr [ebp-8]
 00511FC3    call        TBitmap.GetCanvas
 00511FC8    call        TCanvas.GetHandle
 00511FCD    mov         ebx,eax
 00511FCF    mov         eax,dword ptr [esi+8]
 00511FD2    mov         edx,dword ptr [eax]
 00511FD4    call        dword ptr [edx+6C]
 00511FD7    test        al,al
>00511FD9    je          00512004
 00511FDB    call        StyleServices
 00511FE0    movzx       edx,byte ptr [esi+2C]
 00511FE4    lea         ecx,[ebp-24]
 00511FE7    mov         edi,dword ptr [eax]
 00511FE9    call        dword ptr [edi+0C4];TCustomStyleServices.GetElementDetails
 00511FEF    lea         eax,[ebp-18]
 00511FF2    push        eax
 00511FF3    push        0
 00511FF5    call        StyleServices
 00511FFA    lea         ecx,[ebp-24]
 00511FFD    mov         edx,ebx
 00511FFF    call        TCustomStyleServices.DrawElement
 00512004    mov         eax,dword ptr [esi+8]
 00512007    mov         edx,dword ptr [eax]
 00512009    call        dword ptr [edx+6C]
 0051200C    test        al,al
>0051200E    je          00512026
 00512010    call        StyleServices
 00512015    movzx       edx,byte ptr [esi+2D]
 00512019    lea         ecx,[ebp-24]
 0051201C    mov         edi,dword ptr [eax]
 0051201E    call        dword ptr [edi+0C4];TCustomStyleServices.GetElementDetails
>00512024    jmp         00512038
 00512026    call        StyleServices
 0051202B    lea         ecx,[ebp-24]
 0051202E    mov         dl,5
 00512030    mov         edi,dword ptr [eax]
 00512032    call        dword ptr [edi+0C4];TCustomStyleServices.GetElementDetails
 00512038    lea         edx,[ebp-84]
 0051203E    mov         eax,esi
 00512040    call        0051176C
 00512045    lea         eax,[ebp-84]
 0051204B    push        eax
 0051204C    push        0
 0051204E    call        StyleServices
 00512053    lea         ecx,[ebp-24]
 00512056    mov         edx,ebx
 00512058    call        TCustomStyleServices.DrawElement
 0051205D    mov         eax,dword ptr [esi+8]
 00512060    mov         edx,dword ptr [eax]
 00512062    call        dword ptr [edx+6C]
 00512065    test        al,al
>00512067    je          0051207F
 00512069    call        StyleServices
 0051206E    movzx       edx,byte ptr [esi+2E]
 00512072    lea         ecx,[ebp-24]
 00512075    mov         edi,dword ptr [eax]
 00512077    call        dword ptr [edi+0C4];TCustomStyleServices.GetElementDetails
>0051207D    jmp         00512091
 0051207F    call        StyleServices
 00512084    lea         ecx,[ebp-24]
 00512087    mov         dl,9
 00512089    mov         edi,dword ptr [eax]
 0051208B    call        dword ptr [edi+0C4];TCustomStyleServices.GetElementDetails
 00512091    lea         edx,[ebp-84]
 00512097    mov         eax,esi
 00512099    call        00511838
 0051209E    lea         eax,[ebp-84]
 005120A4    push        eax
 005120A5    push        0
 005120A7    call        StyleServices
 005120AC    lea         ecx,[ebp-24]
 005120AF    mov         edx,ebx
 005120B1    call        TCustomStyleServices.DrawElement
 005120B6    push        0CC0020
 005120BB    push        0
 005120BD    push        0
 005120BF    push        ebx
 005120C0    mov         eax,dword ptr [ebp-8]
 005120C3    mov         edx,dword ptr [eax]
 005120C5    call        dword ptr [edx+24];TBitmap.GetHeight
 005120C8    push        eax
 005120C9    mov         eax,dword ptr [ebp-8]
 005120CC    mov         edx,dword ptr [eax]
 005120CE    call        dword ptr [edx+30];TBitmap.GetWidth
 005120D1    push        eax
 005120D2    push        0
 005120D4    push        0
 005120D6    mov         eax,dword ptr [ebp-4]
 005120D9    push        eax
 005120DA    call        gdi32.BitBlt
 005120DF    xor         eax,eax
 005120E1    pop         edx
 005120E2    pop         ecx
 005120E3    pop         ecx
 005120E4    mov         dword ptr fs:[eax],edx
 005120E7    push        5120FC
 005120EC    mov         eax,dword ptr [ebp-8]
 005120EF    call        TObject.Free
 005120F4    ret
>005120F5    jmp         @HandleFinally
>005120FA    jmp         005120EC
 005120FC    pop         edi
 005120FD    pop         esi
 005120FE    pop         ebx
 005120FF    mov         esp,ebp
 00512101    pop         ebp
 00512102    ret
end;*}

//00512104
{*procedure sub_00512104(?:?; ?:HDC);
begin
 00512104    push        ebp
 00512105    mov         ebp,esp
 00512107    add         esp,0FFFFFF78
 0051210D    push        ebx
 0051210E    push        esi
 0051210F    push        edi
 00512110    mov         dword ptr [ebp-4],edx
 00512113    mov         esi,eax
 00512115    mov         eax,esi
 00512117    call        TStyleHook.GetHandle
 0051211C    test        eax,eax
>0051211E    je          005123D9
 00512124    cmp         dword ptr [ebp-4],0
>00512128    je          005123D9
 0051212E    lea         edx,[ebp-38]
 00512131    mov         eax,esi
 00512133    call        00511148
 00512138    lea         eax,[ebp-38]
 0051213B    call        RectWidth
 00512140    test        eax,eax
>00512142    je          005123D9
 00512148    lea         edx,[ebp-48]
 0051214B    mov         eax,esi
 0051214D    call        00511148
 00512152    lea         eax,[ebp-48]
 00512155    call        RectHeight
 0051215A    test        eax,eax
>0051215C    je          005123D9
 00512162    call        StyleServices
 00512167    mov         edi,eax
 00512169    lea         edx,[ebp-58]
 0051216C    mov         eax,esi
 0051216E    call        00511908
 00512173    lea         eax,[ebp-58]
 00512176    call        RectHeight
 0051217B    test        eax,eax
>0051217D    jle         005123D9
 00512183    mov         eax,edi
 00512185    mov         edx,dword ptr [eax]
 00512187    call        dword ptr [edx+48];@AbstractError
 0051218A    test        al,al
>0051218C    je          005123D9
 00512192    mov         dl,1
 00512194    mov         eax,[004C1D10];TBitmap
 00512199    call        TBitmap.Create;TBitmap.Create
 0051219E    mov         dword ptr [ebp-0C],eax
 005121A1    xor         eax,eax
 005121A3    push        ebp
 005121A4    push        5123D2
 005121A9    push        dword ptr fs:[eax]
 005121AC    mov         dword ptr fs:[eax],esp
 005121AF    lea         edx,[ebp-78]
 005121B2    mov         eax,esi
 005121B4    call        00511148
 005121B9    lea         eax,[ebp-78]
 005121BC    call        RectHeight
 005121C1    push        eax
 005121C2    lea         edx,[ebp-68]
 005121C5    mov         eax,esi
 005121C7    call        00511148
 005121CC    lea         eax,[ebp-68]
 005121CF    call        RectWidth
 005121D4    mov         edx,eax
 005121D6    mov         eax,dword ptr [ebp-0C]
 005121D9    pop         ecx
 005121DA    mov         ebx,dword ptr [eax]
 005121DC    call        dword ptr [ebx+6C];TBitmap.SetSize
 005121DF    xor         ecx,ecx
 005121E1    mov         edx,0FF00000F
 005121E6    mov         eax,edi
 005121E8    call        TCustomStyleServices.ColorToRGB
 005121ED    push        eax
 005121EE    mov         eax,dword ptr [ebp-0C]
 005121F1    call        TBitmap.GetCanvas
 005121F6    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 005121F9    pop         edx
 005121FA    call        TBrush.SetColor
 005121FF    mov         eax,dword ptr [ebp-0C]
 00512202    mov         edx,dword ptr [eax]
 00512204    call        dword ptr [edx+24];TBitmap.GetHeight
 00512207    push        eax
 00512208    lea         eax,[ebp-88]
 0051220E    push        eax
 0051220F    mov         eax,dword ptr [ebp-0C]
 00512212    mov         edx,dword ptr [eax]
 00512214    call        dword ptr [edx+30];TBitmap.GetWidth
 00512217    mov         ecx,eax
 00512219    xor         edx,edx
 0051221B    xor         eax,eax
 0051221D    call        Rect
 00512222    lea         eax,[ebp-88]
 00512228    push        eax
 00512229    mov         eax,dword ptr [ebp-0C]
 0051222C    call        TBitmap.GetCanvas
 00512231    pop         edx
 00512232    mov         ecx,dword ptr [eax]
 00512234    call        dword ptr [ecx+54];TCanvas.FillRect
 00512237    lea         edx,[ebp-1C]
 0051223A    mov         eax,esi
 0051223C    call        00511908
 00512241    lea         edx,[ebp-88]
 00512247    mov         eax,esi
 00512249    call        00511C7C
 0051224E    mov         eax,dword ptr [ebp-80]
 00512251    mov         dword ptr [ebp-1C],eax
 00512254    lea         edx,[ebp-88]
 0051225A    mov         eax,esi
 0051225C    call        00511D44
 00512261    mov         eax,dword ptr [ebp-88]
 00512267    mov         dword ptr [ebp-14],eax
 0051226A    lea         eax,[ebp-1C]
 0051226D    call        RectHeight
 00512272    test        eax,eax
>00512274    jle         005122A4
 00512276    lea         ecx,[ebp-28]
 00512279    mov         dl,23
 0051227B    mov         eax,edi
 0051227D    mov         ebx,dword ptr [eax]
 0051227F    call        dword ptr [ebx+0C4];TCustomStyleServices.GetElementDetails
 00512285    lea         eax,[ebp-1C]
 00512288    push        eax
 00512289    push        0
 0051228B    mov         eax,dword ptr [ebp-0C]
 0051228E    call        TBitmap.GetCanvas
 00512293    call        TCanvas.GetHandle
 00512298    mov         edx,eax
 0051229A    lea         ecx,[ebp-28]
 0051229D    mov         eax,edi
 0051229F    call        TCustomStyleServices.DrawElement
 005122A4    lea         edx,[ebp-1C]
 005122A7    mov         eax,esi
 005122A9    call        0051192C
 005122AE    mov         eax,dword ptr [ebp-0C]
 005122B1    call        TBitmap.GetCanvas
 005122B6    call        TCanvas.GetHandle
 005122BB    mov         dword ptr [ebp-8],eax
 005122BE    mov         eax,dword ptr [esi+8]
 005122C1    mov         edx,dword ptr [eax]
 005122C3    call        dword ptr [edx+6C]
 005122C6    test        al,al
>005122C8    je          005122EE
 005122CA    movzx       edx,byte ptr [esi+2F]
 005122CE    lea         ecx,[ebp-28]
 005122D1    mov         eax,edi
 005122D3    mov         ebx,dword ptr [eax]
 005122D5    call        dword ptr [ebx+0C4];TCustomStyleServices.GetElementDetails
 005122DB    lea         eax,[ebp-1C]
 005122DE    push        eax
 005122DF    push        0
 005122E1    lea         ecx,[ebp-28]
 005122E4    mov         edx,dword ptr [ebp-8]
 005122E7    mov         eax,edi
 005122E9    call        TCustomStyleServices.DrawElement
 005122EE    mov         eax,dword ptr [esi+8]
 005122F1    mov         edx,dword ptr [eax]
 005122F3    call        dword ptr [edx+6C]
 005122F6    test        al,al
>005122F8    je          0051230D
 005122FA    movzx       edx,byte ptr [esi+30]
 005122FE    lea         ecx,[ebp-28]
 00512301    mov         eax,edi
 00512303    mov         ebx,dword ptr [eax]
 00512305    call        dword ptr [ebx+0C4];TCustomStyleServices.GetElementDetails
>0051230B    jmp         0051231C
 0051230D    lea         ecx,[ebp-28]
 00512310    mov         dl,0D
 00512312    mov         eax,edi
 00512314    mov         ebx,dword ptr [eax]
 00512316    call        dword ptr [ebx+0C4];TCustomStyleServices.GetElementDetails
 0051231C    lea         edx,[ebp-88]
 00512322    mov         eax,esi
 00512324    call        00511C7C
 00512329    lea         eax,[ebp-88]
 0051232F    push        eax
 00512330    push        0
 00512332    lea         ecx,[ebp-28]
 00512335    mov         edx,dword ptr [ebp-8]
 00512338    mov         eax,edi
 0051233A    call        TCustomStyleServices.DrawElement
 0051233F    mov         eax,dword ptr [esi+8]
 00512342    mov         edx,dword ptr [eax]
 00512344    call        dword ptr [edx+6C]
 00512347    test        al,al
>00512349    je          0051235E
 0051234B    movzx       edx,byte ptr [esi+31]
 0051234F    lea         ecx,[ebp-28]
 00512352    mov         eax,edi
 00512354    mov         ebx,dword ptr [eax]
 00512356    call        dword ptr [ebx+0C4];TCustomStyleServices.GetElementDetails
>0051235C    jmp         0051236D
 0051235E    lea         ecx,[ebp-28]
 00512361    mov         dl,11
 00512363    mov         eax,edi
 00512365    mov         ebx,dword ptr [eax]
 00512367    call        dword ptr [ebx+0C4];TCustomStyleServices.GetElementDetails
 0051236D    lea         edx,[ebp-88]
 00512373    mov         eax,esi
 00512375    call        00511D44
 0051237A    lea         eax,[ebp-88]
 00512380    push        eax
 00512381    push        0
 00512383    lea         ecx,[ebp-28]
 00512386    mov         edx,dword ptr [ebp-8]
 00512389    mov         eax,edi
 0051238B    call        TCustomStyleServices.DrawElement
 00512390    push        0CC0020
 00512395    push        0
 00512397    push        0
 00512399    mov         eax,dword ptr [ebp-8]
 0051239C    push        eax
 0051239D    mov         eax,dword ptr [ebp-0C]
 005123A0    mov         edx,dword ptr [eax]
 005123A2    call        dword ptr [edx+24];TBitmap.GetHeight
 005123A5    push        eax
 005123A6    mov         eax,dword ptr [ebp-0C]
 005123A9    mov         edx,dword ptr [eax]
 005123AB    call        dword ptr [edx+30];TBitmap.GetWidth
 005123AE    push        eax
 005123AF    push        0
 005123B1    push        0
 005123B3    mov         eax,dword ptr [ebp-4]
 005123B6    push        eax
 005123B7    call        gdi32.BitBlt
 005123BC    xor         eax,eax
 005123BE    pop         edx
 005123BF    pop         ecx
 005123C0    pop         ecx
 005123C1    mov         dword ptr fs:[eax],edx
 005123C4    push        5123D9
 005123C9    mov         eax,dword ptr [ebp-0C]
 005123CC    call        TObject.Free
 005123D1    ret
>005123D2    jmp         @HandleFinally
>005123D7    jmp         005123C9
 005123D9    pop         edi
 005123DA    pop         esi
 005123DB    pop         ebx
 005123DC    mov         esp,ebp
 005123DE    pop         ebp
 005123DF    ret
end;*}

//005123E0
procedure TScrollBarStyleHook.WMNCPaint(var Message:Messages.TMessage);
begin
{*
 005123E0    cmp         dword ptr [eax+28],0;TScrollBarStyleHook.FScrollWnd:TScrollWindow
>005123E4    jne         005123EB
 005123E6    call        0051128C
 005123EB    ret
*}
end;

//005123EC
procedure TScrollBarStyleHook.WMMouseWheel;
begin
{*
 005123EC    push        ebx
 005123ED    mov         ebx,eax
 005123EF    mov         eax,ebx
 005123F1    call        TStyleHook.CallDefaultProc
 005123F6    mov         eax,ebx
 005123F8    mov         edx,dword ptr [eax]
 005123FA    call        dword ptr [edx+28];TStyleHook.Invalidate
 005123FD    mov         byte ptr [ebx+14],1;TScrollBarStyleHook.FHandled:Boolean
 00512401    pop         ebx
 00512402    ret
*}
end;

//00512404
{*procedure TScrollBarStyleHook.WMLButtonDown(?:?);
begin
 00512404    push        ebx
 00512405    add         esp,0FFFFFF90
 00512408    mov         ebx,eax
 0051240A    movsx       eax,word ptr [edx+8]
 0051240E    movsx       edx,word ptr [edx+0A]
 00512412    mov         dword ptr [esp+8],eax
 00512416    mov         dword ptr [esp+0C],edx
 0051241A    mov         eax,dword ptr [esp+8]
 0051241E    mov         dword ptr [esp],eax
 00512421    mov         eax,dword ptr [esp+0C]
 00512425    mov         dword ptr [esp+4],eax
 00512429    mov         eax,ebx
 0051242B    call        005113E0
 00512430    test        al,al
>00512432    jne         005124B3
 00512434    lea         edx,[esp+10]
 00512438    mov         eax,ebx
 0051243A    call        0051176C
 0051243F    lea         eax,[esp+10]
 00512443    mov         edx,esp
 00512445    call        TRect.Contains
 0051244A    test        al,al
>0051244C    je          0051245E
 0051244E    mov         byte ptr [ebx+2D],4;TScrollBarStyleHook.FVUpState:TThemedScrollBar
 00512452    mov         eax,ebx
 00512454    call        005113B8
>00512459    jmp         00512526
 0051245E    lea         edx,[esp+20]
 00512462    mov         eax,ebx
 00512464    call        00511838
 00512469    lea         eax,[esp+20]
 0051246D    mov         edx,esp
 0051246F    call        TRect.Contains
 00512474    test        al,al
>00512476    je          00512488
 00512478    mov         byte ptr [ebx+2E],8;TScrollBarStyleHook.FVDownState:TThemedScrollBar
 0051247C    mov         eax,ebx
 0051247E    call        005113B8
>00512483    jmp         00512526
 00512488    lea         edx,[esp+30]
 0051248C    mov         eax,ebx
 0051248E    call        00511418
 00512493    lea         eax,[esp+30]
 00512497    mov         edx,esp
 00512499    call        TRect.Contains
 0051249E    test        al,al
>005124A0    je          00512526
 005124A6    mov         byte ptr [ebx+2C],1C;TScrollBarStyleHook.FVSliderState:TThemedScrollBar
 005124AA    mov         eax,ebx
 005124AC    call        005113B8
>005124B1    jmp         00512526
 005124B3    lea         edx,[esp+40]
 005124B7    mov         eax,ebx
 005124B9    call        00511C7C
 005124BE    lea         eax,[esp+40]
 005124C2    mov         edx,esp
 005124C4    call        TRect.Contains
 005124C9    test        al,al
>005124CB    je          005124DA
 005124CD    mov         byte ptr [ebx+30],0C;TScrollBarStyleHook.FHUpState:TThemedScrollBar
 005124D1    mov         eax,ebx
 005124D3    call        005113B8
>005124D8    jmp         00512526
 005124DA    lea         edx,[esp+50]
 005124DE    mov         eax,ebx
 005124E0    call        00511D44
 005124E5    lea         eax,[esp+50]
 005124E9    mov         edx,esp
 005124EB    call        TRect.Contains
 005124F0    test        al,al
>005124F2    je          00512501
 005124F4    mov         byte ptr [ebx+31],10;TScrollBarStyleHook.FHDownState:TThemedScrollBar
 005124F8    mov         eax,ebx
 005124FA    call        005113B8
>005124FF    jmp         00512526
 00512501    lea         edx,[esp+60]
 00512505    mov         eax,ebx
 00512507    call        0051192C
 0051250C    lea         eax,[esp+60]
 00512510    mov         edx,esp
 00512512    call        TRect.Contains
 00512517    test        al,al
>00512519    je          00512526
 0051251B    mov         byte ptr [ebx+2F],18;TScrollBarStyleHook.FHSliderState:TThemedScrollBar
 0051251F    mov         eax,ebx
 00512521    call        005113B8
 00512526    add         esp,70
 00512529    pop         ebx
 0051252A    ret
end;*}

//0051252C
{*procedure TScrollBarStyleHook.WMLButtonUp(?:?);
begin
 0051252C    push        ebx
 0051252D    add         esp,0FFFFFF90
 00512530    mov         ebx,eax
 00512532    movsx       eax,word ptr [edx+8]
 00512536    movsx       edx,word ptr [edx+0A]
 0051253A    mov         dword ptr [esp+8],eax
 0051253E    mov         dword ptr [esp+0C],edx
 00512542    mov         eax,dword ptr [esp+8]
 00512546    mov         dword ptr [esp],eax
 00512549    mov         eax,dword ptr [esp+0C]
 0051254D    mov         dword ptr [esp+4],eax
 00512551    mov         eax,ebx
 00512553    call        005113E0
 00512558    test        al,al
>0051255A    jne         00512606
 00512560    cmp         byte ptr [ebx+2C],1C;TScrollBarStyleHook.FVSliderState:TThemedScrollBar
>00512564    jne         00512596
 00512566    lea         edx,[esp+10]
 0051256A    mov         eax,ebx
 0051256C    call        00511418
 00512571    lea         eax,[esp+10]
 00512575    mov         edx,esp
 00512577    call        TRect.Contains
 0051257C    test        al,al
>0051257E    je          00512586
 00512580    mov         byte ptr [ebx+2C],1B;TScrollBarStyleHook.FVSliderState:TThemedScrollBar
>00512584    jmp         0051258A
 00512586    mov         byte ptr [ebx+2C],1A;TScrollBarStyleHook.FVSliderState:TThemedScrollBar
 0051258A    mov         eax,ebx
 0051258C    call        005113B8
>00512591    jmp         0051269D
 00512596    cmp         byte ptr [ebx+2D],4;TScrollBarStyleHook.FVUpState:TThemedScrollBar
>0051259A    jne         005125CC
 0051259C    lea         edx,[esp+20]
 005125A0    mov         eax,ebx
 005125A2    call        0051176C
 005125A7    lea         eax,[esp+20]
 005125AB    mov         edx,esp
 005125AD    call        TRect.Contains
 005125B2    test        al,al
>005125B4    je          005125BC
 005125B6    mov         byte ptr [ebx+2D],3;TScrollBarStyleHook.FVUpState:TThemedScrollBar
>005125BA    jmp         005125C0
 005125BC    mov         byte ptr [ebx+2D],2;TScrollBarStyleHook.FVUpState:TThemedScrollBar
 005125C0    mov         eax,ebx
 005125C2    call        005113B8
>005125C7    jmp         0051269D
 005125CC    cmp         byte ptr [ebx+2E],8;TScrollBarStyleHook.FVDownState:TThemedScrollBar
>005125D0    jne         0051269D
 005125D6    lea         edx,[esp+30]
 005125DA    mov         eax,ebx
 005125DC    call        00511838
 005125E1    lea         eax,[esp+30]
 005125E5    mov         edx,esp
 005125E7    call        TRect.Contains
 005125EC    test        al,al
>005125EE    je          005125F6
 005125F0    mov         byte ptr [ebx+2E],7;TScrollBarStyleHook.FVDownState:TThemedScrollBar
>005125F4    jmp         005125FA
 005125F6    mov         byte ptr [ebx+2E],6;TScrollBarStyleHook.FVDownState:TThemedScrollBar
 005125FA    mov         eax,ebx
 005125FC    call        005113B8
>00512601    jmp         0051269D
 00512606    cmp         byte ptr [ebx+2F],18;TScrollBarStyleHook.FHSliderState:TThemedScrollBar
>0051260A    jne         00512639
 0051260C    lea         edx,[esp+40]
 00512610    mov         eax,ebx
 00512612    call        0051192C
 00512617    lea         eax,[esp+40]
 0051261B    mov         edx,esp
 0051261D    call        TRect.Contains
 00512622    test        al,al
>00512624    je          0051262C
 00512626    mov         byte ptr [ebx+2F],17;TScrollBarStyleHook.FHSliderState:TThemedScrollBar
>0051262A    jmp         00512630
 0051262C    mov         byte ptr [ebx+2F],16;TScrollBarStyleHook.FHSliderState:TThemedScrollBar
 00512630    mov         eax,ebx
 00512632    call        005113B8
>00512637    jmp         0051269D
 00512639    cmp         byte ptr [ebx+30],0C;TScrollBarStyleHook.FHUpState:TThemedScrollBar
>0051263D    jne         0051266C
 0051263F    lea         edx,[esp+50]
 00512643    mov         eax,ebx
 00512645    call        00511C7C
 0051264A    lea         eax,[esp+50]
 0051264E    mov         edx,esp
 00512650    call        TRect.Contains
 00512655    test        al,al
>00512657    je          0051265F
 00512659    mov         byte ptr [ebx+30],0B;TScrollBarStyleHook.FHUpState:TThemedScrollBar
>0051265D    jmp         00512663
 0051265F    mov         byte ptr [ebx+30],0A;TScrollBarStyleHook.FHUpState:TThemedScrollBar
 00512663    mov         eax,ebx
 00512665    call        005113B8
>0051266A    jmp         0051269D
 0051266C    cmp         byte ptr [ebx+31],10;TScrollBarStyleHook.FHDownState:TThemedScrollBar
>00512670    jne         0051269D
 00512672    lea         edx,[esp+60]
 00512676    mov         eax,ebx
 00512678    call        00511D44
 0051267D    lea         eax,[esp+60]
 00512681    mov         edx,esp
 00512683    call        TRect.Contains
 00512688    test        al,al
>0051268A    je          00512692
 0051268C    mov         byte ptr [ebx+31],0F;TScrollBarStyleHook.FHDownState:TThemedScrollBar
>00512690    jmp         00512696
 00512692    mov         byte ptr [ebx+31],0E;TScrollBarStyleHook.FHDownState:TThemedScrollBar
 00512696    mov         eax,ebx
 00512698    call        005113B8
 0051269D    add         esp,70
 005126A0    pop         ebx
 005126A1    ret
end;*}

//005126A4
{*procedure TScrollBarStyleHook.WMMouseMove(?:?);
begin
 005126A4    push        ebx
 005126A5    push        esi
 005126A6    push        edi
 005126A7    add         esp,0FFFFFF80
 005126AA    mov         esi,edx
 005126AC    mov         edi,eax
 005126AE    mov         edx,esi
 005126B0    mov         eax,edi
 005126B2    call        TMouseTrackControlStyleHook.WMMouseMove
 005126B7    mov         edx,esi
 005126B9    mov         eax,edi
 005126BB    call        TStyleHook.CallDefaultProc
 005126C0    movsx       eax,word ptr [esi+8]
 005126C4    movsx       edx,word ptr [esi+0A]
 005126C8    mov         dword ptr [esp+8],eax
 005126CC    mov         dword ptr [esp+0C],edx
 005126D0    mov         eax,dword ptr [esp+8]
 005126D4    mov         dword ptr [esp],eax
 005126D7    mov         eax,dword ptr [esp+0C]
 005126DB    mov         dword ptr [esp+4],eax
 005126DF    xor         ebx,ebx
 005126E1    mov         eax,edi
 005126E3    call        005113E0
 005126E8    test        al,al
>005126EA    je          00512836
 005126F0    lea         edx,[esp+10]
 005126F4    mov         eax,edi
 005126F6    call        0051192C
 005126FB    lea         eax,[esp+10]
 005126FF    call        RectWidth
 00512704    test        eax,eax
>00512706    jle         00512756
 00512708    lea         edx,[esp+70]
 0051270C    mov         eax,edi
 0051270E    call        0051192C
 00512713    lea         eax,[esp+70]
 00512717    mov         edx,esp
 00512719    call        PtInRect
 0051271E    test        al,al
>00512720    je          00512730
 00512722    cmp         byte ptr [edi+2F],16;TScrollBarStyleHook.FHSliderState:TThemedScrollBar
>00512726    jne         00512730
 00512728    mov         byte ptr [edi+2F],17;TScrollBarStyleHook.FHSliderState:TThemedScrollBar
 0051272C    mov         bl,1
>0051272E    jmp         00512756
 00512730    lea         edx,[esp+70]
 00512734    mov         eax,edi
 00512736    call        0051192C
 0051273B    lea         eax,[esp+70]
 0051273F    mov         edx,esp
 00512741    call        PtInRect
 00512746    test        al,al
>00512748    jne         00512756
 0051274A    cmp         byte ptr [edi+2F],17;TScrollBarStyleHook.FHSliderState:TThemedScrollBar
>0051274E    jne         00512756
 00512750    mov         byte ptr [edi+2F],16;TScrollBarStyleHook.FHSliderState:TThemedScrollBar
 00512754    mov         bl,1
 00512756    lea         edx,[esp+20]
 0051275A    mov         eax,edi
 0051275C    call        0051192C
 00512761    lea         eax,[esp+20]
 00512765    call        RectWidth
 0051276A    test        eax,eax
>0051276C    jle         005127BC
 0051276E    lea         edx,[esp+70]
 00512772    mov         eax,edi
 00512774    call        00511D44
 00512779    lea         eax,[esp+70]
 0051277D    mov         edx,esp
 0051277F    call        PtInRect
 00512784    test        al,al
>00512786    je          00512796
 00512788    cmp         byte ptr [edi+31],0E;TScrollBarStyleHook.FHDownState:TThemedScrollBar
>0051278C    jne         00512796
 0051278E    mov         byte ptr [edi+31],0F;TScrollBarStyleHook.FHDownState:TThemedScrollBar
 00512792    mov         bl,1
>00512794    jmp         005127BC
 00512796    lea         edx,[esp+70]
 0051279A    mov         eax,edi
 0051279C    call        00511D44
 005127A1    lea         eax,[esp+70]
 005127A5    mov         edx,esp
 005127A7    call        PtInRect
 005127AC    test        al,al
>005127AE    jne         005127BC
 005127B0    cmp         byte ptr [edi+31],0F;TScrollBarStyleHook.FHDownState:TThemedScrollBar
>005127B4    jne         005127BC
 005127B6    mov         byte ptr [edi+31],0E;TScrollBarStyleHook.FHDownState:TThemedScrollBar
 005127BA    mov         bl,1
 005127BC    lea         edx,[esp+30]
 005127C0    mov         eax,edi
 005127C2    call        0051192C
 005127C7    lea         eax,[esp+30]
 005127CB    call        RectWidth
 005127D0    test        eax,eax
>005127D2    jle         00512968
 005127D8    lea         edx,[esp+70]
 005127DC    mov         eax,edi
 005127DE    call        00511C7C
 005127E3    lea         eax,[esp+70]
 005127E7    mov         edx,esp
 005127E9    call        PtInRect
 005127EE    test        al,al
>005127F0    je          00512803
 005127F2    cmp         byte ptr [edi+30],0A;TScrollBarStyleHook.FHUpState:TThemedScrollBar
>005127F6    jne         00512803
 005127F8    mov         byte ptr [edi+30],0B;TScrollBarStyleHook.FHUpState:TThemedScrollBar
 005127FC    mov         bl,1
>005127FE    jmp         00512968
 00512803    lea         edx,[esp+70]
 00512807    mov         eax,edi
 00512809    call        00511C7C
 0051280E    lea         eax,[esp+70]
 00512812    mov         edx,esp
 00512814    call        PtInRect
 00512819    test        al,al
>0051281B    jne         00512968
 00512821    cmp         byte ptr [edi+30],0B;TScrollBarStyleHook.FHUpState:TThemedScrollBar
>00512825    jne         00512968
 0051282B    mov         byte ptr [edi+30],0A;TScrollBarStyleHook.FHUpState:TThemedScrollBar
 0051282F    mov         bl,1
>00512831    jmp         00512968
 00512836    lea         edx,[esp+40]
 0051283A    mov         eax,edi
 0051283C    call        00511418
 00512841    lea         eax,[esp+40]
 00512845    call        RectHeight
 0051284A    test        eax,eax
>0051284C    jle         0051289C
 0051284E    lea         edx,[esp+70]
 00512852    mov         eax,edi
 00512854    call        00511418
 00512859    lea         eax,[esp+70]
 0051285D    mov         edx,esp
 0051285F    call        PtInRect
 00512864    test        al,al
>00512866    je          00512876
 00512868    cmp         byte ptr [edi+2C],1A;TScrollBarStyleHook.FVSliderState:TThemedScrollBar
>0051286C    jne         00512876
 0051286E    mov         byte ptr [edi+2C],1B;TScrollBarStyleHook.FVSliderState:TThemedScrollBar
 00512872    mov         bl,1
>00512874    jmp         0051289C
 00512876    lea         edx,[esp+70]
 0051287A    mov         eax,edi
 0051287C    call        00511418
 00512881    lea         eax,[esp+70]
 00512885    mov         edx,esp
 00512887    call        PtInRect
 0051288C    test        al,al
>0051288E    jne         0051289C
 00512890    cmp         byte ptr [edi+2C],1B;TScrollBarStyleHook.FVSliderState:TThemedScrollBar
>00512894    jne         0051289C
 00512896    mov         byte ptr [edi+2C],1A;TScrollBarStyleHook.FVSliderState:TThemedScrollBar
 0051289A    mov         bl,1
 0051289C    lea         edx,[esp+50]
 005128A0    mov         eax,edi
 005128A2    call        00511418
 005128A7    lea         eax,[esp+50]
 005128AB    call        RectHeight
 005128B0    test        eax,eax
>005128B2    jle         00512902
 005128B4    lea         edx,[esp+70]
 005128B8    mov         eax,edi
 005128BA    call        00511838
 005128BF    lea         eax,[esp+70]
 005128C3    mov         edx,esp
 005128C5    call        PtInRect
 005128CA    test        al,al
>005128CC    je          005128DC
 005128CE    cmp         byte ptr [edi+2E],6;TScrollBarStyleHook.FVDownState:TThemedScrollBar
>005128D2    jne         005128DC
 005128D4    mov         byte ptr [edi+2E],7;TScrollBarStyleHook.FVDownState:TThemedScrollBar
 005128D8    mov         bl,1
>005128DA    jmp         00512902
 005128DC    lea         edx,[esp+70]
 005128E0    mov         eax,edi
 005128E2    call        00511838
 005128E7    lea         eax,[esp+70]
 005128EB    mov         edx,esp
 005128ED    call        PtInRect
 005128F2    test        al,al
>005128F4    jne         00512902
 005128F6    cmp         byte ptr [edi+2E],7;TScrollBarStyleHook.FVDownState:TThemedScrollBar
>005128FA    jne         00512902
 005128FC    mov         byte ptr [edi+2E],6;TScrollBarStyleHook.FVDownState:TThemedScrollBar
 00512900    mov         bl,1
 00512902    lea         edx,[esp+60]
 00512906    mov         eax,edi
 00512908    call        00511418
 0051290D    lea         eax,[esp+60]
 00512911    call        RectHeight
 00512916    test        eax,eax
>00512918    jle         00512968
 0051291A    lea         edx,[esp+70]
 0051291E    mov         eax,edi
 00512920    call        0051176C
 00512925    lea         eax,[esp+70]
 00512929    mov         edx,esp
 0051292B    call        PtInRect
 00512930    test        al,al
>00512932    je          00512942
 00512934    cmp         byte ptr [edi+2D],2;TScrollBarStyleHook.FVUpState:TThemedScrollBar
>00512938    jne         00512942
 0051293A    mov         byte ptr [edi+2D],3;TScrollBarStyleHook.FVUpState:TThemedScrollBar
 0051293E    mov         bl,1
>00512940    jmp         00512968
 00512942    lea         edx,[esp+70]
 00512946    mov         eax,edi
 00512948    call        0051176C
 0051294D    lea         eax,[esp+70]
 00512951    mov         edx,esp
 00512953    call        PtInRect
 00512958    test        al,al
>0051295A    jne         00512968
 0051295C    cmp         byte ptr [edi+2D],3;TScrollBarStyleHook.FVUpState:TThemedScrollBar
>00512960    jne         00512968
 00512962    mov         byte ptr [edi+2D],2;TScrollBarStyleHook.FVUpState:TThemedScrollBar
 00512966    mov         bl,1
 00512968    test        bl,bl
>0051296A    je          00512973
 0051296C    mov         eax,edi
 0051296E    call        005113B8
 00512973    mov         byte ptr [edi+14],1;TScrollBarStyleHook.FHandled:Boolean
 00512977    add         esp,80
 0051297D    pop         edi
 0051297E    pop         esi
 0051297F    pop         ebx
 00512980    ret
end;*}

//00512984
procedure TScrollBarStyleHook.WMLButtonDblClk;
begin
{*
 00512984    call        TScrollBarStyleHook.WMLButtonDown
 00512989    ret
*}
end;

//0051298C
procedure TScrollBarStyleHook.WMSetFocus(var Message:Messages.TMessage);
begin
{*
 0051298C    push        ebx
 0051298D    mov         ebx,eax
 0051298F    mov         eax,ebx
 00512991    call        TStyleHook.CallDefaultProc
 00512996    mov         eax,ebx
 00512998    call        005113B8
 0051299D    mov         byte ptr [ebx+14],1;TScrollBarStyleHook.FHandled:Boolean
 005129A1    pop         ebx
 005129A2    ret
*}
end;

//005129A4
procedure TScrollBarStyleHook.WMKillFocus(var Message:Messages.TMessage);
begin
{*
 005129A4    push        ebx
 005129A5    mov         ebx,eax
 005129A7    mov         eax,ebx
 005129A9    call        TStyleHook.CallDefaultProc
 005129AE    mov         eax,ebx
 005129B0    call        005113B8
 005129B5    mov         byte ptr [ebx+14],1;TScrollBarStyleHook.FHandled:Boolean
 005129B9    pop         ebx
 005129BA    ret
*}
end;

//005129BC
procedure TScrollBarStyleHook.WMKeyDown;
begin
{*
 005129BC    push        ebx
 005129BD    mov         ebx,eax
 005129BF    mov         eax,ebx
 005129C1    call        TStyleHook.CallDefaultProc
 005129C6    mov         eax,ebx
 005129C8    call        005113B8
 005129CD    mov         byte ptr [ebx+14],1;TScrollBarStyleHook.FHandled:Boolean
 005129D1    pop         ebx
 005129D2    ret
*}
end;

//005129D4
procedure TScrollBarStyleHook.WMKeyUp;
begin
{*
 005129D4    push        ebx
 005129D5    mov         ebx,eax
 005129D7    mov         eax,ebx
 005129D9    call        TStyleHook.CallDefaultProc
 005129DE    mov         eax,ebx
 005129E0    call        005113B8
 005129E5    mov         byte ptr [ebx+14],1;TScrollBarStyleHook.FHandled:Boolean
 005129E9    pop         ebx
 005129EA    ret
*}
end;

//005129EC
procedure sub_005129EC;
begin
{*
 005129EC    push        ebx
 005129ED    mov         ebx,eax
 005129EF    mov         eax,ebx
 005129F1    call        0058DB48
 005129F6    cmp         byte ptr [ebx+2C],1B;TScrollBarStyleHook.FVSliderState:TThemedScrollBar
>005129FA    jne         00512A00
 005129FC    mov         byte ptr [ebx+2C],1A;TScrollBarStyleHook.FVSliderState:TThemedScrollBar
 00512A00    cmp         byte ptr [ebx+2F],17;TScrollBarStyleHook.FHSliderState:TThemedScrollBar
>00512A04    jne         00512A0A
 00512A06    mov         byte ptr [ebx+2F],16;TScrollBarStyleHook.FHSliderState:TThemedScrollBar
 00512A0A    cmp         byte ptr [ebx+2D],3;TScrollBarStyleHook.FVUpState:TThemedScrollBar
>00512A0E    jne         00512A14
 00512A10    mov         byte ptr [ebx+2D],2;TScrollBarStyleHook.FVUpState:TThemedScrollBar
 00512A14    cmp         byte ptr [ebx+2E],7;TScrollBarStyleHook.FVDownState:TThemedScrollBar
>00512A18    jne         00512A1E
 00512A1A    mov         byte ptr [ebx+2E],6;TScrollBarStyleHook.FVDownState:TThemedScrollBar
 00512A1E    cmp         byte ptr [ebx+30],0B;TScrollBarStyleHook.FHUpState:TThemedScrollBar
>00512A22    jne         00512A28
 00512A24    mov         byte ptr [ebx+30],0A;TScrollBarStyleHook.FHUpState:TThemedScrollBar
 00512A28    cmp         byte ptr [ebx+31],0F;TScrollBarStyleHook.FHDownState:TThemedScrollBar
>00512A2C    jne         00512A32
 00512A2E    mov         byte ptr [ebx+31],0E;TScrollBarStyleHook.FHDownState:TThemedScrollBar
 00512A32    mov         eax,ebx
 00512A34    call        005113B8
 00512A39    pop         ebx
 00512A3A    ret
*}
end;

//00512A3C
{*procedure TScrollBarStyleHook.sub_00512A3C(?:?);
begin
 00512A3C    push        ebx
 00512A3D    push        esi
 00512A3E    push        edi
 00512A3F    mov         edi,edx
 00512A41    mov         esi,eax
 00512A43    xor         ebx,ebx
 00512A45    cmp         byte ptr [esi+2D],4;TScrollBarStyleHook.FVUpState:TThemedScrollBar
>00512A49    jne         00512A51
 00512A4B    mov         byte ptr [esi+2D],2;TScrollBarStyleHook.FVUpState:TThemedScrollBar
 00512A4F    mov         bl,1
 00512A51    cmp         byte ptr [esi+2E],8;TScrollBarStyleHook.FVDownState:TThemedScrollBar
>00512A55    jne         00512A5D
 00512A57    mov         byte ptr [esi+2E],6;TScrollBarStyleHook.FVDownState:TThemedScrollBar
 00512A5B    mov         bl,1
 00512A5D    cmp         byte ptr [esi+30],0C;TScrollBarStyleHook.FHUpState:TThemedScrollBar
>00512A61    jne         00512A69
 00512A63    mov         byte ptr [esi+30],0A;TScrollBarStyleHook.FHUpState:TThemedScrollBar
 00512A67    mov         bl,1
 00512A69    cmp         byte ptr [esi+31],10;TScrollBarStyleHook.FHDownState:TThemedScrollBar
>00512A6D    jne         00512A75
 00512A6F    mov         byte ptr [esi+31],0E;TScrollBarStyleHook.FHDownState:TThemedScrollBar
 00512A73    mov         bl,1
 00512A75    cmp         byte ptr [esi+2C],1C;TScrollBarStyleHook.FVSliderState:TThemedScrollBar
>00512A79    jne         00512A8D
 00512A7B    mov         eax,esi
 00512A7D    call        TStyleHook.GetHandle
 00512A82    cmp         eax,dword ptr [edi+8]
>00512A85    je          00512A8D
 00512A87    mov         byte ptr [esi+2C],1A;TScrollBarStyleHook.FVSliderState:TThemedScrollBar
 00512A8B    mov         bl,1
 00512A8D    cmp         byte ptr [esi+2F],18;TScrollBarStyleHook.FHSliderState:TThemedScrollBar
>00512A91    jne         00512AA5
 00512A93    mov         eax,esi
 00512A95    call        TStyleHook.GetHandle
 00512A9A    cmp         eax,dword ptr [edi+8]
>00512A9D    je          00512AA5
 00512A9F    mov         byte ptr [esi+2F],16;TScrollBarStyleHook.FHSliderState:TThemedScrollBar
 00512AA3    mov         bl,1
 00512AA5    test        bl,bl
>00512AA7    je          00512AB0
 00512AA9    mov         eax,esi
 00512AAB    call        005113B8
 00512AB0    pop         edi
 00512AB1    pop         esi
 00512AB2    pop         ebx
 00512AB3    ret
end;*}

//00512AB4
constructor TEditStyleHook.Create(AControl:TWinControl);
begin
{*
 00512AB4    push        ebx
 00512AB5    push        esi
 00512AB6    test        dl,dl
>00512AB8    je          00512AC2
 00512ABA    add         esp,0FFFFFFF0
 00512ABD    call        @ClassCreate
 00512AC2    mov         ebx,edx
 00512AC4    mov         esi,eax
 00512AC6    xor         edx,edx
 00512AC8    mov         eax,esi
 00512ACA    call        TMouseTrackControlStyleHook.Create
 00512ACF    mov         byte ptr [esi+18],1;TEditStyleHook.FOverridePaintNC:Boolean
 00512AD3    mov         byte ptr [esi+16],1;TEditStyleHook.FOverrideEraseBkgnd:Boolean
 00512AD7    mov         eax,esi
 00512AD9    call        00512C74
 00512ADE    mov         eax,esi
 00512AE0    test        bl,bl
>00512AE2    je          00512AF3
 00512AE4    call        @AfterConstruction
 00512AE9    pop         dword ptr fs:[0]
 00512AF0    add         esp,0C
 00512AF3    mov         eax,esi
 00512AF5    pop         esi
 00512AF6    pop         ebx
 00512AF7    ret
*}
end;

//00512AF8
{*procedure TEditStyleHook.WMNCCalcSize(?:?);
begin
 00512AF8    push        ebx
 00512AF9    push        esi
 00512AFA    push        edi
 00512AFB    mov         edi,edx
 00512AFD    mov         ebx,eax
 00512AFF    mov         esi,dword ptr [ebx+8];TEditStyleHook.FControl:TWinControl
 00512B02    mov         eax,esi
 00512B04    mov         edx,dword ptr ds:[4F9C6C];TCustomEdit
 00512B0A    call        @IsClass
 00512B0F    test        al,al
>00512B11    je          00512B3F
 00512B13    cmp         byte ptr [esi+1C1],0;TWinControl.FBevelKind:TBevelKind
>00512B1A    je          00512B3F
 00512B1C    mov         esi,dword ptr [edi+8]
 00512B1F    mov         eax,ebx
 00512B21    mov         edx,dword ptr [eax]
 00512B23    call        dword ptr [edx+4];TEditStyleHook.sub_0058D43C
 00512B26    test        al,al
>00512B28    je          00512B3B
 00512B2A    mov         eax,esi
 00512B2C    add         dword ptr [eax],2
 00512B2F    add         dword ptr [eax+4],2
 00512B33    sub         dword ptr [eax+8],2
 00512B37    sub         dword ptr [eax+0C],2
 00512B3B    mov         byte ptr [ebx+14],1;TEditStyleHook.FHandled:Boolean
 00512B3F    pop         edi
 00512B40    pop         esi
 00512B41    pop         ebx
 00512B42    ret
end;*}

//00512B44
procedure sub_00512B44;
begin
{*
 00512B44    mov         edx,dword ptr [eax]
 00512B46    call        dword ptr [edx+2C];TStyleHook.InvalidateNC
 00512B49    ret
*}
end;

//00512B4C
procedure sub_00512B4C;
begin
{*
 00512B4C    mov         edx,dword ptr [eax]
 00512B4E    call        dword ptr [edx+2C];TStyleHook.InvalidateNC
 00512B51    ret
*}
end;

//00512B54
{*procedure sub_00512B54(?:?);
begin
 00512B54    push        ebx
 00512B55    push        esi
 00512B56    push        edi
 00512B57    add         esp,0FFFFFFD4
 00512B5A    mov         edi,edx
 00512B5C    mov         ebx,eax
 00512B5E    call        StyleServices
 00512B63    mov         edx,dword ptr [eax]
 00512B65    call        dword ptr [edx+48];@AbstractError
 00512B68    test        al,al
>00512B6A    je          00512C6D
 00512B70    mov         eax,ebx
 00512B72    mov         edx,dword ptr [eax]
 00512B74    call        dword ptr [edx+4];TEditStyleHook.sub_0058D43C
 00512B77    test        al,al
>00512B79    je          00512C6D
 00512B7F    mov         eax,dword ptr [ebx+8];TEditStyleHook.FControl:TWinControl
 00512B82    mov         si,0FFB1
 00512B86    call        @CallDynaInst;TWinControl.sub_004EFDB8
 00512B8B    test        al,al
>00512B8D    je          00512BA2
 00512B8F    call        StyleServices
 00512B94    mov         ecx,esp
 00512B96    mov         dl,17
 00512B98    mov         esi,dword ptr [eax]
 00512B9A    call        dword ptr [esi+84];TCustomStyleServices.GetElementDetails
>00512BA0    jmp         00512BEB
 00512BA2    cmp         byte ptr [ebx+24],0;TEditStyleHook.FMouseInControl:Boolean
>00512BA6    je          00512BBB
 00512BA8    call        StyleServices
 00512BAD    mov         ecx,esp
 00512BAF    mov         dl,16
 00512BB1    mov         esi,dword ptr [eax]
 00512BB3    call        dword ptr [esi+84];TCustomStyleServices.GetElementDetails
>00512BB9    jmp         00512BEB
 00512BBB    mov         eax,dword ptr [ebx+8];TEditStyleHook.FControl:TWinControl
 00512BBE    mov         edx,dword ptr [eax]
 00512BC0    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 00512BC3    test        al,al
>00512BC5    je          00512BDA
 00512BC7    call        StyleServices
 00512BCC    mov         ecx,esp
 00512BCE    mov         dl,15
 00512BD0    mov         esi,dword ptr [eax]
 00512BD2    call        dword ptr [esi+84];TCustomStyleServices.GetElementDetails
>00512BD8    jmp         00512BEB
 00512BDA    call        StyleServices
 00512BDF    mov         ecx,esp
 00512BE1    mov         dl,18
 00512BE3    mov         esi,dword ptr [eax]
 00512BE5    call        dword ptr [esi+84];TCustomStyleServices.GetElementDetails
 00512BEB    mov         esi,dword ptr [ebx+8];TEditStyleHook.FControl:TWinControl
 00512BEE    mov         eax,dword ptr [esi+5C];TWinControl.FHeight:Integer
 00512BF1    push        eax
 00512BF2    lea         eax,[esp+10]
 00512BF6    push        eax
 00512BF7    mov         ecx,dword ptr [esi+58];TWinControl.FWidth:Integer
 00512BFA    xor         edx,edx
 00512BFC    xor         eax,eax
 00512BFE    call        Rect
 00512C03    lea         eax,[esp+0C]
 00512C07    mov         ecx,0FFFFFFFE
 00512C0C    mov         edx,0FFFFFFFE
 00512C11    call        InflateRect
 00512C16    mov         eax,dword ptr [esp+18]
 00512C1A    push        eax
 00512C1B    mov         eax,dword ptr [esp+18]
 00512C1F    push        eax
 00512C20    mov         eax,dword ptr [esp+18]
 00512C24    push        eax
 00512C25    mov         eax,dword ptr [esp+18]
 00512C29    push        eax
 00512C2A    mov         eax,edi
 00512C2C    call        TCanvas.GetHandle
 00512C31    push        eax
 00512C32    call        gdi32.ExcludeClipRect
 00512C37    mov         esi,dword ptr [ebx+8];TEditStyleHook.FControl:TWinControl
 00512C3A    mov         eax,dword ptr [esi+5C];TWinControl.FHeight:Integer
 00512C3D    push        eax
 00512C3E    lea         eax,[esp+20]
 00512C42    push        eax
 00512C43    mov         ecx,dword ptr [esi+58];TWinControl.FWidth:Integer
 00512C46    xor         edx,edx
 00512C48    xor         eax,eax
 00512C4A    call        Rect
 00512C4F    lea         eax,[esp+1C]
 00512C53    push        eax
 00512C54    push        0
 00512C56    mov         eax,edi
 00512C58    call        TCanvas.GetHandle
 00512C5D    push        eax
 00512C5E    call        StyleServices
 00512C63    lea         ecx,[esp+0C]
 00512C67    pop         edx
 00512C68    call        TCustomStyleServices.DrawElement
 00512C6D    add         esp,2C
 00512C70    pop         edi
 00512C71    pop         esi
 00512C72    pop         ebx
 00512C73    ret
end;*}

//00512C74
procedure sub_00512C74(?:TEditStyleHook);
begin
{*
 00512C74    push        ebx
 00512C75    push        esi
 00512C76    push        edi
 00512C77    mov         ebx,eax
 00512C79    call        StyleServices
 00512C7E    mov         esi,eax
 00512C80    mov         eax,dword ptr [ebx+8];TEditStyleHook.FControl:TWinControl
 00512C83    mov         edx,dword ptr [eax]
 00512C85    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 00512C88    and         eax,7F
 00512C8B    movzx       edx,byte ptr [eax+7A14A8]
 00512C92    mov         eax,esi
 00512C94    call        TCustomStyleServices.GetStyleColor
 00512C99    mov         edx,eax
 00512C9B    mov         eax,dword ptr [ebx+4];TEditStyleHook.FBrush:TBrush
 00512C9E    call        TBrush.SetColor
 00512CA3    mov         edi,dword ptr [ebx+8];TEditStyleHook.FControl:TWinControl
 00512CA6    test        byte ptr [edi+188],1;TWinControl.FStyleElements:TStyleElements
>00512CAD    je          00512CCC
 00512CAF    mov         eax,edi
 00512CB1    mov         edx,dword ptr [eax]
 00512CB3    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 00512CB6    and         eax,7F
 00512CB9    movzx       edx,byte ptr [eax+7A14AA]
 00512CC0    mov         eax,esi
 00512CC2    call        TCustomStyleServices.GetStyleFontColor
 00512CC7    mov         dword ptr [ebx+10],eax;TEditStyleHook.FFontColor:TColor
>00512CCA    jmp         00512CD5
 00512CCC    mov         eax,dword ptr [edi+74];TWinControl.FFont:TFont
 00512CCF    mov         eax,dword ptr [eax+18];TFont.FColor:TColor
 00512CD2    mov         dword ptr [ebx+10],eax;TEditStyleHook.FFontColor:TColor
 00512CD5    pop         edi
 00512CD6    pop         esi
 00512CD7    pop         ebx
 00512CD8    ret
*}
end;

//00512CDC
{*procedure sub_00512CDC(?:?);
begin
 00512CDC    push        ebx
 00512CDD    push        esi
 00512CDE    push        edi
 00512CDF    mov         esi,edx
 00512CE1    mov         ebx,eax
 00512CE3    mov         eax,dword ptr [esi]
 00512CE5    sub         eax,0B00C
>00512CEA    je          00512D31
 00512CEC    add         eax,0FFFFF2DA
 00512CF1    sub         eax,7
>00512CF4    jae         00512D3E
 00512CF6    mov         eax,dword ptr [ebx+10];TEditStyleHook.FFontColor:TColor
 00512CF9    call        ColorToRGB
 00512CFE    push        eax
 00512CFF    mov         eax,dword ptr [esi+4]
 00512D02    push        eax
 00512D03    call        gdi32.SetTextColor
 00512D08    mov         edi,dword ptr [ebx+4];TEditStyleHook.FBrush:TBrush
 00512D0B    mov         eax,dword ptr [edi+10];TBrush.FResource:PResource
 00512D0E    mov         eax,dword ptr [eax+18]
 00512D11    call        ColorToRGB
 00512D16    push        eax
 00512D17    mov         eax,dword ptr [esi+4]
 00512D1A    push        eax
 00512D1B    call        gdi32.SetBkColor
 00512D20    mov         eax,dword ptr [ebx+4];TEditStyleHook.FBrush:TBrush
 00512D23    call        TBrush.GetHandle
 00512D28    mov         dword ptr [esi+0C],eax
 00512D2B    mov         byte ptr [ebx+14],1;TEditStyleHook.FHandled:Boolean
>00512D2F    jmp         00512D47
 00512D31    mov         eax,ebx
 00512D33    call        00512C74
 00512D38    mov         byte ptr [ebx+14],0;TEditStyleHook.FHandled:Boolean
>00512D3C    jmp         00512D47
 00512D3E    mov         edx,esi
 00512D40    mov         eax,ebx
 00512D42    call        0058DB4C
 00512D47    mov         eax,dword ptr [esi]
 00512D49    sub         eax,5
>00512D4C    je          00512D57
 00512D4E    sub         eax,0B002
>00512D53    je          00512D70
>00512D55    jmp         00512D85
 00512D57    mov         eax,dword ptr [ebx+8];TEditStyleHook.FControl:TWinControl
 00512D5A    test        byte ptr [eax+188],4;TWinControl.FStyleElements:TStyleElements
>00512D61    je          00512D6A
 00512D63    mov         eax,ebx
 00512D65    mov         edx,dword ptr [eax]
 00512D67    call        dword ptr [edx+2C];TStyleHook.InvalidateNC
 00512D6A    mov         byte ptr [ebx+14],0;TEditStyleHook.FHandled:Boolean
>00512D6E    jmp         00512D85
 00512D70    call        TStyleManager.GetSystemStyle
 00512D75    mov         edx,dword ptr [eax]
 00512D77    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 00512D7A    test        al,al
>00512D7C    jne         00512D85
 00512D7E    mov         eax,ebx
 00512D80    mov         edx,dword ptr [eax]
 00512D82    call        dword ptr [edx+2C];TStyleHook.InvalidateNC
 00512D85    pop         edi
 00512D86    pop         esi
 00512D87    pop         ebx
 00512D88    ret
end;*}

//00512D8C
constructor TComboBoxStyleHook.Create(AControl:TWinControl);
begin
{*
 00512D8C    push        ebx
 00512D8D    push        esi
 00512D8E    test        dl,dl
>00512D90    je          00512D9A
 00512D92    add         esp,0FFFFFFF0
 00512D95    call        @ClassCreate
 00512D9A    mov         ebx,edx
 00512D9C    mov         esi,eax
 00512D9E    xor         edx,edx
 00512DA0    mov         eax,esi
 00512DA2    call        TMouseTrackControlStyleHook.Create
 00512DA7    mov         eax,esi
 00512DA9    call        00512F90
 00512DAE    cmp         al,1
>00512DB0    jne         00512DB6
 00512DB2    mov         byte ptr [esi+16],1;TComboBoxStyleHook.FOverrideEraseBkgnd:Boolean
 00512DB6    mov         byte ptr [esi+4C],0;TComboBoxStyleHook.FMouseOnButton:Boolean
 00512DBA    xor         eax,eax
 00512DBC    mov         dword ptr [esi+54],eax;TComboBoxStyleHook.FEditHandle:HWND
 00512DBF    xor         eax,eax
 00512DC1    mov         dword ptr [esi+50],eax;TComboBoxStyleHook.FListHandle:HWND
 00512DC4    xor         eax,eax
 00512DC6    mov         dword ptr [esi+58],eax;TComboBoxStyleHook.FListBoxInstance:Pointer
 00512DC9    mov         byte ptr [esi+4B],0;TComboBoxStyleHook.FIgnoreStyleChanged:Boolean
 00512DCD    mov         byte ptr [esi+48],1A;TComboBoxStyleHook.FVSliderState:TThemedScrollBar
 00512DD1    mov         byte ptr [esi+49],2;TComboBoxStyleHook.FVUpState:TThemedScrollBar
 00512DD5    mov         byte ptr [esi+4A],6;TComboBoxStyleHook.FVDownState:TThemedScrollBar
 00512DD9    xor         eax,eax
 00512DDB    mov         dword ptr [esi+44],eax;TComboBoxStyleHook.FSliderSize:Integer
 00512DDE    xor         eax,eax
 00512DE0    mov         dword ptr [esi+60],eax;TComboBoxStyleHook.FListBoxTimerCode:Integer
 00512DE3    mov         byte ptr [esi+64],0;TComboBoxStyleHook.FListBoxUpBtnDown:Boolean
 00512DE7    mov         byte ptr [esi+65],0;TComboBoxStyleHook.FListBoxDownBtnDown:Boolean
 00512DEB    mov         byte ptr [esi+66],0;TComboBoxStyleHook.FListBoxTrackUpDown:Boolean
 00512DEF    mov         byte ptr [esi+67],0;TComboBoxStyleHook.FListBoxTrackDownDown:Boolean
 00512DF3    mov         dword ptr [esi+68],0FFFFFFFF;TComboBoxStyleHook.FTempItemIndex:Integer
 00512DFA    mov         eax,esi
 00512DFC    call        0051302C
 00512E01    mov         eax,esi
 00512E03    test        bl,bl
>00512E05    je          00512E16
 00512E07    call        @AfterConstruction
 00512E0C    pop         dword ptr fs:[0]
 00512E13    add         esp,0C
 00512E16    mov         eax,esi
 00512E18    pop         esi
 00512E19    pop         ebx
 00512E1A    ret
*}
end;

//00512E1C
destructor TComboBoxStyleHook.Destroy();
begin
{*
 00512E1C    push        ebx
 00512E1D    push        esi
 00512E1E    call        @BeforeDestruction
 00512E23    mov         ebx,edx
 00512E25    mov         esi,eax
 00512E27    mov         eax,dword ptr [esi+50];TComboBoxStyleHook.FListHandle:HWND
 00512E2A    test        eax,eax
>00512E2C    je          00512E4D
 00512E2E    cmp         dword ptr [esi+58],0;TComboBoxStyleHook.FListBoxInstance:Pointer
>00512E32    je          00512E4D
 00512E34    mov         edx,dword ptr [esi+5C];TComboBoxStyleHook.FDefListBoxProc:Pointer
 00512E37    push        edx
 00512E38    push        0FC
 00512E3A    push        eax
 00512E3B    call        user32.SetWindowLongW
 00512E40    mov         eax,dword ptr [esi+58];TComboBoxStyleHook.FListBoxInstance:Pointer
 00512E43    call        FreeObjectInstance
 00512E48    xor         eax,eax
 00512E4A    mov         dword ptr [esi+58],eax;TComboBoxStyleHook.FListBoxInstance:Pointer
 00512E4D    cmp         dword ptr [esi+60],0;TComboBoxStyleHook.FListBoxTimerCode:Integer
>00512E51    je          00512E5A
 00512E53    mov         eax,esi
 00512E55    call        00512EDC
 00512E5A    mov         dl,0FC
 00512E5C    and         dl,bl
 00512E5E    mov         eax,esi
 00512E60    call        TMouseTrackControlStyleHook.Destroy
 00512E65    test        bl,bl
>00512E67    jle         00512E70
 00512E69    mov         eax,esi
 00512E6B    call        @ClassDestroy
 00512E70    pop         esi
 00512E71    pop         ebx
 00512E72    ret
*}
end;

//00512E74
{*function sub_00512E74(?:?):?;
begin
 00512E74    mov         ecx,dword ptr [eax+54];TComboBoxStyleHook.FEditHandle:HWND
 00512E77    test        ecx,ecx
>00512E79    je          00512E7F
 00512E7B    cmp         edx,ecx
>00512E7D    je          00512E82
 00512E7F    xor         eax,eax
 00512E81    ret
 00512E82    mov         al,1
 00512E84    ret
end;*}

//00512E88
function sub_00512E88:Boolean;
begin
{*
 00512E88    mov         eax,dword ptr [eax+8];TComboBoxStyleHook.FControl:TWinControl
 00512E8B    test        byte ptr [eax+188],4;TWinControl.FStyleElements:TStyleElements
 00512E92    setne       al
 00512E95    ret
*}
end;

//00512E98
{*procedure sub_00512E98(?:?; ?:?);
begin
 00512E98    push        ebx
 00512E99    push        esi
 00512E9A    mov         esi,edx
 00512E9C    mov         ebx,eax
 00512E9E    cmp         dword ptr [ebx+60],0
>00512EA2    je          00512EAB
 00512EA4    mov         eax,ebx
 00512EA6    call        00512EDC
 00512EAB    mov         dword ptr [ebx+60],esi
 00512EAE    cmp         esi,4
>00512EB1    jge         00512EC8
 00512EB3    push        0
 00512EB5    push        12C
 00512EBA    push        1
 00512EBC    mov         eax,dword ptr [ebx+50]
 00512EBF    push        eax
 00512EC0    call        user32.SetTimer
 00512EC5    pop         esi
 00512EC6    pop         ebx
 00512EC7    ret
 00512EC8    push        0
 00512ECA    push        32
 00512ECC    push        1
 00512ECE    mov         eax,dword ptr [ebx+50]
 00512ED1    push        eax
 00512ED2    call        user32.SetTimer
 00512ED7    pop         esi
 00512ED8    pop         ebx
 00512ED9    ret
end;*}

//00512EDC
procedure sub_00512EDC(?:TComboBoxStyleHook);
begin
{*
 00512EDC    mov         dword ptr [eax+60],0FFFFFFFF;TComboBoxStyleHook.FListBoxTimerCode:Integer
 00512EE3    push        1
 00512EE5    mov         eax,dword ptr [eax+50];TComboBoxStyleHook.FListHandle:HWND
 00512EE8    push        eax
 00512EE9    call        user32.KillTimer
 00512EEE    ret
*}
end;

//00512EF0
{*function sub_00512EF0(?:TComboBoxStyleHook):?;
begin
 00512EF0    push        ebx
 00512EF1    push        esi
 00512EF2    mov         ebx,eax
 00512EF4    mov         esi,dword ptr [ebx+8]
 00512EF7    test        esi,esi
>00512EF9    je          00512F16
 00512EFB    mov         eax,esi
 00512EFD    mov         edx,dword ptr ds:[4FCDD0];TCustomComboBox
 00512F03    call        @IsClass
 00512F08    test        al,al
>00512F0A    je          00512F16
 00512F0C    mov         eax,esi
 00512F0E    call        00509488
 00512F13    pop         esi
 00512F14    pop         ebx
 00512F15    ret
 00512F16    mov         eax,ebx
 00512F18    call        TStyleHook.GetHandle
 00512F1D    test        eax,eax
>00512F1F    je          00512F3F
 00512F21    push        0
 00512F23    push        0
 00512F25    push        157
 00512F2A    mov         eax,ebx
 00512F2C    call        TStyleHook.GetHandle
 00512F31    push        eax
 00512F32    call        user32.SendMessageW
 00512F37    cmp         eax,1
 00512F3A    sbb         eax,eax
 00512F3C    inc         eax
>00512F3D    jmp         00512F41
 00512F3F    xor         eax,eax
 00512F41    pop         esi
 00512F42    pop         ebx
 00512F43    ret
end;*}

//00512F44
{*procedure sub_00512F44(?:TComboBoxStyleHook; ?:?);
begin
 00512F44    push        ebx
 00512F45    push        esi
 00512F46    mov         ebx,edx
 00512F48    mov         esi,eax
 00512F4A    mov         edx,ebx
 00512F4C    mov         eax,dword ptr [esi+8]
 00512F4F    mov         ecx,dword ptr [eax]
 00512F51    call        dword ptr [ecx+64]
 00512F54    mov         eax,ebx
 00512F56    mov         ecx,0FFFFFFFE
 00512F5B    mov         edx,0FFFFFFFE
 00512F60    call        InflateRect
 00512F65    mov         eax,dword ptr [esi+8]
 00512F68    cmp         byte ptr [eax+71],1
>00512F6C    je          00512F80
 00512F6E    push        2
 00512F70    call        user32.GetSystemMetrics
 00512F75    mov         edx,dword ptr [ebx+8]
 00512F78    sub         edx,eax
 00512F7A    inc         edx
 00512F7B    mov         dword ptr [ebx],edx
 00512F7D    pop         esi
 00512F7E    pop         ebx
 00512F7F    ret
 00512F80    push        2
 00512F82    call        user32.GetSystemMetrics
 00512F87    add         eax,dword ptr [ebx]
 00512F89    dec         eax
 00512F8A    mov         dword ptr [ebx+8],eax
 00512F8D    pop         esi
 00512F8E    pop         ebx
 00512F8F    ret
end;*}

//00512F90
{*function sub_00512F90(?:TComboBoxStyleHook):?;
begin
 00512F90    push        ebx
 00512F91    push        esi
 00512F92    mov         ebx,eax
 00512F94    mov         esi,dword ptr [ebx+8];TComboBoxStyleHook.FControl:TWinControl
 00512F97    test        esi,esi
>00512F99    je          00512FB6
 00512F9B    mov         eax,esi
 00512F9D    mov         edx,dword ptr ds:[4FCDD0];TCustomComboBox
 00512FA3    call        @IsClass
 00512FA8    test        al,al
>00512FAA    je          00512FB6
 00512FAC    movzx       eax,byte ptr [esi+306]
 00512FB3    pop         esi
 00512FB4    pop         ebx
 00512FB5    ret
 00512FB6    mov         eax,ebx
 00512FB8    call        TStyleHook.GetHandle
 00512FBD    test        eax,eax
>00512FBF    je          00513024
 00512FC1    mov         eax,ebx
 00512FC3    call        TStyleHook.GetHandle
 00512FC8    push        0F0
 00512FCA    push        eax
 00512FCB    call        user32.GetWindowLongW
 00512FD0    mov         edx,eax
 00512FD2    xor         eax,eax
 00512FD4    mov         ebx,edx
 00512FD6    mov         ecx,dword ptr ds:[7A14AC];0x2 gvar_007A14AC
 00512FDC    and         ebx,ecx
 00512FDE    cmp         ebx,ecx
>00512FE0    jne         00512FE4
 00512FE2    xor         eax,eax
 00512FE4    mov         ebx,edx
 00512FE6    mov         ecx,dword ptr ds:[7A14B0];0x1 gvar_007A14B0
 00512FEC    and         ebx,ecx
 00512FEE    cmp         ebx,ecx
>00512FF0    jne         00512FF4
 00512FF2    mov         al,1
 00512FF4    mov         ebx,edx
 00512FF6    mov         ecx,dword ptr ds:[7A14B4];0x3 gvar_007A14B4
 00512FFC    and         ebx,ecx
 00512FFE    cmp         ebx,ecx
>00513000    jne         00513004
 00513002    mov         al,2
 00513004    mov         ebx,edx
 00513006    mov         ecx,dword ptr ds:[7A14B8];0x13 gvar_007A14B8
 0051300C    and         ebx,ecx
 0051300E    cmp         ebx,ecx
>00513010    jne         00513014
 00513012    mov         al,3
 00513014    mov         ecx,dword ptr ds:[7A14BC];0x23 gvar_007A14BC
 0051301A    and         edx,ecx
 0051301C    cmp         edx,ecx
>0051301E    jne         00513026
 00513020    mov         al,4
>00513022    jmp         00513026
 00513024    xor         eax,eax
 00513026    pop         esi
 00513027    pop         ebx
 00513028    ret
end;*}

//0051302C
procedure sub_0051302C(?:TComboBoxStyleHook);
begin
{*
 0051302C    push        ebx
 0051302D    push        esi
 0051302E    push        edi
 0051302F    mov         ebx,eax
 00513031    call        StyleServices
 00513036    mov         esi,eax
 00513038    mov         edi,dword ptr [ebx+8];TComboBoxStyleHook.FControl:TWinControl
 0051303B    test        byte ptr [edi+188],2;TWinControl.FStyleElements:TStyleElements
>00513042    je          00513068
 00513044    mov         eax,edi
 00513046    mov         edx,dword ptr [eax]
 00513048    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 0051304B    and         eax,7F
 0051304E    movzx       edx,byte ptr [eax+7A14C0]
 00513055    mov         eax,esi
 00513057    call        TCustomStyleServices.GetStyleColor
 0051305C    mov         edx,eax
 0051305E    mov         eax,dword ptr [ebx+4];TComboBoxStyleHook.FBrush:TBrush
 00513061    call        TBrush.SetColor
>00513066    jmp         00513073
 00513068    mov         edx,dword ptr [edi+7C];TWinControl.FColor:TColor
 0051306B    mov         eax,dword ptr [ebx+4];TComboBoxStyleHook.FBrush:TBrush
 0051306E    call        TBrush.SetColor
 00513073    mov         edi,dword ptr [ebx+8];TComboBoxStyleHook.FControl:TWinControl
 00513076    test        byte ptr [edi+188],1;TWinControl.FStyleElements:TStyleElements
>0051307D    je          0051309C
 0051307F    mov         eax,edi
 00513081    mov         edx,dword ptr [eax]
 00513083    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 00513086    and         eax,7F
 00513089    movzx       edx,byte ptr [eax+7A14C2]
 00513090    mov         eax,esi
 00513092    call        TCustomStyleServices.GetStyleFontColor
 00513097    mov         dword ptr [ebx+10],eax;TComboBoxStyleHook.FFontColor:TColor
>0051309A    jmp         005130A5
 0051309C    mov         eax,dword ptr [edi+74];TWinControl.FFont:TFont
 0051309F    mov         eax,dword ptr [eax+18];TFont.FColor:TColor
 005130A2    mov         dword ptr [ebx+10],eax;TComboBoxStyleHook.FFontColor:TColor
 005130A5    pop         edi
 005130A6    pop         esi
 005130A7    pop         ebx
 005130A8    ret
*}
end;

//005130AC
{*procedure sub_005130AC(?:?);
begin
 005130AC    push        ebp
 005130AD    mov         ebp,esp
 005130AF    add         esp,0FFFFFF98
 005130B2    push        ebx
 005130B3    push        esi
 005130B4    push        edi
 005130B5    mov         dword ptr [ebp-4],edx
 005130B8    mov         edi,eax
 005130BA    call        StyleServices
 005130BF    mov         edx,dword ptr [eax]
 005130C1    call        dword ptr [edx+48];@AbstractError
 005130C4    test        al,al
>005130C6    je          00513437
 005130CC    mov         eax,dword ptr [edi+8];TComboBoxStyleHook.FControl:TWinControl
 005130CF    mov         edx,dword ptr [eax]
 005130D1    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 005130D4    test        al,al
>005130D6    jne         005130DE
 005130D8    mov         byte ptr [ebp-6],5
>005130DC    jmp         005130FF
 005130DE    mov         eax,edi
 005130E0    call        00512EF0
 005130E5    test        al,al
>005130E7    je          005130EF
 005130E9    mov         byte ptr [ebp-6],4
>005130ED    jmp         005130FF
 005130EF    cmp         byte ptr [edi+4C],0;TComboBoxStyleHook.FMouseOnButton:Boolean
>005130F3    je          005130FB
 005130F5    mov         byte ptr [ebp-6],3
>005130F9    jmp         005130FF
 005130FB    mov         byte ptr [ebp-6],2
 005130FF    mov         eax,dword ptr [edi+8];TComboBoxStyleHook.FControl:TWinControl
 00513102    mov         edx,dword ptr [eax]
 00513104    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 00513107    test        al,al
>00513109    jne         00513111
 0051310B    mov         byte ptr [ebp-5],0E
>0051310F    jmp         00513137
 00513111    mov         eax,dword ptr [edi+8];TComboBoxStyleHook.FControl:TWinControl
 00513114    mov         si,0FFB1
 00513118    call        @CallDynaInst;TWinControl.sub_004EFDB8
 0051311D    test        al,al
>0051311F    je          00513127
 00513121    mov         byte ptr [ebp-5],0D
>00513125    jmp         00513137
 00513127    cmp         byte ptr [edi+24],0;TComboBoxStyleHook.FMouseInControl:Boolean
>0051312B    je          00513133
 0051312D    mov         byte ptr [ebp-5],0C
>00513131    jmp         00513137
 00513133    mov         byte ptr [ebp-5],0B
 00513137    mov         dl,1
 00513139    mov         eax,[004C1D10];TBitmap
 0051313E    call        TBitmap.Create;TBitmap.Create
 00513143    mov         dword ptr [ebp-0C],eax
 00513146    mov         esi,dword ptr [edi+8];TComboBoxStyleHook.FControl:TWinControl
 00513149    mov         ecx,dword ptr [esi+5C];TWinControl.FHeight:Integer
 0051314C    mov         edx,dword ptr [esi+58];TWinControl.FWidth:Integer
 0051314F    mov         eax,dword ptr [ebp-0C]
 00513152    mov         ebx,dword ptr [eax]
 00513154    call        dword ptr [ebx+6C];TBitmap.SetSize
 00513157    xor         eax,eax
 00513159    push        ebp
 0051315A    push        513430
 0051315F    push        dword ptr fs:[eax]
 00513162    mov         dword ptr fs:[eax],esp
 00513165    mov         eax,dword ptr [ebp-0C]
 00513168    mov         edx,dword ptr [eax]
 0051316A    call        dword ptr [edx+24];TBitmap.GetHeight
 0051316D    push        eax
 0051316E    lea         eax,[ebp-1C]
 00513171    push        eax
 00513172    mov         eax,dword ptr [ebp-0C]
 00513175    mov         edx,dword ptr [eax]
 00513177    call        dword ptr [edx+30];TBitmap.GetWidth
 0051317A    mov         ecx,eax
 0051317C    xor         edx,edx
 0051317E    xor         eax,eax
 00513180    call        Rect
 00513185    call        StyleServices
 0051318A    movzx       edx,byte ptr [ebp-5]
 0051318E    lea         ecx,[ebp-58]
 00513191    mov         ebx,dword ptr [eax]
 00513193    call        dword ptr [ebx+70];TCustomStyleServices.GetElementDetails
 00513196    mov         eax,edi
 00513198    call        00512F90
 0051319D    cmp         al,1
>0051319F    jne         00513279
 005131A5    cmp         dword ptr [edi+50],0;TComboBoxStyleHook.FListHandle:HWND
>005131A9    je          00513279
 005131AF    lea         eax,[ebp-4C]
 005131B2    push        eax
 005131B3    mov         eax,dword ptr [edi+50];TComboBoxStyleHook.FListHandle:HWND
 005131B6    push        eax
 005131B7    call        user32.GetWindowRect
 005131BC    lea         eax,[ebp-2C]
 005131BF    push        eax
 005131C0    mov         eax,edi
 005131C2    call        TStyleHook.GetHandle
 005131C7    push        eax
 005131C8    call        user32.GetWindowRect
 005131CD    mov         eax,dword ptr [ebp-48]
 005131D0    sub         eax,dword ptr [ebp-28]
 005131D3    mov         dword ptr [ebp-10],eax
 005131D6    lea         eax,[ebp-1C]
 005131D9    push        eax
 005131DA    push        0
 005131DC    mov         eax,dword ptr [ebp-0C]
 005131DF    call        TBitmap.GetCanvas
 005131E4    call        TCanvas.GetHandle
 005131E9    push        eax
 005131EA    call        StyleServices
 005131EF    lea         ecx,[ebp-58]
 005131F2    pop         edx
 005131F3    call        TCustomStyleServices.DrawElement
 005131F8    mov         ebx,dword ptr [edi+8];TComboBoxStyleHook.FControl:TWinControl
 005131FB    mov         esi,dword ptr [ebx+5C];TWinControl.FHeight:Integer
 005131FE    push        esi
 005131FF    lea         eax,[ebp-1C]
 00513202    push        eax
 00513203    mov         edx,esi
 00513205    mov         eax,dword ptr [ebp-20]
 00513208    sub         eax,dword ptr [ebp-40]
 0051320B    sub         edx,eax
 0051320D    mov         ecx,dword ptr [ebx+58];TWinControl.FWidth:Integer
 00513210    xor         eax,eax
 00513212    call        Rect
 00513217    mov         eax,dword ptr [ebp-0C]
 0051321A    call        TBitmap.GetCanvas
 0051321F    mov         ebx,eax
 00513221    mov         eax,dword ptr [ebx+48];TCanvas.FBrush:TBrush
 00513224    xor         edx,edx
 00513226    call        TBrush.SetStyle
 0051322B    call        StyleServices
 00513230    mov         edx,0FF00000F
 00513235    call        TCustomStyleServices.GetSystemColor
 0051323A    mov         edx,eax
 0051323C    mov         eax,dword ptr [ebx+48];TCanvas.FBrush:TBrush
 0051323F    call        TBrush.SetColor
 00513244    lea         edx,[ebp-1C]
 00513247    mov         eax,ebx
 00513249    mov         ecx,dword ptr [eax]
 0051324B    call        dword ptr [ecx+54];TCanvas.FillRect
 0051324E    mov         eax,dword ptr [ebp-0C]
 00513251    mov         edx,dword ptr [eax]
 00513253    call        dword ptr [edx+24];TBitmap.GetHeight
 00513256    push        eax
 00513257    lea         eax,[ebp-1C]
 0051325A    push        eax
 0051325B    mov         eax,dword ptr [ebp-0C]
 0051325E    mov         edx,dword ptr [eax]
 00513260    call        dword ptr [edx+30];TBitmap.GetWidth
 00513263    mov         ecx,eax
 00513265    xor         edx,edx
 00513267    xor         eax,eax
 00513269    call        Rect
 0051326E    mov         eax,dword ptr [ebp-48]
 00513271    sub         eax,dword ptr [ebp-28]
 00513274    mov         dword ptr [ebp-10],eax
>00513277    jmp         0051329B
 00513279    lea         eax,[ebp-1C]
 0051327C    push        eax
 0051327D    push        0
 0051327F    mov         eax,dword ptr [ebp-0C]
 00513282    call        TBitmap.GetCanvas
 00513287    call        TCanvas.GetHandle
 0051328C    push        eax
 0051328D    call        StyleServices
 00513292    lea         ecx,[ebp-58]
 00513295    pop         edx
 00513296    call        TCustomStyleServices.DrawElement
 0051329B    mov         ebx,dword ptr [edi+8];TComboBoxStyleHook.FControl:TWinControl
 0051329E    test        byte ptr [ebx+188],2;TWinControl.FStyleElements:TStyleElements
>005132A5    jne         005132FE
 005132A7    cmp         dword ptr [edi+54],0;TComboBoxStyleHook.FEditHandle:HWND
>005132AB    jne         005132FE
 005132AD    lea         edx,[ebp-1C]
 005132B0    mov         eax,ebx
 005132B2    mov         ecx,dword ptr [eax]
 005132B4    call        dword ptr [ecx+64];TWinControl.GetClientRect
 005132B7    lea         eax,[ebp-1C]
 005132BA    mov         ecx,0FFFFFFFD
 005132BF    mov         edx,0FFFFFFFD
 005132C4    call        InflateRect
 005132C9    lea         edx,[ebp-68]
 005132CC    mov         eax,edi
 005132CE    call        00512F44
 005132D3    mov         eax,dword ptr [ebp-68]
 005132D6    sub         eax,2
 005132D9    mov         dword ptr [ebp-14],eax
 005132DC    mov         eax,dword ptr [ebp-0C]
 005132DF    call        TBitmap.GetCanvas
 005132E4    mov         ebx,eax
 005132E6    mov         eax,dword ptr [edi+8];TComboBoxStyleHook.FControl:TWinControl
 005132E9    mov         edx,dword ptr [eax+7C];TWinControl.FColor:TColor
 005132EC    mov         eax,dword ptr [ebx+48];TCanvas.FBrush:TBrush
 005132EF    call        TBrush.SetColor
 005132F4    lea         edx,[ebp-1C]
 005132F7    mov         eax,ebx
 005132F9    mov         ecx,dword ptr [eax]
 005132FB    call        dword ptr [ecx+54];TCanvas.FillRect
 005132FE    mov         eax,edi
 00513300    call        00512F90
 00513305    cmp         al,1
>00513307    je          00513346
 00513309    call        StyleServices
 0051330E    movzx       edx,byte ptr [ebp-6]
 00513312    lea         ecx,[ebp-58]
 00513315    mov         ebx,dword ptr [eax]
 00513317    call        dword ptr [ebx+70];TCustomStyleServices.GetElementDetails
 0051331A    lea         edx,[ebp-68]
 0051331D    mov         eax,edi
 0051331F    call        00512F44
 00513324    lea         eax,[ebp-68]
 00513327    push        eax
 00513328    push        0
 0051332A    mov         eax,dword ptr [ebp-0C]
 0051332D    call        TBitmap.GetCanvas
 00513332    call        TCanvas.GetHandle
 00513337    push        eax
 00513338    call        StyleServices
 0051333D    lea         ecx,[ebp-58]
 00513340    pop         edx
 00513341    call        TCustomStyleServices.DrawElement
 00513346    push        0
 00513348    push        0
 0051334A    push        147
 0051334F    mov         eax,edi
 00513351    call        TStyleHook.GetHandle
 00513356    push        eax
 00513357    call        user32.SendMessageW
 0051335C    test        eax,eax
>0051335E    jl          005133B6
 00513360    cmp         dword ptr [edi+54],0;TComboBoxStyleHook.FEditHandle:HWND
>00513364    jne         005133B6
 00513366    lea         edx,[ebp-1C]
 00513369    mov         eax,dword ptr [edi+8];TComboBoxStyleHook.FControl:TWinControl
 0051336C    mov         ecx,dword ptr [eax]
 0051336E    call        dword ptr [ecx+64];TWinControl.GetClientRect
 00513371    lea         eax,[ebp-1C]
 00513374    mov         ecx,0FFFFFFFD
 00513379    mov         edx,0FFFFFFFD
 0051337E    call        InflateRect
 00513383    lea         edx,[ebp-68]
 00513386    mov         eax,edi
 00513388    call        00512F44
 0051338D    mov         eax,dword ptr [ebp-68]
 00513390    sub         eax,2
 00513393    mov         dword ptr [ebp-14],eax
 00513396    mov         eax,dword ptr [ebp-10]
 00513399    push        eax
 0051339A    mov         eax,dword ptr [ebp-14]
 0051339D    push        eax
 0051339E    mov         eax,dword ptr [ebp-18]
 005133A1    push        eax
 005133A2    mov         eax,dword ptr [ebp-1C]
 005133A5    push        eax
 005133A6    mov         eax,dword ptr [ebp-4]
 005133A9    call        TCanvas.GetHandle
 005133AE    push        eax
 005133AF    call        gdi32.ExcludeClipRect
>005133B4    jmp         0051340A
 005133B6    cmp         dword ptr [edi+54],0;TComboBoxStyleHook.FEditHandle:HWND
>005133BA    je          0051340A
 005133BC    lea         eax,[ebp-1C]
 005133BF    push        eax
 005133C0    mov         eax,edi
 005133C2    call        TStyleHook.GetHandle
 005133C7    push        eax
 005133C8    call        user32.GetWindowRect
 005133CD    lea         eax,[ebp-3C]
 005133D0    push        eax
 005133D1    mov         eax,dword ptr [edi+54];TComboBoxStyleHook.FEditHandle:HWND
 005133D4    push        eax
 005133D5    call        user32.GetWindowRect
 005133DA    mov         ecx,dword ptr [ebp-18]
 005133DD    neg         ecx
 005133DF    mov         edx,dword ptr [ebp-1C]
 005133E2    neg         edx
 005133E4    lea         eax,[ebp-3C]
 005133E7    call        OffsetRect
 005133EC    mov         eax,dword ptr [ebp-30]
 005133EF    push        eax
 005133F0    mov         eax,dword ptr [ebp-34]
 005133F3    push        eax
 005133F4    mov         eax,dword ptr [ebp-38]
 005133F7    push        eax
 005133F8    mov         eax,dword ptr [ebp-3C]
 005133FB    push        eax
 005133FC    mov         eax,dword ptr [ebp-4]
 005133FF    call        TCanvas.GetHandle
 00513404    push        eax
 00513405    call        gdi32.ExcludeClipRect
 0051340A    mov         eax,dword ptr [ebp-0C]
 0051340D    push        eax
 0051340E    xor         ecx,ecx
 00513410    xor         edx,edx
 00513412    mov         eax,dword ptr [ebp-4]
 00513415    mov         ebx,dword ptr [eax]
 00513417    call        dword ptr [ebx+44]
 0051341A    xor         eax,eax
 0051341C    pop         edx
 0051341D    pop         ecx
 0051341E    pop         ecx
 0051341F    mov         dword ptr fs:[eax],edx
 00513422    push        513437
 00513427    mov         eax,dword ptr [ebp-0C]
 0051342A    call        TObject.Free
 0051342F    ret
>00513430    jmp         @HandleFinally
>00513435    jmp         00513427
 00513437    pop         edi
 00513438    pop         esi
 00513439    pop         ebx
 0051343A    mov         esp,ebp
 0051343C    pop         ebp
 0051343D    ret
end;*}

//00513440
{*procedure sub_00513440(?:?; ?:?; ?:?; ?:?);
begin
 00513440    push        ebp
 00513441    mov         ebp,esp
 00513443    add         esp,0FFFFFFD0
 00513446    push        ebx
 00513447    push        esi
 00513448    push        edi
 00513449    mov         edi,ecx
 0051344B    mov         esi,edx
 0051344D    mov         ebx,eax
 0051344F    lea         eax,[ebp-30]
 00513452    xor         ecx,ecx
 00513454    mov         edx,30
 00513459    call        @FillChar
 0051345E    mov         dword ptr [ebp-30],3
 00513465    mov         eax,ebx
 00513467    call        TStyleHook.GetHandle
 0051346C    push        eax
 0051346D    call        user32.GetDlgCtrlID
 00513472    mov         dword ptr [ebp-2C],eax
 00513475    mov         dword ptr [ebp-24],1
 0051347C    mov         eax,esi
 0051347E    call        TCanvas.GetHandle
 00513483    mov         dword ptr [ebp-18],eax
 00513486    mov         eax,ebx
 00513488    call        TStyleHook.GetHandle
 0051348D    mov         dword ptr [ebp-1C],eax
 00513490    mov         eax,dword ptr [ebp+0C]
 00513493    push        edi
 00513494    mov         esi,eax
 00513496    lea         edi,[ebp-14]
 00513499    movs        dword ptr [edi],dword ptr [esi]
 0051349A    movs        dword ptr [edi],dword ptr [esi]
 0051349B    movs        dword ptr [edi],dword ptr [esi]
 0051349C    movs        dword ptr [edi],dword ptr [esi]
 0051349D    pop         edi
 0051349E    mov         dword ptr [ebp-28],edi
 005134A1    push        0
 005134A3    push        0
 005134A5    push        199
 005134AA    mov         eax,dword ptr [ebx+50];TComboBoxStyleHook.FListHandle:HWND
 005134AD    push        eax
 005134AE    call        user32.SendMessageW
 005134B3    mov         dword ptr [ebp-4],eax
 005134B6    cmp         byte ptr [ebp+8],0
>005134BA    je          005134C8
 005134BC    mov         eax,dword ptr [ebp-20]
 005134BF    or          eax,10
 005134C2    or          eax,1
 005134C5    mov         dword ptr [ebp-20],eax
 005134C8    lea         eax,[ebp-30]
 005134CB    push        eax
 005134CC    mov         eax,ebx
 005134CE    call        TStyleHook.GetHandle
 005134D3    push        eax
 005134D4    push        2B
 005134D6    mov         eax,ebx
 005134D8    call        TStyleHook.GetHandle
 005134DD    push        eax
 005134DE    call        user32.SendMessageW
 005134E3    pop         edi
 005134E4    pop         esi
 005134E5    pop         ebx
 005134E6    mov         esp,ebp
 005134E8    pop         ebp
 005134E9    ret         8
end;*}

//005134EC
{*procedure TComboBoxStyleHook.WMParentNotify(?:?);
begin
 005134EC    cmp         dword ptr [eax+50],0;TComboBoxStyleHook.FListHandle:HWND
>005134F0    jne         0051350E
 005134F2    cmp         word ptr [edx+4],1
>005134F7    jne         0051350E
 005134F9    mov         ecx,dword ptr [edx+8]
 005134FC    test        ecx,ecx
>005134FE    je          00513521
 00513500    cmp         dword ptr [eax+58],0;TComboBoxStyleHook.FListBoxInstance:Pointer
>00513504    jne         00513521
 00513506    mov         edx,ecx
 00513508    call        005139C0
 0051350D    ret
 0051350E    cmp         dword ptr [eax+54],0;TComboBoxStyleHook.FEditHandle:HWND
>00513512    jne         00513521
 00513514    cmp         word ptr [edx+4],1
>00513519    jne         00513521
 0051351B    mov         edx,dword ptr [edx+8]
 0051351E    mov         dword ptr [eax+54],edx;TComboBoxStyleHook.FEditHandle:HWND
 00513521    ret
end;*}

//00513524
{*procedure sub_00513524(?:?);
begin
 00513524    push        ebx
 00513525    push        esi
 00513526    push        edi
 00513527    mov         esi,edx
 00513529    mov         ebx,eax
 0051352B    mov         eax,dword ptr [esi]
 0051352D    add         eax,0FFFFFECE
 00513532    sub         eax,7
>00513535    jb          00513559
 00513537    sub         eax,0AECE
>0051353C    je          005135E2
 00513542    sub         eax,5
>00513545    je          005135D5
 0051354B    add         eax,0FFFFF2DA
 00513550    sub         eax,7
>00513553    jae         005135EF
 00513559    mov         eax,dword ptr [ebx+10];TComboBoxStyleHook.FFontColor:TColor
 0051355C    call        ColorToRGB
 00513561    push        eax
 00513562    mov         eax,dword ptr [esi+4]
 00513565    push        eax
 00513566    call        gdi32.SetTextColor
 0051356B    mov         eax,dword ptr [ebx+8];TComboBoxStyleHook.FControl:TWinControl
 0051356E    test        byte ptr [eax+188],2;TWinControl.FStyleElements:TStyleElements
>00513575    je          005135A1
 00513577    mov         eax,dword ptr [ebx+8];TComboBoxStyleHook.FControl:TWinControl
 0051357A    mov         edx,dword ptr [eax]
 0051357C    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 0051357F    and         eax,7F
 00513582    movzx       eax,byte ptr [eax+7A14C4]
 00513589    push        eax
 0051358A    call        StyleServices
 0051358F    pop         edx
 00513590    call        TCustomStyleServices.GetStyleColor
 00513595    mov         edx,eax
 00513597    mov         eax,dword ptr [ebx+4];TComboBoxStyleHook.FBrush:TBrush
 0051359A    call        TBrush.SetColor
>0051359F    jmp         005135AC
 005135A1    mov         edx,dword ptr [eax+7C];TWinControl.FColor:TColor
 005135A4    mov         eax,dword ptr [ebx+4];TComboBoxStyleHook.FBrush:TBrush
 005135A7    call        TBrush.SetColor
 005135AC    mov         edi,dword ptr [ebx+4];TComboBoxStyleHook.FBrush:TBrush
 005135AF    mov         eax,dword ptr [edi+10];TBrush.FResource:PResource
 005135B2    mov         eax,dword ptr [eax+18]
 005135B5    call        ColorToRGB
 005135BA    push        eax
 005135BB    mov         eax,dword ptr [esi+4]
 005135BE    push        eax
 005135BF    call        gdi32.SetBkColor
 005135C4    mov         eax,dword ptr [ebx+4];TComboBoxStyleHook.FBrush:TBrush
 005135C7    call        TBrush.GetHandle
 005135CC    mov         dword ptr [esi+0C],eax
 005135CF    mov         byte ptr [ebx+14],1;TComboBoxStyleHook.FHandled:Boolean
>005135D3    jmp         005135F8
 005135D5    mov         eax,ebx
 005135D7    call        0051302C
 005135DC    mov         byte ptr [ebx+14],0;TComboBoxStyleHook.FHandled:Boolean
>005135E0    jmp         005135F8
 005135E2    mov         eax,ebx
 005135E4    mov         edx,dword ptr [eax]
 005135E6    call        dword ptr [edx+28];TStyleHook.Invalidate
 005135E9    mov         byte ptr [ebx+14],0;TComboBoxStyleHook.FHandled:Boolean
>005135ED    jmp         005135F8
 005135EF    mov         edx,esi
 005135F1    mov         eax,ebx
 005135F3    call        0058DB4C
 005135F8    pop         edi
 005135F9    pop         esi
 005135FA    pop         ebx
 005135FB    ret
end;*}

//005135FC
procedure sub_005135FC;
begin
{*
 005135FC    push        ebx
 005135FD    mov         ebx,eax
 005135FF    mov         eax,ebx
 00513601    call        0058DB44
 00513606    mov         eax,ebx
 00513608    mov         edx,dword ptr [eax]
 0051360A    call        dword ptr [edx+28];TStyleHook.Invalidate
 0051360D    pop         ebx
 0051360E    ret
*}
end;

//00513610
procedure sub_00513610;
begin
{*
 00513610    push        ebx
 00513611    mov         ebx,eax
 00513613    mov         eax,ebx
 00513615    call        0058DB48
 0051361A    mov         eax,ebx
 0051361C    call        00512EF0
 00513621    test        al,al
>00513623    jne         0051362F
 00513625    cmp         byte ptr [ebx+4C],0;TComboBoxStyleHook.FMouseOnButton:Boolean
>00513629    je          0051362F
 0051362B    mov         byte ptr [ebx+4C],0;TComboBoxStyleHook.FMouseOnButton:Boolean
 0051362F    mov         eax,ebx
 00513631    mov         edx,dword ptr [eax]
 00513633    call        dword ptr [edx+28];TStyleHook.Invalidate
 00513636    pop         ebx
 00513637    ret
*}
end;

//00513638
{*procedure TComboBoxStyleHook.WMMouseMove(?:?);
begin
 00513638    push        ebx
 00513639    push        esi
 0051363A    push        edi
 0051363B    add         esp,0FFFFFFE0
 0051363E    mov         esi,edx
 00513640    mov         edi,eax
 00513642    mov         edx,esi
 00513644    mov         eax,edi
 00513646    call        TStyleHook.CallDefaultProc
 0051364B    mov         edx,esi
 0051364D    mov         eax,edi
 0051364F    call        TMouseTrackControlStyleHook.WMMouseMove
 00513654    movsx       eax,word ptr [esi+8]
 00513658    movsx       edx,word ptr [esi+0A]
 0051365C    mov         dword ptr [esp+8],eax
 00513660    mov         dword ptr [esp+0C],edx
 00513664    mov         eax,dword ptr [esp+8]
 00513668    mov         dword ptr [esp],eax
 0051366B    mov         eax,dword ptr [esp+0C]
 0051366F    mov         dword ptr [esp+4],eax
 00513673    movzx       ebx,byte ptr [edi+4C];TComboBoxStyleHook.FMouseOnButton:Boolean
 00513677    lea         edx,[esp+10]
 0051367B    mov         eax,edi
 0051367D    call        00512F44
 00513682    mov         edx,esp
 00513684    lea         eax,[esp+10]
 00513688    call        TRect.Contains
 0051368D    test        al,al
>0051368F    je          00513697
 00513691    mov         byte ptr [edi+4C],1;TComboBoxStyleHook.FMouseOnButton:Boolean
>00513695    jmp         0051369B
 00513697    mov         byte ptr [edi+4C],0;TComboBoxStyleHook.FMouseOnButton:Boolean
 0051369B    cmp         bl,byte ptr [edi+4C];TComboBoxStyleHook.FMouseOnButton:Boolean
>0051369E    je          005136B4
 005136A0    push        0
 005136A2    lea         eax,[esp+14]
 005136A6    push        eax
 005136A7    mov         eax,edi
 005136A9    call        TStyleHook.GetHandle
 005136AE    push        eax
 005136AF    call        user32.InvalidateRect
 005136B4    mov         byte ptr [edi+14],1;TComboBoxStyleHook.FHandled:Boolean
 005136B8    add         esp,20
 005136BB    pop         edi
 005136BC    pop         esi
 005136BD    pop         ebx
 005136BE    ret
end;*}

//005136C0
procedure TComboBoxStyleHook.sub_005136C0;
begin
{*
 005136C0    push        ebx
 005136C1    mov         ebx,eax
 005136C3    mov         eax,ebx
 005136C5    call        TComboBoxStyleHook.WMDrawItem
 005136CA    mov         byte ptr [ebx+14],1;TComboBoxStyleHook.FHandled:Boolean
 005136CE    pop         ebx
 005136CF    ret
*}
end;

//005136D0
procedure TComboBoxStyleHook.WMDrawItem;
begin
{*
 005136D0    push        ebx
 005136D1    mov         ebx,eax
 005136D3    mov         eax,ebx
 005136D5    call        TStyleHook.CallDefaultProc
 005136DA    mov         byte ptr [ebx+14],1;TComboBoxStyleHook.FHandled:Boolean
 005136DE    pop         ebx
 005136DF    ret
*}
end;

//005136E0
{*procedure TComboBoxStyleHook.WMPaint(?:?);
begin
 005136E0    push        ebp
 005136E1    mov         ebp,esp
 005136E3    add         esp,0FFFFFF90
 005136E6    push        ebx
 005136E7    mov         dword ptr [ebp-4],eax
 005136EA    mov         eax,dword ptr [edx+4]
 005136ED    mov         dword ptr [ebp-10],eax
 005136F0    mov         dl,1
 005136F2    mov         eax,[004BF670];TCanvas
 005136F7    call        TCanvas.Create;TCanvas.Create
 005136FC    mov         dword ptr [ebp-8],eax
 005136FF    xor         eax,eax
 00513701    push        ebp
 00513702    push        5138EA
 00513707    push        dword ptr fs:[eax]
 0051370A    mov         dword ptr fs:[eax],esp
 0051370D    cmp         dword ptr [ebp-10],0
>00513711    jne         00513731
 00513713    lea         eax,[ebp-60]
 00513716    push        eax
 00513717    mov         eax,dword ptr [ebp-4]
 0051371A    call        TStyleHook.GetHandle
 0051371F    push        eax
 00513720    call        user32.BeginPaint
 00513725    mov         edx,eax
 00513727    mov         eax,dword ptr [ebp-8]
 0051372A    call        TCanvas.SetHandle
>0051372F    jmp         0051373C
 00513731    mov         edx,dword ptr [ebp-10]
 00513734    mov         eax,dword ptr [ebp-8]
 00513737    call        TCanvas.SetHandle
 0051373C    mov         eax,dword ptr [ebp-8]
 0051373F    call        TCanvas.GetHandle
 00513744    push        eax
 00513745    call        gdi32.SaveDC
 0051374A    mov         dword ptr [ebp-0C],eax
 0051374D    xor         eax,eax
 0051374F    push        ebp
 00513750    push        513786
 00513755    push        dword ptr fs:[eax]
 00513758    mov         dword ptr fs:[eax],esp
 0051375B    mov         edx,dword ptr [ebp-8]
 0051375E    mov         eax,dword ptr [ebp-4]
 00513761    mov         ecx,dword ptr [eax]
 00513763    call        dword ptr [ecx+48];TComboBoxStyleHook.sub_005130AC
 00513766    xor         eax,eax
 00513768    pop         edx
 00513769    pop         ecx
 0051376A    pop         ecx
 0051376B    mov         dword ptr fs:[eax],edx
 0051376E    push        51378D
 00513773    mov         eax,dword ptr [ebp-0C]
 00513776    push        eax
 00513777    mov         eax,dword ptr [ebp-8]
 0051377A    call        TCanvas.GetHandle
 0051377F    push        eax
 00513780    call        gdi32.RestoreDC
 00513785    ret
>00513786    jmp         @HandleFinally
>0051378B    jmp         00513773
 0051378D    mov         eax,dword ptr [ebp-4]
 00513790    call        00512F90
 00513795    cmp         al,1
>00513797    je          005138B2
 0051379D    mov         eax,dword ptr [ebp-4]
 005137A0    cmp         dword ptr [eax+54],0;TComboBoxStyleHook.FEditHandle:HWND
>005137A4    jne         005138B2
 005137AA    lea         edx,[ebp-20]
 005137AD    mov         eax,dword ptr [ebp-4]
 005137B0    mov         eax,dword ptr [eax+8];TComboBoxStyleHook.FControl:TWinControl
 005137B3    mov         ecx,dword ptr [eax]
 005137B5    call        dword ptr [ecx+64];TWinControl.GetClientRect
 005137B8    lea         eax,[ebp-20]
 005137BB    mov         ecx,0FFFFFFFD
 005137C0    mov         edx,0FFFFFFFD
 005137C5    call        InflateRect
 005137CA    mov         eax,dword ptr [ebp-4]
 005137CD    mov         eax,dword ptr [eax+8];TComboBoxStyleHook.FControl:TWinControl
 005137D0    cmp         byte ptr [eax+71],1;TWinControl.FBiDiMode:TBiDiMode
>005137D4    je          005137EA
 005137D6    lea         edx,[ebp-70]
 005137D9    mov         eax,dword ptr [ebp-4]
 005137DC    call        00512F44
 005137E1    mov         eax,dword ptr [ebp-70]
 005137E4    dec         eax
 005137E5    mov         dword ptr [ebp-18],eax
>005137E8    jmp         005137FC
 005137EA    lea         edx,[ebp-70]
 005137ED    mov         eax,dword ptr [ebp-4]
 005137F0    call        00512F44
 005137F5    mov         eax,dword ptr [ebp-68]
 005137F8    inc         eax
 005137F9    mov         dword ptr [ebp-20],eax
 005137FC    mov         eax,dword ptr [ebp-8]
 005137FF    call        TCanvas.GetHandle
 00513804    push        eax
 00513805    call        gdi32.SaveDC
 0051380A    mov         dword ptr [ebp-0C],eax
 0051380D    xor         eax,eax
 0051380F    push        ebp
 00513810    push        5138AB
 00513815    push        dword ptr fs:[eax]
 00513818    mov         dword ptr fs:[eax],esp
 0051381B    mov         eax,dword ptr [ebp-14]
 0051381E    push        eax
 0051381F    mov         eax,dword ptr [ebp-18]
 00513822    push        eax
 00513823    mov         eax,dword ptr [ebp-1C]
 00513826    push        eax
 00513827    mov         eax,dword ptr [ebp-20]
 0051382A    push        eax
 0051382B    mov         eax,dword ptr [ebp-8]
 0051382E    call        TCanvas.GetHandle
 00513833    push        eax
 00513834    call        gdi32.IntersectClipRect
 00513839    mov         eax,dword ptr [ebp-4]
 0051383C    call        00512EF0
 00513841    test        al,al
>00513843    jne         0051386E
 00513845    lea         eax,[ebp-20]
 00513848    push        eax
 00513849    mov         eax,dword ptr [ebp-4]
 0051384C    movzx       eax,byte ptr [eax+0E];TComboBoxStyleHook.FFocused:Boolean
 00513850    push        eax
 00513851    mov         eax,dword ptr [ebp-4]
 00513854    mov         eax,dword ptr [eax+8];TComboBoxStyleHook.FControl:TWinControl
 00513857    mov         edx,dword ptr [eax]
 00513859    call        dword ptr [edx+108]
 0051385F    mov         ecx,eax
 00513861    mov         edx,dword ptr [ebp-8]
 00513864    mov         eax,dword ptr [ebp-4]
 00513867    mov         ebx,dword ptr [eax]
 00513869    call        dword ptr [ebx+40];TComboBoxStyleHook.sub_00513440
>0051386C    jmp         0051388B
 0051386E    lea         eax,[ebp-20]
 00513871    push        eax
 00513872    mov         eax,dword ptr [ebp-4]
 00513875    movzx       eax,byte ptr [eax+0E];TComboBoxStyleHook.FFocused:Boolean
 00513879    push        eax
 0051387A    mov         eax,dword ptr [ebp-4]
 0051387D    mov         ecx,dword ptr [eax+68];TComboBoxStyleHook.FTempItemIndex:Integer
 00513880    mov         edx,dword ptr [ebp-8]
 00513883    mov         eax,dword ptr [ebp-4]
 00513886    mov         ebx,dword ptr [eax]
 00513888    call        dword ptr [ebx+40];TComboBoxStyleHook.sub_00513440
 0051388B    xor         eax,eax
 0051388D    pop         edx
 0051388E    pop         ecx
 0051388F    pop         ecx
 00513890    mov         dword ptr fs:[eax],edx
 00513893    push        5138B2
 00513898    mov         eax,dword ptr [ebp-0C]
 0051389B    push        eax
 0051389C    mov         eax,dword ptr [ebp-8]
 0051389F    call        TCanvas.GetHandle
 005138A4    push        eax
 005138A5    call        gdi32.RestoreDC
 005138AA    ret
>005138AB    jmp         @HandleFinally
>005138B0    jmp         00513898
 005138B2    xor         eax,eax
 005138B4    pop         edx
 005138B5    pop         ecx
 005138B6    pop         ecx
 005138B7    mov         dword ptr fs:[eax],edx
 005138BA    push        5138F1
 005138BF    xor         edx,edx
 005138C1    mov         eax,dword ptr [ebp-8]
 005138C4    call        TCanvas.SetHandle
 005138C9    mov         eax,dword ptr [ebp-8]
 005138CC    call        TObject.Free
 005138D1    cmp         dword ptr [ebp-10],0
>005138D5    jne         005138E9
 005138D7    lea         eax,[ebp-60]
 005138DA    push        eax
 005138DB    mov         eax,dword ptr [ebp-4]
 005138DE    call        TStyleHook.GetHandle
 005138E3    push        eax
 005138E4    call        user32.EndPaint
 005138E9    ret
>005138EA    jmp         @HandleFinally
>005138EF    jmp         005138BF
 005138F1    mov         eax,dword ptr [ebp-4]
 005138F4    mov         byte ptr [eax+14],1;TComboBoxStyleHook.FHandled:Boolean
 005138F8    pop         ebx
 005138F9    mov         esp,ebp
 005138FB    pop         ebp
 005138FC    ret
end;*}

//00513900
{*procedure TComboBoxStyleHook.WMCommand(?:?);
begin
 00513900    push        esi
 00513901    mov         esi,eax
 00513903    movzx       eax,word ptr [edx+6]
 00513907    cmp         ax,0A
>0051390B    je          00513925
 0051390D    cmp         ax,9
>00513911    je          00513925
 00513913    cmp         ax,8
>00513917    je          00513925
 00513919    cmp         ax,7
>0051391D    je          00513925
 0051391F    cmp         ax,1
>00513923    jne         0051395B
 00513925    movzx       eax,word ptr [edx+6]
 00513929    cmp         ax,7
>0051392D    je          00513935
 0051392F    cmp         ax,1
>00513933    jne         00513943
 00513935    mov         eax,dword ptr [esi+8];TComboBoxStyleHook.FControl:TWinControl
 00513938    mov         edx,dword ptr [eax]
 0051393A    call        dword ptr [edx+108]
 00513940    mov         dword ptr [esi+68],eax;TComboBoxStyleHook.FTempItemIndex:Integer
 00513943    cmp         dword ptr [esi+60],0;TComboBoxStyleHook.FListBoxTimerCode:Integer
>00513947    je          00513950
 00513949    mov         eax,esi
 0051394B    call        00512EDC
 00513950    mov         byte ptr [esi+4C],0;TComboBoxStyleHook.FMouseOnButton:Boolean
 00513954    mov         eax,esi
 00513956    mov         edx,dword ptr [eax]
 00513958    call        dword ptr [edx+28];TStyleHook.Invalidate
 0051395B    pop         esi
 0051395C    ret
end;*}

//00513960
{*procedure TComboBoxStyleHook.sub_00513960(?:?);
begin
 00513960    push        esi
 00513961    mov         esi,eax
 00513963    movzx       eax,word ptr [edx+6]
 00513967    cmp         ax,0A
>0051396B    je          00513985
 0051396D    cmp         ax,9
>00513971    je          00513985
 00513973    cmp         ax,8
>00513977    je          00513985
 00513979    cmp         ax,7
>0051397D    je          00513985
 0051397F    cmp         ax,1
>00513983    jne         005139BB
 00513985    movzx       eax,word ptr [edx+6]
 00513989    cmp         ax,7
>0051398D    je          00513995
 0051398F    cmp         ax,1
>00513993    jne         005139A3
 00513995    mov         eax,dword ptr [esi+8];TComboBoxStyleHook.FControl:TWinControl
 00513998    mov         edx,dword ptr [eax]
 0051399A    call        dword ptr [edx+108]
 005139A0    mov         dword ptr [esi+68],eax;TComboBoxStyleHook.FTempItemIndex:Integer
 005139A3    cmp         dword ptr [esi+60],0;TComboBoxStyleHook.FListBoxTimerCode:Integer
>005139A7    je          005139B0
 005139A9    mov         eax,esi
 005139AB    call        00512EDC
 005139B0    mov         byte ptr [esi+4C],0;TComboBoxStyleHook.FMouseOnButton:Boolean
 005139B4    mov         eax,esi
 005139B6    mov         edx,dword ptr [eax]
 005139B8    call        dword ptr [edx+28];TStyleHook.Invalidate
 005139BB    pop         esi
 005139BC    ret
end;*}

//005139C0
{*function sub_005139C0(?:TComboBoxStyleHook; ?:?):?;
begin
 005139C0    push        ebx
 005139C1    mov         ebx,eax
 005139C3    test        edx,edx
>005139C5    je          005139FC
 005139C7    cmp         dword ptr [ebx+58],0;TComboBoxStyleHook.FListBoxInstance:Pointer
>005139CB    jne         005139FC
 005139CD    mov         dword ptr [ebx+50],edx;TComboBoxStyleHook.FListHandle:HWND
 005139D0    push        ebx
 005139D1    mov         eax,dword ptr [ebx]
 005139D3    mov         eax,dword ptr [eax+44];TComboBoxStyleHook.FSliderSize:Integer
 005139D6    push        eax
 005139D7    call        MakeObjectInstance
 005139DC    mov         dword ptr [ebx+58],eax;TComboBoxStyleHook.FListBoxInstance:Pointer
 005139DF    mov         eax,dword ptr [ebx+50];TComboBoxStyleHook.FListHandle:HWND
 005139E2    push        0FC
 005139E4    push        eax
 005139E5    call        user32.GetWindowLongW
 005139EA    mov         dword ptr [ebx+5C],eax;TComboBoxStyleHook.FDefListBoxProc:Pointer
 005139ED    mov         eax,dword ptr [ebx+50];TComboBoxStyleHook.FListHandle:HWND
 005139F0    mov         edx,dword ptr [ebx+58];TComboBoxStyleHook.FListBoxInstance:Pointer
 005139F3    push        edx
 005139F4    push        0FC
 005139F6    push        eax
 005139F7    call        user32.SetWindowLongW
 005139FC    pop         ebx
 005139FD    ret
end;*}

//00513A00
{*procedure sub_00513A00(?:?);
begin
 00513A00    push        edx
 00513A01    mov         eax,dword ptr [eax+50]
 00513A04    push        eax
 00513A05    call        user32.GetWindowRect
 00513A0A    ret
end;*}

//00513A0C
{*procedure sub_00513A0C(?:?);
begin
 00513A0C    push        edx
 00513A0D    mov         eax,dword ptr [eax+50]
 00513A10    push        eax
 00513A11    call        user32.GetClientRect
 00513A16    ret
end;*}

//00513A18
{*procedure sub_00513A18(?:?; ?:?);
begin
 00513A18    push        ebx
 00513A19    push        esi
 00513A1A    add         esp,0FFFFFFF0
 00513A1D    mov         ebx,edx
 00513A1F    mov         esi,eax
 00513A21    mov         edx,ebx
 00513A23    mov         eax,esi
 00513A25    call        00513A00
 00513A2A    mov         ecx,dword ptr [ebx+4]
 00513A2D    neg         ecx
 00513A2F    mov         edx,dword ptr [ebx]
 00513A31    neg         edx
 00513A33    mov         eax,ebx
 00513A35    call        OffsetRect
 00513A3A    mov         eax,ebx
 00513A3C    or          ecx,0FFFFFFFF
 00513A3F    or          edx,0FFFFFFFF
 00513A42    call        InflateRect
 00513A47    mov         eax,ebx
 00513A49    mov         ecx,1
 00513A4E    mov         edx,1
 00513A53    call        OffsetRect
 00513A58    mov         eax,dword ptr [esi+8]
 00513A5B    cmp         byte ptr [eax+71],1
>00513A5F    je          00513A71
 00513A61    push        2
 00513A63    call        user32.GetSystemMetrics
 00513A68    mov         edx,dword ptr [ebx+8]
 00513A6B    sub         edx,eax
 00513A6D    mov         dword ptr [ebx],edx
>00513A6F    jmp         00513A7D
 00513A71    push        2
 00513A73    call        user32.GetSystemMetrics
 00513A78    add         eax,dword ptr [ebx]
 00513A7A    mov         dword ptr [ebx+8],eax
 00513A7D    mov         edx,esp
 00513A7F    mov         eax,esi
 00513A81    call        00513A00
 00513A86    mov         eax,esp
 00513A88    call        RectHeight
 00513A8D    cmp         eax,1E
>00513A90    jle         00513A9F
 00513A92    mov         eax,ebx
 00513A94    or          ecx,0FFFFFFFF
 00513A97    or          edx,0FFFFFFFF
 00513A9A    call        OffsetRect
 00513A9F    add         esp,10
 00513AA2    pop         esi
 00513AA3    pop         ebx
 00513AA4    ret
end;*}

//00513AA8
{*procedure sub_00513AA8(?:?; ?:?);
begin
 00513AA8    push        ebx
 00513AA9    push        esi
 00513AAA    push        edi
 00513AAB    add         esp,0FFFFFFF0
 00513AAE    mov         ebx,edx
 00513AB0    mov         esi,eax
 00513AB2    mov         edx,ebx
 00513AB4    mov         eax,esi
 00513AB6    call        00513A18
 00513ABB    mov         eax,ebx
 00513ABD    call        RectWidth
 00513AC2    test        eax,eax
>00513AC4    jle         00513AD7
 00513AC6    push        9
 00513AC8    call        user32.GetSystemMetrics
 00513ACD    mov         edx,dword ptr [ebx+0C]
 00513AD0    sub         edx,eax
 00513AD2    mov         dword ptr [ebx+4],edx
>00513AD5    jmp         00513AF0
 00513AD7    push        0
 00513AD9    push        0
 00513ADB    lea         eax,[esp+8]
 00513ADF    xor         ecx,ecx
 00513AE1    xor         edx,edx
 00513AE3    call        TRect.Create
 00513AE8    mov         edi,ebx
 00513AEA    mov         esi,esp
 00513AEC    movs        dword ptr [edi],dword ptr [esi]
 00513AED    movs        dword ptr [edi],dword ptr [esi]
 00513AEE    movs        dword ptr [edi],dword ptr [esi]
 00513AEF    movs        dword ptr [edi],dword ptr [esi]
 00513AF0    add         esp,10
 00513AF3    pop         edi
 00513AF4    pop         esi
 00513AF5    pop         ebx
 00513AF6    ret
end;*}

//00513AF8
{*procedure sub_00513AF8(?:?; ?:?);
begin
 00513AF8    push        ebx
 00513AF9    push        esi
 00513AFA    push        edi
 00513AFB    add         esp,0FFFFFFF0
 00513AFE    mov         ebx,edx
 00513B00    mov         esi,eax
 00513B02    mov         edx,ebx
 00513B04    mov         eax,esi
 00513B06    call        00513A18
 00513B0B    mov         eax,ebx
 00513B0D    call        RectWidth
 00513B12    test        eax,eax
>00513B14    jle         00513B25
 00513B16    push        9
 00513B18    call        user32.GetSystemMetrics
 00513B1D    add         eax,dword ptr [ebx+4]
 00513B20    mov         dword ptr [ebx+0C],eax
>00513B23    jmp         00513B3E
 00513B25    push        0
 00513B27    push        0
 00513B29    lea         eax,[esp+8]
 00513B2D    xor         ecx,ecx
 00513B2F    xor         edx,edx
 00513B31    call        TRect.Create
 00513B36    mov         edi,ebx
 00513B38    mov         esi,esp
 00513B3A    movs        dword ptr [edi],dword ptr [esi]
 00513B3B    movs        dword ptr [edi],dword ptr [esi]
 00513B3C    movs        dword ptr [edi],dword ptr [esi]
 00513B3D    movs        dword ptr [edi],dword ptr [esi]
 00513B3E    add         esp,10
 00513B41    pop         edi
 00513B42    pop         esi
 00513B43    pop         ebx
 00513B44    ret
end;*}

//00513B48
{*procedure sub_00513B48(?:TComboBoxStyleHook; ?:?);
begin
 00513B48    push        ebx
 00513B49    push        esi
 00513B4A    push        edi
 00513B4B    add         esp,0FFFFFFF0
 00513B4E    mov         ebx,edx
 00513B50    mov         esi,eax
 00513B52    mov         eax,dword ptr [esi+50]
 00513B55    push        0F0
 00513B57    push        eax
 00513B58    call        user32.GetWindowLongW
 00513B5D    test        eax,200000
>00513B62    jne         00513B7F
 00513B64    push        0
 00513B66    push        0
 00513B68    xor         ecx,ecx
 00513B6A    xor         edx,edx
 00513B6C    lea         eax,[esp+8]
 00513B70    call        TRect.Create
 00513B75    mov         edi,ebx
 00513B77    mov         esi,esp
 00513B79    movs        dword ptr [edi],dword ptr [esi]
 00513B7A    movs        dword ptr [edi],dword ptr [esi]
 00513B7B    movs        dword ptr [edi],dword ptr [esi]
 00513B7C    movs        dword ptr [edi],dword ptr [esi]
>00513B7D    jmp         00513BBE
 00513B7F    mov         edx,ebx
 00513B81    mov         eax,esi
 00513B83    call        00513A00
 00513B88    mov         ecx,dword ptr [ebx+4]
 00513B8B    neg         ecx
 00513B8D    mov         edx,dword ptr [ebx]
 00513B8F    neg         edx
 00513B91    mov         eax,ebx
 00513B93    call        OffsetRect
 00513B98    mov         eax,dword ptr [esi+8]
 00513B9B    cmp         byte ptr [eax+71],1
>00513B9F    je          00513BB2
 00513BA1    push        14
 00513BA3    call        user32.GetSystemMetrics
 00513BA8    mov         edx,dword ptr [ebx+8]
 00513BAB    sub         edx,eax
 00513BAD    dec         edx
 00513BAE    mov         dword ptr [ebx],edx
>00513BB0    jmp         00513BBE
 00513BB2    push        14
 00513BB4    call        user32.GetSystemMetrics
 00513BB9    add         eax,dword ptr [ebx]
 00513BBB    mov         dword ptr [ebx+8],eax
 00513BBE    add         esp,10
 00513BC1    pop         edi
 00513BC2    pop         esi
 00513BC3    pop         ebx
 00513BC4    ret
end;*}

//00513BC8
{*procedure sub_00513BC8(?:?; ?:?);
begin
 00513BC8    push        ebx
 00513BC9    push        esi
 00513BCA    push        edi
 00513BCB    push        ebp
 00513BCC    add         esp,0FFFFFFB0
 00513BCF    mov         edi,edx
 00513BD1    mov         ebx,eax
 00513BD3    mov         edx,edi
 00513BD5    mov         eax,ebx
 00513BD7    call        00513A18
 00513BDC    lea         edx,[esp+40]
 00513BE0    mov         eax,ebx
 00513BE2    call        00513AF8
 00513BE7    mov         eax,dword ptr [esp+4C]
 00513BEB    mov         dword ptr [edi+4],eax
 00513BEE    lea         edx,[esp+40]
 00513BF2    mov         eax,ebx
 00513BF4    call        00513AA8
 00513BF9    mov         esi,dword ptr [esp+44]
 00513BFD    mov         dword ptr [edi+0C],esi
 00513C00    sub         esi,dword ptr [edi+4]
 00513C03    mov         dword ptr [esp+8],esi
 00513C07    push        0
 00513C09    push        0
 00513C0B    push        18E
 00513C10    mov         eax,dword ptr [ebx+50]
 00513C13    push        eax
 00513C14    call        user32.SendMessageW
 00513C19    mov         dword ptr [esp+18],eax
 00513C1D    push        0
 00513C1F    push        0
 00513C21    push        18B
 00513C26    mov         eax,dword ptr [ebx+50]
 00513C29    push        eax
 00513C2A    call        user32.SendMessageW
 00513C2F    mov         dword ptr [esp+1C],eax
 00513C33    mov         eax,dword ptr [esp+1C]
 00513C37    imul        dword ptr [esp+8]
 00513C3B    test        eax,eax
>00513C3D    je          00513DCE
 00513C43    fild        dword ptr [esp+18]
 00513C47    fild        dword ptr [esp+1C]
 00513C4B    fdivp       st(1),st
 00513C4D    fild        dword ptr [esp+8]
 00513C51    fmulp       st(1),st
 00513C53    call        @ROUND
 00513C58    add         dword ptr [edi+4],eax
 00513C5B    mov         dword ptr [esp+4],1
 00513C63    xor         eax,eax
 00513C65    mov         dword ptr [ebx+40],eax
 00513C68    lea         edx,[esp+20]
 00513C6C    mov         eax,ebx
 00513C6E    call        00513A00
 00513C73    lea         eax,[esp+20]
 00513C77    call        RectHeight
 00513C7C    mov         dword ptr [esp+10],eax
 00513C80    push        0
 00513C82    push        0
 00513C84    push        1A1
 00513C89    mov         eax,dword ptr [ebx+50]
 00513C8C    push        eax
 00513C8D    call        user32.SendMessageW
 00513C92    mov         dword ptr [esp+0C],eax
 00513C96    mov         esi,dword ptr [esp+1C]
 00513C9A    dec         esi
 00513C9B    test        esi,esi
>00513C9D    jl          00513CC7
 00513C9F    inc         esi
 00513CA0    xor         ebp,ebp
 00513CA2    mov         eax,dword ptr [esp+0C]
 00513CA6    add         dword ptr [esp+4],eax
 00513CAA    mov         eax,dword ptr [esp+4]
 00513CAE    cmp         eax,dword ptr [esp+10]
>00513CB2    jle         00513CC3
 00513CB4    cmp         dword ptr [ebx+40],0
>00513CB8    jne         00513CC3
 00513CBA    mov         eax,dword ptr [esp+1C]
 00513CBE    sub         eax,ebp
 00513CC0    mov         dword ptr [ebx+40],eax
 00513CC3    inc         ebp
 00513CC4    dec         esi
>00513CC5    jne         00513CA2
 00513CC7    xor         eax,eax
 00513CC9    mov         dword ptr [esp],eax
 00513CCC    mov         ebp,dword ptr [esp+18]
 00513CD0    mov         esi,dword ptr [esp+1C]
 00513CD4    dec         esi
 00513CD5    sub         esi,ebp
>00513CD7    jl          00513D1F
 00513CD9    inc         esi
 00513CDA    mov         eax,dword ptr [esp+0C]
 00513CDE    add         dword ptr [esp],eax
 00513CE1    mov         eax,ebx
 00513CE3    call        00512F90
 00513CE8    cmp         al,1
>00513CEA    je          00513CF6
 00513CEC    mov         dword ptr [esp+14],2
>00513CF4    jmp         00513CFE
 00513CF6    mov         dword ptr [esp+14],4
 00513CFE    lea         edx,[esp+30]
 00513D02    mov         eax,ebx
 00513D04    call        00513A00
 00513D09    lea         eax,[esp+30]
 00513D0D    call        RectHeight
 00513D12    sub         eax,dword ptr [esp+14]
 00513D16    cmp         eax,dword ptr [esp]
>00513D19    jle         00513D1F
 00513D1B    inc         ebp
 00513D1C    dec         esi
>00513D1D    jne         00513CDA
 00513D1F    fild        dword ptr [esp]
 00513D22    fild        dword ptr [esp+4]
 00513D26    fdivp       st(1),st
 00513D28    fild        dword ptr [esp+8]
 00513D2C    fmulp       st(1),st
 00513D2E    call        @ROUND
 00513D33    add         eax,dword ptr [edi+4]
 00513D36    mov         dword ptr [edi+0C],eax
 00513D39    mov         eax,edi
 00513D3B    call        RectHeight
 00513D40    cmp         eax,8
>00513D43    jge         00513D87
 00513D45    mov         eax,edi
 00513D47    call        RectHeight
 00513D4C    mov         edx,8
 00513D51    sub         edx,eax
 00513D53    inc         edx
 00513D54    sub         dword ptr [esp+8],edx
 00513D58    lea         edx,[esp+40]
 00513D5C    mov         eax,ebx
 00513D5E    call        00513AF8
 00513D63    mov         esi,dword ptr [esp+4C]
 00513D67    fild        dword ptr [esp+18]
 00513D6B    fild        dword ptr [esp+1C]
 00513D6F    fdivp       st(1),st
 00513D71    fild        dword ptr [esp+8]
 00513D75    fmulp       st(1),st
 00513D77    call        @ROUND
 00513D7C    add         esi,eax
 00513D7E    mov         dword ptr [edi+4],esi
 00513D81    add         esi,8
 00513D84    mov         dword ptr [edi+0C],esi
 00513D87    mov         eax,dword ptr [esp+1C]
 00513D8B    dec         eax
 00513D8C    cmp         ebp,eax
>00513D8E    jne         00513DC4
 00513D90    lea         edx,[esp+40]
 00513D94    mov         eax,ebx
 00513D96    call        00513AA8
 00513D9B    mov         eax,dword ptr [esp+44]
 00513D9F    cmp         eax,dword ptr [edi+0C]
>00513DA2    je          00513DC4
 00513DA4    mov         eax,edi
 00513DA6    call        RectHeight
 00513DAB    mov         esi,eax
 00513DAD    lea         edx,[esp+40]
 00513DB1    mov         eax,ebx
 00513DB3    call        00513AA8
 00513DB8    mov         ebp,dword ptr [esp+44]
 00513DBC    mov         dword ptr [edi+0C],ebp
 00513DBF    sub         ebp,esi
 00513DC1    mov         dword ptr [edi+4],ebp
 00513DC4    mov         eax,edi
 00513DC6    call        RectHeight
 00513DCB    mov         dword ptr [ebx+44],eax
 00513DCE    add         esp,50
 00513DD1    pop         ebp
 00513DD2    pop         edi
 00513DD3    pop         esi
 00513DD4    pop         ebx
 00513DD5    ret
end;*}

//00513DD8
{*procedure sub_00513DD8(?:?; ?:?);
begin
 00513DD8    push        ebx
 00513DD9    push        esi
 00513DDA    push        edi
 00513DDB    add         esp,0FFFFFFF0
 00513DDE    mov         ebx,edx
 00513DE0    mov         esi,eax
 00513DE2    mov         edx,ebx
 00513DE4    mov         eax,esi
 00513DE6    call        00513A18
 00513DEB    mov         eax,ebx
 00513DED    call        RectWidth
 00513DF2    test        eax,eax
>00513DF4    jle         00513E0C
 00513DF6    push        9
 00513DF8    call        user32.GetSystemMetrics
 00513DFD    add         dword ptr [ebx+4],eax
 00513E00    push        9
 00513E02    call        user32.GetSystemMetrics
 00513E07    sub         dword ptr [ebx+0C],eax
>00513E0A    jmp         00513E25
 00513E0C    push        0
 00513E0E    push        0
 00513E10    xor         ecx,ecx
 00513E12    xor         edx,edx
 00513E14    lea         eax,[esp+8]
 00513E18    call        TRect.Create
 00513E1D    mov         edi,ebx
 00513E1F    mov         esi,esp
 00513E21    movs        dword ptr [edi],dword ptr [esi]
 00513E22    movs        dword ptr [edi],dword ptr [esi]
 00513E23    movs        dword ptr [edi],dword ptr [esi]
 00513E24    movs        dword ptr [edi],dword ptr [esi]
 00513E25    add         esp,10
 00513E28    pop         edi
 00513E29    pop         esi
 00513E2A    pop         ebx
 00513E2B    ret
end;*}

//00513E2C
{*procedure sub_00513E2C(?:?; ?:?);
begin
 00513E2C    push        ebx
 00513E2D    push        esi
 00513E2E    add         esp,0FFFFFFE0
 00513E31    mov         esi,edx
 00513E33    mov         ebx,eax
 00513E35    mov         edx,esi
 00513E37    mov         eax,ebx
 00513E39    call        00513DD8
 00513E3E    mov         eax,esi
 00513E40    call        RectWidth
 00513E45    test        eax,eax
>00513E47    jle         00513E6F
 00513E49    mov         edx,esp
 00513E4B    mov         eax,ebx
 00513E4D    call        00513BC8
 00513E52    mov         eax,esp
 00513E54    call        RectHeight
 00513E59    test        eax,eax
>00513E5B    jle         00513E6F
 00513E5D    lea         edx,[esp+10]
 00513E61    mov         eax,ebx
 00513E63    call        00513BC8
 00513E68    mov         eax,dword ptr [esp+14]
 00513E6C    mov         dword ptr [esi+0C],eax
 00513E6F    add         esp,20
 00513E72    pop         esi
 00513E73    pop         ebx
 00513E74    ret
end;*}

//00513E78
{*procedure sub_00513E78(?:?; ?:?);
begin
 00513E78    push        ebx
 00513E79    push        esi
 00513E7A    add         esp,0FFFFFFE0
 00513E7D    mov         esi,edx
 00513E7F    mov         ebx,eax
 00513E81    mov         edx,esi
 00513E83    mov         eax,ebx
 00513E85    call        00513DD8
 00513E8A    mov         eax,esi
 00513E8C    call        RectWidth
 00513E91    test        eax,eax
>00513E93    jle         00513EBB
 00513E95    mov         edx,esp
 00513E97    mov         eax,ebx
 00513E99    call        00513BC8
 00513E9E    mov         eax,esp
 00513EA0    call        RectHeight
 00513EA5    test        eax,eax
>00513EA7    jle         00513EBB
 00513EA9    lea         edx,[esp+10]
 00513EAD    mov         eax,ebx
 00513EAF    call        00513BC8
 00513EB4    mov         eax,dword ptr [esp+1C]
 00513EB8    mov         dword ptr [esi+4],eax
 00513EBB    add         esp,20
 00513EBE    pop         esi
 00513EBF    pop         ebx
 00513EC0    ret
end;*}

//00513EC4
{*procedure sub_00513EC4(?:?; ?:TCanvas; ?:TRect);
begin
 00513EC4    push        ebx
 00513EC5    push        esi
 00513EC6    mov         esi,ecx
 00513EC8    mov         ebx,edx
 00513ECA    call        StyleServices
 00513ECF    mov         edx,0FF000006
 00513ED4    call        TCustomStyleServices.GetSystemColor
 00513ED9    mov         edx,eax
 00513EDB    mov         eax,dword ptr [ebx+48]
 00513EDE    call        TBrush.SetColor
 00513EE3    mov         edx,esi
 00513EE5    mov         eax,ebx
 00513EE7    mov         ecx,dword ptr [eax]
 00513EE9    call        dword ptr [ecx+54]
 00513EEC    pop         esi
 00513EED    pop         ebx
 00513EEE    ret
end;*}

//00513EF0
procedure sub_00513EF0(?:TComboBoxStyleHook; ?:HDC);
begin
{*
 00513EF0    push        ebp
 00513EF1    mov         ebp,esp
 00513EF3    add         esp,0FFFFFF84
 00513EF6    push        ebx
 00513EF7    mov         dword ptr [ebp-8],edx
 00513EFA    mov         dword ptr [ebp-4],eax
 00513EFD    mov         eax,dword ptr [ebp-4]
 00513F00    mov         eax,dword ptr [eax+50]
 00513F03    push        0F0
 00513F05    push        eax
 00513F06    call        user32.GetWindowLongW
 00513F0B    test        eax,200000
>00513F10    je          00514216
 00513F16    mov         dl,1
 00513F18    mov         eax,[004BF670];TCanvas
 00513F1D    call        TCanvas.Create;TCanvas.Create
 00513F22    mov         dword ptr [ebp-10],eax
 00513F25    xor         eax,eax
 00513F27    push        ebp
 00513F28    push        51420F
 00513F2D    push        dword ptr fs:[eax]
 00513F30    mov         dword ptr fs:[eax],esp
 00513F33    cmp         dword ptr [ebp-8],0
>00513F37    je          00513F46
 00513F39    mov         edx,dword ptr [ebp-8]
 00513F3C    mov         eax,dword ptr [ebp-10]
 00513F3F    call        TCanvas.SetHandle
>00513F44    jmp         00513F5C
 00513F46    mov         eax,dword ptr [ebp-4]
 00513F49    mov         eax,dword ptr [eax+50]
 00513F4C    push        eax
 00513F4D    call        user32.GetWindowDC
 00513F52    mov         edx,eax
 00513F54    mov         eax,dword ptr [ebp-10]
 00513F57    call        TCanvas.SetHandle
 00513F5C    lea         edx,[ebp-3C]
 00513F5F    mov         eax,dword ptr [ebp-4]
 00513F62    call        00513A18
 00513F67    lea         eax,[ebp-3C]
 00513F6A    call        RectWidth
 00513F6F    test        eax,eax
>00513F71    jle         005141C8
 00513F77    mov         dl,1
 00513F79    mov         eax,[004C1D10];TBitmap
 00513F7E    call        TBitmap.Create;TBitmap.Create
 00513F83    mov         dword ptr [ebp-0C],eax
 00513F86    xor         eax,eax
 00513F88    push        ebp
 00513F89    push        5141C1
 00513F8E    push        dword ptr fs:[eax]
 00513F91    mov         dword ptr fs:[eax],esp
 00513F94    lea         edx,[ebp-4C]
 00513F97    mov         eax,dword ptr [ebp-4]
 00513F9A    call        00513A18
 00513F9F    lea         eax,[ebp-4C]
 00513FA2    call        RectWidth
 00513FA7    mov         edx,eax
 00513FA9    mov         eax,dword ptr [ebp-0C]
 00513FAC    mov         ecx,dword ptr [eax]
 00513FAE    call        dword ptr [ecx+44];TBitmap.SetWidth
 00513FB1    lea         edx,[ebp-5C]
 00513FB4    mov         eax,dword ptr [ebp-4]
 00513FB7    call        00513A18
 00513FBC    lea         eax,[ebp-5C]
 00513FBF    call        RectHeight
 00513FC4    mov         edx,eax
 00513FC6    mov         eax,dword ptr [ebp-0C]
 00513FC9    mov         ecx,dword ptr [eax]
 00513FCB    call        dword ptr [ecx+38];TBitmap.SetHeight
 00513FCE    lea         edx,[ebp-6C]
 00513FD1    mov         eax,dword ptr [ebp-4]
 00513FD4    call        00513A18
 00513FD9    mov         eax,dword ptr [ebp-68]
 00513FDC    neg         eax
 00513FDE    push        eax
 00513FDF    lea         edx,[ebp-7C]
 00513FE2    mov         eax,dword ptr [ebp-4]
 00513FE5    call        00513A18
 00513FEA    mov         eax,dword ptr [ebp-7C]
 00513FED    neg         eax
 00513FEF    push        eax
 00513FF0    mov         eax,dword ptr [ebp-0C]
 00513FF3    call        TBitmap.GetCanvas
 00513FF8    call        TCanvas.GetHandle
 00513FFD    pop         edx
 00513FFE    pop         ecx
 00513FFF    call        MoveWindowOrg
 00514004    call        StyleServices
 00514009    mov         edx,dword ptr [eax]
 0051400B    call        dword ptr [edx+48];@AbstractError
 0051400E    test        al,al
>00514010    je          0051414F
 00514016    lea         edx,[ebp-2C]
 00514019    mov         eax,dword ptr [ebp-4]
 0051401C    call        00513A18
 00514021    lea         edx,[ebp-6C]
 00514024    mov         eax,dword ptr [ebp-4]
 00514027    call        00513AF8
 0051402C    mov         eax,dword ptr [ebp-60]
 0051402F    mov         dword ptr [ebp-28],eax
 00514032    lea         edx,[ebp-6C]
 00514035    mov         eax,dword ptr [ebp-4]
 00514038    call        00513AA8
 0051403D    mov         eax,dword ptr [ebp-68]
 00514040    mov         dword ptr [ebp-20],eax
 00514043    lea         eax,[ebp-2C]
 00514046    call        RectHeight
 0051404B    test        eax,eax
>0051404D    jle         00514083
 0051404F    call        StyleServices
 00514054    lea         ecx,[ebp-1C]
 00514057    mov         dl,2D
 00514059    mov         ebx,dword ptr [eax]
 0051405B    call        dword ptr [ebx+0C4];TCustomStyleServices.GetElementDetails
 00514061    lea         eax,[ebp-2C]
 00514064    push        eax
 00514065    push        0
 00514067    mov         eax,dword ptr [ebp-0C]
 0051406A    call        TBitmap.GetCanvas
 0051406F    call        TCanvas.GetHandle
 00514074    push        eax
 00514075    call        StyleServices
 0051407A    lea         ecx,[ebp-1C]
 0051407D    pop         edx
 0051407E    call        TCustomStyleServices.DrawElement
 00514083    call        StyleServices
 00514088    mov         edx,dword ptr [ebp-4]
 0051408B    movzx       edx,byte ptr [edx+48]
 0051408F    lea         ecx,[ebp-1C]
 00514092    mov         ebx,dword ptr [eax]
 00514094    call        dword ptr [ebx+0C4];TCustomStyleServices.GetElementDetails
 0051409A    lea         edx,[ebp-6C]
 0051409D    mov         eax,dword ptr [ebp-4]
 005140A0    call        00513BC8
 005140A5    lea         eax,[ebp-6C]
 005140A8    push        eax
 005140A9    push        0
 005140AB    mov         eax,dword ptr [ebp-0C]
 005140AE    call        TBitmap.GetCanvas
 005140B3    call        TCanvas.GetHandle
 005140B8    push        eax
 005140B9    call        StyleServices
 005140BE    lea         ecx,[ebp-1C]
 005140C1    pop         edx
 005140C2    call        TCustomStyleServices.DrawElement
 005140C7    call        StyleServices
 005140CC    mov         edx,dword ptr [ebp-4]
 005140CF    movzx       edx,byte ptr [edx+49]
 005140D3    lea         ecx,[ebp-1C]
 005140D6    mov         ebx,dword ptr [eax]
 005140D8    call        dword ptr [ebx+0C4];TCustomStyleServices.GetElementDetails
 005140DE    lea         edx,[ebp-6C]
 005140E1    mov         eax,dword ptr [ebp-4]
 005140E4    call        00513AF8
 005140E9    lea         eax,[ebp-6C]
 005140EC    push        eax
 005140ED    push        0
 005140EF    mov         eax,dword ptr [ebp-0C]
 005140F2    call        TBitmap.GetCanvas
 005140F7    call        TCanvas.GetHandle
 005140FC    push        eax
 005140FD    call        StyleServices
 00514102    lea         ecx,[ebp-1C]
 00514105    pop         edx
 00514106    call        TCustomStyleServices.DrawElement
 0051410B    call        StyleServices
 00514110    mov         edx,dword ptr [ebp-4]
 00514113    movzx       edx,byte ptr [edx+4A]
 00514117    lea         ecx,[ebp-1C]
 0051411A    mov         ebx,dword ptr [eax]
 0051411C    call        dword ptr [ebx+0C4];TCustomStyleServices.GetElementDetails
 00514122    lea         edx,[ebp-6C]
 00514125    mov         eax,dword ptr [ebp-4]
 00514128    call        00513AA8
 0051412D    lea         eax,[ebp-6C]
 00514130    push        eax
 00514131    push        0
 00514133    mov         eax,dword ptr [ebp-0C]
 00514136    call        TBitmap.GetCanvas
 0051413B    call        TCanvas.GetHandle
 00514140    push        eax
 00514141    call        StyleServices
 00514146    lea         ecx,[ebp-1C]
 00514149    pop         edx
 0051414A    call        TCustomStyleServices.DrawElement
 0051414F    lea         edx,[ebp-6C]
 00514152    mov         eax,dword ptr [ebp-4]
 00514155    call        00513A18
 0051415A    mov         eax,dword ptr [ebp-68]
 0051415D    push        eax
 0051415E    lea         edx,[ebp-7C]
 00514161    mov         eax,dword ptr [ebp-4]
 00514164    call        00513A18
 00514169    mov         eax,dword ptr [ebp-7C]
 0051416C    push        eax
 0051416D    mov         eax,dword ptr [ebp-0C]
 00514170    call        TBitmap.GetCanvas
 00514175    call        TCanvas.GetHandle
 0051417A    pop         edx
 0051417B    pop         ecx
 0051417C    call        MoveWindowOrg
 00514181    mov         eax,dword ptr [ebp-0C]
 00514184    push        eax
 00514185    lea         edx,[ebp-6C]
 00514188    mov         eax,dword ptr [ebp-4]
 0051418B    call        00513A18
 00514190    mov         eax,dword ptr [ebp-68]
 00514193    push        eax
 00514194    lea         edx,[ebp-7C]
 00514197    mov         eax,dword ptr [ebp-4]
 0051419A    call        00513A18
 0051419F    mov         edx,dword ptr [ebp-7C]
 005141A2    mov         eax,dword ptr [ebp-10]
 005141A5    pop         ecx
 005141A6    mov         ebx,dword ptr [eax]
 005141A8    call        dword ptr [ebx+44];TCanvas.Draw
 005141AB    xor         eax,eax
 005141AD    pop         edx
 005141AE    pop         ecx
 005141AF    pop         ecx
 005141B0    mov         dword ptr fs:[eax],edx
 005141B3    push        5141C8
 005141B8    mov         eax,dword ptr [ebp-0C]
 005141BB    call        TObject.Free
 005141C0    ret
>005141C1    jmp         @HandleFinally
>005141C6    jmp         005141B8
 005141C8    xor         eax,eax
 005141CA    pop         edx
 005141CB    pop         ecx
 005141CC    pop         ecx
 005141CD    mov         dword ptr fs:[eax],edx
 005141D0    push        514216
 005141D5    cmp         dword ptr [ebp-8],0
>005141D9    je          005141E7
 005141DB    xor         edx,edx
 005141DD    mov         eax,dword ptr [ebp-10]
 005141E0    call        TCanvas.SetHandle
>005141E5    jmp         00514206
 005141E7    mov         eax,dword ptr [ebp-10]
 005141EA    call        TCanvas.GetHandle
 005141EF    push        eax
 005141F0    mov         eax,dword ptr [ebp-4]
 005141F3    mov         eax,dword ptr [eax+50]
 005141F6    push        eax
 005141F7    call        user32.ReleaseDC
 005141FC    xor         edx,edx
 005141FE    mov         eax,dword ptr [ebp-10]
 00514201    call        TCanvas.SetHandle
 00514206    mov         eax,dword ptr [ebp-10]
 00514209    call        TObject.Free
 0051420E    ret
>0051420F    jmp         @HandleFinally
>00514214    jmp         005141D5
 00514216    pop         ebx
 00514217    mov         esp,ebp
 00514219    pop         ebp
 0051421A    ret
*}
end;

//0051421C
procedure sub_0051421C(?:TComboBoxStyleHook);
begin
{*
 0051421C    push        ebp
 0051421D    mov         ebp,esp
 0051421F    add         esp,0FFFFFFD4
 00514222    push        ebx
 00514223    push        esi
 00514224    mov         dword ptr [ebp-4],eax
 00514227    mov         dl,1
 00514229    mov         eax,[004BF670];TCanvas
 0051422E    call        TCanvas.Create;TCanvas.Create
 00514233    mov         dword ptr [ebp-8],eax
 00514236    xor         eax,eax
 00514238    push        ebp
 00514239    push        5143B7
 0051423E    push        dword ptr fs:[eax]
 00514241    mov         dword ptr fs:[eax],esp
 00514244    mov         eax,dword ptr [ebp-4]
 00514247    mov         eax,dword ptr [eax+50]
 0051424A    push        eax
 0051424B    call        user32.GetWindowDC
 00514250    mov         edx,eax
 00514252    mov         eax,dword ptr [ebp-8]
 00514255    call        TCanvas.SetHandle
 0051425A    xor         eax,eax
 0051425C    mov         dword ptr [ebp-1C],eax
 0051425F    xor         eax,eax
 00514261    mov         dword ptr [ebp-18],eax
 00514264    mov         eax,dword ptr [ebp-1C]
 00514267    mov         dword ptr [ebp-14],eax
 0051426A    mov         eax,dword ptr [ebp-18]
 0051426D    mov         dword ptr [ebp-10],eax
 00514270    lea         eax,[ebp-14]
 00514273    push        eax
 00514274    mov         eax,dword ptr [ebp-4]
 00514277    mov         eax,dword ptr [eax+50]
 0051427A    push        eax
 0051427B    call        user32.ClientToScreen
 00514280    lea         eax,[ebp-2C]
 00514283    push        eax
 00514284    mov         eax,dword ptr [ebp-4]
 00514287    mov         eax,dword ptr [eax+50]
 0051428A    push        eax
 0051428B    call        user32.GetWindowRect
 00514290    mov         eax,dword ptr [ebp-2C]
 00514293    sub         dword ptr [ebp-14],eax
 00514296    mov         eax,dword ptr [ebp-28]
 00514299    sub         dword ptr [ebp-10],eax
 0051429C    lea         eax,[ebp-2C]
 0051429F    call        RectWidth
 005142A4    cmp         eax,1388
>005142A9    jge         00514382
 005142AF    lea         eax,[ebp-2C]
 005142B2    call        RectHeight
 005142B7    cmp         eax,1388
>005142BC    jge         00514382
 005142C2    lea         eax,[ebp-2C]
 005142C5    push        eax
 005142C6    mov         eax,dword ptr [ebp-4]
 005142C9    mov         eax,dword ptr [eax+50]
 005142CC    push        eax
 005142CD    call        user32.GetClientRect
 005142D2    mov         eax,dword ptr [ebp-20]
 005142D5    sub         eax,dword ptr [ebp-28]
 005142D8    mov         esi,dword ptr [ebp-10]
 005142DB    add         eax,esi
 005142DD    push        eax
 005142DE    mov         eax,dword ptr [ebp-24]
 005142E1    sub         eax,dword ptr [ebp-2C]
 005142E4    mov         ebx,dword ptr [ebp-14]
 005142E7    add         eax,ebx
 005142E9    push        eax
 005142EA    push        esi
 005142EB    push        ebx
 005142EC    mov         eax,dword ptr [ebp-8]
 005142EF    call        TCanvas.GetHandle
 005142F4    push        eax
 005142F5    call        gdi32.ExcludeClipRect
 005142FA    lea         eax,[ebp-2C]
 005142FD    push        eax
 005142FE    mov         eax,dword ptr [ebp-4]
 00514301    mov         eax,dword ptr [eax+50]
 00514304    push        eax
 00514305    call        user32.GetWindowRect
 0051430A    mov         ecx,dword ptr [ebp-28]
 0051430D    neg         ecx
 0051430F    mov         edx,dword ptr [ebp-2C]
 00514312    neg         edx
 00514314    lea         eax,[ebp-2C]
 00514317    call        OffsetRect
 0051431C    mov         eax,dword ptr [ebp-8]
 0051431F    call        TCanvas.GetHandle
 00514324    push        eax
 00514325    call        gdi32.SaveDC
 0051432A    mov         dword ptr [ebp-0C],eax
 0051432D    xor         eax,eax
 0051432F    push        ebp
 00514330    push        514369
 00514335    push        dword ptr fs:[eax]
 00514338    mov         dword ptr fs:[eax],esp
 0051433B    lea         ecx,[ebp-2C]
 0051433E    mov         edx,dword ptr [ebp-8]
 00514341    mov         eax,dword ptr [ebp-4]
 00514344    call        00513EC4
 00514349    xor         eax,eax
 0051434B    pop         edx
 0051434C    pop         ecx
 0051434D    pop         ecx
 0051434E    mov         dword ptr fs:[eax],edx
 00514351    push        514370
 00514356    mov         eax,dword ptr [ebp-0C]
 00514359    push        eax
 0051435A    mov         eax,dword ptr [ebp-8]
 0051435D    call        TCanvas.GetHandle
 00514362    push        eax
 00514363    call        gdi32.RestoreDC
 00514368    ret
>00514369    jmp         @HandleFinally
>0051436E    jmp         00514356
 00514370    mov         eax,dword ptr [ebp-8]
 00514373    call        TCanvas.GetHandle
 00514378    mov         edx,eax
 0051437A    mov         eax,dword ptr [ebp-4]
 0051437D    call        00513EF0
 00514382    xor         eax,eax
 00514384    pop         edx
 00514385    pop         ecx
 00514386    pop         ecx
 00514387    mov         dword ptr fs:[eax],edx
 0051438A    push        5143BE
 0051438F    mov         eax,dword ptr [ebp-8]
 00514392    call        TCanvas.GetHandle
 00514397    push        eax
 00514398    mov         eax,dword ptr [ebp-4]
 0051439B    mov         eax,dword ptr [eax+50]
 0051439E    push        eax
 0051439F    call        user32.ReleaseDC
 005143A4    xor         edx,edx
 005143A6    mov         eax,dword ptr [ebp-8]
 005143A9    call        TCanvas.SetHandle
 005143AE    mov         eax,dword ptr [ebp-8]
 005143B1    call        TObject.Free
 005143B6    ret
>005143B7    jmp         @HandleFinally
>005143BC    jmp         0051438F
 005143BE    pop         esi
 005143BF    pop         ebx
 005143C0    mov         esp,ebp
 005143C2    pop         ebp
 005143C3    ret
*}
end;

//005143C4
{*procedure sub_005143C4(?:?; ?:?);
begin
 005143C4    push        ebp
 005143C5    mov         ebp,esp
 005143C7    add         esp,0FFFFFFD0
 005143CA    push        ebx
 005143CB    push        esi
 005143CC    push        edi
 005143CD    mov         ebx,eax
 005143CF    mov         eax,dword ptr [ebp+8]
 005143D2    mov         eax,dword ptr [eax-4]
 005143D5    mov         eax,dword ptr [eax+50]
 005143D8    push        0F0
 005143DA    push        eax
 005143DB    call        user32.GetWindowLongW
 005143E0    mov         esi,eax
 005143E2    mov         edi,200000
 005143E7    and         edi,esi
 005143E9    cmp         edi,200000
>005143EF    je          005143FF
 005143F1    mov         eax,100000
 005143F6    and         eax,esi
 005143F8    cmp         eax,100000
>005143FD    jne         0051446C
 005143FF    mov         eax,0FFDFFFFF
 00514404    and         eax,esi
 00514406    and         eax,0FFEFFFFF
 0051440B    mov         edx,dword ptr [ebp+8]
 0051440E    mov         edx,dword ptr [edx-4]
 00514411    mov         byte ptr [edx+4B],1
 00514415    mov         edx,dword ptr [ebp+8]
 00514418    mov         edx,dword ptr [edx-4]
 0051441B    mov         edx,dword ptr [edx+50]
 0051441E    push        eax
 0051441F    push        0F0
 00514421    push        edx
 00514422    call        user32.SetWindowLongW
 00514427    mov         eax,dword ptr [ebx+8]
 0051442A    push        eax
 0051442B    mov         eax,dword ptr [ebx+4]
 0051442E    push        eax
 0051442F    mov         eax,dword ptr [ebx]
 00514431    push        eax
 00514432    mov         eax,dword ptr [ebp+8]
 00514435    mov         eax,dword ptr [eax-4]
 00514438    mov         eax,dword ptr [eax+50]
 0051443B    push        eax
 0051443C    mov         eax,dword ptr [ebp+8]
 0051443F    mov         eax,dword ptr [eax-4]
 00514442    mov         eax,dword ptr [eax+5C]
 00514445    push        eax
 00514446    call        user32.CallWindowProcW
 0051444B    mov         dword ptr [ebx+0C],eax
 0051444E    mov         eax,dword ptr [ebp+8]
 00514451    mov         eax,dword ptr [eax-4]
 00514454    mov         eax,dword ptr [eax+50]
 00514457    push        esi
 00514458    push        0F0
 0051445A    push        eax
 0051445B    call        user32.SetWindowLongW
 00514460    mov         eax,dword ptr [ebp+8]
 00514463    mov         eax,dword ptr [eax-4]
 00514466    mov         byte ptr [eax+4B],0
>0051446A    jmp         00514493
 0051446C    mov         eax,dword ptr [ebx+8]
 0051446F    push        eax
 00514470    mov         eax,dword ptr [ebx+4]
 00514473    push        eax
 00514474    mov         eax,dword ptr [ebx]
 00514476    push        eax
 00514477    mov         eax,dword ptr [ebp+8]
 0051447A    mov         eax,dword ptr [eax-4]
 0051447D    mov         eax,dword ptr [eax+50]
 00514480    push        eax
 00514481    mov         eax,dword ptr [ebp+8]
 00514484    mov         eax,dword ptr [eax-4]
 00514487    mov         eax,dword ptr [eax+5C]
 0051448A    push        eax
 0051448B    call        user32.CallWindowProcW
 00514490    mov         dword ptr [ebx+0C],eax
 00514493    cmp         dword ptr [ebx+4],0
>00514497    je          0051457A
 0051449D    mov         eax,dword ptr [ebx+8]
 005144A0    mov         dword ptr [ebp-4],eax
 005144A3    mov         eax,dword ptr [ebp+8]
 005144A6    mov         eax,dword ptr [eax-4]
 005144A9    mov         eax,dword ptr [eax+8]
 005144AC    cmp         byte ptr [eax+71],1
>005144B0    je          005144E6
 005144B2    mov         dword ptr [ebp-8],1
 005144B9    cmp         edi,200000
>005144BF    jne         005144DD
 005144C1    lea         edx,[ebp-20]
 005144C4    mov         eax,dword ptr [ebp+8]
 005144C7    mov         eax,dword ptr [eax-4]
 005144CA    call        00513A18
 005144CF    lea         eax,[ebp-20]
 005144D2    call        RectWidth
 005144D7    inc         eax
 005144D8    mov         dword ptr [ebp-0C],eax
>005144DB    jmp         00514518
 005144DD    mov         dword ptr [ebp-0C],1
>005144E4    jmp         00514518
 005144E6    mov         dword ptr [ebp-0C],1
 005144ED    cmp         edi,200000
>005144F3    jne         00514511
 005144F5    lea         edx,[ebp-30]
 005144F8    mov         eax,dword ptr [ebp+8]
 005144FB    mov         eax,dword ptr [eax-4]
 005144FE    call        00513A18
 00514503    lea         eax,[ebp-30]
 00514506    call        RectWidth
 0051450B    inc         eax
 0051450C    mov         dword ptr [ebp-8],eax
>0051450F    jmp         00514518
 00514511    mov         dword ptr [ebp-8],1
 00514518    mov         ecx,1
 0051451D    mov         dword ptr [ebp-10],1
 00514524    mov         eax,dword ptr [ebp-4]
 00514527    mov         edx,dword ptr [eax+30]
 0051452A    mov         eax,dword ptr [ebp-4]
 0051452D    mov         esi,dword ptr [edx+8]
 00514530    mov         dword ptr [eax],esi
 00514532    mov         esi,dword ptr [edx+0C]
 00514535    mov         dword ptr [eax+4],esi
 00514538    mov         esi,dword ptr [edx+8]
 0051453B    add         esi,dword ptr [edx+10]
 0051453E    mov         dword ptr [eax+8],esi
 00514541    mov         esi,dword ptr [edx+0C]
 00514544    add         esi,dword ptr [edx+14]
 00514547    mov         dword ptr [eax+0C],esi
 0051454A    mov         edx,dword ptr [ebp-8]
 0051454D    add         dword ptr [eax],edx
 0051454F    add         dword ptr [eax+4],ecx
 00514552    mov         edx,dword ptr [ebp-0C]
 00514555    sub         dword ptr [eax+8],edx
 00514558    mov         edx,dword ptr [ebp-10]
 0051455B    sub         dword ptr [eax+0C],edx
 0051455E    mov         eax,dword ptr [ebp-4]
 00514561    mov         edx,dword ptr [ebp-4]
 00514564    mov         esi,eax
 00514566    lea         edi,[edx+10]
 00514569    movs        dword ptr [edi],dword ptr [esi]
 0051456A    movs        dword ptr [edi],dword ptr [esi]
 0051456B    movs        dword ptr [edi],dword ptr [esi]
 0051456C    movs        dword ptr [edi],dword ptr [esi]
 0051456D    mov         eax,dword ptr [ebp-4]
 00514570    mov         dword ptr [ebx+8],eax
 00514573    mov         dword ptr [ebx+0C],400
 0051457A    xor         eax,eax
 0051457C    mov         dword ptr [ebx+0C],eax
 0051457F    mov         eax,dword ptr [ebp+8]
 00514582    mov         byte ptr [eax-5],1
 00514586    pop         edi
 00514587    pop         esi
 00514588    pop         ebx
 00514589    mov         esp,ebp
 0051458B    pop         ebp
 0051458C    ret
end;*}

//00514590
{*procedure sub_00514590(?:?; ?:?);
begin
 00514590    push        ebp
 00514591    mov         ebp,esp
 00514593    add         esp,0FFFFFFD0
 00514596    push        ebx
 00514597    push        esi
 00514598    mov         esi,eax
 0051459A    mov         ebx,dword ptr [ebp+8]
 0051459D    add         ebx,0FFFFFFFC
 005145A0    push        0
 005145A2    push        0
 005145A4    push        0B
 005145A6    mov         eax,dword ptr [ebx]
 005145A8    mov         eax,dword ptr [eax+50]
 005145AB    push        eax
 005145AC    call        user32.SendMessageW
 005145B1    push        0
 005145B3    push        0
 005145B5    push        18E
 005145BA    mov         eax,dword ptr [ebx]
 005145BC    mov         eax,dword ptr [eax+50]
 005145BF    push        eax
 005145C0    call        user32.SendMessageW
 005145C5    cmp         word ptr [esi+6],0
>005145CA    jge         005145CF
 005145CC    inc         eax
>005145CD    jmp         005145D0
 005145CF    dec         eax
 005145D0    push        0
 005145D2    push        eax
 005145D3    push        197
 005145D8    mov         eax,dword ptr [ebx]
 005145DA    mov         eax,dword ptr [eax+50]
 005145DD    push        eax
 005145DE    call        user32.SendMessageW
 005145E3    push        0
 005145E5    push        1
 005145E7    push        0B
 005145E9    mov         eax,dword ptr [ebx]
 005145EB    mov         eax,dword ptr [eax+50]
 005145EE    push        eax
 005145EF    call        user32.SendMessageW
 005145F4    lea         edx,[ebp-30]
 005145F7    mov         eax,dword ptr [ebx]
 005145F9    call        00513A00
 005145FE    lea         eax,[ebp-30]
 00514601    call        RectHeight
 00514606    push        eax
 00514607    lea         eax,[ebp-10]
 0051460A    push        eax
 0051460B    lea         edx,[ebp-20]
 0051460E    mov         eax,dword ptr [ebx]
 00514610    call        00513A00
 00514615    lea         eax,[ebp-20]
 00514618    call        RectWidth
 0051461D    mov         ecx,eax
 0051461F    xor         edx,edx
 00514621    xor         eax,eax
 00514623    call        Rect
 00514628    push        5
 0051462A    push        0
 0051462C    lea         eax,[ebp-10]
 0051462F    push        eax
 00514630    mov         eax,dword ptr [ebx]
 00514632    mov         eax,dword ptr [eax+50]
 00514635    push        eax
 00514636    call        user32.RedrawWindow
 0051463B    mov         eax,dword ptr [ebx]
 0051463D    xor         edx,edx
 0051463F    call        00513EF0
 00514644    mov         eax,dword ptr [ebp+8]
 00514647    mov         byte ptr [eax-5],1
 0051464B    pop         esi
 0051464C    pop         ebx
 0051464D    mov         esp,ebp
 0051464F    pop         ebp
 00514650    ret
end;*}

//00514654
{*procedure sub_00514654(?:?; ?:?);
begin
 00514654    push        ebp
 00514655    mov         ebp,esp
 00514657    add         esp,0FFFFFF60
 0051465D    push        ebx
 0051465E    mov         ebx,eax
 00514660    movsx       eax,word ptr [ebx+8]
 00514664    movsx       edx,word ptr [ebx+0A]
 00514668    mov         dword ptr [ebp-10],eax
 0051466B    mov         dword ptr [ebp-0C],edx
 0051466E    mov         eax,dword ptr [ebp-10]
 00514671    mov         dword ptr [ebp-8],eax
 00514674    mov         eax,dword ptr [ebp-0C]
 00514677    mov         dword ptr [ebp-4],eax
 0051467A    lea         edx,[ebp-40]
 0051467D    mov         eax,dword ptr [ebp+8]
 00514680    mov         eax,dword ptr [eax-4]
 00514683    call        00513B48
 00514688    lea         eax,[ebp-40]
 0051468B    lea         edx,[ebp-8]
 0051468E    call        TRect.Contains
 00514693    test        al,al
>00514695    je          0051486E
 0051469B    movsx       eax,word ptr [ebx+8]
 0051469F    movsx       edx,word ptr [ebx+0A]
 005146A3    mov         dword ptr [ebp-18],eax
 005146A6    mov         dword ptr [ebp-14],edx
 005146A9    lea         edx,[ebp-50]
 005146AC    mov         eax,dword ptr [ebp+8]
 005146AF    mov         eax,dword ptr [eax-4]
 005146B2    call        00513AF8
 005146B7    lea         eax,[ebp-50]
 005146BA    lea         edx,[ebp-18]
 005146BD    call        TRect.Contains
 005146C2    test        al,al
>005146C4    je          00514780
 005146CA    push        0
 005146CC    push        0
 005146CE    push        0B
 005146D0    mov         eax,dword ptr [ebp+8]
 005146D3    mov         eax,dword ptr [eax-4]
 005146D6    mov         eax,dword ptr [eax+50]
 005146D9    push        eax
 005146DA    call        user32.SendMessageW
 005146DF    push        0
 005146E1    push        0
 005146E3    push        0
 005146E5    push        18E
 005146EA    mov         eax,dword ptr [ebp+8]
 005146ED    mov         eax,dword ptr [eax-4]
 005146F0    mov         ebx,dword ptr [eax+50]
 005146F3    push        ebx
 005146F4    call        user32.SendMessageW
 005146F9    dec         eax
 005146FA    push        eax
 005146FB    push        197
 00514700    push        ebx
 00514701    call        user32.SendMessageW
 00514706    push        0
 00514708    push        1
 0051470A    push        0B
 0051470C    mov         eax,dword ptr [ebp+8]
 0051470F    mov         eax,dword ptr [eax-4]
 00514712    mov         eax,dword ptr [eax+50]
 00514715    push        eax
 00514716    call        user32.SendMessageW
 0051471B    lea         edx,[ebp-70]
 0051471E    mov         eax,dword ptr [ebp+8]
 00514721    mov         eax,dword ptr [eax-4]
 00514724    call        00513A00
 00514729    lea         eax,[ebp-70]
 0051472C    call        RectHeight
 00514731    push        eax
 00514732    lea         eax,[ebp-30]
 00514735    push        eax
 00514736    lea         edx,[ebp-60]
 00514739    mov         eax,dword ptr [ebp+8]
 0051473C    mov         eax,dword ptr [eax-4]
 0051473F    call        00513A00
 00514744    lea         eax,[ebp-60]
 00514747    call        RectWidth
 0051474C    mov         ecx,eax
 0051474E    xor         edx,edx
 00514750    xor         eax,eax
 00514752    call        Rect
 00514757    push        5
 00514759    push        0
 0051475B    lea         eax,[ebp-30]
 0051475E    push        eax
 0051475F    mov         eax,dword ptr [ebp+8]
 00514762    mov         eax,dword ptr [eax-4]
 00514765    mov         eax,dword ptr [eax+50]
 00514768    push        eax
 00514769    call        user32.RedrawWindow
 0051476E    mov         eax,dword ptr [ebp+8]
 00514771    mov         eax,dword ptr [eax-4]
 00514774    xor         edx,edx
 00514776    call        00513EF0
>0051477B    jmp         00514875
 00514780    movsx       eax,word ptr [ebx+8]
 00514784    movsx       edx,word ptr [ebx+0A]
 00514788    mov         dword ptr [ebp-20],eax
 0051478B    mov         dword ptr [ebp-1C],edx
 0051478E    lea         edx,[ebp-80]
 00514791    mov         eax,dword ptr [ebp+8]
 00514794    mov         eax,dword ptr [eax-4]
 00514797    call        00513AA8
 0051479C    lea         eax,[ebp-80]
 0051479F    lea         edx,[ebp-20]
 005147A2    call        TRect.Contains
 005147A7    test        al,al
>005147A9    je          0051486E
 005147AF    push        0
 005147B1    push        0
 005147B3    push        0B
 005147B5    mov         eax,dword ptr [ebp+8]
 005147B8    mov         eax,dword ptr [eax-4]
 005147BB    mov         eax,dword ptr [eax+50]
 005147BE    push        eax
 005147BF    call        user32.SendMessageW
 005147C4    push        0
 005147C6    push        0
 005147C8    push        0
 005147CA    push        18E
 005147CF    mov         eax,dword ptr [ebp+8]
 005147D2    mov         eax,dword ptr [eax-4]
 005147D5    mov         ebx,dword ptr [eax+50]
 005147D8    push        ebx
 005147D9    call        user32.SendMessageW
 005147DE    inc         eax
 005147DF    push        eax
 005147E0    push        197
 005147E5    push        ebx
 005147E6    call        user32.SendMessageW
 005147EB    push        0
 005147ED    push        1
 005147EF    push        0B
 005147F1    mov         eax,dword ptr [ebp+8]
 005147F4    mov         eax,dword ptr [eax-4]
 005147F7    mov         eax,dword ptr [eax+50]
 005147FA    push        eax
 005147FB    call        user32.SendMessageW
 00514800    lea         edx,[ebp-0A0]
 00514806    mov         eax,dword ptr [ebp+8]
 00514809    mov         eax,dword ptr [eax-4]
 0051480C    call        00513A00
 00514811    lea         eax,[ebp-0A0]
 00514817    call        RectHeight
 0051481C    push        eax
 0051481D    lea         eax,[ebp-30]
 00514820    push        eax
 00514821    lea         edx,[ebp-90]
 00514827    mov         eax,dword ptr [ebp+8]
 0051482A    mov         eax,dword ptr [eax-4]
 0051482D    call        00513A00
 00514832    lea         eax,[ebp-90]
 00514838    call        RectWidth
 0051483D    mov         ecx,eax
 0051483F    xor         edx,edx
 00514841    xor         eax,eax
 00514843    call        Rect
 00514848    push        5
 0051484A    push        0
 0051484C    lea         eax,[ebp-30]
 0051484F    push        eax
 00514850    mov         eax,dword ptr [ebp+8]
 00514853    mov         eax,dword ptr [eax-4]
 00514856    mov         eax,dword ptr [eax+50]
 00514859    push        eax
 0051485A    call        user32.RedrawWindow
 0051485F    mov         eax,dword ptr [ebp+8]
 00514862    mov         eax,dword ptr [eax-4]
 00514865    xor         edx,edx
 00514867    call        00513EF0
>0051486C    jmp         00514875
 0051486E    mov         eax,dword ptr [ebp+8]
 00514871    mov         byte ptr [eax-5],1
 00514875    pop         ebx
 00514876    mov         esp,ebp
 00514878    pop         ebp
 00514879    ret
end;*}

//0051487C
{*procedure sub_0051487C(?:?; ?:?);
begin
 0051487C    push        ebp
 0051487D    mov         ebp,esp
 0051487F    add         esp,0FFFFFED0
 00514885    push        ebx
 00514886    push        esi
 00514887    mov         ebx,dword ptr [ebp+8]
 0051488A    add         ebx,0FFFFFFFC
 0051488D    mov         edx,dword ptr [ebp+8]
 00514890    mov         byte ptr [edx-5],0
 00514894    movsx       edx,word ptr [eax+8]
 00514898    movsx       eax,word ptr [eax+0A]
 0051489C    mov         dword ptr [ebp-10],edx
 0051489F    mov         dword ptr [ebp-0C],eax
 005148A2    mov         eax,dword ptr [ebp-10]
 005148A5    mov         dword ptr [ebp-8],eax
 005148A8    mov         eax,dword ptr [ebp-0C]
 005148AB    mov         dword ptr [ebp-4],eax
 005148AE    mov         eax,dword ptr [ebx]
 005148B0    mov         eax,dword ptr [eax+8]
 005148B3    cmp         byte ptr [eax+71],1
>005148B7    jne         005148BC
 005148B9    neg         dword ptr [ebp-8]
 005148BC    mov         eax,dword ptr [ebx]
 005148BE    mov         edx,dword ptr [ebp-8]
 005148C1    mov         dword ptr [eax+28],edx
 005148C4    mov         edx,dword ptr [ebp-4]
 005148C7    mov         dword ptr [eax+2C],edx
 005148CA    lea         edx,[ebp-30]
 005148CD    mov         eax,dword ptr [ebx]
 005148CF    call        00513B48
 005148D4    lea         eax,[ebp-30]
 005148D7    lea         edx,[ebp-8]
 005148DA    call        TRect.Contains
 005148DF    test        al,al
>005148E1    je          00514D39
 005148E7    mov         eax,dword ptr [ebx]
 005148E9    call        00512F90
 005148EE    cmp         al,1
>005148F0    jne         005148FD
 005148F2    mov         eax,dword ptr [ebx]
 005148F4    mov         eax,dword ptr [eax+50]
 005148F7    push        eax
 005148F8    call        user32.SetCapture
 005148FD    mov         eax,dword ptr [ebx]
 005148FF    mov         edx,dword ptr [ebp-8]
 00514902    mov         dword ptr [eax+28],edx
 00514905    mov         edx,dword ptr [ebp-4]
 00514908    mov         dword ptr [eax+2C],edx
 0051490B    lea         edx,[ebp-40]
 0051490E    mov         eax,dword ptr [ebx]
 00514910    call        00513E2C
 00514915    lea         eax,[ebp-40]
 00514918    lea         edx,[ebp-8]
 0051491B    call        TRect.Contains
 00514920    test        al,al
>00514922    je          00514A12
 00514928    push        0
 0051492A    push        0
 0051492C    push        1A1
 00514931    mov         eax,dword ptr [ebx]
 00514933    mov         eax,dword ptr [eax+50]
 00514936    push        eax
 00514937    call        user32.SendMessageW
 0051493C    mov         esi,eax
 0051493E    test        esi,esi
>00514940    jle         0051495B
 00514942    lea         edx,[ebp-50]
 00514945    mov         eax,dword ptr [ebx]
 00514947    call        00513A0C
 0051494C    lea         eax,[ebp-50]
 0051494F    call        RectHeight
 00514954    cdq
 00514955    idiv        eax,esi
 00514957    mov         esi,eax
>00514959    jmp         0051495D
 0051495B    xor         esi,esi
 0051495D    push        0
 0051495F    push        0
 00514961    push        18E
 00514966    mov         eax,dword ptr [ebx]
 00514968    mov         eax,dword ptr [eax+50]
 0051496B    push        eax
 0051496C    call        user32.SendMessageW
 00514971    sub         eax,esi
 00514973    inc         eax
 00514974    mov         esi,eax
 00514976    test        esi,esi
>00514978    jge         0051497C
 0051497A    xor         esi,esi
 0051497C    push        0
 0051497E    push        0
 00514980    push        0B
 00514982    mov         eax,dword ptr [ebx]
 00514984    mov         eax,dword ptr [eax+50]
 00514987    push        eax
 00514988    call        user32.SendMessageW
 0051498D    push        0
 0051498F    push        esi
 00514990    push        197
 00514995    mov         eax,dword ptr [ebx]
 00514997    mov         eax,dword ptr [eax+50]
 0051499A    push        eax
 0051499B    call        user32.SendMessageW
 005149A0    push        0
 005149A2    push        1
 005149A4    push        0B
 005149A6    mov         eax,dword ptr [ebx]
 005149A8    mov         eax,dword ptr [eax+50]
 005149AB    push        eax
 005149AC    call        user32.SendMessageW
 005149B1    lea         edx,[ebp-70]
 005149B4    mov         eax,dword ptr [ebx]
 005149B6    call        00513A00
 005149BB    lea         eax,[ebp-70]
 005149BE    call        RectHeight
 005149C3    push        eax
 005149C4    lea         eax,[ebp-20]
 005149C7    push        eax
 005149C8    lea         edx,[ebp-60]
 005149CB    mov         eax,dword ptr [ebx]
 005149CD    call        00513A00
 005149D2    lea         eax,[ebp-60]
 005149D5    call        RectWidth
 005149DA    mov         ecx,eax
 005149DC    xor         edx,edx
 005149DE    xor         eax,eax
 005149E0    call        Rect
 005149E5    push        5
 005149E7    push        0
 005149E9    lea         eax,[ebp-20]
 005149EC    push        eax
 005149ED    mov         eax,dword ptr [ebx]
 005149EF    mov         eax,dword ptr [eax+50]
 005149F2    push        eax
 005149F3    call        user32.RedrawWindow
 005149F8    mov         eax,dword ptr [ebx]
 005149FA    xor         edx,edx
 005149FC    call        00513EF0
 00514A01    mov         eax,dword ptr [ebx]
 00514A03    mov         edx,3
 00514A08    call        00512E98
>00514A0D    jmp         00514D30
 00514A12    lea         edx,[ebp-80]
 00514A15    mov         eax,dword ptr [ebx]
 00514A17    call        00513E78
 00514A1C    lea         eax,[ebp-80]
 00514A1F    lea         edx,[ebp-8]
 00514A22    call        TRect.Contains
 00514A27    test        al,al
>00514A29    je          00514B23
 00514A2F    push        0
 00514A31    push        0
 00514A33    push        1A1
 00514A38    mov         eax,dword ptr [ebx]
 00514A3A    mov         eax,dword ptr [eax+50]
 00514A3D    push        eax
 00514A3E    call        user32.SendMessageW
 00514A43    mov         esi,eax
 00514A45    test        esi,esi
>00514A47    jle         00514A68
 00514A49    lea         edx,[ebp-90]
 00514A4F    mov         eax,dword ptr [ebx]
 00514A51    call        00513A0C
 00514A56    lea         eax,[ebp-90]
 00514A5C    call        RectHeight
 00514A61    cdq
 00514A62    idiv        eax,esi
 00514A64    mov         esi,eax
>00514A66    jmp         00514A6A
 00514A68    xor         esi,esi
 00514A6A    push        0
 00514A6C    push        0
 00514A6E    push        18E
 00514A73    mov         eax,dword ptr [ebx]
 00514A75    mov         eax,dword ptr [eax+50]
 00514A78    push        eax
 00514A79    call        user32.SendMessageW
 00514A7E    add         esi,eax
 00514A80    dec         esi
 00514A81    push        0
 00514A83    push        0
 00514A85    push        0B
 00514A87    mov         eax,dword ptr [ebx]
 00514A89    mov         eax,dword ptr [eax+50]
 00514A8C    push        eax
 00514A8D    call        user32.SendMessageW
 00514A92    push        0
 00514A94    push        esi
 00514A95    push        197
 00514A9A    mov         eax,dword ptr [ebx]
 00514A9C    mov         eax,dword ptr [eax+50]
 00514A9F    push        eax
 00514AA0    call        user32.SendMessageW
 00514AA5    push        0
 00514AA7    push        1
 00514AA9    push        0B
 00514AAB    mov         eax,dword ptr [ebx]
 00514AAD    mov         eax,dword ptr [eax+50]
 00514AB0    push        eax
 00514AB1    call        user32.SendMessageW
 00514AB6    lea         edx,[ebp-0B0]
 00514ABC    mov         eax,dword ptr [ebx]
 00514ABE    call        00513A00
 00514AC3    lea         eax,[ebp-0B0]
 00514AC9    call        RectHeight
 00514ACE    push        eax
 00514ACF    lea         eax,[ebp-20]
 00514AD2    push        eax
 00514AD3    lea         edx,[ebp-0A0]
 00514AD9    mov         eax,dword ptr [ebx]
 00514ADB    call        00513A00
 00514AE0    lea         eax,[ebp-0A0]
 00514AE6    call        RectWidth
 00514AEB    mov         ecx,eax
 00514AED    xor         edx,edx
 00514AEF    xor         eax,eax
 00514AF1    call        Rect
 00514AF6    push        5
 00514AF8    push        0
 00514AFA    lea         eax,[ebp-20]
 00514AFD    push        eax
 00514AFE    mov         eax,dword ptr [ebx]
 00514B00    mov         eax,dword ptr [eax+50]
 00514B03    push        eax
 00514B04    call        user32.RedrawWindow
 00514B09    mov         eax,dword ptr [ebx]
 00514B0B    xor         edx,edx
 00514B0D    call        00513EF0
 00514B12    mov         eax,dword ptr [ebx]
 00514B14    mov         edx,4
 00514B19    call        00512E98
>00514B1E    jmp         00514D30
 00514B23    lea         edx,[ebp-0C0]
 00514B29    mov         eax,dword ptr [ebx]
 00514B2B    call        00513BC8
 00514B30    lea         eax,[ebp-0C0]
 00514B36    lea         edx,[ebp-8]
 00514B39    call        TRect.Contains
 00514B3E    test        al,al
>00514B40    je          00514B73
 00514B42    mov         eax,dword ptr [ebx]
 00514B44    mov         byte ptr [eax+48],1C
 00514B48    lea         edx,[ebp-130]
 00514B4E    mov         eax,dword ptr [ebx]
 00514B50    call        00513BC8
 00514B55    mov         eax,dword ptr [ebx]
 00514B57    mov         eax,dword ptr [eax+2C]
 00514B5A    sub         eax,dword ptr [ebp-12C]
 00514B60    mov         edx,dword ptr [ebx]
 00514B62    mov         dword ptr [edx+38],eax
 00514B65    mov         eax,dword ptr [ebx]
 00514B67    xor         edx,edx
 00514B69    call        00513EF0
>00514B6E    jmp         00514D30
 00514B73    lea         edx,[ebp-0D0]
 00514B79    mov         eax,dword ptr [ebx]
 00514B7B    call        00513AA8
 00514B80    lea         eax,[ebp-0D0]
 00514B86    lea         edx,[ebp-8]
 00514B89    call        TRect.Contains
 00514B8E    test        al,al
>00514B90    je          00514C54
 00514B96    mov         eax,dword ptr [ebx]
 00514B98    mov         byte ptr [eax+65],1
 00514B9C    mov         eax,dword ptr [ebx]
 00514B9E    mov         byte ptr [eax+4A],8
 00514BA2    mov         eax,dword ptr [ebx]
 00514BA4    xor         edx,edx
 00514BA6    call        00513EF0
 00514BAB    push        0
 00514BAD    push        0
 00514BAF    push        0B
 00514BB1    mov         eax,dword ptr [ebx]
 00514BB3    mov         eax,dword ptr [eax+50]
 00514BB6    push        eax
 00514BB7    call        user32.SendMessageW
 00514BBC    push        0
 00514BBE    push        0
 00514BC0    push        0
 00514BC2    push        18E
 00514BC7    mov         eax,dword ptr [ebx]
 00514BC9    mov         esi,dword ptr [eax+50]
 00514BCC    push        esi
 00514BCD    call        user32.SendMessageW
 00514BD2    inc         eax
 00514BD3    push        eax
 00514BD4    push        197
 00514BD9    push        esi
 00514BDA    call        user32.SendMessageW
 00514BDF    push        0
 00514BE1    push        1
 00514BE3    push        0B
 00514BE5    mov         eax,dword ptr [ebx]
 00514BE7    mov         eax,dword ptr [eax+50]
 00514BEA    push        eax
 00514BEB    call        user32.SendMessageW
 00514BF0    lea         edx,[ebp-0F0]
 00514BF6    mov         eax,dword ptr [ebx]
 00514BF8    call        00513A00
 00514BFD    lea         eax,[ebp-0F0]
 00514C03    call        RectHeight
 00514C08    push        eax
 00514C09    lea         eax,[ebp-20]
 00514C0C    push        eax
 00514C0D    lea         edx,[ebp-0E0]
 00514C13    mov         eax,dword ptr [ebx]
 00514C15    call        00513A00
 00514C1A    lea         eax,[ebp-0E0]
 00514C20    call        RectWidth
 00514C25    mov         ecx,eax
 00514C27    xor         edx,edx
 00514C29    xor         eax,eax
 00514C2B    call        Rect
 00514C30    push        5
 00514C32    push        0
 00514C34    lea         eax,[ebp-20]
 00514C37    push        eax
 00514C38    mov         eax,dword ptr [ebx]
 00514C3A    mov         eax,dword ptr [eax+50]
 00514C3D    push        eax
 00514C3E    call        user32.RedrawWindow
 00514C43    mov         eax,dword ptr [ebx]
 00514C45    mov         edx,2
 00514C4A    call        00512E98
>00514C4F    jmp         00514D30
 00514C54    lea         edx,[ebp-100]
 00514C5A    mov         eax,dword ptr [ebx]
 00514C5C    call        00513AF8
 00514C61    lea         eax,[ebp-100]
 00514C67    lea         edx,[ebp-8]
 00514C6A    call        TRect.Contains
 00514C6F    test        al,al
>00514C71    je          00514D30
 00514C77    mov         eax,dword ptr [ebx]
 00514C79    mov         byte ptr [eax+64],1
 00514C7D    mov         eax,dword ptr [ebx]
 00514C7F    mov         byte ptr [eax+49],4
 00514C83    mov         eax,dword ptr [ebx]
 00514C85    xor         edx,edx
 00514C87    call        00513EF0
 00514C8C    push        0
 00514C8E    push        0
 00514C90    push        0B
 00514C92    mov         eax,dword ptr [ebx]
 00514C94    mov         eax,dword ptr [eax+50]
 00514C97    push        eax
 00514C98    call        user32.SendMessageW
 00514C9D    push        0
 00514C9F    push        0
 00514CA1    push        0
 00514CA3    push        18E
 00514CA8    mov         eax,dword ptr [ebx]
 00514CAA    mov         esi,dword ptr [eax+50]
 00514CAD    push        esi
 00514CAE    call        user32.SendMessageW
 00514CB3    dec         eax
 00514CB4    push        eax
 00514CB5    push        197
 00514CBA    push        esi
 00514CBB    call        user32.SendMessageW
 00514CC0    push        0
 00514CC2    push        1
 00514CC4    push        0B
 00514CC6    mov         eax,dword ptr [ebx]
 00514CC8    mov         eax,dword ptr [eax+50]
 00514CCB    push        eax
 00514CCC    call        user32.SendMessageW
 00514CD1    lea         edx,[ebp-120]
 00514CD7    mov         eax,dword ptr [ebx]
 00514CD9    call        00513A00
 00514CDE    lea         eax,[ebp-120]
 00514CE4    call        RectHeight
 00514CE9    push        eax
 00514CEA    lea         eax,[ebp-20]
 00514CED    push        eax
 00514CEE    lea         edx,[ebp-110]
 00514CF4    mov         eax,dword ptr [ebx]
 00514CF6    call        00513A00
 00514CFB    lea         eax,[ebp-110]
 00514D01    call        RectWidth
 00514D06    mov         ecx,eax
 00514D08    xor         edx,edx
 00514D0A    xor         eax,eax
 00514D0C    call        Rect
 00514D11    push        5
 00514D13    push        0
 00514D15    lea         eax,[ebp-20]
 00514D18    push        eax
 00514D19    mov         eax,dword ptr [ebx]
 00514D1B    mov         eax,dword ptr [eax+50]
 00514D1E    push        eax
 00514D1F    call        user32.RedrawWindow
 00514D24    mov         eax,dword ptr [ebx]
 00514D26    mov         edx,1
 00514D2B    call        00512E98
 00514D30    mov         eax,dword ptr [ebp+8]
 00514D33    mov         byte ptr [eax-5],1
>00514D37    jmp         00514D6C
 00514D39    mov         eax,dword ptr [ebx]
 00514D3B    cmp         byte ptr [eax+48],1A
>00514D3F    jne         00514D51
 00514D41    mov         eax,dword ptr [ebx]
 00514D43    cmp         byte ptr [eax+49],2
>00514D47    jne         00514D51
 00514D49    mov         eax,dword ptr [ebx]
 00514D4B    cmp         byte ptr [eax+4A],6
>00514D4F    je          00514D6C
 00514D51    mov         eax,dword ptr [ebx]
 00514D53    mov         byte ptr [eax+48],2
 00514D57    mov         eax,dword ptr [ebx]
 00514D59    mov         byte ptr [eax+49],2
 00514D5D    mov         eax,dword ptr [ebx]
 00514D5F    mov         byte ptr [eax+4A],6
 00514D63    mov         eax,dword ptr [ebx]
 00514D65    xor         edx,edx
 00514D67    call        00513EF0
 00514D6C    push        0
 00514D6E    push        0
 00514D70    push        18E
 00514D75    mov         eax,dword ptr [ebx]
 00514D77    mov         eax,dword ptr [eax+50]
 00514D7A    push        eax
 00514D7B    call        user32.SendMessageW
 00514D80    mov         edx,dword ptr [ebx]
 00514D82    mov         dword ptr [edx+3C],eax
 00514D85    pop         esi
 00514D86    pop         ebx
 00514D87    mov         esp,ebp
 00514D89    pop         ebp
 00514D8A    ret
end;*}

//00514D8C
{*procedure sub_00514D8C(?:?; ?:?);
begin
 00514D8C    push        ebp
 00514D8D    mov         ebp,esp
 00514D8F    add         esp,0FFFFFEB8
 00514D95    push        ebx
 00514D96    push        esi
 00514D97    push        edi
 00514D98    mov         ebx,dword ptr [ebp+8]
 00514D9B    add         ebx,0FFFFFFFC
 00514D9E    movsx       edx,word ptr [eax+8]
 00514DA2    movsx       eax,word ptr [eax+0A]
 00514DA6    mov         dword ptr [ebp-10],edx
 00514DA9    mov         dword ptr [ebp-0C],eax
 00514DAC    mov         eax,dword ptr [ebp-10]
 00514DAF    mov         dword ptr [ebp-8],eax
 00514DB2    mov         eax,dword ptr [ebp-0C]
 00514DB5    mov         dword ptr [ebp-4],eax
 00514DB8    mov         eax,dword ptr [ebx]
 00514DBA    mov         eax,dword ptr [eax+8]
 00514DBD    cmp         byte ptr [eax+71],1
>00514DC1    jne         00514DC6
 00514DC3    neg         dword ptr [ebp-8]
 00514DC6    mov         eax,dword ptr [ebx]
 00514DC8    mov         edx,dword ptr [ebp-8]
 00514DCB    mov         dword ptr [eax+30],edx
 00514DCE    mov         edx,dword ptr [ebp-4]
 00514DD1    mov         dword ptr [eax+34],edx
 00514DD4    mov         eax,dword ptr [ebx]
 00514DD6    cmp         byte ptr [eax+48],1C
>00514DDA    jne         00514F61
 00514DE0    push        0
 00514DE2    push        0
 00514DE4    push        18E
 00514DE9    mov         eax,dword ptr [ebx]
 00514DEB    mov         eax,dword ptr [eax+50]
 00514DEE    push        eax
 00514DEF    call        user32.SendMessageW
 00514DF4    mov         edi,eax
 00514DF6    lea         edx,[ebp-30]
 00514DF9    mov         eax,dword ptr [ebx]
 00514DFB    call        00513A18
 00514E00    lea         eax,[ebp-30]
 00514E03    call        RectHeight
 00514E08    mov         esi,eax
 00514E0A    lea         edx,[ebp-40]
 00514E0D    mov         eax,dword ptr [ebx]
 00514E0F    call        00513AF8
 00514E14    lea         eax,[ebp-40]
 00514E17    call        RectHeight
 00514E1C    sub         esi,eax
 00514E1E    lea         edx,[ebp-50]
 00514E21    mov         eax,dword ptr [ebx]
 00514E23    call        00513AA8
 00514E28    lea         eax,[ebp-50]
 00514E2B    call        RectHeight
 00514E30    sub         esi,eax
 00514E32    lea         edx,[ebp-60]
 00514E35    mov         eax,dword ptr [ebx]
 00514E37    call        00513BC8
 00514E3C    lea         eax,[ebp-60]
 00514E3F    call        RectHeight
 00514E44    sub         esi,eax
 00514E46    test        esi,esi
>00514E48    jle         00514F55
 00514E4E    lea         edx,[ebp-140]
 00514E54    mov         eax,dword ptr [ebx]
 00514E56    call        00513AF8
 00514E5B    mov         eax,dword ptr [ebx]
 00514E5D    mov         eax,dword ptr [eax+34]
 00514E60    mov         edx,dword ptr [ebx]
 00514E62    sub         eax,dword ptr [edx+38]
 00514E65    sub         eax,dword ptr [ebp-134]
 00514E6B    mov         dword ptr [ebp-144],eax
 00514E71    fild        dword ptr [ebp-144]
 00514E77    mov         dword ptr [ebp-148],esi
 00514E7D    fild        dword ptr [ebp-148]
 00514E83    fdivp       st(1),st
 00514E85    mov         eax,dword ptr [ebx]
 00514E87    fild        dword ptr [eax+40]
 00514E8A    fmulp       st(1),st
 00514E8C    call        @ROUND
 00514E91    mov         esi,eax
 00514E93    cmp         edi,esi
>00514E95    je          00514F55
 00514E9B    test        esi,esi
>00514E9D    jge         00514EA1
 00514E9F    xor         esi,esi
 00514EA1    push        0
 00514EA3    push        0
 00514EA5    push        18B
 00514EAA    mov         eax,dword ptr [ebx]
 00514EAC    mov         eax,dword ptr [eax+50]
 00514EAF    push        eax
 00514EB0    call        user32.SendMessageW
 00514EB5    cmp         esi,eax
>00514EB7    jl          00514ED0
 00514EB9    push        0
 00514EBB    push        0
 00514EBD    push        18B
 00514EC2    mov         eax,dword ptr [ebx]
 00514EC4    mov         eax,dword ptr [eax+50]
 00514EC7    push        eax
 00514EC8    call        user32.SendMessageW
 00514ECD    mov         esi,eax
 00514ECF    dec         esi
 00514ED0    push        0
 00514ED2    push        0
 00514ED4    push        0B
 00514ED6    mov         eax,dword ptr [ebx]
 00514ED8    mov         eax,dword ptr [eax+50]
 00514EDB    push        eax
 00514EDC    call        user32.SendMessageW
 00514EE1    push        0
 00514EE3    push        esi
 00514EE4    push        197
 00514EE9    mov         eax,dword ptr [ebx]
 00514EEB    mov         eax,dword ptr [eax+50]
 00514EEE    push        eax
 00514EEF    call        user32.SendMessageW
 00514EF4    push        0
 00514EF6    push        1
 00514EF8    push        0B
 00514EFA    mov         eax,dword ptr [ebx]
 00514EFC    mov         eax,dword ptr [eax+50]
 00514EFF    push        eax
 00514F00    call        user32.SendMessageW
 00514F05    lea         edx,[ebp-80]
 00514F08    mov         eax,dword ptr [ebx]
 00514F0A    call        00513A00
 00514F0F    lea         eax,[ebp-80]
 00514F12    call        RectHeight
 00514F17    push        eax
 00514F18    lea         eax,[ebp-20]
 00514F1B    push        eax
 00514F1C    lea         edx,[ebp-70]
 00514F1F    mov         eax,dword ptr [ebx]
 00514F21    call        00513A00
 00514F26    lea         eax,[ebp-70]
 00514F29    call        RectWidth
 00514F2E    mov         ecx,eax
 00514F30    xor         edx,edx
 00514F32    xor         eax,eax
 00514F34    call        Rect
 00514F39    push        5
 00514F3B    push        0
 00514F3D    lea         eax,[ebp-20]
 00514F40    push        eax
 00514F41    mov         eax,dword ptr [ebx]
 00514F43    mov         eax,dword ptr [eax+50]
 00514F46    push        eax
 00514F47    call        user32.RedrawWindow
 00514F4C    mov         eax,dword ptr [ebx]
 00514F4E    xor         edx,edx
 00514F50    call        00513EF0
 00514F55    mov         eax,dword ptr [ebp+8]
 00514F58    mov         byte ptr [eax-5],1
>00514F5C    jmp         00515258
 00514F61    mov         eax,dword ptr [ebx]
 00514F63    cmp         byte ptr [eax+64],0
>00514F67    je          00514FAB
 00514F69    lea         edx,[ebp-90]
 00514F6F    mov         eax,dword ptr [ebx]
 00514F71    call        00513AF8
 00514F76    lea         eax,[ebp-90]
 00514F7C    lea         edx,[ebp-8]
 00514F7F    call        TRect.Contains
 00514F84    test        al,al
>00514F86    jne         00514FAB
 00514F88    mov         eax,dword ptr [ebx]
 00514F8A    cmp         byte ptr [eax+49],4
>00514F8E    jne         00514FAB
 00514F90    mov         eax,dword ptr [ebx]
 00514F92    mov         byte ptr [eax+49],2
 00514F96    mov         eax,dword ptr [ebx]
 00514F98    xor         edx,edx
 00514F9A    call        00513EF0
 00514F9F    mov         eax,dword ptr [ebx]
 00514FA1    call        00512EDC
>00514FA6    jmp         00515258
 00514FAB    mov         eax,dword ptr [ebx]
 00514FAD    cmp         byte ptr [eax+64],0
>00514FB1    je          00514FFA
 00514FB3    lea         edx,[ebp-0A0]
 00514FB9    mov         eax,dword ptr [ebx]
 00514FBB    call        00513AF8
 00514FC0    lea         eax,[ebp-0A0]
 00514FC6    lea         edx,[ebp-8]
 00514FC9    call        TRect.Contains
 00514FCE    test        al,al
>00514FD0    je          00514FFA
 00514FD2    mov         eax,dword ptr [ebx]
 00514FD4    cmp         byte ptr [eax+49],2
>00514FD8    jne         00514FFA
 00514FDA    mov         eax,dword ptr [ebx]
 00514FDC    mov         byte ptr [eax+49],4
 00514FE0    mov         eax,dword ptr [ebx]
 00514FE2    xor         edx,edx
 00514FE4    call        00513EF0
 00514FE9    mov         eax,dword ptr [ebx]
 00514FEB    mov         edx,5
 00514FF0    call        00512E98
>00514FF5    jmp         00515258
 00514FFA    mov         eax,dword ptr [ebx]
 00514FFC    cmp         byte ptr [eax+65],0
>00515000    je          00515044
 00515002    lea         edx,[ebp-0B0]
 00515008    mov         eax,dword ptr [ebx]
 0051500A    call        00513AA8
 0051500F    lea         eax,[ebp-0B0]
 00515015    lea         edx,[ebp-8]
 00515018    call        TRect.Contains
 0051501D    test        al,al
>0051501F    jne         00515044
 00515021    mov         eax,dword ptr [ebx]
 00515023    cmp         byte ptr [eax+4A],8
>00515027    jne         00515044
 00515029    mov         eax,dword ptr [ebx]
 0051502B    mov         byte ptr [eax+4A],6
 0051502F    mov         eax,dword ptr [ebx]
 00515031    xor         edx,edx
 00515033    call        00513EF0
 00515038    mov         eax,dword ptr [ebx]
 0051503A    call        00512EDC
>0051503F    jmp         00515258
 00515044    mov         eax,dword ptr [ebx]
 00515046    cmp         byte ptr [eax+65],0
>0051504A    je          00515093
 0051504C    lea         edx,[ebp-0C0]
 00515052    mov         eax,dword ptr [ebx]
 00515054    call        00513AA8
 00515059    lea         eax,[ebp-0C0]
 0051505F    lea         edx,[ebp-8]
 00515062    call        TRect.Contains
 00515067    test        al,al
>00515069    je          00515093
 0051506B    mov         eax,dword ptr [ebx]
 0051506D    cmp         byte ptr [eax+4A],6
>00515071    jne         00515093
 00515073    mov         eax,dword ptr [ebx]
 00515075    mov         byte ptr [eax+4A],8
 00515079    mov         eax,dword ptr [ebx]
 0051507B    xor         edx,edx
 0051507D    call        00513EF0
 00515082    mov         eax,dword ptr [ebx]
 00515084    mov         edx,6
 00515089    call        00512E98
>0051508E    jmp         00515258
 00515093    lea         edx,[ebp-0D0]
 00515099    mov         eax,dword ptr [ebx]
 0051509B    call        00513B48
 005150A0    lea         eax,[ebp-0D0]
 005150A6    lea         edx,[ebp-8]
 005150A9    call        TRect.Contains
 005150AE    test        al,al
>005150B0    je          00515216
 005150B6    lea         edx,[ebp-0E0]
 005150BC    mov         eax,dword ptr [ebx]
 005150BE    call        00513BC8
 005150C3    lea         eax,[ebp-0E0]
 005150C9    lea         edx,[ebp-8]
 005150CC    call        TRect.Contains
 005150D1    test        al,al
>005150D3    je          005150F1
 005150D5    mov         eax,dword ptr [ebx]
 005150D7    cmp         byte ptr [eax+48],1A
>005150DB    jne         005150F1
 005150DD    mov         eax,dword ptr [ebx]
 005150DF    mov         byte ptr [eax+48],1B
 005150E3    mov         eax,dword ptr [ebx]
 005150E5    xor         edx,edx
 005150E7    call        00513EF0
>005150EC    jmp         0051520D
 005150F1    lea         edx,[ebp-0F0]
 005150F7    mov         eax,dword ptr [ebx]
 005150F9    call        00513BC8
 005150FE    lea         eax,[ebp-0F0]
 00515104    lea         edx,[ebp-8]
 00515107    call        TRect.Contains
 0051510C    test        al,al
>0051510E    jne         0051512C
 00515110    mov         eax,dword ptr [ebx]
 00515112    cmp         byte ptr [eax+48],1B
>00515116    jne         0051512C
 00515118    mov         eax,dword ptr [ebx]
 0051511A    mov         byte ptr [eax+48],1A
 0051511E    mov         eax,dword ptr [ebx]
 00515120    xor         edx,edx
 00515122    call        00513EF0
>00515127    jmp         0051520D
 0051512C    lea         edx,[ebp-100]
 00515132    mov         eax,dword ptr [ebx]
 00515134    call        00513AF8
 00515139    lea         eax,[ebp-100]
 0051513F    lea         edx,[ebp-8]
 00515142    call        TRect.Contains
 00515147    test        al,al
>00515149    je          00515167
 0051514B    mov         eax,dword ptr [ebx]
 0051514D    cmp         byte ptr [eax+49],2
>00515151    jne         00515167
 00515153    mov         eax,dword ptr [ebx]
 00515155    mov         byte ptr [eax+49],3
 00515159    mov         eax,dword ptr [ebx]
 0051515B    xor         edx,edx
 0051515D    call        00513EF0
>00515162    jmp         0051520D
 00515167    lea         edx,[ebp-110]
 0051516D    mov         eax,dword ptr [ebx]
 0051516F    call        00513AF8
 00515174    lea         eax,[ebp-110]
 0051517A    lea         edx,[ebp-8]
 0051517D    call        TRect.Contains
 00515182    test        al,al
>00515184    jne         0051519F
 00515186    mov         eax,dword ptr [ebx]
 00515188    cmp         byte ptr [eax+49],3
>0051518C    jne         0051519F
 0051518E    mov         eax,dword ptr [ebx]
 00515190    mov         byte ptr [eax+49],2
 00515194    mov         eax,dword ptr [ebx]
 00515196    xor         edx,edx
 00515198    call        00513EF0
>0051519D    jmp         0051520D
 0051519F    lea         edx,[ebp-120]
 005151A5    mov         eax,dword ptr [ebx]
 005151A7    call        00513AA8
 005151AC    lea         eax,[ebp-120]
 005151B2    lea         edx,[ebp-8]
 005151B5    call        TRect.Contains
 005151BA    test        al,al
>005151BC    je          005151D7
 005151BE    mov         eax,dword ptr [ebx]
 005151C0    cmp         byte ptr [eax+4A],6
>005151C4    jne         005151D7
 005151C6    mov         eax,dword ptr [ebx]
 005151C8    mov         byte ptr [eax+4A],7
 005151CC    mov         eax,dword ptr [ebx]
 005151CE    xor         edx,edx
 005151D0    call        00513EF0
>005151D5    jmp         0051520D
 005151D7    lea         edx,[ebp-130]
 005151DD    mov         eax,dword ptr [ebx]
 005151DF    call        00513AA8
 005151E4    lea         eax,[ebp-130]
 005151EA    lea         edx,[ebp-8]
 005151ED    call        TRect.Contains
 005151F2    test        al,al
>005151F4    jne         0051520D
 005151F6    mov         eax,dword ptr [ebx]
 005151F8    cmp         byte ptr [eax+4A],7
>005151FC    jne         0051520D
 005151FE    mov         eax,dword ptr [ebx]
 00515200    mov         byte ptr [eax+4A],6
 00515204    mov         eax,dword ptr [ebx]
 00515206    xor         edx,edx
 00515208    call        00513EF0
 0051520D    mov         eax,dword ptr [ebp+8]
 00515210    mov         byte ptr [eax-5],1
>00515214    jmp         00515258
 00515216    mov         eax,dword ptr [ebx]
 00515218    cmp         byte ptr [eax+48],1A
>0051521C    jne         0051522E
 0051521E    mov         eax,dword ptr [ebx]
 00515220    cmp         byte ptr [eax+49],2
>00515224    jne         0051522E
 00515226    mov         eax,dword ptr [ebx]
 00515228    cmp         byte ptr [eax+49],6
>0051522C    je          00515258
 0051522E    mov         eax,dword ptr [ebx]
 00515230    cmp         dword ptr [eax+60],0
>00515234    je          0051523D
 00515236    mov         eax,dword ptr [ebx]
 00515238    call        00512EDC
 0051523D    mov         eax,dword ptr [ebx]
 0051523F    mov         byte ptr [eax+48],1A
 00515243    mov         eax,dword ptr [ebx]
 00515245    mov         byte ptr [eax+49],2
 00515249    mov         eax,dword ptr [ebx]
 0051524B    mov         byte ptr [eax+4A],6
 0051524F    mov         eax,dword ptr [ebx]
 00515251    xor         edx,edx
 00515253    call        00513EF0
 00515258    pop         edi
 00515259    pop         esi
 0051525A    pop         ebx
 0051525B    mov         esp,ebp
 0051525D    pop         ebp
 0051525E    ret
end;*}

//00515260
{*procedure sub_00515260(?:?; ?:?);
begin
 00515260    push        ebp
 00515261    mov         ebp,esp
 00515263    add         esp,0FFFFFFA0
 00515266    push        ebx
 00515267    mov         ebx,dword ptr [ebp+8]
 0051526A    add         ebx,0FFFFFFFC
 0051526D    mov         edx,dword ptr [ebx]
 0051526F    mov         byte ptr [edx+64],0
 00515273    mov         edx,dword ptr [ebx]
 00515275    mov         byte ptr [edx+65],0
 00515279    mov         edx,dword ptr [ebx]
 0051527B    mov         byte ptr [edx+66],0
 0051527F    mov         edx,dword ptr [ebx]
 00515281    mov         byte ptr [edx+67],0
 00515285    movsx       edx,word ptr [eax+8]
 00515289    movsx       eax,word ptr [eax+0A]
 0051528D    mov         dword ptr [ebp-10],edx
 00515290    mov         dword ptr [ebp-0C],eax
 00515293    mov         eax,dword ptr [ebp-10]
 00515296    mov         dword ptr [ebp-8],eax
 00515299    mov         eax,dword ptr [ebp-0C]
 0051529C    mov         dword ptr [ebp-4],eax
 0051529F    mov         eax,dword ptr [ebx]
 005152A1    mov         eax,dword ptr [eax+8]
 005152A4    cmp         byte ptr [eax+71],1
>005152A8    jne         005152AD
 005152AA    neg         dword ptr [ebp-8]
 005152AD    mov         eax,dword ptr [ebx]
 005152AF    call        00512F90
 005152B4    cmp         al,1
>005152B6    jne         005152D8
 005152B8    lea         edx,[ebp-20]
 005152BB    mov         eax,dword ptr [ebx]
 005152BD    call        00513B48
 005152C2    lea         eax,[ebp-20]
 005152C5    mov         edx,dword ptr [ebx]
 005152C7    add         edx,28
 005152CA    call        TRect.Contains
 005152CF    test        al,al
>005152D1    je          005152D8
 005152D3    call        user32.ReleaseCapture
 005152D8    lea         edx,[ebp-30]
 005152DB    mov         eax,dword ptr [ebx]
 005152DD    call        00513BC8
 005152E2    lea         eax,[ebp-30]
 005152E5    lea         edx,[ebp-8]
 005152E8    call        TRect.Contains
 005152ED    test        al,al
>005152EF    je          005152F9
 005152F1    mov         eax,dword ptr [ebx]
 005152F3    mov         byte ptr [eax+48],1B
>005152F7    jmp         005152FF
 005152F9    mov         eax,dword ptr [ebx]
 005152FB    mov         byte ptr [eax+48],1A
 005152FF    lea         edx,[ebp-40]
 00515302    mov         eax,dword ptr [ebx]
 00515304    call        00513AF8
 00515309    lea         eax,[ebp-40]
 0051530C    lea         edx,[ebp-8]
 0051530F    call        TRect.Contains
 00515314    test        al,al
>00515316    je          00515320
 00515318    mov         eax,dword ptr [ebx]
 0051531A    mov         byte ptr [eax+49],3
>0051531E    jmp         00515326
 00515320    mov         eax,dword ptr [ebx]
 00515322    mov         byte ptr [eax+49],2
 00515326    lea         edx,[ebp-50]
 00515329    mov         eax,dword ptr [ebx]
 0051532B    call        00513AA8
 00515330    lea         eax,[ebp-50]
 00515333    lea         edx,[ebp-8]
 00515336    call        TRect.Contains
 0051533B    test        al,al
>0051533D    je          00515347
 0051533F    mov         eax,dword ptr [ebx]
 00515341    mov         byte ptr [eax+4A],7
>00515345    jmp         0051534D
 00515347    mov         eax,dword ptr [ebx]
 00515349    mov         byte ptr [eax+4A],6
 0051534D    mov         eax,dword ptr [ebx]
 0051534F    xor         edx,edx
 00515351    call        00513EF0
 00515356    mov         eax,dword ptr [ebx]
 00515358    cmp         dword ptr [eax+60],0
>0051535C    je          00515365
 0051535E    mov         eax,dword ptr [ebx]
 00515360    call        00512EDC
 00515365    lea         edx,[ebp-60]
 00515368    mov         eax,dword ptr [ebx]
 0051536A    call        00513B48
 0051536F    lea         eax,[ebp-60]
 00515372    lea         edx,[ebp-8]
 00515375    call        TRect.Contains
 0051537A    mov         edx,dword ptr [ebp+8]
 0051537D    mov         byte ptr [edx-5],al
 00515380    pop         ebx
 00515381    mov         esp,ebp
 00515383    pop         ebp
 00515384    ret
end;*}

//00515388
{*procedure sub_00515388(?:?; ?:?);
begin
 00515388    push        ebp
 00515389    mov         ebp,esp
 0051538B    add         esp,0FFFFFFF0
 0051538E    push        ebx
 0051538F    mov         ebx,eax
 00515391    mov         eax,dword ptr [ebp+8]
 00515394    mov         eax,dword ptr [eax-4]
 00515397    call        00512F90
 0051539C    cmp         al,1
>0051539E    je          005153AF
 005153A0    mov         eax,dword ptr [ebp+8]
 005153A3    mov         eax,dword ptr [eax-4]
 005153A6    mov         eax,dword ptr [eax+50]
 005153A9    push        eax
 005153AA    call        user32.SetCapture
 005153AF    movsx       eax,word ptr [ebx+8]
 005153B3    movsx       edx,word ptr [ebx+0A]
 005153B7    mov         dword ptr [ebp-10],eax
 005153BA    mov         dword ptr [ebp-0C],edx
 005153BD    mov         eax,dword ptr [ebp-10]
 005153C0    mov         dword ptr [ebp-8],eax
 005153C3    mov         eax,dword ptr [ebp-0C]
 005153C6    mov         dword ptr [ebp-4],eax
 005153C9    lea         eax,[ebp-8]
 005153CC    push        eax
 005153CD    mov         eax,dword ptr [ebp+8]
 005153D0    mov         eax,dword ptr [eax-4]
 005153D3    mov         eax,dword ptr [eax+50]
 005153D6    push        eax
 005153D7    call        user32.ScreenToClient
 005153DC    movzx       eax,word ptr [ebp-8]
 005153E0    mov         word ptr [ebx+8],ax
 005153E4    movzx       eax,word ptr [ebp-4]
 005153E8    mov         word ptr [ebx+0A],ax
 005153EC    mov         eax,dword ptr [ebp+8]
 005153EF    push        eax
 005153F0    mov         eax,ebx
 005153F2    call        0051487C
 005153F7    pop         ecx
 005153F8    mov         eax,dword ptr [ebp+8]
 005153FB    mov         byte ptr [eax-5],1
 005153FF    pop         ebx
 00515400    mov         esp,ebp
 00515402    pop         ebp
 00515403    ret
end;*}

//00515404
{*procedure sub_00515404(?:?; ?:?);
begin
 00515404    push        ebp
 00515405    mov         ebp,esp
 00515407    add         esp,0FFFFFFE4
 0051540A    mov         dword ptr [ebp-4],eax
 0051540D    mov         eax,dword ptr [ebp-4]
 00515410    mov         eax,dword ptr [eax+8]
 00515413    push        eax
 00515414    mov         eax,dword ptr [ebp-4]
 00515417    mov         eax,dword ptr [eax+4]
 0051541A    push        eax
 0051541B    mov         eax,dword ptr [ebp-4]
 0051541E    mov         eax,dword ptr [eax]
 00515420    push        eax
 00515421    mov         eax,dword ptr [ebp+8]
 00515424    mov         eax,dword ptr [eax-4]
 00515427    mov         eax,dword ptr [eax+50]
 0051542A    push        eax
 0051542B    mov         eax,dword ptr [ebp+8]
 0051542E    mov         eax,dword ptr [eax-4]
 00515431    mov         eax,dword ptr [eax+5C]
 00515434    push        eax
 00515435    call        user32.CallWindowProcW
 0051543A    mov         edx,dword ptr [ebp-4]
 0051543D    mov         dword ptr [edx+0C],eax
 00515440    mov         eax,dword ptr [ebp-4]
 00515443    mov         eax,dword ptr [eax+8]
 00515446    and         eax,2
 00515449    cmp         eax,2
>0051544C    jne         0051554E
 00515452    mov         eax,dword ptr [ebp-4]
 00515455    cmp         dword ptr [eax+4],0
>00515459    jbe         0051554E
 0051545F    xor         eax,eax
 00515461    mov         dword ptr [ebp-8],eax
 00515464    mov         dl,1
 00515466    mov         eax,[004BF670];TCanvas
 0051546B    call        TCanvas.Create;TCanvas.Create
 00515470    mov         dword ptr [ebp-0C],eax
 00515473    xor         eax,eax
 00515475    push        ebp
 00515476    push        515536
 0051547B    push        dword ptr fs:[eax]
 0051547E    mov         dword ptr fs:[eax],esp
 00515481    mov         eax,dword ptr [ebp-4]
 00515484    mov         eax,dword ptr [eax+4]
 00515487    push        eax
 00515488    call        gdi32.SaveDC
 0051548D    mov         dword ptr [ebp-8],eax
 00515490    mov         edx,dword ptr [ebp-4]
 00515493    mov         edx,dword ptr [edx+4]
 00515496    mov         eax,dword ptr [ebp-0C]
 00515499    call        TCanvas.SetHandle
 0051549E    lea         eax,[ebp-1C]
 005154A1    push        eax
 005154A2    mov         eax,dword ptr [ebp+8]
 005154A5    mov         eax,dword ptr [eax-4]
 005154A8    mov         eax,dword ptr [eax+50]
 005154AB    push        eax
 005154AC    call        user32.GetWindowRect
 005154B1    mov         ecx,dword ptr [ebp-18]
 005154B4    neg         ecx
 005154B6    mov         edx,dword ptr [ebp-1C]
 005154B9    neg         edx
 005154BB    lea         eax,[ebp-1C]
 005154BE    call        OffsetRect
 005154C3    mov         eax,dword ptr [ebp-10]
 005154C6    sub         eax,2
 005154C9    push        eax
 005154CA    mov         eax,dword ptr [ebp-14]
 005154CD    sub         eax,2
 005154D0    push        eax
 005154D1    mov         eax,dword ptr [ebp-18]
 005154D4    add         eax,2
 005154D7    push        eax
 005154D8    mov         eax,dword ptr [ebp-1C]
 005154DB    add         eax,2;TRect.Left:LongInt
 005154DE    push        eax
 005154DF    mov         eax,dword ptr [ebp-0C]
 005154E2    call        TCanvas.GetHandle
 005154E7    push        eax
 005154E8    call        gdi32.ExcludeClipRect
 005154ED    lea         ecx,[ebp-1C]
 005154F0    mov         eax,dword ptr [ebp+8]
 005154F3    mov         eax,dword ptr [eax-4]
 005154F6    mov         edx,dword ptr [ebp-0C]
 005154F9    call        00513EC4
 005154FE    xor         eax,eax
 00515500    pop         edx
 00515501    pop         ecx
 00515502    pop         ecx
 00515503    mov         dword ptr fs:[eax],edx
 00515506    push        51553D
 0051550B    cmp         dword ptr [ebp-8],0
>0051550F    je          00515523
 00515511    mov         eax,dword ptr [ebp-8]
 00515514    push        eax
 00515515    mov         eax,dword ptr [ebp-0C]
 00515518    call        TCanvas.GetHandle
 0051551D    push        eax
 0051551E    call        gdi32.RestoreDC
 00515523    xor         edx,edx
 00515525    mov         eax,dword ptr [ebp-0C]
 00515528    call        TCanvas.SetHandle
 0051552D    mov         eax,dword ptr [ebp-0C]
 00515530    call        TObject.Free
 00515535    ret
>00515536    jmp         @HandleFinally
>0051553B    jmp         0051550B
 0051553D    mov         edx,dword ptr [ebp-4]
 00515540    mov         edx,dword ptr [edx+4]
 00515543    mov         eax,dword ptr [ebp+8]
 00515546    mov         eax,dword ptr [eax-4]
 00515549    call        00513EF0
 0051554E    mov         eax,dword ptr [ebp+8]
 00515551    mov         byte ptr [eax-5],1
 00515555    mov         esp,ebp
 00515557    pop         ebp
 00515558    ret
end;*}

//0051555C
{*procedure sub_0051555C(?:?);
begin
 0051555C    push        ebp
 0051555D    mov         ebp,esp
 0051555F    add         esp,0FFFFFF20
 00515565    push        ebx
 00515566    push        esi
 00515567    mov         esi,dword ptr [ebp+8]
 0051556A    add         esi,0FFFFFFFC
 0051556D    mov         eax,dword ptr [esi]
 0051556F    mov         eax,dword ptr [eax+60]
 00515572    cmp         eax,8
>00515575    ja          0051596D
 0051557B    jmp         dword ptr [eax*4+515582]
 0051557B    dd          0051596D
 0051557B    dd          005155A6
 0051557B    dd          005155B7
 0051557B    dd          005155C8
 0051557B    dd          005155D9
 0051557B    dd          005155EA
 0051557B    dd          00515684
 0051557B    dd          0051571E
 0051557B    dd          00515843
 005155A6    mov         eax,dword ptr [esi]
 005155A8    mov         edx,5
 005155AD    call        00512E98
>005155B2    jmp         0051596D
 005155B7    mov         eax,dword ptr [esi]
 005155B9    mov         edx,6
 005155BE    call        00512E98
>005155C3    jmp         0051596D
 005155C8    mov         eax,dword ptr [esi]
 005155CA    mov         edx,7
 005155CF    call        00512E98
>005155D4    jmp         0051596D
 005155D9    mov         eax,dword ptr [esi]
 005155DB    mov         edx,8
 005155E0    call        00512E98
>005155E5    jmp         0051596D
 005155EA    push        0
 005155EC    push        0
 005155EE    push        0B
 005155F0    mov         eax,dword ptr [esi]
 005155F2    mov         eax,dword ptr [eax+50]
 005155F5    push        eax
 005155F6    call        user32.SendMessageW
 005155FB    push        0
 005155FD    push        0
 005155FF    push        0
 00515601    push        18E
 00515606    mov         eax,dword ptr [esi]
 00515608    mov         ebx,dword ptr [eax+50]
 0051560B    push        ebx
 0051560C    call        user32.SendMessageW
 00515611    dec         eax
 00515612    push        eax
 00515613    push        197
 00515618    push        ebx
 00515619    call        user32.SendMessageW
 0051561E    push        0
 00515620    push        1
 00515622    push        0B
 00515624    mov         eax,dword ptr [esi]
 00515626    mov         eax,dword ptr [eax+50]
 00515629    push        eax
 0051562A    call        user32.SendMessageW
 0051562F    lea         edx,[ebp-30]
 00515632    mov         eax,dword ptr [esi]
 00515634    call        00513A00
 00515639    lea         eax,[ebp-30]
 0051563C    call        RectHeight
 00515641    push        eax
 00515642    lea         eax,[ebp-10]
 00515645    push        eax
 00515646    lea         edx,[ebp-20]
 00515649    mov         eax,dword ptr [esi]
 0051564B    call        00513A00
 00515650    lea         eax,[ebp-20]
 00515653    call        RectWidth
 00515658    mov         ecx,eax
 0051565A    xor         edx,edx
 0051565C    xor         eax,eax
 0051565E    call        Rect
 00515663    push        5
 00515665    push        0
 00515667    lea         eax,[ebp-10]
 0051566A    push        eax
 0051566B    mov         eax,dword ptr [esi]
 0051566D    mov         eax,dword ptr [eax+50]
 00515670    push        eax
 00515671    call        user32.RedrawWindow
 00515676    mov         eax,dword ptr [esi]
 00515678    xor         edx,edx
 0051567A    call        00513EF0
>0051567F    jmp         0051596D
 00515684    push        0
 00515686    push        0
 00515688    push        0B
 0051568A    mov         eax,dword ptr [esi]
 0051568C    mov         eax,dword ptr [eax+50]
 0051568F    push        eax
 00515690    call        user32.SendMessageW
 00515695    push        0
 00515697    push        0
 00515699    push        0
 0051569B    push        18E
 005156A0    mov         eax,dword ptr [esi]
 005156A2    mov         ebx,dword ptr [eax+50]
 005156A5    push        ebx
 005156A6    call        user32.SendMessageW
 005156AB    inc         eax
 005156AC    push        eax
 005156AD    push        197
 005156B2    push        ebx
 005156B3    call        user32.SendMessageW
 005156B8    push        0
 005156BA    push        1
 005156BC    push        0B
 005156BE    mov         eax,dword ptr [esi]
 005156C0    mov         eax,dword ptr [eax+50]
 005156C3    push        eax
 005156C4    call        user32.SendMessageW
 005156C9    lea         edx,[ebp-50]
 005156CC    mov         eax,dword ptr [esi]
 005156CE    call        00513A00
 005156D3    lea         eax,[ebp-50]
 005156D6    call        RectHeight
 005156DB    push        eax
 005156DC    lea         eax,[ebp-10]
 005156DF    push        eax
 005156E0    lea         edx,[ebp-40]
 005156E3    mov         eax,dword ptr [esi]
 005156E5    call        00513A00
 005156EA    lea         eax,[ebp-40]
 005156ED    call        RectWidth
 005156F2    mov         ecx,eax
 005156F4    xor         edx,edx
 005156F6    xor         eax,eax
 005156F8    call        Rect
 005156FD    push        5
 005156FF    push        0
 00515701    lea         eax,[ebp-10]
 00515704    push        eax
 00515705    mov         eax,dword ptr [esi]
 00515707    mov         eax,dword ptr [eax+50]
 0051570A    push        eax
 0051570B    call        user32.RedrawWindow
 00515710    mov         eax,dword ptr [esi]
 00515712    xor         edx,edx
 00515714    call        00513EF0
>00515719    jmp         0051596D
 0051571E    lea         edx,[ebp-60]
 00515721    mov         eax,dword ptr [esi]
 00515723    call        00513BC8
 00515728    lea         eax,[ebp-60]
 0051572B    mov         edx,dword ptr [esi]
 0051572D    add         edx,30
 00515730    call        TRect.Contains
 00515735    test        al,al
>00515737    jne         00515753
 00515739    lea         edx,[ebp-0E0]
 0051573F    mov         eax,dword ptr [esi]
 00515741    call        00513BC8
 00515746    mov         eax,dword ptr [ebp-0D4]
 0051574C    mov         edx,dword ptr [esi]
 0051574E    cmp         eax,dword ptr [edx+34]
>00515751    jge         0051575F
 00515753    mov         eax,dword ptr [esi]
 00515755    call        00512EDC
>0051575A    jmp         0051596D
 0051575F    push        0
 00515761    push        0
 00515763    push        1A1
 00515768    mov         eax,dword ptr [esi]
 0051576A    mov         eax,dword ptr [eax+50]
 0051576D    push        eax
 0051576E    call        user32.SendMessageW
 00515773    mov         ebx,eax
 00515775    test        ebx,ebx
>00515777    jle         00515792
 00515779    lea         edx,[ebp-70]
 0051577C    mov         eax,dword ptr [esi]
 0051577E    call        00513A0C
 00515783    lea         eax,[ebp-70]
 00515786    call        RectHeight
 0051578B    cdq
 0051578C    idiv        eax,ebx
 0051578E    mov         ebx,eax
>00515790    jmp         00515794
 00515792    xor         ebx,ebx
 00515794    push        0
 00515796    push        0
 00515798    push        18E
 0051579D    mov         eax,dword ptr [esi]
 0051579F    mov         eax,dword ptr [eax+50]
 005157A2    push        eax
 005157A3    call        user32.SendMessageW
 005157A8    sub         eax,ebx
 005157AA    inc         eax
 005157AB    mov         ebx,eax
 005157AD    test        ebx,ebx
>005157AF    jge         005157B3
 005157B1    xor         ebx,ebx
 005157B3    push        0
 005157B5    push        0
 005157B7    push        0B
 005157B9    mov         eax,dword ptr [esi]
 005157BB    mov         eax,dword ptr [eax+50]
 005157BE    push        eax
 005157BF    call        user32.SendMessageW
 005157C4    push        0
 005157C6    push        ebx
 005157C7    push        197
 005157CC    mov         eax,dword ptr [esi]
 005157CE    mov         eax,dword ptr [eax+50]
 005157D1    push        eax
 005157D2    call        user32.SendMessageW
 005157D7    push        0
 005157D9    push        1
 005157DB    push        0B
 005157DD    mov         eax,dword ptr [esi]
 005157DF    mov         eax,dword ptr [eax+50]
 005157E2    push        eax
 005157E3    call        user32.SendMessageW
 005157E8    lea         edx,[ebp-90]
 005157EE    mov         eax,dword ptr [esi]
 005157F0    call        00513A00
 005157F5    lea         eax,[ebp-90]
 005157FB    call        RectHeight
 00515800    push        eax
 00515801    lea         eax,[ebp-10]
 00515804    push        eax
 00515805    lea         edx,[ebp-80]
 00515808    mov         eax,dword ptr [esi]
 0051580A    call        00513A00
 0051580F    lea         eax,[ebp-80]
 00515812    call        RectWidth
 00515817    mov         ecx,eax
 00515819    xor         edx,edx
 0051581B    xor         eax,eax
 0051581D    call        Rect
 00515822    push        5
 00515824    push        0
 00515826    lea         eax,[ebp-10]
 00515829    push        eax
 0051582A    mov         eax,dword ptr [esi]
 0051582C    mov         eax,dword ptr [eax+50]
 0051582F    push        eax
 00515830    call        user32.RedrawWindow
 00515835    mov         eax,dword ptr [esi]
 00515837    xor         edx,edx
 00515839    call        00513EF0
>0051583E    jmp         0051596D
 00515843    lea         edx,[ebp-0A0]
 00515849    mov         eax,dword ptr [esi]
 0051584B    call        00513BC8
 00515850    lea         eax,[ebp-0A0]
 00515856    mov         edx,dword ptr [esi]
 00515858    add         edx,30
 0051585B    call        TRect.Contains
 00515860    test        al,al
>00515862    jne         0051587E
 00515864    lea         edx,[ebp-0E0]
 0051586A    mov         eax,dword ptr [esi]
 0051586C    call        00513BC8
 00515871    mov         eax,dword ptr [ebp-0DC]
 00515877    mov         edx,dword ptr [esi]
 00515879    cmp         eax,dword ptr [edx+34]
>0051587C    jle         0051588A
 0051587E    mov         eax,dword ptr [esi]
 00515880    call        00512EDC
>00515885    jmp         0051596D
 0051588A    push        0
 0051588C    push        0
 0051588E    push        1A1
 00515893    mov         eax,dword ptr [esi]
 00515895    mov         eax,dword ptr [eax+50]
 00515898    push        eax
 00515899    call        user32.SendMessageW
 0051589E    mov         ebx,eax
 005158A0    test        ebx,ebx
>005158A2    jle         005158C3
 005158A4    lea         edx,[ebp-0B0]
 005158AA    mov         eax,dword ptr [esi]
 005158AC    call        00513A0C
 005158B1    lea         eax,[ebp-0B0]
 005158B7    call        RectHeight
 005158BC    cdq
 005158BD    idiv        eax,ebx
 005158BF    mov         ebx,eax
>005158C1    jmp         005158C5
 005158C3    xor         ebx,ebx
 005158C5    push        0
 005158C7    push        0
 005158C9    push        18E
 005158CE    mov         eax,dword ptr [esi]
 005158D0    mov         eax,dword ptr [eax+50]
 005158D3    push        eax
 005158D4    call        user32.SendMessageW
 005158D9    add         ebx,eax
 005158DB    dec         ebx
 005158DC    push        0
 005158DE    push        0
 005158E0    push        0B
 005158E2    mov         eax,dword ptr [esi]
 005158E4    mov         eax,dword ptr [eax+50]
 005158E7    push        eax
 005158E8    call        user32.SendMessageW
 005158ED    push        0
 005158EF    push        ebx
 005158F0    push        197
 005158F5    mov         eax,dword ptr [esi]
 005158F7    mov         eax,dword ptr [eax+50]
 005158FA    push        eax
 005158FB    call        user32.SendMessageW
 00515900    push        0
 00515902    push        1
 00515904    push        0B
 00515906    mov         eax,dword ptr [esi]
 00515908    mov         eax,dword ptr [eax+50]
 0051590B    push        eax
 0051590C    call        user32.SendMessageW
 00515911    lea         edx,[ebp-0D0]
 00515917    mov         eax,dword ptr [esi]
 00515919    call        00513A00
 0051591E    lea         eax,[ebp-0D0]
 00515924    call        RectHeight
 00515929    push        eax
 0051592A    lea         eax,[ebp-10]
 0051592D    push        eax
 0051592E    lea         edx,[ebp-0C0]
 00515934    mov         eax,dword ptr [esi]
 00515936    call        00513A00
 0051593B    lea         eax,[ebp-0C0]
 00515941    call        RectWidth
 00515946    mov         ecx,eax
 00515948    xor         edx,edx
 0051594A    xor         eax,eax
 0051594C    call        Rect
 00515951    push        5
 00515953    push        0
 00515955    lea         eax,[ebp-10]
 00515958    push        eax
 00515959    mov         eax,dword ptr [esi]
 0051595B    mov         eax,dword ptr [eax+50]
 0051595E    push        eax
 0051595F    call        user32.RedrawWindow
 00515964    mov         eax,dword ptr [esi]
 00515966    xor         edx,edx
 00515968    call        00513EF0
 0051596D    pop         esi
 0051596E    pop         ebx
 0051596F    mov         esp,ebp
 00515971    pop         ebp
 00515972    ret
end;*}

//00515974
{*procedure sub_00515974(?:?);
begin
 00515974    push        ebp
 00515975    mov         ebp,esp
 00515977    add         esp,0FFFFFFE8
 0051597A    push        ebx
 0051597B    push        esi
 0051597C    mov         ebx,edx
 0051597E    mov         dword ptr [ebp-4],eax
 00515981    mov         byte ptr [ebp-5],0
 00515985    lea         edx,[ebp-18]
 00515988    mov         eax,dword ptr [ebp-4]
 0051598B    call        00513B48
 00515990    lea         eax,[ebp-18]
 00515993    call        RectHeight
 00515998    test        eax,eax
>0051599A    jne         005159CE
 0051599C    mov         eax,dword ptr [ebx]
 0051599E    sub         eax,83
>005159A3    je          005159AF
 005159A5    sub         eax,2
>005159A8    je          005159BD
>005159AA    jmp         00515C03
 005159AF    push        ebp
 005159B0    mov         eax,ebx
 005159B2    call        005143C4
 005159B7    pop         ecx
>005159B8    jmp         00515C03
 005159BD    mov         eax,dword ptr [ebp-4]
 005159C0    call        0051421C
 005159C5    mov         byte ptr [ebp-5],1
>005159C9    jmp         00515C03
 005159CE    mov         esi,dword ptr [ebx]
 005159D0    mov         eax,esi
 005159D2    cmp         eax,113
>005159D7    jg          00515A3E
>005159D9    je          00515AEB
 005159DF    cmp         eax,0A0
>005159E4    jg          00515A14
>005159E6    je          00515B64
 005159EC    add         eax,0FFFFFF84
 005159EF    sub         eax,2
>005159F2    jb          00515BF1
 005159F8    sub         eax,5
>005159FB    je          00515B02
 00515A01    dec         eax
>00515A02    je          00515A97
 00515A08    dec         eax
>00515A09    je          00515BAA
>00515A0F    jmp         00515C03
 00515A14    sub         eax,0A1
>00515A19    je          00515B56
 00515A1F    dec         eax
>00515A20    je          00515B64
 00515A26    dec         eax
>00515A27    je          00515B1E
 00515A2D    add         eax,0FFFFFFA3
 00515A30    sub         eax,2
>00515A33    jb          00515B7B
>00515A39    jmp         00515C03
 00515A3E    cmp         eax,202
>00515A43    jg          00515A74
>00515A45    je          00515B48
 00515A4B    sub         eax,128
>00515A50    je          00515AF9
 00515A56    sub         eax,6F
>00515A59    je          00515BC2
 00515A5F    sub         eax,69
>00515A62    je          00515B3A
 00515A68    dec         eax
>00515A69    je          00515B2C
>00515A6F    jmp         00515C03
 00515A74    sub         eax,20A
>00515A79    je          00515B10
 00515A7F    add         eax,0FFFFFF68
 00515A84    sub         eax,2
>00515A87    jb          00515AB7
 00515A89    sub         eax,73
>00515A8C    je          00515B6D
>00515A92    jmp         00515C03
 00515A97    mov         eax,dword ptr [ebp-4]
 00515A9A    call        00512F90
 00515A9F    cmp         al,1
>00515AA1    jne         00515C03
 00515AA7    mov         dword ptr [ebx+0C],1
 00515AAE    mov         byte ptr [ebp-5],1
>00515AB2    jmp         00515C03
 00515AB7    mov         eax,dword ptr [ebp-4]
 00515ABA    call        00512F90
 00515ABF    cmp         al,1
>00515AC1    jne         00515C03
 00515AC7    mov         eax,dword ptr [ebp-4]
 00515ACA    mov         byte ptr [eax+48],1A;TComboBoxStyleHook.FVSliderState:TThemedScrollBar
 00515ACE    mov         eax,dword ptr [ebp-4]
 00515AD1    mov         byte ptr [eax+49],2;TComboBoxStyleHook.FVUpState:TThemedScrollBar
 00515AD5    mov         eax,dword ptr [ebp-4]
 00515AD8    mov         byte ptr [eax+4A],6;TComboBoxStyleHook.FVDownState:TThemedScrollBar
 00515ADC    xor         edx,edx
 00515ADE    mov         eax,dword ptr [ebp-4]
 00515AE1    call        00513EF0
>00515AE6    jmp         00515C03
 00515AEB    push        ebp
 00515AEC    mov         eax,ebx
 00515AEE    call        0051555C
 00515AF3    pop         ecx
>00515AF4    jmp         00515C03
 00515AF9    mov         byte ptr [ebp-5],1
>00515AFD    jmp         00515C03
 00515B02    push        ebp
 00515B03    mov         eax,ebx
 00515B05    call        005143C4
 00515B0A    pop         ecx
>00515B0B    jmp         00515C03
 00515B10    push        ebp
 00515B11    mov         eax,ebx
 00515B13    call        00514590
 00515B18    pop         ecx
>00515B19    jmp         00515C03
 00515B1E    push        ebp
 00515B1F    mov         eax,ebx
 00515B21    call        00514654
 00515B26    pop         ecx
>00515B27    jmp         00515C03
 00515B2C    push        ebp
 00515B2D    mov         eax,ebx
 00515B2F    call        0051487C
 00515B34    pop         ecx
>00515B35    jmp         00515C03
 00515B3A    push        ebp
 00515B3B    mov         eax,ebx
 00515B3D    call        00514D8C
 00515B42    pop         ecx
>00515B43    jmp         00515C03
 00515B48    push        ebp
 00515B49    mov         eax,ebx
 00515B4B    call        00515260
 00515B50    pop         ecx
>00515B51    jmp         00515C03
 00515B56    push        ebp
 00515B57    mov         eax,ebx
 00515B59    call        00515388
 00515B5E    pop         ecx
>00515B5F    jmp         00515C03
 00515B64    mov         byte ptr [ebp-5],1
>00515B68    jmp         00515C03
 00515B6D    push        ebp
 00515B6E    mov         eax,ebx
 00515B70    call        00515404
 00515B75    pop         ecx
>00515B76    jmp         00515C03
 00515B7B    mov         eax,dword ptr [ebx+8]
 00515B7E    push        eax
 00515B7F    mov         eax,dword ptr [ebx+4]
 00515B82    push        eax
 00515B83    push        esi
 00515B84    mov         eax,dword ptr [ebp-4]
 00515B87    mov         eax,dword ptr [eax+50];TComboBoxStyleHook.FListHandle:HWND
 00515B8A    push        eax
 00515B8B    mov         eax,dword ptr [ebp-4]
 00515B8E    mov         eax,dword ptr [eax+5C];TComboBoxStyleHook.FDefListBoxProc:Pointer
 00515B91    push        eax
 00515B92    call        user32.CallWindowProcW
 00515B97    mov         dword ptr [ebx+0C],eax
 00515B9A    xor         edx,edx
 00515B9C    mov         eax,dword ptr [ebp-4]
 00515B9F    call        00513EF0
 00515BA4    mov         byte ptr [ebp-5],1
>00515BA8    jmp         00515C03
 00515BAA    mov         eax,dword ptr [ebp-4]
 00515BAD    call        0051421C
 00515BB2    xor         edx,edx
 00515BB4    mov         eax,dword ptr [ebp-4]
 00515BB7    call        00513EF0
 00515BBC    mov         byte ptr [ebp-5],1
>00515BC0    jmp         00515C03
 00515BC2    mov         eax,dword ptr [ebx+8]
 00515BC5    push        eax
 00515BC6    mov         eax,dword ptr [ebx+4]
 00515BC9    push        eax
 00515BCA    push        esi
 00515BCB    mov         eax,dword ptr [ebp-4]
 00515BCE    mov         eax,dword ptr [eax+50];TComboBoxStyleHook.FListHandle:HWND
 00515BD1    push        eax
 00515BD2    mov         eax,dword ptr [ebp-4]
 00515BD5    mov         eax,dword ptr [eax+5C];TComboBoxStyleHook.FDefListBoxProc:Pointer
 00515BD8    push        eax
 00515BD9    call        user32.CallWindowProcW
 00515BDE    mov         dword ptr [ebx+0C],eax
 00515BE1    xor         edx,edx
 00515BE3    mov         eax,dword ptr [ebp-4]
 00515BE6    call        00513EF0
 00515BEB    mov         byte ptr [ebp-5],1
>00515BEF    jmp         00515C03
 00515BF1    mov         eax,dword ptr [ebp-4]
 00515BF4    cmp         byte ptr [eax+4B],0;TComboBoxStyleHook.FIgnoreStyleChanged:Boolean
>00515BF8    je          00515C03
 00515BFA    xor         eax,eax
 00515BFC    mov         dword ptr [ebx+0C],eax
 00515BFF    mov         byte ptr [ebp-5],1
 00515C03    cmp         byte ptr [ebp-5],0
>00515C07    jne         00515C2A
 00515C09    mov         eax,dword ptr [ebx+8]
 00515C0C    push        eax
 00515C0D    mov         eax,dword ptr [ebx+4]
 00515C10    push        eax
 00515C11    mov         eax,dword ptr [ebx]
 00515C13    push        eax
 00515C14    mov         eax,dword ptr [ebp-4]
 00515C17    mov         eax,dword ptr [eax+50];TComboBoxStyleHook.FListHandle:HWND
 00515C1A    push        eax
 00515C1B    mov         eax,dword ptr [ebp-4]
 00515C1E    mov         eax,dword ptr [eax+5C];TComboBoxStyleHook.FDefListBoxProc:Pointer
 00515C21    push        eax
 00515C22    call        user32.CallWindowProcW
 00515C27    mov         dword ptr [ebx+0C],eax
 00515C2A    pop         esi
 00515C2B    pop         ebx
 00515C2C    mov         esp,ebp
 00515C2E    pop         ebp
 00515C2F    ret
end;*}

//00515C30
constructor TListBoxStyleHook.Create(AControl:TWinControl);
begin
{*
 00515C30    push        ebx
 00515C31    push        esi
 00515C32    test        dl,dl
>00515C34    je          00515C3E
 00515C36    add         esp,0FFFFFFF0
 00515C39    call        @ClassCreate
 00515C3E    mov         ebx,edx
 00515C40    mov         esi,eax
 00515C42    xor         edx,edx
 00515C44    mov         eax,esi
 00515C46    call        TScrollingStyleHook.Create
 00515C4B    mov         byte ptr [esi+16],1;TListBoxStyleHook.FOverrideEraseBkgnd:Boolean
 00515C4F    mov         eax,esi
 00515C51    call        00515D18
 00515C56    mov         eax,esi
 00515C58    test        bl,bl
>00515C5A    je          00515C6B
 00515C5C    call        @AfterConstruction
 00515C61    pop         dword ptr fs:[0]
 00515C68    add         esp,0C
 00515C6B    mov         eax,esi
 00515C6D    pop         esi
 00515C6E    pop         ebx
 00515C6F    ret
*}
end;

//00515C70
procedure TListBoxStyleHook.WMSetFocus(Message:Messages.TMessage);
begin
{*
 00515C70    push        ebx
 00515C71    push        esi
 00515C72    mov         esi,edx
 00515C74    mov         ebx,eax
 00515C76    mov         edx,esi
 00515C78    mov         eax,ebx
 00515C7A    call        TStyleHook.WMSetFocus
 00515C7F    mov         edx,esi
 00515C81    mov         eax,ebx
 00515C83    call        TStyleHook.CallDefaultProc
 00515C88    push        101
 00515C8D    push        0
 00515C8F    push        0
 00515C91    mov         eax,ebx
 00515C93    call        TStyleHook.GetHandle
 00515C98    push        eax
 00515C99    call        user32.RedrawWindow
 00515C9E    mov         byte ptr [ebx+14],1;TListBoxStyleHook.FHandled:Boolean
 00515CA2    pop         esi
 00515CA3    pop         ebx
 00515CA4    ret
*}
end;

//00515CA8
{*procedure sub_00515CA8(?:?);
begin
 00515CA8    push        ebx
 00515CA9    push        esi
 00515CAA    push        edi
 00515CAB    mov         esi,edx
 00515CAD    mov         ebx,eax
 00515CAF    mov         eax,dword ptr [esi]
 00515CB1    sub         eax,0B00C
>00515CB6    je          00515CFD
 00515CB8    add         eax,0FFFFF2DA
 00515CBD    sub         eax,7
>00515CC0    jae         00515D0A
 00515CC2    mov         eax,dword ptr [ebx+10];TListBoxStyleHook.FFontColor:TColor
 00515CC5    call        ColorToRGB
 00515CCA    push        eax
 00515CCB    mov         eax,dword ptr [esi+4]
 00515CCE    push        eax
 00515CCF    call        gdi32.SetTextColor
 00515CD4    mov         edi,dword ptr [ebx+4];TListBoxStyleHook.FBrush:TBrush
 00515CD7    mov         eax,dword ptr [edi+10];TBrush.FResource:PResource
 00515CDA    mov         eax,dword ptr [eax+18]
 00515CDD    call        ColorToRGB
 00515CE2    push        eax
 00515CE3    mov         eax,dword ptr [esi+4]
 00515CE6    push        eax
 00515CE7    call        gdi32.SetBkColor
 00515CEC    mov         eax,dword ptr [ebx+4];TListBoxStyleHook.FBrush:TBrush
 00515CEF    call        TBrush.GetHandle
 00515CF4    mov         dword ptr [esi+0C],eax
 00515CF7    mov         byte ptr [ebx+14],1;TListBoxStyleHook.FHandled:Boolean
>00515CFB    jmp         00515D13
 00515CFD    mov         eax,ebx
 00515CFF    call        00515D18
 00515D04    mov         byte ptr [ebx+14],0;TListBoxStyleHook.FHandled:Boolean
>00515D08    jmp         00515D13
 00515D0A    mov         edx,esi
 00515D0C    mov         eax,ebx
 00515D0E    call        005CF948
 00515D13    pop         edi
 00515D14    pop         esi
 00515D15    pop         ebx
 00515D16    ret
end;*}

//00515D18
procedure sub_00515D18(?:TListBoxStyleHook);
begin
{*
 00515D18    push        ebx
 00515D19    push        esi
 00515D1A    push        edi
 00515D1B    mov         ebx,eax
 00515D1D    call        StyleServices
 00515D22    mov         esi,eax
 00515D24    mov         eax,dword ptr [ebx+8];TListBoxStyleHook.FControl:TWinControl
 00515D27    mov         edx,dword ptr [eax]
 00515D29    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 00515D2C    and         eax,7F
 00515D2F    movzx       edx,byte ptr [eax+7A14C6]
 00515D36    mov         eax,esi
 00515D38    call        TCustomStyleServices.GetStyleColor
 00515D3D    mov         edx,eax
 00515D3F    mov         eax,dword ptr [ebx+4];TListBoxStyleHook.FBrush:TBrush
 00515D42    call        TBrush.SetColor
 00515D47    mov         edi,dword ptr [ebx+8];TListBoxStyleHook.FControl:TWinControl
 00515D4A    test        byte ptr [edi+188],1;TWinControl.FStyleElements:TStyleElements
>00515D51    je          00515D70
 00515D53    mov         eax,edi
 00515D55    mov         edx,dword ptr [eax]
 00515D57    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 00515D5A    and         eax,7F
 00515D5D    movzx       edx,byte ptr [eax+7A14C8]
 00515D64    mov         eax,esi
 00515D66    call        TCustomStyleServices.GetStyleFontColor
 00515D6B    mov         dword ptr [ebx+10],eax;TListBoxStyleHook.FFontColor:TColor
>00515D6E    jmp         00515D79
 00515D70    mov         eax,dword ptr [edi+74];TWinControl.FFont:TFont
 00515D73    mov         eax,dword ptr [eax+18];TFont.FColor:TColor
 00515D76    mov         dword ptr [ebx+10],eax;TListBoxStyleHook.FFontColor:TColor
 00515D79    pop         edi
 00515D7A    pop         esi
 00515D7B    pop         ebx
 00515D7C    ret
*}
end;

//00515D80
procedure TListBoxStyleHook.WMKillFocus(Message:Messages.TMessage);
begin
{*
 00515D80    push        ebx
 00515D81    push        esi
 00515D82    mov         esi,edx
 00515D84    mov         ebx,eax
 00515D86    mov         edx,esi
 00515D88    mov         eax,ebx
 00515D8A    call        TStyleHook.WMKillFocus
 00515D8F    mov         edx,esi
 00515D91    mov         eax,ebx
 00515D93    call        TStyleHook.CallDefaultProc
 00515D98    push        101
 00515D9D    push        0
 00515D9F    push        0
 00515DA1    mov         eax,ebx
 00515DA3    call        TStyleHook.GetHandle
 00515DA8    push        eax
 00515DA9    call        user32.RedrawWindow
 00515DAE    mov         byte ptr [ebx+14],1;TListBoxStyleHook.FHandled:Boolean
 00515DB2    pop         esi
 00515DB3    pop         ebx
 00515DB4    ret
*}
end;

//00515DB8
procedure sub_00515DB8(?:TBitmap);
begin
{*
 00515DB8    push        ebx
 00515DB9    push        esi
 00515DBA    push        edi
 00515DBB    mov         ebx,eax
 00515DBD    mov         eax,ebx
 00515DBF    mov         edx,dword ptr [eax]
 00515DC1    call        dword ptr [edx+30]
 00515DC4    mov         esi,eax
 00515DC6    mov         eax,ebx
 00515DC8    mov         edx,dword ptr [eax]
 00515DCA    call        dword ptr [edx+24]
 00515DCD    imul        esi,eax
 00515DD0    test        esi,esi
>00515DD2    jl          00515DF1
 00515DD4    inc         esi
 00515DD5    xor         edi,edi
 00515DD7    mov         eax,ebx
 00515DD9    mov         edx,dword ptr [eax]
 00515DDB    call        dword ptr [edx+24]
 00515DDE    mov         edx,eax
 00515DE0    dec         edx
 00515DE1    mov         eax,ebx
 00515DE3    call        TBitmap.GetScanline
 00515DE8    mov         byte ptr [eax+edi*4+3],0FF
 00515DED    inc         edi
 00515DEE    dec         esi
>00515DEF    jne         00515DD7
 00515DF1    pop         edi
 00515DF2    pop         esi
 00515DF3    pop         ebx
 00515DF4    ret
*}
end;

//00515DF8
constructor TButtonStyleHook.Create(AControl:TWinControl);
begin
{*
 00515DF8    push        ebx
 00515DF9    push        esi
 00515DFA    test        dl,dl
>00515DFC    je          00515E06
 00515DFE    add         esp,0FFFFFFF0
 00515E01    call        @ClassCreate
 00515E06    mov         ebx,edx
 00515E08    mov         esi,eax
 00515E0A    xor         edx,edx
 00515E0C    mov         eax,esi
 00515E0E    call        TMouseTrackControlStyleHook.Create
 00515E13    mov         byte ptr [esi+17],1;TButtonStyleHook.FOverridePaint:Boolean
 00515E17    mov         byte ptr [esi+16],1;TButtonStyleHook.FOverrideEraseBkgnd:Boolean
 00515E1B    mov         byte ptr [esi+0D],1;TButtonStyleHook.FDoubleBuffered:Boolean
 00515E1F    mov         byte ptr [esi+2B],0;TButtonStyleHook.FDropDown:Boolean
 00515E23    mov         byte ptr [esi+28],0;TButtonStyleHook.FOldMouseInControl:Boolean
 00515E27    mov         eax,esi
 00515E29    test        bl,bl
>00515E2B    je          00515E3C
 00515E2D    call        @AfterConstruction
 00515E32    pop         dword ptr fs:[0]
 00515E39    add         esp,0C
 00515E3C    mov         eax,esi
 00515E3E    pop         esi
 00515E3F    pop         ebx
 00515E40    ret
*}
end;

//00515E44
{*function sub_00515E44(?:TButtonStyleHook):?;
begin
 00515E44    push        ebx
 00515E45    mov         ebx,eax
 00515E47    mov         eax,[007C4CE0];^gvar_007CA766
 00515E4C    cmp         byte ptr [eax],0
>00515E4F    je          00515E76
 00515E51    mov         eax,dword ptr [ebx+8]
 00515E54    cmp         byte ptr [eax+69],0
>00515E58    je          00515E76
 00515E5A    mov         eax,dword ptr [ebx+8]
 00515E5D    test        byte ptr [eax+188],2
>00515E64    je          00515E76
 00515E66    xor         edx,edx
 00515E68    mov         eax,6
 00515E6D    call        CheckWin32Version
 00515E72    test        al,al
>00515E74    jne         00515E7A
 00515E76    xor         eax,eax
 00515E78    pop         ebx
 00515E79    ret
 00515E7A    mov         al,1
 00515E7C    pop         ebx
 00515E7D    ret
end;*}

//00515E80
{*procedure sub_00515E80(?:TButtonStyleHook; ?:?);
begin
 00515E80    push        ebx
 00515E81    push        esi
 00515E82    push        edi
 00515E83    add         esp,0FFFFFFD4
 00515E86    mov         esi,edx
 00515E88    mov         edi,eax
 00515E8A    xor         ebx,ebx
 00515E8C    mov         eax,edi
 00515E8E    call        00515E44
 00515E93    test        al,al
>00515E95    je          00515F59
 00515E9B    lea         eax,[esp+0C]
 00515E9F    xor         ecx,ecx
 00515EA1    mov         edx,10
 00515EA6    call        @FillChar
 00515EAB    mov         dword ptr [esp+0C],10
 00515EB3    mov         dword ptr [esp+14],1
 00515EBB    movzx       eax,byte ptr [edi+28]
 00515EBF    cmp         al,byte ptr [edi+24]
>00515EC2    je          00515ECC
 00515EC4    mov         dword ptr [esp+18],0C8
 00515ECC    lea         edx,[esp+1C]
 00515ED0    mov         eax,dword ptr [edi+8]
 00515ED3    mov         ecx,dword ptr [eax]
 00515ED5    call        dword ptr [ecx+64]
 00515ED8    lea         eax,[esp+4]
 00515EDC    push        eax
 00515EDD    lea         eax,[esp+4]
 00515EE1    push        eax
 00515EE2    lea         eax,[esp+14]
 00515EE6    push        eax
 00515EE7    push        0
 00515EE9    push        0
 00515EEB    lea         eax,[esp+30]
 00515EEF    push        eax
 00515EF0    push        esi
 00515EF1    mov         eax,edi
 00515EF3    call        TStyleHook.GetHandle
 00515EF8    push        eax
 00515EF9    call        004D42CC
 00515EFE    mov         esi,eax
 00515F00    test        esi,esi
>00515F02    je          00515F52
 00515F04    mov         bl,1
 00515F06    cmp         dword ptr [esp+18],0
 00515F0B    seta        byte ptr [esp+8]
 00515F10    cmp         dword ptr [esp],0
>00515F14    je          00515F2E
 00515F16    movzx       eax,byte ptr [esp+8]
 00515F1B    push        eax
 00515F1C    movzx       ecx,byte ptr [edi+24]
 00515F20    xor         cl,1
 00515F23    mov         edx,dword ptr [esp+4]
 00515F27    mov         eax,edi
 00515F29    call        00515FB8
 00515F2E    cmp         dword ptr [esp+4],0
>00515F33    je          00515F4A
 00515F35    movzx       eax,byte ptr [esp+8]
 00515F3A    push        eax
 00515F3B    movzx       ecx,byte ptr [edi+24]
 00515F3F    mov         edx,dword ptr [esp+8]
 00515F43    mov         eax,edi
 00515F45    call        00515FB8
 00515F4A    push        0FF
 00515F4C    push        esi
 00515F4D    call        004D42E4
 00515F52    movzx       eax,byte ptr [edi+24]
 00515F56    mov         byte ptr [edi+28],al
 00515F59    mov         eax,ebx
 00515F5B    add         esp,2C
 00515F5E    pop         edi
 00515F5F    pop         esi
 00515F60    pop         ebx
 00515F61    ret
end;*}

//00515F64
{*procedure sub_00515F64(?:?);
begin
 00515F64    push        ebx
 00515F65    push        esi
 00515F66    add         esp,0FFFFFFF4
 00515F69    mov         esi,edx
 00515F6B    mov         ebx,eax
 00515F6D    call        StyleServices
 00515F72    mov         edx,dword ptr [eax]
 00515F74    call        dword ptr [edx+48];@AbstractError
 00515F77    test        al,al
>00515F79    je          00515FB0
 00515F7B    mov         byte ptr [esp],0
 00515F7F    call        StyleServices
 00515F84    mov         edx,esp
 00515F86    call        TCustomStyleServices.HasTransparentParts
 00515F8B    test        al,al
>00515F8D    je          00515FB0
 00515F8F    push        esp
 00515F90    push        0
 00515F92    push        0
 00515F94    mov         eax,esi
 00515F96    call        TCanvas.GetHandle
 00515F9B    push        eax
 00515F9C    mov         eax,ebx
 00515F9E    call        TStyleHook.GetHandle
 00515FA3    push        eax
 00515FA4    call        StyleServices
 00515FA9    pop         edx
 00515FAA    pop         ecx
 00515FAB    call        TCustomStyleServices.DrawParentBackground
 00515FB0    add         esp,0C
 00515FB3    pop         esi
 00515FB4    pop         ebx
 00515FB5    ret
end;*}

//00515FB8
{*procedure sub_00515FB8(?:?; ?:?; ?:?; ?:?);
begin
 00515FB8    push        ebp
 00515FB9    mov         ebp,esp
 00515FBB    add         esp,0FFFFFFCC
 00515FBE    push        ebx
 00515FBF    push        esi
 00515FC0    push        edi
 00515FC1    mov         byte ptr [ebp-5],cl
 00515FC4    mov         dword ptr [ebp-4],edx
 00515FC7    mov         esi,eax
 00515FC9    mov         eax,dword ptr [esi+8]
 00515FCC    mov         edx,dword ptr [eax+58]
 00515FCF    imul        edx,dword ptr [eax+5C]
 00515FD3    test        edx,edx
>00515FD5    je          00516148
 00515FDB    cmp         byte ptr [ebp+8],0
>00515FDF    jne         00516048
 00515FE1    mov         dl,1
 00515FE3    mov         eax,[004BF670];TCanvas
 00515FE8    call        TCanvas.Create;TCanvas.Create
 00515FED    mov         dword ptr [ebp-14],eax
 00515FF0    mov         edx,dword ptr [ebp-4]
 00515FF3    mov         eax,dword ptr [ebp-14]
 00515FF6    call        TCanvas.SetHandle
 00515FFB    xor         eax,eax
 00515FFD    push        ebp
 00515FFE    push        516041
 00516003    push        dword ptr fs:[eax]
 00516006    mov         dword ptr fs:[eax],esp
 00516009    mov         edx,dword ptr [ebp-14]
 0051600C    mov         eax,esi
 0051600E    mov         ecx,dword ptr [eax]
 00516010    call        dword ptr [ecx+14]
 00516013    movzx       ecx,byte ptr [ebp-5]
 00516017    mov         edx,dword ptr [ebp-14]
 0051601A    mov         eax,esi
 0051601C    mov         ebx,dword ptr [eax]
 0051601E    call        dword ptr [ebx+40]
 00516021    xor         eax,eax
 00516023    pop         edx
 00516024    pop         ecx
 00516025    pop         ecx
 00516026    mov         dword ptr fs:[eax],edx
 00516029    push        516148
 0051602E    xor         edx,edx
 00516030    mov         eax,dword ptr [ebp-14]
 00516033    call        TCanvas.SetHandle
 00516038    mov         eax,dword ptr [ebp-14]
 0051603B    call        TObject.Free
 00516040    ret
>00516041    jmp         @HandleFinally
>00516046    jmp         0051602E
 00516048    mov         dl,1
 0051604A    mov         eax,[004C1D10];TBitmap
 0051604F    call        TBitmap.Create;TBitmap.Create
 00516054    mov         dword ptr [ebp-0C],eax
 00516057    mov         dl,7
 00516059    mov         eax,dword ptr [ebp-0C]
 0051605C    call        TBitmap.SetPixelFormat
 00516061    mov         edi,dword ptr [esi+8]
 00516064    mov         ecx,dword ptr [edi+5C]
 00516067    mov         edx,dword ptr [edi+58]
 0051606A    mov         eax,dword ptr [ebp-0C]
 0051606D    mov         ebx,dword ptr [eax]
 0051606F    call        dword ptr [ebx+6C];TBitmap.SetSize
 00516072    xor         eax,eax
 00516074    push        ebp
 00516075    push        516141
 0051607A    push        dword ptr fs:[eax]
 0051607D    mov         dword ptr fs:[eax],esp
 00516080    mov         eax,dword ptr [ebp-0C]
 00516083    call        TBitmap.GetCanvas
 00516088    mov         edx,eax
 0051608A    mov         eax,esi
 0051608C    mov         ecx,dword ptr [eax]
 0051608E    call        dword ptr [ecx+14]
 00516091    mov         eax,dword ptr [ebp-0C]
 00516094    call        TBitmap.GetCanvas
 00516099    mov         edx,eax
 0051609B    movzx       ecx,byte ptr [ebp-5]
 0051609F    mov         eax,esi
 005160A1    mov         ebx,dword ptr [eax]
 005160A3    call        dword ptr [ebx+40]
 005160A6    mov         eax,dword ptr [ebp-0C]
 005160A9    call        00515DB8
 005160AE    mov         byte ptr [ebp-10],0
 005160B2    mov         byte ptr [ebp-0F],0
 005160B6    mov         byte ptr [ebp-0E],0FF
 005160BA    mov         byte ptr [ebp-0D],1
 005160BE    mov         eax,dword ptr [ebp-0C]
 005160C1    mov         edx,dword ptr [eax]
 005160C3    call        dword ptr [edx+24];TBitmap.GetHeight
 005160C6    push        eax
 005160C7    lea         eax,[ebp-24]
 005160CA    push        eax
 005160CB    mov         eax,dword ptr [ebp-0C]
 005160CE    mov         edx,dword ptr [eax]
 005160D0    call        dword ptr [edx+30];TBitmap.GetWidth
 005160D3    mov         ecx,eax
 005160D5    xor         edx,edx
 005160D7    xor         eax,eax
 005160D9    call        Rect
 005160DE    lea         esi,[ebp-24]
 005160E1    lea         edi,[ebp-34]
 005160E4    movs        dword ptr [edi],dword ptr [esi]
 005160E5    movs        dword ptr [edi],dword ptr [esi]
 005160E6    movs        dword ptr [edi],dword ptr [esi]
 005160E7    movs        dword ptr [edi],dword ptr [esi]
 005160E8    push        dword ptr [ebp-10]
 005160EB    mov         eax,dword ptr [ebp-28]
 005160EE    sub         eax,dword ptr [ebp-30]
 005160F1    push        eax
 005160F2    mov         eax,dword ptr [ebp-2C]
 005160F5    mov         edi,dword ptr [ebp-34]
 005160F8    sub         eax,edi
 005160FA    push        eax
 005160FB    mov         eax,dword ptr [ebp-30]
 005160FE    push        eax
 005160FF    push        edi
 00516100    mov         eax,dword ptr [ebp-0C]
 00516103    call        TBitmap.GetCanvas
 00516108    call        TCanvas.GetHandle
 0051610D    push        eax
 0051610E    mov         eax,dword ptr [ebp-18]
 00516111    mov         esi,dword ptr [ebp-20]
 00516114    sub         eax,esi
 00516116    push        eax
 00516117    mov         eax,dword ptr [ebp-1C]
 0051611A    mov         ebx,dword ptr [ebp-24]
 0051611D    sub         eax,ebx
 0051611F    push        eax
 00516120    push        esi
 00516121    push        ebx
 00516122    mov         eax,dword ptr [ebp-4]
 00516125    push        eax
 00516126    call        AlphaBlend
 0051612B    xor         eax,eax
 0051612D    pop         edx
 0051612E    pop         ecx
 0051612F    pop         ecx
 00516130    mov         dword ptr fs:[eax],edx
 00516133    push        516148
 00516138    mov         eax,dword ptr [ebp-0C]
 0051613B    call        TObject.Free
 00516140    ret
>00516141    jmp         @HandleFinally
>00516146    jmp         00516138
 00516148    pop         edi
 00516149    pop         esi
 0051614A    pop         ebx
 0051614B    mov         esp,ebp
 0051614D    pop         ebp
 0051614E    ret         4
end;*}

//00516154
{*function sub_00516154(?:?):?;
begin
 00516154    push        ebp
 00516155    mov         ebp,esp
 00516157    add         esp,0FFFFFFF0
 0051615A    push        ebx
 0051615B    push        esi
 0051615C    mov         esi,dword ptr [ebp+8]
 0051615F    add         esi,0FFFFFFFC
 00516162    mov         eax,dword ptr [esi]
 00516164    mov         ebx,dword ptr [eax+8]
 00516167    mov         eax,dword ptr [ebx+5C]
 0051616A    push        eax
 0051616B    lea         eax,[ebp-10]
 0051616E    push        eax
 0051616F    mov         ecx,dword ptr [ebx+58]
 00516172    xor         edx,edx
 00516174    xor         eax,eax
 00516176    call        Rect
 0051617B    mov         eax,dword ptr [esi]
 0051617D    mov         eax,dword ptr [eax+8]
 00516180    mov         edx,dword ptr [eax+74]
 00516183    mov         eax,dword ptr [ebp+8]
 00516186    mov         eax,dword ptr [eax-8]
 00516189    call        TCanvas.SetFont
 0051618E    mov         eax,dword ptr [esi]
 00516190    mov         ebx,dword ptr [eax+8]
 00516193    mov         eax,ebx
 00516195    mov         edx,dword ptr ds:[4FE868];TCustomButton
 0051619B    call        @IsClass
 005161A0    test        al,al
>005161A2    je          005161D2
 005161A4    cmp         byte ptr [ebx+291],0
>005161AB    je          005161D2
 005161AD    mov         eax,dword ptr [ebp+8]
 005161B0    mov         eax,dword ptr [eax-18]
 005161B3    push        eax
 005161B4    lea         eax,[ebp-10]
 005161B7    push        eax
 005161B8    push        415
 005161BD    mov         eax,dword ptr [ebp+8]
 005161C0    lea         ecx,[eax-14]
 005161C3    mov         eax,dword ptr [ebp+8]
 005161C6    mov         edx,dword ptr [eax-8]
 005161C9    mov         eax,dword ptr [esi]
 005161CB    call        TStyleHook.DrawControlText
>005161D0    jmp         005161F5
 005161D2    mov         eax,dword ptr [ebp+8]
 005161D5    mov         eax,dword ptr [eax-18]
 005161D8    push        eax
 005161D9    lea         eax,[ebp-10]
 005161DC    push        eax
 005161DD    push        405
 005161E2    mov         eax,dword ptr [ebp+8]
 005161E5    lea         ecx,[eax-14]
 005161E8    mov         eax,dword ptr [ebp+8]
 005161EB    mov         edx,dword ptr [eax-8]
 005161EE    mov         eax,dword ptr [esi]
 005161F0    call        TStyleHook.DrawControlText
 005161F5    lea         eax,[ebp-10]
 005161F8    call        RectWidth
 005161FD    pop         esi
 005161FE    pop         ebx
 005161FF    mov         esp,ebp
 00516201    pop         ebp
 00516202    ret
end;*}

//00516204
{*procedure sub_00516204(?:?; ?:?);
begin
 00516204    push        ebp
 00516205    mov         ebp,esp
 00516207    add         esp,0FFFFFF60
 0051620D    push        ebx
 0051620E    push        esi
 0051620F    push        edi
 00516210    xor         ebx,ebx
 00516212    mov         dword ptr [ebp-0A0],ebx
 00516218    mov         dword ptr [ebp-1C],ebx
 0051621B    mov         dword ptr [ebp-18],ebx
 0051621E    mov         byte ptr [ebp-1D],cl
 00516221    mov         dword ptr [ebp-8],edx
 00516224    mov         dword ptr [ebp-4],eax
 00516227    xor         eax,eax
 00516229    push        ebp
 0051622A    push        516C00
 0051622F    push        dword ptr fs:[eax]
 00516232    mov         dword ptr fs:[eax],esp
 00516235    lea         edx,[ebp-18]
 00516238    mov         eax,dword ptr [ebp-4]
 0051623B    call        TStyleHook.GetText
 00516240    xor         ebx,ebx
 00516242    mov         eax,dword ptr [ebp-4]
 00516245    mov         esi,dword ptr [eax+8];TButtonStyleHook.FControl:TWinControl
 00516248    mov         eax,esi
 0051624A    mov         edx,dword ptr ds:[4FE868];TCustomButton
 00516250    call        @IsClass
 00516255    test        al,al
>00516257    je          00516262
 00516259    cmp         byte ptr [esi+298],0
>00516260    jne         00516266
 00516262    xor         eax,eax
>00516264    jmp         00516268
 00516266    mov         al,1
 00516268    mov         byte ptr [ebp-3D],al
 0051626B    mov         eax,dword ptr [ebp-4]
 0051626E    mov         eax,dword ptr [eax+8];TButtonStyleHook.FControl:TWinControl
 00516271    mov         edx,dword ptr ds:[4FE868];TCustomButton
 00516277    call        @IsClass
 0051627C    test        al,al
>0051627E    je          0051629F
 00516280    xor         edx,edx
 00516282    mov         eax,6
 00516287    call        CheckWin32Version
 0051628C    test        al,al
>0051628E    je          0051629F
 00516290    mov         eax,dword ptr [ebp-4]
 00516293    mov         eax,dword ptr [eax+8];TButtonStyleHook.FControl:TWinControl
 00516296    cmp         byte ptr [eax+2AC],0
>0051629D    jne         005162A3
 0051629F    xor         eax,eax
>005162A1    jmp         005162A5
 005162A3    mov         al,1
 005162A5    mov         byte ptr [ebp-3E],al
 005162A8    mov         eax,dword ptr [ebp-4]
 005162AB    mov         eax,dword ptr [eax+8];TButtonStyleHook.FControl:TWinControl
 005162AE    mov         edx,dword ptr [eax]
 005162B0    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 005162B3    test        al,al
>005162B5    jne         005162CD
 005162B7    call        StyleServices
 005162BC    lea         ecx,[ebp-14]
 005162BF    mov         dl,5
 005162C1    mov         ebx,dword ptr [eax]
 005162C3    call        dword ptr [ebx+5C];TCustomStyleServices.GetElementDetails
 005162C6    mov         ebx,3
>005162CB    jmp         00516348
 005162CD    mov         eax,dword ptr [ebp-4]
 005162D0    cmp         byte ptr [eax+29],0;TButtonStyleHook.FPressed:Boolean
>005162D4    je          005162EC
 005162D6    call        StyleServices
 005162DB    lea         ecx,[ebp-14]
 005162DE    mov         dl,4
 005162E0    mov         ebx,dword ptr [eax]
 005162E2    call        dword ptr [ebx+5C];TCustomStyleServices.GetElementDetails
 005162E5    mov         ebx,2
>005162EA    jmp         00516348
 005162EC    cmp         byte ptr [ebp-1D],0
>005162F0    je          00516308
 005162F2    call        StyleServices
 005162F7    lea         ecx,[ebp-14]
 005162FA    mov         dl,3
 005162FC    mov         ebx,dword ptr [eax]
 005162FE    call        dword ptr [ebx+5C];TCustomStyleServices.GetElementDetails
 00516301    mov         ebx,1
>00516306    jmp         00516348
 00516308    mov         eax,dword ptr [ebp-4]
 0051630B    movzx       eax,byte ptr [eax+0E];TButtonStyleHook.FFocused:Boolean
 0051630F    or          al,byte ptr [ebp-3D]
>00516312    je          0051632A
 00516314    call        StyleServices
 00516319    lea         ecx,[ebp-14]
 0051631C    mov         dl,6
 0051631E    mov         ebx,dword ptr [eax]
 00516320    call        dword ptr [ebx+5C];TCustomStyleServices.GetElementDetails
 00516323    mov         ebx,4
>00516328    jmp         00516348
 0051632A    mov         eax,dword ptr [ebp-4]
 0051632D    mov         eax,dword ptr [eax+8];TButtonStyleHook.FControl:TWinControl
 00516330    mov         edx,dword ptr [eax]
 00516332    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 00516335    test        al,al
>00516337    je          00516348
 00516339    call        StyleServices
 0051633E    lea         ecx,[ebp-14]
 00516341    mov         dl,2
 00516343    mov         esi,dword ptr [eax]
 00516345    call        dword ptr [esi+5C];TCustomStyleServices.GetElementDetails
 00516348    lea         edx,[ebp-6C]
 0051634B    mov         eax,dword ptr [ebp-4]
 0051634E    mov         eax,dword ptr [eax+8];TButtonStyleHook.FControl:TWinControl
 00516351    mov         ecx,dword ptr [eax]
 00516353    call        dword ptr [ecx+64];TWinControl.GetClientRect
 00516356    lea         eax,[ebp-6C]
 00516359    push        eax
 0051635A    push        0
 0051635C    mov         eax,dword ptr [ebp-8]
 0051635F    call        TCanvas.GetHandle
 00516364    push        eax
 00516365    call        StyleServices
 0051636A    lea         ecx,[ebp-14]
 0051636D    pop         edx
 0051636E    call        TCustomStyleServices.DrawElement
 00516373    mov         eax,dword ptr [ebp-4]
 00516376    call        TStyleHook.GetHandle
 0051637B    mov         esi,eax
 0051637D    lea         eax,[ebp-94]
 00516383    push        eax
 00516384    push        0
 00516386    push        1603
 0051638B    push        esi
 0051638C    call        user32.SendMessageW
 00516391    test        eax,eax
>00516393    je          005163A1
 00516395    cmp         dword ptr [ebp-94],0
 0051639C    setne       al
>0051639F    jmp         005163A3
 005163A1    xor         eax,eax
 005163A3    test        al,al
>005163A5    je          00516671
 005163AB    lea         eax,[ebp-28]
 005163AE    push        eax
 005163AF    lea         eax,[ebp-24]
 005163B2    push        eax
 005163B3    mov         eax,dword ptr [ebp-94]
 005163B9    push        eax
 005163BA    call        comctl32.ImageList_GetIconSize
 005163BF    test        eax,eax
>005163C1    je          00516671
 005163C7    mov         esi,dword ptr [ebp-6C]
 005163CA    add         esi,2
 005163CD    lea         eax,[ebp-6C]
 005163D0    call        RectHeight
 005163D5    mov         edi,eax
 005163D7    sub         edi,dword ptr [ebp-28]
 005163DA    sar         edi,1
>005163DC    jns         005163E1
 005163DE    adc         edi,0
 005163E1    add         edi,dword ptr [ebp-68]
 005163E4    cmp         byte ptr [ebp-3E],0
>005163E8    je          00516485
 005163EE    xor         ebx,ebx
 005163F0    mov         eax,dword ptr [ebp-4]
 005163F3    call        TStyleHook.GetHandle
 005163F8    mov         dword ptr [ebp-48],eax
 005163FB    push        0F0
 005163FD    mov         eax,dword ptr [ebp-48]
 00516400    push        eax
 00516401    call        user32.GetWindowLongW
 00516406    mov         dword ptr [ebp-4C],eax
 00516409    mov         eax,dword ptr [ebp-4C]
 0051640C    and         eax,0E
 0051640F    cmp         eax,0E
>00516412    jne         00516425
 00516414    mov         edi,dword ptr [ebp-68]
 00516417    add         edi,0F
 0051641A    mov         esi,dword ptr [ebp-6C]
 0051641D    add         esi,0F
>00516420    jmp         00516657
 00516425    mov         eax,dword ptr [ebp-24]
 00516428    add         dword ptr [ebp-6C],eax
 0051642B    lea         edx,[ebp-9C]
 00516431    lea         eax,[ebp-6C]
 00516434    call        CenterPoint
 00516439    mov         esi,dword ptr [ebp-9C]
 0051643F    push        ebp
 00516440    call        00516154
 00516445    pop         ecx
 00516446    sar         eax,1
>00516448    jns         0051644D
 0051644A    adc         eax,0
 0051644D    sub         esi,eax
 0051644F    sub         esi,dword ptr [ebp-24]
 00516452    sub         esi,2
 00516455    mov         eax,dword ptr [ebp-4]
 00516458    call        TStyleHook.GetHandle
 0051645D    mov         dword ptr [ebp-50],eax
 00516460    push        0F0
 00516462    mov         eax,dword ptr [ebp-50]
 00516465    push        eax
 00516466    call        user32.GetWindowLongW
 0051646B    mov         dword ptr [ebp-54],eax
 0051646E    mov         eax,dword ptr [ebp-54]
 00516471    and         eax,0C
 00516474    cmp         eax,0C
>00516477    jne         00516657
 0051647D    sub         esi,7
>00516480    jmp         00516657
 00516485    mov         eax,dword ptr [ebp-4]
 00516488    call        TStyleHook.GetHandle
 0051648D    mov         dword ptr [ebp-58],eax
 00516490    push        0F0
 00516492    mov         eax,dword ptr [ebp-58]
 00516495    push        eax
 00516496    call        user32.GetWindowLongW
 0051649B    mov         dword ptr [ebp-5C],eax
 0051649E    mov         eax,dword ptr [ebp-5C]
 005164A1    and         eax,0E
 005164A4    cmp         eax,0E
>005164A7    jne         005164B4
 005164A9    mov         edi,dword ptr [ebp-68]
 005164AC    add         edi,0F
>005164AF    jmp         00516657
 005164B4    mov         eax,dword ptr [ebp-4]
 005164B7    mov         eax,dword ptr [eax+8];TButtonStyleHook.FControl:TWinControl
 005164BA    mov         edx,dword ptr ds:[4FE868];TCustomButton
 005164C0    call        @IsClass
 005164C5    test        al,al
>005164C7    je          00516657
 005164CD    mov         eax,dword ptr [ebp-4]
 005164D0    mov         eax,dword ptr [eax+8];TButtonStyleHook.FControl:TWinControl
 005164D3    mov         dword ptr [ebp-44],eax
 005164D6    mov         eax,dword ptr [ebp-44]
 005164D9    movzx       eax,byte ptr [eax+2B4]
 005164E0    cmp         eax,4
>005164E3    ja          00516657
 005164E9    jmp         dword ptr [eax*4+5164F0]
 005164E9    dd          00516529
 005164E9    dd          0051656C
 005164E9    dd          005165AD
 005164E9    dd          00516604
 005164E9    dd          00516504
 00516504    lea         edx,[ebp-9C]
 0051650A    lea         eax,[ebp-6C]
 0051650D    call        CenterPoint
 00516512    mov         esi,dword ptr [ebp-9C]
 00516518    mov         eax,dword ptr [ebp-24]
 0051651B    sar         eax,1
>0051651D    jns         00516522
 0051651F    adc         eax,0
 00516522    sub         esi,eax
>00516524    jmp         00516657
 00516529    mov         esi,dword ptr [ebp-6C]
 0051652C    add         esi,2;TRect.Left:LongInt
 0051652F    mov         eax,dword ptr [ebp-44]
 00516532    mov         eax,dword ptr [eax+2C0]
 00516538    add         esi,dword ptr [eax+10]
 0051653B    mov         eax,dword ptr [ebp-44]
 0051653E    mov         eax,dword ptr [eax+2C0]
 00516544    add         edi,dword ptr [eax+0C]
 00516547    mov         eax,dword ptr [ebp-44]
 0051654A    mov         eax,dword ptr [eax+2C0]
 00516550    sub         edi,dword ptr [eax+8]
 00516553    mov         eax,esi
 00516555    add         eax,dword ptr [ebp-24]
 00516558    mov         edx,dword ptr [ebp-44]
 0051655B    mov         edx,dword ptr [edx+2C0]
 00516561    add         eax,dword ptr [edx+4]
 00516564    add         dword ptr [ebp-6C],eax
>00516567    jmp         00516657
 0051656C    mov         esi,dword ptr [ebp-64]
 0051656F    sub         esi,dword ptr [ebp-24]
 00516572    sub         esi,2
 00516575    mov         eax,dword ptr [ebp-44]
 00516578    mov         eax,dword ptr [eax+2C0]
 0051657E    sub         esi,dword ptr [eax+4]
 00516581    mov         eax,dword ptr [ebp-44]
 00516584    mov         eax,dword ptr [eax+2C0]
 0051658A    sub         esi,dword ptr [eax+10]
 0051658D    mov         eax,dword ptr [ebp-44]
 00516590    mov         eax,dword ptr [eax+2C0]
 00516596    add         edi,dword ptr [eax+0C]
 00516599    mov         eax,dword ptr [ebp-44]
 0051659C    mov         eax,dword ptr [eax+2C0]
 005165A2    sub         edi,dword ptr [eax+8]
 005165A5    mov         dword ptr [ebp-64],esi
>005165A8    jmp         00516657
 005165AD    lea         eax,[ebp-6C]
 005165B0    call        RectWidth
 005165B5    mov         esi,eax
 005165B7    sub         esi,dword ptr [ebp-24]
 005165BA    sar         esi,1
>005165BC    jns         005165C1
 005165BE    adc         esi,0
 005165C1    add         esi,dword ptr [ebp-6C]
 005165C4    mov         eax,dword ptr [ebp-44]
 005165C7    mov         eax,dword ptr [eax+2C0]
 005165CD    add         esi,dword ptr [eax+10]
 005165D0    mov         eax,dword ptr [ebp-44]
 005165D3    mov         eax,dword ptr [eax+2C0]
 005165D9    sub         esi,dword ptr [eax+4]
 005165DC    mov         edi,dword ptr [ebp-68]
 005165DF    add         edi,2
 005165E2    mov         eax,dword ptr [ebp-44]
 005165E5    mov         eax,dword ptr [eax+2C0]
 005165EB    add         edi,dword ptr [eax+0C]
 005165EE    mov         eax,edi
 005165F0    add         eax,dword ptr [ebp-28]
 005165F3    mov         edx,dword ptr [ebp-44]
 005165F6    mov         edx,dword ptr [edx+2C0]
 005165FC    add         eax,dword ptr [edx+8]
 005165FF    add         dword ptr [ebp-68],eax
>00516602    jmp         00516657
 00516604    lea         eax,[ebp-6C]
 00516607    call        RectWidth
 0051660C    mov         esi,eax
 0051660E    sub         esi,dword ptr [ebp-24]
 00516611    sar         esi,1
>00516613    jns         00516618
 00516615    adc         esi,0
 00516618    add         esi,dword ptr [ebp-6C]
 0051661B    mov         eax,dword ptr [ebp-44]
 0051661E    mov         eax,dword ptr [eax+2C0]
 00516624    add         esi,dword ptr [eax+10]
 00516627    mov         eax,dword ptr [ebp-44]
 0051662A    mov         eax,dword ptr [eax+2C0]
 00516630    sub         esi,dword ptr [eax+4]
 00516633    mov         edi,dword ptr [ebp-60]
 00516636    sub         edi,dword ptr [ebp-28]
 00516639    sub         edi,2
 0051663C    mov         eax,dword ptr [ebp-44]
 0051663F    mov         eax,dword ptr [eax+2C0]
 00516645    sub         edi,dword ptr [eax+8]
 00516648    mov         eax,dword ptr [ebp-44]
 0051664B    mov         eax,dword ptr [eax+2C0]
 00516651    sub         edi,dword ptr [eax+0C]
 00516654    mov         dword ptr [ebp-60],edi
 00516657    push        0
 00516659    push        edi
 0051665A    push        esi
 0051665B    mov         eax,dword ptr [ebp-8]
 0051665E    call        TCanvas.GetHandle
 00516663    push        eax
 00516664    push        ebx
 00516665    mov         eax,dword ptr [ebp-94]
 0051666B    push        eax
 0051666C    call        comctl32.ImageList_Draw
 00516671    mov         eax,dword ptr [ebp-4]
 00516674    call        TStyleHook.GetHandle
 00516679    push        0F0
 0051667B    push        eax
 0051667C    call        user32.GetWindowLongW
 00516681    and         eax,0E
 00516684    cmp         eax,0E
>00516687    jne         0051692C
 0051668D    add         dword ptr [ebp-6C],23
 00516691    add         dword ptr [ebp-68],0F
 00516695    add         dword ptr [ebp-6C],5
 00516699    mov         eax,dword ptr [ebp-4]
 0051669C    mov         eax,dword ptr [eax+8];TButtonStyleHook.FControl:TWinControl
 0051669F    mov         edx,dword ptr [eax+74];TWinControl.FFont:TFont
 005166A2    mov         eax,dword ptr [ebp-8]
 005166A5    call        TCanvas.SetFont
 005166AA    mov         eax,dword ptr [ebp-8]
 005166AD    mov         eax,dword ptr [eax+40]
 005166B0    movzx       edx,byte ptr ds:[516C10];0x0 gvar_00516C10
 005166B7    call        TFont.SetStyle
 005166BC    mov         eax,dword ptr [ebp-8]
 005166BF    mov         eax,dword ptr [eax+40]
 005166C2    mov         edx,0C
 005166C7    call        TFont.SetSize
 005166CC    lea         esi,[ebp-6C]
 005166CF    lea         edi,[ebp-7C]
 005166D2    movs        dword ptr [edi],dword ptr [esi]
 005166D3    movs        dword ptr [edi],dword ptr [esi]
 005166D4    movs        dword ptr [edi],dword ptr [esi]
 005166D5    movs        dword ptr [edi],dword ptr [esi]
 005166D6    mov         eax,dword ptr [ebp-4]
 005166D9    mov         eax,dword ptr [eax+8];TButtonStyleHook.FControl:TWinControl
 005166DC    mov         edx,410
 005166E1    call        TControl.DrawTextBiDiModeFlags
 005166E6    call        TTextFormatFlags.&op_Implicit
 005166EB    mov         dword ptr [ebp-2C],eax
 005166EE    mov         eax,dword ptr [ebp-18]
 005166F1    push        eax
 005166F2    lea         eax,[ebp-7C]
 005166F5    push        eax
 005166F6    mov         eax,dword ptr [ebp-2C]
 005166F9    call        TTextFormatFlags.&op_Implicit
 005166FE    push        eax
 005166FF    mov         eax,dword ptr [ebp-8]
 00516702    mov         eax,dword ptr [eax+40]
 00516705    mov         eax,dword ptr [eax+18]
 00516708    push        eax
 00516709    mov         eax,dword ptr [ebp-8]
 0051670C    call        TCanvas.GetHandle
 00516711    push        eax
 00516712    call        StyleServices
 00516717    lea         ecx,[ebp-14]
 0051671A    pop         edx
 0051671B    call        TCustomStyleServices.DrawText
 00516720    mov         eax,dword ptr [ebp-4]
 00516723    mov         eax,dword ptr [eax+8];TButtonStyleHook.FControl:TWinControl
 00516726    mov         edx,10
 0051672B    call        TControl.DrawTextBiDiModeFlags
 00516730    call        TTextFormatFlags.&op_Implicit
 00516735    mov         dword ptr [ebp-2C],eax
 00516738    mov         eax,dword ptr [ebp-4]
 0051673B    mov         eax,dword ptr [eax+8];TButtonStyleHook.FControl:TWinControl
 0051673E    test        byte ptr [eax+188],1;TWinControl.FStyleElements:TStyleElements
>00516745    je          0051676C
 00516747    lea         eax,[ebp-30]
 0051674A    push        eax
 0051674B    call        StyleServices
 00516750    mov         cl,2
 00516752    lea         edx,[ebp-14]
 00516755    call        TCustomStyleServices.GetElementColor
 0051675A    test        al,al
>0051675C    je          0051676C
 0051675E    mov         eax,dword ptr [ebp-8]
 00516761    mov         eax,dword ptr [eax+40]
 00516764    mov         edx,dword ptr [ebp-30]
 00516767    call        TFont.SetColor
 0051676C    mov         eax,dword ptr [ebp-18]
 0051676F    push        eax
 00516770    lea         eax,[ebp-6C]
 00516773    push        eax
 00516774    mov         eax,dword ptr [ebp-2C]
 00516777    call        TTextFormatFlags.&op_Implicit
 0051677C    push        eax
 0051677D    mov         eax,dword ptr [ebp-8]
 00516780    mov         eax,dword ptr [eax+40]
 00516783    mov         eax,dword ptr [eax+18]
 00516786    push        eax
 00516787    mov         eax,dword ptr [ebp-8]
 0051678A    call        TCanvas.GetHandle
 0051678F    push        eax
 00516790    call        StyleServices
 00516795    lea         ecx,[ebp-14]
 00516798    pop         edx
 00516799    call        TCustomStyleServices.DrawText
 0051679E    mov         eax,dword ptr [ebp-4]
 005167A1    call        TStyleHook.GetHandle
 005167A6    push        0
 005167A8    push        0
 005167AA    push        160B
 005167AF    push        eax
 005167B0    call        user32.SendMessageW
 005167B5    lea         edx,[eax+1]
 005167B8    lea         eax,[ebp-1C]
 005167BB    call        @UStrSetLength
 005167C0    mov         edx,dword ptr [ebp-1C]
 005167C3    mov         eax,edx
 005167C5    test        eax,eax
>005167C7    je          005167CE
 005167C9    sub         eax,4
 005167CC    mov         eax,dword ptr [eax]
 005167CE    test        eax,eax
>005167D0    je          00516867
 005167D6    mov         eax,edx
 005167D8    test        eax,eax
>005167DA    je          005167E1
 005167DC    sub         eax,4
 005167DF    mov         eax,dword ptr [eax]
 005167E1    mov         dword ptr [ebp-34],eax
 005167E4    mov         eax,dword ptr [ebp-4]
 005167E7    call        TStyleHook.GetHandle
 005167EC    mov         ebx,eax
 005167EE    mov         eax,dword ptr [ebp-1C]
 005167F1    call        @UStrToPWChar
 005167F6    push        eax
 005167F7    lea         eax,[ebp-34]
 005167FA    push        eax
 005167FB    push        160A
 00516800    push        ebx
 00516801    call        user32.SendMessageW
 00516806    test        eax,eax
>00516808    je          00516867
 0051680A    mov         eax,10
 0051680F    call        TTextFormatFlags.&op_Implicit
 00516814    mov         dword ptr [ebp-2C],eax
 00516817    lea         eax,[ebp-7C]
 0051681A    call        RectHeight
 0051681F    add         eax,2
 00516822    add         dword ptr [ebp-68],eax
 00516825    mov         eax,dword ptr [ebp-8]
 00516828    mov         eax,dword ptr [eax+40]
 0051682B    mov         edx,8
 00516830    call        TFont.SetSize
 00516835    mov         eax,dword ptr [ebp-1C]
 00516838    push        eax
 00516839    lea         eax,[ebp-6C]
 0051683C    push        eax
 0051683D    mov         eax,dword ptr [ebp-2C]
 00516840    call        TTextFormatFlags.&op_Implicit
 00516845    push        eax
 00516846    mov         eax,dword ptr [ebp-8]
 00516849    mov         eax,dword ptr [eax+40]
 0051684C    mov         eax,dword ptr [eax+18]
 0051684F    push        eax
 00516850    mov         eax,dword ptr [ebp-8]
 00516853    call        TCanvas.GetHandle
 00516858    push        eax
 00516859    call        StyleServices
 0051685E    lea         ecx,[ebp-14]
 00516861    pop         edx
 00516862    call        TCustomStyleServices.DrawText
 00516867    cmp         dword ptr [ebp-94],0
>0051686E    jne         00516BDA
 00516874    mov         eax,dword ptr [ebp-4]
 00516877    mov         eax,dword ptr [eax+8];TButtonStyleHook.FControl:TWinControl
 0051687A    mov         edx,dword ptr [eax]
 0051687C    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 0051687F    test        al,al
>00516881    jne         00516894
 00516883    call        StyleServices
 00516888    lea         ecx,[ebp-14]
 0051688B    mov         dl,30
 0051688D    mov         ebx,dword ptr [eax]
 0051688F    call        dword ptr [ebx+5C];TCustomStyleServices.GetElementDetails
>00516892    jmp         005168EE
 00516894    mov         eax,dword ptr [ebp-4]
 00516897    cmp         byte ptr [eax+29],0;TButtonStyleHook.FPressed:Boolean
>0051689B    je          005168AE
 0051689D    call        StyleServices
 005168A2    lea         ecx,[ebp-14]
 005168A5    mov         dl,2F
 005168A7    mov         ebx,dword ptr [eax]
 005168A9    call        dword ptr [ebx+5C];TCustomStyleServices.GetElementDetails
>005168AC    jmp         005168EE
 005168AE    mov         eax,dword ptr [ebp-4]
 005168B1    cmp         byte ptr [eax+0E],0;TButtonStyleHook.FFocused:Boolean
>005168B5    je          005168C8
 005168B7    call        StyleServices
 005168BC    lea         ecx,[ebp-14]
 005168BF    mov         dl,31
 005168C1    mov         ebx,dword ptr [eax]
 005168C3    call        dword ptr [ebx+5C];TCustomStyleServices.GetElementDetails
>005168C6    jmp         005168EE
 005168C8    cmp         byte ptr [ebp-1D],0
>005168CC    je          005168DF
 005168CE    call        StyleServices
 005168D3    lea         ecx,[ebp-14]
 005168D6    mov         dl,2E
 005168D8    mov         ebx,dword ptr [eax]
 005168DA    call        dword ptr [ebx+5C];TCustomStyleServices.GetElementDetails
>005168DD    jmp         005168EE
 005168DF    call        StyleServices
 005168E4    lea         ecx,[ebp-14]
 005168E7    mov         dl,2D
 005168E9    mov         ebx,dword ptr [eax]
 005168EB    call        dword ptr [ebx+5C];TCustomStyleServices.GetElementDetails
 005168EE    mov         dword ptr [ebp-64],23
 005168F5    mov         dword ptr [ebp-6C],3
 005168FC    mov         eax,0A
 00516901    mov         dword ptr [ebp-68],eax
 00516904    add         eax,20
 00516907    mov         dword ptr [ebp-60],eax
 0051690A    lea         eax,[ebp-6C]
 0051690D    push        eax
 0051690E    push        0
 00516910    mov         eax,dword ptr [ebp-8]
 00516913    call        TCanvas.GetHandle
 00516918    push        eax
 00516919    call        StyleServices
 0051691E    lea         ecx,[ebp-14]
 00516921    pop         edx
 00516922    call        TCustomStyleServices.DrawElement
>00516927    jmp         00516BDA
 0051692C    mov         eax,dword ptr [ebp-4]
 0051692F    call        TStyleHook.GetHandle
 00516934    push        0F0
 00516936    push        eax
 00516937    call        user32.GetWindowLongW
 0051693C    and         eax,0C
 0051693F    cmp         eax,0C
>00516942    jne         00516B72
 00516948    sub         dword ptr [ebp-64],0F
 0051694C    lea         edx,[ebp-0A0]
 00516952    mov         eax,dword ptr [ebp-4]
 00516955    call        TStyleHook.GetText
 0051695A    mov         eax,dword ptr [ebp-0A0]
 00516960    push        eax
 00516961    lea         eax,[ebp-6C]
 00516964    push        eax
 00516965    mov         eax,dword ptr [ebp-4]
 00516968    mov         eax,dword ptr [eax+8];TButtonStyleHook.FControl:TWinControl
 0051696B    mov         edx,5
 00516970    call        TControl.DrawTextBiDiModeFlags
 00516975    push        eax
 00516976    lea         ecx,[ebp-14]
 00516979    mov         edx,dword ptr [ebp-8]
 0051697C    mov         eax,dword ptr [ebp-4]
 0051697F    call        TStyleHook.DrawControlText
 00516984    mov         eax,dword ptr [ebp-4]
 00516987    cmp         byte ptr [eax+2B],0;TButtonStyleHook.FDropDown:Boolean
>0051698B    je          00516A52
 00516991    call        StyleServices
 00516996    lea         ecx,[ebp-14]
 00516999    mov         dl,4
 0051699B    mov         ebx,dword ptr [eax]
 0051699D    call        dword ptr [ebx+5C];TCustomStyleServices.GetElementDetails
 005169A0    mov         eax,dword ptr [ebp-8]
 005169A3    call        TCanvas.GetHandle
 005169A8    push        eax
 005169A9    call        gdi32.SaveDC
 005169AE    mov         dword ptr [ebp-38],eax
 005169B1    xor         eax,eax
 005169B3    push        ebp
 005169B4    push        516A4B
 005169B9    push        dword ptr fs:[eax]
 005169BC    mov         dword ptr fs:[eax],esp
 005169BF    mov         eax,dword ptr [ebp-4]
 005169C2    mov         ebx,dword ptr [eax+8];TButtonStyleHook.FControl:TWinControl
 005169C5    mov         eax,dword ptr [ebx+5C];TWinControl.FHeight:Integer
 005169C8    push        eax
 005169C9    mov         eax,dword ptr [ebx+58];TWinControl.FWidth:Integer
 005169CC    push        eax
 005169CD    push        0
 005169CF    mov         eax,dword ptr [ebx+58];TWinControl.FWidth:Integer
 005169D2    sub         eax,0F
 005169D5    push        eax
 005169D6    mov         eax,dword ptr [ebp-8]
 005169D9    call        TCanvas.GetHandle
 005169DE    push        eax
 005169DF    call        gdi32.IntersectClipRect
 005169E4    mov         eax,dword ptr [ebp-4]
 005169E7    mov         eax,dword ptr [eax+8];TButtonStyleHook.FControl:TWinControl
 005169EA    mov         eax,dword ptr [eax+5C];TWinControl.FHeight:Integer
 005169ED    push        eax
 005169EE    lea         eax,[ebp-6C]
 005169F1    push        eax
 005169F2    mov         eax,dword ptr [ebp-4]
 005169F5    mov         eax,dword ptr [eax+8];TButtonStyleHook.FControl:TWinControl
 005169F8    mov         ecx,dword ptr [eax+58];TWinControl.FWidth:Integer
 005169FB    mov         eax,dword ptr [ebp-4]
 005169FE    mov         eax,dword ptr [eax+8];TButtonStyleHook.FControl:TWinControl
 00516A01    mov         eax,dword ptr [eax+58];TWinControl.FWidth:Integer
 00516A04    sub         eax,1E
 00516A07    xor         edx,edx
 00516A09    call        Rect
 00516A0E    lea         eax,[ebp-6C]
 00516A11    push        eax
 00516A12    push        0
 00516A14    mov         eax,dword ptr [ebp-8]
 00516A17    call        TCanvas.GetHandle
 00516A1C    push        eax
 00516A1D    call        StyleServices
 00516A22    lea         ecx,[ebp-14]
 00516A25    pop         edx
 00516A26    call        TCustomStyleServices.DrawElement
 00516A2B    xor         eax,eax
 00516A2D    pop         edx
 00516A2E    pop         ecx
 00516A2F    pop         ecx
 00516A30    mov         dword ptr fs:[eax],edx
 00516A33    push        516A52
 00516A38    mov         eax,dword ptr [ebp-38]
 00516A3B    push        eax
 00516A3C    mov         eax,dword ptr [ebp-8]
 00516A3F    call        TCanvas.GetHandle
 00516A44    push        eax
 00516A45    call        gdi32.RestoreDC
 00516A4A    ret
>00516A4B    jmp         @HandleFinally
>00516A50    jmp         00516A38
 00516A52    call        StyleServices
 00516A57    mov         edx,0FF000010
 00516A5C    call        TCustomStyleServices.GetSystemColor
 00516A61    mov         edx,eax
 00516A63    mov         eax,dword ptr [ebp-8]
 00516A66    mov         eax,dword ptr [eax+44]
 00516A69    call        TPen.SetColor
 00516A6E    mov         eax,dword ptr [ebp-4]
 00516A71    mov         eax,dword ptr [eax+8];TButtonStyleHook.FControl:TWinControl
 00516A74    mov         edx,dword ptr [eax+58];TWinControl.FWidth:Integer
 00516A77    sub         edx,0F
 00516A7A    mov         ecx,3
 00516A7F    mov         eax,dword ptr [ebp-8]
 00516A82    mov         ebx,dword ptr [eax]
 00516A84    call        dword ptr [ebx+64]
 00516A87    mov         eax,dword ptr [ebp-4]
 00516A8A    mov         eax,dword ptr [eax+8];TButtonStyleHook.FControl:TWinControl
 00516A8D    mov         ecx,dword ptr [eax+5C];TWinControl.FHeight:Integer
 00516A90    sub         ecx,3
 00516A93    mov         edx,dword ptr [eax+58];TWinControl.FWidth:Integer
 00516A96    sub         edx,0F
 00516A99    mov         eax,dword ptr [ebp-8]
 00516A9C    mov         ebx,dword ptr [eax]
 00516A9E    call        dword ptr [ebx+60]
 00516AA1    mov         eax,dword ptr [ebp-4]
 00516AA4    mov         eax,dword ptr [eax+8];TButtonStyleHook.FControl:TWinControl
 00516AA7    mov         edx,dword ptr [eax]
 00516AA9    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 00516AAC    test        al,al
>00516AAE    je          00516ACE
 00516AB0    call        StyleServices
 00516AB5    mov         edx,0FF000014
 00516ABA    call        TCustomStyleServices.GetSystemColor
 00516ABF    mov         edx,eax
 00516AC1    mov         eax,dword ptr [ebp-8]
 00516AC4    mov         eax,dword ptr [eax+44]
 00516AC7    call        TPen.SetColor
>00516ACC    jmp         00516AE2
 00516ACE    mov         eax,dword ptr [ebp-8]
 00516AD1    mov         eax,dword ptr [eax+40]
 00516AD4    mov         edx,dword ptr [eax+18]
 00516AD7    mov         eax,dword ptr [ebp-8]
 00516ADA    mov         eax,dword ptr [eax+44]
 00516ADD    call        TPen.SetColor
 00516AE2    mov         eax,dword ptr [ebp-4]
 00516AE5    mov         eax,dword ptr [eax+8];TButtonStyleHook.FControl:TWinControl
 00516AE8    mov         edx,dword ptr [eax+58];TWinControl.FWidth:Integer
 00516AEB    sub         edx,0E
 00516AEE    mov         ecx,3
 00516AF3    mov         eax,dword ptr [ebp-8]
 00516AF6    mov         ebx,dword ptr [eax]
 00516AF8    call        dword ptr [ebx+64]
 00516AFB    mov         eax,dword ptr [ebp-4]
 00516AFE    mov         eax,dword ptr [eax+8];TButtonStyleHook.FControl:TWinControl
 00516B01    mov         ecx,dword ptr [eax+5C];TWinControl.FHeight:Integer
 00516B04    sub         ecx,3
 00516B07    mov         edx,dword ptr [eax+58];TWinControl.FWidth:Integer
 00516B0A    sub         edx,0E
 00516B0D    mov         eax,dword ptr [ebp-8]
 00516B10    mov         ebx,dword ptr [eax]
 00516B12    call        dword ptr [ebx+60]
 00516B15    mov         eax,dword ptr [ebp-8]
 00516B18    mov         eax,dword ptr [eax+40]
 00516B1B    mov         edx,dword ptr [eax+18]
 00516B1E    mov         eax,dword ptr [ebp-8]
 00516B21    mov         eax,dword ptr [eax+44]
 00516B24    call        TPen.SetColor
 00516B29    mov         eax,dword ptr [ebp-4]
 00516B2C    mov         eax,dword ptr [eax+8];TButtonStyleHook.FControl:TWinControl
 00516B2F    mov         esi,dword ptr [eax+58];TWinControl.FWidth:Integer
 00516B32    sub         esi,8
 00516B35    mov         eax,dword ptr [eax+5C];TWinControl.FHeight:Integer
 00516B38    sar         eax,1
>00516B3A    jns         00516B3F
 00516B3C    adc         eax,0
 00516B3F    inc         eax
 00516B40    mov         dword ptr [ebp-3C],eax
 00516B43    mov         ebx,3
 00516B48    mov         ecx,dword ptr [ebp-3C]
 00516B4B    sub         ecx,ebx
 00516B4D    mov         edx,esi
 00516B4F    sub         edx,ebx
 00516B51    mov         eax,dword ptr [ebp-8]
 00516B54    mov         edi,dword ptr [eax]
 00516B56    call        dword ptr [edi+64]
 00516B59    mov         ecx,dword ptr [ebp-3C]
 00516B5C    sub         ecx,ebx
 00516B5E    lea         edx,[ebx+esi+1]
 00516B62    mov         eax,dword ptr [ebp-8]
 00516B65    mov         edi,dword ptr [eax]
 00516B67    call        dword ptr [edi+60]
 00516B6A    dec         ebx
 00516B6B    cmp         ebx,0FFFFFFFF
>00516B6E    jne         00516B48
>00516B70    jmp         00516BDA
 00516B72    mov         eax,dword ptr [ebp-4]
 00516B75    mov         ebx,dword ptr [eax+8];TButtonStyleHook.FControl:TWinControl
 00516B78    mov         eax,ebx
 00516B7A    mov         edx,dword ptr ds:[4FE868];TCustomButton
 00516B80    call        @IsClass
 00516B85    test        al,al
>00516B87    je          00516BB7
 00516B89    cmp         byte ptr [ebx+291],0
>00516B90    je          00516BB7
 00516B92    mov         eax,dword ptr [ebp-18]
 00516B95    push        eax
 00516B96    lea         eax,[ebp-6C]
 00516B99    push        eax
 00516B9A    mov         eax,ebx
 00516B9C    mov         edx,15
 00516BA1    call        TControl.DrawTextBiDiModeFlags
 00516BA6    push        eax
 00516BA7    lea         ecx,[ebp-14]
 00516BAA    mov         edx,dword ptr [ebp-8]
 00516BAD    mov         eax,dword ptr [ebp-4]
 00516BB0    call        TStyleHook.DrawControlText
>00516BB5    jmp         00516BDA
 00516BB7    mov         eax,dword ptr [ebp-18]
 00516BBA    push        eax
 00516BBB    lea         eax,[ebp-6C]
 00516BBE    push        eax
 00516BBF    mov         eax,ebx
 00516BC1    mov         edx,5
 00516BC6    call        TControl.DrawTextBiDiModeFlags
 00516BCB    push        eax
 00516BCC    lea         ecx,[ebp-14]
 00516BCF    mov         edx,dword ptr [ebp-8]
 00516BD2    mov         eax,dword ptr [ebp-4]
 00516BD5    call        TStyleHook.DrawControlText
 00516BDA    xor         eax,eax
 00516BDC    pop         edx
 00516BDD    pop         ecx
 00516BDE    pop         ecx
 00516BDF    mov         dword ptr fs:[eax],edx
 00516BE2    push        516C07
 00516BE7    lea         eax,[ebp-0A0]
 00516BED    call        @UStrClr
 00516BF2    lea         eax,[ebp-1C]
 00516BF5    mov         edx,2
 00516BFA    call        @UStrArrayClr
 00516BFF    ret
>00516C00    jmp         @HandleFinally
>00516C05    jmp         00516BE7
 00516C07    pop         edi
 00516C08    pop         esi
 00516C09    pop         ebx
 00516C0A    mov         esp,ebp
 00516C0C    pop         ebp
 00516C0D    ret
end;*}

//00516C14
{*function sub_00516C14(?:?):?;
begin
 00516C14    push        ebx
 00516C15    push        esi
 00516C16    push        edi
 00516C17    mov         esi,edx
 00516C19    mov         edi,eax
 00516C1B    mov         eax,edi
 00516C1D    call        00515E44
 00516C22    test        al,al
>00516C24    je          00516C3E
 00516C26    cmp         byte ptr [edi+29],0;TButtonStyleHook.FPressed:Boolean
>00516C2A    jne         00516C3E
 00516C2C    cmp         byte ptr [edi+2B],0;TButtonStyleHook.FDropDown:Boolean
>00516C30    jne         00516C3E
 00516C32    mov         eax,dword ptr [edi+8];TButtonStyleHook.FControl:TWinControl
 00516C35    mov         edx,dword ptr [eax]
 00516C37    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 00516C3A    test        al,al
>00516C3C    jne         00516C42
 00516C3E    xor         ebx,ebx
>00516C40    jmp         00516C5F
 00516C42    mov         bl,1
 00516C44    push        esi
 00516C45    mov         eax,edi
 00516C47    call        TStyleHook.GetHandle
 00516C4C    push        eax
 00516C4D    call        004D42FC
 00516C52    test        eax,eax
>00516C54    jne         00516C5F
 00516C56    mov         edx,esi
 00516C58    mov         eax,edi
 00516C5A    call        00515E80
 00516C5F    mov         eax,ebx
 00516C61    pop         edi
 00516C62    pop         esi
 00516C63    pop         ebx
 00516C64    ret
end;*}

//00516C68
procedure sub_00516C68;
begin
{*
 00516C68    push        ebx
 00516C69    movzx       ecx,byte ptr [eax+24];TButtonStyleHook.FMouseInControl:Boolean
 00516C6D    mov         ebx,dword ptr [eax]
 00516C6F    call        dword ptr [ebx+40];TButtonStyleHook.sub_00516204
 00516C72    pop         ebx
 00516C73    ret
*}
end;

//00516C74
procedure sub_00516C74(?:TButtonStyleHook);
begin
{*
 00516C74    push        ebp
 00516C75    mov         ebp,esp
 00516C77    add         esp,0FFFFFFF0
 00516C7A    push        ebx
 00516C7B    mov         ebx,eax
 00516C7D    mov         word ptr [ebp-0A],0
 00516C83    mov         eax,ebx
 00516C85    call        TStyleHook.GetHandle
 00516C8A    push        eax
 00516C8B    call        user32.GetDlgCtrlID
 00516C90    mov         word ptr [ebp-0C],ax
 00516C94    mov         eax,ebx
 00516C96    call        TStyleHook.GetHandle
 00516C9B    mov         dword ptr [ebp-8],eax
 00516C9E    mov         eax,dword ptr [ebp-8]
 00516CA1    push        eax
 00516CA2    mov         eax,dword ptr [ebp-0C]
 00516CA5    push        eax
 00516CA6    push        111
 00516CAB    mov         eax,dword ptr [ebx+8]
 00516CAE    mov         eax,dword ptr [eax+40]
 00516CB1    call        TWinControl.GetHandle
 00516CB6    push        eax
 00516CB7    call        user32.SendMessageW
 00516CBC    pop         ebx
 00516CBD    mov         esp,ebp
 00516CBF    pop         ebp
 00516CC0    ret
*}
end;

//00516CC4
procedure TButtonStyleHook.WMSetFocus(Message:Messages.TMessage);
begin
{*
 00516CC4    push        ebx
 00516CC5    push        esi
 00516CC6    mov         esi,edx
 00516CC8    mov         ebx,eax
 00516CCA    mov         edx,esi
 00516CCC    mov         eax,ebx
 00516CCE    call        TStyleHook.WMSetFocus
 00516CD3    xor         edx,edx
 00516CD5    mov         eax,ebx
 00516CD7    call        0058D3E4
 00516CDC    mov         edx,esi
 00516CDE    mov         eax,ebx
 00516CE0    call        TStyleHook.CallDefaultProc
 00516CE5    mov         dl,1
 00516CE7    mov         eax,ebx
 00516CE9    call        0058D3E4
 00516CEE    mov         eax,ebx
 00516CF0    mov         edx,dword ptr [eax]
 00516CF2    call        dword ptr [edx+28];TStyleHook.Invalidate
 00516CF5    mov         byte ptr [ebx+14],1;TButtonStyleHook.FHandled:Boolean
 00516CF9    pop         esi
 00516CFA    pop         ebx
 00516CFB    ret
*}
end;

//00516CFC
{*procedure sub_00516CFC(?:?);
begin
 00516CFC    push        ebx
 00516CFD    push        esi
 00516CFE    push        edi
 00516CFF    mov         esi,edx
 00516D01    mov         edi,eax
 00516D03    xor         ebx,ebx
 00516D05    mov         eax,edi
 00516D07    call        00515E44
 00516D0C    test        al,al
>00516D0E    je          00516D54
 00516D10    mov         eax,dword ptr [esi]
 00516D12    sub         eax,5
>00516D15    je          00516D47
 00516D17    add         eax,0FFFFFE04
 00516D1C    sub         eax,4
>00516D1F    jb          00516D47
 00516D21    sub         eax,0AE02
>00516D26    je          00516D47
 00516D28    sub         eax,5
>00516D2B    jne         00516D54
 00516D2D    mov         eax,edi
 00516D2F    call        TStyleHook.GetHandle
 00516D34    push        eax
 00516D35    call        004D42B4
 00516D3A    mov         bl,1
 00516D3C    xor         edx,edx
 00516D3E    mov         eax,edi
 00516D40    call        0058D3E4
>00516D45    jmp         00516D54
 00516D47    mov         eax,edi
 00516D49    call        TStyleHook.GetHandle
 00516D4E    push        eax
 00516D4F    call        004D42B4
 00516D54    mov         edx,esi
 00516D56    mov         eax,edi
 00516D58    call        0058DB4C
 00516D5D    mov         eax,dword ptr [esi]
 00516D5F    sub         eax,0B007
>00516D64    je          00516DF8
 00516D6A    sub         eax,5
>00516D6D    je          00516D79
 00516D6F    sub         eax,6
>00516D72    je          00516DC3
>00516D74    jmp         00516E3E
 00516D79    test        bl,bl
>00516D7B    je          00516D86
 00516D7D    mov         dl,1
 00516D7F    mov         eax,edi
 00516D81    call        0058D3E4
 00516D86    mov         eax,dword ptr [edi+8];TButtonStyleHook.FControl:TWinControl
 00516D89    call        TWinControl.HandleAllocated
 00516D8E    test        al,al
>00516D90    je          00516E3E
 00516D96    mov         eax,edi
 00516D98    call        TStyleHook.GetHandle
 00516D9D    push        eax
 00516D9E    call        user32.IsWindowVisible
 00516DA3    test        eax,eax
>00516DA5    je          00516E3E
 00516DAB    push        101
 00516DB0    push        0
 00516DB2    push        0
 00516DB4    mov         eax,edi
 00516DB6    call        TStyleHook.GetHandle
 00516DBB    push        eax
 00516DBC    call        user32.RedrawWindow
>00516DC1    jmp         00516E3E
 00516DC3    mov         eax,dword ptr [edi+8];TButtonStyleHook.FControl:TWinControl
 00516DC6    call        TWinControl.HandleAllocated
 00516DCB    test        al,al
>00516DCD    je          00516E3E
 00516DCF    mov         eax,edi
 00516DD1    call        TStyleHook.GetHandle
 00516DD6    push        eax
 00516DD7    call        user32.IsWindowVisible
 00516DDC    test        eax,eax
>00516DDE    je          00516E3E
 00516DE0    push        101
 00516DE5    push        0
 00516DE7    push        0
 00516DE9    mov         eax,edi
 00516DEB    call        TStyleHook.GetHandle
 00516DF0    push        eax
 00516DF1    call        user32.RedrawWindow
>00516DF6    jmp         00516E3E
 00516DF8    mov         eax,edi
 00516DFA    call        00515E44
 00516DFF    test        al,al
>00516E01    je          00516E3E
 00516E03    mov         eax,dword ptr [esi+8]
 00516E06    cmp         eax,dword ptr [edi+8];TButtonStyleHook.FControl:TWinControl
>00516E09    jne         00516E3E
 00516E0B    mov         eax,dword ptr [edi+8];TButtonStyleHook.FControl:TWinControl
 00516E0E    call        TWinControl.HandleAllocated
 00516E13    test        al,al
>00516E15    je          00516E3E
 00516E17    mov         eax,edi
 00516E19    call        TStyleHook.GetHandle
 00516E1E    push        eax
 00516E1F    call        user32.IsWindowVisible
 00516E24    test        eax,eax
>00516E26    je          00516E3E
 00516E28    push        101
 00516E2D    push        0
 00516E2F    push        0
 00516E31    mov         eax,edi
 00516E33    call        TStyleHook.GetHandle
 00516E38    push        eax
 00516E39    call        user32.RedrawWindow
 00516E3E    pop         edi
 00516E3F    pop         esi
 00516E40    pop         ebx
 00516E41    ret
end;*}

//00516E44
procedure TButtonStyleHook.WMKillFocus(Message:Messages.TMessage);
begin
{*
 00516E44    push        ebx
 00516E45    push        esi
 00516E46    mov         esi,edx
 00516E48    mov         ebx,eax
 00516E4A    mov         edx,esi
 00516E4C    mov         eax,ebx
 00516E4E    call        TStyleHook.WMKillFocus
 00516E53    xor         edx,edx
 00516E55    mov         eax,ebx
 00516E57    call        0058D3E4
 00516E5C    mov         edx,esi
 00516E5E    mov         eax,ebx
 00516E60    call        TStyleHook.CallDefaultProc
 00516E65    mov         dl,1
 00516E67    mov         eax,ebx
 00516E69    call        0058D3E4
 00516E6E    mov         eax,ebx
 00516E70    mov         edx,dword ptr [eax]
 00516E72    call        dword ptr [edx+28];TStyleHook.Invalidate
 00516E75    mov         byte ptr [ebx+14],1;TButtonStyleHook.FHandled:Boolean
 00516E79    pop         esi
 00516E7A    pop         ebx
 00516E7B    ret
*}
end;

//00516E7C
{*procedure TButtonStyleHook.WMKeyDown(?:?);
begin
 00516E7C    push        esi
 00516E7D    mov         esi,eax
 00516E7F    cmp         dword ptr [edx+4],20
>00516E83    jne         00516E94
 00516E85    mov         byte ptr [esi+29],1;TButtonStyleHook.FPressed:Boolean
 00516E89    mov         byte ptr [esi+24],1;TButtonStyleHook.FMouseInControl:Boolean
 00516E8D    mov         eax,esi
 00516E8F    mov         edx,dword ptr [eax]
 00516E91    call        dword ptr [edx+28];TStyleHook.Invalidate
 00516E94    pop         esi
 00516E95    ret
end;*}

//00516E98
{*procedure TButtonStyleHook.WMKeyUp(?:?);
begin
 00516E98    push        ebx
 00516E99    push        esi
 00516E9A    add         esp,0FFFFFFF8
 00516E9D    mov         esi,eax
 00516E9F    cmp         dword ptr [edx+4],20
>00516EA3    jne         00516EDC
 00516EA5    mov         byte ptr [esi+29],0;TButtonStyleHook.FPressed:Boolean
 00516EA9    mov         edx,esp
 00516EAB    mov         eax,[007C4DA0];^gvar_007CA5D4
 00516EB0    mov         eax,dword ptr [eax]
 00516EB2    call        TMouse.GetCursorPos
 00516EB7    push        dword ptr [esp+4]
 00516EBB    push        dword ptr [esp+4]
 00516EBF    call        user32.WindowFromPoint
 00516EC4    mov         ebx,eax
 00516EC6    mov         eax,esi
 00516EC8    call        TStyleHook.GetHandle
 00516ECD    cmp         ebx,eax
 00516ECF    sete        al
 00516ED2    mov         byte ptr [esi+24],al;TButtonStyleHook.FMouseInControl:Boolean
 00516ED5    mov         eax,esi
 00516ED7    mov         edx,dword ptr [eax]
 00516ED9    call        dword ptr [edx+28];TStyleHook.Invalidate
 00516EDC    pop         ecx
 00516EDD    pop         edx
 00516EDE    pop         esi
 00516EDF    pop         ebx
 00516EE0    ret
end;*}

//00516EE4
{*procedure TButtonStyleHook.sub_00516EE4(?:?);
begin
 00516EE4    push        ebx
 00516EE5    push        esi
 00516EE6    mov         esi,edx
 00516EE8    mov         ebx,eax
 00516EEA    mov         eax,dword ptr [esi+8]
 00516EED    cmp         dword ptr [eax+8],0FFFFFB20
>00516EF4    jne         00516F43
 00516EF6    mov         byte ptr [ebx+2B],1;TButtonStyleHook.FDropDown:Boolean
 00516EFA    mov         dl,1
 00516EFC    mov         eax,ebx
 00516EFE    call        0058D3E4
 00516F03    push        101
 00516F08    push        0
 00516F0A    push        0
 00516F0C    mov         eax,ebx
 00516F0E    call        TStyleHook.GetHandle
 00516F13    push        eax
 00516F14    call        user32.RedrawWindow
 00516F19    xor         edx,edx
 00516F1B    mov         eax,ebx
 00516F1D    call        0058D3E4
 00516F22    mov         edx,esi
 00516F24    mov         eax,ebx
 00516F26    call        TStyleHook.CallDefaultProc
 00516F2B    mov         dl,1
 00516F2D    mov         eax,ebx
 00516F2F    call        0058D3E4
 00516F34    mov         byte ptr [ebx+2B],0;TButtonStyleHook.FDropDown:Boolean
 00516F38    mov         eax,ebx
 00516F3A    mov         edx,dword ptr [eax]
 00516F3C    call        dword ptr [edx+28];TStyleHook.Invalidate
 00516F3F    mov         byte ptr [ebx+14],1;TButtonStyleHook.FHandled:Boolean
 00516F43    pop         esi
 00516F44    pop         ebx
 00516F45    ret
end;*}

//00516F48
procedure TButtonStyleHook.WMLButtonDblClk;
begin
{*
 00516F48    push        ebx
 00516F49    mov         ebx,eax
 00516F4B    mov         eax,ebx
 00516F4D    call        TButtonStyleHook.WMLButtonDown
 00516F52    mov         byte ptr [ebx+14],1;TButtonStyleHook.FHandled:Boolean
 00516F56    pop         ebx
 00516F57    ret
*}
end;

//00516F58
{*procedure TButtonStyleHook.WMLButtonDown(?:?);
begin
 00516F58    push        ebx
 00516F59    push        esi
 00516F5A    mov         esi,edx
 00516F5C    mov         ebx,eax
 00516F5E    mov         eax,dword ptr [ebx+8];TButtonStyleHook.FControl:TWinControl
 00516F61    call        TGroupBox.GetDragMode
 00516F66    cmp         al,1
>00516F68    jne         00516F8B
 00516F6A    xor         edx,edx
 00516F6C    mov         eax,ebx
 00516F6E    call        0058D3E4
 00516F73    mov         edx,esi
 00516F75    mov         eax,ebx
 00516F77    call        TStyleHook.CallDefaultProc
 00516F7C    mov         dl,1
 00516F7E    mov         eax,ebx
 00516F80    call        0058D3E4
 00516F85    mov         byte ptr [ebx+14],1;TButtonStyleHook.FHandled:Boolean
>00516F89    jmp         00516FFD
 00516F8B    mov         eax,ebx
 00516F8D    call        TStyleHook.GetHandle
 00516F92    push        0F0
 00516F94    push        eax
 00516F95    call        user32.GetWindowLongW
 00516F9A    and         eax,0C
 00516F9D    cmp         eax,0C
>00516FA0    jne         00516FB6
 00516FA2    movsx       eax,word ptr [esi+8]
 00516FA6    mov         edx,dword ptr [ebx+8];TButtonStyleHook.FControl:TWinControl
 00516FA9    mov         edx,dword ptr [edx+58];TWinControl.FWidth:Integer
 00516FAC    sub         edx,0F
 00516FAF    cmp         eax,edx
 00516FB1    setge       al
>00516FB4    jmp         00516FB8
 00516FB6    xor         eax,eax
 00516FB8    test        al,al
>00516FBA    je          00516FCB
 00516FBC    mov         eax,dword ptr [ebx+8];TButtonStyleHook.FControl:TWinControl
 00516FBF    cmp         dword ptr [eax+2A8],0
 00516FC6    setne       al
>00516FC9    jmp         00516FCD
 00516FCB    xor         eax,eax
 00516FCD    test        al,al
>00516FCF    je          00516FD7
 00516FD1    mov         byte ptr [ebx+14],0;TButtonStyleHook.FHandled:Boolean
>00516FD5    jmp         00516FFD
 00516FD7    mov         eax,ebx
 00516FD9    call        TStyleHook.GetHandle
 00516FDE    push        eax
 00516FDF    call        user32.SetFocus
 00516FE4    mov         eax,ebx
 00516FE6    call        TStyleHook.GetHandle
 00516FEB    push        eax
 00516FEC    call        user32.SetCapture
 00516FF1    mov         byte ptr [ebx+29],1;TButtonStyleHook.FPressed:Boolean
 00516FF5    mov         byte ptr [ebx+2A],1;TButtonStyleHook.FMouseDown:Boolean
 00516FF9    mov         byte ptr [ebx+14],0;TButtonStyleHook.FHandled:Boolean
 00516FFD    mov         eax,ebx
 00516FFF    mov         edx,dword ptr [eax]
 00517001    call        dword ptr [edx+28];TStyleHook.Invalidate
 00517004    pop         esi
 00517005    pop         ebx
 00517006    ret
end;*}

//00517008
procedure TButtonStyleHook.WMLButtonUp;
begin
{*
 00517008    push        ebx
 00517009    mov         ebx,eax
 0051700B    mov         eax,dword ptr [ebx+8];TButtonStyleHook.FControl:TWinControl
 0051700E    call        TGroupBox.GetDragMode
 00517013    cmp         al,1
>00517015    je          0051701C
 00517017    call        user32.ReleaseCapture
 0051701C    mov         byte ptr [ebx+2A],0;TButtonStyleHook.FMouseDown:Boolean
 00517020    cmp         byte ptr [ebx+29],0;TButtonStyleHook.FPressed:Boolean
>00517024    je          00517038
 00517026    mov         byte ptr [ebx+29],0;TButtonStyleHook.FPressed:Boolean
 0051702A    mov         eax,ebx
 0051702C    mov         edx,dword ptr [eax]
 0051702E    call        dword ptr [edx+28];TStyleHook.Invalidate
 00517031    mov         eax,ebx
 00517033    call        00516C74
 00517038    pop         ebx
 00517039    ret
*}
end;

//0051703C
{*procedure TButtonStyleHook.WMMouseMove(?:?);
begin
 0051703C    push        ebx
 0051703D    push        esi
 0051703E    mov         esi,edx
 00517040    mov         ebx,eax
 00517042    mov         edx,esi
 00517044    mov         eax,ebx
 00517046    call        TMouseTrackControlStyleHook.WMMouseMove
 0051704B    mov         edx,esi
 0051704D    mov         eax,ebx
 0051704F    call        TStyleHook.CallDefaultProc
 00517054    cmp         byte ptr [ebx+2A],0;TButtonStyleHook.FMouseDown:Boolean
>00517058    je          00517070
 0051705A    mov         eax,ebx
 0051705C    call        TMouseTrackControlStyleHook.IsMouseInControl
 00517061    cmp         al,byte ptr [ebx+29];TButtonStyleHook.FPressed:Boolean
>00517064    je          00517070
 00517066    mov         byte ptr [ebx+29],al;TButtonStyleHook.FPressed:Boolean
 00517069    mov         eax,ebx
 0051706B    mov         edx,dword ptr [eax]
 0051706D    call        dword ptr [edx+28];TStyleHook.Invalidate
 00517070    mov         byte ptr [ebx+14],1;TButtonStyleHook.FHandled:Boolean
 00517074    pop         esi
 00517075    pop         ebx
 00517076    ret
end;*}

//00517078
procedure sub_00517078;
begin
{*
 00517078    push        ebx
 00517079    mov         ebx,eax
 0051707B    mov         eax,ebx
 0051707D    call        0058DB44
 00517082    mov         eax,ebx
 00517084    mov         edx,dword ptr [eax]
 00517086    call        dword ptr [edx+28];TStyleHook.Invalidate
 00517089    mov         byte ptr [ebx+14],1;TButtonStyleHook.FHandled:Boolean
 0051708D    pop         ebx
 0051708E    ret
*}
end;

//00517090
procedure sub_00517090;
begin
{*
 00517090    push        ebx
 00517091    mov         ebx,eax
 00517093    mov         eax,ebx
 00517095    call        0058DB48
 0051709A    mov         eax,ebx
 0051709C    mov         edx,dword ptr [eax]
 0051709E    call        dword ptr [edx+28];TStyleHook.Invalidate
 005170A1    mov         byte ptr [ebx+14],1;TButtonStyleHook.FHandled:Boolean
 005170A5    pop         ebx
 005170A6    ret
*}
end;

//005170A8
{*procedure sub_005170A8(?:?; ?:?; ?:?);
begin
 005170A8    push        ebx
 005170A9    push        esi
 005170AA    push        edi
 005170AB    add         esp,0FFFFFFF0
 005170AE    mov         esi,edx
 005170B0    lea         edi,[esp]
 005170B3    movs        dword ptr [edi],dword ptr [esi]
 005170B4    movs        dword ptr [edi],dword ptr [esi]
 005170B5    movs        dword ptr [edi],dword ptr [esi]
 005170B6    movs        dword ptr [edi],dword ptr [esi]
 005170B7    mov         esi,ecx
 005170B9    mov         ebx,eax
 005170BB    mov         ecx,dword ptr [ebx+4]
 005170BE    neg         ecx
 005170C0    mov         edx,dword ptr [ebx]
 005170C2    neg         edx
 005170C4    mov         eax,ebx
 005170C6    call        OffsetRect
 005170CB    mov         eax,esp
 005170CD    call        RectHeight
 005170D2    push        eax
 005170D3    mov         eax,ebx
 005170D5    call        RectHeight
 005170DA    pop         ecx
 005170DB    sub         ecx,eax
 005170DD    sar         ecx,1
>005170DF    jns         005170E4
 005170E1    adc         ecx,0
 005170E4    mov         eax,ebx
 005170E6    xor         edx,edx
 005170E8    call        OffsetRect
 005170ED    mov         eax,ebx
 005170EF    mov         ecx,dword ptr [esp+4]
 005170F3    mov         edx,dword ptr [esp]
 005170F6    call        OffsetRect
 005170FB    mov         edi,esi
 005170FD    mov         esi,ebx
 005170FF    movs        dword ptr [edi],dword ptr [esi]
 00517100    movs        dword ptr [edi],dword ptr [esi]
 00517101    movs        dword ptr [edi],dword ptr [esi]
 00517102    movs        dword ptr [edi],dword ptr [esi]
 00517103    add         esp,10
 00517106    pop         edi
 00517107    pop         esi
 00517108    pop         ebx
 00517109    ret
end;*}

//0051710C
constructor TCheckBoxStyleHook.Create(AControl:TWinControl);
begin
{*
 0051710C    push        ebx
 0051710D    push        esi
 0051710E    test        dl,dl
>00517110    je          0051711A
 00517112    add         esp,0FFFFFFF0
 00517115    call        @ClassCreate
 0051711A    mov         ebx,edx
 0051711C    mov         esi,eax
 0051711E    xor         edx,edx
 00517120    mov         eax,esi
 00517122    call        TMouseTrackControlStyleHook.Create
 00517127    mov         byte ptr [esi+17],1;TCheckBoxStyleHook.FOverridePaint:Boolean
 0051712B    mov         byte ptr [esi+16],1;TCheckBoxStyleHook.FOverrideEraseBkgnd:Boolean
 0051712F    mov         byte ptr [esi+0D],1;TCheckBoxStyleHook.FDoubleBuffered:Boolean
 00517133    mov         eax,esi
 00517135    test        bl,bl
>00517137    je          00517148
 00517139    call        @AfterConstruction
 0051713E    pop         dword ptr fs:[0]
 00517145    add         esp,0C
 00517148    mov         eax,esi
 0051714A    pop         esi
 0051714B    pop         ebx
 0051714C    ret
*}
end;

//00517150
function sub_00517150(?:TCheckBoxStyleHook):Boolean;
begin
{*
 00517150    mov         edx,dword ptr [eax+8]
 00517153    cmp         byte ptr [edx+71],1
>00517157    jne         0051715C
 00517159    mov         al,1
 0051715B    ret
 0051715C    call        TStyleHook.GetHandle
 00517161    push        0F0
 00517163    push        eax
 00517164    call        user32.GetWindowLongW
 00517169    and         eax,20
 0051716C    cmp         eax,20
 0051716F    sete        al
 00517172    ret
*}
end;

//00517174
{*function sub_00517174(?:?):?;
begin
 00517174    push        ebx
 00517175    push        esi
 00517176    push        ecx
 00517177    mov         byte ptr [esp],dl
 0051717A    mov         esi,eax
 0051717C    xor         ebx,ebx
 0051717E    mov         eax,dword ptr [esi+8];TCheckBoxStyleHook.FControl:TWinControl
 00517181    mov         edx,dword ptr [eax]
 00517183    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 00517186    test        al,al
>00517188    jne         005171A6
 0051718A    movzx       eax,byte ptr [esp]
 0051718E    sub         al,1
>00517190    jb          0051719A
>00517192    je          0051719E
 00517194    dec         al
>00517196    je          005171A2
>00517198    jmp         0051720A
 0051719A    mov         bl,13
>0051719C    jmp         0051720A
 0051719E    mov         bl,17
>005171A0    jmp         0051720A
 005171A2    mov         bl,1B
>005171A4    jmp         0051720A
 005171A6    cmp         byte ptr [esi+28],0;TCheckBoxStyleHook......FPressed:Boolean
>005171AA    je          005171CE
 005171AC    cmp         byte ptr [esi+24],0;TCheckBoxStyleHook.FMouseInControl:Boolean
>005171B0    je          005171CE
 005171B2    movzx       eax,byte ptr [esp]
 005171B6    sub         al,1
>005171B8    jb          005171C2
>005171BA    je          005171C6
 005171BC    dec         al
>005171BE    je          005171CA
>005171C0    jmp         0051720A
 005171C2    mov         bl,12
>005171C4    jmp         0051720A
 005171C6    mov         bl,16
>005171C8    jmp         0051720A
 005171CA    mov         bl,1A
>005171CC    jmp         0051720A
 005171CE    cmp         byte ptr [esi+24],0;TCheckBoxStyleHook.FMouseInControl:Boolean
>005171D2    je          005171F0
 005171D4    movzx       eax,byte ptr [esp]
 005171D8    sub         al,1
>005171DA    jb          005171E4
>005171DC    je          005171E8
 005171DE    dec         al
>005171E0    je          005171EC
>005171E2    jmp         0051720A
 005171E4    mov         bl,11
>005171E6    jmp         0051720A
 005171E8    mov         bl,15
>005171EA    jmp         0051720A
 005171EC    mov         bl,19
>005171EE    jmp         0051720A
 005171F0    movzx       eax,byte ptr [esp]
 005171F4    sub         al,1
>005171F6    jb          00517200
>005171F8    je          00517204
 005171FA    dec         al
>005171FC    je          00517208
>005171FE    jmp         0051720A
 00517200    mov         bl,10
>00517202    jmp         0051720A
 00517204    mov         bl,14
>00517206    jmp         0051720A
 00517208    mov         bl,18
 0051720A    mov         eax,ebx
 0051720C    pop         edx
 0051720D    pop         esi
 0051720E    pop         ebx
 0051720F    ret
end;*}

//00517210
{*procedure sub_00517210(?:?);
begin
 00517210    push        ebp
 00517211    mov         ebp,esp
 00517213    add         esp,0FFFFFF84
 00517216    push        ebx
 00517217    push        esi
 00517218    push        edi
 00517219    xor         ecx,ecx
 0051721B    mov         dword ptr [ebp-4],ecx
 0051721E    mov         edi,edx
 00517220    mov         ebx,eax
 00517222    xor         eax,eax
 00517224    push        ebp
 00517225    push        5175E2
 0051722A    push        dword ptr fs:[eax]
 0051722D    mov         dword ptr fs:[eax],esp
 00517230    call        StyleServices
 00517235    mov         edx,dword ptr [eax]
 00517237    call        dword ptr [edx+48];@AbstractError
 0051723A    test        al,al
>0051723C    je          005175CC
 00517242    push        0
 00517244    push        0
 00517246    push        0F0
 0051724B    mov         eax,ebx
 0051724D    call        TStyleHook.GetHandle
 00517252    push        eax
 00517253    call        user32.SendMessageW
 00517258    mov         byte ptr [ebp-5],al
 0051725B    movzx       edx,byte ptr [ebp-5]
 0051725F    mov         eax,ebx
 00517261    mov         ecx,dword ptr [eax]
 00517263    call        dword ptr [ecx+40];TCheckBoxStyleHook.sub_00517174
 00517266    push        eax
 00517267    call        StyleServices
 0051726C    lea         ecx,[ebp-30]
 0051726F    pop         edx
 00517270    mov         esi,dword ptr [eax]
 00517272    call        dword ptr [esi+5C];TCustomStyleServices.GetElementDetails
 00517275    mov         esi,dword ptr [ebx+8];TCheckBoxStyleHook.FControl:TWinControl
 00517278    mov         eax,esi
 0051727A    mov         edx,dword ptr ds:[4FFCDC];TCustomCheckBox
 00517280    call        @IsClass
 00517285    test        al,al
>00517287    je          00517295
 00517289    movzx       eax,byte ptr [esi+291]
 00517290    mov         byte ptr [ebp-15],al
>00517293    jmp         005172B6
 00517295    mov         eax,esi
 00517297    mov         edx,dword ptr ds:[5009D8];TRadioButton
 0051729D    call        @IsClass
 005172A2    test        al,al
>005172A4    je          005172B2
 005172A6    movzx       eax,byte ptr [esi+291]
 005172AD    mov         byte ptr [ebp-15],al
>005172B0    jmp         005172B6
 005172B2    mov         byte ptr [ebp-15],0
 005172B6    mov         dword ptr [ebp-0C],3
 005172BD    push        14
 005172BF    lea         eax,[ebp-50]
 005172C2    push        eax
 005172C3    mov         ecx,14
 005172C8    xor         edx,edx
 005172CA    xor         eax,eax
 005172CC    call        Rect
 005172D1    mov         byte ptr [ebp-16],1
 005172D5    lea         edx,[ebp-40]
 005172D8    mov         eax,dword ptr [ebx+8];TCheckBoxStyleHook.FControl:TWinControl
 005172DB    mov         ecx,dword ptr [eax]
 005172DD    call        dword ptr [ecx+64];TWinControl.GetClientRect
 005172E0    call        StyleServices
 005172E5    mov         dword ptr [ebp-1C],eax
 005172E8    lea         eax,[ebp-50]
 005172EB    push        eax
 005172EC    movzx       eax,byte ptr [ebp-16]
 005172F0    push        eax
 005172F1    lea         eax,[ebp-14]
 005172F4    push        eax
 005172F5    lea         ecx,[ebp-5C]
 005172F8    mov         dl,14
 005172FA    mov         eax,dword ptr [ebp-1C]
 005172FD    mov         esi,dword ptr [eax]
 005172FF    call        dword ptr [esi+5C];TCustomStyleServices.GetElementDetails
 00517302    lea         eax,[ebp-5C]
 00517305    push        eax
 00517306    mov         eax,edi
 00517308    call        TCanvas.GetHandle
 0051730D    mov         edx,eax
 0051730F    mov         eax,dword ptr [ebp-1C]
 00517312    pop         ecx
 00517313    call        TCustomStyleServices.GetElementSize
 00517318    test        al,al
>0051731A    jne         0051732A
 0051731C    mov         dword ptr [ebp-14],0D
 00517323    mov         dword ptr [ebp-10],0D
 0051732A    mov         eax,ebx
 0051732C    call        00517150
 00517331    test        al,al
>00517333    jne         00517370
 00517335    mov         eax,dword ptr [ebp-10]
 00517338    push        eax
 00517339    lea         eax,[ebp-40]
 0051733C    push        eax
 0051733D    mov         ecx,dword ptr [ebp-14]
 00517340    xor         edx,edx
 00517342    xor         eax,eax
 00517344    call        Rect
 00517349    mov         esi,dword ptr [ebx+8];TCheckBoxStyleHook.FControl:TWinControl
 0051734C    mov         eax,dword ptr [esi+5C];TWinControl.FHeight:Integer
 0051734F    push        eax
 00517350    lea         eax,[ebp-7C]
 00517353    push        eax
 00517354    mov         ecx,dword ptr [esi+58];TWinControl.FWidth:Integer
 00517357    xor         edx,edx
 00517359    xor         eax,eax
 0051735B    call        Rect
 00517360    lea         edx,[ebp-7C]
 00517363    lea         ecx,[ebp-6C]
 00517366    lea         eax,[ebp-40]
 00517369    call        005170A8
>0051736E    jmp         005173B6
 00517370    mov         esi,dword ptr [ebx+8];TCheckBoxStyleHook.FControl:TWinControl
 00517373    mov         eax,dword ptr [esi+5C];TWinControl.FHeight:Integer
 00517376    push        eax
 00517377    lea         eax,[ebp-40]
 0051737A    push        eax
 0051737B    mov         ecx,dword ptr [esi+58];TWinControl.FWidth:Integer
 0051737E    mov         eax,dword ptr [esi+58];TWinControl.FWidth:Integer
 00517381    sub         eax,dword ptr [ebp-14]
 00517384    dec         eax
 00517385    xor         edx,edx
 00517387    call        Rect
 0051738C    mov         esi,dword ptr [ebx+8];TCheckBoxStyleHook.FControl:TWinControl
 0051738F    mov         eax,dword ptr [esi+5C];TWinControl.FHeight:Integer
 00517392    push        eax
 00517393    lea         eax,[ebp-7C]
 00517396    push        eax
 00517397    mov         ecx,dword ptr [esi+58];TWinControl.FWidth:Integer
 0051739A    mov         eax,dword ptr [esi+58];TWinControl.FWidth:Integer
 0051739D    sub         eax,dword ptr [ebp-10]
 005173A0    dec         eax
 005173A1    xor         edx,edx
 005173A3    call        Rect
 005173A8    lea         edx,[ebp-7C]
 005173AB    lea         ecx,[ebp-6C]
 005173AE    lea         eax,[ebp-40]
 005173B1    call        005170A8
 005173B6    lea         eax,[ebp-40]
 005173B9    push        eax
 005173BA    push        0
 005173BC    mov         eax,edi
 005173BE    call        TCanvas.GetHandle
 005173C3    push        eax
 005173C4    call        StyleServices
 005173C9    lea         ecx,[ebp-30]
 005173CC    pop         edx
 005173CD    call        TCustomStyleServices.DrawElement
 005173D2    mov         eax,dword ptr [ebx+8];TCheckBoxStyleHook.FControl:TWinControl
 005173D5    mov         edx,dword ptr [eax+74];TWinControl.FFont:TFont
 005173D8    mov         eax,edi
 005173DA    call        TCanvas.SetFont
 005173DF    mov         esi,dword ptr [ebx+8];TCheckBoxStyleHook.FControl:TWinControl
 005173E2    mov         eax,dword ptr [esi+5C];TWinControl.FHeight:Integer
 005173E5    push        eax
 005173E6    lea         eax,[ebp-40]
 005173E9    push        eax
 005173EA    mov         ecx,dword ptr [esi+58];TWinControl.FWidth:Integer
 005173ED    sub         ecx,dword ptr [ebp-14]
 005173F0    sub         ecx,0A
 005173F3    xor         edx,edx
 005173F5    xor         eax,eax
 005173F7    call        Rect
 005173FC    lea         edx,[ebp-4]
 005173FF    mov         eax,ebx
 00517401    call        TStyleHook.GetText
 00517406    cmp         byte ptr [ebp-15],0
>0051740A    je          00517449
 0051740C    mov         eax,edi
 0051740E    call        TCanvas.GetHandle
 00517413    mov         dword ptr [ebp-20],eax
 00517416    mov         esi,dword ptr [ebp-4]
 00517419    test        esi,esi
>0051741B    je          00517422
 0051741D    sub         esi,4
 00517420    mov         esi,dword ptr [esi]
 00517422    mov         edx,450
 00517427    mov         eax,dword ptr [ebx+8];TCheckBoxStyleHook.FControl:TWinControl
 0051742A    call        TControl.DrawTextBiDiModeFlags
 0051742F    push        eax
 00517430    lea         eax,[ebp-40]
 00517433    push        eax
 00517434    push        esi
 00517435    mov         eax,dword ptr [ebp-4]
 00517438    call        @UStrToPWChar
 0051743D    push        eax
 0051743E    mov         eax,dword ptr [ebp-20]
 00517441    push        eax
 00517442    call        user32.DrawTextW
>00517447    jmp         00517484
 00517449    mov         eax,edi
 0051744B    call        TCanvas.GetHandle
 00517450    mov         dword ptr [ebp-24],eax
 00517453    mov         esi,dword ptr [ebp-4]
 00517456    test        esi,esi
>00517458    je          0051745F
 0051745A    sub         esi,4
 0051745D    mov         esi,dword ptr [esi]
 0051745F    mov         edx,440
 00517464    mov         eax,dword ptr [ebx+8];TCheckBoxStyleHook.FControl:TWinControl
 00517467    call        TControl.DrawTextBiDiModeFlags
 0051746C    push        eax
 0051746D    lea         eax,[ebp-40]
 00517470    push        eax
 00517471    push        esi
 00517472    mov         eax,dword ptr [ebp-4]
 00517475    call        @UStrToPWChar
 0051747A    push        eax
 0051747B    mov         eax,dword ptr [ebp-24]
 0051747E    push        eax
 0051747F    call        user32.DrawTextW
 00517484    mov         eax,ebx
 00517486    call        00517150
 0051748B    test        al,al
>0051748D    jne         005174BA
 0051748F    mov         esi,dword ptr [ebx+8];TCheckBoxStyleHook.FControl:TWinControl
 00517492    mov         eax,dword ptr [esi+5C];TWinControl.FHeight:Integer
 00517495    push        eax
 00517496    lea         eax,[ebp-7C]
 00517499    push        eax
 0051749A    mov         ecx,dword ptr [esi+58];TWinControl.FWidth:Integer
 0051749D    mov         eax,dword ptr [ebp-14]
 005174A0    add         eax,dword ptr [ebp-0C]
 005174A3    xor         edx,edx
 005174A5    call        Rect
 005174AA    lea         edx,[ebp-7C]
 005174AD    lea         ecx,[ebp-6C]
 005174B0    lea         eax,[ebp-40]
 005174B3    call        005170A8
>005174B8    jmp         00517522
 005174BA    mov         esi,dword ptr [ebx+8];TCheckBoxStyleHook.FControl:TWinControl
 005174BD    cmp         byte ptr [esi+71],1;TWinControl.FBiDiMode:TBiDiMode
>005174C1    je          005174F0
 005174C3    mov         eax,dword ptr [esi+5C];TWinControl.FHeight:Integer
 005174C6    push        eax
 005174C7    lea         eax,[ebp-7C]
 005174CA    push        eax
 005174CB    mov         ecx,dword ptr [esi+58];TWinControl.FWidth:Integer
 005174CE    sub         ecx,dword ptr [ebp-14]
 005174D1    sub         ecx,dword ptr [ebp-0C]
 005174D4    xor         edx,edx
 005174D6    mov         eax,3
 005174DB    call        Rect
 005174E0    lea         edx,[ebp-7C]
 005174E3    lea         ecx,[ebp-6C]
 005174E6    lea         eax,[ebp-40]
 005174E9    call        005170A8
>005174EE    jmp         00517522
 005174F0    mov         eax,dword ptr [esi+5C];TWinControl.FHeight:Integer
 005174F3    push        eax
 005174F4    lea         eax,[ebp-7C]
 005174F7    push        eax
 005174F8    mov         ecx,dword ptr [esi+58];TWinControl.FWidth:Integer
 005174FB    sub         ecx,dword ptr [ebp-14]
 005174FE    sub         ecx,dword ptr [ebp-0C]
 00517501    mov         eax,dword ptr [esi+58];TWinControl.FWidth:Integer
 00517504    sub         eax,dword ptr [ebp-14]
 00517507    sub         eax,dword ptr [ebp-0C]
 0051750A    sub         eax,dword ptr [ebp-38]
 0051750D    xor         edx,edx
 0051750F    call        Rect
 00517514    lea         edx,[ebp-7C]
 00517517    lea         ecx,[ebp-6C]
 0051751A    lea         eax,[ebp-40]
 0051751D    call        005170A8
 00517522    cmp         byte ptr [ebp-15],0
>00517526    je          0051754C
 00517528    mov         eax,dword ptr [ebp-4]
 0051752B    push        eax
 0051752C    lea         eax,[ebp-40]
 0051752F    push        eax
 00517530    mov         edx,54
 00517535    mov         eax,dword ptr [ebx+8];TCheckBoxStyleHook.FControl:TWinControl
 00517538    call        TControl.DrawTextBiDiModeFlags
 0051753D    push        eax
 0051753E    lea         ecx,[ebp-30]
 00517541    mov         edx,edi
 00517543    mov         eax,ebx
 00517545    call        TStyleHook.DrawControlText
>0051754A    jmp         0051756E
 0051754C    mov         eax,dword ptr [ebp-4]
 0051754F    push        eax
 00517550    lea         eax,[ebp-40]
 00517553    push        eax
 00517554    mov         edx,44
 00517559    mov         eax,dword ptr [ebx+8];TCheckBoxStyleHook.FControl:TWinControl
 0051755C    call        TControl.DrawTextBiDiModeFlags
 00517561    push        eax
 00517562    lea         ecx,[ebp-30]
 00517565    mov         edx,edi
 00517567    mov         eax,ebx
 00517569    call        TStyleHook.DrawControlText
 0051756E    mov         eax,dword ptr [ebx+8];TCheckBoxStyleHook.FControl:TWinControl
 00517571    mov         si,0FFB1
 00517575    call        @CallDynaInst;TWinControl.sub_004EFDB8
 0051757A    test        al,al
>0051757C    je          005175CC
 0051757E    lea         eax,[ebp-40]
 00517581    mov         ecx,1
 00517586    mov         edx,2
 0051758B    call        InflateRect
 00517590    cmp         dword ptr [ebp-3C],0
>00517594    jge         0051759B
 00517596    xor         eax,eax
 00517598    mov         dword ptr [ebp-3C],eax
 0051759B    mov         eax,dword ptr [ebx+8];TCheckBoxStyleHook.FControl:TWinControl
 0051759E    mov         eax,dword ptr [eax+5C];TWinControl.FHeight:Integer
 005175A1    cmp         eax,dword ptr [ebp-34]
>005175A4    jge         005175A9
 005175A6    mov         dword ptr [ebp-34],eax
 005175A9    call        StyleServices
 005175AE    mov         edx,0FF00000F
 005175B3    call        TCustomStyleServices.GetSystemColor
 005175B8    mov         edx,eax
 005175BA    mov         eax,dword ptr [edi+48]
 005175BD    call        TBrush.SetColor
 005175C2    lea         edx,[ebp-40]
 005175C5    mov         eax,edi
 005175C7    mov         ecx,dword ptr [eax]
 005175C9    call        dword ptr [ecx+4C]
 005175CC    xor         eax,eax
 005175CE    pop         edx
 005175CF    pop         ecx
 005175D0    pop         ecx
 005175D1    mov         dword ptr fs:[eax],edx
 005175D4    push        5175E9
 005175D9    lea         eax,[ebp-4]
 005175DC    call        @UStrClr
 005175E1    ret
>005175E2    jmp         @HandleFinally
>005175E7    jmp         005175D9
 005175E9    pop         edi
 005175EA    pop         esi
 005175EB    pop         ebx
 005175EC    mov         esp,ebp
 005175EE    pop         ebp
 005175EF    ret
end;*}

//005175F0
{*procedure sub_005175F0(?:?);
begin
 005175F0    push        ebx
 005175F1    push        esi
 005175F2    add         esp,0FFFFFFF4
 005175F5    mov         esi,edx
 005175F7    mov         ebx,eax
 005175F9    call        StyleServices
 005175FE    mov         edx,dword ptr [eax]
 00517600    call        dword ptr [edx+48];@AbstractError
 00517603    test        al,al
>00517605    je          0051763C
 00517607    mov         byte ptr [esp],0
 0051760B    call        StyleServices
 00517610    mov         edx,esp
 00517612    call        TCustomStyleServices.HasTransparentParts
 00517617    test        al,al
>00517619    je          0051763C
 0051761B    push        esp
 0051761C    push        0
 0051761E    push        0
 00517620    mov         eax,esi
 00517622    call        TCanvas.GetHandle
 00517627    push        eax
 00517628    mov         eax,ebx
 0051762A    call        TStyleHook.GetHandle
 0051762F    push        eax
 00517630    call        StyleServices
 00517635    pop         edx
 00517636    pop         ecx
 00517637    call        TCustomStyleServices.DrawParentBackground
 0051763C    add         esp,0C
 0051763F    pop         esi
 00517640    pop         ebx
 00517641    ret
end;*}

//00517644
{*procedure TCheckBoxStyleHook.sub_00517644(?:?);
begin
 00517644    push        ebx
 00517645    push        esi
 00517646    mov         esi,edx
 00517648    mov         ebx,eax
 0051764A    xor         edx,edx
 0051764C    mov         eax,ebx
 0051764E    call        0058D3E4
 00517653    mov         edx,esi
 00517655    mov         eax,ebx
 00517657    call        TStyleHook.CallDefaultProc
 0051765C    mov         dl,1
 0051765E    mov         eax,ebx
 00517660    call        0058D3E4
 00517665    mov         eax,ebx
 00517667    mov         edx,dword ptr [eax]
 00517669    call        dword ptr [edx+28];TStyleHook.Invalidate
 0051766C    mov         byte ptr [ebx+14],1;TCheckBoxStyleHook.FHandled:Boolean
 00517670    pop         esi
 00517671    pop         ebx
 00517672    ret
end;*}

//00517674
{*procedure TCheckBoxStyleHook.WMLButtonDblClk(?:?);
begin
 00517674    push        ebx
 00517675    push        esi
 00517676    mov         esi,edx
 00517678    mov         ebx,eax
 0051767A    xor         edx,edx
 0051767C    mov         eax,ebx
 0051767E    call        0058D3E4
 00517683    mov         edx,esi
 00517685    mov         eax,ebx
 00517687    call        TStyleHook.CallDefaultProc
 0051768C    mov         dl,1
 0051768E    mov         eax,ebx
 00517690    call        0058D3E4
 00517695    mov         eax,ebx
 00517697    mov         edx,dword ptr [eax]
 00517699    call        dword ptr [edx+28];TStyleHook.Invalidate
 0051769C    mov         byte ptr [ebx+14],1;TCheckBoxStyleHook.FHandled:Boolean
 005176A0    pop         esi
 005176A1    pop         ebx
 005176A2    ret
end;*}

//005176A4
{*procedure TCheckBoxStyleHook.WMLButtonDown(?:?);
begin
 005176A4    push        ebx
 005176A5    push        esi
 005176A6    mov         esi,edx
 005176A8    mov         ebx,eax
 005176AA    xor         edx,edx
 005176AC    mov         eax,ebx
 005176AE    call        0058D3E4
 005176B3    mov         edx,esi
 005176B5    mov         eax,ebx
 005176B7    call        TStyleHook.CallDefaultProc
 005176BC    mov         dl,1
 005176BE    mov         eax,ebx
 005176C0    call        0058D3E4
 005176C5    mov         byte ptr [ebx+28],1;TCheckBoxStyleHook.......FPressed:Boolean
 005176C9    mov         eax,ebx
 005176CB    mov         edx,dword ptr [eax]
 005176CD    call        dword ptr [edx+28];TStyleHook.Invalidate
 005176D0    mov         byte ptr [ebx+14],1;TCheckBoxStyleHook.FHandled:Boolean
 005176D4    pop         esi
 005176D5    pop         ebx
 005176D6    ret
end;*}

//005176D8
{*procedure TCheckBoxStyleHook.WMLButtonUp(?:?);
begin
 005176D8    push        ebx
 005176D9    push        esi
 005176DA    mov         esi,edx
 005176DC    mov         ebx,eax
 005176DE    xor         edx,edx
 005176E0    mov         eax,ebx
 005176E2    call        0058D3E4
 005176E7    mov         edx,esi
 005176E9    mov         eax,ebx
 005176EB    call        TStyleHook.CallDefaultProc
 005176F0    mov         dl,1
 005176F2    mov         eax,ebx
 005176F4    call        0058D3E4
 005176F9    mov         byte ptr [ebx+28],0;TCheckBoxStyleHook........FPressed:Boolean
 005176FD    mov         eax,ebx
 005176FF    mov         edx,dword ptr [eax]
 00517701    call        dword ptr [edx+28];TStyleHook.Invalidate
 00517704    mov         byte ptr [ebx+14],1;TCheckBoxStyleHook.FHandled:Boolean
 00517708    pop         esi
 00517709    pop         ebx
 0051770A    ret
end;*}

//0051770C
procedure sub_0051770C;
begin
{*
 0051770C    call        0058DB4C
 00517711    ret
*}
end;

//00517714
{*procedure TCheckBoxStyleHook.WMKeyUp(?:?);
begin
 00517714    push        ebx
 00517715    push        esi
 00517716    mov         esi,edx
 00517718    mov         ebx,eax
 0051771A    cmp         word ptr [esi+4],20
>0051771F    jne         0051772A
 00517721    xor         edx,edx
 00517723    mov         eax,ebx
 00517725    call        0058D3E4
 0051772A    mov         edx,esi
 0051772C    mov         eax,ebx
 0051772E    call        TStyleHook.CallDefaultProc
 00517733    cmp         word ptr [esi+4],20
>00517738    jne         0051774A
 0051773A    mov         dl,1
 0051773C    mov         eax,ebx
 0051773E    call        0058D3E4
 00517743    mov         eax,ebx
 00517745    mov         edx,dword ptr [eax]
 00517747    call        dword ptr [edx+28];TStyleHook.Invalidate
 0051774A    mov         byte ptr [ebx+14],1;TCheckBoxStyleHook.FHandled:Boolean
 0051774E    pop         esi
 0051774F    pop         ebx
 00517750    ret
end;*}

//00517754
{*procedure TCheckBoxStyleHook.WMKeyDown(?:?);
begin
 00517754    push        ebx
 00517755    push        esi
 00517756    mov         esi,edx
 00517758    mov         ebx,eax
 0051775A    cmp         word ptr [esi+4],20
>0051775F    jne         0051776A
 00517761    xor         edx,edx
 00517763    mov         eax,ebx
 00517765    call        0058D3E4
 0051776A    mov         edx,esi
 0051776C    mov         eax,ebx
 0051776E    call        TStyleHook.CallDefaultProc
 00517773    cmp         word ptr [esi+4],20
>00517778    jne         0051778A
 0051777A    mov         dl,1
 0051777C    mov         eax,ebx
 0051777E    call        0058D3E4
 00517783    mov         eax,ebx
 00517785    mov         edx,dword ptr [eax]
 00517787    call        dword ptr [edx+28];TStyleHook.Invalidate
 0051778A    mov         byte ptr [ebx+14],1;TCheckBoxStyleHook.FHandled:Boolean
 0051778E    pop         esi
 0051778F    pop         ebx
 00517790    ret
end;*}

//00517794
procedure sub_00517794;
begin
{*
 00517794    push        ebx
 00517795    mov         ebx,eax
 00517797    mov         eax,ebx
 00517799    call        0058DB44
 0051779E    mov         eax,ebx
 005177A0    mov         edx,dword ptr [eax]
 005177A2    call        dword ptr [edx+28];TStyleHook.Invalidate
 005177A5    mov         byte ptr [ebx+14],1;TCheckBoxStyleHook.FHandled:Boolean
 005177A9    pop         ebx
 005177AA    ret
*}
end;

//005177AC
procedure sub_005177AC;
begin
{*
 005177AC    push        ebx
 005177AD    mov         ebx,eax
 005177AF    mov         eax,ebx
 005177B1    call        0058DB48
 005177B6    mov         eax,ebx
 005177B8    mov         edx,dword ptr [eax]
 005177BA    call        dword ptr [edx+28];TStyleHook.Invalidate
 005177BD    mov         byte ptr [ebx+14],1;TCheckBoxStyleHook.FHandled:Boolean
 005177C1    pop         ebx
 005177C2    ret
*}
end;

//005177C4
constructor TRadioButtonStyleHook.Create(AControl:TWinControl);
begin
{*
 005177C4    push        ebx
 005177C5    push        esi
 005177C6    test        dl,dl
>005177C8    je          005177D2
 005177CA    add         esp,0FFFFFFF0
 005177CD    call        @ClassCreate
 005177D2    mov         ebx,edx
 005177D4    mov         esi,eax
 005177D6    xor         edx,edx
 005177D8    mov         eax,esi
 005177DA    call        TCheckBoxStyleHook.Create
 005177DF    mov         byte ptr [esi+17],1;TRadioButtonStyleHook.FOverridePaint:Boolean
 005177E3    mov         byte ptr [esi+16],1;TRadioButtonStyleHook.FOverrideEraseBkgnd:Boolean
 005177E7    mov         byte ptr [esi+0D],1;TRadioButtonStyleHook.FDoubleBuffered:Boolean
 005177EB    mov         eax,esi
 005177ED    test        bl,bl
>005177EF    je          00517800
 005177F1    call        @AfterConstruction
 005177F6    pop         dword ptr fs:[0]
 005177FD    add         esp,0C
 00517800    mov         eax,esi
 00517802    pop         esi
 00517803    pop         ebx
 00517804    ret
*}
end;

//00517808
{*function sub_00517808(?:?):?;
begin
 00517808    push        ebx
 00517809    push        esi
 0051780A    push        ecx
 0051780B    mov         byte ptr [esp],dl
 0051780E    mov         esi,eax
 00517810    xor         ebx,ebx
 00517812    mov         eax,dword ptr [esi+8];TRadioButtonStyleHook.FControl:TWinControl
 00517815    mov         edx,dword ptr [eax]
 00517817    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 0051781A    test        al,al
>0051781C    jne         00517832
 0051781E    movzx       eax,byte ptr [esp]
 00517822    sub         al,1
>00517824    jb          0051782A
>00517826    je          0051782E
>00517828    jmp         0051787E
 0051782A    mov         bl,0B
>0051782C    jmp         0051787E
 0051782E    mov         bl,0F
>00517830    jmp         0051787E
 00517832    cmp         byte ptr [esi+28],0;TRadioButtonStyleHook.........FPressed:Boolean
>00517836    je          00517852
 00517838    cmp         byte ptr [esi+24],0;TRadioButtonStyleHook.FMouseInControl:Boolean
>0051783C    je          00517852
 0051783E    movzx       eax,byte ptr [esp]
 00517842    sub         al,1
>00517844    jb          0051784A
>00517846    je          0051784E
>00517848    jmp         0051787E
 0051784A    mov         bl,0A
>0051784C    jmp         0051787E
 0051784E    mov         bl,0E
>00517850    jmp         0051787E
 00517852    cmp         byte ptr [esi+24],0;TRadioButtonStyleHook.FMouseInControl:Boolean
>00517856    je          0051786C
 00517858    movzx       eax,byte ptr [esp]
 0051785C    sub         al,1
>0051785E    jb          00517864
>00517860    je          00517868
>00517862    jmp         0051787E
 00517864    mov         bl,9
>00517866    jmp         0051787E
 00517868    mov         bl,0D
>0051786A    jmp         0051787E
 0051786C    movzx       eax,byte ptr [esp]
 00517870    sub         al,1
>00517872    jb          00517878
>00517874    je          0051787C
>00517876    jmp         0051787E
 00517878    mov         bl,8
>0051787A    jmp         0051787E
 0051787C    mov         bl,0C
 0051787E    mov         eax,ebx
 00517880    pop         edx
 00517881    pop         esi
 00517882    pop         ebx
 00517883    ret
end;*}

//00517884
procedure sub_00517884;
begin
{*
 00517884    call        0051770C
 00517889    ret
*}
end;

//0051788C
{*procedure sub_0051788C(?:TGroupBoxStyleHook; ?:?; ?:?);
begin
 0051788C    push        ebp
 0051788D    mov         ebp,esp
 0051788F    push        0
 00517891    push        ebx
 00517892    push        esi
 00517893    push        edi
 00517894    mov         edi,ecx
 00517896    mov         esi,edx
 00517898    mov         ebx,eax
 0051789A    xor         eax,eax
 0051789C    push        ebp
 0051789D    push        51795A
 005178A2    push        dword ptr fs:[eax]
 005178A5    mov         dword ptr fs:[eax],esp
 005178A8    mov         eax,dword ptr [ebx+8]
 005178AB    mov         edx,dword ptr [eax+74]
 005178AE    mov         eax,dword ptr [esi+40]
 005178B1    mov         ecx,dword ptr [eax]
 005178B3    call        dword ptr [ecx+8]
 005178B6    mov         eax,dword ptr [ebx+8]
 005178B9    mov         edx,dword ptr ds:[4F821C];TCustomGroupBox
 005178BF    call        @IsClass
 005178C4    test        al,al
>005178C6    je          005178D5
 005178C8    lea         edx,[ebp-4]
 005178CB    mov         eax,dword ptr [ebx+8]
 005178CE    call        TControl.GetText
>005178D3    jmp         005178DF
 005178D5    lea         edx,[ebp-4]
 005178D8    mov         eax,ebx
 005178DA    call        TStyleHook.GetText
 005178DF    mov         eax,dword ptr [ebx+8]
 005178E2    cmp         byte ptr [eax+71],1
>005178E6    je          00517911
 005178E8    mov         edx,dword ptr [ebp-4]
 005178EB    mov         eax,esi
 005178ED    call        TCustomCanvas.TextHeight
 005178F2    push        eax
 005178F3    push        edi
 005178F4    mov         edx,dword ptr [ebp-4]
 005178F7    mov         eax,esi
 005178F9    call        TCustomCanvas.TextWidth
 005178FE    mov         ecx,eax
 00517900    add         ecx,0C
 00517903    xor         edx,edx
 00517905    mov         eax,0C
 0051790A    call        Rect
>0051790F    jmp         00517944
 00517911    mov         edx,dword ptr [ebp-4]
 00517914    mov         eax,esi
 00517916    call        TCustomCanvas.TextHeight
 0051791B    push        eax
 0051791C    push        edi
 0051791D    mov         edx,dword ptr [ebp-4]
 00517920    mov         eax,esi
 00517922    call        TCustomCanvas.TextWidth
 00517927    push        eax
 00517928    mov         eax,dword ptr [ebx+8]
 0051792B    mov         eax,dword ptr [eax+58]
 0051792E    pop         edx
 0051792F    sub         eax,edx
 00517931    sub         eax,0C
 00517934    mov         edx,dword ptr [ebx+8]
 00517937    mov         ecx,dword ptr [edx+58]
 0051793A    sub         ecx,0C
 0051793D    xor         edx,edx
 0051793F    call        Rect
 00517944    xor         eax,eax
 00517946    pop         edx
 00517947    pop         ecx
 00517948    pop         ecx
 00517949    mov         dword ptr fs:[eax],edx
 0051794C    push        517961
 00517951    lea         eax,[ebp-4]
 00517954    call        @UStrClr
 00517959    ret
>0051795A    jmp         @HandleFinally
>0051795F    jmp         00517951
 00517961    pop         edi
 00517962    pop         esi
 00517963    pop         ebx
 00517964    pop         ecx
 00517965    pop         ebp
 00517966    ret
end;*}

//00517968
{*procedure sub_00517968(?:TGroupBoxStyleHook; ?:?; ?:?);
begin
 00517968    push        ebp
 00517969    mov         ebp,esp
 0051796B    add         esp,0FFFFFFF8
 0051796E    push        ebx
 0051796F    push        esi
 00517970    push        edi
 00517971    xor         ebx,ebx
 00517973    mov         dword ptr [ebp-4],ebx
 00517976    mov         dword ptr [ebp-8],ecx
 00517979    mov         edi,edx
 0051797B    mov         ebx,eax
 0051797D    xor         eax,eax
 0051797F    push        ebp
 00517980    push        5179FA
 00517985    push        dword ptr fs:[eax]
 00517988    mov         dword ptr fs:[eax],esp
 0051798B    mov         esi,dword ptr [ebx+8]
 0051798E    mov         eax,esi
 00517990    mov         edx,dword ptr ds:[4F821C];TCustomGroupBox
 00517996    call        @IsClass
 0051799B    test        al,al
>0051799D    je          005179AB
 0051799F    lea         edx,[ebp-4]
 005179A2    mov         eax,esi
 005179A4    call        TControl.GetText
>005179A9    jmp         005179B5
 005179AB    lea         edx,[ebp-4]
 005179AE    mov         eax,ebx
 005179B0    call        TStyleHook.GetText
 005179B5    mov         esi,dword ptr [ebx+8]
 005179B8    mov         eax,dword ptr [esi+5C]
 005179BB    sub         eax,0
 005179BE    push        eax
 005179BF    mov         eax,dword ptr [ebp-8]
 005179C2    push        eax
 005179C3    mov         edx,dword ptr [ebp-4]
 005179C6    mov         eax,edi
 005179C8    call        TCustomCanvas.TextHeight
 005179CD    mov         edx,eax
 005179CF    sar         edx,1
>005179D1    jns         005179D6
 005179D3    adc         edx,0
 005179D6    inc         edx
 005179D7    mov         ecx,dword ptr [esi+58]
 005179DA    sub         ecx,0
 005179DD    xor         eax,eax
 005179DF    call        Rect
 005179E4    xor         eax,eax
 005179E6    pop         edx
 005179E7    pop         ecx
 005179E8    pop         ecx
 005179E9    mov         dword ptr fs:[eax],edx
 005179EC    push        517A01
 005179F1    lea         eax,[ebp-4]
 005179F4    call        @UStrClr
 005179F9    ret
>005179FA    jmp         @HandleFinally
>005179FF    jmp         005179F1
 00517A01    pop         edi
 00517A02    pop         esi
 00517A03    pop         ebx
 00517A04    pop         ecx
 00517A05    pop         ecx
 00517A06    pop         ebp
 00517A07    ret
end;*}

//00517A08
procedure TGroupBoxStyleHook.WMEraseBkgnd(Message:Messages.TMessage);
begin
{*
 00517A08    mov         dword ptr [edx+0C],1
 00517A0F    ret
*}
end;

//00517A10
{*procedure TGroupBoxStyleHook.WMPaint(?:?);
begin
 00517A10    push        ebp
 00517A11    mov         ebp,esp
 00517A13    add         esp,0FFFFFFB4
 00517A16    mov         dword ptr [ebp-8],edx
 00517A19    mov         dword ptr [ebp-4],eax
 00517A1C    mov         dl,1
 00517A1E    mov         eax,[004BF670];TCanvas
 00517A23    call        TCanvas.Create;TCanvas.Create
 00517A28    mov         dword ptr [ebp-0C],eax
 00517A2B    xor         edx,edx
 00517A2D    push        ebp
 00517A2E    push        517AC8
 00517A33    push        dword ptr fs:[edx]
 00517A36    mov         dword ptr fs:[edx],esp
 00517A39    mov         eax,dword ptr [ebp-8]
 00517A3C    mov         eax,dword ptr [eax+4]
 00517A3F    test        eax,eax
>00517A41    jne         00517A61
 00517A43    lea         eax,[ebp-4C]
 00517A46    push        eax
 00517A47    mov         eax,dword ptr [ebp-4]
 00517A4A    call        TStyleHook.GetHandle
 00517A4F    push        eax
 00517A50    call        user32.BeginPaint
 00517A55    mov         edx,eax
 00517A57    mov         eax,dword ptr [ebp-0C]
 00517A5A    call        TCanvas.SetHandle
>00517A5F    jmp         00517A6B
 00517A61    mov         edx,eax
 00517A63    mov         eax,dword ptr [ebp-0C]
 00517A66    call        TCanvas.SetHandle
 00517A6B    mov         edx,dword ptr [ebp-0C]
 00517A6E    mov         eax,dword ptr [ebp-4]
 00517A71    mov         ecx,dword ptr [eax]
 00517A73    call        dword ptr [ecx+10];TGroupBoxStyleHook.sub_00517B3C
 00517A76    mov         eax,dword ptr [ebp-0C]
 00517A79    call        TCanvas.GetHandle
 00517A7E    mov         edx,eax
 00517A80    mov         eax,dword ptr [ebp-4]
 00517A83    mov         eax,dword ptr [eax+8];TGroupBoxStyleHook.FControl:TWinControl
 00517A86    xor         ecx,ecx
 00517A88    call        004ED400
 00517A8D    xor         eax,eax
 00517A8F    pop         edx
 00517A90    pop         ecx
 00517A91    pop         ecx
 00517A92    mov         dword ptr fs:[eax],edx
 00517A95    push        517ACF
 00517A9A    xor         edx,edx
 00517A9C    mov         eax,dword ptr [ebp-0C]
 00517A9F    call        TCanvas.SetHandle
 00517AA4    mov         eax,dword ptr [ebp-0C]
 00517AA7    call        TObject.Free
 00517AAC    mov         eax,dword ptr [ebp-8]
 00517AAF    cmp         dword ptr [eax+4],0
>00517AB3    jne         00517AC7
 00517AB5    lea         eax,[ebp-4C]
 00517AB8    push        eax
 00517AB9    mov         eax,dword ptr [ebp-4]
 00517ABC    call        TStyleHook.GetHandle
 00517AC1    push        eax
 00517AC2    call        user32.EndPaint
 00517AC7    ret
>00517AC8    jmp         @HandleFinally
>00517ACD    jmp         00517A9A
 00517ACF    mov         eax,dword ptr [ebp-8]
 00517AD2    xor         edx,edx
 00517AD4    mov         dword ptr [eax+0C],edx
 00517AD7    mov         eax,dword ptr [ebp-4]
 00517ADA    mov         byte ptr [eax+14],1;TGroupBoxStyleHook.FHandled:Boolean
 00517ADE    mov         esp,ebp
 00517AE0    pop         ebp
 00517AE1    ret
end;*}

//00517AE4
procedure sub_00517AE4;
begin
{*
 00517AE4    call        0058D8DC
 00517AE9    ret
*}
end;

//00517AEC
{*procedure sub_00517AEC(?:?);
begin
 00517AEC    push        ebx
 00517AED    push        esi
 00517AEE    push        edi
 00517AEF    add         esp,0FFFFFFF4
 00517AF2    mov         esi,edx
 00517AF4    mov         ebx,eax
 00517AF6    call        StyleServices
 00517AFB    mov         edx,dword ptr [eax]
 00517AFD    call        dword ptr [edx+48];@AbstractError
 00517B00    test        al,al
>00517B02    je          00517B33
 00517B04    call        StyleServices
 00517B09    mov         ecx,esp
 00517B0B    mov         dl,24
 00517B0D    mov         edi,dword ptr [eax]
 00517B0F    call        dword ptr [edi+5C];TCustomStyleServices.GetElementDetails
 00517B12    push        esp
 00517B13    push        0
 00517B15    push        0
 00517B17    mov         eax,esi
 00517B19    call        TCanvas.GetHandle
 00517B1E    push        eax
 00517B1F    mov         eax,ebx
 00517B21    call        TStyleHook.GetHandle
 00517B26    push        eax
 00517B27    call        StyleServices
 00517B2C    pop         edx
 00517B2D    pop         ecx
 00517B2E    call        TCustomStyleServices.DrawParentBackground
 00517B33    add         esp,0C
 00517B36    pop         edi
 00517B37    pop         esi
 00517B38    pop         ebx
 00517B39    ret
end;*}

//00517B3C
{*procedure sub_00517B3C(?:?);
begin
 00517B3C    push        ebp
 00517B3D    mov         ebp,esp
 00517B3F    add         esp,0FFFFFFC4
 00517B42    push        ebx
 00517B43    xor         ecx,ecx
 00517B45    mov         dword ptr [ebp-3C],ecx
 00517B48    mov         dword ptr [ebp-8],edx
 00517B4B    mov         dword ptr [ebp-4],eax
 00517B4E    xor         eax,eax
 00517B50    push        ebp
 00517B51    push        517C8D
 00517B56    push        dword ptr fs:[eax]
 00517B59    mov         dword ptr fs:[eax],esp
 00517B5C    call        StyleServices
 00517B61    mov         edx,dword ptr [eax]
 00517B63    call        dword ptr [edx+48];@AbstractError
 00517B66    test        al,al
>00517B68    je          00517C77
 00517B6E    mov         edx,dword ptr [ebp-8]
 00517B71    mov         eax,dword ptr [ebp-4]
 00517B74    mov         ecx,dword ptr [eax]
 00517B76    call        dword ptr [ecx+14];TGroupBoxStyleHook.sub_00517AEC
 00517B79    lea         ecx,[ebp-2C]
 00517B7C    mov         edx,dword ptr [ebp-8]
 00517B7F    mov         eax,dword ptr [ebp-4]
 00517B82    call        0051788C
 00517B87    lea         ecx,[ebp-1C]
 00517B8A    mov         edx,dword ptr [ebp-8]
 00517B8D    mov         eax,dword ptr [ebp-4]
 00517B90    call        00517968
 00517B95    mov         eax,dword ptr [ebp-4]
 00517B98    mov         eax,dword ptr [eax+8];TGroupBoxStyleHook.FControl:TWinControl
 00517B9B    mov         edx,dword ptr [eax]
 00517B9D    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 00517BA0    test        al,al
>00517BA2    je          00517BB5
 00517BA4    call        StyleServices
 00517BA9    lea         ecx,[ebp-38]
 00517BAC    mov         dl,24
 00517BAE    mov         ebx,dword ptr [eax]
 00517BB0    call        dword ptr [ebx+5C];TCustomStyleServices.GetElementDetails
>00517BB3    jmp         00517BC4
 00517BB5    call        StyleServices
 00517BBA    lea         ecx,[ebp-38]
 00517BBD    mov         dl,25
 00517BBF    mov         ebx,dword ptr [eax]
 00517BC1    call        dword ptr [ebx+5C];TCustomStyleServices.GetElementDetails
 00517BC4    mov         eax,dword ptr [ebp-8]
 00517BC7    call        TCanvas.GetHandle
 00517BCC    push        eax
 00517BCD    call        gdi32.SaveDC
 00517BD2    mov         dword ptr [ebp-0C],eax
 00517BD5    xor         eax,eax
 00517BD7    push        ebp
 00517BD8    push        517C3E
 00517BDD    push        dword ptr fs:[eax]
 00517BE0    mov         dword ptr fs:[eax],esp
 00517BE3    mov         eax,dword ptr [ebp-20]
 00517BE6    push        eax
 00517BE7    mov         eax,dword ptr [ebp-24]
 00517BEA    push        eax
 00517BEB    mov         eax,dword ptr [ebp-28]
 00517BEE    push        eax
 00517BEF    mov         eax,dword ptr [ebp-2C]
 00517BF2    push        eax
 00517BF3    mov         eax,dword ptr [ebp-8]
 00517BF6    call        TCanvas.GetHandle
 00517BFB    push        eax
 00517BFC    call        gdi32.ExcludeClipRect
 00517C01    lea         eax,[ebp-1C]
 00517C04    push        eax
 00517C05    push        0
 00517C07    mov         eax,dword ptr [ebp-8]
 00517C0A    call        TCanvas.GetHandle
 00517C0F    push        eax
 00517C10    call        StyleServices
 00517C15    lea         ecx,[ebp-38]
 00517C18    pop         edx
 00517C19    call        TCustomStyleServices.DrawElement
 00517C1E    xor         eax,eax
 00517C20    pop         edx
 00517C21    pop         ecx
 00517C22    pop         ecx
 00517C23    mov         dword ptr fs:[eax],edx
 00517C26    push        517C45
 00517C2B    mov         eax,dword ptr [ebp-0C]
 00517C2E    push        eax
 00517C2F    mov         eax,dword ptr [ebp-8]
 00517C32    call        TCanvas.GetHandle
 00517C37    push        eax
 00517C38    call        gdi32.RestoreDC
 00517C3D    ret
>00517C3E    jmp         @HandleFinally
>00517C43    jmp         00517C2B
 00517C45    lea         edx,[ebp-3C]
 00517C48    mov         eax,dword ptr [ebp-4]
 00517C4B    call        TStyleHook.GetText
 00517C50    mov         eax,dword ptr [ebp-3C]
 00517C53    push        eax
 00517C54    lea         eax,[ebp-2C]
 00517C57    push        eax
 00517C58    mov         eax,dword ptr [ebp-4]
 00517C5B    mov         eax,dword ptr [eax+8];TGroupBoxStyleHook.FControl:TWinControl
 00517C5E    mov         edx,5
 00517C63    call        TControl.DrawTextBiDiModeFlags
 00517C68    push        eax
 00517C69    lea         ecx,[ebp-38]
 00517C6C    mov         edx,dword ptr [ebp-8]
 00517C6F    mov         eax,dword ptr [ebp-4]
 00517C72    call        TStyleHook.DrawControlText
 00517C77    xor         eax,eax
 00517C79    pop         edx
 00517C7A    pop         ecx
 00517C7B    pop         ecx
 00517C7C    mov         dword ptr fs:[eax],edx
 00517C7F    push        517C94
 00517C84    lea         eax,[ebp-3C]
 00517C87    call        @UStrClr
 00517C8C    ret
>00517C8D    jmp         @HandleFinally
>00517C92    jmp         00517C84
 00517C94    pop         ebx
 00517C95    mov         esp,ebp
 00517C97    pop         ebp
 00517C98    ret
end;*}

//00517C9C
constructor TStaticTextStyleHook.Create(AControl:TWinControl);
begin
{*
 00517C9C    push        ebx
 00517C9D    push        esi
 00517C9E    test        dl,dl
>00517CA0    je          00517CAA
 00517CA2    add         esp,0FFFFFFF0
 00517CA5    call        @ClassCreate
 00517CAA    mov         ebx,edx
 00517CAC    mov         esi,eax
 00517CAE    xor         edx,edx
 00517CB0    mov         eax,esi
 00517CB2    call        TStyleHook.Create
 00517CB7    mov         byte ptr [esi+17],1;TStaticTextStyleHook.FOverridePaint:Boolean
 00517CBB    mov         byte ptr [esi+18],1;TStaticTextStyleHook.FOverridePaintNC:Boolean
 00517CBF    mov         byte ptr [esi+16],1;TStaticTextStyleHook.FOverrideEraseBkgnd:Boolean
 00517CC3    mov         byte ptr [esi+19],1;TStaticTextStyleHook.FPaintOnEraseBkgnd:Boolean
 00517CC7    mov         byte ptr [esi+0D],1;TStaticTextStyleHook.FDoubleBuffered:Boolean
 00517CCB    mov         eax,esi
 00517CCD    test        bl,bl
>00517CCF    je          00517CE0
 00517CD1    call        @AfterConstruction
 00517CD6    pop         dword ptr fs:[0]
 00517CDD    add         esp,0C
 00517CE0    mov         eax,esi
 00517CE2    pop         esi
 00517CE3    pop         ebx
 00517CE4    ret
*}
end;

//00517CE8
{*procedure sub_00517CE8(?:?);
begin
 00517CE8    push        ebp
 00517CE9    mov         ebp,esp
 00517CEB    add         esp,0FFFFFFE0
 00517CEE    push        ebx
 00517CEF    push        esi
 00517CF0    push        edi
 00517CF1    xor         ecx,ecx
 00517CF3    mov         dword ptr [ebp-4],ecx
 00517CF6    mov         esi,edx
 00517CF8    mov         ebx,eax
 00517CFA    xor         eax,eax
 00517CFC    push        ebp
 00517CFD    push        517E22
 00517D02    push        dword ptr fs:[eax]
 00517D05    mov         dword ptr fs:[eax],esp
 00517D08    call        StyleServices
 00517D0D    mov         edx,dword ptr [eax]
 00517D0F    call        dword ptr [edx+48];@AbstractError
 00517D12    test        al,al
>00517D14    je          00517E0C
 00517D1A    lea         edx,[ebp-20]
 00517D1D    mov         eax,dword ptr [ebx+8];TStaticTextStyleHook.FControl:TWinControl
 00517D20    mov         ecx,dword ptr [eax]
 00517D22    call        dword ptr [ecx+64];TWinControl.GetClientRect
 00517D25    mov         eax,dword ptr [ebx+8];TStaticTextStyleHook.FControl:TWinControl
 00517D28    call        TStaticText.GetTransparent
 00517D2D    test        al,al
>00517D2F    je          00517D70
 00517D31    call        StyleServices
 00517D36    lea         ecx,[ebp-10]
 00517D39    mov         dl,10
 00517D3B    mov         edi,dword ptr [eax]
 00517D3D    call        dword ptr [edi+5C];TCustomStyleServices.GetElementDetails
 00517D40    lea         eax,[ebp-10]
 00517D43    push        eax
 00517D44    push        0
 00517D46    push        0
 00517D48    mov         eax,esi
 00517D4A    call        TCanvas.GetHandle
 00517D4F    push        eax
 00517D50    mov         eax,ebx
 00517D52    call        TStyleHook.GetHandle
 00517D57    push        eax
 00517D58    call        StyleServices
 00517D5D    pop         edx
 00517D5E    pop         ecx
 00517D5F    call        TCustomStyleServices.DrawParentBackground
 00517D64    mov         dl,1
 00517D66    mov         eax,dword ptr [esi+48]
 00517D69    call        TBrush.SetStyle
>00517D6E    jmp         00517D90
 00517D70    call        StyleServices
 00517D75    mov         dl,1D
 00517D77    call        TCustomStyleServices.GetStyleColor
 00517D7C    mov         edx,eax
 00517D7E    mov         eax,dword ptr [esi+48]
 00517D81    call        TBrush.SetColor
 00517D86    lea         edx,[ebp-20]
 00517D89    mov         eax,esi
 00517D8B    mov         ecx,dword ptr [eax]
 00517D8D    call        dword ptr [ecx+54]
 00517D90    mov         eax,dword ptr [ebx+8];TStaticTextStyleHook.FControl:TWinControl
 00517D93    mov         edx,dword ptr [eax]
 00517D95    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 00517D98    and         eax,7F
 00517D9B    movzx       eax,byte ptr [eax+7A14D0]
 00517DA2    push        eax
 00517DA3    call        StyleServices
 00517DA8    lea         ecx,[ebp-10]
 00517DAB    pop         edx
 00517DAC    mov         edi,dword ptr [eax]
 00517DAE    call        dword ptr [edi+0EC];TCustomStyleServices.GetElementDetails
 00517DB4    mov         edi,dword ptr [ebx+8];TStaticTextStyleHook.FControl:TWinControl
 00517DB7    mov         eax,edi
 00517DB9    mov         edx,dword ptr ds:[503A10];TCustomStaticText
 00517DBF    call        @IsClass
 00517DC4    test        al,al
>00517DC6    je          00517DD4
 00517DC8    lea         edx,[ebp-4]
 00517DCB    mov         eax,edi
 00517DCD    call        TControl.GetText
>00517DD2    jmp         00517DDE
 00517DD4    lea         edx,[ebp-4]
 00517DD7    mov         eax,ebx
 00517DD9    call        TStyleHook.GetText
 00517DDE    mov         eax,dword ptr [ebp-4]
 00517DE1    push        eax
 00517DE2    lea         eax,[ebp-20]
 00517DE5    push        eax
 00517DE6    mov         eax,dword ptr [ebx+8];TStaticTextStyleHook.FControl:TWinControl
 00517DE9    movzx       eax,byte ptr [eax+290]
 00517DF0    movzx       eax,word ptr [eax*2+7A14CA]
 00517DF8    or          ax,10
 00517DFC    movzx       eax,ax
 00517DFF    push        eax
 00517E00    lea         ecx,[ebp-10]
 00517E03    mov         edx,esi
 00517E05    mov         eax,ebx
 00517E07    call        TStyleHook.DrawControlText
 00517E0C    xor         eax,eax
 00517E0E    pop         edx
 00517E0F    pop         ecx
 00517E10    pop         ecx
 00517E11    mov         dword ptr fs:[eax],edx
 00517E14    push        517E29
 00517E19    lea         eax,[ebp-4]
 00517E1C    call        @UStrClr
 00517E21    ret
>00517E22    jmp         @HandleFinally
>00517E27    jmp         00517E19
 00517E29    pop         edi
 00517E2A    pop         esi
 00517E2B    pop         ebx
 00517E2C    mov         esp,ebp
 00517E2E    pop         ebp
 00517E2F    ret
end;*}

//00517E30
{*procedure sub_00517E30(?:?);
begin
 00517E30    push        ebp
 00517E31    mov         ebp,esp
 00517E33    add         esp,0FFFFFFE8
 00517E36    push        ebx
 00517E37    push        esi
 00517E38    push        edi
 00517E39    mov         dword ptr [ebp-4],edx
 00517E3C    mov         ebx,eax
 00517E3E    call        StyleServices
 00517E43    mov         edx,dword ptr [eax]
 00517E45    call        dword ptr [edx+48];@AbstractError
 00517E48    test        al,al
>00517E4A    je          00517F6F
 00517E50    mov         esi,dword ptr [ebx+8];TStaticTextStyleHook.FControl:TWinControl
 00517E53    mov         eax,dword ptr [esi+5C];TWinControl.FHeight:Integer
 00517E56    push        eax
 00517E57    lea         eax,[ebp-18]
 00517E5A    push        eax
 00517E5B    mov         ecx,dword ptr [esi+58];TWinControl.FWidth:Integer
 00517E5E    xor         edx,edx
 00517E60    xor         eax,eax
 00517E62    call        Rect
 00517E67    lea         eax,[ebp-18]
 00517E6A    call        RectWidth
 00517E6F    test        eax,eax
>00517E71    je          00517F6F
 00517E77    lea         eax,[ebp-18]
 00517E7A    call        RectHeight
 00517E7F    test        eax,eax
>00517E81    je          00517F6F
 00517E87    mov         eax,dword ptr [ebx+8];TStaticTextStyleHook.FControl:TWinControl
 00517E8A    cmp         byte ptr [eax+292],0
>00517E91    je          00517F6F
 00517E97    mov         dl,1
 00517E99    mov         eax,[004C1D10];TBitmap
 00517E9E    call        TBitmap.Create;TBitmap.Create
 00517EA3    mov         dword ptr [ebp-8],eax
 00517EA6    xor         eax,eax
 00517EA8    push        ebp
 00517EA9    push        517F68
 00517EAE    push        dword ptr fs:[eax]
 00517EB1    mov         dword ptr fs:[eax],esp
 00517EB4    lea         eax,[ebp-18]
 00517EB7    call        RectWidth
 00517EBC    mov         edx,eax
 00517EBE    mov         eax,dword ptr [ebp-8]
 00517EC1    mov         ecx,dword ptr [eax]
 00517EC3    call        dword ptr [ecx+44];TBitmap.SetWidth
 00517EC6    lea         eax,[ebp-18]
 00517EC9    call        RectHeight
 00517ECE    mov         edx,eax
 00517ED0    mov         eax,dword ptr [ebp-8]
 00517ED3    mov         ecx,dword ptr [eax]
 00517ED5    call        dword ptr [ecx+38];TBitmap.SetHeight
 00517ED8    call        StyleServices
 00517EDD    xor         ecx,ecx
 00517EDF    mov         edx,0FF000010
 00517EE4    call        TCustomStyleServices.ColorToRGB
 00517EE9    mov         esi,eax
 00517EEB    mov         eax,dword ptr [ebx+8];TStaticTextStyleHook.FControl:TWinControl
 00517EEE    cmp         byte ptr [eax+292],2
>00517EF5    jne         00517F0C
 00517EF7    call        StyleServices
 00517EFC    xor         ecx,ecx
 00517EFE    mov         edx,0FF000014
 00517F03    call        TCustomStyleServices.ColorToRGB
 00517F08    mov         edi,eax
>00517F0A    jmp         00517F0E
 00517F0C    mov         edi,esi
 00517F0E    push        edi
 00517F0F    push        1
 00517F11    mov         eax,dword ptr [ebp-8]
 00517F14    call        TBitmap.GetCanvas
 00517F19    lea         edx,[ebp-18]
 00517F1C    mov         ecx,esi
 00517F1E    call        Frame3D
 00517F23    mov         esi,dword ptr [ebx+8];TStaticTextStyleHook.FControl:TWinControl
 00517F26    mov         eax,dword ptr [esi+5C];TWinControl.FHeight:Integer
 00517F29    dec         eax
 00517F2A    push        eax
 00517F2B    mov         eax,dword ptr [esi+58];TWinControl.FWidth:Integer
 00517F2E    dec         eax
 00517F2F    push        eax
 00517F30    push        1
 00517F32    push        1
 00517F34    mov         eax,dword ptr [ebp-4]
 00517F37    call        TCanvas.GetHandle
 00517F3C    push        eax
 00517F3D    call        gdi32.ExcludeClipRect
 00517F42    mov         eax,dword ptr [ebp-8]
 00517F45    push        eax
 00517F46    xor         ecx,ecx
 00517F48    xor         edx,edx
 00517F4A    mov         eax,dword ptr [ebp-4]
 00517F4D    mov         ebx,dword ptr [eax]
 00517F4F    call        dword ptr [ebx+44]
 00517F52    xor         eax,eax
 00517F54    pop         edx
 00517F55    pop         ecx
 00517F56    pop         ecx
 00517F57    mov         dword ptr fs:[eax],edx
 00517F5A    push        517F6F
 00517F5F    mov         eax,dword ptr [ebp-8]
 00517F62    call        TObject.Free
 00517F67    ret
>00517F68    jmp         @HandleFinally
>00517F6D    jmp         00517F5F
 00517F6F    pop         edi
 00517F70    pop         esi
 00517F71    pop         ebx
 00517F72    mov         esp,ebp
 00517F74    pop         ebp
 00517F75    ret
end;*}

//00517F78
procedure sub_00517F78;
begin
{*
 00517F78    call        0058D8DC
 00517F7D    ret
*}
end;

Initialization
//0079D168
{*
 0079D168    sub         dword ptr ds:[7CA638],1
>0079D16F    jae         0079D187
 0079D171    mov         ecx,dword ptr ds:[505800];TGroupBoxStyleHook
 0079D177    mov         edx,dword ptr ds:[4F8424];TGroupBox
 0079D17D    mov         eax,[005738E0];TCustomStyleEngine
 0079D182    call        TCustomStyleEngine.RegisterStyleHook
 0079D187    ret
*}
Finalization
end.