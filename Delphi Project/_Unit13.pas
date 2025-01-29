//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit13;

interface

uses
  SysUtils, Classes;

    function BobJenkinsHash(const Data:void ; Len:Integer; InitData:Integer):Integer;//004324F4
    //function sub_004329DC(?:Byte; ?:?; ?:?):?;//004329DC
    procedure sub_004329EC;//004329EC
    procedure sub_00432A60;//00432A60

implementation

//004324F4
function BobJenkinsHash(const Data:void ; Len:Integer; InitData:Integer):Integer;
begin
{*
 004324F4    push        ebp
 004324F5    mov         ebp,esp
 004324F7    add         esp,0FFFFFFE8
 004324FA    push        ebx
 004324FB    push        esi
 004324FC    push        edi
 004324FD    mov         dword ptr [ebp-0C],ecx
 00432500    mov         dword ptr [ebp-8],eax
 00432503    lea         ebx,[ebp-14]
 00432506    lea         ecx,[ebp-18]
 00432509    lea         eax,[ebp-10]
 0043250C    mov         esi,edx
 0043250E    add         esi,0DEADBEEF
 00432514    add         esi,dword ptr [ebp-0C]
 00432517    mov         dword ptr [eax],esi
 00432519    mov         esi,dword ptr [eax]
 0043251B    mov         dword ptr [ebx],esi
 0043251D    mov         esi,dword ptr [eax]
 0043251F    mov         dword ptr [ecx],esi
 00432521    mov         esi,dword ptr [ebp-8]
 00432524    mov         dword ptr [ebp-4],esi
 00432527    test        byte ptr [ebp-4],3
>0043252B    jne         00432732
 00432531    cmp         edx,0C
>00432534    jle         004325E5
 0043253A    mov         esi,dword ptr [ebp-4]
 0043253D    mov         esi,dword ptr [esi]
 0043253F    add         dword ptr [eax],esi
 00432541    mov         esi,dword ptr [ebp-4]
 00432544    mov         esi,dword ptr [esi+4]
 00432547    add         dword ptr [ebx],esi
 00432549    mov         esi,dword ptr [ebp-4]
 0043254C    mov         esi,dword ptr [esi+8]
 0043254F    add         dword ptr [ecx],esi
 00432551    mov         esi,dword ptr [ecx]
 00432553    sub         dword ptr [eax],esi
 00432555    mov         esi,dword ptr [ecx]
 00432557    shl         esi,4
 0043255A    mov         edi,dword ptr [ecx]
 0043255C    shr         edi,1C
 0043255F    or          esi,edi
 00432561    xor         dword ptr [eax],esi
 00432563    mov         esi,dword ptr [ebx]
 00432565    add         dword ptr [ecx],esi
 00432567    mov         esi,dword ptr [eax]
 00432569    sub         dword ptr [ebx],esi
 0043256B    mov         esi,dword ptr [eax]
 0043256D    shl         esi,6
 00432570    mov         edi,dword ptr [eax]
 00432572    shr         edi,1A
 00432575    or          esi,edi
 00432577    xor         dword ptr [ebx],esi
 00432579    mov         esi,dword ptr [ecx]
 0043257B    add         dword ptr [eax],esi
 0043257D    mov         esi,dword ptr [ebx]
 0043257F    sub         dword ptr [ecx],esi
 00432581    mov         esi,dword ptr [ebx]
 00432583    shl         esi,8
 00432586    mov         edi,dword ptr [ebx]
 00432588    shr         edi,18
 0043258B    or          esi,edi
 0043258D    xor         dword ptr [ecx],esi
 0043258F    mov         esi,dword ptr [eax]
 00432591    add         dword ptr [ebx],esi
 00432593    mov         esi,dword ptr [ecx]
 00432595    sub         dword ptr [eax],esi
 00432597    mov         esi,dword ptr [ecx]
 00432599    shl         esi,10
 0043259C    mov         edi,dword ptr [ecx]
 0043259E    shr         edi,10
 004325A1    or          esi,edi
 004325A3    xor         dword ptr [eax],esi
 004325A5    mov         esi,dword ptr [ebx]
 004325A7    add         dword ptr [ecx],esi
 004325A9    mov         esi,dword ptr [eax]
 004325AB    sub         dword ptr [ebx],esi
 004325AD    mov         esi,dword ptr [eax]
 004325AF    shl         esi,13
 004325B2    mov         edi,dword ptr [eax]
 004325B4    shr         edi,0D
 004325B7    or          esi,edi
 004325B9    xor         dword ptr [ebx],esi
 004325BB    mov         esi,dword ptr [ecx]
 004325BD    add         dword ptr [eax],esi
 004325BF    mov         esi,dword ptr [ebx]
 004325C1    sub         dword ptr [ecx],esi
 004325C3    mov         esi,dword ptr [ebx]
 004325C5    shl         esi,4
 004325C8    mov         edi,dword ptr [ebx]
 004325CA    shr         edi,1C
 004325CD    or          esi,edi
 004325CF    xor         dword ptr [ecx],esi
 004325D1    mov         esi,dword ptr [eax]
 004325D3    add         dword ptr [ebx],esi
 004325D5    sub         edx,0C
 004325D8    add         dword ptr [ebp-4],0C
 004325DC    cmp         edx,0C
>004325DF    jg          0043253A
 004325E5    cmp         edx,0C
>004325E8    ja          00432922
 004325EE    jmp         dword ptr [edx*4+4325F5]
 004325EE    dd          00432629
 004325EE    dd          00432630
 004325EE    dd          00432642
 004325EE    dd          00432654
 004325EE    dd          00432666
 004325EE    dd          00432672
 004325EE    dd          00432689
 004325EE    dd          004326A0
 004325EE    dd          004326B7
 004325EE    dd          004326C8
 004325EE    dd          004326E4
 004325EE    dd          00432700
 004325EE    dd          0043271C
 00432629    mov         eax,dword ptr [ecx]
>0043262B    jmp         004329A2
 00432630    mov         edx,dword ptr [ebp-4]
 00432633    mov         edx,dword ptr [edx]
 00432635    and         edx,0FF
 0043263B    add         dword ptr [eax],edx
>0043263D    jmp         00432922
 00432642    mov         edx,dword ptr [ebp-4]
 00432645    mov         edx,dword ptr [edx]
 00432647    and         edx,0FFFF
 0043264D    add         dword ptr [eax],edx
>0043264F    jmp         00432922
 00432654    mov         edx,dword ptr [ebp-4]
 00432657    mov         edx,dword ptr [edx]
 00432659    and         edx,0FFFFFF
 0043265F    add         dword ptr [eax],edx
>00432661    jmp         00432922
 00432666    mov         edx,dword ptr [ebp-4]
 00432669    mov         edx,dword ptr [edx]
 0043266B    add         dword ptr [eax],edx
>0043266D    jmp         00432922
 00432672    mov         edx,dword ptr [ebp-4]
 00432675    mov         esi,dword ptr [edx]
 00432677    add         dword ptr [eax],esi
 00432679    mov         edx,dword ptr [edx+4]
 0043267C    and         edx,0FF
 00432682    add         dword ptr [ebx],edx
>00432684    jmp         00432922
 00432689    mov         edx,dword ptr [ebp-4]
 0043268C    mov         esi,dword ptr [edx]
 0043268E    add         dword ptr [eax],esi
 00432690    mov         edx,dword ptr [edx+4]
 00432693    and         edx,0FFFF
 00432699    add         dword ptr [ebx],edx
>0043269B    jmp         00432922
 004326A0    mov         edx,dword ptr [ebp-4]
 004326A3    mov         esi,dword ptr [edx]
 004326A5    add         dword ptr [eax],esi
 004326A7    mov         edx,dword ptr [edx+4]
 004326AA    and         edx,0FFFFFF
 004326B0    add         dword ptr [ebx],edx
>004326B2    jmp         00432922
 004326B7    mov         edx,dword ptr [ebp-4]
 004326BA    mov         esi,dword ptr [edx]
 004326BC    add         dword ptr [eax],esi
 004326BE    mov         edx,dword ptr [edx+4]
 004326C1    add         dword ptr [ebx],edx
>004326C3    jmp         00432922
 004326C8    mov         edx,dword ptr [ebp-4]
 004326CB    mov         esi,dword ptr [edx]
 004326CD    add         dword ptr [eax],esi
 004326CF    mov         esi,dword ptr [edx+4]
 004326D2    add         dword ptr [ebx],esi
 004326D4    mov         edx,dword ptr [edx+8]
 004326D7    and         edx,0FF
 004326DD    add         dword ptr [ecx],edx
>004326DF    jmp         00432922
 004326E4    mov         edx,dword ptr [ebp-4]
 004326E7    mov         esi,dword ptr [edx]
 004326E9    add         dword ptr [eax],esi
 004326EB    mov         esi,dword ptr [edx+4]
 004326EE    add         dword ptr [ebx],esi
 004326F0    mov         edx,dword ptr [edx+8]
 004326F3    and         edx,0FFFF
 004326F9    add         dword ptr [ecx],edx
>004326FB    jmp         00432922
 00432700    mov         edx,dword ptr [ebp-4]
 00432703    mov         esi,dword ptr [edx]
 00432705    add         dword ptr [eax],esi
 00432707    mov         esi,dword ptr [edx+4]
 0043270A    add         dword ptr [ebx],esi
 0043270C    mov         edx,dword ptr [edx+8]
 0043270F    and         edx,0FFFFFF
 00432715    add         dword ptr [ecx],edx
>00432717    jmp         00432922
 0043271C    mov         edx,dword ptr [ebp-4]
 0043271F    mov         esi,dword ptr [edx]
 00432721    add         dword ptr [eax],esi
 00432723    mov         esi,dword ptr [edx+4]
 00432726    add         dword ptr [ebx],esi
 00432728    mov         edx,dword ptr [edx+8]
 0043272B    add         dword ptr [ecx],edx
>0043272D    jmp         00432922
 00432732    cmp         edx,0C
>00432735    jle         00432855
 0043273B    mov         esi,dword ptr [ebp-4]
 0043273E    movzx       esi,byte ptr [esi]
 00432741    mov         edi,dword ptr [ebp-4]
 00432744    movzx       edi,byte ptr [edi+1]
 00432748    shl         edi,8
 0043274B    add         esi,edi
 0043274D    mov         edi,dword ptr [ebp-4]
 00432750    movzx       edi,byte ptr [edi+2]
 00432754    shl         edi,10
 00432757    add         esi,edi
 00432759    mov         edi,dword ptr [ebp-4]
 0043275C    movzx       edi,byte ptr [edi+3]
 00432760    shl         edi,18
 00432763    add         esi,edi
 00432765    add         dword ptr [eax],esi
 00432767    mov         esi,dword ptr [ebp-4]
 0043276A    movzx       esi,byte ptr [esi+4]
 0043276E    mov         edi,dword ptr [ebp-4]
 00432771    movzx       edi,byte ptr [edi+5]
 00432775    shl         edi,8
 00432778    add         esi,edi
 0043277A    mov         edi,dword ptr [ebp-4]
 0043277D    movzx       edi,byte ptr [edi+6]
 00432781    shl         edi,10
 00432784    add         esi,edi
 00432786    mov         edi,dword ptr [ebp-4]
 00432789    movzx       edi,byte ptr [edi+7]
 0043278D    shl         edi,18
 00432790    add         esi,edi
 00432792    add         dword ptr [ebx],esi
 00432794    mov         esi,dword ptr [ebp-4]
 00432797    movzx       esi,byte ptr [esi+8]
 0043279B    mov         edi,dword ptr [ebp-4]
 0043279E    movzx       edi,byte ptr [edi+9]
 004327A2    shl         edi,8
 004327A5    add         esi,edi
 004327A7    mov         edi,dword ptr [ebp-4]
 004327AA    movzx       edi,byte ptr [edi+0A]
 004327AE    shl         edi,10
 004327B1    add         esi,edi
 004327B3    mov         edi,dword ptr [ebp-4]
 004327B6    movzx       edi,byte ptr [edi+0B]
 004327BA    shl         edi,18
 004327BD    add         esi,edi
 004327BF    add         dword ptr [ecx],esi
 004327C1    mov         esi,dword ptr [ecx]
 004327C3    sub         dword ptr [eax],esi
 004327C5    mov         esi,dword ptr [ecx]
 004327C7    shl         esi,4
 004327CA    mov         edi,dword ptr [ecx]
 004327CC    shr         edi,1C
 004327CF    or          esi,edi
 004327D1    xor         dword ptr [eax],esi
 004327D3    mov         esi,dword ptr [ebx]
 004327D5    add         dword ptr [ecx],esi
 004327D7    mov         esi,dword ptr [eax]
 004327D9    sub         dword ptr [ebx],esi
 004327DB    mov         esi,dword ptr [eax]
 004327DD    shl         esi,6
 004327E0    mov         edi,dword ptr [eax]
 004327E2    shr         edi,1A
 004327E5    or          esi,edi
 004327E7    xor         dword ptr [ebx],esi
 004327E9    mov         esi,dword ptr [ecx]
 004327EB    add         dword ptr [eax],esi
 004327ED    mov         esi,dword ptr [ebx]
 004327EF    sub         dword ptr [ecx],esi
 004327F1    mov         esi,dword ptr [ebx]
 004327F3    shl         esi,8
 004327F6    mov         edi,dword ptr [ebx]
 004327F8    shr         edi,18
 004327FB    or          esi,edi
 004327FD    xor         dword ptr [ecx],esi
 004327FF    mov         esi,dword ptr [eax]
 00432801    add         dword ptr [ebx],esi
 00432803    mov         esi,dword ptr [ecx]
 00432805    sub         dword ptr [eax],esi
 00432807    mov         esi,dword ptr [ecx]
 00432809    shl         esi,10
 0043280C    mov         edi,dword ptr [ecx]
 0043280E    shr         edi,10
 00432811    or          esi,edi
 00432813    xor         dword ptr [eax],esi
 00432815    mov         esi,dword ptr [ebx]
 00432817    add         dword ptr [ecx],esi
 00432819    mov         esi,dword ptr [eax]
 0043281B    sub         dword ptr [ebx],esi
 0043281D    mov         esi,dword ptr [eax]
 0043281F    shl         esi,13
 00432822    mov         edi,dword ptr [eax]
 00432824    shr         edi,0D
 00432827    or          esi,edi
 00432829    xor         dword ptr [ebx],esi
 0043282B    mov         esi,dword ptr [ecx]
 0043282D    add         dword ptr [eax],esi
 0043282F    mov         esi,dword ptr [ebx]
 00432831    sub         dword ptr [ecx],esi
 00432833    mov         esi,dword ptr [ebx]
 00432835    shl         esi,4
 00432838    mov         edi,dword ptr [ebx]
 0043283A    shr         edi,1C
 0043283D    or          esi,edi
 0043283F    xor         dword ptr [ecx],esi
 00432841    mov         esi,dword ptr [eax]
 00432843    add         dword ptr [ebx],esi
 00432845    sub         edx,0C
 00432848    add         dword ptr [ebp-4],0C
 0043284C    cmp         edx,0C
>0043284F    jg          0043273B
 00432855    cmp         edx,0C
>00432858    ja          0043289C
 0043285A    jmp         dword ptr [edx*4+432861]
 0043285A    dd          00432895
 0043285A    dd          0043291A
 0043285A    dd          0043290E
 0043285A    dd          00432902
 0043285A    dd          004328F6
 0043285A    dd          004328ED
 0043285A    dd          004328E1
 0043285A    dd          004328D5
 0043285A    dd          004328C9
 0043285A    dd          004328C0
 0043285A    dd          004328B4
 0043285A    dd          004328A8
 0043285A    dd          0043289C
 00432895    mov         eax,dword ptr [ecx]
>00432897    jmp         004329A2
 0043289C    mov         edx,dword ptr [ebp-4]
 0043289F    movzx       edx,byte ptr [edx+0B]
 004328A3    shl         edx,18
 004328A6    add         dword ptr [ecx],edx
 004328A8    mov         edx,dword ptr [ebp-4]
 004328AB    movzx       edx,byte ptr [edx+0A]
 004328AF    shl         edx,10
 004328B2    add         dword ptr [ecx],edx
 004328B4    mov         edx,dword ptr [ebp-4]
 004328B7    movzx       edx,byte ptr [edx+9]
 004328BB    shl         edx,8
 004328BE    add         dword ptr [ecx],edx
 004328C0    mov         edx,dword ptr [ebp-4]
 004328C3    movzx       edx,byte ptr [edx+8]
 004328C7    add         dword ptr [ecx],edx
 004328C9    mov         edx,dword ptr [ebp-4]
 004328CC    movzx       edx,byte ptr [edx+7]
 004328D0    shl         edx,18
 004328D3    add         dword ptr [ebx],edx
 004328D5    mov         edx,dword ptr [ebp-4]
 004328D8    movzx       edx,byte ptr [edx+6]
 004328DC    shl         edx,10
 004328DF    add         dword ptr [ebx],edx
 004328E1    mov         edx,dword ptr [ebp-4]
 004328E4    movzx       edx,byte ptr [edx+5]
 004328E8    shl         edx,8
 004328EB    add         dword ptr [ebx],edx
 004328ED    mov         edx,dword ptr [ebp-4]
 004328F0    movzx       edx,byte ptr [edx+4]
 004328F4    add         dword ptr [ebx],edx
 004328F6    mov         edx,dword ptr [ebp-4]
 004328F9    movzx       edx,byte ptr [edx+3]
 004328FD    shl         edx,18
 00432900    add         dword ptr [eax],edx
 00432902    mov         edx,dword ptr [ebp-4]
 00432905    movzx       edx,byte ptr [edx+2]
 00432909    shl         edx,10
 0043290C    add         dword ptr [eax],edx
 0043290E    mov         edx,dword ptr [ebp-4]
 00432911    movzx       edx,byte ptr [edx+1]
 00432915    shl         edx,8
 00432918    add         dword ptr [eax],edx
 0043291A    mov         edx,dword ptr [ebp-4]
 0043291D    movzx       edx,byte ptr [edx]
 00432920    add         dword ptr [eax],edx
 00432922    mov         edx,dword ptr [ebx]
 00432924    xor         dword ptr [ecx],edx
 00432926    mov         edx,dword ptr [ebx]
 00432928    shl         edx,0E
 0043292B    mov         esi,dword ptr [ebx]
 0043292D    shr         esi,12
 00432930    or          edx,esi
 00432932    sub         dword ptr [ecx],edx
 00432934    mov         edx,dword ptr [ecx]
 00432936    xor         dword ptr [eax],edx
 00432938    mov         edx,dword ptr [ecx]
 0043293A    shl         edx,0B
 0043293D    mov         esi,dword ptr [ecx]
 0043293F    shr         esi,15
 00432942    or          edx,esi
 00432944    sub         dword ptr [eax],edx
 00432946    mov         edx,dword ptr [eax]
 00432948    xor         dword ptr [ebx],edx
 0043294A    mov         edx,dword ptr [eax]
 0043294C    shl         edx,19
 0043294F    mov         esi,dword ptr [eax]
 00432951    shr         esi,7
 00432954    or          edx,esi
 00432956    sub         dword ptr [ebx],edx
 00432958    mov         edx,dword ptr [ebx]
 0043295A    xor         dword ptr [ecx],edx
 0043295C    mov         edx,dword ptr [ebx]
 0043295E    shl         edx,10
 00432961    mov         esi,dword ptr [ebx]
 00432963    shr         esi,10
 00432966    or          edx,esi
 00432968    sub         dword ptr [ecx],edx
 0043296A    mov         edx,dword ptr [ecx]
 0043296C    xor         dword ptr [eax],edx
 0043296E    mov         edx,dword ptr [ecx]
 00432970    shl         edx,4
 00432973    mov         esi,dword ptr [ecx]
 00432975    shr         esi,1C
 00432978    or          edx,esi
 0043297A    sub         dword ptr [eax],edx
 0043297C    mov         edx,dword ptr [eax]
 0043297E    xor         dword ptr [ebx],edx
 00432980    mov         edx,dword ptr [eax]
 00432982    shl         edx,0E
 00432985    mov         eax,dword ptr [eax]
 00432987    shr         eax,12
 0043298A    or          edx,eax
 0043298C    sub         dword ptr [ebx],edx
 0043298E    mov         eax,dword ptr [ebx]
 00432990    xor         dword ptr [ecx],eax
 00432992    mov         eax,dword ptr [ebx]
 00432994    shl         eax,18
 00432997    mov         edx,dword ptr [ebx]
 00432999    shr         edx,8
 0043299C    or          eax,edx
 0043299E    sub         dword ptr [ecx],eax
 004329A0    mov         eax,dword ptr [ecx]
 004329A2    pop         edi
 004329A3    pop         esi
 004329A4    pop         ebx
 004329A5    mov         esp,ebp
 004329A7    pop         ebp
 004329A8    ret
*}
end;

