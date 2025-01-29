//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit47;

interface

uses
  SysUtils, Classes;

    procedure CreateParams(var Params:TCreateParams);//00510300
    procedure CreateWnd;//0051038C
    //function sub_00510448(?:TScrollBar):?;//00510448
    procedure SetKind(Value:TScrollBarKind);//00510468
    procedure SetParams(APosition:Integer; AMin:Integer; AMax:Integer);//005104A4
    procedure SetPosition(Value:Integer);//00510664
    procedure SetPageSize(Value:Integer);//00510678
    procedure SetMin(Value:Integer);//00510710
    procedure SetMax(Value:Integer);//00510728
    //function sub_0051073C:?;//0051073C
    procedure sub_00510750;//00510750
    //procedure sub_00510774(?:?);//00510774
    //procedure sub_00510794(?:TScrollBar; ?:?);//00510794
    procedure sub_005108AC;//005108AC
    procedure sub_00510908;//00510908
    //procedure sub_00510964(?:?);//00510964
    //procedure WMPaint(?:?);//0051098C
    //procedure WMEraseBkgnd(?:?);//005109A4
    constructor Create(AOwner:TComponent);//005109AC

implementation

//00510300
procedure TScrollBar.CreateParams(var Params:TCreateParams);
begin
{*
 00510300    push        ebx
 00510301    push        esi
 00510302    push        edi
 00510303    mov         edi,edx
 00510305    mov         ebx,eax
 00510307    mov         edx,edi
 00510309    mov         eax,ebx
 0051030B    call        TWinControl.CreateParams
 00510310    mov         ecx,510378;'S'
 00510315    mov         edx,edi
 00510317    mov         eax,ebx
 00510319    call        TWinControl.CreateSubClass
 0051031E    movzx       eax,byte ptr [ebx+290];TScrollBar.FKind:TScrollBarKind
 00510325    mov         eax,dword ptr [eax*4+7A147C]
 0051032C    or          dword ptr [edi+4],eax;TCreateParams.Style:DWORD
 0051032F    cmp         byte ptr [ebx+290],1;TScrollBar.FKind:TScrollBarKind
>00510336    jne         00510351
 00510338    mov         eax,ebx
 0051033A    mov         si,0FFC6
 0051033E    call        @CallDynaInst;TControl.sub_004E7698
 00510343    test        al,al
>00510345    jne         0051034D
 00510347    or          dword ptr [edi+4],4;TCreateParams.Style:DWORD
>0051034B    jmp         00510351
 0051034D    or          dword ptr [edi+4],2;TCreateParams.Style:DWORD
 00510351    mov         eax,ebx
 00510353    call        00510448
 00510358    test        al,al
>0051035A    je          00510368
 0051035C    mov         dword ptr [ebx+2A4],1;TScrollBar.FRTLFactor:Integer
>00510366    jmp         00510372
 00510368    mov         dword ptr [ebx+2A4],0FFFFFFFF;TScrollBar.FRTLFactor:Integer
 00510372    pop         edi
 00510373    pop         esi
 00510374    pop         ebx
 00510375    ret
*}
end;

