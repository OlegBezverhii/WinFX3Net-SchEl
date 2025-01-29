//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit85;

interface

uses
  SysUtils, Classes;

    constructor Create(AOwner:TComponent);//005DC294
    destructor Destroy();//005DC348
    procedure sub_005DC384;//005DC384
    procedure CreateParams(var Params:TCreateParams);//005DC3B0
    //procedure sub_005DC3C0(?:?);//005DC3C0
    procedure sub_005DC3D4;//005DC3D4
    procedure Click;//005DC3E4
    //procedure sub_005DC494(?:?);//005DC494
    //procedure sub_005DC4A4(?:?);//005DC4A4
    //procedure sub_005DC4B0(?:TBitBtn; ?:?);//005DC4B0
    procedure CMFontChanged;//005DC984
    procedure CMEnabledChanged;//005DC99C
    //procedure WMLButtonDblClk(?:?);//005DC9B4
    procedure sub_004E5D1C;//005DC9D4
    procedure SetGlyph(Value:TBitmap);//005DC9E8
    //function GetGlyph:?;//005DCA0C
    procedure sub_005DCA18(?:TBitBtn);//005DCA18
    //procedure sub_005DCA28(?:?; ?:TBitmap; ?:?; ?:?);//005DCA28
    function IsStoredCancel(Value:Boolean):Boolean;//005DCAB0
    procedure SetStyle(Value:TButtonStyle);//005DCAEC
    procedure SetKind(Value:TBitBtnKind);//005DCB0C
    function IsStoredCaption(Value:TCaption):Boolean;//005DCC18
    //function GetKind:?;//005DCC90
    procedure SetLayout(Value:TButtonLayout);//005DCD00
    //function GetNumGlyphs:?;//005DCD20
    procedure SetNumGlyphs(Value:TNumGlyphs);//005DCD2C
    procedure SetSpacing(Value:Integer);//005DCD5C
    procedure SetMargin(Value:Integer);//005DCD7C
    //procedure sub_005DCDA0(?:TBitBtn; ?:?; ?:?);//005DCDA0
    //procedure sub_004E980C(?:?; ?:?);//005DCDC0
    procedure sub_005DCEB8;//005DCEB8
    //procedure CMMouseEnter(?:?);//005DCED4
    //procedure CMMouseLeave(?:?);//005DCF1C
    procedure sub_004E9934;//005DCF58
    //procedure sub_005DCF60(?:?; ?:?);//005DCF60
    procedure AssignClient(AClient:TObject);//005DD150
    constructor Create(AClient:TObject);//005DD174
    //function IsImageIndexLinked:?;//005DD1B0
    //function sub_005DD1D4(?:TControlActionLink; ?:Integer):?;//005DD1D4
    //procedure sub_005DD298(?:?);//005DD298

implementation

//005DC294
constructor TBitBtn.Create(AOwner:TComponent);
begin
{*
 005DC294    push        ebp
 005DC295    mov         ebp,esp
 005DC297    push        ecx
 005DC298    push        ebx
 005DC299    push        esi
 005DC29A    push        edi
 005DC29B    test        dl,dl
>005DC29D    je          005DC2A7
 005DC29F    add         esp,0FFFFFFF0
 005DC2A2    call        @ClassCreate
 005DC2A7    mov         edi,ecx
 005DC2A9    mov         byte ptr [ebp-1],dl
 005DC2AC    mov         ebx,eax
 005DC2AE    mov         dl,1
 005DC2B0    mov         eax,[005D9A1C];TButtonGlyph
 005DC2B5    call        TButtonGlyph.Create;TButtonGlyph.Create
 005DC2BA    mov         esi,eax
 005DC2BC    mov         dword ptr [ebx+2EC],esi;TBitBtn.FGlyph:TObject
 005DC2C2    mov         dword ptr [esi+3C],ebx;TButtonGlyph.?f3C:TSpeedButton
 005DC2C5    mov         dword ptr [esi+38],5DCA18;TButtonGlyph.FOnChange:TNotifyEvent sub_005DCA18
 005DC2CC    mov         ecx,edi
 005DC2CE    xor         edx,edx
 005DC2D0    mov         eax,ebx
 005DC2D2    call        TCustomButton.Create
 005DC2D7    mov         dl,1
 005DC2D9    mov         eax,[004BF670];TCanvas
 005DC2DE    call        TCanvas.Create;TCanvas.Create
 005DC2E3    mov         dword ptr [ebx+2E8],eax;TBitBtn.FCanvas:TCanvas
 005DC2E9    mov         byte ptr [ebx+2F0],0;TBitBtn.FStyle:TButtonStyle
 005DC2F0    mov         byte ptr [ebx+2F1],0;TBitBtn.FKind:TBitBtnKind
 005DC2F7    mov         byte ptr [ebx+2F2],0;TBitBtn.FLayout:TButtonLayout
 005DC2FE    mov         dword ptr [ebx+2F4],4;TBitBtn.FSpacing:Integer
 005DC308    mov         dword ptr [ebx+2F8],0FFFFFFFF;TBitBtn.FMargin:Integer
 005DC312    mov         eax,[005DC344];^gvar_00404000
 005DC317    or          dword ptr [ebx+60],eax;TBitBtn.FControlStyle:TControlStyle
 005DC31A    mov         dl,1
 005DC31C    mov         eax,ebx
 005DC31E    call        TWinControl.SetDoubleBuffered
 005DC323    mov         eax,ebx
 005DC325    cmp         byte ptr [ebp-1],0
>005DC329    je          005DC33A
 005DC32B    call        @AfterConstruction
 005DC330    pop         dword ptr fs:[0]
 005DC337    add         esp,0C
 005DC33A    mov         eax,ebx
 005DC33C    pop         edi
 005DC33D    pop         esi
 005DC33E    pop         ebx
 005DC33F    pop         ecx
 005DC340    pop         ebp
 005DC341    ret
*}
end;

//005DC348
destructor TBitBtn.Destroy();
begin
{*
 005DC348    push        ebx
 005DC349    push        esi
 005DC34A    call        @BeforeDestruction
 005DC34F    mov         ebx,edx
 005DC351    mov         esi,eax
 005DC353    mov         dl,0FC
 005DC355    and         dl,bl
 005DC357    mov         eax,esi
 005DC359    call        TCustomButton.Destroy
 005DC35E    mov         eax,dword ptr [esi+2EC];TBitBtn.FGlyph:TObject
 005DC364    call        TObject.Free
 005DC369    mov         eax,dword ptr [esi+2E8];TBitBtn.FCanvas:TCanvas
 005DC36F    call        TObject.Free
 005DC374    test        bl,bl
>005DC376    jle         005DC37F
 005DC378    mov         eax,esi
 005DC37A    call        @ClassDestroy
 005DC37F    pop         esi
 005DC380    pop         ebx
 005DC381    ret
*}
end;

//005DC384
procedure sub_005DC384;
begin
{*
 005DC384    push        ebx
 005DC385    push        esi
 005DC386    mov         esi,eax
 005DC388    mov         eax,esi
 005DC38A    mov         edx,dword ptr [eax]
 005DC38C    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 005DC38F    test        al,al
>005DC391    je          005DC397
 005DC393    xor         ebx,ebx
>005DC395    jmp         005DC399
 005DC397    mov         bl,1
 005DC399    mov         eax,esi
 005DC39B    call        004EC138
 005DC3A0    mov         edx,ebx
 005DC3A2    mov         eax,dword ptr [esi+2EC];TBitBtn.FGlyph:TObject
 005DC3A8    call        TButtonGlyph.CreateButtonGlyph
 005DC3AD    pop         esi
 005DC3AE    pop         ebx
 005DC3AF    ret
*}
end;

//005DC3B0
procedure TBitBtn.CreateParams(var Params:TCreateParams);
begin
{*
 005DC3B0    push        ebx
 005DC3B1    mov         ebx,edx
 005DC3B3    mov         edx,ebx
 005DC3B5    call        TCustomButton.CreateParams
 005DC3BA    or          dword ptr [ebx+4],0B;TCreateParams.Style:DWORD
 005DC3BE    pop         ebx
 005DC3BF    ret
*}
end;

//005DC3C0
{*procedure sub_005DC3C0(?:?);
begin
 005DC3C0    cmp         dl,byte ptr [eax+2FC];TBitBtn.IsFocused:Boolean
>005DC3C6    je          005DC3D3
 005DC3C8    mov         byte ptr [eax+2FC],dl;TBitBtn.IsFocused:Boolean
 005DC3CE    call        TControl.Refresh
 005DC3D3    ret
end;*}

//005DC3D4
procedure sub_005DC3D4;
begin
{*
 005DC3D4    push        esi
 005DC3D5    mov         esi,eax
 005DC3D7    mov         eax,esi
 005DC3D9    mov         edx,dword ptr [eax]
 005DC3DB    call        dword ptr [edx+0A8];TWinControl.Invalidate
 005DC3E1    pop         esi
 005DC3E2    ret
*}
end;

