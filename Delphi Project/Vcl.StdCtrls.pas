//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Vcl.StdCtrls;

interface

uses
  SysUtils, Classes, Vcl.StdCtrls;

type
  TCustomCheckBox.ObserverAdded$290$ActRec = class(TInterfacedObject)
  public
    Self:TCustomCheckBox;//fC
  end;
    procedure sub_0050CF2C;//0050CF2C
    procedure GetControlsAlignment;//0050CF3C
    //procedure sub_004EEC30(?:?);//0050CF68
    function CanObserve(const ID:Integer):Boolean;//0050D110
    procedure ObserverAdded$3338$ActRec.$0$Body(const AObserver:Classes.IObserver; const Value:Boolean);//0050D2C8
    procedure ObserverAdded(const ID:Integer; const Observer:Classes.IObserver);//0050D2D4
    procedure ObserverToggle(const AObserver:Classes.IObserver; const Value:Boolean);//0050D354
    procedure sub_0050D3D8;//0050D3D8
    procedure Click;//0050D5A0
    function GetChecked:Boolean;//0050D5B4
    procedure SetOEMConvert(Value:Boolean);//0050D5C0
    procedure SetChecked(Value:Boolean);//0050D5D4
    procedure SetState(Value:TCheckBoxState);//0050D5E8
    procedure CreateParams(var Params:TCreateParams);//0050D638
    procedure CreateWnd;//0050D698
    //procedure WMSize(?:?);//0050D6C0
    procedure CMCtl3DChanged;//0050D6D8
    //procedure CMDialogChar(?:?);//0050D6E0
    //procedure CMExit(?:?);//0050D77C
    //procedure sub_0050D854(?:?);//0050D854
    constructor Create(AOwner:TComponent);//0050D864

implementation

//0050CF2C
procedure sub_0050CF2C;
begin
{*
 0050CF2C    push        esi
 0050CF2D    mov         esi,eax
 0050CF2F    mov         eax,esi
 0050CF31    mov         edx,dword ptr [eax]
 0050CF33    call        dword ptr [edx+0A8];TWinControl.Invalidate
 0050CF39    pop         esi
 0050CF3A    ret
*}
end;

//0050CF3C
procedure TCustomCheckBox.GetControlsAlignment;
begin
{*
 0050CF3C    push        ebx
 0050CF3D    push        esi
 0050CF3E    mov         ebx,eax
 0050CF40    mov         eax,ebx
 0050CF42    mov         si,0FFC6
 0050CF46    call        @CallDynaInst;TControl.sub_004E7698
 0050CF4B    test        al,al
>0050CF4D    jne         0050CF54
 0050CF4F    mov         al,1
 0050CF51    pop         esi
 0050CF52    pop         ebx
 0050CF53    ret
 0050CF54    cmp         byte ptr [ebx+298],1;TCustomCheckBox.FAlignment:TLeftRight
>0050CF5B    jne         0050CF61
 0050CF5D    xor         eax,eax
>0050CF5F    jmp         0050CF63
 0050CF61    mov         al,1
 0050CF63    pop         esi
 0050CF64    pop         ebx
 0050CF65    ret
*}
end;

