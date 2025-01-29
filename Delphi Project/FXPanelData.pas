//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit FXPanelData;

interface

uses
  SysUtils, Classes, Xml.XMLDoc, FXCalErrFrm, uHaspKey, FXLicFileU, FXStartUp, FXConfigData, FXIOData;

type
  TCompanyLogo = (NoLogo, EsmiLogo, SchneiderLogo, SomatiLogo, SKGroupLogo);
  TLogAndPrintEvent = (lapFireAlarms, lapPrewarnings, lapFaultWarnings, lapDisablements, lapAccessLevels, lapIOChanges, lapStartupEvents, lapStatusUpdates);
  TFXPDRec = TFXPDRec = record//size=200
StructureVersion:Byte;//f0
FXPanelDescription:string254;//f1
RS2320Use:Byte;//f100
RS2320Monitored:Boolean;//f101
RS2320RouterDep:Boolean;//f102
RS2320BaudRate:Byte;//f103
RS4851Use:Byte;//f104
RS4851Monitored:Boolean;//f105
RS4851RouterDep:Boolean;//f106
RS4851BaudRate:Byte;//f107
RS4852Use:Byte;//f108
RS4852BaudRate:Byte;//f109
RS4853Use:Byte;//f10A
RS4853BaudRate:Byte;//f10B
MesaMaster:?;//f10C
MasterActAD:Boolean;//f11C
MasterActAR:Boolean;//f11D
ThisPanel:Byte;//f11E
FirstZone:Word;//f11F
NumOfZones:Byte;//f121
LC1Type:Byte;//f122
LC1FirstLoop:Byte;//f123
LC1NumOfLoops:Byte;//f124
LC2Type:Byte;//f125
LC2FirstLoop:Byte;//f126
LC2NumOfLoops:Byte;//f127
LC3Type:Byte;//f128
LC3FirstLoop:Byte;//f129
LC3NumOfLoops:Byte;//f12A
LC4Type:Byte;//f12B
LC4FirstLoop:Byte;//f12C
LC4NumOfLoops:Byte;//f12D
AlcStartupDelays:?;//f12E
FreeToUseA:Byte;//f136
FreeToUseB:Byte;//f137
FreeToUseC:Byte;//f138
FreeToUseD:Byte;//f139
IOC1Type:Byte;//f13A
IOC1Reserved:Byte;//f13B
IOC2Type:Byte;//f13C
IOC2Reserved:Byte;//f13D
IOC3Type:Byte;//f13E
IOC3Reserved:Byte;//f13F
IOC4Type:Byte;//f140
IOC4Reserved:Byte;//f141
FireARDelayed:Boolean;//f142
GenFireADDelayed:Boolean;//f143
ZonFireADDelayed:Boolean;//f144
FireCODelayed:Boolean;//f145
DelayIndication:Boolean;//f146
DelayTermination:Byte;//f147
DelayTimeT1:Word;//f148
DelayTimeT2:Word;//f14A
FDFireAlarm:Boolean;//f14C
FDPrewarning:Boolean;//f14D
FDAddressFault:Boolean;//f14E
FDAddressDisablement:Boolean;//f14F
FDZoneDisablement:Boolean;//f150
FDMainsOff:Boolean;//f151
PrintEvents:?;//f152
LogEvents:?;//f15A
PrimaryLanguage:Byte;//f162
SecondaryLanguage:Byte;//f163
ServiceCode1:Word;//f164
ServiceCode2:Word;//f166
ServiceCode3:Word;//f168
MaxZoneDisabTime:Byte;//f16A
Summertime:Boolean;//f16B
AlarmDisplay:Byte;//f16C
VisiblePanels:?;//f16D
LastLocalCG:Byte;//f171
DelayTerminationND:Byte;//f172
CoincidenceTermination:Byte;//f173
ResoundOnNewAlarm:Boolean;//f174
MaxAdoDisabTime:Byte;//f175
OldCoincidence:Boolean;//f176
MainsFaultDelayAdjusted:Boolean;//f177
MainsFaultDelayTime:Byte;//f178
MaintenanceInterval:Word;//f179
RouterOffAtSilence:Boolean;//f17B
PanelType:Byte;//f17C
CompanyLogo:TCompanyLogo;//f17D
DayStateL6Indication:Boolean;//f17E
BattPackMonitoring:?;//f17F
EthernetUsage:Byte;//f183
PanelIpAddress:Cardinal;//f184
NetworkSubnetMask:Cardinal;//f188
GatewayIpAddress:Cardinal;//f18C
PreAlarmBlinkRate:Boolean;//f190
CoincidenceAutoReset:Byte;//f191
IndBuzzerMuted:Boolean;//f192
FDSensorInputDisablement:Byte;//f193
IPApplications:Byte;//f194
FreeToUse2:?;//f195
end;;
  TFXPPD = class(TObject)
  published
    procedure SetConvertSysToSap(aLC:Byte; Value:Boolean);//006A3DD0
    function GetConvertSysToSap(aLC:Byte):Boolean;//006A3D9C
    procedure SetAlcStartupDelay(LC:Integer; Line:Integer; Value:Byte);//006A3CB4
    function GetAlcStartupDelay(LC:Integer; Line:Integer):Byte;//006A35BC
    function GetLCFirstLoop(aLC:Byte):Byte;//006A2E74
    procedure SetLCType(aLC:Byte; aLCType:Byte);//006A3A34
    function GetLCLastLoop(aLC:Byte):Byte;//006A2EF0
    function GetLCNumOfLoops(aLC:Byte):Byte;//006A3024
    function GetPrintEventAllowed(lapEvent:TLogAndPrintEvent):Boolean;//006A4448
    procedure SetPrintEventStatus(lapEvent:TLogAndPrintEvent; status:Boolean);//006A43CC
    procedure SetBattPackMonitoring(indx:Byte; Value:Boolean);//006A4BDC
    function GetBattPackMonitoring(indx:Byte):Boolean;//006A4BA8
    function GetLogEventStatus(lapEvent:TLogAndPrintEvent):Boolean;//006A43A4
    function GetAlcStartupDelayAllowed(LC:Integer; Line:Integer):Boolean;//006A3600
    function GetPrintEventStatus(lapEvent:TLogAndPrintEvent):Boolean;//006A4420
    procedure SetLogEventStatus(lapEvent:TLogAndPrintEvent; status:Boolean);//006A4340
    function GetLCType(aLC:Byte):Byte;//006A388C
    procedure CopyTo(PD:TFXPPD);//006A0880
    procedure DecodeFXPDMsg(part:Byte; MsgLen:Byte; MsgData:TMsgData);//006A142C
    function IsEqual(PD:TFXPPD):Boolean;//006A08A8
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function Read(fs:TFileStream; VersionMajor:Integer; RecordSize:Integer; NumOfRecords:Integer; VersionMinor:Integer):Integer;//006A08F4
    constructor Create(FXPanelType:Byte);//006A03AC
    function EncodeFXPDMsg(part:Byte; NegVer:Word; var MsgData:TMsgData; var MsgLen:Byte):Boolean;//006A09E8
    function Save(fs:TFileStream; VersionMajor:Integer; RecordSize:Cardinal; NumOfRecords:Word; VersionMinor:Integer):Integer;//006A0994
    function IsApoStartDelayConfigured:Boolean;//006A3D34
    function UpdateOldPanelData(VersionMajor:Integer; VersionMinor:Integer):Boolean;//006A4C50
    function UserVerificationOfLCChangeNeeded(LoopCtrlr:Integer; NewLoopCtrlrType:Integer; PD:TFXPPD):Integer;//006A3E04
    function IsFDSensorInputDisablementConfigured:Boolean;//006A08D4
    function GetLCForLoop(loopindx:Integer):Byte;//006A3158
    function GetLCFirstLoopIndex(lc:Byte):Byte;//006A30A0
    function GetControllerLoopType(loopindx:Integer):Integer;//006A3234
    function GetLoopTypeOfLCType(LCType:Integer):Integer;//006A31F8
  public
    FPDR:TFXPDRec;//f4
    FModified:Boolean;//f204
    FRetainZoneIDs:Boolean;//f205
    FConvertSysToSap:?;//f206
    CI:TFXPCI;//f20C
    IO:TFXPIO;//f210
  end;
    //function sub_006A0364(?:void ):?;//006A0364
    procedure sub_006A2174(?:TFXPPD; ?:ShortString);//006A2174
    //procedure sub_006A21B4(?:TFXPPD; ?:?);//006A21B4
    procedure sub_006A2434(?:TFXPPD; ?:UnicodeString);//006A2434
    //procedure sub_006A2700(?:TFXPPD; ?:?);//006A2700
    //procedure sub_006A2734(?:TFXPPD; ?:?);//006A2734
    procedure sub_006A279C(?:TFXPPD; ?:Boolean);//006A279C
    //procedure sub_006A27DC(?:TFXPPD; ?:?);//006A27DC
    //function sub_006A2818(?:TFXPPD):?;//006A2818
    //procedure sub_006A2838(?:TFXPPD; ?:?);//006A2838
    procedure sub_006A28A0(?:TFXPPD; ?:Boolean);//006A28A0
    //procedure sub_006A28E0(?:TFXPPD; ?:?);//006A28E0
    //function sub_006A291C(?:TFXPPD):?;//006A291C
    //procedure sub_006A293C(?:TFXPPD; ?:?);//006A293C
    //procedure sub_006A29B8(?:TFXPPD; ?:?);//006A29B8
    //function sub_006A2A00(?:TFXPPD):?;//006A2A00
    //procedure sub_006A2A30(?:TFXPPD; ?:?);//006A2A30
    //function sub_006A2A78(?:TFXPPD):?;//006A2A78
    procedure sub_006A2A98(?:TFXPPD; ?:NativeInt);//006A2A98
    //procedure sub_006A2AD4(?:TFXPPD; ?:?);//006A2AD4
    //procedure sub_006A2B08(?:TFXPPD; ?:?);//006A2B08
    //procedure sub_006A2B3C(?:TFXPPD; ?:?);//006A2B3C
    //function sub_006A2B70(?:TFXPPD):?;//006A2B70
    procedure sub_006A2B90(?:TFXPPD; ?:NativeInt);//006A2B90
    procedure sub_006A2BC4(?:TFXPPD; ?:LongInt);//006A2BC4
    procedure sub_006A2C00(?:TFXPPD; ?:LongInt);//006A2C00
    procedure sub_006A2C50(?:TFXPPD; ?:LongInt);//006A2C50
    procedure sub_006A2D20(?:TFXPPD; ?:LongInt);//006A2D20
    //function sub_006A2DE4(?:TFXPPD):?;//006A2DE4
    //procedure sub_006A2E40(?:TFXPPD; ?:?);//006A2E40
    //function sub_006A3430(?:TFXPPD):?;//006A3430
    //function sub_006A344C(?:TFXPPD):?;//006A344C
    //function sub_006A34B0(?:TFXPPD):?;//006A34B0
    //function sub_006A350C(?:?):?;//006A350C
    //procedure sub_006A38F0(?:?; ?:?; ?:?);//006A38F0
    procedure sub_006A3B38(?:TFXPPD; ?:LongInt);//006A3B38
    procedure sub_006A3F0C(?:TFXPPD; ?:Boolean);//006A3F0C
    procedure sub_006A3F40(?:TFXPPD; ?:Boolean);//006A3F40
    procedure sub_006A3F74(?:TFXPPD; ?:Boolean);//006A3F74
    procedure sub_006A3FA8(?:TFXPPD; ?:Boolean);//006A3FA8
    procedure sub_006A3FDC(?:TFXPPD; ?:Boolean);//006A3FDC
    procedure sub_006A4010(?:TFXPPD; ?:Boolean);//006A4010
    procedure sub_006A4044(?:TFXPPD; ?:NativeInt);//006A4044
    procedure sub_006A4078(?:TFXPPD; ?:Boolean);//006A4078
    procedure sub_006A40AC(?:TFXPPD; ?:Boolean);//006A40AC
    procedure sub_006A40E0(?:TFXPPD; ?:LongInt);//006A40E0
    procedure sub_006A4170(?:TFXPPD; ?:LongInt);//006A4170
    procedure sub_006A41D4(?:TFXPPD; ?:Boolean);//006A41D4
    procedure sub_006A4208(?:TFXPPD; ?:Boolean);//006A4208
    procedure sub_006A423C(?:TFXPPD; ?:Boolean);//006A423C
    procedure sub_006A4270(?:TFXPPD; ?:Boolean);//006A4270
    procedure sub_006A42A4(?:TFXPPD; ?:Integer);//006A42A4
    procedure sub_006A42D8(?:TFXPPD; ?:Integer);//006A42D8
    procedure sub_006A430C(?:TFXPPD; ?:Boolean);//006A430C
    //procedure sub_006A4470(?:TFXPPD; ?:?);//006A4470
    //procedure sub_006A450C(?:TFXPPD; ?:?);//006A450C
    //procedure sub_006A459C(?:TFXPPD; ?:?);//006A459C
    //procedure sub_006A462C(?:TFXPPD; ?:?);//006A462C
    //procedure sub_006A46BC(?:TFXPPD; ?:?);//006A46BC
    procedure sub_006A474C(?:TFXPPD; ?:Boolean);//006A474C
    //function sub_006A4798(?:TFXPPD):?;//006A4798
    procedure sub_006A47B4(?:TFXPPD; ?:LongInt);//006A47B4
    procedure sub_006A47E8(?:TFXPPD; ?:NativeInt);//006A47E8
    procedure sub_006A4898(?:TFXPPD; ?:LongInt);//006A4898
    procedure sub_006A48CC(?:TFXPPD; ?:LongInt);//006A48CC
    procedure sub_006A4920(?:TFXPPD; ?:Integer);//006A4920
    procedure sub_006A49C0(?:TFXPPD; ?:Boolean);//006A49C0
    procedure sub_006A4A0C(?:TFXPPD; ?:LongInt);//006A4A0C
    //function sub_006A4A68(?:TFXPPD):?;//006A4A68
    procedure sub_006A4A84(?:TFXPPD; ?:Boolean);//006A4A84
    procedure sub_006A4AB8(?:TFXPPD; ?:Boolean);//006A4AB8
    procedure sub_006A4AEC(?:TFXPPD; ?:Boolean);//006A4AEC
    procedure sub_006A4B20(?:TFXPPD; ?:Integer);//006A4B20
    procedure sub_006A4B74(?:TFXPPD; ?:Boolean);//006A4B74

implementation

//006A0364
{*function sub_006A0364(?:void ):?;
begin
 006A0364    push        ebp
 006A0365    mov         ebp,esp
 006A0367    add         esp,0FFFFFFF8
 006A036A    mov         dword ptr [ebp-4],eax
 006A036D    mov         eax,dword ptr [ebp-4]
 006A0370    and         eax,0FF
 006A0375    shl         eax,18
 006A0378    mov         edx,dword ptr [ebp-4]
 006A037B    and         edx,0FF00
 006A0381    shl         edx,8
 006A0384    or          eax,edx
 006A0386    mov         edx,dword ptr [ebp-4]
 006A0389    and         edx,0FF0000
 006A038F    shr         edx,8
 006A0392    or          eax,edx
 006A0394    mov         edx,dword ptr [ebp-4]
 006A0397    and         edx,0FF000000
 006A039D    shr         edx,18
 006A03A0    or          eax,edx
 006A03A2    mov         dword ptr [ebp-8],eax
 006A03A5    mov         eax,dword ptr [ebp-8]
 006A03A8    pop         ecx
 006A03A9    pop         ecx
 006A03AA    pop         ebp
 006A03AB    ret
end;*}

//006A03AC
constructor TFXPPD.Create(FXPanelType:Byte);
begin
{*
 006A03AC    push        ebp
 006A03AD    mov         ebp,esp
 006A03AF    add         esp,0FFFFFFF4
 006A03B2    test        dl,dl
>006A03B4    je          006A03BE
 006A03B6    add         esp,0FFFFFFF0
 006A03B9    call        @ClassCreate
 006A03BE    mov         byte ptr [ebp-6],cl
 006A03C1    mov         byte ptr [ebp-5],dl
 006A03C4    mov         dword ptr [ebp-4],eax
 006A03C7    xor         edx,edx
 006A03C9    mov         eax,dword ptr [ebp-4]
 006A03CC    call        TObject.Create
 006A03D1    mov         eax,dword ptr [ebp-4]
 006A03D4    add         eax,4;TFXPPD.FPDR:TFXPDRec
 006A03D7    mov         dword ptr [ebp-0C],eax
 006A03DA    mov         eax,dword ptr [ebp-0C]
 006A03DD    mov         byte ptr [eax],1
 006A03E0    mov         eax,dword ptr [ebp-0C]
 006A03E3    mov         byte ptr [eax+1],0
 006A03E7    mov         eax,dword ptr [ebp-0C]
 006A03EA    mov         byte ptr [eax+100],0
 006A03F1    mov         eax,dword ptr [ebp-0C]
 006A03F4    mov         byte ptr [eax+101],0
 006A03FB    mov         eax,dword ptr [ebp-0C]
 006A03FE    mov         byte ptr [eax+102],0
 006A0405    mov         eax,dword ptr [ebp-0C]
 006A0408    mov         byte ptr [eax+103],3
 006A040F    mov         eax,dword ptr [ebp-0C]
 006A0412    mov         byte ptr [eax+104],0
 006A0419    mov         eax,dword ptr [ebp-0C]
 006A041C    mov         byte ptr [eax+105],0
 006A0423    mov         eax,dword ptr [ebp-0C]
 006A0426    mov         byte ptr [eax+106],0
 006A042D    mov         eax,dword ptr [ebp-0C]
 006A0430    mov         byte ptr [eax+107],3
 006A0437    mov         eax,dword ptr [ebp-0C]
 006A043A    mov         byte ptr [eax+108],0
 006A0441    mov         eax,dword ptr [ebp-0C]
 006A0444    mov         byte ptr [eax+109],3
 006A044B    mov         eax,dword ptr [ebp-0C]
 006A044E    mov         byte ptr [eax+10A],0
 006A0455    mov         eax,dword ptr [ebp-0C]
 006A0458    mov         byte ptr [eax+10B],3
 006A045F    mov         eax,dword ptr [ebp-0C]
 006A0462    mov         byte ptr [eax+11C],0
 006A0469    mov         eax,dword ptr [ebp-0C]
 006A046C    mov         byte ptr [eax+11D],0
 006A0473    mov         eax,dword ptr [ebp-0C]
 006A0476    mov         byte ptr [eax+11E],0
 006A047D    mov         eax,dword ptr [ebp-0C]
 006A0480    mov         word ptr [eax+11F],1
 006A0489    mov         eax,dword ptr [ebp-0C]
 006A048C    mov         byte ptr [eax+121],50
 006A0493    mov         al,byte ptr [ebp-6]
 006A0496    add         al,0FD
 006A0498    sub         al,4
>006A049A    jb          006A04A4
>006A049C    je          006A04C4
 006A049E    dec         al
>006A04A0    je          006A04E4
>006A04A2    jmp         006A0502
 006A04A4    mov         eax,dword ptr [ebp-0C]
 006A04A7    mov         byte ptr [eax+122],0
 006A04AE    mov         eax,dword ptr [ebp-0C]
 006A04B1    mov         byte ptr [eax+123],0
 006A04B8    mov         eax,dword ptr [ebp-0C]
 006A04BB    mov         byte ptr [eax+124],0
>006A04C2    jmp         006A0502
 006A04C4    mov         eax,dword ptr [ebp-0C]
 006A04C7    mov         byte ptr [eax+122],8
 006A04CE    mov         eax,dword ptr [ebp-0C]
 006A04D1    mov         byte ptr [eax+123],1
 006A04D8    mov         eax,dword ptr [ebp-0C]
 006A04DB    mov         byte ptr [eax+124],1
>006A04E2    jmp         006A0502
 006A04E4    mov         eax,dword ptr [ebp-0C]
 006A04E7    mov         byte ptr [eax+122],9
 006A04EE    mov         eax,dword ptr [ebp-0C]
 006A04F1    mov         byte ptr [eax+123],1
 006A04F8    mov         eax,dword ptr [ebp-0C]
 006A04FB    mov         byte ptr [eax+124],1
 006A0502    mov         eax,dword ptr [ebp-0C]
 006A0505    mov         byte ptr [eax+125],0
 006A050C    mov         eax,dword ptr [ebp-0C]
 006A050F    mov         byte ptr [eax+126],0
 006A0516    mov         eax,dword ptr [ebp-0C]
 006A0519    mov         byte ptr [eax+127],0
 006A0520    mov         eax,dword ptr [ebp-0C]
 006A0523    mov         byte ptr [eax+128],0
 006A052A    mov         eax,dword ptr [ebp-0C]
 006A052D    mov         byte ptr [eax+129],0
 006A0534    mov         eax,dword ptr [ebp-0C]
 006A0537    mov         byte ptr [eax+12A],0
 006A053E    mov         eax,dword ptr [ebp-0C]
 006A0541    mov         byte ptr [eax+12B],0
 006A0548    mov         eax,dword ptr [ebp-0C]
 006A054B    mov         byte ptr [eax+12C],0
 006A0552    mov         eax,dword ptr [ebp-0C]
 006A0555    mov         byte ptr [eax+12D],0
 006A055C    mov         al,byte ptr [ebp-6]
 006A055F    add         al,0FD
 006A0561    sub         al,4
>006A0563    jb          006A056B
 006A0565    sub         al,2
>006A0567    jb          006A0577
>006A0569    jmp         006A0581
 006A056B    mov         eax,dword ptr [ebp-0C]
 006A056E    mov         byte ptr [eax+13A],0
>006A0575    jmp         006A0581
 006A0577    mov         eax,dword ptr [ebp-0C]
 006A057A    mov         byte ptr [eax+13A],4
 006A0581    mov         eax,dword ptr [ebp-0C]
 006A0584    mov         byte ptr [eax+13A],0
 006A058B    mov         eax,dword ptr [ebp-0C]
 006A058E    mov         byte ptr [eax+13C],0
 006A0595    mov         eax,dword ptr [ebp-0C]
 006A0598    mov         byte ptr [eax+13E],0
 006A059F    mov         eax,dword ptr [ebp-0C]
 006A05A2    mov         byte ptr [eax+140],0
 006A05A9    mov         eax,dword ptr [ebp-0C]
 006A05AC    mov         byte ptr [eax+142],1
 006A05B3    mov         eax,dword ptr [ebp-0C]
 006A05B6    mov         byte ptr [eax+143],0
 006A05BD    mov         eax,dword ptr [ebp-0C]
 006A05C0    mov         byte ptr [eax+144],0
 006A05C7    mov         eax,dword ptr [ebp-0C]
 006A05CA    mov         byte ptr [eax+145],0
 006A05D1    mov         eax,dword ptr [ebp-0C]
 006A05D4    mov         byte ptr [eax+146],1
 006A05DB    mov         eax,dword ptr [ebp-0C]
 006A05DE    mov         byte ptr [eax+147],0
 006A05E5    mov         eax,dword ptr [ebp-0C]
 006A05E8    mov         word ptr [eax+148],0
 006A05F1    mov         eax,dword ptr [ebp-0C]
 006A05F4    mov         word ptr [eax+14A],0
 006A05FD    mov         eax,dword ptr [ebp-0C]
 006A0600    mov         byte ptr [eax+14C],1
 006A0607    mov         eax,dword ptr [ebp-0C]
 006A060A    mov         byte ptr [eax+14D],1
 006A0611    mov         eax,dword ptr [ebp-0C]
 006A0614    mov         byte ptr [eax+14E],1
 006A061B    mov         eax,dword ptr [ebp-0C]
 006A061E    mov         byte ptr [eax+14F],1
 006A0625    mov         eax,dword ptr [ebp-0C]
 006A0628    mov         byte ptr [eax+150],1
 006A062F    mov         eax,dword ptr [ebp-0C]
 006A0632    mov         byte ptr [eax+151],1
 006A0639    mov         eax,dword ptr [ebp-0C]
 006A063C    mov         byte ptr [eax+152],1
 006A0643    mov         eax,dword ptr [ebp-0C]
 006A0646    mov         byte ptr [eax+153],1
 006A064D    mov         eax,dword ptr [ebp-0C]
 006A0650    mov         byte ptr [eax+154],1
 006A0657    mov         eax,dword ptr [ebp-0C]
 006A065A    mov         byte ptr [eax+155],1
 006A0661    mov         eax,dword ptr [ebp-0C]
 006A0664    mov         byte ptr [eax+156],1
 006A066B    mov         eax,dword ptr [ebp-0C]
 006A066E    mov         byte ptr [eax+157],1
 006A0675    mov         eax,dword ptr [ebp-0C]
 006A0678    mov         byte ptr [eax+158],1
 006A067F    mov         eax,dword ptr [ebp-0C]
 006A0682    mov         byte ptr [eax+159],0
 006A0689    mov         eax,dword ptr [ebp-0C]
 006A068C    mov         byte ptr [eax+15A],1
 006A0693    mov         eax,dword ptr [ebp-0C]
 006A0696    mov         byte ptr [eax+15B],1
 006A069D    mov         eax,dword ptr [ebp-0C]
 006A06A0    mov         byte ptr [eax+15C],1
 006A06A7    mov         eax,dword ptr [ebp-0C]
 006A06AA    mov         byte ptr [eax+15D],1
 006A06B1    mov         eax,dword ptr [ebp-0C]
 006A06B4    mov         byte ptr [eax+15E],1
 006A06BB    mov         eax,dword ptr [ebp-0C]
 006A06BE    mov         byte ptr [eax+15F],1
 006A06C5    mov         eax,dword ptr [ebp-0C]
 006A06C8    mov         byte ptr [eax+160],1
 006A06CF    mov         eax,dword ptr [ebp-0C]
 006A06D2    mov         byte ptr [eax+161],0
 006A06D9    mov         eax,dword ptr [ebp-0C]
 006A06DC    mov         byte ptr [eax+162],0
 006A06E3    mov         eax,dword ptr [ebp-0C]
 006A06E6    mov         byte ptr [eax+163],0
 006A06ED    mov         eax,dword ptr [ebp-0C]
 006A06F0    mov         word ptr [eax+164],1716
 006A06F9    mov         eax,dword ptr [ebp-0C]
 006A06FC    mov         word ptr [eax+166],177A
 006A0705    mov         eax,dword ptr [ebp-0C]
 006A0708    mov         word ptr [eax+168],0
 006A0711    mov         eax,dword ptr [ebp-0C]
 006A0714    mov         byte ptr [eax+16A],0C
 006A071B    mov         eax,dword ptr [ebp-0C]
 006A071E    mov         byte ptr [eax+16B],1
 006A0725    mov         eax,dword ptr [ebp-0C]
 006A0728    mov         byte ptr [eax+16C],0
 006A072F    mov         eax,dword ptr [ebp-0C]
 006A0732    mov         edx,dword ptr ds:[6A087C];0x0 gvar_006A087C
 006A0738    mov         dword ptr [eax+16D],edx
 006A073E    mov         eax,dword ptr [ebp-0C]
 006A0741    mov         byte ptr [eax+171],64
 006A0748    mov         eax,dword ptr [ebp-0C]
 006A074B    mov         byte ptr [eax+172],3
 006A0752    mov         eax,dword ptr [ebp-0C]
 006A0755    mov         byte ptr [eax+173],0
 006A075C    mov         eax,dword ptr [ebp-0C]
 006A075F    mov         byte ptr [eax+174],0
 006A0766    mov         eax,dword ptr [ebp-0C]
 006A0769    mov         byte ptr [eax+175],2
 006A0770    mov         eax,dword ptr [ebp-0C]
 006A0773    mov         byte ptr [eax+176],0
 006A077A    mov         eax,dword ptr [ebp-0C]
 006A077D    mov         byte ptr [eax+177],0
 006A0784    mov         eax,dword ptr [ebp-0C]
 006A0787    mov         byte ptr [eax+178],1E
 006A078E    mov         eax,dword ptr [ebp-0C]
 006A0791    mov         word ptr [eax+179],0
 006A079A    mov         eax,dword ptr [ebp-0C]
 006A079D    mov         byte ptr [eax+17B],0
 006A07A4    mov         al,byte ptr [ebp-6]
 006A07A7    mov         edx,dword ptr [ebp-0C]
 006A07AA    mov         byte ptr [edx+17C],al
 006A07B0    mov         eax,dword ptr [ebp-0C]
 006A07B3    mov         byte ptr [eax+17D],0
 006A07BA    mov         eax,dword ptr [ebp-0C]
 006A07BD    mov         byte ptr [eax+17E],0
 006A07C4    mov         eax,dword ptr [ebp-0C]
 006A07C7    mov         byte ptr [eax+17F],0
 006A07CE    mov         eax,dword ptr [ebp-0C]
 006A07D1    mov         byte ptr [eax+180],0
 006A07D8    mov         eax,dword ptr [ebp-0C]
 006A07DB    mov         byte ptr [eax+181],0
 006A07E2    mov         eax,dword ptr [ebp-0C]
 006A07E5    mov         byte ptr [eax+182],0
 006A07EC    mov         eax,dword ptr [ebp-0C]
 006A07EF    mov         byte ptr [eax+183],0
 006A07F6    mov         eax,dword ptr [ebp-0C]
 006A07F9    mov         byte ptr [eax+194],0
 006A0800    mov         eax,dword ptr [ebp-0C]
 006A0803    xor         edx,edx
 006A0805    mov         dword ptr [eax+184],edx
 006A080B    mov         eax,dword ptr [ebp-0C]
 006A080E    xor         edx,edx
 006A0810    mov         dword ptr [eax+188],edx
 006A0816    mov         eax,dword ptr [ebp-0C]
 006A0819    xor         edx,edx
 006A081B    mov         dword ptr [eax+18C],edx
 006A0821    mov         eax,dword ptr [ebp-0C]
 006A0824    mov         byte ptr [eax+194],1
 006A082B    mov         eax,dword ptr [ebp-0C]
 006A082E    mov         byte ptr [eax+190],0
 006A0835    mov         eax,dword ptr [ebp-0C]
 006A0838    mov         byte ptr [eax+191],5
 006A083F    mov         eax,dword ptr [ebp-0C]
 006A0842    mov         byte ptr [eax+192],0
 006A0849    mov         eax,dword ptr [ebp-0C]
 006A084C    mov         byte ptr [eax+193],1
 006A0853    mov         byte ptr ds:[8DF5C0],0;gvar_008DF5C0
 006A085A    mov         eax,dword ptr [ebp-4]
 006A085D    cmp         byte ptr [ebp-5],0
>006A0861    je          006A0872
 006A0863    call        @AfterConstruction
 006A0868    pop         dword ptr fs:[0]
 006A086F    add         esp,0C
 006A0872    mov         eax,dword ptr [ebp-4]
 006A0875    mov         esp,ebp
 006A0877    pop         ebp
 006A0878    ret
*}
end;

//006A0880
procedure TFXPPD.CopyTo(PD:TFXPPD);
begin
{*
 006A0880    push        ebp
 006A0881    mov         ebp,esp
 006A0883    add         esp,0FFFFFFF8
 006A0886    push        esi
 006A0887    push        edi
 006A0888    mov         dword ptr [ebp-8],edx
 006A088B    mov         dword ptr [ebp-4],eax
 006A088E    mov         eax,dword ptr [ebp-4]
 006A0891    mov         edx,dword ptr [ebp-8]
 006A0894    lea         esi,[eax+4];TFXPPD.FPDR:TFXPDRec
 006A0897    lea         edi,[edx+4];TFXPPD.FPDR:TFXPDRec
 006A089A    mov         ecx,80
 006A089F    rep movs    dword ptr [edi],dword ptr [esi]
 006A08A1    pop         edi
 006A08A2    pop         esi
 006A08A3    pop         ecx
 006A08A4    pop         ecx
 006A08A5    pop         ebp
 006A08A6    ret
*}
end;

//006A08A8
function TFXPPD.IsEqual(PD:TFXPPD):Boolean;
begin
{*
 006A08A8    push        ebp
 006A08A9    mov         ebp,esp
 006A08AB    add         esp,0FFFFFFF4
 006A08AE    mov         dword ptr [ebp-8],edx
 006A08B1    mov         dword ptr [ebp-4],eax
 006A08B4    mov         eax,dword ptr [ebp-8]
 006A08B7    lea         edx,[eax+4];TFXPPD.FPDR:TFXPDRec
 006A08BA    mov         eax,dword ptr [ebp-4]
 006A08BD    add         eax,4;TFXPPD.FPDR:TFXPDRec
 006A08C0    mov         ecx,200
 006A08C5    call        CompareMem
 006A08CA    mov         byte ptr [ebp-9],al
 006A08CD    mov         al,byte ptr [ebp-9]
 006A08D0    mov         esp,ebp
 006A08D2    pop         ebp
 006A08D3    ret
*}
end;

//006A08D4
function TFXPPD.IsFDSensorInputDisablementConfigured:Boolean;
begin
{*
 006A08D4    push        ebp
 006A08D5    mov         ebp,esp
 006A08D7    add         esp,0FFFFFFF8
 006A08DA    mov         dword ptr [ebp-4],eax
 006A08DD    mov         eax,dword ptr [ebp-4]
 006A08E0    cmp         byte ptr [eax+197],0
 006A08E7    setne       byte ptr [ebp-5]
 006A08EB    mov         al,byte ptr [ebp-5]
 006A08EE    pop         ecx
 006A08EF    pop         ecx
 006A08F0    pop         ebp
 006A08F1    ret
*}
end;

