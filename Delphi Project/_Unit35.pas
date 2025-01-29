//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit35;

interface

uses
  SysUtils, Classes;

    procedure sub_004D7268;//004D7268
    //function sub_004D7280:?;//004D7280
    //function sub_004D7288:?;//004D7288
    //procedure sub_004D72AC(?:LongInt; ?:?; ?:?; ?:?);//004D72AC
    //function sub_004D75E8(?:?; ?:?; ?:?; ?:?; ?:?):?;//004D75E8
    //function sub_004D76D0(?:?):?;//004D76D0
    //function sub_004D76FC(?:?; ?:?; ?:?):?;//004D76FC
    //function sub_004D7934(?:LongInt; ?:?):?;//004D7934
    //function sub_004D79C0(?:LongInt; ?:?):?;//004D79C0
    //function sub_004D7A98(?:LongInt; ?:?):?;//004D7A98
    //procedure sub_004D7B70(?:TCanvas; ?:?; ?:?; ?:?);//004D7B70
    //procedure sub_004D7C44(?:TCanvas; ?:TColor; ?:TColor; ?:?; ?:?);//004D7C44

implementation

//004D7268
procedure sub_004D7268;
begin
{*
 004D7268    jmp         dword ptr ds:[908278]
*}
end;

//004D7280
{*function sub_004D7280:?;
begin
 004D7280    jmp         dword ptr ds:[908274]
end;*}

//004D7288
{*function sub_004D7288:?;
begin
 004D7288    push        ecx
 004D7289    mov         eax,[007C4590];^gvar_0079EDE0
 004D728E    cmp         dword ptr [eax],6
>004D7291    jl          004D72A3
 004D7293    push        esp
 004D7294    call        004D7280
 004D7299    test        eax,eax
>004D729B    jne         004D72A3
 004D729D    cmp         dword ptr [esp],0
>004D72A1    jne         004D72A7
 004D72A3    xor         eax,eax
 004D72A5    pop         edx
 004D72A6    ret
 004D72A7    mov         al,1
 004D72A9    pop         edx
 004D72AA    ret
end;*}

