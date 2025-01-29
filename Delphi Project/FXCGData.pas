//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit FXCGData;

interface

uses
  SysUtils, Classes;

type
  TCGRec = TCGRec = record//size=82
IndexHi:Byte;//f0
IndexLo:Byte;//f1
GenBits:Byte;//f2
Reserve:Byte;//f3
GrpBits:?;//f4
end;
//Methods:
IsEmpty:Boolean;//0069642C
IsEqual(CGRec:TCGRec):Boolean;//0069644C;
  TCGArr = array of PCGRec;
//elSize = 4;
  TCGData = class(TObject)
  published
    function EncodeFXCGMsg(indx:Word; NegVer:Word; var MsgData:TMsgData; var MsgLen:Byte):Boolean;//006953AC
    procedure AddExclusive(p:PCGRec);//006959F8
    function GetCGRec(index:Integer):PCGRec;//0069639C
    function DecodeFXCGMsg(NegVer:Word; MsgLen:Byte; MsgData:TMsgData):Boolean;//006954E4
    procedure NewRec;//006963B4
    destructor Destroy();//00695B54
    constructor Create;//00695B34
    procedure Clear;//00696348
    procedure Build;//00695B80
  public
    FCapacity:Integer;//f4
    FCount:Integer;//f8
    FCG:TCGArr;//fC
  end;
    //procedure sub_006955F8(?:?; ?:UnicodeString);//006955F8
    //function sub_00695720(?:string; ?:?):?;//00695720
    //function sub_006959BC(?:Integer; ?:?):Boolean;//006959BC
    //function sub_006959E8(?:?):Boolean;//006959E8
    //function sub_006959F0(?:?):Boolean;//006959F0
    //function sub_0069642C(?:?):?;//0069642C
    //function sub_0069644C(?:?; ?:TCGRec):?;//0069644C

implementation

//006953AC
function TCGData.EncodeFXCGMsg(indx:Word; NegVer:Word; var MsgData:TMsgData; var MsgLen:Byte):Boolean;
begin
{*
 006953AC    push        ebp
 006953AD    mov         ebp,esp
 006953AF    add         esp,0FFFFFEFC
 006953B5    push        ebx
 006953B6    push        esi
 006953B7    push        edi
 006953B8    mov         word ptr [ebp-2],cx
 006953BC    mov         esi,edx
 006953BE    mov         edi,dword ptr [ebp+8]
 006953C1    movzx       eax,word ptr [ebp-2]
 006953C5    add         eax,0FFFFFFFA
 006953C8    sub         ax,3
>006953CC    jb          006953E0
 006953CE    add         eax,0FFFFFFE9
 006953D1    sub         ax,2
>006953D5    jb          006953E0
 006953D7    add         eax,0FFFFFFE2
 006953DA    sub         ax,9
>006953DE    jae         006953EC
 006953E0    mov         bl,1
 006953E2    mov         byte ptr [ebp-3],0
 006953E6    mov         byte ptr [ebp-4],0
>006953EA    jmp         00695403
 006953EC    mov         ecx,dword ptr ds:[7C2878];^'Control Groups encoding error!'
 006953F2    mov         dl,1
 006953F4    mov         eax,[004174D0];Exception
 006953F9    call        Exception.Create;Exception.Create
 006953FE    call        @RaiseExcept
 00695403    lea         eax,[ebp-102]
 00695409    xor         ecx,ecx
 0069540B    mov         edx,0FE
 00695410    call        @FillChar
 00695415    mov         eax,esi
 00695417    shr         ax,8
 0069541B    movzx       eax,ax
 0069541E    cmp         eax,0FF
>00695423    jbe         0069542A
 00695425    call        @BoundErr
 0069542A    mov         byte ptr [ebp-102],al
 00695430    mov         ax,0FF
 00695434    and         ax,si
 00695437    movzx       eax,ax
 0069543A    cmp         eax,0FF
>0069543F    jbe         00695446
 00695441    call        @BoundErr
 00695446    mov         byte ptr [ebp-101],al
 0069544C    movzx       eax,si
 0069544F    mov         edx,dword ptr ds:[8DF5B0];gvar_008DF5B0:TCGData
 00695455    mov         edx,dword ptr [edx+0C]
 00695458    test        edx,edx
>0069545A    je          00695461
 0069545C    cmp         eax,dword ptr [edx-4]
>0069545F    jb          00695466
 00695461    call        @BoundErr
 00695466    mov         eax,dword ptr [edx+eax*4]
 00695469    movzx       eax,byte ptr [eax+2]
 0069546D    mov         byte ptr [ebp-100],al
 00695473    mov         byte ptr [ebp-0FF],0
 0069547A    movzx       eax,si
 0069547D    mov         edx,dword ptr ds:[8DF5B0];gvar_008DF5B0:TCGData
 00695483    mov         edx,dword ptr [edx+0C]
 00695486    test        edx,edx
>00695488    je          0069548F
 0069548A    cmp         eax,dword ptr [edx-4]
>0069548D    jb          00695494
 0069548F    call        @BoundErr
 00695494    mov         eax,dword ptr [edx+eax*4]
 00695497    add         eax,4
 0069549A    lea         edx,[ebp-0FE]
 006954A0    mov         ecx,7E
 006954A5    call        Move
 006954AA    mov         byte ptr [edi+1],7F
 006954AE    mov         byte ptr [edi+2],bl
 006954B1    movzx       eax,byte ptr [ebp-3]
 006954B5    mov         byte ptr [edi+3],al
 006954B8    movzx       eax,byte ptr [ebp-4]
 006954BC    mov         byte ptr [edi+4],al
 006954BF    lea         edx,[edi+5]
 006954C2    lea         eax,[ebp-102]
 006954C8    mov         ecx,82
 006954CD    call        Move
 006954D2    mov         eax,dword ptr [ebp+0C]
 006954D5    mov         byte ptr [eax],87
 006954D8    mov         al,1
 006954DA    pop         edi
 006954DB    pop         esi
 006954DC    pop         ebx
 006954DD    mov         esp,ebp
 006954DF    pop         ebp
 006954E0    ret         8
*}
end;

//006954E4
function TCGData.DecodeFXCGMsg(NegVer:Word; MsgLen:Byte; MsgData:TMsgData):Boolean;
begin
{*
 006954E4    push        ebp
 006954E5    mov         ebp,esp
 006954E7    add         esp,0FFFFFF00
 006954ED    push        ebx
 006954EE    push        esi
 006954EF    mov         byte ptr [ebp-1],cl
 006954F2    mov         esi,eax
 006954F4    mov         ebx,dword ptr [ebp+8]
 006954F7    lea         eax,[ebp-0FF]
 006954FD    xor         ecx,ecx
 006954FF    mov         edx,0FE
 00695504    call        @FillChar
 00695509    movzx       eax,byte ptr [ebx+1]
 0069550D    sub         al,7F
>0069550F    jne         00695517
 00695511    movzx       eax,byte ptr [ebx+2]
>00695515    jmp         00695519
 00695517    xor         eax,eax
 00695519    not         al
 0069551B    sub         al,1
>0069551D    jne         00695534
 0069551F    push        0
 00695521    movzx       ecx,word ptr ds:[69559C];0x4 gvar_0069559C
 00695528    xor         edx,edx
 0069552A    mov         eax,6955AC;'Unknown version in decoded panel data'
 0069552F    call        MessageDlg
 00695534    movzx       ecx,byte ptr [ebp-1]
 00695538    sub         ecx,5
>0069553B    jno         00695542
 0069553D    call        @IntOver
 00695542    lea         edx,[ebp-0FF]
 00695548    lea         eax,[ebx+5]
 0069554B    call        Move
 00695550    mov         eax,esi
 00695552    call        TCGData.NewRec
 00695557    movzx       edx,byte ptr [ebp-0FF]
 0069555E    mov         byte ptr [eax],dl
 00695560    movzx       edx,byte ptr [ebp-0FE]
 00695567    mov         byte ptr [eax+1],dl
 0069556A    movzx       edx,byte ptr [ebp-0FD]
 00695571    mov         byte ptr [eax+2],dl
 00695574    movzx       edx,byte ptr [ebp-0FC]
 0069557B    mov         byte ptr [eax+3],dl
 0069557E    lea         edx,[eax+4]
 00695581    lea         eax,[ebp-0FB]
 00695587    mov         ecx,7E
 0069558C    call        Move
 00695591    mov         al,1
 00695593    pop         esi
 00695594    pop         ebx
 00695595    mov         esp,ebp
 00695597    pop         ebp
 00695598    ret         4
*}
end;

