//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit42;

interface

uses
  SysUtils, Classes;

    destructor Destroy();//0050A7BC
    procedure SetSorted(Value:Boolean);//0050A86C
    procedure SetStyle(Value:TComboBoxStyle);//0050A8AC
    procedure GetItemHeight;//0050A8E4
    function IsStoredItemHeight(Value:Integer):Boolean;//0050A90C
    procedure CreateParams(var Params:TCreateParams);//0050A930
    procedure CreateWnd;//0050A99C
    procedure sub_0050AAF0;//0050AAF0
    procedure sub_0050AB44;//0050AB44
    //procedure WMEraseBkgnd(?:?);//0050ABBC
    //procedure sub_004EE9E0(?:?; ?:?);//0050AC14
    //function sub_0050ACD8(?:?; ?:?; ?:?):?;//0050ACD8
    //procedure sub_0050AD1C(?:?; ?:?; ?:?);//0050AD1C
    //procedure sub_004EEC30(?:?);//0050ADC0
    //function sub_0050B320(?:TCustomComboBox; ?:UnicodeString):?;//0050B320
    //procedure sub_0050B500(?:?);//0050B500
    //function sub_0050B520:?;//0050B520
    //procedure sub_0050B53C(?:?; ?:?; ?:?);//0050B53C
    //procedure sub_0050B630(?:?);//0050B630
    //procedure sub_0050B7B4(?:?);//0050B7B4
    //procedure WMLButtonDown(?:?);//0050B7F0
    //procedure sub_0050B86C(?:?);//0050B86C
    procedure sub_0050B9F4;//0050B9F4
    constructor Create;//0050BA00
    //procedure WMPaint(?:?);//0050BA08
    procedure AssignClient(AClient:TObject);//0050BBD4
    //function IsCheckedLinked:?;//0050BBF8
    //procedure sub_0050BC24(?:?);//0050BC24
    constructor Create(AOwner:TComponent);//0050BC88
    //procedure sub_004E980C(?:?; ?:?);//0050BCE0
    procedure sub_004E9934;//0050BD40
    //function sub_0050BD48:?;//0050BD48
    function IsStoredChecked(Value:Boolean):Boolean;//0050BD4C
    procedure sub_0050BD6C;//0050BD6C
    //procedure sub_0050BD70(?:?);//0050BD70
    //procedure sub_0050BDE8(?:?);//0050BDE8
    //procedure WMEraseBkgnd(?:?);//0050BE50
    procedure CreateParams(var Params:TCreateParams);//0050BE7C
    procedure SetWordWrap(Value:Boolean);//0050BEA0
    procedure Assign(Source:TPersistent);//0050BEB4
    procedure sub_0050BEFC;//0050BEFC
    //procedure SetLeft(Value:Integer; ?:?);//0050BF10
    //function IsImageIndexLinked:?;//0050BF58
    //procedure sub_0050BF84(?:?);//0050BF84
    constructor Create(AOwner:TComponent);//0050BFA4

implementation

//0050A7BC
destructor TCustomComboBox.Destroy();
begin
{*
 0050A7BC    push        ebx
 0050A7BD    push        esi
 0050A7BE    call        @BeforeDestruction
 0050A7C3    mov         ebx,edx
 0050A7C5    mov         esi,eax
 0050A7C7    mov         eax,dword ptr [esi+2CC];TCustomComboBox.FItems:TStrings
 0050A7CD    call        TObject.Free
 0050A7D2    mov         eax,dword ptr [esi+308];TCustomComboBox.FSaveItems:TStringList
 0050A7D8    call        TObject.Free
 0050A7DD    mov         dl,0FC
 0050A7DF    and         dl,bl
 0050A7E1    mov         eax,esi
 0050A7E3    call        TCustomCombo.Destroy
 0050A7E8    test        bl,bl
>0050A7EA    jle         0050A7F3
 0050A7EC    mov         eax,esi
 0050A7EE    call        @ClassDestroy
 0050A7F3    pop         esi
 0050A7F4    pop         ebx
 0050A7F5    ret
*}
end;

//0050A86C
procedure TComboBox.SetSorted(Value:Boolean);
begin
{*
 0050A86C    cmp         dl,byte ptr [eax+305];TComboBox.FSorted:Boolean
>0050A872    je          0050A87F
 0050A874    mov         byte ptr [eax+305],dl;TComboBox.FSorted:Boolean
 0050A87A    call        TWinControl.RecreateWnd
 0050A87F    ret
*}
end;

//0050A8AC
procedure TComboBox.SetStyle(Value:TComboBoxStyle);
begin
{*
 0050A8AC    push        ebx
 0050A8AD    mov         ebx,eax
 0050A8AF    cmp         dl,byte ptr [ebx+306];TComboBox.FStyle:TComboBoxStyle
>0050A8B5    je          0050A8DD
 0050A8B7    mov         byte ptr [ebx+306],dl;TComboBox.FStyle:TComboBoxStyle
 0050A8BD    cmp         dl,1
>0050A8C0    jne         0050A8CE
 0050A8C2    mov         eax,[0050A8E0];0x200 gvar_0050A8E0
 0050A8C7    not         eax
 0050A8C9    and         dword ptr [ebx+60],eax;TComboBox.FControlStyle:TControlStyle
>0050A8CC    jmp         0050A8D6
 0050A8CE    mov         eax,[0050A8E0];0x200 gvar_0050A8E0
 0050A8D3    or          dword ptr [ebx+60],eax;TComboBox.FControlStyle:TControlStyle
 0050A8D6    mov         eax,ebx
 0050A8D8    call        TWinControl.RecreateWnd
 0050A8DD    pop         ebx
 0050A8DE    ret
*}
end;

//0050A8E4
procedure TComboBox.GetItemHeight;
begin
{*
 0050A8E4    movzx       edx,byte ptr [eax+306];TComboBox.FStyle:TComboBoxStyle
 0050A8EB    add         dl,0FD
 0050A8EE    sub         dl,2
>0050A8F1    jae         0050A8FA
 0050A8F3    mov         eax,dword ptr [eax+2C8];TComboBox.FItemHeight:Integer
 0050A8F9    ret
 0050A8FA    push        0
 0050A8FC    xor         ecx,ecx
 0050A8FE    mov         edx,154
 0050A903    call        TControl.Perform
 0050A908    ret
*}
end;

//0050A90C
function TComboBox.IsStoredItemHeight(Value:Integer):Boolean;
begin
{*
 0050A90C    push        ebx
 0050A90D    mov         ebx,eax
 0050A90F    movzx       eax,byte ptr [ebx+306];TComboBox.FStyle:TComboBoxStyle
 0050A916    add         al,0FD
 0050A918    sub         al,2
>0050A91A    jae         0050A927
 0050A91C    mov         eax,ebx
 0050A91E    call        0050A700
 0050A923    test        al,al
>0050A925    jne         0050A92B
 0050A927    xor         eax,eax
 0050A929    pop         ebx
 0050A92A    ret
 0050A92B    mov         al,1
 0050A92D    pop         ebx
 0050A92E    ret
*}
end;

//0050A930
procedure TCustomComboBox.CreateParams(var Params:TCreateParams);
begin
{*
 0050A930    push        ebx
 0050A931    push        esi
 0050A932    mov         esi,edx
 0050A934    mov         ebx,eax
 0050A936    mov         edx,esi
 0050A938    mov         eax,ebx
 0050A93A    call        TWinControl.CreateParams
 0050A93F    mov         ecx,50A988;'C'
 0050A944    mov         edx,esi
 0050A946    mov         eax,ebx
 0050A948    call        TWinControl.CreateSubClass
 0050A94D    mov         eax,dword ptr [esi+4];TCreateParams.Style:DWORD
 0050A950    or          eax,200240
 0050A955    movzx       edx,byte ptr [ebx+306];TCustomComboBox.FStyle:TComboBoxStyle
 0050A95C    or          eax,dword ptr [edx*4+7A1358]
 0050A963    movzx       edx,byte ptr [ebx+305];TCustomComboBox.FSorted:Boolean
 0050A96A    or          eax,dword ptr [edx*4+7A1378]
 0050A971    movzx       edx,byte ptr [ebx+304];TCustomComboBox.FCharCase:TEditCharCase
 0050A978    or          eax,dword ptr [edx*4+7A136C]
 0050A97F    mov         dword ptr [esi+4],eax;TCreateParams.Style:DWORD
 0050A982    pop         esi
 0050A983    pop         ebx
 0050A984    ret
*}
end;

//0050A99C
procedure TCustomComboBox.CreateWnd;
begin
{*
 0050A99C    push        ebx
 0050A99D    push        esi
 0050A99E    mov         ebx,eax
 0050A9A0    mov         eax,ebx
 0050A9A2    call        TCustomCombo.CreateWnd
 0050A9A7    mov         eax,ebx
 0050A9A9    call        TWinControl.GetHandle
 0050A9AE    mov         dword ptr [ebx+2D8],eax;TCustomComboBox.FDropHandle:HWND
 0050A9B4    mov         esi,dword ptr [ebx+308];TCustomComboBox.FSaveItems:TStringList
 0050A9BA    test        esi,esi
>0050A9BC    je          0050AA30
 0050A9BE    mov         edx,esi
 0050A9C0    mov         eax,dword ptr [ebx+2CC];TCustomComboBox.FItems:TStrings
 0050A9C6    mov         ecx,dword ptr [eax]
 0050A9C8    call        dword ptr [ecx+8];TStrings.Assign
 0050A9CB    mov         eax,dword ptr [ebx+308];TCustomComboBox.FSaveItems:TStringList
 0050A9D1    call        TObject.Free
 0050A9D6    xor         eax,eax
 0050A9D8    mov         dword ptr [ebx+308],eax;TCustomComboBox.FSaveItems:TStringList
 0050A9DE    cmp         dword ptr [ebx+2E8],0FFFFFFFF;TCustomComboBox.FSaveIndex:Integer
>0050A9E5    je          0050AA30
 0050A9E7    mov         eax,dword ptr [ebx+2CC];TCustomComboBox.FItems:TStrings
 0050A9ED    mov         edx,dword ptr [eax]
 0050A9EF    call        dword ptr [edx+14];TStrings.GetCount
 0050A9F2    cmp         eax,dword ptr [ebx+2E8];TCustomComboBox.FSaveIndex:Integer
>0050A9F8    jge         0050AA0B
 0050A9FA    mov         eax,dword ptr [ebx+2CC];TCustomComboBox.FItems:TStrings
 0050AA00    mov         edx,dword ptr [eax]
 0050AA02    call        dword ptr [edx+14];TStrings.GetCount
 0050AA05    mov         dword ptr [ebx+2E8],eax;TCustomComboBox.FSaveIndex:Integer
 0050AA0B    push        0
 0050AA0D    mov         eax,dword ptr [ebx+2E8];TCustomComboBox.FSaveIndex:Integer
 0050AA13    push        eax
 0050AA14    push        14E
 0050AA19    mov         eax,ebx
 0050AA1B    call        TWinControl.GetHandle
 0050AA20    push        eax
 0050AA21    call        user32.SendMessageW
 0050AA26    mov         dword ptr [ebx+2E8],0FFFFFFFF;TCustomComboBox.FSaveIndex:Integer
 0050AA30    movzx       eax,byte ptr [ebx+306];TCustomComboBox.FStyle:TComboBoxStyle
 0050AA37    sub         al,2
>0050AA39    jae         0050AAB9
 0050AA3B    push        5
 0050AA3D    mov         eax,ebx
 0050AA3F    call        TWinControl.GetHandle
 0050AA44    push        eax
 0050AA45    call        user32.GetWindow
 0050AA4A    mov         esi,eax
 0050AA4C    test        esi,esi
>0050AA4E    je          0050AAB9
 0050AA50    cmp         byte ptr [ebx+306],1;TCustomComboBox.FStyle:TComboBoxStyle
>0050AA57    jne         0050AA8E
 0050AA59    mov         eax,esi
 0050AA5B    mov         dword ptr [ebx+2D4],eax;TCustomComboBox.FListHandle:HWND
 0050AA61    push        0FC
 0050AA63    push        eax
 0050AA64    call        user32.GetWindowLongW
 0050AA69    mov         dword ptr [ebx+2E0],eax;TCustomComboBox.FDefListProc:Pointer
 0050AA6F    mov         eax,dword ptr [ebx+2D4];TCustomComboBox.FListHandle:HWND
 0050AA75    mov         edx,dword ptr [ebx+2F0];TCustomComboBox.FListInstance:Pointer
 0050AA7B    push        edx
 0050AA7C    push        0FC
 0050AA7E    push        eax
 0050AA7F    call        user32.SetWindowLongW
 0050AA84    push        2
 0050AA86    push        esi
 0050AA87    call        user32.GetWindow
 0050AA8C    mov         esi,eax
 0050AA8E    mov         eax,esi
 0050AA90    mov         dword ptr [ebx+2D0],eax;TCustomComboBox.FEditHandle:HWND
 0050AA96    push        0FC
 0050AA98    push        eax
 0050AA99    call        user32.GetWindowLongW
 0050AA9E    mov         dword ptr [ebx+2DC],eax;TCustomComboBox.FDefEditProc:Pointer
 0050AAA4    mov         eax,dword ptr [ebx+2D0];TCustomComboBox.FEditHandle:HWND
 0050AAAA    mov         edx,dword ptr [ebx+2EC];TCustomComboBox.FEditInstance:Pointer
 0050AAB0    push        edx
 0050AAB1    push        0FC
 0050AAB3    push        eax
 0050AAB4    call        user32.SetWindowLongW
 0050AAB9    mov         eax,[007C4770];^gvar_007CA5E0
 0050AABE    cmp         byte ptr [eax],0
>0050AAC1    je          0050AAE1
 0050AAC3    cmp         dword ptr [ebx+2D0],0;TCustomComboBox.FEditHandle:HWND
>0050AACA    je          0050AAE1
 0050AACC    push        0
 0050AACE    push        3
 0050AAD0    push        0D3
 0050AAD5    mov         eax,dword ptr [ebx+2D0];TCustomComboBox.FEditHandle:HWND
 0050AADB    push        eax
 0050AADC    call        user32.SendMessageW
 0050AAE1    mov         eax,ebx
 0050AAE3    mov         edx,dword ptr [eax]
 0050AAE5    call        dword ptr [edx+158];TCustomComboBox.sub_0050AB44
 0050AAEB    pop         esi
 0050AAEC    pop         ebx
 0050AAED    ret
*}
end;

