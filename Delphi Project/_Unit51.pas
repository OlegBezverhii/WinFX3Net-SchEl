//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit51;

interface

uses
  SysUtils, Classes;


implementation

Initialization
//0079D1C8
{*
 0079D1C8    sub         dword ptr ds:[7CA650],1
>0079D1CF    jae         0079D1E7
 0079D1D1    mov         ecx,dword ptr ds:[504FE0];TComboBoxStyleHook
 0079D1D7    mov         edx,dword ptr ds:[4FD318];TComboBox
 0079D1DD    mov         eax,[005738E0];TCustomStyleEngine
 0079D1E2    call        TCustomStyleEngine.RegisterStyleHook
 0079D1E7    ret
*}
Finalization
end.