//0051038C
procedure TScrollBar.CreateWnd;
begin
{*
 0051038C    push        ebx
 0051038D    add         esp,0FFFFFFD4
 00510390    mov         ebx,eax
 00510392    lea         edx,[esp+1C]
 00510396    mov         eax,ebx
 00510398    call        TControl.GetBoundsRect
 0051039D    mov         eax,ebx
 0051039F    call        TWinControl.CreateWnd
 005103A4    lea         edx,[esp+1C]
 005103A8    mov         eax,ebx
 005103AA    call        004E6768
 005103AF    push        0
 005103B1    mov         eax,dword ptr [ebx+29C];TScrollBar.FMax:Integer
 005103B7    push        eax
 005103B8    mov         eax,dword ptr [ebx+298];TScrollBar.FMin:Integer
 005103BE    push        eax
 005103BF    push        2
 005103C1    mov         eax,ebx
 005103C3    call        TWinControl.GetHandle
 005103C8    push        eax
 005103C9    call        user32.SetScrollRange
 005103CE    mov         dword ptr [esp],1C
 005103D5    mov         eax,dword ptr [ebx+2A0];TScrollBar.FPageSize:Integer
 005103DB    mov         dword ptr [esp+10],eax
 005103DF    mov         dword ptr [esp+4],2
 005103E7    push        0
 005103E9    lea         eax,[esp+4]
 005103ED    push        eax
 005103EE    push        2
 005103F0    mov         eax,ebx
 005103F2    call        TWinControl.GetHandle
 005103F7    push        eax
 005103F8    call        user32.SetScrollInfo
 005103FD    mov         eax,ebx
 005103FF    call        00510448
 00510404    test        al,al
>00510406    je          00510422
 00510408    push        0FF
 0051040A    mov         eax,dword ptr [ebx+294];TScrollBar.FPosition:Integer
 00510410    push        eax
 00510411    push        2
 00510413    mov         eax,ebx
 00510415    call        TWinControl.GetHandle
 0051041A    push        eax
 0051041B    call        user32.SetScrollPos
>00510420    jmp         00510440
 00510422    push        0FF
 00510424    mov         eax,dword ptr [ebx+29C];TScrollBar.FMax:Integer
 0051042A    sub         eax,dword ptr [ebx+294]
 00510430    push        eax
 00510431    push        2
 00510433    mov         eax,ebx
 00510435    call        TWinControl.GetHandle
 0051043A    push        eax
 0051043B    call        user32.SetScrollPos
 00510440    add         esp,2C
 00510443    pop         ebx
 00510444    ret
*}
end;

//00510448
{*function sub_00510448(?:TScrollBar):?;
begin
 00510448    push        ebx
 00510449    mov         ebx,eax
 0051044B    mov         eax,ebx
 0051044D    call        TControl.IsRightToLeft
 00510452    test        al,al
>00510454    je          00510463
 00510456    cmp         byte ptr [ebx+290],1;TScrollBar.FKind:TScrollBarKind
>0051045D    je          00510463
 0051045F    xor         eax,eax
 00510461    pop         ebx
 00510462    ret
 00510463    mov         al,1
 00510465    pop         ebx
 00510466    ret
end;*}

//00510468
procedure TScrollBar.SetKind(Value:TScrollBarKind);
begin
{*
 00510468    push        ebx
 00510469    push        esi
 0051046A    mov         ebx,eax
 0051046C    cmp         dl,byte ptr [ebx+290];TScrollBar.FKind:TScrollBarKind
>00510472    je          0051049F
 00510474    mov         byte ptr [ebx+290],dl;TScrollBar.FKind:TScrollBarKind
 0051047A    test        byte ptr [ebx+1C],1;TScrollBar.FComponentState:TComponentState
>0051047E    jne         00510498
 00510480    mov         eax,dword ptr [ebx+5C];TScrollBar.FHeight:Integer
 00510483    push        eax
 00510484    mov         eax,dword ptr [ebx+58];TScrollBar.FWidth:Integer
 00510487    push        eax
 00510488    mov         ecx,dword ptr [ebx+54];TScrollBar.FTop:Integer
 0051048B    mov         edx,dword ptr [ebx+50];TScrollBar.FLeft:Integer
 0051048E    mov         eax,ebx
 00510490    mov         esi,dword ptr [eax]
 00510492    call        dword ptr [esi+0B0];TWinControl.SetBounds
 00510498    mov         eax,ebx
 0051049A    call        TWinControl.RecreateWnd
 0051049F    pop         esi
 005104A0    pop         ebx
 005104A1    ret
*}
end;