//006A08F4
function TFXPPD.Read(fs:TFileStream; VersionMajor:Integer; RecordSize:Integer; NumOfRecords:Integer; VersionMinor:Integer):Integer;
begin
{*
 006A08F4    push        ebp
 006A08F5    mov         ebp,esp
 006A08F7    add         esp,0FFFFFFF0
 006A08FA    push        ebx
 006A08FB    mov         dword ptr [ebp-10],ecx
 006A08FE    mov         dword ptr [ebp-8],edx
 006A0901    mov         dword ptr [ebp-4],eax
 006A0904    mov         dword ptr [ebp-0C],0FFFFFFFF
 006A090B    cmp         dword ptr [ebp+0C],1
>006A090F    jne         006A098A
 006A0911    cmp         dword ptr [ebp+8],200
>006A0918    jne         006A098A
 006A091A    mov         eax,dword ptr [ebp-4]
 006A091D    lea         edx,[eax+4];TFXPPD.FPDR:TFXPDRec
 006A0920    mov         ecx,200
 006A0925    mov         eax,dword ptr [ebp-8]
 006A0928    mov         ebx,dword ptr [eax]
 006A092A    call        dword ptr [ebx+0C];THandleStream.Read
 006A092D    mov         dword ptr [ebp-0C],eax
 006A0930    cmp         dword ptr [ebp-0C],200
>006A0937    je          006A0942
 006A0939    mov         dword ptr [ebp-0C],0FFFFFFFF
>006A0940    jmp         006A098A
 006A0942    mov         eax,dword ptr [ebp-4]
 006A0945    mov         eax,dword ptr [eax+20C];TFXPPD.CI:TFXPCI
 006A094B    xor         ecx,ecx
 006A094D    mov         cl,byte ptr [eax+241]
 006A0953    mov         eax,dword ptr [ebp-4]
 006A0956    mov         eax,dword ptr [eax+20C];TFXPPD.CI:TFXPCI
 006A095C    xor         edx,edx
 006A095E    mov         dl,byte ptr [eax+240]
 006A0964    mov         eax,dword ptr [ebp-4]
 006A0967    call        TFXPPD.UpdateOldPanelData
 006A096C    test        al,al
>006A096E    je          006A098A
 006A0970    mov         eax,dword ptr [ebp-4]
 006A0973    mov         eax,dword ptr [eax+20C];TFXPPD.CI:TFXPCI
 006A0979    lea         edx,[eax+4];TFXPCI.FXCI:TFXCIRec
 006A097C    mov         eax,dword ptr [ebp-4]
 006A097F    mov         eax,dword ptr [eax+20C];TFXPPD.CI:TFXPCI
 006A0985    call        TFXPCI.SetConfigInfo
 006A098A    mov         eax,dword ptr [ebp-0C]
 006A098D    pop         ebx
 006A098E    mov         esp,ebp
 006A0990    pop         ebp
 006A0991    ret         0C
*}
end;

//006A0994
function TFXPPD.Save(fs:TFileStream; VersionMajor:Integer; RecordSize:Cardinal; NumOfRecords:Word; VersionMinor:Integer):Integer;
begin
{*
 006A0994    push        ebp
 006A0995    mov         ebp,esp
 006A0997    add         esp,0FFFFFFF0
 006A099A    push        ebx
 006A099B    mov         dword ptr [ebp-10],ecx
 006A099E    mov         dword ptr [ebp-8],edx
 006A09A1    mov         dword ptr [ebp-4],eax
 006A09A4    mov         eax,dword ptr [ebp+0C]
 006A09A7    mov         word ptr [eax],1
 006A09AC    mov         eax,dword ptr [ebp+8]
 006A09AF    mov         dword ptr [eax],200
 006A09B5    mov         eax,dword ptr [ebp-4]
 006A09B8    lea         edx,[eax+4];TFXPPD.FPDR:TFXPDRec
 006A09BB    mov         ecx,200
 006A09C0    mov         eax,dword ptr [ebp-8]
 006A09C3    mov         ebx,dword ptr [eax]
 006A09C5    call        dword ptr [ebx+10];THandleStream.Write
 006A09C8    mov         dword ptr [ebp-0C],eax
 006A09CB    cmp         dword ptr [ebp-0C],200
>006A09D2    je          006A09DB
 006A09D4    mov         dword ptr [ebp-0C],0FFFFFFFF
 006A09DB    mov         eax,dword ptr [ebp-0C]
 006A09DE    pop         ebx
 006A09DF    mov         esp,ebp
 006A09E1    pop         ebp
 006A09E2    ret         0C
*}
end;

//006A09E8
function TFXPPD.EncodeFXPDMsg(part:Byte; NegVer:Word; var MsgData:TMsgData; var MsgLen:Byte):Boolean;
begin
{*
 006A09E8    push        ebp
 006A09E9    mov         ebp,esp
 006A09EB    add         esp,0FFFFFEE8
 006A09F1    mov         word ptr [ebp-8],cx
 006A09F5    mov         byte ptr [ebp-5],dl
 006A09F8    mov         dword ptr [ebp-4],eax
 006A09FB    mov         ax,word ptr [ebp-8]
 006A09FF    dec         eax
 006A0A00    sub         ax,5
>006A0A04    jb          006A0A20
 006A0A06    sub         ax,3
>006A0A0A    jb          006A0A2A
 006A0A0C    add         eax,0FFFFFFE9
 006A0A0F    sub         ax,2
>006A0A13    jb          006A0A2A
 006A0A15    add         eax,0FFFFFFE2
 006A0A18    sub         ax,9
>006A0A1C    jb          006A0A2A
>006A0A1E    jmp         006A0A34
 006A0A20    mov         byte ptr [ebp-0A],0
 006A0A24    mov         byte ptr [ebp-0B],0
>006A0A28    jmp         006A0A4B
 006A0A2A    mov         byte ptr [ebp-0A],2
 006A0A2E    mov         byte ptr [ebp-0B],0
>006A0A32    jmp         006A0A4B
 006A0A34    mov         ecx,dword ptr ds:[7C2A14];^'Panel Data encoding error!'
 006A0A3A    mov         dl,1
 006A0A3C    mov         eax,[004174D0];Exception
 006A0A41    call        Exception.Create;Exception.Create
 006A0A46    call        @RaiseExcept
 006A0A4B    lea         eax,[ebp-116]
 006A0A51    xor         ecx,ecx
 006A0A53    mov         edx,0FE
 006A0A58    call        @FillChar
 006A0A5D    mov         al,byte ptr [ebp-5]
 006A0A60    dec         al
>006A0A62    je          006A0A6D
 006A0A64    dec         al
>006A0A66    je          006A0A94
>006A0A68    jmp         006A1384
 006A0A6D    mov         eax,dword ptr [ebp-4]
 006A0A70    add         eax,4;TFXPPD.FPDR:TFXPDRec
 006A0A73    mov         dword ptr [ebp-14],eax
 006A0A76    mov         eax,dword ptr [ebp-14]
 006A0A79    xor         ecx,ecx
 006A0A7B    mov         cl,byte ptr [eax+1]
 006A0A7E    lea         edx,[ebp-116]
 006A0A84    mov         eax,dword ptr [ebp-14]
 006A0A87    add         eax,2
 006A0A8A    call        Move
>006A0A8F    jmp         006A1384
 006A0A94    mov         eax,dword ptr [ebp-4]
 006A0A97    add         eax,4;TFXPPD.FPDR:TFXPDRec
 006A0A9A    mov         dword ptr [ebp-18],eax
 006A0A9D    mov         eax,dword ptr [ebp-18]
 006A0AA0    mov         al,byte ptr [eax+100]
 006A0AA6    mov         byte ptr [ebp-116],al
 006A0AAC    mov         eax,dword ptr [ebp-18]
 006A0AAF    cmp         byte ptr [eax+101],0
>006A0AB6    je          006A0ABF
 006A0AB8    or          byte ptr [ebp-115],1
 006A0ABF    mov         eax,dword ptr [ebp-18]
 006A0AC2    cmp         byte ptr [eax+102],0
>006A0AC9    je          006A0AD2
 006A0ACB    or          byte ptr [ebp-115],2
 006A0AD2    mov         eax,dword ptr [ebp-18]
 006A0AD5    mov         al,byte ptr [eax+103]
 006A0ADB    mov         byte ptr [ebp-114],al
 006A0AE1    mov         eax,dword ptr [ebp-18]
 006A0AE4    mov         al,byte ptr [eax+104]
 006A0AEA    mov         byte ptr [ebp-113],al
 006A0AF0    mov         eax,dword ptr [ebp-18]
 006A0AF3    cmp         byte ptr [eax+105],0
>006A0AFA    je          006A0B03
 006A0AFC    or          byte ptr [ebp-112],1
 006A0B03    mov         eax,dword ptr [ebp-18]
 006A0B06    cmp         byte ptr [eax+106],0
>006A0B0D    je          006A0B16
 006A0B0F    or          byte ptr [ebp-112],2
 006A0B16    mov         eax,dword ptr [ebp-18]
 006A0B19    mov         al,byte ptr [eax+107]
 006A0B1F    mov         byte ptr [ebp-111],al
 006A0B25    mov         eax,dword ptr [ebp-18]
 006A0B28    mov         al,byte ptr [eax+108]
 006A0B2E    mov         byte ptr [ebp-110],al
 006A0B34    mov         eax,dword ptr [ebp-18]
 006A0B37    mov         al,byte ptr [eax+109]
 006A0B3D    mov         byte ptr [ebp-10F],al
 006A0B43    mov         eax,dword ptr [ebp-18]
 006A0B46    mov         al,byte ptr [eax+10A]
 006A0B4C    mov         byte ptr [ebp-10E],al
 006A0B52    mov         byte ptr [ebp-10D],0
 006A0B59    mov         eax,dword ptr [ebp-18]
 006A0B5C    cmp         byte ptr [eax+17E],0
>006A0B63    je          006A0B6C
 006A0B65    or          byte ptr [ebp-10C],1
 006A0B6C    mov         byte ptr [ebp-10B],0
 006A0B73    mov         byte ptr [ebp-10A],0
 006A0B7A    mov         eax,dword ptr [ebp-18]
 006A0B7D    mov         al,byte ptr [eax+11E]
 006A0B83    mov         byte ptr [ebp-109],al
 006A0B89    mov         eax,dword ptr [ebp-18]
 006A0B8C    movzx       eax,word ptr [eax+11F]
 006A0B93    shr         eax,8
 006A0B96    cmp         eax,0FF
>006A0B9B    jbe         006A0BA2
 006A0B9D    call        @BoundErr
 006A0BA2    mov         byte ptr [ebp-108],al
 006A0BA8    mov         eax,dword ptr [ebp-18]
 006A0BAB    movzx       eax,word ptr [eax+11F]
 006A0BB2    and         eax,0FF
 006A0BB7    cmp         eax,0FF
>006A0BBC    jbe         006A0BC3
 006A0BBE    call        @BoundErr
 006A0BC3    mov         byte ptr [ebp-107],al
 006A0BC9    mov         eax,dword ptr [ebp-18]
 006A0BCC    mov         al,byte ptr [eax+121]
 006A0BD2    mov         byte ptr [ebp-106],al
 006A0BD8    mov         eax,dword ptr [ebp-18]
 006A0BDB    mov         al,byte ptr [eax+171]
 006A0BE1    mov         byte ptr [ebp-105],al
 006A0BE7    mov         eax,dword ptr [ebp-18]
 006A0BEA    movzx       eax,byte ptr [eax+122]
 006A0BF1    cmp         eax,9
>006A0BF4    jbe         006A0BFB
 006A0BF6    call        @BoundErr
 006A0BFB    mov         al,byte ptr [eax+7C2A0A]
 006A0C01    mov         byte ptr [ebp-104],al
 006A0C07    mov         byte ptr [ebp-103],0
 006A0C0E    mov         eax,dword ptr [ebp-18]
 006A0C11    mov         al,byte ptr [eax+123]
 006A0C17    mov         byte ptr [ebp-102],al
 006A0C1D    mov         eax,dword ptr [ebp-18]
 006A0C20    movzx       eax,byte ptr [eax+125]
 006A0C27    cmp         eax,9
>006A0C2A    jbe         006A0C31
 006A0C2C    call        @BoundErr
 006A0C31    mov         al,byte ptr [eax+7C2A0A]
 006A0C37    mov         byte ptr [ebp-101],al
 006A0C3D    mov         byte ptr [ebp-100],0
 006A0C44    mov         eax,dword ptr [ebp-18]
 006A0C47    mov         al,byte ptr [eax+126]
 006A0C4D    mov         byte ptr [ebp-0FF],al
 006A0C53    mov         eax,dword ptr [ebp-18]
 006A0C56    movzx       eax,byte ptr [eax+128]
 006A0C5D    cmp         eax,9
>006A0C60    jbe         006A0C67
 006A0C62    call        @BoundErr
 006A0C67    mov         al,byte ptr [eax+7C2A0A]
 006A0C6D    mov         byte ptr [ebp-0FE],al
 006A0C73    mov         byte ptr [ebp-0FD],0
 006A0C7A    mov         eax,dword ptr [ebp-18]
 006A0C7D    mov         al,byte ptr [eax+129]
 006A0C83    mov         byte ptr [ebp-0FC],al
 006A0C89    mov         eax,dword ptr [ebp-18]
 006A0C8C    movzx       eax,byte ptr [eax+12B]
 006A0C93    cmp         eax,9
>006A0C96    jbe         006A0C9D
 006A0C98    call        @BoundErr
 006A0C9D    mov         al,byte ptr [eax+7C2A0A]
 006A0CA3    mov         byte ptr [ebp-0FB],al
 006A0CA9    mov         byte ptr [ebp-0FA],0
 006A0CB0    mov         eax,dword ptr [ebp-18]
 006A0CB3    mov         al,byte ptr [eax+12C]
 006A0CB9    mov         byte ptr [ebp-0F9],al
 006A0CBF    mov         eax,dword ptr [ebp-18]
 006A0CC2    cmp         byte ptr [eax+177],0
>006A0CC9    je          006A0CDC
 006A0CCB    mov         eax,dword ptr [ebp-18]
 006A0CCE    mov         al,byte ptr [eax+178]
 006A0CD4    mov         byte ptr [ebp-0F8],al
>006A0CDA    jmp         006A0CE3
 006A0CDC    mov         byte ptr [ebp-0F8],1E
 006A0CE3    mov         eax,dword ptr [ebp-18]
 006A0CE6    mov         al,byte ptr [eax+12E]
 006A0CEC    mov         byte ptr [ebp-0F7],al
 006A0CF2    mov         eax,dword ptr [ebp-18]
 006A0CF5    mov         al,byte ptr [eax+12F]
 006A0CFB    mov         byte ptr [ebp-0F6],al
 006A0D01    mov         eax,dword ptr [ebp-18]
 006A0D04    mov         al,byte ptr [eax+130]
 006A0D0A    mov         byte ptr [ebp-0F5],al
 006A0D10    mov         eax,dword ptr [ebp-18]
 006A0D13    mov         al,byte ptr [eax+131]
 006A0D19    mov         byte ptr [ebp-0F4],al
 006A0D1F    mov         eax,dword ptr [ebp-18]
 006A0D22    mov         al,byte ptr [eax+132]
 006A0D28    mov         byte ptr [ebp-0F3],al
 006A0D2E    mov         eax,dword ptr [ebp-18]
 006A0D31    mov         al,byte ptr [eax+133]
 006A0D37    mov         byte ptr [ebp-0F2],al
 006A0D3D    mov         eax,dword ptr [ebp-18]
 006A0D40    mov         al,byte ptr [eax+134]
 006A0D46    mov         byte ptr [ebp-0F1],al
 006A0D4C    mov         eax,dword ptr [ebp-18]
 006A0D4F    mov         al,byte ptr [eax+135]
 006A0D55    mov         byte ptr [ebp-0F0],al
 006A0D5B    mov         byte ptr [ebp-0EF],0
 006A0D62    mov         byte ptr [ebp-0EE],0
 006A0D69    mov         byte ptr [ebp-0ED],0
 006A0D70    mov         byte ptr [ebp-0EC],0
 006A0D77    mov         byte ptr [ebp-0EB],0
 006A0D7E    mov         eax,dword ptr [ebp-18]
 006A0D81    mov         al,byte ptr [eax+13A]
 006A0D87    mov         byte ptr [ebp-0EA],al
 006A0D8D    mov         byte ptr [ebp-0E9],0
 006A0D94    mov         eax,dword ptr [ebp-18]
 006A0D97    mov         al,byte ptr [eax+13C]
 006A0D9D    mov         byte ptr [ebp-0E8],al
 006A0DA3    mov         byte ptr [ebp-0E7],0
 006A0DAA    mov         eax,dword ptr [ebp-18]
 006A0DAD    mov         al,byte ptr [eax+13E]
 006A0DB3    mov         byte ptr [ebp-0E6],al
 006A0DB9    mov         byte ptr [ebp-0E5],0
 006A0DC0    mov         eax,dword ptr [ebp-18]
 006A0DC3    mov         al,byte ptr [eax+140]
 006A0DC9    mov         byte ptr [ebp-0E4],al
 006A0DCF    mov         byte ptr [ebp-0E3],0
 006A0DD6    mov         eax,dword ptr [ebp-18]
 006A0DD9    cmp         byte ptr [eax+142],0
>006A0DE0    je          006A0DE9
 006A0DE2    or          byte ptr [ebp-0E2],8
 006A0DE9    mov         eax,dword ptr [ebp-18]
 006A0DEC    cmp         byte ptr [eax+143],0
>006A0DF3    je          006A0DFC
 006A0DF5    or          byte ptr [ebp-0E2],2
 006A0DFC    mov         eax,dword ptr [ebp-18]
 006A0DFF    cmp         byte ptr [eax+144],0
>006A0E06    je          006A0E0F
 006A0E08    or          byte ptr [ebp-0E2],4
 006A0E0F    mov         eax,dword ptr [ebp-18]
 006A0E12    cmp         byte ptr [eax+145],0
>006A0E19    je          006A0E22
 006A0E1B    or          byte ptr [ebp-0E2],1
 006A0E22    mov         eax,dword ptr [ebp-18]
 006A0E25    cmp         byte ptr [eax+146],0
>006A0E2C    je          006A0E35
 006A0E2E    or          byte ptr [ebp-0E2],10
 006A0E35    mov         eax,dword ptr [ebp-18]
 006A0E38    movzx       eax,word ptr [eax+148]
 006A0E3F    mov         ecx,0A
 006A0E44    xor         edx,edx
 006A0E46    div         eax,ecx
 006A0E48    mov         byte ptr [ebp-0E1],al
 006A0E4E    mov         eax,dword ptr [ebp-18]
 006A0E51    movzx       eax,word ptr [eax+14A]
 006A0E58    mov         ecx,0A
 006A0E5D    xor         edx,edx
 006A0E5F    div         eax,ecx
 006A0E61    mov         byte ptr [ebp-0E0],al
 006A0E67    mov         eax,dword ptr [ebp-18]
 006A0E6A    cmp         byte ptr [eax+14C],0
>006A0E71    je          006A0E7A
 006A0E73    or          byte ptr [ebp-0DF],1
 006A0E7A    mov         eax,dword ptr [ebp-18]
 006A0E7D    cmp         byte ptr [eax+14D],0
>006A0E84    je          006A0E8D
 006A0E86    or          byte ptr [ebp-0DF],2
 006A0E8D    mov         eax,dword ptr [ebp-18]
 006A0E90    cmp         byte ptr [eax+14E],0
>006A0E97    je          006A0EA0
 006A0E99    or          byte ptr [ebp-0DF],4
 006A0EA0    mov         eax,dword ptr [ebp-18]
 006A0EA3    cmp         byte ptr [eax+14F],0
>006A0EAA    je          006A0EB3
 006A0EAC    or          byte ptr [ebp-0DF],8
 006A0EB3    mov         eax,dword ptr [ebp-18]
 006A0EB6    cmp         byte ptr [eax+150],0
>006A0EBD    je          006A0EC6
 006A0EBF    or          byte ptr [ebp-0DF],10
 006A0EC6    mov         eax,dword ptr [ebp-18]
 006A0EC9    cmp         byte ptr [eax+151],0
>006A0ED0    je          006A0ED9
 006A0ED2    or          byte ptr [ebp-0DF],20
 006A0ED9    mov         eax,dword ptr [ebp-18]
 006A0EDC    mov         al,byte ptr [eax+193]
 006A0EE2    dec         al
>006A0EE4    je          006A0EEC
 006A0EE6    dec         al
>006A0EE8    je          006A0EF5
>006A0EEA    jmp         006A0EFC
 006A0EEC    or          byte ptr [ebp-0DF],40
>006A0EF3    jmp         006A0EFC
 006A0EF5    or          byte ptr [ebp-0DF],80
 006A0EFC    mov         byte ptr [ebp-0DE],0
 006A0F03    mov         eax,dword ptr [ebp-18]
 006A0F06    mov         al,byte ptr [eax+162]
 006A0F0C    mov         byte ptr [ebp-0DD],al
 006A0F12    mov         eax,dword ptr [ebp-18]
 006A0F15    mov         al,byte ptr [eax+163]
 006A0F1B    mov         byte ptr [ebp-0DC],al
 006A0F21    mov         eax,dword ptr [ebp-18]
 006A0F24    mov         al,byte ptr [eax+16A]
 006A0F2A    mov         byte ptr [ebp-0DB],al
 006A0F30    mov         eax,dword ptr [ebp-18]
 006A0F33    cmp         byte ptr [eax+152],0
>006A0F3A    je          006A0F43
 006A0F3C    or          byte ptr [ebp-0DA],1
 006A0F43    mov         eax,dword ptr [ebp-18]
 006A0F46    cmp         byte ptr [eax+153],0
>006A0F4D    je          006A0F56
 006A0F4F    or          byte ptr [ebp-0DA],2
 006A0F56    mov         eax,dword ptr [ebp-18]
 006A0F59    cmp         byte ptr [eax+154],0
>006A0F60    je          006A0F69
 006A0F62    or          byte ptr [ebp-0DA],4
 006A0F69    mov         eax,dword ptr [ebp-18]
 006A0F6C    cmp         byte ptr [eax+155],0
>006A0F73    je          006A0F7C
 006A0F75    or          byte ptr [ebp-0DA],8
 006A0F7C    mov         eax,dword ptr [ebp-18]
 006A0F7F    cmp         byte ptr [eax+156],0
>006A0F86    je          006A0F8F
 006A0F88    or          byte ptr [ebp-0DA],10
 006A0F8F    mov         eax,dword ptr [ebp-18]
 006A0F92    cmp         byte ptr [eax+157],0
>006A0F99    je          006A0FA2
 006A0F9B    or          byte ptr [ebp-0DA],20
 006A0FA2    mov         eax,dword ptr [ebp-18]
 006A0FA5    cmp         byte ptr [eax+158],0
>006A0FAC    je          006A0FB5
 006A0FAE    or          byte ptr [ebp-0DA],40
 006A0FB5    mov         eax,dword ptr [ebp-18]
 006A0FB8    cmp         byte ptr [eax+159],0
>006A0FBF    je          006A0FC8
 006A0FC1    or          byte ptr [ebp-0DA],80
 006A0FC8    mov         byte ptr [ebp-0D9],0
 006A0FCF    mov         eax,dword ptr [ebp-18]
 006A0FD2    cmp         byte ptr [eax+15A],0
>006A0FD9    je          006A0FE2
 006A0FDB    or          byte ptr [ebp-0D8],1
 006A0FE2    mov         eax,dword ptr [ebp-18]
 006A0FE5    cmp         byte ptr [eax+15B],0
>006A0FEC    je          006A0FF5
 006A0FEE    or          byte ptr [ebp-0D8],2
 006A0FF5    mov         eax,dword ptr [ebp-18]
 006A0FF8    cmp         byte ptr [eax+15C],0
>006A0FFF    je          006A1008
 006A1001    or          byte ptr [ebp-0D8],4
 006A1008    mov         eax,dword ptr [ebp-18]
 006A100B    cmp         byte ptr [eax+15D],0
>006A1012    je          006A101B
 006A1014    or          byte ptr [ebp-0D8],8
 006A101B    mov         eax,dword ptr [ebp-18]
 006A101E    cmp         byte ptr [eax+15E],0
>006A1025    je          006A102E
 006A1027    or          byte ptr [ebp-0D8],10
 006A102E    mov         eax,dword ptr [ebp-18]
 006A1031    cmp         byte ptr [eax+15F],0
>006A1038    je          006A1041
 006A103A    or          byte ptr [ebp-0D8],20
 006A1041    mov         eax,dword ptr [ebp-18]
 006A1044    cmp         byte ptr [eax+160],0
>006A104B    je          006A1054
 006A104D    or          byte ptr [ebp-0D8],40
 006A1054    mov         eax,dword ptr [ebp-18]
 006A1057    cmp         byte ptr [eax+161],0
>006A105E    je          006A1067
 006A1060    or          byte ptr [ebp-0D8],80
 006A1067    mov         byte ptr [ebp-0D7],0
 006A106E    mov         eax,dword ptr [ebp-18]
 006A1071    cmp         byte ptr [eax+16B],0
>006A1078    je          006A1081
 006A107A    or          byte ptr [ebp-0D6],1
 006A1081    mov         eax,dword ptr [ebp-18]
 006A1084    cmp         byte ptr [eax+16C],1
>006A108B    jne         006A1094
 006A108D    or          byte ptr [ebp-0D6],2
 006A1094    mov         eax,dword ptr [ebp-18]
 006A1097    cmp         byte ptr [eax+16C],2
>006A109E    jne         006A10A7
 006A10A0    or          byte ptr [ebp-0D6],20
 006A10A7    mov         eax,dword ptr [ebp-18]
 006A10AA    cmp         byte ptr [eax+177],0
>006A10B1    je          006A10BA
 006A10B3    or          byte ptr [ebp-0D6],40
 006A10BA    mov         eax,dword ptr [ebp-18]
 006A10BD    cmp         byte ptr [eax+174],0
>006A10C4    je          006A10CD
 006A10C6    or          byte ptr [ebp-0D6],4
 006A10CD    mov         eax,dword ptr [ebp-18]
 006A10D0    cmp         byte ptr [eax+17B],0
>006A10D7    je          006A10E0
 006A10D9    or          byte ptr [ebp-0D6],80
 006A10E0    mov         eax,dword ptr [ebp-18]
 006A10E3    cmp         byte ptr [eax+173],1
>006A10EA    jne         006A10F3
 006A10EC    or          byte ptr [ebp-0D6],8
 006A10F3    mov         eax,dword ptr [ebp-18]
 006A10F6    cmp         byte ptr [eax+176],0
>006A10FD    je          006A1106
 006A10FF    or          byte ptr [ebp-0D6],10
 006A1106    mov         eax,dword ptr [ebp-18]
 006A1109    movzx       eax,word ptr [eax+164]
 006A1110    shr         eax,8
 006A1113    cmp         eax,0FF
>006A1118    jbe         006A111F
 006A111A    call        @BoundErr
 006A111F    mov         byte ptr [ebp-0D5],al
 006A1125    mov         eax,dword ptr [ebp-18]
 006A1128    movzx       eax,word ptr [eax+164]
 006A112F    and         eax,0FF
 006A1134    cmp         eax,0FF
>006A1139    jbe         006A1140
 006A113B    call        @BoundErr
 006A1140    mov         byte ptr [ebp-0D4],al
 006A1146    mov         eax,dword ptr [ebp-18]
 006A1149    movzx       eax,word ptr [eax+166]
 006A1150    shr         eax,8
 006A1153    cmp         eax,0FF
>006A1158    jbe         006A115F
 006A115A    call        @BoundErr
 006A115F    mov         byte ptr [ebp-0D3],al
 006A1165    mov         eax,dword ptr [ebp-18]
 006A1168    movzx       eax,word ptr [eax+166]
 006A116F    and         eax,0FF
 006A1174    cmp         eax,0FF
>006A1179    jbe         006A1180
 006A117B    call        @BoundErr
 006A1180    mov         byte ptr [ebp-0D2],al
 006A1186    mov         eax,dword ptr [ebp-18]
 006A1189    movzx       eax,word ptr [eax+168]
 006A1190    shr         eax,8
 006A1193    cmp         eax,0FF
>006A1198    jbe         006A119F
 006A119A    call        @BoundErr
 006A119F    mov         byte ptr [ebp-0D1],al
 006A11A5    mov         eax,dword ptr [ebp-18]
 006A11A8    movzx       eax,word ptr [eax+168]
 006A11AF    and         eax,0FF
 006A11B4    cmp         eax,0FF
>006A11B9    jbe         006A11C0
 006A11BB    call        @BoundErr
 006A11C0    mov         byte ptr [ebp-0D0],al
 006A11C6    mov         eax,dword ptr [ebp-18]
 006A11C9    mov         al,byte ptr [eax+147]
 006A11CF    mov         byte ptr [ebp-0CF],al
 006A11D5    mov         eax,dword ptr [ebp-18]
 006A11D8    mov         al,byte ptr [eax+172]
 006A11DE    mov         byte ptr [ebp-0CE],al
 006A11E4    mov         eax,dword ptr [ebp-18]
 006A11E7    mov         al,byte ptr [eax+175]
 006A11ED    mov         byte ptr [ebp-0CD],al
 006A11F3    mov         eax,dword ptr [ebp-18]
 006A11F6    movzx       eax,word ptr [eax+179]
 006A11FD    shr         eax,8
 006A1200    cmp         eax,0FF
>006A1205    jbe         006A120C
 006A1207    call        @BoundErr
 006A120C    mov         byte ptr [ebp-0CC],al
 006A1212    mov         eax,dword ptr [ebp-18]
 006A1215    movzx       eax,word ptr [eax+179]
 006A121C    and         eax,0FF
 006A1221    cmp         eax,0FF
>006A1226    jbe         006A122D
 006A1228    call        @BoundErr
 006A122D    mov         byte ptr [ebp-0CB],al
 006A1233    mov         eax,dword ptr [ebp-18]
 006A1236    mov         al,byte ptr [eax+17D]
 006A123C    mov         byte ptr [ebp-0CA],al
 006A1242    mov         eax,dword ptr [ebp-18]
 006A1245    cmp         byte ptr [eax+17F],0
>006A124C    je          006A1255
 006A124E    or          byte ptr [ebp-0C9],1
 006A1255    mov         eax,dword ptr [ebp-18]
 006A1258    cmp         byte ptr [eax+180],0
>006A125F    je          006A1268
 006A1261    or          byte ptr [ebp-0C9],2
 006A1268    mov         eax,dword ptr [ebp-18]
 006A126B    cmp         byte ptr [eax+181],0
>006A1272    je          006A127B
 006A1274    or          byte ptr [ebp-0C9],4
 006A127B    mov         eax,dword ptr [ebp-18]
 006A127E    cmp         byte ptr [eax+182],0
>006A1285    je          006A128E
 006A1287    or          byte ptr [ebp-0C9],8
 006A128E    mov         eax,dword ptr [ebp-18]
 006A1291    mov         al,byte ptr [eax+17C]
 006A1297    mov         byte ptr [ebp-0C8],al
 006A129D    lea         edx,[ebp-0C7]
 006A12A3    mov         eax,dword ptr [ebp-18]
 006A12A6    add         eax,16D
 006A12AB    mov         ecx,4
 006A12B0    call        Move
 006A12B5    mov         eax,dword ptr [ebp-18]
 006A12B8    mov         al,byte ptr [eax+183]
 006A12BE    mov         byte ptr [ebp-0C3],al
 006A12C4    mov         eax,dword ptr [ebp-18]
 006A12C7    mov         eax,dword ptr [eax+184]
 006A12CD    call        006A0364
 006A12D2    mov         dword ptr [ebp-10],eax
 006A12D5    lea         edx,[ebp-0C2]
 006A12DB    lea         eax,[ebp-10]
 006A12DE    mov         ecx,4
 006A12E3    call        Move
 006A12E8    mov         eax,dword ptr [ebp-18]
 006A12EB    mov         eax,dword ptr [eax+188]
 006A12F1    call        006A0364
 006A12F6    mov         dword ptr [ebp-10],eax
 006A12F9    lea         edx,[ebp-0BE]
 006A12FF    lea         eax,[ebp-10]
 006A1302    mov         ecx,4
 006A1307    call        Move
 006A130C    mov         eax,dword ptr [ebp-18]
 006A130F    mov         eax,dword ptr [eax+18C]
 006A1315    call        006A0364
 006A131A    mov         dword ptr [ebp-10],eax
 006A131D    lea         edx,[ebp-0BA]
 006A1323    lea         eax,[ebp-10]
 006A1326    mov         ecx,4
 006A132B    call        Move
 006A1330    mov         eax,dword ptr [ebp-18]
 006A1333    cmp         byte ptr [eax+190],0
>006A133A    je          006A1343
 006A133C    or          byte ptr [ebp-0B6],1
 006A1343    mov         eax,dword ptr [ebp-18]
 006A1346    cmp         byte ptr [eax+192],0
>006A134D    je          006A1356
 006A134F    or          byte ptr [ebp-0B6],2
 006A1356    cmp         word ptr [ebp-8],44
>006A135B    jae         006A1366
 006A135D    mov         byte ptr [ebp-0B5],0
>006A1364    jmp         006A1375
 006A1366    mov         eax,dword ptr [ebp-18]
 006A1369    mov         al,byte ptr [eax+191]
 006A136F    mov         byte ptr [ebp-0B5],al
 006A1375    mov         eax,dword ptr [ebp-18]
 006A1378    mov         al,byte ptr [eax+194]
 006A137E    mov         byte ptr [ebp-0B4],al
 006A1384    mov         ax,word ptr [ebp-8]
 006A1388    dec         eax
 006A1389    sub         ax,5
>006A138D    jb          006A13A9
 006A138F    sub         ax,3
>006A1393    jb          006A13C5
 006A1395    add         eax,0FFFFFFE9
 006A1398    sub         ax,2
>006A139C    jb          006A13C5
 006A139E    add         eax,0FFFFFFE2
 006A13A1    sub         ax,9
>006A13A5    jb          006A13C5
>006A13A7    jmp         006A1405
 006A13A9    mov         edx,dword ptr [ebp+8]
 006A13AC    inc         edx
 006A13AD    lea         eax,[ebp-116]
 006A13B3    mov         ecx,0FE
 006A13B8    call        Move
 006A13BD    mov         eax,dword ptr [ebp+0C]
 006A13C0    mov         byte ptr [eax],0FF
>006A13C3    jmp         006A141C
 006A13C5    mov         eax,dword ptr [ebp+8]
 006A13C8    mov         byte ptr [eax+1],7F
 006A13CC    mov         eax,dword ptr [ebp+8]
 006A13CF    mov         dl,byte ptr [ebp-0A]
 006A13D2    mov         byte ptr [eax+2],dl
 006A13D5    mov         eax,dword ptr [ebp+8]
 006A13D8    mov         dl,byte ptr [ebp-5]
 006A13DB    mov         byte ptr [eax+3],dl
 006A13DE    mov         eax,dword ptr [ebp+8]
 006A13E1    mov         dl,byte ptr [ebp-0B]
 006A13E4    mov         byte ptr [eax+4],dl
 006A13E7    mov         edx,dword ptr [ebp+8]
 006A13EA    add         edx,5
 006A13ED    lea         eax,[ebp-116]
 006A13F3    mov         ecx,0FA
 006A13F8    call        Move
 006A13FD    mov         eax,dword ptr [ebp+0C]
 006A1400    mov         byte ptr [eax],0FF
>006A1403    jmp         006A141C
 006A1405    mov         ecx,dword ptr ds:[7C2A14];^'Panel Data encoding error!'
 006A140B    mov         dl,1
 006A140D    mov         eax,[004174D0];Exception
 006A1412    call        Exception.Create;Exception.Create
 006A1417    call        @RaiseExcept
 006A141C    mov         byte ptr [ebp-9],1
 006A1420    mov         al,byte ptr [ebp-9]
 006A1423    mov         esp,ebp
 006A1425    pop         ebp
 006A1426    ret         8
*}
end;

