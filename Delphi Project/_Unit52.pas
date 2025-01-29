//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit52;

interface

uses
  SysUtils, Classes;


implementation

Initialization
//0079D1E8
{*
 0079D1E8    sub         dword ptr ds:[7CA658],1
>0079D1EF    jae         0079D207
 0079D1F1    mov         ecx,dword ptr ds:[505394];TButtonStyleHook
 0079D1F7    mov         edx,dword ptr ds:[4FF09C];TButton
 0079D1FD    mov         eax,[005738E0];TCustomStyleEngine
 0079D202    call        TCustomStyleEngine.RegisterStyleHook
 0079D207    ret
*}
Finalization
end.