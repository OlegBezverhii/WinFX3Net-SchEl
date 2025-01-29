//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit FXEsaFileMergeReport;

interface

uses
  SysUtils, Classes, Vcl.StdActns, Vcl.ComCtrls;

type
  TEsaReport = class(TForm)
  published
    procedure Clear;//006A6A6C
    procedure Add(s:string);//006A6A14
    procedure FormCreate(Sender:TObject);//006A6A80
  public
    ..Memo1:TRichEdit;//f3C0
  end;
  TToolInfoRec = TToolInfoRec = record//size=C
f4:string;//f4
end;
Level:Byte;//f0
VMajor:Byte;//f1
VMinor:Byte;//f2
Licensee:string;//f4
LoopNum:Byte;//f8
end;;
  TDescription = TDescription = record//size=C
f0:AnsiString;//f0
f4:AnsiString;//f4
f8:AnsiString;//f8
end;
Str_1:AnsiString;//f0
Str_2:AnsiString;//f4
Str_3:AnsiString;//f8
end;;
  :TEsaPanelDataRec.:1 = array [1..5] of AnsiString;
  TEsaPanelDataRec = TEsaPanelDataRec = record//size=160
f118::TEsaPanelDataRec.:1;//f118
end;
ComUsage:Byte;//f0
MasterID:Byte;//f1
PanelID:Byte;//f2
FirstLoop:Byte;//f3
FirstZone:Word;//f4
MasterAct:Byte;//f6
GroupDef:Byte;//f7
GroupLp1:Word;//f8
GroupLp2:Word;//fA
GroupLp3:Word;//fC
GroupLp4:Word;//fE
DelayT1:Word;//f10
DelayT2:Word;//f12
InDelay1:Word;//f14
Attenuat:Byte;//f16
Aux1Ctrl:Byte;//f17
Aux2Ctrl:Byte;//f18
Aux3Ctrl:Byte;//f19
ZDisabT:Byte;//f1A
FreeEEMem:Word;//f1C
TextEEMem:Word;//f1E
AddrEEMem:Word;//f20
PanlEEMem:Word;//f22
XtraEEMem:Word;//f24
Project:string50;//f26
PanlDay:Byte;//f59
PanlMonth:Byte;//f5A
PanlYear:Byte;//f5B
PanlHour:Byte;//f5C
PanlMins:Byte;//f5D
PanlVers:Byte;//f5E
PanlLic:string50;//f5F
TextDay:Byte;//f92
TextMonth:Byte;//f93
TextYear:Byte;//f94
TextHour:Byte;//f95
TextMins:Byte;//f96
TextVers:Byte;//f97
TextLic:string50;//f98
AddrDay:Byte;//fCB
AddrMonth:Byte;//fCC
AddrYear:Byte;//fCD
AddrHour:Byte;//fCE
AddrMins:Byte;//fCF
AddrVers:Byte;//fD0
AddrLic:string50;//fD1
ServUsage:Byte;//f104
LastLoop:Byte;//f105
LastZone:Word;//f106
OpCCtrl:Byte;//f108
CountryVersion:Integer;//f10C
PanelLanguage:Integer;//f110
Masters:Word;//f114
InputStrings::TEsaPanelDataRec.:1;//f118
InputContacts:?;//f12C
InputFunctions:?;//f140
OutputFunctions:?;//f154
FireARDelayed:Boolean;//f15C
FireADDelayed:Boolean;//f15D
FireCODelayed:Boolean;//f15E
MasterID2:Byte;//f15F
end;;
    procedure sub_006A82C0(?:TFXIniFile);//006A82C0
    //function sub_006AA7B8(?:?):?;//006AA7B8
    //function sub_006ABD70(?:?; ?:?; ?:?):?;//006ABD70
    //function sub_006AC184(?:?; ?:?):?;//006AC184
    //function sub_006AC208(?:?; ?:?):?;//006AC208
    //function sub_006AC2D8(?:?; ?:?):?;//006AC2D8
    //function sub_006AC2F4(?:TFXPanel):?;//006AC2F4

implementation

{$R *.DFM}

//006A6A14
procedure TEsaReport.Add(s:string);
begin
{*
 006A6A14    push        ebp
 006A6A15    mov         ebp,esp
 006A6A17    push        ecx
 006A6A18    push        ebx
 006A6A19    mov         dword ptr [ebp-4],edx
 006A6A1C    mov         ebx,eax
 006A6A1E    mov         eax,dword ptr [ebp-4]
 006A6A21    call        @UStrAddRef
 006A6A26    xor         eax,eax
 006A6A28    push        ebp
 006A6A29    push        6A6A5E
 006A6A2E    push        dword ptr fs:[eax]
 006A6A31    mov         dword ptr fs:[eax],esp
 006A6A34    mov         eax,dword ptr [ebx+3C0];TEsaReport....Memo1:TRichEdit
 006A6A3A    mov         eax,dword ptr [eax+2E8];TRichEdit.FRichEditStrings:TStrings
 006A6A40    mov         edx,dword ptr [ebp-4]
 006A6A43    mov         ecx,dword ptr [eax]
 006A6A45    call        dword ptr [ecx+3C];TStrings.Add
 006A6A48    xor         eax,eax
 006A6A4A    pop         edx
 006A6A4B    pop         ecx
 006A6A4C    pop         ecx
 006A6A4D    mov         dword ptr fs:[eax],edx
 006A6A50    push        6A6A65
 006A6A55    lea         eax,[ebp-4]
 006A6A58    call        @UStrClr
 006A6A5D    ret
>006A6A5E    jmp         @HandleFinally
>006A6A63    jmp         006A6A55
 006A6A65    pop         ebx
 006A6A66    pop         ecx
 006A6A67    pop         ebp
 006A6A68    ret
*}
end;

//006A6A6C
procedure TEsaReport.Clear;
begin
{*
 006A6A6C    push        esi
 006A6A6D    mov         esi,eax
 006A6A6F    mov         eax,dword ptr [esi+3C0];TEsaReport.....Memo1:TRichEdit
 006A6A75    mov         edx,dword ptr [eax]
 006A6A77    call        dword ptr [edx+124];TCustomRichEdit.Clear
 006A6A7D    pop         esi
 006A6A7E    ret
*}
end;

//006A6A80
procedure TEsaReport.FormCreate(Sender:TObject);
begin
{*
 006A6A80    push        ebp
 006A6A81    mov         ebp,esp
 006A6A83    add         esp,0FFFFFFF0
 006A6A86    push        ebx
 006A6A87    xor         ecx,ecx
 006A6A89    mov         dword ptr [ebp-4],ecx
 006A6A8C    mov         dword ptr [ebp-10],ecx
 006A6A8F    mov         ebx,eax
 006A6A91    xor         eax,eax
 006A6A93    push        ebp
 006A6A94    push        6A6AF3
 006A6A99    push        dword ptr fs:[eax]
 006A6A9C    mov         dword ptr fs:[eax],esp
 006A6A9F    lea         eax,[ebp-4]
 006A6AA2    push        eax
 006A6AA3    lea         edx,[ebp-10]
 006A6AA6    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 006A6AAB    mov         eax,dword ptr [eax]
 006A6AAD    call        005DDC74
 006A6AB2    mov         eax,dword ptr [ebp-10]
 006A6AB5    mov         dword ptr [ebp-0C],eax
 006A6AB8    mov         byte ptr [ebp-8],11
 006A6ABC    lea         edx,[ebp-0C]
 006A6ABF    xor         ecx,ecx
 006A6AC1    mov         eax,6A6B0C;'Esafile merge result (%s)'
 006A6AC6    call        Format
 006A6ACB    mov         edx,dword ptr [ebp-4]
 006A6ACE    mov         eax,ebx
 006A6AD0    call        TControl.SetText
 006A6AD5    xor         eax,eax
 006A6AD7    pop         edx
 006A6AD8    pop         ecx
 006A6AD9    pop         ecx
 006A6ADA    mov         dword ptr fs:[eax],edx
 006A6ADD    push        6A6AFA
 006A6AE2    lea         eax,[ebp-10]
 006A6AE5    call        @UStrClr
 006A6AEA    lea         eax,[ebp-4]
 006A6AED    call        @UStrClr
 006A6AF2    ret
>006A6AF3    jmp         @HandleFinally
>006A6AF8    jmp         006A6AE2
 006A6AFA    pop         ebx
 006A6AFB    mov         esp,ebp
 006A6AFD    pop         ebp
 006A6AFE    ret
*}
end;