//0050AAF0
procedure sub_0050AAF0;
begin
{*
 0050AAF0    push        ebx
 0050AAF1    push        esi
 0050AAF2    mov         ebx,eax
 0050AAF4    mov         eax,dword ptr [ebx+2CC];TCustomComboBox.FItems:TStrings
 0050AAFA    mov         edx,dword ptr [eax]
 0050AAFC    call        dword ptr [edx+14];TStrings.GetCount
 0050AAFF    test        eax,eax
>0050AB01    jle         0050AB3A
 0050AB03    test        byte ptr [ebx+65],20;TCustomComboBox.FAlign:TAlign
>0050AB07    je          0050AB3A
 0050AB09    mov         eax,ebx
 0050AB0B    mov         edx,dword ptr [eax]
 0050AB0D    call        dword ptr [edx+108];TComboBox.GetItemIndex
 0050AB13    mov         dword ptr [ebx+2E8],eax;TCustomComboBox.FSaveIndex:Integer
 0050AB19    mov         dl,1
 0050AB1B    mov         eax,[0046F9A0];TStringList
 0050AB20    call        TStringList.Create;TStringList.Create
 0050AB25    mov         esi,eax
 0050AB27    mov         dword ptr [ebx+308],esi;TCustomComboBox.FSaveItems:TStringList
 0050AB2D    mov         edx,dword ptr [ebx+2CC];TCustomComboBox.FItems:TStrings
 0050AB33    mov         eax,esi
 0050AB35    mov         ecx,dword ptr [eax]
 0050AB37    call        dword ptr [ecx+8];TStringList.Assign
 0050AB3A    mov         eax,ebx
 0050AB3C    call        004EC00C
 0050AB41    pop         esi
 0050AB42    pop         ebx
 0050AB43    ret
*}
end;

//0050AB44
procedure sub_0050AB44;
begin
{*
 0050AB44    push        ebx
 0050AB45    mov         ebx,eax
 0050AB47    call        StyleServices
 0050AB4C    mov         edx,dword ptr [eax]
 0050AB4E    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 0050AB51    test        al,al
>0050AB53    je          0050ABB8
 0050AB55    mov         eax,ebx
 0050AB57    call        TWinControl.HandleAllocated
 0050AB5C    test        al,al
>0050AB5E    je          0050ABB8
 0050AB60    xor         edx,edx
 0050AB62    mov         eax,6
 0050AB67    call        CheckWin32Version
 0050AB6C    test        al,al
>0050AB6E    je          0050AB8C
 0050AB70    mov         eax,dword ptr [ebx+328];TCustomComboBox.FTextHint:string
 0050AB76    push        eax
 0050AB77    mov         eax,ebx
 0050AB79    call        TWinControl.GetHandle
 0050AB7E    xor         ecx,ecx
 0050AB80    mov         edx,1703
 0050AB85    call        SendTextMessage
>0050AB8A    jmp         0050ABB8
 0050AB8C    mov         edx,1
 0050AB91    mov         eax,5
 0050AB96    call        CheckWin32Version
 0050AB9B    test        al,al
>0050AB9D    je          0050ABB8
 0050AB9F    mov         eax,dword ptr [ebx+328];TCustomComboBox.FTextHint:string
 0050ABA5    push        eax
 0050ABA6    xor         ecx,ecx
 0050ABA8    mov         edx,1501
 0050ABAD    mov         eax,dword ptr [ebx+2D0];TCustomComboBox.FEditHandle:HWND
 0050ABB3    call        SendTextMessage
 0050ABB8    pop         ebx
 0050ABB9    ret
*}
end;

//0050ABBC
{*procedure TCustomComboBox.WMEraseBkgnd(?:?);
begin
 0050ABBC    push        ebx
 0050ABBD    push        esi
 0050ABBE    add         esp,0FFFFFFF0
 0050ABC1    mov         esi,edx
 0050ABC3    mov         ebx,eax
 0050ABC5    cmp         byte ptr [ebx+306],1;TCustomComboBox.FStyle:TComboBoxStyle
>0050ABCC    jne         0050AC05
 0050ABCE    cmp         dword ptr [ebx+40],0;TCustomComboBox.FParent:TWinControl
>0050ABD2    je          0050AC05
 0050ABD4    mov         eax,dword ptr [ebx+40];TCustomComboBox.FParent:TWinControl
 0050ABD7    mov         eax,dword ptr [eax+1D0];TWinControl.FBrush:TBrush
 0050ABDD    call        TBrush.GetHandle
 0050ABE2    push        eax
 0050ABE3    lea         edx,[esp+4]
 0050ABE7    mov         eax,ebx
 0050ABE9    mov         ecx,dword ptr [eax]
 0050ABEB    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0050ABEE    lea         eax,[esp+4]
 0050ABF2    push        eax
 0050ABF3    mov         eax,dword ptr [esi+4]
 0050ABF6    push        eax
 0050ABF7    call        user32.FillRect
 0050ABFC    mov         dword ptr [esi+0C],1
>0050AC03    jmp         0050AC0E
 0050AC05    mov         edx,esi
 0050AC07    mov         eax,ebx
 0050AC09    mov         ecx,dword ptr [eax]
 0050AC0B    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 0050AC0E    add         esp,10
 0050AC11    pop         esi
 0050AC12    pop         ebx
 0050AC13    ret
end;*}

//0050AC14
{*procedure TCustomComboBox.sub_004EE9E0(?:?; ?:?);
begin
 0050AC14    push        ebp
 0050AC15    mov         ebp,esp
 0050AC17    add         esp,0FFFFFFF4
 0050AC1A    push        ebx
 0050AC1B    push        esi
 0050AC1C    xor         ebx,ebx
 0050AC1E    mov         dword ptr [ebp-0C],ebx
 0050AC21    mov         word ptr [ebp-2],cx
 0050AC25    mov         esi,edx
 0050AC27    mov         ebx,eax
 0050AC29    xor         eax,eax
 0050AC2B    push        ebp
 0050AC2C    push        50ACC9
 0050AC31    push        dword ptr fs:[eax]
 0050AC34    mov         dword ptr fs:[eax],esp
 0050AC37    mov         edx,esi
 0050AC39    movzx       ecx,word ptr [ebp-2]
 0050AC3D    mov         eax,ebx
 0050AC3F    call        TWinControl.sub_004EE9E0
 0050AC44    mov         eax,ebx
 0050AC46    mov         edx,dword ptr [eax]
 0050AC48    call        dword ptr [edx+24];TComponent.GetObservers
 0050AC4B    mov         edx,1
 0050AC50    mov         ecx,dword ptr [eax]
 0050AC52    call        dword ptr [ecx+14];TObservers.IsObserving
 0050AC55    movzx       edx,word ptr [esi]
 0050AC58    sub         dx,8
>0050AC5C    je          0050AC68
 0050AC5E    add         edx,0FFFFFFE8
 0050AC61    sub         dx,0E0
>0050AC66    jae         0050ACB3
 0050AC68    test        al,al
>0050AC6A    je          0050AC8D
 0050AC6C    mov         eax,ebx
 0050AC6E    mov         edx,dword ptr [eax]
 0050AC70    call        dword ptr [edx+24];TComponent.GetObservers
 0050AC73    mov         dword ptr [ebp-8],eax
 0050AC76    lea         edx,[ebp-0C]
 0050AC79    mov         eax,dword ptr [ebp-8]
 0050AC7C    call        TLinkObservers.GetEditLink
 0050AC81    mov         eax,dword ptr [ebp-0C]
 0050AC84    mov         edx,dword ptr [eax]
 0050AC86    call        dword ptr [edx+24]
 0050AC89    xor         al,1
>0050AC8B    jmp         0050AC8F
 0050AC8D    xor         eax,eax
 0050AC8F    test        al,al
>0050AC91    je          0050ACA7
 0050AC93    movzx       eax,word ptr [esi]
 0050AC96    sub         ax,26
>0050AC9A    je          0050ACA2
 0050AC9C    sub         ax,2
>0050ACA0    jne         0050ACA7
 0050ACA2    mov         word ptr [esi],0
 0050ACA7    mov         eax,ebx
 0050ACA9    mov         edx,dword ptr [eax]
 0050ACAB    call        dword ptr [edx+24];TComponent.GetObservers
 0050ACAE    call        004A1D04
 0050ACB3    xor         eax,eax
 0050ACB5    pop         edx
 0050ACB6    pop         ecx
 0050ACB7    pop         ecx
 0050ACB8    mov         dword ptr fs:[eax],edx
 0050ACBB    push        50ACD0
 0050ACC0    lea         eax,[ebp-0C]
 0050ACC3    call        @IntfClear
 0050ACC8    ret
>0050ACC9    jmp         @HandleFinally
>0050ACCE    jmp         0050ACC0
 0050ACD0    pop         esi
 0050ACD1    pop         ebx
 0050ACD2    mov         esp,ebp
 0050ACD4    pop         ebp
 0050ACD5    ret
end;*}

//0050ACD8
{*function sub_0050ACD8(?:?; ?:?; ?:?):?;
begin
 0050ACD8    push        ebp
 0050ACD9    mov         ebp,esp
 0050ACDB    push        ebx
 0050ACDC    push        esi
 0050ACDD    mov         esi,edx
 0050ACDF    mov         ebx,eax
 0050ACE1    mov         eax,dword ptr [ebp+8]
 0050ACE4    mov         eax,dword ptr [eax-4]
 0050ACE7    movzx       eax,byte ptr [eax+306]
 0050ACEE    sub         al,2
>0050ACF0    jae         0050AD13
 0050ACF2    push        esi
 0050ACF3    mov         eax,dword ptr [ebp+8]
 0050ACF6    mov         eax,dword ptr [eax-4]
 0050ACF9    call        TWinControl.GetHandle
 0050ACFE    mov         ecx,ebx
 0050AD00    mov         edx,140
 0050AD05    call        SendGetIntMessage
 0050AD0A    mov         eax,dword ptr [esi]
 0050AD0C    cmp         eax,dword ptr [ebx]
 0050AD0E    setg        al
>0050AD11    jmp         0050AD15
 0050AD13    xor         eax,eax
 0050AD15    pop         esi
 0050AD16    pop         ebx
 0050AD17    pop         ebp
 0050AD18    ret
end;*}

//0050AD1C
{*procedure sub_0050AD1C(?:?; ?:?; ?:?);
begin
 0050AD1C    push        ebp
 0050AD1D    mov         ebp,esp
 0050AD1F    push        0
 0050AD21    push        ebx
 0050AD22    push        esi
 0050AD23    mov         esi,edx
 0050AD25    mov         ebx,eax
 0050AD27    xor         eax,eax
 0050AD29    push        ebp
 0050AD2A    push        50ADB3
 0050AD2F    push        dword ptr fs:[eax]
 0050AD32    mov         dword ptr fs:[eax],esp
 0050AD35    lea         edx,[ebp-4]
 0050AD38    mov         eax,dword ptr [ebp+8]
 0050AD3B    mov         eax,dword ptr [eax-4]
 0050AD3E    call        TControl.GetText
 0050AD43    mov         ecx,esi
 0050AD45    sub         ecx,ebx
 0050AD47    lea         edx,[ebx+1]
 0050AD4A    lea         eax,[ebp-4]
 0050AD4D    call        @UStrDelete
 0050AD52    push        0
 0050AD54    push        0FF
 0050AD56    push        14E
 0050AD5B    mov         eax,dword ptr [ebp+8]
 0050AD5E    mov         eax,dword ptr [eax-4]
 0050AD61    call        TWinControl.GetHandle
 0050AD66    push        eax
 0050AD67    call        user32.SendMessageW
 0050AD6C    mov         eax,dword ptr [ebp+8]
 0050AD6F    mov         eax,dword ptr [eax-4]
 0050AD72    mov         edx,dword ptr [ebp-4]
 0050AD75    call        TControl.SetText
 0050AD7A    movzx       esi,bx
 0050AD7D    mov         eax,esi
 0050AD7F    shl         esi,10
 0050AD82    or          eax,esi
 0050AD84    push        eax
 0050AD85    push        0
 0050AD87    push        142
 0050AD8C    mov         eax,dword ptr [ebp+8]
 0050AD8F    mov         eax,dword ptr [eax-4]
 0050AD92    call        TWinControl.GetHandle
 0050AD97    push        eax
 0050AD98    call        user32.SendMessageW
 0050AD9D    xor         eax,eax
 0050AD9F    pop         edx
 0050ADA0    pop         ecx
 0050ADA1    pop         ecx
 0050ADA2    mov         dword ptr fs:[eax],edx
 0050ADA5    push        50ADBA
 0050ADAA    lea         eax,[ebp-4]
 0050ADAD    call        @UStrClr
 0050ADB2    ret
>0050ADB3    jmp         @HandleFinally
>0050ADB8    jmp         0050ADAA
 0050ADBA    pop         esi
 0050ADBB    pop         ebx
 0050ADBC    pop         ecx
 0050ADBD    pop         ebp
 0050ADBE    ret
end;*}

