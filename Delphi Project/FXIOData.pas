//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit FXIOData;

interface

uses
  SysUtils, Classes, Xml.XMLDoc, FXCalErrFrm, uHaspKey, FXLicFileU, FXStartUp, FXConfigData;

type
  TCCIRecord = TCCIRecord = record//size=100
InputFunction:Byte;//f0
ShortIsFault:Boolean;//f1
ReservedW1:Word;//f2
InputType:Boolean;//f4
ReservedB2:Byte;//f5
CtrlGroupC:Word;//f6
CtrlGroupA:Word;//f8
CtrlGroupB:Word;//fA
CtrlGIndex:Word;//fC
CtrlGroups:TCGRec;//fE
DelayedCtrls:?;//f90
ReservedArr:?;//fBA
Description:string60;//fC2
FillerByte:Byte;//fFF
end;;
  TCCORecord = TCCORecord = record//size=100
OutputFunction:Byte;//f0
Reserved:Boolean;//f1
ReservedW1:Word;//f2
ReservedB1:Byte;//f4
ReservedB2:Byte;//f5
UnUsedCGC:Word;//f6
UnUsedCGA:Word;//f8
UnUsedCGB:Word;//fA
CtrlGIndex:Word;//fC
CtrlGroups:TCGRec;//fE
DelayedCtrls:?;//f90
ReservedArr:?;//fBA
Description:string60;//fC2
Filler:Byte;//fFF
end;;
  TADORecord = TADORecord = record//size=100
OutputFunction:Byte;//f0
Monitoring:Boolean;//f1
ReservedW1:Word;//f2
OutputMode:Byte;//f4
ReservedB2:Byte;//f5
UnUsedCGC:Word;//f6
UnUsedCGA:Word;//f8
UnUsedCGB:Word;//fA
CtrlGIndex:Word;//fC
CtrlGroups:TCGRec;//fE
DelayedCtrls:?;//f90
ReservedArr:?;//fBA
Description:string60;//fC2
Filler:Byte;//fFF
end;;
  TFXMCRec = TFXMCRec = record//size=800
CCIx:?;//f0
CCOx:?;//f200
ADOx:?;//f500
Fill:?;//f600
end;;
  TFXIORec = TFXIORec = record//size=4010
IOCx:?;//f0
end;;
  TFXPIO = class(TObject)
  published
    procedure SetCCOFunction(Ctrlr:Byte; IOLine:Byte; Value:Byte);//0069CF10
    //procedure GetCCOCtrlGroups(Ctrlr:Byte; IOLine:Byte; ?:?);//0069CDC8
    function GetCCORecord(Ctrlr:Byte; IOLine:Byte):PCCORecord;//0069CA00
    function GetCCOFunction(Ctrlr:Byte; IOLine:Byte):Byte;//0069CE30
    //procedure GetCCODescription(Ctrlr:Byte; IOLine:Byte; ?:?);//0069CDFC
    procedure SetCCODescription(Ctrlr:Byte; IOLine:Byte; Value:string60);//0069CECC
    procedure SetCCOCtrlGroups(Ctrlr:Byte; IOLine:Byte; Value:TCGRec);//0069CE88
    procedure SetCCOCtrlGIndex(Ctrlr:Byte; IOLine:Byte; Value:Integer);//0069CE50
    procedure SetCCIDescription(Ctrlr:Byte; IOLine:Byte; Value:string60);//0069C880
    function GetCCICtrlGroupB(Ctrlr:Byte; IOLine:Byte):Word;//0069C4BC
    procedure SetCCICtrlGroupB(Ctrlr:Byte; IOLine:Byte; Value:Word);//0069C6B0
    function GetCCICtrlGroupA(Ctrlr:Byte; IOLine:Byte):Word;//0069C49C
    procedure SetCCICtrlGroupA(Ctrlr:Byte; IOLine:Byte; Value:Word);//0069C5C8
    procedure SetCCICtrlGIndex(Ctrlr:Byte; IOLine:Byte; Value:Integer);//0069C590
    //procedure GetCCIDescription(Ctrlr:Byte; IOLine:Byte; ?:?);//0069C4FC
    function GetCCICtrlGroupC(Ctrlr:Byte; IOLine:Byte):Word;//0069C4DC
    procedure SetCCICtrlGroupC(Ctrlr:Byte; IOLine:Byte; Value:Word);//0069C798
    procedure SetADOMode(Ctrlr:Byte; IOLine:Byte; Value:Byte);//0069D740
    //procedure GetADOCtrlGroups(Ctrlr:Byte; IOLine:Byte; ?:?);//0069D43C
    procedure SetADOMonitoring(Ctrlr:Byte; IOLine:Byte; Value:Boolean);//0069D88C
    function GetADOMode(Ctrlr:Byte; IOLine:Byte):Byte;//0069D4C4
    //procedure GetADODescription(Ctrlr:Byte; IOLine:Byte; ?:?);//0069D470
    procedure SetADODescription(Ctrlr:Byte; IOLine:Byte; Value:string60);//0069D580
    procedure SetADOCtrlGroups(Ctrlr:Byte; IOLine:Byte; Value:TCGRec);//0069D53C
    procedure SetADOCtrlGIndex(Ctrlr:Byte; IOLine:Byte; Value:Integer);//0069D504
    function GetADOMonitoring(Ctrlr:Byte; IOLine:Byte):Boolean;//0069D4E4
    function GetADOModePulsedAllowed(Ctrlr:Byte; IOLine:Byte):Boolean;//0069D3C4
    function GetADOModePhasedAllowed(Ctrlr:Byte; IOLine:Byte):Boolean;//0069D394
    function GetADOModeDefByJumperAllowed(Ctrlr:Byte; IOLine:Byte):Boolean;//0069D34C
    function GetADOModeContinuousAllowed(Ctrlr:Byte; IOLine:Byte):Boolean;//0069D324
    function GetADOFunction(Ctrlr:Byte; IOLine:Byte):Byte;//0069D4A4
    procedure SetADOFunction(Ctrlr:Byte; IOLine:Byte; Value:Byte);//0069D5C4
    function GetADOControlGroupsAllowed(Ctrlr:Byte; IOLine:Byte):Boolean;//0069D40C
    function GetADORecord(Ctrlr:Byte; IOLine:Byte):PADORecord;//0069D06C
    procedure CCIFunctionToString(CCIFunction:Byte; ?:UnicodeString);//0069B3C4
    procedure CCITypeToString(CCIType:Boolean; ?:UnicodeString);//0069B418
    procedure SaveIOCX(fs:TFileStream; FileVersionMajor:Integer; RecordSize:Cardinal; NumOfRecords:Word; FileVersionMinor:Integer);//0069B1F4
    procedure IOCTypeToString(IOCType:Byte; ?:UnicodeString);//0069B370
    procedure ADOMonitoringToString(ADOMonitoring:Boolean; ?:UnicodeString);//0069B8D8
    function GetInpEventSet(InpFunction:Byte):TFXEventSet;//0069B558
    procedure OutFunctionToString(OutFunction:Byte; ?:UnicodeString);//0069B4D8
    procedure ADOModeToString(ADOMode:Byte; ?:UnicodeString);//0069B888
    function ReadIOCX(fs:TFileStream; FileVersionMajor:Integer; RecordSize:Integer; NumOfRecords:Integer; FileVersionMinor:Integer):Integer;//0069AF24
    procedure CopyTo(IO:TFXPIO);//0069B25C
    function IsEqual(IO:TFXPIO):Boolean;//0069B284
    constructor Create(FXPanelType:Byte);//0069994C
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function ReadMCIO(fs:TFileStream; FileVersionMajor:Integer; RecordSize:Integer; NumOfRecords:Integer; FileVersionMinor:Integer):Integer;//0069B138
    procedure SaveMCIO(fs:TFileStream; FileVersionMajor:Integer; RecordSize:Cardinal; NumOfRecords:Word; FileVersionMinor:Integer);//0069B228
    procedure DecodeFXIOMsg(MsgLen:Byte; MsgData:TMsgData);//0069AB14
    function EncodeFXIOMsg(iounit:Word; ioid:Word; var MsgData:TMsgData; var MsgLen:Byte; NegVer:Word):Boolean;//00699F84
    function GetCCIFunction(Ctrlr:Byte; IOLine:Byte):Byte;//0069C530
    procedure SetCCIFunction(Ctrlr:Byte; IOLine:Byte; Value:Byte);//0069C8C4
    procedure SetIOCtrlType(indx:Byte; Value:Byte);//0069B30C
    function GetCCIRecord(Ctrlr:Byte; IOLine:Byte):PCCIRecord;//0069C1E4
    function GetCCIShortIsFault(Ctrlr:Byte; IOLine:Byte):Boolean;//0069C550
    procedure SetCCIShortIsFault(Ctrlr:Byte; IOLine:Byte; Value:Boolean);//0069C9A8
    function GetCCIType(Ctrlr:Byte; IOLine:Byte):Boolean;//0069C570
    procedure SetCCIType(Ctrlr:Byte; IOLine:Byte; Value:Boolean);//0069C9D4
    function GetIOCtrlrType(indx:Byte):Byte;//0069B2C4
    function IsFireRouterDisabledOutputIOConfigured:Boolean;//0069D054
    function IsFaultRouterDisabledOutputIOConfigured:Boolean;//0069D05C
    function GetOutEventSet(OutFunction:Byte):TFXEventSet;//0069B6E0
    function IsDelayedAlarmEnabledOutputIOConfigured:Boolean;//0069D04C
    function IsMainsOffFaultOutputIOConfigured:Boolean;//0069D064
    procedure Clear(Ctrl:Byte);//0069D8B8
    function IsOnlyGeneralOutput(IsMO:Boolean; Ctrlr:Byte; IOLine:Byte):Boolean;//0069CD2C
    function IsGeneralOrLocalOutput(IsMO:Boolean; Ctrlr:Byte; IOLine:Byte):Boolean;//0069CD84
  public
    FXMCIO:TFXMCRec;//f4
    FXIOC:TFXIORec;//f804
    FModified:Boolean;//f4814
    CI:TFXPCI;//f4818
  end;
    //procedure sub_00699A5C(?:Word; ?:?; ?:Integer; ?:?; ?:?);//00699A5C
    //procedure sub_00699D4C(?:Word; ?:?; ?:Integer; ?:?; ?:?);//00699D4C
    //procedure sub_00699E54(?:Word; ?:?; ?:Integer; ?:?; ?:?);//00699E54
    //procedure sub_0069A510(?:?; ?:?; ?:?; ?:?);//0069A510
    //function sub_0069A5B4(?:Integer; ?:Byte; ?:?):?;//0069A5B4
    //procedure sub_0069A890(?:Integer; ?:Byte; ?:?);//0069A890
    //procedure sub_0069A9C0(?:Integer; ?:Byte; ?:?);//0069A9C0
    //function sub_0069B444:?;//0069B444
    //function sub_0069B488:?;//0069B488
    //procedure sub_0069B8FC(?:TFXPIO; ?:?);//0069B8FC
    //procedure sub_0069B95C(?:TFXPIO; ?:?);//0069B95C
    //procedure sub_0069B9CC(?:TFXPIO; ?:?);//0069B9CC
    //procedure sub_0069BA4C(?:TFXPIO; ?:Integer; ?:Integer; ?:?);//0069BA4C
    //procedure sub_0069BC40(?:TFXPIO; ?:?; ?:?);//0069BC40
    //procedure sub_0069BDBC(?:?; ?:Integer; ?:Integer; ?:?);//0069BDBC

implementation

//0069994C
constructor TFXPIO.Create(FXPanelType:Byte);
begin
{*
 0069994C    test        dl,dl
>0069994E    je          00699958
 00699950    add         esp,0FFFFFFF0
 00699953    call        @ClassCreate
 00699958    mov         byte ptr [eax+4],3;TFXPIO.FXMCIO:TFXMCRec
 0069995C    mov         byte ptr [eax+8],0
 00699960    mov         byte ptr [eax+5],1
 00699964    mov         byte ptr [eax+104],4
 0069996B    mov         byte ptr [eax+108],0
 00699972    mov         byte ptr [eax+105],1
 00699979    mov         byte ptr [eax+204],5
 00699980    mov         byte ptr [eax+214],1
 00699987    mov         byte ptr [eax+304],6
 0069998E    mov         byte ptr [eax+314],1
 00699995    mov         byte ptr [eax+404],1
 0069999C    mov         byte ptr [eax+414],1
 006999A3    mov         byte ptr [eax+504],21
 006999AA    mov         byte ptr [eax+505],1
 006999B1    mov         byte ptr [eax+514],1
 006999B8    cmp         cl,7
>006999BB    je          006999C6
 006999BD    cmp         cl,8
>006999C0    jne         00699A46
 006999C6    mov         word ptr [eax+804],4;TFXPIO.FXIOC:TFXIORec
 006999CF    mov         byte ptr [eax+808],0A
 006999D6    mov         byte ptr [eax+80C],0
 006999DD    mov         byte ptr [eax+809],1
 006999E4    mov         byte ptr [eax+908],14
 006999EB    mov         byte ptr [eax+90C],0
 006999F2    mov         byte ptr [eax+909],1
 006999F9    mov         byte ptr [eax+0A08],15
 00699A00    mov         byte ptr [eax+0A0C],0
 00699A07    mov         byte ptr [eax+0A09],1
 00699A0E    mov         byte ptr [eax+0B08],16
 00699A15    mov         byte ptr [eax+0B18],1
 00699A1C    mov         byte ptr [eax+0C08],11
 00699A23    mov         byte ptr [eax+0C18],1
 00699A2A    mov         byte ptr [eax+0D08],2
 00699A31    mov         byte ptr [eax+0D18],1
 00699A38    mov         byte ptr [eax+0E08],12
 00699A3F    mov         byte ptr [eax+0E18],1
 00699A46    test        dl,dl
>00699A48    je          00699A59
 00699A4A    call        @AfterConstruction
 00699A4F    pop         dword ptr fs:[0]
 00699A56    add         esp,0C
 00699A59    ret
*}
end;

//00699A5C
{*procedure sub_00699A5C(?:Word; ?:?; ?:Integer; ?:?; ?:?);
begin
 00699A5C    push        ebp
 00699A5D    mov         ebp,esp
 00699A5F    add         esp,0FFFFFF00
 00699A65    push        ebx
 00699A66    push        esi
 00699A67    push        edi
 00699A68    mov         esi,ecx
 00699A6A    lea         edi,[ebp-100]
 00699A70    mov         ecx,40
 00699A75    rep movs    dword ptr [edi],dword ptr [esi]
 00699A77    mov         esi,dword ptr [ebp+8]
 00699A7A    mov         byte ptr [esi],al
 00699A7C    mov         byte ptr [esi+1],dl
 00699A7F    movzx       eax,byte ptr [ebp-100]
 00699A86    cmp         eax,1C
>00699A89    jbe         00699A90
 00699A8B    call        @BoundErr
 00699A90    movzx       eax,byte ptr [eax+7C2890];gvar_007C2890
 00699A97    mov         byte ptr [esi+2],al
 00699A9A    cmp         byte ptr [ebp-0FC],0
>00699AA1    je          00699AA7
 00699AA3    mov         byte ptr [esi+3],1
 00699AA7    cmp         byte ptr [ebp-0FF],0
>00699AAE    je          00699AB4
 00699AB0    or          byte ptr [esi+3],2
 00699AB4    mov         eax,dword ptr [ebp+0C]
 00699AB7    movzx       eax,byte ptr [eax-1]
 00699ABB    sub         al,1
>00699ABD    jb          00699AC8
 00699ABF    dec         al
>00699AC1    je          00699B16
>00699AC3    jmp         00699D40
 00699AC8    movzx       eax,word ptr [ebp-0F8]
 00699ACF    and         ax,0FF
 00699AD3    movzx       eax,ax
 00699AD6    cmp         eax,0FF
>00699ADB    jbe         00699AE2
 00699ADD    call        @BoundErr
 00699AE2    mov         byte ptr [esi+4],al
 00699AE5    movzx       eax,word ptr [ebp-0F6]
 00699AEC    and         ax,0FF
 00699AF0    movzx       eax,ax
 00699AF3    cmp         eax,0FF
>00699AF8    jbe         00699AFF
 00699AFA    call        @BoundErr
 00699AFF    mov         byte ptr [esi+5],al
 00699B02    movzx       ecx,byte ptr [ebp-3E]
 00699B06    lea         edx,[esi+26]
 00699B09    lea         eax,[ebp-3D]
 00699B0C    call        Move
>00699B11    jmp         00699D40
 00699B16    movzx       eax,word ptr [ebp-0F8]
 00699B1D    shr         ax,8
 00699B21    movzx       eax,ax
 00699B24    cmp         eax,0FF
>00699B29    jbe         00699B30
 00699B2B    call        @BoundErr
 00699B30    mov         byte ptr [esi+4],al
 00699B33    movzx       eax,word ptr [ebp-0F8]
 00699B3A    and         ax,0FF
 00699B3E    movzx       eax,ax
 00699B41    cmp         eax,0FF
>00699B46    jbe         00699B4D
 00699B48    call        @BoundErr
 00699B4D    mov         byte ptr [esi+5],al
 00699B50    movzx       eax,word ptr [ebp-0F6]
 00699B57    shr         ax,8
 00699B5B    movzx       eax,ax
 00699B5E    cmp         eax,0FF
>00699B63    jbe         00699B6A
 00699B65    call        @BoundErr
 00699B6A    mov         byte ptr [esi+6],al
 00699B6D    movzx       eax,word ptr [ebp-0F6]
 00699B74    and         ax,0FF
 00699B78    movzx       eax,ax
 00699B7B    cmp         eax,0FF
>00699B80    jbe         00699B87
 00699B82    call        @BoundErr
 00699B87    mov         byte ptr [esi+7],al
 00699B8A    mov         byte ptr [esi+8],0FF
 00699B8E    mov         byte ptr [esi+9],0FF
 00699B92    movzx       eax,word ptr [ebp-0FA]
 00699B99    shr         ax,8
 00699B9D    movzx       eax,ax
 00699BA0    cmp         eax,0FF
>00699BA5    jbe         00699BAC
 00699BA7    call        @BoundErr
 00699BAC    mov         byte ptr [esi+0A],al
 00699BAF    movzx       eax,word ptr [ebp-0FA]
 00699BB6    and         ax,0FF
 00699BBA    movzx       eax,ax
 00699BBD    cmp         eax,0FF
>00699BC2    jbe         00699BC9
 00699BC4    call        @BoundErr
 00699BC9    mov         byte ptr [esi+0B],al
 00699BCC    xor         edx,edx
 00699BCE    lea         eax,[ebp-70]
 00699BD1    imul        edi,edx,6
>00699BD4    jno         00699BDB
 00699BD6    call        @IntOver
 00699BDB    mov         ecx,edi
 00699BDD    add         ecx,0D
>00699BE0    jno         00699BE7
 00699BE2    call        @IntOver
 00699BE7    dec         ecx
 00699BE8    cmp         ecx,0FD
>00699BEE    jbe         00699BF5
 00699BF0    call        @BoundErr
 00699BF5    inc         ecx
 00699BF6    movzx       ebx,word ptr [eax]
 00699BF9    shr         bx,8
 00699BFD    movzx       ebx,bx
 00699C00    cmp         ebx,0FF
>00699C06    jbe         00699C0D
 00699C08    call        @BoundErr
 00699C0D    mov         byte ptr [esi+ecx-1],bl
 00699C11    mov         ecx,edi
 00699C13    add         ecx,0E
>00699C16    jno         00699C1D
 00699C18    call        @IntOver
 00699C1D    dec         ecx
 00699C1E    cmp         ecx,0FD
>00699C24    jbe         00699C2B
 00699C26    call        @BoundErr
 00699C2B    inc         ecx
 00699C2C    movzx       ebx,word ptr [eax]
 00699C2F    and         bx,0FF
 00699C34    movzx       ebx,bx
 00699C37    cmp         ebx,0FF
>00699C3D    jbe         00699C44
 00699C3F    call        @BoundErr
 00699C44    mov         byte ptr [esi+ecx-1],bl
 00699C48    mov         ecx,edi
 00699C4A    add         ecx,0F
>00699C4D    jno         00699C54
 00699C4F    call        @IntOver
 00699C54    dec         ecx
 00699C55    cmp         ecx,0FD
>00699C5B    jbe         00699C62
 00699C5D    call        @BoundErr
 00699C62    inc         ecx
 00699C63    movzx       ebx,word ptr [eax+2]
 00699C67    shr         bx,8
 00699C6B    movzx       ebx,bx
 00699C6E    cmp         ebx,0FF
>00699C74    jbe         00699C7B
 00699C76    call        @BoundErr
 00699C7B    mov         byte ptr [esi+ecx-1],bl
 00699C7F    mov         ecx,edi
 00699C81    add         ecx,10
>00699C84    jno         00699C8B
 00699C86    call        @IntOver
 00699C8B    dec         ecx
 00699C8C    cmp         ecx,0FD
>00699C92    jbe         00699C99
 00699C94    call        @BoundErr
 00699C99    inc         ecx
 00699C9A    movzx       ebx,word ptr [eax+2]
 00699C9E    and         bx,0FF
 00699CA3    movzx       ebx,bx
 00699CA6    cmp         ebx,0FF
>00699CAC    jbe         00699CB3
 00699CAE    call        @BoundErr
 00699CB3    mov         byte ptr [esi+ecx-1],bl
 00699CB7    mov         ecx,edi
 00699CB9    add         ecx,11
>00699CBC    jno         00699CC3
 00699CBE    call        @IntOver
 00699CC3    dec         ecx
 00699CC4    cmp         ecx,0FD
>00699CCA    jbe         00699CD1
 00699CCC    call        @BoundErr
 00699CD1    inc         ecx
 00699CD2    movzx       ebx,word ptr [eax+4]
 00699CD6    shr         bx,8
 00699CDA    movzx       ebx,bx
 00699CDD    cmp         ebx,0FF
>00699CE3    jbe         00699CEA
 00699CE5    call        @BoundErr
 00699CEA    mov         byte ptr [esi+ecx-1],bl
 00699CEE    add         edi,12
>00699CF1    jno         00699CF8
 00699CF3    call        @IntOver
 00699CF8    dec         edi
 00699CF9    cmp         edi,0FD
>00699CFF    jbe         00699D06
 00699D01    call        @BoundErr
 00699D06    inc         edi
 00699D07    movzx       ecx,word ptr [eax+4]
 00699D0B    and         cx,0FF
 00699D10    movzx       ecx,cx
 00699D13    cmp         ecx,0FF
>00699D19    jbe         00699D20
 00699D1B    call        @BoundErr
 00699D20    mov         byte ptr [esi+edi-1],cl
 00699D24    inc         edx
 00699D25    add         eax,6
 00699D28    cmp         edx,7
>00699D2B    jne         00699BD1
 00699D31    movzx       ecx,byte ptr [ebp-3E]
 00699D35    lea         edx,[esi+3D]
 00699D38    lea         eax,[ebp-3D]
 00699D3B    call        Move
 00699D40    pop         edi
 00699D41    pop         esi
 00699D42    pop         ebx
 00699D43    mov         esp,ebp
 00699D45    pop         ebp
 00699D46    ret         4
end;*}

//00699D4C
{*procedure sub_00699D4C(?:Word; ?:?; ?:Integer; ?:?; ?:?);
begin
 00699D4C    push        ebp
 00699D4D    mov         ebp,esp
 00699D4F    add         esp,0FFFFFF00
 00699D55    push        ebx
 00699D56    push        esi
 00699D57    push        edi
 00699D58    mov         esi,ecx
 00699D5A    lea         edi,[ebp-100]
 00699D60    mov         ecx,40
 00699D65    rep movs    dword ptr [edi],dword ptr [esi]
 00699D67    mov         ebx,dword ptr [ebp+8]
 00699D6A    mov         byte ptr [ebx],al
 00699D6C    mov         byte ptr [ebx+1],dl
 00699D6F    mov         eax,dword ptr [ebp+0C]
 00699D72    mov         eax,dword ptr [eax-8]
 00699D75    movzx       edx,byte ptr [ebp-100]
 00699D7C    call        0069B444
 00699D81    mov         byte ptr [ebx+2],al
 00699D84    mov         byte ptr [ebx+3],0
 00699D88    mov         eax,dword ptr [ebp+0C]
 00699D8B    movzx       eax,byte ptr [eax-1]
 00699D8F    sub         al,1
>00699D91    jb          00699D9C
 00699D93    dec         al
>00699D95    je          00699DEF
>00699D97    jmp         00699E4B
 00699D9C    mov         byte ptr [ebx+4],0
 00699DA0    mov         byte ptr [ebx+5],0
 00699DA4    movzx       eax,byte ptr [ebp-0F0]
 00699DAB    cmp         al,1
>00699DAD    jne         00699DB5
 00699DAF    mov         byte ptr [ebx+6],1
>00699DB3    jmp         00699DDE
 00699DB5    cmp         al,2
>00699DB7    jne         00699DBF
 00699DB9    mov         byte ptr [ebx+25],8
>00699DBD    jmp         00699DDE
 00699DBF    lea         edx,[ebx+6]
 00699DC2    lea         eax,[ebp-0EE]
 00699DC8    mov         ecx,1F
 00699DCD    call        Move
 00699DD2    movzx       eax,byte ptr [ebp-0CF]
 00699DD9    and         al,7
 00699DDB    mov         byte ptr [ebx+25],al
 00699DDE    movzx       ecx,byte ptr [ebp-3E]
 00699DE2    lea         edx,[ebx+26]
 00699DE5    lea         eax,[ebp-3D]
 00699DE8    call        Move
>00699DED    jmp         00699E4B
 00699DEF    mov         byte ptr [ebx+4],0
 00699DF3    mov         byte ptr [ebx+5],0
 00699DF7    mov         byte ptr [ebx+6],0
 00699DFB    mov         byte ptr [ebx+7],0
 00699DFF    movzx       eax,word ptr [ebp-0F4]
 00699E06    shr         eax,8
 00699E09    cmp         eax,0FF
>00699E0E    jbe         00699E15
 00699E10    call        @BoundErr
 00699E15    mov         byte ptr [ebx+8],al
 00699E18    movzx       eax,word ptr [ebp-0F4]
 00699E1F    and         eax,0FF
 00699E24    cmp         eax,0FF
>00699E29    jbe         00699E30
 00699E2B    call        @BoundErr
 00699E30    mov         byte ptr [ebx+9],al
 00699E33    movzx       ecx,byte ptr [ebp-3E]
 00699E37    lea         edx,[ebx+3D]
 00699E3A    lea         eax,[ebp-3D]
 00699E3D    call        Move
 00699E42    mov         word ptr [ebp-0F4],0
 00699E4B    pop         edi
 00699E4C    pop         esi
 00699E4D    pop         ebx
 00699E4E    mov         esp,ebp
 00699E50    pop         ebp
 00699E51    ret         4
end;*}

//00699E54
{*procedure sub_00699E54(?:Word; ?:?; ?:Integer; ?:?; ?:?);
begin
 00699E54    push        ebp
 00699E55    mov         ebp,esp
 00699E57    add         esp,0FFFFFF00
 00699E5D    push        ebx
 00699E5E    push        esi
 00699E5F    push        edi
 00699E60    mov         esi,ecx
 00699E62    lea         edi,[ebp-100]
 00699E68    mov         ecx,40
 00699E6D    rep movs    dword ptr [edi],dword ptr [esi]
 00699E6F    mov         ebx,dword ptr [ebp+8]
 00699E72    mov         byte ptr [ebx],al
 00699E74    mov         byte ptr [ebx+1],dl
 00699E77    mov         eax,dword ptr [ebp+0C]
 00699E7A    mov         eax,dword ptr [eax-8]
 00699E7D    movzx       edx,byte ptr [ebp-100]
 00699E84    call        0069B444
 00699E89    mov         byte ptr [ebx+2],al
 00699E8C    cmp         byte ptr [ebp-0FF],0
>00699E93    je          00699E99
 00699E95    mov         byte ptr [ebx+3],1
 00699E99    movzx       eax,byte ptr [ebx+3]
 00699E9D    movzx       edx,byte ptr [ebp-0FC]
 00699EA4    add         edx,edx
 00699EA6    or          eax,edx
 00699EA8    cmp         eax,0FF
>00699EAD    jbe         00699EB4
 00699EAF    call        @BoundErr
 00699EB4    mov         byte ptr [ebx+3],al
 00699EB7    mov         eax,dword ptr [ebp+0C]
 00699EBA    movzx       eax,byte ptr [eax-1]
 00699EBE    sub         al,1
>00699EC0    jb          00699ECB
 00699EC2    dec         al
>00699EC4    je          00699F1E
>00699EC6    jmp         00699F7A
 00699ECB    mov         byte ptr [ebx+4],0
 00699ECF    mov         byte ptr [ebx+5],0
 00699ED3    movzx       eax,byte ptr [ebp-0F0]
 00699EDA    cmp         al,1
>00699EDC    jne         00699EE4
 00699EDE    mov         byte ptr [ebx+6],1
>00699EE2    jmp         00699F0D
 00699EE4    cmp         al,2
>00699EE6    jne         00699EEE
 00699EE8    mov         byte ptr [ebx+25],8
>00699EEC    jmp         00699F0D
 00699EEE    lea         edx,[ebx+6]
 00699EF1    lea         eax,[ebp-0EE]
 00699EF7    mov         ecx,1F
 00699EFC    call        Move
 00699F01    movzx       eax,byte ptr [ebp-0CF]
 00699F08    and         al,7
 00699F0A    mov         byte ptr [ebx+25],al
 00699F0D    movzx       ecx,byte ptr [ebp-3E]
 00699F11    lea         edx,[ebx+26]
 00699F14    lea         eax,[ebp-3D]
 00699F17    call        Move
>00699F1C    jmp         00699F7A
 00699F1E    mov         byte ptr [ebx+4],0
 00699F22    mov         byte ptr [ebx+5],0
 00699F26    mov         byte ptr [ebx+6],0
 00699F2A    mov         byte ptr [ebx+7],0
 00699F2E    movzx       eax,word ptr [ebp-0F4]
 00699F35    shr         eax,8
 00699F38    cmp         eax,0FF
>00699F3D    jbe         00699F44
 00699F3F    call        @BoundErr
 00699F44    mov         byte ptr [ebx+8],al
 00699F47    movzx       eax,word ptr [ebp-0F4]
 00699F4E    and         eax,0FF
 00699F53    cmp         eax,0FF
>00699F58    jbe         00699F5F
 00699F5A    call        @BoundErr
 00699F5F    mov         byte ptr [ebx+9],al
 00699F62    movzx       ecx,byte ptr [ebp-3E]
 00699F66    lea         edx,[ebx+3D]
 00699F69    lea         eax,[ebp-3D]
 00699F6C    call        Move
 00699F71    mov         word ptr [ebp-0F4],0
 00699F7A    pop         edi
 00699F7B    pop         esi
 00699F7C    pop         ebx
 00699F7D    mov         esp,ebp
 00699F7F    pop         ebp
 00699F80    ret         4
end;*}