//006A82C0
procedure sub_006A82C0(?:TFXIniFile);
begin
{*
 006A82C0    push        ebp
 006A82C1    mov         ebp,esp
 006A82C3    mov         ecx,1B
 006A82C8    push        0
 006A82CA    push        0
 006A82CC    dec         ecx
>006A82CD    jne         006A82C8
 006A82CF    push        ecx
 006A82D0    push        ebx
 006A82D1    push        esi
 006A82D2    push        edi
 006A82D3    mov         ebx,eax
 006A82D5    mov         esi,7C2ACC;^'Zonal Bell Output       '
 006A82DA    xor         eax,eax
 006A82DC    push        ebp
 006A82DD    push        6A8BCC
 006A82E2    push        dword ptr fs:[eax]
 006A82E5    mov         dword ptr fs:[eax],esp
 006A82E8    push        6A8BE8;'General Panel data'
 006A82ED    lea         eax,[ebp-4]
 006A82F0    push        eax
 006A82F1    mov         ecx,6A8C1C;'sGeneralPanelData'
 006A82F6    mov         edx,6A8C4C;'EsaFileImport'
 006A82FB    mov         eax,ebx
 006A82FD    mov         edi,dword ptr [eax]
 006A82FF    call        dword ptr [edi+4]
 006A8302    mov         edx,dword ptr [ebp-4]
 006A8305    mov         eax,7C2A40;^'General Panel data'
 006A830A    call        @UStrAsg
 006A830F    push        6A8C74;'- ESA IO settings need to be set manually in FX'
 006A8314    lea         eax,[ebp-8]
 006A8317    push        eax
 006A8318    mov         ecx,6A8CE0;'sEsaIOSettings'
 006A831D    mov         edx,6A8C4C;'EsaFileImport'
 006A8322    mov         eax,ebx
 006A8324    mov         edi,dword ptr [eax]
 006A8326    call        dword ptr [edi+4]
 006A8329    mov         edx,dword ptr [ebp-8]
 006A832C    mov         eax,7C2A44;^'- ESA IO settings need to be set manually in FX'
 006A8331    call        @UStrAsg
 006A8336    push        6A8D0C;'- ESA ServUsage invalid value (code %d)'
 006A833B    lea         eax,[ebp-0C]
 006A833E    push        eax
 006A833F    mov         ecx,6A8D68;'sEsaServUsageInvalid'
 006A8344    mov         edx,6A8C4C;'EsaFileImport'
 006A8349    mov         eax,ebx
 006A834B    mov         edi,dword ptr [eax]
 006A834D    call        dword ptr [edi+4]
 006A8350    mov         edx,dword ptr [ebp-0C]
 006A8353    mov         eax,7C2A48;^'- ESA ServUsage invalid value (code %d)'
 006A8358    call        @UStrAsg
 006A835D    push        6A8DA0;'- ESA ComUsage invalid value (code %d)'
 006A8362    lea         eax,[ebp-10]
 006A8365    push        eax
 006A8366    mov         ecx,6A8DFC;'sEsaComUsageInvalid'
 006A836B    mov         edx,6A8C4C;'EsaFileImport'
 006A8370    mov         eax,ebx
 006A8372    mov         edi,dword ptr [eax]
 006A8374    call        dword ptr [edi+4]
 006A8377    mov         edx,dword ptr [ebp-10]
 006A837A    mov         eax,7C2A4C;^'- ESA ComUsage invalid value (code %d)'
 006A837F    call        @UStrAsg
 006A8384    push        6A8E30;'- ESA DELAYT1 invalid value (%d)'
 006A8389    lea         eax,[ebp-14]
 006A838C    push        eax
 006A838D    mov         ecx,6A8E80;'sEsaDealyT1Invalid'
 006A8392    mov         edx,6A8C4C;'EsaFileImport'
 006A8397    mov         eax,ebx
 006A8399    mov         edi,dword ptr [eax]
 006A839B    call        dword ptr [edi+4]
 006A839E    mov         edx,dword ptr [ebp-14]
 006A83A1    mov         eax,7C2A50;^'- ESA DELAYT1 invalid value (%d)'
 006A83A6    call        @UStrAsg
 006A83AB    push        6A8EB4;'- ESA DELAYT2 invalid value (%d)'
 006A83B0    lea         eax,[ebp-18]
 006A83B3    push        eax
 006A83B4    mov         ecx,6A8F04;'sEsaDealyT2Invalid'
 006A83B9    mov         edx,6A8C4C;'EsaFileImport'
 006A83BE    mov         eax,ebx
 006A83C0    mov         edi,dword ptr [eax]
 006A83C2    call        dword ptr [edi+4]
 006A83C5    mov         edx,dword ptr [ebp-18]
 006A83C8    mov         eax,7C2A54;^'- ESA DELAYT2 invalid value (%d)'
 006A83CD    call        @UStrAsg
 006A83D2    push        6A8F38;'- ESA PanelLanguage invalid value (code %d)'
 006A83D7    lea         eax,[ebp-1C]
 006A83DA    push        eax
 006A83DB    mov         ecx,6A8F9C;'sEsaLanguageInvalid'
 006A83E0    mov         edx,6A8C4C;'EsaFileImport'
 006A83E5    mov         eax,ebx
 006A83E7    mov         edi,dword ptr [eax]
 006A83E9    call        dword ptr [edi+4]
 006A83EC    mov         edx,dword ptr [ebp-1C]
 006A83EF    mov         eax,7C2A58;^'- ESA PanelLanguage invalid value (code %d)'
 006A83F4    call        @UStrAsg
 006A83F9    push        6A8FD0;'- ESA Max zone disablement time invalid (%d)'
 006A83FE    lea         eax,[ebp-20]
 006A8401    push        eax
 006A8402    mov         ecx,6A9038;'sEsaZoneDisabInvalid'
 006A8407    mov         edx,6A8C4C;'EsaFileImport'
 006A840C    mov         eax,ebx
 006A840E    mov         edi,dword ptr [eax]
 006A8410    call        dword ptr [edi+4]
 006A8413    mov         edx,dword ptr [ebp-20]
 006A8416    mov         eax,7C2A5C;^'- ESA Max zone disablement time invalid (%d)'
 006A841B    call        @UStrAsg
 006A8420    push        6A9070;'- Seeing - Visible panel relations need to be set'
 006A8425    lea         eax,[ebp-24]
 006A8428    push        eax
 006A8429    mov         ecx,6A90E0;'sSeeingVisibleToBeSet'
 006A842E    mov         edx,6A8C4C;'EsaFileImport'
 006A8433    mov         eax,ebx
 006A8435    mov         edi,dword ptr [eax]
 006A8437    call        dword ptr [edi+4]
 006A843A    mov         edx,dword ptr [ebp-24]
 006A843D    mov         eax,7C2A60;^'- Seeing - Visible panel relations need to be set'
 006A8442    call        @UStrAsg
 006A8447    push        6A9118;'Address point data'
 006A844C    lea         eax,[ebp-28]
 006A844F    push        eax
 006A8450    mov         ecx,6A914C;'sAddressPointData'
 006A8455    mov         edx,6A8C4C;'EsaFileImport'
 006A845A    mov         eax,ebx
 006A845C    mov         edi,dword ptr [eax]
 006A845E    call        dword ptr [edi+4]
 006A8461    mov         edx,dword ptr [ebp-28]
 006A8464    mov         eax,7C2A64;^'Address point data'
 006A8469    call        @UStrAsg
 006A846E    push        6A917C;'- CtrlA, CtrlB, CtrlB2 and Control Groups might need to be set for addresses'
 006A8473    lea         eax,[ebp-2C]
 006A8476    push        eax
 006A8477    mov         ecx,6A9224;'sCtrlAandCtrlB'
 006A847C    mov         edx,6A8C4C;'EsaFileImport'
 006A8481    mov         eax,ebx
 006A8483    mov         edi,dword ptr [eax]
 006A8485    call        dword ptr [edi+4]
 006A8488    mov         edx,dword ptr [ebp-2C]
 006A848B    mov         eax,7C2A68;^'- CtrlA, CtrlB, CtrlB2 and Control Groups might need to be set for addresse...
 006A8490    call        @UStrAsg
 006A8495    push        6A9250;'- %.2d.%.3d removed, unknown address type (code %d)'
 006A849A    lea         eax,[ebp-30]
 006A849D    push        eax
 006A849E    mov         ecx,6A92C4;'sRemovedUnknAPType'
 006A84A3    mov         edx,6A8C4C;'EsaFileImport'
 006A84A8    mov         eax,ebx
 006A84AA    mov         edi,dword ptr [eax]
 006A84AC    call        dword ptr [edi+4]
 006A84AF    mov         edx,dword ptr [ebp-30]
 006A84B2    mov         eax,7C2A6C;^'- %.2d.%.3d removed, unknown address type (code %d)'
 006A84B7    call        @UStrAsg
 006A84BC    push        6A92F8;'- %.2d.%.3d invalid output function (code %d)'
 006A84C1    lea         eax,[ebp-34]
 006A84C4    push        eax
 006A84C5    mov         ecx,6A9360;'sInvalidOutFunc'
 006A84CA    mov         edx,6A8C4C;'EsaFileImport'
 006A84CF    mov         eax,ebx
 006A84D1    mov         edi,dword ptr [eax]
 006A84D3    call        dword ptr [edi+4]
 006A84D6    mov         edx,dword ptr [ebp-34]
 006A84D9    mov         eax,7C2A70;^'- %.2d.%.3d invalid output function (code %d)'
 006A84DE    call        @UStrAsg
 006A84E3    push        6A938C;'- %.2d.%.3d removed, unknown input function (code %d)'
 006A84E8    lea         eax,[ebp-38]
 006A84EB    push        eax
 006A84EC    mov         ecx,6A9404;'sRemovedUnknInpFunc'
 006A84F1    mov         edx,6A8C4C;'EsaFileImport'
 006A84F6    mov         eax,ebx
 006A84F8    mov         edi,dword ptr [eax]
 006A84FA    call        dword ptr [edi+4]
 006A84FD    mov         edx,dword ptr [ebp-38]
 006A8500    mov         eax,7C2A74;^'- %.2d.%.3d removed, unknown input function (code %d)'
 006A8505    call        @UStrAsg
 006A850A    push        6A9438;'- %.2d.%.3d removed, incompatible input function (was %s)'
 006A850F    lea         eax,[ebp-3C]
 006A8512    push        eax
 006A8513    mov         ecx,6A94B8;'sRemovedIncInpFunc'
 006A8518    mov         edx,6A8C4C;'EsaFileImport'
 006A851D    mov         eax,ebx
 006A851F    mov         edi,dword ptr [eax]
 006A8521    call        dword ptr [edi+4]
 006A8524    mov         edx,dword ptr [ebp-3C]
 006A8527    mov         eax,7C2A78;^'- %.2d.%.3d removed, incompatible input function (was %s)'
 006A852C    call        @UStrAsg
 006A8531    push        6A94EC;'- %.2d.%.3d = %s (was %s)'
 006A8536    lea         eax,[ebp-40]
 006A8539    push        eax
 006A853A    mov         ecx,6A952C;'sInpFunctionSetTo'
 006A853F    mov         edx,6A8C4C;'EsaFileImport'
 006A8544    mov         eax,ebx
 006A8546    mov         edi,dword ptr [eax]
 006A8548    call        dword ptr [edi+4]
 006A854B    mov         edx,dword ptr [ebp-40]
 006A854E    mov         eax,7C2A7C;^'- %.2d.%.3d = %s (was %s)'
 006A8553    call        @UStrAsg
 006A8558    push        6A955C;'- %.2d.%.3d removed, unknown output function (code %d)'
 006A855D    lea         eax,[ebp-44]
 006A8560    push        eax
 006A8561    mov         ecx,6A95D8;'sRemovedUnknOutFunc'
 006A8566    mov         edx,6A8C4C;'EsaFileImport'
 006A856B    mov         eax,ebx
 006A856D    mov         edi,dword ptr [eax]
 006A856F    call        dword ptr [edi+4]
 006A8572    mov         edx,dword ptr [ebp-44]
 006A8575    mov         eax,7C2A80;^'- %.2d.%.3d removed, unknown output function (code %d)'
 006A857A    call        @UStrAsg
 006A857F    push        6A960C;'- %.2d.%.3d removed, incompatible output function (was %s)'
 006A8584    lea         eax,[ebp-48]
 006A8587    push        eax
 006A8588    mov         ecx,6A9690;'sRemovedIncOutFunc'
 006A858D    mov         edx,6A8C4C;'EsaFileImport'
 006A8592    mov         eax,ebx
 006A8594    mov         edi,dword ptr [eax]
 006A8596    call        dword ptr [edi+4]
 006A8599    mov         edx,dword ptr [ebp-48]
 006A859C    mov         eax,7C2A84;^'- %.2d.%.3d removed, incompatible output function (was %s)'
 006A85A1    call        @UStrAsg
 006A85A6    push        6A94EC;'- %.2d.%.3d = %s (was %s)'
 006A85AB    lea         eax,[ebp-4C]
 006A85AE    push        eax
 006A85AF    mov         ecx,6A96C4;'sOutFunctionSetTo'
 006A85B4    mov         edx,6A8C4C;'EsaFileImport'
 006A85B9    mov         eax,ebx
 006A85BB    mov         edi,dword ptr [eax]
 006A85BD    call        dword ptr [edi+4]
 006A85C0    mov         edx,dword ptr [ebp-4C]
 006A85C3    mov         eax,7C2A88;^'- %.2d.%.3d = %s (was %s)'
 006A85C8    call        @UStrAsg
 006A85CD    push        6A96F4;'- %.2d.%.3d removed, unknown CZ module function (code %d)'
 006A85D2    lea         eax,[ebp-50]
 006A85D5    push        eax
 006A85D6    mov         ecx,6A9774;'sRemovedUnknCzFunc'
 006A85DB    mov         edx,6A8C4C;'EsaFileImport'
 006A85E0    mov         eax,ebx
 006A85E2    mov         edi,dword ptr [eax]
 006A85E4    call        dword ptr [edi+4]
 006A85E7    mov         edx,dword ptr [ebp-50]
 006A85EA    mov         eax,7C2A8C;^'- %.2d.%.3d removed, unknown CZ module function (code %d)'
 006A85EF    call        @UStrAsg
 006A85F4    push        6A94EC;'- %.2d.%.3d = %s (was %s)'
 006A85F9    lea         eax,[ebp-54]
 006A85FC    push        eax
 006A85FD    mov         ecx,6A97A8;'sCzFunctionSetTo'
 006A8602    mov         edx,6A8C4C;'EsaFileImport'
 006A8607    mov         eax,ebx
 006A8609    mov         edi,dword ptr [eax]
 006A860B    call        dword ptr [edi+4]
 006A860E    mov         edx,dword ptr [ebp-54]
 006A8611    mov         eax,7C2A90;^'- %.2d.%.3d = %s (was %s)'
 006A8616    call        @UStrAsg
 006A861B    push        6A97D8;'- %.2d.%.3d Mode = Normal, unknown mode value (code %d)'
 006A8620    lea         eax,[ebp-58]
 006A8623    push        eax
 006A8624    mov         ecx,6A9854;'sNormalModeUnknValue'
 006A8629    mov         edx,6A8C4C;'EsaFileImport'
 006A862E    mov         eax,ebx
 006A8630    mov         edi,dword ptr [eax]
 006A8632    call        dword ptr [edi+4]
 006A8635    mov         edx,dword ptr [ebp-58]
 006A8638    mov         eax,7C2A94;^'- %.2d.%.3d Mode = Normal, unknown mode value (code %d)'
 006A863D    call        @UStrAsg
 006A8642    push        6A988C;'- %.2d.%.3d Output control group set to Local'
 006A8647    lea         eax,[ebp-5C]
 006A864A    push        eax
 006A864B    mov         ecx,6A98F4;'sOutCtrlGroupLocal'
 006A8650    mov         edx,6A8C4C;'EsaFileImport'
 006A8655    mov         eax,ebx
 006A8657    mov         edi,dword ptr [eax]
 006A8659    call        dword ptr [edi+4]
 006A865C    mov         edx,dword ptr [ebp-5C]
 006A865F    mov         eax,7C2A98;^'- %.2d.%.3d Output control group set to Local'
 006A8664    call        @UStrAsg
 006A8669    push        6A9928;'- %.2d.%.3d Output control group set to General'
 006A866E    lea         eax,[ebp-60]
 006A8671    push        eax
 006A8672    mov         ecx,6A9994;'sOutCtrlGroupGeneral'
 006A8677    mov         edx,6A8C4C;'EsaFileImport'
 006A867C    mov         eax,ebx
 006A867E    mov         edi,dword ptr [eax]
 006A8680    call        dword ptr [edi+4]
 006A8683    mov         edx,dword ptr [ebp-60]
 006A8686    mov         eax,7C2A9C;^'- %.2d.%.3d Output control group set to General'
 006A868B    call        @UStrAsg
 006A8690    push        6A99CC;'Manual CP/Al''m Switch   '
 006A8695    lea         eax,[ebp-64]
 006A8698    push        eax
 006A8699    mov         ecx,6A9A0C;'sEsaInpCPorAlmSw'
 006A869E    mov         edx,6A9A3C;'EsaInpStrings'
 006A86A3    mov         eax,ebx
 006A86A5    mov         edi,dword ptr [eax]
 006A86A7    call        dword ptr [edi+4]
 006A86AA    mov         edx,dword ptr [ebp-64]
 006A86AD    mov         eax,7C2AA0;^'Manual CP/Al''m Switch   '
 006A86B2    call        @UStrAsg
 006A86B7    push        6A9A64;'Manual Call Point       '
 006A86BC    lea         eax,[ebp-68]
 006A86BF    push        eax
 006A86C0    mov         ecx,6A9AA4;'sEsaInpCallPoint'
 006A86C5    mov         edx,6A9A3C;'EsaInpStrings'
 006A86CA    mov         eax,ebx
 006A86CC    mov         edi,dword ptr [eax]
 006A86CE    call        dword ptr [edi+4]
 006A86D1    mov         edx,dword ptr [ebp-68]
 006A86D4    mov         eax,7C2AA4;^'Manual Call Point       '
 006A86D9    call        @UStrAsg
 006A86DE    push        6A9AD4;'Beam detector           '
 006A86E3    lea         eax,[ebp-6C]
 006A86E6    push        eax
 006A86E7    mov         ecx,6A9B14;'sEsaInpBeamDet'
 006A86EC    mov         edx,6A9A3C;'EsaInpStrings'
 006A86F1    mov         eax,ebx
 006A86F3    mov         edi,dword ptr [eax]
 006A86F5    call        dword ptr [edi+4]
 006A86F8    mov         edx,dword ptr [ebp-6C]
 006A86FB    mov         eax,7C2AA8;^'Beam detector           '
 006A8700    call        @UStrAsg
 006A8705    push        6A9B40;'Conv. Heat Detector     '
 006A870A    lea         eax,[ebp-70]
 006A870D    push        eax
 006A870E    mov         ecx,6A9B80;'sEsaInpConvHeat'
 006A8713    mov         edx,6A9A3C;'EsaInpStrings'
 006A8718    mov         eax,ebx
 006A871A    mov         edi,dword ptr [eax]
 006A871C    call        dword ptr [edi+4]
 006A871F    mov         edx,dword ptr [ebp-70]
 006A8722    mov         eax,7C2AAC;^'Conv. Heat Detector     '
 006A8727    call        @UStrAsg
 006A872C    push        6A9BAC;'Fire Alarm Input        '
 006A8731    lea         eax,[ebp-74]
 006A8734    push        eax
 006A8735    mov         ecx,6A9BEC;'sEsaInpFireAlarm'
 006A873A    mov         edx,6A9A3C;'EsaInpStrings'
 006A873F    mov         eax,ebx
 006A8741    mov         edi,dword ptr [eax]
 006A8743    call        dword ptr [edi+4]
 006A8746    mov         edx,dword ptr [ebp-74]
 006A8749    mov         eax,7C2AB0;^'Fire Alarm Input        '
 006A874E    call        @UStrAsg
 006A8753    push        6A9C1C;'Prealarm Input          '
 006A8758    lea         eax,[ebp-78]
 006A875B    push        eax
 006A875C    mov         ecx,6A9C5C;'sEsaInpPrealarm'
 006A8761    mov         edx,6A9A3C;'EsaInpStrings'
 006A8766    mov         eax,ebx
 006A8768    mov         edi,dword ptr [eax]
 006A876A    call        dword ptr [edi+4]
 006A876D    mov         edx,dword ptr [ebp-78]
 006A8770    mov         eax,7C2AB4;^'Prealarm Input          '
 006A8775    call        @UStrAsg
 006A877A    push        6A9C88;'Fault Warning Input     '
 006A877F    lea         eax,[ebp-7C]
 006A8782    push        eax
 006A8783    mov         ecx,6A9CC8;'sEsaInpFaultAlarm'
 006A8788    mov         edx,6A9A3C;'EsaInpStrings'
 006A878D    mov         eax,ebx
 006A878F    mov         edi,dword ptr [eax]
 006A8791    call        dword ptr [edi+4]
 006A8794    mov         edx,dword ptr [ebp-7C]
 006A8797    mov         eax,7C2AB8;^'Fault Warning Input     '
 006A879C    call        @UStrAsg
 006A87A1    push        6A9CF8;'Maintenance Input       '
 006A87A6    lea         eax,[ebp-80]
 006A87A9    push        eax
 006A87AA    mov         ecx,6A9D38;'sEsaInpServAlarm'
 006A87AF    mov         edx,6A9A3C;'EsaInpStrings'
 006A87B4    mov         eax,ebx
 006A87B6    mov         edi,dword ptr [eax]
 006A87B8    call        dword ptr [edi+4]
 006A87BB    mov         edx,dword ptr [ebp-80]
 006A87BE    mov         eax,7C2ABC;^'Maintenance Input       '
 006A87C3    call        @UStrAsg
 006A87C8    push        6A9D68;'Zone Disablement Input  '
 006A87CD    lea         eax,[ebp-84]
 006A87D3    push        eax
 006A87D4    mov         ecx,6A9DA8;'sEsaInpZoneDisab'
 006A87D9    mov         edx,6A9A3C;'EsaInpStrings'
 006A87DE    mov         eax,ebx
 006A87E0    mov         edi,dword ptr [eax]
 006A87E2    call        dword ptr [edi+4]
 006A87E5    mov         edx,dword ptr [ebp-84]
 006A87EB    mov         eax,7C2AC0;^'Zone Disablement Input  '
 006A87F0    call        @UStrAsg
 006A87F5    push        6A9DD8;'Logic Control Input     '
 006A87FA    lea         eax,[ebp-88]
 006A8800    push        eax
 006A8801    mov         ecx,6A9E18;'sEsaInpCtrlInput'
 006A8806    mov         edx,6A9A3C;'EsaInpStrings'
 006A880B    mov         eax,ebx
 006A880D    mov         edi,dword ptr [eax]
 006A880F    call        dword ptr [edi+4]
 006A8812    mov         edx,dword ptr [ebp-88]
 006A8818    mov         eax,7C2AC4;^'Logic Control Input     '
 006A881D    call        @UStrAsg
 006A8822    push        6A9E48;'Day Mode Activation Inp.'
 006A8827    lea         eax,[ebp-8C]
 006A882D    push        eax
 006A882E    mov         ecx,6A9E88;'sEsaInpDayMInput'
 006A8833    mov         edx,6A9A3C;'EsaInpStrings'
 006A8838    mov         eax,ebx
 006A883A    mov         edi,dword ptr [eax]
 006A883C    call        dword ptr [edi+4]
 006A883F    mov         edx,dword ptr [ebp-8C]
 006A8845    mov         eax,7C2AC8;^'Day Mode Activation Inp.'
 006A884A    call        @UStrAsg
 006A884F    push        6A9EB8;'Zonal Bell Output       '
 006A8854    lea         eax,[ebp-90]
 006A885A    push        eax
 006A885B    mov         ecx,6A9EF8;'sEsaOutZBellCtrl'
 006A8860    mov         edx,6A9F28;'EsaOutStrings'
 006A8865    mov         eax,ebx
 006A8867    mov         edi,dword ptr [eax]
 006A8869    call        dword ptr [edi+4]
 006A886C    mov         edx,dword ptr [ebp-90]
 006A8872    mov         eax,esi
 006A8874    call        @UStrAsg
 006A8879    push        6A9F50;'Zonal Fire Output       '
 006A887E    lea         eax,[ebp-94]
 006A8884    push        eax
 006A8885    mov         ecx,6A9F90;'sEsaOutZFireCtrl'
 006A888A    mov         edx,6A9F28;'EsaOutStrings'
 006A888F    mov         eax,ebx
 006A8891    mov         edi,dword ptr [eax]
 006A8893    call        dword ptr [edi+4]
 006A8896    mov         edx,dword ptr [ebp-94]
 006A889C    lea         eax,[esi+4]
 006A889F    call        @UStrAsg
 006A88A4    push        6A9FC0;'Zonal Prealarm Output   '
 006A88A9    lea         eax,[ebp-98]
 006A88AF    push        eax
 006A88B0    mov         ecx,6AA000;'sEsaOutZPreaCtrl'
 006A88B5    mov         edx,6A9F28;'EsaOutStrings'
 006A88BA    mov         eax,ebx
 006A88BC    mov         edi,dword ptr [eax]
 006A88BE    call        dword ptr [edi+4]
 006A88C1    mov         edx,dword ptr [ebp-98]
 006A88C7    lea         eax,[esi+8]
 006A88CA    call        @UStrAsg
 006A88CF    push        6AA030;'Zonal Fault Output      '
 006A88D4    lea         eax,[ebp-9C]
 006A88DA    push        eax
 006A88DB    mov         ecx,6AA070;'sEsaOutZFaulCtrl'
 006A88E0    mov         edx,6A9F28;'EsaOutStrings'
 006A88E5    mov         eax,ebx
 006A88E7    mov         edi,dword ptr [eax]
 006A88E9    call        dword ptr [edi+4]
 006A88EC    mov         edx,dword ptr [ebp-9C]
 006A88F2    lea         eax,[esi+0C]
 006A88F5    call        @UStrAsg
 006A88FA    push        6AA0A0;'Zonal Maintenance Output'
 006A88FF    lea         eax,[ebp-0A0]
 006A8905    push        eax
 006A8906    mov         ecx,6AA0E0;'sEsaOutZServCtrl'
 006A890B    mov         edx,6A9F28;'EsaOutStrings'
 006A8910    mov         eax,ebx
 006A8912    mov         edi,dword ptr [eax]
 006A8914    call        dword ptr [edi+4]
 006A8917    mov         edx,dword ptr [ebp-0A0]
 006A891D    lea         eax,[esi+10]
 006A8920    call        @UStrAsg
 006A8925    push        6AA110;'Zonal Fire Door Control '
 006A892A    lea         eax,[ebp-0A4]
 006A8930    push        eax
 006A8931    mov         ecx,6AA150;'sEsaOutZDoorCtrl'
 006A8936    mov         edx,6A9F28;'EsaOutStrings'
 006A893B    mov         eax,ebx
 006A893D    mov         edi,dword ptr [eax]
 006A893F    call        dword ptr [edi+4]
 006A8942    mov         edx,dword ptr [ebp-0A4]
 006A8948    lea         eax,[esi+14]
 006A894B    call        @UStrAsg
 006A8950    push        6AA180;'General Bell Output     '
 006A8955    lea         eax,[ebp-0A8]
 006A895B    push        eax
 006A895C    mov         ecx,6AA1C0;'sEsaOutGBellCtrl'
 006A8961    mov         edx,6A9F28;'EsaOutStrings'
 006A8966    mov         eax,ebx
 006A8968    mov         edi,dword ptr [eax]
 006A896A    call        dword ptr [edi+4]
 006A896D    mov         edx,dword ptr [ebp-0A8]
 006A8973    lea         eax,[esi+18]
 006A8976    call        @UStrAsg
 006A897B    push        6AA1F0;'General Fire Output     '
 006A8980    lea         eax,[ebp-0AC]
 006A8986    push        eax
 006A8987    mov         ecx,6AA230;'sEsaOutGFireCtrl'
 006A898C    mov         edx,6A9F28;'EsaOutStrings'
 006A8991    mov         eax,ebx
 006A8993    mov         edi,dword ptr [eax]
 006A8995    call        dword ptr [edi+4]
 006A8998    mov         edx,dword ptr [ebp-0AC]
 006A899E    lea         eax,[esi+1C]
 006A89A1    call        @UStrAsg
 006A89A6    push        6AA260;'General Prealarm Output '
 006A89AB    lea         eax,[ebp-0B0]
 006A89B1    push        eax
 006A89B2    mov         ecx,6AA2A0;'sEsaOutGPreaCtrl'
 006A89B7    mov         edx,6A9F28;'EsaOutStrings'
 006A89BC    mov         eax,ebx
 006A89BE    mov         edi,dword ptr [eax]
 006A89C0    call        dword ptr [edi+4]
 006A89C3    mov         edx,dword ptr [ebp-0B0]
 006A89C9    lea         eax,[esi+20]
 006A89CC    call        @UStrAsg
 006A89D1    push        6AA2D0;'General Fault Output    '
 006A89D6    lea         eax,[ebp-0B4]
 006A89DC    push        eax
 006A89DD    mov         ecx,6AA310;'sEsaOutGFaulCtrl'
 006A89E2    mov         edx,6A9F28;'EsaOutStrings'
 006A89E7    mov         eax,ebx
 006A89E9    mov         edi,dword ptr [eax]
 006A89EB    call        dword ptr [edi+4]
 006A89EE    mov         edx,dword ptr [ebp-0B4]
 006A89F4    lea         eax,[esi+24]
 006A89F7    call        @UStrAsg
 006A89FC    push        6AA340;'General Maintenance Outp'
 006A8A01    lea         eax,[ebp-0B8]
 006A8A07    push        eax
 006A8A08    mov         ecx,6AA380;'sEsaOutGServCtrl'
 006A8A0D    mov         edx,6A9F28;'EsaOutStrings'
 006A8A12    mov         eax,ebx
 006A8A14    mov         edi,dword ptr [eax]
 006A8A16    call        dword ptr [edi+4]
 006A8A19    mov         edx,dword ptr [ebp-0B8]
 006A8A1F    lea         eax,[esi+28]
 006A8A22    call        @UStrAsg
 006A8A27    push        6AA3B0;'General Fire Door Contrl'
 006A8A2C    lea         eax,[ebp-0BC]
 006A8A32    push        eax
 006A8A33    mov         ecx,6AA3F0;'sEsaOutGDoorCtrl'
 006A8A38    mov         edx,6A9F28;'EsaOutStrings'
 006A8A3D    mov         eax,ebx
 006A8A3F    mov         edi,dword ptr [eax]
 006A8A41    call        dword ptr [edi+4]
 006A8A44    mov         edx,dword ptr [ebp-0BC]
 006A8A4A    lea         eax,[esi+2C]
 006A8A4D    call        @UStrAsg
 006A8A52    push        6AA420;'Zonal BeamDetector Reset'
 006A8A57    lea         eax,[ebp-0C0]
 006A8A5D    push        eax
 006A8A5E    mov         ecx,6AA460;'sEsaOutZBeamRset'
 006A8A63    mov         edx,6A9F28;'EsaOutStrings'
 006A8A68    mov         eax,ebx
 006A8A6A    mov         edi,dword ptr [eax]
 006A8A6C    call        dword ptr [edi+4]
 006A8A6F    mov         edx,dword ptr [ebp-0C0]
 006A8A75    lea         eax,[esi+30]
 006A8A78    call        @UStrAsg
 006A8A7D    push        6AA490;'General BeamDetect Reset'
 006A8A82    lea         eax,[ebp-0C4]
 006A8A88    push        eax
 006A8A89    mov         ecx,6AA4D0;'sEsaOutGBeamRset'
 006A8A8E    mov         edx,6A9F28;'EsaOutStrings'
 006A8A93    mov         eax,ebx
 006A8A95    mov         edi,dword ptr [eax]
 006A8A97    call        dword ptr [edi+4]
 006A8A9A    mov         edx,dword ptr [ebp-0C4]
 006A8AA0    lea         eax,[esi+34]
 006A8AA3    call        @UStrAsg
 006A8AA8    push        6AA500;'Subloop Control Unit    '
 006A8AAD    lea         eax,[ebp-0C8]
 006A8AB3    push        eax
 006A8AB4    mov         ecx,6AA540;'sEsaOutSublpunit'
 006A8AB9    mov         edx,6A9F28;'EsaOutStrings'
 006A8ABE    mov         eax,ebx
 006A8AC0    mov         edi,dword ptr [eax]
 006A8AC2    call        dword ptr [edi+4]
 006A8AC5    mov         edx,dword ptr [ebp-0C8]
 006A8ACB    lea         eax,[esi+38]
 006A8ACE    call        @UStrAsg
 006A8AD3    push        6AA570;'Logic Control Output    '
 006A8AD8    lea         eax,[ebp-0CC]
 006A8ADE    push        eax
 006A8ADF    mov         ecx,6AA5B0;'sEsaOutLocalCtrl'
 006A8AE4    mov         edx,6A9F28;'EsaOutStrings'
 006A8AE9    mov         eax,ebx
 006A8AEB    mov         edi,dword ptr [eax]
 006A8AED    call        dword ptr [edi+4]
 006A8AF0    mov         edx,dword ptr [ebp-0CC]
 006A8AF6    lea         eax,[esi+3C]
 006A8AF9    call        @UStrAsg
 006A8AFE    push        6AA5E0;'External Control Output '
 006A8B03    lea         eax,[ebp-0D0]
 006A8B09    push        eax
 006A8B0A    mov         ecx,6AA620;'sEsaOutMastrCtrl'
 006A8B0F    mov         edx,6A9F28;'EsaOutStrings'
 006A8B14    mov         eax,ebx
 006A8B16    mov         edi,dword ptr [eax]
 006A8B18    call        dword ptr [edi+4]
 006A8B1B    mov         edx,dword ptr [ebp-0D0]
 006A8B21    lea         eax,[esi+40]
 006A8B24    call        @UStrAsg
 006A8B29    push        6AA650;'General Silent Al''m Outp'
 006A8B2E    lea         eax,[ebp-0D4]
 006A8B34    push        eax
 006A8B35    mov         ecx,6AA690;'sEsaOutGSilnCtrl'
 006A8B3A    mov         edx,6A9F28;'EsaOutStrings'
 006A8B3F    mov         eax,ebx
 006A8B41    mov         edi,dword ptr [eax]
 006A8B43    call        dword ptr [edi+4]
 006A8B46    mov         edx,dword ptr [ebp-0D4]
 006A8B4C    lea         eax,[esi+44]
 006A8B4F    call        @UStrAsg
 006A8B54    push        6AA6C0;'Conventional Zone       '
 006A8B59    lea         eax,[ebp-0D8]
 006A8B5F    push        eax
 006A8B60    mov         ecx,6AA700;'sEsaConventZone'
 006A8B65    mov         edx,6AA72C;'EsaCzmStrings'
 006A8B6A    mov         eax,ebx
 006A8B6C    mov         esi,dword ptr [eax]
 006A8B6E    call        dword ptr [esi+4]
 006A8B71    mov         edx,dword ptr [ebp-0D8]
 006A8B77    mov         eax,7C2B14;^'Conventional Zone       '
 006A8B7C    call        @UStrAsg
 006A8B81    push        6AA754;'Conv. Beam Detector     '
 006A8B86    lea         eax,[ebp-0DC]
 006A8B8C    push        eax
 006A8B8D    mov         ecx,6AA794;'sEsaBeamDetector'
 006A8B92    mov         edx,6AA72C;'EsaCzmStrings'
 006A8B97    mov         eax,ebx
 006A8B99    mov         ebx,dword ptr [eax]
 006A8B9B    call        dword ptr [ebx+4]
 006A8B9E    mov         edx,dword ptr [ebp-0DC]
 006A8BA4    mov         eax,7C2B18;^'Conv. Beam Detector     '
 006A8BA9    call        @UStrAsg
 006A8BAE    xor         eax,eax
 006A8BB0    pop         edx
 006A8BB1    pop         ecx
 006A8BB2    pop         ecx
 006A8BB3    mov         dword ptr fs:[eax],edx
 006A8BB6    push        6A8BD3
 006A8BBB    lea         eax,[ebp-0DC]
 006A8BC1    mov         edx,37
 006A8BC6    call        @UStrArrayClr
 006A8BCB    ret
>006A8BCC    jmp         @HandleFinally
>006A8BD1    jmp         006A8BBB
 006A8BD3    pop         edi
 006A8BD4    pop         esi
 006A8BD5    pop         ebx
 006A8BD6    mov         esp,ebp
 006A8BD8    pop         ebp
 006A8BD9    ret
*}
end;

