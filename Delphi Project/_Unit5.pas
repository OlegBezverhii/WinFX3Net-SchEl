//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit5;

interface

uses
  SysUtils, Classes;


implementation

Initialization
//0079C0E4
{*
 0079C0E4    sub         dword ptr ds:[7C7CA4],1
>0079C0EB    jae         0079C101
 0079C0ED    mov         eax,417198
 0079C0F2    call        @InitResStringImports
 0079C0F7    mov         eax,4172D4
 0079C0FC    call        @InitImports
 0079C101    ret
*}
Finalization
//004173D4
{*
 004173D4    push        ebp
 004173D5    mov         ebp,esp
 004173D7    xor         eax,eax
 004173D9    push        ebp
 004173DA    push        417405
 004173DF    push        dword ptr fs:[eax]
 004173E2    mov         dword ptr fs:[eax],esp
 004173E5    inc         dword ptr ds:[7C7CA4]
>004173EB    jne         004173F7
 004173ED    mov         eax,417198
 004173F2    call        @FinalizeResStringImports
 004173F7    xor         eax,eax
 004173F9    pop         edx
 004173FA    pop         ecx
 004173FB    pop         ecx
 004173FC    mov         dword ptr fs:[eax],edx
 004173FF    push        41740C
 00417404    ret
>00417405    jmp         @HandleFinally
>0041740A    jmp         00417404
 0041740C    pop         ebp
 0041740D    ret
*}
end.