//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit FXTextData;

interface

uses
  SysUtils, Classes, FXPanelData;

type
  TFXEvents = (evNone, evFireAlarm, evPrewarning, evFaultWarning, evMaintenance, evTechAlarm, evDisablement, evInternalLogic);
  TFXEventSet = set of TFXEvents;
  TFXTDRec = TFXTDRec = record//size=2F900
FXAT:?;//f0
FXPT:?;//f27C00
FXZT:?;//f2BA80
end;;
  TFXPTD = class(TObject)
  published
    function FXMoveTempTDataToTData(loopindx:Byte):Boolean;//0067310C
    procedure InitFXAPTextDataOfLoop(loopindx:Byte);//006732EC
    procedure InitFXTData;//00673638
    //procedure TextOfAddress(LoopId:Word; Address:Word; ?:?);//00673B08
    procedure MoveAddressTextData(FromLoopIndx:Byte; ToLoopIndx:Byte);//006736A0
    procedure FXMoveTDataToTempTData(loopindx:Byte);//00673234
    function ReadPT(fs:TFileStream; VersionMajor:Integer; RecordSize:Integer; NumOfRecords:Integer; VersionMinor:Integer):Integer;//00672CBC
    procedure DecodeFXTDMsg(MsgLen:Byte; MsgData:TMsgData);//006728FC
    function EncodeFXTDMsg(loopindx:Word; rangindx:Word; var MsgData:TMsgData; var MsgLen:Byte; NegVer:Word; addrindx:Word):Boolean;//0067242C
    function SaveAT(fs:TFileStream; VersionMajor:Integer; RecordSize:Cardinal; NumOfRecords:Word; VersionMinor:Integer):Integer;//00672FBC
    function ReadAT(fs:TFileStream; VersionMajor:Integer; RecordSize:Integer; NumOfRecords:Integer; VersionMinor:Integer):Integer;//00672DF4
    function SavePT(fs:TFileStream; VersionMajor:Integer; RecordSize:Cardinal; NumOfRecords:Word; VersionMinor:Integer):Integer;//00672D54
  public
    FXTD:TFXTDRec;//f4
    PD:TFXPPD;//f2F904
  end;

implementation

//0067242C
function TFXPTD.EncodeFXTDMsg(loopindx:Word; rangindx:Word; var MsgData:TMsgData; var MsgLen:Byte; NegVer:Word; addrindx:Word):Boolean;
begin
{*
 0067242C    push        ebp
 0067242D    mov         ebp,esp
 0067242F    add         esp,0FFFFFEF4
 00672435    push        ebx
 00672436    push        esi
 00672437    push        edi
 00672438    xor         ebx,ebx
 0067243A    mov         dword ptr [ebp-4],ebx
 0067243D    mov         word ptr [ebp-0A],cx
 00672441    mov         esi,edx
 00672443    mov         dword ptr [ebp-8],eax
 00672446    xor         eax,eax
 00672448    push        ebp
 00672449    push        6728E8
 0067244E    push        dword ptr fs:[eax]
 00672451    mov         dword ptr fs:[eax],esp
 00672454    movzx       eax,word ptr [ebp+10]
 00672458    dec         eax
 00672459    sub         ax,5
>0067245D    jb          00672479
 0067245F    sub         ax,3
>00672463    jb          00672487
 00672465    add         eax,0FFFFFFE9
 00672468    sub         ax,2
>0067246C    jb          00672487
 0067246E    add         eax,0FFFFFFE2
 00672471    sub         ax,9
>00672475    jb          00672487
>00672477    jmp         00672495
 00672479    mov         byte ptr [ebp-0B],0
 0067247D    mov         byte ptr [ebp-0C],0
 00672481    mov         byte ptr [ebp-0D],0
>00672485    jmp         006724AC
 00672487    mov         byte ptr [ebp-0B],2
 0067248B    mov         byte ptr [ebp-0C],0
 0067248F    mov         byte ptr [ebp-0D],0
>00672493    jmp         006724AC
 00672495    mov         ecx,dword ptr ds:[7C13F8];^'Text Data encoding error!'
 0067249B    mov         dl,1
 0067249D    mov         eax,[004174D0];Exception
 006724A2    call        Exception.Create;Exception.Create
 006724A7    call        @RaiseExcept
 006724AC    lea         eax,[ebp-10B]
 006724B2    xor         ecx,ecx
 006724B4    mov         edx,0FE
 006724B9    call        @FillChar
 006724BE    lea         eax,[ebp-4]
 006724C1    call        @LStrClr
 006724C6    mov         eax,dword ptr [ebp-4]
 006724C9    test        eax,eax
>006724CB    je          006724D2
 006724CD    sub         eax,4
 006724D0    mov         eax,dword ptr [eax]
 006724D2    mov         ebx,eax
 006724D4    cmp         ebx,0FF
>006724DA    jbe         006724E1
 006724DC    call        @BoundErr
 006724E1    mov         eax,esi
 006724E3    sub         ax,8
>006724E7    jb          00672501
 006724E9    sub         ax,0F6
>006724ED    je          0067267C
 006724F3    dec         ax
>006724F6    je          00672740
>006724FC    jmp         006727F0
 00672501    lea         eax,[ebp-4]
 00672504    movzx       edx,si
 00672507    cmp         edx,7
>0067250A    jbe         00672511
 0067250C    call        @BoundErr
 00672511    imul        edx,edx,9F0
>00672517    jno         0067251E
 00672519    call        @IntOver
 0067251E    mov         ecx,dword ptr [ebp-8]
 00672521    lea         edi,[ecx+edx*8]
 00672524    movzx       edx,word ptr [ebp-0A]
 00672528    cmp         edx,1
>0067252B    jbe         00672532
 0067252D    call        @BoundErr
 00672532    imul        edx,edx,4F8
>00672538    jno         0067253F
 0067253A    call        @IntOver
 0067253F    lea         edx,[edi+edx*8]
 00672542    movzx       ecx,word ptr [ebp+14]
 00672546    dec         ecx
 00672547    cmp         ecx,9E
>0067254D    jbe         00672554
 0067254F    call        @BoundErr
 00672554    inc         ecx
 00672555    imul        ecx,ecx,8
>00672558    jno         0067255F
 0067255A    call        @IntOver
 0067255F    lea         edx,[edx+ecx*8-3A]
 00672563    mov         ecx,0
 00672568    call        @LStrFromString
 0067256D    mov         eax,dword ptr [ebp-4]
 00672570    test        eax,eax
>00672572    je          00672579
 00672574    sub         eax,4
 00672577    mov         eax,dword ptr [eax]
 00672579    mov         ebx,eax
 0067257B    cmp         ebx,0FF
>00672581    jbe         00672588
 00672583    call        @BoundErr
 00672588    movzx       eax,si
 0067258B    add         eax,1
>0067258E    jno         00672595
 00672590    call        @IntOver
 00672595    cmp         eax,0FF
>0067259A    jbe         006725A1
 0067259C    call        @BoundErr
 006725A1    mov         byte ptr [ebp-10B],al
 006725A7    movzx       edi,si
 006725AA    mov         edx,edi
 006725AC    mov         eax,dword ptr [ebp-8]
 006725AF    mov         eax,dword ptr [eax+2F904];TFXPTD.PD:TFXPPD
 006725B5    call        TFXPPD.GetControllerLoopType
 006725BA    cmp         eax,4
>006725BD    je          006725D4
 006725BF    mov         edx,edi
 006725C1    mov         eax,dword ptr [ebp-8]
 006725C4    mov         eax,dword ptr [eax+2F904];TFXPTD.PD:TFXPPD
 006725CA    call        TFXPPD.GetControllerLoopType
 006725CF    cmp         eax,6
>006725D2    jne         00672610
 006725D4    movzx       eax,word ptr [ebp+14]
 006725D8    cmp         eax,0FF
>006725DD    jbe         006725E4
 006725DF    call        @BoundErr
 006725E4    mov         byte ptr [ebp-10A],al
 006725EA    movzx       eax,word ptr [ebp-0A]
 006725EE    mov         edx,0C8
 006725F3    mul         eax,edx
>006725F5    jno         006725FC
 006725F7    call        @IntOver
 006725FC    cmp         eax,0FF
>00672601    jbe         00672608
 00672603    call        @BoundErr
 00672608    mov         byte ptr [ebp-109],al
>0067260E    jmp         00672648
 00672610    movzx       eax,word ptr [ebp-0A]
 00672614    mov         edx,64
 00672619    mul         eax,edx
>0067261B    jno         00672622
 0067261D    call        @IntOver
 00672622    movzx       edx,word ptr [ebp+14]
 00672626    add         eax,edx
>00672628    jno         0067262F
 0067262A    call        @IntOver
 0067262F    cmp         eax,0FF
>00672634    jbe         0067263B
 00672636    call        @BoundErr
 0067263B    mov         byte ptr [ebp-10A],al
 00672641    mov         byte ptr [ebp-109],0
 00672648    lea         eax,[ebp-4]
 0067264B    call        @UniqueStringA
 00672650    mov         edx,1
 00672655    dec         edx
 00672656    test        eax,eax
>00672658    je          0067265F
 0067265A    cmp         edx,dword ptr [eax-4]
>0067265D    jb          00672664
 0067265F    call        @BoundErr
 00672664    inc         edx
 00672665    lea         eax,[eax+edx-1]
 00672669    movzx       ecx,bl
 0067266C    lea         edx,[ebp-108]
 00672672    call        Move
>00672677    jmp         006727F0
 0067267C    lea         eax,[ebp-4]
 0067267F    movzx       edx,word ptr [ebp+14]
 00672683    dec         edx
 00672684    cmp         edx,0F9
>0067268A    jbe         00672691
 0067268C    call        @BoundErr
 00672691    inc         edx
 00672692    imul        edx,edx,8
>00672695    jno         0067269C
 00672697    call        @IntOver
 0067269C    mov         ecx,dword ptr [ebp-8]
 0067269F    lea         edx,[ecx+edx*8+27BC6]
 006726A6    mov         ecx,0
 006726AB    call        @LStrFromString
 006726B0    mov         eax,dword ptr [ebp-4]
 006726B3    test        eax,eax
>006726B5    je          006726BC
 006726B7    sub         eax,4
 006726BA    mov         eax,dword ptr [eax]
 006726BC    mov         ebx,eax
 006726BE    cmp         ebx,0FF
>006726C4    jbe         006726CB
 006726C6    call        @BoundErr
 006726CB    movzx       eax,si
 006726CE    cmp         eax,0FF
>006726D3    jbe         006726DA
 006726D5    call        @BoundErr
 006726DA    mov         byte ptr [ebp-10B],al
 006726E0    movzx       eax,word ptr [ebp-0A]
 006726E4    cmp         eax,0FF
>006726E9    jbe         006726F0
 006726EB    call        @BoundErr
 006726F0    mov         byte ptr [ebp-10A],al
 006726F6    movzx       eax,word ptr [ebp+14]
 006726FA    cmp         eax,0FF
>006726FF    jbe         00672706
 00672701    call        @BoundErr
 00672706    mov         byte ptr [ebp-109],al
 0067270C    lea         eax,[ebp-4]
 0067270F    call        @UniqueStringA
 00672714    mov         edx,1
 00672719    dec         edx
 0067271A    test        eax,eax
>0067271C    je          00672723
 0067271E    cmp         edx,dword ptr [eax-4]
>00672721    jb          00672728
 00672723    call        @BoundErr
 00672728    inc         edx
 00672729    lea         eax,[eax+edx-1]
 0067272D    movzx       ecx,bl
 00672730    lea         edx,[ebp-108]
 00672736    call        Move
>0067273B    jmp         006727F0
 00672740    lea         eax,[ebp-4]
 00672743    movzx       edx,word ptr [ebp+14]
 00672747    dec         edx
 00672748    cmp         edx,0F9
>0067274E    jbe         00672755
 00672750    call        @BoundErr
 00672755    inc         edx
 00672756    imul        edx,edx,8
>00672759    jno         00672760
 0067275B    call        @IntOver
 00672760    mov         ecx,dword ptr [ebp-8]
 00672763    lea         edx,[ecx+edx*8+27BC6]
 0067276A    mov         ecx,0
 0067276F    call        @LStrFromString
 00672774    mov         eax,dword ptr [ebp-4]
 00672777    test        eax,eax
>00672779    je          00672780
 0067277B    sub         eax,4
 0067277E    mov         eax,dword ptr [eax]
 00672780    mov         ebx,eax
 00672782    cmp         ebx,0FF
>00672788    jbe         0067278F
 0067278A    call        @BoundErr
 0067278F    movzx       eax,si
 00672792    cmp         eax,0FF
>00672797    jbe         0067279E
 00672799    call        @BoundErr
 0067279E    mov         byte ptr [ebp-10B],al
 006727A4    movzx       eax,word ptr [ebp+14]
 006727A8    cmp         eax,0FF
>006727AD    jbe         006727B4
 006727AF    call        @BoundErr
 006727B4    mov         byte ptr [ebp-10A],al
 006727BA    mov         byte ptr [ebp-109],0
 006727C1    lea         eax,[ebp-4]
 006727C4    call        @UniqueStringA
 006727C9    mov         edx,1
 006727CE    dec         edx
 006727CF    test        eax,eax
>006727D1    je          006727D8
 006727D3    cmp         edx,dword ptr [eax-4]
>006727D6    jb          006727DD
 006727D8    call        @BoundErr
 006727DD    inc         edx
 006727DE    lea         eax,[eax+edx-1]
 006727E2    movzx       ecx,bl
 006727E5    lea         edx,[ebp-108]
 006727EB    call        Move
 006727F0    movzx       eax,word ptr [ebp+10]
 006727F4    dec         eax
 006727F5    sub         ax,5
>006727F9    jb          00672818
 006727FB    sub         ax,3
>006727FF    jb          00672855
 00672801    add         eax,0FFFFFFE9
 00672804    sub         ax,2
>00672808    jb          00672855
 0067280A    add         eax,0FFFFFFE2
 0067280D    sub         ax,9
>00672811    jb          00672855
>00672813    jmp         006728B9
 00672818    movzx       esi,bl
 0067281B    mov         ecx,esi
 0067281D    add         ecx,3
>00672820    jno         00672827
 00672822    call        @IntOver
 00672827    mov         edx,dword ptr [ebp+8]
 0067282A    inc         edx
 0067282B    lea         eax,[ebp-10B]
 00672831    call        Move
 00672836    mov         eax,esi
 00672838    add         eax,5
>0067283B    jno         00672842
 0067283D    call        @IntOver
 00672842    cmp         eax,0FF
>00672847    jbe         0067284E
 00672849    call        @BoundErr
 0067284E    mov         edx,dword ptr [ebp+0C]
 00672851    mov         byte ptr [edx],al
>00672853    jmp         006728D0
 00672855    mov         eax,dword ptr [ebp+8]
 00672858    mov         byte ptr [eax+1],7F
 0067285C    mov         eax,dword ptr [ebp+8]
 0067285F    movzx       edx,byte ptr [ebp-0B]
 00672863    mov         byte ptr [eax+2],dl
 00672866    mov         eax,dword ptr [ebp+8]
 00672869    movzx       edx,byte ptr [ebp-0C]
 0067286D    mov         byte ptr [eax+3],dl
 00672870    mov         eax,dword ptr [ebp+8]
 00672873    movzx       edx,byte ptr [ebp-0D]
 00672877    mov         byte ptr [eax+4],dl
 0067287A    movzx       esi,bl
 0067287D    mov         ecx,esi
 0067287F    add         ecx,3
>00672882    jno         00672889
 00672884    call        @IntOver
 00672889    mov         edx,dword ptr [ebp+8]
 0067288C    add         edx,5
 0067288F    lea         eax,[ebp-10B]
 00672895    call        Move
 0067289A    mov         eax,esi
 0067289C    add         eax,9
>0067289F    jno         006728A6
 006728A1    call        @IntOver
 006728A6    cmp         eax,0FF
>006728AB    jbe         006728B2
 006728AD    call        @BoundErr
 006728B2    mov         edx,dword ptr [ebp+0C]
 006728B5    mov         byte ptr [edx],al
>006728B7    jmp         006728D0
 006728B9    mov         ecx,dword ptr ds:[7C13F8];^'Text Data encoding error!'
 006728BF    mov         dl,1
 006728C1    mov         eax,[004174D0];Exception
 006728C6    call        Exception.Create;Exception.Create
 006728CB    call        @RaiseExcept
 006728D0    mov         bl,1
 006728D2    xor         eax,eax
 006728D4    pop         edx
 006728D5    pop         ecx
 006728D6    pop         ecx
 006728D7    mov         dword ptr fs:[eax],edx
 006728DA    push        6728EF
 006728DF    lea         eax,[ebp-4]
 006728E2    call        @LStrClr
 006728E7    ret
>006728E8    jmp         @HandleFinally
>006728ED    jmp         006728DF
 006728EF    mov         eax,ebx
 006728F1    pop         edi
 006728F2    pop         esi
 006728F3    pop         ebx
 006728F4    mov         esp,ebp
 006728F6    pop         ebp
 006728F7    ret         10
*}
end;