//0050CF68
{*procedure TCustomCheckBox.sub_004EEC30(?:?);
begin
 0050CF68    push        ebp
 0050CF69    mov         ebp,esp
 0050CF6B    add         esp,0FFFFFFE0
 0050CF6E    push        ebx
 0050CF6F    push        esi
 0050CF70    push        edi
 0050CF71    xor         ecx,ecx
 0050CF73    mov         dword ptr [ebp-20],ecx
 0050CF76    mov         dword ptr [ebp-1C],ecx
 0050CF79    mov         dword ptr [ebp-18],ecx
 0050CF7C    mov         dword ptr [ebp-14],ecx
 0050CF7F    mov         ebx,edx
 0050CF81    mov         dword ptr [ebp-4],eax
 0050CF84    xor         eax,eax
 0050CF86    push        ebp
 0050CF87    push        50D100
 0050CF8C    push        dword ptr fs:[eax]
 0050CF8F    mov         dword ptr fs:[eax],esp
 0050CF92    mov         eax,dword ptr [ebp-4]
 0050CF95    mov         edx,dword ptr [eax]
 0050CF97    call        dword ptr [edx+24];TComponent.GetObservers
 0050CF9A    mov         edx,1
 0050CF9F    mov         ecx,dword ptr [eax]
 0050CFA1    call        dword ptr [ecx+14];TObservers.IsObserving
 0050CFA4    test        al,al
>0050CFA6    je          0050D01B
 0050CFA8    mov         eax,dword ptr [ebp-4]
 0050CFAB    mov         edx,dword ptr [eax]
 0050CFAD    call        dword ptr [edx+24];TComponent.GetObservers
 0050CFB0    mov         dword ptr [ebp-8],eax
 0050CFB3    lea         edx,[ebp-14]
 0050CFB6    mov         eax,dword ptr [ebp-8]
 0050CFB9    call        TLinkObservers.GetEditLink
 0050CFBE    mov         eax,dword ptr [ebp-14]
 0050CFC1    mov         edx,dword ptr [eax]
 0050CFC3    call        dword ptr [edx+3C]
 0050CFC6    test        al,al
>0050CFC8    jne         0050D0DF
 0050CFCE    movzx       eax,word ptr [ebx]
 0050CFD1    sub         ax,8
>0050CFD5    je          0050CFDD
 0050CFD7    sub         ax,18
>0050CFDB    jne         0050D01B
 0050CFDD    mov         eax,dword ptr [ebp-4]
 0050CFE0    mov         edx,dword ptr [eax]
 0050CFE2    call        dword ptr [edx+24];TComponent.GetObservers
 0050CFE5    mov         dword ptr [ebp-0C],eax
 0050CFE8    lea         edx,[ebp-18]
 0050CFEB    mov         eax,dword ptr [ebp-0C]
 0050CFEE    call        TLinkObservers.GetEditLink
 0050CFF3    mov         eax,dword ptr [ebp-18]
 0050CFF6    mov         edx,dword ptr [eax]
 0050CFF8    call        dword ptr [edx+24]
 0050CFFB    test        al,al
>0050CFFD    je          0050D01B
 0050CFFF    mov         eax,dword ptr [ebp-4]
 0050D002    mov         edx,dword ptr [eax]
 0050D004    call        dword ptr [edx+24];TComponent.GetObservers
 0050D007    mov         esi,eax
 0050D009    lea         edx,[ebp-1C]
 0050D00C    mov         eax,esi
 0050D00E    call        TLinkObservers.GetEditLink
 0050D013    mov         eax,dword ptr [ebp-1C]
 0050D016    mov         edx,dword ptr [eax]
 0050D018    call        dword ptr [edx+2C]
 0050D01B    mov         edx,ebx
 0050D01D    mov         eax,dword ptr [ebp-4]
 0050D020    call        TWinControl.sub_004EEC30
 0050D025    movzx       eax,word ptr [ebx]
 0050D028    sub         ax,8
>0050D02C    je          0050D038
 0050D02E    sub         ax,18
>0050D032    jne         0050D0DF
 0050D038    xor         edx,edx
 0050D03A    push        ebp
 0050D03B    push        50D0C5
 0050D040    push        dword ptr fs:[edx]
 0050D043    mov         dword ptr fs:[edx],esp
 0050D046    mov         eax,dword ptr [ebp-4]
 0050D049    mov         edx,dword ptr [eax]
 0050D04B    call        dword ptr [edx+24];TComponent.GetObservers
 0050D04E    mov         edx,1
 0050D053    mov         ecx,dword ptr [eax]
 0050D055    call        dword ptr [ecx+14];TObservers.IsObserving
 0050D058    test        al,al
>0050D05A    je          0050D08B
 0050D05C    mov         eax,dword ptr [ebp-4]
 0050D05F    mov         edx,dword ptr [eax]
 0050D061    call        dword ptr [edx+24];TComponent.GetObservers
 0050D064    mov         dword ptr [ebp-10],eax
 0050D067    lea         edx,[ebp-20]
 0050D06A    mov         eax,dword ptr [ebp-10]
 0050D06D    call        TLinkObservers.GetEditLink
 0050D072    mov         eax,dword ptr [ebp-20]
 0050D075    mov         edx,dword ptr [eax]
 0050D077    call        dword ptr [edx+44]
 0050D07A    test        al,al
>0050D07C    je          0050D08B
 0050D07E    mov         eax,dword ptr [ebp-4]
 0050D081    mov         edx,dword ptr [eax]
 0050D083    call        dword ptr [edx+24];TComponent.GetObservers
 0050D086    call        TLinkObservers.EditLinkTrackUpdate
 0050D08B    mov         eax,dword ptr [ebp-4]
 0050D08E    mov         edx,dword ptr [eax]
 0050D090    call        dword ptr [edx+24];TComponent.GetObservers
 0050D093    mov         edx,4
 0050D098    mov         ecx,dword ptr [eax]
 0050D09A    call        dword ptr [ecx+14];TObservers.IsObserving
 0050D09D    test        al,al
>0050D09F    je          0050D0BB
 0050D0A1    mov         eax,dword ptr [ebp-4]
 0050D0A4    mov         edx,dword ptr [eax]
 0050D0A6    call        dword ptr [edx+24];TComponent.GetObservers
 0050D0A9    call        TLinkObservers.ControlValueModified
 0050D0AE    mov         eax,dword ptr [ebp-4]
 0050D0B1    mov         edx,dword ptr [eax]
 0050D0B3    call        dword ptr [edx+24];TComponent.GetObservers
 0050D0B6    call        TLinkObservers.ControlValueTrackUpdate
 0050D0BB    xor         eax,eax
 0050D0BD    pop         edx
 0050D0BE    pop         ecx
 0050D0BF    pop         ecx
 0050D0C0    mov         dword ptr fs:[eax],edx
>0050D0C3    jmp         0050D0DF
>0050D0C5    jmp         @HandleAnyException
 0050D0CA    mov         eax,dword ptr [ebp-4]
 0050D0CD    mov         edx,dword ptr [eax]
 0050D0CF    call        dword ptr [edx+104];TWinControl.SetFocus
 0050D0D5    call        @RaiseAgain
 0050D0DA    call        @DoneExcept
 0050D0DF    xor         eax,eax
 0050D0E1    pop         edx
 0050D0E2    pop         ecx
 0050D0E3    pop         ecx
 0050D0E4    mov         dword ptr fs:[eax],edx
 0050D0E7    push        50D107
 0050D0EC    lea         eax,[ebp-20]
 0050D0EF    mov         edx,dword ptr ds:[4782BC];IEditLinkObserver
 0050D0F5    mov         ecx,4
 0050D0FA    call        @FinalizeArray
 0050D0FF    ret
>0050D100    jmp         @HandleFinally
>0050D105    jmp         0050D0EC
 0050D107    pop         edi
 0050D108    pop         esi
 0050D109    pop         ebx
 0050D10A    mov         esp,ebp
 0050D10C    pop         ebp
 0050D10D    ret
end;*}

