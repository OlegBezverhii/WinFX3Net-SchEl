//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit FXAddressReports;

interface

uses
  SysUtils, Classes, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Forms, FXIniFiles, Vcl.Buttons, System.Generics.Collections, System.Generics.Defaults, Vcl.Dialogs;

type
  TAddressReport = class(TForm)
  published
    Panel1:TPanel;//f3C0
    gbSelectFrom:TGroupBox;//f3C4
    rbWholeSystem:TRadioButton;//f3C8
    rbPanels:TRadioButton;//f3CC
    rbLoops:TRadioButton;//f3D0
    rbZones:TRadioButton;//f3D4
    btnSelectFrom:TButton;//f3D8
    edSelectFrom:TEdit;//f3DC
    gbSelectCriteria:TGroupBox;//f3E0
    lblDeviceFamily:TLabel;//f3E4
    cmbFamily:TComboBox;//f3E8
    lblDeviceKind:TLabel;//f3EC
    cmbKind:TComboBox;//f3F0
    gbOutputData:TGroupBox;//f3F4
    cbPanelId:TCheckBox;//f3F8
    cbAddrId:TCheckBox;//f3FC
    cbZoneId:TCheckBox;//f400
    cbDeviceType:TCheckBox;//f404
    cbInputFunction:TCheckBox;//f408
    cbOutputFunction:TCheckBox;//f40C
    cbText:TCheckBox;//f410
    cbTested:TCheckBox;//f414
    ScrollBox1:TScrollBox;//f418
    rgSortOnItem:TRadioGroup;//f41C
    rgSortOrder:TRadioGroup;//f420
    btnPrintReport:TButton;//f424
    lblSelectFrom:TLabel;//f428
    lblFound:TLabel;//f42C
    btnNav1:TSpeedButton;//f430
    btnNav2:TSpeedButton;//f434
    btnNav3:TSpeedButton;//f438
    btnNav4:TSpeedButton;//f43C
    btnNav5:TSpeedButton;//f440
    btnNav6:TSpeedButton;//f444
    PrintDialog1:TPrintDialog;//f448
    FontDialog1:TFontDialog;//f44C
    btnFont:TButton;//f450
    cmbLineHeight:TComboBox;//f454
    btnPrinterProps:TButton;//f458
    procedure btnFontClick(Sender:TObject);//00741500
    procedure cmbLineHeightChange(Sender:TObject);//0074152C
    procedure btnNaviClick(Sender:TObject);//00741394
    procedure rgSortOrderClick(Sender:TObject);//00741348
    procedure cbRepIncClick(Sender:TObject);//00741370
    procedure FormDestroy(Sender:TObject);//0073F754
    procedure Translate(IniFile:TFXIniFile);//0073F790
    procedure UpdateAddressList;//00742928
    procedure btnPrintReportClick(Sender:TObject);//00741654
    procedure btnPrinterPropsClick(Sender:TObject);//007416BC
    procedure FormClose(Sender:TObject; var Action:UITypes.TCloseAction);//0073F78C
    procedure FormMouseWheel(Sender:TObject; Shift:Classes.TShiftState; WheelDelta:Integer; MousePos:Types.TPoint; var Handled:Boolean);//00740BBC
    procedure FormShow(Sender:TObject);//0073F784
    procedure FormCreate(Sender:TObject);//0073F5D4
    procedure FormResize(Sender:TObject);//0073F774
    procedure cmbKindChange(Sender:TObject);//00741318
    procedure rgSortOnItemClick(Sender:TObject);//00741320
    procedure cmbFamilyChange(Sender:TObject);//00741310
    procedure rbSelectFrom(Sender:TObject);//00740D50
    procedure btnSelectFromClick(Sender:TObject);//00740FB8
  public
    SelectedPanels:?;//f45C
    f460:byte;//f460
    SelectedLoops:?;//f461
    SelectedZones:?;//f481
    SelectedZoneOffs:Integer;//f4A4
  end;
    //procedure sub_0073F540(?:?; ?:UString; ?:Integer; ?:?);//0073F540
    //procedure sub_00740C00(?:?; ?:?);//00740C00
    //procedure sub_00741DC4(?:?; ?:?; ?:?; ?:?);//00741DC4
    //procedure sub_007423A8(?:?; ?:?; ?:?; ?:?);//007423A8
    //procedure sub_00742820(?:?; ?:?; ?:?; ?:?);//00742820
    //procedure sub_007428E8(?:?; ?:?; ?:?);//007428E8
    procedure sub_00742C88;//00742C88
    //function sub_00742CB8(?:TAddressReport):?;//00742CB8

implementation

{$R *.DFM}

//0073F540
{*procedure sub_0073F540(?:?; ?:UString; ?:Integer; ?:?);
begin
 0073F540    push        ebp
 0073F541    mov         ebp,esp
 0073F543    add         esp,0FFFFFFEC
 0073F546    push        ebx
 0073F547    push        esi
 0073F548    push        edi
 0073F549    xor         ebx,ebx
 0073F54B    mov         dword ptr [ebp-0C],ebx
 0073F54E    mov         dword ptr [ebp-8],ecx
 0073F551    mov         dword ptr [ebp-4],edx
 0073F554    mov         edi,eax
 0073F556    mov         esi,dword ptr [ebp+8]
 0073F559    xor         eax,eax
 0073F55B    push        ebp
 0073F55C    push        73F5C4
 0073F561    push        dword ptr fs:[eax]
 0073F564    mov         dword ptr fs:[eax],esp
 0073F567    mov         eax,esi
 0073F569    call        @UStrClr
 0073F56E    xor         ebx,ebx
 0073F570    mov         eax,ebx
 0073F572    movzx       eax,al
 0073F575    bt          dword ptr [edi],eax
>0073F578    jae         0073F5A9
 0073F57A    lea         eax,[ebp-0C]
 0073F57D    push        eax
 0073F57E    movzx       eax,bl
 0073F581    add         eax,dword ptr [ebp-8]
>0073F584    jno         0073F58B
 0073F586    call        @IntOver
 0073F58B    mov         dword ptr [ebp-14],eax
 0073F58E    mov         byte ptr [ebp-10],0
 0073F592    lea         edx,[ebp-14]
 0073F595    xor         ecx,ecx
 0073F597    mov         eax,dword ptr [ebp-4]
 0073F59A    call        Format
 0073F59F    mov         edx,dword ptr [ebp-0C]
 0073F5A2    mov         eax,esi
 0073F5A4    call        @UStrCat
 0073F5A9    inc         ebx
 0073F5AA    test        bl,bl
>0073F5AC    jne         0073F570
 0073F5AE    xor         eax,eax
 0073F5B0    pop         edx
 0073F5B1    pop         ecx
 0073F5B2    pop         ecx
 0073F5B3    mov         dword ptr fs:[eax],edx
 0073F5B6    push        73F5CB
 0073F5BB    lea         eax,[ebp-0C]
 0073F5BE    call        @UStrClr
 0073F5C3    ret
>0073F5C4    jmp         @HandleFinally
>0073F5C9    jmp         0073F5BB
 0073F5CB    pop         edi
 0073F5CC    pop         esi
 0073F5CD    pop         ebx
 0073F5CE    mov         esp,ebp
 0073F5D0    pop         ebp
 0073F5D1    ret         4
end;*}

//0073F5D4
procedure TAddressReport.FormCreate(Sender:TObject);
begin
{*
 0073F5D4    push        ebp
 0073F5D5    mov         ebp,esp
 0073F5D7    add         esp,0FFFFFFE8
 0073F5DA    push        ebx
 0073F5DB    push        esi
 0073F5DC    xor         ecx,ecx
 0073F5DE    mov         dword ptr [ebp-4],ecx
 0073F5E1    mov         dword ptr [ebp-18],ecx
 0073F5E4    mov         ebx,eax
 0073F5E6    mov         esi,dword ptr ds:[7C4D94];^gvar_00902C88:TFXDocPrinter
 0073F5EC    xor         eax,eax
 0073F5EE    push        ebp
 0073F5EF    push        73F6FF
 0073F5F4    push        dword ptr fs:[eax]
 0073F5F7    mov         dword ptr fs:[eax],esp
 0073F5FA    lea         eax,[ebp-4]
 0073F5FD    push        eax
 0073F5FE    mov         eax,73F718;'Address Report'
 0073F603    mov         dword ptr [ebp-14],eax
 0073F606    mov         byte ptr [ebp-10],11
 0073F60A    lea         edx,[ebp-18]
 0073F60D    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 0073F612    mov         eax,dword ptr [eax]
 0073F614    call        005DDC74
 0073F619    mov         eax,dword ptr [ebp-18]
 0073F61C    mov         dword ptr [ebp-0C],eax
 0073F61F    mov         byte ptr [ebp-8],11
 0073F623    lea         edx,[ebp-14]
 0073F626    mov         ecx,1
 0073F62B    mov         eax,73F744;'%s (%s)'
 0073F630    call        Format
 0073F635    mov         edx,dword ptr [ebp-4]
 0073F638    mov         eax,ebx
 0073F63A    call        TControl.SetText
 0073F63F    mov         ecx,dword ptr [ebx+418];TAddressReport.ScrollBox1:TScrollBox
 0073F645    mov         dl,1
 0073F647    mov         eax,[0073BDA8];TFXDocPrinter
 0073F64C    call        TFXDocPrinter.Create;TFXDocPrinter.Create
 0073F651    mov         dword ptr [esi],eax
 0073F653    mov         eax,dword ptr [esi]
 0073F655    mov         dword ptr [eax+18],14
 0073F65C    mov         eax,dword ptr [esi]
 0073F65E    mov         dword ptr [eax+20],0A
 0073F665    mov         eax,dword ptr [esi]
 0073F667    mov         dword ptr [eax+1C],0F
 0073F66E    mov         eax,dword ptr [esi]
 0073F670    mov         dword ptr [eax+24],0A
 0073F677    mov         eax,dword ptr [esi]
 0073F679    mov         dword ptr [eax+28],8
 0073F680    mov         eax,dword ptr [esi]
 0073F682    mov         dword ptr [eax+2C],8
 0073F689    mov         eax,dword ptr [esi]
 0073F68B    mov         edx,dword ptr [ebx+74];TAddressReport.FFont:TFont
 0073F68E    call        0073E404
 0073F693    mov         eax,dword ptr [esi]
 0073F695    xor         edx,edx
 0073F697    call        TFXDocPrinter.SelectCanvas
 0073F69C    mov         eax,dword ptr [esi]
 0073F69E    mov         dword ptr [eax+8],1
 0073F6A5    mov         eax,dword ptr [esi]
 0073F6A7    mov         dword ptr [eax+10],1
 0073F6AE    mov         eax,dword ptr [esi]
 0073F6B0    mov         byte ptr [eax+5],0
 0073F6B4    mov         dword ptr [ebx+4A4],1;TAddressReport.SelectedZoneOffs:Integer
 0073F6BE    mov         dl,1
 0073F6C0    mov         eax,[004CE930];TObjectList
 0073F6C5    call        TObjectList.Create;TObjectList.Create
 0073F6CA    mov         edx,dword ptr [esi]
 0073F6CC    mov         dword ptr [edx+0D8],eax
 0073F6D2    mov         eax,ebx
 0073F6D4    call        00742CB8
 0073F6D9    mov         edx,dword ptr [esi]
 0073F6DB    mov         byte ptr [edx+0DC],al
 0073F6E1    xor         eax,eax
 0073F6E3    pop         edx
 0073F6E4    pop         ecx
 0073F6E5    pop         ecx
 0073F6E6    mov         dword ptr fs:[eax],edx
 0073F6E9    push        73F706
 0073F6EE    lea         eax,[ebp-18]
 0073F6F1    call        @UStrClr
 0073F6F6    lea         eax,[ebp-4]
 0073F6F9    call        @UStrClr
 0073F6FE    ret
>0073F6FF    jmp         @HandleFinally
>0073F704    jmp         0073F6EE
 0073F706    pop         esi
 0073F707    pop         ebx
 0073F708    mov         esp,ebp
 0073F70A    pop         ebp
 0073F70B    ret
*}
end;

//0073F754
procedure TAddressReport.FormDestroy(Sender:TObject);
begin
{*
 0073F754    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 0073F759    mov         eax,dword ptr [eax]
 0073F75B    mov         eax,dword ptr [eax+0D8]
 0073F761    call        TObject.Free
 0073F766    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 0073F76B    mov         eax,dword ptr [eax]
 0073F76D    call        TObject.Free
 0073F772    ret
*}
end;

//0073F774
procedure TAddressReport.FormResize(Sender:TObject);
begin
{*
 0073F774    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 0073F779    mov         eax,dword ptr [eax]
 0073F77B    call        TFXDocPrinter.AlignPreview
 0073F780    ret
*}
end;

//0073F784
procedure TAddressReport.FormShow(Sender:TObject);
begin
{*
 0073F784    call        TAddressReport.UpdateAddressList
 0073F789    ret
*}
end;

//0073F78C
procedure TAddressReport.FormClose(Sender:TObject; var Action:UITypes.TCloseAction);
begin
{*
 0073F78C    ret
*}
end;