//005104A4
procedure TScrollBar.SetParams(APosition:Integer; AMin:Integer; AMax:Integer);
begin
{*
 005104A4    push        ebp
 005104A5    mov         ebp,esp
 005104A7    add         esp,0FFFFFFF8
 005104AA    push        ebx
 005104AB    push        esi
 005104AC    push        edi
 005104AD    xor         ebx,ebx
 005104AF    mov         dword ptr [ebp-8],ebx
 005104B2    mov         dword ptr [ebp-4],ecx
 005104B5    mov         edi,edx
 005104B7    mov         ebx,eax
 005104B9    mov         esi,dword ptr [ebp+8]
 005104BC    xor         eax,eax
 005104BE    push        ebp
 005104BF    push        510652
 005104C4    push        dword ptr fs:[eax]
 005104C7    mov         dword ptr fs:[eax],esp
 005104CA    cmp         esi,dword ptr [ebp-4]
>005104CD    jl          005104D7
 005104CF    cmp         esi,dword ptr [ebx+2A0];TScrollBar.FPageSize:Integer
>005104D5    jge         005104F8
 005104D7    lea         edx,[ebp-8]
 005104DA    mov         eax,[007C4AC4];^SResString236:TResStringRec
 005104DF    call        LoadResString
 005104E4    mov         ecx,dword ptr [ebp-8]
 005104E7    mov         dl,1
 005104E9    mov         eax,[0046BE9C];EInvalidOperation
 005104EE    call        Exception.Create;EInvalidOperation.Create
 005104F3    call        @RaiseExcept
 005104F8    cmp         edi,dword ptr [ebp-4]
>005104FB    jge         00510500
 005104FD    mov         edi,dword ptr [ebp-4]
 00510500    cmp         esi,edi
>00510502    jge         00510506
 00510504    mov         edi,esi
 00510506    mov         eax,dword ptr [ebx+298];TScrollBar.FMin:Integer
 0051050C    cmp         eax,dword ptr [ebp-4]
>0051050F    jne         00510519
 00510511    cmp         esi,dword ptr [ebx+29C];TScrollBar.FMax:Integer
>00510517    je          00510555
 00510519    mov         eax,dword ptr [ebp-4]
 0051051C    mov         dword ptr [ebx+298],eax;TScrollBar.FMin:Integer
 00510522    mov         dword ptr [ebx+29C],esi;TScrollBar.FMax:Integer
 00510528    mov         eax,ebx
 0051052A    call        TWinControl.HandleAllocated
 0051052F    test        al,al
>00510531    je          00510555
 00510533    cmp         edi,dword ptr [ebx+294];TScrollBar.FPosition:Integer
 00510539    sete        al
 0051053C    neg         al
 0051053E    sbb         eax,eax
 00510540    push        eax
 00510541    push        esi
 00510542    mov         eax,dword ptr [ebp-4]
 00510545    push        eax
 00510546    push        2
 00510548    mov         eax,ebx
 0051054A    call        TWinControl.GetHandle
 0051054F    push        eax
 00510550    call        user32.SetScrollRange
 00510555    cmp         edi,dword ptr [ebx+294];TScrollBar.FPosition:Integer
>0051055B    je          0051063C
 00510561    mov         dword ptr [ebx+294],edi;TScrollBar.FPosition:Integer
 00510567    mov         eax,ebx
 00510569    call        TWinControl.HandleAllocated
 0051056E    test        al,al
>00510570    je          00510625
 00510576    call        StyleServices
 0051057B    mov         edx,dword ptr [eax]
 0051057D    call        dword ptr [edx+124];TCustomStyleServices.GetFlags
 00510583    test        al,1
>00510585    je          005105E2
 00510587    mov         eax,ebx
 00510589    call        00510448
 0051058E    test        al,al
>00510590    je          005105AC
 00510592    push        0
 00510594    mov         eax,dword ptr [ebx+294];TScrollBar.FPosition:Integer
 0051059A    push        eax
 0051059B    push        2
 0051059D    mov         eax,ebx
 0051059F    call        TWinControl.GetHandle
 005105A4    push        eax
 005105A5    call        user32.SetScrollPos
>005105AA    jmp         005105CA
 005105AC    push        0
 005105AE    mov         eax,dword ptr [ebx+29C];TScrollBar.FMax:Integer
 005105B4    sub         eax,dword ptr [ebx+294]
 005105BA    push        eax
 005105BB    push        2
 005105BD    mov         eax,ebx
 005105BF    call        TWinControl.GetHandle
 005105C4    push        eax
 005105C5    call        user32.SetScrollPos
 005105CA    push        101
 005105CF    push        0
 005105D1    push        0
 005105D3    mov         eax,ebx
 005105D5    call        TWinControl.GetHandle
 005105DA    push        eax
 005105DB    call        user32.RedrawWindow
>005105E0    jmp         00510625
 005105E2    mov         eax,ebx
 005105E4    call        00510448
 005105E9    test        al,al
>005105EB    je          00510607
 005105ED    push        0FF
 005105EF    mov         eax,dword ptr [ebx+294];TScrollBar.FPosition:Integer
 005105F5    push        eax
 005105F6    push        2
 005105F8    mov         eax,ebx
 005105FA    call        TWinControl.GetHandle
 005105FF    push        eax
 00510600    call        user32.SetScrollPos
>00510605    jmp         00510625
 00510607    push        0FF
 00510609    mov         eax,dword ptr [ebx+29C];TScrollBar.FMax:Integer
 0051060F    sub         eax,dword ptr [ebx+294]
 00510615    push        eax
 00510616    push        2
 00510618    mov         eax,ebx
 0051061A    call        TWinControl.GetHandle
 0051061F    push        eax
 00510620    call        user32.SetScrollPos
 00510625    mov         dl,1
 00510627    mov         eax,ebx
 00510629    mov         ecx,dword ptr [eax]
 0051062B    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00510631    mov         eax,ebx
 00510633    mov         si,0FFAD
 00510637    call        @CallDynaInst;TScrollBar.sub_00510750
 0051063C    xor         eax,eax
 0051063E    pop         edx
 0051063F    pop         ecx
 00510640    pop         ecx
 00510641    mov         dword ptr fs:[eax],edx
 00510644    push        510659
 00510649    lea         eax,[ebp-8]
 0051064C    call        @UStrClr
 00510651    ret
>00510652    jmp         @HandleFinally
>00510657    jmp         00510649
 00510659    pop         edi
 0051065A    pop         esi
 0051065B    pop         ebx
 0051065C    pop         ecx
 0051065D    pop         ecx
 0051065E    pop         ebp
 0051065F    ret         4
*}
end;