//0050D110
function TCustomEdit.CanObserve(const ID:Integer):Boolean;
begin
{*
 0050D110    xor         eax,eax
 0050D112    cmp         edx,1
>0050D115    jne         0050D11A
 0050D117    mov         al,1
 0050D119    ret
 0050D11A    cmp         edx,4
>0050D11D    jne         0050D121
 0050D11F    mov         al,1
 0050D121    ret
*}
end;

//0050D2C8
procedure TCustomEdit.ObserverAdded$3338$ActRec.$0$Body(const AObserver:Classes.IObserver; const Value:Boolean);
begin
{*
 0050D2C8    mov         eax,dword ptr [eax+0C]
 0050D2CB    call        TCustomEdit.ObserverToggle
 0050D2D0    ret
*}
end;

//0050D2D4
procedure TCustomEdit.ObserverAdded(const ID:Integer; const Observer:Classes.IObserver);
begin
{*
 0050D2D4    push        ebp
 0050D2D5    mov         ebp,esp
 0050D2D7    add         esp,0FFFFFFF8
 0050D2DA    push        ebx
 0050D2DB    push        esi
 0050D2DC    push        edi
 0050D2DD    xor         ebx,ebx
 0050D2DF    mov         dword ptr [ebp-4],ebx
 0050D2E2    mov         dword ptr [ebp-8],ecx
 0050D2E5    mov         edi,edx
 0050D2E7    mov         esi,eax
 0050D2E9    xor         eax,eax
 0050D2EB    push        ebp
 0050D2EC    push        50D343
 0050D2F1    push        dword ptr fs:[eax]
 0050D2F4    mov         dword ptr fs:[eax],esp
 0050D2F7    mov         dl,1
 0050D2F9    mov         eax,[0050D1D8];TCustomCheckBox.ObserverAdded$290$ActRec
 0050D2FE    call        TObject.Create
 0050D303    mov         ebx,eax
 0050D305    lea         eax,[ebp-4]
 0050D308    mov         edx,ebx
 0050D30A    test        edx,edx
>0050D30C    je          0050D311
 0050D30E    sub         edx,0FFFFFFF8
 0050D311    call        @IntfCopy
 0050D316    mov         dword ptr [ebx+0C],esi
 0050D319    dec         edi
>0050D31A    jne         0050D32D
 0050D31C    mov         edx,ebx
 0050D31E    test        edx,edx
>0050D320    je          0050D325
 0050D322    sub         edx,0FFFFFFF0
 0050D325    mov         eax,dword ptr [ebp-8]
 0050D328    mov         ecx,dword ptr [eax]
 0050D32A    call        dword ptr [ecx+1C]
 0050D32D    xor         eax,eax
 0050D32F    pop         edx
 0050D330    pop         ecx
 0050D331    pop         ecx
 0050D332    mov         dword ptr fs:[eax],edx
 0050D335    push        50D34A
 0050D33A    lea         eax,[ebp-4]
 0050D33D    call        @IntfClear
 0050D342    ret
>0050D343    jmp         @HandleFinally
>0050D348    jmp         0050D33A
 0050D34A    pop         edi
 0050D34B    pop         esi
 0050D34C    pop         ebx
 0050D34D    pop         ecx
 0050D34E    pop         ecx
 0050D34F    pop         ebp
 0050D350    ret
*}
end;