//006A142C
procedure TFXPPD.DecodeFXPDMsg(part:Byte; MsgLen:Byte; MsgData:TMsgData);
begin
{*
 006A142C    push        ebp
 006A142D    mov         ebp,esp
 006A142F    add         esp,0FFFFFDEC
 006A1435    mov         byte ptr [ebp-6],cl
 006A1438    mov         byte ptr [ebp-5],dl
 006A143B    mov         dword ptr [ebp-4],eax
 006A143E    lea         eax,[ebp-112]
 006A1444    xor         ecx,ecx
 006A1446    mov         edx,0FE
 006A144B    call        @FillChar
 006A1450    mov         eax,dword ptr [ebp+8]
 006A1453    mov         al,byte ptr [eax+1]
 006A1456    sub         al,7F
>006A1458    jne         006A148E
 006A145A    mov         eax,dword ptr [ebp+8]
 006A145D    mov         al,byte ptr [eax+2]
 006A1460    mov         byte ptr [ebp-7],al
 006A1463    mov         eax,dword ptr [ebp+8]
 006A1466    mov         al,byte ptr [eax+3]
 006A1469    mov         byte ptr [ebp-8],al
 006A146C    xor         ecx,ecx
 006A146E    mov         cl,byte ptr [ebp-6]
 006A1471    sub         ecx,5
>006A1474    jno         006A147B
 006A1476    call        @IntOver
 006A147B    lea         edx,[ebp-112]
 006A1481    mov         eax,dword ptr [ebp+8]
 006A1484    add         eax,5
 006A1487    call        Move
>006A148C    jmp         006A14B6
 006A148E    mov         byte ptr [ebp-7],0
 006A1492    mov         al,byte ptr [ebp-5]
 006A1495    mov         byte ptr [ebp-8],al
 006A1498    xor         ecx,ecx
 006A149A    mov         cl,byte ptr [ebp-6]
 006A149D    sub         ecx,1
>006A14A0    jno         006A14A7
 006A14A2    call        @IntOver
 006A14A7    lea         edx,[ebp-112]
 006A14AD    mov         eax,dword ptr [ebp+8]
 006A14B0    inc         eax
 006A14B1    call        Move
 006A14B6    mov         al,byte ptr [ebp-7]
 006A14B9    not         al
 006A14BB    sub         al,3
>006A14BD    jae         006A14D4
 006A14BF    push        0
 006A14C1    mov         cx,word ptr ds:[6A2118];0x4 gvar_006A2118
 006A14C8    xor         edx,edx
 006A14CA    mov         eax,6A2128;'Unknown version in decoded panel data'
 006A14CF    call        MessageDlg
 006A14D4    mov         al,byte ptr [ebp-8]
 006A14D7    dec         al
>006A14D9    je          006A14E4
 006A14DB    dec         al
>006A14DD    je          006A1514
>006A14DF    jmp         006A210F
 006A14E4    mov         eax,dword ptr [ebp-4]
 006A14E7    add         eax,4;TFXPPD.FPDR:TFXPDRec
 006A14EA    mov         dword ptr [ebp-10],eax
 006A14ED    lea         eax,[ebp-214]
 006A14F3    lea         edx,[ebp-112]
 006A14F9    call        @_CToPasStr
 006A14FE    lea         edx,[ebp-214]
 006A1504    mov         eax,dword ptr [ebp-10]
 006A1507    inc         eax
 006A1508    mov         cl,0FE
 006A150A    call        @PStrNCpy
>006A150F    jmp         006A210F
 006A1514    mov         eax,dword ptr [ebp-4]
 006A1517    add         eax,4;TFXPPD.FPDR:TFXPDRec
 006A151A    mov         dword ptr [ebp-14],eax
 006A151D    mov         al,byte ptr [ebp-112]
 006A1523    mov         edx,dword ptr [ebp-14]
 006A1526    mov         byte ptr [edx+100],al
 006A152C    test        byte ptr [ebp-111],1
 006A1533    seta        al
 006A1536    mov         edx,dword ptr [ebp-14]
 006A1539    mov         byte ptr [edx+101],al
 006A153F    test        byte ptr [ebp-111],2
 006A1546    seta        al
 006A1549    mov         edx,dword ptr [ebp-14]
 006A154C    mov         byte ptr [edx+102],al
 006A1552    mov         al,byte ptr [ebp-110]
 006A1558    mov         edx,dword ptr [ebp-14]
 006A155B    mov         byte ptr [edx+103],al
 006A1561    mov         al,byte ptr [ebp-10F]
 006A1567    mov         edx,dword ptr [ebp-14]
 006A156A    mov         byte ptr [edx+104],al
 006A1570    test        byte ptr [ebp-10E],1
 006A1577    seta        al
 006A157A    mov         edx,dword ptr [ebp-14]
 006A157D    mov         byte ptr [edx+105],al
 006A1583    test        byte ptr [ebp-10E],2
 006A158A    seta        al
 006A158D    mov         edx,dword ptr [ebp-14]
 006A1590    mov         byte ptr [edx+106],al
 006A1596    mov         al,byte ptr [ebp-10D]
 006A159C    mov         edx,dword ptr [ebp-14]
 006A159F    mov         byte ptr [edx+107],al
 006A15A5    mov         al,byte ptr [ebp-10C]
 006A15AB    mov         edx,dword ptr [ebp-14]
 006A15AE    mov         byte ptr [edx+108],al
 006A15B4    mov         al,byte ptr [ebp-10B]
 006A15BA    mov         edx,dword ptr [ebp-14]
 006A15BD    mov         byte ptr [edx+109],al
 006A15C3    mov         al,byte ptr [ebp-10A]
 006A15C9    mov         edx,dword ptr [ebp-14]
 006A15CC    mov         byte ptr [edx+10A],al
 006A15D2    test        byte ptr [ebp-108],1
 006A15D9    seta        al
 006A15DC    mov         edx,dword ptr [ebp-14]
 006A15DF    mov         byte ptr [edx+17E],al
 006A15E5    mov         al,byte ptr [ebp-105]
 006A15EB    mov         edx,dword ptr [ebp-14]
 006A15EE    mov         byte ptr [edx+11E],al
 006A15F4    xor         eax,eax
 006A15F6    mov         al,byte ptr [ebp-104]
 006A15FC    mov         edx,100
 006A1601    mul         eax,edx
>006A1603    jno         006A160A
 006A1605    call        @IntOver
 006A160A    xor         edx,edx
 006A160C    mov         dl,byte ptr [ebp-103]
 006A1612    add         eax,edx
>006A1614    jno         006A161B
 006A1616    call        @IntOver
 006A161B    cmp         eax,0FFFF
>006A1620    jbe         006A1627
 006A1622    call        @BoundErr
 006A1627    mov         edx,dword ptr [ebp-14]
 006A162A    mov         word ptr [edx+11F],ax
 006A1631    mov         al,byte ptr [ebp-102]
 006A1637    mov         edx,dword ptr [ebp-14]
 006A163A    mov         byte ptr [edx+121],al
 006A1640    mov         al,byte ptr [ebp-101]
 006A1646    mov         edx,dword ptr [ebp-14]
 006A1649    mov         byte ptr [edx+171],al
 006A164F    xor         eax,eax
 006A1651    mov         al,byte ptr [ebp-100]
 006A1657    cmp         eax,9
>006A165A    jbe         006A1661
 006A165C    call        @BoundErr
 006A1661    mov         al,byte ptr [eax+7C2A00]
 006A1667    mov         edx,dword ptr [ebp-14]
 006A166A    mov         byte ptr [edx+122],al
 006A1670    mov         eax,dword ptr [ebp-14]
 006A1673    movzx       eax,byte ptr [eax+122]
 006A167A    cmp         eax,9
>006A167D    ja          006A1728
 006A1683    jmp         dword ptr [eax*4+6A168A]
 006A1683    dd          006A16B2
 006A1683    dd          006A16BE
 006A1683    dd          006A16CA
 006A1683    dd          006A16D6
 006A1683    dd          006A16E2
 006A1683    dd          006A16EE
 006A1683    dd          006A16FA
 006A1683    dd          006A1706
 006A1683    dd          006A1712
 006A1683    dd          006A171E
 006A16B2    mov         eax,dword ptr [ebp-14]
 006A16B5    mov         byte ptr [eax+124],0
>006A16BC    jmp         006A1728
 006A16BE    mov         eax,dword ptr [ebp-14]
 006A16C1    mov         byte ptr [eax+124],2
>006A16C8    jmp         006A1728
 006A16CA    mov         eax,dword ptr [ebp-14]
 006A16CD    mov         byte ptr [eax+124],1
>006A16D4    jmp         006A1728
 006A16D6    mov         eax,dword ptr [ebp-14]
 006A16D9    mov         byte ptr [eax+124],1
>006A16E0    jmp         006A1728
 006A16E2    mov         eax,dword ptr [ebp-14]
 006A16E5    mov         byte ptr [eax+124],2
>006A16EC    jmp         006A1728
 006A16EE    mov         eax,dword ptr [ebp-14]
 006A16F1    mov         byte ptr [eax+124],1
>006A16F8    jmp         006A1728
 006A16FA    mov         eax,dword ptr [ebp-14]
 006A16FD    mov         byte ptr [eax+124],2
>006A1704    jmp         006A1728
 006A1706    mov         eax,dword ptr [ebp-14]
 006A1709    mov         byte ptr [eax+124],1
>006A1710    jmp         006A1728
 006A1712    mov         eax,dword ptr [ebp-14]
 006A1715    mov         byte ptr [eax+124],1
>006A171C    jmp         006A1728
 006A171E    mov         eax,dword ptr [ebp-14]
 006A1721    mov         byte ptr [eax+124],1
 006A1728    mov         al,byte ptr [ebp-0FE]
 006A172E    mov         edx,dword ptr [ebp-14]
 006A1731    mov         byte ptr [edx+123],al
 006A1737    xor         eax,eax
 006A1739    mov         al,byte ptr [ebp-0FD]
 006A173F    cmp         eax,9
>006A1742    jbe         006A1749
 006A1744    call        @BoundErr
 006A1749    mov         al,byte ptr [eax+7C2A00]
 006A174F    mov         edx,dword ptr [ebp-14]
 006A1752    mov         byte ptr [edx+125],al
 006A1758    mov         eax,dword ptr [ebp-14]
 006A175B    movzx       eax,byte ptr [eax+125]
 006A1762    cmp         eax,7
>006A1765    ja          006A17F0
 006A176B    jmp         dword ptr [eax*4+6A1772]
 006A176B    dd          006A1792
 006A176B    dd          006A179E
 006A176B    dd          006A17AA
 006A176B    dd          006A17B6
 006A176B    dd          006A17C2
 006A176B    dd          006A17CE
 006A176B    dd          006A17DA
 006A176B    dd          006A17E6
 006A1792    mov         eax,dword ptr [ebp-14]
 006A1795    mov         byte ptr [eax+127],0
>006A179C    jmp         006A17F0
 006A179E    mov         eax,dword ptr [ebp-14]
 006A17A1    mov         byte ptr [eax+127],2
>006A17A8    jmp         006A17F0
 006A17AA    mov         eax,dword ptr [ebp-14]
 006A17AD    mov         byte ptr [eax+127],1
>006A17B4    jmp         006A17F0
 006A17B6    mov         eax,dword ptr [ebp-14]
 006A17B9    mov         byte ptr [eax+127],1
>006A17C0    jmp         006A17F0
 006A17C2    mov         eax,dword ptr [ebp-14]
 006A17C5    mov         byte ptr [eax+127],2
>006A17CC    jmp         006A17F0
 006A17CE    mov         eax,dword ptr [ebp-14]
 006A17D1    mov         byte ptr [eax+127],1
>006A17D8    jmp         006A17F0
 006A17DA    mov         eax,dword ptr [ebp-14]
 006A17DD    mov         byte ptr [eax+127],2
>006A17E4    jmp         006A17F0
 006A17E6    mov         eax,dword ptr [ebp-14]
 006A17E9    mov         byte ptr [eax+127],1
 006A17F0    mov         al,byte ptr [ebp-0FB]
 006A17F6    mov         edx,dword ptr [ebp-14]
 006A17F9    mov         byte ptr [edx+126],al
 006A17FF    xor         eax,eax
 006A1801    mov         al,byte ptr [ebp-0FA]
 006A1807    cmp         eax,9
>006A180A    jbe         006A1811
 006A180C    call        @BoundErr
 006A1811    mov         al,byte ptr [eax+7C2A00]
 006A1817    mov         edx,dword ptr [ebp-14]
 006A181A    mov         byte ptr [edx+128],al
 006A1820    mov         eax,dword ptr [ebp-14]
 006A1823    movzx       eax,byte ptr [eax+128]
 006A182A    cmp         eax,7
>006A182D    ja          006A18B8
 006A1833    jmp         dword ptr [eax*4+6A183A]
 006A1833    dd          006A185A
 006A1833    dd          006A1866
 006A1833    dd          006A1872
 006A1833    dd          006A187E
 006A1833    dd          006A188A
 006A1833    dd          006A1896
 006A1833    dd          006A18A2
 006A1833    dd          006A18AE
 006A185A    mov         eax,dword ptr [ebp-14]
 006A185D    mov         byte ptr [eax+12A],0
>006A1864    jmp         006A18B8
 006A1866    mov         eax,dword ptr [ebp-14]
 006A1869    mov         byte ptr [eax+12A],2
>006A1870    jmp         006A18B8
 006A1872    mov         eax,dword ptr [ebp-14]
 006A1875    mov         byte ptr [eax+12A],1
>006A187C    jmp         006A18B8
 006A187E    mov         eax,dword ptr [ebp-14]
 006A1881    mov         byte ptr [eax+12A],1
>006A1888    jmp         006A18B8
 006A188A    mov         eax,dword ptr [ebp-14]
 006A188D    mov         byte ptr [eax+12A],2
>006A1894    jmp         006A18B8
 006A1896    mov         eax,dword ptr [ebp-14]
 006A1899    mov         byte ptr [eax+12A],1
>006A18A0    jmp         006A18B8
 006A18A2    mov         eax,dword ptr [ebp-14]
 006A18A5    mov         byte ptr [eax+12A],2
>006A18AC    jmp         006A18B8
 006A18AE    mov         eax,dword ptr [ebp-14]
 006A18B1    mov         byte ptr [eax+12A],1
 006A18B8    mov         al,byte ptr [ebp-0F8]
 006A18BE    mov         edx,dword ptr [ebp-14]
 006A18C1    mov         byte ptr [edx+129],al
 006A18C7    xor         eax,eax
 006A18C9    mov         al,byte ptr [ebp-0F7]
 006A18CF    cmp         eax,9
>006A18D2    jbe         006A18D9
 006A18D4    call        @BoundErr
 006A18D9    mov         al,byte ptr [eax+7C2A00]
 006A18DF    mov         edx,dword ptr [ebp-14]
 006A18E2    mov         byte ptr [edx+12B],al
 006A18E8    mov         eax,dword ptr [ebp-14]
 006A18EB    movzx       eax,byte ptr [eax+12B]
 006A18F2    cmp         eax,7
>006A18F5    ja          006A1980
 006A18FB    jmp         dword ptr [eax*4+6A1902]
 006A18FB    dd          006A1922
 006A18FB    dd          006A192E
 006A18FB    dd          006A193A
 006A18FB    dd          006A1946
 006A18FB    dd          006A1952
 006A18FB    dd          006A195E
 006A18FB    dd          006A196A
 006A18FB    dd          006A1976
 006A1922    mov         eax,dword ptr [ebp-14]
 006A1925    mov         byte ptr [eax+12D],0
>006A192C    jmp         006A1980
 006A192E    mov         eax,dword ptr [ebp-14]
 006A1931    mov         byte ptr [eax+12D],2
>006A1938    jmp         006A1980
 006A193A    mov         eax,dword ptr [ebp-14]
 006A193D    mov         byte ptr [eax+12D],1
>006A1944    jmp         006A1980
 006A1946    mov         eax,dword ptr [ebp-14]
 006A1949    mov         byte ptr [eax+12D],1
>006A1950    jmp         006A1980
 006A1952    mov         eax,dword ptr [ebp-14]
 006A1955    mov         byte ptr [eax+12D],2
>006A195C    jmp         006A1980
 006A195E    mov         eax,dword ptr [ebp-14]
 006A1961    mov         byte ptr [eax+12D],1
>006A1968    jmp         006A1980
 006A196A    mov         eax,dword ptr [ebp-14]
 006A196D    mov         byte ptr [eax+12D],2
>006A1974    jmp         006A1980
 006A1976    mov         eax,dword ptr [ebp-14]
 006A1979    mov         byte ptr [eax+12D],1
 006A1980    mov         al,byte ptr [ebp-0F5]
 006A1986    mov         edx,dword ptr [ebp-14]
 006A1989    mov         byte ptr [edx+12C],al
 006A198F    mov         al,byte ptr [ebp-0F4]
 006A1995    mov         edx,dword ptr [ebp-14]
 006A1998    mov         byte ptr [edx+178],al
 006A199E    mov         al,byte ptr [ebp-0F3]
 006A19A4    mov         edx,dword ptr [ebp-14]
 006A19A7    mov         byte ptr [edx+12E],al
 006A19AD    mov         al,byte ptr [ebp-0F2]
 006A19B3    mov         edx,dword ptr [ebp-14]
 006A19B6    mov         byte ptr [edx+12F],al
 006A19BC    mov         al,byte ptr [ebp-0F1]
 006A19C2    mov         edx,dword ptr [ebp-14]
 006A19C5    mov         byte ptr [edx+130],al
 006A19CB    mov         al,byte ptr [ebp-0F0]
 006A19D1    mov         edx,dword ptr [ebp-14]
 006A19D4    mov         byte ptr [edx+131],al
 006A19DA    mov         al,byte ptr [ebp-0EF]
 006A19E0    mov         edx,dword ptr [ebp-14]
 006A19E3    mov         byte ptr [edx+132],al
 006A19E9    mov         al,byte ptr [ebp-0EE]
 006A19EF    mov         edx,dword ptr [ebp-14]
 006A19F2    mov         byte ptr [edx+133],al
 006A19F8    mov         al,byte ptr [ebp-0ED]
 006A19FE    mov         edx,dword ptr [ebp-14]
 006A1A01    mov         byte ptr [edx+134],al
 006A1A07    mov         al,byte ptr [ebp-0EC]
 006A1A0D    mov         edx,dword ptr [ebp-14]
 006A1A10    mov         byte ptr [edx+135],al
 006A1A16    mov         al,byte ptr [ebp-0E6]
 006A1A1C    mov         edx,dword ptr [ebp-14]
 006A1A1F    mov         byte ptr [edx+13A],al
 006A1A25    mov         eax,dword ptr [ebp-4]
 006A1A28    mov         eax,dword ptr [eax+210];TFXPPD.IO:TFXPIO
 006A1A2E    mov         edx,dword ptr [ebp-14]
 006A1A31    mov         cl,byte ptr [edx+13A]
 006A1A37    mov         dl,1
 006A1A39    call        TFXPIO.SetIOCtrlType
 006A1A3E    mov         al,byte ptr [ebp-0E5]
 006A1A44    mov         edx,dword ptr [ebp-14]
 006A1A47    mov         byte ptr [edx+13B],al
 006A1A4D    mov         al,byte ptr [ebp-0E4]
 006A1A53    mov         edx,dword ptr [ebp-14]
 006A1A56    mov         byte ptr [edx+13C],al
 006A1A5C    mov         eax,dword ptr [ebp-4]
 006A1A5F    mov         eax,dword ptr [eax+210];TFXPPD.IO:TFXPIO
 006A1A65    mov         edx,dword ptr [ebp-14]
 006A1A68    mov         cl,byte ptr [edx+13C]
 006A1A6E    mov         dl,2
 006A1A70    call        TFXPIO.SetIOCtrlType
 006A1A75    mov         al,byte ptr [ebp-0E3]
 006A1A7B    mov         edx,dword ptr [ebp-14]
 006A1A7E    mov         byte ptr [edx+13D],al
 006A1A84    mov         al,byte ptr [ebp-0E2]
 006A1A8A    mov         edx,dword ptr [ebp-14]
 006A1A8D    mov         byte ptr [edx+13E],al
 006A1A93    mov         eax,dword ptr [ebp-4]
 006A1A96    mov         eax,dword ptr [eax+210];TFXPPD.IO:TFXPIO
 006A1A9C    mov         edx,dword ptr [ebp-14]
 006A1A9F    mov         cl,byte ptr [edx+13E]
 006A1AA5    mov         dl,3
 006A1AA7    call        TFXPIO.SetIOCtrlType
 006A1AAC    mov         al,byte ptr [ebp-0E1]
 006A1AB2    mov         edx,dword ptr [ebp-14]
 006A1AB5    mov         byte ptr [edx+13F],al
 006A1ABB    mov         al,byte ptr [ebp-0E0]
 006A1AC1    mov         edx,dword ptr [ebp-14]
 006A1AC4    mov         byte ptr [edx+140],al
 006A1ACA    mov         eax,dword ptr [ebp-4]
 006A1ACD    mov         eax,dword ptr [eax+210];TFXPPD.IO:TFXPIO
 006A1AD3    mov         edx,dword ptr [ebp-14]
 006A1AD6    mov         cl,byte ptr [edx+140]
 006A1ADC    mov         dl,4
 006A1ADE    call        TFXPIO.SetIOCtrlType
 006A1AE3    mov         al,byte ptr [ebp-0DF]
 006A1AE9    mov         edx,dword ptr [ebp-14]
 006A1AEC    mov         byte ptr [edx+141],al
 006A1AF2    test        byte ptr [ebp-0DE],8
 006A1AF9    seta        al
 006A1AFC    mov         edx,dword ptr [ebp-14]
 006A1AFF    mov         byte ptr [edx+142],al
 006A1B05    test        byte ptr [ebp-0DE],2
 006A1B0C    seta        al
 006A1B0F    mov         edx,dword ptr [ebp-14]
 006A1B12    mov         byte ptr [edx+143],al
 006A1B18    test        byte ptr [ebp-0DE],4
 006A1B1F    seta        al
 006A1B22    mov         edx,dword ptr [ebp-14]
 006A1B25    mov         byte ptr [edx+144],al
 006A1B2B    test        byte ptr [ebp-0DE],1
 006A1B32    seta        al
 006A1B35    mov         edx,dword ptr [ebp-14]
 006A1B38    mov         byte ptr [edx+145],al
 006A1B3E    test        byte ptr [ebp-0DE],10
 006A1B45    seta        al
 006A1B48    mov         edx,dword ptr [ebp-14]
 006A1B4B    mov         byte ptr [edx+146],al
 006A1B51    xor         eax,eax
 006A1B53    mov         al,byte ptr [ebp-0DD]
 006A1B59    mov         edx,0A
 006A1B5E    mul         eax,edx
>006A1B60    jno         006A1B67
 006A1B62    call        @IntOver
 006A1B67    cmp         eax,0FFFF
>006A1B6C    jbe         006A1B73
 006A1B6E    call        @BoundErr
 006A1B73    mov         edx,dword ptr [ebp-14]
 006A1B76    mov         word ptr [edx+148],ax
 006A1B7D    xor         eax,eax
 006A1B7F    mov         al,byte ptr [ebp-0DC]
 006A1B85    mov         edx,0A
 006A1B8A    mul         eax,edx
>006A1B8C    jno         006A1B93
 006A1B8E    call        @IntOver
 006A1B93    cmp         eax,0FFFF
>006A1B98    jbe         006A1B9F
 006A1B9A    call        @BoundErr
 006A1B9F    mov         edx,dword ptr [ebp-14]
 006A1BA2    mov         word ptr [edx+14A],ax
 006A1BA9    test        byte ptr [ebp-0DB],1
 006A1BB0    seta        al
 006A1BB3    mov         edx,dword ptr [ebp-14]
 006A1BB6    mov         byte ptr [edx+14C],al
 006A1BBC    test        byte ptr [ebp-0DB],2
 006A1BC3    seta        al
 006A1BC6    mov         edx,dword ptr [ebp-14]
 006A1BC9    mov         byte ptr [edx+14D],al
 006A1BCF    test        byte ptr [ebp-0DB],4
 006A1BD6    seta        al
 006A1BD9    mov         edx,dword ptr [ebp-14]
 006A1BDC    mov         byte ptr [edx+14E],al
 006A1BE2    test        byte ptr [ebp-0DB],8
 006A1BE9    seta        al
 006A1BEC    mov         edx,dword ptr [ebp-14]
 006A1BEF    mov         byte ptr [edx+14F],al
 006A1BF5    test        byte ptr [ebp-0DB],10
 006A1BFC    seta        al
 006A1BFF    mov         edx,dword ptr [ebp-14]
 006A1C02    mov         byte ptr [edx+150],al
 006A1C08    test        byte ptr [ebp-0DB],20
 006A1C0F    seta        al
 006A1C12    mov         edx,dword ptr [ebp-14]
 006A1C15    mov         byte ptr [edx+151],al
 006A1C1B    mov         eax,dword ptr [ebp-14]
 006A1C1E    mov         byte ptr [eax+193],0
 006A1C25    test        byte ptr [ebp-0DB],40
>006A1C2C    jbe         006A1C38
 006A1C2E    mov         eax,dword ptr [ebp-14]
 006A1C31    mov         byte ptr [eax+193],1
 006A1C38    test        byte ptr [ebp-0DB],80
>006A1C3F    jbe         006A1C4B
 006A1C41    mov         eax,dword ptr [ebp-14]
 006A1C44    mov         byte ptr [eax+193],2
 006A1C4B    mov         al,byte ptr [ebp-0D9]
 006A1C51    mov         edx,dword ptr [ebp-14]
 006A1C54    mov         byte ptr [edx+162],al
 006A1C5A    mov         al,byte ptr [ebp-0D8]
 006A1C60    mov         edx,dword ptr [ebp-14]
 006A1C63    mov         byte ptr [edx+163],al
 006A1C69    mov         al,byte ptr [ebp-0D7]
 006A1C6F    mov         edx,dword ptr [ebp-14]
 006A1C72    mov         byte ptr [edx+16A],al
 006A1C78    test        byte ptr [ebp-0D6],1
 006A1C7F    seta        al
 006A1C82    mov         edx,dword ptr [ebp-14]
 006A1C85    mov         byte ptr [edx+152],al
 006A1C8B    test        byte ptr [ebp-0D6],2
 006A1C92    seta        al
 006A1C95    mov         edx,dword ptr [ebp-14]
 006A1C98    mov         byte ptr [edx+153],al
 006A1C9E    test        byte ptr [ebp-0D6],4
 006A1CA5    seta        al
 006A1CA8    mov         edx,dword ptr [ebp-14]
 006A1CAB    mov         byte ptr [edx+154],al
 006A1CB1    test        byte ptr [ebp-0D6],8
 006A1CB8    seta        al
 006A1CBB    mov         edx,dword ptr [ebp-14]
 006A1CBE    mov         byte ptr [edx+155],al
 006A1CC4    test        byte ptr [ebp-0D6],10
 006A1CCB    seta        al
 006A1CCE    mov         edx,dword ptr [ebp-14]
 006A1CD1    mov         byte ptr [edx+156],al
 006A1CD7    test        byte ptr [ebp-0D6],20
 006A1CDE    seta        al
 006A1CE1    mov         edx,dword ptr [ebp-14]
 006A1CE4    mov         byte ptr [edx+157],al
 006A1CEA    test        byte ptr [ebp-0D6],40
 006A1CF1    seta        al
 006A1CF4    mov         edx,dword ptr [ebp-14]
 006A1CF7    mov         byte ptr [edx+158],al
 006A1CFD    test        byte ptr [ebp-0D6],80
 006A1D04    seta        al
 006A1D07    mov         edx,dword ptr [ebp-14]
 006A1D0A    mov         byte ptr [edx+159],al
 006A1D10    test        byte ptr [ebp-0D4],1
 006A1D17    seta        al
 006A1D1A    mov         edx,dword ptr [ebp-14]
 006A1D1D    mov         byte ptr [edx+15A],al
 006A1D23    test        byte ptr [ebp-0D4],2
 006A1D2A    seta        al
 006A1D2D    mov         edx,dword ptr [ebp-14]
 006A1D30    mov         byte ptr [edx+15B],al
 006A1D36    test        byte ptr [ebp-0D4],4
 006A1D3D    seta        al
 006A1D40    mov         edx,dword ptr [ebp-14]
 006A1D43    mov         byte ptr [edx+15C],al
 006A1D49    test        byte ptr [ebp-0D4],8
 006A1D50    seta        al
 006A1D53    mov         edx,dword ptr [ebp-14]
 006A1D56    mov         byte ptr [edx+15D],al
 006A1D5C    test        byte ptr [ebp-0D4],10
 006A1D63    seta        al
 006A1D66    mov         edx,dword ptr [ebp-14]
 006A1D69    mov         byte ptr [edx+15E],al
 006A1D6F    test        byte ptr [ebp-0D4],20
 006A1D76    seta        al
 006A1D79    mov         edx,dword ptr [ebp-14]
 006A1D7C    mov         byte ptr [edx+15F],al
 006A1D82    test        byte ptr [ebp-0D4],40
 006A1D89    seta        al
 006A1D8C    mov         edx,dword ptr [ebp-14]
 006A1D8F    mov         byte ptr [edx+160],al
 006A1D95    test        byte ptr [ebp-0D4],80
 006A1D9C    seta        al
 006A1D9F    mov         edx,dword ptr [ebp-14]
 006A1DA2    mov         byte ptr [edx+161],al
 006A1DA8    test        byte ptr [ebp-0D2],1
 006A1DAF    seta        al
 006A1DB2    mov         edx,dword ptr [ebp-14]
 006A1DB5    mov         byte ptr [edx+16B],al
 006A1DBB    mov         eax,dword ptr [ebp-14]
 006A1DBE    mov         byte ptr [eax+16C],0
 006A1DC5    test        byte ptr [ebp-0D2],2
>006A1DCC    jbe         006A1DD8
 006A1DCE    mov         eax,dword ptr [ebp-14]
 006A1DD1    mov         byte ptr [eax+16C],1
 006A1DD8    test        byte ptr [ebp-0D2],20
>006A1DDF    jbe         006A1DEB
 006A1DE1    mov         eax,dword ptr [ebp-14]
 006A1DE4    mov         byte ptr [eax+16C],2
 006A1DEB    test        byte ptr [ebp-0D2],40
 006A1DF2    seta        al
 006A1DF5    mov         edx,dword ptr [ebp-14]
 006A1DF8    mov         byte ptr [edx+177],al
 006A1DFE    mov         eax,dword ptr [ebp-14]
 006A1E01    cmp         byte ptr [eax+177],0
>006A1E08    jne         006A1E14
 006A1E0A    mov         eax,dword ptr [ebp-14]
 006A1E0D    mov         byte ptr [eax+178],1E
 006A1E14    test        byte ptr [ebp-0D2],4
 006A1E1B    seta        al
 006A1E1E    mov         edx,dword ptr [ebp-14]
 006A1E21    mov         byte ptr [edx+174],al
 006A1E27    test        byte ptr [ebp-0D2],80
 006A1E2E    seta        al
 006A1E31    mov         edx,dword ptr [ebp-14]
 006A1E34    mov         byte ptr [edx+17B],al
 006A1E3A    test        byte ptr [ebp-0D2],8
>006A1E41    jbe         006A1E4F
 006A1E43    mov         eax,dword ptr [ebp-14]
 006A1E46    mov         byte ptr [eax+173],1
>006A1E4D    jmp         006A1E59
 006A1E4F    mov         eax,dword ptr [ebp-14]
 006A1E52    mov         byte ptr [eax+173],0
 006A1E59    test        byte ptr [ebp-0D2],10
 006A1E60    seta        al
 006A1E63    mov         edx,dword ptr [ebp-14]
 006A1E66    mov         byte ptr [edx+176],al
 006A1E6C    xor         eax,eax
 006A1E6E    mov         al,byte ptr [ebp-0D1]
 006A1E74    mov         edx,100
 006A1E79    mul         eax,edx
>006A1E7B    jno         006A1E82
 006A1E7D    call        @IntOver
 006A1E82    xor         edx,edx
 006A1E84    mov         dl,byte ptr [ebp-0D0]
 006A1E8A    add         eax,edx
>006A1E8C    jno         006A1E93
 006A1E8E    call        @IntOver
 006A1E93    cmp         eax,0FFFF
>006A1E98    jbe         006A1E9F
 006A1E9A    call        @BoundErr
 006A1E9F    mov         edx,dword ptr [ebp-14]
 006A1EA2    mov         word ptr [edx+164],ax
 006A1EA9    xor         eax,eax
 006A1EAB    mov         al,byte ptr [ebp-0CF]
 006A1EB1    mov         edx,100
 006A1EB6    mul         eax,edx
>006A1EB8    jno         006A1EBF
 006A1EBA    call        @IntOver
 006A1EBF    xor         edx,edx
 006A1EC1    mov         dl,byte ptr [ebp-0CE]
 006A1EC7    add         eax,edx
>006A1EC9    jno         006A1ED0
 006A1ECB    call        @IntOver
 006A1ED0    cmp         eax,0FFFF
>006A1ED5    jbe         006A1EDC
 006A1ED7    call        @BoundErr
 006A1EDC    mov         edx,dword ptr [ebp-14]
 006A1EDF    mov         word ptr [edx+166],ax
 006A1EE6    xor         eax,eax
 006A1EE8    mov         al,byte ptr [ebp-0CD]
 006A1EEE    mov         edx,100
 006A1EF3    mul         eax,edx
>006A1EF5    jno         006A1EFC
 006A1EF7    call        @IntOver
 006A1EFC    xor         edx,edx
 006A1EFE    mov         dl,byte ptr [ebp-0CC]
 006A1F04    add         eax,edx
>006A1F06    jno         006A1F0D
 006A1F08    call        @IntOver
 006A1F0D    cmp         eax,0FFFF
>006A1F12    jbe         006A1F19
 006A1F14    call        @BoundErr
 006A1F19    mov         edx,dword ptr [ebp-14]
 006A1F1C    mov         word ptr [edx+168],ax
 006A1F23    test        byte ptr [ebp-0DE],40
>006A1F2A    je          006A1F38
 006A1F2C    mov         eax,dword ptr [ebp-14]
 006A1F2F    mov         byte ptr [eax+147],2
>006A1F36    jmp         006A1F5C
 006A1F38    test        byte ptr [ebp-0DE],20
>006A1F3F    je          006A1F4D
 006A1F41    mov         eax,dword ptr [ebp-14]
 006A1F44    mov         byte ptr [eax+147],1
>006A1F4B    jmp         006A1F5C
 006A1F4D    mov         al,byte ptr [ebp-0CB]
 006A1F53    mov         edx,dword ptr [ebp-14]
 006A1F56    mov         byte ptr [edx+147],al
 006A1F5C    mov         al,byte ptr [ebp-0CA]
 006A1F62    mov         edx,dword ptr [ebp-14]
 006A1F65    mov         byte ptr [edx+172],al
 006A1F6B    mov         al,byte ptr [ebp-0C9]
 006A1F71    mov         edx,dword ptr [ebp-14]
 006A1F74    mov         byte ptr [edx+175],al
 006A1F7A    xor         eax,eax
 006A1F7C    mov         al,byte ptr [ebp-0C8]
 006A1F82    mov         edx,100
 006A1F87    mul         eax,edx
>006A1F89    jno         006A1F90
 006A1F8B    call        @IntOver
 006A1F90    xor         edx,edx
 006A1F92    mov         dl,byte ptr [ebp-0C7]
 006A1F98    add         eax,edx
>006A1F9A    jno         006A1FA1
 006A1F9C    call        @IntOver
 006A1FA1    cmp         eax,0FFFF
>006A1FA6    jbe         006A1FAD
 006A1FA8    call        @BoundErr
 006A1FAD    mov         edx,dword ptr [ebp-14]
 006A1FB0    mov         word ptr [edx+179],ax
 006A1FB7    mov         al,byte ptr [ebp-0C6]
 006A1FBD    mov         edx,dword ptr [ebp-14]
 006A1FC0    mov         byte ptr [edx+17D],al
 006A1FC6    test        byte ptr [ebp-0C5],1
 006A1FCD    seta        al
 006A1FD0    mov         edx,dword ptr [ebp-14]
 006A1FD3    mov         byte ptr [edx+17F],al
 006A1FD9    test        byte ptr [ebp-0C5],2
 006A1FE0    seta        al
 006A1FE3    mov         edx,dword ptr [ebp-14]
 006A1FE6    mov         byte ptr [edx+180],al
 006A1FEC    test        byte ptr [ebp-0C5],4
 006A1FF3    seta        al
 006A1FF6    mov         edx,dword ptr [ebp-14]
 006A1FF9    mov         byte ptr [edx+181],al
 006A1FFF    test        byte ptr [ebp-0C5],8
 006A2006    seta        al
 006A2009    mov         edx,dword ptr [ebp-14]
 006A200C    mov         byte ptr [edx+182],al
 006A2012    mov         al,byte ptr [ebp-0C4]
 006A2018    mov         edx,dword ptr [ebp-14]
 006A201B    mov         byte ptr [edx+17C],al
 006A2021    mov         eax,dword ptr [ebp-14]
 006A2024    lea         edx,[eax+16D]
 006A202A    lea         eax,[ebp-0C3]
 006A2030    mov         ecx,4
 006A2035    call        Move
 006A203A    mov         al,byte ptr [ebp-0BF]
 006A2040    mov         edx,dword ptr [ebp-14]
 006A2043    mov         byte ptr [edx+183],al
 006A2049    lea         edx,[ebp-0C]
 006A204C    lea         eax,[ebp-0BE]
 006A2052    mov         ecx,4
 006A2057    call        Move
 006A205C    mov         eax,dword ptr [ebp-0C]
 006A205F    call        006A0364
 006A2064    mov         edx,dword ptr [ebp-14]
 006A2067    mov         dword ptr [edx+184],eax
 006A206D    lea         edx,[ebp-0C]
 006A2070    lea         eax,[ebp-0BA]
 006A2076    mov         ecx,4
 006A207B    call        Move
 006A2080    mov         eax,dword ptr [ebp-0C]
 006A2083    call        006A0364
 006A2088    mov         edx,dword ptr [ebp-14]
 006A208B    mov         dword ptr [edx+188],eax
 006A2091    lea         edx,[ebp-0C]
 006A2094    lea         eax,[ebp-0B6]
 006A209A    mov         ecx,4
 006A209F    call        Move
 006A20A4    mov         eax,dword ptr [ebp-0C]
 006A20A7    call        006A0364
 006A20AC    mov         edx,dword ptr [ebp-14]
 006A20AF    mov         dword ptr [edx+18C],eax
 006A20B5    test        byte ptr [ebp-0B2],1
 006A20BC    seta        al
 006A20BF    mov         edx,dword ptr [ebp-14]
 006A20C2    mov         byte ptr [edx+190],al
 006A20C8    test        byte ptr [ebp-0B2],2
 006A20CF    seta        al
 006A20D2    mov         edx,dword ptr [ebp-14]
 006A20D5    mov         byte ptr [edx+192],al
 006A20DB    mov         al,byte ptr [ebp-0B1]
 006A20E1    mov         edx,dword ptr [ebp-14]
 006A20E4    mov         byte ptr [edx+191],al
 006A20EA    mov         eax,dword ptr [ebp-14]
 006A20ED    cmp         byte ptr [eax+191],0
>006A20F4    jne         006A2100
 006A20F6    mov         eax,dword ptr [ebp-14]
 006A20F9    mov         byte ptr [eax+191],5
 006A2100    mov         al,byte ptr [ebp-0B0]
 006A2106    mov         edx,dword ptr [ebp-14]
 006A2109    mov         byte ptr [edx+194],al
 006A210F    mov         esp,ebp
 006A2111    pop         ebp
 006A2112    ret         4
*}
end;