//00510664
procedure TScrollBar.SetPosition(Value:Integer);
begin
{*
 00510664    mov         ecx,dword ptr [eax+29C];TScrollBar.FMax:Integer
 0051066A    push        ecx
 0051066B    mov         ecx,dword ptr [eax+298];TScrollBar.FMin:Integer
 00510671    call        TScrollBar.SetParams
 00510676    ret
*}
end;

//00510678
procedure TScrollBar.SetPageSize(Value:Integer);
begin
{*
 00510678    push        ebx
 00510679    add         esp,0FFFFFFE4
 0051067C    mov         ebx,eax
 0051067E    cmp         edx,dword ptr [ebx+2A0];TScrollBar.FPageSize:Integer
>00510684    je          0051070B
 0051068A    cmp         edx,dword ptr [ebx+29C];TScrollBar.FMax:Integer
>00510690    jg          0051070B
 00510692    mov         dword ptr [ebx+2A0],edx;TScrollBar.FPageSize:Integer
 00510698    mov         dword ptr [esp],1C
 0051069F    mov         dword ptr [esp+10],edx
 005106A3    mov         dword ptr [esp+4],2
 005106AB    mov         eax,ebx
 005106AD    call        TWinControl.HandleAllocated
 005106B2    test        al,al
>005106B4    je          0051070B
 005106B6    call        StyleServices
 005106BB    mov         edx,dword ptr [eax]
 005106BD    call        dword ptr [edx+124];TCustomStyleServices.GetFlags
 005106C3    test        al,1
>005106C5    je          005106F5
 005106C7    push        0
 005106C9    lea         eax,[esp+4]
 005106CD    push        eax
 005106CE    push        2
 005106D0    mov         eax,ebx
 005106D2    call        TWinControl.GetHandle
 005106D7    push        eax
 005106D8    call        user32.SetScrollInfo
 005106DD    push        101
 005106E2    push        0
 005106E4    push        0
 005106E6    mov         eax,ebx
 005106E8    call        TWinControl.GetHandle
 005106ED    push        eax
 005106EE    call        user32.RedrawWindow
>005106F3    jmp         0051070B
 005106F5    push        0FF
 005106F7    lea         eax,[esp+4]
 005106FB    push        eax
 005106FC    push        2
 005106FE    mov         eax,ebx
 00510700    call        TWinControl.GetHandle
 00510705    push        eax
 00510706    call        user32.SetScrollInfo
 0051070B    add         esp,1C
 0051070E    pop         ebx
 0051070F    ret
*}
end;