//0050D354
procedure TCustomEdit.ObserverToggle(const AObserver:Classes.IObserver; const Value:Boolean);
begin
{*
 0050D354    push        ebp
 0050D355    mov         ebp,esp
 0050D357    push        0
 0050D359    push        ebx
 0050D35A    push        esi
 0050D35B    mov         esi,edx
 0050D35D    mov         ebx,eax
 0050D35F    xor         eax,eax
 0050D361    push        ebp
 0050D362    push        50D3BA
 0050D367    push        dword ptr fs:[eax]
 0050D36A    mov         dword ptr fs:[eax],esp
 0050D36D    test        cl,cl
>0050D36F    je          0050D39D
 0050D371    lea         eax,[ebp-4]
 0050D374    call        @IntfClear
 0050D379    mov         ecx,eax
 0050D37B    mov         edx,50D3C8
 0050D380    mov         eax,esi
 0050D382    call        Supports
 0050D387    test        al,al
>0050D389    je          0050D3A4
 0050D38B    mov         eax,dword ptr [ebp-4]
 0050D38E    mov         edx,dword ptr [eax]
 0050D390    call        dword ptr [edx+38]
 0050D393    xor         al,1
 0050D395    mov         byte ptr [ebx+299],al
>0050D39B    jmp         0050D3A4
 0050D39D    mov         byte ptr [ebx+299],0
 0050D3A4    xor         eax,eax
 0050D3A6    pop         edx
 0050D3A7    pop         ecx
 0050D3A8    pop         ecx
 0050D3A9    mov         dword ptr fs:[eax],edx
 0050D3AC    push        50D3C1
 0050D3B1    lea         eax,[ebp-4]
 0050D3B4    call        @IntfClear
 0050D3B9    ret
>0050D3BA    jmp         @HandleFinally
>0050D3BF    jmp         0050D3B1
 0050D3C1    pop         esi
 0050D3C2    pop         ebx
 0050D3C3    pop         ecx
 0050D3C4    pop         ebp
 0050D3C5    ret
*}
end;

