//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit26;

interface

uses
  SysUtils, Classes;


implementation

Initialization
//0079C810
{*
 0079C810    push        ebp
 0079C811    mov         ebp,esp
 0079C813    xor         ecx,ecx
 0079C815    push        ecx
 0079C816    push        ecx
 0079C817    push        ecx
 0079C818    push        ecx
 0079C819    xor         eax,eax
 0079C81B    push        ebp
 0079C81C    push        79CC5B
 0079C821    push        dword ptr fs:[eax]
 0079C824    mov         dword ptr fs:[eax],esp
 0079C827    sub         dword ptr ds:[7CA438],1
>0079C82E    jae         0079CC3A
 0079C834    call        Randomize
 0079C839    mov         word ptr ds:[7CA41C],2F;gvar_007CA41C
 0079C842    mov         word ptr ds:[7CA424],2E;gvar_007CA424
 0079C84B    lea         eax,[ebp-4]
 0079C84E    mov         edx,dword ptr ds:[402E0C];TArray<System.Char>
 0079C854    call        @DynArrayClear
 0079C859    push        2
 0079C85B    lea         eax,[ebp-4]
 0079C85E    mov         ecx,1
 0079C863    mov         edx,dword ptr ds:[402E0C];TArray<System.Char>
 0079C869    call        @DynArraySetLength
 0079C86E    add         esp,4
 0079C871    mov         eax,dword ptr [ebp-4]
 0079C874    mov         word ptr [eax],2A
 0079C879    mov         eax,dword ptr [ebp-4]
 0079C87C    mov         word ptr [eax+2],3F
 0079C882    mov         edx,dword ptr [ebp-4]
 0079C885    mov         eax,7CA434;gvar_007CA434:?
 0079C88A    mov         ecx,dword ptr ds:[402E0C];TArray<System.Char>
 0079C890    call        @DynArrayAsg
 0079C895    mov         word ptr ds:[7CA41E],5C;gvar_007CA41E
 0079C89E    mov         word ptr ds:[7CA420],3B;gvar_007CA420
 0079C8A7    mov         word ptr ds:[7CA422],3A;gvar_007CA422
 0079C8B0    lea         eax,[ebp-8]
 0079C8B3    mov         edx,dword ptr ds:[402E0C];TArray<System.Char>
 0079C8B9    call        @DynArrayClear
 0079C8BE    push        24
 0079C8C0    lea         eax,[ebp-8]
 0079C8C3    mov         ecx,1
 0079C8C8    mov         edx,dword ptr ds:[402E0C];TArray<System.Char>
 0079C8CE    call        @DynArraySetLength
 0079C8D3    add         esp,4
 0079C8D6    mov         eax,dword ptr [ebp-8]
 0079C8D9    mov         word ptr [eax],0
 0079C8DE    mov         eax,dword ptr [ebp-8]
 0079C8E1    mov         word ptr [eax+2],1
 0079C8E7    mov         eax,dword ptr [ebp-8]
 0079C8EA    mov         word ptr [eax+4],2
 0079C8F0    mov         eax,dword ptr [ebp-8]
 0079C8F3    mov         word ptr [eax+6],3
 0079C8F9    mov         eax,dword ptr [ebp-8]
 0079C8FC    mov         word ptr [eax+8],4
 0079C902    mov         eax,dword ptr [ebp-8]
 0079C905    mov         word ptr [eax+0A],5
 0079C90B    mov         eax,dword ptr [ebp-8]
 0079C90E    mov         word ptr [eax+0C],6
 0079C914    mov         eax,dword ptr [ebp-8]
 0079C917    mov         word ptr [eax+0E],7
 0079C91D    mov         eax,dword ptr [ebp-8]
 0079C920    mov         word ptr [eax+10],8
 0079C926    mov         eax,dword ptr [ebp-8]
 0079C929    mov         word ptr [eax+12],9
 0079C92F    mov         eax,dword ptr [ebp-8]
 0079C932    mov         word ptr [eax+14],0A
 0079C938    mov         eax,dword ptr [ebp-8]
 0079C93B    mov         word ptr [eax+16],0B
 0079C941    mov         eax,dword ptr [ebp-8]
 0079C944    mov         word ptr [eax+18],0C
 0079C94A    mov         eax,dword ptr [ebp-8]
 0079C94D    mov         word ptr [eax+1A],0D
 0079C953    mov         eax,dword ptr [ebp-8]
 0079C956    mov         word ptr [eax+1C],0E
 0079C95C    mov         eax,dword ptr [ebp-8]
 0079C95F    mov         word ptr [eax+1E],0F
 0079C965    mov         eax,dword ptr [ebp-8]
 0079C968    mov         word ptr [eax+20],10
 0079C96E    mov         eax,dword ptr [ebp-8]
 0079C971    mov         word ptr [eax+22],11
 0079C977    mov         eax,dword ptr [ebp-8]
 0079C97A    mov         word ptr [eax+24],12
 0079C980    mov         eax,dword ptr [ebp-8]
 0079C983    mov         word ptr [eax+26],13
 0079C989    mov         eax,dword ptr [ebp-8]
 0079C98C    mov         word ptr [eax+28],14
 0079C992    mov         eax,dword ptr [ebp-8]
 0079C995    mov         word ptr [eax+2A],15
 0079C99B    mov         eax,dword ptr [ebp-8]
 0079C99E    mov         word ptr [eax+2C],16
 0079C9A4    mov         eax,dword ptr [ebp-8]
 0079C9A7    mov         word ptr [eax+2E],17
 0079C9AD    mov         eax,dword ptr [ebp-8]
 0079C9B0    mov         word ptr [eax+30],18
 0079C9B6    mov         eax,dword ptr [ebp-8]
 0079C9B9    mov         word ptr [eax+32],19
 0079C9BF    mov         eax,dword ptr [ebp-8]
 0079C9C2    mov         word ptr [eax+34],1A
 0079C9C8    mov         eax,dword ptr [ebp-8]
 0079C9CB    mov         word ptr [eax+36],1B
 0079C9D1    mov         eax,dword ptr [ebp-8]
 0079C9D4    mov         word ptr [eax+38],1C
 0079C9DA    mov         eax,dword ptr [ebp-8]
 0079C9DD    mov         word ptr [eax+3A],1D
 0079C9E3    mov         eax,dword ptr [ebp-8]
 0079C9E6    mov         word ptr [eax+3C],1E
 0079C9EC    mov         eax,dword ptr [ebp-8]
 0079C9EF    mov         word ptr [eax+3E],1F
 0079C9F5    mov         eax,dword ptr [ebp-8]
 0079C9F8    mov         word ptr [eax+40],22
 0079C9FE    mov         eax,dword ptr [ebp-8]
 0079CA01    mov         word ptr [eax+42],3C
 0079CA07    mov         eax,dword ptr [ebp-8]
 0079CA0A    mov         word ptr [eax+44],3E
 0079CA10    mov         eax,dword ptr [ebp-8]
 0079CA13    mov         word ptr [eax+46],7C
 0079CA19    mov         edx,dword ptr [ebp-8]
 0079CA1C    mov         eax,7CA428;gvar_007CA428:?
 0079CA21    mov         ecx,dword ptr ds:[402E0C];TArray<System.Char>
 0079CA27    call        @DynArrayAsg
 0079CA2C    lea         eax,[ebp-0C]
 0079CA2F    mov         edx,dword ptr ds:[402E0C];TArray<System.Char>
 0079CA35    call        @DynArrayClear
 0079CA3A    push        29
 0079CA3C    lea         eax,[ebp-0C]
 0079CA3F    mov         ecx,1
 0079CA44    mov         edx,dword ptr ds:[402E0C];TArray<System.Char>
 0079CA4A    call        @DynArraySetLength
 0079CA4F    add         esp,4
 0079CA52    mov         eax,dword ptr [ebp-0C]
 0079CA55    mov         word ptr [eax],0
 0079CA5A    mov         eax,dword ptr [ebp-0C]
 0079CA5D    mov         word ptr [eax+2],1
 0079CA63    mov         eax,dword ptr [ebp-0C]
 0079CA66    mov         word ptr [eax+4],2
 0079CA6C    mov         eax,dword ptr [ebp-0C]
 0079CA6F    mov         word ptr [eax+6],3
 0079CA75    mov         eax,dword ptr [ebp-0C]
 0079CA78    mov         word ptr [eax+8],4
 0079CA7E    mov         eax,dword ptr [ebp-0C]
 0079CA81    mov         word ptr [eax+0A],5
 0079CA87    mov         eax,dword ptr [ebp-0C]
 0079CA8A    mov         word ptr [eax+0C],6
 0079CA90    mov         eax,dword ptr [ebp-0C]
 0079CA93    mov         word ptr [eax+0E],7
 0079CA99    mov         eax,dword ptr [ebp-0C]
 0079CA9C    mov         word ptr [eax+10],8
 0079CAA2    mov         eax,dword ptr [ebp-0C]
 0079CAA5    mov         word ptr [eax+12],9
 0079CAAB    mov         eax,dword ptr [ebp-0C]
 0079CAAE    mov         word ptr [eax+14],0A
 0079CAB4    mov         eax,dword ptr [ebp-0C]
 0079CAB7    mov         word ptr [eax+16],0B
 0079CABD    mov         eax,dword ptr [ebp-0C]
 0079CAC0    mov         word ptr [eax+18],0C
 0079CAC6    mov         eax,dword ptr [ebp-0C]
 0079CAC9    mov         word ptr [eax+1A],0D
 0079CACF    mov         eax,dword ptr [ebp-0C]
 0079CAD2    mov         word ptr [eax+1C],0E
 0079CAD8    mov         eax,dword ptr [ebp-0C]
 0079CADB    mov         word ptr [eax+1E],0F
 0079CAE1    mov         eax,dword ptr [ebp-0C]
 0079CAE4    mov         word ptr [eax+20],10
 0079CAEA    mov         eax,dword ptr [ebp-0C]
 0079CAED    mov         word ptr [eax+22],11
 0079CAF3    mov         eax,dword ptr [ebp-0C]
 0079CAF6    mov         word ptr [eax+24],12
 0079CAFC    mov         eax,dword ptr [ebp-0C]
 0079CAFF    mov         word ptr [eax+26],13
 0079CB05    mov         eax,dword ptr [ebp-0C]
 0079CB08    mov         word ptr [eax+28],14
 0079CB0E    mov         eax,dword ptr [ebp-0C]
 0079CB11    mov         word ptr [eax+2A],15
 0079CB17    mov         eax,dword ptr [ebp-0C]
 0079CB1A    mov         word ptr [eax+2C],16
 0079CB20    mov         eax,dword ptr [ebp-0C]
 0079CB23    mov         word ptr [eax+2E],17
 0079CB29    mov         eax,dword ptr [ebp-0C]
 0079CB2C    mov         word ptr [eax+30],18
 0079CB32    mov         eax,dword ptr [ebp-0C]
 0079CB35    mov         word ptr [eax+32],19
 0079CB3B    mov         eax,dword ptr [ebp-0C]
 0079CB3E    mov         word ptr [eax+34],1A
 0079CB44    mov         eax,dword ptr [ebp-0C]
 0079CB47    mov         word ptr [eax+36],1B
 0079CB4D    mov         eax,dword ptr [ebp-0C]
 0079CB50    mov         word ptr [eax+38],1C
 0079CB56    mov         eax,dword ptr [ebp-0C]
 0079CB59    mov         word ptr [eax+3A],1D
 0079CB5F    mov         eax,dword ptr [ebp-0C]
 0079CB62    mov         word ptr [eax+3C],1E
 0079CB68    mov         eax,dword ptr [ebp-0C]
 0079CB6B    mov         word ptr [eax+3E],1F
 0079CB71    mov         eax,dword ptr [ebp-0C]
 0079CB74    mov         word ptr [eax+40],22
 0079CB7A    mov         eax,dword ptr [ebp-0C]
 0079CB7D    mov         word ptr [eax+42],2A
 0079CB83    mov         eax,dword ptr [ebp-0C]
 0079CB86    mov         word ptr [eax+44],2F
 0079CB8C    mov         eax,dword ptr [ebp-0C]
 0079CB8F    mov         word ptr [eax+46],3A
 0079CB95    mov         eax,dword ptr [ebp-0C]
 0079CB98    mov         word ptr [eax+48],3C
 0079CB9E    mov         eax,dword ptr [ebp-0C]
 0079CBA1    mov         word ptr [eax+4A],3E
 0079CBA7    mov         eax,dword ptr [ebp-0C]
 0079CBAA    mov         word ptr [eax+4C],3F
 0079CBB0    mov         eax,dword ptr [ebp-0C]
 0079CBB3    mov         word ptr [eax+4E],5C
 0079CBB9    mov         eax,dword ptr [ebp-0C]
 0079CBBC    mov         word ptr [eax+50],7C
 0079CBC2    mov         edx,dword ptr [ebp-0C]
 0079CBC5    mov         eax,7CA42C;gvar_007CA42C:?
 0079CBCA    mov         ecx,dword ptr ds:[402E0C];TArray<System.Char>
 0079CBD0    call        @DynArrayAsg
 0079CBD5    lea         eax,[ebp-10]
 0079CBD8    mov         edx,dword ptr ds:[402E0C];TArray<System.Char>
 0079CBDE    call        @DynArrayClear
 0079CBE3    push        5
 0079CBE5    lea         eax,[ebp-10]
 0079CBE8    mov         ecx,1
 0079CBED    mov         edx,dword ptr ds:[402E0C];TArray<System.Char>
 0079CBF3    call        @DynArraySetLength
 0079CBF8    add         esp,4
 0079CBFB    mov         eax,dword ptr [ebp-10]
 0079CBFE    mov         word ptr [eax],2A
 0079CC03    mov         eax,dword ptr [ebp-10]
 0079CC06    mov         word ptr [eax+2],2F
 0079CC0C    mov         eax,dword ptr [ebp-10]
 0079CC0F    mov         word ptr [eax+4],3A
 0079CC15    mov         eax,dword ptr [ebp-10]
 0079CC18    mov         word ptr [eax+6],3F
 0079CC1E    mov         eax,dword ptr [ebp-10]
 0079CC21    mov         word ptr [eax+8],5C
 0079CC27    mov         edx,dword ptr [ebp-10]
 0079CC2A    mov         eax,7CA430;gvar_007CA430:?
 0079CC2F    mov         ecx,dword ptr ds:[402E0C];TArray<System.Char>
 0079CC35    call        @DynArrayAsg
 0079CC3A    xor         eax,eax
 0079CC3C    pop         edx
 0079CC3D    pop         ecx
 0079CC3E    pop         ecx
 0079CC3F    mov         dword ptr fs:[eax],edx
 0079CC42    push        79CC62
 0079CC47    lea         eax,[ebp-10]
 0079CC4A    mov         edx,dword ptr ds:[402E0C];TArray<System.Char>
 0079CC50    mov         ecx,4
 0079CC55    call        @FinalizeArray
 0079CC5A    ret
>0079CC5B    jmp         @HandleFinally
>0079CC60    jmp         0079CC47
 0079CC62    mov         esp,ebp
 0079CC64    pop         ebp
 0079CC65    ret
*}
Finalization
//004B3968
{*
 004B3968    inc         dword ptr ds:[7CA438]
>004B396E    jne         004B39B0
 004B3970    mov         eax,7CA434;gvar_007CA434:?
 004B3975    mov         edx,dword ptr ds:[402E0C];TArray<System.Char>
 004B397B    call        @DynArrayClear
 004B3980    mov         eax,7CA430;gvar_007CA430:?
 004B3985    mov         edx,dword ptr ds:[402E0C];TArray<System.Char>
 004B398B    call        @DynArrayClear
 004B3990    mov         eax,7CA42C;gvar_007CA42C:?
 004B3995    mov         edx,dword ptr ds:[402E0C];TArray<System.Char>
 004B399B    call        @DynArrayClear
 004B39A0    mov         eax,7CA428;gvar_007CA428:?
 004B39A5    mov         edx,dword ptr ds:[402E0C];TArray<System.Char>
 004B39AB    call        @DynArrayClear
 004B39B0    ret
*}
end.