//006955F8
{*procedure sub_006955F8(?:?; ?:UnicodeString);
begin
 006955F8    push        ebp
 006955F9    mov         ebp,esp
 006955FB    add         esp,0FFFFFFE4
 006955FE    push        ebx
 006955FF    push        esi
 00695600    xor         ecx,ecx
 00695602    mov         dword ptr [ebp-1C],ecx
 00695605    mov         dword ptr [ebp-8],ecx
 00695608    mov         esi,edx
 0069560A    mov         dword ptr [ebp-4],eax
 0069560D    xor         eax,eax
 0069560F    push        ebp
 00695610    push        6956F2
 00695615    push        dword ptr fs:[eax]
 00695618    mov         dword ptr fs:[eax],esp
 0069561B    mov         eax,esi
 0069561D    mov         edx,dword ptr ds:[7C47A0];^gvar_007C286C
 00695623    mov         edx,dword ptr [edx]
 00695625    call        @UStrAsg
 0069562A    mov         ebx,dword ptr [ebp-4]
 0069562D    movzx       ebx,byte ptr [ebx+2]
 00695631    cmp         bl,1
>00695634    je          006956D4
 0069563A    mov         eax,esi
 0069563C    mov         edx,dword ptr ds:[7C4750];^gvar_007C2870
 00695642    mov         edx,dword ptr [edx]
 00695644    call        @UStrAsg
 00695649    cmp         bl,2
>0069564C    je          006956D4
 00695652    mov         eax,esi
 00695654    call        @UStrClr
 00695659    mov         bx,1
 0069565D    movzx       eax,bx
 00695660    mov         ecx,eax
 00695662    and         ecx,7
 00695665    mov         edx,1
 0069566A    shl         edx,cl
 0069566C    shr         eax,3
 0069566F    cmp         eax,7D
>00695672    jbe         00695679
 00695674    call        @BoundErr
 00695679    mov         ecx,dword ptr [ebp-4]
 0069567C    movzx       eax,byte ptr [ecx+eax+4]
 00695681    and         edx,eax
>00695683    je          006956B8
 00695685    lea         eax,[ebp-8]
 00695688    push        eax
 00695689    mov         eax,dword ptr [esi]
 0069568B    mov         dword ptr [ebp-18],eax
 0069568E    mov         byte ptr [ebp-14],11
 00695692    movzx       eax,bx
 00695695    mov         dword ptr [ebp-10],eax
 00695698    mov         byte ptr [ebp-0C],0
 0069569C    lea         edx,[ebp-18]
 0069569F    mov         ecx,1
 006956A4    mov         eax,69570C;'%s%.3d; '
 006956A9    call        Format
 006956AE    mov         edx,dword ptr [ebp-8]
 006956B1    mov         eax,esi
 006956B3    call        @UStrAsg
 006956B8    inc         ebx
 006956B9    cmp         bx,3E8
>006956BE    jne         0069565D
 006956C0    lea         edx,[ebp-1C]
 006956C3    mov         eax,dword ptr [esi]
 006956C5    call        0041D9D4
 006956CA    mov         edx,dword ptr [ebp-1C]
 006956CD    mov         eax,esi
 006956CF    call        @UStrAsg
 006956D4    xor         eax,eax
 006956D6    pop         edx
 006956D7    pop         ecx
 006956D8    pop         ecx
 006956D9    mov         dword ptr fs:[eax],edx
 006956DC    push        6956F9
 006956E1    lea         eax,[ebp-1C]
 006956E4    call        @UStrClr
 006956E9    lea         eax,[ebp-8]
 006956EC    call        @UStrClr
 006956F1    ret
>006956F2    jmp         @HandleFinally
>006956F7    jmp         006956E1
 006956F9    pop         esi
 006956FA    pop         ebx
 006956FB    mov         esp,ebp
 006956FD    pop         ebp
 006956FE    ret
end;*}