//00510710
procedure TScrollBar.SetMin(Value:Integer);
begin
{*
 00510710    mov         ecx,dword ptr [eax+29C];TScrollBar.FMax:Integer
 00510716    push        ecx
 00510717    mov         ecx,edx
 00510719    mov         edx,dword ptr [eax+294];TScrollBar.FPosition:Integer
 0051071F    call        TScrollBar.SetParams
 00510724    ret
*}
end;

//00510728
procedure TScrollBar.SetMax(Value:Integer);
begin
{*
 00510728    push        edx
 00510729    mov         ecx,dword ptr [eax+298];TScrollBar.FMin:Integer
 0051072F    mov         edx,dword ptr [eax+294];TScrollBar.FPosition:Integer
 00510735    call        TScrollBar.SetParams
 0051073A    ret
*}
end;

//0051073C
{*function sub_0051073C:?;
begin
 0051073C    xor         eax,eax
 0051073E    cmp         edx,3
>00510741    jne         00510746
 00510743    mov         al,1
 00510745    ret
 00510746    cmp         edx,4
>00510749    jne         0051074D
 0051074B    mov         al,1
 0051074D    ret
end;*}

//00510750
procedure TScrollBar.sub_00510750;
begin
{*
 00510750    push        ebx
 00510751    mov         ebx,eax
 00510753    mov         eax,ebx
 00510755    call        TControl.Changed
 0051075A    cmp         word ptr [ebx+2B2],0;TScrollBar.?f2B2:word
>00510762    je          00510772
 00510764    mov         edx,ebx
 00510766    mov         eax,dword ptr [ebx+2B4];TScrollBar.?f2B4:dword
 0051076C    call        dword ptr [ebx+2B0];TScrollBar.FOnChange
 00510772    pop         ebx
 00510773    ret
*}
end;

//00510774
{*procedure TScrollBar.sub_00510774(?:?);
begin
 00510774    push        ebx
 00510775    cmp         word ptr [eax+2BA],0;TScrollBar.?f2BA:word
>0051077D    je          00510792
 0051077F    push        ecx
 00510780    mov         ecx,edx
 00510782    mov         ebx,eax
 00510784    mov         edx,eax
 00510786    mov         eax,dword ptr [ebx+2BC];TScrollBar.?f2BC:dword
 0051078C    call        dword ptr [ebx+2B8];TScrollBar.FOnScroll
 00510792    pop         ebx
 00510793    ret
end;*}

//00510794
{*procedure sub_00510794(?:TScrollBar; ?:?);
begin
 00510794    push        ebx
 00510795    push        esi
 00510796    push        edi
 00510797    add         esp,0FFFFFFE0
 0051079A    mov         edi,edx
 0051079C    mov         ebx,eax
 0051079E    mov         esi,dword ptr [ebx+294]
 005107A4    movzx       eax,byte ptr [edi+4]
 005107A8    cmp         eax,7
>005107AB    ja          0051086C
 005107B1    jmp         dword ptr [eax*4+5107B8]
 005107B1    dd          005107D8
 005107B1    dd          005107EC
 005107B1    dd          005107FD
 005107B1    dd          0051080E
 005107B1    dd          0051081F
 005107B1    dd          0051081F
 005107B1    dd          0051085E
 005107B1    dd          00510866
 005107D8    movzx       eax,word ptr [ebx+2A8]
 005107DF    imul        dword ptr [ebx+2A4]
 005107E5    sub         esi,eax
>005107E7    jmp         0051086C
 005107EC    movzx       eax,word ptr [ebx+2A8]
 005107F3    imul        dword ptr [ebx+2A4]
 005107F9    add         esi,eax
>005107FB    jmp         0051086C
 005107FD    movzx       eax,word ptr [ebx+2AA]
 00510804    imul        dword ptr [ebx+2A4]
 0051080A    sub         esi,eax
>0051080C    jmp         0051086C
 0051080E    movzx       eax,word ptr [ebx+2AA]
 00510815    imul        dword ptr [ebx+2A4]
 0051081B    add         esi,eax
>0051081D    jmp         0051086C
 0051081F    mov         dword ptr [esp+4],1C
 00510827    mov         dword ptr [esp+8],17
 0051082F    lea         eax,[esp+4]
 00510833    push        eax
 00510834    push        2
 00510836    mov         eax,ebx
 00510838    call        TWinControl.GetHandle
 0051083D    push        eax
 0051083E    call        user32.GetScrollInfo
 00510843    mov         esi,dword ptr [esp+1C]
 00510847    mov         eax,ebx
 00510849    call        00510448
 0051084E    test        al,al
>00510850    jne         0051086C
 00510852    mov         eax,dword ptr [ebx+29C]
 00510858    sub         eax,esi
 0051085A    mov         esi,eax
>0051085C    jmp         0051086C
 0051085E    mov         esi,dword ptr [ebx+298]
>00510864    jmp         0051086C
 00510866    mov         esi,dword ptr [ebx+29C]
 0051086C    mov         eax,dword ptr [ebx+298]
 00510872    cmp         esi,eax
>00510874    jge         00510878
 00510876    mov         esi,eax
 00510878    mov         eax,dword ptr [ebx+29C]
 0051087E    cmp         esi,eax
>00510880    jle         00510884
 00510882    mov         esi,eax
 00510884    mov         dword ptr [esp],esi
 00510887    movzx       edx,byte ptr [edi+4]
 0051088B    mov         ecx,esp
 0051088D    mov         eax,ebx
 0051088F    mov         si,0FFAC
 00510893    call        @CallDynaInst
 00510898    mov         edx,dword ptr [esp]
 0051089B    mov         eax,ebx
 0051089D    call        TScrollBar.SetPosition
 005108A2    add         esp,20
 005108A5    pop         edi
 005108A6    pop         esi
 005108A7    pop         ebx
 005108A8    ret
end;*}