//006728FC
procedure TFXPTD.DecodeFXTDMsg(MsgLen:Byte; MsgData:TMsgData);
begin
{*
 006728FC    push        ebx
 006728FD    push        esi
 006728FE    push        edi
 006728FF    push        ebp
 00672900    add         esp,0FFFFFDE8
 00672906    mov         edi,ecx
 00672908    mov         ebx,edx
 0067290A    mov         esi,eax
 0067290C    lea         eax,[esp+8]
 00672910    xor         ecx,ecx
 00672912    mov         edx,0FE
 00672917    call        @FillChar
 0067291C    movzx       eax,byte ptr [edi+1]
 00672920    sub         al,7F
>00672922    jne         00672961
 00672924    movzx       eax,byte ptr [edi+2]
 00672928    mov         byte ptr [esp],al
 0067292B    movzx       ebp,bl
 0067292E    mov         ecx,ebp
 00672930    sub         ecx,5
>00672933    jno         0067293A
 00672935    call        @IntOver
 0067293A    lea         edx,[esp+8]
 0067293E    lea         eax,[edi+5]
 00672941    call        Move
 00672946    sub         ebp,9
>00672949    jno         00672950
 0067294B    call        @IntOver
 00672950    cmp         ebp,0FF
>00672956    jbe         0067295D
 00672958    call        @BoundErr
 0067295D    mov         ebx,ebp
>0067295F    jmp         00672999
 00672961    mov         byte ptr [esp],0
 00672965    movzx       ebp,bl
 00672968    mov         ecx,ebp
 0067296A    sub         ecx,1
>0067296D    jno         00672974
 0067296F    call        @IntOver
 00672974    lea         edx,[esp+8]
 00672978    lea         eax,[edi+1]
 0067297B    call        Move
 00672980    sub         ebp,5
>00672983    jno         0067298A
 00672985    call        @IntOver
 0067298A    cmp         ebp,0FF
>00672990    jbe         00672997
 00672992    call        @BoundErr
 00672997    mov         ebx,ebp
 00672999    movzx       eax,byte ptr [esp]
 0067299D    not         al
 0067299F    sub         al,3
>006729A1    jae         006729B8
 006729A3    push        0
 006729A5    movzx       ecx,word ptr ds:[672C60];0x4 gvar_00672C60
 006729AC    xor         edx,edx
 006729AE    mov         eax,672C70;'Unknown version in decoded text data'
 006729B3    call        MessageDlg
 006729B8    movzx       eax,byte ptr [esp+8]
 006729BD    dec         eax
 006729BE    sub         al,8
>006729C0    jb          006729D7
 006729C2    sub         al,0F5
>006729C4    je          00672B39
 006729CA    dec         al
>006729CC    je          00672BC9
>006729D2    jmp         00672C54
 006729D7    lea         eax,[esp+157]
 006729DE    xor         ecx,ecx
 006729E0    mov         edx,40
 006729E5    call        @FillChar
 006729EA    movzx       edi,byte ptr [esp+8]
 006729EF    sub         edi,1
>006729F2    jno         006729F9
 006729F4    call        @IntOver
 006729F9    mov         eax,edi
 006729FB    cmp         eax,0FF
>00672A00    jbe         00672A07
 00672A02    call        @BoundErr
 00672A07    mov         byte ptr [esp+157],al
 00672A0E    mov         eax,dword ptr [esi+2F904];TFXPTD.PD:TFXPPD
 00672A14    mov         edx,edi
 00672A16    call        TFXPPD.GetControllerLoopType
 00672A1B    dec         eax
>00672A1C    je          00672A57
 00672A1E    sub         eax,3
>00672A21    je          00672A28
 00672A23    sub         eax,2
>00672A26    jne         00672A85
 00672A28    movzx       ecx,byte ptr [esp+0A]
 00672A2D    movzx       eax,cl
 00672A30    mov         ebp,0C8
 00672A35    xor         edx,edx
 00672A37    div         eax,ebp
 00672A39    mov         ebp,eax
 00672A3B    movzx       eax,byte ptr [esp+9]
 00672A40    movzx       edx,al
 00672A43    mov         dword ptr [esp+4],edx
 00672A47    mov         byte ptr [esp+158],al
 00672A4E    mov         byte ptr [esp+196],cl
>00672A55    jmp         00672A9A
 00672A57    movzx       ecx,byte ptr [esp+9]
 00672A5C    movzx       eax,cl
 00672A5F    mov         ebp,64
 00672A64    xor         edx,edx
 00672A66    div         eax,ebp
 00672A68    mov         ebp,eax
 00672A6A    movzx       eax,cl
 00672A6D    push        ecx
 00672A6E    mov         ecx,64
 00672A73    xor         edx,edx
 00672A75    div         eax,ecx
 00672A77    pop         ecx
 00672A78    mov         dword ptr [esp+4],edx
 00672A7C    mov         byte ptr [esp+158],cl
>00672A83    jmp         00672A9A
 00672A85    xor         ebp,ebp
 00672A87    movzx       eax,byte ptr [esp+9]
 00672A8C    movzx       edx,al
 00672A8F    mov         dword ptr [esp+4],edx
 00672A93    mov         byte ptr [esp+158],al
 00672A9A    movzx       ecx,bl
 00672A9D    lea         edx,[esp+107]
 00672AA4    lea         eax,[esp+0B]
 00672AA8    call        Move
 00672AAD    movzx       edx,bl
 00672AB0    lea         eax,[esp+106]
 00672AB7    call        0040924C
 00672ABC    lea         eax,[esp+159]
 00672AC3    lea         edx,[esp+106]
 00672ACA    mov         cl,3C
 00672ACC    call        @PStrNCpy
 00672AD1    cmp         edi,7
>00672AD4    jbe         00672ADB
 00672AD6    call        @BoundErr
 00672ADB    imul        eax,edi,9F0
>00672AE1    jno         00672AE8
 00672AE3    call        @IntOver
 00672AE8    lea         eax,[esi+eax*8]
 00672AEB    cmp         ebp,1
>00672AEE    jbe         00672AF5
 00672AF0    call        @BoundErr
 00672AF5    imul        edx,ebp,4F8
>00672AFB    jno         00672B02
 00672AFD    call        @IntOver
 00672B02    lea         eax,[eax+edx*8]
 00672B05    mov         edx,dword ptr [esp+4]
 00672B09    dec         edx
 00672B0A    cmp         edx,9E
>00672B10    jbe         00672B17
 00672B12    call        @BoundErr
 00672B17    inc         edx
 00672B18    imul        edx,edx,8
>00672B1B    jno         00672B22
 00672B1D    call        @IntOver
 00672B22    lea         edi,[eax+edx*8-3C]
 00672B26    lea         esi,[esp+157]
 00672B2D    mov         ecx,10
 00672B32    rep movs    dword ptr [edi],dword ptr [esi]
>00672B34    jmp         00672C54
 00672B39    lea         eax,[esp+197]
 00672B40    xor         ecx,ecx
 00672B42    mov         edx,40
 00672B47    call        @FillChar
 00672B4C    movzx       eax,byte ptr [esp+0A]
 00672B51    movzx       edi,al
 00672B54    movzx       eax,al
 00672B57    mov         word ptr [esp+197],ax
 00672B5F    movzx       ecx,bl
 00672B62    lea         edx,[esp+107]
 00672B69    lea         eax,[esp+0B]
 00672B6D    call        Move
 00672B72    movzx       edx,bl
 00672B75    lea         eax,[esp+106]
 00672B7C    call        0040924C
 00672B81    lea         eax,[esp+199]
 00672B88    lea         edx,[esp+106]
 00672B8F    mov         cl,3C
 00672B91    call        @PStrNCpy
 00672B96    dec         edi
 00672B97    cmp         edi,0F9
>00672B9D    jbe         00672BA4
 00672B9F    call        @BoundErr
 00672BA4    inc         edi
 00672BA5    imul        eax,edi,8
>00672BA8    jno         00672BAF
 00672BAA    call        @IntOver
 00672BAF    lea         edi,[esi+eax*8+27BC4]
 00672BB6    lea         esi,[esp+197]
 00672BBD    mov         ecx,10
 00672BC2    rep movs    dword ptr [edi],dword ptr [esi]
>00672BC4    jmp         00672C54
 00672BC9    lea         eax,[esp+1D7]
 00672BD0    xor         ecx,ecx
 00672BD2    mov         edx,40
 00672BD7    call        @FillChar
 00672BDC    movzx       eax,byte ptr [esp+9]
 00672BE1    movzx       edi,al
 00672BE4    movzx       eax,al
 00672BE7    mov         word ptr [esp+1D7],ax
 00672BEF    movzx       ecx,bl
 00672BF2    lea         edx,[esp+107]
 00672BF9    lea         eax,[esp+0B]
 00672BFD    call        Move
 00672C02    movzx       edx,bl
 00672C05    lea         eax,[esp+106]
 00672C0C    call        0040924C
 00672C11    lea         eax,[esp+1D9]
 00672C18    lea         edx,[esp+106]
 00672C1F    mov         cl,3C
 00672C21    call        @PStrNCpy
 00672C26    dec         edi
 00672C27    cmp         edi,0F9
>00672C2D    jbe         00672C34
 00672C2F    call        @BoundErr
 00672C34    inc         edi
 00672C35    imul        eax,edi,8
>00672C38    jno         00672C3F
 00672C3A    call        @IntOver
 00672C3F    lea         edi,[esi+eax*8+2BA44]
 00672C46    lea         esi,[esp+1D7]
 00672C4D    mov         ecx,10
 00672C52    rep movs    dword ptr [edi],dword ptr [esi]
 00672C54    add         esp,218
 00672C5A    pop         ebp
 00672C5B    pop         edi
 00672C5C    pop         esi
 00672C5D    pop         ebx
 00672C5E    ret
*}
end;

