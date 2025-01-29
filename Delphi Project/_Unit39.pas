//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit39;

interface

uses
  SysUtils, Classes;

    procedure sub_00506174;//00506174
    //procedure sub_00506184(?:?);//00506184
    procedure CreateParams(var Params:TCreateParams);//005061EC
    procedure sub_005061FC;//005061FC
    //procedure CMDialogChar(?:?);//00506638
    procedure CMTextChanged;//005066B8
    procedure CMCtl3DChanged;//005066D0
    //procedure WMSize(?:?);//005066F0
    constructor Create(AOwner:TComponent);//00506708
    //procedure CMEnabledChanged(?:?);//0050679C
    //procedure sub_005067C0(?:?);//005067C0
    //procedure sub_005067D4(?:?; ?:?; ?:?; ?:?; ?:?);//005067D4
    //procedure sub_00506870(?:?; ?:?; ?:?; ?:?; ?:?);//00506870
    //procedure sub_005068A4(?:?; ?:?);//005068A4
    //procedure sub_00506BB4(?:TCanvas; ?:?);//00506BB4
    procedure sub_00506C44;//00506C44
    procedure CMFontChanged(var Message:TMessage);//00506D40
    procedure sub_00506D5C;//00506D5C
    procedure SetAlignment(Value:TAlignment);//00506E70
    procedure SetEllipsisPosition(Value:TEllipsisPosition);//00506E90
    procedure SetAutoSize(Value:Boolean);//00506EB4
    //function GetTransparent:?;//00506ED8
    procedure SetFocusControl(Value:TWinControl);//00506EE4
    procedure SetGlowSize(Value:Integer);//00506EF8
    procedure SetShowAccelChar(Value:Boolean);//00506F18
    procedure SetTransparent(Value:Boolean);//00506F38
    procedure SetLayout(Value:TTextLayout);//00506F7C
    procedure SetWordWrap(Value:Boolean);//00506F9C
    procedure Notification(AComponent:TComponent; Operation:TOperation);//00506FC8
    procedure CMTextChanged;//00506FF8
    procedure sub_00507014;//00507014
    procedure sub_00507024;//00507024
    procedure CMFontChanged;//0050707C
    //procedure CMDialogChar(?:?);//00507098
    procedure sub_00507140(?:TCustomLabel);//00507140
    constructor Create(AOwner:TComponent);//005071A4

implementation

//00506174
procedure sub_00506174;
begin
{*
 00506174    push        esi
 00506175    mov         esi,eax
 00506177    mov         eax,esi
 00506179    mov         edx,dword ptr [eax]
 0050617B    call        dword ptr [edx+0A8];TWinControl.Invalidate
 00506181    pop         esi
 00506182    ret
*}
end;

//00506184
{*procedure sub_00506184(?:?);
begin
 00506184    push        ebx
 00506185    push        esi
 00506186    mov         esi,edx
 00506188    mov         ebx,eax
 0050618A    mov         edx,esi
 0050618C    mov         eax,ebx
 0050618E    call        004EA530
 00506193    mov         edx,dword ptr [ebx+74];TCustomGroupBox.FFont:TFont
 00506196    mov         eax,dword ptr [ebx+290];TCustomGroupBox.FCanvas:TCanvas
 0050619C    call        TCanvas.SetFont
 005061A1    mov         edx,5061E8;'0'
 005061A6    mov         eax,dword ptr [ebx+290];TCustomGroupBox.FCanvas:TCanvas
 005061AC    call        TCustomCanvas.TextHeight
 005061B1    add         dword ptr [esi+4],eax
 005061B4    mov         eax,esi
 005061B6    or          ecx,0FFFFFFFF
 005061B9    or          edx,0FFFFFFFF
 005061BC    call        InflateRect
 005061C1    cmp         byte ptr [ebx+204],0;TCustomGroupBox.FCtl3D:Boolean
>005061C8    je          005061D7
 005061CA    mov         eax,esi
 005061CC    or          ecx,0FFFFFFFF
 005061CF    or          edx,0FFFFFFFF
 005061D2    call        InflateRect
 005061D7    pop         esi
 005061D8    pop         ebx
 005061D9    ret
end;*}

//005061EC
procedure TCustomGroupBox.CreateParams(var Params:TCreateParams);
begin
{*
 005061EC    push        ebx
 005061ED    mov         ebx,edx
 005061EF    mov         edx,ebx
 005061F1    call        TWinControl.CreateParams
 005061F6    and         dword ptr [ebx+24],0FFFFFFFC;TCreateParams.WindowClass:TWndClass
 005061FA    pop         ebx
 005061FB    ret
*}
end;