//006A2174
procedure sub_006A2174(?:TFXPPD; ?:ShortString);
begin
{*
 006A2174    push        ebp
 006A2175    mov         ebp,esp
 006A2177    add         esp,0FFFFFFF8
 006A217A    mov         dword ptr [ebp-8],edx
 006A217D    mov         dword ptr [ebp-4],eax
 006A2180    mov         eax,dword ptr [ebp-4]
 006A2183    add         eax,5
 006A2186    mov         edx,dword ptr [ebp-8]
 006A2189    xor         ecx,ecx
 006A218B    mov         cl,byte ptr [eax]
 006A218D    inc         ecx
 006A218E    call        @AStrCmp
>006A2193    je          006A21AF
 006A2195    mov         eax,dword ptr [ebp-4]
 006A2198    add         eax,5
 006A219B    mov         edx,dword ptr [ebp-8]
 006A219E    mov         cl,0FE
 006A21A0    call        @PStrNCpy
 006A21A5    mov         eax,dword ptr [ebp-4]
 006A21A8    mov         byte ptr [eax+204],1
 006A21AF    pop         ecx
 006A21B0    pop         ecx
 006A21B1    pop         ebp
 006A21B2    ret
*}
end;

//006A21B4
{*procedure sub_006A21B4(?:TFXPPD; ?:?);
begin
 006A21B4    push        ebp
 006A21B5    mov         ebp,esp
 006A21B7    add         esp,0FFFFFFE8
 006A21BA    xor         ecx,ecx
 006A21BC    mov         dword ptr [ebp-18],ecx
 006A21BF    mov         dword ptr [ebp-0C],ecx
 006A21C2    mov         dword ptr [ebp-8],edx
 006A21C5    mov         dword ptr [ebp-4],eax
 006A21C8    xor         eax,eax
 006A21CA    push        ebp
 006A21CB    push        6A2268
 006A21D0    push        dword ptr fs:[eax]
 006A21D3    mov         dword ptr fs:[eax],esp
 006A21D6    lea         eax,[ebp-0C]
 006A21D9    mov         edx,dword ptr [ebp-4]
 006A21DC    add         edx,5
 006A21DF    call        @UStrFromString
 006A21E4    mov         edx,dword ptr [ebp-0C]
 006A21E7    mov         eax,6A2280;'*'
 006A21EC    call        AnsiPos
 006A21F1    mov         dword ptr [ebp-10],eax
 006A21F4    mov         edx,dword ptr [ebp-0C]
 006A21F7    mov         eax,6A2290;'*
'
 006A21FC    call        AnsiPos
 006A2201    mov         dword ptr [ebp-14],eax
 006A2204    lea         eax,[ebp-18]
 006A2207    push        eax
 006A2208    mov         ecx,dword ptr [ebp-14]
 006A220B    sub         ecx,dword ptr [ebp-10]
>006A220E    jno         006A2215
 006A2210    call        @IntOver
 006A2215    sub         ecx,1
>006A2218    jno         006A221F
 006A221A    call        @IntOver
 006A221F    mov         edx,dword ptr [ebp-10]
 006A2222    add         edx,1
>006A2225    jno         006A222C
 006A2227    call        @IntOver
 006A222C    mov         eax,dword ptr [ebp-0C]
 006A222F    call        00432054
 006A2234    mov         edx,dword ptr [ebp-18]
 006A2237    lea         eax,[ebp-0C]
 006A223A    call        @UStrLAsg
 006A223F    mov         eax,dword ptr [ebp-8]
 006A2242    mov         edx,dword ptr [ebp-0C]
 006A2245    call        @UStrAsg
 006A224A    xor         eax,eax
 006A224C    pop         edx
 006A224D    pop         ecx
 006A224E    pop         ecx
 006A224F    mov         dword ptr fs:[eax],edx
 006A2252    push        6A226F
 006A2257    lea         eax,[ebp-18]
 006A225A    call        @UStrClr
 006A225F    lea         eax,[ebp-0C]
 006A2262    call        @UStrClr
 006A2267    ret
>006A2268    jmp         @HandleFinally
>006A226D    jmp         006A2257
 006A226F    mov         esp,ebp
 006A2271    pop         ebp
 006A2272    ret
end;*}

//006A2434
procedure sub_006A2434(?:TFXPPD; ?:UnicodeString);
begin
{*
 006A2434    push        ebp
 006A2435    mov         ebp,esp
 006A2437    add         esp,0FFFFFFE8
 006A243A    xor         ecx,ecx
 006A243C    mov         dword ptr [ebp-18],ecx
 006A243F    mov         dword ptr [ebp-0C],ecx
 006A2442    mov         dword ptr [ebp-8],edx
 006A2445    mov         dword ptr [ebp-4],eax
 006A2448    xor         eax,eax
 006A244A    push        ebp
 006A244B    push        6A24E8
 006A2450    push        dword ptr fs:[eax]
 006A2453    mov         dword ptr fs:[eax],esp
 006A2456    lea         eax,[ebp-0C]
 006A2459    mov         edx,dword ptr [ebp-4]
 006A245C    add         edx,5
 006A245F    call        @UStrFromString
 006A2464    mov         edx,dword ptr [ebp-0C]
 006A2467    mov         eax,6A2500;'<'
 006A246C    call        AnsiPos
 006A2471    mov         dword ptr [ebp-10],eax
 006A2474    mov         edx,dword ptr [ebp-0C]
 006A2477    mov         eax,6A2510;'>
'
 006A247C    call        AnsiPos
 006A2481    mov         dword ptr [ebp-14],eax
 006A2484    lea         eax,[ebp-18]
 006A2487    push        eax
 006A2488    mov         ecx,dword ptr [ebp-14]
 006A248B    sub         ecx,dword ptr [ebp-10]
>006A248E    jno         006A2495
 006A2490    call        @IntOver
 006A2495    sub         ecx,1
>006A2498    jno         006A249F
 006A249A    call        @IntOver
 006A249F    mov         edx,dword ptr [ebp-10]
 006A24A2    add         edx,1
>006A24A5    jno         006A24AC
 006A24A7    call        @IntOver
 006A24AC    mov         eax,dword ptr [ebp-0C]
 006A24AF    call        00432054
 006A24B4    mov         edx,dword ptr [ebp-18]
 006A24B7    lea         eax,[ebp-0C]
 006A24BA    call        @UStrLAsg
 006A24BF    mov         eax,dword ptr [ebp-8]
 006A24C2    mov         edx,dword ptr [ebp-0C]
 006A24C5    call        @UStrAsg
 006A24CA    xor         eax,eax
 006A24CC    pop         edx
 006A24CD    pop         ecx
 006A24CE    pop         ecx
 006A24CF    mov         dword ptr fs:[eax],edx
 006A24D2    push        6A24EF
 006A24D7    lea         eax,[ebp-18]
 006A24DA    call        @UStrClr
 006A24DF    lea         eax,[ebp-0C]
 006A24E2    call        @UStrClr
 006A24E7    ret
>006A24E8    jmp         @HandleFinally
>006A24ED    jmp         006A24D7
 006A24EF    mov         esp,ebp
 006A24F1    pop         ebp
 006A24F2    ret
*}
end;

//006A2700
{*procedure sub_006A2700(?:TFXPPD; ?:?);
begin
 006A2700    push        ebp
 006A2701    mov         ebp,esp
 006A2703    add         esp,0FFFFFFF8
 006A2706    mov         byte ptr [ebp-5],dl
 006A2709    mov         dword ptr [ebp-4],eax
 006A270C    mov         eax,dword ptr [ebp-4]
 006A270F    mov         al,byte ptr [eax+181]
 006A2715    cmp         al,byte ptr [ebp-5]
>006A2718    je          006A2730
 006A271A    mov         al,byte ptr [ebp-5]
 006A271D    mov         edx,dword ptr [ebp-4]
 006A2720    mov         byte ptr [edx+181],al
 006A2726    mov         eax,dword ptr [ebp-4]
 006A2729    mov         byte ptr [eax+204],1
 006A2730    pop         ecx
 006A2731    pop         ecx
 006A2732    pop         ebp
 006A2733    ret
end;*}

//006A2734
{*procedure sub_006A2734(?:TFXPPD; ?:?);
begin
 006A2734    push        ebp
 006A2735    mov         ebp,esp
 006A2737    add         esp,0FFFFFFF8
 006A273A    mov         byte ptr [ebp-5],dl
 006A273D    mov         dword ptr [ebp-4],eax
 006A2740    mov         eax,dword ptr [ebp-4]
 006A2743    mov         al,byte ptr [eax+104]
 006A2749    cmp         al,byte ptr [ebp-5]
>006A274C    je          006A2796
 006A274E    mov         al,byte ptr [ebp-5]
 006A2751    sub         al,3
>006A2753    jae         006A2796
 006A2755    mov         al,byte ptr [ebp-5]
 006A2758    mov         edx,dword ptr [ebp-4]
 006A275B    mov         byte ptr [edx+104],al
 006A2761    mov         al,byte ptr [ebp-5]
 006A2764    sub         al,2
>006A2766    jb          006A276C
>006A2768    je          006A2782
>006A276A    jmp         006A278C
 006A276C    mov         eax,dword ptr [ebp-4]
 006A276F    mov         byte ptr [eax+107],3
 006A2776    mov         eax,dword ptr [ebp-4]
 006A2779    mov         byte ptr [eax+105],0
>006A2780    jmp         006A278C
 006A2782    mov         eax,dword ptr [ebp-4]
 006A2785    mov         byte ptr [eax+107],0
 006A278C    mov         eax,dword ptr [ebp-4]
 006A278F    mov         byte ptr [eax+204],1
 006A2796    pop         ecx
 006A2797    pop         ecx
 006A2798    pop         ebp
 006A2799    ret
end;*}

//006A279C
procedure sub_006A279C(?:TFXPPD; ?:Boolean);
begin
{*
 006A279C    push        ebp
 006A279D    mov         ebp,esp
 006A279F    add         esp,0FFFFFFF8
 006A27A2    mov         byte ptr [ebp-5],dl
 006A27A5    mov         dword ptr [ebp-4],eax
 006A27A8    mov         eax,dword ptr [ebp-4]
 006A27AB    call        006A2818
 006A27B0    test        al,al
>006A27B2    je          006A27D8
 006A27B4    mov         eax,dword ptr [ebp-4]
 006A27B7    mov         al,byte ptr [eax+105]
 006A27BD    cmp         al,byte ptr [ebp-5]
>006A27C0    je          006A27D8
 006A27C2    mov         al,byte ptr [ebp-5]
 006A27C5    mov         edx,dword ptr [ebp-4]
 006A27C8    mov         byte ptr [edx+105],al
 006A27CE    mov         eax,dword ptr [ebp-4]
 006A27D1    mov         byte ptr [eax+204],1
 006A27D8    pop         ecx
 006A27D9    pop         ecx
 006A27DA    pop         ebp
 006A27DB    ret
*}
end;

//006A27DC
{*procedure sub_006A27DC(?:TFXPPD; ?:?);
begin
 006A27DC    push        ebp
 006A27DD    mov         ebp,esp
 006A27DF    add         esp,0FFFFFFF8
 006A27E2    mov         byte ptr [ebp-5],dl
 006A27E5    mov         dword ptr [ebp-4],eax
 006A27E8    mov         eax,dword ptr [ebp-4]
 006A27EB    mov         al,byte ptr [eax+107]
 006A27F1    cmp         al,byte ptr [ebp-5]
>006A27F4    je          006A2813
 006A27F6    mov         al,byte ptr [ebp-5]
 006A27F9    sub         al,5
>006A27FB    jae         006A2813
 006A27FD    mov         al,byte ptr [ebp-5]
 006A2800    mov         edx,dword ptr [ebp-4]
 006A2803    mov         byte ptr [edx+107],al
 006A2809    mov         eax,dword ptr [ebp-4]
 006A280C    mov         byte ptr [eax+204],1
 006A2813    pop         ecx
 006A2814    pop         ecx
 006A2815    pop         ebp
 006A2816    ret
end;*}

//006A2818
{*function sub_006A2818(?:TFXPPD):?;
begin
 006A2818    push        ebp
 006A2819    mov         ebp,esp
 006A281B    add         esp,0FFFFFFF8
 006A281E    mov         dword ptr [ebp-4],eax
 006A2821    mov         eax,dword ptr [ebp-4]
 006A2824    cmp         byte ptr [eax+104],2
 006A282B    sete        byte ptr [ebp-5]
 006A282F    mov         al,byte ptr [ebp-5]
 006A2832    pop         ecx
 006A2833    pop         ecx
 006A2834    pop         ebp
 006A2835    ret
end;*}

//006A2838
{*procedure sub_006A2838(?:TFXPPD; ?:?);
begin
 006A2838    push        ebp
 006A2839    mov         ebp,esp
 006A283B    add         esp,0FFFFFFF8
 006A283E    mov         byte ptr [ebp-5],dl
 006A2841    mov         dword ptr [ebp-4],eax
 006A2844    mov         eax,dword ptr [ebp-4]
 006A2847    mov         al,byte ptr [eax+108]
 006A284D    cmp         al,byte ptr [ebp-5]
>006A2850    je          006A289A
 006A2852    mov         al,byte ptr [ebp-5]
 006A2855    sub         al,2
>006A2857    jae         006A289A
 006A2859    mov         al,byte ptr [ebp-5]
 006A285C    mov         edx,dword ptr [ebp-4]
 006A285F    mov         byte ptr [edx+108],al
 006A2865    mov         al,byte ptr [ebp-5]
 006A2868    sub         al,1
>006A286A    jb          006A2870
>006A286C    je          006A2886
>006A286E    jmp         006A2890
 006A2870    mov         eax,dword ptr [ebp-4]
 006A2873    mov         byte ptr [eax+10B],3
 006A287A    mov         eax,dword ptr [ebp-4]
 006A287D    mov         byte ptr [eax+109],0
>006A2884    jmp         006A2890
 006A2886    mov         eax,dword ptr [ebp-4]
 006A2889    mov         byte ptr [eax+10B],0
 006A2890    mov         eax,dword ptr [ebp-4]
 006A2893    mov         byte ptr [eax+204],1
 006A289A    pop         ecx
 006A289B    pop         ecx
 006A289C    pop         ebp
 006A289D    ret
end;*}

//006A28A0
procedure sub_006A28A0(?:TFXPPD; ?:Boolean);
begin
{*
 006A28A0    push        ebp
 006A28A1    mov         ebp,esp
 006A28A3    add         esp,0FFFFFFF8
 006A28A6    mov         byte ptr [ebp-5],dl
 006A28A9    mov         dword ptr [ebp-4],eax
 006A28AC    mov         eax,dword ptr [ebp-4]
 006A28AF    call        006A291C
 006A28B4    test        al,al
>006A28B6    je          006A28DC
 006A28B8    mov         eax,dword ptr [ebp-4]
 006A28BB    mov         al,byte ptr [eax+109]
 006A28C1    cmp         al,byte ptr [ebp-5]
>006A28C4    je          006A28DC
 006A28C6    mov         al,byte ptr [ebp-5]
 006A28C9    mov         edx,dword ptr [ebp-4]
 006A28CC    mov         byte ptr [edx+109],al
 006A28D2    mov         eax,dword ptr [ebp-4]
 006A28D5    mov         byte ptr [eax+204],1
 006A28DC    pop         ecx
 006A28DD    pop         ecx
 006A28DE    pop         ebp
 006A28DF    ret
*}
end;

//006A28E0
{*procedure sub_006A28E0(?:TFXPPD; ?:?);
begin
 006A28E0    push        ebp
 006A28E1    mov         ebp,esp
 006A28E3    add         esp,0FFFFFFF8
 006A28E6    mov         byte ptr [ebp-5],dl
 006A28E9    mov         dword ptr [ebp-4],eax
 006A28EC    mov         eax,dword ptr [ebp-4]
 006A28EF    mov         al,byte ptr [eax+10B]
 006A28F5    cmp         al,byte ptr [ebp-5]
>006A28F8    je          006A2917
 006A28FA    mov         al,byte ptr [ebp-5]
 006A28FD    sub         al,5
>006A28FF    jae         006A2917
 006A2901    mov         al,byte ptr [ebp-5]
 006A2904    mov         edx,dword ptr [ebp-4]
 006A2907    mov         byte ptr [edx+10B],al
 006A290D    mov         eax,dword ptr [ebp-4]
 006A2910    mov         byte ptr [eax+204],1
 006A2917    pop         ecx
 006A2918    pop         ecx
 006A2919    pop         ebp
 006A291A    ret
end;*}

//006A291C
{*function sub_006A291C(?:TFXPPD):?;
begin
 006A291C    push        ebp
 006A291D    mov         ebp,esp
 006A291F    add         esp,0FFFFFFF8
 006A2922    mov         dword ptr [ebp-4],eax
 006A2925    mov         eax,dword ptr [ebp-4]
 006A2928    cmp         byte ptr [eax+108],1
 006A292F    sete        byte ptr [ebp-5]
 006A2933    mov         al,byte ptr [ebp-5]
 006A2936    pop         ecx
 006A2937    pop         ecx
 006A2938    pop         ebp
 006A2939    ret
end;*}

//006A293C
{*procedure sub_006A293C(?:TFXPPD; ?:?);
begin
 006A293C    push        ebp
 006A293D    mov         ebp,esp
 006A293F    add         esp,0FFFFFFF8
 006A2942    mov         byte ptr [ebp-5],dl
 006A2945    mov         dword ptr [ebp-4],eax
 006A2948    mov         eax,dword ptr [ebp-4]
 006A294B    call        006A2A00
 006A2950    test        al,al
>006A2952    je          006A29B4
 006A2954    mov         eax,dword ptr [ebp-4]
 006A2957    mov         al,byte ptr [eax+10C]
 006A295D    cmp         al,byte ptr [ebp-5]
>006A2960    je          006A29B4
 006A2962    mov         al,byte ptr [ebp-5]
 006A2965    sub         al,2
>006A2967    jae         006A29B4
 006A2969    mov         al,byte ptr [ebp-5]
 006A296C    mov         edx,dword ptr [ebp-4]
 006A296F    mov         byte ptr [edx+10C],al
 006A2975    mov         al,byte ptr [ebp-5]
 006A2978    sub         al,1
>006A297A    jb          006A2980
>006A297C    je          006A2996
>006A297E    jmp         006A29AA
 006A2980    mov         eax,dword ptr [ebp-4]
 006A2983    mov         byte ptr [eax+10D],3
 006A298A    mov         eax,dword ptr [ebp-4]
 006A298D    mov         byte ptr [eax+10E],0
>006A2994    jmp         006A29AA
 006A2996    mov         eax,dword ptr [ebp-4]
 006A2999    mov         byte ptr [eax+10D],4
 006A29A0    mov         eax,dword ptr [ebp-4]
 006A29A3    mov         byte ptr [eax+10E],1
 006A29AA    mov         eax,dword ptr [ebp-4]
 006A29AD    mov         byte ptr [eax+204],1
 006A29B4    pop         ecx
 006A29B5    pop         ecx
 006A29B6    pop         ebp
 006A29B7    ret
end;*}

//006A29B8
{*procedure sub_006A29B8(?:TFXPPD; ?:?);
begin
 006A29B8    push        ebp
 006A29B9    mov         ebp,esp
 006A29BB    add         esp,0FFFFFFF8
 006A29BE    mov         byte ptr [ebp-5],dl
 006A29C1    mov         dword ptr [ebp-4],eax
 006A29C4    mov         eax,dword ptr [ebp-4]
 006A29C7    call        006A2A00
 006A29CC    test        al,al
>006A29CE    je          006A29FB
 006A29D0    mov         eax,dword ptr [ebp-4]
 006A29D3    mov         al,byte ptr [eax+10D]
 006A29D9    cmp         al,byte ptr [ebp-5]
>006A29DC    je          006A29FB
 006A29DE    mov         al,byte ptr [ebp-5]
 006A29E1    sub         al,5
>006A29E3    jae         006A29FB
 006A29E5    mov         al,byte ptr [ebp-5]
 006A29E8    mov         edx,dword ptr [ebp-4]
 006A29EB    mov         byte ptr [edx+10D],al
 006A29F1    mov         eax,dword ptr [ebp-4]
 006A29F4    mov         byte ptr [eax+204],1
 006A29FB    pop         ecx
 006A29FC    pop         ecx
 006A29FD    pop         ebp
 006A29FE    ret
end;*}

//006A2A00
{*function sub_006A2A00(?:TFXPPD):?;
begin
 006A2A00    push        ebp
 006A2A01    mov         ebp,esp
 006A2A03    add         esp,0FFFFFFF8
 006A2A06    mov         dword ptr [ebp-4],eax
 006A2A09    mov         eax,[007C4BFC];^gvar_007CA840
 006A2A0E    cmp         byte ptr [eax],0
>006A2A11    jne         006A2A1D
 006A2A13    mov         eax,[007C4870];^gvar_007A1EB8
 006A2A18    cmp         byte ptr [eax],0
>006A2A1B    jne         006A2A21
 006A2A1D    xor         eax,eax
>006A2A1F    jmp         006A2A23
 006A2A21    mov         al,1
 006A2A23    mov         byte ptr [ebp-5],al
 006A2A26    mov         al,byte ptr [ebp-5]
 006A2A29    pop         ecx
 006A2A2A    pop         ecx
 006A2A2B    pop         ebp
 006A2A2C    ret
end;*}

//006A2A30
{*procedure sub_006A2A30(?:TFXPPD; ?:?);
begin
 006A2A30    push        ebp
 006A2A31    mov         ebp,esp
 006A2A33    add         esp,0FFFFFFF8
 006A2A36    mov         byte ptr [ebp-5],dl
 006A2A39    mov         dword ptr [ebp-4],eax
 006A2A3C    mov         eax,dword ptr [ebp-4]
 006A2A3F    call        006A2A78
 006A2A44    test        al,al
>006A2A46    je          006A2A73
 006A2A48    mov         eax,dword ptr [ebp-4]
 006A2A4B    mov         al,byte ptr [eax+10E]
 006A2A51    cmp         al,byte ptr [ebp-5]
>006A2A54    je          006A2A73
 006A2A56    mov         al,byte ptr [ebp-5]
 006A2A59    sub         al,2
>006A2A5B    jae         006A2A73
 006A2A5D    mov         al,byte ptr [ebp-5]
 006A2A60    mov         edx,dword ptr [ebp-4]
 006A2A63    mov         byte ptr [edx+10E],al
 006A2A69    mov         eax,dword ptr [ebp-4]
 006A2A6C    mov         byte ptr [eax+204],1
 006A2A73    pop         ecx
 006A2A74    pop         ecx
 006A2A75    pop         ebp
 006A2A76    ret
end;*}

//006A2A78
{*function sub_006A2A78(?:TFXPPD):?;
begin
 006A2A78    push        ebp
 006A2A79    mov         ebp,esp
 006A2A7B    add         esp,0FFFFFFF8
 006A2A7E    mov         dword ptr [ebp-4],eax
 006A2A81    mov         eax,dword ptr [ebp-4]
 006A2A84    cmp         byte ptr [eax+10C],1
 006A2A8B    sete        byte ptr [ebp-5]
 006A2A8F    mov         al,byte ptr [ebp-5]
 006A2A92    pop         ecx
 006A2A93    pop         ecx
 006A2A94    pop         ebp
 006A2A95    ret
end;*}

//006A2A98
procedure sub_006A2A98(?:TFXPPD; ?:NativeInt);
begin
{*
 006A2A98    push        ebp
 006A2A99    mov         ebp,esp
 006A2A9B    add         esp,0FFFFFFF8
 006A2A9E    mov         byte ptr [ebp-5],dl
 006A2AA1    mov         dword ptr [ebp-4],eax
 006A2AA4    mov         eax,dword ptr [ebp-4]
 006A2AA7    mov         al,byte ptr [eax+187]
 006A2AAD    cmp         al,byte ptr [ebp-5]
>006A2AB0    je          006A2ACF
 006A2AB2    mov         al,byte ptr [ebp-5]
 006A2AB5    sub         al,3
>006A2AB7    jae         006A2ACF
 006A2AB9    mov         al,byte ptr [ebp-5]
 006A2ABC    mov         edx,dword ptr [ebp-4]
 006A2ABF    mov         byte ptr [edx+187],al
 006A2AC5    mov         eax,dword ptr [ebp-4]
 006A2AC8    mov         byte ptr [eax+204],1
 006A2ACF    pop         ecx
 006A2AD0    pop         ecx
 006A2AD1    pop         ebp
 006A2AD2    ret
*}
end;

//006A2AD4
{*procedure sub_006A2AD4(?:TFXPPD; ?:?);
begin
 006A2AD4    push        ebp
 006A2AD5    mov         ebp,esp
 006A2AD7    add         esp,0FFFFFFF8
 006A2ADA    mov         dword ptr [ebp-8],edx
 006A2ADD    mov         dword ptr [ebp-4],eax
 006A2AE0    mov         eax,dword ptr [ebp-4]
 006A2AE3    mov         eax,dword ptr [eax+188]
 006A2AE9    cmp         eax,dword ptr [ebp-8]
>006A2AEC    je          006A2B04
 006A2AEE    mov         eax,dword ptr [ebp-8]
 006A2AF1    mov         edx,dword ptr [ebp-4]
 006A2AF4    mov         dword ptr [edx+188],eax
 006A2AFA    mov         eax,dword ptr [ebp-4]
 006A2AFD    mov         byte ptr [eax+204],1
 006A2B04    pop         ecx
 006A2B05    pop         ecx
 006A2B06    pop         ebp
 006A2B07    ret
end;*}

