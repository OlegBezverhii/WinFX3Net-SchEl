//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit50;

interface

uses
  SysUtils, Classes;


implementation

Initialization
//0079D1A8
{*
 0079D1A8    sub         dword ptr ds:[7CA648],1
>0079D1AF    jae         0079D1C7
 0079D1B1    mov         ecx,dword ptr ds:[504D5C];TMemoStyleHook
 0079D1B7    mov         edx,dword ptr ds:[4FB568];TMemo
 0079D1BD    mov         eax,[005738E0];TCustomStyleEngine
 0079D1C2    call        TCustomStyleEngine.RegisterStyleHook
 0079D1C7    ret
*}
Finalization
end.