//006AA7B8
{*function sub_006AA7B8(?:?):?;
begin
 006AA7B8    push        ebp
 006AA7B9    mov         ebp,esp
 006AA7BB    mov         ecx,8F
 006AA7C0    push        0
 006AA7C2    push        0
 006AA7C4    dec         ecx
>006AA7C5    jne         006AA7C0
 006AA7C7    push        ebx
 006AA7C8    push        esi
 006AA7C9    push        edi
 006AA7CA    mov         dword ptr [ebp-4],eax
 006AA7CD    mov         eax,dword ptr [ebp-4]
 006AA7D0    call        @UStrAddRef
 006AA7D5    mov         esi,8DF5EC;gvar_008DF5EC:AnsiString
 006AA7DA    xor         eax,eax
 006AA7DC    push        ebp
 006AA7DD    push        6AB62B
 006AA7E2    push        dword ptr fs:[eax]
 006AA7E5    mov         dword ptr fs:[eax],esp
 006AA7E8    mov         ecx,dword ptr [ebp-4]
 006AA7EB    mov         dl,1
 006AA7ED    mov         eax,[005D6804];TFXIniFile
 006AA7F2    call        TCustomIniFile.Create;TFXIniFile.Create
 006AA7F7    mov         dword ptr [ebp-0C],eax
 006AA7FA    xor         eax,eax
 006AA7FC    push        ebp
 006AA7FD    push        6AAFBB
 006AA802    push        dword ptr fs:[eax]
 006AA805    mov         dword ptr fs:[eax],esp
 006AA808    push        0
 006AA80A    mov         ecx,6AB648;'LEVEL'
 006AA80F    mov         edx,6AB660;'TOOL'
 006AA814    mov         eax,dword ptr [ebp-0C]
 006AA817    mov         ebx,dword ptr [eax]
 006AA819    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AA81C    cmp         eax,0FF
>006AA821    jbe         006AA828
 006AA823    call        @BoundErr
 006AA828    mov         [008DF5E0],al;gvar_008DF5E0:Integer
 006AA82D    push        0
 006AA82F    mov         ecx,6AB678;'VERSION_1'
 006AA834    mov         edx,6AB660;'TOOL'
 006AA839    mov         eax,dword ptr [ebp-0C]
 006AA83C    mov         ebx,dword ptr [eax]
 006AA83E    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AA841    cmp         eax,0FF
>006AA846    jbe         006AA84D
 006AA848    call        @BoundErr
 006AA84D    mov         [008DF5E1],al;gvar_008DF5E1:Integer
 006AA852    push        0
 006AA854    mov         ecx,6AB698;'VERSION_2'
 006AA859    mov         edx,6AB660;'TOOL'
 006AA85E    mov         eax,dword ptr [ebp-0C]
 006AA861    mov         ebx,dword ptr [eax]
 006AA863    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AA866    cmp         eax,0FF
>006AA86B    jbe         006AA872
 006AA86D    call        @BoundErr
 006AA872    mov         [008DF5E2],al;gvar_008DF5E2:Integer
 006AA877    push        6AB6B8;'Unknown'
 006AA87C    lea         eax,[ebp-354]
 006AA882    push        eax
 006AA883    mov         ecx,6AB6D4;'LICENSEE'
 006AA888    mov         edx,6AB660;'TOOL'
 006AA88D    mov         eax,dword ptr [ebp-0C]
 006AA890    mov         ebx,dword ptr [eax]
 006AA892    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006AA895    mov         edx,dword ptr [ebp-354]
 006AA89B    mov         eax,8DF5E4;gvar_008DF5E4:UnicodeString
 006AA8A0    call        @UStrAsg
 006AA8A5    push        0
 006AA8A7    mov         ecx,6AB6F4;'LOOPNUM'
 006AA8AC    mov         edx,6AB660;'TOOL'
 006AA8B1    mov         eax,dword ptr [ebp-0C]
 006AA8B4    mov         ebx,dword ptr [eax]
 006AA8B6    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AA8B9    cmp         eax,0FF
>006AA8BE    jbe         006AA8C5
 006AA8C0    call        @BoundErr
 006AA8C5    mov         [008DF5E8],al;gvar_008DF5E8:Integer
 006AA8CA    push        0
 006AA8CC    lea         eax,[ebp-358]
 006AA8D2    push        eax
 006AA8D3    mov         ecx,6AB710;'DESCRIPT_1'
 006AA8D8    mov         edx,6AB734;'DESCRIPTION'
 006AA8DD    mov         eax,dword ptr [ebp-0C]
 006AA8E0    mov         ebx,dword ptr [eax]
 006AA8E2    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006AA8E5    mov         edx,dword ptr [ebp-358]
 006AA8EB    mov         eax,esi
 006AA8ED    mov         ecx,0
 006AA8F2    call        @LStrFromUStr
 006AA8F7    push        0
 006AA8F9    lea         eax,[ebp-35C]
 006AA8FF    push        eax
 006AA900    mov         ecx,6AB758;'DESCRIPT_2'
 006AA905    mov         edx,6AB734;'DESCRIPTION'
 006AA90A    mov         eax,dword ptr [ebp-0C]
 006AA90D    mov         ebx,dword ptr [eax]
 006AA90F    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006AA912    mov         edx,dword ptr [ebp-35C]
 006AA918    lea         eax,[esi+4]
 006AA91B    mov         ecx,0
 006AA920    call        @LStrFromUStr
 006AA925    push        0
 006AA927    lea         eax,[ebp-360]
 006AA92D    push        eax
 006AA92E    mov         ecx,6AB77C;'DESCRIPT_3'
 006AA933    mov         edx,6AB734;'DESCRIPTION'
 006AA938    mov         eax,dword ptr [ebp-0C]
 006AA93B    mov         ebx,dword ptr [eax]
 006AA93D    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006AA940    mov         edx,dword ptr [ebp-360]
 006AA946    lea         eax,[esi+8]
 006AA949    mov         ecx,0
 006AA94E    call        @LStrFromUStr
 006AA953    cmp         dword ptr [esi],0
>006AA956    je          006AA968
 006AA958    mov         eax,dword ptr [esi]
 006AA95A    call        @LStrToPChar
 006AA95F    mov         ebx,eax
 006AA961    push        ebx
 006AA962    push        ebx
 006AA963    call        user32.OemToCharA
 006AA968    cmp         dword ptr [esi+4],0
>006AA96C    je          006AA97F
 006AA96E    mov         eax,dword ptr [esi+4]
 006AA971    call        @LStrToPChar
 006AA976    mov         ebx,eax
 006AA978    push        ebx
 006AA979    push        ebx
 006AA97A    call        user32.OemToCharA
 006AA97F    cmp         dword ptr [esi+8],0
>006AA983    je          006AA996
 006AA985    mov         eax,dword ptr [esi+8]
 006AA988    call        @LStrToPChar
 006AA98D    mov         ebx,eax
 006AA98F    push        ebx
 006AA990    push        ebx
 006AA991    call        user32.OemToCharA
 006AA996    push        0
 006AA998    mov         ecx,6AB7A0;'COMUSAGE'
 006AA99D    mov         edx,6AB7C0;'PANELDEFS'
 006AA9A2    mov         eax,dword ptr [ebp-0C]
 006AA9A5    mov         ebx,dword ptr [eax]
 006AA9A7    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AA9AA    cmp         eax,0FF
>006AA9AF    jbe         006AA9B6
 006AA9B1    call        @BoundErr
 006AA9B6    mov         [008DF5F8],al;gvar_008DF5F8:Integer
 006AA9BB    push        0
 006AA9BD    mov         ecx,6AB7E0;'SERVUSAGE'
 006AA9C2    mov         edx,6AB7C0;'PANELDEFS'
 006AA9C7    mov         eax,dword ptr [ebp-0C]
 006AA9CA    mov         ebx,dword ptr [eax]
 006AA9CC    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AA9CF    cmp         eax,0FF
>006AA9D4    jbe         006AA9DB
 006AA9D6    call        @BoundErr
 006AA9DB    mov         [008DF6FC],al;gvar_008DF6FC:Integer
 006AA9E0    push        0
 006AA9E2    mov         ecx,6AB800;'PANELID'
 006AA9E7    mov         edx,6AB7C0;'PANELDEFS'
 006AA9EC    mov         eax,dword ptr [ebp-0C]
 006AA9EF    mov         ebx,dword ptr [eax]
 006AA9F1    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AA9F4    cmp         eax,0FF
>006AA9F9    jbe         006AAA00
 006AA9FB    call        @BoundErr
 006AAA00    mov         [008DF5FA],al;gvar_008DF5FA:Integer
 006AAA05    push        0
 006AAA07    mov         ecx,6AB81C;'MASTERS'
 006AAA0C    mov         edx,6AB7C0;'PANELDEFS'
 006AAA11    mov         eax,dword ptr [ebp-0C]
 006AAA14    mov         ebx,dword ptr [eax]
 006AAA16    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAA19    cmp         eax,0FFFF
>006AAA1E    jbe         006AAA25
 006AAA20    call        @BoundErr
 006AAA25    mov         [008DF70C],ax;gvar_008DF70C:Integer
 006AAA2B    push        0
 006AAA2D    mov         ecx,6AB838;'MASTERID'
 006AAA32    mov         edx,6AB7C0;'PANELDEFS'
 006AAA37    mov         eax,dword ptr [ebp-0C]
 006AAA3A    mov         ebx,dword ptr [eax]
 006AAA3C    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAA3F    cmp         eax,0FF
>006AAA44    jbe         006AAA4B
 006AAA46    call        @BoundErr
 006AAA4B    mov         [008DF5F9],al;gvar_008DF5F9:Integer
 006AAA50    push        0
 006AAA52    mov         ecx,6AB858;'MASTERID2'
 006AAA57    mov         edx,6AB7C0;'PANELDEFS'
 006AAA5C    mov         eax,dword ptr [ebp-0C]
 006AAA5F    mov         ebx,dword ptr [eax]
 006AAA61    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAA64    cmp         eax,0FF
>006AAA69    jbe         006AAA70
 006AAA6B    call        @BoundErr
 006AAA70    mov         [008DF757],al;gvar_008DF757:Integer
 006AAA75    push        0
 006AAA77    mov         ecx,6AB878;'FIRSTLOOP'
 006AAA7C    mov         edx,6AB7C0;'PANELDEFS'
 006AAA81    mov         eax,dword ptr [ebp-0C]
 006AAA84    mov         ebx,dword ptr [eax]
 006AAA86    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAA89    cmp         eax,0FF
>006AAA8E    jbe         006AAA95
 006AAA90    call        @BoundErr
 006AAA95    mov         [008DF5FB],al;gvar_008DF5FB:Integer
 006AAA9A    push        0
 006AAA9C    mov         ecx,6AB898;'LASTLOOP'
 006AAAA1    mov         edx,6AB7C0;'PANELDEFS'
 006AAAA6    mov         eax,dword ptr [ebp-0C]
 006AAAA9    mov         ebx,dword ptr [eax]
 006AAAAB    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAAAE    cmp         eax,0FF
>006AAAB3    jbe         006AAABA
 006AAAB5    call        @BoundErr
 006AAABA    mov         [008DF6FD],al;gvar_008DF6FD:Integer
 006AAABF    push        0
 006AAAC1    mov         ecx,6AB8B8;'FIRSTZONE'
 006AAAC6    mov         edx,6AB7C0;'PANELDEFS'
 006AAACB    mov         eax,dword ptr [ebp-0C]
 006AAACE    mov         ebx,dword ptr [eax]
 006AAAD0    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAAD3    cmp         eax,0FFFF
>006AAAD8    jbe         006AAADF
 006AAADA    call        @BoundErr
 006AAADF    mov         [008DF5FC],ax;gvar_008DF5FC:Integer
 006AAAE5    push        0
 006AAAE7    mov         ecx,6AB8D8;'LASTZONE'
 006AAAEC    mov         edx,6AB7C0;'PANELDEFS'
 006AAAF1    mov         eax,dword ptr [ebp-0C]
 006AAAF4    mov         ebx,dword ptr [eax]
 006AAAF6    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAAF9    cmp         eax,0FFFF
>006AAAFE    jbe         006AAB05
 006AAB00    call        @BoundErr
 006AAB05    mov         [008DF6FE],ax;gvar_008DF6FE:Integer
 006AAB0B    push        0
 006AAB0D    mov         ecx,6AB8F8;'MASTERACT'
 006AAB12    mov         edx,6AB7C0;'PANELDEFS'
 006AAB17    mov         eax,dword ptr [ebp-0C]
 006AAB1A    mov         ebx,dword ptr [eax]
 006AAB1C    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAB1F    cmp         eax,0FF
>006AAB24    jbe         006AAB2B
 006AAB26    call        @BoundErr
 006AAB2B    mov         [008DF5FE],al;gvar_008DF5FE:Integer
 006AAB30    push        0
 006AAB32    mov         ecx,6AB918;'DELAYT1'
 006AAB37    mov         edx,6AB7C0;'PANELDEFS'
 006AAB3C    mov         eax,dword ptr [ebp-0C]
 006AAB3F    mov         ebx,dword ptr [eax]
 006AAB41    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAB44    cmp         eax,0FFFF
>006AAB49    jbe         006AAB50
 006AAB4B    call        @BoundErr
 006AAB50    mov         [008DF608],ax;gvar_008DF608:Integer
 006AAB56    push        0
 006AAB58    mov         ecx,6AB934;'DELAYT2'
 006AAB5D    mov         edx,6AB7C0;'PANELDEFS'
 006AAB62    mov         eax,dword ptr [ebp-0C]
 006AAB65    mov         ebx,dword ptr [eax]
 006AAB67    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAB6A    cmp         eax,0FFFF
>006AAB6F    jbe         006AAB76
 006AAB71    call        @BoundErr
 006AAB76    mov         [008DF60A],ax;gvar_008DF60A:Integer
 006AAB7C    push        0
 006AAB7E    mov         ecx,6AB950;'INDELAY1'
 006AAB83    mov         edx,6AB7C0;'PANELDEFS'
 006AAB88    mov         eax,dword ptr [ebp-0C]
 006AAB8B    mov         ebx,dword ptr [eax]
 006AAB8D    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAB90    cmp         eax,0FFFF
>006AAB95    jbe         006AAB9C
 006AAB97    call        @BoundErr
 006AAB9C    mov         [008DF60C],ax;gvar_008DF60C:Integer
 006AABA2    push        0
 006AABA4    mov         ecx,6AB970;'ATTENUATE'
 006AABA9    mov         edx,6AB7C0;'PANELDEFS'
 006AABAE    mov         eax,dword ptr [ebp-0C]
 006AABB1    mov         ebx,dword ptr [eax]
 006AABB3    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AABB6    cmp         eax,0FF
>006AABBB    jbe         006AABC2
 006AABBD    call        @BoundErr
 006AABC2    mov         [008DF60E],al;gvar_008DF60E:Integer
 006AABC7    push        0
 006AABC9    mov         ecx,6AB990;'AUX1CTRL'
 006AABCE    mov         edx,6AB7C0;'PANELDEFS'
 006AABD3    mov         eax,dword ptr [ebp-0C]
 006AABD6    mov         ebx,dword ptr [eax]
 006AABD8    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AABDB    cmp         eax,0FF
>006AABE0    jbe         006AABE7
 006AABE2    call        @BoundErr
 006AABE7    mov         [008DF60F],al;gvar_008DF60F:Integer
 006AABEC    push        0
 006AABEE    mov         ecx,6AB9B0;'AUX2CTRL'
 006AABF3    mov         edx,6AB7C0;'PANELDEFS'
 006AABF8    mov         eax,dword ptr [ebp-0C]
 006AABFB    mov         ebx,dword ptr [eax]
 006AABFD    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAC00    cmp         eax,0FF
>006AAC05    jbe         006AAC0C
 006AAC07    call        @BoundErr
 006AAC0C    mov         [008DF610],al;gvar_008DF610:Integer
 006AAC11    push        0
 006AAC13    mov         ecx,6AB9D0;'AUX3CTRL'
 006AAC18    mov         edx,6AB7C0;'PANELDEFS'
 006AAC1D    mov         eax,dword ptr [ebp-0C]
 006AAC20    mov         ebx,dword ptr [eax]
 006AAC22    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAC25    cmp         eax,0FF
>006AAC2A    jbe         006AAC31
 006AAC2C    call        @BoundErr
 006AAC31    mov         [008DF611],al;gvar_008DF611:Integer
 006AAC36    push        0
 006AAC38    mov         ecx,6AB9F0;'ZDISABT'
 006AAC3D    mov         edx,6AB7C0;'PANELDEFS'
 006AAC42    mov         eax,dword ptr [ebp-0C]
 006AAC45    mov         ebx,dword ptr [eax]
 006AAC47    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAC4A    cmp         eax,0FF
>006AAC4F    jbe         006AAC56
 006AAC51    call        @BoundErr
 006AAC56    mov         [008DF612],al;gvar_008DF612:Integer
 006AAC5B    push        0
 006AAC5D    mov         ecx,6ABA0C;'OPCCTRL'
 006AAC62    mov         edx,6AB7C0;'PANELDEFS'
 006AAC67    mov         eax,dword ptr [ebp-0C]
 006AAC6A    mov         ebx,dword ptr [eax]
 006AAC6C    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAC6F    cmp         eax,0FF
>006AAC74    jbe         006AAC7B
 006AAC76    call        @BoundErr
 006AAC7B    mov         [008DF700],al;gvar_008DF700:Integer
 006AAC80    push        1
 006AAC82    mov         ecx,6ABA28;'ARDELAYED'
 006AAC87    mov         edx,6AB7C0;'PANELDEFS'
 006AAC8C    mov         eax,dword ptr [ebp-0C]
 006AAC8F    mov         ebx,dword ptr [eax]
 006AAC91    call        dword ptr [ebx+14];TCustomIniFile.ReadBool
 006AAC94    mov         [008DF754],al;gvar_008DF754:Boolean
 006AAC99    push        0
 006AAC9B    mov         ecx,6ABA48;'ADDELAYED'
 006AACA0    mov         edx,6AB7C0;'PANELDEFS'
 006AACA5    mov         eax,dword ptr [ebp-0C]
 006AACA8    mov         ebx,dword ptr [eax]
 006AACAA    call        dword ptr [ebx+14];TCustomIniFile.ReadBool
 006AACAD    mov         [008DF755],al;gvar_008DF755:Boolean
 006AACB2    push        0
 006AACB4    mov         ecx,6ABA68;'CODELAYED'
 006AACB9    mov         edx,6AB7C0;'PANELDEFS'
 006AACBE    mov         eax,dword ptr [ebp-0C]
 006AACC1    mov         ebx,dword ptr [eax]
 006AACC3    call        dword ptr [ebx+14];TCustomIniFile.ReadBool
 006AACC6    mov         [008DF756],al;gvar_008DF756:Boolean
 006AACCB    push        0
 006AACCD    mov         ecx,6ABA88;'COUNTRYV'
 006AACD2    mov         edx,6AB7C0;'PANELDEFS'
 006AACD7    mov         eax,dword ptr [ebp-0C]
 006AACDA    mov         ebx,dword ptr [eax]
 006AACDC    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AACDF    mov         [008DF704],eax;gvar_008DF704:Integer
 006AACE4    push        0
 006AACE6    mov         ecx,6ABAA8;'LANGUAGE'
 006AACEB    mov         edx,6AB7C0;'PANELDEFS'
 006AACF0    mov         eax,dword ptr [ebp-0C]
 006AACF3    mov         ebx,dword ptr [eax]
 006AACF5    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AACF8    mov         [008DF708],eax;gvar_008DF708:Integer
 006AACFD    push        0
 006AACFF    lea         eax,[ebp-364]
 006AAD05    push        eax
 006AAD06    mov         ecx,6ABAC8;'INPTEXT1'
 006AAD0B    mov         edx,6AB7C0;'PANELDEFS'
 006AAD10    mov         eax,dword ptr [ebp-0C]
 006AAD13    mov         ebx,dword ptr [eax]
 006AAD15    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006AAD18    mov         edx,dword ptr [ebp-364]
 006AAD1E    mov         eax,8DF710;gvar_008DF710:AnsiString
 006AAD23    mov         ecx,0
 006AAD28    call        @LStrFromUStr
 006AAD2D    push        0
 006AAD2F    lea         eax,[ebp-368]
 006AAD35    push        eax
 006AAD36    mov         ecx,6ABAE8;'INPTEXT2'
 006AAD3B    mov         edx,6AB7C0;'PANELDEFS'
 006AAD40    mov         eax,dword ptr [ebp-0C]
 006AAD43    mov         ebx,dword ptr [eax]
 006AAD45    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006AAD48    mov         edx,dword ptr [ebp-368]
 006AAD4E    mov         eax,8DF714;gvar_008DF714:AnsiString
 006AAD53    mov         ecx,0
 006AAD58    call        @LStrFromUStr
 006AAD5D    push        0
 006AAD5F    lea         eax,[ebp-36C]
 006AAD65    push        eax
 006AAD66    mov         ecx,6ABB08;'INPTEXT3'
 006AAD6B    mov         edx,6AB7C0;'PANELDEFS'
 006AAD70    mov         eax,dword ptr [ebp-0C]
 006AAD73    mov         ebx,dword ptr [eax]
 006AAD75    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006AAD78    mov         edx,dword ptr [ebp-36C]
 006AAD7E    mov         eax,8DF718;gvar_008DF718:AnsiString
 006AAD83    mov         ecx,0
 006AAD88    call        @LStrFromUStr
 006AAD8D    push        0
 006AAD8F    lea         eax,[ebp-370]
 006AAD95    push        eax
 006AAD96    mov         ecx,6ABB28;'INPTEXT4'
 006AAD9B    mov         edx,6AB7C0;'PANELDEFS'
 006AADA0    mov         eax,dword ptr [ebp-0C]
 006AADA3    mov         ebx,dword ptr [eax]
 006AADA5    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006AADA8    mov         edx,dword ptr [ebp-370]
 006AADAE    mov         eax,8DF71C;gvar_008DF71C:AnsiString
 006AADB3    mov         ecx,0
 006AADB8    call        @LStrFromUStr
 006AADBD    push        0
 006AADBF    lea         eax,[ebp-374]
 006AADC5    push        eax
 006AADC6    mov         ecx,6ABB48;'INPTEXT5'
 006AADCB    mov         edx,6AB7C0;'PANELDEFS'
 006AADD0    mov         eax,dword ptr [ebp-0C]
 006AADD3    mov         ebx,dword ptr [eax]
 006AADD5    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006AADD8    mov         edx,dword ptr [ebp-374]
 006AADDE    mov         eax,8DF720;gvar_008DF720:AnsiString
 006AADE3    mov         ecx,0
 006AADE8    call        @LStrFromUStr
 006AADED    cmp         dword ptr ds:[8DF710],0;gvar_008DF710:AnsiString
>006AADF4    je          006AAE09
 006AADF6    mov         eax,[008DF710];gvar_008DF710:AnsiString
 006AADFB    call        @LStrToPChar
 006AAE00    mov         ebx,eax
 006AAE02    push        ebx
 006AAE03    push        ebx
 006AAE04    call        user32.OemToCharA
 006AAE09    cmp         dword ptr ds:[8DF714],0;gvar_008DF714:AnsiString
>006AAE10    je          006AAE25
 006AAE12    mov         eax,[008DF714];gvar_008DF714:AnsiString
 006AAE17    call        @LStrToPChar
 006AAE1C    mov         ebx,eax
 006AAE1E    push        ebx
 006AAE1F    push        ebx
 006AAE20    call        user32.OemToCharA
 006AAE25    cmp         dword ptr ds:[8DF718],0;gvar_008DF718:AnsiString
>006AAE2C    je          006AAE41
 006AAE2E    mov         eax,[008DF718];gvar_008DF718:AnsiString
 006AAE33    call        @LStrToPChar
 006AAE38    mov         ebx,eax
 006AAE3A    push        ebx
 006AAE3B    push        ebx
 006AAE3C    call        user32.OemToCharA
 006AAE41    cmp         dword ptr ds:[8DF71C],0;gvar_008DF71C:AnsiString
>006AAE48    je          006AAE5D
 006AAE4A    mov         eax,[008DF71C];gvar_008DF71C:AnsiString
 006AAE4F    call        @LStrToPChar
 006AAE54    mov         ebx,eax
 006AAE56    push        ebx
 006AAE57    push        ebx
 006AAE58    call        user32.OemToCharA
 006AAE5D    cmp         dword ptr ds:[8DF720],0;gvar_008DF720:AnsiString
>006AAE64    je          006AAE79
 006AAE66    mov         eax,[008DF720];gvar_008DF720:AnsiString
 006AAE6B    call        @LStrToPChar
 006AAE70    mov         ebx,eax
 006AAE72    push        ebx
 006AAE73    push        ebx
 006AAE74    call        user32.OemToCharA
 006AAE79    push        0
 006AAE7B    mov         ecx,6ABB68;'INPCONT1'
 006AAE80    mov         edx,6AB7C0;'PANELDEFS'
 006AAE85    mov         eax,dword ptr [ebp-0C]
 006AAE88    mov         ebx,dword ptr [eax]
 006AAE8A    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAE8D    mov         [008DF724],eax;gvar_008DF724:Integer
 006AAE92    push        0
 006AAE94    mov         ecx,6ABB88;'INPCONT2'
 006AAE99    mov         edx,6AB7C0;'PANELDEFS'
 006AAE9E    mov         eax,dword ptr [ebp-0C]
 006AAEA1    mov         ebx,dword ptr [eax]
 006AAEA3    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAEA6    mov         [008DF728],eax;gvar_008DF728:Integer
 006AAEAB    push        0
 006AAEAD    mov         ecx,6ABBA8;'INPCONT3'
 006AAEB2    mov         edx,6AB7C0;'PANELDEFS'
 006AAEB7    mov         eax,dword ptr [ebp-0C]
 006AAEBA    mov         ebx,dword ptr [eax]
 006AAEBC    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAEBF    mov         [008DF72C],eax;gvar_008DF72C:Integer
 006AAEC4    push        0
 006AAEC6    mov         ecx,6ABBC8;'INPCONT4'
 006AAECB    mov         edx,6AB7C0;'PANELDEFS'
 006AAED0    mov         eax,dword ptr [ebp-0C]
 006AAED3    mov         ebx,dword ptr [eax]
 006AAED5    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAED8    mov         [008DF730],eax;gvar_008DF730:Integer
 006AAEDD    push        0
 006AAEDF    mov         ecx,6ABBE8;'INPCONT5'
 006AAEE4    mov         edx,6AB7C0;'PANELDEFS'
 006AAEE9    mov         eax,dword ptr [ebp-0C]
 006AAEEC    mov         ebx,dword ptr [eax]
 006AAEEE    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAEF1    mov         [008DF734],eax;gvar_008DF734:Integer
 006AAEF6    push        0
 006AAEF8    mov         ecx,6ABC08;'INPFUNC1'
 006AAEFD    mov         edx,6AB7C0;'PANELDEFS'
 006AAF02    mov         eax,dword ptr [ebp-0C]
 006AAF05    mov         ebx,dword ptr [eax]
 006AAF07    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAF0A    mov         [008DF738],eax;gvar_008DF738:Integer
 006AAF0F    push        0
 006AAF11    mov         ecx,6ABC28;'INPFUNC2'
 006AAF16    mov         edx,6AB7C0;'PANELDEFS'
 006AAF1B    mov         eax,dword ptr [ebp-0C]
 006AAF1E    mov         ebx,dword ptr [eax]
 006AAF20    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAF23    mov         [008DF73C],eax;gvar_008DF73C:Integer
 006AAF28    push        0
 006AAF2A    mov         ecx,6ABC48;'INPFUNC3'
 006AAF2F    mov         edx,6AB7C0;'PANELDEFS'
 006AAF34    mov         eax,dword ptr [ebp-0C]
 006AAF37    mov         ebx,dword ptr [eax]
 006AAF39    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAF3C    mov         [008DF740],eax;gvar_008DF740:Integer
 006AAF41    push        0
 006AAF43    mov         ecx,6ABC68;'INPFUNC4'
 006AAF48    mov         edx,6AB7C0;'PANELDEFS'
 006AAF4D    mov         eax,dword ptr [ebp-0C]
 006AAF50    mov         ebx,dword ptr [eax]
 006AAF52    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAF55    mov         [008DF744],eax;gvar_008DF744:Integer
 006AAF5A    push        0
 006AAF5C    mov         ecx,6ABC88;'INPFUNC5'
 006AAF61    mov         edx,6AB7C0;'PANELDEFS'
 006AAF66    mov         eax,dword ptr [ebp-0C]
 006AAF69    mov         ebx,dword ptr [eax]
 006AAF6B    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAF6E    mov         [008DF748],eax;gvar_008DF748:Integer
 006AAF73    push        0
 006AAF75    mov         ecx,6ABCA8;'OUTFUNC1'
 006AAF7A    mov         edx,6AB7C0;'PANELDEFS'
 006AAF7F    mov         eax,dword ptr [ebp-0C]
 006AAF82    mov         ebx,dword ptr [eax]
 006AAF84    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAF87    mov         [008DF74C],eax;gvar_008DF74C:Integer
 006AAF8C    push        0
 006AAF8E    mov         ecx,6ABCC8;'OUTFUNC2'
 006AAF93    mov         edx,6AB7C0;'PANELDEFS'
 006AAF98    mov         eax,dword ptr [ebp-0C]
 006AAF9B    mov         ebx,dword ptr [eax]
 006AAF9D    call        dword ptr [ebx+0C];TCustomIniFile.ReadInteger
 006AAFA0    mov         [008DF750],eax;gvar_008DF750:Integer
 006AAFA5    xor         eax,eax
 006AAFA7    pop         edx
 006AAFA8    pop         ecx
 006AAFA9    pop         ecx
 006AAFAA    mov         dword ptr fs:[eax],edx
 006AAFAD    push        6AAFC2
 006AAFB2    mov         eax,dword ptr [ebp-0C]
 006AAFB5    call        TObject.Free
 006AAFBA    ret
>006AAFBB    jmp         @HandleFinally
>006AAFC0    jmp         006AAFB2
 006AAFC2    cmp         byte ptr ds:[8DF5E1],4;gvar_008DF5E1:Integer
>006AAFC9    jae         006AAFD4
 006AAFCB    movzx       esi,byte ptr ds:[8DF5E8];gvar_008DF5E8:Integer
>006AAFD2    jmp         006AAFF5
 006AAFD4    movzx       esi,byte ptr ds:[8DF6FD];gvar_008DF6FD:Integer
 006AAFDB    movzx       eax,byte ptr ds:[8DF5FB];gvar_008DF5FB:Integer
 006AAFE2    sub         esi,eax
>006AAFE4    jno         006AAFEB
 006AAFE6    call        @IntOver
 006AAFEB    add         esi,1
>006AAFEE    jno         006AAFF5
 006AAFF0    call        @IntOver
 006AAFF5    xor         ecx,ecx
 006AAFF7    mov         edx,dword ptr [ebp-4]
 006AAFFA    lea         eax,[ebp-2EC]
 006AB000    call        0040592C
 006AB005    call        @_IOTest
 006AB00A    lea         eax,[ebp-2EC]
 006AB010    call        @ResetText
 006AB015    call        @_IOTest
 006AB01A    lea         edx,[ebp-8]
 006AB01D    xor         ecx,ecx
 006AB01F    lea         eax,[ebp-2EC]
 006AB025    call        @ReadLString
 006AB02A    lea         eax,[ebp-2EC]
 006AB030    call        @ReadLn
 006AB035    call        @_IOTest
 006AB03A    lea         eax,[ebp-2EC]
 006AB040    call        @EofText
 006AB045    call        @_IOTest
 006AB04A    test        al,al
>006AB04C    jne         006AB05D
 006AB04E    mov         eax,dword ptr [ebp-8]
 006AB051    mov         edx,6ABCE8;'[TEXTDEFS]'
 006AB056    call        @LStrEqual
>006AB05B    jne         006AB01A
 006AB05D    lea         eax,[ebp-2EC]
 006AB063    call        @EofText
 006AB068    call        @_IOTest
 006AB06D    test        al,al
>006AB06F    je          006AB087
 006AB071    mov         ecx,6ABD00;'Unexpected end of file!'
 006AB076    mov         dl,1
 006AB078    mov         eax,[004183AC];EInOutError
 006AB07D    call        Exception.Create;EInOutError.Create
 006AB082    call        @RaiseExcept
 006AB087    lea         eax,[ebp-2EC]
 006AB08D    call        @ReadLong
 006AB092    mov         ebx,eax
 006AB094    lea         eax,[ebp-2EC]
 006AB09A    call        @ReadLong
 006AB09F    mov         byte ptr [ebp-0F],al
 006AB0A2    lea         edx,[ebp-8]
 006AB0A5    xor         ecx,ecx
 006AB0A7    lea         eax,[ebp-2EC]
 006AB0AD    call        @ReadLString
 006AB0B2    lea         eax,[ebp-2EC]
 006AB0B8    call        @ReadLn
 006AB0BD    call        @_IOTest
 006AB0C2    mov         eax,dword ptr [ebp-8]
 006AB0C5    call        @LStrToPChar
 006AB0CA    mov         edi,eax
 006AB0CC    push        edi
 006AB0CD    push        edi
 006AB0CE    call        user32.OemToCharA
 006AB0D3    test        bl,bl
>006AB0D5    jbe         006AB1D8
 006AB0DB    movzx       eax,bl
 006AB0DE    cmp         esi,eax
>006AB0E0    jl          006AB1D8
 006AB0E6    cmp         byte ptr [ebp-0F],0
>006AB0EA    jbe         006AB1D8
 006AB0F0    cmp         byte ptr [ebp-0F],0C7
>006AB0F4    ja          006AB1D8
 006AB0FA    movzx       ecx,byte ptr [ebp-0F]
 006AB0FE    mov         eax,ecx
 006AB100    mov         edi,64
 006AB105    xor         edx,edx
 006AB107    div         eax,edi
 006AB109    cmp         eax,0FF
>006AB10E    jbe         006AB115
 006AB110    call        @BoundErr
 006AB115    mov         byte ptr [ebp-0D],al
 006AB118    mov         eax,ecx
 006AB11A    mov         ecx,64
 006AB11F    xor         edx,edx
 006AB121    div         eax,ecx
 006AB123    cmp         edx,0FF
>006AB129    jbe         006AB130
 006AB12B    call        @BoundErr
 006AB130    mov         byte ptr [ebp-0E],dl
 006AB133    lea         eax,[ebp-478]
 006AB139    push        eax
 006AB13A    mov         ecx,28
 006AB13F    mov         edx,3
 006AB144    mov         eax,dword ptr [ebp-8]
 006AB147    call        @LStrCopy
 006AB14C    mov         edx,dword ptr [ebp-478]
 006AB152    lea         eax,[ebp-474]
 006AB158    mov         ecx,0FF
 006AB15D    call        @LStrToString
 006AB162    lea         edx,[ebp-474]
 006AB168    movzx       eax,byte ptr [ebp-0D]
 006AB16C    cmp         eax,1
>006AB16F    jbe         006AB176
 006AB171    call        @BoundErr
 006AB176    imul        eax,eax,0FDB
>006AB17C    jno         006AB183
 006AB17E    call        @IntOver
 006AB183    movzx       ecx,bl
 006AB186    sub         ecx,1
>006AB189    jno         006AB190
 006AB18B    call        @IntOver
 006AB190    cmp         ecx,7
>006AB193    jbe         006AB19A
 006AB195    call        @BoundErr
 006AB19A    imul        ecx,ecx,0FDB
>006AB1A0    jno         006AB1A7
 006AB1A2    call        @IntOver
 006AB1A7    lea         ecx,[ecx*2+8F2058];gvar_008F2058
 006AB1AE    lea         eax,[ecx+eax]
 006AB1B1    push        eax
 006AB1B2    movzx       eax,byte ptr [ebp-0E]
 006AB1B6    dec         eax
 006AB1B7    cmp         eax,62
>006AB1BA    jbe         006AB1C1
 006AB1BC    call        @BoundErr
 006AB1C1    inc         eax
 006AB1C2    imul        eax,eax,29
>006AB1C5    jno         006AB1CC
 006AB1C7    call        @IntOver
 006AB1CC    pop         ecx
 006AB1CD    lea         eax,[ecx+eax-29]
 006AB1D1    mov         cl,28
 006AB1D3    call        @PStrNCpy
 006AB1D8    lea         eax,[ebp-2EC]
 006AB1DE    call        @EofText
 006AB1E3    call        @_IOTest
 006AB1E8    test        al,al
>006AB1EA    jne         006AB1F4
 006AB1EC    test        bl,bl
>006AB1EE    jne         006AB087
 006AB1F4    lea         eax,[ebp-2EC]
 006AB1FA    call        @EofText
 006AB1FF    call        @_IOTest
 006AB204    test        al,al
>006AB206    je          006AB22D
 006AB208    mov         eax,dword ptr [ebp-8]
 006AB20B    mov         edx,6ABD3C;'  end of text definitions'
 006AB210    call        @LStrEqual
>006AB215    je          006AB22D
 006AB217    mov         ecx,6ABD00;'Unexpected end of file!'
 006AB21C    mov         dl,1
 006AB21E    mov         eax,[004183AC];EInOutError
 006AB223    call        Exception.Create;EInOutError.Create
 006AB228    call        @RaiseExcept
 006AB22D    lea         eax,[ebp-2EC]
 006AB233    call        @ResetText
 006AB238    call        @_IOTest
 006AB23D    lea         edx,[ebp-8]
 006AB240    xor         ecx,ecx
 006AB242    lea         eax,[ebp-2EC]
 006AB248    call        @ReadLString
 006AB24D    lea         eax,[ebp-2EC]
 006AB253    call        @ReadLn
 006AB258    call        @_IOTest
 006AB25D    lea         eax,[ebp-2EC]
 006AB263    call        @EofText
 006AB268    call        @_IOTest
 006AB26D    test        al,al
>006AB26F    jne         006AB280
 006AB271    mov         eax,dword ptr [ebp-8]
 006AB274    mov         edx,6ABD64;'[ADDRDEFS]'
 006AB279    call        @LStrEqual
>006AB27E    jne         006AB23D
 006AB280    lea         eax,[ebp-2EC]
 006AB286    call        @EofText
 006AB28B    call        @_IOTest
 006AB290    test        al,al
>006AB292    je          006AB2AA
 006AB294    mov         ecx,6ABD00;'Unexpected end of file!'
 006AB299    mov         dl,1
 006AB29B    mov         eax,[004183AC];EInOutError
 006AB2A0    call        Exception.Create;EInOutError.Create
 006AB2A5    call        @RaiseExcept
 006AB2AA    lea         eax,[ebp-350]
 006AB2B0    xor         ecx,ecx
 006AB2B2    mov         edx,30
 006AB2B7    call        @FillChar
 006AB2BC    lea         eax,[ebp-2EC]
 006AB2C2    call        @ReadLong
 006AB2C7    mov         ebx,eax
 006AB2C9    lea         eax,[ebp-2EC]
 006AB2CF    call        @ReadLong
 006AB2D4    mov         byte ptr [ebp-0F],al
 006AB2D7    lea         eax,[ebp-2EC]
 006AB2DD    call        @ReadLong
 006AB2E2    mov         dword ptr [ebp-350],eax
 006AB2E8    lea         eax,[ebp-2EC]
 006AB2EE    call        @ReadLong
 006AB2F3    mov         dword ptr [ebp-34C],eax
 006AB2F9    lea         eax,[ebp-2EC]
 006AB2FF    call        @ReadExt
 006AB304    fstp        qword ptr [ebp-348]
 006AB30A    wait
 006AB30B    lea         eax,[ebp-2EC]
 006AB311    call        @ReadExt
 006AB316    fstp        qword ptr [ebp-340]
 006AB31C    wait
 006AB31D    lea         eax,[ebp-2EC]
 006AB323    call        @ReadExt
 006AB328    fstp        qword ptr [ebp-338]
 006AB32E    wait
 006AB32F    lea         eax,[ebp-2EC]
 006AB335    call        @ReadLong
 006AB33A    mov         dword ptr [ebp-330],eax
 006AB340    lea         eax,[ebp-2EC]
 006AB346    call        @ReadLong
 006AB34B    mov         dword ptr [ebp-32C],eax
 006AB351    lea         eax,[ebp-2EC]
 006AB357    call        @ReadLong
 006AB35C    mov         dword ptr [ebp-328],eax
 006AB362    lea         eax,[ebp-2EC]
 006AB368    call        @ReadLn
 006AB36D    call        @_IOTest
 006AB372    movzx       eax,byte ptr ds:[8DF5E1];gvar_008DF5E1:Integer
 006AB379    dec         al
>006AB37B    je          006AB383
 006AB37D    dec         al
>006AB37F    je          006AB398
>006AB381    jmp         006AB3B6
 006AB383    cmp         dword ptr [ebp-34C],6
>006AB38A    jne         006AB3B6
 006AB38C    mov         dword ptr [ebp-34C],7
>006AB396    jmp         006AB3B6
 006AB398    movzx       eax,byte ptr ds:[8DF5E2];gvar_008DF5E2:Integer
 006AB39F    sub         al,1
>006AB3A1    jae         006AB3B6
 006AB3A3    cmp         dword ptr [ebp-34C],6
>006AB3AA    jne         006AB3B6
 006AB3AC    mov         dword ptr [ebp-34C],7
 006AB3B6    test        bl,bl
>006AB3B8    jbe         006AB595
 006AB3BE    movzx       eax,bl
 006AB3C1    cmp         esi,eax
>006AB3C3    jl          006AB595
 006AB3C9    cmp         byte ptr [ebp-0F],0
>006AB3CD    jbe         006AB595
 006AB3D3    cmp         byte ptr [ebp-0F],0C7
>006AB3D7    ja          006AB595
 006AB3DD    movzx       ecx,byte ptr [ebp-0F]
 006AB3E1    mov         eax,ecx
 006AB3E3    mov         edi,64
 006AB3E8    xor         edx,edx
 006AB3EA    div         eax,edi
 006AB3EC    cmp         eax,0FF
>006AB3F1    jbe         006AB3F8
 006AB3F3    call        @BoundErr
 006AB3F8    mov         byte ptr [ebp-0D],al
 006AB3FB    mov         eax,ecx
 006AB3FD    mov         ecx,64
 006AB402    xor         edx,edx
 006AB404    div         eax,ecx
 006AB406    cmp         edx,0FF
>006AB40C    jbe         006AB413
 006AB40E    call        @BoundErr
 006AB413    mov         byte ptr [ebp-0E],dl
 006AB416    mov         eax,dword ptr [ebp-350]
 006AB41C    mov         dword ptr [ebp-320],eax
 006AB422    mov         eax,dword ptr [ebp-34C]
 006AB428    mov         dword ptr [ebp-31C],eax
 006AB42E    mov         edx,dword ptr [ebp-348]
 006AB434    mov         dword ptr [ebp-318],edx
 006AB43A    mov         edx,dword ptr [ebp-344]
 006AB440    mov         dword ptr [ebp-314],edx
 006AB446    mov         edx,dword ptr [ebp-340]
 006AB44C    mov         dword ptr [ebp-310],edx
 006AB452    mov         edx,dword ptr [ebp-33C]
 006AB458    mov         dword ptr [ebp-30C],edx
 006AB45E    mov         edx,dword ptr [ebp-338]
 006AB464    mov         dword ptr [ebp-308],edx
 006AB46A    mov         edx,dword ptr [ebp-334]
 006AB470    mov         dword ptr [ebp-304],edx
 006AB476    mov         edx,dword ptr [ebp-330]
 006AB47C    mov         dword ptr [ebp-300],edx
 006AB482    mov         edx,dword ptr [ebp-32C]
 006AB488    mov         dword ptr [ebp-2FC],edx
 006AB48E    cmp         eax,0FF
>006AB493    ja          006AB49C
 006AB495    bt          dword ptr ds:[7C2A20],eax;gvar_007C2A20
>006AB49C    jae         006AB4BD
 006AB49E    mov         eax,dword ptr [ebp-328]
 006AB4A4    and         eax,1
 006AB4A7    test        al,al
>006AB4A9    jne         006AB4B4
 006AB4AB    mov         byte ptr [ebp-2F8],1
>006AB4B2    jmp         006AB4DA
 006AB4B4    mov         byte ptr [ebp-2F8],0
>006AB4BB    jmp         006AB4DA
 006AB4BD    mov         eax,dword ptr [ebp-328]
 006AB4C3    and         eax,1
 006AB4C6    cmp         al,1
>006AB4C8    jne         006AB4D3
 006AB4CA    mov         byte ptr [ebp-2F8],1
>006AB4D1    jmp         006AB4DA
 006AB4D3    mov         byte ptr [ebp-2F8],0
 006AB4DA    cmp         byte ptr ds:[8DF5E1],4;gvar_008DF5E1:Integer
>006AB4E1    jae         006AB4F5
 006AB4E3    cmp         dword ptr [ebp-330],5
 006AB4EA    sete        al
 006AB4ED    mov         byte ptr [ebp-2F7],al
>006AB4F3    jmp         006AB50A
 006AB4F5    mov         eax,dword ptr [ebp-328]
 006AB4FB    and         eax,2
 006AB4FE    cmp         eax,2
 006AB501    sete        al
 006AB504    mov         byte ptr [ebp-2F7],al
 006AB50A    mov         eax,dword ptr [ebp-328]
 006AB510    and         eax,4
 006AB513    cmp         eax,4
 006AB516    sete        al
 006AB519    mov         byte ptr [ebp-2F6],al
 006AB51F    movzx       eax,byte ptr [ebp-0D]
 006AB523    cmp         eax,1
>006AB526    jbe         006AB52D
 006AB528    call        @BoundErr
 006AB52D    imul        eax,eax,252
>006AB533    jno         006AB53A
 006AB535    call        @IntOver
 006AB53A    movzx       edx,bl
 006AB53D    sub         edx,1
>006AB540    jno         006AB547
 006AB542    call        @IntOver
 006AB547    cmp         edx,7
>006AB54A    jbe         006AB551
 006AB54C    call        @BoundErr
 006AB551    imul        edx,edx,4A4
>006AB557    jno         006AB55E
 006AB559    call        @IntOver
 006AB55E    lea         edx,[edx*8+8DF758];gvar_008DF758
 006AB565    lea         edi,[edx+eax*8]
 006AB568    movzx       eax,byte ptr [ebp-0E]
 006AB56C    dec         eax
 006AB56D    cmp         eax,62
>006AB570    jbe         006AB577
 006AB572    call        @BoundErr
 006AB577    inc         eax
 006AB578    imul        eax,eax,6
>006AB57B    jno         006AB582
 006AB57D    call        @IntOver
 006AB582    push        esi
 006AB583    lea         edi,[edi+eax*8-30]
 006AB587    lea         esi,[ebp-320]
 006AB58D    mov         ecx,0C
 006AB592    rep movs    dword ptr [edi],dword ptr [esi]
 006AB594    pop         esi
 006AB595    lea         eax,[ebp-2EC]
 006AB59B    call        @EofText
 006AB5A0    call        @_IOTest
 006AB5A5    test        al,al
>006AB5A7    jne         006AB5B1
 006AB5A9    test        bl,bl
>006AB5AB    jne         006AB2AA
 006AB5B1    lea         eax,[ebp-2EC]
 006AB5B7    call        @EofText
 006AB5BC    call        @_IOTest
 006AB5C1    test        al,al
>006AB5C3    je          006AB5E0
 006AB5C5    cmp         bl,0FF
>006AB5C8    jne         006AB5E0
 006AB5CA    mov         ecx,6ABD00;'Unexpected end of file!'
 006AB5CF    mov         dl,1
 006AB5D1    mov         eax,[004183AC];EInOutError
 006AB5D6    call        Exception.Create;EInOutError.Create
 006AB5DB    call        @RaiseExcept
 006AB5E0    lea         eax,[ebp-2EC]
 006AB5E6    call        @Close
 006AB5EB    call        @_IOTest
 006AB5F0    mov         bl,1
 006AB5F2    xor         eax,eax
 006AB5F4    pop         edx
 006AB5F5    pop         ecx
 006AB5F6    pop         ecx
 006AB5F7    mov         dword ptr fs:[eax],edx
 006AB5FA    push        6AB632
 006AB5FF    lea         eax,[ebp-478]
 006AB605    call        @LStrClr
 006AB60A    lea         eax,[ebp-374]
 006AB610    mov         edx,9
 006AB615    call        @UStrArrayClr
 006AB61A    lea         eax,[ebp-8]
 006AB61D    call        @LStrClr
 006AB622    lea         eax,[ebp-4]
 006AB625    call        @UStrClr
 006AB62A    ret
>006AB62B    jmp         @HandleFinally
>006AB630    jmp         006AB5FF
 006AB632    mov         eax,ebx
 006AB634    pop         edi
 006AB635    pop         esi
 006AB636    pop         ebx
 006AB637    mov         esp,ebp
 006AB639    pop         ebp
 006AB63A    ret
end;*}