//006A2B08
{*procedure sub_006A2B08(?:TFXPPD; ?:?);
begin
 006A2B08    push        ebp
 006A2B09    mov         ebp,esp
 006A2B0B    add         esp,0FFFFFFF8
 006A2B0E    mov         dword ptr [ebp-8],edx
 006A2B11    mov         dword ptr [ebp-4],eax
 006A2B14    mov         eax,dword ptr [ebp-4]
 006A2B17    mov         eax,dword ptr [eax+18C]
 006A2B1D    cmp         eax,dword ptr [ebp-8]
>006A2B20    je          006A2B38
 006A2B22    mov         eax,dword ptr [ebp-8]
 006A2B25    mov         edx,dword ptr [ebp-4]
 006A2B28    mov         dword ptr [edx+18C],eax
 006A2B2E    mov         eax,dword ptr [ebp-4]
 006A2B31    mov         byte ptr [eax+204],1
 006A2B38    pop         ecx
 006A2B39    pop         ecx
 006A2B3A    pop         ebp
 006A2B3B    ret
end;*}

//006A2B3C
{*procedure sub_006A2B3C(?:TFXPPD; ?:?);
begin
 006A2B3C    push        ebp
 006A2B3D    mov         ebp,esp
 006A2B3F    add         esp,0FFFFFFF8
 006A2B42    mov         dword ptr [ebp-8],edx
 006A2B45    mov         dword ptr [ebp-4],eax
 006A2B48    mov         eax,dword ptr [ebp-4]
 006A2B4B    mov         eax,dword ptr [eax+190]
 006A2B51    cmp         eax,dword ptr [ebp-8]
>006A2B54    je          006A2B6C
 006A2B56    mov         eax,dword ptr [ebp-8]
 006A2B59    mov         edx,dword ptr [ebp-4]
 006A2B5C    mov         dword ptr [edx+190],eax
 006A2B62    mov         eax,dword ptr [ebp-4]
 006A2B65    mov         byte ptr [eax+204],1
 006A2B6C    pop         ecx
 006A2B6D    pop         ecx
 006A2B6E    pop         ebp
 006A2B6F    ret
end;*}

//006A2B70
{*function sub_006A2B70(?:TFXPPD):?;
begin
 006A2B70    push        ebp
 006A2B71    mov         ebp,esp
 006A2B73    add         esp,0FFFFFFF8
 006A2B76    mov         dword ptr [ebp-4],eax
 006A2B79    mov         eax,dword ptr [ebp-4]
 006A2B7C    cmp         byte ptr [eax+187],2
 006A2B83    sete        byte ptr [ebp-5]
 006A2B87    mov         al,byte ptr [ebp-5]
 006A2B8A    pop         ecx
 006A2B8B    pop         ecx
 006A2B8C    pop         ebp
 006A2B8D    ret
end;*}

//006A2B90
procedure sub_006A2B90(?:TFXPPD; ?:NativeInt);
begin
{*
 006A2B90    push        ebp
 006A2B91    mov         ebp,esp
 006A2B93    add         esp,0FFFFFFF8
 006A2B96    mov         byte ptr [ebp-5],dl
 006A2B99    mov         dword ptr [ebp-4],eax
 006A2B9C    mov         eax,dword ptr [ebp-4]
 006A2B9F    mov         al,byte ptr [eax+198]
 006A2BA5    cmp         al,byte ptr [ebp-5]
>006A2BA8    je          006A2BC0
 006A2BAA    mov         al,byte ptr [ebp-5]
 006A2BAD    mov         edx,dword ptr [ebp-4]
 006A2BB0    mov         byte ptr [edx+198],al
 006A2BB6    mov         eax,dword ptr [ebp-4]
 006A2BB9    mov         byte ptr [eax+204],1
 006A2BC0    pop         ecx
 006A2BC1    pop         ecx
 006A2BC2    pop         ebp
 006A2BC3    ret
*}
end;

//006A2BC4
procedure sub_006A2BC4(?:TFXPPD; ?:LongInt);
begin
{*
 006A2BC4    push        ebp
 006A2BC5    mov         ebp,esp
 006A2BC7    add         esp,0FFFFFFF8
 006A2BCA    mov         byte ptr [ebp-5],dl
 006A2BCD    mov         dword ptr [ebp-4],eax
 006A2BD0    mov         eax,dword ptr [ebp-4]
 006A2BD3    mov         al,byte ptr [eax+122]
 006A2BD9    cmp         al,byte ptr [ebp-5]
>006A2BDC    je          006A2BFA
 006A2BDE    cmp         byte ptr [ebp-5],20
>006A2BE2    ja          006A2BFA
 006A2BE4    mov         al,byte ptr [ebp-5]
 006A2BE7    mov         edx,dword ptr [ebp-4]
 006A2BEA    mov         byte ptr [edx+122],al
 006A2BF0    mov         eax,dword ptr [ebp-4]
 006A2BF3    mov         byte ptr [eax+204],1
 006A2BFA    pop         ecx
 006A2BFB    pop         ecx
 006A2BFC    pop         ebp
 006A2BFD    ret
*}
end;

//006A2C00
procedure sub_006A2C00(?:TFXPPD; ?:LongInt);
begin
{*
 006A2C00    push        ebp
 006A2C01    mov         ebp,esp
 006A2C03    add         esp,0FFFFFFF8
 006A2C06    mov         byte ptr [ebp-5],dl
 006A2C09    mov         dword ptr [ebp-4],eax
 006A2C0C    mov         eax,dword ptr [ebp-4]
 006A2C0F    mov         al,byte ptr [eax+175]
 006A2C15    cmp         al,byte ptr [ebp-5]
>006A2C18    je          006A2C4A
 006A2C1A    xor         eax,eax
 006A2C1C    mov         al,byte ptr [ebp-5]
 006A2C1F    mov         ecx,0FA
 006A2C24    xor         edx,edx
 006A2C26    call        004329DC
 006A2C2B    cmp         eax,0FF
>006A2C30    jbe         006A2C37
 006A2C32    call        @BoundErr
 006A2C37    mov         edx,dword ptr [ebp-4]
 006A2C3A    mov         byte ptr [edx+175],al
 006A2C40    mov         eax,dword ptr [ebp-4]
 006A2C43    mov         byte ptr [eax+204],1
 006A2C4A    pop         ecx
 006A2C4B    pop         ecx
 006A2C4C    pop         ebp
 006A2C4D    ret
*}
end;

//006A2C50
procedure sub_006A2C50(?:TFXPPD; ?:LongInt);
begin
{*
 006A2C50    push        ebp
 006A2C51    mov         ebp,esp
 006A2C53    add         esp,0FFFFFFF8
 006A2C56    mov         word ptr [ebp-6],dx
 006A2C5A    mov         dword ptr [ebp-4],eax
 006A2C5D    mov         ax,word ptr [ebp-6]
 006A2C61    mov         edx,dword ptr [ebp-4]
 006A2C64    cmp         ax,word ptr [edx+123]
>006A2C6B    je          006A2D1B
 006A2C71    cmp         word ptr [ebp-6],1
>006A2C76    jae         006A2C86
 006A2C78    mov         eax,dword ptr [ebp-4]
 006A2C7B    mov         word ptr [eax+123],1
>006A2C84    jmp         006A2CAA
 006A2C86    cmp         word ptr [ebp-6],270F
>006A2C8C    jbe         006A2C9C
 006A2C8E    mov         eax,dword ptr [ebp-4]
 006A2C91    mov         word ptr [eax+123],270F
>006A2C9A    jmp         006A2CAA
 006A2C9C    mov         ax,word ptr [ebp-6]
 006A2CA0    mov         edx,dword ptr [ebp-4]
 006A2CA3    mov         word ptr [edx+123],ax
 006A2CAA    mov         eax,dword ptr [ebp-4]
 006A2CAD    movzx       eax,word ptr [eax+123]
 006A2CB4    mov         edx,dword ptr [ebp-4]
 006A2CB7    movzx       edx,byte ptr [edx+125]
 006A2CBE    add         eax,edx
>006A2CC0    jno         006A2CC7
 006A2CC2    call        @IntOver
 006A2CC7    sub         eax,1
>006A2CCA    jno         006A2CD1
 006A2CCC    call        @IntOver
 006A2CD1    cmp         eax,270F
>006A2CD6    jle         006A2D11
 006A2CD8    mov         eax,dword ptr [ebp-4]
 006A2CDB    movzx       eax,byte ptr [eax+125]
 006A2CE2    mov         edx,270F
 006A2CE7    sub         edx,eax
>006A2CE9    jno         006A2CF0
 006A2CEB    call        @IntOver
 006A2CF0    add         edx,1
>006A2CF3    jno         006A2CFA
 006A2CF5    call        @IntOver
 006A2CFA    cmp         edx,0FFFF
>006A2D00    jbe         006A2D07
 006A2D02    call        @BoundErr
 006A2D07    mov         eax,dword ptr [ebp-4]
 006A2D0A    mov         word ptr [eax+123],dx
 006A2D11    mov         eax,dword ptr [ebp-4]
 006A2D14    mov         byte ptr [eax+204],1
 006A2D1B    pop         ecx
 006A2D1C    pop         ecx
 006A2D1D    pop         ebp
 006A2D1E    ret
*}
end;

//006A2D20
procedure sub_006A2D20(?:TFXPPD; ?:LongInt);
begin
{*
 006A2D20    push        ebp
 006A2D21    mov         ebp,esp
 006A2D23    add         esp,0FFFFFFF8
 006A2D26    mov         byte ptr [ebp-5],dl
 006A2D29    mov         dword ptr [ebp-4],eax
 006A2D2C    mov         al,byte ptr [ebp-5]
 006A2D2F    mov         edx,dword ptr [ebp-4]
 006A2D32    cmp         al,byte ptr [edx+125]
>006A2D38    je          006A2DDE
 006A2D3E    cmp         byte ptr [ebp-5],1
>006A2D42    jae         006A2D50
 006A2D44    mov         eax,dword ptr [ebp-4]
 006A2D47    mov         byte ptr [eax+125],1
>006A2D4E    jmp         006A2D6E
 006A2D50    cmp         byte ptr [ebp-5],0FA
>006A2D54    jbe         006A2D62
 006A2D56    mov         eax,dword ptr [ebp-4]
 006A2D59    mov         byte ptr [eax+125],0FA
>006A2D60    jmp         006A2D6E
 006A2D62    mov         al,byte ptr [ebp-5]
 006A2D65    mov         edx,dword ptr [ebp-4]
 006A2D68    mov         byte ptr [edx+125],al
 006A2D6E    mov         eax,dword ptr [ebp-4]
 006A2D71    movzx       eax,byte ptr [eax+125]
 006A2D78    mov         edx,dword ptr [ebp-4]
 006A2D7B    movzx       edx,word ptr [edx+123]
 006A2D82    add         eax,edx
>006A2D84    jno         006A2D8B
 006A2D86    call        @IntOver
 006A2D8B    sub         eax,1
>006A2D8E    jno         006A2D95
 006A2D90    call        @IntOver
 006A2D95    cmp         eax,270F
>006A2D9A    jle         006A2DD4
 006A2D9C    mov         eax,dword ptr [ebp-4]
 006A2D9F    movzx       eax,word ptr [eax+123]
 006A2DA6    mov         edx,270F
 006A2DAB    sub         edx,eax
>006A2DAD    jno         006A2DB4
 006A2DAF    call        @IntOver
 006A2DB4    add         edx,1
>006A2DB7    jno         006A2DBE
 006A2DB9    call        @IntOver
 006A2DBE    cmp         edx,0FF
>006A2DC4    jbe         006A2DCB
 006A2DC6    call        @BoundErr
 006A2DCB    mov         eax,dword ptr [ebp-4]
 006A2DCE    mov         byte ptr [eax+125],dl
 006A2DD4    mov         eax,dword ptr [ebp-4]
 006A2DD7    mov         byte ptr [eax+204],1
 006A2DDE    pop         ecx
 006A2DDF    pop         ecx
 006A2DE0    pop         ebp
 006A2DE1    ret
*}
end;

//006A2DE4
{*function sub_006A2DE4(?:TFXPPD):?;
begin
 006A2DE4    push        ebp
 006A2DE5    mov         ebp,esp
 006A2DE7    add         esp,0FFFFFFF4
 006A2DEA    mov         dword ptr [ebp-4],eax
 006A2DED    mov         eax,dword ptr [ebp-4]
 006A2DF0    movzx       eax,word ptr [eax+123]
 006A2DF7    mov         edx,dword ptr [ebp-4]
 006A2DFA    movzx       edx,byte ptr [edx+125]
 006A2E01    add         eax,edx
>006A2E03    jno         006A2E0A
 006A2E05    call        @IntOver
 006A2E0A    sub         eax,1
>006A2E0D    jno         006A2E14
 006A2E0F    call        @IntOver
 006A2E14    mov         dword ptr [ebp-0C],eax
 006A2E17    cmp         dword ptr [ebp-0C],0
>006A2E1B    jge         006A2E22
 006A2E1D    xor         eax,eax
 006A2E1F    mov         dword ptr [ebp-0C],eax
 006A2E22    mov         eax,dword ptr [ebp-0C]
 006A2E25    cmp         eax,0FFFF
>006A2E2A    jbe         006A2E31
 006A2E2C    call        @BoundErr
 006A2E31    mov         word ptr [ebp-6],ax
 006A2E35    mov         ax,word ptr [ebp-6]
 006A2E39    mov         esp,ebp
 006A2E3B    pop         ebp
 006A2E3C    ret
end;*}

//006A2E40
{*procedure sub_006A2E40(?:TFXPPD; ?:?);
begin
 006A2E40    push        ebp
 006A2E41    mov         ebp,esp
 006A2E43    add         esp,0FFFFFFF8
 006A2E46    mov         dword ptr [ebp-8],edx
 006A2E49    mov         dword ptr [ebp-4],eax
 006A2E4C    mov         eax,dword ptr [ebp-8]
 006A2E4F    mov         edx,dword ptr [ebp-4]
 006A2E52    cmp         eax,dword ptr [edx+171]
>006A2E58    je          006A2E70
 006A2E5A    mov         eax,dword ptr [ebp-8]
 006A2E5D    mov         edx,dword ptr [ebp-4]
 006A2E60    mov         dword ptr [edx+171],eax
 006A2E66    mov         eax,dword ptr [ebp-4]
 006A2E69    mov         byte ptr [eax+204],1
 006A2E70    pop         ecx
 006A2E71    pop         ecx
 006A2E72    pop         ebp
 006A2E73    ret
end;*}

//006A2E74
function TFXPPD.GetLCFirstLoop(aLC:Byte):Byte;
begin
{*
 006A2E74    push        ebp
 006A2E75    mov         ebp,esp
 006A2E77    add         esp,0FFFFFFF8
 006A2E7A    mov         byte ptr [ebp-5],dl
 006A2E7D    mov         dword ptr [ebp-4],eax
 006A2E80    mov         dl,byte ptr [ebp-5]
 006A2E83    mov         eax,dword ptr [ebp-4]
 006A2E86    call        TFXPPD.GetLCType
 006A2E8B    test        al,al
>006A2E8D    jne         006A2E95
 006A2E8F    mov         byte ptr [ebp-6],0
>006A2E93    jmp         006A2EE6
 006A2E95    mov         al,byte ptr [ebp-5]
 006A2E98    dec         al
>006A2E9A    je          006A2EAA
 006A2E9C    dec         al
>006A2E9E    je          006A2EB8
 006A2EA0    dec         al
>006A2EA2    je          006A2EC6
 006A2EA4    dec         al
>006A2EA6    je          006A2ED4
>006A2EA8    jmp         006A2EE2
 006A2EAA    mov         eax,dword ptr [ebp-4]
 006A2EAD    mov         al,byte ptr [eax+127]
 006A2EB3    mov         byte ptr [ebp-6],al
>006A2EB6    jmp         006A2EE6
 006A2EB8    mov         eax,dword ptr [ebp-4]
 006A2EBB    mov         al,byte ptr [eax+12A]
 006A2EC1    mov         byte ptr [ebp-6],al
>006A2EC4    jmp         006A2EE6
 006A2EC6    mov         eax,dword ptr [ebp-4]
 006A2EC9    mov         al,byte ptr [eax+12D]
 006A2ECF    mov         byte ptr [ebp-6],al
>006A2ED2    jmp         006A2EE6
 006A2ED4    mov         eax,dword ptr [ebp-4]
 006A2ED7    mov         al,byte ptr [eax+130]
 006A2EDD    mov         byte ptr [ebp-6],al
>006A2EE0    jmp         006A2EE6
 006A2EE2    mov         byte ptr [ebp-6],0
 006A2EE6    mov         al,byte ptr [ebp-6]
 006A2EE9    pop         ecx
 006A2EEA    pop         ecx
 006A2EEB    pop         ebp
 006A2EEC    ret
*}
end;

//006A2EF0
function TFXPPD.GetLCLastLoop(aLC:Byte):Byte;
begin
{*
 006A2EF0    push        ebp
 006A2EF1    mov         ebp,esp
 006A2EF3    add         esp,0FFFFFFF8
 006A2EF6    mov         byte ptr [ebp-5],dl
 006A2EF9    mov         dword ptr [ebp-4],eax
 006A2EFC    mov         dl,byte ptr [ebp-5]
 006A2EFF    mov         eax,dword ptr [ebp-4]
 006A2F02    call        TFXPPD.GetLCType
 006A2F07    test        al,al
>006A2F09    jne         006A2F14
 006A2F0B    mov         byte ptr [ebp-6],0
>006A2F0F    jmp         006A301B
 006A2F14    mov         al,byte ptr [ebp-5]
 006A2F17    dec         al
>006A2F19    je          006A2F34
 006A2F1B    dec         al
>006A2F1D    je          006A2F6F
 006A2F1F    dec         al
>006A2F21    je          006A2FA7
 006A2F27    dec         al
>006A2F29    je          006A2FDF
>006A2F2F    jmp         006A3017
 006A2F34    mov         eax,dword ptr [ebp-4]
 006A2F37    movzx       eax,byte ptr [eax+127]
 006A2F3E    mov         edx,dword ptr [ebp-4]
 006A2F41    movzx       edx,byte ptr [edx+128]
 006A2F48    add         eax,edx
>006A2F4A    jno         006A2F51
 006A2F4C    call        @IntOver
 006A2F51    sub         eax,1
>006A2F54    jno         006A2F5B
 006A2F56    call        @IntOver
 006A2F5B    cmp         eax,0FF
>006A2F60    jbe         006A2F67
 006A2F62    call        @BoundErr
 006A2F67    mov         byte ptr [ebp-6],al
>006A2F6A    jmp         006A301B
 006A2F6F    mov         eax,dword ptr [ebp-4]
 006A2F72    movzx       eax,byte ptr [eax+12A]
 006A2F79    mov         edx,dword ptr [ebp-4]
 006A2F7C    movzx       edx,byte ptr [edx+12B]
 006A2F83    add         eax,edx
>006A2F85    jno         006A2F8C
 006A2F87    call        @IntOver
 006A2F8C    sub         eax,1
>006A2F8F    jno         006A2F96
 006A2F91    call        @IntOver
 006A2F96    cmp         eax,0FF
>006A2F9B    jbe         006A2FA2
 006A2F9D    call        @BoundErr
 006A2FA2    mov         byte ptr [ebp-6],al
>006A2FA5    jmp         006A301B
 006A2FA7    mov         eax,dword ptr [ebp-4]
 006A2FAA    movzx       eax,byte ptr [eax+12D]
 006A2FB1    mov         edx,dword ptr [ebp-4]
 006A2FB4    movzx       edx,byte ptr [edx+12E]
 006A2FBB    add         eax,edx
>006A2FBD    jno         006A2FC4
 006A2FBF    call        @IntOver
 006A2FC4    sub         eax,1
>006A2FC7    jno         006A2FCE
 006A2FC9    call        @IntOver
 006A2FCE    cmp         eax,0FF
>006A2FD3    jbe         006A2FDA
 006A2FD5    call        @BoundErr
 006A2FDA    mov         byte ptr [ebp-6],al
>006A2FDD    jmp         006A301B
 006A2FDF    mov         eax,dword ptr [ebp-4]
 006A2FE2    movzx       eax,byte ptr [eax+130]
 006A2FE9    mov         edx,dword ptr [ebp-4]
 006A2FEC    movzx       edx,byte ptr [edx+131]
 006A2FF3    add         eax,edx
>006A2FF5    jno         006A2FFC
 006A2FF7    call        @IntOver
 006A2FFC    sub         eax,1
>006A2FFF    jno         006A3006
 006A3001    call        @IntOver
 006A3006    cmp         eax,0FF
>006A300B    jbe         006A3012
 006A300D    call        @BoundErr
 006A3012    mov         byte ptr [ebp-6],al
>006A3015    jmp         006A301B
 006A3017    mov         byte ptr [ebp-6],0
 006A301B    mov         al,byte ptr [ebp-6]
 006A301E    pop         ecx
 006A301F    pop         ecx
 006A3020    pop         ebp
 006A3021    ret
*}
end;

//006A3024
function TFXPPD.GetLCNumOfLoops(aLC:Byte):Byte;
begin
{*
 006A3024    push        ebp
 006A3025    mov         ebp,esp
 006A3027    add         esp,0FFFFFFF8
 006A302A    mov         byte ptr [ebp-5],dl
 006A302D    mov         dword ptr [ebp-4],eax
 006A3030    mov         dl,byte ptr [ebp-5]
 006A3033    mov         eax,dword ptr [ebp-4]
 006A3036    call        TFXPPD.GetLCType
 006A303B    test        al,al
>006A303D    jne         006A3045
 006A303F    mov         byte ptr [ebp-6],0
>006A3043    jmp         006A3096
 006A3045    mov         al,byte ptr [ebp-5]
 006A3048    dec         al
>006A304A    je          006A305A
 006A304C    dec         al
>006A304E    je          006A3068
 006A3050    dec         al
>006A3052    je          006A3076
 006A3054    dec         al
>006A3056    je          006A3084
>006A3058    jmp         006A3092
 006A305A    mov         eax,dword ptr [ebp-4]
 006A305D    mov         al,byte ptr [eax+128]
 006A3063    mov         byte ptr [ebp-6],al
>006A3066    jmp         006A3096
 006A3068    mov         eax,dword ptr [ebp-4]
 006A306B    mov         al,byte ptr [eax+12B]
 006A3071    mov         byte ptr [ebp-6],al
>006A3074    jmp         006A3096
 006A3076    mov         eax,dword ptr [ebp-4]
 006A3079    mov         al,byte ptr [eax+12E]
 006A307F    mov         byte ptr [ebp-6],al
>006A3082    jmp         006A3096
 006A3084    mov         eax,dword ptr [ebp-4]
 006A3087    mov         al,byte ptr [eax+131]
 006A308D    mov         byte ptr [ebp-6],al
>006A3090    jmp         006A3096
 006A3092    mov         byte ptr [ebp-6],0
 006A3096    mov         al,byte ptr [ebp-6]
 006A3099    pop         ecx
 006A309A    pop         ecx
 006A309B    pop         ebp
 006A309C    ret
*}
end;

//006A30A0
function TFXPPD.GetLCFirstLoopIndex(lc:Byte):Byte;
begin
{*
 006A30A0    push        ebp
 006A30A1    mov         ebp,esp
 006A30A3    add         esp,0FFFFFFF8
 006A30A6    mov         byte ptr [ebp-5],dl
 006A30A9    mov         dword ptr [ebp-4],eax
 006A30AC    mov         al,byte ptr [ebp-5]
 006A30AF    dec         al
>006A30B1    je          006A30C4
 006A30B3    dec         al
>006A30B5    je          006A30CD
 006A30B7    dec         al
>006A30B9    je          006A30DB
 006A30BB    dec         al
>006A30BD    je          006A3109
>006A30BF    jmp         006A314A
 006A30C4    mov         byte ptr [ebp-6],0
>006A30C8    jmp         006A314E
 006A30CD    mov         eax,dword ptr [ebp-4]
 006A30D0    mov         al,byte ptr [eax+128]
 006A30D6    mov         byte ptr [ebp-6],al
>006A30D9    jmp         006A314E
 006A30DB    mov         eax,dword ptr [ebp-4]
 006A30DE    movzx       eax,byte ptr [eax+128]
 006A30E5    mov         edx,dword ptr [ebp-4]
 006A30E8    movzx       edx,byte ptr [edx+12B]
 006A30EF    add         eax,edx
>006A30F1    jno         006A30F8
 006A30F3    call        @IntOver
 006A30F8    cmp         eax,0FF
>006A30FD    jbe         006A3104
 006A30FF    call        @BoundErr
 006A3104    mov         byte ptr [ebp-6],al
>006A3107    jmp         006A314E
 006A3109    mov         eax,dword ptr [ebp-4]
 006A310C    movzx       eax,byte ptr [eax+128]
 006A3113    mov         edx,dword ptr [ebp-4]
 006A3116    movzx       edx,byte ptr [edx+12B]
 006A311D    add         eax,edx
>006A311F    jno         006A3126
 006A3121    call        @IntOver
 006A3126    mov         edx,dword ptr [ebp-4]
 006A3129    movzx       edx,byte ptr [edx+12E]
 006A3130    add         eax,edx
>006A3132    jno         006A3139
 006A3134    call        @IntOver
 006A3139    cmp         eax,0FF
>006A313E    jbe         006A3145
 006A3140    call        @BoundErr
 006A3145    mov         byte ptr [ebp-6],al
>006A3148    jmp         006A314E
 006A314A    mov         byte ptr [ebp-6],0
 006A314E    mov         al,byte ptr [ebp-6]
 006A3151    pop         ecx
 006A3152    pop         ecx
 006A3153    pop         ebp
 006A3154    ret
*}
end;

//006A3158
function TFXPPD.GetLCForLoop(loopindx:Integer):Byte;
begin
{*
 006A3158    push        ebp
 006A3159    mov         ebp,esp
 006A315B    add         esp,0FFFFFFF4
 006A315E    mov         dword ptr [ebp-8],edx
 006A3161    mov         dword ptr [ebp-4],eax
 006A3164    mov         byte ptr [ebp-9],0
 006A3168    mov         eax,dword ptr [ebp-4]
 006A316B    cmp         byte ptr [eax+128],0
>006A3172    je          006A31F0
 006A3174    mov         byte ptr [ebp-9],1
 006A3178    mov         eax,dword ptr [ebp-4]
 006A317B    movzx       eax,byte ptr [eax+128]
 006A3182    sub         dword ptr [ebp-8],eax
>006A3185    jno         006A318C
 006A3187    call        @IntOver
 006A318C    cmp         dword ptr [ebp-8],0
>006A3190    jl          006A31F0
 006A3192    mov         byte ptr [ebp-9],2
 006A3196    mov         eax,dword ptr [ebp-4]
 006A3199    movzx       eax,byte ptr [eax+12B]
 006A31A0    sub         dword ptr [ebp-8],eax
>006A31A3    jno         006A31AA
 006A31A5    call        @IntOver
 006A31AA    cmp         dword ptr [ebp-8],0
>006A31AE    jl          006A31F0
 006A31B0    mov         byte ptr [ebp-9],3
 006A31B4    mov         eax,dword ptr [ebp-4]
 006A31B7    movzx       eax,byte ptr [eax+12E]
 006A31BE    sub         dword ptr [ebp-8],eax
>006A31C1    jno         006A31C8
 006A31C3    call        @IntOver
 006A31C8    cmp         dword ptr [ebp-8],0
>006A31CC    jl          006A31F0
 006A31CE    mov         byte ptr [ebp-9],4
 006A31D2    mov         eax,dword ptr [ebp-4]
 006A31D5    movzx       eax,byte ptr [eax+131]
 006A31DC    sub         dword ptr [ebp-8],eax
>006A31DF    jno         006A31E6
 006A31E1    call        @IntOver
 006A31E6    cmp         dword ptr [ebp-8],0
>006A31EA    jl          006A31F0
 006A31EC    mov         byte ptr [ebp-9],0
 006A31F0    mov         al,byte ptr [ebp-9]
 006A31F3    mov         esp,ebp
 006A31F5    pop         ebp
 006A31F6    ret
*}
end;

//006A31F8
function TFXPPD.GetLoopTypeOfLCType(LCType:Integer):Integer;
begin
{*
 006A31F8    push        ebp
 006A31F9    mov         ebp,esp
 006A31FB    add         esp,0FFFFFFF4
 006A31FE    mov         dword ptr [ebp-8],edx
 006A3201    mov         dword ptr [ebp-4],eax
 006A3204    mov         eax,dword ptr [ebp-8]
 006A3207    sub         eax,0A
>006A320A    jae         006A3225
 006A320C    mov         eax,dword ptr [ebp-8]
 006A320F    cmp         eax,9
>006A3212    jbe         006A3219
 006A3214    call        @BoundErr
 006A3219    movzx       eax,byte ptr [eax+7C29F6]
 006A3220    mov         dword ptr [ebp-0C],eax
>006A3223    jmp         006A322A
 006A3225    xor         eax,eax
 006A3227    mov         dword ptr [ebp-0C],eax
 006A322A    mov         eax,dword ptr [ebp-0C]
 006A322D    mov         esp,ebp
 006A322F    pop         ebp
 006A3230    ret
*}
end;

//006A3234
function TFXPPD.GetControllerLoopType(loopindx:Integer):Integer;
begin
{*
 006A3234    push        ebp
 006A3235    mov         ebp,esp
 006A3237    add         esp,0FFFFFFF0
 006A323A    mov         dword ptr [ebp-8],edx
 006A323D    mov         dword ptr [ebp-4],eax
 006A3240    xor         eax,eax
 006A3242    mov         dword ptr [ebp-0C],eax
 006A3245    mov         byte ptr [ebp-0D],0
 006A3249    mov         byte ptr [ebp-0E],1
 006A324D    mov         al,byte ptr [ebp-0E]
 006A3250    dec         al
>006A3252    je          006A3271
 006A3254    dec         al
>006A3256    je          006A32E0
 006A325C    dec         al
>006A325E    je          006A334F
 006A3264    dec         al
>006A3266    je          006A33B7
>006A326C    jmp         006A3419
 006A3271    xor         eax,eax
 006A3273    mov         al,byte ptr [ebp-0D]
 006A3276    cmp         eax,dword ptr [ebp-8]
>006A3279    jne         006A3291
 006A327B    mov         eax,dword ptr [ebp-4]
 006A327E    xor         edx,edx
 006A3280    mov         dl,byte ptr [eax+126]
 006A3286    mov         eax,dword ptr [ebp-4]
 006A3289    call        TFXPPD.GetLoopTypeOfLCType
 006A328E    mov         dword ptr [ebp-0C],eax
 006A3291    add         byte ptr [ebp-0D],1
>006A3295    jae         006A329C
 006A3297    call        @IntOver
 006A329C    mov         eax,dword ptr [ebp-4]
 006A329F    cmp         byte ptr [eax+128],2
>006A32A6    jne         006A3419
 006A32AC    xor         eax,eax
 006A32AE    mov         al,byte ptr [ebp-0D]
 006A32B1    cmp         eax,dword ptr [ebp-8]
>006A32B4    jne         006A32CC
 006A32B6    mov         eax,dword ptr [ebp-4]
 006A32B9    xor         edx,edx
 006A32BB    mov         dl,byte ptr [eax+126]
 006A32C1    mov         eax,dword ptr [ebp-4]
 006A32C4    call        TFXPPD.GetLoopTypeOfLCType
 006A32C9    mov         dword ptr [ebp-0C],eax
 006A32CC    add         byte ptr [ebp-0D],1
>006A32D0    jae         006A3419
 006A32D6    call        @IntOver
>006A32DB    jmp         006A3419
 006A32E0    xor         eax,eax
 006A32E2    mov         al,byte ptr [ebp-0D]
 006A32E5    cmp         eax,dword ptr [ebp-8]
>006A32E8    jne         006A3300
 006A32EA    mov         eax,dword ptr [ebp-4]
 006A32ED    xor         edx,edx
 006A32EF    mov         dl,byte ptr [eax+129]
 006A32F5    mov         eax,dword ptr [ebp-4]
 006A32F8    call        TFXPPD.GetLoopTypeOfLCType
 006A32FD    mov         dword ptr [ebp-0C],eax
 006A3300    add         byte ptr [ebp-0D],1
>006A3304    jae         006A330B
 006A3306    call        @IntOver
 006A330B    mov         eax,dword ptr [ebp-4]
 006A330E    cmp         byte ptr [eax+12B],2
>006A3315    jne         006A3419
 006A331B    xor         eax,eax
 006A331D    mov         al,byte ptr [ebp-0D]
 006A3320    cmp         eax,dword ptr [ebp-8]
>006A3323    jne         006A333B
 006A3325    mov         eax,dword ptr [ebp-4]
 006A3328    xor         edx,edx
 006A332A    mov         dl,byte ptr [eax+129]
 006A3330    mov         eax,dword ptr [ebp-4]
 006A3333    call        TFXPPD.GetLoopTypeOfLCType
 006A3338    mov         dword ptr [ebp-0C],eax
 006A333B    add         byte ptr [ebp-0D],1
>006A333F    jae         006A3419
 006A3345    call        @IntOver
>006A334A    jmp         006A3419
 006A334F    xor         eax,eax
 006A3351    mov         al,byte ptr [ebp-0D]
 006A3354    cmp         eax,dword ptr [ebp-8]
>006A3357    jne         006A336F
 006A3359    mov         eax,dword ptr [ebp-4]
 006A335C    xor         edx,edx
 006A335E    mov         dl,byte ptr [eax+12C]
 006A3364    mov         eax,dword ptr [ebp-4]
 006A3367    call        TFXPPD.GetLoopTypeOfLCType
 006A336C    mov         dword ptr [ebp-0C],eax
 006A336F    add         byte ptr [ebp-0D],1
>006A3373    jae         006A337A
 006A3375    call        @IntOver
 006A337A    mov         eax,dword ptr [ebp-4]
 006A337D    cmp         byte ptr [eax+12E],2
>006A3384    jne         006A3419
 006A338A    xor         eax,eax
 006A338C    mov         al,byte ptr [ebp-0D]
 006A338F    cmp         eax,dword ptr [ebp-8]
>006A3392    jne         006A33AA
 006A3394    mov         eax,dword ptr [ebp-4]
 006A3397    xor         edx,edx
 006A3399    mov         dl,byte ptr [eax+12C]
 006A339F    mov         eax,dword ptr [ebp-4]
 006A33A2    call        TFXPPD.GetLoopTypeOfLCType
 006A33A7    mov         dword ptr [ebp-0C],eax
 006A33AA    add         byte ptr [ebp-0D],1
>006A33AE    jae         006A3419
 006A33B0    call        @IntOver
>006A33B5    jmp         006A3419
 006A33B7    xor         eax,eax
 006A33B9    mov         al,byte ptr [ebp-0D]
 006A33BC    cmp         eax,dword ptr [ebp-8]
>006A33BF    jne         006A33D7
 006A33C1    mov         eax,dword ptr [ebp-4]
 006A33C4    xor         edx,edx
 006A33C6    mov         dl,byte ptr [eax+12F]
 006A33CC    mov         eax,dword ptr [ebp-4]
 006A33CF    call        TFXPPD.GetLoopTypeOfLCType
 006A33D4    mov         dword ptr [ebp-0C],eax
 006A33D7    add         byte ptr [ebp-0D],1
>006A33DB    jae         006A33E2
 006A33DD    call        @IntOver
 006A33E2    mov         eax,dword ptr [ebp-4]
 006A33E5    cmp         byte ptr [eax+131],2
>006A33EC    jne         006A3419
 006A33EE    xor         eax,eax
 006A33F0    mov         al,byte ptr [ebp-0D]
 006A33F3    cmp         eax,dword ptr [ebp-8]
>006A33F6    jne         006A340E
 006A33F8    mov         eax,dword ptr [ebp-4]
 006A33FB    xor         edx,edx
 006A33FD    mov         dl,byte ptr [eax+12F]
 006A3403    mov         eax,dword ptr [ebp-4]
 006A3406    call        TFXPPD.GetLoopTypeOfLCType
 006A340B    mov         dword ptr [ebp-0C],eax
 006A340E    add         byte ptr [ebp-0D],1
>006A3412    jae         006A3419
 006A3414    call        @IntOver
 006A3419    inc         byte ptr [ebp-0E]
 006A341C    cmp         byte ptr [ebp-0E],5
>006A3420    jne         006A324D
 006A3426    mov         eax,dword ptr [ebp-0C]
 006A3429    mov         esp,ebp
 006A342B    pop         ebp
 006A342C    ret
*}
end;