//00699F84
function TFXPIO.EncodeFXIOMsg(iounit:Word; ioid:Word; var MsgData:TMsgData; var MsgLen:Byte; NegVer:Word):Boolean;
begin
{*
 00699F84    push        ebp
 00699F85    mov         ebp,esp
 00699F87    add         esp,0FFFFFEF4
 00699F8D    push        ebx
 00699F8E    push        esi
 00699F8F    push        edi
 00699F90    mov         word ptr [ebp-0A],cx
 00699F94    mov         ebx,edx
 00699F96    mov         dword ptr [ebp-8],eax
 00699F99    mov         esi,dword ptr [ebp+8]
 00699F9C    mov         edi,dword ptr [ebp+10]
 00699F9F    mov         eax,edi
 00699FA1    dec         eax
 00699FA2    sub         ax,5
>00699FA6    jb          00699FC2
 00699FA8    sub         ax,3
>00699FAC    jb          00699FD0
 00699FAE    add         eax,0FFFFFFE9
 00699FB1    sub         ax,2
>00699FB5    jb          00699FD0
 00699FB7    add         eax,0FFFFFFE2
 00699FBA    sub         ax,9
>00699FBE    jb          00699FD0
>00699FC0    jmp         00699FDE
 00699FC2    mov         byte ptr [ebp-1],0
 00699FC6    mov         byte ptr [ebp-0B],0
 00699FCA    mov         byte ptr [ebp-0C],0
>00699FCE    jmp         00699FF5
 00699FD0    mov         byte ptr [ebp-1],2
 00699FD4    mov         byte ptr [ebp-0B],0
 00699FD8    mov         byte ptr [ebp-0C],0
>00699FDC    jmp         00699FF5
 00699FDE    mov         ecx,dword ptr ds:[7C29E8];^'IO Data encoding error!'
 00699FE4    mov         dl,1
 00699FE6    mov         eax,[004174D0];Exception
 00699FEB    call        Exception.Create;Exception.Create
 00699FF0    call        @RaiseExcept
 00699FF5    lea         eax,[ebp-10A]
 00699FFB    xor         ecx,ecx
 00699FFD    mov         edx,0FE
 0069A002    call        @FillChar
 0069A007    mov         eax,ebx
 0069A009    sub         ax,1
>0069A00D    jb          0069A01E
 0069A00F    sub         ax,4
>0069A013    jb          0069A15A
>0069A019    jmp         0069A47B
 0069A01E    movzx       eax,word ptr [ebp-0A]
 0069A022    dec         eax
 0069A023    sub         ax,3
>0069A027    jb          0069A041
 0069A029    sub         ax,1D
>0069A02D    je          0069A098
 0069A02F    add         eax,0FFFFFFE0
 0069A032    sub         ax,2
>0069A036    jb          0069A0F9
>0069A03C    jmp         0069A47B
 0069A041    push        ebp
 0069A042    lea         eax,[ebp-10A]
 0069A048    push        eax
 0069A049    movzx       eax,word ptr [ebp-0A]
 0069A04D    dec         eax
 0069A04E    cmp         eax,2
>0069A051    jbe         0069A058
 0069A053    call        @BoundErr
 0069A058    inc         eax
 0069A059    imul        eax,eax,20
>0069A05C    jno         0069A063
 0069A05E    call        @IntOver
 0069A063    mov         edx,dword ptr [ebp-8]
 0069A066    lea         ecx,[edx+eax*8+104]
 0069A06D    movzx       edx,word ptr [ebp-0A]
 0069A071    cmp         edx,0FF
>0069A077    jbe         0069A07E
 0069A079    call        @BoundErr
 0069A07E    movzx       eax,bx
 0069A081    cmp         eax,0FF
>0069A086    jbe         0069A08D
 0069A088    call        @BoundErr
 0069A08D    call        00699D4C
 0069A092    pop         ecx
>0069A093    jmp         0069A47B
 0069A098    push        ebp
 0069A099    lea         eax,[ebp-10A]
 0069A09F    push        eax
 0069A0A0    movzx       eax,word ptr [ebp-0A]
 0069A0A4    sub         eax,20
>0069A0A7    jno         0069A0AE
 0069A0A9    call        @IntOver
 0069A0AE    dec         eax
 0069A0AF    cmp         eax,0
>0069A0B2    jbe         0069A0B9
 0069A0B4    call        @BoundErr
 0069A0B9    inc         eax
 0069A0BA    imul        eax,eax,20
>0069A0BD    jno         0069A0C4
 0069A0BF    call        @IntOver
 0069A0C4    mov         edx,dword ptr [ebp-8]
 0069A0C7    lea         ecx,[edx+eax*8+404]
 0069A0CE    movzx       edx,word ptr [ebp-0A]
 0069A0D2    cmp         edx,0FF
>0069A0D8    jbe         0069A0DF
 0069A0DA    call        @BoundErr
 0069A0DF    movzx       eax,bx
 0069A0E2    cmp         eax,0FF
>0069A0E7    jbe         0069A0EE
 0069A0E9    call        @BoundErr
 0069A0EE    call        00699E54
 0069A0F3    pop         ecx
>0069A0F4    jmp         0069A47B
 0069A0F9    push        ebp
 0069A0FA    lea         eax,[ebp-10A]
 0069A100    push        eax
 0069A101    movzx       eax,word ptr [ebp-0A]
 0069A105    sub         eax,40
>0069A108    jno         0069A10F
 0069A10A    call        @IntOver
 0069A10F    dec         eax
 0069A110    cmp         eax,1
>0069A113    jbe         0069A11A
 0069A115    call        @BoundErr
 0069A11A    inc         eax
 0069A11B    imul        eax,eax,20
>0069A11E    jno         0069A125
 0069A120    call        @IntOver
 0069A125    mov         edx,dword ptr [ebp-8]
 0069A128    lea         ecx,[edx+eax*8-0FC]
 0069A12F    movzx       edx,word ptr [ebp-0A]
 0069A133    cmp         edx,0FF
>0069A139    jbe         0069A140
 0069A13B    call        @BoundErr
 0069A140    movzx       eax,bx
 0069A143    cmp         eax,0FF
>0069A148    jbe         0069A14F
 0069A14A    call        @BoundErr
 0069A14F    call        00699A5C
 0069A154    pop         ecx
>0069A155    jmp         0069A47B
 0069A15A    movzx       eax,bx
 0069A15D    dec         eax
 0069A15E    cmp         eax,3
>0069A161    jbe         0069A168
 0069A163    call        @BoundErr
 0069A168    inc         eax
 0069A169    imul        eax,eax,401
>0069A16F    jno         0069A176
 0069A171    call        @IntOver
 0069A176    mov         edx,dword ptr [ebp-8]
 0069A179    movzx       edx,word ptr [edx+eax*4-800]
 0069A181    dec         dx
>0069A184    je          0069A1A6
 0069A186    dec         dx
>0069A189    je          0069A2EE
 0069A18F    dec         dx
>0069A192    je          0069A348
 0069A198    dec         dx
>0069A19B    je          0069A3AC
>0069A1A1    jmp         0069A47B
 0069A1A6    movzx       edx,word ptr [ebp-0A]
 0069A1AA    dec         edx
 0069A1AB    sub         dx,2
>0069A1AF    jb          0069A1CC
 0069A1B1    add         edx,0FFFFFFE2
 0069A1B4    sub         dx,4
>0069A1B8    jb          0069A226
 0069A1BA    add         edx,0FFFFFFE4
 0069A1BD    sub         dx,4
>0069A1C1    jb          0069A28A
>0069A1C7    jmp         0069A47B
 0069A1CC    push        ebp
 0069A1CD    lea         edx,[ebp-10A]
 0069A1D3    push        edx
 0069A1D4    mov         edx,dword ptr [ebp-8]
 0069A1D7    lea         eax,[edx+eax*4]
 0069A1DA    movzx       edx,word ptr [ebp-0A]
 0069A1DE    dec         edx
 0069A1DF    cmp         edx,1
>0069A1E2    jbe         0069A1E9
 0069A1E4    call        @BoundErr
 0069A1E9    inc         edx
 0069A1EA    imul        edx,edx,20
>0069A1ED    jno         0069A1F4
 0069A1EF    call        @IntOver
 0069A1F4    lea         ecx,[eax+edx*8-4FC]
 0069A1FB    movzx       edx,word ptr [ebp-0A]
 0069A1FF    cmp         edx,0FF
>0069A205    jbe         0069A20C
 0069A207    call        @BoundErr
 0069A20C    movzx       eax,bx
 0069A20F    cmp         eax,0FF
>0069A214    jbe         0069A21B
 0069A216    call        @BoundErr
 0069A21B    call        00699D4C
 0069A220    pop         ecx
>0069A221    jmp         0069A47B
 0069A226    push        ebp
 0069A227    lea         edx,[ebp-10A]
 0069A22D    push        edx
 0069A22E    mov         edx,dword ptr [ebp-8]
 0069A231    lea         eax,[edx+eax*4]
 0069A234    movzx       edx,word ptr [ebp-0A]
 0069A238    sub         edx,20
>0069A23B    jno         0069A242
 0069A23D    call        @IntOver
 0069A242    dec         edx
 0069A243    cmp         edx,3
>0069A246    jbe         0069A24D
 0069A248    call        @BoundErr
 0069A24D    inc         edx
 0069A24E    imul        edx,edx,20
>0069A251    jno         0069A258
 0069A253    call        @IntOver
 0069A258    lea         ecx,[eax+edx*8-2FC]
 0069A25F    movzx       edx,word ptr [ebp-0A]
 0069A263    cmp         edx,0FF
>0069A269    jbe         0069A270
 0069A26B    call        @BoundErr
 0069A270    movzx       eax,bx
 0069A273    cmp         eax,0FF
>0069A278    jbe         0069A27F
 0069A27A    call        @BoundErr
 0069A27F    call        00699E54
 0069A284    pop         ecx
>0069A285    jmp         0069A47B
 0069A28A    push        ebp
 0069A28B    lea         edx,[ebp-10A]
 0069A291    push        edx
 0069A292    mov         edx,dword ptr [ebp-8]
 0069A295    lea         eax,[edx+eax*4]
 0069A298    movzx       edx,word ptr [ebp-0A]
 0069A29C    sub         edx,40
>0069A29F    jno         0069A2A6
 0069A2A1    call        @IntOver
 0069A2A6    dec         edx
 0069A2A7    cmp         edx,3
>0069A2AA    jbe         0069A2B1
 0069A2AC    call        @BoundErr
 0069A2B1    inc         edx
 0069A2B2    imul        edx,edx,20
>0069A2B5    jno         0069A2BC
 0069A2B7    call        @IntOver
 0069A2BC    lea         ecx,[eax+edx*8-8FC]
 0069A2C3    movzx       edx,word ptr [ebp-0A]
 0069A2C7    cmp         edx,0FF
>0069A2CD    jbe         0069A2D4
 0069A2CF    call        @BoundErr
 0069A2D4    movzx       eax,bx
 0069A2D7    cmp         eax,0FF
>0069A2DC    jbe         0069A2E3
 0069A2DE    call        @BoundErr
 0069A2E3    call        00699A5C
 0069A2E8    pop         ecx
>0069A2E9    jmp         0069A47B
 0069A2EE    push        ebp
 0069A2EF    lea         edx,[ebp-10A]
 0069A2F5    push        edx
 0069A2F6    mov         edx,dword ptr [ebp-8]
 0069A2F9    lea         eax,[edx+eax*4]
 0069A2FC    movzx       edx,word ptr [ebp-0A]
 0069A300    dec         edx
 0069A301    cmp         edx,0F
>0069A304    jbe         0069A30B
 0069A306    call        @BoundErr
 0069A30B    inc         edx
 0069A30C    imul        edx,edx,20
>0069A30F    jno         0069A316
 0069A311    call        @IntOver
 0069A316    lea         ecx,[eax+edx*8-8FC]
 0069A31D    movzx       edx,word ptr [ebp-0A]
 0069A321    cmp         edx,0FF
>0069A327    jbe         0069A32E
 0069A329    call        @BoundErr
 0069A32E    movzx       eax,bx
 0069A331    cmp         eax,0FF
>0069A336    jbe         0069A33D
 0069A338    call        @BoundErr
 0069A33D    call        00699D4C
 0069A342    pop         ecx
>0069A343    jmp         0069A47B
 0069A348    push        ebp
 0069A349    lea         edx,[ebp-10A]
 0069A34F    push        edx
 0069A350    mov         edx,dword ptr [ebp-8]
 0069A353    lea         eax,[edx+eax*4]
 0069A356    movzx       edx,word ptr [ebp-0A]
 0069A35A    sub         edx,20
>0069A35D    jno         0069A364
 0069A35F    call        @IntOver
 0069A364    dec         edx
 0069A365    cmp         edx,0B
>0069A368    jbe         0069A36F
 0069A36A    call        @BoundErr
 0069A36F    inc         edx
 0069A370    imul        edx,edx,20
>0069A373    jno         0069A37A
 0069A375    call        @IntOver
 0069A37A    lea         ecx,[eax+edx*8-8FC]
 0069A381    movzx       edx,word ptr [ebp-0A]
 0069A385    cmp         edx,0FF
>0069A38B    jbe         0069A392
 0069A38D    call        @BoundErr
 0069A392    movzx       eax,bx
 0069A395    cmp         eax,0FF
>0069A39A    jbe         0069A3A1
 0069A39C    call        @BoundErr
 0069A3A1    call        00699E54
 0069A3A6    pop         ecx
>0069A3A7    jmp         0069A47B
 0069A3AC    movzx       edx,word ptr [ebp-0A]
 0069A3B0    dec         edx
 0069A3B1    sub         dx,4
>0069A3B5    jb          0069A3C5
 0069A3B7    add         edx,0FFFFFFC4
 0069A3BA    sub         dx,3
>0069A3BE    jb          0069A41C
>0069A3C0    jmp         0069A47B
 0069A3C5    push        ebp
 0069A3C6    lea         edx,[ebp-10A]
 0069A3CC    push        edx
 0069A3CD    mov         edx,dword ptr [ebp-8]
 0069A3D0    lea         eax,[edx+eax*4]
 0069A3D3    movzx       edx,word ptr [ebp-0A]
 0069A3D7    dec         edx
 0069A3D8    cmp         edx,3
>0069A3DB    jbe         0069A3E2
 0069A3DD    call        @BoundErr
 0069A3E2    inc         edx
 0069A3E3    imul        edx,edx,20
>0069A3E6    jno         0069A3ED
 0069A3E8    call        @IntOver
 0069A3ED    lea         ecx,[eax+edx*8-5FC]
 0069A3F4    movzx       edx,word ptr [ebp-0A]
 0069A3F8    cmp         edx,0FF
>0069A3FE    jbe         0069A405
 0069A400    call        @BoundErr
 0069A405    movzx       eax,bx
 0069A408    cmp         eax,0FF
>0069A40D    jbe         0069A414
 0069A40F    call        @BoundErr
 0069A414    call        00699D4C
 0069A419    pop         ecx
>0069A41A    jmp         0069A47B
 0069A41C    push        ebp
 0069A41D    lea         edx,[ebp-10A]
 0069A423    push        edx
 0069A424    mov         edx,dword ptr [ebp-8]
 0069A427    lea         eax,[edx+eax*4]
 0069A42A    movzx       edx,word ptr [ebp-0A]
 0069A42E    sub         edx,40
>0069A431    jno         0069A438
 0069A433    call        @IntOver
 0069A438    dec         edx
 0069A439    cmp         edx,2
>0069A43C    jbe         0069A443
 0069A43E    call        @BoundErr
 0069A443    inc         edx
 0069A444    imul        edx,edx,20
>0069A447    jno         0069A44E
 0069A449    call        @IntOver
 0069A44E    lea         ecx,[eax+edx*8-8FC]
 0069A455    movzx       edx,word ptr [ebp-0A]
 0069A459    cmp         edx,0FF
>0069A45F    jbe         0069A466
 0069A461    call        @BoundErr
 0069A466    movzx       eax,bx
 0069A469    cmp         eax,0FF
>0069A46E    jbe         0069A475
 0069A470    call        @BoundErr
 0069A475    call        00699A5C
 0069A47A    pop         ecx
 0069A47B    dec         edi
 0069A47C    sub         di,5
>0069A480    jb          0069A49C
 0069A482    sub         di,3
>0069A486    jb          0069A4B7
 0069A488    add         edi,0FFFFFFE9
 0069A48B    sub         di,2
>0069A48F    jb          0069A4B7
 0069A491    add         edi,0FFFFFFE2
 0069A494    sub         di,9
>0069A498    jb          0069A4B7
>0069A49A    jmp         0069A4EB
 0069A49C    lea         edx,[esi+1]
 0069A49F    lea         eax,[ebp-10A]
 0069A4A5    mov         ecx,63
 0069A4AA    call        Move
 0069A4AF    mov         eax,dword ptr [ebp+0C]
 0069A4B2    mov         byte ptr [eax],64
>0069A4B5    jmp         0069A502
 0069A4B7    mov         byte ptr [esi+1],7F
 0069A4BB    movzx       eax,byte ptr [ebp-1]
 0069A4BF    mov         byte ptr [esi+2],al
 0069A4C2    movzx       eax,byte ptr [ebp-0B]
 0069A4C6    mov         byte ptr [esi+3],al
 0069A4C9    movzx       eax,byte ptr [ebp-0C]
 0069A4CD    mov         byte ptr [esi+4],al
 0069A4D0    lea         edx,[esi+5]
 0069A4D3    lea         eax,[ebp-10A]
 0069A4D9    mov         ecx,7A
 0069A4DE    call        Move
 0069A4E3    mov         eax,dword ptr [ebp+0C]
 0069A4E6    mov         byte ptr [eax],7F
>0069A4E9    jmp         0069A502
 0069A4EB    mov         ecx,dword ptr ds:[7C29E8];^'IO Data encoding error!'
 0069A4F1    mov         dl,1
 0069A4F3    mov         eax,[004174D0];Exception
 0069A4F8    call        Exception.Create;Exception.Create
 0069A4FD    call        @RaiseExcept
 0069A502    mov         al,1
 0069A504    pop         edi
 0069A505    pop         esi
 0069A506    pop         ebx
 0069A507    mov         esp,ebp
 0069A509    pop         ebp
 0069A50A    ret         0C
*}
end;

//0069A510
{*procedure sub_0069A510(?:?; ?:?; ?:?; ?:?);
begin
 0069A510    push        ebp
 0069A511    mov         ebp,esp
 0069A513    add         esp,0FFFFFFF8
 0069A516    push        ebx
 0069A517    push        esi
 0069A518    push        edi
 0069A519    mov         ebx,dword ptr [ebp+8]
 0069A51C    test        ebx,ebx
>0069A51E    js          0069A52A
 0069A520    shr         ebx,2
 0069A523    mov         esi,dword ptr [ecx+ebx*4]
 0069A526    dec         ebx
 0069A527    push        esi
>0069A528    jns         0069A523
 0069A52A    mov         ecx,esp
 0069A52C    mov         dword ptr [ebp-5],ecx
 0069A52F    mov         byte ptr [ebp-1],al
 0069A532    mov         esi,dword ptr [ebp+8]
 0069A535    mov         eax,edx
 0069A537    mov         ecx,esi
 0069A539    cmp         ecx,0FF
>0069A53F    jbe         0069A546
 0069A541    call        @BoundErr
 0069A546    sub         cl,al
>0069A548    jb          0069A589
 0069A54A    inc         ecx
 0069A54B    movzx       ebx,al
 0069A54E    test        ebx,ebx
>0069A550    jl          0069A556
 0069A552    cmp         ebx,esi
>0069A554    jle         0069A55B
 0069A556    call        @BoundErr
 0069A55B    mov         edi,dword ptr [ebp-5]
 0069A55E    movzx       ebx,byte ptr [edi+ebx]
 0069A562    cmp         bl,byte ptr [ebp-1]
>0069A565    jne         0069A584
 0069A567    movzx       eax,al
 0069A56A    movzx       edx,dl
 0069A56D    sub         eax,edx
>0069A56F    jno         0069A576
 0069A571    call        @IntOver
 0069A576    cmp         eax,0FF
>0069A57B    jbe         0069A5A3
 0069A57D    call        @BoundErr
>0069A582    jmp         0069A5A3
 0069A584    inc         eax
 0069A585    dec         cl
>0069A587    jne         0069A54B
 0069A589    mov         eax,esi
 0069A58B    movzx       edx,dl
 0069A58E    sub         eax,edx
>0069A590    jno         0069A597
 0069A592    call        @IntOver
 0069A597    cmp         eax,0FF
>0069A59C    jbe         0069A5A3
 0069A59E    call        @BoundErr
 0069A5A3    mov         edi,dword ptr [ebp-14]
 0069A5A6    mov         esi,dword ptr [ebp-10]
 0069A5A9    mov         ebx,dword ptr [ebp-0C]
 0069A5AC    mov         esp,ebp
 0069A5AE    pop         ebp
 0069A5AF    ret         4
end;*}

//0069A5B4
{*function sub_0069A5B4(?:Integer; ?:Byte; ?:?):?;
begin
 0069A5B4    push        ebp
 0069A5B5    mov         ebp,esp
 0069A5B7    add         esp,0FFFFFEFC
 0069A5BD    push        ebx
 0069A5BE    push        esi
 0069A5BF    mov         ebx,edx
 0069A5C1    mov         dword ptr [ebp-4],eax
 0069A5C4    mov         eax,dword ptr [ebp-4]
 0069A5C7    xor         ecx,ecx
 0069A5C9    mov         edx,100
 0069A5CE    call        @FillChar
 0069A5D3    push        1C
 0069A5D5    mov         ecx,7C2890;gvar_007C2890
 0069A5DA    movzx       eax,byte ptr [ebx+2]
 0069A5DE    xor         edx,edx
 0069A5E0    call        0069A510
 0069A5E5    mov         edx,dword ptr [ebp-4]
 0069A5E8    mov         byte ptr [edx],al
 0069A5EA    test        byte ptr [ebx+3],1
 0069A5EE    seta        al
 0069A5F1    mov         edx,dword ptr [ebp-4]
 0069A5F4    mov         byte ptr [edx+4],al
 0069A5F7    test        byte ptr [ebx+3],2
 0069A5FB    seta        al
 0069A5FE    mov         edx,dword ptr [ebp-4]
 0069A601    mov         byte ptr [edx+1],al
 0069A604    mov         eax,dword ptr [ebp+8]
 0069A607    movzx       eax,byte ptr [eax-1]
 0069A60B    sub         al,1
>0069A60D    jb          0069A618
 0069A60F    dec         al
>0069A611    je          0069A656
>0069A613    jmp         0069A888
 0069A618    movzx       eax,byte ptr [ebx+4]
 0069A61C    mov         edx,dword ptr [ebp-4]
 0069A61F    mov         word ptr [edx+8],ax
 0069A623    movzx       eax,byte ptr [ebx+5]
 0069A627    mov         edx,dword ptr [ebp-4]
 0069A62A    mov         word ptr [edx+0A],ax
 0069A62E    lea         eax,[ebp-104]
 0069A634    lea         edx,[ebx+26]
 0069A637    call        @_CToPasStr
 0069A63C    lea         edx,[ebp-104]
 0069A642    mov         eax,dword ptr [ebp-4]
 0069A645    add         eax,0C2
 0069A64A    mov         cl,3C
 0069A64C    call        @PStrNCpy
>0069A651    jmp         0069A888
 0069A656    movzx       eax,byte ptr [ebx+4]
 0069A65A    mov         edx,100
 0069A65F    mul         eax,edx
>0069A661    jno         0069A668
 0069A663    call        @IntOver
 0069A668    movzx       edx,byte ptr [ebx+5]
 0069A66C    add         eax,edx
>0069A66E    jno         0069A675
 0069A670    call        @IntOver
 0069A675    cmp         eax,0FFFF
>0069A67A    jbe         0069A681
 0069A67C    call        @BoundErr
 0069A681    mov         edx,dword ptr [ebp-4]
 0069A684    mov         word ptr [edx+8],ax
 0069A688    movzx       eax,byte ptr [ebx+6]
 0069A68C    mov         edx,100
 0069A691    mul         eax,edx
>0069A693    jno         0069A69A
 0069A695    call        @IntOver
 0069A69A    movzx       edx,byte ptr [ebx+7]
 0069A69E    add         eax,edx
>0069A6A0    jno         0069A6A7
 0069A6A2    call        @IntOver
 0069A6A7    cmp         eax,0FFFF
>0069A6AC    jbe         0069A6B3
 0069A6AE    call        @BoundErr
 0069A6B3    mov         edx,dword ptr [ebp-4]
 0069A6B6    mov         word ptr [edx+0A],ax
 0069A6BA    movzx       eax,byte ptr [ebx+0A]
 0069A6BE    mov         edx,100
 0069A6C3    mul         eax,edx
>0069A6C5    jno         0069A6CC
 0069A6C7    call        @IntOver
 0069A6CC    movzx       edx,byte ptr [ebx+0B]
 0069A6D0    add         eax,edx
>0069A6D2    jno         0069A6D9
 0069A6D4    call        @IntOver
 0069A6D9    cmp         eax,0FFFF
>0069A6DE    jbe         0069A6E5
 0069A6E0    call        @BoundErr
 0069A6E5    mov         edx,dword ptr [ebp-4]
 0069A6E8    mov         word ptr [edx+6],ax
 0069A6EC    xor         esi,esi
 0069A6EE    mov         ecx,dword ptr [ebp-4]
 0069A6F1    add         ecx,90
 0069A6F7    imul        eax,esi,6
>0069A6FA    jno         0069A701
 0069A6FC    call        @IntOver
 0069A701    add         eax,0D
>0069A704    jno         0069A70B
 0069A706    call        @IntOver
 0069A70B    dec         eax
 0069A70C    cmp         eax,0FD
>0069A711    jbe         0069A718
 0069A713    call        @BoundErr
 0069A718    inc         eax
 0069A719    movzx       eax,byte ptr [ebx+eax-1]
 0069A71E    mov         edx,100
 0069A723    mul         eax,edx
>0069A725    jno         0069A72C
 0069A727    call        @IntOver
 0069A72C    imul        edx,esi,6
>0069A72F    jno         0069A736
 0069A731    call        @IntOver
 0069A736    add         edx,0E
>0069A739    jno         0069A740
 0069A73B    call        @IntOver
 0069A740    dec         edx
 0069A741    cmp         edx,0FD
>0069A747    jbe         0069A74E
 0069A749    call        @BoundErr
 0069A74E    inc         edx
 0069A74F    movzx       edx,byte ptr [ebx+edx-1]
 0069A754    add         eax,edx
>0069A756    jno         0069A75D
 0069A758    call        @IntOver
 0069A75D    cmp         eax,0FFFF
>0069A762    jbe         0069A769
 0069A764    call        @BoundErr
 0069A769    mov         word ptr [ecx],ax
 0069A76C    imul        eax,esi,6
>0069A76F    jno         0069A776
 0069A771    call        @IntOver
 0069A776    add         eax,0F
>0069A779    jno         0069A780
 0069A77B    call        @IntOver
 0069A780    dec         eax
 0069A781    cmp         eax,0FD
>0069A786    jbe         0069A78D
 0069A788    call        @BoundErr
 0069A78D    inc         eax
 0069A78E    movzx       eax,byte ptr [ebx+eax-1]
 0069A793    mov         edx,100
 0069A798    mul         eax,edx
>0069A79A    jno         0069A7A1
 0069A79C    call        @IntOver
 0069A7A1    imul        edx,esi,6
>0069A7A4    jno         0069A7AB
 0069A7A6    call        @IntOver
 0069A7AB    add         edx,10
>0069A7AE    jno         0069A7B5
 0069A7B0    call        @IntOver
 0069A7B5    dec         edx
 0069A7B6    cmp         edx,0FD
>0069A7BC    jbe         0069A7C3
 0069A7BE    call        @BoundErr
 0069A7C3    inc         edx
 0069A7C4    movzx       edx,byte ptr [ebx+edx-1]
 0069A7C9    add         eax,edx
>0069A7CB    jno         0069A7D2
 0069A7CD    call        @IntOver
 0069A7D2    cmp         eax,0FFFF
>0069A7D7    jbe         0069A7DE
 0069A7D9    call        @BoundErr
 0069A7DE    mov         word ptr [ecx+2],ax
 0069A7E2    imul        eax,esi,6
>0069A7E5    jno         0069A7EC
 0069A7E7    call        @IntOver
 0069A7EC    add         eax,11
>0069A7EF    jno         0069A7F6
 0069A7F1    call        @IntOver
 0069A7F6    dec         eax
 0069A7F7    cmp         eax,0FD
>0069A7FC    jbe         0069A803
 0069A7FE    call        @BoundErr
 0069A803    inc         eax
 0069A804    movzx       eax,byte ptr [ebx+eax-1]
 0069A809    mov         edx,100
 0069A80E    mul         eax,edx
>0069A810    jno         0069A817
 0069A812    call        @IntOver
 0069A817    imul        edx,esi,6
>0069A81A    jno         0069A821
 0069A81C    call        @IntOver
 0069A821    add         edx,12
>0069A824    jno         0069A82B
 0069A826    call        @IntOver
 0069A82B    dec         edx
 0069A82C    cmp         edx,0FD
>0069A832    jbe         0069A839
 0069A834    call        @BoundErr
 0069A839    inc         edx
 0069A83A    movzx       edx,byte ptr [ebx+edx-1]
 0069A83F    add         eax,edx
>0069A841    jno         0069A848
 0069A843    call        @IntOver
 0069A848    cmp         eax,0FFFF
>0069A84D    jbe         0069A854
 0069A84F    call        @BoundErr
 0069A854    mov         word ptr [ecx+4],ax
 0069A858    inc         esi
 0069A859    add         ecx,6
 0069A85C    cmp         esi,7
>0069A85F    jne         0069A6F7
 0069A865    lea         eax,[ebp-104]
 0069A86B    lea         edx,[ebx+3D]
 0069A86E    call        @_CToPasStr
 0069A873    lea         edx,[ebp-104]
 0069A879    mov         eax,dword ptr [ebp-4]
 0069A87C    add         eax,0C2
 0069A881    mov         cl,3C
 0069A883    call        @PStrNCpy
 0069A888    pop         esi
 0069A889    pop         ebx
 0069A88A    mov         esp,ebp
 0069A88C    pop         ebp
 0069A88D    ret
end;*}