//006ABD70
{*function sub_006ABD70(?:?; ?:?; ?:?):?;
begin
 006ABD70    push        ebp
 006ABD71    mov         ebp,esp
 006ABD73    push        ebx
 006ABD74    push        esi
 006ABD75    mov         esi,edx
 006ABD77    mov         ebx,eax
 006ABD79    mov         eax,esi
 006ABD7B    cmp         eax,0B
>006ABD7E    ja          006AC175
 006ABD84    jmp         dword ptr [eax*4+6ABD8B]
 006ABD84    dd          006ABDBB
 006ABD84    dd          006ABDC2
 006ABD84    dd          006ABE7F
 006ABD84    dd          006ABF5F
 006ABD84    dd          006ABF93
 006ABD84    dd          006ABF9A
 006ABD84    dd          006ABFA1
 006ABD84    dd          006ABFA8
 006ABD84    dd          006ABFAF
 006ABD84    dd          006AC02A
 006ABD84    dd          006AC098
 006ABD84    dd          006AC103
 006ABDBB    xor         eax,eax
>006ABDBD    jmp         006AC177
 006ABDC2    fld         qword ptr [ebp+8]
 006ABDC5    fmul        dword ptr ds:[6AC180];10:Single
 006ABDCB    call        @ROUND
 006ABDD0    push        eax
 006ABDD1    sar         eax,1F
 006ABDD4    cmp         eax,edx
 006ABDD6    pop         eax
>006ABDD7    je          006ABDDE
 006ABDD9    call        @BoundErr
 006ABDDE    cmp         eax,1A
>006ABDE1    jge         006ABDF2
 006ABDE3    add         eax,0FFFFFFF6
 006ABDE6    sub         eax,0A
>006ABDE9    jb          006ABE06
 006ABDEB    sub         eax,6
>006ABDEE    jb          006ABE13
>006ABDF0    jmp         006ABE4B
 006ABDF2    add         eax,0FFFFFFE6
 006ABDF5    sub         eax,7
>006ABDF8    jb          006ABE21
 006ABDFA    sub         eax,5
>006ABDFD    jb          006ABE2F
 006ABDFF    sub         eax,3
>006ABE02    jb          006ABE3D
>006ABE04    jmp         006ABE4B
 006ABE06    mov         eax,[007C4B8C];^gvar_007C171C
 006ABE0B    movzx       eax,word ptr [eax]
>006ABE0E    jmp         006AC177
 006ABE13    mov         eax,[007C4B8C];^gvar_007C171C
 006ABE18    movzx       eax,word ptr [eax+2]
>006ABE1C    jmp         006AC177
 006ABE21    mov         eax,[007C4B8C];^gvar_007C171C
 006ABE26    movzx       eax,word ptr [eax+4]
>006ABE2A    jmp         006AC177
 006ABE2F    mov         eax,[007C4B8C];^gvar_007C171C
 006ABE34    movzx       eax,word ptr [eax+6]
>006ABE38    jmp         006AC177
 006ABE3D    mov         eax,[007C4B8C];^gvar_007C171C
 006ABE42    movzx       eax,word ptr [eax+8]
>006ABE46    jmp         006AC177
 006ABE4B    test        bl,bl
>006ABE4D    je          006ABE67
 006ABE4F    cmp         esi,0F
>006ABE52    jbe         006ABE59
 006ABE54    call        @BoundErr
 006ABE59    mov         eax,[007C4724];^gvar_007C1776
 006ABE5E    movzx       eax,word ptr [eax+esi*2]
>006ABE62    jmp         006AC177
 006ABE67    cmp         esi,0F
>006ABE6A    jbe         006ABE71
 006ABE6C    call        @BoundErr
 006ABE71    mov         eax,[007C475C];^gvar_007C1796
 006ABE76    movzx       eax,word ptr [eax+esi*2]
>006ABE7A    jmp         006AC177
 006ABE7F    fld         qword ptr [ebp+8]
 006ABE82    fmul        dword ptr ds:[6AC180];10:Single
 006ABE88    call        @ROUND
 006ABE8D    push        eax
 006ABE8E    sar         eax,1F
 006ABE91    cmp         eax,edx
 006ABE93    pop         eax
>006ABE94    je          006ABE9B
 006ABE96    call        @BoundErr
 006ABE9B    add         eax,0FFFFFFF6
 006ABE9E    cmp         eax,18
>006ABEA1    ja          006ABF2B
 006ABEA7    movzx       eax,byte ptr [eax+6ABEB5]
 006ABEAE    jmp         dword ptr [eax*4+6ABECE]
 006ABEAE    db          1
 006ABEAE    db          1
 006ABEAE    db          1
 006ABEAE    db          1
 006ABEAE    db          1
 006ABEAE    db          1
 006ABEAE    db          1
 006ABEAE    db          1
 006ABEAE    db          2
 006ABEAE    db          2
 006ABEAE    db          2
 006ABEAE    db          2
 006ABEAE    db          2
 006ABEAE    db          2
 006ABEAE    db          2
 006ABEAE    db          2
 006ABEAE    db          3
 006ABEAE    db          3
 006ABEAE    db          3
 006ABEAE    db          3
 006ABEAE    db          3
 006ABEAE    db          4
 006ABEAE    db          4
 006ABEAE    db          5
 006ABEAE    db          5
 006ABEAE    dd          006ABF2B
 006ABEAE    dd          006ABEE6
 006ABEAE    dd          006ABEF3
 006ABEAE    dd          006ABF01
 006ABEAE    dd          006ABF0F
 006ABEAE    dd          006ABF1D
 006ABEE6    mov         eax,[007C4B48];^gvar_007C1726
 006ABEEB    movzx       eax,word ptr [eax]
>006ABEEE    jmp         006AC177
 006ABEF3    mov         eax,[007C4B48];^gvar_007C1726
 006ABEF8    movzx       eax,word ptr [eax+2]
>006ABEFC    jmp         006AC177
 006ABF01    mov         eax,[007C4B48];^gvar_007C1726
 006ABF06    movzx       eax,word ptr [eax+4]
>006ABF0A    jmp         006AC177
 006ABF0F    mov         eax,[007C4B48];^gvar_007C1726
 006ABF14    movzx       eax,word ptr [eax+6]
>006ABF18    jmp         006AC177
 006ABF1D    mov         eax,[007C4B48];^gvar_007C1726
 006ABF22    movzx       eax,word ptr [eax+8]
>006ABF26    jmp         006AC177
 006ABF2B    test        bl,bl
>006ABF2D    je          006ABF47
 006ABF2F    cmp         esi,0F
>006ABF32    jbe         006ABF39
 006ABF34    call        @BoundErr
 006ABF39    mov         eax,[007C4724];^gvar_007C1776
 006ABF3E    movzx       eax,word ptr [eax+esi*2]
>006ABF42    jmp         006AC177
 006ABF47    cmp         esi,0F
>006ABF4A    jbe         006ABF51
 006ABF4C    call        @BoundErr
 006ABF51    mov         eax,[007C475C];^gvar_007C1796
 006ABF56    movzx       eax,word ptr [eax+esi*2]
>006ABF5A    jmp         006AC177
 006ABF5F    test        bl,bl
>006ABF61    je          006ABF7B
 006ABF63    cmp         esi,0F
>006ABF66    jbe         006ABF6D
 006ABF68    call        @BoundErr
 006ABF6D    mov         eax,[007C4724];^gvar_007C1776
 006ABF72    movzx       eax,word ptr [eax+esi*2]
>006ABF76    jmp         006AC177
 006ABF7B    cmp         esi,0F
>006ABF7E    jbe         006ABF85
 006ABF80    call        @BoundErr
 006ABF85    mov         eax,[007C475C];^gvar_007C1796
 006ABF8A    movzx       eax,word ptr [eax+esi*2]
>006ABF8E    jmp         006AC177
 006ABF93    xor         eax,eax
>006ABF95    jmp         006AC177
 006ABF9A    xor         eax,eax
>006ABF9C    jmp         006AC177
 006ABFA1    xor         eax,eax
>006ABFA3    jmp         006AC177
 006ABFA8    xor         eax,eax
>006ABFAA    jmp         006AC177
 006ABFAF    fld         qword ptr [ebp+8]
 006ABFB2    call        @ROUND
 006ABFB7    add         eax,1
 006ABFBA    adc         edx,0
>006ABFBD    jno         006ABFC4
 006ABFBF    call        @IntOver
 006ABFC4    push        eax
 006ABFC5    sar         eax,1F
 006ABFC8    cmp         eax,edx
 006ABFCA    pop         eax
>006ABFCB    je          006ABFD2
 006ABFCD    call        @BoundErr
 006ABFD2    mov         edx,eax
 006ABFD4    dec         edx
 006ABFD5    sub         edx,5
>006ABFD8    jae         006ABFF6
 006ABFDA    dec         eax
 006ABFDB    cmp         eax,4
>006ABFDE    jbe         006ABFE5
 006ABFE0    call        @BoundErr
 006ABFE5    inc         eax
 006ABFE6    mov         edx,dword ptr ds:[7C4F14];^gvar_007C1730
 006ABFEC    movzx       eax,word ptr [edx+eax*2-2]
>006ABFF1    jmp         006AC177
 006ABFF6    test        bl,bl
>006ABFF8    je          006AC012
 006ABFFA    cmp         esi,0F
>006ABFFD    jbe         006AC004
 006ABFFF    call        @BoundErr
 006AC004    mov         eax,[007C4724];^gvar_007C1776
 006AC009    movzx       eax,word ptr [eax+esi*2]
>006AC00D    jmp         006AC177
 006AC012    cmp         esi,0F
>006AC015    jbe         006AC01C
 006AC017    call        @BoundErr
 006AC01C    mov         eax,[007C475C];^gvar_007C1796
 006AC021    movzx       eax,word ptr [eax+esi*2]
>006AC025    jmp         006AC177
 006AC02A    fld         qword ptr [ebp+8]
 006AC02D    call        @ROUND
 006AC032    push        eax
 006AC033    sar         eax,1F
 006AC036    cmp         eax,edx
 006AC038    pop         eax
>006AC039    je          006AC040
 006AC03B    call        @BoundErr
 006AC040    mov         edx,eax
 006AC042    dec         edx
 006AC043    sub         edx,0A
>006AC046    jae         006AC064
 006AC048    dec         eax
 006AC049    cmp         eax,9
>006AC04C    jbe         006AC053
 006AC04E    call        @BoundErr
 006AC053    inc         eax
 006AC054    mov         edx,dword ptr ds:[7C436C];^gvar_007C1746
 006AC05A    movzx       eax,word ptr [edx+eax*2-2]
>006AC05F    jmp         006AC177
 006AC064    test        bl,bl
>006AC066    je          006AC080
 006AC068    cmp         esi,0F
>006AC06B    jbe         006AC072
 006AC06D    call        @BoundErr
 006AC072    mov         eax,[007C4724];^gvar_007C1776
 006AC077    movzx       eax,word ptr [eax+esi*2]
>006AC07B    jmp         006AC177
 006AC080    cmp         esi,0F
>006AC083    jbe         006AC08A
 006AC085    call        @BoundErr
 006AC08A    mov         eax,[007C475C];^gvar_007C1796
 006AC08F    movzx       eax,word ptr [eax+esi*2]
>006AC093    jmp         006AC177
 006AC098    fld         qword ptr [ebp+8]
 006AC09B    call        @ROUND
 006AC0A0    push        eax
 006AC0A1    sar         eax,1F
 006AC0A4    cmp         eax,edx
 006AC0A6    pop         eax
>006AC0A7    je          006AC0AE
 006AC0A9    call        @BoundErr
 006AC0AE    mov         edx,eax
 006AC0B0    dec         edx
 006AC0B1    sub         edx,9
>006AC0B4    jae         006AC0D2
 006AC0B6    dec         eax
 006AC0B7    cmp         eax,8
>006AC0BA    jbe         006AC0C1
 006AC0BC    call        @BoundErr
 006AC0C1    inc         eax
 006AC0C2    mov         edx,dword ptr ds:[7C43D0];^gvar_007C175A
 006AC0C8    movzx       eax,word ptr [edx+eax*2-2]
>006AC0CD    jmp         006AC177
 006AC0D2    test        bl,bl
>006AC0D4    je          006AC0EE
 006AC0D6    cmp         esi,0F
>006AC0D9    jbe         006AC0E0
 006AC0DB    call        @BoundErr
 006AC0E0    mov         eax,[007C4724];^gvar_007C1776
 006AC0E5    movzx       eax,word ptr [eax+esi*2]
>006AC0E9    jmp         006AC177
 006AC0EE    cmp         esi,0F
>006AC0F1    jbe         006AC0F8
 006AC0F3    call        @BoundErr
 006AC0F8    mov         eax,[007C475C];^gvar_007C1796
 006AC0FD    movzx       eax,word ptr [eax+esi*2]
>006AC101    jmp         006AC177
 006AC103    fld         qword ptr [ebp+8]
 006AC106    call        @ROUND
 006AC10B    add         eax,1
 006AC10E    adc         edx,0
>006AC111    jno         006AC118
 006AC113    call        @IntOver
 006AC118    push        eax
 006AC119    sar         eax,1F
 006AC11C    cmp         eax,edx
 006AC11E    pop         eax
>006AC11F    je          006AC126
 006AC121    call        @BoundErr
 006AC126    mov         edx,eax
 006AC128    dec         edx
 006AC129    sub         edx,6
>006AC12C    jae         006AC147
 006AC12E    dec         eax
 006AC12F    cmp         eax,5
>006AC132    jbe         006AC139
 006AC134    call        @BoundErr
 006AC139    inc         eax
 006AC13A    mov         edx,dword ptr ds:[7C48D8];^gvar_007C173A
 006AC140    movzx       eax,word ptr [edx+eax*2-2]
>006AC145    jmp         006AC177
 006AC147    test        bl,bl
>006AC149    je          006AC160
 006AC14B    cmp         esi,0F
>006AC14E    jbe         006AC155
 006AC150    call        @BoundErr
 006AC155    mov         eax,[007C4724];^gvar_007C1776
 006AC15A    movzx       eax,word ptr [eax+esi*2]
>006AC15E    jmp         006AC177
 006AC160    cmp         esi,0F
>006AC163    jbe         006AC16A
 006AC165    call        @BoundErr
 006AC16A    mov         eax,[007C475C];^gvar_007C1796
 006AC16F    movzx       eax,word ptr [eax+esi*2]
>006AC173    jmp         006AC177
 006AC175    xor         eax,eax
 006AC177    pop         esi
 006AC178    pop         ebx
 006AC179    pop         ebp
 006AC17A    ret         8
end;*}