//005DC3E4
procedure TBitBtn.Click;
begin
{*
 005DC3E4    push        ebx
 005DC3E5    push        esi
 005DC3E6    mov         esi,eax
 005DC3E8    movzx       eax,byte ptr [esi+2F1];TBitBtn.FKind:TBitBtnKind
 005DC3EF    sub         al,3
>005DC3F1    je          005DC419
 005DC3F3    sub         al,3
>005DC3F5    jne         005DC487
 005DC3FB    mov         dl,1
 005DC3FD    mov         eax,esi
 005DC3FF    call        GetParentForm
 005DC404    test        eax,eax
>005DC406    je          005DC40F
 005DC408    call        TCustomForm.Close
>005DC40D    jmp         005DC48E
 005DC40F    mov         eax,esi
 005DC411    call        TCustomButton.Click
 005DC416    pop         esi
 005DC417    pop         ebx
 005DC418    ret
 005DC419    mov         ebx,esi
>005DC41B    jmp         005DC420
 005DC41D    mov         ebx,dword ptr [ebx+40];TBitBtn.FParent:TWinControl
 005DC420    test        ebx,ebx
>005DC422    je          005DC448
 005DC424    cmp         byte ptr [ebx+170],1;TWinControl.FHelpType:THelpType
>005DC42B    jne         005DC436
 005DC42D    cmp         dword ptr [ebx+178],0;TWinControl.FHelpContext:THelpContext
>005DC434    je          005DC41D
 005DC436    cmp         byte ptr [ebx+170],0;TWinControl.FHelpType:THelpType
>005DC43D    jne         005DC448
 005DC43F    cmp         dword ptr [ebx+174],0;TWinControl.FHelpKeyword:string
>005DC446    je          005DC41D
 005DC448    test        ebx,ebx
>005DC44A    je          005DC47D
 005DC44C    cmp         byte ptr [ebx+170],1;TWinControl.FHelpType:THelpType
>005DC453    jne         005DC469
 005DC455    mov         eax,[007C4A18];^Application:TApplication
 005DC45A    mov         eax,dword ptr [eax]
 005DC45C    mov         edx,dword ptr [ebx+178];TWinControl.FHelpContext:THelpContext
 005DC462    call        TApplication.HelpContext
>005DC467    jmp         005DC48E
 005DC469    mov         eax,[007C4A18];^Application:TApplication
 005DC46E    mov         eax,dword ptr [eax]
 005DC470    mov         edx,dword ptr [ebx+174];TWinControl.FHelpKeyword:string
 005DC476    call        TApplication.HelpKeyword
>005DC47B    jmp         005DC48E
 005DC47D    mov         eax,esi
 005DC47F    call        TCustomButton.Click
 005DC484    pop         esi
 005DC485    pop         ebx
 005DC486    ret
 005DC487    mov         eax,esi
 005DC489    call        TCustomButton.Click
 005DC48E    pop         esi
 005DC48F    pop         ebx
 005DC490    ret
*}
end;

//005DC494
{*procedure TBitBtn.sub_005DC494(?:?);
begin
 005DC494    mov         edx,dword ptr [edx+8]
 005DC497    mov         ecx,dword ptr [eax+58];TBitBtn.FWidth:Integer
 005DC49A    mov         dword ptr [edx+0C],ecx
 005DC49D    mov         eax,dword ptr [eax+5C];TBitBtn.FHeight:Integer
 005DC4A0    mov         dword ptr [edx+10],eax
 005DC4A3    ret
end;*}

//005DC4A4
{*procedure TBitBtn.sub_005DC4A4(?:?);
begin
 005DC4A4    mov         edx,dword ptr [edx+8]
 005DC4A7    call        005DC4B0
 005DC4AC    ret
end;*}