//005061FC
procedure sub_005061FC;
begin
{*
 005061FC    push        ebp
 005061FD    mov         ebp,esp
 005061FF    mov         ecx,13
 00506204    push        0
 00506206    push        0
 00506208    dec         ecx
>00506209    jne         00506204
 0050620B    push        ebx
 0050620C    push        esi
 0050620D    push        edi
 0050620E    mov         ebx,eax
 00506210    xor         eax,eax
 00506212    push        ebp
 00506213    push        506615
 00506218    push        dword ptr fs:[eax]
 0050621B    mov         dword ptr fs:[eax],esp
 0050621E    mov         edi,dword ptr [ebx+290];TCustomGroupBox.FCanvas:TCanvas
 00506224    mov         edx,dword ptr [ebx+74];TCustomGroupBox.FFont:TFont
 00506227    mov         eax,edi
 00506229    call        TCanvas.SetFont
 0050622E    mov         eax,ebx
 00506230    call        00585D90
 00506235    test        al,al
>00506237    je          00506415
 0050623D    lea         edx,[ebp-68]
 00506240    mov         eax,ebx
 00506242    call        TControl.GetText
 00506247    cmp         dword ptr [ebp-68],0
>0050624B    je          005062DD
 00506251    mov         eax,edi
 00506253    call        TCanvas.GetHandle
 00506258    mov         dword ptr [ebp-20],eax
 0050625B    lea         edx,[ebp-4]
 0050625E    mov         eax,ebx
 00506260    call        TControl.GetText
 00506265    lea         edx,[ebp-6C]
 00506268    mov         eax,ebx
 0050626A    call        TControl.GetText
 0050626F    mov         eax,dword ptr [ebp-6C]
 00506272    mov         esi,eax
 00506274    test        esi,esi
>00506276    je          0050627D
 00506278    sub         esi,4
 0050627B    mov         esi,dword ptr [esi]
 0050627D    lea         eax,[ebp-18]
 00506280    push        eax
 00506281    push        esi
 00506282    mov         eax,dword ptr [ebp-4]
 00506285    call        @UStrToPWChar
 0050628A    push        eax
 0050628B    mov         eax,dword ptr [ebp-20]
 0050628E    push        eax
 0050628F    call        gdi32.GetTextExtentPoint32W
 00506294    mov         eax,dword ptr [ebp-14]
 00506297    push        eax
 00506298    lea         eax,[ebp-48]
 0050629B    push        eax
 0050629C    mov         ecx,dword ptr [ebp-18]
 0050629F    xor         edx,edx
 005062A1    xor         eax,eax
 005062A3    call        Rect
 005062A8    mov         eax,ebx
 005062AA    mov         si,0FFC6
 005062AE    call        @CallDynaInst;TControl.sub_004E7698
 005062B3    test        al,al
>005062B5    jne         005062C8
 005062B7    lea         eax,[ebp-48]
 005062BA    xor         ecx,ecx
 005062BC    mov         edx,8
 005062C1    call        OffsetRect
>005062C6    jmp         005062EE
 005062C8    mov         edx,dword ptr [ebx+58];TCustomGroupBox.FWidth:Integer
 005062CB    sub         edx,8
 005062CE    sub         edx,dword ptr [ebp-40]
 005062D1    lea         eax,[ebp-48]
 005062D4    xor         ecx,ecx
 005062D6    call        OffsetRect
>005062DB    jmp         005062EE
 005062DD    push        0
 005062DF    lea         eax,[ebp-48]
 005062E2    push        eax
 005062E3    xor         ecx,ecx
 005062E5    xor         edx,edx
 005062E7    xor         eax,eax
 005062E9    call        Rect
 005062EE    lea         edx,[ebp-58]
 005062F1    mov         eax,ebx
 005062F3    mov         ecx,dword ptr [eax]
 005062F5    call        dword ptr [ecx+64];TWinControl.GetClientRect
 005062F8    mov         eax,dword ptr [ebp-3C]
 005062FB    sub         eax,dword ptr [ebp-44]
 005062FE    sar         eax,1
>00506300    jns         00506305
 00506302    adc         eax,0
 00506305    mov         dword ptr [ebp-54],eax
 00506308    mov         eax,dword ptr [ebp-3C]
 0050630B    push        eax
 0050630C    mov         eax,dword ptr [ebp-40]
 0050630F    push        eax
 00506310    mov         eax,dword ptr [ebp-44]
 00506313    push        eax
 00506314    mov         eax,dword ptr [ebp-48]
 00506317    push        eax
 00506318    mov         eax,edi
 0050631A    call        TCanvas.GetHandle
 0050631F    push        eax
 00506320    call        gdi32.ExcludeClipRect
 00506325    mov         eax,ebx
 00506327    mov         edx,dword ptr [eax]
 00506329    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 0050632C    test        al,al
>0050632E    je          00506336
 00506330    mov         byte ptr [ebp-19],24
>00506334    jmp         0050633A
 00506336    mov         byte ptr [ebp-19],25
 0050633A    call        StyleServices
 0050633F    movzx       edx,byte ptr [ebp-19]
 00506343    lea         ecx,[ebp-64]
 00506346    mov         esi,dword ptr [eax]
 00506348    call        dword ptr [esi+5C];TCustomStyleServices.GetElementDetails
 0050634B    lea         eax,[ebp-58]
 0050634E    push        eax
 0050634F    push        0
 00506351    mov         eax,edi
 00506353    call        TCanvas.GetHandle
 00506358    push        eax
 00506359    call        StyleServices
 0050635E    lea         ecx,[ebp-64]
 00506361    pop         edx
 00506362    call        TCustomStyleServices.DrawElement
 00506367    push        0
 00506369    mov         eax,edi
 0050636B    call        TCanvas.GetHandle
 00506370    push        eax
 00506371    call        gdi32.SelectClipRgn
 00506376    mov         dl,1
 00506378    mov         eax,dword ptr [edi+48];TCanvas.FBrush:TBrush
 0050637B    call        TBrush.SetStyle
 00506380    lea         edx,[ebp-70]
 00506383    mov         eax,ebx
 00506385    call        TControl.GetText
 0050638A    cmp         dword ptr [ebp-70],0
>0050638E    je          005065DD
 00506394    mov         eax,ebx
 00506396    call        TControl.IsRightToLeft
 0050639B    test        al,al
>0050639D    je          005063DD
 0050639F    mov         edx,20
 005063A4    mov         eax,ebx
 005063A6    call        TControl.DrawTextBiDiModeFlags
 005063AB    mov         esi,eax
 005063AD    lea         edx,[ebp-74]
 005063B0    mov         eax,ebx
 005063B2    call        TControl.GetText
 005063B7    mov         eax,dword ptr [ebp-74]
 005063BA    push        eax
 005063BB    lea         eax,[ebp-48]
 005063BE    push        eax
 005063BF    push        esi
 005063C0    push        0
 005063C2    mov         eax,edi
 005063C4    call        TCanvas.GetHandle
 005063C9    push        eax
 005063CA    call        StyleServices
 005063CF    lea         ecx,[ebp-64]
 005063D2    pop         edx
 005063D3    call        TCustomStyleServices.DrawText
>005063D8    jmp         005065DD
 005063DD    lea         edx,[ebp-78]
 005063E0    mov         eax,ebx
 005063E2    call        TControl.GetText
 005063E7    mov         eax,dword ptr [ebp-78]
 005063EA    push        eax
 005063EB    lea         eax,[ebp-48]
 005063EE    push        eax
 005063EF    mov         eax,[00506624];0x100 gvar_00506624
 005063F4    push        eax
 005063F5    push        1FFFFFFF
 005063FA    mov         eax,edi
 005063FC    call        TCanvas.GetHandle
 00506401    push        eax
 00506402    call        StyleServices
 00506407    lea         ecx,[ebp-64]
 0050640A    pop         edx
 0050640B    call        TCustomStyleServices.DrawText
>00506410    jmp         005065DD
 00506415    mov         edx,506634;'0'
 0050641A    mov         eax,edi
 0050641C    call        TCustomCanvas.TextHeight
 00506421    mov         dword ptr [ebp-10],eax
 00506424    mov         eax,dword ptr [ebx+5C];TCustomGroupBox.FHeight:Integer
 00506427    push        eax
 00506428    lea         eax,[ebp-38]
 0050642B    push        eax
 0050642C    mov         edx,dword ptr [ebp-10]
 0050642F    sar         edx,1
>00506431    jns         00506436
 00506433    adc         edx,0
 00506436    dec         edx
 00506437    mov         ecx,dword ptr [ebx+58];TCustomGroupBox.FWidth:Integer
 0050643A    xor         eax,eax
 0050643C    call        Rect
 00506441    cmp         byte ptr [ebx+204],0;TCustomGroupBox.FCtl3D:Boolean
>00506448    je          00506484
 0050644A    inc         dword ptr [ebp-38]
 0050644D    inc         dword ptr [ebp-34]
 00506450    mov         edx,0FF000014
 00506455    mov         eax,dword ptr [edi+48];TCanvas.FBrush:TBrush
 00506458    call        TBrush.SetColor
 0050645D    lea         edx,[ebp-38]
 00506460    mov         eax,edi
 00506462    mov         ecx,dword ptr [eax]
 00506464    call        dword ptr [ecx+5C];TCanvas.FrameRect
 00506467    lea         eax,[ebp-38]
 0050646A    or          ecx,0FFFFFFFF
 0050646D    or          edx,0FFFFFFFF
 00506470    call        OffsetRect
 00506475    mov         edx,0FF000010
 0050647A    mov         eax,dword ptr [edi+48];TCanvas.FBrush:TBrush
 0050647D    call        TBrush.SetColor
>00506482    jmp         00506491
 00506484    mov         edx,0FF000006
 00506489    mov         eax,dword ptr [edi+48];TCanvas.FBrush:TBrush
 0050648C    call        TBrush.SetColor
 00506491    lea         edx,[ebp-38]
 00506494    mov         eax,edi
 00506496    mov         ecx,dword ptr [eax]
 00506498    call        dword ptr [ecx+5C];TCanvas.FrameRect
 0050649B    lea         edx,[ebp-7C]
 0050649E    mov         eax,ebx
 005064A0    call        TControl.GetText
 005064A5    cmp         dword ptr [ebp-7C],0
>005064A9    je          005065DD
 005064AF    mov         eax,ebx
 005064B1    mov         si,0FFC6
 005064B5    call        @CallDynaInst;TControl.sub_004E7698
 005064BA    test        al,al
>005064BC    jne         005064D6
 005064BE    mov         eax,dword ptr [ebp-10]
 005064C1    push        eax
 005064C2    lea         eax,[ebp-38]
 005064C5    push        eax
 005064C6    xor         ecx,ecx
 005064C8    xor         edx,edx
 005064CA    mov         eax,8
 005064CF    call        Rect
>005064D4    jmp         00506521
 005064D6    mov         eax,dword ptr [ebp-10]
 005064D9    push        eax
 005064DA    lea         eax,[ebp-8C]
 005064E0    push        eax
 005064E1    lea         edx,[ebp-90]
 005064E7    mov         eax,ebx
 005064E9    call        TControl.GetText
 005064EE    mov         edx,dword ptr [ebp-90]
 005064F4    mov         eax,dword ptr [ebx+290];TCustomGroupBox.FCanvas:TCanvas
 005064FA    call        TCustomCanvas.TextWidth
 005064FF    push        eax
 00506500    mov         eax,dword ptr [ebp-30]
 00506503    pop         edx
 00506504    sub         eax,edx
 00506506    sub         eax,8
 00506509    xor         ecx,ecx
 0050650B    xor         edx,edx
 0050650D    call        Rect
 00506512    push        edi
 00506513    lea         esi,[ebp-8C]
 00506519    lea         edi,[ebp-38]
 0050651C    movs        dword ptr [edi],dword ptr [esi]
 0050651D    movs        dword ptr [edi],dword ptr [esi]
 0050651E    movs        dword ptr [edi],dword ptr [esi]
 0050651F    movs        dword ptr [edi],dword ptr [esi]
 00506520    pop         edi
 00506521    mov         edx,20
 00506526    mov         eax,ebx
 00506528    call        TControl.DrawTextBiDiModeFlags
 0050652D    mov         esi,eax
 0050652F    mov         eax,edi
 00506531    call        TCanvas.GetHandle
 00506536    mov         dword ptr [ebp-28],eax
 00506539    lea         edx,[ebp-8]
 0050653C    mov         eax,ebx
 0050653E    call        TControl.GetText
 00506543    lea         edx,[ebp-94]
 00506549    mov         eax,ebx
 0050654B    call        TControl.GetText
 00506550    mov         eax,dword ptr [ebp-94]
 00506556    mov         dword ptr [ebp-24],eax
 00506559    cmp         dword ptr [ebp-24],0
>0050655D    je          0050656A
 0050655F    mov         eax,dword ptr [ebp-24]
 00506562    sub         eax,4
 00506565    mov         eax,dword ptr [eax]
 00506567    mov         dword ptr [ebp-24],eax
 0050656A    mov         eax,400
 0050656F    or          eax,esi
 00506571    push        eax
 00506572    lea         eax,[ebp-38]
 00506575    push        eax
 00506576    mov         eax,dword ptr [ebp-24]
 00506579    push        eax
 0050657A    mov         eax,dword ptr [ebp-8]
 0050657D    call        @UStrToPWChar
 00506582    push        eax
 00506583    mov         eax,dword ptr [ebp-28]
 00506586    push        eax
 00506587    call        user32.DrawTextW
 0050658C    mov         edx,dword ptr [ebx+7C];TCustomGroupBox.FColor:TColor
 0050658F    mov         eax,dword ptr [edi+48];TCanvas.FBrush:TBrush
 00506592    call        TBrush.SetColor
 00506597    mov         eax,edi
 00506599    call        TCanvas.GetHandle
 0050659E    mov         edi,eax
 005065A0    lea         edx,[ebp-0C]
 005065A3    mov         eax,ebx
 005065A5    call        TControl.GetText
 005065AA    lea         edx,[ebp-98]
 005065B0    mov         eax,ebx
 005065B2    call        TControl.GetText
 005065B7    mov         eax,dword ptr [ebp-98]
 005065BD    mov         ebx,eax
 005065BF    test        ebx,ebx
>005065C1    je          005065C8
 005065C3    sub         ebx,4
 005065C6    mov         ebx,dword ptr [ebx]
 005065C8    push        esi
 005065C9    lea         eax,[ebp-38]
 005065CC    push        eax
 005065CD    push        ebx
 005065CE    mov         eax,dword ptr [ebp-0C]
 005065D1    call        @UStrToPWChar
 005065D6    push        eax
 005065D7    push        edi
 005065D8    call        user32.DrawTextW
 005065DD    xor         eax,eax
 005065DF    pop         edx
 005065E0    pop         ecx
 005065E1    pop         ecx
 005065E2    mov         dword ptr fs:[eax],edx
 005065E5    push        50661C
 005065EA    lea         eax,[ebp-98]
 005065F0    mov         edx,3
 005065F5    call        @UStrArrayClr
 005065FA    lea         eax,[ebp-7C]
 005065FD    mov         edx,6
 00506602    call        @UStrArrayClr
 00506607    lea         eax,[ebp-0C]
 0050660A    mov         edx,3
 0050660F    call        @UStrArrayClr
 00506614    ret
>00506615    jmp         @HandleFinally
>0050661A    jmp         005065EA
 0050661C    pop         edi
 0050661D    pop         esi
 0050661E    pop         ebx
 0050661F    mov         esp,ebp
 00506621    pop         ebp
 00506622    ret
*}
end;