//006AC184
{*function sub_006AC184(?:?; ?:?):?;
begin
 006AC184    movzx       eax,al
 006AC187    cmp         eax,0A
>006AC18A    ja          006AC201
 006AC18C    jmp         dword ptr [eax*4+6AC193]
 006AC18C    dd          006AC1BF
 006AC18C    dd          006AC1C5
 006AC18C    dd          006AC1CB
 006AC18C    dd          006AC1D1
 006AC18C    dd          006AC1D7
 006AC18C    dd          006AC1DD
 006AC18C    dd          006AC1E3
 006AC18C    dd          006AC1E9
 006AC18C    dd          006AC1EF
 006AC18C    dd          006AC1F5
 006AC18C    dd          006AC1FB
 006AC1BF    mov         byte ptr [edx],0
 006AC1C2    xor         eax,eax
 006AC1C4    ret
 006AC1C5    mov         byte ptr [edx],1
 006AC1C8    xor         eax,eax
 006AC1CA    ret
 006AC1CB    mov         byte ptr [edx],0FF
 006AC1CE    mov         al,1
 006AC1D0    ret
 006AC1D1    mov         byte ptr [edx],3
 006AC1D4    xor         eax,eax
 006AC1D6    ret
 006AC1D7    mov         byte ptr [edx],4
 006AC1DA    xor         eax,eax
 006AC1DC    ret
 006AC1DD    mov         byte ptr [edx],5
 006AC1E0    xor         eax,eax
 006AC1E2    ret
 006AC1E3    mov         byte ptr [edx],6
 006AC1E6    xor         eax,eax
 006AC1E8    ret
 006AC1E9    mov         byte ptr [edx],7
 006AC1EC    xor         eax,eax
 006AC1EE    ret
 006AC1EF    mov         byte ptr [edx],0A
 006AC1F2    xor         eax,eax
 006AC1F4    ret
 006AC1F5    mov         byte ptr [edx],17
 006AC1F8    mov         al,1
 006AC1FA    ret
 006AC1FB    mov         byte ptr [edx],1B
 006AC1FE    mov         al,1
 006AC200    ret
 006AC201    mov         byte ptr [edx],0FE
 006AC204    mov         al,1
 006AC206    ret
end;*}

//006AC208
{*function sub_006AC208(?:?; ?:?):?;
begin
 006AC208    movzx       eax,al
 006AC20B    cmp         eax,11
>006AC20E    ja          006AC2CF
 006AC214    jmp         dword ptr [eax*4+6AC21B]
 006AC214    dd          006AC263
 006AC214    dd          006AC269
 006AC214    dd          006AC26F
 006AC214    dd          006AC275
 006AC214    dd          006AC27B
 006AC214    dd          006AC281
 006AC214    dd          006AC287
 006AC214    dd          006AC28D
 006AC214    dd          006AC293
 006AC214    dd          006AC299
 006AC214    dd          006AC29F
 006AC214    dd          006AC2A5
 006AC214    dd          006AC2AB
 006AC214    dd          006AC2B1
 006AC214    dd          006AC2B7
 006AC214    dd          006AC2BD
 006AC214    dd          006AC2C3
 006AC214    dd          006AC2C9
 006AC263    mov         byte ptr [edx],0
 006AC266    xor         eax,eax
 006AC268    ret
 006AC269    mov         byte ptr [edx],3
 006AC26C    xor         eax,eax
 006AC26E    ret
 006AC26F    mov         byte ptr [edx],4
 006AC272    xor         eax,eax
 006AC274    ret
 006AC275    mov         byte ptr [edx],5
 006AC278    xor         eax,eax
 006AC27A    ret
 006AC27B    mov         byte ptr [edx],6
 006AC27E    xor         eax,eax
 006AC280    ret
 006AC281    mov         byte ptr [edx],7
 006AC284    xor         eax,eax
 006AC286    ret
 006AC287    mov         byte ptr [edx],0
 006AC28A    xor         eax,eax
 006AC28C    ret
 006AC28D    mov         byte ptr [edx],3
 006AC290    xor         eax,eax
 006AC292    ret
 006AC293    mov         byte ptr [edx],4
 006AC296    xor         eax,eax
 006AC298    ret
 006AC299    mov         byte ptr [edx],5
 006AC29C    xor         eax,eax
 006AC29E    ret
 006AC29F    mov         byte ptr [edx],6
 006AC2A2    xor         eax,eax
 006AC2A4    ret
 006AC2A5    mov         byte ptr [edx],7
 006AC2A8    xor         eax,eax
 006AC2AA    ret
 006AC2AB    mov         byte ptr [edx],0FF
 006AC2AE    mov         al,1
 006AC2B0    ret
 006AC2B1    mov         byte ptr [edx],0FF
 006AC2B4    mov         al,1
 006AC2B6    ret
 006AC2B7    mov         byte ptr [edx],0FF
 006AC2BA    mov         al,1
 006AC2BC    ret
 006AC2BD    mov         byte ptr [edx],0C
 006AC2C0    xor         eax,eax
 006AC2C2    ret
 006AC2C3    mov         byte ptr [edx],0D
 006AC2C6    xor         eax,eax
 006AC2C8    ret
 006AC2C9    mov         byte ptr [edx],0FF
 006AC2CC    mov         al,1
 006AC2CE    ret
 006AC2CF    mov         byte ptr [edx],0FE
 006AC2D2    mov         al,1
 006AC2D4    ret
end;*}

//006AC2D8
{*function sub_006AC2D8(?:?; ?:?):?;
begin
 006AC2D8    sub         al,1
>006AC2DA    jb          006AC2E0
>006AC2DC    je          006AC2E6
>006AC2DE    jmp         006AC2EC
 006AC2E0    mov         byte ptr [edx],0
 006AC2E3    xor         eax,eax
 006AC2E5    ret
 006AC2E6    mov         byte ptr [edx],1
 006AC2E9    xor         eax,eax
 006AC2EB    ret
 006AC2EC    mov         byte ptr [edx],0FE
 006AC2EF    mov         al,1
 006AC2F1    ret
end;*}