//005DC4B0
{*procedure sub_005DC4B0(?:TBitBtn; ?:?);
begin
 005DC4B0    push        ebp
 005DC4B1    mov         ebp,esp
 005DC4B3    add         esp,0FFFFFFA4
 005DC4B6    push        ebx
 005DC4B7    push        esi
 005DC4B8    push        edi
 005DC4B9    xor         ecx,ecx
 005DC4BB    mov         dword ptr [ebp-5C],ecx
 005DC4BE    mov         dword ptr [ebp-58],ecx
 005DC4C1    mov         esi,edx
 005DC4C3    mov         ebx,eax
 005DC4C5    xor         eax,eax
 005DC4C7    push        ebp
 005DC4C8    push        5DC973
 005DC4CD    push        dword ptr fs:[eax]
 005DC4D0    mov         dword ptr fs:[eax],esp
 005DC4D3    mov         edx,dword ptr [esi+18]
 005DC4D6    mov         eax,dword ptr [ebx+2E8];TBitBtn.FCanvas:TCanvas
 005DC4DC    call        TCanvas.SetHandle
 005DC4E1    lea         edx,[ebp-38]
 005DC4E4    mov         eax,ebx
 005DC4E6    mov         ecx,dword ptr [eax]
 005DC4E8    call        dword ptr [ecx+64];TWinControl.GetClientRect
 005DC4EB    mov         edx,dword ptr [esi+18]
 005DC4EE    mov         eax,dword ptr [ebx+2E8];TBitBtn.FCanvas:TCanvas
 005DC4F4    call        TCanvas.SetHandle
 005DC4F9    mov         edx,dword ptr [ebx+74];TBitBtn.FFont:TFont
 005DC4FC    mov         eax,dword ptr [ebx+2E8];TBitBtn.FCanvas:TCanvas
 005DC502    call        TCanvas.SetFont
 005DC507    mov         eax,dword ptr [esi+10]
 005DC50A    test        al,1
 005DC50C    setne       byte ptr [ebp-1]
 005DC510    test        al,10
 005DC512    setne       byte ptr [ebp-2]
 005DC516    mov         eax,ebx
 005DC518    mov         edx,dword ptr [eax]
 005DC51A    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 005DC51D    test        al,al
>005DC51F    jne         005DC527
 005DC521    mov         byte ptr [ebp-3],1
>005DC525    jmp         005DC537
 005DC527    cmp         byte ptr [ebp-1],0
>005DC52B    je          005DC533
 005DC52D    mov         byte ptr [ebp-3],2
>005DC531    jmp         005DC537
 005DC533    mov         byte ptr [ebp-3],0
 005DC537    mov         eax,ebx
 005DC539    call        00585D90
 005DC53E    test        al,al
>005DC540    je          005DC71D
 005DC546    call        TStyleManager.GetActiveStyle
 005DC54B    mov         dword ptr [ebp-18],eax
 005DC54E    mov         eax,ebx
 005DC550    mov         edx,dword ptr [eax]
 005DC552    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 005DC555    test        al,al
>005DC557    jne         005DC55F
 005DC559    mov         byte ptr [ebp-9],5
>005DC55D    jmp         005DC590
 005DC55F    cmp         byte ptr [ebp-1],0
>005DC563    je          005DC56B
 005DC565    mov         byte ptr [ebp-9],4
>005DC569    jmp         005DC590
 005DC56B    cmp         byte ptr [ebx+2FE],0;TBitBtn.FMouseInControl:Boolean
>005DC572    je          005DC57A
 005DC574    mov         byte ptr [ebp-9],3
>005DC578    jmp         005DC590
 005DC57A    movzx       eax,byte ptr [ebx+2FC];TBitBtn.IsFocused:Boolean
 005DC581    or          al,byte ptr [ebp-2]
>005DC584    je          005DC58C
 005DC586    mov         byte ptr [ebp-9],6
>005DC58A    jmp         005DC590
 005DC58C    mov         byte ptr [ebp-9],2
 005DC590    movzx       edx,byte ptr [ebp-9]
 005DC594    lea         ecx,[ebp-44]
 005DC597    mov         eax,dword ptr [ebp-18]
 005DC59A    mov         edi,dword ptr [eax]
 005DC59C    call        dword ptr [edi+5C];TCustomStyleServices.GetElementDetails
 005DC59F    test        byte ptr [ebx+65],80;TBitBtn.FAlign:TAlign
>005DC5A3    jne         005DC5C4
 005DC5A5    mov         eax,ebx
 005DC5A7    call        TWinControl.GetHandle
 005DC5AC    mov         edx,dword ptr [esi+18]
 005DC5AF    lea         ecx,[ebp-44]
 005DC5B2    push        ecx
 005DC5B3    push        1
 005DC5B5    push        0
 005DC5B7    mov         ecx,edx
 005DC5B9    mov         edx,dword ptr [ebp-18]
 005DC5BC    xchg        eax,edx
 005DC5BD    call        TCustomStyleServices.DrawParentBackground
>005DC5C2    jmp         005DC5D9
 005DC5C4    push        4
 005DC5C6    call        gdi32.GetStockObject
 005DC5CB    push        eax
 005DC5CC    lea         eax,[ebp-38]
 005DC5CF    push        eax
 005DC5D0    mov         eax,dword ptr [esi+18]
 005DC5D3    push        eax
 005DC5D4    call        user32.FillRect
 005DC5D9    lea         eax,[esi+1C]
 005DC5DC    push        eax
 005DC5DD    push        0
 005DC5DF    mov         edx,dword ptr [esi+18]
 005DC5E2    lea         ecx,[ebp-44]
 005DC5E5    mov         eax,dword ptr [ebp-18]
 005DC5E8    call        TCustomStyleServices.DrawElement
 005DC5ED    lea         eax,[esi+1C]
 005DC5F0    push        eax
 005DC5F1    lea         eax,[ebp-38]
 005DC5F4    push        eax
 005DC5F5    mov         eax,dword ptr [ebx+2E8];TBitBtn.FCanvas:TCanvas
 005DC5FB    call        TCanvas.GetHandle
 005DC600    mov         edx,eax
 005DC602    lea         ecx,[ebp-44]
 005DC605    mov         eax,dword ptr [ebp-18]
 005DC608    call        TCustomStyleServices.GetElementContentRect
 005DC60D    xor         eax,eax
 005DC60F    mov         dword ptr [ebp-20],eax
 005DC612    xor         eax,eax
 005DC614    mov         dword ptr [ebp-1C],eax
 005DC617    mov         eax,dword ptr [ebp-20]
 005DC61A    mov         dword ptr [ebp-14],eax
 005DC61D    mov         eax,dword ptr [ebp-1C]
 005DC620    mov         dword ptr [ebp-10],eax
 005DC623    test        byte ptr [ebx+65],80;TBitBtn.FAlign:TAlign
 005DC627    setne       dl
 005DC62A    mov         eax,dword ptr [ebx+2EC];TBitBtn.FGlyph:TObject
 005DC630    mov         byte ptr [eax+21],dl
 005DC633    mov         edx,dword ptr [ebp-44]
 005DC636    mov         dword ptr [eax+24],edx
 005DC639    mov         edx,dword ptr [ebp-40]
 005DC63C    mov         dword ptr [eax+28],edx
 005DC63F    mov         edx,dword ptr [ebp-3C]
 005DC642    mov         dword ptr [eax+2C],edx
 005DC645    mov         eax,ebx
 005DC647    call        00585D90
 005DC64C    mov         esi,dword ptr [ebx+2EC];TBitBtn.FGlyph:TObject
 005DC652    mov         byte ptr [esi+30],al
 005DC655    test        byte ptr [ebx+188],1;TBitBtn.FStyleElements:TStyleElements
 005DC65C    setne       al
 005DC65F    mov         byte ptr [esi+40],al
 005DC662    lea         eax,[ebp-14]
 005DC665    push        eax
 005DC666    lea         edx,[ebp-58]
 005DC669    mov         eax,ebx
 005DC66B    call        TControl.GetText
 005DC670    mov         eax,dword ptr [ebp-58]
 005DC673    push        eax
 005DC674    movzx       eax,byte ptr [ebx+2F2];TBitBtn.FLayout:TButtonLayout
 005DC67B    push        eax
 005DC67C    mov         eax,dword ptr [ebx+2F8];TBitBtn.FMargin:Integer
 005DC682    push        eax
 005DC683    mov         eax,dword ptr [ebx+2F4];TBitBtn.FSpacing:Integer
 005DC689    push        eax
 005DC68A    movzx       eax,byte ptr [ebp-3]
 005DC68E    push        eax
 005DC68F    push        0
 005DC691    xor         edx,edx
 005DC693    mov         eax,ebx
 005DC695    call        TControl.DrawTextBiDiModeFlags
 005DC69A    movzx       edx,byte ptr [ebx+291];TBitBtn.FWordWrap:Boolean
 005DC6A1    or          eax,dword ptr [edx*4+7A1E8C]
 005DC6A8    push        eax
 005DC6A9    lea         eax,[ebp-54]
 005DC6AC    push        eax
 005DC6AD    lea         ecx,[ebp-38]
 005DC6B0    mov         edx,dword ptr [ebx+2E8];TBitBtn.FCanvas:TCanvas
 005DC6B6    mov         eax,esi
 005DC6B8    call        TButtonGlyph.Draw
 005DC6BD    movzx       eax,byte ptr [ebx+2FC];TBitBtn.IsFocused:Boolean
 005DC6C4    and         al,byte ptr [ebp-2]
>005DC6C7    je          005DC94B
 005DC6CD    mov         eax,dword ptr [ebp-18]
 005DC6D0    call        TCustomStyleServices.GetIsSystemStyle
 005DC6D5    test        al,al
>005DC6D7    je          005DC94B
 005DC6DD    mov         eax,dword ptr [ebx+2E8];TBitBtn.FCanvas:TCanvas
 005DC6E3    mov         eax,dword ptr [eax+44];TCanvas.FPen:TPen
 005DC6E6    mov         edx,0FF000006
 005DC6EB    call        TPen.SetColor
 005DC6F0    mov         eax,dword ptr [ebx+2E8];TBitBtn.FCanvas:TCanvas
 005DC6F6    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 005DC6F9    mov         edx,0FF00000F
 005DC6FE    call        TBrush.SetColor
 005DC703    lea         eax,[ebp-38]
 005DC706    push        eax
 005DC707    mov         eax,dword ptr [ebx+2E8];TBitBtn.FCanvas:TCanvas
 005DC70D    call        TCanvas.GetHandle
 005DC712    push        eax
 005DC713    call        user32.DrawFocusRect
>005DC718    jmp         005DC94B
 005DC71D    lea         edx,[ebp-38]
 005DC720    mov         eax,ebx
 005DC722    mov         ecx,dword ptr [eax]
 005DC724    call        dword ptr [ecx+64];TWinControl.GetClientRect
 005DC727    mov         dword ptr [ebp-8],2010
 005DC72E    cmp         byte ptr [ebp-1],0
>005DC732    je          005DC73B
 005DC734    or          dword ptr [ebp-8],200
 005DC73B    test        byte ptr [esi+10],4
>005DC73F    je          005DC748
 005DC741    or          dword ptr [ebp-8],100
 005DC748    movzx       eax,byte ptr [ebx+2FC];TBitBtn.IsFocused:Boolean
 005DC74F    or          al,byte ptr [ebp-2]
>005DC752    je          005DC7B1
 005DC754    mov         eax,dword ptr [ebx+2E8];TBitBtn.FCanvas:TCanvas
 005DC75A    mov         eax,dword ptr [eax+44];TCanvas.FPen:TPen
 005DC75D    mov         edx,0FF000006
 005DC762    call        TPen.SetColor
 005DC767    mov         eax,dword ptr [ebx+2E8];TBitBtn.FCanvas:TCanvas
 005DC76D    mov         eax,dword ptr [eax+44];TCanvas.FPen:TPen
 005DC770    mov         edx,1
 005DC775    call        TPen.SetWidth
 005DC77A    mov         eax,dword ptr [ebx+2E8];TBitBtn.FCanvas:TCanvas
 005DC780    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 005DC783    mov         dl,1
 005DC785    call        TBrush.SetStyle
 005DC78A    mov         eax,dword ptr [ebp-30]
 005DC78D    push        eax
 005DC78E    mov         eax,dword ptr [ebp-2C]
 005DC791    push        eax
 005DC792    mov         ecx,dword ptr [ebp-34]
 005DC795    mov         edx,dword ptr [ebp-38]
 005DC798    mov         eax,dword ptr [ebx+2E8];TBitBtn.FCanvas:TCanvas
 005DC79E    mov         edi,dword ptr [eax]
 005DC7A0    call        dword ptr [edi+7C];TCanvas.Rectangle
 005DC7A3    lea         eax,[ebp-38]
 005DC7A6    or          ecx,0FFFFFFFF
 005DC7A9    or          edx,0FFFFFFFF
 005DC7AC    call        InflateRect
 005DC7B1    cmp         byte ptr [ebp-1],0
>005DC7B5    je          005DC819
 005DC7B7    mov         eax,dword ptr [ebx+2E8];TBitBtn.FCanvas:TCanvas
 005DC7BD    mov         eax,dword ptr [eax+44];TCanvas.FPen:TPen
 005DC7C0    mov         edx,0FF000010
 005DC7C5    call        TPen.SetColor
 005DC7CA    mov         eax,dword ptr [ebx+2E8];TBitBtn.FCanvas:TCanvas
 005DC7D0    mov         eax,dword ptr [eax+44];TCanvas.FPen:TPen
 005DC7D3    mov         edx,1
 005DC7D8    call        TPen.SetWidth
 005DC7DD    mov         eax,dword ptr [ebx+2E8];TBitBtn.FCanvas:TCanvas
 005DC7E3    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 005DC7E6    mov         edx,0FF00000F
 005DC7EB    call        TBrush.SetColor
 005DC7F0    mov         eax,dword ptr [ebp-30]
 005DC7F3    push        eax
 005DC7F4    mov         eax,dword ptr [ebp-2C]
 005DC7F7    push        eax
 005DC7F8    mov         ecx,dword ptr [ebp-34]
 005DC7FB    mov         edx,dword ptr [ebp-38]
 005DC7FE    mov         eax,dword ptr [ebx+2E8];TBitBtn.FCanvas:TCanvas
 005DC804    mov         esi,dword ptr [eax]
 005DC806    call        dword ptr [esi+7C];TCanvas.Rectangle
 005DC809    lea         eax,[ebp-38]
 005DC80C    or          ecx,0FFFFFFFF
 005DC80F    or          edx,0FFFFFFFF
 005DC812    call        InflateRect
>005DC817    jmp         005DC82C
 005DC819    mov         eax,dword ptr [ebp-8]
 005DC81C    push        eax
 005DC81D    push        4
 005DC81F    lea         eax,[ebp-38]
 005DC822    push        eax
 005DC823    mov         eax,dword ptr [esi+18]
 005DC826    push        eax
 005DC827    call        user32.DrawFrameControl
 005DC82C    cmp         byte ptr [ebx+2FC],0;TBitBtn.IsFocused:Boolean
>005DC833    je          005DC84D
 005DC835    lea         edx,[ebp-38]
 005DC838    mov         eax,ebx
 005DC83A    mov         ecx,dword ptr [eax]
 005DC83C    call        dword ptr [ecx+64];TWinControl.GetClientRect
 005DC83F    lea         eax,[ebp-38]
 005DC842    or          ecx,0FFFFFFFF
 005DC845    or          edx,0FFFFFFFF
 005DC848    call        InflateRect
 005DC84D    mov         edx,dword ptr [ebx+74];TBitBtn.FFont:TFont
 005DC850    mov         eax,dword ptr [ebx+2E8];TBitBtn.FCanvas:TCanvas
 005DC856    call        TCanvas.SetFont
 005DC85B    cmp         byte ptr [ebp-1],0
>005DC85F    je          005DC873
 005DC861    lea         eax,[ebp-38]
 005DC864    mov         ecx,1
 005DC869    mov         edx,1
 005DC86E    call        OffsetRect
 005DC873    mov         eax,ebx
 005DC875    call        00585D90
 005DC87A    mov         esi,dword ptr [ebx+2EC];TBitBtn.FGlyph:TObject
 005DC880    mov         byte ptr [esi+30],al
 005DC883    xor         eax,eax
 005DC885    mov         dword ptr [ebp-28],eax
 005DC888    xor         eax,eax
 005DC88A    mov         dword ptr [ebp-24],eax
 005DC88D    lea         eax,[ebp-28]
 005DC890    push        eax
 005DC891    lea         edx,[ebp-5C]
 005DC894    mov         eax,ebx
 005DC896    call        TControl.GetText
 005DC89B    mov         eax,dword ptr [ebp-5C]
 005DC89E    push        eax
 005DC89F    movzx       eax,byte ptr [ebx+2F2];TBitBtn.FLayout:TButtonLayout
 005DC8A6    push        eax
 005DC8A7    mov         eax,dword ptr [ebx+2F8];TBitBtn.FMargin:Integer
 005DC8AD    push        eax
 005DC8AE    mov         eax,dword ptr [ebx+2F4];TBitBtn.FSpacing:Integer
 005DC8B4    push        eax
 005DC8B5    movzx       eax,byte ptr [ebp-3]
 005DC8B9    push        eax
 005DC8BA    push        0
 005DC8BC    xor         edx,edx
 005DC8BE    mov         eax,ebx
 005DC8C0    call        TControl.DrawTextBiDiModeFlags
 005DC8C5    movzx       edx,byte ptr [ebx+291];TBitBtn.FWordWrap:Boolean
 005DC8CC    or          eax,dword ptr [edx*4+7A1E8C]
 005DC8D3    push        eax
 005DC8D4    lea         eax,[ebp-54]
 005DC8D7    push        eax
 005DC8D8    lea         ecx,[ebp-38]
 005DC8DB    mov         edx,dword ptr [ebx+2E8];TBitBtn.FCanvas:TCanvas
 005DC8E1    mov         eax,esi
 005DC8E3    call        TButtonGlyph.Draw
 005DC8E8    movzx       eax,byte ptr [ebx+2FC];TBitBtn.IsFocused:Boolean
 005DC8EF    and         al,byte ptr [ebp-2]
>005DC8F2    je          005DC94B
 005DC8F4    lea         edx,[ebp-38]
 005DC8F7    mov         eax,ebx
 005DC8F9    mov         ecx,dword ptr [eax]
 005DC8FB    call        dword ptr [ecx+64];TWinControl.GetClientRect
 005DC8FE    lea         eax,[ebp-38]
 005DC901    mov         ecx,0FFFFFFFC
 005DC906    mov         edx,0FFFFFFFC
 005DC90B    call        InflateRect
 005DC910    mov         eax,dword ptr [ebx+2E8];TBitBtn.FCanvas:TCanvas
 005DC916    mov         eax,dword ptr [eax+44];TCanvas.FPen:TPen
 005DC919    mov         edx,0FF000006
 005DC91E    call        TPen.SetColor
 005DC923    mov         eax,dword ptr [ebx+2E8];TBitBtn.FCanvas:TCanvas
 005DC929    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 005DC92C    mov         edx,0FF00000F
 005DC931    call        TBrush.SetColor
 005DC936    lea         eax,[ebp-38]
 005DC939    push        eax
 005DC93A    mov         eax,dword ptr [ebx+2E8];TBitBtn.FCanvas:TCanvas
 005DC940    call        TCanvas.GetHandle
 005DC945    push        eax
 005DC946    call        user32.DrawFocusRect
 005DC94B    xor         edx,edx
 005DC94D    mov         eax,dword ptr [ebx+2E8];TBitBtn.FCanvas:TCanvas
 005DC953    call        TCanvas.SetHandle
 005DC958    xor         eax,eax
 005DC95A    pop         edx
 005DC95B    pop         ecx
 005DC95C    pop         ecx
 005DC95D    mov         dword ptr fs:[eax],edx
 005DC960    push        5DC97A
 005DC965    lea         eax,[ebp-5C]
 005DC968    mov         edx,2
 005DC96D    call        @UStrArrayClr
 005DC972    ret
>005DC973    jmp         @HandleFinally
>005DC978    jmp         005DC965
 005DC97A    pop         edi
 005DC97B    pop         esi
 005DC97C    pop         ebx
 005DC97D    mov         esp,ebp
 005DC97F    pop         ebp
 005DC980    ret
end;*}

