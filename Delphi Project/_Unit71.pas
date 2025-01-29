//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit71;

interface

uses
  SysUtils, Classes;

    //procedure GetOnDrawPanel(?:?);//0054A4D4
    //procedure SetOnDrawPanel(Value:TDrawPanelEvent; ?:?; ?:?);//0054A4E8

implementation

//0054A4D4
{*procedure TStatusBar.GetOnDrawPanel(?:?);
begin
 0054A4D4    mov         ecx,dword ptr [eax+2A8];TStatusBar.FOnDrawPanel:TCustomDrawPanelEvent
 0054A4DA    mov         dword ptr [edx],ecx
 0054A4DC    mov         ecx,dword ptr [eax+2AC];TStatusBar.?f2AC:dword
 0054A4E2    mov         dword ptr [edx+4],ecx
 0054A4E5    ret
end;*}

//0054A4E8
{*procedure TStatusBar.SetOnDrawPanel(Value:TDrawPanelEvent; ?:?; ?:?);
begin
 0054A4E8    push        ebp
 0054A4E9    mov         ebp,esp
 0054A4EB    mov         edx,dword ptr [ebp+8]
 0054A4EE    mov         dword ptr [eax+2A8],edx;TStatusBar.FOnDrawPanel:TCustomDrawPanelEvent
 0054A4F4    mov         edx,dword ptr [ebp+0C]
 0054A4F7    mov         dword ptr [eax+2AC],edx;TStatusBar.?f2AC:dword
 0054A4FD    pop         ebp
 0054A4FE    ret         8
end;*}

Initialization
//0079D488
{*
 0079D488    sub         dword ptr ds:[7CA69C],1
>0079D48F    jae         0079D4A7
 0079D491    mov         ecx,dword ptr ds:[532E5C];THeaderStyleHook
 0079D497    mov         edx,dword ptr ds:[5236E4];THeaderControl
 0079D49D    mov         eax,[005738E0];TCustomStyleEngine
 0079D4A2    call        TCustomStyleEngine.RegisterStyleHook
 0079D4A7    ret
*}
Finalization
end.