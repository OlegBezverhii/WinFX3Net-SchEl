//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit25;

interface

uses
  SysUtils, Classes;

type
  TTimeSpan = TTimeSpan = record//size=8
FTicks:Int64;//f0
end;
//Methods:
Create(ATicks:Int64);//0079EC18
Create(Hours:Integer;Minutes:Integer;Seconds:Integer);//0079EC18
Create(Days:Integer;Hours:Integer;Minutes:Integer;Seconds:Integer);//0079EC18
Create(Days:Integer;Hours:Integer;Minutes:Integer;Seconds:Integer;Milliseconds:Integer);//0079EC18
Add(TS:TTimeSpan):TTimeSpan;//0079EC18
Duration:TTimeSpan;//0079EC18
Negate:TTimeSpan;//0079EC18
Subtract(TS:TTimeSpan):TTimeSpan;//0079EC18
FromDays(Value:Double):TTimeSpan;//0079EC18
FromHours(Value:Double):TTimeSpan;//0079EC18
FromMinutes(Value:Double):TTimeSpan;//0079EC18
FromSeconds(Value:Double):TTimeSpan;//0079EC18
FromMilliseconds(Value:Double):TTimeSpan;//0079EC18
FromTicks(Value:Int64):TTimeSpan;//0079EC18
Subtract(D1:TDateTime;D2:TDateTime):TTimeSpan;//0079EC18
Parse(S:string):TTimeSpan;//0079EC18
TryParse(S:string;Value:TTimeSpan):Boolean;//0079EC18
&op_Addition(Left:TTimeSpan;Right:TTimeSpan):TTimeSpan;//0079EC18
&op_Addition(Left:TTimeSpan;Right:TDateTime):TDateTime;//0079EC18
&op_Addition(Left:TDateTime;Right:TTimeSpan):TDateTime;//0079EC18
&op_Subtraction(Left:TTimeSpan;Right:TTimeSpan):TTimeSpan;//0079EC18
&op_Subtraction(Left:TDateTime;Right:TTimeSpan):TDateTime;//0079EC18
&op_Equality(Left:TTimeSpan;Right:TTimeSpan):Boolean;//0079EC18
&op_Inequality(Left:TTimeSpan;Right:TTimeSpan):Boolean;//0079EC18
&op_GreaterThan(Left:TTimeSpan;Right:TTimeSpan):Boolean;//0079EC18
&op_GreaterThanOrEqual(Left:TTimeSpan;Right:TTimeSpan):Boolean;//0079EC18
&op_LessThan(Left:TTimeSpan;Right:TTimeSpan):Boolean;//0079EC18
&op_LessThanOrEqual(Left:TTimeSpan;Right:TTimeSpan):Boolean;//0079EC18
&op_UnaryNegation(Value:TTimeSpan):TTimeSpan;//0079EC18
&op_UnaryPlus(Value:TTimeSpan):TTimeSpan;//0079EC18
&op_Implicit(Value:TTimeSpan):string;//0079EC18
&op_Explicit(Value:TTimeSpan):string;//0079EC18;
    //function sub_004B37AC(?:?; ?:?):?;//004B37AC
    //function sub_004B37D0(?:?; ?:?):?;//004B37D0
    //function sub_004B37F4(?:?; ?:?):?;//004B37F4
    //function sub_004B3818(?:?; ?:?):?;//004B3818
    //function sub_004B3840(?:?; ?:?):?;//004B3840
    //function sub_004B3868(?:?; ?:?; ?:Byte; ?:?; ?:?; ?:?; ?:?; ?:?):?;//004B3868

implementation

//004B37AC
{*function sub_004B37AC(?:?; ?:?):?;
begin
 004B37AC    push        ebp
 004B37AD    mov         ebp,esp
 004B37AF    add         esp,0FFFFFFF8
 004B37B2    push        dword ptr [ebp+0C]
 004B37B5    push        dword ptr [ebp+8]
 004B37B8    lea         ecx,[ebp-6]
 004B37BB    lea         edx,[ebp-4]
 004B37BE    lea         eax,[ebp-2]
 004B37C1    call        00421100
 004B37C6    movzx       eax,word ptr [ebp-2]
 004B37CA    pop         ecx
 004B37CB    pop         ecx
 004B37CC    pop         ebp
 004B37CD    ret         8
end;*}

//004B37D0
{*function sub_004B37D0(?:?; ?:?):?;
begin
 004B37D0    push        ebp
 004B37D1    mov         ebp,esp
 004B37D3    add         esp,0FFFFFFF8
 004B37D6    push        dword ptr [ebp+0C]
 004B37D9    push        dword ptr [ebp+8]
 004B37DC    lea         ecx,[ebp-6]
 004B37DF    lea         edx,[ebp-2]
 004B37E2    lea         eax,[ebp-4]
 004B37E5    call        00421100
 004B37EA    movzx       eax,word ptr [ebp-2]
 004B37EE    pop         ecx
 004B37EF    pop         ecx
 004B37F0    pop         ebp
 004B37F1    ret         8
end;*}