//005DC984
procedure TBitBtn.CMFontChanged;
begin
{*
 005DC984    push        esi
 005DC985    mov         esi,eax
 005DC987    mov         eax,esi
 005DC989    call        TWinControl.CMFontChanged
 005DC98E    mov         eax,esi
 005DC990    mov         edx,dword ptr [eax]
 005DC992    call        dword ptr [edx+0A8];TWinControl.Invalidate
 005DC998    pop         esi
 005DC999    ret
*}
end;

//005DC99C
procedure TBitBtn.CMEnabledChanged;
begin
{*
 005DC99C    push        esi
 005DC99D    mov         esi,eax
 005DC99F    mov         eax,esi
 005DC9A1    call        TWinControl.CMEnabledChanged
 005DC9A6    mov         eax,esi
 005DC9A8    mov         edx,dword ptr [eax]
 005DC9AA    call        dword ptr [edx+0A8];TWinControl.Invalidate
 005DC9B0    pop         esi
 005DC9B1    ret
*}
end;

//005DC9B4
{*procedure TBitBtn.WMLButtonDblClk(?:?);
begin
 005DC9B4    push        ebx
 005DC9B5    movzx       ecx,word ptr [edx+8]
 005DC9B9    movzx       ebx,word ptr [edx+0A]
 005DC9BD    shr         ebx,10
 005DC9C0    or          ecx,ebx
 005DC9C2    push        ecx
 005DC9C3    mov         ecx,dword ptr [edx+4]
 005DC9C6    mov         edx,201
 005DC9CB    call        TControl.Perform
 005DC9D0    pop         ebx
 005DC9D1    ret
end;*}

//005DC9D4
procedure TBitBtn.sub_004E5D1C;
begin
{*
 005DC9D4    push        ebx
 005DC9D5    mov         ebx,eax
 005DC9D7    mov         eax,ebx
 005DC9D9    call        TBitBtn.GetGlyph
 005DC9DE    mov         edx,dword ptr [eax]
 005DC9E0    call        dword ptr [edx+28]
 005DC9E3    pop         ebx
 005DC9E4    ret
*}
end;

//005DC9E8
procedure TBitBtn.SetGlyph(Value:TBitmap);
begin
{*
 005DC9E8    push        esi
 005DC9E9    mov         esi,eax
 005DC9EB    mov         eax,dword ptr [esi+2EC];TBitBtn.FGlyph:TObject
 005DC9F1    call        TButtonGlyph.SetGlyph
 005DC9F6    mov         byte ptr [esi+2FD],1;TBitBtn.FModifiedGlyph:Boolean
 005DC9FD    mov         eax,esi
 005DC9FF    mov         edx,dword ptr [eax]
 005DCA01    call        dword ptr [edx+0A8];TWinControl.Invalidate
 005DCA07    pop         esi
 005DCA08    ret
*}
end;

//005DCA0C
{*function TBitBtn.GetGlyph:?;
begin
 005DCA0C    mov         eax,dword ptr [eax+2EC];TBitBtn.FGlyph:TObject
 005DCA12    mov         eax,dword ptr [eax+4]
 005DCA15    ret
end;*}

//005DCA18
procedure sub_005DCA18(?:TBitBtn);
begin
{*
 005DCA18    push        esi
 005DCA19    mov         esi,eax
 005DCA1B    mov         eax,esi
 005DCA1D    mov         edx,dword ptr [eax]
 005DCA1F    call        dword ptr [edx+0A8]
 005DCA25    pop         esi
 005DCA26    ret
*}
end;

//005DCA28
{*procedure sub_005DCA28(?:?; ?:TBitmap; ?:?; ?:?);
begin
 005DCA28    push        ebp
 005DCA29    mov         ebp,esp
 005DCA2B    add         esp,0FFFFFFF0
 005DCA2E    push        ebx
 005DCA2F    push        esi
 005DCA30    mov         esi,ecx
 005DCA32    mov         ebx,edx
 005DCA34    mov         edx,dword ptr [esi+54]
 005DCA37    mov         eax,ebx
 005DCA39    mov         ecx,dword ptr [eax]
 005DCA3B    call        dword ptr [ecx+44]
 005DCA3E    mov         edx,dword ptr [esi+50]
 005DCA41    mov         eax,ebx
 005DCA43    mov         ecx,dword ptr [eax]
 005DCA45    call        dword ptr [ecx+38]
 005DCA48    mov         eax,ebx
 005DCA4A    call        TBitmap.GetCanvas
 005DCA4F    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 005DCA52    mov         edx,0FF00FF
 005DCA57    call        TBrush.SetColor
 005DCA5C    mov         eax,ebx
 005DCA5E    mov         edx,dword ptr [eax]
 005DCA60    call        dword ptr [edx+24]
 005DCA63    push        eax
 005DCA64    lea         eax,[ebp-10]
 005DCA67    push        eax
 005DCA68    mov         eax,ebx
 005DCA6A    mov         edx,dword ptr [eax]
 005DCA6C    call        dword ptr [edx+30]
 005DCA6F    mov         ecx,eax
 005DCA71    xor         edx,edx
 005DCA73    xor         eax,eax
 005DCA75    call        Rect
 005DCA7A    lea         eax,[ebp-10]
 005DCA7D    push        eax
 005DCA7E    mov         eax,ebx
 005DCA80    call        TBitmap.GetCanvas
 005DCA85    pop         edx
 005DCA86    mov         ecx,dword ptr [eax]
 005DCA88    call        dword ptr [ecx+54];TCanvas.FillRect
 005DCA8B    push        0
 005DCA8D    mov         eax,dword ptr [ebp+8]
 005DCA90    push        eax
 005DCA91    push        1
 005DCA93    mov         eax,ebx
 005DCA95    call        TBitmap.GetCanvas
 005DCA9A    mov         edx,eax
 005DCA9C    xor         ecx,ecx
 005DCA9E    mov         eax,esi
 005DCAA0    call        TCustomImageList.Draw
 005DCAA5    pop         esi
 005DCAA6    pop         ebx
 005DCAA7    mov         esp,ebp
 005DCAA9    pop         ebp
 005DCAAA    ret         4
end;*}

//005DCAB0
function TBitBtn.IsStoredCancel(Value:Boolean):Boolean;
begin
{*
 005DCAB0    push        ebx
 005DCAB1    push        esi
 005DCAB2    mov         esi,eax
 005DCAB4    mov         ebx,dword ptr [esi+78];TBitBtn.FActionLink:TControlActionLink
 005DCAB7    mov         eax,esi
 005DCAB9    call        TBitBtn.GetKind
 005DCABE    test        al,al
>005DCAC0    jne         005DCADF
 005DCAC2    test        ebx,ebx
>005DCAC4    je          005DCAE4
 005DCAC6    mov         eax,ebx
 005DCAC8    mov         edx,dword ptr [eax]
 005DCACA    call        dword ptr [edx+40];TContainedActionLink.IsImageIndexLinked
 005DCACD    test        al,al
>005DCACF    je          005DCAE4
 005DCAD1    mov         edx,dword ptr [ebx+24]
 005DCAD4    mov         eax,ebx
 005DCAD6    call        005DD1D4
 005DCADB    test        al,al
>005DCADD    je          005DCAE4
 005DCADF    xor         eax,eax
 005DCAE1    pop         esi
 005DCAE2    pop         ebx
 005DCAE3    ret
 005DCAE4    mov         al,1
 005DCAE6    pop         esi
 005DCAE7    pop         ebx
 005DCAE8    ret
*}
end;