//0073F790
procedure TAddressReport.Translate(IniFile:TFXIniFile);
begin
{*
 0073F790    push        ebp
 0073F791    mov         ebp,esp
 0073F793    mov         ecx,14
 0073F798    push        0
 0073F79A    push        0
 0073F79C    dec         ecx
>0073F79D    jne         0073F798
 0073F79F    push        ecx
 0073F7A0    push        ebx
 0073F7A1    push        esi
 0073F7A2    push        edi
 0073F7A3    mov         ebx,edx
 0073F7A5    mov         esi,eax
 0073F7A7    xor         eax,eax
 0073F7A9    push        ebp
 0073F7AA    push        73FEEB
 0073F7AF    push        dword ptr fs:[eax]
 0073F7B2    mov         dword ptr fs:[eax],esp
 0073F7B5    push        73FF08;'Address Report'
 0073F7BA    lea         eax,[ebp-8]
 0073F7BD    push        eax
 0073F7BE    mov         ecx,73FF34;'sAddressReport'
 0073F7C3    mov         edx,73FF60;'AddressReport'
 0073F7C8    mov         eax,ebx
 0073F7CA    mov         edi,dword ptr [eax]
 0073F7CC    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073F7CF    push        dword ptr [ebp-8]
 0073F7D2    push        73FF88;' ('
 0073F7D7    lea         edx,[ebp-0C]
 0073F7DA    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 0073F7DF    mov         eax,dword ptr [eax]
 0073F7E1    call        005DDC74
 0073F7E6    push        dword ptr [ebp-0C]
 0073F7E9    push        73FF9C;')'
 0073F7EE    lea         eax,[ebp-4]
 0073F7F1    mov         edx,4
 0073F7F6    call        @UStrCatN
 0073F7FB    mov         edx,dword ptr [ebp-4]
 0073F7FE    mov         eax,[00902C90];gvar_00902C90:TAddressReport
 0073F803    call        TControl.SetText
 0073F808    push        73FFAC;'Select addresses from'
 0073F80D    lea         eax,[ebp-10]
 0073F810    push        eax
 0073F811    mov         ecx,73FFE4;'sgbSelectFrom'
 0073F816    mov         edx,73FF60;'AddressReport'
 0073F81B    mov         eax,ebx
 0073F81D    mov         edi,dword ptr [eax]
 0073F81F    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073F822    mov         edx,dword ptr [ebp-10]
 0073F825    mov         eax,dword ptr [esi+3C4];TAddressReport.gbSelectFrom:TGroupBox
 0073F82B    call        TControl.SetText
 0073F830    push        74000C;'Whole system'
 0073F835    lea         eax,[ebp-14]
 0073F838    push        eax
 0073F839    mov         ecx,740034;'srbWholeSystem'
 0073F83E    mov         edx,73FF60;'AddressReport'
 0073F843    mov         eax,ebx
 0073F845    mov         edi,dword ptr [eax]
 0073F847    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073F84A    mov         edx,dword ptr [ebp-14]
 0073F84D    mov         eax,dword ptr [esi+3C8];TAddressReport.rbWholeSystem:TRadioButton
 0073F853    call        TControl.SetText
 0073F858    push        740060;'Panels'
 0073F85D    lea         eax,[ebp-18]
 0073F860    push        eax
 0073F861    mov         ecx,74007C;'srbPanels'
 0073F866    mov         edx,73FF60;'AddressReport'
 0073F86B    mov         eax,ebx
 0073F86D    mov         edi,dword ptr [eax]
 0073F86F    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073F872    mov         edx,dword ptr [ebp-18]
 0073F875    mov         eax,dword ptr [esi+3CC];TAddressReport.rbPanels:TRadioButton
 0073F87B    call        TControl.SetText
 0073F880    push        74009C;'Loops'
 0073F885    lea         eax,[ebp-1C]
 0073F888    push        eax
 0073F889    mov         ecx,7400B4;'srbLoops'
 0073F88E    mov         edx,73FF60;'AddressReport'
 0073F893    mov         eax,ebx
 0073F895    mov         edi,dword ptr [eax]
 0073F897    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073F89A    mov         edx,dword ptr [ebp-1C]
 0073F89D    mov         eax,dword ptr [esi+3D0];TAddressReport.rbLoops:TRadioButton
 0073F8A3    call        TControl.SetText
 0073F8A8    push        7400D4;'Zones'
 0073F8AD    lea         eax,[ebp-20]
 0073F8B0    push        eax
 0073F8B1    mov         ecx,7400EC;'srbZones'
 0073F8B6    mov         edx,73FF60;'AddressReport'
 0073F8BB    mov         eax,ebx
 0073F8BD    mov         edi,dword ptr [eax]
 0073F8BF    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073F8C2    mov         edx,dword ptr [ebp-20]
 0073F8C5    mov         eax,dword ptr [esi+3D4];TAddressReport.rbZones:TRadioButton
 0073F8CB    call        TControl.SetText
 0073F8D0    push        74010C;'Select Panels'
 0073F8D5    lea         eax,[ebp-24]
 0073F8D8    push        eax
 0073F8D9    mov         ecx,740134;'sSelectPanels'
 0073F8DE    mov         edx,73FF60;'AddressReport'
 0073F8E3    mov         eax,ebx
 0073F8E5    mov         edi,dword ptr [eax]
 0073F8E7    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073F8EA    mov         edx,dword ptr [ebp-24]
 0073F8ED    mov         eax,7C3E44;^'Select panels'
 0073F8F2    call        @UStrAsg
 0073F8F7    push        74015C;'Select Loops'
 0073F8FC    lea         eax,[ebp-28]
 0073F8FF    push        eax
 0073F900    mov         ecx,740184;'sSelectLoops'
 0073F905    mov         edx,73FF60;'AddressReport'
 0073F90A    mov         eax,ebx
 0073F90C    mov         edi,dword ptr [eax]
 0073F90E    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073F911    mov         edx,dword ptr [ebp-28]
 0073F914    mov         eax,7C3E48;^'Select Loops'
 0073F919    call        @UStrAsg
 0073F91E    push        7401AC;'Select Zones'
 0073F923    lea         eax,[ebp-2C]
 0073F926    push        eax
 0073F927    mov         ecx,7401D4;'sSelectZones'
 0073F92C    mov         edx,73FF60;'AddressReport'
 0073F931    mov         eax,ebx
 0073F933    mov         edi,dword ptr [eax]
 0073F935    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073F938    mov         edx,dword ptr [ebp-2C]
 0073F93B    mov         eax,7C3E4C;^'Select Zones'
 0073F940    call        @UStrAsg
 0073F945    push        7401FC;'Found %d addresses'
 0073F94A    lea         eax,[ebp-30]
 0073F94D    push        eax
 0073F94E    mov         ecx,740230;'sLabelFound'
 0073F953    mov         edx,73FF60;'AddressReport'
 0073F958    mov         eax,ebx
 0073F95A    mov         edi,dword ptr [eax]
 0073F95C    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073F95F    mov         edx,dword ptr [ebp-30]
 0073F962    mov         eax,7C3E50;^'Found %d addresses'
 0073F967    call        @UStrAsg
 0073F96C    push        740254;'Selection criteria'
 0073F971    lea         eax,[ebp-34]
 0073F974    push        eax
 0073F975    mov         ecx,740288;'sgbSelectCriteria'
 0073F97A    mov         edx,73FF60;'AddressReport'
 0073F97F    mov         eax,ebx
 0073F981    mov         edi,dword ptr [eax]
 0073F983    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073F986    mov         edx,dword ptr [ebp-34]
 0073F989    mov         eax,dword ptr [esi+3E0];TAddressReport.gbSelectCriteria:TGroupBox
 0073F98F    call        TControl.SetText
 0073F994    push        7402B8;'Device family'
 0073F999    lea         eax,[ebp-38]
 0073F99C    push        eax
 0073F99D    mov         ecx,7402E0;'slblDeviceFamily'
 0073F9A2    mov         edx,73FF60;'AddressReport'
 0073F9A7    mov         eax,ebx
 0073F9A9    mov         edi,dword ptr [eax]
 0073F9AB    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073F9AE    mov         edx,dword ptr [ebp-38]
 0073F9B1    mov         eax,dword ptr [esi+3E4];TAddressReport.lblDeviceFamily:TLabel
 0073F9B7    call        TControl.SetText
 0073F9BC    push        740310;'<Don''t care (any family)>'
 0073F9C1    lea         eax,[ebp-3C]
 0073F9C4    push        eax
 0073F9C5    mov         ecx,740350;'sDeviceFamilyItem0'
 0073F9CA    mov         edx,73FF60;'AddressReport'
 0073F9CF    mov         eax,ebx
 0073F9D1    mov         edi,dword ptr [eax]
 0073F9D3    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073F9D6    mov         ecx,dword ptr [ebp-3C]
 0073F9D9    mov         eax,dword ptr [esi+3E8];TAddressReport.cmbFamily:TComboBox
 0073F9DF    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 0073F9E5    xor         edx,edx
 0073F9E7    mov         edi,dword ptr [eax]
 0073F9E9    call        dword ptr [edi+20];TStrings.Put
 0073F9EC    push        740384;'Apollo (ALC)'
 0073F9F1    lea         eax,[ebp-40]
 0073F9F4    push        eax
 0073F9F5    mov         ecx,7403AC;'sDeviceFamilyItem1'
 0073F9FA    mov         edx,73FF60;'AddressReport'
 0073F9FF    mov         eax,ebx
 0073FA01    mov         edi,dword ptr [eax]
 0073FA03    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073FA06    mov         ecx,dword ptr [ebp-40]
 0073FA09    mov         eax,dword ptr [esi+3E8];TAddressReport.cmbFamily:TComboBox
 0073FA0F    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 0073FA15    mov         edx,1
 0073FA1A    mov         edi,dword ptr [eax]
 0073FA1C    call        dword ptr [edi+20];TStrings.Put
 0073FA1F    push        7403E0;'System Sensor 200 series (LC)'
 0073FA24    lea         eax,[ebp-44]
 0073FA27    push        eax
 0073FA28    mov         ecx,740428;'sDeviceFamilyItem2'
 0073FA2D    mov         edx,73FF60;'AddressReport'
 0073FA32    mov         eax,ebx
 0073FA34    mov         edi,dword ptr [eax]
 0073FA36    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073FA39    mov         ecx,dword ptr [ebp-44]
 0073FA3C    mov         eax,dword ptr [esi+3E8];TAddressReport.cmbFamily:TComboBox
 0073FA42    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 0073FA48    mov         edx,2
 0073FA4D    mov         edi,dword ptr [eax]
 0073FA4F    call        dword ptr [edi+20];TStrings.Put
 0073FA52    push        74045C;'System Sensor AP series (SLC)'
 0073FA57    lea         eax,[ebp-48]
 0073FA5A    push        eax
 0073FA5B    mov         ecx,7404A4;'sDeviceFamilyItem3'
 0073FA60    mov         edx,73FF60;'AddressReport'
 0073FA65    mov         eax,ebx
 0073FA67    mov         edi,dword ptr [eax]
 0073FA69    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073FA6C    mov         ecx,dword ptr [ebp-48]
 0073FA6F    mov         eax,dword ptr [esi+3E8];TAddressReport.cmbFamily:TComboBox
 0073FA75    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 0073FA7B    mov         edx,3
 0073FA80    mov         edi,dword ptr [eax]
 0073FA82    call        dword ptr [edi+20];TStrings.Put
 0073FA85    push        7404D8;'Conventional Lines (CLC)'
 0073FA8A    lea         eax,[ebp-4C]
 0073FA8D    push        eax
 0073FA8E    mov         ecx,740518;'sDeviceFamilyItem4'
 0073FA93    mov         edx,73FF60;'AddressReport'
 0073FA98    mov         eax,ebx
 0073FA9A    mov         edi,dword ptr [eax]
 0073FA9C    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073FA9F    mov         ecx,dword ptr [ebp-4C]
 0073FAA2    mov         eax,dword ptr [esi+3E8];TAddressReport.cmbFamily:TComboBox
 0073FAA8    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 0073FAAE    mov         edx,4
 0073FAB3    mov         edi,dword ptr [eax]
 0073FAB5    call        dword ptr [edi+20];TStrings.Put
 0073FAB8    xor         edx,edx
 0073FABA    mov         eax,dword ptr [esi+3E8];TAddressReport.cmbFamily:TComboBox
 0073FAC0    mov         ecx,dword ptr [eax]
 0073FAC2    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 0073FAC8    push        74054C;'Device kind'
 0073FACD    lea         eax,[ebp-50]
 0073FAD0    push        eax
 0073FAD1    mov         ecx,740570;'slblDeviceKind'
 0073FAD6    mov         edx,73FF60;'AddressReport'
 0073FADB    mov         eax,ebx
 0073FADD    mov         edi,dword ptr [eax]
 0073FADF    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073FAE2    mov         edx,dword ptr [ebp-50]
 0073FAE5    mov         eax,dword ptr [esi+3EC];TAddressReport.lblDeviceKind:TLabel
 0073FAEB    call        TControl.SetText
 0073FAF0    push        74059C;'<Don''t care (any kind)>'
 0073FAF5    lea         eax,[ebp-54]
 0073FAF8    push        eax
 0073FAF9    mov         ecx,7405D8;'sDeviceKindItem0'
 0073FAFE    mov         edx,73FF60;'AddressReport'
 0073FB03    mov         eax,ebx
 0073FB05    mov         edi,dword ptr [eax]
 0073FB07    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073FB0A    mov         ecx,dword ptr [ebp-54]
 0073FB0D    mov         eax,dword ptr [esi+3F0];TAddressReport.cmbKind:TComboBox
 0073FB13    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 0073FB19    xor         edx,edx
 0073FB1B    mov         edi,dword ptr [eax]
 0073FB1D    call        dword ptr [edi+20];TStrings.Put
 0073FB20    push        740608;'Detectors'
 0073FB25    lea         eax,[ebp-58]
 0073FB28    push        eax
 0073FB29    mov         ecx,740628;'sDeviceKindItem1'
 0073FB2E    mov         edx,73FF60;'AddressReport'
 0073FB33    mov         eax,ebx
 0073FB35    mov         edi,dword ptr [eax]
 0073FB37    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073FB3A    mov         ecx,dword ptr [ebp-58]
 0073FB3D    mov         eax,dword ptr [esi+3F0];TAddressReport.cmbKind:TComboBox
 0073FB43    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 0073FB49    mov         edx,1
 0073FB4E    mov         edi,dword ptr [eax]
 0073FB50    call        dword ptr [edi+20];TStrings.Put
 0073FB53    push        740658;'IO modules'
 0073FB58    lea         eax,[ebp-5C]
 0073FB5B    push        eax
 0073FB5C    mov         ecx,74067C;'sDeviceKindItem2'
 0073FB61    mov         edx,73FF60;'AddressReport'
 0073FB66    mov         eax,ebx
 0073FB68    mov         edi,dword ptr [eax]
 0073FB6A    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073FB6D    mov         ecx,dword ptr [ebp-5C]
 0073FB70    mov         eax,dword ptr [esi+3F0];TAddressReport.cmbKind:TComboBox
 0073FB76    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 0073FB7C    mov         edx,2
 0073FB81    mov         edi,dword ptr [eax]
 0073FB83    call        dword ptr [edi+20];TStrings.Put
 0073FB86    xor         edx,edx
 0073FB88    mov         eax,dword ptr [esi+3F0];TAddressReport.cmbKind:TComboBox
 0073FB8E    mov         ecx,dword ptr [eax]
 0073FB90    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 0073FB96    push        7406AC;'Sort on item'
 0073FB9B    lea         eax,[ebp-60]
 0073FB9E    push        eax
 0073FB9F    mov         ecx,7406D4;'srgSortOnItem'
 0073FBA4    mov         edx,73FF60;'AddressReport'
 0073FBA9    mov         eax,ebx
 0073FBAB    mov         edi,dword ptr [eax]
 0073FBAD    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073FBB0    mov         edx,dword ptr [ebp-60]
 0073FBB3    mov         eax,dword ptr [esi+41C];TAddressReport.rgSortOnItem:TRadioGroup
 0073FBB9    call        TControl.SetText
 0073FBBE    push        7406FC;'Loop/Address'
 0073FBC3    lea         eax,[ebp-64]
 0073FBC6    push        eax
 0073FBC7    mov         ecx,740724;'srgSortItem0'
 0073FBCC    mov         edx,73FF60;'AddressReport'
 0073FBD1    mov         eax,ebx
 0073FBD3    mov         edi,dword ptr [eax]
 0073FBD5    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073FBD8    mov         ecx,dword ptr [ebp-64]
 0073FBDB    mov         eax,dword ptr [esi+41C];TAddressReport.rgSortOnItem:TRadioGroup
 0073FBE1    mov         eax,dword ptr [eax+29C];TRadioGroup.FItems:TStrings
 0073FBE7    xor         edx,edx
 0073FBE9    mov         edi,dword ptr [eax]
 0073FBEB    call        dword ptr [edi+20];TStrings.Put
 0073FBEE    push        74074C;'Zone Id'
 0073FBF3    lea         eax,[ebp-68]
 0073FBF6    push        eax
 0073FBF7    mov         ecx,740768;'srgSortItem1'
 0073FBFC    mov         edx,73FF60;'AddressReport'
 0073FC01    mov         eax,ebx
 0073FC03    mov         edi,dword ptr [eax]
 0073FC05    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073FC08    mov         ecx,dword ptr [ebp-68]
 0073FC0B    mov         eax,dword ptr [esi+41C];TAddressReport.rgSortOnItem:TRadioGroup
 0073FC11    mov         eax,dword ptr [eax+29C];TRadioGroup.FItems:TStrings
 0073FC17    mov         edx,1
 0073FC1C    mov         edi,dword ptr [eax]
 0073FC1E    call        dword ptr [edi+20];TStrings.Put
 0073FC21    push        740790;'Device type'
 0073FC26    lea         eax,[ebp-6C]
 0073FC29    push        eax
 0073FC2A    mov         ecx,7407B4;'srgSortItem2'
 0073FC2F    mov         edx,73FF60;'AddressReport'
 0073FC34    mov         eax,ebx
 0073FC36    mov         edi,dword ptr [eax]
 0073FC38    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073FC3B    mov         ecx,dword ptr [ebp-6C]
 0073FC3E    mov         eax,dword ptr [esi+41C];TAddressReport.rgSortOnItem:TRadioGroup
 0073FC44    mov         eax,dword ptr [eax+29C];TRadioGroup.FItems:TStrings
 0073FC4A    mov         edx,2
 0073FC4F    mov         edi,dword ptr [eax]
 0073FC51    call        dword ptr [edi+20];TStrings.Put
 0073FC54    push        7407DC;'Sort order'
 0073FC59    lea         eax,[ebp-70]
 0073FC5C    push        eax
 0073FC5D    mov         ecx,740800;'srgSortOrder'
 0073FC62    mov         edx,73FF60;'AddressReport'
 0073FC67    mov         eax,ebx
 0073FC69    mov         edi,dword ptr [eax]
 0073FC6B    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073FC6E    mov         edx,dword ptr [ebp-70]
 0073FC71    mov         eax,dword ptr [esi+420];TAddressReport.rgSortOrder:TRadioGroup
 0073FC77    call        TControl.SetText
 0073FC7C    push        740828;'Ascending'
 0073FC81    lea         eax,[ebp-74]
 0073FC84    push        eax
 0073FC85    mov         ecx,740848;'srgSortOrderItem0'
 0073FC8A    mov         edx,73FF60;'AddressReport'
 0073FC8F    mov         eax,ebx
 0073FC91    mov         edi,dword ptr [eax]
 0073FC93    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073FC96    mov         ecx,dword ptr [ebp-74]
 0073FC99    mov         eax,dword ptr [esi+420];TAddressReport.rgSortOrder:TRadioGroup
 0073FC9F    mov         eax,dword ptr [eax+29C];TRadioGroup.FItems:TStrings
 0073FCA5    xor         edx,edx
 0073FCA7    mov         edi,dword ptr [eax]
 0073FCA9    call        dword ptr [edi+20];TStrings.Put
 0073FCAC    push        740878;'Descending'
 0073FCB1    lea         eax,[ebp-78]
 0073FCB4    push        eax
 0073FCB5    mov         ecx,74089C;'srgSortOrderItem1'
 0073FCBA    mov         edx,73FF60;'AddressReport'
 0073FCBF    mov         eax,ebx
 0073FCC1    mov         edi,dword ptr [eax]
 0073FCC3    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073FCC6    mov         ecx,dword ptr [ebp-78]
 0073FCC9    mov         eax,dword ptr [esi+420];TAddressReport.rgSortOrder:TRadioGroup
 0073FCCF    mov         eax,dword ptr [eax+29C];TRadioGroup.FItems:TStrings
 0073FCD5    mov         edx,1
 0073FCDA    mov         edi,dword ptr [eax]
 0073FCDC    call        dword ptr [edi+20];TStrings.Put
 0073FCDF    push        7408CC;'Include in report'
 0073FCE4    lea         eax,[ebp-7C]
 0073FCE7    push        eax
 0073FCE8    mov         ecx,7408FC;'sgbOutputData'
 0073FCED    mov         edx,73FF60;'AddressReport'
 0073FCF2    mov         eax,ebx
 0073FCF4    mov         edi,dword ptr [eax]
 0073FCF6    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073FCF9    mov         edx,dword ptr [ebp-7C]
 0073FCFC    mov         eax,dword ptr [esi+3F4];TAddressReport.gbOutputData:TGroupBox
 0073FD02    call        TControl.SetText
 0073FD07    push        740924;'Panel Id'
 0073FD0C    lea         eax,[ebp-80]
 0073FD0F    push        eax
 0073FD10    mov         ecx,740944;'scbPanelId'
 0073FD15    mov         edx,73FF60;'AddressReport'
 0073FD1A    mov         eax,ebx
 0073FD1C    mov         edi,dword ptr [eax]
 0073FD1E    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073FD21    mov         edx,dword ptr [ebp-80]
 0073FD24    mov         eax,dword ptr [esi+3F8];TAddressReport.cbPanelId:TCheckBox
 0073FD2A    call        TControl.SetText
 0073FD2F    push        740968;'Loop/address'
 0073FD34    lea         eax,[ebp-84]
 0073FD3A    push        eax
 0073FD3B    mov         ecx,740990;'scbAddrId'
 0073FD40    mov         edx,73FF60;'AddressReport'
 0073FD45    mov         eax,ebx
 0073FD47    mov         edi,dword ptr [eax]
 0073FD49    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073FD4C    mov         edx,dword ptr [ebp-84]
 0073FD52    mov         eax,dword ptr [esi+3FC];TAddressReport.cbAddrId:TCheckBox
 0073FD58    call        TControl.SetText
 0073FD5D    push        7409B0;'ZoneId'
 0073FD62    lea         eax,[ebp-88]
 0073FD68    push        eax
 0073FD69    mov         ecx,7409CC;'scbZoneId'
 0073FD6E    mov         edx,73FF60;'AddressReport'
 0073FD73    mov         eax,ebx
 0073FD75    mov         edi,dword ptr [eax]
 0073FD77    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073FD7A    mov         edx,dword ptr [ebp-88]
 0073FD80    mov         eax,dword ptr [esi+400];TAddressReport.cbZoneId:TCheckBox
 0073FD86    call        TControl.SetText
 0073FD8B    push        740790;'Device type'
 0073FD90    lea         eax,[ebp-8C]
 0073FD96    push        eax
 0073FD97    mov         ecx,7409EC;'scbDeviceType'
 0073FD9C    mov         edx,73FF60;'AddressReport'
 0073FDA1    mov         eax,ebx
 0073FDA3    mov         edi,dword ptr [eax]
 0073FDA5    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073FDA8    mov         edx,dword ptr [ebp-8C]
 0073FDAE    mov         eax,dword ptr [esi+404];TAddressReport.cbDeviceType:TCheckBox
 0073FDB4    call        TControl.SetText
 0073FDB9    push        740A14;'Input function'
 0073FDBE    lea         eax,[ebp-90]
 0073FDC4    push        eax
 0073FDC5    mov         ecx,740A40;'scbInputFunction'
 0073FDCA    mov         edx,73FF60;'AddressReport'
 0073FDCF    mov         eax,ebx
 0073FDD1    mov         edi,dword ptr [eax]
 0073FDD3    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073FDD6    mov         edx,dword ptr [ebp-90]
 0073FDDC    mov         eax,dword ptr [esi+408];TAddressReport.cbInputFunction:TCheckBox
 0073FDE2    call        TControl.SetText
 0073FDE7    push        740A70;'Output function'
 0073FDEC    lea         eax,[ebp-94]
 0073FDF2    push        eax
 0073FDF3    mov         ecx,740A9C;'scbOutputFunction'
 0073FDF8    mov         edx,73FF60;'AddressReport'
 0073FDFD    mov         eax,ebx
 0073FDFF    mov         edi,dword ptr [eax]
 0073FE01    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073FE04    mov         edx,dword ptr [ebp-94]
 0073FE0A    mov         eax,dword ptr [esi+40C];TAddressReport.cbOutputFunction:TCheckBox
 0073FE10    call        TControl.SetText
 0073FE15    push        740ACC;'Text'
 0073FE1A    lea         eax,[ebp-98]
 0073FE20    push        eax
 0073FE21    mov         ecx,740AE4;'scbText'
 0073FE26    mov         edx,73FF60;'AddressReport'
 0073FE2B    mov         eax,ebx
 0073FE2D    mov         edi,dword ptr [eax]
 0073FE2F    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073FE32    mov         edx,dword ptr [ebp-98]
 0073FE38    mov         eax,dword ptr [esi+410];TAddressReport.cbText:TCheckBox
 0073FE3E    call        TControl.SetText
 0073FE43    push        740B00;'Tested checkbox'
 0073FE48    lea         eax,[ebp-9C]
 0073FE4E    push        eax
 0073FE4F    mov         ecx,740B2C;'scbTested'
 0073FE54    mov         edx,73FF60;'AddressReport'
 0073FE59    mov         eax,ebx
 0073FE5B    mov         edi,dword ptr [eax]
 0073FE5D    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073FE60    mov         edx,dword ptr [ebp-9C]
 0073FE66    mov         eax,dword ptr [esi+414];TAddressReport.cbTested:TCheckBox
 0073FE6C    call        TControl.SetText
 0073FE71    push        740B4C;'Font'
 0073FE76    lea         eax,[ebp-0A0]
 0073FE7C    push        eax
 0073FE7D    mov         ecx,740B64;'sbtnFont'
 0073FE82    mov         edx,73FF60;'AddressReport'
 0073FE87    mov         eax,ebx
 0073FE89    mov         edi,dword ptr [eax]
 0073FE8B    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073FE8E    mov         edx,dword ptr [ebp-0A0]
 0073FE94    mov         eax,dword ptr [esi+450];TAddressReport.btnFont:TButton
 0073FE9A    call        TControl.SetText
 0073FE9F    push        740B84;'Print'
 0073FEA4    lea         eax,[ebp-0A4]
 0073FEAA    push        eax
 0073FEAB    mov         ecx,740B9C;'sbtnPrintReport'
 0073FEB0    mov         edx,73FF60;'AddressReport'
 0073FEB5    mov         eax,ebx
 0073FEB7    mov         ebx,dword ptr [eax]
 0073FEB9    call        dword ptr [ebx+4];TFXIniFile.ReadString
 0073FEBC    mov         edx,dword ptr [ebp-0A4]
 0073FEC2    mov         eax,dword ptr [esi+424];TAddressReport.btnPrintReport:TButton
 0073FEC8    call        TControl.SetText
 0073FECD    xor         eax,eax
 0073FECF    pop         edx
 0073FED0    pop         ecx
 0073FED1    pop         ecx
 0073FED2    mov         dword ptr fs:[eax],edx
 0073FED5    push        73FEF2
 0073FEDA    lea         eax,[ebp-0A4]
 0073FEE0    mov         edx,29
 0073FEE5    call        @UStrArrayClr
 0073FEEA    ret
>0073FEEB    jmp         @HandleFinally
>0073FEF0    jmp         0073FEDA
 0073FEF2    pop         edi
 0073FEF3    pop         esi
 0073FEF4    pop         ebx
 0073FEF5    mov         esp,ebp
 0073FEF7    pop         ebp
 0073FEF8    ret
*}
end;

