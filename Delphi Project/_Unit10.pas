//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit10;

interface

uses
  SysUtils, Classes;

    procedure VariantInit; stdcall;//00428310
    function VariantClear:HRESULT; stdcall;//00428318
    function VariantCopy(const vargSrc:OleVariant):HRESULT; stdcall;//00428320
    function VariantChangeType(const vargSrc:Variant; wFlags:Word; vt:Word):HRESULT; stdcall;//00428328
    //function sub_00428330(?:?; ?:?; ?:?; ?:?; ?:?):?;//00428330
    //function sub_00428378:?;//00428378
    //function sub_00428384:?;//00428384
    //function sub_00428390:?;//00428390
    function SafeArrayCreate(cDims:Integer; rgsabound:PSafeArrayBound):PSafeArray; stdcall;//004287A4
    function SafeArrayGetLBound(Dim:Integer; var LBound:Integer):HRESULT; stdcall;//004287AC
    function SafeArrayGetUBound(nDim:Integer; var lUbound:LongInt):HRESULT; stdcall;//004287B4
    function SafeArrayGetElement(const rgIndices:void ; var pv:void ):HRESULT; stdcall;//004287BC
    function SafeArrayPutElement(const rgIndices:void ; const pv:void ):HRESULT; stdcall;//004287C4
    function SafeArrayPtrOfIndex(Indices:PVarArrayCoorArray; var Address:Pointer):HRESULT; stdcall;//004287CC
    //function sub_004287D4(?:?; ?:?; ?:?):?;//004287D4
    procedure sub_00428800;//00428800

implementation

//00428310
procedure oleaut32.VariantInit; stdcall;
begin
{*
 00428310    jmp         dword ptr ds:[9053DC]
*}
end;

//00428318
function oleaut32.VariantClear:HRESULT; stdcall;
begin
{*
 00428318    jmp         dword ptr ds:[9053D8]
*}
end;

//00428320
function oleaut32.VariantCopy(const vargSrc:OleVariant):HRESULT; stdcall;
begin
{*
 00428320    jmp         dword ptr ds:[9053D4]
*}
end;

//00428328
function oleaut32.VariantChangeType(const vargSrc:Variant; wFlags:Word; vt:Word):HRESULT; stdcall;
begin
{*
 00428328    jmp         dword ptr ds:[9053D0]
*}
end;

