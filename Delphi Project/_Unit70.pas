//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit70;

interface

uses
  SysUtils, Classes;

    //function sub_0054A4A8(?:?):?;//0054A4A8

implementation

//0054A4A8
{*function sub_0054A4A8(?:?):?;
begin
 0054A4A8    push        ebx
 0054A4A9    mov         ebx,eax
 0054A4AB    mov         eax,ebx
 0054A4AD    call        TListControlItems.Add
 0054A4B2    pop         ebx
 0054A4B3    ret
end;*}

Initialization
//0079D468
{*
 0079D468    sub         dword ptr ds:[7CA694],1
>0079D46F    jae         0079D487
 0079D471    mov         ecx,dword ptr ds:[532B94];TStatusBarStyleHook
 0079D477    mov         edx,dword ptr ds:[5211EC];TStatusBar
 0079D47D    mov         eax,[005738E0];TCustomStyleEngine
 0079D482    call        TCustomStyleEngine.RegisterStyleHook
 0079D487    ret
*}
Finalization
end.