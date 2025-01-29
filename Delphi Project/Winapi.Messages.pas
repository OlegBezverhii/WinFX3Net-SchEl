//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Winapi.Messages;

interface

uses
  SysUtils, Classes;

type
  TDWordFiller = TDWordFiller = record//size=0;
  TMessage = TMessage = record//size=10
Msg:Cardinal;//f0
WParam:NativeUInt;//f4
LParam:NativeInt;//f8
Result:NativeInt;//fC
WParamLo:Word;//f4
WParamHi:Word;//f6
WParamFiller:TDWordFiller;//f8
LParamLo:Word;//f8
LParamHi:Word;//fA
LParamFiller:TDWordFiller;//fC
ResultLo:Word;//fC
ResultHi:Word;//fE
ResultFiller:TDWordFiller;//f10
end;;
  TWMKey = TWMKey = record//size=10
Msg:Cardinal;//f0
MsgFiller:TDWordFiller;//f4
CharCode:Word;//f4
Unused:Word;//f6
CharCodeUnusedFiller:TDWordFiller;//f8
KeyData:Integer;//f8
KeyDataFiller:TDWordFiller;//fC
Result:NativeInt;//fC
end;;
  TWMMouseWheel = TWMMouseWheel = record//size=10
Msg:Cardinal;//f0
MsgFiller:TDWordFiller;//f4
Keys:SmallInt;//f4
WheelDelta:SmallInt;//f6
KeysWhellFiller:TDWordFiller;//f8
XPos:SmallInt;//f8
YPos:SmallInt;//fA
XYPosFiller:TDWordFiller;//fC
Pos:TSmallPoint;//f8
PosFiller:TDWordFiller;//fC
Result:NativeInt;//fC
end;;
  TWMMenuChar = TWMMenuChar = record//size=10
Msg:Cardinal;//f0
MsgFiller:TDWordFiller;//f4
User:Char;//f4
MenuFlag:Word;//f6
UserMenuFlagFiller:TDWordFiller;//f8
Menu:HMENU;//f8
Result:NativeInt;//fC
end;;
    function SendTextMessage(Handle:Windows.HWND; Msg:Windows.UINT; WParam:Windows.WPARAM; LParam:UnicodeString):LRESULT;//00411B28
    function SendStructMessage(Handle:Windows.HWND; Msg:Windows.UINT; WParam:Windows.WPARAM; const LParam:void ):LRESULT;//00411B84
    function SendGetStructMessage(Handle:Windows.HWND; Msg:Windows.UINT; WParam:Windows.WPARAM; var LParam:void ; Unused:Boolean):LRESULT;//00411B9C
    function SendGetIntMessage(Handle:Windows.HWND; Msg:Windows.UINT; var WParam:Integer; var LParam:Integer):LRESULT;//00411BB4
    //function sub_0041224C:?;//0041224C
    procedure sub_00416FD4;//00416FD4
    //function sub_00417034(?:?):?;//00417034
    //function sub_00417074(?:?):Boolean;//00417074
    //function sub_004170C8(?:?):?;//004170C8
    //procedure sub_00417114(?:?);//00417114
    //function sub_00417140(?:?):Boolean;//00417140

implementation

//00411B28
function SendTextMessage(Handle:Windows.HWND; Msg:Windows.UINT; WParam:Windows.WPARAM; LParam:UnicodeString):LRESULT;
begin
{*
 00411B28    push        ebp
 00411B29    mov         ebp,esp
 00411B2B    push        ebx
 00411B2C    push        esi
 00411B2D    push        edi
 00411B2E    mov         edi,ecx
 00411B30    mov         esi,edx
 00411B32    mov         ebx,eax
 00411B34    mov         eax,dword ptr [ebp+8]
 00411B37    call        @UStrAddRef
 00411B3C    xor         eax,eax
 00411B3E    push        ebp
 00411B3F    push        411B73
 00411B44    push        dword ptr fs:[eax]
 00411B47    mov         dword ptr fs:[eax],esp
 00411B4A    mov         eax,dword ptr [ebp+8]
 00411B4D    call        @UStrToPWChar
 00411B52    push        eax
 00411B53    push        edi
 00411B54    push        esi
 00411B55    push        ebx
 00411B56    call        user32.SendMessageW
 00411B5B    mov         ebx,eax
 00411B5D    xor         eax,eax
 00411B5F    pop         edx
 00411B60    pop         ecx
 00411B61    pop         ecx
 00411B62    mov         dword ptr fs:[eax],edx
 00411B65    push        411B7A
 00411B6A    lea         eax,[ebp+8]
 00411B6D    call        @UStrClr
 00411B72    ret
>00411B73    jmp         @HandleFinally
>00411B78    jmp         00411B6A
 00411B7A    mov         eax,ebx
 00411B7C    pop         edi
 00411B7D    pop         esi
 00411B7E    pop         ebx
 00411B7F    pop         ebp
 00411B80    ret         4
*}
end;