//0050D3D8
procedure sub_0050D3D8;
begin
{*
 0050D3D8    push        ebp
 0050D3D9    mov         ebp,esp
 0050D3DB    add         esp,0FFFFFFE0
 0050D3DE    push        ebx
 0050D3DF    push        esi
 0050D3E0    push        edi
 0050D3E1    xor         edx,edx
 0050D3E3    mov         dword ptr [ebp-20],edx
 0050D3E6    mov         dword ptr [ebp-1C],edx
 0050D3E9    mov         dword ptr [ebp-18],edx
 0050D3EC    mov         dword ptr [ebp-14],edx
 0050D3EF    mov         dword ptr [ebp-4],eax
 0050D3F2    xor         eax,eax
 0050D3F4    push        ebp
 0050D3F5    push        50D592
 0050D3FA    push        dword ptr fs:[eax]
 0050D3FD    mov         dword ptr fs:[eax],esp
 0050D400    mov         eax,dword ptr [ebp-4]
 0050D403    mov         edx,dword ptr [eax]
 0050D405    call        dword ptr [edx+24];TComponent.GetObservers
 0050D408    mov         edx,1
 0050D40D    mov         ecx,dword ptr [eax]
 0050D40F    call        dword ptr [ecx+14];TObservers.IsObserving
 0050D412    test        al,al
>0050D414    je          0050D47A
 0050D416    mov         eax,dword ptr [ebp-4]
 0050D419    mov         edx,dword ptr [eax]
 0050D41B    call        dword ptr [edx+24];TComponent.GetObservers
 0050D41E    mov         dword ptr [ebp-8],eax
 0050D421    lea         edx,[ebp-14]
 0050D424    mov         eax,dword ptr [ebp-8]
 0050D427    call        TLinkObservers.GetEditLink
 0050D42C    mov         eax,dword ptr [ebp-14]
 0050D42F    mov         edx,dword ptr [eax]
 0050D431    call        dword ptr [edx+3C]
 0050D434    test        al,al
>0050D436    jne         0050D571
 0050D43C    mov         eax,dword ptr [ebp-4]
 0050D43F    mov         edx,dword ptr [eax]
 0050D441    call        dword ptr [edx+24];TComponent.GetObservers
 0050D444    mov         dword ptr [ebp-0C],eax
 0050D447    lea         edx,[ebp-18]
 0050D44A    mov         eax,dword ptr [ebp-0C]
 0050D44D    call        TLinkObservers.GetEditLink
 0050D452    mov         eax,dword ptr [ebp-18]
 0050D455    mov         edx,dword ptr [eax]
 0050D457    call        dword ptr [edx+24]
 0050D45A    test        al,al
>0050D45C    je          0050D47A
 0050D45E    mov         eax,dword ptr [ebp-4]
 0050D461    mov         edx,dword ptr [eax]
 0050D463    call        dword ptr [edx+24];TComponent.GetObservers
 0050D466    mov         ebx,eax
 0050D468    lea         edx,[ebp-1C]
 0050D46B    mov         eax,ebx
 0050D46D    call        TLinkObservers.GetEditLink
 0050D472    mov         eax,dword ptr [ebp-1C]
 0050D475    mov         edx,dword ptr [eax]
 0050D477    call        dword ptr [edx+2C]
 0050D47A    mov         eax,dword ptr [ebp-4]
 0050D47D    movzx       eax,byte ptr [eax+29A];TCustomCheckBox.FState:TCheckBoxState
 0050D484    sub         al,1
>0050D486    jb          0050D490
>0050D488    je          0050D4B4
 0050D48A    dec         al
>0050D48C    je          0050D4C0
>0050D48E    jmp         0050D4CA
 0050D490    mov         eax,dword ptr [ebp-4]
 0050D493    cmp         byte ptr [eax+299],0;TCustomCheckBox.FAllowGrayed:Boolean
>0050D49A    je          0050D4A8
 0050D49C    mov         dl,2
 0050D49E    mov         eax,dword ptr [ebp-4]
 0050D4A1    call        TCustomCheckBox.SetState
>0050D4A6    jmp         0050D4CA
 0050D4A8    mov         dl,1
 0050D4AA    mov         eax,dword ptr [ebp-4]
 0050D4AD    call        TCustomCheckBox.SetState
>0050D4B2    jmp         0050D4CA
 0050D4B4    xor         edx,edx
 0050D4B6    mov         eax,dword ptr [ebp-4]
 0050D4B9    call        TCustomCheckBox.SetState
>0050D4BE    jmp         0050D4CA
 0050D4C0    mov         dl,1
 0050D4C2    mov         eax,dword ptr [ebp-4]
 0050D4C5    call        TCustomCheckBox.SetState
 0050D4CA    xor         edx,edx
 0050D4CC    push        ebp
 0050D4CD    push        50D557
 0050D4D2    push        dword ptr fs:[edx]
 0050D4D5    mov         dword ptr fs:[edx],esp
 0050D4D8    mov         eax,dword ptr [ebp-4]
 0050D4DB    mov         edx,dword ptr [eax]
 0050D4DD    call        dword ptr [edx+24];TComponent.GetObservers
 0050D4E0    mov         edx,1
 0050D4E5    mov         ecx,dword ptr [eax]
 0050D4E7    call        dword ptr [ecx+14];TObservers.IsObserving
 0050D4EA    test        al,al
>0050D4EC    je          0050D51D
 0050D4EE    mov         eax,dword ptr [ebp-4]
 0050D4F1    mov         edx,dword ptr [eax]
 0050D4F3    call        dword ptr [edx+24];TComponent.GetObservers
 0050D4F6    mov         dword ptr [ebp-10],eax
 0050D4F9    lea         edx,[ebp-20]
 0050D4FC    mov         eax,dword ptr [ebp-10]
 0050D4FF    call        TLinkObservers.GetEditLink
 0050D504    mov         eax,dword ptr [ebp-20]
 0050D507    mov         edx,dword ptr [eax]
 0050D509    call        dword ptr [edx+44]
 0050D50C    test        al,al
>0050D50E    je          0050D51D
 0050D510    mov         eax,dword ptr [ebp-4]
 0050D513    mov         edx,dword ptr [eax]
 0050D515    call        dword ptr [edx+24];TComponent.GetObservers
 0050D518    call        TLinkObservers.EditLinkTrackUpdate
 0050D51D    mov         eax,dword ptr [ebp-4]
 0050D520    mov         edx,dword ptr [eax]
 0050D522    call        dword ptr [edx+24];TComponent.GetObservers
 0050D525    mov         edx,4
 0050D52A    mov         ecx,dword ptr [eax]
 0050D52C    call        dword ptr [ecx+14];TObservers.IsObserving
 0050D52F    test        al,al
>0050D531    je          0050D54D
 0050D533    mov         eax,dword ptr [ebp-4]
 0050D536    mov         edx,dword ptr [eax]
 0050D538    call        dword ptr [edx+24];TComponent.GetObservers
 0050D53B    call        TLinkObservers.ControlValueModified
 0050D540    mov         eax,dword ptr [ebp-4]
 0050D543    mov         edx,dword ptr [eax]
 0050D545    call        dword ptr [edx+24];TComponent.GetObservers
 0050D548    call        TLinkObservers.ControlValueTrackUpdate
 0050D54D    xor         eax,eax
 0050D54F    pop         edx
 0050D550    pop         ecx
 0050D551    pop         ecx
 0050D552    mov         dword ptr fs:[eax],edx
>0050D555    jmp         0050D571
>0050D557    jmp         @HandleAnyException
 0050D55C    mov         eax,dword ptr [ebp-4]
 0050D55F    mov         edx,dword ptr [eax]
 0050D561    call        dword ptr [edx+104];TWinControl.SetFocus
 0050D567    call        @RaiseAgain
 0050D56C    call        @DoneExcept
 0050D571    xor         eax,eax
 0050D573    pop         edx
 0050D574    pop         ecx
 0050D575    pop         ecx
 0050D576    mov         dword ptr fs:[eax],edx
 0050D579    push        50D599
 0050D57E    lea         eax,[ebp-20]
 0050D581    mov         edx,dword ptr ds:[4782BC];IEditLinkObserver
 0050D587    mov         ecx,4
 0050D58C    call        @FinalizeArray
 0050D591    ret
>0050D592    jmp         @HandleFinally
>0050D597    jmp         0050D57E
 0050D599    pop         edi
 0050D59A    pop         esi
 0050D59B    pop         ebx
 0050D59C    mov         esp,ebp
 0050D59E    pop         ebp
 0050D59F    ret
*}
end;