//0069A890
{*procedure sub_0069A890(?:Integer; ?:Byte; ?:?);
begin
 0069A890    push        ebp
 0069A891    mov         ebp,esp
 0069A893    add         esp,0FFFFFF00
 0069A899    push        ebx
 0069A89A    push        esi
 0069A89B    push        edi
 0069A89C    mov         esi,edx
 0069A89E    mov         ebx,eax
 0069A8A0    mov         eax,ebx
 0069A8A2    xor         ecx,ecx
 0069A8A4    mov         edx,100
 0069A8A9    call        @FillChar
 0069A8AE    movzx       edx,byte ptr [esi+2]
 0069A8B2    mov         eax,dword ptr [ebp+8]
 0069A8B5    mov         eax,dword ptr [eax-8]
 0069A8B8    call        0069B488
 0069A8BD    mov         byte ptr [ebx],al
 0069A8BF    mov         eax,dword ptr [ebp+8]
 0069A8C2    movzx       eax,byte ptr [eax-1]
 0069A8C6    sub         al,1
>0069A8C8    jb          0069A8D3
 0069A8CA    dec         al
>0069A8CC    je          0069A921
>0069A8CE    jmp         0069A9B9
 0069A8D3    test        byte ptr [esi+6],1
>0069A8D7    jbe         0069A8DF
 0069A8D9    mov         byte ptr [ebx+10],1
>0069A8DD    jmp         0069A8FB
 0069A8DF    test        byte ptr [esi+25],8
>0069A8E3    jbe         0069A8EB
 0069A8E5    mov         byte ptr [ebx+10],2
>0069A8E9    jmp         0069A8FB
 0069A8EB    lea         edx,[ebx+12]
 0069A8EE    lea         eax,[esi+6]
 0069A8F1    mov         ecx,20
 0069A8F6    call        Move
 0069A8FB    lea         eax,[ebp-100]
 0069A901    lea         edx,[esi+26]
 0069A904    call        @_CToPasStr
 0069A909    lea         edx,[ebp-100]
 0069A90F    lea         eax,[ebx+0C2]
 0069A915    mov         cl,3C
 0069A917    call        @PStrNCpy
>0069A91C    jmp         0069A9B9
 0069A921    movzx       eax,byte ptr [esi+8]
 0069A925    mov         edx,100
 0069A92A    mul         eax,edx
 0069A92C    mov         edi,eax
>0069A92E    jno         0069A935
 0069A930    call        @IntOver
 0069A935    movzx       eax,byte ptr [esi+9]
 0069A939    add         edi,eax
>0069A93B    jno         0069A942
 0069A93D    call        @IntOver
 0069A942    cmp         edi,0FFFF
>0069A948    jbe         0069A94F
 0069A94A    call        @BoundErr
 0069A94F    mov         word ptr [ebx+0C],di
 0069A953    movzx       eax,di
 0069A956    mov         edx,dword ptr ds:[7C47B0];^gvar_008DF5B0:TCGData
 0069A95C    mov         edx,dword ptr [edx]
 0069A95E    cmp         eax,dword ptr [edx+8]
>0069A961    jge         0069A981
 0069A963    movzx       edx,di
 0069A966    mov         eax,[007C47B0];^gvar_008DF5B0:TCGData
 0069A96B    mov         eax,dword ptr [eax]
 0069A96D    call        TCGData.GetCGRec
 0069A972    lea         edx,[ebx+0E]
 0069A975    mov         ecx,82
 0069A97A    call        Move
>0069A97F    jmp         0069A992
 0069A981    cmp         word ptr [ebx+0C],0FFFF
>0069A987    jne         0069A992
 0069A989    cmp         byte ptr [ebx],0
>0069A98C    je          0069A992
 0069A98E    mov         byte ptr [ebx+10],1
 0069A992    mov         word ptr [ebx+0C],0
 0069A998    lea         eax,[ebp-100]
 0069A99E    lea         edx,[esi+3D]
 0069A9A1    call        @_CToPasStr
 0069A9A6    lea         edx,[ebp-100]
 0069A9AC    lea         eax,[ebx+0C2]
 0069A9B2    mov         cl,3C
 0069A9B4    call        @PStrNCpy
 0069A9B9    pop         edi
 0069A9BA    pop         esi
 0069A9BB    pop         ebx
 0069A9BC    mov         esp,ebp
 0069A9BE    pop         ebp
 0069A9BF    ret
end;*}

//0069A9C0
{*procedure sub_0069A9C0(?:Integer; ?:Byte; ?:?);
begin
 0069A9C0    push        ebp
 0069A9C1    mov         ebp,esp
 0069A9C3    add         esp,0FFFFFF00
 0069A9C9    push        ebx
 0069A9CA    push        esi
 0069A9CB    push        edi
 0069A9CC    mov         esi,edx
 0069A9CE    mov         ebx,eax
 0069A9D0    mov         eax,ebx
 0069A9D2    xor         ecx,ecx
 0069A9D4    mov         edx,100
 0069A9D9    call        @FillChar
 0069A9DE    movzx       edx,byte ptr [esi+2]
 0069A9E2    mov         eax,dword ptr [ebp+8]
 0069A9E5    mov         eax,dword ptr [eax-8]
 0069A9E8    call        0069B488
 0069A9ED    mov         byte ptr [ebx],al
 0069A9EF    movzx       eax,byte ptr [esi+3]
 0069A9F3    and         al,6
 0069A9F5    movzx       eax,al
 0069A9F8    shr         eax,1
 0069A9FA    cmp         eax,0FF
>0069A9FF    jbe         0069AA06
 0069AA01    call        @BoundErr
 0069AA06    mov         byte ptr [ebx+4],al
 0069AA09    test        byte ptr [esi+3],1
 0069AA0D    setne       al
 0069AA10    mov         byte ptr [ebx+1],al
 0069AA13    mov         eax,dword ptr [ebp+8]
 0069AA16    movzx       eax,byte ptr [eax-1]
 0069AA1A    sub         al,1
>0069AA1C    jb          0069AA27
 0069AA1E    dec         al
>0069AA20    je          0069AA75
>0069AA22    jmp         0069AB0D
 0069AA27    test        byte ptr [esi+6],1
>0069AA2B    jbe         0069AA33
 0069AA2D    mov         byte ptr [ebx+10],1
>0069AA31    jmp         0069AA4F
 0069AA33    test        byte ptr [esi+25],8
>0069AA37    jbe         0069AA3F
 0069AA39    mov         byte ptr [ebx+10],2
>0069AA3D    jmp         0069AA4F
 0069AA3F    lea         edx,[ebx+12]
 0069AA42    lea         eax,[esi+6]
 0069AA45    mov         ecx,20
 0069AA4A    call        Move
 0069AA4F    lea         eax,[ebp-100]
 0069AA55    lea         edx,[esi+26]
 0069AA58    call        @_CToPasStr
 0069AA5D    lea         edx,[ebp-100]
 0069AA63    lea         eax,[ebx+0C2]
 0069AA69    mov         cl,3C
 0069AA6B    call        @PStrNCpy
>0069AA70    jmp         0069AB0D
 0069AA75    movzx       eax,byte ptr [esi+8]
 0069AA79    mov         edx,100
 0069AA7E    mul         eax,edx
 0069AA80    mov         edi,eax
>0069AA82    jno         0069AA89
 0069AA84    call        @IntOver
 0069AA89    movzx       eax,byte ptr [esi+9]
 0069AA8D    add         edi,eax
>0069AA8F    jno         0069AA96
 0069AA91    call        @IntOver
 0069AA96    cmp         edi,0FFFF
>0069AA9C    jbe         0069AAA3
 0069AA9E    call        @BoundErr
 0069AAA3    mov         word ptr [ebx+0C],di
 0069AAA7    movzx       eax,di
 0069AAAA    mov         edx,dword ptr ds:[7C47B0];^gvar_008DF5B0:TCGData
 0069AAB0    mov         edx,dword ptr [edx]
 0069AAB2    cmp         eax,dword ptr [edx+8]
>0069AAB5    jge         0069AAD5
 0069AAB7    movzx       edx,di
 0069AABA    mov         eax,[007C47B0];^gvar_008DF5B0:TCGData
 0069AABF    mov         eax,dword ptr [eax]
 0069AAC1    call        TCGData.GetCGRec
 0069AAC6    lea         edx,[ebx+0E]
 0069AAC9    mov         ecx,82
 0069AACE    call        Move
>0069AAD3    jmp         0069AAE6
 0069AAD5    cmp         word ptr [ebx+0C],0FFFF
>0069AADB    jne         0069AAE6
 0069AADD    cmp         byte ptr [ebx],0
>0069AAE0    je          0069AAE6
 0069AAE2    mov         byte ptr [ebx+10],1
 0069AAE6    mov         word ptr [ebx+0C],0
 0069AAEC    lea         eax,[ebp-100]
 0069AAF2    lea         edx,[esi+3D]
 0069AAF5    call        @_CToPasStr
 0069AAFA    lea         edx,[ebp-100]
 0069AB00    lea         eax,[ebx+0C2]
 0069AB06    mov         cl,3C
 0069AB08    call        @PStrNCpy
 0069AB0D    pop         edi
 0069AB0E    pop         esi
 0069AB0F    pop         ebx
 0069AB10    mov         esp,ebp
 0069AB12    pop         ebp
 0069AB13    ret
end;*}

//0069AB14
procedure TFXPIO.DecodeFXIOMsg(MsgLen:Byte; MsgData:TMsgData);
begin
{*
 0069AB14    push        ebp
 0069AB15    mov         ebp,esp
 0069AB17    add         esp,0FFFFFEF8
 0069AB1D    push        ebx
 0069AB1E    push        esi
 0069AB1F    mov         esi,ecx
 0069AB21    mov         ebx,edx
 0069AB23    mov         dword ptr [ebp-8],eax
 0069AB26    lea         eax,[ebp-106]
 0069AB2C    xor         ecx,ecx
 0069AB2E    mov         edx,0FE
 0069AB33    call        @FillChar
 0069AB38    movzx       eax,byte ptr [esi+1]
 0069AB3C    sub         al,7F
>0069AB3E    jne         0069AB64
 0069AB40    movzx       eax,byte ptr [esi+2]
 0069AB44    mov         byte ptr [ebp-1],al
 0069AB47    movzx       ecx,bl
 0069AB4A    sub         ecx,5
>0069AB4D    jno         0069AB54
 0069AB4F    call        @IntOver
 0069AB54    lea         edx,[ebp-106]
 0069AB5A    lea         eax,[esi+5]
 0069AB5D    call        Move
>0069AB62    jmp         0069AB83
 0069AB64    mov         byte ptr [ebp-1],0
 0069AB68    movzx       ecx,bl
 0069AB6B    sub         ecx,1
>0069AB6E    jno         0069AB75
 0069AB70    call        @IntOver
 0069AB75    lea         edx,[ebp-106]
 0069AB7B    lea         eax,[esi+1]
 0069AB7E    call        Move
 0069AB83    movzx       eax,byte ptr [ebp-1]
 0069AB87    not         al
 0069AB89    sub         al,3
>0069AB8B    jae         0069ABA2
 0069AB8D    push        0
 0069AB8F    movzx       ecx,word ptr ds:[69AECC];0x4 gvar_0069AECC
 0069AB96    xor         edx,edx
 0069AB98    mov         eax,69AEDC;'Unknown version in decoded IO data'
 0069AB9D    call        MessageDlg
 0069ABA2    movzx       eax,byte ptr [ebp-106]
 0069ABA9    movzx       edx,byte ptr [ebp-105]
 0069ABB0    mov         ecx,eax
 0069ABB2    sub         cl,1
>0069ABB5    jb          0069ABC5
 0069ABB7    sub         cl,4
>0069ABBA    jb          0069AC8C
>0069ABC0    jmp         0069AEC3
 0069ABC5    mov         eax,edx
 0069ABC7    dec         eax
 0069ABC8    sub         al,20
>0069ABCA    jb          0069ABD9
 0069ABCC    sub         al,20
>0069ABCE    jb          0069AC0E
 0069ABD0    sub         al,20
>0069ABD2    jb          0069AC4D
>0069ABD4    jmp         0069AEC3
 0069ABD9    push        ebp
 0069ABDA    movzx       eax,dl
 0069ABDD    dec         eax
 0069ABDE    cmp         eax,2
>0069ABE1    jbe         0069ABE8
 0069ABE3    call        @BoundErr
 0069ABE8    inc         eax
 0069ABE9    imul        eax,eax,20
>0069ABEC    jno         0069ABF3
 0069ABEE    call        @IntOver
 0069ABF3    mov         edx,dword ptr [ebp-8]
 0069ABF6    lea         eax,[edx+eax*8+104]
 0069ABFD    lea         edx,[ebp-106]
 0069AC03    call        0069A890
 0069AC08    pop         ecx
>0069AC09    jmp         0069AEC3
 0069AC0E    push        ebp
 0069AC0F    movzx       eax,dl
 0069AC12    sub         eax,20
>0069AC15    jno         0069AC1C
 0069AC17    call        @IntOver
 0069AC1C    dec         eax
 0069AC1D    cmp         eax,0
>0069AC20    jbe         0069AC27
 0069AC22    call        @BoundErr
 0069AC27    inc         eax
 0069AC28    imul        eax,eax,20
>0069AC2B    jno         0069AC32
 0069AC2D    call        @IntOver
 0069AC32    mov         edx,dword ptr [ebp-8]
 0069AC35    lea         eax,[edx+eax*8+404]
 0069AC3C    lea         edx,[ebp-106]
 0069AC42    call        0069A9C0
 0069AC47    pop         ecx
>0069AC48    jmp         0069AEC3
 0069AC4D    push        ebp
 0069AC4E    movzx       eax,dl
 0069AC51    sub         eax,40
>0069AC54    jno         0069AC5B
 0069AC56    call        @IntOver
 0069AC5B    dec         eax
 0069AC5C    cmp         eax,1
>0069AC5F    jbe         0069AC66
 0069AC61    call        @BoundErr
 0069AC66    inc         eax
 0069AC67    imul        eax,eax,20
>0069AC6A    jno         0069AC71
 0069AC6C    call        @IntOver
 0069AC71    mov         edx,dword ptr [ebp-8]
 0069AC74    lea         eax,[edx+eax*8-0FC]
 0069AC7B    lea         edx,[ebp-106]
 0069AC81    call        0069A5B4
 0069AC86    pop         ecx
>0069AC87    jmp         0069AEC3
 0069AC8C    movzx       ecx,al
 0069AC8F    dec         ecx
 0069AC90    cmp         ecx,3
>0069AC93    jbe         0069AC9A
 0069AC95    call        @BoundErr
 0069AC9A    inc         ecx
 0069AC9B    imul        ecx,ecx,401
>0069ACA1    jno         0069ACA8
 0069ACA3    call        @IntOver
 0069ACA8    mov         ebx,dword ptr [ebp-8]
 0069ACAB    movzx       ebx,word ptr [ebx+ecx*4-800]
 0069ACB3    dec         bx
>0069ACB6    je          0069ACD8
 0069ACB8    dec         bx
>0069ACBB    je          0069ADAB
 0069ACC1    dec         bx
>0069ACC4    je          0069ADEF
 0069ACCA    dec         bx
>0069ACCD    je          0069AE3F
>0069ACD3    jmp         0069AEC3
 0069ACD8    mov         ebx,edx
 0069ACDA    dec         ebx
 0069ACDB    sub         bl,20
>0069ACDE    jb          0069ACEF
 0069ACE0    sub         bl,20
>0069ACE3    jb          0069AD27
 0069ACE5    sub         bl,20
>0069ACE8    jb          0069AD69
>0069ACEA    jmp         0069AEC3
 0069ACEF    push        ebp
 0069ACF0    mov         eax,dword ptr [ebp-8]
 0069ACF3    lea         esi,[eax+ecx*4]
 0069ACF6    movzx       eax,dl
 0069ACF9    dec         eax
 0069ACFA    cmp         eax,1
>0069ACFD    jbe         0069AD04
 0069ACFF    call        @BoundErr
 0069AD04    inc         eax
 0069AD05    imul        eax,eax,20
>0069AD08    jno         0069AD0F
 0069AD0A    call        @IntOver
 0069AD0F    lea         eax,[esi+eax*8-4FC]
 0069AD16    lea         edx,[ebp-106]
 0069AD1C    call        0069A890
 0069AD21    pop         ecx
>0069AD22    jmp         0069AEC3
 0069AD27    push        ebp
 0069AD28    mov         eax,dword ptr [ebp-8]
 0069AD2B    lea         esi,[eax+ecx*4]
 0069AD2E    movzx       eax,dl
 0069AD31    sub         eax,20
>0069AD34    jno         0069AD3B
 0069AD36    call        @IntOver
 0069AD3B    dec         eax
 0069AD3C    cmp         eax,3
>0069AD3F    jbe         0069AD46
 0069AD41    call        @BoundErr
 0069AD46    inc         eax
 0069AD47    imul        eax,eax,20
>0069AD4A    jno         0069AD51
 0069AD4C    call        @IntOver
 0069AD51    lea         eax,[esi+eax*8-2FC]
 0069AD58    lea         edx,[ebp-106]
 0069AD5E    call        0069A9C0
 0069AD63    pop         ecx
>0069AD64    jmp         0069AEC3
 0069AD69    push        ebp
 0069AD6A    mov         eax,dword ptr [ebp-8]
 0069AD6D    lea         esi,[eax+ecx*4]
 0069AD70    movzx       eax,dl
 0069AD73    sub         eax,40
>0069AD76    jno         0069AD7D
 0069AD78    call        @IntOver
 0069AD7D    dec         eax
 0069AD7E    cmp         eax,3
>0069AD81    jbe         0069AD88
 0069AD83    call        @BoundErr
 0069AD88    inc         eax
 0069AD89    imul        eax,eax,20
>0069AD8C    jno         0069AD93
 0069AD8E    call        @IntOver
 0069AD93    lea         eax,[esi+eax*8-8FC]
 0069AD9A    lea         edx,[ebp-106]
 0069ADA0    call        0069A5B4
 0069ADA5    pop         ecx
>0069ADA6    jmp         0069AEC3
 0069ADAB    mov         ebx,edx
 0069ADAD    dec         ebx
 0069ADAE    sub         bl,20
>0069ADB1    jae         0069AEC3
 0069ADB7    push        ebp
 0069ADB8    mov         eax,dword ptr [ebp-8]
 0069ADBB    lea         esi,[eax+ecx*4]
 0069ADBE    movzx       eax,dl
 0069ADC1    dec         eax
 0069ADC2    cmp         eax,0F
>0069ADC5    jbe         0069ADCC
 0069ADC7    call        @BoundErr
 0069ADCC    inc         eax
 0069ADCD    imul        eax,eax,20
>0069ADD0    jno         0069ADD7
 0069ADD2    call        @IntOver
 0069ADD7    lea         eax,[esi+eax*8-8FC]
 0069ADDE    lea         edx,[ebp-106]
 0069ADE4    call        0069A890
 0069ADE9    pop         ecx
>0069ADEA    jmp         0069AEC3
 0069ADEF    mov         ebx,edx
 0069ADF1    add         bl,0DF
 0069ADF4    sub         bl,20
>0069ADF7    jae         0069AEC3
 0069ADFD    push        ebp
 0069ADFE    mov         eax,dword ptr [ebp-8]
 0069AE01    lea         esi,[eax+ecx*4]
 0069AE04    movzx       eax,dl
 0069AE07    sub         eax,20
>0069AE0A    jno         0069AE11
 0069AE0C    call        @IntOver
 0069AE11    dec         eax
 0069AE12    cmp         eax,0B
>0069AE15    jbe         0069AE1C
 0069AE17    call        @BoundErr
 0069AE1C    inc         eax
 0069AE1D    imul        eax,eax,20
>0069AE20    jno         0069AE27
 0069AE22    call        @IntOver
 0069AE27    lea         eax,[esi+eax*8-8FC]
 0069AE2E    lea         edx,[ebp-106]
 0069AE34    call        0069A9C0
 0069AE39    pop         ecx
>0069AE3A    jmp         0069AEC3
 0069AE3F    mov         ebx,edx
 0069AE41    dec         ebx
 0069AE42    sub         bl,20
>0069AE45    jb          0069AE51
 0069AE47    add         bl,0E0
 0069AE4A    sub         bl,20
>0069AE4D    jb          0069AE86
>0069AE4F    jmp         0069AEC3
 0069AE51    push        ebp
 0069AE52    mov         eax,dword ptr [ebp-8]
 0069AE55    lea         esi,[eax+ecx*4]
 0069AE58    movzx       eax,dl
 0069AE5B    dec         eax
 0069AE5C    cmp         eax,3
>0069AE5F    jbe         0069AE66
 0069AE61    call        @BoundErr
 0069AE66    inc         eax
 0069AE67    imul        eax,eax,20
>0069AE6A    jno         0069AE71
 0069AE6C    call        @IntOver
 0069AE71    lea         eax,[esi+eax*8-5FC]
 0069AE78    lea         edx,[ebp-106]
 0069AE7E    call        0069A890
 0069AE83    pop         ecx
>0069AE84    jmp         0069AEC3
 0069AE86    push        ebp
 0069AE87    mov         eax,dword ptr [ebp-8]
 0069AE8A    lea         esi,[eax+ecx*4]
 0069AE8D    movzx       eax,dl
 0069AE90    sub         eax,40
>0069AE93    jno         0069AE9A
 0069AE95    call        @IntOver
 0069AE9A    dec         eax
 0069AE9B    cmp         eax,2
>0069AE9E    jbe         0069AEA5
 0069AEA0    call        @BoundErr
 0069AEA5    inc         eax
 0069AEA6    imul        eax,eax,20
>0069AEA9    jno         0069AEB0
 0069AEAB    call        @IntOver
 0069AEB0    lea         eax,[esi+eax*8-8FC]
 0069AEB7    lea         edx,[ebp-106]
 0069AEBD    call        0069A5B4
 0069AEC2    pop         ecx
 0069AEC3    pop         esi
 0069AEC4    pop         ebx
 0069AEC5    mov         esp,ebp
 0069AEC7    pop         ebp
 0069AEC8    ret
*}
end;

//0069AF24
function TFXPIO.ReadIOCX(fs:TFileStream; FileVersionMajor:Integer; RecordSize:Integer; NumOfRecords:Integer; FileVersionMinor:Integer):Integer;
begin
{*
 0069AF24    push        ebp
 0069AF25    mov         ebp,esp
 0069AF27    push        eax
 0069AF28    mov         eax,2
 0069AF2D    add         esp,0FFFFF004
 0069AF33    push        eax
 0069AF34    dec         eax
>0069AF35    jne         0069AF2D
 0069AF37    mov         eax,dword ptr [ebp-4]
 0069AF3A    add         esp,0FFFFF75C
 0069AF40    push        ebx
 0069AF41    push        esi
 0069AF42    push        edi
 0069AF43    mov         dword ptr [ebp-8],ecx
 0069AF46    mov         dword ptr [ebp-4],eax
 0069AF49    mov         eax,dword ptr [ebp+8]
 0069AF4C    cmp         dword ptr [ebp+0C],1
>0069AF50    je          0069AF5E
 0069AF52    mov         dword ptr [ebp-0C],0FFFFFFFF
>0069AF59    jmp         0069B12B
 0069AF5E    imul        ecx,dword ptr [ebp-8],10000
>0069AF65    jno         0069AF6C
 0069AF67    call        @IntOver
 0069AF6C    add         ecx,dword ptr [ebp+10]
>0069AF6F    jno         0069AF76
 0069AF71    call        @IntOver
 0069AF76    cmp         ecx,10003
>0069AF7C    jge         0069B0A0
 0069AF82    cmp         eax,1000
>0069AF87    je          0069AF95
 0069AF89    mov         dword ptr [ebp-0C],0FFFFFFFF
>0069AF90    jmp         0069B12B
 0069AF95    lea         eax,[ebp-1018]
 0069AF9B    mov         ecx,1000
 0069AFA0    xchg        eax,edx
 0069AFA1    mov         ebx,dword ptr [eax]
 0069AFA3    call        dword ptr [ebx+0C];THandleStream.Read
 0069AFA6    mov         dword ptr [ebp-0C],eax
 0069AFA9    cmp         dword ptr [ebp-0C],1000
>0069AFB0    je          0069AFBE
 0069AFB2    mov         dword ptr [ebp-0C],0FFFFFFFF
>0069AFB9    jmp         0069B12B
 0069AFBE    mov         dword ptr [ebp-10],4
 0069AFC5    lea         eax,[ebp-1018]
 0069AFCB    mov         dword ptr [ebp-14],eax
 0069AFCE    lea         eax,[ebp-28A8]
 0069AFD4    mov         dword ptr [ebp-18],eax
 0069AFD7    mov         eax,dword ptr [ebp-14]
 0069AFDA    movzx       eax,byte ptr [eax]
 0069AFDD    cmp         al,1
>0069AFDF    jne         0069B06F
 0069AFE5    movzx       eax,al
 0069AFE8    mov         edx,dword ptr [ebp-18]
 0069AFEB    mov         word ptr [edx],ax
 0069AFEE    mov         eax,4
 0069AFF3    mov         edx,dword ptr [ebp-14]
 0069AFF6    add         edx,2
 0069AFF9    mov         ecx,dword ptr [ebp-18]
 0069AFFC    lea         ebx,[ecx+4]
 0069AFFF    mov         edi,ebx
 0069B001    mov         esi,edx
 0069B003    mov         ecx,18
 0069B008    rep movs    dword ptr [edi],dword ptr [esi]
 0069B00A    movs        word ptr [edi],word ptr [esi]
 0069B00C    add         ebx,62
 0069B00F    add         edx,62
 0069B012    dec         eax
>0069B013    jne         0069AFFF
 0069B015    mov         eax,2
 0069B01A    mov         edx,dword ptr [ebp-14]
 0069B01D    add         edx,18A
 0069B023    mov         ecx,dword ptr [ebp-18]
 0069B026    lea         ebx,[ecx+18C]
 0069B02C    mov         esi,edx
 0069B02E    mov         edi,ebx
 0069B030    mov         ecx,18
 0069B035    rep movs    dword ptr [edi],dword ptr [esi]
 0069B037    movs        word ptr [edi],word ptr [esi]
 0069B039    add         ebx,62
 0069B03C    add         edx,62
 0069B03F    dec         eax
>0069B040    jne         0069B02C
 0069B042    mov         eax,4
 0069B047    mov         edx,dword ptr [ebp-14]
 0069B04A    add         edx,24E
 0069B050    mov         ecx,dword ptr [ebp-18]
 0069B053    lea         ebx,[ecx+250]
 0069B059    mov         esi,edx
 0069B05B    mov         edi,ebx
 0069B05D    mov         ecx,18
 0069B062    rep movs    dword ptr [edi],dword ptr [esi]
 0069B064    movs        word ptr [edi],word ptr [esi]
 0069B066    add         ebx,62
 0069B069    add         edx,62
 0069B06C    dec         eax
>0069B06D    jne         0069B059
 0069B06F    add         dword ptr [ebp-18],624
 0069B076    add         dword ptr [ebp-14],400
 0069B07D    dec         dword ptr [ebp-10]
>0069B080    jne         0069AFD7
 0069B086    lea         eax,[ebp-28A8]
 0069B08C    push        eax
 0069B08D    mov         ecx,dword ptr [ebp+10]
 0069B090    mov         edx,dword ptr [ebp-8]
 0069B093    mov         eax,dword ptr [ebp-4]
 0069B096    call        0069BDBC
>0069B09B    jmp         0069B12B
 0069B0A0    cmp         ecx,30000
>0069B0A6    jge         0069B0F5
 0069B0A8    cmp         eax,1890
>0069B0AD    je          0069B0B8
 0069B0AF    mov         dword ptr [ebp-0C],0FFFFFFFF
>0069B0B6    jmp         0069B12B
 0069B0B8    lea         eax,[ebp-28A8]
 0069B0BE    mov         ecx,1890
 0069B0C3    xchg        eax,edx
 0069B0C4    mov         ebx,dword ptr [eax]
 0069B0C6    call        dword ptr [ebx+0C];THandleStream.Read
 0069B0C9    mov         dword ptr [ebp-0C],eax
 0069B0CC    cmp         dword ptr [ebp-0C],1890
>0069B0D3    je          0069B0DE
 0069B0D5    mov         dword ptr [ebp-0C],0FFFFFFFF
>0069B0DC    jmp         0069B12B
 0069B0DE    lea         eax,[ebp-28A8]
 0069B0E4    push        eax
 0069B0E5    mov         ecx,dword ptr [ebp+10]
 0069B0E8    mov         edx,dword ptr [ebp-8]
 0069B0EB    mov         eax,dword ptr [ebp-4]
 0069B0EE    call        0069BDBC
>0069B0F3    jmp         0069B12B
 0069B0F5    cmp         eax,4010
>0069B0FA    je          0069B105
 0069B0FC    mov         dword ptr [ebp-0C],0FFFFFFFF
>0069B103    jmp         0069B12B
 0069B105    mov         eax,dword ptr [ebp-4]
 0069B108    add         eax,804
 0069B10D    mov         ecx,4010
 0069B112    xchg        eax,edx
 0069B113    mov         ebx,dword ptr [eax]
 0069B115    call        dword ptr [ebx+0C];THandleStream.Read
 0069B118    mov         dword ptr [ebp-0C],eax
 0069B11B    cmp         dword ptr [ebp-0C],4010
>0069B122    je          0069B12B
 0069B124    mov         dword ptr [ebp-0C],0FFFFFFFF
 0069B12B    mov         eax,dword ptr [ebp-0C]
 0069B12E    pop         edi
 0069B12F    pop         esi
 0069B130    pop         ebx
 0069B131    mov         esp,ebp
 0069B133    pop         ebp
 0069B134    ret         0C
*}
end;