//00672CBC
function TFXPTD.ReadPT(fs:TFileStream; VersionMajor:Integer; RecordSize:Integer; NumOfRecords:Integer; VersionMinor:Integer):Integer;
begin
{*
 00672CBC    push        ebp
 00672CBD    mov         ebp,esp
 00672CBF    add         esp,0FFFFFFB0
 00672CC2    push        ebx
 00672CC3    push        esi
 00672CC4    push        edi
 00672CC5    mov         dword ptr [ebp-8],edx
 00672CC8    mov         dword ptr [ebp-4],eax
 00672CCB    xor         eax,eax
 00672CCD    mov         dword ptr [ebp-0C],eax
 00672CD0    cmp         dword ptr [ebp+8],40
>00672CD4    je          00672CDF
 00672CD6    mov         dword ptr [ebp-0C],0FFFFFFFF
>00672CDD    jmp         00672D47
 00672CDF    mov         eax,dword ptr [ebp+0C]
 00672CE2    test        eax,eax
>00672CE4    jle         00672D47
 00672CE6    mov         dword ptr [ebp-10],eax
 00672CE9    mov         ebx,40
 00672CEE    lea         edx,[ebp-50]
 00672CF1    mov         ecx,ebx
 00672CF3    mov         eax,dword ptr [ebp-8]
 00672CF6    mov         esi,dword ptr [eax]
 00672CF8    call        dword ptr [esi+0C];THandleStream.Read
 00672CFB    cmp         ebx,eax
>00672CFD    je          00672D08
 00672CFF    mov         dword ptr [ebp-0C],0FFFFFFFF
>00672D06    jmp         00672D47
 00672D08    add         dword ptr [ebp-0C],eax
>00672D0B    jno         00672D12
 00672D0D    call        @IntOver
 00672D12    movzx       eax,word ptr [ebp-50]
 00672D16    dec         eax
 00672D17    cmp         eax,0F9
>00672D1C    jbe         00672D23
 00672D1E    call        @BoundErr
 00672D23    inc         eax
 00672D24    imul        eax,eax,8
>00672D27    jno         00672D2E
 00672D29    call        @IntOver
 00672D2E    mov         edx,dword ptr [ebp-4]
 00672D31    lea         edi,[edx+eax*8+27BC4]
 00672D38    lea         esi,[ebp-50]
 00672D3B    mov         ecx,10
 00672D40    rep movs    dword ptr [edi],dword ptr [esi]
 00672D42    dec         dword ptr [ebp-10]
>00672D45    jne         00672CE9
 00672D47    mov         eax,dword ptr [ebp-0C]
 00672D4A    pop         edi
 00672D4B    pop         esi
 00672D4C    pop         ebx
 00672D4D    mov         esp,ebp
 00672D4F    pop         ebp
 00672D50    ret         0C
*}
end;

//00672D54
function TFXPTD.SavePT(fs:TFileStream; VersionMajor:Integer; RecordSize:Cardinal; NumOfRecords:Word; VersionMinor:Integer):Integer;
begin
{*
 00672D54    push        ebp
 00672D55    mov         ebp,esp
 00672D57    add         esp,0FFFFFFF4
 00672D5A    push        ebx
 00672D5B    push        esi
 00672D5C    push        edi
 00672D5D    mov         dword ptr [ebp-4],edx
 00672D60    mov         esi,eax
 00672D62    xor         eax,eax
 00672D64    mov         dword ptr [ebp-8],eax
 00672D67    mov         eax,dword ptr [ebp+8]
 00672D6A    mov         dword ptr [eax],40
 00672D70    mov         eax,dword ptr [ebp+0C]
 00672D73    mov         word ptr [eax],0
 00672D78    mov         ebx,1
 00672D7D    dec         ebx
 00672D7E    cmp         ebx,0F9
>00672D84    jbe         00672D8B
 00672D86    call        @BoundErr
 00672D8B    inc         ebx
 00672D8C    imul        edi,ebx,8
>00672D8F    jno         00672D96
 00672D91    call        @IntOver
 00672D96    cmp         byte ptr [esi+edi*8+27BC6],0
>00672D9E    je          00672DDF
 00672DA0    mov         dword ptr [ebp-0C],40
 00672DA7    lea         edx,[esi+edi*8+27BC4]
 00672DAE    mov         ecx,dword ptr [ebp-0C]
 00672DB1    mov         eax,dword ptr [ebp-4]
 00672DB4    mov         edi,dword ptr [eax]
 00672DB6    call        dword ptr [edi+10];THandleStream.Write
 00672DB9    cmp         eax,dword ptr [ebp-0C]
>00672DBC    je          00672DC7
 00672DBE    mov         dword ptr [ebp-8],0FFFFFFFF
>00672DC5    jmp         00672DE8
 00672DC7    add         dword ptr [ebp-8],eax
>00672DCA    jno         00672DD1
 00672DCC    call        @IntOver
 00672DD1    mov         eax,dword ptr [ebp+0C]
 00672DD4    add         word ptr [eax],1
>00672DD8    jae         00672DDF
 00672DDA    call        @IntOver
 00672DDF    inc         ebx
 00672DE0    cmp         ebx,0FB
>00672DE6    jne         00672D7D
 00672DE8    mov         eax,dword ptr [ebp-8]
 00672DEB    pop         edi
 00672DEC    pop         esi
 00672DED    pop         ebx
 00672DEE    mov         esp,ebp
 00672DF0    pop         ebp
 00672DF1    ret         0C
*}
end;