//00411B84
function SendStructMessage(Handle:Windows.HWND; Msg:Windows.UINT; WParam:Windows.WPARAM; const LParam:void ):LRESULT;
begin
{*
 00411B84    push        ebp
 00411B85    mov         ebp,esp
 00411B87    push        ebx
 00411B88    mov         ebx,dword ptr [ebp+8]
 00411B8B    push        ebx
 00411B8C    push        ecx
 00411B8D    push        edx
 00411B8E    push        eax
 00411B8F    call        user32.SendMessageW
 00411B94    pop         ebx
 00411B95    pop         ebp
 00411B96    ret         4
*}
end;

//00411B9C
function SendGetStructMessage(Handle:Windows.HWND; Msg:Windows.UINT; WParam:Windows.WPARAM; var LParam:void ; Unused:Boolean):LRESULT;
begin
{*
 00411B9C    push        ebp
 00411B9D    mov         ebp,esp
 00411B9F    push        ebx
 00411BA0    mov         ebx,dword ptr [ebp+0C]
 00411BA3    push        ebx
 00411BA4    push        ecx
 00411BA5    push        edx
 00411BA6    push        eax
 00411BA7    call        user32.SendMessageW
 00411BAC    pop         ebx
 00411BAD    pop         ebp
 00411BAE    ret         8
*}
end;

//00411BB4
function SendGetIntMessage(Handle:Windows.HWND; Msg:Windows.UINT; var WParam:Integer; var LParam:Integer):LRESULT;
begin
{*
 00411BB4    push        ebp
 00411BB5    mov         ebp,esp
 00411BB7    push        ebx
 00411BB8    mov         ebx,dword ptr [ebp+8]
 00411BBB    push        ebx
 00411BBC    push        ecx
 00411BBD    push        edx
 00411BBE    push        eax
 00411BBF    call        user32.SendMessageW
 00411BC4    pop         ebx
 00411BC5    pop         ebp
 00411BC6    ret         4
*}
end;

//0041224C
{*function sub_0041224C:?;
begin
 0041224C    mov         eax,412252
 00412251    ret
end;*}

//00416FD4
procedure sub_00416FD4;
begin
{*
 00416FD4    push        ebx
 00416FD5    mov         ebx,7C7C84;gvar_007C7C84
 00416FDA    call        0041224C
 00416FDF    mov         dword ptr [ebx],eax
 00416FE1    mov         eax,dword ptr [ebx]
 00416FE3    mov         edx,dword ptr [ebx]
 00416FE5    mov         ecx,edx
 00416FE7    add         ecx,dword ptr [eax]
 00416FE9    mov         dword ptr ds:[7C7C88],ecx;gvar_007C7C88
 00416FEF    mov         ecx,edx
 00416FF1    add         ecx,dword ptr [eax+4]
 00416FF4    mov         dword ptr ds:[7C7C8C],ecx;gvar_007C7C8C
 00416FFA    mov         ecx,edx
 00416FFC    add         ecx,dword ptr [eax+8]
 00416FFF    mov         dword ptr ds:[7C7C90],ecx;gvar_007C7C90
 00417005    mov         ecx,edx
 00417007    add         ecx,dword ptr [eax+0C]
 0041700A    mov         dword ptr ds:[7C7C94],ecx;gvar_007C7C94
 00417010    mov         ecx,edx
 00417012    add         ecx,dword ptr [eax+10]
 00417015    mov         dword ptr ds:[7C7C98],ecx;gvar_007C7C98
 0041701B    mov         ecx,edx
 0041701D    add         ecx,dword ptr [eax+14]
 00417020    mov         dword ptr ds:[7C7C9C],ecx;gvar_007C7C9C
 00417026    add         edx,dword ptr [eax+18]
 00417029    mov         dword ptr ds:[7C7CA0],edx;gvar_007C7CA0
 0041702F    pop         ebx
 00417030    ret
*}
end;

//00417034
{*function sub_00417034(?:?):?;
begin
 00417034    cmp         eax,10FFFF
>00417039    jbe         0041703E
 0041703B    mov         al,2
 0041703D    ret
 0041703E    mov         edx,eax
 00417040    shr         edx,8
 00417043    mov         ecx,dword ptr ds:[7C7C88];gvar_007C7C88
 00417049    movzx       edx,byte ptr [ecx+edx]
 0041704D    shl         edx,4
 00417050    mov         ecx,eax
 00417052    shr         ecx,4
 00417055    and         ecx,0F
 00417058    add         edx,ecx
 0041705A    mov         ecx,dword ptr ds:[7C7C8C];gvar_007C7C8C
 00417060    movzx       edx,word ptr [ecx+edx*2]
 00417064    and         eax,0F
 00417067    add         edx,eax
 00417069    mov         eax,[007C7C90];gvar_007C7C90
 0041706E    movzx       eax,byte ptr [eax+edx]
 00417072    ret
end;*}

