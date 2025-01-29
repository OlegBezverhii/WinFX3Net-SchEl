//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit55;

interface

uses
  SysUtils, Classes;


implementation

Initialization
//0079D248
{*
 0079D248    sub         dword ptr ds:[7CA678],1
>0079D24F    jae         0079D267
 0079D251    mov         ecx,dword ptr ds:[5058E8];TStaticTextStyleHook
 0079D257    mov         edx,dword ptr ds:[503C98];TStaticText
 0079D25D    mov         eax,[005738E0];TCustomStyleEngine
 0079D262    call        TCustomStyleEngine.RegisterStyleHook
 0079D267    ret
*}
Finalization
end.