//00672DF4
function TFXPTD.ReadAT(fs:TFileStream; VersionMajor:Integer; RecordSize:Integer; NumOfRecords:Integer; VersionMinor:Integer):Integer;
begin
{*
 00672DF4    push        ebp
 00672DF5    mov         ebp,esp
 00672DF7    add         esp,0FFFFFFAC
 00672DFA    push        ebx
 00672DFB    push        esi
 00672DFC    push        edi
 00672DFD    mov         dword ptr [ebp-8],edx
 00672E00    mov         dword ptr [ebp-4],eax
 00672E03    xor         eax,eax
 00672E05    mov         dword ptr [ebp-0C],eax
 00672E08    cmp         dword ptr [ebp+8],40
>00672E0C    je          00672E1A
 00672E0E    mov         dword ptr [ebp-0C],0FFFFFFFF
>00672E15    jmp         00672FB0
 00672E1A    mov         eax,dword ptr [ebp+0C]
 00672E1D    test        eax,eax
>00672E1F    jle         00672FB0
 00672E25    mov         dword ptr [ebp-14],eax
 00672E28    mov         ebx,40
 00672E2D    lea         edx,[ebp-54]
 00672E30    mov         ecx,ebx
 00672E32    mov         eax,dword ptr [ebp-8]
 00672E35    mov         esi,dword ptr [eax]
 00672E37    call        dword ptr [esi+0C];THandleStream.Read
 00672E3A    cmp         ebx,eax
>00672E3C    je          00672E4A
 00672E3E    mov         dword ptr [ebp-0C],0FFFFFFFF
>00672E45    jmp         00672FB0
 00672E4A    add         dword ptr [ebp-0C],eax
>00672E4D    jno         00672E54
 00672E4F    call        @IntOver
 00672E54    mov         byte ptr [ebp-0E],0
 00672E58    xor         ebx,ebx
 00672E5A    mov         byte ptr [ebp-0F],0
 00672E5E    movzx       eax,byte ptr [ebp-54]
 00672E62    mov         byte ptr [ebp-0D],al
 00672E65    movzx       edx,byte ptr [ebp-0D]
 00672E69    mov         eax,dword ptr [ebp-4]
 00672E6C    mov         eax,dword ptr [eax+2F904];TFXPTD.PD:TFXPPD
 00672E72    call        TFXPPD.GetControllerLoopType
 00672E77    cmp         eax,0FF
>00672E7C    jbe         00672E83
 00672E7E    call        @BoundErr
 00672E83    movzx       eax,al
 00672E86    cmp         eax,6
>00672E89    ja          00672F35
 00672E8F    jmp         dword ptr [eax*4+672E96]
 00672E8F    dd          00672FA7
 00672E8F    dd          00672EF9
 00672E8F    dd          00672EC5
 00672E8F    dd          00672EB7
 00672E8F    dd          00672ED3
 00672E8F    dd          00672EB7
 00672E8F    dd          00672ED3
>00672EB2    jmp         00672FA7
 00672EB7    mov         byte ptr [ebp-0E],0
 00672EBB    movzx       ebx,byte ptr [ebp-53]
 00672EBF    mov         byte ptr [ebp-0F],7E
>00672EC3    jmp         00672F35
 00672EC5    mov         byte ptr [ebp-0E],0
 00672EC9    movzx       ebx,byte ptr [ebp-53]
 00672ECD    mov         byte ptr [ebp-0F],10
>00672ED1    jmp         00672F35
 00672ED3    movzx       eax,byte ptr [ebp-15]
 00672ED7    mov         ecx,0C8
 00672EDC    xor         edx,edx
 00672EDE    div         eax,ecx
 00672EE0    cmp         eax,0FF
>00672EE5    jbe         00672EEC
 00672EE7    call        @BoundErr
 00672EEC    mov         byte ptr [ebp-0E],al
 00672EEF    movzx       ebx,byte ptr [ebp-53]
 00672EF3    mov         byte ptr [ebp-0F],9F
>00672EF7    jmp         00672F35
 00672EF9    movzx       ecx,byte ptr [ebp-53]
 00672EFD    mov         eax,ecx
 00672EFF    mov         ebx,64
 00672F04    xor         edx,edx
 00672F06    div         eax,ebx
 00672F08    cmp         eax,0FF
>00672F0D    jbe         00672F14
 00672F0F    call        @BoundErr
 00672F14    mov         byte ptr [ebp-0E],al
 00672F17    mov         eax,ecx
 00672F19    mov         ecx,64
 00672F1E    xor         edx,edx
 00672F20    div         eax,ecx
 00672F22    mov         ebx,edx
 00672F24    cmp         ebx,0FF
>00672F2A    jbe         00672F31
 00672F2C    call        @BoundErr
 00672F31    mov         byte ptr [ebp-0F],63
 00672F35    test        bl,bl
>00672F37    jbe         00672FA7
 00672F39    cmp         bl,byte ptr [ebp-0F]
>00672F3C    ja          00672FA7
 00672F3E    movzx       eax,byte ptr [ebp-0D]
 00672F42    cmp         eax,7
>00672F45    jbe         00672F4C
 00672F47    call        @BoundErr
 00672F4C    imul        eax,eax,9F0
>00672F52    jno         00672F59
 00672F54    call        @IntOver
 00672F59    mov         edx,dword ptr [ebp-4]
 00672F5C    lea         esi,[edx+eax*8]
 00672F5F    movzx       eax,byte ptr [ebp-0E]
 00672F63    cmp         eax,1
>00672F66    jbe         00672F6D
 00672F68    call        @BoundErr
 00672F6D    imul        eax,eax,4F8
>00672F73    jno         00672F7A
 00672F75    call        @IntOver
 00672F7A    lea         eax,[esi+eax*8]
 00672F7D    movzx       edx,bl
 00672F80    dec         edx
 00672F81    cmp         edx,9E
>00672F87    jbe         00672F8E
 00672F89    call        @BoundErr
 00672F8E    inc         edx
 00672F8F    imul        edx,edx,8
>00672F92    jno         00672F99
 00672F94    call        @IntOver
 00672F99    lea         edi,[eax+edx*8-3C]
 00672F9D    lea         esi,[ebp-54]
 00672FA0    mov         ecx,10
 00672FA5    rep movs    dword ptr [edi],dword ptr [esi]
 00672FA7    dec         dword ptr [ebp-14]
>00672FAA    jne         00672E28
 00672FB0    mov         eax,dword ptr [ebp-0C]
 00672FB3    pop         edi
 00672FB4    pop         esi
 00672FB5    pop         ebx
 00672FB6    mov         esp,ebp
 00672FB8    pop         ebp
 00672FB9    ret         0C
*}
end;

//00672FBC
function TFXPTD.SaveAT(fs:TFileStream; VersionMajor:Integer; RecordSize:Cardinal; NumOfRecords:Word; VersionMinor:Integer):Integer;
begin
{*
 00672FBC    push        ebp
 00672FBD    mov         ebp,esp
 00672FBF    add         esp,0FFFFFFF0
 00672FC2    push        ebx
 00672FC3    push        esi
 00672FC4    push        edi
 00672FC5    mov         dword ptr [ebp-4],edx
 00672FC8    mov         esi,eax
 00672FCA    xor         eax,eax
 00672FCC    mov         dword ptr [ebp-8],eax
 00672FCF    mov         eax,dword ptr [ebp+8]
 00672FD2    mov         dword ptr [eax],40
 00672FD8    mov         eax,dword ptr [ebp+0C]
 00672FDB    mov         word ptr [eax],0
 00672FE0    mov         byte ptr [ebp-0D],0
 00672FE4    movzx       edx,byte ptr [ebp-0D]
 00672FE8    mov         eax,dword ptr [esi+2F904];TFXPTD.PD:TFXPPD
 00672FEE    call        TFXPPD.GetControllerLoopType
 00672FF3    test        eax,eax
>00672FF5    je          006730F0
 00672FFB    mov         byte ptr [ebp-0E],0
 00672FFF    mov         bl,1
 00673001    movzx       eax,byte ptr [ebp-0D]
 00673005    cmp         eax,7
>00673008    jbe         0067300F
 0067300A    call        @BoundErr
 0067300F    imul        eax,eax,9F0
>00673015    jno         0067301C
 00673017    call        @IntOver
 0067301C    lea         eax,[esi+eax*8]
 0067301F    movzx       edx,byte ptr [ebp-0E]
 00673023    cmp         edx,1
>00673026    jbe         0067302D
 00673028    call        @BoundErr
 0067302D    imul        edi,edx,4F8
>00673033    jno         0067303A
 00673035    call        @IntOver
 0067303A    lea         eax,[eax+edi*8]
 0067303D    movzx       edx,bl
 00673040    dec         edx
 00673041    cmp         edx,9E
>00673047    jbe         0067304E
 00673049    call        @BoundErr
 0067304E    inc         edx
 0067304F    imul        edx,edx,8
>00673052    jno         00673059
 00673054    call        @IntOver
 00673059    cmp         byte ptr [eax+edx*8-3A],0
>0067305E    je          006730D9
 00673060    mov         dword ptr [ebp-0C],40
 00673067    movzx       eax,byte ptr [ebp-0D]
 0067306B    cmp         eax,7
>0067306E    jbe         00673075
 00673070    call        @BoundErr
 00673075    imul        eax,eax,9F0
>0067307B    jno         00673082
 0067307D    call        @IntOver
 00673082    lea         eax,[esi+eax*8]
 00673085    lea         eax,[eax+edi*8]
 00673088    movzx       edx,bl
 0067308B    dec         edx
 0067308C    cmp         edx,9E
>00673092    jbe         00673099
 00673094    call        @BoundErr
 00673099    inc         edx
 0067309A    imul        edx,edx,8
>0067309D    jno         006730A4
 0067309F    call        @IntOver
 006730A4    lea         edx,[eax+edx*8-3C]
 006730A8    mov         ecx,dword ptr [ebp-0C]
 006730AB    mov         eax,dword ptr [ebp-4]
 006730AE    mov         edi,dword ptr [eax]
 006730B0    call        dword ptr [edi+10];THandleStream.Write
 006730B3    cmp         eax,dword ptr [ebp-0C]
>006730B6    je          006730C1
 006730B8    mov         dword ptr [ebp-8],0FFFFFFFF
>006730BF    jmp         006730FD
 006730C1    add         dword ptr [ebp-8],eax
>006730C4    jno         006730CB
 006730C6    call        @IntOver
 006730CB    mov         eax,dword ptr [ebp+0C]
 006730CE    add         word ptr [eax],1
>006730D2    jae         006730D9
 006730D4    call        @IntOver
 006730D9    inc         ebx
 006730DA    cmp         bl,0A0
>006730DD    jne         00673001
 006730E3    inc         byte ptr [ebp-0E]
 006730E6    cmp         byte ptr [ebp-0E],2
>006730EA    jne         00672FFF
 006730F0    inc         byte ptr [ebp-0D]
 006730F3    cmp         byte ptr [ebp-0D],8
>006730F7    jne         00672FE4
 006730FD    mov         eax,dword ptr [ebp-8]
 00673100    pop         edi
 00673101    pop         esi
 00673102    pop         ebx
 00673103    mov         esp,ebp
 00673105    pop         ebp
 00673106    ret         0C
*}
end;