//00417074
{*function sub_00417074(?:?):Boolean;
begin
 00417074    push        ebx
 00417075    movzx       ebx,word ptr [eax]
 00417078    cmp         ebx,7F
 0041707B    setbe       al
 0041707E    test        al,al
>00417080    je          00417097
 00417082    or          ebx,20
 00417085    cmp         ebx,61
>00417088    jb          0041708F
 0041708A    cmp         ebx,7A
>0041708D    jbe         00417093
 0041708F    xor         eax,eax
>00417091    jmp         004170C4
 00417093    mov         al,1
 00417095    pop         ebx
 00417096    ret
 00417097    cmp         ebx,0FF
 0041709D    setbe       al
 004170A0    test        al,al
>004170A2    je          004170B6
 004170A4    mov         eax,[007C7C90];gvar_007C7C90
 004170A9    movzx       eax,byte ptr [eax+ebx]
 004170AD    add         al,0FB
 004170AF    sub         al,5
 004170B1    setb        al
>004170B4    jmp         004170C4
 004170B6    mov         eax,ebx
 004170B8    call        00417034
 004170BD    add         al,0FB
 004170BF    sub         al,5
 004170C1    setb        al
 004170C4    pop         ebx
 004170C5    ret
end;*}

//004170C8
{*function sub_004170C8(?:?):?;
begin
 004170C8    push        ebx
 004170C9    push        esi
 004170CA    mov         ebx,eax
 004170CC    movzx       esi,word ptr [ebx]
 004170CF    cmp         esi,0FF
 004170D5    setbe       al
 004170D8    test        al,al
>004170DA    je          004170F8
 004170DC    mov         eax,[007C7C90];gvar_007C7C90
 004170E1    movzx       eax,byte ptr [eax+esi]
 004170E5    add         al,0FB
 004170E7    sub         al,5
>004170E9    jb          004170F3
 004170EB    sub         al,3
>004170ED    je          004170F3
 004170EF    xor         eax,eax
>004170F1    jmp         0041710F
 004170F3    mov         al,1
 004170F5    pop         esi
 004170F6    pop         ebx
 004170F7    ret
 004170F8    mov         eax,esi
 004170FA    call        00417034
 004170FF    add         al,0FB
 00417101    sub         al,5
>00417103    jb          0041710D
 00417105    sub         al,3
>00417107    je          0041710D
 00417109    xor         eax,eax
>0041710B    jmp         0041710F
 0041710D    mov         al,1
 0041710F    pop         esi
 00417110    pop         ebx
 00417111    ret
end;*}

//00417114
{*procedure sub_00417114(?:?);
begin
 00417114    push        ebx
 00417115    push        esi
 00417116    mov         ebx,eax
 00417118    movzx       esi,word ptr [ebx]
 0041711B    cmp         esi,0FF
 00417121    setbe       al
 00417124    test        al,al
>00417126    je          00417134
 00417128    mov         eax,[007C7C90];gvar_007C7C90
 0041712D    movzx       eax,byte ptr [eax+esi]
 00417131    pop         esi
 00417132    pop         ebx
 00417133    ret
 00417134    mov         eax,esi
 00417136    call        00417034
 0041713B    pop         esi
 0041713C    pop         ebx
 0041713D    ret
end;*}

//00417140
{*function sub_00417140(?:?):Boolean;
begin
 00417140    push        ebx
 00417141    push        esi
 00417142    mov         ebx,eax
 00417144    movzx       esi,word ptr [ebx]
 00417147    cmp         esi,7F
 0041714A    setbe       al
 0041714D    test        al,al
>0041714F    je          0041715D
 00417151    add         esi,0FFFFFFD0
 00417154    sub         esi,0A
 00417157    setb        al
 0041715A    pop         esi
 0041715B    pop         ebx
 0041715C    ret
 0041715D    cmp         esi,0FF
 00417163    setbe       al
 00417166    test        al,al
>00417168    je          0041717C
 0041716A    mov         eax,[007C7C90];gvar_007C7C90
 0041716F    movzx       eax,byte ptr [eax+esi]
 00417173    add         al,0F3
 00417175    sub         al,3
 00417177    setb        al
>0041717A    jmp         0041718A
 0041717C    mov         eax,esi
 0041717E    call        00417034
 00417183    add         al,0F3
 00417185    sub         al,3
 00417187    setb        al
 0041718A    pop         esi
 0041718B    pop         ebx
 0041718C    ret
end;*}

Initialization
//0079C0D4
{*
 0079C0D4    sub         dword ptr ds:[7C7C80],1
>0079C0DB    jae         0079C0E2
 0079C0DD    call        00416FD4
 0079C0E2    ret
*}
Finalization
end.