//00740BBC
procedure TAddressReport.FormMouseWheel(Sender:TObject; Shift:Classes.TShiftState; WheelDelta:Integer; MousePos:Types.TPoint; var Handled:Boolean);
begin
{*
 00740BBC    push        ebp
 00740BBD    mov         ebp,esp
 00740BBF    add         esp,0FFFFFFF8
 00740BC2    push        esi
 00740BC3    push        edi
 00740BC4    mov         esi,dword ptr [ebp+0C]
 00740BC7    lea         edi,[ebp-8]
 00740BCA    movs        dword ptr [edi],dword ptr [esi]
 00740BCB    movs        dword ptr [edi],dword ptr [esi]
 00740BCC    mov         edx,dword ptr [eax+418];TAddressReport.ScrollBox1:TScrollBox
 00740BD2    mov         edx,dword ptr [edx+2A8];TScrollBox.FVertScrollBar:TControlScrollBar
 00740BD8    mov         ecx,edx
 00740BDA    mov         eax,dword ptr [edx+0C];TControlScrollBar.FPosition:Integer
 00740BDD    sub         eax,dword ptr [ebp+10]
>00740BE0    jno         00740BE7
 00740BE2    call        @IntOver
 00740BE7    mov         edx,eax
 00740BE9    mov         eax,ecx
 00740BEB    call        TControlScrollBar.SetPosition
 00740BF0    mov         eax,dword ptr [ebp+8]
 00740BF3    mov         byte ptr [eax],1
 00740BF6    pop         edi
 00740BF7    pop         esi
 00740BF8    pop         ecx
 00740BF9    pop         ecx
 00740BFA    pop         ebp
 00740BFB    ret         0C
*}
end;

//00740C00
{*procedure sub_00740C00(?:?; ?:?);
begin
 00740C00    push        ebx
 00740C01    push        esi
 00740C02    push        edi
 00740C03    push        ebp
 00740C04    mov         esi,edx
 00740C06    mov         ebx,eax
 00740C08    test        ebx,ebx
>00740C0A    je          00740C10
 00740C0C    test        esi,esi
>00740C0E    jne         00740C1A
 00740C10    mov         eax,740D48;'nil'
 00740C15    call        ShowMessage
 00740C1A    mov         eax,[00902C90];gvar_00902C90:TAddressReport
 00740C1F    mov         eax,dword ptr [eax+41C]
 00740C25    mov         eax,dword ptr [eax+2A0]
 00740C2B    sub         eax,1
>00740C2E    jb          00740C3E
>00740C30    je          00740C8A
 00740C32    dec         eax
>00740C33    je          00740CD6
>00740C39    jmp         00740CE4
 00740C3E    mov         ecx,ebx
 00740C40    movzx       eax,byte ptr [ecx+5]
 00740C44    mov         edx,1000
 00740C49    mul         eax,edx
>00740C4B    jno         00740C52
 00740C4D    call        @IntOver
 00740C52    movzx       edx,word ptr [ecx+6]
 00740C56    add         eax,edx
>00740C58    jno         00740C5F
 00740C5A    call        @IntOver
 00740C5F    mov         ecx,eax
 00740C61    mov         ebx,esi
 00740C63    movzx       eax,byte ptr [ebx+5]
 00740C67    mov         edx,1000
 00740C6C    mul         eax,edx
 00740C6E    mov         edi,eax
>00740C70    jno         00740C77
 00740C72    call        @IntOver
 00740C77    movzx       eax,word ptr [ebx+6]
 00740C7B    add         edi,eax
>00740C7D    jno         00740C84
 00740C7F    call        @IntOver
 00740C84    xor         ebx,ebx
 00740C86    xor         eax,eax
>00740C88    jmp         00740CEC
 00740C8A    mov         ebp,ebx
 00740C8C    movzx       ecx,word ptr [ebp+8]
 00740C90    movzx       edi,word ptr [esi+8]
 00740C94    movzx       eax,byte ptr [ebp+5]
 00740C98    mov         edx,1000
 00740C9D    mul         eax,edx
>00740C9F    jno         00740CA6
 00740CA1    call        @IntOver
 00740CA6    movzx       edx,word ptr [ebp+6]
 00740CAA    add         eax,edx
>00740CAC    jno         00740CB3
 00740CAE    call        @IntOver
 00740CB3    mov         ebx,eax
 00740CB5    movzx       eax,byte ptr [esi+5]
 00740CB9    mov         edx,1000
 00740CBE    mul         eax,edx
>00740CC0    jno         00740CC7
 00740CC2    call        @IntOver
 00740CC7    movzx       edx,word ptr [esi+6]
 00740CCB    add         eax,edx
>00740CCD    jno         00740CEC
 00740CCF    call        @IntOver
>00740CD4    jmp         00740CEC
 00740CD6    movzx       ecx,byte ptr [ebx+22]
 00740CDA    movzx       edi,byte ptr [esi+22]
 00740CDE    xor         ebx,ebx
 00740CE0    xor         eax,eax
>00740CE2    jmp         00740CEC
 00740CE4    xor         ecx,ecx
 00740CE6    xor         edi,edi
 00740CE8    xor         ebx,ebx
 00740CEA    xor         eax,eax
 00740CEC    cmp         edi,ecx
>00740CEE    jge         00740CF7
 00740CF0    mov         eax,1
>00740CF5    jmp         00740D16
 00740CF7    cmp         edi,ecx
>00740CF9    jle         00740D00
 00740CFB    or          eax,0FFFFFFFF
>00740CFE    jmp         00740D16
 00740D00    cmp         eax,ebx
>00740D02    jge         00740D0B
 00740D04    mov         eax,1
>00740D09    jmp         00740D16
 00740D0B    cmp         eax,ebx
>00740D0D    jle         00740D14
 00740D0F    or          eax,0FFFFFFFF
>00740D12    jmp         00740D16
 00740D14    xor         eax,eax
 00740D16    mov         edx,dword ptr ds:[902C90];gvar_00902C90:TAddressReport
 00740D1C    mov         edx,dword ptr [edx+420]
 00740D22    cmp         dword ptr [edx+2A0],1
>00740D29    jne         00740D35
 00740D2B    imul        eax,eax,0FF
>00740D2E    jno         00740D35
 00740D30    call        @IntOver
 00740D35    pop         ebp
 00740D36    pop         edi
 00740D37    pop         esi
 00740D38    pop         ebx
 00740D39    ret
end;*}

//00740D50
procedure TAddressReport.rbSelectFrom(Sender:TObject);
begin
{*
 00740D50    push        ebp
 00740D51    mov         ebp,esp
 00740D53    add         esp,0FFFFFFD4
 00740D56    push        ebx
 00740D57    push        esi
 00740D58    xor         ecx,ecx
 00740D5A    mov         dword ptr [ebp-2C],ecx
 00740D5D    mov         dword ptr [ebp-28],ecx
 00740D60    mov         dword ptr [ebp-4],ecx
 00740D63    mov         esi,edx
 00740D65    mov         ebx,eax
 00740D67    xor         eax,eax
 00740D69    push        ebp
 00740D6A    push        740F56
 00740D6F    push        dword ptr fs:[eax]
 00740D72    mov         dword ptr fs:[eax],esp
 00740D75    mov         eax,esi
 00740D77    mov         edx,dword ptr ds:[5009D8];TRadioButton
 00740D7D    call        @AsClass
 00740D82    mov         eax,dword ptr [eax+0C];TRadioButton.FTag:NativeInt
 00740D85    sub         eax,1
>00740D88    jb          00740D9F
>00740D8A    je          00740DEB
 00740D8C    dec         eax
>00740D8D    je          00740E62
 00740D93    dec         eax
>00740D94    je          00740EC6
>00740D9A    jmp         00740F2C
 00740D9F    xor         edx,edx
 00740DA1    mov         eax,dword ptr [ebx+3D8];TAddressReport.btnSelectFrom:TButton
 00740DA7    mov         ecx,dword ptr [eax]
 00740DA9    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00740DAF    xor         edx,edx
 00740DB1    mov         eax,dword ptr [ebx+3DC];TAddressReport.edSelectFrom:TEdit
 00740DB7    mov         ecx,dword ptr [eax]
 00740DB9    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00740DBF    xor         edx,edx
 00740DC1    mov         eax,dword ptr [ebx+3DC];TAddressReport.edSelectFrom:TEdit
 00740DC7    call        TControl.SetText
 00740DCC    xor         edx,edx
 00740DCE    mov         eax,dword ptr [ebx+428];TAddressReport.lblSelectFrom:TLabel
 00740DD4    call        TControl.SetVisible
 00740DD9    xor         edx,edx
 00740DDB    mov         eax,dword ptr [ebx+428];TAddressReport.lblSelectFrom:TLabel
 00740DE1    call        TControl.SetText
>00740DE6    jmp         00740F2C
 00740DEB    mov         dl,1
 00740DED    mov         eax,dword ptr [ebx+3D8];TAddressReport.btnSelectFrom:TButton
 00740DF3    mov         ecx,dword ptr [eax]
 00740DF5    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00740DFB    mov         dl,1
 00740DFD    mov         eax,dword ptr [ebx+3DC];TAddressReport.edSelectFrom:TEdit
 00740E03    mov         ecx,dword ptr [eax]
 00740E05    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00740E0B    lea         eax,[ebp-4]
 00740E0E    push        eax
 00740E0F    lea         eax,[ebx+45C];TAddressReport.SelectedPanels:?
 00740E15    lea         edx,[ebp-24]
 00740E18    mov         ecx,500
 00740E1D    call        @SetExpand
 00740E22    lea         eax,[ebp-24]
 00740E25    xor         ecx,ecx
 00740E27    mov         edx,740F70;'%.2d; '
 00740E2C    call        0073F540
 00740E31    mov         edx,dword ptr [ebp-4]
 00740E34    mov         eax,dword ptr [ebx+3DC];TAddressReport.edSelectFrom:TEdit
 00740E3A    call        TControl.SetText
 00740E3F    mov         dl,1
 00740E41    mov         eax,dword ptr [ebx+428];TAddressReport.lblSelectFrom:TLabel
 00740E47    call        TControl.SetVisible
 00740E4C    mov         edx,dword ptr ds:[7C3E44];^'Select panels'
 00740E52    mov         eax,dword ptr [ebx+428];TAddressReport.lblSelectFrom:TLabel
 00740E58    call        TControl.SetText
>00740E5D    jmp         00740F2C
 00740E62    mov         dl,1
 00740E64    mov         eax,dword ptr [ebx+3D8];TAddressReport.btnSelectFrom:TButton
 00740E6A    mov         ecx,dword ptr [eax]
 00740E6C    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00740E72    mov         dl,1
 00740E74    mov         eax,dword ptr [ebx+3DC];TAddressReport.edSelectFrom:TEdit
 00740E7A    mov         ecx,dword ptr [eax]
 00740E7C    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00740E82    lea         eax,[ebp-28]
 00740E85    push        eax
 00740E86    lea         eax,[ebx+461];TAddressReport.SelectedLoops:?
 00740E8C    xor         ecx,ecx
 00740E8E    mov         edx,740F8C;'%.3d; '
 00740E93    call        0073F540
 00740E98    mov         edx,dword ptr [ebp-28]
 00740E9B    mov         eax,dword ptr [ebx+3DC];TAddressReport.edSelectFrom:TEdit
 00740EA1    call        TControl.SetText
 00740EA6    mov         dl,1
 00740EA8    mov         eax,dword ptr [ebx+428];TAddressReport.lblSelectFrom:TLabel
 00740EAE    call        TControl.SetVisible
 00740EB3    mov         edx,dword ptr ds:[7C3E48];^'Select Loops'
 00740EB9    mov         eax,dword ptr [ebx+428];TAddressReport.lblSelectFrom:TLabel
 00740EBF    call        TControl.SetText
>00740EC4    jmp         00740F2C
 00740EC6    mov         dl,1
 00740EC8    mov         eax,dword ptr [ebx+3D8];TAddressReport.btnSelectFrom:TButton
 00740ECE    mov         ecx,dword ptr [eax]
 00740ED0    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00740ED6    mov         dl,1
 00740ED8    mov         eax,dword ptr [ebx+3DC];TAddressReport.edSelectFrom:TEdit
 00740EDE    mov         ecx,dword ptr [eax]
 00740EE0    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00740EE6    lea         eax,[ebp-2C]
 00740EE9    push        eax
 00740EEA    lea         eax,[ebx+481];TAddressReport.SelectedZones:?
 00740EF0    mov         ecx,dword ptr [ebx+4A4];TAddressReport.SelectedZoneOffs:Integer
 00740EF6    mov         edx,740FA8;'%.4d; '
 00740EFB    call        0073F540
 00740F00    mov         edx,dword ptr [ebp-2C]
 00740F03    mov         eax,dword ptr [ebx+3DC];TAddressReport.edSelectFrom:TEdit
 00740F09    call        TControl.SetText
 00740F0E    mov         dl,1
 00740F10    mov         eax,dword ptr [ebx+428];TAddressReport.lblSelectFrom:TLabel
 00740F16    call        TControl.SetVisible
 00740F1B    mov         edx,dword ptr ds:[7C3E4C];^'Select Zones'
 00740F21    mov         eax,dword ptr [ebx+428];TAddressReport.lblSelectFrom:TLabel
 00740F27    call        TControl.SetText
 00740F2C    mov         eax,ebx
 00740F2E    call        TAddressReport.UpdateAddressList
 00740F33    xor         eax,eax
 00740F35    pop         edx
 00740F36    pop         ecx
 00740F37    pop         ecx
 00740F38    mov         dword ptr fs:[eax],edx
 00740F3B    push        740F5D
 00740F40    lea         eax,[ebp-2C]
 00740F43    mov         edx,2
 00740F48    call        @UStrArrayClr
 00740F4D    lea         eax,[ebp-4]
 00740F50    call        @UStrClr
 00740F55    ret
>00740F56    jmp         @HandleFinally
>00740F5B    jmp         00740F40
 00740F5D    pop         esi
 00740F5E    pop         ebx
 00740F5F    mov         esp,ebp
 00740F61    pop         ebp
 00740F62    ret
*}
end;