//006A3430
{*function sub_006A3430(?:TFXPPD):?;
begin
 006A3430    push        ebp
 006A3431    mov         ebp,esp
 006A3433    add         esp,0FFFFFFF8
 006A3436    mov         dword ptr [ebp-4],eax
 006A3439    mov         eax,dword ptr [ebp-4]
 006A343C    mov         al,byte ptr [eax+127]
 006A3442    mov         byte ptr [ebp-5],al
 006A3445    mov         al,byte ptr [ebp-5]
 006A3448    pop         ecx
 006A3449    pop         ecx
 006A344A    pop         ebp
 006A344B    ret
end;*}

//006A344C
{*function sub_006A344C(?:TFXPPD):?;
begin
 006A344C    push        ebp
 006A344D    mov         ebp,esp
 006A344F    add         esp,0FFFFFFF8
 006A3452    mov         dword ptr [ebp-4],eax
 006A3455    mov         eax,dword ptr [ebp-4]
 006A3458    movzx       eax,byte ptr [eax+128]
 006A345F    mov         edx,dword ptr [ebp-4]
 006A3462    movzx       edx,byte ptr [edx+12B]
 006A3469    add         eax,edx
>006A346B    jno         006A3472
 006A346D    call        @IntOver
 006A3472    mov         edx,dword ptr [ebp-4]
 006A3475    movzx       edx,byte ptr [edx+12E]
 006A347C    add         eax,edx
>006A347E    jno         006A3485
 006A3480    call        @IntOver
 006A3485    mov         edx,dword ptr [ebp-4]
 006A3488    movzx       edx,byte ptr [edx+131]
 006A348F    add         eax,edx
>006A3491    jno         006A3498
 006A3493    call        @IntOver
 006A3498    cmp         eax,0FF
>006A349D    jbe         006A34A4
 006A349F    call        @BoundErr
 006A34A4    mov         byte ptr [ebp-5],al
 006A34A7    mov         al,byte ptr [ebp-5]
 006A34AA    pop         ecx
 006A34AB    pop         ecx
 006A34AC    pop         ebp
 006A34AD    ret
end;*}

//006A34B0
{*function sub_006A34B0(?:TFXPPD):?;
begin
 006A34B0    push        ebp
 006A34B1    mov         ebp,esp
 006A34B3    add         esp,0FFFFFFF4
 006A34B6    mov         dword ptr [ebp-4],eax
 006A34B9    mov         eax,dword ptr [ebp-4]
 006A34BC    call        006A344C
 006A34C1    and         eax,0FF
 006A34C6    mov         edx,dword ptr [ebp-4]
 006A34C9    movzx       edx,byte ptr [edx+127]
 006A34D0    add         eax,edx
>006A34D2    jno         006A34D9
 006A34D4    call        @IntOver
 006A34D9    sub         eax,1
>006A34DC    jno         006A34E3
 006A34DE    call        @IntOver
 006A34E3    mov         dword ptr [ebp-0C],eax
 006A34E6    cmp         dword ptr [ebp-0C],0
>006A34EA    jge         006A34F1
 006A34EC    xor         eax,eax
 006A34EE    mov         dword ptr [ebp-0C],eax
 006A34F1    mov         eax,dword ptr [ebp-0C]
 006A34F4    cmp         eax,0FF
>006A34F9    jbe         006A3500
 006A34FB    call        @BoundErr
 006A3500    mov         byte ptr [ebp-5],al
 006A3503    mov         al,byte ptr [ebp-5]
 006A3506    mov         esp,ebp
 006A3508    pop         ebp
 006A3509    ret
end;*}

//006A350C
{*function sub_006A350C(?:?):?;
begin
 006A350C    push        ebp
 006A350D    mov         ebp,esp
 006A350F    add         esp,0FFFFFFF4
 006A3512    mov         dword ptr [ebp-4],eax
 006A3515    xor         eax,eax
 006A3517    mov         dword ptr [ebp-8],eax
 006A351A    xor         eax,eax
 006A351C    mov         dword ptr [ebp-0C],eax
 006A351F    mov         edx,dword ptr [ebp-0C]
 006A3522    mov         eax,dword ptr [ebp-4]
 006A3525    call        TFXPPD.GetControllerLoopType
 006A352A    cmp         eax,6
>006A352D    ja          006A35A7
 006A352F    jmp         dword ptr [eax*4+6A3536]
 006A352F    dd          006A35A7
 006A352F    dd          006A3552
 006A352F    dd          006A3562
 006A352F    dd          006A356F
 006A352F    dd          006A357C
 006A352F    dd          006A358C
 006A352F    dd          006A3599
 006A3552    add         dword ptr [ebp-8],0C6
>006A3559    jno         006A35A7
 006A355B    call        @IntOver
>006A3560    jmp         006A35A7
 006A3562    add         dword ptr [ebp-8],10
>006A3566    jno         006A35A7
 006A3568    call        @IntOver
>006A356D    jmp         006A35A7
 006A356F    add         dword ptr [ebp-8],7E
>006A3573    jno         006A35A7
 006A3575    call        @IntOver
>006A357A    jmp         006A35A7
 006A357C    add         dword ptr [ebp-8],13E
>006A3583    jno         006A35A7
 006A3585    call        @IntOver
>006A358A    jmp         006A35A7
 006A358C    add         dword ptr [ebp-8],7E
>006A3590    jno         006A35A7
 006A3592    call        @IntOver
>006A3597    jmp         006A35A7
 006A3599    add         dword ptr [ebp-8],9F
>006A35A0    jno         006A35A7
 006A35A2    call        @IntOver
 006A35A7    inc         dword ptr [ebp-0C]
 006A35AA    cmp         dword ptr [ebp-0C],8
>006A35AE    jne         006A351F
 006A35B4    mov         eax,dword ptr [ebp-8]
 006A35B7    mov         esp,ebp
 006A35B9    pop         ebp
 006A35BA    ret
end;*}

//006A35BC
function TFXPPD.GetAlcStartupDelay(LC:Integer; Line:Integer):Byte;
begin
{*
 006A35BC    push        ebp
 006A35BD    mov         ebp,esp
 006A35BF    add         esp,0FFFFFFF0
 006A35C2    mov         dword ptr [ebp-0C],ecx
 006A35C5    mov         dword ptr [ebp-8],edx
 006A35C8    mov         dword ptr [ebp-4],eax
 006A35CB    mov         eax,dword ptr [ebp-0C]
 006A35CE    dec         eax
 006A35CF    cmp         eax,1
>006A35D2    jbe         006A35D9
 006A35D4    call        @BoundErr
 006A35D9    inc         eax
 006A35DA    mov         edx,dword ptr [ebp-8]
 006A35DD    dec         edx
 006A35DE    cmp         edx,3
>006A35E1    jbe         006A35E8
 006A35E3    call        @BoundErr
 006A35E8    inc         edx
 006A35E9    mov         ecx,dword ptr [ebp-4]
 006A35EC    lea         edx,[ecx+edx*2]
 006A35EF    mov         al,byte ptr [edx+eax+12F]
 006A35F6    mov         byte ptr [ebp-0D],al
 006A35F9    mov         al,byte ptr [ebp-0D]
 006A35FC    mov         esp,ebp
 006A35FE    pop         ebp
 006A35FF    ret
*}
end;

//006A3600
function TFXPPD.GetAlcStartupDelayAllowed(LC:Integer; Line:Integer):Boolean;
begin
{*
 006A3600    push        ebp
 006A3601    mov         ebp,esp
 006A3603    add         esp,0FFFFFFF0
 006A3606    mov         dword ptr [ebp-0C],ecx
 006A3609    mov         dword ptr [ebp-8],edx
 006A360C    mov         dword ptr [ebp-4],eax
 006A360F    imul        eax,dword ptr [ebp-8],0A
>006A3613    jno         006A361A
 006A3615    call        @IntOver
 006A361A    add         eax,dword ptr [ebp-0C]
>006A361D    jno         006A3624
 006A361F    call        @IntOver
 006A3624    add         eax,0FFFFFFF5
 006A3627    cmp         eax,1F
>006A362A    ja          006A37D4
 006A3630    mov         al,byte ptr [eax+6A363D]
 006A3636    jmp         dword ptr [eax*4+6A365D]
 006A3636    db          1
 006A3636    db          2
 006A3636    db          0
 006A3636    db          0
 006A3636    db          0
 006A3636    db          0
 006A3636    db          0
 006A3636    db          0
 006A3636    db          0
 006A3636    db          0
 006A3636    db          3
 006A3636    db          4
 006A3636    db          0
 006A3636    db          0
 006A3636    db          0
 006A3636    db          0
 006A3636    db          0
 006A3636    db          0
 006A3636    db          0
 006A3636    db          0
 006A3636    db          5
 006A3636    db          6
 006A3636    db          0
 006A3636    db          0
 006A3636    db          0
 006A3636    db          0
 006A3636    db          0
 006A3636    db          0
 006A3636    db          0
 006A3636    db          0
 006A3636    db          7
 006A3636    db          8
 006A3636    dd          006A37D4
 006A3636    dd          006A3681
 006A3636    dd          006A36BD
 006A3636    dd          006A36E1
 006A3636    dd          006A3711
 006A3636    dd          006A3735
 006A3636    dd          006A3765
 006A3636    dd          006A3786
 006A3636    dd          006A37B3
 006A3681    mov         eax,[007C4B34];^gvar_007CA843
 006A3686    cmp         byte ptr [eax],0
>006A3689    je          006A36AF
 006A368B    mov         eax,dword ptr [ebp-4]
 006A368E    cmp         byte ptr [eax+126],4
>006A3695    je          006A36B3
 006A3697    mov         eax,dword ptr [ebp-4]
 006A369A    cmp         byte ptr [eax+126],5
>006A36A1    je          006A36B3
 006A36A3    mov         eax,dword ptr [ebp-4]
 006A36A6    cmp         byte ptr [eax+126],8
>006A36AD    je          006A36B3
 006A36AF    xor         eax,eax
>006A36B1    jmp         006A36B5
 006A36B3    mov         al,1
 006A36B5    mov         byte ptr [ebp-0D],al
>006A36B8    jmp         006A37EA
 006A36BD    mov         eax,[007C4B34];^gvar_007CA843
 006A36C2    cmp         byte ptr [eax],0
>006A36C5    je          006A36D3
 006A36C7    mov         eax,dword ptr [ebp-4]
 006A36CA    cmp         byte ptr [eax+126],4
>006A36D1    je          006A36D7
 006A36D3    xor         eax,eax
>006A36D5    jmp         006A36D9
 006A36D7    mov         al,1
 006A36D9    mov         byte ptr [ebp-0D],al
>006A36DC    jmp         006A37EA
 006A36E1    mov         eax,[007C4B34];^gvar_007CA843
 006A36E6    cmp         byte ptr [eax],0
>006A36E9    je          006A3703
 006A36EB    mov         eax,dword ptr [ebp-4]
 006A36EE    cmp         byte ptr [eax+129],4
>006A36F5    je          006A3707
 006A36F7    mov         eax,dword ptr [ebp-4]
 006A36FA    cmp         byte ptr [eax+129],5
>006A3701    je          006A3707
 006A3703    xor         eax,eax
>006A3705    jmp         006A3709
 006A3707    mov         al,1
 006A3709    mov         byte ptr [ebp-0D],al
>006A370C    jmp         006A37EA
 006A3711    mov         eax,[007C4B34];^gvar_007CA843
 006A3716    cmp         byte ptr [eax],0
>006A3719    je          006A3727
 006A371B    mov         eax,dword ptr [ebp-4]
 006A371E    cmp         byte ptr [eax+129],4
>006A3725    je          006A372B
 006A3727    xor         eax,eax
>006A3729    jmp         006A372D
 006A372B    mov         al,1
 006A372D    mov         byte ptr [ebp-0D],al
>006A3730    jmp         006A37EA
 006A3735    mov         eax,[007C4B34];^gvar_007CA843
 006A373A    cmp         byte ptr [eax],0
>006A373D    je          006A3757
 006A373F    mov         eax,dword ptr [ebp-4]
 006A3742    cmp         byte ptr [eax+12C],4
>006A3749    je          006A375B
 006A374B    mov         eax,dword ptr [ebp-4]
 006A374E    cmp         byte ptr [eax+12C],5
>006A3755    je          006A375B
 006A3757    xor         eax,eax
>006A3759    jmp         006A375D
 006A375B    mov         al,1
 006A375D    mov         byte ptr [ebp-0D],al
>006A3760    jmp         006A37EA
 006A3765    mov         eax,[007C4B34];^gvar_007CA843
 006A376A    cmp         byte ptr [eax],0
>006A376D    je          006A377B
 006A376F    mov         eax,dword ptr [ebp-4]
 006A3772    cmp         byte ptr [eax+12C],4
>006A3779    je          006A377F
 006A377B    xor         eax,eax
>006A377D    jmp         006A3781
 006A377F    mov         al,1
 006A3781    mov         byte ptr [ebp-0D],al
>006A3784    jmp         006A37EA
 006A3786    mov         eax,[007C4B34];^gvar_007CA843
 006A378B    cmp         byte ptr [eax],0
>006A378E    je          006A37A8
 006A3790    mov         eax,dword ptr [ebp-4]
 006A3793    cmp         byte ptr [eax+12F],4
>006A379A    je          006A37AC
 006A379C    mov         eax,dword ptr [ebp-4]
 006A379F    cmp         byte ptr [eax+12F],5
>006A37A6    je          006A37AC
 006A37A8    xor         eax,eax
>006A37AA    jmp         006A37AE
 006A37AC    mov         al,1
 006A37AE    mov         byte ptr [ebp-0D],al
>006A37B1    jmp         006A37EA
 006A37B3    mov         eax,[007C4B34];^gvar_007CA843
 006A37B8    cmp         byte ptr [eax],0
>006A37BB    je          006A37C9
 006A37BD    mov         eax,dword ptr [ebp-4]
 006A37C0    cmp         byte ptr [eax+12F],4
>006A37C7    je          006A37CD
 006A37C9    xor         eax,eax
>006A37CB    jmp         006A37CF
 006A37CD    mov         al,1
 006A37CF    mov         byte ptr [ebp-0D],al
>006A37D2    jmp         006A37EA
 006A37D4    mov         ecx,6A3800;'Implementation error
Invalid arguments in fn AlcStartupDelayAllowed'
 006A37D9    mov         dl,1
 006A37DB    mov         eax,[004174D0];Exception
 006A37E0    call        Exception.Create;Exception.Create
 006A37E5    call        @RaiseExcept
 006A37EA    mov         al,byte ptr [ebp-0D]
 006A37ED    mov         esp,ebp
 006A37EF    pop         ebp
 006A37F0    ret
*}
end;

//006A388C
function TFXPPD.GetLCType(aLC:Byte):Byte;
begin
{*
 006A388C    push        ebp
 006A388D    mov         ebp,esp
 006A388F    add         esp,0FFFFFFF8
 006A3892    mov         byte ptr [ebp-5],dl
 006A3895    mov         dword ptr [ebp-4],eax
 006A3898    mov         al,byte ptr [ebp-5]
 006A389B    dec         al
>006A389D    je          006A38AD
 006A389F    dec         al
>006A38A1    je          006A38BB
 006A38A3    dec         al
>006A38A5    je          006A38C9
 006A38A7    dec         al
>006A38A9    je          006A38D7
>006A38AB    jmp         006A38E5
 006A38AD    mov         eax,dword ptr [ebp-4]
 006A38B0    mov         al,byte ptr [eax+126]
 006A38B6    mov         byte ptr [ebp-6],al
>006A38B9    jmp         006A38E9
 006A38BB    mov         eax,dword ptr [ebp-4]
 006A38BE    mov         al,byte ptr [eax+129]
 006A38C4    mov         byte ptr [ebp-6],al
>006A38C7    jmp         006A38E9
 006A38C9    mov         eax,dword ptr [ebp-4]
 006A38CC    mov         al,byte ptr [eax+12C]
 006A38D2    mov         byte ptr [ebp-6],al
>006A38D5    jmp         006A38E9
 006A38D7    mov         eax,dword ptr [ebp-4]
 006A38DA    mov         al,byte ptr [eax+12F]
 006A38E0    mov         byte ptr [ebp-6],al
>006A38E3    jmp         006A38E9
 006A38E5    mov         byte ptr [ebp-6],0
 006A38E9    mov         al,byte ptr [ebp-6]
 006A38EC    pop         ecx
 006A38ED    pop         ecx
 006A38EE    pop         ebp
 006A38EF    ret
*}
end;

//006A38F0
{*procedure sub_006A38F0(?:?; ?:?; ?:?);
begin
 006A38F0    push        ebp
 006A38F1    mov         ebp,esp
 006A38F3    push        ecx
 006A38F4    mov         byte ptr [ebp-2],dl
 006A38F7    mov         byte ptr [ebp-1],al
 006A38FA    mov         al,byte ptr [ebp-1]
 006A38FD    dec         al
>006A38FF    je          006A391A
 006A3901    dec         al
>006A3903    je          006A3957
 006A3905    dec         al
>006A3907    je          006A3991
 006A390D    dec         al
>006A390F    je          006A39CB
>006A3915    jmp         006A3A30
 006A391A    mov         eax,dword ptr [ebp+8]
 006A391D    mov         eax,dword ptr [eax-4]
 006A3920    mov         dl,byte ptr [ebp-2]
 006A3923    mov         byte ptr [eax+126],dl
 006A3929    mov         eax,dword ptr [ebp+8]
 006A392C    mov         eax,dword ptr [eax-4]
 006A392F    movzx       eax,byte ptr [eax+126]
 006A3936    cmp         eax,9
>006A3939    jbe         006A3940
 006A393B    call        @BoundErr
 006A3940    mov         al,byte ptr [eax+7C29EC]
 006A3946    mov         edx,dword ptr [ebp+8]
 006A3949    mov         edx,dword ptr [edx-4]
 006A394C    mov         byte ptr [edx+128],al
>006A3952    jmp         006A3A03
 006A3957    mov         eax,dword ptr [ebp+8]
 006A395A    mov         eax,dword ptr [eax-4]
 006A395D    mov         dl,byte ptr [ebp-2]
 006A3960    mov         byte ptr [eax+129],dl
 006A3966    mov         eax,dword ptr [ebp+8]
 006A3969    mov         eax,dword ptr [eax-4]
 006A396C    movzx       eax,byte ptr [eax+129]
 006A3973    cmp         eax,9
>006A3976    jbe         006A397D
 006A3978    call        @BoundErr
 006A397D    mov         al,byte ptr [eax+7C29EC]
 006A3983    mov         edx,dword ptr [ebp+8]
 006A3986    mov         edx,dword ptr [edx-4]
 006A3989    mov         byte ptr [edx+12B],al
>006A398F    jmp         006A3A03
 006A3991    mov         eax,dword ptr [ebp+8]
 006A3994    mov         eax,dword ptr [eax-4]
 006A3997    mov         dl,byte ptr [ebp-2]
 006A399A    mov         byte ptr [eax+12C],dl
 006A39A0    mov         eax,dword ptr [ebp+8]
 006A39A3    mov         eax,dword ptr [eax-4]
 006A39A6    movzx       eax,byte ptr [eax+12C]
 006A39AD    cmp         eax,9
>006A39B0    jbe         006A39B7
 006A39B2    call        @BoundErr
 006A39B7    mov         al,byte ptr [eax+7C29EC]
 006A39BD    mov         edx,dword ptr [ebp+8]
 006A39C0    mov         edx,dword ptr [edx-4]
 006A39C3    mov         byte ptr [edx+12E],al
>006A39C9    jmp         006A3A03
 006A39CB    mov         eax,dword ptr [ebp+8]
 006A39CE    mov         eax,dword ptr [eax-4]
 006A39D1    mov         dl,byte ptr [ebp-2]
 006A39D4    mov         byte ptr [eax+12F],dl
 006A39DA    mov         eax,dword ptr [ebp+8]
 006A39DD    mov         eax,dword ptr [eax-4]
 006A39E0    movzx       eax,byte ptr [eax+12F]
 006A39E7    cmp         eax,9
>006A39EA    jbe         006A39F1
 006A39EC    call        @BoundErr
 006A39F1    mov         al,byte ptr [eax+7C29EC]
 006A39F7    mov         edx,dword ptr [ebp+8]
 006A39FA    mov         edx,dword ptr [edx-4]
 006A39FD    mov         byte ptr [edx+131],al
 006A3A03    cmp         byte ptr [ebp-2],0
>006A3A07    jne         006A3A30
 006A3A09    mov         eax,dword ptr [ebp+8]
 006A3A0C    push        eax
 006A3A0D    xor         eax,eax
 006A3A0F    mov         al,byte ptr [ebp-1]
 006A3A12    add         eax,1
>006A3A15    jno         006A3A1C
 006A3A17    call        @IntOver
 006A3A1C    cmp         eax,0FF
>006A3A21    jbe         006A3A28
 006A3A23    call        @BoundErr
 006A3A28    xor         edx,edx
 006A3A2A    call        006A38F0
 006A3A2F    pop         ecx
 006A3A30    pop         ecx
 006A3A31    pop         ebp
 006A3A32    ret
end;*}

//006A3A34
procedure TFXPPD.SetLCType(aLC:Byte; aLCType:Byte);
begin
{*
 006A3A34    push        ebp
 006A3A35    mov         ebp,esp
 006A3A37    add         esp,0FFFFFFF8
 006A3A3A    mov         byte ptr [ebp-6],cl
 006A3A3D    mov         byte ptr [ebp-5],dl
 006A3A40    mov         dword ptr [ebp-4],eax
 006A3A43    mov         al,byte ptr [ebp-5]
 006A3A46    dec         al
>006A3A48    je          006A3A58
 006A3A4A    dec         al
>006A3A4C    je          006A3A6C
 006A3A4E    dec         al
>006A3A50    je          006A3A80
 006A3A52    dec         al
>006A3A54    je          006A3A94
>006A3A56    jmp         006A3AA6
 006A3A58    mov         eax,dword ptr [ebp-4]
 006A3A5B    mov         al,byte ptr [eax+126]
 006A3A61    cmp         al,byte ptr [ebp-6]
>006A3A64    je          006A3B32
>006A3A6A    jmp         006A3AA6
 006A3A6C    mov         eax,dword ptr [ebp-4]
 006A3A6F    mov         al,byte ptr [eax+129]
 006A3A75    cmp         al,byte ptr [ebp-6]
>006A3A78    je          006A3B32
>006A3A7E    jmp         006A3AA6
 006A3A80    mov         eax,dword ptr [ebp-4]
 006A3A83    mov         al,byte ptr [eax+12C]
 006A3A89    cmp         al,byte ptr [ebp-6]
>006A3A8C    je          006A3B32
>006A3A92    jmp         006A3AA6
 006A3A94    mov         eax,dword ptr [ebp-4]
 006A3A97    mov         al,byte ptr [eax+12F]
 006A3A9D    cmp         al,byte ptr [ebp-6]
>006A3AA0    je          006A3B32
 006A3AA6    push        ebp
 006A3AA7    mov         dl,byte ptr [ebp-6]
 006A3AAA    mov         al,byte ptr [ebp-5]
 006A3AAD    call        006A38F0
 006A3AB2    pop         ecx
 006A3AB3    mov         eax,dword ptr [ebp-4]
 006A3AB6    mov         dl,byte ptr [eax+127]
 006A3ABC    mov         eax,dword ptr [ebp-4]
 006A3ABF    call        006A3B38
 006A3AC4    xor         edx,edx
 006A3AC6    mov         dl,byte ptr [ebp-5]
 006A3AC9    mov         ecx,1
 006A3ACE    mov         eax,dword ptr [ebp-4]
 006A3AD1    call        TFXPPD.GetAlcStartupDelayAllowed
 006A3AD6    test        al,al
>006A3AD8    jne         006A3AF6
 006A3ADA    xor         eax,eax
 006A3ADC    mov         al,byte ptr [ebp-5]
 006A3ADF    dec         eax
 006A3AE0    cmp         eax,3
>006A3AE3    jbe         006A3AEA
 006A3AE5    call        @BoundErr
 006A3AEA    inc         eax
 006A3AEB    mov         edx,dword ptr [ebp-4]
 006A3AEE    mov         byte ptr [edx+eax*2+130],0
 006A3AF6    xor         edx,edx
 006A3AF8    mov         dl,byte ptr [ebp-5]
 006A3AFB    mov         ecx,2
 006A3B00    mov         eax,dword ptr [ebp-4]
 006A3B03    call        TFXPPD.GetAlcStartupDelayAllowed
 006A3B08    test        al,al
>006A3B0A    jne         006A3B28
 006A3B0C    xor         eax,eax
 006A3B0E    mov         al,byte ptr [ebp-5]
 006A3B11    dec         eax
 006A3B12    cmp         eax,3
>006A3B15    jbe         006A3B1C
 006A3B17    call        @BoundErr
 006A3B1C    inc         eax
 006A3B1D    mov         edx,dword ptr [ebp-4]
 006A3B20    mov         byte ptr [edx+eax*2+131],0
 006A3B28    mov         eax,dword ptr [ebp-4]
 006A3B2B    mov         byte ptr [eax+204],1;TFXPPD.FModified:Boolean
 006A3B32    pop         ecx
 006A3B33    pop         ecx
 006A3B34    pop         ebp
 006A3B35    ret
*}
end;

//006A3B38
procedure sub_006A3B38(?:TFXPPD; ?:LongInt);
begin
{*
 006A3B38    push        ebp
 006A3B39    mov         ebp,esp
 006A3B3B    add         esp,0FFFFFFF8
 006A3B3E    mov         byte ptr [ebp-5],dl
 006A3B41    mov         dword ptr [ebp-4],eax
 006A3B44    mov         eax,dword ptr [ebp-4]
 006A3B47    call        006A344C
 006A3B4C    and         eax,0FF
 006A3B51    mov         edx,0FA
 006A3B56    sub         edx,eax
>006A3B58    jno         006A3B5F
 006A3B5A    call        @IntOver
 006A3B5F    add         edx,1
>006A3B62    jno         006A3B69
 006A3B64    call        @IntOver
 006A3B69    cmp         edx,0FF
>006A3B6F    jbe         006A3B76
 006A3B71    call        @BoundErr
 006A3B76    mov         byte ptr [ebp-6],dl
 006A3B79    mov         eax,dword ptr [ebp-4]
 006A3B7C    cmp         byte ptr [eax+126],0
>006A3B83    jne         006A3B91
 006A3B85    mov         eax,dword ptr [ebp-4]
 006A3B88    mov         byte ptr [eax+127],0
>006A3B8F    jmp         006A3BD1
 006A3B91    mov         al,byte ptr [ebp-6]
 006A3B94    cmp         al,byte ptr [ebp-5]
>006A3B97    jae         006A3BA7
 006A3B99    mov         al,byte ptr [ebp-6]
 006A3B9C    mov         edx,dword ptr [ebp-4]
 006A3B9F    mov         byte ptr [edx+127],al
>006A3BA5    jmp         006A3BD1
 006A3BA7    cmp         byte ptr [ebp-5],1
>006A3BAB    jae         006A3BC5
 006A3BAD    mov         eax,dword ptr [ebp-4]
 006A3BB0    cmp         byte ptr [eax+126],0
>006A3BB7    je          006A3BC5
 006A3BB9    mov         eax,dword ptr [ebp-4]
 006A3BBC    mov         byte ptr [eax+127],1
>006A3BC3    jmp         006A3BD1
 006A3BC5    mov         al,byte ptr [ebp-5]
 006A3BC8    mov         edx,dword ptr [ebp-4]
 006A3BCB    mov         byte ptr [edx+127],al
 006A3BD1    mov         eax,dword ptr [ebp-4]
 006A3BD4    cmp         byte ptr [eax+129],0
>006A3BDB    jne         006A3BE9
 006A3BDD    mov         eax,dword ptr [ebp-4]
 006A3BE0    mov         byte ptr [eax+12A],0
>006A3BE7    jmp         006A3C1B
 006A3BE9    mov         eax,dword ptr [ebp-4]
 006A3BEC    movzx       eax,byte ptr [eax+127]
 006A3BF3    mov         edx,dword ptr [ebp-4]
 006A3BF6    movzx       edx,byte ptr [edx+128]
 006A3BFD    add         eax,edx
>006A3BFF    jno         006A3C06
 006A3C01    call        @IntOver
 006A3C06    cmp         eax,0FF
>006A3C0B    jbe         006A3C12
 006A3C0D    call        @BoundErr
 006A3C12    mov         edx,dword ptr [ebp-4]
 006A3C15    mov         byte ptr [edx+12A],al
 006A3C1B    mov         eax,dword ptr [ebp-4]
 006A3C1E    cmp         byte ptr [eax+12C],0
>006A3C25    jne         006A3C33
 006A3C27    mov         eax,dword ptr [ebp-4]
 006A3C2A    mov         byte ptr [eax+12D],0
>006A3C31    jmp         006A3C65
 006A3C33    mov         eax,dword ptr [ebp-4]
 006A3C36    movzx       eax,byte ptr [eax+12A]
 006A3C3D    mov         edx,dword ptr [ebp-4]
 006A3C40    movzx       edx,byte ptr [edx+12B]
 006A3C47    add         eax,edx
>006A3C49    jno         006A3C50
 006A3C4B    call        @IntOver
 006A3C50    cmp         eax,0FF
>006A3C55    jbe         006A3C5C
 006A3C57    call        @BoundErr
 006A3C5C    mov         edx,dword ptr [ebp-4]
 006A3C5F    mov         byte ptr [edx+12D],al
 006A3C65    mov         eax,dword ptr [ebp-4]
 006A3C68    cmp         byte ptr [eax+12F],0
>006A3C6F    jne         006A3C7D
 006A3C71    mov         eax,dword ptr [ebp-4]
 006A3C74    mov         byte ptr [eax+130],0
>006A3C7B    jmp         006A3CAF
 006A3C7D    mov         eax,dword ptr [ebp-4]
 006A3C80    movzx       eax,byte ptr [eax+12D]
 006A3C87    mov         edx,dword ptr [ebp-4]
 006A3C8A    movzx       edx,byte ptr [edx+12E]
 006A3C91    add         eax,edx
>006A3C93    jno         006A3C9A
 006A3C95    call        @IntOver
 006A3C9A    cmp         eax,0FF
>006A3C9F    jbe         006A3CA6
 006A3CA1    call        @BoundErr
 006A3CA6    mov         edx,dword ptr [ebp-4]
 006A3CA9    mov         byte ptr [edx+130],al
 006A3CAF    pop         ecx
 006A3CB0    pop         ecx
 006A3CB1    pop         ebp
 006A3CB2    ret
*}
end;