//00695720
{*function sub_00695720(?:string; ?:?):?;
begin
 00695720    push        ebp
 00695721    mov         ebp,esp
 00695723    mov         ecx,4
 00695728    push        0
 0069572A    push        0
 0069572C    dec         ecx
>0069572D    jne         00695728
 0069572F    push        ecx
 00695730    push        ebx
 00695731    push        esi
 00695732    push        edi
 00695733    mov         dword ptr [ebp-8],edx
 00695736    mov         dword ptr [ebp-4],eax
 00695739    mov         eax,dword ptr [ebp-4]
 0069573C    call        @UStrAddRef
 00695741    xor         eax,eax
 00695743    push        ebp
 00695744    push        695988
 00695749    push        dword ptr fs:[eax]
 0069574C    mov         dword ptr fs:[eax],esp
 0069574F    mov         eax,dword ptr [ebp-8]
 00695752    xor         ecx,ecx
 00695754    mov         edx,82
 00695759    call        @FillChar
 0069575E    movzx       eax,byte ptr ds:[695998];0x1 gvar_00695998
 00695765    push        eax
 00695766    lea         eax,[ebp-14]
 00695769    push        eax
 0069576A    mov         ecx,6959A8;';'
 0069576F    mov         edx,6959B8;','
 00695774    mov         eax,dword ptr [ebp-4]
 00695777    call        00425440
 0069577C    mov         edx,dword ptr [ebp-14]
 0069577F    lea         eax,[ebp-4]
 00695782    call        @UStrLAsg
 00695787    lea         edx,[ebp-18]
 0069578A    mov         eax,dword ptr [ebp-4]
 0069578D    call        0041D9D4
 00695792    mov         edx,dword ptr [ebp-18]
 00695795    lea         eax,[ebp-4]
 00695798    call        @UStrLAsg
 0069579D    mov         eax,dword ptr [ebp-4]
 006957A0    test        eax,eax
>006957A2    je          006957A9
 006957A4    sub         eax,4
 006957A7    mov         eax,dword ptr [eax]
 006957A9    test        eax,eax
>006957AB    jle         006957DC
 006957AD    mov         edx,dword ptr [ebp-4]
 006957B0    dec         eax
 006957B1    test        edx,edx
>006957B3    je          006957BA
 006957B5    cmp         eax,dword ptr [edx-4]
>006957B8    jb          006957BF
 006957BA    call        @BoundErr
 006957BF    inc         eax
 006957C0    cmp         word ptr [edx+eax*2-2],3B
>006957C6    jne         006957DC
 006957C8    mov         edx,eax
 006957CA    sub         edx,1
>006957CD    jno         006957D4
 006957CF    call        @IntOver
 006957D4    lea         eax,[ebp-4]
 006957D7    call        @UStrSetLength
 006957DC    mov         dl,1
 006957DE    mov         eax,[0046F9A0];TStringList
 006957E3    call        TStringList.Create;TStringList.Create
 006957E8    mov         dword ptr [ebp-10],eax
 006957EB    xor         ecx,ecx
 006957ED    push        ebp
 006957EE    push        69595C
 006957F3    push        dword ptr fs:[ecx]
 006957F6    mov         dword ptr fs:[ecx],esp
 006957F9    mov         dx,3B
 006957FD    mov         eax,dword ptr [ebp-10]
 00695800    call        TStrings.SetDelimiter
 00695805    mov         edx,dword ptr [ebp-4]
 00695808    mov         eax,dword ptr [ebp-10]
 0069580B    call        TStrings.SetDelimitedText
 00695810    mov         eax,dword ptr [ebp-10]
 00695813    mov         edx,dword ptr [eax]
 00695815    call        dword ptr [edx+14];TStringList.GetCount
 00695818    test        eax,eax
>0069581A    jle         0069584E
 0069581C    lea         ecx,[ebp-1C]
 0069581F    xor         edx,edx
 00695821    mov         eax,dword ptr [ebp-10]
 00695824    mov         ebx,dword ptr [eax]
 00695826    call        dword ptr [ebx+0C];TStringList.Get
 00695829    mov         eax,dword ptr [ebp-1C]
 0069582C    mov         edx,dword ptr ds:[7C47A0];^gvar_007C286C
 00695832    mov         edx,dword ptr [edx]
 00695834    call        @UStrEqual
>00695839    jne         0069584E
 0069583B    mov         eax,dword ptr [ebp-8]
 0069583E    mov         byte ptr [eax+2],1
 00695842    mov         bl,1
 00695844    call        @TryFinallyExit
>00695849    jmp         00695965
 0069584E    mov         eax,dword ptr [ebp-10]
 00695851    mov         edx,dword ptr [eax]
 00695853    call        dword ptr [edx+14];TStringList.GetCount
 00695856    test        eax,eax
>00695858    jle         0069588C
 0069585A    lea         ecx,[ebp-20]
 0069585D    xor         edx,edx
 0069585F    mov         eax,dword ptr [ebp-10]
 00695862    mov         ebx,dword ptr [eax]
 00695864    call        dword ptr [ebx+0C];TStringList.Get
 00695867    mov         eax,dword ptr [ebp-20]
 0069586A    mov         edx,dword ptr ds:[7C4750];^gvar_007C2870
 00695870    mov         edx,dword ptr [edx]
 00695872    call        @UStrEqual
>00695877    jne         0069588C
 00695879    mov         eax,dword ptr [ebp-8]
 0069587C    mov         byte ptr [eax+2],2
 00695880    mov         bl,1
 00695882    call        @TryFinallyExit
>00695887    jmp         00695965
 0069588C    mov         eax,dword ptr [ebp-10]
 0069588F    mov         edx,dword ptr [eax]
 00695891    call        dword ptr [edx+14];TStringList.GetCount
 00695894    mov         ebx,eax
 00695896    sub         ebx,1
>00695899    jno         006958A0
 0069589B    call        @IntOver
 006958A0    test        ebx,ebx
>006958A2    jl          00695946
 006958A8    inc         ebx
 006958A9    xor         esi,esi
 006958AB    lea         ecx,[ebp-24]
 006958AE    mov         edx,esi
 006958B0    mov         eax,dword ptr [ebp-10]
 006958B3    mov         edi,dword ptr [eax]
 006958B5    call        dword ptr [edi+0C];TStringList.Get
 006958B8    mov         eax,dword ptr [ebp-24]
 006958BB    lea         edx,[ebp-0C]
 006958BE    call        0041E5A0
 006958C3    test        al,al
>006958C5    je          00695935
 006958C7    cmp         dword ptr [ebp-0C],0
 006958CB    setge       al
 006958CE    cmp         dword ptr [ebp-0C],3E7
 006958D5    setle       dl
 006958D8    and         al,dl
 006958DA    test        al,al
>006958DC    je          0069592C
 006958DE    mov         ecx,dword ptr [ebp-0C]
 006958E1    and         ecx,80000007
>006958E7    jns         006958EE
 006958E9    dec         ecx
 006958EA    or          ecx,0FFFFFFF8
 006958ED    inc         ecx
 006958EE    mov         edx,1
 006958F3    shl         edx,cl
 006958F5    mov         eax,dword ptr [ebp-0C]
 006958F8    test        eax,eax
>006958FA    jns         006958FF
 006958FC    add         eax,7
 006958FF    sar         eax,3
 00695902    cmp         eax,7D
>00695905    jbe         0069590C
 00695907    call        @BoundErr
 0069590C    mov         ecx,dword ptr [ebp-8]
 0069590F    movzx       ecx,byte ptr [ecx+eax+4]
 00695914    or          edx,ecx
 00695916    cmp         edx,0FF
>0069591C    jbe         00695923
 0069591E    call        @BoundErr
 00695923    mov         ecx,dword ptr [ebp-8]
 00695926    mov         byte ptr [ecx+eax+4],dl
>0069592A    jmp         0069593E
 0069592C    xor         ebx,ebx
 0069592E    call        @TryFinallyExit
>00695933    jmp         00695965
 00695935    xor         ebx,ebx
 00695937    call        @TryFinallyExit
>0069593C    jmp         00695965
 0069593E    inc         esi
 0069593F    dec         ebx
>00695940    jne         006958AB
 00695946    xor         eax,eax
 00695948    pop         edx
 00695949    pop         ecx
 0069594A    pop         ecx
 0069594B    mov         dword ptr fs:[eax],edx
 0069594E    push        695963
 00695953    mov         eax,dword ptr [ebp-10]
 00695956    call        TObject.Free
 0069595B    ret
>0069595C    jmp         @HandleFinally
>00695961    jmp         00695953
 00695963    mov         bl,1
 00695965    xor         eax,eax
 00695967    pop         edx
 00695968    pop         ecx
 00695969    pop         ecx
 0069596A    mov         dword ptr fs:[eax],edx
 0069596D    push        69598F
 00695972    lea         eax,[ebp-24]
 00695975    mov         edx,5
 0069597A    call        @UStrArrayClr
 0069597F    lea         eax,[ebp-4]
 00695982    call        @UStrClr
 00695987    ret
>00695988    jmp         @HandleFinally
>0069598D    jmp         00695972
 0069598F    mov         eax,ebx
 00695991    pop         edi
 00695992    pop         esi
 00695993    pop         ebx
 00695994    mov         esp,ebp
 00695996    pop         ebp
 00695997    ret
end;*}

//006959BC
{*function sub_006959BC(?:Integer; ?:?):Boolean;
begin
 006959BC    push        ebx
 006959BD    push        esi
 006959BE    movzx       ebx,ax
 006959C1    mov         ecx,ebx
 006959C3    and         ecx,7
 006959C6    mov         esi,1
 006959CB    shl         esi,cl
 006959CD    shr         ebx,3
 006959D0    cmp         ebx,7D
>006959D3    jbe         006959DA
 006959D5    call        @BoundErr
 006959DA    movzx       eax,byte ptr [edx+ebx+4]
 006959DF    and         esi,eax
 006959E1    setne       al
 006959E4    pop         esi
 006959E5    pop         ebx
 006959E6    ret
end;*}