//0069B138
function TFXPIO.ReadMCIO(fs:TFileStream; FileVersionMajor:Integer; RecordSize:Integer; NumOfRecords:Integer; FileVersionMinor:Integer):Integer;
begin
{*
 0069B138    push        ebp
 0069B139    mov         ebp,esp
 0069B13B    add         esp,0FFFFFDF8
 0069B141    push        ebx
 0069B142    push        esi
 0069B143    mov         dword ptr [ebp-8],ecx
 0069B146    mov         dword ptr [ebp-4],edx
 0069B149    mov         esi,eax
 0069B14B    mov         eax,dword ptr [ebp+8]
 0069B14E    cmp         dword ptr [ebp+0C],1
>0069B152    je          0069B15C
 0069B154    or          ebx,0FFFFFFFF
>0069B157    jmp         0069B1E9
 0069B15C    imul        edx,dword ptr [ebp-8],10000
>0069B163    jno         0069B16A
 0069B165    call        @IntOver
 0069B16A    add         edx,dword ptr [ebp+10]
>0069B16D    jno         0069B174
 0069B16F    call        @IntOver
 0069B174    cmp         edx,30000
>0069B17A    jge         0069B1C0
 0069B17C    cmp         eax,200
>0069B181    je          0069B188
 0069B183    or          ebx,0FFFFFFFF
>0069B186    jmp         0069B1E9
 0069B188    lea         edx,[ebp-208]
 0069B18E    mov         ecx,200
 0069B193    mov         eax,dword ptr [ebp-4]
 0069B196    mov         ebx,dword ptr [eax]
 0069B198    call        dword ptr [ebx+0C];THandleStream.Read
 0069B19B    mov         ebx,eax
 0069B19D    cmp         ebx,200
>0069B1A3    je          0069B1AA
 0069B1A5    or          ebx,0FFFFFFFF
>0069B1A8    jmp         0069B1E9
 0069B1AA    lea         eax,[ebp-208]
 0069B1B0    push        eax
 0069B1B1    mov         ecx,dword ptr [ebp+10]
 0069B1B4    mov         edx,dword ptr [ebp-8]
 0069B1B7    mov         eax,esi
 0069B1B9    call        0069BA4C
>0069B1BE    jmp         0069B1E9
 0069B1C0    cmp         eax,800
>0069B1C5    je          0069B1CC
 0069B1C7    or          ebx,0FFFFFFFF
>0069B1CA    jmp         0069B1E9
 0069B1CC    lea         edx,[esi+4];TFXPIO.FXMCIO:TFXMCRec
 0069B1CF    mov         ecx,800
 0069B1D4    mov         eax,dword ptr [ebp-4]
 0069B1D7    mov         ebx,dword ptr [eax]
 0069B1D9    call        dword ptr [ebx+0C];THandleStream.Read
 0069B1DC    mov         ebx,eax
 0069B1DE    cmp         ebx,800
>0069B1E4    je          0069B1E9
 0069B1E6    or          ebx,0FFFFFFFF
 0069B1E9    mov         eax,ebx
 0069B1EB    pop         esi
 0069B1EC    pop         ebx
 0069B1ED    mov         esp,ebp
 0069B1EF    pop         ebp
 0069B1F0    ret         0C
*}
end;

//0069B1F4
procedure TFXPIO.SaveIOCX(fs:TFileStream; FileVersionMajor:Integer; RecordSize:Cardinal; NumOfRecords:Word; FileVersionMinor:Integer);
begin
{*
 0069B1F4    push        ebp
 0069B1F5    mov         ebp,esp
 0069B1F7    push        ebx
 0069B1F8    mov         ecx,dword ptr [ebp+0C]
 0069B1FB    mov         word ptr [ecx],1
 0069B200    mov         ecx,dword ptr [ebp+8]
 0069B203    mov         dword ptr [ecx],4010
 0069B209    add         eax,804;TFXPIO.FXIOC:TFXIORec
 0069B20E    mov         ecx,4010
 0069B213    xchg        eax,edx
 0069B214    mov         ebx,dword ptr [eax]
 0069B216    call        dword ptr [ebx+10];THandleStream.Write
 0069B219    cmp         eax,4010
>0069B21E    je          0069B223
 0069B220    or          eax,0FFFFFFFF
 0069B223    pop         ebx
 0069B224    pop         ebp
 0069B225    ret         0C
*}
end;

//0069B228
procedure TFXPIO.SaveMCIO(fs:TFileStream; FileVersionMajor:Integer; RecordSize:Cardinal; NumOfRecords:Word; FileVersionMinor:Integer);
begin
{*
 0069B228    push        ebp
 0069B229    mov         ebp,esp
 0069B22B    push        ebx
 0069B22C    mov         ecx,dword ptr [ebp+0C]
 0069B22F    mov         word ptr [ecx],1
 0069B234    mov         ecx,dword ptr [ebp+8]
 0069B237    mov         dword ptr [ecx],800
 0069B23D    add         eax,4;TFXPIO.FXMCIO:TFXMCRec
 0069B240    mov         ecx,800
 0069B245    xchg        eax,edx
 0069B246    mov         ebx,dword ptr [eax]
 0069B248    call        dword ptr [ebx+10];THandleStream.Write
 0069B24B    cmp         eax,800
>0069B250    je          0069B255
 0069B252    or          eax,0FFFFFFFF
 0069B255    pop         ebx
 0069B256    pop         ebp
 0069B257    ret         0C
*}
end;

//0069B25C
procedure TFXPIO.CopyTo(IO:TFXPIO);
begin
{*
 0069B25C    push        esi
 0069B25D    push        edi
 0069B25E    lea         esi,[eax+4];TFXPIO.FXMCIO:TFXMCRec
 0069B261    lea         edi,[edx+4];TFXPIO.FXMCIO:TFXMCRec
 0069B264    mov         ecx,200
 0069B269    rep movs    dword ptr [edi],dword ptr [esi]
 0069B26B    lea         esi,[eax+804];TFXPIO.FXIOC:TFXIORec
 0069B271    lea         edi,[edx+804];TFXPIO.FXIOC:TFXIORec
 0069B277    mov         ecx,1004
 0069B27C    rep movs    dword ptr [edi],dword ptr [esi]
 0069B27E    pop         edi
 0069B27F    pop         esi
 0069B280    ret
*}
end;

//0069B284
function TFXPIO.IsEqual(IO:TFXPIO):Boolean;
begin
{*
 0069B284    push        ebx
 0069B285    push        esi
 0069B286    mov         esi,edx
 0069B288    mov         ebx,eax
 0069B28A    lea         edx,[ebx+4];TFXPIO.FXMCIO:TFXMCRec
 0069B28D    lea         eax,[esi+4];TFXPIO.FXMCIO:TFXMCRec
 0069B290    mov         ecx,800
 0069B295    call        CompareMem
 0069B29A    test        al,al
>0069B29C    je          0069B2B8
 0069B29E    lea         edx,[ebx+804];TFXPIO.FXIOC:TFXIORec
 0069B2A4    lea         eax,[esi+804];TFXPIO.FXIOC:TFXIORec
 0069B2AA    mov         ecx,4010
 0069B2AF    call        CompareMem
 0069B2B4    test        al,al
>0069B2B6    jne         0069B2BD
 0069B2B8    xor         eax,eax
 0069B2BA    pop         esi
 0069B2BB    pop         ebx
 0069B2BC    ret
 0069B2BD    mov         al,1
 0069B2BF    pop         esi
 0069B2C0    pop         ebx
 0069B2C1    ret
*}
end;

//0069B2C4
function TFXPIO.GetIOCtrlrType(indx:Byte):Byte;
begin
{*
 0069B2C4    mov         ecx,edx
 0069B2C6    sub         cl,1
>0069B2C9    jb          0069B2D2
 0069B2CB    sub         cl,4
>0069B2CE    jb          0069B2D5
>0069B2D0    jmp         0069B306
 0069B2D2    mov         al,6
 0069B2D4    ret
 0069B2D5    movzx       edx,dl
 0069B2D8    dec         edx
 0069B2D9    cmp         edx,3
>0069B2DC    jbe         0069B2E3
 0069B2DE    call        @BoundErr
 0069B2E3    inc         edx
 0069B2E4    imul        edx,edx,401
>0069B2EA    jno         0069B2F1
 0069B2EC    call        @IntOver
 0069B2F1    movzx       eax,word ptr [eax+edx*4-800]
 0069B2F9    cmp         eax,0FF
>0069B2FE    jbe         0069B308
 0069B300    call        @BoundErr
 0069B305    ret
 0069B306    xor         eax,eax
 0069B308    ret
*}
end;

//0069B30C
procedure TFXPIO.SetIOCtrlType(indx:Byte; Value:Byte);
begin
{*
 0069B30C    push        ebx
 0069B30D    push        esi
 0069B30E    push        edi
 0069B30F    push        ebp
 0069B310    push        ecx
 0069B311    mov         byte ptr [esp],cl
 0069B314    mov         ebx,edx
 0069B316    mov         esi,eax
 0069B318    movzx       eax,bl
 0069B31B    dec         eax
 0069B31C    cmp         eax,3
>0069B31F    jbe         0069B326
 0069B321    call        @BoundErr
 0069B326    inc         eax
 0069B327    imul        edi,eax,401
>0069B32D    jno         0069B334
 0069B32F    call        @IntOver
 0069B334    movzx       eax,word ptr [esi+edi*4-800]
 0069B33C    movzx       ebp,byte ptr [esp]
 0069B340    cmp         ax,bp
>0069B343    je          0069B367
 0069B345    lea         eax,[esi+edi*4-800]
 0069B34C    xor         ecx,ecx
 0069B34E    mov         edx,400
 0069B353    call        @FillChar
 0069B358    mov         word ptr [esi+edi*4-800],bp
 0069B360    mov         byte ptr [esi+4814],1;TFXPIO.FModified:Boolean
 0069B367    pop         edx
 0069B368    pop         ebp
 0069B369    pop         edi
 0069B36A    pop         esi
 0069B36B    pop         ebx
 0069B36C    ret
*}
end;

//0069B370
procedure TFXPIO.IOCTypeToString(IOCType:Byte; ?:UnicodeString);
begin
{*
 0069B370    push        ebx
 0069B371    push        esi
 0069B372    mov         esi,ecx
 0069B374    mov         ebx,edx
 0069B376    mov         eax,ebx
 0069B378    sub         al,5
>0069B37A    jae         0069B39A
 0069B37C    mov         eax,esi
 0069B37E    movzx       edx,bl
 0069B381    cmp         edx,4
>0069B384    jbe         0069B38B
 0069B386    call        @BoundErr
 0069B38B    mov         edx,dword ptr [edx*4+7C287C];^'Not configured'
 0069B392    call        @UStrAsg
 0069B397    pop         esi
 0069B398    pop         ebx
 0069B399    ret
 0069B39A    mov         eax,esi
 0069B39C    mov         edx,69B3B8;'Error'
 0069B3A1    call        @UStrAsg
 0069B3A6    pop         esi
 0069B3A7    pop         ebx
 0069B3A8    ret
*}
end;

//0069B3C4
procedure TFXPIO.CCIFunctionToString(CCIFunction:Byte; ?:UnicodeString);
begin
{*
 0069B3C4    push        ebx
 0069B3C5    push        esi
 0069B3C6    mov         esi,ecx
 0069B3C8    mov         ebx,edx
 0069B3CA    mov         eax,ebx
 0069B3CC    sub         al,1D
>0069B3CE    jae         0069B3EE
 0069B3D0    mov         eax,esi
 0069B3D2    movzx       edx,bl
 0069B3D5    cmp         edx,1C
>0069B3D8    jbe         0069B3DF
 0069B3DA    call        @BoundErr
 0069B3DF    mov         edx,dword ptr [edx*4+7C28B0];^'Not in use'
 0069B3E6    call        @UStrAsg
 0069B3EB    pop         esi
 0069B3EC    pop         ebx
 0069B3ED    ret
 0069B3EE    mov         eax,esi
 0069B3F0    mov         edx,69B40C;'Error'
 0069B3F5    call        @UStrAsg
 0069B3FA    pop         esi
 0069B3FB    pop         ebx
 0069B3FC    ret
*}
end;

//0069B418
procedure TFXPIO.CCITypeToString(CCIType:Boolean; ?:UnicodeString);
begin
{*
 0069B418    push        ebx
 0069B419    mov         ebx,ecx
 0069B41B    sub         dl,1
>0069B41E    jb          0069B424
>0069B420    je          0069B433
>0069B422    jmp         0069B440
 0069B424    mov         eax,ebx
 0069B426    mov         edx,dword ptr ds:[7C2924];^'NO'
 0069B42C    call        @UStrAsg
 0069B431    pop         ebx
 0069B432    ret
 0069B433    mov         eax,ebx
 0069B435    mov         edx,dword ptr ds:[7C2928];^'NC'
 0069B43B    call        @UStrAsg
 0069B440    pop         ebx
 0069B441    ret
*}
end;

//0069B444
{*function sub_0069B444:?;
begin
 0069B444    xor         eax,eax
 0069B446    mov         ecx,edx
 0069B448    sub         cl,1A
>0069B44B    jb          0069B457
 0069B44D    add         cl,0F9
 0069B450    sub         cl,6
>0069B453    jb          0069B46C
>0069B455    jmp         0069B486
 0069B457    movzx       eax,dl
 0069B45A    cmp         eax,19
>0069B45D    jbe         0069B464
 0069B45F    call        @BoundErr
 0069B464    movzx       eax,byte ptr [eax+7C292C];gvar_007C292C
 0069B46B    ret
 0069B46C    movzx       eax,dl
 0069B46F    add         eax,0FFFFFFDF
 0069B472    cmp         eax,5
>0069B475    jbe         0069B47C
 0069B477    call        @BoundErr
 0069B47C    add         eax,21
 0069B47F    movzx       eax,byte ptr [eax+7C298F]
 0069B486    ret
end;*}

//0069B488
{*function sub_0069B488:?;
begin
 0069B488    push        esi
 0069B489    xor         eax,eax
 0069B48B    xor         esi,esi
 0069B48D    mov         ecx,7C292C;gvar_007C292C
 0069B492    cmp         dl,byte ptr [ecx]
>0069B494    jne         0069B4A6
 0069B496    mov         eax,esi
 0069B498    cmp         eax,0FF
>0069B49D    jbe         0069B4AD
 0069B49F    call        @BoundErr
>0069B4A4    jmp         0069B4AD
 0069B4A6    inc         esi
 0069B4A7    inc         ecx
 0069B4A8    cmp         esi,1A
>0069B4AB    jne         0069B492
 0069B4AD    test        al,al
>0069B4AF    jne         0069B4D6
 0069B4B1    mov         esi,21
 0069B4B6    mov         ecx,7C29B0;gvar_007C29B0
 0069B4BB    cmp         dl,byte ptr [ecx]
>0069B4BD    jne         0069B4CF
 0069B4BF    mov         eax,esi
 0069B4C1    cmp         eax,0FF
>0069B4C6    jbe         0069B4D6
 0069B4C8    call        @BoundErr
>0069B4CD    jmp         0069B4D6
 0069B4CF    inc         esi
 0069B4D0    inc         ecx
 0069B4D1    cmp         esi,27
>0069B4D4    jne         0069B4BB
 0069B4D6    pop         esi
 0069B4D7    ret
end;*}

//0069B4D8
procedure TFXPIO.OutFunctionToString(OutFunction:Byte; ?:UnicodeString);
begin
{*
 0069B4D8    push        ebx
 0069B4D9    push        esi
 0069B4DA    mov         esi,ecx
 0069B4DC    mov         ebx,edx
 0069B4DE    mov         eax,ebx
 0069B4E0    sub         al,1A
>0069B4E2    jb          0069B4EC
 0069B4E4    add         al,0F9
 0069B4E6    sub         al,6
>0069B4E8    jb          0069B50A
>0069B4EA    jmp         0069B52E
 0069B4EC    mov         eax,esi
 0069B4EE    movzx       edx,bl
 0069B4F1    cmp         edx,19
>0069B4F4    jbe         0069B4FB
 0069B4F6    call        @BoundErr
 0069B4FB    mov         edx,dword ptr [edx*4+7C2948];^'Not in use'
 0069B502    call        @UStrAsg
 0069B507    pop         esi
 0069B508    pop         ebx
 0069B509    ret
 0069B50A    mov         eax,esi
 0069B50C    movzx       edx,bl
 0069B50F    add         edx,0FFFFFFDF
 0069B512    cmp         edx,5
>0069B515    jbe         0069B51C
 0069B517    call        @BoundErr
 0069B51C    add         edx,21
 0069B51F    mov         edx,dword ptr [edx*4+7C2934]
 0069B526    call        @UStrAsg
 0069B52B    pop         esi
 0069B52C    pop         ebx
 0069B52D    ret
 0069B52E    mov         eax,esi
 0069B530    mov         edx,69B54C;'Error'
 0069B535    call        @UStrAsg
 0069B53A    pop         esi
 0069B53B    pop         ebx
 0069B53C    ret
*}
end;

//0069B558
function TFXPIO.GetInpEventSet(InpFunction:Byte):TFXEventSet;
begin
{*
 0069B558    movzx       eax,byte ptr ds:[69B6D0];0x0 gvar_0069B6D0
 0069B55F    movzx       edx,dl
 0069B562    cmp         edx,1C
>0069B565    ja          0069B6CD
 0069B56B    jmp         dword ptr [edx*4+69B572]
 0069B56B    dd          0069B5E6
 0069B56B    dd          0069B5EE
 0069B56B    dd          0069B5F6
 0069B56B    dd          0069B5FE
 0069B56B    dd          0069B606
 0069B56B    dd          0069B60E
 0069B56B    dd          0069B616
 0069B56B    dd          0069B61E
 0069B56B    dd          0069B626
 0069B56B    dd          0069B62E
 0069B56B    dd          0069B636
 0069B56B    dd          0069B63E
 0069B56B    dd          0069B646
 0069B56B    dd          0069B64E
 0069B56B    dd          0069B656
 0069B56B    dd          0069B65E
 0069B56B    dd          0069B666
 0069B56B    dd          0069B66E
 0069B56B    dd          0069B676
 0069B56B    dd          0069B67E
 0069B56B    dd          0069B686
 0069B56B    dd          0069B68E
 0069B56B    dd          0069B696
 0069B56B    dd          0069B69E
 0069B56B    dd          0069B6A6
 0069B56B    dd          0069B6AE
 0069B56B    dd          0069B6B6
 0069B56B    dd          0069B6BE
 0069B56B    dd          0069B6C6
 0069B5E6    movzx       eax,byte ptr ds:[69B6D0];0x0 gvar_0069B6D0
 0069B5ED    ret
 0069B5EE    movzx       eax,byte ptr ds:[69B6D0];0x0 gvar_0069B6D0
 0069B5F5    ret
 0069B5F6    movzx       eax,byte ptr ds:[69B6D4];0x8 gvar_0069B6D4
 0069B5FD    ret
 0069B5FE    movzx       eax,byte ptr ds:[69B6D4];0x8 gvar_0069B6D4
 0069B605    ret
 0069B606    movzx       eax,byte ptr ds:[69B6D4];0x8 gvar_0069B6D4
 0069B60D    ret
 0069B60E    movzx       eax,byte ptr ds:[69B6D4];0x8 gvar_0069B6D4
 0069B615    ret
 0069B616    movzx       eax,byte ptr ds:[69B6D8];0x10 gvar_0069B6D8
 0069B61D    ret
 0069B61E    movzx       eax,byte ptr ds:[69B6DC];0x20 gvar_0069B6DC
 0069B625    ret
 0069B626    movzx       eax,byte ptr ds:[69B6DC];0x20 gvar_0069B6DC
 0069B62D    ret
 0069B62E    movzx       eax,byte ptr ds:[69B6D0];0x0 gvar_0069B6D0
 0069B635    ret
 0069B636    movzx       eax,byte ptr ds:[69B6D0];0x0 gvar_0069B6D0
 0069B63D    ret
 0069B63E    movzx       eax,byte ptr ds:[69B6D0];0x0 gvar_0069B6D0
 0069B645    ret
 0069B646    movzx       eax,byte ptr ds:[69B6D0];0x0 gvar_0069B6D0
 0069B64D    ret
 0069B64E    movzx       eax,byte ptr ds:[69B6D0];0x0 gvar_0069B6D0
 0069B655    ret
 0069B656    movzx       eax,byte ptr ds:[69B6D0];0x0 gvar_0069B6D0
 0069B65D    ret
 0069B65E    movzx       eax,byte ptr ds:[69B6D0];0x0 gvar_0069B6D0
 0069B665    ret
 0069B666    movzx       eax,byte ptr ds:[69B6D0];0x0 gvar_0069B6D0
 0069B66D    ret
 0069B66E    movzx       eax,byte ptr ds:[69B6D0];0x0 gvar_0069B6D0
 0069B675    ret
 0069B676    movzx       eax,byte ptr ds:[69B6D0];0x0 gvar_0069B6D0
 0069B67D    ret
 0069B67E    movzx       eax,byte ptr ds:[69B6D0];0x0 gvar_0069B6D0
 0069B685    ret
 0069B686    movzx       eax,byte ptr ds:[69B6D0];0x0 gvar_0069B6D0
 0069B68D    ret
 0069B68E    movzx       eax,byte ptr ds:[69B6D0];0x0 gvar_0069B6D0
 0069B695    ret
 0069B696    movzx       eax,byte ptr ds:[69B6D0];0x0 gvar_0069B6D0
 0069B69D    ret
 0069B69E    movzx       eax,byte ptr ds:[69B6D0];0x0 gvar_0069B6D0
 0069B6A5    ret
 0069B6A6    movzx       eax,byte ptr ds:[69B6D0];0x0 gvar_0069B6D0
 0069B6AD    ret
 0069B6AE    movzx       eax,byte ptr ds:[69B6D0];0x0 gvar_0069B6D0
 0069B6B5    ret
 0069B6B6    movzx       eax,byte ptr ds:[69B6D0];0x0 gvar_0069B6D0
 0069B6BD    ret
 0069B6BE    movzx       eax,byte ptr ds:[69B6D0];0x0 gvar_0069B6D0
 0069B6C5    ret
 0069B6C6    movzx       eax,byte ptr ds:[69B6D4];0x8 gvar_0069B6D4
 0069B6CD    ret
*}
end;

//0069B6E0
function TFXPIO.GetOutEventSet(OutFunction:Byte):TFXEventSet;
begin
{*
 0069B6E0    movzx       eax,byte ptr ds:[69B880];0x0 gvar_0069B880
 0069B6E7    movzx       edx,dl
 0069B6EA    cmp         edx,26
>0069B6ED    ja          0069B87D
 0069B6F3    jmp         dword ptr [edx*4+69B6FA]
 0069B6F3    dd          0069B796
 0069B6F3    dd          0069B79E
 0069B6F3    dd          0069B7A6
 0069B6F3    dd          0069B7AE
 0069B6F3    dd          0069B7B6
 0069B6F3    dd          0069B7BE
 0069B6F3    dd          0069B7C6
 0069B6F3    dd          0069B7CE
 0069B6F3    dd          0069B7D6
 0069B6F3    dd          0069B7DE
 0069B6F3    dd          0069B7E6
 0069B6F3    dd          0069B7EE
 0069B6F3    dd          0069B7F6
 0069B6F3    dd          0069B7FE
 0069B6F3    dd          0069B806
 0069B6F3    dd          0069B80E
 0069B6F3    dd          0069B816
 0069B6F3    dd          0069B81E
 0069B6F3    dd          0069B826
 0069B6F3    dd          0069B82E
 0069B6F3    dd          0069B836
 0069B6F3    dd          0069B83E
 0069B6F3    dd          0069B87D
 0069B6F3    dd          0069B87D
 0069B6F3    dd          0069B87D
 0069B6F3    dd          0069B846
 0069B6F3    dd          0069B87D
 0069B6F3    dd          0069B87D
 0069B6F3    dd          0069B87D
 0069B6F3    dd          0069B87D
 0069B6F3    dd          0069B87D
 0069B6F3    dd          0069B87D
 0069B6F3    dd          0069B87D
 0069B6F3    dd          0069B84E
 0069B6F3    dd          0069B856
 0069B6F3    dd          0069B85E
 0069B6F3    dd          0069B866
 0069B6F3    dd          0069B86E
 0069B6F3    dd          0069B876
 0069B796    movzx       eax,byte ptr ds:[69B880];0x0 gvar_0069B880
 0069B79D    ret
 0069B79E    movzx       eax,byte ptr ds:[69B884];0x2 gvar_0069B884
 0069B7A5    ret
 0069B7A6    movzx       eax,byte ptr ds:[69B884];0x2 gvar_0069B884
 0069B7AD    ret
 0069B7AE    movzx       eax,byte ptr ds:[69B884];0x2 gvar_0069B884
 0069B7B5    ret
 0069B7B6    movzx       eax,byte ptr ds:[69B884];0x2 gvar_0069B884
 0069B7BD    ret
 0069B7BE    movzx       eax,byte ptr ds:[69B884];0x2 gvar_0069B884
 0069B7C5    ret
 0069B7C6    movzx       eax,byte ptr ds:[69B880];0x0 gvar_0069B880
 0069B7CD    ret
 0069B7CE    movzx       eax,byte ptr ds:[69B880];0x0 gvar_0069B880
 0069B7D5    ret
 0069B7D6    movzx       eax,byte ptr ds:[69B880];0x0 gvar_0069B880
 0069B7DD    ret
 0069B7DE    movzx       eax,byte ptr ds:[69B880];0x0 gvar_0069B880
 0069B7E5    ret
 0069B7E6    movzx       eax,byte ptr ds:[69B880];0x0 gvar_0069B880
 0069B7ED    ret
 0069B7EE    movzx       eax,byte ptr ds:[69B880];0x0 gvar_0069B880
 0069B7F5    ret
 0069B7F6    movzx       eax,byte ptr ds:[69B880];0x0 gvar_0069B880
 0069B7FD    ret
 0069B7FE    movzx       eax,byte ptr ds:[69B880];0x0 gvar_0069B880
 0069B805    ret
 0069B806    movzx       eax,byte ptr ds:[69B880];0x0 gvar_0069B880
 0069B80D    ret
 0069B80E    movzx       eax,byte ptr ds:[69B880];0x0 gvar_0069B880
 0069B815    ret
 0069B816    movzx       eax,byte ptr ds:[69B880];0x0 gvar_0069B880
 0069B81D    ret
 0069B81E    movzx       eax,byte ptr ds:[69B880];0x0 gvar_0069B880
 0069B825    ret
 0069B826    movzx       eax,byte ptr ds:[69B880];0x0 gvar_0069B880
 0069B82D    ret
 0069B82E    movzx       eax,byte ptr ds:[69B884];0x2 gvar_0069B884
 0069B835    ret
 0069B836    movzx       eax,byte ptr ds:[69B880];0x0 gvar_0069B880
 0069B83D    ret
 0069B83E    movzx       eax,byte ptr ds:[69B880];0x0 gvar_0069B880
 0069B845    ret
 0069B846    movzx       eax,byte ptr ds:[69B880];0x0 gvar_0069B880
 0069B84D    ret
 0069B84E    movzx       eax,byte ptr ds:[69B884];0x2 gvar_0069B884
 0069B855    ret
 0069B856    movzx       eax,byte ptr ds:[69B884];0x2 gvar_0069B884
 0069B85D    ret
 0069B85E    movzx       eax,byte ptr ds:[69B880];0x0 gvar_0069B880
 0069B865    ret
 0069B866    movzx       eax,byte ptr ds:[69B880];0x0 gvar_0069B880
 0069B86D    ret
 0069B86E    movzx       eax,byte ptr ds:[69B880];0x0 gvar_0069B880
 0069B875    ret
 0069B876    movzx       eax,byte ptr ds:[69B884];0x2 gvar_0069B884
 0069B87D    ret
*}
end;

//0069B888
procedure TFXPIO.ADOModeToString(ADOMode:Byte; ?:UnicodeString);
begin
{*
 0069B888    push        ebx
 0069B889    push        esi
 0069B88A    mov         esi,ecx
 0069B88C    mov         ebx,edx
 0069B88E    cmp         bl,3
>0069B891    ja          0069B8B1
 0069B893    mov         eax,esi
 0069B895    movzx       edx,bl
 0069B898    cmp         edx,3
>0069B89B    jbe         0069B8A2
 0069B89D    call        @BoundErr
 0069B8A2    mov         edx,dword ptr [edx*4+7C29D0];^'Jumper defines'
 0069B8A9    call        @UStrAsg
 0069B8AE    pop         esi
 0069B8AF    pop         ebx
 0069B8B0    ret
 0069B8B1    mov         eax,esi
 0069B8B3    mov         edx,69B8CC;'Error'
 0069B8B8    call        @UStrAsg
 0069B8BD    pop         esi
 0069B8BE    pop         ebx
 0069B8BF    ret
*}
end;

//0069B8D8
procedure TFXPIO.ADOMonitoringToString(ADOMonitoring:Boolean; ?:UnicodeString);
begin
{*
 0069B8D8    push        ebx
 0069B8D9    push        esi
 0069B8DA    mov         esi,ecx
 0069B8DC    mov         ebx,edx
 0069B8DE    mov         eax,esi
 0069B8E0    movsx       edx,bl
 0069B8E3    cmp         edx,1
>0069B8E6    jbe         0069B8ED
 0069B8E8    call        @BoundErr
 0069B8ED    mov         edx,dword ptr [edx*4+7C29E0];^'Monitored'
 0069B8F4    call        @UStrAsg
 0069B8F9    pop         esi
 0069B8FA    pop         ebx
 0069B8FB    ret
*}
end;

//0069B8FC
{*procedure sub_0069B8FC(?:TFXPIO; ?:?);
begin
 0069B8FC    push        ebx
 0069B8FD    push        esi
 0069B8FE    push        edi
 0069B8FF    add         esp,0FFFFFF9C
 0069B902    mov         esi,edx
 0069B904    lea         edi,[esp]
 0069B907    push        ecx
 0069B908    mov         ecx,18
 0069B90D    rep movs    dword ptr [edi],dword ptr [esi]
 0069B90F    pop         ecx
 0069B910    movs        word ptr [edi],word ptr [esi]
 0069B912    mov         ebx,ecx
 0069B914    mov         eax,ebx
 0069B916    xor         ecx,ecx
 0069B918    mov         edx,100
 0069B91D    call        @FillChar
 0069B922    movzx       eax,byte ptr [esp]
 0069B926    mov         byte ptr [ebx],al
 0069B928    movzx       eax,byte ptr [esp+1]
 0069B92D    mov         byte ptr [ebx+4],al
 0069B930    movzx       eax,byte ptr [esp+2]
 0069B935    mov         word ptr [ebx+8],ax
 0069B939    movzx       eax,byte ptr [esp+3]
 0069B93E    mov         word ptr [ebx+0A],ax
 0069B942    lea         eax,[ebx+0C2]
 0069B948    lea         edx,[esp+24]
 0069B94C    mov         cl,3C
 0069B94E    call        @PStrNCpy
 0069B953    add         esp,64
 0069B956    pop         edi
 0069B957    pop         esi
 0069B958    pop         ebx
 0069B959    ret
end;*}