//005108AC
procedure TScrollBar.sub_005108AC;
begin
{*
 005108AC    push        ebx
 005108AD    mov         ebx,eax
 005108AF    mov         eax,ebx
 005108B1    call        00510794
 005108B6    mov         eax,ebx
 005108B8    mov         edx,dword ptr [eax]
 005108BA    call        dword ptr [edx+24];TComponent.GetObservers
 005108BD    mov         edx,3
 005108C2    mov         ecx,dword ptr [eax]
 005108C4    call        dword ptr [ecx+14];TObservers.IsObserving
 005108C7    test        al,al
>005108C9    je          005108D7
 005108CB    mov         eax,ebx
 005108CD    mov         edx,dword ptr [eax]
 005108CF    call        dword ptr [edx+24];TComponent.GetObservers
 005108D2    call        TLinkObservers.PositionLinkPosChanged
 005108D7    mov         eax,ebx
 005108D9    mov         edx,dword ptr [eax]
 005108DB    call        dword ptr [edx+24];TComponent.GetObservers
 005108DE    mov         edx,4
 005108E3    mov         ecx,dword ptr [eax]
 005108E5    call        dword ptr [ecx+14];TObservers.IsObserving
 005108E8    test        al,al
>005108EA    je          00510904
 005108EC    mov         eax,ebx
 005108EE    mov         edx,dword ptr [eax]
 005108F0    call        dword ptr [edx+24];TComponent.GetObservers
 005108F3    call        TLinkObservers.ControlValueModified
 005108F8    mov         eax,ebx
 005108FA    mov         edx,dword ptr [eax]
 005108FC    call        dword ptr [edx+24];TComponent.GetObservers
 005108FF    call        TLinkObservers.ControlValueUpdate
 00510904    pop         ebx
 00510905    ret
*}
end;

//00510908
procedure TScrollBar.sub_00510908;
begin
{*
 00510908    push        ebx
 00510909    mov         ebx,eax
 0051090B    mov         eax,ebx
 0051090D    call        00510794
 00510912    mov         eax,ebx
 00510914    mov         edx,dword ptr [eax]
 00510916    call        dword ptr [edx+24];TComponent.GetObservers
 00510919    mov         edx,3
 0051091E    mov         ecx,dword ptr [eax]
 00510920    call        dword ptr [ecx+14];TObservers.IsObserving
 00510923    test        al,al
>00510925    je          00510933
 00510927    mov         eax,ebx
 00510929    mov         edx,dword ptr [eax]
 0051092B    call        dword ptr [edx+24];TComponent.GetObservers
 0051092E    call        TLinkObservers.PositionLinkPosChanged
 00510933    mov         eax,ebx
 00510935    mov         edx,dword ptr [eax]
 00510937    call        dword ptr [edx+24];TComponent.GetObservers
 0051093A    mov         edx,4
 0051093F    mov         ecx,dword ptr [eax]
 00510941    call        dword ptr [ecx+14];TObservers.IsObserving
 00510944    test        al,al
>00510946    je          00510960
 00510948    mov         eax,ebx
 0051094A    mov         edx,dword ptr [eax]
 0051094C    call        dword ptr [edx+24];TComponent.GetObservers
 0051094F    call        TLinkObservers.ControlValueModified
 00510954    mov         eax,ebx
 00510956    mov         edx,dword ptr [eax]
 00510958    call        dword ptr [edx+24];TComponent.GetObservers
 0051095B    call        TLinkObservers.ControlValueUpdate
 00510960    pop         ebx
 00510961    ret
*}
end;