//005DCAEC
procedure TBitBtn.SetStyle(Value:TButtonStyle);
begin
{*
 005DCAEC    push        esi
 005DCAED    mov         esi,eax
 005DCAEF    cmp         dl,byte ptr [esi+2F0];TBitBtn.FStyle:TButtonStyle
>005DCAF5    je          005DCB07
 005DCAF7    mov         byte ptr [esi+2F0],dl;TBitBtn.FStyle:TButtonStyle
 005DCAFD    mov         eax,esi
 005DCAFF    mov         edx,dword ptr [eax]
 005DCB01    call        dword ptr [edx+0A8];TWinControl.Invalidate
 005DCB07    pop         esi
 005DCB08    ret
*}
end;

//005DCB0C
procedure TBitBtn.SetKind(Value:TBitBtnKind);
begin
{*
 005DCB0C    push        ebp
 005DCB0D    mov         ebp,esp
 005DCB0F    push        0
 005DCB11    push        0
 005DCB13    push        ebx
 005DCB14    push        esi
 005DCB15    push        edi
 005DCB16    mov         ebx,edx
 005DCB18    mov         esi,eax
 005DCB1A    xor         eax,eax
 005DCB1C    push        ebp
 005DCB1D    push        5DCC09
 005DCB22    push        dword ptr fs:[eax]
 005DCB25    mov         dword ptr fs:[eax],esp
 005DCB28    cmp         bl,byte ptr [esi+2F1];TBitBtn.FKind:TBitBtnKind
>005DCB2E    je          005DCBEB
 005DCB34    test        bl,bl
>005DCB36    je          005DCBDB
 005DCB3C    mov         eax,ebx
 005DCB3E    sub         al,1
>005DCB40    je          005DCB4A
 005DCB42    sub         al,3
>005DCB44    je          005DCB4A
 005DCB46    xor         edx,edx
>005DCB48    jmp         005DCB4C
 005DCB4A    mov         dl,1
 005DCB4C    mov         eax,esi
 005DCB4E    call        TButton.SetDefault
 005DCB53    mov         eax,ebx
 005DCB55    sub         al,2
>005DCB57    je          005DCB61
 005DCB59    sub         al,3
>005DCB5B    je          005DCB61
 005DCB5D    xor         eax,eax
>005DCB5F    jmp         005DCB63
 005DCB61    mov         al,1
 005DCB63    mov         byte ptr [esi+299],al;TBitBtn.FCancel:Boolean
 005DCB69    test        byte ptr [esi+1C],1;TBitBtn.FComponentState:TComponentState
>005DCB6D    je          005DCB7F
 005DCB6F    lea         edx,[ebp-4]
 005DCB72    mov         eax,esi
 005DCB74    call        TControl.GetText
 005DCB79    cmp         dword ptr [ebp-4],0
>005DCB7D    je          005DCB85
 005DCB7F    test        byte ptr [esi+1C],1;TBitBtn.FComponentState:TComponentState
>005DCB83    jne         005DCBA7
 005DCB85    movzx       eax,bl
 005DCB88    mov         edi,dword ptr [eax*4+7A1E18]
 005DCB8F    test        edi,edi
>005DCB91    je          005DCBA7
 005DCB93    lea         edx,[ebp-8]
 005DCB96    mov         eax,edi
 005DCB98    call        LoadResString
 005DCB9D    mov         edx,dword ptr [ebp-8]
 005DCBA0    mov         eax,esi
 005DCBA2    call        TControl.SetText
 005DCBA7    movzx       eax,bl
 005DCBAA    mov         eax,dword ptr [eax*4+7A1E44]
 005DCBB1    mov         dword ptr [esi+2CC],eax;TBitBtn.FModalResult:TModalResult
 005DCBB7    mov         eax,ebx
 005DCBB9    call        005D955C
 005DCBBE    mov         edx,eax
 005DCBC0    mov         eax,dword ptr [esi+2EC];TBitBtn.FGlyph:TObject
 005DCBC6    call        TButtonGlyph.SetGlyph
 005DCBCB    mov         dl,2
 005DCBCD    mov         eax,esi
 005DCBCF    call        TBitBtn.SetNumGlyphs
 005DCBD4    mov         byte ptr [esi+2FD],0;TBitBtn.FModifiedGlyph:Boolean
 005DCBDB    mov         byte ptr [esi+2F1],bl;TBitBtn.FKind:TBitBtnKind
 005DCBE1    mov         eax,esi
 005DCBE3    mov         edx,dword ptr [eax]
 005DCBE5    call        dword ptr [edx+0A8];TWinControl.Invalidate
 005DCBEB    xor         eax,eax
 005DCBED    pop         edx
 005DCBEE    pop         ecx
 005DCBEF    pop         ecx
 005DCBF0    mov         dword ptr fs:[eax],edx
 005DCBF3    push        5DCC10
 005DCBF8    lea         eax,[ebp-8]
 005DCBFB    call        @UStrClr
 005DCC00    lea         eax,[ebp-4]
 005DCC03    call        @UStrClr
 005DCC08    ret
>005DCC09    jmp         @HandleFinally
>005DCC0E    jmp         005DCBF8
 005DCC10    pop         edi
 005DCC11    pop         esi
 005DCC12    pop         ebx
 005DCC13    pop         ecx
 005DCC14    pop         ecx
 005DCC15    pop         ebp
 005DCC16    ret
*}
end;

//005DCC18
function TBitBtn.IsStoredCaption(Value:TCaption):Boolean;
begin
{*
 005DCC18    push        ebp
 005DCC19    mov         ebp,esp
 005DCC1B    push        0
 005DCC1D    push        0
 005DCC1F    push        ebx
 005DCC20    mov         ebx,eax
 005DCC22    xor         eax,eax
 005DCC24    push        ebp
 005DCC25    push        5DCC82
 005DCC2A    push        dword ptr fs:[eax]
 005DCC2D    mov         dword ptr fs:[eax],esp
 005DCC30    lea         edx,[ebp-4]
 005DCC33    movzx       eax,byte ptr [ebx+2F1];TBitBtn.FKind:TBitBtnKind
 005DCC3A    mov         eax,dword ptr [eax*4+7A1E18]
 005DCC41    call        LoadResString
 005DCC46    mov         eax,dword ptr [ebp-4]
 005DCC49    push        eax
 005DCC4A    lea         edx,[ebp-8]
 005DCC4D    mov         eax,ebx
 005DCC4F    call        TControl.GetText
 005DCC54    mov         eax,dword ptr [ebp-8]
 005DCC57    pop         edx
 005DCC58    call        AnsiCompareStr
 005DCC5D    test        eax,eax
 005DCC5F    setne       al
 005DCC62    mov         ebx,eax
 005DCC64    xor         eax,eax
 005DCC66    pop         edx
 005DCC67    pop         ecx
 005DCC68    pop         ecx
 005DCC69    mov         dword ptr fs:[eax],edx
 005DCC6C    push        5DCC89
 005DCC71    lea         eax,[ebp-8]
 005DCC74    call        @UStrClr
 005DCC79    lea         eax,[ebp-4]
 005DCC7C    call        @UStrClr
 005DCC81    ret
>005DCC82    jmp         @HandleFinally
>005DCC87    jmp         005DCC71
 005DCC89    mov         eax,ebx
 005DCC8B    pop         ebx
 005DCC8C    pop         ecx
 005DCC8D    pop         ecx
 005DCC8E    pop         ebp
 005DCC8F    ret
*}
end;

//005DCC90
{*function TBitBtn.GetKind:?;
begin
 005DCC90    cmp         byte ptr [eax+2F1],0;TBitBtn.FKind:TBitBtnKind
>005DCC97    je          005DCCF6
 005DCC99    movzx       edx,byte ptr [eax+2F1];TBitBtn.FKind:TBitBtnKind
 005DCCA0    mov         ecx,edx
 005DCCA2    sub         cl,1
>005DCCA5    je          005DCCB0
 005DCCA7    sub         cl,3
>005DCCAA    je          005DCCB0
 005DCCAC    xor         ecx,ecx
>005DCCAE    jmp         005DCCB2
 005DCCB0    mov         cl,1
 005DCCB2    xor         cl,byte ptr [eax+2A0];TBitBtn.FDefault:Boolean
>005DCCB8    jne         005DCCEF
 005DCCBA    mov         ecx,edx
 005DCCBC    sub         cl,2
>005DCCBF    je          005DCCCA
 005DCCC1    sub         cl,3
>005DCCC4    je          005DCCCA
 005DCCC6    xor         ecx,ecx
>005DCCC8    jmp         005DCCCC
 005DCCCA    mov         cl,1
 005DCCCC    xor         cl,byte ptr [eax+299];TBitBtn.FCancel:Boolean
>005DCCD2    jne         005DCCEF
 005DCCD4    and         edx,7F
 005DCCD7    mov         edx,dword ptr [edx*4+7A1E44]
 005DCCDE    cmp         edx,dword ptr [eax+2CC];TBitBtn.FModalResult:TModalResult
>005DCCE4    jne         005DCCEF
 005DCCE6    cmp         byte ptr [eax+2FD],0;TBitBtn.FModifiedGlyph:Boolean
>005DCCED    je          005DCCF6
 005DCCEF    mov         byte ptr [eax+2F1],0;TBitBtn.FKind:TBitBtnKind
 005DCCF6    movzx       eax,byte ptr [eax+2F1];TBitBtn.FKind:TBitBtnKind
 005DCCFD    ret
end;*}

//005DCD00
procedure TBitBtn.SetLayout(Value:TButtonLayout);
begin
{*
 005DCD00    push        esi
 005DCD01    mov         esi,eax
 005DCD03    cmp         dl,byte ptr [esi+2F2];TBitBtn.FLayout:TButtonLayout
>005DCD09    je          005DCD1B
 005DCD0B    mov         byte ptr [esi+2F2],dl;TBitBtn.FLayout:TButtonLayout
 005DCD11    mov         eax,esi
 005DCD13    mov         edx,dword ptr [eax]
 005DCD15    call        dword ptr [edx+0A8];TWinControl.Invalidate
 005DCD1B    pop         esi
 005DCD1C    ret
*}
end;

//005DCD20
{*function TBitBtn.GetNumGlyphs:?;
begin
 005DCD20    mov         eax,dword ptr [eax+2EC];TBitBtn.FGlyph:TObject
 005DCD26    movzx       eax,byte ptr [eax+20]
 005DCD2A    ret
end;*}