//0069B95C
{*procedure sub_0069B95C(?:TFXPIO; ?:?);
begin
 0069B95C    push        ebx
 0069B95D    push        esi
 0069B95E    push        edi
 0069B95F    add         esp,0FFFFFF9C
 0069B962    mov         esi,edx
 0069B964    lea         edi,[esp]
 0069B967    push        ecx
 0069B968    mov         ecx,18
 0069B96D    rep movs    dword ptr [edi],dword ptr [esi]
 0069B96F    pop         ecx
 0069B970    movs        word ptr [edi],word ptr [esi]
 0069B972    mov         ebx,ecx
 0069B974    mov         eax,ebx
 0069B976    xor         ecx,ecx
 0069B978    mov         edx,100
 0069B97D    call        @FillChar
 0069B982    movzx       eax,byte ptr [esp]
 0069B986    mov         byte ptr [ebx],al
 0069B988    test        byte ptr [esp+4],1
>0069B98D    je          0069B995
 0069B98F    mov         byte ptr [ebx+10],1
>0069B993    jmp         0069B9B3
 0069B995    test        byte ptr [esp+23],8
>0069B99A    je          0069B9A2
 0069B99C    mov         byte ptr [ebx+10],2
>0069B9A0    jmp         0069B9B3
 0069B9A2    lea         edx,[ebx+12]
 0069B9A5    lea         eax,[esp+4]
 0069B9A9    mov         ecx,20
 0069B9AE    call        Move
 0069B9B3    lea         eax,[ebx+0C2]
 0069B9B9    lea         edx,[esp+24]
 0069B9BD    mov         cl,3C
 0069B9BF    call        @PStrNCpy
 0069B9C4    add         esp,64
 0069B9C7    pop         edi
 0069B9C8    pop         esi
 0069B9C9    pop         ebx
 0069B9CA    ret
end;*}

//0069B9CC
{*procedure sub_0069B9CC(?:TFXPIO; ?:?);
begin
 0069B9CC    push        ebx
 0069B9CD    push        esi
 0069B9CE    push        edi
 0069B9CF    add         esp,0FFFFFF9C
 0069B9D2    mov         esi,edx
 0069B9D4    lea         edi,[esp]
 0069B9D7    push        ecx
 0069B9D8    mov         ecx,18
 0069B9DD    rep movs    dword ptr [edi],dword ptr [esi]
 0069B9DF    pop         ecx
 0069B9E0    movs        word ptr [edi],word ptr [esi]
 0069B9E2    mov         ebx,ecx
 0069B9E4    mov         eax,ebx
 0069B9E6    xor         ecx,ecx
 0069B9E8    mov         edx,100
 0069B9ED    call        @FillChar
 0069B9F2    movzx       eax,byte ptr [esp]
 0069B9F6    mov         byte ptr [ebx],al
 0069B9F8    movzx       eax,byte ptr [esp+1]
 0069B9FD    mov         byte ptr [ebx+1],al
 0069BA00    movzx       eax,byte ptr [esp+2]
 0069BA05    mov         byte ptr [ebx+4],al
 0069BA08    test        byte ptr [esp+4],1
>0069BA0D    je          0069BA15
 0069BA0F    mov         byte ptr [ebx+10],1
>0069BA13    jmp         0069BA33
 0069BA15    test        byte ptr [esp+23],8
>0069BA1A    je          0069BA22
 0069BA1C    mov         byte ptr [ebx+10],2
>0069BA20    jmp         0069BA33
 0069BA22    lea         edx,[ebx+12]
 0069BA25    lea         eax,[esp+4]
 0069BA29    mov         ecx,20
 0069BA2E    call        Move
 0069BA33    lea         eax,[ebx+0C2]
 0069BA39    lea         edx,[esp+24]
 0069BA3D    mov         cl,3C
 0069BA3F    call        @PStrNCpy
 0069BA44    add         esp,64
 0069BA47    pop         edi
 0069BA48    pop         esi
 0069BA49    pop         ebx
 0069BA4A    ret
end;*}

//0069BA4C
{*procedure sub_0069BA4C(?:TFXPIO; ?:Integer; ?:Integer; ?:?);
begin
 0069BA4C    push        ebp
 0069BA4D    mov         ebp,esp
 0069BA4F    add         esp,0FFFFFEFC
 0069BA55    push        ebx
 0069BA56    push        esi
 0069BA57    push        edi
 0069BA58    mov         dword ptr [ebp-4],eax
 0069BA5B    imul        eax,edx,100
>0069BA61    jno         0069BA68
 0069BA63    call        @IntOver
 0069BA68    add         ecx,eax
>0069BA6A    jno         0069BA71
 0069BA6C    call        @IntOver
 0069BA71    mov         edx,ecx
 0069BA73    cmp         edx,105
>0069BA79    jge         0069BACE
 0069BA7B    mov         ebx,2
 0069BA80    mov         eax,dword ptr [ebp+8]
 0069BA83    add         eax,0C4
 0069BA88    movzx       ecx,byte ptr [eax]
 0069BA8B    sub         cl,7
>0069BA8E    je          0069BA96
 0069BA90    dec         cl
>0069BA92    je          0069BA9B
>0069BA94    jmp         0069BA9E
 0069BA96    mov         byte ptr [eax],5
>0069BA99    jmp         0069BA9E
 0069BA9B    mov         byte ptr [eax],6
 0069BA9E    add         eax,62
 0069BAA1    dec         ebx
>0069BAA2    jne         0069BA88
 0069BAA4    mov         eax,dword ptr [ebp+8]
 0069BAA7    movzx       eax,byte ptr [eax+188]
 0069BAAE    sub         al,3
>0069BAB0    je          0069BAB8
 0069BAB2    sub         al,2
>0069BAB4    je          0069BAC4
>0069BAB6    jmp         0069BACE
 0069BAB8    mov         eax,dword ptr [ebp+8]
 0069BABB    mov         byte ptr [eax+188],1
>0069BAC2    jmp         0069BACE
 0069BAC4    mov         eax,dword ptr [ebp+8]
 0069BAC7    mov         byte ptr [eax+188],4
 0069BACE    cmp         edx,108
>0069BAD4    jge         0069BB3E
 0069BAD6    mov         eax,dword ptr [ebp+8]
 0069BAD9    movzx       eax,byte ptr [eax+188]
 0069BAE0    cmp         eax,5
>0069BAE3    ja          0069BB3E
 0069BAE5    jmp         dword ptr [eax*4+69BAEC]
 0069BAE5    dd          0069BB3E
 0069BAE5    dd          0069BB04
 0069BAE5    dd          0069BB10
 0069BAE5    dd          0069BB1C
 0069BAE5    dd          0069BB28
 0069BAE5    dd          0069BB34
 0069BB04    mov         eax,dword ptr [ebp+8]
 0069BB07    mov         byte ptr [eax+188],21
>0069BB0E    jmp         0069BB3E
 0069BB10    mov         eax,dword ptr [ebp+8]
 0069BB13    mov         byte ptr [eax+188],22
>0069BB1A    jmp         0069BB3E
 0069BB1C    mov         eax,dword ptr [ebp+8]
 0069BB1F    mov         byte ptr [eax+188],21
>0069BB26    jmp         0069BB3E
 0069BB28    mov         eax,dword ptr [ebp+8]
 0069BB2B    mov         byte ptr [eax+188],24
>0069BB32    jmp         0069BB3E
 0069BB34    mov         eax,dword ptr [ebp+8]
 0069BB37    mov         byte ptr [eax+188],24
 0069BB3E    cmp         edx,300
>0069BB44    jge         0069BC1D
 0069BB4A    mov         ebx,1
 0069BB4F    mov         esi,dword ptr [ebp+8]
 0069BB52    lea         ecx,[ebp-104]
 0069BB58    mov         edx,esi
 0069BB5A    mov         eax,dword ptr [ebp-4]
 0069BB5D    call        0069B8FC
 0069BB62    dec         ebx
 0069BB63    cmp         ebx,1
>0069BB66    jbe         0069BB6D
 0069BB68    call        @BoundErr
 0069BB6D    inc         ebx
 0069BB6E    imul        eax,ebx,20
>0069BB71    jno         0069BB78
 0069BB73    call        @IntOver
 0069BB78    mov         edx,dword ptr [ebp-4]
 0069BB7B    push        esi
 0069BB7C    lea         esi,[ebp-104]
 0069BB82    lea         edi,[edx+eax*8-0FC]
 0069BB89    mov         ecx,40
 0069BB8E    rep movs    dword ptr [edi],dword ptr [esi]
 0069BB90    pop         esi
 0069BB91    inc         ebx
 0069BB92    add         esi,62
 0069BB95    cmp         ebx,3
>0069BB98    jne         0069BB52
 0069BB9A    mov         ebx,1
 0069BB9F    mov         esi,dword ptr [ebp+8]
 0069BBA2    add         esi,0C4
 0069BBA8    lea         ecx,[ebp-104]
 0069BBAE    mov         edx,esi
 0069BBB0    mov         eax,dword ptr [ebp-4]
 0069BBB3    call        0069B95C
 0069BBB8    dec         ebx
 0069BBB9    cmp         ebx,2
>0069BBBC    jbe         0069BBC3
 0069BBBE    call        @BoundErr
 0069BBC3    inc         ebx
 0069BBC4    imul        eax,ebx,20
>0069BBC7    jno         0069BBCE
 0069BBC9    call        @IntOver
 0069BBCE    mov         edx,dword ptr [ebp-4]
 0069BBD1    push        esi
 0069BBD2    lea         esi,[ebp-104]
 0069BBD8    lea         edi,[edx+eax*8+104]
 0069BBDF    mov         ecx,40
 0069BBE4    rep movs    dword ptr [edi],dword ptr [esi]
 0069BBE6    pop         esi
 0069BBE7    inc         ebx
 0069BBE8    add         esi,62
 0069BBEB    cmp         ebx,3
>0069BBEE    jne         0069BBA8
 0069BBF0    lea         ecx,[ebp-104]
 0069BBF6    mov         edx,dword ptr [ebp+8]
 0069BBF9    add         edx,188
 0069BBFF    mov         eax,dword ptr [ebp-4]
 0069BC02    call        0069B9CC
 0069BC07    mov         eax,dword ptr [ebp-4]
 0069BC0A    lea         esi,[ebp-104]
 0069BC10    lea         edi,[eax+504]
 0069BC16    mov         ecx,40
 0069BC1B    rep movs    dword ptr [edi],dword ptr [esi]
 0069BC1D    mov         byte ptr ds:[8DF5B8],1;gvar_008DF5B8
 0069BC24    mov         eax,dword ptr [ebp-4]
 0069BC27    mov         eax,dword ptr [eax+4818];TFXPIO.CI:TFXPCI
 0069BC2D    lea         edx,[eax+44]
 0069BC30    call        TFXPCI.SetConfigInfo
 0069BC35    pop         edi
 0069BC36    pop         esi
 0069BC37    pop         ebx
 0069BC38    mov         esp,ebp
 0069BC3A    pop         ebp
 0069BC3B    ret         4
end;*}

//0069BC40
{*procedure sub_0069BC40(?:TFXPIO; ?:?; ?:?);
begin
 0069BC40    push        ebx
 0069BC41    push        esi
 0069BC42    push        edi
 0069BC43    push        ebp
 0069BC44    mov         edi,eax
 0069BC46    xor         eax,eax
 0069BC48    mov         esi,1
 0069BC4D    dec         esi
 0069BC4E    cmp         esi,2
>0069BC51    jbe         0069BC58
 0069BC53    call        @BoundErr
 0069BC58    inc         esi
 0069BC59    imul        ecx,esi,20
>0069BC5C    jno         0069BC63
 0069BC5E    call        @IntOver
 0069BC63    cmp         dl,byte ptr [edi+ecx*8+104]
>0069BC6A    jne         0069BC73
 0069BC6C    mov         al,1
>0069BC6E    jmp         0069BDB4
 0069BC73    inc         esi
 0069BC74    cmp         esi,4
>0069BC77    jne         0069BC4D
 0069BC79    cmp         dl,byte ptr [edi+504]
>0069BC7F    jne         0069BC88
 0069BC81    mov         al,1
>0069BC83    jmp         0069BDB4
 0069BC88    mov         esi,1
 0069BC8D    dec         esi
 0069BC8E    cmp         esi,3
>0069BC91    jbe         0069BC98
 0069BC93    call        @BoundErr
 0069BC98    inc         esi
 0069BC99    imul        ecx,esi,401
>0069BC9F    jno         0069BCA6
 0069BCA1    call        @IntOver
 0069BCA6    movzx       ecx,word ptr [edi+ecx*4-800]
 0069BCAE    dec         cx
>0069BCB1    je          0069BCC1
 0069BCB3    dec         cx
>0069BCB6    je          0069BD5E
>0069BCBC    jmp         0069BDAA
 0069BCC1    mov         ecx,1
 0069BCC6    dec         esi
 0069BCC7    cmp         esi,3
>0069BCCA    jbe         0069BCD1
 0069BCCC    call        @BoundErr
 0069BCD1    inc         esi
 0069BCD2    imul        ebx,esi,401
>0069BCD8    jno         0069BCDF
 0069BCDA    call        @IntOver
 0069BCDF    lea         ebx,[edi+ebx*4]
 0069BCE2    push        ebx
 0069BCE3    dec         ecx
 0069BCE4    cmp         ecx,1
>0069BCE7    jbe         0069BCEE
 0069BCE9    call        @BoundErr
 0069BCEE    inc         ecx
 0069BCEF    imul        ebx,ecx,20
>0069BCF2    jno         0069BCF9
 0069BCF4    call        @IntOver
 0069BCF9    pop         ebp
 0069BCFA    cmp         dl,byte ptr [ebp+ebx*8-4FC]
>0069BD01    jne         0069BD0A
 0069BD03    mov         al,1
>0069BD05    jmp         0069BDB4
 0069BD0A    inc         ecx
 0069BD0B    cmp         ecx,3
>0069BD0E    jne         0069BCC6
 0069BD10    mov         ecx,1
 0069BD15    dec         esi
 0069BD16    cmp         esi,3
>0069BD19    jbe         0069BD20
 0069BD1B    call        @BoundErr
 0069BD20    inc         esi
 0069BD21    imul        ebx,esi,401
>0069BD27    jno         0069BD2E
 0069BD29    call        @IntOver
 0069BD2E    lea         ebx,[edi+ebx*4]
 0069BD31    push        ebx
 0069BD32    dec         ecx
 0069BD33    cmp         ecx,3
>0069BD36    jbe         0069BD3D
 0069BD38    call        @BoundErr
 0069BD3D    inc         ecx
 0069BD3E    imul        ebx,ecx,20
>0069BD41    jno         0069BD48
 0069BD43    call        @IntOver
 0069BD48    pop         ebp
 0069BD49    cmp         dl,byte ptr [ebp+ebx*8-2FC]
>0069BD50    jne         0069BD56
 0069BD52    mov         al,1
>0069BD54    jmp         0069BDB4
 0069BD56    inc         ecx
 0069BD57    cmp         ecx,5
>0069BD5A    jne         0069BD15
>0069BD5C    jmp         0069BDAA
 0069BD5E    mov         ecx,1
 0069BD63    dec         esi
 0069BD64    cmp         esi,3
>0069BD67    jbe         0069BD6E
 0069BD69    call        @BoundErr
 0069BD6E    inc         esi
 0069BD6F    imul        ebx,esi,401
>0069BD75    jno         0069BD7C
 0069BD77    call        @IntOver
 0069BD7C    lea         ebx,[edi+ebx*4]
 0069BD7F    push        ebx
 0069BD80    dec         ecx
 0069BD81    cmp         ecx,0F
>0069BD84    jbe         0069BD8B
 0069BD86    call        @BoundErr
 0069BD8B    inc         ecx
 0069BD8C    imul        ebx,ecx,20
>0069BD8F    jno         0069BD96
 0069BD91    call        @IntOver
 0069BD96    pop         ebp
 0069BD97    cmp         dl,byte ptr [ebp+ebx*8-8FC]
>0069BD9E    jne         0069BDA4
 0069BDA0    mov         al,1
>0069BDA2    jmp         0069BDB4
 0069BDA4    inc         ecx
 0069BDA5    cmp         ecx,11
>0069BDA8    jne         0069BD63
 0069BDAA    inc         esi
 0069BDAB    cmp         esi,5
>0069BDAE    jne         0069BC8D
 0069BDB4    pop         ebp
 0069BDB5    pop         edi
 0069BDB6    pop         esi
 0069BDB7    pop         ebx
 0069BDB8    ret
end;*}

//0069BDBC
{*procedure sub_0069BDBC(?:?; ?:Integer; ?:Integer; ?:?);
begin
 0069BDBC    push        ebp
 0069BDBD    mov         ebp,esp
 0069BDBF    add         esp,0FFFFFEE0
 0069BDC5    push        ebx
 0069BDC6    push        esi
 0069BDC7    push        edi
 0069BDC8    mov         dword ptr [ebp-4],ecx
 0069BDCB    mov         esi,eax
 0069BDCD    imul        eax,edx,100
>0069BDD3    jno         0069BDDA
 0069BDD5    call        @IntOver
 0069BDDA    add         eax,dword ptr [ebp-4]
>0069BDDD    jno         0069BDE4
 0069BDDF    call        @IntOver
 0069BDE4    mov         dword ptr [ebp-8],eax
 0069BDE7    cmp         dword ptr [ebp-8],108
>0069BDEE    jge         0069BEB6
 0069BDF4    mov         edi,4
 0069BDF9    mov         eax,dword ptr [ebp+8]
 0069BDFC    movzx       edx,word ptr [eax]
 0069BDFF    dec         dx
>0069BE02    je          0069BE0E
 0069BE04    dec         dx
>0069BE07    je          0069BE86
>0069BE09    jmp         0069BEAA
 0069BE0E    mov         ebx,2
 0069BE13    lea         edx,[eax+18C]
 0069BE19    movzx       ecx,byte ptr [edx]
 0069BE1C    sub         cl,7
>0069BE1F    je          0069BE27
 0069BE21    dec         cl
>0069BE23    je          0069BE2C
>0069BE25    jmp         0069BE2F
 0069BE27    mov         byte ptr [edx],5
>0069BE2A    jmp         0069BE2F
 0069BE2C    mov         byte ptr [edx],6
 0069BE2F    add         edx,62
 0069BE32    dec         ebx
>0069BE33    jne         0069BE19
 0069BE35    mov         ebx,4
 0069BE3A    lea         edx,[eax+250]
 0069BE40    movzx       ecx,byte ptr [edx]
 0069BE43    cmp         ecx,5
>0069BE46    ja          0069BE7E
 0069BE48    jmp         dword ptr [ecx*4+69BE4F]
 0069BE48    dd          0069BE7E
 0069BE48    dd          0069BE67
 0069BE48    dd          0069BE6C
 0069BE48    dd          0069BE71
 0069BE48    dd          0069BE76
 0069BE48    dd          0069BE7B
 0069BE67    mov         byte ptr [edx],21
>0069BE6A    jmp         0069BE7E
 0069BE6C    mov         byte ptr [edx],22
>0069BE6F    jmp         0069BE7E
 0069BE71    mov         byte ptr [edx],21
>0069BE74    jmp         0069BE7E
 0069BE76    mov         byte ptr [edx],24
>0069BE79    jmp         0069BE7E
 0069BE7B    mov         byte ptr [edx],24
 0069BE7E    add         edx,62
 0069BE81    dec         ebx
>0069BE82    jne         0069BE40
>0069BE84    jmp         0069BEAA
 0069BE86    mov         ebx,10
 0069BE8B    lea         edx,[eax+4]
 0069BE8E    movzx       ecx,byte ptr [edx]
 0069BE91    sub         cl,7
>0069BE94    je          0069BE9C
 0069BE96    dec         cl
>0069BE98    je          0069BEA1
>0069BE9A    jmp         0069BEA4
 0069BE9C    mov         byte ptr [edx],5
>0069BE9F    jmp         0069BEA4
 0069BEA1    mov         byte ptr [edx],6
 0069BEA4    add         edx,62
 0069BEA7    dec         ebx
>0069BEA8    jne         0069BE8E
 0069BEAA    add         eax,624
 0069BEAF    dec         edi
>0069BEB0    jne         0069BDFC
 0069BEB6    cmp         dword ptr [ebp-8],300
>0069BEBD    jge         0069C1C3
 0069BEC3    mov         edi,1
 0069BEC8    mov         eax,dword ptr [ebp+8]
 0069BECB    mov         dword ptr [ebp-0C],eax
 0069BECE    mov         eax,dword ptr [ebp-0C]
 0069BED1    movzx       eax,word ptr [eax]
 0069BED4    sub         ax,1
>0069BED8    jb          0069C1B2
>0069BEDE    je          0069BEF7
 0069BEE0    dec         ax
>0069BEE3    je          0069C07F
 0069BEE9    dec         ax
>0069BEEC    je          0069C11B
>0069BEF2    jmp         0069C1B2
 0069BEF7    dec         edi
 0069BEF8    cmp         edi,3
>0069BEFB    jbe         0069BF02
 0069BEFD    call        @BoundErr
 0069BF02    inc         edi
 0069BF03    imul        eax,edi,401
>0069BF09    jno         0069BF10
 0069BF0B    call        @IntOver
 0069BF10    mov         word ptr [esi+eax*4-800],1
 0069BF1A    mov         ebx,1
 0069BF1F    mov         eax,dword ptr [ebp-0C]
 0069BF22    add         eax,4
 0069BF25    mov         dword ptr [ebp-10],eax
 0069BF28    lea         ecx,[ebp-120]
 0069BF2E    mov         eax,dword ptr [ebp-10]
 0069BF31    mov         edx,eax
 0069BF33    mov         eax,esi
 0069BF35    call        0069B8FC
 0069BF3A    dec         ebx
 0069BF3B    cmp         ebx,3
>0069BF3E    jbe         0069BF45
 0069BF40    call        @BoundErr
 0069BF45    inc         ebx
 0069BF46    imul        eax,ebx,20
>0069BF49    jno         0069BF50
 0069BF4B    call        @IntOver
 0069BF50    dec         edi
 0069BF51    cmp         edi,3
>0069BF54    jbe         0069BF5B
 0069BF56    call        @BoundErr
 0069BF5B    inc         edi
 0069BF5C    imul        edx,edi,401
>0069BF62    jno         0069BF69
 0069BF64    call        @IntOver
 0069BF69    lea         edx,[esi+edx*4]
 0069BF6C    push        esi
 0069BF6D    push        edi
 0069BF6E    lea         esi,[ebp-120]
 0069BF74    lea         edi,[edx+eax*8-8FC]
 0069BF7B    mov         ecx,40
 0069BF80    rep movs    dword ptr [edi],dword ptr [esi]
 0069BF82    pop         edi
 0069BF83    pop         esi
 0069BF84    inc         ebx
 0069BF85    add         dword ptr [ebp-10],62
 0069BF89    cmp         ebx,5
>0069BF8C    jne         0069BF28
 0069BF8E    mov         ebx,1
 0069BF93    mov         eax,dword ptr [ebp-0C]
 0069BF96    add         eax,18C
 0069BF9B    mov         dword ptr [ebp-14],eax
 0069BF9E    lea         ecx,[ebp-120]
 0069BFA4    mov         eax,dword ptr [ebp-14]
 0069BFA7    mov         edx,eax
 0069BFA9    mov         eax,esi
 0069BFAB    call        0069B95C
 0069BFB0    dec         ebx
 0069BFB1    cmp         ebx,1
>0069BFB4    jbe         0069BFBB
 0069BFB6    call        @BoundErr
 0069BFBB    inc         ebx
 0069BFBC    imul        eax,ebx,20
>0069BFBF    jno         0069BFC6
 0069BFC1    call        @IntOver
 0069BFC6    dec         edi
 0069BFC7    cmp         edi,3
>0069BFCA    jbe         0069BFD1
 0069BFCC    call        @BoundErr
 0069BFD1    inc         edi
 0069BFD2    imul        edx,edi,401
>0069BFD8    jno         0069BFDF
 0069BFDA    call        @IntOver
 0069BFDF    lea         edx,[esi+edx*4]
 0069BFE2    push        esi
 0069BFE3    push        edi
 0069BFE4    lea         esi,[ebp-120]
 0069BFEA    lea         edi,[edx+eax*8-4FC]
 0069BFF1    mov         ecx,40
 0069BFF6    rep movs    dword ptr [edi],dword ptr [esi]
 0069BFF8    pop         edi
 0069BFF9    pop         esi
 0069BFFA    inc         ebx
 0069BFFB    add         dword ptr [ebp-14],62
 0069BFFF    cmp         ebx,3
>0069C002    jne         0069BF9E
 0069C004    mov         ebx,1
 0069C009    mov         eax,dword ptr [ebp-0C]
 0069C00C    add         eax,250
 0069C011    mov         dword ptr [ebp-18],eax
 0069C014    lea         ecx,[ebp-120]
 0069C01A    mov         eax,dword ptr [ebp-18]
 0069C01D    mov         edx,eax
 0069C01F    mov         eax,esi
 0069C021    call        0069B9CC
 0069C026    dec         ebx
 0069C027    cmp         ebx,3
>0069C02A    jbe         0069C031
 0069C02C    call        @BoundErr
 0069C031    inc         ebx
 0069C032    imul        eax,ebx,20
>0069C035    jno         0069C03C
 0069C037    call        @IntOver
 0069C03C    dec         edi
 0069C03D    cmp         edi,3
>0069C040    jbe         0069C047
 0069C042    call        @BoundErr
 0069C047    inc         edi
 0069C048    imul        edx,edi,401
>0069C04E    jno         0069C055
 0069C050    call        @IntOver
 0069C055    lea         edx,[esi+edx*4]
 0069C058    push        esi
 0069C059    push        edi
 0069C05A    lea         esi,[ebp-120]
 0069C060    lea         edi,[edx+eax*8-2FC]
 0069C067    mov         ecx,40
 0069C06C    rep movs    dword ptr [edi],dword ptr [esi]
 0069C06E    pop         edi
 0069C06F    pop         esi
 0069C070    inc         ebx
 0069C071    add         dword ptr [ebp-18],62
 0069C075    cmp         ebx,5
>0069C078    jne         0069C014
>0069C07A    jmp         0069C1B2
 0069C07F    dec         edi
 0069C080    cmp         edi,3
>0069C083    jbe         0069C08A
 0069C085    call        @BoundErr
 0069C08A    inc         edi
 0069C08B    imul        eax,edi,401
>0069C091    jno         0069C098
 0069C093    call        @IntOver
 0069C098    mov         word ptr [esi+eax*4-800],2
 0069C0A2    mov         ebx,1
 0069C0A7    mov         eax,dword ptr [ebp-0C]
 0069C0AA    add         eax,4
 0069C0AD    mov         dword ptr [ebp-1C],eax
 0069C0B0    lea         ecx,[ebp-120]
 0069C0B6    mov         eax,dword ptr [ebp-1C]
 0069C0B9    mov         edx,eax
 0069C0BB    mov         eax,esi
 0069C0BD    call        0069B95C
 0069C0C2    dec         ebx
 0069C0C3    cmp         ebx,0F
>0069C0C6    jbe         0069C0CD
 0069C0C8    call        @BoundErr
 0069C0CD    inc         ebx
 0069C0CE    imul        eax,ebx,20
>0069C0D1    jno         0069C0D8
 0069C0D3    call        @IntOver
 0069C0D8    dec         edi
 0069C0D9    cmp         edi,3
>0069C0DC    jbe         0069C0E3
 0069C0DE    call        @BoundErr
 0069C0E3    inc         edi
 0069C0E4    imul        edx,edi,401
>0069C0EA    jno         0069C0F1
 0069C0EC    call        @IntOver
 0069C0F1    lea         edx,[esi+edx*4]
 0069C0F4    push        esi
 0069C0F5    push        edi
 0069C0F6    lea         esi,[ebp-120]
 0069C0FC    lea         edi,[edx+eax*8-8FC]
 0069C103    mov         ecx,40
 0069C108    rep movs    dword ptr [edi],dword ptr [esi]
 0069C10A    pop         edi
 0069C10B    pop         esi
 0069C10C    inc         ebx
 0069C10D    add         dword ptr [ebp-1C],62
 0069C111    cmp         ebx,11
>0069C114    jne         0069C0B0
>0069C116    jmp         0069C1B2
 0069C11B    dec         edi
 0069C11C    cmp         edi,3
>0069C11F    jbe         0069C126
 0069C121    call        @BoundErr
 0069C126    inc         edi
 0069C127    imul        eax,edi,401
>0069C12D    jno         0069C134
 0069C12F    call        @IntOver
 0069C134    mov         word ptr [esi+eax*4-800],3
 0069C13E    mov         ebx,1
 0069C143    mov         eax,dword ptr [ebp-0C]
 0069C146    add         eax,4
 0069C149    mov         dword ptr [ebp-20],eax
 0069C14C    lea         ecx,[ebp-120]
 0069C152    mov         eax,dword ptr [ebp-20]
 0069C155    mov         edx,eax
 0069C157    mov         eax,esi
 0069C159    call        0069B9CC
 0069C15E    dec         ebx
 0069C15F    cmp         ebx,0B
>0069C162    jbe         0069C169
 0069C164    call        @BoundErr
 0069C169    inc         ebx
 0069C16A    imul        eax,ebx,20
>0069C16D    jno         0069C174
 0069C16F    call        @IntOver
 0069C174    dec         edi
 0069C175    cmp         edi,3
>0069C178    jbe         0069C17F
 0069C17A    call        @BoundErr
 0069C17F    inc         edi
 0069C180    imul        edx,edi,401
>0069C186    jno         0069C18D
 0069C188    call        @IntOver
 0069C18D    lea         edx,[esi+edx*4]
 0069C190    push        esi
 0069C191    push        edi
 0069C192    lea         esi,[ebp-120]
 0069C198    lea         edi,[edx+eax*8-8FC]
 0069C19F    mov         ecx,40
 0069C1A4    rep movs    dword ptr [edi],dword ptr [esi]
 0069C1A6    pop         edi
 0069C1A7    pop         esi
 0069C1A8    inc         ebx
 0069C1A9    add         dword ptr [ebp-20],62
 0069C1AD    cmp         ebx,0D
>0069C1B0    jne         0069C14C
 0069C1B2    inc         edi
 0069C1B3    add         dword ptr [ebp-0C],624
 0069C1BA    cmp         edi,5
>0069C1BD    jne         0069BECE
 0069C1C3    mov         byte ptr ds:[8DF5B8],1;gvar_008DF5B8
 0069C1CA    mov         eax,dword ptr [esi+4818]
 0069C1D0    lea         edx,[eax+44]
 0069C1D3    call        TFXPCI.SetConfigInfo
 0069C1D8    pop         edi
 0069C1D9    pop         esi
 0069C1DA    pop         ebx
 0069C1DB    mov         esp,ebp
 0069C1DD    pop         ebp
 0069C1DE    ret         4
end;*}