//006A3CB4
procedure TFXPPD.SetAlcStartupDelay(LC:Integer; Line:Integer; Value:Byte);
begin
{*
 006A3CB4    push        ebp
 006A3CB5    mov         ebp,esp
 006A3CB7    add         esp,0FFFFFFF4
 006A3CBA    mov         dword ptr [ebp-0C],ecx
 006A3CBD    mov         dword ptr [ebp-8],edx
 006A3CC0    mov         dword ptr [ebp-4],eax
 006A3CC3    mov         eax,dword ptr [ebp-0C]
 006A3CC6    dec         eax
 006A3CC7    cmp         eax,1
>006A3CCA    jbe         006A3CD1
 006A3CCC    call        @BoundErr
 006A3CD1    inc         eax
 006A3CD2    mov         edx,dword ptr [ebp-8]
 006A3CD5    dec         edx
 006A3CD6    cmp         edx,3
>006A3CD9    jbe         006A3CE0
 006A3CDB    call        @BoundErr
 006A3CE0    inc         edx
 006A3CE1    mov         ecx,dword ptr [ebp-4]
 006A3CE4    lea         edx,[ecx+edx*2]
 006A3CE7    mov         al,byte ptr [edx+eax+12F]
 006A3CEE    cmp         al,byte ptr [ebp+8]
>006A3CF1    je          006A3D2B
 006A3CF3    mov         eax,dword ptr [ebp-0C]
 006A3CF6    dec         eax
 006A3CF7    cmp         eax,1
>006A3CFA    jbe         006A3D01
 006A3CFC    call        @BoundErr
 006A3D01    inc         eax
 006A3D02    mov         edx,dword ptr [ebp-8]
 006A3D05    dec         edx
 006A3D06    cmp         edx,3
>006A3D09    jbe         006A3D10
 006A3D0B    call        @BoundErr
 006A3D10    inc         edx
 006A3D11    mov         ecx,dword ptr [ebp-4]
 006A3D14    lea         edx,[ecx+edx*2]
 006A3D17    mov         cl,byte ptr [ebp+8]
 006A3D1A    mov         byte ptr [edx+eax+12F],cl
 006A3D21    mov         eax,dword ptr [ebp-4]
 006A3D24    mov         byte ptr [eax+204],1;TFXPPD.FModified:Boolean
 006A3D2B    mov         esp,ebp
 006A3D2D    pop         ebp
 006A3D2E    ret         4
*}
end;

//006A3D34
function TFXPPD.IsApoStartDelayConfigured:Boolean;
begin
{*
 006A3D34    push        ebp
 006A3D35    mov         ebp,esp
 006A3D37    add         esp,0FFFFFFF0
 006A3D3A    mov         dword ptr [ebp-4],eax
 006A3D3D    mov         dword ptr [ebp-0C],1
 006A3D44    mov         dword ptr [ebp-10],1
 006A3D4B    mov         eax,dword ptr [ebp-0C]
 006A3D4E    dec         eax
 006A3D4F    cmp         eax,3
>006A3D52    jbe         006A3D59
 006A3D54    call        @BoundErr
 006A3D59    inc         eax
 006A3D5A    mov         edx,dword ptr [ebp-4]
 006A3D5D    lea         eax,[edx+eax*2]
 006A3D60    mov         edx,dword ptr [ebp-10]
 006A3D63    dec         edx
 006A3D64    cmp         edx,1
>006A3D67    jbe         006A3D6E
 006A3D69    call        @BoundErr
 006A3D6E    inc         edx
 006A3D6F    cmp         byte ptr [eax+edx+12F],0
>006A3D77    je          006A3D7F
 006A3D79    mov         byte ptr [ebp-5],1
>006A3D7D    jmp         006A3D95
 006A3D7F    inc         dword ptr [ebp-10]
 006A3D82    cmp         dword ptr [ebp-10],3
>006A3D86    jne         006A3D4B
 006A3D88    inc         dword ptr [ebp-0C]
 006A3D8B    cmp         dword ptr [ebp-0C],5
>006A3D8F    jne         006A3D44
 006A3D91    mov         byte ptr [ebp-5],0
 006A3D95    mov         al,byte ptr [ebp-5]
 006A3D98    mov         esp,ebp
 006A3D9A    pop         ebp
 006A3D9B    ret
*}
end;

//006A3D9C
function TFXPPD.GetConvertSysToSap(aLC:Byte):Boolean;
begin
{*
 006A3D9C    push        ebp
 006A3D9D    mov         ebp,esp
 006A3D9F    add         esp,0FFFFFFF8
 006A3DA2    mov         byte ptr [ebp-5],dl
 006A3DA5    mov         dword ptr [ebp-4],eax
 006A3DA8    xor         eax,eax
 006A3DAA    mov         al,byte ptr [ebp-5]
 006A3DAD    dec         eax
 006A3DAE    cmp         eax,3
>006A3DB1    jbe         006A3DB8
 006A3DB3    call        @BoundErr
 006A3DB8    inc         eax
 006A3DB9    mov         edx,dword ptr [ebp-4]
 006A3DBC    mov         al,byte ptr [edx+eax+205]
 006A3DC3    mov         byte ptr [ebp-6],al
 006A3DC6    mov         al,byte ptr [ebp-6]
 006A3DC9    pop         ecx
 006A3DCA    pop         ecx
 006A3DCB    pop         ebp
 006A3DCC    ret
*}
end;

//006A3DD0
procedure TFXPPD.SetConvertSysToSap(aLC:Byte; Value:Boolean);
begin
{*
 006A3DD0    push        ebp
 006A3DD1    mov         ebp,esp
 006A3DD3    add         esp,0FFFFFFF8
 006A3DD6    mov         byte ptr [ebp-6],cl
 006A3DD9    mov         byte ptr [ebp-5],dl
 006A3DDC    mov         dword ptr [ebp-4],eax
 006A3DDF    xor         eax,eax
 006A3DE1    mov         al,byte ptr [ebp-5]
 006A3DE4    dec         eax
 006A3DE5    cmp         eax,3
>006A3DE8    jbe         006A3DEF
 006A3DEA    call        @BoundErr
 006A3DEF    inc         eax
 006A3DF0    mov         edx,dword ptr [ebp-4]
 006A3DF3    mov         cl,byte ptr [ebp-6]
 006A3DF6    mov         byte ptr [edx+eax+205],cl
 006A3DFD    pop         ecx
 006A3DFE    pop         ecx
 006A3DFF    pop         ebp
 006A3E00    ret
*}
end;

//006A3E04
function TFXPPD.UserVerificationOfLCChangeNeeded(LoopCtrlr:Integer; NewLoopCtrlrType:Integer; PD:TFXPPD):Integer;
begin
{*
 006A3E04    push        ebp
 006A3E05    mov         ebp,esp
 006A3E07    add         esp,0FFFFFFE8
 006A3E0A    mov         dword ptr [ebp-0C],ecx
 006A3E0D    mov         dword ptr [ebp-8],edx
 006A3E10    mov         dword ptr [ebp-4],eax
 006A3E13    xor         eax,eax
 006A3E15    mov         dword ptr [ebp-10],eax
 006A3E18    mov         edx,dword ptr [ebp-8]
 006A3E1B    cmp         edx,0FF
>006A3E21    jbe         006A3E28
 006A3E23    call        @BoundErr
 006A3E28    mov         eax,dword ptr [ebp-4]
 006A3E2B    call        TFXPPD.GetLCType
 006A3E30    and         eax,0FF
 006A3E35    mov         dword ptr [ebp-14],eax
 006A3E38    mov         edx,dword ptr [ebp-8]
 006A3E3B    cmp         edx,0FF
>006A3E41    jbe         006A3E48
 006A3E43    call        @BoundErr
 006A3E48    mov         eax,dword ptr [ebp+8]
 006A3E4B    call        TFXPPD.GetLCType
 006A3E50    and         eax,0FF
 006A3E55    mov         dword ptr [ebp-18],eax
 006A3E58    mov         eax,dword ptr [ebp-14]
 006A3E5B    cmp         eax,dword ptr [ebp-0C]
>006A3E5E    jne         006A3E6A
 006A3E60    xor         eax,eax
 006A3E62    mov         dword ptr [ebp-10],eax
>006A3E65    jmp         006A3F02
 006A3E6A    cmp         dword ptr [ebp-18],0
>006A3E6E    jne         006A3E7C
 006A3E70    mov         dword ptr [ebp-10],1
>006A3E77    jmp         006A3F02
 006A3E7C    cmp         dword ptr [ebp-18],0
>006A3E80    je          006A3E9B
 006A3E82    mov         eax,dword ptr [ebp-0C]
 006A3E85    cmp         eax,dword ptr [ebp-14]
>006A3E88    je          006A3E9B
 006A3E8A    mov         eax,dword ptr [ebp-18]
 006A3E8D    cmp         eax,dword ptr [ebp-0C]
>006A3E90    jne         006A3E9B
 006A3E92    mov         dword ptr [ebp-10],1
>006A3E99    jmp         006A3F02
 006A3E9B    cmp         dword ptr [ebp-18],5
>006A3E9F    jne         006A3EB0
 006A3EA1    cmp         dword ptr [ebp-0C],4
>006A3EA5    jne         006A3EB0
 006A3EA7    mov         dword ptr [ebp-10],1
>006A3EAE    jmp         006A3F02
 006A3EB0    cmp         dword ptr [ebp-18],4
>006A3EB4    jne         006A3EC5
 006A3EB6    cmp         dword ptr [ebp-0C],5
>006A3EBA    jne         006A3EC5
 006A3EBC    mov         dword ptr [ebp-10],2
>006A3EC3    jmp         006A3F02
 006A3EC5    cmp         dword ptr [ebp-18],0
>006A3EC9    je          006A3EDA
 006A3ECB    cmp         dword ptr [ebp-0C],0
>006A3ECF    jne         006A3EDA
 006A3ED1    mov         dword ptr [ebp-10],3
>006A3ED8    jmp         006A3F02
 006A3EDA    cmp         dword ptr [ebp-18],1
>006A3EDE    jne         006A3EEF
 006A3EE0    cmp         dword ptr [ebp-0C],6
>006A3EE4    jne         006A3EEF
 006A3EE6    mov         dword ptr [ebp-10],4
>006A3EED    jmp         006A3F02
 006A3EEF    cmp         dword ptr [ebp-18],0
>006A3EF3    je          006A3F02
 006A3EF5    cmp         dword ptr [ebp-0C],0
>006A3EF9    je          006A3F02
 006A3EFB    mov         dword ptr [ebp-10],5
 006A3F02    mov         eax,dword ptr [ebp-10]
 006A3F05    mov         esp,ebp
 006A3F07    pop         ebp
 006A3F08    ret         4
*}
end;

//006A3F0C
procedure sub_006A3F0C(?:TFXPPD; ?:Boolean);
begin
{*
 006A3F0C    push        ebp
 006A3F0D    mov         ebp,esp
 006A3F0F    add         esp,0FFFFFFF8
 006A3F12    mov         byte ptr [ebp-5],dl
 006A3F15    mov         dword ptr [ebp-4],eax
 006A3F18    mov         eax,dword ptr [ebp-4]
 006A3F1B    mov         al,byte ptr [eax+150]
 006A3F21    cmp         al,byte ptr [ebp-5]
>006A3F24    je          006A3F3C
 006A3F26    mov         al,byte ptr [ebp-5]
 006A3F29    mov         edx,dword ptr [ebp-4]
 006A3F2C    mov         byte ptr [edx+150],al
 006A3F32    mov         eax,dword ptr [ebp-4]
 006A3F35    mov         byte ptr [eax+204],1
 006A3F3C    pop         ecx
 006A3F3D    pop         ecx
 006A3F3E    pop         ebp
 006A3F3F    ret
*}
end;

//006A3F40
procedure sub_006A3F40(?:TFXPPD; ?:Boolean);
begin
{*
 006A3F40    push        ebp
 006A3F41    mov         ebp,esp
 006A3F43    add         esp,0FFFFFFF8
 006A3F46    mov         byte ptr [ebp-5],dl
 006A3F49    mov         dword ptr [ebp-4],eax
 006A3F4C    mov         eax,dword ptr [ebp-4]
 006A3F4F    mov         al,byte ptr [eax+151]
 006A3F55    cmp         al,byte ptr [ebp-5]
>006A3F58    je          006A3F70
 006A3F5A    mov         al,byte ptr [ebp-5]
 006A3F5D    mov         edx,dword ptr [ebp-4]
 006A3F60    mov         byte ptr [edx+151],al
 006A3F66    mov         eax,dword ptr [ebp-4]
 006A3F69    mov         byte ptr [eax+204],1
 006A3F70    pop         ecx
 006A3F71    pop         ecx
 006A3F72    pop         ebp
 006A3F73    ret
*}
end;

//006A3F74
procedure sub_006A3F74(?:TFXPPD; ?:Boolean);
begin
{*
 006A3F74    push        ebp
 006A3F75    mov         ebp,esp
 006A3F77    add         esp,0FFFFFFF8
 006A3F7A    mov         byte ptr [ebp-5],dl
 006A3F7D    mov         dword ptr [ebp-4],eax
 006A3F80    mov         eax,dword ptr [ebp-4]
 006A3F83    mov         al,byte ptr [eax+152]
 006A3F89    cmp         al,byte ptr [ebp-5]
>006A3F8C    je          006A3FA4
 006A3F8E    mov         al,byte ptr [ebp-5]
 006A3F91    mov         edx,dword ptr [ebp-4]
 006A3F94    mov         byte ptr [edx+152],al
 006A3F9A    mov         eax,dword ptr [ebp-4]
 006A3F9D    mov         byte ptr [eax+204],1
 006A3FA4    pop         ecx
 006A3FA5    pop         ecx
 006A3FA6    pop         ebp
 006A3FA7    ret
*}
end;

//006A3FA8
procedure sub_006A3FA8(?:TFXPPD; ?:Boolean);
begin
{*
 006A3FA8    push        ebp
 006A3FA9    mov         ebp,esp
 006A3FAB    add         esp,0FFFFFFF8
 006A3FAE    mov         byte ptr [ebp-5],dl
 006A3FB1    mov         dword ptr [ebp-4],eax
 006A3FB4    mov         eax,dword ptr [ebp-4]
 006A3FB7    mov         al,byte ptr [eax+153]
 006A3FBD    cmp         al,byte ptr [ebp-5]
>006A3FC0    je          006A3FD8
 006A3FC2    mov         al,byte ptr [ebp-5]
 006A3FC5    mov         edx,dword ptr [ebp-4]
 006A3FC8    mov         byte ptr [edx+153],al
 006A3FCE    mov         eax,dword ptr [ebp-4]
 006A3FD1    mov         byte ptr [eax+204],1
 006A3FD8    pop         ecx
 006A3FD9    pop         ecx
 006A3FDA    pop         ebp
 006A3FDB    ret
*}
end;

//006A3FDC
procedure sub_006A3FDC(?:TFXPPD; ?:Boolean);
begin
{*
 006A3FDC    push        ebp
 006A3FDD    mov         ebp,esp
 006A3FDF    add         esp,0FFFFFFF8
 006A3FE2    mov         byte ptr [ebp-5],dl
 006A3FE5    mov         dword ptr [ebp-4],eax
 006A3FE8    mov         eax,dword ptr [ebp-4]
 006A3FEB    mov         al,byte ptr [eax+154]
 006A3FF1    cmp         al,byte ptr [ebp-5]
>006A3FF4    je          006A400C
 006A3FF6    mov         al,byte ptr [ebp-5]
 006A3FF9    mov         edx,dword ptr [ebp-4]
 006A3FFC    mov         byte ptr [edx+154],al
 006A4002    mov         eax,dword ptr [ebp-4]
 006A4005    mov         byte ptr [eax+204],1
 006A400C    pop         ecx
 006A400D    pop         ecx
 006A400E    pop         ebp
 006A400F    ret
*}
end;

//006A4010
procedure sub_006A4010(?:TFXPPD; ?:Boolean);
begin
{*
 006A4010    push        ebp
 006A4011    mov         ebp,esp
 006A4013    add         esp,0FFFFFFF8
 006A4016    mov         byte ptr [ebp-5],dl
 006A4019    mov         dword ptr [ebp-4],eax
 006A401C    mov         eax,dword ptr [ebp-4]
 006A401F    mov         al,byte ptr [eax+155]
 006A4025    cmp         al,byte ptr [ebp-5]
>006A4028    je          006A4040
 006A402A    mov         al,byte ptr [ebp-5]
 006A402D    mov         edx,dword ptr [ebp-4]
 006A4030    mov         byte ptr [edx+155],al
 006A4036    mov         eax,dword ptr [ebp-4]
 006A4039    mov         byte ptr [eax+204],1
 006A4040    pop         ecx
 006A4041    pop         ecx
 006A4042    pop         ebp
 006A4043    ret
*}
end;

//006A4044
procedure sub_006A4044(?:TFXPPD; ?:NativeInt);
begin
{*
 006A4044    push        ebp
 006A4045    mov         ebp,esp
 006A4047    add         esp,0FFFFFFF8
 006A404A    mov         byte ptr [ebp-5],dl
 006A404D    mov         dword ptr [ebp-4],eax
 006A4050    mov         eax,dword ptr [ebp-4]
 006A4053    mov         al,byte ptr [eax+197]
 006A4059    cmp         al,byte ptr [ebp-5]
>006A405C    je          006A4074
 006A405E    mov         al,byte ptr [ebp-5]
 006A4061    mov         edx,dword ptr [ebp-4]
 006A4064    mov         byte ptr [edx+197],al
 006A406A    mov         eax,dword ptr [ebp-4]
 006A406D    mov         byte ptr [eax+204],1
 006A4074    pop         ecx
 006A4075    pop         ecx
 006A4076    pop         ebp
 006A4077    ret
*}
end;

//006A4078
procedure sub_006A4078(?:TFXPPD; ?:Boolean);
begin
{*
 006A4078    push        ebp
 006A4079    mov         ebp,esp
 006A407B    add         esp,0FFFFFFF8
 006A407E    mov         byte ptr [ebp-5],dl
 006A4081    mov         dword ptr [ebp-4],eax
 006A4084    mov         eax,dword ptr [ebp-4]
 006A4087    mov         al,byte ptr [eax+178]
 006A408D    cmp         al,byte ptr [ebp-5]
>006A4090    je          006A40A8
 006A4092    mov         al,byte ptr [ebp-5]
 006A4095    mov         edx,dword ptr [ebp-4]
 006A4098    mov         byte ptr [edx+178],al
 006A409E    mov         eax,dword ptr [ebp-4]
 006A40A1    mov         byte ptr [eax+204],1
 006A40A8    pop         ecx
 006A40A9    pop         ecx
 006A40AA    pop         ebp
 006A40AB    ret
*}
end;

//006A40AC
procedure sub_006A40AC(?:TFXPPD; ?:Boolean);
begin
{*
 006A40AC    push        ebp
 006A40AD    mov         ebp,esp
 006A40AF    add         esp,0FFFFFFF8
 006A40B2    mov         byte ptr [ebp-5],dl
 006A40B5    mov         dword ptr [ebp-4],eax
 006A40B8    mov         eax,dword ptr [ebp-4]
 006A40BB    mov         al,byte ptr [eax+17F]
 006A40C1    cmp         al,byte ptr [ebp-5]
>006A40C4    je          006A40DC
 006A40C6    mov         al,byte ptr [ebp-5]
 006A40C9    mov         edx,dword ptr [ebp-4]
 006A40CC    mov         byte ptr [edx+17F],al
 006A40D2    mov         eax,dword ptr [ebp-4]
 006A40D5    mov         byte ptr [eax+204],1
 006A40DC    pop         ecx
 006A40DD    pop         ecx
 006A40DE    pop         ebp
 006A40DF    ret
*}
end;

//006A40E0
procedure sub_006A40E0(?:TFXPPD; ?:LongInt);
begin
{*
 006A40E0    push        ebp
 006A40E1    mov         ebp,esp
 006A40E3    add         esp,0FFFFFFF8
 006A40E6    mov         word ptr [ebp-6],dx
 006A40EA    mov         dword ptr [ebp-4],eax
 006A40ED    mov         eax,dword ptr [ebp-4]
 006A40F0    mov         ax,word ptr [eax+14C]
 006A40F7    cmp         ax,word ptr [ebp-6]
>006A40FB    je          006A416C
 006A40FD    movzx       eax,word ptr [ebp-6]
 006A4101    mov         ecx,12C
 006A4106    xor         edx,edx
 006A4108    call        004329DC
 006A410D    cmp         eax,0FFFF
>006A4112    jbe         006A4119
 006A4114    call        @BoundErr
 006A4119    mov         edx,dword ptr [ebp-4]
 006A411C    mov         word ptr [edx+14C],ax
 006A4123    mov         eax,dword ptr [ebp-4]
 006A4126    movzx       eax,word ptr [eax+14C]
 006A412D    mov         ecx,258
 006A4132    sub         ecx,eax
>006A4134    jno         006A413B
 006A4136    call        @IntOver
 006A413B    mov         eax,dword ptr [ebp-4]
 006A413E    movzx       eax,word ptr [eax+14E]
 006A4145    xor         edx,edx
 006A4147    call        004329DC
 006A414C    cmp         eax,0FFFF
>006A4151    jbe         006A4158
 006A4153    call        @BoundErr
 006A4158    mov         edx,dword ptr [ebp-4]
 006A415B    mov         word ptr [edx+14E],ax
 006A4162    mov         eax,dword ptr [ebp-4]
 006A4165    mov         byte ptr [eax+204],1
 006A416C    pop         ecx
 006A416D    pop         ecx
 006A416E    pop         ebp
 006A416F    ret
*}
end;

//006A4170
procedure sub_006A4170(?:TFXPPD; ?:LongInt);
begin
{*
 006A4170    push        ebp
 006A4171    mov         ebp,esp
 006A4173    add         esp,0FFFFFFF8
 006A4176    mov         word ptr [ebp-6],dx
 006A417A    mov         dword ptr [ebp-4],eax
 006A417D    mov         eax,dword ptr [ebp-4]
 006A4180    mov         ax,word ptr [eax+14E]
 006A4187    cmp         ax,word ptr [ebp-6]
>006A418B    je          006A41D0
 006A418D    mov         eax,dword ptr [ebp-4]
 006A4190    movzx       eax,word ptr [eax+14C]
 006A4197    mov         ecx,258
 006A419C    sub         ecx,eax
>006A419E    jno         006A41A5
 006A41A0    call        @IntOver
 006A41A5    movzx       eax,word ptr [ebp-6]
 006A41A9    xor         edx,edx
 006A41AB    call        004329DC
 006A41B0    cmp         eax,0FFFF
>006A41B5    jbe         006A41BC
 006A41B7    call        @BoundErr
 006A41BC    mov         edx,dword ptr [ebp-4]
 006A41BF    mov         word ptr [edx+14E],ax
 006A41C6    mov         eax,dword ptr [ebp-4]
 006A41C9    mov         byte ptr [eax+204],1
 006A41D0    pop         ecx
 006A41D1    pop         ecx
 006A41D2    pop         ebp
 006A41D3    ret
*}
end;

//006A41D4
procedure sub_006A41D4(?:TFXPPD; ?:Boolean);
begin
{*
 006A41D4    push        ebp
 006A41D5    mov         ebp,esp
 006A41D7    add         esp,0FFFFFFF8
 006A41DA    mov         byte ptr [ebp-5],dl
 006A41DD    mov         dword ptr [ebp-4],eax
 006A41E0    mov         eax,dword ptr [ebp-4]
 006A41E3    mov         al,byte ptr [eax+146]
 006A41E9    cmp         al,byte ptr [ebp-5]
>006A41EC    je          006A4204
 006A41EE    mov         al,byte ptr [ebp-5]
 006A41F1    mov         edx,dword ptr [ebp-4]
 006A41F4    mov         byte ptr [edx+146],al
 006A41FA    mov         eax,dword ptr [ebp-4]
 006A41FD    mov         byte ptr [eax+204],1
 006A4204    pop         ecx
 006A4205    pop         ecx
 006A4206    pop         ebp
 006A4207    ret
*}
end;

//006A4208
procedure sub_006A4208(?:TFXPPD; ?:Boolean);
begin
{*
 006A4208    push        ebp
 006A4209    mov         ebp,esp
 006A420B    add         esp,0FFFFFFF8
 006A420E    mov         byte ptr [ebp-5],dl
 006A4211    mov         dword ptr [ebp-4],eax
 006A4214    mov         eax,dword ptr [ebp-4]
 006A4217    mov         al,byte ptr [eax+147]
 006A421D    cmp         al,byte ptr [ebp-5]
>006A4220    je          006A4238
 006A4222    mov         al,byte ptr [ebp-5]
 006A4225    mov         edx,dword ptr [ebp-4]
 006A4228    mov         byte ptr [edx+147],al
 006A422E    mov         eax,dword ptr [ebp-4]
 006A4231    mov         byte ptr [eax+204],1
 006A4238    pop         ecx
 006A4239    pop         ecx
 006A423A    pop         ebp
 006A423B    ret
*}
end;

//006A423C
procedure sub_006A423C(?:TFXPPD; ?:Boolean);
begin
{*
 006A423C    push        ebp
 006A423D    mov         ebp,esp
 006A423F    add         esp,0FFFFFFF8
 006A4242    mov         byte ptr [ebp-5],dl
 006A4245    mov         dword ptr [ebp-4],eax
 006A4248    mov         eax,dword ptr [ebp-4]
 006A424B    mov         al,byte ptr [eax+148]
 006A4251    cmp         al,byte ptr [ebp-5]
>006A4254    je          006A426C
 006A4256    mov         al,byte ptr [ebp-5]
 006A4259    mov         edx,dword ptr [ebp-4]
 006A425C    mov         byte ptr [edx+148],al
 006A4262    mov         eax,dword ptr [ebp-4]
 006A4265    mov         byte ptr [eax+204],1
 006A426C    pop         ecx
 006A426D    pop         ecx
 006A426E    pop         ebp
 006A426F    ret
*}
end;

//006A4270
procedure sub_006A4270(?:TFXPPD; ?:Boolean);
begin
{*
 006A4270    push        ebp
 006A4271    mov         ebp,esp
 006A4273    add         esp,0FFFFFFF8
 006A4276    mov         byte ptr [ebp-5],dl
 006A4279    mov         dword ptr [ebp-4],eax
 006A427C    mov         eax,dword ptr [ebp-4]
 006A427F    mov         al,byte ptr [eax+149]
 006A4285    cmp         al,byte ptr [ebp-5]
>006A4288    je          006A42A0
 006A428A    mov         al,byte ptr [ebp-5]
 006A428D    mov         edx,dword ptr [ebp-4]
 006A4290    mov         byte ptr [edx+149],al
 006A4296    mov         eax,dword ptr [ebp-4]
 006A4299    mov         byte ptr [eax+204],1
 006A42A0    pop         ecx
 006A42A1    pop         ecx
 006A42A2    pop         ebp
 006A42A3    ret
*}
end;

//006A42A4
procedure sub_006A42A4(?:TFXPPD; ?:Integer);
begin
{*
 006A42A4    push        ebp
 006A42A5    mov         ebp,esp
 006A42A7    add         esp,0FFFFFFF8
 006A42AA    mov         byte ptr [ebp-5],dl
 006A42AD    mov         dword ptr [ebp-4],eax
 006A42B0    mov         eax,dword ptr [ebp-4]
 006A42B3    mov         al,byte ptr [eax+14B]
 006A42B9    cmp         al,byte ptr [ebp-5]
>006A42BC    je          006A42D4
 006A42BE    mov         al,byte ptr [ebp-5]
 006A42C1    mov         edx,dword ptr [ebp-4]
 006A42C4    mov         byte ptr [edx+14B],al
 006A42CA    mov         eax,dword ptr [ebp-4]
 006A42CD    mov         byte ptr [eax+204],1
 006A42D4    pop         ecx
 006A42D5    pop         ecx
 006A42D6    pop         ebp
 006A42D7    ret
*}
end;

//006A42D8
procedure sub_006A42D8(?:TFXPPD; ?:Integer);
begin
{*
 006A42D8    push        ebp
 006A42D9    mov         ebp,esp
 006A42DB    add         esp,0FFFFFFF8
 006A42DE    mov         byte ptr [ebp-5],dl
 006A42E1    mov         dword ptr [ebp-4],eax
 006A42E4    mov         eax,dword ptr [ebp-4]
 006A42E7    mov         al,byte ptr [eax+176]
 006A42ED    cmp         al,byte ptr [ebp-5]
>006A42F0    je          006A4308
 006A42F2    mov         al,byte ptr [ebp-5]
 006A42F5    mov         edx,dword ptr [ebp-4]
 006A42F8    mov         byte ptr [edx+176],al
 006A42FE    mov         eax,dword ptr [ebp-4]
 006A4301    mov         byte ptr [eax+204],1
 006A4308    pop         ecx
 006A4309    pop         ecx
 006A430A    pop         ebp
 006A430B    ret
*}
end;

//006A430C
procedure sub_006A430C(?:TFXPPD; ?:Boolean);
begin
{*
 006A430C    push        ebp
 006A430D    mov         ebp,esp
 006A430F    add         esp,0FFFFFFF8
 006A4312    mov         byte ptr [ebp-5],dl
 006A4315    mov         dword ptr [ebp-4],eax
 006A4318    mov         eax,dword ptr [ebp-4]
 006A431B    mov         al,byte ptr [eax+14A]
 006A4321    cmp         al,byte ptr [ebp-5]
>006A4324    je          006A433C
 006A4326    mov         al,byte ptr [ebp-5]
 006A4329    mov         edx,dword ptr [ebp-4]
 006A432C    mov         byte ptr [edx+14A],al
 006A4332    mov         eax,dword ptr [ebp-4]
 006A4335    mov         byte ptr [eax+204],1
 006A433C    pop         ecx
 006A433D    pop         ecx
 006A433E    pop         ebp
 006A433F    ret
*}
end;

//006A4340
procedure TFXPPD.SetLogEventStatus(lapEvent:TLogAndPrintEvent; status:Boolean);
begin
{*
 006A4340    push        ebp
 006A4341    mov         ebp,esp
 006A4343    add         esp,0FFFFFFF8
 006A4346    mov         byte ptr [ebp-6],cl
 006A4349    mov         byte ptr [ebp-5],dl
 006A434C    mov         dword ptr [ebp-4],eax
 006A434F    xor         eax,eax
 006A4351    mov         al,byte ptr [ebp-5]
 006A4354    mov         edx,dword ptr [ebp-4]
 006A4357    mov         al,byte ptr [edx+eax+15E]
 006A435E    cmp         al,byte ptr [ebp-6]
>006A4361    je          006A439E
 006A4363    xor         eax,eax
 006A4365    mov         al,byte ptr [ebp-5]
 006A4368    mov         edx,dword ptr [ebp-4]
 006A436B    mov         cl,byte ptr [ebp-6]
 006A436E    mov         byte ptr [edx+eax+15E],cl
 006A4375    mov         dl,byte ptr [ebp-5]
 006A4378    mov         eax,dword ptr [ebp-4]
 006A437B    call        TFXPPD.GetPrintEventAllowed
 006A4380    test        al,al
>006A4382    jne         006A4394
 006A4384    xor         eax,eax
 006A4386    mov         al,byte ptr [ebp-5]
 006A4389    mov         edx,dword ptr [ebp-4]
 006A438C    mov         byte ptr [edx+eax+156],0
 006A4394    mov         eax,dword ptr [ebp-4]
 006A4397    mov         byte ptr [eax+204],1;TFXPPD.FModified:Boolean
 006A439E    pop         ecx
 006A439F    pop         ecx
 006A43A0    pop         ebp
 006A43A1    ret
*}
end;

//006A43A4
function TFXPPD.GetLogEventStatus(lapEvent:TLogAndPrintEvent):Boolean;
begin
{*
 006A43A4    push        ebp
 006A43A5    mov         ebp,esp
 006A43A7    add         esp,0FFFFFFF8
 006A43AA    mov         byte ptr [ebp-5],dl
 006A43AD    mov         dword ptr [ebp-4],eax
 006A43B0    xor         eax,eax
 006A43B2    mov         al,byte ptr [ebp-5]
 006A43B5    mov         edx,dword ptr [ebp-4]
 006A43B8    mov         al,byte ptr [edx+eax+15E]
 006A43BF    mov         byte ptr [ebp-6],al
 006A43C2    mov         al,byte ptr [ebp-6]
 006A43C5    pop         ecx
 006A43C6    pop         ecx
 006A43C7    pop         ebp
 006A43C8    ret
*}
end;

//006A43CC
procedure TFXPPD.SetPrintEventStatus(lapEvent:TLogAndPrintEvent; status:Boolean);
begin
{*
 006A43CC    push        ebp
 006A43CD    mov         ebp,esp
 006A43CF    add         esp,0FFFFFFF8
 006A43D2    mov         byte ptr [ebp-6],cl
 006A43D5    mov         byte ptr [ebp-5],dl
 006A43D8    mov         dword ptr [ebp-4],eax
 006A43DB    mov         dl,byte ptr [ebp-5]
 006A43DE    mov         eax,dword ptr [ebp-4]
 006A43E1    call        TFXPPD.GetPrintEventAllowed
 006A43E6    test        al,al
>006A43E8    je          006A441A
 006A43EA    xor         eax,eax
 006A43EC    mov         al,byte ptr [ebp-5]
 006A43EF    mov         edx,dword ptr [ebp-4]
 006A43F2    mov         al,byte ptr [edx+eax+156]
 006A43F9    cmp         al,byte ptr [ebp-6]
>006A43FC    je          006A441A
 006A43FE    xor         eax,eax
 006A4400    mov         al,byte ptr [ebp-5]
 006A4403    mov         edx,dword ptr [ebp-4]
 006A4406    mov         cl,byte ptr [ebp-6]
 006A4409    mov         byte ptr [edx+eax+156],cl
 006A4410    mov         eax,dword ptr [ebp-4]
 006A4413    mov         byte ptr [eax+204],1;TFXPPD.FModified:Boolean
 006A441A    pop         ecx
 006A441B    pop         ecx
 006A441C    pop         ebp
 006A441D    ret
*}
end;