//0050ADC0
{*procedure TCustomComboBox.sub_004EEC30(?:?);
begin
 0050ADC0    push        ebp
 0050ADC1    mov         ebp,esp
 0050ADC3    mov         ecx,0F
 0050ADC8    push        0
 0050ADCA    push        0
 0050ADCC    dec         ecx
>0050ADCD    jne         0050ADC8
 0050ADCF    push        ebx
 0050ADD0    push        esi
 0050ADD1    push        edi
 0050ADD2    mov         ebx,edx
 0050ADD4    mov         dword ptr [ebp-4],eax
 0050ADD7    xor         eax,eax
 0050ADD9    push        ebp
 0050ADDA    push        50B311
 0050ADDF    push        dword ptr fs:[eax]
 0050ADE2    mov         dword ptr fs:[eax],esp
 0050ADE5    mov         eax,dword ptr [ebp-4]
 0050ADE8    mov         edx,dword ptr [eax]
 0050ADEA    call        dword ptr [edx+108];TComboBox.GetItemIndex
 0050ADF0    mov         edi,eax
 0050ADF2    mov         edx,ebx
 0050ADF4    mov         eax,dword ptr [ebp-4]
 0050ADF7    call        TWinControl.sub_004EEC30
 0050ADFC    mov         eax,dword ptr [ebp-4]
 0050ADFF    mov         edx,dword ptr [eax]
 0050AE01    call        dword ptr [edx+24];TComponent.GetObservers
 0050AE04    mov         edx,1
 0050AE09    mov         ecx,dword ptr [eax]
 0050AE0B    call        dword ptr [ecx+14];TObservers.IsObserving
 0050AE0E    test        al,al
>0050AE10    je          0050AEC4
 0050AE16    cmp         word ptr [ebx],20
>0050AE1A    jb          0050AE4D
 0050AE1C    mov         eax,dword ptr [ebp-4]
 0050AE1F    mov         edx,dword ptr [eax]
 0050AE21    call        dword ptr [edx+24];TComponent.GetObservers
 0050AE24    mov         dword ptr [ebp-18],eax
 0050AE27    lea         edx,[ebp-44]
 0050AE2A    mov         eax,dword ptr [ebp-18]
 0050AE2D    call        TLinkObservers.GetEditLink
 0050AE32    mov         eax,dword ptr [ebp-44]
 0050AE35    movzx       edx,word ptr [ebx]
 0050AE38    mov         ecx,dword ptr [eax]
 0050AE3A    call        dword ptr [ecx+34]
 0050AE3D    test        al,al
>0050AE3F    jne         0050AE4D
 0050AE41    push        0
 0050AE43    call        user32.MessageBeep
 0050AE48    mov         word ptr [ebx],0
 0050AE4D    movzx       eax,word ptr [ebx]
 0050AE50    cmp         eax,18
>0050AE53    jg          0050AE63
>0050AE55    je          0050AE72
 0050AE57    sub         eax,8
>0050AE5A    je          0050AE72
 0050AE5C    sub         eax,0E
>0050AE5F    je          0050AE72
>0050AE61    jmp         0050AEC4
 0050AE63    sub         eax,1B
>0050AE66    je          0050AE9B
 0050AE68    add         eax,0FFFFFFFB
 0050AE6B    sub         eax,0FFE0
>0050AE70    jae         0050AEC4
 0050AE72    mov         eax,dword ptr [ebp-4]
 0050AE75    mov         edx,dword ptr [eax]
 0050AE77    call        dword ptr [edx+24];TComponent.GetObservers
 0050AE7A    mov         dword ptr [ebp-1C],eax
 0050AE7D    lea         edx,[ebp-48]
 0050AE80    mov         eax,dword ptr [ebp-1C]
 0050AE83    call        TLinkObservers.GetEditLink
 0050AE88    mov         eax,dword ptr [ebp-48]
 0050AE8B    mov         edx,dword ptr [eax]
 0050AE8D    call        dword ptr [edx+24]
 0050AE90    test        al,al
>0050AE92    jne         0050AEC4
 0050AE94    mov         word ptr [ebx],0
>0050AE99    jmp         0050AEC4
 0050AE9B    mov         eax,dword ptr [ebp-4]
 0050AE9E    mov         edx,dword ptr [eax]
 0050AEA0    call        dword ptr [edx+24];TComponent.GetObservers
 0050AEA3    mov         dword ptr [ebp-20],eax
 0050AEA6    lea         edx,[ebp-4C]
 0050AEA9    mov         eax,dword ptr [ebp-20]
 0050AEAC    call        TLinkObservers.GetEditLink
 0050AEB1    mov         eax,dword ptr [ebp-4C]
 0050AEB4    mov         edx,dword ptr [eax]
 0050AEB6    call        dword ptr [edx+28]
 0050AEB9    mov         eax,dword ptr [ebp-4]
 0050AEBC    mov         edx,dword ptr [eax]
 0050AEBE    call        dword ptr [edx+12C];TCustomCombo.SelectAll
 0050AEC4    mov         eax,dword ptr [ebp-4]
 0050AEC7    cmp         byte ptr [eax+2F8],0;TCustomComboBox.FAutoComplete:Boolean
>0050AECE    je          0050B2B4
 0050AED4    mov         eax,dword ptr [ebp-4]
 0050AED7    movzx       eax,byte ptr [eax+306];TCustomComboBox.FStyle:TComboBoxStyle
 0050AEDE    sub         al,2
>0050AEE0    jae         0050AEFF
 0050AEE2    lea         edx,[ebp-50]
 0050AEE5    mov         eax,dword ptr [ebp-4]
 0050AEE8    call        TControl.GetText
 0050AEED    mov         edx,dword ptr [ebp-50]
 0050AEF0    mov         eax,dword ptr [ebp-4]
 0050AEF3    add         eax,300;TCustomComboBox.FFilter:string
 0050AEF8    call        @UStrAsg
>0050AEFD    jmp         0050AF33
 0050AEFF    call        kernel32.GetTickCount
 0050AF04    mov         edx,dword ptr [ebp-4]
 0050AF07    sub         eax,dword ptr [edx+2FC]
 0050AF0D    mov         edx,dword ptr [ebp-4]
 0050AF10    cmp         eax,dword ptr [edx+324];TCustomComboBox.FAutoCompleteDelay:Cardinal
>0050AF16    jb          0050AF25
 0050AF18    mov         eax,dword ptr [ebp-4]
 0050AF1B    add         eax,300;TCustomComboBox.FFilter:string
 0050AF20    call        @UStrClr
 0050AF25    call        kernel32.GetTickCount
 0050AF2A    mov         edx,dword ptr [ebp-4]
 0050AF2D    mov         dword ptr [edx+2FC],eax;TCustomComboBox.FLastTime:Cardinal
 0050AF33    movzx       eax,word ptr [ebx]
 0050AF36    sub         ax,8
>0050AF3A    je          0050AF7F
 0050AF3C    dec         ax
>0050AF3F    je          0050AF50
 0050AF41    sub         ax,12
>0050AF45    jne         0050B11C
>0050AF4B    jmp         0050B2B4
 0050AF50    mov         eax,dword ptr [ebp-4]
 0050AF53    cmp         byte ptr [eax+2F9],0;TCustomComboBox.FAutoDropDown:Boolean
>0050AF5A    je          0050B298
 0050AF60    mov         eax,dword ptr [ebp-4]
 0050AF63    call        00509488
 0050AF68    test        al,al
>0050AF6A    je          0050B298
 0050AF70    xor         edx,edx
 0050AF72    mov         eax,dword ptr [ebp-4]
 0050AF75    call        005094AC
>0050AF7A    jmp         0050B298
 0050AF7F    push        ebp
 0050AF80    lea         edx,[ebp-14]
 0050AF83    lea         eax,[ebp-10]
 0050AF86    call        0050ACD8
 0050AF8B    pop         ecx
 0050AF8C    test        al,al
>0050AF8E    je          0050AFA2
 0050AF90    push        ebp
 0050AF91    mov         edx,dword ptr [ebp-14]
 0050AF94    mov         eax,dword ptr [ebp-10]
 0050AF97    call        0050AD1C
 0050AF9C    pop         ecx
>0050AF9D    jmp         0050B106
 0050AFA2    mov         eax,dword ptr [ebp-4]
 0050AFA5    movzx       eax,byte ptr [eax+306];TCustomComboBox.FStyle:TComboBoxStyle
 0050AFAC    sub         al,2
>0050AFAE    jae         0050AFCE
 0050AFB0    lea         edx,[ebp-54]
 0050AFB3    mov         eax,dword ptr [ebp-4]
 0050AFB6    call        TControl.GetText
 0050AFBB    mov         eax,dword ptr [ebp-54]
 0050AFBE    test        eax,eax
>0050AFC0    je          0050AFC7
 0050AFC2    sub         eax,4
 0050AFC5    mov         eax,dword ptr [eax]
 0050AFC7    test        eax,eax
 0050AFC9    setg        al
>0050AFCC    jmp         0050AFD0
 0050AFCE    xor         eax,eax
 0050AFD0    test        al,al
>0050AFD2    je          0050B0BE
 0050AFD8    lea         edx,[ebp-0C]
 0050AFDB    mov         eax,dword ptr [ebp-4]
 0050AFDE    call        TControl.GetText
 0050AFE3    mov         esi,dword ptr [ebp-10]
>0050AFE6    jmp         0050AFE9
 0050AFE8    dec         esi
 0050AFE9    mov         edx,esi
 0050AFEB    mov         eax,dword ptr [ebp-0C]
 0050AFEE    call        00424DC0
 0050AFF3    cmp         al,2
>0050AFF5    je          0050AFE8
 0050AFF7    lea         eax,[ebp-8]
 0050AFFA    push        eax
 0050AFFB    mov         ecx,esi
 0050AFFD    dec         ecx
 0050AFFE    mov         edx,1
 0050B003    mov         eax,dword ptr [ebp-0C]
 0050B006    call        @UStrCopy
 0050B00B    push        0
 0050B00D    push        0FF
 0050B00F    push        14E
 0050B014    mov         eax,dword ptr [ebp-4]
 0050B017    call        TWinControl.GetHandle
 0050B01C    push        eax
 0050B01D    call        user32.SendMessageW
 0050B022    lea         eax,[ebp-5C]
 0050B025    push        eax
 0050B026    mov         edx,dword ptr [ebp-14]
 0050B029    inc         edx
 0050B02A    mov         ecx,7FFFFFFF
 0050B02F    mov         eax,dword ptr [ebp-0C]
 0050B032    call        @UStrCopy
 0050B037    mov         ecx,dword ptr [ebp-5C]
 0050B03A    lea         eax,[ebp-58]
 0050B03D    mov         edx,dword ptr [ebp-8]
 0050B040    call        @UStrCat3
 0050B045    mov         edx,dword ptr [ebp-58]
 0050B048    mov         eax,dword ptr [ebp-4]
 0050B04B    call        TControl.SetText
 0050B050    mov         eax,esi
 0050B052    dec         eax
 0050B053    movzx       eax,ax
 0050B056    dec         esi
 0050B057    movzx       edx,si
 0050B05A    shl         edx,10
 0050B05D    or          eax,edx
 0050B05F    push        eax
 0050B060    push        0
 0050B062    push        142
 0050B067    mov         eax,dword ptr [ebp-4]
 0050B06A    call        TWinControl.GetHandle
 0050B06F    push        eax
 0050B070    call        user32.SendMessageW
 0050B075    lea         edx,[ebp-60]
 0050B078    mov         eax,dword ptr [ebp-4]
 0050B07B    call        TControl.GetText
 0050B080    mov         edx,dword ptr [ebp-60]
 0050B083    mov         eax,dword ptr [ebp-4]
 0050B086    add         eax,300;TCustomComboBox.FFilter:string
 0050B08B    call        @UStrAsg
>0050B090    jmp         0050B106
 0050B092    mov         eax,dword ptr [ebp-4]
 0050B095    mov         eax,dword ptr [eax+300];TCustomComboBox.FFilter:string
 0050B09B    mov         dword ptr [ebp-24],eax
 0050B09E    mov         esi,dword ptr [ebp-24]
 0050B0A1    test        esi,esi
>0050B0A3    je          0050B0AA
 0050B0A5    sub         esi,4
 0050B0A8    mov         esi,dword ptr [esi]
 0050B0AA    mov         eax,dword ptr [ebp-4]
 0050B0AD    add         eax,300;TCustomComboBox.FFilter:string
 0050B0B2    mov         ecx,1
 0050B0B7    mov         edx,esi
 0050B0B9    call        @UStrDelete
 0050B0BE    mov         eax,dword ptr [ebp-4]
 0050B0C1    mov         eax,dword ptr [eax+300];TCustomComboBox.FFilter:string
 0050B0C7    call        @UStrLen
 0050B0CC    mov         edx,eax
 0050B0CE    mov         eax,dword ptr [ebp-4]
 0050B0D1    mov         eax,dword ptr [eax+300];TCustomComboBox.FFilter:string
 0050B0D7    call        00424DC0
 0050B0DC    cmp         al,2
>0050B0DE    je          0050B092
 0050B0E0    mov         eax,dword ptr [ebp-4]
 0050B0E3    mov         eax,dword ptr [eax+300];TCustomComboBox.FFilter:string
 0050B0E9    test        eax,eax
>0050B0EB    je          0050B0F2
 0050B0ED    sub         eax,4
 0050B0F0    mov         eax,dword ptr [eax]
 0050B0F2    mov         edx,dword ptr [ebp-4]
 0050B0F5    add         edx,300;TCustomComboBox.FFilter:string
 0050B0FB    mov         ecx,1
 0050B100    xchg        eax,edx
 0050B101    call        @UStrDelete
 0050B106    mov         word ptr [ebx],0
 0050B10B    mov         eax,dword ptr [ebp-4]
 0050B10E    mov         si,0FFAD
 0050B112    call        @CallDynaInst;TCustomComboBox.sub_0050A238
>0050B117    jmp         0050B298
 0050B11C    push        ebp
 0050B11D    lea         edx,[ebp-14]
 0050B120    lea         eax,[ebp-10]
 0050B123    call        0050ACD8
 0050B128    pop         ecx
 0050B129    mov         eax,dword ptr [ebp-4]
 0050B12C    cmp         byte ptr [eax+306],2;TCustomComboBox.FStyle:TComboBoxStyle
>0050B133    jae         0050B14F
 0050B135    mov         eax,dword ptr [ebp-4]
 0050B138    mov         eax,dword ptr [eax+300];TCustomComboBox.FFilter:string
 0050B13E    test        eax,eax
>0050B140    je          0050B147
 0050B142    sub         eax,4
 0050B145    mov         eax,dword ptr [eax]
 0050B147    cmp         eax,dword ptr [ebp-10]
 0050B14A    setg        al
>0050B14D    jmp         0050B151
 0050B14F    xor         eax,eax
 0050B151    test        al,al
>0050B153    je          0050B1BE
 0050B155    mov         eax,dword ptr [ebp-4]
 0050B158    mov         eax,dword ptr [eax+300];TCustomComboBox.FFilter:string
 0050B15E    mov         esi,eax
 0050B160    test        esi,esi
>0050B162    je          0050B169
 0050B164    sub         esi,4
 0050B167    mov         esi,dword ptr [esi]
 0050B169    lea         eax,[ebp-64]
 0050B16C    push        eax
 0050B16D    mov         eax,dword ptr [ebp-4]
 0050B170    mov         eax,dword ptr [eax+300];TCustomComboBox.FFilter:string
 0050B176    mov         ecx,dword ptr [ebp-10]
 0050B179    mov         edx,1
 0050B17E    call        @UStrCopy
 0050B183    push        dword ptr [ebp-64]
 0050B186    lea         eax,[ebp-68]
 0050B189    movzx       edx,word ptr [ebx]
 0050B18C    call        @UStrFromWChar
 0050B191    push        dword ptr [ebp-68]
 0050B194    lea         eax,[ebp-6C]
 0050B197    push        eax
 0050B198    mov         edx,dword ptr [ebp-14]
 0050B19B    inc         edx
 0050B19C    mov         eax,dword ptr [ebp-4]
 0050B19F    mov         eax,dword ptr [eax+300];TCustomComboBox.FFilter:string
 0050B1A5    mov         ecx,esi
 0050B1A7    call        @UStrCopy
 0050B1AC    push        dword ptr [ebp-6C]
 0050B1AF    lea         eax,[ebp-0C]
 0050B1B2    mov         edx,3
 0050B1B7    call        @UStrCatN
>0050B1BC    jmp         0050B1DD
 0050B1BE    lea         eax,[ebp-70]
 0050B1C1    movzx       edx,word ptr [ebx]
 0050B1C4    call        @UStrFromWChar
 0050B1C9    mov         ecx,dword ptr [ebp-70]
 0050B1CC    mov         eax,dword ptr [ebp-4]
 0050B1CF    mov         edx,dword ptr [eax+300];TCustomComboBox.FFilter:string
 0050B1D5    lea         eax,[ebp-0C]
 0050B1D8    call        @UStrCat3
 0050B1DD    mov         eax,dword ptr [ebp-4]
 0050B1E0    cmp         byte ptr [eax+2F9],0;TCustomComboBox.FAutoDropDown:Boolean
>0050B1E7    je          0050B1FF
 0050B1E9    mov         eax,dword ptr [ebp-4]
 0050B1EC    call        00509488
 0050B1F1    test        al,al
>0050B1F3    jne         0050B1FF
 0050B1F5    mov         dl,1
 0050B1F7    mov         eax,dword ptr [ebp-4]
 0050B1FA    call        005094AC
 0050B1FF    cmp         word ptr [ebx],0D800
>0050B204    jb          0050B20D
 0050B206    cmp         word ptr [ebx],0DFFF
>0050B20B    jbe         0050B211
 0050B20D    xor         eax,eax
>0050B20F    jmp         0050B213
 0050B211    mov         al,1
 0050B213    test        al,al
>0050B215    je          0050B284
 0050B217    push        0
 0050B219    push        0
 0050B21B    push        0
 0050B21D    mov         eax,dword ptr [ebp-4]
 0050B220    call        TWinControl.GetHandle
 0050B225    push        eax
 0050B226    lea         eax,[ebp-40]
 0050B229    push        eax
 0050B22A    call        user32.PeekMessageW
 0050B22F    test        eax,eax
>0050B231    je          0050B298
 0050B233    cmp         dword ptr [ebp-3C],102
>0050B23A    jne         0050B298
 0050B23C    lea         eax,[ebp-78]
 0050B23F    movzx       edx,word ptr [ebp-38]
 0050B243    call        @UStrFromWChar
 0050B248    mov         ecx,dword ptr [ebp-78]
 0050B24B    lea         eax,[ebp-74]
 0050B24E    mov         edx,dword ptr [ebp-0C]
 0050B251    call        @UStrCat3
 0050B256    mov         edx,dword ptr [ebp-74]
 0050B259    mov         eax,dword ptr [ebp-4]
 0050B25C    call        0050B320
 0050B261    test        al,al
>0050B263    je          0050B298
 0050B265    push        1
 0050B267    push        0
 0050B269    push        0
 0050B26B    mov         eax,dword ptr [ebp-4]
 0050B26E    call        TWinControl.GetHandle
 0050B273    push        eax
 0050B274    lea         eax,[ebp-40]
 0050B277    push        eax
 0050B278    call        user32.PeekMessageW
 0050B27D    mov         word ptr [ebx],0
>0050B282    jmp         0050B298
 0050B284    mov         edx,dword ptr [ebp-0C]
 0050B287    mov         eax,dword ptr [ebp-4]
 0050B28A    call        0050B320
 0050B28F    test        al,al
>0050B291    je          0050B298
 0050B293    mov         word ptr [ebx],0
 0050B298    mov         eax,dword ptr [ebp-4]
 0050B29B    mov         edx,dword ptr [eax]
 0050B29D    call        dword ptr [edx+108];TComboBox.GetItemIndex
 0050B2A3    cmp         edi,eax
>0050B2A5    je          0050B2B4
 0050B2A7    mov         eax,dword ptr [ebp-4]
 0050B2AA    mov         edx,dword ptr [eax]
 0050B2AC    call        dword ptr [edx+24];TComponent.GetObservers
 0050B2AF    call        004A1D04
 0050B2B4    xor         eax,eax
 0050B2B6    pop         edx
 0050B2B7    pop         ecx
 0050B2B8    pop         ecx
 0050B2B9    mov         dword ptr fs:[eax],edx
 0050B2BC    push        50B318
 0050B2C1    lea         eax,[ebp-78]
 0050B2C4    mov         edx,6
 0050B2C9    call        @UStrArrayClr
 0050B2CE    lea         eax,[ebp-60]
 0050B2D1    call        @UStrClr
 0050B2D6    lea         eax,[ebp-5C]
 0050B2D9    mov         edx,2
 0050B2DE    call        @UStrArrayClr
 0050B2E3    lea         eax,[ebp-54]
 0050B2E6    mov         edx,2
 0050B2EB    call        @UStrArrayClr
 0050B2F0    lea         eax,[ebp-4C]
 0050B2F3    mov         edx,dword ptr ds:[4782BC];IEditLinkObserver
 0050B2F9    mov         ecx,3
 0050B2FE    call        @FinalizeArray
 0050B303    lea         eax,[ebp-0C]
 0050B306    mov         edx,2
 0050B30B    call        @UStrArrayClr
 0050B310    ret
>0050B311    jmp         @HandleFinally
>0050B316    jmp         0050B2C1
 0050B318    pop         edi
 0050B319    pop         esi
 0050B31A    pop         ebx
 0050B31B    mov         esp,ebp
 0050B31D    pop         ebp
 0050B31E    ret
end;*}