//006959E8
{*function sub_006959E8(?:?):Boolean;
begin
 006959E8    cmp         byte ptr [eax+2],1
 006959EC    sete        al
 006959EF    ret
end;*}

//006959F0
{*function sub_006959F0(?:?):Boolean;
begin
 006959F0    cmp         byte ptr [eax+2],2
 006959F4    sete        al
 006959F7    ret
end;*}

//006959F8
procedure TCGData.AddExclusive(p:PCGRec);
begin
{*
 006959F8    push        ebx
 006959F9    push        esi
 006959FA    push        edi
 006959FB    push        ebp
 006959FC    mov         ebp,edx
 006959FE    mov         ebx,eax
 00695A00    mov         edi,dword ptr [ebx+8];TCGData.FCount:Integer
 00695A03    sub         edi,1
>00695A06    jno         00695A0D
 00695A08    call        @IntOver
 00695A0D    test        edi,edi
>00695A0F    jl          00695A47
 00695A11    inc         edi
 00695A12    xor         esi,esi
 00695A14    mov         eax,dword ptr [ebx+0C];TCGData.FCG:TCGArr
 00695A17    test        eax,eax
>00695A19    je          00695A20
 00695A1B    cmp         esi,dword ptr [eax-4]
>00695A1E    jb          00695A25
 00695A20    call        @BoundErr
 00695A25    mov         eax,dword ptr [eax+esi*4]
 00695A28    lea         edx,[eax+2]
 00695A2B    lea         eax,[ebp+2]
 00695A2E    mov         ecx,80
 00695A33    call        CompareMem
 00695A38    test        al,al
>00695A3A    je          00695A43
 00695A3C    mov         eax,esi
>00695A3E    jmp         00695B2C
 00695A43    inc         esi
 00695A44    dec         edi
>00695A45    jne         00695A14
 00695A47    mov         eax,dword ptr [ebx+8];TCGData.FCount:Integer
 00695A4A    cmp         eax,dword ptr [ebx+4];TCGData.FCapacity:Integer
>00695A4D    jne         00695A74
 00695A4F    add         dword ptr [ebx+4],0A;TCGData.FCapacity:Integer
>00695A53    jno         00695A5A
 00695A55    call        @IntOver
 00695A5A    mov         eax,dword ptr [ebx+4];TCGData.FCapacity:Integer
 00695A5D    push        eax
 00695A5E    lea         eax,[ebx+0C];TCGData.FCG:TCGArr
 00695A61    mov         ecx,1
 00695A66    mov         edx,dword ptr ds:[694FE4];TCGArr
 00695A6C    call        @DynArraySetLength
 00695A71    add         esp,4
 00695A74    mov         eax,82
 00695A79    call        AllocMem
 00695A7E    mov         edx,dword ptr [ebx+8];TCGData.FCount:Integer
 00695A81    mov         ecx,dword ptr [ebx+0C];TCGData.FCG:TCGArr
 00695A84    test        ecx,ecx
>00695A86    je          00695A8D
 00695A88    cmp         edx,dword ptr [ecx-4]
>00695A8B    jb          00695A92
 00695A8D    call        @BoundErr
 00695A92    mov         dword ptr [ecx+edx*4],eax
 00695A95    mov         eax,dword ptr [ebx+8];TCGData.FCount:Integer
 00695A98    mov         edx,dword ptr [ebx+0C];TCGData.FCG:TCGArr
 00695A9B    test        edx,edx
>00695A9D    je          00695AA4
 00695A9F    cmp         eax,dword ptr [edx-4]
>00695AA2    jb          00695AA9
 00695AA4    call        @BoundErr
 00695AA9    mov         eax,dword ptr [edx+eax*4]
 00695AAC    mov         edi,eax
 00695AAE    mov         esi,ebp
 00695AB0    mov         ecx,20
 00695AB5    rep movs    dword ptr [edi],dword ptr [esi]
 00695AB7    movs        word ptr [edi],word ptr [esi]
 00695AB9    mov         eax,dword ptr [ebx+8];TCGData.FCount:Integer
 00695ABC    mov         edx,dword ptr [ebx+0C];TCGData.FCG:TCGArr
 00695ABF    test        edx,edx
>00695AC1    je          00695AC8
 00695AC3    cmp         eax,dword ptr [edx-4]
>00695AC6    jb          00695ACD
 00695AC8    call        @BoundErr
 00695ACD    mov         edx,dword ptr [edx+eax*4]
 00695AD0    test        eax,eax
>00695AD2    jns         00695AD9
 00695AD4    add         eax,0FF
 00695AD9    sar         eax,8
 00695ADC    cmp         eax,0FF
>00695AE1    jbe         00695AE8
 00695AE3    call        @BoundErr
 00695AE8    mov         byte ptr [edx],al
 00695AEA    mov         eax,dword ptr [ebx+8];TCGData.FCount:Integer
 00695AED    mov         edx,dword ptr [ebx+0C];TCGData.FCG:TCGArr
 00695AF0    test        edx,edx
>00695AF2    je          00695AF9
 00695AF4    cmp         eax,dword ptr [edx-4]
>00695AF7    jb          00695AFE
 00695AF9    call        @BoundErr
 00695AFE    mov         edx,dword ptr [edx+eax*4]
 00695B01    and         eax,800000FF
>00695B06    jns         00695B0F
 00695B08    dec         eax
 00695B09    or          eax,0FFFFFF00
 00695B0E    inc         eax
 00695B0F    cmp         eax,0FF
>00695B14    jbe         00695B1B
 00695B16    call        @BoundErr
 00695B1B    mov         byte ptr [edx+1],al
 00695B1E    mov         eax,dword ptr [ebx+8];TCGData.FCount:Integer
 00695B21    add         dword ptr [ebx+8],1;TCGData.FCount:Integer
>00695B25    jno         00695B2C
 00695B27    call        @IntOver
 00695B2C    pop         ebp
 00695B2D    pop         edi
 00695B2E    pop         esi
 00695B2F    pop         ebx
 00695B30    ret
*}
end;

//00695B34
constructor TCGData.Create;
begin
{*
 00695B34    test        dl,dl
>00695B36    je          00695B40
 00695B38    add         esp,0FFFFFFF0
 00695B3B    call        @ClassCreate
 00695B40    test        dl,dl
>00695B42    je          00695B53
 00695B44    call        @AfterConstruction
 00695B49    pop         dword ptr fs:[0]
 00695B50    add         esp,0C
 00695B53    ret
*}
end;

//00695B54
destructor TCGData.Destroy();
begin
{*
 00695B54    push        ebx
 00695B55    push        esi
 00695B56    call        @BeforeDestruction
 00695B5B    mov         ebx,edx
 00695B5D    mov         esi,eax
 00695B5F    mov         eax,esi
 00695B61    call        TCGData.Clear
 00695B66    mov         dl,0FC
 00695B68    and         dl,bl
 00695B6A    mov         eax,esi
 00695B6C    call        TObject.Destroy
 00695B71    test        bl,bl
>00695B73    jle         00695B7C
 00695B75    mov         eax,esi
 00695B77    call        @ClassDestroy
 00695B7C    pop         esi
 00695B7D    pop         ebx
 00695B7E    ret
*}
end;