//006A4420
function TFXPPD.GetPrintEventStatus(lapEvent:TLogAndPrintEvent):Boolean;
begin
{*
 006A4420    push        ebp
 006A4421    mov         ebp,esp
 006A4423    add         esp,0FFFFFFF8
 006A4426    mov         byte ptr [ebp-5],dl
 006A4429    mov         dword ptr [ebp-4],eax
 006A442C    xor         eax,eax
 006A442E    mov         al,byte ptr [ebp-5]
 006A4431    mov         edx,dword ptr [ebp-4]
 006A4434    mov         al,byte ptr [edx+eax+156]
 006A443B    mov         byte ptr [ebp-6],al
 006A443E    mov         al,byte ptr [ebp-6]
 006A4441    pop         ecx
 006A4442    pop         ecx
 006A4443    pop         ebp
 006A4444    ret
*}
end;

//006A4448
function TFXPPD.GetPrintEventAllowed(lapEvent:TLogAndPrintEvent):Boolean;
begin
{*
 006A4448    push        ebp
 006A4449    mov         ebp,esp
 006A444B    add         esp,0FFFFFFF8
 006A444E    mov         byte ptr [ebp-5],dl
 006A4451    mov         dword ptr [ebp-4],eax
 006A4454    xor         eax,eax
 006A4456    mov         al,byte ptr [ebp-5]
 006A4459    mov         edx,dword ptr [ebp-4]
 006A445C    mov         al,byte ptr [edx+eax+15E]
 006A4463    mov         byte ptr [ebp-6],al
 006A4466    mov         al,byte ptr [ebp-6]
 006A4469    pop         ecx
 006A446A    pop         ecx
 006A446B    pop         ebp
 006A446C    ret
*}
end;

//006A4470
{*procedure sub_006A4470(?:TFXPPD; ?:?);
begin
 006A4470    push        ebp
 006A4471    mov         ebp,esp
 006A4473    add         esp,0FFFFFFF8
 006A4476    mov         byte ptr [ebp-5],dl
 006A4479    mov         dword ptr [ebp-4],eax
 006A447C    mov         eax,dword ptr [ebp-4]
 006A447F    mov         al,byte ptr [eax+166]
 006A4485    cmp         al,byte ptr [ebp-5]
>006A4488    je          006A44C9
 006A448A    mov         al,byte ptr [ebp-5]
 006A448D    sub         al,13
>006A448F    jb          006A44A7
 006A4491    mov         ecx,6A44DC;'Invalid Panel Language'
 006A4496    mov         dl,1
 006A4498    mov         eax,[0041873C];ERangeError
 006A449D    call        Exception.Create;ERangeError.Create
 006A44A2    call        @RaiseExcept
 006A44A7    mov         al,byte ptr [ebp-5]
 006A44AA    mov         edx,dword ptr [ebp-4]
 006A44AD    mov         byte ptr [edx+166],al
 006A44B3    mov         al,byte ptr [ebp-5]
 006A44B6    mov         edx,dword ptr [ebp-4]
 006A44B9    mov         byte ptr [edx+167],al
 006A44BF    mov         eax,dword ptr [ebp-4]
 006A44C2    mov         byte ptr [eax+204],1
 006A44C9    pop         ecx
 006A44CA    pop         ecx
 006A44CB    pop         ebp
 006A44CC    ret
end;*}

//006A450C
{*procedure sub_006A450C(?:TFXPPD; ?:?);
begin
 006A450C    push        ebp
 006A450D    mov         ebp,esp
 006A450F    add         esp,0FFFFFFF8
 006A4512    mov         byte ptr [ebp-5],dl
 006A4515    mov         dword ptr [ebp-4],eax
 006A4518    mov         eax,dword ptr [ebp-4]
 006A451B    mov         al,byte ptr [eax+167]
 006A4521    cmp         al,byte ptr [ebp-5]
>006A4524    je          006A4559
 006A4526    mov         al,byte ptr [ebp-5]
 006A4529    sub         al,13
>006A452B    jb          006A4543
 006A452D    mov         ecx,6A456C;'Invalid Panel Language'
 006A4532    mov         dl,1
 006A4534    mov         eax,[0041873C];ERangeError
 006A4539    call        Exception.Create;ERangeError.Create
 006A453E    call        @RaiseExcept
 006A4543    mov         al,byte ptr [ebp-5]
 006A4546    mov         edx,dword ptr [ebp-4]
 006A4549    mov         byte ptr [edx+167],al
 006A454F    mov         eax,dword ptr [ebp-4]
 006A4552    mov         byte ptr [eax+204],1
 006A4559    pop         ecx
 006A455A    pop         ecx
 006A455B    pop         ebp
 006A455C    ret
end;*}

//006A459C
{*procedure sub_006A459C(?:TFXPPD; ?:?);
begin
 006A459C    push        ebp
 006A459D    mov         ebp,esp
 006A459F    add         esp,0FFFFFFF8
 006A45A2    mov         word ptr [ebp-6],dx
 006A45A6    mov         dword ptr [ebp-4],eax
 006A45A9    mov         eax,dword ptr [ebp-4]
 006A45AC    mov         ax,word ptr [eax+168]
 006A45B3    cmp         ax,word ptr [ebp-6]
>006A45B7    je          006A45EF
 006A45B9    cmp         word ptr [ebp-6],270F
>006A45BF    jbe         006A45D7
 006A45C1    mov         ecx,6A4600;'Invalid Service Code'
 006A45C6    mov         dl,1
 006A45C8    mov         eax,[0041873C];ERangeError
 006A45CD    call        Exception.Create;ERangeError.Create
 006A45D2    call        @RaiseExcept
 006A45D7    mov         ax,word ptr [ebp-6]
 006A45DB    mov         edx,dword ptr [ebp-4]
 006A45DE    mov         word ptr [edx+168],ax
 006A45E5    mov         eax,dword ptr [ebp-4]
 006A45E8    mov         byte ptr [eax+204],1
 006A45EF    pop         ecx
 006A45F0    pop         ecx
 006A45F1    pop         ebp
 006A45F2    ret
end;*}

//006A462C
{*procedure sub_006A462C(?:TFXPPD; ?:?);
begin
 006A462C    push        ebp
 006A462D    mov         ebp,esp
 006A462F    add         esp,0FFFFFFF8
 006A4632    mov         word ptr [ebp-6],dx
 006A4636    mov         dword ptr [ebp-4],eax
 006A4639    mov         eax,dword ptr [ebp-4]
 006A463C    mov         ax,word ptr [eax+16A]
 006A4643    cmp         ax,word ptr [ebp-6]
>006A4647    je          006A467F
 006A4649    cmp         word ptr [ebp-6],270F
>006A464F    jbe         006A4667
 006A4651    mov         ecx,6A4690;'Invalid Service Code'
 006A4656    mov         dl,1
 006A4658    mov         eax,[0041873C];ERangeError
 006A465D    call        Exception.Create;ERangeError.Create
 006A4662    call        @RaiseExcept
 006A4667    mov         ax,word ptr [ebp-6]
 006A466B    mov         edx,dword ptr [ebp-4]
 006A466E    mov         word ptr [edx+16A],ax
 006A4675    mov         eax,dword ptr [ebp-4]
 006A4678    mov         byte ptr [eax+204],1
 006A467F    pop         ecx
 006A4680    pop         ecx
 006A4681    pop         ebp
 006A4682    ret
end;*}

//006A46BC
{*procedure sub_006A46BC(?:TFXPPD; ?:?);
begin
 006A46BC    push        ebp
 006A46BD    mov         ebp,esp
 006A46BF    add         esp,0FFFFFFF8
 006A46C2    mov         word ptr [ebp-6],dx
 006A46C6    mov         dword ptr [ebp-4],eax
 006A46C9    mov         eax,dword ptr [ebp-4]
 006A46CC    mov         ax,word ptr [eax+16C]
 006A46D3    cmp         ax,word ptr [ebp-6]
>006A46D7    je          006A470F
 006A46D9    cmp         word ptr [ebp-6],270F
>006A46DF    jbe         006A46F7
 006A46E1    mov         ecx,6A4720;'Invalid Service Code'
 006A46E6    mov         dl,1
 006A46E8    mov         eax,[0041873C];ERangeError
 006A46ED    call        Exception.Create;ERangeError.Create
 006A46F2    call        @RaiseExcept
 006A46F7    mov         ax,word ptr [ebp-6]
 006A46FB    mov         edx,dword ptr [ebp-4]
 006A46FE    mov         word ptr [edx+16C],ax
 006A4705    mov         eax,dword ptr [ebp-4]
 006A4708    mov         byte ptr [eax+204],1
 006A470F    pop         ecx
 006A4710    pop         ecx
 006A4711    pop         ebp
 006A4712    ret
end;*}

//006A474C
procedure sub_006A474C(?:TFXPPD; ?:Boolean);
begin
{*
 006A474C    push        ebp
 006A474D    mov         ebp,esp
 006A474F    add         esp,0FFFFFFF8
 006A4752    mov         byte ptr [ebp-5],dl
 006A4755    mov         dword ptr [ebp-4],eax
 006A4758    mov         eax,dword ptr [ebp-4]
 006A475B    mov         al,byte ptr [eax+17A]
 006A4761    cmp         al,byte ptr [ebp-5]
>006A4764    je          006A4792
 006A4766    mov         al,byte ptr [ebp-5]
 006A4769    mov         edx,dword ptr [ebp-4]
 006A476C    mov         byte ptr [edx+17A],al
 006A4772    mov         eax,dword ptr [ebp-4]
 006A4775    cmp         byte ptr [eax+17A],0
>006A477C    jne         006A4788
 006A477E    mov         eax,dword ptr [ebp-4]
 006A4781    mov         byte ptr [eax+195],5
 006A4788    mov         eax,dword ptr [ebp-4]
 006A478B    mov         byte ptr [eax+204],1
 006A4792    pop         ecx
 006A4793    pop         ecx
 006A4794    pop         ebp
 006A4795    ret
*}
end;

//006A4798
{*function sub_006A4798(?:TFXPPD):?;
begin
 006A4798    push        ebp
 006A4799    mov         ebp,esp
 006A479B    add         esp,0FFFFFFF8
 006A479E    mov         dword ptr [ebp-4],eax
 006A47A1    mov         eax,dword ptr [ebp-4]
 006A47A4    mov         al,byte ptr [eax+17A]
 006A47AA    mov         byte ptr [ebp-5],al
 006A47AD    mov         al,byte ptr [ebp-5]
 006A47B0    pop         ecx
 006A47B1    pop         ecx
 006A47B2    pop         ebp
 006A47B3    ret
end;*}

//006A47B4
procedure sub_006A47B4(?:TFXPPD; ?:LongInt);
begin
{*
 006A47B4    push        ebp
 006A47B5    mov         ebp,esp
 006A47B7    add         esp,0FFFFFFF8
 006A47BA    mov         byte ptr [ebp-5],dl
 006A47BD    mov         dword ptr [ebp-4],eax
 006A47C0    mov         eax,dword ptr [ebp-4]
 006A47C3    mov         al,byte ptr [eax+195]
 006A47C9    cmp         al,byte ptr [ebp-5]
>006A47CC    je          006A47E4
 006A47CE    mov         al,byte ptr [ebp-5]
 006A47D1    mov         edx,dword ptr [ebp-4]
 006A47D4    mov         byte ptr [edx+195],al
 006A47DA    mov         eax,dword ptr [ebp-4]
 006A47DD    mov         byte ptr [eax+204],1
 006A47E4    pop         ecx
 006A47E5    pop         ecx
 006A47E6    pop         ebp
 006A47E7    ret
*}
end;

//006A47E8
procedure sub_006A47E8(?:TFXPPD; ?:NativeInt);
begin
{*
 006A47E8    push        ebp
 006A47E9    mov         ebp,esp
 006A47EB    add         esp,0FFFFFFF8
 006A47EE    mov         byte ptr [ebp-5],dl
 006A47F1    mov         dword ptr [ebp-4],eax
 006A47F4    mov         eax,dword ptr [ebp-4]
 006A47F7    mov         al,byte ptr [eax+177]
 006A47FD    cmp         al,byte ptr [ebp-5]
>006A4800    je          006A4834
 006A4802    cmp         byte ptr [ebp-5],1
>006A4806    jbe         006A481E
 006A4808    mov         ecx,6A4844;'Invalid Coincidence Termination condition'
 006A480D    mov         dl,1
 006A480F    mov         eax,[0041873C];ERangeError
 006A4814    call        Exception.Create;ERangeError.Create
 006A4819    call        @RaiseExcept
 006A481E    mov         al,byte ptr [ebp-5]
 006A4821    mov         edx,dword ptr [ebp-4]
 006A4824    mov         byte ptr [edx+177],al
 006A482A    mov         eax,dword ptr [ebp-4]
 006A482D    mov         byte ptr [eax+204],1
 006A4834    pop         ecx
 006A4835    pop         ecx
 006A4836    pop         ebp
 006A4837    ret
*}
end;

//006A4898
procedure sub_006A4898(?:TFXPPD; ?:LongInt);
begin
{*
 006A4898    push        ebp
 006A4899    mov         ebp,esp
 006A489B    add         esp,0FFFFFFF8
 006A489E    mov         byte ptr [ebp-5],dl
 006A48A1    mov         dword ptr [ebp-4],eax
 006A48A4    mov         eax,dword ptr [ebp-4]
 006A48A7    mov         al,byte ptr [eax+16E]
 006A48AD    cmp         al,byte ptr [ebp-5]
>006A48B0    je          006A48C8
 006A48B2    mov         al,byte ptr [ebp-5]
 006A48B5    mov         edx,dword ptr [ebp-4]
 006A48B8    mov         byte ptr [edx+16E],al
 006A48BE    mov         eax,dword ptr [ebp-4]
 006A48C1    mov         byte ptr [eax+204],1
 006A48C8    pop         ecx
 006A48C9    pop         ecx
 006A48CA    pop         ebp
 006A48CB    ret
*}
end;

//006A48CC
procedure sub_006A48CC(?:TFXPPD; ?:LongInt);
begin
{*
 006A48CC    push        ebp
 006A48CD    mov         ebp,esp
 006A48CF    add         esp,0FFFFFFF8
 006A48D2    mov         byte ptr [ebp-5],dl
 006A48D5    mov         dword ptr [ebp-4],eax
 006A48D8    mov         eax,dword ptr [ebp-4]
 006A48DB    mov         al,byte ptr [eax+179]
 006A48E1    cmp         al,byte ptr [ebp-5]
>006A48E4    je          006A4919
 006A48E6    xor         eax,eax
 006A48E8    mov         al,byte ptr [ebp-5]
 006A48EB    mov         ecx,3C
 006A48F0    mov         edx,1
 006A48F5    call        004329DC
 006A48FA    cmp         eax,0FF
>006A48FF    jbe         006A4906
 006A4901    call        @BoundErr
 006A4906    mov         edx,dword ptr [ebp-4]
 006A4909    mov         byte ptr [edx+179],al
 006A490F    mov         eax,dword ptr [ebp-4]
 006A4912    mov         byte ptr [eax+204],1
 006A4919    pop         ecx
 006A491A    pop         ecx
 006A491B    pop         ebp
 006A491C    ret
*}
end;

//006A4920
procedure sub_006A4920(?:TFXPPD; ?:Integer);
begin
{*
 006A4920    push        ebp
 006A4921    mov         ebp,esp
 006A4923    add         esp,0FFFFFFF8
 006A4926    mov         byte ptr [ebp-5],dl
 006A4929    mov         dword ptr [ebp-4],eax
 006A492C    mov         eax,dword ptr [ebp-4]
 006A492F    mov         al,byte ptr [eax+170]
 006A4935    cmp         al,byte ptr [ebp-5]
>006A4938    je          006A496C
 006A493A    cmp         byte ptr [ebp-5],2
>006A493E    jbe         006A4956
 006A4940    mov         ecx,6A497C;'Invalid Alarm Display definition'
 006A4945    mov         dl,1
 006A4947    mov         eax,[0041873C];ERangeError
 006A494C    call        Exception.Create;ERangeError.Create
 006A4951    call        @RaiseExcept
 006A4956    mov         al,byte ptr [ebp-5]
 006A4959    mov         edx,dword ptr [ebp-4]
 006A495C    mov         byte ptr [edx+170],al
 006A4962    mov         eax,dword ptr [ebp-4]
 006A4965    mov         byte ptr [eax+204],1
 006A496C    pop         ecx
 006A496D    pop         ecx
 006A496E    pop         ebp
 006A496F    ret
*}
end;

//006A49C0
procedure sub_006A49C0(?:TFXPPD; ?:Boolean);
begin
{*
 006A49C0    push        ebp
 006A49C1    mov         ebp,esp
 006A49C3    add         esp,0FFFFFFF8
 006A49C6    mov         byte ptr [ebp-5],dl
 006A49C9    mov         dword ptr [ebp-4],eax
 006A49CC    mov         eax,dword ptr [ebp-4]
 006A49CF    mov         al,byte ptr [eax+17B]
 006A49D5    cmp         al,byte ptr [ebp-5]
>006A49D8    je          006A4A06
 006A49DA    mov         al,byte ptr [ebp-5]
 006A49DD    mov         edx,dword ptr [ebp-4]
 006A49E0    mov         byte ptr [edx+17B],al
 006A49E6    mov         eax,dword ptr [ebp-4]
 006A49E9    cmp         byte ptr [eax+17B],0
>006A49F0    jne         006A49FC
 006A49F2    mov         eax,dword ptr [ebp-4]
 006A49F5    mov         byte ptr [eax+17C],1E
 006A49FC    mov         eax,dword ptr [ebp-4]
 006A49FF    mov         byte ptr [eax+204],1
 006A4A06    pop         ecx
 006A4A07    pop         ecx
 006A4A08    pop         ebp
 006A4A09    ret
*}
end;

//006A4A0C
procedure sub_006A4A0C(?:TFXPPD; ?:LongInt);
begin
{*
 006A4A0C    push        ebp
 006A4A0D    mov         ebp,esp
 006A4A0F    add         esp,0FFFFFFF8
 006A4A12    mov         byte ptr [ebp-5],dl
 006A4A15    mov         dword ptr [ebp-4],eax
 006A4A18    mov         eax,dword ptr [ebp-4]
 006A4A1B    mov         al,byte ptr [eax+17C]
 006A4A21    cmp         al,byte ptr [ebp-5]
>006A4A24    je          006A4A62
 006A4A26    mov         eax,dword ptr [ebp-4]
 006A4A29    call        006A4A68
 006A4A2E    test        al,al
>006A4A30    je          006A4A62
 006A4A32    xor         eax,eax
 006A4A34    mov         al,byte ptr [ebp-5]
 006A4A37    mov         ecx,1E
 006A4A3C    xor         edx,edx
 006A4A3E    call        004329DC
 006A4A43    cmp         eax,0FF
>006A4A48    jbe         006A4A4F
 006A4A4A    call        @BoundErr
 006A4A4F    mov         edx,dword ptr [ebp-4]
 006A4A52    mov         byte ptr [edx+17C],al
 006A4A58    mov         eax,dword ptr [ebp-4]
 006A4A5B    mov         byte ptr [eax+204],1
 006A4A62    pop         ecx
 006A4A63    pop         ecx
 006A4A64    pop         ebp
 006A4A65    ret
*}
end;

//006A4A68
{*function sub_006A4A68(?:TFXPPD):?;
begin
 006A4A68    push        ebp
 006A4A69    mov         ebp,esp
 006A4A6B    add         esp,0FFFFFFF8
 006A4A6E    mov         dword ptr [ebp-4],eax
 006A4A71    mov         eax,dword ptr [ebp-4]
 006A4A74    mov         al,byte ptr [eax+17B]
 006A4A7A    mov         byte ptr [ebp-5],al
 006A4A7D    mov         al,byte ptr [ebp-5]
 006A4A80    pop         ecx
 006A4A81    pop         ecx
 006A4A82    pop         ebp
 006A4A83    ret
end;*}

//006A4A84
procedure sub_006A4A84(?:TFXPPD; ?:Boolean);
begin
{*
 006A4A84    push        ebp
 006A4A85    mov         ebp,esp
 006A4A87    add         esp,0FFFFFFF8
 006A4A8A    mov         byte ptr [ebp-5],dl
 006A4A8D    mov         dword ptr [ebp-4],eax
 006A4A90    mov         eax,dword ptr [ebp-4]
 006A4A93    mov         al,byte ptr [eax+16F]
 006A4A99    cmp         al,byte ptr [ebp-5]
>006A4A9C    je          006A4AB4
 006A4A9E    mov         al,byte ptr [ebp-5]
 006A4AA1    mov         edx,dword ptr [ebp-4]
 006A4AA4    mov         byte ptr [edx+16F],al
 006A4AAA    mov         eax,dword ptr [ebp-4]
 006A4AAD    mov         byte ptr [eax+204],1
 006A4AB4    pop         ecx
 006A4AB5    pop         ecx
 006A4AB6    pop         ebp
 006A4AB7    ret
*}
end;

//006A4AB8
procedure sub_006A4AB8(?:TFXPPD; ?:Boolean);
begin
{*
 006A4AB8    push        ebp
 006A4AB9    mov         ebp,esp
 006A4ABB    add         esp,0FFFFFFF8
 006A4ABE    mov         byte ptr [ebp-5],dl
 006A4AC1    mov         dword ptr [ebp-4],eax
 006A4AC4    mov         eax,dword ptr [ebp-4]
 006A4AC7    mov         al,byte ptr [eax+194]
 006A4ACD    cmp         al,byte ptr [ebp-5]
>006A4AD0    je          006A4AE8
 006A4AD2    mov         al,byte ptr [ebp-5]
 006A4AD5    mov         edx,dword ptr [ebp-4]
 006A4AD8    mov         byte ptr [edx+194],al
 006A4ADE    mov         eax,dword ptr [ebp-4]
 006A4AE1    mov         byte ptr [eax+204],1
 006A4AE8    pop         ecx
 006A4AE9    pop         ecx
 006A4AEA    pop         ebp
 006A4AEB    ret
*}
end;

//006A4AEC
procedure sub_006A4AEC(?:TFXPPD; ?:Boolean);
begin
{*
 006A4AEC    push        ebp
 006A4AED    mov         ebp,esp
 006A4AEF    add         esp,0FFFFFFF8
 006A4AF2    mov         byte ptr [ebp-5],dl
 006A4AF5    mov         dword ptr [ebp-4],eax
 006A4AF8    mov         eax,dword ptr [ebp-4]
 006A4AFB    mov         al,byte ptr [eax+196]
 006A4B01    cmp         al,byte ptr [ebp-5]
>006A4B04    je          006A4B1C
 006A4B06    mov         al,byte ptr [ebp-5]
 006A4B09    mov         edx,dword ptr [ebp-4]
 006A4B0C    mov         byte ptr [edx+196],al
 006A4B12    mov         eax,dword ptr [ebp-4]
 006A4B15    mov         byte ptr [eax+204],1
 006A4B1C    pop         ecx
 006A4B1D    pop         ecx
 006A4B1E    pop         ebp
 006A4B1F    ret
*}
end;

//006A4B20
procedure sub_006A4B20(?:TFXPPD; ?:Integer);
begin
{*
 006A4B20    push        ebp
 006A4B21    mov         ebp,esp
 006A4B23    add         esp,0FFFFFFF8
 006A4B26    mov         word ptr [ebp-6],dx
 006A4B2A    mov         dword ptr [ebp-4],eax
 006A4B2D    mov         eax,dword ptr [ebp-4]
 006A4B30    mov         ax,word ptr [eax+17D]
 006A4B37    cmp         ax,word ptr [ebp-6]
>006A4B3B    je          006A4B6D
 006A4B3D    movzx       eax,word ptr [ebp-6]
 006A4B41    mov         ecx,438
 006A4B46    xor         edx,edx
 006A4B48    call        004329DC
 006A4B4D    cmp         eax,0FFFF
>006A4B52    jbe         006A4B59
 006A4B54    call        @BoundErr
 006A4B59    mov         edx,dword ptr [ebp-4]
 006A4B5C    mov         word ptr [edx+17D],ax
 006A4B63    mov         eax,dword ptr [ebp-4]
 006A4B66    mov         byte ptr [eax+204],1
 006A4B6D    pop         ecx
 006A4B6E    pop         ecx
 006A4B6F    pop         ebp
 006A4B70    ret
*}
end;

//006A4B74
procedure sub_006A4B74(?:TFXPPD; ?:Boolean);
begin
{*
 006A4B74    push        ebp
 006A4B75    mov         ebp,esp
 006A4B77    add         esp,0FFFFFFF8
 006A4B7A    mov         byte ptr [ebp-5],dl
 006A4B7D    mov         dword ptr [ebp-4],eax
 006A4B80    mov         eax,dword ptr [ebp-4]
 006A4B83    mov         al,byte ptr [eax+182]
 006A4B89    cmp         al,byte ptr [ebp-5]
>006A4B8C    je          006A4BA4
 006A4B8E    mov         al,byte ptr [ebp-5]
 006A4B91    mov         edx,dword ptr [ebp-4]
 006A4B94    mov         byte ptr [edx+182],al
 006A4B9A    mov         eax,dword ptr [ebp-4]
 006A4B9D    mov         byte ptr [eax+204],1
 006A4BA4    pop         ecx
 006A4BA5    pop         ecx
 006A4BA6    pop         ebp
 006A4BA7    ret
*}
end;

//006A4BA8
function TFXPPD.GetBattPackMonitoring(indx:Byte):Boolean;
begin
{*
 006A4BA8    push        ebp
 006A4BA9    mov         ebp,esp
 006A4BAB    add         esp,0FFFFFFF8
 006A4BAE    mov         byte ptr [ebp-5],dl
 006A4BB1    mov         dword ptr [ebp-4],eax
 006A4BB4    xor         eax,eax
 006A4BB6    mov         al,byte ptr [ebp-5]
 006A4BB9    dec         eax
 006A4BBA    cmp         eax,3
>006A4BBD    jbe         006A4BC4
 006A4BBF    call        @BoundErr
 006A4BC4    inc         eax
 006A4BC5    mov         edx,dword ptr [ebp-4]
 006A4BC8    mov         al,byte ptr [edx+eax+182]
 006A4BCF    mov         byte ptr [ebp-6],al
 006A4BD2    mov         al,byte ptr [ebp-6]
 006A4BD5    pop         ecx
 006A4BD6    pop         ecx
 006A4BD7    pop         ebp
 006A4BD8    ret
*}
end;

//006A4BDC
procedure TFXPPD.SetBattPackMonitoring(indx:Byte; Value:Boolean);
begin
{*
 006A4BDC    push        ebp
 006A4BDD    mov         ebp,esp
 006A4BDF    add         esp,0FFFFFFF8
 006A4BE2    mov         byte ptr [ebp-6],cl
 006A4BE5    mov         byte ptr [ebp-5],dl
 006A4BE8    mov         dword ptr [ebp-4],eax
 006A4BEB    xor         eax,eax
 006A4BED    mov         al,byte ptr [ebp-5]
 006A4BF0    dec         eax
 006A4BF1    cmp         eax,3
>006A4BF4    jbe         006A4BFB
 006A4BF6    call        @BoundErr
 006A4BFB    inc         eax
 006A4BFC    mov         edx,dword ptr [ebp-4]
 006A4BFF    mov         al,byte ptr [edx+eax+182]
 006A4C06    cmp         al,byte ptr [ebp-6]
>006A4C09    je          006A4C4B
 006A4C0B    mov         eax,dword ptr [ebp-4]
 006A4C0E    cmp         byte ptr [eax+180],7
>006A4C15    je          006A4C4B
 006A4C17    mov         eax,dword ptr [ebp-4]
 006A4C1A    cmp         byte ptr [eax+180],8
>006A4C21    je          006A4C4B
 006A4C23    xor         eax,eax
 006A4C25    mov         al,byte ptr [ebp-5]
 006A4C28    dec         eax
 006A4C29    cmp         eax,3
>006A4C2C    jbe         006A4C33
 006A4C2E    call        @BoundErr
 006A4C33    inc         eax
 006A4C34    mov         edx,dword ptr [ebp-4]
 006A4C37    mov         cl,byte ptr [ebp-6]
 006A4C3A    mov         byte ptr [edx+eax+182],cl
 006A4C41    mov         eax,dword ptr [ebp-4]
 006A4C44    mov         byte ptr [eax+204],1;TFXPPD.FModified:Boolean
 006A4C4B    pop         ecx
 006A4C4C    pop         ecx
 006A4C4D    pop         ebp
 006A4C4E    ret
*}
end;

//006A4C50
function TFXPPD.UpdateOldPanelData(VersionMajor:Integer; VersionMinor:Integer):Boolean;
begin
{*
 006A4C50    push        ebp
 006A4C51    mov         ebp,esp
 006A4C53    add         esp,0FFFFFFEC
 006A4C56    mov         dword ptr [ebp-0C],ecx
 006A4C59    mov         dword ptr [ebp-8],edx
 006A4C5C    mov         dword ptr [ebp-4],eax
 006A4C5F    mov         byte ptr [ebp-0D],0
 006A4C63    imul        eax,dword ptr [ebp-8],100
>006A4C6A    jno         006A4C71
 006A4C6C    call        @IntOver
 006A4C71    add         eax,dword ptr [ebp-0C]
>006A4C74    jno         006A4C7B
 006A4C76    call        @IntOver
 006A4C7B    mov         dword ptr [ebp-14],eax
 006A4C7E    cmp         dword ptr [ebp-14],300
>006A4C85    jge         006A4D18
 006A4C8B    mov         eax,dword ptr [ebp-4]
 006A4C8E    mov         al,byte ptr [eax+10C]
 006A4C94    sub         al,2
>006A4C96    jne         006A4CBD
 006A4C98    mov         eax,dword ptr [ebp-4]
 006A4C9B    mov         byte ptr [eax+10C],1
 006A4CA2    mov         eax,dword ptr [ebp-4]
 006A4CA5    mov         byte ptr [eax+10D],4
 006A4CAC    mov         eax,dword ptr [ebp-4]
 006A4CAF    mov         byte ptr [eax+10E],1
 006A4CB6    mov         byte ptr ds:[8DF5C0],1;gvar_008DF5C0
 006A4CBD    mov         eax,dword ptr [ebp-4]
 006A4CC0    mov         byte ptr [eax+110],0
 006A4CC7    mov         eax,dword ptr [ebp-4]
 006A4CCA    mov         byte ptr [eax+111],0
 006A4CD1    mov         eax,dword ptr [ebp-4]
 006A4CD4    mov         byte ptr [eax+112],0
 006A4CDB    mov         eax,dword ptr [ebp-4]
 006A4CDE    mov         byte ptr [eax+113],0
 006A4CE5    mov         eax,dword ptr [ebp-4]
 006A4CE8    mov         byte ptr [eax+120],0
 006A4CEF    mov         eax,dword ptr [ebp-4]
 006A4CF2    mov         byte ptr [eax+121],0
 006A4CF9    mov         eax,dword ptr [ebp-4]
 006A4CFC    mov         byte ptr [eax+176],3
 006A4D03    mov         eax,dword ptr [ebp-4]
 006A4D06    mov         byte ptr [eax+175],64
 006A4D0D    mov         byte ptr ds:[8DF5C0],1;gvar_008DF5C0
 006A4D14    mov         byte ptr [ebp-0D],1
 006A4D18    mov         eax,dword ptr [ebp-4]
 006A4D1B    cmp         byte ptr [eax+17B],0
>006A4D22    jne         006A4D45
 006A4D24    mov         eax,dword ptr [ebp-4]
 006A4D27    cmp         byte ptr [eax+17C],1E
>006A4D2E    je          006A4D45
 006A4D30    mov         eax,dword ptr [ebp-4]
 006A4D33    mov         byte ptr [eax+17C],1E
 006A4D3A    mov         byte ptr ds:[8DF5C0],1;gvar_008DF5C0
 006A4D41    mov         byte ptr [ebp-0D],1
 006A4D45    mov         eax,dword ptr [ebp-4]
 006A4D48    cmp         byte ptr [eax+195],0
>006A4D4F    jne         006A4D5F
 006A4D51    mov         eax,dword ptr [ebp-4]
 006A4D54    mov         byte ptr [eax+195],5
 006A4D5B    mov         byte ptr [ebp-0D],1
 006A4D5F    mov         al,byte ptr [ebp-0D]
 006A4D62    mov         esp,ebp
 006A4D64    pop         ebp
 006A4D65    ret
*}
end;

Initialization
Finalization
//006A4D68
{*
 006A4D68    push        ebp
 006A4D69    mov         ebp,esp
 006A4D6B    xor         eax,eax
 006A4D6D    push        ebp
 006A4D6E    push        6A4D99
 006A4D73    push        dword ptr fs:[eax]
 006A4D76    mov         dword ptr fs:[eax],esp
 006A4D79    inc         dword ptr ds:[8DF5C4]
>006A4D7F    jne         006A4D8B
 006A4D81    mov         eax,7C2A14;^'Panel Data encoding error!'
 006A4D86    call        @UStrClr
 006A4D8B    xor         eax,eax
 006A4D8D    pop         edx
 006A4D8E    pop         ecx
 006A4D8F    pop         ecx
 006A4D90    mov         dword ptr fs:[eax],edx
 006A4D93    push        6A4DA0
 006A4D98    ret
>006A4D99    jmp         @HandleFinally
>006A4D9E    jmp         006A4D98
 006A4DA0    pop         ebp
 006A4DA1    ret
*}
end.