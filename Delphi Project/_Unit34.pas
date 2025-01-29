//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit34;

interface

uses
  SysUtils, Classes;

    //function sub_004D716C(?:?; ?:?):?;//004D716C
    function sub_004D71D4:Boolean;//004D71D4
    procedure sub_004D71E0;//004D71E0
    procedure sub_004D7220;//004D7220

implementation

//004D716C
{*function sub_004D716C(?:?; ?:?):?;
begin
 004D716C    push        ebp
 004D716D    mov         ebp,esp
 004D716F    cmp         dword ptr ds:[7A1118],0;gvar_007A1118:Pointer
>004D7176    jne         004D7196
 004D7178    cmp         dword ptr ds:[7A1114],0;gvar_007A1114:Windows.HMODULE
>004D717F    je          004D7196
 004D7181    push        4D71B8;'SetInputScope'
 004D7186    mov         eax,[007A1114];0x0 gvar_007A1114:Windows.HMODULE
 004D718B    push        eax
 004D718C    call        GetProcAddress
 004D7191    mov         [007A1118],eax;gvar_007A1118:Pointer
 004D7196    cmp         dword ptr ds:[7A1118],0;gvar_007A1118:Pointer
>004D719D    je          004D71AF
 004D719F    mov         eax,dword ptr [ebp+0C]
 004D71A2    push        eax
 004D71A3    mov         eax,dword ptr [ebp+8]
 004D71A6    push        eax
 004D71A7    call        dword ptr ds:[7A1118]
>004D71AD    jmp         004D71B4
 004D71AF    mov         eax,80004005
 004D71B4    pop         ebp
 004D71B5    ret         8
end;*}

//004D71D4
function sub_004D71D4:Boolean;
begin
{*
 004D71D4    cmp         dword ptr ds:[7A1114],0;gvar_007A1114:Windows.HMODULE
 004D71DB    setne       al
 004D71DE    ret
*}
end;

//004D71E0
procedure sub_004D71E0;
begin
{*
 004D71E0    cmp         dword ptr ds:[7A1114],0;gvar_007A1114:Windows.HMODULE
>004D71E7    jne         004D71FD
 004D71E9    mov         edx,8000
 004D71EE    mov         eax,4D720C;'Msctf.dll'
 004D71F3    call        SafeLoadLibrary
 004D71F8    mov         [007A1114],eax;gvar_007A1114:Windows.HMODULE
 004D71FD    ret
*}
end;

//004D7220
procedure sub_004D7220;
begin
{*
 004D7220    cmp         dword ptr ds:[7A1114],0;gvar_007A1114:Windows.HMODULE
>004D7227    je          004D7234
 004D7229    mov         eax,[007A1114];0x0 gvar_007A1114:Windows.HMODULE
 004D722E    push        eax
 004D722F    call        kernel32.FreeLibrary
 004D7234    ret
*}
end;

Initialization
//0079CEF0
{*
 0079CEF0    sub         dword ptr ds:[7CA5C4],1
>0079CEF7    jae         0079CEFE
 0079CEF9    call        004D71E0
 0079CEFE    ret
*}
Finalization
end.