//006AC2F4
{*function sub_006AC2F4(?:TFXPanel):?;
begin
 006AC2F4    push        ebp
 006AC2F5    mov         ebp,esp
 006AC2F7    mov         ecx,67
 006AC2FC    push        0
 006AC2FE    push        0
 006AC300    dec         ecx
>006AC301    jne         006AC2FC
 006AC303    push        ebx
 006AC304    push        esi
 006AC305    push        edi
 006AC306    mov         dword ptr [ebp-4],eax
 006AC309    lea         edi,[ebp-142]
 006AC30F    xor         eax,eax
 006AC311    push        ebp
 006AC312    push        6AD7DE
 006AC317    push        dword ptr fs:[eax]
 006AC31A    mov         dword ptr fs:[eax],esp
 006AC31D    mov         byte ptr [ebp-5],0
 006AC321    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006AC326    mov         eax,dword ptr [eax]
 006AC328    call        TEsaReport.Clear
 006AC32D    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006AC332    mov         eax,dword ptr [eax]
 006AC334    mov         edx,dword ptr ds:[7C2A40];^'General Panel data'
 006AC33A    call        TEsaReport.Add
 006AC33F    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006AC344    mov         eax,dword ptr [eax]
 006AC346    mov         edx,dword ptr ds:[7C2A44];^'- ESA IO settings need to be set manually in FX'
 006AC34C    call        TEsaReport.Add
 006AC351    mov         eax,dword ptr [ebp-4]
 006AC354    mov         esi,dword ptr [eax+8]
 006AC357    mov         eax,dword ptr [ebp-4]
 006AC35A    mov         ebx,dword ptr [eax+0C]
 006AC35D    mov         eax,dword ptr [ebp-4]
 006AC360    mov         eax,dword ptr [eax+10]
 006AC363    mov         dword ptr [ebp-20],eax
 006AC366    mov         eax,dword ptr [ebp-4]
 006AC369    mov         eax,dword ptr [eax+14]
 006AC36C    mov         dword ptr [ebp-24],eax
 006AC36F    mov         eax,dword ptr [ebp-4]
 006AC372    mov         eax,dword ptr [eax+18]
 006AC375    mov         dword ptr [ebp-28],eax
 006AC378    lea         edx,[esi+4]
 006AC37B    mov         eax,esi
 006AC37D    call        TFXPCI.SetConfigInfo
 006AC382    mov         eax,[007C499C];^gvar_008DF5C0
 006AC387    mov         byte ptr [eax],1
 006AC38A    lea         edx,[esi+44]
 006AC38D    mov         eax,esi
 006AC38F    call        TFXPCI.SetConfigInfo
 006AC394    lea         edx,[esi+84]
 006AC39A    mov         eax,esi
 006AC39C    call        TFXPCI.SetConfigInfo
 006AC3A1    mov         eax,[007C47D8];^gvar_008DF5A8
 006AC3A6    mov         byte ptr [eax],1
 006AC3A9    lea         edx,[esi+0C4]
 006AC3AF    mov         eax,esi
 006AC3B1    call        TFXPCI.SetConfigInfo
 006AC3B6    mov         eax,[007C4674];^gvar_00857F38
 006AC3BB    mov         byte ptr [eax],1
 006AC3BE    cmp         byte ptr ds:[8DF5E1],4;gvar_008DF5E1:Integer
>006AC3C5    jae         006AC3D5
 006AC3C7    movzx       eax,byte ptr ds:[8DF5E8];gvar_008DF5E8:Integer
 006AC3CE    shr         eax,1
 006AC3D0    mov         dword ptr [ebp-0C],eax
>006AC3D3    jmp         006AC400
 006AC3D5    movzx       eax,byte ptr ds:[8DF6FD];gvar_008DF6FD:Integer
 006AC3DC    movzx       edx,byte ptr ds:[8DF5FB];gvar_008DF5FB:Integer
 006AC3E3    sub         eax,edx
>006AC3E5    jno         006AC3EC
 006AC3E7    call        @IntOver
 006AC3EC    add         eax,2
>006AC3EF    jno         006AC3F6
 006AC3F1    call        @IntOver
 006AC3F6    sar         eax,1
>006AC3F8    jns         006AC3FD
 006AC3FA    adc         eax,0
 006AC3FD    mov         dword ptr [ebp-0C],eax
 006AC400    mov         byte ptr [ebx+4],1
 006AC404    push        dword ptr ds:[8DF5EC];gvar_008DF5EC:AnsiString
 006AC40A    push        6AD7FC;#13+#10
 006AC40F    push        dword ptr ds:[8DF5F0]
 006AC415    push        6AD7FC;#13+#10
 006AC41A    push        dword ptr ds:[8DF5F4]
 006AC420    lea         eax,[ebp-288]
 006AC426    mov         edx,5
 006AC42B    call        @LStrCatN
 006AC430    mov         edx,dword ptr [ebp-288]
 006AC436    lea         eax,[ebp-284]
 006AC43C    mov         ecx,0FF
 006AC441    call        @LStrToString
 006AC446    lea         edx,[ebp-284]
 006AC44C    mov         eax,ebx
 006AC44E    call        006A2174
 006AC453    cmp         byte ptr ds:[8DF5E8],1;gvar_008DF5E8:Integer
>006AC45A    jne         006AC4FB
 006AC460    movzx       eax,byte ptr ds:[8DF6FC];gvar_008DF6FC:Integer
 006AC467    sub         al,3
>006AC469    jae         006AC4B7
 006AC46B    movzx       eax,byte ptr ds:[8DF6FC];gvar_008DF6FC:Integer
 006AC472    cmp         eax,2
>006AC475    jbe         006AC47C
 006AC477    call        @BoundErr
 006AC47C    movzx       edx,byte ptr [eax+7C2B1C]
 006AC483    mov         eax,ebx
 006AC485    call        006A2734
 006AC48A    cmp         byte ptr ds:[8DF6FC],2;gvar_008DF6FC:Integer
>006AC491    je          006AC49C
 006AC493    cmp         byte ptr ds:[8DF6FC],0;gvar_008DF6FC:Integer
>006AC49A    jne         006AC4A0
 006AC49C    xor         edx,edx
>006AC49E    jmp         006AC4A2
 006AC4A0    mov         dl,1
 006AC4A2    mov         eax,ebx
 006AC4A4    call        006A279C
 006AC4A9    xor         edx,edx
 006AC4AB    mov         eax,ebx
 006AC4AD    call        006A27DC
>006AC4B2    jmp         006AC58E
 006AC4B7    lea         eax,[ebp-28C]
 006AC4BD    push        eax
 006AC4BE    movzx       eax,byte ptr ds:[8DF6FC];gvar_008DF6FC:Integer
 006AC4C5    mov         dword ptr [ebp-294],eax
 006AC4CB    mov         byte ptr [ebp-290],0
 006AC4D2    lea         edx,[ebp-294]
 006AC4D8    xor         ecx,ecx
 006AC4DA    mov         eax,[007C2A48];^'- ESA ServUsage invalid value (code %d)'
 006AC4DF    call        Format
 006AC4E4    mov         edx,dword ptr [ebp-28C]
 006AC4EA    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006AC4EF    mov         eax,dword ptr [eax]
 006AC4F1    call        TEsaReport.Add
>006AC4F6    jmp         006AC58E
 006AC4FB    movzx       eax,byte ptr ds:[8DF6FC];gvar_008DF6FC:Integer
 006AC502    sub         al,4
>006AC504    jae         006AC54F
 006AC506    movzx       eax,byte ptr ds:[8DF6FC];gvar_008DF6FC:Integer
 006AC50D    cmp         eax,3
>006AC510    jbe         006AC517
 006AC512    call        @BoundErr
 006AC517    movzx       edx,byte ptr [eax+7C2B1F]
 006AC51E    mov         eax,ebx
 006AC520    call        006A2734
 006AC525    cmp         byte ptr ds:[8DF6FC],3;gvar_008DF6FC:Integer
>006AC52C    je          006AC537
 006AC52E    cmp         byte ptr ds:[8DF6FC],0;gvar_008DF6FC:Integer
>006AC535    jne         006AC53B
 006AC537    xor         edx,edx
>006AC539    jmp         006AC53D
 006AC53B    mov         dl,1
 006AC53D    mov         eax,ebx
 006AC53F    call        006A279C
 006AC544    xor         edx,edx
 006AC546    mov         eax,ebx
 006AC548    call        006A27DC
>006AC54D    jmp         006AC58E
 006AC54F    lea         eax,[ebp-298]
 006AC555    push        eax
 006AC556    movzx       eax,byte ptr ds:[8DF6FC];gvar_008DF6FC:Integer
 006AC55D    mov         dword ptr [ebp-294],eax
 006AC563    mov         byte ptr [ebp-290],0
 006AC56A    lea         edx,[ebp-294]
 006AC570    xor         ecx,ecx
 006AC572    mov         eax,[007C2A48];^'- ESA ServUsage invalid value (code %d)'
 006AC577    call        Format
 006AC57C    mov         edx,dword ptr [ebp-298]
 006AC582    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006AC587    mov         eax,dword ptr [eax]
 006AC589    call        TEsaReport.Add
 006AC58E    mov         byte ptr [ebx+106],0
 006AC595    cmp         byte ptr ds:[8DF5E8],1;gvar_008DF5E8:Integer
>006AC59C    jne         006AC68B
 006AC5A2    movzx       eax,byte ptr ds:[8DF5F8];gvar_008DF5F8:Integer
 006AC5A9    sub         al,4
>006AC5AB    jae         006AC647
 006AC5B1    movzx       eax,byte ptr ds:[8DF5F8];gvar_008DF5F8:Integer
 006AC5B8    cmp         eax,3
>006AC5BB    jbe         006AC5C2
 006AC5BD    call        @BoundErr
 006AC5C2    movzx       edx,byte ptr [eax+7C2B23]
 006AC5C9    mov         eax,ebx
 006AC5CB    call        006A2838
 006AC5D0    movzx       eax,byte ptr ds:[8DF5F8];gvar_008DF5F8:Integer
 006AC5D7    cmp         eax,3
>006AC5DA    jbe         006AC5E1
 006AC5DC    call        @BoundErr
 006AC5E1    cmp         byte ptr [eax+7C2B27],1
 006AC5E8    sete        dl
 006AC5EB    mov         eax,ebx
 006AC5ED    call        006A28A0
 006AC5F2    xor         edx,edx
 006AC5F4    mov         eax,ebx
 006AC5F6    call        006A28E0
 006AC5FB    movzx       eax,byte ptr ds:[8DF5F8];gvar_008DF5F8:Integer
 006AC602    cmp         eax,3
>006AC605    jbe         006AC60C
 006AC607    call        @BoundErr
 006AC60C    movzx       edx,byte ptr [eax+7C2B2B]
 006AC613    mov         eax,ebx
 006AC615    call        006A293C
 006AC61A    mov         dl,4
 006AC61C    mov         eax,ebx
 006AC61E    call        006A29B8
 006AC623    movzx       eax,byte ptr ds:[8DF5F8];gvar_008DF5F8:Integer
 006AC62A    cmp         eax,3
>006AC62D    jbe         006AC634
 006AC62F    call        @BoundErr
 006AC634    movzx       edx,byte ptr [eax+7C2B2F]
 006AC63B    mov         eax,ebx
 006AC63D    call        006A2A30
>006AC642    jmp         006AC76C
 006AC647    lea         eax,[ebp-29C]
 006AC64D    push        eax
 006AC64E    movzx       eax,byte ptr ds:[8DF5F8];gvar_008DF5F8:Integer
 006AC655    mov         dword ptr [ebp-294],eax
 006AC65B    mov         byte ptr [ebp-290],0
 006AC662    lea         edx,[ebp-294]
 006AC668    xor         ecx,ecx
 006AC66A    mov         eax,[007C2A4C];^'- ESA ComUsage invalid value (code %d)'
 006AC66F    call        Format
 006AC674    mov         edx,dword ptr [ebp-29C]
 006AC67A    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006AC67F    mov         eax,dword ptr [eax]
 006AC681    call        TEsaReport.Add
>006AC686    jmp         006AC76C
 006AC68B    movzx       eax,byte ptr ds:[8DF5F8];gvar_008DF5F8:Integer
 006AC692    sub         al,6
>006AC694    jae         006AC72D
 006AC69A    movzx       eax,byte ptr ds:[8DF5F8];gvar_008DF5F8:Integer
 006AC6A1    cmp         eax,5
>006AC6A4    jbe         006AC6AB
 006AC6A6    call        @BoundErr
 006AC6AB    movzx       edx,byte ptr [eax+7C2B33]
 006AC6B2    mov         eax,ebx
 006AC6B4    call        006A2838
 006AC6B9    movzx       eax,byte ptr ds:[8DF5F8];gvar_008DF5F8:Integer
 006AC6C0    cmp         eax,5
>006AC6C3    jbe         006AC6CA
 006AC6C5    call        @BoundErr
 006AC6CA    cmp         byte ptr [eax+7C2B39],1
 006AC6D1    sete        dl
 006AC6D4    mov         eax,ebx
 006AC6D6    call        006A28A0
 006AC6DB    mov         dl,3
 006AC6DD    mov         eax,ebx
 006AC6DF    call        006A28E0
 006AC6E4    movzx       eax,byte ptr ds:[8DF5F8];gvar_008DF5F8:Integer
 006AC6EB    cmp         eax,5
>006AC6EE    jbe         006AC6F5
 006AC6F0    call        @BoundErr
 006AC6F5    movzx       edx,byte ptr [eax+7C2B3F]
 006AC6FC    mov         eax,ebx
 006AC6FE    call        006A293C
 006AC703    mov         dl,4
 006AC705    mov         eax,ebx
 006AC707    call        006A29B8
 006AC70C    movzx       eax,byte ptr ds:[8DF5F8];gvar_008DF5F8:Integer
 006AC713    cmp         eax,5
>006AC716    jbe         006AC71D
 006AC718    call        @BoundErr
 006AC71D    movzx       edx,byte ptr [eax+7C2B3F]
 006AC724    mov         eax,ebx
 006AC726    call        006A2A30
>006AC72B    jmp         006AC76C
 006AC72D    lea         eax,[ebp-2A0]
 006AC733    push        eax
 006AC734    movzx       eax,byte ptr ds:[8DF5F8];gvar_008DF5F8:Integer
 006AC73B    mov         dword ptr [ebp-294],eax
 006AC741    mov         byte ptr [ebp-290],0
 006AC748    lea         edx,[ebp-294]
 006AC74E    xor         ecx,ecx
 006AC750    mov         eax,[007C2A4C];^'- ESA ComUsage invalid value (code %d)'
 006AC755    call        Format
 006AC75A    mov         edx,dword ptr [ebp-2A0]
 006AC760    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006AC765    mov         eax,dword ptr [eax]
 006AC767    call        TEsaReport.Add
 006AC76C    mov         byte ptr [ebx+10A],0
 006AC773    cmp         byte ptr [ebx+10C],1
>006AC77A    jne         006AC7A8
 006AC77C    lea         eax,[ebp-2A4]
 006AC782    push        eax
 006AC783    lea         edx,[ebp-2A4]
 006AC789    or          ecx,0FFFFFFFF
 006AC78C    mov         eax,[007C2A60];^'- Seeing - Visible panel relations need to be set'
 006AC791    call        Format
 006AC796    mov         edx,dword ptr [ebp-2A4]
 006AC79C    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006AC7A1    mov         eax,dword ptr [eax]
 006AC7A3    call        TEsaReport.Add
 006AC7A8    movzx       edx,byte ptr ds:[8DF5FA];gvar_008DF5FA:Integer
 006AC7AF    mov         eax,ebx
 006AC7B1    call        006A2BC4
 006AC7B6    mov         byte ptr [ebx+180],3
 006AC7BD    movzx       edx,word ptr ds:[8DF5FC];gvar_008DF5FC:Integer
 006AC7C4    mov         eax,ebx
 006AC7C6    call        006A2C50
 006AC7CB    cmp         byte ptr ds:[8DF5E1],4;gvar_008DF5E1:Integer
>006AC7D2    jae         006AC7DF
 006AC7D4    mov         dl,20
 006AC7D6    mov         eax,ebx
 006AC7D8    call        006A2D20
>006AC7DD    jmp         006AC814
 006AC7DF    movzx       edx,word ptr ds:[8DF6FE];gvar_008DF6FE:Integer
 006AC7E6    movzx       eax,word ptr ds:[8DF5FC];gvar_008DF5FC:Integer
 006AC7ED    sub         edx,eax
>006AC7EF    jno         006AC7F6
 006AC7F1    call        @IntOver
 006AC7F6    add         edx,1
>006AC7F9    jno         006AC800
 006AC7FB    call        @IntOver
 006AC800    cmp         edx,0FF
>006AC806    jbe         006AC80D
 006AC808    call        @BoundErr
 006AC80D    mov         eax,ebx
 006AC80F    call        006A2D20
 006AC814    cmp         dword ptr [ebp-0C],0
 006AC818    setg        al
 006AC81B    and         eax,7F
 006AC81E    movzx       ecx,byte ptr [eax+7C2B45]
 006AC825    mov         dl,1
 006AC827    mov         eax,ebx
 006AC829    call        TFXPPD.SetLCType
 006AC82E    movzx       edx,byte ptr ds:[8DF5FB];gvar_008DF5FB:Integer
 006AC835    mov         eax,ebx
 006AC837    call        006A3B38
 006AC83C    cmp         dword ptr [ebp-0C],1
 006AC840    setg        al
 006AC843    and         eax,7F
 006AC846    movzx       ecx,byte ptr [eax+7C2B45]
 006AC84D    mov         dl,2
 006AC84F    mov         eax,ebx
 006AC851    call        TFXPPD.SetLCType
 006AC856    cmp         dword ptr [ebp-0C],2
 006AC85A    setg        al
 006AC85D    and         eax,7F
 006AC860    movzx       ecx,byte ptr [eax+7C2B45]
 006AC867    mov         dl,3
 006AC869    mov         eax,ebx
 006AC86B    call        TFXPPD.SetLCType
 006AC870    cmp         dword ptr [ebp-0C],3
 006AC874    setg        al
 006AC877    and         eax,7F
 006AC87A    movzx       ecx,byte ptr [eax+7C2B45]
 006AC881    mov         dl,4
 006AC883    mov         eax,ebx
 006AC885    call        TFXPPD.SetLCType
 006AC88A    mov         byte ptr [ebx+13E],0
 006AC891    mov         byte ptr [ebx+140],0
 006AC898    mov         byte ptr [ebx+142],0
 006AC89F    mov         byte ptr [ebx+144],0
 006AC8A6    movzx       edx,byte ptr ds:[8DF754];gvar_008DF754:Boolean
 006AC8AD    mov         eax,ebx
 006AC8AF    call        006A41D4
 006AC8B4    movzx       edx,byte ptr ds:[8DF755];gvar_008DF755:Boolean
 006AC8BB    mov         eax,ebx
 006AC8BD    call        006A4208
 006AC8C2    xor         edx,edx
 006AC8C4    mov         eax,ebx
 006AC8C6    call        006A423C
 006AC8CB    movzx       edx,byte ptr ds:[8DF756];gvar_008DF756:Boolean
 006AC8D2    mov         eax,ebx
 006AC8D4    call        006A4270
 006AC8D9    mov         dl,1
 006AC8DB    mov         eax,ebx
 006AC8DD    call        006A430C
 006AC8E2    xor         edx,edx
 006AC8E4    mov         eax,ebx
 006AC8E6    call        006A42A4
 006AC8EB    cmp         word ptr ds:[8DF608],12C;gvar_008DF608:Integer
>006AC8F4    ja          006AC906
 006AC8F6    movzx       edx,word ptr ds:[8DF608];gvar_008DF608:Integer
 006AC8FD    mov         eax,ebx
 006AC8FF    call        006A40E0
>006AC904    jmp         006AC945
 006AC906    lea         eax,[ebp-2A8]
 006AC90C    push        eax
 006AC90D    movzx       eax,word ptr ds:[8DF608];gvar_008DF608:Integer
 006AC914    mov         dword ptr [ebp-294],eax
 006AC91A    mov         byte ptr [ebp-290],0
 006AC921    lea         edx,[ebp-294]
 006AC927    xor         ecx,ecx
 006AC929    mov         eax,[007C2A50];^'- ESA DELAYT1 invalid value (%d)'
 006AC92E    call        Format
 006AC933    mov         edx,dword ptr [ebp-2A8]
 006AC939    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006AC93E    mov         eax,dword ptr [eax]
 006AC940    call        TEsaReport.Add
 006AC945    cmp         word ptr ds:[8DF60A],258;gvar_008DF60A:Integer
>006AC94E    ja          006AC960
 006AC950    movzx       edx,word ptr ds:[8DF60A];gvar_008DF60A:Integer
 006AC957    mov         eax,ebx
 006AC959    call        006A4170
>006AC95E    jmp         006AC99F
 006AC960    lea         eax,[ebp-2AC]
 006AC966    push        eax
 006AC967    movzx       eax,word ptr ds:[8DF60A];gvar_008DF60A:Integer
 006AC96E    mov         dword ptr [ebp-294],eax
 006AC974    mov         byte ptr [ebp-290],0
 006AC97B    lea         edx,[ebp-294]
 006AC981    xor         ecx,ecx
 006AC983    mov         eax,[007C2A54];^'- ESA DELAYT2 invalid value (%d)'
 006AC988    call        Format
 006AC98D    mov         edx,dword ptr [ebp-2AC]
 006AC993    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006AC998    mov         eax,dword ptr [eax]
 006AC99A    call        TEsaReport.Add
 006AC99F    mov         dl,1
 006AC9A1    mov         eax,ebx
 006AC9A3    call        006A3F0C
 006AC9A8    mov         dl,1
 006AC9AA    mov         eax,ebx
 006AC9AC    call        006A3F40
 006AC9B1    mov         dl,1
 006AC9B3    mov         eax,ebx
 006AC9B5    call        006A3F74
 006AC9BA    mov         dl,1
 006AC9BC    mov         eax,ebx
 006AC9BE    call        006A3FA8
 006AC9C3    mov         dl,1
 006AC9C5    mov         eax,ebx
 006AC9C7    call        006A3FDC
 006AC9CC    mov         dl,1
 006AC9CE    mov         eax,ebx
 006AC9D0    call        006A4010
 006AC9D5    mov         cl,1
 006AC9D7    xor         edx,edx
 006AC9D9    mov         eax,ebx
 006AC9DB    call        TFXPPD.SetPrintEventStatus
 006AC9E0    mov         cl,1
 006AC9E2    mov         dl,1
 006AC9E4    mov         eax,ebx
 006AC9E6    call        TFXPPD.SetPrintEventStatus
 006AC9EB    mov         cl,1
 006AC9ED    mov         dl,2
 006AC9EF    mov         eax,ebx
 006AC9F1    call        TFXPPD.SetPrintEventStatus
 006AC9F6    mov         cl,1
 006AC9F8    mov         dl,3
 006AC9FA    mov         eax,ebx
 006AC9FC    call        TFXPPD.SetPrintEventStatus
 006ACA01    mov         cl,1
 006ACA03    mov         dl,4
 006ACA05    mov         eax,ebx
 006ACA07    call        TFXPPD.SetPrintEventStatus
 006ACA0C    mov         cl,1
 006ACA0E    mov         dl,5
 006ACA10    mov         eax,ebx
 006ACA12    call        TFXPPD.SetPrintEventStatus
 006ACA17    mov         cl,1
 006ACA19    mov         dl,6
 006ACA1B    mov         eax,ebx
 006ACA1D    call        TFXPPD.SetPrintEventStatus
 006ACA22    xor         ecx,ecx
 006ACA24    mov         dl,7
 006ACA26    mov         eax,ebx
 006ACA28    call        TFXPPD.SetPrintEventStatus
 006ACA2D    mov         cl,1
 006ACA2F    xor         edx,edx
 006ACA31    mov         eax,ebx
 006ACA33    call        TFXPPD.SetLogEventStatus
 006ACA38    mov         cl,1
 006ACA3A    mov         dl,1
 006ACA3C    mov         eax,ebx
 006ACA3E    call        TFXPPD.SetLogEventStatus
 006ACA43    mov         cl,1
 006ACA45    mov         dl,2
 006ACA47    mov         eax,ebx
 006ACA49    call        TFXPPD.SetLogEventStatus
 006ACA4E    mov         cl,1
 006ACA50    mov         dl,3
 006ACA52    mov         eax,ebx
 006ACA54    call        TFXPPD.SetLogEventStatus
 006ACA59    mov         cl,1
 006ACA5B    mov         dl,4
 006ACA5D    mov         eax,ebx
 006ACA5F    call        TFXPPD.SetLogEventStatus
 006ACA64    mov         cl,1
 006ACA66    mov         dl,5
 006ACA68    mov         eax,ebx
 006ACA6A    call        TFXPPD.SetLogEventStatus
 006ACA6F    mov         cl,1
 006ACA71    mov         dl,6
 006ACA73    mov         eax,ebx
 006ACA75    call        TFXPPD.SetLogEventStatus
 006ACA7A    xor         ecx,ecx
 006ACA7C    mov         dl,7
 006ACA7E    mov         eax,ebx
 006ACA80    call        TFXPPD.SetLogEventStatus
 006ACA85    cmp         dword ptr ds:[8DF708],0FF;gvar_008DF708:Integer
>006ACA8F    jg          006ACAC7
 006ACA91    mov         edx,dword ptr ds:[8DF708];gvar_008DF708:Integer
 006ACA97    cmp         edx,0FF
>006ACA9D    jbe         006ACAA4
 006ACA9F    call        @BoundErr
 006ACAA4    mov         eax,ebx
 006ACAA6    call        006A4470
 006ACAAB    mov         edx,dword ptr ds:[8DF708];gvar_008DF708:Integer
 006ACAB1    cmp         edx,0FF
>006ACAB7    jbe         006ACABE
 006ACAB9    call        @BoundErr
 006ACABE    mov         eax,ebx
 006ACAC0    call        006A450C
>006ACAC5    jmp         006ACB04
 006ACAC7    lea         eax,[ebp-2B0]
 006ACACD    push        eax
 006ACACE    mov         eax,[008DF708];gvar_008DF708:Integer
 006ACAD3    mov         dword ptr [ebp-294],eax
 006ACAD9    mov         byte ptr [ebp-290],0
 006ACAE0    lea         edx,[ebp-294]
 006ACAE6    xor         ecx,ecx
 006ACAE8    mov         eax,[007C2A58];^'- ESA PanelLanguage invalid value (code %d)'
 006ACAED    call        Format
 006ACAF2    mov         edx,dword ptr [ebp-2B0]
 006ACAF8    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006ACAFD    mov         eax,dword ptr [eax]
 006ACAFF    call        TEsaReport.Add
 006ACB04    mov         dx,1716
 006ACB08    mov         eax,ebx
 006ACB0A    call        006A459C
 006ACB0F    mov         dx,177A
 006ACB13    mov         eax,ebx
 006ACB15    call        006A462C
 006ACB1A    xor         edx,edx
 006ACB1C    mov         eax,ebx
 006ACB1E    call        006A46BC
 006ACB23    cmp         dword ptr ds:[8DF708],0C;gvar_008DF708:Integer
>006ACB2A    jg          006ACB3C
 006ACB2C    movzx       edx,byte ptr ds:[8DF612];gvar_008DF612:Integer
 006ACB33    mov         eax,ebx
 006ACB35    call        006A4898
>006ACB3A    jmp         006ACB7B
 006ACB3C    lea         eax,[ebp-2B4]
 006ACB42    push        eax
 006ACB43    movzx       eax,byte ptr ds:[8DF612];gvar_008DF612:Integer
 006ACB4A    mov         dword ptr [ebp-294],eax
 006ACB50    mov         byte ptr [ebp-290],0
 006ACB57    lea         edx,[ebp-294]
 006ACB5D    xor         ecx,ecx
 006ACB5F    mov         eax,[007C2A5C];^'- ESA Max zone disablement time invalid (%d)'
 006ACB64    call        Format
 006ACB69    mov         edx,dword ptr [ebp-2B4]
 006ACB6F    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006ACB74    mov         eax,dword ptr [eax]
 006ACB76    call        TEsaReport.Add
 006ACB7B    mov         dl,1
 006ACB7D    mov         eax,ebx
 006ACB7F    call        006A4A84
 006ACB84    xor         edx,edx
 006ACB86    mov         eax,ebx
 006ACB88    call        006A4920
 006ACB8D    mov         edx,dword ptr ds:[6AD800];0x0 gvar_006AD800
 006ACB93    mov         eax,ebx
 006ACB95    call        006A2E40
 006ACB9A    mov         dl,64
 006ACB9C    mov         eax,ebx
 006ACB9E    call        006A2C00
 006ACBA3    mov         dl,3
 006ACBA5    mov         eax,ebx
 006ACBA7    call        006A42D8
 006ACBAC    xor         edx,edx
 006ACBAE    mov         eax,ebx
 006ACBB0    call        006A47E8
 006ACBB5    xor         edx,edx
 006ACBB7    mov         eax,ebx
 006ACBB9    call        006A4078
 006ACBBE    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006ACBC3    mov         eax,dword ptr [eax]
 006ACBC5    xor         edx,edx
 006ACBC7    call        TEsaReport.Add
 006ACBCC    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006ACBD1    mov         eax,dword ptr [eax]
 006ACBD3    mov         edx,dword ptr ds:[7C2A64];^'Address point data'
 006ACBD9    call        TEsaReport.Add
 006ACBDE    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006ACBE3    mov         eax,dword ptr [eax]
 006ACBE5    mov         edx,dword ptr ds:[7C2A68];^'- CtrlA, CtrlB, CtrlB2 and Control Groups might need to be s...
 006ACBEB    call        TEsaReport.Add
 006ACBF0    cmp         byte ptr ds:[8DF5E1],4;gvar_008DF5E1:Integer
>006ACBF7    jae         006ACC05
 006ACBF9    movzx       eax,byte ptr ds:[8DF5E8];gvar_008DF5E8:Integer
 006ACC00    mov         dword ptr [ebp-10],eax
>006ACC03    jmp         006ACC29
 006ACC05    movzx       eax,byte ptr ds:[8DF6FD];gvar_008DF6FD:Integer
 006ACC0C    movzx       edx,byte ptr ds:[8DF5FB];gvar_008DF5FB:Integer
 006ACC13    sub         eax,edx
>006ACC15    jno         006ACC1C
 006ACC17    call        @IntOver
 006ACC1C    add         eax,1
>006ACC1F    jno         006ACC26
 006ACC21    call        @IntOver
 006ACC26    mov         dword ptr [ebp-10],eax
 006ACC29    mov         eax,dword ptr [ebp-10]
 006ACC2C    sub         eax,1
>006ACC2F    jno         006ACC36
 006ACC31    call        @IntOver
 006ACC36    test        eax,eax
>006ACC38    jl          006AD632
 006ACC3E    inc         eax
 006ACC3F    mov         dword ptr [ebp-2C],eax
 006ACC42    xor         esi,esi
 006ACC44    xor         eax,eax
 006ACC46    mov         dword ptr [ebp-14],eax
 006ACC49    mov         dword ptr [ebp-30],8DF788
 006ACC50    mov         ebx,1
 006ACC55    mov         eax,dword ptr [ebp-30]
 006ACC58    mov         dword ptr [ebp-34],eax
 006ACC5B    mov         eax,edi
 006ACC5D    xor         ecx,ecx
 006ACC5F    mov         edx,0DA
 006ACC64    call        @FillChar
 006ACC69    movzx       eax,byte ptr ds:[8DF5FB];gvar_008DF5FB:Integer
 006ACC70    add         eax,esi
>006ACC72    jno         006ACC79
 006ACC74    call        @IntOver
 006ACC79    mov         dword ptr [ebp-18],eax
 006ACC7C    imul        eax,dword ptr [ebp-14],64
>006ACC80    jno         006ACC87
 006ACC82    call        @IntOver
 006ACC87    add         eax,ebx
>006ACC89    jno         006ACC90
 006ACC8B    call        @IntOver
 006ACC90    mov         dword ptr [ebp-1C],eax
 006ACC93    cmp         esi,7
>006ACC96    jbe         006ACC9D
 006ACC98    call        @BoundErr
 006ACC9D    imul        eax,esi,4A4
>006ACCA3    jno         006ACCAA
 006ACCA5    call        @IntOver
 006ACCAA    mov         edx,dword ptr [ebp-34]
 006ACCAD    push        esi
 006ACCAE    push        edi
 006ACCAF    lea         esi,[edx+eax*8-30]
 006ACCB3    lea         edi,[ebp-68]
 006ACCB6    mov         ecx,0C
 006ACCBB    rep movs    dword ptr [edi],dword ptr [esi]
 006ACCBD    pop         edi
 006ACCBE    pop         esi
 006ACCBF    cmp         dword ptr [ebp-64],0
>006ACCC3    je          006AD606
 006ACCC9    cmp         dword ptr [ebp-64],0B
>006ACCCD    jle         006ACD32
 006ACCCF    lea         eax,[ebp-2B8]
 006ACCD5    push        eax
 006ACCD6    mov         eax,dword ptr [ebp-18]
 006ACCD9    mov         dword ptr [ebp-2D0],eax
 006ACCDF    mov         byte ptr [ebp-2CC],0
 006ACCE6    mov         eax,dword ptr [ebp-1C]
 006ACCE9    mov         dword ptr [ebp-2C8],eax
 006ACCEF    mov         byte ptr [ebp-2C4],0
 006ACCF6    mov         eax,dword ptr [ebp-64]
 006ACCF9    mov         dword ptr [ebp-2C0],eax
 006ACCFF    mov         byte ptr [ebp-2BC],0
 006ACD06    lea         edx,[ebp-2D0]
 006ACD0C    mov         ecx,2
 006ACD11    mov         eax,[007C2A6C];^'- %.2d.%.3d removed, unknown address type (code %d)'
 006ACD16    call        Format
 006ACD1B    mov         edx,dword ptr [ebp-2B8]
 006ACD21    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006ACD26    mov         eax,dword ptr [eax]
 006ACD28    call        TEsaReport.Add
>006ACD2D    jmp         006AD606
 006ACD32    mov         eax,esi
 006ACD34    cmp         eax,0FF
>006ACD39    jbe         006ACD40
 006ACD3B    call        @BoundErr
 006ACD40    mov         byte ptr [edi+2],al
 006ACD43    imul        eax,dword ptr [ebp-14],64
>006ACD47    jno         006ACD4E
 006ACD49    call        @IntOver
 006ACD4E    add         eax,ebx
>006ACD50    jno         006ACD57
 006ACD52    call        @IntOver
 006ACD57    cmp         eax,0FF
>006ACD5C    jbe         006ACD63
 006ACD5E    call        @BoundErr
 006ACD63    mov         byte ptr [edi+3],al
 006ACD66    mov         byte ptr [edi+4],0
 006ACD6A    mov         eax,dword ptr [ebp-68]
 006ACD6D    cmp         eax,0FF
>006ACD72    jbe         006ACD79
 006ACD74    call        @BoundErr
 006ACD79    mov         byte ptr [edi+5],al
 006ACD7C    mov         eax,dword ptr [ebp-64]
 006ACD7F    cmp         eax,0FF
>006ACD84    jbe         006ACD8B
 006ACD86    call        @BoundErr
 006ACD8B    mov         byte ptr [edi+0A],al
 006ACD8E    mov         eax,dword ptr [ebp-64]
 006ACD91    cmp         eax,0B
>006ACD94    ja          006AD2A9
 006ACD9A    movzx       eax,byte ptr [eax+6ACDA8]
 006ACDA1    jmp         dword ptr [eax*4+6ACDB4]
 006ACDA1    db          0
 006ACDA1    db          0
 006ACDA1    db          1
 006ACDA1    db          1
 006ACDA1    db          2
 006ACDA1    db          3
 006ACDA1    db          4
 006ACDA1    db          0
 006ACDA1    db          0
 006ACDA1    db          0
 006ACDA1    db          0
 006ACDA1    db          1
 006ACDA1    dd          006AD2A9
 006ACDA1    dd          006ACDC8
 006ACDA1    dd          006ACE4C
 006ACDA1    dd          006ACFEB
 006ACDA1    dd          006AD18A
 006ACDC8    mov         eax,dword ptr [ebp-44]
 006ACDCB    sub         eax,1
>006ACDCE    jb          006ACDD7
 006ACDD0    sub         eax,2
>006ACDD3    jb          006ACDE0
>006ACDD5    jmp         006ACDE9
 006ACDD7    mov         byte ptr [edi+0B],0
>006ACDDB    jmp         006AD2AD
 006ACDE0    mov         byte ptr [edi+0B],1
>006ACDE4    jmp         006AD2AD
 006ACDE9    lea         eax,[ebp-2D4]
 006ACDEF    push        eax
 006ACDF0    mov         eax,dword ptr [ebp-18]
 006ACDF3    mov         dword ptr [ebp-2D0],eax
 006ACDF9    mov         byte ptr [ebp-2CC],0
 006ACE00    mov         eax,dword ptr [ebp-1C]
 006ACE03    mov         dword ptr [ebp-2C8],eax
 006ACE09    mov         byte ptr [ebp-2C4],0
 006ACE10    mov         eax,dword ptr [ebp-44]
 006ACE13    mov         dword ptr [ebp-2C0],eax
 006ACE19    mov         byte ptr [ebp-2BC],0
 006ACE20    lea         edx,[ebp-2D0]
 006ACE26    mov         ecx,2
 006ACE2B    mov         eax,[007C2A70];^'- %.2d.%.3d invalid output function (code %d)'
 006ACE30    call        Format
 006ACE35    mov         edx,dword ptr [ebp-2D4]
 006ACE3B    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006ACE40    mov         eax,dword ptr [eax]
 006ACE42    call        TEsaReport.Add
>006ACE47    jmp         006AD2AD
 006ACE4C    mov         eax,dword ptr [ebp-44]
 006ACE4F    cmp         eax,0FF
>006ACE54    jbe         006ACE5B
 006ACE56    call        @BoundErr
 006ACE5B    lea         edx,[edi+0B]
 006ACE5E    call        006AC184
 006ACE63    test        al,al
>006ACE65    je          006AD2AD
 006ACE6B    movzx       eax,byte ptr [edi+0B]
 006ACE6F    sub         al,0FE
>006ACE71    je          006ACE7C
 006ACE73    dec         al
>006ACE75    je          006ACEDF
>006ACE77    jmp         006ACF53
 006ACE7C    lea         eax,[ebp-2D8]
 006ACE82    push        eax
 006ACE83    mov         eax,dword ptr [ebp-18]
 006ACE86    mov         dword ptr [ebp-2D0],eax
 006ACE8C    mov         byte ptr [ebp-2CC],0
 006ACE93    mov         eax,dword ptr [ebp-1C]
 006ACE96    mov         dword ptr [ebp-2C8],eax
 006ACE9C    mov         byte ptr [ebp-2C4],0
 006ACEA3    mov         eax,dword ptr [ebp-44]
 006ACEA6    mov         dword ptr [ebp-2C0],eax
 006ACEAC    mov         byte ptr [ebp-2BC],0
 006ACEB3    lea         edx,[ebp-2D0]
 006ACEB9    mov         ecx,2
 006ACEBE    mov         eax,[007C2A74];^'- %.2d.%.3d removed, unknown input function (code %d)'
 006ACEC3    call        Format
 006ACEC8    mov         edx,dword ptr [ebp-2D8]
 006ACECE    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006ACED3    mov         eax,dword ptr [eax]
 006ACED5    call        TEsaReport.Add
>006ACEDA    jmp         006AD606
 006ACEDF    lea         eax,[ebp-2DC]
 006ACEE5    push        eax
 006ACEE6    mov         eax,dword ptr [ebp-18]
 006ACEE9    mov         dword ptr [ebp-2D0],eax
 006ACEEF    mov         byte ptr [ebp-2CC],0
 006ACEF6    mov         eax,dword ptr [ebp-1C]
 006ACEF9    mov         dword ptr [ebp-2C8],eax
 006ACEFF    mov         byte ptr [ebp-2C4],0
 006ACF06    mov         eax,dword ptr [ebp-44]
 006ACF09    cmp         eax,0A
>006ACF0C    jbe         006ACF13
 006ACF0E    call        @BoundErr
 006ACF13    mov         eax,dword ptr [eax*4+7C2AA0];^'Manual CP/Al''m Switch   '
 006ACF1A    mov         dword ptr [ebp-2C0],eax
 006ACF20    mov         byte ptr [ebp-2BC],11
 006ACF27    lea         edx,[ebp-2D0]
 006ACF2D    mov         ecx,2
 006ACF32    mov         eax,[007C2A78];^'- %.2d.%.3d removed, incompatible input function (was %s)'
 006ACF37    call        Format
 006ACF3C    mov         edx,dword ptr [ebp-2DC]
 006ACF42    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006ACF47    mov         eax,dword ptr [eax]
 006ACF49    call        TEsaReport.Add
>006ACF4E    jmp         006AD606
 006ACF53    lea         eax,[ebp-2E0]
 006ACF59    push        eax
 006ACF5A    mov         eax,dword ptr [ebp-18]
 006ACF5D    mov         dword ptr [ebp-300],eax
 006ACF63    mov         byte ptr [ebp-2FC],0
 006ACF6A    mov         eax,dword ptr [ebp-1C]
 006ACF6D    mov         dword ptr [ebp-2F8],eax
 006ACF73    mov         byte ptr [ebp-2F4],0
 006ACF7A    movzx       eax,byte ptr [edi+0B]
 006ACF7E    cmp         eax,21
>006ACF81    jbe         006ACF88
 006ACF83    call        @BoundErr
 006ACF88    mov         edx,dword ptr ds:[7C4248];^gvar_007C23DC:array[34] of ?
 006ACF8E    mov         eax,dword ptr [edx+eax*4]
 006ACF91    mov         dword ptr [ebp-2F0],eax
 006ACF97    mov         byte ptr [ebp-2EC],11
 006ACF9E    mov         eax,dword ptr [ebp-44]
 006ACFA1    cmp         eax,0A
>006ACFA4    jbe         006ACFAB
 006ACFA6    call        @BoundErr
 006ACFAB    mov         eax,dword ptr [eax*4+7C2AA0];^'Manual CP/Al''m Switch   '
 006ACFB2    mov         dword ptr [ebp-2E8],eax
 006ACFB8    mov         byte ptr [ebp-2E4],11
 006ACFBF    lea         edx,[ebp-300]
 006ACFC5    mov         ecx,3
 006ACFCA    mov         eax,[007C2A7C];^'- %.2d.%.3d = %s (was %s)'
 006ACFCF    call        Format
 006ACFD4    mov         edx,dword ptr [ebp-2E0]
 006ACFDA    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006ACFDF    mov         eax,dword ptr [eax]
 006ACFE1    call        TEsaReport.Add
>006ACFE6    jmp         006AD2AD
 006ACFEB    mov         eax,dword ptr [ebp-44]
 006ACFEE    cmp         eax,0FF
>006ACFF3    jbe         006ACFFA
 006ACFF5    call        @BoundErr
 006ACFFA    lea         edx,[edi+0B]
 006ACFFD    call        006AC208
 006AD002    test        al,al
>006AD004    je          006AD2AD
 006AD00A    movzx       eax,byte ptr [edi+0B]
 006AD00E    sub         al,0FE
>006AD010    je          006AD01B
 006AD012    dec         al
>006AD014    je          006AD07E
>006AD016    jmp         006AD0F2
 006AD01B    lea         eax,[ebp-304]
 006AD021    push        eax
 006AD022    mov         eax,dword ptr [ebp-18]
 006AD025    mov         dword ptr [ebp-2D0],eax
 006AD02B    mov         byte ptr [ebp-2CC],0
 006AD032    mov         eax,dword ptr [ebp-1C]
 006AD035    mov         dword ptr [ebp-2C8],eax
 006AD03B    mov         byte ptr [ebp-2C4],0
 006AD042    mov         eax,dword ptr [ebp-44]
 006AD045    mov         dword ptr [ebp-2C0],eax
 006AD04B    mov         byte ptr [ebp-2BC],0
 006AD052    lea         edx,[ebp-2D0]
 006AD058    mov         ecx,2
 006AD05D    mov         eax,[007C2A80];^'- %.2d.%.3d removed, unknown output function (code %d)'
 006AD062    call        Format
 006AD067    mov         edx,dword ptr [ebp-304]
 006AD06D    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006AD072    mov         eax,dword ptr [eax]
 006AD074    call        TEsaReport.Add
>006AD079    jmp         006AD606
 006AD07E    lea         eax,[ebp-308]
 006AD084    push        eax
 006AD085    mov         eax,dword ptr [ebp-18]
 006AD088    mov         dword ptr [ebp-2D0],eax
 006AD08E    mov         byte ptr [ebp-2CC],0
 006AD095    mov         eax,dword ptr [ebp-1C]
 006AD098    mov         dword ptr [ebp-2C8],eax
 006AD09E    mov         byte ptr [ebp-2C4],0
 006AD0A5    mov         eax,dword ptr [ebp-44]
 006AD0A8    cmp         eax,11
>006AD0AB    jbe         006AD0B2
 006AD0AD    call        @BoundErr
 006AD0B2    mov         eax,dword ptr [eax*4+7C2ACC];^'Zonal Bell Output       '
 006AD0B9    mov         dword ptr [ebp-2C0],eax
 006AD0BF    mov         byte ptr [ebp-2BC],11
 006AD0C6    lea         edx,[ebp-2D0]
 006AD0CC    mov         ecx,2
 006AD0D1    mov         eax,[007C2A84];^'- %.2d.%.3d removed, incompatible output function (was %s)'
 006AD0D6    call        Format
 006AD0DB    mov         edx,dword ptr [ebp-308]
 006AD0E1    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006AD0E6    mov         eax,dword ptr [eax]
 006AD0E8    call        TEsaReport.Add
>006AD0ED    jmp         006AD606
 006AD0F2    lea         eax,[ebp-30C]
 006AD0F8    push        eax
 006AD0F9    mov         eax,dword ptr [ebp-18]
 006AD0FC    mov         dword ptr [ebp-300],eax
 006AD102    mov         byte ptr [ebp-2FC],0
 006AD109    mov         eax,dword ptr [ebp-1C]
 006AD10C    mov         dword ptr [ebp-2F8],eax
 006AD112    mov         byte ptr [ebp-2F4],0
 006AD119    movzx       eax,byte ptr [edi+0B]
 006AD11D    cmp         eax,18
>006AD120    jbe         006AD127
 006AD122    call        @BoundErr
 006AD127    mov         edx,dword ptr ds:[7C4924];^gvar_007C16B0:array[25] of ?
 006AD12D    mov         eax,dword ptr [edx+eax*4]
 006AD130    mov         dword ptr [ebp-2F0],eax
 006AD136    mov         byte ptr [ebp-2EC],11
 006AD13D    mov         eax,dword ptr [ebp-44]
 006AD140    cmp         eax,11
>006AD143    jbe         006AD14A
 006AD145    call        @BoundErr
 006AD14A    mov         eax,dword ptr [eax*4+7C2ACC];^'Zonal Bell Output       '
 006AD151    mov         dword ptr [ebp-2E8],eax
 006AD157    mov         byte ptr [ebp-2E4],11
 006AD15E    lea         edx,[ebp-300]
 006AD164    mov         ecx,3
 006AD169    mov         eax,[007C2A88];^'- %.2d.%.3d = %s (was %s)'
 006AD16E    call        Format
 006AD173    mov         edx,dword ptr [ebp-30C]
 006AD179    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006AD17E    mov         eax,dword ptr [eax]
 006AD180    call        TEsaReport.Add
>006AD185    jmp         006AD2AD
 006AD18A    mov         eax,dword ptr [ebp-44]
 006AD18D    cmp         eax,0FF
>006AD192    jbe         006AD199
 006AD194    call        @BoundErr
 006AD199    lea         edx,[edi+0B]
 006AD19C    call        006AC2D8
 006AD1A1    test        al,al
>006AD1A3    je          006AD2AD
 006AD1A9    movzx       eax,byte ptr [edi+0B]
 006AD1AD    sub         al,0FE
>006AD1AF    jne         006AD214
 006AD1B1    lea         eax,[ebp-310]
 006AD1B7    push        eax
 006AD1B8    mov         eax,dword ptr [ebp-18]
 006AD1BB    mov         dword ptr [ebp-2D0],eax
 006AD1C1    mov         byte ptr [ebp-2CC],0
 006AD1C8    mov         eax,dword ptr [ebp-1C]
 006AD1CB    mov         dword ptr [ebp-2C8],eax
 006AD1D1    mov         byte ptr [ebp-2C4],0
 006AD1D8    mov         eax,dword ptr [ebp-44]
 006AD1DB    mov         dword ptr [ebp-2C0],eax
 006AD1E1    mov         byte ptr [ebp-2BC],0
 006AD1E8    lea         edx,[ebp-2D0]
 006AD1EE    mov         ecx,2
 006AD1F3    mov         eax,[007C2A8C];^'- %.2d.%.3d removed, unknown CZ module function (code %d)'
 006AD1F8    call        Format
 006AD1FD    mov         edx,dword ptr [ebp-310]
 006AD203    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006AD208    mov         eax,dword ptr [eax]
 006AD20A    call        TEsaReport.Add
>006AD20F    jmp         006AD606
 006AD214    lea         eax,[ebp-314]
 006AD21A    push        eax
 006AD21B    mov         eax,dword ptr [ebp-18]
 006AD21E    mov         dword ptr [ebp-300],eax
 006AD224    mov         byte ptr [ebp-2FC],0
 006AD22B    mov         eax,dword ptr [ebp-1C]
 006AD22E    mov         dword ptr [ebp-2F8],eax
 006AD234    mov         byte ptr [ebp-2F4],0
 006AD23B    movzx       eax,byte ptr [edi+0B]
 006AD23F    cmp         eax,1
>006AD242    jbe         006AD249
 006AD244    call        @BoundErr
 006AD249    mov         edx,dword ptr ds:[7C49C4];^gvar_007C1714:array[2] of ?
 006AD24F    mov         eax,dword ptr [edx+eax*4]
 006AD252    mov         dword ptr [ebp-2F0],eax
 006AD258    mov         byte ptr [ebp-2EC],11
 006AD25F    mov         eax,dword ptr [ebp-44]
 006AD262    cmp         eax,1
>006AD265    jbe         006AD26C
 006AD267    call        @BoundErr
 006AD26C    mov         eax,dword ptr [eax*4+7C2B14];^'Conventional Zone       '
 006AD273    mov         dword ptr [ebp-2E8],eax
 006AD279    mov         byte ptr [ebp-2E4],11
 006AD280    lea         edx,[ebp-300]
 006AD286    mov         ecx,3
 006AD28B    mov         eax,[007C2A90];^'- %.2d.%.3d = %s (was %s)'
 006AD290    call        Format
 006AD295    mov         edx,dword ptr [ebp-314]
 006AD29B    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006AD2A0    mov         eax,dword ptr [eax]
 006AD2A2    call        TEsaReport.Add
>006AD2A7    jmp         006AD2AD
 006AD2A9    mov         byte ptr [edi+0B],0
 006AD2AD    push        dword ptr [ebp-5C]
 006AD2B0    push        dword ptr [ebp-60]
 006AD2B3    movzx       edx,byte ptr [edi+0A]
 006AD2B7    mov         al,1
 006AD2B9    call        006ABD70
 006AD2BE    mov         word ptr [edi+0C],ax
 006AD2C2    push        dword ptr [ebp-54]
 006AD2C5    push        dword ptr [ebp-58]
 006AD2C8    movzx       edx,byte ptr [edi+0A]
 006AD2CC    xor         eax,eax
 006AD2CE    call        006ABD70
 006AD2D3    mov         word ptr [edi+0E],ax
 006AD2D7    movzx       eax,word ptr [edi+0C]
 006AD2DB    mov         word ptr [edi+10],ax
 006AD2DF    movzx       eax,word ptr [edi+0E]
 006AD2E3    mov         word ptr [edi+12],ax
 006AD2E7    movzx       eax,byte ptr [edi+0A]
 006AD2EB    cmp         eax,0F
>006AD2EE    jbe         006AD2F5
 006AD2F0    call        @BoundErr
 006AD2F5    mov         edx,dword ptr ds:[7C41AC];^gvar_007C17B6
 006AD2FB    movzx       eax,word ptr [edx+eax*2]
 006AD2FF    mov         word ptr [edi+14],ax
 006AD303    mov         eax,dword ptr [ebp-48]
 006AD306    sub         eax,5
>006AD309    jb          006AD30F
>006AD30B    je          006AD323
>006AD30D    jmp         006AD344
 006AD30F    mov         eax,dword ptr [ebp-48]
 006AD312    cmp         eax,0FF
>006AD317    jbe         006AD31E
 006AD319    call        @BoundErr
 006AD31E    mov         byte ptr [edi+16],al
>006AD321    jmp         006AD3A2
 006AD323    movzx       eax,word ptr ds:[8DF60C];gvar_008DF60C:Integer
 006AD32A    mov         ecx,0A
 006AD32F    xor         edx,edx
 006AD331    div         eax,ecx
 006AD333    cmp         eax,0FF
>006AD338    jbe         006AD33F
 006AD33A    call        @BoundErr
 006AD33F    mov         byte ptr [edi+17],al
>006AD342    jmp         006AD3A2
 006AD344    lea         eax,[ebp-318]
 006AD34A    push        eax
 006AD34B    mov         eax,dword ptr [ebp-18]
 006AD34E    mov         dword ptr [ebp-2D0],eax
 006AD354    mov         byte ptr [ebp-2CC],0
 006AD35B    mov         eax,dword ptr [ebp-1C]
 006AD35E    mov         dword ptr [ebp-2C8],eax
 006AD364    mov         byte ptr [ebp-2C4],0
 006AD36B    mov         eax,dword ptr [ebp-48]
 006AD36E    mov         dword ptr [ebp-2C0],eax
 006AD374    mov         byte ptr [ebp-2BC],0
 006AD37B    lea         edx,[ebp-2D0]
 006AD381    mov         ecx,2
 006AD386    mov         eax,[007C2A94];^'- %.2d.%.3d Mode = Normal, unknown mode value (code %d)'
 006AD38B    call        Format
 006AD390    mov         edx,dword ptr [ebp-318]
 006AD396    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006AD39B    mov         eax,dword ptr [eax]
 006AD39D    call        TEsaReport.Add
 006AD3A2    cmp         byte ptr [ebp-3F],0
>006AD3A6    je          006AD3C7
 006AD3A8    movzx       eax,word ptr ds:[8DF60C];gvar_008DF60C:Integer
 006AD3AF    mov         ecx,0A
 006AD3B4    xor         edx,edx
 006AD3B6    div         eax,ecx
 006AD3B8    cmp         eax,0FF
>006AD3BD    jbe         006AD3C4
 006AD3BF    call        @BoundErr
 006AD3C4    mov         byte ptr [edi+17],al
 006AD3C7    mov         byte ptr [edi+18],0
 006AD3CB    cmp         byte ptr [ebp-3E],0
>006AD3CF    je          006AD3E1
 006AD3D1    cmp         byte ptr [edi+0A],0B
>006AD3D5    jne         006AD3E1
 006AD3D7    mov         byte ptr [edi+19],1
 006AD3DB    mov         word ptr [edi+10],0C80
 006AD3E1    cmp         byte ptr [ebp-40],0
>006AD3E5    je          006AD404
 006AD3E7    mov         eax,dword ptr [ebp-64]
 006AD3EA    cmp         eax,0FF
>006AD3EF    ja          006AD3F8
 006AD3F1    bt          dword ptr ds:[7C2A20],eax;gvar_007C2A20
>006AD3F8    jae         006AD400
 006AD3FA    mov         byte ptr [edi+1A],2
>006AD3FE    jmp         006AD404
 006AD400    mov         byte ptr [edi+1A],1
 006AD404    mov         byte ptr [edi+1B],0
 006AD408    mov         byte ptr [edi+1E],0
 006AD40C    mov         byte ptr [edi+1F],0
 006AD410    mov         byte ptr [edi+21],0
 006AD414    mov         byte ptr [edi+23],0
 006AD418    mov         eax,dword ptr [ebp-64]
 006AD41B    add         eax,0FFFFFFFE
 006AD41E    sub         eax,2
>006AD421    jb          006AD433
 006AD423    dec         eax
>006AD424    je          006AD4EF
 006AD42A    sub         eax,6
>006AD42D    jne         006AD59D
 006AD433    mov         eax,dword ptr [ebp-44]
 006AD436    dec         eax
>006AD437    je          006AD441
 006AD439    dec         eax
>006AD43A    je          006AD498
>006AD43C    jmp         006AD59D
 006AD441    mov         byte ptr [edi+28],2
 006AD445    lea         eax,[ebp-31C]
 006AD44B    push        eax
 006AD44C    mov         eax,dword ptr [ebp-18]
 006AD44F    mov         dword ptr [ebp-32C],eax
 006AD455    mov         byte ptr [ebp-328],0
 006AD45C    mov         eax,dword ptr [ebp-1C]
 006AD45F    mov         dword ptr [ebp-324],eax
 006AD465    mov         byte ptr [ebp-320],0
 006AD46C    lea         edx,[ebp-32C]
 006AD472    mov         ecx,1
 006AD477    mov         eax,[007C2A98];^'- %.2d.%.3d Output control group set to Local'
 006AD47C    call        Format
 006AD481    mov         edx,dword ptr [ebp-31C]
 006AD487    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006AD48C    mov         eax,dword ptr [eax]
 006AD48E    call        TEsaReport.Add
>006AD493    jmp         006AD59D
 006AD498    mov         byte ptr [edi+28],1
 006AD49C    lea         eax,[ebp-330]
 006AD4A2    push        eax
 006AD4A3    mov         eax,dword ptr [ebp-18]
 006AD4A6    mov         dword ptr [ebp-32C],eax
 006AD4AC    mov         byte ptr [ebp-328],0
 006AD4B3    mov         eax,dword ptr [ebp-1C]
 006AD4B6    mov         dword ptr [ebp-324],eax
 006AD4BC    mov         byte ptr [ebp-320],0
 006AD4C3    lea         edx,[ebp-32C]
 006AD4C9    mov         ecx,1
 006AD4CE    mov         eax,[007C2A9C];^'- %.2d.%.3d Output control group set to General'
 006AD4D3    call        Format
 006AD4D8    mov         edx,dword ptr [ebp-330]
 006AD4DE    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006AD4E3    mov         eax,dword ptr [eax]
 006AD4E5    call        TEsaReport.Add
>006AD4EA    jmp         006AD59D
 006AD4EF    mov         eax,dword ptr [ebp-44]
 006AD4F2    sub         eax,6
>006AD4F5    jae         006AD54B
 006AD4F7    mov         byte ptr [edi+28],2
 006AD4FB    lea         eax,[ebp-334]
 006AD501    push        eax
 006AD502    mov         eax,dword ptr [ebp-18]
 006AD505    mov         dword ptr [ebp-32C],eax
 006AD50B    mov         byte ptr [ebp-328],0
 006AD512    mov         eax,dword ptr [ebp-1C]
 006AD515    mov         dword ptr [ebp-324],eax
 006AD51B    mov         byte ptr [ebp-320],0
 006AD522    lea         edx,[ebp-32C]
 006AD528    mov         ecx,1
 006AD52D    mov         eax,[007C2A98];^'- %.2d.%.3d Output control group set to Local'
 006AD532    call        Format
 006AD537    mov         edx,dword ptr [ebp-334]
 006AD53D    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006AD542    mov         eax,dword ptr [eax]
 006AD544    call        TEsaReport.Add
>006AD549    jmp         006AD59D
 006AD54B    mov         byte ptr [edi+28],1
 006AD54F    lea         eax,[ebp-338]
 006AD555    push        eax
 006AD556    mov         eax,dword ptr [ebp-18]
 006AD559    mov         dword ptr [ebp-32C],eax
 006AD55F    mov         byte ptr [ebp-328],0
 006AD566    mov         eax,dword ptr [ebp-1C]
 006AD569    mov         dword ptr [ebp-324],eax
 006AD56F    mov         byte ptr [ebp-320],0
 006AD576    lea         edx,[ebp-32C]
 006AD57C    mov         ecx,1
 006AD581    mov         eax,[007C2A9C];^'- %.2d.%.3d Output control group set to General'
 006AD586    call        Format
 006AD58B    mov         edx,dword ptr [ebp-338]
 006AD591    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006AD596    mov         eax,dword ptr [eax]
 006AD598    call        TEsaReport.Add
 006AD59D    cmp         esi,7
>006AD5A0    jbe         006AD5A7
 006AD5A2    call        @BoundErr
 006AD5A7    imul        eax,esi,43B3
>006AD5AD    jno         006AD5B4
 006AD5AF    call        @IntOver
 006AD5B4    mov         edx,dword ptr [ebp-24]
 006AD5B7    lea         eax,[edx+eax*4]
 006AD5BA    mov         edx,dword ptr [ebp-14]
 006AD5BD    cmp         edx,1
>006AD5C0    jbe         006AD5C7
 006AD5C2    call        @BoundErr
 006AD5C7    imul        edx,edx,43B3
>006AD5CD    jno         006AD5D4
 006AD5CF    call        @IntOver
 006AD5D4    lea         eax,[eax+edx*2]
 006AD5D7    dec         ebx
 006AD5D8    cmp         ebx,9E
>006AD5DE    jbe         006AD5E5
 006AD5E0    call        @BoundErr
 006AD5E5    inc         ebx
 006AD5E6    imul        edx,ebx,6D
>006AD5E9    jno         006AD5F0
 006AD5EB    call        @IntOver
 006AD5F0    push        esi
 006AD5F1    push        edi
 006AD5F2    mov         esi,edi
 006AD5F4    lea         edi,[eax+edx*2-0D6]
 006AD5FB    mov         ecx,36
 006AD600    rep movs    dword ptr [edi],dword ptr [esi]
 006AD602    movs        word ptr [edi],word ptr [esi]
 006AD604    pop         edi
 006AD605    pop         esi
 006AD606    inc         ebx
 006AD607    add         dword ptr [ebp-34],30
 006AD60B    cmp         ebx,64
>006AD60E    jne         006ACC5B
 006AD614    inc         dword ptr [ebp-14]
 006AD617    add         dword ptr [ebp-30],1290
 006AD61E    cmp         dword ptr [ebp-14],2
>006AD622    jne         006ACC50
 006AD628    inc         esi
 006AD629    dec         dword ptr [ebp-2C]
>006AD62C    jne         006ACC44
 006AD632    mov         eax,dword ptr [ebp-10]
 006AD635    sub         eax,1
>006AD638    jno         006AD63F
 006AD63A    call        @IntOver
 006AD63F    test        eax,eax
>006AD641    jl          006AD76A
 006AD647    inc         eax
 006AD648    mov         dword ptr [ebp-2C],eax
 006AD64B    xor         esi,esi
 006AD64D    xor         eax,eax
 006AD64F    mov         dword ptr [ebp-14],eax
 006AD652    mov         dword ptr [ebp-38],8F2081
 006AD659    mov         ebx,1
 006AD65E    mov         eax,dword ptr [ebp-38]
 006AD661    mov         edi,eax
 006AD663    lea         eax,[ebp-182]
 006AD669    xor         ecx,ecx
 006AD66B    mov         edx,40
 006AD670    call        @FillChar
 006AD675    mov         eax,esi
 006AD677    cmp         eax,0FF
>006AD67C    jbe         006AD683
 006AD67E    call        @BoundErr
 006AD683    mov         byte ptr [ebp-182],al
 006AD689    imul        eax,dword ptr [ebp-14],64
>006AD68D    jno         006AD694
 006AD68F    call        @IntOver
 006AD694    add         eax,ebx
>006AD696    jno         006AD69D
 006AD698    call        @IntOver
 006AD69D    cmp         eax,0FF
>006AD6A2    jbe         006AD6A9
 006AD6A4    call        @BoundErr
 006AD6A9    mov         byte ptr [ebp-181],al
 006AD6AF    lea         eax,[ebp-180]
 006AD6B5    cmp         esi,7
>006AD6B8    jbe         006AD6BF
 006AD6BA    call        @BoundErr
 006AD6BF    imul        edx,esi,0FDB
>006AD6C5    jno         006AD6CC
 006AD6C7    call        @IntOver
 006AD6CC    lea         edx,[edi+edx*2-29]
 006AD6D0    mov         cl,3C
 006AD6D2    call        @PStrNCpy
 006AD6D7    cmp         esi,7
>006AD6DA    jbe         006AD6E1
 006AD6DC    call        @BoundErr
 006AD6E1    imul        eax,esi,9F0
>006AD6E7    jno         006AD6EE
 006AD6E9    call        @IntOver
 006AD6EE    mov         edx,dword ptr [ebp-28]
 006AD6F1    lea         eax,[edx+eax*8]
 006AD6F4    mov         edx,dword ptr [ebp-14]
 006AD6F7    cmp         edx,1
>006AD6FA    jbe         006AD701
 006AD6FC    call        @BoundErr
 006AD701    imul        edx,edx,4F8
>006AD707    jno         006AD70E
 006AD709    call        @IntOver
 006AD70E    lea         eax,[eax+edx*8]
 006AD711    dec         ebx
 006AD712    cmp         ebx,9E
>006AD718    jbe         006AD71F
 006AD71A    call        @BoundErr
 006AD71F    inc         ebx
 006AD720    imul        edx,ebx,8
>006AD723    jno         006AD72A
 006AD725    call        @IntOver
 006AD72A    push        esi
 006AD72B    push        edi
 006AD72C    lea         edi,[eax+edx*8-3C]
 006AD730    lea         esi,[ebp-182]
 006AD736    mov         ecx,10
 006AD73B    rep movs    dword ptr [edi],dword ptr [esi]
 006AD73D    pop         edi
 006AD73E    pop         esi
 006AD73F    inc         ebx
 006AD740    add         edi,29
 006AD743    cmp         ebx,64
>006AD746    jne         006AD663
 006AD74C    inc         dword ptr [ebp-14]
 006AD74F    add         dword ptr [ebp-38],0FDB
 006AD756    cmp         dword ptr [ebp-14],2
>006AD75A    jne         006AD659
 006AD760    inc         esi
 006AD761    dec         dword ptr [ebp-2C]
>006AD764    jne         006AD64D
 006AD76A    mov         eax,[007C41F8];^gvar_008DF5DC:TEsaReport
 006AD76F    mov         eax,dword ptr [eax]
 006AD771    call        TCustomForm.Show
 006AD776    mov         byte ptr [ebp-5],1
 006AD77A    xor         eax,eax
 006AD77C    pop         edx
 006AD77D    pop         ecx
 006AD77E    pop         ecx
 006AD77F    mov         dword ptr fs:[eax],edx
 006AD782    push        6AD7E5
 006AD787    lea         eax,[ebp-338]
 006AD78D    mov         edx,3
 006AD792    call        @UStrArrayClr
 006AD797    lea         eax,[ebp-31C]
 006AD79D    mov         edx,7
 006AD7A2    call        @UStrArrayClr
 006AD7A7    lea         eax,[ebp-2E0]
 006AD7AD    mov         edx,4
 006AD7B2    call        @UStrArrayClr
 006AD7B7    lea         eax,[ebp-2B8]
 006AD7BD    mov         edx,9
 006AD7C2    call        @UStrArrayClr
 006AD7C7    lea         eax,[ebp-28C]
 006AD7CD    call        @UStrClr
 006AD7D2    lea         eax,[ebp-288]
 006AD7D8    call        @LStrClr
 006AD7DD    ret
>006AD7DE    jmp         @HandleFinally
>006AD7E3    jmp         006AD787
 006AD7E5    movzx       eax,byte ptr [ebp-5]
 006AD7E9    pop         edi
 006AD7EA    pop         esi
 006AD7EB    pop         ebx
 006AD7EC    mov         esp,ebp
 006AD7EE    pop         ebp
 006AD7EF    ret
end;*}

