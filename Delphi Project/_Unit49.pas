//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit49;

interface

uses
  SysUtils, Classes;


implementation

Initialization
//0079D188
{*
 0079D188    sub         dword ptr ds:[7CA640],1
>0079D18F    jae         0079D1A7
 0079D191    mov         ecx,dword ptr ds:[504C30];TEditStyleHook
 0079D197    mov         edx,dword ptr ds:[4FA534];TEdit
 0079D19D    mov         eax,[005738E0];TCustomStyleEngine
 0079D1A2    call        TCustomStyleEngine.RegisterStyleHook
 0079D1A7    ret
*}
Finalization
end.