//0069C1E4
function TFXPIO.GetCCIRecord(Ctrlr:Byte; IOLine:Byte):PCCIRecord;
begin
{*
 0069C1E4    push        ebp
 0069C1E5    mov         ebp,esp
 0069C1E7    push        0
 0069C1E9    push        0
 0069C1EB    push        0
 0069C1ED    push        0
 0069C1EF    push        0
 0069C1F1    push        0
 0069C1F3    push        0
 0069C1F5    push        ebx
 0069C1F6    push        esi
 0069C1F7    push        edi
 0069C1F8    mov         byte ptr [ebp-1],cl
 0069C1FB    mov         ebx,edx
 0069C1FD    xor         edx,edx
 0069C1FF    push        ebp
 0069C200    push        69C3DB
 0069C205    push        dword ptr fs:[edx]
 0069C208    mov         dword ptr fs:[edx],esp
 0069C20B    xor         esi,esi
 0069C20D    mov         edx,ebx
 0069C20F    sub         dl,1
>0069C212    jb          0069C21E
 0069C214    sub         dl,4
>0069C217    jb          0069C285
>0069C219    jmp         0069C387
 0069C21E    movzx       edx,byte ptr [ebp-1]
 0069C222    dec         edx
 0069C223    sub         dl,2
>0069C226    jae         0069C24E
 0069C228    movzx       edx,byte ptr [ebp-1]
 0069C22C    dec         edx
 0069C22D    cmp         edx,1
>0069C230    jbe         0069C237
 0069C232    call        @BoundErr
 0069C237    inc         edx
 0069C238    imul        edx,edx,20
>0069C23B    jno         0069C242
 0069C23D    call        @IntOver
 0069C242    lea         esi,[eax+edx*8-0FC]
>0069C249    jmp         0069C3B8
 0069C24E    lea         eax,[ebp-8]
 0069C251    push        eax
 0069C252    movzx       eax,byte ptr [ebp-1]
 0069C256    mov         dword ptr [ebp-10],eax
 0069C259    mov         byte ptr [ebp-0C],0
 0069C25D    lea         edx,[ebp-10]
 0069C260    xor         ecx,ecx
 0069C262    mov         eax,69C3F8;'Invalid IOLine (%d) in GetCCIRecord'
 0069C267    call        Format
 0069C26C    mov         ecx,dword ptr [ebp-8]
 0069C26F    mov         dl,1
 0069C271    mov         eax,[0041873C];ERangeError
 0069C276    call        Exception.Create;ERangeError.Create
 0069C27B    call        @RaiseExcept
>0069C280    jmp         0069C3B8
 0069C285    movzx       edx,bl
 0069C288    dec         edx
 0069C289    cmp         edx,3
>0069C28C    jbe         0069C293
 0069C28E    call        @BoundErr
 0069C293    inc         edx
 0069C294    imul        edi,edx,401
>0069C29A    jno         0069C2A1
 0069C29C    call        @IntOver
 0069C2A1    movzx       edx,word ptr [eax+edi*4-800]
 0069C2A9    dec         dx
>0069C2AC    je          0069C2B9
 0069C2AE    sub         dx,3
>0069C2B2    je          0069C323
>0069C2B4    jmp         0069C3B8
 0069C2B9    movzx       edx,byte ptr [ebp-1]
 0069C2BD    dec         edx
 0069C2BE    sub         dl,4
>0069C2C1    jae         0069C2EC
 0069C2C3    movzx       edx,byte ptr [ebp-1]
 0069C2C7    dec         edx
 0069C2C8    cmp         edx,3
>0069C2CB    jbe         0069C2D2
 0069C2CD    call        @BoundErr
 0069C2D2    inc         edx
 0069C2D3    imul        edx,edx,20
>0069C2D6    jno         0069C2DD
 0069C2D8    call        @IntOver
 0069C2DD    lea         eax,[eax+edi*4]
 0069C2E0    lea         esi,[eax+edx*8-8FC]
>0069C2E7    jmp         0069C3B8
 0069C2EC    lea         eax,[ebp-14]
 0069C2EF    push        eax
 0069C2F0    movzx       eax,byte ptr [ebp-1]
 0069C2F4    mov         dword ptr [ebp-10],eax
 0069C2F7    mov         byte ptr [ebp-0C],0
 0069C2FB    lea         edx,[ebp-10]
 0069C2FE    xor         ecx,ecx
 0069C300    mov         eax,69C3F8;'Invalid IOLine (%d) in GetCCIRecord'
 0069C305    call        Format
 0069C30A    mov         ecx,dword ptr [ebp-14]
 0069C30D    mov         dl,1
 0069C30F    mov         eax,[0041873C];ERangeError
 0069C314    call        Exception.Create;ERangeError.Create
 0069C319    call        @RaiseExcept
>0069C31E    jmp         0069C3B8
 0069C323    movzx       edx,byte ptr [ebp-1]
 0069C327    dec         edx
 0069C328    sub         dl,3
>0069C32B    jae         0069C353
 0069C32D    movzx       edx,byte ptr [ebp-1]
 0069C331    dec         edx
 0069C332    cmp         edx,3
>0069C335    jbe         0069C33C
 0069C337    call        @BoundErr
 0069C33C    inc         edx
 0069C33D    imul        edx,edx,20
>0069C340    jno         0069C347
 0069C342    call        @IntOver
 0069C347    lea         eax,[eax+edi*4]
 0069C34A    lea         esi,[eax+edx*8-8FC]
>0069C351    jmp         0069C3B8
 0069C353    lea         eax,[ebp-18]
 0069C356    push        eax
 0069C357    movzx       eax,byte ptr [ebp-1]
 0069C35B    mov         dword ptr [ebp-10],eax
 0069C35E    mov         byte ptr [ebp-0C],0
 0069C362    lea         edx,[ebp-10]
 0069C365    xor         ecx,ecx
 0069C367    mov         eax,69C3F8;'Invalid IOLine (%d) in GetCCIRecord'
 0069C36C    call        Format
 0069C371    mov         ecx,dword ptr [ebp-18]
 0069C374    mov         dl,1
 0069C376    mov         eax,[0041873C];ERangeError
 0069C37B    call        Exception.Create;ERangeError.Create
 0069C380    call        @RaiseExcept
>0069C385    jmp         0069C3B8
 0069C387    lea         eax,[ebp-1C]
 0069C38A    push        eax
 0069C38B    movzx       eax,bl
 0069C38E    mov         dword ptr [ebp-10],eax
 0069C391    mov         byte ptr [ebp-0C],0
 0069C395    lea         edx,[ebp-10]
 0069C398    xor         ecx,ecx
 0069C39A    mov         eax,69C44C;'Invalid Controller (%d) in GetCCIRecord'
 0069C39F    call        Format
 0069C3A4    mov         ecx,dword ptr [ebp-1C]
 0069C3A7    mov         dl,1
 0069C3A9    mov         eax,[0041873C];ERangeError
 0069C3AE    call        Exception.Create;ERangeError.Create
 0069C3B3    call        @RaiseExcept
 0069C3B8    xor         eax,eax
 0069C3BA    pop         edx
 0069C3BB    pop         ecx
 0069C3BC    pop         ecx
 0069C3BD    mov         dword ptr fs:[eax],edx
 0069C3C0    push        69C3E2
 0069C3C5    lea         eax,[ebp-1C]
 0069C3C8    mov         edx,3
 0069C3CD    call        @UStrArrayClr
 0069C3D2    lea         eax,[ebp-8]
 0069C3D5    call        @UStrClr
 0069C3DA    ret
>0069C3DB    jmp         @HandleFinally
>0069C3E0    jmp         0069C3C5
 0069C3E2    mov         eax,esi
 0069C3E4    pop         edi
 0069C3E5    pop         esi
 0069C3E6    pop         ebx
 0069C3E7    mov         esp,ebp
 0069C3E9    pop         ebp
 0069C3EA    ret
*}
end;

//0069C49C
function TFXPIO.GetCCICtrlGroupA(Ctrlr:Byte; IOLine:Byte):Word;
begin
{*
 0069C49C    push        ebx
 0069C49D    push        esi
 0069C49E    push        ecx
 0069C49F    mov         byte ptr [esp],cl
 0069C4A2    mov         ebx,edx
 0069C4A4    mov         esi,eax
 0069C4A6    movzx       ecx,byte ptr [esp]
 0069C4AA    mov         edx,ebx
 0069C4AC    mov         eax,esi
 0069C4AE    call        TFXPIO.GetCCIRecord
 0069C4B3    movzx       eax,word ptr [eax+8]
 0069C4B7    pop         edx
 0069C4B8    pop         esi
 0069C4B9    pop         ebx
 0069C4BA    ret
*}
end;

//0069C4BC
function TFXPIO.GetCCICtrlGroupB(Ctrlr:Byte; IOLine:Byte):Word;
begin
{*
 0069C4BC    push        ebx
 0069C4BD    push        esi
 0069C4BE    push        ecx
 0069C4BF    mov         byte ptr [esp],cl
 0069C4C2    mov         ebx,edx
 0069C4C4    mov         esi,eax
 0069C4C6    movzx       ecx,byte ptr [esp]
 0069C4CA    mov         edx,ebx
 0069C4CC    mov         eax,esi
 0069C4CE    call        TFXPIO.GetCCIRecord
 0069C4D3    movzx       eax,word ptr [eax+0A]
 0069C4D7    pop         edx
 0069C4D8    pop         esi
 0069C4D9    pop         ebx
 0069C4DA    ret
*}
end;

//0069C4DC
function TFXPIO.GetCCICtrlGroupC(Ctrlr:Byte; IOLine:Byte):Word;
begin
{*
 0069C4DC    push        ebx
 0069C4DD    push        esi
 0069C4DE    push        ecx
 0069C4DF    mov         byte ptr [esp],cl
 0069C4E2    mov         ebx,edx
 0069C4E4    mov         esi,eax
 0069C4E6    movzx       ecx,byte ptr [esp]
 0069C4EA    mov         edx,ebx
 0069C4EC    mov         eax,esi
 0069C4EE    call        TFXPIO.GetCCIRecord
 0069C4F3    movzx       eax,word ptr [eax+6]
 0069C4F7    pop         edx
 0069C4F8    pop         esi
 0069C4F9    pop         ebx
 0069C4FA    ret
*}
end;

//0069C4FC
{*procedure TFXPIO.GetCCIDescription(Ctrlr:Byte; IOLine:Byte; ?:?);
begin
 0069C4FC    push        ebp
 0069C4FD    mov         ebp,esp
 0069C4FF    push        ecx
 0069C500    push        ebx
 0069C501    push        esi
 0069C502    mov         byte ptr [ebp-1],cl
 0069C505    mov         ebx,edx
 0069C507    mov         esi,eax
 0069C509    movzx       ecx,byte ptr [ebp-1]
 0069C50D    mov         edx,ebx
 0069C50F    mov         eax,esi
 0069C511    call        TFXPIO.GetCCIRecord
 0069C516    lea         edx,[eax+0C2]
 0069C51C    mov         eax,dword ptr [ebp+8]
 0069C51F    mov         cl,3C
 0069C521    call        @PStrNCpy
 0069C526    pop         esi
 0069C527    pop         ebx
 0069C528    pop         ecx
 0069C529    pop         ebp
 0069C52A    ret         4
end;*}

//0069C530
function TFXPIO.GetCCIFunction(Ctrlr:Byte; IOLine:Byte):Byte;
begin
{*
 0069C530    push        ebx
 0069C531    push        esi
 0069C532    push        ecx
 0069C533    mov         byte ptr [esp],cl
 0069C536    mov         ebx,edx
 0069C538    mov         esi,eax
 0069C53A    movzx       ecx,byte ptr [esp]
 0069C53E    mov         edx,ebx
 0069C540    mov         eax,esi
 0069C542    call        TFXPIO.GetCCIRecord
 0069C547    movzx       eax,byte ptr [eax]
 0069C54A    pop         edx
 0069C54B    pop         esi
 0069C54C    pop         ebx
 0069C54D    ret
*}
end;

//0069C550
function TFXPIO.GetCCIShortIsFault(Ctrlr:Byte; IOLine:Byte):Boolean;
begin
{*
 0069C550    push        ebx
 0069C551    push        esi
 0069C552    push        ecx
 0069C553    mov         byte ptr [esp],cl
 0069C556    mov         ebx,edx
 0069C558    mov         esi,eax
 0069C55A    movzx       ecx,byte ptr [esp]
 0069C55E    mov         edx,ebx
 0069C560    mov         eax,esi
 0069C562    call        TFXPIO.GetCCIRecord
 0069C567    movzx       eax,byte ptr [eax+1]
 0069C56B    pop         edx
 0069C56C    pop         esi
 0069C56D    pop         ebx
 0069C56E    ret
*}
end;

//0069C570
function TFXPIO.GetCCIType(Ctrlr:Byte; IOLine:Byte):Boolean;
begin
{*
 0069C570    push        ebx
 0069C571    push        esi
 0069C572    push        ecx
 0069C573    mov         byte ptr [esp],cl
 0069C576    mov         ebx,edx
 0069C578    mov         esi,eax
 0069C57A    movzx       ecx,byte ptr [esp]
 0069C57E    mov         edx,ebx
 0069C580    mov         eax,esi
 0069C582    call        TFXPIO.GetCCIRecord
 0069C587    movzx       eax,byte ptr [eax+4]
 0069C58B    pop         edx
 0069C58C    pop         esi
 0069C58D    pop         ebx
 0069C58E    ret
*}
end;

//0069C590
procedure TFXPIO.SetCCICtrlGIndex(Ctrlr:Byte; IOLine:Byte; Value:Integer);
begin
{*
 0069C590    push        ebp
 0069C591    mov         ebp,esp
 0069C593    push        ebx
 0069C594    mov         ebx,eax
 0069C596    mov         eax,ebx
 0069C598    call        TFXPIO.GetCCIRecord
 0069C59D    movzx       edx,word ptr [eax+0C]
 0069C5A1    cmp         edx,dword ptr [ebp+8]
>0069C5A4    je          0069C5C1
 0069C5A6    mov         edx,dword ptr [ebp+8]
 0069C5A9    cmp         edx,0FFFF
>0069C5AF    jbe         0069C5B6
 0069C5B1    call        @BoundErr
 0069C5B6    mov         word ptr [eax+0C],dx
 0069C5BA    mov         byte ptr [ebx+4814],1;TFXPIO.FModified:Boolean
 0069C5C1    pop         ebx
 0069C5C2    pop         ebp
 0069C5C3    ret         4
*}
end;

//0069C5C8
procedure TFXPIO.SetCCICtrlGroupA(Ctrlr:Byte; IOLine:Byte; Value:Word);
begin
{*
 0069C5C8    push        ebp
 0069C5C9    mov         ebp,esp
 0069C5CB    add         esp,0FFFFFFF0
 0069C5CE    push        ebx
 0069C5CF    push        esi
 0069C5D0    xor         ebx,ebx
 0069C5D2    mov         dword ptr [ebp-8],ebx
 0069C5D5    mov         byte ptr [ebp-1],cl
 0069C5D8    mov         ebx,eax
 0069C5DA    mov         esi,dword ptr [ebp+8]
 0069C5DD    xor         eax,eax
 0069C5DF    push        ebp
 0069C5E0    push        69C656
 0069C5E5    push        dword ptr fs:[eax]
 0069C5E8    mov         dword ptr fs:[eax],esp
 0069C5EB    movzx       ecx,byte ptr [ebp-1]
 0069C5EF    mov         eax,ebx
 0069C5F1    call        TFXPIO.GetCCIRecord
 0069C5F6    cmp         si,word ptr [eax+8]
>0069C5FA    je          0069C640
 0069C5FC    cmp         si,3E7
>0069C601    jbe         0069C635
 0069C603    lea         eax,[ebp-8]
 0069C606    push        eax
 0069C607    mov         dword ptr [ebp-10],3E7
 0069C60E    mov         byte ptr [ebp-0C],0
 0069C612    lea         edx,[ebp-10]
 0069C615    xor         ecx,ecx
 0069C617    mov         eax,69C674;'Control group can not be > %d'
 0069C61C    call        Format
 0069C621    mov         ecx,dword ptr [ebp-8]
 0069C624    mov         dl,1
 0069C626    mov         eax,[0041873C];ERangeError
 0069C62B    call        Exception.Create;ERangeError.Create
 0069C630    call        @RaiseExcept
 0069C635    mov         word ptr [eax+8],si
 0069C639    mov         byte ptr [ebx+4814],1;TFXPIO.FModified:Boolean
 0069C640    xor         eax,eax
 0069C642    pop         edx
 0069C643    pop         ecx
 0069C644    pop         ecx
 0069C645    mov         dword ptr fs:[eax],edx
 0069C648    push        69C65D
 0069C64D    lea         eax,[ebp-8]
 0069C650    call        @UStrClr
 0069C655    ret
>0069C656    jmp         @HandleFinally
>0069C65B    jmp         0069C64D
 0069C65D    pop         esi
 0069C65E    pop         ebx
 0069C65F    mov         esp,ebp
 0069C661    pop         ebp
 0069C662    ret         4
*}
end;

//0069C6B0
procedure TFXPIO.SetCCICtrlGroupB(Ctrlr:Byte; IOLine:Byte; Value:Word);
begin
{*
 0069C6B0    push        ebp
 0069C6B1    mov         ebp,esp
 0069C6B3    add         esp,0FFFFFFF0
 0069C6B6    push        ebx
 0069C6B7    push        esi
 0069C6B8    xor         ebx,ebx
 0069C6BA    mov         dword ptr [ebp-8],ebx
 0069C6BD    mov         byte ptr [ebp-1],cl
 0069C6C0    mov         ebx,eax
 0069C6C2    mov         esi,dword ptr [ebp+8]
 0069C6C5    xor         eax,eax
 0069C6C7    push        ebp
 0069C6C8    push        69C73E
 0069C6CD    push        dword ptr fs:[eax]
 0069C6D0    mov         dword ptr fs:[eax],esp
 0069C6D3    movzx       ecx,byte ptr [ebp-1]
 0069C6D7    mov         eax,ebx
 0069C6D9    call        TFXPIO.GetCCIRecord
 0069C6DE    cmp         si,word ptr [eax+0A]
>0069C6E2    je          0069C728
 0069C6E4    cmp         si,3E7
>0069C6E9    jbe         0069C71D
 0069C6EB    lea         eax,[ebp-8]
 0069C6EE    push        eax
 0069C6EF    mov         dword ptr [ebp-10],3E7
 0069C6F6    mov         byte ptr [ebp-0C],0
 0069C6FA    lea         edx,[ebp-10]
 0069C6FD    xor         ecx,ecx
 0069C6FF    mov         eax,69C75C;'Control group can not be > %d'
 0069C704    call        Format
 0069C709    mov         ecx,dword ptr [ebp-8]
 0069C70C    mov         dl,1
 0069C70E    mov         eax,[0041873C];ERangeError
 0069C713    call        Exception.Create;ERangeError.Create
 0069C718    call        @RaiseExcept
 0069C71D    mov         word ptr [eax+0A],si
 0069C721    mov         byte ptr [ebx+4814],1;TFXPIO.FModified:Boolean
 0069C728    xor         eax,eax
 0069C72A    pop         edx
 0069C72B    pop         ecx
 0069C72C    pop         ecx
 0069C72D    mov         dword ptr fs:[eax],edx
 0069C730    push        69C745
 0069C735    lea         eax,[ebp-8]
 0069C738    call        @UStrClr
 0069C73D    ret
>0069C73E    jmp         @HandleFinally
>0069C743    jmp         0069C735
 0069C745    pop         esi
 0069C746    pop         ebx
 0069C747    mov         esp,ebp
 0069C749    pop         ebp
 0069C74A    ret         4
*}
end;

//0069C798
procedure TFXPIO.SetCCICtrlGroupC(Ctrlr:Byte; IOLine:Byte; Value:Word);
begin
{*
 0069C798    push        ebp
 0069C799    mov         ebp,esp
 0069C79B    add         esp,0FFFFFFF0
 0069C79E    push        ebx
 0069C79F    push        esi
 0069C7A0    xor         ebx,ebx
 0069C7A2    mov         dword ptr [ebp-8],ebx
 0069C7A5    mov         byte ptr [ebp-1],cl
 0069C7A8    mov         ebx,eax
 0069C7AA    mov         esi,dword ptr [ebp+8]
 0069C7AD    xor         eax,eax
 0069C7AF    push        ebp
 0069C7B0    push        69C826
 0069C7B5    push        dword ptr fs:[eax]
 0069C7B8    mov         dword ptr fs:[eax],esp
 0069C7BB    movzx       ecx,byte ptr [ebp-1]
 0069C7BF    mov         eax,ebx
 0069C7C1    call        TFXPIO.GetCCIRecord
 0069C7C6    cmp         si,word ptr [eax+6]
>0069C7CA    je          0069C810
 0069C7CC    cmp         si,3E7
>0069C7D1    jbe         0069C805
 0069C7D3    lea         eax,[ebp-8]
 0069C7D6    push        eax
 0069C7D7    mov         dword ptr [ebp-10],3E7
 0069C7DE    mov         byte ptr [ebp-0C],0
 0069C7E2    lea         edx,[ebp-10]
 0069C7E5    xor         ecx,ecx
 0069C7E7    mov         eax,69C844;'Control group can not be > %d'
 0069C7EC    call        Format
 0069C7F1    mov         ecx,dword ptr [ebp-8]
 0069C7F4    mov         dl,1
 0069C7F6    mov         eax,[0041873C];ERangeError
 0069C7FB    call        Exception.Create;ERangeError.Create
 0069C800    call        @RaiseExcept
 0069C805    mov         word ptr [eax+6],si
 0069C809    mov         byte ptr [ebx+4814],1;TFXPIO.FModified:Boolean
 0069C810    xor         eax,eax
 0069C812    pop         edx
 0069C813    pop         ecx
 0069C814    pop         ecx
 0069C815    mov         dword ptr fs:[eax],edx
 0069C818    push        69C82D
 0069C81D    lea         eax,[ebp-8]
 0069C820    call        @UStrClr
 0069C825    ret
>0069C826    jmp         @HandleFinally
>0069C82B    jmp         0069C81D
 0069C82D    pop         esi
 0069C82E    pop         ebx
 0069C82F    mov         esp,ebp
 0069C831    pop         ebp
 0069C832    ret         4
*}
end;

//0069C880
procedure TFXPIO.SetCCIDescription(Ctrlr:Byte; IOLine:Byte; Value:string60);
begin
{*
 0069C880    push        ebp
 0069C881    mov         ebp,esp
 0069C883    push        ebx
 0069C884    push        esi
 0069C885    mov         ebx,eax
 0069C887    mov         eax,ebx
 0069C889    call        TFXPIO.GetCCIRecord
 0069C88E    mov         esi,eax
 0069C890    lea         eax,[esi+0C2]
 0069C896    mov         edx,dword ptr [ebp+8]
 0069C899    movzx       ecx,byte ptr [eax]
 0069C89C    inc         ecx
 0069C89D    call        @AStrCmp
>0069C8A2    je          0069C8BB
 0069C8A4    lea         eax,[esi+0C2]
 0069C8AA    mov         edx,dword ptr [ebp+8]
 0069C8AD    mov         cl,3C
 0069C8AF    call        @PStrNCpy
 0069C8B4    mov         byte ptr [ebx+4814],1;TFXPIO.FModified:Boolean
 0069C8BB    pop         esi
 0069C8BC    pop         ebx
 0069C8BD    pop         ebp
 0069C8BE    ret         4
*}
end;

//0069C8C4
procedure TFXPIO.SetCCIFunction(Ctrlr:Byte; IOLine:Byte; Value:Byte);
begin
{*
 0069C8C4    push        ebp
 0069C8C5    mov         ebp,esp
 0069C8C7    add         esp,0FFFFFFF0
 0069C8CA    push        ebx
 0069C8CB    push        esi
 0069C8CC    xor         ebx,ebx
 0069C8CE    mov         dword ptr [ebp-8],ebx
 0069C8D1    mov         byte ptr [ebp-1],cl
 0069C8D4    mov         esi,eax
 0069C8D6    mov         ebx,dword ptr [ebp+8]
 0069C8D9    xor         eax,eax
 0069C8DB    push        ebp
 0069C8DC    push        69C94D
 0069C8E1    push        dword ptr fs:[eax]
 0069C8E4    mov         dword ptr fs:[eax],esp
 0069C8E7    movzx       ecx,byte ptr [ebp-1]
 0069C8EB    mov         eax,esi
 0069C8ED    call        TFXPIO.GetCCIRecord
 0069C8F2    cmp         bl,byte ptr [eax]
>0069C8F4    je          0069C937
 0069C8F6    mov         edx,ebx
 0069C8F8    sub         dl,1D
>0069C8FB    jb          0069C92E
 0069C8FD    lea         eax,[ebp-8]
 0069C900    push        eax
 0069C901    movzx       eax,bl
 0069C904    mov         dword ptr [ebp-10],eax
 0069C907    mov         byte ptr [ebp-0C],0
 0069C90B    lea         edx,[ebp-10]
 0069C90E    xor         ecx,ecx
 0069C910    mov         eax,69C968;'CCI function (%d) out of range'
 0069C915    call        Format
 0069C91A    mov         ecx,dword ptr [ebp-8]
 0069C91D    mov         dl,1
 0069C91F    mov         eax,[0041873C];ERangeError
 0069C924    call        Exception.Create;ERangeError.Create
 0069C929    call        @RaiseExcept
 0069C92E    mov         byte ptr [eax],bl
 0069C930    mov         byte ptr [esi+4814],1;TFXPIO.FModified:Boolean
 0069C937    xor         eax,eax
 0069C939    pop         edx
 0069C93A    pop         ecx
 0069C93B    pop         ecx
 0069C93C    mov         dword ptr fs:[eax],edx
 0069C93F    push        69C954
 0069C944    lea         eax,[ebp-8]
 0069C947    call        @UStrClr
 0069C94C    ret
>0069C94D    jmp         @HandleFinally
>0069C952    jmp         0069C944
 0069C954    pop         esi
 0069C955    pop         ebx
 0069C956    mov         esp,ebp
 0069C958    pop         ebp
 0069C959    ret         4
*}
end;

//0069C9A8
procedure TFXPIO.SetCCIShortIsFault(Ctrlr:Byte; IOLine:Byte; Value:Boolean);
begin
{*
 0069C9A8    push        ebp
 0069C9A9    mov         ebp,esp
 0069C9AB    push        ebx
 0069C9AC    mov         ebx,eax
 0069C9AE    mov         eax,ebx
 0069C9B0    call        TFXPIO.GetCCIRecord
 0069C9B5    movzx       edx,byte ptr [eax+1]
 0069C9B9    cmp         dl,byte ptr [ebp+8]
>0069C9BC    je          0069C9CC
 0069C9BE    movzx       edx,byte ptr [ebp+8]
 0069C9C2    mov         byte ptr [eax+1],dl
 0069C9C5    mov         byte ptr [ebx+4814],1;TFXPIO.FModified:Boolean
 0069C9CC    pop         ebx
 0069C9CD    pop         ebp
 0069C9CE    ret         4
*}
end;

//0069C9D4
procedure TFXPIO.SetCCIType(Ctrlr:Byte; IOLine:Byte; Value:Boolean);
begin
{*
 0069C9D4    push        ebp
 0069C9D5    mov         ebp,esp
 0069C9D7    push        ebx
 0069C9D8    mov         ebx,eax
 0069C9DA    mov         eax,ebx
 0069C9DC    call        TFXPIO.GetCCIRecord
 0069C9E1    movzx       edx,byte ptr [eax+4]
 0069C9E5    cmp         dl,byte ptr [ebp+8]
>0069C9E8    je          0069C9F8
 0069C9EA    movzx       edx,byte ptr [ebp+8]
 0069C9EE    mov         byte ptr [eax+4],dl
 0069C9F1    mov         byte ptr [ebx+4814],1;TFXPIO.FModified:Boolean
 0069C9F8    pop         ebx
 0069C9F9    pop         ebp
 0069C9FA    ret         4
*}
end;