//0050D5A0
procedure TCustomCheckBox.Click;
begin
{*
 0050D5A0    push        ebx
 0050D5A1    mov         ebx,eax
 0050D5A3    mov         eax,ebx
 0050D5A5    call        TControl.Changed
 0050D5AA    mov         eax,ebx
 0050D5AC    call        TControl.Click
 0050D5B1    pop         ebx
 0050D5B2    ret
*}
end;

//0050D5B4
function TCheckBox.GetChecked:Boolean;
begin
{*
 0050D5B4    cmp         byte ptr [eax+29A],1;TCheckBox.FState:TCheckBoxState
 0050D5BB    sete        al
 0050D5BE    ret
*}
end;

//0050D5C0
procedure TCustomEdit.SetOEMConvert(Value:Boolean);
begin
{*
 0050D5C0    cmp         dl,byte ptr [eax+298]
>0050D5C6    je          0050D5D3
 0050D5C8    mov         byte ptr [eax+298],dl
 0050D5CE    call        TWinControl.RecreateWnd
 0050D5D3    ret
*}
end;

//0050D5D4
procedure TCustomCheckBox.SetChecked(Value:Boolean);
begin
{*
 0050D5D4    test        dl,dl
>0050D5D6    je          0050D5E0
 0050D5D8    mov         dl,1
 0050D5DA    call        TCustomCheckBox.SetState
 0050D5DF    ret
 0050D5E0    xor         edx,edx
 0050D5E2    call        TCustomCheckBox.SetState
 0050D5E7    ret
*}
end;

//0050D5E8
procedure TCustomCheckBox.SetState(Value:TCheckBoxState);
begin
{*
 0050D5E8    push        ebx
 0050D5E9    push        esi
 0050D5EA    mov         ebx,eax
 0050D5EC    cmp         dl,byte ptr [ebx+29A]
>0050D5F2    je          0050D635
 0050D5F4    mov         byte ptr [ebx+29A],dl
 0050D5FA    mov         eax,ebx
 0050D5FC    call        TWinControl.HandleAllocated
 0050D601    test        al,al
>0050D603    je          0050D621
 0050D605    push        0
 0050D607    movzx       eax,byte ptr [ebx+29A]
 0050D60E    push        eax
 0050D60F    push        0F1
 0050D614    mov         eax,ebx
 0050D616    call        TWinControl.GetHandle
 0050D61B    push        eax
 0050D61C    call        user32.SendMessageW
 0050D621    cmp         byte ptr [ebx+290],0
>0050D628    jne         0050D635
 0050D62A    mov         eax,ebx
 0050D62C    mov         si,0FFEB
 0050D630    call        @CallDynaInst
 0050D635    pop         esi
 0050D636    pop         ebx
 0050D637    ret
*}
end;

//0050D638
procedure TCustomCheckBox.CreateParams(var Params:TCreateParams);
begin
{*
 0050D638    push        ebx
 0050D639    push        esi
 0050D63A    push        edi
 0050D63B    mov         edi,edx
 0050D63D    mov         ebx,eax
 0050D63F    mov         edx,edi
 0050D641    mov         eax,ebx
 0050D643    call        TButtonControl.CreateParams
 0050D648    mov         ecx,50D688;'B'
 0050D64D    mov         edx,edi
 0050D64F    mov         eax,ebx
 0050D651    call        TWinControl.CreateSubClass
 0050D656    mov         eax,ebx
 0050D658    mov         si,0FFC6
 0050D65C    call        @CallDynaInst;TControl.sub_004E7698
 0050D661    and         eax,7F
 0050D664    lea         eax,[eax*8+7A1408]
 0050D66B    movzx       edx,byte ptr [ebx+298];TCustomCheckBox.FAlignment:TLeftRight
 0050D672    mov         eax,dword ptr [eax+edx*4]
 0050D675    mov         edx,dword ptr [edi+4];TCreateParams.Style:DWORD
 0050D678    or          edx,5
 0050D67B    or          eax,edx
 0050D67D    mov         dword ptr [edi+4],eax;TCreateParams.Style:DWORD
 0050D680    and         dword ptr [edi+24],0FFFFFFFC;TCreateParams.WindowClass:TWndClass
 0050D684    pop         edi
 0050D685    pop         esi
 0050D686    pop         ebx
 0050D687    ret
*}
end;

//0050D698
procedure TCustomCheckBox.CreateWnd;
begin
{*
 0050D698    push        ebx
 0050D699    mov         ebx,eax
 0050D69B    mov         eax,ebx
 0050D69D    call        TWinControl.CreateWnd
 0050D6A2    push        0
 0050D6A4    movzx       eax,byte ptr [ebx+29A];TCustomCheckBox.FState:TCheckBoxState
 0050D6AB    push        eax
 0050D6AC    push        0F1
 0050D6B1    mov         eax,ebx
 0050D6B3    call        TWinControl.GetHandle
 0050D6B8    push        eax
 0050D6B9    call        user32.SendMessageW
 0050D6BE    pop         ebx
 0050D6BF    ret
*}
end;