//004D72AC
{*procedure sub_004D72AC(?:LongInt; ?:?; ?:?; ?:?);
begin
 004D72AC    push        ebp
 004D72AD    mov         ebp,esp
 004D72AF    add         esp,0FFFFFFC0
 004D72B2    push        ebx
 004D72B3    push        esi
 004D72B4    push        edi
 004D72B5    mov         dword ptr [ebp-8],ecx
 004D72B8    mov         dword ptr [ebp-4],edx
 004D72BB    mov         esi,eax
 004D72BD    call        @GetTls
 004D72C2    cmp         esi,dword ptr [eax+18];{threadvar_24}
>004D72C8    jne         004D7305
 004D72CA    call        @GetTls
 004D72CF    movzx       eax,word ptr [eax+1C];{threadvar_28}
 004D72D6    mov         edx,dword ptr [ebp-4]
 004D72D9    mov         word ptr [edx],ax
 004D72DC    call        @GetTls
 004D72E1    movzx       eax,word ptr [eax+1E];{threadvar_30}
 004D72E8    mov         edx,dword ptr [ebp-8]
 004D72EB    mov         word ptr [edx],ax
 004D72EE    call        @GetTls
 004D72F3    movzx       eax,word ptr [eax+20];{threadvar_32}
 004D72FA    mov         edx,dword ptr [ebp+8]
 004D72FD    mov         word ptr [edx],ax
>004D7300    jmp         004D75BF
 004D7305    mov         ebx,esi
 004D7307    movzx       ebx,bl
 004D730A    mov         eax,esi
 004D730C    shr         eax,8
 004D730F    movzx       edi,al
 004D7312    mov         eax,esi
 004D7314    shr         eax,10
 004D7317    movzx       eax,al
 004D731A    mov         word ptr [ebp-22],ax
 004D731E    movzx       edx,di
 004D7321    movzx       eax,bx
 004D7324    cmp         edx,eax
>004D7326    jge         004D732C
 004D7328    mov         edx,eax
>004D732A    jmp         004D732F
 004D732C    movzx       edx,di
 004D732F    movzx       ecx,word ptr [ebp-22]
 004D7333    cmp         edx,ecx
>004D7335    jg          004D733B
 004D7337    movzx       edx,word ptr [ebp-22]
 004D733B    mov         dword ptr [ebp-40],edx
 004D733E    fild        dword ptr [ebp-40]
 004D7341    fstp        qword ptr [ebp-30]
 004D7344    wait
 004D7345    movzx       edx,di
 004D7348    cmp         eax,edx
>004D734A    jl          004D734F
 004D734C    movzx       eax,di
 004D734F    movzx       edx,word ptr [ebp-22]
 004D7353    cmp         eax,edx
>004D7355    jl          004D735B
 004D7357    movzx       eax,word ptr [ebp-22]
 004D735B    mov         dword ptr [ebp-40],eax
 004D735E    fild        dword ptr [ebp-40]
 004D7361    fstp        qword ptr [ebp-38]
 004D7364    wait
 004D7365    fld         qword ptr [ebp-30]
 004D7368    fadd        qword ptr [ebp-38]
 004D736B    fmul        dword ptr ds:[4D75C8];240:Single
 004D7371    fadd        dword ptr ds:[4D75CC];255:Single
 004D7377    fdiv        dword ptr ds:[4D75D0];510:Single
 004D737D    fstp        qword ptr [ebp-18]
 004D7380    wait
 004D7381    fld         qword ptr [ebp-18]
 004D7384    call        @TRUNC
 004D7389    mov         edx,dword ptr [ebp-8]
 004D738C    mov         word ptr [edx],ax
 004D738F    fld         qword ptr [ebp-30]
 004D7392    fcomp       qword ptr [ebp-38]
 004D7395    wait
 004D7396    fnstsw      al
 004D7398    sahf
>004D7399    jne         004D73B0
 004D739B    mov         eax,dword ptr [ebp-4]
 004D739E    mov         word ptr [eax],0A0
 004D73A3    mov         eax,dword ptr [ebp+8]
 004D73A6    mov         word ptr [eax],0
>004D73AB    jmp         004D757E
 004D73B0    mov         eax,dword ptr [ebp-8]
 004D73B3    movzx       eax,word ptr [eax]
 004D73B6    mov         dword ptr [ebp-40],eax
 004D73B9    fild        dword ptr [ebp-40]
 004D73BC    fcomp       dword ptr ds:[4D75D4];120:Single
 004D73C2    wait
 004D73C3    fnstsw      al
 004D73C5    sahf
>004D73C6    ja          004D73F0
 004D73C8    fld         qword ptr [ebp-30]
 004D73CB    fsub        qword ptr [ebp-38]
 004D73CE    fmul        dword ptr ds:[4D75C8];240:Single
 004D73D4    fld         qword ptr [ebp-30]
 004D73D7    fadd        qword ptr [ebp-38]
 004D73DA    fdiv        dword ptr ds:[4D75D8];2:Single
 004D73E0    faddp       st(1),st
 004D73E2    fld         qword ptr [ebp-30]
 004D73E5    fadd        qword ptr [ebp-38]
 004D73E8    fdivp       st(1),st
 004D73EA    fstp        qword ptr [ebp-20]
 004D73ED    wait
>004D73EE    jmp         004D7422
 004D73F0    fld         qword ptr [ebp-30]
 004D73F3    fsub        qword ptr [ebp-38]
 004D73F6    fmul        dword ptr ds:[4D75C8];240:Single
 004D73FC    fld         dword ptr ds:[4D75D0];510:Single
 004D7402    fsub        qword ptr [ebp-30]
 004D7405    fsub        qword ptr [ebp-38]
 004D7408    fdiv        dword ptr ds:[4D75D8];2:Single
 004D740E    faddp       st(1),st
 004D7410    fld         dword ptr ds:[4D75D0];510:Single
 004D7416    fsub        qword ptr [ebp-30]
 004D7419    fsub        qword ptr [ebp-38]
 004D741C    fdivp       st(1),st
 004D741E    fstp        qword ptr [ebp-20]
 004D7421    wait
 004D7422    movzx       eax,bx
 004D7425    mov         dword ptr [ebp-40],eax
 004D7428    fild        dword ptr [ebp-40]
 004D742B    fsubr       qword ptr [ebp-30]
 004D742E    fmul        dword ptr ds:[4D75DC];40:Single
 004D7434    fld         qword ptr [ebp-30]
 004D7437    fsub        qword ptr [ebp-38]
 004D743A    fdiv        dword ptr ds:[4D75D8];2:Single
 004D7440    faddp       st(1),st
 004D7442    fld         qword ptr [ebp-30]
 004D7445    fsub        qword ptr [ebp-38]
 004D7448    fdivp       st(1),st
 004D744A    call        @TRUNC
 004D744F    mov         word ptr [ebp-3A],ax
 004D7453    movzx       eax,di
 004D7456    mov         dword ptr [ebp-40],eax
 004D7459    fild        dword ptr [ebp-40]
 004D745C    fsubr       qword ptr [ebp-30]
 004D745F    fmul        dword ptr ds:[4D75DC];40:Single
 004D7465    fld         qword ptr [ebp-30]
 004D7468    fsub        qword ptr [ebp-38]
 004D746B    fdiv        dword ptr ds:[4D75D8];2:Single
 004D7471    faddp       st(1),st
 004D7473    fld         qword ptr [ebp-30]
 004D7476    fsub        qword ptr [ebp-38]
 004D7479    fdivp       st(1),st
 004D747B    call        @TRUNC
 004D7480    mov         word ptr [ebp-3C],ax
 004D7484    movzx       eax,word ptr [ebp-22]
 004D7488    mov         dword ptr [ebp-40],eax
 004D748B    fild        dword ptr [ebp-40]
 004D748E    fsubr       qword ptr [ebp-30]
 004D7491    fmul        dword ptr ds:[4D75DC];40:Single
 004D7497    fld         qword ptr [ebp-30]
 004D749A    fsub        qword ptr [ebp-38]
 004D749D    fdiv        dword ptr ds:[4D75D8];2:Single
 004D74A3    faddp       st(1),st
 004D74A5    fld         qword ptr [ebp-30]
 004D74A8    fsub        qword ptr [ebp-38]
 004D74AB    fdivp       st(1),st
 004D74AD    call        @TRUNC
 004D74B2    mov         edx,eax
 004D74B4    movzx       eax,bx
 004D74B7    mov         dword ptr [ebp-40],eax
 004D74BA    fild        dword ptr [ebp-40]
 004D74BD    fcomp       qword ptr [ebp-30]
 004D74C0    wait
 004D74C1    fnstsw      al
 004D74C3    sahf
>004D74C4    jne         004D74DB
 004D74C6    movzx       eax,dx
 004D74C9    movzx       edx,word ptr [ebp-3C]
 004D74CD    sub         eax,edx
 004D74CF    mov         dword ptr [ebp-40],eax
 004D74D2    fild        dword ptr [ebp-40]
 004D74D5    fstp        qword ptr [ebp-10]
 004D74D8    wait
>004D74D9    jmp         004D752E
 004D74DB    movzx       eax,di
 004D74DE    mov         dword ptr [ebp-40],eax
 004D74E1    fild        dword ptr [ebp-40]
 004D74E4    fcomp       qword ptr [ebp-30]
 004D74E7    wait
 004D74E8    fnstsw      al
 004D74EA    sahf
>004D74EB    jne         004D750E
 004D74ED    movzx       eax,word ptr [ebp-3A]
 004D74F1    mov         dword ptr [ebp-40],eax
 004D74F4    fild        dword ptr [ebp-40]
 004D74F7    fadd        dword ptr ds:[4D75E0];80:Single
 004D74FD    movzx       eax,dx
 004D7500    mov         dword ptr [ebp-40],eax
 004D7503    fild        dword ptr [ebp-40]
 004D7506    fsubp       st(1),st
 004D7508    fstp        qword ptr [ebp-10]
 004D750B    wait
>004D750C    jmp         004D752E
 004D750E    movzx       eax,word ptr [ebp-3C]
 004D7512    mov         dword ptr [ebp-40],eax
 004D7515    fild        dword ptr [ebp-40]
 004D7518    fadd        dword ptr ds:[4D75E4];160:Single
 004D751E    movzx       eax,word ptr [ebp-3A]
 004D7522    mov         dword ptr [ebp-40],eax
 004D7525    fild        dword ptr [ebp-40]
 004D7528    fsubp       st(1),st
 004D752A    fstp        qword ptr [ebp-10]
 004D752D    wait
 004D752E    fldz
 004D7530    fcomp       qword ptr [ebp-10]
 004D7533    wait
 004D7534    fnstsw      al
 004D7536    sahf
>004D7537    jbe         004D7546
 004D7539    fld         qword ptr [ebp-10]
 004D753C    fadd        dword ptr ds:[4D75C8];240:Single
 004D7542    fstp        qword ptr [ebp-10]
 004D7545    wait
 004D7546    fld         qword ptr [ebp-10]
 004D7549    fcomp       dword ptr ds:[4D75C8];240:Single
 004D754F    wait
 004D7550    fnstsw      al
 004D7552    sahf
>004D7553    jbe         004D7562
 004D7555    fld         qword ptr [ebp-10]
 004D7558    fsub        dword ptr ds:[4D75C8];240:Single
 004D755E    fstp        qword ptr [ebp-10]
 004D7561    wait
 004D7562    fld         qword ptr [ebp-10]
 004D7565    call        @ROUND
 004D756A    mov         edx,dword ptr [ebp-4]
 004D756D    mov         word ptr [edx],ax
 004D7570    fld         qword ptr [ebp-20]
 004D7573    call        @TRUNC
 004D7578    mov         edx,dword ptr [ebp+8]
 004D757B    mov         word ptr [edx],ax
 004D757E    call        @GetTls
 004D7583    mov         dword ptr [eax+18],esi;{threadvar_24}
 004D7589    call        @GetTls
 004D758E    mov         edx,dword ptr [ebp-4]
 004D7591    movzx       edx,word ptr [edx]
 004D7594    mov         word ptr [eax+1C],dx
 004D759B    call        @GetTls
 004D75A0    mov         edx,dword ptr [ebp-8]
 004D75A3    movzx       edx,word ptr [edx]
 004D75A6    mov         word ptr [eax+1E],dx
 004D75AD    call        @GetTls
 004D75B2    mov         edx,dword ptr [ebp+8]
 004D75B5    movzx       edx,word ptr [edx]
 004D75B8    mov         word ptr [eax+20],dx
 004D75BF    pop         edi
 004D75C0    pop         esi
 004D75C1    pop         ebx
 004D75C2    mov         esp,ebp
 004D75C4    pop         ebp
 004D75C5    ret         4
end;*}