//0069CA00
function TFXPIO.GetCCORecord(Ctrlr:Byte; IOLine:Byte):PCCORecord;
begin
{*
 0069CA00    push        ebp
 0069CA01    mov         ebp,esp
 0069CA03    push        0
 0069CA05    push        0
 0069CA07    push        0
 0069CA09    push        0
 0069CA0B    push        0
 0069CA0D    push        0
 0069CA0F    push        0
 0069CA11    push        0
 0069CA13    push        ebx
 0069CA14    push        esi
 0069CA15    push        edi
 0069CA16    mov         byte ptr [ebp-1],cl
 0069CA19    mov         ebx,edx
 0069CA1B    xor         edx,edx
 0069CA1D    push        ebp
 0069CA1E    push        69CC6C
 0069CA23    push        dword ptr fs:[edx]
 0069CA26    mov         dword ptr fs:[edx],esp
 0069CA29    xor         esi,esi
 0069CA2B    mov         edx,ebx
 0069CA2D    sub         dl,1
>0069CA30    jb          0069CA3C
 0069CA32    sub         dl,4
>0069CA35    jb          0069CAA3
>0069CA37    jmp         0069CC18
 0069CA3C    movzx       edx,byte ptr [ebp-1]
 0069CA40    dec         edx
 0069CA41    sub         dl,3
>0069CA44    jae         0069CA6C
 0069CA46    movzx       edx,byte ptr [ebp-1]
 0069CA4A    dec         edx
 0069CA4B    cmp         edx,2
>0069CA4E    jbe         0069CA55
 0069CA50    call        @BoundErr
 0069CA55    inc         edx
 0069CA56    imul        edx,edx,20
>0069CA59    jno         0069CA60
 0069CA5B    call        @IntOver
 0069CA60    lea         esi,[eax+edx*8+104]
>0069CA67    jmp         0069CC49
 0069CA6C    lea         eax,[ebp-8]
 0069CA6F    push        eax
 0069CA70    movzx       eax,byte ptr [ebp-1]
 0069CA74    mov         dword ptr [ebp-10],eax
 0069CA77    mov         byte ptr [ebp-0C],0
 0069CA7B    lea         edx,[ebp-10]
 0069CA7E    xor         ecx,ecx
 0069CA80    mov         eax,69CC88;'Invalid IOLine (%d) in GetCCORecord'
 0069CA85    call        Format
 0069CA8A    mov         ecx,dword ptr [ebp-8]
 0069CA8D    mov         dl,1
 0069CA8F    mov         eax,[0041873C];ERangeError
 0069CA94    call        Exception.Create;ERangeError.Create
 0069CA99    call        @RaiseExcept
>0069CA9E    jmp         0069CC49
 0069CAA3    movzx       edx,bl
 0069CAA6    dec         edx
 0069CAA7    cmp         edx,3
>0069CAAA    jbe         0069CAB1
 0069CAAC    call        @BoundErr
 0069CAB1    inc         edx
 0069CAB2    imul        edi,edx,401
>0069CAB8    jno         0069CABF
 0069CABA    call        @IntOver
 0069CABF    movzx       edx,word ptr [eax+edi*4-800]
 0069CAC7    dec         dx
>0069CACA    je          0069CAE0
 0069CACC    dec         dx
>0069CACF    je          0069CB4A
 0069CAD1    sub         dx,2
>0069CAD5    je          0069CBB4
>0069CADB    jmp         0069CC49
 0069CAE0    movzx       edx,byte ptr [ebp-1]
 0069CAE4    dec         edx
 0069CAE5    sub         dl,2
>0069CAE8    jae         0069CB13
 0069CAEA    movzx       edx,byte ptr [ebp-1]
 0069CAEE    dec         edx
 0069CAEF    cmp         edx,1
>0069CAF2    jbe         0069CAF9
 0069CAF4    call        @BoundErr
 0069CAF9    inc         edx
 0069CAFA    imul        edx,edx,20
>0069CAFD    jno         0069CB04
 0069CAFF    call        @IntOver
 0069CB04    lea         eax,[eax+edi*4]
 0069CB07    lea         esi,[eax+edx*8-4FC]
>0069CB0E    jmp         0069CC49
 0069CB13    lea         eax,[ebp-14]
 0069CB16    push        eax
 0069CB17    movzx       eax,byte ptr [ebp-1]
 0069CB1B    mov         dword ptr [ebp-10],eax
 0069CB1E    mov         byte ptr [ebp-0C],0
 0069CB22    lea         edx,[ebp-10]
 0069CB25    xor         ecx,ecx
 0069CB27    mov         eax,69CC88;'Invalid IOLine (%d) in GetCCORecord'
 0069CB2C    call        Format
 0069CB31    mov         ecx,dword ptr [ebp-14]
 0069CB34    mov         dl,1
 0069CB36    mov         eax,[0041873C];ERangeError
 0069CB3B    call        Exception.Create;ERangeError.Create
 0069CB40    call        @RaiseExcept
>0069CB45    jmp         0069CC49
 0069CB4A    movzx       edx,byte ptr [ebp-1]
 0069CB4E    dec         edx
 0069CB4F    sub         dl,10
>0069CB52    jae         0069CB7D
 0069CB54    movzx       edx,byte ptr [ebp-1]
 0069CB58    dec         edx
 0069CB59    cmp         edx,0F
>0069CB5C    jbe         0069CB63
 0069CB5E    call        @BoundErr
 0069CB63    inc         edx
 0069CB64    imul        edx,edx,20
>0069CB67    jno         0069CB6E
 0069CB69    call        @IntOver
 0069CB6E    lea         eax,[eax+edi*4]
 0069CB71    lea         esi,[eax+edx*8-8FC]
>0069CB78    jmp         0069CC49
 0069CB7D    lea         eax,[ebp-18]
 0069CB80    push        eax
 0069CB81    movzx       eax,byte ptr [ebp-1]
 0069CB85    mov         dword ptr [ebp-10],eax
 0069CB88    mov         byte ptr [ebp-0C],0
 0069CB8C    lea         edx,[ebp-10]
 0069CB8F    xor         ecx,ecx
 0069CB91    mov         eax,69CC88;'Invalid IOLine (%d) in GetCCORecord'
 0069CB96    call        Format
 0069CB9B    mov         ecx,dword ptr [ebp-18]
 0069CB9E    mov         dl,1
 0069CBA0    mov         eax,[0041873C];ERangeError
 0069CBA5    call        Exception.Create;ERangeError.Create
 0069CBAA    call        @RaiseExcept
>0069CBAF    jmp         0069CC49
 0069CBB4    movzx       edx,byte ptr [ebp-1]
 0069CBB8    dec         edx
 0069CBB9    sub         dl,4
>0069CBBC    jae         0069CBE4
 0069CBBE    movzx       edx,byte ptr [ebp-1]
 0069CBC2    dec         edx
 0069CBC3    cmp         edx,3
>0069CBC6    jbe         0069CBCD
 0069CBC8    call        @BoundErr
 0069CBCD    inc         edx
 0069CBCE    imul        edx,edx,20
>0069CBD1    jno         0069CBD8
 0069CBD3    call        @IntOver
 0069CBD8    lea         eax,[eax+edi*4]
 0069CBDB    lea         esi,[eax+edx*8-5FC]
>0069CBE2    jmp         0069CC49
 0069CBE4    lea         eax,[ebp-1C]
 0069CBE7    push        eax
 0069CBE8    movzx       eax,byte ptr [ebp-1]
 0069CBEC    mov         dword ptr [ebp-10],eax
 0069CBEF    mov         byte ptr [ebp-0C],0
 0069CBF3    lea         edx,[ebp-10]
 0069CBF6    xor         ecx,ecx
 0069CBF8    mov         eax,69CC88;'Invalid IOLine (%d) in GetCCORecord'
 0069CBFD    call        Format
 0069CC02    mov         ecx,dword ptr [ebp-1C]
 0069CC05    mov         dl,1
 0069CC07    mov         eax,[0041873C];ERangeError
 0069CC0C    call        Exception.Create;ERangeError.Create
 0069CC11    call        @RaiseExcept
>0069CC16    jmp         0069CC49
 0069CC18    lea         eax,[ebp-20]
 0069CC1B    push        eax
 0069CC1C    movzx       eax,bl
 0069CC1F    mov         dword ptr [ebp-10],eax
 0069CC22    mov         byte ptr [ebp-0C],0
 0069CC26    lea         edx,[ebp-10]
 0069CC29    xor         ecx,ecx
 0069CC2B    mov         eax,69CCDC;'Invalid Controller (%d) in GetCCORecord'
 0069CC30    call        Format
 0069CC35    mov         ecx,dword ptr [ebp-20]
 0069CC38    mov         dl,1
 0069CC3A    mov         eax,[0041873C];ERangeError
 0069CC3F    call        Exception.Create;ERangeError.Create
 0069CC44    call        @RaiseExcept
 0069CC49    xor         eax,eax
 0069CC4B    pop         edx
 0069CC4C    pop         ecx
 0069CC4D    pop         ecx
 0069CC4E    mov         dword ptr fs:[eax],edx
 0069CC51    push        69CC73
 0069CC56    lea         eax,[ebp-20]
 0069CC59    mov         edx,4
 0069CC5E    call        @UStrArrayClr
 0069CC63    lea         eax,[ebp-8]
 0069CC66    call        @UStrClr
 0069CC6B    ret
>0069CC6C    jmp         @HandleFinally
>0069CC71    jmp         0069CC56
 0069CC73    mov         eax,esi
 0069CC75    pop         edi
 0069CC76    pop         esi
 0069CC77    pop         ebx
 0069CC78    mov         esp,ebp
 0069CC7A    pop         ebp
 0069CC7B    ret
*}
end;

//0069CD2C
function TFXPIO.IsOnlyGeneralOutput(IsMO:Boolean; Ctrlr:Byte; IOLine:Byte):Boolean;
begin
{*
 0069CD2C    push        ebp
 0069CD2D    mov         ebp,esp
 0069CD2F    push        ebx
 0069CD30    push        esi
 0069CD31    mov         ebx,ecx
 0069CD33    mov         esi,eax
 0069CD35    test        dl,dl
>0069CD37    je          0069CD5B
 0069CD39    movzx       ecx,byte ptr [ebp+8]
 0069CD3D    mov         edx,ebx
 0069CD3F    mov         eax,esi
 0069CD41    call        TFXPIO.GetADORecord
 0069CD46    movzx       eax,byte ptr [eax]
 0069CD49    add         al,0EF
 0069CD4B    sub         al,2
>0069CD4D    jb          0069CD57
 0069CD4F    sub         al,2
>0069CD51    je          0069CD57
 0069CD53    xor         eax,eax
>0069CD55    jmp         0069CD7B
 0069CD57    mov         al,1
>0069CD59    jmp         0069CD7B
 0069CD5B    movzx       ecx,byte ptr [ebp+8]
 0069CD5F    mov         edx,ebx
 0069CD61    mov         eax,esi
 0069CD63    call        TFXPIO.GetCCORecord
 0069CD68    movzx       eax,byte ptr [eax]
 0069CD6B    add         al,0EF
 0069CD6D    sub         al,2
>0069CD6F    jb          0069CD79
 0069CD71    sub         al,2
>0069CD73    je          0069CD79
 0069CD75    xor         eax,eax
>0069CD77    jmp         0069CD7B
 0069CD79    mov         al,1
 0069CD7B    pop         esi
 0069CD7C    pop         ebx
 0069CD7D    pop         ebp
 0069CD7E    ret         4
*}
end;

//0069CD84
function TFXPIO.IsGeneralOrLocalOutput(IsMO:Boolean; Ctrlr:Byte; IOLine:Byte):Boolean;
begin
{*
 0069CD84    push        ebp
 0069CD85    mov         ebp,esp
 0069CD87    push        ebx
 0069CD88    push        esi
 0069CD89    mov         ebx,ecx
 0069CD8B    mov         esi,eax
 0069CD8D    test        dl,dl
>0069CD8F    je          0069CDAA
 0069CD91    movzx       ecx,byte ptr [ebp+8]
 0069CD95    mov         edx,ebx
 0069CD97    mov         eax,esi
 0069CD99    call        TFXPIO.GetADORecord
 0069CD9E    movzx       eax,byte ptr [eax]
 0069CDA1    add         al,0EA
 0069CDA3    sub         al,4
 0069CDA5    setb        al
>0069CDA8    jmp         0069CDC1
 0069CDAA    movzx       ecx,byte ptr [ebp+8]
 0069CDAE    mov         edx,ebx
 0069CDB0    mov         eax,esi
 0069CDB2    call        TFXPIO.GetCCORecord
 0069CDB7    movzx       eax,byte ptr [eax]
 0069CDBA    add         al,0EA
 0069CDBC    sub         al,4
 0069CDBE    setb        al
 0069CDC1    pop         esi
 0069CDC2    pop         ebx
 0069CDC3    pop         ebp
 0069CDC4    ret         4
*}
end;

//0069CDC8
{*procedure TFXPIO.GetCCOCtrlGroups(Ctrlr:Byte; IOLine:Byte; ?:?);
begin
 0069CDC8    push        ebp
 0069CDC9    mov         ebp,esp
 0069CDCB    push        ecx
 0069CDCC    push        ebx
 0069CDCD    push        esi
 0069CDCE    push        edi
 0069CDCF    mov         byte ptr [ebp-1],cl
 0069CDD2    mov         ebx,edx
 0069CDD4    mov         esi,eax
 0069CDD6    movzx       ecx,byte ptr [ebp-1]
 0069CDDA    mov         edx,ebx
 0069CDDC    mov         eax,esi
 0069CDDE    call        TFXPIO.GetCCORecord
 0069CDE3    mov         edx,dword ptr [ebp+8]
 0069CDE6    lea         esi,[eax+0E]
 0069CDE9    mov         edi,edx
 0069CDEB    mov         ecx,20
 0069CDF0    rep movs    dword ptr [edi],dword ptr [esi]
 0069CDF2    movs        word ptr [edi],word ptr [esi]
 0069CDF4    pop         edi
 0069CDF5    pop         esi
 0069CDF6    pop         ebx
 0069CDF7    pop         ecx
 0069CDF8    pop         ebp
 0069CDF9    ret         4
end;*}

//0069CDFC
{*procedure TFXPIO.GetCCODescription(Ctrlr:Byte; IOLine:Byte; ?:?);
begin
 0069CDFC    push        ebp
 0069CDFD    mov         ebp,esp
 0069CDFF    push        ecx
 0069CE00    push        ebx
 0069CE01    push        esi
 0069CE02    mov         byte ptr [ebp-1],cl
 0069CE05    mov         ebx,edx
 0069CE07    mov         esi,eax
 0069CE09    movzx       ecx,byte ptr [ebp-1]
 0069CE0D    mov         edx,ebx
 0069CE0F    mov         eax,esi
 0069CE11    call        TFXPIO.GetCCORecord
 0069CE16    lea         edx,[eax+0C2]
 0069CE1C    mov         eax,dword ptr [ebp+8]
 0069CE1F    mov         cl,3C
 0069CE21    call        @PStrNCpy
 0069CE26    pop         esi
 0069CE27    pop         ebx
 0069CE28    pop         ecx
 0069CE29    pop         ebp
 0069CE2A    ret         4
end;*}

//0069CE30
function TFXPIO.GetCCOFunction(Ctrlr:Byte; IOLine:Byte):Byte;
begin
{*
 0069CE30    push        ebx
 0069CE31    push        esi
 0069CE32    push        ecx
 0069CE33    mov         byte ptr [esp],cl
 0069CE36    mov         ebx,edx
 0069CE38    mov         esi,eax
 0069CE3A    movzx       ecx,byte ptr [esp]
 0069CE3E    mov         edx,ebx
 0069CE40    mov         eax,esi
 0069CE42    call        TFXPIO.GetCCORecord
 0069CE47    movzx       eax,byte ptr [eax]
 0069CE4A    pop         edx
 0069CE4B    pop         esi
 0069CE4C    pop         ebx
 0069CE4D    ret
*}
end;

//0069CE50
procedure TFXPIO.SetCCOCtrlGIndex(Ctrlr:Byte; IOLine:Byte; Value:Integer);
begin
{*
 0069CE50    push        ebp
 0069CE51    mov         ebp,esp
 0069CE53    push        ebx
 0069CE54    mov         ebx,eax
 0069CE56    mov         eax,ebx
 0069CE58    call        TFXPIO.GetCCORecord
 0069CE5D    movzx       edx,word ptr [eax+0C]
 0069CE61    cmp         edx,dword ptr [ebp+8]
>0069CE64    je          0069CE81
 0069CE66    mov         edx,dword ptr [ebp+8]
 0069CE69    cmp         edx,0FFFF
>0069CE6F    jbe         0069CE76
 0069CE71    call        @BoundErr
 0069CE76    mov         word ptr [eax+0C],dx
 0069CE7A    mov         byte ptr [ebx+4814],1;TFXPIO.FModified:Boolean
 0069CE81    pop         ebx
 0069CE82    pop         ebp
 0069CE83    ret         4
*}
end;

//0069CE88
procedure TFXPIO.SetCCOCtrlGroups(Ctrlr:Byte; IOLine:Byte; Value:TCGRec);
begin
{*
 0069CE88    push        ebp
 0069CE89    mov         ebp,esp
 0069CE8B    push        ebx
 0069CE8C    push        esi
 0069CE8D    push        edi
 0069CE8E    mov         esi,eax
 0069CE90    mov         eax,esi
 0069CE92    call        TFXPIO.GetCCORecord
 0069CE97    mov         ebx,eax
 0069CE99    mov         edx,dword ptr [ebp+8]
 0069CE9C    lea         eax,[ebx+0E]
 0069CE9F    call        0069644C
 0069CEA4    test        al,al
>0069CEA6    jne         0069CEC2
 0069CEA8    mov         eax,dword ptr [ebp+8]
 0069CEAB    push        esi
 0069CEAC    mov         esi,eax
 0069CEAE    lea         edi,[ebx+0E]
 0069CEB1    mov         ecx,20
 0069CEB6    rep movs    dword ptr [edi],dword ptr [esi]
 0069CEB8    movs        word ptr [edi],word ptr [esi]
 0069CEBA    pop         esi
 0069CEBB    mov         byte ptr [esi+4814],1;TFXPIO.FModified:Boolean
 0069CEC2    pop         edi
 0069CEC3    pop         esi
 0069CEC4    pop         ebx
 0069CEC5    pop         ebp
 0069CEC6    ret         4
*}
end;

//0069CECC
procedure TFXPIO.SetCCODescription(Ctrlr:Byte; IOLine:Byte; Value:string60);
begin
{*
 0069CECC    push        ebp
 0069CECD    mov         ebp,esp
 0069CECF    push        ebx
 0069CED0    push        esi
 0069CED1    mov         ebx,eax
 0069CED3    mov         eax,ebx
 0069CED5    call        TFXPIO.GetCCORecord
 0069CEDA    mov         esi,eax
 0069CEDC    lea         eax,[esi+0C2]
 0069CEE2    mov         edx,dword ptr [ebp+8]
 0069CEE5    movzx       ecx,byte ptr [eax]
 0069CEE8    inc         ecx
 0069CEE9    call        @AStrCmp
>0069CEEE    je          0069CF07
 0069CEF0    lea         eax,[esi+0C2]
 0069CEF6    mov         edx,dword ptr [ebp+8]
 0069CEF9    mov         cl,3C
 0069CEFB    call        @PStrNCpy
 0069CF00    mov         byte ptr [ebx+4814],1;TFXPIO.FModified:Boolean
 0069CF07    pop         esi
 0069CF08    pop         ebx
 0069CF09    pop         ebp
 0069CF0A    ret         4
*}
end;

//0069CF10
procedure TFXPIO.SetCCOFunction(Ctrlr:Byte; IOLine:Byte; Value:Byte);
begin
{*
 0069CF10    push        ebp
 0069CF11    mov         ebp,esp
 0069CF13    add         esp,0FFFFFFF0
 0069CF16    push        ebx
 0069CF17    push        esi
 0069CF18    xor         ebx,ebx
 0069CF1A    mov         dword ptr [ebp-8],ebx
 0069CF1D    mov         dword ptr [ebp-4],eax
 0069CF20    mov         ebx,dword ptr [ebp+8]
 0069CF23    xor         eax,eax
 0069CF25    push        ebp
 0069CF26    push        69CFEE
 0069CF2B    push        dword ptr fs:[eax]
 0069CF2E    mov         dword ptr fs:[eax],esp
 0069CF31    mov         eax,dword ptr [ebp-4]
 0069CF34    call        TFXPIO.GetCCORecord
 0069CF39    mov         esi,eax
 0069CF3B    cmp         bl,byte ptr [esi]
>0069CF3D    je          0069CFD8
 0069CF43    movzx       eax,bl
 0069CF46    cmp         eax,13
>0069CF49    jge         0069CF5C
 0069CF4B    sub         eax,1
>0069CF4E    jb          0069CF73
 0069CF50    sub         eax,10
>0069CF53    jb          0069CF83
 0069CF55    sub         eax,2
>0069CF58    jb          0069CF95
>0069CF5A    jmp         0069CF9B
 0069CF5C    add         eax,0FFFFFFED
 0069CF5F    sub         eax,2
>0069CF62    jb          0069CF83
 0069CF64    sub         eax,5
>0069CF67    jb          0069CF95
 0069CF69    add         eax,0FFFFFFF9
 0069CF6C    sub         eax,6
>0069CF6F    jb          0069CF83
>0069CF71    jmp         0069CF9B
 0069CF73    mov         eax,esi
 0069CF75    xor         ecx,ecx
 0069CF77    mov         edx,100
 0069CF7C    call        @FillChar
>0069CF81    jmp         0069CFCC
 0069CF83    lea         eax,[esi+0E]
 0069CF86    call        0069642C
 0069CF8B    test        al,al
>0069CF8D    je          0069CFCC
 0069CF8F    mov         byte ptr [esi+10],1
>0069CF93    jmp         0069CFCC
 0069CF95    mov         byte ptr [esi+10],1
>0069CF99    jmp         0069CFCC
 0069CF9B    lea         eax,[ebp-8]
 0069CF9E    push        eax
 0069CF9F    movzx       eax,bl
 0069CFA2    mov         dword ptr [ebp-10],eax
 0069CFA5    mov         byte ptr [ebp-0C],0
 0069CFA9    lea         edx,[ebp-10]
 0069CFAC    xor         ecx,ecx
 0069CFAE    mov         eax,69D00C;'CCO function (%d) out of range'
 0069CFB3    call        Format
 0069CFB8    mov         ecx,dword ptr [ebp-8]
 0069CFBB    mov         dl,1
 0069CFBD    mov         eax,[0041873C];ERangeError
 0069CFC2    call        Exception.Create;ERangeError.Create
 0069CFC7    call        @RaiseExcept
 0069CFCC    mov         byte ptr [esi],bl
 0069CFCE    mov         eax,dword ptr [ebp-4]
 0069CFD1    mov         byte ptr [eax+4814],1;TFXPIO.FModified:Boolean
 0069CFD8    xor         eax,eax
 0069CFDA    pop         edx
 0069CFDB    pop         ecx
 0069CFDC    pop         ecx
 0069CFDD    mov         dword ptr fs:[eax],edx
 0069CFE0    push        69CFF5
 0069CFE5    lea         eax,[ebp-8]
 0069CFE8    call        @UStrClr
 0069CFED    ret
>0069CFEE    jmp         @HandleFinally
>0069CFF3    jmp         0069CFE5
 0069CFF5    pop         esi
 0069CFF6    pop         ebx
 0069CFF7    mov         esp,ebp
 0069CFF9    pop         ebp
 0069CFFA    ret         4
*}
end;

//0069D04C
function TFXPIO.IsDelayedAlarmEnabledOutputIOConfigured:Boolean;
begin
{*
 0069D04C    mov         dl,16
 0069D04E    call        0069BC40
 0069D053    ret
*}
end;

//0069D054
function TFXPIO.IsFireRouterDisabledOutputIOConfigured:Boolean;
begin
{*
 0069D054    mov         dl,17
 0069D056    call        0069BC40
 0069D05B    ret
*}
end;

//0069D05C
function TFXPIO.IsFaultRouterDisabledOutputIOConfigured:Boolean;
begin
{*
 0069D05C    mov         dl,18
 0069D05E    call        0069BC40
 0069D063    ret
*}
end;

//0069D064
function TFXPIO.IsMainsOffFaultOutputIOConfigured:Boolean;
begin
{*
 0069D064    mov         dl,19
 0069D066    call        0069BC40
 0069D06B    ret
*}
end;

//0069D06C
function TFXPIO.GetADORecord(Ctrlr:Byte; IOLine:Byte):PADORecord;
begin
{*
 0069D06C    push        ebp
 0069D06D    mov         ebp,esp
 0069D06F    push        0
 0069D071    push        0
 0069D073    push        0
 0069D075    push        0
 0069D077    push        0
 0069D079    push        0
 0069D07B    push        0
 0069D07D    push        ebx
 0069D07E    push        esi
 0069D07F    push        edi
 0069D080    mov         byte ptr [ebp-1],cl
 0069D083    mov         ebx,edx
 0069D085    xor         edx,edx
 0069D087    push        ebp
 0069D088    push        69D262
 0069D08D    push        dword ptr fs:[edx]
 0069D090    mov         dword ptr fs:[edx],esp
 0069D093    xor         esi,esi
 0069D095    mov         edx,ebx
 0069D097    sub         dl,1
>0069D09A    jb          0069D0A6
 0069D09C    sub         dl,4
>0069D09F    jb          0069D10C
>0069D0A1    jmp         0069D20E
 0069D0A6    movzx       edx,byte ptr [ebp-1]
 0069D0AA    sub         dl,1
>0069D0AD    jne         0069D0D5
 0069D0AF    movzx       edx,byte ptr [ebp-1]
 0069D0B3    dec         edx
 0069D0B4    cmp         edx,0
>0069D0B7    jbe         0069D0BE
 0069D0B9    call        @BoundErr
 0069D0BE    inc         edx
 0069D0BF    imul        edx,edx,20
>0069D0C2    jno         0069D0C9
 0069D0C4    call        @IntOver
 0069D0C9    lea         esi,[eax+edx*8+404]
>0069D0D0    jmp         0069D23F
 0069D0D5    lea         eax,[ebp-8]
 0069D0D8    push        eax
 0069D0D9    movzx       eax,byte ptr [ebp-1]
 0069D0DD    mov         dword ptr [ebp-10],eax
 0069D0E0    mov         byte ptr [ebp-0C],0
 0069D0E4    lea         edx,[ebp-10]
 0069D0E7    xor         ecx,ecx
 0069D0E9    mov         eax,69D280;'Invalid IOLine (%d) in GetADORecord'
 0069D0EE    call        Format
 0069D0F3    mov         ecx,dword ptr [ebp-8]
 0069D0F6    mov         dl,1
 0069D0F8    mov         eax,[0041873C];ERangeError
 0069D0FD    call        Exception.Create;ERangeError.Create
 0069D102    call        @RaiseExcept
>0069D107    jmp         0069D23F
 0069D10C    movzx       edx,bl
 0069D10F    dec         edx
 0069D110    cmp         edx,3
>0069D113    jbe         0069D11A
 0069D115    call        @BoundErr
 0069D11A    inc         edx
 0069D11B    imul        edi,edx,401
>0069D121    jno         0069D128
 0069D123    call        @IntOver
 0069D128    movzx       edx,word ptr [eax+edi*4-800]
 0069D130    dec         dx
>0069D133    je          0069D140
 0069D135    sub         dx,2
>0069D139    je          0069D1AA
>0069D13B    jmp         0069D23F
 0069D140    movzx       edx,byte ptr [ebp-1]
 0069D144    dec         edx
 0069D145    sub         dl,4
>0069D148    jae         0069D173
 0069D14A    movzx       edx,byte ptr [ebp-1]
 0069D14E    dec         edx
 0069D14F    cmp         edx,3
>0069D152    jbe         0069D159
 0069D154    call        @BoundErr
 0069D159    inc         edx
 0069D15A    imul        edx,edx,20
>0069D15D    jno         0069D164
 0069D15F    call        @IntOver
 0069D164    lea         eax,[eax+edi*4]
 0069D167    lea         esi,[eax+edx*8-2FC]
>0069D16E    jmp         0069D23F
 0069D173    lea         eax,[ebp-14]
 0069D176    push        eax
 0069D177    movzx       eax,byte ptr [ebp-1]
 0069D17B    mov         dword ptr [ebp-10],eax
 0069D17E    mov         byte ptr [ebp-0C],0
 0069D182    lea         edx,[ebp-10]
 0069D185    xor         ecx,ecx
 0069D187    mov         eax,69D280;'Invalid IOLine (%d) in GetADORecord'
 0069D18C    call        Format
 0069D191    mov         ecx,dword ptr [ebp-14]
 0069D194    mov         dl,1
 0069D196    mov         eax,[0041873C];ERangeError
 0069D19B    call        Exception.Create;ERangeError.Create
 0069D1A0    call        @RaiseExcept
>0069D1A5    jmp         0069D23F
 0069D1AA    movzx       edx,byte ptr [ebp-1]
 0069D1AE    dec         edx
 0069D1AF    sub         dl,0C
>0069D1B2    jae         0069D1DA
 0069D1B4    movzx       edx,byte ptr [ebp-1]
 0069D1B8    dec         edx
 0069D1B9    cmp         edx,0B
>0069D1BC    jbe         0069D1C3
 0069D1BE    call        @BoundErr
 0069D1C3    inc         edx
 0069D1C4    imul        edx,edx,20
>0069D1C7    jno         0069D1CE
 0069D1C9    call        @IntOver
 0069D1CE    lea         eax,[eax+edi*4]
 0069D1D1    lea         esi,[eax+edx*8-8FC]
>0069D1D8    jmp         0069D23F
 0069D1DA    lea         eax,[ebp-18]
 0069D1DD    push        eax
 0069D1DE    movzx       eax,byte ptr [ebp-1]
 0069D1E2    mov         dword ptr [ebp-10],eax
 0069D1E5    mov         byte ptr [ebp-0C],0
 0069D1E9    lea         edx,[ebp-10]
 0069D1EC    xor         ecx,ecx
 0069D1EE    mov         eax,69D280;'Invalid IOLine (%d) in GetADORecord'
 0069D1F3    call        Format
 0069D1F8    mov         ecx,dword ptr [ebp-18]
 0069D1FB    mov         dl,1
 0069D1FD    mov         eax,[0041873C];ERangeError
 0069D202    call        Exception.Create;ERangeError.Create
 0069D207    call        @RaiseExcept
>0069D20C    jmp         0069D23F
 0069D20E    lea         eax,[ebp-1C]
 0069D211    push        eax
 0069D212    movzx       eax,bl
 0069D215    mov         dword ptr [ebp-10],eax
 0069D218    mov         byte ptr [ebp-0C],0
 0069D21C    lea         edx,[ebp-10]
 0069D21F    xor         ecx,ecx
 0069D221    mov         eax,69D2D4;'Invalid Controller (%d) in GetADORecord'
 0069D226    call        Format
 0069D22B    mov         ecx,dword ptr [ebp-1C]
 0069D22E    mov         dl,1
 0069D230    mov         eax,[0041873C];ERangeError
 0069D235    call        Exception.Create;ERangeError.Create
 0069D23A    call        @RaiseExcept
 0069D23F    xor         eax,eax
 0069D241    pop         edx
 0069D242    pop         ecx
 0069D243    pop         ecx
 0069D244    mov         dword ptr fs:[eax],edx
 0069D247    push        69D269
 0069D24C    lea         eax,[ebp-1C]
 0069D24F    mov         edx,3
 0069D254    call        @UStrArrayClr
 0069D259    lea         eax,[ebp-8]
 0069D25C    call        @UStrClr
 0069D261    ret
>0069D262    jmp         @HandleFinally
>0069D267    jmp         0069D24C
 0069D269    mov         eax,esi
 0069D26B    pop         edi
 0069D26C    pop         esi
 0069D26D    pop         ebx
 0069D26E    mov         esp,ebp
 0069D270    pop         ebp
 0069D271    ret
*}
end;