//0050D6C0
{*procedure TCustomCheckBox.WMSize(?:?);
begin
 0050D6C0    push        esi
 0050D6C1    mov         esi,eax
 0050D6C3    mov         eax,esi
 0050D6C5    call        TWinControl.WMSize
 0050D6CA    mov         eax,esi
 0050D6CC    mov         edx,dword ptr [eax]
 0050D6CE    call        dword ptr [edx+0A8];TWinControl.Invalidate
 0050D6D4    pop         esi
 0050D6D5    ret
end;*}

//0050D6D8
procedure TCustomCheckBox.CMCtl3DChanged;
begin
{*
 0050D6D8    call        TWinControl.RecreateWnd
 0050D6DD    ret
*}
end;

//0050D6E0
{*procedure TCustomCheckBox.CMDialogChar(?:?);
begin
 0050D6E0    push        ebp
 0050D6E1    mov         ebp,esp
 0050D6E3    push        0
 0050D6E5    push        ebx
 0050D6E6    push        esi
 0050D6E7    push        edi
 0050D6E8    mov         edi,edx
 0050D6EA    mov         ebx,eax
 0050D6EC    xor         eax,eax
 0050D6EE    push        ebp
 0050D6EF    push        50D76E
 0050D6F4    push        dword ptr fs:[eax]
 0050D6F7    mov         dword ptr fs:[eax],esp
 0050D6FA    lea         edx,[ebp-4]
 0050D6FD    mov         eax,ebx
 0050D6FF    call        TControl.GetText
 0050D704    mov         edx,dword ptr [ebp-4]
 0050D707    movzx       eax,word ptr [edi+4]
 0050D70B    call        IsAccel
 0050D710    test        al,al
>0050D712    je          0050D74F
 0050D714    mov         eax,ebx
 0050D716    mov         si,0FFB4
 0050D71A    call        @CallDynaInst;TWinControl.sub_004EFD3C
 0050D71F    test        al,al
>0050D721    je          0050D74F
 0050D723    mov         eax,ebx
 0050D725    mov         edx,dword ptr [eax]
 0050D727    call        dword ptr [edx+104];TWinControl.SetFocus
 0050D72D    mov         eax,ebx
 0050D72F    mov         si,0FFB1
 0050D733    call        @CallDynaInst;TWinControl.sub_004EFDB8
 0050D738    test        al,al
>0050D73A    je          0050D746
 0050D73C    mov         eax,ebx
 0050D73E    mov         edx,dword ptr [eax]
 0050D740    call        dword ptr [edx+110];TCustomCheckBox.sub_0050D3D8
 0050D746    mov         dword ptr [edi+0C],1
>0050D74D    jmp         0050D758
 0050D74F    mov         edx,edi
 0050D751    mov         eax,ebx
 0050D753    call        TWinControl.CMDialogChar
 0050D758    xor         eax,eax
 0050D75A    pop         edx
 0050D75B    pop         ecx
 0050D75C    pop         ecx
 0050D75D    mov         dword ptr fs:[eax],edx
 0050D760    push        50D775
 0050D765    lea         eax,[ebp-4]
 0050D768    call        @UStrClr
 0050D76D    ret
>0050D76E    jmp         @HandleFinally
>0050D773    jmp         0050D765
 0050D775    pop         edi
 0050D776    pop         esi
 0050D777    pop         ebx
 0050D778    pop         ecx
 0050D779    pop         ebp
 0050D77A    ret
end;*}