//0050B320
{*function sub_0050B320(?:TCustomComboBox; ?:UnicodeString):?;
begin
 0050B320    push        ebp
 0050B321    mov         ebp,esp
 0050B323    xor         ecx,ecx
 0050B325    push        ecx
 0050B326    push        ecx
 0050B327    push        ecx
 0050B328    push        ecx
 0050B329    push        ecx
 0050B32A    push        ecx
 0050B32B    push        ecx
 0050B32C    push        ebx
 0050B32D    push        esi
 0050B32E    push        edi
 0050B32F    mov         esi,edx
 0050B331    mov         ebx,eax
 0050B333    xor         eax,eax
 0050B335    push        ebp
 0050B336    push        50B4ED
 0050B33B    push        dword ptr fs:[eax]
 0050B33E    mov         dword ptr fs:[eax],esp
 0050B341    mov         eax,esi
 0050B343    test        eax,eax
>0050B345    je          0050B34C
 0050B347    sub         eax,4
 0050B34A    mov         eax,dword ptr [eax]
 0050B34C    test        eax,eax
>0050B34E    jne         0050B371
 0050B350    mov         byte ptr [ebp-5],0
 0050B354    or          edx,0FFFFFFFF
 0050B357    mov         eax,ebx
 0050B359    mov         ecx,dword ptr [eax]
 0050B35B    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 0050B361    mov         eax,ebx
 0050B363    mov         si,0FFAD
 0050B367    call        @CallDynaInst;TCustomComboBox.sub_0050A238
>0050B36C    jmp         0050B4C2
 0050B371    push        esi
 0050B372    mov         eax,ebx
 0050B374    call        TWinControl.GetHandle
 0050B379    or          ecx,0FFFFFFFF
 0050B37C    mov         edx,14C
 0050B381    call        SendTextMessage
 0050B386    mov         dword ptr [ebp-0C],eax
 0050B389    cmp         dword ptr [ebp-0C],0FFFFFFFF
 0050B38D    setne       byte ptr [ebp-5]
 0050B391    cmp         byte ptr [ebp-5],0
>0050B395    je          0050B4C2
 0050B39B    mov         eax,ebx
 0050B39D    mov         edx,dword ptr [eax]
 0050B39F    call        dword ptr [edx+108];TComboBox.GetItemIndex
 0050B3A5    cmp         eax,dword ptr [ebp-0C]
 0050B3A8    setne       byte ptr [ebp-0D]
 0050B3AC    cmp         byte ptr [ebx+320],0;TCustomComboBox.FAutoCloseUp:Boolean
>0050B3B3    je          0050B3DB
 0050B3B5    mov         edx,esi
 0050B3B7    mov         eax,dword ptr [ebx+2CC];TCustomComboBox.FItems:TStrings
 0050B3BD    mov         ecx,dword ptr [eax]
 0050B3BF    call        dword ptr [ecx+58];TStrings.IndexOf
 0050B3C2    inc         eax
>0050B3C3    je          0050B3DB
 0050B3C5    push        0
 0050B3C7    push        0
 0050B3C9    push        14F
 0050B3CE    mov         eax,ebx
 0050B3D0    call        TWinControl.GetHandle
 0050B3D5    push        eax
 0050B3D6    call        user32.SendMessageW
 0050B3DB    push        0
 0050B3DD    mov         eax,dword ptr [ebp-0C]
 0050B3E0    push        eax
 0050B3E1    push        14E
 0050B3E6    mov         eax,ebx
 0050B3E8    call        TWinControl.GetHandle
 0050B3ED    push        eax
 0050B3EE    call        user32.SendMessageW
 0050B3F3    movzx       eax,byte ptr [ebx+306];TCustomComboBox.FStyle:TComboBoxStyle
 0050B3FA    sub         al,2
>0050B3FC    jae         0050B48C
 0050B402    lea         ecx,[ebp-4]
 0050B405    mov         edx,dword ptr [ebp-0C]
 0050B408    mov         eax,dword ptr [ebx+2CC];TCustomComboBox.FItems:TStrings
 0050B40E    mov         edi,dword ptr [eax]
 0050B410    call        dword ptr [edi+0C];TStrings.Get
 0050B413    mov         edi,esi
 0050B415    test        edi,edi
>0050B417    je          0050B41E
 0050B419    sub         edi,4
 0050B41C    mov         edi,dword ptr [edi]
 0050B41E    lea         eax,[ebp-18]
 0050B421    push        eax
 0050B422    lea         edx,[edi+1]
 0050B425    mov         ecx,7FFFFFFF
 0050B42A    mov         eax,dword ptr [ebp-4]
 0050B42D    call        @UStrCopy
 0050B432    mov         ecx,dword ptr [ebp-18]
 0050B435    lea         eax,[ebp-14]
 0050B438    mov         edx,esi
 0050B43A    call        @UStrCat3
 0050B43F    mov         edx,dword ptr [ebp-14]
 0050B442    mov         eax,ebx
 0050B444    call        TControl.SetText
 0050B449    mov         eax,ebx
 0050B44B    call        TWinControl.GetHandle
 0050B450    mov         edi,eax
 0050B452    test        esi,esi
>0050B454    je          0050B45B
 0050B456    sub         esi,4
 0050B459    mov         esi,dword ptr [esi]
 0050B45B    lea         edx,[ebp-1C]
 0050B45E    mov         eax,ebx
 0050B460    call        TControl.GetText
 0050B465    mov         eax,dword ptr [ebp-1C]
 0050B468    test        eax,eax
>0050B46A    je          0050B471
 0050B46C    sub         eax,4
 0050B46F    mov         eax,dword ptr [eax]
 0050B471    movzx       edx,si
 0050B474    movzx       eax,ax
 0050B477    shl         eax,10
 0050B47A    or          edx,eax
 0050B47C    push        edx
 0050B47D    push        0
 0050B47F    push        142
 0050B484    push        edi
 0050B485    call        user32.SendMessageW
>0050B48A    jmp         0050B4A6
 0050B48C    mov         edx,dword ptr [ebp-0C]
 0050B48F    mov         eax,ebx
 0050B491    mov         ecx,dword ptr [eax]
 0050B493    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 0050B499    lea         eax,[ebx+300];TCustomComboBox.FFilter:string
 0050B49F    mov         edx,esi
 0050B4A1    call        @UStrAsg
 0050B4A6    cmp         byte ptr [ebp-0D],0
>0050B4AA    je          0050B4C2
 0050B4AC    mov         eax,ebx
 0050B4AE    mov         si,0FFEB
 0050B4B2    call        @CallDynaInst;TCustomComboBox.Click
 0050B4B7    mov         eax,ebx
 0050B4B9    mov         si,0FFAC
 0050B4BD    call        @CallDynaInst;TCustomCombo.sub_0050A3FC
 0050B4C2    xor         eax,eax
 0050B4C4    pop         edx
 0050B4C5    pop         ecx
 0050B4C6    pop         ecx
 0050B4C7    mov         dword ptr fs:[eax],edx
 0050B4CA    push        50B4F4
 0050B4CF    lea         eax,[ebp-1C]
 0050B4D2    call        @UStrClr
 0050B4D7    lea         eax,[ebp-18]
 0050B4DA    mov         edx,2
 0050B4DF    call        @UStrArrayClr
 0050B4E4    lea         eax,[ebp-4]
 0050B4E7    call        @UStrClr
 0050B4EC    ret
>0050B4ED    jmp         @HandleFinally
>0050B4F2    jmp         0050B4CF
 0050B4F4    movzx       eax,byte ptr [ebp-5]
 0050B4F8    pop         edi
 0050B4F9    pop         esi
 0050B4FA    pop         ebx
 0050B4FB    mov         esp,ebp
 0050B4FD    pop         ebp
 0050B4FE    ret
end;*}