//00510964
{*procedure TScrollBar.sub_00510964(?:?);
begin
 00510964    push        ebx
 00510965    push        esi
 00510966    mov         esi,edx
 00510968    mov         ebx,eax
 0051096A    mov         eax,dword ptr [esi+8]
 0051096D    push        eax
 0051096E    mov         eax,dword ptr [esi+4]
 00510971    push        eax
 00510972    mov         eax,dword ptr [esi]
 00510974    push        eax
 00510975    mov         eax,ebx
 00510977    call        TWinControl.GetHandle
 0051097C    push        eax
 0051097D    mov         eax,dword ptr [ebx+274];TScrollBar.FDefWndProc:Pointer
 00510983    push        eax
 00510984    call        user32.CallWindowProcW
 00510989    pop         esi
 0051098A    pop         ebx
 0051098B    ret
end;*}

//0051098C
{*procedure TScrollBar.WMPaint(?:?);
begin
 0051098C    cmp         byte ptr [eax+280],0;TScrollBar.FDoubleBuffered:Boolean
>00510993    je          0051099B
 00510995    mov         ecx,dword ptr [eax]
 00510997    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 0051099A    ret
 0051099B    call        TWinControl.WMPaint
 005109A0    ret
end;*}

//005109A4
{*procedure TScrollBar.WMEraseBkgnd(?:?);
begin
 005109A4    mov         ecx,dword ptr [eax]
 005109A6    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 005109A9    ret
end;*}

//005109AC
constructor TCustomStaticText.Create(AOwner:TComponent);
begin
{*
 005109AC    push        ebx
 005109AD    push        esi
 005109AE    test        dl,dl
>005109B0    je          005109BA
 005109B2    add         esp,0FFFFFFF0
 005109B5    call        @ClassCreate
 005109BA    mov         ebx,edx
 005109BC    mov         esi,eax
 005109BE    xor         edx,edx
 005109C0    mov         eax,esi
 005109C2    call        TWinControl.Create
 005109C7    mov         eax,[00510A18];0x2008AA gvar_00510A18
 005109CC    mov         dword ptr [esi+60],eax;TCustomStaticText.FControlStyle:TControlStyle
 005109CF    mov         edx,41
 005109D4    mov         eax,esi
 005109D6    call        TControl.SetWidth
 005109DB    mov         edx,11
 005109E0    mov         eax,esi
 005109E2    call        TControl.SetHeight
 005109E7    mov         byte ptr [esi+291],1;TCustomStaticText.FAutoSize:Boolean
 005109EE    mov         byte ptr [esi+298],1;TCustomStaticText.FShowAccelChar:Boolean
 005109F5    mov         eax,esi
 005109F7    call        00510BB0
 005109FC    mov         eax,esi
 005109FE    test        bl,bl
>00510A00    je          00510A11
 00510A02    call        @AfterConstruction
 00510A07    pop         dword ptr fs:[0]
 00510A0E    add         esp,0C
 00510A11    mov         eax,esi
 00510A13    pop         esi
 00510A14    pop         ebx
 00510A15    ret
*}
end;

Initialization
//0079D148
{*
 0079D148    sub         dword ptr ds:[7CA674],1
>0079D14F    jae         0079D167
 0079D151    mov         ecx,dword ptr ds:[5058E8];TStaticTextStyleHook
 0079D157    mov         edx,dword ptr ds:[503A10];TCustomStaticText
 0079D15D    mov         eax,[005738E0];TCustomStyleEngine
 0079D162    call        TCustomStyleEngine.RegisterStyleHook
 0079D167    ret
*}
Finalization
end.