//00428330
{*function sub_00428330(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00428330    push        ebp
 00428331    mov         ebp,esp
 00428333    push        ebx
 00428334    mov         ebx,dword ptr [ebp+18]
 00428337    cmp         dword ptr [ebp+10],400
>0042833E    je          00428347
 00428340    mov         eax,80004001
>00428345    jmp         00428372
 00428347    push        ebx
 00428348    movzx       eax,word ptr [ebp+14]
 0042834C    push        eax
 0042834D    mov         eax,dword ptr [ebp+0C]
 00428350    push        eax
 00428351    mov         eax,dword ptr [ebp+8]
 00428354    push        eax
 00428355    call        oleaut32.VariantChangeType
 0042835A    cmp         eax,80020005
>0042835F    jne         00428372
 00428361    and         bx,2000
 00428366    cmp         bx,2000
>0042836B    jne         00428372
 0042836D    mov         eax,80020008
 00428372    pop         ebx
 00428373    pop         ebp
 00428374    ret         14
end;*}

//00428378
{*function sub_00428378:?;
begin
 00428378    push        ebp
 00428379    mov         ebp,esp
 0042837B    mov         eax,80004001
 00428380    pop         ebp
 00428381    ret         8
end;*}

//00428384
{*function sub_00428384:?;
begin
 00428384    push        ebp
 00428385    mov         ebp,esp
 00428387    mov         eax,80004001
 0042838C    pop         ebp
 0042838D    ret         0C
end;*}

//00428390
{*function sub_00428390:?;
begin
 00428390    push        ebp
 00428391    mov         ebp,esp
 00428393    mov         eax,80004001
 00428398    pop         ebp
 00428399    ret         10
end;*}

//004287A4
function oleaut32.SafeArrayCreate(cDims:Integer; rgsabound:PSafeArrayBound):PSafeArray; stdcall;
begin
{*
 004287A4    jmp         dword ptr ds:[9053CC]
*}
end;

//004287AC
function oleaut32.SafeArrayGetLBound(Dim:Integer; var LBound:Integer):HRESULT; stdcall;
begin
{*
 004287AC    jmp         dword ptr ds:[9053C8]
*}
end;

//004287B4
function oleaut32.SafeArrayGetUBound(nDim:Integer; var lUbound:LongInt):HRESULT; stdcall;
begin
{*
 004287B4    jmp         dword ptr ds:[9053C4]
*}
end;

//004287BC
function oleaut32.SafeArrayGetElement(const rgIndices:void ; var pv:void ):HRESULT; stdcall;
begin
{*
 004287BC    jmp         dword ptr ds:[9053C0]
*}
end;

//004287C4
function oleaut32.SafeArrayPutElement(const rgIndices:void ; const pv:void ):HRESULT; stdcall;
begin
{*
 004287C4    jmp         dword ptr ds:[9053BC]
*}
end;

//004287CC
function oleaut32.SafeArrayPtrOfIndex(Indices:PVarArrayCoorArray; var Address:Pointer):HRESULT; stdcall;
begin
{*
 004287CC    jmp         dword ptr ds:[9053B8]
*}
end;

//004287D4
{*function sub_004287D4(?:?; ?:?; ?:?):?;
begin
 004287D4    push        ebp
 004287D5    mov         ebp,esp
 004287D7    push        ebx
 004287D8    mov         ebx,edx
 004287DA    mov         edx,ebx
 004287DC    mov         ecx,dword ptr [ebp+8]
 004287DF    cmp         dword ptr [ecx-4],0
>004287E3    je          004287FA
 004287E5    push        eax
 004287E6    mov         eax,dword ptr [ebp+8]
 004287E9    mov         eax,dword ptr [eax-4]
 004287EC    push        eax
 004287ED    call        kernel32.GetProcAddress
 004287F2    mov         edx,eax
 004287F4    test        edx,edx
>004287F6    jne         004287FA
 004287F8    mov         edx,ebx
 004287FA    mov         eax,edx
 004287FC    pop         ebx
 004287FD    pop         ebp
 004287FE    ret
end;*}

//00428800
procedure sub_00428800;
begin
{*
 00428800    push        ebp
 00428801    mov         ebp,esp
 00428803    push        ecx
 00428804    push        4289F8;'oleaut32.dll'
 00428809    call        kernel32.GetModuleHandleW
 0042880E    mov         dword ptr [ebp-4],eax
 00428811    push        ebp
 00428812    mov         edx,428330;sub_00428330
 00428817    mov         eax,428A14
 0042881C    call        004287D4
 00428821    pop         ecx
 00428822    mov         [007C9EEC],eax;gvar_007C9EEC
 00428827    push        ebp
 00428828    mov         edx,428378;sub_00428378
 0042882D    mov         eax,428A28
 00428832    call        004287D4
 00428837    pop         ecx
 00428838    mov         [007C9EF0],eax;gvar_007C9EF0
 0042883D    push        ebp
 0042883E    mov         edx,428378;sub_00428378
 00428843    mov         eax,428A30
 00428848    call        004287D4
 0042884D    pop         ecx
 0042884E    mov         [007C9EF4],eax;gvar_007C9EF4
 00428853    push        ebp
 00428854    mov         edx,428384;sub_00428384
 00428859    mov         eax,428A38
 0042885E    call        004287D4
 00428863    pop         ecx
 00428864    mov         [007C9EF8],eax;gvar_007C9EF8
 00428869    push        ebp
 0042886A    mov         edx,428384;sub_00428384
 0042886F    mov         eax,428A40
 00428874    call        004287D4
 00428879    pop         ecx
 0042887A    mov         [007C9EFC],eax;gvar_007C9EFC
 0042887F    push        ebp
 00428880    mov         edx,428384;sub_00428384
 00428885    mov         eax,428A48
 0042888A    call        004287D4
 0042888F    pop         ecx
 00428890    mov         [007C9F00],eax;gvar_007C9F00
 00428895    push        ebp
 00428896    mov         edx,428384;sub_00428384
 0042889B    mov         eax,428A50
 004288A0    call        004287D4
 004288A5    pop         ecx
 004288A6    mov         [007C9F04],eax;gvar_007C9F04
 004288AB    push        ebp
 004288AC    mov         edx,428384;sub_00428384
 004288B1    mov         eax,428A58
 004288B6    call        004287D4
 004288BB    pop         ecx
 004288BC    mov         [007C9F08],eax;gvar_007C9F08
 004288C1    push        ebp
 004288C2    mov         edx,428384;sub_00428384
 004288C7    mov         eax,428A60
 004288CC    call        004287D4
 004288D1    pop         ecx
 004288D2    mov         [007C9F0C],eax;gvar_007C9F0C
 004288D7    push        ebp
 004288D8    mov         edx,428384;sub_00428384
 004288DD    mov         eax,428A68
 004288E2    call        004287D4
 004288E7    pop         ecx
 004288E8    mov         [007C9F10],eax;gvar_007C9F10
 004288ED    push        ebp
 004288EE    mov         edx,428384;sub_00428384
 004288F3    mov         eax,428A70
 004288F8    call        004287D4
 004288FD    pop         ecx
 004288FE    mov         [007C9F14],eax;gvar_007C9F14
 00428903    push        ebp
 00428904    mov         edx,428384;sub_00428384
 00428909    mov         eax,428A78
 0042890E    call        004287D4
 00428913    pop         ecx
 00428914    mov         [007C9F18],eax;gvar_007C9F18
 00428919    push        ebp
 0042891A    mov         edx,428390;sub_00428390
 0042891F    mov         eax,428A80
 00428924    call        004287D4
 00428929    pop         ecx
 0042892A    mov         [007C9F1C],eax;gvar_007C9F1C
 0042892F    push        ebp
 00428930    mov         edx,42839C
 00428935    mov         eax,428A88
 0042893A    call        004287D4
 0042893F    pop         ecx
 00428940    mov         [007C9F20],eax;gvar_007C9F20
 00428945    push        ebp
 00428946    mov         edx,428408
 0042894B    mov         eax,428A98
 00428950    call        004287D4
 00428955    pop         ecx
 00428956    mov         [007C9F24],eax;gvar_007C9F24
 0042895B    push        ebp
 0042895C    mov         edx,428478
 00428961    mov         eax,428AA8
 00428966    call        004287D4
 0042896B    pop         ecx
 0042896C    mov         [007C9F28],eax;gvar_007C9F28
 00428971    push        ebp
 00428972    mov         edx,4284E8
 00428977    mov         eax,428AB8
 0042897C    call        004287D4
 00428981    pop         ecx
 00428982    mov         [007C9F2C],eax;gvar_007C9F2C
 00428987    push        ebp
 00428988    mov         edx,428558
 0042898D    mov         eax,428AC8
 00428992    call        004287D4
 00428997    pop         ecx
 00428998    mov         [007C9F30],eax;gvar_007C9F30
 0042899D    push        ebp
 0042899E    mov         edx,4285C8
 004289A3    mov         eax,428AD8
 004289A8    call        004287D4
 004289AD    pop         ecx
 004289AE    mov         [007C9F34],eax;gvar_007C9F34
 004289B3    push        ebp
 004289B4    mov         edx,428648
 004289B9    mov         eax,428AE8
 004289BE    call        004287D4
 004289C3    pop         ecx
 004289C4    mov         [007C9F38],eax;gvar_007C9F38
 004289C9    push        ebp
 004289CA    mov         edx,4286BC
 004289CF    mov         eax,428AF8
 004289D4    call        004287D4
 004289D9    pop         ecx
 004289DA    mov         [007C9F3C],eax;gvar_007C9F3C
 004289DF    push        ebp
 004289E0    mov         edx,428730
 004289E5    mov         eax,428B08
 004289EA    call        004287D4
 004289EF    pop         ecx
 004289F0    mov         [007C9F40],eax;gvar_007C9F40
 004289F5    pop         ecx
 004289F6    pop         ebp
 004289F7    ret
*}
end;

Initialization
//0079C4E8
{*
 0079C4E8    sub         dword ptr ds:[7C9F44],1
>0079C4EF    jae         0079C4F6
 0079C4F1    call        00428800
 0079C4F6    ret
*}
Finalization
end.