//00695B80
procedure TCGData.Build;
begin
{*
 00695B80    push        ebx
 00695B81    push        esi
 00695B82    push        edi
 00695B83    push        ebp
 00695B84    add         esp,0FFFFFF74
 00695B8A    mov         dword ptr [esp],eax
 00695B8D    mov         edi,1
 00695B92    push        0FFFF
 00695B97    mov         ecx,edi
 00695B99    cmp         ecx,0FF
>00695B9F    jbe         00695BA6
 00695BA1    call        @BoundErr
 00695BA6    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00695BAB    mov         eax,dword ptr [eax]
 00695BAD    mov         eax,dword ptr [eax+10]
 00695BB0    xor         edx,edx
 00695BB2    call        TFXPIO.SetCCICtrlGIndex
 00695BB7    inc         edi
 00695BB8    cmp         edi,3
>00695BBB    jne         00695B92
 00695BBD    mov         edi,1
 00695BC2    lea         eax,[esp+8]
 00695BC6    push        eax
 00695BC7    mov         ebx,edi
 00695BC9    cmp         ebx,0FF
>00695BCF    jbe         00695BD6
 00695BD1    call        @BoundErr
 00695BD6    mov         ecx,ebx
 00695BD8    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00695BDD    mov         eax,dword ptr [eax]
 00695BDF    mov         eax,dword ptr [eax+10]
 00695BE2    xor         edx,edx
 00695BE4    call        TFXPIO.GetCCOCtrlGroups
 00695BE9    lea         edx,[esp+8]
 00695BED    mov         eax,dword ptr [esp]
 00695BF0    call        TCGData.AddExclusive
 00695BF5    push        eax
 00695BF6    mov         ecx,ebx
 00695BF8    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00695BFD    mov         eax,dword ptr [eax]
 00695BFF    mov         eax,dword ptr [eax+10]
 00695C02    xor         edx,edx
 00695C04    call        TFXPIO.SetCCOCtrlGIndex
 00695C09    inc         edi
 00695C0A    cmp         edi,4
>00695C0D    jne         00695BC2
 00695C0F    mov         edi,1
 00695C14    lea         eax,[esp+8]
 00695C18    push        eax
 00695C19    mov         ebx,edi
 00695C1B    cmp         ebx,0FF
>00695C21    jbe         00695C28
 00695C23    call        @BoundErr
 00695C28    mov         ecx,ebx
 00695C2A    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00695C2F    mov         eax,dword ptr [eax]
 00695C31    mov         eax,dword ptr [eax+10]
 00695C34    xor         edx,edx
 00695C36    call        TFXPIO.GetADOCtrlGroups
 00695C3B    lea         edx,[esp+8]
 00695C3F    mov         eax,dword ptr [esp]
 00695C42    call        TCGData.AddExclusive
 00695C47    push        eax
 00695C48    mov         ecx,ebx
 00695C4A    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00695C4F    mov         eax,dword ptr [eax]
 00695C51    mov         eax,dword ptr [eax+10]
 00695C54    xor         edx,edx
 00695C56    call        TFXPIO.SetADOCtrlGIndex
 00695C5B    inc         edi
 00695C5C    cmp         edi,2
>00695C5F    jne         00695C14
 00695C61    mov         esi,1
 00695C66    mov         edx,esi
 00695C68    cmp         edx,0FF
>00695C6E    jbe         00695C75
 00695C70    call        @BoundErr
 00695C75    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00695C7A    mov         eax,dword ptr [eax]
 00695C7C    mov         eax,dword ptr [eax+10]
 00695C7F    call        TFXPIO.GetIOCtrlrType
 00695C84    dec         al
>00695C86    je          00695CA5
 00695C88    dec         al
>00695C8A    je          00695DBF
 00695C90    dec         al
>00695C92    je          00695E30
 00695C98    dec         al
>00695C9A    je          00695EA1
>00695CA0    jmp         00695F4A
 00695CA5    mov         edi,1
 00695CAA    push        0FFFF
 00695CAF    mov         ecx,edi
 00695CB1    cmp         ecx,0FF
>00695CB7    jbe         00695CBE
 00695CB9    call        @BoundErr
 00695CBE    mov         edx,esi
 00695CC0    cmp         edx,0FF
>00695CC6    jbe         00695CCD
 00695CC8    call        @BoundErr
 00695CCD    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00695CD2    mov         eax,dword ptr [eax]
 00695CD4    mov         eax,dword ptr [eax+10]
 00695CD7    call        TFXPIO.SetCCICtrlGIndex
 00695CDC    inc         edi
 00695CDD    cmp         edi,5
>00695CE0    jne         00695CAA
 00695CE2    mov         edi,1
 00695CE7    lea         eax,[esp+8]
 00695CEB    push        eax
 00695CEC    mov         ecx,edi
 00695CEE    cmp         ecx,0FF
>00695CF4    jbe         00695CFB
 00695CF6    call        @BoundErr
 00695CFB    mov         ebx,esi
 00695CFD    cmp         ebx,0FF
>00695D03    jbe         00695D0A
 00695D05    call        @BoundErr
 00695D0A    mov         edx,ebx
 00695D0C    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00695D11    mov         eax,dword ptr [eax]
 00695D13    mov         eax,dword ptr [eax+10]
 00695D16    call        TFXPIO.GetCCOCtrlGroups
 00695D1B    lea         edx,[esp+8]
 00695D1F    mov         eax,dword ptr [esp]
 00695D22    call        TCGData.AddExclusive
 00695D27    push        eax
 00695D28    mov         ecx,edi
 00695D2A    cmp         ecx,0FF
>00695D30    jbe         00695D37
 00695D32    call        @BoundErr
 00695D37    mov         edx,ebx
 00695D39    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00695D3E    mov         eax,dword ptr [eax]
 00695D40    mov         eax,dword ptr [eax+10]
 00695D43    call        TFXPIO.SetCCOCtrlGIndex
 00695D48    inc         edi
 00695D49    cmp         edi,3
>00695D4C    jne         00695CE7
 00695D4E    mov         edi,1
 00695D53    lea         eax,[esp+8]
 00695D57    push        eax
 00695D58    mov         ecx,edi
 00695D5A    cmp         ecx,0FF
>00695D60    jbe         00695D67
 00695D62    call        @BoundErr
 00695D67    mov         ebx,esi
 00695D69    cmp         ebx,0FF
>00695D6F    jbe         00695D76
 00695D71    call        @BoundErr
 00695D76    mov         edx,ebx
 00695D78    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00695D7D    mov         eax,dword ptr [eax]
 00695D7F    mov         eax,dword ptr [eax+10]
 00695D82    call        TFXPIO.GetADOCtrlGroups
 00695D87    lea         edx,[esp+8]
 00695D8B    mov         eax,dword ptr [esp]
 00695D8E    call        TCGData.AddExclusive
 00695D93    push        eax
 00695D94    mov         ecx,edi
 00695D96    cmp         ecx,0FF
>00695D9C    jbe         00695DA3
 00695D9E    call        @BoundErr
 00695DA3    mov         edx,ebx
 00695DA5    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00695DAA    mov         eax,dword ptr [eax]
 00695DAC    mov         eax,dword ptr [eax+10]
 00695DAF    call        TFXPIO.SetADOCtrlGIndex
 00695DB4    inc         edi
 00695DB5    cmp         edi,5
>00695DB8    jne         00695D53
>00695DBA    jmp         00695F4A
 00695DBF    mov         edi,1
 00695DC4    lea         eax,[esp+8]
 00695DC8    push        eax
 00695DC9    mov         ecx,edi
 00695DCB    cmp         ecx,0FF
>00695DD1    jbe         00695DD8
 00695DD3    call        @BoundErr
 00695DD8    mov         ebx,esi
 00695DDA    cmp         ebx,0FF
>00695DE0    jbe         00695DE7
 00695DE2    call        @BoundErr
 00695DE7    mov         edx,ebx
 00695DE9    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00695DEE    mov         eax,dword ptr [eax]
 00695DF0    mov         eax,dword ptr [eax+10]
 00695DF3    call        TFXPIO.GetCCOCtrlGroups
 00695DF8    lea         edx,[esp+8]
 00695DFC    mov         eax,dword ptr [esp]
 00695DFF    call        TCGData.AddExclusive
 00695E04    push        eax
 00695E05    mov         ecx,edi
 00695E07    cmp         ecx,0FF
>00695E0D    jbe         00695E14
 00695E0F    call        @BoundErr
 00695E14    mov         edx,ebx
 00695E16    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00695E1B    mov         eax,dword ptr [eax]
 00695E1D    mov         eax,dword ptr [eax+10]
 00695E20    call        TFXPIO.SetCCOCtrlGIndex
 00695E25    inc         edi
 00695E26    cmp         edi,11
>00695E29    jne         00695DC4
>00695E2B    jmp         00695F4A
 00695E30    mov         edi,1
 00695E35    lea         eax,[esp+8]
 00695E39    push        eax
 00695E3A    mov         ecx,edi
 00695E3C    cmp         ecx,0FF
>00695E42    jbe         00695E49
 00695E44    call        @BoundErr
 00695E49    mov         ebx,esi
 00695E4B    cmp         ebx,0FF
>00695E51    jbe         00695E58
 00695E53    call        @BoundErr
 00695E58    mov         edx,ebx
 00695E5A    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00695E5F    mov         eax,dword ptr [eax]
 00695E61    mov         eax,dword ptr [eax+10]
 00695E64    call        TFXPIO.GetADOCtrlGroups
 00695E69    lea         edx,[esp+8]
 00695E6D    mov         eax,dword ptr [esp]
 00695E70    call        TCGData.AddExclusive
 00695E75    push        eax
 00695E76    mov         ecx,edi
 00695E78    cmp         ecx,0FF
>00695E7E    jbe         00695E85
 00695E80    call        @BoundErr
 00695E85    mov         edx,ebx
 00695E87    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00695E8C    mov         eax,dword ptr [eax]
 00695E8E    mov         eax,dword ptr [eax+10]
 00695E91    call        TFXPIO.SetADOCtrlGIndex
 00695E96    inc         edi
 00695E97    cmp         edi,0D
>00695E9A    jne         00695E35
>00695E9C    jmp         00695F4A
 00695EA1    mov         edi,1
 00695EA6    push        0FFFF
 00695EAB    mov         ecx,edi
 00695EAD    cmp         ecx,0FF
>00695EB3    jbe         00695EBA
 00695EB5    call        @BoundErr
 00695EBA    mov         edx,esi
 00695EBC    cmp         edx,0FF
>00695EC2    jbe         00695EC9
 00695EC4    call        @BoundErr
 00695EC9    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00695ECE    mov         eax,dword ptr [eax]
 00695ED0    mov         eax,dword ptr [eax+10]
 00695ED3    call        TFXPIO.SetCCICtrlGIndex
 00695ED8    inc         edi
 00695ED9    cmp         edi,4
>00695EDC    jne         00695EA6
 00695EDE    mov         edi,1
 00695EE3    lea         eax,[esp+8]
 00695EE7    push        eax
 00695EE8    mov         ecx,edi
 00695EEA    cmp         ecx,0FF
>00695EF0    jbe         00695EF7
 00695EF2    call        @BoundErr
 00695EF7    mov         ebx,esi
 00695EF9    cmp         ebx,0FF
>00695EFF    jbe         00695F06
 00695F01    call        @BoundErr
 00695F06    mov         edx,ebx
 00695F08    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00695F0D    mov         eax,dword ptr [eax]
 00695F0F    mov         eax,dword ptr [eax+10]
 00695F12    call        TFXPIO.GetCCOCtrlGroups
 00695F17    lea         edx,[esp+8]
 00695F1B    mov         eax,dword ptr [esp]
 00695F1E    call        TCGData.AddExclusive
 00695F23    push        eax
 00695F24    mov         ecx,edi
 00695F26    cmp         ecx,0FF
>00695F2C    jbe         00695F33
 00695F2E    call        @BoundErr
 00695F33    mov         edx,ebx
 00695F35    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00695F3A    mov         eax,dword ptr [eax]
 00695F3C    mov         eax,dword ptr [eax+10]
 00695F3F    call        TFXPIO.SetCCOCtrlGIndex
 00695F44    inc         edi
 00695F45    cmp         edi,5
>00695F48    jne         00695EE3
 00695F4A    inc         esi
 00695F4B    cmp         esi,5
>00695F4E    jne         00695C66
 00695F54    xor         edi,edi
 00695F56    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00695F5B    mov         eax,dword ptr [eax]
 00695F5D    mov         eax,dword ptr [eax+0C]
 00695F60    mov         edx,edi
 00695F62    call        TFXPPD.GetControllerLoopType
 00695F67    mov         dword ptr [esp+4],eax
 00695F6B    xor         esi,esi
 00695F6D    mov         ebx,1
 00695F72    xor         eax,eax
 00695F74    mov         edx,dword ptr [esp+4]
 00695F78    cmp         edx,6
>00695F7B    ja          006961F2
 00695F81    jmp         dword ptr [edx*4+695F88]
 00695F81    dd          006961F2
 00695F81    dd          00696182
 00695F81    dd          006961F2
 00695F81    dd          00695FA4
 00695F81    dd          00696019
 00695F81    dd          00695FA4
 00695F81    dd          00696019
 00695FA4    cmp         edi,7
>00695FA7    jbe         00695FAE
 00695FA9    call        @BoundErr
 00695FAE    imul        eax,edi,43B3
>00695FB4    jno         00695FBB
 00695FB6    call        @IntOver
 00695FBB    mov         edx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 00695FC1    mov         edx,dword ptr [edx]
 00695FC3    mov         edx,dword ptr [edx+14]
 00695FC6    lea         ebp,[edx+eax*4]
 00695FC9    cmp         esi,1
>00695FCC    jbe         00695FD3
 00695FCE    call        @BoundErr
 00695FD3    imul        eax,esi,43B3
>00695FD9    jno         00695FE0
 00695FDB    call        @IntOver
 00695FE0    lea         eax,[ebp+eax*2]
 00695FE4    dec         ebx
 00695FE5    cmp         ebx,9E
>00695FEB    jbe         00695FF2
 00695FED    call        @BoundErr
 00695FF2    inc         ebx
 00695FF3    imul        edx,ebx,6D
>00695FF6    jno         00695FFD
 00695FF8    call        @IntOver
 00695FFD    movzx       eax,byte ptr [eax+edx*2-0CC]
 00696005    mov         edx,dword ptr ds:[7C4404];^gvar_007C2680
 0069600B    movzx       eax,al
 0069600E    bt          dword ptr [edx],eax
 00696011    setb        al
>00696014    jmp         006961F2
 00696019    cmp         edi,7
>0069601C    jbe         00696023
 0069601E    call        @BoundErr
 00696023    imul        edx,edi,43B3
>00696029    jno         00696030
 0069602B    call        @IntOver
 00696030    mov         ecx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 00696036    mov         ecx,dword ptr [ecx]
 00696038    mov         ecx,dword ptr [ecx+14]
 0069603B    lea         edx,[ecx+edx*4]
 0069603E    push        edx
 0069603F    cmp         esi,1
>00696042    jbe         00696049
 00696044    call        @BoundErr
 00696049    imul        edx,esi,43B3
>0069604F    jno         00696056
 00696051    call        @IntOver
 00696056    pop         ecx
 00696057    lea         edx,[ecx+edx*2]
 0069605A    push        edx
 0069605B    dec         ebx
 0069605C    cmp         ebx,9E
>00696062    jbe         00696069
 00696064    call        @BoundErr
 00696069    inc         ebx
 0069606A    imul        edx,ebx,6D
>0069606D    jno         00696074
 0069606F    call        @IntOver
 00696074    pop         ecx
 00696075    movzx       edx,byte ptr [ecx+edx*2-0CB]
 0069607D    sub         dl,1
>00696080    jb          00696089
>00696082    je          006960FE
>00696084    jmp         006961F2
 00696089    cmp         edi,7
>0069608C    jbe         00696093
 0069608E    call        @BoundErr
 00696093    imul        eax,edi,43B3
>00696099    jno         006960A0
 0069609B    call        @IntOver
 006960A0    mov         edx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 006960A6    mov         edx,dword ptr [edx]
 006960A8    mov         edx,dword ptr [edx+14]
 006960AB    lea         ebp,[edx+eax*4]
 006960AE    cmp         esi,1
>006960B1    jbe         006960B8
 006960B3    call        @BoundErr
 006960B8    imul        eax,esi,43B3
>006960BE    jno         006960C5
 006960C0    call        @IntOver
 006960C5    lea         eax,[ebp+eax*2]
 006960C9    dec         ebx
 006960CA    cmp         ebx,9E
>006960D0    jbe         006960D7
 006960D2    call        @BoundErr
 006960D7    inc         ebx
 006960D8    imul        edx,ebx,6D
>006960DB    jno         006960E2
 006960DD    call        @IntOver
 006960E2    movzx       eax,byte ptr [eax+edx*2-0CC]
 006960EA    mov         edx,dword ptr ds:[7C435C];^gvar_007C25E0
 006960F0    movzx       eax,al
 006960F3    bt          dword ptr [edx],eax
 006960F6    setb        al
>006960F9    jmp         006961F2
 006960FE    cmp         edi,7
>00696101    jbe         00696108
 00696103    call        @BoundErr
 00696108    imul        eax,edi,43B3
>0069610E    jno         00696115
 00696110    call        @IntOver
 00696115    mov         edx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 0069611B    mov         edx,dword ptr [edx]
 0069611D    mov         edx,dword ptr [edx+14]
 00696120    lea         ebp,[edx+eax*4]
 00696123    cmp         esi,1
>00696126    jbe         0069612D
 00696128    call        @BoundErr
 0069612D    imul        eax,esi,43B3
>00696133    jno         0069613A
 00696135    call        @IntOver
 0069613A    lea         eax,[ebp+eax*2]
 0069613E    dec         ebx
 0069613F    cmp         ebx,9E
>00696145    jbe         0069614C
 00696147    call        @BoundErr
 0069614C    inc         ebx
 0069614D    imul        edx,ebx,6D
>00696150    jno         00696157
 00696152    call        @IntOver
 00696157    movzx       eax,byte ptr [eax+edx*2-0CC]
 0069615F    add         al,0FE
 00696161    sub         al,0C
>00696163    jb          0069617E
 00696165    add         al,0F8
 00696167    sub         al,2
>00696169    jb          0069617E
 0069616B    dec         eax
 0069616C    sub         al,2
>0069616E    jb          0069617E
 00696170    sub         al,8
>00696172    je          0069617E
 00696174    add         al,0FB
 00696176    sub         al,5
>00696178    jb          0069617E
 0069617A    xor         eax,eax
>0069617C    jmp         006961F2
 0069617E    mov         al,1
>00696180    jmp         006961F2
 00696182    cmp         edi,7
>00696185    jbe         0069618C
 00696187    call        @BoundErr
 0069618C    imul        eax,edi,43B3
>00696192    jno         00696199
 00696194    call        @IntOver
 00696199    mov         edx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 0069619F    mov         edx,dword ptr [edx]
 006961A1    mov         edx,dword ptr [edx+14]
 006961A4    lea         ebp,[edx+eax*4]
 006961A7    cmp         esi,1
>006961AA    jbe         006961B1
 006961AC    call        @BoundErr
 006961B1    imul        eax,esi,43B3
>006961B7    jno         006961BE
 006961B9    call        @IntOver
 006961BE    lea         eax,[ebp+eax*2]
 006961C2    dec         ebx
 006961C3    cmp         ebx,9E
>006961C9    jbe         006961D0
 006961CB    call        @BoundErr
 006961D0    inc         ebx
 006961D1    imul        edx,ebx,6D
>006961D4    jno         006961DB
 006961D6    call        @IntOver
 006961DB    movzx       eax,byte ptr [eax+edx*2-0CC]
 006961E3    mov         edx,dword ptr ds:[7C435C];^gvar_007C25E0
 006961E9    movzx       eax,al
 006961EC    bt          dword ptr [edx],eax
 006961EF    setb        al
 006961F2    test        al,al
>006961F4    je          006962B9
 006961FA    cmp         edi,7
>006961FD    jbe         00696204
 006961FF    call        @BoundErr
 00696204    imul        ebp,edi,43B3
>0069620A    jno         00696211
 0069620C    call        @IntOver
 00696211    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00696216    mov         eax,dword ptr [eax]
 00696218    mov         eax,dword ptr [eax+14]
 0069621B    lea         eax,[eax+ebp*4]
 0069621E    cmp         esi,1
>00696221    jbe         00696228
 00696223    call        @BoundErr
 00696228    imul        edx,esi,43B3
>0069622E    jno         00696235
 00696230    call        @IntOver
 00696235    lea         eax,[eax+edx*2]
 00696238    dec         ebx
 00696239    cmp         ebx,9E
>0069623F    jbe         00696246
 00696241    call        @BoundErr
 00696246    inc         ebx
 00696247    imul        edx,ebx,6D
>0069624A    jno         00696251
 0069624C    call        @IntOver
 00696251    lea         edx,[eax+edx*2-0B0]
 00696258    mov         eax,dword ptr [esp]
 0069625B    call        TCGData.AddExclusive
 00696260    mov         edx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 00696266    mov         edx,dword ptr [edx]
 00696268    mov         edx,dword ptr [edx+14]
 0069626B    lea         edx,[edx+ebp*4]
 0069626E    cmp         esi,1
>00696271    jbe         00696278
 00696273    call        @BoundErr
 00696278    imul        ecx,esi,43B3
>0069627E    jno         00696285
 00696280    call        @IntOver
 00696285    lea         edx,[edx+ecx*2]
 00696288    push        edx
 00696289    dec         ebx
 0069628A    cmp         ebx,9E
>00696290    jbe         00696297
 00696292    call        @BoundErr
 00696297    inc         ebx
 00696298    imul        edx,ebx,6D
>0069629B    jno         006962A2
 0069629D    call        @IntOver
 006962A2    pop         ecx
 006962A3    cmp         eax,0FFFF
>006962A8    jbe         006962AF
 006962AA    call        @BoundErr
 006962AF    mov         word ptr [ecx+edx*2-0B2],ax
>006962B7    jmp         0069631C
 006962B9    cmp         edi,7
>006962BC    jbe         006962C3
 006962BE    call        @BoundErr
 006962C3    imul        eax,edi,43B3
>006962C9    jno         006962D0
 006962CB    call        @IntOver
 006962D0    mov         edx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 006962D6    mov         edx,dword ptr [edx]
 006962D8    mov         edx,dword ptr [edx+14]
 006962DB    lea         ebp,[edx+eax*4]
 006962DE    cmp         esi,1
>006962E1    jbe         006962E8
 006962E3    call        @BoundErr
 006962E8    imul        eax,esi,43B3
>006962EE    jno         006962F5
 006962F0    call        @IntOver
 006962F5    lea         eax,[ebp+eax*2]
 006962F9    dec         ebx
 006962FA    cmp         ebx,9E
>00696300    jbe         00696307
 00696302    call        @BoundErr
 00696307    inc         ebx
 00696308    imul        edx,ebx,6D
>0069630B    jno         00696312
 0069630D    call        @IntOver
 00696312    mov         word ptr [eax+edx*2-0B2],0FFFF
 0069631C    inc         ebx
 0069631D    cmp         ebx,0A0
>00696323    jne         00695F72
 00696329    inc         esi
 0069632A    cmp         esi,2
>0069632D    jne         00695F6D
 00696333    inc         edi
 00696334    cmp         edi,8
>00696337    jne         00695F56
 0069633D    add         esp,8C
 00696343    pop         ebp
 00696344    pop         edi
 00696345    pop         esi
 00696346    pop         ebx
 00696347    ret
*}
end;