//00506638
{*procedure TCustomGroupBox.CMDialogChar(?:?);
begin
 00506638    push        ebp
 00506639    mov         ebp,esp
 0050663B    push        0
 0050663D    push        ebx
 0050663E    push        esi
 0050663F    push        edi
 00506640    mov         edi,edx
 00506642    mov         ebx,eax
 00506644    xor         eax,eax
 00506646    push        ebp
 00506647    push        5066AA
 0050664C    push        dword ptr fs:[eax]
 0050664F    mov         dword ptr fs:[eax],esp
 00506652    lea         edx,[ebp-4]
 00506655    mov         eax,ebx
 00506657    call        TControl.GetText
 0050665C    mov         edx,dword ptr [ebp-4]
 0050665F    movzx       eax,word ptr [edi+4]
 00506663    call        IsAccel
 00506668    test        al,al
>0050666A    je          0050668B
 0050666C    mov         eax,ebx
 0050666E    mov         si,0FFB4
 00506672    call        @CallDynaInst;TWinControl.sub_004EFD3C
 00506677    test        al,al
>00506679    je          0050668B
 0050667B    mov         eax,ebx
 0050667D    call        TWinControl.SelectFirst
 00506682    mov         dword ptr [edi+0C],1
>00506689    jmp         00506694
 0050668B    mov         edx,edi
 0050668D    mov         eax,ebx
 0050668F    call        TWinControl.CMDialogChar
 00506694    xor         eax,eax
 00506696    pop         edx
 00506697    pop         ecx
 00506698    pop         ecx
 00506699    mov         dword ptr fs:[eax],edx
 0050669C    push        5066B1
 005066A1    lea         eax,[ebp-4]
 005066A4    call        @UStrClr
 005066A9    ret
>005066AA    jmp         @HandleFinally
>005066AF    jmp         005066A1
 005066B1    pop         edi
 005066B2    pop         esi
 005066B3    pop         ebx
 005066B4    pop         ecx
 005066B5    pop         ebp
 005066B6    ret
end;*}

//005066B8
procedure TCustomGroupBox.CMTextChanged;
begin
{*
 005066B8    push        ebx
 005066B9    mov         ebx,eax
 005066BB    mov         eax,ebx
 005066BD    mov         edx,dword ptr [eax]
 005066BF    call        dword ptr [edx+0A8];TWinControl.Invalidate
 005066C5    mov         eax,ebx
 005066C7    call        TWinControl.Realign
 005066CC    pop         ebx
 005066CD    ret
*}
end;

//005066D0
procedure TCustomGroupBox.CMCtl3DChanged;
begin
{*
 005066D0    push        ebx
 005066D1    mov         ebx,eax
 005066D3    mov         eax,ebx
 005066D5    call        TWinControl.CMCtl3DChanged
 005066DA    mov         eax,ebx
 005066DC    mov         edx,dword ptr [eax]
 005066DE    call        dword ptr [edx+0A8];TWinControl.Invalidate
 005066E4    mov         eax,ebx
 005066E6    call        TWinControl.Realign
 005066EB    pop         ebx
 005066EC    ret
*}
end;

//005066F0
{*procedure TCustomGroupBox.WMSize(?:?);
begin
 005066F0    push        esi
 005066F1    mov         esi,eax
 005066F3    mov         eax,esi
 005066F5    call        TWinControl.WMSize
 005066FA    mov         eax,esi
 005066FC    mov         edx,dword ptr [eax]
 005066FE    call        dword ptr [edx+0A8];TWinControl.Invalidate
 00506704    pop         esi
 00506705    ret
end;*}

//00506708
constructor TCustomLabel.Create(AOwner:TComponent);
begin
{*
 00506708    push        ebx
 00506709    push        esi
 0050670A    test        dl,dl
>0050670C    je          00506716
 0050670E    add         esp,0FFFFFFF0
 00506711    call        @ClassCreate
 00506716    mov         ebx,edx
 00506718    mov         esi,eax
 0050671A    xor         edx,edx
 0050671C    mov         eax,esi
 0050671E    call        TGraphicControl.Create
 00506723    mov         eax,[00506794];0x800 gvar_00506794
 00506728    or          dword ptr [esi+60],eax;TCustomLabel.FControlStyle:TControlStyle
 0050672B    mov         edx,41
 00506730    mov         eax,esi
 00506732    call        TControl.SetWidth
 00506737    mov         edx,11
 0050673C    mov         eax,esi
 0050673E    call        TControl.SetHeight
 00506743    mov         byte ptr [esi+1C5],1;TCustomLabel.FAutoSize:Boolean
 0050674A    mov         byte ptr [esi+1D6],1;TCustomLabel.FShowAccelChar:Boolean
 00506751    call        StyleServices
 00506756    mov         edx,dword ptr [eax]
 00506758    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 0050675B    test        al,al
>0050675D    je          0050676B
 0050675F    mov         eax,[00506798];0x40 gvar_00506798
 00506764    not         eax
 00506766    and         dword ptr [esi+60],eax;TCustomLabel.FControlStyle:TControlStyle
>00506769    jmp         00506773
 0050676B    mov         eax,[00506798];0x40 gvar_00506798
 00506770    or          dword ptr [esi+60],eax;TCustomLabel.FControlStyle:TControlStyle
 00506773    mov         eax,esi
 00506775    call        00507140
 0050677A    mov         eax,esi
 0050677C    test        bl,bl
>0050677E    je          0050678F
 00506780    call        @AfterConstruction
 00506785    pop         dword ptr fs:[0]
 0050678C    add         esp,0C
 0050678F    mov         eax,esi
 00506791    pop         esi
 00506792    pop         ebx
 00506793    ret
*}
end;

//0050679C
{*procedure TCustomLabel.CMEnabledChanged(?:?);
begin
 0050679C    push        ebx
 0050679D    push        esi
 0050679E    mov         esi,edx
 005067A0    mov         ebx,eax
 005067A2    call        TStyleManager.GetIsCustomStyleActive
 005067A7    test        al,al
>005067A9    je          005067B2
 005067AB    mov         eax,ebx
 005067AD    call        00507140
 005067B2    mov         edx,esi
 005067B4    mov         eax,ebx
 005067B6    call        TControl.CMEnabledChanged
 005067BB    pop         esi
 005067BC    pop         ebx
 005067BD    ret
end;*}

//005067C0
{*procedure sub_005067C0(?:?);
begin
 005067C0    push        ebx
 005067C1    push        esi
 005067C2    mov         esi,edx
 005067C4    mov         ebx,eax
 005067C6    mov         edx,esi
 005067C8    mov         eax,ebx
 005067CA    call        TControl.GetText
 005067CF    pop         esi
 005067D0    pop         ebx
 005067D1    ret
end;*}