//0067310C
function TFXPTD.FXMoveTempTDataToTData(loopindx:Byte):Boolean;
begin
{*
 0067310C    push        ebx
 0067310D    push        esi
 0067310E    push        edi
 0067310F    push        ebp
 00673110    add         esp,0FFFFFFF8
 00673113    mov         byte ptr [esp],dl
 00673116    mov         ebp,eax
 00673118    mov         byte ptr [esp+1],0
 0067311D    mov         byte ptr [esp+2],0
 00673122    mov         dword ptr [esp+4],828678
 0067312A    mov         bl,1
 0067312C    mov         eax,dword ptr [esp+4]
 00673130    mov         esi,eax
 00673132    movzx       eax,byte ptr [esp]
 00673136    cmp         eax,7
>00673139    jbe         00673140
 0067313B    call        @BoundErr
 00673140    imul        edi,eax,9F0
>00673146    jno         0067314D
 00673148    call        @IntOver
 0067314D    lea         eax,[ebp+edi*8]
 00673151    movzx       edx,byte ptr [esp+2]
 00673156    cmp         edx,1
>00673159    jbe         00673160
 0067315B    call        @BoundErr
 00673160    imul        edx,edx,4F8
>00673166    jno         0067316D
 00673168    call        @IntOver
 0067316D    lea         eax,[eax+edx*8]
 00673170    movzx       edx,bl
 00673173    dec         edx
 00673174    cmp         edx,9E
>0067317A    jbe         00673181
 0067317C    call        @BoundErr
 00673181    inc         edx
 00673182    imul        edx,edx,8
>00673185    jno         0067318C
 00673187    call        @IntOver
 0067318C    lea         eax,[eax+edx*8-3A]
 00673190    lea         edx,[esi+edi*8-3E]
 00673194    movzx       ecx,byte ptr [eax]
 00673197    inc         ecx
 00673198    call        @AStrCmp
>0067319D    je          006731A4
 0067319F    mov         byte ptr [esp+1],1
 006731A4    lea         eax,[ebp+edi*8]
 006731A8    movzx       edx,byte ptr [esp+2]
 006731AD    cmp         edx,1
>006731B0    jbe         006731B7
 006731B2    call        @BoundErr
 006731B7    imul        edx,edx,4F8
>006731BD    jno         006731C4
 006731BF    call        @IntOver
 006731C4    lea         eax,[eax+edx*8]
 006731C7    movzx       edx,bl
 006731CA    dec         edx
 006731CB    cmp         edx,9E
>006731D1    jbe         006731D8
 006731D3    call        @BoundErr
 006731D8    inc         edx
 006731D9    imul        edx,edx,8
>006731DC    jno         006731E3
 006731DE    call        @IntOver
 006731E3    push        esi
 006731E4    lea         esi,[esi+edi*8-40]
 006731E8    lea         edi,[eax+edx*8-3C]
 006731EC    mov         ecx,10
 006731F1    rep movs    dword ptr [edi],dword ptr [esi]
 006731F3    pop         esi
 006731F4    inc         ebx
 006731F5    add         esi,40
 006731F8    cmp         bl,0A0
>006731FB    jne         00673132
 00673201    inc         byte ptr [esp+2]
 00673205    add         dword ptr [esp+4],27C0
 0067320D    cmp         byte ptr [esp+2],2
>00673212    jne         0067312A
 00673218    movzx       eax,byte ptr ds:[857F38];gvar_00857F38
 0067321F    or          al,byte ptr [esp+1]
 00673223    mov         [00857F38],al;gvar_00857F38
 00673228    movzx       eax,byte ptr [esp+1]
 0067322D    pop         ecx
 0067322E    pop         edx
 0067322F    pop         ebp
 00673230    pop         edi
 00673231    pop         esi
 00673232    pop         ebx
 00673233    ret
*}
end;

//00673234
procedure TFXPTD.FXMoveTDataToTempTData(loopindx:Byte);
begin
{*
 00673234    push        ebx
 00673235    push        esi
 00673236    push        edi
 00673237    add         esp,0FFFFFFF4
 0067323A    mov         dword ptr [esp],eax
 0067323D    mov         byte ptr [esp+4],0
 00673242    mov         dword ptr [esp+8],828678
 0067324A    mov         al,1
 0067324C    mov         ecx,dword ptr [esp+8]
 00673250    mov         ebx,ecx
 00673252    movzx       ecx,dl
 00673255    cmp         ecx,7
>00673258    jbe         0067325F
 0067325A    call        @BoundErr
 0067325F    imul        esi,ecx,9F0
>00673265    jno         0067326C
 00673267    call        @IntOver
 0067326C    mov         ecx,dword ptr [esp]
 0067326F    lea         ecx,[ecx+esi*8]
 00673272    push        ecx
 00673273    movzx       ecx,byte ptr [esp+8]
 00673278    cmp         ecx,1
>0067327B    jbe         00673282
 0067327D    call        @BoundErr
 00673282    imul        ecx,ecx,4F8
>00673288    jno         0067328F
 0067328A    call        @IntOver
 0067328F    pop         edi
 00673290    lea         ecx,[edi+ecx*8]
 00673293    push        ecx
 00673294    movzx       ecx,al
 00673297    dec         ecx
 00673298    cmp         ecx,9E
>0067329E    jbe         006732A5
 006732A0    call        @BoundErr
 006732A5    inc         ecx
 006732A6    imul        ecx,ecx,8
>006732A9    jno         006732B0
 006732AB    call        @IntOver
 006732B0    pop         edi
 006732B1    lea         ecx,[edi+ecx*8-3C]
 006732B5    push        ecx
 006732B6    pop         ecx
 006732B7    lea         edi,[ebx+esi*8-40]
 006732BB    mov         esi,ecx
 006732BD    mov         ecx,10
 006732C2    rep movs    dword ptr [edi],dword ptr [esi]
 006732C4    inc         eax
 006732C5    add         ebx,40
 006732C8    cmp         al,0A0
>006732CA    jne         00673252
 006732CC    inc         byte ptr [esp+4]
 006732D0    add         dword ptr [esp+8],27C0
 006732D8    cmp         byte ptr [esp+4],2
>006732DD    jne         0067324A
 006732E3    add         esp,0C
 006732E6    pop         edi
 006732E7    pop         esi
 006732E8    pop         ebx
 006732E9    ret
*}
end;