//00740FB8
procedure TAddressReport.btnSelectFromClick(Sender:TObject);
begin
{*
 00740FB8    push        ebp
 00740FB9    mov         ebp,esp
 00740FBB    add         esp,0FFFFFFBC
 00740FBE    push        ebx
 00740FBF    push        esi
 00740FC0    push        edi
 00740FC1    xor         ecx,ecx
 00740FC3    mov         dword ptr [ebp-44],ecx
 00740FC6    mov         dword ptr [ebp-40],ecx
 00740FC9    mov         dword ptr [ebp-3C],ecx
 00740FCC    mov         dword ptr [ebp-38],ecx
 00740FCF    mov         dword ptr [ebp-34],ecx
 00740FD2    mov         dword ptr [ebp-30],ecx
 00740FD5    mov         dword ptr [ebp-0C],ecx
 00740FD8    mov         ebx,eax
 00740FDA    xor         eax,eax
 00740FDC    push        ebp
 00740FDD    push        7412AE
 00740FE2    push        dword ptr fs:[eax]
 00740FE5    mov         dword ptr fs:[eax],esp
 00740FE8    mov         eax,dword ptr [ebx+3CC];TAddressReport.rbPanels:TRadioButton
 00740FEE    mov         edx,dword ptr [eax]
 00740FF0    call        dword ptr [edx+108];TRadioButton.GetChecked
 00740FF6    test        al,al
>00740FF8    je          007410B7
 00740FFE    mov         eax,[007C46A4];^gvar_00902C7C:TSelectPanelsDlg
 00741003    mov         eax,dword ptr [eax]
 00741005    mov         edx,dword ptr ds:[7C3E44];^'Select panels'
 0074100B    call        TControl.SetText
 00741010    mov         eax,[007C46A4];^gvar_00902C7C:TSelectPanelsDlg
 00741015    mov         eax,dword ptr [eax]
 00741017    lea         edx,[ebx+45C];TAddressReport.SelectedPanels:?
 0074101D    call        TSelectPanelsDlg.SetCheckMarks
 00741022    mov         eax,[007C46A4];^gvar_00902C7C:TSelectPanelsDlg
 00741027    mov         eax,dword ptr [eax]
 00741029    mov         edx,dword ptr [eax]
 0074102B    call        dword ptr [edx+13C]
 00741031    mov         eax,[007C46A4];^gvar_00902C7C:TSelectPanelsDlg
 00741036    mov         eax,dword ptr [eax]
 00741038    cmp         dword ptr [eax+2DC],1
>0074103F    jne         00741062
 00741041    lea         edx,[ebp-8]
 00741044    mov         eax,[007C46A4];^gvar_00902C7C:TSelectPanelsDlg
 00741049    mov         eax,dword ptr [eax]
 0074104B    call        TSelectPanelsDlg.GetCheckMarks
 00741050    mov         eax,dword ptr [ebp-8]
 00741053    mov         dword ptr [ebx+45C],eax;TAddressReport.SelectedPanels:?
 00741059    mov         al,byte ptr [ebp-4]
 0074105C    mov         byte ptr [ebx+460],al;TAddressReport.?f460:byte
 00741062    lea         eax,[ebp-0C]
 00741065    push        eax
 00741066    lea         eax,[ebx+45C];TAddressReport.SelectedPanels:?
 0074106C    lea         edx,[ebp-2C]
 0074106F    mov         ecx,500
 00741074    call        @SetExpand
 00741079    lea         eax,[ebp-2C]
 0074107C    xor         ecx,ecx
 0074107E    mov         edx,7412C8;'%.2d; '
 00741083    call        0073F540
 00741088    mov         edx,dword ptr [ebp-0C]
 0074108B    mov         eax,dword ptr [ebx+3DC];TAddressReport.edSelectFrom:TEdit
 00741091    call        TControl.SetText
 00741096    lea         edx,[ebp-30]
 00741099    mov         eax,dword ptr [ebx+3DC];TAddressReport.edSelectFrom:TEdit
 0074109F    call        TControl.GetText
 007410A4    mov         edx,dword ptr [ebp-30]
 007410A7    mov         eax,dword ptr [ebx+3DC];TAddressReport.edSelectFrom:TEdit
 007410AD    add         eax,90;TEdit.FHint:string
 007410B2    call        @UStrAsg
 007410B7    mov         eax,dword ptr [ebx+3D0];TAddressReport.rbLoops:TRadioButton
 007410BD    mov         edx,dword ptr [eax]
 007410BF    call        dword ptr [edx+108];TRadioButton.GetChecked
 007410C5    test        al,al
>007410C7    je          00741174
 007410CD    mov         eax,[007C47D0];^gvar_00902C80:TSelectLoopsDlg
 007410D2    mov         eax,dword ptr [eax]
 007410D4    mov         edx,dword ptr ds:[7C3E48];^'Select Loops'
 007410DA    call        TControl.SetText
 007410DF    mov         eax,[007C47D0];^gvar_00902C80:TSelectLoopsDlg
 007410E4    mov         eax,dword ptr [eax]
 007410E6    lea         edx,[ebx+461];TAddressReport.SelectedLoops:?
 007410EC    call        TSelectLoopsDlg.SetCheckMarks
 007410F1    mov         eax,[007C47D0];^gvar_00902C80:TSelectLoopsDlg
 007410F6    mov         eax,dword ptr [eax]
 007410F8    mov         edx,dword ptr [eax]
 007410FA    call        dword ptr [edx+13C]
 00741100    mov         eax,[007C47D0];^gvar_00902C80:TSelectLoopsDlg
 00741105    mov         eax,dword ptr [eax]
 00741107    cmp         dword ptr [eax+2DC],1
>0074110E    jne         0074112F
 00741110    lea         edx,[ebp-2C]
 00741113    mov         eax,[007C47D0];^gvar_00902C80:TSelectLoopsDlg
 00741118    mov         eax,dword ptr [eax]
 0074111A    call        TSelectLoopsDlg.GetCheckMarks
 0074111F    lea         esi,[ebp-2C]
 00741122    lea         edi,[ebx+461];TAddressReport.SelectedLoops:?
 00741128    mov         ecx,8
 0074112D    rep movs    dword ptr [edi],dword ptr [esi]
 0074112F    lea         eax,[ebp-34]
 00741132    push        eax
 00741133    lea         eax,[ebx+461];TAddressReport.SelectedLoops:?
 00741139    xor         ecx,ecx
 0074113B    mov         edx,7412E4;'%.3d; '
 00741140    call        0073F540
 00741145    mov         edx,dword ptr [ebp-34]
 00741148    mov         eax,dword ptr [ebx+3DC];TAddressReport.edSelectFrom:TEdit
 0074114E    call        TControl.SetText
 00741153    lea         edx,[ebp-38]
 00741156    mov         eax,dword ptr [ebx+3DC];TAddressReport.edSelectFrom:TEdit
 0074115C    call        TControl.GetText
 00741161    mov         edx,dword ptr [ebp-38]
 00741164    mov         eax,dword ptr [ebx+3DC];TAddressReport.edSelectFrom:TEdit
 0074116A    add         eax,90;TEdit.FHint:string
 0074116F    call        @UStrAsg
 00741174    mov         eax,dword ptr [ebx+3D4];TAddressReport.rbZones:TRadioButton
 0074117A    mov         edx,dword ptr [eax]
 0074117C    call        dword ptr [edx+108];TRadioButton.GetChecked
 00741182    test        al,al
>00741184    je          00741264
 0074118A    mov         eax,[007C4728];^gvar_00902C84:TSelectZonesDlg
 0074118F    mov         eax,dword ptr [eax]
 00741191    mov         edx,dword ptr ds:[7C3E4C];^'Select Zones'
 00741197    call        TControl.SetText
 0074119C    mov         eax,[007C4728];^gvar_00902C84:TSelectZonesDlg
 007411A1    mov         eax,dword ptr [eax]
 007411A3    lea         ecx,[ebx+481];TAddressReport.SelectedZones:?
 007411A9    mov         edx,dword ptr [ebx+4A4];TAddressReport.SelectedZoneOffs:Integer
 007411AF    call        TSelectZonesDlg.SetCheckMarks
 007411B4    lea         edx,[ebp-3C]
 007411B7    mov         eax,dword ptr [ebx+4A4];TAddressReport.SelectedZoneOffs:Integer
 007411BD    call        IntToStr
 007411C2    mov         edx,dword ptr [ebp-3C]
 007411C5    mov         eax,[007C4728];^gvar_00902C84:TSelectZonesDlg
 007411CA    mov         eax,dword ptr [eax]
 007411CC    mov         eax,dword ptr [eax+3D8]
 007411D2    call        TControl.SetText
 007411D7    mov         eax,[007C4728];^gvar_00902C84:TSelectZonesDlg
 007411DC    mov         eax,dword ptr [eax]
 007411DE    mov         edx,dword ptr [eax]
 007411E0    call        dword ptr [edx+13C]
 007411E6    mov         eax,[007C4728];^gvar_00902C84:TSelectZonesDlg
 007411EB    mov         eax,dword ptr [eax]
 007411ED    cmp         dword ptr [eax+2DC],1
>007411F4    jne         0074121B
 007411F6    lea         ecx,[ebp-2C]
 007411F9    lea         edx,[ebx+4A4];TAddressReport.SelectedZoneOffs:Integer
 007411FF    mov         eax,[007C4728];^gvar_00902C84:TSelectZonesDlg
 00741204    mov         eax,dword ptr [eax]
 00741206    call        TSelectZonesDlg.GetCheckMarks
 0074120B    lea         esi,[ebp-2C]
 0074120E    lea         edi,[ebx+481];TAddressReport.SelectedZones:?
 00741214    mov         ecx,8
 00741219    rep movs    dword ptr [edi],dword ptr [esi]
 0074121B    lea         eax,[ebp-40]
 0074121E    push        eax
 0074121F    lea         eax,[ebx+481];TAddressReport.SelectedZones:?
 00741225    mov         ecx,dword ptr [ebx+4A4];TAddressReport.SelectedZoneOffs:Integer
 0074122B    mov         edx,741300;'%.4d; '
 00741230    call        0073F540
 00741235    mov         edx,dword ptr [ebp-40]
 00741238    mov         eax,dword ptr [ebx+3DC];TAddressReport.edSelectFrom:TEdit
 0074123E    call        TControl.SetText
 00741243    lea         edx,[ebp-44]
 00741246    mov         eax,dword ptr [ebx+3DC];TAddressReport.edSelectFrom:TEdit
 0074124C    call        TControl.GetText
 00741251    mov         edx,dword ptr [ebp-44]
 00741254    mov         eax,dword ptr [ebx+3DC];TAddressReport.edSelectFrom:TEdit
 0074125A    add         eax,90;TEdit.FHint:string
 0074125F    call        @UStrAsg
 00741264    mov         eax,ebx
 00741266    call        TAddressReport.UpdateAddressList
 0074126B    xor         eax,eax
 0074126D    pop         edx
 0074126E    pop         ecx
 0074126F    pop         ecx
 00741270    mov         dword ptr fs:[eax],edx
 00741273    push        7412B5
 00741278    lea         eax,[ebp-44]
 0074127B    call        @UStrClr
 00741280    lea         eax,[ebp-40]
 00741283    mov         edx,2
 00741288    call        @UStrArrayClr
 0074128D    lea         eax,[ebp-38]
 00741290    call        @UStrClr
 00741295    lea         eax,[ebp-34]
 00741298    call        @UStrClr
 0074129D    lea         eax,[ebp-30]
 007412A0    call        @UStrClr
 007412A5    lea         eax,[ebp-0C]
 007412A8    call        @UStrClr
 007412AD    ret
>007412AE    jmp         @HandleFinally
>007412B3    jmp         00741278
 007412B5    pop         edi
 007412B6    pop         esi
 007412B7    pop         ebx
 007412B8    mov         esp,ebp
 007412BA    pop         ebp
 007412BB    ret
*}
end;

//00741310
procedure TAddressReport.cmbFamilyChange(Sender:TObject);
begin
{*
 00741310    call        TAddressReport.UpdateAddressList
 00741315    ret
*}
end;

//00741318
procedure TAddressReport.cmbKindChange(Sender:TObject);
begin
{*
 00741318    call        TAddressReport.UpdateAddressList
 0074131D    ret
*}
end;

//00741320
procedure TAddressReport.rgSortOnItemClick(Sender:TObject);
begin
{*
 00741320    push        ebx
 00741321    mov         ebx,eax
 00741323    mov         edx,740C00;sub_00740C00
 00741328    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 0074132D    mov         eax,dword ptr [eax]
 0074132F    mov         eax,dword ptr [eax+0D8]
 00741335    call        TList.Sort
 0074133A    xor         edx,edx
 0074133C    mov         eax,ebx
 0074133E    call        00742C88
 00741343    pop         ebx
 00741344    ret
*}
end;

//00741348
procedure TAddressReport.rgSortOrderClick(Sender:TObject);
begin
{*
 00741348    push        ebx
 00741349    mov         ebx,eax
 0074134B    mov         edx,740C00;sub_00740C00
 00741350    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 00741355    mov         eax,dword ptr [eax]
 00741357    mov         eax,dword ptr [eax+0D8]
 0074135D    call        TList.Sort
 00741362    xor         edx,edx
 00741364    mov         eax,ebx
 00741366    call        00742C88
 0074136B    pop         ebx
 0074136C    ret
*}
end;

//00741370
procedure TAddressReport.cbRepIncClick(Sender:TObject);
begin
{*
 00741370    push        ebx
 00741371    mov         ebx,eax
 00741373    mov         eax,ebx
 00741375    call        00742CB8
 0074137A    mov         edx,dword ptr ds:[7C4D94];^gvar_00902C88:TFXDocPrinter
 00741380    mov         edx,dword ptr [edx]
 00741382    mov         byte ptr [edx+0DC],al
 00741388    xor         edx,edx
 0074138A    mov         eax,ebx
 0074138C    call        00742C88
 00741391    pop         ebx
 00741392    ret
*}
end;

//00741394
procedure TAddressReport.btnNaviClick(Sender:TObject);
begin
{*
 00741394    add         esp,0FFFFFFE8
 00741397    mov         edx,dword ptr [edx+0C]
 0074139A    cmp         edx,6
>0074139D    ja          007414F5
 007413A3    jmp         dword ptr [edx*4+7413AA]
 007413A3    dd          007414F5
 007413A3    dd          007413C6
 007413A3    dd          007413DA
 007413A3    dd          00741412
 007413A3    dd          0074144D
 007413A3    dd          00741496
 007413A3    dd          007414DF
 007413C6    mov         edx,dword ptr ds:[7C4D94];^gvar_00902C88:TFXDocPrinter
 007413CC    mov         edx,dword ptr [edx]
 007413CE    mov         dword ptr [edx+8],1
>007413D5    jmp         007414F5
 007413DA    mov         edx,dword ptr ds:[7C4D94];^gvar_00902C88:TFXDocPrinter
 007413E0    mov         edx,dword ptr [edx]
 007413E2    mov         edx,dword ptr [edx+8]
 007413E5    sub         edx,0A
>007413E8    jno         007413EF
 007413EA    call        @IntOver
 007413EF    mov         dword ptr [esp],edx
 007413F2    cmp         dword ptr [esp],1
>007413F6    jle         007413FD
 007413F8    mov         edx,dword ptr [esp]
>007413FB    jmp         00741402
 007413FD    mov         edx,1
 00741402    mov         ecx,dword ptr ds:[7C4D94];^gvar_00902C88:TFXDocPrinter
 00741408    mov         ecx,dword ptr [ecx]
 0074140A    mov         dword ptr [ecx+8],edx
>0074140D    jmp         007414F5
 00741412    mov         edx,dword ptr ds:[7C4D94];^gvar_00902C88:TFXDocPrinter
 00741418    mov         edx,dword ptr [edx]
 0074141A    mov         edx,dword ptr [edx+8]
 0074141D    sub         edx,1
>00741420    jno         00741427
 00741422    call        @IntOver
 00741427    mov         dword ptr [esp+4],edx
 0074142B    cmp         dword ptr [esp+4],1
>00741430    jle         00741438
 00741432    mov         edx,dword ptr [esp+4]
>00741436    jmp         0074143D
 00741438    mov         edx,1
 0074143D    mov         ecx,dword ptr ds:[7C4D94];^gvar_00902C88:TFXDocPrinter
 00741443    mov         ecx,dword ptr [ecx]
 00741445    mov         dword ptr [ecx+8],edx
>00741448    jmp         007414F5
 0074144D    mov         edx,dword ptr ds:[7C4D94];^gvar_00902C88:TFXDocPrinter
 00741453    mov         edx,dword ptr [edx]
 00741455    mov         edx,dword ptr [edx+8]
 00741458    add         edx,1
>0074145B    jno         00741462
 0074145D    call        @IntOver
 00741462    mov         dword ptr [esp+8],edx
 00741466    mov         edx,dword ptr ds:[7C4D94];^gvar_00902C88:TFXDocPrinter
 0074146C    mov         edx,dword ptr [edx]
 0074146E    mov         edx,dword ptr [edx+10]
 00741471    mov         dword ptr [esp+0C],edx
 00741475    mov         edx,dword ptr [esp+8]
 00741479    cmp         edx,dword ptr [esp+0C]
>0074147D    jge         00741485
 0074147F    mov         edx,dword ptr [esp+8]
>00741483    jmp         00741489
 00741485    mov         edx,dword ptr [esp+0C]
 00741489    mov         ecx,dword ptr ds:[7C4D94];^gvar_00902C88:TFXDocPrinter
 0074148F    mov         ecx,dword ptr [ecx]
 00741491    mov         dword ptr [ecx+8],edx
>00741494    jmp         007414F5
 00741496    mov         edx,dword ptr ds:[7C4D94];^gvar_00902C88:TFXDocPrinter
 0074149C    mov         edx,dword ptr [edx]
 0074149E    mov         edx,dword ptr [edx+8]
 007414A1    add         edx,0A
>007414A4    jno         007414AB
 007414A6    call        @IntOver
 007414AB    mov         dword ptr [esp+10],edx
 007414AF    mov         edx,dword ptr ds:[7C4D94];^gvar_00902C88:TFXDocPrinter
 007414B5    mov         edx,dword ptr [edx]
 007414B7    mov         edx,dword ptr [edx+10]
 007414BA    mov         dword ptr [esp+14],edx
 007414BE    mov         edx,dword ptr [esp+10]
 007414C2    cmp         edx,dword ptr [esp+14]
>007414C6    jge         007414CE
 007414C8    mov         edx,dword ptr [esp+10]
>007414CC    jmp         007414D2
 007414CE    mov         edx,dword ptr [esp+14]
 007414D2    mov         ecx,dword ptr ds:[7C4D94];^gvar_00902C88:TFXDocPrinter
 007414D8    mov         ecx,dword ptr [ecx]
 007414DA    mov         dword ptr [ecx+8],edx
>007414DD    jmp         007414F5
 007414DF    mov         edx,dword ptr ds:[7C4D94];^gvar_00902C88:TFXDocPrinter
 007414E5    mov         edx,dword ptr [edx]
 007414E7    mov         edx,dword ptr [edx+10]
 007414EA    mov         ecx,dword ptr ds:[7C4D94];^gvar_00902C88:TFXDocPrinter
 007414F0    mov         ecx,dword ptr [ecx]
 007414F2    mov         dword ptr [ecx+8],edx
 007414F5    xor         edx,edx
 007414F7    call        00742C88
 007414FC    add         esp,18
 007414FF    ret
*}
end;

//00741500
procedure TAddressReport.btnFontClick(Sender:TObject);
begin
{*
 00741500    push        ebx
 00741501    mov         ebx,eax
 00741503    mov         eax,dword ptr [ebx+44C];TAddressReport.FontDialog1:TFontDialog
 00741509    mov         edx,dword ptr [eax]
 0074150B    call        dword ptr [edx+54];TCommonDialog.Execute
 0074150E    test        al,al
>00741510    je          00741527
 00741512    mov         eax,dword ptr [ebx+44C];TAddressReport.FontDialog1:TFontDialog
 00741518    mov         edx,dword ptr [eax+78];TFontDialog.FFont:TFont
 0074151B    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 00741520    mov         eax,dword ptr [eax]
 00741522    call        0073E404
 00741527    pop         ebx
 00741528    ret
*}
end;