//005DCD2C
procedure TBitBtn.SetNumGlyphs(Value:TNumGlyphs);
begin
{*
 005DCD2C    push        esi
 005DCD2D    mov         esi,eax
 005DCD2F    test        dl,dl
>005DCD31    jae         005DCD37
 005DCD33    mov         dl,1
>005DCD35    jmp         005DCD3E
 005DCD37    cmp         dl,4
>005DCD3A    jbe         005DCD3E
 005DCD3C    mov         dl,4
 005DCD3E    mov         eax,dword ptr [esi+2EC];TBitBtn.FGlyph:TObject
 005DCD44    cmp         dl,byte ptr [eax+20]
>005DCD47    je          005DCD58
 005DCD49    call        TButtonGlyph.SetNumGlyphs
 005DCD4E    mov         eax,esi
 005DCD50    mov         edx,dword ptr [eax]
 005DCD52    call        dword ptr [edx+0A8];TWinControl.Invalidate
 005DCD58    pop         esi
 005DCD59    ret
*}
end;

//005DCD5C
procedure TBitBtn.SetSpacing(Value:Integer);
begin
{*
 005DCD5C    push        esi
 005DCD5D    mov         esi,eax
 005DCD5F    cmp         edx,dword ptr [esi+2F4];TBitBtn.FSpacing:Integer
>005DCD65    je          005DCD77
 005DCD67    mov         dword ptr [esi+2F4],edx;TBitBtn.FSpacing:Integer
 005DCD6D    mov         eax,esi
 005DCD6F    mov         edx,dword ptr [eax]
 005DCD71    call        dword ptr [edx+0A8];TWinControl.Invalidate
 005DCD77    pop         esi
 005DCD78    ret
*}
end;

//005DCD7C
procedure TBitBtn.SetMargin(Value:Integer);
begin
{*
 005DCD7C    push        esi
 005DCD7D    mov         esi,eax
 005DCD7F    cmp         edx,dword ptr [esi+2F8];TBitBtn.FMargin:Integer
>005DCD85    je          005DCD9C
 005DCD87    cmp         edx,0FFFFFFFF
>005DCD8A    jl          005DCD9C
 005DCD8C    mov         dword ptr [esi+2F8],edx;TBitBtn.FMargin:Integer
 005DCD92    mov         eax,esi
 005DCD94    mov         edx,dword ptr [eax]
 005DCD96    call        dword ptr [edx+0A8];TWinControl.Invalidate
 005DCD9C    pop         esi
 005DCD9D    ret
*}
end;

//005DCDA0
{*procedure sub_005DCDA0(?:TBitBtn; ?:?; ?:?);
begin
 005DCDA0    push        ebx
 005DCDA1    push        esi
 005DCDA2    push        edi
 005DCDA3    mov         edi,ecx
 005DCDA5    mov         esi,edx
 005DCDA7    mov         ebx,eax
 005DCDA9    push        edi
 005DCDAA    mov         eax,ebx
 005DCDAC    call        TBitBtn.GetGlyph
 005DCDB1    mov         edx,eax
 005DCDB3    mov         ecx,esi
 005DCDB5    mov         eax,ebx
 005DCDB7    call        005DCA28
 005DCDBC    pop         edi
 005DCDBD    pop         esi
 005DCDBE    pop         ebx
 005DCDBF    ret
end;*}

//005DCDC0
{*procedure TBitBtn.sub_004E980C(?:?; ?:?);
begin
 005DCDC0    push        ebx
 005DCDC1    push        esi
 005DCDC2    push        edi
 005DCDC3    push        ebp
 005DCDC4    mov         ebx,ecx
 005DCDC6    mov         ebp,edx
 005DCDC8    mov         esi,eax
 005DCDCA    mov         ecx,ebx
 005DCDCC    mov         edx,ebp
 005DCDCE    mov         eax,esi
 005DCDD0    call        TCustomButton.sub_004E980C
 005DCDD5    mov         eax,ebp
 005DCDD7    mov         edx,dword ptr ds:[4D55AC];TCustomAction
 005DCDDD    call        @IsClass
 005DCDE2    test        al,al
>005DCDE4    je          005DCEB0
 005DCDEA    mov         edi,dword ptr [esi+78];TBitBtn.FActionLink:TControlActionLink
 005DCDED    test        bl,bl
>005DCDEF    je          005DCE13
 005DCDF1    mov         edx,dword ptr [edi+24]
 005DCDF4    mov         eax,edi
 005DCDF6    call        005DD1D4
 005DCDFB    test        al,al
>005DCDFD    jne         005DCE13
 005DCDFF    mov         eax,esi
 005DCE01    call        TBitBtn.GetGlyph
 005DCE06    mov         edx,dword ptr [eax]
 005DCE08    call        dword ptr [edx+20]
 005DCE0B    test        al,al
>005DCE0D    je          005DCEB0
 005DCE13    test        bl,bl
>005DCE15    jne         005DCE28
 005DCE17    cmp         dword ptr [edi+24],0FFFFFFFF
>005DCE1B    jne         005DCE28
 005DCE1D    mov         eax,dword ptr [edi+24]
 005DCE20    cmp         eax,dword ptr [ebp+90]
>005DCE26    je          005DCE45
 005DCE28    mov         eax,ebp
 005DCE2A    mov         edx,dword ptr [eax+90]
 005DCE30    mov         dword ptr [edi+24],edx
 005DCE33    cmp         dword ptr [eax+90],0FFFFFFFF
>005DCE3A    je          005DCE45
 005DCE3C    xor         edx,edx
 005DCE3E    mov         eax,esi
 005DCE40    call        TBitBtn.SetGlyph
 005DCE45    mov         eax,esi
 005DCE47    call        TBitBtn.GetGlyph
 005DCE4C    mov         edx,dword ptr [eax]
 005DCE4E    call        dword ptr [edx+20]
 005DCE51    test        al,al
>005DCE53    je          005DCE5E
 005DCE55    cmp         dword ptr [ebp+64],0
 005DCE59    setne       al
>005DCE5C    jmp         005DCE60
 005DCE5E    xor         eax,eax
 005DCE60    test        al,al
>005DCE62    je          005DCE70
 005DCE64    mov         eax,dword ptr [ebp+64]
 005DCE67    cmp         dword ptr [eax+74],0
 005DCE6B    setne       al
>005DCE6E    jmp         005DCE72
 005DCE70    xor         eax,eax
 005DCE72    test        al,al
>005DCE74    je          005DCE82
 005DCE76    cmp         dword ptr [ebp+90],0
 005DCE7D    setge       al
>005DCE80    jmp         005DCE84
 005DCE82    xor         eax,eax
 005DCE84    test        al,al
>005DCE86    je          005DCEB0
 005DCE88    mov         ebx,ebp
 005DCE8A    mov         eax,dword ptr [ebx+64]
 005DCE8D    mov         eax,dword ptr [eax+74]
 005DCE90    mov         edx,dword ptr [eax]
 005DCE92    call        dword ptr [edx+48]
 005DCE95    cmp         eax,dword ptr [ebx+90]
>005DCE9B    jle         005DCEB0
 005DCE9D    mov         ecx,dword ptr [ebx+90]
 005DCEA3    mov         eax,dword ptr [ebx+64]
 005DCEA6    mov         edx,dword ptr [eax+74]
 005DCEA9    mov         eax,esi
 005DCEAB    call        005DCDA0
 005DCEB0    pop         ebp
 005DCEB1    pop         edi
 005DCEB2    pop         esi
 005DCEB3    pop         ebx
 005DCEB4    ret
end;*}

//005DCEB8
procedure sub_005DCEB8;
begin
{*
 005DCEB8    push        ebx
 005DCEB9    push        esi
 005DCEBA    mov         bl,0B
 005DCEBC    mov         esi,7CA804;gvar_007CA804:Pointer
 005DCEC1    mov         eax,dword ptr [esi]
 005DCEC3    call        TObject.Free
 005DCEC8    add         esi,4
 005DCECB    dec         bl
>005DCECD    jne         005DCEC1
 005DCECF    pop         esi
 005DCED0    pop         ebx
 005DCED1    ret
*}
end;

//005DCED4
{*procedure TBitBtn.CMMouseEnter(?:?);
begin
 005DCED4    push        ebx
 005DCED5    push        esi
 005DCED6    mov         esi,eax
 005DCED8    mov         eax,esi
 005DCEDA    call        TControl.CMMouseEnter
 005DCEDF    call        TStyleManager.GetActiveStyle
 005DCEE4    mov         ebx,eax
 005DCEE6    mov         eax,ebx
 005DCEE8    mov         edx,dword ptr [eax]
 005DCEEA    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 005DCEED    test        al,al
>005DCEEF    je          005DCEFC
 005DCEF1    movzx       eax,byte ptr [esi+2FE];TBitBtn.FMouseInControl:Boolean
 005DCEF8    xor         al,1
>005DCEFA    jmp         005DCEFE
 005DCEFC    xor         eax,eax
 005DCEFE    test        al,al
>005DCF00    je          005DCF19
 005DCF02    test        byte ptr [esi+1C],10;TBitBtn.FComponentState:TComponentState
>005DCF06    jne         005DCF19
 005DCF08    mov         byte ptr [esi+2FE],1;TBitBtn.FMouseInControl:Boolean
 005DCF0F    mov         eax,esi
 005DCF11    mov         edx,dword ptr [eax]
 005DCF13    call        dword ptr [edx+0AC];TWinControl.Repaint
 005DCF19    pop         esi
 005DCF1A    pop         ebx
 005DCF1B    ret
end;*}

//005DCF1C
{*procedure TBitBtn.CMMouseLeave(?:?);
begin
 005DCF1C    push        ebx
 005DCF1D    push        esi
 005DCF1E    mov         esi,eax
 005DCF20    mov         eax,esi
 005DCF22    call        TControl.CMMouseLeave
 005DCF27    call        TStyleManager.GetActiveStyle
 005DCF2C    mov         ebx,eax
 005DCF2E    mov         eax,ebx
 005DCF30    mov         edx,dword ptr [eax]
 005DCF32    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 005DCF35    test        al,al
>005DCF37    je          005DCF53
 005DCF39    cmp         byte ptr [esi+2FE],0;TBitBtn.FMouseInControl:Boolean
>005DCF40    je          005DCF53
 005DCF42    mov         byte ptr [esi+2FE],0;TBitBtn.FMouseInControl:Boolean
 005DCF49    mov         eax,esi
 005DCF4B    mov         edx,dword ptr [eax]
 005DCF4D    call        dword ptr [edx+0AC];TWinControl.Repaint
 005DCF53    pop         esi
 005DCF54    pop         ebx
 005DCF55    ret
end;*}