//006732EC
procedure TFXPTD.InitFXAPTextDataOfLoop(loopindx:Byte);
begin
{*
 006732EC    push        ebx
 006732ED    push        esi
 006732EE    push        edi
 006732EF    push        ebp
 006732F0    push        ecx
 006732F1    mov         byte ptr [esp],dl
 006732F4    mov         esi,eax
 006732F6    mov         byte ptr [esp+1],0
 006732FB    mov         bl,1
 006732FD    movzx       eax,byte ptr [esp]
 00673301    cmp         eax,7
>00673304    jbe         0067330B
 00673306    call        @BoundErr
 0067330B    imul        eax,eax,9F0
>00673311    jno         00673318
 00673313    call        @IntOver
 00673318    lea         eax,[esi+eax*8]
 0067331B    movzx       edx,byte ptr [esp+1]
 00673320    cmp         edx,1
>00673323    jbe         0067332A
 00673325    call        @BoundErr
 0067332A    imul        edx,edx,4F8
>00673330    jno         00673337
 00673332    call        @IntOver
 00673337    lea         edi,[eax+edx*8]
 0067333A    movzx       eax,bl
 0067333D    dec         eax
 0067333E    cmp         eax,9E
>00673343    jbe         0067334A
 00673345    call        @BoundErr
 0067334A    inc         eax
 0067334B    imul        eax,eax,8
>0067334E    jno         00673355
 00673350    call        @IntOver
 00673355    lea         eax,[edi+eax*8-3C]
 00673359    xor         ecx,ecx
 0067335B    mov         edx,40
 00673360    call        @FillChar
 00673365    inc         ebx
 00673366    cmp         bl,0A0
>00673369    jne         006732FD
 0067336B    inc         byte ptr [esp+1]
 0067336F    cmp         byte ptr [esp+1],2
>00673374    jne         006732FB
 00673376    movzx       edx,byte ptr [esp]
 0067337A    mov         eax,dword ptr [esi+2F904];TFXPTD.PD:TFXPPD
 00673380    call        TFXPPD.GetControllerLoopType
 00673385    cmp         eax,6
>00673388    ja          00673632
 0067338E    jmp         dword ptr [eax*4+673395]
 0067338E    dd          00673632
 0067338E    dd          006734F3
 0067338E    dd          006735B0
 0067338E    dd          0067346C
 0067338E    dd          006733B1
 0067338E    dd          0067346C
 0067338E    dd          006733B1
 006733B1    mov         byte ptr [esp+1],0
 006733B6    mov         bl,1
 006733B8    movzx       eax,byte ptr [esp]
 006733BC    cmp         eax,7
>006733BF    jbe         006733C6
 006733C1    call        @BoundErr
 006733C6    imul        ebp,eax,9F0
>006733CC    jno         006733D3
 006733CE    call        @IntOver
 006733D3    lea         eax,[esi+ebp*8]
 006733D6    movzx       edx,byte ptr [esp+1]
 006733DB    cmp         edx,1
>006733DE    jbe         006733E5
 006733E0    call        @BoundErr
 006733E5    imul        edi,edx,4F8
>006733EB    jno         006733F2
 006733ED    call        @IntOver
 006733F2    lea         eax,[eax+edi*8]
 006733F5    movzx       edx,bl
 006733F8    dec         edx
 006733F9    cmp         edx,9E
>006733FF    jbe         00673406
 00673401    call        @BoundErr
 00673406    inc         edx
 00673407    imul        ecx,edx,8
>0067340A    jno         00673411
 0067340C    call        @IntOver
 00673411    movzx       edx,byte ptr [esp]
 00673415    mov         byte ptr [eax+ecx*8-3C],dl
 00673419    lea         eax,[esi+ebp*8]
 0067341C    lea         eax,[eax+edi*8]
 0067341F    mov         byte ptr [eax+ecx*8-3B],bl
 00673423    movzx       eax,byte ptr [esp+1]
 00673428    mov         edx,0C8
 0067342D    mul         eax,edx
>0067342F    jno         00673436
 00673431    call        @IntOver
 00673436    cmp         eax,0FF
>0067343B    jbe         00673442
 0067343D    call        @BoundErr
 00673442    push        eax
 00673443    lea         eax,[esi+ebp*8]
 00673446    lea         edi,[eax+edi*8]
 00673449    pop         eax
 0067344A    mov         byte ptr [edi+ecx*8+3],al
 0067344E    inc         ebx
 0067344F    cmp         bl,0A0
>00673452    jne         006733B8
 00673458    inc         byte ptr [esp+1]
 0067345C    cmp         byte ptr [esp+1],2
>00673461    jne         006733B6
>00673467    jmp         00673632
 0067346C    mov         byte ptr [esp+1],0
 00673471    mov         bl,1
 00673473    movzx       edx,byte ptr [esp]
 00673477    cmp         edx,7
>0067347A    jbe         00673481
 0067347C    call        @BoundErr
 00673481    imul        ebp,edx,9F0
>00673487    jno         0067348E
 00673489    call        @IntOver
 0067348E    lea         edx,[esi+ebp*8]
 00673491    movzx       ecx,byte ptr [esp+1]
 00673496    cmp         ecx,1
>00673499    jbe         006734A0
 0067349B    call        @BoundErr
 006734A0    imul        edi,ecx,4F8
>006734A6    jno         006734AD
 006734A8    call        @IntOver
 006734AD    lea         edx,[edx+edi*8]
 006734B0    movzx       eax,bl
 006734B3    dec         eax
 006734B4    cmp         eax,9E
>006734B9    jbe         006734C0
 006734BB    call        @BoundErr
 006734C0    inc         eax
 006734C1    imul        eax,eax,8
>006734C4    jno         006734CB
 006734C6    call        @IntOver
 006734CB    movzx       ecx,byte ptr [esp]
 006734CF    mov         byte ptr [edx+eax*8-3C],cl
 006734D3    lea         edx,[esi+ebp*8]
 006734D6    lea         edi,[edx+edi*8]
 006734D9    mov         byte ptr [edi+eax*8-3B],bl
 006734DD    inc         ebx
 006734DE    cmp         bl,7F
>006734E1    jne         00673473
 006734E3    inc         byte ptr [esp+1]
 006734E7    cmp         byte ptr [esp+1],1
>006734EC    jne         00673471
>006734EE    jmp         00673632
 006734F3    mov         byte ptr [esp+1],0
 006734F8    mov         bl,1
 006734FA    movzx       eax,byte ptr [esp]
 006734FE    cmp         eax,7
>00673501    jbe         00673508
 00673503    call        @BoundErr
 00673508    imul        ebp,eax,9F0
>0067350E    jno         00673515
 00673510    call        @IntOver
 00673515    lea         eax,[esi+ebp*8]
 00673518    movzx       edx,byte ptr [esp+1]
 0067351D    cmp         edx,1
>00673520    jbe         00673527
 00673522    call        @BoundErr
 00673527    imul        edi,edx,4F8
>0067352D    jno         00673534
 0067352F    call        @IntOver
 00673534    lea         eax,[eax+edi*8]
 00673537    movzx       edx,bl
 0067353A    dec         edx
 0067353B    cmp         edx,9E
>00673541    jbe         00673548
 00673543    call        @BoundErr
 00673548    inc         edx
 00673549    imul        ecx,edx,8
>0067354C    jno         00673553
 0067354E    call        @IntOver
 00673553    movzx       edx,byte ptr [esp]
 00673557    mov         byte ptr [eax+ecx*8-3C],dl
 0067355B    movzx       eax,byte ptr [esp+1]
 00673560    mov         edx,64
 00673565    mul         eax,edx
>00673567    jno         0067356E
 00673569    call        @IntOver
 0067356E    movzx       edx,bl
 00673571    add         eax,edx
>00673573    jno         0067357A
 00673575    call        @IntOver
 0067357A    cmp         eax,0FF
>0067357F    jbe         00673586
 00673581    call        @BoundErr
 00673586    push        eax
 00673587    lea         eax,[esi+ebp*8]
 0067358A    lea         edi,[eax+edi*8]
 0067358D    pop         eax
 0067358E    mov         byte ptr [edi+ecx*8-3B],al
 00673592    inc         ebx
 00673593    cmp         bl,64
>00673596    jne         006734FA
 0067359C    inc         byte ptr [esp+1]
 006735A0    cmp         byte ptr [esp+1],2
>006735A5    jne         006734F8
>006735AB    jmp         00673632
 006735B0    mov         byte ptr [esp+1],0
 006735B5    mov         bl,1
 006735B7    movzx       edx,byte ptr [esp]
 006735BB    cmp         edx,7
>006735BE    jbe         006735C5
 006735C0    call        @BoundErr
 006735C5    imul        ebp,edx,9F0
>006735CB    jno         006735D2
 006735CD    call        @IntOver
 006735D2    lea         edx,[esi+ebp*8]
 006735D5    movzx       ecx,byte ptr [esp+1]
 006735DA    cmp         ecx,1
>006735DD    jbe         006735E4
 006735DF    call        @BoundErr
 006735E4    imul        edi,ecx,4F8
>006735EA    jno         006735F1
 006735EC    call        @IntOver
 006735F1    lea         edx,[edx+edi*8]
 006735F4    movzx       eax,bl
 006735F7    dec         eax
 006735F8    cmp         eax,9E
>006735FD    jbe         00673604
 006735FF    call        @BoundErr
 00673604    inc         eax
 00673605    imul        eax,eax,8
>00673608    jno         0067360F
 0067360A    call        @IntOver
 0067360F    movzx       ecx,byte ptr [esp]
 00673613    mov         byte ptr [edx+eax*8-3C],cl
 00673617    lea         edx,[esi+ebp*8]
 0067361A    lea         edi,[edx+edi*8]
 0067361D    mov         byte ptr [edi+eax*8-3B],bl
 00673621    inc         ebx
 00673622    cmp         bl,11
>00673625    jne         006735B7
 00673627    inc         byte ptr [esp+1]
 0067362B    cmp         byte ptr [esp+1],1
>00673630    jne         006735B5
 00673632    pop         edx
 00673633    pop         ebp
 00673634    pop         edi
 00673635    pop         esi
 00673636    pop         ebx
 00673637    ret
*}
end;

//00673638
procedure TFXPTD.InitFXTData;
begin
{*
 00673638    push        ebx
 00673639    push        esi
 0067363A    mov         esi,eax
 0067363C    lea         eax,[esi+4];TFXPTD.FXTD:TFXTDRec
 0067363F    xor         ecx,ecx
 00673641    mov         edx,2F900
 00673646    call        @FillChar
 0067364B    mov         eax,828638;gvar_00828638:Pointer
 00673650    xor         ecx,ecx
 00673652    mov         edx,2F900
 00673657    call        @FillChar
 0067365C    xor         ebx,ebx
 0067365E    mov         edx,ebx
 00673660    mov         eax,esi
 00673662    call        TFXPTD.InitFXAPTextDataOfLoop
 00673667    inc         ebx
 00673668    cmp         bl,8
>0067366B    jne         0067365E
 0067366D    mov         al,1
 0067366F    movzx       edx,al
 00673672    dec         edx
 00673673    cmp         edx,0F9
>00673679    jbe         00673680
 0067367B    call        @BoundErr
 00673680    inc         edx
 00673681    imul        edx,edx,8
>00673684    jno         0067368B
 00673686    call        @IntOver
 0067368B    movzx       ecx,al
 0067368E    mov         word ptr [esi+edx*8+27BC4],cx
 00673696    inc         eax
 00673697    cmp         al,0FB
>00673699    jne         0067366F
 0067369B    pop         esi
 0067369C    pop         ebx
 0067369D    ret
*}
end;

