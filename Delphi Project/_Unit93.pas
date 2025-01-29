//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit93;

interface

uses
  SysUtils, Classes, Vcl.StdCtrls, Xml.XMLDoc, FXCalErrFrm, uHaspKey, FXLicFileU, FXStartUp, FXConfigData, FXPanelData, FXTextData, System.TypInfo, System.Classes;

type
  TDbgFrm = class(TForm)
  published
    Memo1:TMemo;//f3C0
    procedure Log(msgtext:string);//00674054
  end;
  TFXADRec = TFXADRec = record//size=DA
APVers:Byte;//f0
APRes1:Byte;//f1
APLoop:Byte;//f2
APAddr:Byte;//f3
APOffset:Byte;//f4
APZone:Byte;//f5
APCtrlA:Word;//f6
APCtrlB:Word;//f8
APType:Byte;//fA
APFunc:Byte;//fB
APFire:Word;//fC
APPrew:Word;//fE
APFireD:Word;//f10
APPrewD:Word;//f12
APServ:Word;//f14
APMode:Byte;//f16
APInDel:Byte;//f17
APInFilt:Byte;//f18
APDayM:Byte;//f19
APZDis:Byte;//f1A
APCnvBit:Byte;//f1B
APInpEvs:TFXEventSet;//f1C
APOutEvs:TFXEventSet;//f1D
APInFunc:Byte;//f1E
APOutFunc:Byte;//f1F
APLoopProtocolType:Byte;//f20
APInpShortIsFault:Boolean;//f21
APExtLogicOred:Boolean;//f22
APOutFunc2:Byte;//f23
APCtrlGIndex:Word;//f24
APCtrlGroups:TCGRec;//f26
APCtrlGroupD1:Word;//fA8
APCtrlDelayD1:Word;//fAA
APCtrlTypesD1:Word;//fAC
APCtrlGroupD2:Word;//fAE
APCtrlDelayD2:Word;//fB0
APCtrlTypesD2:Word;//fB2
APCtrlGroupD3:Word;//fB4
APCtrlDelayD3:Word;//fB6
APCtrlTypesD3:Word;//fB8
APCtrlGroupD4:Word;//fBA
APCtrlDelayD4:Word;//fBC
APCtrlTypesD4:Word;//fBE
APCtrlGroupD5:Word;//fC0
APCtrlDelayD5:Word;//fC2
APCtrlTypesD5:Word;//fC4
APCtrlGroupD6:Word;//fC6
APCtrlDelayD6:Word;//fC8
APCtrlTypesD6:Word;//fCA
APCtrlGroupD7:Word;//fCC
APCtrlDelayD7:Word;//fCE
APCtrlTypesD7:Word;//fD0
APCtrlB2:Word;//fD2
Reserve6:Word;//fD4
Reserve7:Word;//fD6
APEnvironment:Byte;//fD8
APSndrVolume:Byte;//fD9
end;;
  TFXAD = array [1..?,1..?,1..?] of TFXADRec;
  TFXPAD = class(TObject)
  published
    //procedure SysDefaultFireLevel(APType:Integer; ?:?);//0069148C
    //procedure SysDefaultPrewLevel(APType:Integer; ?:?);//00691578
    //procedure SysDefaultServLevel(APType:Integer; ?:?);//00691664
    function SysModeToInt(w:Word; s:string):Integer;//0069124C
    //procedure SysIntToMode(w:Word; v:Integer; ?:?);//006912F4
    function SysUpdateThresholds(APType:Byte; var msValue:Word):Boolean;//00691368
    function CnvToInt(s:string):Word;//00691EA4
    procedure IntToCnv(value:Word; ?:UnicodeString);//00691F64
    function EOLToInt(s:string):Word;//00691FD8
    function SysApDataError(ap:TFXADRec):Cardinal;//00691750
    function SysGetInpEvents(ap:TFXADRec):TFXEventSet;//00691924
    function SysGetOutEvents(ap:TFXADRec):TFXEventSet;//00691C78
    //procedure SysMsToLevel(APType:Byte; Ms:Word; ?:?);//00690C88
    function IsApoWLConfigured:Boolean;//00690400
    function IsApoDSBConfigured:Boolean;//0069047C
    function DoesApoOutputFunctionMatch(output_function_type:Byte):Boolean;//006904FC
    //procedure ApoDefaultSndrVolumeStr(?:?);//0068FDCC
    function ApoSndrVolToInt(s:string):Byte;//0068F780
    //procedure ApoIntToSndrVol(value:Byte; ?:?);//0068F7EC
    function SysOutputToInt(s:string):Byte;//0069099C
    //procedure SysIntToOutput(value:Byte; ?:?);//00690A08
    function SysLevelToMs(APType:Byte; Level:string):Word;//00690A58
    function SysTypeToInt(s:string):Word;//00690580
    procedure SysIntToType(value:Word; ?:UnicodeString);//00690788
    //procedure SysIntToInput(aptype:Byte; apfunc:Byte; ?:?);//006908F8
    procedure IntToEOL(value:Word; ?:UnicodeString);//0069204C
    function ValidateZoneIdChange(DeltaZoneId:Integer; NumOfZones:Byte):Boolean;//006934D8
    procedure PerformZoneIdChange(DeltaZoneId:Integer);//006936B8
    procedure ConvertLC_SYStoSAP_SYS(LoopIndex:Byte);//0069468C
    procedure InitFXAPDataOfLoop(loop:Byte; LoopType:Byte);//00693BFC
    procedure InitFXAData;//006942DC
    //procedure APTypeAsStr(loopid:Word; address:Word; ?:?);//006942E4
    function IsFireRouterDisabledOutputAddrConfigured:Boolean;//00694A90
    function IsFaultRouterDisabledOutputAddrConfigured:Boolean;//00694ABC
    function IsMainsOffFaultOutputAddrConfigured:Boolean;//00694AE8
    function IsOnlyGeneralOutput(LoopType:Integer; OutputFunction:Integer):Boolean;//00694A14
    function IsGeneralOrLocalOutput(LoopType:Integer; OutputFunction:Integer):Boolean;//00694A40
    function IsDelayedAlarmEnabledOutputAddrConfigured:Boolean;//00694A64
    procedure MoveAddressData(FromLoop:Byte; ToLoop:Byte);//00692FC8
    function ComCzmInputToInt(s:string):Byte;//0068F550
    //procedure ComIntToCzmInput(value:Byte; ?:?);//0068F5BC
    function ComInputToInt(s:string):Word;//0068F60C
    function UpdateOldCnvData(VersionMajor:Integer; VersionMinor:Integer; var ap:TFXADRec):Boolean;//00692634
    function CnvGetInpEvents(ap:TFXADRec):TFXEventSet;//0069266C
    function CnvGetOutEvents(ap:TFXADRec):TFXEventSet;//00692918
    function fnZonesInRange(minzone:Integer; maxzone:Integer):Boolean;//00692D8C
    function FXMoveTempADataToAData(loop:Byte):Boolean;//00693894
    procedure FXMoveADataToTempAData(loop:Byte);//00693B34
    procedure ComIntToInput(value:Word; ?:UnicodeString);//0068F674
    function YepToBool(s:string):Boolean;//00692924
    function GenDefaultZone(loop:Byte; range:Byte; address:Byte):Byte;//00692994
    //procedure ApoDefaultSndrMode(APType:Integer; ?:?);//0068FD98
    //procedure SapIntToMode(aptype:Byte; apfunc:Byte; ?:?; apmode:Byte);//0068D650
    //procedure SapDefaultFireLevel(APType:Integer; ?:?);//0068D7FC
    //procedure SapDefaultPrewLevel(APType:Integer; ?:?);//0068D9F0
    function SapLevelToInt(aptype:Word; s:string):Word;//0068D030
    //procedure SapIntToLevel(aptype:Word; w:Word; ?:?);//0068D4D8
    function SapModeToInt(aptype:Word; s:string):Byte;//0068D534
    function SapSysCountHigh(LoopIndx:Byte; SysCount:Integer):Boolean;//0068E804
    function SapGetInpEvents(ap:TFXADRec):TFXEventSet;//0068DBF0
    function SapGetOutEvents(ap:TFXADRec):TFXEventSet;//0068DFB0
    //procedure SapDefaultServLevel(APType:Integer; ?:?);//0068DBE4
    function SapNumOfChannels(APType:Word):Integer;//0068E190
    function SapApDataError(ap:TFXADRec):Cardinal;//0068E210
    function SapCZInputToInt(s:string):Byte;//0068CFC0
    procedure DecodeFXADMsg(NegVer:Word; MsgLen:Byte; MsgData:TMsgData);//0067DB48
    function Read(fs:TFileStream; VersionMajor:Integer; RecordSize:Integer; NumOfRecords:Integer; VersionMinor:Integer):Integer;//0067F610
    function Save(fs:TFileStream; VersionMajor:Integer; RecordSize:Cardinal; NumOfRecords:Word; VersionMinor:Integer):Integer;//0067FABC
    constructor Create;//0067BECC
    destructor Destroy();//0067BF0C
    function EncodeFXADMsg(loop:Word; range:Word; var MsgData:TMsgData; var MsgLen:Byte; NegVer:Word; address:Word):Boolean;//0067BF3C
    //procedure SapIntToInput(aptype:Byte; apfunc:Byte; ?:?; apinfunc:Byte);//0068CD10
    function SapOutputToInt(s:string):Byte;//0068CE7C
    //procedure SapIntToOutput(aptype:Byte; apfunc:Byte; ?:?; apoutfunc:Byte);//0068CEEC
    function SapTypeToInt(s:string):Word;//0068CB1C
    //procedure SapIntToType(aptype:Byte; apfunc:Byte; ?:?);//0068CBF4
    function SapInputToInt(s:string):Byte;//0068CCA0
    //procedure SapDefaultSndrVolumeStr(?:?);//0068E668
    procedure ApoIntToLevel(value:Word; ?:UnicodeString);//0068F8A4
    function ApoModeToInt(w:Word; s:string):Byte;//0068F908
    //procedure ApoIntToMode(w:Word; value:Byte; ?:?);//0068FA18
    function ApoOutputToInt(s:string):Byte;//0068F6C4
    procedure ApoIntToOutput(value:Byte; ?:UnicodeString);//0068F730
    function ApoLevelToInt(s:string):Word;//0068F83C
    function ApoApDataError(ap:TFXADRec):Cardinal;//0068FDE0
    function ApoGetInpEvents(ap:TFXADRec):TFXEventSet;//0068FF08
    function ApoGetOutEvents(ap:TFXADRec):TFXEventSet;//00690258
    //procedure ApoDefaultFireLevel(APType:Integer; ?:?);//0068FBAC
    //procedure ApoDefaultPrewLevel(APType:Integer; ?:?);//0068FC9C
    //procedure ApoDefaultServLevel(APType:Integer; ?:?);//0068FD8C
    procedure ApoIntToType(value:Word; ?:UnicodeString);//0068F14C
    function SapUpdateSndrMode(VersionMajor:Integer; VersionMinor:Integer; var ap:TFXADRec):Boolean;//0068E738
    function SapUpdateSndrVol(VersionMajor:Integer; VersionMinor:Integer; var ap:TFXADRec):Boolean;//0068E7A4
    function IsSapSndrVolOrOut2Configured:Boolean;//0069221C
    function SapSndrVolToInt(s:string):Byte;//0068E5A8
    //procedure SapIntToSndrVol(value:Byte; ?:?);//0068E614
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function IsMiniModuleConfigured:Boolean;//0069243C
    function DoesSapOutputFunctionMatch(output_function_type:Byte):Boolean;//00692564
    function ApoTypeToInt(s:string):Word;//0068E950
    function SapEnvironStrToInt(s:string):Byte;//0068E6CC
    //procedure SapEnvironIntToStr(value:Byte; ?:?);//0068E67C
    function IsSapEnvirConfigured:Boolean;//0069207C
  public
    FXAD:TFXAD;//f4
    CI:TFXPCI;//f87664
    PD:TFXPPD;//f87668
    TD:TFXPTD;//f8766C
    LcToSlcConversionErrors:TStringList;//f87670
  end;
    //function sub_0067DAB8(?:?; ?:?; ?:?; ?:?):?;//0067DAB8
    procedure sub_0067FC04(?:TFXIniFile);//0067FC04
    //function sub_0068CAB4(?:?; ?:?; ?:?; ?:?):?;//0068CAB4
    //procedure sub_0068D290(?:Word; ?:Word; ?:?);//0068D290

implementation

{$R *.DFM}

//00674054
procedure TDbgFrm.Log(msgtext:string);
begin
{*
 00674054    push        ebp
 00674055    mov         ebp,esp
 00674057    push        ecx
 00674058    mov         dword ptr [ebp-4],edx
 0067405B    mov         eax,dword ptr [ebp-4]
 0067405E    call        @UStrAddRef
 00674063    xor         eax,eax
 00674065    push        ebp
 00674066    push        6740A0
 0067406B    push        dword ptr fs:[eax]
 0067406E    mov         dword ptr fs:[eax],esp
 00674071    mov         eax,[00857F44];gvar_00857F44:TDbgFrm
 00674076    mov         eax,dword ptr [eax+3C0]
 0067407C    mov         eax,dword ptr [eax+2C8]
 00674082    mov         edx,dword ptr [ebp-4]
 00674085    mov         ecx,dword ptr [eax]
 00674087    call        dword ptr [ecx+3C]
 0067408A    xor         eax,eax
 0067408C    pop         edx
 0067408D    pop         ecx
 0067408E    pop         ecx
 0067408F    mov         dword ptr fs:[eax],edx
 00674092    push        6740A7
 00674097    lea         eax,[ebp-4]
 0067409A    call        @UStrClr
 0067409F    ret
>006740A0    jmp         @HandleFinally
>006740A5    jmp         00674097
 006740A7    pop         ecx
 006740A8    pop         ebp
 006740A9    ret
*}
end;

//0067BECC
constructor TFXPAD.Create;
begin
{*
 0067BECC    push        ebx
 0067BECD    push        esi
 0067BECE    test        dl,dl
>0067BED0    je          0067BEDA
 0067BED2    add         esp,0FFFFFFF0
 0067BED5    call        @ClassCreate
 0067BEDA    mov         ebx,edx
 0067BEDC    mov         esi,eax
 0067BEDE    mov         dl,1
 0067BEE0    mov         eax,[0046F9A0];TStringList
 0067BEE5    call        TStringList.Create;TStringList.Create
 0067BEEA    mov         dword ptr [esi+87670],eax;TFXPAD.LcToSlcConversionErrors:TStringList
 0067BEF0    mov         eax,esi
 0067BEF2    test        bl,bl
>0067BEF4    je          0067BF05
 0067BEF6    call        @AfterConstruction
 0067BEFB    pop         dword ptr fs:[0]
 0067BF02    add         esp,0C
 0067BF05    mov         eax,esi
 0067BF07    pop         esi
 0067BF08    pop         ebx
 0067BF09    ret
*}
end;

//0067BF0C
destructor TFXPAD.Destroy();
begin
{*
 0067BF0C    push        ebx
 0067BF0D    push        esi
 0067BF0E    call        @BeforeDestruction
 0067BF13    mov         ebx,edx
 0067BF15    mov         esi,eax
 0067BF17    mov         eax,dword ptr [esi+87670];TFXPAD.LcToSlcConversionErrors:TStringList
 0067BF1D    call        TObject.Free
 0067BF22    mov         dl,0FC
 0067BF24    and         dl,bl
 0067BF26    mov         eax,esi
 0067BF28    call        TObject.Destroy
 0067BF2D    test        bl,bl
>0067BF2F    jle         0067BF38
 0067BF31    mov         eax,esi
 0067BF33    call        @ClassDestroy
 0067BF38    pop         esi
 0067BF39    pop         ebx
 0067BF3A    ret
*}
end;

//0067BF3C
function TFXPAD.EncodeFXADMsg(loop:Word; range:Word; var MsgData:TMsgData; var MsgLen:Byte; NegVer:Word; address:Word):Boolean;
begin
{*
 0067BF3C    push        ebp
 0067BF3D    mov         ebp,esp
 0067BF3F    add         esp,0FFFFFEA8
 0067BF45    push        ebx
 0067BF46    push        esi
 0067BF47    push        edi
 0067BF48    mov         word ptr [ebp-2],cx
 0067BF4C    mov         edi,edx
 0067BF4E    mov         ebx,eax
 0067BF50    movzx       eax,word ptr [ebp+10]
 0067BF54    dec         eax
 0067BF55    sub         ax,5
>0067BF59    jb          0067BF75
 0067BF5B    sub         ax,3
>0067BF5F    jb          0067BF83
 0067BF61    add         eax,0FFFFFFE9
 0067BF64    sub         ax,2
>0067BF68    jb          0067BF83
 0067BF6A    add         eax,0FFFFFFE2
 0067BF6D    sub         ax,9
>0067BF71    jb          0067BF83
>0067BF73    jmp         0067BF91
 0067BF75    mov         byte ptr [ebp-3],0
 0067BF79    mov         byte ptr [ebp-4],0
 0067BF7D    mov         byte ptr [ebp-5],0
>0067BF81    jmp         0067BFA8
 0067BF83    mov         byte ptr [ebp-3],3
 0067BF87    mov         byte ptr [ebp-4],0
 0067BF8B    mov         byte ptr [ebp-5],0
>0067BF8F    jmp         0067BFA8
 0067BF91    mov         ecx,dword ptr ds:[7C2874];^'Address Data encoding error!'
 0067BF97    mov         dl,1
 0067BF99    mov         eax,[004174D0];Exception
 0067BF9E    call        Exception.Create;Exception.Create
 0067BFA3    call        @RaiseExcept
 0067BFA8    lea         eax,[ebp-156]
 0067BFAE    xor         ecx,ecx
 0067BFB0    mov         edx,0FE
 0067BFB5    call        @FillChar
 0067BFBA    movzx       edx,di
 0067BFBD    mov         eax,dword ptr [ebx+87668];TFXPAD.PD:TFXPPD
 0067BFC3    call        TFXPPD.GetControllerLoopType
 0067BFC8    mov         esi,eax
 0067BFCA    movzx       eax,di
 0067BFCD    cmp         eax,7
>0067BFD0    jbe         0067BFD7
 0067BFD2    call        @BoundErr
 0067BFD7    imul        eax,eax,43B3
>0067BFDD    jno         0067BFE4
 0067BFDF    call        @IntOver
 0067BFE4    lea         eax,[ebx+eax*4]
 0067BFE7    movzx       edx,word ptr [ebp-2]
 0067BFEB    cmp         edx,1
>0067BFEE    jbe         0067BFF5
 0067BFF0    call        @BoundErr
 0067BFF5    imul        edx,edx,43B3
>0067BFFB    jno         0067C002
 0067BFFD    call        @IntOver
 0067C002    lea         eax,[eax+edx*2]
 0067C005    movzx       edx,word ptr [ebp+14]
 0067C009    dec         edx
 0067C00A    cmp         edx,9E
>0067C010    jbe         0067C017
 0067C012    call        @BoundErr
 0067C017    inc         edx
 0067C018    imul        edx,edx,6D
>0067C01B    jno         0067C022
 0067C01D    call        @IntOver
 0067C022    lea         eax,[eax+edx*2-0D6]
 0067C029    mov         ebx,eax
 0067C02B    movzx       eax,di
 0067C02E    add         eax,1
>0067C031    jno         0067C038
 0067C033    call        @IntOver
 0067C038    cmp         eax,0FF
>0067C03D    jbe         0067C044
 0067C03F    call        @BoundErr
 0067C044    mov         byte ptr [ebp-156],al
 0067C04A    mov         eax,esi
 0067C04C    cmp         eax,6
>0067C04F    ja          0067C12A
 0067C055    jmp         dword ptr [eax*4+67C05C]
 0067C055    dd          0067C12A
 0067C055    dd          0067C0B4
 0067C055    dd          0067C10D
 0067C055    dd          0067C0EE
 0067C055    dd          0067C078
 0067C055    dd          0067C0EE
 0067C055    dd          0067C078
 0067C078    movzx       eax,word ptr [ebp+14]
 0067C07C    cmp         eax,0FF
>0067C081    jbe         0067C088
 0067C083    call        @BoundErr
 0067C088    mov         byte ptr [ebp-155],al
 0067C08E    movzx       eax,word ptr [ebp-2]
 0067C092    mov         edx,0C8
 0067C097    mul         eax,edx
>0067C099    jno         0067C0A0
 0067C09B    call        @IntOver
 0067C0A0    cmp         eax,0FF
>0067C0A5    jbe         0067C0AC
 0067C0A7    call        @BoundErr
 0067C0AC    mov         byte ptr [ebp-154],al
>0067C0B2    jmp         0067C12A
 0067C0B4    movzx       eax,word ptr [ebp-2]
 0067C0B8    mov         edx,64
 0067C0BD    mul         eax,edx
>0067C0BF    jno         0067C0C6
 0067C0C1    call        @IntOver
 0067C0C6    movzx       edx,word ptr [ebp+14]
 0067C0CA    add         eax,edx
>0067C0CC    jno         0067C0D3
 0067C0CE    call        @IntOver
 0067C0D3    cmp         eax,0FF
>0067C0D8    jbe         0067C0DF
 0067C0DA    call        @BoundErr
 0067C0DF    mov         byte ptr [ebp-155],al
 0067C0E5    mov         byte ptr [ebp-154],0
>0067C0EC    jmp         0067C12A
 0067C0EE    movzx       eax,word ptr [ebp+14]
 0067C0F2    cmp         eax,0FF
>0067C0F7    jbe         0067C0FE
 0067C0F9    call        @BoundErr
 0067C0FE    mov         byte ptr [ebp-155],al
 0067C104    mov         byte ptr [ebp-154],0
>0067C10B    jmp         0067C12A
 0067C10D    movzx       eax,word ptr [ebp+14]
 0067C111    cmp         eax,0FF
>0067C116    jbe         0067C11D
 0067C118    call        @BoundErr
 0067C11D    mov         byte ptr [ebp-155],al
 0067C123    mov         byte ptr [ebp-154],0
 0067C12A    movzx       eax,byte ptr [ebx+5]
 0067C12E    mov         byte ptr [ebp-153],al
 0067C134    xor         ecx,ecx
 0067C136    cmp         esi,4
>0067C139    je          0067C140
 0067C13B    cmp         esi,6
>0067C13E    jne         0067C1AF
 0067C140    cmp         byte ptr [ebx+0B],1
>0067C144    jne         0067C1AF
 0067C146    movzx       eax,byte ptr [ebx+0A]
 0067C14A    movzx       eax,al
 0067C14D    bt          dword ptr ds:[7C2700],eax;gvar_007C2700
>0067C154    jae         0067C15E
 0067C156    cmp         byte ptr [ebx+16],3
>0067C15A    jne         0067C15E
 0067C15C    mov         cl,1
 0067C15E    movzx       eax,byte ptr [ebx+0A]
 0067C162    movzx       eax,al
 0067C165    bt          dword ptr ds:[7C2720],eax;gvar_007C2720
>0067C16C    jae         0067C176
 0067C16E    cmp         byte ptr [ebx+16],3
>0067C172    jne         0067C176
 0067C174    mov         cl,1
 0067C176    movzx       eax,byte ptr [ebx+0A]
 0067C17A    movzx       eax,al
 0067C17D    bt          dword ptr ds:[7C2740],eax;gvar_007C2740:Word
>0067C184    jae         0067C197
 0067C186    cmp         byte ptr [ebx+16],3
>0067C18A    jne         0067C197
 0067C18C    movzx       eax,byte ptr [ebx+1E]
 0067C190    dec         eax
 0067C191    sub         al,4
>0067C193    jae         0067C197
 0067C195    mov         cl,1
 0067C197    movzx       eax,byte ptr [ebx+0A]
 0067C19B    movzx       eax,al
 0067C19E    bt          dword ptr ds:[7C2740],eax;gvar_007C2740:Word
>0067C1A5    jae         0067C1AF
 0067C1A7    cmp         byte ptr [ebx+1E],5
>0067C1AB    jne         0067C1AF
 0067C1AD    mov         cl,1
 0067C1AF    cmp         esi,4
>0067C1B2    je          0067C1B9
 0067C1B4    cmp         esi,6
>0067C1B7    jne         0067C20A
 0067C1B9    cmp         byte ptr [ebx+0B],0
>0067C1BD    jne         0067C20A
 0067C1BF    movzx       eax,byte ptr [ebx+0A]
 0067C1C3    movzx       eax,al
 0067C1C6    bt          dword ptr ds:[7C25A0],eax;gvar_007C25A0:Word
>0067C1CD    jae         0067C1D7
 0067C1CF    cmp         byte ptr [ebx+16],3
>0067C1D3    jne         0067C1D7
 0067C1D5    mov         cl,1
 0067C1D7    cmp         byte ptr [ebx+0A],6
>0067C1DB    jne         0067C1E5
 0067C1DD    cmp         byte ptr [ebx+16],3
>0067C1E1    jne         0067C1E5
 0067C1E3    mov         cl,1
 0067C1E5    cmp         byte ptr [ebx+0A],4
>0067C1E9    jne         0067C1FC
 0067C1EB    cmp         byte ptr [ebx+16],3
>0067C1EF    jne         0067C1FC
 0067C1F1    movzx       eax,byte ptr [ebx+1E]
 0067C1F5    dec         eax
 0067C1F6    sub         al,4
>0067C1F8    jae         0067C1FC
 0067C1FA    mov         cl,1
 0067C1FC    cmp         byte ptr [ebx+0A],4
>0067C200    jne         0067C20A
 0067C202    cmp         byte ptr [ebx+1E],5
>0067C206    jne         0067C20A
 0067C208    mov         cl,1
 0067C20A    cmp         esi,1
>0067C20D    jne         0067C264
 0067C20F    movzx       eax,byte ptr [ebx+0A]
 0067C213    cmp         eax,0F
>0067C216    ja          0067C264
 0067C218    movzx       eax,byte ptr [eax+67C226]
 0067C21F    jmp         dword ptr [eax*4+67C236]
 0067C21F    db          0
 0067C21F    db          1
 0067C21F    db          1
 0067C21F    db          1
 0067C21F    db          2
 0067C21F    db          0
 0067C21F    db          1
 0067C21F    db          0
 0067C21F    db          1
 0067C21F    db          1
 0067C21F    db          1
 0067C21F    db          1
 0067C21F    db          0
 0067C21F    db          1
 0067C21F    db          1
 0067C21F    db          1
 0067C21F    dd          0067C264
 0067C21F    dd          0067C242
 0067C21F    dd          0067C24C
 0067C242    cmp         byte ptr [ebx+16],3
>0067C246    jne         0067C264
 0067C248    mov         cl,1
>0067C24A    jmp         0067C264
 0067C24C    movzx       eax,byte ptr [ebx+0B]
 0067C250    sub         al,5
>0067C252    jb          0067C258
>0067C254    je          0067C262
>0067C256    jmp         0067C264
 0067C258    cmp         byte ptr [ebx+16],3
>0067C25C    jne         0067C264
 0067C25E    mov         cl,1
>0067C260    jmp         0067C264
 0067C262    mov         cl,1
 0067C264    cmp         esi,3
>0067C267    je          0067C26E
 0067C269    cmp         esi,5
>0067C26C    jne         0067C2A2
 0067C26E    movzx       eax,byte ptr [ebx+0A]
 0067C272    dec         eax
 0067C273    sub         al,0B
>0067C275    jb          0067C27F
 0067C277    sub         al,8
>0067C279    jb          0067C289
 0067C27B    sub         al,8
>0067C27D    jne         0067C2A2
 0067C27F    cmp         byte ptr [ebx+16],3
>0067C283    jne         0067C2A2
 0067C285    mov         cl,1
>0067C287    jmp         0067C2A2
 0067C289    movzx       eax,byte ptr [ebx+1E]
 0067C28D    dec         eax
 0067C28E    sub         al,4
>0067C290    jb          0067C296
>0067C292    je          0067C2A0
>0067C294    jmp         0067C2A2
 0067C296    cmp         byte ptr [ebx+16],3
>0067C29A    jne         0067C2A2
 0067C29C    mov         cl,1
>0067C29E    jmp         0067C2A2
 0067C2A0    mov         cl,1
 0067C2A2    cmp         esi,2
>0067C2A5    jne         0067C2CD
 0067C2A7    movzx       eax,byte ptr [ebx+0A]
 0067C2AB    dec         al
>0067C2AD    jne         0067C2CD
 0067C2AF    movzx       eax,byte ptr [ebx+0B]
 0067C2B3    dec         al
>0067C2B5    je          0067C2C1
 0067C2B7    add         al,0FE
 0067C2B9    sub         al,2
>0067C2BB    jb          0067C2C1
>0067C2BD    je          0067C2CB
>0067C2BF    jmp         0067C2CD
 0067C2C1    cmp         byte ptr [ebx+16],3
>0067C2C5    jne         0067C2CD
 0067C2C7    mov         cl,1
>0067C2C9    jmp         0067C2CD
 0067C2CB    mov         cl,1
 0067C2CD    mov         byte ptr [ebp-152],cl
 0067C2D3    mov         eax,esi
 0067C2D5    cmp         eax,6
>0067C2D8    ja          0067C8EB
 0067C2DE    jmp         dword ptr [eax*4+67C2E5]
 0067C2DE    dd          0067C8EB
 0067C2DE    dd          0067C617
 0067C2DE    dd          0067C8AD
 0067C2DE    dd          0067C831
 0067C2DE    dd          0067C301
 0067C2DE    dd          0067C831
 0067C2DE    dd          0067C301
 0067C301    cmp         byte ptr [ebx+0B],1
>0067C305    jne         0067C3F4
 0067C30B    movzx       eax,byte ptr [ebx+0A]
 0067C30F    cmp         eax,2C
>0067C312    jbe         0067C319
 0067C314    call        @BoundErr
 0067C319    movzx       eax,byte ptr [eax+7C1896]
 0067C320    mov         byte ptr [ebp-151],al
 0067C326    cmp         byte ptr [ebx+0A],0A
>0067C32A    je          0067C332
 0067C32C    cmp         byte ptr [ebx+0A],0D
>0067C330    jne         0067C395
 0067C332    cmp         word ptr [ebx+0C],7
>0067C337    jne         0067C342
 0067C339    mov         byte ptr [ebp-150],0
>0067C340    jmp         0067C358
 0067C342    movzx       eax,word ptr [ebx+0C]
 0067C346    cmp         eax,0FF
>0067C34B    jbe         0067C352
 0067C34D    call        @BoundErr
 0067C352    mov         byte ptr [ebp-150],al
 0067C358    cmp         word ptr [ebx+10],7
>0067C35D    jne         0067C368
 0067C35F    mov         byte ptr [ebp-14F],0
>0067C366    jmp         0067C37E
 0067C368    movzx       eax,word ptr [ebx+10]
 0067C36C    cmp         eax,0FF
>0067C371    jbe         0067C378
 0067C373    call        @BoundErr
 0067C378    mov         byte ptr [ebp-14F],al
 0067C37E    mov         byte ptr [ebp-14E],0
 0067C385    mov         byte ptr [ebp-14D],0
 0067C38C    mov         byte ptr [ebp-14C],0
>0067C393    jmp         0067C3F4
 0067C395    movzx       eax,word ptr [ebx+0C]
 0067C399    cmp         eax,0FF
>0067C39E    jbe         0067C3A5
 0067C3A0    call        @BoundErr
 0067C3A5    mov         byte ptr [ebp-150],al
 0067C3AB    movzx       eax,word ptr [ebx+10]
 0067C3AF    cmp         eax,0FF
>0067C3B4    jbe         0067C3BB
 0067C3B6    call        @BoundErr
 0067C3BB    mov         byte ptr [ebp-14F],al
 0067C3C1    movzx       eax,word ptr [ebx+0E]
 0067C3C5    cmp         eax,0FF
>0067C3CA    jbe         0067C3D1
 0067C3CC    call        @BoundErr
 0067C3D1    mov         byte ptr [ebp-14E],al
 0067C3D7    movzx       eax,word ptr [ebx+12]
 0067C3DB    cmp         eax,0FF
>0067C3E0    jbe         0067C3E7
 0067C3E2    call        @BoundErr
 0067C3E7    mov         byte ptr [ebp-14D],al
 0067C3ED    mov         byte ptr [ebp-14C],0
 0067C3F4    cmp         byte ptr [ebx+0B],0
>0067C3F8    jne         0067C8EB
 0067C3FE    movzx       eax,byte ptr [ebx+0A]
 0067C402    cmp         eax,0F
>0067C405    jbe         0067C40C
 0067C407    call        @BoundErr
 0067C40C    movzx       eax,byte ptr [eax+7C161C]
 0067C413    mov         byte ptr [ebp-151],al
 0067C419    cmp         byte ptr [ebx+0A],9
>0067C41D    jne         0067C4C3
 0067C423    movzx       eax,word ptr [ebx+0C]
 0067C427    mov         edi,0A
 0067C42C    xor         edx,edx
 0067C42E    div         eax,edi
 0067C430    cmp         eax,0FF
>0067C435    jbe         0067C43C
 0067C437    call        @BoundErr
 0067C43C    mov         byte ptr [ebp-150],al
 0067C442    movzx       eax,word ptr [ebx+10]
 0067C446    mov         edi,0A
 0067C44B    xor         edx,edx
 0067C44D    div         eax,edi
 0067C44F    cmp         eax,0FF
>0067C454    jbe         0067C45B
 0067C456    call        @BoundErr
 0067C45B    mov         byte ptr [ebp-14F],al
 0067C461    movzx       eax,word ptr [ebx+0E]
 0067C465    mov         edi,0A
 0067C46A    xor         edx,edx
 0067C46C    div         eax,edi
 0067C46E    cmp         eax,0FF
>0067C473    jbe         0067C47A
 0067C475    call        @BoundErr
 0067C47A    mov         byte ptr [ebp-14E],al
 0067C480    movzx       eax,word ptr [ebx+12]
 0067C484    mov         edi,0A
 0067C489    xor         edx,edx
 0067C48B    div         eax,edi
 0067C48D    cmp         eax,0FF
>0067C492    jbe         0067C499
 0067C494    call        @BoundErr
 0067C499    mov         byte ptr [ebp-14D],al
 0067C49F    movzx       eax,word ptr [ebx+14]
 0067C4A3    mov         edi,0A
 0067C4A8    xor         edx,edx
 0067C4AA    div         eax,edi
 0067C4AC    cmp         eax,0FF
>0067C4B1    jbe         0067C4B8
 0067C4B3    call        @BoundErr
 0067C4B8    mov         byte ptr [ebp-14C],al
>0067C4BE    jmp         0067C8EB
 0067C4C3    movzx       eax,word ptr [ebx+0C]
 0067C4C7    sub         eax,3E8
>0067C4CC    jno         0067C4D3
 0067C4CE    call        @IntOver
 0067C4D3    mov         edi,0A
 0067C4D8    cdq
 0067C4D9    idiv        eax,edi
 0067C4DB    mov         dword ptr [ebp-0C],eax
 0067C4DE    cmp         dword ptr [ebp-0C],0
>0067C4E2    jle         0067C4EC
 0067C4E4    mov         eax,dword ptr [ebp-0C]
 0067C4E7    mov         dword ptr [ebp-10],eax
>0067C4EA    jmp         0067C4F1
 0067C4EC    xor         eax,eax
 0067C4EE    mov         dword ptr [ebp-10],eax
 0067C4F1    mov         eax,dword ptr [ebp-10]
 0067C4F4    cmp         eax,0FF
>0067C4F9    jbe         0067C500
 0067C4FB    call        @BoundErr
 0067C500    mov         byte ptr [ebp-150],al
 0067C506    movzx       eax,word ptr [ebx+10]
 0067C50A    sub         eax,3E8
>0067C50F    jno         0067C516
 0067C511    call        @IntOver
 0067C516    mov         edi,0A
 0067C51B    cdq
 0067C51C    idiv        eax,edi
 0067C51E    mov         dword ptr [ebp-14],eax
 0067C521    cmp         dword ptr [ebp-14],0
>0067C525    jle         0067C52F
 0067C527    mov         eax,dword ptr [ebp-14]
 0067C52A    mov         dword ptr [ebp-18],eax
>0067C52D    jmp         0067C534
 0067C52F    xor         eax,eax
 0067C531    mov         dword ptr [ebp-18],eax
 0067C534    mov         eax,dword ptr [ebp-18]
 0067C537    cmp         eax,0FF
>0067C53C    jbe         0067C543
 0067C53E    call        @BoundErr
 0067C543    mov         byte ptr [ebp-14F],al
 0067C549    movzx       eax,word ptr [ebx+0E]
 0067C54D    sub         eax,3E8
>0067C552    jno         0067C559
 0067C554    call        @IntOver
 0067C559    mov         edi,0A
 0067C55E    cdq
 0067C55F    idiv        eax,edi
 0067C561    mov         dword ptr [ebp-1C],eax
 0067C564    cmp         dword ptr [ebp-1C],0
>0067C568    jle         0067C572
 0067C56A    mov         eax,dword ptr [ebp-1C]
 0067C56D    mov         dword ptr [ebp-20],eax
>0067C570    jmp         0067C577
 0067C572    xor         eax,eax
 0067C574    mov         dword ptr [ebp-20],eax
 0067C577    mov         eax,dword ptr [ebp-20]
 0067C57A    cmp         eax,0FF
>0067C57F    jbe         0067C586
 0067C581    call        @BoundErr
 0067C586    mov         byte ptr [ebp-14E],al
 0067C58C    movzx       eax,word ptr [ebx+12]
 0067C590    sub         eax,3E8
>0067C595    jno         0067C59C
 0067C597    call        @IntOver
 0067C59C    mov         edi,0A
 0067C5A1    cdq
 0067C5A2    idiv        eax,edi
 0067C5A4    mov         dword ptr [ebp-24],eax
 0067C5A7    cmp         dword ptr [ebp-24],0
>0067C5AB    jle         0067C5B5
 0067C5AD    mov         eax,dword ptr [ebp-24]
 0067C5B0    mov         dword ptr [ebp-28],eax
>0067C5B3    jmp         0067C5BA
 0067C5B5    xor         eax,eax
 0067C5B7    mov         dword ptr [ebp-28],eax
 0067C5BA    mov         eax,dword ptr [ebp-28]
 0067C5BD    cmp         eax,0FF
>0067C5C2    jbe         0067C5C9
 0067C5C4    call        @BoundErr
 0067C5C9    mov         byte ptr [ebp-14D],al
 0067C5CF    movzx       eax,word ptr [ebx+14]
 0067C5D3    sub         eax,3E8
>0067C5D8    jno         0067C5DF
 0067C5DA    call        @IntOver
 0067C5DF    mov         edi,0A
 0067C5E4    cdq
 0067C5E5    idiv        eax,edi
 0067C5E7    mov         dword ptr [ebp-2C],eax
 0067C5EA    cmp         dword ptr [ebp-2C],0
>0067C5EE    jle         0067C5F8
 0067C5F0    mov         eax,dword ptr [ebp-2C]
 0067C5F3    mov         dword ptr [ebp-30],eax
>0067C5F6    jmp         0067C5FD
 0067C5F8    xor         eax,eax
 0067C5FA    mov         dword ptr [ebp-30],eax
 0067C5FD    mov         eax,dword ptr [ebp-30]
 0067C600    cmp         eax,0FF
>0067C605    jbe         0067C60C
 0067C607    call        @BoundErr
 0067C60C    mov         byte ptr [ebp-14C],al
>0067C612    jmp         0067C8EB
 0067C617    movzx       eax,byte ptr [ebx+0A]
 0067C61B    movzx       edx,al
 0067C61E    cmp         edx,0F
>0067C621    jbe         0067C628
 0067C623    call        @BoundErr
 0067C628    movzx       edx,byte ptr [edx+7C161C]
 0067C62F    mov         byte ptr [ebp-151],dl
 0067C635    cmp         al,9
>0067C637    jne         0067C6DD
 0067C63D    movzx       eax,word ptr [ebx+0C]
 0067C641    mov         edi,0A
 0067C646    xor         edx,edx
 0067C648    div         eax,edi
 0067C64A    cmp         eax,0FF
>0067C64F    jbe         0067C656
 0067C651    call        @BoundErr
 0067C656    mov         byte ptr [ebp-150],al
 0067C65C    movzx       eax,word ptr [ebx+10]
 0067C660    mov         edi,0A
 0067C665    xor         edx,edx
 0067C667    div         eax,edi
 0067C669    cmp         eax,0FF
>0067C66E    jbe         0067C675
 0067C670    call        @BoundErr
 0067C675    mov         byte ptr [ebp-14F],al
 0067C67B    movzx       eax,word ptr [ebx+0E]
 0067C67F    mov         edi,0A
 0067C684    xor         edx,edx
 0067C686    div         eax,edi
 0067C688    cmp         eax,0FF
>0067C68D    jbe         0067C694
 0067C68F    call        @BoundErr
 0067C694    mov         byte ptr [ebp-14E],al
 0067C69A    movzx       eax,word ptr [ebx+12]
 0067C69E    mov         edi,0A
 0067C6A3    xor         edx,edx
 0067C6A5    div         eax,edi
 0067C6A7    cmp         eax,0FF
>0067C6AC    jbe         0067C6B3
 0067C6AE    call        @BoundErr
 0067C6B3    mov         byte ptr [ebp-14D],al
 0067C6B9    movzx       eax,word ptr [ebx+14]
 0067C6BD    mov         edi,0A
 0067C6C2    xor         edx,edx
 0067C6C4    div         eax,edi
 0067C6C6    cmp         eax,0FF
>0067C6CB    jbe         0067C6D2
 0067C6CD    call        @BoundErr
 0067C6D2    mov         byte ptr [ebp-14C],al
>0067C6D8    jmp         0067C8EB
 0067C6DD    movzx       eax,word ptr [ebx+0C]
 0067C6E1    sub         eax,3E8
>0067C6E6    jno         0067C6ED
 0067C6E8    call        @IntOver
 0067C6ED    mov         edi,0A
 0067C6F2    cdq
 0067C6F3    idiv        eax,edi
 0067C6F5    mov         dword ptr [ebp-34],eax
 0067C6F8    cmp         dword ptr [ebp-34],0
>0067C6FC    jle         0067C706
 0067C6FE    mov         eax,dword ptr [ebp-34]
 0067C701    mov         dword ptr [ebp-38],eax
>0067C704    jmp         0067C70B
 0067C706    xor         eax,eax
 0067C708    mov         dword ptr [ebp-38],eax
 0067C70B    mov         eax,dword ptr [ebp-38]
 0067C70E    cmp         eax,0FF
>0067C713    jbe         0067C71A
 0067C715    call        @BoundErr
 0067C71A    mov         byte ptr [ebp-150],al
 0067C720    movzx       eax,word ptr [ebx+10]
 0067C724    sub         eax,3E8
>0067C729    jno         0067C730
 0067C72B    call        @IntOver
 0067C730    mov         edi,0A
 0067C735    cdq
 0067C736    idiv        eax,edi
 0067C738    mov         dword ptr [ebp-3C],eax
 0067C73B    cmp         dword ptr [ebp-3C],0
>0067C73F    jle         0067C749
 0067C741    mov         eax,dword ptr [ebp-3C]
 0067C744    mov         dword ptr [ebp-40],eax
>0067C747    jmp         0067C74E
 0067C749    xor         eax,eax
 0067C74B    mov         dword ptr [ebp-40],eax
 0067C74E    mov         eax,dword ptr [ebp-40]
 0067C751    cmp         eax,0FF
>0067C756    jbe         0067C75D
 0067C758    call        @BoundErr
 0067C75D    mov         byte ptr [ebp-14F],al
 0067C763    movzx       eax,word ptr [ebx+0E]
 0067C767    sub         eax,3E8
>0067C76C    jno         0067C773
 0067C76E    call        @IntOver
 0067C773    mov         edi,0A
 0067C778    cdq
 0067C779    idiv        eax,edi
 0067C77B    mov         dword ptr [ebp-44],eax
 0067C77E    cmp         dword ptr [ebp-44],0
>0067C782    jle         0067C78C
 0067C784    mov         eax,dword ptr [ebp-44]
 0067C787    mov         dword ptr [ebp-48],eax
>0067C78A    jmp         0067C791
 0067C78C    xor         eax,eax
 0067C78E    mov         dword ptr [ebp-48],eax
 0067C791    mov         eax,dword ptr [ebp-48]
 0067C794    cmp         eax,0FF
>0067C799    jbe         0067C7A0
 0067C79B    call        @BoundErr
 0067C7A0    mov         byte ptr [ebp-14E],al
 0067C7A6    movzx       eax,word ptr [ebx+12]
 0067C7AA    sub         eax,3E8
>0067C7AF    jno         0067C7B6
 0067C7B1    call        @IntOver
 0067C7B6    mov         edi,0A
 0067C7BB    cdq
 0067C7BC    idiv        eax,edi
 0067C7BE    mov         dword ptr [ebp-4C],eax
 0067C7C1    cmp         dword ptr [ebp-4C],0
>0067C7C5    jle         0067C7CF
 0067C7C7    mov         eax,dword ptr [ebp-4C]
 0067C7CA    mov         dword ptr [ebp-50],eax
>0067C7CD    jmp         0067C7D4
 0067C7CF    xor         eax,eax
 0067C7D1    mov         dword ptr [ebp-50],eax
 0067C7D4    mov         eax,dword ptr [ebp-50]
 0067C7D7    cmp         eax,0FF
>0067C7DC    jbe         0067C7E3
 0067C7DE    call        @BoundErr
 0067C7E3    mov         byte ptr [ebp-14D],al
 0067C7E9    movzx       eax,word ptr [ebx+14]
 0067C7ED    sub         eax,3E8
>0067C7F2    jno         0067C7F9
 0067C7F4    call        @IntOver
 0067C7F9    mov         edi,0A
 0067C7FE    cdq
 0067C7FF    idiv        eax,edi
 0067C801    mov         dword ptr [ebp-54],eax
 0067C804    cmp         dword ptr [ebp-54],0
>0067C808    jle         0067C812
 0067C80A    mov         eax,dword ptr [ebp-54]
 0067C80D    mov         dword ptr [ebp-58],eax
>0067C810    jmp         0067C817
 0067C812    xor         eax,eax
 0067C814    mov         dword ptr [ebp-58],eax
 0067C817    mov         eax,dword ptr [ebp-58]
 0067C81A    cmp         eax,0FF
>0067C81F    jbe         0067C826
 0067C821    call        @BoundErr
 0067C826    mov         byte ptr [ebp-14C],al
>0067C82C    jmp         0067C8EB
 0067C831    movzx       eax,byte ptr [ebx+0A]
 0067C835    cmp         eax,1C
>0067C838    jbe         0067C83F
 0067C83A    call        @BoundErr
 0067C83F    movzx       eax,byte ptr [eax+7C14C8]
 0067C846    mov         byte ptr [ebp-151],al
 0067C84C    movzx       eax,word ptr [ebx+0C]
 0067C850    cmp         eax,0FF
>0067C855    jbe         0067C85C
 0067C857    call        @BoundErr
 0067C85C    mov         byte ptr [ebp-150],al
 0067C862    movzx       eax,word ptr [ebx+10]
 0067C866    cmp         eax,0FF
>0067C86B    jbe         0067C872
 0067C86D    call        @BoundErr
 0067C872    mov         byte ptr [ebp-14F],al
 0067C878    movzx       eax,word ptr [ebx+0E]
 0067C87C    cmp         eax,0FF
>0067C881    jbe         0067C888
 0067C883    call        @BoundErr
 0067C888    mov         byte ptr [ebp-14E],al
 0067C88E    movzx       eax,word ptr [ebx+12]
 0067C892    cmp         eax,0FF
>0067C897    jbe         0067C89E
 0067C899    call        @BoundErr
 0067C89E    mov         byte ptr [ebp-14D],al
 0067C8A4    mov         byte ptr [ebp-14C],0
>0067C8AB    jmp         0067C8EB
 0067C8AD    movzx       eax,byte ptr [ebx+0A]
 0067C8B1    cmp         eax,1
>0067C8B4    jbe         0067C8BB
 0067C8B6    call        @BoundErr
 0067C8BB    movzx       eax,byte ptr [eax+7C1610]
 0067C8C2    mov         byte ptr [ebp-151],al
 0067C8C8    mov         byte ptr [ebp-150],0
 0067C8CF    mov         byte ptr [ebp-14F],0
 0067C8D6    mov         byte ptr [ebp-14E],0
 0067C8DD    mov         byte ptr [ebp-14D],0
 0067C8E4    mov         byte ptr [ebp-14C],0
 0067C8EB    mov         eax,esi
 0067C8ED    cmp         eax,6
>0067C8F0    ja          0067C966
 0067C8F2    jmp         dword ptr [eax*4+67C8F9]
 0067C8F2    dd          0067C966
 0067C8F2    dd          0067C921
 0067C8F2    dd          0067C92A
 0067C8F2    dd          0067C936
 0067C8F2    dd          0067C915
 0067C8F2    dd          0067C936
 0067C8F2    dd          0067C915
 0067C915    movzx       eax,byte ptr [ebx+0B]
 0067C919    mov         byte ptr [ebp-14B],al
>0067C91F    jmp         0067C966
 0067C921    mov         byte ptr [ebp-14B],0
>0067C928    jmp         0067C966
 0067C92A    movzx       eax,byte ptr [ebx+1B]
 0067C92E    mov         byte ptr [ebp-14B],al
>0067C934    jmp         0067C966
 0067C936    cmp         byte ptr [ebx+0B],4
>0067C93A    jne         0067C94B
 0067C93C    movzx       eax,byte ptr ds:[7C13FE];0x102 gvar_007C13FE
 0067C943    mov         byte ptr [ebp-14B],al
>0067C949    jmp         0067C966
 0067C94B    movzx       eax,byte ptr [ebx+0B]
 0067C94F    cmp         eax,4
>0067C952    jbe         0067C959
 0067C954    call        @BoundErr
 0067C959    movzx       eax,byte ptr [eax+7C13FC]
 0067C960    mov         byte ptr [ebp-14B],al
 0067C966    mov         eax,esi
 0067C968    cmp         eax,6
>0067C96B    ja          0067CA44
 0067C971    jmp         dword ptr [eax*4+67C978]
 0067C971    dd          0067CA44
 0067C971    dd          0067C9E6
 0067C971    dd          0067CA2F
 0067C971    dd          0067CA07
 0067C971    dd          0067C994
 0067C971    dd          0067CA07
 0067C971    dd          0067C994
 0067C994    cmp         byte ptr [ebx+0B],1
>0067C998    jne         0067C9AA
 0067C99A    movzx       eax,byte ptr [ebx+0A]
 0067C99E    movzx       eax,al
 0067C9A1    bt          dword ptr ds:[7C2760],eax;gvar_007C2760
>0067C9A8    jb          0067C9CB
 0067C9AA    cmp         byte ptr [ebx+0B],1
>0067C9AE    jne         0067C9BF
 0067C9B0    movzx       eax,byte ptr [ebx+0A]
 0067C9B4    add         al,0D8
 0067C9B6    sub         al,2
>0067C9B8    jb          0067C9CB
 0067C9BA    dec         eax
 0067C9BB    sub         al,2
>0067C9BD    jb          0067C9CB
 0067C9BF    cmp         byte ptr [ebx+0B],0
>0067C9C3    jne         0067C9CF
 0067C9C5    cmp         byte ptr [ebx+0A],5
>0067C9C9    jne         0067C9CF
 0067C9CB    xor         ecx,ecx
>0067C9CD    jmp         0067CA44
 0067C9CF    movzx       eax,byte ptr [ebx+16]
 0067C9D3    dec         eax
 0067C9D4    sub         al,2
>0067C9D6    jb          0067C9DC
 0067C9D8    dec         al
>0067C9DA    jne         0067C9E2
 0067C9DC    movzx       ecx,byte ptr [ebx+16]
>0067C9E0    jmp         0067CA44
 0067C9E2    xor         ecx,ecx
>0067C9E4    jmp         0067CA44
 0067C9E6    cmp         byte ptr [ebx+0A],5
>0067C9EA    jne         0067C9F0
 0067C9EC    xor         ecx,ecx
>0067C9EE    jmp         0067CA44
 0067C9F0    movzx       eax,byte ptr [ebx+16]
 0067C9F4    dec         eax
 0067C9F5    sub         al,2
>0067C9F7    jb          0067C9FD
 0067C9F9    dec         al
>0067C9FB    jne         0067CA03
 0067C9FD    movzx       ecx,byte ptr [ebx+16]
>0067CA01    jmp         0067CA44
 0067CA03    xor         ecx,ecx
>0067CA05    jmp         0067CA44
 0067CA07    movzx       eax,byte ptr [ebx+0A]
 0067CA0B    dec         eax
 0067CA0C    sub         al,13
>0067CA0E    jb          0067CA14
 0067CA10    sub         al,8
>0067CA12    jne         0067CA2B
 0067CA14    movzx       eax,byte ptr [ebx+16]
 0067CA18    dec         eax
 0067CA19    sub         al,2
>0067CA1B    jb          0067CA21
 0067CA1D    dec         al
>0067CA1F    jne         0067CA27
 0067CA21    movzx       ecx,byte ptr [ebx+16]
>0067CA25    jmp         0067CA44
 0067CA27    xor         ecx,ecx
>0067CA29    jmp         0067CA44
 0067CA2B    xor         ecx,ecx
>0067CA2D    jmp         0067CA44
 0067CA2F    movzx       eax,byte ptr [ebx+16]
 0067CA33    dec         eax
 0067CA34    sub         al,2
>0067CA36    jb          0067CA3C
 0067CA38    dec         al
>0067CA3A    jne         0067CA42
 0067CA3C    movzx       ecx,byte ptr [ebx+16]
>0067CA40    jmp         0067CA44
 0067CA42    xor         ecx,ecx
 0067CA44    mov         byte ptr [ebp-14A],cl
 0067CA4A    xor         ecx,ecx
 0067CA4C    mov         eax,esi
 0067CA4E    cmp         eax,6
>0067CA51    ja          0067CBC2
 0067CA57    jmp         dword ptr [eax*4+67CA5E]
 0067CA57    dd          0067CBC2
 0067CA57    dd          0067CB58
 0067CA57    dd          0067CBC2
 0067CA57    dd          0067CB89
 0067CA57    dd          0067CA7A
 0067CA57    dd          0067CB89
 0067CA57    dd          0067CA7A
 0067CA7A    cmp         byte ptr [ebx+0B],1
>0067CA7E    jne         0067CACE
 0067CA80    movzx       eax,byte ptr [ebx+0A]
 0067CA84    add         al,0D8
 0067CA86    sub         al,2
>0067CA88    jb          0067CA8F
 0067CA8A    dec         eax
 0067CA8B    sub         al,2
>0067CA8D    jae         0067CACE
 0067CA8F    movzx       eax,byte ptr [ebx+16]
 0067CA93    cmp         eax,3
>0067CA96    jg          0067CAA6
>0067CA98    je          0067CAC4
 0067CA9A    sub         eax,1
>0067CA9D    jb          0067CAB8
>0067CA9F    je          0067CABC
 0067CAA1    dec         eax
>0067CAA2    je          0067CAC0
>0067CAA4    jmp         0067CACE
 0067CAA6    add         eax,0FFFFFF9B
 0067CAA9    sub         eax,21
>0067CAAC    jb          0067CAC8
 0067CAAE    add         eax,0FFFFFFBD
 0067CAB1    sub         eax,21
>0067CAB4    jb          0067CACC
>0067CAB6    jmp         0067CACE
 0067CAB8    xor         ecx,ecx
>0067CABA    jmp         0067CACE
 0067CABC    mov         cl,1
>0067CABE    jmp         0067CACE
 0067CAC0    mov         cl,2
>0067CAC2    jmp         0067CACE
 0067CAC4    xor         ecx,ecx
>0067CAC6    jmp         0067CACE
 0067CAC8    xor         ecx,ecx
>0067CACA    jmp         0067CACE
 0067CACC    mov         cl,2
 0067CACE    cmp         byte ptr [ebx+0B],1
>0067CAD2    jne         0067CAFE
 0067CAD4    movzx       eax,byte ptr [ebx+0A]
 0067CAD8    movzx       eax,al
 0067CADB    bt          dword ptr ds:[7C2760],eax;gvar_007C2760
>0067CAE2    jae         0067CAFE
 0067CAE4    movzx       eax,byte ptr [ebx+16]
 0067CAE8    sub         al,1
>0067CAEA    jb          0067CAF4
>0067CAEC    je          0067CAF8
 0067CAEE    dec         al
>0067CAF0    je          0067CAFC
>0067CAF2    jmp         0067CAFE
 0067CAF4    xor         ecx,ecx
>0067CAF6    jmp         0067CAFE
 0067CAF8    mov         cl,1
>0067CAFA    jmp         0067CAFE
 0067CAFC    mov         cl,2
 0067CAFE    cmp         byte ptr [ebx+0B],1
>0067CB02    jne         0067CB1C
 0067CB04    movzx       eax,byte ptr [ebx+0A]
 0067CB08    movzx       eax,al
 0067CB0B    bt          dword ptr ds:[7C2740],eax;gvar_007C2740:Word
>0067CB12    jae         0067CB1C
 0067CB14    cmp         byte ptr [ebx+21],0
>0067CB18    je          0067CB1C
 0067CB1A    mov         cl,1
 0067CB1C    cmp         byte ptr [ebx+0B],0
>0067CB20    jne         0067CB42
 0067CB22    cmp         byte ptr [ebx+0A],5
>0067CB26    jne         0067CB42
 0067CB28    movzx       eax,byte ptr [ebx+16]
 0067CB2C    sub         al,1
>0067CB2E    jb          0067CB38
>0067CB30    je          0067CB3C
 0067CB32    dec         al
>0067CB34    je          0067CB40
>0067CB36    jmp         0067CB42
 0067CB38    xor         ecx,ecx
>0067CB3A    jmp         0067CB42
 0067CB3C    mov         cl,1
>0067CB3E    jmp         0067CB42
 0067CB40    mov         cl,2
 0067CB42    cmp         byte ptr [ebx+0B],0
>0067CB46    jne         0067CBC2
 0067CB48    cmp         byte ptr [ebx+0A],4
>0067CB4C    jne         0067CBC2
 0067CB4E    cmp         byte ptr [ebx+21],0
>0067CB52    je          0067CBC2
 0067CB54    mov         cl,1
>0067CB56    jmp         0067CBC2
 0067CB58    movzx       eax,byte ptr [ebx+0A]
 0067CB5C    cmp         al,5
>0067CB5E    jne         0067CB7B
 0067CB60    movzx       edx,byte ptr [ebx+16]
 0067CB64    sub         dl,1
>0067CB67    jb          0067CB71
>0067CB69    je          0067CB75
 0067CB6B    dec         dl
>0067CB6D    je          0067CB79
>0067CB6F    jmp         0067CB7B
 0067CB71    xor         ecx,ecx
>0067CB73    jmp         0067CB7B
 0067CB75    mov         cl,1
>0067CB77    jmp         0067CB7B
 0067CB79    mov         cl,2
 0067CB7B    cmp         al,4
>0067CB7D    jne         0067CBC2
 0067CB7F    cmp         byte ptr [ebx+21],0
>0067CB83    je          0067CBC2
 0067CB85    mov         cl,1
>0067CB87    jmp         0067CBC2
 0067CB89    movzx       eax,byte ptr [ebx+0A]
 0067CB8D    add         al,0EC
 0067CB8F    sub         al,4
>0067CB91    jb          0067CB9A
 0067CB93    dec         eax
 0067CB94    sub         al,3
>0067CB96    jb          0067CBA0
>0067CB98    jmp         0067CBC2
 0067CB9A    movzx       ecx,byte ptr [ebx+16]
>0067CB9E    jmp         0067CBC2
 0067CBA0    movzx       eax,byte ptr [ebx+16]
 0067CBA4    add         al,9B
 0067CBA6    sub         al,0F
>0067CBA8    jb          0067CBB8
 0067CBAA    add         al,0DD
 0067CBAC    sub         al,0F
>0067CBAE    jb          0067CBBC
 0067CBB0    add         al,0DD
 0067CBB2    sub         al,0F
>0067CBB4    jb          0067CBC0
>0067CBB6    jmp         0067CBC2
 0067CBB8    xor         ecx,ecx
>0067CBBA    jmp         0067CBC2
 0067CBBC    mov         cl,1
>0067CBBE    jmp         0067CBC2
 0067CBC0    mov         cl,2
 0067CBC2    movzx       eax,byte ptr [ebx+19]
 0067CBC6    dec         al
>0067CBC8    je          0067CBD0
 0067CBCA    dec         al
>0067CBCC    je          0067CBD5
>0067CBCE    jmp         0067CBD8
 0067CBD0    or          cl,4
>0067CBD3    jmp         0067CBD8
 0067CBD5    or          cl,8
 0067CBD8    movzx       eax,byte ptr [ebx+1A]
 0067CBDC    dec         al
>0067CBDE    je          0067CBE2
>0067CBE0    jmp         0067CBE5
 0067CBE2    or          cl,10
 0067CBE5    mov         eax,esi
 0067CBE7    cmp         eax,6
>0067CBEA    ja          0067CC45
 0067CBEC    jmp         dword ptr [eax*4+67CBF3]
 0067CBEC    dd          0067CC45
 0067CBEC    dd          0067CC2C
 0067CBEC    dd          0067CC42
 0067CBEC    dd          0067CC37
 0067CBEC    dd          0067CC0F
 0067CBEC    dd          0067CC37
 0067CBEC    dd          0067CC0F
 0067CC0F    cmp         byte ptr [ebx+0B],1
>0067CC13    jne         0067CC1B
 0067CC15    cmp         byte ptr [ebx+0A],21
>0067CC19    jne         0067CC27
 0067CC1B    cmp         byte ptr [ebx+0B],0
>0067CC1F    jne         0067CC45
 0067CC21    cmp         byte ptr [ebx+0A],0C
>0067CC25    je          0067CC45
 0067CC27    or          cl,20
>0067CC2A    jmp         0067CC45
 0067CC2C    cmp         byte ptr [ebx+0A],0C
>0067CC30    je          0067CC45
 0067CC32    or          cl,20
>0067CC35    jmp         0067CC45
 0067CC37    cmp         byte ptr [ebx+0A],18
>0067CC3B    je          0067CC45
 0067CC3D    or          cl,20
>0067CC40    jmp         0067CC45
 0067CC42    or          cl,20
 0067CC45    cmp         esi,3
>0067CC48    je          0067CC4F
 0067CC4A    cmp         esi,5
>0067CC4D    jne         0067CC5B
 0067CC4F    movzx       eax,byte ptr [ebx+0B]
 0067CC53    dec         eax
 0067CC54    sub         al,4
>0067CC56    jae         0067CC5B
 0067CC58    or          cl,40
 0067CC5B    mov         byte ptr [ebp-149],cl
 0067CC61    mov         eax,esi
 0067CC63    cmp         eax,6
>0067CC66    ja          0067CCB6
 0067CC68    jmp         dword ptr [eax*4+67CC6F]
 0067CC68    dd          0067CCB6
 0067CC68    dd          0067CC97
 0067CC68    dd          0067CCAF
 0067CC68    dd          0067CCA3
 0067CC68    dd          0067CC8B
 0067CC68    dd          0067CCA3
 0067CC68    dd          0067CC8B
 0067CC8B    movzx       eax,byte ptr [ebx+17]
 0067CC8F    mov         byte ptr [ebp-148],al
>0067CC95    jmp         0067CCB6
 0067CC97    movzx       eax,byte ptr [ebx+17]
 0067CC9B    mov         byte ptr [ebp-148],al
>0067CCA1    jmp         0067CCB6
 0067CCA3    movzx       eax,byte ptr [ebx+17]
 0067CCA7    mov         byte ptr [ebp-148],al
>0067CCAD    jmp         0067CCB6
 0067CCAF    mov         byte ptr [ebp-148],0
 0067CCB6    movzx       eax,byte ptr [ebx+18]
 0067CCBA    mov         byte ptr [ebp-147],al
 0067CCC0    mov         eax,esi
 0067CCC2    cmp         eax,6
>0067CCC5    ja          0067CE5C
 0067CCCB    jmp         dword ptr [eax*4+67CCD2]
 0067CCCB    dd          0067CE5C
 0067CCCB    dd          0067CD77
 0067CCCB    dd          0067CE3B
 0067CCCB    dd          0067CDDF
 0067CCCB    dd          0067CCEE
 0067CCCB    dd          0067CDDF
 0067CCCB    dd          0067CCEE
 0067CCEE    cmp         byte ptr [ebx+0B],1
>0067CCF2    jne         0067CD24
 0067CCF4    movzx       eax,byte ptr [ebx+0A]
 0067CCF8    movzx       eax,al
 0067CCFB    bt          dword ptr ds:[7C2740],eax;gvar_007C2740:Word
>0067CD02    jae         0067CD24
 0067CD04    movzx       eax,byte ptr [ebx+1E]
 0067CD08    cmp         eax,20
>0067CD0B    jbe         0067CD12
 0067CD0D    call        @BoundErr
 0067CD12    movzx       eax,byte ptr [eax+7C1A21]
 0067CD19    mov         byte ptr [ebp-146],al
>0067CD1F    jmp         0067CE5C
 0067CD24    cmp         byte ptr [ebx+0B],0
>0067CD28    jne         0067CD50
 0067CD2A    cmp         byte ptr [ebx+0A],4
>0067CD2E    jne         0067CD50
 0067CD30    movzx       eax,byte ptr [ebx+1E]
 0067CD34    cmp         eax,20
>0067CD37    jbe         0067CD3E
 0067CD39    call        @BoundErr
 0067CD3E    movzx       eax,byte ptr [eax+7C1A21]
 0067CD45    mov         byte ptr [ebp-146],al
>0067CD4B    jmp         0067CE5C
 0067CD50    cmp         byte ptr [ebx+0B],0
>0067CD54    jne         0067CD68
 0067CD56    cmp         byte ptr [ebx+0A],0F
>0067CD5A    jne         0067CD68
 0067CD5C    mov         byte ptr [ebp-146],3
>0067CD63    jmp         0067CE5C
 0067CD68    movzx       eax,byte ptr [ebx+1E]
 0067CD6C    mov         byte ptr [ebp-146],al
>0067CD72    jmp         0067CE5C
 0067CD77    movzx       eax,byte ptr [ebx+0A]
 0067CD7B    sub         al,4
>0067CD7D    je          0067CD93
 0067CD7F    dec         al
>0067CD81    je          0067CDB3
 0067CD83    sub         al,0A
>0067CD85    jne         0067CDD3
 0067CD87    mov         byte ptr [ebp-146],3
>0067CD8E    jmp         0067CE5C
 0067CD93    movzx       eax,byte ptr [ebx+0B]
 0067CD97    cmp         eax,21
>0067CD9A    jbe         0067CDA1
 0067CD9C    call        @BoundErr
 0067CDA1    movzx       eax,byte ptr [eax+7C23A8];gvar_007C23A8
 0067CDA8    mov         byte ptr [ebp-146],al
>0067CDAE    jmp         0067CE5C
 0067CDB3    movzx       eax,byte ptr [ebx+0B]
 0067CDB7    cmp         eax,18
>0067CDBA    jbe         0067CDC1
 0067CDBC    call        @BoundErr
 0067CDC1    movzx       eax,byte ptr [eax+7C1694]
 0067CDC8    mov         byte ptr [ebp-146],al
>0067CDCE    jmp         0067CE5C
 0067CDD3    movzx       eax,byte ptr [ebx+0B]
 0067CDD7    mov         byte ptr [ebp-146],al
>0067CDDD    jmp         0067CE5C
 0067CDDF    movzx       eax,byte ptr [ebx+0A]
 0067CDE3    sub         al,0A
>0067CDE5    je          0067CE1E
 0067CDE7    dec         al
>0067CDE9    je          0067CDF2
 0067CDEB    dec         eax
 0067CDEC    sub         al,8
>0067CDEE    jb          0067CE01
>0067CDF0    jmp         0067CE5C
 0067CDF2    movzx       eax,byte ptr ds:[7C23A9];0x4030201 gvar_007C23A9
 0067CDF9    mov         byte ptr [ebp-146],al
>0067CDFF    jmp         0067CE5C
 0067CE01    movzx       eax,byte ptr [ebx+1E]
 0067CE05    cmp         eax,21
>0067CE08    jbe         0067CE0F
 0067CE0A    call        @BoundErr
 0067CE0F    movzx       eax,byte ptr [eax+7C23A8];gvar_007C23A8
 0067CE16    mov         byte ptr [ebp-146],al
>0067CE1C    jmp         0067CE5C
 0067CE1E    movzx       eax,byte ptr [ebx+1E]
 0067CE22    cmp         eax,3
>0067CE25    jbe         0067CE2C
 0067CE27    call        @BoundErr
 0067CE2C    movzx       eax,byte ptr [eax+7C2464]
 0067CE33    mov         byte ptr [ebp-146],al
>0067CE39    jmp         0067CE5C
 0067CE3B    cmp         byte ptr [ebx+0A],1
>0067CE3F    jne         0067CE5C
 0067CE41    movzx       eax,byte ptr [ebx+0B]
 0067CE45    cmp         eax,21
>0067CE48    jbe         0067CE4F
 0067CE4A    call        @BoundErr
 0067CE4F    movzx       eax,byte ptr [eax+7C23A8];gvar_007C23A8
 0067CE56    mov         byte ptr [ebp-146],al
 0067CE5C    movzx       eax,byte ptr [ebp-3]
 0067CE60    sub         al,1
>0067CE62    jb          0067CE6D
 0067CE64    sub         al,2
>0067CE66    je          0067CEAC
>0067CE68    jmp         0067CF48
 0067CE6D    movzx       eax,word ptr [ebx+6]
 0067CE71    and         ax,0FF
 0067CE75    movzx       eax,ax
 0067CE78    cmp         eax,0FF
>0067CE7D    jbe         0067CE84
 0067CE7F    call        @BoundErr
 0067CE84    mov         byte ptr [ebp-145],al
 0067CE8A    movzx       eax,word ptr [ebx+8]
 0067CE8E    and         ax,0FF
 0067CE92    movzx       eax,ax
 0067CE95    cmp         eax,0FF
>0067CE9A    jbe         0067CEA1
 0067CE9C    call        @BoundErr
 0067CEA1    mov         byte ptr [ebp-144],al
>0067CEA7    jmp         0067CF48
 0067CEAC    movzx       eax,word ptr [ebx+6]
 0067CEB0    mov         edx,eax
 0067CEB2    shr         edx,8
 0067CEB5    cmp         edx,0FF
>0067CEBB    jbe         0067CEC2
 0067CEBD    call        @BoundErr
 0067CEC2    mov         byte ptr [ebp-13E],dl
 0067CEC8    and         eax,0FF
 0067CECD    cmp         eax,0FF
>0067CED2    jbe         0067CED9
 0067CED4    call        @BoundErr
 0067CED9    mov         byte ptr [ebp-13D],al
 0067CEDF    movzx       eax,word ptr [ebx+8]
 0067CEE3    mov         edx,eax
 0067CEE5    shr         edx,8
 0067CEE8    cmp         edx,0FF
>0067CEEE    jbe         0067CEF5
 0067CEF0    call        @BoundErr
 0067CEF5    mov         byte ptr [ebp-13C],dl
 0067CEFB    and         eax,0FF
 0067CF00    cmp         eax,0FF
>0067CF05    jbe         0067CF0C
 0067CF07    call        @BoundErr
 0067CF0C    mov         byte ptr [ebp-13B],al
 0067CF12    movzx       eax,word ptr [ebx+0D2]
 0067CF19    mov         edx,eax
 0067CF1B    shr         edx,8
 0067CF1E    cmp         edx,0FF
>0067CF24    jbe         0067CF2B
 0067CF26    call        @BoundErr
 0067CF2B    mov         byte ptr [ebp-138],dl
 0067CF31    and         eax,0FF
 0067CF36    cmp         eax,0FF
>0067CF3B    jbe         0067CF42
 0067CF3D    call        @BoundErr
 0067CF42    mov         byte ptr [ebp-137],al
 0067CF48    movzx       eax,byte ptr [ebp-3]
 0067CF4C    sub         al,1
>0067CF4E    jb          0067CF5D
 0067CF50    sub         al,2
>0067CF52    je          0067CFDD
>0067CF58    jmp         0067D051
 0067CF5D    mov         eax,esi
 0067CF5F    cmp         eax,6
>0067CF62    ja          0067D051
 0067CF68    jmp         dword ptr [eax*4+67CF6F]
 0067CF68    dd          0067D051
 0067CF68    dd          0067CFAB
 0067CF68    dd          0067CFD4
 0067CF68    dd          0067CFB7
 0067CF68    dd          0067CF8B
 0067CF68    dd          0067CFB7
 0067CF68    dd          0067CF8B
 0067CF8B    movzx       eax,byte ptr [ebx+1F]
 0067CF8F    cmp         eax,19
>0067CF92    jbe         0067CF99
 0067CF94    call        @BoundErr
 0067CF99    movzx       eax,byte ptr [eax+7C24FC]
 0067CFA0    mov         byte ptr [ebp-143],al
>0067CFA6    jmp         0067D051
 0067CFAB    mov         byte ptr [ebp-143],0
>0067CFB2    jmp         0067D051
 0067CFB7    movzx       eax,byte ptr [ebx+1F]
 0067CFBB    cmp         eax,19
>0067CFBE    jbe         0067CFC5
 0067CFC0    call        @BoundErr
 0067CFC5    movzx       eax,byte ptr [eax+7C24FC]
 0067CFCC    mov         byte ptr [ebp-143],al
>0067CFD2    jmp         0067D051
 0067CFD4    mov         byte ptr [ebp-143],0
>0067CFDB    jmp         0067D051
 0067CFDD    mov         eax,esi
 0067CFDF    cmp         eax,6
>0067CFE2    ja          0067D051
 0067CFE4    jmp         dword ptr [eax*4+67CFEB]
 0067CFE4    dd          0067D051
 0067CFE4    dd          0067D024
 0067CFE4    dd          0067D04A
 0067CFE4    dd          0067D02D
 0067CFE4    dd          0067D007
 0067CFE4    dd          0067D02D
 0067CFE4    dd          0067D007
 0067D007    movzx       eax,byte ptr [ebx+1F]
 0067D00B    cmp         eax,19
>0067D00E    jbe         0067D015
 0067D010    call        @BoundErr
 0067D015    movzx       eax,byte ptr [eax+7C24FC]
 0067D01C    mov         byte ptr [ebp-145],al
>0067D022    jmp         0067D051
 0067D024    mov         byte ptr [ebp-145],0
>0067D02B    jmp         0067D051
 0067D02D    movzx       eax,byte ptr [ebx+1F]
 0067D031    cmp         eax,19
>0067D034    jbe         0067D03B
 0067D036    call        @BoundErr
 0067D03B    movzx       eax,byte ptr [eax+7C24FC]
 0067D042    mov         byte ptr [ebp-145],al
>0067D048    jmp         0067D051
 0067D04A    mov         byte ptr [ebp-145],0
 0067D051    movzx       eax,byte ptr [ebp-3]
 0067D055    sub         al,1
>0067D057    jb          0067D062
 0067D059    sub         al,2
>0067D05B    je          0067D0A4
>0067D05D    jmp         0067D0F8
 0067D062    movzx       eax,byte ptr [ebx+28]
 0067D066    cmp         al,1
>0067D068    jne         0067D076
 0067D06A    mov         byte ptr [ebp-142],1
>0067D071    jmp         0067D0F8
 0067D076    cmp         al,2
>0067D078    jne         0067D083
 0067D07A    mov         byte ptr [ebp-123],8
>0067D081    jmp         0067D0F8
 0067D083    lea         edx,[ebp-142]
 0067D089    lea         eax,[ebx+2A]
 0067D08C    mov         ecx,1F
 0067D091    call        Move
 0067D096    movzx       eax,byte ptr [ebx+49]
 0067D09A    and         al,7
 0067D09C    mov         byte ptr [ebp-123],al
>0067D0A2    jmp         0067D0F8
 0067D0A4    movzx       eax,word ptr [ebx+24]
 0067D0A8    cmp         ax,0FFFF
>0067D0AC    jne         0067D0BE
 0067D0AE    mov         byte ptr [ebp-13A],0FF
 0067D0B5    mov         byte ptr [ebp-139],0FF
>0067D0BC    jmp         0067D0F2
 0067D0BE    movzx       edx,ax
 0067D0C1    mov         ecx,edx
 0067D0C3    shr         ecx,8
 0067D0C6    cmp         ecx,0FF
>0067D0CC    jbe         0067D0D3
 0067D0CE    call        @BoundErr
 0067D0D3    mov         byte ptr [ebp-13A],cl
 0067D0D9    and         edx,0FF
 0067D0DF    cmp         edx,0FF
>0067D0E5    jbe         0067D0EC
 0067D0E7    call        @BoundErr
 0067D0EC    mov         byte ptr [ebp-139],dl
 0067D0F2    mov         word ptr [ebx+24],0
 0067D0F8    cmp         word ptr [ebp+10],4
>0067D0FD    jb          0067D4B1
 0067D103    xor         ecx,ecx
 0067D105    cmp         byte ptr [ebx+19],3
>0067D109    jne         0067D10E
 0067D10B    or          cl,1
 0067D10E    cmp         byte ptr [ebx+1A],2
>0067D112    jne         0067D117
 0067D114    or          cl,2
 0067D117    cmp         word ptr [ebp+10],6
>0067D11C    jb          0067D127
 0067D11E    cmp         byte ptr [ebx+22],0
>0067D122    je          0067D127
 0067D124    or          cl,4
 0067D127    cmp         word ptr [ebp+10],20
>0067D12C    jb          0067D14B
 0067D12E    cmp         esi,3
>0067D131    je          0067D138
 0067D133    cmp         esi,5
>0067D136    jne         0067D14B
 0067D138    movzx       eax,byte ptr [ebx+0A]
 0067D13C    movzx       eax,al
 0067D13F    bt          dword ptr ds:[7C26A0],eax;gvar_007C26A0
>0067D146    jae         0067D14B
 0067D148    or          cl,8
 0067D14B    cmp         word ptr [ebp+10],41
>0067D150    jb          0067D16F
 0067D152    cmp         esi,4
>0067D155    je          0067D15C
 0067D157    cmp         esi,6
>0067D15A    jne         0067D16F
 0067D15C    movzx       eax,byte ptr [ebx+0A]
 0067D160    movzx       eax,al
 0067D163    bt          dword ptr ds:[7C27C0],eax;gvar_007C27C0
>0067D16A    jae         0067D16F
 0067D16C    or          cl,8
 0067D16F    cmp         word ptr [ebp+10],8
>0067D174    jb          0067D17D
 0067D176    cmp         word ptr [ebp+10],8
>0067D17B    jbe         0067D18B
 0067D17D    cmp         word ptr [ebp+10],21
>0067D182    jb          0067D1AA
 0067D184    cmp         word ptr [ebp+10],48
>0067D189    ja          0067D1AA
 0067D18B    cmp         esi,3
>0067D18E    je          0067D195
 0067D190    cmp         esi,5
>0067D193    jne         0067D1AA
 0067D195    cmp         byte ptr [ebx+0B],4
>0067D199    je          0067D1A7
 0067D19B    cmp         byte ptr [ebx+0A],0A
>0067D19F    jne         0067D1AA
 0067D1A1    cmp         byte ptr [ebx+1E],3
>0067D1A5    jne         0067D1AA
 0067D1A7    or          cl,10
 0067D1AA    movzx       eax,byte ptr [ebp-3]
 0067D1AE    sub         al,1
>0067D1B0    jb          0067D1B8
 0067D1B2    sub         al,2
>0067D1B4    je          0067D1C0
>0067D1B6    jmp         0067D1C6
 0067D1B8    mov         byte ptr [ebp-122],cl
>0067D1BE    jmp         0067D1C6
 0067D1C0    mov         byte ptr [ebp-144],cl
 0067D1C6    mov         eax,esi
 0067D1C8    cmp         eax,6
>0067D1CB    ja          0067D200
 0067D1CD    jmp         dword ptr [eax*4+67D1D4]
 0067D1CD    dd          0067D200
 0067D1CD    dd          0067D1F0
 0067D1CD    dd          0067D1F8
 0067D1CD    dd          0067D1F4
 0067D1CD    dd          0067D1FC
 0067D1CD    dd          0067D1F4
 0067D1CD    dd          0067D1FC
 0067D1F0    mov         cl,1
>0067D1F2    jmp         0067D202
 0067D1F4    mov         cl,2
>0067D1F6    jmp         0067D202
 0067D1F8    mov         cl,3
>0067D1FA    jmp         0067D202
 0067D1FC    mov         cl,4
>0067D1FE    jmp         0067D202
 0067D200    xor         ecx,ecx
 0067D202    movzx       eax,byte ptr [ebp-3]
 0067D206    sub         al,1
>0067D208    jb          0067D210
 0067D20A    sub         al,2
>0067D20C    je          0067D218
>0067D20E    jmp         0067D21E
 0067D210    mov         byte ptr [ebp-121],cl
>0067D216    jmp         0067D21E
 0067D218    mov         byte ptr [ebp-143],cl
 0067D21E    cmp         esi,4
>0067D221    je          0067D228
 0067D223    cmp         esi,6
>0067D226    jne         0067D27D
 0067D228    cmp         byte ptr [ebx+0B],1
>0067D22C    jne         0067D27D
 0067D22E    movzx       eax,byte ptr [ebp-3]
 0067D232    sub         al,1
>0067D234    jb          0067D23C
 0067D236    sub         al,2
>0067D238    je          0067D245
>0067D23A    jmp         0067D27D
 0067D23C    mov         byte ptr [ebp-120],0FF
>0067D243    jmp         0067D27D
 0067D245    movzx       eax,byte ptr [ebx+0D8]
 0067D24C    dec         eax
 0067D24D    sub         al,8
>0067D24F    jae         0067D276
 0067D251    movzx       eax,byte ptr [ebx+0D8]
 0067D258    sub         eax,1
>0067D25B    jno         0067D262
 0067D25D    call        @IntOver
 0067D262    cmp         eax,0FF
>0067D267    jbe         0067D26E
 0067D269    call        @BoundErr
 0067D26E    mov         byte ptr [ebp-142],al
>0067D274    jmp         0067D27D
 0067D276    mov         byte ptr [ebp-142],0FF
 0067D27D    cmp         esi,4
>0067D280    je          0067D28B
 0067D282    cmp         esi,6
>0067D285    jne         0067D393
 0067D28B    cmp         byte ptr [ebx+0B],1
>0067D28F    jne         0067D393
 0067D295    movzx       eax,byte ptr [ebx+0A]
 0067D299    add         al,0D8
 0067D29B    sub         al,2
>0067D29D    jb          0067D2A8
 0067D29F    dec         eax
 0067D2A0    sub         al,2
>0067D2A2    jae         0067D393
 0067D2A8    movzx       eax,byte ptr [ebx+16]
 0067D2AC    mov         edx,eax
 0067D2AE    sub         dl,3
>0067D2B1    jb          0067D2C7
>0067D2B3    je          0067D2CB
 0067D2B5    add         dl,9E
 0067D2B8    sub         dl,21
>0067D2BB    jb          0067D2CF
 0067D2BD    add         dl,0BD
 0067D2C0    sub         dl,21
>0067D2C3    jb          0067D2EB
>0067D2C5    jmp         0067D30A
 0067D2C7    mov         cl,10
>0067D2C9    jmp         0067D30C
 0067D2CB    xor         ecx,ecx
>0067D2CD    jmp         0067D30C
 0067D2CF    movzx       ecx,al
 0067D2D2    sub         ecx,64
>0067D2D5    jno         0067D2DC
 0067D2D7    call        @IntOver
 0067D2DC    cmp         ecx,0FF
>0067D2E2    jbe         0067D30C
 0067D2E4    call        @BoundErr
>0067D2E9    jmp         0067D30C
 0067D2EB    movzx       ecx,al
 0067D2EE    sub         ecx,0C8
>0067D2F4    jno         0067D2FB
 0067D2F6    call        @IntOver
 0067D2FB    cmp         ecx,0FF
>0067D301    jbe         0067D30C
 0067D303    call        @BoundErr
>0067D308    jmp         0067D30C
 0067D30A    xor         ecx,ecx
 0067D30C    movzx       edx,byte ptr [ebp-3]
 0067D310    sub         dl,1
>0067D313    jb          0067D31C
 0067D315    sub         dl,2
>0067D318    je          0067D324
>0067D31A    jmp         0067D32A
 0067D31C    mov         byte ptr [ebp-11F],cl
>0067D322    jmp         0067D32A
 0067D324    mov         byte ptr [ebp-141],cl
 0067D32A    sub         al,3
>0067D32C    jb          0067D338
>0067D32E    je          0067D33C
 0067D330    add         al,9E
 0067D332    sub         al,21
>0067D334    jb          0067D340
>0067D336    jmp         0067D344
 0067D338    xor         ecx,ecx
>0067D33A    jmp         0067D346
 0067D33C    mov         cl,4
>0067D33E    jmp         0067D346
 0067D340    mov         cl,4
>0067D342    jmp         0067D346
 0067D344    xor         ecx,ecx
 0067D346    movzx       eax,byte ptr [ebx+0D9]
 0067D34D    add         al,0F8
 0067D34F    sub         al,4
>0067D351    jae         0067D377
 0067D353    movzx       eax,cl
 0067D356    movzx       edx,byte ptr [ebx+0D9]
 0067D35D    sub         edx,8
>0067D360    jno         0067D367
 0067D362    call        @IntOver
 0067D367    or          eax,edx
 0067D369    cmp         eax,0FF
>0067D36E    jbe         0067D375
 0067D370    call        @BoundErr
 0067D375    mov         ecx,eax
 0067D377    movzx       eax,byte ptr [ebp-3]
 0067D37B    sub         al,1
>0067D37D    jb          0067D385
 0067D37F    sub         al,2
>0067D381    je          0067D38D
>0067D383    jmp         0067D393
 0067D385    mov         byte ptr [ebp-11E],cl
>0067D38B    jmp         0067D393
 0067D38D    mov         byte ptr [ebp-140],cl
 0067D393    cmp         esi,3
>0067D396    je          0067D3A1
 0067D398    cmp         esi,5
>0067D39B    jne         0067D447
 0067D3A1    movzx       eax,byte ptr [ebx+0A]
 0067D3A5    movzx       eax,al
 0067D3A8    bt          dword ptr ds:[7C26C0],eax;gvar_007C26C0
>0067D3AF    jae         0067D447
 0067D3B5    movzx       eax,byte ptr [ebx+16]
 0067D3B9    mov         edx,eax
 0067D3BB    add         dl,9B
 0067D3BE    sub         dl,0F
>0067D3C1    jb          0067D3D5
 0067D3C3    add         dl,0DD
 0067D3C6    sub         dl,0F
>0067D3C9    jb          0067D3F6
 0067D3CB    add         dl,0DD
 0067D3CE    sub         dl,0F
>0067D3D1    jb          0067D419
>0067D3D3    jmp         0067D43A
 0067D3D5    movzx       eax,al
 0067D3D8    sub         eax,64
>0067D3DB    jno         0067D3E2
 0067D3DD    call        @IntOver
 0067D3E2    cmp         eax,0FF
>0067D3E7    jbe         0067D3EE
 0067D3E9    call        @BoundErr
 0067D3EE    mov         byte ptr [ebp-141],al
>0067D3F4    jmp         0067D43A
 0067D3F6    movzx       eax,al
 0067D3F9    sub         eax,96
>0067D3FE    jno         0067D405
 0067D400    call        @IntOver
 0067D405    cmp         eax,0FF
>0067D40A    jbe         0067D411
 0067D40C    call        @BoundErr
 0067D411    mov         byte ptr [ebp-141],al
>0067D417    jmp         0067D43A
 0067D419    movzx       eax,al
 0067D41C    sub         eax,0C8
>0067D421    jno         0067D428
 0067D423    call        @IntOver
 0067D428    cmp         eax,0FF
>0067D42D    jbe         0067D434
 0067D42F    call        @BoundErr
 0067D434    mov         byte ptr [ebp-141],al
 0067D43A    movzx       eax,byte ptr [ebx+0D9]
 0067D441    mov         byte ptr [ebp-140],al
 0067D447    cmp         esi,3
>0067D44A    je          0067D451
 0067D44C    cmp         esi,5
>0067D44F    jne         0067D47C
 0067D451    movzx       eax,byte ptr [ebx+0A]
 0067D455    movzx       eax,al
 0067D458    bt          dword ptr ds:[7C26A0],eax;gvar_007C26A0
>0067D45F    jae         0067D47C
 0067D461    movzx       eax,byte ptr [ebx+23]
 0067D465    cmp         eax,19
>0067D468    jbe         0067D46F
 0067D46A    call        @BoundErr
 0067D46F    movzx       eax,byte ptr [eax+7C24FC]
 0067D476    mov         byte ptr [ebp-13F],al
 0067D47C    cmp         esi,4
>0067D47F    je          0067D486
 0067D481    cmp         esi,6
>0067D484    jne         0067D4B1
 0067D486    movzx       eax,byte ptr [ebx+0A]
 0067D48A    movzx       eax,al
 0067D48D    bt          dword ptr ds:[7C27C0],eax;gvar_007C27C0
>0067D494    jae         0067D4B1
 0067D496    movzx       eax,byte ptr [ebx+23]
 0067D49A    cmp         eax,19
>0067D49D    jbe         0067D4A4
 0067D49F    call        @BoundErr
 0067D4A4    movzx       eax,byte ptr [eax+7C24FC]
 0067D4AB    mov         byte ptr [ebp-13F],al
 0067D4B1    movzx       eax,byte ptr [ebp-3]
 0067D4B5    sub         al,3
>0067D4B7    je          0067D4BE
>0067D4B9    jmp         0067D9E6
 0067D4BE    movzx       eax,word ptr [ebx+0A8]
 0067D4C5    mov         edx,eax
 0067D4C7    shr         dx,8
 0067D4CB    movzx       edx,dx
 0067D4CE    cmp         edx,0FF
>0067D4D4    jbe         0067D4DB
 0067D4D6    call        @BoundErr
 0067D4DB    mov         byte ptr [ebp-136],dl
 0067D4E1    and         ax,0FF
 0067D4E5    movzx       eax,ax
 0067D4E8    cmp         eax,0FF
>0067D4ED    jbe         0067D4F4
 0067D4EF    call        @BoundErr
 0067D4F4    mov         byte ptr [ebp-135],al
 0067D4FA    movzx       eax,word ptr [ebx+0AA]
 0067D501    mov         edx,eax
 0067D503    shr         dx,8
 0067D507    movzx       edx,dx
 0067D50A    cmp         edx,0FF
>0067D510    jbe         0067D517
 0067D512    call        @BoundErr
 0067D517    mov         byte ptr [ebp-134],dl
 0067D51D    and         ax,0FF
 0067D521    movzx       eax,ax
 0067D524    cmp         eax,0FF
>0067D529    jbe         0067D530
 0067D52B    call        @BoundErr
 0067D530    mov         byte ptr [ebp-133],al
 0067D536    movzx       eax,word ptr [ebx+0AC]
 0067D53D    mov         edx,eax
 0067D53F    shr         dx,8
 0067D543    movzx       edx,dx
 0067D546    cmp         edx,0FF
>0067D54C    jbe         0067D553
 0067D54E    call        @BoundErr
 0067D553    mov         byte ptr [ebp-132],dl
 0067D559    and         ax,0FF
 0067D55D    movzx       eax,ax
 0067D560    cmp         eax,0FF
>0067D565    jbe         0067D56C
 0067D567    call        @BoundErr
 0067D56C    mov         byte ptr [ebp-131],al
 0067D572    movzx       eax,word ptr [ebx+0AE]
 0067D579    mov         edx,eax
 0067D57B    shr         dx,8
 0067D57F    movzx       edx,dx
 0067D582    cmp         edx,0FF
>0067D588    jbe         0067D58F
 0067D58A    call        @BoundErr
 0067D58F    mov         byte ptr [ebp-130],dl
 0067D595    and         ax,0FF
 0067D599    movzx       eax,ax
 0067D59C    cmp         eax,0FF
>0067D5A1    jbe         0067D5A8
 0067D5A3    call        @BoundErr
 0067D5A8    mov         byte ptr [ebp-12F],al
 0067D5AE    movzx       eax,word ptr [ebx+0B0]
 0067D5B5    mov         edx,eax
 0067D5B7    shr         dx,8
 0067D5BB    movzx       edx,dx
 0067D5BE    cmp         edx,0FF
>0067D5C4    jbe         0067D5CB
 0067D5C6    call        @BoundErr
 0067D5CB    mov         byte ptr [ebp-12E],dl
 0067D5D1    and         ax,0FF
 0067D5D5    movzx       eax,ax
 0067D5D8    cmp         eax,0FF
>0067D5DD    jbe         0067D5E4
 0067D5DF    call        @BoundErr
 0067D5E4    mov         byte ptr [ebp-12D],al
 0067D5EA    movzx       eax,word ptr [ebx+0B2]
 0067D5F1    mov         edx,eax
 0067D5F3    shr         dx,8
 0067D5F7    movzx       edx,dx
 0067D5FA    cmp         edx,0FF
>0067D600    jbe         0067D607
 0067D602    call        @BoundErr
 0067D607    mov         byte ptr [ebp-12C],dl
 0067D60D    and         ax,0FF
 0067D611    movzx       eax,ax
 0067D614    cmp         eax,0FF
>0067D619    jbe         0067D620
 0067D61B    call        @BoundErr
 0067D620    mov         byte ptr [ebp-12B],al
 0067D626    movzx       eax,word ptr [ebx+0B4]
 0067D62D    shr         ax,8
 0067D631    movzx       eax,ax
 0067D634    cmp         eax,0FF
>0067D639    jbe         0067D640
 0067D63B    call        @BoundErr
 0067D640    mov         byte ptr [ebp-12A],al
 0067D646    movzx       eax,word ptr [ebx+0B4]
 0067D64D    and         ax,0FF
 0067D651    movzx       eax,ax
 0067D654    cmp         eax,0FF
>0067D659    jbe         0067D660
 0067D65B    call        @BoundErr
 0067D660    mov         byte ptr [ebp-129],al
 0067D666    movzx       eax,word ptr [ebx+0B6]
 0067D66D    shr         ax,8
 0067D671    movzx       eax,ax
 0067D674    cmp         eax,0FF
>0067D679    jbe         0067D680
 0067D67B    call        @BoundErr
 0067D680    mov         byte ptr [ebp-128],al
 0067D686    movzx       eax,word ptr [ebx+0B6]
 0067D68D    and         ax,0FF
 0067D691    movzx       eax,ax
 0067D694    cmp         eax,0FF
>0067D699    jbe         0067D6A0
 0067D69B    call        @BoundErr
 0067D6A0    mov         byte ptr [ebp-127],al
 0067D6A6    movzx       eax,word ptr [ebx+0B8]
 0067D6AD    shr         ax,8
 0067D6B1    movzx       eax,ax
 0067D6B4    cmp         eax,0FF
>0067D6B9    jbe         0067D6C0
 0067D6BB    call        @BoundErr
 0067D6C0    mov         byte ptr [ebp-126],al
 0067D6C6    movzx       eax,word ptr [ebx+0B8]
 0067D6CD    and         ax,0FF
 0067D6D1    movzx       eax,ax
 0067D6D4    cmp         eax,0FF
>0067D6D9    jbe         0067D6E0
 0067D6DB    call        @BoundErr
 0067D6E0    mov         byte ptr [ebp-125],al
 0067D6E6    movzx       eax,word ptr [ebx+0BA]
 0067D6ED    shr         ax,8
 0067D6F1    movzx       eax,ax
 0067D6F4    cmp         eax,0FF
>0067D6F9    jbe         0067D700
 0067D6FB    call        @BoundErr
 0067D700    mov         byte ptr [ebp-124],al
 0067D706    movzx       eax,word ptr [ebx+0BA]
 0067D70D    and         ax,0FF
 0067D711    movzx       eax,ax
 0067D714    cmp         eax,0FF
>0067D719    jbe         0067D720
 0067D71B    call        @BoundErr
 0067D720    mov         byte ptr [ebp-123],al
 0067D726    movzx       eax,word ptr [ebx+0BC]
 0067D72D    shr         ax,8
 0067D731    movzx       eax,ax
 0067D734    cmp         eax,0FF
>0067D739    jbe         0067D740
 0067D73B    call        @BoundErr
 0067D740    mov         byte ptr [ebp-122],al
 0067D746    movzx       eax,word ptr [ebx+0BC]
 0067D74D    and         ax,0FF
 0067D751    movzx       eax,ax
 0067D754    cmp         eax,0FF
>0067D759    jbe         0067D760
 0067D75B    call        @BoundErr
 0067D760    mov         byte ptr [ebp-121],al
 0067D766    movzx       eax,word ptr [ebx+0BE]
 0067D76D    shr         ax,8
 0067D771    movzx       eax,ax
 0067D774    cmp         eax,0FF
>0067D779    jbe         0067D780
 0067D77B    call        @BoundErr
 0067D780    mov         byte ptr [ebp-120],al
 0067D786    movzx       eax,word ptr [ebx+0BE]
 0067D78D    and         ax,0FF
 0067D791    movzx       eax,ax
 0067D794    cmp         eax,0FF
>0067D799    jbe         0067D7A0
 0067D79B    call        @BoundErr
 0067D7A0    mov         byte ptr [ebp-11F],al
 0067D7A6    movzx       eax,word ptr [ebx+0C0]
 0067D7AD    shr         ax,8
 0067D7B1    movzx       eax,ax
 0067D7B4    cmp         eax,0FF
>0067D7B9    jbe         0067D7C0
 0067D7BB    call        @BoundErr
 0067D7C0    mov         byte ptr [ebp-11E],al
 0067D7C6    movzx       eax,word ptr [ebx+0C0]
 0067D7CD    and         ax,0FF
 0067D7D1    movzx       eax,ax
 0067D7D4    cmp         eax,0FF
>0067D7D9    jbe         0067D7E0
 0067D7DB    call        @BoundErr
 0067D7E0    mov         byte ptr [ebp-11D],al
 0067D7E6    movzx       eax,word ptr [ebx+0C2]
 0067D7ED    shr         ax,8
 0067D7F1    movzx       eax,ax
 0067D7F4    cmp         eax,0FF
>0067D7F9    jbe         0067D800
 0067D7FB    call        @BoundErr
 0067D800    mov         byte ptr [ebp-11C],al
 0067D806    movzx       eax,word ptr [ebx+0C2]
 0067D80D    and         ax,0FF
 0067D811    movzx       eax,ax
 0067D814    cmp         eax,0FF
>0067D819    jbe         0067D820
 0067D81B    call        @BoundErr
 0067D820    mov         byte ptr [ebp-11B],al
 0067D826    movzx       eax,word ptr [ebx+0C4]
 0067D82D    shr         ax,8
 0067D831    movzx       eax,ax
 0067D834    cmp         eax,0FF
>0067D839    jbe         0067D840
 0067D83B    call        @BoundErr
 0067D840    mov         byte ptr [ebp-11A],al
 0067D846    movzx       eax,word ptr [ebx+0C4]
 0067D84D    and         ax,0FF
 0067D851    movzx       eax,ax
 0067D854    cmp         eax,0FF
>0067D859    jbe         0067D860
 0067D85B    call        @BoundErr
 0067D860    mov         byte ptr [ebp-119],al
 0067D866    movzx       eax,word ptr [ebx+0C6]
 0067D86D    shr         ax,8
 0067D871    movzx       eax,ax
 0067D874    cmp         eax,0FF
>0067D879    jbe         0067D880
 0067D87B    call        @BoundErr
 0067D880    mov         byte ptr [ebp-118],al
 0067D886    movzx       eax,word ptr [ebx+0C6]
 0067D88D    and         ax,0FF
 0067D891    movzx       eax,ax
 0067D894    cmp         eax,0FF
>0067D899    jbe         0067D8A0
 0067D89B    call        @BoundErr
 0067D8A0    mov         byte ptr [ebp-117],al
 0067D8A6    movzx       eax,word ptr [ebx+0C8]
 0067D8AD    shr         ax,8
 0067D8B1    movzx       eax,ax
 0067D8B4    cmp         eax,0FF
>0067D8B9    jbe         0067D8C0
 0067D8BB    call        @BoundErr
 0067D8C0    mov         byte ptr [ebp-116],al
 0067D8C6    movzx       eax,word ptr [ebx+0C8]
 0067D8CD    and         ax,0FF
 0067D8D1    movzx       eax,ax
 0067D8D4    cmp         eax,0FF
>0067D8D9    jbe         0067D8E0
 0067D8DB    call        @BoundErr
 0067D8E0    mov         byte ptr [ebp-115],al
 0067D8E6    movzx       eax,word ptr [ebx+0CA]
 0067D8ED    shr         ax,8
 0067D8F1    movzx       eax,ax
 0067D8F4    cmp         eax,0FF
>0067D8F9    jbe         0067D900
 0067D8FB    call        @BoundErr
 0067D900    mov         byte ptr [ebp-114],al
 0067D906    movzx       eax,word ptr [ebx+0CA]
 0067D90D    and         ax,0FF
 0067D911    movzx       eax,ax
 0067D914    cmp         eax,0FF
>0067D919    jbe         0067D920
 0067D91B    call        @BoundErr
 0067D920    mov         byte ptr [ebp-113],al
 0067D926    movzx       eax,word ptr [ebx+0CC]
 0067D92D    shr         ax,8
 0067D931    movzx       eax,ax
 0067D934    cmp         eax,0FF
>0067D939    jbe         0067D940
 0067D93B    call        @BoundErr
 0067D940    mov         byte ptr [ebp-112],al
 0067D946    movzx       eax,word ptr [ebx+0CC]
 0067D94D    and         ax,0FF
 0067D951    movzx       eax,ax
 0067D954    cmp         eax,0FF
>0067D959    jbe         0067D960
 0067D95B    call        @BoundErr
 0067D960    mov         byte ptr [ebp-111],al
 0067D966    movzx       eax,word ptr [ebx+0CE]
 0067D96D    shr         ax,8
 0067D971    movzx       eax,ax
 0067D974    cmp         eax,0FF
>0067D979    jbe         0067D980
 0067D97B    call        @BoundErr
 0067D980    mov         byte ptr [ebp-110],al
 0067D986    movzx       eax,word ptr [ebx+0CE]
 0067D98D    and         ax,0FF
 0067D991    movzx       eax,ax
 0067D994    cmp         eax,0FF
>0067D999    jbe         0067D9A0
 0067D99B    call        @BoundErr
 0067D9A0    mov         byte ptr [ebp-10F],al
 0067D9A6    movzx       eax,word ptr [ebx+0D0]
 0067D9AD    shr         ax,8
 0067D9B1    movzx       eax,ax
 0067D9B4    cmp         eax,0FF
>0067D9B9    jbe         0067D9C0
 0067D9BB    call        @BoundErr
 0067D9C0    mov         byte ptr [ebp-10E],al
 0067D9C6    movzx       eax,word ptr [ebx+0D0]
 0067D9CD    and         ax,0FF
 0067D9D1    movzx       eax,ax
 0067D9D4    cmp         eax,0FF
>0067D9D9    jbe         0067D9E0
 0067D9DB    call        @BoundErr
 0067D9E0    mov         byte ptr [ebp-10D],al
 0067D9E6    movzx       eax,word ptr [ebp+10]
 0067D9EA    cmp         eax,6
>0067D9ED    jge         0067D9FF
 0067D9EF    dec         eax
 0067D9F0    sub         eax,3
>0067D9F3    jb          0067DA19
 0067D9F5    sub         eax,2
>0067D9F8    jb          0067DA35
>0067D9FA    jmp         0067DA94
 0067D9FF    add         eax,0FFFFFFFA
 0067DA02    sub         eax,3
>0067DA05    jb          0067DA51
 0067DA07    add         eax,0FFFFFFE9
 0067DA0A    sub         eax,2
>0067DA0D    jb          0067DA51
 0067DA0F    add         eax,0FFFFFFE2
 0067DA12    sub         eax,9
>0067DA15    jb          0067DA51
>0067DA17    jmp         0067DA94
 0067DA19    mov         edx,dword ptr [ebp+8]
 0067DA1C    inc         edx
 0067DA1D    lea         eax,[ebp-156]
 0067DA23    mov         ecx,34
 0067DA28    call        Move
 0067DA2D    mov         eax,dword ptr [ebp+0C]
 0067DA30    mov         byte ptr [eax],35
>0067DA33    jmp         0067DAAB
 0067DA35    mov         edx,dword ptr [ebp+8]
 0067DA38    inc         edx
 0067DA39    lea         eax,[ebp-156]
 0067DA3F    mov         ecx,40
 0067DA44    call        Move
 0067DA49    mov         eax,dword ptr [ebp+0C]
 0067DA4C    mov         byte ptr [eax],41
>0067DA4F    jmp         0067DAAB
 0067DA51    mov         eax,dword ptr [ebp+8]
 0067DA54    mov         byte ptr [eax+1],7F
 0067DA58    mov         eax,dword ptr [ebp+8]
 0067DA5B    movzx       edx,byte ptr [ebp-3]
 0067DA5F    mov         byte ptr [eax+2],dl
 0067DA62    mov         eax,dword ptr [ebp+8]
 0067DA65    movzx       edx,byte ptr [ebp-4]
 0067DA69    mov         byte ptr [eax+3],dl
 0067DA6C    mov         eax,dword ptr [ebp+8]
 0067DA6F    movzx       edx,byte ptr [ebp-5]
 0067DA73    mov         byte ptr [eax+4],dl
 0067DA76    mov         edx,dword ptr [ebp+8]
 0067DA79    add         edx,5
 0067DA7C    lea         eax,[ebp-156]
 0067DA82    mov         ecx,52
 0067DA87    call        Move
 0067DA8C    mov         eax,dword ptr [ebp+0C]
 0067DA8F    mov         byte ptr [eax],57
>0067DA92    jmp         0067DAAB
 0067DA94    mov         ecx,dword ptr ds:[7C2874];^'Address Data encoding error!'
 0067DA9A    mov         dl,1
 0067DA9C    mov         eax,[004174D0];Exception
 0067DAA1    call        Exception.Create;Exception.Create
 0067DAA6    call        @RaiseExcept
 0067DAAB    mov         al,1
 0067DAAD    pop         edi
 0067DAAE    pop         esi
 0067DAAF    pop         ebx
 0067DAB0    mov         esp,ebp
 0067DAB2    pop         ebp
 0067DAB3    ret         10
*}
end;

//0067DAB8
{*function sub_0067DAB8(?:?; ?:?; ?:?; ?:?):?;
begin
 0067DAB8    push        ebp
 0067DAB9    mov         ebp,esp
 0067DABB    push        ecx
 0067DABC    push        ebx
 0067DABD    push        esi
 0067DABE    mov         ebx,dword ptr [ebp+8]
 0067DAC1    test        ebx,ebx
>0067DAC3    js          0067DACF
 0067DAC5    shr         ebx,2
 0067DAC8    mov         esi,dword ptr [ecx+ebx*4]
 0067DACB    dec         ebx
 0067DACC    push        esi
>0067DACD    jns         0067DAC8
 0067DACF    mov         ecx,esp
 0067DAD1    mov         byte ptr [ebp-2],dl
 0067DAD4    mov         byte ptr [ebp-1],al
 0067DAD7    mov         esi,dword ptr [ebp+8]
 0067DADA    movzx       eax,byte ptr [ebp-2]
 0067DADE    mov         edx,esi
 0067DAE0    cmp         edx,0FF
>0067DAE6    jbe         0067DAED
 0067DAE8    call        @BoundErr
 0067DAED    sub         dl,al
>0067DAEF    jb          0067DB2E
 0067DAF1    inc         edx
 0067DAF2    movzx       ebx,al
 0067DAF5    test        ebx,ebx
>0067DAF7    jl          0067DAFD
 0067DAF9    cmp         ebx,esi
>0067DAFB    jle         0067DB02
 0067DAFD    call        @BoundErr
 0067DB02    movzx       ebx,byte ptr [ecx+ebx]
 0067DB06    cmp         bl,byte ptr [ebp-1]
>0067DB09    jne         0067DB29
 0067DB0B    movzx       eax,al
 0067DB0E    movzx       edx,byte ptr [ebp-2]
 0067DB12    sub         eax,edx
>0067DB14    jno         0067DB1B
 0067DB16    call        @IntOver
 0067DB1B    cmp         eax,0FF
>0067DB20    jbe         0067DB3C
 0067DB22    call        @BoundErr
>0067DB27    jmp         0067DB3C
 0067DB29    inc         eax
 0067DB2A    dec         dl
>0067DB2C    jne         0067DAF2
 0067DB2E    mov         eax,esi
 0067DB30    cmp         eax,0FF
>0067DB35    jbe         0067DB3C
 0067DB37    call        @BoundErr
 0067DB3C    mov         esi,dword ptr [ebp-0C]
 0067DB3F    mov         ebx,dword ptr [ebp-8]
 0067DB42    mov         esp,ebp
 0067DB44    pop         ebp
 0067DB45    ret         4
end;*}

//0067DB48
procedure TFXPAD.DecodeFXADMsg(NegVer:Word; MsgLen:Byte; MsgData:TMsgData);
begin
{*
 0067DB48    push        ebp
 0067DB49    mov         ebp,esp
 0067DB4B    add         esp,0FFFFFE08
 0067DB51    push        ebx
 0067DB52    push        esi
 0067DB53    push        edi
 0067DB54    xor         ebx,ebx
 0067DB56    mov         dword ptr [ebp-1E4],ebx
 0067DB5C    mov         dword ptr [ebp-1E8],ebx
 0067DB62    mov         byte ptr [ebp-7],cl
 0067DB65    mov         word ptr [ebp-6],dx
 0067DB69    mov         dword ptr [ebp-4],eax
 0067DB6C    mov         esi,dword ptr [ebp+8]
 0067DB6F    lea         edi,[ebp-1E0]
 0067DB75    xor         eax,eax
 0067DB77    push        ebp
 0067DB78    push        67F545
 0067DB7D    push        dword ptr fs:[eax]
 0067DB80    mov         dword ptr fs:[eax],esp
 0067DB83    xor         edx,edx
 0067DB85    push        ebp
 0067DB86    push        67F4A2
 0067DB8B    push        dword ptr fs:[edx]
 0067DB8E    mov         dword ptr fs:[edx],esp
 0067DB91    lea         eax,[ebp-106]
 0067DB97    xor         ecx,ecx
 0067DB99    mov         edx,0FE
 0067DB9E    call        @FillChar
 0067DBA3    mov         eax,edi
 0067DBA5    xor         ecx,ecx
 0067DBA7    mov         edx,0DA
 0067DBAC    call        @FillChar
 0067DBB1    movzx       eax,byte ptr [esi+1]
 0067DBB5    sub         al,7F
>0067DBB7    jne         0067DBDB
 0067DBB9    movzx       ebx,byte ptr [esi+2]
 0067DBBD    movzx       ecx,byte ptr [ebp-7]
 0067DBC1    sub         ecx,5
>0067DBC4    jno         0067DBCB
 0067DBC6    call        @IntOver
 0067DBCB    lea         edx,[ebp-106]
 0067DBD1    lea         eax,[esi+5]
 0067DBD4    call        Move
>0067DBD9    jmp         0067DBF9
 0067DBDB    xor         ebx,ebx
 0067DBDD    movzx       ecx,byte ptr [ebp-7]
 0067DBE1    sub         ecx,1
>0067DBE4    jno         0067DBEB
 0067DBE6    call        @IntOver
 0067DBEB    lea         edx,[ebp-106]
 0067DBF1    lea         eax,[esi+1]
 0067DBF4    call        Move
 0067DBF9    mov         eax,ebx
 0067DBFB    not         al
 0067DBFD    sub         al,4
>0067DBFF    jae         0067DC16
 0067DC01    push        0
 0067DC03    movzx       ecx,word ptr ds:[67F558];0x4 gvar_0067F558
 0067DC0A    xor         edx,edx
 0067DC0C    mov         eax,67F568;'Unknown version in decoded address data'
 0067DC11    call        MessageDlg
 0067DC16    movzx       eax,byte ptr [ebp-106]
 0067DC1D    sub         eax,1
>0067DC20    jno         0067DC27
 0067DC22    call        @IntOver
 0067DC27    cmp         eax,0FF
>0067DC2C    jbe         0067DC33
 0067DC2E    call        @BoundErr
 0067DC33    mov         byte ptr [edi+2],al
 0067DC36    movzx       eax,byte ptr [ebp-105]
 0067DC3D    mov         byte ptr [edi+3],al
 0067DC40    movzx       eax,byte ptr [ebp-104]
 0067DC47    mov         byte ptr [edi+4],al
 0067DC4A    movzx       eax,byte ptr [ebp-103]
 0067DC51    mov         byte ptr [edi+5],al
 0067DC54    movzx       edx,byte ptr [edi+2]
 0067DC58    mov         eax,dword ptr [ebp-4]
 0067DC5B    mov         eax,dword ptr [eax+87668];TFXPAD.PD:TFXPPD
 0067DC61    call        TFXPPD.GetControllerLoopType
 0067DC66    mov         esi,eax
 0067DC68    mov         eax,esi
 0067DC6A    sub         eax,3
>0067DC6D    je          0067DC7A
 0067DC6F    dec         eax
>0067DC70    je          0067DCC2
 0067DC72    dec         eax
>0067DC73    je          0067DC7A
 0067DC75    dec         eax
>0067DC76    je          0067DCC2
>0067DC78    jmp         0067DCCC
 0067DC7A    push        4
 0067DC7C    mov         ecx,7C13FC
 0067DC81    xor         edx,edx
 0067DC83    movzx       eax,byte ptr [ebp-0FB]
 0067DC8A    call        0067DAB8
 0067DC8F    mov         byte ptr [edi+0B],al
 0067DC92    cmp         byte ptr [edi+0B],0
>0067DC96    jne         0067DCA9
 0067DC98    movzx       eax,byte ptr [ebp-0F9]
 0067DC9F    and         al,40
 0067DCA1    cmp         al,40
>0067DCA3    jne         0067DCA9
 0067DCA5    mov         byte ptr [edi+0B],1
 0067DCA9    cmp         byte ptr [edi+0B],2
>0067DCAD    jne         0067DCCC
 0067DCAF    movzx       eax,byte ptr [ebp-0F4]
 0067DCB6    and         al,10
 0067DCB8    cmp         al,10
>0067DCBA    jne         0067DCCC
 0067DCBC    mov         byte ptr [edi+0B],4
>0067DCC0    jmp         0067DCCC
 0067DCC2    movzx       eax,byte ptr [ebp-0FB]
 0067DCC9    mov         byte ptr [edi+0B],al
 0067DCCC    mov         eax,esi
 0067DCCE    cmp         eax,6
>0067DCD1    ja          0067DE04
 0067DCD7    jmp         dword ptr [eax*4+67DCDE]
 0067DCD7    dd          0067DE04
 0067DCD7    dd          0067DDC6
 0067DCD7    dd          0067DD32
 0067DCD7    dd          0067DCFA
 0067DCD7    dd          0067DD4F
 0067DCD7    dd          0067DCFA
 0067DCD7    dd          0067DD4F
 0067DCFA    push        1C
 0067DCFC    mov         ecx,7C14C8
 0067DD01    xor         edx,edx
 0067DD03    movzx       eax,byte ptr [ebp-101]
 0067DD0A    call        0067DAB8
 0067DD0F    mov         byte ptr [edi+0A],al
 0067DD12    cmp         byte ptr [edi+0A],9
>0067DD16    jne         0067DE04
 0067DD1C    test        byte ptr [ebp-0F9],20
>0067DD23    jne         0067DE04
 0067DD29    mov         byte ptr [edi+0A],18
>0067DD2D    jmp         0067DE04
 0067DD32    push        1
 0067DD34    mov         ecx,7C1610
 0067DD39    xor         edx,edx
 0067DD3B    movzx       eax,byte ptr [ebp-101]
 0067DD42    call        0067DAB8
 0067DD47    mov         byte ptr [edi+0A],al
>0067DD4A    jmp         0067DE04
 0067DD4F    cmp         byte ptr [edi+0B],1
>0067DD53    jne         0067DD80
 0067DD55    push        2C
 0067DD57    mov         ecx,7C1896
 0067DD5C    xor         edx,edx
 0067DD5E    movzx       eax,byte ptr [ebp-101]
 0067DD65    call        0067DAB8
 0067DD6A    mov         byte ptr [edi+0A],al
 0067DD6D    cmp         byte ptr [edi+0A],20
>0067DD71    jne         0067DD80
 0067DD73    test        byte ptr [ebp-0F9],20
>0067DD7A    jne         0067DD80
 0067DD7C    mov         byte ptr [edi+0A],21
 0067DD80    cmp         byte ptr [edi+0B],0
>0067DD84    jne         0067DE04
 0067DD86    push        0F
 0067DD88    mov         ecx,7C161C
 0067DD8D    xor         edx,edx
 0067DD8F    movzx       eax,byte ptr [ebp-101]
 0067DD96    call        0067DAB8
 0067DD9B    mov         byte ptr [edi+0A],al
 0067DD9E    cmp         byte ptr [edi+0A],7
>0067DDA2    jne         0067DDB1
 0067DDA4    test        byte ptr [ebp-0F9],20
>0067DDAB    jne         0067DDB1
 0067DDAD    mov         byte ptr [edi+0A],0C
 0067DDB1    cmp         byte ptr [edi+0A],2
>0067DDB5    jne         0067DE04
 0067DDB7    cmp         byte ptr [ebp-0F6],3
>0067DDBE    jne         0067DE04
 0067DDC0    mov         byte ptr [edi+0A],0F
>0067DDC4    jmp         0067DE04
 0067DDC6    push        0F
 0067DDC8    mov         ecx,7C161C
 0067DDCD    xor         edx,edx
 0067DDCF    movzx       eax,byte ptr [ebp-101]
 0067DDD6    call        0067DAB8
 0067DDDB    mov         byte ptr [edi+0A],al
 0067DDDE    cmp         byte ptr [edi+0A],7
>0067DDE2    jne         0067DDF1
 0067DDE4    test        byte ptr [ebp-0F9],20
>0067DDEB    jne         0067DDF1
 0067DDED    mov         byte ptr [edi+0A],0C
 0067DDF1    cmp         byte ptr [edi+0A],2
>0067DDF5    jne         0067DE04
 0067DDF7    cmp         byte ptr [ebp-0F6],3
>0067DDFE    jne         0067DE04
 0067DE00    mov         byte ptr [edi+0A],0F
 0067DE04    mov         eax,esi
 0067DE06    cmp         eax,6
>0067DE09    ja          0067E390
 0067DE0F    jmp         dword ptr [eax*4+67DE16]
 0067DE0F    dd          0067E390
 0067DE0F    dd          0067E13E
 0067DE0F    dd          0067E390
 0067DE0F    dd          0067DE32
 0067DE0F    dd          0067DE6E
 0067DE0F    dd          0067DE32
 0067DE0F    dd          0067DE6E
 0067DE32    movzx       eax,byte ptr [ebp-100]
 0067DE39    mov         word ptr [edi+0C],ax
 0067DE3D    movzx       eax,byte ptr [ebp-0FF]
 0067DE44    mov         word ptr [edi+10],ax
 0067DE48    movzx       eax,byte ptr [ebp-0FE]
 0067DE4F    mov         word ptr [edi+0E],ax
 0067DE53    movzx       eax,byte ptr [ebp-0FD]
 0067DE5A    mov         word ptr [edi+12],ax
 0067DE5E    movzx       eax,byte ptr [ebp-0FC]
 0067DE65    mov         word ptr [edi+14],ax
>0067DE69    jmp         0067E390
 0067DE6E    cmp         byte ptr [edi+0B],1
>0067DE72    jne         0067DF45
 0067DE78    movzx       eax,byte ptr [edi+0A]
 0067DE7C    cmp         al,0A
>0067DE7E    je          0067DE84
 0067DE80    cmp         al,0D
>0067DE82    jne         0067DEDB
 0067DE84    movzx       eax,byte ptr [ebp-100]
 0067DE8B    test        al,al
>0067DE8D    jne         0067DE97
 0067DE8F    mov         word ptr [edi+0C],7
>0067DE95    jmp         0067DE9E
 0067DE97    movzx       eax,al
 0067DE9A    mov         word ptr [edi+0C],ax
 0067DE9E    movzx       eax,byte ptr [ebp-0FF]
 0067DEA5    test        al,al
>0067DEA7    jne         0067DEB1
 0067DEA9    mov         word ptr [edi+10],7
>0067DEAF    jmp         0067DEB8
 0067DEB1    movzx       eax,al
 0067DEB4    mov         word ptr [edi+10],ax
 0067DEB8    movzx       eax,byte ptr [ebp-0FE]
 0067DEBF    mov         word ptr [edi+0E],ax
 0067DEC3    movzx       eax,byte ptr [ebp-0FD]
 0067DECA    mov         word ptr [edi+12],ax
 0067DECE    movzx       eax,byte ptr [ebp-0FC]
 0067DED5    mov         word ptr [edi+14],ax
>0067DED9    jmp         0067DF12
 0067DEDB    movzx       eax,byte ptr [ebp-100]
 0067DEE2    mov         word ptr [edi+0C],ax
 0067DEE6    movzx       eax,byte ptr [ebp-0FF]
 0067DEED    mov         word ptr [edi+10],ax
 0067DEF1    movzx       eax,byte ptr [ebp-0FE]
 0067DEF8    mov         word ptr [edi+0E],ax
 0067DEFC    movzx       eax,byte ptr [ebp-0FD]
 0067DF03    mov         word ptr [edi+12],ax
 0067DF07    movzx       eax,byte ptr [ebp-0FC]
 0067DF0E    mov         word ptr [edi+14],ax
 0067DF12    movzx       eax,byte ptr [ebp-0F2]
 0067DF19    cmp         al,0FF
>0067DF1B    jne         0067DF26
 0067DF1D    mov         byte ptr [edi+0D8],0
>0067DF24    jmp         0067DF45
 0067DF26    movzx       eax,al
 0067DF29    add         eax,1
>0067DF2C    jno         0067DF33
 0067DF2E    call        @IntOver
 0067DF33    cmp         eax,0FF
>0067DF38    jbe         0067DF3F
 0067DF3A    call        @BoundErr
 0067DF3F    mov         byte ptr [edi+0D8],al
 0067DF45    cmp         byte ptr [edi+0B],0
>0067DF49    jne         0067E390
 0067DF4F    cmp         byte ptr [edi+0A],9
>0067DF53    jne         0067E017
 0067DF59    movzx       eax,byte ptr [ebp-100]
 0067DF60    mov         edx,0A
 0067DF65    mul         eax,edx
>0067DF67    jno         0067DF6E
 0067DF69    call        @IntOver
 0067DF6E    cmp         eax,0FFFF
>0067DF73    jbe         0067DF7A
 0067DF75    call        @BoundErr
 0067DF7A    mov         word ptr [edi+0C],ax
 0067DF7E    movzx       eax,byte ptr [ebp-0FF]
 0067DF85    mov         edx,0A
 0067DF8A    mul         eax,edx
>0067DF8C    jno         0067DF93
 0067DF8E    call        @IntOver
 0067DF93    cmp         eax,0FFFF
>0067DF98    jbe         0067DF9F
 0067DF9A    call        @BoundErr
 0067DF9F    mov         word ptr [edi+10],ax
 0067DFA3    movzx       eax,byte ptr [ebp-0FE]
 0067DFAA    mov         edx,0A
 0067DFAF    mul         eax,edx
>0067DFB1    jno         0067DFB8
 0067DFB3    call        @IntOver
 0067DFB8    cmp         eax,0FFFF
>0067DFBD    jbe         0067DFC4
 0067DFBF    call        @BoundErr
 0067DFC4    mov         word ptr [edi+0E],ax
 0067DFC8    movzx       eax,byte ptr [ebp-0FD]
 0067DFCF    mov         edx,0A
 0067DFD4    mul         eax,edx
>0067DFD6    jno         0067DFDD
 0067DFD8    call        @IntOver
 0067DFDD    cmp         eax,0FFFF
>0067DFE2    jbe         0067DFE9
 0067DFE4    call        @BoundErr
 0067DFE9    mov         word ptr [edi+12],ax
 0067DFED    movzx       eax,byte ptr [ebp-0FC]
 0067DFF4    mov         edx,0A
 0067DFF9    mul         eax,edx
>0067DFFB    jno         0067E002
 0067DFFD    call        @IntOver
 0067E002    cmp         eax,0FFFF
>0067E007    jbe         0067E00E
 0067E009    call        @BoundErr
 0067E00E    mov         word ptr [edi+14],ax
>0067E012    jmp         0067E390
 0067E017    movzx       ecx,byte ptr [ebp-100]
 0067E01E    test        cl,cl
>0067E020    jbe         0067E04F
 0067E022    movzx       eax,cl
 0067E025    mov         edx,0A
 0067E02A    mul         eax,edx
>0067E02C    jno         0067E033
 0067E02E    call        @IntOver
 0067E033    add         eax,3E8
>0067E038    jno         0067E03F
 0067E03A    call        @IntOver
 0067E03F    cmp         eax,0FFFF
>0067E044    jbe         0067E04B
 0067E046    call        @BoundErr
 0067E04B    mov         word ptr [edi+0C],ax
 0067E04F    movzx       ecx,byte ptr [ebp-0FF]
 0067E056    test        cl,cl
>0067E058    jbe         0067E087
 0067E05A    movzx       eax,cl
 0067E05D    mov         edx,0A
 0067E062    mul         eax,edx
>0067E064    jno         0067E06B
 0067E066    call        @IntOver
 0067E06B    add         eax,3E8
>0067E070    jno         0067E077
 0067E072    call        @IntOver
 0067E077    cmp         eax,0FFFF
>0067E07C    jbe         0067E083
 0067E07E    call        @BoundErr
 0067E083    mov         word ptr [edi+10],ax
 0067E087    cmp         byte ptr [ebp-0FE],0
>0067E08E    jbe         0067E0C1
 0067E090    movzx       eax,byte ptr [ebp-0FE]
 0067E097    mov         edx,0A
 0067E09C    mul         eax,edx
>0067E09E    jno         0067E0A5
 0067E0A0    call        @IntOver
 0067E0A5    add         eax,3E8
>0067E0AA    jno         0067E0B1
 0067E0AC    call        @IntOver
 0067E0B1    cmp         eax,0FFFF
>0067E0B6    jbe         0067E0BD
 0067E0B8    call        @BoundErr
 0067E0BD    mov         word ptr [edi+0E],ax
 0067E0C1    cmp         byte ptr [ebp-0FD],0
>0067E0C8    jbe         0067E0FB
 0067E0CA    movzx       eax,byte ptr [ebp-0FD]
 0067E0D1    mov         edx,0A
 0067E0D6    mul         eax,edx
>0067E0D8    jno         0067E0DF
 0067E0DA    call        @IntOver
 0067E0DF    add         eax,3E8
>0067E0E4    jno         0067E0EB
 0067E0E6    call        @IntOver
 0067E0EB    cmp         eax,0FFFF
>0067E0F0    jbe         0067E0F7
 0067E0F2    call        @BoundErr
 0067E0F7    mov         word ptr [edi+12],ax
 0067E0FB    cmp         byte ptr [ebp-0FC],0
>0067E102    jbe         0067E390
 0067E108    movzx       eax,byte ptr [ebp-0FC]
 0067E10F    mov         edx,0A
 0067E114    mul         eax,edx
>0067E116    jno         0067E11D
 0067E118    call        @IntOver
 0067E11D    add         eax,3E8
>0067E122    jno         0067E129
 0067E124    call        @IntOver
 0067E129    cmp         eax,0FFFF
>0067E12E    jbe         0067E135
 0067E130    call        @BoundErr
 0067E135    mov         word ptr [edi+14],ax
>0067E139    jmp         0067E390
 0067E13E    cmp         byte ptr [edi+0A],9
>0067E142    jne         0067E206
 0067E148    movzx       eax,byte ptr [ebp-100]
 0067E14F    mov         edx,0A
 0067E154    mul         eax,edx
>0067E156    jno         0067E15D
 0067E158    call        @IntOver
 0067E15D    cmp         eax,0FFFF
>0067E162    jbe         0067E169
 0067E164    call        @BoundErr
 0067E169    mov         word ptr [edi+0C],ax
 0067E16D    movzx       eax,byte ptr [ebp-0FF]
 0067E174    mov         edx,0A
 0067E179    mul         eax,edx
>0067E17B    jno         0067E182
 0067E17D    call        @IntOver
 0067E182    cmp         eax,0FFFF
>0067E187    jbe         0067E18E
 0067E189    call        @BoundErr
 0067E18E    mov         word ptr [edi+10],ax
 0067E192    movzx       eax,byte ptr [ebp-0FE]
 0067E199    mov         edx,0A
 0067E19E    mul         eax,edx
>0067E1A0    jno         0067E1A7
 0067E1A2    call        @IntOver
 0067E1A7    cmp         eax,0FFFF
>0067E1AC    jbe         0067E1B3
 0067E1AE    call        @BoundErr
 0067E1B3    mov         word ptr [edi+0E],ax
 0067E1B7    movzx       eax,byte ptr [ebp-0FD]
 0067E1BE    mov         edx,0A
 0067E1C3    mul         eax,edx
>0067E1C5    jno         0067E1CC
 0067E1C7    call        @IntOver
 0067E1CC    cmp         eax,0FFFF
>0067E1D1    jbe         0067E1D8
 0067E1D3    call        @BoundErr
 0067E1D8    mov         word ptr [edi+12],ax
 0067E1DC    movzx       eax,byte ptr [ebp-0FC]
 0067E1E3    mov         edx,0A
 0067E1E8    mul         eax,edx
>0067E1EA    jno         0067E1F1
 0067E1EC    call        @IntOver
 0067E1F1    cmp         eax,0FFFF
>0067E1F6    jbe         0067E1FD
 0067E1F8    call        @BoundErr
 0067E1FD    mov         word ptr [edi+14],ax
>0067E201    jmp         0067E31E
 0067E206    movzx       ecx,byte ptr [ebp-100]
 0067E20D    test        cl,cl
>0067E20F    jbe         0067E23E
 0067E211    movzx       eax,cl
 0067E214    mov         edx,0A
 0067E219    mul         eax,edx
>0067E21B    jno         0067E222
 0067E21D    call        @IntOver
 0067E222    add         eax,3E8
>0067E227    jno         0067E22E
 0067E229    call        @IntOver
 0067E22E    cmp         eax,0FFFF
>0067E233    jbe         0067E23A
 0067E235    call        @BoundErr
 0067E23A    mov         word ptr [edi+0C],ax
 0067E23E    movzx       ecx,byte ptr [ebp-0FF]
 0067E245    test        cl,cl
>0067E247    jbe         0067E276
 0067E249    movzx       eax,cl
 0067E24C    mov         edx,0A
 0067E251    mul         eax,edx
>0067E253    jno         0067E25A
 0067E255    call        @IntOver
 0067E25A    add         eax,3E8
>0067E25F    jno         0067E266
 0067E261    call        @IntOver
 0067E266    cmp         eax,0FFFF
>0067E26B    jbe         0067E272
 0067E26D    call        @BoundErr
 0067E272    mov         word ptr [edi+10],ax
 0067E276    movzx       ecx,byte ptr [ebp-0FE]
 0067E27D    test        cl,cl
>0067E27F    jbe         0067E2AE
 0067E281    movzx       eax,cl
 0067E284    mov         edx,0A
 0067E289    mul         eax,edx
>0067E28B    jno         0067E292
 0067E28D    call        @IntOver
 0067E292    add         eax,3E8
>0067E297    jno         0067E29E
 0067E299    call        @IntOver
 0067E29E    cmp         eax,0FFFF
>0067E2A3    jbe         0067E2AA
 0067E2A5    call        @BoundErr
 0067E2AA    mov         word ptr [edi+0E],ax
 0067E2AE    movzx       ecx,byte ptr [ebp-0FD]
 0067E2B5    test        cl,cl
>0067E2B7    jbe         0067E2E6
 0067E2B9    movzx       eax,cl
 0067E2BC    mov         edx,0A
 0067E2C1    mul         eax,edx
>0067E2C3    jno         0067E2CA
 0067E2C5    call        @IntOver
 0067E2CA    add         eax,3E8
>0067E2CF    jno         0067E2D6
 0067E2D1    call        @IntOver
 0067E2D6    cmp         eax,0FFFF
>0067E2DB    jbe         0067E2E2
 0067E2DD    call        @BoundErr
 0067E2E2    mov         word ptr [edi+12],ax
 0067E2E6    movzx       ecx,byte ptr [ebp-0FC]
 0067E2ED    test        cl,cl
>0067E2EF    jbe         0067E31E
 0067E2F1    movzx       eax,cl
 0067E2F4    mov         edx,0A
 0067E2F9    mul         eax,edx
>0067E2FB    jno         0067E302
 0067E2FD    call        @IntOver
 0067E302    add         eax,3E8
>0067E307    jno         0067E30E
 0067E309    call        @IntOver
 0067E30E    cmp         eax,0FFFF
>0067E313    jbe         0067E31A
 0067E315    call        @BoundErr
 0067E31A    mov         word ptr [edi+14],ax
 0067E31E    cmp         byte ptr [edi+0A],2
>0067E322    jne         0067E330
 0067E324    cmp         word ptr [edi+14],5AA
>0067E32A    jne         0067E330
 0067E32C    mov         byte ptr [edi+0A],0F
 0067E330    lea         ecx,[edi+0C]
 0067E333    movzx       edx,byte ptr [edi+0A]
 0067E337    mov         eax,dword ptr [ebp-4]
 0067E33A    call        TFXPAD.SysUpdateThresholds
 0067E33F    test        al,al
>0067E341    jne         0067E37C
 0067E343    lea         ecx,[edi+10]
 0067E346    movzx       edx,byte ptr [edi+0A]
 0067E34A    mov         eax,dword ptr [ebp-4]
 0067E34D    call        TFXPAD.SysUpdateThresholds
 0067E352    test        al,al
>0067E354    jne         0067E37C
 0067E356    lea         ecx,[edi+0E]
 0067E359    movzx       edx,byte ptr [edi+0A]
 0067E35D    mov         eax,dword ptr [ebp-4]
 0067E360    call        TFXPAD.SysUpdateThresholds
 0067E365    test        al,al
>0067E367    jne         0067E37C
 0067E369    lea         ecx,[edi+12]
 0067E36C    movzx       edx,byte ptr [edi+0A]
 0067E370    mov         eax,dword ptr [ebp-4]
 0067E373    call        TFXPAD.SysUpdateThresholds
 0067E378    test        al,al
>0067E37A    je          0067E390
 0067E37C    mov         eax,dword ptr [ebp-4]
 0067E37F    mov         eax,dword ptr [eax+87664];TFXPAD.CI:TFXPCI
 0067E385    lea         edx,[eax+84]
 0067E38B    call        TFXPCI.SetConfigInfo
 0067E390    cmp         esi,2
>0067E393    jne         0067E39F
 0067E395    movzx       eax,byte ptr [ebp-0FB]
 0067E39C    mov         byte ptr [edi+1B],al
 0067E39F    mov         eax,esi
 0067E3A1    cmp         eax,6
>0067E3A4    ja          0067E8A8
 0067E3AA    jmp         dword ptr [eax*4+67E3B1]
 0067E3AA    dd          0067E8A8
 0067E3AA    dd          0067E837
 0067E3AA    dd          0067E4B7
 0067E3AA    dd          0067E3CD
 0067E3AA    dd          0067E4E2
 0067E3AA    dd          0067E3CD
 0067E3AA    dd          0067E4E2
 0067E3CD    movzx       eax,byte ptr [edi+0A]
 0067E3D1    dec         eax
 0067E3D2    sub         al,13
>0067E3D4    jb          0067E3E5
 0067E3D6    sub         al,4
>0067E3D8    jb          0067E406
 0067E3DA    dec         eax
 0067E3DB    sub         al,3
>0067E3DD    jb          0067E417
>0067E3DF    jne         0067E4A8
 0067E3E5    cmp         byte ptr [ebp-102],1
>0067E3EC    jne         0067E3F7
 0067E3EE    mov         byte ptr [edi+16],3
>0067E3F2    jmp         0067E8A8
 0067E3F7    movzx       eax,byte ptr [ebp-0FA]
 0067E3FE    mov         byte ptr [edi+16],al
>0067E401    jmp         0067E8A8
 0067E406    movzx       eax,byte ptr [ebp-0F9]
 0067E40D    and         al,3
 0067E40F    mov         byte ptr [edi+16],al
>0067E412    jmp         0067E8A8
 0067E417    movzx       eax,byte ptr [ebp-0F9]
 0067E41E    and         al,3
 0067E420    sub         al,1
>0067E422    jb          0067E42C
>0067E424    je          0067E44E
 0067E426    dec         al
>0067E428    je          0067E472
>0067E42A    jmp         0067E494
 0067E42C    movzx       eax,byte ptr [ebp-0F1]
 0067E433    add         eax,64
>0067E436    jno         0067E43D
 0067E438    call        @IntOver
 0067E43D    cmp         eax,0FF
>0067E442    jbe         0067E449
 0067E444    call        @BoundErr
 0067E449    mov         byte ptr [edi+16],al
>0067E44C    jmp         0067E494
 0067E44E    movzx       eax,byte ptr [ebp-0F1]
 0067E455    add         eax,96
>0067E45A    jno         0067E461
 0067E45C    call        @IntOver
 0067E461    cmp         eax,0FF
>0067E466    jbe         0067E46D
 0067E468    call        @BoundErr
 0067E46D    mov         byte ptr [edi+16],al
>0067E470    jmp         0067E494
 0067E472    movzx       eax,byte ptr [ebp-0F1]
 0067E479    add         eax,0C8
>0067E47E    jno         0067E485
 0067E480    call        @IntOver
 0067E485    cmp         eax,0FF
>0067E48A    jbe         0067E491
 0067E48C    call        @BoundErr
 0067E491    mov         byte ptr [edi+16],al
 0067E494    movzx       eax,byte ptr [ebp-0F0]
 0067E49B    and         al,7
 0067E49D    mov         byte ptr [edi+0D9],al
>0067E4A3    jmp         0067E8A8
 0067E4A8    movzx       eax,byte ptr [ebp-0FA]
 0067E4AF    mov         byte ptr [edi+16],al
>0067E4B2    jmp         0067E8A8
 0067E4B7    cmp         byte ptr [edi+0A],1
>0067E4BB    jne         0067E8A8
 0067E4C1    cmp         byte ptr [ebp-102],1
>0067E4C8    jne         0067E4D3
 0067E4CA    mov         byte ptr [edi+16],3
>0067E4CE    jmp         0067E8A8
 0067E4D3    movzx       eax,byte ptr [ebp-0FA]
 0067E4DA    mov         byte ptr [edi+16],al
>0067E4DD    jmp         0067E8A8
 0067E4E2    cmp         byte ptr [edi+0B],1
>0067E4E6    jne         0067E7B0
 0067E4EC    movzx       eax,byte ptr [edi+0A]
 0067E4F0    cmp         eax,2C
>0067E4F3    ja          0067E7A6
 0067E4F9    movzx       eax,byte ptr [eax+67E507]
 0067E500    jmp         dword ptr [eax*4+67E534]
 0067E500    db          0
 0067E500    db          1
 0067E500    db          1
 0067E500    db          1
 0067E500    db          1
 0067E500    db          1
 0067E500    db          1
 0067E500    db          1
 0067E500    db          1
 0067E500    db          1
 0067E500    db          1
 0067E500    db          1
 0067E500    db          1
 0067E500    db          0
 0067E500    db          0
 0067E500    db          0
 0067E500    db          1
 0067E500    db          1
 0067E500    db          1
 0067E500    db          1
 0067E500    db          1
 0067E500    db          1
 0067E500    db          2
 0067E500    db          2
 0067E500    db          1
 0067E500    db          0
 0067E500    db          2
 0067E500    db          1
 0067E500    db          1
 0067E500    db          1
 0067E500    db          0
 0067E500    db          0
 0067E500    db          0
 0067E500    db          0
 0067E500    db          1
 0067E500    db          2
 0067E500    db          1
 0067E500    db          0
 0067E500    db          0
 0067E500    db          0
 0067E500    db          3
 0067E500    db          3
 0067E500    db          0
 0067E500    db          3
 0067E500    db          3
 0067E500    dd          0067E7A6
 0067E500    dd          0067E544
 0067E500    dd          0067E565
 0067E500    dd          0067E588
 0067E544    cmp         byte ptr [ebp-102],1
>0067E54B    jne         0067E556
 0067E54D    mov         byte ptr [edi+16],3
>0067E551    jmp         0067E7B0
 0067E556    movzx       eax,byte ptr [ebp-0FA]
 0067E55D    mov         byte ptr [edi+16],al
>0067E560    jmp         0067E7B0
 0067E565    test        byte ptr [ebp-0F9],1
>0067E56C    je          0067E572
 0067E56E    mov         byte ptr [edi+16],1
 0067E572    test        byte ptr [ebp-0F9],2
>0067E579    je          0067E7B0
 0067E57F    mov         byte ptr [edi+16],2
>0067E583    jmp         0067E7B0
 0067E588    movzx       eax,word ptr [ebp-6]
 0067E58C    dec         eax
 0067E58D    sub         ax,5
>0067E591    jb          0067E5A2
 0067E593    sub         ax,3B
>0067E597    jb          0067E64A
>0067E59D    jmp         0067E6F2
 0067E5A2    movzx       eax,byte ptr [ebp-0F9]
 0067E5A9    and         al,3
 0067E5AB    sub         al,1
>0067E5AD    jb          0067E5BA
>0067E5AF    je          0067E5FA
 0067E5B1    dec         al
>0067E5B3    je          0067E61C
>0067E5B5    jmp         0067E63E
 0067E5BA    cmp         byte ptr [ebp-0CF],0
>0067E5C1    jne         0067E5C9
 0067E5C3    mov         byte ptr [edi+16],3
>0067E5C7    jmp         0067E63E
 0067E5C9    test        byte ptr [ebp-0CE],4
>0067E5D0    jne         0067E5D8
 0067E5D2    mov         byte ptr [edi+16],6C
>0067E5D6    jmp         0067E63E
 0067E5D8    movzx       eax,byte ptr [ebp-0CF]
 0067E5DF    add         eax,64
>0067E5E2    jno         0067E5E9
 0067E5E4    call        @IntOver
 0067E5E9    cmp         eax,0FF
>0067E5EE    jbe         0067E5F5
 0067E5F0    call        @BoundErr
 0067E5F5    mov         byte ptr [edi+16],al
>0067E5F8    jmp         0067E63E
 0067E5FA    movzx       eax,byte ptr [ebp-0CF]
 0067E601    add         eax,64
>0067E604    jno         0067E60B
 0067E606    call        @IntOver
 0067E60B    cmp         eax,0FF
>0067E610    jbe         0067E617
 0067E612    call        @BoundErr
 0067E617    mov         byte ptr [edi+16],al
>0067E61A    jmp         0067E63E
 0067E61C    movzx       eax,byte ptr [ebp-0CF]
 0067E623    add         eax,0C8
>0067E628    jno         0067E62F
 0067E62A    call        @IntOver
 0067E62F    cmp         eax,0FF
>0067E634    jbe         0067E63B
 0067E636    call        @BoundErr
 0067E63B    mov         byte ptr [edi+16],al
 0067E63E    mov         byte ptr [edi+0D9],8
>0067E645    jmp         0067E7B0
 0067E64A    movzx       eax,byte ptr [ebp-0F9]
 0067E651    and         al,3
 0067E653    sub         al,1
>0067E655    jb          0067E662
>0067E657    je          0067E6A2
 0067E659    dec         al
>0067E65B    je          0067E6C4
>0067E65D    jmp         0067E6E6
 0067E662    cmp         byte ptr [ebp-0F1],0
>0067E669    jne         0067E671
 0067E66B    mov         byte ptr [edi+16],3
>0067E66F    jmp         0067E6E6
 0067E671    test        byte ptr [ebp-0F0],4
>0067E678    jne         0067E680
 0067E67A    mov         byte ptr [edi+16],6C
>0067E67E    jmp         0067E6E6
 0067E680    movzx       eax,byte ptr [ebp-0F1]
 0067E687    add         eax,64
>0067E68A    jno         0067E691
 0067E68C    call        @IntOver
 0067E691    cmp         eax,0FF
>0067E696    jbe         0067E69D
 0067E698    call        @BoundErr
 0067E69D    mov         byte ptr [edi+16],al
>0067E6A0    jmp         0067E6E6
 0067E6A2    movzx       eax,byte ptr [ebp-0F1]
 0067E6A9    add         eax,64
>0067E6AC    jno         0067E6B3
 0067E6AE    call        @IntOver
 0067E6B3    cmp         eax,0FF
>0067E6B8    jbe         0067E6BF
 0067E6BA    call        @BoundErr
 0067E6BF    mov         byte ptr [edi+16],al
>0067E6C2    jmp         0067E6E6
 0067E6C4    movzx       eax,byte ptr [ebp-0F1]
 0067E6CB    add         eax,0C8
>0067E6D0    jno         0067E6D7
 0067E6D2    call        @IntOver
 0067E6D7    cmp         eax,0FF
>0067E6DC    jbe         0067E6E3
 0067E6DE    call        @BoundErr
 0067E6E3    mov         byte ptr [edi+16],al
 0067E6E6    mov         byte ptr [edi+0D9],8
>0067E6ED    jmp         0067E7B0
 0067E6F2    movzx       eax,byte ptr [ebp-0F9]
 0067E6F9    and         al,3
 0067E6FB    sub         al,1
>0067E6FD    jb          0067E707
>0067E6FF    je          0067E738
 0067E701    dec         al
>0067E703    je          0067E75A
>0067E705    jmp         0067E77C
 0067E707    cmp         byte ptr [ebp-0F1],0
>0067E70E    jne         0067E716
 0067E710    mov         byte ptr [edi+16],3
>0067E714    jmp         0067E77C
 0067E716    movzx       eax,byte ptr [ebp-0F1]
 0067E71D    add         eax,64
>0067E720    jno         0067E727
 0067E722    call        @IntOver
 0067E727    cmp         eax,0FF
>0067E72C    jbe         0067E733
 0067E72E    call        @BoundErr
 0067E733    mov         byte ptr [edi+16],al
>0067E736    jmp         0067E77C
 0067E738    movzx       eax,byte ptr [ebp-0F1]
 0067E73F    add         eax,64
>0067E742    jno         0067E749
 0067E744    call        @IntOver
 0067E749    cmp         eax,0FF
>0067E74E    jbe         0067E755
 0067E750    call        @BoundErr
 0067E755    mov         byte ptr [edi+16],al
>0067E758    jmp         0067E77C
 0067E75A    movzx       eax,byte ptr [ebp-0F1]
 0067E761    add         eax,0C8
>0067E766    jno         0067E76D
 0067E768    call        @IntOver
 0067E76D    cmp         eax,0FF
>0067E772    jbe         0067E779
 0067E774    call        @BoundErr
 0067E779    mov         byte ptr [edi+16],al
 0067E77C    movzx       eax,byte ptr [ebp-0F0]
 0067E783    and         al,3
 0067E785    movzx       eax,al
 0067E788    add         eax,8
>0067E78B    jno         0067E792
 0067E78D    call        @IntOver
 0067E792    cmp         eax,0FF
>0067E797    jbe         0067E79E
 0067E799    call        @BoundErr
 0067E79E    mov         byte ptr [edi+0D9],al
>0067E7A4    jmp         0067E7B0
 0067E7A6    movzx       eax,byte ptr [ebp-0FA]
 0067E7AD    mov         byte ptr [edi+16],al
 0067E7B0    cmp         byte ptr [edi+0B],0
>0067E7B4    jne         0067E8A8
 0067E7BA    movzx       eax,byte ptr [edi+0A]
 0067E7BE    cmp         eax,0F
>0067E7C1    ja          0067E82B
 0067E7C3    movzx       eax,byte ptr [eax+67E7D1]
 0067E7CA    jmp         dword ptr [eax*4+67E7E1]
 0067E7CA    db          0
 0067E7CA    db          1
 0067E7CA    db          1
 0067E7CA    db          1
 0067E7CA    db          1
 0067E7CA    db          2
 0067E7CA    db          1
 0067E7CA    db          0
 0067E7CA    db          1
 0067E7CA    db          1
 0067E7CA    db          1
 0067E7CA    db          1
 0067E7CA    db          0
 0067E7CA    db          1
 0067E7CA    db          1
 0067E7CA    db          1
 0067E7CA    dd          0067E82B
 0067E7CA    dd          0067E7ED
 0067E7CA    dd          0067E80E
 0067E7ED    cmp         byte ptr [ebp-102],1
>0067E7F4    jne         0067E7FF
 0067E7F6    mov         byte ptr [edi+16],3
>0067E7FA    jmp         0067E8A8
 0067E7FF    movzx       eax,byte ptr [ebp-0FA]
 0067E806    mov         byte ptr [edi+16],al
>0067E809    jmp         0067E8A8
 0067E80E    movzx       eax,byte ptr [ebp-0F9]
 0067E815    test        al,1
>0067E817    je          0067E81D
 0067E819    mov         byte ptr [edi+16],1
 0067E81D    test        al,2
>0067E81F    je          0067E8A8
 0067E825    mov         byte ptr [edi+16],2
>0067E829    jmp         0067E8A8
 0067E82B    movzx       eax,byte ptr [ebp-0FA]
 0067E832    mov         byte ptr [edi+16],al
>0067E835    jmp         0067E8A8
 0067E837    movzx       eax,byte ptr [edi+0A]
 0067E83B    cmp         eax,0F
>0067E83E    ja          0067E89E
 0067E840    movzx       eax,byte ptr [eax+67E84E]
 0067E847    jmp         dword ptr [eax*4+67E85E]
 0067E847    db          0
 0067E847    db          1
 0067E847    db          1
 0067E847    db          1
 0067E847    db          1
 0067E847    db          2
 0067E847    db          1
 0067E847    db          0
 0067E847    db          1
 0067E847    db          1
 0067E847    db          1
 0067E847    db          1
 0067E847    db          0
 0067E847    db          1
 0067E847    db          1
 0067E847    db          1
 0067E847    dd          0067E89E
 0067E847    dd          0067E86A
 0067E847    dd          0067E885
 0067E86A    cmp         byte ptr [ebp-102],1
>0067E871    jne         0067E879
 0067E873    mov         byte ptr [edi+16],3
>0067E877    jmp         0067E8A8
 0067E879    movzx       eax,byte ptr [ebp-0FA]
 0067E880    mov         byte ptr [edi+16],al
>0067E883    jmp         0067E8A8
 0067E885    movzx       eax,byte ptr [ebp-0F9]
 0067E88C    test        al,1
>0067E88E    je          0067E894
 0067E890    mov         byte ptr [edi+16],1
 0067E894    test        al,2
>0067E896    je          0067E8A8
 0067E898    mov         byte ptr [edi+16],2
>0067E89C    jmp         0067E8A8
 0067E89E    movzx       eax,byte ptr [ebp-0FA]
 0067E8A5    mov         byte ptr [edi+16],al
 0067E8A8    mov         eax,esi
 0067E8AA    dec         eax
>0067E8AB    je          0067E909
 0067E8AD    sub         eax,3
>0067E8B0    je          0067E8B7
 0067E8B2    sub         eax,2
>0067E8B5    jne         0067E926
 0067E8B7    cmp         byte ptr [edi+0B],1
>0067E8BB    jne         0067E8E4
 0067E8BD    movzx       eax,byte ptr [edi+0A]
 0067E8C1    movzx       eax,al
 0067E8C4    bt          dword ptr ds:[7C2740],eax;gvar_007C2740:Word
>0067E8CB    jae         0067E8E4
 0067E8CD    movzx       eax,byte ptr [ebp-0F9]
 0067E8D4    and         al,1
 0067E8D6    cmp         al,1
>0067E8D8    jne         0067E8E0
 0067E8DA    mov         byte ptr [edi+21],1
>0067E8DE    jmp         0067E8E4
 0067E8E0    mov         byte ptr [edi+21],0
 0067E8E4    cmp         byte ptr [edi+0B],0
>0067E8E8    jne         0067E926
 0067E8EA    cmp         byte ptr [edi+0A],4
>0067E8EE    jne         0067E926
 0067E8F0    movzx       eax,byte ptr [ebp-0F9]
 0067E8F7    and         al,1
 0067E8F9    cmp         al,1
>0067E8FB    jne         0067E903
 0067E8FD    mov         byte ptr [edi+21],1
>0067E901    jmp         0067E926
 0067E903    mov         byte ptr [edi+21],0
>0067E907    jmp         0067E926
 0067E909    cmp         byte ptr [edi+0A],4
>0067E90D    jne         0067E926
 0067E90F    movzx       eax,byte ptr [ebp-0F9]
 0067E916    and         al,1
 0067E918    cmp         al,1
>0067E91A    jne         0067E922
 0067E91C    mov         byte ptr [edi+21],1
>0067E920    jmp         0067E926
 0067E922    mov         byte ptr [edi+21],0
 0067E926    movzx       eax,byte ptr [ebp-0F9]
 0067E92D    test        al,4
>0067E92F    je          0067E935
 0067E931    mov         byte ptr [edi+19],1
 0067E935    test        al,8
>0067E937    je          0067E93D
 0067E939    mov         byte ptr [edi+19],2
 0067E93D    mov         eax,ebx
 0067E93F    sub         al,1
>0067E941    jb          0067E949
 0067E943    sub         al,2
>0067E945    je          0067E95F
>0067E947    jmp         0067E973
 0067E949    cmp         word ptr [ebp-6],4
>0067E94E    jb          0067E973
 0067E950    test        byte ptr [ebp-0D2],1
>0067E957    je          0067E973
 0067E959    mov         byte ptr [edi+19],3
>0067E95D    jmp         0067E973
 0067E95F    cmp         word ptr [ebp-6],4
>0067E964    jb          0067E973
 0067E966    test        byte ptr [ebp-0F4],1
>0067E96D    je          0067E973
 0067E96F    mov         byte ptr [edi+19],3
 0067E973    test        byte ptr [ebp-0F9],10
>0067E97A    je          0067E980
 0067E97C    mov         byte ptr [edi+1A],1
 0067E980    mov         eax,ebx
 0067E982    sub         al,1
>0067E984    jb          0067E98C
 0067E986    sub         al,2
>0067E988    je          0067E9A2
>0067E98A    jmp         0067E9B6
 0067E98C    cmp         word ptr [ebp-6],4
>0067E991    jb          0067E9B6
 0067E993    test        byte ptr [ebp-0D2],2
>0067E99A    je          0067E9B6
 0067E99C    mov         byte ptr [edi+1A],2
>0067E9A0    jmp         0067E9B6
 0067E9A2    cmp         word ptr [ebp-6],4
>0067E9A7    jb          0067E9B6
 0067E9A9    test        byte ptr [ebp-0F4],2
>0067E9B0    je          0067E9B6
 0067E9B2    mov         byte ptr [edi+1A],2
 0067E9B6    mov         eax,ebx
 0067E9B8    sub         al,3
>0067E9BA    je          0067E9BE
>0067E9BC    jmp         0067E9D2
 0067E9BE    cmp         word ptr [ebp-6],6
>0067E9C3    jb          0067E9D2
 0067E9C5    test        byte ptr [ebp-0F4],4
 0067E9CC    setne       al
 0067E9CF    mov         byte ptr [edi+22],al
 0067E9D2    mov         eax,esi
 0067E9D4    cmp         eax,6
>0067E9D7    ja          0067EA1E
 0067E9D9    jmp         dword ptr [eax*4+67E9E0]
 0067E9D9    dd          0067EA1E
 0067E9D9    dd          0067EA14
 0067E9D9    dd          0067EA1E
 0067E9D9    dd          0067E9FC
 0067E9D9    dd          0067EA08
 0067E9D9    dd          0067E9FC
 0067E9D9    dd          0067EA08
 0067E9FC    movzx       eax,byte ptr [ebp-0F8]
 0067EA03    mov         byte ptr [edi+17],al
>0067EA06    jmp         0067EA1E
 0067EA08    movzx       eax,byte ptr [ebp-0F8]
 0067EA0F    mov         byte ptr [edi+17],al
>0067EA12    jmp         0067EA1E
 0067EA14    movzx       eax,byte ptr [ebp-0F8]
 0067EA1B    mov         byte ptr [edi+17],al
 0067EA1E    movzx       eax,byte ptr [ebp-0F7]
 0067EA25    mov         byte ptr [edi+18],al
 0067EA28    mov         eax,esi
 0067EA2A    cmp         eax,6
>0067EA2D    ja          0067ECD7
 0067EA33    jmp         dword ptr [eax*4+67EA3A]
 0067EA33    dd          0067ECD7
 0067EA33    dd          0067EC87
 0067EA33    dd          0067EB1E
 0067EA33    dd          0067EA56
 0067EA33    dd          0067EB3B
 0067EA33    dd          0067EA56
 0067EA33    dd          0067EB3B
 0067EA56    cmp         byte ptr [edi+0A],0A
>0067EA5A    jne         0067EA7F
 0067EA5C    movzx       eax,byte ptr [ebp-0F4]
 0067EA63    and         al,10
 0067EA65    cmp         al,10
>0067EA67    jne         0067EA73
 0067EA69    mov         byte ptr [edi+0B],2
 0067EA6D    mov         byte ptr [edi+1E],3
>0067EA71    jmp         0067EA97
 0067EA73    movzx       eax,byte ptr [ebp-0F6]
 0067EA7A    mov         byte ptr [edi+1E],al
>0067EA7D    jmp         0067EA97
 0067EA7F    push        21
 0067EA81    mov         ecx,7C23A8;gvar_007C23A8
 0067EA86    xor         edx,edx
 0067EA88    movzx       eax,byte ptr [ebp-0F6]
 0067EA8F    call        0067DAB8
 0067EA94    mov         byte ptr [edi+1E],al
 0067EA97    mov         eax,ebx
 0067EA99    sub         al,1
>0067EA9B    jb          0067EAA3
 0067EA9D    sub         al,2
>0067EA9F    je          0067EABD
>0067EAA1    jmp         0067EAD5
 0067EAA3    push        19
 0067EAA5    mov         ecx,7C24FC
 0067EAAA    xor         edx,edx
 0067EAAC    movzx       eax,byte ptr [ebp-0F3]
 0067EAB3    call        0067DAB8
 0067EAB8    mov         byte ptr [edi+1F],al
>0067EABB    jmp         0067EAD5
 0067EABD    push        19
 0067EABF    mov         ecx,7C24FC
 0067EAC4    xor         edx,edx
 0067EAC6    movzx       eax,byte ptr [ebp-0F5]
 0067EACD    call        0067DAB8
 0067EAD2    mov         byte ptr [edi+1F],al
 0067EAD5    cmp         word ptr [ebp-6],20
>0067EADA    jb          0067ECD7
 0067EAE0    movzx       eax,byte ptr [edi+0A]
 0067EAE4    movzx       eax,al
 0067EAE7    bt          dword ptr ds:[7C26A0],eax;gvar_007C26A0
>0067EAEE    jae         0067ECD7
 0067EAF4    test        byte ptr [ebp-0F4],8
>0067EAFB    je          0067ECD7
 0067EB01    push        19
 0067EB03    mov         ecx,7C24FC
 0067EB08    xor         edx,edx
 0067EB0A    movzx       eax,byte ptr [ebp-0EF]
 0067EB11    call        0067DAB8
 0067EB16    mov         byte ptr [edi+23],al
>0067EB19    jmp         0067ECD7
 0067EB1E    push        21
 0067EB20    mov         ecx,7C23A8;gvar_007C23A8
 0067EB25    xor         edx,edx
 0067EB27    movzx       eax,byte ptr [ebp-0F6]
 0067EB2E    call        0067DAB8
 0067EB33    mov         byte ptr [edi+0B],al
>0067EB36    jmp         0067ECD7
 0067EB3B    movzx       eax,byte ptr [edi+0B]
 0067EB3F    sub         al,1
>0067EB41    jb          0067EC16
>0067EB47    jne         0067ECD7
 0067EB4D    movzx       eax,byte ptr [edi+0A]
 0067EB51    movzx       eax,al
 0067EB54    bt          dword ptr ds:[7C2740],eax;gvar_007C2740:Word
>0067EB5B    jae         0067EB75
 0067EB5D    push        20
 0067EB5F    mov         ecx,7C1A21
 0067EB64    xor         edx,edx
 0067EB66    movzx       eax,byte ptr [ebp-0F6]
 0067EB6D    call        0067DAB8
 0067EB72    mov         byte ptr [edi+1E],al
 0067EB75    movzx       eax,byte ptr [edi+0A]
 0067EB79    movzx       eax,al
 0067EB7C    bt          dword ptr ds:[7C2720],eax;gvar_007C2720
>0067EB83    jae         0067EB8F
 0067EB85    movzx       eax,byte ptr [ebp-0F6]
 0067EB8C    mov         byte ptr [edi+1E],al
 0067EB8F    mov         eax,ebx
 0067EB91    sub         al,1
>0067EB93    jb          0067EB9B
 0067EB95    sub         al,2
>0067EB97    je          0067EBB5
>0067EB99    jmp         0067EBCD
 0067EB9B    push        19
 0067EB9D    mov         ecx,7C24FC
 0067EBA2    xor         edx,edx
 0067EBA4    movzx       eax,byte ptr [ebp-0F3]
 0067EBAB    call        0067DAB8
 0067EBB0    mov         byte ptr [edi+1F],al
>0067EBB3    jmp         0067EBCD
 0067EBB5    push        19
 0067EBB7    mov         ecx,7C24FC
 0067EBBC    xor         edx,edx
 0067EBBE    movzx       eax,byte ptr [ebp-0F5]
 0067EBC5    call        0067DAB8
 0067EBCA    mov         byte ptr [edi+1F],al
 0067EBCD    cmp         word ptr [ebp-6],41
>0067EBD2    jb          0067ECD7
 0067EBD8    movzx       eax,byte ptr [edi+0A]
 0067EBDC    movzx       eax,al
 0067EBDF    bt          dword ptr ds:[7C27C0],eax;gvar_007C27C0
>0067EBE6    jae         0067ECD7
 0067EBEC    test        byte ptr [ebp-0F4],8
>0067EBF3    je          0067ECD7
 0067EBF9    push        19
 0067EBFB    mov         ecx,7C24FC
 0067EC00    xor         edx,edx
 0067EC02    movzx       eax,byte ptr [ebp-0EF]
 0067EC09    call        0067DAB8
 0067EC0E    mov         byte ptr [edi+23],al
>0067EC11    jmp         0067ECD7
 0067EC16    cmp         byte ptr [edi+0A],4
>0067EC1A    jne         0067EC34
 0067EC1C    push        20
 0067EC1E    mov         ecx,7C1A21
 0067EC23    xor         edx,edx
 0067EC25    movzx       eax,byte ptr [ebp-0F6]
 0067EC2C    call        0067DAB8
 0067EC31    mov         byte ptr [edi+1E],al
 0067EC34    cmp         byte ptr [edi+0A],6
>0067EC38    jne         0067EC44
 0067EC3A    movzx       eax,byte ptr [ebp-0F6]
 0067EC41    mov         byte ptr [edi+1E],al
 0067EC44    mov         eax,ebx
 0067EC46    sub         al,1
>0067EC48    jb          0067EC53
 0067EC4A    sub         al,2
>0067EC4C    je          0067EC6D
>0067EC4E    jmp         0067ECD7
 0067EC53    push        19
 0067EC55    mov         ecx,7C24FC
 0067EC5A    xor         edx,edx
 0067EC5C    movzx       eax,byte ptr [ebp-0F3]
 0067EC63    call        0067DAB8
 0067EC68    mov         byte ptr [edi+1F],al
>0067EC6B    jmp         0067ECD7
 0067EC6D    push        19
 0067EC6F    mov         ecx,7C24FC
 0067EC74    xor         edx,edx
 0067EC76    movzx       eax,byte ptr [ebp-0F5]
 0067EC7D    call        0067DAB8
 0067EC82    mov         byte ptr [edi+1F],al
>0067EC85    jmp         0067ECD7
 0067EC87    movzx       eax,byte ptr [edi+0A]
 0067EC8B    sub         al,4
>0067EC8D    je          0067EC99
 0067EC8F    dec         al
>0067EC91    je          0067ECB3
 0067EC93    sub         al,0A
>0067EC95    jne         0067ECCD
>0067EC97    jmp         0067ECD7
 0067EC99    push        21
 0067EC9B    mov         ecx,7C23A8;gvar_007C23A8
 0067ECA0    xor         edx,edx
 0067ECA2    movzx       eax,byte ptr [ebp-0F6]
 0067ECA9    call        0067DAB8
 0067ECAE    mov         byte ptr [edi+0B],al
>0067ECB1    jmp         0067ECD7
 0067ECB3    push        18
 0067ECB5    mov         ecx,7C1694
 0067ECBA    xor         edx,edx
 0067ECBC    movzx       eax,byte ptr [ebp-0F6]
 0067ECC3    call        0067DAB8
 0067ECC8    mov         byte ptr [edi+0B],al
>0067ECCB    jmp         0067ECD7
 0067ECCD    movzx       eax,byte ptr [ebp-0F6]
 0067ECD4    mov         byte ptr [edi+0B],al
 0067ECD7    mov         eax,ebx
 0067ECD9    sub         al,1
>0067ECDB    jb          0067ECE6
 0067ECDD    sub         al,2
>0067ECDF    je          0067ED01
>0067ECE1    jmp         0067EDA3
 0067ECE6    movzx       eax,byte ptr [ebp-0F5]
 0067ECED    mov         word ptr [edi+6],ax
 0067ECF1    movzx       eax,byte ptr [ebp-0F4]
 0067ECF8    mov         word ptr [edi+8],ax
>0067ECFC    jmp         0067EDA3
 0067ED01    movzx       eax,byte ptr [ebp-0EE]
 0067ED08    mov         edx,100
 0067ED0D    mul         eax,edx
>0067ED0F    jno         0067ED16
 0067ED11    call        @IntOver
 0067ED16    movzx       edx,byte ptr [ebp-0ED]
 0067ED1D    add         eax,edx
>0067ED1F    jno         0067ED26
 0067ED21    call        @IntOver
 0067ED26    cmp         eax,0FFFF
>0067ED2B    jbe         0067ED32
 0067ED2D    call        @BoundErr
 0067ED32    mov         word ptr [edi+6],ax
 0067ED36    movzx       eax,byte ptr [ebp-0EC]
 0067ED3D    mov         edx,100
 0067ED42    mul         eax,edx
>0067ED44    jno         0067ED4B
 0067ED46    call        @IntOver
 0067ED4B    movzx       edx,byte ptr [ebp-0EB]
 0067ED52    add         eax,edx
>0067ED54    jno         0067ED5B
 0067ED56    call        @IntOver
 0067ED5B    cmp         eax,0FFFF
>0067ED60    jbe         0067ED67
 0067ED62    call        @BoundErr
 0067ED67    mov         word ptr [edi+8],ax
 0067ED6B    movzx       eax,byte ptr [ebp-0E8]
 0067ED72    mov         edx,100
 0067ED77    mul         eax,edx
>0067ED79    jno         0067ED80
 0067ED7B    call        @IntOver
 0067ED80    movzx       edx,byte ptr [ebp-0E7]
 0067ED87    add         eax,edx
>0067ED89    jno         0067ED90
 0067ED8B    call        @IntOver
 0067ED90    cmp         eax,0FFFF
>0067ED95    jbe         0067ED9C
 0067ED97    call        @BoundErr
 0067ED9C    mov         word ptr [edi+0D2],ax
 0067EDA3    cmp         word ptr [ebp-6],4
>0067EDA8    jb          0067EDCC
 0067EDAA    mov         eax,ebx
 0067EDAC    sub         al,1
>0067EDAE    jb          0067EDB6
 0067EDB0    sub         al,2
>0067EDB2    je          0067EDC2
>0067EDB4    jmp         0067EDCC
 0067EDB6    movzx       eax,byte ptr [ebp-0D1]
 0067EDBD    mov         byte ptr [edi+20],al
>0067EDC0    jmp         0067EDCC
 0067EDC2    movzx       eax,byte ptr [ebp-0F3]
 0067EDC9    mov         byte ptr [edi+20],al
 0067EDCC    mov         eax,ebx
 0067EDCE    sub         al,1
>0067EDD0    jb          0067EDDB
 0067EDD2    sub         al,2
>0067EDD4    je          0067EE17
>0067EDD6    jmp         0067EEDE
 0067EDDB    test        byte ptr [ebp-0F2],1
>0067EDE2    jbe         0067EDED
 0067EDE4    mov         byte ptr [edi+28],1
>0067EDE8    jmp         0067EEDE
 0067EDED    test        byte ptr [ebp-0D3],8
>0067EDF4    jbe         0067EDFF
 0067EDF6    mov         byte ptr [edi+28],2
>0067EDFA    jmp         0067EEDE
 0067EDFF    lea         edx,[edi+2A]
 0067EE02    lea         eax,[ebp-0F2]
 0067EE08    mov         ecx,20
 0067EE0D    call        Move
>0067EE12    jmp         0067EEDE
 0067EE17    movzx       eax,byte ptr [ebp-0EA]
 0067EE1E    mov         edx,100
 0067EE23    mul         eax,edx
>0067EE25    jno         0067EE2C
 0067EE27    call        @IntOver
 0067EE2C    movzx       edx,byte ptr [ebp-0E9]
 0067EE33    add         eax,edx
>0067EE35    jno         0067EE3C
 0067EE37    call        @IntOver
 0067EE3C    cmp         eax,0FFFF
>0067EE41    jbe         0067EE48
 0067EE43    call        @BoundErr
 0067EE48    mov         word ptr [edi+24],ax
 0067EE4C    movzx       eax,word ptr [edi+24]
 0067EE50    mov         edx,dword ptr ds:[7C47B0];^gvar_008DF5B0:TCGData
 0067EE56    mov         edx,dword ptr [edx]
 0067EE58    cmp         eax,dword ptr [edx+8]
>0067EE5B    jge         0067EE7C
 0067EE5D    movzx       edx,word ptr [edi+24]
 0067EE61    mov         eax,[007C47B0];^gvar_008DF5B0:TCGData
 0067EE66    mov         eax,dword ptr [eax]
 0067EE68    call        TCGData.GetCGRec
 0067EE6D    lea         edx,[edi+26]
 0067EE70    mov         ecx,82
 0067EE75    call        Move
>0067EE7A    jmp         0067EED8
 0067EE7C    cmp         word ptr [edi+24],0FFFF
>0067EE82    jne         0067EED8
 0067EE84    cmp         esi,6
>0067EE87    ja          0067EED8
 0067EE89    jmp         dword ptr [esi*4+67EE90]
 0067EE89    dd          0067EED8
 0067EE89    dd          0067EEC4
 0067EE89    dd          0067EED8
 0067EE89    dd          0067EEAC
 0067EE89    dd          0067EEB8
 0067EE89    dd          0067EEAC
 0067EE89    dd          0067EEB8
 0067EEAC    cmp         byte ptr [edi+1F],0
>0067EEB0    je          0067EED8
 0067EEB2    mov         byte ptr [edi+28],1
>0067EEB6    jmp         0067EED8
 0067EEB8    cmp         byte ptr [edi+1F],0
>0067EEBC    je          0067EED8
 0067EEBE    mov         byte ptr [edi+28],1
>0067EEC2    jmp         0067EED8
 0067EEC4    movzx       eax,byte ptr [edi+0A]
 0067EEC8    movzx       eax,al
 0067EECB    bt          dword ptr ds:[7C25E0],eax;gvar_007C25E0
>0067EED2    jae         0067EED8
 0067EED4    mov         byte ptr [edi+28],1
 0067EED8    mov         word ptr [edi+24],0
 0067EEDE    sub         bl,3
>0067EEE1    je          0067EEE8
>0067EEE3    jmp         0067F380
 0067EEE8    movzx       eax,byte ptr [ebp-0E6]
 0067EEEF    mov         edx,100
 0067EEF4    mul         eax,edx
>0067EEF6    jno         0067EEFD
 0067EEF8    call        @IntOver
 0067EEFD    movzx       edx,byte ptr [ebp-0E5]
 0067EF04    add         eax,edx
>0067EF06    jno         0067EF0D
 0067EF08    call        @IntOver
 0067EF0D    cmp         eax,0FFFF
>0067EF12    jbe         0067EF19
 0067EF14    call        @BoundErr
 0067EF19    mov         word ptr [edi+0A8],ax
 0067EF20    movzx       eax,byte ptr [ebp-0E4]
 0067EF27    mov         edx,100
 0067EF2C    mul         eax,edx
>0067EF2E    jno         0067EF35
 0067EF30    call        @IntOver
 0067EF35    movzx       edx,byte ptr [ebp-0E3]
 0067EF3C    add         eax,edx
>0067EF3E    jno         0067EF45
 0067EF40    call        @IntOver
 0067EF45    cmp         eax,0FFFF
>0067EF4A    jbe         0067EF51
 0067EF4C    call        @BoundErr
 0067EF51    mov         word ptr [edi+0AA],ax
 0067EF58    movzx       eax,byte ptr [ebp-0E2]
 0067EF5F    mov         edx,100
 0067EF64    mul         eax,edx
>0067EF66    jno         0067EF6D
 0067EF68    call        @IntOver
 0067EF6D    movzx       edx,byte ptr [ebp-0E1]
 0067EF74    add         eax,edx
>0067EF76    jno         0067EF7D
 0067EF78    call        @IntOver
 0067EF7D    cmp         eax,0FFFF
>0067EF82    jbe         0067EF89
 0067EF84    call        @BoundErr
 0067EF89    mov         word ptr [edi+0AC],ax
 0067EF90    movzx       eax,byte ptr [ebp-0E0]
 0067EF97    mov         edx,100
 0067EF9C    mul         eax,edx
>0067EF9E    jno         0067EFA5
 0067EFA0    call        @IntOver
 0067EFA5    movzx       edx,byte ptr [ebp-0DF]
 0067EFAC    add         eax,edx
>0067EFAE    jno         0067EFB5
 0067EFB0    call        @IntOver
 0067EFB5    cmp         eax,0FFFF
>0067EFBA    jbe         0067EFC1
 0067EFBC    call        @BoundErr
 0067EFC1    mov         word ptr [edi+0AE],ax
 0067EFC8    movzx       eax,byte ptr [ebp-0DE]
 0067EFCF    mov         edx,100
 0067EFD4    mul         eax,edx
>0067EFD6    jno         0067EFDD
 0067EFD8    call        @IntOver
 0067EFDD    movzx       edx,byte ptr [ebp-0DD]
 0067EFE4    add         eax,edx
>0067EFE6    jno         0067EFED
 0067EFE8    call        @IntOver
 0067EFED    cmp         eax,0FFFF
>0067EFF2    jbe         0067EFF9
 0067EFF4    call        @BoundErr
 0067EFF9    mov         word ptr [edi+0B0],ax
 0067F000    movzx       eax,byte ptr [ebp-0DC]
 0067F007    mov         edx,100
 0067F00C    mul         eax,edx
>0067F00E    jno         0067F015
 0067F010    call        @IntOver
 0067F015    movzx       edx,byte ptr [ebp-0DB]
 0067F01C    add         eax,edx
>0067F01E    jno         0067F025
 0067F020    call        @IntOver
 0067F025    cmp         eax,0FFFF
>0067F02A    jbe         0067F031
 0067F02C    call        @BoundErr
 0067F031    mov         word ptr [edi+0B2],ax
 0067F038    movzx       eax,byte ptr [ebp-0DA]
 0067F03F    mov         edx,100
 0067F044    mul         eax,edx
>0067F046    jno         0067F04D
 0067F048    call        @IntOver
 0067F04D    movzx       edx,byte ptr [ebp-0D9]
 0067F054    add         eax,edx
>0067F056    jno         0067F05D
 0067F058    call        @IntOver
 0067F05D    cmp         eax,0FFFF
>0067F062    jbe         0067F069
 0067F064    call        @BoundErr
 0067F069    mov         word ptr [edi+0B4],ax
 0067F070    movzx       eax,byte ptr [ebp-0D8]
 0067F077    mov         edx,100
 0067F07C    mul         eax,edx
>0067F07E    jno         0067F085
 0067F080    call        @IntOver
 0067F085    movzx       edx,byte ptr [ebp-0D7]
 0067F08C    add         eax,edx
>0067F08E    jno         0067F095
 0067F090    call        @IntOver
 0067F095    cmp         eax,0FFFF
>0067F09A    jbe         0067F0A1
 0067F09C    call        @BoundErr
 0067F0A1    mov         word ptr [edi+0B6],ax
 0067F0A8    movzx       eax,byte ptr [ebp-0D6]
 0067F0AF    mov         edx,100
 0067F0B4    mul         eax,edx
>0067F0B6    jno         0067F0BD
 0067F0B8    call        @IntOver
 0067F0BD    movzx       edx,byte ptr [ebp-0D5]
 0067F0C4    add         eax,edx
>0067F0C6    jno         0067F0CD
 0067F0C8    call        @IntOver
 0067F0CD    cmp         eax,0FFFF
>0067F0D2    jbe         0067F0D9
 0067F0D4    call        @BoundErr
 0067F0D9    mov         word ptr [edi+0B8],ax
 0067F0E0    movzx       eax,byte ptr [ebp-0D4]
 0067F0E7    mov         edx,100
 0067F0EC    mul         eax,edx
>0067F0EE    jno         0067F0F5
 0067F0F0    call        @IntOver
 0067F0F5    movzx       edx,byte ptr [ebp-0D3]
 0067F0FC    add         eax,edx
>0067F0FE    jno         0067F105
 0067F100    call        @IntOver
 0067F105    cmp         eax,0FFFF
>0067F10A    jbe         0067F111
 0067F10C    call        @BoundErr
 0067F111    mov         word ptr [edi+0BA],ax
 0067F118    movzx       eax,byte ptr [ebp-0D2]
 0067F11F    mov         edx,100
 0067F124    mul         eax,edx
>0067F126    jno         0067F12D
 0067F128    call        @IntOver
 0067F12D    movzx       edx,byte ptr [ebp-0D1]
 0067F134    add         eax,edx
>0067F136    jno         0067F13D
 0067F138    call        @IntOver
 0067F13D    cmp         eax,0FFFF
>0067F142    jbe         0067F149
 0067F144    call        @BoundErr
 0067F149    mov         word ptr [edi+0BC],ax
 0067F150    movzx       eax,byte ptr [ebp-0D0]
 0067F157    mov         edx,100
 0067F15C    mul         eax,edx
>0067F15E    jno         0067F165
 0067F160    call        @IntOver
 0067F165    movzx       edx,byte ptr [ebp-0CF]
 0067F16C    add         eax,edx
>0067F16E    jno         0067F175
 0067F170    call        @IntOver
 0067F175    cmp         eax,0FFFF
>0067F17A    jbe         0067F181
 0067F17C    call        @BoundErr
 0067F181    mov         word ptr [edi+0BE],ax
 0067F188    movzx       eax,byte ptr [ebp-0CE]
 0067F18F    mov         edx,100
 0067F194    mul         eax,edx
>0067F196    jno         0067F19D
 0067F198    call        @IntOver
 0067F19D    movzx       edx,byte ptr [ebp-0CD]
 0067F1A4    add         eax,edx
>0067F1A6    jno         0067F1AD
 0067F1A8    call        @IntOver
 0067F1AD    cmp         eax,0FFFF
>0067F1B2    jbe         0067F1B9
 0067F1B4    call        @BoundErr
 0067F1B9    mov         word ptr [edi+0C0],ax
 0067F1C0    movzx       eax,byte ptr [ebp-0CC]
 0067F1C7    mov         edx,100
 0067F1CC    mul         eax,edx
>0067F1CE    jno         0067F1D5
 0067F1D0    call        @IntOver
 0067F1D5    movzx       edx,byte ptr [ebp-0CB]
 0067F1DC    add         eax,edx
>0067F1DE    jno         0067F1E5
 0067F1E0    call        @IntOver
 0067F1E5    cmp         eax,0FFFF
>0067F1EA    jbe         0067F1F1
 0067F1EC    call        @BoundErr
 0067F1F1    mov         word ptr [edi+0C2],ax
 0067F1F8    movzx       eax,byte ptr [ebp-0CA]
 0067F1FF    mov         edx,100
 0067F204    mul         eax,edx
>0067F206    jno         0067F20D
 0067F208    call        @IntOver
 0067F20D    movzx       edx,byte ptr [ebp-0C9]
 0067F214    add         eax,edx
>0067F216    jno         0067F21D
 0067F218    call        @IntOver
 0067F21D    cmp         eax,0FFFF
>0067F222    jbe         0067F229
 0067F224    call        @BoundErr
 0067F229    mov         word ptr [edi+0C4],ax
 0067F230    movzx       eax,byte ptr [ebp-0C8]
 0067F237    mov         edx,100
 0067F23C    mul         eax,edx
>0067F23E    jno         0067F245
 0067F240    call        @IntOver
 0067F245    movzx       edx,byte ptr [ebp-0C7]
 0067F24C    add         eax,edx
>0067F24E    jno         0067F255
 0067F250    call        @IntOver
 0067F255    cmp         eax,0FFFF
>0067F25A    jbe         0067F261
 0067F25C    call        @BoundErr
 0067F261    mov         word ptr [edi+0C6],ax
 0067F268    movzx       eax,byte ptr [ebp-0C6]
 0067F26F    mov         edx,100
 0067F274    mul         eax,edx
>0067F276    jno         0067F27D
 0067F278    call        @IntOver
 0067F27D    movzx       edx,byte ptr [ebp-0C5]
 0067F284    add         eax,edx
>0067F286    jno         0067F28D
 0067F288    call        @IntOver
 0067F28D    cmp         eax,0FFFF
>0067F292    jbe         0067F299
 0067F294    call        @BoundErr
 0067F299    mov         word ptr [edi+0C8],ax
 0067F2A0    movzx       eax,byte ptr [ebp-0C4]
 0067F2A7    mov         edx,100
 0067F2AC    mul         eax,edx
>0067F2AE    jno         0067F2B5
 0067F2B0    call        @IntOver
 0067F2B5    movzx       edx,byte ptr [ebp-0C3]
 0067F2BC    add         eax,edx
>0067F2BE    jno         0067F2C5
 0067F2C0    call        @IntOver
 0067F2C5    cmp         eax,0FFFF
>0067F2CA    jbe         0067F2D1
 0067F2CC    call        @BoundErr
 0067F2D1    mov         word ptr [edi+0CA],ax
 0067F2D8    movzx       eax,byte ptr [ebp-0C2]
 0067F2DF    mov         edx,100
 0067F2E4    mul         eax,edx
>0067F2E6    jno         0067F2ED
 0067F2E8    call        @IntOver
 0067F2ED    movzx       edx,byte ptr [ebp-0C1]
 0067F2F4    add         eax,edx
>0067F2F6    jno         0067F2FD
 0067F2F8    call        @IntOver
 0067F2FD    cmp         eax,0FFFF
>0067F302    jbe         0067F309
 0067F304    call        @BoundErr
 0067F309    mov         word ptr [edi+0CC],ax
 0067F310    movzx       eax,byte ptr [ebp-0C0]
 0067F317    mov         edx,100
 0067F31C    mul         eax,edx
>0067F31E    jno         0067F325
 0067F320    call        @IntOver
 0067F325    movzx       edx,byte ptr [ebp-0BF]
 0067F32C    add         eax,edx
>0067F32E    jno         0067F335
 0067F330    call        @IntOver
 0067F335    cmp         eax,0FFFF
>0067F33A    jbe         0067F341
 0067F33C    call        @BoundErr
 0067F341    mov         word ptr [edi+0CE],ax
 0067F348    movzx       eax,byte ptr [ebp-0BE]
 0067F34F    mov         edx,100
 0067F354    mul         eax,edx
>0067F356    jno         0067F35D
 0067F358    call        @IntOver
 0067F35D    movzx       edx,byte ptr [ebp-0BD]
 0067F364    add         eax,edx
>0067F366    jno         0067F36D
 0067F368    call        @IntOver
 0067F36D    cmp         eax,0FFFF
>0067F372    jbe         0067F379
 0067F374    call        @BoundErr
 0067F379    mov         word ptr [edi+0D0],ax
 0067F380    movzx       ebx,byte ptr [edi+2]
 0067F384    movzx       edx,bl
 0067F387    mov         eax,dword ptr [ebp-4]
 0067F38A    mov         eax,dword ptr [eax+87668];TFXPAD.PD:TFXPPD
 0067F390    call        TFXPPD.GetControllerLoopType
 0067F395    cmp         eax,6
>0067F398    ja          0067F424
 0067F39E    jmp         dword ptr [eax*4+67F3A5]
 0067F39E    dd          0067F424
 0067F39E    dd          0067F3EB
 0067F39E    dd          0067F3CB
 0067F39E    dd          0067F3C1
 0067F39E    dd          0067F3D5
 0067F39E    dd          0067F3C1
 0067F39E    dd          0067F3D5
 0067F3C1    mov         byte ptr [ebp-8],0
 0067F3C5    movzx       eax,byte ptr [edi+3]
>0067F3C9    jmp         0067F42A
 0067F3CB    mov         byte ptr [ebp-8],0
 0067F3CF    movzx       eax,byte ptr [edi+3]
>0067F3D3    jmp         0067F42A
 0067F3D5    cmp         byte ptr [edi+4],0C8
>0067F3D9    jne         0067F3E1
 0067F3DB    mov         byte ptr [ebp-8],1
>0067F3DF    jmp         0067F3E5
 0067F3E1    mov         byte ptr [ebp-8],0
 0067F3E5    movzx       eax,byte ptr [edi+3]
>0067F3E9    jmp         0067F42A
 0067F3EB    movzx       ecx,byte ptr [edi+3]
 0067F3EF    mov         eax,ecx
 0067F3F1    mov         esi,64
 0067F3F6    xor         edx,edx
 0067F3F8    div         eax,esi
 0067F3FA    cmp         eax,0FF
>0067F3FF    jbe         0067F406
 0067F401    call        @BoundErr
 0067F406    mov         byte ptr [ebp-8],al
 0067F409    mov         eax,ecx
 0067F40B    mov         ecx,64
 0067F410    xor         edx,edx
 0067F412    div         eax,ecx
 0067F414    mov         eax,edx
 0067F416    cmp         eax,0FF
>0067F41B    jbe         0067F42A
 0067F41D    call        @BoundErr
>0067F422    jmp         0067F42A
 0067F424    mov         byte ptr [ebp-8],0
 0067F428    xor         eax,eax
 0067F42A    movzx       edx,bl
 0067F42D    cmp         edx,7
>0067F430    jbe         0067F437
 0067F432    call        @BoundErr
 0067F437    imul        edx,edx,43B3
>0067F43D    jno         0067F444
 0067F43F    call        @IntOver
 0067F444    mov         ecx,dword ptr [ebp-4]
 0067F447    lea         esi,[ecx+edx*4]
 0067F44A    movzx       edx,byte ptr [ebp-8]
 0067F44E    cmp         edx,1
>0067F451    jbe         0067F458
 0067F453    call        @BoundErr
 0067F458    imul        edx,edx,43B3
>0067F45E    jno         0067F465
 0067F460    call        @IntOver
 0067F465    lea         edx,[esi+edx*2]
 0067F468    movzx       eax,al
 0067F46B    dec         eax
 0067F46C    cmp         eax,9E
>0067F471    jbe         0067F478
 0067F473    call        @BoundErr
 0067F478    inc         eax
 0067F479    imul        eax,eax,6D
>0067F47C    jno         0067F483
 0067F47E    call        @IntOver
 0067F483    mov         esi,edi
 0067F485    lea         edi,[edx+eax*2-0D6]
 0067F48C    mov         ecx,36
 0067F491    rep movs    dword ptr [edi],dword ptr [esi]
 0067F493    movs        word ptr [edi],word ptr [esi]
 0067F495    xor         eax,eax
 0067F497    pop         edx
 0067F498    pop         ecx
 0067F499    pop         ecx
 0067F49A    mov         dword ptr fs:[eax],edx
>0067F49D    jmp         0067F527
>0067F4A2    jmp         @HandleOnException
 0067F4A7    dd          1
 0067F4AB    dd          004185F0;EIntError
 0067F4AF    dd          0067F4B3
 0067F4B3    mov         ebx,eax
 0067F4B5    push        dword ptr [ebx+4];EIntError.FMessage:string
 0067F4B8    push        67F5C4;'
'
 0067F4BD    lea         eax,[ebp-1E8]
 0067F4C3    push        eax
 0067F4C4    movzx       eax,byte ptr [ebp-106]
 0067F4CB    mov         dword ptr [ebp-1F8],eax
 0067F4D1    mov         byte ptr [ebp-1F4],0
 0067F4D8    movzx       eax,byte ptr [ebp-105]
 0067F4DF    mov         dword ptr [ebp-1F0],eax
 0067F4E5    mov         byte ptr [ebp-1EC],0
 0067F4EC    lea         edx,[ebp-1F8]
 0067F4F2    mov         ecx,1
 0067F4F7    mov         eax,67F5D8;'Error decoding AP %.3d.%.3d'
 0067F4FC    call        Format
 0067F501    push        dword ptr [ebp-1E8]
 0067F507    lea         eax,[ebp-1E4]
 0067F50D    mov         edx,3
 0067F512    call        @UStrCatN
 0067F517    mov         eax,dword ptr [ebp-1E4]
 0067F51D    call        ShowMessage
 0067F522    call        @DoneExcept
 0067F527    xor         eax,eax
 0067F529    pop         edx
 0067F52A    pop         ecx
 0067F52B    pop         ecx
 0067F52C    mov         dword ptr fs:[eax],edx
 0067F52F    push        67F54C
 0067F534    lea         eax,[ebp-1E8]
 0067F53A    mov         edx,2
 0067F53F    call        @UStrArrayClr
 0067F544    ret
>0067F545    jmp         @HandleFinally
>0067F54A    jmp         0067F534
 0067F54C    pop         edi
 0067F54D    pop         esi
 0067F54E    pop         ebx
 0067F54F    mov         esp,ebp
 0067F551    pop         ebp
 0067F552    ret         4
*}
end;

//0067F610
function TFXPAD.Read(fs:TFileStream; VersionMajor:Integer; RecordSize:Integer; NumOfRecords:Integer; VersionMinor:Integer):Integer;
begin
{*
 0067F610    push        ebp
 0067F611    mov         ebp,esp
 0067F613    add         esp,0FFFFFED4
 0067F619    push        ebx
 0067F61A    push        esi
 0067F61B    push        edi
 0067F61C    mov         dword ptr [ebp-8],ecx
 0067F61F    mov         dword ptr [ebp-4],edx
 0067F622    mov         esi,eax
 0067F624    cmp         dword ptr [ebp-8],2
>0067F628    jg          0067F63C
 0067F62A    cmp         dword ptr [ebp+8],40
>0067F62E    je          0067F63C
 0067F630    mov         dword ptr [ebp-0C],0FFFFFFFF
>0067F637    jmp         0067FAB0
 0067F63C    cmp         dword ptr [ebp-8],2
>0067F640    jle         0067F657
 0067F642    cmp         dword ptr [ebp+8],0DA
>0067F649    je          0067F657
 0067F64B    mov         dword ptr [ebp-0C],0FFFFFFFF
>0067F652    jmp         0067FAB0
 0067F657    xor         ebx,ebx
 0067F659    movzx       edx,bl
 0067F65C    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 0067F662    call        TFXPPD.GetControllerLoopType
 0067F667    cmp         eax,0FF
>0067F66C    jbe         0067F673
 0067F66E    call        @BoundErr
 0067F673    mov         ecx,eax
 0067F675    mov         edx,ebx
 0067F677    mov         eax,esi
 0067F679    call        TFXPAD.InitFXAPDataOfLoop
 0067F67E    inc         ebx
 0067F67F    cmp         bl,8
>0067F682    jne         0067F659
 0067F684    xor         eax,eax
 0067F686    mov         dword ptr [ebp-0C],eax
 0067F689    mov         eax,dword ptr [ebp+0C]
 0067F68C    cmp         eax,0FFFF
>0067F691    jbe         0067F698
 0067F693    call        @BoundErr
 0067F698    test        ax,ax
>0067F69B    jbe         0067FAB0
 0067F6A1    mov         word ptr [ebp-10],ax
 0067F6A5    cmp         dword ptr [ebp-8],2
>0067F6A9    jg          0067F825
 0067F6AF    lea         eax,[ebp-12A]
 0067F6B5    xor         ecx,ecx
 0067F6B7    mov         edx,0DA
 0067F6BC    call        @FillChar
 0067F6C1    lea         edx,[ebp-50]
 0067F6C4    mov         ecx,dword ptr [ebp+8]
 0067F6C7    mov         eax,dword ptr [ebp-4]
 0067F6CA    mov         ebx,dword ptr [eax]
 0067F6CC    call        dword ptr [ebx+0C];THandleStream.Read
 0067F6CF    cmp         eax,dword ptr [ebp+8]
>0067F6D2    je          0067F6E0
 0067F6D4    mov         dword ptr [ebp-0C],0FFFFFFFF
>0067F6DB    jmp         0067FAB0
 0067F6E0    movzx       eax,byte ptr [ebp-50]
 0067F6E4    mov         byte ptr [ebp-128],al
 0067F6EA    movzx       eax,byte ptr [ebp-4F]
 0067F6EE    mov         byte ptr [ebp-127],al
 0067F6F4    movzx       eax,byte ptr [ebp-4E]
 0067F6F8    mov         byte ptr [ebp-126],al
 0067F6FE    movzx       eax,byte ptr [ebp-4D]
 0067F702    mov         byte ptr [ebp-125],al
 0067F708    movzx       eax,byte ptr [ebp-4C]
 0067F70C    mov         word ptr [ebp-124],ax
 0067F713    movzx       eax,byte ptr [ebp-4B]
 0067F717    mov         word ptr [ebp-122],ax
 0067F71E    movzx       eax,byte ptr [ebp-4A]
 0067F722    mov         byte ptr [ebp-120],al
 0067F728    movzx       eax,byte ptr [ebp-49]
 0067F72C    mov         byte ptr [ebp-11F],al
 0067F732    movzx       eax,word ptr [ebp-48]
 0067F736    mov         word ptr [ebp-11E],ax
 0067F73D    movzx       eax,word ptr [ebp-46]
 0067F741    mov         word ptr [ebp-11C],ax
 0067F748    movzx       eax,word ptr [ebp-44]
 0067F74C    mov         word ptr [ebp-11A],ax
 0067F753    movzx       eax,word ptr [ebp-42]
 0067F757    mov         word ptr [ebp-118],ax
 0067F75E    movzx       eax,word ptr [ebp-40]
 0067F762    mov         word ptr [ebp-116],ax
 0067F769    movzx       eax,byte ptr [ebp-3E]
 0067F76D    mov         byte ptr [ebp-114],al
 0067F773    movzx       eax,byte ptr [ebp-3D]
 0067F777    mov         byte ptr [ebp-113],al
 0067F77D    movzx       eax,byte ptr [ebp-3C]
 0067F781    mov         byte ptr [ebp-112],al
 0067F787    movzx       eax,byte ptr [ebp-3B]
 0067F78B    mov         byte ptr [ebp-111],al
 0067F791    movzx       eax,byte ptr [ebp-3A]
 0067F795    mov         byte ptr [ebp-110],al
 0067F79B    movzx       eax,byte ptr [ebp-39]
 0067F79F    mov         byte ptr [ebp-10F],al
 0067F7A5    movzx       eax,byte ptr [ebp-38]
 0067F7A9    mov         byte ptr [ebp-10E],al
 0067F7AF    movzx       eax,byte ptr [ebp-37]
 0067F7B3    mov         byte ptr [ebp-10D],al
 0067F7B9    movzx       eax,byte ptr [ebp-36]
 0067F7BD    mov         byte ptr [ebp-10C],al
 0067F7C3    movzx       eax,byte ptr [ebp-35]
 0067F7C7    mov         byte ptr [ebp-10B],al
 0067F7CD    movzx       eax,byte ptr [ebp-34]
 0067F7D1    mov         byte ptr [ebp-10A],al
 0067F7D7    movzx       eax,byte ptr [ebp-33]
 0067F7DB    mov         byte ptr [ebp-109],al
 0067F7E1    test        byte ptr [ebp-30],1
>0067F7E5    je          0067F7F0
 0067F7E7    mov         byte ptr [ebp-102],1
>0067F7EE    jmp         0067F812
 0067F7F0    test        byte ptr [ebp-11],8
>0067F7F4    je          0067F7FF
 0067F7F6    mov         byte ptr [ebp-102],2
>0067F7FD    jmp         0067F812
 0067F7FF    lea         edx,[ebp-100]
 0067F805    lea         eax,[ebp-30]
 0067F808    mov         ecx,20
 0067F80D    call        Move
 0067F812    mov         eax,dword ptr [esi+87664];TFXPAD.CI:TFXPCI
 0067F818    lea         edx,[eax+84]
 0067F81E    call        TFXPCI.SetConfigInfo
>0067F823    jmp         0067F847
 0067F825    lea         edx,[ebp-12A]
 0067F82B    mov         ecx,dword ptr [ebp+8]
 0067F82E    mov         eax,dword ptr [ebp-4]
 0067F831    mov         ebx,dword ptr [eax]
 0067F833    call        dword ptr [ebx+0C];THandleStream.Read
 0067F836    cmp         eax,dword ptr [ebp+8]
>0067F839    je          0067F847
 0067F83B    mov         dword ptr [ebp-0C],0FFFFFFFF
>0067F842    jmp         0067FAB0
 0067F847    mov         byte ptr [ebp-0D],0
 0067F84B    mov         byte ptr [ebp-0E],0
 0067F84F    movzx       ebx,byte ptr [ebp-128]
 0067F856    movzx       edx,bl
 0067F859    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 0067F85F    call        TFXPPD.GetControllerLoopType
 0067F864    cmp         eax,0FF
>0067F869    jbe         0067F870
 0067F86B    call        @BoundErr
 0067F870    movzx       eax,al
 0067F873    cmp         eax,6
>0067F876    ja          0067FA36
 0067F87C    jmp         dword ptr [eax*4+67F883]
 0067F87C    dd          0067FAA6
 0067F87C    dd          0067F989
 0067F87C    dd          0067F8B7
 0067F87C    dd          0067F8A4
 0067F87C    dd          0067F905
 0067F87C    dd          0067F8A4
 0067F87C    dd          0067F905
>0067F89F    jmp         0067FAA6
 0067F8A4    mov         byte ptr [ebp-0D],0
 0067F8A8    movzx       eax,byte ptr [ebp-127]
 0067F8AF    mov         byte ptr [ebp-0E],al
>0067F8B2    jmp         0067FA36
 0067F8B7    mov         byte ptr [ebp-0D],0
 0067F8BB    movzx       eax,byte ptr [ebp-127]
 0067F8C2    mov         byte ptr [ebp-0E],al
 0067F8C5    lea         eax,[ebp-12A]
 0067F8CB    push        eax
 0067F8CC    mov         edi,dword ptr [esi+87664];TFXPAD.CI:TFXPCI
 0067F8D2    movzx       ecx,byte ptr [edi+2C1]
 0067F8D9    movzx       edx,byte ptr [edi+2C0]
 0067F8E0    mov         eax,esi
 0067F8E2    call        TFXPAD.UpdateOldCnvData
 0067F8E7    test        al,al
>0067F8E9    je          0067FA36
 0067F8EF    mov         eax,dword ptr [esi+87664];TFXPAD.CI:TFXPCI
 0067F8F5    lea         edx,[eax+84]
 0067F8FB    call        TFXPCI.SetConfigInfo
>0067F900    jmp         0067FA36
 0067F905    movzx       eax,byte ptr [ebp-126]
 0067F90C    mov         ecx,0C8
 0067F911    xor         edx,edx
 0067F913    div         eax,ecx
 0067F915    cmp         eax,0FF
>0067F91A    jbe         0067F921
 0067F91C    call        @BoundErr
 0067F921    mov         byte ptr [ebp-0D],al
 0067F924    movzx       eax,byte ptr [ebp-127]
 0067F92B    mov         byte ptr [ebp-0E],al
 0067F92E    lea         eax,[ebp-12A]
 0067F934    push        eax
 0067F935    mov         ecx,dword ptr [ebp+10]
 0067F938    mov         edx,dword ptr [ebp-8]
 0067F93B    mov         eax,esi
 0067F93D    call        TFXPAD.SapUpdateSndrMode
 0067F942    test        al,al
>0067F944    je          0067F957
 0067F946    mov         eax,dword ptr [esi+87664];TFXPAD.CI:TFXPCI
 0067F94C    lea         edx,[eax+84]
 0067F952    call        TFXPCI.SetConfigInfo
 0067F957    lea         eax,[ebp-12A]
 0067F95D    push        eax
 0067F95E    mov         ecx,dword ptr [ebp+10]
 0067F961    mov         edx,dword ptr [ebp-8]
 0067F964    mov         eax,esi
 0067F966    call        TFXPAD.SapUpdateSndrVol
 0067F96B    test        al,al
>0067F96D    je          0067FA36
 0067F973    mov         eax,dword ptr [esi+87664];TFXPAD.CI:TFXPCI
 0067F979    lea         edx,[eax+84]
 0067F97F    call        TFXPCI.SetConfigInfo
>0067F984    jmp         0067FA36
 0067F989    movzx       ecx,byte ptr [ebp-127]
 0067F990    mov         eax,ecx
 0067F992    mov         edi,64
 0067F997    xor         edx,edx
 0067F999    div         eax,edi
 0067F99B    cmp         eax,0FF
>0067F9A0    jbe         0067F9A7
 0067F9A2    call        @BoundErr
 0067F9A7    mov         byte ptr [ebp-0D],al
 0067F9AA    mov         eax,ecx
 0067F9AC    mov         ecx,64
 0067F9B1    xor         edx,edx
 0067F9B3    div         eax,ecx
 0067F9B5    cmp         edx,0FF
>0067F9BB    jbe         0067F9C2
 0067F9BD    call        @BoundErr
 0067F9C2    mov         byte ptr [ebp-0E],dl
 0067F9C5    lea         ecx,[ebp-11E]
 0067F9CB    movzx       edx,byte ptr [ebp-120]
 0067F9D2    mov         eax,esi
 0067F9D4    call        TFXPAD.SysUpdateThresholds
 0067F9D9    test        al,al
>0067F9DB    jne         0067FA25
 0067F9DD    lea         ecx,[ebp-11A]
 0067F9E3    movzx       edx,byte ptr [ebp-120]
 0067F9EA    mov         eax,esi
 0067F9EC    call        TFXPAD.SysUpdateThresholds
 0067F9F1    test        al,al
>0067F9F3    jne         0067FA25
 0067F9F5    lea         ecx,[ebp-11C]
 0067F9FB    movzx       edx,byte ptr [ebp-120]
 0067FA02    mov         eax,esi
 0067FA04    call        TFXPAD.SysUpdateThresholds
 0067FA09    test        al,al
>0067FA0B    jne         0067FA25
 0067FA0D    lea         ecx,[ebp-118]
 0067FA13    movzx       edx,byte ptr [ebp-120]
 0067FA1A    mov         eax,esi
 0067FA1C    call        TFXPAD.SysUpdateThresholds
 0067FA21    test        al,al
>0067FA23    je          0067FA36
 0067FA25    mov         eax,dword ptr [esi+87664];TFXPAD.CI:TFXPCI
 0067FA2B    lea         edx,[eax+84]
 0067FA31    call        TFXPCI.SetConfigInfo
 0067FA36    movzx       eax,byte ptr [ebp-0D]
 0067FA3A    cmp         eax,1
>0067FA3D    jbe         0067FA44
 0067FA3F    call        @BoundErr
 0067FA44    imul        eax,eax,43B3
>0067FA4A    jno         0067FA51
 0067FA4C    call        @IntOver
 0067FA51    movzx       edx,bl
 0067FA54    cmp         edx,7
>0067FA57    jbe         0067FA5E
 0067FA59    call        @BoundErr
 0067FA5E    imul        edx,edx,43B3
>0067FA64    jno         0067FA6B
 0067FA66    call        @IntOver
 0067FA6B    lea         edx,[esi+edx*4]
 0067FA6E    lea         eax,[edx+eax*2]
 0067FA71    movzx       edx,byte ptr [ebp-0E]
 0067FA75    dec         edx
 0067FA76    cmp         edx,9E
>0067FA7C    jbe         0067FA83
 0067FA7E    call        @BoundErr
 0067FA83    inc         edx
 0067FA84    imul        edx,edx,6D
>0067FA87    jno         0067FA8E
 0067FA89    call        @IntOver
 0067FA8E    push        esi
 0067FA8F    lea         edi,[eax+edx*2-0D6]
 0067FA96    lea         esi,[ebp-12A]
 0067FA9C    mov         ecx,36
 0067FAA1    rep movs    dword ptr [edi],dword ptr [esi]
 0067FAA3    movs        word ptr [edi],word ptr [esi]
 0067FAA5    pop         esi
 0067FAA6    dec         word ptr [ebp-10]
>0067FAAA    jne         0067F6A5
 0067FAB0    mov         eax,dword ptr [ebp-0C]
 0067FAB3    pop         edi
 0067FAB4    pop         esi
 0067FAB5    pop         ebx
 0067FAB6    mov         esp,ebp
 0067FAB8    pop         ebp
 0067FAB9    ret         0C
*}
end;

//0067FABC
function TFXPAD.Save(fs:TFileStream; VersionMajor:Integer; RecordSize:Cardinal; NumOfRecords:Word; VersionMinor:Integer):Integer;
begin
{*
 0067FABC    push        ebp
 0067FABD    mov         ebp,esp
 0067FABF    add         esp,0FFFFFFF4
 0067FAC2    push        ebx
 0067FAC3    push        esi
 0067FAC4    push        edi
 0067FAC5    mov         dword ptr [ebp-4],edx
 0067FAC8    mov         esi,eax
 0067FACA    xor         eax,eax
 0067FACC    mov         dword ptr [ebp-8],eax
 0067FACF    mov         eax,dword ptr [ebp+8]
 0067FAD2    mov         dword ptr [eax],0DA
 0067FAD8    mov         eax,dword ptr [ebp+0C]
 0067FADB    mov         word ptr [eax],0
 0067FAE0    mov         byte ptr [ebp-9],0
 0067FAE4    movzx       edx,byte ptr [ebp-9]
 0067FAE8    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 0067FAEE    call        TFXPPD.GetControllerLoopType
 0067FAF3    test        eax,eax
>0067FAF5    je          0067FBEA
 0067FAFB    mov         byte ptr [ebp-0A],0
 0067FAFF    mov         bl,1
 0067FB01    movzx       ecx,byte ptr [ebp-9]
 0067FB05    cmp         ecx,7
>0067FB08    jbe         0067FB0F
 0067FB0A    call        @BoundErr
 0067FB0F    imul        ecx,ecx,43B3
>0067FB15    jno         0067FB1C
 0067FB17    call        @IntOver
 0067FB1C    lea         ecx,[esi+ecx*4]
 0067FB1F    push        ecx
 0067FB20    movzx       eax,byte ptr [ebp-0A]
 0067FB24    cmp         eax,1
>0067FB27    jbe         0067FB2E
 0067FB29    call        @BoundErr
 0067FB2E    imul        eax,eax,43B3
>0067FB34    jno         0067FB3B
 0067FB36    call        @IntOver
 0067FB3B    pop         ecx
 0067FB3C    lea         ecx,[ecx+eax*2]
 0067FB3F    push        ecx
 0067FB40    movzx       edx,bl
 0067FB43    dec         edx
 0067FB44    cmp         edx,9E
>0067FB4A    jbe         0067FB51
 0067FB4C    call        @BoundErr
 0067FB51    inc         edx
 0067FB52    imul        edx,edx,6D
>0067FB55    jno         0067FB5C
 0067FB57    call        @IntOver
 0067FB5C    pop         ecx
 0067FB5D    cmp         byte ptr [ecx+edx*2-0CC],0
>0067FB65    je          0067FBD3
 0067FB67    movzx       ecx,byte ptr [ebp-9]
 0067FB6B    cmp         ecx,7
>0067FB6E    jbe         0067FB75
 0067FB70    call        @BoundErr
 0067FB75    imul        ecx,ecx,43B3
>0067FB7B    jno         0067FB82
 0067FB7D    call        @IntOver
 0067FB82    lea         ecx,[esi+ecx*4]
 0067FB85    push        ecx
 0067FB86    pop         ecx
 0067FB87    lea         eax,[ecx+eax*2]
 0067FB8A    push        eax
 0067FB8B    pop         eax
 0067FB8C    lea         eax,[eax+edx*2-0D6]
 0067FB93    mov         edx,eax
 0067FB95    mov         ecx,dword ptr [ebp+8]
 0067FB98    mov         ecx,dword ptr [ecx]
 0067FB9A    test        ecx,ecx
>0067FB9C    jns         0067FBA3
 0067FB9E    call        @BoundErr
 0067FBA3    mov         eax,dword ptr [ebp-4]
 0067FBA6    mov         edi,dword ptr [eax]
 0067FBA8    call        dword ptr [edi+10];THandleStream.Write
 0067FBAB    add         dword ptr [ebp-8],eax
>0067FBAE    jno         0067FBB5
 0067FBB0    call        @IntOver
 0067FBB5    cmp         eax,0DA
>0067FBBA    je          0067FBC5
 0067FBBC    mov         dword ptr [ebp-8],0FFFFFFFF
>0067FBC3    jmp         0067FBF7
 0067FBC5    mov         eax,dword ptr [ebp+0C]
 0067FBC8    add         word ptr [eax],1
>0067FBCC    jae         0067FBD3
 0067FBCE    call        @IntOver
 0067FBD3    inc         ebx
 0067FBD4    cmp         bl,0A0
>0067FBD7    jne         0067FB01
 0067FBDD    inc         byte ptr [ebp-0A]
 0067FBE0    cmp         byte ptr [ebp-0A],2
>0067FBE4    jne         0067FAFF
 0067FBEA    inc         byte ptr [ebp-9]
 0067FBED    cmp         byte ptr [ebp-9],8
>0067FBF1    jne         0067FAE4
 0067FBF7    mov         eax,dword ptr [ebp-8]
 0067FBFA    pop         edi
 0067FBFB    pop         esi
 0067FBFC    pop         ebx
 0067FBFD    mov         esp,ebp
 0067FBFF    pop         ebp
 0067FC00    ret         0C
*}
end;

//0067FC04
procedure sub_0067FC04(?:TFXIniFile);
begin
{*
 0067FC04    push        ebp
 0067FC05    mov         ebp,esp
 0067FC07    mov         ecx,0DA
 0067FC0C    push        0
 0067FC0E    push        0
 0067FC10    dec         ecx
>0067FC11    jne         0067FC0C
 0067FC13    push        ebx
 0067FC14    push        esi
 0067FC15    push        edi
 0067FC16    mov         ebx,eax
 0067FC18    mov         esi,7C18F0;^'Not in use'
 0067FC1D    xor         eax,eax
 0067FC1F    push        ebp
 0067FC20    push        68482D
 0067FC25    push        dword ptr fs:[eax]
 0067FC28    mov         dword ptr fs:[eax],esp
 0067FC2B    push        684848;'Not in use'
 0067FC30    lea         eax,[ebp-4]
 0067FC33    push        eax
 0067FC34    mov         ecx,68486C;'sSysNotInUse'
 0067FC39    mov         edx,684894;'SysTypeStrings'
 0067FC3E    mov         eax,ebx
 0067FC40    mov         edi,dword ptr [eax]
 0067FC42    call        dword ptr [edi+4]
 0067FC45    mov         edx,dword ptr [ebp-4]
 0067FC48    mov         eax,7C162C;^'Not in use'
 0067FC4D    call        @UStrAsg
 0067FC52    push        6848C0;'Ionisation sensor'
 0067FC57    lea         eax,[ebp-8]
 0067FC5A    push        eax
 0067FC5B    mov         ecx,6848F0;'sSysIonSensor'
 0067FC60    mov         edx,684894;'SysTypeStrings'
 0067FC65    mov         eax,ebx
 0067FC67    mov         edi,dword ptr [eax]
 0067FC69    call        dword ptr [edi+4]
 0067FC6C    mov         edx,dword ptr [ebp-8]
 0067FC6F    mov         eax,7C1630;^'Ionisation sensor'
 0067FC74    call        @UStrAsg
 0067FC79    push        684918;'Optical sensor'
 0067FC7E    lea         eax,[ebp-0C]
 0067FC81    push        eax
 0067FC82    mov         ecx,684944;'sSysOptSensor'
 0067FC87    mov         edx,684894;'SysTypeStrings'
 0067FC8C    mov         eax,ebx
 0067FC8E    mov         edi,dword ptr [eax]
 0067FC90    call        dword ptr [edi+4]
 0067FC93    mov         edx,dword ptr [ebp-0C]
 0067FC96    mov         eax,7C1634;^'Optical sensor'
 0067FC9B    call        @UStrAsg
 0067FCA0    push        68496C;'Thermal sensor'
 0067FCA5    lea         eax,[ebp-10]
 0067FCA8    push        eax
 0067FCA9    mov         ecx,684998;'sSysHeatSensor'
 0067FCAE    mov         edx,684894;'SysTypeStrings'
 0067FCB3    mov         eax,ebx
 0067FCB5    mov         edi,dword ptr [eax]
 0067FCB7    call        dword ptr [edi+4]
 0067FCBA    mov         edx,dword ptr [ebp-10]
 0067FCBD    mov         eax,7C1638;^'Thermal sensor'
 0067FCC2    call        @UStrAsg
 0067FCC7    push        6849C4;'Monitor module'
 0067FCCC    lea         eax,[ebp-14]
 0067FCCF    push        eax
 0067FCD0    mov         ecx,6849F0;'sSysMonitorModule'
 0067FCD5    mov         edx,684894;'SysTypeStrings'
 0067FCDA    mov         eax,ebx
 0067FCDC    mov         edi,dword ptr [eax]
 0067FCDE    call        dword ptr [edi+4]
 0067FCE1    mov         edx,dword ptr [ebp-14]
 0067FCE4    mov         eax,7C163C;^'Monitor module'
 0067FCE9    call        @UStrAsg
 0067FCEE    push        684A20;'Control module'
 0067FCF3    lea         eax,[ebp-18]
 0067FCF6    push        eax
 0067FCF7    mov         ecx,684A4C;'sSysControlModule'
 0067FCFC    mov         edx,684894;'SysTypeStrings'
 0067FD01    mov         eax,ebx
 0067FD03    mov         edi,dword ptr [eax]
 0067FD05    call        dword ptr [edi+4]
 0067FD08    mov         edx,dword ptr [ebp-18]
 0067FD0B    mov         eax,7C1640;^'Control module'
 0067FD10    call        @UStrAsg
 0067FD15    push        684A7C;'Conv. zone mod.'
 0067FD1A    lea         eax,[ebp-1C]
 0067FD1D    push        eax
 0067FD1E    mov         ecx,684AA8;'sSysConvZoneModule'
 0067FD23    mov         edx,684894;'SysTypeStrings'
 0067FD28    mov         eax,ebx
 0067FD2A    mov         edi,dword ptr [eax]
 0067FD2C    call        dword ptr [edi+4]
 0067FD2F    mov         edx,dword ptr [ebp-1C]
 0067FD32    mov         eax,7C1644;^'Conv. zone mod.'
 0067FD37    call        @UStrAsg
 0067FD3C    push        684ADC;'Any Type'
 0067FD41    lea         eax,[ebp-20]
 0067FD44    push        eax
 0067FD45    mov         ecx,684AFC;'sSysAnyType'
 0067FD4A    mov         edx,684894;'SysTypeStrings'
 0067FD4F    mov         eax,ebx
 0067FD51    mov         edi,dword ptr [eax]
 0067FD53    call        dword ptr [edi+4]
 0067FD56    mov         edx,dword ptr [ebp-20]
 0067FD59    mov         eax,7C1648;^'Any Type'
 0067FD5E    call        @UStrAsg
 0067FD63    push        684B20;'Omni sensor'
 0067FD68    lea         eax,[ebp-24]
 0067FD6B    push        eax
 0067FD6C    mov         ecx,684B44;'sSysOmniSensor'
 0067FD71    mov         edx,684894;'SysTypeStrings'
 0067FD76    mov         eax,ebx
 0067FD78    mov         edi,dword ptr [eax]
 0067FD7A    call        dword ptr [edi+4]
 0067FD7D    mov         edx,dword ptr [ebp-24]
 0067FD80    mov         eax,7C164C;^'Omni sensor'
 0067FD85    call        @UStrAsg
 0067FD8A    push        684B70;'Laser sensor LZR-1'
 0067FD8F    lea         eax,[ebp-28]
 0067FD92    push        eax
 0067FD93    mov         ecx,684BA4;'sSysLaserLZR1'
 0067FD98    mov         edx,684894;'SysTypeStrings'
 0067FD9D    mov         eax,ebx
 0067FD9F    mov         edi,dword ptr [eax]
 0067FDA1    call        dword ptr [edi+4]
 0067FDA4    mov         edx,dword ptr [ebp-28]
 0067FDA7    mov         eax,7C1650;^'Laser sensor LZR-1'
 0067FDAC    call        @UStrAsg
 0067FDB1    push        684BCC;'Laser sensor 7251'
 0067FDB6    lea         eax,[ebp-2C]
 0067FDB9    push        eax
 0067FDBA    mov         ecx,684BFC;'sSysLaser7251'
 0067FDBF    mov         edx,684894;'SysTypeStrings'
 0067FDC4    mov         eax,ebx
 0067FDC6    mov         edi,dword ptr [eax]
 0067FDC8    call        dword ptr [edi+4]
 0067FDCB    mov         edx,dword ptr [ebp-2C]
 0067FDCE    mov         eax,7C1654;^'Laser sensor 7251'
 0067FDD3    call        @UStrAsg
 0067FDD8    push        684C24;'Multicriteria sensor'
 0067FDDD    lea         eax,[ebp-30]
 0067FDE0    push        eax
 0067FDE1    mov         ecx,684C5C;'sSysMultiSensor'
 0067FDE6    mov         edx,684894;'SysTypeStrings'
 0067FDEB    mov         eax,ebx
 0067FDED    mov         edi,dword ptr [eax]
 0067FDEF    call        dword ptr [edi+4]
 0067FDF2    mov         edx,dword ptr [ebp-30]
 0067FDF5    mov         eax,7C1658;^'Multicriteria sensor'
 0067FDFA    call        @UStrAsg
 0067FDFF    push        684C88;'Any Type (virtual)'
 0067FE04    lea         eax,[ebp-34]
 0067FE07    push        eax
 0067FE08    mov         ecx,684CBC;'sSysAnyTypeVirtual'
 0067FE0D    mov         edx,684894;'SysTypeStrings'
 0067FE12    mov         eax,ebx
 0067FE14    mov         edi,dword ptr [eax]
 0067FE16    call        dword ptr [edi+4]
 0067FE19    mov         edx,dword ptr [ebp-34]
 0067FE1C    mov         eax,7C165C;^'Any Type (virtual)'
 0067FE21    call        @UStrAsg
 0067FE26    push        684CF0;'Four criteria sensor'
 0067FE2B    lea         eax,[ebp-38]
 0067FE2E    push        eax
 0067FE2F    mov         ecx,684D28;'sSysCoptirSensor'
 0067FE34    mov         edx,684894;'SysTypeStrings'
 0067FE39    mov         eax,ebx
 0067FE3B    mov         edi,dword ptr [eax]
 0067FE3D    call        dword ptr [edi+4]
 0067FE40    mov         edx,dword ptr [ebp-38]
 0067FE43    mov         eax,7C1660;^'Four criteria sensor'
 0067FE48    call        @UStrAsg
 0067FE4D    push        684D58;'Three criteria sensor'
 0067FE52    lea         eax,[ebp-3C]
 0067FE55    push        eax
 0067FE56    mov         ecx,684D90;'sSysPtirSensor'
 0067FE5B    mov         edx,684894;'SysTypeStrings'
 0067FE60    mov         eax,ebx
 0067FE62    mov         edi,dword ptr [eax]
 0067FE64    call        dword ptr [edi+4]
 0067FE67    mov         edx,dword ptr [ebp-3C]
 0067FE6A    mov         eax,7C1664;^'Three criteria sensor'
 0067FE6F    call        @UStrAsg
 0067FE74    push        684DBC;'Beam sensor'
 0067FE79    lea         eax,[ebp-40]
 0067FE7C    push        eax
 0067FE7D    mov         ecx,684DE0;'sSysBeamSensor'
 0067FE82    mov         edx,684894;'SysTypeStrings'
 0067FE87    mov         eax,ebx
 0067FE89    mov         edi,dword ptr [eax]
 0067FE8B    call        dword ptr [edi+4]
 0067FE8E    mov         edx,dword ptr [ebp-40]
 0067FE91    mov         eax,7C1668;^'Beam sensor'
 0067FE96    call        @UStrAsg
 0067FE9B    push        684918;'Optical sensor'
 0067FEA0    lea         eax,[ebp-44]
 0067FEA3    push        eax
 0067FEA4    mov         ecx,684E0C;'sSysOptRLCNormal'
 0067FEA9    mov         edx,684894;'SysTypeStrings'
 0067FEAE    mov         eax,ebx
 0067FEB0    mov         edi,dword ptr [eax]
 0067FEB2    call        dword ptr [edi+4]
 0067FEB5    mov         edx,dword ptr [ebp-44]
 0067FEB8    mov         eax,7C166C;^'Optical sensor'
 0067FEBD    call        @UStrAsg
 0067FEC2    push        684E3C;'Optical with siren cntrl'
 0067FEC7    lea         eax,[ebp-48]
 0067FECA    push        eax
 0067FECB    mov         ecx,684E7C;'sSysOptRLCSirene'
 0067FED0    mov         edx,684894;'SysTypeStrings'
 0067FED5    mov         eax,ebx
 0067FED7    mov         edi,dword ptr [eax]
 0067FED9    call        dword ptr [edi+4]
 0067FEDC    mov         edx,dword ptr [ebp-48]
 0067FEDF    mov         eax,7C1670;^'Optical with siren cntrl'
 0067FEE4    call        @UStrAsg
 0067FEE9    push        68496C;'Thermal sensor'
 0067FEEE    lea         eax,[ebp-4C]
 0067FEF1    push        eax
 0067FEF2    mov         ecx,684EAC;'sSysHeatRLCNormal'
 0067FEF7    mov         edx,684894;'SysTypeStrings'
 0067FEFC    mov         eax,ebx
 0067FEFE    mov         edi,dword ptr [eax]
 0067FF00    call        dword ptr [edi+4]
 0067FF03    mov         edx,dword ptr [ebp-4C]
 0067FF06    mov         eax,7C1674;^'Thermal sensor'
 0067FF0B    call        @UStrAsg
 0067FF10    push        684EDC;'Thermal with siren cntrl'
 0067FF15    lea         eax,[ebp-50]
 0067FF18    push        eax
 0067FF19    mov         ecx,684F1C;'sSysHeatRLCSirene'
 0067FF1E    mov         edx,684894;'SysTypeStrings'
 0067FF23    mov         eax,ebx
 0067FF25    mov         edi,dword ptr [eax]
 0067FF27    call        dword ptr [edi+4]
 0067FF2A    mov         edx,dword ptr [ebp-50]
 0067FF2D    mov         eax,7C1678;^'Thermal with siren cntrl'
 0067FF32    call        @UStrAsg
 0067FF37    push        684C24;'Multicriteria sensor'
 0067FF3C    lea         eax,[ebp-54]
 0067FF3F    push        eax
 0067FF40    mov         ecx,684F4C;'sSysMultiRLCNormal'
 0067FF45    mov         edx,684894;'SysTypeStrings'
 0067FF4A    mov         eax,ebx
 0067FF4C    mov         edi,dword ptr [eax]
 0067FF4E    call        dword ptr [edi+4]
 0067FF51    mov         edx,dword ptr [ebp-54]
 0067FF54    mov         eax,7C167C;^'Multicriteria sensor'
 0067FF59    call        @UStrAsg
 0067FF5E    push        684F80;'Multic. with siren cntrl'
 0067FF63    lea         eax,[ebp-58]
 0067FF66    push        eax
 0067FF67    mov         ecx,684FC0;'sSysMultiRLCSirene'
 0067FF6C    mov         edx,684894;'SysTypeStrings'
 0067FF71    mov         eax,ebx
 0067FF73    mov         edi,dword ptr [eax]
 0067FF75    call        dword ptr [edi+4]
 0067FF78    mov         edx,dword ptr [ebp-58]
 0067FF7B    mov         eax,7C1680;^'Multic. with siren cntrl'
 0067FF80    call        @UStrAsg
 0067FF85    push        684CF0;'Four criteria sensor'
 0067FF8A    lea         eax,[ebp-5C]
 0067FF8D    push        eax
 0067FF8E    mov         ecx,684FF4;'sSysCoptirRLCNormal'
 0067FF93    mov         edx,684894;'SysTypeStrings'
 0067FF98    mov         eax,ebx
 0067FF9A    mov         edi,dword ptr [eax]
 0067FF9C    call        dword ptr [edi+4]
 0067FF9F    mov         edx,dword ptr [ebp-5C]
 0067FFA2    mov         eax,7C1684;^'Four criteria sensor'
 0067FFA7    call        @UStrAsg
 0067FFAC    push        685028;'Four crit. with siren cntrl'
 0067FFB1    lea         eax,[ebp-60]
 0067FFB4    push        eax
 0067FFB5    mov         ecx,68506C;'sSysCoptirRLCSirene'
 0067FFBA    mov         edx,684894;'SysTypeStrings'
 0067FFBF    mov         eax,ebx
 0067FFC1    mov         edi,dword ptr [eax]
 0067FFC3    call        dword ptr [edi+4]
 0067FFC6    mov         edx,dword ptr [ebp-60]
 0067FFC9    mov         eax,7C1688;^'Four crit. with siren cntrl'
 0067FFCE    call        @UStrAsg
 0067FFD3    push        684D58;'Three criteria sensor'
 0067FFD8    lea         eax,[ebp-64]
 0067FFDB    push        eax
 0067FFDC    mov         ecx,6850A0;'sSysPtirRLCNormal'
 0067FFE1    mov         edx,684894;'SysTypeStrings'
 0067FFE6    mov         eax,ebx
 0067FFE8    mov         edi,dword ptr [eax]
 0067FFEA    call        dword ptr [edi+4]
 0067FFED    mov         edx,dword ptr [ebp-64]
 0067FFF0    mov         eax,7C168C;^'Three criteria sensor'
 0067FFF5    call        @UStrAsg
 0067FFFA    push        6850D0;'Three crit. with siren cntrl'
 0067FFFF    lea         eax,[ebp-68]
 00680002    push        eax
 00680003    mov         ecx,685118;'sSysPtirRLCSirene'
 00680008    mov         edx,684894;'SysTypeStrings'
 0068000D    mov         eax,ebx
 0068000F    mov         edi,dword ptr [eax]
 00680011    call        dword ptr [edi+4]
 00680014    mov         edx,dword ptr [ebp-68]
 00680017    mov         eax,7C1690;^'Three crit. with siren cntrl'
 0068001C    call        @UStrAsg
 00680021    push        685148;'Fire Alarm Devices'
 00680026    lea         eax,[ebp-6C]
 00680029    push        eax
 0068002A    mov         ecx,68517C;'sOutFireAD'
 0068002F    mov         edx,6851A0;'OutFuncStrings'
 00680034    mov         eax,ebx
 00680036    mov         edi,dword ptr [eax]
 00680038    call        dword ptr [edi+4]
 0068003B    mov         edx,dword ptr [ebp-6C]
 0068003E    mov         eax,7C16B0;^'Fire Alarm Devices'
 00680043    call        @UStrAsg
 00680048    push        6851CC;'Fire Alarm Devices Non-S'
 0068004D    lea         eax,[ebp-70]
 00680050    push        eax
 00680051    mov         ecx,68520C;'sOutFireAdNS'
 00680056    mov         edx,6851A0;'OutFuncStrings'
 0068005B    mov         eax,ebx
 0068005D    mov         edi,dword ptr [eax]
 0068005F    call        dword ptr [edi+4]
 00680062    mov         edx,dword ptr [ebp-70]
 00680065    mov         eax,7C16B4;^'Fire Alarm Devices Non-S'
 0068006A    call        @UStrAsg
 0068006F    push        685234;'Fault Warning Alarm Dev.'
 00680074    lea         eax,[ebp-74]
 00680077    push        eax
 00680078    mov         ecx,685274;'sOutFaultWD'
 0068007D    mov         edx,6851A0;'OutFuncStrings'
 00680082    mov         eax,ebx
 00680084    mov         edi,dword ptr [eax]
 00680086    call        dword ptr [edi+4]
 00680089    mov         edx,dword ptr [ebp-74]
 0068008C    mov         eax,7C16B8;^'Fault Warning Alarm Dev.'
 00680091    call        @UStrAsg
 00680096    push        685298;'Fire Alarm Output'
 0068009B    lea         eax,[ebp-78]
 0068009E    push        eax
 0068009F    mov         ecx,6852C8;'sOutFireAlarm'
 006800A4    mov         edx,6851A0;'OutFuncStrings'
 006800A9    mov         eax,ebx
 006800AB    mov         edi,dword ptr [eax]
 006800AD    call        dword ptr [edi+4]
 006800B0    mov         edx,dword ptr [ebp-78]
 006800B3    mov         eax,7C16BC;^'Fire Alarm Output'
 006800B8    call        @UStrAsg
 006800BD    push        6852F0;'Prealarm Output'
 006800C2    lea         eax,[ebp-7C]
 006800C5    push        eax
 006800C6    mov         ecx,68531C;'sOutPrewarning'
 006800CB    mov         edx,6851A0;'OutFuncStrings'
 006800D0    mov         eax,ebx
 006800D2    mov         edi,dword ptr [eax]
 006800D4    call        dword ptr [edi+4]
 006800D7    mov         edx,dword ptr [ebp-7C]
 006800DA    mov         eax,7C16C0;^'Prealarm Output'
 006800DF    call        @UStrAsg
 006800E4    push        685348;'Fault Warning Output'
 006800E9    lea         eax,[ebp-80]
 006800EC    push        eax
 006800ED    mov         ecx,685380;'sOutFaultWarning'
 006800F2    mov         edx,6851A0;'OutFuncStrings'
 006800F7    mov         eax,ebx
 006800F9    mov         edi,dword ptr [eax]
 006800FB    call        dword ptr [edi+4]
 006800FE    mov         edx,dword ptr [ebp-80]
 00680101    mov         eax,7C16C4;^'Fault Warning Output'
 00680106    call        @UStrAsg
 0068010B    push        6853B0;'Maintenance Warning Outp'
 00680110    lea         eax,[ebp-84]
 00680116    push        eax
 00680117    mov         ecx,6853F0;'sOutMaintWarning'
 0068011C    mov         edx,6851A0;'OutFuncStrings'
 00680121    mov         eax,ebx
 00680123    mov         edi,dword ptr [eax]
 00680125    call        dword ptr [edi+4]
 00680128    mov         edx,dword ptr [ebp-84]
 0068012E    mov         eax,7C16C8;^'Maintenance Warning Outp'
 00680133    call        @UStrAsg
 00680138    push        685420;'Fire Door Output'
 0068013D    lea         eax,[ebp-88]
 00680143    push        eax
 00680144    mov         ecx,685450;'sOutFireDoor'
 00680149    mov         edx,6851A0;'OutFuncStrings'
 0068014E    mov         eax,ebx
 00680150    mov         edi,dword ptr [eax]
 00680152    call        dword ptr [edi+4]
 00680155    mov         edx,dword ptr [ebp-88]
 0068015B    mov         eax,7C16CC;^'Fire Door Output'
 00680160    call        @UStrAsg
 00680165    push        685478;'Extinguisher Output'
 0068016A    lea         eax,[ebp-8C]
 00680170    push        eax
 00680171    mov         ecx,6854AC;'sOutExtinguisher'
 00680176    mov         edx,6851A0;'OutFuncStrings'
 0068017B    mov         eax,ebx
 0068017D    mov         edi,dword ptr [eax]
 0068017F    call        dword ptr [edi+4]
 00680182    mov         edx,dword ptr [ebp-8C]
 00680188    mov         eax,7C16D0;^'Extinguisher Output'
 0068018D    call        @UStrAsg
 00680192    push        6854DC;'Disablement Output'
 00680197    lea         eax,[ebp-90]
 0068019D    push        eax
 0068019E    mov         ecx,685510;'sOutDisablement'
 006801A3    mov         edx,6851A0;'OutFuncStrings'
 006801A8    mov         eax,ebx
 006801AA    mov         edi,dword ptr [eax]
 006801AC    call        dword ptr [edi+4]
 006801AF    mov         edx,dword ptr [ebp-90]
 006801B5    mov         eax,7C16D4;^'Disablement Output'
 006801BA    call        @UStrAsg
 006801BF    push        68553C;'Access Level Output'
 006801C4    lea         eax,[ebp-94]
 006801CA    push        eax
 006801CB    mov         ecx,685570;'sOutAccessLevel'
 006801D0    mov         edx,6851A0;'OutFuncStrings'
 006801D5    mov         eax,ebx
 006801D7    mov         edi,dword ptr [eax]
 006801D9    call        dword ptr [edi+4]
 006801DC    mov         edx,dword ptr [ebp-94]
 006801E2    mov         eax,7C16D8;^'Access Level Output'
 006801E7    call        @UStrAsg
 006801EC    push        68559C;'Technical Alarm Output'
 006801F1    lea         eax,[ebp-98]
 006801F7    push        eax
 006801F8    mov         ecx,6855D8;'sOutTechAlarm'
 006801FD    mov         edx,6851A0;'OutFuncStrings'
 00680202    mov         eax,ebx
 00680204    mov         edi,dword ptr [eax]
 00680206    call        dword ptr [edi+4]
 00680209    mov         edx,dword ptr [ebp-98]
 0068020F    mov         eax,7C16DC;^'Technical Alarm Output'
 00680214    call        @UStrAsg
 00680219    push        685600;'Internal Logic Output'
 0068021E    lea         eax,[ebp-9C]
 00680224    push        eax
 00680225    mov         ecx,685638;'sOutInternalLogic'
 0068022A    mov         edx,6851A0;'OutFuncStrings'
 0068022F    mov         eax,ebx
 00680231    mov         edi,dword ptr [eax]
 00680233    call        dword ptr [edi+4]
 00680236    mov         edx,dword ptr [ebp-9C]
 0068023C    mov         eax,7C16E0;^'Internal Logic Output'
 00680241    call        @UStrAsg
 00680246    push        685668;'External Logic Output'
 0068024B    lea         eax,[ebp-0A0]
 00680251    push        eax
 00680252    mov         ecx,6856A0;'sOutExternalLogic'
 00680257    mov         edx,6851A0;'OutFuncStrings'
 0068025C    mov         eax,ebx
 0068025E    mov         edi,dword ptr [eax]
 00680260    call        dword ptr [edi+4]
 00680263    mov         edx,dword ptr [ebp-0A0]
 00680269    mov         eax,7C16E4;^'External Logic Output'
 0068026E    call        @UStrAsg
 00680273    push        6856D0;'Delayed Fire Alarm outp.'
 00680278    lea         eax,[ebp-0A4]
 0068027E    push        eax
 0068027F    mov         ecx,685710;'sOutDelFireAlarm'
 00680284    mov         edx,6851A0;'OutFuncStrings'
 00680289    mov         eax,ebx
 0068028B    mov         edi,dword ptr [eax]
 0068028D    call        dword ptr [edi+4]
 00680290    mov         edx,dword ptr [ebp-0A4]
 00680296    mov         eax,7C16E8;^'Delayed Fire Alarm outp.'
 0068029B    call        @UStrAsg
 006802A0    push        685740;'FA Transmitter Activ.LED'
 006802A5    lea         eax,[ebp-0A8]
 006802AB    push        eax
 006802AC    mov         ecx,685780;'sOutFAREActivLED'
 006802B1    mov         edx,6851A0;'OutFuncStrings'
 006802B6    mov         eax,ebx
 006802B8    mov         edi,dword ptr [eax]
 006802BA    call        dword ptr [edi+4]
 006802BD    mov         edx,dword ptr [ebp-0A8]
 006802C3    mov         eax,7C16EC;^'FA Transmitter Activ.LED'
 006802C8    call        @UStrAsg
 006802CD    push        6857B0;'Voice Evacuation Activate output'
 006802D2    lea         eax,[ebp-0AC]
 006802D8    push        eax
 006802D9    mov         ecx,685800;'sOutVEActivate'
 006802DE    mov         edx,6851A0;'OutFuncStrings'
 006802E3    mov         eax,ebx
 006802E5    mov         edi,dword ptr [eax]
 006802E7    call        dword ptr [edi+4]
 006802EA    mov         edx,dword ptr [ebp-0AC]
 006802F0    mov         eax,7C16F0;^'Voice Evacuation Activate output'
 006802F5    call        @UStrAsg
 006802FA    push        68582C;'Voice Evacuation Test output'
 006802FF    lea         eax,[ebp-0B0]
 00680305    push        eax
 00680306    mov         ecx,685874;'sOutVETest'
 0068030B    mov         edx,6851A0;'OutFuncStrings'
 00680310    mov         eax,ebx
 00680312    mov         edi,dword ptr [eax]
 00680314    call        dword ptr [edi+4]
 00680317    mov         edx,dword ptr [ebp-0B0]
 0068031D    mov         eax,7C16F4;^'Voice Evacuation Test output'
 00680322    call        @UStrAsg
 00680327    push        685898;'Fire Alarm Devices Lev.1 Silenceable'
 0068032C    lea         eax,[ebp-0B4]
 00680332    push        eax
 00680333    mov         ecx,6858F0;'sOutFireAdL1Sil'
 00680338    mov         edx,6851A0;'OutFuncStrings'
 0068033D    mov         eax,ebx
 0068033F    mov         edi,dword ptr [eax]
 00680341    call        dword ptr [edi+4]
 00680344    mov         edx,dword ptr [ebp-0B4]
 0068034A    mov         eax,7C16F8;^'Fire Alarm Devices Lev.1 Silenceable'
 0068034F    call        @UStrAsg
 00680354    push        68591C;'General Reset Output'
 00680359    lea         eax,[ebp-0B8]
 0068035F    push        eax
 00680360    mov         ecx,685954;'sOutGeneralReset'
 00680365    mov         edx,6851A0;'OutFuncStrings'
 0068036A    mov         eax,ebx
 0068036C    mov         edi,dword ptr [eax]
 0068036E    call        dword ptr [edi+4]
 00680371    mov         edx,dword ptr [ebp-0B8]
 00680377    mov         eax,7C16FC;^'General Reset Output'
 0068037C    call        @UStrAsg
 00680381    push        685984;'Zone Disabled Output'
 00680386    lea         eax,[ebp-0BC]
 0068038C    push        eax
 0068038D    mov         ecx,6859BC;'sOutZoneDisabled'
 00680392    mov         edx,6851A0;'OutFuncStrings'
 00680397    mov         eax,ebx
 00680399    mov         edi,dword ptr [eax]
 0068039B    call        dword ptr [edi+4]
 0068039E    mov         edx,dword ptr [ebp-0BC]
 006803A4    mov         eax,7C1700;^'Zone Disabled Output'
 006803A9    call        @UStrAsg
 006803AE    push        6859EC;'Delayed Alarm Enabled Output'
 006803B3    lea         eax,[ebp-0C0]
 006803B9    push        eax
 006803BA    mov         ecx,685A34;'sOutDelAlarmEnabled'
 006803BF    mov         edx,6851A0;'OutFuncStrings'
 006803C4    mov         eax,ebx
 006803C6    mov         edi,dword ptr [eax]
 006803C8    call        dword ptr [edi+4]
 006803CB    mov         edx,dword ptr [ebp-0C0]
 006803D1    mov         eax,7C1704;^'Delayed Alarm Enabled Output'
 006803D6    call        @UStrAsg
 006803DB    push        685A68;'Fire router disabled output'
 006803E0    lea         eax,[ebp-0C4]
 006803E6    push        eax
 006803E7    mov         ecx,685AAC;'sOutFireRouterDisabled'
 006803EC    mov         edx,6851A0;'OutFuncStrings'
 006803F1    mov         eax,ebx
 006803F3    mov         edi,dword ptr [eax]
 006803F5    call        dword ptr [edi+4]
 006803F8    mov         edx,dword ptr [ebp-0C4]
 006803FE    mov         eax,7C1708;^'Fire router disabled output'
 00680403    call        @UStrAsg
 00680408    push        685AE8;'Fault router disabled output'
 0068040D    lea         eax,[ebp-0C8]
 00680413    push        eax
 00680414    mov         ecx,685B30;'sOutFaultRouterDisabled'
 00680419    mov         edx,6851A0;'OutFuncStrings'
 0068041E    mov         eax,ebx
 00680420    mov         edi,dword ptr [eax]
 00680422    call        dword ptr [edi+4]
 00680425    mov         edx,dword ptr [ebp-0C8]
 0068042B    mov         eax,7C170C;^'Fault router disabled output'
 00680430    call        @UStrAsg
 00680435    push        685B6C;'Main Supply Fault Output'
 0068043A    lea         eax,[ebp-0CC]
 00680440    push        eax
 00680441    mov         ecx,685BAC;'sOutMainSupplyFault'
 00680446    mov         edx,6851A0;'OutFuncStrings'
 0068044B    mov         eax,ebx
 0068044D    mov         edi,dword ptr [eax]
 0068044F    call        dword ptr [edi+4]
 00680452    mov         edx,dword ptr [ebp-0CC]
 00680458    mov         eax,7C1710;^'Main Supply Fault Output'
 0068045D    call        @UStrAsg
 00680462    push        685BE0;'Conventional Zone'
 00680467    lea         eax,[ebp-0D0]
 0068046D    push        eax
 0068046E    mov         ecx,685C10;'sInpConvZone'
 00680473    mov         edx,685C38;'InpFuncStrings'
 00680478    mov         eax,ebx
 0068047A    mov         edi,dword ptr [eax]
 0068047C    call        dword ptr [edi+4]
 0068047F    mov         edx,dword ptr [ebp-0D0]
 00680485    mov         eax,7C1714;^'Conventional Zone'
 0068048A    call        @UStrAsg
 0068048F    push        685C64;'Conv. Beam Detector'
 00680494    lea         eax,[ebp-0D4]
 0068049A    push        eax
 0068049B    mov         ecx,685C98;'sInpBeamDetector'
 006804A0    mov         edx,685C38;'InpFuncStrings'
 006804A5    mov         eax,ebx
 006804A7    mov         edi,dword ptr [eax]
 006804A9    call        dword ptr [edi+4]
 006804AC    mov         edx,dword ptr [ebp-0D4]
 006804B2    mov         eax,7C1718;^'Conv. Beam Detector'
 006804B7    call        @UStrAsg
 006804BC    push        685CC8;'L 1'
 006804C1    lea         eax,[ebp-0D8]
 006804C7    push        eax
 006804C8    mov         ecx,685CDC;'sLevel1'
 006804CD    mov         edx,685CF8;'APLevelStrings'
 006804D2    mov         eax,ebx
 006804D4    mov         edi,dword ptr [eax]
 006804D6    call        dword ptr [edi+4]
 006804D9    mov         edx,dword ptr [ebp-0D8]
 006804DF    mov         eax,7C2844;^'L 1'
 006804E4    call        @UStrAsg
 006804E9    push        685D24;'L 2'
 006804EE    lea         eax,[ebp-0DC]
 006804F4    push        eax
 006804F5    mov         ecx,685D38;'sLevel2'
 006804FA    mov         edx,685CF8;'APLevelStrings'
 006804FF    mov         eax,ebx
 00680501    mov         edi,dword ptr [eax]
 00680503    call        dword ptr [edi+4]
 00680506    mov         edx,dword ptr [ebp-0DC]
 0068050C    mov         eax,7C2848;^'L 2'
 00680511    call        @UStrAsg
 00680516    push        685D54;'L 3'
 0068051B    lea         eax,[ebp-0E0]
 00680521    push        eax
 00680522    mov         ecx,685D68;'sLevel3'
 00680527    mov         edx,685CF8;'APLevelStrings'
 0068052C    mov         eax,ebx
 0068052E    mov         edi,dword ptr [eax]
 00680530    call        dword ptr [edi+4]
 00680533    mov         edx,dword ptr [ebp-0E0]
 00680539    mov         eax,7C284C;^'L 3'
 0068053E    call        @UStrAsg
 00680543    push        685D84;'L 4'
 00680548    lea         eax,[ebp-0E4]
 0068054E    push        eax
 0068054F    mov         ecx,685D98;'sLevel4'
 00680554    mov         edx,685CF8;'APLevelStrings'
 00680559    mov         eax,ebx
 0068055B    mov         edi,dword ptr [eax]
 0068055D    call        dword ptr [edi+4]
 00680560    mov         edx,dword ptr [ebp-0E4]
 00680566    mov         eax,7C2850;^'L 4'
 0068056B    call        @UStrAsg
 00680570    push        685DB4;'L 5'
 00680575    lea         eax,[ebp-0E8]
 0068057B    push        eax
 0068057C    mov         ecx,685DC8;'sLevel5'
 00680581    mov         edx,685CF8;'APLevelStrings'
 00680586    mov         eax,ebx
 00680588    mov         edi,dword ptr [eax]
 0068058A    call        dword ptr [edi+4]
 0068058D    mov         edx,dword ptr [ebp-0E8]
 00680593    mov         eax,7C2854;^'L 5'
 00680598    call        @UStrAsg
 0068059D    push        685DE4;'L 6'
 006805A2    lea         eax,[ebp-0EC]
 006805A8    push        eax
 006805A9    mov         ecx,685DF8;'sLevel6'
 006805AE    mov         edx,685CF8;'APLevelStrings'
 006805B3    mov         eax,ebx
 006805B5    mov         edi,dword ptr [eax]
 006805B7    call        dword ptr [edi+4]
 006805BA    mov         edx,dword ptr [ebp-0EC]
 006805C0    mov         eax,7C2858;^'L 6'
 006805C5    call        @UStrAsg
 006805CA    push        685E14;'L 7'
 006805CF    lea         eax,[ebp-0F0]
 006805D5    push        eax
 006805D6    mov         ecx,685E28;'sLevel7'
 006805DB    mov         edx,685CF8;'APLevelStrings'
 006805E0    mov         eax,ebx
 006805E2    mov         edi,dword ptr [eax]
 006805E4    call        dword ptr [edi+4]
 006805E7    mov         edx,dword ptr [ebp-0F0]
 006805ED    mov         eax,7C285C;^'L 7'
 006805F2    call        @UStrAsg
 006805F7    push        685E44;'L 8'
 006805FC    lea         eax,[ebp-0F4]
 00680602    push        eax
 00680603    mov         ecx,685E58;'sLevel8'
 00680608    mov         edx,685CF8;'APLevelStrings'
 0068060D    mov         eax,ebx
 0068060F    mov         edi,dword ptr [eax]
 00680611    call        dword ptr [edi+4]
 00680614    mov         edx,dword ptr [ebp-0F4]
 0068061A    mov         eax,7C2860;^'L 8'
 0068061F    call        @UStrAsg
 00680624    push        685E74;'L 9'
 00680629    lea         eax,[ebp-0F8]
 0068062F    push        eax
 00680630    mov         ecx,685E88;'sLevel9'
 00680635    mov         edx,685CF8;'APLevelStrings'
 0068063A    mov         eax,ebx
 0068063C    mov         edi,dword ptr [eax]
 0068063E    call        dword ptr [edi+4]
 00680641    mov         edx,dword ptr [ebp-0F8]
 00680647    mov         eax,7C2864;^'L 9'
 0068064C    call        @UStrAsg
 00680651    push        685EA4;'L10'
 00680656    lea         eax,[ebp-0FC]
 0068065C    push        eax
 0068065D    mov         ecx,685EB8;'sLevel10'
 00680662    mov         edx,685CF8;'APLevelStrings'
 00680667    mov         eax,ebx
 00680669    mov         edi,dword ptr [eax]
 0068066B    call        dword ptr [edi+4]
 0068066E    mov         edx,dword ptr [ebp-0FC]
 00680674    mov         eax,7C2868;^'L10'
 00680679    call        @UStrAsg
 0068067E    push        685ED8;'Normal'
 00680683    lea         eax,[ebp-100]
 00680689    push        eax
 0068068A    mov         ecx,685EF4;'sModeNormal'
 0068068F    mov         edx,685F18;'InpModeStrings'
 00680694    mov         eax,ebx
 00680696    mov         edi,dword ptr [eax]
 00680698    call        dword ptr [edi+4]
 0068069B    mov         edx,dword ptr [ebp-100]
 006806A1    mov         eax,7C2478;^'Normal'
 006806A6    call        @UStrAsg
 006806AB    push        685F44;'Delayed Outp.'
 006806B0    lea         eax,[ebp-104]
 006806B6    push        eax
 006806B7    mov         ecx,685F6C;'sModeDelayed'
 006806BC    mov         edx,685F18;'InpModeStrings'
 006806C1    mov         eax,ebx
 006806C3    mov         edi,dword ptr [eax]
 006806C5    call        dword ptr [edi+4]
 006806C8    mov         edx,dword ptr [ebp-104]
 006806CE    mov         eax,7C247C;^'Delayed Outp.'
 006806D3    call        @UStrAsg
 006806D8    push        685F94;'Coincidence'
 006806DD    lea         eax,[ebp-108]
 006806E3    push        eax
 006806E4    mov         ecx,685FB8;'sModeCoincidence'
 006806E9    mov         edx,685F18;'InpModeStrings'
 006806EE    mov         eax,ebx
 006806F0    mov         edi,dword ptr [eax]
 006806F2    call        dword ptr [edi+4]
 006806F5    mov         edx,dword ptr [ebp-108]
 006806FB    mov         eax,7C2480;^'Coincidence'
 00680700    call        @UStrAsg
 00680705    push        685FE8;'Prealarm'
 0068070A    lea         eax,[ebp-10C]
 00680710    push        eax
 00680711    mov         ecx,686008;'sModePrewarning'
 00680716    mov         edx,685F18;'InpModeStrings'
 0068071B    mov         eax,ebx
 0068071D    mov         edi,dword ptr [eax]
 0068071F    call        dword ptr [edi+4]
 00680722    mov         edx,dword ptr [ebp-10C]
 00680728    mov         eax,7C2484;^'Prealarm'
 0068072D    call        @UStrAsg
 00680732    push        686034;'Local alarm'
 00680737    lea         eax,[ebp-110]
 0068073D    push        eax
 0068073E    mov         ecx,686058;'sModeLocalAlarm'
 00680743    mov         edx,685F18;'InpModeStrings'
 00680748    mov         eax,ebx
 0068074A    mov         edi,dword ptr [eax]
 0068074C    call        dword ptr [edi+4]
 0068074F    mov         edx,dword ptr [ebp-110]
 00680755    mov         eax,7C2488;^'Local alarm'
 0068075A    call        @UStrAsg
 0068075F    push        686084;'Monitored'
 00680764    lea         eax,[ebp-114]
 0068076A    push        eax
 0068076B    mov         ecx,6860A4;'sMonitored'
 00680770    mov         edx,6860C8;'OutMonitStrings'
 00680775    mov         eax,ebx
 00680777    mov         edi,dword ptr [eax]
 00680779    call        dword ptr [edi+4]
 0068077C    mov         edx,dword ptr [ebp-114]
 00680782    mov         eax,7C2490;^'Monitored'
 00680787    call        @UStrAsg
 0068078C    push        6860F4;'Not monitored'
 00680791    lea         eax,[ebp-118]
 00680797    push        eax
 00680798    mov         ecx,68611C;'sNotMonitored'
 0068079D    mov         edx,6860C8;'OutMonitStrings'
 006807A2    mov         eax,ebx
 006807A4    mov         edi,dword ptr [eax]
 006807A6    call        dword ptr [edi+4]
 006807A9    mov         edx,dword ptr [ebp-118]
 006807AF    mov         eax,7C2494;^'Not monitored'
 006807B4    call        @UStrAsg
 006807B9    push        686144;'Siren Control'
 006807BE    lea         eax,[ebp-11C]
 006807C4    push        eax
 006807C5    mov         ecx,68616C;'sSirenControl'
 006807CA    mov         edx,6860C8;'OutMonitStrings'
 006807CF    mov         eax,ebx
 006807D1    mov         edi,dword ptr [eax]
 006807D3    call        dword ptr [edi+4]
 006807D6    mov         edx,dword ptr [ebp-11C]
 006807DC    mov         eax,7C2498;^'Siren Control'
 006807E1    call        @UStrAsg
 006807E6    push        686194;'Continuous'
 006807EB    lea         eax,[ebp-120]
 006807F1    push        eax
 006807F2    mov         ecx,6861B8;'sSndContinuous'
 006807F7    mov         edx,6861E4;'SndModeStrings'
 006807FC    mov         eax,ebx
 006807FE    mov         edi,dword ptr [eax]
 00680800    call        dword ptr [edi+4]
 00680803    mov         edx,dword ptr [ebp-120]
 00680809    mov         eax,7C249C;^'Continuous'
 0068080E    call        @UStrAsg
 00680813    push        686210;^TList<FXCommMgr.TCommTask>.GetEnumerator:TList<FXCommMgr.TCommTask>.TEnumerator
 00680818    lea         eax,[ebp-124]
 0068081E    push        eax
 0068081F    mov         ecx,68622C;'sSndPulsed'
 00680824    mov         edx,6861E4;'SndModeStrings'
 00680829    mov         eax,ebx
 0068082B    mov         edi,dword ptr [eax]
 0068082D    call        dword ptr [edi+4]
 00680830    mov         edx,dword ptr [ebp-124]
 00680836    mov         eax,7C24A0;^'Pulsed'
 0068083B    call        @UStrAsg
 00680840    push        686250;'Phased evacuation'
 00680845    lea         eax,[ebp-128]
 0068084B    push        eax
 0068084C    mov         ecx,686280;'sSndPhasedEvac'
 00680851    mov         edx,6861E4;'SndModeStrings'
 00680856    mov         eax,ebx
 00680858    mov         edi,dword ptr [eax]
 0068085A    call        dword ptr [edi+4]
 0068085D    mov         edx,dword ptr [ebp-128]
 00680863    mov         eax,7C24A4;^'Phased evacuation'
 00680868    call        @UStrAsg
 0068086D    push        6862AC;'By dipswitch'
 00680872    lea         eax,[ebp-12C]
 00680878    push        eax
 00680879    mov         ecx,6862D4;'sSndByDipSwitch'
 0068087E    mov         edx,6861E4;'SndModeStrings'
 00680883    mov         eax,ebx
 00680885    mov         edi,dword ptr [eax]
 00680887    call        dword ptr [edi+4]
 0068088A    mov         edx,dword ptr [ebp-12C]
 00680890    mov         eax,7C24A8;^'By dipswitch'
 00680895    call        @UStrAsg
 0068089A    push        686300;'Primary 01, T1'
 0068089F    lea         eax,[ebp-130]
 006808A5    push        eax
 006808A6    mov         ecx,68632C;'sSndToneP01'
 006808AB    mov         edx,686350;'SndToneStrings'
 006808B0    mov         eax,ebx
 006808B2    mov         edi,dword ptr [eax]
 006808B4    call        dword ptr [edi+4]
 006808B7    mov         edx,dword ptr [ebp-130]
 006808BD    mov         eax,7C155C;^'Primary 01, T1'
 006808C2    call        @UStrAsg
 006808C7    push        68637C;'Primary 02, T12'
 006808CC    lea         eax,[ebp-134]
 006808D2    push        eax
 006808D3    mov         ecx,6863A8;'sSndToneP02'
 006808D8    mov         edx,686350;'SndToneStrings'
 006808DD    mov         eax,ebx
 006808DF    mov         edi,dword ptr [eax]
 006808E1    call        dword ptr [edi+4]
 006808E4    mov         edx,dword ptr [ebp-134]
 006808EA    mov         eax,7C1560;^'Primary 02, T12'
 006808EF    call        @UStrAsg
 006808F4    push        6863CC;'Primary 03, T14'
 006808F9    lea         eax,[ebp-138]
 006808FF    push        eax
 00680900    mov         ecx,6863F8;'sSndToneP03'
 00680905    mov         edx,686350;'SndToneStrings'
 0068090A    mov         eax,ebx
 0068090C    mov         edi,dword ptr [eax]
 0068090E    call        dword ptr [edi+4]
 00680911    mov         edx,dword ptr [ebp-138]
 00680917    mov         eax,7C1564;^'Primary 03, T14'
 0068091C    call        @UStrAsg
 00680921    push        68641C;'Primary 04, T16'
 00680926    lea         eax,[ebp-13C]
 0068092C    push        eax
 0068092D    mov         ecx,686448;'sSndToneP04'
 00680932    mov         edx,686350;'SndToneStrings'
 00680937    mov         eax,ebx
 00680939    mov         edi,dword ptr [eax]
 0068093B    call        dword ptr [edi+4]
 0068093E    mov         edx,dword ptr [ebp-13C]
 00680944    mov         eax,7C1568;^'Primary 04, T16'
 00680949    call        @UStrAsg
 0068094E    push        68646C;'Primary 05, T3'
 00680953    lea         eax,[ebp-140]
 00680959    push        eax
 0068095A    mov         ecx,686498;'sSndToneP05'
 0068095F    mov         edx,686350;'SndToneStrings'
 00680964    mov         eax,ebx
 00680966    mov         edi,dword ptr [eax]
 00680968    call        dword ptr [edi+4]
 0068096B    mov         edx,dword ptr [ebp-140]
 00680971    mov         eax,7C156C;^'Primary 05, T3'
 00680976    call        @UStrAsg
 0068097B    push        6864BC;'Primary 06, T4'
 00680980    lea         eax,[ebp-144]
 00680986    push        eax
 00680987    mov         ecx,6864E8;'sSndToneP06'
 0068098C    mov         edx,686350;'SndToneStrings'
 00680991    mov         eax,ebx
 00680993    mov         edi,dword ptr [eax]
 00680995    call        dword ptr [edi+4]
 00680998    mov         edx,dword ptr [ebp-144]
 0068099E    mov         eax,7C1570;^'Primary 06, T4'
 006809A3    call        @UStrAsg
 006809A8    push        68650C;'Primary 07, T18'
 006809AD    lea         eax,[ebp-148]
 006809B3    push        eax
 006809B4    mov         ecx,686538;'sSndToneP07'
 006809B9    mov         edx,686350;'SndToneStrings'
 006809BE    mov         eax,ebx
 006809C0    mov         edi,dword ptr [eax]
 006809C2    call        dword ptr [edi+4]
 006809C5    mov         edx,dword ptr [ebp-148]
 006809CB    mov         eax,7C1574;^'Primary 07, T18'
 006809D0    call        @UStrAsg
 006809D5    push        68655C;'Primary 08, T6'
 006809DA    lea         eax,[ebp-14C]
 006809E0    push        eax
 006809E1    mov         ecx,686588;'sSndToneP08'
 006809E6    mov         edx,686350;'SndToneStrings'
 006809EB    mov         eax,ebx
 006809ED    mov         edi,dword ptr [eax]
 006809EF    call        dword ptr [edi+4]
 006809F2    mov         edx,dword ptr [ebp-14C]
 006809F8    mov         eax,7C1578;^'Primary 08, T6'
 006809FD    call        @UStrAsg
 00680A02    push        6865AC;'Primary 09, T7'
 00680A07    lea         eax,[ebp-150]
 00680A0D    push        eax
 00680A0E    mov         ecx,6865D8;'sSndToneP09'
 00680A13    mov         edx,686350;'SndToneStrings'
 00680A18    mov         eax,ebx
 00680A1A    mov         edi,dword ptr [eax]
 00680A1C    call        dword ptr [edi+4]
 00680A1F    mov         edx,dword ptr [ebp-150]
 00680A25    mov         eax,7C157C;^'Primary 09, T7'
 00680A2A    call        @UStrAsg
 00680A2F    push        6865FC;'Primary 10, T19'
 00680A34    lea         eax,[ebp-154]
 00680A3A    push        eax
 00680A3B    mov         ecx,686628;'sSndToneP10'
 00680A40    mov         edx,686350;'SndToneStrings'
 00680A45    mov         eax,ebx
 00680A47    mov         edi,dword ptr [eax]
 00680A49    call        dword ptr [edi+4]
 00680A4C    mov         edx,dword ptr [ebp-154]
 00680A52    mov         eax,7C1580;^'Primary 10, T19'
 00680A57    call        @UStrAsg
 00680A5C    push        68664C;'Primary 11, T20'
 00680A61    lea         eax,[ebp-158]
 00680A67    push        eax
 00680A68    mov         ecx,686678;'sSndToneP11'
 00680A6D    mov         edx,686350;'SndToneStrings'
 00680A72    mov         eax,ebx
 00680A74    mov         edi,dword ptr [eax]
 00680A76    call        dword ptr [edi+4]
 00680A79    mov         edx,dword ptr [ebp-158]
 00680A7F    mov         eax,7C1584;^'Primary 11, T20'
 00680A84    call        @UStrAsg
 00680A89    push        68669C;'Primary 12, T8'
 00680A8E    lea         eax,[ebp-15C]
 00680A94    push        eax
 00680A95    mov         ecx,6866C8;'sSndToneP12'
 00680A9A    mov         edx,686350;'SndToneStrings'
 00680A9F    mov         eax,ebx
 00680AA1    mov         edi,dword ptr [eax]
 00680AA3    call        dword ptr [edi+4]
 00680AA6    mov         edx,dword ptr [ebp-15C]
 00680AAC    mov         eax,7C1588;^'Primary 12, T8'
 00680AB1    call        @UStrAsg
 00680AB6    push        6866EC;'Primary 13, T10'
 00680ABB    lea         eax,[ebp-160]
 00680AC1    push        eax
 00680AC2    mov         ecx,686718;'sSndToneP13'
 00680AC7    mov         edx,686350;'SndToneStrings'
 00680ACC    mov         eax,ebx
 00680ACE    mov         edi,dword ptr [eax]
 00680AD0    call        dword ptr [edi+4]
 00680AD3    mov         edx,dword ptr [ebp-160]
 00680AD9    mov         eax,7C158C;^'Primary 13, T10'
 00680ADE    call        @UStrAsg
 00680AE3    push        68673C;'Primary 14, T13'
 00680AE8    lea         eax,[ebp-164]
 00680AEE    push        eax
 00680AEF    mov         ecx,686768;'sSndToneP14'
 00680AF4    mov         edx,686350;'SndToneStrings'
 00680AF9    mov         eax,ebx
 00680AFB    mov         edi,dword ptr [eax]
 00680AFD    call        dword ptr [edi+4]
 00680B00    mov         edx,dword ptr [ebp-164]
 00680B06    mov         eax,7C1590;^'Primary 14, T13'
 00680B0B    call        @UStrAsg
 00680B10    push        68678C;'Primary 15, T1'
 00680B15    lea         eax,[ebp-168]
 00680B1B    push        eax
 00680B1C    mov         ecx,6867B8;'sSndToneP15'
 00680B21    mov         edx,686350;'SndToneStrings'
 00680B26    mov         eax,ebx
 00680B28    mov         edi,dword ptr [eax]
 00680B2A    call        dword ptr [edi+4]
 00680B2D    mov         edx,dword ptr [ebp-168]
 00680B33    mov         eax,7C1594;^'Primary 15, T1'
 00680B38    call        @UStrAsg
 00680B3D    push        6867DC;'Secondary 01, T0'
 00680B42    lea         eax,[ebp-16C]
 00680B48    push        eax
 00680B49    mov         ecx,68680C;'sSndToneS01'
 00680B4E    mov         edx,686350;'SndToneStrings'
 00680B53    mov         eax,ebx
 00680B55    mov         edi,dword ptr [eax]
 00680B57    call        dword ptr [edi+4]
 00680B5A    mov         edx,dword ptr [ebp-16C]
 00680B60    mov         eax,7C1598;^'Secondary 01, T0'
 00680B65    call        @UStrAsg
 00680B6A    push        686830;'Secondary 02, T11'
 00680B6F    lea         eax,[ebp-170]
 00680B75    push        eax
 00680B76    mov         ecx,686860;'sSndToneS02'
 00680B7B    mov         edx,686350;'SndToneStrings'
 00680B80    mov         eax,ebx
 00680B82    mov         edi,dword ptr [eax]
 00680B84    call        dword ptr [edi+4]
 00680B87    mov         edx,dword ptr [ebp-170]
 00680B8D    mov         eax,7C159C;^'Secondary 02, T11'
 00680B92    call        @UStrAsg
 00680B97    push        686884;'Secondary 03, T13'
 00680B9C    lea         eax,[ebp-174]
 00680BA2    push        eax
 00680BA3    mov         ecx,6868B4;'sSndToneS03'
 00680BA8    mov         edx,686350;'SndToneStrings'
 00680BAD    mov         eax,ebx
 00680BAF    mov         edi,dword ptr [eax]
 00680BB1    call        dword ptr [edi+4]
 00680BB4    mov         edx,dword ptr [ebp-174]
 00680BBA    mov         eax,7C15A0;^'Secondary 03, T13'
 00680BBF    call        @UStrAsg
 00680BC4    push        6868D8;'Secondary 04, T15'
 00680BC9    lea         eax,[ebp-178]
 00680BCF    push        eax
 00680BD0    mov         ecx,686908;'sSndToneS04'
 00680BD5    mov         edx,686350;'SndToneStrings'
 00680BDA    mov         eax,ebx
 00680BDC    mov         edi,dword ptr [eax]
 00680BDE    call        dword ptr [edi+4]
 00680BE1    mov         edx,dword ptr [ebp-178]
 00680BE7    mov         eax,7C15A4;^'Secondary 04, T15'
 00680BEC    call        @UStrAsg
 00680BF1    push        68692C;'Secondary 05, T2'
 00680BF6    lea         eax,[ebp-17C]
 00680BFC    push        eax
 00680BFD    mov         ecx,68695C;'sSndToneS05'
 00680C02    mov         edx,686350;'SndToneStrings'
 00680C07    mov         eax,ebx
 00680C09    mov         edi,dword ptr [eax]
 00680C0B    call        dword ptr [edi+4]
 00680C0E    mov         edx,dword ptr [ebp-17C]
 00680C14    mov         eax,7C15A8;^'Secondary 05, T2'
 00680C19    call        @UStrAsg
 00680C1E    push        686980;'Secondary 06, T2'
 00680C23    lea         eax,[ebp-180]
 00680C29    push        eax
 00680C2A    mov         ecx,6869B0;'sSndToneS06'
 00680C2F    mov         edx,686350;'SndToneStrings'
 00680C34    mov         eax,ebx
 00680C36    mov         edi,dword ptr [eax]
 00680C38    call        dword ptr [edi+4]
 00680C3B    mov         edx,dword ptr [ebp-180]
 00680C41    mov         eax,7C15AC;^'Secondary 06, T2'
 00680C46    call        @UStrAsg
 00680C4B    push        6869D4;'Secondary 07, T17'
 00680C50    lea         eax,[ebp-184]
 00680C56    push        eax
 00680C57    mov         ecx,686A04;'sSndToneS07'
 00680C5C    mov         edx,686350;'SndToneStrings'
 00680C61    mov         eax,ebx
 00680C63    mov         edi,dword ptr [eax]
 00680C65    call        dword ptr [edi+4]
 00680C68    mov         edx,dword ptr [ebp-184]
 00680C6E    mov         eax,7C15B0;^'Secondary 07, T17'
 00680C73    call        @UStrAsg
 00680C78    push        686A28;'Secondary 08, T5'
 00680C7D    lea         eax,[ebp-188]
 00680C83    push        eax
 00680C84    mov         ecx,686A58;'sSndToneS08'
 00680C89    mov         edx,686350;'SndToneStrings'
 00680C8E    mov         eax,ebx
 00680C90    mov         edi,dword ptr [eax]
 00680C92    call        dword ptr [edi+4]
 00680C95    mov         edx,dword ptr [ebp-188]
 00680C9B    mov         eax,7C15B4;^'Secondary 08, T5'
 00680CA0    call        @UStrAsg
 00680CA5    push        686A7C;'Secondary 09, T5'
 00680CAA    lea         eax,[ebp-18C]
 00680CB0    push        eax
 00680CB1    mov         ecx,686AAC;'sSndToneS09'
 00680CB6    mov         edx,686350;'SndToneStrings'
 00680CBB    mov         eax,ebx
 00680CBD    mov         edi,dword ptr [eax]
 00680CBF    call        dword ptr [edi+4]
 00680CC2    mov         edx,dword ptr [ebp-18C]
 00680CC8    mov         eax,7C15B8;^'Secondary 09, T5'
 00680CCD    call        @UStrAsg
 00680CD2    push        686AD0;'Secondary 10, T13'
 00680CD7    lea         eax,[ebp-190]
 00680CDD    push        eax
 00680CDE    mov         ecx,686B00;'sSndToneS10'
 00680CE3    mov         edx,686350;'SndToneStrings'
 00680CE8    mov         eax,ebx
 00680CEA    mov         edi,dword ptr [eax]
 00680CEC    call        dword ptr [edi+4]
 00680CEF    mov         edx,dword ptr [ebp-190]
 00680CF5    mov         eax,7C15BC;^'Secondary 10, T13'
 00680CFA    call        @UStrAsg
 00680CFF    push        686B24;'Secondary 11, T15'
 00680D04    lea         eax,[ebp-194]
 00680D0A    push        eax
 00680D0B    mov         ecx,686B54;'sSndToneS11'
 00680D10    mov         edx,686350;'SndToneStrings'
 00680D15    mov         eax,ebx
 00680D17    mov         edi,dword ptr [eax]
 00680D19    call        dword ptr [edi+4]
 00680D1C    mov         edx,dword ptr [ebp-194]
 00680D22    mov         eax,7C15C0;^'Secondary 11, T15'
 00680D27    call        @UStrAsg
 00680D2C    push        686B78;'Secondary 12, T9'
 00680D31    lea         eax,[ebp-198]
 00680D37    push        eax
 00680D38    mov         ecx,686BA8;'sSndToneS12'
 00680D3D    mov         edx,686350;'SndToneStrings'
 00680D42    mov         eax,ebx
 00680D44    mov         edi,dword ptr [eax]
 00680D46    call        dword ptr [edi+4]
 00680D49    mov         edx,dword ptr [ebp-198]
 00680D4F    mov         eax,7C15C4;^'Secondary 12, T9'
 00680D54    call        @UStrAsg
 00680D59    push        686BCC;'Secondary 13, T22'
 00680D5E    lea         eax,[ebp-19C]
 00680D64    push        eax
 00680D65    mov         ecx,686BFC;'sSndToneS13'
 00680D6A    mov         edx,686350;'SndToneStrings'
 00680D6F    mov         eax,ebx
 00680D71    mov         edi,dword ptr [eax]
 00680D73    call        dword ptr [edi+4]
 00680D76    mov         edx,dword ptr [ebp-19C]
 00680D7C    mov         eax,7C15C8;^'Secondary 13, T22'
 00680D81    call        @UStrAsg
 00680D86    push        686C20;'Secondary 14, T21'
 00680D8B    lea         eax,[ebp-1A0]
 00680D91    push        eax
 00680D92    mov         ecx,686C50;'sSndToneS14'
 00680D97    mov         edx,686350;'SndToneStrings'
 00680D9C    mov         eax,ebx
 00680D9E    mov         edi,dword ptr [eax]
 00680DA0    call        dword ptr [edi+4]
 00680DA3    mov         edx,dword ptr [ebp-1A0]
 00680DA9    mov         eax,7C15CC;^'Secondary 14, T21'
 00680DAE    call        @UStrAsg
 00680DB3    push        686C74;'Secondary 15, T0'
 00680DB8    lea         eax,[ebp-1A4]
 00680DBE    push        eax
 00680DBF    mov         ecx,686CA4;'sSndToneS15'
 00680DC4    mov         edx,686350;'SndToneStrings'
 00680DC9    mov         eax,ebx
 00680DCB    mov         edi,dword ptr [eax]
 00680DCD    call        dword ptr [edi+4]
 00680DD0    mov         edx,dword ptr [ebp-1A4]
 00680DD6    mov         eax,7C15D0;^'Secondary 15, T0'
 00680DDB    call        @UStrAsg
 00680DE0    push        686CC8;'Phased 01'
 00680DE5    lea         eax,[ebp-1A8]
 00680DEB    push        eax
 00680DEC    mov         ecx,686CE8;'sSndTonePair01'
 00680DF1    mov         edx,686D14;'SndTonePairStrings'
 00680DF6    mov         eax,ebx
 00680DF8    mov         edi,dword ptr [eax]
 00680DFA    call        dword ptr [edi+4]
 00680DFD    mov         edx,dword ptr [ebp-1A8]
 00680E03    mov         eax,7C15D4;^'Phased 01'
 00680E08    call        @UStrAsg
 00680E0D    push        686D48;'Phased 02'
 00680E12    lea         eax,[ebp-1AC]
 00680E18    push        eax
 00680E19    mov         ecx,686D68;'sSndTonePair02'
 00680E1E    mov         edx,686D14;'SndTonePairStrings'
 00680E23    mov         eax,ebx
 00680E25    mov         edi,dword ptr [eax]
 00680E27    call        dword ptr [edi+4]
 00680E2A    mov         edx,dword ptr [ebp-1AC]
 00680E30    mov         eax,7C15D8;^'Phased 02'
 00680E35    call        @UStrAsg
 00680E3A    push        686D94;'Phased 03'
 00680E3F    lea         eax,[ebp-1B0]
 00680E45    push        eax
 00680E46    mov         ecx,686DB4;'sSndTonePair03'
 00680E4B    mov         edx,686D14;'SndTonePairStrings'
 00680E50    mov         eax,ebx
 00680E52    mov         edi,dword ptr [eax]
 00680E54    call        dword ptr [edi+4]
 00680E57    mov         edx,dword ptr [ebp-1B0]
 00680E5D    mov         eax,7C15DC;^'Phased 03'
 00680E62    call        @UStrAsg
 00680E67    push        686DE0;'Phased 04'
 00680E6C    lea         eax,[ebp-1B4]
 00680E72    push        eax
 00680E73    mov         ecx,686E00;'sSndTonePair04'
 00680E78    mov         edx,686D14;'SndTonePairStrings'
 00680E7D    mov         eax,ebx
 00680E7F    mov         edi,dword ptr [eax]
 00680E81    call        dword ptr [edi+4]
 00680E84    mov         edx,dword ptr [ebp-1B4]
 00680E8A    mov         eax,7C15E0;^'Phased 04'
 00680E8F    call        @UStrAsg
 00680E94    push        686E2C;'Phased 05'
 00680E99    lea         eax,[ebp-1B8]
 00680E9F    push        eax
 00680EA0    mov         ecx,686E4C;'sSndTonePair05'
 00680EA5    mov         edx,686D14;'SndTonePairStrings'
 00680EAA    mov         eax,ebx
 00680EAC    mov         edi,dword ptr [eax]
 00680EAE    call        dword ptr [edi+4]
 00680EB1    mov         edx,dword ptr [ebp-1B8]
 00680EB7    mov         eax,7C15E4;^'Phased 05'
 00680EBC    call        @UStrAsg
 00680EC1    push        686E78;'Phased 06'
 00680EC6    lea         eax,[ebp-1BC]
 00680ECC    push        eax
 00680ECD    mov         ecx,686E98;'sSndTonePair06'
 00680ED2    mov         edx,686D14;'SndTonePairStrings'
 00680ED7    mov         eax,ebx
 00680ED9    mov         edi,dword ptr [eax]
 00680EDB    call        dword ptr [edi+4]
 00680EDE    mov         edx,dword ptr [ebp-1BC]
 00680EE4    mov         eax,7C15E8;^'Phased 06'
 00680EE9    call        @UStrAsg
 00680EEE    push        686EC4;'Phased 07'
 00680EF3    lea         eax,[ebp-1C0]
 00680EF9    push        eax
 00680EFA    mov         ecx,686EE4;'sSndTonePair07'
 00680EFF    mov         edx,686D14;'SndTonePairStrings'
 00680F04    mov         eax,ebx
 00680F06    mov         edi,dword ptr [eax]
 00680F08    call        dword ptr [edi+4]
 00680F0B    mov         edx,dword ptr [ebp-1C0]
 00680F11    mov         eax,7C15EC;^'Phased 07'
 00680F16    call        @UStrAsg
 00680F1B    push        686F10;'Phased 08'
 00680F20    lea         eax,[ebp-1C4]
 00680F26    push        eax
 00680F27    mov         ecx,686F30;'sSndTonePair08'
 00680F2C    mov         edx,686D14;'SndTonePairStrings'
 00680F31    mov         eax,ebx
 00680F33    mov         edi,dword ptr [eax]
 00680F35    call        dword ptr [edi+4]
 00680F38    mov         edx,dword ptr [ebp-1C4]
 00680F3E    mov         eax,7C15F0;^'Phased 08'
 00680F43    call        @UStrAsg
 00680F48    push        686F5C;'Phased 09'
 00680F4D    lea         eax,[ebp-1C8]
 00680F53    push        eax
 00680F54    mov         ecx,686F7C;'sSndTonePair09'
 00680F59    mov         edx,686D14;'SndTonePairStrings'
 00680F5E    mov         eax,ebx
 00680F60    mov         edi,dword ptr [eax]
 00680F62    call        dword ptr [edi+4]
 00680F65    mov         edx,dword ptr [ebp-1C8]
 00680F6B    mov         eax,7C15F4;^'Phased 09'
 00680F70    call        @UStrAsg
 00680F75    push        686FA8;'Phased 10'
 00680F7A    lea         eax,[ebp-1CC]
 00680F80    push        eax
 00680F81    mov         ecx,686FC8;'sSndTonePair10'
 00680F86    mov         edx,686D14;'SndTonePairStrings'
 00680F8B    mov         eax,ebx
 00680F8D    mov         edi,dword ptr [eax]
 00680F8F    call        dword ptr [edi+4]
 00680F92    mov         edx,dword ptr [ebp-1CC]
 00680F98    mov         eax,7C15F8;^'Phased 10'
 00680F9D    call        @UStrAsg
 00680FA2    push        686FF4;'Phased 11'
 00680FA7    lea         eax,[ebp-1D0]
 00680FAD    push        eax
 00680FAE    mov         ecx,687014;'sSndTonePair11'
 00680FB3    mov         edx,686D14;'SndTonePairStrings'
 00680FB8    mov         eax,ebx
 00680FBA    mov         edi,dword ptr [eax]
 00680FBC    call        dword ptr [edi+4]
 00680FBF    mov         edx,dword ptr [ebp-1D0]
 00680FC5    mov         eax,7C15FC;^'Phased 11'
 00680FCA    call        @UStrAsg
 00680FCF    push        687040;'Phased 12'
 00680FD4    lea         eax,[ebp-1D4]
 00680FDA    push        eax
 00680FDB    mov         ecx,687060;'sSndTonePair12'
 00680FE0    mov         edx,686D14;'SndTonePairStrings'
 00680FE5    mov         eax,ebx
 00680FE7    mov         edi,dword ptr [eax]
 00680FE9    call        dword ptr [edi+4]
 00680FEC    mov         edx,dword ptr [ebp-1D4]
 00680FF2    mov         eax,7C1600;^'Phased 12'
 00680FF7    call        @UStrAsg
 00680FFC    push        68708C;'Phased 13'
 00681001    lea         eax,[ebp-1D8]
 00681007    push        eax
 00681008    mov         ecx,6870AC;'sSndTonePair13'
 0068100D    mov         edx,686D14;'SndTonePairStrings'
 00681012    mov         eax,ebx
 00681014    mov         edi,dword ptr [eax]
 00681016    call        dword ptr [edi+4]
 00681019    mov         edx,dword ptr [ebp-1D8]
 0068101F    mov         eax,7C1604;^'Phased 13'
 00681024    call        @UStrAsg
 00681029    push        6870D8;'Phased 14'
 0068102E    lea         eax,[ebp-1DC]
 00681034    push        eax
 00681035    mov         ecx,6870F8;'sSndTonePair14'
 0068103A    mov         edx,686D14;'SndTonePairStrings'
 0068103F    mov         eax,ebx
 00681041    mov         edi,dword ptr [eax]
 00681043    call        dword ptr [edi+4]
 00681046    mov         edx,dword ptr [ebp-1DC]
 0068104C    mov         eax,7C1608;^'Phased 14'
 00681051    call        @UStrAsg
 00681056    push        687124;'Phased 15'
 0068105B    lea         eax,[ebp-1E0]
 00681061    push        eax
 00681062    mov         ecx,687144;'sSndTonePair15'
 00681067    mov         edx,686D14;'SndTonePairStrings'
 0068106C    mov         eax,ebx
 0068106E    mov         edi,dword ptr [eax]
 00681070    call        dword ptr [edi+4]
 00681073    mov         edx,dword ptr [ebp-1E0]
 00681079    mov         eax,7C160C;^'Phased 15'
 0068107E    call        @UStrAsg
 00681083    push        687170;'Tone 01'
 00681088    lea         eax,[ebp-1E4]
 0068108E    push        eax
 0068108F    mov         ecx,68718C;'sSapSndrTone01'
 00681094    mov         edx,6871B8;'SapToneStrings'
 00681099    mov         eax,ebx
 0068109B    mov         edi,dword ptr [eax]
 0068109D    call        dword ptr [edi+4]
 006810A0    mov         edx,dword ptr [ebp-1E4]
 006810A6    mov         eax,7C227C;^'Tone 01'
 006810AB    call        @UStrAsg
 006810B0    push        6871E4;'Tone 02'
 006810B5    lea         eax,[ebp-1E8]
 006810BB    push        eax
 006810BC    mov         ecx,687200;'sSapSndrTone02'
 006810C1    mov         edx,6871B8;'SapToneStrings'
 006810C6    mov         eax,ebx
 006810C8    mov         edi,dword ptr [eax]
 006810CA    call        dword ptr [edi+4]
 006810CD    mov         edx,dword ptr [ebp-1E8]
 006810D3    mov         eax,7C2280;^'Tone 02'
 006810D8    call        @UStrAsg
 006810DD    push        68722C;'Tone 03'
 006810E2    lea         eax,[ebp-1EC]
 006810E8    push        eax
 006810E9    mov         ecx,687248;'sSapSndrTone03'
 006810EE    mov         edx,6871B8;'SapToneStrings'
 006810F3    mov         eax,ebx
 006810F5    mov         edi,dword ptr [eax]
 006810F7    call        dword ptr [edi+4]
 006810FA    mov         edx,dword ptr [ebp-1EC]
 00681100    mov         eax,7C2284;^'Tone 03'
 00681105    call        @UStrAsg
 0068110A    push        687274;'Tone 04'
 0068110F    lea         eax,[ebp-1F0]
 00681115    push        eax
 00681116    mov         ecx,687290;'sSapSndrTone04'
 0068111B    mov         edx,6871B8;'SapToneStrings'
 00681120    mov         eax,ebx
 00681122    mov         edi,dword ptr [eax]
 00681124    call        dword ptr [edi+4]
 00681127    mov         edx,dword ptr [ebp-1F0]
 0068112D    mov         eax,7C2288;^'Tone 04'
 00681132    call        @UStrAsg
 00681137    push        6872BC;'Tone 05'
 0068113C    lea         eax,[ebp-1F4]
 00681142    push        eax
 00681143    mov         ecx,6872D8;'sSapSndrTone05'
 00681148    mov         edx,6871B8;'SapToneStrings'
 0068114D    mov         eax,ebx
 0068114F    mov         edi,dword ptr [eax]
 00681151    call        dword ptr [edi+4]
 00681154    mov         edx,dword ptr [ebp-1F4]
 0068115A    mov         eax,7C228C;^'Tone 05'
 0068115F    call        @UStrAsg
 00681164    push        687304;'Tone 06'
 00681169    lea         eax,[ebp-1F8]
 0068116F    push        eax
 00681170    mov         ecx,687320;'sSapSndrTone06'
 00681175    mov         edx,6871B8;'SapToneStrings'
 0068117A    mov         eax,ebx
 0068117C    mov         edi,dword ptr [eax]
 0068117E    call        dword ptr [edi+4]
 00681181    mov         edx,dword ptr [ebp-1F8]
 00681187    mov         eax,7C2290;^'Tone 06'
 0068118C    call        @UStrAsg
 00681191    push        68734C;'Tone 07'
 00681196    lea         eax,[ebp-1FC]
 0068119C    push        eax
 0068119D    mov         ecx,687368;'sSapSndrTone07'
 006811A2    mov         edx,6871B8;'SapToneStrings'
 006811A7    mov         eax,ebx
 006811A9    mov         edi,dword ptr [eax]
 006811AB    call        dword ptr [edi+4]
 006811AE    mov         edx,dword ptr [ebp-1FC]
 006811B4    mov         eax,7C2294;^'Tone 07'
 006811B9    call        @UStrAsg
 006811BE    push        687394;'Tone 08'
 006811C3    lea         eax,[ebp-200]
 006811C9    push        eax
 006811CA    mov         ecx,6873B0;'sSapSndrTone08'
 006811CF    mov         edx,6871B8;'SapToneStrings'
 006811D4    mov         eax,ebx
 006811D6    mov         edi,dword ptr [eax]
 006811D8    call        dword ptr [edi+4]
 006811DB    mov         edx,dword ptr [ebp-200]
 006811E1    mov         eax,7C2298;^'Tone 08'
 006811E6    call        @UStrAsg
 006811EB    push        6873DC;'Tone 09'
 006811F0    lea         eax,[ebp-204]
 006811F6    push        eax
 006811F7    mov         ecx,6873F8;'sSapSndrTone09'
 006811FC    mov         edx,6871B8;'SapToneStrings'
 00681201    mov         eax,ebx
 00681203    mov         edi,dword ptr [eax]
 00681205    call        dword ptr [edi+4]
 00681208    mov         edx,dword ptr [ebp-204]
 0068120E    mov         eax,7C229C;^'Tone 09'
 00681213    call        @UStrAsg
 00681218    push        687424;'Tone 10'
 0068121D    lea         eax,[ebp-208]
 00681223    push        eax
 00681224    mov         ecx,687440;'sSapSndrTone10'
 00681229    mov         edx,6871B8;'SapToneStrings'
 0068122E    mov         eax,ebx
 00681230    mov         edi,dword ptr [eax]
 00681232    call        dword ptr [edi+4]
 00681235    mov         edx,dword ptr [ebp-208]
 0068123B    mov         eax,7C22A0;^'Tone 10'
 00681240    call        @UStrAsg
 00681245    push        68746C;'Tone 11'
 0068124A    lea         eax,[ebp-20C]
 00681250    push        eax
 00681251    mov         ecx,687488;'sSapSndrTone11'
 00681256    mov         edx,6871B8;'SapToneStrings'
 0068125B    mov         eax,ebx
 0068125D    mov         edi,dword ptr [eax]
 0068125F    call        dword ptr [edi+4]
 00681262    mov         edx,dword ptr [ebp-20C]
 00681268    mov         eax,7C22A4;^'Tone 11'
 0068126D    call        @UStrAsg
 00681272    push        6874B4;'Tone 12'
 00681277    lea         eax,[ebp-210]
 0068127D    push        eax
 0068127E    mov         ecx,6874D0;'sSapSndrTone12'
 00681283    mov         edx,6871B8;'SapToneStrings'
 00681288    mov         eax,ebx
 0068128A    mov         edi,dword ptr [eax]
 0068128C    call        dword ptr [edi+4]
 0068128F    mov         edx,dword ptr [ebp-210]
 00681295    mov         eax,7C22A8;^'Tone 12'
 0068129A    call        @UStrAsg
 0068129F    push        6874FC;'Tone 13'
 006812A4    lea         eax,[ebp-214]
 006812AA    push        eax
 006812AB    mov         ecx,687518;'sSapSndrTone13'
 006812B0    mov         edx,6871B8;'SapToneStrings'
 006812B5    mov         eax,ebx
 006812B7    mov         edi,dword ptr [eax]
 006812B9    call        dword ptr [edi+4]
 006812BC    mov         edx,dword ptr [ebp-214]
 006812C2    mov         eax,7C22AC;^'Tone 13'
 006812C7    call        @UStrAsg
 006812CC    push        687544;'Tone 14'
 006812D1    lea         eax,[ebp-218]
 006812D7    push        eax
 006812D8    mov         ecx,687560;'sSapSndrTone14'
 006812DD    mov         edx,6871B8;'SapToneStrings'
 006812E2    mov         eax,ebx
 006812E4    mov         edi,dword ptr [eax]
 006812E6    call        dword ptr [edi+4]
 006812E9    mov         edx,dword ptr [ebp-218]
 006812EF    mov         eax,7C22B0;^'Tone 14'
 006812F4    call        @UStrAsg
 006812F9    push        68758C;'Tone 15'
 006812FE    lea         eax,[ebp-21C]
 00681304    push        eax
 00681305    mov         ecx,6875A8;'sSapSndrTone15'
 0068130A    mov         edx,6871B8;'SapToneStrings'
 0068130F    mov         eax,ebx
 00681311    mov         edi,dword ptr [eax]
 00681313    call        dword ptr [edi+4]
 00681316    mov         edx,dword ptr [ebp-21C]
 0068131C    mov         eax,7C22B4;^'Tone 15'
 00681321    call        @UStrAsg
 00681326    push        6875D4;'Tone 16'
 0068132B    lea         eax,[ebp-220]
 00681331    push        eax
 00681332    mov         ecx,6875F0;'sSapSndrTone16'
 00681337    mov         edx,6871B8;'SapToneStrings'
 0068133C    mov         eax,ebx
 0068133E    mov         edi,dword ptr [eax]
 00681340    call        dword ptr [edi+4]
 00681343    mov         edx,dword ptr [ebp-220]
 00681349    mov         eax,7C22B8;^'Tone 16'
 0068134E    call        @UStrAsg
 00681353    push        68761C;'Tone 17'
 00681358    lea         eax,[ebp-224]
 0068135E    push        eax
 0068135F    mov         ecx,687638;'sSapSndrTone17'
 00681364    mov         edx,6871B8;'SapToneStrings'
 00681369    mov         eax,ebx
 0068136B    mov         edi,dword ptr [eax]
 0068136D    call        dword ptr [edi+4]
 00681370    mov         edx,dword ptr [ebp-224]
 00681376    mov         eax,7C22BC;^'Tone 17'
 0068137B    call        @UStrAsg
 00681380    push        687664;'Tone 18'
 00681385    lea         eax,[ebp-228]
 0068138B    push        eax
 0068138C    mov         ecx,687680;'sSapSndrTone18'
 00681391    mov         edx,6871B8;'SapToneStrings'
 00681396    mov         eax,ebx
 00681398    mov         edi,dword ptr [eax]
 0068139A    call        dword ptr [edi+4]
 0068139D    mov         edx,dword ptr [ebp-228]
 006813A3    mov         eax,7C22C0;^'Tone 18'
 006813A8    call        @UStrAsg
 006813AD    push        6876AC;'Tone 19'
 006813B2    lea         eax,[ebp-22C]
 006813B8    push        eax
 006813B9    mov         ecx,6876C8;'sSapSndrTone19'
 006813BE    mov         edx,6871B8;'SapToneStrings'
 006813C3    mov         eax,ebx
 006813C5    mov         edi,dword ptr [eax]
 006813C7    call        dword ptr [edi+4]
 006813CA    mov         edx,dword ptr [ebp-22C]
 006813D0    mov         eax,7C22C4;^'Tone 19'
 006813D5    call        @UStrAsg
 006813DA    push        6876F4;'Tone 20'
 006813DF    lea         eax,[ebp-230]
 006813E5    push        eax
 006813E6    mov         ecx,687710;'sSapSndrTone20'
 006813EB    mov         edx,6871B8;'SapToneStrings'
 006813F0    mov         eax,ebx
 006813F2    mov         edi,dword ptr [eax]
 006813F4    call        dword ptr [edi+4]
 006813F7    mov         edx,dword ptr [ebp-230]
 006813FD    mov         eax,7C22C8;^'Tone 20'
 00681402    call        @UStrAsg
 00681407    push        68773C;'Tone 21'
 0068140C    lea         eax,[ebp-234]
 00681412    push        eax
 00681413    mov         ecx,687758;'sSapSndrTone21'
 00681418    mov         edx,6871B8;'SapToneStrings'
 0068141D    mov         eax,ebx
 0068141F    mov         edi,dword ptr [eax]
 00681421    call        dword ptr [edi+4]
 00681424    mov         edx,dword ptr [ebp-234]
 0068142A    mov         eax,7C22CC;^'Tone 21'
 0068142F    call        @UStrAsg
 00681434    push        687784;'Tone 22'
 00681439    lea         eax,[ebp-238]
 0068143F    push        eax
 00681440    mov         ecx,6877A0;'sSapSndrTone22'
 00681445    mov         edx,6871B8;'SapToneStrings'
 0068144A    mov         eax,ebx
 0068144C    mov         edi,dword ptr [eax]
 0068144E    call        dword ptr [edi+4]
 00681451    mov         edx,dword ptr [ebp-238]
 00681457    mov         eax,7C22D0;^'Tone 22'
 0068145C    call        @UStrAsg
 00681461    push        6877CC;'Tone 23'
 00681466    lea         eax,[ebp-23C]
 0068146C    push        eax
 0068146D    mov         ecx,6877E8;'sSapSndrTone23'
 00681472    mov         edx,6871B8;'SapToneStrings'
 00681477    mov         eax,ebx
 00681479    mov         edi,dword ptr [eax]
 0068147B    call        dword ptr [edi+4]
 0068147E    mov         edx,dword ptr [ebp-23C]
 00681484    mov         eax,7C22D4;^'Tone 23'
 00681489    call        @UStrAsg
 0068148E    push        687814;'Tone 24'
 00681493    lea         eax,[ebp-240]
 00681499    push        eax
 0068149A    mov         ecx,687830;'sSapSndrTone24'
 0068149F    mov         edx,6871B8;'SapToneStrings'
 006814A4    mov         eax,ebx
 006814A6    mov         edi,dword ptr [eax]
 006814A8    call        dword ptr [edi+4]
 006814AB    mov         edx,dword ptr [ebp-240]
 006814B1    mov         eax,7C22D8;^'Tone 24'
 006814B6    call        @UStrAsg
 006814BB    push        68785C;'Tone 25'
 006814C0    lea         eax,[ebp-244]
 006814C6    push        eax
 006814C7    mov         ecx,687878;'sSapSndrTone25'
 006814CC    mov         edx,6871B8;'SapToneStrings'
 006814D1    mov         eax,ebx
 006814D3    mov         edi,dword ptr [eax]
 006814D5    call        dword ptr [edi+4]
 006814D8    mov         edx,dword ptr [ebp-244]
 006814DE    mov         eax,7C22DC;^'Tone 25'
 006814E3    call        @UStrAsg
 006814E8    push        6878A4;'Tone 26'
 006814ED    lea         eax,[ebp-248]
 006814F3    push        eax
 006814F4    mov         ecx,6878C0;'sSapSndrTone26'
 006814F9    mov         edx,6871B8;'SapToneStrings'
 006814FE    mov         eax,ebx
 00681500    mov         edi,dword ptr [eax]
 00681502    call        dword ptr [edi+4]
 00681505    mov         edx,dword ptr [ebp-248]
 0068150B    mov         eax,7C22E0;^'Tone 26'
 00681510    call        @UStrAsg
 00681515    push        6878EC;'Tone 27'
 0068151A    lea         eax,[ebp-24C]
 00681520    push        eax
 00681521    mov         ecx,687908;'sSapSndrTone27'
 00681526    mov         edx,6871B8;'SapToneStrings'
 0068152B    mov         eax,ebx
 0068152D    mov         edi,dword ptr [eax]
 0068152F    call        dword ptr [edi+4]
 00681532    mov         edx,dword ptr [ebp-24C]
 00681538    mov         eax,7C22E4;^'Tone 27'
 0068153D    call        @UStrAsg
 00681542    push        687934;'Tone 28'
 00681547    lea         eax,[ebp-250]
 0068154D    push        eax
 0068154E    mov         ecx,687950;'sSapSndrTone28'
 00681553    mov         edx,6871B8;'SapToneStrings'
 00681558    mov         eax,ebx
 0068155A    mov         edi,dword ptr [eax]
 0068155C    call        dword ptr [edi+4]
 0068155F    mov         edx,dword ptr [ebp-250]
 00681565    mov         eax,7C22E8;^'Tone 28'
 0068156A    call        @UStrAsg
 0068156F    push        68797C;'Tone 29'
 00681574    lea         eax,[ebp-254]
 0068157A    push        eax
 0068157B    mov         ecx,687998;'sSapSndrTone29'
 00681580    mov         edx,6871B8;'SapToneStrings'
 00681585    mov         eax,ebx
 00681587    mov         edi,dword ptr [eax]
 00681589    call        dword ptr [edi+4]
 0068158C    mov         edx,dword ptr [ebp-254]
 00681592    mov         eax,7C22EC;^'Tone 29'
 00681597    call        @UStrAsg
 0068159C    push        6879C4;'Tone 30'
 006815A1    lea         eax,[ebp-258]
 006815A7    push        eax
 006815A8    mov         ecx,6879E0;'sSapSndrTone30'
 006815AD    mov         edx,6871B8;'SapToneStrings'
 006815B2    mov         eax,ebx
 006815B4    mov         edi,dword ptr [eax]
 006815B6    call        dword ptr [edi+4]
 006815B9    mov         edx,dword ptr [ebp-258]
 006815BF    mov         eax,7C22F0;^'Tone 30'
 006815C4    call        @UStrAsg
 006815C9    push        687A0C;'Tone 31'
 006815CE    lea         eax,[ebp-25C]
 006815D4    push        eax
 006815D5    mov         ecx,687A28;'sSapSndrTone31'
 006815DA    mov         edx,6871B8;'SapToneStrings'
 006815DF    mov         eax,ebx
 006815E1    mov         edi,dword ptr [eax]
 006815E3    call        dword ptr [edi+4]
 006815E6    mov         edx,dword ptr [ebp-25C]
 006815EC    mov         eax,7C22F4;^'Tone 31'
 006815F1    call        @UStrAsg
 006815F6    push        687A54;'Tone 32'
 006815FB    lea         eax,[ebp-260]
 00681601    push        eax
 00681602    mov         ecx,687A70;'sSapSndrTone32'
 00681607    mov         edx,6871B8;'SapToneStrings'
 0068160C    mov         eax,ebx
 0068160E    mov         edi,dword ptr [eax]
 00681610    call        dword ptr [edi+4]
 00681613    mov         edx,dword ptr [ebp-260]
 00681619    mov         eax,7C22F8;^'Tone 32'
 0068161E    call        @UStrAsg
 00681623    push        687A9C;'Tone 33'
 00681628    lea         eax,[ebp-264]
 0068162E    push        eax
 0068162F    mov         ecx,687AB8;'sSapSndrTone33'
 00681634    mov         edx,6871B8;'SapToneStrings'
 00681639    mov         eax,ebx
 0068163B    mov         edi,dword ptr [eax]
 0068163D    call        dword ptr [edi+4]
 00681640    mov         edx,dword ptr [ebp-264]
 00681646    mov         eax,7C22FC;^'Tone 33'
 0068164B    call        @UStrAsg
 00681650    push        687AE4;'Tone pair 01'
 00681655    lea         eax,[ebp-268]
 0068165B    push        eax
 0068165C    mov         ecx,687B0C;'sSapSndrTonePair01'
 00681661    mov         edx,687B40;'SapTonePairStrings'
 00681666    mov         eax,ebx
 00681668    mov         edi,dword ptr [eax]
 0068166A    call        dword ptr [edi+4]
 0068166D    mov         edx,dword ptr [ebp-268]
 00681673    mov         eax,7C2300;^'Tone pair 01'
 00681678    call        @UStrAsg
 0068167D    push        687B74;'Tone pair 02'
 00681682    lea         eax,[ebp-26C]
 00681688    push        eax
 00681689    mov         ecx,687B9C;'sSapSndrTonePair02'
 0068168E    mov         edx,687B40;'SapTonePairStrings'
 00681693    mov         eax,ebx
 00681695    mov         edi,dword ptr [eax]
 00681697    call        dword ptr [edi+4]
 0068169A    mov         edx,dword ptr [ebp-26C]
 006816A0    mov         eax,7C2304;^'Tone pair 02'
 006816A5    call        @UStrAsg
 006816AA    push        687BD0;'Tone pair 03'
 006816AF    lea         eax,[ebp-270]
 006816B5    push        eax
 006816B6    mov         ecx,687BF8;'sSapSndrTonePair03'
 006816BB    mov         edx,687B40;'SapTonePairStrings'
 006816C0    mov         eax,ebx
 006816C2    mov         edi,dword ptr [eax]
 006816C4    call        dword ptr [edi+4]
 006816C7    mov         edx,dword ptr [ebp-270]
 006816CD    mov         eax,7C2308;^'Tone pair 03'
 006816D2    call        @UStrAsg
 006816D7    push        687C2C;'Tone pair 04'
 006816DC    lea         eax,[ebp-274]
 006816E2    push        eax
 006816E3    mov         ecx,687C54;'sSapSndrTonePair04'
 006816E8    mov         edx,687B40;'SapTonePairStrings'
 006816ED    mov         eax,ebx
 006816EF    mov         edi,dword ptr [eax]
 006816F1    call        dword ptr [edi+4]
 006816F4    mov         edx,dword ptr [ebp-274]
 006816FA    mov         eax,7C230C;^'Tone pair 04'
 006816FF    call        @UStrAsg
 00681704    push        687C88;'Tone pair 05'
 00681709    lea         eax,[ebp-278]
 0068170F    push        eax
 00681710    mov         ecx,687CB0;'sSapSndrTonePair05'
 00681715    mov         edx,687B40;'SapTonePairStrings'
 0068171A    mov         eax,ebx
 0068171C    mov         edi,dword ptr [eax]
 0068171E    call        dword ptr [edi+4]
 00681721    mov         edx,dword ptr [ebp-278]
 00681727    mov         eax,7C2310;^'Tone pair 05'
 0068172C    call        @UStrAsg
 00681731    push        687CE4;'Tone pair 06'
 00681736    lea         eax,[ebp-27C]
 0068173C    push        eax
 0068173D    mov         ecx,687D0C;'sSapSndrTonePair06'
 00681742    mov         edx,687B40;'SapTonePairStrings'
 00681747    mov         eax,ebx
 00681749    mov         edi,dword ptr [eax]
 0068174B    call        dword ptr [edi+4]
 0068174E    mov         edx,dword ptr [ebp-27C]
 00681754    mov         eax,7C2314;^'Tone pair 06'
 00681759    call        @UStrAsg
 0068175E    push        687D40;'Tone pair 07'
 00681763    lea         eax,[ebp-280]
 00681769    push        eax
 0068176A    mov         ecx,687D68;'sSapSndrTonePair07'
 0068176F    mov         edx,687B40;'SapTonePairStrings'
 00681774    mov         eax,ebx
 00681776    mov         edi,dword ptr [eax]
 00681778    call        dword ptr [edi+4]
 0068177B    mov         edx,dword ptr [ebp-280]
 00681781    mov         eax,7C2318;^'Tone pair 07'
 00681786    call        @UStrAsg
 0068178B    push        687D9C;'Tone pair 08'
 00681790    lea         eax,[ebp-284]
 00681796    push        eax
 00681797    mov         ecx,687DC4;'sSapSndrTonePair08'
 0068179C    mov         edx,687B40;'SapTonePairStrings'
 006817A1    mov         eax,ebx
 006817A3    mov         edi,dword ptr [eax]
 006817A5    call        dword ptr [edi+4]
 006817A8    mov         edx,dword ptr [ebp-284]
 006817AE    mov         eax,7C231C;^'Tone pair 08'
 006817B3    call        @UStrAsg
 006817B8    push        687DF8;'Tone pair 09'
 006817BD    lea         eax,[ebp-288]
 006817C3    push        eax
 006817C4    mov         ecx,687E20;'sSapSndrTonePair09'
 006817C9    mov         edx,687B40;'SapTonePairStrings'
 006817CE    mov         eax,ebx
 006817D0    mov         edi,dword ptr [eax]
 006817D2    call        dword ptr [edi+4]
 006817D5    mov         edx,dword ptr [ebp-288]
 006817DB    mov         eax,7C2320;^'Tone pair 09'
 006817E0    call        @UStrAsg
 006817E5    push        687E54;'Tone pair 10'
 006817EA    lea         eax,[ebp-28C]
 006817F0    push        eax
 006817F1    mov         ecx,687E7C;'sSapSndrTonePair10'
 006817F6    mov         edx,687B40;'SapTonePairStrings'
 006817FB    mov         eax,ebx
 006817FD    mov         edi,dword ptr [eax]
 006817FF    call        dword ptr [edi+4]
 00681802    mov         edx,dword ptr [ebp-28C]
 00681808    mov         eax,7C2324;^'Tone pair 10'
 0068180D    call        @UStrAsg
 00681812    push        687EB0;'Tone pair 11'
 00681817    lea         eax,[ebp-290]
 0068181D    push        eax
 0068181E    mov         ecx,687ED8;'sSapSndrTonePair11'
 00681823    mov         edx,687B40;'SapTonePairStrings'
 00681828    mov         eax,ebx
 0068182A    mov         edi,dword ptr [eax]
 0068182C    call        dword ptr [edi+4]
 0068182F    mov         edx,dword ptr [ebp-290]
 00681835    mov         eax,7C2328;^'Tone pair 11'
 0068183A    call        @UStrAsg
 0068183F    push        687F0C;'Tone pair 12'
 00681844    lea         eax,[ebp-294]
 0068184A    push        eax
 0068184B    mov         ecx,687F34;'sSapSndrTonePair12'
 00681850    mov         edx,687B40;'SapTonePairStrings'
 00681855    mov         eax,ebx
 00681857    mov         edi,dword ptr [eax]
 00681859    call        dword ptr [edi+4]
 0068185C    mov         edx,dword ptr [ebp-294]
 00681862    mov         eax,7C232C;^'Tone pair 12'
 00681867    call        @UStrAsg
 0068186C    push        687F68;'Tone pair 13'
 00681871    lea         eax,[ebp-298]
 00681877    push        eax
 00681878    mov         ecx,687F90;'sSapSndrTonePair13'
 0068187D    mov         edx,687B40;'SapTonePairStrings'
 00681882    mov         eax,ebx
 00681884    mov         edi,dword ptr [eax]
 00681886    call        dword ptr [edi+4]
 00681889    mov         edx,dword ptr [ebp-298]
 0068188F    mov         eax,7C2330;^'Tone pair 13'
 00681894    call        @UStrAsg
 00681899    push        687FC4;'Tone pair 14'
 0068189E    lea         eax,[ebp-29C]
 006818A4    push        eax
 006818A5    mov         ecx,687FEC;'sSapSndrTonePair14'
 006818AA    mov         edx,687B40;'SapTonePairStrings'
 006818AF    mov         eax,ebx
 006818B1    mov         edi,dword ptr [eax]
 006818B3    call        dword ptr [edi+4]
 006818B6    mov         edx,dword ptr [ebp-29C]
 006818BC    mov         eax,7C2334;^'Tone pair 14'
 006818C1    call        @UStrAsg
 006818C6    push        688020;'Tone pair 15'
 006818CB    lea         eax,[ebp-2A0]
 006818D1    push        eax
 006818D2    mov         ecx,688048;'sSapSndrTonePair15'
 006818D7    mov         edx,687B40;'SapTonePairStrings'
 006818DC    mov         eax,ebx
 006818DE    mov         edi,dword ptr [eax]
 006818E0    call        dword ptr [edi+4]
 006818E3    mov         edx,dword ptr [ebp-2A0]
 006818E9    mov         eax,7C2338;^'Tone pair 15'
 006818EE    call        @UStrAsg
 006818F3    push        68807C;'Tone pair 16'
 006818F8    lea         eax,[ebp-2A4]
 006818FE    push        eax
 006818FF    mov         ecx,6880A4;'sSapSndrTonePair16'
 00681904    mov         edx,687B40;'SapTonePairStrings'
 00681909    mov         eax,ebx
 0068190B    mov         edi,dword ptr [eax]
 0068190D    call        dword ptr [edi+4]
 00681910    mov         edx,dword ptr [ebp-2A4]
 00681916    mov         eax,7C233C;^'Tone pair 16'
 0068191B    call        @UStrAsg
 00681920    push        6880D8;'Tone pair 17'
 00681925    lea         eax,[ebp-2A8]
 0068192B    push        eax
 0068192C    mov         ecx,688100;'sSapSndrTonePair17'
 00681931    mov         edx,687B40;'SapTonePairStrings'
 00681936    mov         eax,ebx
 00681938    mov         edi,dword ptr [eax]
 0068193A    call        dword ptr [edi+4]
 0068193D    mov         edx,dword ptr [ebp-2A8]
 00681943    mov         eax,7C2340;^'Tone pair 17'
 00681948    call        @UStrAsg
 0068194D    push        688134;'Tone pair 18'
 00681952    lea         eax,[ebp-2AC]
 00681958    push        eax
 00681959    mov         ecx,68815C;'sSapSndrTonePair18'
 0068195E    mov         edx,687B40;'SapTonePairStrings'
 00681963    mov         eax,ebx
 00681965    mov         edi,dword ptr [eax]
 00681967    call        dword ptr [edi+4]
 0068196A    mov         edx,dword ptr [ebp-2AC]
 00681970    mov         eax,7C2344;^'Tone pair 18'
 00681975    call        @UStrAsg
 0068197A    push        688190;'Tone pair 19'
 0068197F    lea         eax,[ebp-2B0]
 00681985    push        eax
 00681986    mov         ecx,6881B8;'sSapSndrTonePair19'
 0068198B    mov         edx,687B40;'SapTonePairStrings'
 00681990    mov         eax,ebx
 00681992    mov         edi,dword ptr [eax]
 00681994    call        dword ptr [edi+4]
 00681997    mov         edx,dword ptr [ebp-2B0]
 0068199D    mov         eax,7C2348;^'Tone pair 19'
 006819A2    call        @UStrAsg
 006819A7    push        6881EC;'Tone pair 20'
 006819AC    lea         eax,[ebp-2B4]
 006819B2    push        eax
 006819B3    mov         ecx,688214;'sSapSndrTonePair20'
 006819B8    mov         edx,687B40;'SapTonePairStrings'
 006819BD    mov         eax,ebx
 006819BF    mov         edi,dword ptr [eax]
 006819C1    call        dword ptr [edi+4]
 006819C4    mov         edx,dword ptr [ebp-2B4]
 006819CA    mov         eax,7C234C;^'Tone pair 20'
 006819CF    call        @UStrAsg
 006819D4    push        688248;'Tone pair 21'
 006819D9    lea         eax,[ebp-2B8]
 006819DF    push        eax
 006819E0    mov         ecx,688270;'sSapSndrTonePair21'
 006819E5    mov         edx,687B40;'SapTonePairStrings'
 006819EA    mov         eax,ebx
 006819EC    mov         edi,dword ptr [eax]
 006819EE    call        dword ptr [edi+4]
 006819F1    mov         edx,dword ptr [ebp-2B8]
 006819F7    mov         eax,7C2350;^'Tone pair 21'
 006819FC    call        @UStrAsg
 00681A01    push        6882A4;'Tone pair 22'
 00681A06    lea         eax,[ebp-2BC]
 00681A0C    push        eax
 00681A0D    mov         ecx,6882CC;'sSapSndrTonePair22'
 00681A12    mov         edx,687B40;'SapTonePairStrings'
 00681A17    mov         eax,ebx
 00681A19    mov         edi,dword ptr [eax]
 00681A1B    call        dword ptr [edi+4]
 00681A1E    mov         edx,dword ptr [ebp-2BC]
 00681A24    mov         eax,7C2354;^'Tone pair 22'
 00681A29    call        @UStrAsg
 00681A2E    push        688300;'Tone pair 23'
 00681A33    lea         eax,[ebp-2C0]
 00681A39    push        eax
 00681A3A    mov         ecx,688328;'sSapSndrTonePair23'
 00681A3F    mov         edx,687B40;'SapTonePairStrings'
 00681A44    mov         eax,ebx
 00681A46    mov         edi,dword ptr [eax]
 00681A48    call        dword ptr [edi+4]
 00681A4B    mov         edx,dword ptr [ebp-2C0]
 00681A51    mov         eax,7C2358;^'Tone pair 23'
 00681A56    call        @UStrAsg
 00681A5B    push        68835C;'Tone pair 24'
 00681A60    lea         eax,[ebp-2C4]
 00681A66    push        eax
 00681A67    mov         ecx,688384;'sSapSndrTonePair24'
 00681A6C    mov         edx,687B40;'SapTonePairStrings'
 00681A71    mov         eax,ebx
 00681A73    mov         edi,dword ptr [eax]
 00681A75    call        dword ptr [edi+4]
 00681A78    mov         edx,dword ptr [ebp-2C4]
 00681A7E    mov         eax,7C235C;^'Tone pair 24'
 00681A83    call        @UStrAsg
 00681A88    push        6883B8;'Tone pair 25'
 00681A8D    lea         eax,[ebp-2C8]
 00681A93    push        eax
 00681A94    mov         ecx,6883E0;'sSapSndrTonePair25'
 00681A99    mov         edx,687B40;'SapTonePairStrings'
 00681A9E    mov         eax,ebx
 00681AA0    mov         edi,dword ptr [eax]
 00681AA2    call        dword ptr [edi+4]
 00681AA5    mov         edx,dword ptr [ebp-2C8]
 00681AAB    mov         eax,7C2360;^'Tone pair 25'
 00681AB0    call        @UStrAsg
 00681AB5    push        688414;'Tone pair 26'
 00681ABA    lea         eax,[ebp-2CC]
 00681AC0    push        eax
 00681AC1    mov         ecx,68843C;'sSapSndrTonePair26'
 00681AC6    mov         edx,687B40;'SapTonePairStrings'
 00681ACB    mov         eax,ebx
 00681ACD    mov         edi,dword ptr [eax]
 00681ACF    call        dword ptr [edi+4]
 00681AD2    mov         edx,dword ptr [ebp-2CC]
 00681AD8    mov         eax,7C2364;^'Tone pair 26'
 00681ADD    call        @UStrAsg
 00681AE2    push        688470;'Tone pair 27'
 00681AE7    lea         eax,[ebp-2D0]
 00681AED    push        eax
 00681AEE    mov         ecx,688498;'sSapSndrTonePair27'
 00681AF3    mov         edx,687B40;'SapTonePairStrings'
 00681AF8    mov         eax,ebx
 00681AFA    mov         edi,dword ptr [eax]
 00681AFC    call        dword ptr [edi+4]
 00681AFF    mov         edx,dword ptr [ebp-2D0]
 00681B05    mov         eax,7C2368;^'Tone pair 27'
 00681B0A    call        @UStrAsg
 00681B0F    push        6884CC;'Tone pair 28'
 00681B14    lea         eax,[ebp-2D4]
 00681B1A    push        eax
 00681B1B    mov         ecx,6884F4;'sSapSndrTonePair28'
 00681B20    mov         edx,687B40;'SapTonePairStrings'
 00681B25    mov         eax,ebx
 00681B27    mov         edi,dword ptr [eax]
 00681B29    call        dword ptr [edi+4]
 00681B2C    mov         edx,dword ptr [ebp-2D4]
 00681B32    mov         eax,7C236C;^'Tone pair 28'
 00681B37    call        @UStrAsg
 00681B3C    push        688528;'Tone pair 29'
 00681B41    lea         eax,[ebp-2D8]
 00681B47    push        eax
 00681B48    mov         ecx,688550;'sSapSndrTonePair29'
 00681B4D    mov         edx,687B40;'SapTonePairStrings'
 00681B52    mov         eax,ebx
 00681B54    mov         edi,dword ptr [eax]
 00681B56    call        dword ptr [edi+4]
 00681B59    mov         edx,dword ptr [ebp-2D8]
 00681B5F    mov         eax,7C2370;^'Tone pair 29'
 00681B64    call        @UStrAsg
 00681B69    push        688584;'Tone pair 30'
 00681B6E    lea         eax,[ebp-2DC]
 00681B74    push        eax
 00681B75    mov         ecx,6885AC;'sSapSndrTonePair30'
 00681B7A    mov         edx,687B40;'SapTonePairStrings'
 00681B7F    mov         eax,ebx
 00681B81    mov         edi,dword ptr [eax]
 00681B83    call        dword ptr [edi+4]
 00681B86    mov         edx,dword ptr [ebp-2DC]
 00681B8C    mov         eax,7C2374;^'Tone pair 30'
 00681B91    call        @UStrAsg
 00681B96    push        6885E0;'Tone pair 31'
 00681B9B    lea         eax,[ebp-2E0]
 00681BA1    push        eax
 00681BA2    mov         ecx,688608;'sSapSndrTonePair31'
 00681BA7    mov         edx,687B40;'SapTonePairStrings'
 00681BAC    mov         eax,ebx
 00681BAE    mov         edi,dword ptr [eax]
 00681BB0    call        dword ptr [edi+4]
 00681BB3    mov         edx,dword ptr [ebp-2E0]
 00681BB9    mov         eax,7C2378;^'Tone pair 31'
 00681BBE    call        @UStrAsg
 00681BC3    push        68863C;'Tone pair 32'
 00681BC8    lea         eax,[ebp-2E4]
 00681BCE    push        eax
 00681BCF    mov         ecx,688664;'sSapSndrTonePair32'
 00681BD4    mov         edx,687B40;'SapTonePairStrings'
 00681BD9    mov         eax,ebx
 00681BDB    mov         edi,dword ptr [eax]
 00681BDD    call        dword ptr [edi+4]
 00681BE0    mov         edx,dword ptr [ebp-2E4]
 00681BE6    mov         eax,7C237C;^'Tone pair 32'
 00681BEB    call        @UStrAsg
 00681BF0    push        688698;'Tone pair 33'
 00681BF5    lea         eax,[ebp-2E8]
 00681BFB    push        eax
 00681BFC    mov         ecx,6886C0;'sSapSndrTonePair33'
 00681C01    mov         edx,687B40;'SapTonePairStrings'
 00681C06    mov         eax,ebx
 00681C08    mov         edi,dword ptr [eax]
 00681C0A    call        dword ptr [edi+4]
 00681C0D    mov         edx,dword ptr [ebp-2E8]
 00681C13    mov         eax,7C2380;^'Tone pair 33'
 00681C18    call        @UStrAsg
 00681C1D    push        6886F4;'Vol 1'
 00681C22    lea         eax,[ebp-2EC]
 00681C28    push        eax
 00681C29    mov         ecx,68870C;'sSndrVol1'
 00681C2E    mov         edx,68872C;'SndrVolumeStrings'
 00681C33    mov         eax,ebx
 00681C35    mov         edi,dword ptr [eax]
 00681C37    call        dword ptr [edi+4]
 00681C3A    mov         edx,dword ptr [ebp-2EC]
 00681C40    mov         eax,7C24AC;^'Vol 1'
 00681C45    call        @UStrAsg
 00681C4A    push        68875C;'Vol 2'
 00681C4F    lea         eax,[ebp-2F0]
 00681C55    push        eax
 00681C56    mov         ecx,688774;'sSndrVol2'
 00681C5B    mov         edx,68872C;'SndrVolumeStrings'
 00681C60    mov         eax,ebx
 00681C62    mov         edi,dword ptr [eax]
 00681C64    call        dword ptr [edi+4]
 00681C67    mov         edx,dword ptr [ebp-2F0]
 00681C6D    mov         eax,7C24B0;^'Vol 2'
 00681C72    call        @UStrAsg
 00681C77    push        688794;'Vol 3'
 00681C7C    lea         eax,[ebp-2F4]
 00681C82    push        eax
 00681C83    mov         ecx,6887AC;'sSndrVol3'
 00681C88    mov         edx,68872C;'SndrVolumeStrings'
 00681C8D    mov         eax,ebx
 00681C8F    mov         edi,dword ptr [eax]
 00681C91    call        dword ptr [edi+4]
 00681C94    mov         edx,dword ptr [ebp-2F4]
 00681C9A    mov         eax,7C24B4;^'Vol 3'
 00681C9F    call        @UStrAsg
 00681CA4    push        6887CC;'Vol 4'
 00681CA9    lea         eax,[ebp-2F8]
 00681CAF    push        eax
 00681CB0    mov         ecx,6887E4;'sSndrVol4'
 00681CB5    mov         edx,68872C;'SndrVolumeStrings'
 00681CBA    mov         eax,ebx
 00681CBC    mov         edi,dword ptr [eax]
 00681CBE    call        dword ptr [edi+4]
 00681CC1    mov         edx,dword ptr [ebp-2F8]
 00681CC7    mov         eax,7C24B8;^'Vol 4'
 00681CCC    call        @UStrAsg
 00681CD1    push        688804;'Vol 5'
 00681CD6    lea         eax,[ebp-2FC]
 00681CDC    push        eax
 00681CDD    mov         ecx,68881C;'sSndrVol5'
 00681CE2    mov         edx,68872C;'SndrVolumeStrings'
 00681CE7    mov         eax,ebx
 00681CE9    mov         edi,dword ptr [eax]
 00681CEB    call        dword ptr [edi+4]
 00681CEE    mov         edx,dword ptr [ebp-2FC]
 00681CF4    mov         eax,7C24BC;^'Vol 5'
 00681CF9    call        @UStrAsg
 00681CFE    push        68883C;'Vol 6'
 00681D03    lea         eax,[ebp-300]
 00681D09    push        eax
 00681D0A    mov         ecx,688854;'sSndrVol6'
 00681D0F    mov         edx,68872C;'SndrVolumeStrings'
 00681D14    mov         eax,ebx
 00681D16    mov         edi,dword ptr [eax]
 00681D18    call        dword ptr [edi+4]
 00681D1B    mov         edx,dword ptr [ebp-300]
 00681D21    mov         eax,7C24C0;^'Vol 6'
 00681D26    call        @UStrAsg
 00681D2B    push        688874;'Vol 7'
 00681D30    lea         eax,[ebp-304]
 00681D36    push        eax
 00681D37    mov         ecx,68888C;'sSndrVol7'
 00681D3C    mov         edx,68872C;'SndrVolumeStrings'
 00681D41    mov         eax,ebx
 00681D43    mov         edi,dword ptr [eax]
 00681D45    call        dword ptr [edi+4]
 00681D48    mov         edx,dword ptr [ebp-304]
 00681D4E    mov         eax,7C24C4;^'Vol 7'
 00681D53    call        @UStrAsg
 00681D58    push        6862AC;'By dipswitch'
 00681D5D    lea         eax,[ebp-308]
 00681D63    push        eax
 00681D64    mov         ecx,6888AC;'sSndrVolSwitch'
 00681D69    mov         edx,68872C;'SndrVolumeStrings'
 00681D6E    mov         eax,ebx
 00681D70    mov         edi,dword ptr [eax]
 00681D72    call        dword ptr [edi+4]
 00681D75    mov         edx,dword ptr [ebp-308]
 00681D7B    mov         eax,7C24C8;^'By dipswitch'
 00681D80    call        @UStrAsg
 00681D85    push        6888D8;'Low'
 00681D8A    lea         eax,[ebp-30C]
 00681D90    push        eax
 00681D91    mov         ecx,6888EC;'sSndrVolLow'
 00681D96    mov         edx,68872C;'SndrVolumeStrings'
 00681D9B    mov         eax,ebx
 00681D9D    mov         edi,dword ptr [eax]
 00681D9F    call        dword ptr [edi+4]
 00681DA2    mov         edx,dword ptr [ebp-30C]
 00681DA8    mov         eax,7C24CC;^'Low'
 00681DAD    call        @UStrAsg
 00681DB2    push        688910;'Medium'
 00681DB7    lea         eax,[ebp-310]
 00681DBD    push        eax
 00681DBE    mov         ecx,68892C;'sSndrVolMed'
 00681DC3    mov         edx,68872C;'SndrVolumeStrings'
 00681DC8    mov         eax,ebx
 00681DCA    mov         edi,dword ptr [eax]
 00681DCC    call        dword ptr [edi+4]
 00681DCF    mov         edx,dword ptr [ebp-310]
 00681DD5    mov         eax,7C24D0;^'Medium'
 00681DDA    call        @UStrAsg
 00681DDF    push        688950;'High'
 00681DE4    lea         eax,[ebp-314]
 00681DEA    push        eax
 00681DEB    mov         ecx,688968;'sSndrVolHigh'
 00681DF0    mov         edx,68872C;'SndrVolumeStrings'
 00681DF5    mov         eax,ebx
 00681DF7    mov         edi,dword ptr [eax]
 00681DF9    call        dword ptr [edi+4]
 00681DFC    mov         edx,dword ptr [ebp-314]
 00681E02    mov         eax,7C24D4;^'High'
 00681E07    call        @UStrAsg
 00681E0C    push        688990;' No'
 00681E11    lea         eax,[ebp-318]
 00681E17    push        eax
 00681E18    mov         ecx,6889A4;'sNo'
 00681E1D    mov         edx,6889B8;'YesNoStrings'
 00681E22    mov         eax,ebx
 00681E24    mov         edi,dword ptr [eax]
 00681E26    call        dword ptr [edi+4]
 00681E29    mov         edx,dword ptr [ebp-318]
 00681E2F    mov         eax,7C24D8;^' No'
 00681E34    call        @UStrAsg
 00681E39    push        6889E0;'Yes'
 00681E3E    lea         eax,[ebp-31C]
 00681E44    push        eax
 00681E45    mov         ecx,6889F4;'sYes'
 00681E4A    mov         edx,6889B8;'YesNoStrings'
 00681E4F    mov         eax,ebx
 00681E51    mov         edi,dword ptr [eax]
 00681E53    call        dword ptr [edi+4]
 00681E56    mov         edx,dword ptr [ebp-31C]
 00681E5C    mov         eax,7C24DC;^'Yes'
 00681E61    call        @UStrAsg
 00681E66    push        688A0C;'4k7 '
 00681E6B    lea         eax,[ebp-320]
 00681E71    push        eax
 00681E72    mov         ecx,688A24;'sEOL4k7R'
 00681E77    mov         edx,688A44;'EolResStrings'
 00681E7C    mov         eax,ebx
 00681E7E    mov         edi,dword ptr [eax]
 00681E80    call        dword ptr [edi+4]
 00681E83    mov         edx,dword ptr [ebp-320]
 00681E89    mov         eax,7C1614;^'4k7 '
 00681E8E    call        @UStrAsg
 00681E93    push        688A6C;'2k94'
 00681E98    lea         eax,[ebp-324]
 00681E9E    push        eax
 00681E9F    mov         ecx,688A84;'sEOL2k9R'
 00681EA4    mov         edx,688A44;'EolResStrings'
 00681EA9    mov         eax,ebx
 00681EAB    mov         edi,dword ptr [eax]
 00681EAD    call        dword ptr [edi+4]
 00681EB0    mov         edx,dword ptr [ebp-324]
 00681EB6    mov         eax,7C1618;^'2k94'
 00681EBB    call        @UStrAsg
 00681EC0    push        688AA4;'General'
 00681EC5    lea         eax,[ebp-328]
 00681ECB    push        eax
 00681ECC    mov         ecx,688AC0;'sGeneral'
 00681ED1    mov         edx,688AE0;'CommonTexts'
 00681ED6    mov         eax,ebx
 00681ED8    mov         edi,dword ptr [eax]
 00681EDA    call        dword ptr [edi+4]
 00681EDD    mov         edx,dword ptr [ebp-328]
 00681EE3    mov         eax,7C286C;^'General'
 00681EE8    call        @UStrAsg
 00681EED    push        688B04;'Local'
 00681EF2    lea         eax,[ebp-32C]
 00681EF8    push        eax
 00681EF9    mov         ecx,688B1C;'sLocal'
 00681EFE    mov         edx,688AE0;'CommonTexts'
 00681F03    mov         eax,ebx
 00681F05    mov         edi,dword ptr [eax]
 00681F07    call        dword ptr [edi+4]
 00681F0A    mov         edx,dword ptr [ebp-32C]
 00681F10    mov         eax,7C2870;^'Local'
 00681F15    call        @UStrAsg
 00681F1A    push        684848;'Not in use'
 00681F1F    lea         eax,[ebp-330]
 00681F25    push        eax
 00681F26    mov         ecx,688B38;'sApoNotUsed'
 00681F2B    mov         edx,688B5C;'ApoTypeStrings'
 00681F30    mov         eax,ebx
 00681F32    mov         edi,dword ptr [eax]
 00681F34    call        dword ptr [edi+4]
 00681F37    mov         edx,dword ptr [ebp-330]
 00681F3D    mov         eax,7C14E8;^'Not in use'
 00681F42    call        @UStrAsg
 00681F47    push        6848C0;'Ionisation sensor'
 00681F4C    lea         eax,[ebp-334]
 00681F52    push        eax
 00681F53    mov         ecx,688B88;'sApoIon'
 00681F58    mov         edx,688B5C;'ApoTypeStrings'
 00681F5D    mov         eax,ebx
 00681F5F    mov         edi,dword ptr [eax]
 00681F61    call        dword ptr [edi+4]
 00681F64    mov         edx,dword ptr [ebp-334]
 00681F6A    mov         eax,7C14EC;^'Ionisation sensor'
 00681F6F    call        @UStrAsg
 00681F74    push        684918;'Optical sensor'
 00681F79    lea         eax,[ebp-338]
 00681F7F    push        eax
 00681F80    mov         ecx,688BA4;'sApoOpt'
 00681F85    mov         edx,688B5C;'ApoTypeStrings'
 00681F8A    mov         eax,ebx
 00681F8C    mov         edi,dword ptr [eax]
 00681F8E    call        dword ptr [edi+4]
 00681F91    mov         edx,dword ptr [ebp-338]
 00681F97    mov         eax,7C14F0;^'Optical sensor'
 00681F9C    call        @UStrAsg
 00681FA1    push        68496C;'Thermal sensor'
 00681FA6    lea         eax,[ebp-33C]
 00681FAC    push        eax
 00681FAD    mov         ecx,688BC0;'sApoHeat'
 00681FB2    mov         edx,688B5C;'ApoTypeStrings'
 00681FB7    mov         eax,ebx
 00681FB9    mov         edi,dword ptr [eax]
 00681FBB    call        dword ptr [edi+4]
 00681FBE    mov         edx,dword ptr [ebp-33C]
 00681FC4    mov         eax,7C14F4;^'Thermal sensor'
 00681FC9    call        @UStrAsg
 00681FCE    push        688BE0;'High temperature'
 00681FD3    lea         eax,[ebp-340]
 00681FD9    push        eax
 00681FDA    mov         ecx,688C10;'sApoHighHeat'
 00681FDF    mov         edx,688B5C;'ApoTypeStrings'
 00681FE4    mov         eax,ebx
 00681FE6    mov         edi,dword ptr [eax]
 00681FE8    call        dword ptr [edi+4]
 00681FEB    mov         edx,dword ptr [ebp-340]
 00681FF1    mov         eax,7C14F8;^'High temperature'
 00681FF6    call        @UStrAsg
 00681FFB    push        688C38;'Multisensor'
 00682000    lea         eax,[ebp-344]
 00682006    push        eax
 00682007    mov         ecx,688C5C;'sApoMulti'
 0068200C    mov         edx,688B5C;'ApoTypeStrings'
 00682011    mov         eax,ebx
 00682013    mov         edi,dword ptr [eax]
 00682015    call        dword ptr [edi+4]
 00682018    mov         edx,dword ptr [ebp-344]
 0068201E    mov         eax,7C14FC;^'Multisensor'
 00682023    call        @UStrAsg
 00682028    push        688C7C;'CO sensor'
 0068202D    lea         eax,[ebp-348]
 00682033    push        eax
 00682034    mov         ecx,688C9C;'sApoCO'
 00682039    mov         edx,688B5C;'ApoTypeStrings'
 0068203E    mov         eax,ebx
 00682040    mov         edi,dword ptr [eax]
 00682042    call        dword ptr [edi+4]
 00682045    mov         edx,dword ptr [ebp-348]
 0068204B    mov         eax,7C1500;^'CO sensor'
 00682050    call        @UStrAsg
 00682055    push        684DBC;'Beam sensor'
 0068205A    lea         eax,[ebp-34C]
 00682060    push        eax
 00682061    mov         ecx,688CB8;'sApoBeam'
 00682066    mov         edx,688B5C;'ApoTypeStrings'
 0068206B    mov         eax,ebx
 0068206D    mov         edi,dword ptr [eax]
 0068206F    call        dword ptr [edi+4]
 00682072    mov         edx,dword ptr [ebp-34C]
 00682078    mov         eax,7C1504;^'Beam sensor'
 0068207D    call        @UStrAsg
 00682082    push        688CD8;'Flame sensor'
 00682087    lea         eax,[ebp-350]
 0068208D    push        eax
 0068208E    mov         ecx,688D00;'sApoFlame'
 00682093    mov         edx,688B5C;'ApoTypeStrings'
 00682098    mov         eax,ebx
 0068209A    mov         edi,dword ptr [eax]
 0068209C    call        dword ptr [edi+4]
 0068209F    mov         edx,dword ptr [ebp-350]
 006820A5    mov         eax,7C1508;^'Flame sensor'
 006820AA    call        @UStrAsg
 006820AF    push        688D20;'Any type'
 006820B4    lea         eax,[ebp-354]
 006820BA    push        eax
 006820BB    mov         ecx,688D40;'sApoAnyType'
 006820C0    mov         edx,688B5C;'ApoTypeStrings'
 006820C5    mov         eax,ebx
 006820C7    mov         edi,dword ptr [eax]
 006820C9    call        dword ptr [edi+4]
 006820CC    mov         edx,dword ptr [ebp-354]
 006820D2    mov         eax,7C150C;^'Any type'
 006820D7    call        @UStrAsg
 006820DC    push        684A7C;'Conv. zone mod.'
 006820E1    lea         eax,[ebp-358]
 006820E7    push        eax
 006820E8    mov         ecx,688D64;'sApoConvZoneMod'
 006820ED    mov         edx,688B5C;'ApoTypeStrings'
 006820F2    mov         eax,ebx
 006820F4    mov         edi,dword ptr [eax]
 006820F6    call        dword ptr [edi+4]
 006820F9    mov         edx,dword ptr [ebp-358]
 006820FF    mov         eax,7C1510;^'Conv. zone mod.'
 00682104    call        @UStrAsg
 00682109    push        688D90;'Manual call point'
 0068210E    lea         eax,[ebp-35C]
 00682114    push        eax
 00682115    mov         ecx,688DC0;'sApoManualCP'
 0068211A    mov         edx,688B5C;'ApoTypeStrings'
 0068211F    mov         eax,ebx
 00682121    mov         edi,dword ptr [eax]
 00682123    call        dword ptr [edi+4]
 00682126    mov         edx,dword ptr [ebp-35C]
 0068212C    mov         eax,7C1514;^'Manual call point'
 00682131    call        @UStrAsg
 00682136    push        688DE8;'Switch mon. w. int.'
 0068213B    lea         eax,[ebp-360]
 00682141    push        eax
 00682142    mov         ecx,688E1C;'sApoSwMonInt'
 00682147    mov         edx,688B5C;'ApoTypeStrings'
 0068214C    mov         eax,ebx
 0068214E    mov         edi,dword ptr [eax]
 00682150    call        dword ptr [edi+4]
 00682153    mov         edx,dword ptr [ebp-360]
 00682159    mov         eax,7C1518;^'Switch mon. w. int.'
 0068215E    call        @UStrAsg
 00682163    push        688E44;'Switch monitor'
 00682168    lea         eax,[ebp-364]
 0068216E    push        eax
 0068216F    mov         ecx,688E70;'sApoSwMonitor'
 00682174    mov         edx,688B5C;'ApoTypeStrings'
 00682179    mov         eax,ebx
 0068217B    mov         edi,dword ptr [eax]
 0068217D    call        dword ptr [edi+4]
 00682180    mov         edx,dword ptr [ebp-364]
 00682186    mov         eax,7C151C;^'Switch monitor'
 0068218B    call        @UStrAsg
 00682190    push        688E98;'Switch monitor plus'
 00682195    lea         eax,[ebp-368]
 0068219B    push        eax
 0068219C    mov         ecx,688ECC;'sApoSwMonPlus'
 006821A1    mov         edx,688B5C;'ApoTypeStrings'
 006821A6    mov         eax,ebx
 006821A8    mov         edi,dword ptr [eax]
 006821AA    call        dword ptr [edi+4]
 006821AD    mov         edx,dword ptr [ebp-368]
 006821B3    mov         eax,7C1520;^'Switch monitor plus'
 006821B8    call        @UStrAsg
 006821BD    push        688EF4;'Switch monitor mini'
 006821C2    lea         eax,[ebp-36C]
 006821C8    push        eax
 006821C9    mov         ecx,688F28;'sApoSwMonMini'
 006821CE    mov         edx,688B5C;'ApoTypeStrings'
 006821D3    mov         eax,ebx
 006821D5    mov         edi,dword ptr [eax]
 006821D7    call        dword ptr [edi+4]
 006821DA    mov         edx,dword ptr [ebp-36C]
 006821E0    mov         eax,7C1524;^'Switch monitor mini'
 006821E5    call        @UStrAsg
 006821EA    push        688F50;'IO 1 output'
 006821EF    lea         eax,[ebp-370]
 006821F5    push        eax
 006821F6    mov         ecx,688F74;'sApoIO01'
 006821FB    mov         edx,688B5C;'ApoTypeStrings'
 00682200    mov         eax,ebx
 00682202    mov         edi,dword ptr [eax]
 00682204    call        dword ptr [edi+4]
 00682207    mov         edx,dword ptr [ebp-370]
 0068220D    mov         eax,7C1528;^'IO 1 output'
 00682212    call        @UStrAsg
 00682217    push        688F94;'IO 1 input, 1 output'
 0068221C    lea         eax,[ebp-374]
 00682222    push        eax
 00682223    mov         ecx,688FCC;'sApoIO11Mains'
 00682228    mov         edx,688B5C;'ApoTypeStrings'
 0068222D    mov         eax,ebx
 0068222F    mov         edi,dword ptr [eax]
 00682231    call        dword ptr [edi+4]
 00682234    mov         edx,dword ptr [ebp-374]
 0068223A    mov         eax,7C152C;^'IO 1 input, 1 output'
 0068223F    call        @UStrAsg
 00682244    push        688FF4;'IO 2 inputs, 1 output'
 00682249    lea         eax,[ebp-378]
 0068224F    push        eax
 00682250    mov         ecx,68902C;'sApoIO21'
 00682255    mov         edx,688B5C;'ApoTypeStrings'
 0068225A    mov         eax,ebx
 0068225C    mov         edi,dword ptr [eax]
 0068225E    call        dword ptr [edi+4]
 00682261    mov         edx,dword ptr [ebp-378]
 00682267    mov         eax,7C1530;^'IO 2 inputs, 1 output'
 0068226C    call        @UStrAsg
 00682271    push        68904C;'IO module'
 00682276    lea         eax,[ebp-37C]
 0068227C    push        eax
 0068227D    mov         ecx,68906C;'sApoIO33'
 00682282    mov         edx,688B5C;'ApoTypeStrings'
 00682287    mov         eax,ebx
 00682289    mov         edi,dword ptr [eax]
 0068228B    call        dword ptr [edi+4]
 0068228E    mov         edx,dword ptr [ebp-37C]
 00682294    mov         eax,7C1534;^'IO module'
 00682299    call        @UStrAsg
 0068229E    push        68908C;'Loop powered sounder'
 006822A3    lea         eax,[ebp-380]
 006822A9    push        eax
 006822AA    mov         ecx,6890C4;'sApoLPSounder'
 006822AF    mov         edx,688B5C;'ApoTypeStrings'
 006822B4    mov         eax,ebx
 006822B6    mov         edi,dword ptr [eax]
 006822B8    call        dword ptr [edi+4]
 006822BB    mov         edx,dword ptr [ebp-380]
 006822C1    mov         eax,7C1538;^'Loop powered sounder'
 006822C6    call        @UStrAsg
 006822CB    push        6890EC;'Addressable sounder'
 006822D0    lea         eax,[ebp-384]
 006822D6    push        eax
 006822D7    mov         ecx,689120;'sApoIntSounder'
 006822DC    mov         edx,688B5C;'ApoTypeStrings'
 006822E1    mov         eax,ebx
 006822E3    mov         edi,dword ptr [eax]
 006822E5    call        dword ptr [edi+4]
 006822E8    mov         edx,dword ptr [ebp-384]
 006822EE    mov         eax,7C153C;^'Addressable sounder'
 006822F3    call        @UStrAsg
 006822F8    push        68914C;'Sounder controller module'
 006822FD    lea         eax,[ebp-388]
 00682303    push        eax
 00682304    mov         ecx,68918C;'sApoIOSounder'
 00682309    mov         edx,688B5C;'ApoTypeStrings'
 0068230E    mov         eax,ebx
 00682310    mov         edi,dword ptr [eax]
 00682312    call        dword ptr [edi+4]
 00682315    mov         edx,dword ptr [ebp-388]
 0068231B    mov         eax,7C1540;^'Sounder controller module'
 00682320    call        @UStrAsg
 00682325    push        6891B4;'Beacon'
 0068232A    lea         eax,[ebp-38C]
 00682330    push        eax
 00682331    mov         ecx,6891D0;'sApoBeacon'
 00682336    mov         edx,688B5C;'ApoTypeStrings'
 0068233B    mov         eax,ebx
 0068233D    mov         edi,dword ptr [eax]
 0068233F    call        dword ptr [edi+4]
 00682342    mov         edx,dword ptr [ebp-38C]
 00682348    mov         eax,7C1544;^'Beacon'
 0068234D    call        @UStrAsg
 00682352    push        6891F4;'Any type (virtual)'
 00682357    lea         eax,[ebp-390]
 0068235D    push        eax
 0068235E    mov         ecx,689228;'sApoAnyTypeVirtual'
 00682363    mov         edx,688B5C;'ApoTypeStrings'
 00682368    mov         eax,ebx
 0068236A    mov         edi,dword ptr [eax]
 0068236C    call        dword ptr [edi+4]
 0068236F    mov         edx,dword ptr [ebp-390]
 00682375    mov         eax,7C1548;^'Any type (virtual)'
 0068237A    call        @UStrAsg
 0068237F    push        68925C;'Sounder Beacon'
 00682384    lea         eax,[ebp-394]
 0068238A    push        eax
 0068238B    mov         ecx,689288;'sApoDSB'
 00682390    mov         edx,688B5C;'ApoTypeStrings'
 00682395    mov         eax,ebx
 00682397    mov         edi,dword ptr [eax]
 00682399    call        dword ptr [edi+4]
 0068239C    mov         edx,dword ptr [ebp-394]
 006823A2    mov         eax,7C154C;^'Sounder Beacon'
 006823A7    call        @UStrAsg
 006823AC    push        6892A4;'Voice Sounder Beacon'
 006823B1    lea         eax,[ebp-398]
 006823B7    push        eax
 006823B8    mov         ecx,6892DC;'sApoDVSB'
 006823BD    mov         edx,688B5C;'ApoTypeStrings'
 006823C2    mov         eax,ebx
 006823C4    mov         edi,dword ptr [eax]
 006823C6    call        dword ptr [edi+4]
 006823C9    mov         edx,dword ptr [ebp-398]
 006823CF    mov         eax,7C1550;^'Voice Sounder Beacon'
 006823D4    call        @UStrAsg
 006823D9    push        6892FC;'Voice Sounder'
 006823DE    lea         eax,[ebp-39C]
 006823E4    push        eax
 006823E5    mov         ecx,689324;'sApoDVS'
 006823EA    mov         edx,688B5C;'ApoTypeStrings'
 006823EF    mov         eax,ebx
 006823F1    mov         edi,dword ptr [eax]
 006823F3    call        dword ptr [edi+4]
 006823F6    mov         edx,dword ptr [ebp-39C]
 006823FC    mov         eax,7C1554;^'Voice Sounder'
 00682401    call        @UStrAsg
 00682406    push        689340;'CO-Heat sensor'
 0068240B    lea         eax,[ebp-3A0]
 00682411    push        eax
 00682412    mov         ecx,68936C;'sApoCoHeat'
 00682417    mov         edx,688B5C;'ApoTypeStrings'
 0068241C    mov         eax,ebx
 0068241E    mov         edi,dword ptr [eax]
 00682420    call        dword ptr [edi+4]
 00682423    mov         edx,dword ptr [ebp-3A0]
 00682429    mov         eax,7C1558;^'CO-Heat sensor'
 0068242E    call        @UStrAsg
 00682433    push        689390;'Ionisation sensor (Intellia)'
 00682438    lea         eax,[ebp-3A4]
 0068243E    push        eax
 0068243F    mov         ecx,6893D8;'sApoIonIntellia'
 00682444    mov         edx,688B5C;'ApoTypeStrings'
 00682449    mov         eax,ebx
 0068244B    mov         edi,dword ptr [eax]
 0068244D    call        dword ptr [edi+4]
 00682450    mov         edx,dword ptr [ebp-3A4]
 00682456    mov         eax,7C1404;^'Ionisation sensor (Intellia)'
 0068245B    call        @UStrAsg
 00682460    push        689404;'Ionisation sensor (Discovery)'
 00682465    lea         eax,[ebp-3A8]
 0068246B    push        eax
 0068246C    mov         ecx,68944C;'sApoIonDiscovery'
 00682471    mov         edx,688B5C;'ApoTypeStrings'
 00682476    mov         eax,ebx
 00682478    mov         edi,dword ptr [eax]
 0068247A    call        dword ptr [edi+4]
 0068247D    mov         edx,dword ptr [ebp-3A8]
 00682483    mov         eax,7C1408;^'Ionisation sensor (Discovery)'
 00682488    call        @UStrAsg
 0068248D    push        68947C;'Ionisation sensor (XP95)'
 00682492    lea         eax,[ebp-3AC]
 00682498    push        eax
 00682499    mov         ecx,6894BC;'sApoIonXP95'
 0068249E    mov         edx,688B5C;'ApoTypeStrings'
 006824A3    mov         eax,ebx
 006824A5    mov         edi,dword ptr [eax]
 006824A7    call        dword ptr [edi+4]
 006824AA    mov         edx,dword ptr [ebp-3AC]
 006824B0    mov         eax,7C140C;^'Ionisation sensor (XP95)'
 006824B5    call        @UStrAsg
 006824BA    push        6894E0;'Ionisation sensor (S90)'
 006824BF    lea         eax,[ebp-3B0]
 006824C5    push        eax
 006824C6    mov         ecx,68951C;'sApoIonS90'
 006824CB    mov         edx,688B5C;'ApoTypeStrings'
 006824D0    mov         eax,ebx
 006824D2    mov         edi,dword ptr [eax]
 006824D4    call        dword ptr [edi+4]
 006824D7    mov         edx,dword ptr [ebp-3B0]
 006824DD    mov         eax,7C1410;^'Ionisation sensor (S90)'
 006824E2    call        @UStrAsg
 006824E7    push        689540;'Optical sensor (Intellia)'
 006824EC    lea         eax,[ebp-3B4]
 006824F2    push        eax
 006824F3    mov         ecx,689580;'sApoOptIntellia'
 006824F8    mov         edx,688B5C;'ApoTypeStrings'
 006824FD    mov         eax,ebx
 006824FF    mov         edi,dword ptr [eax]
 00682501    call        dword ptr [edi+4]
 00682504    mov         edx,dword ptr [ebp-3B4]
 0068250A    mov         eax,7C1414;^'Optical sensor (Intellia)'
 0068250F    call        @UStrAsg
 00682514    push        6895AC;'Optical sensor (Discovery)'
 00682519    lea         eax,[ebp-3B8]
 0068251F    push        eax
 00682520    mov         ecx,6895F0;'sApoOptDiscovery'
 00682525    mov         edx,688B5C;'ApoTypeStrings'
 0068252A    mov         eax,ebx
 0068252C    mov         edi,dword ptr [eax]
 0068252E    call        dword ptr [edi+4]
 00682531    mov         edx,dword ptr [ebp-3B8]
 00682537    mov         eax,7C1418;^'Optical sensor (Discovery)'
 0068253C    call        @UStrAsg
 00682541    push        689620;'Optical sensor (XP95)'
 00682546    lea         eax,[ebp-3BC]
 0068254C    push        eax
 0068254D    mov         ecx,689658;'sApoOptXP95'
 00682552    mov         edx,688B5C;'ApoTypeStrings'
 00682557    mov         eax,ebx
 00682559    mov         edi,dword ptr [eax]
 0068255B    call        dword ptr [edi+4]
 0068255E    mov         edx,dword ptr [ebp-3BC]
 00682564    mov         eax,7C141C;^'Optical sensor (XP95)'
 00682569    call        @UStrAsg
 0068256E    push        68967C;'Optical sensor (S90)'
 00682573    lea         eax,[ebp-3C0]
 00682579    push        eax
 0068257A    mov         ecx,6896B4;'sApoOptS90'
 0068257F    mov         edx,688B5C;'ApoTypeStrings'
 00682584    mov         eax,ebx
 00682586    mov         edi,dword ptr [eax]
 00682588    call        dword ptr [edi+4]
 0068258B    mov         edx,dword ptr [ebp-3C0]
 00682591    mov         eax,7C1420;^'Optical sensor (S90)'
 00682596    call        @UStrAsg
 0068259B    push        6896D8;'Optical sensor (Wireless, XP95)'
 006825A0    lea         eax,[ebp-3C4]
 006825A6    push        eax
 006825A7    mov         ecx,689724;'sApoOptWLXP95'
 006825AC    mov         edx,688B5C;'ApoTypeStrings'
 006825B1    mov         eax,ebx
 006825B3    mov         edi,dword ptr [eax]
 006825B5    call        dword ptr [edi+4]
 006825B8    mov         edx,dword ptr [ebp-3C4]
 006825BE    mov         eax,7C1424;^'Optical sensor (Wireless, XP95)'
 006825C3    call        @UStrAsg
 006825C8    push        68974C;'Heat sensor (Intellia)'
 006825CD    lea         eax,[ebp-3C8]
 006825D3    push        eax
 006825D4    mov         ecx,689788;'sApoHeatIntellia'
 006825D9    mov         edx,688B5C;'ApoTypeStrings'
 006825DE    mov         eax,ebx
 006825E0    mov         edi,dword ptr [eax]
 006825E2    call        dword ptr [edi+4]
 006825E5    mov         edx,dword ptr [ebp-3C8]
 006825EB    mov         eax,7C1428;^'Heat sensor (Intellia)'
 006825F0    call        @UStrAsg
 006825F5    push        6897B8;'Heat sensor (Discovery)'
 006825FA    lea         eax,[ebp-3CC]
 00682600    push        eax
 00682601    mov         ecx,6897F4;'sApoHeatDiscovery'
 00682606    mov         edx,688B5C;'ApoTypeStrings'
 0068260B    mov         eax,ebx
 0068260D    mov         edi,dword ptr [eax]
 0068260F    call        dword ptr [edi+4]
 00682612    mov         edx,dword ptr [ebp-3CC]
 00682618    mov         eax,7C142C;^'Heat sensor (Discovery)'
 0068261D    call        @UStrAsg
 00682622    push        689824;'Heat sensor (XP95)'
 00682627    lea         eax,[ebp-3D0]
 0068262D    push        eax
 0068262E    mov         ecx,689858;'sApoHeatXP95'
 00682633    mov         edx,688B5C;'ApoTypeStrings'
 00682638    mov         eax,ebx
 0068263A    mov         edi,dword ptr [eax]
 0068263C    call        dword ptr [edi+4]
 0068263F    mov         edx,dword ptr [ebp-3D0]
 00682645    mov         eax,7C1430;^'Heat sensor (XP95)'
 0068264A    call        @UStrAsg
 0068264F    push        689880;'Heat sensor (S90)'
 00682654    lea         eax,[ebp-3D4]
 0068265A    push        eax
 0068265B    mov         ecx,6898B0;'sApoHeatS90'
 00682660    mov         edx,688B5C;'ApoTypeStrings'
 00682665    mov         eax,ebx
 00682667    mov         edi,dword ptr [eax]
 00682669    call        dword ptr [edi+4]
 0068266C    mov         edx,dword ptr [ebp-3D4]
 00682672    mov         eax,7C1434;^'Heat sensor (S90)'
 00682677    call        @UStrAsg
 0068267C    push        6898D4;'Heat sensor (Wireless, XP95)'
 00682681    lea         eax,[ebp-3D8]
 00682687    push        eax
 00682688    mov         ecx,68991C;'sApoHeatWLXP95'
 0068268D    mov         edx,688B5C;'ApoTypeStrings'
 00682692    mov         eax,ebx
 00682694    mov         edi,dword ptr [eax]
 00682696    call        dword ptr [edi+4]
 00682699    mov         edx,dword ptr [ebp-3D8]
 0068269F    mov         eax,7C1438;^'Heat sensor (Wireless, XP95)'
 006826A4    call        @UStrAsg
 006826A9    push        689948;'High temp. (XP95)'
 006826AE    lea         eax,[ebp-3DC]
 006826B4    push        eax
 006826B5    mov         ecx,689978;'sApoHighHeatXP95'
 006826BA    mov         edx,688B5C;'ApoTypeStrings'
 006826BF    mov         eax,ebx
 006826C1    mov         edi,dword ptr [eax]
 006826C3    call        dword ptr [edi+4]
 006826C6    mov         edx,dword ptr [ebp-3DC]
 006826CC    mov         eax,7C1444;^'High temp. (XP95)'
 006826D1    call        @UStrAsg
 006826D6    push        6899A8;'High temp. (Wireless, XP95)'
 006826DB    lea         eax,[ebp-3E0]
 006826E1    push        eax
 006826E2    mov         ecx,6899EC;'sApoHighHeatWLXP95'
 006826E7    mov         edx,688B5C;'ApoTypeStrings'
 006826EC    mov         eax,ebx
 006826EE    mov         edi,dword ptr [eax]
 006826F0    call        dword ptr [edi+4]
 006826F3    mov         edx,dword ptr [ebp-3E0]
 006826F9    mov         eax,7C144C;^'High temp. (Wireless, XP95)'
 006826FE    call        @UStrAsg
 00682703    push        689A20;'Multisensor (Intellia)'
 00682708    lea         eax,[ebp-3E4]
 0068270E    push        eax
 0068270F    mov         ecx,689A5C;'sApoMultiIntellia'
 00682714    mov         edx,688B5C;'ApoTypeStrings'
 00682719    mov         eax,ebx
 0068271B    mov         edi,dword ptr [eax]
 0068271D    call        dword ptr [edi+4]
 00682720    mov         edx,dword ptr [ebp-3E4]
 00682726    mov         eax,7C1450;^'Multisensor (Intellia)'
 0068272B    call        @UStrAsg
 00682730    push        689A8C;'Multisensor (Discovery)'
 00682735    lea         eax,[ebp-3E8]
 0068273B    push        eax
 0068273C    mov         ecx,689AC8;'sApoMultiDiscovery'
 00682741    mov         edx,688B5C;'ApoTypeStrings'
 00682746    mov         eax,ebx
 00682748    mov         edi,dword ptr [eax]
 0068274A    call        dword ptr [edi+4]
 0068274D    mov         edx,dword ptr [ebp-3E8]
 00682753    mov         eax,7C1454;^'Multisensor (Discovery)'
 00682758    call        @UStrAsg
 0068275D    push        689AFC;'Multisensor (XP95)'
 00682762    lea         eax,[ebp-3EC]
 00682768    push        eax
 00682769    mov         ecx,689B30;'sApoMultiXP95'
 0068276E    mov         edx,688B5C;'ApoTypeStrings'
 00682773    mov         eax,ebx
 00682775    mov         edi,dword ptr [eax]
 00682777    call        dword ptr [edi+4]
 0068277A    mov         edx,dword ptr [ebp-3EC]
 00682780    mov         eax,7C1458;^'Multisensor (XP95)'
 00682785    call        @UStrAsg
 0068278A    push        689B58;'Multisensor (Wireless, XP95)'
 0068278F    lea         eax,[ebp-3F0]
 00682795    push        eax
 00682796    mov         ecx,689BA0;'sApoMultiWLXP95'
 0068279B    mov         edx,688B5C;'ApoTypeStrings'
 006827A0    mov         eax,ebx
 006827A2    mov         edi,dword ptr [eax]
 006827A4    call        dword ptr [edi+4]
 006827A7    mov         edx,dword ptr [ebp-3F0]
 006827AD    mov         eax,7C1460;^'Multisensor (Wireless, XP95)'
 006827B2    call        @UStrAsg
 006827B7    push        689BCC;'CO sensor (Intellia)'
 006827BC    lea         eax,[ebp-3F4]
 006827C2    push        eax
 006827C3    mov         ecx,689C04;'sApoCOIntellia'
 006827C8    mov         edx,688B5C;'ApoTypeStrings'
 006827CD    mov         eax,ebx
 006827CF    mov         edi,dword ptr [eax]
 006827D1    call        dword ptr [edi+4]
 006827D4    mov         edx,dword ptr [ebp-3F4]
 006827DA    mov         eax,7C1464;^'CO sensor (Intellia)'
 006827DF    call        @UStrAsg
 006827E4    push        689C30;'CO sensor (Discovery)'
 006827E9    lea         eax,[ebp-3F8]
 006827EF    push        eax
 006827F0    mov         ecx,689C68;'sApoCODiscovery'
 006827F5    mov         edx,688B5C;'ApoTypeStrings'
 006827FA    mov         eax,ebx
 006827FC    mov         edi,dword ptr [eax]
 006827FE    call        dword ptr [edi+4]
 00682801    mov         edx,dword ptr [ebp-3F8]
 00682807    mov         eax,7C1468;^'CO sensor (Discovery)'
 0068280C    call        @UStrAsg
 00682811    push        689C94;'CO-Heat sensor (Intellia)'
 00682816    lea         eax,[ebp-3FC]
 0068281C    push        eax
 0068281D    mov         ecx,689CD4;'sApoCoHeatIntellia'
 00682822    mov         edx,688B5C;'ApoTypeStrings'
 00682827    mov         eax,ebx
 00682829    mov         edi,dword ptr [eax]
 0068282B    call        dword ptr [edi+4]
 0068282E    mov         edx,dword ptr [ebp-3FC]
 00682834    mov         eax,7C146C;^'CO-Heat sensor (Intellia)'
 00682839    call        @UStrAsg
 0068283E    push        689D08;'CO-Heat sensor (Discovery)'
 00682843    lea         eax,[ebp-400]
 00682849    push        eax
 0068284A    mov         ecx,689D4C;'sApoCoHeatDiscovery'
 0068284F    mov         edx,688B5C;'ApoTypeStrings'
 00682854    mov         eax,ebx
 00682856    mov         edi,dword ptr [eax]
 00682858    call        dword ptr [edi+4]
 0068285B    mov         edx,dword ptr [ebp-400]
 00682861    mov         eax,7C1470;^'CO-Heat sensor (Discovery)'
 00682866    call        @UStrAsg
 0068286B    push        689D80;'IO module (XP95)'
 00682870    lea         eax,[ebp-404]
 00682876    push        eax
 00682877    mov         ecx,689DB0;'sApoIO33XP95'
 0068287C    mov         edx,688B5C;'ApoTypeStrings'
 00682881    mov         eax,ebx
 00682883    mov         edi,dword ptr [eax]
 00682885    call        dword ptr [edi+4]
 00682888    mov         edx,dword ptr [ebp-404]
 0068288E    mov         eax,7C147C;^'IO module (XP95)'
 00682893    call        @UStrAsg
 00682898    push        689DD8;'IO module (Wireless, XP95)'
 0068289D    lea         eax,[ebp-408]
 006828A3    push        eax
 006828A4    mov         ecx,689E1C;'sApoIO33WLXP95'
 006828A9    mov         edx,688B5C;'ApoTypeStrings'
 006828AE    mov         eax,ebx
 006828B0    mov         edi,dword ptr [eax]
 006828B2    call        dword ptr [edi+4]
 006828B5    mov         edx,dword ptr [ebp-408]
 006828BB    mov         eax,7C1484;^'IO module (Wireless, XP95)'
 006828C0    call        @UStrAsg
 006828C5    push        689E48;'Sounder (XP95)'
 006828CA    lea         eax,[ebp-40C]
 006828D0    push        eax
 006828D1    mov         ecx,689E74;'sApoIntSounderXP95'
 006828D6    mov         edx,688B5C;'ApoTypeStrings'
 006828DB    mov         eax,ebx
 006828DD    mov         edi,dword ptr [eax]
 006828DF    call        dword ptr [edi+4]
 006828E2    mov         edx,dword ptr [ebp-40C]
 006828E8    mov         eax,7C1490;^'Sounder (XP95)'
 006828ED    call        @UStrAsg
 006828F2    push        689EA8;'Sounder (Wireless, XP95)'
 006828F7    lea         eax,[ebp-410]
 006828FD    push        eax
 006828FE    mov         ecx,689EE8;'sApoIntSounderWLXP95'
 00682903    mov         edx,688B5C;'ApoTypeStrings'
 00682908    mov         eax,ebx
 0068290A    mov         edi,dword ptr [eax]
 0068290C    call        dword ptr [edi+4]
 0068290F    mov         edx,dword ptr [ebp-410]
 00682915    mov         eax,7C1498;^'Sounder (Wireless, XP95)'
 0068291A    call        @UStrAsg
 0068291F    push        689F20;'Sounder Beacon (Intellia)'
 00682924    lea         eax,[ebp-414]
 0068292A    push        eax
 0068292B    mov         ecx,689F60;'sApoDSBIntellia'
 00682930    mov         edx,688B5C;'ApoTypeStrings'
 00682935    mov         eax,ebx
 00682937    mov         edi,dword ptr [eax]
 00682939    call        dword ptr [edi+4]
 0068293C    mov         edx,dword ptr [ebp-414]
 00682942    mov         eax,7C149C;^'Sounder Beacon (Intellia)'
 00682947    call        @UStrAsg
 0068294C    push        689F8C;'Sounder Beacon (Discovery)'
 00682951    lea         eax,[ebp-418]
 00682957    push        eax
 00682958    mov         ecx,689FD0;'sApoDSBDiscovery'
 0068295D    mov         edx,688B5C;'ApoTypeStrings'
 00682962    mov         eax,ebx
 00682964    mov         edi,dword ptr [eax]
 00682966    call        dword ptr [edi+4]
 00682969    mov         edx,dword ptr [ebp-418]
 0068296F    mov         eax,7C14A0;^'Sounder Beacon (Discovery)'
 00682974    call        @UStrAsg
 00682979    push        68A000;'Voice Sounder Beacon (Intellia)'
 0068297E    lea         eax,[ebp-41C]
 00682984    push        eax
 00682985    mov         ecx,68A04C;'sApoDVSBIntellia'
 0068298A    mov         edx,688B5C;'ApoTypeStrings'
 0068298F    mov         eax,ebx
 00682991    mov         edi,dword ptr [eax]
 00682993    call        dword ptr [edi+4]
 00682996    mov         edx,dword ptr [ebp-41C]
 0068299C    mov         eax,7C14A4;^'Voice Sounder Beacon (Intellia)'
 006829A1    call        @UStrAsg
 006829A6    push        68A07C;'Voice Sounder Beacon (Discovery)'
 006829AB    lea         eax,[ebp-420]
 006829B1    push        eax
 006829B2    mov         ecx,68A0CC;'sApoDVSBDiscovery'
 006829B7    mov         edx,688B5C;'ApoTypeStrings'
 006829BC    mov         eax,ebx
 006829BE    mov         edi,dword ptr [eax]
 006829C0    call        dword ptr [edi+4]
 006829C3    mov         edx,dword ptr [ebp-420]
 006829C9    mov         eax,7C14A8;^'Voice Sounder Beacon (Discovery)'
 006829CE    call        @UStrAsg
 006829D3    push        68A0FC;'Voice Sounder (Intellia)'
 006829D8    lea         eax,[ebp-424]
 006829DE    push        eax
 006829DF    mov         ecx,68A13C;'sApoDVSIntellia'
 006829E4    mov         edx,688B5C;'ApoTypeStrings'
 006829E9    mov         eax,ebx
 006829EB    mov         edi,dword ptr [eax]
 006829ED    call        dword ptr [edi+4]
 006829F0    mov         edx,dword ptr [ebp-424]
 006829F6    mov         eax,7C14AC;^'Voice Sounder (Intellia)'
 006829FB    call        @UStrAsg
 00682A00    push        68A168;'Voice Sounder (Discovery)'
 00682A05    lea         eax,[ebp-428]
 00682A0B    push        eax
 00682A0C    mov         ecx,68A1A8;'sApoDVSDiscovery'
 00682A11    mov         edx,688B5C;'ApoTypeStrings'
 00682A16    mov         eax,ebx
 00682A18    mov         edi,dword ptr [eax]
 00682A1A    call        dword ptr [edi+4]
 00682A1D    mov         edx,dword ptr [ebp-428]
 00682A23    mov         eax,7C14B0;^'Voice Sounder (Discovery)'
 00682A28    call        @UStrAsg
 00682A2D    push        68A1D8;'Manual call point (Intellia)'
 00682A32    lea         eax,[ebp-42C]
 00682A38    push        eax
 00682A39    mov         ecx,68A220;'sApoMCPIntellia'
 00682A3E    mov         edx,688B5C;'ApoTypeStrings'
 00682A43    mov         eax,ebx
 00682A45    mov         edi,dword ptr [eax]
 00682A47    call        dword ptr [edi+4]
 00682A4A    mov         edx,dword ptr [ebp-42C]
 00682A50    mov         eax,7C14B4;^'Manual call point (Intellia)'
 00682A55    call        @UStrAsg
 00682A5A    push        68A24C;'Manual call point (Discovery)'
 00682A5F    lea         eax,[ebp-430]
 00682A65    push        eax
 00682A66    mov         ecx,68A294;'sApoMCPDiscovery'
 00682A6B    mov         edx,688B5C;'ApoTypeStrings'
 00682A70    mov         eax,ebx
 00682A72    mov         edi,dword ptr [eax]
 00682A74    call        dword ptr [edi+4]
 00682A77    mov         edx,dword ptr [ebp-430]
 00682A7D    mov         eax,7C14B8;^'Manual call point (Discovery)'
 00682A82    call        @UStrAsg
 00682A87    push        68A2C4;'Manual call point (XP95)'
 00682A8C    lea         eax,[ebp-434]
 00682A92    push        eax
 00682A93    mov         ecx,68A304;'sApoMCPXP95'
 00682A98    mov         edx,688B5C;'ApoTypeStrings'
 00682A9D    mov         eax,ebx
 00682A9F    mov         edi,dword ptr [eax]
 00682AA1    call        dword ptr [edi+4]
 00682AA4    mov         edx,dword ptr [ebp-434]
 00682AAA    mov         eax,7C14BC;^'Manual call point (XP95)'
 00682AAF    call        @UStrAsg
 00682AB4    push        68A328;'Manual call point (S90)'
 00682AB9    lea         eax,[ebp-438]
 00682ABF    push        eax
 00682AC0    mov         ecx,68A364;'sApoMCPS90'
 00682AC5    mov         edx,688B5C;'ApoTypeStrings'
 00682ACA    mov         eax,ebx
 00682ACC    mov         edi,dword ptr [eax]
 00682ACE    call        dword ptr [edi+4]
 00682AD1    mov         edx,dword ptr [ebp-438]
 00682AD7    mov         eax,7C14C0;^'Manual call point (S90)'
 00682ADC    call        @UStrAsg
 00682AE1    push        68A388;'Manual call point (Wireless, XP95)'
 00682AE6    lea         eax,[ebp-43C]
 00682AEC    push        eax
 00682AED    mov         ecx,68A3DC;'sApoMCPWLXP95'
 00682AF2    mov         edx,688B5C;'ApoTypeStrings'
 00682AF7    mov         eax,ebx
 00682AF9    mov         edi,dword ptr [eax]
 00682AFB    call        dword ptr [edi+4]
 00682AFE    mov         edx,dword ptr [ebp-43C]
 00682B04    mov         eax,7C14C4;^'Manual call point (Wireless, XP95)'
 00682B09    call        @UStrAsg
 00682B0E    push        68A404;'Manual CP/Al''m Switch'
 00682B13    lea         eax,[ebp-440]
 00682B19    push        eax
 00682B1A    mov         ecx,68A43C;'sInpMCPorAlmSw'
 00682B1F    mov         edx,685C38;'InpFuncStrings'
 00682B24    mov         eax,ebx
 00682B26    mov         edi,dword ptr [eax]
 00682B28    call        dword ptr [edi+4]
 00682B2B    mov         edx,dword ptr [ebp-440]
 00682B31    mov         eax,7C23D8;^'Manual CP/Al''m Switch'
 00682B36    call        @UStrAsg
 00682B3B    push        68A468;'Manual Call Point Line'
 00682B40    lea         eax,[ebp-444]
 00682B46    push        eax
 00682B47    mov         ecx,68A4A4;'sInpMCPLine'
 00682B4C    mov         edx,685C38;'InpFuncStrings'
 00682B51    mov         eax,ebx
 00682B53    mov         edi,dword ptr [eax]
 00682B55    call        dword ptr [edi+4]
 00682B58    mov         edx,dword ptr [ebp-444]
 00682B5E    mov         eax,7C23CC;^'Manual Call Point Line'
 00682B63    call        @UStrAsg
 00682B68    push        68A4C8;'Detection Line'
 00682B6D    lea         eax,[ebp-448]
 00682B73    push        eax
 00682B74    mov         ecx,68A4F4;'sInpDetLine'
 00682B79    mov         edx,685C38;'InpFuncStrings'
 00682B7E    mov         eax,ebx
 00682B80    mov         edi,dword ptr [eax]
 00682B82    call        dword ptr [edi+4]
 00682B85    mov         edx,dword ptr [ebp-448]
 00682B8B    mov         eax,7C23D4;^'Detection Line'
 00682B90    call        @UStrAsg
 00682B95    push        684848;'Not in use'
 00682B9A    lea         eax,[ebp-44C]
 00682BA0    push        eax
 00682BA1    mov         ecx,68A518;'sInpNotInUse'
 00682BA6    mov         edx,685C38;'InpFuncStrings'
 00682BAB    mov         eax,ebx
 00682BAD    mov         edi,dword ptr [eax]
 00682BAF    call        dword ptr [edi+4]
 00682BB2    mov         edx,dword ptr [ebp-44C]
 00682BB8    mov         eax,7C23DC;^'Not in use'
 00682BBD    call        @UStrAsg
 00682BC2    push        68A540;'Manual Call Point'
 00682BC7    lea         eax,[ebp-450]
 00682BCD    push        eax
 00682BCE    mov         ecx,68A570;'sInpMCP'
 00682BD3    mov         edx,685C38;'InpFuncStrings'
 00682BD8    mov         eax,ebx
 00682BDA    mov         edi,dword ptr [eax]
 00682BDC    call        dword ptr [edi+4]
 00682BDF    mov         edx,dword ptr [ebp-450]
 00682BE5    mov         eax,7C23E0;^'Manual Call Point'
 00682BEA    call        @UStrAsg
 00682BEF    push        68A58C;'Beam detector'
 00682BF4    lea         eax,[ebp-454]
 00682BFA    push        eax
 00682BFB    mov         ecx,68A5B4;'sInpConvBeamDet'
 00682C00    mov         edx,685C38;'InpFuncStrings'
 00682C05    mov         eax,ebx
 00682C07    mov         edi,dword ptr [eax]
 00682C09    call        dword ptr [edi+4]
 00682C0C    mov         edx,dword ptr [ebp-454]
 00682C12    mov         eax,7C23E4;^'Beam detector'
 00682C17    call        @UStrAsg
 00682C1C    push        68A5E0;'Conv. Heat Detector'
 00682C21    lea         eax,[ebp-458]
 00682C27    push        eax
 00682C28    mov         ecx,68A614;'sInpConvHeatDet'
 00682C2D    mov         edx,685C38;'InpFuncStrings'
 00682C32    mov         eax,ebx
 00682C34    mov         edi,dword ptr [eax]
 00682C36    call        dword ptr [edi+4]
 00682C39    mov         edx,dword ptr [ebp-458]
 00682C3F    mov         eax,7C23E8;^'Conv. Heat Detector'
 00682C44    call        @UStrAsg
 00682C49    push        68A640;'Fire Alarm Input'
 00682C4E    lea         eax,[ebp-45C]
 00682C54    push        eax
 00682C55    mov         ecx,68A670;'sInpFireAlarm'
 00682C5A    mov         edx,685C38;'InpFuncStrings'
 00682C5F    mov         eax,ebx
 00682C61    mov         edi,dword ptr [eax]
 00682C63    call        dword ptr [edi+4]
 00682C66    mov         edx,dword ptr [ebp-45C]
 00682C6C    mov         eax,7C23EC;^'Fire Alarm Input'
 00682C71    call        @UStrAsg
 00682C76    push        68A698;'Prealarm Input'
 00682C7B    lea         eax,[ebp-460]
 00682C81    push        eax
 00682C82    mov         ecx,68A6C4;'sInpPrewarning'
 00682C87    mov         edx,685C38;'InpFuncStrings'
 00682C8C    mov         eax,ebx
 00682C8E    mov         edi,dword ptr [eax]
 00682C90    call        dword ptr [edi+4]
 00682C93    mov         edx,dword ptr [ebp-460]
 00682C99    mov         eax,7C23F0;^'Prealarm Input'
 00682C9E    call        @UStrAsg
 00682CA3    push        68A6F0;'Fault Warning Input'
 00682CA8    lea         eax,[ebp-464]
 00682CAE    push        eax
 00682CAF    mov         ecx,68A724;'sInpFaultWarning'
 00682CB4    mov         edx,685C38;'InpFuncStrings'
 00682CB9    mov         eax,ebx
 00682CBB    mov         edi,dword ptr [eax]
 00682CBD    call        dword ptr [edi+4]
 00682CC0    mov         edx,dword ptr [ebp-464]
 00682CC6    mov         eax,7C23F4;^'Fault Warning Input'
 00682CCB    call        @UStrAsg
 00682CD0    push        68A754;'Maintenance Input'
 00682CD5    lea         eax,[ebp-468]
 00682CDB    push        eax
 00682CDC    mov         ecx,68A784;'sInpMaintWarning'
 00682CE1    mov         edx,685C38;'InpFuncStrings'
 00682CE6    mov         eax,ebx
 00682CE8    mov         edi,dword ptr [eax]
 00682CEA    call        dword ptr [edi+4]
 00682CED    mov         edx,dword ptr [ebp-468]
 00682CF3    mov         eax,7C23F8;^'Maintenance Input'
 00682CF8    call        @UStrAsg
 00682CFD    push        68A7B4;'Technical Alarm Input'
 00682D02    lea         eax,[ebp-46C]
 00682D08    push        eax
 00682D09    mov         ecx,68A7EC;'sInpTechAlarm'
 00682D0E    mov         edx,685C38;'InpFuncStrings'
 00682D13    mov         eax,ebx
 00682D15    mov         edi,dword ptr [eax]
 00682D17    call        dword ptr [edi+4]
 00682D1A    mov         edx,dword ptr [ebp-46C]
 00682D20    mov         eax,7C23FC;^'Technical Alarm Input'
 00682D25    call        @UStrAsg
 00682D2A    push        68A814;'Silent Tech Alarm Input'
 00682D2F    lea         eax,[ebp-470]
 00682D35    push        eax
 00682D36    mov         ecx,68A850;'sInpSilentTechAlarm'
 00682D3B    mov         edx,685C38;'InpFuncStrings'
 00682D40    mov         eax,ebx
 00682D42    mov         edi,dword ptr [eax]
 00682D44    call        dword ptr [edi+4]
 00682D47    mov         edx,dword ptr [ebp-470]
 00682D4D    mov         eax,7C2400;^'Silent Tech Alarm Input'
 00682D52    call        @UStrAsg
 00682D57    push        68A884;'Zone Disablement Input'
 00682D5C    lea         eax,[ebp-474]
 00682D62    push        eax
 00682D63    mov         ecx,68A8C0;'sInpZoneDisable'
 00682D68    mov         edx,685C38;'InpFuncStrings'
 00682D6D    mov         eax,ebx
 00682D6F    mov         edi,dword ptr [eax]
 00682D71    call        dword ptr [edi+4]
 00682D74    mov         edx,dword ptr [ebp-474]
 00682D7A    mov         eax,7C2404;^'Zone Disablement Input'
 00682D7F    call        @UStrAsg
 00682D84    push        68A8EC;'Day Mode Activation Inp.'
 00682D89    lea         eax,[ebp-478]
 00682D8F    push        eax
 00682D90    mov         ecx,68A92C;'sInpDayMode'
 00682D95    mov         edx,685C38;'InpFuncStrings'
 00682D9A    mov         eax,ebx
 00682D9C    mov         edi,dword ptr [eax]
 00682D9E    call        dword ptr [edi+4]
 00682DA1    mov         edx,dword ptr [ebp-478]
 00682DA7    mov         eax,7C2408;^'Day Mode Activation Inp.'
 00682DAC    call        @UStrAsg
 00682DB1    push        68A950;'Delayed Alarm Enable Inp'
 00682DB6    lea         eax,[ebp-47C]
 00682DBC    push        eax
 00682DBD    mov         ecx,68A990;'sInpDelAlrmEnable'
 00682DC2    mov         edx,685C38;'InpFuncStrings'
 00682DC7    mov         eax,ebx
 00682DC9    mov         edi,dword ptr [eax]
 00682DCB    call        dword ptr [edi+4]
 00682DCE    mov         edx,dword ptr [ebp-47C]
 00682DD4    mov         eax,7C240C;^'Delayed Alarm Enable Inp'
 00682DD9    call        @UStrAsg
 00682DDE    push        68A9C0;'Day M. and Del. Al. En.'
 00682DE3    lea         eax,[ebp-480]
 00682DE9    push        eax
 00682DEA    mov         ecx,68A9FC;'sInpDayAndDelEnable'
 00682DEF    mov         edx,685C38;'InpFuncStrings'
 00682DF4    mov         eax,ebx
 00682DF6    mov         edi,dword ptr [eax]
 00682DF8    call        dword ptr [edi+4]
 00682DFB    mov         edx,dword ptr [ebp-480]
 00682E01    mov         eax,7C2410;^'Day M. and Del. Al. En.'
 00682E06    call        @UStrAsg
 00682E0B    push        68AA30;'Delayed Alarm Zonal Sil.'
 00682E10    lea         eax,[ebp-484]
 00682E16    push        eax
 00682E17    mov         ecx,68AA70;'sInpDelAlarmZonalSil'
 00682E1C    mov         edx,685C38;'InpFuncStrings'
 00682E21    mov         eax,ebx
 00682E23    mov         edi,dword ptr [eax]
 00682E25    call        dword ptr [edi+4]
 00682E28    mov         edx,dword ptr [ebp-484]
 00682E2E    mov         eax,7C2414;^'Delayed Alarm Zonal Sil.'
 00682E33    call        @UStrAsg
 00682E38    push        68AAA8;'Delayed Alarm Zonal Res.'
 00682E3D    lea         eax,[ebp-488]
 00682E43    push        eax
 00682E44    mov         ecx,68AAE8;'sInpDelAlarmZonalRes'
 00682E49    mov         edx,685C38;'InpFuncStrings'
 00682E4E    mov         eax,ebx
 00682E50    mov         edi,dword ptr [eax]
 00682E52    call        dword ptr [edi+4]
 00682E55    mov         edx,dword ptr [ebp-488]
 00682E5B    mov         eax,7C2418;^'Delayed Alarm Zonal Res.'
 00682E60    call        @UStrAsg
 00682E65    push        68AB20;'General Silence Input'
 00682E6A    lea         eax,[ebp-48C]
 00682E70    push        eax
 00682E71    mov         ecx,68AB58;'sInpGeneralSilence'
 00682E76    mov         edx,685C38;'InpFuncStrings'
 00682E7B    mov         eax,ebx
 00682E7D    mov         edi,dword ptr [eax]
 00682E7F    call        dword ptr [edi+4]
 00682E82    mov         edx,dword ptr [ebp-48C]
 00682E88    mov         eax,7C241C;^'General Silence Input'
 00682E8D    call        @UStrAsg
 00682E92    push        68AB8C;'General Reset Input'
 00682E97    lea         eax,[ebp-490]
 00682E9D    push        eax
 00682E9E    mov         ecx,68ABC0;'sInpGeneralReset'
 00682EA3    mov         edx,685C38;'InpFuncStrings'
 00682EA8    mov         eax,ebx
 00682EAA    mov         edi,dword ptr [eax]
 00682EAC    call        dword ptr [edi+4]
 00682EAF    mov         edx,dword ptr [ebp-490]
 00682EB5    mov         eax,7C2420;^'General Reset Input'
 00682EBA    call        @UStrAsg
 00682EBF    push        68ABF0;'Extinguisher Activated'
 00682EC4    lea         eax,[ebp-494]
 00682ECA    push        eax
 00682ECB    mov         ecx,68AC2C;'sInpExtingActiv'
 00682ED0    mov         edx,685C38;'InpFuncStrings'
 00682ED5    mov         eax,ebx
 00682ED7    mov         edi,dword ptr [eax]
 00682ED9    call        dword ptr [edi+4]
 00682EDC    mov         edx,dword ptr [ebp-494]
 00682EE2    mov         eax,7C2424;^'Extinguisher Activated'
 00682EE7    call        @UStrAsg
 00682EEC    push        68AC58;'Smokeventil. Activated'
 00682EF1    lea         eax,[ebp-498]
 00682EF7    push        eax
 00682EF8    mov         ecx,68AC94;'sInpSmokeVentActiv'
 00682EFD    mov         edx,685C38;'InpFuncStrings'
 00682F02    mov         eax,ebx
 00682F04    mov         edi,dword ptr [eax]
 00682F06    call        dword ptr [edi+4]
 00682F09    mov         edx,dword ptr [ebp-498]
 00682F0F    mov         eax,7C2428;^'Smokeventil. Activated'
 00682F14    call        @UStrAsg
 00682F19    push        68ACC8;'Custom. LED 1 Activation'
 00682F1E    lea         eax,[ebp-49C]
 00682F24    push        eax
 00682F25    mov         ecx,68AD08;'sInpCustLED1Activ'
 00682F2A    mov         edx,685C38;'InpFuncStrings'
 00682F2F    mov         eax,ebx
 00682F31    mov         edi,dword ptr [eax]
 00682F33    call        dword ptr [edi+4]
 00682F36    mov         edx,dword ptr [ebp-49C]
 00682F3C    mov         eax,7C242C;^'Custom. LED 1 Activation'
 00682F41    call        @UStrAsg
 00682F46    push        68AD38;'Custom. LED 2 Activation'
 00682F4B    lea         eax,[ebp-4A0]
 00682F51    push        eax
 00682F52    mov         ecx,68AD78;'sInpCustLED2Activ'
 00682F57    mov         edx,685C38;'InpFuncStrings'
 00682F5C    mov         eax,ebx
 00682F5E    mov         edi,dword ptr [eax]
 00682F60    call        dword ptr [edi+4]
 00682F63    mov         edx,dword ptr [ebp-4A0]
 00682F69    mov         eax,7C2430;^'Custom. LED 2 Activation'
 00682F6E    call        @UStrAsg
 00682F73    push        68ADA8;'Internal Logic Input'
 00682F78    lea         eax,[ebp-4A4]
 00682F7E    push        eax
 00682F7F    mov         ecx,68ADE0;'sInpInternalLogic'
 00682F84    mov         edx,685C38;'InpFuncStrings'
 00682F89    mov         eax,ebx
 00682F8B    mov         edi,dword ptr [eax]
 00682F8D    call        dword ptr [edi+4]
 00682F90    mov         edx,dword ptr [ebp-4A4]
 00682F96    mov         eax,7C2434;^'Internal Logic Input'
 00682F9B    call        @UStrAsg
 00682FA0    push        68AE10;'External Logic Input'
 00682FA5    lea         eax,[ebp-4A8]
 00682FAB    push        eax
 00682FAC    mov         ecx,68AE48;'sInpExternalLogic'
 00682FB1    mov         edx,685C38;'InpFuncStrings'
 00682FB6    mov         eax,ebx
 00682FB8    mov         edi,dword ptr [eax]
 00682FBA    call        dword ptr [edi+4]
 00682FBD    mov         edx,dword ptr [ebp-4A8]
 00682FC3    mov         eax,7C2438;^'External Logic Input'
 00682FC8    call        @UStrAsg
 00682FCD    push        68AE78;'Evacuation Input'
 00682FD2    lea         eax,[ebp-4AC]
 00682FD8    push        eax
 00682FD9    mov         ecx,68AEA8;'sInpEvacuation'
 00682FDE    mov         edx,685C38;'InpFuncStrings'
 00682FE3    mov         eax,ebx
 00682FE5    mov         edi,dword ptr [eax]
 00682FE7    call        dword ptr [edi+4]
 00682FEA    mov         edx,dword ptr [ebp-4AC]
 00682FF0    mov         eax,7C243C;^'Evacuation Input'
 00682FF5    call        @UStrAsg
 00682FFA    push        68AED4;'Extinguisher Fault Input'
 00682FFF    lea         eax,[ebp-4B0]
 00683005    push        eax
 00683006    mov         ecx,68AF14;'sInpExtingFault'
 0068300B    mov         edx,685C38;'InpFuncStrings'
 00683010    mov         eax,ebx
 00683012    mov         edi,dword ptr [eax]
 00683014    call        dword ptr [edi+4]
 00683017    mov         edx,dword ptr [ebp-4B0]
 0068301D    mov         eax,7C2440;^'Extinguisher Fault Input'
 00683022    call        @UStrAsg
 00683027    push        68AF40;'Fire alarm device mute input'
 0068302C    lea         eax,[ebp-4B4]
 00683032    push        eax
 00683033    mov         ecx,68AF88;'sInpAlarmDeviceMute'
 00683038    mov         edx,685C38;'InpFuncStrings'
 0068303D    mov         eax,ebx
 0068303F    mov         edi,dword ptr [eax]
 00683041    call        dword ptr [edi+4]
 00683044    mov         edx,dword ptr [ebp-4B4]
 0068304A    mov         eax,7C2444;^'Fire alarm device mute input'
 0068304F    call        @UStrAsg
 00683054    push        68AFBC;'Local day mode activation input'
 00683059    lea         eax,[ebp-4B8]
 0068305F    push        eax
 00683060    mov         ecx,68B008;'sInpLocDayMode'
 00683065    mov         edx,685C38;'InpFuncStrings'
 0068306A    mov         eax,ebx
 0068306C    mov         edi,dword ptr [eax]
 0068306E    call        dword ptr [edi+4]
 00683071    mov         edx,dword ptr [ebp-4B8]
 00683077    mov         eax,7C2448;^'Local day mode activation input'
 0068307C    call        @UStrAsg
 00683081    push        68B034;'Local delayed alarm enable input'
 00683086    lea         eax,[ebp-4BC]
 0068308C    push        eax
 0068308D    mov         ecx,68B084;'sInpLocDelAlarmEnable'
 00683092    mov         edx,685C38;'InpFuncStrings'
 00683097    mov         eax,ebx
 00683099    mov         edi,dword ptr [eax]
 0068309B    call        dword ptr [edi+4]
 0068309E    mov         edx,dword ptr [ebp-4BC]
 006830A4    mov         eax,7C244C;^'Local delayed alarm enable input'
 006830A9    call        @UStrAsg
 006830AE    push        68B0BC;'Local day mode and delayed alarm enable'
 006830B3    lea         eax,[ebp-4C0]
 006830B9    push        eax
 006830BA    mov         ecx,68B118;'sInpLocDayAndDelEnable'
 006830BF    mov         edx,685C38;'InpFuncStrings'
 006830C4    mov         eax,ebx
 006830C6    mov         edi,dword ptr [eax]
 006830C8    call        dword ptr [edi+4]
 006830CB    mov         edx,dword ptr [ebp-4C0]
 006830D1    mov         eax,7C2450;^'Local day mode and delayed alarm enable'
 006830D6    call        @UStrAsg
 006830DB    push        68B154;'Local fire alarm device mute input'
 006830E0    lea         eax,[ebp-4C4]
 006830E6    push        eax
 006830E7    mov         ecx,68B1A8;'sInpLocAlarmDeviceMute'
 006830EC    mov         edx,685C38;'InpFuncStrings'
 006830F1    mov         eax,ebx
 006830F3    mov         edi,dword ptr [eax]
 006830F5    call        dword ptr [edi+4]
 006830F8    mov         edx,dword ptr [ebp-4C4]
 006830FE    mov         eax,7C2454;^'Local fire alarm device mute input'
 00683103    call        @UStrAsg
 00683108    push        68B1E4;'Local evacuation input'
 0068310D    lea         eax,[ebp-4C8]
 00683113    push        eax
 00683114    mov         ecx,68B220;'sInpLocEvacuation'
 00683119    mov         edx,685C38;'InpFuncStrings'
 0068311E    mov         eax,ebx
 00683120    mov         edi,dword ptr [eax]
 00683122    call        dword ptr [edi+4]
 00683125    mov         edx,dword ptr [ebp-4C8]
 0068312B    mov         eax,7C2458;^'Local evacuation input'
 00683130    call        @UStrAsg
 00683135    push        68B250;'Voice Evacuation Fault Input'
 0068313A    lea         eax,[ebp-4CC]
 00683140    push        eax
 00683141    mov         ecx,68B298;'sInpEvacuationFault'
 00683146    mov         edx,685C38;'InpFuncStrings'
 0068314B    mov         eax,ebx
 0068314D    mov         edi,dword ptr [eax]
 0068314F    call        dword ptr [edi+4]
 00683152    mov         edx,dword ptr [ebp-4CC]
 00683158    mov         eax,7C245C;^'Voice Evacuation Fault Input'
 0068315D    call        @UStrAsg
 00683162    push        68B2CC;'FARE Fault input'
 00683167    lea         eax,[ebp-4D0]
 0068316D    push        eax
 0068316E    mov         ecx,68B2FC;'sInpFaultInFARE'
 00683173    mov         edx,685C38;'InpFuncStrings'
 00683178    mov         eax,ebx
 0068317A    mov         edi,dword ptr [eax]
 0068317C    call        dword ptr [edi+4]
 0068317F    mov         edx,dword ptr [ebp-4D0]
 00683185    mov         eax,7C2460;^'FARE Fault input'
 0068318A    call        @UStrAsg
 0068318F    push        684848;'Not in use'
 00683194    lea         eax,[ebp-4D4]
 0068319A    push        eax
 0068319B    mov         ecx,68B328;'sOutNotInUse'
 006831A0    mov         edx,6851A0;'OutFuncStrings'
 006831A5    mov         eax,ebx
 006831A7    mov         edi,dword ptr [eax]
 006831A9    call        dword ptr [edi+4]
 006831AC    mov         edx,dword ptr [ebp-4D4]
 006831B2    mov         eax,7C2518;^'Not in use'
 006831B7    call        @UStrAsg
 006831BC    push        685148;'Fire Alarm Devices'
 006831C1    lea         eax,[ebp-4D8]
 006831C7    push        eax
 006831C8    mov         ecx,68517C;'sOutFireAD'
 006831CD    mov         edx,6851A0;'OutFuncStrings'
 006831D2    mov         eax,ebx
 006831D4    mov         edi,dword ptr [eax]
 006831D6    call        dword ptr [edi+4]
 006831D9    mov         edx,dword ptr [ebp-4D8]
 006831DF    mov         eax,7C251C;^'Fire Alarm Devices'
 006831E4    call        @UStrAsg
 006831E9    push        6851CC;'Fire Alarm Devices Non-S'
 006831EE    lea         eax,[ebp-4DC]
 006831F4    push        eax
 006831F5    mov         ecx,68B350;'sOutFireADNS'
 006831FA    mov         edx,6851A0;'OutFuncStrings'
 006831FF    mov         eax,ebx
 00683201    mov         edi,dword ptr [eax]
 00683203    call        dword ptr [edi+4]
 00683206    mov         edx,dword ptr [ebp-4DC]
 0068320C    mov         eax,7C2520;^'Fire Alarm Devices Non-S'
 00683211    call        @UStrAsg
 00683216    push        685234;'Fault Warning Alarm Dev.'
 0068321B    lea         eax,[ebp-4E0]
 00683221    push        eax
 00683222    mov         ecx,685274;'sOutFaultWD'
 00683227    mov         edx,6851A0;'OutFuncStrings'
 0068322C    mov         eax,ebx
 0068322E    mov         edi,dword ptr [eax]
 00683230    call        dword ptr [edi+4]
 00683233    mov         edx,dword ptr [ebp-4E0]
 00683239    mov         eax,7C2524;^'Fault Warning Alarm Dev.'
 0068323E    call        @UStrAsg
 00683243    push        685298;'Fire Alarm Output'
 00683248    lea         eax,[ebp-4E4]
 0068324E    push        eax
 0068324F    mov         ecx,6852C8;'sOutFireAlarm'
 00683254    mov         edx,6851A0;'OutFuncStrings'
 00683259    mov         eax,ebx
 0068325B    mov         edi,dword ptr [eax]
 0068325D    call        dword ptr [edi+4]
 00683260    mov         edx,dword ptr [ebp-4E4]
 00683266    mov         eax,7C2528;^'Fire Alarm Output'
 0068326B    call        @UStrAsg
 00683270    push        6852F0;'Prealarm Output'
 00683275    lea         eax,[ebp-4E8]
 0068327B    push        eax
 0068327C    mov         ecx,68531C;'sOutPrewarning'
 00683281    mov         edx,6851A0;'OutFuncStrings'
 00683286    mov         eax,ebx
 00683288    mov         edi,dword ptr [eax]
 0068328A    call        dword ptr [edi+4]
 0068328D    mov         edx,dword ptr [ebp-4E8]
 00683293    mov         eax,7C252C;^'Prealarm Output'
 00683298    call        @UStrAsg
 0068329D    push        685348;'Fault Warning Output'
 006832A2    lea         eax,[ebp-4EC]
 006832A8    push        eax
 006832A9    mov         ecx,685380;'sOutFaultWarning'
 006832AE    mov         edx,6851A0;'OutFuncStrings'
 006832B3    mov         eax,ebx
 006832B5    mov         edi,dword ptr [eax]
 006832B7    call        dword ptr [edi+4]
 006832BA    mov         edx,dword ptr [ebp-4EC]
 006832C0    mov         eax,7C2530;^'Fault Warning Output'
 006832C5    call        @UStrAsg
 006832CA    push        6853B0;'Maintenance Warning Outp'
 006832CF    lea         eax,[ebp-4F0]
 006832D5    push        eax
 006832D6    mov         ecx,6853F0;'sOutMaintWarning'
 006832DB    mov         edx,6851A0;'OutFuncStrings'
 006832E0    mov         eax,ebx
 006832E2    mov         edi,dword ptr [eax]
 006832E4    call        dword ptr [edi+4]
 006832E7    mov         edx,dword ptr [ebp-4F0]
 006832ED    mov         eax,7C2534;^'Maintenance Warning Outp'
 006832F2    call        @UStrAsg
 006832F7    push        685420;'Fire Door Output'
 006832FC    lea         eax,[ebp-4F4]
 00683302    push        eax
 00683303    mov         ecx,685450;'sOutFireDoor'
 00683308    mov         edx,6851A0;'OutFuncStrings'
 0068330D    mov         eax,ebx
 0068330F    mov         edi,dword ptr [eax]
 00683311    call        dword ptr [edi+4]
 00683314    mov         edx,dword ptr [ebp-4F4]
 0068331A    mov         eax,7C2538;^'Fire Door Output'
 0068331F    call        @UStrAsg
 00683324    push        685478;'Extinguisher Output'
 00683329    lea         eax,[ebp-4F8]
 0068332F    push        eax
 00683330    mov         ecx,6854AC;'sOutExtinguisher'
 00683335    mov         edx,6851A0;'OutFuncStrings'
 0068333A    mov         eax,ebx
 0068333C    mov         edi,dword ptr [eax]
 0068333E    call        dword ptr [edi+4]
 00683341    mov         edx,dword ptr [ebp-4F8]
 00683347    mov         eax,7C253C;^'Extinguisher Output'
 0068334C    call        @UStrAsg
 00683351    push        6854DC;'Disablement Output'
 00683356    lea         eax,[ebp-4FC]
 0068335C    push        eax
 0068335D    mov         ecx,685510;'sOutDisablement'
 00683362    mov         edx,6851A0;'OutFuncStrings'
 00683367    mov         eax,ebx
 00683369    mov         edi,dword ptr [eax]
 0068336B    call        dword ptr [edi+4]
 0068336E    mov         edx,dword ptr [ebp-4FC]
 00683374    mov         eax,7C2540;^'Disablement Output'
 00683379    call        @UStrAsg
 0068337E    push        68553C;'Access Level Output'
 00683383    lea         eax,[ebp-500]
 00683389    push        eax
 0068338A    mov         ecx,685570;'sOutAccessLevel'
 0068338F    mov         edx,6851A0;'OutFuncStrings'
 00683394    mov         eax,ebx
 00683396    mov         edi,dword ptr [eax]
 00683398    call        dword ptr [edi+4]
 0068339B    mov         edx,dword ptr [ebp-500]
 006833A1    mov         eax,7C2544;^'Access Level Output'
 006833A6    call        @UStrAsg
 006833AB    push        68559C;'Technical Alarm Output'
 006833B0    lea         eax,[ebp-504]
 006833B6    push        eax
 006833B7    mov         ecx,6855D8;'sOutTechAlarm'
 006833BC    mov         edx,6851A0;'OutFuncStrings'
 006833C1    mov         eax,ebx
 006833C3    mov         edi,dword ptr [eax]
 006833C5    call        dword ptr [edi+4]
 006833C8    mov         edx,dword ptr [ebp-504]
 006833CE    mov         eax,7C2548;^'Technical Alarm Output'
 006833D3    call        @UStrAsg
 006833D8    push        685600;'Internal Logic Output'
 006833DD    lea         eax,[ebp-508]
 006833E3    push        eax
 006833E4    mov         ecx,685638;'sOutInternalLogic'
 006833E9    mov         edx,6851A0;'OutFuncStrings'
 006833EE    mov         eax,ebx
 006833F0    mov         edi,dword ptr [eax]
 006833F2    call        dword ptr [edi+4]
 006833F5    mov         edx,dword ptr [ebp-508]
 006833FB    mov         eax,7C254C;^'Internal Logic Output'
 00683400    call        @UStrAsg
 00683405    push        685668;'External Logic Output'
 0068340A    lea         eax,[ebp-50C]
 00683410    push        eax
 00683411    mov         ecx,6856A0;'sOutExternalLogic'
 00683416    mov         edx,6851A0;'OutFuncStrings'
 0068341B    mov         eax,ebx
 0068341D    mov         edi,dword ptr [eax]
 0068341F    call        dword ptr [edi+4]
 00683422    mov         edx,dword ptr [ebp-50C]
 00683428    mov         eax,7C2550;^'External Logic Output'
 0068342D    call        @UStrAsg
 00683432    push        6856D0;'Delayed Fire Alarm outp.'
 00683437    lea         eax,[ebp-510]
 0068343D    push        eax
 0068343E    mov         ecx,685710;'sOutDelFireAlarm'
 00683443    mov         edx,6851A0;'OutFuncStrings'
 00683448    mov         eax,ebx
 0068344A    mov         edi,dword ptr [eax]
 0068344C    call        dword ptr [edi+4]
 0068344F    mov         edx,dword ptr [ebp-510]
 00683455    mov         eax,7C2554;^'Delayed Fire Alarm outp.'
 0068345A    call        @UStrAsg
 0068345F    push        685740;'FA Transmitter Activ.LED'
 00683464    lea         eax,[ebp-514]
 0068346A    push        eax
 0068346B    mov         ecx,68B378;'sOutFAREActivLed'
 00683470    mov         edx,6851A0;'OutFuncStrings'
 00683475    mov         eax,ebx
 00683477    mov         edi,dword ptr [eax]
 00683479    call        dword ptr [edi+4]
 0068347C    mov         edx,dword ptr [ebp-514]
 00683482    mov         eax,7C2558;^'FA Transmitter Activ.LED'
 00683487    call        @UStrAsg
 0068348C    push        6857B0;'Voice Evacuation Activate output'
 00683491    lea         eax,[ebp-518]
 00683497    push        eax
 00683498    mov         ecx,685800;'sOutVEActivate'
 0068349D    mov         edx,6851A0;'OutFuncStrings'
 006834A2    mov         eax,ebx
 006834A4    mov         edi,dword ptr [eax]
 006834A6    call        dword ptr [edi+4]
 006834A9    mov         edx,dword ptr [ebp-518]
 006834AF    mov         eax,7C255C;^'Voice Evacuation Activate output'
 006834B4    call        @UStrAsg
 006834B9    push        68582C;'Voice Evacuation Test output'
 006834BE    lea         eax,[ebp-51C]
 006834C4    push        eax
 006834C5    mov         ecx,685874;'sOutVETest'
 006834CA    mov         edx,6851A0;'OutFuncStrings'
 006834CF    mov         eax,ebx
 006834D1    mov         edi,dword ptr [eax]
 006834D3    call        dword ptr [edi+4]
 006834D6    mov         edx,dword ptr [ebp-51C]
 006834DC    mov         eax,7C2560;^'Voice Evacuation Test output'
 006834E1    call        @UStrAsg
 006834E6    push        685898;'Fire Alarm Devices Lev.1 Silenceable'
 006834EB    lea         eax,[ebp-520]
 006834F1    push        eax
 006834F2    mov         ecx,6858F0;'sOutFireAdL1Sil'
 006834F7    mov         edx,6851A0;'OutFuncStrings'
 006834FC    mov         eax,ebx
 006834FE    mov         edi,dword ptr [eax]
 00683500    call        dword ptr [edi+4]
 00683503    mov         edx,dword ptr [ebp-520]
 00683509    mov         eax,7C2564;^'Fire Alarm Devices Lev.1 Silenceable'
 0068350E    call        @UStrAsg
 00683513    push        68591C;'General Reset Output'
 00683518    lea         eax,[ebp-524]
 0068351E    push        eax
 0068351F    mov         ecx,685954;'sOutGeneralReset'
 00683524    mov         edx,6851A0;'OutFuncStrings'
 00683529    mov         eax,ebx
 0068352B    mov         edi,dword ptr [eax]
 0068352D    call        dword ptr [edi+4]
 00683530    mov         edx,dword ptr [ebp-524]
 00683536    mov         eax,7C2568;^'General Reset Output'
 0068353B    call        @UStrAsg
 00683540    push        685984;'Zone Disabled Output'
 00683545    lea         eax,[ebp-528]
 0068354B    push        eax
 0068354C    mov         ecx,6859BC;'sOutZoneDisabled'
 00683551    mov         edx,6851A0;'OutFuncStrings'
 00683556    mov         eax,ebx
 00683558    mov         edi,dword ptr [eax]
 0068355A    call        dword ptr [edi+4]
 0068355D    mov         edx,dword ptr [ebp-528]
 00683563    mov         eax,7C256C;^'Zone Disabled Output'
 00683568    call        @UStrAsg
 0068356D    push        6859EC;'Delayed Alarm Enabled Output'
 00683572    lea         eax,[ebp-52C]
 00683578    push        eax
 00683579    mov         ecx,685A34;'sOutDelAlarmEnabled'
 0068357E    mov         edx,6851A0;'OutFuncStrings'
 00683583    mov         eax,ebx
 00683585    mov         edi,dword ptr [eax]
 00683587    call        dword ptr [edi+4]
 0068358A    mov         edx,dword ptr [ebp-52C]
 00683590    mov         eax,7C2570;^'Delayed Alarm Enabled Output'
 00683595    call        @UStrAsg
 0068359A    push        685A68;'Fire router disabled output'
 0068359F    lea         eax,[ebp-530]
 006835A5    push        eax
 006835A6    mov         ecx,685AAC;'sOutFireRouterDisabled'
 006835AB    mov         edx,6851A0;'OutFuncStrings'
 006835B0    mov         eax,ebx
 006835B2    mov         edi,dword ptr [eax]
 006835B4    call        dword ptr [edi+4]
 006835B7    mov         edx,dword ptr [ebp-530]
 006835BD    mov         eax,7C2574;^'Fire router disabled output'
 006835C2    call        @UStrAsg
 006835C7    push        685AE8;'Fault router disabled output'
 006835CC    lea         eax,[ebp-534]
 006835D2    push        eax
 006835D3    mov         ecx,685B30;'sOutFaultRouterDisabled'
 006835D8    mov         edx,6851A0;'OutFuncStrings'
 006835DD    mov         eax,ebx
 006835DF    mov         edi,dword ptr [eax]
 006835E1    call        dword ptr [edi+4]
 006835E4    mov         edx,dword ptr [ebp-534]
 006835EA    mov         eax,7C2578;^'Fault router disabled output'
 006835EF    call        @UStrAsg
 006835F4    push        685B6C;'Main Supply Fault Output'
 006835F9    lea         eax,[ebp-538]
 006835FF    push        eax
 00683600    mov         ecx,685BAC;'sOutMainSupplyFault'
 00683605    mov         edx,6851A0;'OutFuncStrings'
 0068360A    mov         eax,ebx
 0068360C    mov         edi,dword ptr [eax]
 0068360E    call        dword ptr [edi+4]
 00683611    mov         edx,dword ptr [ebp-538]
 00683617    mov         eax,7C257C;^'Main Supply Fault Output'
 0068361C    call        @UStrAsg
 00683621    push        685BE0;'Conventional Zone'
 00683626    lea         eax,[ebp-53C]
 0068362C    push        eax
 0068362D    mov         ecx,685C10;'sInpConvZone'
 00683632    mov         edx,685C38;'InpFuncStrings'
 00683637    mov         eax,ebx
 00683639    mov         edi,dword ptr [eax]
 0068363B    call        dword ptr [edi+4]
 0068363E    mov         edx,dword ptr [ebp-53C]
 00683644    mov         eax,7C2468;^'Conventional Zone'
 00683649    call        @UStrAsg
 0068364E    push        685C64;'Conv. Beam Detector'
 00683653    lea         eax,[ebp-540]
 00683659    push        eax
 0068365A    mov         ecx,685C98;'sInpBeamDetector'
 0068365F    mov         edx,685C38;'InpFuncStrings'
 00683664    mov         eax,ebx
 00683666    mov         edi,dword ptr [eax]
 00683668    call        dword ptr [edi+4]
 0068366B    mov         edx,dword ptr [ebp-540]
 00683671    mov         eax,7C246C;^'Conv. Beam Detector'
 00683676    call        @UStrAsg
 0068367B    push        684848;'Not in use'
 00683680    lea         eax,[ebp-544]
 00683686    push        eax
 00683687    mov         ecx,68B3A8;'sSapNotUsed'
 0068368C    mov         edx,68B3CC;'SapTypeStrings'
 00683691    mov         eax,ebx
 00683693    mov         edi,dword ptr [eax]
 00683695    call        dword ptr [edi+4]
 00683698    mov         edx,dword ptr [ebp-544]
 0068369E    mov         eax,esi
 006836A0    call        @UStrAsg
 006836A5    push        68B3F8;'AP200 Ionizating sensor'
 006836AA    lea         eax,[ebp-548]
 006836B0    push        eax
 006836B1    mov         ecx,68B434;'sSapIon'
 006836B6    mov         edx,68B3CC;'SapTypeStrings'
 006836BB    mov         eax,ebx
 006836BD    mov         edi,dword ptr [eax]
 006836BF    call        dword ptr [edi+4]
 006836C2    mov         edx,dword ptr [ebp-548]
 006836C8    lea         eax,[esi+4]
 006836CB    call        @UStrAsg
 006836D0    push        68B450;'AP200 Optical sensor'
 006836D5    lea         eax,[ebp-54C]
 006836DB    push        eax
 006836DC    mov         ecx,68B488;'sSapOpt'
 006836E1    mov         edx,68B3CC;'SapTypeStrings'
 006836E6    mov         eax,ebx
 006836E8    mov         edi,dword ptr [eax]
 006836EA    call        dword ptr [edi+4]
 006836ED    mov         edx,dword ptr [ebp-54C]
 006836F3    lea         eax,[esi+8]
 006836F6    call        @UStrAsg
 006836FB    push        68B4A4;'AP200 Filtrex sensor'
 00683700    lea         eax,[ebp-550]
 00683706    push        eax
 00683707    mov         ecx,68B4DC;'sSapFiltrex'
 0068370C    mov         edx,68B3CC;'SapTypeStrings'
 00683711    mov         eax,ebx
 00683713    mov         edi,dword ptr [eax]
 00683715    call        dword ptr [edi+4]
 00683718    mov         edx,dword ptr [ebp-550]
 0068371E    lea         eax,[esi+0C]
 00683721    call        @UStrAsg
 00683726    push        68B500;'AP200 Multicr. sensor'
 0068372B    lea         eax,[ebp-554]
 00683731    push        eax
 00683732    mov         ecx,68B538;'sSapMulti'
 00683737    mov         edx,68B3CC;'SapTypeStrings'
 0068373C    mov         eax,ebx
 0068373E    mov         edi,dword ptr [eax]
 00683740    call        dword ptr [edi+4]
 00683743    mov         edx,dword ptr [ebp-554]
 00683749    lea         eax,[esi+10]
 0068374C    call        @UStrAsg
 00683751    push        68B558;'AP200 Four crit. sensor'
 00683756    lea         eax,[ebp-558]
 0068375C    push        eax
 0068375D    mov         ecx,68B594;'sSapCoptir'
 00683762    mov         edx,68B3CC;'SapTypeStrings'
 00683767    mov         eax,ebx
 00683769    mov         edi,dword ptr [eax]
 0068376B    call        dword ptr [edi+4]
 0068376E    mov         edx,dword ptr [ebp-558]
 00683774    lea         eax,[esi+14]
 00683777    call        @UStrAsg
 0068377C    push        68B5B8;'AP200 Three crit. sensor'
 00683781    lea         eax,[ebp-55C]
 00683787    push        eax
 00683788    mov         ecx,68B5F8;'sSapPtir'
 0068378D    mov         edx,68B3CC;'SapTypeStrings'
 00683792    mov         eax,ebx
 00683794    mov         edi,dword ptr [eax]
 00683796    call        dword ptr [edi+4]
 00683799    mov         edx,dword ptr [ebp-55C]
 0068379F    lea         eax,[esi+18]
 006837A2    call        @UStrAsg
 006837A7    push        68B618;'AP200 Static heat sensor'
 006837AC    lea         eax,[ebp-560]
 006837B2    push        eax
 006837B3    mov         ecx,68B658;'sSapTempStat'
 006837B8    mov         edx,68B3CC;'SapTypeStrings'
 006837BD    mov         eax,ebx
 006837BF    mov         edi,dword ptr [eax]
 006837C1    call        dword ptr [edi+4]
 006837C4    mov         edx,dword ptr [ebp-560]
 006837CA    lea         eax,[esi+1C]
 006837CD    call        @UStrAsg
 006837D2    push        68B680;'AP200 R-O-R heat sensor'
 006837D7    lea         eax,[ebp-564]
 006837DD    push        eax
 006837DE    mov         ecx,68B6BC;'sSapTempRor'
 006837E3    mov         edx,68B3CC;'SapTypeStrings'
 006837E8    mov         eax,ebx
 006837EA    mov         edi,dword ptr [eax]
 006837EC    call        dword ptr [edi+4]
 006837EF    mov         edx,dword ptr [ebp-564]
 006837F5    lea         eax,[esi+20]
 006837F8    call        @UStrAsg
 006837FD    push        68B6E0;'AP200 High heat sensor'
 00683802    lea         eax,[ebp-568]
 00683808    push        eax
 00683809    mov         ecx,68B71C;'sSapTempHigh'
 0068380E    mov         edx,68B3CC;'SapTypeStrings'
 00683813    mov         eax,ebx
 00683815    mov         edi,dword ptr [eax]
 00683817    call        dword ptr [edi+4]
 0068381A    mov         edx,dword ptr [ebp-568]
 00683820    lea         eax,[esi+24]
 00683823    call        @UStrAsg
 00683828    push        68B744;'AP200 Beam sensor'
 0068382D    lea         eax,[ebp-56C]
 00683833    push        eax
 00683834    mov         ecx,68B774;'sSapBeam'
 00683839    mov         edx,68B3CC;'SapTypeStrings'
 0068383E    mov         eax,ebx
 00683840    mov         edi,dword ptr [eax]
 00683842    call        dword ptr [edi+4]
 00683845    mov         edx,dword ptr [ebp-56C]
 0068384B    lea         eax,[esi+28]
 0068384E    call        @UStrAsg
 00683853    push        68B794;'AP200 Laser (LZR-1)'
 00683858    lea         eax,[ebp-570]
 0068385E    push        eax
 0068385F    mov         ecx,68B7C8;'sSapLaser1'
 00683864    mov         edx,68B3CC;'SapTypeStrings'
 00683869    mov         eax,ebx
 0068386B    mov         edi,dword ptr [eax]
 0068386D    call        dword ptr [edi+4]
 00683870    mov         edx,dword ptr [ebp-570]
 00683876    lea         eax,[esi+2C]
 00683879    call        @UStrAsg
 0068387E    push        68B7EC;'AP200 Laser (7251)'
 00683883    lea         eax,[ebp-574]
 00683889    push        eax
 0068388A    mov         ecx,68B820;'sSapLaser2'
 0068388F    mov         edx,68B3CC;'SapTypeStrings'
 00683894    mov         eax,ebx
 00683896    mov         edi,dword ptr [eax]
 00683898    call        dword ptr [edi+4]
 0068389B    mov         edx,dword ptr [ebp-574]
 006838A1    lea         eax,[esi+30]
 006838A4    call        @UStrAsg
 006838A9    push        68B844;'AP200 Beam sensor w. testfilter'
 006838AE    lea         eax,[ebp-578]
 006838B4    push        eax
 006838B5    mov         ecx,68B890;'sSapBeamTester'
 006838BA    mov         edx,68B3CC;'SapTypeStrings'
 006838BF    mov         eax,ebx
 006838C1    mov         edi,dword ptr [eax]
 006838C3    call        dword ptr [edi+4]
 006838C6    mov         edx,dword ptr [ebp-578]
 006838CC    lea         eax,[esi+34]
 006838CF    call        @UStrAsg
 006838D4    push        0
 006838D6    lea         eax,[ebp-57C]
 006838DC    push        eax
 006838DD    mov         ecx,68B8BC;'sSapReserved3'
 006838E2    mov         edx,68B3CC;'SapTypeStrings'
 006838E7    mov         eax,ebx
 006838E9    mov         edi,dword ptr [eax]
 006838EB    call        dword ptr [edi+4]
 006838EE    mov         edx,dword ptr [ebp-57C]
 006838F4    lea         eax,[esi+38]
 006838F7    call        @UStrAsg
 006838FC    push        0
 006838FE    lea         eax,[ebp-580]
 00683904    push        eax
 00683905    mov         ecx,68B8E4;'sSapReserved4'
 0068390A    mov         edx,68B3CC;'SapTypeStrings'
 0068390F    mov         eax,ebx
 00683911    mov         edi,dword ptr [eax]
 00683913    call        dword ptr [edi+4]
 00683916    mov         edx,dword ptr [ebp-580]
 0068391C    lea         eax,[esi+3C]
 0068391F    call        @UStrAsg
 00683924    push        68B90C;'AP200 Manual call point, indoor'
 00683929    lea         eax,[ebp-584]
 0068392F    push        eax
 00683930    mov         ecx,68B958;'sSapMcpIndoor'
 00683935    mov         edx,68B3CC;'SapTypeStrings'
 0068393A    mov         eax,ebx
 0068393C    mov         edi,dword ptr [eax]
 0068393E    call        dword ptr [edi+4]
 00683941    mov         edx,dword ptr [ebp-584]
 00683947    lea         eax,[esi+40]
 0068394A    call        @UStrAsg
 0068394F    push        68B980;'AP200 Manual call point, outdoor'
 00683954    lea         eax,[ebp-588]
 0068395A    push        eax
 0068395B    mov         ecx,68B9D0;'sSapMcpOutdoor'
 00683960    mov         edx,68B3CC;'SapTypeStrings'
 00683965    mov         eax,ebx
 00683967    mov         edi,dword ptr [eax]
 00683969    call        dword ptr [edi+4]
 0068396C    mov         edx,dword ptr [ebp-588]
 00683972    lea         eax,[esi+44]
 00683975    call        @UStrAsg
 0068397A    push        68B9FC;'AP200 Single input'
 0068397F    lea         eax,[ebp-58C]
 00683985    push        eax
 00683986    mov         ecx,68BA30;'sSap1In'
 0068398B    mov         edx,68B3CC;'SapTypeStrings'
 00683990    mov         eax,ebx
 00683992    mov         edi,dword ptr [eax]
 00683994    call        dword ptr [edi+4]
 00683997    mov         edx,dword ptr [ebp-58C]
 0068399D    lea         eax,[esi+48]
 006839A0    call        @UStrAsg
 006839A5    push        68BA4C;'AP200 Single input, micro'
 006839AA    lea         eax,[ebp-590]
 006839B0    push        eax
 006839B1    mov         ecx,68BA8C;'sSap1InMicro'
 006839B6    mov         edx,68B3CC;'SapTypeStrings'
 006839BB    mov         eax,ebx
 006839BD    mov         edi,dword ptr [eax]
 006839BF    call        dword ptr [edi+4]
 006839C2    mov         edx,dword ptr [ebp-590]
 006839C8    lea         eax,[esi+4C]
 006839CB    call        @UStrAsg
 006839D0    push        68BAB4;'AP200 Dual input'
 006839D5    lea         eax,[ebp-594]
 006839DB    push        eax
 006839DC    mov         ecx,68BAE4;'sSap2In'
 006839E1    mov         edx,68B3CC;'SapTypeStrings'
 006839E6    mov         eax,ebx
 006839E8    mov         edi,dword ptr [eax]
 006839EA    call        dword ptr [edi+4]
 006839ED    mov         edx,dword ptr [ebp-594]
 006839F3    lea         eax,[esi+50]
 006839F6    call        @UStrAsg
 006839FB    push        68BB00;'AP200 Dual input, single output'
 00683A00    lea         eax,[ebp-598]
 00683A06    push        eax
 00683A07    mov         ecx,68BB4C;'sSap2In1Out'
 00683A0C    mov         edx,68B3CC;'SapTypeStrings'
 00683A11    mov         eax,ebx
 00683A13    mov         edi,dword ptr [eax]
 00683A15    call        dword ptr [edi+4]
 00683A18    mov         edx,dword ptr [ebp-598]
 00683A1E    lea         eax,[esi+54]
 00683A21    call        @UStrAsg
 00683A26    push        68BB70;'AP200 Single output'
 00683A2B    lea         eax,[ebp-59C]
 00683A31    push        eax
 00683A32    mov         ecx,68BBA4;'sSap1Out'
 00683A37    mov         edx,68B3CC;'SapTypeStrings'
 00683A3C    mov         eax,ebx
 00683A3E    mov         edi,dword ptr [eax]
 00683A40    call        dword ptr [edi+4]
 00683A43    mov         edx,dword ptr [ebp-59C]
 00683A49    lea         eax,[esi+58]
 00683A4C    call        @UStrAsg
 00683A51    push        68BBC4;'AP200 Single output 240V'
 00683A56    lea         eax,[ebp-5A0]
 00683A5C    push        eax
 00683A5D    mov         ecx,68BC04;'sSap1Out240'
 00683A62    mov         edx,68B3CC;'SapTypeStrings'
 00683A67    mov         eax,ebx
 00683A69    mov         edi,dword ptr [eax]
 00683A6B    call        dword ptr [edi+4]
 00683A6E    mov         edx,dword ptr [ebp-5A0]
 00683A74    lea         eax,[esi+5C]
 00683A77    call        @UStrAsg
 00683A7C    push        68BC28;'AP200 Conventional Zone module'
 00683A81    lea         eax,[ebp-5A4]
 00683A87    push        eax
 00683A88    mov         ecx,68BC74;'sSapCZ'
 00683A8D    mov         edx,68B3CC;'SapTypeStrings'
 00683A92    mov         eax,ebx
 00683A94    mov         edi,dword ptr [eax]
 00683A96    call        dword ptr [edi+4]
 00683A99    mov         edx,dword ptr [ebp-5A4]
 00683A9F    lea         eax,[esi+60]
 00683AA2    call        @UStrAsg
 00683AA7    push        68BC90;'AP200 6 x clean contact output'
 00683AAC    lea         eax,[ebp-5A8]
 00683AB2    push        eax
 00683AB3    mov         ecx,68BCDC;'sSap6CCO'
 00683AB8    mov         edx,68B3CC;'SapTypeStrings'
 00683ABD    mov         eax,ebx
 00683ABF    mov         edi,dword ptr [eax]
 00683AC1    call        dword ptr [edi+4]
 00683AC4    mov         edx,dword ptr [ebp-5A8]
 00683ACA    lea         eax,[esi+64]
 00683ACD    call        @UStrAsg
 00683AD2    push        68BCFC;'AP200 6 x monitored relay output'
 00683AD7    lea         eax,[ebp-5AC]
 00683ADD    push        eax
 00683ADE    mov         ecx,68BD4C;'sSap6MRO'
 00683AE3    mov         edx,68B3CC;'SapTypeStrings'
 00683AE8    mov         eax,ebx
 00683AEA    mov         edi,dword ptr [eax]
 00683AEC    call        dword ptr [edi+4]
 00683AEF    mov         edx,dword ptr [ebp-5AC]
 00683AF5    lea         eax,[esi+68]
 00683AF8    call        @UStrAsg
 00683AFD    push        68BD6C;'AP200 10 x clean contact input'
 00683B02    lea         eax,[ebp-5B0]
 00683B08    push        eax
 00683B09    mov         ecx,68BDB8;'sSap10CCI'
 00683B0E    mov         edx,68B3CC;'SapTypeStrings'
 00683B13    mov         eax,ebx
 00683B15    mov         edi,dword ptr [eax]
 00683B17    call        dword ptr [edi+4]
 00683B1A    mov         edx,dword ptr [ebp-5B0]
 00683B20    lea         eax,[esi+6C]
 00683B23    call        @UStrAsg
 00683B28    push        68BDD8;'AP200 6 x Conventional Zone'
 00683B2D    lea         eax,[ebp-5B4]
 00683B33    push        eax
 00683B34    mov         ecx,68BE1C;'sSap6CZ'
 00683B39    mov         edx,68B3CC;'SapTypeStrings'
 00683B3E    mov         eax,ebx
 00683B40    mov         edi,dword ptr [eax]
 00683B42    call        dword ptr [edi+4]
 00683B45    mov         edx,dword ptr [ebp-5B4]
 00683B4B    lea         eax,[esi+70]
 00683B4E    call        @UStrAsg
 00683B53    push        68BE38;'AP200 Conv. Zone module, CZR'
 00683B58    lea         eax,[ebp-5B8]
 00683B5E    push        eax
 00683B5F    mov         ecx,68BE80;'sSapCZR'
 00683B64    mov         edx,68B3CC;'SapTypeStrings'
 00683B69    mov         eax,ebx
 00683B6B    mov         edi,dword ptr [eax]
 00683B6D    call        dword ptr [edi+4]
 00683B70    mov         edx,dword ptr [ebp-5B8]
 00683B76    lea         eax,[esi+74]
 00683B79    call        @UStrAsg
 00683B7E    push        68BE9C;'AP200 Single input, mini'
 00683B83    lea         eax,[ebp-5BC]
 00683B89    push        eax
 00683B8A    mov         ecx,68BEDC;'sSap1InMini'
 00683B8F    mov         edx,68B3CC;'SapTypeStrings'
 00683B94    mov         eax,ebx
 00683B96    mov         edi,dword ptr [eax]
 00683B98    call        dword ptr [edi+4]
 00683B9B    mov         edx,dword ptr [ebp-5BC]
 00683BA1    lea         eax,[esi+78]
 00683BA4    call        @UStrAsg
 00683BA9    push        0
 00683BAB    lea         eax,[ebp-5C0]
 00683BB1    push        eax
 00683BB2    mov         ecx,68BF00;'sSapReserved7'
 00683BB7    mov         edx,68B3CC;'SapTypeStrings'
 00683BBC    mov         eax,ebx
 00683BBE    mov         edi,dword ptr [eax]
 00683BC0    call        dword ptr [edi+4]
 00683BC3    mov         edx,dword ptr [ebp-5C0]
 00683BC9    lea         eax,[esi+7C]
 00683BCC    call        @UStrAsg
 00683BD1    push        68BF28;'AP200 Any type'
 00683BD6    lea         eax,[ebp-5C4]
 00683BDC    push        eax
 00683BDD    mov         ecx,68BF54;'sSapAny'
 00683BE2    mov         edx,68B3CC;'SapTypeStrings'
 00683BE7    mov         eax,ebx
 00683BE9    mov         edi,dword ptr [eax]
 00683BEB    call        dword ptr [edi+4]
 00683BEE    mov         edx,dword ptr [ebp-5C4]
 00683BF4    lea         eax,[esi+80]
 00683BFA    call        @UStrAsg
 00683BFF    push        68BF70;'AP200 Any type (virtual)'
 00683C04    lea         eax,[ebp-5C8]
 00683C0A    push        eax
 00683C0B    mov         ecx,68BFB0;'sSapAnyVirtual'
 00683C10    mov         edx,68B3CC;'SapTypeStrings'
 00683C15    mov         eax,ebx
 00683C17    mov         edi,dword ptr [eax]
 00683C19    call        dword ptr [edi+4]
 00683C1C    mov         edx,dword ptr [ebp-5C8]
 00683C22    lea         eax,[esi+84]
 00683C28    call        @UStrAsg
 00683C2D    push        68BFDC;'- AP200 input channel'
 00683C32    lea         eax,[ebp-5CC]
 00683C38    push        eax
 00683C39    mov         ecx,68C014;'sSapInChan'
 00683C3E    mov         edx,68B3CC;'SapTypeStrings'
 00683C43    mov         eax,ebx
 00683C45    mov         edi,dword ptr [eax]
 00683C47    call        dword ptr [edi+4]
 00683C4A    mov         edx,dword ptr [ebp-5CC]
 00683C50    lea         eax,[esi+88]
 00683C56    call        @UStrAsg
 00683C5B    push        68C038;'- AP200 output channel'
 00683C60    lea         eax,[ebp-5D0]
 00683C66    push        eax
 00683C67    mov         ecx,68C074;'sSapOutChan'
 00683C6C    mov         edx,68B3CC;'SapTypeStrings'
 00683C71    mov         eax,ebx
 00683C73    mov         edi,dword ptr [eax]
 00683C75    call        dword ptr [edi+4]
 00683C78    mov         edx,dword ptr [ebp-5D0]
 00683C7E    lea         eax,[esi+8C]
 00683C84    call        @UStrAsg
 00683C89    push        68C098;'- AP200 Conventional Zone channel'
 00683C8E    lea         eax,[ebp-5D4]
 00683C94    push        eax
 00683C95    mov         ecx,68C0E8;'sSapCzChan'
 00683C9A    mov         edx,68B3CC;'SapTypeStrings'
 00683C9F    mov         eax,ebx
 00683CA1    mov         edi,dword ptr [eax]
 00683CA3    call        dword ptr [edi+4]
 00683CA6    mov         edx,dword ptr [ebp-5D4]
 00683CAC    lea         eax,[esi+90]
 00683CB2    call        @UStrAsg
 00683CB7    push        68C10C;'Wall mounted sounder'
 00683CBC    lea         eax,[ebp-5D8]
 00683CC2    push        eax
 00683CC3    mov         ecx,68C144;'sSapWallSndr'
 00683CC8    mov         edx,68B3CC;'SapTypeStrings'
 00683CCD    mov         eax,ebx
 00683CCF    mov         edi,dword ptr [eax]
 00683CD1    call        dword ptr [edi+4]
 00683CD4    mov         edx,dword ptr [ebp-5D8]
 00683CDA    lea         eax,[esi+0A0]
 00683CE0    call        @UStrAsg
 00683CE5    push        68C16C;'Wall mounted sounder strobe'
 00683CEA    lea         eax,[ebp-5DC]
 00683CF0    push        eax
 00683CF1    mov         ecx,68C1B0;'sSapWallSndrStrobe'
 00683CF6    mov         edx,68B3CC;'SapTypeStrings'
 00683CFB    mov         eax,ebx
 00683CFD    mov         edi,dword ptr [eax]
 00683CFF    call        dword ptr [edi+4]
 00683D02    mov         edx,dword ptr [ebp-5DC]
 00683D08    lea         eax,[esi+0A4]
 00683D0E    call        @UStrAsg
 00683D13    push        68C1E4;'Wall mounted strobe'
 00683D18    lea         eax,[ebp-5E0]
 00683D1E    push        eax
 00683D1F    mov         ecx,68C218;'sSapWallStrobe'
 00683D24    mov         edx,68B3CC;'SapTypeStrings'
 00683D29    mov         eax,ebx
 00683D2B    mov         edi,dword ptr [eax]
 00683D2D    call        dword ptr [edi+4]
 00683D30    mov         edx,dword ptr [ebp-5E0]
 00683D36    lea         eax,[esi+0A8]
 00683D3C    call        @UStrAsg
 00683D41    push        68C244;'Detector base sounder'
 00683D46    lea         eax,[ebp-5E4]
 00683D4C    push        eax
 00683D4D    mov         ecx,68C27C;'sSapBaseSndr'
 00683D52    mov         edx,68B3CC;'SapTypeStrings'
 00683D57    mov         eax,ebx
 00683D59    mov         edi,dword ptr [eax]
 00683D5B    call        dword ptr [edi+4]
 00683D5E    mov         edx,dword ptr [ebp-5E4]
 00683D64    lea         eax,[esi+0AC]
 00683D6A    call        @UStrAsg
 00683D6F    push        68C2A4;'Detector base sounder strobe'
 00683D74    lea         eax,[ebp-5E8]
 00683D7A    push        eax
 00683D7B    mov         ecx,68C2EC;'sSapBaseSndrStrobe'
 00683D80    mov         edx,68B3CC;'SapTypeStrings'
 00683D85    mov         eax,ebx
 00683D87    mov         edi,dword ptr [eax]
 00683D89    call        dword ptr [edi+4]
 00683D8C    mov         edx,dword ptr [ebp-5E8]
 00683D92    lea         eax,[esi+0B0]
 00683D98    call        @UStrAsg
 00683D9D    push        684848;'Not in use'
 00683DA2    lea         eax,[ebp-5EC]
 00683DA8    push        eax
 00683DA9    mov         ecx,68C320;'sSapSysNotUsed'
 00683DAE    mov         edx,68B3CC;'SapTypeStrings'
 00683DB3    mov         eax,ebx
 00683DB5    mov         esi,dword ptr [eax]
 00683DB7    call        dword ptr [esi+4]
 00683DBA    mov         edx,dword ptr [ebp-5EC]
 00683DC0    mov         eax,7C19A4;^'Not in use'
 00683DC5    call        @UStrAsg
 00683DCA    push        68C34C;'S200 Ionizating sensor'
 00683DCF    lea         eax,[ebp-5F0]
 00683DD5    push        eax
 00683DD6    mov         ecx,68C388;'sSapSysIon'
 00683DDB    mov         edx,68B3CC;'SapTypeStrings'
 00683DE0    mov         eax,ebx
 00683DE2    mov         esi,dword ptr [eax]
 00683DE4    call        dword ptr [esi+4]
 00683DE7    mov         edx,dword ptr [ebp-5F0]
 00683DED    mov         eax,7C19A8;^'S200 Ionizating sensor'
 00683DF2    call        @UStrAsg
 00683DF7    push        68C3AC;'S200 Optical sensor'
 00683DFC    lea         eax,[ebp-5F4]
 00683E02    push        eax
 00683E03    mov         ecx,68C3E0;'sSapSysOpt'
 00683E08    mov         edx,68B3CC;'SapTypeStrings'
 00683E0D    mov         eax,ebx
 00683E0F    mov         esi,dword ptr [eax]
 00683E11    call        dword ptr [esi+4]
 00683E14    mov         edx,dword ptr [ebp-5F4]
 00683E1A    mov         eax,7C19AC;^'S200 Optical sensor'
 00683E1F    call        @UStrAsg
 00683E24    push        68C404;'S200 Heat sensor'
 00683E29    lea         eax,[ebp-5F8]
 00683E2F    push        eax
 00683E30    mov         ecx,68C434;'sSapSysHeat'
 00683E35    mov         edx,68B3CC;'SapTypeStrings'
 00683E3A    mov         eax,ebx
 00683E3C    mov         esi,dword ptr [eax]
 00683E3E    call        dword ptr [esi+4]
 00683E41    mov         edx,dword ptr [ebp-5F8]
 00683E47    mov         eax,7C19B0;^'S200 Heat sensor'
 00683E4C    call        @UStrAsg
 00683E51    push        68C458;'S200 Monitor module'
 00683E56    lea         eax,[ebp-5FC]
 00683E5C    push        eax
 00683E5D    mov         ecx,68C48C;'sSapSysInput'
 00683E62    mov         edx,68B3CC;'SapTypeStrings'
 00683E67    mov         eax,ebx
 00683E69    mov         esi,dword ptr [eax]
 00683E6B    call        dword ptr [esi+4]
 00683E6E    mov         edx,dword ptr [ebp-5FC]
 00683E74    mov         eax,7C19B4;^'S200 Monitor module'
 00683E79    call        @UStrAsg
 00683E7E    push        68C4B4;'S200 Control module'
 00683E83    lea         eax,[ebp-600]
 00683E89    push        eax
 00683E8A    mov         ecx,68C4E8;'sSapSysOutput'
 00683E8F    mov         edx,68B3CC;'SapTypeStrings'
 00683E94    mov         eax,ebx
 00683E96    mov         esi,dword ptr [eax]
 00683E98    call        dword ptr [esi+4]
 00683E9B    mov         edx,dword ptr [ebp-600]
 00683EA1    mov         eax,7C19B8;^'S200 Control module'
 00683EA6    call        @UStrAsg
 00683EAB    push        68C510;'S200 Conventional Zone'
 00683EB0    lea         eax,[ebp-604]
 00683EB6    push        eax
 00683EB7    mov         ecx,68C54C;'sSapSysConv'
 00683EBC    mov         edx,68B3CC;'SapTypeStrings'
 00683EC1    mov         eax,ebx
 00683EC3    mov         esi,dword ptr [eax]
 00683EC5    call        dword ptr [esi+4]
 00683EC8    mov         edx,dword ptr [ebp-604]
 00683ECE    mov         eax,7C19BC;^'S200 Conventional Zone'
 00683ED3    call        @UStrAsg
 00683ED8    push        68C570;'S200 Any type'
 00683EDD    lea         eax,[ebp-608]
 00683EE3    push        eax
 00683EE4    mov         ecx,68C598;'sSapSysAny'
 00683EE9    mov         edx,68B3CC;'SapTypeStrings'
 00683EEE    mov         eax,ebx
 00683EF0    mov         esi,dword ptr [eax]
 00683EF2    call        dword ptr [esi+4]
 00683EF5    mov         edx,dword ptr [ebp-608]
 00683EFB    mov         eax,7C19C0;^'S200 Any type'
 00683F00    call        @UStrAsg
 00683F05    push        68C5BC;'*Invalid* selection (Omni)'
 00683F0A    lea         eax,[ebp-60C]
 00683F10    push        eax
 00683F11    mov         ecx,68C600;'sSapSysOmni'
 00683F16    mov         edx,68B3CC;'SapTypeStrings'
 00683F1B    mov         eax,ebx
 00683F1D    mov         esi,dword ptr [eax]
 00683F1F    call        dword ptr [esi+4]
 00683F22    mov         edx,dword ptr [ebp-60C]
 00683F28    mov         eax,7C19C4;^'*Invalid* selection (Omni)'
 00683F2D    call        @UStrAsg
 00683F32    push        68C624;'S200 Laser LZR-1'
 00683F37    lea         eax,[ebp-610]
 00683F3D    push        eax
 00683F3E    mov         ecx,68C654;'sSapSysLaser1'
 00683F43    mov         edx,68B3CC;'SapTypeStrings'
 00683F48    mov         eax,ebx
 00683F4A    mov         esi,dword ptr [eax]
 00683F4C    call        dword ptr [esi+4]
 00683F4F    mov         edx,dword ptr [ebp-610]
 00683F55    mov         eax,7C19C8;^'S200 Laser LZR-1'
 00683F5A    call        @UStrAsg
 00683F5F    push        68C67C;'S200 Laser 7251'
 00683F64    lea         eax,[ebp-614]
 00683F6A    push        eax
 00683F6B    mov         ecx,68C6A8;'sSapSysLaser2'
 00683F70    mov         edx,68B3CC;'SapTypeStrings'
 00683F75    mov         eax,ebx
 00683F77    mov         esi,dword ptr [eax]
 00683F79    call        dword ptr [esi+4]
 00683F7C    mov         edx,dword ptr [ebp-614]
 00683F82    mov         eax,7C19CC;^'S200 Laser 7251'
 00683F87    call        @UStrAsg
 00683F8C    push        68C6D0;'S200 Multicr. sensor'
 00683F91    lea         eax,[ebp-618]
 00683F97    push        eax
 00683F98    mov         ecx,68C708;'sSapSysMulti'
 00683F9D    mov         edx,68B3CC;'SapTypeStrings'
 00683FA2    mov         eax,ebx
 00683FA4    mov         esi,dword ptr [eax]
 00683FA6    call        dword ptr [esi+4]
 00683FA9    mov         edx,dword ptr [ebp-618]
 00683FAF    mov         eax,7C19D0;^'S200 Multicr. sensor'
 00683FB4    call        @UStrAsg
 00683FB9    push        68C730;'S200 Any (virtual)'
 00683FBE    lea         eax,[ebp-61C]
 00683FC4    push        eax
 00683FC5    mov         ecx,68C764;'sSapSysAnyVirtual'
 00683FCA    mov         edx,68B3CC;'SapTypeStrings'
 00683FCF    mov         eax,ebx
 00683FD1    mov         esi,dword ptr [eax]
 00683FD3    call        dword ptr [esi+4]
 00683FD6    mov         edx,dword ptr [ebp-61C]
 00683FDC    mov         eax,7C19D4;^'S200 Any (virtual)'
 00683FE1    call        @UStrAsg
 00683FE6    push        68C794;'S200 Four crit. sensor'
 00683FEB    lea         eax,[ebp-620]
 00683FF1    push        eax
 00683FF2    mov         ecx,68C7D0;'sSapSysCoptir'
 00683FF7    mov         edx,68B3CC;'SapTypeStrings'
 00683FFC    mov         eax,ebx
 00683FFE    mov         esi,dword ptr [eax]
 00684000    call        dword ptr [esi+4]
 00684003    mov         edx,dword ptr [ebp-620]
 00684009    mov         eax,7C19D8;^'S200 Four crit. sensor'
 0068400E    call        @UStrAsg
 00684013    push        68C7F8;'S200 Three crit. sensor'
 00684018    lea         eax,[ebp-624]
 0068401E    push        eax
 0068401F    mov         ecx,68C834;'sSapSysPtir'
 00684024    mov         edx,68B3CC;'SapTypeStrings'
 00684029    mov         eax,ebx
 0068402B    mov         esi,dword ptr [eax]
 0068402D    call        dword ptr [esi+4]
 00684030    mov         edx,dword ptr [ebp-624]
 00684036    mov         eax,7C19DC;^'S200 Three crit. sensor'
 0068403B    call        @UStrAsg
 00684040    push        68C858;'S200 Beam sensor'
 00684045    lea         eax,[ebp-628]
 0068404B    push        eax
 0068404C    mov         ecx,68C888;'sSapSysBeam'
 00684051    mov         edx,68B3CC;'SapTypeStrings'
 00684056    mov         eax,ebx
 00684058    mov         esi,dword ptr [eax]
 0068405A    call        dword ptr [esi+4]
 0068405D    mov         edx,dword ptr [ebp-628]
 00684063    mov         eax,7C19E0;^'S200 Beam sensor'
 00684068    call        @UStrAsg
 0068406D    push        684848;'Not in use'
 00684072    lea         eax,[ebp-62C]
 00684078    push        eax
 00684079    mov         ecx,68A518;'sInpNotInUse'
 0068407E    mov         edx,685C38;'InpFuncStrings'
 00684083    mov         eax,ebx
 00684085    mov         esi,dword ptr [eax]
 00684087    call        dword ptr [esi+4]
 0068408A    mov         edx,dword ptr [ebp-62C]
 00684090    mov         eax,7C1A44;^'Not in use'
 00684095    call        @UStrAsg
 0068409A    push        68A540;'Manual Call Point'
 0068409F    lea         eax,[ebp-630]
 006840A5    push        eax
 006840A6    mov         ecx,68A570;'sInpMCP'
 006840AB    mov         edx,685C38;'InpFuncStrings'
 006840B0    mov         eax,ebx
 006840B2    mov         esi,dword ptr [eax]
 006840B4    call        dword ptr [esi+4]
 006840B7    mov         edx,dword ptr [ebp-630]
 006840BD    mov         eax,7C1A48;^'Manual Call Point'
 006840C2    call        @UStrAsg
 006840C7    push        68A58C;'Beam detector'
 006840CC    lea         eax,[ebp-634]
 006840D2    push        eax
 006840D3    mov         ecx,68A5B4;'sInpConvBeamDet'
 006840D8    mov         edx,685C38;'InpFuncStrings'
 006840DD    mov         eax,ebx
 006840DF    mov         esi,dword ptr [eax]
 006840E1    call        dword ptr [esi+4]
 006840E4    mov         edx,dword ptr [ebp-634]
 006840EA    mov         eax,7C1A4C;^'Beam detector'
 006840EF    call        @UStrAsg
 006840F4    push        68A5E0;'Conv. Heat Detector'
 006840F9    lea         eax,[ebp-638]
 006840FF    push        eax
 00684100    mov         ecx,68A614;'sInpConvHeatDet'
 00684105    mov         edx,685C38;'InpFuncStrings'
 0068410A    mov         eax,ebx
 0068410C    mov         esi,dword ptr [eax]
 0068410E    call        dword ptr [esi+4]
 00684111    mov         edx,dword ptr [ebp-638]
 00684117    mov         eax,7C1A50;^'Conv. Heat Detector'
 0068411C    call        @UStrAsg
 00684121    push        68A640;'Fire Alarm Input'
 00684126    lea         eax,[ebp-63C]
 0068412C    push        eax
 0068412D    mov         ecx,68A670;'sInpFireAlarm'
 00684132    mov         edx,685C38;'InpFuncStrings'
 00684137    mov         eax,ebx
 00684139    mov         esi,dword ptr [eax]
 0068413B    call        dword ptr [esi+4]
 0068413E    mov         edx,dword ptr [ebp-63C]
 00684144    mov         eax,7C1A54;^'Fire Alarm Input'
 00684149    call        @UStrAsg
 0068414E    push        68A698;'Prealarm Input'
 00684153    lea         eax,[ebp-640]
 00684159    push        eax
 0068415A    mov         ecx,68A6C4;'sInpPrewarning'
 0068415F    mov         edx,685C38;'InpFuncStrings'
 00684164    mov         eax,ebx
 00684166    mov         esi,dword ptr [eax]
 00684168    call        dword ptr [esi+4]
 0068416B    mov         edx,dword ptr [ebp-640]
 00684171    mov         eax,7C1A58;^'Prealarm Input'
 00684176    call        @UStrAsg
 0068417B    push        68A6F0;'Fault Warning Input'
 00684180    lea         eax,[ebp-644]
 00684186    push        eax
 00684187    mov         ecx,68A724;'sInpFaultWarning'
 0068418C    mov         edx,685C38;'InpFuncStrings'
 00684191    mov         eax,ebx
 00684193    mov         esi,dword ptr [eax]
 00684195    call        dword ptr [esi+4]
 00684198    mov         edx,dword ptr [ebp-644]
 0068419E    mov         eax,7C1A5C;^'Fault Warning Input'
 006841A3    call        @UStrAsg
 006841A8    push        68A754;'Maintenance Input'
 006841AD    lea         eax,[ebp-648]
 006841B3    push        eax
 006841B4    mov         ecx,68A784;'sInpMaintWarning'
 006841B9    mov         edx,685C38;'InpFuncStrings'
 006841BE    mov         eax,ebx
 006841C0    mov         esi,dword ptr [eax]
 006841C2    call        dword ptr [esi+4]
 006841C5    mov         edx,dword ptr [ebp-648]
 006841CB    mov         eax,7C1A60;^'Maintenance Input'
 006841D0    call        @UStrAsg
 006841D5    push        68A7B4;'Technical Alarm Input'
 006841DA    lea         eax,[ebp-64C]
 006841E0    push        eax
 006841E1    mov         ecx,68A7EC;'sInpTechAlarm'
 006841E6    mov         edx,685C38;'InpFuncStrings'
 006841EB    mov         eax,ebx
 006841ED    mov         esi,dword ptr [eax]
 006841EF    call        dword ptr [esi+4]
 006841F2    mov         edx,dword ptr [ebp-64C]
 006841F8    mov         eax,7C1A64;^'Technical Alarm Input'
 006841FD    call        @UStrAsg
 00684202    push        68A814;'Silent Tech Alarm Input'
 00684207    lea         eax,[ebp-650]
 0068420D    push        eax
 0068420E    mov         ecx,68A850;'sInpSilentTechAlarm'
 00684213    mov         edx,685C38;'InpFuncStrings'
 00684218    mov         eax,ebx
 0068421A    mov         esi,dword ptr [eax]
 0068421C    call        dword ptr [esi+4]
 0068421F    mov         edx,dword ptr [ebp-650]
 00684225    mov         eax,7C1A68;^'Silent Tech Alarm Input'
 0068422A    call        @UStrAsg
 0068422F    push        68A884;'Zone Disablement Input'
 00684234    lea         eax,[ebp-654]
 0068423A    push        eax
 0068423B    mov         ecx,68A8C0;'sInpZoneDisable'
 00684240    mov         edx,685C38;'InpFuncStrings'
 00684245    mov         eax,ebx
 00684247    mov         esi,dword ptr [eax]
 00684249    call        dword ptr [esi+4]
 0068424C    mov         edx,dword ptr [ebp-654]
 00684252    mov         eax,7C1A6C;^'Zone Disablement Input'
 00684257    call        @UStrAsg
 0068425C    push        68A8EC;'Day Mode Activation Inp.'
 00684261    lea         eax,[ebp-658]
 00684267    push        eax
 00684268    mov         ecx,68A92C;'sInpDayMode'
 0068426D    mov         edx,685C38;'InpFuncStrings'
 00684272    mov         eax,ebx
 00684274    mov         esi,dword ptr [eax]
 00684276    call        dword ptr [esi+4]
 00684279    mov         edx,dword ptr [ebp-658]
 0068427F    mov         eax,7C1A70;^'Day Mode Activation Inp.'
 00684284    call        @UStrAsg
 00684289    push        68A950;'Delayed Alarm Enable Inp'
 0068428E    lea         eax,[ebp-65C]
 00684294    push        eax
 00684295    mov         ecx,68A990;'sInpDelAlrmEnable'
 0068429A    mov         edx,685C38;'InpFuncStrings'
 0068429F    mov         eax,ebx
 006842A1    mov         esi,dword ptr [eax]
 006842A3    call        dword ptr [esi+4]
 006842A6    mov         edx,dword ptr [ebp-65C]
 006842AC    mov         eax,7C1A74;^'Delayed Alarm Enable Inp'
 006842B1    call        @UStrAsg
 006842B6    push        68A9C0;'Day M. and Del. Al. En.'
 006842BB    lea         eax,[ebp-660]
 006842C1    push        eax
 006842C2    mov         ecx,68A9FC;'sInpDayAndDelEnable'
 006842C7    mov         edx,685C38;'InpFuncStrings'
 006842CC    mov         eax,ebx
 006842CE    mov         esi,dword ptr [eax]
 006842D0    call        dword ptr [esi+4]
 006842D3    mov         edx,dword ptr [ebp-660]
 006842D9    mov         eax,7C1A78;^'Day M. and Del. Al. En.'
 006842DE    call        @UStrAsg
 006842E3    push        68AA30;'Delayed Alarm Zonal Sil.'
 006842E8    lea         eax,[ebp-664]
 006842EE    push        eax
 006842EF    mov         ecx,68AA70;'sInpDelAlarmZonalSil'
 006842F4    mov         edx,685C38;'InpFuncStrings'
 006842F9    mov         eax,ebx
 006842FB    mov         esi,dword ptr [eax]
 006842FD    call        dword ptr [esi+4]
 00684300    mov         edx,dword ptr [ebp-664]
 00684306    mov         eax,7C1A7C;^'Delayed Alarm Zonal Sil.'
 0068430B    call        @UStrAsg
 00684310    push        68AAA8;'Delayed Alarm Zonal Res.'
 00684315    lea         eax,[ebp-668]
 0068431B    push        eax
 0068431C    mov         ecx,68AAE8;'sInpDelAlarmZonalRes'
 00684321    mov         edx,685C38;'InpFuncStrings'
 00684326    mov         eax,ebx
 00684328    mov         esi,dword ptr [eax]
 0068432A    call        dword ptr [esi+4]
 0068432D    mov         edx,dword ptr [ebp-668]
 00684333    mov         eax,7C1A80;^'Delayed Alarm Zonal Res.'
 00684338    call        @UStrAsg
 0068433D    push        68AB20;'General Silence Input'
 00684342    lea         eax,[ebp-66C]
 00684348    push        eax
 00684349    mov         ecx,68AB58;'sInpGeneralSilence'
 0068434E    mov         edx,685C38;'InpFuncStrings'
 00684353    mov         eax,ebx
 00684355    mov         esi,dword ptr [eax]
 00684357    call        dword ptr [esi+4]
 0068435A    mov         edx,dword ptr [ebp-66C]
 00684360    mov         eax,7C1A84;^'General Silence Input'
 00684365    call        @UStrAsg
 0068436A    push        68AB8C;'General Reset Input'
 0068436F    lea         eax,[ebp-670]
 00684375    push        eax
 00684376    mov         ecx,68ABC0;'sInpGeneralReset'
 0068437B    mov         edx,685C38;'InpFuncStrings'
 00684380    mov         eax,ebx
 00684382    mov         esi,dword ptr [eax]
 00684384    call        dword ptr [esi+4]
 00684387    mov         edx,dword ptr [ebp-670]
 0068438D    mov         eax,7C1A88;^'General Reset Input'
 00684392    call        @UStrAsg
 00684397    push        68ABF0;'Extinguisher Activated'
 0068439C    lea         eax,[ebp-674]
 006843A2    push        eax
 006843A3    mov         ecx,68AC2C;'sInpExtingActiv'
 006843A8    mov         edx,685C38;'InpFuncStrings'
 006843AD    mov         eax,ebx
 006843AF    mov         esi,dword ptr [eax]
 006843B1    call        dword ptr [esi+4]
 006843B4    mov         edx,dword ptr [ebp-674]
 006843BA    mov         eax,7C1A8C;^'Extinguisher Activated'
 006843BF    call        @UStrAsg
 006843C4    push        68AC58;'Smokeventil. Activated'
 006843C9    lea         eax,[ebp-678]
 006843CF    push        eax
 006843D0    mov         ecx,68AC94;'sInpSmokeVentActiv'
 006843D5    mov         edx,685C38;'InpFuncStrings'
 006843DA    mov         eax,ebx
 006843DC    mov         esi,dword ptr [eax]
 006843DE    call        dword ptr [esi+4]
 006843E1    mov         edx,dword ptr [ebp-678]
 006843E7    mov         eax,7C1A90;^'Smokeventil. Activated'
 006843EC    call        @UStrAsg
 006843F1    push        68ACC8;'Custom. LED 1 Activation'
 006843F6    lea         eax,[ebp-67C]
 006843FC    push        eax
 006843FD    mov         ecx,68AD08;'sInpCustLED1Activ'
 00684402    mov         edx,685C38;'InpFuncStrings'
 00684407    mov         eax,ebx
 00684409    mov         esi,dword ptr [eax]
 0068440B    call        dword ptr [esi+4]
 0068440E    mov         edx,dword ptr [ebp-67C]
 00684414    mov         eax,7C1A94;^'Custom. LED 1 Activation'
 00684419    call        @UStrAsg
 0068441E    push        68AD38;'Custom. LED 2 Activation'
 00684423    lea         eax,[ebp-680]
 00684429    push        eax
 0068442A    mov         ecx,68AD78;'sInpCustLED2Activ'
 0068442F    mov         edx,685C38;'InpFuncStrings'
 00684434    mov         eax,ebx
 00684436    mov         esi,dword ptr [eax]
 00684438    call        dword ptr [esi+4]
 0068443B    mov         edx,dword ptr [ebp-680]
 00684441    mov         eax,7C1A98;^'Custom. LED 2 Activation'
 00684446    call        @UStrAsg
 0068444B    push        68ADA8;'Internal Logic Input'
 00684450    lea         eax,[ebp-684]
 00684456    push        eax
 00684457    mov         ecx,68ADE0;'sInpInternalLogic'
 0068445C    mov         edx,685C38;'InpFuncStrings'
 00684461    mov         eax,ebx
 00684463    mov         esi,dword ptr [eax]
 00684465    call        dword ptr [esi+4]
 00684468    mov         edx,dword ptr [ebp-684]
 0068446E    mov         eax,7C1A9C;^'Internal Logic Input'
 00684473    call        @UStrAsg
 00684478    push        68AE10;'External Logic Input'
 0068447D    lea         eax,[ebp-688]
 00684483    push        eax
 00684484    mov         ecx,68AE48;'sInpExternalLogic'
 00684489    mov         edx,685C38;'InpFuncStrings'
 0068448E    mov         eax,ebx
 00684490    mov         esi,dword ptr [eax]
 00684492    call        dword ptr [esi+4]
 00684495    mov         edx,dword ptr [ebp-688]
 0068449B    mov         eax,7C1AA0;^'External Logic Input'
 006844A0    call        @UStrAsg
 006844A5    push        68AE78;'Evacuation Input'
 006844AA    lea         eax,[ebp-68C]
 006844B0    push        eax
 006844B1    mov         ecx,68AEA8;'sInpEvacuation'
 006844B6    mov         edx,685C38;'InpFuncStrings'
 006844BB    mov         eax,ebx
 006844BD    mov         esi,dword ptr [eax]
 006844BF    call        dword ptr [esi+4]
 006844C2    mov         edx,dword ptr [ebp-68C]
 006844C8    mov         eax,7C1AA4;^'Evacuation Input'
 006844CD    call        @UStrAsg
 006844D2    push        68AED4;'Extinguisher Fault Input'
 006844D7    lea         eax,[ebp-690]
 006844DD    push        eax
 006844DE    mov         ecx,68AF14;'sInpExtingFault'
 006844E3    mov         edx,685C38;'InpFuncStrings'
 006844E8    mov         eax,ebx
 006844EA    mov         esi,dword ptr [eax]
 006844EC    call        dword ptr [esi+4]
 006844EF    mov         edx,dword ptr [ebp-690]
 006844F5    mov         eax,7C1AA8;^'Extinguisher Fault Input'
 006844FA    call        @UStrAsg
 006844FF    push        68AF40;'Fire alarm device mute input'
 00684504    lea         eax,[ebp-694]
 0068450A    push        eax
 0068450B    mov         ecx,68AF88;'sInpAlarmDeviceMute'
 00684510    mov         edx,685C38;'InpFuncStrings'
 00684515    mov         eax,ebx
 00684517    mov         esi,dword ptr [eax]
 00684519    call        dword ptr [esi+4]
 0068451C    mov         edx,dword ptr [ebp-694]
 00684522    mov         eax,7C1AAC;^'Fire alarm device mute input'
 00684527    call        @UStrAsg
 0068452C    push        68AFBC;'Local day mode activation input'
 00684531    lea         eax,[ebp-698]
 00684537    push        eax
 00684538    mov         ecx,68B008;'sInpLocDayMode'
 0068453D    mov         edx,685C38;'InpFuncStrings'
 00684542    mov         eax,ebx
 00684544    mov         esi,dword ptr [eax]
 00684546    call        dword ptr [esi+4]
 00684549    mov         edx,dword ptr [ebp-698]
 0068454F    mov         eax,7C1AB0;^'Local day mode activation input'
 00684554    call        @UStrAsg
 00684559    push        68B034;'Local delayed alarm enable input'
 0068455E    lea         eax,[ebp-69C]
 00684564    push        eax
 00684565    mov         ecx,68B084;'sInpLocDelAlarmEnable'
 0068456A    mov         edx,685C38;'InpFuncStrings'
 0068456F    mov         eax,ebx
 00684571    mov         esi,dword ptr [eax]
 00684573    call        dword ptr [esi+4]
 00684576    mov         edx,dword ptr [ebp-69C]
 0068457C    mov         eax,7C1AB4;^'Local delayed alarm enable input'
 00684581    call        @UStrAsg
 00684586    push        68B0BC;'Local day mode and delayed alarm enable'
 0068458B    lea         eax,[ebp-6A0]
 00684591    push        eax
 00684592    mov         ecx,68B118;'sInpLocDayAndDelEnable'
 00684597    mov         edx,685C38;'InpFuncStrings'
 0068459C    mov         eax,ebx
 0068459E    mov         esi,dword ptr [eax]
 006845A0    call        dword ptr [esi+4]
 006845A3    mov         edx,dword ptr [ebp-6A0]
 006845A9    mov         eax,7C1AB8;^'Local day mode and delayed alarm enable'
 006845AE    call        @UStrAsg
 006845B3    push        68B154;'Local fire alarm device mute input'
 006845B8    lea         eax,[ebp-6A4]
 006845BE    push        eax
 006845BF    mov         ecx,68B1A8;'sInpLocAlarmDeviceMute'
 006845C4    mov         edx,685C38;'InpFuncStrings'
 006845C9    mov         eax,ebx
 006845CB    mov         esi,dword ptr [eax]
 006845CD    call        dword ptr [esi+4]
 006845D0    mov         edx,dword ptr [ebp-6A4]
 006845D6    mov         eax,7C1ABC;^'Local fire alarm device mute input'
 006845DB    call        @UStrAsg
 006845E0    push        68B1E4;'Local evacuation input'
 006845E5    lea         eax,[ebp-6A8]
 006845EB    push        eax
 006845EC    mov         ecx,68B220;'sInpLocEvacuation'
 006845F1    mov         edx,685C38;'InpFuncStrings'
 006845F6    mov         eax,ebx
 006845F8    mov         esi,dword ptr [eax]
 006845FA    call        dword ptr [esi+4]
 006845FD    mov         edx,dword ptr [ebp-6A8]
 00684603    mov         eax,7C1AC0;^'Local evacuation input'
 00684608    call        @UStrAsg
 0068460D    push        68B250;'Voice Evacuation Fault Input'
 00684612    lea         eax,[ebp-6AC]
 00684618    push        eax
 00684619    mov         ecx,68B298;'sInpEvacuationFault'
 0068461E    mov         edx,685C38;'InpFuncStrings'
 00684623    mov         eax,ebx
 00684625    mov         esi,dword ptr [eax]
 00684627    call        dword ptr [esi+4]
 0068462A    mov         edx,dword ptr [ebp-6AC]
 00684630    mov         eax,7C1AC4;^'Voice Evacuation Fault Input'
 00684635    call        @UStrAsg
 0068463A    push        685ED8;'Normal'
 0068463F    lea         eax,[ebp-6B0]
 00684645    push        eax
 00684646    mov         ecx,68C8AC;'sSapEnvGeneral'
 0068464B    mov         edx,68C8D8;'SapEnvStrings'
 00684650    mov         eax,ebx
 00684652    mov         esi,dword ptr [eax]
 00684654    call        dword ptr [esi+4]
 00684657    mov         edx,dword ptr [ebp-6B0]
 0068465D    mov         eax,7C2384;^'Normal'
 00684662    call        @UStrAsg
 00684667    push        68C900;'Env 0'
 0068466C    lea         eax,[ebp-6B4]
 00684672    push        eax
 00684673    mov         ecx,68C918;'sSapEnv1'
 00684678    mov         edx,68C8D8;'SapEnvStrings'
 0068467D    mov         eax,ebx
 0068467F    mov         esi,dword ptr [eax]
 00684681    call        dword ptr [esi+4]
 00684684    mov         edx,dword ptr [ebp-6B4]
 0068468A    mov         eax,7C2388;^'Env 0'
 0068468F    call        @UStrAsg
 00684694    push        68C938;'Env 1'
 00684699    lea         eax,[ebp-6B8]
 0068469F    push        eax
 006846A0    mov         ecx,68C950;'sSapEnv2'
 006846A5    mov         edx,68C8D8;'SapEnvStrings'
 006846AA    mov         eax,ebx
 006846AC    mov         esi,dword ptr [eax]
 006846AE    call        dword ptr [esi+4]
 006846B1    mov         edx,dword ptr [ebp-6B8]
 006846B7    mov         eax,7C238C;^'Env 1'
 006846BC    call        @UStrAsg
 006846C1    push        68C970;'Env 2'
 006846C6    lea         eax,[ebp-6BC]
 006846CC    push        eax
 006846CD    mov         ecx,68C988;'sSapEnv3'
 006846D2    mov         edx,68C8D8;'SapEnvStrings'
 006846D7    mov         eax,ebx
 006846D9    mov         esi,dword ptr [eax]
 006846DB    call        dword ptr [esi+4]
 006846DE    mov         edx,dword ptr [ebp-6BC]
 006846E4    mov         eax,7C2390;^'Env 2'
 006846E9    call        @UStrAsg
 006846EE    push        68C9A8;'Env 3'
 006846F3    lea         eax,[ebp-6C0]
 006846F9    push        eax
 006846FA    mov         ecx,68C9C0;'sSapEnv4'
 006846FF    mov         edx,68C8D8;'SapEnvStrings'
 00684704    mov         eax,ebx
 00684706    mov         esi,dword ptr [eax]
 00684708    call        dword ptr [esi+4]
 0068470B    mov         edx,dword ptr [ebp-6C0]
 00684711    mov         eax,7C2394;^'Env 3'
 00684716    call        @UStrAsg
 0068471B    push        68C9E0;'Env 4'
 00684720    lea         eax,[ebp-6C4]
 00684726    push        eax
 00684727    mov         ecx,68C9F8;'sSapEnv5'
 0068472C    mov         edx,68C8D8;'SapEnvStrings'
 00684731    mov         eax,ebx
 00684733    mov         esi,dword ptr [eax]
 00684735    call        dword ptr [esi+4]
 00684738    mov         edx,dword ptr [ebp-6C4]
 0068473E    mov         eax,7C2398;^'Env 4'
 00684743    call        @UStrAsg
 00684748    push        68CA18;'Env 5'
 0068474D    lea         eax,[ebp-6C8]
 00684753    push        eax
 00684754    mov         ecx,68CA30;'sSapEnv6'
 00684759    mov         edx,68C8D8;'SapEnvStrings'
 0068475E    mov         eax,ebx
 00684760    mov         esi,dword ptr [eax]
 00684762    call        dword ptr [esi+4]
 00684765    mov         edx,dword ptr [ebp-6C8]
 0068476B    mov         eax,7C239C;^'Env 5'
 00684770    call        @UStrAsg
 00684775    push        68CA50;'Env 6'
 0068477A    lea         eax,[ebp-6CC]
 00684780    push        eax
 00684781    mov         ecx,68CA68;'sSapEnv7'
 00684786    mov         edx,68C8D8;'SapEnvStrings'
 0068478B    mov         eax,ebx
 0068478D    mov         esi,dword ptr [eax]
 0068478F    call        dword ptr [esi+4]
 00684792    mov         edx,dword ptr [ebp-6CC]
 00684798    mov         eax,7C23A0;^'Env 6'
 0068479D    call        @UStrAsg
 006847A2    push        68CA88;'Env 7'
 006847A7    lea         eax,[ebp-6D0]
 006847AD    push        eax
 006847AE    mov         ecx,68CAA0;'sSapEnv8'
 006847B3    mov         edx,68C8D8;'SapEnvStrings'
 006847B8    mov         eax,ebx
 006847BA    mov         ebx,dword ptr [eax]
 006847BC    call        dword ptr [ebx+4]
 006847BF    mov         edx,dword ptr [ebp-6D0]
 006847C5    mov         eax,7C23A4;^'Env 7'
 006847CA    call        @UStrAsg
 006847CF    xor         eax,eax
 006847D1    pop         edx
 006847D2    pop         ecx
 006847D3    pop         ecx
 006847D4    mov         dword ptr fs:[eax],edx
 006847D7    push        684834
 006847DC    lea         eax,[ebp-6D0]
 006847E2    mov         edx,64
 006847E7    call        @UStrArrayClr
 006847EC    lea         eax,[ebp-540]
 006847F2    mov         edx,64
 006847F7    call        @UStrArrayClr
 006847FC    lea         eax,[ebp-3B0]
 00684802    mov         edx,64
 00684807    call        @UStrArrayClr
 0068480C    lea         eax,[ebp-220]
 00684812    mov         edx,64
 00684817    call        @UStrArrayClr
 0068481C    lea         eax,[ebp-90]
 00684822    mov         edx,24
 00684827    call        @UStrArrayClr
 0068482C    ret
>0068482D    jmp         @HandleFinally
>00684832    jmp         006847DC
 00684834    pop         edi
 00684835    pop         esi
 00684836    pop         ebx
 00684837    mov         esp,ebp
 00684839    pop         ebp
 0068483A    ret
*}
end;

//0068CAB4
{*function sub_0068CAB4(?:?; ?:?; ?:?; ?:?):?;
begin
 0068CAB4    push        ebp
 0068CAB5    mov         ebp,esp
 0068CAB7    add         esp,0FFFFFFF8
 0068CABA    push        ebx
 0068CABB    push        esi
 0068CABC    push        edi
 0068CABD    mov         dword ptr [ebp-8],ecx
 0068CAC0    mov         dword ptr [ebp-4],eax
 0068CAC3    or          esi,0FFFFFFFF
 0068CAC6    mov         ecx,edx
 0068CAC8    cmp         ecx,0FF
>0068CACE    jbe         0068CAD5
 0068CAD0    call        @BoundErr
 0068CAD5    test        cl,cl
>0068CAD7    jb          0068CB01
 0068CAD9    inc         ecx
 0068CADA    mov         al,0
 0068CADC    movzx       ebx,al
 0068CADF    test        ebx,ebx
>0068CAE1    jl          0068CAE7
 0068CAE3    cmp         ebx,edx
>0068CAE5    jle         0068CAEC
 0068CAE7    call        @BoundErr
 0068CAEC    mov         edi,dword ptr [ebp-4]
 0068CAEF    mov         ebx,dword ptr [edi+ebx*4]
 0068CAF2    cmp         ebx,dword ptr [ebp-8]
>0068CAF5    jne         0068CAFC
 0068CAF7    movzx       esi,al
>0068CAFA    jmp         0068CB01
 0068CAFC    inc         eax
 0068CAFD    dec         cl
>0068CAFF    jne         0068CADC
 0068CB01    cmp         esi,0FFFFFFFF
>0068CB04    je          0068CB10
 0068CB06    add         esi,dword ptr [ebp+8]
>0068CB09    jno         0068CB10
 0068CB0B    call        @IntOver
 0068CB10    mov         eax,esi
 0068CB12    pop         edi
 0068CB13    pop         esi
 0068CB14    pop         ebx
 0068CB15    pop         ecx
 0068CB16    pop         ecx
 0068CB17    pop         ebp
 0068CB18    ret         4
end;*}

//0068CB1C
function TFXPAD.SapTypeToInt(s:string):Word;
begin
{*
 0068CB1C    push        ebp
 0068CB1D    mov         ebp,esp
 0068CB1F    push        ecx
 0068CB20    push        ebx
 0068CB21    push        esi
 0068CB22    push        edi
 0068CB23    mov         dword ptr [ebp-4],edx
 0068CB26    mov         eax,dword ptr [ebp-4]
 0068CB29    call        @UStrAddRef
 0068CB2E    xor         eax,eax
 0068CB30    push        ebp
 0068CB31    push        68CBE4
 0068CB36    push        dword ptr fs:[eax]
 0068CB39    mov         dword ptr fs:[eax],esp
 0068CB3C    xor         edi,edi
 0068CB3E    xor         ebx,ebx
 0068CB40    mov         esi,7C18F0;^'Not in use'
 0068CB45    mov         eax,dword ptr [ebp-4]
 0068CB48    mov         edx,dword ptr [esi]
 0068CB4A    call        @UStrEqual
>0068CB4F    jne         0068CB7D
 0068CB51    movzx       eax,bl
 0068CB54    mov         edx,100
 0068CB59    mul         eax,edx
 0068CB5B    mov         edi,eax
>0068CB5D    jno         0068CB64
 0068CB5F    call        @IntOver
 0068CB64    add         edi,1
>0068CB67    jno         0068CB6E
 0068CB69    call        @IntOver
 0068CB6E    cmp         edi,0FFFF
>0068CB74    jbe         0068CBCE
 0068CB76    call        @BoundErr
>0068CB7B    jmp         0068CBCE
 0068CB7D    inc         ebx
 0068CB7E    add         esi,4
 0068CB81    cmp         bl,2D
>0068CB84    jne         0068CB45
 0068CB86    xor         ebx,ebx
 0068CB88    mov         esi,7C19A4;^'Not in use'
 0068CB8D    mov         eax,dword ptr [ebp-4]
 0068CB90    mov         edx,dword ptr [esi]
 0068CB92    call        @UStrEqual
>0068CB97    jne         0068CBC5
 0068CB99    movzx       eax,bl
 0068CB9C    mov         edx,100
 0068CBA1    mul         eax,edx
 0068CBA3    mov         edi,eax
>0068CBA5    jno         0068CBAC
 0068CBA7    call        @IntOver
 0068CBAC    add         edi,0
>0068CBAF    jno         0068CBB6
 0068CBB1    call        @IntOver
 0068CBB6    cmp         edi,0FFFF
>0068CBBC    jbe         0068CBCE
 0068CBBE    call        @BoundErr
>0068CBC3    jmp         0068CBCE
 0068CBC5    inc         ebx
 0068CBC6    add         esi,4
 0068CBC9    cmp         bl,10
>0068CBCC    jne         0068CB8D
 0068CBCE    xor         eax,eax
 0068CBD0    pop         edx
 0068CBD1    pop         ecx
 0068CBD2    pop         ecx
 0068CBD3    mov         dword ptr fs:[eax],edx
 0068CBD6    push        68CBEB
 0068CBDB    lea         eax,[ebp-4]
 0068CBDE    call        @UStrClr
 0068CBE3    ret
>0068CBE4    jmp         @HandleFinally
>0068CBE9    jmp         0068CBDB
 0068CBEB    mov         eax,edi
 0068CBED    pop         edi
 0068CBEE    pop         esi
 0068CBEF    pop         ebx
 0068CBF0    pop         ecx
 0068CBF1    pop         ebp
 0068CBF2    ret
*}
end;

//0068CBF4
{*procedure TFXPAD.SapIntToType(aptype:Byte; apfunc:Byte; ?:?);
begin
 0068CBF4    push        ebp
 0068CBF5    mov         ebp,esp
 0068CBF7    push        ebx
 0068CBF8    push        esi
 0068CBF9    mov         ebx,edx
 0068CBFB    mov         esi,dword ptr [ebp+8]
 0068CBFE    sub         cl,1
>0068CC01    jb          0068CC3E
>0068CC03    jne         0068CC77
 0068CC05    mov         eax,ebx
 0068CC07    movzx       eax,al
 0068CC0A    bt          dword ptr ds:[7C26E0],eax;gvar_007C26E0
>0068CC11    jae         0068CC30
 0068CC13    mov         eax,esi
 0068CC15    movzx       edx,bl
 0068CC18    cmp         edx,2C
>0068CC1B    jbe         0068CC22
 0068CC1D    call        @BoundErr
 0068CC22    mov         edx,dword ptr [edx*4+7C18F0];^'Not in use'
 0068CC29    call        @UStrAsg
>0068CC2E    jmp         0068CC83
 0068CC30    mov         eax,esi
 0068CC32    mov         edx,68CC98;'ERR'
 0068CC37    call        @UStrAsg
>0068CC3C    jmp         0068CC83
 0068CC3E    mov         eax,ebx
 0068CC40    movzx       eax,al
 0068CC43    bt          dword ptr ds:[7C2580],eax;gvar_007C2580
>0068CC4A    jae         0068CC69
 0068CC4C    mov         eax,esi
 0068CC4E    movzx       edx,bl
 0068CC51    cmp         edx,0F
>0068CC54    jbe         0068CC5B
 0068CC56    call        @BoundErr
 0068CC5B    mov         edx,dword ptr [edx*4+7C19A4];^'Not in use'
 0068CC62    call        @UStrAsg
>0068CC67    jmp         0068CC83
 0068CC69    mov         eax,esi
 0068CC6B    mov         edx,68CC98;'ERR'
 0068CC70    call        @UStrAsg
>0068CC75    jmp         0068CC83
 0068CC77    mov         eax,esi
 0068CC79    mov         edx,68CC98;'ERR'
 0068CC7E    call        @UStrAsg
 0068CC83    pop         esi
 0068CC84    pop         ebx
 0068CC85    pop         ebp
 0068CC86    ret         4
end;*}

//0068CCA0
function TFXPAD.SapInputToInt(s:string):Byte;
begin
{*
 0068CCA0    push        ebp
 0068CCA1    mov         ebp,esp
 0068CCA3    add         esp,0FFFFFFF8
 0068CCA6    push        ebx
 0068CCA7    push        esi
 0068CCA8    mov         dword ptr [ebp-4],edx
 0068CCAB    mov         eax,dword ptr [ebp-4]
 0068CCAE    call        @UStrAddRef
 0068CCB3    xor         eax,eax
 0068CCB5    push        ebp
 0068CCB6    push        68CCFC
 0068CCBB    push        dword ptr fs:[eax]
 0068CCBE    mov         dword ptr fs:[eax],esp
 0068CCC1    mov         byte ptr [ebp-5],0
 0068CCC5    xor         ebx,ebx
 0068CCC7    mov         esi,7C1A44;^'Not in use'
 0068CCCC    mov         eax,dword ptr [ebp-4]
 0068CCCF    mov         edx,dword ptr [esi]
 0068CCD1    call        @UStrEqual
>0068CCD6    jne         0068CCDD
 0068CCD8    mov         byte ptr [ebp-5],bl
>0068CCDB    jmp         0068CCE6
 0068CCDD    inc         ebx
 0068CCDE    add         esi,4
 0068CCE1    cmp         bl,21
>0068CCE4    jne         0068CCCC
 0068CCE6    xor         eax,eax
 0068CCE8    pop         edx
 0068CCE9    pop         ecx
 0068CCEA    pop         ecx
 0068CCEB    mov         dword ptr fs:[eax],edx
 0068CCEE    push        68CD03
 0068CCF3    lea         eax,[ebp-4]
 0068CCF6    call        @UStrClr
 0068CCFB    ret
>0068CCFC    jmp         @HandleFinally
>0068CD01    jmp         0068CCF3
 0068CD03    movzx       eax,byte ptr [ebp-5]
 0068CD07    pop         esi
 0068CD08    pop         ebx
 0068CD09    pop         ecx
 0068CD0A    pop         ecx
 0068CD0B    pop         ebp
 0068CD0C    ret
*}
end;

//0068CD10
{*procedure TFXPAD.SapIntToInput(aptype:Byte; apfunc:Byte; ?:?; apinfunc:Byte);
begin
 0068CD10    push        ebp
 0068CD11    mov         ebp,esp
 0068CD13    sub         cl,1
>0068CD16    jb          0068CDE3
>0068CD1C    jne         0068CE63
 0068CD22    movzx       eax,dl
 0068CD25    add         eax,0FFFFFFEE
 0068CD28    cmp         eax,12
>0068CD2B    ja          0068CDD6
 0068CD31    movzx       eax,byte ptr [eax+68CD3F]
 0068CD38    jmp         dword ptr [eax*4+68CD52]
 0068CD38    db          1
 0068CD38    db          1
 0068CD38    db          1
 0068CD38    db          1
 0068CD38    db          0
 0068CD38    db          0
 0068CD38    db          2
 0068CD38    db          0
 0068CD38    db          0
 0068CD38    db          1
 0068CD38    db          2
 0068CD38    db          2
 0068CD38    db          1
 0068CD38    db          0
 0068CD38    db          0
 0068CD38    db          0
 0068CD38    db          1
 0068CD38    db          0
 0068CD38    db          2
 0068CD38    dd          0068CDD6
 0068CD38    dd          0068CD5E
 0068CD38    dd          0068CD9A
 0068CD5E    movzx       eax,byte ptr [ebp+0C]
 0068CD62    sub         al,21
>0068CD64    jae         0068CD88
 0068CD66    mov         eax,dword ptr [ebp+8]
 0068CD69    movzx       edx,byte ptr [ebp+0C]
 0068CD6D    cmp         edx,20
>0068CD70    jbe         0068CD77
 0068CD72    call        @BoundErr
 0068CD77    mov         edx,dword ptr [edx*4+7C1A44];^'Not in use'
 0068CD7E    call        @UStrAsg
>0068CD83    jmp         0068CE63
 0068CD88    mov         eax,dword ptr [ebp+8]
 0068CD8B    mov         edx,68CE74;'ERR'
 0068CD90    call        @UStrAsg
>0068CD95    jmp         0068CE63
 0068CD9A    movzx       eax,byte ptr [ebp+0C]
 0068CD9E    sub         al,2
>0068CDA0    jae         0068CDC4
 0068CDA2    mov         eax,dword ptr [ebp+8]
 0068CDA5    movzx       edx,byte ptr [ebp+0C]
 0068CDA9    cmp         edx,3
>0068CDAC    jbe         0068CDB3
 0068CDAE    call        @BoundErr
 0068CDB3    mov         edx,dword ptr [edx*4+7C2468];^'Conventional Zone'
 0068CDBA    call        @UStrAsg
>0068CDBF    jmp         0068CE63
 0068CDC4    mov         eax,dword ptr [ebp+8]
 0068CDC7    mov         edx,68CE74;'ERR'
 0068CDCC    call        @UStrAsg
>0068CDD1    jmp         0068CE63
 0068CDD6    mov         eax,dword ptr [ebp+8]
 0068CDD9    call        @UStrClr
>0068CDDE    jmp         0068CE63
 0068CDE3    sub         dl,4
>0068CDE6    je          0068CDEF
 0068CDE8    sub         dl,2
>0068CDEB    je          0068CE25
>0068CDED    jmp         0068CE5B
 0068CDEF    movzx       eax,byte ptr [ebp+0C]
 0068CDF3    sub         al,21
>0068CDF5    jae         0068CE16
 0068CDF7    mov         eax,dword ptr [ebp+8]
 0068CDFA    movzx       edx,byte ptr [ebp+0C]
 0068CDFE    cmp         edx,20
>0068CE01    jbe         0068CE08
 0068CE03    call        @BoundErr
 0068CE08    mov         edx,dword ptr [edx*4+7C1A44];^'Not in use'
 0068CE0F    call        @UStrAsg
>0068CE14    jmp         0068CE63
 0068CE16    mov         eax,dword ptr [ebp+8]
 0068CE19    mov         edx,68CE74;'ERR'
 0068CE1E    call        @UStrAsg
>0068CE23    jmp         0068CE63
 0068CE25    movzx       eax,byte ptr [ebp+0C]
 0068CE29    sub         al,2
>0068CE2B    jae         0068CE4C
 0068CE2D    mov         eax,dword ptr [ebp+8]
 0068CE30    movzx       edx,byte ptr [ebp+0C]
 0068CE34    cmp         edx,3
>0068CE37    jbe         0068CE3E
 0068CE39    call        @BoundErr
 0068CE3E    mov         edx,dword ptr [edx*4+7C2468];^'Conventional Zone'
 0068CE45    call        @UStrAsg
>0068CE4A    jmp         0068CE63
 0068CE4C    mov         eax,dword ptr [ebp+8]
 0068CE4F    mov         edx,68CE74;'ERR'
 0068CE54    call        @UStrAsg
>0068CE59    jmp         0068CE63
 0068CE5B    mov         eax,dword ptr [ebp+8]
 0068CE5E    call        @UStrClr
 0068CE63    pop         ebp
 0068CE64    ret         8
end;*}

//0068CE7C
function TFXPAD.SapOutputToInt(s:string):Byte;
begin
{*
 0068CE7C    push        ebp
 0068CE7D    mov         ebp,esp
 0068CE7F    add         esp,0FFFFFFF8
 0068CE82    push        ebx
 0068CE83    push        esi
 0068CE84    mov         dword ptr [ebp-4],edx
 0068CE87    mov         eax,dword ptr [ebp-4]
 0068CE8A    call        @UStrAddRef
 0068CE8F    xor         eax,eax
 0068CE91    push        ebp
 0068CE92    push        68CED8
 0068CE97    push        dword ptr fs:[eax]
 0068CE9A    mov         dword ptr fs:[eax],esp
 0068CE9D    mov         byte ptr [ebp-5],0
 0068CEA1    xor         ebx,ebx
 0068CEA3    mov         esi,7C2518;^'Not in use'
 0068CEA8    mov         eax,dword ptr [ebp-4]
 0068CEAB    mov         edx,dword ptr [esi]
 0068CEAD    call        @UStrEqual
>0068CEB2    jne         0068CEB9
 0068CEB4    mov         byte ptr [ebp-5],bl
>0068CEB7    jmp         0068CEC2
 0068CEB9    inc         ebx
 0068CEBA    add         esi,4
 0068CEBD    cmp         bl,1A
>0068CEC0    jne         0068CEA8
 0068CEC2    xor         eax,eax
 0068CEC4    pop         edx
 0068CEC5    pop         ecx
 0068CEC6    pop         ecx
 0068CEC7    mov         dword ptr fs:[eax],edx
 0068CECA    push        68CEDF
 0068CECF    lea         eax,[ebp-4]
 0068CED2    call        @UStrClr
 0068CED7    ret
>0068CED8    jmp         @HandleFinally
>0068CEDD    jmp         0068CECF
 0068CEDF    movzx       eax,byte ptr [ebp-5]
 0068CEE3    pop         esi
 0068CEE4    pop         ebx
 0068CEE5    pop         ecx
 0068CEE6    pop         ecx
 0068CEE7    pop         ebp
 0068CEE8    ret
*}
end;

//0068CEEC
{*procedure TFXPAD.SapIntToOutput(aptype:Byte; apfunc:Byte; ?:?; apoutfunc:Byte);
begin
 0068CEEC    push        ebp
 0068CEED    mov         ebp,esp
 0068CEEF    sub         cl,1
>0068CEF2    jb          0068CF5D
>0068CEF4    jne         0068CFA7
 0068CEFA    add         dl,0FE
 0068CEFD    sub         dl,0C
>0068CF00    jb          0068CF1D
 0068CF02    add         dl,0F8
 0068CF05    sub         dl,2
>0068CF08    jb          0068CF1D
 0068CF0A    dec         edx
 0068CF0B    sub         dl,2
>0068CF0E    jb          0068CF1D
 0068CF10    sub         dl,8
>0068CF13    je          0068CF1D
 0068CF15    add         dl,0FB
 0068CF18    sub         dl,5
>0068CF1B    jae         0068CF53
 0068CF1D    movzx       eax,byte ptr [ebp+0C]
 0068CF21    sub         al,1A
>0068CF23    jae         0068CF44
 0068CF25    mov         eax,dword ptr [ebp+8]
 0068CF28    movzx       edx,byte ptr [ebp+0C]
 0068CF2C    cmp         edx,19
>0068CF2F    jbe         0068CF36
 0068CF31    call        @BoundErr
 0068CF36    mov         edx,dword ptr [edx*4+7C2518];^'Not in use'
 0068CF3D    call        @UStrAsg
>0068CF42    jmp         0068CFA7
 0068CF44    mov         eax,dword ptr [ebp+8]
 0068CF47    mov         edx,68CFB8;'ERR'
 0068CF4C    call        @UStrAsg
>0068CF51    jmp         0068CFA7
 0068CF53    mov         eax,dword ptr [ebp+8]
 0068CF56    call        @UStrClr
>0068CF5B    jmp         0068CFA7
 0068CF5D    movzx       edx,dl
 0068CF60    bt          dword ptr ds:[7C25E0],edx;gvar_007C25E0
>0068CF67    jae         0068CF9F
 0068CF69    movzx       eax,byte ptr [ebp+0C]
 0068CF6D    sub         al,1A
>0068CF6F    jae         0068CF90
 0068CF71    mov         eax,dword ptr [ebp+8]
 0068CF74    movzx       edx,byte ptr [ebp+0C]
 0068CF78    cmp         edx,19
>0068CF7B    jbe         0068CF82
 0068CF7D    call        @BoundErr
 0068CF82    mov         edx,dword ptr [edx*4+7C2518];^'Not in use'
 0068CF89    call        @UStrAsg
>0068CF8E    jmp         0068CFA7
 0068CF90    mov         eax,dword ptr [ebp+8]
 0068CF93    mov         edx,68CFB8;'ERR'
 0068CF98    call        @UStrAsg
>0068CF9D    jmp         0068CFA7
 0068CF9F    mov         eax,dword ptr [ebp+8]
 0068CFA2    call        @UStrClr
 0068CFA7    pop         ebp
 0068CFA8    ret         8
end;*}

//0068CFC0
function TFXPAD.SapCZInputToInt(s:string):Byte;
begin
{*
 0068CFC0    push        ebp
 0068CFC1    mov         ebp,esp
 0068CFC3    add         esp,0FFFFFFF8
 0068CFC6    push        ebx
 0068CFC7    push        esi
 0068CFC8    mov         dword ptr [ebp-4],edx
 0068CFCB    mov         eax,dword ptr [ebp-4]
 0068CFCE    call        @UStrAddRef
 0068CFD3    xor         eax,eax
 0068CFD5    push        ebp
 0068CFD6    push        68D01C
 0068CFDB    push        dword ptr fs:[eax]
 0068CFDE    mov         dword ptr fs:[eax],esp
 0068CFE1    mov         byte ptr [ebp-5],0
 0068CFE5    xor         ebx,ebx
 0068CFE7    mov         esi,7C2468;^'Conventional Zone'
 0068CFEC    mov         eax,dword ptr [ebp-4]
 0068CFEF    mov         edx,dword ptr [esi]
 0068CFF1    call        @UStrEqual
>0068CFF6    jne         0068CFFD
 0068CFF8    mov         byte ptr [ebp-5],bl
>0068CFFB    jmp         0068D006
 0068CFFD    inc         ebx
 0068CFFE    add         esi,4
 0068D001    cmp         bl,4
>0068D004    jne         0068CFEC
 0068D006    xor         eax,eax
 0068D008    pop         edx
 0068D009    pop         ecx
 0068D00A    pop         ecx
 0068D00B    mov         dword ptr fs:[eax],edx
 0068D00E    push        68D023
 0068D013    lea         eax,[ebp-4]
 0068D016    call        @UStrClr
 0068D01B    ret
>0068D01C    jmp         @HandleFinally
>0068D021    jmp         0068D013
 0068D023    movzx       eax,byte ptr [ebp-5]
 0068D027    pop         esi
 0068D028    pop         ebx
 0068D029    pop         ecx
 0068D02A    pop         ecx
 0068D02B    pop         ebp
 0068D02C    ret
*}
end;

//0068D030
function TFXPAD.SapLevelToInt(aptype:Word; s:string):Word;
begin
{*
 0068D030    push        ebp
 0068D031    mov         ebp,esp
 0068D033    add         esp,0FFFFFFF8
 0068D036    push        ebx
 0068D037    push        esi
 0068D038    push        edi
 0068D039    mov         dword ptr [ebp-4],ecx
 0068D03C    mov         edi,edx
 0068D03E    mov         eax,dword ptr [ebp-4]
 0068D041    call        @UStrAddRef
 0068D046    xor         eax,eax
 0068D048    push        ebp
 0068D049    push        68D27E
 0068D04E    push        dword ptr fs:[eax]
 0068D051    mov         dword ptr fs:[eax],esp
 0068D054    mov         byte ptr [ebp-5],0
 0068D058    mov         bl,1
 0068D05A    mov         esi,7C2844;^'L 1'
 0068D05F    mov         eax,dword ptr [ebp-4]
 0068D062    mov         edx,dword ptr [esi]
 0068D064    call        @UStrEqual
>0068D069    jne         0068D070
 0068D06B    mov         byte ptr [ebp-5],bl
>0068D06E    jmp         0068D079
 0068D070    inc         ebx
 0068D071    add         esi,4
 0068D074    cmp         bl,0B
>0068D077    jne         0068D05F
 0068D079    movzx       eax,di
 0068D07C    cmp         eax,0D
>0068D07F    ja          0068D266
 0068D085    jmp         dword ptr [eax*4+68D08C]
 0068D085    dd          0068D266
 0068D085    dd          0068D0C4
 0068D085    dd          0068D0F1
 0068D085    dd          0068D11E
 0068D085    dd          0068D14B
 0068D085    dd          0068D178
 0068D085    dd          0068D1A5
 0068D085    dd          0068D266
 0068D085    dd          0068D266
 0068D085    dd          0068D266
 0068D085    dd          0068D1D2
 0068D085    dd          0068D21A
 0068D085    dd          0068D240
 0068D085    dd          0068D1F6
 0068D0C4    movzx       eax,byte ptr [ebp-5]
 0068D0C8    dec         eax
 0068D0C9    cmp         eax,4
>0068D0CC    jbe         0068D0D3
 0068D0CE    call        @BoundErr
 0068D0D3    inc         eax
 0068D0D4    mov         ebx,dword ptr [eax*4+7C1AC4];^'Voice Evacuation Fault Input'
 0068D0DB    cmp         ebx,0FFFF
>0068D0E1    jbe         0068D268
 0068D0E7    call        @BoundErr
>0068D0EC    jmp         0068D268
 0068D0F1    movzx       eax,byte ptr [ebp-5]
 0068D0F5    dec         eax
 0068D0F6    cmp         eax,4
>0068D0F9    jbe         0068D100
 0068D0FB    call        @BoundErr
 0068D100    inc         eax
 0068D101    mov         ebx,dword ptr [eax*4+7C1AD8]
 0068D108    cmp         ebx,0FFFF
>0068D10E    jbe         0068D268
 0068D114    call        @BoundErr
>0068D119    jmp         0068D268
 0068D11E    movzx       eax,byte ptr [ebp-5]
 0068D122    dec         eax
 0068D123    cmp         eax,4
>0068D126    jbe         0068D12D
 0068D128    call        @BoundErr
 0068D12D    inc         eax
 0068D12E    mov         ebx,dword ptr [eax*4+7C1AD8]
 0068D135    cmp         ebx,0FFFF
>0068D13B    jbe         0068D268
 0068D141    call        @BoundErr
>0068D146    jmp         0068D268
 0068D14B    movzx       eax,byte ptr [ebp-5]
 0068D14F    dec         eax
 0068D150    cmp         eax,5
>0068D153    jbe         0068D15A
 0068D155    call        @BoundErr
 0068D15A    inc         eax
 0068D15B    mov         ebx,dword ptr [eax*4+7C1AEC]
 0068D162    cmp         ebx,0FFFF
>0068D168    jbe         0068D268
 0068D16E    call        @BoundErr
>0068D173    jmp         0068D268
 0068D178    movzx       eax,byte ptr [ebp-5]
 0068D17C    dec         eax
 0068D17D    cmp         eax,5
>0068D180    jbe         0068D187
 0068D182    call        @BoundErr
 0068D187    inc         eax
 0068D188    mov         ebx,dword ptr [eax*4+7C1AEC]
 0068D18F    cmp         ebx,0FFFF
>0068D195    jbe         0068D268
 0068D19B    call        @BoundErr
>0068D1A0    jmp         0068D268
 0068D1A5    movzx       eax,byte ptr [ebp-5]
 0068D1A9    dec         eax
 0068D1AA    cmp         eax,5
>0068D1AD    jbe         0068D1B4
 0068D1AF    call        @BoundErr
 0068D1B4    inc         eax
 0068D1B5    mov         ebx,dword ptr [eax*4+7C1AEC]
 0068D1BC    cmp         ebx,0FFFF
>0068D1C2    jbe         0068D268
 0068D1C8    call        @BoundErr
>0068D1CD    jmp         0068D268
 0068D1D2    movzx       eax,byte ptr [ebp-5]
 0068D1D6    cmp         eax,7
>0068D1D9    jbe         0068D1E0
 0068D1DB    call        @BoundErr
 0068D1E0    mov         ebx,dword ptr [eax*4+7C1B54]
 0068D1E7    cmp         ebx,0FFFF
>0068D1ED    jbe         0068D268
 0068D1EF    call        @BoundErr
>0068D1F4    jmp         0068D268
 0068D1F6    movzx       eax,byte ptr [ebp-5]
 0068D1FA    cmp         eax,7
>0068D1FD    jbe         0068D204
 0068D1FF    call        @BoundErr
 0068D204    mov         ebx,dword ptr [eax*4+7C1B54]
 0068D20B    cmp         ebx,0FFFF
>0068D211    jbe         0068D268
 0068D213    call        @BoundErr
>0068D218    jmp         0068D268
 0068D21A    movzx       eax,byte ptr [ebp-5]
 0068D21E    dec         eax
 0068D21F    cmp         eax,9
>0068D222    jbe         0068D229
 0068D224    call        @BoundErr
 0068D229    inc         eax
 0068D22A    mov         ebx,dword ptr [eax*4+7C1B04]
 0068D231    cmp         ebx,0FFFF
>0068D237    jbe         0068D268
 0068D239    call        @BoundErr
>0068D23E    jmp         0068D268
 0068D240    movzx       eax,byte ptr [ebp-5]
 0068D244    dec         eax
 0068D245    cmp         eax,8
>0068D248    jbe         0068D24F
 0068D24A    call        @BoundErr
 0068D24F    inc         eax
 0068D250    mov         ebx,dword ptr [eax*4+7C1B2C]
 0068D257    cmp         ebx,0FFFF
>0068D25D    jbe         0068D268
 0068D25F    call        @BoundErr
>0068D264    jmp         0068D268
 0068D266    xor         ebx,ebx
 0068D268    xor         eax,eax
 0068D26A    pop         edx
 0068D26B    pop         ecx
 0068D26C    pop         ecx
 0068D26D    mov         dword ptr fs:[eax],edx
 0068D270    push        68D285
 0068D275    lea         eax,[ebp-4]
 0068D278    call        @UStrClr
 0068D27D    ret
>0068D27E    jmp         @HandleFinally
>0068D283    jmp         0068D275
 0068D285    mov         eax,ebx
 0068D287    pop         edi
 0068D288    pop         esi
 0068D289    pop         ebx
 0068D28A    pop         ecx
 0068D28B    pop         ecx
 0068D28C    pop         ebp
 0068D28D    ret
*}
end;

//0068D290
{*procedure sub_0068D290(?:Word; ?:Word; ?:?);
begin
 0068D290    push        ebp
 0068D291    mov         ebp,esp
 0068D293    push        ecx
 0068D294    push        ebx
 0068D295    push        esi
 0068D296    mov         esi,ecx
 0068D298    mov         word ptr [ebp-2],dx
 0068D29C    movzx       eax,ax
 0068D29F    cmp         eax,0D
>0068D2A2    ja          0068D4B3
 0068D2A8    jmp         dword ptr [eax*4+68D2AF]
 0068D2A8    dd          0068D4B3
 0068D2A8    dd          0068D2E7
 0068D2A8    dd          0068D331
 0068D2A8    dd          0068D331
 0068D2A8    dd          0068D37B
 0068D2A8    dd          0068D37B
 0068D2A8    dd          0068D37B
 0068D2A8    dd          0068D3C5
 0068D2A8    dd          0068D3C5
 0068D2A8    dd          0068D3C5
 0068D2A8    dd          0068D3D1
 0068D2A8    dd          0068D42B
 0068D2A8    dd          0068D46F
 0068D2A8    dd          0068D3D1
 0068D2E7    push        1
 0068D2E9    movzx       ecx,word ptr [ebp-2]
 0068D2ED    mov         eax,7C1AC8
 0068D2F2    mov         edx,4
 0068D2F7    call        0068CAB4
 0068D2FC    mov         ebx,eax
 0068D2FE    cmp         ebx,0FFFFFFFF
>0068D301    je          0068D320
 0068D303    mov         eax,esi
 0068D305    cmp         ebx,0A
>0068D308    jbe         0068D30F
 0068D30A    call        @BoundErr
 0068D30F    mov         edx,dword ptr [ebx*4+7C2840];^'Err'
 0068D316    call        @UStrAsg
>0068D31B    jmp         0068D4BA
 0068D320    mov         eax,esi
 0068D322    mov         edx,68D4CC;'ERR!'
 0068D327    call        @UStrAsg
>0068D32C    jmp         0068D4BA
 0068D331    push        1
 0068D333    movzx       ecx,word ptr [ebp-2]
 0068D337    mov         eax,7C1ADC
 0068D33C    mov         edx,4
 0068D341    call        0068CAB4
 0068D346    mov         ebx,eax
 0068D348    cmp         ebx,0FFFFFFFF
>0068D34B    je          0068D36A
 0068D34D    mov         eax,esi
 0068D34F    cmp         ebx,0A
>0068D352    jbe         0068D359
 0068D354    call        @BoundErr
 0068D359    mov         edx,dword ptr [ebx*4+7C2840];^'Err'
 0068D360    call        @UStrAsg
>0068D365    jmp         0068D4BA
 0068D36A    mov         eax,esi
 0068D36C    mov         edx,68D4CC;'ERR!'
 0068D371    call        @UStrAsg
>0068D376    jmp         0068D4BA
 0068D37B    push        1
 0068D37D    movzx       ecx,word ptr [ebp-2]
 0068D381    mov         eax,7C1AF0
 0068D386    mov         edx,5
 0068D38B    call        0068CAB4
 0068D390    mov         ebx,eax
 0068D392    cmp         ebx,0FFFFFFFF
>0068D395    je          0068D3B4
 0068D397    mov         eax,esi
 0068D399    cmp         ebx,0A
>0068D39C    jbe         0068D3A3
 0068D39E    call        @BoundErr
 0068D3A3    mov         edx,dword ptr [ebx*4+7C2840];^'Err'
 0068D3AA    call        @UStrAsg
>0068D3AF    jmp         0068D4BA
 0068D3B4    mov         eax,esi
 0068D3B6    mov         edx,68D4CC;'ERR!'
 0068D3BB    call        @UStrAsg
>0068D3C0    jmp         0068D4BA
 0068D3C5    mov         eax,esi
 0068D3C7    call        @UStrClr
>0068D3CC    jmp         0068D4BA
 0068D3D1    push        0
 0068D3D3    movzx       ecx,word ptr [ebp-2]
 0068D3D7    mov         eax,7C1B54
 0068D3DC    mov         edx,7
 0068D3E1    call        0068CAB4
 0068D3E6    mov         ebx,eax
 0068D3E8    cmp         ebx,0FFFFFFFF
>0068D3EB    jne         0068D3FE
 0068D3ED    mov         eax,esi
 0068D3EF    mov         edx,68D4CC;'ERR!'
 0068D3F4    call        @UStrAsg
>0068D3F9    jmp         0068D4BA
 0068D3FE    test        ebx,ebx
>0068D400    jne         0068D40E
 0068D402    mov         eax,esi
 0068D404    call        @UStrClr
>0068D409    jmp         0068D4BA
 0068D40E    mov         eax,esi
 0068D410    cmp         ebx,0A
>0068D413    jbe         0068D41A
 0068D415    call        @BoundErr
 0068D41A    mov         edx,dword ptr [ebx*4+7C2840];^'Err'
 0068D421    call        @UStrAsg
>0068D426    jmp         0068D4BA
 0068D42B    push        1
 0068D42D    movzx       ecx,word ptr [ebp-2]
 0068D431    mov         eax,7C1B08
 0068D436    mov         edx,9
 0068D43B    call        0068CAB4
 0068D440    mov         ebx,eax
 0068D442    cmp         ebx,0FFFFFFFF
>0068D445    je          0068D461
 0068D447    mov         eax,esi
 0068D449    cmp         ebx,0A
>0068D44C    jbe         0068D453
 0068D44E    call        @BoundErr
 0068D453    mov         edx,dword ptr [ebx*4+7C2840];^'Err'
 0068D45A    call        @UStrAsg
>0068D45F    jmp         0068D4BA
 0068D461    mov         eax,esi
 0068D463    mov         edx,68D4CC;'ERR!'
 0068D468    call        @UStrAsg
>0068D46D    jmp         0068D4BA
 0068D46F    push        1
 0068D471    movzx       ecx,word ptr [ebp-2]
 0068D475    mov         eax,7C1B30
 0068D47A    mov         edx,8
 0068D47F    call        0068CAB4
 0068D484    mov         ebx,eax
 0068D486    cmp         ebx,0FFFFFFFF
>0068D489    je          0068D4A5
 0068D48B    mov         eax,esi
 0068D48D    cmp         ebx,0A
>0068D490    jbe         0068D497
 0068D492    call        @BoundErr
 0068D497    mov         edx,dword ptr [ebx*4+7C2840];^'Err'
 0068D49E    call        @UStrAsg
>0068D4A3    jmp         0068D4BA
 0068D4A5    mov         eax,esi
 0068D4A7    mov         edx,68D4CC;'ERR!'
 0068D4AC    call        @UStrAsg
>0068D4B1    jmp         0068D4BA
 0068D4B3    mov         eax,esi
 0068D4B5    call        @UStrClr
 0068D4BA    pop         esi
 0068D4BB    pop         ebx
 0068D4BC    pop         ecx
 0068D4BD    pop         ebp
 0068D4BE    ret
end;*}

//0068D4D8
{*procedure TFXPAD.SapIntToLevel(aptype:Word; w:Word; ?:?);
begin
 0068D4D8    push        ebp
 0068D4D9    mov         ebp,esp
 0068D4DB    push        ebx
 0068D4DC    push        esi
 0068D4DD    push        edi
 0068D4DE    mov         edi,ecx
 0068D4E0    mov         ebx,edx
 0068D4E2    mov         esi,eax
 0068D4E4    mov         ax,0FF
 0068D4E8    and         ax,bx
 0068D4EB    sub         ax,1
>0068D4EF    jb          0068D4F5
>0068D4F1    je          0068D51A
>0068D4F3    jmp         0068D52A
 0068D4F5    mov         eax,dword ptr [ebp+8]
 0068D4F8    push        eax
 0068D4F9    mov         edx,ebx
 0068D4FB    shr         dx,8
 0068D4FF    movzx       edx,dx
 0068D502    cmp         edx,0FF
>0068D508    jbe         0068D50F
 0068D50A    call        @BoundErr
 0068D50F    mov         ecx,edi
 0068D511    mov         eax,esi
 0068D513    call        TFXPAD.SysMsToLevel
>0068D518    jmp         0068D52A
 0068D51A    mov         ecx,dword ptr [ebp+8]
 0068D51D    mov         eax,ebx
 0068D51F    shr         ax,8
 0068D523    mov         edx,edi
 0068D525    call        0068D290
 0068D52A    pop         edi
 0068D52B    pop         esi
 0068D52C    pop         ebx
 0068D52D    pop         ebp
 0068D52E    ret         4
end;*}

//0068D534
function TFXPAD.SapModeToInt(aptype:Word; s:string):Byte;
begin
{*
 0068D534    push        ebp
 0068D535    mov         ebp,esp
 0068D537    add         esp,0FFFFFFF8
 0068D53A    push        ebx
 0068D53B    push        esi
 0068D53C    push        edi
 0068D53D    mov         dword ptr [ebp-4],ecx
 0068D540    mov         edi,edx
 0068D542    mov         eax,dword ptr [ebp-4]
 0068D545    call        @UStrAddRef
 0068D54A    xor         eax,eax
 0068D54C    push        ebp
 0068D54D    push        68D63E
 0068D552    push        dword ptr fs:[eax]
 0068D555    mov         dword ptr fs:[eax],esp
 0068D558    mov         byte ptr [ebp-5],0
 0068D55C    mov         eax,edi
 0068D55E    cmp         ax,0FF
>0068D562    ja          0068D56E
 0068D564    movzx       eax,ax
 0068D567    bt          dword ptr ds:[7C2760],eax;gvar_007C2760
>0068D56E    jae         0068D594
 0068D570    xor         ebx,ebx
 0068D572    mov         esi,7C2490;^'Monitored'
 0068D577    mov         eax,dword ptr [ebp-4]
 0068D57A    mov         edx,dword ptr [esi]
 0068D57C    call        @UStrEqual
>0068D581    jne         0068D58B
 0068D583    mov         byte ptr [ebp-5],bl
>0068D586    jmp         0068D628
 0068D58B    inc         ebx
 0068D58C    add         esi,4
 0068D58F    cmp         bl,3
>0068D592    jne         0068D577
 0068D594    add         edi,0FFFFFFD8
 0068D597    sub         di,2
>0068D59B    jb          0068D5A4
 0068D59D    dec         edi
 0068D59E    sub         di,2
>0068D5A2    jae         0068D607
 0068D5A4    xor         ebx,ebx
 0068D5A6    mov         esi,7C249C;^'Continuous'
 0068D5AB    mov         eax,dword ptr [ebp-4]
 0068D5AE    mov         edx,dword ptr [esi]
 0068D5B0    call        @UStrEqual
>0068D5B5    jne         0068D5BC
 0068D5B7    mov         byte ptr [ebp-5],bl
>0068D5BA    jmp         0068D628
 0068D5BC    inc         ebx
 0068D5BD    add         esi,4
 0068D5C0    cmp         bl,4
>0068D5C3    jne         0068D5AB
 0068D5C5    mov         bl,65
 0068D5C7    mov         esi,7C227C;^'Tone 01'
 0068D5CC    mov         eax,dword ptr [ebp-4]
 0068D5CF    mov         edx,dword ptr [esi]
 0068D5D1    call        @UStrEqual
>0068D5D6    jne         0068D5DD
 0068D5D8    mov         byte ptr [ebp-5],bl
>0068D5DB    jmp         0068D628
 0068D5DD    inc         ebx
 0068D5DE    add         esi,4
 0068D5E1    cmp         bl,86
>0068D5E4    jne         0068D5CC
 0068D5E6    mov         bl,0C9
 0068D5E8    mov         esi,7C2300;^'Tone pair 01'
 0068D5ED    mov         eax,dword ptr [ebp-4]
 0068D5F0    mov         edx,dword ptr [esi]
 0068D5F2    call        @UStrEqual
>0068D5F7    jne         0068D5FE
 0068D5F9    mov         byte ptr [ebp-5],bl
>0068D5FC    jmp         0068D628
 0068D5FE    inc         ebx
 0068D5FF    add         esi,4
 0068D602    cmp         bl,0EA
>0068D605    jne         0068D5ED
 0068D607    xor         ebx,ebx
 0068D609    mov         esi,7C2478;^'Normal'
 0068D60E    mov         eax,dword ptr [ebp-4]
 0068D611    mov         edx,dword ptr [esi]
 0068D613    call        @UStrEqual
>0068D618    jne         0068D61F
 0068D61A    mov         byte ptr [ebp-5],bl
>0068D61D    jmp         0068D628
 0068D61F    inc         ebx
 0068D620    add         esi,4
 0068D623    cmp         bl,6
>0068D626    jne         0068D60E
 0068D628    xor         eax,eax
 0068D62A    pop         edx
 0068D62B    pop         ecx
 0068D62C    pop         ecx
 0068D62D    mov         dword ptr fs:[eax],edx
 0068D630    push        68D645
 0068D635    lea         eax,[ebp-4]
 0068D638    call        @UStrClr
 0068D63D    ret
>0068D63E    jmp         @HandleFinally
>0068D643    jmp         0068D635
 0068D645    movzx       eax,byte ptr [ebp-5]
 0068D649    pop         edi
 0068D64A    pop         esi
 0068D64B    pop         ebx
 0068D64C    pop         ecx
 0068D64D    pop         ecx
 0068D64E    pop         ebp
 0068D64F    ret
*}
end;

//0068D650
{*procedure TFXPAD.SapIntToMode(aptype:Byte; apfunc:Byte; ?:?; apmode:Byte);
begin
 0068D650    push        ebp
 0068D651    mov         ebp,esp
 0068D653    push        ebx
 0068D654    push        esi
 0068D655    mov         ebx,edx
 0068D657    mov         esi,eax
 0068D659    sub         cl,1
>0068D65C    jb          0068D665
>0068D65E    je          0068D699
>0068D660    jmp         0068D7E1
 0068D665    mov         eax,dword ptr [ebp+8]
 0068D668    push        eax
 0068D669    movzx       eax,bl
 0068D66C    mov         edx,100
 0068D671    mul         eax,edx
 0068D673    mov         edx,eax
>0068D675    jno         0068D67C
 0068D677    call        @IntOver
 0068D67C    cmp         edx,0FFFF
>0068D682    jbe         0068D689
 0068D684    call        @BoundErr
 0068D689    movzx       ecx,byte ptr [ebp+0C]
 0068D68D    mov         eax,esi
 0068D68F    call        TFXPAD.SysIntToMode
>0068D694    jmp         0068D7E1
 0068D699    movzx       eax,bl
 0068D69C    cmp         eax,19
>0068D69F    jge         0068D6B3
 0068D6A1    sub         eax,1
>0068D6A4    jb          0068D6CD
 0068D6A6    add         eax,0FFFFFFEB
 0068D6A9    sub         eax,2
>0068D6AC    jb          0068D6DA
>0068D6AE    jmp         0068D7AD
 0068D6B3    add         eax,0FFFFFFE7
 0068D6B6    sub         eax,2
>0068D6B9    jb          0068D6DA
 0068D6BB    sub         eax,8
>0068D6BE    je          0068D6DA
 0068D6C0    add         eax,0FFFFFFFB
 0068D6C3    sub         eax,5
>0068D6C6    jb          0068D716
>0068D6C8    jmp         0068D7AD
 0068D6CD    mov         eax,dword ptr [ebp+8]
 0068D6D0    call        @UStrClr
>0068D6D5    jmp         0068D7E1
 0068D6DA    movzx       eax,byte ptr [ebp+0C]
 0068D6DE    sub         al,3
>0068D6E0    jae         0068D704
 0068D6E2    mov         eax,dword ptr [ebp+8]
 0068D6E5    movzx       edx,byte ptr [ebp+0C]
 0068D6E9    cmp         edx,2
>0068D6EC    jbe         0068D6F3
 0068D6EE    call        @BoundErr
 0068D6F3    mov         edx,dword ptr [edx*4+7C2490];^'Monitored'
 0068D6FA    call        @UStrAsg
>0068D6FF    jmp         0068D7E1
 0068D704    mov         eax,dword ptr [ebp+8]
 0068D707    mov         edx,68D7F4;'ERR'
 0068D70C    call        @UStrAsg
>0068D711    jmp         0068D7E1
 0068D716    movzx       eax,byte ptr [ebp+0C]
 0068D71A    sub         al,4
>0068D71C    jb          0068D72C
 0068D71E    add         al,9F
 0068D720    sub         al,21
>0068D722    jb          0068D74E
 0068D724    add         al,0BD
 0068D726    sub         al,21
>0068D728    jb          0068D773
>0068D72A    jmp         0068D79E
 0068D72C    mov         eax,dword ptr [ebp+8]
 0068D72F    movzx       edx,byte ptr [ebp+0C]
 0068D733    cmp         edx,3
>0068D736    jbe         0068D73D
 0068D738    call        @BoundErr
 0068D73D    mov         edx,dword ptr [edx*4+7C249C];^'Continuous'
 0068D744    call        @UStrAsg
>0068D749    jmp         0068D7E1
 0068D74E    mov         eax,dword ptr [ebp+8]
 0068D751    movzx       edx,byte ptr [ebp+0C]
 0068D755    add         edx,0FFFFFF9B
 0068D758    cmp         edx,20
>0068D75B    jbe         0068D762
 0068D75D    call        @BoundErr
 0068D762    add         edx,65
 0068D765    mov         edx,dword ptr [edx*4+7C20E8]
 0068D76C    call        @UStrAsg
>0068D771    jmp         0068D7E1
 0068D773    mov         eax,dword ptr [ebp+8]
 0068D776    movzx       edx,byte ptr [ebp+0C]
 0068D77A    add         edx,0FFFFFF37
 0068D780    cmp         edx,20
>0068D783    jbe         0068D78A
 0068D785    call        @BoundErr
 0068D78A    add         edx,0C9
 0068D790    mov         edx,dword ptr [edx*4+7C1FDC]
 0068D797    call        @UStrAsg
>0068D79C    jmp         0068D7E1
 0068D79E    mov         eax,dword ptr [ebp+8]
 0068D7A1    mov         edx,68D7F4;'ERR'
 0068D7A6    call        @UStrAsg
>0068D7AB    jmp         0068D7E1
 0068D7AD    movzx       eax,byte ptr [ebp+0C]
 0068D7B1    sub         al,6
>0068D7B3    jae         0068D7D4
 0068D7B5    mov         eax,dword ptr [ebp+8]
 0068D7B8    movzx       edx,byte ptr [ebp+0C]
 0068D7BC    cmp         edx,5
>0068D7BF    jbe         0068D7C6
 0068D7C1    call        @BoundErr
 0068D7C6    mov         edx,dword ptr [edx*4+7C2478];^'Normal'
 0068D7CD    call        @UStrAsg
>0068D7D2    jmp         0068D7E1
 0068D7D4    mov         eax,dword ptr [ebp+8]
 0068D7D7    mov         edx,68D7F4;'ERR'
 0068D7DC    call        @UStrAsg
 0068D7E1    pop         esi
 0068D7E2    pop         ebx
 0068D7E3    pop         ebp
 0068D7E4    ret         8
end;*}

//0068D7FC
{*procedure TFXPAD.SapDefaultFireLevel(APType:Integer; ?:?);
begin
 0068D7FC    push        ebx
 0068D7FD    mov         ebx,ecx
 0068D7FF    cmp         edx,0D
>0068D802    ja          0068D9E7
 0068D808    jmp         dword ptr [edx*4+68D80F]
 0068D808    dd          0068D9E7
 0068D808    dd          0068D847
 0068D808    dd          0068D867
 0068D808    dd          0068D887
 0068D808    dd          0068D8A7
 0068D808    dd          0068D8C7
 0068D808    dd          0068D8E7
 0068D808    dd          0068D907
 0068D808    dd          0068D927
 0068D808    dd          0068D947
 0068D808    dd          0068D967
 0068D808    dd          0068D9A7
 0068D808    dd          0068D9C7
 0068D808    dd          0068D987
 0068D847    mov         eax,ebx
 0068D849    mov         edx,dword ptr ds:[7C1B7C];0x4 gvar_007C1B7C
 0068D84F    cmp         edx,0A
>0068D852    jbe         0068D859
 0068D854    call        @BoundErr
 0068D859    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068D860    call        @UStrAsg
 0068D865    pop         ebx
 0068D866    ret
 0068D867    mov         eax,ebx
 0068D869    mov         edx,dword ptr ds:[7C1B84];0x4 gvar_007C1B84
 0068D86F    cmp         edx,0A
>0068D872    jbe         0068D879
 0068D874    call        @BoundErr
 0068D879    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068D880    call        @UStrAsg
 0068D885    pop         ebx
 0068D886    ret
 0068D887    mov         eax,ebx
 0068D889    mov         edx,dword ptr ds:[7C1B8C];0x4 gvar_007C1B8C
 0068D88F    cmp         edx,0A
>0068D892    jbe         0068D899
 0068D894    call        @BoundErr
 0068D899    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068D8A0    call        @UStrAsg
 0068D8A5    pop         ebx
 0068D8A6    ret
 0068D8A7    mov         eax,ebx
 0068D8A9    mov         edx,dword ptr ds:[7C1B94];0x5 gvar_007C1B94
 0068D8AF    cmp         edx,0A
>0068D8B2    jbe         0068D8B9
 0068D8B4    call        @BoundErr
 0068D8B9    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068D8C0    call        @UStrAsg
 0068D8C5    pop         ebx
 0068D8C6    ret
 0068D8C7    mov         eax,ebx
 0068D8C9    mov         edx,dword ptr ds:[7C1B9C];0x5 gvar_007C1B9C
 0068D8CF    cmp         edx,0A
>0068D8D2    jbe         0068D8D9
 0068D8D4    call        @BoundErr
 0068D8D9    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068D8E0    call        @UStrAsg
 0068D8E5    pop         ebx
 0068D8E6    ret
 0068D8E7    mov         eax,ebx
 0068D8E9    mov         edx,dword ptr ds:[7C1BA4];0x5 gvar_007C1BA4
 0068D8EF    cmp         edx,0A
>0068D8F2    jbe         0068D8F9
 0068D8F4    call        @BoundErr
 0068D8F9    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068D900    call        @UStrAsg
 0068D905    pop         ebx
 0068D906    ret
 0068D907    mov         eax,ebx
 0068D909    mov         edx,dword ptr ds:[7C1BAC];0x3 gvar_007C1BAC
 0068D90F    cmp         edx,0A
>0068D912    jbe         0068D919
 0068D914    call        @BoundErr
 0068D919    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068D920    call        @UStrAsg
 0068D925    pop         ebx
 0068D926    ret
 0068D927    mov         eax,ebx
 0068D929    mov         edx,dword ptr ds:[7C1BB4];0x3 gvar_007C1BB4
 0068D92F    cmp         edx,0A
>0068D932    jbe         0068D939
 0068D934    call        @BoundErr
 0068D939    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068D940    call        @UStrAsg
 0068D945    pop         ebx
 0068D946    ret
 0068D947    mov         eax,ebx
 0068D949    mov         edx,dword ptr ds:[7C1BBC];0x3 gvar_007C1BBC
 0068D94F    cmp         edx,0A
>0068D952    jbe         0068D959
 0068D954    call        @BoundErr
 0068D959    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068D960    call        @UStrAsg
 0068D965    pop         ebx
 0068D966    ret
 0068D967    mov         eax,ebx
 0068D969    mov         edx,dword ptr ds:[7C1BC4];0x7 gvar_007C1BC4
 0068D96F    cmp         edx,0A
>0068D972    jbe         0068D979
 0068D974    call        @BoundErr
 0068D979    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068D980    call        @UStrAsg
 0068D985    pop         ebx
 0068D986    ret
 0068D987    mov         eax,ebx
 0068D989    mov         edx,dword ptr ds:[7C1BDC];0x7 gvar_007C1BDC
 0068D98F    cmp         edx,0A
>0068D992    jbe         0068D999
 0068D994    call        @BoundErr
 0068D999    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068D9A0    call        @UStrAsg
 0068D9A5    pop         ebx
 0068D9A6    ret
 0068D9A7    mov         eax,ebx
 0068D9A9    mov         edx,dword ptr ds:[7C1BCC];0x7 gvar_007C1BCC
 0068D9AF    cmp         edx,0A
>0068D9B2    jbe         0068D9B9
 0068D9B4    call        @BoundErr
 0068D9B9    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068D9C0    call        @UStrAsg
 0068D9C5    pop         ebx
 0068D9C6    ret
 0068D9C7    mov         eax,ebx
 0068D9C9    mov         edx,dword ptr ds:[7C1BD4];0x7 gvar_007C1BD4
 0068D9CF    cmp         edx,0A
>0068D9D2    jbe         0068D9D9
 0068D9D4    call        @BoundErr
 0068D9D9    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068D9E0    call        @UStrAsg
 0068D9E5    pop         ebx
 0068D9E6    ret
 0068D9E7    mov         eax,ebx
 0068D9E9    call        @UStrClr
 0068D9EE    pop         ebx
 0068D9EF    ret
end;*}

//0068D9F0
{*procedure TFXPAD.SapDefaultPrewLevel(APType:Integer; ?:?);
begin
 0068D9F0    push        ebx
 0068D9F1    mov         ebx,ecx
 0068D9F3    cmp         edx,0D
>0068D9F6    ja          0068DBDB
 0068D9FC    jmp         dword ptr [edx*4+68DA03]
 0068D9FC    dd          0068DBDB
 0068D9FC    dd          0068DA3B
 0068D9FC    dd          0068DA5B
 0068D9FC    dd          0068DA7B
 0068D9FC    dd          0068DA9B
 0068D9FC    dd          0068DABB
 0068D9FC    dd          0068DADB
 0068D9FC    dd          0068DAFB
 0068D9FC    dd          0068DB1B
 0068D9FC    dd          0068DB3B
 0068D9FC    dd          0068DB5B
 0068D9FC    dd          0068DB9B
 0068D9FC    dd          0068DBBB
 0068D9FC    dd          0068DB7B
 0068DA3B    mov         eax,ebx
 0068DA3D    mov         edx,dword ptr ds:[7C1B80];0x3 gvar_007C1B80
 0068DA43    cmp         edx,0A
>0068DA46    jbe         0068DA4D
 0068DA48    call        @BoundErr
 0068DA4D    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068DA54    call        @UStrAsg
 0068DA59    pop         ebx
 0068DA5A    ret
 0068DA5B    mov         eax,ebx
 0068DA5D    mov         edx,dword ptr ds:[7C1B88];0x3 gvar_007C1B88
 0068DA63    cmp         edx,0A
>0068DA66    jbe         0068DA6D
 0068DA68    call        @BoundErr
 0068DA6D    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068DA74    call        @UStrAsg
 0068DA79    pop         ebx
 0068DA7A    ret
 0068DA7B    mov         eax,ebx
 0068DA7D    mov         edx,dword ptr ds:[7C1B90];0x3 gvar_007C1B90
 0068DA83    cmp         edx,0A
>0068DA86    jbe         0068DA8D
 0068DA88    call        @BoundErr
 0068DA8D    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068DA94    call        @UStrAsg
 0068DA99    pop         ebx
 0068DA9A    ret
 0068DA9B    mov         eax,ebx
 0068DA9D    mov         edx,dword ptr ds:[7C1B98];0x4 gvar_007C1B98
 0068DAA3    cmp         edx,0A
>0068DAA6    jbe         0068DAAD
 0068DAA8    call        @BoundErr
 0068DAAD    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068DAB4    call        @UStrAsg
 0068DAB9    pop         ebx
 0068DABA    ret
 0068DABB    mov         eax,ebx
 0068DABD    mov         edx,dword ptr ds:[7C1BA0];0x4 gvar_007C1BA0
 0068DAC3    cmp         edx,0A
>0068DAC6    jbe         0068DACD
 0068DAC8    call        @BoundErr
 0068DACD    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068DAD4    call        @UStrAsg
 0068DAD9    pop         ebx
 0068DADA    ret
 0068DADB    mov         eax,ebx
 0068DADD    mov         edx,dword ptr ds:[7C1BA8];0x4 gvar_007C1BA8
 0068DAE3    cmp         edx,0A
>0068DAE6    jbe         0068DAED
 0068DAE8    call        @BoundErr
 0068DAED    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068DAF4    call        @UStrAsg
 0068DAF9    pop         ebx
 0068DAFA    ret
 0068DAFB    mov         eax,ebx
 0068DAFD    mov         edx,dword ptr ds:[7C1BB0];0x2 gvar_007C1BB0
 0068DB03    cmp         edx,0A
>0068DB06    jbe         0068DB0D
 0068DB08    call        @BoundErr
 0068DB0D    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068DB14    call        @UStrAsg
 0068DB19    pop         ebx
 0068DB1A    ret
 0068DB1B    mov         eax,ebx
 0068DB1D    mov         edx,dword ptr ds:[7C1BB8];0x2 gvar_007C1BB8
 0068DB23    cmp         edx,0A
>0068DB26    jbe         0068DB2D
 0068DB28    call        @BoundErr
 0068DB2D    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068DB34    call        @UStrAsg
 0068DB39    pop         ebx
 0068DB3A    ret
 0068DB3B    mov         eax,ebx
 0068DB3D    mov         edx,dword ptr ds:[7C1BC0];0x2 gvar_007C1BC0
 0068DB43    cmp         edx,0A
>0068DB46    jbe         0068DB4D
 0068DB48    call        @BoundErr
 0068DB4D    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068DB54    call        @UStrAsg
 0068DB59    pop         ebx
 0068DB5A    ret
 0068DB5B    mov         eax,ebx
 0068DB5D    mov         edx,dword ptr ds:[7C1BC8];0x7 gvar_007C1BC8
 0068DB63    cmp         edx,0A
>0068DB66    jbe         0068DB6D
 0068DB68    call        @BoundErr
 0068DB6D    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068DB74    call        @UStrAsg
 0068DB79    pop         ebx
 0068DB7A    ret
 0068DB7B    mov         eax,ebx
 0068DB7D    mov         edx,dword ptr ds:[7C1BE0];0x7 gvar_007C1BE0
 0068DB83    cmp         edx,0A
>0068DB86    jbe         0068DB8D
 0068DB88    call        @BoundErr
 0068DB8D    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068DB94    call        @UStrAsg
 0068DB99    pop         ebx
 0068DB9A    ret
 0068DB9B    mov         eax,ebx
 0068DB9D    mov         edx,dword ptr ds:[7C1BD0];0x5 gvar_007C1BD0
 0068DBA3    cmp         edx,0A
>0068DBA6    jbe         0068DBAD
 0068DBA8    call        @BoundErr
 0068DBAD    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068DBB4    call        @UStrAsg
 0068DBB9    pop         ebx
 0068DBBA    ret
 0068DBBB    mov         eax,ebx
 0068DBBD    mov         edx,dword ptr ds:[7C1BD8];0x5 gvar_007C1BD8
 0068DBC3    cmp         edx,0A
>0068DBC6    jbe         0068DBCD
 0068DBC8    call        @BoundErr
 0068DBCD    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068DBD4    call        @UStrAsg
 0068DBD9    pop         ebx
 0068DBDA    ret
 0068DBDB    mov         eax,ebx
 0068DBDD    call        @UStrClr
 0068DBE2    pop         ebx
 0068DBE3    ret
end;*}

//0068DBE4
{*procedure TFXPAD.SapDefaultServLevel(APType:Integer; ?:?);
begin
 0068DBE4    push        ebx
 0068DBE5    mov         ebx,ecx
 0068DBE7    mov         eax,ebx
 0068DBE9    call        @UStrClr
 0068DBEE    pop         ebx
 0068DBEF    ret
end;*}

//0068DBF0
function TFXPAD.SapGetInpEvents(ap:TFXADRec):TFXEventSet;
begin
{*
 0068DBF0    push        ebx
 0068DBF1    push        esi
 0068DBF2    push        edi
 0068DBF3    add         esp,0FFFFFEE4
 0068DBF9    mov         esi,edx
 0068DBFB    lea         edi,[esp]
 0068DBFE    mov         ecx,36
 0068DC03    rep movs    dword ptr [edi],dword ptr [esi]
 0068DC05    movs        word ptr [edi],word ptr [esi]
 0068DC07    mov         esi,esp
 0068DC09    cmp         byte ptr [esi+0A],0
>0068DC0D    jne         0068DC18
 0068DC0F    movzx       ebx,byte ptr ds:[68DF70];0x0 gvar_0068DF70
>0068DC16    jmp         0068DC1F
 0068DC18    movzx       ebx,byte ptr ds:[68DF74];0x58 gvar_0068DF74
 0068DC1F    cmp         byte ptr [esi+0B],1
>0068DC23    jne         0068DC5E
 0068DC25    push        esi
 0068DC26    mov         esi,7C2700;gvar_007C2700
 0068DC2B    lea         edi,[esp+0E0]
 0068DC32    mov         ecx,8
 0068DC37    rep movs    dword ptr [edi],dword ptr [esi]
 0068DC39    pop         esi
 0068DC3A    lea         eax,[esp+0DC]
 0068DC41    mov         edx,7C2720;gvar_007C2720
 0068DC46    mov         cl,20
 0068DC48    call        @SetUnion
 0068DC4D    movzx       eax,byte ptr [esi+0A]
 0068DC51    movzx       eax,al
 0068DC54    bt          dword ptr [esp+0DC],eax
>0068DC5C    jb          0068DC9D
 0068DC5E    cmp         byte ptr [esi+0B],0
>0068DC62    jne         0068DCA6
 0068DC64    push        esi
 0068DC65    mov         esi,7C25A0;gvar_007C25A0:Word
 0068DC6A    lea         edi,[esp+100]
 0068DC71    mov         ecx,8
 0068DC76    rep movs    dword ptr [edi],dword ptr [esi]
 0068DC78    pop         esi
 0068DC79    lea         eax,[esp+0FC]
 0068DC80    mov         edx,68DF78
 0068DC85    mov         cl,20
 0068DC87    call        @SetUnion
 0068DC8C    movzx       eax,byte ptr [esi+0A]
 0068DC90    movzx       eax,al
 0068DC93    bt          dword ptr [esp+0FC],eax
>0068DC9B    jae         0068DCA6
 0068DC9D    movzx       eax,byte ptr ds:[68DF98];0x6 gvar_0068DF98
 0068DCA4    or          bl,al
 0068DCA6    cmp         byte ptr [esi+0B],1
>0068DCAA    jne         0068DCBC
 0068DCAC    movzx       eax,byte ptr [esi+0A]
 0068DCB0    movzx       eax,al
 0068DCB3    bt          dword ptr ds:[7C2740],eax;gvar_007C2740:Word
>0068DCBA    jb          0068DCD0
 0068DCBC    cmp         byte ptr [esi+0B],0
>0068DCC0    jne         0068DF30
 0068DCC6    cmp         byte ptr [esi+0A],4
>0068DCCA    jne         0068DF30
 0068DCD0    movzx       eax,byte ptr [esi+1E]
 0068DCD4    cmp         eax,21
>0068DCD7    ja          0068DF27
 0068DCDD    jmp         dword ptr [eax*4+68DCE4]
 0068DCDD    dd          0068DD6C
 0068DCDD    dd          0068DD7A
 0068DCDD    dd          0068DD88
 0068DCDD    dd          0068DD96
 0068DCDD    dd          0068DDA4
 0068DCDD    dd          0068DDB2
 0068DCDD    dd          0068DDC0
 0068DCDD    dd          0068DDCE
 0068DCDD    dd          0068DDDC
 0068DCDD    dd          0068DDEA
 0068DCDD    dd          0068DDF8
 0068DCDD    dd          0068DE06
 0068DCDD    dd          0068DE14
 0068DCDD    dd          0068DE22
 0068DCDD    dd          0068DE30
 0068DCDD    dd          0068DE3E
 0068DCDD    dd          0068DE4C
 0068DCDD    dd          0068DE5A
 0068DCDD    dd          0068DE68
 0068DCDD    dd          0068DE76
 0068DCDD    dd          0068DE84
 0068DCDD    dd          0068DE92
 0068DCDD    dd          0068DEA0
 0068DCDD    dd          0068DEAE
 0068DCDD    dd          0068DEB9
 0068DCDD    dd          0068DEC4
 0068DCDD    dd          0068DECF
 0068DCDD    dd          0068DEDA
 0068DCDD    dd          0068DEE5
 0068DCDD    dd          0068DEF0
 0068DCDD    dd          0068DEFB
 0068DCDD    dd          0068DF06
 0068DCDD    dd          0068DF11
 0068DCDD    dd          0068DF1C
 0068DD6C    movzx       eax,byte ptr ds:[68DF70];0x0 gvar_0068DF70
 0068DD73    or          bl,al
>0068DD75    jmp         0068DF30
 0068DD7A    movzx       eax,byte ptr ds:[68DF9C];0x2 gvar_0068DF9C
 0068DD81    or          bl,al
>0068DD83    jmp         0068DF30
 0068DD88    movzx       eax,byte ptr ds:[68DF9C];0x2 gvar_0068DF9C
 0068DD8F    or          bl,al
>0068DD91    jmp         0068DF30
 0068DD96    movzx       eax,byte ptr ds:[68DF9C];0x2 gvar_0068DF9C
 0068DD9D    or          bl,al
>0068DD9F    jmp         0068DF30
 0068DDA4    movzx       eax,byte ptr ds:[68DF9C];0x2 gvar_0068DF9C
 0068DDAB    or          bl,al
>0068DDAD    jmp         0068DF30
 0068DDB2    movzx       eax,byte ptr ds:[68DFA0];0x4 gvar_0068DFA0
 0068DDB9    or          bl,al
>0068DDBB    jmp         0068DF30
 0068DDC0    movzx       eax,byte ptr ds:[68DF70];0x0 gvar_0068DF70
 0068DDC7    or          bl,al
>0068DDC9    jmp         0068DF30
 0068DDCE    movzx       eax,byte ptr ds:[68DF70];0x0 gvar_0068DF70
 0068DDD5    or          bl,al
>0068DDD7    jmp         0068DF30
 0068DDDC    movzx       eax,byte ptr ds:[68DFA4];0x20 gvar_0068DFA4
 0068DDE3    or          bl,al
>0068DDE5    jmp         0068DF30
 0068DDEA    movzx       eax,byte ptr ds:[68DFA4];0x20 gvar_0068DFA4
 0068DDF1    or          bl,al
>0068DDF3    jmp         0068DF30
 0068DDF8    movzx       eax,byte ptr ds:[68DFA8];0x40 gvar_0068DFA8
 0068DDFF    or          bl,al
>0068DE01    jmp         0068DF30
 0068DE06    movzx       eax,byte ptr ds:[68DF70];0x0 gvar_0068DF70
 0068DE0D    or          bl,al
>0068DE0F    jmp         0068DF30
 0068DE14    movzx       eax,byte ptr ds:[68DFA8];0x40 gvar_0068DFA8
 0068DE1B    or          bl,al
>0068DE1D    jmp         0068DF30
 0068DE22    movzx       eax,byte ptr ds:[68DFA8];0x40 gvar_0068DFA8
 0068DE29    or          bl,al
>0068DE2B    jmp         0068DF30
 0068DE30    movzx       eax,byte ptr ds:[68DF70];0x0 gvar_0068DF70
 0068DE37    or          bl,al
>0068DE39    jmp         0068DF30
 0068DE3E    movzx       eax,byte ptr ds:[68DF70];0x0 gvar_0068DF70
 0068DE45    or          bl,al
>0068DE47    jmp         0068DF30
 0068DE4C    movzx       eax,byte ptr ds:[68DF70];0x0 gvar_0068DF70
 0068DE53    or          bl,al
>0068DE55    jmp         0068DF30
 0068DE5A    movzx       eax,byte ptr ds:[68DF70];0x0 gvar_0068DF70
 0068DE61    or          bl,al
>0068DE63    jmp         0068DF30
 0068DE68    movzx       eax,byte ptr ds:[68DF70];0x0 gvar_0068DF70
 0068DE6F    or          bl,al
>0068DE71    jmp         0068DF30
 0068DE76    movzx       eax,byte ptr ds:[68DF70];0x0 gvar_0068DF70
 0068DE7D    or          bl,al
>0068DE7F    jmp         0068DF30
 0068DE84    movzx       eax,byte ptr ds:[68DF70];0x0 gvar_0068DF70
 0068DE8B    or          bl,al
>0068DE8D    jmp         0068DF30
 0068DE92    movzx       eax,byte ptr ds:[68DF70];0x0 gvar_0068DF70
 0068DE99    or          bl,al
>0068DE9B    jmp         0068DF30
 0068DEA0    movzx       eax,byte ptr ds:[68DFAC];0x80 gvar_0068DFAC
 0068DEA7    or          bl,al
>0068DEA9    jmp         0068DF30
 0068DEAE    movzx       eax,byte ptr ds:[68DF70];0x0 gvar_0068DF70
 0068DEB5    or          bl,al
>0068DEB7    jmp         0068DF30
 0068DEB9    movzx       eax,byte ptr ds:[68DF70];0x0 gvar_0068DF70
 0068DEC0    or          bl,al
>0068DEC2    jmp         0068DF30
 0068DEC4    movzx       eax,byte ptr ds:[68DF70];0x0 gvar_0068DF70
 0068DECB    or          bl,al
>0068DECD    jmp         0068DF30
 0068DECF    movzx       eax,byte ptr ds:[68DF70];0x0 gvar_0068DF70
 0068DED6    or          bl,al
>0068DED8    jmp         0068DF30
 0068DEDA    movzx       eax,byte ptr ds:[68DF70];0x0 gvar_0068DF70
 0068DEE1    or          bl,al
>0068DEE3    jmp         0068DF30
 0068DEE5    movzx       eax,byte ptr ds:[68DF70];0x0 gvar_0068DF70
 0068DEEC    or          bl,al
>0068DEEE    jmp         0068DF30
 0068DEF0    movzx       eax,byte ptr ds:[68DF70];0x0 gvar_0068DF70
 0068DEF7    or          bl,al
>0068DEF9    jmp         0068DF30
 0068DEFB    movzx       eax,byte ptr ds:[68DF70];0x0 gvar_0068DF70
 0068DF02    or          bl,al
>0068DF04    jmp         0068DF30
 0068DF06    movzx       eax,byte ptr ds:[68DF70];0x0 gvar_0068DF70
 0068DF0D    or          bl,al
>0068DF0F    jmp         0068DF30
 0068DF11    movzx       eax,byte ptr ds:[68DF70];0x0 gvar_0068DF70
 0068DF18    or          bl,al
>0068DF1A    jmp         0068DF30
 0068DF1C    movzx       eax,byte ptr ds:[68DF70];0x0 gvar_0068DF70
 0068DF23    or          bl,al
>0068DF25    jmp         0068DF30
 0068DF27    movzx       eax,byte ptr ds:[68DF70];0x0 gvar_0068DF70
 0068DF2E    or          bl,al
 0068DF30    cmp         byte ptr [esi+0B],1
>0068DF34    jne         0068DF49
 0068DF36    movzx       eax,byte ptr [esi+0A]
 0068DF3A    add         al,0F0
 0068DF3C    sub         al,2
>0068DF3E    jae         0068DF49
 0068DF40    movzx       eax,byte ptr ds:[68DF9C];0x2 gvar_0068DF9C
 0068DF47    or          bl,al
 0068DF49    cmp         byte ptr [esi+16],3
>0068DF4D    jne         0068DF62
 0068DF4F    movzx       eax,byte ptr ds:[68DF9C];0x2 gvar_0068DF9C
 0068DF56    not         eax
 0068DF58    and         al,bl
 0068DF5A    or          al,byte ptr ds:[68DFA0];0x4 gvar_0068DFA0
 0068DF60    mov         ebx,eax
 0068DF62    mov         eax,ebx
 0068DF64    add         esp,11C
 0068DF6A    pop         edi
 0068DF6B    pop         esi
 0068DF6C    pop         ebx
 0068DF6D    ret
*}
end;

//0068DFB0
function TFXPAD.SapGetOutEvents(ap:TFXADRec):TFXEventSet;
begin
{*
 0068DFB0    push        esi
 0068DFB1    push        edi
 0068DFB2    add         esp,0FFFFFF24
 0068DFB8    mov         esi,edx
 0068DFBA    lea         edi,[esp]
 0068DFBD    mov         ecx,36
 0068DFC2    rep movs    dword ptr [edi],dword ptr [esi]
 0068DFC4    movs        word ptr [edi],word ptr [esi]
 0068DFC6    movzx       eax,byte ptr ds:[68E16C];0x0 gvar_0068E16C
 0068DFCD    cmp         byte ptr [esp+0B],1
>0068DFD2    jne         0068DFFC
 0068DFD4    movzx       edx,byte ptr [esp+0A]
 0068DFD9    add         dl,0FE
 0068DFDC    sub         dl,0C
>0068DFDF    jb          0068E01C
 0068DFE1    add         dl,0F8
 0068DFE4    sub         dl,2
>0068DFE7    jb          0068E01C
 0068DFE9    dec         edx
 0068DFEA    sub         dl,2
>0068DFED    jb          0068E01C
 0068DFEF    sub         dl,8
>0068DFF2    je          0068E01C
 0068DFF4    add         dl,0FB
 0068DFF7    sub         dl,5
>0068DFFA    jb          0068E01C
 0068DFFC    cmp         byte ptr [esp+0B],0
>0068E001    jne         0068E162
 0068E007    movzx       edx,byte ptr [esp+0A]
 0068E00C    movzx       edx,dl
 0068E00F    bt          dword ptr ds:[7C25E0],edx;gvar_007C25E0
>0068E016    jae         0068E162
 0068E01C    movzx       eax,byte ptr [esp+1F]
 0068E021    cmp         eax,15
>0068E024    ja          0068E15B
 0068E02A    jmp         dword ptr [eax*4+68E031]
 0068E02A    dd          0068E15B
 0068E02A    dd          0068E089
 0068E02A    dd          0068E095
 0068E02A    dd          0068E0A1
 0068E02A    dd          0068E0AD
 0068E02A    dd          0068E0B9
 0068E02A    dd          0068E0C5
 0068E02A    dd          0068E0D1
 0068E02A    dd          0068E0DD
 0068E02A    dd          0068E0E6
 0068E02A    dd          0068E0EF
 0068E02A    dd          0068E0F8
 0068E02A    dd          0068E101
 0068E02A    dd          0068E10A
 0068E02A    dd          0068E113
 0068E02A    dd          0068E11C
 0068E02A    dd          0068E125
 0068E02A    dd          0068E12E
 0068E02A    dd          0068E137
 0068E02A    dd          0068E140
 0068E02A    dd          0068E149
 0068E02A    dd          0068E152
 0068E089    movzx       eax,byte ptr ds:[68E170];0x2 gvar_0068E170
>0068E090    jmp         0068E162
 0068E095    movzx       eax,byte ptr ds:[68E170];0x2 gvar_0068E170
>0068E09C    jmp         0068E162
 0068E0A1    movzx       eax,byte ptr ds:[68E174];0x8 gvar_0068E174
>0068E0A8    jmp         0068E162
 0068E0AD    movzx       eax,byte ptr ds:[68E170];0x2 gvar_0068E170
>0068E0B4    jmp         0068E162
 0068E0B9    movzx       eax,byte ptr ds:[68E178];0x4 gvar_0068E178
>0068E0C0    jmp         0068E162
 0068E0C5    movzx       eax,byte ptr ds:[68E174];0x8 gvar_0068E174
>0068E0CC    jmp         0068E162
 0068E0D1    movzx       eax,byte ptr ds:[68E17C];0x10 gvar_0068E17C
>0068E0D8    jmp         0068E162
 0068E0DD    movzx       eax,byte ptr ds:[68E180];0x4E gvar_0068E180
>0068E0E4    jmp         0068E162
 0068E0E6    movzx       eax,byte ptr ds:[68E170];0x2 gvar_0068E170
>0068E0ED    jmp         0068E162
 0068E0EF    movzx       eax,byte ptr ds:[68E184];0x40 gvar_0068E184
>0068E0F6    jmp         0068E162
 0068E0F8    movzx       eax,byte ptr ds:[68E16C];0x0 gvar_0068E16C
>0068E0FF    jmp         0068E162
 0068E101    movzx       eax,byte ptr ds:[68E188];0x20 gvar_0068E188
>0068E108    jmp         0068E162
 0068E10A    movzx       eax,byte ptr ds:[68E18C];0x80 gvar_0068E18C
>0068E111    jmp         0068E162
 0068E113    movzx       eax,byte ptr ds:[68E16C];0x0 gvar_0068E16C
>0068E11A    jmp         0068E162
 0068E11C    movzx       eax,byte ptr ds:[68E16C];0x0 gvar_0068E16C
>0068E123    jmp         0068E162
 0068E125    movzx       eax,byte ptr ds:[68E16C];0x0 gvar_0068E16C
>0068E12C    jmp         0068E162
 0068E12E    movzx       eax,byte ptr ds:[68E170];0x2 gvar_0068E170
>0068E135    jmp         0068E162
 0068E137    movzx       eax,byte ptr ds:[68E170];0x2 gvar_0068E170
>0068E13E    jmp         0068E162
 0068E140    movzx       eax,byte ptr ds:[68E170];0x2 gvar_0068E170
>0068E147    jmp         0068E162
 0068E149    movzx       eax,byte ptr ds:[68E16C];0x0 gvar_0068E16C
>0068E150    jmp         0068E162
 0068E152    movzx       eax,byte ptr ds:[68E184];0x40 gvar_0068E184
>0068E159    jmp         0068E162
 0068E15B    movzx       eax,byte ptr ds:[68E16C];0x0 gvar_0068E16C
 0068E162    add         esp,0DC
 0068E168    pop         edi
 0068E169    pop         esi
 0068E16A    ret
*}
end;

//0068E190
function TFXPAD.SapNumOfChannels(APType:Word):Integer;
begin
{*
 0068E190    mov         ax,0FF
 0068E194    and         ax,dx
 0068E197    cmp         ax,1
>0068E19B    jne         0068E207
 0068E19D    shr         dx,8
 0068E1A1    movzx       eax,dx
 0068E1A4    add         eax,0FFFFFFEC
 0068E1A7    cmp         eax,8
>0068E1AA    ja          0068E201
 0068E1AC    jmp         dword ptr [eax*4+68E1B3]
 0068E1AC    dd          0068E1D7
 0068E1AC    dd          0068E1DE
 0068E1AC    dd          0068E201
 0068E1AC    dd          0068E201
 0068E1AC    dd          0068E201
 0068E1AC    dd          0068E1E5
 0068E1AC    dd          0068E1EC
 0068E1AC    dd          0068E1F3
 0068E1AC    dd          0068E1FA
 0068E1D7    mov         eax,2
>0068E1DC    jmp         0068E20C
 0068E1DE    mov         eax,3
>0068E1E3    jmp         0068E20C
 0068E1E5    mov         eax,6
>0068E1EA    jmp         0068E20C
 0068E1EC    mov         eax,6
>0068E1F1    jmp         0068E20C
 0068E1F3    mov         eax,0A
>0068E1F8    jmp         0068E20C
 0068E1FA    mov         eax,6
>0068E1FF    jmp         0068E20C
 0068E201    mov         eax,1
 0068E206    ret
 0068E207    mov         eax,1
 0068E20C    ret
*}
end;

//0068E210
function TFXPAD.SapApDataError(ap:TFXADRec):Cardinal;
begin
{*
 0068E210    push        ebx
 0068E211    push        esi
 0068E212    push        edi
 0068E213    push        ebp
 0068E214    add         esp,0FFFFFF24
 0068E21A    mov         esi,edx
 0068E21C    lea         edi,[esp]
 0068E21F    mov         ecx,36
 0068E224    rep movs    dword ptr [edi],dword ptr [esi]
 0068E226    movs        word ptr [edi],word ptr [esi]
 0068E228    mov         ebp,eax
 0068E22A    mov         edi,esp
 0068E22C    xor         esi,esi
 0068E22E    xor         edx,edx
 0068E230    movzx       eax,byte ptr [edi+0B]
 0068E234    mov         ecx,eax
 0068E236    sub         cl,2
>0068E239    jb          0068E243
 0068E23B    or          esi,40000
>0068E241    jmp         0068E246
 0068E243    movzx       edx,al
 0068E246    movzx       eax,byte ptr [edi+5]
 0068E24A    cmp         al,1
>0068E24C    jb          0068E25C
 0068E24E    mov         ecx,dword ptr [ebp+87668];TFXPAD.PD:TFXPPD
 0068E254    cmp         al,byte ptr [ecx+125]
>0068E25A    jbe         0068E25F
 0068E25C    or          esi,1
 0068E25F    cmp         word ptr [edi+6],3E7
>0068E265    jbe         0068E26A
 0068E267    or          esi,2
 0068E26A    cmp         word ptr [edi+8],3E7
>0068E270    jbe         0068E275
 0068E272    or          esi,4
 0068E275    cmp         edx,1
>0068E278    jne         0068E28D
 0068E27A    movzx       eax,byte ptr [edi+0A]
 0068E27E    movzx       eax,al
 0068E281    bt          dword ptr ds:[7C26E0],eax;gvar_007C26E0
>0068E288    jb          0068E28D
 0068E28A    or          esi,8
 0068E28D    test        edx,edx
>0068E28F    jne         0068E2A4
 0068E291    movzx       eax,byte ptr [edi+0A]
 0068E295    movzx       eax,al
 0068E298    bt          dword ptr ds:[7C2580],eax;gvar_007C2580
>0068E29F    jb          0068E2A4
 0068E2A1    or          esi,8
 0068E2A4    cmp         edx,1
>0068E2A7    jne         0068E2B4
 0068E2A9    movzx       eax,byte ptr [edi+1E]
 0068E2AD    sub         al,21
>0068E2AF    jb          0068E2B4
 0068E2B1    or          esi,10
 0068E2B4    test        edx,edx
>0068E2B6    jne         0068E2C3
 0068E2B8    movzx       eax,byte ptr [edi+1E]
 0068E2BC    sub         al,22
>0068E2BE    jb          0068E2C3
 0068E2C0    or          esi,10
 0068E2C3    cmp         edx,1
>0068E2C6    jne         0068E2F1
 0068E2C8    movzx       ecx,byte ptr [edi+0A]
 0068E2CC    cmp         ecx,2C
>0068E2CF    jbe         0068E2D6
 0068E2D1    call        @BoundErr
 0068E2D6    mov         ebx,dword ptr [ecx*4+7C1EF8]
 0068E2DD    movzx       eax,word ptr [edi+0C]
 0068E2E1    cmp         ebx,eax
>0068E2E3    jl          0068E2EE
 0068E2E5    cmp         eax,dword ptr [ecx*4+7C1E44]
>0068E2EC    jge         0068E2F1
 0068E2EE    or          esi,20
 0068E2F1    test        edx,edx
>0068E2F3    jne         0068E321
 0068E2F5    movzx       ecx,byte ptr [edi+0A]
 0068E2F9    cmp         ecx,0F
>0068E2FC    jbe         0068E303
 0068E2FE    call        @BoundErr
 0068E303    movzx       ebx,word ptr [ecx*2+7C17F6]
 0068E30B    movzx       eax,word ptr [edi+0C]
 0068E30F    cmp         bx,ax
>0068E312    jb          0068E31E
 0068E314    cmp         ax,word ptr [ecx*2+7C17D6]
>0068E31C    jae         0068E321
 0068E31E    or          esi,20
 0068E321    cmp         edx,1
>0068E324    jne         0068E34F
 0068E326    movzx       ecx,byte ptr [edi+0A]
 0068E32A    cmp         ecx,2C
>0068E32D    jbe         0068E334
 0068E32F    call        @BoundErr
 0068E334    mov         ebx,dword ptr [ecx*4+7C2060]
 0068E33B    movzx       eax,word ptr [edi+0E]
 0068E33F    cmp         ebx,eax
>0068E341    jl          0068E34C
 0068E343    cmp         eax,dword ptr [ecx*4+7C1FAC]
>0068E34A    jge         0068E34F
 0068E34C    or          esi,40
 0068E34F    test        edx,edx
>0068E351    jne         0068E37F
 0068E353    movzx       ecx,byte ptr [edi+0A]
 0068E357    cmp         ecx,0F
>0068E35A    jbe         0068E361
 0068E35C    call        @BoundErr
 0068E361    movzx       ebx,word ptr [ecx*2+7C1836]
 0068E369    movzx       eax,word ptr [edi+0E]
 0068E36D    cmp         bx,ax
>0068E370    jb          0068E37C
 0068E372    cmp         ax,word ptr [ecx*2+7C1816]
>0068E37A    jae         0068E37F
 0068E37C    or          esi,40
 0068E37F    cmp         edx,1
>0068E382    jne         0068E3B0
 0068E384    movzx       ecx,byte ptr [edi+0A]
 0068E388    cmp         ecx,2C
>0068E38B    jbe         0068E392
 0068E38D    call        @BoundErr
 0068E392    mov         ebx,dword ptr [ecx*4+7C1EF8]
 0068E399    movzx       eax,word ptr [edi+10]
 0068E39D    cmp         ebx,eax
>0068E39F    jl          0068E3AA
 0068E3A1    cmp         eax,dword ptr [ecx*4+7C1E44]
>0068E3A8    jge         0068E3B0
 0068E3AA    or          esi,80
 0068E3B0    test        edx,edx
>0068E3B2    jne         0068E3E3
 0068E3B4    movzx       ecx,byte ptr [edi+0A]
 0068E3B8    cmp         ecx,0F
>0068E3BB    jbe         0068E3C2
 0068E3BD    call        @BoundErr
 0068E3C2    movzx       ebx,word ptr [ecx*2+7C17F6]
 0068E3CA    movzx       eax,word ptr [edi+10]
 0068E3CE    cmp         bx,ax
>0068E3D1    jb          0068E3DD
 0068E3D3    cmp         ax,word ptr [ecx*2+7C17D6]
>0068E3DB    jae         0068E3E3
 0068E3DD    or          esi,80
 0068E3E3    cmp         edx,1
>0068E3E6    jne         0068E414
 0068E3E8    movzx       ecx,byte ptr [edi+0A]
 0068E3EC    cmp         ecx,2C
>0068E3EF    jbe         0068E3F6
 0068E3F1    call        @BoundErr
 0068E3F6    mov         ebx,dword ptr [ecx*4+7C2060]
 0068E3FD    movzx       eax,word ptr [edi+12]
 0068E401    cmp         ebx,eax
>0068E403    jl          0068E40E
 0068E405    cmp         eax,dword ptr [ecx*4+7C1FAC]
>0068E40C    jge         0068E414
 0068E40E    or          esi,100
 0068E414    test        edx,edx
>0068E416    jne         0068E447
 0068E418    movzx       ecx,byte ptr [edi+0A]
 0068E41C    cmp         ecx,0F
>0068E41F    jbe         0068E426
 0068E421    call        @BoundErr
 0068E426    movzx       ebx,word ptr [ecx*2+7C1836]
 0068E42E    movzx       eax,word ptr [edi+12]
 0068E432    cmp         bx,ax
>0068E435    jb          0068E441
 0068E437    cmp         ax,word ptr [ecx*2+7C1816]
>0068E43F    jae         0068E447
 0068E441    or          esi,100
 0068E447    cmp         edx,1
>0068E44A    jne         0068E478
 0068E44C    movzx       ecx,byte ptr [edi+0A]
 0068E450    cmp         ecx,2C
>0068E453    jbe         0068E45A
 0068E455    call        @BoundErr
 0068E45A    mov         ebx,dword ptr [ecx*4+7C21C8]
 0068E461    movzx       eax,word ptr [edi+14]
 0068E465    cmp         ebx,eax
>0068E467    jl          0068E472
 0068E469    cmp         eax,dword ptr [ecx*4+7C2114]
>0068E470    jge         0068E478
 0068E472    or          esi,200
 0068E478    test        edx,edx
>0068E47A    jne         0068E4AB
 0068E47C    movzx       ecx,byte ptr [edi+0A]
 0068E480    cmp         ecx,0F
>0068E483    jbe         0068E48A
 0068E485    call        @BoundErr
 0068E48A    movzx       ebx,word ptr [ecx*2+7C1876]
 0068E492    movzx       eax,word ptr [edi+14]
 0068E496    cmp         bx,ax
>0068E499    jb          0068E4A5
 0068E49B    cmp         ax,word ptr [ecx*2+7C1856]
>0068E4A3    jae         0068E4AB
 0068E4A5    or          esi,200
 0068E4AB    cmp         edx,1
>0068E4AE    jne         0068E517
 0068E4B0    movzx       eax,byte ptr [edi+0A]
 0068E4B4    mov         ecx,eax
 0068E4B6    movzx       ecx,cl
 0068E4B9    bt          dword ptr ds:[7C2760],ecx;gvar_007C2760
>0068E4C0    jae         0068E4DA
 0068E4C2    movzx       eax,byte ptr [edi+16]
 0068E4C6    movzx       eax,al
 0068E4C9    bt          dword ptr ds:[7C2800],eax;gvar_007C2800
>0068E4D0    jb          0068E517
 0068E4D2    or          esi,400
>0068E4D8    jmp         0068E517
 0068E4DA    add         al,0D8
 0068E4DC    sub         al,2
>0068E4DE    jb          0068E4E5
 0068E4E0    dec         eax
 0068E4E1    sub         al,2
>0068E4E3    jae         0068E501
 0068E4E5    movzx       eax,byte ptr [edi+16]
 0068E4E9    sub         al,4
>0068E4EB    jb          0068E517
 0068E4ED    add         al,9F
 0068E4EF    sub         al,21
>0068E4F1    jb          0068E517
 0068E4F3    add         al,0BD
 0068E4F5    sub         al,21
>0068E4F7    jb          0068E517
 0068E4F9    or          esi,400
>0068E4FF    jmp         0068E517
 0068E501    movzx       eax,byte ptr [edi+16]
 0068E505    movzx       eax,al
 0068E508    bt          dword ptr ds:[7C27E0],eax;gvar_007C27E0
>0068E50F    jb          0068E517
 0068E511    or          esi,400
 0068E517    test        edx,edx
>0068E519    jne         0068E553
 0068E51B    movzx       eax,byte ptr [edi+0A]
 0068E51F    cmp         al,5
>0068E521    jne         0068E539
 0068E523    movzx       edx,byte ptr [edi+16]
 0068E527    movzx       edx,dl
 0068E52A    bt          dword ptr ds:[7C2800],edx;gvar_007C2800
>0068E531    jb          0068E539
 0068E533    or          esi,400
 0068E539    cmp         al,5
>0068E53B    je          0068E553
 0068E53D    movzx       eax,byte ptr [edi+16]
 0068E541    movzx       eax,al
 0068E544    bt          dword ptr ds:[7C27E0],eax;gvar_007C27E0
>0068E54B    jb          0068E553
 0068E54D    or          esi,400
 0068E553    movzx       eax,byte ptr [edi+17]
 0068E557    sub         al,7
>0068E559    jb          0068E561
 0068E55B    or          esi,800
 0068E561    movzx       eax,byte ptr [edi+18]
 0068E565    sub         al,5
>0068E567    jb          0068E56F
 0068E569    or          esi,1000
 0068E56F    movzx       eax,byte ptr [edi+19]
 0068E573    sub         al,4
>0068E575    jb          0068E57D
 0068E577    or          esi,2000
 0068E57D    movzx       eax,byte ptr [edi+1A]
 0068E581    sub         al,3
>0068E583    jb          0068E58B
 0068E585    or          esi,4000
 0068E58B    movzx       eax,byte ptr [edi+1F]
 0068E58F    sub         al,1A
>0068E591    jb          0068E599
 0068E593    or          esi,10000
 0068E599    mov         eax,esi
 0068E59B    add         esp,0DC
 0068E5A1    pop         ebp
 0068E5A2    pop         edi
 0068E5A3    pop         esi
 0068E5A4    pop         ebx
 0068E5A5    ret
*}
end;

//0068E5A8
function TFXPAD.SapSndrVolToInt(s:string):Byte;
begin
{*
 0068E5A8    push        ebp
 0068E5A9    mov         ebp,esp
 0068E5AB    add         esp,0FFFFFFF8
 0068E5AE    push        ebx
 0068E5AF    push        esi
 0068E5B0    mov         dword ptr [ebp-4],edx
 0068E5B3    mov         eax,dword ptr [ebp-4]
 0068E5B6    call        @UStrAddRef
 0068E5BB    xor         eax,eax
 0068E5BD    push        ebp
 0068E5BE    push        68E602
 0068E5C3    push        dword ptr fs:[eax]
 0068E5C6    mov         dword ptr fs:[eax],esp
 0068E5C9    mov         byte ptr [ebp-5],0
 0068E5CD    mov         bl,8
 0068E5CF    mov         esi,7C24C8;^'By dipswitch'
 0068E5D4    mov         eax,dword ptr [ebp-4]
 0068E5D7    mov         edx,dword ptr [esi]
 0068E5D9    call        @UStrEqual
>0068E5DE    jne         0068E5E3
 0068E5E0    mov         byte ptr [ebp-5],bl
 0068E5E3    inc         ebx
 0068E5E4    add         esi,4
 0068E5E7    cmp         bl,0C
>0068E5EA    jne         0068E5D4
 0068E5EC    xor         eax,eax
 0068E5EE    pop         edx
 0068E5EF    pop         ecx
 0068E5F0    pop         ecx
 0068E5F1    mov         dword ptr fs:[eax],edx
 0068E5F4    push        68E609
 0068E5F9    lea         eax,[ebp-4]
 0068E5FC    call        @UStrClr
 0068E601    ret
>0068E602    jmp         @HandleFinally
>0068E607    jmp         0068E5F9
 0068E609    movzx       eax,byte ptr [ebp-5]
 0068E60D    pop         esi
 0068E60E    pop         ebx
 0068E60F    pop         ecx
 0068E610    pop         ecx
 0068E611    pop         ebp
 0068E612    ret
*}
end;

//0068E614
{*procedure TFXPAD.SapIntToSndrVol(value:Byte; ?:?);
begin
 0068E614    push        ebx
 0068E615    push        esi
 0068E616    mov         esi,ecx
 0068E618    mov         ebx,edx
 0068E61A    mov         eax,ebx
 0068E61C    add         al,0F8
 0068E61E    sub         al,4
>0068E620    jae         0068E642
 0068E622    mov         eax,esi
 0068E624    movzx       edx,bl
 0068E627    dec         edx
 0068E628    cmp         edx,0A
>0068E62B    jbe         0068E632
 0068E62D    call        @BoundErr
 0068E632    inc         edx
 0068E633    mov         edx,dword ptr [edx*4+7C24A8];^'By dipswitch'
 0068E63A    call        @UStrAsg
 0068E63F    pop         esi
 0068E640    pop         ebx
 0068E641    ret
 0068E642    mov         eax,esi
 0068E644    mov         edx,68E660;'ERR'
 0068E649    call        @UStrAsg
 0068E64E    pop         esi
 0068E64F    pop         ebx
 0068E650    ret
end;*}

//0068E668
{*procedure TFXPAD.SapDefaultSndrVolumeStr(?:?);
begin
 0068E668    push        ebx
 0068E669    mov         ebx,edx
 0068E66B    mov         eax,ebx
 0068E66D    mov         edx,dword ptr ds:[7C24C8];^'By dipswitch'
 0068E673    call        @UStrAsg
 0068E678    pop         ebx
 0068E679    ret
end;*}

//0068E67C
{*procedure TFXPAD.SapEnvironIntToStr(value:Byte; ?:?);
begin
 0068E67C    push        ebx
 0068E67D    push        esi
 0068E67E    mov         esi,ecx
 0068E680    mov         ebx,edx
 0068E682    mov         eax,ebx
 0068E684    sub         al,9
>0068E686    jae         0068E6A6
 0068E688    mov         eax,esi
 0068E68A    movzx       edx,bl
 0068E68D    cmp         edx,8
>0068E690    jbe         0068E697
 0068E692    call        @BoundErr
 0068E697    mov         edx,dword ptr [edx*4+7C2384];^'Normal'
 0068E69E    call        @UStrAsg
 0068E6A3    pop         esi
 0068E6A4    pop         ebx
 0068E6A5    ret
 0068E6A6    mov         eax,esi
 0068E6A8    mov         edx,68E6C4;'ERR'
 0068E6AD    call        @UStrAsg
 0068E6B2    pop         esi
 0068E6B3    pop         ebx
 0068E6B4    ret
end;*}

//0068E6CC
function TFXPAD.SapEnvironStrToInt(s:string):Byte;
begin
{*
 0068E6CC    push        ebp
 0068E6CD    mov         ebp,esp
 0068E6CF    add         esp,0FFFFFFF8
 0068E6D2    push        ebx
 0068E6D3    push        esi
 0068E6D4    mov         dword ptr [ebp-4],edx
 0068E6D7    mov         eax,dword ptr [ebp-4]
 0068E6DA    call        @UStrAddRef
 0068E6DF    xor         eax,eax
 0068E6E1    push        ebp
 0068E6E2    push        68E726
 0068E6E7    push        dword ptr fs:[eax]
 0068E6EA    mov         dword ptr fs:[eax],esp
 0068E6ED    mov         byte ptr [ebp-5],0
 0068E6F1    xor         ebx,ebx
 0068E6F3    mov         esi,7C2384;^'Normal'
 0068E6F8    mov         eax,dword ptr [ebp-4]
 0068E6FB    mov         edx,dword ptr [esi]
 0068E6FD    call        @UStrEqual
>0068E702    jne         0068E707
 0068E704    mov         byte ptr [ebp-5],bl
 0068E707    inc         ebx
 0068E708    add         esi,4
 0068E70B    cmp         bl,9
>0068E70E    jne         0068E6F8
 0068E710    xor         eax,eax
 0068E712    pop         edx
 0068E713    pop         ecx
 0068E714    pop         ecx
 0068E715    mov         dword ptr fs:[eax],edx
 0068E718    push        68E72D
 0068E71D    lea         eax,[ebp-4]
 0068E720    call        @UStrClr
 0068E725    ret
>0068E726    jmp         @HandleFinally
>0068E72B    jmp         0068E71D
 0068E72D    movzx       eax,byte ptr [ebp-5]
 0068E731    pop         esi
 0068E732    pop         ebx
 0068E733    pop         ecx
 0068E734    pop         ecx
 0068E735    pop         ebp
 0068E736    ret
*}
end;

//0068E738
function TFXPAD.SapUpdateSndrMode(VersionMajor:Integer; VersionMinor:Integer; var ap:TFXADRec):Boolean;
begin
{*
 0068E738    push        ebp
 0068E739    mov         ebp,esp
 0068E73B    push        ebx
 0068E73C    push        esi
 0068E73D    mov         ebx,ecx
 0068E73F    mov         ecx,edx
 0068E741    mov         esi,dword ptr [ebp+8]
 0068E744    movzx       edx,byte ptr [esi+16]
 0068E748    mov         eax,edx
 0068E74A    imul        ecx,ecx,10000
>0068E750    jno         0068E757
 0068E752    call        @IntOver
 0068E757    add         ebx,ecx
>0068E759    jno         0068E760
 0068E75B    call        @IntOver
 0068E760    cmp         ebx,40002
>0068E766    jge         0068E797
 0068E768    movzx       ecx,byte ptr [esi+0A]
 0068E76C    add         cl,0D8
 0068E76F    sub         cl,2
>0068E772    jb          0068E77A
 0068E774    dec         ecx
 0068E775    sub         cl,2
>0068E778    jae         0068E797
 0068E77A    sub         dl,1
>0068E77D    jb          0068E787
>0068E77F    je          0068E78D
 0068E781    dec         dl
>0068E783    je          0068E793
>0068E785    jmp         0068E797
 0068E787    mov         byte ptr [esi+16],6C
>0068E78B    jmp         0068E797
 0068E78D    mov         byte ptr [esi+16],74
>0068E791    jmp         0068E797
 0068E793    mov         byte ptr [esi+16],0D8
 0068E797    cmp         al,byte ptr [esi+16]
 0068E79A    setne       al
 0068E79D    pop         esi
 0068E79E    pop         ebx
 0068E79F    pop         ebp
 0068E7A0    ret         4
*}
end;

//0068E7A4
function TFXPAD.SapUpdateSndrVol(VersionMajor:Integer; VersionMinor:Integer; var ap:TFXADRec):Boolean;
begin
{*
 0068E7A4    push        ebp
 0068E7A5    mov         ebp,esp
 0068E7A7    push        ebx
 0068E7A8    push        esi
 0068E7A9    mov         ebx,ecx
 0068E7AB    mov         ecx,edx
 0068E7AD    mov         esi,dword ptr [ebp+8]
 0068E7B0    movzx       edx,byte ptr [esi+0D9]
 0068E7B7    mov         eax,edx
 0068E7B9    imul        ecx,ecx,10000
>0068E7BF    jno         0068E7C6
 0068E7C1    call        @IntOver
 0068E7C6    add         ebx,ecx
>0068E7C8    jno         0068E7CF
 0068E7CA    call        @IntOver
 0068E7CF    cmp         ebx,40002
>0068E7D5    jge         0068E7F5
 0068E7D7    movzx       ecx,byte ptr [esi+0A]
 0068E7DB    add         cl,0D8
 0068E7DE    sub         cl,2
>0068E7E1    jb          0068E7E9
 0068E7E3    dec         ecx
 0068E7E4    sub         cl,2
>0068E7E7    jae         0068E7F5
 0068E7E9    sub         dl,1
>0068E7EC    jae         0068E7F5
 0068E7EE    mov         byte ptr [esi+0D9],8
 0068E7F5    cmp         al,byte ptr [esi+0D9]
 0068E7FB    setne       al
 0068E7FE    pop         esi
 0068E7FF    pop         ebx
 0068E800    pop         ebp
 0068E801    ret         4
*}
end;

//0068E804
function TFXPAD.SapSysCountHigh(LoopIndx:Byte; SysCount:Integer):Boolean;
begin
{*
 0068E804    push        ebx
 0068E805    push        esi
 0068E806    push        edi
 0068E807    push        ebp
 0068E808    add         esp,0FFFFFFF8
 0068E80B    mov         dword ptr [esp],ecx
 0068E80E    mov         ebx,edx
 0068E810    mov         esi,eax
 0068E812    mov         byte ptr [esp+4],0
 0068E817    mov         byte ptr [esp+5],0
 0068E81C    mov         eax,dword ptr [esp]
 0068E81F    xor         edx,edx
 0068E821    mov         dword ptr [eax],edx
 0068E823    movzx       edi,bl
 0068E826    mov         edx,edi
 0068E828    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 0068E82E    call        TFXPPD.GetControllerLoopType
 0068E833    cmp         eax,4
>0068E836    je          0068E84E
 0068E838    mov         edx,edi
 0068E83A    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 0068E840    call        TFXPPD.GetControllerLoopType
 0068E845    cmp         eax,6
>0068E848    jne         0068E944
 0068E84E    xor         edx,edx
 0068E850    mov         ax,1
 0068E854    movzx       ecx,bl
 0068E857    cmp         ecx,7
>0068E85A    jbe         0068E861
 0068E85C    call        @BoundErr
 0068E861    imul        ecx,ecx,43B3
>0068E867    jno         0068E86E
 0068E869    call        @IntOver
 0068E86E    lea         ecx,[esi+ecx*4]
 0068E871    push        ecx
 0068E872    movzx       ecx,dl
 0068E875    cmp         ecx,1
>0068E878    jbe         0068E87F
 0068E87A    call        @BoundErr
 0068E87F    imul        ecx,ecx,43B3
>0068E885    jno         0068E88C
 0068E887    call        @IntOver
 0068E88C    pop         ebp
 0068E88D    lea         ecx,[ebp+ecx*2]
 0068E891    push        ecx
 0068E892    movzx       ecx,ax
 0068E895    dec         ecx
 0068E896    cmp         ecx,9E
>0068E89C    jbe         0068E8A3
 0068E89E    call        @BoundErr
 0068E8A3    inc         ecx
 0068E8A4    imul        edi,ecx,6D
>0068E8A7    jno         0068E8AE
 0068E8A9    call        @IntOver
 0068E8AE    pop         ecx
 0068E8AF    cmp         byte ptr [ecx+edi*2-0CC],0
>0068E8B7    je          0068E91B
 0068E8B9    movzx       ecx,bl
 0068E8BC    cmp         ecx,7
>0068E8BF    jbe         0068E8C6
 0068E8C1    call        @BoundErr
 0068E8C6    imul        ecx,ecx,43B3
>0068E8CC    jno         0068E8D3
 0068E8CE    call        @IntOver
 0068E8D3    lea         ecx,[esi+ecx*4]
 0068E8D6    push        ecx
 0068E8D7    movzx       ecx,dl
 0068E8DA    cmp         ecx,1
>0068E8DD    jbe         0068E8E4
 0068E8DF    call        @BoundErr
 0068E8E4    imul        ecx,ecx,43B3
>0068E8EA    jno         0068E8F1
 0068E8EC    call        @IntOver
 0068E8F1    pop         ebp
 0068E8F2    lea         ecx,[ebp+ecx*2]
 0068E8F6    push        ecx
 0068E8F7    pop         ecx
 0068E8F8    movzx       ecx,byte ptr [ecx+edi*2-0CB]
 0068E900    sub         cl,1
>0068E903    jb          0068E90E
>0068E905    jne         0068E91B
 0068E907    mov         byte ptr [esp+5],1
>0068E90C    jmp         0068E91B
 0068E90E    mov         ecx,dword ptr [esp]
 0068E911    add         dword ptr [ecx],1
>0068E914    jno         0068E91B
 0068E916    call        @IntOver
 0068E91B    inc         eax
 0068E91C    cmp         ax,0A0
>0068E920    jne         0068E854
 0068E926    inc         edx
 0068E927    cmp         dl,2
>0068E92A    jne         0068E850
 0068E930    cmp         byte ptr [esp+5],0
>0068E935    je          0068E944
 0068E937    mov         eax,dword ptr [esp]
 0068E93A    cmp         dword ptr [eax],14
>0068E93D    jle         0068E944
 0068E93F    mov         byte ptr [esp+4],1
 0068E944    movzx       eax,byte ptr [esp+4]
 0068E949    pop         ecx
 0068E94A    pop         edx
 0068E94B    pop         ebp
 0068E94C    pop         edi
 0068E94D    pop         esi
 0068E94E    pop         ebx
 0068E94F    ret
*}
end;

//0068E950
function TFXPAD.ApoTypeToInt(s:string):Word;
begin
{*
 0068E950    push        ebp
 0068E951    mov         ebp,esp
 0068E953    push        ecx
 0068E954    push        ebx
 0068E955    push        esi
 0068E956    push        edi
 0068E957    mov         dword ptr [ebp-4],edx
 0068E95A    mov         eax,dword ptr [ebp-4]
 0068E95D    call        @UStrAddRef
 0068E962    xor         eax,eax
 0068E964    push        ebp
 0068E965    push        68F13C
 0068E96A    push        dword ptr fs:[eax]
 0068E96D    mov         dword ptr fs:[eax],esp
 0068E970    xor         esi,esi
 0068E972    xor         ebx,ebx
 0068E974    mov         edi,7C14E8;^'Not in use'
 0068E979    mov         eax,dword ptr [ebp-4]
 0068E97C    mov         edx,dword ptr [edi]
 0068E97E    call        @UStrEqual
>0068E983    jne         0068EDD0
 0068E989    movzx       eax,bl
 0068E98C    mov         edx,100
 0068E991    mul         eax,edx
 0068E993    mov         esi,eax
>0068E995    jno         0068E99C
 0068E997    call        @IntOver
 0068E99C    cmp         esi,0FFFF
>0068E9A2    jbe         0068E9A9
 0068E9A4    call        @BoundErr
 0068E9A9    movzx       eax,bl
 0068E9AC    cmp         eax,1C
>0068E9AF    ja          0068F126
 0068E9B5    jmp         dword ptr [eax*4+68E9BC]
 0068E9B5    dd          0068EA30
 0068E9B5    dd          0068EA50
 0068E9B5    dd          0068EA70
 0068E9B5    dd          0068EA90
 0068E9B5    dd          0068EAB0
 0068E9B5    dd          0068EAD0
 0068E9B5    dd          0068EAF0
 0068E9B5    dd          0068EB30
 0068E9B5    dd          0068EB50
 0068E9B5    dd          0068EB70
 0068E9B5    dd          0068EB90
 0068E9B5    dd          0068EBB0
 0068E9B5    dd          0068EBD0
 0068E9B5    dd          0068EBF0
 0068E9B5    dd          0068EC10
 0068E9B5    dd          0068EC30
 0068E9B5    dd          0068EC50
 0068E9B5    dd          0068EC70
 0068E9B5    dd          0068EC90
 0068E9B5    dd          0068ECB0
 0068E9B5    dd          0068ECD0
 0068E9B5    dd          0068ECF0
 0068E9B5    dd          0068ED10
 0068E9B5    dd          0068ED30
 0068E9B5    dd          0068ED50
 0068E9B5    dd          0068ED70
 0068E9B5    dd          0068ED90
 0068E9B5    dd          0068EDB0
 0068E9B5    dd          0068EB10
 0068EA30    movzx       eax,si
 0068EA33    add         eax,0
>0068EA36    jno         0068EA3D
 0068EA38    call        @IntOver
 0068EA3D    cmp         eax,0FFFF
>0068EA42    jbe         0068EA49
 0068EA44    call        @BoundErr
 0068EA49    mov         esi,eax
>0068EA4B    jmp         0068F126
 0068EA50    movzx       eax,si
 0068EA53    add         eax,0
>0068EA56    jno         0068EA5D
 0068EA58    call        @IntOver
 0068EA5D    cmp         eax,0FFFF
>0068EA62    jbe         0068EA69
 0068EA64    call        @BoundErr
 0068EA69    mov         esi,eax
>0068EA6B    jmp         0068F126
 0068EA70    movzx       eax,si
 0068EA73    add         eax,0
>0068EA76    jno         0068EA7D
 0068EA78    call        @IntOver
 0068EA7D    cmp         eax,0FFFF
>0068EA82    jbe         0068EA89
 0068EA84    call        @BoundErr
 0068EA89    mov         esi,eax
>0068EA8B    jmp         0068F126
 0068EA90    movzx       eax,si
 0068EA93    add         eax,0
>0068EA96    jno         0068EA9D
 0068EA98    call        @IntOver
 0068EA9D    cmp         eax,0FFFF
>0068EAA2    jbe         0068EAA9
 0068EAA4    call        @BoundErr
 0068EAA9    mov         esi,eax
>0068EAAB    jmp         0068F126
 0068EAB0    movzx       eax,si
 0068EAB3    add         eax,2
>0068EAB6    jno         0068EABD
 0068EAB8    call        @IntOver
 0068EABD    cmp         eax,0FFFF
>0068EAC2    jbe         0068EAC9
 0068EAC4    call        @BoundErr
 0068EAC9    mov         esi,eax
>0068EACB    jmp         0068F126
 0068EAD0    movzx       eax,si
 0068EAD3    add         eax,0
>0068EAD6    jno         0068EADD
 0068EAD8    call        @IntOver
 0068EADD    cmp         eax,0FFFF
>0068EAE2    jbe         0068EAE9
 0068EAE4    call        @BoundErr
 0068EAE9    mov         esi,eax
>0068EAEB    jmp         0068F126
 0068EAF0    movzx       eax,si
 0068EAF3    add         eax,0
>0068EAF6    jno         0068EAFD
 0068EAF8    call        @IntOver
 0068EAFD    cmp         eax,0FFFF
>0068EB02    jbe         0068EB09
 0068EB04    call        @BoundErr
 0068EB09    mov         esi,eax
>0068EB0B    jmp         0068F126
 0068EB10    movzx       eax,si
 0068EB13    add         eax,0
>0068EB16    jno         0068EB1D
 0068EB18    call        @IntOver
 0068EB1D    cmp         eax,0FFFF
>0068EB22    jbe         0068EB29
 0068EB24    call        @BoundErr
 0068EB29    mov         esi,eax
>0068EB2B    jmp         0068F126
 0068EB30    movzx       eax,si
 0068EB33    add         eax,2
>0068EB36    jno         0068EB3D
 0068EB38    call        @IntOver
 0068EB3D    cmp         eax,0FFFF
>0068EB42    jbe         0068EB49
 0068EB44    call        @BoundErr
 0068EB49    mov         esi,eax
>0068EB4B    jmp         0068F126
 0068EB50    movzx       eax,si
 0068EB53    add         eax,2
>0068EB56    jno         0068EB5D
 0068EB58    call        @IntOver
 0068EB5D    cmp         eax,0FFFF
>0068EB62    jbe         0068EB69
 0068EB64    call        @BoundErr
 0068EB69    mov         esi,eax
>0068EB6B    jmp         0068F126
 0068EB70    movzx       eax,si
 0068EB73    add         eax,0
>0068EB76    jno         0068EB7D
 0068EB78    call        @IntOver
 0068EB7D    cmp         eax,0FFFF
>0068EB82    jbe         0068EB89
 0068EB84    call        @BoundErr
 0068EB89    mov         esi,eax
>0068EB8B    jmp         0068F126
 0068EB90    movzx       eax,si
 0068EB93    add         eax,2
>0068EB96    jno         0068EB9D
 0068EB98    call        @IntOver
 0068EB9D    cmp         eax,0FFFF
>0068EBA2    jbe         0068EBA9
 0068EBA4    call        @BoundErr
 0068EBA9    mov         esi,eax
>0068EBAB    jmp         0068F126
 0068EBB0    movzx       eax,si
 0068EBB3    add         eax,0
>0068EBB6    jno         0068EBBD
 0068EBB8    call        @IntOver
 0068EBBD    cmp         eax,0FFFF
>0068EBC2    jbe         0068EBC9
 0068EBC4    call        @BoundErr
 0068EBC9    mov         esi,eax
>0068EBCB    jmp         0068F126
 0068EBD0    movzx       eax,si
 0068EBD3    add         eax,2
>0068EBD6    jno         0068EBDD
 0068EBD8    call        @IntOver
 0068EBDD    cmp         eax,0FFFF
>0068EBE2    jbe         0068EBE9
 0068EBE4    call        @BoundErr
 0068EBE9    mov         esi,eax
>0068EBEB    jmp         0068F126
 0068EBF0    movzx       eax,si
 0068EBF3    add         eax,2
>0068EBF6    jno         0068EBFD
 0068EBF8    call        @IntOver
 0068EBFD    cmp         eax,0FFFF
>0068EC02    jbe         0068EC09
 0068EC04    call        @BoundErr
 0068EC09    mov         esi,eax
>0068EC0B    jmp         0068F126
 0068EC10    movzx       eax,si
 0068EC13    add         eax,2
>0068EC16    jno         0068EC1D
 0068EC18    call        @IntOver
 0068EC1D    cmp         eax,0FFFF
>0068EC22    jbe         0068EC29
 0068EC24    call        @BoundErr
 0068EC29    mov         esi,eax
>0068EC2B    jmp         0068F126
 0068EC30    movzx       eax,si
 0068EC33    add         eax,2
>0068EC36    jno         0068EC3D
 0068EC38    call        @IntOver
 0068EC3D    cmp         eax,0FFFF
>0068EC42    jbe         0068EC49
 0068EC44    call        @BoundErr
 0068EC49    mov         esi,eax
>0068EC4B    jmp         0068F126
 0068EC50    movzx       eax,si
 0068EC53    add         eax,2
>0068EC56    jno         0068EC5D
 0068EC58    call        @IntOver
 0068EC5D    cmp         eax,0FFFF
>0068EC62    jbe         0068EC69
 0068EC64    call        @BoundErr
 0068EC69    mov         esi,eax
>0068EC6B    jmp         0068F126
 0068EC70    movzx       eax,si
 0068EC73    add         eax,2
>0068EC76    jno         0068EC7D
 0068EC78    call        @IntOver
 0068EC7D    cmp         eax,0FFFF
>0068EC82    jbe         0068EC89
 0068EC84    call        @BoundErr
 0068EC89    mov         esi,eax
>0068EC8B    jmp         0068F126
 0068EC90    movzx       eax,si
 0068EC93    add         eax,2
>0068EC96    jno         0068EC9D
 0068EC98    call        @IntOver
 0068EC9D    cmp         eax,0FFFF
>0068ECA2    jbe         0068ECA9
 0068ECA4    call        @BoundErr
 0068ECA9    mov         esi,eax
>0068ECAB    jmp         0068F126
 0068ECB0    movzx       eax,si
 0068ECB3    add         eax,2
>0068ECB6    jno         0068ECBD
 0068ECB8    call        @IntOver
 0068ECBD    cmp         eax,0FFFF
>0068ECC2    jbe         0068ECC9
 0068ECC4    call        @BoundErr
 0068ECC9    mov         esi,eax
>0068ECCB    jmp         0068F126
 0068ECD0    movzx       eax,si
 0068ECD3    add         eax,2
>0068ECD6    jno         0068ECDD
 0068ECD8    call        @IntOver
 0068ECDD    cmp         eax,0FFFF
>0068ECE2    jbe         0068ECE9
 0068ECE4    call        @BoundErr
 0068ECE9    mov         esi,eax
>0068ECEB    jmp         0068F126
 0068ECF0    movzx       eax,si
 0068ECF3    add         eax,2
>0068ECF6    jno         0068ECFD
 0068ECF8    call        @IntOver
 0068ECFD    cmp         eax,0FFFF
>0068ED02    jbe         0068ED09
 0068ED04    call        @BoundErr
 0068ED09    mov         esi,eax
>0068ED0B    jmp         0068F126
 0068ED10    movzx       eax,si
 0068ED13    add         eax,2
>0068ED16    jno         0068ED1D
 0068ED18    call        @IntOver
 0068ED1D    cmp         eax,0FFFF
>0068ED22    jbe         0068ED29
 0068ED24    call        @BoundErr
 0068ED29    mov         esi,eax
>0068ED2B    jmp         0068F126
 0068ED30    movzx       eax,si
 0068ED33    add         eax,3
>0068ED36    jno         0068ED3D
 0068ED38    call        @IntOver
 0068ED3D    cmp         eax,0FFFF
>0068ED42    jbe         0068ED49
 0068ED44    call        @BoundErr
 0068ED49    mov         esi,eax
>0068ED4B    jmp         0068F126
 0068ED50    movzx       eax,si
 0068ED53    add         eax,0
>0068ED56    jno         0068ED5D
 0068ED58    call        @IntOver
 0068ED5D    cmp         eax,0FFFF
>0068ED62    jbe         0068ED69
 0068ED64    call        @BoundErr
 0068ED69    mov         esi,eax
>0068ED6B    jmp         0068F126
 0068ED70    movzx       eax,si
 0068ED73    add         eax,0
>0068ED76    jno         0068ED7D
 0068ED78    call        @IntOver
 0068ED7D    cmp         eax,0FFFF
>0068ED82    jbe         0068ED89
 0068ED84    call        @BoundErr
 0068ED89    mov         esi,eax
>0068ED8B    jmp         0068F126
 0068ED90    movzx       eax,si
 0068ED93    add         eax,0
>0068ED96    jno         0068ED9D
 0068ED98    call        @IntOver
 0068ED9D    cmp         eax,0FFFF
>0068EDA2    jbe         0068EDA9
 0068EDA4    call        @BoundErr
 0068EDA9    mov         esi,eax
>0068EDAB    jmp         0068F126
 0068EDB0    movzx       eax,si
 0068EDB3    add         eax,0
>0068EDB6    jno         0068EDBD
 0068EDB8    call        @IntOver
 0068EDBD    cmp         eax,0FFFF
>0068EDC2    jbe         0068EDC9
 0068EDC4    call        @BoundErr
 0068EDC9    mov         esi,eax
>0068EDCB    jmp         0068F126
 0068EDD0    inc         ebx
 0068EDD1    add         edi,4
 0068EDD4    cmp         bl,1D
>0068EDD7    jne         0068E979
 0068EDDD    xor         ebx,ebx
 0068EDDF    mov         edi,7C1404;^'Ionisation sensor (Intellia)'
 0068EDE4    mov         eax,dword ptr [ebp-4]
 0068EDE7    mov         edx,dword ptr [edi]
 0068EDE9    call        @UStrEqual
>0068EDEE    jne         0068EE16
 0068EDF0    movzx       esi,bl
 0068EDF3    add         esi,100
>0068EDF9    jno         0068EE00
 0068EDFB    call        @IntOver
 0068EE00    cmp         esi,0FFFF
>0068EE06    jbe         0068F126
 0068EE0C    call        @BoundErr
>0068EE11    jmp         0068F126
 0068EE16    inc         ebx
 0068EE17    add         edi,4
 0068EE1A    cmp         bl,4
>0068EE1D    jne         0068EDE4
 0068EE1F    xor         ebx,ebx
 0068EE21    mov         edi,7C1414;^'Optical sensor (Intellia)'
 0068EE26    mov         eax,dword ptr [ebp-4]
 0068EE29    mov         edx,dword ptr [edi]
 0068EE2B    call        @UStrEqual
>0068EE30    jne         0068EE58
 0068EE32    movzx       esi,bl
 0068EE35    add         esi,200
>0068EE3B    jno         0068EE42
 0068EE3D    call        @IntOver
 0068EE42    cmp         esi,0FFFF
>0068EE48    jbe         0068F126
 0068EE4E    call        @BoundErr
>0068EE53    jmp         0068F126
 0068EE58    inc         ebx
 0068EE59    add         edi,4
 0068EE5C    cmp         bl,5
>0068EE5F    jne         0068EE26
 0068EE61    xor         ebx,ebx
 0068EE63    mov         edi,7C1428;^'Heat sensor (Intellia)'
 0068EE68    mov         eax,dword ptr [ebp-4]
 0068EE6B    mov         edx,dword ptr [edi]
 0068EE6D    call        @UStrEqual
>0068EE72    jne         0068EE9A
 0068EE74    movzx       esi,bl
 0068EE77    add         esi,300
>0068EE7D    jno         0068EE84
 0068EE7F    call        @IntOver
 0068EE84    cmp         esi,0FFFF
>0068EE8A    jbe         0068F126
 0068EE90    call        @BoundErr
>0068EE95    jmp         0068F126
 0068EE9A    inc         ebx
 0068EE9B    add         edi,4
 0068EE9E    cmp         bl,5
>0068EEA1    jne         0068EE68
 0068EEA3    xor         ebx,ebx
 0068EEA5    mov         edi,7C143C;^'High temp. (Intellia)'
 0068EEAA    mov         eax,dword ptr [ebp-4]
 0068EEAD    mov         edx,dword ptr [edi]
 0068EEAF    call        @UStrEqual
>0068EEB4    jne         0068EEDC
 0068EEB6    movzx       esi,bl
 0068EEB9    add         esi,400
>0068EEBF    jno         0068EEC6
 0068EEC1    call        @IntOver
 0068EEC6    cmp         esi,0FFFF
>0068EECC    jbe         0068F126
 0068EED2    call        @BoundErr
>0068EED7    jmp         0068F126
 0068EEDC    inc         ebx
 0068EEDD    add         edi,4
 0068EEE0    cmp         bl,5
>0068EEE3    jne         0068EEAA
 0068EEE5    xor         ebx,ebx
 0068EEE7    mov         edi,7C1450;^'Multisensor (Intellia)'
 0068EEEC    mov         eax,dword ptr [ebp-4]
 0068EEEF    mov         edx,dword ptr [edi]
 0068EEF1    call        @UStrEqual
>0068EEF6    jne         0068EF1E
 0068EEF8    movzx       esi,bl
 0068EEFB    add         esi,500
>0068EF01    jno         0068EF08
 0068EF03    call        @IntOver
 0068EF08    cmp         esi,0FFFF
>0068EF0E    jbe         0068F126
 0068EF14    call        @BoundErr
>0068EF19    jmp         0068F126
 0068EF1E    inc         ebx
 0068EF1F    add         edi,4
 0068EF22    cmp         bl,5
>0068EF25    jne         0068EEEC
 0068EF27    xor         ebx,ebx
 0068EF29    mov         edi,7C1464;^'CO sensor (Intellia)'
 0068EF2E    mov         eax,dword ptr [ebp-4]
 0068EF31    mov         edx,dword ptr [edi]
 0068EF33    call        @UStrEqual
>0068EF38    jne         0068EF60
 0068EF3A    movzx       esi,bl
 0068EF3D    add         esi,600
>0068EF43    jno         0068EF4A
 0068EF45    call        @IntOver
 0068EF4A    cmp         esi,0FFFF
>0068EF50    jbe         0068F126
 0068EF56    call        @BoundErr
>0068EF5B    jmp         0068F126
 0068EF60    inc         ebx
 0068EF61    add         edi,4
 0068EF64    cmp         bl,2
>0068EF67    jne         0068EF2E
 0068EF69    xor         ebx,ebx
 0068EF6B    mov         edi,7C146C;^'CO-Heat sensor (Intellia)'
 0068EF70    mov         eax,dword ptr [ebp-4]
 0068EF73    mov         edx,dword ptr [edi]
 0068EF75    call        @UStrEqual
>0068EF7A    jne         0068EFA2
 0068EF7C    movzx       esi,bl
 0068EF7F    add         esi,1C00
>0068EF85    jno         0068EF8C
 0068EF87    call        @IntOver
 0068EF8C    cmp         esi,0FFFF
>0068EF92    jbe         0068F126
 0068EF98    call        @BoundErr
>0068EF9D    jmp         0068F126
 0068EFA2    inc         ebx
 0068EFA3    add         edi,4
 0068EFA6    cmp         bl,2
>0068EFA9    jne         0068EF70
 0068EFAB    xor         ebx,ebx
 0068EFAD    mov         edi,7C1474;^'IO module (Intellia)'
 0068EFB2    mov         eax,dword ptr [ebp-4]
 0068EFB5    mov         edx,dword ptr [edi]
 0068EFB7    call        @UStrEqual
>0068EFBC    jne         0068EFE4
 0068EFBE    movzx       esi,bl
 0068EFC1    add         esi,1300
>0068EFC7    jno         0068EFCE
 0068EFC9    call        @IntOver
 0068EFCE    cmp         esi,0FFFF
>0068EFD4    jbe         0068F126
 0068EFDA    call        @BoundErr
>0068EFDF    jmp         0068F126
 0068EFE4    inc         ebx
 0068EFE5    add         edi,4
 0068EFE8    cmp         bl,5
>0068EFEB    jne         0068EFB2
 0068EFED    xor         ebx,ebx
 0068EFEF    mov         edi,7C1488;^'Sounder (Intellia)'
 0068EFF4    mov         eax,dword ptr [ebp-4]
 0068EFF7    mov         edx,dword ptr [edi]
 0068EFF9    call        @UStrEqual
>0068EFFE    jne         0068F026
 0068F000    movzx       esi,bl
 0068F003    add         esi,1500
>0068F009    jno         0068F010
 0068F00B    call        @IntOver
 0068F010    cmp         esi,0FFFF
>0068F016    jbe         0068F126
 0068F01C    call        @BoundErr
>0068F021    jmp         0068F126
 0068F026    inc         ebx
 0068F027    add         edi,4
 0068F02A    cmp         bl,5
>0068F02D    jne         0068EFF4
 0068F02F    xor         ebx,ebx
 0068F031    mov         edi,7C149C;^'Sounder Beacon (Intellia)'
 0068F036    mov         eax,dword ptr [ebp-4]
 0068F039    mov         edx,dword ptr [edi]
 0068F03B    call        @UStrEqual
>0068F040    jne         0068F068
 0068F042    movzx       esi,bl
 0068F045    add         esi,1900
>0068F04B    jno         0068F052
 0068F04D    call        @IntOver
 0068F052    cmp         esi,0FFFF
>0068F058    jbe         0068F126
 0068F05E    call        @BoundErr
>0068F063    jmp         0068F126
 0068F068    inc         ebx
 0068F069    add         edi,4
 0068F06C    cmp         bl,2
>0068F06F    jne         0068F036
 0068F071    xor         ebx,ebx
 0068F073    mov         edi,7C14A4;^'Voice Sounder Beacon (Intellia)'
 0068F078    mov         eax,dword ptr [ebp-4]
 0068F07B    mov         edx,dword ptr [edi]
 0068F07D    call        @UStrEqual
>0068F082    jne         0068F0A7
 0068F084    movzx       esi,bl
 0068F087    add         esi,1A00
>0068F08D    jno         0068F094
 0068F08F    call        @IntOver
 0068F094    cmp         esi,0FFFF
>0068F09A    jbe         0068F126
 0068F0A0    call        @BoundErr
>0068F0A5    jmp         0068F126
 0068F0A7    inc         ebx
 0068F0A8    add         edi,4
 0068F0AB    cmp         bl,2
>0068F0AE    jne         0068F078
 0068F0B0    xor         ebx,ebx
 0068F0B2    mov         edi,7C14AC;^'Voice Sounder (Intellia)'
 0068F0B7    mov         eax,dword ptr [ebp-4]
 0068F0BA    mov         edx,dword ptr [edi]
 0068F0BC    call        @UStrEqual
>0068F0C1    jne         0068F0E2
 0068F0C3    movzx       esi,bl
 0068F0C6    add         esi,1B00
>0068F0CC    jno         0068F0D3
 0068F0CE    call        @IntOver
 0068F0D3    cmp         esi,0FFFF
>0068F0D9    jbe         0068F126
 0068F0DB    call        @BoundErr
>0068F0E0    jmp         0068F126
 0068F0E2    inc         ebx
 0068F0E3    add         edi,4
 0068F0E6    cmp         bl,2
>0068F0E9    jne         0068F0B7
 0068F0EB    xor         ebx,ebx
 0068F0ED    mov         edi,7C14B4;^'Manual call point (Intellia)'
 0068F0F2    mov         eax,dword ptr [ebp-4]
 0068F0F5    mov         edx,dword ptr [edi]
 0068F0F7    call        @UStrEqual
>0068F0FC    jne         0068F11D
 0068F0FE    movzx       esi,bl
 0068F101    add         esi,0B00
>0068F107    jno         0068F10E
 0068F109    call        @IntOver
 0068F10E    cmp         esi,0FFFF
>0068F114    jbe         0068F126
 0068F116    call        @BoundErr
>0068F11B    jmp         0068F126
 0068F11D    inc         ebx
 0068F11E    add         edi,4
 0068F121    cmp         bl,5
>0068F124    jne         0068F0F2
 0068F126    xor         eax,eax
 0068F128    pop         edx
 0068F129    pop         ecx
 0068F12A    pop         ecx
 0068F12B    mov         dword ptr fs:[eax],edx
 0068F12E    push        68F143
 0068F133    lea         eax,[ebp-4]
 0068F136    call        @UStrClr
 0068F13B    ret
>0068F13C    jmp         @HandleFinally
>0068F141    jmp         0068F133
 0068F143    mov         eax,esi
 0068F145    pop         edi
 0068F146    pop         esi
 0068F147    pop         ebx
 0068F148    pop         ecx
 0068F149    pop         ebp
 0068F14A    ret
*}
end;

//0068F14C
procedure TFXPAD.ApoIntToType(value:Word; ?:UnicodeString);
begin
{*
 0068F14C    push        ebp
 0068F14D    mov         ebp,esp
 0068F14F    push        ecx
 0068F150    push        ebx
 0068F151    push        esi
 0068F152    push        edi
 0068F153    mov         dword ptr [ebp-4],ecx
 0068F156    mov         ebx,edx
 0068F158    xor         eax,eax
 0068F15A    push        ebp
 0068F15B    push        68F51C
 0068F160    push        dword ptr fs:[eax]
 0068F163    mov         dword ptr fs:[eax],esp
 0068F166    mov         eax,ebx
 0068F168    shr         ax,8
 0068F16C    movzx       eax,ax
 0068F16F    cmp         eax,1C
>0068F172    ja          0068F505
 0068F178    jmp         dword ptr [eax*4+68F17F]
 0068F178    dd          0068F1F3
 0068F178    dd          0068F206
 0068F178    dd          0068F22C
 0068F178    dd          0068F252
 0068F178    dd          0068F278
 0068F178    dd          0068F29E
 0068F178    dd          0068F2C4
 0068F178    dd          0068F310
 0068F178    dd          0068F323
 0068F178    dd          0068F336
 0068F178    dd          0068F349
 0068F178    dd          0068F35C
 0068F178    dd          0068F382
 0068F178    dd          0068F395
 0068F178    dd          0068F3A8
 0068F178    dd          0068F3BB
 0068F178    dd          0068F3CE
 0068F178    dd          0068F3E1
 0068F178    dd          0068F3F4
 0068F178    dd          0068F407
 0068F178    dd          0068F42D
 0068F178    dd          0068F440
 0068F178    dd          0068F466
 0068F178    dd          0068F479
 0068F178    dd          0068F48C
 0068F178    dd          0068F49C
 0068F178    dd          0068F4BF
 0068F178    dd          0068F4E2
 0068F178    dd          0068F2EA
 0068F1F3    mov         eax,dword ptr [ebp-4]
 0068F1F6    mov         edx,dword ptr ds:[7C14E8];^'Not in use'
 0068F1FC    call        @UStrAsg
>0068F201    jmp         0068F512
 0068F206    mov         eax,dword ptr [ebp-4]
 0068F209    and         bx,0FF
 0068F20E    movzx       edx,bx
 0068F211    cmp         edx,3
>0068F214    jbe         0068F21B
 0068F216    call        @BoundErr
 0068F21B    mov         edx,dword ptr [edx*4+7C1404];^'Ionisation sensor (Intellia)'
 0068F222    call        @UStrAsg
>0068F227    jmp         0068F512
 0068F22C    mov         eax,dword ptr [ebp-4]
 0068F22F    and         bx,0FF
 0068F234    movzx       edx,bx
 0068F237    cmp         edx,4
>0068F23A    jbe         0068F241
 0068F23C    call        @BoundErr
 0068F241    mov         edx,dword ptr [edx*4+7C1414];^'Optical sensor (Intellia)'
 0068F248    call        @UStrAsg
>0068F24D    jmp         0068F512
 0068F252    mov         eax,dword ptr [ebp-4]
 0068F255    and         bx,0FF
 0068F25A    movzx       edx,bx
 0068F25D    cmp         edx,4
>0068F260    jbe         0068F267
 0068F262    call        @BoundErr
 0068F267    mov         edx,dword ptr [edx*4+7C1428];^'Heat sensor (Intellia)'
 0068F26E    call        @UStrAsg
>0068F273    jmp         0068F512
 0068F278    mov         eax,dword ptr [ebp-4]
 0068F27B    and         bx,0FF
 0068F280    movzx       edx,bx
 0068F283    cmp         edx,4
>0068F286    jbe         0068F28D
 0068F288    call        @BoundErr
 0068F28D    mov         edx,dword ptr [edx*4+7C143C];^'High temp. (Intellia)'
 0068F294    call        @UStrAsg
>0068F299    jmp         0068F512
 0068F29E    mov         eax,dword ptr [ebp-4]
 0068F2A1    and         bx,0FF
 0068F2A6    movzx       edx,bx
 0068F2A9    cmp         edx,4
>0068F2AC    jbe         0068F2B3
 0068F2AE    call        @BoundErr
 0068F2B3    mov         edx,dword ptr [edx*4+7C1450];^'Multisensor (Intellia)'
 0068F2BA    call        @UStrAsg
>0068F2BF    jmp         0068F512
 0068F2C4    mov         eax,dword ptr [ebp-4]
 0068F2C7    and         bx,0FF
 0068F2CC    movzx       edx,bx
 0068F2CF    cmp         edx,1
>0068F2D2    jbe         0068F2D9
 0068F2D4    call        @BoundErr
 0068F2D9    mov         edx,dword ptr [edx*4+7C1464];^'CO sensor (Intellia)'
 0068F2E0    call        @UStrAsg
>0068F2E5    jmp         0068F512
 0068F2EA    mov         eax,dword ptr [ebp-4]
 0068F2ED    and         bx,0FF
 0068F2F2    movzx       edx,bx
 0068F2F5    cmp         edx,1
>0068F2F8    jbe         0068F2FF
 0068F2FA    call        @BoundErr
 0068F2FF    mov         edx,dword ptr [edx*4+7C146C];^'CO-Heat sensor (Intellia)'
 0068F306    call        @UStrAsg
>0068F30B    jmp         0068F512
 0068F310    mov         eax,dword ptr [ebp-4]
 0068F313    mov         edx,dword ptr ds:[7C1504];^'Beam sensor'
 0068F319    call        @UStrAsg
>0068F31E    jmp         0068F512
 0068F323    mov         eax,dword ptr [ebp-4]
 0068F326    mov         edx,dword ptr ds:[7C1508];^'Flame sensor'
 0068F32C    call        @UStrAsg
>0068F331    jmp         0068F512
 0068F336    mov         eax,dword ptr [ebp-4]
 0068F339    mov         edx,dword ptr ds:[7C150C];^'Any type'
 0068F33F    call        @UStrAsg
>0068F344    jmp         0068F512
 0068F349    mov         eax,dword ptr [ebp-4]
 0068F34C    mov         edx,dword ptr ds:[7C1510];^'Conv. zone mod.'
 0068F352    call        @UStrAsg
>0068F357    jmp         0068F512
 0068F35C    mov         eax,dword ptr [ebp-4]
 0068F35F    and         bx,0FF
 0068F364    movzx       edx,bx
 0068F367    cmp         edx,4
>0068F36A    jbe         0068F371
 0068F36C    call        @BoundErr
 0068F371    mov         edx,dword ptr [edx*4+7C14B4];^'Manual call point (Intellia)'
 0068F378    call        @UStrAsg
>0068F37D    jmp         0068F512
 0068F382    mov         eax,dword ptr [ebp-4]
 0068F385    mov         edx,dword ptr ds:[7C1518];^'Switch mon. w. int.'
 0068F38B    call        @UStrAsg
>0068F390    jmp         0068F512
 0068F395    mov         eax,dword ptr [ebp-4]
 0068F398    mov         edx,dword ptr ds:[7C151C];^'Switch monitor'
 0068F39E    call        @UStrAsg
>0068F3A3    jmp         0068F512
 0068F3A8    mov         eax,dword ptr [ebp-4]
 0068F3AB    mov         edx,dword ptr ds:[7C1520];^'Switch monitor plus'
 0068F3B1    call        @UStrAsg
>0068F3B6    jmp         0068F512
 0068F3BB    mov         eax,dword ptr [ebp-4]
 0068F3BE    mov         edx,dword ptr ds:[7C1524];^'Switch monitor mini'
 0068F3C4    call        @UStrAsg
>0068F3C9    jmp         0068F512
 0068F3CE    mov         eax,dword ptr [ebp-4]
 0068F3D1    mov         edx,dword ptr ds:[7C1528];^'IO 1 output'
 0068F3D7    call        @UStrAsg
>0068F3DC    jmp         0068F512
 0068F3E1    mov         eax,dword ptr [ebp-4]
 0068F3E4    mov         edx,dword ptr ds:[7C152C];^'IO 1 input, 1 output'
 0068F3EA    call        @UStrAsg
>0068F3EF    jmp         0068F512
 0068F3F4    mov         eax,dword ptr [ebp-4]
 0068F3F7    mov         edx,dword ptr ds:[7C1530];^'IO 2 inputs, 1 output'
 0068F3FD    call        @UStrAsg
>0068F402    jmp         0068F512
 0068F407    mov         eax,dword ptr [ebp-4]
 0068F40A    and         bx,0FF
 0068F40F    movzx       edx,bx
 0068F412    cmp         edx,4
>0068F415    jbe         0068F41C
 0068F417    call        @BoundErr
 0068F41C    mov         edx,dword ptr [edx*4+7C1474];^'IO module (Intellia)'
 0068F423    call        @UStrAsg
>0068F428    jmp         0068F512
 0068F42D    mov         eax,dword ptr [ebp-4]
 0068F430    mov         edx,dword ptr ds:[7C1538];^'Loop powered sounder'
 0068F436    call        @UStrAsg
>0068F43B    jmp         0068F512
 0068F440    mov         eax,dword ptr [ebp-4]
 0068F443    and         bx,0FF
 0068F448    movzx       edx,bx
 0068F44B    cmp         edx,4
>0068F44E    jbe         0068F455
 0068F450    call        @BoundErr
 0068F455    mov         edx,dword ptr [edx*4+7C1488];^'Sounder (Intellia)'
 0068F45C    call        @UStrAsg
>0068F461    jmp         0068F512
 0068F466    mov         eax,dword ptr [ebp-4]
 0068F469    mov         edx,dword ptr ds:[7C1540];^'Sounder controller module'
 0068F46F    call        @UStrAsg
>0068F474    jmp         0068F512
 0068F479    mov         eax,dword ptr [ebp-4]
 0068F47C    mov         edx,dword ptr ds:[7C1544];^'Beacon'
 0068F482    call        @UStrAsg
>0068F487    jmp         0068F512
 0068F48C    mov         eax,dword ptr [ebp-4]
 0068F48F    mov         edx,dword ptr ds:[7C1548];^'Any type (virtual)'
 0068F495    call        @UStrAsg
>0068F49A    jmp         0068F512
 0068F49C    mov         eax,dword ptr [ebp-4]
 0068F49F    and         bx,0FF
 0068F4A4    movzx       edx,bx
 0068F4A7    cmp         edx,1
>0068F4AA    jbe         0068F4B1
 0068F4AC    call        @BoundErr
 0068F4B1    mov         edx,dword ptr [edx*4+7C149C];^'Sounder Beacon (Intellia)'
 0068F4B8    call        @UStrAsg
>0068F4BD    jmp         0068F512
 0068F4BF    mov         eax,dword ptr [ebp-4]
 0068F4C2    and         bx,0FF
 0068F4C7    movzx       edx,bx
 0068F4CA    cmp         edx,1
>0068F4CD    jbe         0068F4D4
 0068F4CF    call        @BoundErr
 0068F4D4    mov         edx,dword ptr [edx*4+7C14A4];^'Voice Sounder Beacon (Intellia)'
 0068F4DB    call        @UStrAsg
>0068F4E0    jmp         0068F512
 0068F4E2    mov         eax,dword ptr [ebp-4]
 0068F4E5    and         bx,0FF
 0068F4EA    movzx       edx,bx
 0068F4ED    cmp         edx,1
>0068F4F0    jbe         0068F4F7
 0068F4F2    call        @BoundErr
 0068F4F7    mov         edx,dword ptr [edx*4+7C14AC];^'Voice Sounder (Intellia)'
 0068F4FE    call        @UStrAsg
>0068F503    jmp         0068F512
 0068F505    mov         eax,dword ptr [ebp-4]
 0068F508    mov         edx,68F548;'ERR'
 0068F50D    call        @UStrAsg
 0068F512    xor         eax,eax
 0068F514    pop         edx
 0068F515    pop         ecx
 0068F516    pop         ecx
 0068F517    mov         dword ptr fs:[eax],edx
>0068F51A    jmp         0068F533
>0068F51C    jmp         @HandleAnyException
 0068F521    mov         eax,dword ptr [ebp-4]
 0068F524    mov         edx,68F548;'ERR'
 0068F529    call        @UStrAsg
 0068F52E    call        @DoneExcept
 0068F533    pop         edi
 0068F534    pop         esi
 0068F535    pop         ebx
 0068F536    pop         ecx
 0068F537    pop         ebp
 0068F538    ret
*}
end;

//0068F550
function TFXPAD.ComCzmInputToInt(s:string):Byte;
begin
{*
 0068F550    push        ebp
 0068F551    mov         ebp,esp
 0068F553    add         esp,0FFFFFFF8
 0068F556    push        ebx
 0068F557    push        esi
 0068F558    mov         dword ptr [ebp-4],edx
 0068F55B    mov         eax,dword ptr [ebp-4]
 0068F55E    call        @UStrAddRef
 0068F563    xor         eax,eax
 0068F565    push        ebp
 0068F566    push        68F5AA
 0068F56B    push        dword ptr fs:[eax]
 0068F56E    mov         dword ptr fs:[eax],esp
 0068F571    mov         byte ptr [ebp-5],0
 0068F575    xor         ebx,ebx
 0068F577    mov         esi,7C2468;^'Conventional Zone'
 0068F57C    mov         eax,dword ptr [ebp-4]
 0068F57F    mov         edx,dword ptr [esi]
 0068F581    call        @UStrEqual
>0068F586    jne         0068F58B
 0068F588    mov         byte ptr [ebp-5],bl
 0068F58B    inc         ebx
 0068F58C    add         esi,4
 0068F58F    cmp         bl,4
>0068F592    jne         0068F57C
 0068F594    xor         eax,eax
 0068F596    pop         edx
 0068F597    pop         ecx
 0068F598    pop         ecx
 0068F599    mov         dword ptr fs:[eax],edx
 0068F59C    push        68F5B1
 0068F5A1    lea         eax,[ebp-4]
 0068F5A4    call        @UStrClr
 0068F5A9    ret
>0068F5AA    jmp         @HandleFinally
>0068F5AF    jmp         0068F5A1
 0068F5B1    movzx       eax,byte ptr [ebp-5]
 0068F5B5    pop         esi
 0068F5B6    pop         ebx
 0068F5B7    pop         ecx
 0068F5B8    pop         ecx
 0068F5B9    pop         ebp
 0068F5BA    ret
*}
end;

//0068F5BC
{*procedure TFXPAD.ComIntToCzmInput(value:Byte; ?:?);
begin
 0068F5BC    push        ebx
 0068F5BD    push        esi
 0068F5BE    mov         esi,ecx
 0068F5C0    mov         ebx,edx
 0068F5C2    mov         eax,ebx
 0068F5C4    sub         al,4
>0068F5C6    jae         0068F5E6
 0068F5C8    mov         eax,esi
 0068F5CA    movzx       edx,bl
 0068F5CD    cmp         edx,3
>0068F5D0    jbe         0068F5D7
 0068F5D2    call        @BoundErr
 0068F5D7    mov         edx,dword ptr [edx*4+7C2468];^'Conventional Zone'
 0068F5DE    call        @UStrAsg
 0068F5E3    pop         esi
 0068F5E4    pop         ebx
 0068F5E5    ret
 0068F5E6    mov         eax,esi
 0068F5E8    mov         edx,68F604;'ERR'
 0068F5ED    call        @UStrAsg
 0068F5F2    pop         esi
 0068F5F3    pop         ebx
 0068F5F4    ret
end;*}

//0068F60C
function TFXPAD.ComInputToInt(s:string):Word;
begin
{*
 0068F60C    push        ebp
 0068F60D    mov         ebp,esp
 0068F60F    push        ecx
 0068F610    push        ebx
 0068F611    push        esi
 0068F612    push        edi
 0068F613    mov         dword ptr [ebp-4],edx
 0068F616    mov         eax,dword ptr [ebp-4]
 0068F619    call        @UStrAddRef
 0068F61E    xor         eax,eax
 0068F620    push        ebp
 0068F621    push        68F663
 0068F626    push        dword ptr fs:[eax]
 0068F629    mov         dword ptr fs:[eax],esp
 0068F62C    xor         edi,edi
 0068F62E    xor         ebx,ebx
 0068F630    mov         esi,7C23DC;^'Not in use'
 0068F635    mov         eax,dword ptr [ebp-4]
 0068F638    mov         edx,dword ptr [esi]
 0068F63A    call        @UStrEqual
>0068F63F    jne         0068F644
 0068F641    movzx       edi,bl
 0068F644    inc         ebx
 0068F645    add         esi,4
 0068F648    cmp         bl,22
>0068F64B    jne         0068F635
 0068F64D    xor         eax,eax
 0068F64F    pop         edx
 0068F650    pop         ecx
 0068F651    pop         ecx
 0068F652    mov         dword ptr fs:[eax],edx
 0068F655    push        68F66A
 0068F65A    lea         eax,[ebp-4]
 0068F65D    call        @UStrClr
 0068F662    ret
>0068F663    jmp         @HandleFinally
>0068F668    jmp         0068F65A
 0068F66A    mov         eax,edi
 0068F66C    pop         edi
 0068F66D    pop         esi
 0068F66E    pop         ebx
 0068F66F    pop         ecx
 0068F670    pop         ebp
 0068F671    ret
*}
end;

//0068F674
procedure TFXPAD.ComIntToInput(value:Word; ?:UnicodeString);
begin
{*
 0068F674    push        ebx
 0068F675    push        esi
 0068F676    mov         esi,ecx
 0068F678    mov         ebx,edx
 0068F67A    mov         eax,ebx
 0068F67C    sub         ax,22
>0068F680    jae         0068F6A0
 0068F682    mov         eax,esi
 0068F684    movzx       edx,bx
 0068F687    cmp         edx,21
>0068F68A    jbe         0068F691
 0068F68C    call        @BoundErr
 0068F691    mov         edx,dword ptr [edx*4+7C23DC];^'Not in use'
 0068F698    call        @UStrAsg
 0068F69D    pop         esi
 0068F69E    pop         ebx
 0068F69F    ret
 0068F6A0    mov         eax,esi
 0068F6A2    mov         edx,68F6BC;'ERR'
 0068F6A7    call        @UStrAsg
 0068F6AC    pop         esi
 0068F6AD    pop         ebx
 0068F6AE    ret
*}
end;

//0068F6C4
function TFXPAD.ApoOutputToInt(s:string):Byte;
begin
{*
 0068F6C4    push        ebp
 0068F6C5    mov         ebp,esp
 0068F6C7    add         esp,0FFFFFFF8
 0068F6CA    push        ebx
 0068F6CB    push        esi
 0068F6CC    mov         dword ptr [ebp-4],edx
 0068F6CF    mov         eax,dword ptr [ebp-4]
 0068F6D2    call        @UStrAddRef
 0068F6D7    xor         eax,eax
 0068F6D9    push        ebp
 0068F6DA    push        68F71E
 0068F6DF    push        dword ptr fs:[eax]
 0068F6E2    mov         dword ptr fs:[eax],esp
 0068F6E5    mov         byte ptr [ebp-5],0
 0068F6E9    xor         ebx,ebx
 0068F6EB    mov         esi,7C2518;^'Not in use'
 0068F6F0    mov         eax,dword ptr [ebp-4]
 0068F6F3    mov         edx,dword ptr [esi]
 0068F6F5    call        @UStrEqual
>0068F6FA    jne         0068F6FF
 0068F6FC    mov         byte ptr [ebp-5],bl
 0068F6FF    inc         ebx
 0068F700    add         esi,4
 0068F703    cmp         bl,1A
>0068F706    jne         0068F6F0
 0068F708    xor         eax,eax
 0068F70A    pop         edx
 0068F70B    pop         ecx
 0068F70C    pop         ecx
 0068F70D    mov         dword ptr fs:[eax],edx
 0068F710    push        68F725
 0068F715    lea         eax,[ebp-4]
 0068F718    call        @UStrClr
 0068F71D    ret
>0068F71E    jmp         @HandleFinally
>0068F723    jmp         0068F715
 0068F725    movzx       eax,byte ptr [ebp-5]
 0068F729    pop         esi
 0068F72A    pop         ebx
 0068F72B    pop         ecx
 0068F72C    pop         ecx
 0068F72D    pop         ebp
 0068F72E    ret
*}
end;

//0068F730
procedure TFXPAD.ApoIntToOutput(value:Byte; ?:UnicodeString);
begin
{*
 0068F730    push        ebx
 0068F731    push        esi
 0068F732    mov         esi,ecx
 0068F734    mov         ebx,edx
 0068F736    mov         eax,ebx
 0068F738    sub         al,1A
>0068F73A    jae         0068F75A
 0068F73C    mov         eax,esi
 0068F73E    movzx       edx,bl
 0068F741    cmp         edx,19
>0068F744    jbe         0068F74B
 0068F746    call        @BoundErr
 0068F74B    mov         edx,dword ptr [edx*4+7C2518];^'Not in use'
 0068F752    call        @UStrAsg
 0068F757    pop         esi
 0068F758    pop         ebx
 0068F759    ret
 0068F75A    mov         eax,esi
 0068F75C    mov         edx,68F778;'ERR'
 0068F761    call        @UStrAsg
 0068F766    pop         esi
 0068F767    pop         ebx
 0068F768    ret
*}
end;

//0068F780
function TFXPAD.ApoSndrVolToInt(s:string):Byte;
begin
{*
 0068F780    push        ebp
 0068F781    mov         ebp,esp
 0068F783    add         esp,0FFFFFFF8
 0068F786    push        ebx
 0068F787    push        esi
 0068F788    mov         dword ptr [ebp-4],edx
 0068F78B    mov         eax,dword ptr [ebp-4]
 0068F78E    call        @UStrAddRef
 0068F793    xor         eax,eax
 0068F795    push        ebp
 0068F796    push        68F7DA
 0068F79B    push        dword ptr fs:[eax]
 0068F79E    mov         dword ptr fs:[eax],esp
 0068F7A1    mov         byte ptr [ebp-5],0
 0068F7A5    mov         bl,1
 0068F7A7    mov         esi,7C24AC;^'Vol 1'
 0068F7AC    mov         eax,dword ptr [ebp-4]
 0068F7AF    mov         edx,dword ptr [esi]
 0068F7B1    call        @UStrEqual
>0068F7B6    jne         0068F7BB
 0068F7B8    mov         byte ptr [ebp-5],bl
 0068F7BB    inc         ebx
 0068F7BC    add         esi,4
 0068F7BF    cmp         bl,8
>0068F7C2    jne         0068F7AC
 0068F7C4    xor         eax,eax
 0068F7C6    pop         edx
 0068F7C7    pop         ecx
 0068F7C8    pop         ecx
 0068F7C9    mov         dword ptr fs:[eax],edx
 0068F7CC    push        68F7E1
 0068F7D1    lea         eax,[ebp-4]
 0068F7D4    call        @UStrClr
 0068F7D9    ret
>0068F7DA    jmp         @HandleFinally
>0068F7DF    jmp         0068F7D1
 0068F7E1    movzx       eax,byte ptr [ebp-5]
 0068F7E5    pop         esi
 0068F7E6    pop         ebx
 0068F7E7    pop         ecx
 0068F7E8    pop         ecx
 0068F7E9    pop         ebp
 0068F7EA    ret
*}
end;

//0068F7EC
{*procedure TFXPAD.ApoIntToSndrVol(value:Byte; ?:?);
begin
 0068F7EC    push        ebx
 0068F7ED    push        esi
 0068F7EE    mov         esi,ecx
 0068F7F0    mov         ebx,edx
 0068F7F2    mov         eax,ebx
 0068F7F4    dec         eax
 0068F7F5    sub         al,7
>0068F7F7    jae         0068F819
 0068F7F9    mov         eax,esi
 0068F7FB    movzx       edx,bl
 0068F7FE    dec         edx
 0068F7FF    cmp         edx,0A
>0068F802    jbe         0068F809
 0068F804    call        @BoundErr
 0068F809    inc         edx
 0068F80A    mov         edx,dword ptr [edx*4+7C24A8];^'By dipswitch'
 0068F811    call        @UStrAsg
 0068F816    pop         esi
 0068F817    pop         ebx
 0068F818    ret
 0068F819    mov         eax,esi
 0068F81B    mov         edx,68F834;'ERR'
 0068F820    call        @UStrAsg
 0068F825    pop         esi
 0068F826    pop         ebx
 0068F827    ret
end;*}

//0068F83C
function TFXPAD.ApoLevelToInt(s:string):Word;
begin
{*
 0068F83C    push        ebp
 0068F83D    mov         ebp,esp
 0068F83F    push        ecx
 0068F840    push        ebx
 0068F841    push        esi
 0068F842    push        edi
 0068F843    mov         dword ptr [ebp-4],edx
 0068F846    mov         eax,dword ptr [ebp-4]
 0068F849    call        @UStrAddRef
 0068F84E    xor         eax,eax
 0068F850    push        ebp
 0068F851    push        68F893
 0068F856    push        dword ptr fs:[eax]
 0068F859    mov         dword ptr fs:[eax],esp
 0068F85C    xor         edi,edi
 0068F85E    mov         bl,1
 0068F860    mov         esi,7C2844;^'L 1'
 0068F865    mov         eax,dword ptr [ebp-4]
 0068F868    mov         edx,dword ptr [esi]
 0068F86A    call        @UStrEqual
>0068F86F    jne         0068F874
 0068F871    movzx       edi,bl
 0068F874    inc         ebx
 0068F875    add         esi,4
 0068F878    cmp         bl,6
>0068F87B    jne         0068F865
 0068F87D    xor         eax,eax
 0068F87F    pop         edx
 0068F880    pop         ecx
 0068F881    pop         ecx
 0068F882    mov         dword ptr fs:[eax],edx
 0068F885    push        68F89A
 0068F88A    lea         eax,[ebp-4]
 0068F88D    call        @UStrClr
 0068F892    ret
>0068F893    jmp         @HandleFinally
>0068F898    jmp         0068F88A
 0068F89A    mov         eax,edi
 0068F89C    pop         edi
 0068F89D    pop         esi
 0068F89E    pop         ebx
 0068F89F    pop         ecx
 0068F8A0    pop         ebp
 0068F8A1    ret
*}
end;

//0068F8A4
procedure TFXPAD.ApoIntToLevel(value:Word; ?:UnicodeString);
begin
{*
 0068F8A4    push        ebx
 0068F8A5    push        esi
 0068F8A6    mov         esi,ecx
 0068F8A8    mov         ebx,edx
 0068F8AA    mov         eax,ebx
 0068F8AC    sub         ax,1
>0068F8B0    jb          0068F8BA
 0068F8B2    sub         ax,5
>0068F8B6    jb          0068F8C4
>0068F8B8    jmp         0068F8E2
 0068F8BA    mov         eax,esi
 0068F8BC    call        @UStrClr
 0068F8C1    pop         esi
 0068F8C2    pop         ebx
 0068F8C3    ret
 0068F8C4    mov         eax,esi
 0068F8C6    movzx       edx,bx
 0068F8C9    cmp         edx,0A
>0068F8CC    jbe         0068F8D3
 0068F8CE    call        @BoundErr
 0068F8D3    mov         edx,dword ptr [edx*4+7C2840];^'Err'
 0068F8DA    call        @UStrAsg
 0068F8DF    pop         esi
 0068F8E0    pop         ebx
 0068F8E1    ret
 0068F8E2    mov         eax,esi
 0068F8E4    mov         edx,68F900;'ERR'
 0068F8E9    call        @UStrAsg
 0068F8EE    pop         esi
 0068F8EF    pop         ebx
 0068F8F0    ret
*}
end;

//0068F908
function TFXPAD.ApoModeToInt(w:Word; s:string):Byte;
begin
{*
 0068F908    push        ebp
 0068F909    mov         ebp,esp
 0068F90B    add         esp,0FFFFFFF8
 0068F90E    push        ebx
 0068F90F    push        esi
 0068F910    mov         dword ptr [ebp-4],ecx
 0068F913    mov         ebx,edx
 0068F915    mov         eax,dword ptr [ebp-4]
 0068F918    call        @UStrAddRef
 0068F91D    xor         eax,eax
 0068F91F    push        ebp
 0068F920    push        68FA06
 0068F925    push        dword ptr fs:[eax]
 0068F928    mov         dword ptr fs:[eax],esp
 0068F92B    mov         byte ptr [ebp-5],0
 0068F92F    shr         bx,8
 0068F933    add         ebx,0FFFFFFEC
 0068F936    sub         bx,4
>0068F93A    jb          0068F948
 0068F93C    dec         ebx
 0068F93D    sub         bx,3
>0068F941    jb          0068F96C
>0068F943    jmp         0068F9D1
 0068F948    xor         ebx,ebx
 0068F94A    mov         esi,7C249C;^'Continuous'
 0068F94F    mov         eax,dword ptr [ebp-4]
 0068F952    mov         edx,dword ptr [esi]
 0068F954    call        @UStrEqual
>0068F959    jne         0068F95E
 0068F95B    mov         byte ptr [ebp-5],bl
 0068F95E    inc         ebx
 0068F95F    add         esi,4
 0068F962    cmp         bl,4
>0068F965    jne         0068F94F
>0068F967    jmp         0068F9F0
 0068F96C    mov         bl,65
 0068F96E    mov         esi,7C155C;^'Primary 01, T1'
 0068F973    mov         eax,dword ptr [ebp-4]
 0068F976    mov         edx,dword ptr [esi]
 0068F978    call        @UStrEqual
>0068F97D    jne         0068F984
 0068F97F    mov         byte ptr [ebp-5],bl
>0068F982    jmp         0068F98D
 0068F984    inc         ebx
 0068F985    add         esi,4
 0068F988    cmp         bl,74
>0068F98B    jne         0068F973
 0068F98D    mov         bl,97
 0068F98F    mov         esi,7C1598;^'Secondary 01, T0'
 0068F994    mov         eax,dword ptr [ebp-4]
 0068F997    mov         edx,dword ptr [esi]
 0068F999    call        @UStrEqual
>0068F99E    jne         0068F9A5
 0068F9A0    mov         byte ptr [ebp-5],bl
>0068F9A3    jmp         0068F9AE
 0068F9A5    inc         ebx
 0068F9A6    add         esi,4
 0068F9A9    cmp         bl,0A6
>0068F9AC    jne         0068F994
 0068F9AE    mov         bl,0C9
 0068F9B0    mov         esi,7C15D4;^'Phased 01'
 0068F9B5    mov         eax,dword ptr [ebp-4]
 0068F9B8    mov         edx,dword ptr [esi]
 0068F9BA    call        @UStrEqual
>0068F9BF    jne         0068F9C6
 0068F9C1    mov         byte ptr [ebp-5],bl
>0068F9C4    jmp         0068F9F0
 0068F9C6    inc         ebx
 0068F9C7    add         esi,4
 0068F9CA    cmp         bl,0D8
>0068F9CD    jne         0068F9B5
>0068F9CF    jmp         0068F9F0
 0068F9D1    xor         ebx,ebx
 0068F9D3    mov         esi,7C2478;^'Normal'
 0068F9D8    mov         eax,dword ptr [ebp-4]
 0068F9DB    mov         edx,dword ptr [esi]
 0068F9DD    call        @UStrEqual
>0068F9E2    jne         0068F9E7
 0068F9E4    mov         byte ptr [ebp-5],bl
 0068F9E7    inc         ebx
 0068F9E8    add         esi,4
 0068F9EB    cmp         bl,6
>0068F9EE    jne         0068F9D8
 0068F9F0    xor         eax,eax
 0068F9F2    pop         edx
 0068F9F3    pop         ecx
 0068F9F4    pop         ecx
 0068F9F5    mov         dword ptr fs:[eax],edx
 0068F9F8    push        68FA0D
 0068F9FD    lea         eax,[ebp-4]
 0068FA00    call        @UStrClr
 0068FA05    ret
>0068FA06    jmp         @HandleFinally
>0068FA0B    jmp         0068F9FD
 0068FA0D    movzx       eax,byte ptr [ebp-5]
 0068FA11    pop         esi
 0068FA12    pop         ebx
 0068FA13    pop         ecx
 0068FA14    pop         ecx
 0068FA15    pop         ebp
 0068FA16    ret
*}
end;

//0068FA18
{*procedure TFXPAD.ApoIntToMode(w:Word; value:Byte; ?:?);
begin
 0068FA18    push        ebp
 0068FA19    mov         ebp,esp
 0068FA1B    push        ebx
 0068FA1C    push        esi
 0068FA1D    mov         ebx,ecx
 0068FA1F    mov         esi,dword ptr [ebp+8]
 0068FA22    shr         dx,8
 0068FA26    movzx       eax,dx
 0068FA29    cmp         eax,1C
>0068FA2C    ja          0068FB84
 0068FA32    movzx       eax,byte ptr [eax+68FA40]
 0068FA39    jmp         dword ptr [eax*4+68FA5D]
 0068FA39    db          1
 0068FA39    db          2
 0068FA39    db          2
 0068FA39    db          2
 0068FA39    db          2
 0068FA39    db          2
 0068FA39    db          2
 0068FA39    db          2
 0068FA39    db          2
 0068FA39    db          2
 0068FA39    db          2
 0068FA39    db          2
 0068FA39    db          2
 0068FA39    db          2
 0068FA39    db          2
 0068FA39    db          2
 0068FA39    db          2
 0068FA39    db          2
 0068FA39    db          2
 0068FA39    db          2
 0068FA39    db          3
 0068FA39    db          3
 0068FA39    db          3
 0068FA39    db          3
 0068FA39    db          2
 0068FA39    db          4
 0068FA39    db          4
 0068FA39    db          4
 0068FA39    db          2
 0068FA39    dd          0068FB84
 0068FA39    dd          0068FA71
 0068FA39    dd          0068FA7D
 0068FA39    dd          0068FAB4
 0068FA39    dd          0068FAEB
 0068FA71    mov         eax,esi
 0068FA73    call        @UStrClr
>0068FA78    jmp         0068FB90
 0068FA7D    mov         eax,ebx
 0068FA7F    sub         al,6
>0068FA81    jae         0068FAA3
 0068FA83    mov         eax,esi
 0068FA85    movzx       edx,bl
 0068FA88    cmp         edx,5
>0068FA8B    jbe         0068FA92
 0068FA8D    call        @BoundErr
 0068FA92    mov         edx,dword ptr [edx*4+7C2478];^'Normal'
 0068FA99    call        @UStrAsg
>0068FA9E    jmp         0068FB90
 0068FAA3    mov         eax,esi
 0068FAA5    mov         edx,68FBA4;'ERR'
 0068FAAA    call        @UStrAsg
>0068FAAF    jmp         0068FB90
 0068FAB4    mov         eax,ebx
 0068FAB6    sub         al,4
>0068FAB8    jae         0068FADA
 0068FABA    mov         eax,esi
 0068FABC    movzx       edx,bl
 0068FABF    cmp         edx,3
>0068FAC2    jbe         0068FAC9
 0068FAC4    call        @BoundErr
 0068FAC9    mov         edx,dword ptr [edx*4+7C249C];^'Continuous'
 0068FAD0    call        @UStrAsg
>0068FAD5    jmp         0068FB90
 0068FADA    mov         eax,esi
 0068FADC    mov         edx,68FBA4;'ERR'
 0068FAE1    call        @UStrAsg
>0068FAE6    jmp         0068FB90
 0068FAEB    mov         eax,ebx
 0068FAED    add         al,9B
 0068FAEF    sub         al,0F
>0068FAF1    jb          0068FB01
 0068FAF3    add         al,0DD
 0068FAF5    sub         al,0F
>0068FAF7    jb          0068FB24
 0068FAF9    add         al,0DD
 0068FAFB    sub         al,0F
>0068FAFD    jb          0068FB4D
>0068FAFF    jmp         0068FB76
 0068FB01    mov         eax,esi
 0068FB03    movzx       edx,bl
 0068FB06    add         edx,0FFFFFF9B
 0068FB09    cmp         edx,0E
>0068FB0C    jbe         0068FB13
 0068FB0E    call        @BoundErr
 0068FB13    add         edx,65
 0068FB16    mov         edx,dword ptr [edx*4+7C13C8]
 0068FB1D    call        @UStrAsg
>0068FB22    jmp         0068FB90
 0068FB24    mov         eax,esi
 0068FB26    movzx       edx,bl
 0068FB29    add         edx,0FFFFFF69
 0068FB2F    cmp         edx,0E
>0068FB32    jbe         0068FB39
 0068FB34    call        @BoundErr
 0068FB39    add         edx,97
 0068FB3F    mov         edx,dword ptr [edx*4+7C133C]
 0068FB46    call        @UStrAsg
>0068FB4B    jmp         0068FB90
 0068FB4D    mov         eax,esi
 0068FB4F    movzx       edx,bl
 0068FB52    add         edx,0FFFFFF37
 0068FB58    cmp         edx,0E
>0068FB5B    jbe         0068FB62
 0068FB5D    call        @BoundErr
 0068FB62    add         edx,0C9
 0068FB68    mov         edx,dword ptr [edx*4+7C12B0]
 0068FB6F    call        @UStrAsg
>0068FB74    jmp         0068FB90
 0068FB76    mov         eax,esi
 0068FB78    mov         edx,68FBA4;'ERR'
 0068FB7D    call        @UStrAsg
>0068FB82    jmp         0068FB90
 0068FB84    mov         eax,esi
 0068FB86    mov         edx,68FBA4;'ERR'
 0068FB8B    call        @UStrAsg
 0068FB90    pop         esi
 0068FB91    pop         ebx
 0068FB92    pop         ebp
 0068FB93    ret         4
end;*}

//0068FBAC
{*procedure TFXPAD.ApoDefaultFireLevel(APType:Integer; ?:?);
begin
 0068FBAC    push        ebx
 0068FBAD    mov         ebx,ecx
 0068FBAF    cmp         edx,1C
>0068FBB2    ja          0068FC92
 0068FBB8    movzx       edx,byte ptr [edx+68FBC6]
 0068FBBF    jmp         dword ptr [edx*4+68FBE3]
 0068FBBF    db          0
 0068FBBF    db          1
 0068FBBF    db          2
 0068FBBF    db          3
 0068FBBF    db          4
 0068FBBF    db          5
 0068FBBF    db          6
 0068FBBF    db          8
 0068FBBF    db          9
 0068FBBF    db          0
 0068FBBF    db          0
 0068FBBF    db          0
 0068FBBF    db          0
 0068FBBF    db          0
 0068FBBF    db          0
 0068FBBF    db          0
 0068FBBF    db          0
 0068FBBF    db          0
 0068FBBF    db          0
 0068FBBF    db          0
 0068FBBF    db          0
 0068FBBF    db          0
 0068FBBF    db          0
 0068FBBF    db          0
 0068FBBF    db          0
 0068FBBF    db          0
 0068FBBF    db          0
 0068FBBF    db          0
 0068FBBF    db          7
 0068FBBF    dd          0068FC92
 0068FBBF    dd          0068FC0B
 0068FBBF    dd          0068FC1A
 0068FBBF    dd          0068FC29
 0068FBBF    dd          0068FC38
 0068FBBF    dd          0068FC47
 0068FBBF    dd          0068FC56
 0068FBBF    dd          0068FC65
 0068FBBF    dd          0068FC74
 0068FBBF    dd          0068FC83
 0068FC0B    mov         eax,ebx
 0068FC0D    mov         edx,dword ptr ds:[7C284C];^'L 3'
 0068FC13    call        @UStrAsg
 0068FC18    pop         ebx
 0068FC19    ret
 0068FC1A    mov         eax,ebx
 0068FC1C    mov         edx,dword ptr ds:[7C284C];^'L 3'
 0068FC22    call        @UStrAsg
 0068FC27    pop         ebx
 0068FC28    ret
 0068FC29    mov         eax,ebx
 0068FC2B    mov         edx,dword ptr ds:[7C284C];^'L 3'
 0068FC31    call        @UStrAsg
 0068FC36    pop         ebx
 0068FC37    ret
 0068FC38    mov         eax,ebx
 0068FC3A    mov         edx,dword ptr ds:[7C284C];^'L 3'
 0068FC40    call        @UStrAsg
 0068FC45    pop         ebx
 0068FC46    ret
 0068FC47    mov         eax,ebx
 0068FC49    mov         edx,dword ptr ds:[7C284C];^'L 3'
 0068FC4F    call        @UStrAsg
 0068FC54    pop         ebx
 0068FC55    ret
 0068FC56    mov         eax,ebx
 0068FC58    mov         edx,dword ptr ds:[7C284C];^'L 3'
 0068FC5E    call        @UStrAsg
 0068FC63    pop         ebx
 0068FC64    ret
 0068FC65    mov         eax,ebx
 0068FC67    mov         edx,dword ptr ds:[7C284C];^'L 3'
 0068FC6D    call        @UStrAsg
 0068FC72    pop         ebx
 0068FC73    ret
 0068FC74    mov         eax,ebx
 0068FC76    mov         edx,dword ptr ds:[7C284C];^'L 3'
 0068FC7C    call        @UStrAsg
 0068FC81    pop         ebx
 0068FC82    ret
 0068FC83    mov         eax,ebx
 0068FC85    mov         edx,dword ptr ds:[7C284C];^'L 3'
 0068FC8B    call        @UStrAsg
 0068FC90    pop         ebx
 0068FC91    ret
 0068FC92    mov         eax,ebx
 0068FC94    call        @UStrClr
 0068FC99    pop         ebx
 0068FC9A    ret
end;*}

//0068FC9C
{*procedure TFXPAD.ApoDefaultPrewLevel(APType:Integer; ?:?);
begin
 0068FC9C    push        ebx
 0068FC9D    mov         ebx,ecx
 0068FC9F    cmp         edx,1C
>0068FCA2    ja          0068FD82
 0068FCA8    movzx       edx,byte ptr [edx+68FCB6]
 0068FCAF    jmp         dword ptr [edx*4+68FCD3]
 0068FCAF    db          0
 0068FCAF    db          1
 0068FCAF    db          2
 0068FCAF    db          3
 0068FCAF    db          4
 0068FCAF    db          5
 0068FCAF    db          6
 0068FCAF    db          8
 0068FCAF    db          9
 0068FCAF    db          0
 0068FCAF    db          0
 0068FCAF    db          0
 0068FCAF    db          0
 0068FCAF    db          0
 0068FCAF    db          0
 0068FCAF    db          0
 0068FCAF    db          0
 0068FCAF    db          0
 0068FCAF    db          0
 0068FCAF    db          0
 0068FCAF    db          0
 0068FCAF    db          0
 0068FCAF    db          0
 0068FCAF    db          0
 0068FCAF    db          0
 0068FCAF    db          0
 0068FCAF    db          0
 0068FCAF    db          0
 0068FCAF    db          7
 0068FCAF    dd          0068FD82
 0068FCAF    dd          0068FCFB
 0068FCAF    dd          0068FD0A
 0068FCAF    dd          0068FD19
 0068FCAF    dd          0068FD28
 0068FCAF    dd          0068FD37
 0068FCAF    dd          0068FD46
 0068FCAF    dd          0068FD55
 0068FCAF    dd          0068FD64
 0068FCAF    dd          0068FD73
 0068FCFB    mov         eax,ebx
 0068FCFD    mov         edx,dword ptr ds:[7C2848];^'L 2'
 0068FD03    call        @UStrAsg
 0068FD08    pop         ebx
 0068FD09    ret
 0068FD0A    mov         eax,ebx
 0068FD0C    mov         edx,dword ptr ds:[7C2848];^'L 2'
 0068FD12    call        @UStrAsg
 0068FD17    pop         ebx
 0068FD18    ret
 0068FD19    mov         eax,ebx
 0068FD1B    mov         edx,dword ptr ds:[7C2848];^'L 2'
 0068FD21    call        @UStrAsg
 0068FD26    pop         ebx
 0068FD27    ret
 0068FD28    mov         eax,ebx
 0068FD2A    mov         edx,dword ptr ds:[7C2848];^'L 2'
 0068FD30    call        @UStrAsg
 0068FD35    pop         ebx
 0068FD36    ret
 0068FD37    mov         eax,ebx
 0068FD39    mov         edx,dword ptr ds:[7C2848];^'L 2'
 0068FD3F    call        @UStrAsg
 0068FD44    pop         ebx
 0068FD45    ret
 0068FD46    mov         eax,ebx
 0068FD48    mov         edx,dword ptr ds:[7C2848];^'L 2'
 0068FD4E    call        @UStrAsg
 0068FD53    pop         ebx
 0068FD54    ret
 0068FD55    mov         eax,ebx
 0068FD57    mov         edx,dword ptr ds:[7C2848];^'L 2'
 0068FD5D    call        @UStrAsg
 0068FD62    pop         ebx
 0068FD63    ret
 0068FD64    mov         eax,ebx
 0068FD66    mov         edx,dword ptr ds:[7C2848];^'L 2'
 0068FD6C    call        @UStrAsg
 0068FD71    pop         ebx
 0068FD72    ret
 0068FD73    mov         eax,ebx
 0068FD75    mov         edx,dword ptr ds:[7C2848];^'L 2'
 0068FD7B    call        @UStrAsg
 0068FD80    pop         ebx
 0068FD81    ret
 0068FD82    mov         eax,ebx
 0068FD84    call        @UStrClr
 0068FD89    pop         ebx
 0068FD8A    ret
end;*}

//0068FD8C
{*procedure TFXPAD.ApoDefaultServLevel(APType:Integer; ?:?);
begin
 0068FD8C    push        ebx
 0068FD8D    mov         ebx,ecx
 0068FD8F    mov         eax,ebx
 0068FD91    call        @UStrClr
 0068FD96    pop         ebx
 0068FD97    ret
end;*}

//0068FD98
{*procedure TFXPAD.ApoDefaultSndrMode(APType:Integer; ?:?);
begin
 0068FD98    push        ebx
 0068FD99    mov         ebx,ecx
 0068FD9B    add         edx,0FFFFFFEC
 0068FD9E    sub         edx,4
>0068FDA1    jb          0068FDAB
 0068FDA3    dec         edx
 0068FDA4    sub         edx,3
>0068FDA7    jb          0068FDBA
>0068FDA9    jmp         0068FDC7
 0068FDAB    mov         eax,ebx
 0068FDAD    mov         edx,dword ptr ds:[7C249C];^'Continuous'
 0068FDB3    call        @UStrAsg
 0068FDB8    pop         ebx
 0068FDB9    ret
 0068FDBA    mov         eax,ebx
 0068FDBC    mov         edx,dword ptr ds:[7C1590];^'Primary 14, T13'
 0068FDC2    call        @UStrAsg
 0068FDC7    pop         ebx
 0068FDC8    ret
end;*}

//0068FDCC
{*procedure TFXPAD.ApoDefaultSndrVolumeStr(?:?);
begin
 0068FDCC    push        ebx
 0068FDCD    mov         ebx,edx
 0068FDCF    mov         eax,ebx
 0068FDD1    mov         edx,dword ptr ds:[7C24C4];^'Vol 7'
 0068FDD7    call        @UStrAsg
 0068FDDC    pop         ebx
 0068FDDD    ret
end;*}

//0068FDE0
function TFXPAD.ApoApDataError(ap:TFXADRec):Cardinal;
begin
{*
 0068FDE0    push        esi
 0068FDE1    push        edi
 0068FDE2    add         esp,0FFFFFF24
 0068FDE8    mov         esi,edx
 0068FDEA    lea         edi,[esp]
 0068FDED    mov         ecx,36
 0068FDF2    rep movs    dword ptr [edi],dword ptr [esi]
 0068FDF4    movs        word ptr [edi],word ptr [esi]
 0068FDF6    mov         edi,esp
 0068FDF8    xor         esi,esi
 0068FDFA    movzx       edx,byte ptr [edi+5]
 0068FDFE    cmp         dl,1
>0068FE01    jb          0068FE11
 0068FE03    mov         eax,dword ptr [eax+87668];TFXPAD.PD:TFXPPD
 0068FE09    cmp         dl,byte ptr [eax+125]
>0068FE0F    jbe         0068FE14
 0068FE11    or          esi,1
 0068FE14    cmp         word ptr [edi+6],3E7
>0068FE1A    jbe         0068FE1F
 0068FE1C    or          esi,2
 0068FE1F    cmp         word ptr [edi+8],3E7
>0068FE25    jbe         0068FE2A
 0068FE27    or          esi,4
 0068FE2A    movzx       eax,byte ptr [edi+0A]
 0068FE2E    mov         edx,eax
 0068FE30    movzx       edx,dl
 0068FE33    bt          dword ptr ds:[7C2600],edx;gvar_007C2600
>0068FE3A    jb          0068FE3F
 0068FE3C    or          esi,8
 0068FE3F    movzx       edx,byte ptr [edi+1E]
 0068FE43    sub         dl,22
>0068FE46    jb          0068FE4B
 0068FE48    or          esi,10
 0068FE4B    mov         edx,eax
 0068FE4D    movzx       edx,dl
 0068FE50    bt          dword ptr ds:[7C2620],edx;gvar_007C2620
 0068FE57    setb        dl
 0068FE5A    test        dl,dl
>0068FE5C    je          0068FE6C
 0068FE5E    movzx       ecx,word ptr [edi+0C]
 0068FE62    dec         ecx
 0068FE63    sub         cx,5
>0068FE67    jb          0068FE6C
 0068FE69    or          esi,20
 0068FE6C    test        dl,dl
>0068FE6E    je          0068FE7E
 0068FE70    movzx       ecx,word ptr [edi+0E]
 0068FE74    dec         ecx
 0068FE75    sub         cx,5
>0068FE79    jb          0068FE7E
 0068FE7B    or          esi,40
 0068FE7E    test        dl,dl
>0068FE80    je          0068FE93
 0068FE82    movzx       ecx,word ptr [edi+10]
 0068FE86    dec         ecx
 0068FE87    sub         cx,5
>0068FE8B    jb          0068FE93
 0068FE8D    or          esi,80
 0068FE93    test        dl,dl
>0068FE95    je          0068FEA8
 0068FE97    movzx       eax,word ptr [edi+12]
 0068FE9B    dec         eax
 0068FE9C    sub         ax,5
>0068FEA0    jb          0068FEA8
 0068FEA2    or          esi,100
 0068FEA8    cmp         word ptr [edi+14],0
>0068FEAD    je          0068FEB5
 0068FEAF    or          esi,200
 0068FEB5    movzx       eax,byte ptr [edi+17]
 0068FEB9    sub         al,7
>0068FEBB    jb          0068FEC3
 0068FEBD    or          esi,800
 0068FEC3    movzx       eax,byte ptr [edi+18]
 0068FEC7    sub         al,5
>0068FEC9    jb          0068FED1
 0068FECB    or          esi,1000
 0068FED1    movzx       eax,byte ptr [edi+19]
 0068FED5    sub         al,4
>0068FED7    jb          0068FEDF
 0068FED9    or          esi,2000
 0068FEDF    movzx       eax,byte ptr [edi+1A]
 0068FEE3    sub         al,3
>0068FEE5    jb          0068FEED
 0068FEE7    or          esi,4000
 0068FEED    movzx       eax,byte ptr [edi+1F]
 0068FEF1    sub         al,1A
>0068FEF3    jb          0068FEFB
 0068FEF5    or          esi,10000
 0068FEFB    mov         eax,esi
 0068FEFD    add         esp,0DC
 0068FF03    pop         edi
 0068FF04    pop         esi
 0068FF05    ret
*}
end;

//0068FF08
function TFXPAD.ApoGetInpEvents(ap:TFXADRec):TFXEventSet;
begin
{*
 0068FF08    push        ebx
 0068FF09    push        esi
 0068FF0A    push        edi
 0068FF0B    add         esp,0FFFFFF24
 0068FF11    mov         esi,edx
 0068FF13    lea         edi,[esp]
 0068FF16    mov         ecx,36
 0068FF1B    rep movs    dword ptr [edi],dword ptr [esi]
 0068FF1D    movs        word ptr [edi],word ptr [esi]
 0068FF1F    movzx       ebx,byte ptr ds:[690238];0x58 gvar_00690238
 0068FF26    movzx       eax,byte ptr [esp+0A]
 0068FF2B    cmp         eax,1C
>0068FF2E    ja          00690212
 0068FF34    movzx       eax,byte ptr [eax+68FF42]
 0068FF3B    jmp         dword ptr [eax*4+68FF5F]
 0068FF3B    db          1
 0068FF3B    db          2
 0068FF3B    db          2
 0068FF3B    db          2
 0068FF3B    db          2
 0068FF3B    db          2
 0068FF3B    db          2
 0068FF3B    db          4
 0068FF3B    db          4
 0068FF3B    db          6
 0068FF3B    db          5
 0068FF3B    db          5
 0068FF3B    db          3
 0068FF3B    db          3
 0068FF3B    db          3
 0068FF3B    db          3
 0068FF3B    db          0
 0068FF3B    db          3
 0068FF3B    db          3
 0068FF3B    db          3
 0068FF3B    db          0
 0068FF3B    db          0
 0068FF3B    db          0
 0068FF3B    db          0
 0068FF3B    db          6
 0068FF3B    db          0
 0068FF3B    db          0
 0068FF3B    db          0
 0068FF3B    db          2
 0068FF3B    dd          00690212
 0068FF3B    dd          0068FF7B
 0068FF3B    dd          0068FF87
 0068FF3B    dd          0068FF95
 0068FF3B    dd          006901F3
 0068FF3B    dd          006901FE
 0068FF3B    dd          00690209
 0068FF7B    movzx       ebx,byte ptr ds:[69023C];0x0 gvar_0069023C
>0068FF82    jmp         00690212
 0068FF87    movzx       eax,byte ptr ds:[690240];0x6 gvar_00690240
 0068FF8E    or          bl,al
>0068FF90    jmp         00690212
 0068FF95    movzx       eax,byte ptr [esp+1E]
 0068FF9A    cmp         eax,21
>0068FF9D    ja          00690212
 0068FFA3    jmp         dword ptr [eax*4+68FFAA]
 0068FFA3    dd          00690032
 0068FFA3    dd          00690040
 0068FFA3    dd          0069004E
 0068FFA3    dd          0069005C
 0068FFA3    dd          0069006A
 0068FFA3    dd          00690078
 0068FFA3    dd          00690086
 0068FFA3    dd          00690094
 0068FFA3    dd          006900A2
 0068FFA3    dd          006900B0
 0068FFA3    dd          006900BE
 0068FFA3    dd          006900CC
 0068FFA3    dd          006900DA
 0068FFA3    dd          006900E8
 0068FFA3    dd          006900F6
 0068FFA3    dd          00690104
 0068FFA3    dd          00690112
 0068FFA3    dd          00690120
 0068FFA3    dd          0069012E
 0068FFA3    dd          0069013C
 0068FFA3    dd          0069014A
 0068FFA3    dd          00690158
 0068FFA3    dd          00690166
 0068FFA3    dd          00690174
 0068FFA3    dd          00690182
 0068FFA3    dd          00690190
 0068FFA3    dd          0069019B
 0068FFA3    dd          006901A6
 0068FFA3    dd          006901B1
 0068FFA3    dd          006901BC
 0068FFA3    dd          006901C7
 0068FFA3    dd          006901D2
 0068FFA3    dd          006901DD
 0068FFA3    dd          006901E8
 00690032    movzx       eax,byte ptr ds:[69023C];0x0 gvar_0069023C
 00690039    or          bl,al
>0069003B    jmp         00690212
 00690040    movzx       eax,byte ptr ds:[690244];0x2 gvar_00690244
 00690047    or          bl,al
>00690049    jmp         00690212
 0069004E    movzx       eax,byte ptr ds:[690244];0x2 gvar_00690244
 00690055    or          bl,al
>00690057    jmp         00690212
 0069005C    movzx       eax,byte ptr ds:[690244];0x2 gvar_00690244
 00690063    or          bl,al
>00690065    jmp         00690212
 0069006A    movzx       eax,byte ptr ds:[690244];0x2 gvar_00690244
 00690071    or          bl,al
>00690073    jmp         00690212
 00690078    movzx       eax,byte ptr ds:[690248];0x4 gvar_00690248
 0069007F    or          bl,al
>00690081    jmp         00690212
 00690086    movzx       eax,byte ptr ds:[69023C];0x0 gvar_0069023C
 0069008D    or          bl,al
>0069008F    jmp         00690212
 00690094    movzx       eax,byte ptr ds:[69023C];0x0 gvar_0069023C
 0069009B    or          bl,al
>0069009D    jmp         00690212
 006900A2    movzx       eax,byte ptr ds:[69024C];0x20 gvar_0069024C
 006900A9    or          bl,al
>006900AB    jmp         00690212
 006900B0    movzx       eax,byte ptr ds:[69024C];0x20 gvar_0069024C
 006900B7    or          bl,al
>006900B9    jmp         00690212
 006900BE    movzx       eax,byte ptr ds:[690250];0x40 gvar_00690250
 006900C5    or          bl,al
>006900C7    jmp         00690212
 006900CC    movzx       eax,byte ptr ds:[69023C];0x0 gvar_0069023C
 006900D3    or          bl,al
>006900D5    jmp         00690212
 006900DA    movzx       eax,byte ptr ds:[690250];0x40 gvar_00690250
 006900E1    or          bl,al
>006900E3    jmp         00690212
 006900E8    movzx       eax,byte ptr ds:[690250];0x40 gvar_00690250
 006900EF    or          bl,al
>006900F1    jmp         00690212
 006900F6    movzx       eax,byte ptr ds:[69023C];0x0 gvar_0069023C
 006900FD    or          bl,al
>006900FF    jmp         00690212
 00690104    movzx       eax,byte ptr ds:[69023C];0x0 gvar_0069023C
 0069010B    or          bl,al
>0069010D    jmp         00690212
 00690112    movzx       eax,byte ptr ds:[69023C];0x0 gvar_0069023C
 00690119    or          bl,al
>0069011B    jmp         00690212
 00690120    movzx       eax,byte ptr ds:[69023C];0x0 gvar_0069023C
 00690127    or          bl,al
>00690129    jmp         00690212
 0069012E    movzx       eax,byte ptr ds:[69023C];0x0 gvar_0069023C
 00690135    or          bl,al
>00690137    jmp         00690212
 0069013C    movzx       eax,byte ptr ds:[69023C];0x0 gvar_0069023C
 00690143    or          bl,al
>00690145    jmp         00690212
 0069014A    movzx       eax,byte ptr ds:[69023C];0x0 gvar_0069023C
 00690151    or          bl,al
>00690153    jmp         00690212
 00690158    movzx       eax,byte ptr ds:[69023C];0x0 gvar_0069023C
 0069015F    or          bl,al
>00690161    jmp         00690212
 00690166    movzx       eax,byte ptr ds:[690254];0x80 gvar_00690254
 0069016D    or          bl,al
>0069016F    jmp         00690212
 00690174    movzx       eax,byte ptr ds:[69023C];0x0 gvar_0069023C
 0069017B    or          bl,al
>0069017D    jmp         00690212
 00690182    movzx       eax,byte ptr ds:[69023C];0x0 gvar_0069023C
 00690189    or          bl,al
>0069018B    jmp         00690212
 00690190    movzx       eax,byte ptr ds:[69023C];0x0 gvar_0069023C
 00690197    or          bl,al
>00690199    jmp         00690212
 0069019B    movzx       eax,byte ptr ds:[69023C];0x0 gvar_0069023C
 006901A2    or          bl,al
>006901A4    jmp         00690212
 006901A6    movzx       eax,byte ptr ds:[69023C];0x0 gvar_0069023C
 006901AD    or          bl,al
>006901AF    jmp         00690212
 006901B1    movzx       eax,byte ptr ds:[69023C];0x0 gvar_0069023C
 006901B8    or          bl,al
>006901BA    jmp         00690212
 006901BC    movzx       eax,byte ptr ds:[69023C];0x0 gvar_0069023C
 006901C3    or          bl,al
>006901C5    jmp         00690212
 006901C7    movzx       eax,byte ptr ds:[69023C];0x0 gvar_0069023C
 006901CE    or          bl,al
>006901D0    jmp         00690212
 006901D2    movzx       eax,byte ptr ds:[69023C];0x0 gvar_0069023C
 006901D9    or          bl,al
>006901DB    jmp         00690212
 006901DD    movzx       eax,byte ptr ds:[69023C];0x0 gvar_0069023C
 006901E4    or          bl,al
>006901E6    jmp         00690212
 006901E8    movzx       eax,byte ptr ds:[69023C];0x0 gvar_0069023C
 006901EF    or          bl,al
>006901F1    jmp         00690212
 006901F3    movzx       eax,byte ptr ds:[690244];0x2 gvar_00690244
 006901FA    or          bl,al
>006901FC    jmp         00690212
 006901FE    movzx       eax,byte ptr ds:[690244];0x2 gvar_00690244
 00690205    or          bl,al
>00690207    jmp         00690212
 00690209    movzx       eax,byte ptr ds:[690244];0x2 gvar_00690244
 00690210    or          bl,al
 00690212    cmp         byte ptr [esp+16],3
>00690217    jne         0069022C
 00690219    movzx       eax,byte ptr ds:[690244];0x2 gvar_00690244
 00690220    not         eax
 00690222    and         al,bl
 00690224    or          al,byte ptr ds:[690248];0x4 gvar_00690248
 0069022A    mov         ebx,eax
 0069022C    mov         eax,ebx
 0069022E    add         esp,0DC
 00690234    pop         edi
 00690235    pop         esi
 00690236    pop         ebx
 00690237    ret
*}
end;

//00690258
function TFXPAD.ApoGetOutEvents(ap:TFXADRec):TFXEventSet;
begin
{*
 00690258    push        esi
 00690259    push        edi
 0069025A    add         esp,0FFFFFF24
 00690260    mov         esi,edx
 00690262    lea         edi,[esp]
 00690265    mov         ecx,36
 0069026A    rep movs    dword ptr [edi],dword ptr [esi]
 0069026C    movs        word ptr [edi],word ptr [esi]
 0069026E    movzx       eax,byte ptr ds:[6903DC];0x0 gvar_006903DC
 00690275    movzx       edx,byte ptr [esp+0A]
 0069027A    movzx       edx,dl
 0069027D    bt          dword ptr ds:[7C2680],edx;gvar_007C2680
>00690284    jae         006903D0
 0069028A    movzx       eax,byte ptr [esp+1F]
 0069028F    cmp         eax,15
>00690292    ja          006903C9
 00690298    jmp         dword ptr [eax*4+69029F]
 00690298    dd          006903C9
 00690298    dd          006902F7
 00690298    dd          00690303
 00690298    dd          0069030F
 00690298    dd          0069031B
 00690298    dd          00690327
 00690298    dd          00690333
 00690298    dd          0069033F
 00690298    dd          0069034B
 00690298    dd          00690354
 00690298    dd          0069035D
 00690298    dd          00690366
 00690298    dd          0069036F
 00690298    dd          00690378
 00690298    dd          00690381
 00690298    dd          0069038A
 00690298    dd          00690393
 00690298    dd          0069039C
 00690298    dd          006903A5
 00690298    dd          006903AE
 00690298    dd          006903B7
 00690298    dd          006903C0
 006902F7    movzx       eax,byte ptr ds:[6903E0];0x2 gvar_006903E0
>006902FE    jmp         006903D0
 00690303    movzx       eax,byte ptr ds:[6903E0];0x2 gvar_006903E0
>0069030A    jmp         006903D0
 0069030F    movzx       eax,byte ptr ds:[6903E4];0x8 gvar_006903E4
>00690316    jmp         006903D0
 0069031B    movzx       eax,byte ptr ds:[6903E0];0x2 gvar_006903E0
>00690322    jmp         006903D0
 00690327    movzx       eax,byte ptr ds:[6903E8];0x4 gvar_006903E8
>0069032E    jmp         006903D0
 00690333    movzx       eax,byte ptr ds:[6903E4];0x8 gvar_006903E4
>0069033A    jmp         006903D0
 0069033F    movzx       eax,byte ptr ds:[6903EC];0x10 gvar_006903EC
>00690346    jmp         006903D0
 0069034B    movzx       eax,byte ptr ds:[6903F0];0x4E gvar_006903F0
>00690352    jmp         006903D0
 00690354    movzx       eax,byte ptr ds:[6903E0];0x2 gvar_006903E0
>0069035B    jmp         006903D0
 0069035D    movzx       eax,byte ptr ds:[6903F4];0x40 gvar_006903F4
>00690364    jmp         006903D0
 00690366    movzx       eax,byte ptr ds:[6903DC];0x0 gvar_006903DC
>0069036D    jmp         006903D0
 0069036F    movzx       eax,byte ptr ds:[6903F8];0x20 gvar_006903F8
>00690376    jmp         006903D0
 00690378    movzx       eax,byte ptr ds:[6903FC];0x80 gvar_006903FC
>0069037F    jmp         006903D0
 00690381    movzx       eax,byte ptr ds:[6903DC];0x0 gvar_006903DC
>00690388    jmp         006903D0
 0069038A    movzx       eax,byte ptr ds:[6903E0];0x2 gvar_006903E0
>00690391    jmp         006903D0
 00690393    movzx       eax,byte ptr ds:[6903DC];0x0 gvar_006903DC
>0069039A    jmp         006903D0
 0069039C    movzx       eax,byte ptr ds:[6903E0];0x2 gvar_006903E0
>006903A3    jmp         006903D0
 006903A5    movzx       eax,byte ptr ds:[6903DC];0x0 gvar_006903DC
>006903AC    jmp         006903D0
 006903AE    movzx       eax,byte ptr ds:[6903E0];0x2 gvar_006903E0
>006903B5    jmp         006903D0
 006903B7    movzx       eax,byte ptr ds:[6903DC];0x0 gvar_006903DC
>006903BE    jmp         006903D0
 006903C0    movzx       eax,byte ptr ds:[6903F4];0x40 gvar_006903F4
>006903C7    jmp         006903D0
 006903C9    movzx       eax,byte ptr ds:[6903DC];0x0 gvar_006903DC
 006903D0    add         esp,0DC
 006903D6    pop         edi
 006903D7    pop         esi
 006903D8    ret
*}
end;

//00690400
function TFXPAD.IsApoWLConfigured:Boolean;
begin
{*
 00690400    push        ebx
 00690401    push        esi
 00690402    push        edi
 00690403    push        ebp
 00690404    mov         esi,eax
 00690406    xor         ebx,ebx
 00690408    xor         edi,edi
 0069040A    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 00690410    mov         edx,edi
 00690412    call        TFXPPD.GetControllerLoopType
 00690417    cmp         eax,3
>0069041A    je          00690421
 0069041C    cmp         eax,5
>0069041F    jne         0069046F
 00690421    mov         eax,1
 00690426    cmp         edi,7
>00690429    jbe         00690430
 0069042B    call        @BoundErr
 00690430    imul        edx,edi,43B3
>00690436    jno         0069043D
 00690438    call        @IntOver
 0069043D    lea         ebp,[esi+edx*4]
 00690440    dec         eax
 00690441    cmp         eax,9E
>00690446    jbe         0069044D
 00690448    call        @BoundErr
 0069044D    inc         eax
 0069044E    imul        edx,eax,6D
>00690451    jno         00690458
 00690453    call        @IntOver
 00690458    movzx       edx,byte ptr [ebp+edx*2-0CB]
 00690460    sub         dl,4
>00690463    jne         00690469
 00690465    mov         bl,1
>00690467    jmp         00690475
 00690469    inc         eax
 0069046A    cmp         eax,7F
>0069046D    jne         00690426
 0069046F    inc         edi
 00690470    cmp         edi,8
>00690473    jne         0069040A
 00690475    mov         eax,ebx
 00690477    pop         ebp
 00690478    pop         edi
 00690479    pop         esi
 0069047A    pop         ebx
 0069047B    ret
*}
end;

//0069047C
function TFXPAD.IsApoDSBConfigured:Boolean;
begin
{*
 0069047C    push        ebx
 0069047D    push        esi
 0069047E    push        edi
 0069047F    push        ebp
 00690480    mov         esi,eax
 00690482    xor         ebx,ebx
 00690484    xor         edi,edi
 00690486    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 0069048C    mov         edx,edi
 0069048E    call        TFXPPD.GetControllerLoopType
 00690493    cmp         eax,3
>00690496    je          0069049D
 00690498    cmp         eax,5
>0069049B    jne         006904EE
 0069049D    mov         eax,1
 006904A2    cmp         edi,7
>006904A5    jbe         006904AC
 006904A7    call        @BoundErr
 006904AC    imul        edx,edi,43B3
>006904B2    jno         006904B9
 006904B4    call        @IntOver
 006904B9    lea         ebp,[esi+edx*4]
 006904BC    dec         eax
 006904BD    cmp         eax,9E
>006904C2    jbe         006904C9
 006904C4    call        @BoundErr
 006904C9    inc         eax
 006904CA    imul        edx,eax,6D
>006904CD    jno         006904D4
 006904CF    call        @IntOver
 006904D4    movzx       edx,byte ptr [ebp+edx*2-0CC]
 006904DC    add         dl,0E7
 006904DF    sub         dl,4
>006904E2    jae         006904E8
 006904E4    mov         bl,1
>006904E6    jmp         006904F4
 006904E8    inc         eax
 006904E9    cmp         eax,7F
>006904EC    jne         006904A2
 006904EE    inc         edi
 006904EF    cmp         edi,8
>006904F2    jne         00690486
 006904F4    mov         eax,ebx
 006904F6    pop         ebp
 006904F7    pop         edi
 006904F8    pop         esi
 006904F9    pop         ebx
 006904FA    ret
*}
end;

//006904FC
function TFXPAD.DoesApoOutputFunctionMatch(output_function_type:Byte):Boolean;
begin
{*
 006904FC    push        ebx
 006904FD    push        esi
 006904FE    push        edi
 006904FF    push        ebp
 00690500    push        ecx
 00690501    mov         ebx,edx
 00690503    mov         esi,eax
 00690505    mov         byte ptr [esp],0
 00690509    xor         edi,edi
 0069050B    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 00690511    mov         edx,edi
 00690513    call        TFXPPD.GetControllerLoopType
 00690518    cmp         eax,3
>0069051B    je          00690522
 0069051D    cmp         eax,5
>00690520    jne         0069056E
 00690522    mov         eax,1
 00690527    cmp         edi,7
>0069052A    jbe         00690531
 0069052C    call        @BoundErr
 00690531    imul        edx,edi,43B3
>00690537    jno         0069053E
 00690539    call        @IntOver
 0069053E    lea         ebp,[esi+edx*4]
 00690541    dec         eax
 00690542    cmp         eax,9E
>00690547    jbe         0069054E
 00690549    call        @BoundErr
 0069054E    inc         eax
 0069054F    imul        edx,eax,6D
>00690552    jno         00690559
 00690554    call        @IntOver
 00690559    cmp         bl,byte ptr [ebp+edx*2-0B7]
>00690560    jne         00690568
 00690562    mov         byte ptr [esp],1
>00690566    jmp         00690574
 00690568    inc         eax
 00690569    cmp         eax,7F
>0069056C    jne         00690527
 0069056E    inc         edi
 0069056F    cmp         edi,8
>00690572    jne         0069050B
 00690574    movzx       eax,byte ptr [esp]
 00690578    pop         edx
 00690579    pop         ebp
 0069057A    pop         edi
 0069057B    pop         esi
 0069057C    pop         ebx
 0069057D    ret
*}
end;

//00690580
function TFXPAD.SysTypeToInt(s:string):Word;
begin
{*
 00690580    push        ebp
 00690581    mov         ebp,esp
 00690583    push        ecx
 00690584    push        ebx
 00690585    push        esi
 00690586    push        edi
 00690587    mov         dword ptr [ebp-4],edx
 0069058A    mov         eax,dword ptr [ebp-4]
 0069058D    call        @UStrAddRef
 00690592    xor         eax,eax
 00690594    push        ebp
 00690595    push        690778
 0069059A    push        dword ptr fs:[eax]
 0069059D    mov         dword ptr fs:[eax],esp
 006905A0    xor         edi,edi
 006905A2    xor         ebx,ebx
 006905A4    mov         esi,7C162C;^'Not in use'
 006905A9    mov         eax,dword ptr [ebp-4]
 006905AC    mov         edx,dword ptr [esi]
 006905AE    call        @UStrEqual
>006905B3    jne         006905DE
 006905B5    movzx       eax,bl
 006905B8    mov         edx,100
 006905BD    mul         eax,edx
 006905BF    mov         edi,eax
>006905C1    jno         006905C8
 006905C3    call        @IntOver
 006905C8    cmp         edi,0FFFF
>006905CE    jbe         00690762
 006905D4    call        @BoundErr
>006905D9    jmp         00690762
 006905DE    inc         ebx
 006905DF    add         esi,4
 006905E2    cmp         bl,10
>006905E5    jne         006905A9
 006905E7    xor         ebx,ebx
 006905E9    mov         esi,7C166C;^'Optical sensor'
 006905EE    mov         eax,dword ptr [ebp-4]
 006905F1    mov         edx,dword ptr [esi]
 006905F3    call        @UStrEqual
>006905F8    jne         00690620
 006905FA    movzx       edi,bl
 006905FD    add         edi,200
>00690603    jno         0069060A
 00690605    call        @IntOver
 0069060A    cmp         edi,0FFFF
>00690610    jbe         00690762
 00690616    call        @BoundErr
>0069061B    jmp         00690762
 00690620    inc         ebx
 00690621    add         esi,4
 00690624    cmp         bl,2
>00690627    jne         006905EE
 00690629    xor         ebx,ebx
 0069062B    mov         esi,7C1674;^'Thermal sensor'
 00690630    mov         eax,dword ptr [ebp-4]
 00690633    mov         edx,dword ptr [esi]
 00690635    call        @UStrEqual
>0069063A    jne         00690662
 0069063C    movzx       edi,bl
 0069063F    add         edi,300
>00690645    jno         0069064C
 00690647    call        @IntOver
 0069064C    cmp         edi,0FFFF
>00690652    jbe         00690762
 00690658    call        @BoundErr
>0069065D    jmp         00690762
 00690662    inc         ebx
 00690663    add         esi,4
 00690666    cmp         bl,2
>00690669    jne         00690630
 0069066B    xor         ebx,ebx
 0069066D    mov         esi,7C167C;^'Multicriteria sensor'
 00690672    mov         eax,dword ptr [ebp-4]
 00690675    mov         edx,dword ptr [esi]
 00690677    call        @UStrEqual
>0069067C    jne         006906A4
 0069067E    movzx       edi,bl
 00690681    add         edi,0B00
>00690687    jno         0069068E
 00690689    call        @IntOver
 0069068E    cmp         edi,0FFFF
>00690694    jbe         00690762
 0069069A    call        @BoundErr
>0069069F    jmp         00690762
 006906A4    inc         ebx
 006906A5    add         esi,4
 006906A8    cmp         bl,2
>006906AB    jne         00690672
 006906AD    xor         ebx,ebx
 006906AF    mov         esi,7C1684;^'Four criteria sensor'
 006906B4    mov         eax,dword ptr [ebp-4]
 006906B7    mov         edx,dword ptr [esi]
 006906B9    call        @UStrEqual
>006906BE    jne         006906E3
 006906C0    movzx       edi,bl
 006906C3    add         edi,0D00
>006906C9    jno         006906D0
 006906CB    call        @IntOver
 006906D0    cmp         edi,0FFFF
>006906D6    jbe         00690762
 006906DC    call        @BoundErr
>006906E1    jmp         00690762
 006906E3    inc         ebx
 006906E4    add         esi,4
 006906E7    cmp         bl,2
>006906EA    jne         006906B4
 006906EC    xor         ebx,ebx
 006906EE    mov         esi,7C168C;^'Three criteria sensor'
 006906F3    mov         eax,dword ptr [ebp-4]
 006906F6    mov         edx,dword ptr [esi]
 006906F8    call        @UStrEqual
>006906FD    jne         0069071E
 006906FF    movzx       edi,bl
 00690702    add         edi,0E00
>00690708    jno         0069070F
 0069070A    call        @IntOver
 0069070F    cmp         edi,0FFFF
>00690715    jbe         00690762
 00690717    call        @BoundErr
>0069071C    jmp         00690762
 0069071E    inc         ebx
 0069071F    add         esi,4
 00690722    cmp         bl,2
>00690725    jne         006906F3
 00690727    xor         ebx,ebx
 00690729    mov         esi,7C1714;^'Conventional Zone'
 0069072E    mov         eax,dword ptr [ebp-4]
 00690731    mov         edx,dword ptr [esi]
 00690733    call        @UStrEqual
>00690738    jne         00690759
 0069073A    movzx       edi,bl
 0069073D    add         edi,600
>00690743    jno         0069074A
 00690745    call        @IntOver
 0069074A    cmp         edi,0FFFF
>00690750    jbe         00690762
 00690752    call        @BoundErr
>00690757    jmp         00690762
 00690759    inc         ebx
 0069075A    add         esi,4
 0069075D    cmp         bl,2
>00690760    jne         0069072E
 00690762    xor         eax,eax
 00690764    pop         edx
 00690765    pop         ecx
 00690766    pop         ecx
 00690767    mov         dword ptr fs:[eax],edx
 0069076A    push        69077F
 0069076F    lea         eax,[ebp-4]
 00690772    call        @UStrClr
 00690777    ret
>00690778    jmp         @HandleFinally
>0069077D    jmp         0069076F
 0069077F    mov         eax,edi
 00690781    pop         edi
 00690782    pop         esi
 00690783    pop         ebx
 00690784    pop         ecx
 00690785    pop         ebp
 00690786    ret
*}
end;

//00690788
procedure TFXPAD.SysIntToType(value:Word; ?:UnicodeString);
begin
{*
 00690788    push        ebx
 00690789    push        esi
 0069078A    push        edi
 0069078B    mov         esi,ecx
 0069078D    mov         ebx,edx
 0069078F    mov         edi,ebx
 00690791    shr         di,8
 00690795    movzx       eax,di
 00690798    cmp         eax,0E
>0069079B    ja          006908D6
 006907A1    movzx       eax,byte ptr [eax+6907AF]
 006907A8    jmp         dword ptr [eax*4+6907BE]
 006907A8    db          0
 006907A8    db          0
 006907A8    db          1
 006907A8    db          2
 006907A8    db          0
 006907A8    db          0
 006907A8    db          0
 006907A8    db          0
 006907A8    db          0
 006907A8    db          0
 006907A8    db          0
 006907A8    db          3
 006907A8    db          0
 006907A8    db          4
 006907A8    db          5
 006907A8    dd          006908D6
 006907A8    dd          006907D6
 006907A8    dd          0069080B
 006907A8    dd          00690840
 006907A8    dd          00690872
 006907A8    dd          006908A4
 006907D6    mov         ax,0FF
 006907DA    and         ax,bx
 006907DD    movzx       eax,ax
 006907E0    cmp         eax,1
>006907E3    jge         006907E9
 006907E5    mov         ebx,eax
>006907E7    jmp         006907EE
 006907E9    mov         ebx,1
 006907EE    mov         eax,esi
 006907F0    cmp         ebx,1
>006907F3    jbe         006907FA
 006907F5    call        @BoundErr
 006907FA    mov         edx,dword ptr [ebx*4+7C166C];^'Optical sensor'
 00690801    call        @UStrAsg
>00690806    jmp         006908F1
 0069080B    mov         ax,0FF
 0069080F    and         ax,bx
 00690812    movzx       eax,ax
 00690815    cmp         eax,1
>00690818    jge         0069081E
 0069081A    mov         ebx,eax
>0069081C    jmp         00690823
 0069081E    mov         ebx,1
 00690823    mov         eax,esi
 00690825    cmp         ebx,1
>00690828    jbe         0069082F
 0069082A    call        @BoundErr
 0069082F    mov         edx,dword ptr [ebx*4+7C1674];^'Thermal sensor'
 00690836    call        @UStrAsg
>0069083B    jmp         006908F1
 00690840    mov         ax,0FF
 00690844    and         ax,bx
 00690847    movzx       eax,ax
 0069084A    cmp         eax,1
>0069084D    jge         00690853
 0069084F    mov         ebx,eax
>00690851    jmp         00690858
 00690853    mov         ebx,1
 00690858    mov         eax,esi
 0069085A    cmp         ebx,1
>0069085D    jbe         00690864
 0069085F    call        @BoundErr
 00690864    mov         edx,dword ptr [ebx*4+7C167C];^'Multicriteria sensor'
 0069086B    call        @UStrAsg
>00690870    jmp         006908F1
 00690872    mov         ax,0FF
 00690876    and         ax,bx
 00690879    movzx       eax,ax
 0069087C    cmp         eax,1
>0069087F    jge         00690885
 00690881    mov         ebx,eax
>00690883    jmp         0069088A
 00690885    mov         ebx,1
 0069088A    mov         eax,esi
 0069088C    cmp         ebx,1
>0069088F    jbe         00690896
 00690891    call        @BoundErr
 00690896    mov         edx,dword ptr [ebx*4+7C1684];^'Four criteria sensor'
 0069089D    call        @UStrAsg
>006908A2    jmp         006908F1
 006908A4    mov         ax,0FF
 006908A8    and         ax,bx
 006908AB    movzx       eax,ax
 006908AE    cmp         eax,1
>006908B1    jge         006908B7
 006908B3    mov         ebx,eax
>006908B5    jmp         006908BC
 006908B7    mov         ebx,1
 006908BC    mov         eax,esi
 006908BE    cmp         ebx,1
>006908C1    jbe         006908C8
 006908C3    call        @BoundErr
 006908C8    mov         edx,dword ptr [ebx*4+7C168C];^'Three criteria sensor'
 006908CF    call        @UStrAsg
>006908D4    jmp         006908F1
 006908D6    mov         eax,esi
 006908D8    movzx       edx,di
 006908DB    cmp         edx,0F
>006908DE    jbe         006908E5
 006908E0    call        @BoundErr
 006908E5    mov         edx,dword ptr [edx*4+7C162C];^'Not in use'
 006908EC    call        @UStrAsg
 006908F1    pop         edi
 006908F2    pop         esi
 006908F3    pop         ebx
 006908F4    ret
*}
end;

//006908F8
{*procedure TFXPAD.SysIntToInput(aptype:Byte; apfunc:Byte; ?:?);
begin
 006908F8    push        ebp
 006908F9    mov         ebp,esp
 006908FB    push        ecx
 006908FC    push        ebx
 006908FD    push        esi
 006908FE    mov         byte ptr [ebp-1],cl
 00690901    mov         ebx,eax
 00690903    mov         esi,dword ptr [ebp+8]
 00690906    sub         dl,4
>00690909    je          00690912
 0069090B    sub         dl,2
>0069090E    je          0069096A
>00690910    jmp         00690979
 00690912    movzx       eax,byte ptr [ebp-1]
 00690916    sub         al,1
>00690918    jb          00690920
 0069091A    sub         al,21
>0069091C    jb          0069093E
>0069091E    jmp         0069095C
 00690920    mov         eax,esi
 00690922    movzx       edx,byte ptr [ebp-1]
 00690926    cmp         edx,0
>00690929    jbe         00690930
 0069092B    call        @BoundErr
 00690930    mov         edx,dword ptr [edx*4+7C23D8];^'Manual CP/Al''m Switch'
 00690937    call        @UStrAsg
>0069093C    jmp         00690980
 0069093E    mov         eax,esi
 00690940    movzx       edx,byte ptr [ebp-1]
 00690944    cmp         edx,21
>00690947    jbe         0069094E
 00690949    call        @BoundErr
 0069094E    mov         edx,dword ptr [edx*4+7C23DC];^'Not in use'
 00690955    call        @UStrAsg
>0069095A    jmp         00690980
 0069095C    mov         eax,esi
 0069095E    mov         edx,690994;'ERR'
 00690963    call        @UStrAsg
>00690968    jmp         00690980
 0069096A    mov         ecx,esi
 0069096C    movzx       edx,byte ptr [ebp-1]
 00690970    mov         eax,ebx
 00690972    call        TFXPAD.ComIntToCzmInput
>00690977    jmp         00690980
 00690979    mov         eax,esi
 0069097B    call        @UStrClr
 00690980    pop         esi
 00690981    pop         ebx
 00690982    pop         ecx
 00690983    pop         ebp
 00690984    ret         4
end;*}

//0069099C
function TFXPAD.SysOutputToInt(s:string):Byte;
begin
{*
 0069099C    push        ebp
 0069099D    mov         ebp,esp
 0069099F    add         esp,0FFFFFFF8
 006909A2    push        ebx
 006909A3    push        esi
 006909A4    mov         dword ptr [ebp-4],edx
 006909A7    mov         eax,dword ptr [ebp-4]
 006909AA    call        @UStrAddRef
 006909AF    xor         eax,eax
 006909B1    push        ebp
 006909B2    push        6909F6
 006909B7    push        dword ptr fs:[eax]
 006909BA    mov         dword ptr fs:[eax],esp
 006909BD    mov         byte ptr [ebp-5],0
 006909C1    xor         ebx,ebx
 006909C3    mov         esi,7C16B0;^'Fire Alarm Devices'
 006909C8    mov         eax,dword ptr [ebp-4]
 006909CB    mov         edx,dword ptr [esi]
 006909CD    call        @UStrEqual
>006909D2    jne         006909D7
 006909D4    mov         byte ptr [ebp-5],bl
 006909D7    inc         ebx
 006909D8    add         esi,4
 006909DB    cmp         bl,19
>006909DE    jne         006909C8
 006909E0    xor         eax,eax
 006909E2    pop         edx
 006909E3    pop         ecx
 006909E4    pop         ecx
 006909E5    mov         dword ptr fs:[eax],edx
 006909E8    push        6909FD
 006909ED    lea         eax,[ebp-4]
 006909F0    call        @UStrClr
 006909F5    ret
>006909F6    jmp         @HandleFinally
>006909FB    jmp         006909ED
 006909FD    movzx       eax,byte ptr [ebp-5]
 00690A01    pop         esi
 00690A02    pop         ebx
 00690A03    pop         ecx
 00690A04    pop         ecx
 00690A05    pop         ebp
 00690A06    ret
*}
end;

//00690A08
{*procedure TFXPAD.SysIntToOutput(value:Byte; ?:?);
begin
 00690A08    push        ebx
 00690A09    push        esi
 00690A0A    mov         esi,ecx
 00690A0C    mov         ebx,edx
 00690A0E    mov         eax,ebx
 00690A10    sub         al,19
>00690A12    jae         00690A32
 00690A14    mov         eax,esi
 00690A16    movzx       edx,bl
 00690A19    cmp         edx,18
>00690A1C    jbe         00690A23
 00690A1E    call        @BoundErr
 00690A23    mov         edx,dword ptr [edx*4+7C16B0];^'Fire Alarm Devices'
 00690A2A    call        @UStrAsg
 00690A2F    pop         esi
 00690A30    pop         ebx
 00690A31    ret
 00690A32    mov         eax,esi
 00690A34    mov         edx,690A50;'ERR'
 00690A39    call        @UStrAsg
 00690A3E    pop         esi
 00690A3F    pop         ebx
 00690A40    ret
end;*}

//00690A58
function TFXPAD.SysLevelToMs(APType:Byte; Level:string):Word;
begin
{*
 00690A58    push        ebp
 00690A59    mov         ebp,esp
 00690A5B    add         esp,0FFFFFFE8
 00690A5E    push        ebx
 00690A5F    push        esi
 00690A60    xor         ebx,ebx
 00690A62    mov         dword ptr [ebp-18],ebx
 00690A65    mov         dword ptr [ebp-8],ebx
 00690A68    mov         dword ptr [ebp-4],ecx
 00690A6B    mov         byte ptr [ebp-9],dl
 00690A6E    mov         eax,dword ptr [ebp-4]
 00690A71    call        @UStrAddRef
 00690A76    xor         eax,eax
 00690A78    push        ebp
 00690A79    push        690C77
 00690A7E    push        dword ptr fs:[eax]
 00690A81    mov         dword ptr fs:[eax],esp
 00690A84    xor         esi,esi
 00690A86    mov         eax,dword ptr [ebp-4]
 00690A89    test        eax,eax
>00690A8B    je          00690A92
 00690A8D    sub         eax,4
 00690A90    mov         eax,dword ptr [eax]
 00690A92    cmp         eax,0FF
>00690A97    jbe         00690A9E
 00690A99    call        @BoundErr
 00690A9E    test        al,al
>00690AA0    jbe         00690B03
 00690AA2    mov         byte ptr [ebp-11],al
 00690AA5    mov         bl,1
 00690AA7    lea         eax,[ebp-4]
 00690AAA    call        @UniqueStringU
 00690AAF    movzx       edx,bl
 00690AB2    dec         edx
 00690AB3    test        eax,eax
>00690AB5    je          00690ABC
 00690AB7    cmp         edx,dword ptr [eax-4]
>00690ABA    jb          00690AC1
 00690ABC    call        @BoundErr
 00690AC1    inc         edx
 00690AC2    lea         eax,[eax+edx*2-2]
 00690AC6    call        00417140
 00690ACB    test        al,al
>00690ACD    je          00690AFD
 00690ACF    lea         eax,[ebp-18]
 00690AD2    movzx       edx,bl
 00690AD5    mov         ecx,dword ptr [ebp-4]
 00690AD8    dec         edx
 00690AD9    test        ecx,ecx
>00690ADB    je          00690AE2
 00690ADD    cmp         edx,dword ptr [ecx-4]
>00690AE0    jb          00690AE7
 00690AE2    call        @BoundErr
 00690AE7    inc         edx
 00690AE8    movzx       edx,word ptr [ecx+edx*2-2]
 00690AED    call        @UStrFromWChar
 00690AF2    mov         edx,dword ptr [ebp-18]
 00690AF5    lea         eax,[ebp-8]
 00690AF8    call        @UStrCat
 00690AFD    inc         ebx
 00690AFE    dec         byte ptr [ebp-11]
>00690B01    jne         00690AA7
 00690B03    lea         edx,[ebp-10]
 00690B06    mov         eax,dword ptr [ebp-8]
 00690B09    call        @ValLong
 00690B0E    cmp         dword ptr [ebp-10],0
>00690B12    jne         00690C54
 00690B18    movzx       edx,byte ptr [ebp-9]
 00690B1C    cmp         edx,0F
>00690B1F    ja          00690C54
 00690B25    jmp         dword ptr [edx*4+690B2C]
 00690B25    dd          00690C54
 00690B25    dd          00690B6C
 00690B25    dd          00690B88
 00690B25    dd          00690C54
 00690B25    dd          00690C54
 00690B25    dd          00690C54
 00690B25    dd          00690C54
 00690B25    dd          00690C54
 00690B25    dd          00690BA4
 00690B25    dd          00690BC0
 00690B25    dd          00690BD9
 00690B25    dd          00690BF2
 00690B25    dd          00690C54
 00690B25    dd          00690C0B
 00690B25    dd          00690C24
 00690B25    dd          00690C3D
 00690B6C    movzx       eax,al
 00690B6F    dec         eax
 00690B70    cmp         eax,4
>00690B73    jbe         00690B7A
 00690B75    call        @BoundErr
 00690B7A    inc         eax
 00690B7B    movzx       esi,word ptr [eax*2+7C171A]
>00690B83    jmp         00690C54
 00690B88    movzx       eax,al
 00690B8B    dec         eax
 00690B8C    cmp         eax,4
>00690B8F    jbe         00690B96
 00690B91    call        @BoundErr
 00690B96    inc         eax
 00690B97    movzx       esi,word ptr [eax*2+7C1724]
>00690B9F    jmp         00690C54
 00690BA4    movzx       eax,al
 00690BA7    dec         eax
 00690BA8    cmp         eax,4
>00690BAB    jbe         00690BB2
 00690BAD    call        @BoundErr
 00690BB2    inc         eax
 00690BB3    movzx       esi,word ptr [eax*2+7C172E]
>00690BBB    jmp         00690C54
 00690BC0    movzx       eax,al
 00690BC3    dec         eax
 00690BC4    cmp         eax,9
>00690BC7    jbe         00690BCE
 00690BC9    call        @BoundErr
 00690BCE    inc         eax
 00690BCF    movzx       esi,word ptr [eax*2+7C1744]
>00690BD7    jmp         00690C54
 00690BD9    movzx       eax,al
 00690BDC    dec         eax
 00690BDD    cmp         eax,8
>00690BE0    jbe         00690BE7
 00690BE2    call        @BoundErr
 00690BE7    inc         eax
 00690BE8    movzx       esi,word ptr [eax*2+7C1758]
>00690BF0    jmp         00690C54
 00690BF2    movzx       eax,al
 00690BF5    dec         eax
 00690BF6    cmp         eax,5
>00690BF9    jbe         00690C00
 00690BFB    call        @BoundErr
 00690C00    inc         eax
 00690C01    movzx       esi,word ptr [eax*2+7C1738]
>00690C09    jmp         00690C54
 00690C0B    movzx       eax,al
 00690C0E    dec         eax
 00690C0F    cmp         eax,5
>00690C12    jbe         00690C19
 00690C14    call        @BoundErr
 00690C19    inc         eax
 00690C1A    movzx       esi,word ptr [eax*2+7C1738]
>00690C22    jmp         00690C54
 00690C24    movzx       eax,al
 00690C27    dec         eax
 00690C28    cmp         eax,5
>00690C2B    jbe         00690C32
 00690C2D    call        @BoundErr
 00690C32    inc         eax
 00690C33    movzx       esi,word ptr [eax*2+7C1738]
>00690C3B    jmp         00690C54
 00690C3D    movzx       eax,al
 00690C40    dec         eax
 00690C41    cmp         eax,4
>00690C44    jbe         00690C4B
 00690C46    call        @BoundErr
 00690C4B    inc         eax
 00690C4C    movzx       esi,word ptr [eax*2+7C176A]
 00690C54    xor         eax,eax
 00690C56    pop         edx
 00690C57    pop         ecx
 00690C58    pop         ecx
 00690C59    mov         dword ptr fs:[eax],edx
 00690C5C    push        690C7E
 00690C61    lea         eax,[ebp-18]
 00690C64    call        @UStrClr
 00690C69    lea         eax,[ebp-8]
 00690C6C    mov         edx,2
 00690C71    call        @UStrArrayClr
 00690C76    ret
>00690C77    jmp         @HandleFinally
>00690C7C    jmp         00690C61
 00690C7E    mov         eax,esi
 00690C80    pop         esi
 00690C81    pop         ebx
 00690C82    mov         esp,ebp
 00690C84    pop         ebp
 00690C85    ret
*}
end;

//00690C88
{*procedure TFXPAD.SysMsToLevel(APType:Byte; Ms:Word; ?:?);
begin
 00690C88    push        ebp
 00690C89    mov         ebp,esp
 00690C8B    push        ebx
 00690C8C    mov         ebx,dword ptr [ebp+8]
 00690C8F    movzx       eax,dl
 00690C92    cmp         eax,0F
>00690C95    ja          0069122A
 00690C9B    jmp         dword ptr [eax*4+690CA2]
 00690C9B    dd          0069122A
 00690C9B    dd          00690CE2
 00690C9B    dd          00690D77
 00690C9B    dd          00690E0C
 00690C9B    dd          0069122A
 00690C9B    dd          0069122A
 00690C9B    dd          0069122A
 00690C9B    dd          0069122A
 00690C9B    dd          00690E18
 00690C9B    dd          00690EAF
 00690C9B    dd          00690FE2
 00690C9B    dd          006910F7
 00690C9B    dd          0069122A
 00690C9B    dd          006910F7
 00690C9B    dd          006910F7
 00690C9B    dd          006911A7
 00690CE2    movzx       eax,cx
 00690CE5    cmp         eax,6D6
>00690CEA    jg          00690CFE
>00690CEC    je          00690D30
 00690CEE    sub         eax,532
>00690CF3    je          00690D0C
 00690CF5    sub         eax,0AA
>00690CFA    je          00690D1E
>00690CFC    jmp         00690D66
 00690CFE    sub         eax,762
>00690D03    je          00690D42
 00690D05    sub         eax,6E
>00690D08    je          00690D54
>00690D0A    jmp         00690D66
 00690D0C    mov         eax,ebx
 00690D0E    mov         edx,dword ptr ds:[7C2844];^'L 1'
 00690D14    call        @UStrAsg
>00690D19    jmp         00691231
 00690D1E    mov         eax,ebx
 00690D20    mov         edx,dword ptr ds:[7C2848];^'L 2'
 00690D26    call        @UStrAsg
>00690D2B    jmp         00691231
 00690D30    mov         eax,ebx
 00690D32    mov         edx,dword ptr ds:[7C284C];^'L 3'
 00690D38    call        @UStrAsg
>00690D3D    jmp         00691231
 00690D42    mov         eax,ebx
 00690D44    mov         edx,dword ptr ds:[7C2850];^'L 4'
 00690D4A    call        @UStrAsg
>00690D4F    jmp         00691231
 00690D54    mov         eax,ebx
 00690D56    mov         edx,dword ptr ds:[7C2854];^'L 5'
 00690D5C    call        @UStrAsg
>00690D61    jmp         00691231
 00690D66    mov         eax,ebx
 00690D68    mov         edx,691244;'ERR'
 00690D6D    call        @UStrAsg
>00690D72    jmp         00691231
 00690D77    movzx       eax,cx
 00690D7A    cmp         eax,960
>00690D7F    jg          00690D93
>00690D81    je          00690DC5
 00690D83    sub         eax,654
>00690D88    je          00690DA1
 00690D8A    sub         eax,104
>00690D8F    je          00690DB3
>00690D91    jmp         00690DFB
 00690D93    sub         eax,9C4
>00690D98    je          00690DD7
 00690D9A    sub         eax,64
>00690D9D    je          00690DE9
>00690D9F    jmp         00690DFB
 00690DA1    mov         eax,ebx
 00690DA3    mov         edx,dword ptr ds:[7C2844];^'L 1'
 00690DA9    call        @UStrAsg
>00690DAE    jmp         00691231
 00690DB3    mov         eax,ebx
 00690DB5    mov         edx,dword ptr ds:[7C2848];^'L 2'
 00690DBB    call        @UStrAsg
>00690DC0    jmp         00691231
 00690DC5    mov         eax,ebx
 00690DC7    mov         edx,dword ptr ds:[7C284C];^'L 3'
 00690DCD    call        @UStrAsg
>00690DD2    jmp         00691231
 00690DD7    mov         eax,ebx
 00690DD9    mov         edx,dword ptr ds:[7C2850];^'L 4'
 00690DDF    call        @UStrAsg
>00690DE4    jmp         00691231
 00690DE9    mov         eax,ebx
 00690DEB    mov         edx,dword ptr ds:[7C2854];^'L 5'
 00690DF1    call        @UStrAsg
>00690DF6    jmp         00691231
 00690DFB    mov         eax,ebx
 00690DFD    mov         edx,691244;'ERR'
 00690E02    call        @UStrAsg
>00690E07    jmp         00691231
 00690E0C    mov         eax,ebx
 00690E0E    call        @UStrClr
>00690E13    jmp         00691231
 00690E18    movzx       eax,cx
 00690E1B    cmp         eax,802
>00690E20    jg          00690E34
>00690E22    je          00690E68
 00690E24    sub         eax,514
>00690E29    je          00690E44
 00690E2B    sub         eax,172
>00690E30    je          00690E56
>00690E32    jmp         00690E9E
 00690E34    sub         eax,974
>00690E39    je          00690E7A
 00690E3B    sub         eax,172
>00690E40    je          00690E8C
>00690E42    jmp         00690E9E
 00690E44    mov         eax,ebx
 00690E46    mov         edx,dword ptr ds:[7C2844];^'L 1'
 00690E4C    call        @UStrAsg
>00690E51    jmp         00691231
 00690E56    mov         eax,ebx
 00690E58    mov         edx,dword ptr ds:[7C2848];^'L 2'
 00690E5E    call        @UStrAsg
>00690E63    jmp         00691231
 00690E68    mov         eax,ebx
 00690E6A    mov         edx,dword ptr ds:[7C284C];^'L 3'
 00690E70    call        @UStrAsg
>00690E75    jmp         00691231
 00690E7A    mov         eax,ebx
 00690E7C    mov         edx,dword ptr ds:[7C2850];^'L 4'
 00690E82    call        @UStrAsg
>00690E87    jmp         00691231
 00690E8C    mov         eax,ebx
 00690E8E    mov         edx,dword ptr ds:[7C2854];^'L 5'
 00690E94    call        @UStrAsg
>00690E99    jmp         00691231
 00690E9E    mov         eax,ebx
 00690EA0    mov         edx,691244;'ERR'
 00690EA5    call        @UStrAsg
>00690EAA    jmp         00691231
 00690EAF    movzx       eax,cx
 00690EB2    cmp         eax,474
>00690EB7    jg          00690EEC
>00690EB9    je          00690F77
 00690EBF    cmp         eax,1EA
>00690EC4    jg          00690ED9
>00690EC6    je          00690F41
 00690EC8    sub         eax,3C
>00690ECB    je          00690F1D
 00690ECD    sub         eax,0DC
>00690ED2    je          00690F2F
>00690ED4    jmp         00690FD1
 00690ED9    sub         eax,2C6
>00690EDE    je          00690F53
 00690EE0    sub         eax,0D2
>00690EE5    je          00690F65
>00690EE7    jmp         00690FD1
 00690EEC    sub         eax,546
>00690EF1    je          00690F89
 00690EF7    sub         eax,0DC
>00690EFC    je          00690F9B
 00690F02    sub         eax,0D2
>00690F07    je          00690FAD
 00690F0D    sub         eax,0DC
>00690F12    je          00690FBF
>00690F18    jmp         00690FD1
 00690F1D    mov         eax,ebx
 00690F1F    mov         edx,dword ptr ds:[7C2844];^'L 1'
 00690F25    call        @UStrAsg
>00690F2A    jmp         00691231
 00690F2F    mov         eax,ebx
 00690F31    mov         edx,dword ptr ds:[7C2848];^'L 2'
 00690F37    call        @UStrAsg
>00690F3C    jmp         00691231
 00690F41    mov         eax,ebx
 00690F43    mov         edx,dword ptr ds:[7C284C];^'L 3'
 00690F49    call        @UStrAsg
>00690F4E    jmp         00691231
 00690F53    mov         eax,ebx
 00690F55    mov         edx,dword ptr ds:[7C2850];^'L 4'
 00690F5B    call        @UStrAsg
>00690F60    jmp         00691231
 00690F65    mov         eax,ebx
 00690F67    mov         edx,dword ptr ds:[7C2854];^'L 5'
 00690F6D    call        @UStrAsg
>00690F72    jmp         00691231
 00690F77    mov         eax,ebx
 00690F79    mov         edx,dword ptr ds:[7C2858];^'L 6'
 00690F7F    call        @UStrAsg
>00690F84    jmp         00691231
 00690F89    mov         eax,ebx
 00690F8B    mov         edx,dword ptr ds:[7C285C];^'L 7'
 00690F91    call        @UStrAsg
>00690F96    jmp         00691231
 00690F9B    mov         eax,ebx
 00690F9D    mov         edx,dword ptr ds:[7C2860];^'L 8'
 00690FA3    call        @UStrAsg
>00690FA8    jmp         00691231
 00690FAD    mov         eax,ebx
 00690FAF    mov         edx,dword ptr ds:[7C2864];^'L 9'
 00690FB5    call        @UStrAsg
>00690FBA    jmp         00691231
 00690FBF    mov         eax,ebx
 00690FC1    mov         edx,dword ptr ds:[7C2868];^'L10'
 00690FC7    call        @UStrAsg
>00690FCC    jmp         00691231
 00690FD1    mov         eax,ebx
 00690FD3    mov         edx,691244;'ERR'
 00690FD8    call        @UStrAsg
>00690FDD    jmp         00691231
 00690FE2    movzx       eax,cx
 00690FE5    cmp         eax,870
>00690FEA    jg          00691013
>00690FEC    je          0069108C
 00690FF2    sub         eax,550
>00690FF7    je          00691044
 00690FF9    sub         eax,0C8
>00690FFE    je          00691056
 00691000    sub         eax,0C8
>00691005    je          00691068
 00691007    sub         eax,0C8
>0069100C    je          0069107A
>0069100E    jmp         006910E6
 00691013    sub         eax,938
>00691018    je          0069109E
 0069101E    sub         eax,0C8
>00691023    je          006910B0
 00691029    sub         eax,0C8
>0069102E    je          006910C2
 00691034    sub         eax,0C8
>00691039    je          006910D4
>0069103F    jmp         006910E6
 00691044    mov         eax,ebx
 00691046    mov         edx,dword ptr ds:[7C2844];^'L 1'
 0069104C    call        @UStrAsg
>00691051    jmp         00691231
 00691056    mov         eax,ebx
 00691058    mov         edx,dword ptr ds:[7C2848];^'L 2'
 0069105E    call        @UStrAsg
>00691063    jmp         00691231
 00691068    mov         eax,ebx
 0069106A    mov         edx,dword ptr ds:[7C284C];^'L 3'
 00691070    call        @UStrAsg
>00691075    jmp         00691231
 0069107A    mov         eax,ebx
 0069107C    mov         edx,dword ptr ds:[7C2850];^'L 4'
 00691082    call        @UStrAsg
>00691087    jmp         00691231
 0069108C    mov         eax,ebx
 0069108E    mov         edx,dword ptr ds:[7C2854];^'L 5'
 00691094    call        @UStrAsg
>00691099    jmp         00691231
 0069109E    mov         eax,ebx
 006910A0    mov         edx,dword ptr ds:[7C2858];^'L 6'
 006910A6    call        @UStrAsg
>006910AB    jmp         00691231
 006910B0    mov         eax,ebx
 006910B2    mov         edx,dword ptr ds:[7C285C];^'L 7'
 006910B8    call        @UStrAsg
>006910BD    jmp         00691231
 006910C2    mov         eax,ebx
 006910C4    mov         edx,dword ptr ds:[7C2860];^'L 8'
 006910CA    call        @UStrAsg
>006910CF    jmp         00691231
 006910D4    mov         eax,ebx
 006910D6    mov         edx,dword ptr ds:[7C2864];^'L 9'
 006910DC    call        @UStrAsg
>006910E1    jmp         00691231
 006910E6    mov         eax,ebx
 006910E8    mov         edx,691244;'ERR'
 006910ED    call        @UStrAsg
>006910F2    jmp         00691231
 006910F7    movzx       eax,cx
 006910FA    cmp         eax,960
>006910FF    jg          0069111A
>00691101    je          00691160
 00691103    sub         eax,514
>00691108    je          0069112A
 0069110A    sub         eax,12C
>0069110F    je          0069113C
 00691111    sub         eax,190
>00691116    je          0069114E
>00691118    jmp         00691196
 0069111A    sub         eax,0AE6
>0069111F    je          00691172
 00691121    sub         eax,19A
>00691126    je          00691184
>00691128    jmp         00691196
 0069112A    mov         eax,ebx
 0069112C    mov         edx,dword ptr ds:[7C2844];^'L 1'
 00691132    call        @UStrAsg
>00691137    jmp         00691231
 0069113C    mov         eax,ebx
 0069113E    mov         edx,dword ptr ds:[7C2848];^'L 2'
 00691144    call        @UStrAsg
>00691149    jmp         00691231
 0069114E    mov         eax,ebx
 00691150    mov         edx,dword ptr ds:[7C284C];^'L 3'
 00691156    call        @UStrAsg
>0069115B    jmp         00691231
 00691160    mov         eax,ebx
 00691162    mov         edx,dword ptr ds:[7C2850];^'L 4'
 00691168    call        @UStrAsg
>0069116D    jmp         00691231
 00691172    mov         eax,ebx
 00691174    mov         edx,dword ptr ds:[7C2854];^'L 5'
 0069117A    call        @UStrAsg
>0069117F    jmp         00691231
 00691184    mov         eax,ebx
 00691186    mov         edx,dword ptr ds:[7C2858];^'L 6'
 0069118C    call        @UStrAsg
>00691191    jmp         00691231
 00691196    mov         eax,ebx
 00691198    mov         edx,691244;'ERR'
 0069119D    call        @UStrAsg
>006911A2    jmp         00691231
 006911A7    movzx       eax,cx
 006911AA    cmp         eax,960
>006911AF    jg          006911C3
>006911B1    je          006911EF
 006911B3    sub         eax,654
>006911B8    je          006911D1
 006911BA    sub         eax,104
>006911BF    je          006911E0
>006911C1    jmp         0069121C
 006911C3    sub         eax,9C4
>006911C8    je          006911FE
 006911CA    sub         eax,64
>006911CD    je          0069120D
>006911CF    jmp         0069121C
 006911D1    mov         eax,ebx
 006911D3    mov         edx,dword ptr ds:[7C2844];^'L 1'
 006911D9    call        @UStrAsg
>006911DE    jmp         00691231
 006911E0    mov         eax,ebx
 006911E2    mov         edx,dword ptr ds:[7C2848];^'L 2'
 006911E8    call        @UStrAsg
>006911ED    jmp         00691231
 006911EF    mov         eax,ebx
 006911F1    mov         edx,dword ptr ds:[7C284C];^'L 3'
 006911F7    call        @UStrAsg
>006911FC    jmp         00691231
 006911FE    mov         eax,ebx
 00691200    mov         edx,dword ptr ds:[7C2850];^'L 4'
 00691206    call        @UStrAsg
>0069120B    jmp         00691231
 0069120D    mov         eax,ebx
 0069120F    mov         edx,dword ptr ds:[7C2854];^'L 5'
 00691215    call        @UStrAsg
>0069121A    jmp         00691231
 0069121C    mov         eax,ebx
 0069121E    mov         edx,691244;'ERR'
 00691223    call        @UStrAsg
>00691228    jmp         00691231
 0069122A    mov         eax,ebx
 0069122C    call        @UStrClr
 00691231    pop         ebx
 00691232    pop         ebp
 00691233    ret         4
end;*}

//0069124C
function TFXPAD.SysModeToInt(w:Word; s:string):Integer;
begin
{*
 0069124C    push        ebp
 0069124D    mov         ebp,esp
 0069124F    push        ecx
 00691250    push        ebx
 00691251    push        esi
 00691252    push        edi
 00691253    mov         dword ptr [ebp-4],ecx
 00691256    mov         edi,edx
 00691258    mov         eax,dword ptr [ebp-4]
 0069125B    call        @UStrAddRef
 00691260    xor         eax,eax
 00691262    push        ebp
 00691263    push        6912E2
 00691268    push        dword ptr fs:[eax]
 0069126B    mov         dword ptr fs:[eax],esp
 0069126E    mov         eax,edi
 00691270    shr         ax,8
 00691274    cmp         ax,5
>00691278    jne         0069129D
 0069127A    xor         ebx,ebx
 0069127C    mov         esi,7C2490;^'Monitored'
 00691281    mov         eax,dword ptr [ebp-4]
 00691284    mov         edx,dword ptr [esi]
 00691286    call        @UStrEqual
>0069128B    jne         00691294
 0069128D    movzx       eax,bl
 00691290    mov         ebx,eax
>00691292    jmp         006912CC
 00691294    inc         ebx
 00691295    add         esi,4
 00691298    cmp         bl,3
>0069129B    jne         00691281
 0069129D    shr         di,8
 006912A1    cmp         di,5
>006912A5    je          006912CA
 006912A7    xor         ebx,ebx
 006912A9    mov         esi,7C2478;^'Normal'
 006912AE    mov         eax,dword ptr [ebp-4]
 006912B1    mov         edx,dword ptr [esi]
 006912B3    call        @UStrEqual
>006912B8    jne         006912C1
 006912BA    movzx       eax,bl
 006912BD    mov         ebx,eax
>006912BF    jmp         006912CC
 006912C1    inc         ebx
 006912C2    add         esi,4
 006912C5    cmp         bl,6
>006912C8    jne         006912AE
 006912CA    xor         ebx,ebx
 006912CC    xor         eax,eax
 006912CE    pop         edx
 006912CF    pop         ecx
 006912D0    pop         ecx
 006912D1    mov         dword ptr fs:[eax],edx
 006912D4    push        6912E9
 006912D9    lea         eax,[ebp-4]
 006912DC    call        @UStrClr
 006912E1    ret
>006912E2    jmp         @HandleFinally
>006912E7    jmp         006912D9
 006912E9    mov         eax,ebx
 006912EB    pop         edi
 006912EC    pop         esi
 006912ED    pop         ebx
 006912EE    pop         ecx
 006912EF    pop         ebp
 006912F0    ret
*}
end;

//006912F4
{*procedure TFXPAD.SysIntToMode(w:Word; v:Integer; ?:?);
begin
 006912F4    push        ebp
 006912F5    mov         ebp,esp
 006912F7    push        ebx
 006912F8    push        esi
 006912F9    mov         esi,ecx
 006912FB    mov         ebx,dword ptr [ebp+8]
 006912FE    shr         dx,8
 00691302    sub         dx,1
>00691306    jb          00691310
 00691308    sub         dx,4
>0069130C    je          00691319
>0069130E    jmp         00691347
 00691310    mov         eax,ebx
 00691312    call        @UStrClr
>00691317    jmp         0069135F
 00691319    cmp         esi,2
>0069131C    jle         0069132D
 0069131E    mov         eax,ebx
 00691320    mov         edx,dword ptr ds:[7C2490];^'Monitored'
 00691326    call        @UStrAsg
>0069132B    jmp         0069135F
 0069132D    mov         eax,ebx
 0069132F    cmp         esi,2
>00691332    jbe         00691339
 00691334    call        @BoundErr
 00691339    mov         edx,dword ptr [esi*4+7C2490];^'Monitored'
 00691340    call        @UStrAsg
>00691345    jmp         0069135F
 00691347    mov         eax,ebx
 00691349    cmp         esi,5
>0069134C    jbe         00691353
 0069134E    call        @BoundErr
 00691353    mov         edx,dword ptr [esi*4+7C2478];^'Normal'
 0069135A    call        @UStrAsg
 0069135F    pop         esi
 00691360    pop         ebx
 00691361    pop         ebp
 00691362    ret         4
end;*}

//00691368
function TFXPAD.SysUpdateThresholds(APType:Byte; var msValue:Word):Boolean;
begin
{*
 00691368    xor         eax,eax
 0069136A    sub         dl,3
>0069136D    je          00691381
 0069136F    sub         dl,7
>00691372    je          00691397
 00691374    dec         dl
>00691376    je          00691444
>0069137C    jmp         00691488
 00691381    movzx       edx,word ptr [ecx]
 00691384    sub         dx,834
>00691389    jne         0069148A
 0069138F    mov         word ptr [ecx],7D0
 00691394    mov         al,1
 00691396    ret
 00691397    movzx       edx,word ptr [ecx]
 0069139A    cmp         edx,87A
>006913A0    jg          006913C9
>006913A2    je          00691418
 006913A4    sub         edx,55A
>006913AA    je          006913EE
 006913AC    sub         edx,0C8
>006913B2    je          006913FA
 006913B4    sub         edx,0C8
>006913BA    je          00691406
 006913BC    sub         edx,0C8
>006913C2    je          0069140F
>006913C4    jmp         0069148A
 006913C9    sub         edx,942
>006913CF    je          00691421
 006913D1    sub         edx,0C8
>006913D7    je          0069142A
 006913D9    sub         edx,0C8
>006913DF    je          00691433
 006913E1    sub         edx,0C8
>006913E7    je          0069143C
>006913E9    jmp         0069148A
 006913EE    mov         word ptr [ecx],550
 006913F3    mov         al,1
>006913F5    jmp         0069148A
 006913FA    mov         word ptr [ecx],618
 006913FF    mov         al,1
>00691401    jmp         0069148A
 00691406    mov         word ptr [ecx],6E0
 0069140B    mov         al,1
>0069140D    jmp         0069148A
 0069140F    mov         word ptr [ecx],7A8
 00691414    mov         al,1
>00691416    jmp         0069148A
 00691418    mov         word ptr [ecx],870
 0069141D    mov         al,1
>0069141F    jmp         0069148A
 00691421    mov         word ptr [ecx],938
 00691426    mov         al,1
>00691428    jmp         0069148A
 0069142A    mov         word ptr [ecx],0A00
 0069142F    mov         al,1
>00691431    jmp         0069148A
 00691433    mov         word ptr [ecx],0AC8
 00691438    mov         al,1
>0069143A    jmp         0069148A
 0069143C    mov         word ptr [ecx],0B90
 00691441    mov         al,1
 00691443    ret
 00691444    movzx       edx,word ptr [ecx]
 00691447    sub         dx,686
>0069144C    je          00691465
 0069144E    sub         dx,17C
>00691453    je          0069146E
 00691455    sub         dx,172
>0069145A    je          00691477
 0069145C    sub         dx,2E4
>00691461    je          00691480
>00691463    jmp         0069148A
 00691465    mov         word ptr [ecx],640
 0069146A    mov         al,1
>0069146C    jmp         0069148A
 0069146E    mov         word ptr [ecx],7D0
 00691473    mov         al,1
>00691475    jmp         0069148A
 00691477    mov         word ptr [ecx],960
 0069147C    mov         al,1
>0069147E    jmp         0069148A
 00691480    mov         word ptr [ecx],0C80
 00691485    mov         al,1
 00691487    ret
 00691488    xor         eax,eax
 0069148A    ret
*}
end;

//0069148C
{*procedure TFXPAD.SysDefaultFireLevel(APType:Integer; ?:?);
begin
 0069148C    push        ebx
 0069148D    mov         ebx,ecx
 0069148F    cmp         edx,0F
>00691492    ja          0069156F
 00691498    jmp         dword ptr [edx*4+69149F]
 00691498    dd          0069156F
 00691498    dd          006914DF
 00691498    dd          006914EE
 00691498    dd          006914FD
 00691498    dd          0069156F
 00691498    dd          0069156F
 00691498    dd          0069156F
 00691498    dd          0069156F
 00691498    dd          00691506
 00691498    dd          00691515
 00691498    dd          00691524
 00691498    dd          00691533
 00691498    dd          0069156F
 00691498    dd          00691542
 00691498    dd          00691551
 00691498    dd          00691560
 006914DF    mov         eax,ebx
 006914E1    mov         edx,dword ptr ds:[7C284C];^'L 3'
 006914E7    call        @UStrAsg
 006914EC    pop         ebx
 006914ED    ret
 006914EE    mov         eax,ebx
 006914F0    mov         edx,dword ptr ds:[7C284C];^'L 3'
 006914F6    call        @UStrAsg
 006914FB    pop         ebx
 006914FC    ret
 006914FD    mov         eax,ebx
 006914FF    call        @UStrClr
 00691504    pop         ebx
 00691505    ret
 00691506    mov         eax,ebx
 00691508    mov         edx,dword ptr ds:[7C2850];^'L 4'
 0069150E    call        @UStrAsg
 00691513    pop         ebx
 00691514    ret
 00691515    mov         eax,ebx
 00691517    mov         edx,dword ptr ds:[7C285C];^'L 7'
 0069151D    call        @UStrAsg
 00691522    pop         ebx
 00691523    ret
 00691524    mov         eax,ebx
 00691526    mov         edx,dword ptr ds:[7C285C];^'L 7'
 0069152C    call        @UStrAsg
 00691531    pop         ebx
 00691532    ret
 00691533    mov         eax,ebx
 00691535    mov         edx,dword ptr ds:[7C2850];^'L 4'
 0069153B    call        @UStrAsg
 00691540    pop         ebx
 00691541    ret
 00691542    mov         eax,ebx
 00691544    mov         edx,dword ptr ds:[7C2850];^'L 4'
 0069154A    call        @UStrAsg
 0069154F    pop         ebx
 00691550    ret
 00691551    mov         eax,ebx
 00691553    mov         edx,dword ptr ds:[7C2850];^'L 4'
 00691559    call        @UStrAsg
 0069155E    pop         ebx
 0069155F    ret
 00691560    mov         eax,ebx
 00691562    mov         edx,dword ptr ds:[7C284C];^'L 3'
 00691568    call        @UStrAsg
 0069156D    pop         ebx
 0069156E    ret
 0069156F    mov         eax,ebx
 00691571    call        @UStrClr
 00691576    pop         ebx
 00691577    ret
end;*}

//00691578
{*procedure TFXPAD.SysDefaultPrewLevel(APType:Integer; ?:?);
begin
 00691578    push        ebx
 00691579    mov         ebx,ecx
 0069157B    cmp         edx,0F
>0069157E    ja          0069165B
 00691584    jmp         dword ptr [edx*4+69158B]
 00691584    dd          0069165B
 00691584    dd          006915CB
 00691584    dd          006915DA
 00691584    dd          006915E9
 00691584    dd          0069165B
 00691584    dd          0069165B
 00691584    dd          0069165B
 00691584    dd          0069165B
 00691584    dd          006915F2
 00691584    dd          00691601
 00691584    dd          00691610
 00691584    dd          0069161F
 00691584    dd          0069165B
 00691584    dd          0069162E
 00691584    dd          0069163D
 00691584    dd          0069164C
 006915CB    mov         eax,ebx
 006915CD    mov         edx,dword ptr ds:[7C2848];^'L 2'
 006915D3    call        @UStrAsg
 006915D8    pop         ebx
 006915D9    ret
 006915DA    mov         eax,ebx
 006915DC    mov         edx,dword ptr ds:[7C2848];^'L 2'
 006915E2    call        @UStrAsg
 006915E7    pop         ebx
 006915E8    ret
 006915E9    mov         eax,ebx
 006915EB    call        @UStrClr
 006915F0    pop         ebx
 006915F1    ret
 006915F2    mov         eax,ebx
 006915F4    mov         edx,dword ptr ds:[7C284C];^'L 3'
 006915FA    call        @UStrAsg
 006915FF    pop         ebx
 00691600    ret
 00691601    mov         eax,ebx
 00691603    mov         edx,dword ptr ds:[7C2854];^'L 5'
 00691609    call        @UStrAsg
 0069160E    pop         ebx
 0069160F    ret
 00691610    mov         eax,ebx
 00691612    mov         edx,dword ptr ds:[7C2854];^'L 5'
 00691618    call        @UStrAsg
 0069161D    pop         ebx
 0069161E    ret
 0069161F    mov         eax,ebx
 00691621    mov         edx,dword ptr ds:[7C284C];^'L 3'
 00691627    call        @UStrAsg
 0069162C    pop         ebx
 0069162D    ret
 0069162E    mov         eax,ebx
 00691630    mov         edx,dword ptr ds:[7C284C];^'L 3'
 00691636    call        @UStrAsg
 0069163B    pop         ebx
 0069163C    ret
 0069163D    mov         eax,ebx
 0069163F    mov         edx,dword ptr ds:[7C284C];^'L 3'
 00691645    call        @UStrAsg
 0069164A    pop         ebx
 0069164B    ret
 0069164C    mov         eax,ebx
 0069164E    mov         edx,dword ptr ds:[7C2848];^'L 2'
 00691654    call        @UStrAsg
 00691659    pop         ebx
 0069165A    ret
 0069165B    mov         eax,ebx
 0069165D    call        @UStrClr
 00691662    pop         ebx
 00691663    ret
end;*}

//00691664
{*procedure TFXPAD.SysDefaultServLevel(APType:Integer; ?:?);
begin
 00691664    push        ebx
 00691665    mov         ebx,ecx
 00691667    cmp         edx,0F
>0069166A    ja          00691747
 00691670    jmp         dword ptr [edx*4+691677]
 00691670    dd          00691747
 00691670    dd          006916B7
 00691670    dd          006916C6
 00691670    dd          006916D5
 00691670    dd          00691747
 00691670    dd          00691747
 00691670    dd          00691747
 00691670    dd          00691747
 00691670    dd          006916DE
 00691670    dd          006916ED
 00691670    dd          006916FC
 00691670    dd          0069170B
 00691670    dd          00691747
 00691670    dd          0069171A
 00691670    dd          00691729
 00691670    dd          00691738
 006916B7    mov         eax,ebx
 006916B9    mov         edx,dword ptr ds:[7C2848];^'L 2'
 006916BF    call        @UStrAsg
 006916C4    pop         ebx
 006916C5    ret
 006916C6    mov         eax,ebx
 006916C8    mov         edx,dword ptr ds:[7C2848];^'L 2'
 006916CE    call        @UStrAsg
 006916D3    pop         ebx
 006916D4    ret
 006916D5    mov         eax,ebx
 006916D7    call        @UStrClr
 006916DC    pop         ebx
 006916DD    ret
 006916DE    mov         eax,ebx
 006916E0    mov         edx,dword ptr ds:[7C2848];^'L 2'
 006916E6    call        @UStrAsg
 006916EB    pop         ebx
 006916EC    ret
 006916ED    mov         eax,ebx
 006916EF    mov         edx,dword ptr ds:[7C284C];^'L 3'
 006916F5    call        @UStrAsg
 006916FA    pop         ebx
 006916FB    ret
 006916FC    mov         eax,ebx
 006916FE    mov         edx,dword ptr ds:[7C284C];^'L 3'
 00691704    call        @UStrAsg
 00691709    pop         ebx
 0069170A    ret
 0069170B    mov         eax,ebx
 0069170D    mov         edx,dword ptr ds:[7C2848];^'L 2'
 00691713    call        @UStrAsg
 00691718    pop         ebx
 00691719    ret
 0069171A    mov         eax,ebx
 0069171C    mov         edx,dword ptr ds:[7C2848];^'L 2'
 00691722    call        @UStrAsg
 00691727    pop         ebx
 00691728    ret
 00691729    mov         eax,ebx
 0069172B    mov         edx,dword ptr ds:[7C2848];^'L 2'
 00691731    call        @UStrAsg
 00691736    pop         ebx
 00691737    ret
 00691738    mov         eax,ebx
 0069173A    mov         edx,dword ptr ds:[7C2848];^'L 2'
 00691740    call        @UStrAsg
 00691745    pop         ebx
 00691746    ret
 00691747    mov         eax,ebx
 00691749    call        @UStrClr
 0069174E    pop         ebx
 0069174F    ret
end;*}

//00691750
function TFXPAD.SysApDataError(ap:TFXADRec):Cardinal;
begin
{*
 00691750    push        ebx
 00691751    push        esi
 00691752    push        edi
 00691753    add         esp,0FFFFFF24
 00691759    mov         esi,edx
 0069175B    lea         edi,[esp]
 0069175E    mov         ecx,36
 00691763    rep movs    dword ptr [edi],dword ptr [esi]
 00691765    movs        word ptr [edi],word ptr [esi]
 00691767    mov         esi,esp
 00691769    xor         edx,edx
 0069176B    movzx       ecx,byte ptr [esi+5]
 0069176F    cmp         cl,1
>00691772    jb          00691782
 00691774    mov         eax,dword ptr [eax+87668];TFXPAD.PD:TFXPPD
 0069177A    cmp         cl,byte ptr [eax+125]
>00691780    jbe         00691785
 00691782    or          edx,1
 00691785    cmp         word ptr [esi+6],3E7
>0069178B    jbe         00691790
 0069178D    or          edx,2
 00691790    cmp         word ptr [esi+8],3E7
>00691796    jbe         0069179B
 00691798    or          edx,4
 0069179B    movzx       eax,byte ptr [esi+0A]
 0069179F    movzx       eax,al
 006917A2    bt          dword ptr ds:[7C2580],eax;gvar_007C2580
>006917A9    jb          006917AE
 006917AB    or          edx,8
 006917AE    cmp         byte ptr [esi+1E],0
>006917B2    je          006917B7
 006917B4    or          edx,10
 006917B7    movzx       ecx,byte ptr [esi+0A]
 006917BB    cmp         ecx,0F
>006917BE    jbe         006917C5
 006917C0    call        @BoundErr
 006917C5    movzx       ebx,word ptr [ecx*2+7C17F6]
 006917CD    movzx       eax,word ptr [esi+0C]
 006917D1    cmp         bx,ax
>006917D4    jb          006917E0
 006917D6    cmp         ax,word ptr [ecx*2+7C17D6]
>006917DE    jae         006917E3
 006917E0    or          edx,20
 006917E3    movzx       ecx,byte ptr [esi+0A]
 006917E7    cmp         ecx,0F
>006917EA    jbe         006917F1
 006917EC    call        @BoundErr
 006917F1    movzx       ebx,word ptr [ecx*2+7C17F6]
 006917F9    movzx       eax,word ptr [esi+0E]
 006917FD    cmp         bx,ax
>00691800    jb          0069180C
 00691802    cmp         ax,word ptr [ecx*2+7C17D6]
>0069180A    jae         0069180F
 0069180C    or          edx,40
 0069180F    movzx       ecx,byte ptr [esi+0A]
 00691813    cmp         ecx,0F
>00691816    jbe         0069181D
 00691818    call        @BoundErr
 0069181D    movzx       ebx,word ptr [ecx*2+7C17F6]
 00691825    movzx       eax,word ptr [esi+10]
 00691829    cmp         bx,ax
>0069182C    jb          00691838
 0069182E    cmp         ax,word ptr [ecx*2+7C17D6]
>00691836    jae         0069183E
 00691838    or          edx,80
 0069183E    movzx       ecx,byte ptr [esi+0A]
 00691842    cmp         ecx,0F
>00691845    jbe         0069184C
 00691847    call        @BoundErr
 0069184C    movzx       ebx,word ptr [ecx*2+7C17F6]
 00691854    movzx       eax,word ptr [esi+12]
 00691858    cmp         bx,ax
>0069185B    jb          00691867
 0069185D    cmp         ax,word ptr [ecx*2+7C17D6]
>00691865    jae         0069186D
 00691867    or          edx,100
 0069186D    movzx       eax,byte ptr [esi+0A]
 00691871    movzx       edi,al
 00691874    cmp         edi,0F
>00691877    jbe         0069187E
 00691879    call        @BoundErr
 0069187E    movzx       ebx,word ptr [edi*2+7C1876]
 00691886    movzx       ecx,word ptr [esi+14]
 0069188A    cmp         bx,cx
>0069188D    jb          00691899
 0069188F    cmp         cx,word ptr [edi*2+7C1856]
>00691897    jae         0069189F
 00691899    or          edx,200
 0069189F    cmp         al,5
>006918A1    je          006918B9
 006918A3    movzx       ecx,byte ptr [esi+16]
 006918A7    movzx       ecx,cl
 006918AA    bt          dword ptr ds:[7C27E0],ecx;gvar_007C27E0
>006918B1    jb          006918B9
 006918B3    or          edx,400
 006918B9    cmp         al,5
>006918BB    jne         006918D3
 006918BD    movzx       eax,byte ptr [esi+16]
 006918C1    movzx       eax,al
 006918C4    bt          dword ptr ds:[7C2800],eax;gvar_007C2800
>006918CB    jb          006918D3
 006918CD    or          edx,400
 006918D3    movzx       eax,byte ptr [esi+17]
 006918D7    sub         al,7
>006918D9    jb          006918E1
 006918DB    or          edx,800
 006918E1    movzx       eax,byte ptr [esi+18]
 006918E5    sub         al,5
>006918E7    jb          006918EF
 006918E9    or          edx,1000
 006918EF    movzx       eax,byte ptr [esi+19]
 006918F3    sub         al,4
>006918F5    jb          006918FD
 006918F7    or          edx,2000
 006918FD    movzx       eax,byte ptr [esi+1A]
 00691901    sub         al,3
>00691903    jb          0069190B
 00691905    or          edx,4000
 0069190B    cmp         byte ptr [esi+1F],0
>0069190F    je          00691917
 00691911    or          edx,10000
 00691917    mov         eax,edx
 00691919    add         esp,0DC
 0069191F    pop         edi
 00691920    pop         esi
 00691921    pop         ebx
 00691922    ret
*}
end;

//00691924
function TFXPAD.SysGetInpEvents(ap:TFXADRec):TFXEventSet;
begin
{*
 00691924    push        ebx
 00691925    push        esi
 00691926    push        edi
 00691927    add         esp,0FFFFFF24
 0069192D    mov         esi,edx
 0069192F    lea         edi,[esp]
 00691932    mov         ecx,36
 00691937    rep movs    dword ptr [edi],dword ptr [esi]
 00691939    movs        word ptr [edi],word ptr [esi]
 0069193B    movzx       ebx,byte ptr ds:[691C58];0x58 gvar_00691C58
 00691942    movzx       eax,byte ptr [esp+0A]
 00691947    cmp         eax,0F
>0069194A    ja          00691C2F
 00691950    movzx       eax,byte ptr [eax+69195E]
 00691957    jmp         dword ptr [eax*4+69196E]
 00691957    db          1
 00691957    db          2
 00691957    db          2
 00691957    db          2
 00691957    db          3
 00691957    db          4
 00691957    db          5
 00691957    db          6
 00691957    db          2
 00691957    db          2
 00691957    db          2
 00691957    db          2
 00691957    db          0
 00691957    db          2
 00691957    db          2
 00691957    db          2
 00691957    dd          00691C2F
 00691957    dd          0069198A
 00691957    dd          00691996
 00691957    dd          006919A4
 00691957    dd          00691C10
 00691957    dd          00691C1B
 00691957    dd          00691C26
 0069198A    movzx       ebx,byte ptr ds:[691C5C];0x0 gvar_00691C5C
>00691991    jmp         00691C2F
 00691996    movzx       eax,byte ptr ds:[691C60];0x6 gvar_00691C60
 0069199D    or          bl,al
>0069199F    jmp         00691C2F
 006919A4    movzx       eax,byte ptr [esp+0B]
 006919A9    cmp         eax,21
>006919AC    ja          00691C05
 006919B2    jmp         dword ptr [eax*4+6919B9]
 006919B2    dd          00691A41
 006919B2    dd          00691A4F
 006919B2    dd          00691A5D
 006919B2    dd          00691A6B
 006919B2    dd          00691A79
 006919B2    dd          00691A87
 006919B2    dd          00691A95
 006919B2    dd          00691AA3
 006919B2    dd          00691AB1
 006919B2    dd          00691ABF
 006919B2    dd          00691ACD
 006919B2    dd          00691ADB
 006919B2    dd          00691AE9
 006919B2    dd          00691AF7
 006919B2    dd          00691B05
 006919B2    dd          00691B13
 006919B2    dd          00691B21
 006919B2    dd          00691B2F
 006919B2    dd          00691B3D
 006919B2    dd          00691B4B
 006919B2    dd          00691B59
 006919B2    dd          00691B67
 006919B2    dd          00691B75
 006919B2    dd          00691B83
 006919B2    dd          00691B91
 006919B2    dd          00691B9F
 006919B2    dd          00691BAD
 006919B2    dd          00691BB8
 006919B2    dd          00691BC3
 006919B2    dd          00691BCE
 006919B2    dd          00691BD9
 006919B2    dd          00691BE4
 006919B2    dd          00691BEF
 006919B2    dd          00691BFA
 00691A41    movzx       eax,byte ptr ds:[691C64];0x2 gvar_00691C64
 00691A48    or          bl,al
>00691A4A    jmp         00691C2F
 00691A4F    movzx       eax,byte ptr ds:[691C64];0x2 gvar_00691C64
 00691A56    or          bl,al
>00691A58    jmp         00691C2F
 00691A5D    movzx       eax,byte ptr ds:[691C64];0x2 gvar_00691C64
 00691A64    or          bl,al
>00691A66    jmp         00691C2F
 00691A6B    movzx       eax,byte ptr ds:[691C64];0x2 gvar_00691C64
 00691A72    or          bl,al
>00691A74    jmp         00691C2F
 00691A79    movzx       eax,byte ptr ds:[691C64];0x2 gvar_00691C64
 00691A80    or          bl,al
>00691A82    jmp         00691C2F
 00691A87    movzx       eax,byte ptr ds:[691C68];0x4 gvar_00691C68
 00691A8E    or          bl,al
>00691A90    jmp         00691C2F
 00691A95    movzx       eax,byte ptr ds:[691C5C];0x0 gvar_00691C5C
 00691A9C    or          bl,al
>00691A9E    jmp         00691C2F
 00691AA3    movzx       eax,byte ptr ds:[691C5C];0x0 gvar_00691C5C
 00691AAA    or          bl,al
>00691AAC    jmp         00691C2F
 00691AB1    movzx       eax,byte ptr ds:[691C6C];0x20 gvar_00691C6C
 00691AB8    or          bl,al
>00691ABA    jmp         00691C2F
 00691ABF    movzx       eax,byte ptr ds:[691C6C];0x20 gvar_00691C6C
 00691AC6    or          bl,al
>00691AC8    jmp         00691C2F
 00691ACD    movzx       eax,byte ptr ds:[691C70];0x40 gvar_00691C70
 00691AD4    or          bl,al
>00691AD6    jmp         00691C2F
 00691ADB    movzx       eax,byte ptr ds:[691C5C];0x0 gvar_00691C5C
 00691AE2    or          bl,al
>00691AE4    jmp         00691C2F
 00691AE9    movzx       eax,byte ptr ds:[691C70];0x40 gvar_00691C70
 00691AF0    or          bl,al
>00691AF2    jmp         00691C2F
 00691AF7    movzx       eax,byte ptr ds:[691C70];0x40 gvar_00691C70
 00691AFE    or          bl,al
>00691B00    jmp         00691C2F
 00691B05    movzx       eax,byte ptr ds:[691C5C];0x0 gvar_00691C5C
 00691B0C    or          bl,al
>00691B0E    jmp         00691C2F
 00691B13    movzx       eax,byte ptr ds:[691C5C];0x0 gvar_00691C5C
 00691B1A    or          bl,al
>00691B1C    jmp         00691C2F
 00691B21    movzx       eax,byte ptr ds:[691C5C];0x0 gvar_00691C5C
 00691B28    or          bl,al
>00691B2A    jmp         00691C2F
 00691B2F    movzx       eax,byte ptr ds:[691C5C];0x0 gvar_00691C5C
 00691B36    or          bl,al
>00691B38    jmp         00691C2F
 00691B3D    movzx       eax,byte ptr ds:[691C5C];0x0 gvar_00691C5C
 00691B44    or          bl,al
>00691B46    jmp         00691C2F
 00691B4B    movzx       eax,byte ptr ds:[691C5C];0x0 gvar_00691C5C
 00691B52    or          bl,al
>00691B54    jmp         00691C2F
 00691B59    movzx       eax,byte ptr ds:[691C5C];0x0 gvar_00691C5C
 00691B60    or          bl,al
>00691B62    jmp         00691C2F
 00691B67    movzx       eax,byte ptr ds:[691C5C];0x0 gvar_00691C5C
 00691B6E    or          bl,al
>00691B70    jmp         00691C2F
 00691B75    movzx       eax,byte ptr ds:[691C74];0x80 gvar_00691C74
 00691B7C    or          bl,al
>00691B7E    jmp         00691C2F
 00691B83    movzx       eax,byte ptr ds:[691C5C];0x0 gvar_00691C5C
 00691B8A    or          bl,al
>00691B8C    jmp         00691C2F
 00691B91    movzx       eax,byte ptr ds:[691C5C];0x0 gvar_00691C5C
 00691B98    or          bl,al
>00691B9A    jmp         00691C2F
 00691B9F    movzx       eax,byte ptr ds:[691C5C];0x0 gvar_00691C5C
 00691BA6    or          bl,al
>00691BA8    jmp         00691C2F
 00691BAD    movzx       eax,byte ptr ds:[691C5C];0x0 gvar_00691C5C
 00691BB4    or          bl,al
>00691BB6    jmp         00691C2F
 00691BB8    movzx       eax,byte ptr ds:[691C5C];0x0 gvar_00691C5C
 00691BBF    or          bl,al
>00691BC1    jmp         00691C2F
 00691BC3    movzx       eax,byte ptr ds:[691C5C];0x0 gvar_00691C5C
 00691BCA    or          bl,al
>00691BCC    jmp         00691C2F
 00691BCE    movzx       eax,byte ptr ds:[691C5C];0x0 gvar_00691C5C
 00691BD5    or          bl,al
>00691BD7    jmp         00691C2F
 00691BD9    movzx       eax,byte ptr ds:[691C5C];0x0 gvar_00691C5C
 00691BE0    or          bl,al
>00691BE2    jmp         00691C2F
 00691BE4    movzx       eax,byte ptr ds:[691C5C];0x0 gvar_00691C5C
 00691BEB    or          bl,al
>00691BED    jmp         00691C2F
 00691BEF    movzx       eax,byte ptr ds:[691C5C];0x0 gvar_00691C5C
 00691BF6    or          bl,al
>00691BF8    jmp         00691C2F
 00691BFA    movzx       eax,byte ptr ds:[691C5C];0x0 gvar_00691C5C
 00691C01    or          bl,al
>00691C03    jmp         00691C2F
 00691C05    movzx       eax,byte ptr ds:[691C5C];0x0 gvar_00691C5C
 00691C0C    or          bl,al
>00691C0E    jmp         00691C2F
 00691C10    movzx       eax,byte ptr ds:[691C5C];0x0 gvar_00691C5C
 00691C17    or          bl,al
>00691C19    jmp         00691C2F
 00691C1B    movzx       eax,byte ptr ds:[691C64];0x2 gvar_00691C64
 00691C22    or          bl,al
>00691C24    jmp         00691C2F
 00691C26    movzx       eax,byte ptr ds:[691C64];0x2 gvar_00691C64
 00691C2D    or          bl,al
 00691C2F    cmp         byte ptr [esp+16],3
>00691C34    jne         00691C49
 00691C36    movzx       eax,byte ptr ds:[691C64];0x2 gvar_00691C64
 00691C3D    not         eax
 00691C3F    and         al,bl
 00691C41    or          al,byte ptr ds:[691C68];0x4 gvar_00691C68
 00691C47    mov         ebx,eax
 00691C49    mov         eax,ebx
 00691C4B    add         esp,0DC
 00691C51    pop         edi
 00691C52    pop         esi
 00691C53    pop         ebx
 00691C54    ret
*}
end;

//00691C78
function TFXPAD.SysGetOutEvents(ap:TFXADRec):TFXEventSet;
begin
{*
 00691C78    push        esi
 00691C79    push        edi
 00691C7A    add         esp,0FFFFFF24
 00691C80    mov         esi,edx
 00691C82    lea         edi,[esp]
 00691C85    mov         ecx,36
 00691C8A    rep movs    dword ptr [edi],dword ptr [esi]
 00691C8C    movs        word ptr [edi],word ptr [esi]
 00691C8E    movzx       eax,byte ptr ds:[691E80];0x0 gvar_00691E80
 00691C95    movzx       edx,byte ptr [esp+0A]
 00691C9A    cmp         edx,0F
>00691C9D    ja          00691E76
 00691CA3    movzx       edx,byte ptr [edx+691CB1]
 00691CAA    jmp         dword ptr [edx*4+691CC1]
 00691CAA    db          1
 00691CAA    db          1
 00691CAA    db          2
 00691CAA    db          2
 00691CAA    db          3
 00691CAA    db          4
 00691CAA    db          5
 00691CAA    db          6
 00691CAA    db          1
 00691CAA    db          1
 00691CAA    db          1
 00691CAA    db          2
 00691CAA    db          0
 00691CAA    db          2
 00691CAA    db          2
 00691CAA    db          2
 00691CAA    dd          00691E76
 00691CAA    dd          00691CDD
 00691CAA    dd          00691CE9
 00691CAA    dd          00691D00
 00691CAA    dd          00691D0C
 00691CAA    dd          00691E66
 00691CAA    dd          00691E6F
 00691CDD    movzx       eax,byte ptr ds:[691E80];0x0 gvar_00691E80
>00691CE4    jmp         00691E76
 00691CE9    cmp         byte ptr [esp+0B],1
>00691CEE    jne         00691E76
 00691CF4    movzx       eax,byte ptr ds:[691E84];0x2 gvar_00691E84
>00691CFB    jmp         00691E76
 00691D00    movzx       eax,byte ptr ds:[691E80];0x0 gvar_00691E80
>00691D07    jmp         00691E76
 00691D0C    movzx       edx,byte ptr [esp+0B]
 00691D11    cmp         edx,18
>00691D14    ja          00691E76
 00691D1A    jmp         dword ptr [edx*4+691D21]
 00691D1A    dd          00691D85
 00691D1A    dd          00691D91
 00691D1A    dd          00691D9D
 00691D1A    dd          00691DA9
 00691D1A    dd          00691DB5
 00691D1A    dd          00691DC1
 00691D1A    dd          00691DCD
 00691D1A    dd          00691DD9
 00691D1A    dd          00691DE5
 00691D1A    dd          00691DF1
 00691D1A    dd          00691DFA
 00691D1A    dd          00691E03
 00691D1A    dd          00691E0C
 00691D1A    dd          00691E15
 00691D1A    dd          00691E1E
 00691D1A    dd          00691E27
 00691D1A    dd          00691E30
 00691D1A    dd          00691E39
 00691D1A    dd          00691E42
 00691D1A    dd          00691E4B
 00691D1A    dd          00691E54
 00691D1A    dd          00691E76
 00691D1A    dd          00691E76
 00691D1A    dd          00691E76
 00691D1A    dd          00691E5D
 00691D85    movzx       eax,byte ptr ds:[691E84];0x2 gvar_00691E84
>00691D8C    jmp         00691E76
 00691D91    movzx       eax,byte ptr ds:[691E84];0x2 gvar_00691E84
>00691D98    jmp         00691E76
 00691D9D    movzx       eax,byte ptr ds:[691E88];0x8 gvar_00691E88
>00691DA4    jmp         00691E76
 00691DA9    movzx       eax,byte ptr ds:[691E84];0x2 gvar_00691E84
>00691DB0    jmp         00691E76
 00691DB5    movzx       eax,byte ptr ds:[691E8C];0x4 gvar_00691E8C
>00691DBC    jmp         00691E76
 00691DC1    movzx       eax,byte ptr ds:[691E88];0x8 gvar_00691E88
>00691DC8    jmp         00691E76
 00691DCD    movzx       eax,byte ptr ds:[691E90];0x10 gvar_00691E90
>00691DD4    jmp         00691E76
 00691DD9    movzx       eax,byte ptr ds:[691E94];0x4E gvar_00691E94
>00691DE0    jmp         00691E76
 00691DE5    movzx       eax,byte ptr ds:[691E84];0x2 gvar_00691E84
>00691DEC    jmp         00691E76
 00691DF1    movzx       eax,byte ptr ds:[691E98];0x40 gvar_00691E98
>00691DF8    jmp         00691E76
 00691DFA    movzx       eax,byte ptr ds:[691E80];0x0 gvar_00691E80
>00691E01    jmp         00691E76
 00691E03    movzx       eax,byte ptr ds:[691E9C];0x20 gvar_00691E9C
>00691E0A    jmp         00691E76
 00691E0C    movzx       eax,byte ptr ds:[691EA0];0x80 gvar_00691EA0
>00691E13    jmp         00691E76
 00691E15    movzx       eax,byte ptr ds:[691E80];0x0 gvar_00691E80
>00691E1C    jmp         00691E76
 00691E1E    movzx       eax,byte ptr ds:[691E84];0x2 gvar_00691E84
>00691E25    jmp         00691E76
 00691E27    movzx       eax,byte ptr ds:[691E80];0x0 gvar_00691E80
>00691E2E    jmp         00691E76
 00691E30    movzx       eax,byte ptr ds:[691E84];0x2 gvar_00691E84
>00691E37    jmp         00691E76
 00691E39    movzx       eax,byte ptr ds:[691E80];0x0 gvar_00691E80
>00691E40    jmp         00691E76
 00691E42    movzx       eax,byte ptr ds:[691E84];0x2 gvar_00691E84
>00691E49    jmp         00691E76
 00691E4B    movzx       eax,byte ptr ds:[691E80];0x0 gvar_00691E80
>00691E52    jmp         00691E76
 00691E54    movzx       eax,byte ptr ds:[691E80];0x0 gvar_00691E80
>00691E5B    jmp         00691E76
 00691E5D    movzx       eax,byte ptr ds:[691E88];0x8 gvar_00691E88
>00691E64    jmp         00691E76
 00691E66    movzx       eax,byte ptr ds:[691E80];0x0 gvar_00691E80
>00691E6D    jmp         00691E76
 00691E6F    movzx       eax,byte ptr ds:[691E80];0x0 gvar_00691E80
 00691E76    add         esp,0DC
 00691E7C    pop         edi
 00691E7D    pop         esi
 00691E7E    ret
*}
end;

//00691EA4
function TFXPAD.CnvToInt(s:string):Word;
begin
{*
 00691EA4    push        ebp
 00691EA5    mov         ebp,esp
 00691EA7    push        ecx
 00691EA8    push        ebx
 00691EA9    push        esi
 00691EAA    push        edi
 00691EAB    mov         dword ptr [ebp-4],edx
 00691EAE    mov         eax,dword ptr [ebp-4]
 00691EB1    call        @UStrAddRef
 00691EB6    xor         eax,eax
 00691EB8    push        ebp
 00691EB9    push        691F53
 00691EBE    push        dword ptr fs:[eax]
 00691EC1    mov         dword ptr fs:[eax],esp
 00691EC4    xor         edi,edi
 00691EC6    mov         ebx,1
 00691ECB    mov         esi,7C23CC;^'Manual Call Point Line'
 00691ED0    mov         eax,dword ptr [ebp-4]
 00691ED3    mov         edx,dword ptr [esi]
 00691ED5    call        @UStrEqual
>00691EDA    jne         00691EFA
 00691EDC    mov         edi,ebx
 00691EDE    add         edi,100
>00691EE4    jno         00691EEB
 00691EE6    call        @IntOver
 00691EEB    cmp         edi,0FFFF
>00691EF1    jbe         00691F3D
 00691EF3    call        @BoundErr
>00691EF8    jmp         00691F3D
 00691EFA    inc         ebx
 00691EFB    add         esi,4
 00691EFE    cmp         ebx,4
>00691F01    jne         00691ED0
 00691F03    xor         ebx,ebx
 00691F05    mov         esi,7C23DC;^'Not in use'
 00691F0A    mov         eax,dword ptr [ebp-4]
 00691F0D    mov         edx,dword ptr [esi]
 00691F0F    call        @UStrEqual
>00691F14    jne         00691F34
 00691F16    mov         edi,ebx
 00691F18    add         edi,100
>00691F1E    jno         00691F25
 00691F20    call        @IntOver
 00691F25    cmp         edi,0FFFF
>00691F2B    jbe         00691F3D
 00691F2D    call        @BoundErr
>00691F32    jmp         00691F3D
 00691F34    inc         ebx
 00691F35    add         esi,4
 00691F38    cmp         ebx,22
>00691F3B    jne         00691F0A
 00691F3D    xor         eax,eax
 00691F3F    pop         edx
 00691F40    pop         ecx
 00691F41    pop         ecx
 00691F42    mov         dword ptr fs:[eax],edx
 00691F45    push        691F5A
 00691F4A    lea         eax,[ebp-4]
 00691F4D    call        @UStrClr
 00691F52    ret
>00691F53    jmp         @HandleFinally
>00691F58    jmp         00691F4A
 00691F5A    mov         eax,edi
 00691F5C    pop         edi
 00691F5D    pop         esi
 00691F5E    pop         ebx
 00691F5F    pop         ecx
 00691F60    pop         ebp
 00691F61    ret
*}
end;

//00691F64
procedure TFXPAD.IntToCnv(value:Word; ?:UnicodeString);
begin
{*
 00691F64    push        ebx
 00691F65    push        esi
 00691F66    push        edi
 00691F67    mov         esi,ecx
 00691F69    mov         ebx,edx
 00691F6B    mov         eax,ebx
 00691F6D    shr         ax,8
 00691F71    test        ax,ax
>00691F74    jne         00691F85
 00691F76    mov         eax,esi
 00691F78    mov         edx,dword ptr ds:[7C162C];^'Not in use'
 00691F7E    call        @UStrAsg
>00691F83    jmp         00691FD4
 00691F85    mov         di,0FF
 00691F89    and         di,bx
 00691F8C    mov         eax,edi
 00691F8E    dec         ax
>00691F91    je          00691F9B
 00691F93    sub         ax,2
>00691F97    je          00691FAA
>00691F99    jmp         00691FB9
 00691F9B    mov         eax,esi
 00691F9D    mov         edx,dword ptr ds:[7C23CC];^'Manual Call Point Line'
 00691FA3    call        @UStrAsg
>00691FA8    jmp         00691FD4
 00691FAA    mov         eax,esi
 00691FAC    mov         edx,dword ptr ds:[7C23D4];^'Detection Line'
 00691FB2    call        @UStrAsg
>00691FB7    jmp         00691FD4
 00691FB9    mov         eax,esi
 00691FBB    movzx       edx,di
 00691FBE    cmp         edx,21
>00691FC1    jbe         00691FC8
 00691FC3    call        @BoundErr
 00691FC8    mov         edx,dword ptr [edx*4+7C23DC];^'Not in use'
 00691FCF    call        @UStrAsg
 00691FD4    pop         edi
 00691FD5    pop         esi
 00691FD6    pop         ebx
 00691FD7    ret
*}
end;

//00691FD8
function TFXPAD.EOLToInt(s:string):Word;
begin
{*
 00691FD8    push        ebp
 00691FD9    mov         ebp,esp
 00691FDB    push        ecx
 00691FDC    push        ebx
 00691FDD    push        esi
 00691FDE    push        edi
 00691FDF    mov         dword ptr [ebp-4],edx
 00691FE2    mov         eax,dword ptr [ebp-4]
 00691FE5    call        @UStrAddRef
 00691FEA    xor         eax,eax
 00691FEC    push        ebp
 00691FED    push        69203D
 00691FF2    push        dword ptr fs:[eax]
 00691FF5    mov         dword ptr fs:[eax],esp
 00691FF8    xor         edi,edi
 00691FFA    xor         esi,esi
 00691FFC    mov         ebx,7C1614;^'4k7 '
 00692001    mov         eax,dword ptr [ebp-4]
 00692004    mov         edx,dword ptr [ebx]
 00692006    call        @UStrEqual
>0069200B    jne         0069201E
 0069200D    mov         edi,esi
 0069200F    cmp         edi,0FFFF
>00692015    jbe         00692027
 00692017    call        @BoundErr
>0069201C    jmp         00692027
 0069201E    inc         esi
 0069201F    add         ebx,4
 00692022    cmp         esi,2
>00692025    jne         00692001
 00692027    xor         eax,eax
 00692029    pop         edx
 0069202A    pop         ecx
 0069202B    pop         ecx
 0069202C    mov         dword ptr fs:[eax],edx
 0069202F    push        692044
 00692034    lea         eax,[ebp-4]
 00692037    call        @UStrClr
 0069203C    ret
>0069203D    jmp         @HandleFinally
>00692042    jmp         00692034
 00692044    mov         eax,edi
 00692046    pop         edi
 00692047    pop         esi
 00692048    pop         ebx
 00692049    pop         ecx
 0069204A    pop         ebp
 0069204B    ret
*}
end;

//0069204C
procedure TFXPAD.IntToEOL(value:Word; ?:UnicodeString);
begin
{*
 0069204C    push        ebx
 0069204D    push        esi
 0069204E    mov         ebx,ecx
 00692050    mov         esi,edx
 00692052    mov         eax,ebx
 00692054    mov         edx,dword ptr ds:[7C1614];^'4k7 '
 0069205A    call        @UStrAsg
 0069205F    and         si,8
 00692063    cmp         si,8
>00692067    jne         00692076
 00692069    mov         eax,ebx
 0069206B    mov         edx,dword ptr ds:[7C1618];^'2k94'
 00692071    call        @UStrAsg
 00692076    pop         esi
 00692077    pop         ebx
 00692078    ret
*}
end;

//0069207C
function TFXPAD.IsSapEnvirConfigured:Boolean;
begin
{*
 0069207C    push        ebx
 0069207D    push        esi
 0069207E    push        edi
 0069207F    push        ebp
 00692080    push        ecx
 00692081    mov         esi,eax
 00692083    mov         edi,7C2820;gvar_007C2820
 00692088    mov         byte ptr [esp],0
 0069208C    mov         byte ptr [esp+1],0
 00692091    movzx       ebx,byte ptr [esp+1]
 00692096    mov         edx,ebx
 00692098    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 0069209E    call        TFXPPD.GetControllerLoopType
 006920A3    cmp         eax,4
>006920A6    je          006920BE
 006920A8    mov         edx,ebx
 006920AA    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 006920B0    call        TFXPPD.GetControllerLoopType
 006920B5    cmp         eax,6
>006920B8    jne         00692203
 006920BE    xor         edx,edx
 006920C0    mov         al,1
 006920C2    movzx       ebx,byte ptr [esp+1]
 006920C7    cmp         ebx,7
>006920CA    jbe         006920D1
 006920CC    call        @BoundErr
 006920D1    imul        ebx,ebx,43B3
>006920D7    jno         006920DE
 006920D9    call        @IntOver
 006920DE    lea         ebx,[esi+ebx*4]
 006920E1    push        ebx
 006920E2    movzx       ebx,dl
 006920E5    cmp         ebx,1
>006920E8    jbe         006920EF
 006920EA    call        @BoundErr
 006920EF    imul        ebx,ebx,43B3
>006920F5    jno         006920FC
 006920F7    call        @IntOver
 006920FC    pop         ebp
 006920FD    lea         ebx,[ebp+ebx*2]
 00692101    push        ebx
 00692102    movzx       ecx,al
 00692105    dec         ecx
 00692106    cmp         ecx,9E
>0069210C    jbe         00692113
 0069210E    call        @BoundErr
 00692113    inc         ecx
 00692114    imul        ecx,ecx,6D
>00692117    jno         0069211E
 00692119    call        @IntOver
 0069211E    pop         ebx
 0069211F    movzx       ebx,byte ptr [ebx+ecx*2-0CB]
 00692127    cmp         bl,1
>0069212A    jne         006921F0
 00692130    movzx       ebx,byte ptr [esp+1]
 00692135    cmp         ebx,7
>00692138    jbe         0069213F
 0069213A    call        @BoundErr
 0069213F    imul        ebx,ebx,43B3
>00692145    jno         0069214C
 00692147    call        @IntOver
 0069214C    lea         ebx,[esi+ebx*4]
 0069214F    push        ebx
 00692150    movzx       ebx,dl
 00692153    cmp         ebx,1
>00692156    jbe         0069215D
 00692158    call        @BoundErr
 0069215D    imul        ebx,ebx,43B3
>00692163    jno         0069216A
 00692165    call        @IntOver
 0069216A    pop         ebp
 0069216B    lea         ebx,[ebp+ebx*2]
 0069216F    push        ebx
 00692170    pop         ebx
 00692171    movzx       ecx,byte ptr [ebx+ecx*2-0CC]
 00692179    mov         byte ptr [esp+2],cl
 0069217D    movzx       ecx,byte ptr [esp+2]
 00692182    movzx       ecx,cl
 00692185    bt          dword ptr [edi],ecx
>00692188    jae         006921F0
 0069218A    movzx       ecx,byte ptr [esp+1]
 0069218F    cmp         ecx,7
>00692192    jbe         00692199
 00692194    call        @BoundErr
 00692199    imul        ecx,ecx,43B3
>0069219F    jno         006921A6
 006921A1    call        @IntOver
 006921A6    lea         ebp,[esi+ecx*4]
 006921A9    movzx       ecx,dl
 006921AC    cmp         ecx,1
>006921AF    jbe         006921B6
 006921B1    call        @BoundErr
 006921B6    imul        ecx,ecx,43B3
>006921BC    jno         006921C3
 006921BE    call        @IntOver
 006921C3    lea         ecx,[ebp+ecx*2]
 006921C7    movzx       ebx,al
 006921CA    dec         ebx
 006921CB    cmp         ebx,9E
>006921D1    jbe         006921D8
 006921D3    call        @BoundErr
 006921D8    inc         ebx
 006921D9    imul        ebx,ebx,6D
>006921DC    jno         006921E3
 006921DE    call        @IntOver
 006921E3    cmp         byte ptr [ecx+ebx*2+2],0
>006921E8    je          006921F0
 006921EA    mov         byte ptr [esp],1
>006921EE    jmp         00692212
 006921F0    inc         eax
 006921F1    cmp         al,0A0
>006921F3    jne         006920C2
 006921F9    inc         edx
 006921FA    cmp         dl,2
>006921FD    jne         006920C0
 00692203    inc         byte ptr [esp+1]
 00692207    cmp         byte ptr [esp+1],8
>0069220C    jne         00692091
 00692212    movzx       eax,byte ptr [esp]
 00692216    pop         edx
 00692217    pop         ebp
 00692218    pop         edi
 00692219    pop         esi
 0069221A    pop         ebx
 0069221B    ret
*}
end;

//0069221C
function TFXPAD.IsSapSndrVolOrOut2Configured:Boolean;
begin
{*
 0069221C    push        ebx
 0069221D    push        esi
 0069221E    push        edi
 0069221F    push        ebp
 00692220    push        ecx
 00692221    mov         esi,eax
 00692223    mov         edi,7C27C0;gvar_007C27C0
 00692228    mov         byte ptr [esp],0
 0069222C    mov         byte ptr [esp+1],0
 00692231    movzx       ebx,byte ptr [esp+1]
 00692236    mov         edx,ebx
 00692238    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 0069223E    call        TFXPPD.GetControllerLoopType
 00692243    cmp         eax,4
>00692246    je          0069225E
 00692248    mov         edx,ebx
 0069224A    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 00692250    call        TFXPPD.GetControllerLoopType
 00692255    cmp         eax,6
>00692258    jne         00692422
 0069225E    xor         edx,edx
 00692260    mov         al,1
 00692262    movzx       ebx,byte ptr [esp+1]
 00692267    cmp         ebx,7
>0069226A    jbe         00692271
 0069226C    call        @BoundErr
 00692271    imul        ebx,ebx,43B3
>00692277    jno         0069227E
 00692279    call        @IntOver
 0069227E    lea         ebx,[esi+ebx*4]
 00692281    push        ebx
 00692282    movzx       ebx,dl
 00692285    cmp         ebx,1
>00692288    jbe         0069228F
 0069228A    call        @BoundErr
 0069228F    imul        ebx,ebx,43B3
>00692295    jno         0069229C
 00692297    call        @IntOver
 0069229C    pop         ebp
 0069229D    lea         ebx,[ebp+ebx*2]
 006922A1    push        ebx
 006922A2    movzx       ecx,al
 006922A5    dec         ecx
 006922A6    cmp         ecx,9E
>006922AC    jbe         006922B3
 006922AE    call        @BoundErr
 006922B3    inc         ecx
 006922B4    imul        ecx,ecx,6D
>006922B7    jno         006922BE
 006922B9    call        @IntOver
 006922BE    pop         ebx
 006922BF    movzx       ebx,byte ptr [ebx+ecx*2-0CB]
 006922C7    cmp         bl,1
>006922CA    jne         0069240F
 006922D0    movzx       ebx,byte ptr [esp+1]
 006922D5    cmp         ebx,7
>006922D8    jbe         006922DF
 006922DA    call        @BoundErr
 006922DF    imul        ebx,ebx,43B3
>006922E5    jno         006922EC
 006922E7    call        @IntOver
 006922EC    lea         ebx,[esi+ebx*4]
 006922EF    push        ebx
 006922F0    movzx       ebx,dl
 006922F3    cmp         ebx,1
>006922F6    jbe         006922FD
 006922F8    call        @BoundErr
 006922FD    imul        ebx,ebx,43B3
>00692303    jno         0069230A
 00692305    call        @IntOver
 0069230A    pop         ebp
 0069230B    lea         ebx,[ebp+ebx*2]
 0069230F    push        ebx
 00692310    pop         ebx
 00692311    movzx       ecx,byte ptr [ebx+ecx*2-0CC]
 00692319    mov         byte ptr [esp+2],cl
 0069231D    movzx       ecx,byte ptr [esp+2]
 00692322    add         cl,0D8
 00692325    sub         cl,2
>00692328    jb          00692330
 0069232A    dec         ecx
 0069232B    sub         cl,2
>0069232E    jae         00692399
 00692330    movzx       ecx,byte ptr [esp+1]
 00692335    cmp         ecx,7
>00692338    jbe         0069233F
 0069233A    call        @BoundErr
 0069233F    imul        ecx,ecx,43B3
>00692345    jno         0069234C
 00692347    call        @IntOver
 0069234C    lea         ebp,[esi+ecx*4]
 0069234F    movzx       ecx,dl
 00692352    cmp         ecx,1
>00692355    jbe         0069235C
 00692357    call        @BoundErr
 0069235C    imul        ecx,ecx,43B3
>00692362    jno         00692369
 00692364    call        @IntOver
 00692369    lea         ecx,[ebp+ecx*2]
 0069236D    movzx       ebx,al
 00692370    dec         ebx
 00692371    cmp         ebx,9E
>00692377    jbe         0069237E
 00692379    call        @BoundErr
 0069237E    inc         ebx
 0069237F    imul        ebx,ebx,6D
>00692382    jno         00692389
 00692384    call        @IntOver
 00692389    cmp         byte ptr [ecx+ebx*2+3],8
>0069238E    je          00692399
 00692390    mov         byte ptr [esp],1
>00692394    jmp         00692431
 00692399    movzx       ecx,byte ptr [esp+2]
 0069239E    movzx       ecx,cl
 006923A1    bt          dword ptr [edi],ecx
>006923A4    jae         0069240F
 006923A6    movzx       ecx,byte ptr [esp+1]
 006923AB    cmp         ecx,7
>006923AE    jbe         006923B5
 006923B0    call        @BoundErr
 006923B5    imul        ecx,ecx,43B3
>006923BB    jno         006923C2
 006923BD    call        @IntOver
 006923C2    lea         ebp,[esi+ecx*4]
 006923C5    movzx       ecx,dl
 006923C8    cmp         ecx,1
>006923CB    jbe         006923D2
 006923CD    call        @BoundErr
 006923D2    imul        ecx,ecx,43B3
>006923D8    jno         006923DF
 006923DA    call        @IntOver
 006923DF    lea         ecx,[ebp+ecx*2]
 006923E3    movzx       ebx,al
 006923E6    dec         ebx
 006923E7    cmp         ebx,9E
>006923ED    jbe         006923F4
 006923EF    call        @BoundErr
 006923F4    inc         ebx
 006923F5    imul        ebx,ebx,6D
>006923F8    jno         006923FF
 006923FA    call        @IntOver
 006923FF    cmp         byte ptr [ecx+ebx*2-0B3],0
>00692407    je          0069240F
 00692409    mov         byte ptr [esp],1
>0069240D    jmp         00692431
 0069240F    inc         eax
 00692410    cmp         al,0A0
>00692412    jne         00692262
 00692418    inc         edx
 00692419    cmp         dl,2
>0069241C    jne         00692260
 00692422    inc         byte ptr [esp+1]
 00692426    cmp         byte ptr [esp+1],8
>0069242B    jne         00692231
 00692431    movzx       eax,byte ptr [esp]
 00692435    pop         edx
 00692436    pop         ebp
 00692437    pop         edi
 00692438    pop         esi
 00692439    pop         ebx
 0069243A    ret
*}
end;

//0069243C
function TFXPAD.IsMiniModuleConfigured:Boolean;
begin
{*
 0069243C    push        ebx
 0069243D    push        esi
 0069243E    push        edi
 0069243F    push        ecx
 00692440    mov         esi,eax
 00692442    mov         byte ptr [esp],0
 00692446    mov         byte ptr [esp+1],0
 0069244B    movzx       ebx,byte ptr [esp+1]
 00692450    mov         edx,ebx
 00692452    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 00692458    call        TFXPPD.GetControllerLoopType
 0069245D    cmp         eax,4
>00692460    je          00692478
 00692462    mov         edx,ebx
 00692464    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 0069246A    call        TFXPPD.GetControllerLoopType
 0069246F    cmp         eax,6
>00692472    jne         0069254B
 00692478    xor         edx,edx
 0069247A    mov         al,1
 0069247C    movzx       ebx,byte ptr [esp+1]
 00692481    cmp         ebx,7
>00692484    jbe         0069248B
 00692486    call        @BoundErr
 0069248B    imul        ebx,ebx,43B3
>00692491    jno         00692498
 00692493    call        @IntOver
 00692498    lea         ebx,[esi+ebx*4]
 0069249B    push        ebx
 0069249C    movzx       ebx,dl
 0069249F    cmp         ebx,1
>006924A2    jbe         006924A9
 006924A4    call        @BoundErr
 006924A9    imul        ebx,ebx,43B3
>006924AF    jno         006924B6
 006924B1    call        @IntOver
 006924B6    pop         edi
 006924B7    lea         ebx,[edi+ebx*2]
 006924BA    push        ebx
 006924BB    movzx       ecx,al
 006924BE    dec         ecx
 006924BF    cmp         ecx,9E
>006924C5    jbe         006924CC
 006924C7    call        @BoundErr
 006924CC    inc         ecx
 006924CD    imul        ecx,ecx,6D
>006924D0    jno         006924D7
 006924D2    call        @IntOver
 006924D7    pop         ebx
 006924D8    movzx       ebx,byte ptr [ebx+ecx*2-0CB]
 006924E0    cmp         bl,1
>006924E3    jne         00692538
 006924E5    movzx       ebx,byte ptr [esp+1]
 006924EA    cmp         ebx,7
>006924ED    jbe         006924F4
 006924EF    call        @BoundErr
 006924F4    imul        ebx,ebx,43B3
>006924FA    jno         00692501
 006924FC    call        @IntOver
 00692501    lea         ebx,[esi+ebx*4]
 00692504    push        ebx
 00692505    movzx       ebx,dl
 00692508    cmp         ebx,1
>0069250B    jbe         00692512
 0069250D    call        @BoundErr
 00692512    imul        ebx,ebx,43B3
>00692518    jno         0069251F
 0069251A    call        @IntOver
 0069251F    pop         edi
 00692520    lea         ebx,[edi+ebx*2]
 00692523    push        ebx
 00692524    pop         ebx
 00692525    movzx       ecx,byte ptr [ebx+ecx*2-0CC]
 0069252D    cmp         cl,1E
>00692530    jne         00692538
 00692532    mov         byte ptr [esp],1
>00692536    jmp         0069255A
 00692538    inc         eax
 00692539    cmp         al,0A0
>0069253B    jne         0069247C
 00692541    inc         edx
 00692542    cmp         dl,2
>00692545    jne         0069247A
 0069254B    inc         byte ptr [esp+1]
 0069254F    cmp         byte ptr [esp+1],8
>00692554    jne         0069244B
 0069255A    movzx       eax,byte ptr [esp]
 0069255E    pop         edx
 0069255F    pop         edi
 00692560    pop         esi
 00692561    pop         ebx
 00692562    ret
*}
end;

//00692564
function TFXPAD.DoesSapOutputFunctionMatch(output_function_type:Byte):Boolean;
begin
{*
 00692564    push        ebx
 00692565    push        esi
 00692566    push        edi
 00692567    push        ecx
 00692568    mov         byte ptr [esp],dl
 0069256B    mov         esi,eax
 0069256D    mov         byte ptr [esp+1],0
 00692572    mov         byte ptr [esp+2],0
 00692577    movzx       ebx,byte ptr [esp+2]
 0069257C    mov         edx,ebx
 0069257E    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 00692584    call        TFXPPD.GetControllerLoopType
 00692589    cmp         eax,4
>0069258C    je          006925A0
 0069258E    mov         edx,ebx
 00692590    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 00692596    call        TFXPPD.GetControllerLoopType
 0069259B    cmp         eax,6
>0069259E    jne         0069261B
 006925A0    xor         edx,edx
 006925A2    mov         al,1
 006925A4    movzx       ecx,byte ptr [esp+2]
 006925A9    cmp         ecx,7
>006925AC    jbe         006925B3
 006925AE    call        @BoundErr
 006925B3    imul        ecx,ecx,43B3
>006925B9    jno         006925C0
 006925BB    call        @IntOver
 006925C0    lea         edi,[esi+ecx*4]
 006925C3    movzx       ecx,dl
 006925C6    cmp         ecx,1
>006925C9    jbe         006925D0
 006925CB    call        @BoundErr
 006925D0    imul        ecx,ecx,43B3
>006925D6    jno         006925DD
 006925D8    call        @IntOver
 006925DD    lea         edi,[edi+ecx*2]
 006925E0    movzx       ecx,al
 006925E3    dec         ecx
 006925E4    cmp         ecx,9E
>006925EA    jbe         006925F1
 006925EC    call        @BoundErr
 006925F1    inc         ecx
 006925F2    imul        ecx,ecx,6D
>006925F5    jno         006925FC
 006925F7    call        @IntOver
 006925FC    movzx       ecx,byte ptr [edi+ecx*2-0B7]
 00692604    cmp         cl,byte ptr [esp]
>00692607    jne         00692610
 00692609    mov         byte ptr [esp+1],1
>0069260E    jmp         0069262A
 00692610    inc         eax
 00692611    cmp         al,0A0
>00692613    jne         006925A4
 00692615    inc         edx
 00692616    cmp         dl,2
>00692619    jne         006925A2
 0069261B    inc         byte ptr [esp+2]
 0069261F    cmp         byte ptr [esp+2],8
>00692624    jne         00692577
 0069262A    movzx       eax,byte ptr [esp+1]
 0069262F    pop         edx
 00692630    pop         edi
 00692631    pop         esi
 00692632    pop         ebx
 00692633    ret
*}
end;

//00692634
function TFXPAD.UpdateOldCnvData(VersionMajor:Integer; VersionMinor:Integer; var ap:TFXADRec):Boolean;
begin
{*
 00692634    push        ebp
 00692635    mov         ebp,esp
 00692637    xor         eax,eax
 00692639    cmp         edx,3
>0069263C    jne         00692665
 0069263E    mov         edx,dword ptr [ebp+8]
 00692641    movzx       edx,byte ptr [edx+0B]
 00692645    sub         dl,20
>00692648    je          00692651
 0069264A    sub         dl,2
>0069264D    je          0069265C
>0069264F    jmp         00692665
 00692651    mov         eax,dword ptr [ebp+8]
 00692654    mov         byte ptr [eax+0B],21
 00692658    mov         al,1
>0069265A    jmp         00692665
 0069265C    mov         eax,dword ptr [ebp+8]
 0069265F    mov         byte ptr [eax+0B],20
 00692663    mov         al,1
 00692665    pop         ebp
 00692666    ret         4
*}
end;

//0069266C
function TFXPAD.CnvGetInpEvents(ap:TFXADRec):TFXEventSet;
begin
{*
 0069266C    push        ebx
 0069266D    push        esi
 0069266E    push        edi
 0069266F    add         esp,0FFFFFF24
 00692675    mov         esi,edx
 00692677    lea         edi,[esp]
 0069267A    mov         ecx,36
 0069267F    rep movs    dword ptr [edi],dword ptr [esi]
 00692681    movs        word ptr [edi],word ptr [esi]
 00692683    cmp         byte ptr [esp+0A],0
>00692688    jne         00692693
 0069268A    movzx       ebx,byte ptr ds:[6928FC];0x0 gvar_006928FC
>00692691    jmp         0069269A
 00692693    movzx       ebx,byte ptr ds:[692900];0x58 gvar_00692900
 0069269A    movzx       eax,byte ptr [esp+0B]
 0069269F    cmp         eax,21
>006926A2    ja          006928ED
 006926A8    jmp         dword ptr [eax*4+6926AF]
 006926A8    dd          00692737
 006926A8    dd          00692745
 006926A8    dd          00692753
 006926A8    dd          00692761
 006926A8    dd          0069276F
 006926A8    dd          0069277D
 006926A8    dd          0069278B
 006926A8    dd          00692799
 006926A8    dd          006927A7
 006926A8    dd          006927B5
 006926A8    dd          006927C3
 006926A8    dd          006927D1
 006926A8    dd          006927DF
 006926A8    dd          006927ED
 006926A8    dd          006927FB
 006926A8    dd          00692809
 006926A8    dd          00692817
 006926A8    dd          00692825
 006926A8    dd          00692833
 006926A8    dd          00692841
 006926A8    dd          0069284F
 006926A8    dd          0069285D
 006926A8    dd          0069286B
 006926A8    dd          00692876
 006926A8    dd          00692881
 006926A8    dd          0069288C
 006926A8    dd          00692897
 006926A8    dd          006928A2
 006926A8    dd          006928AD
 006926A8    dd          006928B8
 006926A8    dd          006928C3
 006926A8    dd          006928CE
 006926A8    dd          006928D9
 006926A8    dd          006928E4
 00692737    movzx       eax,byte ptr ds:[6928FC];0x0 gvar_006928FC
 0069273E    or          bl,al
>00692740    jmp         006928ED
 00692745    movzx       eax,byte ptr ds:[692904];0x2 gvar_00692904
 0069274C    or          bl,al
>0069274E    jmp         006928ED
 00692753    movzx       eax,byte ptr ds:[692904];0x2 gvar_00692904
 0069275A    or          bl,al
>0069275C    jmp         006928ED
 00692761    movzx       eax,byte ptr ds:[692904];0x2 gvar_00692904
 00692768    or          bl,al
>0069276A    jmp         006928ED
 0069276F    movzx       eax,byte ptr ds:[692904];0x2 gvar_00692904
 00692776    or          bl,al
>00692778    jmp         006928ED
 0069277D    movzx       eax,byte ptr ds:[692908];0x4 gvar_00692908
 00692784    or          bl,al
>00692786    jmp         006928ED
 0069278B    movzx       eax,byte ptr ds:[6928FC];0x0 gvar_006928FC
 00692792    or          bl,al
>00692794    jmp         006928ED
 00692799    movzx       eax,byte ptr ds:[6928FC];0x0 gvar_006928FC
 006927A0    or          bl,al
>006927A2    jmp         006928ED
 006927A7    movzx       eax,byte ptr ds:[69290C];0x20 gvar_0069290C
 006927AE    or          bl,al
>006927B0    jmp         006928ED
 006927B5    movzx       eax,byte ptr ds:[69290C];0x20 gvar_0069290C
 006927BC    or          bl,al
>006927BE    jmp         006928ED
 006927C3    movzx       eax,byte ptr ds:[692910];0x40 gvar_00692910
 006927CA    or          bl,al
>006927CC    jmp         006928ED
 006927D1    movzx       eax,byte ptr ds:[6928FC];0x0 gvar_006928FC
 006927D8    or          bl,al
>006927DA    jmp         006928ED
 006927DF    movzx       eax,byte ptr ds:[692910];0x40 gvar_00692910
 006927E6    or          bl,al
>006927E8    jmp         006928ED
 006927ED    movzx       eax,byte ptr ds:[692910];0x40 gvar_00692910
 006927F4    or          bl,al
>006927F6    jmp         006928ED
 006927FB    movzx       eax,byte ptr ds:[6928FC];0x0 gvar_006928FC
 00692802    or          bl,al
>00692804    jmp         006928ED
 00692809    movzx       eax,byte ptr ds:[6928FC];0x0 gvar_006928FC
 00692810    or          bl,al
>00692812    jmp         006928ED
 00692817    movzx       eax,byte ptr ds:[6928FC];0x0 gvar_006928FC
 0069281E    or          bl,al
>00692820    jmp         006928ED
 00692825    movzx       eax,byte ptr ds:[6928FC];0x0 gvar_006928FC
 0069282C    or          bl,al
>0069282E    jmp         006928ED
 00692833    movzx       eax,byte ptr ds:[6928FC];0x0 gvar_006928FC
 0069283A    or          bl,al
>0069283C    jmp         006928ED
 00692841    movzx       eax,byte ptr ds:[6928FC];0x0 gvar_006928FC
 00692848    or          bl,al
>0069284A    jmp         006928ED
 0069284F    movzx       eax,byte ptr ds:[6928FC];0x0 gvar_006928FC
 00692856    or          bl,al
>00692858    jmp         006928ED
 0069285D    movzx       eax,byte ptr ds:[6928FC];0x0 gvar_006928FC
 00692864    or          bl,al
>00692866    jmp         006928ED
 0069286B    movzx       eax,byte ptr ds:[692914];0x80 gvar_00692914
 00692872    or          bl,al
>00692874    jmp         006928ED
 00692876    movzx       eax,byte ptr ds:[6928FC];0x0 gvar_006928FC
 0069287D    or          bl,al
>0069287F    jmp         006928ED
 00692881    movzx       eax,byte ptr ds:[6928FC];0x0 gvar_006928FC
 00692888    or          bl,al
>0069288A    jmp         006928ED
 0069288C    movzx       eax,byte ptr ds:[6928FC];0x0 gvar_006928FC
 00692893    or          bl,al
>00692895    jmp         006928ED
 00692897    movzx       eax,byte ptr ds:[6928FC];0x0 gvar_006928FC
 0069289E    or          bl,al
>006928A0    jmp         006928ED
 006928A2    movzx       eax,byte ptr ds:[6928FC];0x0 gvar_006928FC
 006928A9    or          bl,al
>006928AB    jmp         006928ED
 006928AD    movzx       eax,byte ptr ds:[6928FC];0x0 gvar_006928FC
 006928B4    or          bl,al
>006928B6    jmp         006928ED
 006928B8    movzx       eax,byte ptr ds:[6928FC];0x0 gvar_006928FC
 006928BF    or          bl,al
>006928C1    jmp         006928ED
 006928C3    movzx       eax,byte ptr ds:[6928FC];0x0 gvar_006928FC
 006928CA    or          bl,al
>006928CC    jmp         006928ED
 006928CE    movzx       eax,byte ptr ds:[6928FC];0x0 gvar_006928FC
 006928D5    or          bl,al
>006928D7    jmp         006928ED
 006928D9    movzx       eax,byte ptr ds:[6928FC];0x0 gvar_006928FC
 006928E0    or          bl,al
>006928E2    jmp         006928ED
 006928E4    movzx       eax,byte ptr ds:[6928FC];0x0 gvar_006928FC
 006928EB    or          bl,al
 006928ED    mov         eax,ebx
 006928EF    add         esp,0DC
 006928F5    pop         edi
 006928F6    pop         esi
 006928F7    pop         ebx
 006928F8    ret
*}
end;

//00692918
function TFXPAD.CnvGetOutEvents(ap:TFXADRec):TFXEventSet;
begin
{*
 00692918    movzx       eax,byte ptr ds:[692920];0x0 gvar_00692920
 0069291F    ret
*}
end;

//00692924
function TFXPAD.YepToBool(s:string):Boolean;
begin
{*
 00692924    push        ebp
 00692925    mov         ebp,esp
 00692927    push        ecx
 00692928    push        ebx
 00692929    mov         dword ptr [ebp-4],edx
 0069292C    mov         eax,dword ptr [ebp-4]
 0069292F    call        @UStrAddRef
 00692934    xor         eax,eax
 00692936    push        ebp
 00692937    push        692986
 0069293C    push        dword ptr fs:[eax]
 0069293F    mov         dword ptr fs:[eax],esp
 00692942    xor         ebx,ebx
 00692944    cmp         dword ptr [ebp-4],0
>00692948    jne         0069294C
 0069294A    xor         ebx,ebx
 0069294C    mov         eax,dword ptr [ebp-4]
 0069294F    mov         edx,dword ptr ds:[7C24DC];^'Yes'
 00692955    call        @UStrEqual
>0069295A    jne         0069295E
 0069295C    mov         bl,1
 0069295E    mov         eax,dword ptr [ebp-4]
 00692961    mov         edx,dword ptr ds:[7C24D8];^' No'
 00692967    call        @UStrEqual
>0069296C    jne         00692970
 0069296E    xor         ebx,ebx
 00692970    xor         eax,eax
 00692972    pop         edx
 00692973    pop         ecx
 00692974    pop         ecx
 00692975    mov         dword ptr fs:[eax],edx
 00692978    push        69298D
 0069297D    lea         eax,[ebp-4]
 00692980    call        @UStrClr
 00692985    ret
>00692986    jmp         @HandleFinally
>0069298B    jmp         0069297D
 0069298D    mov         eax,ebx
 0069298F    pop         ebx
 00692990    pop         ecx
 00692991    pop         ebp
 00692992    ret
*}
end;

//00692994
function TFXPAD.GenDefaultZone(loop:Byte; range:Byte; address:Byte):Byte;
begin
{*
 00692994    push        ebp
 00692995    mov         ebp,esp
 00692997    push        ebx
 00692998    push        esi
 00692999    push        edi
 0069299A    mov         ebx,edx
 0069299C    mov         esi,eax
 0069299E    xor         edi,edi
 006929A0    movzx       edx,bl
 006929A3    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 006929A9    call        TFXPPD.GetControllerLoopType
 006929AE    cmp         eax,6
>006929B1    ja          00692D74
 006929B7    jmp         dword ptr [eax*4+6929BE]
 006929B7    dd          00692D74
 006929B7    dd          00692BE4
 006929B7    dd          00692CE9
 006929B7    dd          00692ADF
 006929B7    dd          006929DA
 006929B7    dd          00692ADF
 006929B7    dd          006929DA
 006929DA    movzx       edi,byte ptr [ebp+8]
 006929DE    sub         edi,1
>006929E1    jno         006929E8
 006929E3    call        @IntOver
 006929E8    test        edi,edi
>006929EA    jns         006929EF
 006929EC    add         edi,0F
 006929EF    sar         edi,4
 006929F2    add         edi,1
>006929F5    jno         006929FC
 006929F7    call        @IntOver
 006929FC    cmp         edi,0FFFF
>00692A02    jbe         00692A09
 00692A04    call        @BoundErr
 00692A09    movzx       eax,di
 00692A0C    mov         ecx,0A
 00692A11    mov         edx,1
 00692A16    call        004329DC
 00692A1B    cmp         eax,0FFFF
>00692A20    jbe         00692A27
 00692A22    call        @BoundErr
 00692A27    mov         edi,eax
 00692A29    movzx       edx,bl
 00692A2C    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 00692A32    call        TFXPPD.GetLCForLoop
 00692A37    movzx       eax,al
 00692A3A    sub         eax,1
>00692A3D    jno         00692A44
 00692A3F    call        @IntOver
 00692A44    imul        eax,eax,14
>00692A47    jno         00692A4E
 00692A49    call        @IntOver
 00692A4E    movzx       edx,di
 00692A51    add         eax,edx
>00692A53    jno         00692A5A
 00692A55    call        @IntOver
 00692A5A    cmp         eax,0FFFF
>00692A5F    jbe         00692A66
 00692A61    call        @BoundErr
 00692A66    mov         edi,eax
 00692A68    movzx       edx,bl
 00692A6B    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 00692A71    call        TFXPPD.GetLCForLoop
 00692A76    mov         edx,eax
 00692A78    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 00692A7E    call        TFXPPD.GetLCFirstLoopIndex
 00692A83    movzx       eax,al
 00692A86    add         eax,1
>00692A89    jno         00692A90
 00692A8B    call        @IntOver
 00692A90    movzx       edx,bl
 00692A93    cmp         eax,edx
>00692A95    jne         00692AB2
 00692A97    movzx       eax,di
 00692A9A    add         eax,0A
>00692A9D    jno         00692AA4
 00692A9F    call        @IntOver
 00692AA4    cmp         eax,0FFFF
>00692AA9    jbe         00692AB0
 00692AAB    call        @BoundErr
 00692AB0    mov         edi,eax
 00692AB2    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 00692AB8    movzx       ecx,byte ptr [eax+125]
 00692ABF    movzx       eax,di
 00692AC2    mov         edx,1
 00692AC7    call        004329DC
 00692ACC    cmp         eax,0FFFF
>00692AD1    jbe         00692AD8
 00692AD3    call        @BoundErr
 00692AD8    mov         edi,eax
>00692ADA    jmp         00692D74
 00692ADF    movzx       eax,byte ptr [ebp+8]
 00692AE3    sub         eax,1
>00692AE6    jno         00692AED
 00692AE8    call        @IntOver
 00692AED    mov         ecx,0D
 00692AF2    cdq
 00692AF3    idiv        eax,ecx
 00692AF5    mov         edi,eax
 00692AF7    add         edi,1
>00692AFA    jno         00692B01
 00692AFC    call        @IntOver
 00692B01    cmp         edi,0FFFF
>00692B07    jbe         00692B0E
 00692B09    call        @BoundErr
 00692B0E    movzx       eax,di
 00692B11    mov         ecx,0A
 00692B16    mov         edx,1
 00692B1B    call        004329DC
 00692B20    cmp         eax,0FFFF
>00692B25    jbe         00692B2C
 00692B27    call        @BoundErr
 00692B2C    mov         edi,eax
 00692B2E    movzx       edx,bl
 00692B31    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 00692B37    call        TFXPPD.GetLCForLoop
 00692B3C    movzx       eax,al
 00692B3F    sub         eax,1
>00692B42    jno         00692B49
 00692B44    call        @IntOver
 00692B49    imul        eax,eax,14
>00692B4C    jno         00692B53
 00692B4E    call        @IntOver
 00692B53    movzx       edx,di
 00692B56    add         eax,edx
>00692B58    jno         00692B5F
 00692B5A    call        @IntOver
 00692B5F    cmp         eax,0FFFF
>00692B64    jbe         00692B6B
 00692B66    call        @BoundErr
 00692B6B    mov         edi,eax
 00692B6D    movzx       edx,bl
 00692B70    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 00692B76    call        TFXPPD.GetLCForLoop
 00692B7B    mov         edx,eax
 00692B7D    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 00692B83    call        TFXPPD.GetLCFirstLoopIndex
 00692B88    movzx       eax,al
 00692B8B    add         eax,1
>00692B8E    jno         00692B95
 00692B90    call        @IntOver
 00692B95    movzx       edx,bl
 00692B98    cmp         eax,edx
>00692B9A    jne         00692BB7
 00692B9C    movzx       eax,di
 00692B9F    add         eax,0A
>00692BA2    jno         00692BA9
 00692BA4    call        @IntOver
 00692BA9    cmp         eax,0FFFF
>00692BAE    jbe         00692BB5
 00692BB0    call        @BoundErr
 00692BB5    mov         edi,eax
 00692BB7    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 00692BBD    movzx       ecx,byte ptr [eax+125]
 00692BC4    movzx       eax,di
 00692BC7    mov         edx,1
 00692BCC    call        004329DC
 00692BD1    cmp         eax,0FFFF
>00692BD6    jbe         00692BDD
 00692BD8    call        @BoundErr
 00692BDD    mov         edi,eax
>00692BDF    jmp         00692D74
 00692BE4    movzx       eax,byte ptr [ebp+8]
 00692BE8    sub         eax,1
>00692BEB    jno         00692BF2
 00692BED    call        @IntOver
 00692BF2    mov         ecx,0A
 00692BF7    cdq
 00692BF8    idiv        eax,ecx
 00692BFA    mov         edi,eax
 00692BFC    add         edi,1
>00692BFF    jno         00692C06
 00692C01    call        @IntOver
 00692C06    cmp         edi,0FFFF
>00692C0C    jbe         00692C13
 00692C0E    call        @BoundErr
 00692C13    movzx       eax,di
 00692C16    mov         ecx,0A
 00692C1B    mov         edx,1
 00692C20    call        004329DC
 00692C25    cmp         eax,0FFFF
>00692C2A    jbe         00692C31
 00692C2C    call        @BoundErr
 00692C31    mov         edi,eax
 00692C33    movzx       edx,bl
 00692C36    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 00692C3C    call        TFXPPD.GetLCForLoop
 00692C41    movzx       eax,al
 00692C44    sub         eax,1
>00692C47    jno         00692C4E
 00692C49    call        @IntOver
 00692C4E    imul        eax,eax,14
>00692C51    jno         00692C58
 00692C53    call        @IntOver
 00692C58    movzx       edx,di
 00692C5B    add         eax,edx
>00692C5D    jno         00692C64
 00692C5F    call        @IntOver
 00692C64    cmp         eax,0FFFF
>00692C69    jbe         00692C70
 00692C6B    call        @BoundErr
 00692C70    mov         edi,eax
 00692C72    movzx       edx,bl
 00692C75    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 00692C7B    call        TFXPPD.GetLCForLoop
 00692C80    mov         edx,eax
 00692C82    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 00692C88    call        TFXPPD.GetLCFirstLoopIndex
 00692C8D    movzx       eax,al
 00692C90    add         eax,1
>00692C93    jno         00692C9A
 00692C95    call        @IntOver
 00692C9A    movzx       edx,bl
 00692C9D    cmp         eax,edx
>00692C9F    jne         00692CBC
 00692CA1    movzx       eax,di
 00692CA4    add         eax,0A
>00692CA7    jno         00692CAE
 00692CA9    call        @IntOver
 00692CAE    cmp         eax,0FFFF
>00692CB3    jbe         00692CBA
 00692CB5    call        @BoundErr
 00692CBA    mov         edi,eax
 00692CBC    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 00692CC2    movzx       ecx,byte ptr [eax+125]
 00692CC9    movzx       eax,di
 00692CCC    mov         edx,1
 00692CD1    call        004329DC
 00692CD6    cmp         eax,0FFFF
>00692CDB    jbe         00692CE2
 00692CDD    call        @BoundErr
 00692CE2    mov         edi,eax
>00692CE4    jmp         00692D74
 00692CE9    movzx       edi,byte ptr [ebp+8]
 00692CED    movzx       eax,di
 00692CF0    mov         ecx,10
 00692CF5    mov         edx,1
 00692CFA    call        004329DC
 00692CFF    cmp         eax,0FFFF
>00692D04    jbe         00692D0B
 00692D06    call        @BoundErr
 00692D0B    mov         edi,eax
 00692D0D    movzx       edx,bl
 00692D10    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 00692D16    call        TFXPPD.GetLCForLoop
 00692D1B    movzx       eax,al
 00692D1E    sub         eax,1
>00692D21    jno         00692D28
 00692D23    call        @IntOver
 00692D28    imul        eax,eax,14
>00692D2B    jno         00692D32
 00692D2D    call        @IntOver
 00692D32    movzx       edx,di
 00692D35    add         eax,edx
>00692D37    jno         00692D3E
 00692D39    call        @IntOver
 00692D3E    cmp         eax,0FFFF
>00692D43    jbe         00692D4A
 00692D45    call        @BoundErr
 00692D4A    mov         edi,eax
 00692D4C    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 00692D52    movzx       ecx,byte ptr [eax+125]
 00692D59    movzx       eax,di
 00692D5C    mov         edx,1
 00692D61    call        004329DC
 00692D66    cmp         eax,0FFFF
>00692D6B    jbe         00692D72
 00692D6D    call        @BoundErr
 00692D72    mov         edi,eax
 00692D74    movzx       eax,di
 00692D77    cmp         eax,0FF
>00692D7C    jbe         00692D83
 00692D7E    call        @BoundErr
 00692D83    pop         edi
 00692D84    pop         esi
 00692D85    pop         ebx
 00692D86    pop         ebp
 00692D87    ret         4
*}
end;

//00692D8C
function TFXPAD.fnZonesInRange(minzone:Integer; maxzone:Integer):Boolean;
begin
{*
 00692D8C    push        ebx
 00692D8D    push        esi
 00692D8E    push        edi
 00692D8F    push        ebp
 00692D90    add         esp,0FFFFFFF8
 00692D93    mov         ebp,ecx
 00692D95    mov         edi,edx
 00692D97    mov         esi,eax
 00692D99    mov         byte ptr [esp],1
 00692D9D    mov         byte ptr [esp+1],0
 00692DA2    mov         byte ptr [esp+2],0
 00692DA7    mov         bl,1
 00692DA9    movzx       edx,byte ptr [esp+1]
 00692DAE    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 00692DB4    call        TFXPPD.GetControllerLoopType
 00692DB9    cmp         eax,0FF
>00692DBE    jbe         00692DC5
 00692DC0    call        @BoundErr
 00692DC5    cmp         al,2
>00692DC7    je          00692E2F
 00692DC9    movzx       edx,byte ptr [esp+1]
 00692DCE    cmp         edx,7
>00692DD1    jbe         00692DD8
 00692DD3    call        @BoundErr
 00692DD8    imul        edx,edx,43B3
>00692DDE    jno         00692DE5
 00692DE0    call        @IntOver
 00692DE5    lea         edx,[esi+edx*4]
 00692DE8    movzx       ecx,byte ptr [esp+2]
 00692DED    cmp         ecx,1
>00692DF0    jbe         00692DF7
 00692DF2    call        @BoundErr
 00692DF7    imul        ecx,ecx,43B3
>00692DFD    jno         00692E04
 00692DFF    call        @IntOver
 00692E04    lea         edx,[edx+ecx*2]
 00692E07    push        edx
 00692E08    movzx       edx,bl
 00692E0B    dec         edx
 00692E0C    cmp         edx,9E
>00692E12    jbe         00692E19
 00692E14    call        @BoundErr
 00692E19    inc         edx
 00692E1A    imul        edx,edx,6D
>00692E1D    jno         00692E24
 00692E1F    call        @IntOver
 00692E24    pop         ecx
 00692E25    cmp         byte ptr [ecx+edx*2-0CC],0
>00692E2D    jne         00692E9F
 00692E2F    cmp         al,2
>00692E31    jne         00692F1F
 00692E37    movzx       eax,byte ptr [esp+1]
 00692E3C    cmp         eax,7
>00692E3F    jbe         00692E46
 00692E41    call        @BoundErr
 00692E46    imul        eax,eax,43B3
>00692E4C    jno         00692E53
 00692E4E    call        @IntOver
 00692E53    lea         eax,[esi+eax*4]
 00692E56    movzx       edx,byte ptr [esp+2]
 00692E5B    cmp         edx,1
>00692E5E    jbe         00692E65
 00692E60    call        @BoundErr
 00692E65    imul        edx,edx,43B3
>00692E6B    jno         00692E72
 00692E6D    call        @IntOver
 00692E72    lea         eax,[eax+edx*2]
 00692E75    movzx       edx,bl
 00692E78    dec         edx
 00692E79    cmp         edx,9E
>00692E7F    jbe         00692E86
 00692E81    call        @BoundErr
 00692E86    inc         edx
 00692E87    imul        edx,edx,6D
>00692E8A    jno         00692E91
 00692E8C    call        @IntOver
 00692E91    cmp         byte ptr [eax+edx*2-0CB],0
>00692E99    je          00692F1F
 00692E9F    movzx       eax,byte ptr [esp+1]
 00692EA4    cmp         eax,7
>00692EA7    jbe         00692EAE
 00692EA9    call        @BoundErr
 00692EAE    imul        eax,eax,43B3
>00692EB4    jno         00692EBB
 00692EB6    call        @IntOver
 00692EBB    lea         eax,[esi+eax*4]
 00692EBE    movzx       edx,byte ptr [esp+2]
 00692EC3    cmp         edx,1
>00692EC6    jbe         00692ECD
 00692EC8    call        @BoundErr
 00692ECD    imul        edx,edx,43B3
>00692ED3    jno         00692EDA
 00692ED5    call        @IntOver
 00692EDA    lea         eax,[eax+edx*2]
 00692EDD    movzx       edx,bl
 00692EE0    dec         edx
 00692EE1    cmp         edx,9E
>00692EE7    jbe         00692EEE
 00692EE9    call        @BoundErr
 00692EEE    inc         edx
 00692EEF    imul        edx,edx,6D
>00692EF2    jno         00692EF9
 00692EF4    call        @IntOver
 00692EF9    movzx       eax,byte ptr [eax+edx*2-0D1]
 00692F01    mov         dword ptr [esp+4],eax
 00692F05    cmp         edi,dword ptr [esp+4]
 00692F09    setle       al
 00692F0C    cmp         ebp,dword ptr [esp+4]
 00692F10    setge       dl
 00692F13    and         al,dl
 00692F15    test        al,al
>00692F17    jne         00692F94
 00692F19    mov         byte ptr [esp],0
>00692F1D    jmp         00692F94
 00692F1F    push        ebx
 00692F20    movzx       ecx,byte ptr [esp+6]
 00692F25    movzx       edx,byte ptr [esp+5]
 00692F2A    mov         eax,esi
 00692F2C    call        TFXPAD.GenDefaultZone
 00692F31    movzx       edx,byte ptr [esp+1]
 00692F36    cmp         edx,7
>00692F39    jbe         00692F40
 00692F3B    call        @BoundErr
 00692F40    imul        edx,edx,43B3
>00692F46    jno         00692F4D
 00692F48    call        @IntOver
 00692F4D    lea         edx,[esi+edx*4]
 00692F50    movzx       ecx,byte ptr [esp+2]
 00692F55    cmp         ecx,1
>00692F58    jbe         00692F5F
 00692F5A    call        @BoundErr
 00692F5F    imul        ecx,ecx,43B3
>00692F65    jno         00692F6C
 00692F67    call        @IntOver
 00692F6C    lea         edx,[edx+ecx*2]
 00692F6F    push        edx
 00692F70    movzx       edx,bl
 00692F73    dec         edx
 00692F74    cmp         edx,9E
>00692F7A    jbe         00692F81
 00692F7C    call        @BoundErr
 00692F81    inc         edx
 00692F82    imul        edx,edx,6D
>00692F85    jno         00692F8C
 00692F87    call        @IntOver
 00692F8C    pop         ecx
 00692F8D    mov         byte ptr [ecx+edx*2-0D1],al
 00692F94    inc         ebx
 00692F95    cmp         bl,0A0
>00692F98    jne         00692DA9
 00692F9E    inc         byte ptr [esp+2]
 00692FA2    cmp         byte ptr [esp+2],2
>00692FA7    jne         00692DA7
 00692FAD    inc         byte ptr [esp+1]
 00692FB1    cmp         byte ptr [esp+1],8
>00692FB6    jne         00692DA2
 00692FBC    movzx       eax,byte ptr [esp]
 00692FC0    pop         ecx
 00692FC1    pop         edx
 00692FC2    pop         ebp
 00692FC3    pop         edi
 00692FC4    pop         esi
 00692FC5    pop         ebx
 00692FC6    ret
*}
end;

//00692FC8
procedure TFXPAD.MoveAddressData(FromLoop:Byte; ToLoop:Byte);
begin
{*
 00692FC8    push        ebx
 00692FC9    push        esi
 00692FCA    push        edi
 00692FCB    push        ebp
 00692FCC    push        ecx
 00692FCD    mov         byte ptr [esp+1],cl
 00692FD1    mov         byte ptr [esp],dl
 00692FD4    mov         esi,eax
 00692FD6    mov         byte ptr [esp+2],0
 00692FDB    mov         bl,1
 00692FDD    movzx       eax,byte ptr [esp+1]
 00692FE2    cmp         eax,7
>00692FE5    jbe         00692FEC
 00692FE7    call        @BoundErr
 00692FEC    imul        eax,eax,43B3
>00692FF2    jno         00692FF9
 00692FF4    call        @IntOver
 00692FF9    lea         eax,[esi+eax*4]
 00692FFC    movzx       edx,byte ptr [esp+2]
 00693001    cmp         edx,1
>00693004    jbe         0069300B
 00693006    call        @BoundErr
 0069300B    imul        edx,edx,43B3
>00693011    jno         00693018
 00693013    call        @IntOver
 00693018    lea         edi,[eax+edx*2]
 0069301B    movzx       eax,bl
 0069301E    dec         eax
 0069301F    cmp         eax,9E
>00693024    jbe         0069302B
 00693026    call        @BoundErr
 0069302B    inc         eax
 0069302C    imul        eax,eax,6D
>0069302F    jno         00693036
 00693031    call        @IntOver
 00693036    lea         eax,[edi+eax*2-0D6]
 0069303D    xor         ecx,ecx
 0069303F    mov         edx,0DA
 00693044    call        @FillChar
 00693049    inc         ebx
 0069304A    cmp         bl,0A0
>0069304D    jne         00692FDD
 0069304F    inc         byte ptr [esp+2]
 00693053    cmp         byte ptr [esp+2],2
>00693058    jne         00692FDB
 0069305A    movzx       edx,byte ptr [esp]
 0069305E    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 00693064    call        TFXPPD.GetControllerLoopType
 00693069    cmp         eax,6
>0069306C    ja          0069344C
 00693072    jmp         dword ptr [eax*4+693079]
 00693072    dd          0069344C
 00693072    dd          00693273
 00693072    dd          00693362
 00693072    dd          00693095
 00693072    dd          00693184
 00693072    dd          00693095
 00693072    dd          00693184
 00693095    mov         byte ptr [esp+2],0
 0069309A    mov         bl,1
 0069309C    movzx       edx,byte ptr [esp]
 006930A0    cmp         edx,7
>006930A3    jbe         006930AA
 006930A5    call        @BoundErr
 006930AA    imul        edx,edx,43B3
>006930B0    jno         006930B7
 006930B2    call        @IntOver
 006930B7    lea         ebp,[esi+edx*4]
 006930BA    movzx       eax,byte ptr [esp+2]
 006930BF    cmp         eax,1
>006930C2    jbe         006930C9
 006930C4    call        @BoundErr
 006930C9    imul        eax,eax,43B3
>006930CF    jno         006930D6
 006930D1    call        @IntOver
 006930D6    lea         edx,[ebp+eax*2]
 006930DA    movzx       ecx,bl
 006930DD    dec         ecx
 006930DE    cmp         ecx,9E
>006930E4    jbe         006930EB
 006930E6    call        @BoundErr
 006930EB    inc         ecx
 006930EC    imul        edi,ecx,6D
>006930EF    jno         006930F6
 006930F1    call        @IntOver
 006930F6    movzx       ecx,byte ptr [esp+1]
 006930FB    cmp         ecx,7
>006930FE    jbe         00693105
 00693100    call        @BoundErr
 00693105    imul        ecx,ecx,43B3
>0069310B    jno         00693112
 0069310D    call        @IntOver
 00693112    lea         ecx,[esi+ecx*4]
 00693115    push        ecx
 00693116    pop         ecx
 00693117    lea         ecx,[ecx+eax*2]
 0069311A    push        ecx
 0069311B    pop         ecx
 0069311C    push        esi
 0069311D    push        edi
 0069311E    lea         esi,[edx+edi*2-0D6]
 00693125    lea         edi,[ecx+edi*2-0D6]
 0069312C    mov         ecx,36
 00693131    rep movs    dword ptr [edi],dword ptr [esi]
 00693133    movs        word ptr [edi],word ptr [esi]
 00693135    pop         edi
 00693136    pop         esi
 00693137    movzx       edx,byte ptr [esp+1]
 0069313C    cmp         edx,7
>0069313F    jbe         00693146
 00693141    call        @BoundErr
 00693146    imul        edx,edx,43B3
>0069314C    jno         00693153
 0069314E    call        @IntOver
 00693153    lea         ebp,[esi+edx*4]
 00693156    lea         eax,[ebp+eax*2]
 0069315A    movzx       edx,byte ptr [esp+1]
 0069315F    mov         byte ptr [eax+edi*2-0D4],dl
 00693166    inc         ebx
 00693167    cmp         bl,7F
>0069316A    jne         0069309C
 00693170    inc         byte ptr [esp+2]
 00693174    cmp         byte ptr [esp+2],1
>00693179    jne         0069309A
>0069317F    jmp         0069344C
 00693184    mov         byte ptr [esp+2],0
 00693189    mov         bl,1
 0069318B    movzx       edx,byte ptr [esp]
 0069318F    cmp         edx,7
>00693192    jbe         00693199
 00693194    call        @BoundErr
 00693199    imul        edx,edx,43B3
>0069319F    jno         006931A6
 006931A1    call        @IntOver
 006931A6    lea         ebp,[esi+edx*4]
 006931A9    movzx       eax,byte ptr [esp+2]
 006931AE    cmp         eax,1
>006931B1    jbe         006931B8
 006931B3    call        @BoundErr
 006931B8    imul        eax,eax,43B3
>006931BE    jno         006931C5
 006931C0    call        @IntOver
 006931C5    lea         edx,[ebp+eax*2]
 006931C9    movzx       ecx,bl
 006931CC    dec         ecx
 006931CD    cmp         ecx,9E
>006931D3    jbe         006931DA
 006931D5    call        @BoundErr
 006931DA    inc         ecx
 006931DB    imul        edi,ecx,6D
>006931DE    jno         006931E5
 006931E0    call        @IntOver
 006931E5    movzx       ecx,byte ptr [esp+1]
 006931EA    cmp         ecx,7
>006931ED    jbe         006931F4
 006931EF    call        @BoundErr
 006931F4    imul        ecx,ecx,43B3
>006931FA    jno         00693201
 006931FC    call        @IntOver
 00693201    lea         ecx,[esi+ecx*4]
 00693204    push        ecx
 00693205    pop         ecx
 00693206    lea         ecx,[ecx+eax*2]
 00693209    push        ecx
 0069320A    pop         ecx
 0069320B    push        esi
 0069320C    push        edi
 0069320D    lea         esi,[edx+edi*2-0D6]
 00693214    lea         edi,[ecx+edi*2-0D6]
 0069321B    mov         ecx,36
 00693220    rep movs    dword ptr [edi],dword ptr [esi]
 00693222    movs        word ptr [edi],word ptr [esi]
 00693224    pop         edi
 00693225    pop         esi
 00693226    movzx       edx,byte ptr [esp+1]
 0069322B    cmp         edx,7
>0069322E    jbe         00693235
 00693230    call        @BoundErr
 00693235    imul        edx,edx,43B3
>0069323B    jno         00693242
 0069323D    call        @IntOver
 00693242    lea         ebp,[esi+edx*4]
 00693245    lea         eax,[ebp+eax*2]
 00693249    movzx       edx,byte ptr [esp+1]
 0069324E    mov         byte ptr [eax+edi*2-0D4],dl
 00693255    inc         ebx
 00693256    cmp         bl,0A0
>00693259    jne         0069318B
 0069325F    inc         byte ptr [esp+2]
 00693263    cmp         byte ptr [esp+2],2
>00693268    jne         00693189
>0069326E    jmp         0069344C
 00693273    mov         byte ptr [esp+2],0
 00693278    mov         bl,1
 0069327A    movzx       edx,byte ptr [esp]
 0069327E    cmp         edx,7
>00693281    jbe         00693288
 00693283    call        @BoundErr
 00693288    imul        edx,edx,43B3
>0069328E    jno         00693295
 00693290    call        @IntOver
 00693295    lea         ebp,[esi+edx*4]
 00693298    movzx       eax,byte ptr [esp+2]
 0069329D    cmp         eax,1
>006932A0    jbe         006932A7
 006932A2    call        @BoundErr
 006932A7    imul        eax,eax,43B3
>006932AD    jno         006932B4
 006932AF    call        @IntOver
 006932B4    lea         edx,[ebp+eax*2]
 006932B8    movzx       ecx,bl
 006932BB    dec         ecx
 006932BC    cmp         ecx,9E
>006932C2    jbe         006932C9
 006932C4    call        @BoundErr
 006932C9    inc         ecx
 006932CA    imul        edi,ecx,6D
>006932CD    jno         006932D4
 006932CF    call        @IntOver
 006932D4    movzx       ecx,byte ptr [esp+1]
 006932D9    cmp         ecx,7
>006932DC    jbe         006932E3
 006932DE    call        @BoundErr
 006932E3    imul        ecx,ecx,43B3
>006932E9    jno         006932F0
 006932EB    call        @IntOver
 006932F0    lea         ecx,[esi+ecx*4]
 006932F3    push        ecx
 006932F4    pop         ecx
 006932F5    lea         ecx,[ecx+eax*2]
 006932F8    push        ecx
 006932F9    pop         ecx
 006932FA    push        esi
 006932FB    push        edi
 006932FC    lea         esi,[edx+edi*2-0D6]
 00693303    lea         edi,[ecx+edi*2-0D6]
 0069330A    mov         ecx,36
 0069330F    rep movs    dword ptr [edi],dword ptr [esi]
 00693311    movs        word ptr [edi],word ptr [esi]
 00693313    pop         edi
 00693314    pop         esi
 00693315    movzx       edx,byte ptr [esp+1]
 0069331A    cmp         edx,7
>0069331D    jbe         00693324
 0069331F    call        @BoundErr
 00693324    imul        edx,edx,43B3
>0069332A    jno         00693331
 0069332C    call        @IntOver
 00693331    lea         ebp,[esi+edx*4]
 00693334    lea         eax,[ebp+eax*2]
 00693338    movzx       edx,byte ptr [esp+1]
 0069333D    mov         byte ptr [eax+edi*2-0D4],dl
 00693344    inc         ebx
 00693345    cmp         bl,64
>00693348    jne         0069327A
 0069334E    inc         byte ptr [esp+2]
 00693352    cmp         byte ptr [esp+2],2
>00693357    jne         00693278
>0069335D    jmp         0069344C
 00693362    mov         byte ptr [esp+2],0
 00693367    mov         bl,1
 00693369    movzx       edx,byte ptr [esp]
 0069336D    cmp         edx,7
>00693370    jbe         00693377
 00693372    call        @BoundErr
 00693377    imul        edx,edx,43B3
>0069337D    jno         00693384
 0069337F    call        @IntOver
 00693384    lea         ebp,[esi+edx*4]
 00693387    movzx       eax,byte ptr [esp+2]
 0069338C    cmp         eax,1
>0069338F    jbe         00693396
 00693391    call        @BoundErr
 00693396    imul        eax,eax,43B3
>0069339C    jno         006933A3
 0069339E    call        @IntOver
 006933A3    lea         edx,[ebp+eax*2]
 006933A7    movzx       ecx,bl
 006933AA    dec         ecx
 006933AB    cmp         ecx,9E
>006933B1    jbe         006933B8
 006933B3    call        @BoundErr
 006933B8    inc         ecx
 006933B9    imul        edi,ecx,6D
>006933BC    jno         006933C3
 006933BE    call        @IntOver
 006933C3    movzx       ecx,byte ptr [esp+1]
 006933C8    cmp         ecx,7
>006933CB    jbe         006933D2
 006933CD    call        @BoundErr
 006933D2    imul        ecx,ecx,43B3
>006933D8    jno         006933DF
 006933DA    call        @IntOver
 006933DF    lea         ecx,[esi+ecx*4]
 006933E2    push        ecx
 006933E3    pop         ecx
 006933E4    lea         ecx,[ecx+eax*2]
 006933E7    push        ecx
 006933E8    pop         ecx
 006933E9    push        esi
 006933EA    push        edi
 006933EB    lea         esi,[edx+edi*2-0D6]
 006933F2    lea         edi,[ecx+edi*2-0D6]
 006933F9    mov         ecx,36
 006933FE    rep movs    dword ptr [edi],dword ptr [esi]
 00693400    movs        word ptr [edi],word ptr [esi]
 00693402    pop         edi
 00693403    pop         esi
 00693404    movzx       edx,byte ptr [esp+1]
 00693409    cmp         edx,7
>0069340C    jbe         00693413
 0069340E    call        @BoundErr
 00693413    imul        edx,edx,43B3
>00693419    jno         00693420
 0069341B    call        @IntOver
 00693420    lea         ebp,[esi+edx*4]
 00693423    lea         eax,[ebp+eax*2]
 00693427    movzx       edx,byte ptr [esp+1]
 0069342C    mov         byte ptr [eax+edi*2-0D4],dl
 00693433    inc         ebx
 00693434    cmp         bl,11
>00693437    jne         00693369
 0069343D    inc         byte ptr [esp+2]
 00693441    cmp         byte ptr [esp+2],1
>00693446    jne         00693367
 0069344C    mov         byte ptr [esp+2],0
 00693451    mov         bl,1
 00693453    movzx       eax,byte ptr [esp]
 00693457    cmp         eax,7
>0069345A    jbe         00693461
 0069345C    call        @BoundErr
 00693461    imul        eax,eax,43B3
>00693467    jno         0069346E
 00693469    call        @IntOver
 0069346E    lea         eax,[esi+eax*4]
 00693471    movzx       edx,byte ptr [esp+2]
 00693476    cmp         edx,1
>00693479    jbe         00693480
 0069347B    call        @BoundErr
 00693480    imul        edx,edx,43B3
>00693486    jno         0069348D
 00693488    call        @IntOver
 0069348D    lea         edi,[eax+edx*2]
 00693490    movzx       eax,bl
 00693493    dec         eax
 00693494    cmp         eax,9E
>00693499    jbe         006934A0
 0069349B    call        @BoundErr
 006934A0    inc         eax
 006934A1    imul        eax,eax,6D
>006934A4    jno         006934AB
 006934A6    call        @IntOver
 006934AB    lea         eax,[edi+eax*2-0D6]
 006934B2    xor         ecx,ecx
 006934B4    mov         edx,0DA
 006934B9    call        @FillChar
 006934BE    inc         ebx
 006934BF    cmp         bl,0A0
>006934C2    jne         00693453
 006934C4    inc         byte ptr [esp+2]
 006934C8    cmp         byte ptr [esp+2],2
>006934CD    jne         00693451
 006934CF    pop         edx
 006934D0    pop         ebp
 006934D1    pop         edi
 006934D2    pop         esi
 006934D3    pop         ebx
 006934D4    ret
*}
end;

//006934D8
function TFXPAD.ValidateZoneIdChange(DeltaZoneId:Integer; NumOfZones:Byte):Boolean;
begin
{*
 006934D8    push        ebx
 006934D9    push        esi
 006934DA    push        edi
 006934DB    push        ebp
 006934DC    add         esp,0FFFFFFF4
 006934DF    mov         byte ptr [esp],cl
 006934E2    mov         edi,edx
 006934E4    mov         esi,eax
 006934E6    lea         ebp,[esp+4]
 006934EA    mov         byte ptr [esp+1],1
 006934EF    mov         byte ptr [esp+2],0
 006934F4    movzx       edx,byte ptr [esp+2]
 006934F9    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 006934FF    call        TFXPPD.GetControllerLoopType
 00693504    cmp         eax,0FF
>00693509    jbe         00693510
 0069350B    call        @BoundErr
 00693510    mov         byte ptr [esp+3],al
 00693514    xor         edx,edx
 00693516    mov         al,1
 00693518    cmp         byte ptr [esp+3],2
>0069351D    je          00693583
 0069351F    movzx       ecx,byte ptr [esp+2]
 00693524    cmp         ecx,7
>00693527    jbe         0069352E
 00693529    call        @BoundErr
 0069352E    imul        ecx,ecx,43B3
>00693534    jno         0069353B
 00693536    call        @IntOver
 0069353B    lea         ecx,[esi+ecx*4]
 0069353E    movzx       ebx,dl
 00693541    cmp         ebx,1
>00693544    jbe         0069354B
 00693546    call        @BoundErr
 0069354B    imul        ebx,ebx,43B3
>00693551    jno         00693558
 00693553    call        @IntOver
 00693558    lea         ecx,[ecx+ebx*2]
 0069355B    push        ecx
 0069355C    movzx       ecx,al
 0069355F    dec         ecx
 00693560    cmp         ecx,9E
>00693566    jbe         0069356D
 00693568    call        @BoundErr
 0069356D    inc         ecx
 0069356E    imul        ecx,ecx,6D
>00693571    jno         00693578
 00693573    call        @IntOver
 00693578    pop         ebx
 00693579    cmp         byte ptr [ebx+ecx*2-0CC],0
>00693581    jne         006935F6
 00693583    cmp         byte ptr [esp+3],2
>00693588    jne         00693686
 0069358E    movzx       ecx,byte ptr [esp+2]
 00693593    cmp         ecx,7
>00693596    jbe         0069359D
 00693598    call        @BoundErr
 0069359D    imul        ecx,ecx,43B3
>006935A3    jno         006935AA
 006935A5    call        @IntOver
 006935AA    lea         ecx,[esi+ecx*4]
 006935AD    movzx       ebx,dl
 006935B0    cmp         ebx,1
>006935B3    jbe         006935BA
 006935B5    call        @BoundErr
 006935BA    imul        ebx,ebx,43B3
>006935C0    jno         006935C7
 006935C2    call        @IntOver
 006935C7    lea         ecx,[ecx+ebx*2]
 006935CA    push        ecx
 006935CB    movzx       ecx,al
 006935CE    dec         ecx
 006935CF    cmp         ecx,9E
>006935D5    jbe         006935DC
 006935D7    call        @BoundErr
 006935DC    inc         ecx
 006935DD    imul        ecx,ecx,6D
>006935E0    jno         006935E7
 006935E2    call        @IntOver
 006935E7    pop         ebx
 006935E8    cmp         byte ptr [ebx+ecx*2-0CB],0
>006935F0    je          00693686
 006935F6    movzx       ecx,byte ptr [esp+2]
 006935FB    cmp         ecx,7
>006935FE    jbe         00693605
 00693600    call        @BoundErr
 00693605    imul        ecx,ecx,43B3
>0069360B    jno         00693612
 0069360D    call        @IntOver
 00693612    lea         ecx,[esi+ecx*4]
 00693615    movzx       ebx,dl
 00693618    cmp         ebx,1
>0069361B    jbe         00693622
 0069361D    call        @BoundErr
 00693622    imul        ebx,ebx,43B3
>00693628    jno         0069362F
 0069362A    call        @IntOver
 0069362F    lea         ecx,[ecx+ebx*2]
 00693632    push        ecx
 00693633    movzx       ecx,al
 00693636    dec         ecx
 00693637    cmp         ecx,9E
>0069363D    jbe         00693644
 0069363F    call        @BoundErr
 00693644    inc         ecx
 00693645    imul        ecx,ecx,6D
>00693648    jno         0069364F
 0069364A    call        @IntOver
 0069364F    pop         ebx
 00693650    movzx       ecx,byte ptr [ebx+ecx*2-0D1]
 00693658    add         ecx,edi
>0069365A    jno         00693661
 0069365C    call        @IntOver
 00693661    mov         dword ptr [ebp],ecx
 00693664    cmp         dword ptr [ebp],1
 00693668    setge       cl
 0069366B    movzx       ebx,byte ptr [esp]
 0069366F    cmp         ebx,dword ptr [ebp]
 00693672    setge       byte ptr [esp+8]
 00693677    and         cl,byte ptr [esp+8]
 0069367B    test        cl,cl
>0069367D    jne         00693686
 0069367F    mov         byte ptr [esp+1],0
>00693684    jmp         006936A8
 00693686    inc         eax
 00693687    cmp         al,0A0
>00693689    jne         00693518
 0069368F    inc         edx
 00693690    cmp         dl,2
>00693693    jne         00693516
 00693699    inc         byte ptr [esp+2]
 0069369D    cmp         byte ptr [esp+2],8
>006936A2    jne         006934F4
 006936A8    movzx       eax,byte ptr [esp+1]
 006936AD    add         esp,0C
 006936B0    pop         ebp
 006936B1    pop         edi
 006936B2    pop         esi
 006936B3    pop         ebx
 006936B4    ret
*}
end;

//006936B8
procedure TFXPAD.PerformZoneIdChange(DeltaZoneId:Integer);
begin
{*
 006936B8    push        ebx
 006936B9    push        esi
 006936BA    push        edi
 006936BB    push        ebp
 006936BC    add         esp,0FFFFFFF8
 006936BF    mov         dword ptr [esp],edx
 006936C2    mov         esi,eax
 006936C4    mov         byte ptr [esp+4],0
 006936C9    movzx       edx,byte ptr [esp+4]
 006936CE    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 006936D4    call        TFXPPD.GetControllerLoopType
 006936D9    cmp         eax,0FF
>006936DE    jbe         006936E5
 006936E0    call        @BoundErr
 006936E5    mov         byte ptr [esp+5],al
 006936E9    xor         edx,edx
 006936EB    mov         al,1
 006936ED    cmp         byte ptr [esp+5],2
>006936F2    je          00693756
 006936F4    movzx       ecx,byte ptr [esp+4]
 006936F9    cmp         ecx,7
>006936FC    jbe         00693703
 006936FE    call        @BoundErr
 00693703    imul        ecx,ecx,43B3
>00693709    jno         00693710
 0069370B    call        @IntOver
 00693710    lea         edi,[esi+ecx*4]
 00693713    movzx       ecx,dl
 00693716    cmp         ecx,1
>00693719    jbe         00693720
 0069371B    call        @BoundErr
 00693720    imul        ecx,ecx,43B3
>00693726    jno         0069372D
 00693728    call        @IntOver
 0069372D    lea         edi,[edi+ecx*2]
 00693730    movzx       ecx,al
 00693733    dec         ecx
 00693734    cmp         ecx,9E
>0069373A    jbe         00693741
 0069373C    call        @BoundErr
 00693741    inc         ecx
 00693742    imul        ecx,ecx,6D
>00693745    jno         0069374C
 00693747    call        @IntOver
 0069374C    cmp         byte ptr [edi+ecx*2-0CC],0
>00693754    jne         006937C7
 00693756    cmp         byte ptr [esp+5],2
>0069375B    jne         00693869
 00693761    movzx       ecx,byte ptr [esp+4]
 00693766    cmp         ecx,7
>00693769    jbe         00693770
 0069376B    call        @BoundErr
 00693770    imul        ecx,ecx,43B3
>00693776    jno         0069377D
 00693778    call        @IntOver
 0069377D    lea         edi,[esi+ecx*4]
 00693780    movzx       ecx,dl
 00693783    cmp         ecx,1
>00693786    jbe         0069378D
 00693788    call        @BoundErr
 0069378D    imul        ecx,ecx,43B3
>00693793    jno         0069379A
 00693795    call        @IntOver
 0069379A    lea         edi,[edi+ecx*2]
 0069379D    movzx       ecx,al
 006937A0    dec         ecx
 006937A1    cmp         ecx,9E
>006937A7    jbe         006937AE
 006937A9    call        @BoundErr
 006937AE    inc         ecx
 006937AF    imul        ecx,ecx,6D
>006937B2    jno         006937B9
 006937B4    call        @IntOver
 006937B9    cmp         byte ptr [edi+ecx*2-0CB],0
>006937C1    je          00693869
 006937C7    movzx       ecx,byte ptr [esp+4]
 006937CC    cmp         ecx,7
>006937CF    jbe         006937D6
 006937D1    call        @BoundErr
 006937D6    imul        ecx,ecx,43B3
>006937DC    jno         006937E3
 006937DE    call        @IntOver
 006937E3    lea         ecx,[esi+ecx*4]
 006937E6    movzx       ebx,dl
 006937E9    cmp         ebx,1
>006937EC    jbe         006937F3
 006937EE    call        @BoundErr
 006937F3    imul        ebp,ebx,43B3
>006937F9    jno         00693800
 006937FB    call        @IntOver
 00693800    lea         ecx,[ecx+ebp*2]
 00693803    movzx       ebx,al
 00693806    dec         ebx
 00693807    cmp         ebx,9E
>0069380D    jbe         00693814
 0069380F    call        @BoundErr
 00693814    inc         ebx
 00693815    imul        edi,ebx,6D
>00693818    jno         0069381F
 0069381A    call        @IntOver
 0069381F    movzx       ecx,byte ptr [ecx+edi*2-0D1]
 00693827    add         ecx,dword ptr [esp]
>0069382A    jno         00693831
 0069382C    call        @IntOver
 00693831    cmp         ecx,0FF
>00693837    jbe         0069383E
 00693839    call        @BoundErr
 0069383E    push        ecx
 0069383F    movzx       ecx,byte ptr [esp+8]
 00693844    cmp         ecx,7
>00693847    jbe         0069384E
 00693849    call        @BoundErr
 0069384E    imul        ecx,ecx,43B3
>00693854    jno         0069385B
 00693856    call        @IntOver
 0069385B    lea         ecx,[esi+ecx*4]
 0069385E    lea         ecx,[ecx+ebp*2]
 00693861    pop         ebx
 00693862    mov         byte ptr [ecx+edi*2-0D1],bl
 00693869    inc         eax
 0069386A    cmp         al,0A0
>0069386C    jne         006936ED
 00693872    inc         edx
 00693873    cmp         dl,2
>00693876    jne         006936EB
 0069387C    inc         byte ptr [esp+4]
 00693880    cmp         byte ptr [esp+4],8
>00693885    jne         006936C9
 0069388B    pop         ecx
 0069388C    pop         edx
 0069388D    pop         ebp
 0069388E    pop         edi
 0069388F    pop         esi
 00693890    pop         ebx
 00693891    ret
*}
end;

//00693894
function TFXPAD.FXMoveTempADataToAData(loop:Byte):Boolean;
begin
{*
 00693894    push        ebx
 00693895    push        esi
 00693896    push        edi
 00693897    add         esp,0FFFFFFF4
 0069389A    mov         dword ptr [esp],eax
 0069389D    mov         byte ptr [esp+4],0
 006938A2    mov         byte ptr [esp+5],0
 006938A7    mov         dword ptr [esp+8],858022
 006938AF    mov         al,1
 006938B1    mov         ecx,dword ptr [esp+8]
 006938B5    mov         ebx,ecx
 006938B7    movzx       ecx,dl
 006938BA    cmp         ecx,7
>006938BD    jbe         006938C4
 006938BF    call        @BoundErr
 006938C4    imul        ecx,ecx,43B3
>006938CA    jno         006938D1
 006938CC    call        @IntOver
 006938D1    mov         esi,dword ptr [esp]
 006938D4    lea         ecx,[esi+ecx*4]
 006938D7    push        ecx
 006938D8    movzx       ecx,byte ptr [esp+9]
 006938DD    cmp         ecx,1
>006938E0    jbe         006938E7
 006938E2    call        @BoundErr
 006938E7    imul        ecx,ecx,43B3
>006938ED    jno         006938F4
 006938EF    call        @IntOver
 006938F4    pop         esi
 006938F5    lea         ecx,[esi+ecx*2]
 006938F8    push        ecx
 006938F9    movzx       ecx,al
 006938FC    dec         ecx
 006938FD    cmp         ecx,9E
>00693903    jbe         0069390A
 00693905    call        @BoundErr
 0069390A    inc         ecx
 0069390B    imul        ecx,ecx,6D
>0069390E    jno         00693915
 00693910    call        @IntOver
 00693915    pop         esi
 00693916    lea         edi,[esi+ecx*2-0D6]
 0069391D    movzx       ecx,dl
 00693920    cmp         ecx,7
>00693923    jbe         0069392A
 00693925    call        @BoundErr
 0069392A    imul        esi,ecx,43B3
>00693930    jno         00693937
 00693932    call        @IntOver
 00693937    movzx       ecx,byte ptr [ebx+esi*4-0D6]
 0069393F    cmp         cl,byte ptr [edi+4]
>00693942    jne         00693A8C
 00693948    movzx       ecx,byte ptr [ebx+esi*4-0D5]
 00693950    cmp         cl,byte ptr [edi+5]
>00693953    jne         00693A8C
 00693959    movzx       ecx,word ptr [ebx+esi*4-0D4]
 00693961    cmp         cx,word ptr [edi+6]
>00693965    jne         00693A8C
 0069396B    movzx       ecx,word ptr [ebx+esi*4-0D2]
 00693973    cmp         cx,word ptr [edi+8]
>00693977    jne         00693A8C
 0069397D    movzx       ecx,byte ptr [ebx+esi*4-0D0]
 00693985    cmp         cl,byte ptr [edi+0A]
>00693988    jne         00693A8C
 0069398E    movzx       ecx,byte ptr [ebx+esi*4-0CF]
 00693996    cmp         cl,byte ptr [edi+0B]
>00693999    jne         00693A8C
 0069399F    movzx       ecx,word ptr [ebx+esi*4-0CE]
 006939A7    cmp         cx,word ptr [edi+0C]
>006939AB    jne         00693A8C
 006939B1    movzx       ecx,word ptr [ebx+esi*4-0CC]
 006939B9    cmp         cx,word ptr [edi+0E]
>006939BD    jne         00693A8C
 006939C3    movzx       ecx,word ptr [ebx+esi*4-0CA]
 006939CB    cmp         cx,word ptr [edi+10]
>006939CF    jne         00693A8C
 006939D5    movzx       ecx,word ptr [ebx+esi*4-0C8]
 006939DD    cmp         cx,word ptr [edi+12]
>006939E1    jne         00693A8C
 006939E7    movzx       ecx,word ptr [ebx+esi*4-0C6]
 006939EF    cmp         cx,word ptr [edi+14]
>006939F3    jne         00693A8C
 006939F9    movzx       ecx,byte ptr [ebx+esi*4-0C4]
 00693A01    cmp         cl,byte ptr [edi+16]
>00693A04    jne         00693A8C
 00693A0A    movzx       ecx,byte ptr [ebx+esi*4-0C3]
 00693A12    cmp         cl,byte ptr [edi+17]
>00693A15    jne         00693A8C
 00693A17    movzx       ecx,byte ptr [ebx+esi*4-0C2]
 00693A1F    cmp         cl,byte ptr [edi+18]
>00693A22    jne         00693A8C
 00693A24    movzx       ecx,byte ptr [ebx+esi*4-0C1]
 00693A2C    cmp         cl,byte ptr [edi+19]
>00693A2F    jne         00693A8C
 00693A31    movzx       ecx,byte ptr [ebx+esi*4-0C0]
 00693A39    cmp         cl,byte ptr [edi+1A]
>00693A3C    jne         00693A8C
 00693A3E    movzx       ecx,byte ptr [ebx+esi*4-0BF]
 00693A46    cmp         cl,byte ptr [edi+1B]
>00693A49    jne         00693A8C
 00693A4B    movzx       ecx,byte ptr [ebx+esi*4-0BC]
 00693A53    cmp         cl,byte ptr [edi+1E]
>00693A56    jne         00693A8C
 00693A58    movzx       ecx,byte ptr [ebx+esi*4-0BB]
 00693A60    cmp         cl,byte ptr [edi+1F]
>00693A63    jne         00693A8C
 00693A65    movzx       ecx,byte ptr [ebx+esi*4-0B9]
 00693A6D    cmp         cl,byte ptr [edi+21]
>00693A70    jne         00693A8C
 00693A72    movzx       ecx,byte ptr [ebx+esi*4-0B8]
 00693A7A    cmp         cl,byte ptr [edi+22]
>00693A7D    jne         00693A8C
 00693A7F    movzx       ecx,byte ptr [ebx+esi*4-0BA]
 00693A87    cmp         cl,byte ptr [edi+20]
>00693A8A    je          00693A91
 00693A8C    mov         byte ptr [esp+4],1
 00693A91    mov         ecx,dword ptr [esp]
 00693A94    lea         ecx,[ecx+esi*4]
 00693A97    push        ecx
 00693A98    movzx       ecx,byte ptr [esp+9]
 00693A9D    cmp         ecx,1
>00693AA0    jbe         00693AA7
 00693AA2    call        @BoundErr
 00693AA7    imul        ecx,ecx,43B3
>00693AAD    jno         00693AB4
 00693AAF    call        @IntOver
 00693AB4    pop         edi
 00693AB5    lea         ecx,[edi+ecx*2]
 00693AB8    push        ecx
 00693AB9    movzx       ecx,al
 00693ABC    dec         ecx
 00693ABD    cmp         ecx,9E
>00693AC3    jbe         00693ACA
 00693AC5    call        @BoundErr
 00693ACA    inc         ecx
 00693ACB    imul        ecx,ecx,6D
>00693ACE    jno         00693AD5
 00693AD0    call        @IntOver
 00693AD5    pop         edi
 00693AD6    lea         ecx,[edi+ecx*2-0D6]
 00693ADD    push        ecx
 00693ADE    pop         edi
 00693ADF    lea         esi,[ebx+esi*4-0DA]
 00693AE6    mov         ecx,36
 00693AEB    rep movs    dword ptr [edi],dword ptr [esi]
 00693AED    movs        word ptr [edi],word ptr [esi]
 00693AEF    inc         eax
 00693AF0    add         ebx,0DA
 00693AF6    cmp         al,0A0
>00693AF8    jne         006938B7
 00693AFE    inc         byte ptr [esp+5]
 00693B02    add         dword ptr [esp+8],8766
 00693B0A    cmp         byte ptr [esp+5],2
>00693B0F    jne         006938AF
 00693B15    movzx       eax,byte ptr ds:[8DF5A8];gvar_008DF5A8
 00693B1C    or          al,byte ptr [esp+4]
 00693B20    mov         [008DF5A8],al;gvar_008DF5A8
 00693B25    movzx       eax,byte ptr [esp+4]
 00693B2A    add         esp,0C
 00693B2D    pop         edi
 00693B2E    pop         esi
 00693B2F    pop         ebx
 00693B30    ret
*}
end;

//00693B34
procedure TFXPAD.FXMoveADataToTempAData(loop:Byte);
begin
{*
 00693B34    push        ebx
 00693B35    push        esi
 00693B36    push        edi
 00693B37    add         esp,0FFFFFFF4
 00693B3A    mov         dword ptr [esp],eax
 00693B3D    mov         byte ptr [esp+4],0
 00693B42    mov         dword ptr [esp+8],858022
 00693B4A    mov         al,1
 00693B4C    mov         ecx,dword ptr [esp+8]
 00693B50    mov         ebx,ecx
 00693B52    movzx       ecx,dl
 00693B55    cmp         ecx,7
>00693B58    jbe         00693B5F
 00693B5A    call        @BoundErr
 00693B5F    imul        esi,ecx,43B3
>00693B65    jno         00693B6C
 00693B67    call        @IntOver
 00693B6C    mov         ecx,dword ptr [esp]
 00693B6F    lea         ecx,[ecx+esi*4]
 00693B72    push        ecx
 00693B73    movzx       ecx,byte ptr [esp+8]
 00693B78    cmp         ecx,1
>00693B7B    jbe         00693B82
 00693B7D    call        @BoundErr
 00693B82    imul        ecx,ecx,43B3
>00693B88    jno         00693B8F
 00693B8A    call        @IntOver
 00693B8F    pop         edi
 00693B90    lea         ecx,[edi+ecx*2]
 00693B93    push        ecx
 00693B94    movzx       ecx,al
 00693B97    dec         ecx
 00693B98    cmp         ecx,9E
>00693B9E    jbe         00693BA5
 00693BA0    call        @BoundErr
 00693BA5    inc         ecx
 00693BA6    imul        ecx,ecx,6D
>00693BA9    jno         00693BB0
 00693BAB    call        @IntOver
 00693BB0    pop         edi
 00693BB1    lea         ecx,[edi+ecx*2-0D6]
 00693BB8    push        ecx
 00693BB9    pop         ecx
 00693BBA    lea         edi,[ebx+esi*4-0DA]
 00693BC1    mov         esi,ecx
 00693BC3    mov         ecx,36
 00693BC8    rep movs    dword ptr [edi],dword ptr [esi]
 00693BCA    movs        word ptr [edi],word ptr [esi]
 00693BCC    inc         eax
 00693BCD    add         ebx,0DA
 00693BD3    cmp         al,0A0
>00693BD5    jne         00693B52
 00693BDB    inc         byte ptr [esp+4]
 00693BDF    add         dword ptr [esp+8],8766
 00693BE7    cmp         byte ptr [esp+4],2
>00693BEC    jne         00693B4A
 00693BF2    add         esp,0C
 00693BF5    pop         edi
 00693BF6    pop         esi
 00693BF7    pop         ebx
 00693BF8    ret
*}
end;

//00693BFC
procedure TFXPAD.InitFXAPDataOfLoop(loop:Byte; LoopType:Byte);
begin
{*
 00693BFC    push        ebx
 00693BFD    push        esi
 00693BFE    push        edi
 00693BFF    push        ebp
 00693C00    push        ecx
 00693C01    mov         byte ptr [esp+1],cl
 00693C05    mov         byte ptr [esp],dl
 00693C08    mov         esi,eax
 00693C0A    mov         byte ptr [esp+2],0
 00693C0F    mov         bl,1
 00693C11    movzx       eax,byte ptr [esp]
 00693C15    cmp         eax,7
>00693C18    jbe         00693C1F
 00693C1A    call        @BoundErr
 00693C1F    imul        eax,eax,43B3
>00693C25    jno         00693C2C
 00693C27    call        @IntOver
 00693C2C    lea         eax,[esi+eax*4]
 00693C2F    movzx       edx,byte ptr [esp+2]
 00693C34    cmp         edx,1
>00693C37    jbe         00693C3E
 00693C39    call        @BoundErr
 00693C3E    imul        edx,edx,43B3
>00693C44    jno         00693C4B
 00693C46    call        @IntOver
 00693C4B    lea         edi,[eax+edx*2]
 00693C4E    movzx       eax,bl
 00693C51    dec         eax
 00693C52    cmp         eax,9E
>00693C57    jbe         00693C5E
 00693C59    call        @BoundErr
 00693C5E    inc         eax
 00693C5F    imul        eax,eax,6D
>00693C62    jno         00693C69
 00693C64    call        @IntOver
 00693C69    lea         eax,[edi+eax*2-0D6]
 00693C70    xor         ecx,ecx
 00693C72    mov         edx,0DA
 00693C77    call        @FillChar
 00693C7C    inc         ebx
 00693C7D    cmp         bl,0A0
>00693C80    jne         00693C11
 00693C82    inc         byte ptr [esp+2]
 00693C86    cmp         byte ptr [esp+2],2
>00693C8B    jne         00693C0F
 00693C8D    movzx       eax,byte ptr [esp+1]
 00693C92    cmp         eax,6
>00693C95    ja          006942D6
 00693C9B    jmp         dword ptr [eax*4+693CA2]
 00693C9B    dd          006942D6
 00693C9B    dd          00694088
 00693C9B    dd          006941C7
 00693C9B    dd          00693F74
 00693C9B    dd          00693CBE
 00693C9B    dd          00693F74
 00693C9B    dd          00693E19
 00693CBE    mov         byte ptr [esp+2],0
 00693CC3    mov         bl,1
 00693CC5    movzx       eax,byte ptr [esp]
 00693CC9    cmp         eax,7
>00693CCC    jbe         00693CD3
 00693CCE    call        @BoundErr
 00693CD3    imul        eax,eax,43B3
>00693CD9    jno         00693CE0
 00693CDB    call        @IntOver
 00693CE0    lea         eax,[esi+eax*4]
 00693CE3    movzx       edx,byte ptr [esp+2]
 00693CE8    cmp         edx,1
>00693CEB    jbe         00693CF2
 00693CED    call        @BoundErr
 00693CF2    imul        ebp,edx,43B3
>00693CF8    jno         00693CFF
 00693CFA    call        @IntOver
 00693CFF    lea         eax,[eax+ebp*2]
 00693D02    movzx       edx,bl
 00693D05    dec         edx
 00693D06    cmp         edx,9E
>00693D0C    jbe         00693D13
 00693D0E    call        @BoundErr
 00693D13    inc         edx
 00693D14    imul        edi,edx,6D
>00693D17    jno         00693D1E
 00693D19    call        @IntOver
 00693D1E    movzx       edx,byte ptr [esp]
 00693D22    mov         byte ptr [eax+edi*2-0D4],dl
 00693D29    movzx       eax,byte ptr [esp]
 00693D2D    cmp         eax,7
>00693D30    jbe         00693D37
 00693D32    call        @BoundErr
 00693D37    imul        eax,eax,43B3
>00693D3D    jno         00693D44
 00693D3F    call        @IntOver
 00693D44    lea         eax,[esi+eax*4]
 00693D47    lea         eax,[eax+ebp*2]
 00693D4A    mov         byte ptr [eax+edi*2-0D3],bl
 00693D51    movzx       eax,byte ptr [esp+2]
 00693D56    mov         edx,0C8
 00693D5B    mul         eax,edx
>00693D5D    jno         00693D64
 00693D5F    call        @IntOver
 00693D64    cmp         eax,0FF
>00693D69    jbe         00693D70
 00693D6B    call        @BoundErr
 00693D70    movzx       edx,byte ptr [esp]
 00693D74    cmp         edx,7
>00693D77    jbe         00693D7E
 00693D79    call        @BoundErr
 00693D7E    imul        edx,edx,43B3
>00693D84    jno         00693D8B
 00693D86    call        @IntOver
 00693D8B    lea         edx,[esi+edx*4]
 00693D8E    lea         edx,[edx+ebp*2]
 00693D91    mov         byte ptr [edx+edi*2-0D2],al
 00693D98    push        ebx
 00693D99    movzx       ecx,byte ptr [esp+6]
 00693D9E    movzx       edx,byte ptr [esp+4]
 00693DA3    mov         eax,esi
 00693DA5    call        TFXPAD.GenDefaultZone
 00693DAA    movzx       edx,byte ptr [esp]
 00693DAE    cmp         edx,7
>00693DB1    jbe         00693DB8
 00693DB3    call        @BoundErr
 00693DB8    imul        edx,edx,43B3
>00693DBE    jno         00693DC5
 00693DC0    call        @IntOver
 00693DC5    lea         edx,[esi+edx*4]
 00693DC8    lea         edx,[edx+ebp*2]
 00693DCB    mov         byte ptr [edx+edi*2-0D1],al
 00693DD2    movzx       eax,byte ptr [esp]
 00693DD6    cmp         eax,7
>00693DD9    jbe         00693DE0
 00693DDB    call        @BoundErr
 00693DE0    imul        eax,eax,43B3
>00693DE6    jno         00693DED
 00693DE8    call        @IntOver
 00693DED    lea         eax,[esi+eax*4]
 00693DF0    lea         eax,[eax+ebp*2]
 00693DF3    mov         byte ptr [eax+edi*2-0B6],4
 00693DFB    inc         ebx
 00693DFC    cmp         bl,0A0
>00693DFF    jne         00693CC5
 00693E05    inc         byte ptr [esp+2]
 00693E09    cmp         byte ptr [esp+2],2
>00693E0E    jne         00693CC3
>00693E14    jmp         006942D6
 00693E19    mov         byte ptr [esp+2],0
 00693E1E    mov         bl,1
 00693E20    movzx       eax,byte ptr [esp]
 00693E24    cmp         eax,7
>00693E27    jbe         00693E2E
 00693E29    call        @BoundErr
 00693E2E    imul        eax,eax,43B3
>00693E34    jno         00693E3B
 00693E36    call        @IntOver
 00693E3B    lea         eax,[esi+eax*4]
 00693E3E    movzx       edx,byte ptr [esp+2]
 00693E43    cmp         edx,1
>00693E46    jbe         00693E4D
 00693E48    call        @BoundErr
 00693E4D    imul        ebp,edx,43B3
>00693E53    jno         00693E5A
 00693E55    call        @IntOver
 00693E5A    lea         eax,[eax+ebp*2]
 00693E5D    movzx       edx,bl
 00693E60    dec         edx
 00693E61    cmp         edx,9E
>00693E67    jbe         00693E6E
 00693E69    call        @BoundErr
 00693E6E    inc         edx
 00693E6F    imul        edi,edx,6D
>00693E72    jno         00693E79
 00693E74    call        @IntOver
 00693E79    movzx       edx,byte ptr [esp]
 00693E7D    mov         byte ptr [eax+edi*2-0D4],dl
 00693E84    movzx       eax,byte ptr [esp]
 00693E88    cmp         eax,7
>00693E8B    jbe         00693E92
 00693E8D    call        @BoundErr
 00693E92    imul        eax,eax,43B3
>00693E98    jno         00693E9F
 00693E9A    call        @IntOver
 00693E9F    lea         eax,[esi+eax*4]
 00693EA2    lea         eax,[eax+ebp*2]
 00693EA5    mov         byte ptr [eax+edi*2-0D3],bl
 00693EAC    movzx       eax,byte ptr [esp+2]
 00693EB1    mov         edx,0C8
 00693EB6    mul         eax,edx
>00693EB8    jno         00693EBF
 00693EBA    call        @IntOver
 00693EBF    cmp         eax,0FF
>00693EC4    jbe         00693ECB
 00693EC6    call        @BoundErr
 00693ECB    movzx       edx,byte ptr [esp]
 00693ECF    cmp         edx,7
>00693ED2    jbe         00693ED9
 00693ED4    call        @BoundErr
 00693ED9    imul        edx,edx,43B3
>00693EDF    jno         00693EE6
 00693EE1    call        @IntOver
 00693EE6    lea         edx,[esi+edx*4]
 00693EE9    lea         edx,[edx+ebp*2]
 00693EEC    mov         byte ptr [edx+edi*2-0D2],al
 00693EF3    push        ebx
 00693EF4    movzx       ecx,byte ptr [esp+6]
 00693EF9    movzx       edx,byte ptr [esp+4]
 00693EFE    mov         eax,esi
 00693F00    call        TFXPAD.GenDefaultZone
 00693F05    movzx       edx,byte ptr [esp]
 00693F09    cmp         edx,7
>00693F0C    jbe         00693F13
 00693F0E    call        @BoundErr
 00693F13    imul        edx,edx,43B3
>00693F19    jno         00693F20
 00693F1B    call        @IntOver
 00693F20    lea         edx,[esi+edx*4]
 00693F23    lea         edx,[edx+ebp*2]
 00693F26    mov         byte ptr [edx+edi*2-0D1],al
 00693F2D    movzx       eax,byte ptr [esp]
 00693F31    cmp         eax,7
>00693F34    jbe         00693F3B
 00693F36    call        @BoundErr
 00693F3B    imul        eax,eax,43B3
>00693F41    jno         00693F48
 00693F43    call        @IntOver
 00693F48    lea         eax,[esi+eax*4]
 00693F4B    lea         eax,[eax+ebp*2]
 00693F4E    mov         byte ptr [eax+edi*2-0B6],4
 00693F56    inc         ebx
 00693F57    cmp         bl,0A0
>00693F5A    jne         00693E20
 00693F60    inc         byte ptr [esp+2]
 00693F64    cmp         byte ptr [esp+2],2
>00693F69    jne         00693E1E
>00693F6F    jmp         006942D6
 00693F74    mov         byte ptr [esp+2],0
 00693F79    mov         bl,1
 00693F7B    movzx       eax,byte ptr [esp]
 00693F7F    cmp         eax,7
>00693F82    jbe         00693F89
 00693F84    call        @BoundErr
 00693F89    imul        eax,eax,43B3
>00693F8F    jno         00693F96
 00693F91    call        @IntOver
 00693F96    lea         eax,[esi+eax*4]
 00693F99    movzx       edx,byte ptr [esp+2]
 00693F9E    cmp         edx,1
>00693FA1    jbe         00693FA8
 00693FA3    call        @BoundErr
 00693FA8    imul        ebp,edx,43B3
>00693FAE    jno         00693FB5
 00693FB0    call        @IntOver
 00693FB5    lea         eax,[eax+ebp*2]
 00693FB8    movzx       edx,bl
 00693FBB    dec         edx
 00693FBC    cmp         edx,9E
>00693FC2    jbe         00693FC9
 00693FC4    call        @BoundErr
 00693FC9    inc         edx
 00693FCA    imul        edi,edx,6D
>00693FCD    jno         00693FD4
 00693FCF    call        @IntOver
 00693FD4    movzx       edx,byte ptr [esp]
 00693FD8    mov         byte ptr [eax+edi*2-0D4],dl
 00693FDF    movzx       eax,byte ptr [esp]
 00693FE3    cmp         eax,7
>00693FE6    jbe         00693FED
 00693FE8    call        @BoundErr
 00693FED    imul        eax,eax,43B3
>00693FF3    jno         00693FFA
 00693FF5    call        @IntOver
 00693FFA    lea         eax,[esi+eax*4]
 00693FFD    lea         eax,[eax+ebp*2]
 00694000    mov         byte ptr [eax+edi*2-0D3],bl
 00694007    push        ebx
 00694008    movzx       ecx,byte ptr [esp+6]
 0069400D    movzx       edx,byte ptr [esp+4]
 00694012    mov         eax,esi
 00694014    call        TFXPAD.GenDefaultZone
 00694019    movzx       edx,byte ptr [esp]
 0069401D    cmp         edx,7
>00694020    jbe         00694027
 00694022    call        @BoundErr
 00694027    imul        edx,edx,43B3
>0069402D    jno         00694034
 0069402F    call        @IntOver
 00694034    lea         edx,[esi+edx*4]
 00694037    lea         edx,[edx+ebp*2]
 0069403A    mov         byte ptr [edx+edi*2-0D1],al
 00694041    movzx       eax,byte ptr [esp]
 00694045    cmp         eax,7
>00694048    jbe         0069404F
 0069404A    call        @BoundErr
 0069404F    imul        eax,eax,43B3
>00694055    jno         0069405C
 00694057    call        @IntOver
 0069405C    lea         eax,[esi+eax*4]
 0069405F    lea         eax,[eax+ebp*2]
 00694062    mov         byte ptr [eax+edi*2-0B6],2
 0069406A    inc         ebx
 0069406B    cmp         bl,7F
>0069406E    jne         00693F7B
 00694074    inc         byte ptr [esp+2]
 00694078    cmp         byte ptr [esp+2],1
>0069407D    jne         00693F79
>00694083    jmp         006942D6
 00694088    mov         byte ptr [esp+2],0
 0069408D    mov         bl,1
 0069408F    movzx       eax,byte ptr [esp]
 00694093    cmp         eax,7
>00694096    jbe         0069409D
 00694098    call        @BoundErr
 0069409D    imul        eax,eax,43B3
>006940A3    jno         006940AA
 006940A5    call        @IntOver
 006940AA    lea         eax,[esi+eax*4]
 006940AD    movzx       edx,byte ptr [esp+2]
 006940B2    cmp         edx,1
>006940B5    jbe         006940BC
 006940B7    call        @BoundErr
 006940BC    imul        ebp,edx,43B3
>006940C2    jno         006940C9
 006940C4    call        @IntOver
 006940C9    lea         eax,[eax+ebp*2]
 006940CC    movzx       edx,bl
 006940CF    dec         edx
 006940D0    cmp         edx,9E
>006940D6    jbe         006940DD
 006940D8    call        @BoundErr
 006940DD    inc         edx
 006940DE    imul        edi,edx,6D
>006940E1    jno         006940E8
 006940E3    call        @IntOver
 006940E8    movzx       edx,byte ptr [esp]
 006940EC    mov         byte ptr [eax+edi*2-0D4],dl
 006940F3    movzx       eax,byte ptr [esp+2]
 006940F8    mov         edx,64
 006940FD    mul         eax,edx
>006940FF    jno         00694106
 00694101    call        @IntOver
 00694106    movzx       edx,bl
 00694109    add         eax,edx
>0069410B    jno         00694112
 0069410D    call        @IntOver
 00694112    cmp         eax,0FF
>00694117    jbe         0069411E
 00694119    call        @BoundErr
 0069411E    movzx       edx,byte ptr [esp]
 00694122    cmp         edx,7
>00694125    jbe         0069412C
 00694127    call        @BoundErr
 0069412C    imul        edx,edx,43B3
>00694132    jno         00694139
 00694134    call        @IntOver
 00694139    lea         edx,[esi+edx*4]
 0069413C    lea         edx,[edx+ebp*2]
 0069413F    mov         byte ptr [edx+edi*2-0D3],al
 00694146    push        ebx
 00694147    movzx       ecx,byte ptr [esp+6]
 0069414C    movzx       edx,byte ptr [esp+4]
 00694151    mov         eax,esi
 00694153    call        TFXPAD.GenDefaultZone
 00694158    movzx       edx,byte ptr [esp]
 0069415C    cmp         edx,7
>0069415F    jbe         00694166
 00694161    call        @BoundErr
 00694166    imul        edx,edx,43B3
>0069416C    jno         00694173
 0069416E    call        @IntOver
 00694173    lea         edx,[esi+edx*4]
 00694176    lea         edx,[edx+ebp*2]
 00694179    mov         byte ptr [edx+edi*2-0D1],al
 00694180    movzx       eax,byte ptr [esp]
 00694184    cmp         eax,7
>00694187    jbe         0069418E
 00694189    call        @BoundErr
 0069418E    imul        eax,eax,43B3
>00694194    jno         0069419B
 00694196    call        @IntOver
 0069419B    lea         eax,[esi+eax*4]
 0069419E    lea         eax,[eax+ebp*2]
 006941A1    mov         byte ptr [eax+edi*2-0B6],1
 006941A9    inc         ebx
 006941AA    cmp         bl,64
>006941AD    jne         0069408F
 006941B3    inc         byte ptr [esp+2]
 006941B7    cmp         byte ptr [esp+2],2
>006941BC    jne         0069408D
>006941C2    jmp         006942D6
 006941C7    mov         byte ptr [esp+2],0
 006941CC    mov         bl,1
 006941CE    movzx       eax,byte ptr [esp]
 006941D2    cmp         eax,7
>006941D5    jbe         006941DC
 006941D7    call        @BoundErr
 006941DC    imul        eax,eax,43B3
>006941E2    jno         006941E9
 006941E4    call        @IntOver
 006941E9    lea         eax,[esi+eax*4]
 006941EC    movzx       edx,byte ptr [esp+2]
 006941F1    cmp         edx,1
>006941F4    jbe         006941FB
 006941F6    call        @BoundErr
 006941FB    imul        ebp,edx,43B3
>00694201    jno         00694208
 00694203    call        @IntOver
 00694208    lea         eax,[eax+ebp*2]
 0069420B    movzx       edx,bl
 0069420E    dec         edx
 0069420F    cmp         edx,9E
>00694215    jbe         0069421C
 00694217    call        @BoundErr
 0069421C    inc         edx
 0069421D    imul        edi,edx,6D
>00694220    jno         00694227
 00694222    call        @IntOver
 00694227    movzx       edx,byte ptr [esp]
 0069422B    mov         byte ptr [eax+edi*2-0D4],dl
 00694232    movzx       eax,byte ptr [esp]
 00694236    cmp         eax,7
>00694239    jbe         00694240
 0069423B    call        @BoundErr
 00694240    imul        eax,eax,43B3
>00694246    jno         0069424D
 00694248    call        @IntOver
 0069424D    lea         eax,[esi+eax*4]
 00694250    lea         eax,[eax+ebp*2]
 00694253    mov         byte ptr [eax+edi*2-0D3],bl
 0069425A    push        ebx
 0069425B    movzx       ecx,byte ptr [esp+6]
 00694260    movzx       edx,byte ptr [esp+4]
 00694265    mov         eax,esi
 00694267    call        TFXPAD.GenDefaultZone
 0069426C    movzx       edx,byte ptr [esp]
 00694270    cmp         edx,7
>00694273    jbe         0069427A
 00694275    call        @BoundErr
 0069427A    imul        edx,edx,43B3
>00694280    jno         00694287
 00694282    call        @IntOver
 00694287    lea         edx,[esi+edx*4]
 0069428A    lea         edx,[edx+ebp*2]
 0069428D    mov         byte ptr [edx+edi*2-0D1],al
 00694294    movzx       eax,byte ptr [esp]
 00694298    cmp         eax,7
>0069429B    jbe         006942A2
 0069429D    call        @BoundErr
 006942A2    imul        eax,eax,43B3
>006942A8    jno         006942AF
 006942AA    call        @IntOver
 006942AF    lea         eax,[esi+eax*4]
 006942B2    lea         eax,[eax+ebp*2]
 006942B5    mov         byte ptr [eax+edi*2-0B6],3
 006942BD    inc         ebx
 006942BE    cmp         bl,11
>006942C1    jne         006941CE
 006942C7    inc         byte ptr [esp+2]
 006942CB    cmp         byte ptr [esp+2],1
>006942D0    jne         006941CC
 006942D6    pop         edx
 006942D7    pop         ebp
 006942D8    pop         edi
 006942D9    pop         esi
 006942DA    pop         ebx
 006942DB    ret
*}
end;

//006942DC
procedure TFXPAD.InitFXAData;
begin
{*
 006942DC    mov         byte ptr ds:[8DF5A8],0;gvar_008DF5A8
 006942E3    ret
*}
end;

//006942E4
{*procedure TFXPAD.APTypeAsStr(loopid:Word; address:Word; ?:?);
begin
 006942E4    push        ebp
 006942E5    mov         ebp,esp
 006942E7    push        ecx
 006942E8    push        ebx
 006942E9    push        esi
 006942EA    push        edi
 006942EB    mov         edi,ecx
 006942ED    mov         ebx,edx
 006942EF    mov         esi,eax
 006942F1    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 006942F7    call        006A3430
 006942FC    movzx       eax,al
 006942FF    movzx       edx,bx
 00694302    sub         edx,eax
>00694304    jno         0069430B
 00694306    call        @IntOver
 0069430B    cmp         edx,0FF
>00694311    jbe         00694318
 00694313    call        @BoundErr
 00694318    mov         ebx,edx
 0069431A    movzx       edx,bl
 0069431D    mov         eax,dword ptr [esi+87668];TFXPAD.PD:TFXPPD
 00694323    call        TFXPPD.GetControllerLoopType
 00694328    cmp         eax,0FF
>0069432D    jbe         00694334
 0069432F    call        @BoundErr
 00694334    movzx       eax,al
 00694337    cmp         eax,6
>0069433A    ja          00694684
 00694340    jmp         dword ptr [eax*4+694347]
 00694340    dd          00694684
 00694340    dd          006945C0
 00694340    dd          00694408
 00694340    dd          00694363
 00694340    dd          006944A7
 00694340    dd          00694363
 00694340    dd          006944A7
 00694363    mov         byte ptr [ebp-2],0
 00694367    movzx       eax,di
 0069436A    cmp         eax,0FF
>0069436F    jbe         00694376
 00694371    call        @BoundErr
 00694376    mov         byte ptr [ebp-1],al
 00694379    movzx       eax,byte ptr [ebp-2]
 0069437D    cmp         eax,1
>00694380    jbe         00694387
 00694382    call        @BoundErr
 00694387    imul        eax,eax,43B3
>0069438D    jno         00694394
 0069438F    call        @IntOver
 00694394    movzx       edx,bl
 00694397    cmp         edx,7
>0069439A    jbe         006943A1
 0069439C    call        @BoundErr
 006943A1    imul        edx,edx,43B3
>006943A7    jno         006943AE
 006943A9    call        @IntOver
 006943AE    lea         edx,[esi+edx*4]
 006943B1    lea         eax,[edx+eax*2]
 006943B4    movzx       edx,byte ptr [ebp-1]
 006943B8    dec         edx
 006943B9    cmp         edx,9E
>006943BF    jbe         006943C6
 006943C1    call        @BoundErr
 006943C6    inc         edx
 006943C7    imul        edx,edx,6D
>006943CA    jno         006943D1
 006943CC    call        @IntOver
 006943D1    movzx       edi,byte ptr [eax+edx*2-0CC]
 006943D9    movzx       eax,di
 006943DC    mov         edx,100
 006943E1    mul         eax,edx
 006943E3    mov         edx,eax
>006943E5    jno         006943EC
 006943E7    call        @IntOver
 006943EC    cmp         edx,0FFFF
>006943F2    jbe         006943F9
 006943F4    call        @BoundErr
 006943F9    mov         ecx,dword ptr [ebp+8]
 006943FC    mov         eax,esi
 006943FE    call        TFXPAD.ApoIntToType
>00694403    jmp         00694684
 00694408    mov         byte ptr [ebp-2],0
 0069440C    movzx       eax,di
 0069440F    cmp         eax,0FF
>00694414    jbe         0069441B
 00694416    call        @BoundErr
 0069441B    mov         byte ptr [ebp-1],al
 0069441E    movzx       eax,byte ptr [ebp-2]
 00694422    cmp         eax,1
>00694425    jbe         0069442C
 00694427    call        @BoundErr
 0069442C    imul        eax,eax,43B3
>00694432    jno         00694439
 00694434    call        @IntOver
 00694439    movzx       edx,bl
 0069443C    cmp         edx,7
>0069443F    jbe         00694446
 00694441    call        @BoundErr
 00694446    imul        edx,edx,43B3
>0069444C    jno         00694453
 0069444E    call        @IntOver
 00694453    lea         edx,[esi+edx*4]
 00694456    lea         eax,[edx+eax*2]
 00694459    movzx       edx,byte ptr [ebp-1]
 0069445D    dec         edx
 0069445E    cmp         edx,9E
>00694464    jbe         0069446B
 00694466    call        @BoundErr
 0069446B    inc         edx
 0069446C    imul        edx,edx,6D
>0069446F    jno         00694476
 00694471    call        @IntOver
 00694476    movzx       edx,byte ptr [eax+edx*2-0CB]
 0069447E    add         edx,100
>00694484    jno         0069448B
 00694486    call        @IntOver
 0069448B    cmp         edx,0FFFF
>00694491    jbe         00694498
 00694493    call        @BoundErr
 00694498    mov         ecx,dword ptr [ebp+8]
 0069449B    mov         eax,esi
 0069449D    call        TFXPAD.IntToCnv
>006944A2    jmp         00694684
 006944A7    movzx       ecx,di
 006944AA    mov         eax,ecx
 006944AC    push        ecx
 006944AD    mov         ecx,0C8
 006944B2    xor         edx,edx
 006944B4    div         eax,ecx
 006944B6    pop         ecx
 006944B7    cmp         eax,0FF
>006944BC    jbe         006944C3
 006944BE    call        @BoundErr
 006944C3    mov         byte ptr [ebp-2],al
 006944C6    mov         eax,ecx
 006944C8    mov         ecx,0C8
 006944CD    xor         edx,edx
 006944CF    div         eax,ecx
 006944D1    cmp         edx,0FF
>006944D7    jbe         006944DE
 006944D9    call        @BoundErr
 006944DE    mov         byte ptr [ebp-1],dl
 006944E1    movzx       eax,byte ptr [ebp-2]
 006944E5    cmp         eax,1
>006944E8    jbe         006944EF
 006944EA    call        @BoundErr
 006944EF    imul        eax,eax,43B3
>006944F5    jno         006944FC
 006944F7    call        @IntOver
 006944FC    movzx       edx,bl
 006944FF    cmp         edx,7
>00694502    jbe         00694509
 00694504    call        @BoundErr
 00694509    imul        edx,edx,43B3
>0069450F    jno         00694516
 00694511    call        @IntOver
 00694516    lea         edx,[esi+edx*4]
 00694519    lea         edi,[edx+eax*2]
 0069451C    movzx       eax,byte ptr [ebp-1]
 00694520    dec         eax
 00694521    cmp         eax,9E
>00694526    jbe         0069452D
 00694528    call        @BoundErr
 0069452D    inc         eax
 0069452E    imul        eax,eax,6D
>00694531    jno         00694538
 00694533    call        @IntOver
 00694538    movzx       edi,byte ptr [edi+eax*2-0CC]
 00694540    mov         eax,dword ptr [ebp+8]
 00694543    push        eax
 00694544    movzx       eax,byte ptr [ebp-2]
 00694548    cmp         eax,1
>0069454B    jbe         00694552
 0069454D    call        @BoundErr
 00694552    imul        eax,eax,43B3
>00694558    jno         0069455F
 0069455A    call        @IntOver
 0069455F    movzx       edx,bl
 00694562    cmp         edx,7
>00694565    jbe         0069456C
 00694567    call        @BoundErr
 0069456C    imul        edx,edx,43B3
>00694572    jno         00694579
 00694574    call        @IntOver
 00694579    lea         edx,[esi+edx*4]
 0069457C    lea         eax,[edx+eax*2]
 0069457F    movzx       edx,byte ptr [ebp-1]
 00694583    dec         edx
 00694584    cmp         edx,9E
>0069458A    jbe         00694591
 0069458C    call        @BoundErr
 00694591    inc         edx
 00694592    imul        edx,edx,6D
>00694595    jno         0069459C
 00694597    call        @IntOver
 0069459C    movzx       ecx,byte ptr [eax+edx*2-0CB]
 006945A4    movzx       edx,di
 006945A7    cmp         edx,0FF
>006945AD    jbe         006945B4
 006945AF    call        @BoundErr
 006945B4    mov         eax,esi
 006945B6    call        TFXPAD.SapIntToType
>006945BB    jmp         00694684
 006945C0    movzx       ecx,di
 006945C3    mov         eax,ecx
 006945C5    push        ecx
 006945C6    mov         ecx,64
 006945CB    xor         edx,edx
 006945CD    div         eax,ecx
 006945CF    pop         ecx
 006945D0    cmp         eax,0FF
>006945D5    jbe         006945DC
 006945D7    call        @BoundErr
 006945DC    mov         byte ptr [ebp-2],al
 006945DF    mov         eax,ecx
 006945E1    mov         ecx,64
 006945E6    xor         edx,edx
 006945E8    div         eax,ecx
 006945EA    cmp         edx,0FF
>006945F0    jbe         006945F7
 006945F2    call        @BoundErr
 006945F7    mov         byte ptr [ebp-1],dl
 006945FA    movzx       eax,byte ptr [ebp-2]
 006945FE    cmp         eax,1
>00694601    jbe         00694608
 00694603    call        @BoundErr
 00694608    imul        eax,eax,43B3
>0069460E    jno         00694615
 00694610    call        @IntOver
 00694615    movzx       edx,bl
 00694618    cmp         edx,7
>0069461B    jbe         00694622
 0069461D    call        @BoundErr
 00694622    imul        edx,edx,43B3
>00694628    jno         0069462F
 0069462A    call        @IntOver
 0069462F    lea         edx,[esi+edx*4]
 00694632    lea         eax,[edx+eax*2]
 00694635    movzx       edx,byte ptr [ebp-1]
 00694639    dec         edx
 0069463A    cmp         edx,9E
>00694640    jbe         00694647
 00694642    call        @BoundErr
 00694647    inc         edx
 00694648    imul        edx,edx,6D
>0069464B    jno         00694652
 0069464D    call        @IntOver
 00694652    movzx       edi,byte ptr [eax+edx*2-0CC]
 0069465A    movzx       eax,di
 0069465D    mov         edx,100
 00694662    mul         eax,edx
 00694664    mov         edx,eax
>00694666    jno         0069466D
 00694668    call        @IntOver
 0069466D    cmp         edx,0FFFF
>00694673    jbe         0069467A
 00694675    call        @BoundErr
 0069467A    mov         ecx,dword ptr [ebp+8]
 0069467D    mov         eax,esi
 0069467F    call        TFXPAD.SysIntToType
 00694684    pop         edi
 00694685    pop         esi
 00694686    pop         ebx
 00694687    pop         ecx
 00694688    pop         ebp
 00694689    ret         4
end;*}

//0069468C
procedure TFXPAD.ConvertLC_SYStoSAP_SYS(LoopIndex:Byte);
begin
{*
 0069468C    push        ebp
 0069468D    mov         ebp,esp
 0069468F    add         esp,0FFFFFF04
 00694695    push        ebx
 00694696    push        esi
 00694697    push        edi
 00694698    xor         ecx,ecx
 0069469A    mov         dword ptr [ebp-0EC],ecx
 006946A0    mov         byte ptr [ebp-5],dl
 006946A3    mov         dword ptr [ebp-4],eax
 006946A6    xor         eax,eax
 006946A8    push        ebp
 006946A9    push        694997
 006946AE    push        dword ptr fs:[eax]
 006946B1    mov         dword ptr fs:[eax],esp
 006946B4    mov         byte ptr [ebp-6],0
 006946B8    mov         bl,1
 006946BA    movzx       ecx,byte ptr [ebp-5]
 006946BE    cmp         ecx,7
>006946C1    jbe         006946C8
 006946C3    call        @BoundErr
 006946C8    imul        ecx,ecx,43B3
>006946CE    jno         006946D5
 006946D0    call        @IntOver
 006946D5    mov         esi,dword ptr [ebp-4]
 006946D8    lea         ecx,[esi+ecx*4]
 006946DB    push        ecx
 006946DC    movzx       eax,byte ptr [ebp-6]
 006946E0    cmp         eax,1
>006946E3    jbe         006946EA
 006946E5    call        @BoundErr
 006946EA    imul        edx,eax,43B3
>006946F0    jno         006946F7
 006946F2    call        @IntOver
 006946F7    pop         ecx
 006946F8    lea         ecx,[ecx+edx*2]
 006946FB    push        ecx
 006946FC    movzx       ecx,bl
 006946FF    dec         ecx
 00694700    cmp         ecx,9E
>00694706    jbe         0069470D
 00694708    call        @BoundErr
 0069470D    inc         ecx
 0069470E    imul        ecx,ecx,6D
>00694711    jno         00694718
 00694713    call        @IntOver
 00694718    pop         esi
 00694719    lea         esi,[esi+ecx*2-0D6]
 00694720    lea         edi,[ebp-0E6]
 00694726    mov         ecx,36
 0069472B    rep movs    dword ptr [edi],dword ptr [esi]
 0069472D    movs        word ptr [edi],word ptr [esi]
 0069472F    movzx       ecx,byte ptr [ebp-5]
 00694733    cmp         ecx,7
>00694736    jbe         0069473D
 00694738    call        @BoundErr
 0069473D    imul        ecx,ecx,43B3
>00694743    jno         0069474A
 00694745    call        @IntOver
 0069474A    mov         esi,dword ptr [ebp-4]
 0069474D    lea         ecx,[esi+ecx*4]
 00694750    push        ecx
 00694751    pop         ecx
 00694752    lea         edx,[ecx+edx*2]
 00694755    push        edx
 00694756    movzx       edx,bl
 00694759    dec         edx
 0069475A    cmp         edx,9E
>00694760    jbe         00694767
 00694762    call        @BoundErr
 00694767    inc         edx
 00694768    imul        edx,edx,6D
>0069476B    jno         00694772
 0069476D    call        @IntOver
 00694772    pop         ecx
 00694773    lea         esi,[ecx+edx*2-0D6]
 0069477A    movzx       edx,byte ptr [ebp-5]
 0069477E    cmp         edx,7
>00694781    jbe         00694788
 00694783    call        @BoundErr
 00694788    imul        edx,edx,9F0
>0069478E    jno         00694795
 00694790    call        @IntOver
 00694795    mov         ecx,dword ptr [ebp-4]
 00694798    mov         ecx,dword ptr [ecx+8766C]
 0069479E    lea         edx,[ecx+edx*8]
 006947A1    push        edx
 006947A2    imul        eax,eax,4F8
>006947A8    jno         006947AF
 006947AA    call        @IntOver
 006947AF    pop         edx
 006947B0    lea         edi,[edx+eax*8]
 006947B3    movzx       eax,bl
 006947B6    dec         eax
 006947B7    cmp         eax,9E
>006947BC    jbe         006947C3
 006947BE    call        @BoundErr
 006947C3    inc         eax
 006947C4    imul        eax,eax,8
>006947C7    jno         006947CE
 006947C9    call        @IntOver
 006947CE    lea         eax,[edi+eax*8-3C]
 006947D2    movzx       edx,byte ptr [ebp-0E3]
 006947D9    cmp         dl,64
>006947DC    jbe         00694822
 006947DE    movzx       ecx,dl
 006947E1    sub         ecx,64
>006947E4    jno         006947EB
 006947E6    call        @IntOver
 006947EB    cmp         ecx,0FF
>006947F1    jbe         006947F8
 006947F3    call        @BoundErr
 006947F8    mov         byte ptr [esi+3],cl
 006947FB    mov         byte ptr [esi+4],0C8
 006947FF    movzx       edx,dl
 00694802    sub         edx,64
>00694805    jno         0069480C
 00694807    call        @IntOver
 0069480C    cmp         edx,0FF
>00694812    jbe         00694819
 00694814    call        @BoundErr
 00694819    mov         byte ptr [eax+1],dl
 0069481C    mov         byte ptr [eax+3F],0C8
>00694820    jmp         00694830
 00694822    mov         byte ptr [esi+3],dl
 00694825    mov         byte ptr [esi+4],0
 00694829    mov         byte ptr [eax+1],dl
 0069482C    mov         byte ptr [eax+3F],0
 00694830    cmp         byte ptr [ebp-0DC],8
>00694837    jne         006948C2
 0069483D    mov         byte ptr [esi+0A],0
 00694841    mov         eax,dword ptr [ebp-4]
 00694844    mov         eax,dword ptr [eax+87668];TFXPAD.PD:TFXPPD
 0069484A    call        006A3430
 0069484F    movzx       edi,al
 00694852    movzx       eax,byte ptr [ebp-5]
 00694856    add         edi,eax
>00694858    jno         0069485F
 0069485A    call        @IntOver
 0069485F    movzx       eax,byte ptr [esi+4]
 00694863    movzx       edx,byte ptr [esi+3]
 00694867    add         eax,edx
>00694869    jno         00694870
 0069486B    call        @IntOver
 00694870    mov         dword ptr [ebp-0C],eax
 00694873    lea         eax,[ebp-0EC]
 00694879    push        eax
 0069487A    mov         dword ptr [ebp-0FC],edi
 00694880    mov         byte ptr [ebp-0F8],0
 00694887    mov         eax,dword ptr [ebp-0C]
 0069488A    mov         dword ptr [ebp-0F4],eax
 00694890    mov         byte ptr [ebp-0F0],0
 00694897    lea         edx,[ebp-0FC]
 0069489D    mov         ecx,1
 006948A2    mov         eax,6949B4;'%.3d.%.3d Invalid type (OMNI) set to ''Not used'''
 006948A7    call        Format
 006948AC    mov         edx,dword ptr [ebp-0EC]
 006948B2    mov         eax,dword ptr [ebp-4]
 006948B5    mov         eax,dword ptr [eax+87670];TFXPAD.LcToSlcConversionErrors:TStringList
 006948BB    mov         ecx,dword ptr [eax]
 006948BD    call        dword ptr [ecx+3C];TStringList.Add
>006948C0    jmp         006948CC
 006948C2    movzx       eax,byte ptr [ebp-0DC]
 006948C9    mov         byte ptr [esi+0A],al
 006948CC    movzx       eax,byte ptr [ebp-0DC]
 006948D3    cmp         eax,0E
>006948D6    ja          00694963
 006948DC    movzx       eax,byte ptr [eax+6948EA]
 006948E3    jmp         dword ptr [eax*4+6948F9]
 006948E3    db          0
 006948E3    db          0
 006948E3    db          1
 006948E3    db          1
 006948E3    db          2
 006948E3    db          3
 006948E3    db          4
 006948E3    db          0
 006948E3    db          0
 006948E3    db          0
 006948E3    db          0
 006948E3    db          1
 006948E3    db          0
 006948E3    db          1
 006948E3    db          1
 006948E3    dd          00694963
 006948E3    dd          0069490D
 006948E3    dd          0069491C
 006948E3    dd          00694937
 006948E3    dd          00694959
 0069490D    cmp         byte ptr [ebp-0DB],1
>00694914    jne         00694963
 00694916    mov         byte ptr [esi+1F],1
>0069491A    jmp         00694963
 0069491C    cmp         byte ptr [ebp-0DB],0
>00694923    jne         0069492B
 00694925    mov         byte ptr [esi+1E],1
>00694929    jmp         00694963
 0069492B    movzx       eax,byte ptr [ebp-0DB]
 00694932    mov         byte ptr [esi+1E],al
>00694935    jmp         00694963
 00694937    movzx       eax,byte ptr [ebp-0DB]
 0069493E    add         eax,1
>00694941    jno         00694948
 00694943    call        @IntOver
 00694948    cmp         eax,0FF
>0069494D    jbe         00694954
 0069494F    call        @BoundErr
 00694954    mov         byte ptr [esi+1F],al
>00694957    jmp         00694963
 00694959    movzx       eax,byte ptr [ebp-0DB]
 00694960    mov         byte ptr [esi+1E],al
 00694963    mov         byte ptr [esi+0B],0
 00694967    inc         ebx
 00694968    cmp         bl,64
>0069496B    jne         006946BA
 00694971    inc         byte ptr [ebp-6]
 00694974    cmp         byte ptr [ebp-6],2
>00694978    jne         006946B8
 0069497E    xor         eax,eax
 00694980    pop         edx
 00694981    pop         ecx
 00694982    pop         ecx
 00694983    mov         dword ptr fs:[eax],edx
 00694986    push        69499E
 0069498B    lea         eax,[ebp-0EC]
 00694991    call        @UStrClr
 00694996    ret
>00694997    jmp         @HandleFinally
>0069499C    jmp         0069498B
 0069499E    pop         edi
 0069499F    pop         esi
 006949A0    pop         ebx
 006949A1    mov         esp,ebp
 006949A3    pop         ebp
 006949A4    ret
*}
end;

//00694A14
function TFXPAD.IsOnlyGeneralOutput(LoopType:Integer; OutputFunction:Integer):Boolean;
begin
{*
 00694A14    xor         eax,eax
 00694A16    dec         edx
>00694A17    je          00694A33
 00694A19    add         edx,0FFFFFFFE
 00694A1C    sub         edx,4
>00694A1F    jae         00694A3F
 00694A21    sub         ecx,1
>00694A24    jb          00694A30
 00694A26    sub         ecx,0F
>00694A29    je          00694A30
 00694A2B    sub         ecx,4
>00694A2E    jne         00694A3F
 00694A30    mov         al,1
 00694A32    ret
 00694A33    sub         ecx,0F
>00694A36    je          00694A3D
 00694A38    sub         ecx,4
>00694A3B    jne         00694A3F
 00694A3D    mov         al,1
 00694A3F    ret
*}
end;

//00694A40
function TFXPAD.IsGeneralOrLocalOutput(LoopType:Integer; OutputFunction:Integer):Boolean;
begin
{*
 00694A40    xor         eax,eax
 00694A42    dec         edx
>00694A43    je          00694A58
 00694A45    add         edx,0FFFFFFFE
 00694A48    sub         edx,4
>00694A4B    jae         00694A62
 00694A4D    add         ecx,0FFFFFFEA
 00694A50    sub         ecx,4
>00694A53    jae         00694A62
 00694A55    mov         al,1
 00694A57    ret
 00694A58    add         ecx,0FFFFFFEB
 00694A5B    sub         ecx,4
>00694A5E    jae         00694A62
 00694A60    mov         al,1
 00694A62    ret
*}
end;

//00694A64
function TFXPAD.IsDelayedAlarmEnabledOutputAddrConfigured:Boolean;
begin
{*
 00694A64    push        ebx
 00694A65    push        esi
 00694A66    mov         esi,eax
 00694A68    xor         ebx,ebx
 00694A6A    mov         dl,16
 00694A6C    mov         eax,esi
 00694A6E    call        TFXPAD.DoesSapOutputFunctionMatch
 00694A73    test        al,al
>00694A75    je          00694A7B
 00694A77    mov         bl,1
>00694A79    jmp         00694A8A
 00694A7B    mov         dl,16
 00694A7D    mov         eax,esi
 00694A7F    call        TFXPAD.DoesApoOutputFunctionMatch
 00694A84    test        al,al
>00694A86    je          00694A8A
 00694A88    mov         bl,1
 00694A8A    mov         eax,ebx
 00694A8C    pop         esi
 00694A8D    pop         ebx
 00694A8E    ret
*}
end;

//00694A90
function TFXPAD.IsFireRouterDisabledOutputAddrConfigured:Boolean;
begin
{*
 00694A90    push        ebx
 00694A91    push        esi
 00694A92    mov         esi,eax
 00694A94    xor         ebx,ebx
 00694A96    mov         dl,17
 00694A98    mov         eax,esi
 00694A9A    call        TFXPAD.DoesSapOutputFunctionMatch
 00694A9F    test        al,al
>00694AA1    je          00694AA7
 00694AA3    mov         bl,1
>00694AA5    jmp         00694AB6
 00694AA7    mov         dl,17
 00694AA9    mov         eax,esi
 00694AAB    call        TFXPAD.DoesApoOutputFunctionMatch
 00694AB0    test        al,al
>00694AB2    je          00694AB6
 00694AB4    mov         bl,1
 00694AB6    mov         eax,ebx
 00694AB8    pop         esi
 00694AB9    pop         ebx
 00694ABA    ret
*}
end;

//00694ABC
function TFXPAD.IsFaultRouterDisabledOutputAddrConfigured:Boolean;
begin
{*
 00694ABC    push        ebx
 00694ABD    push        esi
 00694ABE    mov         esi,eax
 00694AC0    xor         ebx,ebx
 00694AC2    mov         dl,18
 00694AC4    mov         eax,esi
 00694AC6    call        TFXPAD.DoesSapOutputFunctionMatch
 00694ACB    test        al,al
>00694ACD    je          00694AD3
 00694ACF    mov         bl,1
>00694AD1    jmp         00694AE2
 00694AD3    mov         dl,18
 00694AD5    mov         eax,esi
 00694AD7    call        TFXPAD.DoesApoOutputFunctionMatch
 00694ADC    test        al,al
>00694ADE    je          00694AE2
 00694AE0    mov         bl,1
 00694AE2    mov         eax,ebx
 00694AE4    pop         esi
 00694AE5    pop         ebx
 00694AE6    ret
*}
end;

//00694AE8
function TFXPAD.IsMainsOffFaultOutputAddrConfigured:Boolean;
begin
{*
 00694AE8    push        ebx
 00694AE9    push        esi
 00694AEA    mov         esi,eax
 00694AEC    xor         ebx,ebx
 00694AEE    mov         dl,19
 00694AF0    mov         eax,esi
 00694AF2    call        TFXPAD.DoesSapOutputFunctionMatch
 00694AF7    test        al,al
>00694AF9    je          00694AFF
 00694AFB    mov         bl,1
>00694AFD    jmp         00694B0E
 00694AFF    mov         dl,19
 00694B01    mov         eax,esi
 00694B03    call        TFXPAD.DoesApoOutputFunctionMatch
 00694B08    test        al,al
>00694B0A    je          00694B0E
 00694B0C    mov         bl,1
 00694B0E    mov         eax,ebx
 00694B10    pop         esi
 00694B11    pop         ebx
 00694B12    ret
*}
end;

Initialization
Finalization
//00694B14
{*
 00694B14    push        ebp
 00694B15    mov         ebp,esp
 00694B17    xor         eax,eax
 00694B19    push        ebp
 00694B1A    push        694F0E
 00694B1F    push        dword ptr fs:[eax]
 00694B22    mov         dword ptr fs:[eax],esp
 00694B25    inc         dword ptr ds:[8DF5AC]
>00694B2B    jne         00694F00
 00694B31    mov         eax,7C1404;^'Ionisation sensor (Intellia)'
 00694B36    mov         ecx,4
 00694B3B    mov         edx,dword ptr ds:[4012B8];string
 00694B41    call        @FinalizeArray
 00694B46    mov         eax,7C1414;^'Optical sensor (Intellia)'
 00694B4B    mov         ecx,5
 00694B50    mov         edx,dword ptr ds:[4012B8];string
 00694B56    call        @FinalizeArray
 00694B5B    mov         eax,7C1428;^'Heat sensor (Intellia)'
 00694B60    mov         ecx,5
 00694B65    mov         edx,dword ptr ds:[4012B8];string
 00694B6B    call        @FinalizeArray
 00694B70    mov         eax,7C143C;^'High temp. (Intellia)'
 00694B75    mov         ecx,5
 00694B7A    mov         edx,dword ptr ds:[4012B8];string
 00694B80    call        @FinalizeArray
 00694B85    mov         eax,7C1450;^'Multisensor (Intellia)'
 00694B8A    mov         ecx,5
 00694B8F    mov         edx,dword ptr ds:[4012B8];string
 00694B95    call        @FinalizeArray
 00694B9A    mov         eax,7C1464;^'CO sensor (Intellia)'
 00694B9F    mov         ecx,2
 00694BA4    mov         edx,dword ptr ds:[4012B8];string
 00694BAA    call        @FinalizeArray
 00694BAF    mov         eax,7C146C;^'CO-Heat sensor (Intellia)'
 00694BB4    mov         ecx,2
 00694BB9    mov         edx,dword ptr ds:[4012B8];string
 00694BBF    call        @FinalizeArray
 00694BC4    mov         eax,7C1474;^'IO module (Intellia)'
 00694BC9    mov         ecx,5
 00694BCE    mov         edx,dword ptr ds:[4012B8];string
 00694BD4    call        @FinalizeArray
 00694BD9    mov         eax,7C1488;^'Sounder (Intellia)'
 00694BDE    mov         ecx,5
 00694BE3    mov         edx,dword ptr ds:[4012B8];string
 00694BE9    call        @FinalizeArray
 00694BEE    mov         eax,7C149C;^'Sounder Beacon (Intellia)'
 00694BF3    mov         ecx,2
 00694BF8    mov         edx,dword ptr ds:[4012B8];string
 00694BFE    call        @FinalizeArray
 00694C03    mov         eax,7C14A4;^'Voice Sounder Beacon (Intellia)'
 00694C08    mov         ecx,2
 00694C0D    mov         edx,dword ptr ds:[4012B8];string
 00694C13    call        @FinalizeArray
 00694C18    mov         eax,7C14AC;^'Voice Sounder (Intellia)'
 00694C1D    mov         ecx,2
 00694C22    mov         edx,dword ptr ds:[4012B8];string
 00694C28    call        @FinalizeArray
 00694C2D    mov         eax,7C14B4;^'Manual call point (Intellia)'
 00694C32    mov         ecx,5
 00694C37    mov         edx,dword ptr ds:[4012B8];string
 00694C3D    call        @FinalizeArray
 00694C42    mov         eax,7C14E8;^'Not in use'
 00694C47    mov         ecx,1D
 00694C4C    mov         edx,dword ptr ds:[4012B8];string
 00694C52    call        @FinalizeArray
 00694C57    mov         eax,7C155C;^'Primary 01, T1'
 00694C5C    mov         ecx,0F
 00694C61    mov         edx,dword ptr ds:[4012B8];string
 00694C67    call        @FinalizeArray
 00694C6C    mov         eax,7C1598;^'Secondary 01, T0'
 00694C71    mov         ecx,0F
 00694C76    mov         edx,dword ptr ds:[4012B8];string
 00694C7C    call        @FinalizeArray
 00694C81    mov         eax,7C15D4;^'Phased 01'
 00694C86    mov         ecx,0F
 00694C8B    mov         edx,dword ptr ds:[4012B8];string
 00694C91    call        @FinalizeArray
 00694C96    mov         eax,7C1614;^'4k7 '
 00694C9B    mov         ecx,2
 00694CA0    mov         edx,dword ptr ds:[4012B8];string
 00694CA6    call        @FinalizeArray
 00694CAB    mov         eax,7C162C;^'Not in use'
 00694CB0    mov         ecx,10
 00694CB5    mov         edx,dword ptr ds:[4012B8];string
 00694CBB    call        @FinalizeArray
 00694CC0    mov         eax,7C166C;^'Optical sensor'
 00694CC5    mov         ecx,2
 00694CCA    mov         edx,dword ptr ds:[4012B8];string
 00694CD0    call        @FinalizeArray
 00694CD5    mov         eax,7C1674;^'Thermal sensor'
 00694CDA    mov         ecx,2
 00694CDF    mov         edx,dword ptr ds:[4012B8];string
 00694CE5    call        @FinalizeArray
 00694CEA    mov         eax,7C167C;^'Multicriteria sensor'
 00694CEF    mov         ecx,2
 00694CF4    mov         edx,dword ptr ds:[4012B8];string
 00694CFA    call        @FinalizeArray
 00694CFF    mov         eax,7C1684;^'Four criteria sensor'
 00694D04    mov         ecx,2
 00694D09    mov         edx,dword ptr ds:[4012B8];string
 00694D0F    call        @FinalizeArray
 00694D14    mov         eax,7C168C;^'Three criteria sensor'
 00694D19    mov         ecx,2
 00694D1E    mov         edx,dword ptr ds:[4012B8];string
 00694D24    call        @FinalizeArray
 00694D29    mov         eax,7C16B0;^'Fire Alarm Devices'
 00694D2E    mov         ecx,19
 00694D33    mov         edx,dword ptr ds:[4012B8];string
 00694D39    call        @FinalizeArray
 00694D3E    mov         eax,7C1714;^'Conventional Zone'
 00694D43    mov         ecx,2
 00694D48    mov         edx,dword ptr ds:[4012B8];string
 00694D4E    call        @FinalizeArray
 00694D53    mov         eax,7C18F0;^'Not in use'
 00694D58    mov         ecx,2D
 00694D5D    mov         edx,dword ptr ds:[4012B8];string
 00694D63    call        @FinalizeArray
 00694D68    mov         eax,7C19A4;^'Not in use'
 00694D6D    mov         ecx,10
 00694D72    mov         edx,dword ptr ds:[4012B8];string
 00694D78    call        @FinalizeArray
 00694D7D    mov         eax,7C1A44;^'Not in use'
 00694D82    mov         ecx,21
 00694D87    mov         edx,dword ptr ds:[4012B8];string
 00694D8D    call        @FinalizeArray
 00694D92    mov         eax,7C227C;^'Tone 01'
 00694D97    mov         ecx,21
 00694D9C    mov         edx,dword ptr ds:[4012B8];string
 00694DA2    call        @FinalizeArray
 00694DA7    mov         eax,7C2300;^'Tone pair 01'
 00694DAC    mov         ecx,21
 00694DB1    mov         edx,dword ptr ds:[4012B8];string
 00694DB7    call        @FinalizeArray
 00694DBC    mov         eax,7C2384;^'Normal'
 00694DC1    mov         ecx,9
 00694DC6    mov         edx,dword ptr ds:[4012B8];string
 00694DCC    call        @FinalizeArray
 00694DD1    mov         eax,7C23CC;^'Manual Call Point Line'
 00694DD6    mov         ecx,3
 00694DDB    mov         edx,dword ptr ds:[4012B8];string
 00694DE1    call        @FinalizeArray
 00694DE6    mov         eax,7C23D8;^'Manual CP/Al''m Switch'
 00694DEB    mov         ecx,1
 00694DF0    mov         edx,dword ptr ds:[4012B8];string
 00694DF6    call        @FinalizeArray
 00694DFB    mov         eax,7C23DC;^'Not in use'
 00694E00    mov         ecx,22
 00694E05    mov         edx,dword ptr ds:[4012B8];string
 00694E0B    call        @FinalizeArray
 00694E10    mov         eax,7C2468;^'Conventional Zone'
 00694E15    mov         ecx,4
 00694E1A    mov         edx,dword ptr ds:[4012B8];string
 00694E20    call        @FinalizeArray
 00694E25    mov         eax,7C2478;^'Normal'
 00694E2A    mov         ecx,6
 00694E2F    mov         edx,dword ptr ds:[4012B8];string
 00694E35    call        @FinalizeArray
 00694E3A    mov         eax,7C2490;^'Monitored'
 00694E3F    mov         ecx,3
 00694E44    mov         edx,dword ptr ds:[4012B8];string
 00694E4A    call        @FinalizeArray
 00694E4F    mov         eax,7C249C;^'Continuous'
 00694E54    mov         ecx,4
 00694E59    mov         edx,dword ptr ds:[4012B8];string
 00694E5F    call        @FinalizeArray
 00694E64    mov         eax,7C24AC;^'Vol 1'
 00694E69    mov         ecx,0B
 00694E6E    mov         edx,dword ptr ds:[4012B8];string
 00694E74    call        @FinalizeArray
 00694E79    mov         eax,7C24D8;^' No'
 00694E7E    mov         ecx,2
 00694E83    mov         edx,dword ptr ds:[4012B8];string
 00694E89    call        @FinalizeArray
 00694E8E    mov         eax,7C24E0;^'No effect'
 00694E93    mov         ecx,4
 00694E98    mov         edx,dword ptr ds:[4012B8];string
 00694E9E    call        @FinalizeArray
 00694EA3    mov         eax,7C24F0;^'Not disabled by zone disablement'
 00694EA8    mov         ecx,3
 00694EAD    mov         edx,dword ptr ds:[4012B8];string
 00694EB3    call        @FinalizeArray
 00694EB8    mov         eax,7C2518;^'Not in use'
 00694EBD    mov         ecx,1A
 00694EC2    mov         edx,dword ptr ds:[4012B8];string
 00694EC8    call        @FinalizeArray
 00694ECD    mov         eax,7C2840;^'Err'
 00694ED2    mov         ecx,0B
 00694ED7    mov         edx,dword ptr ds:[4012B8];string
 00694EDD    call        @FinalizeArray
 00694EE2    mov         eax,7C286C;^'General'
 00694EE7    call        @UStrClr
 00694EEC    mov         eax,7C2870;^'Local'
 00694EF1    call        @UStrClr
 00694EF6    mov         eax,7C2874;^'Address Data encoding error!'
 00694EFB    call        @UStrClr
 00694F00    xor         eax,eax
 00694F02    pop         edx
 00694F03    pop         ecx
 00694F04    pop         ecx
 00694F05    mov         dword ptr fs:[eax],edx
 00694F08    push        694F15
 00694F0D    ret
>00694F0E    jmp         @HandleFinally
>00694F13    jmp         00694F0D
 00694F15    pop         ebp
 00694F16    ret
*}
end.