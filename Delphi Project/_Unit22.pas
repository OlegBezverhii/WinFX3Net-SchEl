//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit22;

interface

uses
  SysUtils, Classes;

    //procedure sub_004A2414(?:?);//004A2414
    //procedure sub_004A24C4(?:?; ?:?; ?:?);//004A24C4

implementation

//004A2414
{*procedure sub_004A2414(?:?);
begin
 004A2414    push        ebp
 004A2415    mov         ebp,esp
 004A2417    push        ecx
 004A2418    push        ebx
 004A2419    push        esi
 004A241A    push        edi
 004A241B    mov         dword ptr [ebp-4],eax
 004A241E    call        TThread.GetCurrentThread
 004A2423    mov         eax,dword ptr [eax+4];TThread.FThreadID:Cardinal
 004A2426    mov         edx,dword ptr [ebp-4]
 004A2429    cmp         eax,dword ptr [edx+14]
>004A242C    jne         004A2442
 004A242E    mov         ecx,dword ptr ds:[4A24C0];0x2 gvar_004A24C0
 004A2434    mov         edx,dword ptr ds:[4A24C0];0x2 gvar_004A24C0
 004A243A    mov         eax,dword ptr [ebp-4]
 004A243D    call        004A24C4
 004A2442    xor         eax,eax
 004A2444    push        ebp
 004A2445    push        4A24B3
 004A244A    push        dword ptr fs:[eax]
 004A244D    mov         dword ptr fs:[eax],esp
 004A2450    xor         eax,eax
 004A2452    push        ebp
 004A2453    push        4A246F
 004A2458    push        dword ptr fs:[eax]
 004A245B    mov         dword ptr fs:[eax],esp
 004A245E    mov         eax,dword ptr [ebp-4]
 004A2461    mov         edx,dword ptr [eax]
 004A2463    call        dword ptr [edx]
 004A2465    xor         eax,eax
 004A2467    pop         edx
 004A2468    pop         ecx
 004A2469    pop         ecx
 004A246A    mov         dword ptr fs:[eax],edx
>004A246D    jmp         004A2494
>004A246F    jmp         @HandleAnyException
 004A2474    mov         eax,dword ptr [ebp-4]
 004A2477    test        byte ptr [eax+10],2
>004A247B    jne         004A248A
 004A247D    call        AcquireExceptionObject
 004A2482    mov         edx,dword ptr [ebp-4]
 004A2485    mov         dword ptr [edx+1C],eax
>004A2488    jmp         004A248F
 004A248A    call        @RaiseAgain
 004A248F    call        @DoneExcept
 004A2494    xor         eax,eax
 004A2496    pop         edx
 004A2497    pop         ecx
 004A2498    pop         ecx
 004A2499    mov         dword ptr fs:[eax],edx
 004A249C    push        4A24BA
 004A24A1    mov         eax,dword ptr [ebp-4]
 004A24A4    mov         edx,dword ptr [eax]
 004A24A6    call        dword ptr [edx+4]
 004A24A9    mov         eax,dword ptr [ebp-4]
 004A24AC    push        eax
 004A24AD    call        TInterfacedObject._Release
 004A24B2    ret
>004A24B3    jmp         @HandleFinally
>004A24B8    jmp         004A24A1
 004A24BA    pop         edi
 004A24BB    pop         esi
 004A24BC    pop         ebx
 004A24BD    pop         ecx
 004A24BE    pop         ebp
 004A24BF    ret
end;*}

//004A24C4
{*procedure sub_004A24C4(?:?; ?:?; ?:?);
begin
 004A24C4    push        ebx
 004A24C5    push        esi
 004A24C6    push        edi
 004A24C7    push        ebp
 004A24C8    add         esp,0FFFFFFF8
 004A24CB    mov         dword ptr [esp+4],ecx
 004A24CF    mov         dword ptr [esp],edx
 004A24D2    mov         esi,eax
 004A24D4    mov         ebx,dword ptr [esi+10]
 004A24D7    mov         edi,dword ptr [esp+4]
 004A24DB    not         edi
 004A24DD    and         edi,ebx
 004A24DF    or          edi,dword ptr [esp]
 004A24E2    mov         ebp,ebx
 004A24E4    mov         eax,ebp
 004A24E6    lock cmpxchgdword ptr [esi+10],edi
 004A24EB    cmp         eax,ebp
>004A24ED    jne         004A24D4
 004A24EF    pop         ecx
 004A24F0    pop         edx
 004A24F1    pop         ebp
 004A24F2    pop         edi
 004A24F3    pop         esi
 004A24F4    pop         ebx
 004A24F5    ret
end;*}

