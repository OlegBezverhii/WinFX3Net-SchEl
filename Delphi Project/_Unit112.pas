//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit112;

interface

uses
  SysUtils, Classes;


implementation

Initialization
//0079DB18
{*
 0079DB18    sub         dword ptr ds:[90252C],1
>0079DB1F    jae         0079DB4C
 0079DB21    mov         eax,79DB5C;'CAT_DRAG_COPY'
 0079DB26    call        @UStrToPWChar
 0079DB2B    push        eax
 0079DB2C    mov         eax,[007C7C54];gvar_007C7C54
 0079DB31    push        eax
 0079DB32    call        user32.LoadCursorW
 0079DB37    mov         edx,dword ptr ds:[7C4E78];^Screen:TScreen
 0079DB3D    mov         edx,dword ptr [edx]
 0079DB3F    mov         ecx,eax
 0079DB41    mov         eax,0FFFFFFE9
 0079DB46    xchg        eax,edx
 0079DB47    call        TScreen.SetCursors
 0079DB4C    ret
*}
Finalization
end.