//005067D4
{*procedure sub_005067D4(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005067D4    push        ebp
 005067D5    mov         ebp,esp
 005067D7    add         esp,0FFFFFFCC
 005067DA    push        ebx
 005067DB    push        esi
 005067DC    mov         dword ptr [ebp-8],ecx
 005067DF    mov         dword ptr [ebp-4],edx
 005067E2    mov         ebx,eax
 005067E4    mov         eax,dword ptr [ebp+8]
 005067E7    call        TTextFormatFlags.&op_Implicit
 005067EC    call        TTextFormatFlags.&op_Implicit
 005067F1    mov         esi,eax
 005067F3    test        byte ptr [ebx+65],80
>005067F7    je          005067FF
 005067F9    or          esi,800000;gvar_00800000
 005067FF    movzx       eax,byte ptr ds:[50686C];0x21 gvar_0050686C
 00506806    mov         byte ptr [ebp-28],al
 00506809    mov         eax,dword ptr [ebx+1B8]
 0050680F    mov         eax,dword ptr [eax+40]
 00506812    mov         eax,dword ptr [eax+18]
 00506815    mov         dword ptr [ebp-24],eax
 00506818    mov         eax,dword ptr [ebx+1D0]
 0050681E    mov         dword ptr [ebp-0C],eax
 00506821    mov         eax,dword ptr [ebp-8]
 00506824    push        eax
 00506825    mov         eax,dword ptr [ebp+0C]
 00506828    push        eax
 00506829    push        esi
 0050682A    lea         eax,[ebp-28]
 0050682D    push        eax
 0050682E    mov         eax,ebx
 00506830    mov         edx,dword ptr [eax]
 00506832    call        dword ptr [edx+6C]
 00506835    and         eax,7F
 00506838    movzx       eax,byte ptr [eax+7A12D0]
 0050683F    push        eax
 00506840    call        StyleServices
 00506845    lea         ecx,[ebp-34]
 00506848    pop         edx
 00506849    mov         ebx,dword ptr [eax]
 0050684B    call        dword ptr [ebx+0EC];TCustomStyleServices.GetElementDetails
 00506851    lea         eax,[ebp-34]
 00506854    push        eax
 00506855    call        StyleServices
 0050685A    mov         edx,dword ptr [ebp-4]
 0050685D    pop         ecx
 0050685E    call        TCustomStyleServices.DrawText
 00506863    pop         esi
 00506864    pop         ebx
 00506865    mov         esp,ebp
 00506867    pop         ebp
 00506868    ret         8
end;*}

//00506870
{*procedure sub_00506870(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00506870    push        ebp
 00506871    mov         ebp,esp
 00506873    push        ebx
 00506874    push        esi
 00506875    push        edi
 00506876    mov         esi,ecx
 00506878    mov         edi,edx
 0050687A    mov         ebx,esi
 0050687C    test        ebx,ebx
>0050687E    je          00506885
 00506880    sub         ebx,4
 00506883    mov         ebx,dword ptr [ebx]
 00506885    mov         eax,dword ptr [ebp+8]
 00506888    push        eax
 00506889    mov         eax,dword ptr [ebp+0C]
 0050688C    push        eax
 0050688D    push        ebx
 0050688E    mov         eax,esi
 00506890    call        @UStrToPWChar
 00506895    push        eax
 00506896    push        edi
 00506897    call        user32.DrawTextW
 0050689C    pop         edi
 0050689D    pop         esi
 0050689E    pop         ebx
 0050689F    pop         ebp
 005068A0    ret         8
end;*}

//005068A4
{*procedure TCustomLabel.sub_005068A4(?:?; ?:?);
begin
 005068A4    push        ebp
 005068A5    mov         ebp,esp
 005068A7    add         esp,0FFFFFFE4
 005068AA    push        ebx
 005068AB    push        esi
 005068AC    push        edi
 005068AD    xor         ebx,ebx
 005068AF    mov         dword ptr [ebp-4],ebx
 005068B2    mov         dword ptr [ebp-8],ebx
 005068B5    mov         esi,ecx
 005068B7    mov         dword ptr [ebp-0C],edx
 005068BA    mov         ebx,eax
 005068BC    xor         eax,eax
 005068BE    push        ebp
 005068BF    push        506B6C
 005068C4    push        dword ptr fs:[eax]
 005068C7    mov         dword ptr fs:[eax],esp
 005068CA    lea         edx,[ebp-4]
 005068CD    mov         eax,ebx
 005068CF    mov         ecx,dword ptr [eax]
 005068D1    call        dword ptr [ecx+0BC];TCustomLabel.sub_005067C0
 005068D7    test        esi,400
>005068DD    je          00506920
 005068DF    cmp         dword ptr [ebp-4],0
>005068E3    jne         005068E9
 005068E5    mov         al,1
>005068E7    jmp         0050690F
 005068E9    cmp         byte ptr [ebx+1D6],0;TCustomLabel.FShowAccelChar:Boolean
>005068F0    je          0050690D
 005068F2    mov         eax,dword ptr [ebp-4]
 005068F5    cmp         word ptr [eax],26
>005068F9    jne         0050690D
 005068FB    mov         eax,dword ptr [ebp-4]
 005068FE    test        eax,eax
>00506900    je          00506907
 00506902    sub         eax,4
 00506905    mov         eax,dword ptr [eax]
 00506907    dec         eax
 00506908    sete        al
>0050690B    jmp         0050690F
 0050690D    xor         eax,eax
 0050690F    test        al,al
>00506911    je          00506920
 00506913    lea         eax,[ebp-4]
 00506916    mov         edx,506B88;' '
 0050691B    call        @UStrCat
 00506920    cmp         dword ptr [ebp-4],0
>00506924    je          00506B51
 0050692A    cmp         byte ptr [ebx+1D6],0;TCustomLabel.FShowAccelChar:Boolean
>00506931    jne         00506939
 00506933    or          esi,800
 00506939    mov         edx,esi
 0050693B    mov         eax,ebx
 0050693D    call        TControl.DrawTextBiDiModeFlags
 00506942    mov         esi,eax
 00506944    mov         edx,dword ptr [ebx+74];TCustomLabel.FFont:TFont
 00506947    mov         eax,dword ptr [ebx+1B8];TCustomLabel.FCanvas:TCanvas
 0050694D    call        TCanvas.SetFont
 00506952    cmp         byte ptr [ebx+1D8],0;TCustomLabel.FEllipsisPosition:TEllipsisPosition
>00506959    je          00506A8A
 0050695F    cmp         byte ptr [ebx+1C5],0;TCustomLabel.FAutoSize:Boolean
>00506966    jne         00506A8A
 0050696C    lea         eax,[ebp-8]
 0050696F    mov         edx,dword ptr [ebp-4]
 00506972    call        @UStrLAsg
 00506977    and         esi,0FFFFFFBF
 0050697A    movzx       eax,byte ptr [ebx+1D8];TCustomLabel.FEllipsisPosition:TEllipsisPosition
 00506981    or          esi,dword ptr [eax*4+7A12D4]
 00506988    cmp         byte ptr [ebx+1D5],0;TCustomLabel.FWordWrap:Boolean
>0050698F    je          00506A79
 00506995    movzx       eax,byte ptr [ebx+1D8];TCustomLabel.FEllipsisPosition:TEllipsisPosition
 0050699C    add         al,0FE
 0050699E    sub         al,2
>005069A0    jae         00506A79
 005069A6    mov         eax,dword ptr [ebp-0C]
 005069A9    push        esi
 005069AA    mov         esi,eax
 005069AC    lea         edi,[ebp-1C]
 005069AF    movs        dword ptr [edi],dword ptr [esi]
 005069B0    movs        dword ptr [edi],dword ptr [esi]
 005069B1    movs        dword ptr [edi],dword ptr [esi]
 005069B2    movs        dword ptr [edi],dword ptr [esi]
 005069B3    pop         esi
 005069B4    mov         edx,506B98;'...'
 005069B9    mov         eax,dword ptr [ebx+1B8];TCustomLabel.FCanvas:TCanvas
 005069BF    call        TCustomCanvas.TextWidth
 005069C4    sub         dword ptr [ebp-14],eax
 005069C7    lea         eax,[ebp-1C]
 005069CA    push        eax
 005069CB    mov         eax,400
 005069D0    or          eax,esi
 005069D2    push        eax
 005069D3    mov         eax,dword ptr [ebx+1B8];TCustomLabel.FCanvas:TCanvas
 005069D9    call        TCanvas.GetHandle
 005069DE    mov         edx,eax
 005069E0    mov         ecx,dword ptr [ebp-8]
 005069E3    mov         eax,dword ptr [ebx+1CC];TCustomLabel.FLayout:TTextLayout
 005069E9    call        dword ptr [ebx+1C8];TCustomLabel.FDrawTextProc
 005069EF    mov         edi,dword ptr [ebp-10]
 005069F2    sub         edi,dword ptr [ebp-18]
 005069F5    mov         eax,ebx
 005069F7    call        TControl.GetClientHeight
 005069FC    cmp         edi,eax
>005069FE    jle         00506A14
 00506A00    mov         eax,dword ptr [ebx+1B8];TCustomLabel.FCanvas:TCanvas
 00506A06    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 00506A09    mov         eax,dword ptr [eax+10];TFont.FResource:PResource
 00506A0C    cmp         edi,dword ptr [eax+18]
 00506A0F    setg        al
>00506A12    jmp         00506A16
 00506A14    xor         eax,eax
 00506A16    test        al,al
>00506A18    je          00506A79
 00506A1A    mov         edx,dword ptr [ebp-4]
 00506A1D    mov         eax,506BAC;' 	'
 00506A22    call        0041EE60
 00506A27    mov         edi,eax
 00506A29    test        edi,edi
>00506A2B    jne         00506A3B
 00506A2D    mov         eax,dword ptr [ebp-4]
 00506A30    test        eax,eax
>00506A32    je          00506A39
 00506A34    sub         eax,4
 00506A37    mov         eax,dword ptr [eax]
 00506A39    mov         edi,eax
 00506A3B    dec         edi
 00506A3C    mov         edx,edi
 00506A3E    mov         eax,dword ptr [ebp-4]
 00506A41    call        00424DC0
 00506A46    cmp         al,1
>00506A48    jne         00506A4B
 00506A4A    dec         edi
 00506A4B    lea         eax,[ebp-4]
 00506A4E    push        eax
 00506A4F    mov         ecx,edi
 00506A51    mov         edx,1
 00506A56    mov         eax,dword ptr [ebp-4]
 00506A59    call        @UStrCopy
 00506A5E    lea         eax,[ebp-8]
 00506A61    mov         ecx,506B98;'...'
 00506A66    mov         edx,dword ptr [ebp-4]
 00506A69    call        @UStrCat3
 00506A6E    cmp         dword ptr [ebp-4],0
>00506A72    je          00506A79
>00506A74    jmp         005069A6
 00506A79    cmp         dword ptr [ebp-4],0
>00506A7D    je          00506A8A
 00506A7F    lea         eax,[ebp-4]
 00506A82    mov         edx,dword ptr [ebp-8]
 00506A85    call        @UStrLAsg
 00506A8A    mov         eax,ebx
 00506A8C    mov         edx,dword ptr [eax]
 00506A8E    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 00506A91    test        al,al
>00506A93    jne         00506AA3
 00506A95    call        StyleServices
 00506A9A    mov         edx,dword ptr [eax]
 00506A9C    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 00506A9F    test        al,al
>00506AA1    je          00506AC9
 00506AA3    mov         eax,dword ptr [ebp-0C]
 00506AA6    push        eax
 00506AA7    push        esi
 00506AA8    mov         eax,dword ptr [ebx+1B8];TCustomLabel.FCanvas:TCanvas
 00506AAE    call        TCanvas.GetHandle
 00506AB3    mov         edx,eax
 00506AB5    mov         ecx,dword ptr [ebp-4]
 00506AB8    mov         eax,dword ptr [ebx+1CC];TCustomLabel.FLayout:TTextLayout
 00506ABE    call        dword ptr [ebx+1C8];TCustomLabel.FDrawTextProc
>00506AC4    jmp         00506B51
 00506AC9    mov         eax,dword ptr [ebp-0C]
 00506ACC    mov         ecx,1
 00506AD1    mov         edx,1
 00506AD6    call        OffsetRect
 00506ADB    mov         eax,dword ptr [ebx+1B8];TCustomLabel.FCanvas:TCanvas
 00506AE1    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 00506AE4    mov         edx,0FF000014
 00506AE9    call        TFont.SetColor
 00506AEE    mov         eax,dword ptr [ebp-0C]
 00506AF1    push        eax
 00506AF2    push        esi
 00506AF3    mov         eax,dword ptr [ebx+1B8];TCustomLabel.FCanvas:TCanvas
 00506AF9    call        TCanvas.GetHandle
 00506AFE    mov         edx,eax
 00506B00    mov         ecx,dword ptr [ebp-4]
 00506B03    mov         eax,dword ptr [ebx+1CC];TCustomLabel.FLayout:TTextLayout
 00506B09    call        dword ptr [ebx+1C8];TCustomLabel.FDrawTextProc
 00506B0F    mov         eax,dword ptr [ebp-0C]
 00506B12    or          ecx,0FFFFFFFF
 00506B15    or          edx,0FFFFFFFF
 00506B18    call        OffsetRect
 00506B1D    mov         eax,dword ptr [ebx+1B8];TCustomLabel.FCanvas:TCanvas
 00506B23    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 00506B26    mov         edx,0FF000010
 00506B2B    call        TFont.SetColor
 00506B30    mov         eax,dword ptr [ebp-0C]
 00506B33    push        eax
 00506B34    push        esi
 00506B35    mov         eax,dword ptr [ebx+1B8];TCustomLabel.FCanvas:TCanvas
 00506B3B    call        TCanvas.GetHandle
 00506B40    mov         edx,eax
 00506B42    mov         ecx,dword ptr [ebp-4]
 00506B45    mov         eax,dword ptr [ebx+1CC];TCustomLabel.FLayout:TTextLayout
 00506B4B    call        dword ptr [ebx+1C8];TCustomLabel.FDrawTextProc
 00506B51    xor         eax,eax
 00506B53    pop         edx
 00506B54    pop         ecx
 00506B55    pop         ecx
 00506B56    mov         dword ptr fs:[eax],edx
 00506B59    push        506B73
 00506B5E    lea         eax,[ebp-8]
 00506B61    mov         edx,2
 00506B66    call        @UStrArrayClr
 00506B6B    ret
>00506B6C    jmp         @HandleFinally
>00506B71    jmp         00506B5E
 00506B73    pop         edi
 00506B74    pop         esi
 00506B75    pop         ebx
 00506B76    mov         esp,ebp
 00506B78    pop         ebp
 00506B79    ret
end;*}

//00506BB4
{*procedure sub_00506BB4(?:TCanvas; ?:?);
begin
 00506BB4    push        ebp
 00506BB5    mov         ebp,esp
 00506BB7    add         esp,0FFFFFFE8
 00506BBA    push        ebx
 00506BBB    push        esi
 00506BBC    push        edi
 00506BBD    mov         esi,edx
 00506BBF    lea         edi,[ebp-18]
 00506BC2    movs        dword ptr [edi],dword ptr [esi]
 00506BC3    movs        dword ptr [edi],dword ptr [esi]
 00506BC4    movs        dword ptr [edi],dword ptr [esi]
 00506BC5    movs        dword ptr [edi],dword ptr [esi]
 00506BC6    mov         ebx,eax
 00506BC8    lea         eax,[ebp-4]
 00506BCB    push        eax
 00506BCC    push        0
 00506BCE    push        2
 00506BD0    lea         eax,[ebp-18]
 00506BD3    push        eax
 00506BD4    mov         eax,ebx
 00506BD6    call        TCanvas.GetHandle
 00506BDB    push        eax
 00506BDC    call        004D426C
 00506BE1    mov         dword ptr [ebp-8],eax
 00506BE4    xor         edx,edx
 00506BE6    push        ebp
 00506BE7    push        506C33
 00506BEC    push        dword ptr fs:[edx]
 00506BEF    mov         dword ptr fs:[edx],esp
 00506BF2    mov         eax,dword ptr [ebx+48]
 00506BF5    call        TBrush.GetHandle
 00506BFA    push        eax
 00506BFB    lea         eax,[ebp-18]
 00506BFE    push        eax
 00506BFF    mov         eax,dword ptr [ebp-4]
 00506C02    push        eax
 00506C03    call        user32.FillRect
 00506C08    push        0FF
 00506C0D    lea         eax,[ebp-18]
 00506C10    push        eax
 00506C11    mov         eax,dword ptr [ebp-8]
 00506C14    push        eax
 00506C15    call        004D429C
 00506C1A    xor         eax,eax
 00506C1C    pop         edx
 00506C1D    pop         ecx
 00506C1E    pop         ecx
 00506C1F    mov         dword ptr fs:[eax],edx
 00506C22    push        506C3A
 00506C27    push        0FF
 00506C29    mov         eax,dword ptr [ebp-8]
 00506C2C    push        eax
 00506C2D    call        004D4284
 00506C32    ret
>00506C33    jmp         @HandleFinally
>00506C38    jmp         00506C27
 00506C3A    pop         edi
 00506C3B    pop         esi
 00506C3C    pop         ebx
 00506C3D    mov         esp,ebp
 00506C3F    pop         ebp
 00506C40    ret
end;*}

//00506C44
procedure sub_00506C44;
begin
{*
 00506C44    push        ebx
 00506C45    push        esi
 00506C46    push        edi
 00506C47    add         esp,0FFFFFFE0
 00506C4A    mov         ebx,eax
 00506C4C    mov         esi,dword ptr [ebx+1B8];TCustomLabel.FCanvas:TCanvas
 00506C52    mov         edx,esp
 00506C54    mov         eax,ebx
 00506C56    mov         ecx,dword ptr [eax]
 00506C58    call        dword ptr [ecx+64];TCustomLabel.sub_004E6794
 00506C5B    mov         eax,ebx
 00506C5D    call        TLabel.GetTransparent
 00506C62    test        al,al
>00506C64    jne         00506C99
 00506C66    mov         edx,dword ptr [ebx+7C];TCustomLabel.FColor:TColor
 00506C69    mov         eax,dword ptr [esi+48];TCanvas.FBrush:TBrush
 00506C6C    call        TBrush.SetColor
 00506C71    xor         edx,edx
 00506C73    mov         eax,dword ptr [esi+48];TCanvas.FBrush:TBrush
 00506C76    call        TBrush.SetStyle
 00506C7B    test        byte ptr [ebx+65],80;TCustomLabel.FAlign:TAlign
>00506C7F    jne         00506C8C
 00506C81    mov         edx,esp
 00506C83    mov         eax,esi
 00506C85    mov         ecx,dword ptr [eax]
 00506C87    call        dword ptr [ecx+54];TCanvas.FillRect
>00506C8A    jmp         00506C99
 00506C8C    mov         edx,esp
 00506C8E    mov         eax,dword ptr [ebx+1B8];TCustomLabel.FCanvas:TCanvas
 00506C94    call        00506BB4
 00506C99    mov         dl,1
 00506C9B    mov         eax,dword ptr [esi+48];TCanvas.FBrush:TBrush
 00506C9E    call        TBrush.SetStyle
 00506CA3    movzx       eax,byte ptr [ebx+1D5];TCustomLabel.FWordWrap:Boolean
 00506CAA    movzx       edi,word ptr [eax*2+7A12EA]
 00506CB2    or          di,40
 00506CB6    movzx       eax,byte ptr [ebx+1C4];TCustomLabel.FAlignment:TAlignment
 00506CBD    or          di,word ptr [eax*2+7A12E4]
 00506CC5    movzx       edi,di
 00506CC8    cmp         byte ptr [ebx+1D4],0;TCustomLabel.FLayout:TTextLayout
>00506CCF    je          00506D27
 00506CD1    push        edi
 00506CD2    lea         esi,[esp+4]
 00506CD6    lea         edi,[esp+14]
 00506CDA    movs        dword ptr [edi],dword ptr [esi]
 00506CDB    movs        dword ptr [edi],dword ptr [esi]
 00506CDC    movs        dword ptr [edi],dword ptr [esi]
 00506CDD    movs        dword ptr [edi],dword ptr [esi]
 00506CDE    pop         edi
 00506CDF    mov         ecx,400
 00506CE4    or          ecx,edi
 00506CE6    lea         edx,[esp+10]
 00506CEA    mov         eax,ebx
 00506CEC    mov         si,0FFC4
 00506CF0    call        @CallDynaInst;TCustomLabel.sub_005068A4
 00506CF5    cmp         byte ptr [ebx+1D4],2;TCustomLabel.FLayout:TTextLayout
>00506CFC    jne         00506D10
 00506CFE    mov         ecx,dword ptr [ebx+5C];TCustomLabel.FHeight:Integer
 00506D01    sub         ecx,dword ptr [esp+1C]
 00506D05    mov         eax,esp
 00506D07    xor         edx,edx
 00506D09    call        OffsetRect
>00506D0E    jmp         00506D27
 00506D10    mov         ecx,dword ptr [ebx+5C];TCustomLabel.FHeight:Integer
 00506D13    sub         ecx,dword ptr [esp+1C]
 00506D17    sar         ecx,1
>00506D19    jns         00506D1E
 00506D1B    adc         ecx,0
 00506D1E    mov         eax,esp
 00506D20    xor         edx,edx
 00506D22    call        OffsetRect
 00506D27    mov         edx,esp
 00506D29    mov         ecx,edi
 00506D2B    mov         eax,ebx
 00506D2D    mov         si,0FFC4
 00506D31    call        @CallDynaInst;TCustomLabel.sub_005068A4
 00506D36    add         esp,20
 00506D39    pop         edi
 00506D3A    pop         esi
 00506D3B    pop         ebx
 00506D3C    ret
*}
end;

//00506D40
procedure TCustomLabel.CMFontChanged(var Message:TMessage);
begin
{*
 00506D40    push        ebx
 00506D41    push        esi
 00506D42    mov         ebx,eax
 00506D44    mov         eax,ebx
 00506D46    call        TWinControl.CMFontChanged
 00506D4B    mov         eax,ebx
 00506D4D    mov         si,0FFC5
 00506D51    call        @CallDynaInst;TCustomLabel.sub_00506D5C
 00506D56    pop         esi
 00506D57    pop         ebx
 00506D58    ret
*}
end;

//00506D5C
procedure TCustomLabel.sub_00506D5C;
begin
{*
 00506D5C    push        ebp
 00506D5D    mov         ebp,esp
 00506D5F    add         esp,0FFFFFFE4
 00506D62    push        ebx
 00506D63    push        esi
 00506D64    push        edi
 00506D65    mov         dword ptr [ebp-4],eax
 00506D68    mov         eax,dword ptr [ebp-4]
 00506D6B    test        byte ptr [eax+1C],2;TCustomLabel.FComponentState:TComponentState
>00506D6F    jne         00506E67
 00506D75    mov         eax,dword ptr [ebp-4]
 00506D78    cmp         byte ptr [eax+1C5],0;TCustomLabel.FAutoSize:Boolean
>00506D7F    je          00506E67
 00506D85    lea         edx,[ebp-1C]
 00506D88    mov         eax,dword ptr [ebp-4]
 00506D8B    mov         ecx,dword ptr [eax]
 00506D8D    call        dword ptr [ecx+64];TCustomLabel.sub_004E6794
 00506D90    push        0
 00506D92    call        user32.GetDC
 00506D97    mov         dword ptr [ebp-8],eax
 00506D9A    xor         eax,eax
 00506D9C    push        ebp
 00506D9D    push        506E09
 00506DA2    push        dword ptr fs:[eax]
 00506DA5    mov         dword ptr fs:[eax],esp
 00506DA8    mov         eax,dword ptr [ebp-4]
 00506DAB    mov         eax,dword ptr [eax+1B8];TCustomLabel.FCanvas:TCanvas
 00506DB1    mov         edx,dword ptr [ebp-8]
 00506DB4    call        TCanvas.SetHandle
 00506DB9    mov         eax,dword ptr [ebp-4]
 00506DBC    movzx       eax,byte ptr [eax+1D5];TCustomLabel.FWordWrap:Boolean
 00506DC3    movzx       ecx,word ptr [eax*2+7A12EE]
 00506DCB    or          ecx,800440;gvar_00800440
 00506DD1    lea         edx,[ebp-1C]
 00506DD4    mov         eax,dword ptr [ebp-4]
 00506DD7    mov         si,0FFC4
 00506DDB    call        @CallDynaInst;TCustomLabel.sub_005068A4
 00506DE0    mov         eax,dword ptr [ebp-4]
 00506DE3    mov         eax,dword ptr [eax+1B8];TCustomLabel.FCanvas:TCanvas
 00506DE9    xor         edx,edx
 00506DEB    call        TCanvas.SetHandle
 00506DF0    xor         eax,eax
 00506DF2    pop         edx
 00506DF3    pop         ecx
 00506DF4    pop         ecx
 00506DF5    mov         dword ptr fs:[eax],edx
 00506DF8    push        506E10
 00506DFD    mov         eax,dword ptr [ebp-8]
 00506E00    push        eax
 00506E01    push        0
 00506E03    call        user32.ReleaseDC
 00506E08    ret
>00506E09    jmp         @HandleFinally
>00506E0E    jmp         00506DFD
 00506E10    mov         eax,dword ptr [ebp-4]
 00506E13    mov         edi,dword ptr [eax+50];TCustomLabel.FLeft:Integer
 00506E16    mov         eax,dword ptr [ebp-4]
 00506E19    movzx       eax,byte ptr [eax+1C4];TCustomLabel.FAlignment:TAlignment
 00506E20    mov         byte ptr [ebp-9],al
 00506E23    mov         eax,dword ptr [ebp-4]
 00506E26    mov         si,0FFC6
 00506E2A    call        @CallDynaInst;TControl.sub_004E7698
 00506E2F    test        al,al
>00506E31    je          00506E3B
 00506E33    lea         eax,[ebp-9]
 00506E36    call        ChangeBiDiModeAlignment
 00506E3B    cmp         byte ptr [ebp-9],1
>00506E3F    jne         00506E4C
 00506E41    mov         eax,dword ptr [ebp-4]
 00506E44    mov         eax,dword ptr [eax+58];TCustomLabel.FWidth:Integer
 00506E47    sub         eax,dword ptr [ebp-14]
 00506E4A    add         edi,eax
 00506E4C    mov         eax,dword ptr [ebp-14]
 00506E4F    push        eax
 00506E50    mov         eax,dword ptr [ebp-10]
 00506E53    push        eax
 00506E54    mov         eax,dword ptr [ebp-4]
 00506E57    mov         ecx,dword ptr [eax+54];TCustomLabel.FTop:Integer
 00506E5A    mov         edx,edi
 00506E5C    mov         eax,dword ptr [ebp-4]
 00506E5F    mov         ebx,dword ptr [eax]
 00506E61    call        dword ptr [ebx+0B0];TControl.SetBounds
 00506E67    pop         edi
 00506E68    pop         esi
 00506E69    pop         ebx
 00506E6A    mov         esp,ebp
 00506E6C    pop         ebp
 00506E6D    ret
*}
end;

//00506E70
procedure TLabel.SetAlignment(Value:TAlignment);
begin
{*
 00506E70    push        esi
 00506E71    mov         esi,eax
 00506E73    cmp         dl,byte ptr [esi+1C4];TLabel.FAlignment:TAlignment
>00506E79    je          00506E8B
 00506E7B    mov         byte ptr [esi+1C4],dl;TLabel.FAlignment:TAlignment
 00506E81    mov         eax,esi
 00506E83    mov         edx,dword ptr [eax]
 00506E85    call        dword ptr [edx+0A8];TControl.Invalidate
 00506E8B    pop         esi
 00506E8C    ret
*}
end;

//00506E90
procedure TLabel.SetEllipsisPosition(Value:TEllipsisPosition);
begin
{*
 00506E90    push        esi
 00506E91    mov         esi,eax
 00506E93    cmp         dl,byte ptr [esi+1D8];TLabel.FEllipsisPosition:TEllipsisPosition
>00506E99    je          00506EB2
 00506E9B    mov         byte ptr [esi+1D8],dl;TLabel.FEllipsisPosition:TEllipsisPosition
 00506EA1    mov         byte ptr [esi+1C5],0;TLabel.FAutoSize:Boolean
 00506EA8    mov         eax,esi
 00506EAA    mov         edx,dword ptr [eax]
 00506EAC    call        dword ptr [edx+0A8];TControl.Invalidate
 00506EB2    pop         esi
 00506EB3    ret
*}
end;

//00506EB4
procedure TLabel.SetAutoSize(Value:Boolean);
begin
{*
 00506EB4    push        esi
 00506EB5    cmp         dl,byte ptr [eax+1C5];TLabel.FAutoSize:Boolean
>00506EBB    je          00506ED3
 00506EBD    mov         byte ptr [eax+1C5],dl;TLabel.FAutoSize:Boolean
 00506EC3    mov         byte ptr [eax+1D8],0;TLabel.FEllipsisPosition:TEllipsisPosition
 00506ECA    mov         si,0FFC5
 00506ECE    call        @CallDynaInst;TCustomLabel.sub_00506D5C
 00506ED3    pop         esi
 00506ED4    ret
*}
end;

//00506ED8
{*function TLabel.GetTransparent:?;
begin
 00506ED8    test        byte ptr [eax+60],40;TLabel.FControlStyle:TControlStyle
 00506EDC    setne       al
 00506EDF    xor         al,1
 00506EE1    ret
end;*}

//00506EE4
procedure TLabel.SetFocusControl(Value:TWinControl);
begin
{*
 00506EE4    mov         dword ptr [eax+1C0],edx;TLabel.FFocusControl:TWinControl
 00506EEA    test        edx,edx
>00506EEC    je          00506EF4
 00506EEE    xchg        eax,edx
 00506EEF    call        TComponent.FreeNotification
 00506EF4    ret
*}
end;

//00506EF8
procedure TLabel.SetGlowSize(Value:Integer);
begin
{*
 00506EF8    push        esi
 00506EF9    mov         esi,eax
 00506EFB    cmp         edx,dword ptr [esi+1D0];TLabel.FGlowSize:Integer
>00506F01    je          00506F13
 00506F03    mov         dword ptr [esi+1D0],edx;TLabel.FGlowSize:Integer
 00506F09    mov         eax,esi
 00506F0B    mov         edx,dword ptr [eax]
 00506F0D    call        dword ptr [edx+0A8];TControl.Invalidate
 00506F13    pop         esi
 00506F14    ret
*}
end;

//00506F18
procedure TLabel.SetShowAccelChar(Value:Boolean);
begin
{*
 00506F18    push        esi
 00506F19    mov         esi,eax
 00506F1B    cmp         dl,byte ptr [esi+1D6];TLabel.FShowAccelChar:Boolean
>00506F21    je          00506F33
 00506F23    mov         byte ptr [esi+1D6],dl;TLabel.FShowAccelChar:Boolean
 00506F29    mov         eax,esi
 00506F2B    mov         edx,dword ptr [eax]
 00506F2D    call        dword ptr [edx+0A8];TControl.Invalidate
 00506F33    pop         esi
 00506F34    ret
*}
end;

//00506F38
procedure TLabel.SetTransparent(Value:Boolean);
begin
{*
 00506F38    push        ebx
 00506F39    push        esi
 00506F3A    mov         ebx,edx
 00506F3C    mov         esi,eax
 00506F3E    mov         eax,esi
 00506F40    call        TLabel.GetTransparent
 00506F45    cmp         bl,al
>00506F47    je          00506F6B
 00506F49    test        bl,bl
>00506F4B    je          00506F59
 00506F4D    mov         eax,[00506F78];0x40 gvar_00506F78
 00506F52    not         eax
 00506F54    and         dword ptr [esi+60],eax;TLabel.FControlStyle:TControlStyle
>00506F57    jmp         00506F61
 00506F59    mov         eax,[00506F78];0x40 gvar_00506F78
 00506F5E    or          dword ptr [esi+60],eax;TLabel.FControlStyle:TControlStyle
 00506F61    mov         eax,esi
 00506F63    mov         edx,dword ptr [eax]
 00506F65    call        dword ptr [edx+0A8];TControl.Invalidate
 00506F6B    mov         byte ptr [esi+1D7],1;TLabel.FTransparentSet:Boolean
 00506F72    pop         esi
 00506F73    pop         ebx
 00506F74    ret
*}
end;

//00506F7C
procedure TLabel.SetLayout(Value:TTextLayout);
begin
{*
 00506F7C    push        esi
 00506F7D    mov         esi,eax
 00506F7F    cmp         dl,byte ptr [esi+1D4];TLabel.FLayout:TTextLayout
>00506F85    je          00506F97
 00506F87    mov         byte ptr [esi+1D4],dl;TLabel.FLayout:TTextLayout
 00506F8D    mov         eax,esi
 00506F8F    mov         edx,dword ptr [eax]
 00506F91    call        dword ptr [edx+0A8];TControl.Invalidate
 00506F97    pop         esi
 00506F98    ret
*}
end;

//00506F9C
procedure TLabel.SetWordWrap(Value:Boolean);
begin
{*
 00506F9C    push        esi
 00506F9D    push        edi
 00506F9E    mov         edi,eax
 00506FA0    cmp         dl,byte ptr [edi+1D5];TLabel.FWordWrap:Boolean
>00506FA6    je          00506FC3
 00506FA8    mov         byte ptr [edi+1D5],dl;TLabel.FWordWrap:Boolean
 00506FAE    mov         eax,edi
 00506FB0    mov         si,0FFC5
 00506FB4    call        @CallDynaInst;TCustomLabel.sub_00506D5C
 00506FB9    mov         eax,edi
 00506FBB    mov         edx,dword ptr [eax]
 00506FBD    call        dword ptr [edx+0A8];TControl.Invalidate
 00506FC3    pop         edi
 00506FC4    pop         esi
 00506FC5    ret
*}
end;

//00506FC8
procedure TCustomLabel.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 00506FC8    push        ebx
 00506FC9    push        esi
 00506FCA    push        edi
 00506FCB    mov         ebx,ecx
 00506FCD    mov         esi,edx
 00506FCF    mov         edi,eax
 00506FD1    mov         ecx,ebx
 00506FD3    mov         edx,esi
 00506FD5    mov         eax,edi
 00506FD7    call        TControl.Notification
 00506FDC    cmp         bl,1
>00506FDF    jne         00506FF1
 00506FE1    cmp         esi,dword ptr [edi+1C0];TCustomLabel.FFocusControl:TWinControl
>00506FE7    jne         00506FF1
 00506FE9    xor         eax,eax
 00506FEB    mov         dword ptr [edi+1C0],eax;TCustomLabel.FFocusControl:TWinControl
 00506FF1    pop         edi
 00506FF2    pop         esi
 00506FF3    pop         ebx
 00506FF4    ret
*}
end;

//00506FF8
procedure TCustomLabel.CMTextChanged;
begin
{*
 00506FF8    push        ebx
 00506FF9    push        esi
 00506FFA    mov         ebx,eax
 00506FFC    mov         eax,ebx
 00506FFE    mov         edx,dword ptr [eax]
 00507000    call        dword ptr [edx+0A8];TControl.Invalidate
 00507006    mov         eax,ebx
 00507008    mov         si,0FFC5
 0050700C    call        @CallDynaInst;TCustomLabel.sub_00506D5C
 00507011    pop         esi
 00507012    pop         ebx
 00507013    ret
*}
end;

//00507014
procedure sub_00507014;
begin
{*
 00507014    push        0
 00507016    xor         ecx,ecx
 00507018    mov         edx,0B051
 0050701D    call        TControl.Perform
 00507022    ret
*}
end;

//00507024
procedure TCustomLabel.sub_00507024;
begin
{*
 00507024    push        esi
 00507025    mov         esi,eax
 00507027    mov         eax,esi
 00507029    mov         ecx,dword ptr [eax]
 0050702B    call        dword ptr [ecx-10];TControl.DefaultHandler
 0050702E    call        StyleServices
 00507033    mov         edx,dword ptr [eax]
 00507035    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 00507038    test        al,al
>0050703A    je          00507051
 0050703C    test        byte ptr [esi+188],2;TCustomLabel.FStyleElements:TStyleElements
>00507043    je          00507051
 00507045    mov         eax,[00507078];0x40 gvar_00507078
 0050704A    not         eax
 0050704C    and         dword ptr [esi+60],eax;TCustomLabel.FControlStyle:TControlStyle
>0050704F    jmp         00507064
 00507051    mov         eax,esi
 00507053    call        TLabel.GetTransparent
 00507058    test        al,al
>0050705A    jne         00507064
 0050705C    mov         eax,[00507078];0x40 gvar_00507078
 00507061    or          dword ptr [esi+60],eax;TCustomLabel.FControlStyle:TControlStyle
 00507064    mov         eax,esi
 00507066    call        00507140
 0050706B    mov         eax,esi
 0050706D    mov         edx,dword ptr [eax]
 0050706F    call        dword ptr [edx+0A8];TControl.Invalidate
 00507075    pop         esi
 00507076    ret
*}
end;

//0050707C
procedure TCustomLabel.CMFontChanged;
begin
{*
 0050707C    push        ebx
 0050707D    push        esi
 0050707E    mov         ebx,eax
 00507080    mov         eax,ebx
 00507082    call        TControl.CMFontChanged
 00507087    mov         eax,ebx
 00507089    mov         si,0FFC5
 0050708D    call        @CallDynaInst;TCustomLabel.sub_00506D5C
 00507092    pop         esi
 00507093    pop         ebx
 00507094    ret
*}
end;

//00507098
{*procedure TCustomLabel.CMDialogChar(?:?);
begin
 00507098    push        ebp
 00507099    mov         ebp,esp
 0050709B    add         esp,0FFFFFFF8
 0050709E    push        ebx
 0050709F    push        esi
 005070A0    push        edi
 005070A1    xor         ecx,ecx
 005070A3    mov         dword ptr [ebp-8],ecx
 005070A6    mov         dword ptr [ebp-4],edx
 005070A9    mov         ebx,eax
 005070AB    xor         eax,eax
 005070AD    push        ebp
 005070AE    push        507132
 005070B3    push        dword ptr fs:[eax]
 005070B6    mov         dword ptr fs:[eax],esp
 005070B9    cmp         dword ptr [ebx+1C0],0;TCustomLabel.FFocusControl:TWinControl
>005070C0    je          0050711C
 005070C2    mov         eax,ebx
 005070C4    mov         edx,dword ptr [eax]
 005070C6    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 005070C9    test        al,al
>005070CB    je          0050711C
 005070CD    cmp         byte ptr [ebx+1D6],0;TCustomLabel.FShowAccelChar:Boolean
>005070D4    je          0050711C
 005070D6    lea         edx,[ebp-8]
 005070D9    mov         eax,ebx
 005070DB    call        TControl.GetText
 005070E0    mov         edx,dword ptr [ebp-8]
 005070E3    mov         eax,dword ptr [ebp-4]
 005070E6    movzx       eax,word ptr [eax+4]
 005070EA    call        IsAccel
 005070EF    test        al,al
>005070F1    je          0050711C
 005070F3    mov         edi,dword ptr [ebx+1C0];TCustomLabel.FFocusControl:TWinControl
 005070F9    mov         eax,edi
 005070FB    mov         si,0FFB4
 005070FF    call        @CallDynaInst;TWinControl.sub_004EFD3C
 00507104    test        al,al
>00507106    je          0050711C
 00507108    mov         eax,edi
 0050710A    mov         edx,dword ptr [eax]
 0050710C    call        dword ptr [edx+104];TWinControl.SetFocus
 00507112    mov         eax,dword ptr [ebp-4]
 00507115    mov         dword ptr [eax+0C],1
 0050711C    xor         eax,eax
 0050711E    pop         edx
 0050711F    pop         ecx
 00507120    pop         ecx
 00507121    mov         dword ptr fs:[eax],edx
 00507124    push        507139
 00507129    lea         eax,[ebp-8]
 0050712C    call        @UStrClr
 00507131    ret
>00507132    jmp         @HandleFinally
>00507137    jmp         00507129
 00507139    pop         edi
 0050713A    pop         esi
 0050713B    pop         ebx
 0050713C    pop         ecx
 0050713D    pop         ecx
 0050713E    pop         ebp
 0050713F    ret
end;*}

//00507140
procedure sub_00507140(?:TCustomLabel);
begin
{*
 00507140    push        ebx
 00507141    mov         ebx,eax
 00507143    call        StyleServices
 00507148    mov         edx,dword ptr [eax]
 0050714A    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 0050714D    test        al,al
>0050714F    je          00507192
 00507151    mov         eax,ebx
 00507153    mov         edx,dword ptr [eax]
 00507155    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 00507158    test        al,al
>0050715A    je          00507180
 0050715C    call        TStyleManager.GetIsCustomStyleActive
 00507161    test        al,al
>00507163    je          00507180
 00507165    test        byte ptr [ebx+188],1;TCustomLabel.FStyleElements:TStyleElements
>0050716C    jne         00507180
 0050716E    mov         dword ptr [ebx+1CC],ebx;TCustomLabel.FLayout:TTextLayout
 00507174    mov         dword ptr [ebx+1C8],506870;TCustomLabel.FDrawTextProc:TFNDrawText sub_00506870
>0050717E    jmp         005071A2
 00507180    mov         dword ptr [ebx+1CC],ebx;TCustomLabel.FLayout:TTextLayout
 00507186    mov         dword ptr [ebx+1C8],5067D4;TCustomLabel.FDrawTextProc:TFNDrawText sub_005067D4
 00507190    pop         ebx
 00507191    ret
 00507192    mov         dword ptr [ebx+1CC],ebx;TCustomLabel.FLayout:TTextLayout
 00507198    mov         dword ptr [ebx+1C8],506870;TCustomLabel.FDrawTextProc:TFNDrawText sub_00506870
 005071A2    pop         ebx
 005071A3    ret
*}
end;

//005071A4
constructor TCustomEdit.Create(AOwner:TComponent);
begin
{*
 005071A4    push        ebx
 005071A5    push        esi
 005071A6    test        dl,dl
>005071A8    je          005071B2
 005071AA    add         esp,0FFFFFFF0
 005071AD    call        @ClassCreate
 005071B2    mov         ebx,edx
 005071B4    mov         esi,eax
 005071B6    xor         edx,edx
 005071B8    mov         eax,esi
 005071BA    call        TWinControl.Create
 005071BF    mov         eax,[007C4770];^gvar_007CA5E0
 005071C4    cmp         byte ptr [eax],0
>005071C7    je          005071D3
 005071C9    mov         eax,[00507280];0x802A8 gvar_00507280
 005071CE    mov         dword ptr [esi+60],eax;TCustomEdit.FControlStyle:TControlStyle
>005071D1    jmp         005071DB
 005071D3    mov         eax,[00507284];0x802B8 gvar_00507284
 005071D8    mov         dword ptr [esi+60],eax;TCustomEdit.FControlStyle:TControlStyle
 005071DB    mov         edx,79
 005071E0    mov         eax,esi
 005071E2    call        TControl.SetWidth
 005071E7    mov         edx,19
 005071EC    mov         eax,esi
 005071EE    call        TControl.SetHeight
 005071F3    mov         dl,1
 005071F5    mov         eax,esi
 005071F7    call        TWinControl.SetTabStop
 005071FC    xor         edx,edx
 005071FE    mov         eax,esi
 00507200    call        TGroupBox.SetParentColor
 00507205    mov         byte ptr [esi+298],1;TCustomEdit.FBorderStyle:TBorderStyle
 0050720C    mov         byte ptr [esi+290],0;TCustomEdit.FAlignment:TAlignment
 00507213    mov         byte ptr [esi+29D],1;TCustomEdit.FAutoSize:Boolean
 0050721A    mov         byte ptr [esi+29E],1;TCustomEdit.FAutoSelect:Boolean
 00507221    mov         byte ptr [esi+29F],1;TCustomEdit.FHideSelection:Boolean
 00507228    mov         eax,esi
 0050722A    call        00508128
 0050722F    mov         dword ptr [esi+2B0],0FFFFFFFF;TCustomEdit.FOldSelLength:Integer
 00507239    mov         dword ptr [esi+2B4],0FFFFFFFF;TCustomEdit.FOldSelStart:Integer
 00507243    mov         byte ptr [esi+2B8],0;TCustomEdit.FNumbersOnly:Boolean
 0050724A    lea         eax,[esi+2BC];TCustomEdit.FTextHint:string
 00507250    call        @UStrClr
 00507255    mov         byte ptr [esi+2A4],0;TCustomEdit.FInBufferedPrintClient:Boolean
 0050725C    mov         byte ptr [esi+1EC],1;TCustomEdit.FTipMode:TTipMode
 00507263    mov         eax,esi
 00507265    test        bl,bl
>00507267    je          00507278
 00507269    call        @AfterConstruction
 0050726E    pop         dword ptr fs:[0]
 00507275    add         esp,0C
 00507278    mov         eax,esi
 0050727A    pop         esi
 0050727B    pop         ebx
 0050727C    ret
*}
end;

Initialization
//0079D048
{*
 0079D048    sub         dword ptr ds:[7CA63C],1
>0079D04F    jae         0079D067
 0079D051    mov         ecx,dword ptr ds:[504C30];TEditStyleHook
 0079D057    mov         edx,dword ptr ds:[4F9C6C];TCustomEdit
 0079D05D    mov         eax,[005738E0];TCustomStyleEngine
 0079D062    call        TCustomStyleEngine.RegisterStyleHook
 0079D067    ret
*}
Finalization
end.