//004B37F4
{*function sub_004B37F4(?:?; ?:?):?;
begin
 004B37F4    push        ebp
 004B37F5    mov         ebp,esp
 004B37F7    add         esp,0FFFFFFF8
 004B37FA    push        dword ptr [ebp+0C]
 004B37FD    push        dword ptr [ebp+8]
 004B3800    lea         ecx,[ebp-2]
 004B3803    lea         edx,[ebp-6]
 004B3806    lea         eax,[ebp-4]
 004B3809    call        00421100
 004B380E    movzx       eax,word ptr [ebp-2]
 004B3812    pop         ecx
 004B3813    pop         ecx
 004B3814    pop         ebp
 004B3815    ret         8
end;*}

//004B3818
{*function sub_004B3818(?:?; ?:?):?;
begin
 004B3818    push        ebp
 004B3819    mov         ebp,esp
 004B381B    add         esp,0FFFFFFF8
 004B381E    push        dword ptr [ebp+0C]
 004B3821    push        dword ptr [ebp+8]
 004B3824    lea         eax,[ebp-8]
 004B3827    push        eax
 004B3828    lea         ecx,[ebp-6]
 004B382B    lea         edx,[ebp-4]
 004B382E    lea         eax,[ebp-2]
 004B3831    call        00420E20
 004B3836    movzx       eax,word ptr [ebp-2]
 004B383A    pop         ecx
 004B383B    pop         ecx
 004B383C    pop         ebp
 004B383D    ret         8
end;*}

//004B3840
{*function sub_004B3840(?:?; ?:?):?;
begin
 004B3840    push        ebp
 004B3841    mov         ebp,esp
 004B3843    add         esp,0FFFFFFF8
 004B3846    push        dword ptr [ebp+0C]
 004B3849    push        dword ptr [ebp+8]
 004B384C    lea         eax,[ebp-8]
 004B384F    push        eax
 004B3850    lea         ecx,[ebp-6]
 004B3853    lea         edx,[ebp-2]
 004B3856    lea         eax,[ebp-4]
 004B3859    call        00420E20
 004B385E    movzx       eax,word ptr [ebp-2]
 004B3862    pop         ecx
 004B3863    pop         ecx
 004B3864    pop         ebp
 004B3865    ret         8
end;*}

//004B3868
{*function sub_004B3868(?:?; ?:?; ?:Byte; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004B3868    push        ebp
 004B3869    mov         ebp,esp
 004B386B    add         esp,0FFFFFFF0
 004B386E    push        ebx
 004B386F    mov         word ptr [ebp-2],cx
 004B3873    mov         ebx,dword ptr [ebp+8]
 004B3876    push        ebx
 004B3877    movzx       ecx,word ptr [ebp-2]
 004B387B    call        00420EB8
 004B3880    mov         edx,eax
 004B3882    test        dl,dl
>004B3884    je          004B38C2
 004B3886    movzx       eax,word ptr [ebp+0C]
 004B388A    push        eax
 004B388B    lea         eax,[ebp-10]
 004B388E    push        eax
 004B388F    movzx       ecx,word ptr [ebp+10]
 004B3893    movzx       edx,word ptr [ebp+14]
 004B3897    movzx       eax,word ptr [ebp+18]
 004B389B    call        00420D68
 004B38A0    mov         edx,eax
 004B38A2    test        dl,dl
>004B38A4    je          004B38C2
 004B38A6    fldz
 004B38A8    fcomp       qword ptr [ebx]
 004B38AA    wait
 004B38AB    fnstsw      al
 004B38AD    sahf
>004B38AE    ja          004B38BA
 004B38B0    fld         qword ptr [ebx]
 004B38B2    fadd        qword ptr [ebp-10]
 004B38B5    fstp        qword ptr [ebx]
 004B38B7    wait
>004B38B8    jmp         004B38C2
 004B38BA    fld         qword ptr [ebx]
 004B38BC    fsub        qword ptr [ebp-10]
 004B38BF    fstp        qword ptr [ebx]
 004B38C1    wait
 004B38C2    mov         eax,edx
 004B38C4    pop         ebx
 004B38C5    mov         esp,ebp
 004B38C7    pop         ebp
 004B38C8    ret         14
end;*}

Initialization
//0079C7FC
{*
 0079C7FC    sub         dword ptr ds:[7CA418],1
>0079C803    jae         0079C80F
 0079C805    mov         eax,4B38CC
 0079C80A    call        @InitResStringImports
 0079C80F    ret
*}
Finalization
//004B38F4
{*
 004B38F4    push        ebp
 004B38F5    mov         ebp,esp
 004B38F7    xor         eax,eax
 004B38F9    push        ebp
 004B38FA    push        4B3925
 004B38FF    push        dword ptr fs:[eax]
 004B3902    mov         dword ptr fs:[eax],esp
 004B3905    inc         dword ptr ds:[7CA418]
>004B390B    jne         004B3917
 004B390D    mov         eax,4B38CC
 004B3912    call        @FinalizeResStringImports
 004B3917    xor         eax,eax
 004B3919    pop         edx
 004B391A    pop         ecx
 004B391B    pop         ecx
 004B391C    mov         dword ptr fs:[eax],edx
 004B391F    push        4B392C
 004B3924    ret
>004B3925    jmp         @HandleFinally
>004B392A    jmp         004B3924
 004B392C    pop         ebp
 004B392D    ret
*}
end.