//006736A0
procedure TFXPTD.MoveAddressTextData(FromLoopIndx:Byte; ToLoopIndx:Byte);
begin
{*
 006736A0    push        ebx
 006736A1    push        esi
 006736A2    push        edi
 006736A3    push        ebp
 006736A4    push        ecx
 006736A5    mov         byte ptr [esp+1],cl
 006736A9    mov         byte ptr [esp],dl
 006736AC    mov         esi,eax
 006736AE    mov         byte ptr [esp+2],0
 006736B3    mov         bl,1
 006736B5    movzx       eax,byte ptr [esp+1]
 006736BA    cmp         eax,7
>006736BD    jbe         006736C4
 006736BF    call        @BoundErr
 006736C4    imul        eax,eax,9F0
>006736CA    jno         006736D1
 006736CC    call        @IntOver
 006736D1    lea         eax,[esi+eax*8]
 006736D4    movzx       edx,byte ptr [esp+2]
 006736D9    cmp         edx,1
>006736DC    jbe         006736E3
 006736DE    call        @BoundErr
 006736E3    imul        edx,edx,4F8
>006736E9    jno         006736F0
 006736EB    call        @IntOver
 006736F0    lea         edi,[eax+edx*8]
 006736F3    movzx       eax,bl
 006736F6    dec         eax
 006736F7    cmp         eax,9E
>006736FC    jbe         00673703
 006736FE    call        @BoundErr
 00673703    inc         eax
 00673704    imul        eax,eax,8
>00673707    jno         0067370E
 00673709    call        @IntOver
 0067370E    lea         eax,[edi+eax*8-3C]
 00673712    xor         ecx,ecx
 00673714    mov         edx,40
 00673719    call        @FillChar
 0067371E    inc         ebx
 0067371F    cmp         bl,0A0
>00673722    jne         006736B5
 00673724    inc         byte ptr [esp+2]
 00673728    cmp         byte ptr [esp+2],2
>0067372D    jne         006736B3
 0067372F    movzx       edx,byte ptr [esp]
 00673733    mov         eax,dword ptr [esi+2F904];TFXPTD.PD:TFXPPD
 00673739    call        TFXPPD.GetControllerLoopType
 0067373E    cmp         eax,6
>00673741    ja          00673AF5
 00673747    jmp         dword ptr [eax*4+67374E]
 00673747    dd          00673AF5
 00673747    dd          00673932
 00673747    dd          00673A16
 00673747    dd          0067376A
 00673747    dd          0067384E
 00673747    dd          0067376A
 00673747    dd          0067384E
 0067376A    mov         byte ptr [esp+2],0
 0067376F    mov         bl,1
 00673771    movzx       edx,byte ptr [esp]
 00673775    cmp         edx,7
>00673778    jbe         0067377F
 0067377A    call        @BoundErr
 0067377F    imul        edx,edx,9F0
>00673785    jno         0067378C
 00673787    call        @IntOver
 0067378C    lea         ebp,[esi+edx*8]
 0067378F    movzx       eax,byte ptr [esp+2]
 00673794    cmp         eax,1
>00673797    jbe         0067379E
 00673799    call        @BoundErr
 0067379E    imul        eax,eax,4F8
>006737A4    jno         006737AB
 006737A6    call        @IntOver
 006737AB    lea         edx,[ebp+eax*8]
 006737AF    movzx       ecx,bl
 006737B2    dec         ecx
 006737B3    cmp         ecx,9E
>006737B9    jbe         006737C0
 006737BB    call        @BoundErr
 006737C0    inc         ecx
 006737C1    imul        edi,ecx,8
>006737C4    jno         006737CB
 006737C6    call        @IntOver
 006737CB    movzx       ecx,byte ptr [esp+1]
 006737D0    cmp         ecx,7
>006737D3    jbe         006737DA
 006737D5    call        @BoundErr
 006737DA    imul        ecx,ecx,9F0
>006737E0    jno         006737E7
 006737E2    call        @IntOver
 006737E7    lea         ecx,[esi+ecx*8]
 006737EA    push        ecx
 006737EB    pop         ecx
 006737EC    lea         ecx,[ecx+eax*8]
 006737EF    push        ecx
 006737F0    pop         ecx
 006737F1    push        esi
 006737F2    push        edi
 006737F3    lea         esi,[edx+edi*8-3C]
 006737F7    lea         edi,[ecx+edi*8-3C]
 006737FB    mov         ecx,10
 00673800    rep movs    dword ptr [edi],dword ptr [esi]
 00673802    pop         edi
 00673803    pop         esi
 00673804    movzx       edx,byte ptr [esp+1]
 00673809    cmp         edx,7
>0067380C    jbe         00673813
 0067380E    call        @BoundErr
 00673813    imul        edx,edx,9F0
>00673819    jno         00673820
 0067381B    call        @IntOver
 00673820    lea         ebp,[esi+edx*8]
 00673823    lea         eax,[ebp+eax*8]
 00673827    movzx       edx,byte ptr [esp+1]
 0067382C    mov         byte ptr [eax+edi*8-3C],dl
 00673830    inc         ebx
 00673831    cmp         bl,7F
>00673834    jne         00673771
 0067383A    inc         byte ptr [esp+2]
 0067383E    cmp         byte ptr [esp+2],1
>00673843    jne         0067376F
>00673849    jmp         00673AF5
 0067384E    mov         byte ptr [esp+2],0
 00673853    mov         bl,1
 00673855    movzx       edx,byte ptr [esp]
 00673859    cmp         edx,7
>0067385C    jbe         00673863
 0067385E    call        @BoundErr
 00673863    imul        edx,edx,9F0
>00673869    jno         00673870
 0067386B    call        @IntOver
 00673870    lea         ebp,[esi+edx*8]
 00673873    movzx       eax,byte ptr [esp+2]
 00673878    cmp         eax,1
>0067387B    jbe         00673882
 0067387D    call        @BoundErr
 00673882    imul        eax,eax,4F8
>00673888    jno         0067388F
 0067388A    call        @IntOver
 0067388F    lea         edx,[ebp+eax*8]
 00673893    movzx       ecx,bl
 00673896    dec         ecx
 00673897    cmp         ecx,9E
>0067389D    jbe         006738A4
 0067389F    call        @BoundErr
 006738A4    inc         ecx
 006738A5    imul        edi,ecx,8
>006738A8    jno         006738AF
 006738AA    call        @IntOver
 006738AF    movzx       ecx,byte ptr [esp+1]
 006738B4    cmp         ecx,7
>006738B7    jbe         006738BE
 006738B9    call        @BoundErr
 006738BE    imul        ecx,ecx,9F0
>006738C4    jno         006738CB
 006738C6    call        @IntOver
 006738CB    lea         ecx,[esi+ecx*8]
 006738CE    push        ecx
 006738CF    pop         ecx
 006738D0    lea         ecx,[ecx+eax*8]
 006738D3    push        ecx
 006738D4    pop         ecx
 006738D5    push        esi
 006738D6    push        edi
 006738D7    lea         esi,[edx+edi*8-3C]
 006738DB    lea         edi,[ecx+edi*8-3C]
 006738DF    mov         ecx,10
 006738E4    rep movs    dword ptr [edi],dword ptr [esi]
 006738E6    pop         edi
 006738E7    pop         esi
 006738E8    movzx       edx,byte ptr [esp+1]
 006738ED    cmp         edx,7
>006738F0    jbe         006738F7
 006738F2    call        @BoundErr
 006738F7    imul        edx,edx,9F0
>006738FD    jno         00673904
 006738FF    call        @IntOver
 00673904    lea         ebp,[esi+edx*8]
 00673907    lea         eax,[ebp+eax*8]
 0067390B    movzx       edx,byte ptr [esp+1]
 00673910    mov         byte ptr [eax+edi*8-3C],dl
 00673914    inc         ebx
 00673915    cmp         bl,0A0
>00673918    jne         00673855
 0067391E    inc         byte ptr [esp+2]
 00673922    cmp         byte ptr [esp+2],2
>00673927    jne         00673853
>0067392D    jmp         00673AF5
 00673932    mov         byte ptr [esp+2],0
 00673937    mov         bl,1
 00673939    movzx       edx,byte ptr [esp]
 0067393D    cmp         edx,7
>00673940    jbe         00673947
 00673942    call        @BoundErr
 00673947    imul        edx,edx,9F0
>0067394D    jno         00673954
 0067394F    call        @IntOver
 00673954    lea         ebp,[esi+edx*8]
 00673957    movzx       eax,byte ptr [esp+2]
 0067395C    cmp         eax,1
>0067395F    jbe         00673966
 00673961    call        @BoundErr
 00673966    imul        eax,eax,4F8
>0067396C    jno         00673973
 0067396E    call        @IntOver
 00673973    lea         edx,[ebp+eax*8]
 00673977    movzx       ecx,bl
 0067397A    dec         ecx
 0067397B    cmp         ecx,9E
>00673981    jbe         00673988
 00673983    call        @BoundErr
 00673988    inc         ecx
 00673989    imul        edi,ecx,8
>0067398C    jno         00673993
 0067398E    call        @IntOver
 00673993    movzx       ecx,byte ptr [esp+1]
 00673998    cmp         ecx,7
>0067399B    jbe         006739A2
 0067399D    call        @BoundErr
 006739A2    imul        ecx,ecx,9F0
>006739A8    jno         006739AF
 006739AA    call        @IntOver
 006739AF    lea         ecx,[esi+ecx*8]
 006739B2    push        ecx
 006739B3    pop         ecx
 006739B4    lea         ecx,[ecx+eax*8]
 006739B7    push        ecx
 006739B8    pop         ecx
 006739B9    push        esi
 006739BA    push        edi
 006739BB    lea         esi,[edx+edi*8-3C]
 006739BF    lea         edi,[ecx+edi*8-3C]
 006739C3    mov         ecx,10
 006739C8    rep movs    dword ptr [edi],dword ptr [esi]
 006739CA    pop         edi
 006739CB    pop         esi
 006739CC    movzx       edx,byte ptr [esp+1]
 006739D1    cmp         edx,7
>006739D4    jbe         006739DB
 006739D6    call        @BoundErr
 006739DB    imul        edx,edx,9F0
>006739E1    jno         006739E8
 006739E3    call        @IntOver
 006739E8    lea         ebp,[esi+edx*8]
 006739EB    lea         eax,[ebp+eax*8]
 006739EF    movzx       edx,byte ptr [esp+1]
 006739F4    mov         byte ptr [eax+edi*8-3C],dl
 006739F8    inc         ebx
 006739F9    cmp         bl,64
>006739FC    jne         00673939
 00673A02    inc         byte ptr [esp+2]
 00673A06    cmp         byte ptr [esp+2],2
>00673A0B    jne         00673937
>00673A11    jmp         00673AF5
 00673A16    mov         byte ptr [esp+2],0
 00673A1B    mov         bl,1
 00673A1D    movzx       edx,byte ptr [esp]
 00673A21    cmp         edx,7
>00673A24    jbe         00673A2B
 00673A26    call        @BoundErr
 00673A2B    imul        edx,edx,9F0
>00673A31    jno         00673A38
 00673A33    call        @IntOver
 00673A38    lea         ebp,[esi+edx*8]
 00673A3B    movzx       eax,byte ptr [esp+2]
 00673A40    cmp         eax,1
>00673A43    jbe         00673A4A
 00673A45    call        @BoundErr
 00673A4A    imul        eax,eax,4F8
>00673A50    jno         00673A57
 00673A52    call        @IntOver
 00673A57    lea         edx,[ebp+eax*8]
 00673A5B    movzx       ecx,bl
 00673A5E    dec         ecx
 00673A5F    cmp         ecx,9E
>00673A65    jbe         00673A6C
 00673A67    call        @BoundErr
 00673A6C    inc         ecx
 00673A6D    imul        edi,ecx,8
>00673A70    jno         00673A77
 00673A72    call        @IntOver
 00673A77    movzx       ecx,byte ptr [esp+1]
 00673A7C    cmp         ecx,7
>00673A7F    jbe         00673A86
 00673A81    call        @BoundErr
 00673A86    imul        ecx,ecx,9F0
>00673A8C    jno         00673A93
 00673A8E    call        @IntOver
 00673A93    lea         ecx,[esi+ecx*8]
 00673A96    push        ecx
 00673A97    pop         ecx
 00673A98    lea         ecx,[ecx+eax*8]
 00673A9B    push        ecx
 00673A9C    pop         ecx
 00673A9D    push        esi
 00673A9E    push        edi
 00673A9F    lea         esi,[edx+edi*8-3C]
 00673AA3    lea         edi,[ecx+edi*8-3C]
 00673AA7    mov         ecx,10
 00673AAC    rep movs    dword ptr [edi],dword ptr [esi]
 00673AAE    pop         edi
 00673AAF    pop         esi
 00673AB0    movzx       edx,byte ptr [esp+1]
 00673AB5    cmp         edx,7
>00673AB8    jbe         00673ABF
 00673ABA    call        @BoundErr
 00673ABF    imul        edx,edx,9F0
>00673AC5    jno         00673ACC
 00673AC7    call        @IntOver
 00673ACC    lea         ebp,[esi+edx*8]
 00673ACF    lea         eax,[ebp+eax*8]
 00673AD3    movzx       edx,byte ptr [esp+1]
 00673AD8    mov         byte ptr [eax+edi*8-3C],dl
 00673ADC    inc         ebx
 00673ADD    cmp         bl,11
>00673AE0    jne         00673A1D
 00673AE6    inc         byte ptr [esp+2]
 00673AEA    cmp         byte ptr [esp+2],1
>00673AEF    jne         00673A1B
 00673AF5    movzx       edx,byte ptr [esp]
 00673AF9    mov         eax,esi
 00673AFB    call        TFXPTD.InitFXAPTextDataOfLoop
 00673B00    pop         edx
 00673B01    pop         ebp
 00673B02    pop         edi
 00673B03    pop         esi
 00673B04    pop         ebx
 00673B05    ret
*}
end;