Initialization
//0079C710
{*
 0079C710    push        ebp
 0079C711    mov         ebp,esp
 0079C713    xor         eax,eax
 0079C715    push        ebp
 0079C716    push        79C7A5
 0079C71B    push        dword ptr fs:[eax]
 0079C71E    mov         dword ptr fs:[eax],esp
 0079C721    sub         dword ptr ds:[7CA3CC],1
>0079C728    jae         0079C797
 0079C72A    mov         eax,4A054C
 0079C72F    call        0040C4DC
 0079C734    mov         dl,1
 0079C736    mov         eax,[0041A094];TMultiReadExclusiveWriteSynchronizer
 0079C73B    call        TMultiReadExclusiveWriteSynchronizer.Create;TMultiReadExclusiveWriteSynchronizer.Create
 0079C740    mov         edx,eax
 0079C742    test        edx,edx
>0079C744    je          0079C749
 0079C746    sub         edx,0FFFFFFD4
 0079C749    mov         eax,7CA3B8;gvar_007CA3B8:IInterface
 0079C74E    call        @IntfCopy
 0079C753    mov         dl,1
 0079C755    mov         eax,[00432C80];TOrdinalIStringComparer
 0079C75A    call        TObject.Create;TOrdinalIStringComparer.Create
 0079C75F    mov         [007CA3D4],eax;gvar_007CA3D4:TOrdinalIStringComparer
 0079C764    mov         dl,1
 0079C766    mov         eax,[004835E0];TRegGroups
 0079C76B    call        TRegGroups.Create;TRegGroups.Create
 0079C770    mov         [007CA3D0],eax;gvar_007CA3D0:TRegGroups
 0079C775    mov         dl,1
 0079C777    mov         eax,[0048A14C];TThreadList<System.Classes.TIntConst>
 0079C77C    call        004A610C
 0079C781    mov         [007CA3D8],eax;gvar_007CA3D8:TThreadList<System.Classes.TIntConst>
 0079C786    mov         dl,1
 0079C788    mov         eax,[004943F8];TThreadList<System.Classes.TPropFixup>
 0079C78D    call        004A6EF4
 0079C792    mov         [007CA3E0],eax;gvar_007CA3E0:TThreadList<System.Classes.TPropFixup>
 0079C797    xor         eax,eax
 0079C799    pop         edx
 0079C79A    pop         ecx
 0079C79B    pop         ecx
 0079C79C    mov         dword ptr fs:[eax],edx
 0079C79F    push        79C7AC
 0079C7A4    ret
>0079C7A5    jmp         @HandleFinally
>0079C7AA    jmp         0079C7A4
 0079C7AC    pop         ebp
 0079C7AD    ret
*}
Finalization
//004A24F8
{*
 004A24F8    push        ebp
 004A24F9    mov         ebp,esp
 004A24FB    push        ebx
 004A24FC    xor         eax,eax
 004A24FE    push        ebp
 004A24FF    push        4A25D0
 004A2504    push        dword ptr fs:[eax]
 004A2507    mov         dword ptr fs:[eax],esp
 004A250A    inc         dword ptr ds:[7CA3CC]
>004A2510    jne         004A25C2
 004A2516    mov         eax,[007C7C54];gvar_007C7C54
 004A251B    call        00488AE8
 004A2520    mov         eax,[007CA3B8];gvar_007CA3B8:IInterface
 004A2525    mov         edx,dword ptr [eax]
 004A2527    call        dword ptr [edx+14]
 004A252A    call        004A04D4
 004A252F    xor         edx,edx
 004A2531    xor         eax,eax
 004A2533    call        RemoveFixupReferences
 004A2538    mov         eax,[007CA3E0];gvar_007CA3E0:TThreadList<System.Classes.TPropFixup>
 004A253D    xor         edx,edx
 004A253F    mov         dword ptr ds:[7CA3E0],edx;gvar_007CA3E0:TThreadList<System.Classes.TPropFixup>
 004A2545    call        TObject.Free
 004A254A    call        @GetTls
 004A254F    mov         ebx,dword ptr [eax+10];{threadvar_16}
 004A2555    call        @GetTls
 004A255A    xor         edx,edx
 004A255C    mov         dword ptr [eax+10],edx
 004A2562    mov         eax,ebx
 004A2564    call        TObject.Free
 004A2569    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 004A256E    xor         edx,edx
 004A2570    mov         dword ptr ds:[7CA3D0],edx;gvar_007CA3D0:TRegGroups
 004A2576    call        TObject.Free
 004A257B    mov         eax,[007CA3D4];gvar_007CA3D4:TOrdinalIStringComparer
 004A2580    xor         edx,edx
 004A2582    mov         dword ptr ds:[7CA3D4],edx;gvar_007CA3D4:TOrdinalIStringComparer
 004A2588    call        TObject.Free
 004A258D    mov         eax,7CA3B8;gvar_007CA3B8:IInterface
 004A2592    call        @IntfClear
 004A2597    mov         eax,4A054C
 004A259C    call        0040C4E4
 004A25A1    mov         eax,[007CA3DC];gvar_007CA3DC:TList<System.Classes.TFindGlobalComponent>
 004A25A6    xor         edx,edx
 004A25A8    mov         dword ptr ds:[7CA3DC],edx;gvar_007CA3DC:TList<System.Classes.TFindGlobalComponent>
 004A25AE    call        TObject.Free
 004A25B3    call        ReleaseObjectInstanceBlocks
 004A25B8    mov         eax,7CA3B8;gvar_007CA3B8:IInterface
 004A25BD    call        @IntfClear
 004A25C2    xor         eax,eax
 004A25C4    pop         edx
 004A25C5    pop         ecx
 004A25C6    pop         ecx
 004A25C7    mov         dword ptr fs:[eax],edx
 004A25CA    push        4A25D7
 004A25CF    ret
>004A25D0    jmp         @HandleFinally
>004A25D5    jmp         004A25CF
 004A25D7    pop         ebx
 004A25D8    pop         ebp
 004A25D9    ret
*}
end.