//0069D324
function TFXPIO.GetADOModeContinuousAllowed(Ctrlr:Byte; IOLine:Byte):Boolean;
begin
{*
 0069D324    push        ebx
 0069D325    push        esi
 0069D326    push        ecx
 0069D327    mov         byte ptr [esp],cl
 0069D32A    mov         ebx,edx
 0069D32C    mov         esi,eax
 0069D32E    movzx       ecx,byte ptr [esp]
 0069D332    mov         edx,ebx
 0069D334    mov         eax,esi
 0069D336    call        TFXPIO.GetADORecord
 0069D33B    movzx       eax,byte ptr [eax]
 0069D33E    sub         al,1
 0069D340    setb        al
 0069D343    xor         al,1
 0069D345    pop         edx
 0069D346    pop         esi
 0069D347    pop         ebx
 0069D348    ret
*}
end;

//0069D34C
function TFXPIO.GetADOModeDefByJumperAllowed(Ctrlr:Byte; IOLine:Byte):Boolean;
begin
{*
 0069D34C    push        ebx
 0069D34D    push        esi
 0069D34E    push        ecx
 0069D34F    mov         byte ptr [esp],cl
 0069D352    mov         ebx,edx
 0069D354    mov         esi,eax
 0069D356    movzx       ecx,byte ptr [esp]
 0069D35A    mov         edx,ebx
 0069D35C    mov         eax,esi
 0069D35E    call        TFXPIO.GetADORecord
 0069D363    movzx       eax,byte ptr [eax]
 0069D366    cmp         al,27
>0069D368    ja          0069D384
 0069D36A    and         eax,7F
 0069D36D    mov         edx,69D38C
 0069D372    mov         ecx,edx
 0069D374    and         ecx,3
 0069D377    sub         edx,ecx
 0069D379    add         ecx,ecx
 0069D37B    add         ecx,ecx
 0069D37D    add         ecx,ecx
 0069D37F    add         eax,ecx
 0069D381    bt          dword ptr [edx],eax
 0069D384    setb        al
 0069D387    pop         edx
 0069D388    pop         esi
 0069D389    pop         ebx
 0069D38A    ret
*}
end;

//0069D394
function TFXPIO.GetADOModePhasedAllowed(Ctrlr:Byte; IOLine:Byte):Boolean;
begin
{*
 0069D394    push        ebx
 0069D395    push        esi
 0069D396    push        ecx
 0069D397    mov         byte ptr [esp],cl
 0069D39A    mov         ebx,edx
 0069D39C    mov         esi,eax
 0069D39E    movzx       ecx,byte ptr [esp]
 0069D3A2    mov         edx,ebx
 0069D3A4    mov         eax,esi
 0069D3A6    call        TFXPIO.GetADORecord
 0069D3AB    movzx       eax,byte ptr [eax]
 0069D3AE    add         al,0DF
 0069D3B0    sub         al,2
>0069D3B2    jb          0069D3BC
 0069D3B4    sub         al,3
>0069D3B6    je          0069D3BC
 0069D3B8    xor         eax,eax
>0069D3BA    jmp         0069D3BE
 0069D3BC    mov         al,1
 0069D3BE    pop         edx
 0069D3BF    pop         esi
 0069D3C0    pop         ebx
 0069D3C1    ret
*}
end;

//0069D3C4
function TFXPIO.GetADOModePulsedAllowed(Ctrlr:Byte; IOLine:Byte):Boolean;
begin
{*
 0069D3C4    push        ebx
 0069D3C5    push        esi
 0069D3C6    push        ecx
 0069D3C7    mov         byte ptr [esp],cl
 0069D3CA    mov         ebx,edx
 0069D3CC    mov         esi,eax
 0069D3CE    movzx       ecx,byte ptr [esp]
 0069D3D2    mov         edx,ebx
 0069D3D4    mov         eax,esi
 0069D3D6    call        TFXPIO.GetADORecord
 0069D3DB    movzx       eax,byte ptr [eax]
 0069D3DE    cmp         al,27
>0069D3E0    ja          0069D3FC
 0069D3E2    and         eax,7F
 0069D3E5    mov         edx,69D404
 0069D3EA    mov         ecx,edx
 0069D3EC    and         ecx,3
 0069D3EF    sub         edx,ecx
 0069D3F1    add         ecx,ecx
 0069D3F3    add         ecx,ecx
 0069D3F5    add         ecx,ecx
 0069D3F7    add         eax,ecx
 0069D3F9    bt          dword ptr [edx],eax
 0069D3FC    setb        al
 0069D3FF    pop         edx
 0069D400    pop         esi
 0069D401    pop         ebx
 0069D402    ret
*}
end;

//0069D40C
function TFXPIO.GetADOControlGroupsAllowed(Ctrlr:Byte; IOLine:Byte):Boolean;
begin
{*
 0069D40C    push        ebx
 0069D40D    push        esi
 0069D40E    push        ecx
 0069D40F    mov         byte ptr [esp],cl
 0069D412    mov         ebx,edx
 0069D414    mov         esi,eax
 0069D416    movzx       ecx,byte ptr [esp]
 0069D41A    mov         edx,ebx
 0069D41C    mov         eax,esi
 0069D41E    call        TFXPIO.GetADORecord
 0069D423    movzx       eax,byte ptr [eax]
 0069D426    add         al,0EF
 0069D428    sub         al,2
>0069D42A    jb          0069D434
 0069D42C    sub         al,2
>0069D42E    je          0069D434
 0069D430    xor         eax,eax
>0069D432    jmp         0069D436
 0069D434    mov         al,1
 0069D436    xor         al,1
 0069D438    pop         edx
 0069D439    pop         esi
 0069D43A    pop         ebx
 0069D43B    ret
*}
end;

//0069D43C
{*procedure TFXPIO.GetADOCtrlGroups(Ctrlr:Byte; IOLine:Byte; ?:?);
begin
 0069D43C    push        ebp
 0069D43D    mov         ebp,esp
 0069D43F    push        ecx
 0069D440    push        ebx
 0069D441    push        esi
 0069D442    push        edi
 0069D443    mov         byte ptr [ebp-1],cl
 0069D446    mov         ebx,edx
 0069D448    mov         esi,eax
 0069D44A    movzx       ecx,byte ptr [ebp-1]
 0069D44E    mov         edx,ebx
 0069D450    mov         eax,esi
 0069D452    call        TFXPIO.GetADORecord
 0069D457    mov         edx,dword ptr [ebp+8]
 0069D45A    lea         esi,[eax+0E]
 0069D45D    mov         edi,edx
 0069D45F    mov         ecx,20
 0069D464    rep movs    dword ptr [edi],dword ptr [esi]
 0069D466    movs        word ptr [edi],word ptr [esi]
 0069D468    pop         edi
 0069D469    pop         esi
 0069D46A    pop         ebx
 0069D46B    pop         ecx
 0069D46C    pop         ebp
 0069D46D    ret         4
end;*}

//0069D470
{*procedure TFXPIO.GetADODescription(Ctrlr:Byte; IOLine:Byte; ?:?);
begin
 0069D470    push        ebp
 0069D471    mov         ebp,esp
 0069D473    push        ecx
 0069D474    push        ebx
 0069D475    push        esi
 0069D476    mov         byte ptr [ebp-1],cl
 0069D479    mov         ebx,edx
 0069D47B    mov         esi,eax
 0069D47D    movzx       ecx,byte ptr [ebp-1]
 0069D481    mov         edx,ebx
 0069D483    mov         eax,esi
 0069D485    call        TFXPIO.GetADORecord
 0069D48A    lea         edx,[eax+0C2]
 0069D490    mov         eax,dword ptr [ebp+8]
 0069D493    mov         cl,3C
 0069D495    call        @PStrNCpy
 0069D49A    pop         esi
 0069D49B    pop         ebx
 0069D49C    pop         ecx
 0069D49D    pop         ebp
 0069D49E    ret         4
end;*}

//0069D4A4
function TFXPIO.GetADOFunction(Ctrlr:Byte; IOLine:Byte):Byte;
begin
{*
 0069D4A4    push        ebx
 0069D4A5    push        esi
 0069D4A6    push        ecx
 0069D4A7    mov         byte ptr [esp],cl
 0069D4AA    mov         ebx,edx
 0069D4AC    mov         esi,eax
 0069D4AE    movzx       ecx,byte ptr [esp]
 0069D4B2    mov         edx,ebx
 0069D4B4    mov         eax,esi
 0069D4B6    call        TFXPIO.GetADORecord
 0069D4BB    movzx       eax,byte ptr [eax]
 0069D4BE    pop         edx
 0069D4BF    pop         esi
 0069D4C0    pop         ebx
 0069D4C1    ret
*}
end;

//0069D4C4
function TFXPIO.GetADOMode(Ctrlr:Byte; IOLine:Byte):Byte;
begin
{*
 0069D4C4    push        ebx
 0069D4C5    push        esi
 0069D4C6    push        ecx
 0069D4C7    mov         byte ptr [esp],cl
 0069D4CA    mov         ebx,edx
 0069D4CC    mov         esi,eax
 0069D4CE    movzx       ecx,byte ptr [esp]
 0069D4D2    mov         edx,ebx
 0069D4D4    mov         eax,esi
 0069D4D6    call        TFXPIO.GetADORecord
 0069D4DB    movzx       eax,byte ptr [eax+4]
 0069D4DF    pop         edx
 0069D4E0    pop         esi
 0069D4E1    pop         ebx
 0069D4E2    ret
*}
end;

//0069D4E4
function TFXPIO.GetADOMonitoring(Ctrlr:Byte; IOLine:Byte):Boolean;
begin
{*
 0069D4E4    push        ebx
 0069D4E5    push        esi
 0069D4E6    push        ecx
 0069D4E7    mov         byte ptr [esp],cl
 0069D4EA    mov         ebx,edx
 0069D4EC    mov         esi,eax
 0069D4EE    movzx       ecx,byte ptr [esp]
 0069D4F2    mov         edx,ebx
 0069D4F4    mov         eax,esi
 0069D4F6    call        TFXPIO.GetADORecord
 0069D4FB    movzx       eax,byte ptr [eax+1]
 0069D4FF    pop         edx
 0069D500    pop         esi
 0069D501    pop         ebx
 0069D502    ret
*}
end;

//0069D504
procedure TFXPIO.SetADOCtrlGIndex(Ctrlr:Byte; IOLine:Byte; Value:Integer);
begin
{*
 0069D504    push        ebp
 0069D505    mov         ebp,esp
 0069D507    push        ebx
 0069D508    mov         ebx,eax
 0069D50A    mov         eax,ebx
 0069D50C    call        TFXPIO.GetADORecord
 0069D511    movzx       edx,word ptr [eax+0C]
 0069D515    cmp         edx,dword ptr [ebp+8]
>0069D518    je          0069D535
 0069D51A    mov         edx,dword ptr [ebp+8]
 0069D51D    cmp         edx,0FFFF
>0069D523    jbe         0069D52A
 0069D525    call        @BoundErr
 0069D52A    mov         word ptr [eax+0C],dx
 0069D52E    mov         byte ptr [ebx+4814],1;TFXPIO.FModified:Boolean
 0069D535    pop         ebx
 0069D536    pop         ebp
 0069D537    ret         4
*}
end;

//0069D53C
procedure TFXPIO.SetADOCtrlGroups(Ctrlr:Byte; IOLine:Byte; Value:TCGRec);
begin
{*
 0069D53C    push        ebp
 0069D53D    mov         ebp,esp
 0069D53F    push        ebx
 0069D540    push        esi
 0069D541    push        edi
 0069D542    mov         esi,eax
 0069D544    mov         eax,esi
 0069D546    call        TFXPIO.GetADORecord
 0069D54B    mov         ebx,eax
 0069D54D    mov         edx,dword ptr [ebp+8]
 0069D550    lea         eax,[ebx+0E]
 0069D553    call        0069644C
 0069D558    test        al,al
>0069D55A    jne         0069D576
 0069D55C    mov         eax,dword ptr [ebp+8]
 0069D55F    push        esi
 0069D560    mov         esi,eax
 0069D562    lea         edi,[ebx+0E]
 0069D565    mov         ecx,20
 0069D56A    rep movs    dword ptr [edi],dword ptr [esi]
 0069D56C    movs        word ptr [edi],word ptr [esi]
 0069D56E    pop         esi
 0069D56F    mov         byte ptr [esi+4814],1;TFXPIO.FModified:Boolean
 0069D576    pop         edi
 0069D577    pop         esi
 0069D578    pop         ebx
 0069D579    pop         ebp
 0069D57A    ret         4
*}
end;

//0069D580
procedure TFXPIO.SetADODescription(Ctrlr:Byte; IOLine:Byte; Value:string60);
begin
{*
 0069D580    push        ebp
 0069D581    mov         ebp,esp
 0069D583    push        ebx
 0069D584    push        esi
 0069D585    mov         ebx,eax
 0069D587    mov         eax,ebx
 0069D589    call        TFXPIO.GetADORecord
 0069D58E    mov         esi,eax
 0069D590    lea         eax,[esi+0C2]
 0069D596    mov         edx,dword ptr [ebp+8]
 0069D599    movzx       ecx,byte ptr [eax]
 0069D59C    inc         ecx
 0069D59D    call        @AStrCmp
>0069D5A2    je          0069D5BB
 0069D5A4    lea         eax,[esi+0C2]
 0069D5AA    mov         edx,dword ptr [ebp+8]
 0069D5AD    mov         cl,3C
 0069D5AF    call        @PStrNCpy
 0069D5B4    mov         byte ptr [ebx+4814],1;TFXPIO.FModified:Boolean
 0069D5BB    pop         esi
 0069D5BC    pop         ebx
 0069D5BD    pop         ebp
 0069D5BE    ret         4
*}
end;

//0069D5C4
procedure TFXPIO.SetADOFunction(Ctrlr:Byte; IOLine:Byte; Value:Byte);
begin
{*
 0069D5C4    push        ebp
 0069D5C5    mov         ebp,esp
 0069D5C7    add         esp,0FFFFFFF0
 0069D5CA    push        ebx
 0069D5CB    push        esi
 0069D5CC    xor         ebx,ebx
 0069D5CE    mov         dword ptr [ebp-8],ebx
 0069D5D1    mov         dword ptr [ebp-4],eax
 0069D5D4    mov         ebx,dword ptr [ebp+8]
 0069D5D7    xor         eax,eax
 0069D5D9    push        ebp
 0069D5DA    push        69D6E5
 0069D5DF    push        dword ptr fs:[eax]
 0069D5E2    mov         dword ptr fs:[eax],esp
 0069D5E5    mov         eax,dword ptr [ebp-4]
 0069D5E8    call        TFXPIO.GetADORecord
 0069D5ED    mov         esi,eax
 0069D5EF    cmp         bl,byte ptr [esi]
>0069D5F1    je          0069D6CF
 0069D5F7    mov         byte ptr [esi],bl
 0069D5F9    movzx       eax,bl
 0069D5FC    cmp         eax,13
>0069D5FF    jge         0069D612
 0069D601    sub         eax,1
>0069D604    jb          0069D629
 0069D606    sub         eax,10
>0069D609    jb          0069D639
 0069D60B    sub         eax,2
>0069D60E    jb          0069D64B
>0069D610    jmp         0069D651
 0069D612    add         eax,0FFFFFFED
 0069D615    sub         eax,2
>0069D618    jb          0069D639
 0069D61A    sub         eax,5
>0069D61D    jb          0069D64B
 0069D61F    add         eax,0FFFFFFF9
 0069D622    sub         eax,6
>0069D625    jb          0069D639
>0069D627    jmp         0069D651
 0069D629    mov         eax,esi
 0069D62B    xor         ecx,ecx
 0069D62D    mov         edx,100
 0069D632    call        @FillChar
>0069D637    jmp         0069D682
 0069D639    lea         eax,[esi+0E]
 0069D63C    call        0069642C
 0069D641    test        al,al
>0069D643    je          0069D682
 0069D645    mov         byte ptr [esi+10],1
>0069D649    jmp         0069D682
 0069D64B    mov         byte ptr [esi+10],1
>0069D64F    jmp         0069D682
 0069D651    lea         eax,[ebp-8]
 0069D654    push        eax
 0069D655    movzx       eax,bl
 0069D658    mov         dword ptr [ebp-10],eax
 0069D65B    mov         byte ptr [ebp-0C],0
 0069D65F    lea         edx,[ebp-10]
 0069D662    xor         ecx,ecx
 0069D664    mov         eax,69D700;'ADO function (%d) out of range'
 0069D669    call        Format
 0069D66E    mov         ecx,dword ptr [ebp-8]
 0069D671    mov         dl,1
 0069D673    mov         eax,[0041873C];ERangeError
 0069D678    call        Exception.Create;ERangeError.Create
 0069D67D    call        @RaiseExcept
 0069D682    movzx       eax,bl
 0069D685    cmp         eax,0E
>0069D688    jge         0069D699
 0069D68A    sub         eax,3
>0069D68D    jb          0069D6AC
 0069D68F    add         eax,0FFFFFFFA
 0069D692    sub         eax,3
>0069D695    jb          0069D6AC
>0069D697    jmp         0069D6B2
 0069D699    add         eax,0FFFFFFF2
 0069D69C    sub         eax,3
>0069D69F    jb          0069D6AC
 0069D6A1    dec         eax
>0069D6A2    je          0069D6AC
 0069D6A4    add         eax,0FFFFFFF1
 0069D6A7    sub         eax,6
>0069D6AA    jae         0069D6B2
 0069D6AC    mov         byte ptr [esi+4],0
>0069D6B0    jmp         0069D6B6
 0069D6B2    mov         byte ptr [esi+4],1
 0069D6B6    sub         bl,1
>0069D6B9    jae         0069D6C1
 0069D6BB    mov         byte ptr [esi+1],0
>0069D6BF    jmp         0069D6C5
 0069D6C1    mov         byte ptr [esi+1],1
 0069D6C5    mov         eax,dword ptr [ebp-4]
 0069D6C8    mov         byte ptr [eax+4814],1;TFXPIO.FModified:Boolean
 0069D6CF    xor         eax,eax
 0069D6D1    pop         edx
 0069D6D2    pop         ecx
 0069D6D3    pop         ecx
 0069D6D4    mov         dword ptr fs:[eax],edx
 0069D6D7    push        69D6EC
 0069D6DC    lea         eax,[ebp-8]
 0069D6DF    call        @UStrClr
 0069D6E4    ret
>0069D6E5    jmp         @HandleFinally
>0069D6EA    jmp         0069D6DC
 0069D6EC    pop         esi
 0069D6ED    pop         ebx
 0069D6EE    mov         esp,ebp
 0069D6F0    pop         ebp
 0069D6F1    ret         4
*}
end;

//0069D740
procedure TFXPIO.SetADOMode(Ctrlr:Byte; IOLine:Byte; Value:Byte);
begin
{*
 0069D740    push        ebp
 0069D741    mov         ebp,esp
 0069D743    add         esp,0FFFFFFF0
 0069D746    push        ebx
 0069D747    push        esi
 0069D748    push        edi
 0069D749    xor         ebx,ebx
 0069D74B    mov         dword ptr [ebp-8],ebx
 0069D74E    mov         byte ptr [ebp-2],cl
 0069D751    mov         byte ptr [ebp-1],dl
 0069D754    mov         esi,eax
 0069D756    mov         ebx,dword ptr [ebp+8]
 0069D759    xor         eax,eax
 0069D75B    push        ebp
 0069D75C    push        69D838
 0069D761    push        dword ptr fs:[eax]
 0069D764    mov         dword ptr fs:[eax],esp
 0069D767    movzx       ecx,byte ptr [ebp-2]
 0069D76B    movzx       edx,byte ptr [ebp-1]
 0069D76F    mov         eax,esi
 0069D771    call        TFXPIO.GetADORecord
 0069D776    mov         edi,eax
 0069D778    cmp         bl,byte ptr [edi+4]
>0069D77B    je          0069D822
 0069D781    mov         eax,ebx
 0069D783    sub         al,1
>0069D785    jb          0069D793
>0069D787    je          0069D7A8
 0069D789    dec         al
>0069D78B    je          0069D7BD
 0069D78D    dec         al
>0069D78F    je          0069D7D2
>0069D791    jmp         0069D7E7
 0069D793    movzx       ecx,byte ptr [ebp-2]
 0069D797    movzx       edx,byte ptr [ebp-1]
 0069D79B    mov         eax,esi
 0069D79D    call        TFXPIO.GetADOModeDefByJumperAllowed
 0069D7A2    test        al,al
>0069D7A4    je          0069D822
>0069D7A6    jmp         0069D818
 0069D7A8    movzx       ecx,byte ptr [ebp-2]
 0069D7AC    movzx       edx,byte ptr [ebp-1]
 0069D7B0    mov         eax,esi
 0069D7B2    call        TFXPIO.GetADOModeContinuousAllowed
 0069D7B7    test        al,al
>0069D7B9    je          0069D822
>0069D7BB    jmp         0069D818
 0069D7BD    movzx       ecx,byte ptr [ebp-2]
 0069D7C1    movzx       edx,byte ptr [ebp-1]
 0069D7C5    mov         eax,esi
 0069D7C7    call        TFXPIO.GetADOModePulsedAllowed
 0069D7CC    test        al,al
>0069D7CE    je          0069D822
>0069D7D0    jmp         0069D818
 0069D7D2    movzx       ecx,byte ptr [ebp-2]
 0069D7D6    movzx       edx,byte ptr [ebp-1]
 0069D7DA    mov         eax,esi
 0069D7DC    call        TFXPIO.GetADOModePhasedAllowed
 0069D7E1    test        al,al
>0069D7E3    je          0069D822
>0069D7E5    jmp         0069D818
 0069D7E7    lea         eax,[ebp-8]
 0069D7EA    push        eax
 0069D7EB    movzx       eax,bl
 0069D7EE    mov         dword ptr [ebp-10],eax
 0069D7F1    mov         byte ptr [ebp-0C],0
 0069D7F5    lea         edx,[ebp-10]
 0069D7F8    xor         ecx,ecx
 0069D7FA    mov         eax,69D854;'ADO mode (%d) out of range'
 0069D7FF    call        Format
 0069D804    mov         ecx,dword ptr [ebp-8]
 0069D807    mov         dl,1
 0069D809    mov         eax,[0041873C];ERangeError
 0069D80E    call        Exception.Create;ERangeError.Create
 0069D813    call        @RaiseExcept
 0069D818    mov         byte ptr [edi+4],bl
 0069D81B    mov         byte ptr [esi+4814],1;TFXPIO.FModified:Boolean
 0069D822    xor         eax,eax
 0069D824    pop         edx
 0069D825    pop         ecx
 0069D826    pop         ecx
 0069D827    mov         dword ptr fs:[eax],edx
 0069D82A    push        69D83F
 0069D82F    lea         eax,[ebp-8]
 0069D832    call        @UStrClr
 0069D837    ret
>0069D838    jmp         @HandleFinally
>0069D83D    jmp         0069D82F
 0069D83F    pop         edi
 0069D840    pop         esi
 0069D841    pop         ebx
 0069D842    mov         esp,ebp
 0069D844    pop         ebp
 0069D845    ret         4
*}
end;

//0069D88C
procedure TFXPIO.SetADOMonitoring(Ctrlr:Byte; IOLine:Byte; Value:Boolean);
begin
{*
 0069D88C    push        ebp
 0069D88D    mov         ebp,esp
 0069D88F    push        ebx
 0069D890    mov         ebx,eax
 0069D892    mov         eax,ebx
 0069D894    call        TFXPIO.GetADORecord
 0069D899    movzx       edx,byte ptr [eax+1]
 0069D89D    cmp         dl,byte ptr [ebp+8]
>0069D8A0    je          0069D8B0
 0069D8A2    movzx       edx,byte ptr [ebp+8]
 0069D8A6    mov         byte ptr [eax+1],dl
 0069D8A9    mov         byte ptr [ebx+4814],1;TFXPIO.FModified:Boolean
 0069D8B0    pop         ebx
 0069D8B1    pop         ebp
 0069D8B2    ret         4
*}
end;

//0069D8B8
procedure TFXPIO.Clear(Ctrl:Byte);
begin
{*
 0069D8B8    push        ebx
 0069D8B9    push        esi
 0069D8BA    mov         ebx,edx
 0069D8BC    mov         esi,eax
 0069D8BE    mov         edx,ebx
 0069D8C0    mov         eax,esi
 0069D8C2    call        TFXPIO.GetIOCtrlrType
 0069D8C7    movzx       eax,al
 0069D8CA    cmp         eax,6
>0069D8CD    ja          0069D9DF
 0069D8D3    jmp         dword ptr [eax*4+69D8DA]
 0069D8D3    dd          0069D9DF
 0069D8D3    dd          0069D8F6
 0069D8D3    dd          0069D928
 0069D8D3    dd          0069D95A
 0069D8D3    dd          0069D98C
 0069D8D3    dd          0069D9BE
 0069D8D3    dd          0069D9D0
 0069D8F6    movzx       eax,bl
 0069D8F9    dec         eax
 0069D8FA    cmp         eax,3
>0069D8FD    jbe         0069D904
 0069D8FF    call        @BoundErr
 0069D904    inc         eax
 0069D905    imul        eax,eax,401
>0069D90B    jno         0069D912
 0069D90D    call        @IntOver
 0069D912    lea         eax,[esi+eax*4-800]
 0069D919    xor         ecx,ecx
 0069D91B    mov         edx,1004
 0069D920    call        @FillChar
 0069D925    pop         esi
 0069D926    pop         ebx
 0069D927    ret
 0069D928    movzx       eax,bl
 0069D92B    dec         eax
 0069D92C    cmp         eax,3
>0069D92F    jbe         0069D936
 0069D931    call        @BoundErr
 0069D936    inc         eax
 0069D937    imul        eax,eax,401
>0069D93D    jno         0069D944
 0069D93F    call        @IntOver
 0069D944    lea         eax,[esi+eax*4-800]
 0069D94B    xor         ecx,ecx
 0069D94D    mov         edx,1004
 0069D952    call        @FillChar
 0069D957    pop         esi
 0069D958    pop         ebx
 0069D959    ret
 0069D95A    movzx       eax,bl
 0069D95D    dec         eax
 0069D95E    cmp         eax,3
>0069D961    jbe         0069D968
 0069D963    call        @BoundErr
 0069D968    inc         eax
 0069D969    imul        eax,eax,401
>0069D96F    jno         0069D976
 0069D971    call        @IntOver
 0069D976    lea         eax,[esi+eax*4-800]
 0069D97D    xor         ecx,ecx
 0069D97F    mov         edx,1004
 0069D984    call        @FillChar
 0069D989    pop         esi
 0069D98A    pop         ebx
 0069D98B    ret
 0069D98C    movzx       eax,bl
 0069D98F    dec         eax
 0069D990    cmp         eax,3
>0069D993    jbe         0069D99A
 0069D995    call        @BoundErr
 0069D99A    inc         eax
 0069D99B    imul        eax,eax,401
>0069D9A1    jno         0069D9A8
 0069D9A3    call        @IntOver
 0069D9A8    lea         eax,[esi+eax*4-800]
 0069D9AF    xor         ecx,ecx
 0069D9B1    mov         edx,1004
 0069D9B6    call        @FillChar
 0069D9BB    pop         esi
 0069D9BC    pop         ebx
 0069D9BD    ret
 0069D9BE    lea         eax,[esi+4];TFXPIO.FXMCIO:TFXMCRec
 0069D9C1    xor         ecx,ecx
 0069D9C3    mov         edx,800
 0069D9C8    call        @FillChar
 0069D9CD    pop         esi
 0069D9CE    pop         ebx
 0069D9CF    ret
 0069D9D0    lea         eax,[esi+4];TFXPIO.FXMCIO:TFXMCRec
 0069D9D3    xor         ecx,ecx
 0069D9D5    mov         edx,800
 0069D9DA    call        @FillChar
 0069D9DF    pop         esi
 0069D9E0    pop         ebx
 0069D9E1    ret
*}
end;

Initialization
Finalization
//0069D9E4
{*
 0069D9E4    push        ebp
 0069D9E5    mov         ebp,esp
 0069D9E7    xor         eax,eax
 0069D9E9    push        ebp
 0069D9EA    push        69DAAC
 0069D9EF    push        dword ptr fs:[eax]
 0069D9F2    mov         dword ptr fs:[eax],esp
 0069D9F5    inc         dword ptr ds:[8DF5BC]
>0069D9FB    jne         0069DA9E
 0069DA01    mov         eax,7C287C;^'Not configured'
 0069DA06    mov         ecx,5
 0069DA0B    mov         edx,dword ptr ds:[4012B8];string
 0069DA11    call        @FinalizeArray
 0069DA16    mov         eax,7C28B0;^'Not in use'
 0069DA1B    mov         ecx,1D
 0069DA20    mov         edx,dword ptr ds:[4012B8];string
 0069DA26    call        @FinalizeArray
 0069DA2B    mov         eax,7C2924;^'NO'
 0069DA30    mov         ecx,2
 0069DA35    mov         edx,dword ptr ds:[4012B8];string
 0069DA3B    call        @FinalizeArray
 0069DA40    mov         eax,7C2948;^'Not in use'
 0069DA45    mov         ecx,1A
 0069DA4A    mov         edx,dword ptr ds:[4012B8];string
 0069DA50    call        @FinalizeArray
 0069DA55    mov         eax,7C29B8;^'Fire Alarm Devices'
 0069DA5A    mov         ecx,6
 0069DA5F    mov         edx,dword ptr ds:[4012B8];string
 0069DA65    call        @FinalizeArray
 0069DA6A    mov         eax,7C29D0;^'Jumper defines'
 0069DA6F    mov         ecx,4
 0069DA74    mov         edx,dword ptr ds:[4012B8];string
 0069DA7A    call        @FinalizeArray
 0069DA7F    mov         eax,7C29E0;^'Monitored'
 0069DA84    mov         ecx,2
 0069DA89    mov         edx,dword ptr ds:[4012B8];string
 0069DA8F    call        @FinalizeArray
 0069DA94    mov         eax,7C29E8;^'IO Data encoding error!'
 0069DA99    call        @UStrClr
 0069DA9E    xor         eax,eax
 0069DAA0    pop         edx
 0069DAA1    pop         ecx
 0069DAA2    pop         ecx
 0069DAA3    mov         dword ptr fs:[eax],edx
 0069DAA6    push        69DAB3
 0069DAAB    ret
>0069DAAC    jmp         @HandleFinally
>0069DAB1    jmp         0069DAAB
 0069DAB3    pop         ebp
 0069DAB4    ret
*}
end.