Initialization
Finalization
//006AD804
{*
 006AD804    push        ebp
 006AD805    mov         ebp,esp
 006AD807    xor         eax,eax
 006AD809    push        ebp
 006AD80A    push        6AD98E
 006AD80F    push        dword ptr fs:[eax]
 006AD812    mov         dword ptr fs:[eax],esp
 006AD815    inc         dword ptr ds:[901E08]
>006AD81B    jne         006AD980
 006AD821    mov         eax,8DF5E0;gvar_008DF5E0:Integer
 006AD826    mov         edx,dword ptr ds:[6A6B40];TToolInfoRec
 006AD82C    call        @FinalizeRecord
 006AD831    mov         eax,8DF5EC;gvar_008DF5EC:AnsiString
 006AD836    mov         edx,dword ptr ds:[6A6BC8];TDescription
 006AD83C    call        @FinalizeRecord
 006AD841    mov         eax,8DF5F8;gvar_008DF5F8:Integer
 006AD846    mov         edx,dword ptr ds:[6A6C68];TEsaPanelDataRec
 006AD84C    call        @FinalizeRecord
 006AD851    mov         eax,7C2A40;^'General Panel data'
 006AD856    call        @UStrClr
 006AD85B    mov         eax,7C2A44;^'- ESA IO settings need to be set manually in FX'
 006AD860    call        @UStrClr
 006AD865    mov         eax,7C2A48;^'- ESA ServUsage invalid value (code %d)'
 006AD86A    call        @UStrClr
 006AD86F    mov         eax,7C2A4C;^'- ESA ComUsage invalid value (code %d)'
 006AD874    call        @UStrClr
 006AD879    mov         eax,7C2A50;^'- ESA DELAYT1 invalid value (%d)'
 006AD87E    call        @UStrClr
 006AD883    mov         eax,7C2A54;^'- ESA DELAYT2 invalid value (%d)'
 006AD888    call        @UStrClr
 006AD88D    mov         eax,7C2A58;^'- ESA PanelLanguage invalid value (code %d)'
 006AD892    call        @UStrClr
 006AD897    mov         eax,7C2A5C;^'- ESA Max zone disablement time invalid (%d)'
 006AD89C    call        @UStrClr
 006AD8A1    mov         eax,7C2A60;^'- Seeing - Visible panel relations need to be set'
 006AD8A6    call        @UStrClr
 006AD8AB    mov         eax,7C2A64;^'Address point data'
 006AD8B0    call        @UStrClr
 006AD8B5    mov         eax,7C2A68;^'- CtrlA, CtrlB, CtrlB2 and Control Groups might need to be set for addresse...
 006AD8BA    call        @UStrClr
 006AD8BF    mov         eax,7C2A6C;^'- %.2d.%.3d removed, unknown address type (code %d)'
 006AD8C4    call        @UStrClr
 006AD8C9    mov         eax,7C2A70;^'- %.2d.%.3d invalid output function (code %d)'
 006AD8CE    call        @UStrClr
 006AD8D3    mov         eax,7C2A74;^'- %.2d.%.3d removed, unknown input function (code %d)'
 006AD8D8    call        @UStrClr
 006AD8DD    mov         eax,7C2A78;^'- %.2d.%.3d removed, incompatible input function (was %s)'
 006AD8E2    call        @UStrClr
 006AD8E7    mov         eax,7C2A7C;^'- %.2d.%.3d = %s (was %s)'
 006AD8EC    call        @UStrClr
 006AD8F1    mov         eax,7C2A80;^'- %.2d.%.3d removed, unknown output function (code %d)'
 006AD8F6    call        @UStrClr
 006AD8FB    mov         eax,7C2A84;^'- %.2d.%.3d removed, incompatible output function (was %s)'
 006AD900    call        @UStrClr
 006AD905    mov         eax,7C2A88;^'- %.2d.%.3d = %s (was %s)'
 006AD90A    call        @UStrClr
 006AD90F    mov         eax,7C2A8C;^'- %.2d.%.3d removed, unknown CZ module function (code %d)'
 006AD914    call        @UStrClr
 006AD919    mov         eax,7C2A90;^'- %.2d.%.3d = %s (was %s)'
 006AD91E    call        @UStrClr
 006AD923    mov         eax,7C2A94;^'- %.2d.%.3d Mode = Normal, unknown mode value (code %d)'
 006AD928    call        @UStrClr
 006AD92D    mov         eax,7C2A98;^'- %.2d.%.3d Output control group set to Local'
 006AD932    call        @UStrClr
 006AD937    mov         eax,7C2A9C;^'- %.2d.%.3d Output control group set to General'
 006AD93C    call        @UStrClr
 006AD941    mov         eax,7C2AA0;^'Manual CP/Al''m Switch   '
 006AD946    mov         ecx,0B
 006AD94B    mov         edx,dword ptr ds:[4012B8];string
 006AD951    call        @FinalizeArray
 006AD956    mov         eax,7C2ACC;^'Zonal Bell Output       '
 006AD95B    mov         ecx,12
 006AD960    mov         edx,dword ptr ds:[4012B8];string
 006AD966    call        @FinalizeArray
 006AD96B    mov         eax,7C2B14;^'Conventional Zone       '
 006AD970    mov         ecx,2
 006AD975    mov         edx,dword ptr ds:[4012B8];string
 006AD97B    call        @FinalizeArray
 006AD980    xor         eax,eax
 006AD982    pop         edx
 006AD983    pop         ecx
 006AD984    pop         ecx
 006AD985    mov         dword ptr fs:[eax],edx
 006AD988    push        6AD995
 006AD98D    ret
>006AD98E    jmp         @HandleFinally
>006AD993    jmp         006AD98D
 006AD995    pop         ebp
 006AD996    ret
*}
end.