//0074152C
procedure TAddressReport.cmbLineHeightChange(Sender:TObject);
begin
{*
 0074152C    push        ebx
 0074152D    mov         ebx,edx
 0074152F    mov         eax,ebx
 00741531    mov         edx,dword ptr ds:[4FD318];TComboBox
 00741537    call        @AsClass
 0074153C    mov         edx,dword ptr [eax]
 0074153E    call        dword ptr [edx+108];TComboBox.GetItemIndex
 00741544    cmp         eax,0A
>00741547    ja          0074164F
 0074154D    jmp         dword ptr [eax*4+741554]
 0074154D    dd          00741580
 0074154D    dd          00741593
 0074154D    dd          007415A6
 0074154D    dd          007415B9
 0074154D    dd          007415CC
 0074154D    dd          007415DF
 0074154D    dd          007415F2
 0074154D    dd          00741605
 0074154D    dd          00741618
 0074154D    dd          0074162B
 0074154D    dd          0074163E
 00741580    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 00741585    mov         eax,dword ptr [eax]
 00741587    mov         edx,64
 0074158C    call        0073E420
 00741591    pop         ebx
 00741592    ret
 00741593    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 00741598    mov         eax,dword ptr [eax]
 0074159A    mov         edx,6E
 0074159F    call        0073E420
 007415A4    pop         ebx
 007415A5    ret
 007415A6    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 007415AB    mov         eax,dword ptr [eax]
 007415AD    mov         edx,78
 007415B2    call        0073E420
 007415B7    pop         ebx
 007415B8    ret
 007415B9    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 007415BE    mov         eax,dword ptr [eax]
 007415C0    mov         edx,82
 007415C5    call        0073E420
 007415CA    pop         ebx
 007415CB    ret
 007415CC    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 007415D1    mov         eax,dword ptr [eax]
 007415D3    mov         edx,8C
 007415D8    call        0073E420
 007415DD    pop         ebx
 007415DE    ret
 007415DF    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 007415E4    mov         eax,dword ptr [eax]
 007415E6    mov         edx,96
 007415EB    call        0073E420
 007415F0    pop         ebx
 007415F1    ret
 007415F2    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 007415F7    mov         eax,dword ptr [eax]
 007415F9    mov         edx,0A0
 007415FE    call        0073E420
 00741603    pop         ebx
 00741604    ret
 00741605    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 0074160A    mov         eax,dword ptr [eax]
 0074160C    mov         edx,0AA
 00741611    call        0073E420
 00741616    pop         ebx
 00741617    ret
 00741618    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 0074161D    mov         eax,dword ptr [eax]
 0074161F    mov         edx,0B4
 00741624    call        0073E420
 00741629    pop         ebx
 0074162A    ret
 0074162B    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 00741630    mov         eax,dword ptr [eax]
 00741632    mov         edx,0BE
 00741637    call        0073E420
 0074163C    pop         ebx
 0074163D    ret
 0074163E    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 00741643    mov         eax,dword ptr [eax]
 00741645    mov         edx,0C8
 0074164A    call        0073E420
 0074164F    pop         ebx
 00741650    ret
*}
end;

//00741654
procedure TAddressReport.btnPrintReportClick(Sender:TObject);
begin
{*
 00741654    push        ebx
 00741655    push        esi
 00741656    mov         ebx,eax
 00741658    mov         esi,dword ptr [ebx+448];TAddressReport.PrintDialog1:TPrintDialog
 0074165E    mov         dword ptr [esi+84],1;TPrintDialog.FMinPage:Integer
 00741668    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 0074166D    mov         eax,dword ptr [eax]
 0074166F    mov         eax,dword ptr [eax+10]
 00741672    mov         dword ptr [esi+88],eax;TPrintDialog.FMaxPage:Integer
 00741678    mov         dword ptr [esi+78],1;TPrintDialog.FFromPage:Integer
 0074167F    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 00741684    mov         eax,dword ptr [eax]
 00741686    mov         eax,dword ptr [eax+10]
 00741689    mov         dword ptr [esi+7C],eax;TPrintDialog.FToPage:Integer
 0074168C    mov         eax,esi
 0074168E    mov         edx,dword ptr [eax]
 00741690    call        dword ptr [edx+54];TCommonDialog.Execute
 00741693    test        al,al
>00741695    je          007416B8
 00741697    mov         eax,dword ptr [ebx+448];TAddressReport.PrintDialog1:TPrintDialog
 0074169D    mov         ecx,dword ptr [eax+7C];TPrintDialog.FToPage:Integer
 007416A0    mov         edx,dword ptr [eax+78];TPrintDialog.FFromPage:Integer
 007416A3    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 007416A8    mov         eax,dword ptr [eax]
 007416AA    call        TFXDocPrinter.PrintReport
 007416AF    xor         edx,edx
 007416B1    mov         eax,ebx
 007416B3    call        00742C88
 007416B8    pop         esi
 007416B9    pop         ebx
 007416BA    ret
*}
end;

//007416BC
procedure TAddressReport.btnPrinterPropsClick(Sender:TObject);
begin
{*
 007416BC    push        ebp
 007416BD    mov         ebp,esp
 007416BF    mov         ecx,0B
 007416C4    push        0
 007416C6    push        0
 007416C8    dec         ecx
>007416C9    jne         007416C4
 007416CB    push        ebx
 007416CC    push        esi
 007416CD    push        edi
 007416CE    mov         dword ptr [ebp-8],edx
 007416D1    mov         dword ptr [ebp-4],eax
 007416D4    mov         esi,dword ptr ds:[7C41F0];^gvar_00857F44:TDbgFrm
 007416DA    mov         ebx,dword ptr ds:[7C4D94];^gvar_00902C88:TFXDocPrinter
 007416E0    xor         eax,eax
 007416E2    push        ebp
 007416E3    push        741A88
 007416E8    push        dword ptr fs:[eax]
 007416EB    mov         dword ptr fs:[eax],esp
 007416EE    mov         eax,dword ptr [esi]
 007416F0    mov         eax,dword ptr [eax+3C0]
 007416F6    mov         eax,dword ptr [eax+74]
 007416F9    mov         edx,741AA4;'Courier'
 007416FE    call        TFont.SetName
 00741703    lea         eax,[ebp-0C]
 00741706    push        eax
 00741707    mov         eax,dword ptr [ebx]
 00741709    call        TFXDocPrinter.GetPaperWidth
 0074170E    mov         dword ptr [ebp-14],eax
 00741711    mov         byte ptr [ebp-10],0
 00741715    lea         edx,[ebp-14]
 00741718    xor         ecx,ecx
 0074171A    mov         eax,741AC0;'Paper width:           %d'
 0074171F    call        Format
 00741724    mov         edx,dword ptr [ebp-0C]
 00741727    mov         eax,dword ptr [esi]
 00741729    mov         eax,dword ptr [eax+3C0]
 0074172F    mov         eax,dword ptr [eax+2C8]
 00741735    mov         ecx,dword ptr [eax]
 00741737    call        dword ptr [ecx+3C]
 0074173A    lea         eax,[ebp-18]
 0074173D    push        eax
 0074173E    mov         eax,dword ptr [ebx]
 00741740    call        TFXDocPrinter.GetPageOffsetLeft
 00741745    mov         dword ptr [ebp-14],eax
 00741748    mov         byte ptr [ebp-10],0
 0074174C    lea         edx,[ebp-14]
 0074174F    xor         ecx,ecx
 00741751    mov         eax,741B00;'Page offs left:        %d'
 00741756    call        Format
 0074175B    mov         edx,dword ptr [ebp-18]
 0074175E    mov         eax,dword ptr [esi]
 00741760    mov         eax,dword ptr [eax+3C0]
 00741766    mov         eax,dword ptr [eax+2C8]
 0074176C    mov         ecx,dword ptr [eax]
 0074176E    call        dword ptr [ecx+3C]
 00741771    lea         eax,[ebp-1C]
 00741774    push        eax
 00741775    mov         eax,dword ptr [ebx]
 00741777    call        TFXDocPrinter.GetPageOffsetRight
 0074177C    mov         dword ptr [ebp-14],eax
 0074177F    mov         byte ptr [ebp-10],0
 00741783    lea         edx,[ebp-14]
 00741786    xor         ecx,ecx
 00741788    mov         eax,741B40;'Page offs right:       %d'
 0074178D    call        Format
 00741792    mov         edx,dword ptr [ebp-1C]
 00741795    mov         eax,dword ptr [esi]
 00741797    mov         eax,dword ptr [eax+3C0]
 0074179D    mov         eax,dword ptr [eax+2C8]
 007417A3    mov         ecx,dword ptr [eax]
 007417A5    call        dword ptr [ecx+3C]
 007417A8    lea         eax,[ebp-20]
 007417AB    push        eax
 007417AC    mov         eax,dword ptr [ebx]
 007417AE    call        TFXDocPrinter.GetPaperWidth
 007417B3    mov         edi,eax
 007417B5    mov         eax,dword ptr [ebx]
 007417B7    call        TFXDocPrinter.GetPageOffsetLeft
 007417BC    sub         edi,eax
>007417BE    jno         007417C5
 007417C0    call        @IntOver
 007417C5    mov         eax,dword ptr [ebx]
 007417C7    call        TFXDocPrinter.GetPageOffsetRight
 007417CC    sub         edi,eax
>007417CE    jno         007417D5
 007417D0    call        @IntOver
 007417D5    mov         dword ptr [ebp-14],edi
 007417D8    mov         byte ptr [ebp-10],0
 007417DC    lea         edx,[ebp-14]
 007417DF    xor         ecx,ecx
 007417E1    mov         eax,741B80;'Page width:            %d'
 007417E6    call        Format
 007417EB    mov         edx,dword ptr [ebp-20]
 007417EE    mov         eax,dword ptr [esi]
 007417F0    mov         eax,dword ptr [eax+3C0]
 007417F6    mov         eax,dword ptr [eax+2C8]
 007417FC    mov         ecx,dword ptr [eax]
 007417FE    call        dword ptr [ecx+3C]
 00741801    lea         eax,[ebp-24]
 00741804    push        eax
 00741805    call        Printer
 0074180A    call        TPrinter.GetPageWidth
 0074180F    mov         dword ptr [ebp-14],eax
 00741812    mov         byte ptr [ebp-10],0
 00741816    lea         edx,[ebp-14]
 00741819    xor         ecx,ecx
 0074181B    mov         eax,741BC0;'Printer pagewidth:     %d'
 00741820    call        Format
 00741825    mov         edx,dword ptr [ebp-24]
 00741828    mov         eax,dword ptr [esi]
 0074182A    mov         eax,dword ptr [eax+3C0]
 00741830    mov         eax,dword ptr [eax+2C8]
 00741836    mov         ecx,dword ptr [eax]
 00741838    call        dword ptr [ecx+3C]
 0074183B    lea         eax,[ebp-28]
 0074183E    push        eax
 0074183F    call        Printer
 00741844    call        TPrinter.GetCanvas
 00741849    lea         edx,[ebp-38]
 0074184C    mov         ecx,dword ptr [eax]
 0074184E    call        dword ptr [ecx+10];TCanvas.GetClipRect
 00741851    mov         eax,dword ptr [ebp-30]
 00741854    mov         dword ptr [ebp-14],eax
 00741857    mov         byte ptr [ebp-10],0
 0074185B    lea         edx,[ebp-14]
 0074185E    xor         ecx,ecx
 00741860    mov         eax,741C00;'Printer canvas width:  %d'
 00741865    call        Format
 0074186A    mov         edx,dword ptr [ebp-28]
 0074186D    mov         eax,dword ptr [esi]
 0074186F    mov         eax,dword ptr [eax+3C0]
 00741875    mov         eax,dword ptr [eax+2C8]
 0074187B    mov         ecx,dword ptr [eax]
 0074187D    call        dword ptr [ecx+3C]
 00741880    lea         eax,[ebp-3C]
 00741883    push        eax
 00741884    lea         edx,[ebp-3C]
 00741887    or          ecx,0FFFFFFFF
 0074188A    mov         eax,741C40;' '
 0074188F    call        Format
 00741894    mov         edx,dword ptr [ebp-3C]
 00741897    mov         eax,dword ptr [esi]
 00741899    mov         eax,dword ptr [eax+3C0]
 0074189F    mov         eax,dword ptr [eax+2C8]
 007418A5    mov         ecx,dword ptr [eax]
 007418A7    call        dword ptr [ecx+3C]
 007418AA    lea         eax,[ebp-40]
 007418AD    push        eax
 007418AE    mov         eax,dword ptr [ebx]
 007418B0    call        TFXDocPrinter.GetPaperHeight
 007418B5    mov         dword ptr [ebp-14],eax
 007418B8    mov         byte ptr [ebp-10],0
 007418BC    lea         edx,[ebp-14]
 007418BF    xor         ecx,ecx
 007418C1    mov         eax,741C50;'Paper height:          %d'
 007418C6    call        Format
 007418CB    mov         edx,dword ptr [ebp-40]
 007418CE    mov         eax,dword ptr [esi]
 007418D0    mov         eax,dword ptr [eax+3C0]
 007418D6    mov         eax,dword ptr [eax+2C8]
 007418DC    mov         ecx,dword ptr [eax]
 007418DE    call        dword ptr [ecx+3C]
 007418E1    lea         eax,[ebp-44]
 007418E4    push        eax
 007418E5    mov         eax,dword ptr [ebx]
 007418E7    call        TFXDocPrinter.GetPageOffsetTop
 007418EC    mov         dword ptr [ebp-14],eax
 007418EF    mov         byte ptr [ebp-10],0
 007418F3    lea         edx,[ebp-14]
 007418F6    xor         ecx,ecx
 007418F8    mov         eax,741C90;'Page offs top:         %d'
 007418FD    call        Format
 00741902    mov         edx,dword ptr [ebp-44]
 00741905    mov         eax,dword ptr [esi]
 00741907    mov         eax,dword ptr [eax+3C0]
 0074190D    mov         eax,dword ptr [eax+2C8]
 00741913    mov         ecx,dword ptr [eax]
 00741915    call        dword ptr [ecx+3C]
 00741918    lea         eax,[ebp-48]
 0074191B    push        eax
 0074191C    mov         eax,dword ptr [ebx]
 0074191E    call        TFXDocPrinter.GetPageOffsetBottom
 00741923    mov         dword ptr [ebp-14],eax
 00741926    mov         byte ptr [ebp-10],0
 0074192A    lea         edx,[ebp-14]
 0074192D    xor         ecx,ecx
 0074192F    mov         eax,741CD0;'Page offs bottom:      %d'
 00741934    call        Format
 00741939    mov         edx,dword ptr [ebp-48]
 0074193C    mov         eax,dword ptr [esi]
 0074193E    mov         eax,dword ptr [eax+3C0]
 00741944    mov         eax,dword ptr [eax+2C8]
 0074194A    mov         ecx,dword ptr [eax]
 0074194C    call        dword ptr [ecx+3C]
 0074194F    lea         eax,[ebp-4C]
 00741952    push        eax
 00741953    mov         eax,dword ptr [ebx]
 00741955    call        TFXDocPrinter.GetPaperHeight
 0074195A    mov         edi,eax
 0074195C    mov         eax,dword ptr [ebx]
 0074195E    call        TFXDocPrinter.GetPageOffsetTop
 00741963    sub         edi,eax
>00741965    jno         0074196C
 00741967    call        @IntOver
 0074196C    mov         eax,dword ptr [ebx]
 0074196E    call        TFXDocPrinter.GetPageOffsetBottom
 00741973    sub         edi,eax
>00741975    jno         0074197C
 00741977    call        @IntOver
 0074197C    mov         dword ptr [ebp-14],edi
 0074197F    mov         byte ptr [ebp-10],0
 00741983    lea         edx,[ebp-14]
 00741986    xor         ecx,ecx
 00741988    mov         eax,741D10;'Page height:           %d'
 0074198D    call        Format
 00741992    mov         edx,dword ptr [ebp-4C]
 00741995    mov         eax,dword ptr [esi]
 00741997    mov         eax,dword ptr [eax+3C0]
 0074199D    mov         eax,dword ptr [eax+2C8]
 007419A3    mov         ecx,dword ptr [eax]
 007419A5    call        dword ptr [ecx+3C]
 007419A8    lea         eax,[ebp-50]
 007419AB    push        eax
 007419AC    call        Printer
 007419B1    call        TPrinter.GetPageHeight
 007419B6    mov         dword ptr [ebp-14],eax
 007419B9    mov         byte ptr [ebp-10],0
 007419BD    lea         edx,[ebp-14]
 007419C0    xor         ecx,ecx
 007419C2    mov         eax,741D50;'Printer pageheight:    %d'
 007419C7    call        Format
 007419CC    mov         edx,dword ptr [ebp-50]
 007419CF    mov         eax,dword ptr [esi]
 007419D1    mov         eax,dword ptr [eax+3C0]
 007419D7    mov         eax,dword ptr [eax+2C8]
 007419DD    mov         ecx,dword ptr [eax]
 007419DF    call        dword ptr [ecx+3C]
 007419E2    lea         eax,[ebp-54]
 007419E5    push        eax
 007419E6    call        Printer
 007419EB    call        TPrinter.GetCanvas
 007419F0    lea         edx,[ebp-38]
 007419F3    mov         ecx,dword ptr [eax]
 007419F5    call        dword ptr [ecx+10];TCanvas.GetClipRect
 007419F8    mov         eax,dword ptr [ebp-2C]
 007419FB    mov         dword ptr [ebp-14],eax
 007419FE    mov         byte ptr [ebp-10],0
 00741A02    lea         edx,[ebp-14]
 00741A05    xor         ecx,ecx
 00741A07    mov         eax,741D90;'Printer canvas height: %d'
 00741A0C    call        Format
 00741A11    mov         edx,dword ptr [ebp-54]
 00741A14    mov         eax,dword ptr [esi]
 00741A16    mov         eax,dword ptr [eax+3C0]
 00741A1C    mov         eax,dword ptr [eax+2C8]
 00741A22    mov         ecx,dword ptr [eax]
 00741A24    call        dword ptr [ecx+3C]
 00741A27    lea         eax,[ebp-58]
 00741A2A    push        eax
 00741A2B    lea         edx,[ebp-3C]
 00741A2E    or          ecx,0FFFFFFFF
 00741A31    mov         eax,741C40;' '
 00741A36    call        Format
 00741A3B    mov         edx,dword ptr [ebp-58]
 00741A3E    mov         eax,dword ptr [esi]
 00741A40    mov         eax,dword ptr [eax+3C0]
 00741A46    mov         eax,dword ptr [eax+2C8]
 00741A4C    mov         ecx,dword ptr [eax]
 00741A4E    call        dword ptr [ecx+3C]
 00741A51    mov         eax,dword ptr [esi]
 00741A53    call        TCustomForm.Show
 00741A58    xor         eax,eax
 00741A5A    pop         edx
 00741A5B    pop         ecx
 00741A5C    pop         ecx
 00741A5D    mov         dword ptr fs:[eax],edx
 00741A60    push        741A8F
 00741A65    lea         eax,[ebp-58]
 00741A68    mov         edx,8
 00741A6D    call        @UStrArrayClr
 00741A72    lea         eax,[ebp-28]
 00741A75    mov         edx,5
 00741A7A    call        @UStrArrayClr
 00741A7F    lea         eax,[ebp-0C]
 00741A82    call        @UStrClr
 00741A87    ret
>00741A88    jmp         @HandleFinally
>00741A8D    jmp         00741A65
 00741A8F    pop         edi
 00741A90    pop         esi
 00741A91    pop         ebx
 00741A92    mov         esp,ebp
 00741A94    pop         ebp
 00741A95    ret
*}
end;