//005DCF58
procedure TBitBtn.sub_004E9934;
begin
{*
 005DCF58    mov         eax,[005D75E8];TBitBtnActionLink
 005DCF5D    ret
*}
end;

//005DCF60
{*procedure sub_005DCF60(?:?; ?:?);
begin
 005DCF60    push        ebp
 005DCF61    mov         ebp,esp
 005DCF63    add         esp,0FFFFFFBC
 005DCF66    push        ebx
 005DCF67    push        esi
 005DCF68    push        edi
 005DCF69    xor         ebx,ebx
 005DCF6B    mov         dword ptr [ebp-44],ebx
 005DCF6E    mov         ebx,ecx
 005DCF70    mov         dword ptr [ebp-4],edx
 005DCF73    mov         esi,eax
 005DCF75    xor         eax,eax
 005DCF77    push        ebp
 005DCF78    push        5DD142
 005DCF7D    push        dword ptr fs:[eax]
 005DCF80    mov         dword ptr fs:[eax],esp
 005DCF83    mov         eax,dword ptr [esi+8];TBitBtnStyleHook.FControl:TWinControl
 005DCF86    mov         edx,dword ptr ds:[5D7820];TBitBtn
 005DCF8C    call        @IsClass
 005DCF91    test        al,al
>005DCF93    jne         005DCFA6
 005DCF95    mov         ecx,ebx
 005DCF97    mov         edx,dword ptr [ebp-4]
 005DCF9A    mov         eax,esi
 005DCF9C    call        00516204
>005DCFA1    jmp         005DD12C
 005DCFA6    lea         edx,[ebp-30]
 005DCFA9    mov         eax,dword ptr [esi+8];TBitBtnStyleHook.FControl:TWinControl
 005DCFAC    mov         ecx,dword ptr [eax]
 005DCFAE    call        dword ptr [ecx+64];TWinControl.GetClientRect
 005DCFB1    cmp         byte ptr [esi+29],0;TBitBtnStyleHook.FPressed:Boolean
>005DCFB5    je          005DCFCC
 005DCFB7    call        TStyleManager.GetActiveStyle
 005DCFBC    mov         ebx,eax
 005DCFBE    lea         ecx,[ebp-20]
 005DCFC1    mov         dl,4
 005DCFC3    mov         eax,ebx
 005DCFC5    mov         ebx,dword ptr [eax]
 005DCFC7    call        dword ptr [ebx+5C];TCustomStyleServices.GetElementDetails
>005DCFCA    jmp         005DD040
 005DCFCC    test        bl,bl
>005DCFCE    je          005DCFE5
 005DCFD0    call        TStyleManager.GetActiveStyle
 005DCFD5    mov         ebx,eax
 005DCFD7    lea         ecx,[ebp-20]
 005DCFDA    mov         dl,3
 005DCFDC    mov         eax,ebx
 005DCFDE    mov         ebx,dword ptr [eax]
 005DCFE0    call        dword ptr [ebx+5C];TCustomStyleServices.GetElementDetails
>005DCFE3    jmp         005DD040
 005DCFE5    cmp         byte ptr [esi+0E],0;TBitBtnStyleHook.FFocused:Boolean
>005DCFE9    jne         005DCFF7
 005DCFEB    mov         eax,dword ptr [esi+8];TBitBtnStyleHook.FControl:TWinControl
 005DCFEE    cmp         byte ptr [eax+2A0],0
>005DCFF5    je          005DD00C
 005DCFF7    call        TStyleManager.GetActiveStyle
 005DCFFC    mov         ebx,eax
 005DCFFE    lea         ecx,[ebp-20]
 005DD001    mov         dl,6
 005DD003    mov         eax,ebx
 005DD005    mov         ebx,dword ptr [eax]
 005DD007    call        dword ptr [ebx+5C];TCustomStyleServices.GetElementDetails
>005DD00A    jmp         005DD040
 005DD00C    mov         eax,dword ptr [esi+8];TBitBtnStyleHook.FControl:TWinControl
 005DD00F    mov         edx,dword ptr [eax]
 005DD011    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 005DD014    test        al,al
>005DD016    je          005DD02D
 005DD018    call        TStyleManager.GetActiveStyle
 005DD01D    mov         ebx,eax
 005DD01F    lea         ecx,[ebp-20]
 005DD022    mov         dl,2
 005DD024    mov         eax,ebx
 005DD026    mov         ebx,dword ptr [eax]
 005DD028    call        dword ptr [ebx+5C];TCustomStyleServices.GetElementDetails
>005DD02B    jmp         005DD040
 005DD02D    call        TStyleManager.GetActiveStyle
 005DD032    mov         ebx,eax
 005DD034    lea         ecx,[ebp-20]
 005DD037    mov         dl,5
 005DD039    mov         eax,ebx
 005DD03B    mov         ebx,dword ptr [eax]
 005DD03D    call        dword ptr [ebx+5C];TCustomStyleServices.GetElementDetails
 005DD040    lea         edx,[ebp-30]
 005DD043    mov         eax,dword ptr [esi+8];TBitBtnStyleHook.FControl:TWinControl
 005DD046    mov         ecx,dword ptr [eax]
 005DD048    call        dword ptr [ecx+64];TWinControl.GetClientRect
 005DD04B    call        TStyleManager.GetActiveStyle
 005DD050    mov         ebx,eax
 005DD052    lea         eax,[ebp-30]
 005DD055    push        eax
 005DD056    push        0
 005DD058    mov         eax,dword ptr [ebp-4]
 005DD05B    call        TCanvas.GetHandle
 005DD060    mov         edx,eax
 005DD062    lea         ecx,[ebp-20]
 005DD065    mov         eax,ebx
 005DD067    call        TCustomStyleServices.DrawElement
 005DD06C    xor         eax,eax
 005DD06E    mov         dword ptr [ebp-14],eax
 005DD071    xor         eax,eax
 005DD073    mov         dword ptr [ebp-10],eax
 005DD076    mov         eax,dword ptr [ebp-14]
 005DD079    mov         dword ptr [ebp-0C],eax
 005DD07C    mov         eax,dword ptr [ebp-10]
 005DD07F    mov         dword ptr [ebp-8],eax
 005DD082    mov         edi,dword ptr [esi+8];TBitBtnStyleHook.FControl:TWinControl
 005DD085    mov         eax,edi
 005DD087    mov         edx,dword ptr [eax]
 005DD089    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 005DD08C    test        al,al
>005DD08E    jne         005DD094
 005DD090    mov         bl,1
>005DD092    jmp         005DD0A0
 005DD094    cmp         byte ptr [esi+29],0;TBitBtnStyleHook.FPressed:Boolean
>005DD098    je          005DD09E
 005DD09A    mov         bl,2
>005DD09C    jmp         005DD0A0
 005DD09E    xor         ebx,ebx
 005DD0A0    mov         edx,dword ptr [edi+74];TWinControl.FFont:TFont
 005DD0A3    mov         eax,dword ptr [ebp-4]
 005DD0A6    call        TCanvas.SetFont
 005DD0AB    mov         esi,dword ptr [edi+2EC]
 005DD0B1    mov         byte ptr [esi+21],0
 005DD0B5    mov         eax,dword ptr [ebp-20]
 005DD0B8    mov         dword ptr [esi+24],eax
 005DD0BB    mov         eax,dword ptr [ebp-1C]
 005DD0BE    mov         dword ptr [esi+28],eax
 005DD0C1    mov         eax,dword ptr [ebp-18]
 005DD0C4    mov         dword ptr [esi+2C],eax
 005DD0C7    mov         byte ptr [esi+30],1
 005DD0CB    test        byte ptr [edi+188],1;TWinControl.FStyleElements:TStyleElements
 005DD0D2    setne       al
 005DD0D5    mov         byte ptr [esi+40],al
 005DD0D8    lea         eax,[ebp-0C]
 005DD0DB    push        eax
 005DD0DC    lea         edx,[ebp-44]
 005DD0DF    mov         eax,edi
 005DD0E1    call        TControl.GetText
 005DD0E6    mov         eax,dword ptr [ebp-44]
 005DD0E9    push        eax
 005DD0EA    movzx       eax,byte ptr [edi+2F2]
 005DD0F1    push        eax
 005DD0F2    mov         eax,dword ptr [edi+2F8]
 005DD0F8    push        eax
 005DD0F9    mov         eax,dword ptr [edi+2F4]
 005DD0FF    push        eax
 005DD100    push        ebx
 005DD101    push        0
 005DD103    xor         edx,edx
 005DD105    mov         eax,edi
 005DD107    call        TControl.DrawTextBiDiModeFlags
 005DD10C    movzx       edx,byte ptr [edi+291]
 005DD113    or          eax,dword ptr [edx*4+7A1E94]
 005DD11A    push        eax
 005DD11B    lea         eax,[ebp-40]
 005DD11E    push        eax
 005DD11F    lea         ecx,[ebp-30]
 005DD122    mov         edx,dword ptr [ebp-4]
 005DD125    mov         eax,esi
 005DD127    call        TButtonGlyph.Draw
 005DD12C    xor         eax,eax
 005DD12E    pop         edx
 005DD12F    pop         ecx
 005DD130    pop         ecx
 005DD131    mov         dword ptr fs:[eax],edx
 005DD134    push        5DD149
 005DD139    lea         eax,[ebp-44]
 005DD13C    call        @UStrClr
 005DD141    ret
>005DD142    jmp         @HandleFinally
>005DD147    jmp         005DD139
 005DD149    pop         edi
 005DD14A    pop         esi
 005DD14B    pop         ebx
 005DD14C    mov         esp,ebp
 005DD14E    pop         ebp
 005DD14F    ret
end;*}