//00673B08
{*procedure TFXPTD.TextOfAddress(LoopId:Word; Address:Word; ?:?);
begin
 00673B08    push        ebp
 00673B09    mov         ebp,esp
 00673B0B    push        ecx
 00673B0C    push        ebx
 00673B0D    push        esi
 00673B0E    push        edi
 00673B0F    mov         edi,ecx
 00673B11    mov         ebx,edx
 00673B13    mov         esi,eax
 00673B15    mov         eax,dword ptr [esi+2F904];TFXPTD.PD:TFXPPD
 00673B1B    call        006A3430
 00673B20    movzx       eax,al
 00673B23    movzx       edx,bx
 00673B26    sub         edx,eax
>00673B28    jno         00673B2F
 00673B2A    call        @IntOver
 00673B2F    cmp         edx,0FF
>00673B35    jbe         00673B3C
 00673B37    call        @BoundErr
 00673B3C    mov         ebx,edx
 00673B3E    movzx       edx,bl
 00673B41    mov         eax,dword ptr [esi+2F904];TFXPTD.PD:TFXPPD
 00673B47    call        TFXPPD.GetControllerLoopType
 00673B4C    cmp         eax,0FF
>00673B51    jbe         00673B58
 00673B53    call        @BoundErr
 00673B58    movzx       eax,al
 00673B5B    cmp         eax,6
>00673B5E    ja          00673DC6
 00673B64    jmp         dword ptr [eax*4+673B6B]
 00673B64    dd          00673DC6
 00673B64    dd          00673D28
 00673B64    dd          00673C06
 00673B64    dd          00673B87
 00673B64    dd          00673C85
 00673B64    dd          00673B87
 00673B64    dd          00673C85
 00673B87    mov         byte ptr [ebp-2],0
 00673B8B    movzx       eax,di
 00673B8E    cmp         eax,0FF
>00673B93    jbe         00673B9A
 00673B95    call        @BoundErr
 00673B9A    mov         byte ptr [ebp-1],al
 00673B9D    mov         eax,dword ptr [ebp+8]
 00673BA0    movzx       edx,byte ptr [ebp-2]
 00673BA4    cmp         edx,1
>00673BA7    jbe         00673BAE
 00673BA9    call        @BoundErr
 00673BAE    imul        edx,edx,4F8
>00673BB4    jno         00673BBB
 00673BB6    call        @IntOver
 00673BBB    movzx       ecx,bl
 00673BBE    cmp         ecx,7
>00673BC1    jbe         00673BC8
 00673BC3    call        @BoundErr
 00673BC8    imul        ecx,ecx,9F0
>00673BCE    jno         00673BD5
 00673BD0    call        @IntOver
 00673BD5    lea         ecx,[esi+ecx*8]
 00673BD8    lea         esi,[ecx+edx*8]
 00673BDB    movzx       edx,byte ptr [ebp-1]
 00673BDF    dec         edx
 00673BE0    cmp         edx,9E
>00673BE6    jbe         00673BED
 00673BE8    call        @BoundErr
 00673BED    inc         edx
 00673BEE    imul        edx,edx,8
>00673BF1    jno         00673BF8
 00673BF3    call        @IntOver
 00673BF8    lea         edx,[esi+edx*8-3A]
 00673BFC    call        @UStrFromString
>00673C01    jmp         00673DC6
 00673C06    mov         byte ptr [ebp-2],0
 00673C0A    movzx       eax,di
 00673C0D    cmp         eax,0FF
>00673C12    jbe         00673C19
 00673C14    call        @BoundErr
 00673C19    mov         byte ptr [ebp-1],al
 00673C1C    mov         eax,dword ptr [ebp+8]
 00673C1F    movzx       edx,byte ptr [ebp-2]
 00673C23    cmp         edx,1
>00673C26    jbe         00673C2D
 00673C28    call        @BoundErr
 00673C2D    imul        edx,edx,4F8
>00673C33    jno         00673C3A
 00673C35    call        @IntOver
 00673C3A    movzx       ecx,bl
 00673C3D    cmp         ecx,7
>00673C40    jbe         00673C47
 00673C42    call        @BoundErr
 00673C47    imul        ecx,ecx,9F0
>00673C4D    jno         00673C54
 00673C4F    call        @IntOver
 00673C54    lea         ecx,[esi+ecx*8]
 00673C57    lea         esi,[ecx+edx*8]
 00673C5A    movzx       edx,byte ptr [ebp-1]
 00673C5E    dec         edx
 00673C5F    cmp         edx,9E
>00673C65    jbe         00673C6C
 00673C67    call        @BoundErr
 00673C6C    inc         edx
 00673C6D    imul        edx,edx,8
>00673C70    jno         00673C77
 00673C72    call        @IntOver
 00673C77    lea         edx,[esi+edx*8-3A]
 00673C7B    call        @UStrFromString
>00673C80    jmp         00673DC6
 00673C85    movzx       ecx,di
 00673C88    mov         eax,ecx
 00673C8A    push        ecx
 00673C8B    mov         ecx,0C8
 00673C90    xor         edx,edx
 00673C92    div         eax,ecx
 00673C94    pop         ecx
 00673C95    cmp         eax,0FF
>00673C9A    jbe         00673CA1
 00673C9C    call        @BoundErr
 00673CA1    mov         byte ptr [ebp-2],al
 00673CA4    mov         eax,ecx
 00673CA6    mov         ecx,0C8
 00673CAB    xor         edx,edx
 00673CAD    div         eax,ecx
 00673CAF    cmp         edx,0FF
>00673CB5    jbe         00673CBC
 00673CB7    call        @BoundErr
 00673CBC    mov         byte ptr [ebp-1],dl
 00673CBF    mov         eax,dword ptr [ebp+8]
 00673CC2    movzx       edx,byte ptr [ebp-2]
 00673CC6    cmp         edx,1
>00673CC9    jbe         00673CD0
 00673CCB    call        @BoundErr
 00673CD0    imul        edx,edx,4F8
>00673CD6    jno         00673CDD
 00673CD8    call        @IntOver
 00673CDD    movzx       ecx,bl
 00673CE0    cmp         ecx,7
>00673CE3    jbe         00673CEA
 00673CE5    call        @BoundErr
 00673CEA    imul        ecx,ecx,9F0
>00673CF0    jno         00673CF7
 00673CF2    call        @IntOver
 00673CF7    lea         ecx,[esi+ecx*8]
 00673CFA    lea         esi,[ecx+edx*8]
 00673CFD    movzx       edx,byte ptr [ebp-1]
 00673D01    dec         edx
 00673D02    cmp         edx,9E
>00673D08    jbe         00673D0F
 00673D0A    call        @BoundErr
 00673D0F    inc         edx
 00673D10    imul        edx,edx,8
>00673D13    jno         00673D1A
 00673D15    call        @IntOver
 00673D1A    lea         edx,[esi+edx*8-3A]
 00673D1E    call        @UStrFromString
>00673D23    jmp         00673DC6
 00673D28    movzx       ecx,di
 00673D2B    mov         eax,ecx
 00673D2D    push        ecx
 00673D2E    mov         ecx,64
 00673D33    xor         edx,edx
 00673D35    div         eax,ecx
 00673D37    pop         ecx
 00673D38    cmp         eax,0FF
>00673D3D    jbe         00673D44
 00673D3F    call        @BoundErr
 00673D44    mov         byte ptr [ebp-2],al
 00673D47    mov         eax,ecx
 00673D49    mov         ecx,64
 00673D4E    xor         edx,edx
 00673D50    div         eax,ecx
 00673D52    cmp         edx,0FF
>00673D58    jbe         00673D5F
 00673D5A    call        @BoundErr
 00673D5F    mov         byte ptr [ebp-1],dl
 00673D62    mov         eax,dword ptr [ebp+8]
 00673D65    movzx       edx,byte ptr [ebp-2]
 00673D69    cmp         edx,1
>00673D6C    jbe         00673D73
 00673D6E    call        @BoundErr
 00673D73    imul        edx,edx,4F8
>00673D79    jno         00673D80
 00673D7B    call        @IntOver
 00673D80    movzx       ecx,bl
 00673D83    cmp         ecx,7
>00673D86    jbe         00673D8D
 00673D88    call        @BoundErr
 00673D8D    imul        ecx,ecx,9F0
>00673D93    jno         00673D9A
 00673D95    call        @IntOver
 00673D9A    lea         ecx,[esi+ecx*8]
 00673D9D    lea         esi,[ecx+edx*8]
 00673DA0    movzx       edx,byte ptr [ebp-1]
 00673DA4    dec         edx
 00673DA5    cmp         edx,9E
>00673DAB    jbe         00673DB2
 00673DAD    call        @BoundErr
 00673DB2    inc         edx
 00673DB3    imul        edx,edx,8
>00673DB6    jno         00673DBD
 00673DB8    call        @IntOver
 00673DBD    lea         edx,[esi+edx*8-3A]
 00673DC1    call        @UStrFromString
 00673DC6    pop         edi
 00673DC7    pop         esi
 00673DC8    pop         ebx
 00673DC9    pop         ecx
 00673DCA    pop         ebp
 00673DCB    ret         4
end;*}

Initialization
Finalization
//00673DD0
{*
 00673DD0    push        ebp
 00673DD1    mov         ebp,esp
 00673DD3    xor         eax,eax
 00673DD5    push        ebp
 00673DD6    push        673E0B
 00673DDB    push        dword ptr fs:[eax]
 00673DDE    mov         dword ptr fs:[eax],esp
 00673DE1    inc         dword ptr ds:[857F40]
>00673DE7    jne         00673DFD
 00673DE9    mov         eax,857F3C;gvar_00857F3C:UnicodeString
 00673DEE    call        @UStrClr
 00673DF3    mov         eax,7C13F8;^'Text Data encoding error!'
 00673DF8    call        @UStrClr
 00673DFD    xor         eax,eax
 00673DFF    pop         edx
 00673E00    pop         ecx
 00673E01    pop         ecx
 00673E02    mov         dword ptr fs:[eax],edx
 00673E05    push        673E12
 00673E0A    ret
>00673E0B    jmp         @HandleFinally
>00673E10    jmp         00673E0A
 00673E12    pop         ebp
 00673E13    ret
*}
end.