//00741DC4
{*procedure sub_00741DC4(?:?; ?:?; ?:?; ?:?);
begin
 00741DC4    push        ebp
 00741DC5    mov         ebp,esp
 00741DC7    add         esp,0FFFFFFC8
 00741DCA    push        ebx
 00741DCB    push        esi
 00741DCC    push        edi
 00741DCD    xor         ebx,ebx
 00741DCF    mov         dword ptr [ebp-38],ebx
 00741DD2    mov         esi,edx
 00741DD4    mov         dword ptr [ebp-4],eax
 00741DD7    xor         eax,eax
 00741DD9    push        ebp
 00741DDA    push        742357
 00741DDF    push        dword ptr fs:[eax]
 00741DE2    mov         dword ptr fs:[eax],esp
 00741DE5    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00741DEA    mov         eax,dword ptr [eax]
 00741DEC    mov         edx,dword ptr [ebp-4]
 00741DEF    call        TFXNet.GetPanel
 00741DF4    mov         edi,eax
 00741DF6    mov         ebx,dword ptr [edi+0C];TFXPanel.FXPPD:TFXPPD
 00741DF9    movzx       eax,word ptr [ebx+123]
 00741E00    mov         edx,esi
 00741E02    sub         edx,eax
>00741E04    jno         00741E0B
 00741E06    call        @IntOver
 00741E0B    add         edx,1
>00741E0E    jno         00741E15
 00741E10    call        @IntOver
 00741E15    cmp         edx,0FF
>00741E1B    jbe         00741E22
 00741E1D    call        @BoundErr
 00741E22    mov         byte ptr [ebp-8],dl
 00741E25    mov         eax,ebx
 00741E27    call        006A3430
 00741E2C    push        eax
 00741E2D    mov         eax,dword ptr [edi+0C];TFXPanel.FXPPD:TFXPPD
 00741E30    call        006A34B0
 00741E35    pop         edx
 00741E36    sub         al,dl
>00741E38    jb          00742341
 00741E3E    inc         eax
 00741E3F    mov         byte ptr [ebp-11],al
 00741E42    mov         byte ptr [ebp-5],dl
 00741E45    mov         eax,dword ptr [edi+0C];TFXPanel.FXPPD:TFXPPD
 00741E48    call        006A3430
 00741E4D    movzx       eax,al
 00741E50    movzx       edx,byte ptr [ebp-5]
 00741E54    sub         edx,eax
>00741E56    jno         00741E5D
 00741E58    call        @IntOver
 00741E5D    cmp         edx,0FF
>00741E63    jbe         00741E6A
 00741E65    call        @BoundErr
 00741E6A    mov         byte ptr [ebp-6],dl
 00741E6D    movzx       edx,byte ptr [ebp-6]
 00741E71    mov         eax,dword ptr [edi+0C];TFXPanel.FXPPD:TFXPPD
 00741E74    call        TFXPPD.GetControllerLoopType
 00741E79    cmp         eax,0FF
>00741E7E    jbe         00741E85
 00741E80    call        @BoundErr
 00741E85    mov         byte ptr [ebp-7],al
 00741E88    cmp         byte ptr [ebp-7],0
>00741E8C    je          00742335
 00741E92    movzx       eax,byte ptr [ebp-7]
 00741E96    cmp         eax,6
>00741E99    ja          00741FEF
 00741E9F    jmp         dword ptr [eax*4+741EA6]
 00741E9F    dd          00741FEF
 00741E9F    dd          00741EC2
 00741E9F    dd          00741F22
 00741E9F    dd          00741F3E
 00741E9F    dd          00741F9B
 00741E9F    dd          00741F3E
 00741E9F    dd          00741F9B
 00741EC2    mov         al,1
 00741EC4    mov         byte ptr [ebp-0A],63
 00741EC8    mov         edx,dword ptr [ebp+0C]
 00741ECB    sub         edx,1
>00741ECE    jb          00741EDA
>00741ED0    je          00741EF0
 00741ED2    dec         edx
>00741ED3    je          00741F09
>00741ED5    jmp         00742006
 00741EDA    push        edi
 00741EDB    mov         esi,742368
 00741EE0    lea         edi,[ebp-32]
 00741EE3    mov         ecx,8
 00741EE8    rep movs    dword ptr [edi],dword ptr [esi]
 00741EEA    pop         edi
>00741EEB    jmp         00742006
 00741EF0    mov         edx,dword ptr ds:[7C4918];^gvar_007C25A0:Word
 00741EF6    push        edi
 00741EF7    mov         esi,edx
 00741EF9    lea         edi,[ebp-32]
 00741EFC    mov         ecx,8
 00741F01    rep movs    dword ptr [edi],dword ptr [esi]
 00741F03    pop         edi
>00741F04    jmp         00742006
 00741F09    mov         edx,dword ptr ds:[7C4424];^gvar_007C25C0:Word
 00741F0F    push        edi
 00741F10    mov         esi,edx
 00741F12    lea         edi,[ebp-32]
 00741F15    mov         ecx,8
 00741F1A    rep movs    dword ptr [edi],dword ptr [esi]
 00741F1C    pop         edi
>00741F1D    jmp         00742006
 00741F22    xor         eax,eax
 00741F24    mov         byte ptr [ebp-0A],10
 00741F28    push        edi
 00741F29    mov         esi,742368
 00741F2E    lea         edi,[ebp-32]
 00741F31    mov         ecx,8
 00741F36    rep movs    dword ptr [edi],dword ptr [esi]
 00741F38    pop         edi
>00741F39    jmp         00742006
 00741F3E    xor         eax,eax
 00741F40    mov         byte ptr [ebp-0A],7E
 00741F44    mov         edx,dword ptr [ebp+0C]
 00741F47    sub         edx,1
>00741F4A    jb          00741F56
>00741F4C    je          00741F6C
 00741F4E    dec         edx
>00741F4F    je          00741F85
>00741F51    jmp         00742006
 00741F56    push        edi
 00741F57    mov         esi,742368
 00741F5C    lea         edi,[ebp-32]
 00741F5F    mov         ecx,8
 00741F64    rep movs    dword ptr [edi],dword ptr [esi]
 00741F66    pop         edi
>00741F67    jmp         00742006
 00741F6C    mov         edx,dword ptr ds:[7C49C8];^gvar_007C2620
 00741F72    push        edi
 00741F73    mov         esi,edx
 00741F75    lea         edi,[ebp-32]
 00741F78    mov         ecx,8
 00741F7D    rep movs    dword ptr [edi],dword ptr [esi]
 00741F7F    pop         edi
>00741F80    jmp         00742006
 00741F85    mov         edx,dword ptr ds:[7C44D4];^gvar_007C2640
 00741F8B    push        edi
 00741F8C    mov         esi,edx
 00741F8E    lea         edi,[ebp-32]
 00741F91    mov         ecx,8
 00741F96    rep movs    dword ptr [edi],dword ptr [esi]
 00741F98    pop         edi
>00741F99    jmp         00742006
 00741F9B    mov         al,1
 00741F9D    mov         byte ptr [ebp-0A],9F
 00741FA1    mov         edx,dword ptr [ebp+0C]
 00741FA4    sub         edx,1
>00741FA7    jb          00741FB0
>00741FA9    je          00741FC3
 00741FAB    dec         edx
>00741FAC    je          00741FD9
>00741FAE    jmp         00742006
 00741FB0    push        edi
 00741FB1    mov         esi,742368
 00741FB6    lea         edi,[ebp-32]
 00741FB9    mov         ecx,8
 00741FBE    rep movs    dword ptr [edi],dword ptr [esi]
 00741FC0    pop         edi
>00741FC1    jmp         00742006
 00741FC3    mov         edx,dword ptr ds:[7C46D4];^gvar_007C2700
 00741FC9    push        edi
 00741FCA    mov         esi,edx
 00741FCC    lea         edi,[ebp-32]
 00741FCF    mov         ecx,8
 00741FD4    rep movs    dword ptr [edi],dword ptr [esi]
 00741FD6    pop         edi
>00741FD7    jmp         00742006
 00741FD9    mov         edx,dword ptr ds:[7C4208];^gvar_007C2780
 00741FDF    push        edi
 00741FE0    mov         esi,edx
 00741FE2    lea         edi,[ebp-32]
 00741FE5    mov         ecx,8
 00741FEA    rep movs    dword ptr [edi],dword ptr [esi]
 00741FEC    pop         edi
>00741FED    jmp         00742006
 00741FEF    mov         al,1
 00741FF1    mov         byte ptr [ebp-0A],9F
 00741FF5    push        edi
 00741FF6    mov         esi,742388
 00741FFB    lea         edi,[ebp-32]
 00741FFE    mov         ecx,8
 00742003    rep movs    dword ptr [edi],dword ptr [esi]
 00742005    pop         edi
 00742006    test        al,al
>00742008    jb          00742335
 0074200E    inc         eax
 0074200F    mov         byte ptr [ebp-12],al
 00742012    mov         byte ptr [ebp-9],0
 00742016    movzx       esi,byte ptr [ebp-0A]
 0074201A    test        si,si
>0074201D    jbe         00742329
 00742023    mov         bx,1
 00742027    movzx       eax,byte ptr [ebp-6]
 0074202B    cmp         eax,7
>0074202E    jbe         00742035
 00742030    call        @BoundErr
 00742035    imul        eax,eax,43B3
>0074203B    jno         00742042
 0074203D    call        @IntOver
 00742042    mov         edx,dword ptr [edi+14];TFXPanel.FXPAD:TFXPAD
 00742045    lea         eax,[edx+eax*4]
 00742048    movzx       edx,byte ptr [ebp-9]
 0074204C    cmp         edx,1
>0074204F    jbe         00742056
 00742051    call        @BoundErr
 00742056    imul        edx,edx,43B3
>0074205C    jno         00742063
 0074205E    call        @IntOver
 00742063    lea         eax,[eax+edx*2]
 00742066    movzx       edx,bx
 00742069    dec         edx
 0074206A    cmp         edx,9E
>00742070    jbe         00742077
 00742072    call        @BoundErr
 00742077    inc         edx
 00742078    imul        edx,edx,6D
>0074207B    jno         00742082
 0074207D    call        @IntOver
 00742082    cmp         byte ptr [eax+edx*2-0CC],0
>0074208A    je          0074231F
 00742090    movzx       eax,byte ptr [ebp-6]
 00742094    cmp         eax,7
>00742097    jbe         0074209E
 00742099    call        @BoundErr
 0074209E    imul        eax,eax,43B3
>007420A4    jno         007420AB
 007420A6    call        @IntOver
 007420AB    mov         edx,dword ptr [edi+14];TFXPanel.FXPAD:TFXPAD
 007420AE    lea         eax,[edx+eax*4]
 007420B1    movzx       edx,byte ptr [ebp-9]
 007420B5    cmp         edx,1
>007420B8    jbe         007420BF
 007420BA    call        @BoundErr
 007420BF    imul        edx,edx,43B3
>007420C5    jno         007420CC
 007420C7    call        @IntOver
 007420CC    lea         eax,[eax+edx*2]
 007420CF    movzx       edx,bx
 007420D2    dec         edx
 007420D3    cmp         edx,9E
>007420D9    jbe         007420E0
 007420DB    call        @BoundErr
 007420E0    inc         edx
 007420E1    imul        edx,edx,6D
>007420E4    jno         007420EB
 007420E6    call        @IntOver
 007420EB    movzx       eax,byte ptr [eax+edx*2-0D1]
 007420F3    cmp         al,byte ptr [ebp-8]
>007420F6    jne         0074231F
 007420FC    movzx       eax,byte ptr [ebp-6]
 00742100    cmp         eax,7
>00742103    jbe         0074210A
 00742105    call        @BoundErr
 0074210A    imul        eax,eax,43B3
>00742110    jno         00742117
 00742112    call        @IntOver
 00742117    mov         edx,dword ptr [edi+14];TFXPanel.FXPAD:TFXPAD
 0074211A    lea         eax,[edx+eax*4]
 0074211D    movzx       edx,byte ptr [ebp-9]
 00742121    cmp         edx,1
>00742124    jbe         0074212B
 00742126    call        @BoundErr
 0074212B    imul        edx,edx,43B3
>00742131    jno         00742138
 00742133    call        @IntOver
 00742138    lea         eax,[eax+edx*2]
 0074213B    movzx       edx,bx
 0074213E    dec         edx
 0074213F    cmp         edx,9E
>00742145    jbe         0074214C
 00742147    call        @BoundErr
 0074214C    inc         edx
 0074214D    imul        edx,edx,6D
>00742150    jno         00742157
 00742152    call        @IntOver
 00742157    movzx       eax,byte ptr [eax+edx*2-0CC]
 0074215F    movzx       eax,al
 00742162    bt          dword ptr [ebp-32],eax
>00742166    jae         0074231F
 0074216C    mov         dl,1
 0074216E    mov         eax,[0073B8F8];TAddress
 00742173    call        TObject.Create;TAddress.Create
 00742178    mov         dword ptr [ebp-10],eax
 0074217B    mov         eax,dword ptr [ebp-4]
 0074217E    cmp         eax,0FF
>00742183    jbe         0074218A
 00742185    call        @BoundErr
 0074218A    mov         edx,dword ptr [ebp-10]
 0074218D    mov         byte ptr [edx+4],al;TAddress.FPanel:byte
 00742190    mov         eax,dword ptr [ebp-10]
 00742193    movzx       edx,byte ptr [ebp-5]
 00742197    mov         byte ptr [eax+5],dl;TAddress.FLoop:byte
 0074219A    movzx       eax,byte ptr [ebp-7]
 0074219E    cmp         eax,6
>007421A1    ja          00742240
 007421A7    jmp         dword ptr [eax*4+7421AE]
 007421A7    dd          00742240
 007421A7    dd          007421DC
 007421A7    dd          007421D3
 007421A7    dd          007421CA
 007421A7    dd          0074220F
 007421A7    dd          007421CA
 007421A7    dd          0074220F
 007421CA    mov         eax,dword ptr [ebp-10]
 007421CD    mov         word ptr [eax+6],bx;TAddress.FAddr:word
>007421D1    jmp         00742240
 007421D3    mov         eax,dword ptr [ebp-10]
 007421D6    mov         word ptr [eax+6],bx;TAddress.FAddr:word
>007421DA    jmp         00742240
 007421DC    movzx       eax,byte ptr [ebp-9]
 007421E0    mov         edx,64
 007421E5    mul         eax,edx
>007421E7    jno         007421EE
 007421E9    call        @IntOver
 007421EE    movzx       edx,bx
 007421F1    add         eax,edx
>007421F3    jno         007421FA
 007421F5    call        @IntOver
 007421FA    cmp         eax,0FFFF
>007421FF    jbe         00742206
 00742201    call        @BoundErr
 00742206    mov         edx,dword ptr [ebp-10]
 00742209    mov         word ptr [edx+6],ax;TAddress.FAddr:word
>0074220D    jmp         00742240
 0074220F    movzx       eax,byte ptr [ebp-9]
 00742213    mov         edx,0C8
 00742218    mul         eax,edx
>0074221A    jno         00742221
 0074221C    call        @IntOver
 00742221    movzx       edx,bx
 00742224    add         eax,edx
>00742226    jno         0074222D
 00742228    call        @IntOver
 0074222D    cmp         eax,0FFFF
>00742232    jbe         00742239
 00742234    call        @BoundErr
 00742239    mov         edx,dword ptr [ebp-10]
 0074223C    mov         word ptr [edx+6],ax;TAddress.FAddr:word
 00742240    movzx       eax,byte ptr [ebp-6]
 00742244    cmp         eax,7
>00742247    jbe         0074224E
 00742249    call        @BoundErr
 0074224E    imul        eax,eax,43B3
>00742254    jno         0074225B
 00742256    call        @IntOver
 0074225B    mov         edx,dword ptr [edi+14];TFXPanel.FXPAD:TFXPAD
 0074225E    lea         eax,[edx+eax*4]
 00742261    movzx       edx,byte ptr [ebp-9]
 00742265    cmp         edx,1
>00742268    jbe         0074226F
 0074226A    call        @BoundErr
 0074226F    imul        edx,edx,43B3
>00742275    jno         0074227C
 00742277    call        @IntOver
 0074227C    lea         eax,[eax+edx*2]
 0074227F    movzx       edx,bx
 00742282    dec         edx
 00742283    cmp         edx,9E
>00742289    jbe         00742290
 0074228B    call        @BoundErr
 00742290    inc         edx
 00742291    imul        edx,edx,6D
>00742294    jno         0074229B
 00742296    call        @IntOver
 0074229B    mov         ecx,dword ptr [ebp-10]
 0074229E    push        esi
 0074229F    push        edi
 007422A0    lea         esi,[eax+edx*2-0D6]
 007422A7    lea         edi,[ecx+18];TAddress.FARec:TFXADRec
 007422AA    mov         ecx,36
 007422AF    rep movs    dword ptr [edi],dword ptr [esi]
 007422B1    movs        word ptr [edi],word ptr [esi]
 007422B3    pop         edi
 007422B4    pop         esi
 007422B5    mov         eax,dword ptr [ebp-10]
 007422B8    movzx       eax,byte ptr [eax+1D]
 007422BC    mov         edx,dword ptr [edi+0C];TFXPanel.FXPPD:TFXPPD
 007422BF    movzx       edx,word ptr [edx+123]
 007422C6    add         eax,edx
>007422C8    jno         007422CF
 007422CA    call        @IntOver
 007422CF    sub         eax,1
>007422D2    jno         007422D9
 007422D4    call        @IntOver
 007422D9    cmp         eax,0FFFF
>007422DE    jbe         007422E5
 007422E0    call        @BoundErr
 007422E5    mov         edx,dword ptr [ebp-10]
 007422E8    mov         word ptr [edx+8],ax;TAddress.FZone:word
 007422EC    lea         eax,[ebp-38]
 007422EF    push        eax
 007422F0    mov         eax,dword ptr [ebp-10]
 007422F3    movzx       ecx,word ptr [eax+6];TAddress.FAddr:word
 007422F7    mov         eax,dword ptr [ebp-10]
 007422FA    movzx       edx,byte ptr [eax+5];TAddress.FLoop:byte
 007422FE    mov         eax,dword ptr [edi+14];TFXPanel.FXPAD:TFXPAD
 00742301    call        TFXPAD.APTypeAsStr
 00742306    mov         edx,dword ptr [ebp-38]
 00742309    mov         eax,dword ptr [ebp-10]
 0074230C    add         eax,0C;TAddress.FTypeStr:string
 0074230F    call        @UStrAsg
 00742314    mov         edx,dword ptr [ebp-10]
 00742317    mov         eax,dword ptr [ebp+8]
 0074231A    call        TList.Add
 0074231F    inc         ebx
 00742320    dec         si
>00742323    jne         00742027
 00742329    inc         byte ptr [ebp-9]
 0074232C    dec         byte ptr [ebp-12]
>0074232F    jne         00742016
 00742335    inc         byte ptr [ebp-5]
 00742338    dec         byte ptr [ebp-11]
>0074233B    jne         00741E45
 00742341    xor         eax,eax
 00742343    pop         edx
 00742344    pop         ecx
 00742345    pop         ecx
 00742346    mov         dword ptr fs:[eax],edx
 00742349    push        74235E
 0074234E    lea         eax,[ebp-38]
 00742351    call        @UStrClr
 00742356    ret
>00742357    jmp         @HandleFinally
>0074235C    jmp         0074234E
 0074235E    pop         edi
 0074235F    pop         esi
 00742360    pop         ebx
 00742361    mov         esp,ebp
 00742363    pop         ebp
 00742364    ret         8
end;*}