//004329DC
{*function sub_004329DC(?:Byte; ?:?; ?:?):?;
begin
 004329DC    cmp         edx,eax
>004329DE    jle         004329E3
 004329E0    mov         eax,edx
 004329E2    ret
 004329E3    cmp         ecx,eax
>004329E5    jge         004329E9
 004329E7    mov         eax,ecx
 004329E9    ret
end;*}

//004329EC
procedure sub_004329EC;
begin
{*
 004329EC    push        ebx
 004329ED    mov         eax,1
 004329F2    cpuid
 004329F4    xor         eax,eax
 004329F6    test        edx,2000000
>004329FC    je          00432A01
 004329FE    or          eax,1
 00432A01    test        edx,4000000
>00432A07    je          00432A0C
 00432A09    or          eax,2
 00432A0C    test        ecx,1
>00432A12    je          00432A17
 00432A14    or          eax,4
 00432A17    test        ecx,200
>00432A1D    je          00432A22
 00432A1F    or          eax,8
 00432A22    test        ecx,80000
>00432A28    je          00432A2D
 00432A2A    or          eax,10
 00432A2D    test        ecx,100000
>00432A33    je          00432A38
 00432A35    or          eax,20
 00432A38    test        ecx,800000;gvar_00800000
>00432A3E    je          00432A43
 00432A40    or          eax,40
 00432A43    test        ecx,2000000
>00432A49    je          00432A4E
 00432A4B    or          eax,40
 00432A4E    test        ecx,2
>00432A54    je          00432A5B
 00432A56    or          eax,100
 00432A5B    pop         ebx
 00432A5C    ret
*}
end;

//00432A60
procedure sub_00432A60;
begin
{*
 00432A60    mov         eax,[007C4EE4];^gvar_007C5060
 00432A65    cmp         dword ptr [eax],0
>00432A68    je          00432A77
 00432A6A    call        004329EC
 00432A6F    mov         edx,dword ptr ds:[7C4EE4];^gvar_007C5060
 00432A75    mov         dword ptr [edx],eax
 00432A77    ret
*}
end;

Initialization
//0079C5C4
{*
 0079C5C4    sub         dword ptr ds:[7C9F6C],1
>0079C5CB    jae         0079C5D2
 0079C5CD    call        00432A60
 0079C5D2    ret
*}
Finalization
end.