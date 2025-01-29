//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit54;

interface

uses
  SysUtils, Classes;


implementation

Initialization
//0079D228
{*
 0079D228    sub         dword ptr ds:[7CA66C],1
>0079D22F    jae         0079D247
 0079D231    mov         ecx,dword ptr ds:[504E98];TListBoxStyleHook
 0079D237    mov         edx,dword ptr ds:[5020AC];TListBox
 0079D23D    mov         eax,[005738E0];TCustomStyleEngine
 0079D242    call        TCustomStyleEngine.RegisterStyleHook
 0079D247    ret
*}
Finalization
end.