//00696348
procedure TCGData.Clear;
begin
{*
 00696348    push        ebx
 00696349    push        esi
 0069634A    push        edi
 0069634B    mov         esi,eax
 0069634D    mov         ebx,dword ptr [esi+8];TCGData.FCount:Integer
 00696350    sub         ebx,1
>00696353    jno         0069635A
 00696355    call        @IntOver
 0069635A    test        ebx,ebx
>0069635C    jl          0069637E
 0069635E    inc         ebx
 0069635F    xor         edi,edi
 00696361    mov         eax,dword ptr [esi+0C];TCGData.FCG:TCGArr
 00696364    test        eax,eax
>00696366    je          0069636D
 00696368    cmp         edi,dword ptr [eax-4]
>0069636B    jb          00696372
 0069636D    call        @BoundErr
 00696372    mov         eax,dword ptr [eax+edi*4]
 00696375    call        @FreeMem
 0069637A    inc         edi
 0069637B    dec         ebx
>0069637C    jne         00696361
 0069637E    xor         eax,eax
 00696380    mov         dword ptr [esi+8],eax;TCGData.FCount:Integer
 00696383    xor         eax,eax
 00696385    mov         dword ptr [esi+4],eax;TCGData.FCapacity:Integer
 00696388    lea         eax,[esi+0C];TCGData.FCG:TCGArr
 0069638B    mov         edx,dword ptr ds:[694FE4];TCGArr
 00696391    call        @DynArrayClear
 00696396    pop         edi
 00696397    pop         esi
 00696398    pop         ebx
 00696399    ret
*}
end;