//0050B500
{*procedure sub_0050B500(?:?);
begin
 0050B500    push        ebx
 0050B501    cmp         word ptr [eax+31A],0;TCustomComboBox.?f31A:word
>0050B509    je          0050B51E
 0050B50B    push        ecx
 0050B50C    mov         ebx,eax
 0050B50E    mov         ecx,edx
 0050B510    mov         edx,eax
 0050B512    mov         eax,dword ptr [ebx+31C];TCustomComboBox.FAutoCompleteDelay:Cardinal
 0050B518    call        dword ptr [ebx+318];TCustomComboBox.FOnMeasureItem
 0050B51E    pop         ebx
 0050B51F    ret
end;*}

//0050B520
{*function sub_0050B520:?;
begin
 0050B520    xor         eax,eax
 0050B522    cmp         edx,1
>0050B525    jne         0050B52A
 0050B527    mov         al,1
 0050B529    ret
 0050B52A    cmp         edx,3
>0050B52D    jne         0050B533
 0050B52F    mov         al,1
>0050B531    jmp         0050B53A
 0050B533    cmp         edx,4
>0050B536    jne         0050B53A
 0050B538    mov         al,1
 0050B53A    ret
end;*}

//0050B53C
{*procedure sub_0050B53C(?:?; ?:?; ?:?);
begin
 0050B53C    push        ebp
 0050B53D    mov         ebp,esp
 0050B53F    add         esp,0FFFFFFF0
 0050B542    push        ebx
 0050B543    push        esi
 0050B544    push        edi
 0050B545    xor         ebx,ebx
 0050B547    mov         dword ptr [ebp-10],ebx
 0050B54A    mov         dword ptr [ebp-0C],ebx
 0050B54D    mov         edi,ecx
 0050B54F    mov         esi,edx
 0050B551    mov         ebx,eax
 0050B553    xor         eax,eax
 0050B555    push        ebp
 0050B556    push        50B61F
 0050B55B    push        dword ptr fs:[eax]
 0050B55E    mov         dword ptr fs:[eax],esp
 0050B561    test        byte ptr [ebx+1C],10;TCustomComboBox.FComponentState:TComponentState
>0050B565    jne         0050B5EF
 0050B56B    mov         eax,ebx
 0050B56D    mov         edx,dword ptr [eax]
 0050B56F    call        dword ptr [edx+24];TComponent.GetObservers
 0050B572    mov         edx,1
 0050B577    mov         ecx,dword ptr [eax]
 0050B579    call        dword ptr [ecx+14];TObservers.IsObserving
 0050B57C    test        al,al
>0050B57E    je          0050B5EF
 0050B580    mov         eax,dword ptr [esi]
 0050B582    sub         eax,201
>0050B587    je          0050B59A
 0050B589    sub         eax,0FF
>0050B58E    je          0050B5CE
 0050B590    add         eax,0FFFFFFFE
 0050B593    sub         eax,3
>0050B596    jb          0050B5CE
>0050B598    jmp         0050B5EF
 0050B59A    cmp         byte ptr [ebx+306],1;TCustomComboBox.FStyle:TComboBoxStyle
>0050B5A1    jne         0050B5EF
 0050B5A3    cmp         edi,dword ptr [ebx+2D0];TCustomComboBox.FEditHandle:HWND
>0050B5A9    je          0050B5EF
 0050B5AB    mov         eax,ebx
 0050B5AD    mov         edx,dword ptr [eax]
 0050B5AF    call        dword ptr [edx+24];TComponent.GetObservers
 0050B5B2    mov         dword ptr [ebp-4],eax
 0050B5B5    lea         edx,[ebp-0C]
 0050B5B8    mov         eax,dword ptr [ebp-4]
 0050B5BB    call        TLinkObservers.GetEditLink
 0050B5C0    mov         eax,dword ptr [ebp-0C]
 0050B5C3    mov         edx,dword ptr [eax]
 0050B5C5    call        dword ptr [edx+24]
 0050B5C8    test        al,al
>0050B5CA    je          0050B5FE
>0050B5CC    jmp         0050B5EF
 0050B5CE    mov         eax,ebx
 0050B5D0    mov         edx,dword ptr [eax]
 0050B5D2    call        dword ptr [edx+24];TComponent.GetObservers
 0050B5D5    mov         dword ptr [ebp-8],eax
 0050B5D8    lea         edx,[ebp-10]
 0050B5DB    mov         eax,dword ptr [ebp-8]
 0050B5DE    call        TLinkObservers.GetEditLink
 0050B5E3    mov         eax,dword ptr [ebp-10]
 0050B5E6    mov         edx,dword ptr [eax]
 0050B5E8    call        dword ptr [edx+24]
 0050B5EB    test        al,al
>0050B5ED    je          0050B5FE
 0050B5EF    mov         eax,dword ptr [ebp+8]
 0050B5F2    push        eax
 0050B5F3    mov         edx,esi
 0050B5F5    mov         ecx,edi
 0050B5F7    mov         eax,ebx
 0050B5F9    call        00509C14
 0050B5FE    xor         eax,eax
 0050B600    pop         edx
 0050B601    pop         ecx
 0050B602    pop         ecx
 0050B603    mov         dword ptr fs:[eax],edx
 0050B606    push        50B626
 0050B60B    lea         eax,[ebp-10]
 0050B60E    mov         edx,dword ptr ds:[4782BC];IEditLinkObserver
 0050B614    mov         ecx,2
 0050B619    call        @FinalizeArray
 0050B61E    ret
>0050B61F    jmp         @HandleFinally
>0050B624    jmp         0050B60B
 0050B626    pop         edi
 0050B627    pop         esi
 0050B628    pop         ebx
 0050B629    mov         esp,ebp
 0050B62B    pop         ebp
 0050B62C    ret         4
end;*}

//0050B630
{*procedure TCustomComboBox.sub_0050B630(?:?);
begin
 0050B630    push        ebx
 0050B631    push        esi
 0050B632    push        edi
 0050B633    push        ebp
 0050B634    mov         ebx,eax
 0050B636    mov         esi,dword ptr [edx+8]
 0050B639    movzx       edi,word ptr [esi+10]
 0050B63D    mov         ebp,dword ptr [esi+10]
 0050B640    test        ebp,1000
>0050B646    je          0050B64D
 0050B648    or          di,1000
 0050B64D    test        ebp,20
>0050B653    je          0050B659
 0050B655    or          di,20
 0050B659    mov         edx,dword ptr [esi+18]
 0050B65C    mov         eax,dword ptr [ebx+290];TCustomComboBox.FCanvas:TCanvas
 0050B662    call        TCanvas.SetHandle
 0050B667    mov         edx,dword ptr [ebx+74];TCustomComboBox.FFont:TFont
 0050B66A    mov         eax,dword ptr [ebx+290];TCustomComboBox.FCanvas:TCanvas
 0050B670    call        TCanvas.SetFont
 0050B675    call        TStyleManager.GetIsCustomStyleActive
 0050B67A    test        al,al
>0050B67C    je          0050B703
 0050B682    test        byte ptr [ebx+188],2;TCustomComboBox.FStyleElements:TStyleElements
>0050B689    je          0050B6BA
 0050B68B    mov         eax,ebx
 0050B68D    mov         edx,dword ptr [eax]
 0050B68F    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 0050B692    and         eax,7F
 0050B695    movzx       eax,byte ptr [eax+7A1380]
 0050B69C    push        eax
 0050B69D    call        StyleServices
 0050B6A2    pop         edx
 0050B6A3    call        TCustomStyleServices.GetStyleColor
 0050B6A8    mov         edx,eax
 0050B6AA    mov         eax,dword ptr [ebx+290];TCustomComboBox.FCanvas:TCanvas
 0050B6B0    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 0050B6B3    call        TBrush.SetColor
>0050B6B8    jmp         0050B6CB
 0050B6BA    mov         edx,dword ptr [ebx+1D0];TCustomComboBox.FBrush:TBrush
 0050B6C0    mov         eax,dword ptr [ebx+290];TCustomComboBox.FCanvas:TCanvas
 0050B6C6    call        TCanvas.SetBrush
 0050B6CB    test        byte ptr [ebx+188],1;TCustomComboBox.FStyleElements:TStyleElements
>0050B6D2    je          0050B732
 0050B6D4    mov         eax,ebx
 0050B6D6    mov         edx,dword ptr [eax]
 0050B6D8    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 0050B6DB    and         eax,7F
 0050B6DE    movzx       eax,byte ptr [eax+7A1382]
 0050B6E5    push        eax
 0050B6E6    call        StyleServices
 0050B6EB    pop         edx
 0050B6EC    call        TCustomStyleServices.GetStyleFontColor
 0050B6F1    mov         edx,eax
 0050B6F3    mov         eax,dword ptr [ebx+290];TCustomComboBox.FCanvas:TCanvas
 0050B6F9    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 0050B6FC    call        TFont.SetColor
>0050B701    jmp         0050B732
 0050B703    mov         edx,dword ptr [ebx+1D0];TCustomComboBox.FBrush:TBrush
 0050B709    mov         eax,dword ptr [ebx+290];TCustomComboBox.FCanvas:TCanvas
 0050B70F    call        TCanvas.SetBrush
 0050B714    mov         eax,ebx
 0050B716    mov         edx,dword ptr [eax]
 0050B718    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 0050B71B    test        al,al
>0050B71D    jne         0050B732
 0050B71F    mov         eax,dword ptr [ebx+290];TCustomComboBox.FCanvas:TCanvas
 0050B725    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 0050B728    mov         edx,0FF000011
 0050B72D    call        TFont.SetColor
 0050B732    cmp         dword ptr [esi+8],0
>0050B736    jl          0050B765
 0050B738    test        di,1
>0050B73D    je          0050B765
 0050B73F    mov         eax,dword ptr [ebx+290];TCustomComboBox.FCanvas:TCanvas
 0050B745    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 0050B748    mov         edx,0FF00000D
 0050B74D    call        TBrush.SetColor
 0050B752    mov         eax,dword ptr [ebx+290];TCustomComboBox.FCanvas:TCanvas
 0050B758    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 0050B75B    mov         edx,0FF00000E
 0050B760    call        TFont.SetColor
 0050B765    mov         eax,dword ptr [esi+8]
 0050B768    test        eax,eax
>0050B76A    jl          0050B77E
 0050B76C    push        edi
 0050B76D    lea         ecx,[esi+1C]
 0050B770    mov         edx,eax
 0050B772    mov         eax,ebx
 0050B774    mov         ebp,dword ptr [eax]
 0050B776    call        dword ptr [ebp+15C];TCustomComboBox.sub_0050A25C
>0050B77C    jmp         0050B78C
 0050B77E    lea         edx,[esi+1C]
 0050B781    mov         eax,dword ptr [ebx+290];TCustomComboBox.FCanvas:TCanvas
 0050B787    mov         ecx,dword ptr [eax]
 0050B789    call        dword ptr [ecx+54];TCanvas.FillRect
 0050B78C    test        di,10
>0050B791    je          0050B7A0
 0050B793    lea         eax,[esi+1C]
 0050B796    push        eax
 0050B797    mov         eax,dword ptr [esi+18]
 0050B79A    push        eax
 0050B79B    call        user32.DrawFocusRect
 0050B7A0    xor         edx,edx
 0050B7A2    mov         eax,dword ptr [ebx+290];TCustomComboBox.FCanvas:TCanvas
 0050B7A8    call        TCanvas.SetHandle
 0050B7AD    pop         ebp
 0050B7AE    pop         edi
 0050B7AF    pop         esi
 0050B7B0    pop         ebx
 0050B7B1    ret
end;*}

//0050B7B4
{*procedure TCustomComboBox.sub_0050B7B4(?:?);
begin
 0050B7B4    push        ebx
 0050B7B5    push        esi
 0050B7B6    push        ecx
 0050B7B7    mov         edx,dword ptr [edx+8]
 0050B7BA    mov         ebx,edx
 0050B7BC    mov         edx,dword ptr [eax+2C8];TCustomComboBox.FItemHeight:Integer
 0050B7C2    mov         dword ptr [ebx+10],edx
 0050B7C5    cmp         byte ptr [eax+306],4;TCustomComboBox.FStyle:TComboBoxStyle
>0050B7CC    jne         0050B7EA
 0050B7CE    mov         edx,dword ptr [eax+2C8];TCustomComboBox.FItemHeight:Integer
 0050B7D4    mov         dword ptr [esp],edx
 0050B7D7    mov         ecx,esp
 0050B7D9    mov         edx,dword ptr [ebx+8]
 0050B7DC    mov         esi,dword ptr [eax]
 0050B7DE    call        dword ptr [esi+160];TCustomComboBox.sub_0050B500
 0050B7E4    mov         eax,dword ptr [esp]
 0050B7E7    mov         dword ptr [ebx+10],eax
 0050B7EA    pop         edx
 0050B7EB    pop         esi
 0050B7EC    pop         ebx
 0050B7ED    ret
end;*}