//005DD150
procedure TBitBtnActionLink.AssignClient(AClient:TObject);
begin
{*
 005DD150    push        ebx
 005DD151    push        esi
 005DD152    mov         esi,edx
 005DD154    mov         ebx,eax
 005DD156    mov         edx,esi
 005DD158    mov         eax,ebx
 005DD15A    call        TControlActionLink.AssignClient
 005DD15F    mov         eax,esi
 005DD161    mov         edx,dword ptr ds:[5D7820];TBitBtn
 005DD167    call        @AsClass
 005DD16C    mov         dword ptr [ebx+20],eax;TBitBtnActionLink.FClient:TBitBtn
 005DD16F    pop         esi
 005DD170    pop         ebx
 005DD171    ret
*}
end;

//005DD174
constructor TBitBtnActionLink.Create(AClient:TObject);
begin
{*
 005DD174    push        ebx
 005DD175    push        esi
 005DD176    test        dl,dl
>005DD178    je          005DD182
 005DD17A    add         esp,0FFFFFFF0
 005DD17D    call        @ClassCreate
 005DD182    mov         ebx,edx
 005DD184    mov         esi,eax
 005DD186    xor         edx,edx
 005DD188    mov         eax,esi
 005DD18A    call        TBasicActionLink.Create
 005DD18F    mov         dword ptr [esi+24],0FFFFFFFF;TBitBtnActionLink.FImageIndex:Integer
 005DD196    mov         eax,esi
 005DD198    test        bl,bl
>005DD19A    je          005DD1AB
 005DD19C    call        @AfterConstruction
 005DD1A1    pop         dword ptr fs:[0]
 005DD1A8    add         esp,0C
 005DD1AB    mov         eax,esi
 005DD1AD    pop         esi
 005DD1AE    pop         ebx
 005DD1AF    ret
*}
end;

//005DD1B0
{*function TBitBtnActionLink.IsImageIndexLinked:?;
begin
 005DD1B0    push        ebx
 005DD1B1    mov         ebx,eax
 005DD1B3    mov         eax,ebx
 005DD1B5    call        TContainedActionLink.IsImageIndexLinked
 005DD1BA    test        al,al
>005DD1BC    je          005DD1CC
 005DD1BE    mov         eax,dword ptr [ebx+10];TBitBtnActionLink.FAction:TBasicAction
 005DD1C1    mov         eax,dword ptr [eax+90]
 005DD1C7    cmp         eax,dword ptr [ebx+24];TBitBtnActionLink.FImageIndex:Integer
>005DD1CA    je          005DD1D0
 005DD1CC    xor         eax,eax
 005DD1CE    pop         ebx
 005DD1CF    ret
 005DD1D0    mov         al,1
 005DD1D2    pop         ebx
 005DD1D3    ret
end;*}

//005DD1D4
{*function sub_005DD1D4(?:TControlActionLink; ?:Integer):?;
begin
 005DD1D4    push        ebp
 005DD1D5    mov         ebp,esp
 005DD1D7    add         esp,0FFFFFFF8
 005DD1DA    push        ebx
 005DD1DB    push        esi
 005DD1DC    push        edi
 005DD1DD    mov         edi,edx
 005DD1DF    mov         ebx,eax
 005DD1E1    mov         eax,dword ptr [ebx+10];TControlActionLink.FAction:TBasicAction
 005DD1E4    mov         eax,dword ptr [eax+64]
 005DD1E7    mov         esi,dword ptr [eax+74]
 005DD1EA    test        esi,esi
>005DD1EC    je          005DD21E
 005DD1EE    mov         eax,dword ptr [ebx+20]
 005DD1F1    call        TBitBtn.GetGlyph
 005DD1F6    test        eax,eax
>005DD1F8    je          005DD21E
 005DD1FA    mov         eax,dword ptr [ebx+20]
 005DD1FD    call        TBitBtn.GetGlyph
 005DD202    mov         edx,dword ptr [eax]
 005DD204    call        dword ptr [edx+30]
 005DD207    cmp         eax,dword ptr [esi+54]
>005DD20A    jne         005DD21E
 005DD20C    mov         eax,dword ptr [ebx+20]
 005DD20F    call        TBitBtn.GetGlyph
 005DD214    mov         edx,dword ptr [eax]
 005DD216    call        dword ptr [edx+24]
 005DD219    cmp         eax,dword ptr [esi+50]
>005DD21C    je          005DD222
 005DD21E    xor         eax,eax
>005DD220    jmp         005DD224
 005DD222    mov         al,1
 005DD224    mov         byte ptr [ebp-1],al
 005DD227    cmp         byte ptr [ebp-1],0
>005DD22B    je          005DD28A
 005DD22D    mov         dl,1
 005DD22F    mov         eax,[004C1D10];TBitmap
 005DD234    call        TBitmap.Create;TBitmap.Create
 005DD239    mov         dword ptr [ebp-8],eax
 005DD23C    xor         eax,eax
 005DD23E    push        ebp
 005DD23F    push        5DD283
 005DD244    push        dword ptr fs:[eax]
 005DD247    mov         dword ptr fs:[eax],esp
 005DD24A    push        edi
 005DD24B    mov         eax,dword ptr [ebx+20]
 005DD24E    mov         ecx,esi
 005DD250    mov         edx,dword ptr [ebp-8]
 005DD253    call        005DCA28
 005DD258    mov         eax,dword ptr [ebx+20]
 005DD25B    call        TBitBtn.GetGlyph
 005DD260    mov         edx,eax
 005DD262    mov         eax,dword ptr [ebp-8]
 005DD265    mov         ecx,dword ptr [eax]
 005DD267    call        dword ptr [ecx-2C];TGraphic.Equals
 005DD26A    mov         byte ptr [ebp-1],al
 005DD26D    xor         eax,eax
 005DD26F    pop         edx
 005DD270    pop         ecx
 005DD271    pop         ecx
 005DD272    mov         dword ptr fs:[eax],edx
 005DD275    push        5DD28A
 005DD27A    mov         eax,dword ptr [ebp-8]
 005DD27D    call        TObject.Free
 005DD282    ret
>005DD283    jmp         @HandleFinally
>005DD288    jmp         005DD27A
 005DD28A    movzx       eax,byte ptr [ebp-1]
 005DD28E    pop         edi
 005DD28F    pop         esi
 005DD290    pop         ebx
 005DD291    pop         ecx
 005DD292    pop         ecx
 005DD293    pop         ebp
 005DD294    ret
end;*}

//005DD298
{*procedure sub_005DD298(?:?);
begin
 005DD298    push        ebx
 005DD299    push        esi
 005DD29A    push        edi
 005DD29B    push        ebp
 005DD29C    mov         edi,edx
 005DD29E    mov         ebx,eax
 005DD2A0    mov         eax,ebx
 005DD2A2    mov         edx,dword ptr [eax]
 005DD2A4    call        dword ptr [edx+40];TBitBtnActionLink.IsImageIndexLinked
 005DD2A7    test        al,al
>005DD2A9    jne         005DD2C0
 005DD2AB    mov         eax,dword ptr [ebx+20];TBitBtnActionLink.FClient:TBitBtn
 005DD2AE    call        TBitBtn.GetGlyph
 005DD2B3    mov         edx,dword ptr [eax]
 005DD2B5    call        dword ptr [edx+20]
 005DD2B8    test        al,al
>005DD2BA    je          005DD342
 005DD2C0    mov         esi,dword ptr [ebx+10];TBitBtnActionLink.FAction:TBasicAction
 005DD2C3    mov         eax,esi
 005DD2C5    mov         edx,dword ptr ds:[4D55AC];TCustomAction
 005DD2CB    call        @IsClass
 005DD2D0    test        al,al
>005DD2D2    je          005DD335
 005DD2D4    mov         ebp,dword ptr [esi+64]
 005DD2D7    test        ebp,ebp
>005DD2D9    je          005DD335
 005DD2DB    cmp         dword ptr [ebp+74],0
>005DD2DF    je          005DD335
 005DD2E1    test        edi,edi
>005DD2E3    jl          005DD2F4
 005DD2E5    mov         eax,dword ptr [ebp+74]
 005DD2E8    mov         edx,dword ptr [eax]
 005DD2EA    call        dword ptr [edx+48]
 005DD2ED    cmp         edi,eax
 005DD2EF    setl        al
>005DD2F2    jmp         005DD2F6
 005DD2F4    xor         eax,eax
 005DD2F6    test        al,al
>005DD2F8    je          005DD32B
 005DD2FA    mov         edx,dword ptr [ebx+24];TBitBtnActionLink.FImageIndex:Integer
 005DD2FD    mov         eax,ebx
 005DD2FF    call        005DD1D4
 005DD304    test        al,al
>005DD306    jne         005DD319
 005DD308    mov         eax,dword ptr [ebx+20];TBitBtnActionLink.FClient:TBitBtn
 005DD30B    call        TBitBtn.GetGlyph
 005DD310    mov         edx,dword ptr [eax]
 005DD312    call        dword ptr [edx+20]
 005DD315    test        al,al
>005DD317    je          005DD335
 005DD319    mov         eax,dword ptr [esi+64]
 005DD31C    mov         edx,dword ptr [eax+74]
 005DD31F    mov         ecx,edi
 005DD321    mov         eax,dword ptr [ebx+20];TBitBtnActionLink.FClient:TBitBtn
 005DD324    call        005DCDA0
>005DD329    jmp         005DD335
 005DD32B    xor         edx,edx
 005DD32D    mov         eax,dword ptr [ebx+20];TBitBtnActionLink.FClient:TBitBtn
 005DD330    call        TBitBtn.SetGlyph
 005DD335    mov         dword ptr [ebx+24],edi;TBitBtnActionLink.FImageIndex:Integer
 005DD338    xor         edx,edx
 005DD33A    mov         eax,dword ptr [ebx+20];TBitBtnActionLink.FClient:TBitBtn
 005DD33D    call        005DCA18
 005DD342    pop         ebp
 005DD343    pop         edi
 005DD344    pop         esi
 005DD345    pop         ebx
 005DD346    ret
end;*}

Initialization
//0079D848
{*
 0079D848    sub         dword ptr ds:[7CA800],1
>0079D84F    jae         0079D86C
 0079D851    mov         eax,5DD348
 0079D856    call        @InitImports
 0079D85B    mov         eax,7CA804;gvar_007CA804:Pointer
 0079D860    xor         ecx,ecx
 0079D862    mov         edx,2C
 0079D867    call        @FillChar
 0079D86C    ret
*}
Finalization
end.