//0069639C
function TCGData.GetCGRec(index:Integer):PCGRec;
begin
{*
 0069639C    mov         eax,dword ptr [eax+0C];TCGData.FCG:TCGArr
 0069639F    test        eax,eax
>006963A1    je          006963A8
 006963A3    cmp         edx,dword ptr [eax-4]
>006963A6    jb          006963AD
 006963A8    call        @BoundErr
 006963AD    mov         eax,dword ptr [eax+edx*4]
 006963B0    ret
*}
end;

//006963B4
procedure TCGData.NewRec;
begin
{*
 006963B4    push        ebx
 006963B5    mov         ebx,eax
 006963B7    mov         eax,dword ptr [ebx+8];TCGData.FCount:Integer
 006963BA    cmp         eax,dword ptr [ebx+4];TCGData.FCapacity:Integer
>006963BD    jne         006963E4
 006963BF    add         dword ptr [ebx+4],0A;TCGData.FCapacity:Integer
>006963C3    jno         006963CA
 006963C5    call        @IntOver
 006963CA    mov         eax,dword ptr [ebx+4];TCGData.FCapacity:Integer
 006963CD    push        eax
 006963CE    lea         eax,[ebx+0C];TCGData.FCG:TCGArr
 006963D1    mov         ecx,1
 006963D6    mov         edx,dword ptr ds:[694FE4];TCGArr
 006963DC    call        @DynArraySetLength
 006963E1    add         esp,4
 006963E4    mov         eax,82
 006963E9    call        AllocMem
 006963EE    mov         edx,dword ptr [ebx+8];TCGData.FCount:Integer
 006963F1    mov         ecx,dword ptr [ebx+0C];TCGData.FCG:TCGArr
 006963F4    test        ecx,ecx
>006963F6    je          006963FD
 006963F8    cmp         edx,dword ptr [ecx-4]
>006963FB    jb          00696402
 006963FD    call        @BoundErr
 00696402    mov         dword ptr [ecx+edx*4],eax
 00696405    mov         eax,dword ptr [ebx+8];TCGData.FCount:Integer
 00696408    mov         edx,dword ptr [ebx+0C];TCGData.FCG:TCGArr
 0069640B    test        edx,edx
>0069640D    je          00696414
 0069640F    cmp         eax,dword ptr [edx-4]
>00696412    jb          00696419
 00696414    call        @BoundErr
 00696419    mov         eax,dword ptr [edx+eax*4]
 0069641C    add         dword ptr [ebx+8],1;TCGData.FCount:Integer
>00696420    jno         00696427
 00696422    call        @IntOver
 00696427    pop         ebx
 00696428    ret
*}
end;

