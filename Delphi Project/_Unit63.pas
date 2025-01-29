//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit63;

interface

uses
  SysUtils, Classes;

    procedure sub_0053E0B0;//0053E0B0
    constructor Create(AOwner:TComponent);//0053E0E8

implementation

//0053E0B0
procedure sub_0053E0B0;
begin
{*
 0053E0B0    add         esp,0FFFFFFF0
 0053E0B3    xor         eax,eax
 0053E0B5    mov         dword ptr [esp],eax
 0053E0B8    mov         byte ptr [esp+4],0
 0053E0BD    mov         dword ptr [esp+8],0FFFF
 0053E0C5    mov         byte ptr [esp+0C],0
 0053E0CA    push        esp
 0053E0CB    push        1
 0053E0CD    mov         ecx,dword ptr ds:[7C46E8];^SResString309:TResStringRec
 0053E0D3    mov         dl,1
 0053E0D5    mov         eax,[004174D0];Exception
 0053E0DA    call        Exception.CreateResFmt;Exception.Create
 0053E0DF    call        @RaiseExcept
 0053E0E4    add         esp,10
 0053E0E7    ret
*}
end;

//0053E0E8
constructor TProgressBar.Create(AOwner:TComponent);
begin
{*
 0053E0E8    push        ebx
 0053E0E9    push        esi
 0053E0EA    push        edi
 0053E0EB    test        dl,dl
>0053E0ED    je          0053E0F7
 0053E0EF    add         esp,0FFFFFFF0
 0053E0F2    call        @ClassCreate
 0053E0F7    mov         esi,ecx
 0053E0F9    mov         ebx,edx
 0053E0FB    mov         edi,eax
 0053E0FD    mov         eax,20
 0053E102    call        InitCommonControl
 0053E107    mov         byte ptr [edi+290],al;TProgressBar.F32BitMode:Boolean
 0053E10D    mov         ecx,esi
 0053E10F    xor         edx,edx
 0053E111    mov         eax,edi
 0053E113    call        TWinControl.Create
 0053E118    mov         edx,96
 0053E11D    mov         eax,edi
 0053E11F    call        TControl.SetWidth
 0053E124    push        14
 0053E126    call        user32.GetSystemMetrics
 0053E12B    mov         edx,eax
 0053E12D    mov         eax,edi
 0053E12F    call        TControl.SetHeight
 0053E134    xor         eax,eax
 0053E136    mov         dword ptr [edi+294],eax;TProgressBar.FMin:Integer
 0053E13C    mov         dword ptr [edi+298],64;TProgressBar.FMax:Integer
 0053E146    mov         dword ptr [edi+2A4],0A;TProgressBar.FStep:Integer
 0053E150    mov         byte ptr [edi+2A8],0;TProgressBar.FOrientation:TProgressBarOrientation
 0053E157    mov         dword ptr [edi+2B4],20000000;TProgressBar.FBarColor:TColor
 0053E161    mov         dword ptr [edi+2B8],20000000;TProgressBar.FBackgroundColor:TColor
 0053E16B    mov         dword ptr [edi+2AC],0A;TProgressBar.FMarqueeInterval:Integer
 0053E175    mov         byte ptr [edi+2AA],0;TProgressBar.FSmoothReverse:Boolean
 0053E17C    mov         byte ptr [edi+2BC],0;TProgressBar.FState:TProgressBarState
 0053E183    mov         byte ptr [edi+2B0],0;TProgressBar.FStyle:TProgressBarStyle
 0053E18A    mov         eax,edi
 0053E18C    test        bl,bl
>0053E18E    je          0053E19F
 0053E190    call        @AfterConstruction
 0053E195    pop         dword ptr fs:[0]
 0053E19C    add         esp,0C
 0053E19F    mov         eax,edi
 0053E1A1    pop         edi
 0053E1A2    pop         esi
 0053E1A3    pop         ebx
 0053E1A4    ret
*}
end;

Initialization
//0079D388
{*
 0079D388    sub         dword ptr ds:[7CA6A8],1
>0079D38F    jae         0079D3A7
 0079D391    mov         ecx,dword ptr ds:[532A64];TProgressBarStyleHook
 0079D397    mov         edx,dword ptr ds:[528760];TProgressBar
 0079D39D    mov         eax,[005738E0];TCustomStyleEngine
 0079D3A2    call        TCustomStyleEngine.RegisterStyleHook
 0079D3A7    ret
*}
Finalization
end.