//0050B7F0
{*procedure TCustomComboBox.WMLButtonDown(?:?);
begin
 0050B7F0    push        ebx
 0050B7F1    push        esi
 0050B7F2    mov         esi,edx
 0050B7F4    mov         ebx,eax
 0050B7F6    mov         eax,ebx
 0050B7F8    call        TGroupBox.GetDragMode
 0050B7FD    cmp         al,1
>0050B7FF    jne         0050B837
 0050B801    cmp         byte ptr [ebx+306],2;TCustomComboBox.FStyle:TComboBoxStyle
>0050B808    jne         0050B837
 0050B80A    push        15
 0050B80C    call        user32.GetSystemMetrics
 0050B811    mov         edx,dword ptr [ebx+58];TCustomComboBox.FWidth:Integer
 0050B814    sub         edx,eax
 0050B816    movsx       eax,word ptr [esi+8]
 0050B81A    cmp         edx,eax
>0050B81C    jle         0050B837
 0050B81E    mov         eax,ebx
 0050B820    mov         edx,dword ptr [eax]
 0050B822    call        dword ptr [edx+104];TWinControl.SetFocus
 0050B828    or          ecx,0FFFFFFFF
 0050B82B    xor         edx,edx
 0050B82D    mov         eax,ebx
 0050B82F    call        TControl.BeginDrag
 0050B834    pop         esi
 0050B835    pop         ebx
 0050B836    ret
 0050B837    mov         edx,esi
 0050B839    mov         eax,ebx
 0050B83B    call        TControl.WMLButtonDown
 0050B840    mov         eax,ebx
 0050B842    call        TControl.GetMouseCapture
 0050B847    test        al,al
>0050B849    je          0050B869
 0050B84B    mov         dl,1
 0050B84D    mov         eax,ebx
 0050B84F    call        GetParentForm
 0050B854    test        eax,eax
>0050B856    je          0050B869
 0050B858    cmp         ebx,dword ptr [eax+2B4];TCustomForm.FActiveControl:TWinControl
>0050B85E    je          0050B869
 0050B860    xor         edx,edx
 0050B862    mov         eax,ebx
 0050B864    call        TControl.SetMouseCapture
 0050B869    pop         esi
 0050B86A    pop         ebx
 0050B86B    ret
end;*}

//0050B86C
{*procedure sub_0050B86C(?:?);
begin
 0050B86C    push        ebp
 0050B86D    mov         ebp,esp
 0050B86F    add         esp,0FFFFFFE0
 0050B872    push        ebx
 0050B873    push        esi
 0050B874    xor         ecx,ecx
 0050B876    mov         dword ptr [ebp-20],ecx
 0050B879    mov         dword ptr [ebp-1C],ecx
 0050B87C    mov         dword ptr [ebp-18],ecx
 0050B87F    mov         dword ptr [ebp-14],ecx
 0050B882    mov         esi,edx
 0050B884    mov         ebx,eax
 0050B886    xor         eax,eax
 0050B888    push        ebp
 0050B889    push        50B9E7
 0050B88E    push        dword ptr fs:[eax]
 0050B891    mov         dword ptr fs:[eax],esp
 0050B894    test        byte ptr [ebx+1C],10;TCustomComboBox.FComponentState:TComponentState
>0050B898    jne         0050B985
 0050B89E    mov         eax,ebx
 0050B8A0    mov         edx,dword ptr [eax]
 0050B8A2    call        dword ptr [edx+24];TComponent.GetObservers
 0050B8A5    mov         edx,1
 0050B8AA    mov         ecx,dword ptr [eax]
 0050B8AC    call        dword ptr [ecx+14];TObservers.IsObserving
 0050B8AF    test        al,al
>0050B8B1    je          0050B985
 0050B8B7    mov         eax,dword ptr [esi]
 0050B8B9    sub         eax,111
>0050B8BE    je          0050B8CA
 0050B8C0    sub         eax,3E
>0050B8C3    je          0050B922
>0050B8C5    jmp         0050B985
 0050B8CA    cmp         word ptr [esi+6],1
>0050B8CF    jne         0050B985
 0050B8D5    mov         eax,ebx
 0050B8D7    mov         edx,dword ptr [eax]
 0050B8D9    call        dword ptr [edx+24];TComponent.GetObservers
 0050B8DC    mov         dword ptr [ebp-4],eax
 0050B8DF    lea         edx,[ebp-14]
 0050B8E2    mov         eax,dword ptr [ebp-4]
 0050B8E5    call        TLinkObservers.GetEditLink
 0050B8EA    mov         eax,dword ptr [ebp-14]
 0050B8ED    mov         edx,dword ptr [eax]
 0050B8EF    call        dword ptr [edx+24]
 0050B8F2    test        al,al
>0050B8F4    jne         0050B985
 0050B8FA    cmp         byte ptr [ebx+306],1;TCustomComboBox.FStyle:TComboBoxStyle
>0050B901    je          0050B9C6
 0050B907    push        0
 0050B909    push        0
 0050B90B    push        14F
 0050B910    mov         eax,ebx
 0050B912    call        TWinControl.GetHandle
 0050B917    push        eax
 0050B918    call        user32.PostMessageW
>0050B91D    jmp         0050B9C6
 0050B922    cmp         dword ptr [esi+4],0
>0050B926    je          0050B947
 0050B928    mov         eax,ebx
 0050B92A    mov         edx,dword ptr [eax]
 0050B92C    call        dword ptr [edx+24];TComponent.GetObservers
 0050B92F    mov         dword ptr [ebp-8],eax
 0050B932    lea         edx,[ebp-18]
 0050B935    mov         eax,dword ptr [ebp-8]
 0050B938    call        TLinkObservers.GetEditLink
 0050B93D    mov         eax,dword ptr [ebp-18]
 0050B940    mov         edx,dword ptr [eax]
 0050B942    call        dword ptr [edx+24]
>0050B945    jmp         0050B985
 0050B947    mov         eax,ebx
 0050B949    mov         edx,dword ptr [eax]
 0050B94B    call        dword ptr [edx+24];TComponent.GetObservers
 0050B94E    mov         dword ptr [ebp-0C],eax
 0050B951    lea         edx,[ebp-1C]
 0050B954    mov         eax,dword ptr [ebp-0C]
 0050B957    call        TLinkObservers.GetEditLink
 0050B95C    mov         eax,dword ptr [ebp-1C]
 0050B95F    mov         edx,dword ptr [eax]
 0050B961    call        dword ptr [edx+44]
 0050B964    test        al,al
>0050B966    jne         0050B985
 0050B968    mov         eax,ebx
 0050B96A    mov         edx,dword ptr [eax]
 0050B96C    call        dword ptr [edx+24];TComponent.GetObservers
 0050B96F    mov         dword ptr [ebp-10],eax
 0050B972    lea         edx,[ebp-20]
 0050B975    mov         eax,dword ptr [ebp-10]
 0050B978    call        TLinkObservers.GetEditLink
 0050B97D    mov         eax,dword ptr [ebp-20]
 0050B980    mov         edx,dword ptr [eax]
 0050B982    call        dword ptr [edx+28]
 0050B985    mov         eax,dword ptr [esi]
 0050B987    add         eax,0FFFF42CE
 0050B98C    sub         eax,7
>0050B98F    jae         0050B9BD
 0050B991    mov         eax,[007C4770];^gvar_007CA5E0
 0050B996    cmp         byte ptr [eax],0
>0050B999    jne         0050B9BD
 0050B99B    cmp         byte ptr [ebx+306],2;TCustomComboBox.FStyle:TComboBoxStyle
>0050B9A2    jae         0050B9BD
 0050B9A4    cmp         dword ptr [ebx+40],0;TCustomComboBox.FParent:TWinControl
>0050B9A8    je          0050B9BD
 0050B9AA    mov         eax,dword ptr [ebx+40];TCustomComboBox.FParent:TWinControl
 0050B9AD    mov         eax,dword ptr [eax+1D0];TWinControl.FBrush:TBrush
 0050B9B3    call        TBrush.GetHandle
 0050B9B8    mov         dword ptr [esi+0C],eax
>0050B9BB    jmp         0050B9C6
 0050B9BD    mov         edx,esi
 0050B9BF    mov         eax,ebx
 0050B9C1    call        00509EFC
 0050B9C6    xor         eax,eax
 0050B9C8    pop         edx
 0050B9C9    pop         ecx
 0050B9CA    pop         ecx
 0050B9CB    mov         dword ptr fs:[eax],edx
 0050B9CE    push        50B9EE
 0050B9D3    lea         eax,[ebp-20]
 0050B9D6    mov         edx,dword ptr ds:[4782BC];IEditLinkObserver
 0050B9DC    mov         ecx,4
 0050B9E1    call        @FinalizeArray
 0050B9E6    ret
>0050B9E7    jmp         @HandleFinally
>0050B9EC    jmp         0050B9D3
 0050B9EE    pop         esi
 0050B9EF    pop         ebx
 0050B9F0    mov         esp,ebp
 0050B9F2    pop         ebp
 0050B9F3    ret
end;*}

//0050B9F4
procedure sub_0050B9F4;
begin
{*
 0050B9F4    mov         eax,dword ptr [eax+2CC];TCustomComboBox.FItems:TStrings
 0050B9FA    mov         edx,dword ptr [eax]
 0050B9FC    call        dword ptr [edx+14];TStrings.GetCount
 0050B9FF    ret
*}
end;

//0050BA00
constructor TComboBoxStrings.Create;
begin
{*
 0050BA00    mov         eax,[00505C24];TComboBoxStrings
 0050BA05    ret
*}
end;

//0050BA08
{*procedure TCustomComboBox.WMPaint(?:?);
begin
 0050BA08    push        ebp
 0050BA09    mov         ebp,esp
 0050BA0B    add         esp,0FFFFFFEC
 0050BA0E    push        ebx
 0050BA0F    mov         ebx,eax
 0050BA11    mov         eax,ebx
 0050BA13    call        TWinControl.WMPaint
 0050BA18    cmp         byte ptr [ebx+1C1],0;TCustomComboBox.FBevelKind:TBevelKind
>0050BA1F    je          0050BBCF
 0050BA25    mov         dl,1
 0050BA27    mov         eax,[004D9044];TControlCanvas
 0050BA2C    call        TCanvas.Create;TControlCanvas.Create
 0050BA31    mov         dword ptr [ebp-4],eax
 0050BA34    xor         edx,edx
 0050BA36    push        ebp
 0050BA37    push        50BBC8
 0050BA3C    push        dword ptr fs:[edx]
 0050BA3F    mov         dword ptr fs:[edx],esp
 0050BA42    mov         edx,ebx
 0050BA44    mov         eax,dword ptr [ebp-4]
 0050BA47    call        TControlCanvas.SetControl
 0050BA4C    lea         edx,[ebp-14]
 0050BA4F    mov         eax,ebx
 0050BA51    mov         ecx,dword ptr [eax]
 0050BA53    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0050BA56    mov         edx,dword ptr [ebx+7C];TCustomComboBox.FColor:TColor
 0050BA59    mov         eax,dword ptr [ebp-4]
 0050BA5C    mov         eax,dword ptr [eax+48];TControlCanvas.FBrush:TBrush
 0050BA5F    call        TBrush.SetColor
 0050BA64    lea         edx,[ebp-14]
 0050BA67    mov         eax,dword ptr [ebp-4]
 0050BA6A    mov         ecx,dword ptr [eax]
 0050BA6C    call        dword ptr [ecx+5C];TCanvas.FrameRect
 0050BA6F    lea         eax,[ebp-14]
 0050BA72    or          ecx,0FFFFFFFF
 0050BA75    or          edx,0FFFFFFFF
 0050BA78    call        InflateRect
 0050BA7D    lea         edx,[ebp-14]
 0050BA80    mov         eax,dword ptr [ebp-4]
 0050BA83    mov         ecx,dword ptr [eax]
 0050BA85    call        dword ptr [ecx+5C];TCanvas.FrameRect
 0050BA88    cmp         byte ptr [ebx+1C1],0;TCustomComboBox.FBevelKind:TBevelKind
>0050BA8F    je          0050BBB2
 0050BA95    xor         eax,eax
 0050BA97    cmp         byte ptr [ebx+1BF],0;TCustomComboBox.FBevelInner:TBevelCut
>0050BA9E    je          0050BAA8
 0050BAA0    mov         edx,dword ptr [ebx+1C4];TCustomComboBox.FBevelWidth:TBevelWidth
 0050BAA6    add         eax,edx
 0050BAA8    cmp         byte ptr [ebx+1C0],0;TCustomComboBox.FBevelOuter:TBevelCut
>0050BAAF    je          0050BAB9
 0050BAB1    mov         edx,dword ptr [ebx+1C4];TCustomComboBox.FBevelWidth:TBevelWidth
 0050BAB7    add         eax,edx
 0050BAB9    test        eax,eax
>0050BABB    jne         0050BAF9
 0050BABD    lea         edx,[ebp-14]
 0050BAC0    mov         eax,ebx
 0050BAC2    mov         ecx,dword ptr [eax]
 0050BAC4    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0050BAC7    mov         edx,dword ptr [ebx+7C];TCustomComboBox.FColor:TColor
 0050BACA    mov         eax,dword ptr [ebp-4]
 0050BACD    mov         eax,dword ptr [eax+48];TControlCanvas.FBrush:TBrush
 0050BAD0    call        TBrush.SetColor
 0050BAD5    lea         edx,[ebp-14]
 0050BAD8    mov         eax,dword ptr [ebp-4]
 0050BADB    mov         ecx,dword ptr [eax]
 0050BADD    call        dword ptr [ecx+5C];TCanvas.FrameRect
 0050BAE0    lea         eax,[ebp-14]
 0050BAE3    or          ecx,0FFFFFFFF
 0050BAE6    or          edx,0FFFFFFFF
 0050BAE9    call        InflateRect
 0050BAEE    lea         edx,[ebp-14]
 0050BAF1    mov         eax,dword ptr [ebp-4]
 0050BAF4    mov         ecx,dword ptr [eax]
 0050BAF6    call        dword ptr [ecx+5C];TCanvas.FrameRect
 0050BAF9    lea         edx,[ebp-14]
 0050BAFC    mov         eax,ebx
 0050BAFE    mov         ecx,dword ptr [eax]
 0050BB00    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0050BB03    movzx       eax,byte ptr [ebx+1BE];TCustomComboBox.FBevelEdges:TBevelEdges
 0050BB0A    movzx       edx,byte ptr [ebx+1C1];TCustomComboBox.FBevelKind:TBevelKind
 0050BB11    or          eax,dword ptr [edx*4+7A13A4]
 0050BB18    movzx       edx,byte ptr [ebx+204];TCustomComboBox.FCtl3D:Boolean
 0050BB1F    or          eax,dword ptr [edx*4+7A13B4]
 0050BB26    or          eax,2000
 0050BB2B    push        eax
 0050BB2C    movzx       eax,byte ptr [ebx+1BF];TCustomComboBox.FBevelInner:TBevelCut
 0050BB33    mov         eax,dword ptr [eax*4+7A1384]
 0050BB3A    movzx       edx,byte ptr [ebx+1C0];TCustomComboBox.FBevelOuter:TBevelCut
 0050BB41    or          eax,dword ptr [edx*4+7A1394]
 0050BB48    push        eax
 0050BB49    lea         eax,[ebp-14]
 0050BB4C    push        eax
 0050BB4D    mov         eax,dword ptr [ebp-4]
 0050BB50    call        TCanvas.GetHandle
 0050BB55    push        eax
 0050BB56    call        user32.DrawEdge
 0050BB5B    push        0A
 0050BB5D    call        user32.GetSystemMetrics
 0050BB62    mov         edx,dword ptr [ebp-0C]
 0050BB65    sub         edx,eax
 0050BB67    mov         dword ptr [ebp-14],edx
 0050BB6A    cmp         byte ptr [ebx+306],1;TCustomComboBox.FStyle:TComboBoxStyle
>0050BB71    je          0050BBB2
 0050BB73    mov         eax,ebx
 0050BB75    call        00509488
 0050BB7A    test        al,al
>0050BB7C    je          0050BB99
 0050BB7E    push        4005
 0050BB83    push        3
 0050BB85    lea         eax,[ebp-14]
 0050BB88    push        eax
 0050BB89    mov         eax,dword ptr [ebp-4]
 0050BB8C    call        TCanvas.GetHandle
 0050BB91    push        eax
 0050BB92    call        user32.DrawFrameControl
>0050BB97    jmp         0050BBB2
 0050BB99    push        4005
 0050BB9E    push        3
 0050BBA0    lea         eax,[ebp-14]
 0050BBA3    push        eax
 0050BBA4    mov         eax,dword ptr [ebp-4]
 0050BBA7    call        TCanvas.GetHandle
 0050BBAC    push        eax
 0050BBAD    call        user32.DrawFrameControl
 0050BBB2    xor         eax,eax
 0050BBB4    pop         edx
 0050BBB5    pop         ecx
 0050BBB6    pop         ecx
 0050BBB7    mov         dword ptr fs:[eax],edx
 0050BBBA    push        50BBCF
 0050BBBF    mov         eax,dword ptr [ebp-4]
 0050BBC2    call        TObject.Free
 0050BBC7    ret
>0050BBC8    jmp         @HandleFinally
>0050BBCD    jmp         0050BBBF
 0050BBCF    pop         ebx
 0050BBD0    mov         esp,ebp
 0050BBD2    pop         ebp
 0050BBD3    ret
end;*}

