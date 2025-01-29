//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit66;

interface

uses
  SysUtils, Classes;

    constructor Create(AOwner:TComponent);//005419FC

implementation

//005419FC
constructor TCustomUpDown.Create(AOwner:TComponent);
begin
{*
 005419FC    push        ebp
 005419FD    mov         ebp,esp
 005419FF    push        ecx
 00541A00    push        ebx
 00541A01    test        dl,dl
>00541A03    je          00541A0D
 00541A05    add         esp,0FFFFFFF0
 00541A08    call        @ClassCreate
 00541A0D    mov         byte ptr [ebp-1],dl
 00541A10    mov         ebx,eax
 00541A12    xor         edx,edx
 00541A14    mov         eax,ebx
 00541A16    call        TWinControl.Create
 00541A1B    push        2
 00541A1D    call        user32.GetSystemMetrics
 00541A22    mov         edx,eax
 00541A24    mov         eax,ebx
 00541A26    call        TControl.SetWidth
 00541A2B    push        14
 00541A2D    call        user32.GetSystemMetrics
 00541A32    mov         edx,eax
 00541A34    mov         eax,ebx
 00541A36    call        TControl.SetHeight
 00541A3B    mov         eax,dword ptr [ebx+5C];TCustomUpDown.FHeight:Integer
 00541A3E    mov         edx,eax
 00541A40    sar         eax,1
>00541A42    jns         00541A47
 00541A44    adc         eax,0
 00541A47    add         edx,eax
 00541A49    mov         eax,ebx
 00541A4B    call        TControl.SetHeight
 00541A50    mov         byte ptr [ebx+290],1;TCustomUpDown.FArrowKeys:Boolean
 00541A57    mov         byte ptr [ebx+2B1],0;TCustomUpDown.FWrap:Boolean
 00541A5E    xor         eax,eax
 00541A60    mov         dword ptr [ebx+2AC],eax;TCustomUpDown.FPosition:Integer
 00541A66    xor         eax,eax
 00541A68    mov         dword ptr [ebx+298],eax;TCustomUpDown.FMin:Integer
 00541A6E    mov         dword ptr [ebx+29C],64;TCustomUpDown.FMax:Integer
 00541A78    mov         dword ptr [ebx+2A0],1;TCustomUpDown.FIncrement:Integer
 00541A82    mov         byte ptr [ebx+2C0],1;TCustomUpDown.FAlignButton:TUDAlignButton
 00541A89    mov         byte ptr [ebx+2C1],1;TCustomUpDown.FOrientation:TUDOrientation
 00541A90    mov         byte ptr [ebx+2B0],1;TCustomUpDown.FThousands:Boolean
 00541A97    mov         eax,[00541AC0];0x200080 gvar_00541AC0
 00541A9C    not         eax
 00541A9E    and         dword ptr [ebx+60],eax;TCustomUpDown.FControlStyle:TControlStyle
 00541AA1    mov         eax,ebx
 00541AA3    cmp         byte ptr [ebp-1],0
>00541AA7    je          00541AB8
 00541AA9    call        @AfterConstruction
 00541AAE    pop         dword ptr fs:[0]
 00541AB5    add         esp,0C
 00541AB8    mov         eax,ebx
 00541ABA    pop         ebx
 00541ABB    pop         ecx
 00541ABC    pop         ebp
 00541ABD    ret
*}
end;

Initialization
//0079D3E8
{*
 0079D3E8    sub         dword ptr ds:[7CA6B4],1
>0079D3EF    jae         0079D407
 0079D3F1    mov         ecx,dword ptr ds:[532CB0];TUpDownStyleHook
 0079D3F7    mov         edx,dword ptr ds:[52B6C0];TCustomUpDown
 0079D3FD    mov         eax,[005738E0];TCustomStyleEngine
 0079D402    call        TCustomStyleEngine.RegisterStyleHook
 0079D407    ret
*}
Finalization
end.