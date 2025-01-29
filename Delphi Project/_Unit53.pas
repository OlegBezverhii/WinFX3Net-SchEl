//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit53;

interface

uses
  SysUtils, Classes;


implementation

Initialization
//0079D208
{*
 0079D208    sub         dword ptr ds:[7CA660],1
>0079D20F    jae         0079D227
 0079D211    mov         ecx,dword ptr ds:[50555C];TCheckBoxStyleHook
 0079D217    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 0079D21D    mov         eax,[005738E0];TCustomStyleEngine
 0079D222    call        TCustomStyleEngine.RegisterStyleHook
 0079D227    ret
*}
Finalization
end.