//0050D77C
{*procedure TCustomCheckBox.CMExit(?:?);
begin
 0050D77C    push        ebp
 0050D77D    mov         ebp,esp
 0050D77F    add         esp,0FFFFFFF4
 0050D782    push        ebx
 0050D783    push        esi
 0050D784    push        edi
 0050D785    xor         ecx,ecx
 0050D787    mov         dword ptr [ebp-0C],ecx
 0050D78A    mov         ebx,edx
 0050D78C    mov         dword ptr [ebp-4],eax
 0050D78F    xor         eax,eax
 0050D791    push        ebp
 0050D792    push        50D846
 0050D797    push        dword ptr fs:[eax]
 0050D79A    mov         dword ptr fs:[eax],esp
 0050D79D    xor         eax,eax
 0050D79F    push        ebp
 0050D7A0    push        50D80C
 0050D7A5    push        dword ptr fs:[eax]
 0050D7A8    mov         dword ptr fs:[eax],esp
 0050D7AB    mov         eax,dword ptr [ebp-4]
 0050D7AE    mov         edx,dword ptr [eax]
 0050D7B0    call        dword ptr [edx+24];TComponent.GetObservers
 0050D7B3    mov         edx,1
 0050D7B8    mov         ecx,dword ptr [eax]
 0050D7BA    call        dword ptr [ecx+14];TObservers.IsObserving
 0050D7BD    test        al,al
>0050D7BF    je          0050D7DF
 0050D7C1    mov         eax,dword ptr [ebp-4]
 0050D7C4    mov         edx,dword ptr [eax]
 0050D7C6    call        dword ptr [edx+24];TComponent.GetObservers
 0050D7C9    mov         dword ptr [ebp-8],eax
 0050D7CC    lea         edx,[ebp-0C]
 0050D7CF    mov         eax,dword ptr [ebp-8]
 0050D7D2    call        TLinkObservers.GetEditLink
 0050D7D7    mov         eax,dword ptr [ebp-0C]
 0050D7DA    mov         edx,dword ptr [eax]
 0050D7DC    call        dword ptr [edx+20]
 0050D7DF    mov         eax,dword ptr [ebp-4]
 0050D7E2    mov         edx,dword ptr [eax]
 0050D7E4    call        dword ptr [edx+24];TComponent.GetObservers
 0050D7E7    mov         edx,4
 0050D7EC    mov         ecx,dword ptr [eax]
 0050D7EE    call        dword ptr [ecx+14];TObservers.IsObserving
 0050D7F1    test        al,al
>0050D7F3    je          0050D802
 0050D7F5    mov         eax,dword ptr [ebp-4]
 0050D7F8    mov         edx,dword ptr [eax]
 0050D7FA    call        dword ptr [edx+24];TComponent.GetObservers
 0050D7FD    call        TLinkObservers.ControlValueUpdate
 0050D802    xor         eax,eax
 0050D804    pop         edx
 0050D805    pop         ecx
 0050D806    pop         ecx
 0050D807    mov         dword ptr fs:[eax],edx
>0050D80A    jmp         0050D826
>0050D80C    jmp         @HandleAnyException
 0050D811    mov         eax,dword ptr [ebp-4]
 0050D814    mov         edx,dword ptr [eax]
 0050D816    call        dword ptr [edx+104];TWinControl.SetFocus
 0050D81C    call        @RaiseAgain
 0050D821    call        @DoneExcept
 0050D826    mov         edx,ebx
 0050D828    mov         eax,dword ptr [ebp-4]
 0050D82B    call        TWinControl.CMExit
 0050D830    xor         eax,eax
 0050D832    pop         edx
 0050D833    pop         ecx
 0050D834    pop         ecx
 0050D835    mov         dword ptr fs:[eax],edx
 0050D838    push        50D84D
 0050D83D    lea         eax,[ebp-0C]
 0050D840    call        @IntfClear
 0050D845    ret
>0050D846    jmp         @HandleFinally
>0050D84B    jmp         0050D83D
 0050D84D    pop         edi
 0050D84E    pop         esi
 0050D84F    pop         ebx
 0050D850    mov         esp,ebp
 0050D852    pop         ebp
 0050D853    ret
end;*}

//0050D854
{*procedure TCustomCheckBox.sub_0050D854(?:?);
begin
 0050D854    cmp         word ptr [edx+6],0
>0050D859    jne         0050D863
 0050D85B    mov         edx,dword ptr [eax]
 0050D85D    call        dword ptr [edx+110];TCustomCheckBox.sub_0050D3D8
 0050D863    ret
end;*}

//0050D864
constructor TRadioButton.Create(AOwner:TComponent);
begin
{*
 0050D864    push        ebx
 0050D865    push        esi
 0050D866    test        dl,dl
>0050D868    je          0050D872
 0050D86A    add         esp,0FFFFFFF0
 0050D86D    call        @ClassCreate
 0050D872    mov         ebx,edx
 0050D874    mov         esi,eax
 0050D876    xor         edx,edx
 0050D878    mov         eax,esi
 0050D87A    call        TButtonControl.Create
 0050D87F    mov         edx,71
 0050D884    mov         eax,esi
 0050D886    call        TControl.SetWidth
 0050D88B    mov         edx,11
 0050D890    mov         eax,esi
 0050D892    call        TControl.SetHeight
 0050D897    mov         eax,[0050D8C0];0xA0 gvar_0050D8C0
 0050D89C    mov         dword ptr [esi+60],eax;TRadioButton.FControlStyle:TControlStyle
 0050D89F    mov         byte ptr [esi+298],1;TRadioButton.FAlignment:TLeftRight
 0050D8A6    mov         eax,esi
 0050D8A8    test        bl,bl
>0050D8AA    je          0050D8BB
 0050D8AC    call        @AfterConstruction
 0050D8B1    pop         dword ptr fs:[0]
 0050D8B8    add         esp,0C
 0050D8BB    mov         eax,esi
 0050D8BD    pop         esi
 0050D8BE    pop         ebx
 0050D8BF    ret
*}
end;

Initialization
//0079D0E8
{*
 0079D0E8    sub         dword ptr ds:[7CA664],1
>0079D0EF    jae         0079D107
 0079D0F1    mov         ecx,dword ptr ds:[5056CC];TRadioButtonStyleHook
 0079D0F7    mov         edx,dword ptr ds:[5009D8];TRadioButton
 0079D0FD    mov         eax,[005738E0];TCustomStyleEngine
 0079D102    call        TCustomStyleEngine.RegisterStyleHook
 0079D107    ret
*}
Finalization
end.