//0050BBD4
procedure TButtonActionLink.AssignClient(AClient:TObject);
begin
{*
 0050BBD4    push        ebx
 0050BBD5    push        esi
 0050BBD6    mov         esi,edx
 0050BBD8    mov         ebx,eax
 0050BBDA    mov         edx,esi
 0050BBDC    mov         eax,ebx
 0050BBDE    call        TWinControlActionLink.AssignClient
 0050BBE3    mov         eax,esi
 0050BBE5    mov         edx,dword ptr ds:[4FE1FC];TButtonControl
 0050BBEB    call        @AsClass
 0050BBF0    mov         dword ptr [ebx+28],eax;TButtonActionLink........FClient:TButtonControl
 0050BBF3    pop         esi
 0050BBF4    pop         ebx
 0050BBF5    ret
*}
end;

//0050BBF8
{*function TButtonActionLink.IsCheckedLinked:?;
begin
 0050BBF8    push        ebx
 0050BBF9    mov         ebx,eax
 0050BBFB    mov         eax,ebx
 0050BBFD    call        TContainedActionLink.IsCheckedLinked
 0050BC02    test        al,al
>0050BC04    je          0050BC19
 0050BC06    mov         eax,dword ptr [ebx+28];TButtonActionLink.........FClient:TButtonControl
 0050BC09    mov         edx,dword ptr [eax]
 0050BC0B    call        dword ptr [edx+108];TButtonControl.sub_0050BD48
 0050BC11    mov         edx,dword ptr [ebx+10];TButtonActionLink.FAction:TBasicAction
 0050BC14    cmp         al,byte ptr [edx+70]
>0050BC17    je          0050BC1D
 0050BC19    xor         eax,eax
 0050BC1B    pop         ebx
 0050BC1C    ret
 0050BC1D    mov         al,1
 0050BC1F    pop         ebx
 0050BC20    ret
end;*}

//0050BC24
{*procedure sub_0050BC24(?:?);
begin
 0050BC24    push        ebp
 0050BC25    mov         ebp,esp
 0050BC27    push        ecx
 0050BC28    push        ebx
 0050BC29    mov         ebx,edx
 0050BC2B    mov         dword ptr [ebp-4],eax
 0050BC2E    mov         eax,dword ptr [ebp-4]
 0050BC31    mov         edx,dword ptr [eax]
 0050BC33    call        dword ptr [edx+28];TButtonActionLink.IsCheckedLinked
 0050BC36    test        al,al
>0050BC38    je          0050BC81
 0050BC3A    mov         eax,dword ptr [ebp-4]
 0050BC3D    mov         eax,dword ptr [eax+28];TButtonActionLink..........FClient:TButtonControl
 0050BC40    mov         byte ptr [eax+290],1;TButtonControl.FClicksDisabled:Boolean
 0050BC47    xor         edx,edx
 0050BC49    push        ebp
 0050BC4A    push        50BC7A
 0050BC4F    push        dword ptr fs:[edx]
 0050BC52    mov         dword ptr fs:[edx],esp
 0050BC55    mov         edx,ebx
 0050BC57    mov         ecx,dword ptr [eax]
 0050BC59    call        dword ptr [ecx+10C];TButtonControl.sub_0050BD6C
 0050BC5F    xor         eax,eax
 0050BC61    pop         edx
 0050BC62    pop         ecx
 0050BC63    pop         ecx
 0050BC64    mov         dword ptr fs:[eax],edx
 0050BC67    push        50BC81
 0050BC6C    mov         eax,dword ptr [ebp-4]
 0050BC6F    mov         eax,dword ptr [eax+28];TButtonActionLink...........FClient:TButtonControl
 0050BC72    mov         byte ptr [eax+290],0;TButtonControl.FClicksDisabled:Boolean
 0050BC79    ret
>0050BC7A    jmp         @HandleFinally
>0050BC7F    jmp         0050BC6C
 0050BC81    pop         ebx
 0050BC82    pop         ecx
 0050BC83    pop         ebp
 0050BC84    ret
end;*}

//0050BC88
constructor TButtonControl.Create(AOwner:TComponent);
begin
{*
 0050BC88    push        ebx
 0050BC89    push        esi
 0050BC8A    test        dl,dl
>0050BC8C    je          0050BC96
 0050BC8E    add         esp,0FFFFFFF0
 0050BC91    call        @ClassCreate
 0050BC96    mov         ebx,edx
 0050BC98    mov         esi,eax
 0050BC9A    xor         edx,edx
 0050BC9C    mov         eax,esi
 0050BC9E    call        TWinControl.Create
 0050BCA3    mov         eax,[007C4EF4];^gvar_007C7CB8:Cardinal
 0050BCA8    cmp         byte ptr [eax+0C],0;TSysLocale.FarEast:Boolean
>0050BCAC    je          0050BCBF
 0050BCAE    mov         eax,[007C4EC4];^gvar_0079EDDC
 0050BCB3    cmp         dword ptr [eax],2
>0050BCB6    jne         0050BCBF
 0050BCB8    mov         byte ptr [esi+1DC],0;TButtonControl.FImeMode:TImeMode
 0050BCBF    mov         byte ptr [esi+1EC],0;TButtonControl.FTipMode:TTipMode
 0050BCC6    mov         eax,esi
 0050BCC8    test        bl,bl
>0050BCCA    je          0050BCDB
 0050BCCC    call        @AfterConstruction
 0050BCD1    pop         dword ptr fs:[0]
 0050BCD8    add         esp,0C
 0050BCDB    mov         eax,esi
 0050BCDD    pop         esi
 0050BCDE    pop         ebx
 0050BCDF    ret
*}
end;

//0050BCE0
{*procedure TButtonControl.sub_004E980C(?:?; ?:?);
begin
 0050BCE0    push        ebx
 0050BCE1    push        esi
 0050BCE2    push        edi
 0050BCE3    mov         ebx,ecx
 0050BCE5    mov         esi,edx
 0050BCE7    mov         edi,eax
 0050BCE9    mov         ecx,ebx
 0050BCEB    mov         edx,esi
 0050BCED    mov         eax,edi
 0050BCEF    call        TWinControl.sub_004E980C
 0050BCF4    mov         eax,esi
 0050BCF6    mov         edx,dword ptr ds:[4D55AC];TCustomAction
 0050BCFC    call        @IsClass
 0050BD01    test        al,al
>0050BD03    je          0050BD39
 0050BD05    test        bl,bl
>0050BD07    je          0050BD17
 0050BD09    mov         eax,edi
 0050BD0B    mov         edx,dword ptr [eax]
 0050BD0D    call        dword ptr [edx+108];TButtonControl.sub_0050BD48
 0050BD13    test        al,al
>0050BD15    jne         0050BD39
 0050BD17    movzx       ebx,byte ptr [edi+290];TButtonControl.FClicksDisabled:Boolean
 0050BD1E    mov         byte ptr [edi+290],1;TButtonControl.FClicksDisabled:Boolean
 0050BD25    movzx       edx,byte ptr [esi+70]
 0050BD29    mov         eax,edi
 0050BD2B    mov         ecx,dword ptr [eax]
 0050BD2D    call        dword ptr [ecx+10C];TButtonControl.sub_0050BD6C
 0050BD33    mov         byte ptr [edi+290],bl;TButtonControl.FClicksDisabled:Boolean
 0050BD39    pop         edi
 0050BD3A    pop         esi
 0050BD3B    pop         ebx
 0050BD3C    ret
end;*}

//0050BD40
procedure TButtonControl.sub_004E9934;
begin
{*
 0050BD40    mov         eax,[004FE098];TButtonActionLink
 0050BD45    ret
*}
end;

//0050BD48
{*function sub_0050BD48:?;
begin
 0050BD48    xor         eax,eax
 0050BD4A    ret
end;*}

//0050BD4C
function TCheckBox.IsStoredChecked(Value:Boolean):Boolean;
begin
{*
 0050BD4C    push        ebx
 0050BD4D    push        esi
 0050BD4E    mov         ebx,eax
 0050BD50    mov         esi,dword ptr [ebx+78];TCheckBox.FActionLink:TControlActionLink
 0050BD53    test        esi,esi
>0050BD55    je          0050BD67
 0050BD57    mov         eax,esi
 0050BD59    mov         edx,dword ptr [eax]
 0050BD5B    call        dword ptr [edx+28];TContainedActionLink.IsCheckedLinked
 0050BD5E    test        al,al
>0050BD60    je          0050BD67
 0050BD62    xor         eax,eax
 0050BD64    pop         esi
 0050BD65    pop         ebx
 0050BD66    ret
 0050BD67    mov         al,1
 0050BD69    pop         esi
 0050BD6A    pop         ebx
 0050BD6B    ret
*}
end;

//0050BD6C
procedure sub_0050BD6C;
begin
{*
 0050BD6C    ret
*}
end;

//0050BD70
{*procedure sub_0050BD70(?:?);
begin
 0050BD70    push        ebx
 0050BD71    push        esi
 0050BD72    push        edi
 0050BD73    mov         edi,edx
 0050BD75    mov         ebx,eax
 0050BD77    mov         eax,dword ptr [edi]
 0050BD79    sub         eax,201
>0050BD7E    je          0050BD8E
 0050BD80    sub         eax,2
>0050BD83    je          0050BD8E
 0050BD85    sub         eax,0BB0E
>0050BD8A    je          0050BDCF
>0050BD8C    jmp         0050BDD8
 0050BD8E    test        byte ptr [ebx+1C],10;TButtonControl.FComponentState:TComponentState
>0050BD92    jne         0050BDD8
 0050BD94    mov         eax,ebx
 0050BD96    mov         si,0FFB1
 0050BD9A    call        @CallDynaInst;TWinControl.sub_004EFDB8
 0050BD9F    test        al,al
>0050BDA1    jne         0050BDD8
 0050BDA3    mov         byte ptr [ebx+290],1;TButtonControl.FClicksDisabled:Boolean
 0050BDAA    mov         eax,ebx
 0050BDAC    call        TWinControl.GetHandle
 0050BDB1    push        eax
 0050BDB2    call        user32.SetFocus
 0050BDB7    mov         byte ptr [ebx+290],0;TButtonControl.FClicksDisabled:Boolean
 0050BDBE    mov         eax,ebx
 0050BDC0    mov         si,0FFB1
 0050BDC4    call        @CallDynaInst;TWinControl.sub_004EFDB8
 0050BDC9    test        al,al
>0050BDCB    je          0050BDE1
>0050BDCD    jmp         0050BDD8
 0050BDCF    cmp         byte ptr [ebx+290],0;TButtonControl.FClicksDisabled:Boolean
>0050BDD6    jne         0050BDE1
 0050BDD8    mov         edx,edi
 0050BDDA    mov         eax,ebx
 0050BDDC    call        004ECAFC
 0050BDE1    pop         edi
 0050BDE2    pop         esi
 0050BDE3    pop         ebx
 0050BDE4    ret
end;*}