//004D75E8
{*function sub_004D75E8(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004D75E8    push        ebp
 004D75E9    mov         ebp,esp
 004D75EB    add         esp,0FFFFFFF8
 004D75EE    fldz
 004D75F0    fcomp       qword ptr [ebp+8]
 004D75F3    wait
 004D75F4    fnstsw      al
 004D75F6    sahf
>004D75F7    jbe         004D7606
 004D75F9    fld         qword ptr [ebp+8]
 004D75FC    fadd        dword ptr ds:[4D76BC];240:Single
 004D7602    fstp        qword ptr [ebp+8]
 004D7605    wait
 004D7606    fld         qword ptr [ebp+8]
 004D7609    fcomp       dword ptr ds:[4D76BC];240:Single
 004D760F    wait
 004D7610    fnstsw      al
 004D7612    sahf
>004D7613    jbe         004D7622
 004D7615    fld         qword ptr [ebp+8]
 004D7618    fsub        dword ptr ds:[4D76BC];240:Single
 004D761E    fstp        qword ptr [ebp+8]
 004D7621    wait
 004D7622    fld         qword ptr [ebp+8]
 004D7625    fcomp       dword ptr ds:[4D76C0];40:Single
 004D762B    wait
 004D762C    fnstsw      al
 004D762E    sahf
>004D762F    jae         004D764F
 004D7631    fld         qword ptr [ebp+10]
 004D7634    fsub        qword ptr [ebp+18]
 004D7637    fmul        qword ptr [ebp+8]
 004D763A    fadd        dword ptr ds:[4D76C4];20:Single
 004D7640    fdiv        dword ptr ds:[4D76C0];40:Single
 004D7646    fadd        qword ptr [ebp+18]
 004D7649    fstp        qword ptr [ebp-8]
 004D764C    wait
>004D764D    jmp         004D76AD
 004D764F    fld         qword ptr [ebp+8]
 004D7652    fcomp       dword ptr ds:[4D76C8];120:Single
 004D7658    wait
 004D7659    fnstsw      al
 004D765B    sahf
>004D765C    jae         004D766C
 004D765E    mov         eax,dword ptr [ebp+10]
 004D7661    mov         dword ptr [ebp-8],eax
 004D7664    mov         eax,dword ptr [ebp+14]
 004D7667    mov         dword ptr [ebp-4],eax
>004D766A    jmp         004D76AD
 004D766C    fld         qword ptr [ebp+8]
 004D766F    fcomp       dword ptr ds:[4D76CC];160:Single
 004D7675    wait
 004D7676    fnstsw      al
 004D7678    sahf
>004D7679    jae         004D76A1
 004D767B    fld         qword ptr [ebp+10]
 004D767E    fsub        qword ptr [ebp+18]
 004D7681    fld         dword ptr ds:[4D76CC];160:Single
 004D7687    fsub        qword ptr [ebp+8]
 004D768A    fmulp       st(1),st
 004D768C    fadd        dword ptr ds:[4D76C4];20:Single
 004D7692    fdiv        dword ptr ds:[4D76C0];40:Single
 004D7698    fadd        qword ptr [ebp+18]
 004D769B    fstp        qword ptr [ebp-8]
 004D769E    wait
>004D769F    jmp         004D76AD
 004D76A1    mov         eax,dword ptr [ebp+18]
 004D76A4    mov         dword ptr [ebp-8],eax
 004D76A7    mov         eax,dword ptr [ebp+1C]
 004D76AA    mov         dword ptr [ebp-4],eax
 004D76AD    fld         qword ptr [ebp-8]
 004D76B0    call        @ROUND
 004D76B5    pop         ecx
 004D76B6    pop         ecx
 004D76B7    pop         ebp
 004D76B8    ret         18
end;*}

//004D76D0
{*function sub_004D76D0(?:?):?;
begin
 004D76D0    push        ebp
 004D76D1    mov         ebp,esp
 004D76D3    fld         qword ptr [ebp+8]
 004D76D6    fcomp       dword ptr ds:[4D76F8];255:Single
 004D76DC    wait
 004D76DD    fnstsw      al
 004D76DF    sahf
>004D76E0    jbe         004D76E9
 004D76E2    mov         eax,0FF
>004D76E7    jmp         004D76F1
 004D76E9    fld         qword ptr [ebp+8]
 004D76EC    call        @ROUND
 004D76F1    pop         ebp
 004D76F2    ret         8
end;*}

//004D76FC
{*function sub_004D76FC(?:?; ?:?; ?:?):?;
begin
 004D76FC    push        ebx
 004D76FD    push        esi
 004D76FE    push        edi
 004D76FF    add         esp,0FFFFFFC8
 004D7702    mov         esi,eax
 004D7704    test        cx,cx
>004D7707    jne         004D775D
 004D7709    movzx       eax,dx
 004D770C    mov         edx,eax
 004D770E    shl         eax,8
 004D7711    sub         eax,edx
 004D7713    mov         dword ptr [esp+2C],eax
 004D7717    fild        dword ptr [esp+2C]
 004D771B    fdiv        dword ptr ds:[4D7924];240:Single
 004D7721    fstp        qword ptr [esp]
 004D7724    wait
 004D7725    mov         eax,dword ptr [esp]
 004D7728    mov         dword ptr [esp+8],eax
 004D772C    mov         eax,dword ptr [esp+4]
 004D7730    mov         dword ptr [esp+0C],eax
 004D7734    mov         eax,dword ptr [esp]
 004D7737    mov         dword ptr [esp+10],eax
 004D773B    mov         eax,dword ptr [esp+4]
 004D773F    mov         dword ptr [esp+14],eax
 004D7743    movzx       eax,si
 004D7746    mov         dword ptr [esp+2C],eax
 004D774A    fild        dword ptr [esp+2C]
 004D774E    fcomp       dword ptr ds:[4D7928];160:Single
 004D7754    wait
 004D7755    fnstsw      al
 004D7757    sahf
>004D7758    jmp         004D78D6
 004D775D    movzx       eax,dx
 004D7760    mov         dword ptr [esp+2C],eax
 004D7764    fild        dword ptr [esp+2C]
 004D7768    fcomp       dword ptr ds:[4D792C];120:Single
 004D776E    wait
 004D776F    fnstsw      al
 004D7771    sahf
>004D7772    ja          004D779E
 004D7774    movzx       eax,dx
 004D7777    movzx       ecx,cx
 004D777A    add         ecx,0F0
 004D7780    imul        eax,ecx
 004D7783    mov         dword ptr [esp+2C],eax
 004D7787    fild        dword ptr [esp+2C]
 004D778B    fadd        dword ptr ds:[4D792C];120:Single
 004D7791    fdiv        dword ptr ds:[4D7924];240:Single
 004D7797    fstp        qword ptr [esp+20]
 004D779B    wait
>004D779C    jmp         004D77CE
 004D779E    movzx       eax,dx
 004D77A1    mov         edi,eax
 004D77A3    movzx       ebx,cx
 004D77A6    imul        edi,ebx
 004D77A9    mov         dword ptr [esp+2C],edi
 004D77AD    fild        dword ptr [esp+2C]
 004D77B1    fadd        dword ptr ds:[4D792C];120:Single
 004D77B7    fdiv        dword ptr ds:[4D7924];240:Single
 004D77BD    add         eax,ebx
 004D77BF    mov         dword ptr [esp+2C],eax
 004D77C3    fild        dword ptr [esp+2C]
 004D77C7    fsubrp      st(1),st
 004D77C9    fstp        qword ptr [esp+20]
 004D77CD    wait
 004D77CE    movzx       eax,dx
 004D77D1    add         eax,eax
 004D77D3    mov         dword ptr [esp+2C],eax
 004D77D7    fild        dword ptr [esp+2C]
 004D77DB    fsub        qword ptr [esp+20]
 004D77DF    fstp        qword ptr [esp+18]
 004D77E3    wait
 004D77E4    push        dword ptr [esp+1C]
 004D77E8    push        dword ptr [esp+1C]
 004D77EC    push        dword ptr [esp+2C]
 004D77F0    push        dword ptr [esp+2C]
 004D77F4    movzx       eax,si
 004D77F7    mov         dword ptr [esp+3C],eax
 004D77FB    fild        dword ptr [esp+3C]
 004D77FF    fadd        dword ptr ds:[4D7930];80:Single
 004D7805    fstp        qword ptr [esp+40]
 004D7809    wait
 004D780A    push        dword ptr [esp+44]
 004D780E    push        dword ptr [esp+44]
 004D7812    call        004D75E8
 004D7817    mov         edx,eax
 004D7819    shl         eax,8
 004D781C    sub         eax,edx
 004D781E    mov         dword ptr [esp+2C],eax
 004D7822    fild        dword ptr [esp+2C]
 004D7826    fadd        dword ptr ds:[4D792C];120:Single
 004D782C    fdiv        dword ptr ds:[4D7924];240:Single
 004D7832    fstp        qword ptr [esp]
 004D7835    wait
 004D7836    push        dword ptr [esp+1C]
 004D783A    push        dword ptr [esp+1C]
 004D783E    push        dword ptr [esp+2C]
 004D7842    push        dword ptr [esp+2C]
 004D7846    movzx       eax,si
 004D7849    mov         dword ptr [esp+3C],eax
 004D784D    fild        dword ptr [esp+3C]
 004D7851    fstp        qword ptr [esp+40]
 004D7855    wait
 004D7856    push        dword ptr [esp+44]
 004D785A    push        dword ptr [esp+44]
 004D785E    call        004D75E8
 004D7863    mov         edx,eax
 004D7865    shl         eax,8
 004D7868    sub         eax,edx
 004D786A    mov         dword ptr [esp+2C],eax
 004D786E    fild        dword ptr [esp+2C]
 004D7872    fadd        dword ptr ds:[4D792C];120:Single
 004D7878    fdiv        dword ptr ds:[4D7924];240:Single
 004D787E    fstp        qword ptr [esp+8]
 004D7882    wait
 004D7883    push        dword ptr [esp+1C]
 004D7887    push        dword ptr [esp+1C]
 004D788B    push        dword ptr [esp+2C]
 004D788F    push        dword ptr [esp+2C]
 004D7893    movzx       eax,si
 004D7896    mov         dword ptr [esp+3C],eax
 004D789A    fild        dword ptr [esp+3C]
 004D789E    fsub        dword ptr ds:[4D7930];80:Single
 004D78A4    fstp        qword ptr [esp+40]
 004D78A8    wait
 004D78A9    push        dword ptr [esp+44]
 004D78AD    push        dword ptr [esp+44]
 004D78B1    call        004D75E8
 004D78B6    mov         edx,eax
 004D78B8    shl         eax,8
 004D78BB    sub         eax,edx
 004D78BD    mov         dword ptr [esp+2C],eax
 004D78C1    fild        dword ptr [esp+2C]
 004D78C5    fadd        dword ptr ds:[4D792C];120:Single
 004D78CB    fdiv        dword ptr ds:[4D7924];240:Single
 004D78D1    fstp        qword ptr [esp+10]
 004D78D5    wait
 004D78D6    push        dword ptr [esp+4]
 004D78DA    push        dword ptr [esp+4]
 004D78DE    call        004D76D0
 004D78E3    mov         ebx,eax
 004D78E5    push        dword ptr [esp+0C]
 004D78E9    push        dword ptr [esp+0C]
 004D78ED    call        004D76D0
 004D78F2    mov         byte ptr [esp+28],al
 004D78F6    push        dword ptr [esp+14]
 004D78FA    push        dword ptr [esp+14]
 004D78FE    call        004D76D0
 004D7903    movzx       edx,bl
 004D7906    movzx       ecx,byte ptr [esp+28]
 004D790B    shl         ecx,8
 004D790E    or          edx,ecx
 004D7910    movzx       eax,al
 004D7913    shl         eax,10
 004D7916    or          edx,eax
 004D7918    mov         eax,edx
 004D791A    add         esp,38
 004D791D    pop         edi
 004D791E    pop         esi
 004D791F    pop         ebx
 004D7920    ret
end;*}

//004D7934
{*function sub_004D7934(?:LongInt; ?:?):?;
begin
 004D7934    push        ebx
 004D7935    push        esi
 004D7936    push        edi
 004D7937    add         esp,0FFFFFFF8
 004D793A    mov         esi,edx
 004D793C    mov         ebx,eax
 004D793E    call        @GetTls
 004D7943    cmp         ebx,dword ptr [eax+3C];{threadvar_60}
>004D7949    jne         004D7965
 004D794B    call        @GetTls
 004D7950    cmp         esi,dword ptr [eax+40];{threadvar_64}
>004D7956    jne         004D7965
 004D7958    call        @GetTls
 004D795D    mov         edi,dword ptr [eax+44];{threadvar_68}
>004D7963    jmp         004D79B7
 004D7965    lea         eax,[esp+4]
 004D7969    push        eax
 004D796A    mov         eax,ebx
 004D796C    call        ColorToRGB
 004D7971    lea         ecx,[esp+6]
 004D7975    lea         edx,[esp+4]
 004D7979    call        004D72AC
 004D797E    movzx       edx,word ptr [esp+2]
 004D7983    add         dx,si
 004D7986    movzx       ecx,word ptr [esp+4]
 004D798B    movzx       eax,word ptr [esp]
 004D798F    call        004D76FC
 004D7994    mov         edi,eax
 004D7996    call        @GetTls
 004D799B    mov         dword ptr [eax+3C],ebx;{threadvar_60}
 004D79A1    call        @GetTls
 004D79A6    mov         dword ptr [eax+40],esi;{threadvar_64}
 004D79AC    call        @GetTls
 004D79B1    mov         dword ptr [eax+44],edi;{threadvar_68}
 004D79B7    mov         eax,edi
 004D79B9    pop         ecx
 004D79BA    pop         edx
 004D79BB    pop         edi
 004D79BC    pop         esi
 004D79BD    pop         ebx
 004D79BE    ret
end;*}

//004D79C0
{*function sub_004D79C0(?:LongInt; ?:?):?;
begin
 004D79C0    push        ebx
 004D79C1    push        esi
 004D79C2    push        edi
 004D79C3    add         esp,0FFFFFFF8
 004D79C6    mov         ebx,edx
 004D79C8    mov         esi,eax
 004D79CA    call        @GetTls
 004D79CF    cmp         esi,dword ptr [eax+28];{threadvar_40}
>004D79D5    jne         004D79F4
 004D79D7    call        @GetTls
 004D79DC    cmp         ebx,dword ptr [eax+24];{threadvar_36}
>004D79E2    jne         004D79F4
 004D79E4    call        @GetTls
 004D79E9    mov         edi,dword ptr [eax+2C];{threadvar_44}
>004D79EF    jmp         004D7A90
 004D79F4    cmp         esi,0FF00000F
>004D79FA    jne         004D7A0B
 004D79FC    cmp         ebx,13
>004D79FF    jne         004D7A0B
 004D7A01    mov         edi,0FF000014
>004D7A06    jmp         004D7A90
 004D7A0B    mov         eax,esi
 004D7A0D    call        ColorToRGB
 004D7A12    mov         edi,eax
 004D7A14    lea         eax,[esp+4]
 004D7A18    push        eax
 004D7A19    lea         ecx,[esp+6]
 004D7A1D    lea         edx,[esp+4]
 004D7A21    mov         eax,edi
 004D7A23    call        004D72AC
 004D7A28    cmp         word ptr [esp+4],0DC
>004D7A2F    jbe         004D7A62
 004D7A31    movzx       eax,word ptr [esp+2]
 004D7A36    sub         eax,ebx
>004D7A38    js          004D7A62
 004D7A3A    movzx       eax,word ptr [esp+2]
 004D7A3F    sub         eax,ebx
 004D7A41    cmp         eax,0FFFF
>004D7A46    jg          004D7A62
 004D7A48    movzx       edx,word ptr [esp+2]
 004D7A4D    sub         dx,bx
 004D7A50    movzx       ecx,word ptr [esp+4]
 004D7A55    movzx       eax,word ptr [esp]
 004D7A59    call        004D76FC
 004D7A5E    mov         edi,eax
>004D7A60    jmp         004D7A6F
 004D7A62    xor         ecx,ecx
 004D7A64    mov         edx,ebx
 004D7A66    mov         eax,edi
 004D7A68    call        004D7934
 004D7A6D    mov         edi,eax
 004D7A6F    call        @GetTls
 004D7A74    mov         dword ptr [eax+24],ebx;{threadvar_36}
 004D7A7A    call        @GetTls
 004D7A7F    mov         dword ptr [eax+28],esi;{threadvar_40}
 004D7A85    call        @GetTls
 004D7A8A    mov         dword ptr [eax+2C],edi;{threadvar_44}
 004D7A90    mov         eax,edi
 004D7A92    pop         ecx
 004D7A93    pop         edx
 004D7A94    pop         edi
 004D7A95    pop         esi
 004D7A96    pop         ebx
 004D7A97    ret
end;*}

//004D7A98
{*function sub_004D7A98(?:LongInt; ?:?):?;
begin
 004D7A98    push        ebx
 004D7A99    push        esi
 004D7A9A    push        edi
 004D7A9B    add         esp,0FFFFFFF8
 004D7A9E    mov         ebx,edx
 004D7AA0    mov         esi,eax
 004D7AA2    call        @GetTls
 004D7AA7    cmp         esi,dword ptr [eax+34];{threadvar_52}
>004D7AAD    jne         004D7ACC
 004D7AAF    call        @GetTls
 004D7AB4    cmp         ebx,dword ptr [eax+30];{threadvar_48}
>004D7ABA    jne         004D7ACC
 004D7ABC    call        @GetTls
 004D7AC1    mov         edi,dword ptr [eax+38];{threadvar_56}
>004D7AC7    jmp         004D7B67
 004D7ACC    cmp         esi,0FF00000F
>004D7AD2    jne         004D7AE0
 004D7AD4    cmp         ebx,0FFFFFFCE
>004D7AD7    jne         004D7AE0
 004D7AD9    mov         edi,0FF000010
>004D7ADE    jmp         004D7B46
 004D7AE0    mov         eax,esi
 004D7AE2    call        ColorToRGB
 004D7AE7    mov         edi,eax
 004D7AE9    lea         eax,[esp+4]
 004D7AED    push        eax
 004D7AEE    lea         ecx,[esp+6]
 004D7AF2    lea         edx,[esp+4]
 004D7AF6    mov         eax,edi
 004D7AF8    call        004D72AC
 004D7AFD    cmp         word ptr [esp+4],0A0
>004D7B04    jb          004D7B39
 004D7B06    movzx       eax,word ptr [esp+2]
 004D7B0B    add         eax,ebx
 004D7B0D    test        eax,eax
>004D7B0F    jl          004D7B39
 004D7B11    movzx       eax,word ptr [esp+2]
 004D7B16    add         eax,ebx
 004D7B18    cmp         eax,0FFFF
>004D7B1D    jg          004D7B39
 004D7B1F    movzx       edx,word ptr [esp+2]
 004D7B24    add         dx,bx
 004D7B27    movzx       ecx,word ptr [esp+4]
 004D7B2C    movzx       eax,word ptr [esp]
 004D7B30    call        004D76FC
 004D7B35    mov         edi,eax
>004D7B37    jmp         004D7B46
 004D7B39    xor         ecx,ecx
 004D7B3B    mov         edx,ebx
 004D7B3D    mov         eax,edi
 004D7B3F    call        004D7934
 004D7B44    mov         edi,eax
 004D7B46    call        @GetTls
 004D7B4B    mov         dword ptr [eax+30],ebx;{threadvar_48}
 004D7B51    call        @GetTls
 004D7B56    mov         dword ptr [eax+34],esi;{threadvar_52}
 004D7B5C    call        @GetTls
 004D7B61    mov         dword ptr [eax+38],edi;{threadvar_56}
 004D7B67    mov         eax,edi
 004D7B69    pop         ecx
 004D7B6A    pop         edx
 004D7B6B    pop         edi
 004D7B6C    pop         esi
 004D7B6D    pop         ebx
 004D7B6E    ret
end;*}

//004D7B70
{*procedure sub_004D7B70(?:TCanvas; ?:?; ?:?; ?:?);
begin
 004D7B70    push        ebp
 004D7B71    mov         ebp,esp
 004D7B73    add         esp,0FFFFFFCC
 004D7B76    push        ebx
 004D7B77    push        esi
 004D7B78    push        edi
 004D7B79    mov         esi,ecx
 004D7B7B    lea         edi,[ebp-10]
 004D7B7E    movs        dword ptr [edi],dword ptr [esi]
 004D7B7F    movs        dword ptr [edi],dword ptr [esi]
 004D7B80    mov         byte ptr [ebp-5],dl
 004D7B83    mov         dword ptr [ebp-4],eax
 004D7B86    cmp         dword ptr [ebp-4],0
>004D7B8A    je          004D7C3B
 004D7B90    mov         eax,dword ptr [ebp-4]
 004D7B93    mov         edx,dword ptr [eax+48]
 004D7B96    mov         eax,edx
 004D7B98    mov         eax,dword ptr [eax+10]
 004D7B9B    mov         eax,dword ptr [eax+18]
 004D7B9E    mov         dword ptr [ebp-14],eax
 004D7BA1    mov         eax,dword ptr [ebp-4]
 004D7BA4    mov         eax,dword ptr [eax+44]
 004D7BA7    mov         eax,dword ptr [eax+10]
 004D7BAA    mov         eax,dword ptr [eax+18]
 004D7BAD    xchg        eax,edx
 004D7BAE    call        TBrush.SetColor
 004D7BB3    mov         ebx,3
 004D7BB8    mov         eax,7A111C
 004D7BBD    lea         edx,[ebp-34]
 004D7BC0    movzx       ecx,byte ptr [ebp-5]
 004D7BC4    lea         esi,[ecx+ecx*2]
 004D7BC7    mov         ecx,dword ptr [eax+esi*8]
 004D7BCA    imul        ecx,dword ptr [ebp+8]
 004D7BCE    add         ecx,dword ptr [ebp-10]
 004D7BD1    mov         esi,dword ptr [eax+esi*8+4]
 004D7BD5    imul        esi,dword ptr [ebp+8]
 004D7BD9    add         esi,dword ptr [ebp-0C]
 004D7BDC    mov         dword ptr [ebp-1C],ecx
 004D7BDF    mov         dword ptr [ebp-18],esi
 004D7BE2    mov         ecx,dword ptr [ebp-1C]
 004D7BE5    mov         dword ptr [edx],ecx
 004D7BE7    mov         ecx,dword ptr [ebp-18]
 004D7BEA    mov         dword ptr [edx+4],ecx
 004D7BED    add         edx,8
 004D7BF0    add         eax,8
 004D7BF3    dec         ebx
>004D7BF4    jne         004D7BC0
 004D7BF6    mov         eax,dword ptr [ebp-4]
 004D7BF9    mov         edx,dword ptr [eax+44]
 004D7BFC    mov         eax,edx
 004D7BFE    mov         eax,dword ptr [eax+10]
 004D7C01    mov         ebx,dword ptr [eax+1C]
 004D7C04    mov         eax,edx
 004D7C06    mov         edx,1
 004D7C0B    call        TPen.SetWidth
 004D7C10    lea         edx,[ebp-34]
 004D7C13    mov         ecx,2
 004D7C18    mov         eax,dword ptr [ebp-4]
 004D7C1B    mov         esi,dword ptr [eax]
 004D7C1D    call        dword ptr [esi+6C]
 004D7C20    mov         eax,dword ptr [ebp-4]
 004D7C23    mov         eax,dword ptr [eax+44]
 004D7C26    mov         edx,ebx
 004D7C28    call        TPen.SetWidth
 004D7C2D    mov         eax,dword ptr [ebp-4]
 004D7C30    mov         eax,dword ptr [eax+48]
 004D7C33    mov         edx,dword ptr [ebp-14]
 004D7C36    call        TBrush.SetColor
 004D7C3B    pop         edi
 004D7C3C    pop         esi
 004D7C3D    pop         ebx
 004D7C3E    mov         esp,ebp
 004D7C40    pop         ebp
 004D7C41    ret         4
end;*}

//004D7C44
{*procedure sub_004D7C44(?:TCanvas; ?:TColor; ?:TColor; ?:?; ?:?);
begin
 004D7C44    push        ebp
 004D7C45    mov         ebp,esp
 004D7C47    add         esp,0FFFFFFD4
 004D7C4A    push        ebx
 004D7C4B    push        esi
 004D7C4C    push        edi
 004D7C4D    mov         dword ptr [ebp-4],ecx
 004D7C50    mov         edi,eax
 004D7C52    mov         ebx,dword ptr [ebp+0C]
 004D7C55    mov         eax,edx
 004D7C57    call        ColorToRGB
 004D7C5C    mov         esi,eax
 004D7C5E    mov         eax,dword ptr [ebp-4]
 004D7C61    call        ColorToRGB
 004D7C66    mov         edx,dword ptr [ebx]
 004D7C68    mov         dword ptr [ebp-2C],edx
 004D7C6B    mov         edx,dword ptr [ebx+4]
 004D7C6E    mov         dword ptr [ebp-28],edx
 004D7C71    mov         edx,esi
 004D7C73    movzx       edx,dl
 004D7C76    shl         edx,8
 004D7C79    mov         word ptr [ebp-24],dx
 004D7C7D    mov         edx,esi
 004D7C7F    shr         edx,10
 004D7C82    movzx       edx,dl
 004D7C85    shl         edx,8
 004D7C88    mov         word ptr [ebp-20],dx
 004D7C8C    mov         edx,esi
 004D7C8E    shr         edx,8
 004D7C91    movzx       edx,dl
 004D7C94    shl         edx,8
 004D7C97    mov         word ptr [ebp-22],dx
 004D7C9B    mov         word ptr [ebp-1E],0
 004D7CA1    mov         edx,dword ptr [ebx+8]
 004D7CA4    mov         dword ptr [ebp-1C],edx
 004D7CA7    mov         edx,dword ptr [ebx+0C]
 004D7CAA    mov         dword ptr [ebp-18],edx
 004D7CAD    movzx       edx,al
 004D7CB0    shl         edx,8
 004D7CB3    mov         word ptr [ebp-14],dx
 004D7CB7    mov         edx,eax
 004D7CB9    shr         edx,10
 004D7CBC    movzx       edx,dl
 004D7CBF    shl         edx,8
 004D7CC2    mov         word ptr [ebp-10],dx
 004D7CC6    shr         eax,8
 004D7CC9    movzx       eax,al
 004D7CCC    shl         eax,8
 004D7CCF    mov         word ptr [ebp-12],ax
 004D7CD3    mov         word ptr [ebp-0E],0
 004D7CD9    xor         eax,eax
 004D7CDB    mov         dword ptr [ebp-0C],eax
 004D7CDE    mov         dword ptr [ebp-8],1
 004D7CE5    movzx       eax,byte ptr [ebp+8]
 004D7CE9    mov         eax,dword ptr [eax*4+7A117C]
 004D7CF0    push        eax
 004D7CF1    push        1
 004D7CF3    lea         eax,[ebp-0C]
 004D7CF6    push        eax
 004D7CF7    push        2
 004D7CF9    lea         eax,[ebp-2C]
 004D7CFC    push        eax
 004D7CFD    mov         eax,edi
 004D7CFF    call        TCanvas.GetHandle
 004D7D04    push        eax
 004D7D05    call        00410C60
 004D7D0A    pop         edi
 004D7D0B    pop         esi
 004D7D0C    pop         ebx
 004D7D0D    mov         esp,ebp
 004D7D0F    pop         ebp
 004D7D10    ret         8
end;*}

Initialization
//0079CF00
{*
 0079CF00    sub         dword ptr ds:[7CA5C8],1
>0079CF07    jae         0079CF7E
 0079CF09    call        @GetTls
 0079CF0E    xor         edx,edx
 0079CF10    mov         dword ptr [eax+24],edx
 0079CF16    call        @GetTls
 0079CF1B    xor         edx,edx
 0079CF1D    mov         dword ptr [eax+28],edx
 0079CF23    call        @GetTls
 0079CF28    xor         edx,edx
 0079CF2A    mov         dword ptr [eax+2C],edx
 0079CF30    call        @GetTls
 0079CF35    xor         edx,edx
 0079CF37    mov         dword ptr [eax+30],edx
 0079CF3D    call        @GetTls
 0079CF42    xor         edx,edx
 0079CF44    mov         dword ptr [eax+34],edx
 0079CF4A    call        @GetTls
 0079CF4F    xor         edx,edx
 0079CF51    mov         dword ptr [eax+38],edx
 0079CF57    call        @GetTls
 0079CF5C    xor         edx,edx
 0079CF5E    mov         dword ptr [eax+3C],edx
 0079CF64    call        @GetTls
 0079CF69    xor         edx,edx
 0079CF6B    mov         dword ptr [eax+40],edx
 0079CF71    call        @GetTls
 0079CF76    xor         edx,edx
 0079CF78    mov         dword ptr [eax+44],edx
 0079CF7E    ret
*}
Finalization
end.