//0069642C
{*function sub_0069642C(?:?):?;
begin
 0069642C    cmp         byte ptr [eax+2],0
>00696430    je          00696435
 00696432    xor         eax,eax
 00696434    ret
 00696435    mov         ecx,7E
 0069643A    lea         edx,[eax+4]
 0069643D    cmp         byte ptr [edx],0
>00696440    je          00696445
 00696442    xor         eax,eax
 00696444    ret
 00696445    inc         edx
 00696446    dec         ecx
>00696447    jne         0069643D
 00696449    mov         al,1
 0069644B    ret
end;*}

//0069644C
{*function sub_0069644C(?:?; ?:TCGRec):?;
begin
 0069644C    push        esi
 0069644D    push        edi
 0069644E    add         esp,0FFFFFF7C
 00696454    mov         esi,edx
 00696456    lea         edi,[esp]
 00696459    mov         ecx,20
 0069645E    rep movs    dword ptr [edi],dword ptr [esi]
 00696460    movs        word ptr [edi],word ptr [esi]
 00696462    lea         edx,[esp+2]
 00696466    add         eax,2
 00696469    mov         ecx,80
 0069646E    call        CompareMem
 00696473    add         esp,84
 00696479    pop         edi
 0069647A    pop         esi
 0069647B    ret
end;*}

Initialization
Finalization
//0069647C
{*
 0069647C    push        ebp
 0069647D    mov         ebp,esp
 0069647F    xor         eax,eax
 00696481    push        ebp
 00696482    push        6964AD
 00696487    push        dword ptr fs:[eax]
 0069648A    mov         dword ptr fs:[eax],esp
 0069648D    inc         dword ptr ds:[8DF5B4]
>00696493    jne         0069649F
 00696495    mov         eax,7C2878;^'Control Groups encoding error!'
 0069649A    call        @UStrClr
 0069649F    xor         eax,eax
 006964A1    pop         edx
 006964A2    pop         ecx
 006964A3    pop         ecx
 006964A4    mov         dword ptr fs:[eax],edx
 006964A7    push        6964B4
 006964AC    ret
>006964AD    jmp         @HandleFinally
>006964B2    jmp         006964AC
 006964B4    pop         ebp
 006964B5    ret
*}
end.