//0050BDE8
{*procedure TButtonControl.sub_0050BDE8(?:?);
begin
 0050BDE8    push        ebx
 0050BDE9    push        esi
 0050BDEA    push        edi
 0050BDEB    mov         esi,edx
 0050BDED    mov         ebx,eax
 0050BDEF    call        StyleServices
 0050BDF4    mov         edi,eax
 0050BDF6    mov         eax,ebx
 0050BDF8    call        00585D90
 0050BDFD    test        al,al
>0050BDFF    je          0050BE42
 0050BE01    mov         eax,dword ptr [ebx+40];TButtonControl.FParent:TWinControl
 0050BE04    test        eax,eax
>0050BE06    je          0050BE1D
 0050BE08    cmp         byte ptr [eax+280],0;TWinControl.FDoubleBuffered:Boolean
>0050BE0F    je          0050BE1D
 0050BE11    mov         edx,dword ptr [esi+4]
 0050BE14    mov         eax,ebx
 0050BE16    call        004E3750
>0050BE1B    jmp         0050BE36
 0050BE1D    push        0
 0050BE1F    push        0
 0050BE21    push        0
 0050BE23    mov         eax,ebx
 0050BE25    call        TWinControl.GetHandle
 0050BE2A    mov         edx,eax
 0050BE2C    mov         ecx,dword ptr [esi+4]
 0050BE2F    mov         eax,edi
 0050BE31    call        TCustomStyleServices.DrawParentBackground
 0050BE36    push        5
 0050BE38    call        gdi32.GetStockObject
 0050BE3D    mov         dword ptr [esi+0C],eax
>0050BE40    jmp         0050BE4B
 0050BE42    mov         edx,esi
 0050BE44    mov         eax,ebx
 0050BE46    mov         ecx,dword ptr [eax]
 0050BE48    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 0050BE4B    pop         edi
 0050BE4C    pop         esi
 0050BE4D    pop         ebx
 0050BE4E    ret
end;*}

//0050BE50
{*procedure TButtonControl.WMEraseBkgnd(?:?);
begin
 0050BE50    push        ebx
 0050BE51    push        esi
 0050BE52    mov         esi,edx
 0050BE54    mov         ebx,eax
 0050BE56    call        StyleServices
 0050BE5B    mov         edx,dword ptr [eax]
 0050BE5D    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 0050BE60    test        al,al
>0050BE62    je          0050BE6E
 0050BE64    mov         dword ptr [esi+0C],1
 0050BE6B    pop         esi
 0050BE6C    pop         ebx
 0050BE6D    ret
 0050BE6E    mov         edx,esi
 0050BE70    mov         eax,ebx
 0050BE72    call        TWinControl.WMEraseBkgnd
 0050BE77    pop         esi
 0050BE78    pop         ebx
 0050BE79    ret
end;*}

//0050BE7C
procedure TButtonControl.CreateParams(var Params:TCreateParams);
begin
{*
 0050BE7C    push        ebx
 0050BE7D    push        esi
 0050BE7E    mov         esi,edx
 0050BE80    mov         ebx,eax
 0050BE82    mov         edx,esi
 0050BE84    mov         eax,ebx
 0050BE86    call        TWinControl.CreateParams
 0050BE8B    cmp         byte ptr [ebx+291],0;TButtonControl.FWordWrap:Boolean
>0050BE92    je          0050BE9B
 0050BE94    or          dword ptr [esi+4],2000;TCreateParams.Style:DWORD
 0050BE9B    pop         esi
 0050BE9C    pop         ebx
 0050BE9D    ret
*}
end;

//0050BEA0
procedure TButton.SetWordWrap(Value:Boolean);
begin
{*
 0050BEA0    cmp         dl,byte ptr [eax+291];TButton.FWordWrap:Boolean
>0050BEA6    je          0050BEB3
 0050BEA8    mov         byte ptr [eax+291],dl;TButton.FWordWrap:Boolean
 0050BEAE    call        TWinControl.RecreateWnd
 0050BEB3    ret
*}
end;

//0050BEB4
procedure TImageMargins.Assign(Source:TPersistent);
begin
{*
 0050BEB4    push        ebx
 0050BEB5    push        esi
 0050BEB6    mov         esi,edx
 0050BEB8    mov         ebx,eax
 0050BEBA    mov         eax,esi
 0050BEBC    mov         edx,dword ptr ds:[4FE498];TImageMargins
 0050BEC2    call        @IsClass
 0050BEC7    test        al,al
>0050BEC9    je          0050BEEF
 0050BECB    mov         eax,esi
 0050BECD    mov         edx,dword ptr [eax+10]
 0050BED0    mov         dword ptr [ebx+10],edx;TImageMargins.FLeft:Integer
 0050BED3    mov         edx,dword ptr [eax+0C]
 0050BED6    mov         dword ptr [ebx+0C],edx;TImageMargins.FTop:Integer
 0050BED9    mov         edx,dword ptr [eax+4]
 0050BEDC    mov         dword ptr [ebx+4],edx;TImageMargins.FRight:Integer
 0050BEDF    mov         eax,dword ptr [eax+8]
 0050BEE2    mov         dword ptr [ebx+8],eax;TImageMargins.FBottom:Integer
 0050BEE5    mov         eax,ebx
 0050BEE7    mov         edx,dword ptr [eax]
 0050BEE9    call        dword ptr [edx+0C];TImageMargins.sub_0050BEFC
 0050BEEC    pop         esi
 0050BEED    pop         ebx
 0050BEEE    ret
 0050BEEF    mov         edx,esi
 0050BEF1    mov         eax,ebx
 0050BEF3    call        TPersistent.Assign
 0050BEF8    pop         esi
 0050BEF9    pop         ebx
 0050BEFA    ret
*}
end;

//0050BEFC
procedure sub_0050BEFC;
begin
{*
 0050BEFC    push        ebx
 0050BEFD    cmp         word ptr [eax+1A],0;TImageMargins.?f1A:word
>0050BF02    je          0050BF0E
 0050BF04    mov         ebx,eax
 0050BF06    mov         edx,eax
 0050BF08    mov         eax,dword ptr [ebx+1C];TImageMargins.?f1C:TCustomButton
 0050BF0B    call        dword ptr [ebx+18];TImageMargins.FOnChange
 0050BF0E    pop         ebx
 0050BF0F    ret
*}
end;

//0050BF10
{*procedure TImageMargins.SetLeft(Value:Integer; ?:?);
begin
 0050BF10    sub         edx,1
>0050BF13    jb          0050BF1F
>0050BF15    je          0050BF2D
 0050BF17    dec         edx
>0050BF18    je          0050BF3B
 0050BF1A    dec         edx
>0050BF1B    je          0050BF49
>0050BF1D    jmp         0050BF56
 0050BF1F    cmp         ecx,dword ptr [eax+10];TImageMargins.FLeft:Integer
>0050BF22    je          0050BF56
 0050BF24    mov         dword ptr [eax+10],ecx;TImageMargins.FLeft:Integer
 0050BF27    mov         edx,dword ptr [eax]
 0050BF29    call        dword ptr [edx+0C];TImageMargins.sub_0050BEFC
 0050BF2C    ret
 0050BF2D    cmp         ecx,dword ptr [eax+0C];TImageMargins.FTop:Integer
>0050BF30    je          0050BF56
 0050BF32    mov         dword ptr [eax+0C],ecx;TImageMargins.FTop:Integer
 0050BF35    mov         edx,dword ptr [eax]
 0050BF37    call        dword ptr [edx+0C];TImageMargins.sub_0050BEFC
 0050BF3A    ret
 0050BF3B    cmp         ecx,dword ptr [eax+4];TImageMargins.FRight:Integer
>0050BF3E    je          0050BF56
 0050BF40    mov         dword ptr [eax+4],ecx;TImageMargins.FRight:Integer
 0050BF43    mov         edx,dword ptr [eax]
 0050BF45    call        dword ptr [edx+0C];TImageMargins.sub_0050BEFC
 0050BF48    ret
 0050BF49    cmp         ecx,dword ptr [eax+8];TImageMargins.FBottom:Integer
>0050BF4C    je          0050BF56
 0050BF4E    mov         dword ptr [eax+8],ecx;TImageMargins.FBottom:Integer
 0050BF51    mov         edx,dword ptr [eax]
 0050BF53    call        dword ptr [edx+0C];TImageMargins.sub_0050BEFC
 0050BF56    ret
end;*}

//0050BF58
{*function TPushButtonActionLink.IsImageIndexLinked:?;
begin
 0050BF58    push        ebx
 0050BF59    mov         ebx,eax
 0050BF5B    mov         eax,ebx
 0050BF5D    call        TContainedActionLink.IsImageIndexLinked
 0050BF62    test        al,al
>0050BF64    je          0050BF7A
 0050BF66    mov         eax,dword ptr [ebx+28];TPushButtonActionLink............FClient:TButtonControl
 0050BF69    mov         eax,dword ptr [eax+2BC]
 0050BF6F    mov         edx,dword ptr [ebx+10];TPushButtonActionLink.FAction:TBasicAction
 0050BF72    cmp         eax,dword ptr [edx+90]
>0050BF78    je          0050BF7E
 0050BF7A    xor         eax,eax
 0050BF7C    pop         ebx
 0050BF7D    ret
 0050BF7E    mov         al,1
 0050BF80    pop         ebx
 0050BF81    ret
end;*}

//0050BF84
{*procedure sub_0050BF84(?:?);
begin
 0050BF84    push        ebx
 0050BF85    push        esi
 0050BF86    mov         esi,edx
 0050BF88    mov         ebx,eax
 0050BF8A    mov         eax,ebx
 0050BF8C    mov         edx,dword ptr [eax]
 0050BF8E    call        dword ptr [edx+40];TPushButtonActionLink.IsImageIndexLinked
 0050BF91    test        al,al
>0050BF93    je          0050BF9F
 0050BF95    mov         edx,esi
 0050BF97    mov         eax,dword ptr [ebx+28];TPushButtonActionLink.............FClient:TButtonControl
 0050BF9A    call        TButton.SetImageIndex
 0050BF9F    pop         esi
 0050BFA0    pop         ebx
 0050BFA1    ret
end;*}

//0050BFA4
constructor TCustomButton.Create(AOwner:TComponent);
begin
{*
 0050BFA4    push        ebp
 0050BFA5    mov         ebp,esp
 0050BFA7    push        ecx
 0050BFA8    push        ebx
 0050BFA9    push        esi
 0050BFAA    test        dl,dl
>0050BFAC    je          0050BFB6
 0050BFAE    add         esp,0FFFFFFF0
 0050BFB1    call        @ClassCreate
 0050BFB6    mov         byte ptr [ebp-1],dl
 0050BFB9    mov         ebx,eax
 0050BFBB    xor         edx,edx
 0050BFBD    mov         eax,ebx
 0050BFBF    call        TButtonControl.Create
 0050BFC4    mov         eax,[0050C0AC];0xA0 gvar_0050C0AC
 0050BFC9    mov         dword ptr [ebx+60],eax;TCustomButton.FControlStyle:TControlStyle
 0050BFCC    mov         edx,4B
 0050BFD1    mov         eax,ebx
 0050BFD3    call        TControl.SetWidth
 0050BFD8    mov         edx,19
 0050BFDD    mov         eax,ebx
 0050BFDF    call        TControl.SetHeight
 0050BFE4    mov         dl,1
 0050BFE6    mov         eax,ebx
 0050BFE8    call        TWinControl.SetTabStop
 0050BFED    mov         dl,1
 0050BFEF    mov         eax,[005A6CE0];TChangeLink
 0050BFF4    call        TChangeLink.Create;TChangeLink.Create
 0050BFF9    mov         esi,eax
 0050BFFB    mov         dword ptr [ebx+2B8],esi;TCustomButton.FImageChangeLink:TChangeLink
 0050C001    mov         dword ptr [esi+14],ebx;TChangeLink.?f14:TCustomActionList
 0050C004    mov         dword ptr [esi+10],50CB44;TChangeLink.FOnChange:TNotifyEvent sub_0050CB44
 0050C00B    mov         dl,1
 0050C00D    mov         eax,[004FE498];TImageMargins
 0050C012    call        TObject.Create;TImageMargins.Create
 0050C017    mov         esi,eax
 0050C019    mov         dword ptr [ebx+2C0],esi;TCustomButton.FImageMargins:TImageMargins
 0050C01F    mov         dword ptr [esi+1C],ebx;TImageMargins.?f1C:TCustomButton
 0050C022    mov         dword ptr [esi+18],50CB60;TImageMargins.FOnChange:TNotifyEvent sub_0050CB60
 0050C029    xor         eax,eax
 0050C02B    mov         dword ptr [ebx+2C8],eax;TCustomButton.FInternalImageList:TImageList
 0050C031    lea         eax,[ebx+29C];TCustomButton.FCommandLinkHint:string
 0050C037    call        @UStrClr
 0050C03C    mov         dword ptr [ebx+2A4],0FFFFFFFF;TCustomButton.FDisabledImageIndex:TImageIndex
 0050C046    mov         byte ptr [ebx+2AC],0;TCustomButton.FElevationRequired:Boolean
 0050C04D    mov         dword ptr [ebx+2B0],0FFFFFFFF;TCustomButton.FHotImageIndex:TImageIndex
 0050C057    mov         byte ptr [ebx+2B4],0;TCustomButton.FImageAlignment:TImageAlignment
 0050C05E    mov         dword ptr [ebx+2BC],0FFFFFFFF;TCustomButton.FImageIndex:TImageIndex
 0050C068    mov         dword ptr [ebx+2D0],0FFFFFFFF;TCustomButton.FPressedImageIndex:TImageIndex
 0050C072    mov         dword ptr [ebx+2D4],0FFFFFFFF;TCustomButton.FSelectedImageIndex:TImageIndex
 0050C07C    mov         byte ptr [ebx+2D8],0;TCustomButton.FStyle:TButtonStyle
 0050C083    mov         dword ptr [ebx+2DC],0FFFFFFFF;TCustomButton.FStylusHotImageIndex:TImageIndex
 0050C08D    mov         eax,ebx
 0050C08F    cmp         byte ptr [ebp-1],0
>0050C093    je          0050C0A4
 0050C095    call        @AfterConstruction
 0050C09A    pop         dword ptr fs:[0]
 0050C0A1    add         esp,0C
 0050C0A4    mov         eax,ebx
 0050C0A6    pop         esi
 0050C0A7    pop         ebx
 0050C0A8    pop         ecx
 0050C0A9    pop         ebp
 0050C0AA    ret
*}
end;

Initialization
//0079D0A8
{*
 0079D0A8    sub         dword ptr ds:[7CA654],1
>0079D0AF    jae         0079D0C7
 0079D0B1    mov         ecx,dword ptr ds:[505394];TButtonStyleHook
 0079D0B7    mov         edx,dword ptr ds:[4FE868];TCustomButton
 0079D0BD    mov         eax,[005738E0];TCustomStyleEngine
 0079D0C2    call        TCustomStyleEngine.RegisterStyleHook
 0079D0C7    ret
*}
Finalization
end.