//007423A8
{*procedure sub_007423A8(?:?; ?:?; ?:?; ?:?);
begin
 007423A8    push        ebp
 007423A9    mov         ebp,esp
 007423AB    add         esp,0FFFFFFC8
 007423AE    push        ebx
 007423AF    push        esi
 007423B0    push        edi
 007423B1    xor         ebx,ebx
 007423B3    mov         dword ptr [ebp-38],ebx
 007423B6    mov         dword ptr [ebp-8],edx
 007423B9    mov         dword ptr [ebp-4],eax
 007423BC    xor         eax,eax
 007423BE    push        ebp
 007423BF    push        7427CE
 007423C4    push        dword ptr fs:[eax]
 007423C7    mov         dword ptr fs:[eax],esp
 007423CA    mov         esi,7427E0
 007423CF    lea         edi,[ebp-34]
 007423D2    mov         ecx,8
 007423D7    rep movs    dword ptr [edi],dword ptr [esi]
 007423D9    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 007423DE    mov         eax,dword ptr [eax]
 007423E0    mov         edx,dword ptr [ebp-4]
 007423E3    call        TFXNet.GetPanel
 007423E8    mov         dword ptr [ebp-0C],eax
 007423EB    mov         eax,dword ptr [ebp-0C]
 007423EE    mov         eax,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 007423F1    call        006A3430
 007423F6    movzx       eax,al
 007423F9    mov         edx,dword ptr [ebp-8]
 007423FC    sub         edx,eax
>007423FE    jno         00742405
 00742400    call        @IntOver
 00742405    cmp         edx,0FF
>0074240B    jbe         00742412
 0074240D    call        @BoundErr
 00742412    mov         byte ptr [ebp-0D],dl
 00742415    movzx       edx,byte ptr [ebp-0D]
 00742419    mov         eax,dword ptr [ebp-0C]
 0074241C    mov         eax,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 0074241F    call        TFXPPD.GetControllerLoopType
 00742424    cmp         eax,0FF
>00742429    jbe         00742430
 0074242B    call        @BoundErr
 00742430    mov         byte ptr [ebp-0E],al
 00742433    movzx       eax,byte ptr [ebp-0E]
 00742437    dec         al
>00742439    je          0074244C
 0074243B    dec         al
>0074243D    je          007424A3
 0074243F    dec         al
>00742441    je          007424BA
 00742443    sub         al,2
>00742445    je          007424BA
>00742447    jmp         00742508
 0074244C    mov         al,1
 0074244E    mov         byte ptr [ebp-13],63
 00742452    mov         edx,dword ptr [ebp+0C]
 00742455    sub         edx,1
>00742458    jb          00742464
>0074245A    je          00742478
 0074245C    dec         edx
>0074245D    je          0074248F
>0074245F    jmp         0074251D
 00742464    mov         esi,742800
 00742469    lea         edi,[ebp-34]
 0074246C    mov         ecx,8
 00742471    rep movs    dword ptr [edi],dword ptr [esi]
>00742473    jmp         0074251D
 00742478    mov         edx,dword ptr ds:[7C4918];^gvar_007C25A0:Word
 0074247E    mov         esi,edx
 00742480    lea         edi,[ebp-34]
 00742483    mov         ecx,8
 00742488    rep movs    dword ptr [edi],dword ptr [esi]
>0074248A    jmp         0074251D
 0074248F    mov         edx,dword ptr ds:[7C4424];^gvar_007C25C0:Word
 00742495    mov         esi,edx
 00742497    lea         edi,[ebp-34]
 0074249A    mov         ecx,8
 0074249F    rep movs    dword ptr [edi],dword ptr [esi]
>007424A1    jmp         0074251D
 007424A3    xor         eax,eax
 007424A5    mov         byte ptr [ebp-13],10
 007424A9    mov         esi,742800
 007424AE    lea         edi,[ebp-34]
 007424B1    mov         ecx,8
 007424B6    rep movs    dword ptr [edi],dword ptr [esi]
>007424B8    jmp         0074251D
 007424BA    xor         eax,eax
 007424BC    mov         byte ptr [ebp-13],7E
 007424C0    mov         edx,dword ptr [ebp+0C]
 007424C3    sub         edx,1
>007424C6    jb          007424CF
>007424C8    je          007424E0
 007424CA    dec         edx
>007424CB    je          007424F4
>007424CD    jmp         0074251D
 007424CF    mov         esi,742800
 007424D4    lea         edi,[ebp-34]
 007424D7    mov         ecx,8
 007424DC    rep movs    dword ptr [edi],dword ptr [esi]
>007424DE    jmp         0074251D
 007424E0    mov         edx,dword ptr ds:[7C49C8];^gvar_007C2620
 007424E6    mov         esi,edx
 007424E8    lea         edi,[ebp-34]
 007424EB    mov         ecx,8
 007424F0    rep movs    dword ptr [edi],dword ptr [esi]
>007424F2    jmp         0074251D
 007424F4    mov         edx,dword ptr ds:[7C44D4];^gvar_007C2640
 007424FA    mov         esi,edx
 007424FC    lea         edi,[ebp-34]
 007424FF    mov         ecx,8
 00742504    rep movs    dword ptr [edi],dword ptr [esi]
>00742506    jmp         0074251D
 00742508    mov         al,1
 0074250A    mov         byte ptr [ebp-13],9F
 0074250E    mov         esi,7427E0
 00742513    lea         edi,[ebp-34]
 00742516    mov         ecx,8
 0074251B    rep movs    dword ptr [edi],dword ptr [esi]
 0074251D    test        al,al
>0074251F    jb          007427B8
 00742525    inc         eax
 00742526    mov         byte ptr [ebp-14],al
 00742529    mov         byte ptr [ebp-0F],0
 0074252D    movzx       edi,byte ptr [ebp-13]
 00742531    test        di,di
>00742534    jbe         007427AC
 0074253A    mov         word ptr [ebp-12],1
 00742540    movzx       eax,byte ptr [ebp-0D]
 00742544    cmp         eax,7
>00742547    jbe         0074254E
 00742549    call        @BoundErr
 0074254E    imul        eax,eax,43B3
>00742554    jno         0074255B
 00742556    call        @IntOver
 0074255B    mov         edx,dword ptr [ebp-0C]
 0074255E    mov         edx,dword ptr [edx+14];TFXPanel.FXPAD:TFXPAD
 00742561    lea         eax,[edx+eax*4]
 00742564    movzx       edx,byte ptr [ebp-0F]
 00742568    cmp         edx,1
>0074256B    jbe         00742572
 0074256D    call        @BoundErr
 00742572    imul        edx,edx,43B3
>00742578    jno         0074257F
 0074257A    call        @IntOver
 0074257F    lea         eax,[eax+edx*2]
 00742582    movzx       edx,word ptr [ebp-12]
 00742586    dec         edx
 00742587    cmp         edx,9E
>0074258D    jbe         00742594
 0074258F    call        @BoundErr
 00742594    inc         edx
 00742595    imul        edx,edx,6D
>00742598    jno         0074259F
 0074259A    call        @IntOver
 0074259F    lea         esi,[eax+edx*2-0D6]
 007425A6    cmp         byte ptr [esi+0A],0
>007425AA    je          0074264A
 007425B0    cmp         byte ptr [ebp-0E],4
>007425B4    je          007425C0
 007425B6    cmp         byte ptr [ebp-0E],6
>007425BA    jne         0074264A
 007425C0    mov         eax,dword ptr [ebp+0C]
 007425C3    sub         eax,1
>007425C6    jb          007425CF
>007425C8    je          007425E4
 007425CA    dec         eax
>007425CB    je          00742618
>007425CD    jmp         0074264A
 007425CF    push        esi
 007425D0    push        edi
 007425D1    mov         esi,742800
 007425D6    lea         edi,[ebp-34]
 007425D9    mov         ecx,8
 007425DE    rep movs    dword ptr [edi],dword ptr [esi]
 007425E0    pop         edi
 007425E1    pop         esi
>007425E2    jmp         0074264A
 007425E4    cmp         byte ptr [esi+0B],0
>007425E8    jne         00742601
 007425EA    mov         eax,[007C4918];^gvar_007C25A0:Word
 007425EF    push        esi
 007425F0    push        edi
 007425F1    mov         esi,eax
 007425F3    lea         edi,[ebp-34]
 007425F6    mov         ecx,8
 007425FB    rep movs    dword ptr [edi],dword ptr [esi]
 007425FD    pop         edi
 007425FE    pop         esi
>007425FF    jmp         0074264A
 00742601    mov         eax,[007C46D4];^gvar_007C2700
 00742606    push        esi
 00742607    push        edi
 00742608    mov         esi,eax
 0074260A    lea         edi,[ebp-34]
 0074260D    mov         ecx,8
 00742612    rep movs    dword ptr [edi],dword ptr [esi]
 00742614    pop         edi
 00742615    pop         esi
>00742616    jmp         0074264A
 00742618    cmp         byte ptr [esi+0B],0
>0074261C    jne         00742635
 0074261E    mov         eax,[007C4424];^gvar_007C25C0:Word
 00742623    push        esi
 00742624    push        edi
 00742625    mov         esi,eax
 00742627    lea         edi,[ebp-34]
 0074262A    mov         ecx,8
 0074262F    rep movs    dword ptr [edi],dword ptr [esi]
 00742631    pop         edi
 00742632    pop         esi
>00742633    jmp         0074264A
 00742635    mov         eax,[007C4208];^gvar_007C2780
 0074263A    push        esi
 0074263B    push        edi
 0074263C    mov         esi,eax
 0074263E    lea         edi,[ebp-34]
 00742641    mov         ecx,8
 00742646    rep movs    dword ptr [edi],dword ptr [esi]
 00742648    pop         edi
 00742649    pop         esi
 0074264A    movzx       eax,byte ptr [esi+0A]
 0074264E    movzx       eax,al
 00742651    bt          dword ptr [ebp-34],eax
>00742655    jae         0074279F
 0074265B    mov         dl,1
 0074265D    mov         eax,[0073B8F8];TAddress
 00742662    call        TObject.Create;TAddress.Create
 00742667    mov         ebx,eax
 00742669    mov         eax,dword ptr [ebp-4]
 0074266C    cmp         eax,0FF
>00742671    jbe         00742678
 00742673    call        @BoundErr
 00742678    mov         byte ptr [ebx+4],al;TAddress.FPanel:byte
 0074267B    mov         eax,dword ptr [ebp-8]
 0074267E    cmp         eax,0FF
>00742683    jbe         0074268A
 00742685    call        @BoundErr
 0074268A    mov         byte ptr [ebx+5],al;TAddress.FLoop:byte
 0074268D    movzx       eax,byte ptr [ebp-0E]
 00742691    cmp         eax,6
>00742694    ja          00742731
 0074269A    jmp         dword ptr [eax*4+7426A1]
 0074269A    dd          00742731
 0074269A    dd          007426D1
 0074269A    dd          007426C7
 0074269A    dd          007426BD
 0074269A    dd          00742702
 0074269A    dd          007426BD
 0074269A    dd          00742702
 007426BD    movzx       eax,word ptr [ebp-12]
 007426C1    mov         word ptr [ebx+6],ax;TAddress.FAddr:word
>007426C5    jmp         00742731
 007426C7    movzx       eax,word ptr [ebp-12]
 007426CB    mov         word ptr [ebx+6],ax;TAddress.FAddr:word
>007426CF    jmp         00742731
 007426D1    movzx       eax,byte ptr [ebp-0F]
 007426D5    mov         edx,64
 007426DA    mul         eax,edx
>007426DC    jno         007426E3
 007426DE    call        @IntOver
 007426E3    movzx       edx,word ptr [ebp-12]
 007426E7    add         eax,edx
>007426E9    jno         007426F0
 007426EB    call        @IntOver
 007426F0    cmp         eax,0FFFF
>007426F5    jbe         007426FC
 007426F7    call        @BoundErr
 007426FC    mov         word ptr [ebx+6],ax;TAddress.FAddr:word
>00742700    jmp         00742731
 00742702    movzx       eax,byte ptr [ebp-0F]
 00742706    mov         edx,0C8
 0074270B    mul         eax,edx
>0074270D    jno         00742714
 0074270F    call        @IntOver
 00742714    movzx       edx,word ptr [ebp-12]
 00742718    add         eax,edx
>0074271A    jno         00742721
 0074271C    call        @IntOver
 00742721    cmp         eax,0FFFF
>00742726    jbe         0074272D
 00742728    call        @BoundErr
 0074272D    mov         word ptr [ebx+6],ax;TAddress.FAddr:word
 00742731    push        edi
 00742732    lea         edi,[ebx+18];TAddress.FARec:TFXADRec
 00742735    mov         ecx,36
 0074273A    rep movs    dword ptr [edi],dword ptr [esi]
 0074273C    movs        word ptr [edi],word ptr [esi]
 0074273E    pop         edi
 0074273F    movzx       eax,byte ptr [ebx+1D]
 00742743    mov         edx,dword ptr [ebp-0C]
 00742746    mov         edx,dword ptr [edx+0C];TFXPanel.FXPPD:TFXPPD
 00742749    movzx       edx,word ptr [edx+123]
 00742750    add         eax,edx
>00742752    jno         00742759
 00742754    call        @IntOver
 00742759    sub         eax,1
>0074275C    jno         00742763
 0074275E    call        @IntOver
 00742763    cmp         eax,0FFFF
>00742768    jbe         0074276F
 0074276A    call        @BoundErr
 0074276F    mov         word ptr [ebx+8],ax;TAddress.FZone:word
 00742773    lea         eax,[ebp-38]
 00742776    push        eax
 00742777    movzx       edx,byte ptr [ebx+5];TAddress.FLoop:byte
 0074277B    mov         eax,dword ptr [ebp-0C]
 0074277E    mov         eax,dword ptr [eax+14];TFXPanel.FXPAD:TFXPAD
 00742781    movzx       ecx,word ptr [ebx+6];TAddress.FAddr:word
 00742785    call        TFXPAD.APTypeAsStr
 0074278A    mov         edx,dword ptr [ebp-38]
 0074278D    lea         eax,[ebx+0C];TAddress.FTypeStr:string
 00742790    call        @UStrAsg
 00742795    mov         edx,ebx
 00742797    mov         eax,dword ptr [ebp+8]
 0074279A    call        TList.Add
 0074279F    inc         word ptr [ebp-12]
 007427A3    dec         di
>007427A6    jne         00742540
 007427AC    inc         byte ptr [ebp-0F]
 007427AF    dec         byte ptr [ebp-14]
>007427B2    jne         0074252D
 007427B8    xor         eax,eax
 007427BA    pop         edx
 007427BB    pop         ecx
 007427BC    pop         ecx
 007427BD    mov         dword ptr fs:[eax],edx
 007427C0    push        7427D5
 007427C5    lea         eax,[ebp-38]
 007427C8    call        @UStrClr
 007427CD    ret
>007427CE    jmp         @HandleFinally
>007427D3    jmp         007427C5
 007427D5    pop         edi
 007427D6    pop         esi
 007427D7    pop         ebx
 007427D8    mov         esp,ebp
 007427DA    pop         ebp
 007427DB    ret         8
end;*}

//00742820
{*procedure sub_00742820(?:?; ?:?; ?:?; ?:?);
begin
 00742820    push        ebp
 00742821    mov         ebp,esp
 00742823    add         esp,0FFFFFFF0
 00742826    push        ebx
 00742827    push        esi
 00742828    mov         dword ptr [ebp-8],ecx
 0074282B    mov         esi,edx
 0074282D    mov         dword ptr [ebp-4],eax
 00742830    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00742835    mov         eax,dword ptr [eax]
 00742837    mov         edx,dword ptr [ebp-4]
 0074283A    call        TFXNet.GetPanel
 0074283F    mov         dword ptr [ebp-0C],eax
 00742842    mov         eax,dword ptr [ebp-0C]
 00742845    mov         eax,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 00742848    call        006A3430
 0074284D    mov         ebx,eax
 0074284F    mov         eax,dword ptr [ebp-0C]
 00742852    mov         eax,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 00742855    call        006A34B0
 0074285A    sub         al,bl
>0074285C    jb          007428DD
 0074285E    inc         eax
 0074285F    mov         byte ptr [ebp-0E],al
 00742862    mov         eax,dword ptr [ebp-0C]
 00742865    mov         eax,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 00742868    call        006A3430
 0074286D    movzx       eax,al
 00742870    movzx       edx,bl
 00742873    sub         edx,eax
>00742875    jno         0074287C
 00742877    call        @IntOver
 0074287C    cmp         edx,0FF
>00742882    jbe         00742889
 00742884    call        @BoundErr
 00742889    mov         byte ptr [ebp-0D],dl
 0074288C    movzx       edx,byte ptr [ebp-0D]
 00742890    mov         eax,dword ptr [ebp-0C]
 00742893    mov         eax,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 00742896    call        TFXPPD.GetControllerLoopType
 0074289B    cmp         eax,0FF
>007428A0    jbe         007428A7
 007428A2    call        @BoundErr
 007428A7    cmp         al,5
>007428A9    jne         007428AD
 007428AB    mov         al,3
 007428AD    cmp         al,6
>007428AF    jne         007428B3
 007428B1    mov         al,4
 007428B3    test        al,al
>007428B5    je          007428D7
 007428B7    test        esi,esi
>007428B9    je          007428C2
 007428BB    movzx       eax,al
 007428BE    cmp         esi,eax
>007428C0    jne         007428D7
 007428C2    mov         eax,dword ptr [ebp-8]
 007428C5    push        eax
 007428C6    mov         eax,dword ptr [ebp+8]
 007428C9    push        eax
 007428CA    movzx       edx,bl
 007428CD    mov         ecx,esi
 007428CF    mov         eax,dword ptr [ebp-4]
 007428D2    call        007423A8
 007428D7    inc         ebx
 007428D8    dec         byte ptr [ebp-0E]
>007428DB    jne         00742862
 007428DD    pop         esi
 007428DE    pop         ebx
 007428DF    mov         esp,ebp
 007428E1    pop         ebp
 007428E2    ret         4
end;*}

//007428E8
{*procedure sub_007428E8(?:?; ?:?; ?:?);
begin
 007428E8    push        ebx
 007428E9    push        esi
 007428EA    push        edi
 007428EB    push        ebp
 007428EC    push        ecx
 007428ED    mov         dword ptr [esp],ecx
 007428F0    mov         ebp,edx
 007428F2    mov         edi,eax
 007428F4    xor         ebx,ebx
 007428F6    movzx       esi,bl
 007428F9    mov         edx,esi
 007428FB    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00742900    mov         eax,dword ptr [eax]
 00742902    call        TFXNet.GetPanel
 00742907    test        eax,eax
>00742909    je          0074291A
 0074290B    mov         eax,dword ptr [esp]
 0074290E    push        eax
 0074290F    mov         eax,esi
 00742911    mov         ecx,ebp
 00742913    mov         edx,edi
 00742915    call        00742820
 0074291A    inc         ebx
 0074291B    cmp         bl,21
>0074291E    jne         007428F6
 00742920    pop         edx
 00742921    pop         ebp
 00742922    pop         edi
 00742923    pop         esi
 00742924    pop         ebx
 00742925    ret
end;*}

//00742928
procedure TAddressReport.UpdateAddressList;
begin
{*
 00742928    push        ebp
 00742929    mov         ebp,esp
 0074292B    add         esp,0FFFFFFCC
 0074292E    push        ebx
 0074292F    push        esi
 00742930    push        edi
 00742931    xor         edx,edx
 00742933    mov         dword ptr [ebp-2C],edx
 00742936    mov         dword ptr [ebp-4],eax
 00742939    xor         eax,eax
 0074293B    push        ebp
 0074293C    push        742C79
 00742941    push        dword ptr fs:[eax]
 00742944    mov         dword ptr fs:[eax],esp
 00742947    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 0074294C    mov         eax,dword ptr [eax]
 0074294E    mov         eax,dword ptr [eax+0D8]
 00742954    mov         edx,dword ptr [eax]
 00742956    call        dword ptr [edx+8]
 00742959    mov         eax,dword ptr [ebp-4]
 0074295C    mov         eax,dword ptr [eax+3E8];TAddressReport.cmbFamily:TComboBox
 00742962    mov         edx,dword ptr [eax]
 00742964    call        dword ptr [edx+108];TComboBox.GetItemIndex
 0074296A    dec         eax
>0074296B    je          00742978
 0074296D    dec         eax
>0074296E    je          0074297E
 00742970    dec         eax
>00742971    je          00742984
 00742973    dec         eax
>00742974    je          0074298A
>00742976    jmp         00742990
 00742978    mov         byte ptr [ebp-7],3
>0074297C    jmp         00742994
 0074297E    mov         byte ptr [ebp-7],1
>00742982    jmp         00742994
 00742984    mov         byte ptr [ebp-7],4
>00742988    jmp         00742994
 0074298A    mov         byte ptr [ebp-7],2
>0074298E    jmp         00742994
 00742990    mov         byte ptr [ebp-7],0
 00742994    mov         eax,dword ptr [ebp-4]
 00742997    mov         eax,dword ptr [eax+3F0];TAddressReport.cmbKind:TComboBox
 0074299D    mov         edx,dword ptr [eax]
 0074299F    call        dword ptr [edx+108];TComboBox.GetItemIndex
 007429A5    dec         eax
>007429A6    je          007429AD
 007429A8    dec         eax
>007429A9    je          007429B3
>007429AB    jmp         007429B9
 007429AD    mov         byte ptr [ebp-8],1
>007429B1    jmp         007429BD
 007429B3    mov         byte ptr [ebp-8],2
>007429B7    jmp         007429BD
 007429B9    mov         byte ptr [ebp-8],0
 007429BD    mov         eax,dword ptr [ebp-4]
 007429C0    mov         eax,dword ptr [eax+3C8];TAddressReport.rbWholeSystem:TRadioButton
 007429C6    mov         edx,dword ptr [eax]
 007429C8    call        dword ptr [edx+108];TRadioButton.GetChecked
 007429CE    test        al,al
>007429D0    je          007429EC
 007429D2    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 007429D7    mov         eax,dword ptr [eax]
 007429D9    mov         ecx,dword ptr [eax+0D8]
 007429DF    movzx       edx,byte ptr [ebp-8]
 007429E3    movzx       eax,byte ptr [ebp-7]
 007429E7    call        007428E8
 007429EC    mov         eax,dword ptr [ebp-4]
 007429EF    mov         eax,dword ptr [eax+3CC];TAddressReport.rbPanels:TRadioButton
 007429F5    mov         edx,dword ptr [eax]
 007429F7    call        dword ptr [edx+108];TRadioButton.GetChecked
 007429FD    test        al,al
>007429FF    je          00742A61
 00742A01    xor         ebx,ebx
 00742A03    mov         eax,dword ptr [ebp-4]
 00742A06    mov         edx,ebx
 00742A08    cmp         dl,27
>00742A0B    ja          00742A27
 00742A0D    and         edx,7F
 00742A10    add         eax,45C;TAddressReport.SelectedPanels:?
 00742A15    mov         ecx,eax
 00742A17    and         ecx,3
 00742A1A    sub         eax,ecx
 00742A1C    add         ecx,ecx
 00742A1E    add         ecx,ecx
 00742A20    add         ecx,ecx
 00742A22    add         edx,ecx
 00742A24    bt          dword ptr [eax],edx
>00742A27    jae         00742A5B
 00742A29    movzx       esi,bl
 00742A2C    mov         edx,esi
 00742A2E    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00742A33    mov         eax,dword ptr [eax]
 00742A35    call        TFXNet.GetPanel
 00742A3A    test        eax,eax
>00742A3C    je          00742A5B
 00742A3E    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 00742A43    mov         eax,dword ptr [eax]
 00742A45    mov         eax,dword ptr [eax+0D8]
 00742A4B    push        eax
 00742A4C    movzx       ecx,byte ptr [ebp-8]
 00742A50    movzx       edx,byte ptr [ebp-7]
 00742A54    mov         eax,esi
 00742A56    call        00742820
 00742A5B    inc         ebx
 00742A5C    cmp         bl,21
>00742A5F    jne         00742A03
 00742A61    mov         eax,dword ptr [ebp-4]
 00742A64    mov         eax,dword ptr [eax+3D0];TAddressReport.rbLoops:TRadioButton
 00742A6A    mov         edx,dword ptr [eax]
 00742A6C    call        dword ptr [edx+108];TRadioButton.GetChecked
 00742A72    test        al,al
>00742A74    je          00742B3D
 00742A7A    mov         byte ptr [ebp-5],1
 00742A7E    mov         eax,dword ptr [ebp-4]
 00742A81    movzx       edx,byte ptr [ebp-5]
 00742A85    movzx       edx,dl
 00742A88    bt          dword ptr [eax+461],edx;TAddressReport.SelectedLoops:?
>00742A8F    jae         00742B30
 00742A95    xor         ebx,ebx
 00742A97    movzx       edi,bl
 00742A9A    mov         edx,edi
 00742A9C    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00742AA1    mov         eax,dword ptr [eax]
 00742AA3    call        TFXNet.GetPanel
 00742AA8    test        eax,eax
>00742AAA    je          00742B26
 00742AAC    mov         edx,edi
 00742AAE    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00742AB3    mov         eax,dword ptr [eax]
 00742AB5    call        TFXNet.GetPanel
 00742ABA    mov         esi,eax
 00742ABC    mov         eax,dword ptr [esi+0C];TFXPanel.FXPPD:TFXPPD
 00742ABF    call        006A3430
 00742AC4    movzx       eax,al
 00742AC7    cmp         eax,0FF
>00742ACC    jbe         00742AD3
 00742ACE    call        @BoundErr
 00742AD3    push        eax
 00742AD4    mov         eax,dword ptr [esi+0C];TFXPanel.FXPPD:TFXPPD
 00742AD7    call        006A34B0
 00742ADC    movzx       edx,al
 00742ADF    cmp         edx,0FF
>00742AE5    jbe         00742AEC
 00742AE7    call        @BoundErr
 00742AEC    pop         eax
 00742AED    lea         ecx,[ebp-28]
 00742AF0    mov         ah,20
 00742AF2    call        @SetRange
 00742AF7    movzx       eax,byte ptr [ebp-5]
 00742AFB    movzx       eax,al
 00742AFE    bt          dword ptr [ebp-28],eax
>00742B02    jae         00742B26
 00742B04    movzx       eax,byte ptr [ebp-8]
 00742B08    push        eax
 00742B09    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 00742B0E    mov         eax,dword ptr [eax]
 00742B10    mov         eax,dword ptr [eax+0D8]
 00742B16    push        eax
 00742B17    movzx       ecx,byte ptr [ebp-7]
 00742B1B    movzx       edx,byte ptr [ebp-5]
 00742B1F    mov         eax,edi
 00742B21    call        007423A8
 00742B26    inc         ebx
 00742B27    cmp         bl,21
>00742B2A    jne         00742A97
 00742B30    inc         byte ptr [ebp-5]
 00742B33    cmp         byte ptr [ebp-5],0FB
>00742B37    jne         00742A7E
 00742B3D    mov         eax,dword ptr [ebp-4]
 00742B40    mov         eax,dword ptr [eax+3D4];TAddressReport.rbZones:TRadioButton
 00742B46    mov         edx,dword ptr [eax]
 00742B48    call        dword ptr [edx+108];TRadioButton.GetChecked
 00742B4E    test        al,al
>00742B50    je          00742C07
 00742B56    mov         byte ptr [ebp-6],0
 00742B5A    mov         eax,dword ptr [ebp-4]
 00742B5D    movzx       edx,byte ptr [ebp-6]
 00742B61    movzx       edx,dl
 00742B64    bt          dword ptr [eax+481],edx;TAddressReport.SelectedZones:?
>00742B6B    jae         00742BFA
 00742B71    movzx       edi,byte ptr [ebp-6]
 00742B75    mov         eax,dword ptr [ebp-4]
 00742B78    add         edi,dword ptr [eax+4A4];TAddressReport.SelectedZoneOffs:Integer
>00742B7E    jno         00742B85
 00742B80    call        @IntOver
 00742B85    cmp         edi,0FFFF
>00742B8B    jbe         00742B92
 00742B8D    call        @BoundErr
 00742B92    xor         ebx,ebx
 00742B94    movzx       esi,bl
 00742B97    mov         edx,esi
 00742B99    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00742B9E    mov         eax,dword ptr [eax]
 00742BA0    call        TFXNet.GetPanel
 00742BA5    test        eax,eax
>00742BA7    je          00742BF4
 00742BA9    mov         edx,esi
 00742BAB    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00742BB0    mov         eax,dword ptr [eax]
 00742BB2    call        TFXNet.GetPanel
 00742BB7    mov         esi,eax
 00742BB9    mov         eax,dword ptr [esi+0C];TFXPanel.FXPPD:TFXPPD
 00742BBC    cmp         di,word ptr [eax+123]
>00742BC3    jb          00742BF4
 00742BC5    mov         eax,dword ptr [esi+0C];TFXPanel.FXPPD:TFXPPD
 00742BC8    call        006A2DE4
 00742BCD    cmp         di,ax
>00742BD0    ja          00742BF4
 00742BD2    movzx       eax,byte ptr [ebp-8]
 00742BD6    push        eax
 00742BD7    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 00742BDC    mov         eax,dword ptr [eax]
 00742BDE    mov         eax,dword ptr [eax+0D8]
 00742BE4    push        eax
 00742BE5    movzx       ecx,byte ptr [ebp-7]
 00742BE9    movzx       edx,di
 00742BEC    movzx       eax,bl
 00742BEF    call        00741DC4
 00742BF4    inc         ebx
 00742BF5    cmp         bl,21
>00742BF8    jne         00742B94
 00742BFA    inc         byte ptr [ebp-6]
 00742BFD    cmp         byte ptr [ebp-6],0FA
>00742C01    jne         00742B5A
 00742C07    lea         eax,[ebp-2C]
 00742C0A    push        eax
 00742C0B    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 00742C10    mov         eax,dword ptr [eax]
 00742C12    mov         eax,dword ptr [eax+0D8]
 00742C18    mov         eax,dword ptr [eax+8]
 00742C1B    mov         dword ptr [ebp-34],eax
 00742C1E    mov         byte ptr [ebp-30],0
 00742C22    lea         edx,[ebp-34]
 00742C25    xor         ecx,ecx
 00742C27    mov         eax,[007C3E50];^'Found %d addresses'
 00742C2C    call        Format
 00742C31    mov         edx,dword ptr [ebp-2C]
 00742C34    mov         eax,dword ptr [ebp-4]
 00742C37    mov         eax,dword ptr [eax+42C];TAddressReport.lblFound:TLabel
 00742C3D    call        TControl.SetText
 00742C42    mov         edx,740C00;sub_00740C00
 00742C47    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 00742C4C    mov         eax,dword ptr [eax]
 00742C4E    mov         eax,dword ptr [eax+0D8]
 00742C54    call        TList.Sort
 00742C59    xor         edx,edx
 00742C5B    mov         eax,dword ptr [ebp-4]
 00742C5E    call        00742C88
 00742C63    xor         eax,eax
 00742C65    pop         edx
 00742C66    pop         ecx
 00742C67    pop         ecx
 00742C68    mov         dword ptr fs:[eax],edx
 00742C6B    push        742C80
 00742C70    lea         eax,[ebp-2C]
 00742C73    call        @UStrClr
 00742C78    ret
>00742C79    jmp         @HandleFinally
>00742C7E    jmp         00742C70
 00742C80    pop         edi
 00742C81    pop         esi
 00742C82    pop         ebx
 00742C83    mov         esp,ebp
 00742C85    pop         ebp
 00742C86    ret
*}
end;

//00742C88
procedure sub_00742C88;
begin
{*
 00742C88    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 00742C8D    mov         eax,dword ptr [eax]
 00742C8F    cmp         byte ptr [eax+5],0
>00742C93    jne         00742CB6
 00742C95    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 00742C9A    mov         eax,dword ptr [eax]
 00742C9C    call        TFXDocPrinter.ClearPreview
 00742CA1    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 00742CA6    mov         eax,dword ptr [eax]
 00742CA8    mov         eax,dword ptr [eax+0E0]
 00742CAE    mov         edx,dword ptr [eax]
 00742CB0    call        dword ptr [edx+0A8]
 00742CB6    ret
*}
end;

//00742CB8
{*function sub_00742CB8(?:TAddressReport):?;
begin
 00742CB8    push        ebx
 00742CB9    push        esi
 00742CBA    mov         esi,eax
 00742CBC    movzx       ebx,byte ptr ds:[742D70];0x0 gvar_00742D70
 00742CC3    mov         eax,dword ptr [esi+3F8];TAddressReport.cbPanelId:TCheckBox
 00742CC9    mov         edx,dword ptr [eax]
 00742CCB    call        dword ptr [edx+108];TCheckBox.GetChecked
 00742CD1    test        al,al
>00742CD3    je          00742CD8
 00742CD5    or          bl,1
 00742CD8    mov         eax,dword ptr [esi+3FC];TAddressReport.cbAddrId:TCheckBox
 00742CDE    mov         edx,dword ptr [eax]
 00742CE0    call        dword ptr [edx+108];TCheckBox.GetChecked
 00742CE6    test        al,al
>00742CE8    je          00742CED
 00742CEA    or          bl,2
 00742CED    mov         eax,dword ptr [esi+400];TAddressReport.cbZoneId:TCheckBox
 00742CF3    mov         edx,dword ptr [eax]
 00742CF5    call        dword ptr [edx+108];TCheckBox.GetChecked
 00742CFB    test        al,al
>00742CFD    je          00742D02
 00742CFF    or          bl,4
 00742D02    mov         eax,dword ptr [esi+404];TAddressReport.cbDeviceType:TCheckBox
 00742D08    mov         edx,dword ptr [eax]
 00742D0A    call        dword ptr [edx+108];TCheckBox.GetChecked
 00742D10    test        al,al
>00742D12    je          00742D17
 00742D14    or          bl,8
 00742D17    mov         eax,dword ptr [esi+408];TAddressReport.cbInputFunction:TCheckBox
 00742D1D    mov         edx,dword ptr [eax]
 00742D1F    call        dword ptr [edx+108];TCheckBox.GetChecked
 00742D25    test        al,al
>00742D27    je          00742D2C
 00742D29    or          bl,10
 00742D2C    mov         eax,dword ptr [esi+40C];TAddressReport.cbOutputFunction:TCheckBox
 00742D32    mov         edx,dword ptr [eax]
 00742D34    call        dword ptr [edx+108];TCheckBox.GetChecked
 00742D3A    test        al,al
>00742D3C    je          00742D41
 00742D3E    or          bl,20
 00742D41    mov         eax,dword ptr [esi+410];TAddressReport.cbText:TCheckBox
 00742D47    mov         edx,dword ptr [eax]
 00742D49    call        dword ptr [edx+108];TCheckBox.GetChecked
 00742D4F    test        al,al
>00742D51    je          00742D56
 00742D53    or          bl,40
 00742D56    mov         eax,dword ptr [esi+414];TAddressReport.cbTested:TCheckBox
 00742D5C    mov         edx,dword ptr [eax]
 00742D5E    call        dword ptr [edx+108];TCheckBox.GetChecked
 00742D64    test        al,al
>00742D66    je          00742D6B
 00742D68    or          bl,80
 00742D6B    mov         eax,ebx
 00742D6D    pop         esi
 00742D6E    pop         ebx
 00742D6F    ret
end;*}

Initialization
Finalization
//00742D74
{*
 00742D74    push        ebp
 00742D75    mov         ebp,esp
 00742D77    xor         eax,eax
 00742D79    push        ebp
 00742D7A    push        742DC3
 00742D7F    push        dword ptr fs:[eax]
 00742D82    mov         dword ptr fs:[eax],esp
 00742D85    inc         dword ptr ds:[902C94]
>00742D8B    jne         00742DB5
 00742D8D    mov         eax,7C3E44;^'Select panels'
 00742D92    call        @UStrClr
 00742D97    mov         eax,7C3E48;^'Select Loops'
 00742D9C    call        @UStrClr
 00742DA1    mov         eax,7C3E4C;^'Select Zones'
 00742DA6    call        @UStrClr
 00742DAB    mov         eax,7C3E50;^'Found %d addresses'
 00742DB0    call        @UStrClr
 00742DB5    xor         eax,eax
 00742DB7    pop         edx
 00742DB8    pop         ecx
 00742DB9    pop         ecx
 00742DBA    mov         dword ptr fs:[eax],edx
 00742DBD    push        742DCA
 00742DC2    ret
>00742DC3    jmp         @HandleFinally
>00742DC8    jmp         00742DC2
 00742DCA    pop         ebp
 00742DCB    ret
*}
end.