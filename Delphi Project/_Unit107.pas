//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit107;

interface

uses
  SysUtils, Classes, Vcl.StdCtrls, Vcl.StdActns, Vcl.ComCtrls, FXOverwriteDialog, FXEsaFileMerge, FXAboutFrames, Vcl.Samples.Spin, Vcl.Mask, Vcl.Grids, Vcl.ExtCtrls, Vcl.CheckLst, System.Generics.Defaults, System.Generics.Collections, Vcl.ImgList, Vcl.Menus, FXIniFiles, Vcl.Buttons, System.Generics.Collections, FXIOData, FXPanelData, FXNetData;

type
  TLcToSlcConversionErrorsDlg = class(TForm)
  published
    procedure FormCreate(Sender:TObject);//006D7494
    procedure FormShow(Sender:TObject);//006D7564
  public
    .Memo1:TMemo;//f3C0
  end;
  TFXPDFrame = class(TFrame)
  published
    PageControl1:TPageControl;//f2B0
    PanelInfoSheet:TTabSheet;//f2B4
    gbPanelFileName:TGroupBox;//f2B8
    lbPanelFileName:TLabel;//f2BC
    gbPanelDescription:TGroupBox;//f2C0
    memPanelDescription:TMemo;//f2C4
    gbShowLogo:TGroupBox;//f2C8
    cbShowLogo:TComboBox;//f2CC
    CommunicationSheet:TTabSheet;//f2D0
    gbRS232_0:TGroupBox;//f2D4
    cbRS2320Use:TComboBox;//f2D8
    lbRS2320Baud:TLabel;//f2DC
    cbRS2320BaudRate:TComboBox;//f2E0
    cbRS2320Monitored:TCheckBox;//f2E4
    cbRS2320RouterDep:TCheckBox;//f2E8
    lbRS2320Description:TLabel;//f2EC
    edRS2320Description:TEdit;//f2F0
    gbRS485_1:TGroupBox;//f2F4
    cbRS4851Use:TComboBox;//f2F8
    lbRS4851Baud:TLabel;//f2FC
    cbRS4851BaudRate:TComboBox;//f300
    cbRS4851Monitored:TCheckBox;//f304
    cbRS4851RouterDep:TCheckBox;//f308
    lbRS4851Description:TLabel;//f30C
    edRS4851Description:TEdit;//f310
    gbRS485_2:TGroupBox;//f314
    cbRS4852Use:TComboBox;//f318
    lbRS4852Baud:TLabel;//f31C
    cbRS4852BaudRate:TComboBox;//f320
    gbRS485_3:TGroupBox;//f324
    cbRS4853Use:TComboBox;//f328
    gbEthernet:TGroupBox;//f32C
    rbEthernetNotInUse:TRadioButton;//f330
    rbEthernetUseDHCP:TRadioButton;//f334
    rbEthernetStatic:TRadioButton;//f338
    lblPanelIpAddress:TLabel;//f33C
    medPanelIpAddress:TMaskEdit;//f340
    lblSubnetMask:TLabel;//f344
    medNetworkSubnetMask:TMaskEdit;//f348
    lblGatewayAddress:TLabel;//f34C
    medGatewayAddress:TMaskEdit;//f350
    IPSettingsPanel:TPanel;//f354
    rbAllowFireXpertConnection:TRadioButton;//f358
    rbAllowRemoteConfiguration:TRadioButton;//f35C
    IdentificationSheet:TTabSheet;//f360
    gbPanelID:TGroupBox;//f364
    speThisPanelID:TSpinEdit;//f368
    lbThisPanelID:TLabel;//f36C
    gbDetectionZones:TGroupBox;//f370
    lbFirstZoneID:TLabel;//f374
    lbNumOfZones:TLabel;//f378
    lbLastZoneID:TLabel;//f37C
    speFirstZoneID:TSpinEdit;//f380
    speNumOfZones:TSpinEdit;//f384
    edLastZoneID:TEdit;//f388
    cbRetainZoneIDs:TCheckBox;//f38C
    gbVisiblePanels:TGroupBox;//f390
    clVisiblePanels:TCheckListBox;//f394
    gbLastLocalCZ:TGroupBox;//f398
    lbLastLocalCZ:TLabel;//f39C
    speLastLocalCZ:TSpinEdit;//f3A0
    LCSheet:TTabSheet;//f3A4
    gbLC1:TGroupBox;//f3A8
    lbLC1Type:TLabel;//f3AC
    lbLC1FirstLoop:TLabel;//f3B0
    lbLC1NumOfLoops:TLabel;//f3B4
    lbLC1LastLoop:TLabel;//f3B8
    lbLC1StartDelay1:TLabel;//f3BC
    lbLC1StartDelay2:TLabel;//f3C0
    cbLC1Type:TComboBox;//f3C4
    speLC1FirstLoop:TSpinEdit;//f3C8
    edLC1NumOfLoops:TEdit;//f3CC
    edLC1LastLoop:TEdit;//f3D0
    speLC1StartDelay1:TSpinEdit;//f3D4
    speLC1StartDelay2:TSpinEdit;//f3D8
    gbLC2:TGroupBox;//f3DC
    lbLC2Type:TLabel;//f3E0
    lbLC2FirstLoop:TLabel;//f3E4
    lbLC2NumOfLoops:TLabel;//f3E8
    lbLC2LastLoop:TLabel;//f3EC
    lbLC2StartDelay1:TLabel;//f3F0
    lbLC2StartDelay2:TLabel;//f3F4
    cbLC2Type:TComboBox;//f3F8
    edLC2FirstLoop:TEdit;//f3FC
    edLC2NumOfLoops:TEdit;//f400
    edLC2LastLoop:TEdit;//f404
    speLC2StartDelay1:TSpinEdit;//f408
    speLC2StartDelay2:TSpinEdit;//f40C
    gbLC3:TGroupBox;//f410
    lbLC3Type:TLabel;//f414
    lbLC3FirstLoop:TLabel;//f418
    lbLC3NumOfLoops:TLabel;//f41C
    lbLC3LastLoop:TLabel;//f420
    lbLC3StartDelay1:TLabel;//f424
    lbLC3StartDelay2:TLabel;//f428
    cbLC3Type:TComboBox;//f42C
    edLC3FirstLoop:TEdit;//f430
    edLC3NumOfLoops:TEdit;//f434
    edLC3LastLoop:TEdit;//f438
    speLC3StartDelay1:TSpinEdit;//f43C
    speLC3StartDelay2:TSpinEdit;//f440
    gbLC4:TGroupBox;//f444
    lbLC4Type:TLabel;//f448
    lbLC4FirstLoop:TLabel;//f44C
    lbLC4NumOfLoops:TLabel;//f450
    lbLC4LastLoop:TLabel;//f454
    lbLC4StartDelay1:TLabel;//f458
    lbLC4StartDelay2:TLabel;//f45C
    cbLC4Type:TComboBox;//f460
    edLC4FirstLoop:TEdit;//f464
    edLC4NumOfLoops:TEdit;//f468
    edLC4LastLoop:TEdit;//f46C
    speLC4StartDelay1:TSpinEdit;//f470
    speLC4StartDelay2:TSpinEdit;//f474
    ControlOutputsSheet:TTabSheet;//f478
    gbFiredoorControl:TGroupBox;//f47C
    cbFDFireAlarm:TCheckBox;//f480
    cbFDPrewarning:TCheckBox;//f484
    cbFDAddressFault:TCheckBox;//f488
    cbFDAddressDisablement:TCheckBox;//f48C
    cbFDZoneDisablement:TCheckBox;//f490
    cbFDMainsOff:TCheckBox;//f494
    gbActivationOfSilencedAlarms:TGroupBox;//f498
    cbResoundOnNewAlarm:TCheckBox;//f49C
    gbDeactivateRouters:TGroupBox;//f4A0
    cbRouterOffAtSilence:TCheckBox;//f4A4
    MCSheet:TTabSheet;//f4A8
    gbMCIO:TGroupBox;//f4AC
    CCIGridMC:TStringGrid;//f4B0
    CCOGridMC:TStringGrid;//f4B4
    ADOGridMC:TStringGrid;//f4B8
    lbCCIMC:TLabel;//f4BC
    lbCCOMC:TLabel;//f4C0
    lbADOMC:TLabel;//f4C4
    IOCSheet:TTabSheet;//f4C8
    gbIOC:TGroupBox;//f4CC
    speCurrentIOC:TSpinEdit;//f4D0
    IOCTypeSelection:TComboBox;//f4D4
    CCIGrid:TStringGrid;//f4D8
    CCOGrid:TStringGrid;//f4DC
    ADOGrid:TStringGrid;//f4E0
    lbCCI:TLabel;//f4E4
    lbCCO:TLabel;//f4E8
    lbADO:TLabel;//f4EC
    CCIFunctionPopUpMenu:TPopupMenu;//f4F0
    Notused1:TMenuItem;//f4F4
    Technicalalarminput1:TMenuItem;//f4F8
    Silenttechnicalalarminput1:TMenuItem;//f4FC
    Faultwarninginput1:TMenuItem;//f500
    Faultinfirealarmrouter1:TMenuItem;//f504
    Faultinfaultwarningrouter1:TMenuItem;//f508
    Faultinextinguisher1:TMenuItem;//f50C
    Maintenancewarninginput1:TMenuItem;//f510
    Evacuationinput1:TMenuItem;//f514
    DayModeactivationinput1:TMenuItem;//f518
    DelayedAlarmenableinput1:TMenuItem;//f51C
    DayModeandDelayedAlarmenable1:TMenuItem;//f520
    GeneralSilenceinput1:TMenuItem;//f524
    GeneralResetinput1:TMenuItem;//f528
    Extinguisheractivatedinput1:TMenuItem;//f52C
    Smokeventilationactivatedinput1:TMenuItem;//f530
    Internallogicinput1:TMenuItem;//f534
    Externallogicinput1:TMenuItem;//f538
    ActivationofcustomerLED11:TMenuItem;//f53C
    ActivationofcustomerLED21:TMenuItem;//f540
    StartdelayT2fordelayedalarm1:TMenuItem;//f544
    Delayedalarmresetinput1:TMenuItem;//f548
    LocalDayModeactivationinput1:TMenuItem;//f54C
    LocalDelayedAlarmenableinput1:TMenuItem;//f550
    LocalDayModeandDelayedAlarmenable1:TMenuItem;//f554
    LocalAlarmDeviceDisableInput1:TMenuItem;//f558
    AlarmDeviceDisableInput1:TMenuItem;//f55C
    LocalEvacuationinput1:TMenuItem;//f560
    VoiceEvacuationfaultinput1:TMenuItem;//f564
    lbType:TLabel;//f568
    CCITypePopupMenu:TPopupMenu;//f56C
    NormallyOpenNO1:TMenuItem;//f570
    NormallyClosedNC1:TMenuItem;//f574
    CCOFunctionPopupMenu:TPopupMenu;//f578
    Notused2:TMenuItem;//f57C
    Firealarmoutput1:TMenuItem;//f580
    Delayedfirealarmoutput1:TMenuItem;//f584
    DelayedfirealarmT2output1:TMenuItem;//f588
    Firedooroutput1:TMenuItem;//f58C
    Extinguishercontroloutput1:TMenuItem;//f590
    Firealarmrouteroutput1:TMenuItem;//f594
    FirealarmrouteractivatedLEDoutput1:TMenuItem;//f598
    Faultwarningrouteroutput1:TMenuItem;//f59C
    Systemfirealarmrouteroutput1:TMenuItem;//f5A0
    Systemfaultwarningrouteroutput1:TMenuItem;//f5A4
    Prewarningoutput1:TMenuItem;//f5A8
    Faultwarningoutput1:TMenuItem;//f5AC
    Maintenancewarningoutput1:TMenuItem;//f5B0
    Disablementoutput1:TMenuItem;//f5B4
    Accessleveloutput1:TMenuItem;//f5B8
    Technicalalarmoutput1:TMenuItem;//f5BC
    Internallogicoutput1:TMenuItem;//f5C0
    Externallogicoutput1:TMenuItem;//f5C4
    ADOFunctionPopupMenu:TPopupMenu;//f5C8
    Notused3:TMenuItem;//f5CC
    Firealarmdevice1:TMenuItem;//f5D0
    Nonsilenceablealarmdevice1:TMenuItem;//f5D4
    Faultwarningdevice1:TMenuItem;//f5D8
    Systemwidefirealarmdevices1:TMenuItem;//f5DC
    Systemwidefaultwarningdevices1:TMenuItem;//f5E0
    ADOMonitoringPopupMenu:TPopupMenu;//f5E4
    Monitored1:TMenuItem;//f5E8
    Notmonitored1:TMenuItem;//f5EC
    DelaySheet:TTabSheet;//f5F0
    gbFXDelayedOutputs:TGroupBox;//f5F4
    gbDelayTimes:TGroupBox;//f5F8
    lbT1:TLabel;//f5FC
    lbT2:TLabel;//f600
    speFXDelayT1:TSpinEdit;//f604
    speFXDelayT2:TSpinEdit;//f608
    cbFireARDelayed:TCheckBox;//f60C
    gbFireAlarmDevices:TGroupBox;//f610
    cbZonFireADDelayed:TCheckBox;//f614
    cbGenFireADDelayed:TCheckBox;//f618
    cbFireCODelayed:TCheckBox;//f61C
    rgDelayTermination:TRadioGroup;//f620
    rgDelayTerminationND:TRadioGroup;//f624
    gbDelayIndication:TGroupBox;//f628
    cbDelayIndication:TCheckBox;//f62C
    PrintAndLogSheet:TTabSheet;//f630
    gbPrintAndLog:TGroupBox;//f634
    lbPrint:TLabel;//f638
    lbRecord:TLabel;//f63C
    lbFireEvents:TLabel;//f640
    lbPrewarningEvents:TLabel;//f644
    lbFaultEvents:TLabel;//f648
    lbDisablementEvents:TLabel;//f64C
    lbAccessEvents:TLabel;//f650
    lbIOEvents:TLabel;//f654
    lbStartupEvents:TLabel;//f658
    lbStatusUpdateEvents:TLabel;//f65C
    cbPrintFireAlarms:TCheckBox;//f660
    cbPrintPrewarnings:TCheckBox;//f664
    cbPrintFaultwarnings:TCheckBox;//f668
    cbPrintDisablements:TCheckBox;//f66C
    cbPrintAccesslevels:TCheckBox;//f670
    cbPrintIOChanges:TCheckBox;//f674
    cbPrintStartupEvents:TCheckBox;//f678
    cbPrintStatusUpdates:TCheckBox;//f67C
    cbLogFireAlarms:TCheckBox;//f680
    cbLogPrewarnings:TCheckBox;//f684
    cbLogFaultwarnings:TCheckBox;//f688
    cbLogDisablements:TCheckBox;//f68C
    cbLogAccesslevels:TCheckBox;//f690
    cbLogIOChanges:TCheckBox;//f694
    cbLogStartupEvents:TCheckBox;//f698
    cbLogStatusUpdates:TCheckBox;//f69C
    SpecialAlarmsSheet:TTabSheet;//f6A0
    gbOldCoincidence:TGroupBox;//f6A4
    lbOldCoincidence:TLabel;//f6A8
    lbCoincidenceAutoReset:TLabel;//f6AC
    cbOldCoincidence:TCheckBox;//f6B0
    speCoincidenceAutoReset:TSpinEdit;//f6B4
    gbSecondCoIncidence:TGroupBox;//f6B8
    lbSecondCoIncidence:TLabel;//f6BC
    rbSameZone:TRadioButton;//f6C0
    rbSamePanel:TRadioButton;//f6C4
    rgAlarmdisplay:TRadioGroup;//f6C8
    gbConfiguredPrealarm:TGroupBox;//f6CC
    cbPrealarmBlinkRate:TCheckBox;//f6D0
    PowerSupplySheet:TTabSheet;//f6D4
    gbBattPackMonitoring:TGroupBox;//f6D8
    cbBattPack1Monitored:TCheckBox;//f6DC
    cbBattPack2Monitored:TCheckBox;//f6E0
    cbBattPack3Monitored:TCheckBox;//f6E4
    cbBattPack4Monitored:TCheckBox;//f6E8
    gbMainsFaultDelay:TGroupBox;//f6EC
    lbMainsFaultDelay:TLabel;//f6F0
    cbMainsFaultDelay:TCheckBox;//f6F4
    speMainsFaultDelay:TSpinEdit;//f6F8
    MiscellaneousSheet:TTabSheet;//f6FC
    gbPanelLanguage:TGroupBox;//f700
    lbPrimaryLanguage:TLabel;//f704
    lbSecondaryLanguage:TLabel;//f708
    cbPrimaryLanguage:TComboBox;//f70C
    cbSecondaryLanguage:TComboBox;//f710
    gbServiceCodes:TGroupBox;//f714
    lbSCode1:TLabel;//f718
    lbSCode2:TLabel;//f71C
    lbSCode3:TLabel;//f720
    edServiceCode1:TMaskEdit;//f724
    edServiceCode2:TMaskEdit;//f728
    edServiceCode3:TMaskEdit;//f72C
    gbSummertime:TGroupBox;//f730
    cbSummertime:TCheckBox;//f734
    gbZoneDisableTime:TGroupBox;//f738
    speZoneDisableTime:TSpinEdit;//f73C
    lbHours:TLabel;//f740
    gbMaxAdoDisableTime:TGroupBox;//f744
    lbMinutes:TLabel;//f748
    speMaxAdoDisabTime:TSpinEdit;//f74C
    gbMultiCriteriaLevel6:TGroupBox;//f750
    cbIndSmokeDetDisabled:TCheckBox;//f754
    gbIndBuzzerMuted:TGroupBox;//f758
    cbIndBuzzerMuted:TCheckBox;//f75C
    gbMaintInterval:TGroupBox;//f760
    seMaintInterval:TSpinEdit;//f764
    edMaintInterval:TEdit;//f768
    btnCancel:TBitBtn;//f76C
    btnOK:TBitBtn;//f770
    N1:TMenuItem;//f774
    N2:TMenuItem;//f778
    N3:TMenuItem;//f77C
    N4:TMenuItem;//f780
    N5:TMenuItem;//f784
    ADOModePopupMenu:TPopupMenu;//f788
    AdoPulseddefbyjumper1:TMenuItem;//f78C
    AdoContinuous1:TMenuItem;//f790
    AdoPulsed1:TMenuItem;//f794
    AdoPhasedevacuation1:TMenuItem;//f798
    OutFunctionPopupMenu:TPopupMenu;//f79C
    miOutNotUsed:TMenuItem;//f7A0
    miOutFireAlarm:TMenuItem;//f7A4
    miOutDelFireAlarm:TMenuItem;//f7A8
    miOutDelFireAlarmT2:TMenuItem;//f7AC
    miOutFireDoor:TMenuItem;//f7B0
    miOutExtinguisher:TMenuItem;//f7B4
    miOutFARE:TMenuItem;//f7B8
    miOutFARELed:TMenuItem;//f7BC
    miOutFWRE:TMenuItem;//f7C0
    miOutSysFARE:TMenuItem;//f7C4
    miOutSysFWRE:TMenuItem;//f7C8
    miOutPrewarning:TMenuItem;//f7CC
    miOutFaultWarning:TMenuItem;//f7D0
    miOutMaintWarning:TMenuItem;//f7D4
    miOutDisablement:TMenuItem;//f7D8
    miOutAccessLevel:TMenuItem;//f7DC
    miOutTechAlarm:TMenuItem;//f7E0
    miOutInternalLogic:TMenuItem;//f7E4
    miOutExternalLogic:TMenuItem;//f7E8
    miOutFireAlarmDevice:TMenuItem;//f7EC
    miOutFireAlarmDeviceNS:TMenuItem;//f7F0
    miOutSysFAD:TMenuItem;//f7F4
    miOutFWD:TMenuItem;//f7F8
    miOutSysFWD:TMenuItem;//f7FC
    miOutVEActivate1:TMenuItem;//f800
    miOutVETest1:TMenuItem;//f804
    miOutLevel1Silencable:TMenuItem;//f808
    N10:TMenuItem;//f80C
    miOutGeneralReset:TMenuItem;//f810
    N6:TMenuItem;//f814
    N7:TMenuItem;//f818
    N8:TMenuItem;//f81C
    N9:TMenuItem;//f820
    gbSensorInputDisablement:TGroupBox;//f824
    rb1NotBySensorInputDisablement:TRadioButton;//f828
    rb2BySensorInputDisablement:TRadioButton;//f82C
    rb3TechAlarmFromDisabledInput:TRadioButton;//f830
    lbSensorInputDisablement:TLabel;//f834
    miDelAlarmEnabled:TMenuItem;//f838
    miFireRouterDisabledOutput:TMenuItem;//f83C
    miFaultRouterDisabledOutput:TMenuItem;//f840
    miOutMainSupplyFault:TMenuItem;//f844
    procedure OutFunctionPopupMenuClick(Sender:TObject);//006EA240
    procedure CCOGridMouseDown(Sender:TObject; Button:UITypes.TMouseButton; Shift:Classes.TShiftState; X:Integer; Y:Integer);//006EA338
    procedure CCIGridClick(Sender:TObject);//006E9D9C
    procedure CCIFunctionPopupMenuClick(Sender:TObject);//006E9F08
    procedure CCITypePopupMenuClick(Sender:TObject);//006E9FB0
    procedure CCOFunctionPopupMenuClick(Sender:TObject);//006EA550
    procedure ADOFunctionPopupMenuClick(Sender:TObject);//006EACE4
    procedure ADOModePopupMenuPopup(Sender:TObject);//006EAB60
    procedure ADOGridMouseDown(Sender:TObject; Button:UITypes.TMouseButton; Shift:Classes.TShiftState; X:Integer; Y:Integer);//006EA8F8
    procedure CCOSelectControlZones(Row:Integer; AllowOnlyGeneralOrLocal:Boolean);//006EA5F8
    procedure CCOGridClick(Sender:TObject);//006EA49C
    procedure speMainsFaultDelayChange(Sender:TObject);//006EBF58
    procedure cbSummertimeClick(Sender:TObject);//006EC414
    procedure cbMainsFaultDelayClick(Sender:TObject);//006EBF18
    procedure speMaxAdoDisabTimeChange(Sender:TObject);//006EC49C
    procedure rgAlarmdisplayClick(Sender:TObject);//006EBBDC
    procedure seMaintIntervalChange(Sender:TObject);//006EC564
    procedure IOGridKeyPress(Sender:TObject; var Key:Char);//006E9AE0
    procedure CCIGridMouseDown(Sender:TObject; Button:UITypes.TMouseButton; Shift:Classes.TShiftState; X:Integer; Y:Integer);//006E9C6C
    procedure IOCTypeSelectionChange(Sender:TObject);//006E999C
    procedure edMaintIntervalChange(Sender:TObject);//006EC5B4
    procedure speCurrentIOCChange(Sender:TObject);//006E98B0
    procedure ADOModePopupMenuClick(Sender:TObject);//006EAD8C
    procedure edRS4851DescriptionChange(Sender:TObject);//006E73F8
    procedure cbPrealarmBlinkRateClick(Sender:TObject);//006EBC24
    procedure edRS2320DescriptionChange(Sender:TObject);//006E7260
    procedure CCOGridSetEditText(Sender:TObject; ACol:Integer; Value:string; ARow:Integer);//006EA700
    procedure ADOGridSetEditText(Sender:TObject; ACol:Integer; Value:string; ARow:Integer);//006EB0E0
    procedure speCoincidenceAutoResetChange(Sender:TObject);//006EBB50
    procedure CleanUpAndHide;//006E44A4
    function VerifyCancelChanges:Boolean;//006E4508
    procedure Show(FXPanel:TFXPanel);//006E3F60
    procedure cbIndBuzzerMutedClick(Sender:TObject);//006EC524
    procedure rbIPApplicationsClick(Sender:TObject);//006E75E0
    procedure PageControl1Change(Sender:TObject);//006EC674
    procedure cbIndSmokeDetDisabledClick(Sender:TObject);//006EC4E4
    procedure ADOGridClick(Sender:TObject);//006EAAA8
    procedure ADOMonitoringPopupMenuClick(Sender:TObject);//006EAE34
    procedure ADOSelectControlZones(Row:Integer; AllowOnlyGeneralOrLocal:Boolean);//006EAFD8
    procedure cbBattPackMonitoredClick(Sender:TObject);//006EBEC0
    procedure medGatewayAddressExit(Sender:TObject);//006E7820
    procedure CCIGridSetEditText(Sender:TObject; ACol:Integer; Value:string; ARow:Integer);//006EA04C
    procedure medNetworkSubnetMaskExit(Sender:TObject);//006E771C
    procedure rbEthernetUsageClick(Sender:TObject);//006E759C
    procedure medPanelIpAddressExit(Sender:TObject);//006E761C
    procedure speZoneDisableTimeChange(Sender:TObject);//006EC454
    procedure cbRS4853UseChange(Sender:TObject);//006E7550
    procedure speThisPanelIDChange(Sender:TObject);//006E7B64
    procedure cbRS4852BaudRateChange(Sender:TObject);//006E7504
    procedure cbRS4851BaudRateChange(Sender:TObject);//006E736C
    procedure cbRS4852UseChange(Sender:TObject);//006E74B8
    procedure speLastLocalCZChange(Sender:TObject);//006E7D00
    procedure clVisiblePanelsClickCheck(Sender:TObject);//006E7F34
    procedure cbLCTypeChange(Sender:TObject);//006E8E10
    procedure cbRetainZoneIDsClick(Sender:TObject);//006E7EB8
    procedure speFirstZoneIDChange(Sender:TObject);//006E7D48
    procedure speNumOfZonesChange(Sender:TObject);//006E7E04
    procedure btnOKClick(Sender:TObject);//006E41E0
    procedure memPanelDescriptionChange(Sender:TObject);//006E6BB0
    procedure btnCancelClick(Sender:TObject);//006E4594
    procedure Translate(IniFile:TFXIniFile);//006DE5D4
    procedure Setup;//006E45B8
    procedure cbShowLogoChange(Sender:TObject);//006E6C68
    procedure cbRS4851UseChange(Sender:TObject);//006E7320
    procedure cbRS4851MonitoredClick(Sender:TObject);//006E73B8
    procedure cbRS2320BaudRateChange(Sender:TObject);//006E71D4
    procedure cbRS2320UseChange(Sender:TObject);//006E7188
    procedure cbRS2320MonitoredClick(Sender:TObject);//006E7220
    procedure speLC1FirstLoopChange(Sender:TObject);//006E91E8
    procedure cbPrintEventClick(Sender:TObject);//006EB9CC
    procedure cbPrimaryLanguageChange(Sender:TObject);//006EC1EC
    procedure cbLogEventClick(Sender:TObject);//006EB97C
    procedure rgDelayTerminationNDClick(Sender:TObject);//006EB5A0
    procedure cbDelayIndicationClick(Sender:TObject);//006EB5E8
    procedure cbSecondaryLanguageChange(Sender:TObject);//006EC234
    procedure cbOldCoincidenceClick(Sender:TObject);//006EBB10
    procedure rgCoincidenceDelClick(Sender:TObject);//006EBB98
    procedure edServiceCode3Change(Sender:TObject);//006EC38C
    procedure edServiceCode1Change(Sender:TObject);//006EC27C
    procedure edServiceCode2Change(Sender:TObject);//006EC304
    procedure cbRouterOffAtSilenceClick(Sender:TObject);//006E9870
    procedure speFXDelayT1Change(Sender:TObject);//006EB3C8
    procedure cbResoundOnNewAlarmClick(Sender:TObject);//006E9830
    procedure speLCStartDelayChange(Sender:TObject);//006E922C
    procedure FireDoorControlClick(Sender:TObject);//006E9690
    procedure speFXDelayT2Change(Sender:TObject);//006EB410
    procedure cbFireCODelayedClick(Sender:TObject);//006EB518
    procedure rgDelayTerminationClick(Sender:TObject);//006EB558
    procedure cbZonFireADDelayedClick(Sender:TObject);//006EB4D8
    procedure cbFireARDelayedClick(Sender:TObject);//006EB458
    procedure cbGenFireADDelayedClick(Sender:TObject);//006EB498
  public
    CurrentIOC:LongInt;//f848
    ActiveGrid:TStringGrid;//f84C
    FModified:Boolean;//f850
    FXIOModel:TFXPIO;//f854
    FXPDTmp:TFXPPD;//f858
    FXPan:TFXPanel;//f85C
  end;
    //procedure sub_006E3D1C(?:TComboBox; ?:?; ?:?);//006E3D1C
    //procedure sub_006E3E38(?:TComboBox; ?:?);//006E3E38
    //procedure sub_006E3ED4(?:TSpinEdit; ?:?; ?:?);//006E3ED4
    procedure sub_006E4DBC(?:TFXPDFrame; ?:Byte);//006E4DBC
    procedure sub_006E53D4(?:TFXPDFrame);//006E53D4
    procedure sub_006E58E0(?:TFXPDFrame);//006E58E0
    procedure sub_006E5E6C(?:TFXPDFrame);//006E5E6C
    procedure sub_006E6B2C(?:TFXPDFrame);//006E6B2C
    procedure sub_006E6CA4(?:TFXPDFrame);//006E6CA4
    procedure sub_006E792C(?:TFXPDFrame);//006E792C
    //function sub_006E7AE4(?:TFXPDFrame; ?:LongInt; ?:?):?;//006E7AE4
    //function sub_006E7FDC(?:TComboBox; ?:Byte):?;//006E7FDC
    procedure sub_006E8044(?:TFXPDFrame);//006E8044
    procedure sub_006E952C(?:TFXPDFrame);//006E952C
    //function sub_006E9934(?:TComboBox; ?:Byte):?;//006E9934
    procedure sub_006EB2A4(?:TFXPDFrame);//006EB2A4
    procedure sub_006EB628(?:TFXPDFrame);//006EB628
    procedure sub_006EBA1C(?:TFXPDFrame);//006EBA1C
    //procedure sub_006EBC64(?:?; ?:?);//006EBC64
    //procedure sub_006EBCF0(?:?);//006EBCF0
    //procedure sub_006EBD04(?:?);//006EBD04
    //procedure sub_006EBD18(?:?; ?:?);//006EBD18
    procedure sub_006EBE3C(?:TFXPDFrame);//006EBE3C
    procedure sub_006EBFA0(?:TFXPDFrame);//006EBFA0

implementation

{$R *.DFM}

//006D7494
procedure TLcToSlcConversionErrorsDlg.FormCreate(Sender:TObject);
begin
{*
 006D7494    push        ebp
 006D7495    mov         ebp,esp
 006D7497    add         esp,0FFFFFFF0
 006D749A    push        ebx
 006D749B    xor         ecx,ecx
 006D749D    mov         dword ptr [ebp-4],ecx
 006D74A0    mov         dword ptr [ebp-10],ecx
 006D74A3    mov         ebx,eax
 006D74A5    xor         eax,eax
 006D74A7    push        ebp
 006D74A8    push        6D7507
 006D74AD    push        dword ptr fs:[eax]
 006D74B0    mov         dword ptr fs:[eax],esp
 006D74B3    lea         eax,[ebp-4]
 006D74B6    push        eax
 006D74B7    lea         edx,[ebp-10]
 006D74BA    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 006D74BF    mov         eax,dword ptr [eax]
 006D74C1    call        005DDC74
 006D74C6    mov         eax,dword ptr [ebp-10]
 006D74C9    mov         dword ptr [ebp-0C],eax
 006D74CC    mov         byte ptr [ebp-8],11
 006D74D0    lea         edx,[ebp-0C]
 006D74D3    xor         ecx,ecx
 006D74D5    mov         eax,6D7520;'LC to SLC Conversion errors (%s)'
 006D74DA    call        Format
 006D74DF    mov         edx,dword ptr [ebp-4]
 006D74E2    mov         eax,ebx
 006D74E4    call        TControl.SetText
 006D74E9    xor         eax,eax
 006D74EB    pop         edx
 006D74EC    pop         ecx
 006D74ED    pop         ecx
 006D74EE    mov         dword ptr fs:[eax],edx
 006D74F1    push        6D750E
 006D74F6    lea         eax,[ebp-10]
 006D74F9    call        @UStrClr
 006D74FE    lea         eax,[ebp-4]
 006D7501    call        @UStrClr
 006D7506    ret
>006D7507    jmp         @HandleFinally
>006D750C    jmp         006D74F6
 006D750E    pop         ebx
 006D750F    mov         esp,ebp
 006D7511    pop         ebp
 006D7512    ret
*}
end;

//006D7564
procedure TLcToSlcConversionErrorsDlg.FormShow(Sender:TObject);
begin
{*
 006D7564    mov         edx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 006D756A    mov         edx,dword ptr [edx]
 006D756C    mov         edx,dword ptr [edx+14]
 006D756F    mov         eax,dword ptr [eax+3C0];TLcToSlcConversionErrorsDlg...Memo1:TMemo
 006D7575    mov         edx,dword ptr [edx+87670]
 006D757B    call        TMemo.SetLines
 006D7580    ret
*}
end;

//006DE5D4
procedure TFXPDFrame.Translate(IniFile:TFXIniFile);
begin
{*
 006DE5D4    push        ebp
 006DE5D5    mov         ebp,esp
 006DE5D7    mov         ecx,47
 006DE5DC    push        0
 006DE5DE    push        0
 006DE5E0    dec         ecx
>006DE5E1    jne         006DE5DC
 006DE5E3    push        ebx
 006DE5E4    mov         dword ptr [ebp-8],edx
 006DE5E7    mov         dword ptr [ebp-4],eax
 006DE5EA    xor         eax,eax
 006DE5EC    push        ebp
 006DE5ED    push        6E1DC3
 006DE5F2    push        dword ptr fs:[eax]
 006DE5F5    mov         dword ptr fs:[eax],esp
 006DE5F8    mov         edx,dword ptr ds:[7C4DB0];^gvar_007C2B9C
 006DE5FE    mov         edx,dword ptr [edx]
 006DE600    mov         eax,dword ptr [ebp-4]
 006DE603    mov         eax,dword ptr [eax+770];TFXPDFrame.btnOK:TBitBtn
 006DE609    call        TControl.SetText
 006DE60E    mov         edx,dword ptr ds:[7C4B54];^gvar_007C2BA0
 006DE614    mov         edx,dword ptr [edx]
 006DE616    mov         eax,dword ptr [ebp-4]
 006DE619    mov         eax,dword ptr [eax+76C];TFXPDFrame.btnCancel:TBitBtn
 006DE61F    call        TControl.SetText
 006DE624    mov         edx,dword ptr ds:[7C4618];^gvar_007C2C0C
 006DE62A    mov         edx,dword ptr [edx]
 006DE62C    mov         eax,dword ptr [ebp-4]
 006DE62F    mov         eax,dword ptr [eax+2B4];TFXPDFrame.PanelInfoSheet:TTabSheet
 006DE635    call        TControl.SetText
 006DE63A    mov         edx,dword ptr ds:[7C470C];^gvar_007C2C10
 006DE640    mov         edx,dword ptr [edx]
 006DE642    mov         eax,dword ptr [ebp-4]
 006DE645    mov         eax,dword ptr [eax+2B8];TFXPDFrame.gbPanelFileName:TGroupBox
 006DE64B    call        TControl.SetText
 006DE650    mov         edx,dword ptr ds:[7C4A28];^gvar_007C2C14
 006DE656    mov         edx,dword ptr [edx]
 006DE658    mov         eax,dword ptr [ebp-4]
 006DE65B    mov         eax,dword ptr [eax+2C0];TFXPDFrame.gbPanelDescription:TGroupBox
 006DE661    call        TControl.SetText
 006DE666    mov         edx,dword ptr ds:[7C4A74];^gvar_007C2C18
 006DE66C    mov         edx,dword ptr [edx]
 006DE66E    mov         eax,dword ptr [ebp-4]
 006DE671    mov         eax,dword ptr [eax+2C8];TFXPDFrame.gbShowLogo:TGroupBox
 006DE677    call        TControl.SetText
 006DE67C    mov         ecx,dword ptr ds:[7C4C7C];^gvar_007C2C1C
 006DE682    mov         ecx,dword ptr [ecx]
 006DE684    mov         eax,dword ptr [ebp-4]
 006DE687    mov         eax,dword ptr [eax+2CC];TFXPDFrame.cbShowLogo:TComboBox
 006DE68D    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DE693    xor         edx,edx
 006DE695    mov         ebx,dword ptr [eax]
 006DE697    call        dword ptr [ebx+20];TStrings.Put
 006DE69A    mov         edx,dword ptr ds:[7C45B8];^gvar_007C2C20
 006DE6A0    mov         edx,dword ptr [edx]
 006DE6A2    mov         eax,dword ptr [ebp-4]
 006DE6A5    mov         eax,dword ptr [eax+2D0];TFXPDFrame.CommunicationSheet:TTabSheet
 006DE6AB    call        TControl.SetText
 006DE6B0    mov         edx,dword ptr ds:[7C433C];^gvar_007C2C24
 006DE6B6    mov         edx,dword ptr [edx]
 006DE6B8    mov         eax,dword ptr [ebp-4]
 006DE6BB    mov         eax,dword ptr [eax+2D4];TFXPDFrame.gbRS232_0:TGroupBox
 006DE6C1    call        TControl.SetText
 006DE6C6    mov         eax,dword ptr [ebp-4]
 006DE6C9    mov         eax,dword ptr [eax+2D8];TFXPDFrame.cbRS2320Use:TComboBox
 006DE6CF    mov         edx,dword ptr [eax]
 006DE6D1    call        dword ptr [edx+108];TComboBox.GetItemIndex
 006DE6D7    mov         dword ptr [ebp-0C],eax
 006DE6DA    mov         ecx,dword ptr ds:[7C47B4];^gvar_00901E84:UnicodeString
 006DE6E0    mov         ecx,dword ptr [ecx]
 006DE6E2    mov         eax,dword ptr [ebp-4]
 006DE6E5    mov         eax,dword ptr [eax+2D8];TFXPDFrame.cbRS2320Use:TComboBox
 006DE6EB    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DE6F1    xor         edx,edx
 006DE6F3    mov         ebx,dword ptr [eax]
 006DE6F5    call        dword ptr [ebx+20];TStrings.Put
 006DE6F8    mov         ecx,dword ptr ds:[7C47B4];^gvar_00901E84:UnicodeString
 006DE6FE    mov         ecx,dword ptr [ecx+4]
 006DE701    mov         eax,dword ptr [ebp-4]
 006DE704    mov         eax,dword ptr [eax+2D8];TFXPDFrame.cbRS2320Use:TComboBox
 006DE70A    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DE710    mov         edx,1
 006DE715    mov         ebx,dword ptr [eax]
 006DE717    call        dword ptr [ebx+20];TStrings.Put
 006DE71A    mov         ecx,dword ptr ds:[7C47B4];^gvar_00901E84:UnicodeString
 006DE720    mov         ecx,dword ptr [ecx+8]
 006DE723    mov         eax,dword ptr [ebp-4]
 006DE726    mov         eax,dword ptr [eax+2D8];TFXPDFrame.cbRS2320Use:TComboBox
 006DE72C    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DE732    mov         edx,2
 006DE737    mov         ebx,dword ptr [eax]
 006DE739    call        dword ptr [ebx+20];TStrings.Put
 006DE73C    mov         edx,dword ptr [ebp-0C]
 006DE73F    mov         eax,dword ptr [ebp-4]
 006DE742    mov         eax,dword ptr [eax+2D8];TFXPDFrame.cbRS2320Use:TComboBox
 006DE748    mov         ecx,dword ptr [eax]
 006DE74A    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 006DE750    mov         edx,dword ptr ds:[7C418C];^gvar_007C2C28
 006DE756    mov         edx,dword ptr [edx]
 006DE758    mov         eax,dword ptr [ebp-4]
 006DE75B    mov         eax,dword ptr [eax+2E4];TFXPDFrame.cbRS2320Monitored:TCheckBox
 006DE761    call        TControl.SetText
 006DE766    mov         edx,dword ptr ds:[7C4E88];^gvar_007C2C2C
 006DE76C    mov         edx,dword ptr [edx]
 006DE76E    mov         eax,dword ptr [ebp-4]
 006DE771    mov         eax,dword ptr [eax+2E8];TFXPDFrame.cbRS2320RouterDep:TCheckBox
 006DE777    call        TControl.SetText
 006DE77C    mov         edx,dword ptr ds:[7C4554];^gvar_007C2C30
 006DE782    mov         edx,dword ptr [edx]
 006DE784    mov         eax,dword ptr [ebp-4]
 006DE787    mov         eax,dword ptr [eax+2DC];TFXPDFrame.lbRS2320Baud:TLabel
 006DE78D    call        TControl.SetText
 006DE792    mov         edx,dword ptr ds:[7C46B8];^gvar_007C2C34
 006DE798    mov         edx,dword ptr [edx]
 006DE79A    mov         eax,dword ptr [ebp-4]
 006DE79D    mov         eax,dword ptr [eax+2EC];TFXPDFrame.lbRS2320Description:TLabel
 006DE7A3    call        TControl.SetText
 006DE7A8    mov         edx,dword ptr ds:[7C4B74];^gvar_007C2C38
 006DE7AE    mov         edx,dword ptr [edx]
 006DE7B0    mov         eax,dword ptr [ebp-4]
 006DE7B3    mov         eax,dword ptr [eax+2F4];TFXPDFrame.gbRS485_1:TGroupBox
 006DE7B9    call        TControl.SetText
 006DE7BE    mov         eax,dword ptr [ebp-4]
 006DE7C1    mov         eax,dword ptr [eax+2F8];TFXPDFrame.cbRS4851Use:TComboBox
 006DE7C7    mov         edx,dword ptr [eax]
 006DE7C9    call        dword ptr [edx+108];TComboBox.GetItemIndex
 006DE7CF    mov         dword ptr [ebp-0C],eax
 006DE7D2    mov         ecx,dword ptr ds:[7C4230];^gvar_00901E90:UnicodeString
 006DE7D8    mov         ecx,dword ptr [ecx]
 006DE7DA    mov         eax,dword ptr [ebp-4]
 006DE7DD    mov         eax,dword ptr [eax+2F8];TFXPDFrame.cbRS4851Use:TComboBox
 006DE7E3    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DE7E9    xor         edx,edx
 006DE7EB    mov         ebx,dword ptr [eax]
 006DE7ED    call        dword ptr [ebx+20];TStrings.Put
 006DE7F0    mov         ecx,dword ptr ds:[7C4230];^gvar_00901E90:UnicodeString
 006DE7F6    mov         ecx,dword ptr [ecx+4]
 006DE7F9    mov         eax,dword ptr [ebp-4]
 006DE7FC    mov         eax,dword ptr [eax+2F8];TFXPDFrame.cbRS4851Use:TComboBox
 006DE802    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DE808    mov         edx,1
 006DE80D    mov         ebx,dword ptr [eax]
 006DE80F    call        dword ptr [ebx+20];TStrings.Put
 006DE812    mov         edx,dword ptr [ebp-0C]
 006DE815    mov         eax,dword ptr [ebp-4]
 006DE818    mov         eax,dword ptr [eax+2F8];TFXPDFrame.cbRS4851Use:TComboBox
 006DE81E    mov         ecx,dword ptr [eax]
 006DE820    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 006DE826    mov         edx,dword ptr ds:[7C49D4];^gvar_007C2C3C
 006DE82C    mov         edx,dword ptr [edx]
 006DE82E    mov         eax,dword ptr [ebp-4]
 006DE831    mov         eax,dword ptr [eax+304];TFXPDFrame.cbRS4851Monitored:TCheckBox
 006DE837    call        TControl.SetText
 006DE83C    mov         edx,dword ptr ds:[7C4940];^gvar_007C2C40
 006DE842    mov         edx,dword ptr [edx]
 006DE844    mov         eax,dword ptr [ebp-4]
 006DE847    mov         eax,dword ptr [eax+308];TFXPDFrame.cbRS4851RouterDep:TCheckBox
 006DE84D    call        TControl.SetText
 006DE852    mov         edx,dword ptr ds:[7C4D8C];^gvar_007C2C44
 006DE858    mov         edx,dword ptr [edx]
 006DE85A    mov         eax,dword ptr [ebp-4]
 006DE85D    mov         eax,dword ptr [eax+2FC];TFXPDFrame.lbRS4851Baud:TLabel
 006DE863    call        TControl.SetText
 006DE868    mov         edx,dword ptr ds:[7C4F1C];^gvar_007C2C48
 006DE86E    mov         edx,dword ptr [edx]
 006DE870    mov         eax,dword ptr [ebp-4]
 006DE873    mov         eax,dword ptr [eax+30C];TFXPDFrame.lbRS4851Description:TLabel
 006DE879    call        TControl.SetText
 006DE87E    mov         edx,dword ptr ds:[7C4BF8];^gvar_007C2C4C
 006DE884    mov         edx,dword ptr [edx]
 006DE886    mov         eax,dword ptr [ebp-4]
 006DE889    mov         eax,dword ptr [eax+314];TFXPDFrame.gbRS485_2:TGroupBox
 006DE88F    call        TControl.SetText
 006DE894    mov         eax,dword ptr [ebp-4]
 006DE897    mov         eax,dword ptr [eax+318];TFXPDFrame.cbRS4852Use:TComboBox
 006DE89D    mov         edx,dword ptr [eax]
 006DE89F    call        dword ptr [edx+108];TComboBox.GetItemIndex
 006DE8A5    mov         dword ptr [ebp-0C],eax
 006DE8A8    mov         ecx,dword ptr ds:[7C42D8];^gvar_00901E98:UnicodeString
 006DE8AE    mov         ecx,dword ptr [ecx]
 006DE8B0    mov         eax,dword ptr [ebp-4]
 006DE8B3    mov         eax,dword ptr [eax+318];TFXPDFrame.cbRS4852Use:TComboBox
 006DE8B9    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DE8BF    xor         edx,edx
 006DE8C1    mov         ebx,dword ptr [eax]
 006DE8C3    call        dword ptr [ebx+20];TStrings.Put
 006DE8C6    mov         ecx,dword ptr ds:[7C42D8];^gvar_00901E98:UnicodeString
 006DE8CC    mov         ecx,dword ptr [ecx+4]
 006DE8CF    mov         eax,dword ptr [ebp-4]
 006DE8D2    mov         eax,dword ptr [eax+318];TFXPDFrame.cbRS4852Use:TComboBox
 006DE8D8    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DE8DE    mov         edx,1
 006DE8E3    mov         ebx,dword ptr [eax]
 006DE8E5    call        dword ptr [ebx+20];TStrings.Put
 006DE8E8    mov         edx,dword ptr [ebp-0C]
 006DE8EB    mov         eax,dword ptr [ebp-4]
 006DE8EE    mov         eax,dword ptr [eax+318];TFXPDFrame.cbRS4852Use:TComboBox
 006DE8F4    mov         ecx,dword ptr [eax]
 006DE8F6    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 006DE8FC    mov         edx,dword ptr ds:[7C4E20];^gvar_007C2C50
 006DE902    mov         edx,dword ptr [edx]
 006DE904    mov         eax,dword ptr [ebp-4]
 006DE907    mov         eax,dword ptr [eax+31C];TFXPDFrame.lbRS4852Baud:TLabel
 006DE90D    call        TControl.SetText
 006DE912    mov         edx,dword ptr ds:[7C477C];^gvar_007C2C54
 006DE918    mov         edx,dword ptr [edx]
 006DE91A    mov         eax,dword ptr [ebp-4]
 006DE91D    mov         eax,dword ptr [eax+324];TFXPDFrame.gbRS485_3:TGroupBox
 006DE923    call        TControl.SetText
 006DE928    mov         eax,dword ptr [ebp-4]
 006DE92B    mov         eax,dword ptr [eax+328];TFXPDFrame.cbRS4853Use:TComboBox
 006DE931    mov         edx,dword ptr [eax]
 006DE933    call        dword ptr [edx+108];TComboBox.GetItemIndex
 006DE939    mov         dword ptr [ebp-0C],eax
 006DE93C    mov         ecx,dword ptr ds:[7C4BE4];^gvar_00901EA0:UnicodeString
 006DE942    mov         ecx,dword ptr [ecx]
 006DE944    mov         eax,dword ptr [ebp-4]
 006DE947    mov         eax,dword ptr [eax+328];TFXPDFrame.cbRS4853Use:TComboBox
 006DE94D    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DE953    xor         edx,edx
 006DE955    mov         ebx,dword ptr [eax]
 006DE957    call        dword ptr [ebx+20];TStrings.Put
 006DE95A    mov         ecx,dword ptr ds:[7C4BE4];^gvar_00901EA0:UnicodeString
 006DE960    mov         ecx,dword ptr [ecx+4]
 006DE963    mov         eax,dword ptr [ebp-4]
 006DE966    mov         eax,dword ptr [eax+328];TFXPDFrame.cbRS4853Use:TComboBox
 006DE96C    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DE972    mov         edx,1
 006DE977    mov         ebx,dword ptr [eax]
 006DE979    call        dword ptr [ebx+20];TStrings.Put
 006DE97C    mov         edx,dword ptr [ebp-0C]
 006DE97F    mov         eax,dword ptr [ebp-4]
 006DE982    mov         eax,dword ptr [eax+328];TFXPDFrame.cbRS4853Use:TComboBox
 006DE988    mov         ecx,dword ptr [eax]
 006DE98A    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 006DE990    mov         edx,dword ptr ds:[7C4D88];^gvar_007C2C58
 006DE996    mov         edx,dword ptr [edx]
 006DE998    mov         eax,dword ptr [ebp-4]
 006DE99B    mov         eax,dword ptr [eax+32C];TFXPDFrame.gbEthernet:TGroupBox
 006DE9A1    call        TControl.SetText
 006DE9A6    mov         edx,dword ptr ds:[7C4A44];^gvar_007C2C5C
 006DE9AC    mov         edx,dword ptr [edx]
 006DE9AE    mov         eax,dword ptr [ebp-4]
 006DE9B1    mov         eax,dword ptr [eax+330];TFXPDFrame.rbEthernetNotInUse:TRadioButton
 006DE9B7    call        TControl.SetText
 006DE9BC    mov         edx,dword ptr ds:[7C4258];^gvar_007C2C60
 006DE9C2    mov         edx,dword ptr [edx]
 006DE9C4    mov         eax,dword ptr [ebp-4]
 006DE9C7    mov         eax,dword ptr [eax+334];TFXPDFrame.rbEthernetUseDHCP:TRadioButton
 006DE9CD    call        TControl.SetText
 006DE9D2    mov         edx,dword ptr ds:[7C48E0];^gvar_007C2C64
 006DE9D8    mov         edx,dword ptr [edx]
 006DE9DA    mov         eax,dword ptr [ebp-4]
 006DE9DD    mov         eax,dword ptr [eax+338];TFXPDFrame.rbEthernetStatic:TRadioButton
 006DE9E3    call        TControl.SetText
 006DE9E8    mov         edx,dword ptr ds:[7C4708];^gvar_007C2C68
 006DE9EE    mov         edx,dword ptr [edx]
 006DE9F0    mov         eax,dword ptr [ebp-4]
 006DE9F3    mov         eax,dword ptr [eax+33C];TFXPDFrame.lblPanelIpAddress:TLabel
 006DE9F9    call        TControl.SetText
 006DE9FE    mov         edx,dword ptr ds:[7C4AE0];^gvar_007C2C6C
 006DEA04    mov         edx,dword ptr [edx]
 006DEA06    mov         eax,dword ptr [ebp-4]
 006DEA09    mov         eax,dword ptr [eax+344];TFXPDFrame.lblSubnetMask:TLabel
 006DEA0F    call        TControl.SetText
 006DEA14    mov         edx,dword ptr ds:[7C4824];^gvar_007C2C70
 006DEA1A    mov         edx,dword ptr [edx]
 006DEA1C    mov         eax,dword ptr [ebp-4]
 006DEA1F    mov         eax,dword ptr [eax+34C];TFXPDFrame.lblGatewayAddress:TLabel
 006DEA25    call        TControl.SetText
 006DEA2A    mov         edx,dword ptr ds:[7C4644];^gvar_007C2C88
 006DEA30    mov         edx,dword ptr [edx]
 006DEA32    mov         eax,dword ptr [ebp-4]
 006DEA35    mov         eax,dword ptr [eax+358];TFXPDFrame.rbAllowFireXpertConnection:TRadioButton
 006DEA3B    call        TControl.SetText
 006DEA40    mov         edx,dword ptr ds:[7C43A0];^gvar_007C2C8C
 006DEA46    mov         edx,dword ptr [edx]
 006DEA48    mov         eax,dword ptr [ebp-4]
 006DEA4B    mov         eax,dword ptr [eax+35C];TFXPDFrame.rbAllowRemoteConfiguration:TRadioButton
 006DEA51    call        TControl.SetText
 006DEA56    mov         edx,dword ptr ds:[7C490C];^gvar_007C2C90
 006DEA5C    mov         edx,dword ptr [edx]
 006DEA5E    mov         eax,dword ptr [ebp-4]
 006DEA61    mov         eax,dword ptr [eax+360];TFXPDFrame.IdentificationSheet:TTabSheet
 006DEA67    call        TControl.SetText
 006DEA6C    mov         edx,dword ptr ds:[7C4DDC];^gvar_007C2C94
 006DEA72    mov         edx,dword ptr [edx]
 006DEA74    mov         eax,dword ptr [ebp-4]
 006DEA77    mov         eax,dword ptr [eax+364];TFXPDFrame.gbPanelID:TGroupBox
 006DEA7D    call        TControl.SetText
 006DEA82    mov         edx,dword ptr ds:[7C4788];^gvar_007C2C98
 006DEA88    mov         edx,dword ptr [edx]
 006DEA8A    mov         eax,dword ptr [ebp-4]
 006DEA8D    mov         eax,dword ptr [eax+36C];TFXPDFrame.lbThisPanelID:TLabel
 006DEA93    call        TControl.SetText
 006DEA98    mov         edx,dword ptr ds:[7C4310];^gvar_007C2C9C
 006DEA9E    mov         edx,dword ptr [edx]
 006DEAA0    mov         eax,dword ptr [ebp-4]
 006DEAA3    mov         eax,dword ptr [eax+370];TFXPDFrame.gbDetectionZones:TGroupBox
 006DEAA9    call        TControl.SetText
 006DEAAE    mov         edx,dword ptr ds:[7C4374];^gvar_007C2CA0
 006DEAB4    mov         edx,dword ptr [edx]
 006DEAB6    mov         eax,dword ptr [ebp-4]
 006DEAB9    mov         eax,dword ptr [eax+374];TFXPDFrame.lbFirstZoneID:TLabel
 006DEABF    call        TControl.SetText
 006DEAC4    mov         edx,dword ptr ds:[7C4C48];^gvar_007C2CA4
 006DEACA    mov         edx,dword ptr [edx]
 006DEACC    mov         eax,dword ptr [ebp-4]
 006DEACF    mov         eax,dword ptr [eax+378];TFXPDFrame.lbNumOfZones:TLabel
 006DEAD5    call        TControl.SetText
 006DEADA    mov         edx,dword ptr ds:[7C4588];^gvar_007C2CA8
 006DEAE0    mov         edx,dword ptr [edx]
 006DEAE2    mov         eax,dword ptr [ebp-4]
 006DEAE5    mov         eax,dword ptr [eax+37C];TFXPDFrame.lbLastZoneID:TLabel
 006DEAEB    call        TControl.SetText
 006DEAF0    mov         edx,dword ptr ds:[7C4A88];^gvar_007C2CAC
 006DEAF6    mov         edx,dword ptr [edx]
 006DEAF8    mov         eax,dword ptr [ebp-4]
 006DEAFB    mov         eax,dword ptr [eax+38C];TFXPDFrame.cbRetainZoneIDs:TCheckBox
 006DEB01    call        TControl.SetText
 006DEB06    mov         edx,dword ptr ds:[7C4560];^gvar_007C2CB4
 006DEB0C    mov         edx,dword ptr [edx]
 006DEB0E    mov         eax,dword ptr [ebp-4]
 006DEB11    mov         eax,dword ptr [eax+398];TFXPDFrame.gbLastLocalCZ:TGroupBox
 006DEB17    call        TControl.SetText
 006DEB1C    mov         edx,dword ptr ds:[7C4704];^gvar_007C2CB8
 006DEB22    mov         edx,dword ptr [edx]
 006DEB24    mov         eax,dword ptr [ebp-4]
 006DEB27    mov         eax,dword ptr [eax+39C];TFXPDFrame.lbLastLocalCZ:TLabel
 006DEB2D    call        TControl.SetText
 006DEB32    mov         edx,dword ptr ds:[7C4970];^gvar_007C2CBC
 006DEB38    mov         edx,dword ptr [edx]
 006DEB3A    mov         eax,dword ptr [ebp-4]
 006DEB3D    mov         eax,dword ptr [eax+390];TFXPDFrame.gbVisiblePanels:TGroupBox
 006DEB43    call        TControl.SetText
 006DEB48    mov         edx,dword ptr ds:[7C4314];^gvar_007C2CC0
 006DEB4E    mov         edx,dword ptr [edx]
 006DEB50    mov         eax,dword ptr [ebp-4]
 006DEB53    mov         eax,dword ptr [eax+3A4];TFXPDFrame.LCSheet:TTabSheet
 006DEB59    call        TControl.SetText
 006DEB5E    mov         edx,dword ptr ds:[7C44DC];^gvar_007C2CC4
 006DEB64    mov         edx,dword ptr [edx]
 006DEB66    mov         eax,dword ptr [ebp-4]
 006DEB69    mov         eax,dword ptr [eax+3A8];TFXPDFrame.gbLC1:TGroupBox
 006DEB6F    call        TControl.SetText
 006DEB74    mov         edx,dword ptr ds:[7C4A40];^gvar_007C2CD4
 006DEB7A    mov         edx,dword ptr [edx]
 006DEB7C    mov         eax,dword ptr [ebp-4]
 006DEB7F    mov         eax,dword ptr [eax+3AC];TFXPDFrame.lbLC1Type:TLabel
 006DEB85    call        TControl.SetText
 006DEB8A    mov         eax,dword ptr [ebp-4]
 006DEB8D    mov         eax,dword ptr [eax+3C4];TFXPDFrame.cbLC1Type:TComboBox
 006DEB93    mov         edx,dword ptr [eax]
 006DEB95    call        dword ptr [edx+108];TComboBox.GetItemIndex
 006DEB9B    mov         dword ptr [ebp-0C],eax
 006DEB9E    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DEBA4    mov         ecx,dword ptr [ecx]
 006DEBA6    mov         eax,dword ptr [ebp-4]
 006DEBA9    mov         eax,dword ptr [eax+3C4];TFXPDFrame.cbLC1Type:TComboBox
 006DEBAF    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DEBB5    xor         edx,edx
 006DEBB7    mov         ebx,dword ptr [eax]
 006DEBB9    call        dword ptr [ebx+20];TStrings.Put
 006DEBBC    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DEBC2    mov         ecx,dword ptr [ecx+4]
 006DEBC5    mov         eax,dword ptr [ebp-4]
 006DEBC8    mov         eax,dword ptr [eax+3C4];TFXPDFrame.cbLC1Type:TComboBox
 006DEBCE    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DEBD4    mov         edx,1
 006DEBD9    mov         ebx,dword ptr [eax]
 006DEBDB    call        dword ptr [ebx+20];TStrings.Put
 006DEBDE    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DEBE4    mov         ecx,dword ptr [ecx+8]
 006DEBE7    mov         eax,dword ptr [ebp-4]
 006DEBEA    mov         eax,dword ptr [eax+3C4];TFXPDFrame.cbLC1Type:TComboBox
 006DEBF0    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DEBF6    mov         edx,2
 006DEBFB    mov         ebx,dword ptr [eax]
 006DEBFD    call        dword ptr [ebx+20];TStrings.Put
 006DEC00    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DEC06    mov         ecx,dword ptr [ecx+0C]
 006DEC09    mov         eax,dword ptr [ebp-4]
 006DEC0C    mov         eax,dword ptr [eax+3C4];TFXPDFrame.cbLC1Type:TComboBox
 006DEC12    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DEC18    mov         edx,3
 006DEC1D    mov         ebx,dword ptr [eax]
 006DEC1F    call        dword ptr [ebx+20];TStrings.Put
 006DEC22    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DEC28    mov         ecx,dword ptr [ecx+10]
 006DEC2B    mov         eax,dword ptr [ebp-4]
 006DEC2E    mov         eax,dword ptr [eax+3C4];TFXPDFrame.cbLC1Type:TComboBox
 006DEC34    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DEC3A    mov         edx,4
 006DEC3F    mov         ebx,dword ptr [eax]
 006DEC41    call        dword ptr [ebx+20];TStrings.Put
 006DEC44    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DEC4A    mov         ecx,dword ptr [ecx+14]
 006DEC4D    mov         eax,dword ptr [ebp-4]
 006DEC50    mov         eax,dword ptr [eax+3C4];TFXPDFrame.cbLC1Type:TComboBox
 006DEC56    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DEC5C    mov         edx,5
 006DEC61    mov         ebx,dword ptr [eax]
 006DEC63    call        dword ptr [ebx+20];TStrings.Put
 006DEC66    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DEC6C    mov         ecx,dword ptr [ecx+18]
 006DEC6F    mov         eax,dword ptr [ebp-4]
 006DEC72    mov         eax,dword ptr [eax+3C4];TFXPDFrame.cbLC1Type:TComboBox
 006DEC78    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DEC7E    mov         edx,6
 006DEC83    mov         ebx,dword ptr [eax]
 006DEC85    call        dword ptr [ebx+20];TStrings.Put
 006DEC88    mov         edx,dword ptr [ebp-0C]
 006DEC8B    mov         eax,dword ptr [ebp-4]
 006DEC8E    mov         eax,dword ptr [eax+3C4];TFXPDFrame.cbLC1Type:TComboBox
 006DEC94    mov         ecx,dword ptr [eax]
 006DEC96    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 006DEC9C    mov         edx,dword ptr ds:[7C4408];^gvar_007C2CD8
 006DECA2    mov         edx,dword ptr [edx]
 006DECA4    mov         eax,dword ptr [ebp-4]
 006DECA7    mov         eax,dword ptr [eax+3B0];TFXPDFrame.lbLC1FirstLoop:TLabel
 006DECAD    call        TControl.SetText
 006DECB2    mov         edx,dword ptr ds:[7C48F0];^gvar_007C2CDC
 006DECB8    mov         edx,dword ptr [edx]
 006DECBA    mov         eax,dword ptr [ebp-4]
 006DECBD    mov         eax,dword ptr [eax+3B4];TFXPDFrame.lbLC1NumOfLoops:TLabel
 006DECC3    call        TControl.SetText
 006DECC8    mov         edx,dword ptr ds:[7C4650];^gvar_007C2CE0
 006DECCE    mov         edx,dword ptr [edx]
 006DECD0    mov         eax,dword ptr [ebp-4]
 006DECD3    mov         eax,dword ptr [eax+3B8];TFXPDFrame.lbLC1LastLoop:TLabel
 006DECD9    call        TControl.SetText
 006DECDE    mov         edx,dword ptr ds:[7C455C];^gvar_007C2CC8
 006DECE4    mov         edx,dword ptr [edx]
 006DECE6    mov         eax,dword ptr [ebp-4]
 006DECE9    mov         eax,dword ptr [eax+3DC];TFXPDFrame.gbLC2:TGroupBox
 006DECEF    call        TControl.SetText
 006DECF4    mov         edx,dword ptr ds:[7C4A40];^gvar_007C2CD4
 006DECFA    mov         edx,dword ptr [edx]
 006DECFC    mov         eax,dword ptr [ebp-4]
 006DECFF    mov         eax,dword ptr [eax+3E0];TFXPDFrame.lbLC2Type:TLabel
 006DED05    call        TControl.SetText
 006DED0A    mov         eax,dword ptr [ebp-4]
 006DED0D    mov         eax,dword ptr [eax+3F8];TFXPDFrame.cbLC2Type:TComboBox
 006DED13    mov         edx,dword ptr [eax]
 006DED15    call        dword ptr [edx+108];TComboBox.GetItemIndex
 006DED1B    mov         dword ptr [ebp-0C],eax
 006DED1E    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DED24    mov         ecx,dword ptr [ecx]
 006DED26    mov         eax,dword ptr [ebp-4]
 006DED29    mov         eax,dword ptr [eax+3F8];TFXPDFrame.cbLC2Type:TComboBox
 006DED2F    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DED35    xor         edx,edx
 006DED37    mov         ebx,dword ptr [eax]
 006DED39    call        dword ptr [ebx+20];TStrings.Put
 006DED3C    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DED42    mov         ecx,dword ptr [ecx+4]
 006DED45    mov         eax,dword ptr [ebp-4]
 006DED48    mov         eax,dword ptr [eax+3F8];TFXPDFrame.cbLC2Type:TComboBox
 006DED4E    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DED54    mov         edx,1
 006DED59    mov         ebx,dword ptr [eax]
 006DED5B    call        dword ptr [ebx+20];TStrings.Put
 006DED5E    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DED64    mov         ecx,dword ptr [ecx+8]
 006DED67    mov         eax,dword ptr [ebp-4]
 006DED6A    mov         eax,dword ptr [eax+3F8];TFXPDFrame.cbLC2Type:TComboBox
 006DED70    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DED76    mov         edx,2
 006DED7B    mov         ebx,dword ptr [eax]
 006DED7D    call        dword ptr [ebx+20];TStrings.Put
 006DED80    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DED86    mov         ecx,dword ptr [ecx+0C]
 006DED89    mov         eax,dword ptr [ebp-4]
 006DED8C    mov         eax,dword ptr [eax+3F8];TFXPDFrame.cbLC2Type:TComboBox
 006DED92    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DED98    mov         edx,3
 006DED9D    mov         ebx,dword ptr [eax]
 006DED9F    call        dword ptr [ebx+20];TStrings.Put
 006DEDA2    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DEDA8    mov         ecx,dword ptr [ecx+10]
 006DEDAB    mov         eax,dword ptr [ebp-4]
 006DEDAE    mov         eax,dword ptr [eax+3F8];TFXPDFrame.cbLC2Type:TComboBox
 006DEDB4    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DEDBA    mov         edx,4
 006DEDBF    mov         ebx,dword ptr [eax]
 006DEDC1    call        dword ptr [ebx+20];TStrings.Put
 006DEDC4    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DEDCA    mov         ecx,dword ptr [ecx+14]
 006DEDCD    mov         eax,dword ptr [ebp-4]
 006DEDD0    mov         eax,dword ptr [eax+3F8];TFXPDFrame.cbLC2Type:TComboBox
 006DEDD6    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DEDDC    mov         edx,5
 006DEDE1    mov         ebx,dword ptr [eax]
 006DEDE3    call        dword ptr [ebx+20];TStrings.Put
 006DEDE6    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DEDEC    mov         ecx,dword ptr [ecx+18]
 006DEDEF    mov         eax,dword ptr [ebp-4]
 006DEDF2    mov         eax,dword ptr [eax+3F8];TFXPDFrame.cbLC2Type:TComboBox
 006DEDF8    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DEDFE    mov         edx,6
 006DEE03    mov         ebx,dword ptr [eax]
 006DEE05    call        dword ptr [ebx+20];TStrings.Put
 006DEE08    mov         edx,dword ptr [ebp-0C]
 006DEE0B    mov         eax,dword ptr [ebp-4]
 006DEE0E    mov         eax,dword ptr [eax+3F8];TFXPDFrame.cbLC2Type:TComboBox
 006DEE14    mov         ecx,dword ptr [eax]
 006DEE16    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 006DEE1C    mov         edx,dword ptr ds:[7C4408];^gvar_007C2CD8
 006DEE22    mov         edx,dword ptr [edx]
 006DEE24    mov         eax,dword ptr [ebp-4]
 006DEE27    mov         eax,dword ptr [eax+3E4];TFXPDFrame.lbLC2FirstLoop:TLabel
 006DEE2D    call        TControl.SetText
 006DEE32    mov         edx,dword ptr ds:[7C48F0];^gvar_007C2CDC
 006DEE38    mov         edx,dword ptr [edx]
 006DEE3A    mov         eax,dword ptr [ebp-4]
 006DEE3D    mov         eax,dword ptr [eax+3E8];TFXPDFrame.lbLC2NumOfLoops:TLabel
 006DEE43    call        TControl.SetText
 006DEE48    mov         edx,dword ptr ds:[7C4650];^gvar_007C2CE0
 006DEE4E    mov         edx,dword ptr [edx]
 006DEE50    mov         eax,dword ptr [ebp-4]
 006DEE53    mov         eax,dword ptr [eax+3EC];TFXPDFrame.lbLC2LastLoop:TLabel
 006DEE59    call        TControl.SetText
 006DEE5E    mov         edx,dword ptr ds:[7C4E84];^gvar_007C2CCC
 006DEE64    mov         edx,dword ptr [edx]
 006DEE66    mov         eax,dword ptr [ebp-4]
 006DEE69    mov         eax,dword ptr [eax+410];TFXPDFrame.gbLC3:TGroupBox
 006DEE6F    call        TControl.SetText
 006DEE74    mov         edx,dword ptr ds:[7C4A40];^gvar_007C2CD4
 006DEE7A    mov         edx,dword ptr [edx]
 006DEE7C    mov         eax,dword ptr [ebp-4]
 006DEE7F    mov         eax,dword ptr [eax+414];TFXPDFrame.lbLC3Type:TLabel
 006DEE85    call        TControl.SetText
 006DEE8A    mov         eax,dword ptr [ebp-4]
 006DEE8D    mov         eax,dword ptr [eax+42C];TFXPDFrame.cbLC3Type:TComboBox
 006DEE93    mov         edx,dword ptr [eax]
 006DEE95    call        dword ptr [edx+108];TComboBox.GetItemIndex
 006DEE9B    mov         dword ptr [ebp-0C],eax
 006DEE9E    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DEEA4    mov         ecx,dword ptr [ecx]
 006DEEA6    mov         eax,dword ptr [ebp-4]
 006DEEA9    mov         eax,dword ptr [eax+42C];TFXPDFrame.cbLC3Type:TComboBox
 006DEEAF    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DEEB5    xor         edx,edx
 006DEEB7    mov         ebx,dword ptr [eax]
 006DEEB9    call        dword ptr [ebx+20];TStrings.Put
 006DEEBC    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DEEC2    mov         ecx,dword ptr [ecx+4]
 006DEEC5    mov         eax,dword ptr [ebp-4]
 006DEEC8    mov         eax,dword ptr [eax+42C];TFXPDFrame.cbLC3Type:TComboBox
 006DEECE    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DEED4    mov         edx,1
 006DEED9    mov         ebx,dword ptr [eax]
 006DEEDB    call        dword ptr [ebx+20];TStrings.Put
 006DEEDE    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DEEE4    mov         ecx,dword ptr [ecx+8]
 006DEEE7    mov         eax,dword ptr [ebp-4]
 006DEEEA    mov         eax,dword ptr [eax+42C];TFXPDFrame.cbLC3Type:TComboBox
 006DEEF0    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DEEF6    mov         edx,2
 006DEEFB    mov         ebx,dword ptr [eax]
 006DEEFD    call        dword ptr [ebx+20];TStrings.Put
 006DEF00    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DEF06    mov         ecx,dword ptr [ecx+0C]
 006DEF09    mov         eax,dword ptr [ebp-4]
 006DEF0C    mov         eax,dword ptr [eax+42C];TFXPDFrame.cbLC3Type:TComboBox
 006DEF12    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DEF18    mov         edx,3
 006DEF1D    mov         ebx,dword ptr [eax]
 006DEF1F    call        dword ptr [ebx+20];TStrings.Put
 006DEF22    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DEF28    mov         ecx,dword ptr [ecx+10]
 006DEF2B    mov         eax,dword ptr [ebp-4]
 006DEF2E    mov         eax,dword ptr [eax+42C];TFXPDFrame.cbLC3Type:TComboBox
 006DEF34    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DEF3A    mov         edx,4
 006DEF3F    mov         ebx,dword ptr [eax]
 006DEF41    call        dword ptr [ebx+20];TStrings.Put
 006DEF44    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DEF4A    mov         ecx,dword ptr [ecx+14]
 006DEF4D    mov         eax,dword ptr [ebp-4]
 006DEF50    mov         eax,dword ptr [eax+42C];TFXPDFrame.cbLC3Type:TComboBox
 006DEF56    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DEF5C    mov         edx,5
 006DEF61    mov         ebx,dword ptr [eax]
 006DEF63    call        dword ptr [ebx+20];TStrings.Put
 006DEF66    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DEF6C    mov         ecx,dword ptr [ecx+18]
 006DEF6F    mov         eax,dword ptr [ebp-4]
 006DEF72    mov         eax,dword ptr [eax+42C];TFXPDFrame.cbLC3Type:TComboBox
 006DEF78    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DEF7E    mov         edx,6
 006DEF83    mov         ebx,dword ptr [eax]
 006DEF85    call        dword ptr [ebx+20];TStrings.Put
 006DEF88    mov         edx,dword ptr [ebp-0C]
 006DEF8B    mov         eax,dword ptr [ebp-4]
 006DEF8E    mov         eax,dword ptr [eax+42C];TFXPDFrame.cbLC3Type:TComboBox
 006DEF94    mov         ecx,dword ptr [eax]
 006DEF96    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 006DEF9C    mov         edx,dword ptr ds:[7C4408];^gvar_007C2CD8
 006DEFA2    mov         edx,dword ptr [edx]
 006DEFA4    mov         eax,dword ptr [ebp-4]
 006DEFA7    mov         eax,dword ptr [eax+418];TFXPDFrame.lbLC3FirstLoop:TLabel
 006DEFAD    call        TControl.SetText
 006DEFB2    mov         edx,dword ptr ds:[7C48F0];^gvar_007C2CDC
 006DEFB8    mov         edx,dword ptr [edx]
 006DEFBA    mov         eax,dword ptr [ebp-4]
 006DEFBD    mov         eax,dword ptr [eax+41C];TFXPDFrame.lbLC3NumOfLoops:TLabel
 006DEFC3    call        TControl.SetText
 006DEFC8    mov         edx,dword ptr ds:[7C4650];^gvar_007C2CE0
 006DEFCE    mov         edx,dword ptr [edx]
 006DEFD0    mov         eax,dword ptr [ebp-4]
 006DEFD3    mov         eax,dword ptr [eax+420];TFXPDFrame.lbLC3LastLoop:TLabel
 006DEFD9    call        TControl.SetText
 006DEFDE    mov         edx,dword ptr ds:[7C4B3C];^gvar_007C2CD0
 006DEFE4    mov         edx,dword ptr [edx]
 006DEFE6    mov         eax,dword ptr [ebp-4]
 006DEFE9    mov         eax,dword ptr [eax+444];TFXPDFrame.gbLC4:TGroupBox
 006DEFEF    call        TControl.SetText
 006DEFF4    mov         edx,dword ptr ds:[7C4A40];^gvar_007C2CD4
 006DEFFA    mov         edx,dword ptr [edx]
 006DEFFC    mov         eax,dword ptr [ebp-4]
 006DEFFF    mov         eax,dword ptr [eax+448];TFXPDFrame.lbLC4Type:TLabel
 006DF005    call        TControl.SetText
 006DF00A    mov         eax,dword ptr [ebp-4]
 006DF00D    mov         eax,dword ptr [eax+460];TFXPDFrame.cbLC4Type:TComboBox
 006DF013    mov         edx,dword ptr [eax]
 006DF015    call        dword ptr [edx+108];TComboBox.GetItemIndex
 006DF01B    mov         dword ptr [ebp-0C],eax
 006DF01E    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DF024    mov         ecx,dword ptr [ecx]
 006DF026    mov         eax,dword ptr [ebp-4]
 006DF029    mov         eax,dword ptr [eax+460];TFXPDFrame.cbLC4Type:TComboBox
 006DF02F    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DF035    xor         edx,edx
 006DF037    mov         ebx,dword ptr [eax]
 006DF039    call        dword ptr [ebx+20];TStrings.Put
 006DF03C    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DF042    mov         ecx,dword ptr [ecx+4]
 006DF045    mov         eax,dword ptr [ebp-4]
 006DF048    mov         eax,dword ptr [eax+460];TFXPDFrame.cbLC4Type:TComboBox
 006DF04E    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DF054    mov         edx,1
 006DF059    mov         ebx,dword ptr [eax]
 006DF05B    call        dword ptr [ebx+20];TStrings.Put
 006DF05E    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DF064    mov         ecx,dword ptr [ecx+8]
 006DF067    mov         eax,dword ptr [ebp-4]
 006DF06A    mov         eax,dword ptr [eax+460];TFXPDFrame.cbLC4Type:TComboBox
 006DF070    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DF076    mov         edx,2
 006DF07B    mov         ebx,dword ptr [eax]
 006DF07D    call        dword ptr [ebx+20];TStrings.Put
 006DF080    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DF086    mov         ecx,dword ptr [ecx+0C]
 006DF089    mov         eax,dword ptr [ebp-4]
 006DF08C    mov         eax,dword ptr [eax+460];TFXPDFrame.cbLC4Type:TComboBox
 006DF092    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DF098    mov         edx,3
 006DF09D    mov         ebx,dword ptr [eax]
 006DF09F    call        dword ptr [ebx+20];TStrings.Put
 006DF0A2    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DF0A8    mov         ecx,dword ptr [ecx+10]
 006DF0AB    mov         eax,dword ptr [ebp-4]
 006DF0AE    mov         eax,dword ptr [eax+460];TFXPDFrame.cbLC4Type:TComboBox
 006DF0B4    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DF0BA    mov         edx,4
 006DF0BF    mov         ebx,dword ptr [eax]
 006DF0C1    call        dword ptr [ebx+20];TStrings.Put
 006DF0C4    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DF0CA    mov         ecx,dword ptr [ecx+14]
 006DF0CD    mov         eax,dword ptr [ebp-4]
 006DF0D0    mov         eax,dword ptr [eax+460];TFXPDFrame.cbLC4Type:TComboBox
 006DF0D6    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DF0DC    mov         edx,5
 006DF0E1    mov         ebx,dword ptr [eax]
 006DF0E3    call        dword ptr [ebx+20];TStrings.Put
 006DF0E6    mov         ecx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006DF0EC    mov         ecx,dword ptr [ecx+18]
 006DF0EF    mov         eax,dword ptr [ebp-4]
 006DF0F2    mov         eax,dword ptr [eax+460];TFXPDFrame.cbLC4Type:TComboBox
 006DF0F8    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006DF0FE    mov         edx,6
 006DF103    mov         ebx,dword ptr [eax]
 006DF105    call        dword ptr [ebx+20];TStrings.Put
 006DF108    mov         edx,dword ptr [ebp-0C]
 006DF10B    mov         eax,dword ptr [ebp-4]
 006DF10E    mov         eax,dword ptr [eax+460];TFXPDFrame.cbLC4Type:TComboBox
 006DF114    mov         ecx,dword ptr [eax]
 006DF116    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 006DF11C    mov         edx,dword ptr ds:[7C4408];^gvar_007C2CD8
 006DF122    mov         edx,dword ptr [edx]
 006DF124    mov         eax,dword ptr [ebp-4]
 006DF127    mov         eax,dword ptr [eax+44C];TFXPDFrame.lbLC4FirstLoop:TLabel
 006DF12D    call        TControl.SetText
 006DF132    mov         edx,dword ptr ds:[7C48F0];^gvar_007C2CDC
 006DF138    mov         edx,dword ptr [edx]
 006DF13A    mov         eax,dword ptr [ebp-4]
 006DF13D    mov         eax,dword ptr [eax+450];TFXPDFrame.lbLC4NumOfLoops:TLabel
 006DF143    call        TControl.SetText
 006DF148    mov         edx,dword ptr ds:[7C4650];^gvar_007C2CE0
 006DF14E    mov         edx,dword ptr [edx]
 006DF150    mov         eax,dword ptr [ebp-4]
 006DF153    mov         eax,dword ptr [eax+454];TFXPDFrame.lbLC4LastLoop:TLabel
 006DF159    call        TControl.SetText
 006DF15E    mov         edx,dword ptr ds:[7C439C];^gvar_007C2CE8
 006DF164    mov         edx,dword ptr [edx]
 006DF166    mov         eax,dword ptr [ebp-4]
 006DF169    mov         eax,dword ptr [eax+478];TFXPDFrame.ControlOutputsSheet:TTabSheet
 006DF16F    call        TControl.SetText
 006DF174    mov         edx,dword ptr ds:[7C4D40];^gvar_007C2CEC
 006DF17A    mov         edx,dword ptr [edx]
 006DF17C    mov         eax,dword ptr [ebp-4]
 006DF17F    mov         eax,dword ptr [eax+47C];TFXPDFrame.gbFiredoorControl:TGroupBox
 006DF185    call        TControl.SetText
 006DF18A    mov         edx,dword ptr ds:[7C4D5C];^gvar_007C2CF0
 006DF190    mov         edx,dword ptr [edx]
 006DF192    mov         eax,dword ptr [ebp-4]
 006DF195    mov         eax,dword ptr [eax+480];TFXPDFrame.cbFDFireAlarm:TCheckBox
 006DF19B    call        TControl.SetText
 006DF1A0    mov         edx,dword ptr ds:[7C44BC];^gvar_007C2CF4
 006DF1A6    mov         edx,dword ptr [edx]
 006DF1A8    mov         eax,dword ptr [ebp-4]
 006DF1AB    mov         eax,dword ptr [eax+484];TFXPDFrame.cbFDPrewarning:TCheckBox
 006DF1B1    call        TControl.SetText
 006DF1B6    mov         edx,dword ptr ds:[7C4174];^gvar_007C2CF8
 006DF1BC    mov         edx,dword ptr [edx]
 006DF1BE    mov         eax,dword ptr [ebp-4]
 006DF1C1    mov         eax,dword ptr [eax+488];TFXPDFrame.cbFDAddressFault:TCheckBox
 006DF1C7    call        TControl.SetText
 006DF1CC    mov         edx,dword ptr ds:[7C4934];^gvar_007C2CFC
 006DF1D2    mov         edx,dword ptr [edx]
 006DF1D4    mov         eax,dword ptr [ebp-4]
 006DF1D7    mov         eax,dword ptr [eax+48C];TFXPDFrame.cbFDAddressDisablement:TCheckBox
 006DF1DD    call        TControl.SetText
 006DF1E2    mov         edx,dword ptr ds:[7C4834];^gvar_007C2D00
 006DF1E8    mov         edx,dword ptr [edx]
 006DF1EA    mov         eax,dword ptr [ebp-4]
 006DF1ED    mov         eax,dword ptr [eax+490];TFXPDFrame.cbFDZoneDisablement:TCheckBox
 006DF1F3    call        TControl.SetText
 006DF1F8    mov         edx,dword ptr ds:[7C46B4];^gvar_007C2D04
 006DF1FE    mov         edx,dword ptr [edx]
 006DF200    mov         eax,dword ptr [ebp-4]
 006DF203    mov         eax,dword ptr [eax+494];TFXPDFrame.cbFDMainsOff:TCheckBox
 006DF209    call        TControl.SetText
 006DF20E    mov         edx,dword ptr ds:[7C48CC];^gvar_007C2D08
 006DF214    mov         edx,dword ptr [edx]
 006DF216    mov         eax,dword ptr [ebp-4]
 006DF219    mov         eax,dword ptr [eax+824];TFXPDFrame.gbSensorInputDisablement:TGroupBox
 006DF21F    call        TControl.SetText
 006DF224    mov         edx,dword ptr ds:[7C4A3C];^gvar_007C2D0C
 006DF22A    mov         edx,dword ptr [edx]
 006DF22C    mov         eax,dword ptr [ebp-4]
 006DF22F    mov         eax,dword ptr [eax+834];TFXPDFrame.lbSensorInputDisablement:TLabel
 006DF235    call        TControl.SetText
 006DF23A    mov         edx,dword ptr ds:[7C4268];^gvar_007C2D10
 006DF240    mov         edx,dword ptr [edx]
 006DF242    mov         eax,dword ptr [ebp-4]
 006DF245    mov         eax,dword ptr [eax+828];TFXPDFrame.rb1NotBySensorInputDisablement:TRadioButton
 006DF24B    call        TControl.SetText
 006DF250    mov         edx,dword ptr ds:[7C4B90];^gvar_007C2D14
 006DF256    mov         edx,dword ptr [edx]
 006DF258    mov         eax,dword ptr [ebp-4]
 006DF25B    mov         eax,dword ptr [eax+82C];TFXPDFrame.rb2BySensorInputDisablement:TRadioButton
 006DF261    call        TControl.SetText
 006DF266    mov         edx,dword ptr ds:[7C430C];^gvar_007C2D18
 006DF26C    mov         edx,dword ptr [edx]
 006DF26E    mov         eax,dword ptr [ebp-4]
 006DF271    mov         eax,dword ptr [eax+830];TFXPDFrame.rb3TechAlarmFromDisabledInput:TRadioButton
 006DF277    call        TControl.SetText
 006DF27C    mov         edx,dword ptr ds:[7C487C];^gvar_007C2D1C
 006DF282    mov         edx,dword ptr [edx]
 006DF284    mov         eax,dword ptr [ebp-4]
 006DF287    mov         eax,dword ptr [eax+498];TFXPDFrame.gbActivationOfSilencedAlarms:TGroupBox
 006DF28D    call        TControl.SetText
 006DF292    mov         edx,dword ptr ds:[7C4160];^gvar_007C2D20
 006DF298    mov         edx,dword ptr [edx]
 006DF29A    mov         eax,dword ptr [ebp-4]
 006DF29D    mov         eax,dword ptr [eax+49C];TFXPDFrame.cbResoundOnNewAlarm:TCheckBox
 006DF2A3    call        TControl.SetText
 006DF2A8    mov         edx,dword ptr ds:[7C4CF0];^gvar_007C2D24
 006DF2AE    mov         edx,dword ptr [edx]
 006DF2B0    mov         eax,dword ptr [ebp-4]
 006DF2B3    mov         eax,dword ptr [eax+4A0];TFXPDFrame.gbDeactivateRouters:TGroupBox
 006DF2B9    call        TControl.SetText
 006DF2BE    mov         edx,dword ptr ds:[7C448C];^gvar_007C2D28
 006DF2C4    mov         edx,dword ptr [edx]
 006DF2C6    mov         eax,dword ptr [ebp-4]
 006DF2C9    mov         eax,dword ptr [eax+4A4];TFXPDFrame.cbRouterOffAtSilence:TCheckBox
 006DF2CF    call        TControl.SetText
 006DF2D4    mov         edx,dword ptr ds:[7C43EC];^gvar_007C2E34
 006DF2DA    mov         edx,dword ptr [edx]
 006DF2DC    mov         eax,dword ptr [ebp-4]
 006DF2DF    mov         eax,dword ptr [eax+4A8];TFXPDFrame.MCSheet:TTabSheet
 006DF2E5    call        TControl.SetText
 006DF2EA    mov         edx,dword ptr ds:[7C49E8];^gvar_007C2E38
 006DF2F0    mov         edx,dword ptr [edx]
 006DF2F2    mov         eax,dword ptr [ebp-4]
 006DF2F5    mov         eax,dword ptr [eax+4AC];TFXPDFrame.gbMCIO:TGroupBox
 006DF2FB    call        TControl.SetText
 006DF300    mov         edx,dword ptr ds:[7C45D4];^gvar_007C2E3C
 006DF306    mov         edx,dword ptr [edx]
 006DF308    mov         eax,dword ptr [ebp-4]
 006DF30B    mov         eax,dword ptr [eax+4BC];TFXPDFrame.lbCCIMC:TLabel
 006DF311    call        TControl.SetText
 006DF316    mov         edx,dword ptr ds:[7C4D64];^gvar_007C2E40
 006DF31C    mov         edx,dword ptr [edx]
 006DF31E    mov         eax,dword ptr [ebp-4]
 006DF321    mov         eax,dword ptr [eax+4C0];TFXPDFrame.lbCCOMC:TLabel
 006DF327    call        TControl.SetText
 006DF32C    mov         edx,dword ptr ds:[7C43DC];^gvar_007C2E44
 006DF332    mov         edx,dword ptr [edx]
 006DF334    mov         eax,dword ptr [ebp-4]
 006DF337    mov         eax,dword ptr [eax+4C4];TFXPDFrame.lbADOMC:TLabel
 006DF33D    call        TControl.SetText
 006DF342    mov         edx,dword ptr ds:[7C4170];^gvar_007C2E48
 006DF348    mov         edx,dword ptr [edx]
 006DF34A    mov         eax,dword ptr [ebp-4]
 006DF34D    mov         eax,dword ptr [eax+4C8];TFXPDFrame.IOCSheet:TTabSheet
 006DF353    call        TControl.SetText
 006DF358    mov         edx,dword ptr ds:[7C4668];^gvar_007C2E4C
 006DF35E    mov         edx,dword ptr [edx]
 006DF360    mov         eax,dword ptr [ebp-4]
 006DF363    mov         eax,dword ptr [eax+4CC];TFXPDFrame.gbIOC:TGroupBox
 006DF369    call        TControl.SetText
 006DF36E    mov         edx,dword ptr ds:[7C4E2C];^gvar_007C2E50
 006DF374    mov         edx,dword ptr [edx]
 006DF376    mov         eax,dword ptr [ebp-4]
 006DF379    mov         eax,dword ptr [eax+568];TFXPDFrame.lbType:TLabel
 006DF37F    call        TControl.SetText
 006DF384    push        6E1DDC;'Not configured'
 006DF389    lea         eax,[ebp-10]
 006DF38C    push        eax
 006DF38D    mov         ecx,6E1E08;'sIOCNotInUse'
 006DF392    mov         edx,6E1E30;'FXPDFrame'
 006DF397    mov         eax,dword ptr [ebp-8]
 006DF39A    mov         ebx,dword ptr [eax]
 006DF39C    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DF39F    mov         edx,dword ptr [ebp-10]
 006DF3A2    mov         eax,[007C4254];^gvar_007C287C:array[5] of ?
 006DF3A7    call        @UStrAsg
 006DF3AC    push        6E1E50;'IOC Input Output Controller'
 006DF3B1    lea         eax,[ebp-14]
 006DF3B4    push        eax
 006DF3B5    mov         ecx,6E1E94;'sIOCType1'
 006DF3BA    mov         edx,6E1E30;'FXPDFrame'
 006DF3BF    mov         eax,dword ptr [ebp-8]
 006DF3C2    mov         ebx,dword ptr [eax]
 006DF3C4    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DF3C7    mov         edx,dword ptr [ebp-14]
 006DF3CA    mov         eax,[007C4254];^gvar_007C287C:array[5] of ?
 006DF3CF    add         eax,4
 006DF3D2    call        @UStrAsg
 006DF3D7    push        6E1EB4;'OCA Relay Output Controller'
 006DF3DC    lea         eax,[ebp-18]
 006DF3DF    push        eax
 006DF3E0    mov         ecx,6E1EF8;'sIOCOCAType1'
 006DF3E5    mov         edx,6E1E30;'FXPDFrame'
 006DF3EA    mov         eax,dword ptr [ebp-8]
 006DF3ED    mov         ebx,dword ptr [eax]
 006DF3EF    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DF3F2    mov         edx,dword ptr [ebp-18]
 006DF3F5    mov         eax,[007C4254];^gvar_007C287C:array[5] of ?
 006DF3FA    add         eax,8
 006DF3FD    call        @UStrAsg
 006DF402    push        6E1F20;'OCB Alarm Device Controller'
 006DF407    lea         eax,[ebp-1C]
 006DF40A    push        eax
 006DF40B    mov         ecx,6E1F64;'sIOCOCBType1'
 006DF410    mov         edx,6E1E30;'FXPDFrame'
 006DF415    mov         eax,dword ptr [ebp-8]
 006DF418    mov         ebx,dword ptr [eax]
 006DF41A    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DF41D    mov         edx,dword ptr [ebp-1C]
 006DF420    mov         eax,[007C4254];^gvar_007C287C:array[5] of ?
 006DF425    add         eax,0C
 006DF428    call        @UStrAsg
 006DF42D    push        6E1F8C;'FX101 I/O Controller'
 006DF432    lea         eax,[ebp-20]
 006DF435    push        eax
 006DF436    mov         ecx,6E1FC4;'sIOCCIOType1'
 006DF43B    mov         edx,6E1E30;'FXPDFrame'
 006DF440    mov         eax,dword ptr [ebp-8]
 006DF443    mov         ebx,dword ptr [eax]
 006DF445    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DF448    mov         edx,dword ptr [ebp-20]
 006DF44B    mov         eax,[007C4254];^gvar_007C287C:array[5] of ?
 006DF450    add         eax,10
 006DF453    call        @UStrAsg
 006DF458    mov         edx,dword ptr ds:[7C4D50];^gvar_007C2E54
 006DF45E    mov         edx,dword ptr [edx]
 006DF460    mov         eax,dword ptr [ebp-4]
 006DF463    mov         eax,dword ptr [eax+4E4];TFXPDFrame.lbCCI:TLabel
 006DF469    call        TControl.SetText
 006DF46E    mov         edx,dword ptr ds:[7C4768];^gvar_007C2E58
 006DF474    mov         edx,dword ptr [edx]
 006DF476    mov         eax,dword ptr [ebp-4]
 006DF479    mov         eax,dword ptr [eax+4E8];TFXPDFrame.lbCCO:TLabel
 006DF47F    call        TControl.SetText
 006DF484    mov         edx,dword ptr ds:[7C4B6C];^gvar_007C2E60
 006DF48A    mov         edx,dword ptr [edx]
 006DF48C    mov         eax,dword ptr [ebp-4]
 006DF48F    mov         eax,dword ptr [eax+4EC];TFXPDFrame.lbADO:TLabel
 006DF495    call        TControl.SetText
 006DF49A    push        6E1FEC;'Current data for this IO controller will be deleted if you change its type!
Are...
 006DF49F    lea         eax,[ebp-24]
 006DF4A2    push        eax
 006DF4A3    mov         ecx,6E20E8;'sDataWillBeCleared'
 006DF4A8    mov         edx,6E1E30;'FXPDFrame'
 006DF4AD    mov         eax,dword ptr [ebp-8]
 006DF4B0    mov         ebx,dword ptr [eax]
 006DF4B2    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DF4B5    mov         edx,dword ptr [ebp-24]
 006DF4B8    mov         eax,7C2ED4;^'Current data for this IO controller will be deleted if you change its type!...
 006DF4BD    call        @UStrAsg
 006DF4C2    mov         eax,[007C4640];^gvar_007C2E68
 006DF4C7    mov         eax,dword ptr [eax]
 006DF4C9    push        eax
 006DF4CA    xor         ecx,ecx
 006DF4CC    xor         edx,edx
 006DF4CE    mov         eax,dword ptr [ebp-4]
 006DF4D1    mov         eax,dword ptr [eax+4B0];TFXPDFrame.CCIGridMC:TStringGrid
 006DF4D7    call        TStringGrid.SetCells
 006DF4DC    mov         eax,[007C4630];^gvar_007C2E6C
 006DF4E1    mov         eax,dword ptr [eax]
 006DF4E3    push        eax
 006DF4E4    xor         ecx,ecx
 006DF4E6    mov         edx,1
 006DF4EB    mov         eax,dword ptr [ebp-4]
 006DF4EE    mov         eax,dword ptr [eax+4B0];TFXPDFrame.CCIGridMC:TStringGrid
 006DF4F4    call        TStringGrid.SetCells
 006DF4F9    mov         eax,[007C42F8];^gvar_007C2E70
 006DF4FE    mov         eax,dword ptr [eax]
 006DF500    push        eax
 006DF501    xor         ecx,ecx
 006DF503    mov         edx,2
 006DF508    mov         eax,dword ptr [ebp-4]
 006DF50B    mov         eax,dword ptr [eax+4B0];TFXPDFrame.CCIGridMC:TStringGrid
 006DF511    call        TStringGrid.SetCells
 006DF516    mov         eax,[007C4DC8];^gvar_007C2EA0
 006DF51B    mov         eax,dword ptr [eax]
 006DF51D    push        eax
 006DF51E    xor         ecx,ecx
 006DF520    mov         edx,3
 006DF525    mov         eax,dword ptr [ebp-4]
 006DF528    mov         eax,dword ptr [eax+4B0];TFXPDFrame.CCIGridMC:TStringGrid
 006DF52E    call        TStringGrid.SetCells
 006DF533    mov         eax,[007C47A4];^gvar_007C2E74
 006DF538    mov         eax,dword ptr [eax]
 006DF53A    push        eax
 006DF53B    xor         ecx,ecx
 006DF53D    mov         edx,4
 006DF542    mov         eax,dword ptr [ebp-4]
 006DF545    mov         eax,dword ptr [eax+4B0];TFXPDFrame.CCIGridMC:TStringGrid
 006DF54B    call        TStringGrid.SetCells
 006DF550    mov         eax,[007C482C];^gvar_007C2E78
 006DF555    mov         eax,dword ptr [eax]
 006DF557    push        eax
 006DF558    xor         ecx,ecx
 006DF55A    mov         edx,5
 006DF55F    mov         eax,dword ptr [ebp-4]
 006DF562    mov         eax,dword ptr [eax+4B0];TFXPDFrame.CCIGridMC:TStringGrid
 006DF568    call        TStringGrid.SetCells
 006DF56D    mov         eax,[007C4384];^gvar_007C2E7C
 006DF572    mov         eax,dword ptr [eax]
 006DF574    push        eax
 006DF575    xor         ecx,ecx
 006DF577    mov         edx,6
 006DF57C    mov         eax,dword ptr [ebp-4]
 006DF57F    mov         eax,dword ptr [eax+4B0];TFXPDFrame.CCIGridMC:TStringGrid
 006DF585    call        TStringGrid.SetCells
 006DF58A    mov         eax,[007C48A4];^gvar_007C2E80
 006DF58F    mov         eax,dword ptr [eax]
 006DF591    push        eax
 006DF592    xor         ecx,ecx
 006DF594    mov         edx,7
 006DF599    mov         eax,dword ptr [ebp-4]
 006DF59C    mov         eax,dword ptr [eax+4B0];TFXPDFrame.CCIGridMC:TStringGrid
 006DF5A2    call        TStringGrid.SetCells
 006DF5A7    mov         eax,[007C4DC4];^gvar_007C2E84
 006DF5AC    mov         eax,dword ptr [eax]
 006DF5AE    push        eax
 006DF5AF    xor         ecx,ecx
 006DF5B1    xor         edx,edx
 006DF5B3    mov         eax,dword ptr [ebp-4]
 006DF5B6    mov         eax,dword ptr [eax+4B4];TFXPDFrame.CCOGridMC:TStringGrid
 006DF5BC    call        TStringGrid.SetCells
 006DF5C1    mov         eax,[007C4DC0];^gvar_007C2E88
 006DF5C6    mov         eax,dword ptr [eax]
 006DF5C8    push        eax
 006DF5C9    xor         ecx,ecx
 006DF5CB    mov         edx,1
 006DF5D0    mov         eax,dword ptr [ebp-4]
 006DF5D3    mov         eax,dword ptr [eax+4B4];TFXPDFrame.CCOGridMC:TStringGrid
 006DF5D9    call        TStringGrid.SetCells
 006DF5DE    mov         eax,[007C4CAC];^gvar_007C2E8C
 006DF5E3    mov         eax,dword ptr [eax]
 006DF5E5    push        eax
 006DF5E6    xor         ecx,ecx
 006DF5E8    mov         edx,2
 006DF5ED    mov         eax,dword ptr [ebp-4]
 006DF5F0    mov         eax,dword ptr [eax+4B4];TFXPDFrame.CCOGridMC:TStringGrid
 006DF5F6    call        TStringGrid.SetCells
 006DF5FB    mov         eax,[007C4274];^gvar_007C2E90
 006DF600    mov         eax,dword ptr [eax]
 006DF602    push        eax
 006DF603    xor         ecx,ecx
 006DF605    mov         edx,3
 006DF60A    mov         eax,dword ptr [ebp-4]
 006DF60D    mov         eax,dword ptr [eax+4B4];TFXPDFrame.CCOGridMC:TStringGrid
 006DF613    call        TStringGrid.SetCells
 006DF618    mov         eax,[007C442C];^gvar_007C2E94
 006DF61D    mov         eax,dword ptr [eax]
 006DF61F    push        eax
 006DF620    xor         ecx,ecx
 006DF622    xor         edx,edx
 006DF624    mov         eax,dword ptr [ebp-4]
 006DF627    mov         eax,dword ptr [eax+4B8];TFXPDFrame.ADOGridMC:TStringGrid
 006DF62D    call        TStringGrid.SetCells
 006DF632    mov         eax,[007C4428];^gvar_007C2E98
 006DF637    mov         eax,dword ptr [eax]
 006DF639    push        eax
 006DF63A    xor         ecx,ecx
 006DF63C    mov         edx,1
 006DF641    mov         eax,dword ptr [ebp-4]
 006DF644    mov         eax,dword ptr [eax+4B8];TFXPDFrame.ADOGridMC:TStringGrid
 006DF64A    call        TStringGrid.SetCells
 006DF64F    mov         eax,[007C49FC];^gvar_007C2E9C
 006DF654    mov         eax,dword ptr [eax]
 006DF656    push        eax
 006DF657    xor         ecx,ecx
 006DF659    mov         edx,2
 006DF65E    mov         eax,dword ptr [ebp-4]
 006DF661    mov         eax,dword ptr [eax+4B8];TFXPDFrame.ADOGridMC:TStringGrid
 006DF667    call        TStringGrid.SetCells
 006DF66C    mov         eax,[007C4DC8];^gvar_007C2EA0
 006DF671    mov         eax,dword ptr [eax]
 006DF673    push        eax
 006DF674    xor         ecx,ecx
 006DF676    mov         edx,3
 006DF67B    mov         eax,dword ptr [ebp-4]
 006DF67E    mov         eax,dword ptr [eax+4B8];TFXPDFrame.ADOGridMC:TStringGrid
 006DF684    call        TStringGrid.SetCells
 006DF689    mov         eax,[007C4338];^gvar_007C2EA4
 006DF68E    mov         eax,dword ptr [eax]
 006DF690    push        eax
 006DF691    xor         ecx,ecx
 006DF693    mov         edx,4
 006DF698    mov         eax,dword ptr [ebp-4]
 006DF69B    mov         eax,dword ptr [eax+4B8];TFXPDFrame.ADOGridMC:TStringGrid
 006DF6A1    call        TStringGrid.SetCells
 006DF6A6    mov         eax,[007C4670];^gvar_007C2EA8
 006DF6AB    mov         eax,dword ptr [eax]
 006DF6AD    push        eax
 006DF6AE    xor         ecx,ecx
 006DF6B0    mov         edx,5
 006DF6B5    mov         eax,dword ptr [ebp-4]
 006DF6B8    mov         eax,dword ptr [eax+4B8];TFXPDFrame.ADOGridMC:TStringGrid
 006DF6BE    call        TStringGrid.SetCells
 006DF6C3    mov         eax,[007C4640];^gvar_007C2E68
 006DF6C8    mov         eax,dword ptr [eax]
 006DF6CA    push        eax
 006DF6CB    xor         ecx,ecx
 006DF6CD    xor         edx,edx
 006DF6CF    mov         eax,dword ptr [ebp-4]
 006DF6D2    mov         eax,dword ptr [eax+4D8];TFXPDFrame.CCIGrid:TStringGrid
 006DF6D8    call        TStringGrid.SetCells
 006DF6DD    mov         eax,[007C4630];^gvar_007C2E6C
 006DF6E2    mov         eax,dword ptr [eax]
 006DF6E4    push        eax
 006DF6E5    xor         ecx,ecx
 006DF6E7    mov         edx,1
 006DF6EC    mov         eax,dword ptr [ebp-4]
 006DF6EF    mov         eax,dword ptr [eax+4D8];TFXPDFrame.CCIGrid:TStringGrid
 006DF6F5    call        TStringGrid.SetCells
 006DF6FA    mov         eax,[007C42F8];^gvar_007C2E70
 006DF6FF    mov         eax,dword ptr [eax]
 006DF701    push        eax
 006DF702    xor         ecx,ecx
 006DF704    mov         edx,2
 006DF709    mov         eax,dword ptr [ebp-4]
 006DF70C    mov         eax,dword ptr [eax+4D8];TFXPDFrame.CCIGrid:TStringGrid
 006DF712    call        TStringGrid.SetCells
 006DF717    mov         eax,[007C47A4];^gvar_007C2E74
 006DF71C    mov         eax,dword ptr [eax]
 006DF71E    push        eax
 006DF71F    xor         ecx,ecx
 006DF721    mov         edx,4
 006DF726    mov         eax,dword ptr [ebp-4]
 006DF729    mov         eax,dword ptr [eax+4D8];TFXPDFrame.CCIGrid:TStringGrid
 006DF72F    call        TStringGrid.SetCells
 006DF734    mov         eax,[007C482C];^gvar_007C2E78
 006DF739    mov         eax,dword ptr [eax]
 006DF73B    push        eax
 006DF73C    xor         ecx,ecx
 006DF73E    mov         edx,5
 006DF743    mov         eax,dword ptr [ebp-4]
 006DF746    mov         eax,dword ptr [eax+4D8];TFXPDFrame.CCIGrid:TStringGrid
 006DF74C    call        TStringGrid.SetCells
 006DF751    mov         eax,[007C4384];^gvar_007C2E7C
 006DF756    mov         eax,dword ptr [eax]
 006DF758    push        eax
 006DF759    xor         ecx,ecx
 006DF75B    mov         edx,6
 006DF760    mov         eax,dword ptr [ebp-4]
 006DF763    mov         eax,dword ptr [eax+4D8];TFXPDFrame.CCIGrid:TStringGrid
 006DF769    call        TStringGrid.SetCells
 006DF76E    mov         eax,[007C48A4];^gvar_007C2E80
 006DF773    mov         eax,dword ptr [eax]
 006DF775    push        eax
 006DF776    xor         ecx,ecx
 006DF778    mov         edx,7
 006DF77D    mov         eax,dword ptr [ebp-4]
 006DF780    mov         eax,dword ptr [eax+4D8];TFXPDFrame.CCIGrid:TStringGrid
 006DF786    call        TStringGrid.SetCells
 006DF78B    mov         eax,[007C4DC4];^gvar_007C2E84
 006DF790    mov         eax,dword ptr [eax]
 006DF792    push        eax
 006DF793    xor         ecx,ecx
 006DF795    xor         edx,edx
 006DF797    mov         eax,dword ptr [ebp-4]
 006DF79A    mov         eax,dword ptr [eax+4DC];TFXPDFrame.CCOGrid:TStringGrid
 006DF7A0    call        TStringGrid.SetCells
 006DF7A5    mov         eax,[007C4DC0];^gvar_007C2E88
 006DF7AA    mov         eax,dword ptr [eax]
 006DF7AC    push        eax
 006DF7AD    xor         ecx,ecx
 006DF7AF    mov         edx,1
 006DF7B4    mov         eax,dword ptr [ebp-4]
 006DF7B7    mov         eax,dword ptr [eax+4DC];TFXPDFrame.CCOGrid:TStringGrid
 006DF7BD    call        TStringGrid.SetCells
 006DF7C2    mov         eax,[007C4CAC];^gvar_007C2E8C
 006DF7C7    mov         eax,dword ptr [eax]
 006DF7C9    push        eax
 006DF7CA    xor         ecx,ecx
 006DF7CC    mov         edx,2
 006DF7D1    mov         eax,dword ptr [ebp-4]
 006DF7D4    mov         eax,dword ptr [eax+4DC];TFXPDFrame.CCOGrid:TStringGrid
 006DF7DA    call        TStringGrid.SetCells
 006DF7DF    mov         eax,[007C4274];^gvar_007C2E90
 006DF7E4    mov         eax,dword ptr [eax]
 006DF7E6    push        eax
 006DF7E7    xor         ecx,ecx
 006DF7E9    mov         edx,3
 006DF7EE    mov         eax,dword ptr [ebp-4]
 006DF7F1    mov         eax,dword ptr [eax+4DC];TFXPDFrame.CCOGrid:TStringGrid
 006DF7F7    call        TStringGrid.SetCells
 006DF7FC    mov         eax,[007C442C];^gvar_007C2E94
 006DF801    mov         eax,dword ptr [eax]
 006DF803    push        eax
 006DF804    xor         ecx,ecx
 006DF806    xor         edx,edx
 006DF808    mov         eax,dword ptr [ebp-4]
 006DF80B    mov         eax,dword ptr [eax+4E0];TFXPDFrame.ADOGrid:TStringGrid
 006DF811    call        TStringGrid.SetCells
 006DF816    mov         eax,[007C4428];^gvar_007C2E98
 006DF81B    mov         eax,dword ptr [eax]
 006DF81D    push        eax
 006DF81E    xor         ecx,ecx
 006DF820    mov         edx,1
 006DF825    mov         eax,dword ptr [ebp-4]
 006DF828    mov         eax,dword ptr [eax+4E0];TFXPDFrame.ADOGrid:TStringGrid
 006DF82E    call        TStringGrid.SetCells
 006DF833    mov         eax,[007C49FC];^gvar_007C2E9C
 006DF838    mov         eax,dword ptr [eax]
 006DF83A    push        eax
 006DF83B    xor         ecx,ecx
 006DF83D    mov         edx,2
 006DF842    mov         eax,dword ptr [ebp-4]
 006DF845    mov         eax,dword ptr [eax+4E0];TFXPDFrame.ADOGrid:TStringGrid
 006DF84B    call        TStringGrid.SetCells
 006DF850    mov         eax,[007C4DC8];^gvar_007C2EA0
 006DF855    mov         eax,dword ptr [eax]
 006DF857    push        eax
 006DF858    xor         ecx,ecx
 006DF85A    mov         edx,3
 006DF85F    mov         eax,dword ptr [ebp-4]
 006DF862    mov         eax,dword ptr [eax+4E0];TFXPDFrame.ADOGrid:TStringGrid
 006DF868    call        TStringGrid.SetCells
 006DF86D    mov         eax,[007C4338];^gvar_007C2EA4
 006DF872    mov         eax,dword ptr [eax]
 006DF874    push        eax
 006DF875    xor         ecx,ecx
 006DF877    mov         edx,4
 006DF87C    mov         eax,dword ptr [ebp-4]
 006DF87F    mov         eax,dword ptr [eax+4E0];TFXPDFrame.ADOGrid:TStringGrid
 006DF885    call        TStringGrid.SetCells
 006DF88A    mov         eax,[007C4670];^gvar_007C2EA8
 006DF88F    mov         eax,dword ptr [eax]
 006DF891    push        eax
 006DF892    xor         ecx,ecx
 006DF894    mov         edx,5
 006DF899    mov         eax,dword ptr [ebp-4]
 006DF89C    mov         eax,dword ptr [eax+4E0];TFXPDFrame.ADOGrid:TStringGrid
 006DF8A2    call        TStringGrid.SetCells
 006DF8A7    push        6E211C;'Not in use'
 006DF8AC    lea         eax,[ebp-28]
 006DF8AF    push        eax
 006DF8B0    mov         ecx,6E2140;'sInpNotInUse'
 006DF8B5    mov         edx,6E2168;'InpFuncStrings'
 006DF8BA    mov         eax,dword ptr [ebp-8]
 006DF8BD    mov         ebx,dword ptr [eax]
 006DF8BF    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DF8C2    mov         edx,dword ptr [ebp-28]
 006DF8C5    mov         eax,dword ptr [ebp-4]
 006DF8C8    mov         eax,dword ptr [eax+4F4];TFXPDFrame.Notused1:TMenuItem
 006DF8CE    call        TMenuItem.SetCaption
 006DF8D3    push        6E2194;'Evacuation Input'
 006DF8D8    lea         eax,[ebp-2C]
 006DF8DB    push        eax
 006DF8DC    mov         ecx,6E21C4;'sInpEvacuation'
 006DF8E1    mov         edx,6E2168;'InpFuncStrings'
 006DF8E6    mov         eax,dword ptr [ebp-8]
 006DF8E9    mov         ebx,dword ptr [eax]
 006DF8EB    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DF8EE    mov         edx,dword ptr [ebp-2C]
 006DF8F1    mov         eax,dword ptr [ebp-4]
 006DF8F4    mov         eax,dword ptr [eax+514];TFXPDFrame.Evacuationinput1:TMenuItem
 006DF8FA    call        TMenuItem.SetCaption
 006DF8FF    push        6E21F0;'Fault Warning Input'
 006DF904    lea         eax,[ebp-30]
 006DF907    push        eax
 006DF908    mov         ecx,6E2224;'sInpFaultWarning'
 006DF90D    mov         edx,6E2168;'InpFuncStrings'
 006DF912    mov         eax,dword ptr [ebp-8]
 006DF915    mov         ebx,dword ptr [eax]
 006DF917    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DF91A    mov         edx,dword ptr [ebp-30]
 006DF91D    mov         eax,dword ptr [ebp-4]
 006DF920    mov         eax,dword ptr [eax+500];TFXPDFrame.Faultwarninginput1:TMenuItem
 006DF926    call        TMenuItem.SetCaption
 006DF92B    push        6E2254;'FARE Fault input'
 006DF930    lea         eax,[ebp-34]
 006DF933    push        eax
 006DF934    mov         ecx,6E2284;'sInpFaultInFARE'
 006DF939    mov         edx,6E2168;'InpFuncStrings'
 006DF93E    mov         eax,dword ptr [ebp-8]
 006DF941    mov         ebx,dword ptr [eax]
 006DF943    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DF946    mov         edx,dword ptr [ebp-34]
 006DF949    mov         eax,dword ptr [ebp-4]
 006DF94C    mov         eax,dword ptr [eax+504];TFXPDFrame.Faultinfirealarmrouter1:TMenuItem
 006DF952    call        TMenuItem.SetCaption
 006DF957    push        6E22B0;'Fault in fault warning router'
 006DF95C    lea         eax,[ebp-38]
 006DF95F    push        eax
 006DF960    mov         ecx,6E22F8;'sInpFaultInFWRE'
 006DF965    mov         edx,6E2168;'InpFuncStrings'
 006DF96A    mov         eax,dword ptr [ebp-8]
 006DF96D    mov         ebx,dword ptr [eax]
 006DF96F    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DF972    mov         edx,dword ptr [ebp-38]
 006DF975    mov         eax,dword ptr [ebp-4]
 006DF978    mov         eax,dword ptr [eax+508];TFXPDFrame.Faultinfaultwarningrouter1:TMenuItem
 006DF97E    call        TMenuItem.SetCaption
 006DF983    push        6E2324;'Extinguisher Fault Input'
 006DF988    lea         eax,[ebp-3C]
 006DF98B    push        eax
 006DF98C    mov         ecx,6E2364;'sInpExtingFault'
 006DF991    mov         edx,6E2168;'InpFuncStrings'
 006DF996    mov         eax,dword ptr [ebp-8]
 006DF999    mov         ebx,dword ptr [eax]
 006DF99B    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DF99E    mov         edx,dword ptr [ebp-3C]
 006DF9A1    mov         eax,dword ptr [ebp-4]
 006DF9A4    mov         eax,dword ptr [eax+50C];TFXPDFrame.Faultinextinguisher1:TMenuItem
 006DF9AA    call        TMenuItem.SetCaption
 006DF9AF    push        6E2390;'Maintenance Input'
 006DF9B4    lea         eax,[ebp-40]
 006DF9B7    push        eax
 006DF9B8    mov         ecx,6E23C0;'sInpMaintWarning'
 006DF9BD    mov         edx,6E2168;'InpFuncStrings'
 006DF9C2    mov         eax,dword ptr [ebp-8]
 006DF9C5    mov         ebx,dword ptr [eax]
 006DF9C7    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DF9CA    mov         edx,dword ptr [ebp-40]
 006DF9CD    mov         eax,dword ptr [ebp-4]
 006DF9D0    mov         eax,dword ptr [eax+510];TFXPDFrame.Maintenancewarninginput1:TMenuItem
 006DF9D6    call        TMenuItem.SetCaption
 006DF9DB    push        6E23F0;'Technical Alarm Input'
 006DF9E0    lea         eax,[ebp-44]
 006DF9E3    push        eax
 006DF9E4    mov         ecx,6E2428;'sInpTechAlarm'
 006DF9E9    mov         edx,6E2168;'InpFuncStrings'
 006DF9EE    mov         eax,dword ptr [ebp-8]
 006DF9F1    mov         ebx,dword ptr [eax]
 006DF9F3    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DF9F6    mov         edx,dword ptr [ebp-44]
 006DF9F9    mov         eax,dword ptr [ebp-4]
 006DF9FC    mov         eax,dword ptr [eax+4F8];TFXPDFrame.Technicalalarminput1:TMenuItem
 006DFA02    call        TMenuItem.SetCaption
 006DFA07    push        6E2450;'Silent Tech Alarm Input'
 006DFA0C    lea         eax,[ebp-48]
 006DFA0F    push        eax
 006DFA10    mov         ecx,6E248C;'sInpSilentTechAlarm'
 006DFA15    mov         edx,6E2168;'InpFuncStrings'
 006DFA1A    mov         eax,dword ptr [ebp-8]
 006DFA1D    mov         ebx,dword ptr [eax]
 006DFA1F    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFA22    mov         edx,dword ptr [ebp-48]
 006DFA25    mov         eax,dword ptr [ebp-4]
 006DFA28    mov         eax,dword ptr [eax+4FC];TFXPDFrame.Silenttechnicalalarminput1:TMenuItem
 006DFA2E    call        TMenuItem.SetCaption
 006DFA33    push        6E24C0;'Day Mode Activation Inp.'
 006DFA38    lea         eax,[ebp-4C]
 006DFA3B    push        eax
 006DFA3C    mov         ecx,6E2500;'sInpDayMode'
 006DFA41    mov         edx,6E2168;'InpFuncStrings'
 006DFA46    mov         eax,dword ptr [ebp-8]
 006DFA49    mov         ebx,dword ptr [eax]
 006DFA4B    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFA4E    mov         edx,dword ptr [ebp-4C]
 006DFA51    mov         eax,dword ptr [ebp-4]
 006DFA54    mov         eax,dword ptr [eax+518];TFXPDFrame.DayModeactivationinput1:TMenuItem
 006DFA5A    call        TMenuItem.SetCaption
 006DFA5F    push        6E2524;'Delayed Alarm Enable Inp'
 006DFA64    lea         eax,[ebp-50]
 006DFA67    push        eax
 006DFA68    mov         ecx,6E2564;'sInpDelAlrmEnable'
 006DFA6D    mov         edx,6E2168;'InpFuncStrings'
 006DFA72    mov         eax,dword ptr [ebp-8]
 006DFA75    mov         ebx,dword ptr [eax]
 006DFA77    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFA7A    mov         edx,dword ptr [ebp-50]
 006DFA7D    mov         eax,dword ptr [ebp-4]
 006DFA80    mov         eax,dword ptr [eax+51C];TFXPDFrame.DelayedAlarmenableinput1:TMenuItem
 006DFA86    call        TMenuItem.SetCaption
 006DFA8B    push        6E2594;'Day M. and Del. Al. En.'
 006DFA90    lea         eax,[ebp-54]
 006DFA93    push        eax
 006DFA94    mov         ecx,6E25D0;'sInpDayAndDelEnable'
 006DFA99    mov         edx,6E2168;'InpFuncStrings'
 006DFA9E    mov         eax,dword ptr [ebp-8]
 006DFAA1    mov         ebx,dword ptr [eax]
 006DFAA3    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFAA6    mov         edx,dword ptr [ebp-54]
 006DFAA9    mov         eax,dword ptr [ebp-4]
 006DFAAC    mov         eax,dword ptr [eax+520];TFXPDFrame.DayModeandDelayedAlarmenable1:TMenuItem
 006DFAB2    call        TMenuItem.SetCaption
 006DFAB7    push        6E2604;'Start delay T2 for delayed alarm'
 006DFABC    lea         eax,[ebp-58]
 006DFABF    push        eax
 006DFAC0    mov         ecx,6E2654;'sInpDelAlarmStartT2'
 006DFAC5    mov         edx,6E2168;'InpFuncStrings'
 006DFACA    mov         eax,dword ptr [ebp-8]
 006DFACD    mov         ebx,dword ptr [eax]
 006DFACF    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFAD2    mov         edx,dword ptr [ebp-58]
 006DFAD5    mov         eax,dword ptr [ebp-4]
 006DFAD8    mov         eax,dword ptr [eax+544];TFXPDFrame.StartdelayT2fordelayedalarm1:TMenuItem
 006DFADE    call        TMenuItem.SetCaption
 006DFAE3    push        6E2688;'Delayed alarm reset input'
 006DFAE8    lea         eax,[ebp-5C]
 006DFAEB    push        eax
 006DFAEC    mov         ecx,6E26C8;'sInpDelAlarmReset'
 006DFAF1    mov         edx,6E2168;'InpFuncStrings'
 006DFAF6    mov         eax,dword ptr [ebp-8]
 006DFAF9    mov         ebx,dword ptr [eax]
 006DFAFB    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFAFE    mov         edx,dword ptr [ebp-5C]
 006DFB01    mov         eax,dword ptr [ebp-4]
 006DFB04    mov         eax,dword ptr [eax+548];TFXPDFrame.Delayedalarmresetinput1:TMenuItem
 006DFB0A    call        TMenuItem.SetCaption
 006DFB0F    push        6E26F8;'General Silence Input'
 006DFB14    lea         eax,[ebp-60]
 006DFB17    push        eax
 006DFB18    mov         ecx,6E2730;'sInpGeneralSilence'
 006DFB1D    mov         edx,6E2168;'InpFuncStrings'
 006DFB22    mov         eax,dword ptr [ebp-8]
 006DFB25    mov         ebx,dword ptr [eax]
 006DFB27    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFB2A    mov         edx,dword ptr [ebp-60]
 006DFB2D    mov         eax,dword ptr [ebp-4]
 006DFB30    mov         eax,dword ptr [eax+524];TFXPDFrame.GeneralSilenceinput1:TMenuItem
 006DFB36    call        TMenuItem.SetCaption
 006DFB3B    push        6E2764;'General Reset Input'
 006DFB40    lea         eax,[ebp-64]
 006DFB43    push        eax
 006DFB44    mov         ecx,6E2798;'sInpGeneralReset'
 006DFB49    mov         edx,6E2168;'InpFuncStrings'
 006DFB4E    mov         eax,dword ptr [ebp-8]
 006DFB51    mov         ebx,dword ptr [eax]
 006DFB53    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFB56    mov         edx,dword ptr [ebp-64]
 006DFB59    mov         eax,dword ptr [ebp-4]
 006DFB5C    mov         eax,dword ptr [eax+528];TFXPDFrame.GeneralResetinput1:TMenuItem
 006DFB62    call        TMenuItem.SetCaption
 006DFB67    push        6E27C8;'Internal Logic Input'
 006DFB6C    lea         eax,[ebp-68]
 006DFB6F    push        eax
 006DFB70    mov         ecx,6E2800;'sInpInternalLogic'
 006DFB75    mov         edx,6E2168;'InpFuncStrings'
 006DFB7A    mov         eax,dword ptr [ebp-8]
 006DFB7D    mov         ebx,dword ptr [eax]
 006DFB7F    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFB82    mov         edx,dword ptr [ebp-68]
 006DFB85    mov         eax,dword ptr [ebp-4]
 006DFB88    mov         eax,dword ptr [eax+534];TFXPDFrame.Internallogicinput1:TMenuItem
 006DFB8E    call        TMenuItem.SetCaption
 006DFB93    push        6E2830;'External Logic Input'
 006DFB98    lea         eax,[ebp-6C]
 006DFB9B    push        eax
 006DFB9C    mov         ecx,6E2868;'sInpExternalLogic'
 006DFBA1    mov         edx,6E2168;'InpFuncStrings'
 006DFBA6    mov         eax,dword ptr [ebp-8]
 006DFBA9    mov         ebx,dword ptr [eax]
 006DFBAB    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFBAE    mov         edx,dword ptr [ebp-6C]
 006DFBB1    mov         eax,dword ptr [ebp-4]
 006DFBB4    mov         eax,dword ptr [eax+538];TFXPDFrame.Externallogicinput1:TMenuItem
 006DFBBA    call        TMenuItem.SetCaption
 006DFBBF    push        6E2898;'Extinguisher Activated'
 006DFBC4    lea         eax,[ebp-70]
 006DFBC7    push        eax
 006DFBC8    mov         ecx,6E28D4;'sInpExtingActiv'
 006DFBCD    mov         edx,6E2168;'InpFuncStrings'
 006DFBD2    mov         eax,dword ptr [ebp-8]
 006DFBD5    mov         ebx,dword ptr [eax]
 006DFBD7    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFBDA    mov         edx,dword ptr [ebp-70]
 006DFBDD    mov         eax,dword ptr [ebp-4]
 006DFBE0    mov         eax,dword ptr [eax+52C];TFXPDFrame.Extinguisheractivatedinput1:TMenuItem
 006DFBE6    call        TMenuItem.SetCaption
 006DFBEB    push        6E2900;'Smokeventil. Activated'
 006DFBF0    lea         eax,[ebp-74]
 006DFBF3    push        eax
 006DFBF4    mov         ecx,6E293C;'sInpSmokeVentActiv'
 006DFBF9    mov         edx,6E2168;'InpFuncStrings'
 006DFBFE    mov         eax,dword ptr [ebp-8]
 006DFC01    mov         ebx,dword ptr [eax]
 006DFC03    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFC06    mov         edx,dword ptr [ebp-74]
 006DFC09    mov         eax,dword ptr [ebp-4]
 006DFC0C    mov         eax,dword ptr [eax+530];TFXPDFrame.Smokeventilationactivatedinput1:TMenuItem
 006DFC12    call        TMenuItem.SetCaption
 006DFC17    push        6E2970;'Custom. LED 1 Activation'
 006DFC1C    lea         eax,[ebp-78]
 006DFC1F    push        eax
 006DFC20    mov         ecx,6E29B0;'sInpCustLED1Activ'
 006DFC25    mov         edx,6E2168;'InpFuncStrings'
 006DFC2A    mov         eax,dword ptr [ebp-8]
 006DFC2D    mov         ebx,dword ptr [eax]
 006DFC2F    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFC32    mov         edx,dword ptr [ebp-78]
 006DFC35    mov         eax,dword ptr [ebp-4]
 006DFC38    mov         eax,dword ptr [eax+53C];TFXPDFrame.ActivationofcustomerLED11:TMenuItem
 006DFC3E    call        TMenuItem.SetCaption
 006DFC43    push        6E29E0;'Custom. LED 2 Activation'
 006DFC48    lea         eax,[ebp-7C]
 006DFC4B    push        eax
 006DFC4C    mov         ecx,6E2A20;'sInpCustLED2Activ'
 006DFC51    mov         edx,6E2168;'InpFuncStrings'
 006DFC56    mov         eax,dword ptr [ebp-8]
 006DFC59    mov         ebx,dword ptr [eax]
 006DFC5B    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFC5E    mov         edx,dword ptr [ebp-7C]
 006DFC61    mov         eax,dword ptr [ebp-4]
 006DFC64    mov         eax,dword ptr [eax+540];TFXPDFrame.ActivationofcustomerLED21:TMenuItem
 006DFC6A    call        TMenuItem.SetCaption
 006DFC6F    push        6E2A50;'Local day mode activation input'
 006DFC74    lea         eax,[ebp-80]
 006DFC77    push        eax
 006DFC78    mov         ecx,6E2A9C;'sInpLocDayMode'
 006DFC7D    mov         edx,6E2168;'InpFuncStrings'
 006DFC82    mov         eax,dword ptr [ebp-8]
 006DFC85    mov         ebx,dword ptr [eax]
 006DFC87    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFC8A    mov         edx,dword ptr [ebp-80]
 006DFC8D    mov         eax,dword ptr [ebp-4]
 006DFC90    mov         eax,dword ptr [eax+54C];TFXPDFrame.LocalDayModeactivationinput1:TMenuItem
 006DFC96    call        TMenuItem.SetCaption
 006DFC9B    push        6E2AC8;'Local delayed alarm enable input'
 006DFCA0    lea         eax,[ebp-84]
 006DFCA6    push        eax
 006DFCA7    mov         ecx,6E2B18;'sInpLocDelAlarmEnable'
 006DFCAC    mov         edx,6E2168;'InpFuncStrings'
 006DFCB1    mov         eax,dword ptr [ebp-8]
 006DFCB4    mov         ebx,dword ptr [eax]
 006DFCB6    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFCB9    mov         edx,dword ptr [ebp-84]
 006DFCBF    mov         eax,dword ptr [ebp-4]
 006DFCC2    mov         eax,dword ptr [eax+550];TFXPDFrame.LocalDelayedAlarmenableinput1:TMenuItem
 006DFCC8    call        TMenuItem.SetCaption
 006DFCCD    push        6E2B50;'Local day mode and delayed alarm enable'
 006DFCD2    lea         eax,[ebp-88]
 006DFCD8    push        eax
 006DFCD9    mov         ecx,6E2BAC;'sInpLocDayAndDelEnable'
 006DFCDE    mov         edx,6E2168;'InpFuncStrings'
 006DFCE3    mov         eax,dword ptr [ebp-8]
 006DFCE6    mov         ebx,dword ptr [eax]
 006DFCE8    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFCEB    mov         edx,dword ptr [ebp-88]
 006DFCF1    mov         eax,dword ptr [ebp-4]
 006DFCF4    mov         eax,dword ptr [eax+554];TFXPDFrame.LocalDayModeandDelayedAlarmenable1:TMenuItem
 006DFCFA    call        TMenuItem.SetCaption
 006DFCFF    push        6E2BE8;'Local fire alarm device mute input'
 006DFD04    lea         eax,[ebp-8C]
 006DFD0A    push        eax
 006DFD0B    mov         ecx,6E2C3C;'sInpLocAlarmDeviceMute'
 006DFD10    mov         edx,6E2168;'InpFuncStrings'
 006DFD15    mov         eax,dword ptr [ebp-8]
 006DFD18    mov         ebx,dword ptr [eax]
 006DFD1A    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFD1D    mov         edx,dword ptr [ebp-8C]
 006DFD23    mov         eax,dword ptr [ebp-4]
 006DFD26    mov         eax,dword ptr [eax+558];TFXPDFrame.LocalAlarmDeviceDisableInput1:TMenuItem
 006DFD2C    call        TMenuItem.SetCaption
 006DFD31    push        6E2C78;'Fire alarm device mute input'
 006DFD36    lea         eax,[ebp-90]
 006DFD3C    push        eax
 006DFD3D    mov         ecx,6E2CC0;'sInpAlarmDeviceMute'
 006DFD42    mov         edx,6E2168;'InpFuncStrings'
 006DFD47    mov         eax,dword ptr [ebp-8]
 006DFD4A    mov         ebx,dword ptr [eax]
 006DFD4C    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFD4F    mov         edx,dword ptr [ebp-90]
 006DFD55    mov         eax,dword ptr [ebp-4]
 006DFD58    mov         eax,dword ptr [eax+55C];TFXPDFrame.AlarmDeviceDisableInput1:TMenuItem
 006DFD5E    call        TMenuItem.SetCaption
 006DFD63    push        6E2CF4;'Local evacuation input'
 006DFD68    lea         eax,[ebp-94]
 006DFD6E    push        eax
 006DFD6F    mov         ecx,6E2D30;'sInpLocEvacuation'
 006DFD74    mov         edx,6E2168;'InpFuncStrings'
 006DFD79    mov         eax,dword ptr [ebp-8]
 006DFD7C    mov         ebx,dword ptr [eax]
 006DFD7E    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFD81    mov         edx,dword ptr [ebp-94]
 006DFD87    mov         eax,dword ptr [ebp-4]
 006DFD8A    mov         eax,dword ptr [eax+560];TFXPDFrame.LocalEvacuationinput1:TMenuItem
 006DFD90    call        TMenuItem.SetCaption
 006DFD95    push        6E2D60;'Voice Evacuation Fault Input'
 006DFD9A    lea         eax,[ebp-98]
 006DFDA0    push        eax
 006DFDA1    mov         ecx,6E2DA8;'sInpEvacuationFault'
 006DFDA6    mov         edx,6E2168;'InpFuncStrings'
 006DFDAB    mov         eax,dword ptr [ebp-8]
 006DFDAE    mov         ebx,dword ptr [eax]
 006DFDB0    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFDB3    mov         edx,dword ptr [ebp-98]
 006DFDB9    mov         eax,dword ptr [ebp-4]
 006DFDBC    mov         eax,dword ptr [eax+564];TFXPDFrame.VoiceEvacuationfaultinput1:TMenuItem
 006DFDC2    call        TMenuItem.SetCaption
 006DFDC7    push        6E211C;'Not in use'
 006DFDCC    lea         eax,[ebp-9C]
 006DFDD2    push        eax
 006DFDD3    mov         ecx,6E2140;'sInpNotInUse'
 006DFDD8    mov         edx,6E2168;'InpFuncStrings'
 006DFDDD    mov         eax,dword ptr [ebp-8]
 006DFDE0    mov         ebx,dword ptr [eax]
 006DFDE2    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFDE5    mov         edx,dword ptr [ebp-9C]
 006DFDEB    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006DFDF0    call        @UStrAsg
 006DFDF5    push        6E2194;'Evacuation Input'
 006DFDFA    lea         eax,[ebp-0A0]
 006DFE00    push        eax
 006DFE01    mov         ecx,6E21C4;'sInpEvacuation'
 006DFE06    mov         edx,6E2168;'InpFuncStrings'
 006DFE0B    mov         eax,dword ptr [ebp-8]
 006DFE0E    mov         ebx,dword ptr [eax]
 006DFE10    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFE13    mov         edx,dword ptr [ebp-0A0]
 006DFE19    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006DFE1E    add         eax,4
 006DFE21    call        @UStrAsg
 006DFE26    push        6E21F0;'Fault Warning Input'
 006DFE2B    lea         eax,[ebp-0A4]
 006DFE31    push        eax
 006DFE32    mov         ecx,6E2224;'sInpFaultWarning'
 006DFE37    mov         edx,6E2168;'InpFuncStrings'
 006DFE3C    mov         eax,dword ptr [ebp-8]
 006DFE3F    mov         ebx,dword ptr [eax]
 006DFE41    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFE44    mov         edx,dword ptr [ebp-0A4]
 006DFE4A    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006DFE4F    add         eax,8
 006DFE52    call        @UStrAsg
 006DFE57    push        6E2254;'FARE Fault input'
 006DFE5C    lea         eax,[ebp-0A8]
 006DFE62    push        eax
 006DFE63    mov         ecx,6E2284;'sInpFaultInFARE'
 006DFE68    mov         edx,6E2168;'InpFuncStrings'
 006DFE6D    mov         eax,dword ptr [ebp-8]
 006DFE70    mov         ebx,dword ptr [eax]
 006DFE72    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFE75    mov         edx,dword ptr [ebp-0A8]
 006DFE7B    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006DFE80    add         eax,0C
 006DFE83    call        @UStrAsg
 006DFE88    push        6E22B0;'Fault in fault warning router'
 006DFE8D    lea         eax,[ebp-0AC]
 006DFE93    push        eax
 006DFE94    mov         ecx,6E22F8;'sInpFaultInFWRE'
 006DFE99    mov         edx,6E2168;'InpFuncStrings'
 006DFE9E    mov         eax,dword ptr [ebp-8]
 006DFEA1    mov         ebx,dword ptr [eax]
 006DFEA3    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFEA6    mov         edx,dword ptr [ebp-0AC]
 006DFEAC    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006DFEB1    add         eax,10
 006DFEB4    call        @UStrAsg
 006DFEB9    push        6E2324;'Extinguisher Fault Input'
 006DFEBE    lea         eax,[ebp-0B0]
 006DFEC4    push        eax
 006DFEC5    mov         ecx,6E2364;'sInpExtingFault'
 006DFECA    mov         edx,6E2168;'InpFuncStrings'
 006DFECF    mov         eax,dword ptr [ebp-8]
 006DFED2    mov         ebx,dword ptr [eax]
 006DFED4    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFED7    mov         edx,dword ptr [ebp-0B0]
 006DFEDD    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006DFEE2    add         eax,14
 006DFEE5    call        @UStrAsg
 006DFEEA    push        6E2390;'Maintenance Input'
 006DFEEF    lea         eax,[ebp-0B4]
 006DFEF5    push        eax
 006DFEF6    mov         ecx,6E23C0;'sInpMaintWarning'
 006DFEFB    mov         edx,6E2168;'InpFuncStrings'
 006DFF00    mov         eax,dword ptr [ebp-8]
 006DFF03    mov         ebx,dword ptr [eax]
 006DFF05    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFF08    mov         edx,dword ptr [ebp-0B4]
 006DFF0E    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006DFF13    add         eax,18
 006DFF16    call        @UStrAsg
 006DFF1B    push        6E23F0;'Technical Alarm Input'
 006DFF20    lea         eax,[ebp-0B8]
 006DFF26    push        eax
 006DFF27    mov         ecx,6E2428;'sInpTechAlarm'
 006DFF2C    mov         edx,6E2168;'InpFuncStrings'
 006DFF31    mov         eax,dword ptr [ebp-8]
 006DFF34    mov         ebx,dword ptr [eax]
 006DFF36    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFF39    mov         edx,dword ptr [ebp-0B8]
 006DFF3F    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006DFF44    add         eax,1C
 006DFF47    call        @UStrAsg
 006DFF4C    push        6E2450;'Silent Tech Alarm Input'
 006DFF51    lea         eax,[ebp-0BC]
 006DFF57    push        eax
 006DFF58    mov         ecx,6E248C;'sInpSilentTechAlarm'
 006DFF5D    mov         edx,6E2168;'InpFuncStrings'
 006DFF62    mov         eax,dword ptr [ebp-8]
 006DFF65    mov         ebx,dword ptr [eax]
 006DFF67    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFF6A    mov         edx,dword ptr [ebp-0BC]
 006DFF70    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006DFF75    add         eax,20
 006DFF78    call        @UStrAsg
 006DFF7D    push        6E24C0;'Day Mode Activation Inp.'
 006DFF82    lea         eax,[ebp-0C0]
 006DFF88    push        eax
 006DFF89    mov         ecx,6E2500;'sInpDayMode'
 006DFF8E    mov         edx,6E2168;'InpFuncStrings'
 006DFF93    mov         eax,dword ptr [ebp-8]
 006DFF96    mov         ebx,dword ptr [eax]
 006DFF98    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFF9B    mov         edx,dword ptr [ebp-0C0]
 006DFFA1    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006DFFA6    add         eax,24
 006DFFA9    call        @UStrAsg
 006DFFAE    push        6E2524;'Delayed Alarm Enable Inp'
 006DFFB3    lea         eax,[ebp-0C4]
 006DFFB9    push        eax
 006DFFBA    mov         ecx,6E2564;'sInpDelAlrmEnable'
 006DFFBF    mov         edx,6E2168;'InpFuncStrings'
 006DFFC4    mov         eax,dword ptr [ebp-8]
 006DFFC7    mov         ebx,dword ptr [eax]
 006DFFC9    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFFCC    mov         edx,dword ptr [ebp-0C4]
 006DFFD2    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006DFFD7    add         eax,28
 006DFFDA    call        @UStrAsg
 006DFFDF    push        6E2594;'Day M. and Del. Al. En.'
 006DFFE4    lea         eax,[ebp-0C8]
 006DFFEA    push        eax
 006DFFEB    mov         ecx,6E25D0;'sInpDayAndDelEnable'
 006DFFF0    mov         edx,6E2168;'InpFuncStrings'
 006DFFF5    mov         eax,dword ptr [ebp-8]
 006DFFF8    mov         ebx,dword ptr [eax]
 006DFFFA    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006DFFFD    mov         edx,dword ptr [ebp-0C8]
 006E0003    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006E0008    add         eax,2C
 006E000B    call        @UStrAsg
 006E0010    push        6E26F8;'General Silence Input'
 006E0015    lea         eax,[ebp-0CC]
 006E001B    push        eax
 006E001C    mov         ecx,6E2730;'sInpGeneralSilence'
 006E0021    mov         edx,6E2168;'InpFuncStrings'
 006E0026    mov         eax,dword ptr [ebp-8]
 006E0029    mov         ebx,dword ptr [eax]
 006E002B    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E002E    mov         edx,dword ptr [ebp-0CC]
 006E0034    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006E0039    add         eax,30
 006E003C    call        @UStrAsg
 006E0041    push        6E2764;'General Reset Input'
 006E0046    lea         eax,[ebp-0D0]
 006E004C    push        eax
 006E004D    mov         ecx,6E2798;'sInpGeneralReset'
 006E0052    mov         edx,6E2168;'InpFuncStrings'
 006E0057    mov         eax,dword ptr [ebp-8]
 006E005A    mov         ebx,dword ptr [eax]
 006E005C    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E005F    mov         edx,dword ptr [ebp-0D0]
 006E0065    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006E006A    add         eax,34
 006E006D    call        @UStrAsg
 006E0072    push        6E27C8;'Internal Logic Input'
 006E0077    lea         eax,[ebp-0D4]
 006E007D    push        eax
 006E007E    mov         ecx,6E2800;'sInpInternalLogic'
 006E0083    mov         edx,6E2168;'InpFuncStrings'
 006E0088    mov         eax,dword ptr [ebp-8]
 006E008B    mov         ebx,dword ptr [eax]
 006E008D    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0090    mov         edx,dword ptr [ebp-0D4]
 006E0096    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006E009B    add         eax,38
 006E009E    call        @UStrAsg
 006E00A3    push        6E2830;'External Logic Input'
 006E00A8    lea         eax,[ebp-0D8]
 006E00AE    push        eax
 006E00AF    mov         ecx,6E2868;'sInpExternalLogic'
 006E00B4    mov         edx,6E2168;'InpFuncStrings'
 006E00B9    mov         eax,dword ptr [ebp-8]
 006E00BC    mov         ebx,dword ptr [eax]
 006E00BE    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E00C1    mov         edx,dword ptr [ebp-0D8]
 006E00C7    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006E00CC    add         eax,3C
 006E00CF    call        @UStrAsg
 006E00D4    push        6E2898;'Extinguisher Activated'
 006E00D9    lea         eax,[ebp-0DC]
 006E00DF    push        eax
 006E00E0    mov         ecx,6E28D4;'sInpExtingActiv'
 006E00E5    mov         edx,6E2168;'InpFuncStrings'
 006E00EA    mov         eax,dword ptr [ebp-8]
 006E00ED    mov         ebx,dword ptr [eax]
 006E00EF    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E00F2    mov         edx,dword ptr [ebp-0DC]
 006E00F8    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006E00FD    add         eax,40
 006E0100    call        @UStrAsg
 006E0105    push        6E2900;'Smokeventil. Activated'
 006E010A    lea         eax,[ebp-0E0]
 006E0110    push        eax
 006E0111    mov         ecx,6E293C;'sInpSmokeVentActiv'
 006E0116    mov         edx,6E2168;'InpFuncStrings'
 006E011B    mov         eax,dword ptr [ebp-8]
 006E011E    mov         ebx,dword ptr [eax]
 006E0120    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0123    mov         edx,dword ptr [ebp-0E0]
 006E0129    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006E012E    add         eax,44
 006E0131    call        @UStrAsg
 006E0136    push        6E2970;'Custom. LED 1 Activation'
 006E013B    lea         eax,[ebp-0E4]
 006E0141    push        eax
 006E0142    mov         ecx,6E29B0;'sInpCustLED1Activ'
 006E0147    mov         edx,6E2168;'InpFuncStrings'
 006E014C    mov         eax,dword ptr [ebp-8]
 006E014F    mov         ebx,dword ptr [eax]
 006E0151    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0154    mov         edx,dword ptr [ebp-0E4]
 006E015A    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006E015F    add         eax,48
 006E0162    call        @UStrAsg
 006E0167    push        6E29E0;'Custom. LED 2 Activation'
 006E016C    lea         eax,[ebp-0E8]
 006E0172    push        eax
 006E0173    mov         ecx,6E2A20;'sInpCustLED2Activ'
 006E0178    mov         edx,6E2168;'InpFuncStrings'
 006E017D    mov         eax,dword ptr [ebp-8]
 006E0180    mov         ebx,dword ptr [eax]
 006E0182    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0185    mov         edx,dword ptr [ebp-0E8]
 006E018B    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006E0190    add         eax,4C
 006E0193    call        @UStrAsg
 006E0198    push        6E2604;'Start delay T2 for delayed alarm'
 006E019D    lea         eax,[ebp-0EC]
 006E01A3    push        eax
 006E01A4    mov         ecx,6E2654;'sInpDelAlarmStartT2'
 006E01A9    mov         edx,6E2168;'InpFuncStrings'
 006E01AE    mov         eax,dword ptr [ebp-8]
 006E01B1    mov         ebx,dword ptr [eax]
 006E01B3    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E01B6    mov         edx,dword ptr [ebp-0EC]
 006E01BC    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006E01C1    add         eax,50
 006E01C4    call        @UStrAsg
 006E01C9    push        6E2688;'Delayed alarm reset input'
 006E01CE    lea         eax,[ebp-0F0]
 006E01D4    push        eax
 006E01D5    mov         ecx,6E26C8;'sInpDelAlarmReset'
 006E01DA    mov         edx,6E2168;'InpFuncStrings'
 006E01DF    mov         eax,dword ptr [ebp-8]
 006E01E2    mov         ebx,dword ptr [eax]
 006E01E4    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E01E7    mov         edx,dword ptr [ebp-0F0]
 006E01ED    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006E01F2    add         eax,54
 006E01F5    call        @UStrAsg
 006E01FA    push        6E2C78;'Fire alarm device mute input'
 006E01FF    lea         eax,[ebp-0F4]
 006E0205    push        eax
 006E0206    mov         ecx,6E2CC0;'sInpAlarmDeviceMute'
 006E020B    mov         edx,6E2168;'InpFuncStrings'
 006E0210    mov         eax,dword ptr [ebp-8]
 006E0213    mov         ebx,dword ptr [eax]
 006E0215    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0218    mov         edx,dword ptr [ebp-0F4]
 006E021E    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006E0223    add         eax,58
 006E0226    call        @UStrAsg
 006E022B    push        6E2A50;'Local day mode activation input'
 006E0230    lea         eax,[ebp-0F8]
 006E0236    push        eax
 006E0237    mov         ecx,6E2A9C;'sInpLocDayMode'
 006E023C    mov         edx,6E2168;'InpFuncStrings'
 006E0241    mov         eax,dword ptr [ebp-8]
 006E0244    mov         ebx,dword ptr [eax]
 006E0246    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0249    mov         edx,dword ptr [ebp-0F8]
 006E024F    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006E0254    add         eax,5C
 006E0257    call        @UStrAsg
 006E025C    push        6E2AC8;'Local delayed alarm enable input'
 006E0261    lea         eax,[ebp-0FC]
 006E0267    push        eax
 006E0268    mov         ecx,6E2B18;'sInpLocDelAlarmEnable'
 006E026D    mov         edx,6E2168;'InpFuncStrings'
 006E0272    mov         eax,dword ptr [ebp-8]
 006E0275    mov         ebx,dword ptr [eax]
 006E0277    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E027A    mov         edx,dword ptr [ebp-0FC]
 006E0280    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006E0285    add         eax,60
 006E0288    call        @UStrAsg
 006E028D    push        6E2B50;'Local day mode and delayed alarm enable'
 006E0292    lea         eax,[ebp-100]
 006E0298    push        eax
 006E0299    mov         ecx,6E2BAC;'sInpLocDayAndDelEnable'
 006E029E    mov         edx,6E2168;'InpFuncStrings'
 006E02A3    mov         eax,dword ptr [ebp-8]
 006E02A6    mov         ebx,dword ptr [eax]
 006E02A8    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E02AB    mov         edx,dword ptr [ebp-100]
 006E02B1    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006E02B6    add         eax,64
 006E02B9    call        @UStrAsg
 006E02BE    push        6E2BE8;'Local fire alarm device mute input'
 006E02C3    lea         eax,[ebp-104]
 006E02C9    push        eax
 006E02CA    mov         ecx,6E2C3C;'sInpLocAlarmDeviceMute'
 006E02CF    mov         edx,6E2168;'InpFuncStrings'
 006E02D4    mov         eax,dword ptr [ebp-8]
 006E02D7    mov         ebx,dword ptr [eax]
 006E02D9    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E02DC    mov         edx,dword ptr [ebp-104]
 006E02E2    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006E02E7    add         eax,68
 006E02EA    call        @UStrAsg
 006E02EF    push        6E2CF4;'Local evacuation input'
 006E02F4    lea         eax,[ebp-108]
 006E02FA    push        eax
 006E02FB    mov         ecx,6E2D30;'sInpLocEvacuation'
 006E0300    mov         edx,6E2168;'InpFuncStrings'
 006E0305    mov         eax,dword ptr [ebp-8]
 006E0308    mov         ebx,dword ptr [eax]
 006E030A    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E030D    mov         edx,dword ptr [ebp-108]
 006E0313    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006E0318    add         eax,6C
 006E031B    call        @UStrAsg
 006E0320    push        6E2D60;'Voice Evacuation Fault Input'
 006E0325    lea         eax,[ebp-10C]
 006E032B    push        eax
 006E032C    mov         ecx,6E2DA8;'sInpEvacuationFault'
 006E0331    mov         edx,6E2168;'InpFuncStrings'
 006E0336    mov         eax,dword ptr [ebp-8]
 006E0339    mov         ebx,dword ptr [eax]
 006E033B    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E033E    mov         edx,dword ptr [ebp-10C]
 006E0344    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 006E0349    add         eax,70
 006E034C    call        @UStrAsg
 006E0351    push        6E2DDC;'NO'
 006E0356    lea         eax,[ebp-110]
 006E035C    push        eax
 006E035D    mov         ecx,6E2DF0;'sCCINO'
 006E0362    mov         edx,6E1E30;'FXPDFrame'
 006E0367    mov         eax,dword ptr [ebp-8]
 006E036A    mov         ebx,dword ptr [eax]
 006E036C    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E036F    mov         edx,dword ptr [ebp-110]
 006E0375    mov         eax,dword ptr [ebp-4]
 006E0378    mov         eax,dword ptr [eax+570];TFXPDFrame.NormallyOpenNO1:TMenuItem
 006E037E    call        TMenuItem.SetCaption
 006E0383    push        6E2E0C;'NC'
 006E0388    lea         eax,[ebp-114]
 006E038E    push        eax
 006E038F    mov         ecx,6E2E20;'sCCINC'
 006E0394    mov         edx,6E1E30;'FXPDFrame'
 006E0399    mov         eax,dword ptr [ebp-8]
 006E039C    mov         ebx,dword ptr [eax]
 006E039E    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E03A1    mov         edx,dword ptr [ebp-114]
 006E03A7    mov         eax,dword ptr [ebp-4]
 006E03AA    mov         eax,dword ptr [eax+574];TFXPDFrame.NormallyClosedNC1:TMenuItem
 006E03B0    call        TMenuItem.SetCaption
 006E03B5    push        6E2DDC;'NO'
 006E03BA    lea         eax,[ebp-118]
 006E03C0    push        eax
 006E03C1    mov         ecx,6E2DF0;'sCCINO'
 006E03C6    mov         edx,6E1E30;'FXPDFrame'
 006E03CB    mov         eax,dword ptr [ebp-8]
 006E03CE    mov         ebx,dword ptr [eax]
 006E03D0    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E03D3    mov         edx,dword ptr [ebp-118]
 006E03D9    mov         eax,[007C47DC];^^"'NO'":array[2] of ?
 006E03DE    call        @UStrAsg
 006E03E3    push        6E2E0C;'NC'
 006E03E8    lea         eax,[ebp-11C]
 006E03EE    push        eax
 006E03EF    mov         ecx,6E2E20;'sCCINC'
 006E03F4    mov         edx,6E1E30;'FXPDFrame'
 006E03F9    mov         eax,dword ptr [ebp-8]
 006E03FC    mov         ebx,dword ptr [eax]
 006E03FE    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0401    mov         edx,dword ptr [ebp-11C]
 006E0407    mov         eax,[007C47DC];^^"'NO'":array[2] of ?
 006E040C    add         eax,4
 006E040F    call        @UStrAsg
 006E0414    push        6E211C;'Not in use'
 006E0419    lea         eax,[ebp-120]
 006E041F    push        eax
 006E0420    mov         ecx,6E2E3C;'sOutNotInUse'
 006E0425    mov         edx,6E2E64;'OutFuncStrings'
 006E042A    mov         eax,dword ptr [ebp-8]
 006E042D    mov         ebx,dword ptr [eax]
 006E042F    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0432    mov         edx,dword ptr [ebp-120]
 006E0438    mov         eax,dword ptr [ebp-4]
 006E043B    mov         eax,dword ptr [eax+7A0];TFXPDFrame.miOutNotUsed:TMenuItem
 006E0441    call        TMenuItem.SetCaption
 006E0446    push        6E2E90;'Fire Alarm Output'
 006E044B    lea         eax,[ebp-124]
 006E0451    push        eax
 006E0452    mov         ecx,6E2EC0;'sOutFireAlarm'
 006E0457    mov         edx,6E2E64;'OutFuncStrings'
 006E045C    mov         eax,dword ptr [ebp-8]
 006E045F    mov         ebx,dword ptr [eax]
 006E0461    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0464    mov         edx,dword ptr [ebp-124]
 006E046A    mov         eax,dword ptr [ebp-4]
 006E046D    mov         eax,dword ptr [eax+7A4];TFXPDFrame.miOutFireAlarm:TMenuItem
 006E0473    call        TMenuItem.SetCaption
 006E0478    push        6E2EE8;'Delayed Fire Alarm outp.'
 006E047D    lea         eax,[ebp-128]
 006E0483    push        eax
 006E0484    mov         ecx,6E2F28;'sOutDelFireAlarm'
 006E0489    mov         edx,6E2E64;'OutFuncStrings'
 006E048E    mov         eax,dword ptr [ebp-8]
 006E0491    mov         ebx,dword ptr [eax]
 006E0493    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0496    mov         edx,dword ptr [ebp-128]
 006E049C    mov         eax,dword ptr [ebp-4]
 006E049F    mov         eax,dword ptr [eax+7A8];TFXPDFrame.miOutDelFireAlarm:TMenuItem
 006E04A5    call        TMenuItem.SetCaption
 006E04AA    push        6E2F58;'Delayed fire alarm T2 output'
 006E04AF    lea         eax,[ebp-12C]
 006E04B5    push        eax
 006E04B6    mov         ecx,6E2FA0;'sOutDelFireAlarmT2'
 006E04BB    mov         edx,6E2E64;'OutFuncStrings'
 006E04C0    mov         eax,dword ptr [ebp-8]
 006E04C3    mov         ebx,dword ptr [eax]
 006E04C5    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E04C8    mov         edx,dword ptr [ebp-12C]
 006E04CE    mov         eax,dword ptr [ebp-4]
 006E04D1    mov         eax,dword ptr [eax+7AC];TFXPDFrame.miOutDelFireAlarmT2:TMenuItem
 006E04D7    call        TMenuItem.SetCaption
 006E04DC    push        6E2FD4;'Fire Door Output'
 006E04E1    lea         eax,[ebp-130]
 006E04E7    push        eax
 006E04E8    mov         ecx,6E3004;'sOutFireDoor'
 006E04ED    mov         edx,6E2E64;'OutFuncStrings'
 006E04F2    mov         eax,dword ptr [ebp-8]
 006E04F5    mov         ebx,dword ptr [eax]
 006E04F7    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E04FA    mov         edx,dword ptr [ebp-130]
 006E0500    mov         eax,dword ptr [ebp-4]
 006E0503    mov         eax,dword ptr [eax+7B0];TFXPDFrame.miOutFireDoor:TMenuItem
 006E0509    call        TMenuItem.SetCaption
 006E050E    push        6E302C;'Extinguisher Output'
 006E0513    lea         eax,[ebp-134]
 006E0519    push        eax
 006E051A    mov         ecx,6E3060;'sOutExtinguisher'
 006E051F    mov         edx,6E2E64;'OutFuncStrings'
 006E0524    mov         eax,dword ptr [ebp-8]
 006E0527    mov         ebx,dword ptr [eax]
 006E0529    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E052C    mov         edx,dword ptr [ebp-134]
 006E0532    mov         eax,dword ptr [ebp-4]
 006E0535    mov         eax,dword ptr [eax+7B4];TFXPDFrame.miOutExtinguisher:TMenuItem
 006E053B    call        TMenuItem.SetCaption
 006E0540    push        6E3090;'Fire alarm router output'
 006E0545    lea         eax,[ebp-138]
 006E054B    push        eax
 006E054C    mov         ecx,6E30D0;'sOutFARE'
 006E0551    mov         edx,6E2E64;'OutFuncStrings'
 006E0556    mov         eax,dword ptr [ebp-8]
 006E0559    mov         ebx,dword ptr [eax]
 006E055B    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E055E    mov         edx,dword ptr [ebp-138]
 006E0564    mov         eax,dword ptr [ebp-4]
 006E0567    mov         eax,dword ptr [eax+7B8];TFXPDFrame.miOutFARE:TMenuItem
 006E056D    call        TMenuItem.SetCaption
 006E0572    push        6E30F0;'FA Transmitter Activ.LED'
 006E0577    lea         eax,[ebp-13C]
 006E057D    push        eax
 006E057E    mov         ecx,6E3130;'sOutFAREActivLed'
 006E0583    mov         edx,6E2E64;'OutFuncStrings'
 006E0588    mov         eax,dword ptr [ebp-8]
 006E058B    mov         ebx,dword ptr [eax]
 006E058D    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0590    mov         edx,dword ptr [ebp-13C]
 006E0596    mov         eax,dword ptr [ebp-4]
 006E0599    mov         eax,dword ptr [eax+7BC];TFXPDFrame.miOutFARELed:TMenuItem
 006E059F    call        TMenuItem.SetCaption
 006E05A4    push        6E3160;'Fault warning router output'
 006E05A9    lea         eax,[ebp-140]
 006E05AF    push        eax
 006E05B0    mov         ecx,6E31A4;'sOutFWRE'
 006E05B5    mov         edx,6E2E64;'OutFuncStrings'
 006E05BA    mov         eax,dword ptr [ebp-8]
 006E05BD    mov         ebx,dword ptr [eax]
 006E05BF    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E05C2    mov         edx,dword ptr [ebp-140]
 006E05C8    mov         eax,dword ptr [ebp-4]
 006E05CB    mov         eax,dword ptr [eax+7C0];TFXPDFrame.miOutFWRE:TMenuItem
 006E05D1    call        TMenuItem.SetCaption
 006E05D6    push        6E31C4;'Prealarm Output'
 006E05DB    lea         eax,[ebp-144]
 006E05E1    push        eax
 006E05E2    mov         ecx,6E31F0;'sOutPrewarning'
 006E05E7    mov         edx,6E2E64;'OutFuncStrings'
 006E05EC    mov         eax,dword ptr [ebp-8]
 006E05EF    mov         ebx,dword ptr [eax]
 006E05F1    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E05F4    mov         edx,dword ptr [ebp-144]
 006E05FA    mov         eax,dword ptr [ebp-4]
 006E05FD    mov         eax,dword ptr [eax+7CC];TFXPDFrame.miOutPrewarning:TMenuItem
 006E0603    call        TMenuItem.SetCaption
 006E0608    push        6E321C;'Fault Warning Output'
 006E060D    lea         eax,[ebp-148]
 006E0613    push        eax
 006E0614    mov         ecx,6E3254;'sOutFaultWarning'
 006E0619    mov         edx,6E2E64;'OutFuncStrings'
 006E061E    mov         eax,dword ptr [ebp-8]
 006E0621    mov         ebx,dword ptr [eax]
 006E0623    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0626    mov         edx,dword ptr [ebp-148]
 006E062C    mov         eax,dword ptr [ebp-4]
 006E062F    mov         eax,dword ptr [eax+7D0];TFXPDFrame.miOutFaultWarning:TMenuItem
 006E0635    call        TMenuItem.SetCaption
 006E063A    push        6E3284;'Maintenance Warning Outp'
 006E063F    lea         eax,[ebp-14C]
 006E0645    push        eax
 006E0646    mov         ecx,6E32C4;'sOutMaintWarning'
 006E064B    mov         edx,6E2E64;'OutFuncStrings'
 006E0650    mov         eax,dword ptr [ebp-8]
 006E0653    mov         ebx,dword ptr [eax]
 006E0655    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0658    mov         edx,dword ptr [ebp-14C]
 006E065E    mov         eax,dword ptr [ebp-4]
 006E0661    mov         eax,dword ptr [eax+7D4];TFXPDFrame.miOutMaintWarning:TMenuItem
 006E0667    call        TMenuItem.SetCaption
 006E066C    push        6E32F4;'Disablement Output'
 006E0671    lea         eax,[ebp-150]
 006E0677    push        eax
 006E0678    mov         ecx,6E3328;'sOutDisablement'
 006E067D    mov         edx,6E2E64;'OutFuncStrings'
 006E0682    mov         eax,dword ptr [ebp-8]
 006E0685    mov         ebx,dword ptr [eax]
 006E0687    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E068A    mov         edx,dword ptr [ebp-150]
 006E0690    mov         eax,dword ptr [ebp-4]
 006E0693    mov         eax,dword ptr [eax+7D8];TFXPDFrame.miOutDisablement:TMenuItem
 006E0699    call        TMenuItem.SetCaption
 006E069E    push        6E3354;'Access Level Output'
 006E06A3    lea         eax,[ebp-154]
 006E06A9    push        eax
 006E06AA    mov         ecx,6E3388;'sOutAccessLevel'
 006E06AF    mov         edx,6E2E64;'OutFuncStrings'
 006E06B4    mov         eax,dword ptr [ebp-8]
 006E06B7    mov         ebx,dword ptr [eax]
 006E06B9    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E06BC    mov         edx,dword ptr [ebp-154]
 006E06C2    mov         eax,dword ptr [ebp-4]
 006E06C5    mov         eax,dword ptr [eax+7DC];TFXPDFrame.miOutAccessLevel:TMenuItem
 006E06CB    call        TMenuItem.SetCaption
 006E06D0    push        6E33B4;'Technical Alarm Output'
 006E06D5    lea         eax,[ebp-158]
 006E06DB    push        eax
 006E06DC    mov         ecx,6E33F0;'sOutTechAlarm'
 006E06E1    mov         edx,6E2E64;'OutFuncStrings'
 006E06E6    mov         eax,dword ptr [ebp-8]
 006E06E9    mov         ebx,dword ptr [eax]
 006E06EB    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E06EE    mov         edx,dword ptr [ebp-158]
 006E06F4    mov         eax,dword ptr [ebp-4]
 006E06F7    mov         eax,dword ptr [eax+7E0];TFXPDFrame.miOutTechAlarm:TMenuItem
 006E06FD    call        TMenuItem.SetCaption
 006E0702    push        6E3418;'General Reset Output'
 006E0707    lea         eax,[ebp-15C]
 006E070D    push        eax
 006E070E    mov         ecx,6E3450;'sOutGeneralReset'
 006E0713    mov         edx,6E2E64;'OutFuncStrings'
 006E0718    mov         eax,dword ptr [ebp-8]
 006E071B    mov         ebx,dword ptr [eax]
 006E071D    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0720    mov         edx,dword ptr [ebp-15C]
 006E0726    mov         eax,dword ptr [ebp-4]
 006E0729    mov         eax,dword ptr [eax+810];TFXPDFrame.miOutGeneralReset:TMenuItem
 006E072F    call        TMenuItem.SetCaption
 006E0734    push        6E3480;'Internal Logic Output'
 006E0739    lea         eax,[ebp-160]
 006E073F    push        eax
 006E0740    mov         ecx,6E34B8;'sOutInternalLogic'
 006E0745    mov         edx,6E2E64;'OutFuncStrings'
 006E074A    mov         eax,dword ptr [ebp-8]
 006E074D    mov         ebx,dword ptr [eax]
 006E074F    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0752    mov         edx,dword ptr [ebp-160]
 006E0758    mov         eax,dword ptr [ebp-4]
 006E075B    mov         eax,dword ptr [eax+7E4];TFXPDFrame.miOutInternalLogic:TMenuItem
 006E0761    call        TMenuItem.SetCaption
 006E0766    push        6E34E8;'External Logic Output'
 006E076B    lea         eax,[ebp-164]
 006E0771    push        eax
 006E0772    mov         ecx,6E3520;'sOutExternalLogic'
 006E0777    mov         edx,6E2E64;'OutFuncStrings'
 006E077C    mov         eax,dword ptr [ebp-8]
 006E077F    mov         ebx,dword ptr [eax]
 006E0781    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0784    mov         edx,dword ptr [ebp-164]
 006E078A    mov         eax,dword ptr [ebp-4]
 006E078D    mov         eax,dword ptr [eax+7E8];TFXPDFrame.miOutExternalLogic:TMenuItem
 006E0793    call        TMenuItem.SetCaption
 006E0798    push        6E3550;'Fire Alarm Devices'
 006E079D    lea         eax,[ebp-168]
 006E07A3    push        eax
 006E07A4    mov         ecx,6E3584;'sOutFireAD'
 006E07A9    mov         edx,6E2E64;'OutFuncStrings'
 006E07AE    mov         eax,dword ptr [ebp-8]
 006E07B1    mov         ebx,dword ptr [eax]
 006E07B3    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E07B6    mov         edx,dword ptr [ebp-168]
 006E07BC    mov         eax,dword ptr [ebp-4]
 006E07BF    mov         eax,dword ptr [eax+7EC];TFXPDFrame.miOutFireAlarmDevice:TMenuItem
 006E07C5    call        TMenuItem.SetCaption
 006E07CA    push        6E35A8;'Fire Alarm Devices Non-S'
 006E07CF    lea         eax,[ebp-16C]
 006E07D5    push        eax
 006E07D6    mov         ecx,6E35E8;'sOutFireAdNS'
 006E07DB    mov         edx,6E2E64;'OutFuncStrings'
 006E07E0    mov         eax,dword ptr [ebp-8]
 006E07E3    mov         ebx,dword ptr [eax]
 006E07E5    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E07E8    mov         edx,dword ptr [ebp-16C]
 006E07EE    mov         eax,dword ptr [ebp-4]
 006E07F1    mov         eax,dword ptr [eax+7F0];TFXPDFrame.miOutFireAlarmDeviceNS:TMenuItem
 006E07F7    call        TMenuItem.SetCaption
 006E07FC    push        6E3610;'Fire Alarm Devices Lev.1 Silenceable'
 006E0801    lea         eax,[ebp-170]
 006E0807    push        eax
 006E0808    mov         ecx,6E3668;'sOutFireAdL1Sil'
 006E080D    mov         edx,6E2E64;'OutFuncStrings'
 006E0812    mov         eax,dword ptr [ebp-8]
 006E0815    mov         ebx,dword ptr [eax]
 006E0817    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E081A    mov         edx,dword ptr [ebp-170]
 006E0820    mov         eax,dword ptr [ebp-4]
 006E0823    mov         eax,dword ptr [eax+808];TFXPDFrame.miOutLevel1Silencable:TMenuItem
 006E0829    call        TMenuItem.SetCaption
 006E082E    push        6E3694;'Fault Warning Alarm Dev.'
 006E0833    lea         eax,[ebp-174]
 006E0839    push        eax
 006E083A    mov         ecx,6E36D4;'sOutFaultWD'
 006E083F    mov         edx,6E2E64;'OutFuncStrings'
 006E0844    mov         eax,dword ptr [ebp-8]
 006E0847    mov         ebx,dword ptr [eax]
 006E0849    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E084C    mov         edx,dword ptr [ebp-174]
 006E0852    mov         eax,dword ptr [ebp-4]
 006E0855    mov         eax,dword ptr [eax+7F8];TFXPDFrame.miOutFWD:TMenuItem
 006E085B    call        TMenuItem.SetCaption
 006E0860    push        6E36F8;'Voice Evacuation Activate output'
 006E0865    lea         eax,[ebp-178]
 006E086B    push        eax
 006E086C    mov         ecx,6E3748;'sOutVEActivate'
 006E0871    mov         edx,6E2E64;'OutFuncStrings'
 006E0876    mov         eax,dword ptr [ebp-8]
 006E0879    mov         ebx,dword ptr [eax]
 006E087B    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E087E    mov         edx,dword ptr [ebp-178]
 006E0884    mov         eax,dword ptr [ebp-4]
 006E0887    mov         eax,dword ptr [eax+800];TFXPDFrame.miOutVEActivate1:TMenuItem
 006E088D    call        TMenuItem.SetCaption
 006E0892    push        6E3774;'Voice Evacuation Test output'
 006E0897    lea         eax,[ebp-17C]
 006E089D    push        eax
 006E089E    mov         ecx,6E37BC;'sOutVETest'
 006E08A3    mov         edx,6E2E64;'OutFuncStrings'
 006E08A8    mov         eax,dword ptr [ebp-8]
 006E08AB    mov         ebx,dword ptr [eax]
 006E08AD    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E08B0    mov         edx,dword ptr [ebp-17C]
 006E08B6    mov         eax,dword ptr [ebp-4]
 006E08B9    mov         eax,dword ptr [eax+804];TFXPDFrame.miOutVETest1:TMenuItem
 006E08BF    call        TMenuItem.SetCaption
 006E08C4    push        6E37E0;'Delayed Alarm Enabled Output'
 006E08C9    lea         eax,[ebp-180]
 006E08CF    push        eax
 006E08D0    mov         ecx,6E3828;'sOutDelAlarmEnabled'
 006E08D5    mov         edx,6E2E64;'OutFuncStrings'
 006E08DA    mov         eax,dword ptr [ebp-8]
 006E08DD    mov         ebx,dword ptr [eax]
 006E08DF    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E08E2    mov         edx,dword ptr [ebp-180]
 006E08E8    mov         eax,dword ptr [ebp-4]
 006E08EB    mov         eax,dword ptr [eax+838];TFXPDFrame.miDelAlarmEnabled:TMenuItem
 006E08F1    call        TMenuItem.SetCaption
 006E08F6    push        6E385C;'Fire router disabled output'
 006E08FB    lea         eax,[ebp-184]
 006E0901    push        eax
 006E0902    mov         ecx,6E38A0;'sOutFireRouterDisabled'
 006E0907    mov         edx,6E2E64;'OutFuncStrings'
 006E090C    mov         eax,dword ptr [ebp-8]
 006E090F    mov         ebx,dword ptr [eax]
 006E0911    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0914    mov         edx,dword ptr [ebp-184]
 006E091A    mov         eax,dword ptr [ebp-4]
 006E091D    mov         eax,dword ptr [eax+83C];TFXPDFrame.miFireRouterDisabledOutput:TMenuItem
 006E0923    call        TMenuItem.SetCaption
 006E0928    push        6E38DC;'Fault router disabled output'
 006E092D    lea         eax,[ebp-188]
 006E0933    push        eax
 006E0934    mov         ecx,6E3924;'sOutFaultRouterDisabled'
 006E0939    mov         edx,6E2E64;'OutFuncStrings'
 006E093E    mov         eax,dword ptr [ebp-8]
 006E0941    mov         ebx,dword ptr [eax]
 006E0943    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0946    mov         edx,dword ptr [ebp-188]
 006E094C    mov         eax,dword ptr [ebp-4]
 006E094F    mov         eax,dword ptr [eax+840];TFXPDFrame.miFaultRouterDisabledOutput:TMenuItem
 006E0955    call        TMenuItem.SetCaption
 006E095A    push        6E3960;'Main Supply Fault Output'
 006E095F    lea         eax,[ebp-18C]
 006E0965    push        eax
 006E0966    mov         ecx,6E39A0;'sOutMainSupplyFault'
 006E096B    mov         edx,6E2E64;'OutFuncStrings'
 006E0970    mov         eax,dword ptr [ebp-8]
 006E0973    mov         ebx,dword ptr [eax]
 006E0975    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0978    mov         edx,dword ptr [ebp-18C]
 006E097E    mov         eax,dword ptr [ebp-4]
 006E0981    mov         eax,dword ptr [eax+844];TFXPDFrame.miOutMainSupplyFault:TMenuItem
 006E0987    call        TMenuItem.SetCaption
 006E098C    push        6E211C;'Not in use'
 006E0991    lea         eax,[ebp-190]
 006E0997    push        eax
 006E0998    mov         ecx,6E2E3C;'sOutNotInUse'
 006E099D    mov         edx,6E2E64;'OutFuncStrings'
 006E09A2    mov         eax,dword ptr [ebp-8]
 006E09A5    mov         ebx,dword ptr [eax]
 006E09A7    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E09AA    mov         edx,dword ptr [ebp-190]
 006E09B0    mov         eax,[007C4D58];^gvar_007C2948:array[26] of ?
 006E09B5    call        @UStrAsg
 006E09BA    push        6E2E90;'Fire Alarm Output'
 006E09BF    lea         eax,[ebp-194]
 006E09C5    push        eax
 006E09C6    mov         ecx,6E2EC0;'sOutFireAlarm'
 006E09CB    mov         edx,6E2E64;'OutFuncStrings'
 006E09D0    mov         eax,dword ptr [ebp-8]
 006E09D3    mov         ebx,dword ptr [eax]
 006E09D5    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E09D8    mov         edx,dword ptr [ebp-194]
 006E09DE    mov         eax,[007C4D58];^gvar_007C2948:array[26] of ?
 006E09E3    add         eax,4
 006E09E6    call        @UStrAsg
 006E09EB    push        6E2EE8;'Delayed Fire Alarm outp.'
 006E09F0    lea         eax,[ebp-198]
 006E09F6    push        eax
 006E09F7    mov         ecx,6E2F28;'sOutDelFireAlarm'
 006E09FC    mov         edx,6E2E64;'OutFuncStrings'
 006E0A01    mov         eax,dword ptr [ebp-8]
 006E0A04    mov         ebx,dword ptr [eax]
 006E0A06    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0A09    mov         edx,dword ptr [ebp-198]
 006E0A0F    mov         eax,[007C4D58];^gvar_007C2948:array[26] of ?
 006E0A14    add         eax,8
 006E0A17    call        @UStrAsg
 006E0A1C    push        6E2FD4;'Fire Door Output'
 006E0A21    lea         eax,[ebp-19C]
 006E0A27    push        eax
 006E0A28    mov         ecx,6E3004;'sOutFireDoor'
 006E0A2D    mov         edx,6E2E64;'OutFuncStrings'
 006E0A32    mov         eax,dword ptr [ebp-8]
 006E0A35    mov         ebx,dword ptr [eax]
 006E0A37    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0A3A    mov         edx,dword ptr [ebp-19C]
 006E0A40    mov         eax,[007C4D58];^gvar_007C2948:array[26] of ?
 006E0A45    add         eax,0C
 006E0A48    call        @UStrAsg
 006E0A4D    push        6E302C;'Extinguisher Output'
 006E0A52    lea         eax,[ebp-1A0]
 006E0A58    push        eax
 006E0A59    mov         ecx,6E3060;'sOutExtinguisher'
 006E0A5E    mov         edx,6E2E64;'OutFuncStrings'
 006E0A63    mov         eax,dword ptr [ebp-8]
 006E0A66    mov         ebx,dword ptr [eax]
 006E0A68    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0A6B    mov         edx,dword ptr [ebp-1A0]
 006E0A71    mov         eax,[007C4D58];^gvar_007C2948:array[26] of ?
 006E0A76    add         eax,10
 006E0A79    call        @UStrAsg
 006E0A7E    push        6E3090;'Fire alarm router output'
 006E0A83    lea         eax,[ebp-1A4]
 006E0A89    push        eax
 006E0A8A    mov         ecx,6E30D0;'sOutFARE'
 006E0A8F    mov         edx,6E2E64;'OutFuncStrings'
 006E0A94    mov         eax,dword ptr [ebp-8]
 006E0A97    mov         ebx,dword ptr [eax]
 006E0A99    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0A9C    mov         edx,dword ptr [ebp-1A4]
 006E0AA2    mov         eax,[007C4D58];^gvar_007C2948:array[26] of ?
 006E0AA7    add         eax,14
 006E0AAA    call        @UStrAsg
 006E0AAF    push        6E3160;'Fault warning router output'
 006E0AB4    lea         eax,[ebp-1A8]
 006E0ABA    push        eax
 006E0ABB    mov         ecx,6E31A4;'sOutFWRE'
 006E0AC0    mov         edx,6E2E64;'OutFuncStrings'
 006E0AC5    mov         eax,dword ptr [ebp-8]
 006E0AC8    mov         ebx,dword ptr [eax]
 006E0ACA    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0ACD    mov         edx,dword ptr [ebp-1A8]
 006E0AD3    mov         eax,[007C4D58];^gvar_007C2948:array[26] of ?
 006E0AD8    add         eax,18
 006E0ADB    call        @UStrAsg
 006E0AE0    push        6E31C4;'Prealarm Output'
 006E0AE5    lea         eax,[ebp-1AC]
 006E0AEB    push        eax
 006E0AEC    mov         ecx,6E31F0;'sOutPrewarning'
 006E0AF1    mov         edx,6E2E64;'OutFuncStrings'
 006E0AF6    mov         eax,dword ptr [ebp-8]
 006E0AF9    mov         ebx,dword ptr [eax]
 006E0AFB    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0AFE    mov         edx,dword ptr [ebp-1AC]
 006E0B04    mov         eax,[007C4D58];^gvar_007C2948:array[26] of ?
 006E0B09    add         eax,24
 006E0B0C    call        @UStrAsg
 006E0B11    push        6E321C;'Fault Warning Output'
 006E0B16    lea         eax,[ebp-1B0]
 006E0B1C    push        eax
 006E0B1D    mov         ecx,6E3254;'sOutFaultWarning'
 006E0B22    mov         edx,6E2E64;'OutFuncStrings'
 006E0B27    mov         eax,dword ptr [ebp-8]
 006E0B2A    mov         ebx,dword ptr [eax]
 006E0B2C    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0B2F    mov         edx,dword ptr [ebp-1B0]
 006E0B35    mov         eax,[007C4D58];^gvar_007C2948:array[26] of ?
 006E0B3A    add         eax,28
 006E0B3D    call        @UStrAsg
 006E0B42    push        6E3284;'Maintenance Warning Outp'
 006E0B47    lea         eax,[ebp-1B4]
 006E0B4D    push        eax
 006E0B4E    mov         ecx,6E32C4;'sOutMaintWarning'
 006E0B53    mov         edx,6E2E64;'OutFuncStrings'
 006E0B58    mov         eax,dword ptr [ebp-8]
 006E0B5B    mov         ebx,dword ptr [eax]
 006E0B5D    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0B60    mov         edx,dword ptr [ebp-1B4]
 006E0B66    mov         eax,[007C4D58];^gvar_007C2948:array[26] of ?
 006E0B6B    add         eax,2C
 006E0B6E    call        @UStrAsg
 006E0B73    push        6E32F4;'Disablement Output'
 006E0B78    lea         eax,[ebp-1B8]
 006E0B7E    push        eax
 006E0B7F    mov         ecx,6E3328;'sOutDisablement'
 006E0B84    mov         edx,6E2E64;'OutFuncStrings'
 006E0B89    mov         eax,dword ptr [ebp-8]
 006E0B8C    mov         ebx,dword ptr [eax]
 006E0B8E    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0B91    mov         edx,dword ptr [ebp-1B8]
 006E0B97    mov         eax,[007C4D58];^gvar_007C2948:array[26] of ?
 006E0B9C    add         eax,30
 006E0B9F    call        @UStrAsg
 006E0BA4    push        6E3354;'Access Level Output'
 006E0BA9    lea         eax,[ebp-1BC]
 006E0BAF    push        eax
 006E0BB0    mov         ecx,6E3388;'sOutAccessLevel'
 006E0BB5    mov         edx,6E2E64;'OutFuncStrings'
 006E0BBA    mov         eax,dword ptr [ebp-8]
 006E0BBD    mov         ebx,dword ptr [eax]
 006E0BBF    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0BC2    mov         edx,dword ptr [ebp-1BC]
 006E0BC8    mov         eax,[007C4D58];^gvar_007C2948:array[26] of ?
 006E0BCD    add         eax,34
 006E0BD0    call        @UStrAsg
 006E0BD5    push        6E33B4;'Technical Alarm Output'
 006E0BDA    lea         eax,[ebp-1C0]
 006E0BE0    push        eax
 006E0BE1    mov         ecx,6E33F0;'sOutTechAlarm'
 006E0BE6    mov         edx,6E2E64;'OutFuncStrings'
 006E0BEB    mov         eax,dword ptr [ebp-8]
 006E0BEE    mov         ebx,dword ptr [eax]
 006E0BF0    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0BF3    mov         edx,dword ptr [ebp-1C0]
 006E0BF9    mov         eax,[007C4D58];^gvar_007C2948:array[26] of ?
 006E0BFE    add         eax,38
 006E0C01    call        @UStrAsg
 006E0C06    push        6E3418;'General Reset Output'
 006E0C0B    lea         eax,[ebp-1C4]
 006E0C11    push        eax
 006E0C12    mov         ecx,6E3450;'sOutGeneralReset'
 006E0C17    mov         edx,6E2E64;'OutFuncStrings'
 006E0C1C    mov         eax,dword ptr [ebp-8]
 006E0C1F    mov         ebx,dword ptr [eax]
 006E0C21    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0C24    mov         edx,dword ptr [ebp-1C4]
 006E0C2A    mov         eax,[007C4D58];^gvar_007C2948:array[26] of ?
 006E0C2F    add         eax,54
 006E0C32    call        @UStrAsg
 006E0C37    push        6E3480;'Internal Logic Output'
 006E0C3C    lea         eax,[ebp-1C8]
 006E0C42    push        eax
 006E0C43    mov         ecx,6E34B8;'sOutInternalLogic'
 006E0C48    mov         edx,6E2E64;'OutFuncStrings'
 006E0C4D    mov         eax,dword ptr [ebp-8]
 006E0C50    mov         ebx,dword ptr [eax]
 006E0C52    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0C55    mov         edx,dword ptr [ebp-1C8]
 006E0C5B    mov         eax,[007C4D58];^gvar_007C2948:array[26] of ?
 006E0C60    add         eax,3C
 006E0C63    call        @UStrAsg
 006E0C68    push        6E34E8;'External Logic Output'
 006E0C6D    lea         eax,[ebp-1CC]
 006E0C73    push        eax
 006E0C74    mov         ecx,6E3520;'sOutExternalLogic'
 006E0C79    mov         edx,6E2E64;'OutFuncStrings'
 006E0C7E    mov         eax,dword ptr [ebp-8]
 006E0C81    mov         ebx,dword ptr [eax]
 006E0C83    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0C86    mov         edx,dword ptr [ebp-1CC]
 006E0C8C    mov         eax,[007C4D58];^gvar_007C2948:array[26] of ?
 006E0C91    add         eax,40
 006E0C94    call        @UStrAsg
 006E0C99    push        6E30F0;'FA Transmitter Activ.LED'
 006E0C9E    lea         eax,[ebp-1D0]
 006E0CA4    push        eax
 006E0CA5    mov         ecx,6E3130;'sOutFAREActivLed'
 006E0CAA    mov         edx,6E2E64;'OutFuncStrings'
 006E0CAF    mov         eax,dword ptr [ebp-8]
 006E0CB2    mov         ebx,dword ptr [eax]
 006E0CB4    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0CB7    mov         edx,dword ptr [ebp-1D0]
 006E0CBD    mov         eax,[007C4D58];^gvar_007C2948:array[26] of ?
 006E0CC2    add         eax,44
 006E0CC5    call        @UStrAsg
 006E0CCA    push        6E2F58;'Delayed fire alarm T2 output'
 006E0CCF    lea         eax,[ebp-1D4]
 006E0CD5    push        eax
 006E0CD6    mov         ecx,6E2FA0;'sOutDelFireAlarmT2'
 006E0CDB    mov         edx,6E2E64;'OutFuncStrings'
 006E0CE0    mov         eax,dword ptr [ebp-8]
 006E0CE3    mov         ebx,dword ptr [eax]
 006E0CE5    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0CE8    mov         edx,dword ptr [ebp-1D4]
 006E0CEE    mov         eax,[007C4D58];^gvar_007C2948:array[26] of ?
 006E0CF3    add         eax,48
 006E0CF6    call        @UStrAsg
 006E0CFB    push        6E36F8;'Voice Evacuation Activate output'
 006E0D00    lea         eax,[ebp-1D8]
 006E0D06    push        eax
 006E0D07    mov         ecx,6E3748;'sOutVEActivate'
 006E0D0C    mov         edx,6E2E64;'OutFuncStrings'
 006E0D11    mov         eax,dword ptr [ebp-8]
 006E0D14    mov         ebx,dword ptr [eax]
 006E0D16    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0D19    mov         edx,dword ptr [ebp-1D8]
 006E0D1F    mov         eax,[007C4D58];^gvar_007C2948:array[26] of ?
 006E0D24    add         eax,4C
 006E0D27    call        @UStrAsg
 006E0D2C    push        6E3774;'Voice Evacuation Test output'
 006E0D31    lea         eax,[ebp-1DC]
 006E0D37    push        eax
 006E0D38    mov         ecx,6E37BC;'sOutVETest'
 006E0D3D    mov         edx,6E2E64;'OutFuncStrings'
 006E0D42    mov         eax,dword ptr [ebp-8]
 006E0D45    mov         ebx,dword ptr [eax]
 006E0D47    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0D4A    mov         edx,dword ptr [ebp-1DC]
 006E0D50    mov         eax,[007C4D58];^gvar_007C2948:array[26] of ?
 006E0D55    add         eax,50
 006E0D58    call        @UStrAsg
 006E0D5D    push        6E37E0;'Delayed Alarm Enabled Output'
 006E0D62    lea         eax,[ebp-1E0]
 006E0D68    push        eax
 006E0D69    mov         ecx,6E3828;'sOutDelAlarmEnabled'
 006E0D6E    mov         edx,6E2E64;'OutFuncStrings'
 006E0D73    mov         eax,dword ptr [ebp-8]
 006E0D76    mov         ebx,dword ptr [eax]
 006E0D78    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0D7B    mov         edx,dword ptr [ebp-1E0]
 006E0D81    mov         eax,[007C4D58];^gvar_007C2948:array[26] of ?
 006E0D86    add         eax,58
 006E0D89    call        @UStrAsg
 006E0D8E    push        6E385C;'Fire router disabled output'
 006E0D93    lea         eax,[ebp-1E4]
 006E0D99    push        eax
 006E0D9A    mov         ecx,6E38A0;'sOutFireRouterDisabled'
 006E0D9F    mov         edx,6E2E64;'OutFuncStrings'
 006E0DA4    mov         eax,dword ptr [ebp-8]
 006E0DA7    mov         ebx,dword ptr [eax]
 006E0DA9    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0DAC    mov         edx,dword ptr [ebp-1E4]
 006E0DB2    mov         eax,[007C4D58];^gvar_007C2948:array[26] of ?
 006E0DB7    add         eax,5C
 006E0DBA    call        @UStrAsg
 006E0DBF    push        6E38DC;'Fault router disabled output'
 006E0DC4    lea         eax,[ebp-1E8]
 006E0DCA    push        eax
 006E0DCB    mov         ecx,6E3924;'sOutFaultRouterDisabled'
 006E0DD0    mov         edx,6E2E64;'OutFuncStrings'
 006E0DD5    mov         eax,dword ptr [ebp-8]
 006E0DD8    mov         ebx,dword ptr [eax]
 006E0DDA    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0DDD    mov         edx,dword ptr [ebp-1E8]
 006E0DE3    mov         eax,[007C4D58];^gvar_007C2948:array[26] of ?
 006E0DE8    add         eax,60
 006E0DEB    call        @UStrAsg
 006E0DF0    push        6E3960;'Main Supply Fault Output'
 006E0DF5    lea         eax,[ebp-1EC]
 006E0DFB    push        eax
 006E0DFC    mov         ecx,6E39A0;'sOutMainSupplyFault'
 006E0E01    mov         edx,6E2E64;'OutFuncStrings'
 006E0E06    mov         eax,dword ptr [ebp-8]
 006E0E09    mov         ebx,dword ptr [eax]
 006E0E0B    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0E0E    mov         edx,dword ptr [ebp-1EC]
 006E0E14    mov         eax,[007C4D58];^gvar_007C2948:array[26] of ?
 006E0E19    add         eax,64
 006E0E1C    call        @UStrAsg
 006E0E21    push        6E39D4;'General'
 006E0E26    lea         eax,[ebp-1F0]
 006E0E2C    push        eax
 006E0E2D    mov         ecx,6E39F0;'sGeneral'
 006E0E32    mov         edx,6E3A10;'CommonTexts'
 006E0E37    mov         eax,dword ptr [ebp-8]
 006E0E3A    mov         ebx,dword ptr [eax]
 006E0E3C    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0E3F    mov         edx,dword ptr [ebp-1F0]
 006E0E45    mov         eax,[007C47A0];^gvar_007C286C
 006E0E4A    call        @UStrAsg
 006E0E4F    push        6E3A34;'Local'
 006E0E54    lea         eax,[ebp-1F4]
 006E0E5A    push        eax
 006E0E5B    mov         ecx,6E3A4C;'sLocal'
 006E0E60    mov         edx,6E3A10;'CommonTexts'
 006E0E65    mov         eax,dword ptr [ebp-8]
 006E0E68    mov         ebx,dword ptr [eax]
 006E0E6A    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0E6D    mov         edx,dword ptr [ebp-1F4]
 006E0E73    mov         eax,[007C4750];^gvar_007C2870
 006E0E78    call        @UStrAsg
 006E0E7D    push        6E3550;'Fire Alarm Devices'
 006E0E82    lea         eax,[ebp-1F8]
 006E0E88    push        eax
 006E0E89    mov         ecx,6E3584;'sOutFireAD'
 006E0E8E    mov         edx,6E2E64;'OutFuncStrings'
 006E0E93    mov         eax,dword ptr [ebp-8]
 006E0E96    mov         ebx,dword ptr [eax]
 006E0E98    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0E9B    mov         edx,dword ptr [ebp-1F8]
 006E0EA1    mov         eax,[007C43CC];^gvar_007C29B8:array[6] of ?
 006E0EA6    call        @UStrAsg
 006E0EAB    push        6E35A8;'Fire Alarm Devices Non-S'
 006E0EB0    lea         eax,[ebp-1FC]
 006E0EB6    push        eax
 006E0EB7    mov         ecx,6E35E8;'sOutFireAdNS'
 006E0EBC    mov         edx,6E2E64;'OutFuncStrings'
 006E0EC1    mov         eax,dword ptr [ebp-8]
 006E0EC4    mov         ebx,dword ptr [eax]
 006E0EC6    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0EC9    mov         edx,dword ptr [ebp-1FC]
 006E0ECF    mov         eax,[007C43CC];^gvar_007C29B8:array[6] of ?
 006E0ED4    add         eax,4
 006E0ED7    call        @UStrAsg
 006E0EDC    push        6E3610;'Fire Alarm Devices Lev.1 Silenceable'
 006E0EE1    lea         eax,[ebp-200]
 006E0EE7    push        eax
 006E0EE8    mov         ecx,6E3668;'sOutFireAdL1Sil'
 006E0EED    mov         edx,6E2E64;'OutFuncStrings'
 006E0EF2    mov         eax,dword ptr [ebp-8]
 006E0EF5    mov         ebx,dword ptr [eax]
 006E0EF7    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0EFA    mov         edx,dword ptr [ebp-200]
 006E0F00    mov         eax,[007C43CC];^gvar_007C29B8:array[6] of ?
 006E0F05    add         eax,14
 006E0F08    call        @UStrAsg
 006E0F0D    push        6E3694;'Fault Warning Alarm Dev.'
 006E0F12    lea         eax,[ebp-204]
 006E0F18    push        eax
 006E0F19    mov         ecx,6E36D4;'sOutFaultWD'
 006E0F1E    mov         edx,6E2E64;'OutFuncStrings'
 006E0F23    mov         eax,dword ptr [ebp-8]
 006E0F26    mov         ebx,dword ptr [eax]
 006E0F28    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0F2B    mov         edx,dword ptr [ebp-204]
 006E0F31    mov         eax,[007C43CC];^gvar_007C29B8:array[6] of ?
 006E0F36    add         eax,0C
 006E0F39    call        @UStrAsg
 006E0F3E    push        6E3A68;'Jumper defines'
 006E0F43    lea         eax,[ebp-208]
 006E0F49    push        eax
 006E0F4A    mov         ecx,6E3A94;'sSndPulsedByJumper'
 006E0F4F    mov         edx,6E3AC8;'SndModeStrings'
 006E0F54    mov         eax,dword ptr [ebp-8]
 006E0F57    mov         ebx,dword ptr [eax]
 006E0F59    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0F5C    mov         edx,dword ptr [ebp-208]
 006E0F62    mov         eax,dword ptr [ebp-4]
 006E0F65    mov         eax,dword ptr [eax+78C];TFXPDFrame.AdoPulseddefbyjumper1:TMenuItem
 006E0F6B    call        TMenuItem.SetCaption
 006E0F70    push        6E3AF4;'Continuous'
 006E0F75    lea         eax,[ebp-20C]
 006E0F7B    push        eax
 006E0F7C    mov         ecx,6E3B18;'sSndContinuous'
 006E0F81    mov         edx,6E3AC8;'SndModeStrings'
 006E0F86    mov         eax,dword ptr [ebp-8]
 006E0F89    mov         ebx,dword ptr [eax]
 006E0F8B    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0F8E    mov         edx,dword ptr [ebp-20C]
 006E0F94    mov         eax,dword ptr [ebp-4]
 006E0F97    mov         eax,dword ptr [eax+790];TFXPDFrame.AdoContinuous1:TMenuItem
 006E0F9D    call        TMenuItem.SetCaption
 006E0FA2    push        6E3B44;^TList<FXCommMgr.TCommTask>.GetEnumerator:TList<FXCommMgr.TCommTask>.TEnumerator
 006E0FA7    lea         eax,[ebp-210]
 006E0FAD    push        eax
 006E0FAE    mov         ecx,6E3B60;'sSndPulsed'
 006E0FB3    mov         edx,6E3AC8;'SndModeStrings'
 006E0FB8    mov         eax,dword ptr [ebp-8]
 006E0FBB    mov         ebx,dword ptr [eax]
 006E0FBD    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0FC0    mov         edx,dword ptr [ebp-210]
 006E0FC6    mov         eax,dword ptr [ebp-4]
 006E0FC9    mov         eax,dword ptr [eax+794];TFXPDFrame.AdoPulsed1:TMenuItem
 006E0FCF    call        TMenuItem.SetCaption
 006E0FD4    push        6E3B84;'Phased evacuation'
 006E0FD9    lea         eax,[ebp-214]
 006E0FDF    push        eax
 006E0FE0    mov         ecx,6E3BB4;'sSndPhasedEvac'
 006E0FE5    mov         edx,6E3AC8;'SndModeStrings'
 006E0FEA    mov         eax,dword ptr [ebp-8]
 006E0FED    mov         ebx,dword ptr [eax]
 006E0FEF    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E0FF2    mov         edx,dword ptr [ebp-214]
 006E0FF8    mov         eax,dword ptr [ebp-4]
 006E0FFB    mov         eax,dword ptr [eax+798];TFXPDFrame.AdoPhasedevacuation1:TMenuItem
 006E1001    call        TMenuItem.SetCaption
 006E1006    push        6E3A68;'Jumper defines'
 006E100B    lea         eax,[ebp-218]
 006E1011    push        eax
 006E1012    mov         ecx,6E3A94;'sSndPulsedByJumper'
 006E1017    mov         edx,6E3AC8;'SndModeStrings'
 006E101C    mov         eax,dword ptr [ebp-8]
 006E101F    mov         ebx,dword ptr [eax]
 006E1021    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E1024    mov         edx,dword ptr [ebp-218]
 006E102A    mov         eax,[007C4ED8];^gvar_007C29D0:array[4] of ?
 006E102F    call        @UStrAsg
 006E1034    push        6E3AF4;'Continuous'
 006E1039    lea         eax,[ebp-21C]
 006E103F    push        eax
 006E1040    mov         ecx,6E3B18;'sSndContinuous'
 006E1045    mov         edx,6E3AC8;'SndModeStrings'
 006E104A    mov         eax,dword ptr [ebp-8]
 006E104D    mov         ebx,dword ptr [eax]
 006E104F    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E1052    mov         edx,dword ptr [ebp-21C]
 006E1058    mov         eax,[007C4ED8];^gvar_007C29D0:array[4] of ?
 006E105D    add         eax,4
 006E1060    call        @UStrAsg
 006E1065    push        6E3B44;^TList<FXCommMgr.TCommTask>.GetEnumerator:TList<FXCommMgr.TCommTask>.TEnumerator
 006E106A    lea         eax,[ebp-220]
 006E1070    push        eax
 006E1071    mov         ecx,6E3B60;'sSndPulsed'
 006E1076    mov         edx,6E3AC8;'SndModeStrings'
 006E107B    mov         eax,dword ptr [ebp-8]
 006E107E    mov         ebx,dword ptr [eax]
 006E1080    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E1083    mov         edx,dword ptr [ebp-220]
 006E1089    mov         eax,[007C4ED8];^gvar_007C29D0:array[4] of ?
 006E108E    add         eax,8
 006E1091    call        @UStrAsg
 006E1096    push        6E3B84;'Phased evacuation'
 006E109B    lea         eax,[ebp-224]
 006E10A1    push        eax
 006E10A2    mov         ecx,6E3BB4;'sSndPhasedEvac'
 006E10A7    mov         edx,6E3AC8;'SndModeStrings'
 006E10AC    mov         eax,dword ptr [ebp-8]
 006E10AF    mov         ebx,dword ptr [eax]
 006E10B1    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E10B4    mov         edx,dword ptr [ebp-224]
 006E10BA    mov         eax,[007C4ED8];^gvar_007C29D0:array[4] of ?
 006E10BF    add         eax,0C
 006E10C2    call        @UStrAsg
 006E10C7    push        6E3BE0;'Monitored'
 006E10CC    lea         eax,[ebp-228]
 006E10D2    push        eax
 006E10D3    mov         ecx,6E3C00;'sMonitored'
 006E10D8    mov         edx,6E3C24;'OutMonitStrings'
 006E10DD    mov         eax,dword ptr [ebp-8]
 006E10E0    mov         ebx,dword ptr [eax]
 006E10E2    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E10E5    mov         edx,dword ptr [ebp-228]
 006E10EB    mov         eax,dword ptr [ebp-4]
 006E10EE    mov         eax,dword ptr [eax+5E8];TFXPDFrame.Monitored1:TMenuItem
 006E10F4    call        TMenuItem.SetCaption
 006E10F9    push        6E3C50;'Not monitored'
 006E10FE    lea         eax,[ebp-22C]
 006E1104    push        eax
 006E1105    mov         ecx,6E3C78;'sNotMonitored'
 006E110A    mov         edx,6E3C24;'OutMonitStrings'
 006E110F    mov         eax,dword ptr [ebp-8]
 006E1112    mov         ebx,dword ptr [eax]
 006E1114    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E1117    mov         edx,dword ptr [ebp-22C]
 006E111D    mov         eax,dword ptr [ebp-4]
 006E1120    mov         eax,dword ptr [eax+5EC];TFXPDFrame.Notmonitored1:TMenuItem
 006E1126    call        TMenuItem.SetCaption
 006E112B    push        6E3C50;'Not monitored'
 006E1130    lea         eax,[ebp-230]
 006E1136    push        eax
 006E1137    mov         ecx,6E3C78;'sNotMonitored'
 006E113C    mov         edx,6E3C24;'OutMonitStrings'
 006E1141    mov         eax,dword ptr [ebp-8]
 006E1144    mov         ebx,dword ptr [eax]
 006E1146    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E1149    mov         edx,dword ptr [ebp-230]
 006E114F    mov         eax,[007C4E40];^gvar_007C29E0:array[2] of ?
 006E1154    call        @UStrAsg
 006E1159    push        6E3BE0;'Monitored'
 006E115E    lea         eax,[ebp-234]
 006E1164    push        eax
 006E1165    mov         ecx,6E3C00;'sMonitored'
 006E116A    mov         edx,6E3C24;'OutMonitStrings'
 006E116F    mov         eax,dword ptr [ebp-8]
 006E1172    mov         ebx,dword ptr [eax]
 006E1174    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E1177    mov         edx,dword ptr [ebp-234]
 006E117D    mov         eax,[007C4E40];^gvar_007C29E0:array[2] of ?
 006E1182    add         eax,4
 006E1185    call        @UStrAsg
 006E118A    mov         edx,dword ptr ds:[7C4BC0];^gvar_007C2D2C
 006E1190    mov         edx,dword ptr [edx]
 006E1192    mov         eax,dword ptr [ebp-4]
 006E1195    mov         eax,dword ptr [eax+5F0];TFXPDFrame.DelaySheet:TTabSheet
 006E119B    call        TControl.SetText
 006E11A0    push        6E3CA0;'Delay times for delayed alarm outputs'
 006E11A5    lea         eax,[ebp-238]
 006E11AB    push        eax
 006E11AC    mov         ecx,6E3CF8;'sgbFXOutputDelay'
 006E11B1    mov         edx,6E1E30;'FXPDFrame'
 006E11B6    mov         eax,dword ptr [ebp-8]
 006E11B9    mov         ebx,dword ptr [eax]
 006E11BB    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006E11BE    mov         edx,dword ptr [ebp-238]
 006E11C4    mov         eax,dword ptr [ebp-4]
 006E11C7    mov         eax,dword ptr [eax+5F8];TFXPDFrame.gbDelayTimes:TGroupBox
 006E11CD    call        TControl.SetText
 006E11D2    mov         edx,dword ptr ds:[7C4B20];^gvar_007C2D3C
 006E11D8    mov         edx,dword ptr [edx]
 006E11DA    mov         eax,dword ptr [ebp-4]
 006E11DD    mov         eax,dword ptr [eax+5F4];TFXPDFrame.gbFXDelayedOutputs:TGroupBox
 006E11E3    call        TControl.SetText
 006E11E8    mov         edx,dword ptr ds:[7C41F4];^gvar_007C2D40
 006E11EE    mov         edx,dword ptr [edx]
 006E11F0    mov         eax,dword ptr [ebp-4]
 006E11F3    mov         eax,dword ptr [eax+60C];TFXPDFrame.cbFireARDelayed:TCheckBox
 006E11F9    call        TControl.SetText
 006E11FE    mov         edx,dword ptr ds:[7C4C44];^gvar_007C2D44
 006E1204    mov         edx,dword ptr [edx]
 006E1206    mov         eax,dword ptr [ebp-4]
 006E1209    mov         eax,dword ptr [eax+61C];TFXPDFrame.cbFireCODelayed:TCheckBox
 006E120F    call        TControl.SetText
 006E1214    mov         edx,dword ptr ds:[7C4D1C];^gvar_007C2D48
 006E121A    mov         edx,dword ptr [edx]
 006E121C    mov         eax,dword ptr [ebp-4]
 006E121F    mov         eax,dword ptr [eax+610];TFXPDFrame.gbFireAlarmDevices:TGroupBox
 006E1225    call        TControl.SetText
 006E122A    mov         edx,dword ptr ds:[7C4C98];^gvar_007C2D4C
 006E1230    mov         edx,dword ptr [edx]
 006E1232    mov         eax,dword ptr [ebp-4]
 006E1235    mov         eax,dword ptr [eax+618];TFXPDFrame.cbGenFireADDelayed:TCheckBox
 006E123B    call        TControl.SetText
 006E1240    mov         edx,dword ptr ds:[7C4BD4];^gvar_007C2D50
 006E1246    mov         edx,dword ptr [edx]
 006E1248    mov         eax,dword ptr [ebp-4]
 006E124B    mov         eax,dword ptr [eax+614];TFXPDFrame.cbZonFireADDelayed:TCheckBox
 006E1251    call        TControl.SetText
 006E1256    mov         edx,dword ptr ds:[7C4B04];^gvar_007C2D54
 006E125C    mov         edx,dword ptr [edx]
 006E125E    mov         eax,dword ptr [ebp-4]
 006E1261    mov         eax,dword ptr [eax+620];TFXPDFrame.rgDelayTermination:TRadioGroup
 006E1267    call        TControl.SetText
 006E126C    mov         ecx,dword ptr ds:[7C4558];^gvar_00901ED0:UnicodeString
 006E1272    mov         ecx,dword ptr [ecx]
 006E1274    mov         eax,dword ptr [ebp-4]
 006E1277    mov         eax,dword ptr [eax+620];TFXPDFrame.rgDelayTermination:TRadioGroup
 006E127D    mov         eax,dword ptr [eax+29C];TRadioGroup.FItems:TStrings
 006E1283    xor         edx,edx
 006E1285    mov         ebx,dword ptr [eax]
 006E1287    call        dword ptr [ebx+20];TStrings.Put
 006E128A    mov         ecx,dword ptr ds:[7C4558];^gvar_00901ED0:UnicodeString
 006E1290    mov         ecx,dword ptr [ecx+4]
 006E1293    mov         eax,dword ptr [ebp-4]
 006E1296    mov         eax,dword ptr [eax+620];TFXPDFrame.rgDelayTermination:TRadioGroup
 006E129C    mov         eax,dword ptr [eax+29C];TRadioGroup.FItems:TStrings
 006E12A2    mov         edx,1
 006E12A7    mov         ebx,dword ptr [eax]
 006E12A9    call        dword ptr [ebx+20];TStrings.Put
 006E12AC    mov         ecx,dword ptr ds:[7C4558];^gvar_00901ED0:UnicodeString
 006E12B2    mov         ecx,dword ptr [ecx+8]
 006E12B5    mov         eax,dword ptr [ebp-4]
 006E12B8    mov         eax,dword ptr [eax+620];TFXPDFrame.rgDelayTermination:TRadioGroup
 006E12BE    mov         eax,dword ptr [eax+29C];TRadioGroup.FItems:TStrings
 006E12C4    mov         edx,2
 006E12C9    mov         ebx,dword ptr [eax]
 006E12CB    call        dword ptr [ebx+20];TStrings.Put
 006E12CE    mov         ecx,dword ptr ds:[7C4558];^gvar_00901ED0:UnicodeString
 006E12D4    mov         ecx,dword ptr [ecx+0C]
 006E12D7    mov         eax,dword ptr [ebp-4]
 006E12DA    mov         eax,dword ptr [eax+620];TFXPDFrame.rgDelayTermination:TRadioGroup
 006E12E0    mov         eax,dword ptr [eax+29C];TRadioGroup.FItems:TStrings
 006E12E6    mov         edx,3
 006E12EB    mov         ebx,dword ptr [eax]
 006E12ED    call        dword ptr [ebx+20];TStrings.Put
 006E12F0    mov         edx,dword ptr ds:[7C4850];^gvar_007C2D58
 006E12F6    mov         edx,dword ptr [edx]
 006E12F8    mov         eax,dword ptr [ebp-4]
 006E12FB    mov         eax,dword ptr [eax+624];TFXPDFrame.rgDelayTerminationND:TRadioGroup
 006E1301    call        TControl.SetText
 006E1306    mov         ecx,dword ptr ds:[7C42D4];^gvar_00901EE0:UnicodeString
 006E130C    mov         ecx,dword ptr [ecx]
 006E130E    mov         eax,dword ptr [ebp-4]
 006E1311    mov         eax,dword ptr [eax+624];TFXPDFrame.rgDelayTerminationND:TRadioGroup
 006E1317    mov         eax,dword ptr [eax+29C];TRadioGroup.FItems:TStrings
 006E131D    xor         edx,edx
 006E131F    mov         ebx,dword ptr [eax]
 006E1321    call        dword ptr [ebx+20];TStrings.Put
 006E1324    mov         ecx,dword ptr ds:[7C42D4];^gvar_00901EE0:UnicodeString
 006E132A    mov         ecx,dword ptr [ecx+4]
 006E132D    mov         eax,dword ptr [ebp-4]
 006E1330    mov         eax,dword ptr [eax+624];TFXPDFrame.rgDelayTerminationND:TRadioGroup
 006E1336    mov         eax,dword ptr [eax+29C];TRadioGroup.FItems:TStrings
 006E133C    mov         edx,1
 006E1341    mov         ebx,dword ptr [eax]
 006E1343    call        dword ptr [ebx+20];TStrings.Put
 006E1346    mov         ecx,dword ptr ds:[7C42D4];^gvar_00901EE0:UnicodeString
 006E134C    mov         ecx,dword ptr [ecx+8]
 006E134F    mov         eax,dword ptr [ebp-4]
 006E1352    mov         eax,dword ptr [eax+624];TFXPDFrame.rgDelayTerminationND:TRadioGroup
 006E1358    mov         eax,dword ptr [eax+29C];TRadioGroup.FItems:TStrings
 006E135E    mov         edx,2
 006E1363    mov         ebx,dword ptr [eax]
 006E1365    call        dword ptr [ebx+20];TStrings.Put
 006E1368    mov         ecx,dword ptr ds:[7C42D4];^gvar_00901EE0:UnicodeString
 006E136E    mov         ecx,dword ptr [ecx+0C]
 006E1371    mov         eax,dword ptr [ebp-4]
 006E1374    mov         eax,dword ptr [eax+624];TFXPDFrame.rgDelayTerminationND:TRadioGroup
 006E137A    mov         eax,dword ptr [eax+29C];TRadioGroup.FItems:TStrings
 006E1380    mov         edx,3
 006E1385    mov         ebx,dword ptr [eax]
 006E1387    call        dword ptr [ebx+20];TStrings.Put
 006E138A    mov         edx,dword ptr ds:[7C48EC];^gvar_007C2D5C
 006E1390    mov         edx,dword ptr [edx]
 006E1392    mov         eax,dword ptr [ebp-4]
 006E1395    mov         eax,dword ptr [eax+628];TFXPDFrame.gbDelayIndication:TGroupBox
 006E139B    call        TControl.SetText
 006E13A0    mov         edx,dword ptr ds:[7C4ABC];^gvar_007C2D60
 006E13A6    mov         edx,dword ptr [edx]
 006E13A8    mov         eax,dword ptr [ebp-4]
 006E13AB    mov         eax,dword ptr [eax+62C];TFXPDFrame.cbDelayIndication:TCheckBox
 006E13B1    call        TControl.SetText
 006E13B6    mov         edx,dword ptr ds:[7C4264];^gvar_007C2D64
 006E13BC    mov         edx,dword ptr [edx]
 006E13BE    mov         eax,dword ptr [ebp-4]
 006E13C1    mov         eax,dword ptr [eax+630];TFXPDFrame.PrintAndLogSheet:TTabSheet
 006E13C7    call        TControl.SetText
 006E13CC    mov         edx,dword ptr ds:[7C4784];^gvar_007C2D68
 006E13D2    mov         edx,dword ptr [edx]
 006E13D4    mov         eax,dword ptr [ebp-4]
 006E13D7    mov         eax,dword ptr [eax+634];TFXPDFrame.gbPrintAndLog:TGroupBox
 006E13DD    call        TControl.SetText
 006E13E2    mov         edx,dword ptr ds:[7C4714];^gvar_007C2D6C
 006E13E8    mov         edx,dword ptr [edx]
 006E13EA    mov         eax,dword ptr [ebp-4]
 006E13ED    mov         eax,dword ptr [eax+638];TFXPDFrame.lbPrint:TLabel
 006E13F3    call        TControl.SetText
 006E13F8    mov         edx,dword ptr ds:[7C48C0];^gvar_007C2D70
 006E13FE    mov         edx,dword ptr [edx]
 006E1400    mov         eax,dword ptr [ebp-4]
 006E1403    mov         eax,dword ptr [eax+63C];TFXPDFrame.lbRecord:TLabel
 006E1409    call        TControl.SetText
 006E140E    mov         edx,dword ptr ds:[7C4A90];^gvar_007C2D74
 006E1414    mov         edx,dword ptr [edx]
 006E1416    mov         eax,dword ptr [ebp-4]
 006E1419    mov         eax,dword ptr [eax+640];TFXPDFrame.lbFireEvents:TLabel
 006E141F    call        TControl.SetText
 006E1424    mov         edx,dword ptr ds:[7C415C];^gvar_007C2D78
 006E142A    mov         edx,dword ptr [edx]
 006E142C    mov         eax,dword ptr [ebp-4]
 006E142F    mov         eax,dword ptr [eax+644];TFXPDFrame.lbPrewarningEvents:TLabel
 006E1435    call        TControl.SetText
 006E143A    mov         edx,dword ptr ds:[7C48A0];^gvar_007C2D7C
 006E1440    mov         edx,dword ptr [edx]
 006E1442    mov         eax,dword ptr [ebp-4]
 006E1445    mov         eax,dword ptr [eax+648];TFXPDFrame.lbFaultEvents:TLabel
 006E144B    call        TControl.SetText
 006E1450    mov         edx,dword ptr ds:[7C4290];^gvar_007C2D80
 006E1456    mov         edx,dword ptr [edx]
 006E1458    mov         eax,dword ptr [ebp-4]
 006E145B    mov         eax,dword ptr [eax+64C];TFXPDFrame.lbDisablementEvents:TLabel
 006E1461    call        TControl.SetText
 006E1466    mov         edx,dword ptr ds:[7C44EC];^gvar_007C2D84
 006E146C    mov         edx,dword ptr [edx]
 006E146E    mov         eax,dword ptr [ebp-4]
 006E1471    mov         eax,dword ptr [eax+650];TFXPDFrame.lbAccessEvents:TLabel
 006E1477    call        TControl.SetText
 006E147C    mov         edx,dword ptr ds:[7C48E8];^gvar_007C2D88
 006E1482    mov         edx,dword ptr [edx]
 006E1484    mov         eax,dword ptr [ebp-4]
 006E1487    mov         eax,dword ptr [eax+654];TFXPDFrame.lbIOEvents:TLabel
 006E148D    call        TControl.SetText
 006E1492    mov         edx,dword ptr ds:[7C47F8];^gvar_007C2D8C
 006E1498    mov         edx,dword ptr [edx]
 006E149A    mov         eax,dword ptr [ebp-4]
 006E149D    mov         eax,dword ptr [eax+658];TFXPDFrame.lbStartupEvents:TLabel
 006E14A3    call        TControl.SetText
 006E14A8    mov         edx,dword ptr ds:[7C446C];^gvar_007C2D90
 006E14AE    mov         edx,dword ptr [edx]
 006E14B0    mov         eax,dword ptr [ebp-4]
 006E14B3    mov         eax,dword ptr [eax+65C];TFXPDFrame.lbStatusUpdateEvents:TLabel
 006E14B9    call        TControl.SetText
 006E14BE    mov         edx,dword ptr ds:[7C4324];^gvar_007C2D94
 006E14C4    mov         edx,dword ptr [edx]
 006E14C6    mov         eax,dword ptr [ebp-4]
 006E14C9    mov         eax,dword ptr [eax+6A0];TFXPDFrame.SpecialAlarmsSheet:TTabSheet
 006E14CF    call        TControl.SetText
 006E14D4    mov         edx,dword ptr ds:[7C4734];^gvar_007C2D98
 006E14DA    mov         edx,dword ptr [edx]
 006E14DC    mov         eax,dword ptr [ebp-4]
 006E14DF    mov         eax,dword ptr [eax+6A4];TFXPDFrame.gbOldCoincidence:TGroupBox
 006E14E5    call        TControl.SetText
 006E14EA    mov         edx,dword ptr ds:[7C4930];^gvar_007C2D9C
 006E14F0    mov         edx,dword ptr [edx]
 006E14F2    mov         eax,dword ptr [ebp-4]
 006E14F5    mov         eax,dword ptr [eax+6B0];TFXPDFrame.cbOldCoincidence:TCheckBox
 006E14FB    call        TControl.SetText
 006E1500    mov         edx,dword ptr ds:[7C48DC];^gvar_007C2DA0
 006E1506    mov         edx,dword ptr [edx]
 006E1508    mov         eax,dword ptr [ebp-4]
 006E150B    mov         eax,dword ptr [eax+6A8];TFXPDFrame.lbOldCoincidence:TLabel
 006E1511    call        TControl.SetText
 006E1516    mov         edx,dword ptr ds:[7C4574];^gvar_007C2DA4
 006E151C    mov         edx,dword ptr [edx]
 006E151E    mov         eax,dword ptr [ebp-4]
 006E1521    mov         eax,dword ptr [eax+6AC];TFXPDFrame.lbCoincidenceAutoReset:TLabel
 006E1527    call        TControl.SetText
 006E152C    mov         edx,dword ptr ds:[7C45B4];^gvar_007C2DA8
 006E1532    mov         edx,dword ptr [edx]
 006E1534    mov         eax,dword ptr [ebp-4]
 006E1537    mov         eax,dword ptr [eax+6B8];TFXPDFrame.gbSecondCoIncidence:TGroupBox
 006E153D    call        TControl.SetText
 006E1542    mov         edx,dword ptr ds:[7C474C];^gvar_007C2DAC
 006E1548    mov         edx,dword ptr [edx]
 006E154A    mov         eax,dword ptr [ebp-4]
 006E154D    mov         eax,dword ptr [eax+6BC];TFXPDFrame.lbSecondCoIncidence:TLabel
 006E1553    call        TControl.SetText
 006E1558    mov         edx,dword ptr ds:[7C4E04];^gvar_007C2DB0:array[2] of ?
 006E155E    mov         edx,dword ptr [edx]
 006E1560    mov         eax,dword ptr [ebp-4]
 006E1563    mov         eax,dword ptr [eax+6C0];TFXPDFrame.rbSameZone:TRadioButton
 006E1569    call        TControl.SetText
 006E156E    mov         edx,dword ptr ds:[7C4E04];^gvar_007C2DB0:array[2] of ?
 006E1574    mov         edx,dword ptr [edx+4]
 006E1577    mov         eax,dword ptr [ebp-4]
 006E157A    mov         eax,dword ptr [eax+6C4];TFXPDFrame.rbSamePanel:TRadioButton
 006E1580    call        TControl.SetText
 006E1585    mov         edx,dword ptr ds:[7C43D8];^gvar_007C2DB8
 006E158B    mov         edx,dword ptr [edx]
 006E158D    mov         eax,dword ptr [ebp-4]
 006E1590    mov         eax,dword ptr [eax+6C8];TFXPDFrame.rgAlarmdisplay:TRadioGroup
 006E1596    call        TControl.SetText
 006E159B    mov         ecx,dword ptr ds:[7C4684];^gvar_00901EF0:UnicodeString
 006E15A1    mov         ecx,dword ptr [ecx]
 006E15A3    mov         eax,dword ptr [ebp-4]
 006E15A6    mov         eax,dword ptr [eax+6C8];TFXPDFrame.rgAlarmdisplay:TRadioGroup
 006E15AC    mov         eax,dword ptr [eax+29C];TRadioGroup.FItems:TStrings
 006E15B2    xor         edx,edx
 006E15B4    mov         ebx,dword ptr [eax]
 006E15B6    call        dword ptr [ebx+20];TStrings.Put
 006E15B9    mov         ecx,dword ptr ds:[7C4684];^gvar_00901EF0:UnicodeString
 006E15BF    mov         ecx,dword ptr [ecx+4]
 006E15C2    mov         eax,dword ptr [ebp-4]
 006E15C5    mov         eax,dword ptr [eax+6C8];TFXPDFrame.rgAlarmdisplay:TRadioGroup
 006E15CB    mov         eax,dword ptr [eax+29C];TRadioGroup.FItems:TStrings
 006E15D1    mov         edx,1
 006E15D6    mov         ebx,dword ptr [eax]
 006E15D8    call        dword ptr [ebx+20];TStrings.Put
 006E15DB    mov         ecx,dword ptr ds:[7C4684];^gvar_00901EF0:UnicodeString
 006E15E1    mov         ecx,dword ptr [ecx+8]
 006E15E4    mov         eax,dword ptr [ebp-4]
 006E15E7    mov         eax,dword ptr [eax+6C8];TFXPDFrame.rgAlarmdisplay:TRadioGroup
 006E15ED    mov         eax,dword ptr [eax+29C];TRadioGroup.FItems:TStrings
 006E15F3    mov         edx,2
 006E15F8    mov         ebx,dword ptr [eax]
 006E15FA    call        dword ptr [ebx+20];TStrings.Put
 006E15FD    mov         edx,dword ptr ds:[7C4C14];^gvar_007C2DBC
 006E1603    mov         edx,dword ptr [edx]
 006E1605    mov         eax,dword ptr [ebp-4]
 006E1608    mov         eax,dword ptr [eax+6CC];TFXPDFrame.gbConfiguredPrealarm:TGroupBox
 006E160E    call        TControl.SetText
 006E1613    mov         edx,dword ptr ds:[7C4700];^gvar_007C2DC0
 006E1619    mov         edx,dword ptr [edx]
 006E161B    mov         eax,dword ptr [ebp-4]
 006E161E    mov         eax,dword ptr [eax+6D0];TFXPDFrame.cbPrealarmBlinkRate:TCheckBox
 006E1624    call        TControl.SetText
 006E1629    mov         edx,dword ptr ds:[7C4DD8];^gvar_007C2DC4
 006E162F    mov         edx,dword ptr [edx]
 006E1631    mov         eax,dword ptr [ebp-4]
 006E1634    mov         eax,dword ptr [eax+6D4];TFXPDFrame.PowerSupplySheet:TTabSheet
 006E163A    call        TControl.SetText
 006E163F    mov         edx,dword ptr ds:[7C4BEC];^gvar_007C2DC8
 006E1645    mov         edx,dword ptr [edx]
 006E1647    mov         eax,dword ptr [ebp-4]
 006E164A    mov         eax,dword ptr [eax+6D8];TFXPDFrame.gbBattPackMonitoring:TGroupBox
 006E1650    call        TControl.SetText
 006E1655    mov         edx,dword ptr ds:[7C45B0];^gvar_007C2DCC
 006E165B    mov         edx,dword ptr [edx]
 006E165D    mov         eax,dword ptr [ebp-4]
 006E1660    mov         eax,dword ptr [eax+6DC];TFXPDFrame.cbBattPack1Monitored:TCheckBox
 006E1666    call        TControl.SetText
 006E166B    mov         edx,dword ptr ds:[7C463C];^gvar_007C2DD0
 006E1671    mov         edx,dword ptr [edx]
 006E1673    mov         eax,dword ptr [ebp-4]
 006E1676    mov         eax,dword ptr [eax+6E0];TFXPDFrame.cbBattPack2Monitored:TCheckBox
 006E167C    call        TControl.SetText
 006E1681    mov         edx,dword ptr ds:[7C41B4];^gvar_007C2DD4
 006E1687    mov         edx,dword ptr [edx]
 006E1689    mov         eax,dword ptr [ebp-4]
 006E168C    mov         eax,dword ptr [eax+6E4];TFXPDFrame.cbBattPack3Monitored:TCheckBox
 006E1692    call        TControl.SetText
 006E1697    mov         edx,dword ptr ds:[7C4BF4];^gvar_007C2DD8
 006E169D    mov         edx,dword ptr [edx]
 006E169F    mov         eax,dword ptr [ebp-4]
 006E16A2    mov         eax,dword ptr [eax+6E8];TFXPDFrame.cbBattPack4Monitored:TCheckBox
 006E16A8    call        TControl.SetText
 006E16AD    mov         edx,dword ptr ds:[7C4DE4];^gvar_007C2DDC
 006E16B3    mov         edx,dword ptr [edx]
 006E16B5    mov         eax,dword ptr [ebp-4]
 006E16B8    mov         eax,dword ptr [eax+6EC];TFXPDFrame.gbMainsFaultDelay:TGroupBox
 006E16BE    call        TControl.SetText
 006E16C3    mov         edx,dword ptr ds:[7C4214];^gvar_007C2DE0
 006E16C9    mov         edx,dword ptr [edx]
 006E16CB    mov         eax,dword ptr [ebp-4]
 006E16CE    mov         eax,dword ptr [eax+6F4];TFXPDFrame.cbMainsFaultDelay:TCheckBox
 006E16D4    call        TControl.SetText
 006E16D9    mov         edx,dword ptr ds:[7C41C4];^gvar_007C2DE4
 006E16DF    mov         edx,dword ptr [edx]
 006E16E1    mov         eax,dword ptr [ebp-4]
 006E16E4    mov         eax,dword ptr [eax+6F0];TFXPDFrame.lbMainsFaultDelay:TLabel
 006E16EA    call        TControl.SetText
 006E16EF    mov         edx,dword ptr ds:[7C49B0];^gvar_007C2DE8
 006E16F5    mov         edx,dword ptr [edx]
 006E16F7    mov         eax,dword ptr [ebp-4]
 006E16FA    mov         eax,dword ptr [eax+6FC];TFXPDFrame.MiscellaneousSheet:TTabSheet
 006E1700    call        TControl.SetText
 006E1705    mov         edx,dword ptr ds:[7C4B38];^gvar_007C2DEC
 006E170B    mov         edx,dword ptr [edx]
 006E170D    mov         eax,dword ptr [ebp-4]
 006E1710    mov         eax,dword ptr [eax+700];TFXPDFrame.gbPanelLanguage:TGroupBox
 006E1716    call        TControl.SetText
 006E171B    mov         edx,dword ptr ds:[7C4EB8];^gvar_007C2DF0
 006E1721    mov         edx,dword ptr [edx]
 006E1723    mov         eax,dword ptr [ebp-4]
 006E1726    mov         eax,dword ptr [eax+704];TFXPDFrame.lbPrimaryLanguage:TLabel
 006E172C    call        TControl.SetText
 006E1731    mov         edx,dword ptr ds:[7C46D0];^gvar_007C2DF4
 006E1737    mov         edx,dword ptr [edx]
 006E1739    mov         eax,dword ptr [ebp-4]
 006E173C    mov         eax,dword ptr [eax+708];TFXPDFrame.lbSecondaryLanguage:TLabel
 006E1742    call        TControl.SetText
 006E1747    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E174D    mov         ecx,dword ptr [ecx]
 006E174F    mov         eax,dword ptr [ebp-4]
 006E1752    mov         eax,dword ptr [eax+70C];TFXPDFrame.cbPrimaryLanguage:TComboBox
 006E1758    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E175E    xor         edx,edx
 006E1760    mov         ebx,dword ptr [eax]
 006E1762    call        dword ptr [ebx+20];TStrings.Put
 006E1765    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E176B    mov         ecx,dword ptr [ecx+4]
 006E176E    mov         eax,dword ptr [ebp-4]
 006E1771    mov         eax,dword ptr [eax+70C];TFXPDFrame.cbPrimaryLanguage:TComboBox
 006E1777    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E177D    mov         edx,1
 006E1782    mov         ebx,dword ptr [eax]
 006E1784    call        dword ptr [ebx+20];TStrings.Put
 006E1787    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E178D    mov         ecx,dword ptr [ecx+8]
 006E1790    mov         eax,dword ptr [ebp-4]
 006E1793    mov         eax,dword ptr [eax+70C];TFXPDFrame.cbPrimaryLanguage:TComboBox
 006E1799    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E179F    mov         edx,2
 006E17A4    mov         ebx,dword ptr [eax]
 006E17A6    call        dword ptr [ebx+20];TStrings.Put
 006E17A9    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E17AF    mov         ecx,dword ptr [ecx+0C]
 006E17B2    mov         eax,dword ptr [ebp-4]
 006E17B5    mov         eax,dword ptr [eax+70C];TFXPDFrame.cbPrimaryLanguage:TComboBox
 006E17BB    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E17C1    mov         edx,3
 006E17C6    mov         ebx,dword ptr [eax]
 006E17C8    call        dword ptr [ebx+20];TStrings.Put
 006E17CB    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E17D1    mov         ecx,dword ptr [ecx+10]
 006E17D4    mov         eax,dword ptr [ebp-4]
 006E17D7    mov         eax,dword ptr [eax+70C];TFXPDFrame.cbPrimaryLanguage:TComboBox
 006E17DD    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E17E3    mov         edx,4
 006E17E8    mov         ebx,dword ptr [eax]
 006E17EA    call        dword ptr [ebx+20];TStrings.Put
 006E17ED    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E17F3    mov         ecx,dword ptr [ecx+14]
 006E17F6    mov         eax,dword ptr [ebp-4]
 006E17F9    mov         eax,dword ptr [eax+70C];TFXPDFrame.cbPrimaryLanguage:TComboBox
 006E17FF    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E1805    mov         edx,5
 006E180A    mov         ebx,dword ptr [eax]
 006E180C    call        dword ptr [ebx+20];TStrings.Put
 006E180F    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E1815    mov         ecx,dword ptr [ecx+18]
 006E1818    mov         eax,dword ptr [ebp-4]
 006E181B    mov         eax,dword ptr [eax+70C];TFXPDFrame.cbPrimaryLanguage:TComboBox
 006E1821    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E1827    mov         edx,6
 006E182C    mov         ebx,dword ptr [eax]
 006E182E    call        dword ptr [ebx+20];TStrings.Put
 006E1831    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E1837    mov         ecx,dword ptr [ecx+1C]
 006E183A    mov         eax,dword ptr [ebp-4]
 006E183D    mov         eax,dword ptr [eax+70C];TFXPDFrame.cbPrimaryLanguage:TComboBox
 006E1843    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E1849    mov         edx,7
 006E184E    mov         ebx,dword ptr [eax]
 006E1850    call        dword ptr [ebx+20];TStrings.Put
 006E1853    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E1859    mov         ecx,dword ptr [ecx+20]
 006E185C    mov         eax,dword ptr [ebp-4]
 006E185F    mov         eax,dword ptr [eax+70C];TFXPDFrame.cbPrimaryLanguage:TComboBox
 006E1865    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E186B    mov         edx,8
 006E1870    mov         ebx,dword ptr [eax]
 006E1872    call        dword ptr [ebx+20];TStrings.Put
 006E1875    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E187B    mov         ecx,dword ptr [ecx+24]
 006E187E    mov         eax,dword ptr [ebp-4]
 006E1881    mov         eax,dword ptr [eax+70C];TFXPDFrame.cbPrimaryLanguage:TComboBox
 006E1887    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E188D    mov         edx,9
 006E1892    mov         ebx,dword ptr [eax]
 006E1894    call        dword ptr [ebx+20];TStrings.Put
 006E1897    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E189D    mov         ecx,dword ptr [ecx+28]
 006E18A0    mov         eax,dword ptr [ebp-4]
 006E18A3    mov         eax,dword ptr [eax+70C];TFXPDFrame.cbPrimaryLanguage:TComboBox
 006E18A9    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E18AF    mov         edx,0A
 006E18B4    mov         ebx,dword ptr [eax]
 006E18B6    call        dword ptr [ebx+20];TStrings.Put
 006E18B9    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E18BF    mov         ecx,dword ptr [ecx+2C]
 006E18C2    mov         eax,dword ptr [ebp-4]
 006E18C5    mov         eax,dword ptr [eax+70C];TFXPDFrame.cbPrimaryLanguage:TComboBox
 006E18CB    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E18D1    mov         edx,0B
 006E18D6    mov         ebx,dword ptr [eax]
 006E18D8    call        dword ptr [ebx+20];TStrings.Put
 006E18DB    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E18E1    mov         ecx,dword ptr [ecx+30]
 006E18E4    mov         eax,dword ptr [ebp-4]
 006E18E7    mov         eax,dword ptr [eax+70C];TFXPDFrame.cbPrimaryLanguage:TComboBox
 006E18ED    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E18F3    mov         edx,0C
 006E18F8    mov         ebx,dword ptr [eax]
 006E18FA    call        dword ptr [ebx+20];TStrings.Put
 006E18FD    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E1903    mov         ecx,dword ptr [ecx+34]
 006E1906    mov         eax,dword ptr [ebp-4]
 006E1909    mov         eax,dword ptr [eax+70C];TFXPDFrame.cbPrimaryLanguage:TComboBox
 006E190F    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E1915    mov         edx,0D
 006E191A    mov         ebx,dword ptr [eax]
 006E191C    call        dword ptr [ebx+20];TStrings.Put
 006E191F    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E1925    mov         ecx,dword ptr [ecx+38]
 006E1928    mov         eax,dword ptr [ebp-4]
 006E192B    mov         eax,dword ptr [eax+70C];TFXPDFrame.cbPrimaryLanguage:TComboBox
 006E1931    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E1937    mov         edx,0E
 006E193C    mov         ebx,dword ptr [eax]
 006E193E    call        dword ptr [ebx+20];TStrings.Put
 006E1941    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E1947    mov         ecx,dword ptr [ecx+3C]
 006E194A    mov         eax,dword ptr [ebp-4]
 006E194D    mov         eax,dword ptr [eax+70C];TFXPDFrame.cbPrimaryLanguage:TComboBox
 006E1953    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E1959    mov         edx,0F
 006E195E    mov         ebx,dword ptr [eax]
 006E1960    call        dword ptr [ebx+20];TStrings.Put
 006E1963    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E1969    mov         ecx,dword ptr [ecx+40]
 006E196C    mov         eax,dword ptr [ebp-4]
 006E196F    mov         eax,dword ptr [eax+70C];TFXPDFrame.cbPrimaryLanguage:TComboBox
 006E1975    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E197B    mov         edx,10
 006E1980    mov         ebx,dword ptr [eax]
 006E1982    call        dword ptr [ebx+20];TStrings.Put
 006E1985    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E198B    mov         ecx,dword ptr [ecx+44]
 006E198E    mov         eax,dword ptr [ebp-4]
 006E1991    mov         eax,dword ptr [eax+70C];TFXPDFrame.cbPrimaryLanguage:TComboBox
 006E1997    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E199D    mov         edx,11
 006E19A2    mov         ebx,dword ptr [eax]
 006E19A4    call        dword ptr [ebx+20];TStrings.Put
 006E19A7    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E19AD    mov         ecx,dword ptr [ecx+48]
 006E19B0    mov         eax,dword ptr [ebp-4]
 006E19B3    mov         eax,dword ptr [eax+70C];TFXPDFrame.cbPrimaryLanguage:TComboBox
 006E19B9    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E19BF    mov         edx,12
 006E19C4    mov         ebx,dword ptr [eax]
 006E19C6    call        dword ptr [ebx+20];TStrings.Put
 006E19C9    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E19CF    mov         ecx,dword ptr [ecx]
 006E19D1    mov         eax,dword ptr [ebp-4]
 006E19D4    mov         eax,dword ptr [eax+710];TFXPDFrame.cbSecondaryLanguage:TComboBox
 006E19DA    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E19E0    xor         edx,edx
 006E19E2    mov         ebx,dword ptr [eax]
 006E19E4    call        dword ptr [ebx+20];TStrings.Put
 006E19E7    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E19ED    mov         ecx,dword ptr [ecx+4]
 006E19F0    mov         eax,dword ptr [ebp-4]
 006E19F3    mov         eax,dword ptr [eax+710];TFXPDFrame.cbSecondaryLanguage:TComboBox
 006E19F9    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E19FF    mov         edx,1
 006E1A04    mov         ebx,dword ptr [eax]
 006E1A06    call        dword ptr [ebx+20];TStrings.Put
 006E1A09    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E1A0F    mov         ecx,dword ptr [ecx+8]
 006E1A12    mov         eax,dword ptr [ebp-4]
 006E1A15    mov         eax,dword ptr [eax+710];TFXPDFrame.cbSecondaryLanguage:TComboBox
 006E1A1B    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E1A21    mov         edx,2
 006E1A26    mov         ebx,dword ptr [eax]
 006E1A28    call        dword ptr [ebx+20];TStrings.Put
 006E1A2B    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E1A31    mov         ecx,dword ptr [ecx+0C]
 006E1A34    mov         eax,dword ptr [ebp-4]
 006E1A37    mov         eax,dword ptr [eax+710];TFXPDFrame.cbSecondaryLanguage:TComboBox
 006E1A3D    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E1A43    mov         edx,3
 006E1A48    mov         ebx,dword ptr [eax]
 006E1A4A    call        dword ptr [ebx+20];TStrings.Put
 006E1A4D    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E1A53    mov         ecx,dword ptr [ecx+10]
 006E1A56    mov         eax,dword ptr [ebp-4]
 006E1A59    mov         eax,dword ptr [eax+710];TFXPDFrame.cbSecondaryLanguage:TComboBox
 006E1A5F    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E1A65    mov         edx,4
 006E1A6A    mov         ebx,dword ptr [eax]
 006E1A6C    call        dword ptr [ebx+20];TStrings.Put
 006E1A6F    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E1A75    mov         ecx,dword ptr [ecx+14]
 006E1A78    mov         eax,dword ptr [ebp-4]
 006E1A7B    mov         eax,dword ptr [eax+710];TFXPDFrame.cbSecondaryLanguage:TComboBox
 006E1A81    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E1A87    mov         edx,5
 006E1A8C    mov         ebx,dword ptr [eax]
 006E1A8E    call        dword ptr [ebx+20];TStrings.Put
 006E1A91    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E1A97    mov         ecx,dword ptr [ecx+18]
 006E1A9A    mov         eax,dword ptr [ebp-4]
 006E1A9D    mov         eax,dword ptr [eax+710];TFXPDFrame.cbSecondaryLanguage:TComboBox
 006E1AA3    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E1AA9    mov         edx,6
 006E1AAE    mov         ebx,dword ptr [eax]
 006E1AB0    call        dword ptr [ebx+20];TStrings.Put
 006E1AB3    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E1AB9    mov         ecx,dword ptr [ecx+1C]
 006E1ABC    mov         eax,dword ptr [ebp-4]
 006E1ABF    mov         eax,dword ptr [eax+710];TFXPDFrame.cbSecondaryLanguage:TComboBox
 006E1AC5    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E1ACB    mov         edx,7
 006E1AD0    mov         ebx,dword ptr [eax]
 006E1AD2    call        dword ptr [ebx+20];TStrings.Put
 006E1AD5    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E1ADB    mov         ecx,dword ptr [ecx+20]
 006E1ADE    mov         eax,dword ptr [ebp-4]
 006E1AE1    mov         eax,dword ptr [eax+710];TFXPDFrame.cbSecondaryLanguage:TComboBox
 006E1AE7    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E1AED    mov         edx,8
 006E1AF2    mov         ebx,dword ptr [eax]
 006E1AF4    call        dword ptr [ebx+20];TStrings.Put
 006E1AF7    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E1AFD    mov         ecx,dword ptr [ecx+24]
 006E1B00    mov         eax,dword ptr [ebp-4]
 006E1B03    mov         eax,dword ptr [eax+710];TFXPDFrame.cbSecondaryLanguage:TComboBox
 006E1B09    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E1B0F    mov         edx,9
 006E1B14    mov         ebx,dword ptr [eax]
 006E1B16    call        dword ptr [ebx+20];TStrings.Put
 006E1B19    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E1B1F    mov         ecx,dword ptr [ecx+28]
 006E1B22    mov         eax,dword ptr [ebp-4]
 006E1B25    mov         eax,dword ptr [eax+710];TFXPDFrame.cbSecondaryLanguage:TComboBox
 006E1B2B    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E1B31    mov         edx,0A
 006E1B36    mov         ebx,dword ptr [eax]
 006E1B38    call        dword ptr [ebx+20];TStrings.Put
 006E1B3B    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E1B41    mov         ecx,dword ptr [ecx+2C]
 006E1B44    mov         eax,dword ptr [ebp-4]
 006E1B47    mov         eax,dword ptr [eax+710];TFXPDFrame.cbSecondaryLanguage:TComboBox
 006E1B4D    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E1B53    mov         edx,0B
 006E1B58    mov         ebx,dword ptr [eax]
 006E1B5A    call        dword ptr [ebx+20];TStrings.Put
 006E1B5D    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E1B63    mov         ecx,dword ptr [ecx+30]
 006E1B66    mov         eax,dword ptr [ebp-4]
 006E1B69    mov         eax,dword ptr [eax+710];TFXPDFrame.cbSecondaryLanguage:TComboBox
 006E1B6F    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E1B75    mov         edx,0C
 006E1B7A    mov         ebx,dword ptr [eax]
 006E1B7C    call        dword ptr [ebx+20];TStrings.Put
 006E1B7F    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E1B85    mov         ecx,dword ptr [ecx+34]
 006E1B88    mov         eax,dword ptr [ebp-4]
 006E1B8B    mov         eax,dword ptr [eax+710];TFXPDFrame.cbSecondaryLanguage:TComboBox
 006E1B91    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E1B97    mov         edx,0D
 006E1B9C    mov         ebx,dword ptr [eax]
 006E1B9E    call        dword ptr [ebx+20];TStrings.Put
 006E1BA1    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E1BA7    mov         ecx,dword ptr [ecx+38]
 006E1BAA    mov         eax,dword ptr [ebp-4]
 006E1BAD    mov         eax,dword ptr [eax+710];TFXPDFrame.cbSecondaryLanguage:TComboBox
 006E1BB3    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E1BB9    mov         edx,0E
 006E1BBE    mov         ebx,dword ptr [eax]
 006E1BC0    call        dword ptr [ebx+20];TStrings.Put
 006E1BC3    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E1BC9    mov         ecx,dword ptr [ecx+3C]
 006E1BCC    mov         eax,dword ptr [ebp-4]
 006E1BCF    mov         eax,dword ptr [eax+710];TFXPDFrame.cbSecondaryLanguage:TComboBox
 006E1BD5    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E1BDB    mov         edx,0F
 006E1BE0    mov         ebx,dword ptr [eax]
 006E1BE2    call        dword ptr [ebx+20];TStrings.Put
 006E1BE5    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E1BEB    mov         ecx,dword ptr [ecx+40]
 006E1BEE    mov         eax,dword ptr [ebp-4]
 006E1BF1    mov         eax,dword ptr [eax+710];TFXPDFrame.cbSecondaryLanguage:TComboBox
 006E1BF7    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E1BFD    mov         edx,10
 006E1C02    mov         ebx,dword ptr [eax]
 006E1C04    call        dword ptr [ebx+20];TStrings.Put
 006E1C07    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E1C0D    mov         ecx,dword ptr [ecx+44]
 006E1C10    mov         eax,dword ptr [ebp-4]
 006E1C13    mov         eax,dword ptr [eax+710];TFXPDFrame.cbSecondaryLanguage:TComboBox
 006E1C19    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E1C1F    mov         edx,11
 006E1C24    mov         ebx,dword ptr [eax]
 006E1C26    call        dword ptr [ebx+20];TStrings.Put
 006E1C29    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 006E1C2F    mov         ecx,dword ptr [ecx+48]
 006E1C32    mov         eax,dword ptr [ebp-4]
 006E1C35    mov         eax,dword ptr [eax+710];TFXPDFrame.cbSecondaryLanguage:TComboBox
 006E1C3B    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E1C41    mov         edx,12
 006E1C46    mov         ebx,dword ptr [eax]
 006E1C48    call        dword ptr [ebx+20];TStrings.Put
 006E1C4B    mov         edx,dword ptr ds:[7C4414];^gvar_007C2DF8
 006E1C51    mov         edx,dword ptr [edx]
 006E1C53    mov         eax,dword ptr [ebp-4]
 006E1C56    mov         eax,dword ptr [eax+714];TFXPDFrame.gbServiceCodes:TGroupBox
 006E1C5C    call        TControl.SetText
 006E1C61    mov         edx,dword ptr ds:[7C4E10];^gvar_007C2DFC
 006E1C67    mov         edx,dword ptr [edx]
 006E1C69    mov         eax,dword ptr [ebp-4]
 006E1C6C    mov         eax,dword ptr [eax+718];TFXPDFrame.lbSCode1:TLabel
 006E1C72    call        TControl.SetText
 006E1C77    mov         edx,dword ptr ds:[7C4EA4];^gvar_007C2E00
 006E1C7D    mov         edx,dword ptr [edx]
 006E1C7F    mov         eax,dword ptr [ebp-4]
 006E1C82    mov         eax,dword ptr [eax+71C];TFXPDFrame.lbSCode2:TLabel
 006E1C88    call        TControl.SetText
 006E1C8D    mov         edx,dword ptr ds:[7C4A24];^gvar_007C2E04
 006E1C93    mov         edx,dword ptr [edx]
 006E1C95    mov         eax,dword ptr [ebp-4]
 006E1C98    mov         eax,dword ptr [eax+720];TFXPDFrame.lbSCode3:TLabel
 006E1C9E    call        TControl.SetText
 006E1CA3    mov         edx,dword ptr ds:[7C41B0];^gvar_007C2E08
 006E1CA9    mov         edx,dword ptr [edx]
 006E1CAB    mov         eax,dword ptr [ebp-4]
 006E1CAE    mov         eax,dword ptr [eax+730];TFXPDFrame.gbSummertime:TGroupBox
 006E1CB4    call        TControl.SetText
 006E1CB9    mov         edx,dword ptr ds:[7C4394];^gvar_007C2E0C
 006E1CBF    mov         edx,dword ptr [edx]
 006E1CC1    mov         eax,dword ptr [ebp-4]
 006E1CC4    mov         eax,dword ptr [eax+734];TFXPDFrame.cbSummertime:TCheckBox
 006E1CCA    call        TControl.SetText
 006E1CCF    mov         edx,dword ptr ds:[7C4BBC];^gvar_007C2E10
 006E1CD5    mov         edx,dword ptr [edx]
 006E1CD7    mov         eax,dword ptr [ebp-4]
 006E1CDA    mov         eax,dword ptr [eax+738];TFXPDFrame.gbZoneDisableTime:TGroupBox
 006E1CE0    call        TControl.SetText
 006E1CE5    mov         edx,dword ptr ds:[7C45A4];^gvar_007C2E14
 006E1CEB    mov         edx,dword ptr [edx]
 006E1CED    mov         eax,dword ptr [ebp-4]
 006E1CF0    mov         eax,dword ptr [eax+740];TFXPDFrame.lbHours:TLabel
 006E1CF6    call        TControl.SetText
 006E1CFB    mov         edx,dword ptr ds:[7C4E64];^gvar_007C2E18
 006E1D01    mov         edx,dword ptr [edx]
 006E1D03    mov         eax,dword ptr [ebp-4]
 006E1D06    mov         eax,dword ptr [eax+744];TFXPDFrame.gbMaxAdoDisableTime:TGroupBox
 006E1D0C    call        TControl.SetText
 006E1D11    mov         edx,dword ptr ds:[7C4308];^gvar_007C2E1C
 006E1D17    mov         edx,dword ptr [edx]
 006E1D19    mov         eax,dword ptr [ebp-4]
 006E1D1C    mov         eax,dword ptr [eax+748];TFXPDFrame.lbMinutes:TLabel
 006E1D22    call        TControl.SetText
 006E1D27    mov         edx,dword ptr ds:[7C46E4];^gvar_007C2E20
 006E1D2D    mov         edx,dword ptr [edx]
 006E1D2F    mov         eax,dword ptr [ebp-4]
 006E1D32    mov         eax,dword ptr [eax+750];TFXPDFrame.gbMultiCriteriaLevel6:TGroupBox
 006E1D38    call        TControl.SetText
 006E1D3D    mov         edx,dword ptr ds:[7C4438];^gvar_007C2E24
 006E1D43    mov         edx,dword ptr [edx]
 006E1D45    mov         eax,dword ptr [ebp-4]
 006E1D48    mov         eax,dword ptr [eax+754];TFXPDFrame.cbIndSmokeDetDisabled:TCheckBox
 006E1D4E    call        TControl.SetText
 006E1D53    mov         edx,dword ptr ds:[7C4E0C];^gvar_007C2E28
 006E1D59    mov         edx,dword ptr [edx]
 006E1D5B    mov         eax,dword ptr [ebp-4]
 006E1D5E    mov         eax,dword ptr [eax+758];TFXPDFrame.gbIndBuzzerMuted:TGroupBox
 006E1D64    call        TControl.SetText
 006E1D69    mov         edx,dword ptr ds:[7C4250];^gvar_007C2E2C
 006E1D6F    mov         edx,dword ptr [edx]
 006E1D71    mov         eax,dword ptr [ebp-4]
 006E1D74    mov         eax,dword ptr [eax+75C];TFXPDFrame.cbIndBuzzerMuted:TCheckBox
 006E1D7A    call        TControl.SetText
 006E1D7F    mov         edx,dword ptr ds:[7C4D98];^gvar_007C2E30
 006E1D85    mov         edx,dword ptr [edx]
 006E1D87    mov         eax,dword ptr [ebp-4]
 006E1D8A    mov         eax,dword ptr [eax+760];TFXPDFrame.gbMaintInterval:TGroupBox
 006E1D90    call        TControl.SetText
 006E1D95    xor         eax,eax
 006E1D97    pop         edx
 006E1D98    pop         ecx
 006E1D99    pop         ecx
 006E1D9A    mov         dword ptr fs:[eax],edx
 006E1D9D    push        6E1DCA
 006E1DA2    lea         eax,[ebp-238]
 006E1DA8    mov         edx,64
 006E1DAD    call        @UStrArrayClr
 006E1DB2    lea         eax,[ebp-0A8]
 006E1DB8    mov         edx,27
 006E1DBD    call        @UStrArrayClr
 006E1DC2    ret
>006E1DC3    jmp         @HandleFinally
>006E1DC8    jmp         006E1DA2
 006E1DCA    pop         ebx
 006E1DCB    mov         esp,ebp
 006E1DCD    pop         ebp
 006E1DCE    ret
*}
end;

//006E3D1C
{*procedure sub_006E3D1C(?:TComboBox; ?:?; ?:?);
begin
 006E3D1C    push        ebp
 006E3D1D    mov         ebp,esp
 006E3D1F    add         esp,0FFFFFFF8
 006E3D22    push        ebx
 006E3D23    mov         dword ptr [ebp-8],edx
 006E3D26    mov         dword ptr [ebp-4],eax
 006E3D29    mov         eax,dword ptr [ebp-4]
 006E3D2C    mov         eax,dword ptr [eax+2CC]
 006E3D32    mov         edx,dword ptr [eax]
 006E3D34    call        dword ptr [edx+48]
 006E3D37    cmp         dword ptr [ebp-8],7
>006E3D3B    jne         006E3D6C
 006E3D3D    mov         eax,dword ptr [ebp+8]
 006E3D40    mov         eax,dword ptr [eax-4]
 006E3D43    mov         eax,dword ptr [eax+3C4]
 006E3D49    cmp         eax,dword ptr [ebp-4]
>006E3D4C    jne         006E3D6C
 006E3D4E    mov         edx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006E3D54    mov         edx,dword ptr [edx+20]
 006E3D57    mov         ecx,8
 006E3D5C    mov         eax,dword ptr [ebp-4]
 006E3D5F    mov         ebx,dword ptr [eax]
 006E3D61    call        dword ptr [ebx+110]
>006E3D67    jmp         006E3E33
 006E3D6C    cmp         dword ptr [ebp-8],8
>006E3D70    jne         006E3DA1
 006E3D72    mov         eax,dword ptr [ebp+8]
 006E3D75    mov         eax,dword ptr [eax-4]
 006E3D78    mov         eax,dword ptr [eax+3C4]
 006E3D7E    cmp         eax,dword ptr [ebp-4]
>006E3D81    jne         006E3DA1
 006E3D83    mov         edx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006E3D89    mov         edx,dword ptr [edx+24]
 006E3D8C    mov         ecx,9
 006E3D91    mov         eax,dword ptr [ebp-4]
 006E3D94    mov         ebx,dword ptr [eax]
 006E3D96    call        dword ptr [ebx+110]
>006E3D9C    jmp         006E3E33
 006E3DA1    mov         edx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006E3DA7    mov         edx,dword ptr [edx]
 006E3DA9    xor         ecx,ecx
 006E3DAB    mov         eax,dword ptr [ebp-4]
 006E3DAE    mov         ebx,dword ptr [eax]
 006E3DB0    call        dword ptr [ebx+110]
 006E3DB6    mov         edx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006E3DBC    mov         edx,dword ptr [edx+4]
 006E3DBF    mov         ecx,1
 006E3DC4    mov         eax,dword ptr [ebp-4]
 006E3DC7    mov         ebx,dword ptr [eax]
 006E3DC9    call        dword ptr [ebx+110]
 006E3DCF    mov         edx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006E3DD5    mov         edx,dword ptr [edx+0C]
 006E3DD8    mov         ecx,3
 006E3DDD    mov         eax,dword ptr [ebp-4]
 006E3DE0    mov         ebx,dword ptr [eax]
 006E3DE2    call        dword ptr [ebx+110]
 006E3DE8    mov         edx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006E3DEE    mov         edx,dword ptr [edx+10]
 006E3DF1    mov         ecx,4
 006E3DF6    mov         eax,dword ptr [ebp-4]
 006E3DF9    mov         ebx,dword ptr [eax]
 006E3DFB    call        dword ptr [ebx+110]
 006E3E01    mov         edx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006E3E07    mov         edx,dword ptr [edx+14]
 006E3E0A    mov         ecx,5
 006E3E0F    mov         eax,dword ptr [ebp-4]
 006E3E12    mov         ebx,dword ptr [eax]
 006E3E14    call        dword ptr [ebx+110]
 006E3E1A    mov         edx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 006E3E20    mov         edx,dword ptr [edx+18]
 006E3E23    mov         ecx,6
 006E3E28    mov         eax,dword ptr [ebp-4]
 006E3E2B    mov         ebx,dword ptr [eax]
 006E3E2D    call        dword ptr [ebx+110]
 006E3E33    pop         ebx
 006E3E34    pop         ecx
 006E3E35    pop         ecx
 006E3E36    pop         ebp
 006E3E37    ret
end;*}

//006E3E38
{*procedure sub_006E3E38(?:TComboBox; ?:?);
begin
 006E3E38    push        ebp
 006E3E39    mov         ebp,esp
 006E3E3B    add         esp,0FFFFFFF8
 006E3E3E    push        ebx
 006E3E3F    mov         dword ptr [ebp-8],edx
 006E3E42    mov         dword ptr [ebp-4],eax
 006E3E45    mov         eax,dword ptr [ebp-4]
 006E3E48    mov         eax,dword ptr [eax+2CC]
 006E3E4E    mov         edx,dword ptr [eax]
 006E3E50    call        dword ptr [edx+48]
 006E3E53    cmp         dword ptr [ebp-8],7
>006E3E57    je          006E3E5F
 006E3E59    cmp         dword ptr [ebp-8],8
>006E3E5D    jne         006E3E7A
 006E3E5F    mov         edx,dword ptr ds:[7C4254];^gvar_007C287C:array[5] of ?
 006E3E65    mov         edx,dword ptr [edx+10]
 006E3E68    mov         ecx,4
 006E3E6D    mov         eax,dword ptr [ebp-4]
 006E3E70    mov         ebx,dword ptr [eax]
 006E3E72    call        dword ptr [ebx+110]
>006E3E78    jmp         006E3EC1
 006E3E7A    mov         edx,dword ptr ds:[7C4254];^gvar_007C287C:array[5] of ?
 006E3E80    mov         edx,dword ptr [edx]
 006E3E82    xor         ecx,ecx
 006E3E84    mov         eax,dword ptr [ebp-4]
 006E3E87    mov         ebx,dword ptr [eax]
 006E3E89    call        dword ptr [ebx+110]
 006E3E8F    mov         edx,dword ptr ds:[7C4254];^gvar_007C287C:array[5] of ?
 006E3E95    mov         edx,dword ptr [edx+4]
 006E3E98    mov         ecx,1
 006E3E9D    mov         eax,dword ptr [ebp-4]
 006E3EA0    mov         ebx,dword ptr [eax]
 006E3EA2    call        dword ptr [ebx+110]
 006E3EA8    mov         edx,dword ptr ds:[7C4254];^gvar_007C287C:array[5] of ?
 006E3EAE    mov         edx,dword ptr [edx+8]
 006E3EB1    mov         ecx,2
 006E3EB6    mov         eax,dword ptr [ebp-4]
 006E3EB9    mov         ebx,dword ptr [eax]
 006E3EBB    call        dword ptr [ebx+110]
 006E3EC1    xor         edx,edx
 006E3EC3    mov         eax,dword ptr [ebp-4]
 006E3EC6    mov         ecx,dword ptr [eax]
 006E3EC8    call        dword ptr [ecx+10C]
 006E3ECE    pop         ebx
 006E3ECF    pop         ecx
 006E3ED0    pop         ecx
 006E3ED1    pop         ebp
 006E3ED2    ret
end;*}

//006E3ED4
{*procedure sub_006E3ED4(?:TSpinEdit; ?:?; ?:?);
begin
 006E3ED4    push        ebp
 006E3ED5    mov         ebp,esp
 006E3ED7    add         esp,0FFFFFFF8
 006E3EDA    mov         dword ptr [ebp-8],edx
 006E3EDD    mov         dword ptr [ebp-4],eax
 006E3EE0    mov         eax,dword ptr [ebp-4]
 006E3EE3    mov         dword ptr [eax+2C8],1
 006E3EED    cmp         dword ptr [ebp-8],7
>006E3EF1    je          006E3EF9
 006E3EF3    cmp         dword ptr [ebp-8],8
>006E3EF7    jne         006E3F15
 006E3EF9    mov         eax,dword ptr [ebp-4]
 006E3EFC    mov         dword ptr [eax+2CC],1
 006E3F06    xor         edx,edx
 006E3F08    mov         eax,dword ptr [ebp-4]
 006E3F0B    mov         ecx,dword ptr [eax]
 006E3F0D    call        dword ptr [ecx+88]
>006E3F13    jmp         006E3F2F
 006E3F15    mov         eax,dword ptr [ebp-4]
 006E3F18    mov         dword ptr [eax+2CC],4
 006E3F22    mov         dl,1
 006E3F24    mov         eax,dword ptr [ebp-4]
 006E3F27    mov         ecx,dword ptr [eax]
 006E3F29    call        dword ptr [ecx+88]
 006E3F2F    mov         eax,dword ptr [ebp+8]
 006E3F32    mov         eax,dword ptr [eax-4]
 006E3F35    mov         eax,dword ptr [eax+4D0]
 006E3F3B    mov         edx,1
 006E3F40    call        TSpinEdit.SetValue
 006E3F45    mov         eax,dword ptr [ebp+8]
 006E3F48    mov         eax,dword ptr [eax-4]
 006E3F4B    mov         edx,dword ptr [eax+4D0]
 006E3F51    mov         eax,dword ptr [ebp+8]
 006E3F54    mov         eax,dword ptr [eax-4]
 006E3F57    call        TFXPDFrame.speCurrentIOCChange
 006E3F5C    pop         ecx
 006E3F5D    pop         ecx
 006E3F5E    pop         ebp
 006E3F5F    ret
end;*}

//006E3F60
procedure TFXPDFrame.Show(FXPanel:TFXPanel);
begin
{*
 006E3F60    push        ebp
 006E3F61    mov         ebp,esp
 006E3F63    add         esp,0FFFFFFF8
 006E3F66    mov         dword ptr [ebp-8],edx
 006E3F69    mov         dword ptr [ebp-4],eax
 006E3F6C    mov         eax,dword ptr [ebp-4]
 006E3F6F    mov         edx,dword ptr [ebp-8]
 006E3F72    mov         dword ptr [eax+85C],edx;TFXPDFrame.FXPan:TFXPanel
 006E3F78    mov         eax,dword ptr [ebp-4]
 006E3F7B    mov         eax,dword ptr [eax+85C];TFXPDFrame.FXPan:TFXPanel
 006E3F81    mov         eax,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 006E3F84    mov         cl,byte ptr [eax+180]
 006E3F8A    mov         dl,1
 006E3F8C    mov         eax,[0069E56C];TFXPPD
 006E3F91    call        TFXPPD.Create;TFXPPD.Create
 006E3F96    mov         edx,dword ptr [ebp-4]
 006E3F99    mov         dword ptr [edx+858],eax;TFXPDFrame.FXPDTmp:TFXPPD
 006E3F9F    mov         eax,dword ptr [ebp-4]
 006E3FA2    mov         edx,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E3FA8    mov         eax,dword ptr [ebp-4]
 006E3FAB    mov         eax,dword ptr [eax+85C];TFXPDFrame.FXPan:TFXPanel
 006E3FB1    mov         eax,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 006E3FB4    call        TFXPPD.CopyTo
 006E3FB9    mov         eax,dword ptr [ebp-4]
 006E3FBC    call        TFXPDFrame.Setup
 006E3FC1    mov         eax,dword ptr [ebp-4]
 006E3FC4    mov         eax,dword ptr [eax+85C];TFXPDFrame.FXPan:TFXPanel
 006E3FCA    mov         eax,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 006E3FCD    mov         cl,byte ptr [eax+180]
 006E3FD3    mov         dl,1
 006E3FD5    mov         eax,[00697ADC];TFXPIO
 006E3FDA    call        TFXPIO.Create;TFXPIO.Create
 006E3FDF    mov         edx,dword ptr [ebp-4]
 006E3FE2    mov         dword ptr [edx+854],eax;TFXPDFrame.FXIOModel:TFXPIO
 006E3FE8    mov         eax,dword ptr [ebp-4]
 006E3FEB    mov         edx,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E3FF1    mov         eax,dword ptr [ebp-4]
 006E3FF4    mov         eax,dword ptr [eax+85C];TFXPDFrame.FXPan:TFXPanel
 006E3FFA    mov         eax,dword ptr [eax+10];TFXPanel.FXPIO:TFXPIO
 006E3FFD    call        TFXPIO.CopyTo
 006E4002    push        ebp
 006E4003    mov         eax,dword ptr [ebp-4]
 006E4006    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E400C    xor         edx,edx
 006E400E    mov         dl,byte ptr [eax+180]
 006E4014    mov         eax,dword ptr [ebp-4]
 006E4017    mov         eax,dword ptr [eax+4D4];TFXPDFrame.IOCTypeSelection:TComboBox
 006E401D    call        006E3E38
 006E4022    pop         ecx
 006E4023    push        ebp
 006E4024    mov         eax,dword ptr [ebp-4]
 006E4027    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E402D    xor         edx,edx
 006E402F    mov         dl,byte ptr [eax+180]
 006E4035    mov         eax,dword ptr [ebp-4]
 006E4038    mov         eax,dword ptr [eax+4D0];TFXPDFrame.speCurrentIOC:TSpinEdit
 006E403E    call        006E3ED4
 006E4043    pop         ecx
 006E4044    mov         eax,[007C4BFC];^gvar_007CA840
 006E4049    cmp         byte ptr [eax],0
>006E404C    je          006E4087
 006E404E    mov         eax,dword ptr [ebp-4]
 006E4051    mov         eax,dword ptr [eax+318];TFXPDFrame.cbRS4852Use:TComboBox
 006E4057    xor         edx,edx
 006E4059    mov         ecx,dword ptr [eax]
 006E405B    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E4061    mov         eax,dword ptr [ebp-4]
 006E4064    mov         eax,dword ptr [eax+328];TFXPDFrame.cbRS4853Use:TComboBox
 006E406A    xor         edx,edx
 006E406C    mov         ecx,dword ptr [eax]
 006E406E    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E4074    mov         eax,dword ptr [ebp-4]
 006E4077    mov         eax,dword ptr [eax+394];TFXPDFrame.clVisiblePanels:TCheckListBox
 006E407D    xor         edx,edx
 006E407F    mov         ecx,dword ptr [eax]
 006E4081    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E4087    push        ebp
 006E4088    mov         eax,dword ptr [ebp-4]
 006E408B    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E4091    xor         edx,edx
 006E4093    mov         dl,byte ptr [eax+180]
 006E4099    mov         eax,dword ptr [ebp-4]
 006E409C    mov         eax,dword ptr [eax+3C4];TFXPDFrame.cbLC1Type:TComboBox
 006E40A2    call        006E3D1C
 006E40A7    pop         ecx
 006E40A8    push        ebp
 006E40A9    mov         eax,dword ptr [ebp-4]
 006E40AC    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E40B2    xor         edx,edx
 006E40B4    mov         dl,byte ptr [eax+180]
 006E40BA    mov         eax,dword ptr [ebp-4]
 006E40BD    mov         eax,dword ptr [eax+3F8];TFXPDFrame.cbLC2Type:TComboBox
 006E40C3    call        006E3D1C
 006E40C8    pop         ecx
 006E40C9    push        ebp
 006E40CA    mov         eax,dword ptr [ebp-4]
 006E40CD    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E40D3    xor         edx,edx
 006E40D5    mov         dl,byte ptr [eax+180]
 006E40DB    mov         eax,dword ptr [ebp-4]
 006E40DE    mov         eax,dword ptr [eax+42C];TFXPDFrame.cbLC3Type:TComboBox
 006E40E4    call        006E3D1C
 006E40E9    pop         ecx
 006E40EA    push        ebp
 006E40EB    mov         eax,dword ptr [ebp-4]
 006E40EE    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E40F4    xor         edx,edx
 006E40F6    mov         dl,byte ptr [eax+180]
 006E40FC    mov         eax,dword ptr [ebp-4]
 006E40FF    mov         eax,dword ptr [eax+460];TFXPDFrame.cbLC4Type:TComboBox
 006E4105    call        006E3D1C
 006E410A    pop         ecx
 006E410B    mov         eax,dword ptr [ebp-4]
 006E410E    call        006E6B2C
 006E4113    mov         eax,dword ptr [ebp-4]
 006E4116    call        006E6CA4
 006E411B    mov         eax,dword ptr [ebp-4]
 006E411E    call        006E792C
 006E4123    mov         eax,dword ptr [ebp-4]
 006E4126    call        006E8044
 006E412B    mov         eax,dword ptr [ebp-4]
 006E412E    call        006E952C
 006E4133    mov         eax,dword ptr [ebp-4]
 006E4136    mov         byte ptr [eax+848],0;TFXPDFrame.CurrentIOC:LongInt
 006E413D    mov         eax,dword ptr [ebp-4]
 006E4140    call        006E58E0
 006E4145    mov         eax,dword ptr [ebp-4]
 006E4148    mov         eax,dword ptr [eax+4D0];TFXPDFrame.speCurrentIOC:TSpinEdit
 006E414E    call        TSpinEdit.GetValue
 006E4153    cmp         eax,0FF
>006E4158    jbe         006E415F
 006E415A    call        @BoundErr
 006E415F    mov         edx,dword ptr [ebp-4]
 006E4162    mov         byte ptr [edx+848],al;TFXPDFrame.CurrentIOC:LongInt
 006E4168    mov         eax,dword ptr [ebp-4]
 006E416B    call        006E5E6C
 006E4170    mov         eax,dword ptr [ebp-4]
 006E4173    call        006EB2A4
 006E4178    mov         eax,dword ptr [ebp-4]
 006E417B    call        006EB628
 006E4180    mov         eax,dword ptr [ebp-4]
 006E4183    call        006EBA1C
 006E4188    mov         eax,dword ptr [ebp-4]
 006E418B    call        006EBE3C
 006E4190    mov         eax,dword ptr [ebp-4]
 006E4193    call        006EBFA0
 006E4198    mov         eax,dword ptr [ebp-4]
 006E419B    mov         edx,dword ptr [eax+2B4];TFXPDFrame.PanelInfoSheet:TTabSheet
 006E41A1    mov         eax,dword ptr [ebp-4]
 006E41A4    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006E41AA    call        TPageControl.SetActivePage
 006E41AF    mov         dl,1
 006E41B1    mov         eax,dword ptr [ebp-4]
 006E41B4    call        TControl.SetVisible
 006E41B9    mov         eax,dword ptr [ebp-4]
 006E41BC    call        TControl.BringToFront
 006E41C1    mov         eax,dword ptr [ebp-4]
 006E41C4    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006E41CA    mov         edx,dword ptr [eax]
 006E41CC    call        dword ptr [edx+104];TWinControl.SetFocus
 006E41D2    mov         eax,dword ptr [ebp-4]
 006E41D5    mov         byte ptr [eax+850],0;TFXPDFrame.FModified:Boolean
 006E41DC    pop         ecx
 006E41DD    pop         ecx
 006E41DE    pop         ebp
 006E41DF    ret
*}
end;

//006E41E0
procedure TFXPDFrame.btnOKClick(Sender:TObject);
begin
{*
 006E41E0    push        ebp
 006E41E1    mov         ebp,esp
 006E41E3    add         esp,0FFFFFFE4
 006E41E6    mov         dword ptr [ebp-1C],edx
 006E41E9    mov         dword ptr [ebp-4],eax
 006E41EC    mov         eax,dword ptr [ebp-4]
 006E41EF    mov         eax,dword ptr [eax+85C];TFXPDFrame.FXPan:TFXPanel
 006E41F5    mov         eax,dword ptr [eax+14];TFXPanel.FXPAD:TFXPAD
 006E41F8    mov         dword ptr [ebp-14],eax
 006E41FB    mov         eax,dword ptr [ebp-4]
 006E41FE    mov         eax,dword ptr [eax+85C];TFXPDFrame.FXPan:TFXPanel
 006E4204    mov         eax,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 006E4207    movzx       eax,word ptr [eax+123]
 006E420E    mov         edx,dword ptr [ebp-4]
 006E4211    mov         edx,dword ptr [edx+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E4217    movzx       edx,word ptr [edx+123]
 006E421E    sub         eax,edx
>006E4220    jno         006E4227
 006E4222    call        @IntOver
 006E4227    mov         dword ptr [ebp-18],eax
 006E422A    mov         eax,dword ptr [ebp-4]
 006E422D    mov         eax,dword ptr [eax+38C];TFXPDFrame.cbRetainZoneIDs:TCheckBox
 006E4233    mov         edx,dword ptr [eax]
 006E4235    call        dword ptr [edx+108];TCheckBox.GetChecked
 006E423B    test        al,al
>006E423D    je          006E42B1
 006E423F    cmp         dword ptr [ebp-18],0
>006E4243    jne         006E4268
 006E4245    mov         eax,dword ptr [ebp-4]
 006E4248    mov         eax,dword ptr [eax+85C];TFXPDFrame.FXPan:TFXPanel
 006E424E    mov         eax,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 006E4251    mov         al,byte ptr [eax+125]
 006E4257    mov         edx,dword ptr [ebp-4]
 006E425A    mov         edx,dword ptr [edx+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E4260    cmp         al,byte ptr [edx+125]
>006E4266    je          006E42B1
 006E4268    mov         eax,dword ptr [ebp-4]
 006E426B    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E4271    mov         cl,byte ptr [eax+125]
 006E4277    mov         edx,dword ptr [ebp-18]
 006E427A    mov         eax,dword ptr [ebp-14]
 006E427D    call        TFXPAD.ValidateZoneIdChange
 006E4282    test        al,al
>006E4284    je          006E4293
 006E4286    mov         edx,dword ptr [ebp-18]
 006E4289    mov         eax,dword ptr [ebp-14]
 006E428C    call        TFXPAD.PerformZoneIdChange
>006E4291    jmp         006E42B1
 006E4293    push        0
 006E4295    push        3
 006E4297    mov         eax,[007C44D8];^gvar_007C2CB0
 006E429C    mov         eax,dword ptr [eax]
 006E429E    mov         cx,word ptr ds:[6E4420];0x8 gvar_006E4420
 006E42A5    mov         dl,1
 006E42A7    call        MessageDlg
>006E42AC    jmp         006E441C
 006E42B1    mov         eax,dword ptr [ebp-4]
 006E42B4    mov         eax,dword ptr [eax+85C];TFXPDFrame.FXPan:TFXPanel
 006E42BA    mov         eax,dword ptr [eax+8];TFXPanel.FXPCI:TFXPCI
 006E42BD    mov         dword ptr [ebp-8],eax
 006E42C0    mov         eax,dword ptr [ebp-4]
 006E42C3    mov         eax,dword ptr [eax+85C];TFXPDFrame.FXPan:TFXPanel
 006E42C9    mov         eax,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 006E42CC    mov         dword ptr [ebp-0C],eax
 006E42CF    mov         eax,dword ptr [ebp-4]
 006E42D2    mov         eax,dword ptr [eax+85C];TFXPDFrame.FXPan:TFXPanel
 006E42D8    mov         eax,dword ptr [eax+10];TFXPanel.FXPIO:TFXPIO
 006E42DB    mov         dword ptr [ebp-10],eax
 006E42DE    mov         eax,dword ptr [ebp-4]
 006E42E1    call        006E53D4
 006E42E6    mov         dl,1
 006E42E8    mov         eax,dword ptr [ebp-4]
 006E42EB    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E42F1    call        TFXPIO.GetIOCtrlrType
 006E42F6    mov         edx,dword ptr [ebp-4]
 006E42F9    mov         edx,dword ptr [edx+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E42FF    mov         byte ptr [edx+13E],al
 006E4305    mov         dl,2
 006E4307    mov         eax,dword ptr [ebp-4]
 006E430A    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E4310    call        TFXPIO.GetIOCtrlrType
 006E4315    mov         edx,dword ptr [ebp-4]
 006E4318    mov         edx,dword ptr [edx+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E431E    mov         byte ptr [edx+140],al
 006E4324    mov         dl,3
 006E4326    mov         eax,dword ptr [ebp-4]
 006E4329    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E432F    call        TFXPIO.GetIOCtrlrType
 006E4334    mov         edx,dword ptr [ebp-4]
 006E4337    mov         edx,dword ptr [edx+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E433D    mov         byte ptr [edx+142],al
 006E4343    mov         dl,4
 006E4345    mov         eax,dword ptr [ebp-4]
 006E4348    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E434E    call        TFXPIO.GetIOCtrlrType
 006E4353    mov         edx,dword ptr [ebp-4]
 006E4356    mov         edx,dword ptr [edx+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E435C    mov         byte ptr [edx+144],al
 006E4362    mov         edx,dword ptr [ebp-0C]
 006E4365    mov         eax,dword ptr [ebp-4]
 006E4368    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E436E    call        TFXPPD.IsEqual
 006E4373    test        al,al
>006E4375    jne         006E438D
 006E4377    mov         eax,[007C499C];^gvar_008DF5C0
 006E437C    mov         byte ptr [eax],1
 006E437F    mov         eax,dword ptr [ebp-8]
 006E4382    lea         edx,[eax+4];TFXPCI.FXCI:TFXCIRec
 006E4385    mov         eax,dword ptr [ebp-8]
 006E4388    call        TFXPCI.SetConfigInfo
 006E438D    mov         edx,dword ptr [ebp-10]
 006E4390    mov         eax,dword ptr [ebp-4]
 006E4393    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E4399    call        TFXPIO.IsEqual
 006E439E    test        al,al
>006E43A0    jne         006E43B8
 006E43A2    mov         eax,[007C4C68];^gvar_008DF5B8
 006E43A7    mov         byte ptr [eax],1
 006E43AA    mov         eax,dword ptr [ebp-8]
 006E43AD    lea         edx,[eax+44]
 006E43B0    mov         eax,dword ptr [ebp-8]
 006E43B3    call        TFXPCI.SetConfigInfo
 006E43B8    mov         eax,dword ptr [ebp-0C]
 006E43BB    xor         ecx,ecx
 006E43BD    mov         cl,byte ptr [eax+125]
 006E43C3    mov         eax,dword ptr [ebp-4]
 006E43C6    mov         eax,dword ptr [eax+85C];TFXPDFrame.FXPan:TFXPanel
 006E43CC    mov         eax,dword ptr [eax+14];TFXPanel.FXPAD:TFXPAD
 006E43CF    mov         edx,1
 006E43D4    call        TFXPAD.fnZonesInRange
 006E43D9    test        al,al
>006E43DB    jne         006E43F2
 006E43DD    push        0
 006E43DF    mov         cx,word ptr ds:[6E4424];0x4 gvar_006E4424
 006E43E6    xor         edx,edx
 006E43E8    mov         eax,6E4434;'Addressdata contains zone numbers that are out of range'
 006E43ED    call        MessageDlg
 006E43F2    mov         edx,dword ptr [ebp-0C]
 006E43F5    mov         eax,dword ptr [ebp-4]
 006E43F8    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E43FE    call        TFXPPD.CopyTo
 006E4403    mov         edx,dword ptr [ebp-10]
 006E4406    mov         eax,dword ptr [ebp-4]
 006E4409    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E440F    call        TFXPIO.CopyTo
 006E4414    mov         eax,dword ptr [ebp-4]
 006E4417    call        TFXPDFrame.CleanUpAndHide
 006E441C    mov         esp,ebp
 006E441E    pop         ebp
 006E441F    ret
*}
end;

//006E44A4
procedure TFXPDFrame.CleanUpAndHide;
begin
{*
 006E44A4    push        ebp
 006E44A5    mov         ebp,esp
 006E44A7    add         esp,0FFFFFFEC
 006E44AA    mov         dword ptr [ebp-4],eax
 006E44AD    mov         eax,dword ptr [ebp-4]
 006E44B0    xor         edx,edx
 006E44B2    mov         dword ptr [eax+85C],edx;TFXPDFrame.FXPan:TFXPanel
 006E44B8    mov         eax,dword ptr [ebp-4]
 006E44BB    add         eax,854;TFXPDFrame.FXIOModel:TFXPIO
 006E44C0    mov         dword ptr [ebp-8],eax
 006E44C3    mov         eax,dword ptr [ebp-8]
 006E44C6    mov         eax,dword ptr [eax]
 006E44C8    mov         dword ptr [ebp-0C],eax
 006E44CB    mov         eax,dword ptr [ebp-8]
 006E44CE    xor         edx,edx
 006E44D0    mov         dword ptr [eax],edx
 006E44D2    mov         eax,dword ptr [ebp-0C]
 006E44D5    call        TObject.Free
 006E44DA    mov         eax,dword ptr [ebp-4]
 006E44DD    add         eax,858;TFXPDFrame.FXPDTmp:TFXPPD
 006E44E2    mov         dword ptr [ebp-10],eax
 006E44E5    mov         eax,dword ptr [ebp-10]
 006E44E8    mov         eax,dword ptr [eax]
 006E44EA    mov         dword ptr [ebp-14],eax
 006E44ED    mov         eax,dword ptr [ebp-10]
 006E44F0    xor         edx,edx
 006E44F2    mov         dword ptr [eax],edx
 006E44F4    mov         eax,dword ptr [ebp-14]
 006E44F7    call        TObject.Free
 006E44FC    mov         eax,dword ptr [ebp-4]
 006E44FF    call        TControl.Hide
 006E4504    mov         esp,ebp
 006E4506    pop         ebp
 006E4507    ret
*}
end;

//006E4508
function TFXPDFrame.VerifyCancelChanges:Boolean;
begin
{*
 006E4508    push        ebp
 006E4509    mov         ebp,esp
 006E450B    add         esp,0FFFFFFF8
 006E450E    mov         dword ptr [ebp-4],eax
 006E4511    mov         eax,dword ptr [ebp-4]
 006E4514    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E451A    cmp         byte ptr [eax+4814],0;TFXPIO.FModified:Boolean
>006E4521    jne         006E4543
 006E4523    mov         eax,dword ptr [ebp-4]
 006E4526    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E452C    cmp         byte ptr [eax+204],0;TFXPPD.FModified:Boolean
>006E4533    jne         006E4543
 006E4535    mov         eax,dword ptr [ebp-4]
 006E4538    call        TFXPDFrame.CleanUpAndHide
 006E453D    mov         byte ptr [ebp-5],1
>006E4541    jmp         006E457C
 006E4543    push        134
 006E4548    mov         eax,[007C2ED8];^'Changes you might have made in this data view will be lost.
Do you wan...
 006E454D    call        @UStrToPWChar
 006E4552    mov         edx,eax
 006E4554    mov         ecx,6E4584
 006E4559    mov         eax,[007C4A18];^Application:TApplication
 006E455E    mov         eax,dword ptr [eax]
 006E4560    call        TApplication.MessageBox
 006E4565    cmp         eax,6
>006E4568    jne         006E4578
 006E456A    mov         eax,dword ptr [ebp-4]
 006E456D    call        TFXPDFrame.CleanUpAndHide
 006E4572    mov         byte ptr [ebp-5],1
>006E4576    jmp         006E457C
 006E4578    mov         byte ptr [ebp-5],0
 006E457C    mov         al,byte ptr [ebp-5]
 006E457F    pop         ecx
 006E4580    pop         ecx
 006E4581    pop         ebp
 006E4582    ret
*}
end;

//006E4594
procedure TFXPDFrame.btnCancelClick(Sender:TObject);
begin
{*
 006E4594    push        ebp
 006E4595    mov         ebp,esp
 006E4597    add         esp,0FFFFFFF8
 006E459A    mov         dword ptr [ebp-8],edx
 006E459D    mov         dword ptr [ebp-4],eax
 006E45A0    mov         eax,dword ptr [ebp-4]
 006E45A3    call        TFXPDFrame.VerifyCancelChanges
 006E45A8    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 006E45AD    mov         eax,dword ptr [eax]
 006E45AF    call        TMainForm.DataFrameExit
 006E45B4    pop         ecx
 006E45B5    pop         ecx
 006E45B6    pop         ebp
 006E45B7    ret
*}
end;

//006E45B8
procedure TFXPDFrame.Setup;
begin
{*
 006E45B8    push        ebp
 006E45B9    mov         ebp,esp
 006E45BB    add         esp,0FFFFFFDC
 006E45BE    mov         dword ptr [ebp-4],eax
 006E45C1    mov         eax,dword ptr [ebp-4]
 006E45C4    call        TControl.GetClientWidth
 006E45C9    mov         edx,eax
 006E45CB    sub         edx,50
>006E45CE    jno         006E45D5
 006E45D0    call        @IntOver
 006E45D5    sub         edx,5
>006E45D8    jno         006E45DF
 006E45DA    call        @IntOver
 006E45DF    mov         eax,dword ptr [ebp-4]
 006E45E2    mov         eax,dword ptr [eax+770];TFXPDFrame.btnOK:TBitBtn
 006E45E8    call        TControl.SetLeft
 006E45ED    mov         eax,dword ptr [ebp-4]
 006E45F0    call        TControl.GetClientWidth
 006E45F5    mov         edx,eax
 006E45F7    sub         edx,50
>006E45FA    jno         006E4601
 006E45FC    call        @IntOver
 006E4601    sub         edx,5
>006E4604    jno         006E460B
 006E4606    call        @IntOver
 006E460B    mov         eax,dword ptr [ebp-4]
 006E460E    mov         eax,dword ptr [eax+76C];TFXPDFrame.btnCancel:TBitBtn
 006E4614    call        TControl.SetLeft
 006E4619    mov         eax,dword ptr [ebp-4]
 006E461C    mov         eax,dword ptr [eax+3C8];TFXPDFrame.speLC1FirstLoop:TSpinEdit
 006E4622    mov         dword ptr [eax+2CC],0FF;TSpinEdit.FMaxValue:Integer
 006E462C    mov         edx,262
 006E4631    mov         eax,dword ptr [ebp-4]
 006E4634    mov         eax,dword ptr [eax+4AC];TFXPDFrame.gbMCIO:TGroupBox
 006E463A    call        TControl.SetWidth
 006E463F    mov         eax,dword ptr [ebp-4]
 006E4642    mov         eax,dword ptr [eax+4B0];TFXPDFrame.CCIGridMC:TStringGrid
 006E4648    mov         dword ptr [ebp-8],eax
 006E464B    mov         edx,252
 006E4650    mov         eax,dword ptr [ebp-8]
 006E4653    call        TControl.SetWidth
 006E4658    mov         ecx,28
 006E465D    xor         edx,edx
 006E465F    mov         eax,dword ptr [ebp-8]
 006E4662    call        TCustomDrawGrid.SetColWidths
 006E4667    mov         ecx,78
 006E466C    mov         edx,1
 006E4671    mov         eax,dword ptr [ebp-8]
 006E4674    call        TCustomDrawGrid.SetColWidths
 006E4679    mov         ecx,3C
 006E467E    mov         edx,2
 006E4683    mov         eax,dword ptr [ebp-8]
 006E4686    call        TCustomDrawGrid.SetColWidths
 006E468B    mov         ecx,3C
 006E4690    mov         edx,3
 006E4695    mov         eax,dword ptr [ebp-8]
 006E4698    call        TCustomDrawGrid.SetColWidths
 006E469D    mov         ecx,3C
 006E46A2    mov         edx,4
 006E46A7    mov         eax,dword ptr [ebp-8]
 006E46AA    call        TCustomDrawGrid.SetColWidths
 006E46AF    mov         ecx,3C
 006E46B4    mov         edx,5
 006E46B9    mov         eax,dword ptr [ebp-8]
 006E46BC    call        TCustomDrawGrid.SetColWidths
 006E46C1    mov         ecx,3C
 006E46C6    mov         edx,6
 006E46CB    mov         eax,dword ptr [ebp-8]
 006E46CE    call        TCustomDrawGrid.SetColWidths
 006E46D3    mov         ecx,7C
 006E46D8    mov         edx,7
 006E46DD    mov         eax,dword ptr [ebp-8]
 006E46E0    call        TCustomDrawGrid.SetColWidths
 006E46E5    push        6E4D88;'1'
 006E46EA    mov         ecx,1
 006E46EF    xor         edx,edx
 006E46F1    mov         eax,dword ptr [ebp-8]
 006E46F4    call        TStringGrid.SetCells
 006E46F9    push        6E4D98;'2'
 006E46FE    mov         ecx,2
 006E4703    xor         edx,edx
 006E4705    mov         eax,dword ptr [ebp-8]
 006E4708    call        TStringGrid.SetCells
 006E470D    mov         eax,dword ptr [ebp-4]
 006E4710    mov         eax,dword ptr [eax+4B4];TFXPDFrame.CCOGridMC:TStringGrid
 006E4716    mov         dword ptr [ebp-0C],eax
 006E4719    mov         edx,252
 006E471E    mov         eax,dword ptr [ebp-0C]
 006E4721    call        TControl.SetWidth
 006E4726    mov         ecx,28
 006E472B    xor         edx,edx
 006E472D    mov         eax,dword ptr [ebp-0C]
 006E4730    call        TCustomDrawGrid.SetColWidths
 006E4735    mov         ecx,78
 006E473A    mov         edx,1
 006E473F    mov         eax,dword ptr [ebp-0C]
 006E4742    call        TCustomDrawGrid.SetColWidths
 006E4747    mov         ecx,0F2
 006E474C    mov         edx,2
 006E4751    mov         eax,dword ptr [ebp-0C]
 006E4754    call        TCustomDrawGrid.SetColWidths
 006E4759    mov         ecx,0B9
 006E475E    mov         edx,3
 006E4763    mov         eax,dword ptr [ebp-0C]
 006E4766    call        TCustomDrawGrid.SetColWidths
 006E476B    push        6E4D88;'1'
 006E4770    mov         ecx,1
 006E4775    xor         edx,edx
 006E4777    mov         eax,dword ptr [ebp-0C]
 006E477A    call        TStringGrid.SetCells
 006E477F    push        6E4D98;'2'
 006E4784    mov         ecx,2
 006E4789    xor         edx,edx
 006E478B    mov         eax,dword ptr [ebp-0C]
 006E478E    call        TStringGrid.SetCells
 006E4793    push        6E4DA8;'3'
 006E4798    mov         ecx,3
 006E479D    xor         edx,edx
 006E479F    mov         eax,dword ptr [ebp-0C]
 006E47A2    call        TStringGrid.SetCells
 006E47A7    mov         eax,dword ptr [ebp-4]
 006E47AA    mov         eax,dword ptr [eax+4B8];TFXPDFrame.ADOGridMC:TStringGrid
 006E47B0    mov         dword ptr [ebp-10],eax
 006E47B3    mov         edx,252
 006E47B8    mov         eax,dword ptr [ebp-10]
 006E47BB    call        TControl.SetWidth
 006E47C0    mov         ecx,28
 006E47C5    xor         edx,edx
 006E47C7    mov         eax,dword ptr [ebp-10]
 006E47CA    call        TCustomDrawGrid.SetColWidths
 006E47CF    mov         ecx,78
 006E47D4    mov         edx,1
 006E47D9    mov         eax,dword ptr [ebp-10]
 006E47DC    call        TCustomDrawGrid.SetColWidths
 006E47E1    mov         ecx,50
 006E47E6    mov         edx,2
 006E47EB    mov         eax,dword ptr [ebp-10]
 006E47EE    call        TCustomDrawGrid.SetColWidths
 006E47F3    mov         ecx,50
 006E47F8    mov         edx,3
 006E47FD    mov         eax,dword ptr [ebp-10]
 006E4800    call        TCustomDrawGrid.SetColWidths
 006E4805    mov         ecx,78
 006E480A    mov         edx,4
 006E480F    mov         eax,dword ptr [ebp-10]
 006E4812    call        TCustomDrawGrid.SetColWidths
 006E4817    mov         ecx,91
 006E481C    mov         edx,5
 006E4821    mov         eax,dword ptr [ebp-10]
 006E4824    call        TCustomDrawGrid.SetColWidths
 006E4829    push        6E4D88;'1'
 006E482E    mov         ecx,1
 006E4833    xor         edx,edx
 006E4835    mov         eax,dword ptr [ebp-10]
 006E4838    call        TStringGrid.SetCells
 006E483D    mov         edx,262
 006E4842    mov         eax,dword ptr [ebp-4]
 006E4845    mov         eax,dword ptr [eax+4CC];TFXPDFrame.gbIOC:TGroupBox
 006E484B    call        TControl.SetWidth
 006E4850    mov         eax,dword ptr [ebp-4]
 006E4853    mov         eax,dword ptr [eax+85C];TFXPDFrame.FXPan:TFXPanel
 006E4859    mov         eax,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 006E485C    cmp         byte ptr [eax+180],7
>006E4863    je          006E487E
 006E4865    mov         eax,dword ptr [ebp-4]
 006E4868    mov         eax,dword ptr [eax+85C];TFXPDFrame.FXPan:TFXPanel
 006E486E    mov         eax,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 006E4871    cmp         byte ptr [eax+180],8
>006E4878    jne         006E4A13
 006E487E    mov         eax,dword ptr [ebp-4]
 006E4881    mov         eax,dword ptr [eax+4D8];TFXPDFrame.CCIGrid:TStringGrid
 006E4887    mov         dword ptr [ebp-14],eax
 006E488A    mov         edx,252
 006E488F    mov         eax,dword ptr [ebp-14]
 006E4892    call        TControl.SetWidth
 006E4897    mov         ecx,28
 006E489C    xor         edx,edx
 006E489E    mov         eax,dword ptr [ebp-14]
 006E48A1    call        TCustomDrawGrid.SetColWidths
 006E48A6    mov         ecx,78
 006E48AB    mov         edx,1
 006E48B0    mov         eax,dword ptr [ebp-14]
 006E48B3    call        TCustomDrawGrid.SetColWidths
 006E48B8    mov         ecx,3C
 006E48BD    mov         edx,2
 006E48C2    mov         eax,dword ptr [ebp-14]
 006E48C5    call        TCustomDrawGrid.SetColWidths
 006E48CA    mov         ecx,3C
 006E48CF    mov         edx,3
 006E48D4    mov         eax,dword ptr [ebp-14]
 006E48D7    call        TCustomDrawGrid.SetColWidths
 006E48DC    mov         ecx,3C
 006E48E1    mov         edx,4
 006E48E6    mov         eax,dword ptr [ebp-14]
 006E48E9    call        TCustomDrawGrid.SetColWidths
 006E48EE    mov         ecx,3C
 006E48F3    mov         edx,5
 006E48F8    mov         eax,dword ptr [ebp-14]
 006E48FB    call        TCustomDrawGrid.SetColWidths
 006E4900    mov         ecx,3C
 006E4905    mov         edx,6
 006E490A    mov         eax,dword ptr [ebp-14]
 006E490D    call        TCustomDrawGrid.SetColWidths
 006E4912    mov         ecx,7C
 006E4917    mov         edx,7
 006E491C    mov         eax,dword ptr [ebp-14]
 006E491F    call        TCustomDrawGrid.SetColWidths
 006E4924    push        6E4D88;'1'
 006E4929    mov         ecx,1
 006E492E    xor         edx,edx
 006E4930    mov         eax,dword ptr [ebp-14]
 006E4933    call        TStringGrid.SetCells
 006E4938    push        6E4D98;'2'
 006E493D    mov         ecx,2
 006E4942    xor         edx,edx
 006E4944    mov         eax,dword ptr [ebp-14]
 006E4947    call        TStringGrid.SetCells
 006E494C    push        6E4DA8;'3'
 006E4951    mov         ecx,3
 006E4956    xor         edx,edx
 006E4958    mov         eax,dword ptr [ebp-14]
 006E495B    call        TStringGrid.SetCells
 006E4960    mov         eax,dword ptr [ebp-4]
 006E4963    mov         eax,dword ptr [eax+4DC];TFXPDFrame.CCOGrid:TStringGrid
 006E4969    mov         dword ptr [ebp-18],eax
 006E496C    mov         edx,252
 006E4971    mov         eax,dword ptr [ebp-18]
 006E4974    call        TControl.SetWidth
 006E4979    mov         ecx,28
 006E497E    xor         edx,edx
 006E4980    mov         eax,dword ptr [ebp-18]
 006E4983    call        TCustomDrawGrid.SetColWidths
 006E4988    mov         ecx,78
 006E498D    mov         edx,1
 006E4992    mov         eax,dword ptr [ebp-18]
 006E4995    call        TCustomDrawGrid.SetColWidths
 006E499A    mov         ecx,0F2
 006E499F    mov         edx,2
 006E49A4    mov         eax,dword ptr [ebp-18]
 006E49A7    call        TCustomDrawGrid.SetColWidths
 006E49AC    mov         ecx,0B9
 006E49B1    mov         edx,3
 006E49B6    mov         eax,dword ptr [ebp-18]
 006E49B9    call        TCustomDrawGrid.SetColWidths
 006E49BE    push        6E4D88;'1'
 006E49C3    mov         ecx,1
 006E49C8    xor         edx,edx
 006E49CA    mov         eax,dword ptr [ebp-18]
 006E49CD    call        TStringGrid.SetCells
 006E49D2    push        6E4D98;'2'
 006E49D7    mov         ecx,2
 006E49DC    xor         edx,edx
 006E49DE    mov         eax,dword ptr [ebp-18]
 006E49E1    call        TStringGrid.SetCells
 006E49E6    push        6E4DA8;'3'
 006E49EB    mov         ecx,3
 006E49F0    xor         edx,edx
 006E49F2    mov         eax,dword ptr [ebp-18]
 006E49F5    call        TStringGrid.SetCells
 006E49FA    push        6E4DB8;'4'
 006E49FF    mov         ecx,4
 006E4A04    xor         edx,edx
 006E4A06    mov         eax,dword ptr [ebp-18]
 006E4A09    call        TStringGrid.SetCells
>006E4A0E    jmp         006E4C5F
 006E4A13    mov         eax,dword ptr [ebp-4]
 006E4A16    mov         eax,dword ptr [eax+4D8];TFXPDFrame.CCIGrid:TStringGrid
 006E4A1C    mov         dword ptr [ebp-1C],eax
 006E4A1F    mov         edx,252
 006E4A24    mov         eax,dword ptr [ebp-1C]
 006E4A27    call        TControl.SetWidth
 006E4A2C    mov         ecx,28
 006E4A31    xor         edx,edx
 006E4A33    mov         eax,dword ptr [ebp-1C]
 006E4A36    call        TCustomDrawGrid.SetColWidths
 006E4A3B    mov         ecx,78
 006E4A40    mov         edx,1
 006E4A45    mov         eax,dword ptr [ebp-1C]
 006E4A48    call        TCustomDrawGrid.SetColWidths
 006E4A4D    mov         ecx,50
 006E4A52    mov         edx,2
 006E4A57    mov         eax,dword ptr [ebp-1C]
 006E4A5A    call        TCustomDrawGrid.SetColWidths
 006E4A5F    or          ecx,0FFFFFFFF
 006E4A62    mov         edx,3
 006E4A67    mov         eax,dword ptr [ebp-1C]
 006E4A6A    call        TCustomDrawGrid.SetColWidths
 006E4A6F    mov         ecx,50
 006E4A74    mov         edx,4
 006E4A79    mov         eax,dword ptr [ebp-1C]
 006E4A7C    call        TCustomDrawGrid.SetColWidths
 006E4A81    mov         ecx,50
 006E4A86    mov         edx,5
 006E4A8B    mov         eax,dword ptr [ebp-1C]
 006E4A8E    call        TCustomDrawGrid.SetColWidths
 006E4A93    mov         ecx,50
 006E4A98    mov         edx,6
 006E4A9D    mov         eax,dword ptr [ebp-1C]
 006E4AA0    call        TCustomDrawGrid.SetColWidths
 006E4AA5    mov         ecx,69
 006E4AAA    mov         edx,7
 006E4AAF    mov         eax,dword ptr [ebp-1C]
 006E4AB2    call        TCustomDrawGrid.SetColWidths
 006E4AB7    push        6E4D88;'1'
 006E4ABC    mov         ecx,1
 006E4AC1    xor         edx,edx
 006E4AC3    mov         eax,dword ptr [ebp-1C]
 006E4AC6    call        TStringGrid.SetCells
 006E4ACB    push        6E4D98;'2'
 006E4AD0    mov         ecx,2
 006E4AD5    xor         edx,edx
 006E4AD7    mov         eax,dword ptr [ebp-1C]
 006E4ADA    call        TStringGrid.SetCells
 006E4ADF    push        6E4DA8;'3'
 006E4AE4    mov         ecx,3
 006E4AE9    xor         edx,edx
 006E4AEB    mov         eax,dword ptr [ebp-1C]
 006E4AEE    call        TStringGrid.SetCells
 006E4AF3    push        6E4DB8;'4'
 006E4AF8    mov         ecx,4
 006E4AFD    xor         edx,edx
 006E4AFF    mov         eax,dword ptr [ebp-1C]
 006E4B02    call        TStringGrid.SetCells
 006E4B07    mov         eax,dword ptr [ebp-4]
 006E4B0A    mov         eax,dword ptr [eax+4DC];TFXPDFrame.CCOGrid:TStringGrid
 006E4B10    mov         dword ptr [ebp-20],eax
 006E4B13    mov         edx,252
 006E4B18    mov         eax,dword ptr [ebp-20]
 006E4B1B    call        TControl.SetWidth
 006E4B20    mov         ecx,28
 006E4B25    xor         edx,edx
 006E4B27    mov         eax,dword ptr [ebp-20]
 006E4B2A    call        TCustomDrawGrid.SetColWidths
 006E4B2F    mov         ecx,78
 006E4B34    mov         edx,1
 006E4B39    mov         eax,dword ptr [ebp-20]
 006E4B3C    call        TCustomDrawGrid.SetColWidths
 006E4B41    mov         ecx,0F2
 006E4B46    mov         edx,2
 006E4B4B    mov         eax,dword ptr [ebp-20]
 006E4B4E    call        TCustomDrawGrid.SetColWidths
 006E4B53    mov         ecx,0B9
 006E4B58    mov         edx,3
 006E4B5D    mov         eax,dword ptr [ebp-20]
 006E4B60    call        TCustomDrawGrid.SetColWidths
 006E4B65    push        6E4D88;'1'
 006E4B6A    mov         ecx,1
 006E4B6F    xor         edx,edx
 006E4B71    mov         eax,dword ptr [ebp-20]
 006E4B74    call        TStringGrid.SetCells
 006E4B79    push        6E4D98;'2'
 006E4B7E    mov         ecx,2
 006E4B83    xor         edx,edx
 006E4B85    mov         eax,dword ptr [ebp-20]
 006E4B88    call        TStringGrid.SetCells
 006E4B8D    mov         eax,dword ptr [ebp-4]
 006E4B90    mov         eax,dword ptr [eax+4E0];TFXPDFrame.ADOGrid:TStringGrid
 006E4B96    mov         dword ptr [ebp-24],eax
 006E4B99    mov         edx,252
 006E4B9E    mov         eax,dword ptr [ebp-24]
 006E4BA1    call        TControl.SetWidth
 006E4BA6    mov         ecx,28
 006E4BAB    xor         edx,edx
 006E4BAD    mov         eax,dword ptr [ebp-24]
 006E4BB0    call        TCustomDrawGrid.SetColWidths
 006E4BB5    mov         ecx,78
 006E4BBA    mov         edx,1
 006E4BBF    mov         eax,dword ptr [ebp-24]
 006E4BC2    call        TCustomDrawGrid.SetColWidths
 006E4BC7    mov         ecx,50
 006E4BCC    mov         edx,2
 006E4BD1    mov         eax,dword ptr [ebp-24]
 006E4BD4    call        TCustomDrawGrid.SetColWidths
 006E4BD9    mov         ecx,50
 006E4BDE    mov         edx,3
 006E4BE3    mov         eax,dword ptr [ebp-24]
 006E4BE6    call        TCustomDrawGrid.SetColWidths
 006E4BEB    mov         ecx,78
 006E4BF0    mov         edx,4
 006E4BF5    mov         eax,dword ptr [ebp-24]
 006E4BF8    call        TCustomDrawGrid.SetColWidths
 006E4BFD    mov         ecx,91
 006E4C02    mov         edx,5
 006E4C07    mov         eax,dword ptr [ebp-24]
 006E4C0A    call        TCustomDrawGrid.SetColWidths
 006E4C0F    push        6E4D88;'1'
 006E4C14    mov         ecx,1
 006E4C19    xor         edx,edx
 006E4C1B    mov         eax,dword ptr [ebp-24]
 006E4C1E    call        TStringGrid.SetCells
 006E4C23    push        6E4D98;'2'
 006E4C28    mov         ecx,2
 006E4C2D    xor         edx,edx
 006E4C2F    mov         eax,dword ptr [ebp-24]
 006E4C32    call        TStringGrid.SetCells
 006E4C37    push        6E4DA8;'3'
 006E4C3C    mov         ecx,3
 006E4C41    xor         edx,edx
 006E4C43    mov         eax,dword ptr [ebp-24]
 006E4C46    call        TStringGrid.SetCells
 006E4C4B    push        6E4DB8;'4'
 006E4C50    mov         ecx,4
 006E4C55    xor         edx,edx
 006E4C57    mov         eax,dword ptr [ebp-24]
 006E4C5A    call        TStringGrid.SetCells
 006E4C5F    xor         edx,edx
 006E4C61    mov         eax,dword ptr [ebp-4]
 006E4C64    mov         eax,dword ptr [eax+6C8];TFXPDFrame.rgAlarmdisplay:TRadioGroup
 006E4C6A    call        TCustomRadioGroup.GetButtons
 006E4C6F    xor         edx,edx
 006E4C71    call        TRadioButton.SetAlignment
 006E4C76    mov         edx,1
 006E4C7B    mov         eax,dword ptr [ebp-4]
 006E4C7E    mov         eax,dword ptr [eax+6C8];TFXPDFrame.rgAlarmdisplay:TRadioGroup
 006E4C84    call        TCustomRadioGroup.GetButtons
 006E4C89    xor         edx,edx
 006E4C8B    call        TRadioButton.SetAlignment
 006E4C90    mov         edx,2
 006E4C95    mov         eax,dword ptr [ebp-4]
 006E4C98    mov         eax,dword ptr [eax+6C8];TFXPDFrame.rgAlarmdisplay:TRadioGroup
 006E4C9E    call        TCustomRadioGroup.GetButtons
 006E4CA3    xor         edx,edx
 006E4CA5    call        TRadioButton.SetAlignment
 006E4CAA    xor         edx,edx
 006E4CAC    mov         eax,dword ptr [ebp-4]
 006E4CAF    mov         eax,dword ptr [eax+6C8];TFXPDFrame.rgAlarmdisplay:TRadioGroup
 006E4CB5    call        TCustomRadioGroup.GetButtons
 006E4CBA    mov         edx,0E1
 006E4CBF    call        TControl.SetWidth
 006E4CC4    mov         edx,1
 006E4CC9    mov         eax,dword ptr [ebp-4]
 006E4CCC    mov         eax,dword ptr [eax+6C8];TFXPDFrame.rgAlarmdisplay:TRadioGroup
 006E4CD2    call        TCustomRadioGroup.GetButtons
 006E4CD7    mov         edx,0E1
 006E4CDC    call        TControl.SetWidth
 006E4CE1    mov         edx,2
 006E4CE6    mov         eax,dword ptr [ebp-4]
 006E4CE9    mov         eax,dword ptr [eax+6C8];TFXPDFrame.rgAlarmdisplay:TRadioGroup
 006E4CEF    call        TCustomRadioGroup.GetButtons
 006E4CF4    mov         edx,0E1
 006E4CF9    call        TControl.SetWidth
 006E4CFE    mov         edx,dword ptr ds:[7C48BC];^gvar_007CA842
 006E4D04    mov         dl,byte ptr [edx]
 006E4D06    mov         eax,dword ptr [ebp-4]
 006E4D09    mov         eax,dword ptr [eax+6C8];TFXPDFrame.rgAlarmdisplay:TRadioGroup
 006E4D0F    mov         ecx,dword ptr [eax]
 006E4D11    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E4D17    xor         edx,edx
 006E4D19    mov         eax,dword ptr [ebp-4]
 006E4D1C    mov         eax,dword ptr [eax+6C8];TFXPDFrame.rgAlarmdisplay:TRadioGroup
 006E4D22    call        TCustomRadioGroup.GetButtons
 006E4D27    mov         edx,dword ptr ds:[7C48BC];^gvar_007CA842
 006E4D2D    mov         dl,byte ptr [edx]
 006E4D2F    mov         ecx,dword ptr [eax]
 006E4D31    call        dword ptr [ecx+88]
 006E4D37    mov         edx,1
 006E4D3C    mov         eax,dword ptr [ebp-4]
 006E4D3F    mov         eax,dword ptr [eax+6C8];TFXPDFrame.rgAlarmdisplay:TRadioGroup
 006E4D45    call        TCustomRadioGroup.GetButtons
 006E4D4A    xor         edx,edx
 006E4D4C    mov         ecx,dword ptr [eax]
 006E4D4E    call        dword ptr [ecx+88]
 006E4D54    mov         edx,2
 006E4D59    mov         eax,dword ptr [ebp-4]
 006E4D5C    mov         eax,dword ptr [eax+6C8];TFXPDFrame.rgAlarmdisplay:TRadioGroup
 006E4D62    call        TCustomRadioGroup.GetButtons
 006E4D67    mov         edx,dword ptr ds:[7C48BC];^gvar_007CA842
 006E4D6D    mov         dl,byte ptr [edx]
 006E4D6F    mov         ecx,dword ptr [eax]
 006E4D71    call        dword ptr [ecx+88]
 006E4D77    mov         esp,ebp
 006E4D79    pop         ebp
 006E4D7A    ret
*}
end;

//006E4DBC
procedure sub_006E4DBC(?:TFXPDFrame; ?:Byte);
begin
{*
 006E4DBC    push        ebp
 006E4DBD    mov         ebp,esp
 006E4DBF    mov         ecx,5
 006E4DC4    push        0
 006E4DC6    push        0
 006E4DC8    dec         ecx
>006E4DC9    jne         006E4DC4
 006E4DCB    mov         dword ptr [ebp-8],edx
 006E4DCE    mov         dword ptr [ebp-4],eax
 006E4DD1    xor         eax,eax
 006E4DD3    push        ebp
 006E4DD4    push        6E53C9
 006E4DD9    push        dword ptr fs:[eax]
 006E4DDC    mov         dword ptr fs:[eax],esp
 006E4DDF    mov         eax,dword ptr [ebp-8]
 006E4DE2    cmp         eax,4
>006E4DE5    ja          006E53AE
 006E4DEB    jmp         dword ptr [eax*4+6E4DF2]
 006E4DEB    dd          006E4E06
 006E4DEB    dd          006E4E6B
 006E4DEB    dd          006E5060
 006E4DEB    dd          006E5159
 006E4DEB    dd          006E523C
 006E4E06    xor         edx,edx
 006E4E08    mov         eax,dword ptr [ebp-4]
 006E4E0B    mov         eax,dword ptr [eax+4E4]
 006E4E11    call        TControl.SetVisible
 006E4E16    xor         edx,edx
 006E4E18    mov         eax,dword ptr [ebp-4]
 006E4E1B    mov         eax,dword ptr [eax+4D8]
 006E4E21    call        TControl.SetVisible
 006E4E26    xor         edx,edx
 006E4E28    mov         eax,dword ptr [ebp-4]
 006E4E2B    mov         eax,dword ptr [eax+4E8]
 006E4E31    call        TControl.SetVisible
 006E4E36    xor         edx,edx
 006E4E38    mov         eax,dword ptr [ebp-4]
 006E4E3B    mov         eax,dword ptr [eax+4DC]
 006E4E41    call        TControl.SetVisible
 006E4E46    xor         edx,edx
 006E4E48    mov         eax,dword ptr [ebp-4]
 006E4E4B    mov         eax,dword ptr [eax+4EC]
 006E4E51    call        TControl.SetVisible
 006E4E56    xor         edx,edx
 006E4E58    mov         eax,dword ptr [ebp-4]
 006E4E5B    mov         eax,dword ptr [eax+4E0]
 006E4E61    call        TControl.SetVisible
>006E4E66    jmp         006E53AE
 006E4E6B    mov         edx,28
 006E4E70    mov         eax,dword ptr [ebp-4]
 006E4E73    mov         eax,dword ptr [eax+4E4]
 006E4E79    call        TControl.SetTop
 006E4E7E    mov         dl,1
 006E4E80    mov         eax,dword ptr [ebp-4]
 006E4E83    mov         eax,dword ptr [eax+4E4]
 006E4E89    call        TControl.SetVisible
 006E4E8E    mov         edx,38
 006E4E93    mov         eax,dword ptr [ebp-4]
 006E4E96    mov         eax,dword ptr [eax+4D8]
 006E4E9C    call        TControl.SetTop
 006E4EA1    mov         edx,69
 006E4EA6    mov         eax,dword ptr [ebp-4]
 006E4EA9    mov         eax,dword ptr [eax+4D8]
 006E4EAF    call        TControl.SetHeight
 006E4EB4    mov         edx,5
 006E4EB9    mov         eax,dword ptr [ebp-4]
 006E4EBC    mov         eax,dword ptr [eax+4D8]
 006E4EC2    call        TDrawGrid.SetRowCount
 006E4EC7    mov         dword ptr [ebp-0C],1
 006E4ECE    lea         edx,[ebp-10]
 006E4ED1    mov         eax,dword ptr [ebp-0C]
 006E4ED4    call        IntToStr
 006E4ED9    mov         eax,dword ptr [ebp-10]
 006E4EDC    push        eax
 006E4EDD    mov         ecx,dword ptr [ebp-0C]
 006E4EE0    xor         edx,edx
 006E4EE2    mov         eax,dword ptr [ebp-4]
 006E4EE5    mov         eax,dword ptr [eax+4D8]
 006E4EEB    call        TStringGrid.SetCells
 006E4EF0    inc         dword ptr [ebp-0C]
 006E4EF3    cmp         dword ptr [ebp-0C],5
>006E4EF7    jne         006E4ECE
 006E4EF9    mov         dl,1
 006E4EFB    mov         eax,dword ptr [ebp-4]
 006E4EFE    mov         eax,dword ptr [eax+4D8]
 006E4F04    call        TControl.SetVisible
 006E4F09    mov         edx,0B0
 006E4F0E    mov         eax,dword ptr [ebp-4]
 006E4F11    mov         eax,dword ptr [eax+4E8]
 006E4F17    call        TControl.SetTop
 006E4F1C    mov         edx,dword ptr ds:[7C4768];^gvar_007C2E58
 006E4F22    mov         edx,dword ptr [edx]
 006E4F24    mov         eax,dword ptr [ebp-4]
 006E4F27    mov         eax,dword ptr [eax+4E8]
 006E4F2D    call        TControl.SetText
 006E4F32    mov         dl,1
 006E4F34    mov         eax,dword ptr [ebp-4]
 006E4F37    mov         eax,dword ptr [eax+4E8]
 006E4F3D    call        TControl.SetVisible
 006E4F42    mov         edx,0C0
 006E4F47    mov         eax,dword ptr [ebp-4]
 006E4F4A    mov         eax,dword ptr [eax+4DC]
 006E4F50    call        TControl.SetTop
 006E4F55    mov         edx,41
 006E4F5A    mov         eax,dword ptr [ebp-4]
 006E4F5D    mov         eax,dword ptr [eax+4DC]
 006E4F63    call        TControl.SetHeight
 006E4F68    mov         edx,3
 006E4F6D    mov         eax,dword ptr [ebp-4]
 006E4F70    mov         eax,dword ptr [eax+4DC]
 006E4F76    call        TDrawGrid.SetRowCount
 006E4F7B    mov         dword ptr [ebp-0C],1
 006E4F82    lea         edx,[ebp-14]
 006E4F85    mov         eax,dword ptr [ebp-0C]
 006E4F88    call        IntToStr
 006E4F8D    mov         eax,dword ptr [ebp-14]
 006E4F90    push        eax
 006E4F91    mov         ecx,dword ptr [ebp-0C]
 006E4F94    xor         edx,edx
 006E4F96    mov         eax,dword ptr [ebp-4]
 006E4F99    mov         eax,dword ptr [eax+4DC]
 006E4F9F    call        TStringGrid.SetCells
 006E4FA4    inc         dword ptr [ebp-0C]
 006E4FA7    cmp         dword ptr [ebp-0C],3
>006E4FAB    jne         006E4F82
 006E4FAD    mov         dl,1
 006E4FAF    mov         eax,dword ptr [ebp-4]
 006E4FB2    mov         eax,dword ptr [eax+4DC]
 006E4FB8    call        TControl.SetVisible
 006E4FBD    mov         edx,110
 006E4FC2    mov         eax,dword ptr [ebp-4]
 006E4FC5    mov         eax,dword ptr [eax+4EC]
 006E4FCB    call        TControl.SetTop
 006E4FD0    mov         dl,1
 006E4FD2    mov         eax,dword ptr [ebp-4]
 006E4FD5    mov         eax,dword ptr [eax+4EC]
 006E4FDB    call        TControl.SetVisible
 006E4FE0    mov         edx,120
 006E4FE5    mov         eax,dword ptr [ebp-4]
 006E4FE8    mov         eax,dword ptr [eax+4E0]
 006E4FEE    call        TControl.SetTop
 006E4FF3    mov         edx,69
 006E4FF8    mov         eax,dword ptr [ebp-4]
 006E4FFB    mov         eax,dword ptr [eax+4E0]
 006E5001    call        TControl.SetHeight
 006E5006    mov         edx,5
 006E500B    mov         eax,dword ptr [ebp-4]
 006E500E    mov         eax,dword ptr [eax+4E0]
 006E5014    call        TDrawGrid.SetRowCount
 006E5019    mov         dword ptr [ebp-0C],1
 006E5020    lea         edx,[ebp-18]
 006E5023    mov         eax,dword ptr [ebp-0C]
 006E5026    call        IntToStr
 006E502B    mov         eax,dword ptr [ebp-18]
 006E502E    push        eax
 006E502F    mov         ecx,dword ptr [ebp-0C]
 006E5032    xor         edx,edx
 006E5034    mov         eax,dword ptr [ebp-4]
 006E5037    mov         eax,dword ptr [eax+4E0]
 006E503D    call        TStringGrid.SetCells
 006E5042    inc         dword ptr [ebp-0C]
 006E5045    cmp         dword ptr [ebp-0C],5
>006E5049    jne         006E5020
 006E504B    mov         dl,1
 006E504D    mov         eax,dword ptr [ebp-4]
 006E5050    mov         eax,dword ptr [eax+4E0]
 006E5056    call        TControl.SetVisible
>006E505B    jmp         006E53AE
 006E5060    xor         edx,edx
 006E5062    mov         eax,dword ptr [ebp-4]
 006E5065    mov         eax,dword ptr [eax+4E4]
 006E506B    call        TControl.SetVisible
 006E5070    xor         edx,edx
 006E5072    mov         eax,dword ptr [ebp-4]
 006E5075    mov         eax,dword ptr [eax+4D8]
 006E507B    call        TControl.SetVisible
 006E5080    mov         edx,28
 006E5085    mov         eax,dword ptr [ebp-4]
 006E5088    mov         eax,dword ptr [eax+4E8]
 006E508E    call        TControl.SetTop
 006E5093    mov         edx,dword ptr ds:[7C4768];^gvar_007C2E58
 006E5099    mov         edx,dword ptr [edx]
 006E509B    mov         eax,dword ptr [ebp-4]
 006E509E    mov         eax,dword ptr [eax+4E8]
 006E50A4    call        TControl.SetText
 006E50A9    mov         dl,1
 006E50AB    mov         eax,dword ptr [ebp-4]
 006E50AE    mov         eax,dword ptr [eax+4E8]
 006E50B4    call        TControl.SetVisible
 006E50B9    mov         edx,38
 006E50BE    mov         eax,dword ptr [ebp-4]
 006E50C1    mov         eax,dword ptr [eax+4DC]
 006E50C7    call        TControl.SetTop
 006E50CC    mov         edx,159
 006E50D1    mov         eax,dword ptr [ebp-4]
 006E50D4    mov         eax,dword ptr [eax+4DC]
 006E50DA    call        TControl.SetHeight
 006E50DF    mov         edx,11
 006E50E4    mov         eax,dword ptr [ebp-4]
 006E50E7    mov         eax,dword ptr [eax+4DC]
 006E50ED    call        TDrawGrid.SetRowCount
 006E50F2    mov         dword ptr [ebp-0C],1
 006E50F9    lea         edx,[ebp-1C]
 006E50FC    mov         eax,dword ptr [ebp-0C]
 006E50FF    call        IntToStr
 006E5104    mov         eax,dword ptr [ebp-1C]
 006E5107    push        eax
 006E5108    mov         ecx,dword ptr [ebp-0C]
 006E510B    xor         edx,edx
 006E510D    mov         eax,dword ptr [ebp-4]
 006E5110    mov         eax,dword ptr [eax+4DC]
 006E5116    call        TStringGrid.SetCells
 006E511B    inc         dword ptr [ebp-0C]
 006E511E    cmp         dword ptr [ebp-0C],11
>006E5122    jne         006E50F9
 006E5124    mov         dl,1
 006E5126    mov         eax,dword ptr [ebp-4]
 006E5129    mov         eax,dword ptr [eax+4DC]
 006E512F    call        TControl.SetVisible
 006E5134    xor         edx,edx
 006E5136    mov         eax,dword ptr [ebp-4]
 006E5139    mov         eax,dword ptr [eax+4EC]
 006E513F    call        TControl.SetVisible
 006E5144    xor         edx,edx
 006E5146    mov         eax,dword ptr [ebp-4]
 006E5149    mov         eax,dword ptr [eax+4E0]
 006E514F    call        TControl.SetVisible
>006E5154    jmp         006E53AE
 006E5159    xor         edx,edx
 006E515B    mov         eax,dword ptr [ebp-4]
 006E515E    mov         eax,dword ptr [eax+4E4]
 006E5164    call        TControl.SetVisible
 006E5169    xor         edx,edx
 006E516B    mov         eax,dword ptr [ebp-4]
 006E516E    mov         eax,dword ptr [eax+4D8]
 006E5174    call        TControl.SetVisible
 006E5179    xor         edx,edx
 006E517B    mov         eax,dword ptr [ebp-4]
 006E517E    mov         eax,dword ptr [eax+4E8]
 006E5184    call        TControl.SetVisible
 006E5189    xor         edx,edx
 006E518B    mov         eax,dword ptr [ebp-4]
 006E518E    mov         eax,dword ptr [eax+4DC]
 006E5194    call        TControl.SetVisible
 006E5199    mov         edx,28
 006E519E    mov         eax,dword ptr [ebp-4]
 006E51A1    mov         eax,dword ptr [eax+4EC]
 006E51A7    call        TControl.SetTop
 006E51AC    mov         dl,1
 006E51AE    mov         eax,dword ptr [ebp-4]
 006E51B1    mov         eax,dword ptr [eax+4EC]
 006E51B7    call        TControl.SetVisible
 006E51BC    mov         edx,38
 006E51C1    mov         eax,dword ptr [ebp-4]
 006E51C4    mov         eax,dword ptr [eax+4E0]
 006E51CA    call        TControl.SetTop
 006E51CF    mov         edx,109
 006E51D4    mov         eax,dword ptr [ebp-4]
 006E51D7    mov         eax,dword ptr [eax+4E0]
 006E51DD    call        TControl.SetHeight
 006E51E2    mov         edx,0D
 006E51E7    mov         eax,dword ptr [ebp-4]
 006E51EA    mov         eax,dword ptr [eax+4E0]
 006E51F0    call        TDrawGrid.SetRowCount
 006E51F5    mov         dword ptr [ebp-0C],1
 006E51FC    lea         edx,[ebp-20]
 006E51FF    mov         eax,dword ptr [ebp-0C]
 006E5202    call        IntToStr
 006E5207    mov         eax,dword ptr [ebp-20]
 006E520A    push        eax
 006E520B    mov         ecx,dword ptr [ebp-0C]
 006E520E    xor         edx,edx
 006E5210    mov         eax,dword ptr [ebp-4]
 006E5213    mov         eax,dword ptr [eax+4E0]
 006E5219    call        TStringGrid.SetCells
 006E521E    inc         dword ptr [ebp-0C]
 006E5221    cmp         dword ptr [ebp-0C],0D
>006E5225    jne         006E51FC
 006E5227    mov         dl,1
 006E5229    mov         eax,dword ptr [ebp-4]
 006E522C    mov         eax,dword ptr [eax+4E0]
 006E5232    call        TControl.SetVisible
>006E5237    jmp         006E53AE
 006E523C    mov         edx,28
 006E5241    mov         eax,dword ptr [ebp-4]
 006E5244    mov         eax,dword ptr [eax+4E4]
 006E524A    call        TControl.SetTop
 006E524F    mov         dl,1
 006E5251    mov         eax,dword ptr [ebp-4]
 006E5254    mov         eax,dword ptr [eax+4E4]
 006E525A    call        TControl.SetVisible
 006E525F    mov         edx,38
 006E5264    mov         eax,dword ptr [ebp-4]
 006E5267    mov         eax,dword ptr [eax+4D8]
 006E526D    call        TControl.SetTop
 006E5272    mov         edx,54
 006E5277    mov         eax,dword ptr [ebp-4]
 006E527A    mov         eax,dword ptr [eax+4D8]
 006E5280    call        TControl.SetHeight
 006E5285    mov         edx,4
 006E528A    mov         eax,dword ptr [ebp-4]
 006E528D    mov         eax,dword ptr [eax+4D8]
 006E5293    call        TDrawGrid.SetRowCount
 006E5298    mov         dword ptr [ebp-0C],1
 006E529F    lea         edx,[ebp-24]
 006E52A2    mov         eax,dword ptr [ebp-0C]
 006E52A5    call        IntToStr
 006E52AA    mov         eax,dword ptr [ebp-24]
 006E52AD    push        eax
 006E52AE    mov         ecx,dword ptr [ebp-0C]
 006E52B1    xor         edx,edx
 006E52B3    mov         eax,dword ptr [ebp-4]
 006E52B6    mov         eax,dword ptr [eax+4D8]
 006E52BC    call        TStringGrid.SetCells
 006E52C1    inc         dword ptr [ebp-0C]
 006E52C4    cmp         dword ptr [ebp-0C],4
>006E52C8    jne         006E529F
 006E52CA    mov         dl,1
 006E52CC    mov         eax,dword ptr [ebp-4]
 006E52CF    mov         eax,dword ptr [eax+4D8]
 006E52D5    call        TControl.SetVisible
 006E52DA    mov         edx,0B0
 006E52DF    mov         eax,dword ptr [ebp-4]
 006E52E2    mov         eax,dword ptr [eax+4E8]
 006E52E8    call        TControl.SetTop
 006E52ED    mov         edx,dword ptr ds:[7C424C];^gvar_007C2E5C
 006E52F3    mov         edx,dword ptr [edx]
 006E52F5    mov         eax,dword ptr [ebp-4]
 006E52F8    mov         eax,dword ptr [eax+4E8]
 006E52FE    call        TControl.SetText
 006E5303    mov         dl,1
 006E5305    mov         eax,dword ptr [ebp-4]
 006E5308    mov         eax,dword ptr [eax+4E8]
 006E530E    call        TControl.SetVisible
 006E5313    mov         edx,0C0
 006E5318    mov         eax,dword ptr [ebp-4]
 006E531B    mov         eax,dword ptr [eax+4DC]
 006E5321    call        TControl.SetTop
 006E5326    mov         edx,69
 006E532B    mov         eax,dword ptr [ebp-4]
 006E532E    mov         eax,dword ptr [eax+4DC]
 006E5334    call        TControl.SetHeight
 006E5339    mov         edx,5
 006E533E    mov         eax,dword ptr [ebp-4]
 006E5341    mov         eax,dword ptr [eax+4DC]
 006E5347    call        TDrawGrid.SetRowCount
 006E534C    mov         dword ptr [ebp-0C],1
 006E5353    lea         edx,[ebp-28]
 006E5356    mov         eax,dword ptr [ebp-0C]
 006E5359    call        IntToStr
 006E535E    mov         eax,dword ptr [ebp-28]
 006E5361    push        eax
 006E5362    mov         ecx,dword ptr [ebp-0C]
 006E5365    xor         edx,edx
 006E5367    mov         eax,dword ptr [ebp-4]
 006E536A    mov         eax,dword ptr [eax+4DC]
 006E5370    call        TStringGrid.SetCells
 006E5375    inc         dword ptr [ebp-0C]
 006E5378    cmp         dword ptr [ebp-0C],5
>006E537C    jne         006E5353
 006E537E    mov         dl,1
 006E5380    mov         eax,dword ptr [ebp-4]
 006E5383    mov         eax,dword ptr [eax+4DC]
 006E5389    call        TControl.SetVisible
 006E538E    xor         edx,edx
 006E5390    mov         eax,dword ptr [ebp-4]
 006E5393    mov         eax,dword ptr [eax+4EC]
 006E5399    call        TControl.SetVisible
 006E539E    xor         edx,edx
 006E53A0    mov         eax,dword ptr [ebp-4]
 006E53A3    mov         eax,dword ptr [eax+4E0]
 006E53A9    call        TControl.SetVisible
 006E53AE    xor         eax,eax
 006E53B0    pop         edx
 006E53B1    pop         ecx
 006E53B2    pop         ecx
 006E53B3    mov         dword ptr fs:[eax],edx
 006E53B6    push        6E53D0
 006E53BB    lea         eax,[ebp-28]
 006E53BE    mov         edx,7
 006E53C3    call        @UStrArrayClr
 006E53C8    ret
>006E53C9    jmp         @HandleFinally
>006E53CE    jmp         006E53BB
 006E53D0    mov         esp,ebp
 006E53D2    pop         ebp
 006E53D3    ret
*}
end;

//006E53D4
procedure sub_006E53D4(?:TFXPDFrame);
begin
{*
 006E53D4    push        ebp
 006E53D5    mov         ebp,esp
 006E53D7    add         esp,0FFFFFFDC
 006E53DA    mov         dword ptr [ebp-4],eax
 006E53DD    mov         eax,dword ptr [ebp-4]
 006E53E0    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E53E6    mov         al,byte ptr [eax+122]
 006E53EC    mov         edx,dword ptr [ebp-4]
 006E53EF    mov         edx,dword ptr [edx+85C];TFXPDFrame.FXPan:TFXPanel
 006E53F5    mov         edx,dword ptr [edx+0C];TFXPanel.FXPPD:TFXPPD
 006E53F8    cmp         al,byte ptr [edx+122]
>006E53FE    je          006E5486
 006E5404    mov         eax,dword ptr [ebp-4]
 006E5407    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E540D    xor         edx,edx
 006E540F    mov         dl,byte ptr [eax+122]
 006E5415    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 006E541A    mov         eax,dword ptr [eax]
 006E541C    call        TFXNet.GetPanel
 006E5421    test        eax,eax
>006E5423    jne         006E5486
 006E5425    mov         edx,dword ptr ds:[7C45D8];^gvar_008DF5D0:Integer
 006E542B    mov         edx,dword ptr [edx]
 006E542D    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 006E5432    mov         eax,dword ptr [eax]
 006E5434    call        TFXNet.GetPanel
 006E5439    mov         ecx,eax
 006E543B    mov         eax,dword ptr [ebp-4]
 006E543E    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E5444    xor         edx,edx
 006E5446    mov         dl,byte ptr [eax+122]
 006E544C    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 006E5451    mov         eax,dword ptr [eax]
 006E5453    call        TFXNet.SetPanel
 006E5458    mov         edx,dword ptr ds:[7C45D8];^gvar_008DF5D0:Integer
 006E545E    mov         edx,dword ptr [edx]
 006E5460    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 006E5465    mov         eax,dword ptr [eax]
 006E5467    xor         ecx,ecx
 006E5469    call        TFXNet.SetPanel
 006E546E    mov         eax,dword ptr [ebp-4]
 006E5471    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E5477    movzx       eax,byte ptr [eax+122]
 006E547E    mov         edx,dword ptr ds:[7C45D8];^gvar_008DF5D0:Integer
 006E5484    mov         dword ptr [edx],eax
 006E5486    mov         eax,dword ptr [ebp-4]
 006E5489    mov         eax,dword ptr [eax+85C];TFXPDFrame.FXPan:TFXPanel
 006E548F    mov         eax,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 006E5492    mov         dword ptr [ebp-14],eax
 006E5495    mov         eax,dword ptr [ebp-4]
 006E5498    mov         eax,dword ptr [eax+85C];TFXPDFrame.FXPan:TFXPanel
 006E549E    mov         eax,dword ptr [eax+14];TFXPanel.FXPAD:TFXPAD
 006E54A1    mov         dword ptr [ebp-18],eax
 006E54A4    mov         eax,dword ptr [ebp-4]
 006E54A7    mov         eax,dword ptr [eax+85C];TFXPDFrame.FXPan:TFXPanel
 006E54AD    mov         eax,dword ptr [eax+18];TFXPanel.FXPTD:TFXPTD
 006E54B0    mov         dword ptr [ebp-1C],eax
 006E54B3    mov         eax,dword ptr [ebp-18]
 006E54B6    mov         eax,dword ptr [eax+87670];TFXPAD.LcToSlcConversionErrors:TStringList
 006E54BC    mov         edx,dword ptr [eax]
 006E54BE    call        dword ptr [edx+48];TStringList.Clear
 006E54C1    mov         eax,[007C4DF8];^gvar_00901F5C:TLcToSlcConversionErrorsDlg
 006E54C6    mov         eax,dword ptr [eax]
 006E54C8    call        TCustomForm.Hide
 006E54CD    mov         eax,[007C4DF8];^gvar_00901F5C:TLcToSlcConversionErrorsDlg
 006E54D2    mov         eax,dword ptr [eax]
 006E54D4    mov         eax,dword ptr [eax+3C0]
 006E54DA    mov         eax,dword ptr [eax+2C8]
 006E54E0    mov         edx,dword ptr [eax]
 006E54E2    call        dword ptr [edx+48]
 006E54E5    mov         eax,[007C45D8];^gvar_008DF5D0:Integer
 006E54EA    cmp         dword ptr [eax],0
>006E54ED    jle         006E5538
 006E54EF    mov         edx,dword ptr ds:[7C45D8];^gvar_008DF5D0:Integer
 006E54F5    mov         edx,dword ptr [edx]
 006E54F7    sub         edx,1
>006E54FA    jno         006E5501
 006E54FC    call        @IntOver
 006E5501    cmp         edx,0FF
>006E5507    jbe         006E550E
 006E5509    call        @BoundErr
 006E550E    lea         eax,[ebp-24]
 006E5511    mov         cl,4
 006E5513    call        @SetElem
 006E5518    mov         edx,dword ptr [ebp-24]
 006E551B    mov         eax,dword ptr [ebp-4]
 006E551E    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E5524    or          edx,dword ptr [eax+171]
 006E552A    mov         eax,dword ptr [ebp-4]
 006E552D    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E5533    call        006A2E40
 006E5538    mov         byte ptr [ebp-6],1
 006E553C    mov         eax,dword ptr [ebp-4]
 006E553F    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E5545    mov         dl,byte ptr [ebp-6]
 006E5548    call        TFXPPD.GetLCType
 006E554D    mov         byte ptr [ebp-7],al
 006E5550    mov         dl,byte ptr [ebp-6]
 006E5553    mov         eax,dword ptr [ebp-14]
 006E5556    call        TFXPPD.GetLCType
 006E555B    mov         byte ptr [ebp-8],al
 006E555E    mov         al,byte ptr [ebp-7]
 006E5561    cmp         al,byte ptr [ebp-8]
>006E5564    je          006E58B1
 006E556A    xor         edx,edx
 006E556C    mov         dl,byte ptr [ebp-7]
 006E556F    mov         eax,dword ptr [ebp-4]
 006E5572    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E5578    call        TFXPPD.GetLoopTypeOfLCType
 006E557D    cmp         eax,0FF
>006E5582    jbe         006E5589
 006E5584    call        @BoundErr
 006E5589    mov         byte ptr [ebp-9],al
 006E558C    xor         edx,edx
 006E558E    mov         dl,byte ptr [ebp-8]
 006E5591    mov         eax,dword ptr [ebp-14]
 006E5594    call        TFXPPD.GetLoopTypeOfLCType
 006E5599    cmp         eax,0FF
>006E559E    jbe         006E55A5
 006E55A0    call        @BoundErr
 006E55A5    mov         byte ptr [ebp-0A],al
 006E55A8    mov         eax,dword ptr [ebp-4]
 006E55AB    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E55B1    mov         dl,byte ptr [ebp-6]
 006E55B4    call        TFXPPD.GetLCNumOfLoops
 006E55B9    mov         byte ptr [ebp-0B],al
 006E55BC    mov         dl,byte ptr [ebp-6]
 006E55BF    mov         eax,dword ptr [ebp-14]
 006E55C2    call        TFXPPD.GetLCNumOfLoops
 006E55C7    mov         byte ptr [ebp-0C],al
 006E55CA    mov         eax,dword ptr [ebp-4]
 006E55CD    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E55D3    mov         dl,byte ptr [ebp-6]
 006E55D6    call        TFXPPD.GetLCFirstLoopIndex
 006E55DB    mov         byte ptr [ebp-0D],al
 006E55DE    cmp         byte ptr [ebp-0B],2
>006E55E2    jne         006E566B
 006E55E8    cmp         byte ptr [ebp-0C],1
>006E55EC    jne         006E566B
 006E55EE    xor         eax,eax
 006E55F0    mov         al,byte ptr [ebp-0D]
 006E55F3    add         eax,1
>006E55F6    jno         006E55FD
 006E55F8    call        @IntOver
 006E55FD    cmp         eax,0FF
>006E5602    jbe         006E5609
 006E5604    call        @BoundErr
 006E5609    sub         al,6
>006E560B    ja          006E566B
 006E560D    dec         eax
 006E560E    mov         byte ptr [ebp-1D],al
 006E5611    mov         byte ptr [ebp-5],6
 006E5615    xor         ecx,ecx
 006E5617    mov         cl,byte ptr [ebp-5]
 006E561A    add         ecx,1
>006E561D    jno         006E5624
 006E561F    call        @IntOver
 006E5624    cmp         ecx,0FF
>006E562A    jbe         006E5631
 006E562C    call        @BoundErr
 006E5631    mov         dl,byte ptr [ebp-5]
 006E5634    mov         eax,dword ptr [ebp-18]
 006E5637    call        TFXPAD.MoveAddressData
 006E563C    xor         ecx,ecx
 006E563E    mov         cl,byte ptr [ebp-5]
 006E5641    add         ecx,1
>006E5644    jno         006E564B
 006E5646    call        @IntOver
 006E564B    cmp         ecx,0FF
>006E5651    jbe         006E5658
 006E5653    call        @BoundErr
 006E5658    mov         dl,byte ptr [ebp-5]
 006E565B    mov         eax,dword ptr [ebp-1C]
 006E565E    call        TFXPTD.MoveAddressTextData
 006E5663    dec         byte ptr [ebp-5]
 006E5666    inc         byte ptr [ebp-1D]
>006E5669    jne         006E5615
 006E566B    cmp         byte ptr [ebp-0B],1
>006E566F    jne         006E56F0
 006E5671    cmp         byte ptr [ebp-0C],2
>006E5675    jne         006E56F0
 006E5677    xor         eax,eax
 006E5679    mov         al,byte ptr [ebp-0D]
 006E567C    add         eax,2
>006E567F    jno         006E5686
 006E5681    call        @IntOver
 006E5686    cmp         eax,0FF
>006E568B    jbe         006E5692
 006E568D    call        @BoundErr
 006E5692    cmp         al,7
>006E5694    ja          006E56F0
 006E5696    mov         byte ptr [ebp-5],al
 006E5699    xor         ecx,ecx
 006E569B    mov         cl,byte ptr [ebp-5]
 006E569E    sub         ecx,1
>006E56A1    jno         006E56A8
 006E56A3    call        @IntOver
 006E56A8    cmp         ecx,0FF
>006E56AE    jbe         006E56B5
 006E56B0    call        @BoundErr
 006E56B5    mov         dl,byte ptr [ebp-5]
 006E56B8    mov         eax,dword ptr [ebp-18]
 006E56BB    call        TFXPAD.MoveAddressData
 006E56C0    xor         ecx,ecx
 006E56C2    mov         cl,byte ptr [ebp-5]
 006E56C5    sub         ecx,1
>006E56C8    jno         006E56CF
 006E56CA    call        @IntOver
 006E56CF    cmp         ecx,0FF
>006E56D5    jbe         006E56DC
 006E56D7    call        @BoundErr
 006E56DC    mov         dl,byte ptr [ebp-5]
 006E56DF    mov         eax,dword ptr [ebp-1C]
 006E56E2    call        TFXPTD.MoveAddressTextData
 006E56E7    inc         byte ptr [ebp-5]
 006E56EA    cmp         byte ptr [ebp-5],8
>006E56EE    jne         006E5699
 006E56F0    cmp         byte ptr [ebp-8],1
>006E56F4    jne         006E5745
 006E56F6    cmp         byte ptr [ebp-7],6
>006E56FA    jne         006E5745
 006E56FC    mov         eax,dword ptr [ebp-4]
 006E56FF    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E5705    mov         dl,byte ptr [ebp-6]
 006E5708    call        TFXPPD.GetConvertSysToSap
 006E570D    test        al,al
>006E570F    je          006E5745
 006E5711    mov         dl,byte ptr [ebp-0D]
 006E5714    mov         eax,dword ptr [ebp-18]
 006E5717    call        TFXPAD.ConvertLC_SYStoSAP_SYS
 006E571C    xor         edx,edx
 006E571E    mov         dl,byte ptr [ebp-0D]
 006E5721    add         edx,1
>006E5724    jno         006E572B
 006E5726    call        @IntOver
 006E572B    cmp         edx,0FF
>006E5731    jbe         006E5738
 006E5733    call        @BoundErr
 006E5738    mov         eax,dword ptr [ebp-18]
 006E573B    call        TFXPAD.ConvertLC_SYStoSAP_SYS
>006E5740    jmp         006E58B1
 006E5745    mov         al,byte ptr [ebp-9]
 006E5748    cmp         al,byte ptr [ebp-0A]
>006E574B    jne         006E57A7
 006E574D    cmp         byte ptr [ebp-0B],2
>006E5751    jne         006E58B1
 006E5757    xor         edx,edx
 006E5759    mov         dl,byte ptr [ebp-0D]
 006E575C    add         edx,1
>006E575F    jno         006E5766
 006E5761    call        @IntOver
 006E5766    cmp         edx,0FF
>006E576C    jbe         006E5773
 006E576E    call        @BoundErr
 006E5773    mov         cl,byte ptr [ebp-9]
 006E5776    mov         eax,dword ptr [ebp-18]
 006E5779    call        TFXPAD.InitFXAPDataOfLoop
 006E577E    xor         edx,edx
 006E5780    mov         dl,byte ptr [ebp-0D]
 006E5783    add         edx,1
>006E5786    jno         006E578D
 006E5788    call        @IntOver
 006E578D    cmp         edx,0FF
>006E5793    jbe         006E579A
 006E5795    call        @BoundErr
 006E579A    mov         eax,dword ptr [ebp-1C]
 006E579D    call        TFXPTD.InitFXAPTextDataOfLoop
>006E57A2    jmp         006E58B1
 006E57A7    cmp         byte ptr [ebp-9],0
>006E57AB    je          006E5834
 006E57B1    mov         al,byte ptr [ebp-0B]
 006E57B4    test        al,al
>006E57B6    jbe         006E58B1
 006E57BC    mov         byte ptr [ebp-1D],al
 006E57BF    mov         byte ptr [ebp-5],1
 006E57C3    xor         edx,edx
 006E57C5    mov         dl,byte ptr [ebp-0D]
 006E57C8    xor         eax,eax
 006E57CA    mov         al,byte ptr [ebp-5]
 006E57CD    add         edx,eax
>006E57CF    jno         006E57D6
 006E57D1    call        @IntOver
 006E57D6    sub         edx,1
>006E57D9    jno         006E57E0
 006E57DB    call        @IntOver
 006E57E0    cmp         edx,0FF
>006E57E6    jbe         006E57ED
 006E57E8    call        @BoundErr
 006E57ED    mov         cl,byte ptr [ebp-9]
 006E57F0    mov         eax,dword ptr [ebp-18]
 006E57F3    call        TFXPAD.InitFXAPDataOfLoop
 006E57F8    xor         edx,edx
 006E57FA    mov         dl,byte ptr [ebp-0D]
 006E57FD    xor         eax,eax
 006E57FF    mov         al,byte ptr [ebp-5]
 006E5802    add         edx,eax
>006E5804    jno         006E580B
 006E5806    call        @IntOver
 006E580B    sub         edx,1
>006E580E    jno         006E5815
 006E5810    call        @IntOver
 006E5815    cmp         edx,0FF
>006E581B    jbe         006E5822
 006E581D    call        @BoundErr
 006E5822    mov         eax,dword ptr [ebp-1C]
 006E5825    call        TFXPTD.InitFXAPTextDataOfLoop
 006E582A    inc         byte ptr [ebp-5]
 006E582D    dec         byte ptr [ebp-1D]
>006E5830    jne         006E57C3
>006E5832    jmp         006E58B1
 006E5834    mov         al,byte ptr [ebp-0C]
 006E5837    test        al,al
>006E5839    jbe         006E58B1
 006E583B    mov         byte ptr [ebp-1D],al
 006E583E    mov         byte ptr [ebp-5],1
 006E5842    xor         edx,edx
 006E5844    mov         dl,byte ptr [ebp-0D]
 006E5847    xor         eax,eax
 006E5849    mov         al,byte ptr [ebp-5]
 006E584C    add         edx,eax
>006E584E    jno         006E5855
 006E5850    call        @IntOver
 006E5855    sub         edx,1
>006E5858    jno         006E585F
 006E585A    call        @IntOver
 006E585F    cmp         edx,0FF
>006E5865    jbe         006E586C
 006E5867    call        @BoundErr
 006E586C    mov         cl,byte ptr [ebp-9]
 006E586F    mov         eax,dword ptr [ebp-18]
 006E5872    call        TFXPAD.InitFXAPDataOfLoop
 006E5877    xor         edx,edx
 006E5879    mov         dl,byte ptr [ebp-0D]
 006E587C    xor         eax,eax
 006E587E    mov         al,byte ptr [ebp-5]
 006E5881    add         edx,eax
>006E5883    jno         006E588A
 006E5885    call        @IntOver
 006E588A    sub         edx,1
>006E588D    jno         006E5894
 006E588F    call        @IntOver
 006E5894    cmp         edx,0FF
>006E589A    jbe         006E58A1
 006E589C    call        @BoundErr
 006E58A1    mov         eax,dword ptr [ebp-1C]
 006E58A4    call        TFXPTD.InitFXAPTextDataOfLoop
 006E58A9    inc         byte ptr [ebp-5]
 006E58AC    dec         byte ptr [ebp-1D]
>006E58AF    jne         006E5842
 006E58B1    inc         byte ptr [ebp-6]
 006E58B4    cmp         byte ptr [ebp-6],5
>006E58B8    jne         006E553C
 006E58BE    mov         eax,dword ptr [ebp-18]
 006E58C1    mov         eax,dword ptr [eax+87670];TFXPAD.LcToSlcConversionErrors:TStringList
 006E58C7    mov         edx,dword ptr [eax]
 006E58C9    call        dword ptr [edx+14];TStringList.GetCount
 006E58CC    test        eax,eax
>006E58CE    je          006E58DC
 006E58D0    mov         eax,[007C4DF8];^gvar_00901F5C:TLcToSlcConversionErrorsDlg
 006E58D5    mov         eax,dword ptr [eax]
 006E58D7    call        TCustomForm.Show
 006E58DC    mov         esp,ebp
 006E58DE    pop         ebp
 006E58DF    ret
*}
end;

//006E58E0
procedure sub_006E58E0(?:TFXPDFrame);
begin
{*
 006E58E0    push        ebp
 006E58E1    mov         ebp,esp
 006E58E3    add         esp,0FFFFFF0C
 006E58E9    xor         edx,edx
 006E58EB    mov         dword ptr [ebp-0F4],edx
 006E58F1    mov         dword ptr [ebp-0F0],edx
 006E58F7    mov         dword ptr [ebp-0EC],edx
 006E58FD    mov         dword ptr [ebp-0E8],edx
 006E5903    mov         dword ptr [ebp-60],edx
 006E5906    mov         dword ptr [ebp-5C],edx
 006E5909    mov         dword ptr [ebp-18],edx
 006E590C    mov         dword ptr [ebp-14],edx
 006E590F    mov         dword ptr [ebp-10],edx
 006E5912    mov         dword ptr [ebp-0C],edx
 006E5915    mov         dword ptr [ebp-4],eax
 006E5918    xor         eax,eax
 006E591A    push        ebp
 006E591B    push        6E5E61
 006E5920    push        dword ptr fs:[eax]
 006E5923    mov         dword ptr fs:[eax],esp
 006E5926    mov         dword ptr [ebp-8],1
 006E592D    mov         ecx,dword ptr [ebp-8]
 006E5930    cmp         ecx,0FF
>006E5936    jbe         006E593D
 006E5938    call        @BoundErr
 006E593D    xor         edx,edx
 006E593F    mov         eax,dword ptr [ebp-4]
 006E5942    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E5948    call        TFXPIO.GetCCIFunction
 006E594D    and         eax,0FF
 006E5952    cmp         eax,1C
>006E5955    jbe         006E595C
 006E5957    call        @BoundErr
 006E595C    mov         edx,dword ptr ds:[7C45CC];^gvar_007C28B0:array[29] of ?
 006E5962    mov         eax,dword ptr [edx+eax*4]
 006E5965    push        eax
 006E5966    mov         ecx,dword ptr [ebp-8]
 006E5969    mov         edx,1
 006E596E    mov         eax,dword ptr [ebp-4]
 006E5971    mov         eax,dword ptr [eax+4B0];TFXPDFrame.CCIGridMC:TStringGrid
 006E5977    call        TStringGrid.SetCells
 006E597C    mov         ecx,dword ptr [ebp-8]
 006E597F    cmp         ecx,0FF
>006E5985    jbe         006E598C
 006E5987    call        @BoundErr
 006E598C    xor         edx,edx
 006E598E    mov         eax,dword ptr [ebp-4]
 006E5991    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E5997    call        TFXPIO.GetCCIType
 006E599C    movsx       eax,al
 006E599F    cmp         eax,1
>006E59A2    jbe         006E59A9
 006E59A4    call        @BoundErr
 006E59A9    mov         edx,dword ptr ds:[7C47DC];^^"'NO'":array[2] of ?
 006E59AF    mov         eax,dword ptr [edx+eax*4]
 006E59B2    push        eax
 006E59B3    mov         ecx,dword ptr [ebp-8]
 006E59B6    mov         edx,2
 006E59BB    mov         eax,dword ptr [ebp-4]
 006E59BE    mov         eax,dword ptr [eax+4B0];TFXPDFrame.CCIGridMC:TStringGrid
 006E59C4    call        TStringGrid.SetCells
 006E59C9    mov         ecx,dword ptr [ebp-8]
 006E59CC    cmp         ecx,0FF
>006E59D2    jbe         006E59D9
 006E59D4    call        @BoundErr
 006E59D9    xor         edx,edx
 006E59DB    mov         eax,dword ptr [ebp-4]
 006E59DE    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E59E4    call        TFXPIO.GetCCIShortIsFault
 006E59E9    movsx       eax,al
 006E59EC    cmp         eax,1
>006E59EF    jbe         006E59F6
 006E59F1    call        @BoundErr
 006E59F6    mov         edx,dword ptr ds:[7C4E40];^gvar_007C29E0:array[2] of ?
 006E59FC    mov         eax,dword ptr [edx+eax*4]
 006E59FF    push        eax
 006E5A00    mov         ecx,dword ptr [ebp-8]
 006E5A03    mov         edx,3
 006E5A08    mov         eax,dword ptr [ebp-4]
 006E5A0B    mov         eax,dword ptr [eax+4B0];TFXPDFrame.CCIGridMC:TStringGrid
 006E5A11    call        TStringGrid.SetCells
 006E5A16    mov         eax,dword ptr [ebp-4]
 006E5A19    mov         eax,dword ptr [eax+4B0];TFXPDFrame.CCIGridMC:TStringGrid
 006E5A1F    cmp         byte ptr [eax+31D],0;TStringGrid.FEditorMode:Boolean
>006E5A26    jne         006E5B44
 006E5A2C    mov         ecx,dword ptr [ebp-8]
 006E5A2F    cmp         ecx,0FF
>006E5A35    jbe         006E5A3C
 006E5A37    call        @BoundErr
 006E5A3C    xor         edx,edx
 006E5A3E    mov         eax,dword ptr [ebp-4]
 006E5A41    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E5A47    call        TFXPIO.GetCCICtrlGroupA
 006E5A4C    movzx       eax,ax
 006E5A4F    lea         edx,[ebp-0C]
 006E5A52    call        IntToStr
 006E5A57    mov         eax,dword ptr [ebp-0C]
 006E5A5A    push        eax
 006E5A5B    mov         ecx,dword ptr [ebp-8]
 006E5A5E    mov         edx,4
 006E5A63    mov         eax,dword ptr [ebp-4]
 006E5A66    mov         eax,dword ptr [eax+4B0];TFXPDFrame.CCIGridMC:TStringGrid
 006E5A6C    call        TStringGrid.SetCells
 006E5A71    mov         ecx,dword ptr [ebp-8]
 006E5A74    cmp         ecx,0FF
>006E5A7A    jbe         006E5A81
 006E5A7C    call        @BoundErr
 006E5A81    xor         edx,edx
 006E5A83    mov         eax,dword ptr [ebp-4]
 006E5A86    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E5A8C    call        TFXPIO.GetCCICtrlGroupB
 006E5A91    movzx       eax,ax
 006E5A94    lea         edx,[ebp-10]
 006E5A97    call        IntToStr
 006E5A9C    mov         eax,dword ptr [ebp-10]
 006E5A9F    push        eax
 006E5AA0    mov         ecx,dword ptr [ebp-8]
 006E5AA3    mov         edx,5
 006E5AA8    mov         eax,dword ptr [ebp-4]
 006E5AAB    mov         eax,dword ptr [eax+4B0];TFXPDFrame.CCIGridMC:TStringGrid
 006E5AB1    call        TStringGrid.SetCells
 006E5AB6    mov         ecx,dword ptr [ebp-8]
 006E5AB9    cmp         ecx,0FF
>006E5ABF    jbe         006E5AC6
 006E5AC1    call        @BoundErr
 006E5AC6    xor         edx,edx
 006E5AC8    mov         eax,dword ptr [ebp-4]
 006E5ACB    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E5AD1    call        TFXPIO.GetCCICtrlGroupC
 006E5AD6    movzx       eax,ax
 006E5AD9    lea         edx,[ebp-14]
 006E5ADC    call        IntToStr
 006E5AE1    mov         eax,dword ptr [ebp-14]
 006E5AE4    push        eax
 006E5AE5    mov         ecx,dword ptr [ebp-8]
 006E5AE8    mov         edx,6
 006E5AED    mov         eax,dword ptr [ebp-4]
 006E5AF0    mov         eax,dword ptr [eax+4B0];TFXPDFrame.CCIGridMC:TStringGrid
 006E5AF6    call        TStringGrid.SetCells
 006E5AFB    lea         eax,[ebp-58]
 006E5AFE    push        eax
 006E5AFF    mov         ecx,dword ptr [ebp-8]
 006E5B02    cmp         ecx,0FF
>006E5B08    jbe         006E5B0F
 006E5B0A    call        @BoundErr
 006E5B0F    xor         edx,edx
 006E5B11    mov         eax,dword ptr [ebp-4]
 006E5B14    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E5B1A    call        TFXPIO.GetCCIDescription
 006E5B1F    lea         edx,[ebp-58]
 006E5B22    lea         eax,[ebp-18]
 006E5B25    call        @UStrFromString
 006E5B2A    mov         eax,dword ptr [ebp-18]
 006E5B2D    push        eax
 006E5B2E    mov         ecx,dword ptr [ebp-8]
 006E5B31    mov         edx,7
 006E5B36    mov         eax,dword ptr [ebp-4]
 006E5B39    mov         eax,dword ptr [eax+4B0];TFXPDFrame.CCIGridMC:TStringGrid
 006E5B3F    call        TStringGrid.SetCells
 006E5B44    inc         dword ptr [ebp-8]
 006E5B47    cmp         dword ptr [ebp-8],3
>006E5B4B    jne         006E592D
 006E5B51    mov         dword ptr [ebp-8],1
 006E5B58    mov         ecx,dword ptr [ebp-8]
 006E5B5B    cmp         ecx,0FF
>006E5B61    jbe         006E5B68
 006E5B63    call        @BoundErr
 006E5B68    xor         edx,edx
 006E5B6A    mov         eax,dword ptr [ebp-4]
 006E5B6D    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E5B73    call        TFXPIO.GetCCOFunction
 006E5B78    mov         edx,eax
 006E5B7A    lea         ecx,[ebp-5C]
 006E5B7D    mov         eax,dword ptr [ebp-4]
 006E5B80    mov         eax,dword ptr [eax+85C];TFXPDFrame.FXPan:TFXPanel
 006E5B86    mov         eax,dword ptr [eax+10];TFXPanel.FXPIO:TFXPIO
 006E5B89    call        TFXPIO.OutFunctionToString
 006E5B8E    mov         eax,dword ptr [ebp-5C]
 006E5B91    push        eax
 006E5B92    mov         ecx,dword ptr [ebp-8]
 006E5B95    mov         edx,1
 006E5B9A    mov         eax,dword ptr [ebp-4]
 006E5B9D    mov         eax,dword ptr [eax+4B4];TFXPDFrame.CCOGridMC:TStringGrid
 006E5BA3    call        TStringGrid.SetCells
 006E5BA8    mov         eax,dword ptr [ebp-4]
 006E5BAB    mov         eax,dword ptr [eax+4B4];TFXPDFrame.CCOGridMC:TStringGrid
 006E5BB1    cmp         byte ptr [eax+31D],0;TStringGrid.FEditorMode:Boolean
>006E5BB8    jne         006E5C5C
 006E5BBE    lea         eax,[ebp-0E4]
 006E5BC4    push        eax
 006E5BC5    mov         ecx,dword ptr [ebp-8]
 006E5BC8    cmp         ecx,0FF
>006E5BCE    jbe         006E5BD5
 006E5BD0    call        @BoundErr
 006E5BD5    xor         edx,edx
 006E5BD7    mov         eax,dword ptr [ebp-4]
 006E5BDA    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E5BE0    call        TFXPIO.GetCCOCtrlGroups
 006E5BE5    lea         eax,[ebp-0E4]
 006E5BEB    lea         edx,[ebp-60]
 006E5BEE    call        006955F8
 006E5BF3    mov         eax,dword ptr [ebp-60]
 006E5BF6    push        eax
 006E5BF7    mov         ecx,dword ptr [ebp-8]
 006E5BFA    mov         edx,2
 006E5BFF    mov         eax,dword ptr [ebp-4]
 006E5C02    mov         eax,dword ptr [eax+4B4];TFXPDFrame.CCOGridMC:TStringGrid
 006E5C08    call        TStringGrid.SetCells
 006E5C0D    lea         eax,[ebp-58]
 006E5C10    push        eax
 006E5C11    mov         ecx,dword ptr [ebp-8]
 006E5C14    cmp         ecx,0FF
>006E5C1A    jbe         006E5C21
 006E5C1C    call        @BoundErr
 006E5C21    xor         edx,edx
 006E5C23    mov         eax,dword ptr [ebp-4]
 006E5C26    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E5C2C    call        TFXPIO.GetCCODescription
 006E5C31    lea         edx,[ebp-58]
 006E5C34    lea         eax,[ebp-0E8]
 006E5C3A    call        @UStrFromString
 006E5C3F    mov         eax,dword ptr [ebp-0E8]
 006E5C45    push        eax
 006E5C46    mov         ecx,dword ptr [ebp-8]
 006E5C49    mov         edx,3
 006E5C4E    mov         eax,dword ptr [ebp-4]
 006E5C51    mov         eax,dword ptr [eax+4B4];TFXPDFrame.CCOGridMC:TStringGrid
 006E5C57    call        TStringGrid.SetCells
 006E5C5C    inc         dword ptr [ebp-8]
 006E5C5F    cmp         dword ptr [ebp-8],4
>006E5C63    jne         006E5B58
 006E5C69    mov         dword ptr [ebp-8],1
 006E5C70    mov         ecx,dword ptr [ebp-8]
 006E5C73    cmp         ecx,0FF
>006E5C79    jbe         006E5C80
 006E5C7B    call        @BoundErr
 006E5C80    xor         edx,edx
 006E5C82    mov         eax,dword ptr [ebp-4]
 006E5C85    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E5C8B    call        TFXPIO.GetADOFunction
 006E5C90    mov         edx,eax
 006E5C92    lea         ecx,[ebp-0EC]
 006E5C98    mov         eax,dword ptr [ebp-4]
 006E5C9B    mov         eax,dword ptr [eax+85C];TFXPDFrame.FXPan:TFXPanel
 006E5CA1    mov         eax,dword ptr [eax+10];TFXPanel.FXPIO:TFXPIO
 006E5CA4    call        TFXPIO.OutFunctionToString
 006E5CA9    mov         eax,dword ptr [ebp-0EC]
 006E5CAF    push        eax
 006E5CB0    mov         ecx,dword ptr [ebp-8]
 006E5CB3    mov         edx,1
 006E5CB8    mov         eax,dword ptr [ebp-4]
 006E5CBB    mov         eax,dword ptr [eax+4B8];TFXPDFrame.ADOGridMC:TStringGrid
 006E5CC1    call        TStringGrid.SetCells
 006E5CC6    mov         ecx,dword ptr [ebp-8]
 006E5CC9    cmp         ecx,0FF
>006E5CCF    jbe         006E5CD6
 006E5CD1    call        @BoundErr
 006E5CD6    xor         edx,edx
 006E5CD8    mov         eax,dword ptr [ebp-4]
 006E5CDB    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E5CE1    call        TFXPIO.GetADOMode
 006E5CE6    and         eax,0FF
 006E5CEB    cmp         eax,3
>006E5CEE    jbe         006E5CF5
 006E5CF0    call        @BoundErr
 006E5CF5    mov         edx,dword ptr ds:[7C4ED8];^gvar_007C29D0:array[4] of ?
 006E5CFB    mov         eax,dword ptr [edx+eax*4]
 006E5CFE    push        eax
 006E5CFF    mov         ecx,dword ptr [ebp-8]
 006E5D02    mov         edx,2
 006E5D07    mov         eax,dword ptr [ebp-4]
 006E5D0A    mov         eax,dword ptr [eax+4B8];TFXPDFrame.ADOGridMC:TStringGrid
 006E5D10    call        TStringGrid.SetCells
 006E5D15    mov         ecx,dword ptr [ebp-8]
 006E5D18    cmp         ecx,0FF
>006E5D1E    jbe         006E5D25
 006E5D20    call        @BoundErr
 006E5D25    xor         edx,edx
 006E5D27    mov         eax,dword ptr [ebp-4]
 006E5D2A    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E5D30    call        TFXPIO.GetADOMonitoring
 006E5D35    movsx       eax,al
 006E5D38    cmp         eax,1
>006E5D3B    jbe         006E5D42
 006E5D3D    call        @BoundErr
 006E5D42    mov         edx,dword ptr ds:[7C4E40];^gvar_007C29E0:array[2] of ?
 006E5D48    mov         eax,dword ptr [edx+eax*4]
 006E5D4B    push        eax
 006E5D4C    mov         ecx,dword ptr [ebp-8]
 006E5D4F    mov         edx,3
 006E5D54    mov         eax,dword ptr [ebp-4]
 006E5D57    mov         eax,dword ptr [eax+4B8];TFXPDFrame.ADOGridMC:TStringGrid
 006E5D5D    call        TStringGrid.SetCells
 006E5D62    mov         eax,dword ptr [ebp-4]
 006E5D65    mov         eax,dword ptr [eax+4B8];TFXPDFrame.ADOGridMC:TStringGrid
 006E5D6B    cmp         byte ptr [eax+31D],0;TStringGrid.FEditorMode:Boolean
>006E5D72    jne         006E5E1C
 006E5D78    lea         eax,[ebp-0E4]
 006E5D7E    push        eax
 006E5D7F    mov         ecx,dword ptr [ebp-8]
 006E5D82    cmp         ecx,0FF
>006E5D88    jbe         006E5D8F
 006E5D8A    call        @BoundErr
 006E5D8F    xor         edx,edx
 006E5D91    mov         eax,dword ptr [ebp-4]
 006E5D94    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E5D9A    call        TFXPIO.GetADOCtrlGroups
 006E5D9F    lea         eax,[ebp-0E4]
 006E5DA5    lea         edx,[ebp-0F0]
 006E5DAB    call        006955F8
 006E5DB0    mov         eax,dword ptr [ebp-0F0]
 006E5DB6    push        eax
 006E5DB7    mov         ecx,dword ptr [ebp-8]
 006E5DBA    mov         edx,4
 006E5DBF    mov         eax,dword ptr [ebp-4]
 006E5DC2    mov         eax,dword ptr [eax+4B8];TFXPDFrame.ADOGridMC:TStringGrid
 006E5DC8    call        TStringGrid.SetCells
 006E5DCD    lea         eax,[ebp-58]
 006E5DD0    push        eax
 006E5DD1    mov         ecx,dword ptr [ebp-8]
 006E5DD4    cmp         ecx,0FF
>006E5DDA    jbe         006E5DE1
 006E5DDC    call        @BoundErr
 006E5DE1    xor         edx,edx
 006E5DE3    mov         eax,dword ptr [ebp-4]
 006E5DE6    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E5DEC    call        TFXPIO.GetADODescription
 006E5DF1    lea         edx,[ebp-58]
 006E5DF4    lea         eax,[ebp-0F4]
 006E5DFA    call        @UStrFromString
 006E5DFF    mov         eax,dword ptr [ebp-0F4]
 006E5E05    push        eax
 006E5E06    mov         ecx,dword ptr [ebp-8]
 006E5E09    mov         edx,5
 006E5E0E    mov         eax,dword ptr [ebp-4]
 006E5E11    mov         eax,dword ptr [eax+4B8];TFXPDFrame.ADOGridMC:TStringGrid
 006E5E17    call        TStringGrid.SetCells
 006E5E1C    inc         dword ptr [ebp-8]
 006E5E1F    cmp         dword ptr [ebp-8],2
>006E5E23    jne         006E5C70
 006E5E29    xor         eax,eax
 006E5E2B    pop         edx
 006E5E2C    pop         ecx
 006E5E2D    pop         ecx
 006E5E2E    mov         dword ptr fs:[eax],edx
 006E5E31    push        6E5E68
 006E5E36    lea         eax,[ebp-0F4]
 006E5E3C    mov         edx,4
 006E5E41    call        @UStrArrayClr
 006E5E46    lea         eax,[ebp-60]
 006E5E49    mov         edx,2
 006E5E4E    call        @UStrArrayClr
 006E5E53    lea         eax,[ebp-18]
 006E5E56    mov         edx,4
 006E5E5B    call        @UStrArrayClr
 006E5E60    ret
>006E5E61    jmp         @HandleFinally
>006E5E66    jmp         006E5E36
 006E5E68    mov         esp,ebp
 006E5E6A    pop         ebp
 006E5E6B    ret
*}
end;

//006E5E6C
procedure sub_006E5E6C(?:TFXPDFrame);
begin
{*
 006E5E6C    push        ebp
 006E5E6D    mov         ebp,esp
 006E5E6F    mov         ecx,25
 006E5E74    push        0
 006E5E76    push        0
 006E5E78    dec         ecx
>006E5E79    jne         006E5E74
 006E5E7B    mov         dword ptr [ebp-4],eax
 006E5E7E    xor         eax,eax
 006E5E80    push        ebp
 006E5E81    push        6E6B21
 006E5E86    push        dword ptr fs:[eax]
 006E5E89    mov         dword ptr fs:[eax],esp
 006E5E8C    mov         eax,dword ptr [ebp-4]
 006E5E8F    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E5E95    mov         eax,dword ptr [ebp-4]
 006E5E98    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E5E9E    call        TFXPIO.GetIOCtrlrType
 006E5EA3    cmp         al,1
>006E5EA5    jne         006E63C3
 006E5EAB    mov         dword ptr [ebp-8],1
 006E5EB2    mov         ecx,dword ptr [ebp-8]
 006E5EB5    cmp         ecx,0FF
>006E5EBB    jbe         006E5EC2
 006E5EBD    call        @BoundErr
 006E5EC2    mov         eax,dword ptr [ebp-4]
 006E5EC5    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E5ECB    mov         eax,dword ptr [ebp-4]
 006E5ECE    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E5ED4    call        TFXPIO.GetCCIFunction
 006E5ED9    and         eax,0FF
 006E5EDE    cmp         eax,1C
>006E5EE1    jbe         006E5EE8
 006E5EE3    call        @BoundErr
 006E5EE8    mov         edx,dword ptr ds:[7C45CC];^gvar_007C28B0:array[29] of ?
 006E5EEE    mov         eax,dword ptr [edx+eax*4]
 006E5EF1    push        eax
 006E5EF2    mov         ecx,dword ptr [ebp-8]
 006E5EF5    mov         edx,1
 006E5EFA    mov         eax,dword ptr [ebp-4]
 006E5EFD    mov         eax,dword ptr [eax+4D8];TFXPDFrame.CCIGrid:TStringGrid
 006E5F03    call        TStringGrid.SetCells
 006E5F08    mov         ecx,dword ptr [ebp-8]
 006E5F0B    cmp         ecx,0FF
>006E5F11    jbe         006E5F18
 006E5F13    call        @BoundErr
 006E5F18    mov         eax,dword ptr [ebp-4]
 006E5F1B    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E5F21    mov         eax,dword ptr [ebp-4]
 006E5F24    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E5F2A    call        TFXPIO.GetCCIType
 006E5F2F    movsx       eax,al
 006E5F32    cmp         eax,1
>006E5F35    jbe         006E5F3C
 006E5F37    call        @BoundErr
 006E5F3C    mov         edx,dword ptr ds:[7C47DC];^^"'NO'":array[2] of ?
 006E5F42    mov         eax,dword ptr [edx+eax*4]
 006E5F45    push        eax
 006E5F46    mov         ecx,dword ptr [ebp-8]
 006E5F49    mov         edx,2
 006E5F4E    mov         eax,dword ptr [ebp-4]
 006E5F51    mov         eax,dword ptr [eax+4D8];TFXPDFrame.CCIGrid:TStringGrid
 006E5F57    call        TStringGrid.SetCells
 006E5F5C    mov         eax,dword ptr [ebp-4]
 006E5F5F    mov         eax,dword ptr [eax+4D8];TFXPDFrame.CCIGrid:TStringGrid
 006E5F65    cmp         byte ptr [eax+31D],0;TStringGrid.FEditorMode:Boolean
>006E5F6C    jne         006E60A6
 006E5F72    mov         ecx,dword ptr [ebp-8]
 006E5F75    cmp         ecx,0FF
>006E5F7B    jbe         006E5F82
 006E5F7D    call        @BoundErr
 006E5F82    mov         eax,dword ptr [ebp-4]
 006E5F85    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E5F8B    mov         eax,dword ptr [ebp-4]
 006E5F8E    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E5F94    call        TFXPIO.GetCCICtrlGroupA
 006E5F99    movzx       eax,ax
 006E5F9C    lea         edx,[ebp-0C]
 006E5F9F    call        IntToStr
 006E5FA4    mov         eax,dword ptr [ebp-0C]
 006E5FA7    push        eax
 006E5FA8    mov         ecx,dword ptr [ebp-8]
 006E5FAB    mov         edx,4
 006E5FB0    mov         eax,dword ptr [ebp-4]
 006E5FB3    mov         eax,dword ptr [eax+4D8];TFXPDFrame.CCIGrid:TStringGrid
 006E5FB9    call        TStringGrid.SetCells
 006E5FBE    mov         ecx,dword ptr [ebp-8]
 006E5FC1    cmp         ecx,0FF
>006E5FC7    jbe         006E5FCE
 006E5FC9    call        @BoundErr
 006E5FCE    mov         eax,dword ptr [ebp-4]
 006E5FD1    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E5FD7    mov         eax,dword ptr [ebp-4]
 006E5FDA    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E5FE0    call        TFXPIO.GetCCICtrlGroupB
 006E5FE5    movzx       eax,ax
 006E5FE8    lea         edx,[ebp-10]
 006E5FEB    call        IntToStr
 006E5FF0    mov         eax,dword ptr [ebp-10]
 006E5FF3    push        eax
 006E5FF4    mov         ecx,dword ptr [ebp-8]
 006E5FF7    mov         edx,5
 006E5FFC    mov         eax,dword ptr [ebp-4]
 006E5FFF    mov         eax,dword ptr [eax+4D8];TFXPDFrame.CCIGrid:TStringGrid
 006E6005    call        TStringGrid.SetCells
 006E600A    mov         ecx,dword ptr [ebp-8]
 006E600D    cmp         ecx,0FF
>006E6013    jbe         006E601A
 006E6015    call        @BoundErr
 006E601A    mov         eax,dword ptr [ebp-4]
 006E601D    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E6023    mov         eax,dword ptr [ebp-4]
 006E6026    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E602C    call        TFXPIO.GetCCICtrlGroupC
 006E6031    movzx       eax,ax
 006E6034    lea         edx,[ebp-14]
 006E6037    call        IntToStr
 006E603C    mov         eax,dword ptr [ebp-14]
 006E603F    push        eax
 006E6040    mov         ecx,dword ptr [ebp-8]
 006E6043    mov         edx,6
 006E6048    mov         eax,dword ptr [ebp-4]
 006E604B    mov         eax,dword ptr [eax+4D8];TFXPDFrame.CCIGrid:TStringGrid
 006E6051    call        TStringGrid.SetCells
 006E6056    lea         eax,[ebp-58]
 006E6059    push        eax
 006E605A    mov         ecx,dword ptr [ebp-8]
 006E605D    cmp         ecx,0FF
>006E6063    jbe         006E606A
 006E6065    call        @BoundErr
 006E606A    mov         eax,dword ptr [ebp-4]
 006E606D    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E6073    mov         eax,dword ptr [ebp-4]
 006E6076    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E607C    call        TFXPIO.GetCCIDescription
 006E6081    lea         edx,[ebp-58]
 006E6084    lea         eax,[ebp-18]
 006E6087    call        @UStrFromString
 006E608C    mov         eax,dword ptr [ebp-18]
 006E608F    push        eax
 006E6090    mov         ecx,dword ptr [ebp-8]
 006E6093    mov         edx,7
 006E6098    mov         eax,dword ptr [ebp-4]
 006E609B    mov         eax,dword ptr [eax+4D8];TFXPDFrame.CCIGrid:TStringGrid
 006E60A1    call        TStringGrid.SetCells
 006E60A6    inc         dword ptr [ebp-8]
 006E60A9    cmp         dword ptr [ebp-8],5
>006E60AD    jne         006E5EB2
 006E60B3    mov         dword ptr [ebp-8],1
 006E60BA    mov         ecx,dword ptr [ebp-8]
 006E60BD    cmp         ecx,0FF
>006E60C3    jbe         006E60CA
 006E60C5    call        @BoundErr
 006E60CA    mov         eax,dword ptr [ebp-4]
 006E60CD    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E60D3    mov         eax,dword ptr [ebp-4]
 006E60D6    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E60DC    call        TFXPIO.GetCCOFunction
 006E60E1    mov         edx,eax
 006E60E3    lea         ecx,[ebp-5C]
 006E60E6    mov         eax,dword ptr [ebp-4]
 006E60E9    mov         eax,dword ptr [eax+85C];TFXPDFrame.FXPan:TFXPanel
 006E60EF    mov         eax,dword ptr [eax+10];TFXPanel.FXPIO:TFXPIO
 006E60F2    call        TFXPIO.OutFunctionToString
 006E60F7    mov         eax,dword ptr [ebp-5C]
 006E60FA    push        eax
 006E60FB    mov         ecx,dword ptr [ebp-8]
 006E60FE    mov         edx,1
 006E6103    mov         eax,dword ptr [ebp-4]
 006E6106    mov         eax,dword ptr [eax+4DC];TFXPDFrame.CCOGrid:TStringGrid
 006E610C    call        TStringGrid.SetCells
 006E6111    mov         eax,dword ptr [ebp-4]
 006E6114    mov         eax,dword ptr [eax+4DC];TFXPDFrame.CCOGrid:TStringGrid
 006E611A    cmp         byte ptr [eax+31D],0;TStringGrid.FEditorMode:Boolean
>006E6121    jne         006E61D3
 006E6127    lea         eax,[ebp-0E4]
 006E612D    push        eax
 006E612E    mov         ecx,dword ptr [ebp-8]
 006E6131    cmp         ecx,0FF
>006E6137    jbe         006E613E
 006E6139    call        @BoundErr
 006E613E    mov         eax,dword ptr [ebp-4]
 006E6141    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E6147    mov         eax,dword ptr [ebp-4]
 006E614A    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E6150    call        TFXPIO.GetCCOCtrlGroups
 006E6155    lea         eax,[ebp-0E4]
 006E615B    lea         edx,[ebp-60]
 006E615E    call        006955F8
 006E6163    mov         eax,dword ptr [ebp-60]
 006E6166    push        eax
 006E6167    mov         ecx,dword ptr [ebp-8]
 006E616A    mov         edx,2
 006E616F    mov         eax,dword ptr [ebp-4]
 006E6172    mov         eax,dword ptr [eax+4DC];TFXPDFrame.CCOGrid:TStringGrid
 006E6178    call        TStringGrid.SetCells
 006E617D    lea         eax,[ebp-58]
 006E6180    push        eax
 006E6181    mov         ecx,dword ptr [ebp-8]
 006E6184    cmp         ecx,0FF
>006E618A    jbe         006E6191
 006E618C    call        @BoundErr
 006E6191    mov         eax,dword ptr [ebp-4]
 006E6194    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E619A    mov         eax,dword ptr [ebp-4]
 006E619D    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E61A3    call        TFXPIO.GetCCODescription
 006E61A8    lea         edx,[ebp-58]
 006E61AB    lea         eax,[ebp-0E8]
 006E61B1    call        @UStrFromString
 006E61B6    mov         eax,dword ptr [ebp-0E8]
 006E61BC    push        eax
 006E61BD    mov         ecx,dword ptr [ebp-8]
 006E61C0    mov         edx,3
 006E61C5    mov         eax,dword ptr [ebp-4]
 006E61C8    mov         eax,dword ptr [eax+4DC];TFXPDFrame.CCOGrid:TStringGrid
 006E61CE    call        TStringGrid.SetCells
 006E61D3    inc         dword ptr [ebp-8]
 006E61D6    cmp         dword ptr [ebp-8],3
>006E61DA    jne         006E60BA
 006E61E0    mov         dword ptr [ebp-8],1
 006E61E7    mov         ecx,dword ptr [ebp-8]
 006E61EA    cmp         ecx,0FF
>006E61F0    jbe         006E61F7
 006E61F2    call        @BoundErr
 006E61F7    mov         eax,dword ptr [ebp-4]
 006E61FA    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E6200    mov         eax,dword ptr [ebp-4]
 006E6203    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E6209    call        TFXPIO.GetADOFunction
 006E620E    mov         edx,eax
 006E6210    lea         ecx,[ebp-0EC]
 006E6216    mov         eax,dword ptr [ebp-4]
 006E6219    mov         eax,dword ptr [eax+85C];TFXPDFrame.FXPan:TFXPanel
 006E621F    mov         eax,dword ptr [eax+10];TFXPanel.FXPIO:TFXPIO
 006E6222    call        TFXPIO.OutFunctionToString
 006E6227    mov         eax,dword ptr [ebp-0EC]
 006E622D    push        eax
 006E622E    mov         ecx,dword ptr [ebp-8]
 006E6231    mov         edx,1
 006E6236    mov         eax,dword ptr [ebp-4]
 006E6239    mov         eax,dword ptr [eax+4E0];TFXPDFrame.ADOGrid:TStringGrid
 006E623F    call        TStringGrid.SetCells
 006E6244    mov         ecx,dword ptr [ebp-8]
 006E6247    cmp         ecx,0FF
>006E624D    jbe         006E6254
 006E624F    call        @BoundErr
 006E6254    mov         eax,dword ptr [ebp-4]
 006E6257    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E625D    mov         eax,dword ptr [ebp-4]
 006E6260    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E6266    call        TFXPIO.GetADOMode
 006E626B    and         eax,0FF
 006E6270    cmp         eax,3
>006E6273    jbe         006E627A
 006E6275    call        @BoundErr
 006E627A    mov         edx,dword ptr ds:[7C4ED8];^gvar_007C29D0:array[4] of ?
 006E6280    mov         eax,dword ptr [edx+eax*4]
 006E6283    push        eax
 006E6284    mov         ecx,dword ptr [ebp-8]
 006E6287    mov         edx,2
 006E628C    mov         eax,dword ptr [ebp-4]
 006E628F    mov         eax,dword ptr [eax+4E0];TFXPDFrame.ADOGrid:TStringGrid
 006E6295    call        TStringGrid.SetCells
 006E629A    mov         ecx,dword ptr [ebp-8]
 006E629D    cmp         ecx,0FF
>006E62A3    jbe         006E62AA
 006E62A5    call        @BoundErr
 006E62AA    mov         eax,dword ptr [ebp-4]
 006E62AD    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E62B3    mov         eax,dword ptr [ebp-4]
 006E62B6    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E62BC    call        TFXPIO.GetADOMonitoring
 006E62C1    movsx       eax,al
 006E62C4    cmp         eax,1
>006E62C7    jbe         006E62CE
 006E62C9    call        @BoundErr
 006E62CE    mov         edx,dword ptr ds:[7C4E40];^gvar_007C29E0:array[2] of ?
 006E62D4    mov         eax,dword ptr [edx+eax*4]
 006E62D7    push        eax
 006E62D8    mov         ecx,dword ptr [ebp-8]
 006E62DB    mov         edx,3
 006E62E0    mov         eax,dword ptr [ebp-4]
 006E62E3    mov         eax,dword ptr [eax+4E0];TFXPDFrame.ADOGrid:TStringGrid
 006E62E9    call        TStringGrid.SetCells
 006E62EE    mov         eax,dword ptr [ebp-4]
 006E62F1    mov         eax,dword ptr [eax+4E0];TFXPDFrame.ADOGrid:TStringGrid
 006E62F7    cmp         byte ptr [eax+31D],0;TStringGrid.FEditorMode:Boolean
>006E62FE    jne         006E63B6
 006E6304    lea         eax,[ebp-0E4]
 006E630A    push        eax
 006E630B    mov         ecx,dword ptr [ebp-8]
 006E630E    cmp         ecx,0FF
>006E6314    jbe         006E631B
 006E6316    call        @BoundErr
 006E631B    mov         eax,dword ptr [ebp-4]
 006E631E    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E6324    mov         eax,dword ptr [ebp-4]
 006E6327    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E632D    call        TFXPIO.GetADOCtrlGroups
 006E6332    lea         eax,[ebp-0E4]
 006E6338    lea         edx,[ebp-0F0]
 006E633E    call        006955F8
 006E6343    mov         eax,dword ptr [ebp-0F0]
 006E6349    push        eax
 006E634A    mov         ecx,dword ptr [ebp-8]
 006E634D    mov         edx,4
 006E6352    mov         eax,dword ptr [ebp-4]
 006E6355    mov         eax,dword ptr [eax+4E0];TFXPDFrame.ADOGrid:TStringGrid
 006E635B    call        TStringGrid.SetCells
 006E6360    lea         eax,[ebp-58]
 006E6363    push        eax
 006E6364    mov         ecx,dword ptr [ebp-8]
 006E6367    cmp         ecx,0FF
>006E636D    jbe         006E6374
 006E636F    call        @BoundErr
 006E6374    mov         eax,dword ptr [ebp-4]
 006E6377    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E637D    mov         eax,dword ptr [ebp-4]
 006E6380    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E6386    call        TFXPIO.GetADODescription
 006E638B    lea         edx,[ebp-58]
 006E638E    lea         eax,[ebp-0F4]
 006E6394    call        @UStrFromString
 006E6399    mov         eax,dword ptr [ebp-0F4]
 006E639F    push        eax
 006E63A0    mov         ecx,dword ptr [ebp-8]
 006E63A3    mov         edx,5
 006E63A8    mov         eax,dword ptr [ebp-4]
 006E63AB    mov         eax,dword ptr [eax+4E0];TFXPDFrame.ADOGrid:TStringGrid
 006E63B1    call        TStringGrid.SetCells
 006E63B6    inc         dword ptr [ebp-8]
 006E63B9    cmp         dword ptr [ebp-8],5
>006E63BD    jne         006E61E7
 006E63C3    mov         eax,dword ptr [ebp-4]
 006E63C6    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E63CC    mov         eax,dword ptr [ebp-4]
 006E63CF    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E63D5    call        TFXPIO.GetIOCtrlrType
 006E63DA    cmp         al,2
>006E63DC    jne         006E651B
 006E63E2    mov         dword ptr [ebp-8],1
 006E63E9    mov         ecx,dword ptr [ebp-8]
 006E63EC    cmp         ecx,0FF
>006E63F2    jbe         006E63F9
 006E63F4    call        @BoundErr
 006E63F9    mov         eax,dword ptr [ebp-4]
 006E63FC    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E6402    mov         eax,dword ptr [ebp-4]
 006E6405    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E640B    call        TFXPIO.GetCCOFunction
 006E6410    mov         edx,eax
 006E6412    lea         ecx,[ebp-0F8]
 006E6418    mov         eax,dword ptr [ebp-4]
 006E641B    mov         eax,dword ptr [eax+85C];TFXPDFrame.FXPan:TFXPanel
 006E6421    mov         eax,dword ptr [eax+10];TFXPanel.FXPIO:TFXPIO
 006E6424    call        TFXPIO.OutFunctionToString
 006E6429    mov         eax,dword ptr [ebp-0F8]
 006E642F    push        eax
 006E6430    mov         ecx,dword ptr [ebp-8]
 006E6433    mov         edx,1
 006E6438    mov         eax,dword ptr [ebp-4]
 006E643B    mov         eax,dword ptr [eax+4DC];TFXPDFrame.CCOGrid:TStringGrid
 006E6441    call        TStringGrid.SetCells
 006E6446    mov         eax,dword ptr [ebp-4]
 006E6449    mov         eax,dword ptr [eax+4DC];TFXPDFrame.CCOGrid:TStringGrid
 006E644F    cmp         byte ptr [eax+31D],0;TStringGrid.FEditorMode:Boolean
>006E6456    jne         006E650E
 006E645C    lea         eax,[ebp-0E4]
 006E6462    push        eax
 006E6463    mov         ecx,dword ptr [ebp-8]
 006E6466    cmp         ecx,0FF
>006E646C    jbe         006E6473
 006E646E    call        @BoundErr
 006E6473    mov         eax,dword ptr [ebp-4]
 006E6476    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E647C    mov         eax,dword ptr [ebp-4]
 006E647F    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E6485    call        TFXPIO.GetCCOCtrlGroups
 006E648A    lea         eax,[ebp-0E4]
 006E6490    lea         edx,[ebp-0FC]
 006E6496    call        006955F8
 006E649B    mov         eax,dword ptr [ebp-0FC]
 006E64A1    push        eax
 006E64A2    mov         ecx,dword ptr [ebp-8]
 006E64A5    mov         edx,2
 006E64AA    mov         eax,dword ptr [ebp-4]
 006E64AD    mov         eax,dword ptr [eax+4DC];TFXPDFrame.CCOGrid:TStringGrid
 006E64B3    call        TStringGrid.SetCells
 006E64B8    lea         eax,[ebp-58]
 006E64BB    push        eax
 006E64BC    mov         ecx,dword ptr [ebp-8]
 006E64BF    cmp         ecx,0FF
>006E64C5    jbe         006E64CC
 006E64C7    call        @BoundErr
 006E64CC    mov         eax,dword ptr [ebp-4]
 006E64CF    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E64D5    mov         eax,dword ptr [ebp-4]
 006E64D8    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E64DE    call        TFXPIO.GetCCODescription
 006E64E3    lea         edx,[ebp-58]
 006E64E6    lea         eax,[ebp-100]
 006E64EC    call        @UStrFromString
 006E64F1    mov         eax,dword ptr [ebp-100]
 006E64F7    push        eax
 006E64F8    mov         ecx,dword ptr [ebp-8]
 006E64FB    mov         edx,3
 006E6500    mov         eax,dword ptr [ebp-4]
 006E6503    mov         eax,dword ptr [eax+4DC];TFXPDFrame.CCOGrid:TStringGrid
 006E6509    call        TStringGrid.SetCells
 006E650E    inc         dword ptr [ebp-8]
 006E6511    cmp         dword ptr [ebp-8],11
>006E6515    jne         006E63E9
 006E651B    mov         eax,dword ptr [ebp-4]
 006E651E    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E6524    mov         eax,dword ptr [ebp-4]
 006E6527    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E652D    call        TFXPIO.GetIOCtrlrType
 006E6532    cmp         al,3
>006E6534    jne         006E671D
 006E653A    mov         dword ptr [ebp-8],1
 006E6541    mov         ecx,dword ptr [ebp-8]
 006E6544    cmp         ecx,0FF
>006E654A    jbe         006E6551
 006E654C    call        @BoundErr
 006E6551    mov         eax,dword ptr [ebp-4]
 006E6554    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E655A    mov         eax,dword ptr [ebp-4]
 006E655D    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E6563    call        TFXPIO.GetADOFunction
 006E6568    mov         edx,eax
 006E656A    lea         ecx,[ebp-104]
 006E6570    mov         eax,dword ptr [ebp-4]
 006E6573    mov         eax,dword ptr [eax+85C];TFXPDFrame.FXPan:TFXPanel
 006E6579    mov         eax,dword ptr [eax+10];TFXPanel.FXPIO:TFXPIO
 006E657C    call        TFXPIO.OutFunctionToString
 006E6581    mov         eax,dword ptr [ebp-104]
 006E6587    push        eax
 006E6588    mov         ecx,dword ptr [ebp-8]
 006E658B    mov         edx,1
 006E6590    mov         eax,dword ptr [ebp-4]
 006E6593    mov         eax,dword ptr [eax+4E0];TFXPDFrame.ADOGrid:TStringGrid
 006E6599    call        TStringGrid.SetCells
 006E659E    mov         ecx,dword ptr [ebp-8]
 006E65A1    cmp         ecx,0FF
>006E65A7    jbe         006E65AE
 006E65A9    call        @BoundErr
 006E65AE    mov         eax,dword ptr [ebp-4]
 006E65B1    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E65B7    mov         eax,dword ptr [ebp-4]
 006E65BA    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E65C0    call        TFXPIO.GetADOMode
 006E65C5    and         eax,0FF
 006E65CA    cmp         eax,3
>006E65CD    jbe         006E65D4
 006E65CF    call        @BoundErr
 006E65D4    mov         edx,dword ptr ds:[7C4ED8];^gvar_007C29D0:array[4] of ?
 006E65DA    mov         eax,dword ptr [edx+eax*4]
 006E65DD    push        eax
 006E65DE    mov         ecx,dword ptr [ebp-8]
 006E65E1    mov         edx,2
 006E65E6    mov         eax,dword ptr [ebp-4]
 006E65E9    mov         eax,dword ptr [eax+4E0];TFXPDFrame.ADOGrid:TStringGrid
 006E65EF    call        TStringGrid.SetCells
 006E65F4    mov         ecx,dword ptr [ebp-8]
 006E65F7    cmp         ecx,0FF
>006E65FD    jbe         006E6604
 006E65FF    call        @BoundErr
 006E6604    mov         eax,dword ptr [ebp-4]
 006E6607    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E660D    mov         eax,dword ptr [ebp-4]
 006E6610    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E6616    call        TFXPIO.GetADOMonitoring
 006E661B    movsx       eax,al
 006E661E    cmp         eax,1
>006E6621    jbe         006E6628
 006E6623    call        @BoundErr
 006E6628    mov         edx,dword ptr ds:[7C4E40];^gvar_007C29E0:array[2] of ?
 006E662E    mov         eax,dword ptr [edx+eax*4]
 006E6631    push        eax
 006E6632    mov         ecx,dword ptr [ebp-8]
 006E6635    mov         edx,3
 006E663A    mov         eax,dword ptr [ebp-4]
 006E663D    mov         eax,dword ptr [eax+4E0];TFXPDFrame.ADOGrid:TStringGrid
 006E6643    call        TStringGrid.SetCells
 006E6648    mov         eax,dword ptr [ebp-4]
 006E664B    mov         eax,dword ptr [eax+4E0];TFXPDFrame.ADOGrid:TStringGrid
 006E6651    cmp         byte ptr [eax+31D],0;TStringGrid.FEditorMode:Boolean
>006E6658    jne         006E6710
 006E665E    lea         eax,[ebp-0E4]
 006E6664    push        eax
 006E6665    mov         ecx,dword ptr [ebp-8]
 006E6668    cmp         ecx,0FF
>006E666E    jbe         006E6675
 006E6670    call        @BoundErr
 006E6675    mov         eax,dword ptr [ebp-4]
 006E6678    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E667E    mov         eax,dword ptr [ebp-4]
 006E6681    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E6687    call        TFXPIO.GetADOCtrlGroups
 006E668C    lea         eax,[ebp-0E4]
 006E6692    lea         edx,[ebp-108]
 006E6698    call        006955F8
 006E669D    mov         eax,dword ptr [ebp-108]
 006E66A3    push        eax
 006E66A4    mov         ecx,dword ptr [ebp-8]
 006E66A7    mov         edx,4
 006E66AC    mov         eax,dword ptr [ebp-4]
 006E66AF    mov         eax,dword ptr [eax+4E0];TFXPDFrame.ADOGrid:TStringGrid
 006E66B5    call        TStringGrid.SetCells
 006E66BA    lea         eax,[ebp-58]
 006E66BD    push        eax
 006E66BE    mov         ecx,dword ptr [ebp-8]
 006E66C1    cmp         ecx,0FF
>006E66C7    jbe         006E66CE
 006E66C9    call        @BoundErr
 006E66CE    mov         eax,dword ptr [ebp-4]
 006E66D1    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E66D7    mov         eax,dword ptr [ebp-4]
 006E66DA    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E66E0    call        TFXPIO.GetADODescription
 006E66E5    lea         edx,[ebp-58]
 006E66E8    lea         eax,[ebp-10C]
 006E66EE    call        @UStrFromString
 006E66F3    mov         eax,dword ptr [ebp-10C]
 006E66F9    push        eax
 006E66FA    mov         ecx,dword ptr [ebp-8]
 006E66FD    mov         edx,5
 006E6702    mov         eax,dword ptr [ebp-4]
 006E6705    mov         eax,dword ptr [eax+4E0];TFXPDFrame.ADOGrid:TStringGrid
 006E670B    call        TStringGrid.SetCells
 006E6710    inc         dword ptr [ebp-8]
 006E6713    cmp         dword ptr [ebp-8],0D
>006E6717    jne         006E6541
 006E671D    mov         eax,dword ptr [ebp-4]
 006E6720    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E6726    mov         eax,dword ptr [ebp-4]
 006E6729    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E672F    call        TFXPIO.GetIOCtrlrType
 006E6734    cmp         al,4
>006E6736    jne         006E6AE9
 006E673C    mov         dword ptr [ebp-8],1
 006E6743    mov         ecx,dword ptr [ebp-8]
 006E6746    cmp         ecx,0FF
>006E674C    jbe         006E6753
 006E674E    call        @BoundErr
 006E6753    mov         eax,dword ptr [ebp-4]
 006E6756    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E675C    mov         eax,dword ptr [ebp-4]
 006E675F    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E6765    call        TFXPIO.GetCCIFunction
 006E676A    and         eax,0FF
 006E676F    cmp         eax,1C
>006E6772    jbe         006E6779
 006E6774    call        @BoundErr
 006E6779    mov         edx,dword ptr ds:[7C45CC];^gvar_007C28B0:array[29] of ?
 006E677F    mov         eax,dword ptr [edx+eax*4]
 006E6782    push        eax
 006E6783    mov         ecx,dword ptr [ebp-8]
 006E6786    mov         edx,1
 006E678B    mov         eax,dword ptr [ebp-4]
 006E678E    mov         eax,dword ptr [eax+4D8];TFXPDFrame.CCIGrid:TStringGrid
 006E6794    call        TStringGrid.SetCells
 006E6799    mov         ecx,dword ptr [ebp-8]
 006E679C    cmp         ecx,0FF
>006E67A2    jbe         006E67A9
 006E67A4    call        @BoundErr
 006E67A9    mov         eax,dword ptr [ebp-4]
 006E67AC    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E67B2    mov         eax,dword ptr [ebp-4]
 006E67B5    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E67BB    call        TFXPIO.GetCCIType
 006E67C0    movsx       eax,al
 006E67C3    cmp         eax,1
>006E67C6    jbe         006E67CD
 006E67C8    call        @BoundErr
 006E67CD    mov         edx,dword ptr ds:[7C47DC];^^"'NO'":array[2] of ?
 006E67D3    mov         eax,dword ptr [edx+eax*4]
 006E67D6    push        eax
 006E67D7    mov         ecx,dword ptr [ebp-8]
 006E67DA    mov         edx,2
 006E67DF    mov         eax,dword ptr [ebp-4]
 006E67E2    mov         eax,dword ptr [eax+4D8];TFXPDFrame.CCIGrid:TStringGrid
 006E67E8    call        TStringGrid.SetCells
 006E67ED    mov         ecx,dword ptr [ebp-8]
 006E67F0    cmp         ecx,0FF
>006E67F6    jbe         006E67FD
 006E67F8    call        @BoundErr
 006E67FD    mov         eax,dword ptr [ebp-4]
 006E6800    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E6806    mov         eax,dword ptr [ebp-4]
 006E6809    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E680F    call        TFXPIO.GetCCIShortIsFault
 006E6814    movsx       eax,al
 006E6817    cmp         eax,1
>006E681A    jbe         006E6821
 006E681C    call        @BoundErr
 006E6821    mov         edx,dword ptr ds:[7C4E40];^gvar_007C29E0:array[2] of ?
 006E6827    mov         eax,dword ptr [edx+eax*4]
 006E682A    push        eax
 006E682B    mov         ecx,dword ptr [ebp-8]
 006E682E    mov         edx,3
 006E6833    mov         eax,dword ptr [ebp-4]
 006E6836    mov         eax,dword ptr [eax+4D8];TFXPDFrame.CCIGrid:TStringGrid
 006E683C    call        TStringGrid.SetCells
 006E6841    mov         eax,dword ptr [ebp-4]
 006E6844    mov         eax,dword ptr [eax+4D8];TFXPDFrame.CCIGrid:TStringGrid
 006E684A    cmp         byte ptr [eax+31D],0;TStringGrid.FEditorMode:Boolean
>006E6851    jne         006E69A3
 006E6857    mov         ecx,dword ptr [ebp-8]
 006E685A    cmp         ecx,0FF
>006E6860    jbe         006E6867
 006E6862    call        @BoundErr
 006E6867    mov         eax,dword ptr [ebp-4]
 006E686A    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E6870    mov         eax,dword ptr [ebp-4]
 006E6873    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E6879    call        TFXPIO.GetCCICtrlGroupA
 006E687E    movzx       eax,ax
 006E6881    lea         edx,[ebp-110]
 006E6887    call        IntToStr
 006E688C    mov         eax,dword ptr [ebp-110]
 006E6892    push        eax
 006E6893    mov         ecx,dword ptr [ebp-8]
 006E6896    mov         edx,4
 006E689B    mov         eax,dword ptr [ebp-4]
 006E689E    mov         eax,dword ptr [eax+4D8];TFXPDFrame.CCIGrid:TStringGrid
 006E68A4    call        TStringGrid.SetCells
 006E68A9    mov         ecx,dword ptr [ebp-8]
 006E68AC    cmp         ecx,0FF
>006E68B2    jbe         006E68B9
 006E68B4    call        @BoundErr
 006E68B9    mov         eax,dword ptr [ebp-4]
 006E68BC    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E68C2    mov         eax,dword ptr [ebp-4]
 006E68C5    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E68CB    call        TFXPIO.GetCCICtrlGroupB
 006E68D0    movzx       eax,ax
 006E68D3    lea         edx,[ebp-114]
 006E68D9    call        IntToStr
 006E68DE    mov         eax,dword ptr [ebp-114]
 006E68E4    push        eax
 006E68E5    mov         ecx,dword ptr [ebp-8]
 006E68E8    mov         edx,5
 006E68ED    mov         eax,dword ptr [ebp-4]
 006E68F0    mov         eax,dword ptr [eax+4D8];TFXPDFrame.CCIGrid:TStringGrid
 006E68F6    call        TStringGrid.SetCells
 006E68FB    mov         ecx,dword ptr [ebp-8]
 006E68FE    cmp         ecx,0FF
>006E6904    jbe         006E690B
 006E6906    call        @BoundErr
 006E690B    mov         eax,dword ptr [ebp-4]
 006E690E    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E6914    mov         eax,dword ptr [ebp-4]
 006E6917    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E691D    call        TFXPIO.GetCCICtrlGroupC
 006E6922    movzx       eax,ax
 006E6925    lea         edx,[ebp-118]
 006E692B    call        IntToStr
 006E6930    mov         eax,dword ptr [ebp-118]
 006E6936    push        eax
 006E6937    mov         ecx,dword ptr [ebp-8]
 006E693A    mov         edx,6
 006E693F    mov         eax,dword ptr [ebp-4]
 006E6942    mov         eax,dword ptr [eax+4D8];TFXPDFrame.CCIGrid:TStringGrid
 006E6948    call        TStringGrid.SetCells
 006E694D    lea         eax,[ebp-58]
 006E6950    push        eax
 006E6951    mov         ecx,dword ptr [ebp-8]
 006E6954    cmp         ecx,0FF
>006E695A    jbe         006E6961
 006E695C    call        @BoundErr
 006E6961    mov         eax,dword ptr [ebp-4]
 006E6964    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E696A    mov         eax,dword ptr [ebp-4]
 006E696D    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E6973    call        TFXPIO.GetCCIDescription
 006E6978    lea         edx,[ebp-58]
 006E697B    lea         eax,[ebp-11C]
 006E6981    call        @UStrFromString
 006E6986    mov         eax,dword ptr [ebp-11C]
 006E698C    push        eax
 006E698D    mov         ecx,dword ptr [ebp-8]
 006E6990    mov         edx,7
 006E6995    mov         eax,dword ptr [ebp-4]
 006E6998    mov         eax,dword ptr [eax+4D8];TFXPDFrame.CCIGrid:TStringGrid
 006E699E    call        TStringGrid.SetCells
 006E69A3    inc         dword ptr [ebp-8]
 006E69A6    cmp         dword ptr [ebp-8],4
>006E69AA    jne         006E6743
 006E69B0    mov         dword ptr [ebp-8],1
 006E69B7    mov         ecx,dword ptr [ebp-8]
 006E69BA    cmp         ecx,0FF
>006E69C0    jbe         006E69C7
 006E69C2    call        @BoundErr
 006E69C7    mov         eax,dword ptr [ebp-4]
 006E69CA    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E69D0    mov         eax,dword ptr [ebp-4]
 006E69D3    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E69D9    call        TFXPIO.GetCCOFunction
 006E69DE    mov         edx,eax
 006E69E0    lea         ecx,[ebp-120]
 006E69E6    mov         eax,dword ptr [ebp-4]
 006E69E9    mov         eax,dword ptr [eax+85C];TFXPDFrame.FXPan:TFXPanel
 006E69EF    mov         eax,dword ptr [eax+10];TFXPanel.FXPIO:TFXPIO
 006E69F2    call        TFXPIO.OutFunctionToString
 006E69F7    mov         eax,dword ptr [ebp-120]
 006E69FD    push        eax
 006E69FE    mov         ecx,dword ptr [ebp-8]
 006E6A01    mov         edx,1
 006E6A06    mov         eax,dword ptr [ebp-4]
 006E6A09    mov         eax,dword ptr [eax+4DC];TFXPDFrame.CCOGrid:TStringGrid
 006E6A0F    call        TStringGrid.SetCells
 006E6A14    mov         eax,dword ptr [ebp-4]
 006E6A17    mov         eax,dword ptr [eax+4DC];TFXPDFrame.CCOGrid:TStringGrid
 006E6A1D    cmp         byte ptr [eax+31D],0;TStringGrid.FEditorMode:Boolean
>006E6A24    jne         006E6ADC
 006E6A2A    lea         eax,[ebp-0E4]
 006E6A30    push        eax
 006E6A31    mov         ecx,dword ptr [ebp-8]
 006E6A34    cmp         ecx,0FF
>006E6A3A    jbe         006E6A41
 006E6A3C    call        @BoundErr
 006E6A41    mov         eax,dword ptr [ebp-4]
 006E6A44    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E6A4A    mov         eax,dword ptr [ebp-4]
 006E6A4D    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E6A53    call        TFXPIO.GetCCOCtrlGroups
 006E6A58    lea         eax,[ebp-0E4]
 006E6A5E    lea         edx,[ebp-124]
 006E6A64    call        006955F8
 006E6A69    mov         eax,dword ptr [ebp-124]
 006E6A6F    push        eax
 006E6A70    mov         ecx,dword ptr [ebp-8]
 006E6A73    mov         edx,2
 006E6A78    mov         eax,dword ptr [ebp-4]
 006E6A7B    mov         eax,dword ptr [eax+4DC];TFXPDFrame.CCOGrid:TStringGrid
 006E6A81    call        TStringGrid.SetCells
 006E6A86    lea         eax,[ebp-58]
 006E6A89    push        eax
 006E6A8A    mov         ecx,dword ptr [ebp-8]
 006E6A8D    cmp         ecx,0FF
>006E6A93    jbe         006E6A9A
 006E6A95    call        @BoundErr
 006E6A9A    mov         eax,dword ptr [ebp-4]
 006E6A9D    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E6AA3    mov         eax,dword ptr [ebp-4]
 006E6AA6    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E6AAC    call        TFXPIO.GetCCODescription
 006E6AB1    lea         edx,[ebp-58]
 006E6AB4    lea         eax,[ebp-128]
 006E6ABA    call        @UStrFromString
 006E6ABF    mov         eax,dword ptr [ebp-128]
 006E6AC5    push        eax
 006E6AC6    mov         ecx,dword ptr [ebp-8]
 006E6AC9    mov         edx,3
 006E6ACE    mov         eax,dword ptr [ebp-4]
 006E6AD1    mov         eax,dword ptr [eax+4DC];TFXPDFrame.CCOGrid:TStringGrid
 006E6AD7    call        TStringGrid.SetCells
 006E6ADC    inc         dword ptr [ebp-8]
 006E6ADF    cmp         dword ptr [ebp-8],5
>006E6AE3    jne         006E69B7
 006E6AE9    xor         eax,eax
 006E6AEB    pop         edx
 006E6AEC    pop         ecx
 006E6AED    pop         ecx
 006E6AEE    mov         dword ptr fs:[eax],edx
 006E6AF1    push        6E6B28
 006E6AF6    lea         eax,[ebp-128]
 006E6AFC    mov         edx,11
 006E6B01    call        @UStrArrayClr
 006E6B06    lea         eax,[ebp-60]
 006E6B09    mov         edx,2
 006E6B0E    call        @UStrArrayClr
 006E6B13    lea         eax,[ebp-18]
 006E6B16    mov         edx,4
 006E6B1B    call        @UStrArrayClr
 006E6B20    ret
>006E6B21    jmp         @HandleFinally
>006E6B26    jmp         006E6AF6
 006E6B28    mov         esp,ebp
 006E6B2A    pop         ebp
 006E6B2B    ret
*}
end;

//006E6B2C
procedure sub_006E6B2C(?:TFXPDFrame);
begin
{*
 006E6B2C    push        ebp
 006E6B2D    mov         ebp,esp
 006E6B2F    add         esp,0FFFFFFF8
 006E6B32    xor         edx,edx
 006E6B34    mov         dword ptr [ebp-8],edx
 006E6B37    mov         dword ptr [ebp-4],eax
 006E6B3A    xor         eax,eax
 006E6B3C    push        ebp
 006E6B3D    push        6E6BA5
 006E6B42    push        dword ptr fs:[eax]
 006E6B45    mov         dword ptr fs:[eax],esp
 006E6B48    lea         eax,[ebp-8]
 006E6B4B    mov         edx,dword ptr [ebp-4]
 006E6B4E    mov         edx,dword ptr [edx+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E6B54    add         edx,5
 006E6B57    call        @UStrFromString
 006E6B5C    mov         edx,dword ptr [ebp-8]
 006E6B5F    mov         eax,dword ptr [ebp-4]
 006E6B62    mov         eax,dword ptr [eax+2C4];TFXPDFrame.memPanelDescription:TMemo
 006E6B68    call        TControl.SetText
 006E6B6D    mov         eax,dword ptr [ebp-4]
 006E6B70    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E6B76    xor         edx,edx
 006E6B78    mov         dl,byte ptr [eax+181]
 006E6B7E    mov         eax,dword ptr [ebp-4]
 006E6B81    mov         eax,dword ptr [eax+2CC];TFXPDFrame.cbShowLogo:TComboBox
 006E6B87    mov         ecx,dword ptr [eax]
 006E6B89    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 006E6B8F    xor         eax,eax
 006E6B91    pop         edx
 006E6B92    pop         ecx
 006E6B93    pop         ecx
 006E6B94    mov         dword ptr fs:[eax],edx
 006E6B97    push        6E6BAC
 006E6B9C    lea         eax,[ebp-8]
 006E6B9F    call        @UStrClr
 006E6BA4    ret
>006E6BA5    jmp         @HandleFinally
>006E6BAA    jmp         006E6B9C
 006E6BAC    pop         ecx
 006E6BAD    pop         ecx
 006E6BAE    pop         ebp
 006E6BAF    ret
*}
end;

//006E6BB0
procedure TFXPDFrame.memPanelDescriptionChange(Sender:TObject);
begin
{*
 006E6BB0    push        ebp
 006E6BB1    mov         ebp,esp
 006E6BB3    add         esp,0FFFFFEF0
 006E6BB9    xor         ecx,ecx
 006E6BBB    mov         dword ptr [ebp-10C],ecx
 006E6BC1    mov         dword ptr [ebp-110],ecx
 006E6BC7    mov         dword ptr [ebp-8],edx
 006E6BCA    mov         dword ptr [ebp-4],eax
 006E6BCD    xor         eax,eax
 006E6BCF    push        ebp
 006E6BD0    push        6E6C5B
 006E6BD5    push        dword ptr fs:[eax]
 006E6BD8    mov         dword ptr fs:[eax],esp
 006E6BDB    lea         edx,[ebp-110]
 006E6BE1    mov         eax,dword ptr [ebp-4]
 006E6BE4    mov         eax,dword ptr [eax+2C4];TFXPDFrame.memPanelDescription:TMemo
 006E6BEA    call        TControl.GetText
 006E6BEF    mov         edx,dword ptr [ebp-110]
 006E6BF5    lea         eax,[ebp-10C]
 006E6BFB    mov         ecx,0
 006E6C00    call        @LStrFromUStr
 006E6C05    mov         edx,dword ptr [ebp-10C]
 006E6C0B    lea         eax,[ebp-108]
 006E6C11    mov         ecx,0FF
 006E6C16    call        @LStrToString
 006E6C1B    lea         edx,[ebp-108]
 006E6C21    mov         eax,dword ptr [ebp-4]
 006E6C24    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E6C2A    call        006A2174
 006E6C2F    mov         eax,dword ptr [ebp-4]
 006E6C32    call        006E6B2C
 006E6C37    xor         eax,eax
 006E6C39    pop         edx
 006E6C3A    pop         ecx
 006E6C3B    pop         ecx
 006E6C3C    mov         dword ptr fs:[eax],edx
 006E6C3F    push        6E6C62
 006E6C44    lea         eax,[ebp-110]
 006E6C4A    call        @UStrClr
 006E6C4F    lea         eax,[ebp-10C]
 006E6C55    call        @LStrClr
 006E6C5A    ret
>006E6C5B    jmp         @HandleFinally
>006E6C60    jmp         006E6C44
 006E6C62    mov         esp,ebp
 006E6C64    pop         ebp
 006E6C65    ret
*}
end;

//006E6C68
procedure TFXPDFrame.cbShowLogoChange(Sender:TObject);
begin
{*
 006E6C68    push        ebp
 006E6C69    mov         ebp,esp
 006E6C6B    add         esp,0FFFFFFF8
 006E6C6E    mov         dword ptr [ebp-8],edx
 006E6C71    mov         dword ptr [ebp-4],eax
 006E6C74    mov         eax,dword ptr [ebp-4]
 006E6C77    mov         eax,dword ptr [eax+2CC];TFXPDFrame.cbShowLogo:TComboBox
 006E6C7D    mov         edx,dword ptr [eax]
 006E6C7F    call        dword ptr [edx+108];TComboBox.GetItemIndex
 006E6C85    mov         edx,eax
 006E6C87    mov         eax,dword ptr [ebp-4]
 006E6C8A    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E6C90    call        006A2700
 006E6C95    mov         eax,dword ptr [ebp-4]
 006E6C98    call        006E6B2C
 006E6C9D    pop         ecx
 006E6C9E    pop         ecx
 006E6C9F    pop         ebp
 006E6CA0    ret
*}
end;

//006E6CA4
procedure sub_006E6CA4(?:TFXPDFrame);
begin
{*
 006E6CA4    push        ebp
 006E6CA5    mov         ebp,esp
 006E6CA7    xor         ecx,ecx
 006E6CA9    push        ecx
 006E6CAA    push        ecx
 006E6CAB    push        ecx
 006E6CAC    push        ecx
 006E6CAD    push        ecx
 006E6CAE    push        ecx
 006E6CAF    push        ecx
 006E6CB0    push        ecx
 006E6CB1    mov         dword ptr [ebp-4],eax
 006E6CB4    xor         eax,eax
 006E6CB6    push        ebp
 006E6CB7    push        6E717D
 006E6CBC    push        dword ptr fs:[eax]
 006E6CBF    mov         dword ptr fs:[eax],esp
 006E6CC2    mov         eax,dword ptr [ebp-4]
 006E6CC5    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E6CCB    xor         edx,edx
 006E6CCD    mov         dl,byte ptr [eax+104]
 006E6CD3    mov         eax,dword ptr [ebp-4]
 006E6CD6    mov         eax,dword ptr [eax+2D8];TFXPDFrame.cbRS2320Use:TComboBox
 006E6CDC    mov         ecx,dword ptr [eax]
 006E6CDE    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 006E6CE4    mov         eax,dword ptr [ebp-4]
 006E6CE7    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E6CED    mov         dl,byte ptr [eax+105]
 006E6CF3    mov         eax,dword ptr [ebp-4]
 006E6CF6    mov         eax,dword ptr [eax+2E4];TFXPDFrame.cbRS2320Monitored:TCheckBox
 006E6CFC    mov         ecx,dword ptr [eax]
 006E6CFE    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006E6D04    mov         eax,dword ptr [ebp-4]
 006E6D07    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E6D0D    call        006A2818
 006E6D12    mov         edx,eax
 006E6D14    mov         eax,dword ptr [ebp-4]
 006E6D17    mov         eax,dword ptr [eax+2E4];TFXPDFrame.cbRS2320Monitored:TCheckBox
 006E6D1D    mov         ecx,dword ptr [eax]
 006E6D1F    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E6D25    mov         eax,dword ptr [ebp-4]
 006E6D28    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E6D2E    xor         edx,edx
 006E6D30    mov         dl,byte ptr [eax+107]
 006E6D36    mov         eax,dword ptr [ebp-4]
 006E6D39    mov         eax,dword ptr [eax+2E0];TFXPDFrame.cbRS2320BaudRate:TComboBox
 006E6D3F    mov         ecx,dword ptr [eax]
 006E6D41    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 006E6D47    lea         eax,[ebp-10]
 006E6D4A    mov         edx,dword ptr [ebp-4]
 006E6D4D    mov         edx,dword ptr [edx+85C];TFXPDFrame.FXPan:TFXPanel
 006E6D53    mov         edx,dword ptr [edx+18];TFXPanel.FXPTD:TFXPTD
 006E6D56    add         edx,27C46
 006E6D5C    call        @UStrFromString
 006E6D61    mov         edx,dword ptr [ebp-10]
 006E6D64    mov         eax,dword ptr [ebp-4]
 006E6D67    mov         eax,dword ptr [eax+2F0];TFXPDFrame.edRS2320Description:TEdit
 006E6D6D    call        TControl.SetText
 006E6D72    mov         eax,dword ptr [ebp-4]
 006E6D75    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E6D7B    xor         edx,edx
 006E6D7D    mov         dl,byte ptr [eax+108]
 006E6D83    mov         eax,dword ptr [ebp-4]
 006E6D86    mov         eax,dword ptr [eax+2F8];TFXPDFrame.cbRS4851Use:TComboBox
 006E6D8C    mov         ecx,dword ptr [eax]
 006E6D8E    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 006E6D94    mov         eax,dword ptr [ebp-4]
 006E6D97    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E6D9D    mov         dl,byte ptr [eax+109]
 006E6DA3    mov         eax,dword ptr [ebp-4]
 006E6DA6    mov         eax,dword ptr [eax+304];TFXPDFrame.cbRS4851Monitored:TCheckBox
 006E6DAC    mov         ecx,dword ptr [eax]
 006E6DAE    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006E6DB4    mov         eax,dword ptr [ebp-4]
 006E6DB7    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E6DBD    call        006A291C
 006E6DC2    mov         edx,eax
 006E6DC4    mov         eax,dword ptr [ebp-4]
 006E6DC7    mov         eax,dword ptr [eax+304];TFXPDFrame.cbRS4851Monitored:TCheckBox
 006E6DCD    mov         ecx,dword ptr [eax]
 006E6DCF    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E6DD5    mov         eax,dword ptr [ebp-4]
 006E6DD8    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E6DDE    xor         edx,edx
 006E6DE0    mov         dl,byte ptr [eax+10B]
 006E6DE6    mov         eax,dword ptr [ebp-4]
 006E6DE9    mov         eax,dword ptr [eax+300];TFXPDFrame.cbRS4851BaudRate:TComboBox
 006E6DEF    mov         ecx,dword ptr [eax]
 006E6DF1    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 006E6DF7    lea         eax,[ebp-14]
 006E6DFA    mov         edx,dword ptr [ebp-4]
 006E6DFD    mov         edx,dword ptr [edx+85C];TFXPDFrame.FXPan:TFXPanel
 006E6E03    mov         edx,dword ptr [edx+18];TFXPanel.FXPTD:TFXPTD
 006E6E06    add         edx,27C86
 006E6E0C    call        @UStrFromString
 006E6E11    mov         edx,dword ptr [ebp-14]
 006E6E14    mov         eax,dword ptr [ebp-4]
 006E6E17    mov         eax,dword ptr [eax+310];TFXPDFrame.edRS4851Description:TEdit
 006E6E1D    call        TControl.SetText
 006E6E22    mov         eax,dword ptr [ebp-4]
 006E6E25    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E6E2B    cmp         byte ptr [eax+180],7
>006E6E32    je          006E6E46
 006E6E34    mov         eax,dword ptr [ebp-4]
 006E6E37    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E6E3D    cmp         byte ptr [eax+180],8
>006E6E44    jne         006E6E4A
 006E6E46    xor         edx,edx
>006E6E48    jmp         006E6E4C
 006E6E4A    mov         dl,1
 006E6E4C    mov         eax,dword ptr [ebp-4]
 006E6E4F    mov         eax,dword ptr [eax+314];TFXPDFrame.gbRS485_2:TGroupBox
 006E6E55    call        TControl.SetVisible
 006E6E5A    mov         eax,dword ptr [ebp-4]
 006E6E5D    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E6E63    call        006A2A00
 006E6E68    mov         edx,eax
 006E6E6A    mov         eax,dword ptr [ebp-4]
 006E6E6D    mov         eax,dword ptr [eax+318];TFXPDFrame.cbRS4852Use:TComboBox
 006E6E73    mov         ecx,dword ptr [eax]
 006E6E75    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E6E7B    mov         eax,dword ptr [ebp-4]
 006E6E7E    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E6E84    xor         edx,edx
 006E6E86    mov         dl,byte ptr [eax+10C]
 006E6E8C    mov         eax,dword ptr [ebp-4]
 006E6E8F    mov         eax,dword ptr [eax+318];TFXPDFrame.cbRS4852Use:TComboBox
 006E6E95    mov         ecx,dword ptr [eax]
 006E6E97    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 006E6E9D    xor         edx,edx
 006E6E9F    mov         eax,dword ptr [ebp-4]
 006E6EA2    mov         eax,dword ptr [eax+320];TFXPDFrame.cbRS4852BaudRate:TComboBox
 006E6EA8    mov         ecx,dword ptr [eax]
 006E6EAA    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E6EB0    mov         eax,dword ptr [ebp-4]
 006E6EB3    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E6EB9    xor         edx,edx
 006E6EBB    mov         dl,byte ptr [eax+10D]
 006E6EC1    mov         eax,dword ptr [ebp-4]
 006E6EC4    mov         eax,dword ptr [eax+320];TFXPDFrame.cbRS4852BaudRate:TComboBox
 006E6ECA    mov         ecx,dword ptr [eax]
 006E6ECC    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 006E6ED2    mov         eax,dword ptr [ebp-4]
 006E6ED5    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E6EDB    cmp         byte ptr [eax+180],7
>006E6EE2    je          006E6EF6
 006E6EE4    mov         eax,dword ptr [ebp-4]
 006E6EE7    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E6EED    cmp         byte ptr [eax+180],8
>006E6EF4    jne         006E6EFA
 006E6EF6    xor         edx,edx
>006E6EF8    jmp         006E6EFC
 006E6EFA    mov         dl,1
 006E6EFC    mov         eax,dword ptr [ebp-4]
 006E6EFF    mov         eax,dword ptr [eax+324];TFXPDFrame.gbRS485_3:TGroupBox
 006E6F05    call        TControl.SetVisible
 006E6F0A    mov         eax,dword ptr [ebp-4]
 006E6F0D    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E6F13    call        006A2A78
 006E6F18    mov         edx,eax
 006E6F1A    mov         eax,dword ptr [ebp-4]
 006E6F1D    mov         eax,dword ptr [eax+328];TFXPDFrame.cbRS4853Use:TComboBox
 006E6F23    mov         ecx,dword ptr [eax]
 006E6F25    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E6F2B    mov         eax,dword ptr [ebp-4]
 006E6F2E    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E6F34    xor         edx,edx
 006E6F36    mov         dl,byte ptr [eax+10E]
 006E6F3C    mov         eax,dword ptr [ebp-4]
 006E6F3F    mov         eax,dword ptr [eax+328];TFXPDFrame.cbRS4853Use:TComboBox
 006E6F45    mov         ecx,dword ptr [eax]
 006E6F47    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 006E6F4D    mov         eax,dword ptr [ebp-4]
 006E6F50    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E6F56    cmp         byte ptr [eax+180],7
>006E6F5D    je          006E6F71
 006E6F5F    mov         eax,dword ptr [ebp-4]
 006E6F62    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E6F68    cmp         byte ptr [eax+180],8
>006E6F6F    jne         006E6F75
 006E6F71    xor         edx,edx
>006E6F73    jmp         006E6F77
 006E6F75    mov         dl,1
 006E6F77    mov         eax,dword ptr [ebp-4]
 006E6F7A    mov         eax,dword ptr [eax+32C];TFXPDFrame.gbEthernet:TGroupBox
 006E6F80    call        TControl.SetVisible
 006E6F85    mov         eax,dword ptr [ebp-4]
 006E6F88    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E6F8E    mov         al,byte ptr [eax+187]
 006E6F94    sub         al,1
>006E6F96    jb          006E6FA0
>006E6F98    je          006E6FB5
 006E6F9A    dec         al
>006E6F9C    je          006E6FCA
>006E6F9E    jmp         006E6FDD
 006E6FA0    mov         dl,1
 006E6FA2    mov         eax,dword ptr [ebp-4]
 006E6FA5    mov         eax,dword ptr [eax+330];TFXPDFrame.rbEthernetNotInUse:TRadioButton
 006E6FAB    mov         ecx,dword ptr [eax]
 006E6FAD    call        dword ptr [ecx+10C];TRadioButton.SetChecked
>006E6FB3    jmp         006E6FDD
 006E6FB5    mov         dl,1
 006E6FB7    mov         eax,dword ptr [ebp-4]
 006E6FBA    mov         eax,dword ptr [eax+334];TFXPDFrame.rbEthernetUseDHCP:TRadioButton
 006E6FC0    mov         ecx,dword ptr [eax]
 006E6FC2    call        dword ptr [ecx+10C];TRadioButton.SetChecked
>006E6FC8    jmp         006E6FDD
 006E6FCA    mov         dl,1
 006E6FCC    mov         eax,dword ptr [ebp-4]
 006E6FCF    mov         eax,dword ptr [eax+338];TFXPDFrame.rbEthernetStatic:TRadioButton
 006E6FD5    mov         ecx,dword ptr [eax]
 006E6FD7    call        dword ptr [ecx+10C];TRadioButton.SetChecked
 006E6FDD    mov         eax,dword ptr [ebp-4]
 006E6FE0    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E6FE6    call        006A2B70
 006E6FEB    mov         edx,eax
 006E6FED    mov         eax,dword ptr [ebp-4]
 006E6FF0    mov         eax,dword ptr [eax+354];TFXPDFrame.IPSettingsPanel:TPanel
 006E6FF6    mov         ecx,dword ptr [eax]
 006E6FF8    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E6FFE    mov         eax,dword ptr [ebp-4]
 006E7001    mov         eax,dword ptr [eax+354];TFXPDFrame.IPSettingsPanel:TPanel
 006E7007    call        TWinControl.GetControlCount
 006E700C    sub         eax,1
>006E700F    jno         006E7016
 006E7011    call        @IntOver
 006E7016    test        eax,eax
>006E7018    jl          006E7056
 006E701A    inc         eax
 006E701B    mov         dword ptr [ebp-0C],eax
 006E701E    mov         dword ptr [ebp-8],0
 006E7025    mov         eax,dword ptr [ebp-4]
 006E7028    mov         eax,dword ptr [eax+354];TFXPDFrame.IPSettingsPanel:TPanel
 006E702E    mov         edx,dword ptr [eax]
 006E7030    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 006E7033    push        eax
 006E7034    mov         edx,dword ptr [ebp-8]
 006E7037    mov         eax,dword ptr [ebp-4]
 006E703A    mov         eax,dword ptr [eax+354];TFXPDFrame.IPSettingsPanel:TPanel
 006E7040    call        TWinControl.GetControl
 006E7045    pop         edx
 006E7046    mov         ecx,dword ptr [eax]
 006E7048    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E704E    inc         dword ptr [ebp-8]
 006E7051    dec         dword ptr [ebp-0C]
>006E7054    jne         006E7025
 006E7056    mov         eax,dword ptr [ebp-4]
 006E7059    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E705F    test        byte ptr [eax+198],1
>006E7066    je          006E707D
 006E7068    mov         dl,1
 006E706A    mov         eax,dword ptr [ebp-4]
 006E706D    mov         eax,dword ptr [eax+358];TFXPDFrame.rbAllowFireXpertConnection:TRadioButton
 006E7073    mov         ecx,dword ptr [eax]
 006E7075    call        dword ptr [ecx+10C];TRadioButton.SetChecked
>006E707B    jmp         006E70A2
 006E707D    mov         eax,dword ptr [ebp-4]
 006E7080    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E7086    test        byte ptr [eax+198],2
>006E708D    je          006E70A2
 006E708F    mov         dl,1
 006E7091    mov         eax,dword ptr [ebp-4]
 006E7094    mov         eax,dword ptr [eax+35C];TFXPDFrame.rbAllowRemoteConfiguration:TRadioButton
 006E709A    mov         ecx,dword ptr [eax]
 006E709C    call        dword ptr [ecx+10C];TRadioButton.SetChecked
 006E70A2    mov         eax,dword ptr [ebp-4]
 006E70A5    mov         eax,dword ptr [eax+330];TFXPDFrame.rbEthernetNotInUse:TRadioButton
 006E70AB    mov         edx,dword ptr [eax]
 006E70AD    call        dword ptr [edx+108];TRadioButton.GetChecked
 006E70B3    mov         edx,eax
 006E70B5    xor         dl,1
 006E70B8    mov         eax,dword ptr [ebp-4]
 006E70BB    mov         eax,dword ptr [eax+358];TFXPDFrame.rbAllowFireXpertConnection:TRadioButton
 006E70C1    call        TControl.SetVisible
 006E70C6    mov         eax,dword ptr [ebp-4]
 006E70C9    mov         eax,dword ptr [eax+330];TFXPDFrame.rbEthernetNotInUse:TRadioButton
 006E70CF    mov         edx,dword ptr [eax]
 006E70D1    call        dword ptr [edx+108];TRadioButton.GetChecked
 006E70D7    mov         edx,eax
 006E70D9    xor         dl,1
 006E70DC    mov         eax,dword ptr [ebp-4]
 006E70DF    mov         eax,dword ptr [eax+35C];TFXPDFrame.rbAllowRemoteConfiguration:TRadioButton
 006E70E5    call        TControl.SetVisible
 006E70EA    lea         edx,[ebp-18]
 006E70ED    mov         eax,dword ptr [ebp-4]
 006E70F0    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E70F6    mov         eax,dword ptr [eax+188]
 006E70FC    call        006D5D28
 006E7101    mov         edx,dword ptr [ebp-18]
 006E7104    mov         eax,dword ptr [ebp-4]
 006E7107    mov         eax,dword ptr [eax+340];TFXPDFrame.medPanelIpAddress:TMaskEdit
 006E710D    call        TCustomMaskEdit.SetText
 006E7112    lea         edx,[ebp-1C]
 006E7115    mov         eax,dword ptr [ebp-4]
 006E7118    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E711E    mov         eax,dword ptr [eax+18C]
 006E7124    call        006D5D28
 006E7129    mov         edx,dword ptr [ebp-1C]
 006E712C    mov         eax,dword ptr [ebp-4]
 006E712F    mov         eax,dword ptr [eax+348];TFXPDFrame.medNetworkSubnetMask:TMaskEdit
 006E7135    call        TCustomMaskEdit.SetText
 006E713A    lea         edx,[ebp-20]
 006E713D    mov         eax,dword ptr [ebp-4]
 006E7140    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E7146    mov         eax,dword ptr [eax+190]
 006E714C    call        006D5D28
 006E7151    mov         edx,dword ptr [ebp-20]
 006E7154    mov         eax,dword ptr [ebp-4]
 006E7157    mov         eax,dword ptr [eax+350];TFXPDFrame.medGatewayAddress:TMaskEdit
 006E715D    call        TCustomMaskEdit.SetText
 006E7162    xor         eax,eax
 006E7164    pop         edx
 006E7165    pop         ecx
 006E7166    pop         ecx
 006E7167    mov         dword ptr fs:[eax],edx
 006E716A    push        6E7184
 006E716F    lea         eax,[ebp-20]
 006E7172    mov         edx,5
 006E7177    call        @UStrArrayClr
 006E717C    ret
>006E717D    jmp         @HandleFinally
>006E7182    jmp         006E716F
 006E7184    mov         esp,ebp
 006E7186    pop         ebp
 006E7187    ret
*}
end;

//006E7188
procedure TFXPDFrame.cbRS2320UseChange(Sender:TObject);
begin
{*
 006E7188    push        ebp
 006E7189    mov         ebp,esp
 006E718B    add         esp,0FFFFFFF8
 006E718E    mov         dword ptr [ebp-8],edx
 006E7191    mov         dword ptr [ebp-4],eax
 006E7194    mov         eax,dword ptr [ebp-8]
 006E7197    mov         edx,dword ptr ds:[4FD318];TComboBox
 006E719D    call        @AsClass
 006E71A2    mov         edx,dword ptr [eax]
 006E71A4    call        dword ptr [edx+108];TComboBox.GetItemIndex
 006E71AA    mov         edx,eax
 006E71AC    cmp         edx,0FF
>006E71B2    jbe         006E71B9
 006E71B4    call        @BoundErr
 006E71B9    mov         eax,dword ptr [ebp-4]
 006E71BC    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E71C2    call        006A2734
 006E71C7    mov         eax,dword ptr [ebp-4]
 006E71CA    call        006E6CA4
 006E71CF    pop         ecx
 006E71D0    pop         ecx
 006E71D1    pop         ebp
 006E71D2    ret
*}
end;

//006E71D4
procedure TFXPDFrame.cbRS2320BaudRateChange(Sender:TObject);
begin
{*
 006E71D4    push        ebp
 006E71D5    mov         ebp,esp
 006E71D7    add         esp,0FFFFFFF8
 006E71DA    mov         dword ptr [ebp-8],edx
 006E71DD    mov         dword ptr [ebp-4],eax
 006E71E0    mov         eax,dword ptr [ebp-8]
 006E71E3    mov         edx,dword ptr ds:[4FD318];TComboBox
 006E71E9    call        @AsClass
 006E71EE    mov         edx,dword ptr [eax]
 006E71F0    call        dword ptr [edx+108];TComboBox.GetItemIndex
 006E71F6    mov         edx,eax
 006E71F8    cmp         edx,0FF
>006E71FE    jbe         006E7205
 006E7200    call        @BoundErr
 006E7205    mov         eax,dword ptr [ebp-4]
 006E7208    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E720E    call        006A27DC
 006E7213    mov         eax,dword ptr [ebp-4]
 006E7216    call        006E6CA4
 006E721B    pop         ecx
 006E721C    pop         ecx
 006E721D    pop         ebp
 006E721E    ret
*}
end;

//006E7220
procedure TFXPDFrame.cbRS2320MonitoredClick(Sender:TObject);
begin
{*
 006E7220    push        ebp
 006E7221    mov         ebp,esp
 006E7223    add         esp,0FFFFFFF8
 006E7226    mov         dword ptr [ebp-8],edx
 006E7229    mov         dword ptr [ebp-4],eax
 006E722C    mov         eax,dword ptr [ebp-8]
 006E722F    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006E7235    call        @AsClass
 006E723A    mov         edx,dword ptr [eax]
 006E723C    call        dword ptr [edx+108];TCheckBox.GetChecked
 006E7242    mov         edx,eax
 006E7244    mov         eax,dword ptr [ebp-4]
 006E7247    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E724D    call        006A279C
 006E7252    mov         eax,dword ptr [ebp-4]
 006E7255    call        006E6CA4
 006E725A    pop         ecx
 006E725B    pop         ecx
 006E725C    pop         ebp
 006E725D    ret
*}
end;

//006E7260
procedure TFXPDFrame.edRS2320DescriptionChange(Sender:TObject);
begin
{*
 006E7260    push        ebp
 006E7261    mov         ebp,esp
 006E7263    add         esp,0FFFFFEF0
 006E7269    xor         ecx,ecx
 006E726B    mov         dword ptr [ebp-10C],ecx
 006E7271    mov         dword ptr [ebp-110],ecx
 006E7277    mov         dword ptr [ebp-8],edx
 006E727A    mov         dword ptr [ebp-4],eax
 006E727D    xor         eax,eax
 006E727F    push        ebp
 006E7280    push        6E7315
 006E7285    push        dword ptr fs:[eax]
 006E7288    mov         dword ptr fs:[eax],esp
 006E728B    lea         edx,[ebp-110]
 006E7291    mov         eax,dword ptr [ebp-4]
 006E7294    mov         eax,dword ptr [eax+2F0];TFXPDFrame.edRS2320Description:TEdit
 006E729A    call        TControl.GetText
 006E729F    mov         edx,dword ptr [ebp-110]
 006E72A5    lea         eax,[ebp-10C]
 006E72AB    mov         ecx,0
 006E72B0    call        @LStrFromUStr
 006E72B5    mov         edx,dword ptr [ebp-10C]
 006E72BB    lea         eax,[ebp-108]
 006E72C1    mov         ecx,0FF
 006E72C6    call        @LStrToString
 006E72CB    lea         edx,[ebp-108]
 006E72D1    mov         eax,dword ptr [ebp-4]
 006E72D4    mov         eax,dword ptr [eax+85C];TFXPDFrame.FXPan:TFXPanel
 006E72DA    mov         eax,dword ptr [eax+18];TFXPanel.FXPTD:TFXPTD
 006E72DD    add         eax,27C46
 006E72E2    mov         cl,3C
 006E72E4    call        @PStrNCpy
 006E72E9    mov         eax,dword ptr [ebp-4]
 006E72EC    call        006E6CA4
 006E72F1    xor         eax,eax
 006E72F3    pop         edx
 006E72F4    pop         ecx
 006E72F5    pop         ecx
 006E72F6    mov         dword ptr fs:[eax],edx
 006E72F9    push        6E731C
 006E72FE    lea         eax,[ebp-110]
 006E7304    call        @UStrClr
 006E7309    lea         eax,[ebp-10C]
 006E730F    call        @LStrClr
 006E7314    ret
>006E7315    jmp         @HandleFinally
>006E731A    jmp         006E72FE
 006E731C    mov         esp,ebp
 006E731E    pop         ebp
 006E731F    ret
*}
end;

//006E7320
procedure TFXPDFrame.cbRS4851UseChange(Sender:TObject);
begin
{*
 006E7320    push        ebp
 006E7321    mov         ebp,esp
 006E7323    add         esp,0FFFFFFF8
 006E7326    mov         dword ptr [ebp-8],edx
 006E7329    mov         dword ptr [ebp-4],eax
 006E732C    mov         eax,dword ptr [ebp-8]
 006E732F    mov         edx,dword ptr ds:[4FD318];TComboBox
 006E7335    call        @AsClass
 006E733A    mov         edx,dword ptr [eax]
 006E733C    call        dword ptr [edx+108];TComboBox.GetItemIndex
 006E7342    mov         edx,eax
 006E7344    cmp         edx,0FF
>006E734A    jbe         006E7351
 006E734C    call        @BoundErr
 006E7351    mov         eax,dword ptr [ebp-4]
 006E7354    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E735A    call        006A2838
 006E735F    mov         eax,dword ptr [ebp-4]
 006E7362    call        006E6CA4
 006E7367    pop         ecx
 006E7368    pop         ecx
 006E7369    pop         ebp
 006E736A    ret
*}
end;

//006E736C
procedure TFXPDFrame.cbRS4851BaudRateChange(Sender:TObject);
begin
{*
 006E736C    push        ebp
 006E736D    mov         ebp,esp
 006E736F    add         esp,0FFFFFFF8
 006E7372    mov         dword ptr [ebp-8],edx
 006E7375    mov         dword ptr [ebp-4],eax
 006E7378    mov         eax,dword ptr [ebp-8]
 006E737B    mov         edx,dword ptr ds:[4FD318];TComboBox
 006E7381    call        @AsClass
 006E7386    mov         edx,dword ptr [eax]
 006E7388    call        dword ptr [edx+108];TComboBox.GetItemIndex
 006E738E    mov         edx,eax
 006E7390    cmp         edx,0FF
>006E7396    jbe         006E739D
 006E7398    call        @BoundErr
 006E739D    mov         eax,dword ptr [ebp-4]
 006E73A0    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E73A6    call        006A28E0
 006E73AB    mov         eax,dword ptr [ebp-4]
 006E73AE    call        006E6CA4
 006E73B3    pop         ecx
 006E73B4    pop         ecx
 006E73B5    pop         ebp
 006E73B6    ret
*}
end;

//006E73B8
procedure TFXPDFrame.cbRS4851MonitoredClick(Sender:TObject);
begin
{*
 006E73B8    push        ebp
 006E73B9    mov         ebp,esp
 006E73BB    add         esp,0FFFFFFF8
 006E73BE    mov         dword ptr [ebp-8],edx
 006E73C1    mov         dword ptr [ebp-4],eax
 006E73C4    mov         eax,dword ptr [ebp-8]
 006E73C7    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006E73CD    call        @AsClass
 006E73D2    mov         edx,dword ptr [eax]
 006E73D4    call        dword ptr [edx+108];TCheckBox.GetChecked
 006E73DA    mov         edx,eax
 006E73DC    mov         eax,dword ptr [ebp-4]
 006E73DF    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E73E5    call        006A28A0
 006E73EA    mov         eax,dword ptr [ebp-4]
 006E73ED    call        006E6CA4
 006E73F2    pop         ecx
 006E73F3    pop         ecx
 006E73F4    pop         ebp
 006E73F5    ret
*}
end;

//006E73F8
procedure TFXPDFrame.edRS4851DescriptionChange(Sender:TObject);
begin
{*
 006E73F8    push        ebp
 006E73F9    mov         ebp,esp
 006E73FB    add         esp,0FFFFFEF0
 006E7401    xor         ecx,ecx
 006E7403    mov         dword ptr [ebp-10C],ecx
 006E7409    mov         dword ptr [ebp-110],ecx
 006E740F    mov         dword ptr [ebp-8],edx
 006E7412    mov         dword ptr [ebp-4],eax
 006E7415    xor         eax,eax
 006E7417    push        ebp
 006E7418    push        6E74AD
 006E741D    push        dword ptr fs:[eax]
 006E7420    mov         dword ptr fs:[eax],esp
 006E7423    lea         edx,[ebp-110]
 006E7429    mov         eax,dword ptr [ebp-4]
 006E742C    mov         eax,dword ptr [eax+310];TFXPDFrame.edRS4851Description:TEdit
 006E7432    call        TControl.GetText
 006E7437    mov         edx,dword ptr [ebp-110]
 006E743D    lea         eax,[ebp-10C]
 006E7443    mov         ecx,0
 006E7448    call        @LStrFromUStr
 006E744D    mov         edx,dword ptr [ebp-10C]
 006E7453    lea         eax,[ebp-108]
 006E7459    mov         ecx,0FF
 006E745E    call        @LStrToString
 006E7463    lea         edx,[ebp-108]
 006E7469    mov         eax,dword ptr [ebp-4]
 006E746C    mov         eax,dword ptr [eax+85C];TFXPDFrame.FXPan:TFXPanel
 006E7472    mov         eax,dword ptr [eax+18];TFXPanel.FXPTD:TFXPTD
 006E7475    add         eax,27C86
 006E747A    mov         cl,3C
 006E747C    call        @PStrNCpy
 006E7481    mov         eax,dword ptr [ebp-4]
 006E7484    call        006E6CA4
 006E7489    xor         eax,eax
 006E748B    pop         edx
 006E748C    pop         ecx
 006E748D    pop         ecx
 006E748E    mov         dword ptr fs:[eax],edx
 006E7491    push        6E74B4
 006E7496    lea         eax,[ebp-110]
 006E749C    call        @UStrClr
 006E74A1    lea         eax,[ebp-10C]
 006E74A7    call        @LStrClr
 006E74AC    ret
>006E74AD    jmp         @HandleFinally
>006E74B2    jmp         006E7496
 006E74B4    mov         esp,ebp
 006E74B6    pop         ebp
 006E74B7    ret
*}
end;

//006E74B8
procedure TFXPDFrame.cbRS4852UseChange(Sender:TObject);
begin
{*
 006E74B8    push        ebp
 006E74B9    mov         ebp,esp
 006E74BB    add         esp,0FFFFFFF8
 006E74BE    mov         dword ptr [ebp-8],edx
 006E74C1    mov         dword ptr [ebp-4],eax
 006E74C4    mov         eax,dword ptr [ebp-8]
 006E74C7    mov         edx,dword ptr ds:[4FD318];TComboBox
 006E74CD    call        @AsClass
 006E74D2    mov         edx,dword ptr [eax]
 006E74D4    call        dword ptr [edx+108];TComboBox.GetItemIndex
 006E74DA    mov         edx,eax
 006E74DC    cmp         edx,0FF
>006E74E2    jbe         006E74E9
 006E74E4    call        @BoundErr
 006E74E9    mov         eax,dword ptr [ebp-4]
 006E74EC    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E74F2    call        006A293C
 006E74F7    mov         eax,dword ptr [ebp-4]
 006E74FA    call        006E6CA4
 006E74FF    pop         ecx
 006E7500    pop         ecx
 006E7501    pop         ebp
 006E7502    ret
*}
end;

//006E7504
procedure TFXPDFrame.cbRS4852BaudRateChange(Sender:TObject);
begin
{*
 006E7504    push        ebp
 006E7505    mov         ebp,esp
 006E7507    add         esp,0FFFFFFF8
 006E750A    mov         dword ptr [ebp-8],edx
 006E750D    mov         dword ptr [ebp-4],eax
 006E7510    mov         eax,dword ptr [ebp-8]
 006E7513    mov         edx,dword ptr ds:[4FD318];TComboBox
 006E7519    call        @AsClass
 006E751E    mov         edx,dword ptr [eax]
 006E7520    call        dword ptr [edx+108];TComboBox.GetItemIndex
 006E7526    mov         edx,eax
 006E7528    cmp         edx,0FF
>006E752E    jbe         006E7535
 006E7530    call        @BoundErr
 006E7535    mov         eax,dword ptr [ebp-4]
 006E7538    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E753E    call        006A29B8
 006E7543    mov         eax,dword ptr [ebp-4]
 006E7546    call        006E6CA4
 006E754B    pop         ecx
 006E754C    pop         ecx
 006E754D    pop         ebp
 006E754E    ret
*}
end;

//006E7550
procedure TFXPDFrame.cbRS4853UseChange(Sender:TObject);
begin
{*
 006E7550    push        ebp
 006E7551    mov         ebp,esp
 006E7553    add         esp,0FFFFFFF8
 006E7556    mov         dword ptr [ebp-8],edx
 006E7559    mov         dword ptr [ebp-4],eax
 006E755C    mov         eax,dword ptr [ebp-8]
 006E755F    mov         edx,dword ptr ds:[4FD318];TComboBox
 006E7565    call        @AsClass
 006E756A    mov         edx,dword ptr [eax]
 006E756C    call        dword ptr [edx+108];TComboBox.GetItemIndex
 006E7572    mov         edx,eax
 006E7574    cmp         edx,0FF
>006E757A    jbe         006E7581
 006E757C    call        @BoundErr
 006E7581    mov         eax,dword ptr [ebp-4]
 006E7584    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E758A    call        006A2A30
 006E758F    mov         eax,dword ptr [ebp-4]
 006E7592    call        006E6CA4
 006E7597    pop         ecx
 006E7598    pop         ecx
 006E7599    pop         ebp
 006E759A    ret
*}
end;

//006E759C
procedure TFXPDFrame.rbEthernetUsageClick(Sender:TObject);
begin
{*
 006E759C    push        ebp
 006E759D    mov         ebp,esp
 006E759F    add         esp,0FFFFFFF8
 006E75A2    mov         dword ptr [ebp-8],edx
 006E75A5    mov         dword ptr [ebp-4],eax
 006E75A8    mov         eax,dword ptr [ebp-8]
 006E75AB    mov         edx,dword ptr ds:[5009D8];TRadioButton
 006E75B1    call        @AsClass
 006E75B6    mov         edx,dword ptr [eax+0C];TRadioButton.FTag:NativeInt
 006E75B9    cmp         edx,0FF
>006E75BF    jbe         006E75C6
 006E75C1    call        @BoundErr
 006E75C6    mov         eax,dword ptr [ebp-4]
 006E75C9    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E75CF    call        006A2A98
 006E75D4    mov         eax,dword ptr [ebp-4]
 006E75D7    call        006E6CA4
 006E75DC    pop         ecx
 006E75DD    pop         ecx
 006E75DE    pop         ebp
 006E75DF    ret
*}
end;

//006E75E0
procedure TFXPDFrame.rbIPApplicationsClick(Sender:TObject);
begin
{*
 006E75E0    push        ebp
 006E75E1    mov         ebp,esp
 006E75E3    add         esp,0FFFFFFF8
 006E75E6    mov         dword ptr [ebp-8],edx
 006E75E9    mov         dword ptr [ebp-4],eax
 006E75EC    mov         eax,dword ptr [ebp-8]
 006E75EF    mov         edx,dword ptr ds:[5009D8];TRadioButton
 006E75F5    call        @AsClass
 006E75FA    mov         edx,dword ptr [eax+0C];TRadioButton.FTag:NativeInt
 006E75FD    cmp         edx,0FF
>006E7603    jbe         006E760A
 006E7605    call        @BoundErr
 006E760A    mov         eax,dword ptr [ebp-4]
 006E760D    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E7613    call        006A2B90
 006E7618    pop         ecx
 006E7619    pop         ecx
 006E761A    pop         ebp
 006E761B    ret
*}
end;

//006E761C
procedure TFXPDFrame.medPanelIpAddressExit(Sender:TObject);
begin
{*
 006E761C    push        ebp
 006E761D    mov         ebp,esp
 006E761F    add         esp,0FFFFFFF4
 006E7622    push        ebx
 006E7623    push        esi
 006E7624    push        edi
 006E7625    xor         ecx,ecx
 006E7627    mov         dword ptr [ebp-0C],ecx
 006E762A    mov         dword ptr [ebp-8],edx
 006E762D    mov         dword ptr [ebp-4],eax
 006E7630    xor         eax,eax
 006E7632    push        ebp
 006E7633    push        6E76CC
 006E7638    push        dword ptr fs:[eax]
 006E763B    mov         dword ptr fs:[eax],esp
 006E763E    xor         eax,eax
 006E7640    push        ebp
 006E7641    push        6E7684
 006E7646    push        dword ptr fs:[eax]
 006E7649    mov         dword ptr fs:[eax],esp
 006E764C    mov         eax,dword ptr [ebp-8]
 006E764F    mov         edx,dword ptr ds:[6B3444];TMaskEdit
 006E7655    call        @AsClass
 006E765A    lea         edx,[ebp-0C]
 006E765D    call        TCustomMaskEdit.GetText
 006E7662    mov         eax,dword ptr [ebp-0C]
 006E7665    call        006D5B90
 006E766A    mov         edx,eax
 006E766C    mov         eax,dword ptr [ebp-4]
 006E766F    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E7675    call        006A2AD4
 006E767A    xor         eax,eax
 006E767C    pop         edx
 006E767D    pop         ecx
 006E767E    pop         ecx
 006E767F    mov         dword ptr fs:[eax],edx
>006E7682    jmp         006E76AE
>006E7684    jmp         @HandleAnyException
 006E7689    mov         eax,dword ptr [ebp-8]
 006E768C    mov         edx,dword ptr ds:[6B3444];TMaskEdit
 006E7692    call        @AsClass
 006E7697    mov         edx,dword ptr [eax]
 006E7699    call        dword ptr [edx+104];TWinControl.SetFocus
 006E769F    mov         eax,6E76E8;'Invalid IP address entry!'
 006E76A4    call        ShowMessage
 006E76A9    call        @DoneExcept
 006E76AE    mov         eax,dword ptr [ebp-4]
 006E76B1    call        006E6CA4
 006E76B6    xor         eax,eax
 006E76B8    pop         edx
 006E76B9    pop         ecx
 006E76BA    pop         ecx
 006E76BB    mov         dword ptr fs:[eax],edx
 006E76BE    push        6E76D3
 006E76C3    lea         eax,[ebp-0C]
 006E76C6    call        @UStrClr
 006E76CB    ret
>006E76CC    jmp         @HandleFinally
>006E76D1    jmp         006E76C3
 006E76D3    pop         edi
 006E76D4    pop         esi
 006E76D5    pop         ebx
 006E76D6    mov         esp,ebp
 006E76D8    pop         ebp
 006E76D9    ret
*}
end;

//006E771C
procedure TFXPDFrame.medNetworkSubnetMaskExit(Sender:TObject);
begin
{*
 006E771C    push        ebp
 006E771D    mov         ebp,esp
 006E771F    add         esp,0FFFFFFF4
 006E7722    push        ebx
 006E7723    push        esi
 006E7724    push        edi
 006E7725    xor         ecx,ecx
 006E7727    mov         dword ptr [ebp-0C],ecx
 006E772A    mov         dword ptr [ebp-8],edx
 006E772D    mov         dword ptr [ebp-4],eax
 006E7730    xor         eax,eax
 006E7732    push        ebp
 006E7733    push        6E77CC
 006E7738    push        dword ptr fs:[eax]
 006E773B    mov         dword ptr fs:[eax],esp
 006E773E    xor         eax,eax
 006E7740    push        ebp
 006E7741    push        6E7784
 006E7746    push        dword ptr fs:[eax]
 006E7749    mov         dword ptr fs:[eax],esp
 006E774C    mov         eax,dword ptr [ebp-8]
 006E774F    mov         edx,dword ptr ds:[6B3444];TMaskEdit
 006E7755    call        @AsClass
 006E775A    lea         edx,[ebp-0C]
 006E775D    call        TCustomMaskEdit.GetText
 006E7762    mov         eax,dword ptr [ebp-0C]
 006E7765    call        006D5B90
 006E776A    mov         edx,eax
 006E776C    mov         eax,dword ptr [ebp-4]
 006E776F    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E7775    call        006A2B08
 006E777A    xor         eax,eax
 006E777C    pop         edx
 006E777D    pop         ecx
 006E777E    pop         ecx
 006E777F    mov         dword ptr fs:[eax],edx
>006E7782    jmp         006E77AE
>006E7784    jmp         @HandleAnyException
 006E7789    mov         eax,dword ptr [ebp-8]
 006E778C    mov         edx,dword ptr ds:[6B3444];TMaskEdit
 006E7792    call        @AsClass
 006E7797    mov         edx,dword ptr [eax]
 006E7799    call        dword ptr [edx+104];TWinControl.SetFocus
 006E779F    mov         eax,6E77E8;'Invalid subnet mask entry!'
 006E77A4    call        ShowMessage
 006E77A9    call        @DoneExcept
 006E77AE    mov         eax,dword ptr [ebp-4]
 006E77B1    call        006E6CA4
 006E77B6    xor         eax,eax
 006E77B8    pop         edx
 006E77B9    pop         ecx
 006E77BA    pop         ecx
 006E77BB    mov         dword ptr fs:[eax],edx
 006E77BE    push        6E77D3
 006E77C3    lea         eax,[ebp-0C]
 006E77C6    call        @UStrClr
 006E77CB    ret
>006E77CC    jmp         @HandleFinally
>006E77D1    jmp         006E77C3
 006E77D3    pop         edi
 006E77D4    pop         esi
 006E77D5    pop         ebx
 006E77D6    mov         esp,ebp
 006E77D8    pop         ebp
 006E77D9    ret
*}
end;

//006E7820
procedure TFXPDFrame.medGatewayAddressExit(Sender:TObject);
begin
{*
 006E7820    push        ebp
 006E7821    mov         ebp,esp
 006E7823    add         esp,0FFFFFFF4
 006E7826    push        ebx
 006E7827    push        esi
 006E7828    push        edi
 006E7829    xor         ecx,ecx
 006E782B    mov         dword ptr [ebp-0C],ecx
 006E782E    mov         dword ptr [ebp-8],edx
 006E7831    mov         dword ptr [ebp-4],eax
 006E7834    xor         eax,eax
 006E7836    push        ebp
 006E7837    push        6E78D0
 006E783C    push        dword ptr fs:[eax]
 006E783F    mov         dword ptr fs:[eax],esp
 006E7842    xor         eax,eax
 006E7844    push        ebp
 006E7845    push        6E7888
 006E784A    push        dword ptr fs:[eax]
 006E784D    mov         dword ptr fs:[eax],esp
 006E7850    mov         eax,dword ptr [ebp-8]
 006E7853    mov         edx,dword ptr ds:[6B3444];TMaskEdit
 006E7859    call        @AsClass
 006E785E    lea         edx,[ebp-0C]
 006E7861    call        TCustomMaskEdit.GetText
 006E7866    mov         eax,dword ptr [ebp-0C]
 006E7869    call        006D5B90
 006E786E    mov         edx,eax
 006E7870    mov         eax,dword ptr [ebp-4]
 006E7873    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E7879    call        006A2B3C
 006E787E    xor         eax,eax
 006E7880    pop         edx
 006E7881    pop         ecx
 006E7882    pop         ecx
 006E7883    mov         dword ptr fs:[eax],edx
>006E7886    jmp         006E78B2
>006E7888    jmp         @HandleAnyException
 006E788D    mov         eax,dword ptr [ebp-8]
 006E7890    mov         edx,dword ptr ds:[6B3444];TMaskEdit
 006E7896    call        @AsClass
 006E789B    mov         edx,dword ptr [eax]
 006E789D    call        dword ptr [edx+104];TWinControl.SetFocus
 006E78A3    mov         eax,6E78EC;'Invalid gateway address entry!'
 006E78A8    call        ShowMessage
 006E78AD    call        @DoneExcept
 006E78B2    mov         eax,dword ptr [ebp-4]
 006E78B5    call        006E6CA4
 006E78BA    xor         eax,eax
 006E78BC    pop         edx
 006E78BD    pop         ecx
 006E78BE    pop         ecx
 006E78BF    mov         dword ptr fs:[eax],edx
 006E78C2    push        6E78D7
 006E78C7    lea         eax,[ebp-0C]
 006E78CA    call        @UStrClr
 006E78CF    ret
>006E78D0    jmp         @HandleFinally
>006E78D5    jmp         006E78C7
 006E78D7    pop         edi
 006E78D8    pop         esi
 006E78D9    pop         ebx
 006E78DA    mov         esp,ebp
 006E78DC    pop         ebp
 006E78DD    ret
*}
end;

//006E792C
procedure sub_006E792C(?:TFXPDFrame);
begin
{*
 006E792C    push        ebp
 006E792D    mov         ebp,esp
 006E792F    add         esp,0FFFFFFF4
 006E7932    xor         edx,edx
 006E7934    mov         dword ptr [ebp-0C],edx
 006E7937    mov         dword ptr [ebp-4],eax
 006E793A    xor         eax,eax
 006E793C    push        ebp
 006E793D    push        6E7AD8
 006E7942    push        dword ptr fs:[eax]
 006E7945    mov         dword ptr fs:[eax],esp
 006E7948    mov         dl,1
 006E794A    mov         eax,dword ptr [ebp-4]
 006E794D    mov         eax,dword ptr [eax+364];TFXPDFrame.gbPanelID:TGroupBox
 006E7953    mov         ecx,dword ptr [eax]
 006E7955    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E795B    mov         eax,dword ptr [ebp-4]
 006E795E    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E7964    xor         edx,edx
 006E7966    mov         dl,byte ptr [eax+122]
 006E796C    mov         eax,dword ptr [ebp-4]
 006E796F    mov         eax,dword ptr [eax+368];TFXPDFrame.speThisPanelID:TSpinEdit
 006E7975    call        TSpinEdit.SetValue
 006E797A    mov         eax,dword ptr [ebp-4]
 006E797D    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E7983    cmp         byte ptr [eax+180],7
>006E798A    je          006E799E
 006E798C    mov         eax,dword ptr [ebp-4]
 006E798F    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E7995    cmp         byte ptr [eax+180],8
>006E799C    jne         006E79A2
 006E799E    xor         edx,edx
>006E79A0    jmp         006E79A4
 006E79A2    mov         dl,1
 006E79A4    mov         eax,dword ptr [ebp-4]
 006E79A7    mov         eax,dword ptr [eax+398];TFXPDFrame.gbLastLocalCZ:TGroupBox
 006E79AD    call        TControl.SetVisible
 006E79B2    mov         eax,dword ptr [ebp-4]
 006E79B5    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E79BB    xor         edx,edx
 006E79BD    mov         dl,byte ptr [eax+175]
 006E79C3    mov         eax,dword ptr [ebp-4]
 006E79C6    mov         eax,dword ptr [eax+3A0];TFXPDFrame.speLastLocalCZ:TSpinEdit
 006E79CC    call        TSpinEdit.SetValue
 006E79D1    mov         eax,dword ptr [ebp-4]
 006E79D4    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E79DA    movzx       edx,word ptr [eax+123]
 006E79E1    mov         eax,dword ptr [ebp-4]
 006E79E4    mov         eax,dword ptr [eax+380];TFXPDFrame.speFirstZoneID:TSpinEdit
 006E79EA    call        TSpinEdit.SetValue
 006E79EF    mov         eax,dword ptr [ebp-4]
 006E79F2    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E79F8    xor         edx,edx
 006E79FA    mov         dl,byte ptr [eax+125]
 006E7A00    mov         eax,dword ptr [ebp-4]
 006E7A03    mov         eax,dword ptr [eax+384];TFXPDFrame.speNumOfZones:TSpinEdit
 006E7A09    call        TSpinEdit.SetValue
 006E7A0E    mov         eax,dword ptr [ebp-4]
 006E7A11    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E7A17    call        006A2DE4
 006E7A1C    movzx       eax,ax
 006E7A1F    lea         edx,[ebp-0C]
 006E7A22    call        IntToStr
 006E7A27    mov         edx,dword ptr [ebp-0C]
 006E7A2A    mov         eax,dword ptr [ebp-4]
 006E7A2D    mov         eax,dword ptr [eax+388];TFXPDFrame.edLastZoneID:TEdit
 006E7A33    call        TControl.SetText
 006E7A38    mov         eax,dword ptr [ebp-4]
 006E7A3B    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E7A41    mov         dl,byte ptr [eax+205];TFXPPD.FRetainZoneIDs:Boolean
 006E7A47    mov         eax,dword ptr [ebp-4]
 006E7A4A    mov         eax,dword ptr [eax+38C];TFXPDFrame.cbRetainZoneIDs:TCheckBox
 006E7A50    mov         ecx,dword ptr [eax]
 006E7A52    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006E7A58    mov         eax,[007C4870];^gvar_007A1EB8
 006E7A5D    cmp         byte ptr [eax],0
 006E7A60    sete        dl
 006E7A63    xor         dl,1
 006E7A66    mov         eax,dword ptr [ebp-4]
 006E7A69    mov         eax,dword ptr [eax+390];TFXPDFrame.gbVisiblePanels:TGroupBox
 006E7A6F    call        TControl.SetVisible
 006E7A74    xor         eax,eax
 006E7A76    mov         dword ptr [ebp-8],eax
 006E7A79    mov         eax,dword ptr [ebp-4]
 006E7A7C    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E7A82    mov         edx,dword ptr [ebp-8]
 006E7A85    cmp         edx,1F
>006E7A88    ja          006E7A91
 006E7A8A    bt          dword ptr [eax+171],edx
 006E7A91    setb        cl
 006E7A94    mov         edx,dword ptr [ebp-8]
 006E7A97    mov         eax,dword ptr [ebp-4]
 006E7A9A    mov         eax,dword ptr [eax+394];TFXPDFrame.clVisiblePanels:TCheckListBox
 006E7AA0    call        TCheckListBox.SetChecked
 006E7AA5    inc         dword ptr [ebp-8]
 006E7AA8    cmp         dword ptr [ebp-8],20
>006E7AAC    jne         006E7A79
 006E7AAE    or          edx,0FFFFFFFF
 006E7AB1    mov         eax,dword ptr [ebp-4]
 006E7AB4    mov         eax,dword ptr [eax+394];TFXPDFrame.clVisiblePanels:TCheckListBox
 006E7ABA    mov         ecx,dword ptr [eax]
 006E7ABC    call        dword ptr [ecx+10C];TCheckListBox.sub_0050E828
 006E7AC2    xor         eax,eax
 006E7AC4    pop         edx
 006E7AC5    pop         ecx
 006E7AC6    pop         ecx
 006E7AC7    mov         dword ptr fs:[eax],edx
 006E7ACA    push        6E7ADF
 006E7ACF    lea         eax,[ebp-0C]
 006E7AD2    call        @UStrClr
 006E7AD7    ret
>006E7AD8    jmp         @HandleFinally
>006E7ADD    jmp         006E7ACF
 006E7ADF    mov         esp,ebp
 006E7AE1    pop         ebp
 006E7AE2    ret
*}
end;

//006E7AE4
{*function sub_006E7AE4(?:TFXPDFrame; ?:LongInt; ?:?):?;
begin
 006E7AE4    push        ebp
 006E7AE5    mov         ebp,esp
 006E7AE7    add         esp,0FFFFFFF0
 006E7AEA    mov         dword ptr [ebp-0C],ecx
 006E7AED    mov         dword ptr [ebp-8],edx
 006E7AF0    mov         dword ptr [ebp-4],eax
 006E7AF3    mov         ecx,dword ptr [ebp-0C]
 006E7AF6    cmp         ecx,0FF
>006E7AFC    jbe         006E7B03
 006E7AFE    call        @BoundErr
 006E7B03    mov         eax,dword ptr [ebp-4]
 006E7B06    mov         eax,dword ptr [eax+85C]
 006E7B0C    mov         eax,dword ptr [eax+0C]
 006E7B0F    movzx       edx,word ptr [eax+123]
 006E7B16    sub         edx,dword ptr [ebp-8]
>006E7B19    jno         006E7B20
 006E7B1B    call        @IntOver
 006E7B20    mov         eax,dword ptr [ebp-4]
 006E7B23    mov         eax,dword ptr [eax+85C]
 006E7B29    mov         eax,dword ptr [eax+14]
 006E7B2C    call        TFXPAD.ValidateZoneIdChange
 006E7B31    test        al,al
>006E7B33    je          006E7B3B
 006E7B35    mov         byte ptr [ebp-0D],1
>006E7B39    jmp         006E7B59
 006E7B3B    push        0
 006E7B3D    push        3
 006E7B3F    mov         eax,[007C44D8];^gvar_007C2CB0
 006E7B44    mov         eax,dword ptr [eax]
 006E7B46    mov         cx,word ptr ds:[6E7B60];0x8 gvar_006E7B60
 006E7B4D    mov         dl,1
 006E7B4F    call        MessageDlg
 006E7B54    dec         eax
 006E7B55    sete        byte ptr [ebp-0D]
 006E7B59    mov         al,byte ptr [ebp-0D]
 006E7B5C    mov         esp,ebp
 006E7B5E    pop         ebp
 006E7B5F    ret
end;*}

//006E7B64
procedure TFXPDFrame.speThisPanelIDChange(Sender:TObject);
begin
{*
 006E7B64    push        ebp
 006E7B65    mov         ebp,esp
 006E7B67    add         esp,0FFFFFFF4
 006E7B6A    mov         dword ptr [ebp-8],edx
 006E7B6D    mov         dword ptr [ebp-4],eax
 006E7B70    mov         eax,dword ptr [ebp-4]
 006E7B73    mov         eax,dword ptr [eax+368];TFXPDFrame.speThisPanelID:TSpinEdit
 006E7B79    call        TSpinEdit.GetValue
 006E7B7E    test        eax,eax
>006E7B80    je          006E7C83
 006E7B86    mov         dl,1
 006E7B88    mov         eax,dword ptr [ebp-4]
 006E7B8B    mov         eax,dword ptr [eax+394];TFXPDFrame.clVisiblePanels:TCheckListBox
 006E7B91    mov         ecx,dword ptr [eax]
 006E7B93    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E7B99    mov         byte ptr [ebp-9],1
 006E7B9D    mov         eax,dword ptr [ebp-4]
 006E7BA0    mov         eax,dword ptr [eax+368];TFXPDFrame.speThisPanelID:TSpinEdit
 006E7BA6    call        TSpinEdit.GetValue
 006E7BAB    xor         edx,edx
 006E7BAD    mov         dl,byte ptr [ebp-9]
 006E7BB0    cmp         eax,edx
>006E7BB2    jne         006E7C15
 006E7BB4    xor         edx,edx
 006E7BB6    mov         dl,byte ptr [ebp-9]
 006E7BB9    sub         edx,1
>006E7BBC    jno         006E7BC3
 006E7BBE    call        @IntOver
 006E7BC3    mov         eax,dword ptr [ebp-4]
 006E7BC6    mov         eax,dword ptr [eax+394];TFXPDFrame.clVisiblePanels:TCheckListBox
 006E7BCC    call        TCheckListBox.GetState
 006E7BD1    test        al,al
>006E7BD3    jne         006E7BF4
 006E7BD5    xor         edx,edx
 006E7BD7    mov         dl,byte ptr [ebp-9]
 006E7BDA    sub         edx,1
>006E7BDD    jno         006E7BE4
 006E7BDF    call        @IntOver
 006E7BE4    mov         cl,2
 006E7BE6    mov         eax,dword ptr [ebp-4]
 006E7BE9    mov         eax,dword ptr [eax+394];TFXPDFrame.clVisiblePanels:TCheckListBox
 006E7BEF    call        TCheckListBox.SetState
 006E7BF4    xor         edx,edx
 006E7BF6    mov         dl,byte ptr [ebp-9]
 006E7BF9    sub         edx,1
>006E7BFC    jno         006E7C03
 006E7BFE    call        @IntOver
 006E7C03    xor         ecx,ecx
 006E7C05    mov         eax,dword ptr [ebp-4]
 006E7C08    mov         eax,dword ptr [eax+394];TFXPDFrame.clVisiblePanels:TCheckListBox
 006E7C0E    call        TCheckListBox.SetItemEnabled
>006E7C13    jmp         006E7C74
 006E7C15    xor         edx,edx
 006E7C17    mov         dl,byte ptr [ebp-9]
 006E7C1A    sub         edx,1
>006E7C1D    jno         006E7C24
 006E7C1F    call        @IntOver
 006E7C24    mov         eax,dword ptr [ebp-4]
 006E7C27    mov         eax,dword ptr [eax+394];TFXPDFrame.clVisiblePanels:TCheckListBox
 006E7C2D    call        TCheckListBox.GetState
 006E7C32    cmp         al,2
>006E7C34    jne         006E7C55
 006E7C36    xor         edx,edx
 006E7C38    mov         dl,byte ptr [ebp-9]
 006E7C3B    sub         edx,1
>006E7C3E    jno         006E7C45
 006E7C40    call        @IntOver
 006E7C45    xor         ecx,ecx
 006E7C47    mov         eax,dword ptr [ebp-4]
 006E7C4A    mov         eax,dword ptr [eax+394];TFXPDFrame.clVisiblePanels:TCheckListBox
 006E7C50    call        TCheckListBox.SetState
 006E7C55    xor         edx,edx
 006E7C57    mov         dl,byte ptr [ebp-9]
 006E7C5A    sub         edx,1
>006E7C5D    jno         006E7C64
 006E7C5F    call        @IntOver
 006E7C64    mov         cl,1
 006E7C66    mov         eax,dword ptr [ebp-4]
 006E7C69    mov         eax,dword ptr [eax+394];TFXPDFrame.clVisiblePanels:TCheckListBox
 006E7C6F    call        TCheckListBox.SetItemEnabled
 006E7C74    inc         byte ptr [ebp-9]
 006E7C77    cmp         byte ptr [ebp-9],21
>006E7C7B    jne         006E7B9D
>006E7C81    jmp         006E7CC2
 006E7C83    mov         byte ptr [ebp-9],1
 006E7C87    xor         edx,edx
 006E7C89    mov         dl,byte ptr [ebp-9]
 006E7C8C    sub         edx,1
>006E7C8F    jno         006E7C96
 006E7C91    call        @IntOver
 006E7C96    xor         ecx,ecx
 006E7C98    mov         eax,dword ptr [ebp-4]
 006E7C9B    mov         eax,dword ptr [eax+394];TFXPDFrame.clVisiblePanels:TCheckListBox
 006E7CA1    call        TCheckListBox.SetState
 006E7CA6    xor         edx,edx
 006E7CA8    mov         eax,dword ptr [ebp-4]
 006E7CAB    mov         eax,dword ptr [eax+394];TFXPDFrame.clVisiblePanels:TCheckListBox
 006E7CB1    mov         ecx,dword ptr [eax]
 006E7CB3    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E7CB9    inc         byte ptr [ebp-9]
 006E7CBC    cmp         byte ptr [ebp-9],21
>006E7CC0    jne         006E7C87
 006E7CC2    mov         eax,dword ptr [ebp-8]
 006E7CC5    mov         edx,dword ptr ds:[6B049C];TSpinEdit
 006E7CCB    call        @AsClass
 006E7CD0    call        TSpinEdit.GetValue
 006E7CD5    mov         edx,eax
 006E7CD7    cmp         edx,0FF
>006E7CDD    jbe         006E7CE4
 006E7CDF    call        @BoundErr
 006E7CE4    mov         eax,dword ptr [ebp-4]
 006E7CE7    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E7CED    call        006A2BC4
 006E7CF2    mov         eax,dword ptr [ebp-4]
 006E7CF5    call        006E792C
 006E7CFA    mov         esp,ebp
 006E7CFC    pop         ebp
 006E7CFD    ret
*}
end;

//006E7D00
procedure TFXPDFrame.speLastLocalCZChange(Sender:TObject);
begin
{*
 006E7D00    push        ebp
 006E7D01    mov         ebp,esp
 006E7D03    add         esp,0FFFFFFF8
 006E7D06    mov         dword ptr [ebp-8],edx
 006E7D09    mov         dword ptr [ebp-4],eax
 006E7D0C    mov         eax,dword ptr [ebp-8]
 006E7D0F    mov         edx,dword ptr ds:[6B049C];TSpinEdit
 006E7D15    call        @AsClass
 006E7D1A    call        TSpinEdit.GetValue
 006E7D1F    mov         edx,eax
 006E7D21    cmp         edx,0FF
>006E7D27    jbe         006E7D2E
 006E7D29    call        @BoundErr
 006E7D2E    mov         eax,dword ptr [ebp-4]
 006E7D31    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E7D37    call        006A2C00
 006E7D3C    mov         eax,dword ptr [ebp-4]
 006E7D3F    call        006E792C
 006E7D44    pop         ecx
 006E7D45    pop         ecx
 006E7D46    pop         ebp
 006E7D47    ret
*}
end;

//006E7D48
procedure TFXPDFrame.speFirstZoneIDChange(Sender:TObject);
begin
{*
 006E7D48    push        ebp
 006E7D49    mov         ebp,esp
 006E7D4B    add         esp,0FFFFFFF8
 006E7D4E    mov         dword ptr [ebp-8],edx
 006E7D51    mov         dword ptr [ebp-4],eax
 006E7D54    mov         eax,dword ptr [ebp-4]
 006E7D57    mov         eax,dword ptr [eax+38C];TFXPDFrame.cbRetainZoneIDs:TCheckBox
 006E7D5D    mov         edx,dword ptr [eax]
 006E7D5F    call        dword ptr [edx+108];TCheckBox.GetChecked
 006E7D65    test        al,al
>006E7D67    je          006E7DC7
 006E7D69    mov         eax,dword ptr [ebp-4]
 006E7D6C    mov         eax,dword ptr [eax+384];TFXPDFrame.speNumOfZones:TSpinEdit
 006E7D72    call        TSpinEdit.GetValue
 006E7D77    push        eax
 006E7D78    mov         eax,dword ptr [ebp-4]
 006E7D7B    mov         eax,dword ptr [eax+380];TFXPDFrame.speFirstZoneID:TSpinEdit
 006E7D81    call        TSpinEdit.GetValue
 006E7D86    mov         edx,eax
 006E7D88    mov         eax,dword ptr [ebp-4]
 006E7D8B    pop         ecx
 006E7D8C    call        006E7AE4
 006E7D91    test        al,al
>006E7D93    je          006E7DF7
 006E7D95    mov         eax,dword ptr [ebp-8]
 006E7D98    mov         edx,dword ptr ds:[6B049C];TSpinEdit
 006E7D9E    call        @AsClass
 006E7DA3    call        TSpinEdit.GetValue
 006E7DA8    mov         edx,eax
 006E7DAA    cmp         edx,0FFFF
>006E7DB0    jbe         006E7DB7
 006E7DB2    call        @BoundErr
 006E7DB7    mov         eax,dword ptr [ebp-4]
 006E7DBA    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E7DC0    call        006A2C50
>006E7DC5    jmp         006E7DF7
 006E7DC7    mov         eax,dword ptr [ebp-8]
 006E7DCA    mov         edx,dword ptr ds:[6B049C];TSpinEdit
 006E7DD0    call        @AsClass
 006E7DD5    call        TSpinEdit.GetValue
 006E7DDA    mov         edx,eax
 006E7DDC    cmp         edx,0FFFF
>006E7DE2    jbe         006E7DE9
 006E7DE4    call        @BoundErr
 006E7DE9    mov         eax,dword ptr [ebp-4]
 006E7DEC    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E7DF2    call        006A2C50
 006E7DF7    mov         eax,dword ptr [ebp-4]
 006E7DFA    call        006E792C
 006E7DFF    pop         ecx
 006E7E00    pop         ecx
 006E7E01    pop         ebp
 006E7E02    ret
*}
end;

//006E7E04
procedure TFXPDFrame.speNumOfZonesChange(Sender:TObject);
begin
{*
 006E7E04    push        ebp
 006E7E05    mov         ebp,esp
 006E7E07    add         esp,0FFFFFFF8
 006E7E0A    mov         dword ptr [ebp-8],edx
 006E7E0D    mov         dword ptr [ebp-4],eax
 006E7E10    mov         eax,dword ptr [ebp-4]
 006E7E13    mov         eax,dword ptr [eax+38C];TFXPDFrame.cbRetainZoneIDs:TCheckBox
 006E7E19    mov         edx,dword ptr [eax]
 006E7E1B    call        dword ptr [edx+108];TCheckBox.GetChecked
 006E7E21    test        al,al
>006E7E23    je          006E7E7E
 006E7E25    mov         eax,dword ptr [ebp-4]
 006E7E28    mov         eax,dword ptr [eax+384];TFXPDFrame.speNumOfZones:TSpinEdit
 006E7E2E    call        TSpinEdit.GetValue
 006E7E33    push        eax
 006E7E34    mov         eax,dword ptr [ebp-4]
 006E7E37    mov         eax,dword ptr [eax+380];TFXPDFrame.speFirstZoneID:TSpinEdit
 006E7E3D    call        TSpinEdit.GetValue
 006E7E42    mov         edx,eax
 006E7E44    mov         eax,dword ptr [ebp-4]
 006E7E47    pop         ecx
 006E7E48    call        006E7AE4
 006E7E4D    test        al,al
>006E7E4F    je          006E7EA9
 006E7E51    mov         eax,dword ptr [ebp-4]
 006E7E54    mov         eax,dword ptr [eax+384];TFXPDFrame.speNumOfZones:TSpinEdit
 006E7E5A    call        TSpinEdit.GetValue
 006E7E5F    mov         edx,eax
 006E7E61    cmp         edx,0FF
>006E7E67    jbe         006E7E6E
 006E7E69    call        @BoundErr
 006E7E6E    mov         eax,dword ptr [ebp-4]
 006E7E71    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E7E77    call        006A2D20
>006E7E7C    jmp         006E7EA9
 006E7E7E    mov         eax,dword ptr [ebp-4]
 006E7E81    mov         eax,dword ptr [eax+384];TFXPDFrame.speNumOfZones:TSpinEdit
 006E7E87    call        TSpinEdit.GetValue
 006E7E8C    mov         edx,eax
 006E7E8E    cmp         edx,0FF
>006E7E94    jbe         006E7E9B
 006E7E96    call        @BoundErr
 006E7E9B    mov         eax,dword ptr [ebp-4]
 006E7E9E    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E7EA4    call        006A2D20
 006E7EA9    mov         eax,dword ptr [ebp-4]
 006E7EAC    call        006E792C
 006E7EB1    pop         ecx
 006E7EB2    pop         ecx
 006E7EB3    pop         ebp
 006E7EB4    ret
*}
end;

//006E7EB8
procedure TFXPDFrame.cbRetainZoneIDsClick(Sender:TObject);
begin
{*
 006E7EB8    push        ebp
 006E7EB9    mov         ebp,esp
 006E7EBB    add         esp,0FFFFFFF8
 006E7EBE    mov         dword ptr [ebp-8],edx
 006E7EC1    mov         dword ptr [ebp-4],eax
 006E7EC4    mov         eax,dword ptr [ebp-4]
 006E7EC7    mov         eax,dword ptr [eax+38C];TFXPDFrame.cbRetainZoneIDs:TCheckBox
 006E7ECD    mov         edx,dword ptr [eax]
 006E7ECF    call        dword ptr [edx+108];TCheckBox.GetChecked
 006E7ED5    test        al,al
>006E7ED7    je          006E7F17
 006E7ED9    mov         eax,dword ptr [ebp-4]
 006E7EDC    mov         eax,dword ptr [eax+384];TFXPDFrame.speNumOfZones:TSpinEdit
 006E7EE2    call        TSpinEdit.GetValue
 006E7EE7    push        eax
 006E7EE8    mov         eax,dword ptr [ebp-4]
 006E7EEB    mov         eax,dword ptr [eax+380];TFXPDFrame.speFirstZoneID:TSpinEdit
 006E7EF1    call        TSpinEdit.GetValue
 006E7EF6    mov         edx,eax
 006E7EF8    mov         eax,dword ptr [ebp-4]
 006E7EFB    pop         ecx
 006E7EFC    call        006E7AE4
 006E7F01    test        al,al
>006E7F03    je          006E7F17
 006E7F05    mov         eax,dword ptr [ebp-4]
 006E7F08    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E7F0E    mov         byte ptr [eax+205],1;TFXPPD.FRetainZoneIDs:Boolean
>006E7F15    jmp         006E7F27
 006E7F17    mov         eax,dword ptr [ebp-4]
 006E7F1A    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E7F20    mov         byte ptr [eax+205],0;TFXPPD.FRetainZoneIDs:Boolean
 006E7F27    mov         eax,dword ptr [ebp-4]
 006E7F2A    call        006E792C
 006E7F2F    pop         ecx
 006E7F30    pop         ecx
 006E7F31    pop         ebp
 006E7F32    ret
*}
end;

//006E7F34
procedure TFXPDFrame.clVisiblePanelsClickCheck(Sender:TObject);
begin
{*
 006E7F34    push        ebp
 006E7F35    mov         ebp,esp
 006E7F37    add         esp,0FFFFFFF0
 006E7F3A    mov         dword ptr [ebp-8],edx
 006E7F3D    mov         dword ptr [ebp-4],eax
 006E7F40    mov         eax,dword ptr [ebp-8]
 006E7F43    mov         edx,dword ptr [eax]
 006E7F45    call        dword ptr [edx+108]
 006E7F4B    mov         dword ptr [ebp-0C],eax
 006E7F4E    mov         edx,dword ptr [ebp-0C]
 006E7F51    mov         eax,dword ptr [ebp-8]
 006E7F54    call        TCheckListBox.GetChecked
 006E7F59    test        al,al
>006E7F5B    je          006E7F99
 006E7F5D    mov         edx,dword ptr [ebp-0C]
 006E7F60    cmp         edx,0FF
>006E7F66    jbe         006E7F6D
 006E7F68    call        @BoundErr
 006E7F6D    lea         eax,[ebp-10]
 006E7F70    mov         cl,4
 006E7F72    call        @SetElem
 006E7F77    mov         edx,dword ptr [ebp-10]
 006E7F7A    mov         eax,dword ptr [ebp-4]
 006E7F7D    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E7F83    or          edx,dword ptr [eax+171]
 006E7F89    mov         eax,dword ptr [ebp-4]
 006E7F8C    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E7F92    call        006A2E40
>006E7F97    jmp         006E7FD5
 006E7F99    mov         edx,dword ptr [ebp-0C]
 006E7F9C    cmp         edx,0FF
>006E7FA2    jbe         006E7FA9
 006E7FA4    call        @BoundErr
 006E7FA9    lea         eax,[ebp-10]
 006E7FAC    mov         cl,4
 006E7FAE    call        @SetElem
 006E7FB3    mov         edx,dword ptr [ebp-10]
 006E7FB6    mov         eax,dword ptr [ebp-4]
 006E7FB9    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E7FBF    not         edx
 006E7FC1    and         edx,dword ptr [eax+171]
 006E7FC7    mov         eax,dword ptr [ebp-4]
 006E7FCA    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E7FD0    call        006A2E40
 006E7FD5    mov         esp,ebp
 006E7FD7    pop         ebp
 006E7FD8    ret
*}
end;

//006E7FDC
{*function sub_006E7FDC(?:TComboBox; ?:Byte):?;
begin
 006E7FDC    push        ebp
 006E7FDD    mov         ebp,esp
 006E7FDF    add         esp,0FFFFFFEC
 006E7FE2    mov         dword ptr [ebp-8],edx
 006E7FE5    mov         dword ptr [ebp-4],eax
 006E7FE8    mov         dword ptr [ebp-0C],0FFFFFFFF
 006E7FEF    mov         eax,dword ptr [ebp-4]
 006E7FF2    mov         eax,dword ptr [eax+2CC]
 006E7FF8    mov         edx,dword ptr [eax]
 006E7FFA    call        dword ptr [edx+14]
 006E7FFD    sub         eax,1
>006E8000    jno         006E8007
 006E8002    call        @IntOver
 006E8007    test        eax,eax
>006E8009    jl          006E803C
 006E800B    inc         eax
 006E800C    mov         dword ptr [ebp-14],eax
 006E800F    mov         dword ptr [ebp-10],0
 006E8016    mov         eax,dword ptr [ebp-4]
 006E8019    mov         eax,dword ptr [eax+2CC]
 006E801F    mov         edx,dword ptr [ebp-10]
 006E8022    mov         ecx,dword ptr [eax]
 006E8024    call        dword ptr [ecx+18]
 006E8027    cmp         eax,dword ptr [ebp-8]
>006E802A    jne         006E8034
 006E802C    mov         eax,dword ptr [ebp-10]
 006E802F    mov         dword ptr [ebp-0C],eax
>006E8032    jmp         006E803C
 006E8034    inc         dword ptr [ebp-10]
 006E8037    dec         dword ptr [ebp-14]
>006E803A    jne         006E8016
 006E803C    mov         eax,dword ptr [ebp-0C]
 006E803F    mov         esp,ebp
 006E8041    pop         ebp
 006E8042    ret
end;*}

//006E8044
procedure sub_006E8044(?:TFXPDFrame);
begin
{*
 006E8044    push        ebp
 006E8045    mov         ebp,esp
 006E8047    mov         ecx,0F
 006E804C    push        0
 006E804E    push        0
 006E8050    dec         ecx
>006E8051    jne         006E804C
 006E8053    mov         dword ptr [ebp-4],eax
 006E8056    xor         eax,eax
 006E8058    push        ebp
 006E8059    push        6E8DFF
 006E805E    push        dword ptr fs:[eax]
 006E8061    mov         dword ptr fs:[eax],esp
 006E8064    push        ebp
 006E8065    mov         dl,1
 006E8067    mov         eax,dword ptr [ebp-4]
 006E806A    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8070    call        TFXPPD.GetLCType
 006E8075    xor         edx,edx
 006E8077    mov         dl,al
 006E8079    mov         eax,dword ptr [ebp-4]
 006E807C    mov         eax,dword ptr [eax+3C4];TFXPDFrame.cbLC1Type:TComboBox
 006E8082    call        006E7FDC
 006E8087    pop         ecx
 006E8088    mov         edx,eax
 006E808A    mov         eax,dword ptr [ebp-4]
 006E808D    mov         eax,dword ptr [eax+3C4];TFXPDFrame.cbLC1Type:TComboBox
 006E8093    mov         ecx,dword ptr [eax]
 006E8095    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 006E809B    mov         eax,dword ptr [ebp-4]
 006E809E    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E80A4    cmp         byte ptr [eax+180],7
>006E80AB    je          006E80D3
 006E80AD    mov         eax,dword ptr [ebp-4]
 006E80B0    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E80B6    cmp         byte ptr [eax+180],8
>006E80BD    je          006E80D3
 006E80BF    mov         dl,1
 006E80C1    mov         eax,dword ptr [ebp-4]
 006E80C4    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E80CA    call        TFXPPD.GetLCType
 006E80CF    test        al,al
>006E80D1    jne         006E80D7
 006E80D3    xor         edx,edx
>006E80D5    jmp         006E80D9
 006E80D7    mov         dl,1
 006E80D9    mov         eax,dword ptr [ebp-4]
 006E80DC    mov         eax,dword ptr [eax+3C8];TFXPDFrame.speLC1FirstLoop:TSpinEdit
 006E80E2    mov         ecx,dword ptr [eax]
 006E80E4    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E80EA    mov         dl,1
 006E80EC    mov         eax,dword ptr [ebp-4]
 006E80EF    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E80F5    call        TFXPPD.GetLCFirstLoop
 006E80FA    xor         edx,edx
 006E80FC    mov         dl,al
 006E80FE    mov         eax,dword ptr [ebp-4]
 006E8101    mov         eax,dword ptr [eax+3C8];TFXPDFrame.speLC1FirstLoop:TSpinEdit
 006E8107    call        TSpinEdit.SetValue
 006E810C    mov         dl,1
 006E810E    mov         eax,dword ptr [ebp-4]
 006E8111    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8117    call        TFXPPD.GetLCNumOfLoops
 006E811C    and         eax,0FF
 006E8121    lea         edx,[ebp-8]
 006E8124    call        IntToStr
 006E8129    mov         edx,dword ptr [ebp-8]
 006E812C    mov         eax,dword ptr [ebp-4]
 006E812F    mov         eax,dword ptr [eax+3CC];TFXPDFrame.edLC1NumOfLoops:TEdit
 006E8135    call        TControl.SetText
 006E813A    mov         dl,1
 006E813C    mov         eax,dword ptr [ebp-4]
 006E813F    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8145    call        TFXPPD.GetLCLastLoop
 006E814A    and         eax,0FF
 006E814F    lea         edx,[ebp-0C]
 006E8152    call        IntToStr
 006E8157    mov         edx,dword ptr [ebp-0C]
 006E815A    mov         eax,dword ptr [ebp-4]
 006E815D    mov         eax,dword ptr [eax+3D0];TFXPDFrame.edLC1LastLoop:TEdit
 006E8163    call        TControl.SetText
 006E8168    mov         ecx,1
 006E816D    mov         edx,1
 006E8172    mov         eax,dword ptr [ebp-4]
 006E8175    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E817B    call        TFXPPD.GetAlcStartupDelay
 006E8180    xor         edx,edx
 006E8182    mov         dl,al
 006E8184    mov         eax,dword ptr [ebp-4]
 006E8187    mov         eax,dword ptr [eax+3D4];TFXPDFrame.speLC1StartDelay1:TSpinEdit
 006E818D    call        TSpinEdit.SetValue
 006E8192    mov         ecx,2
 006E8197    mov         edx,1
 006E819C    mov         eax,dword ptr [ebp-4]
 006E819F    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E81A5    call        TFXPPD.GetAlcStartupDelay
 006E81AA    xor         edx,edx
 006E81AC    mov         dl,al
 006E81AE    mov         eax,dword ptr [ebp-4]
 006E81B1    mov         eax,dword ptr [eax+3D8];TFXPDFrame.speLC1StartDelay2:TSpinEdit
 006E81B7    call        TSpinEdit.SetValue
 006E81BC    mov         ecx,1
 006E81C1    mov         edx,1
 006E81C6    mov         eax,dword ptr [ebp-4]
 006E81C9    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E81CF    call        TFXPPD.GetAlcStartupDelayAllowed
 006E81D4    mov         edx,eax
 006E81D6    mov         eax,dword ptr [ebp-4]
 006E81D9    mov         eax,dword ptr [eax+3D4];TFXPDFrame.speLC1StartDelay1:TSpinEdit
 006E81DF    mov         ecx,dword ptr [eax]
 006E81E1    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E81E7    mov         ecx,2
 006E81EC    mov         edx,1
 006E81F1    mov         eax,dword ptr [ebp-4]
 006E81F4    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E81FA    call        TFXPPD.GetAlcStartupDelayAllowed
 006E81FF    mov         edx,eax
 006E8201    mov         eax,dword ptr [ebp-4]
 006E8204    mov         eax,dword ptr [eax+3D8];TFXPDFrame.speLC1StartDelay2:TSpinEdit
 006E820A    mov         ecx,dword ptr [eax]
 006E820C    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E8212    mov         eax,dword ptr [ebp-4]
 006E8215    mov         eax,dword ptr [eax+3D4];TFXPDFrame.speLC1StartDelay1:TSpinEdit
 006E821B    mov         edx,dword ptr [eax]
 006E821D    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 006E8220    test        al,al
>006E8222    jne         006E8244
 006E8224    mov         ecx,1
 006E8229    mov         edx,1
 006E822E    mov         eax,dword ptr [ebp-4]
 006E8231    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8237    call        TFXPPD.GetAlcStartupDelay
 006E823C    test        al,al
>006E823E    jne         006E8244
 006E8240    xor         edx,edx
>006E8242    jmp         006E8246
 006E8244    mov         dl,1
 006E8246    mov         eax,dword ptr [ebp-4]
 006E8249    mov         eax,dword ptr [eax+3D4];TFXPDFrame.speLC1StartDelay1:TSpinEdit
 006E824F    call        TControl.SetVisible
 006E8254    mov         eax,dword ptr [ebp-4]
 006E8257    mov         eax,dword ptr [eax+3D8];TFXPDFrame.speLC1StartDelay2:TSpinEdit
 006E825D    mov         edx,dword ptr [eax]
 006E825F    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 006E8262    test        al,al
>006E8264    jne         006E8286
 006E8266    mov         ecx,2
 006E826B    mov         edx,1
 006E8270    mov         eax,dword ptr [ebp-4]
 006E8273    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8279    call        TFXPPD.GetAlcStartupDelay
 006E827E    test        al,al
>006E8280    jne         006E8286
 006E8282    xor         edx,edx
>006E8284    jmp         006E8288
 006E8286    mov         dl,1
 006E8288    mov         eax,dword ptr [ebp-4]
 006E828B    mov         eax,dword ptr [eax+3D8];TFXPDFrame.speLC1StartDelay2:TSpinEdit
 006E8291    call        TControl.SetVisible
 006E8296    lea         eax,[ebp-10]
 006E8299    push        eax
 006E829A    lea         edx,[ebp-1C]
 006E829D    mov         eax,dword ptr [ebp-4]
 006E82A0    mov         eax,dword ptr [eax+3C8];TFXPDFrame.speLC1FirstLoop:TSpinEdit
 006E82A6    call        TControl.GetText
 006E82AB    mov         eax,dword ptr [ebp-1C]
 006E82AE    mov         dword ptr [ebp-18],eax
 006E82B1    mov         byte ptr [ebp-14],11
 006E82B5    lea         edx,[ebp-18]
 006E82B8    mov         eax,[007C42C0];^gvar_007C2CE4
 006E82BD    mov         eax,dword ptr [eax]
 006E82BF    xor         ecx,ecx
 006E82C1    call        Format
 006E82C6    mov         edx,dword ptr [ebp-10]
 006E82C9    mov         eax,dword ptr [ebp-4]
 006E82CC    mov         eax,dword ptr [eax+3BC];TFXPDFrame.lbLC1StartDelay1:TLabel
 006E82D2    call        TControl.SetText
 006E82D7    lea         eax,[ebp-20]
 006E82DA    push        eax
 006E82DB    lea         edx,[ebp-24]
 006E82DE    mov         eax,dword ptr [ebp-4]
 006E82E1    mov         eax,dword ptr [eax+3D0];TFXPDFrame.edLC1LastLoop:TEdit
 006E82E7    call        TControl.GetText
 006E82EC    mov         eax,dword ptr [ebp-24]
 006E82EF    mov         dword ptr [ebp-18],eax
 006E82F2    mov         byte ptr [ebp-14],11
 006E82F6    lea         edx,[ebp-18]
 006E82F9    mov         eax,[007C42C0];^gvar_007C2CE4
 006E82FE    mov         eax,dword ptr [eax]
 006E8300    xor         ecx,ecx
 006E8302    call        Format
 006E8307    mov         edx,dword ptr [ebp-20]
 006E830A    mov         eax,dword ptr [ebp-4]
 006E830D    mov         eax,dword ptr [eax+3C0];TFXPDFrame.lbLC1StartDelay2:TLabel
 006E8313    call        TControl.SetText
 006E8318    mov         eax,dword ptr [ebp-4]
 006E831B    mov         eax,dword ptr [eax+3D4];TFXPDFrame.speLC1StartDelay1:TSpinEdit
 006E8321    mov         edx,dword ptr [eax]
 006E8323    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 006E8326    mov         edx,eax
 006E8328    mov         eax,dword ptr [ebp-4]
 006E832B    mov         eax,dword ptr [eax+3BC];TFXPDFrame.lbLC1StartDelay1:TLabel
 006E8331    mov         ecx,dword ptr [eax]
 006E8333    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E8339    mov         eax,dword ptr [ebp-4]
 006E833C    mov         eax,dword ptr [eax+3D8];TFXPDFrame.speLC1StartDelay2:TSpinEdit
 006E8342    mov         edx,dword ptr [eax]
 006E8344    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 006E8347    mov         edx,eax
 006E8349    mov         eax,dword ptr [ebp-4]
 006E834C    mov         eax,dword ptr [eax+3C0];TFXPDFrame.lbLC1StartDelay2:TLabel
 006E8352    mov         ecx,dword ptr [eax]
 006E8354    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E835A    mov         eax,dword ptr [ebp-4]
 006E835D    mov         eax,dword ptr [eax+3D4];TFXPDFrame.speLC1StartDelay1:TSpinEdit
 006E8363    mov         dl,byte ptr [eax+69];TSpinEdit.FVisible:Boolean
 006E8366    mov         eax,dword ptr [ebp-4]
 006E8369    mov         eax,dword ptr [eax+3BC];TFXPDFrame.lbLC1StartDelay1:TLabel
 006E836F    call        TControl.SetVisible
 006E8374    mov         eax,dword ptr [ebp-4]
 006E8377    mov         eax,dword ptr [eax+3D8];TFXPDFrame.speLC1StartDelay2:TSpinEdit
 006E837D    mov         dl,byte ptr [eax+69];TSpinEdit.FVisible:Boolean
 006E8380    mov         eax,dword ptr [ebp-4]
 006E8383    mov         eax,dword ptr [eax+3C0];TFXPDFrame.lbLC1StartDelay2:TLabel
 006E8389    call        TControl.SetVisible
 006E838E    mov         eax,dword ptr [ebp-4]
 006E8391    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8397    cmp         byte ptr [eax+180],7
>006E839E    je          006E83B2
 006E83A0    mov         eax,dword ptr [ebp-4]
 006E83A3    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E83A9    cmp         byte ptr [eax+180],8
>006E83B0    jne         006E83B6
 006E83B2    xor         edx,edx
>006E83B4    jmp         006E83B8
 006E83B6    mov         dl,1
 006E83B8    mov         eax,dword ptr [ebp-4]
 006E83BB    mov         eax,dword ptr [eax+3DC];TFXPDFrame.gbLC2:TGroupBox
 006E83C1    call        TControl.SetVisible
 006E83C6    push        ebp
 006E83C7    mov         dl,2
 006E83C9    mov         eax,dword ptr [ebp-4]
 006E83CC    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E83D2    call        TFXPPD.GetLCType
 006E83D7    xor         edx,edx
 006E83D9    mov         dl,al
 006E83DB    mov         eax,dword ptr [ebp-4]
 006E83DE    mov         eax,dword ptr [eax+3F8];TFXPDFrame.cbLC2Type:TComboBox
 006E83E4    call        006E7FDC
 006E83E9    pop         ecx
 006E83EA    mov         edx,eax
 006E83EC    mov         eax,dword ptr [ebp-4]
 006E83EF    mov         eax,dword ptr [eax+3F8];TFXPDFrame.cbLC2Type:TComboBox
 006E83F5    mov         ecx,dword ptr [eax]
 006E83F7    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 006E83FD    mov         dl,2
 006E83FF    mov         eax,dword ptr [ebp-4]
 006E8402    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8408    call        TFXPPD.GetLCFirstLoop
 006E840D    and         eax,0FF
 006E8412    lea         edx,[ebp-28]
 006E8415    call        IntToStr
 006E841A    mov         edx,dword ptr [ebp-28]
 006E841D    mov         eax,dword ptr [ebp-4]
 006E8420    mov         eax,dword ptr [eax+3FC];TFXPDFrame.edLC2FirstLoop:TEdit
 006E8426    call        TControl.SetText
 006E842B    mov         dl,2
 006E842D    mov         eax,dword ptr [ebp-4]
 006E8430    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8436    call        TFXPPD.GetLCNumOfLoops
 006E843B    and         eax,0FF
 006E8440    lea         edx,[ebp-2C]
 006E8443    call        IntToStr
 006E8448    mov         edx,dword ptr [ebp-2C]
 006E844B    mov         eax,dword ptr [ebp-4]
 006E844E    mov         eax,dword ptr [eax+400];TFXPDFrame.edLC2NumOfLoops:TEdit
 006E8454    call        TControl.SetText
 006E8459    mov         dl,2
 006E845B    mov         eax,dword ptr [ebp-4]
 006E845E    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8464    call        TFXPPD.GetLCLastLoop
 006E8469    and         eax,0FF
 006E846E    lea         edx,[ebp-30]
 006E8471    call        IntToStr
 006E8476    mov         edx,dword ptr [ebp-30]
 006E8479    mov         eax,dword ptr [ebp-4]
 006E847C    mov         eax,dword ptr [eax+404];TFXPDFrame.edLC2LastLoop:TEdit
 006E8482    call        TControl.SetText
 006E8487    mov         ecx,1
 006E848C    mov         edx,2
 006E8491    mov         eax,dword ptr [ebp-4]
 006E8494    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E849A    call        TFXPPD.GetAlcStartupDelay
 006E849F    xor         edx,edx
 006E84A1    mov         dl,al
 006E84A3    mov         eax,dword ptr [ebp-4]
 006E84A6    mov         eax,dword ptr [eax+408];TFXPDFrame.speLC2StartDelay1:TSpinEdit
 006E84AC    call        TSpinEdit.SetValue
 006E84B1    mov         ecx,2
 006E84B6    mov         edx,2
 006E84BB    mov         eax,dword ptr [ebp-4]
 006E84BE    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E84C4    call        TFXPPD.GetAlcStartupDelay
 006E84C9    xor         edx,edx
 006E84CB    mov         dl,al
 006E84CD    mov         eax,dword ptr [ebp-4]
 006E84D0    mov         eax,dword ptr [eax+40C];TFXPDFrame.speLC2StartDelay2:TSpinEdit
 006E84D6    call        TSpinEdit.SetValue
 006E84DB    mov         ecx,1
 006E84E0    mov         edx,2
 006E84E5    mov         eax,dword ptr [ebp-4]
 006E84E8    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E84EE    call        TFXPPD.GetAlcStartupDelayAllowed
 006E84F3    mov         edx,eax
 006E84F5    mov         eax,dword ptr [ebp-4]
 006E84F8    mov         eax,dword ptr [eax+408];TFXPDFrame.speLC2StartDelay1:TSpinEdit
 006E84FE    mov         ecx,dword ptr [eax]
 006E8500    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E8506    mov         ecx,2
 006E850B    mov         edx,2
 006E8510    mov         eax,dword ptr [ebp-4]
 006E8513    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8519    call        TFXPPD.GetAlcStartupDelayAllowed
 006E851E    mov         edx,eax
 006E8520    mov         eax,dword ptr [ebp-4]
 006E8523    mov         eax,dword ptr [eax+40C];TFXPDFrame.speLC2StartDelay2:TSpinEdit
 006E8529    mov         ecx,dword ptr [eax]
 006E852B    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E8531    mov         eax,dword ptr [ebp-4]
 006E8534    mov         eax,dword ptr [eax+408];TFXPDFrame.speLC2StartDelay1:TSpinEdit
 006E853A    mov         edx,dword ptr [eax]
 006E853C    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 006E853F    test        al,al
>006E8541    jne         006E8563
 006E8543    mov         ecx,1
 006E8548    mov         edx,2
 006E854D    mov         eax,dword ptr [ebp-4]
 006E8550    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8556    call        TFXPPD.GetAlcStartupDelay
 006E855B    test        al,al
>006E855D    jne         006E8563
 006E855F    xor         edx,edx
>006E8561    jmp         006E8565
 006E8563    mov         dl,1
 006E8565    mov         eax,dword ptr [ebp-4]
 006E8568    mov         eax,dword ptr [eax+408];TFXPDFrame.speLC2StartDelay1:TSpinEdit
 006E856E    call        TControl.SetVisible
 006E8573    mov         eax,dword ptr [ebp-4]
 006E8576    mov         eax,dword ptr [eax+40C];TFXPDFrame.speLC2StartDelay2:TSpinEdit
 006E857C    mov         edx,dword ptr [eax]
 006E857E    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 006E8581    test        al,al
>006E8583    jne         006E85A5
 006E8585    mov         ecx,2
 006E858A    mov         edx,2
 006E858F    mov         eax,dword ptr [ebp-4]
 006E8592    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8598    call        TFXPPD.GetAlcStartupDelay
 006E859D    test        al,al
>006E859F    jne         006E85A5
 006E85A1    xor         edx,edx
>006E85A3    jmp         006E85A7
 006E85A5    mov         dl,1
 006E85A7    mov         eax,dword ptr [ebp-4]
 006E85AA    mov         eax,dword ptr [eax+40C];TFXPDFrame.speLC2StartDelay2:TSpinEdit
 006E85B0    call        TControl.SetVisible
 006E85B5    lea         eax,[ebp-34]
 006E85B8    push        eax
 006E85B9    lea         edx,[ebp-38]
 006E85BC    mov         eax,dword ptr [ebp-4]
 006E85BF    mov         eax,dword ptr [eax+3FC];TFXPDFrame.edLC2FirstLoop:TEdit
 006E85C5    call        TControl.GetText
 006E85CA    mov         eax,dword ptr [ebp-38]
 006E85CD    mov         dword ptr [ebp-18],eax
 006E85D0    mov         byte ptr [ebp-14],11
 006E85D4    lea         edx,[ebp-18]
 006E85D7    mov         eax,[007C42C0];^gvar_007C2CE4
 006E85DC    mov         eax,dword ptr [eax]
 006E85DE    xor         ecx,ecx
 006E85E0    call        Format
 006E85E5    mov         edx,dword ptr [ebp-34]
 006E85E8    mov         eax,dword ptr [ebp-4]
 006E85EB    mov         eax,dword ptr [eax+3F0];TFXPDFrame.lbLC2StartDelay1:TLabel
 006E85F1    call        TControl.SetText
 006E85F6    lea         eax,[ebp-3C]
 006E85F9    push        eax
 006E85FA    lea         edx,[ebp-40]
 006E85FD    mov         eax,dword ptr [ebp-4]
 006E8600    mov         eax,dword ptr [eax+404];TFXPDFrame.edLC2LastLoop:TEdit
 006E8606    call        TControl.GetText
 006E860B    mov         eax,dword ptr [ebp-40]
 006E860E    mov         dword ptr [ebp-18],eax
 006E8611    mov         byte ptr [ebp-14],11
 006E8615    lea         edx,[ebp-18]
 006E8618    mov         eax,[007C42C0];^gvar_007C2CE4
 006E861D    mov         eax,dword ptr [eax]
 006E861F    xor         ecx,ecx
 006E8621    call        Format
 006E8626    mov         edx,dword ptr [ebp-3C]
 006E8629    mov         eax,dword ptr [ebp-4]
 006E862C    mov         eax,dword ptr [eax+3F4];TFXPDFrame.lbLC2StartDelay2:TLabel
 006E8632    call        TControl.SetText
 006E8637    mov         eax,dword ptr [ebp-4]
 006E863A    mov         eax,dword ptr [eax+408];TFXPDFrame.speLC2StartDelay1:TSpinEdit
 006E8640    mov         edx,dword ptr [eax]
 006E8642    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 006E8645    mov         edx,eax
 006E8647    mov         eax,dword ptr [ebp-4]
 006E864A    mov         eax,dword ptr [eax+3F0];TFXPDFrame.lbLC2StartDelay1:TLabel
 006E8650    mov         ecx,dword ptr [eax]
 006E8652    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E8658    mov         eax,dword ptr [ebp-4]
 006E865B    mov         eax,dword ptr [eax+40C];TFXPDFrame.speLC2StartDelay2:TSpinEdit
 006E8661    mov         edx,dword ptr [eax]
 006E8663    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 006E8666    mov         edx,eax
 006E8668    mov         eax,dword ptr [ebp-4]
 006E866B    mov         eax,dword ptr [eax+3F4];TFXPDFrame.lbLC2StartDelay2:TLabel
 006E8671    mov         ecx,dword ptr [eax]
 006E8673    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E8679    mov         eax,dword ptr [ebp-4]
 006E867C    mov         eax,dword ptr [eax+408];TFXPDFrame.speLC2StartDelay1:TSpinEdit
 006E8682    mov         dl,byte ptr [eax+69];TSpinEdit.FVisible:Boolean
 006E8685    mov         eax,dword ptr [ebp-4]
 006E8688    mov         eax,dword ptr [eax+3F0];TFXPDFrame.lbLC2StartDelay1:TLabel
 006E868E    call        TControl.SetVisible
 006E8693    mov         eax,dword ptr [ebp-4]
 006E8696    mov         eax,dword ptr [eax+40C];TFXPDFrame.speLC2StartDelay2:TSpinEdit
 006E869C    mov         dl,byte ptr [eax+69];TSpinEdit.FVisible:Boolean
 006E869F    mov         eax,dword ptr [ebp-4]
 006E86A2    mov         eax,dword ptr [eax+3F4];TFXPDFrame.lbLC2StartDelay2:TLabel
 006E86A8    call        TControl.SetVisible
 006E86AD    mov         eax,dword ptr [ebp-4]
 006E86B0    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E86B6    cmp         byte ptr [eax+180],7
>006E86BD    je          006E86D1
 006E86BF    mov         eax,dword ptr [ebp-4]
 006E86C2    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E86C8    cmp         byte ptr [eax+180],8
>006E86CF    jne         006E86D5
 006E86D1    xor         edx,edx
>006E86D3    jmp         006E86D7
 006E86D5    mov         dl,1
 006E86D7    mov         eax,dword ptr [ebp-4]
 006E86DA    mov         eax,dword ptr [eax+410];TFXPDFrame.gbLC3:TGroupBox
 006E86E0    call        TControl.SetVisible
 006E86E5    push        ebp
 006E86E6    mov         dl,3
 006E86E8    mov         eax,dword ptr [ebp-4]
 006E86EB    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E86F1    call        TFXPPD.GetLCType
 006E86F6    xor         edx,edx
 006E86F8    mov         dl,al
 006E86FA    mov         eax,dword ptr [ebp-4]
 006E86FD    mov         eax,dword ptr [eax+42C];TFXPDFrame.cbLC3Type:TComboBox
 006E8703    call        006E7FDC
 006E8708    pop         ecx
 006E8709    mov         edx,eax
 006E870B    mov         eax,dword ptr [ebp-4]
 006E870E    mov         eax,dword ptr [eax+42C];TFXPDFrame.cbLC3Type:TComboBox
 006E8714    mov         ecx,dword ptr [eax]
 006E8716    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 006E871C    mov         dl,3
 006E871E    mov         eax,dword ptr [ebp-4]
 006E8721    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8727    call        TFXPPD.GetLCFirstLoop
 006E872C    and         eax,0FF
 006E8731    lea         edx,[ebp-44]
 006E8734    call        IntToStr
 006E8739    mov         edx,dword ptr [ebp-44]
 006E873C    mov         eax,dword ptr [ebp-4]
 006E873F    mov         eax,dword ptr [eax+430];TFXPDFrame.edLC3FirstLoop:TEdit
 006E8745    call        TControl.SetText
 006E874A    mov         dl,3
 006E874C    mov         eax,dword ptr [ebp-4]
 006E874F    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8755    call        TFXPPD.GetLCNumOfLoops
 006E875A    and         eax,0FF
 006E875F    lea         edx,[ebp-48]
 006E8762    call        IntToStr
 006E8767    mov         edx,dword ptr [ebp-48]
 006E876A    mov         eax,dword ptr [ebp-4]
 006E876D    mov         eax,dword ptr [eax+434];TFXPDFrame.edLC3NumOfLoops:TEdit
 006E8773    call        TControl.SetText
 006E8778    mov         dl,3
 006E877A    mov         eax,dword ptr [ebp-4]
 006E877D    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8783    call        TFXPPD.GetLCLastLoop
 006E8788    and         eax,0FF
 006E878D    lea         edx,[ebp-4C]
 006E8790    call        IntToStr
 006E8795    mov         edx,dword ptr [ebp-4C]
 006E8798    mov         eax,dword ptr [ebp-4]
 006E879B    mov         eax,dword ptr [eax+438];TFXPDFrame.edLC3LastLoop:TEdit
 006E87A1    call        TControl.SetText
 006E87A6    mov         ecx,1
 006E87AB    mov         edx,3
 006E87B0    mov         eax,dword ptr [ebp-4]
 006E87B3    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E87B9    call        TFXPPD.GetAlcStartupDelay
 006E87BE    xor         edx,edx
 006E87C0    mov         dl,al
 006E87C2    mov         eax,dword ptr [ebp-4]
 006E87C5    mov         eax,dword ptr [eax+43C];TFXPDFrame.speLC3StartDelay1:TSpinEdit
 006E87CB    call        TSpinEdit.SetValue
 006E87D0    mov         ecx,2
 006E87D5    mov         edx,3
 006E87DA    mov         eax,dword ptr [ebp-4]
 006E87DD    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E87E3    call        TFXPPD.GetAlcStartupDelay
 006E87E8    xor         edx,edx
 006E87EA    mov         dl,al
 006E87EC    mov         eax,dword ptr [ebp-4]
 006E87EF    mov         eax,dword ptr [eax+440];TFXPDFrame.speLC3StartDelay2:TSpinEdit
 006E87F5    call        TSpinEdit.SetValue
 006E87FA    mov         ecx,1
 006E87FF    mov         edx,3
 006E8804    mov         eax,dword ptr [ebp-4]
 006E8807    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E880D    call        TFXPPD.GetAlcStartupDelayAllowed
 006E8812    mov         edx,eax
 006E8814    mov         eax,dword ptr [ebp-4]
 006E8817    mov         eax,dword ptr [eax+43C];TFXPDFrame.speLC3StartDelay1:TSpinEdit
 006E881D    mov         ecx,dword ptr [eax]
 006E881F    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E8825    mov         ecx,2
 006E882A    mov         edx,3
 006E882F    mov         eax,dword ptr [ebp-4]
 006E8832    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8838    call        TFXPPD.GetAlcStartupDelayAllowed
 006E883D    mov         edx,eax
 006E883F    mov         eax,dword ptr [ebp-4]
 006E8842    mov         eax,dword ptr [eax+440];TFXPDFrame.speLC3StartDelay2:TSpinEdit
 006E8848    mov         ecx,dword ptr [eax]
 006E884A    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E8850    mov         eax,dword ptr [ebp-4]
 006E8853    mov         eax,dword ptr [eax+43C];TFXPDFrame.speLC3StartDelay1:TSpinEdit
 006E8859    mov         edx,dword ptr [eax]
 006E885B    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 006E885E    test        al,al
>006E8860    jne         006E8882
 006E8862    mov         ecx,1
 006E8867    mov         edx,3
 006E886C    mov         eax,dword ptr [ebp-4]
 006E886F    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8875    call        TFXPPD.GetAlcStartupDelay
 006E887A    test        al,al
>006E887C    jne         006E8882
 006E887E    xor         edx,edx
>006E8880    jmp         006E8884
 006E8882    mov         dl,1
 006E8884    mov         eax,dword ptr [ebp-4]
 006E8887    mov         eax,dword ptr [eax+43C];TFXPDFrame.speLC3StartDelay1:TSpinEdit
 006E888D    call        TControl.SetVisible
 006E8892    mov         eax,dword ptr [ebp-4]
 006E8895    mov         eax,dword ptr [eax+440];TFXPDFrame.speLC3StartDelay2:TSpinEdit
 006E889B    mov         edx,dword ptr [eax]
 006E889D    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 006E88A0    test        al,al
>006E88A2    jne         006E88C4
 006E88A4    mov         ecx,2
 006E88A9    mov         edx,3
 006E88AE    mov         eax,dword ptr [ebp-4]
 006E88B1    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E88B7    call        TFXPPD.GetAlcStartupDelay
 006E88BC    test        al,al
>006E88BE    jne         006E88C4
 006E88C0    xor         edx,edx
>006E88C2    jmp         006E88C6
 006E88C4    mov         dl,1
 006E88C6    mov         eax,dword ptr [ebp-4]
 006E88C9    mov         eax,dword ptr [eax+440];TFXPDFrame.speLC3StartDelay2:TSpinEdit
 006E88CF    call        TControl.SetVisible
 006E88D4    lea         eax,[ebp-50]
 006E88D7    push        eax
 006E88D8    lea         edx,[ebp-54]
 006E88DB    mov         eax,dword ptr [ebp-4]
 006E88DE    mov         eax,dword ptr [eax+430];TFXPDFrame.edLC3FirstLoop:TEdit
 006E88E4    call        TControl.GetText
 006E88E9    mov         eax,dword ptr [ebp-54]
 006E88EC    mov         dword ptr [ebp-18],eax
 006E88EF    mov         byte ptr [ebp-14],11
 006E88F3    lea         edx,[ebp-18]
 006E88F6    mov         eax,[007C42C0];^gvar_007C2CE4
 006E88FB    mov         eax,dword ptr [eax]
 006E88FD    xor         ecx,ecx
 006E88FF    call        Format
 006E8904    mov         edx,dword ptr [ebp-50]
 006E8907    mov         eax,dword ptr [ebp-4]
 006E890A    mov         eax,dword ptr [eax+424];TFXPDFrame.lbLC3StartDelay1:TLabel
 006E8910    call        TControl.SetText
 006E8915    lea         eax,[ebp-58]
 006E8918    push        eax
 006E8919    lea         edx,[ebp-5C]
 006E891C    mov         eax,dword ptr [ebp-4]
 006E891F    mov         eax,dword ptr [eax+438];TFXPDFrame.edLC3LastLoop:TEdit
 006E8925    call        TControl.GetText
 006E892A    mov         eax,dword ptr [ebp-5C]
 006E892D    mov         dword ptr [ebp-18],eax
 006E8930    mov         byte ptr [ebp-14],11
 006E8934    lea         edx,[ebp-18]
 006E8937    mov         eax,[007C42C0];^gvar_007C2CE4
 006E893C    mov         eax,dword ptr [eax]
 006E893E    xor         ecx,ecx
 006E8940    call        Format
 006E8945    mov         edx,dword ptr [ebp-58]
 006E8948    mov         eax,dword ptr [ebp-4]
 006E894B    mov         eax,dword ptr [eax+428];TFXPDFrame.lbLC3StartDelay2:TLabel
 006E8951    call        TControl.SetText
 006E8956    mov         eax,dword ptr [ebp-4]
 006E8959    mov         eax,dword ptr [eax+43C];TFXPDFrame.speLC3StartDelay1:TSpinEdit
 006E895F    mov         edx,dword ptr [eax]
 006E8961    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 006E8964    mov         edx,eax
 006E8966    mov         eax,dword ptr [ebp-4]
 006E8969    mov         eax,dword ptr [eax+424];TFXPDFrame.lbLC3StartDelay1:TLabel
 006E896F    mov         ecx,dword ptr [eax]
 006E8971    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E8977    mov         eax,dword ptr [ebp-4]
 006E897A    mov         eax,dword ptr [eax+440];TFXPDFrame.speLC3StartDelay2:TSpinEdit
 006E8980    mov         edx,dword ptr [eax]
 006E8982    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 006E8985    mov         edx,eax
 006E8987    mov         eax,dword ptr [ebp-4]
 006E898A    mov         eax,dword ptr [eax+428];TFXPDFrame.lbLC3StartDelay2:TLabel
 006E8990    mov         ecx,dword ptr [eax]
 006E8992    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E8998    mov         eax,dword ptr [ebp-4]
 006E899B    mov         eax,dword ptr [eax+43C];TFXPDFrame.speLC3StartDelay1:TSpinEdit
 006E89A1    mov         dl,byte ptr [eax+69];TSpinEdit.FVisible:Boolean
 006E89A4    mov         eax,dword ptr [ebp-4]
 006E89A7    mov         eax,dword ptr [eax+424];TFXPDFrame.lbLC3StartDelay1:TLabel
 006E89AD    call        TControl.SetVisible
 006E89B2    mov         eax,dword ptr [ebp-4]
 006E89B5    mov         eax,dword ptr [eax+440];TFXPDFrame.speLC3StartDelay2:TSpinEdit
 006E89BB    mov         dl,byte ptr [eax+69];TSpinEdit.FVisible:Boolean
 006E89BE    mov         eax,dword ptr [ebp-4]
 006E89C1    mov         eax,dword ptr [eax+428];TFXPDFrame.lbLC3StartDelay2:TLabel
 006E89C7    call        TControl.SetVisible
 006E89CC    mov         eax,dword ptr [ebp-4]
 006E89CF    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E89D5    cmp         byte ptr [eax+180],7
>006E89DC    je          006E89F0
 006E89DE    mov         eax,dword ptr [ebp-4]
 006E89E1    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E89E7    cmp         byte ptr [eax+180],8
>006E89EE    jne         006E89F4
 006E89F0    xor         edx,edx
>006E89F2    jmp         006E89F6
 006E89F4    mov         dl,1
 006E89F6    mov         eax,dword ptr [ebp-4]
 006E89F9    mov         eax,dword ptr [eax+444];TFXPDFrame.gbLC4:TGroupBox
 006E89FF    call        TControl.SetVisible
 006E8A04    push        ebp
 006E8A05    mov         dl,4
 006E8A07    mov         eax,dword ptr [ebp-4]
 006E8A0A    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8A10    call        TFXPPD.GetLCType
 006E8A15    xor         edx,edx
 006E8A17    mov         dl,al
 006E8A19    mov         eax,dword ptr [ebp-4]
 006E8A1C    mov         eax,dword ptr [eax+460];TFXPDFrame.cbLC4Type:TComboBox
 006E8A22    call        006E7FDC
 006E8A27    pop         ecx
 006E8A28    mov         edx,eax
 006E8A2A    mov         eax,dword ptr [ebp-4]
 006E8A2D    mov         eax,dword ptr [eax+460];TFXPDFrame.cbLC4Type:TComboBox
 006E8A33    mov         ecx,dword ptr [eax]
 006E8A35    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 006E8A3B    mov         dl,4
 006E8A3D    mov         eax,dword ptr [ebp-4]
 006E8A40    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8A46    call        TFXPPD.GetLCFirstLoop
 006E8A4B    and         eax,0FF
 006E8A50    lea         edx,[ebp-60]
 006E8A53    call        IntToStr
 006E8A58    mov         edx,dword ptr [ebp-60]
 006E8A5B    mov         eax,dword ptr [ebp-4]
 006E8A5E    mov         eax,dword ptr [eax+464];TFXPDFrame.edLC4FirstLoop:TEdit
 006E8A64    call        TControl.SetText
 006E8A69    mov         dl,4
 006E8A6B    mov         eax,dword ptr [ebp-4]
 006E8A6E    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8A74    call        TFXPPD.GetLCNumOfLoops
 006E8A79    and         eax,0FF
 006E8A7E    lea         edx,[ebp-64]
 006E8A81    call        IntToStr
 006E8A86    mov         edx,dword ptr [ebp-64]
 006E8A89    mov         eax,dword ptr [ebp-4]
 006E8A8C    mov         eax,dword ptr [eax+468];TFXPDFrame.edLC4NumOfLoops:TEdit
 006E8A92    call        TControl.SetText
 006E8A97    mov         dl,4
 006E8A99    mov         eax,dword ptr [ebp-4]
 006E8A9C    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8AA2    call        TFXPPD.GetLCLastLoop
 006E8AA7    and         eax,0FF
 006E8AAC    lea         edx,[ebp-68]
 006E8AAF    call        IntToStr
 006E8AB4    mov         edx,dword ptr [ebp-68]
 006E8AB7    mov         eax,dword ptr [ebp-4]
 006E8ABA    mov         eax,dword ptr [eax+46C];TFXPDFrame.edLC4LastLoop:TEdit
 006E8AC0    call        TControl.SetText
 006E8AC5    mov         ecx,1
 006E8ACA    mov         edx,4
 006E8ACF    mov         eax,dword ptr [ebp-4]
 006E8AD2    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8AD8    call        TFXPPD.GetAlcStartupDelay
 006E8ADD    xor         edx,edx
 006E8ADF    mov         dl,al
 006E8AE1    mov         eax,dword ptr [ebp-4]
 006E8AE4    mov         eax,dword ptr [eax+470];TFXPDFrame.speLC4StartDelay1:TSpinEdit
 006E8AEA    call        TSpinEdit.SetValue
 006E8AEF    mov         ecx,2
 006E8AF4    mov         edx,4
 006E8AF9    mov         eax,dword ptr [ebp-4]
 006E8AFC    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8B02    call        TFXPPD.GetAlcStartupDelay
 006E8B07    xor         edx,edx
 006E8B09    mov         dl,al
 006E8B0B    mov         eax,dword ptr [ebp-4]
 006E8B0E    mov         eax,dword ptr [eax+474];TFXPDFrame.speLC4StartDelay2:TSpinEdit
 006E8B14    call        TSpinEdit.SetValue
 006E8B19    mov         ecx,1
 006E8B1E    mov         edx,4
 006E8B23    mov         eax,dword ptr [ebp-4]
 006E8B26    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8B2C    call        TFXPPD.GetAlcStartupDelayAllowed
 006E8B31    mov         edx,eax
 006E8B33    mov         eax,dword ptr [ebp-4]
 006E8B36    mov         eax,dword ptr [eax+470];TFXPDFrame.speLC4StartDelay1:TSpinEdit
 006E8B3C    mov         ecx,dword ptr [eax]
 006E8B3E    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E8B44    mov         ecx,2
 006E8B49    mov         edx,4
 006E8B4E    mov         eax,dword ptr [ebp-4]
 006E8B51    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8B57    call        TFXPPD.GetAlcStartupDelayAllowed
 006E8B5C    mov         edx,eax
 006E8B5E    mov         eax,dword ptr [ebp-4]
 006E8B61    mov         eax,dword ptr [eax+474];TFXPDFrame.speLC4StartDelay2:TSpinEdit
 006E8B67    mov         ecx,dword ptr [eax]
 006E8B69    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E8B6F    mov         eax,dword ptr [ebp-4]
 006E8B72    mov         eax,dword ptr [eax+470];TFXPDFrame.speLC4StartDelay1:TSpinEdit
 006E8B78    mov         edx,dword ptr [eax]
 006E8B7A    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 006E8B7D    test        al,al
>006E8B7F    jne         006E8BA1
 006E8B81    mov         ecx,1
 006E8B86    mov         edx,4
 006E8B8B    mov         eax,dword ptr [ebp-4]
 006E8B8E    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8B94    call        TFXPPD.GetAlcStartupDelay
 006E8B99    test        al,al
>006E8B9B    jne         006E8BA1
 006E8B9D    xor         edx,edx
>006E8B9F    jmp         006E8BA3
 006E8BA1    mov         dl,1
 006E8BA3    mov         eax,dword ptr [ebp-4]
 006E8BA6    mov         eax,dword ptr [eax+470];TFXPDFrame.speLC4StartDelay1:TSpinEdit
 006E8BAC    call        TControl.SetVisible
 006E8BB1    mov         eax,dword ptr [ebp-4]
 006E8BB4    mov         eax,dword ptr [eax+474];TFXPDFrame.speLC4StartDelay2:TSpinEdit
 006E8BBA    mov         edx,dword ptr [eax]
 006E8BBC    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 006E8BBF    test        al,al
>006E8BC1    jne         006E8BE3
 006E8BC3    mov         ecx,2
 006E8BC8    mov         edx,4
 006E8BCD    mov         eax,dword ptr [ebp-4]
 006E8BD0    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8BD6    call        TFXPPD.GetAlcStartupDelay
 006E8BDB    test        al,al
>006E8BDD    jne         006E8BE3
 006E8BDF    xor         edx,edx
>006E8BE1    jmp         006E8BE5
 006E8BE3    mov         dl,1
 006E8BE5    mov         eax,dword ptr [ebp-4]
 006E8BE8    mov         eax,dword ptr [eax+474];TFXPDFrame.speLC4StartDelay2:TSpinEdit
 006E8BEE    call        TControl.SetVisible
 006E8BF3    lea         eax,[ebp-6C]
 006E8BF6    push        eax
 006E8BF7    lea         edx,[ebp-70]
 006E8BFA    mov         eax,dword ptr [ebp-4]
 006E8BFD    mov         eax,dword ptr [eax+464];TFXPDFrame.edLC4FirstLoop:TEdit
 006E8C03    call        TControl.GetText
 006E8C08    mov         eax,dword ptr [ebp-70]
 006E8C0B    mov         dword ptr [ebp-18],eax
 006E8C0E    mov         byte ptr [ebp-14],11
 006E8C12    lea         edx,[ebp-18]
 006E8C15    mov         eax,[007C42C0];^gvar_007C2CE4
 006E8C1A    mov         eax,dword ptr [eax]
 006E8C1C    xor         ecx,ecx
 006E8C1E    call        Format
 006E8C23    mov         edx,dword ptr [ebp-6C]
 006E8C26    mov         eax,dword ptr [ebp-4]
 006E8C29    mov         eax,dword ptr [eax+458];TFXPDFrame.lbLC4StartDelay1:TLabel
 006E8C2F    call        TControl.SetText
 006E8C34    lea         eax,[ebp-74]
 006E8C37    push        eax
 006E8C38    lea         edx,[ebp-78]
 006E8C3B    mov         eax,dword ptr [ebp-4]
 006E8C3E    mov         eax,dword ptr [eax+46C];TFXPDFrame.edLC4LastLoop:TEdit
 006E8C44    call        TControl.GetText
 006E8C49    mov         eax,dword ptr [ebp-78]
 006E8C4C    mov         dword ptr [ebp-18],eax
 006E8C4F    mov         byte ptr [ebp-14],11
 006E8C53    lea         edx,[ebp-18]
 006E8C56    mov         eax,[007C42C0];^gvar_007C2CE4
 006E8C5B    mov         eax,dword ptr [eax]
 006E8C5D    xor         ecx,ecx
 006E8C5F    call        Format
 006E8C64    mov         edx,dword ptr [ebp-74]
 006E8C67    mov         eax,dword ptr [ebp-4]
 006E8C6A    mov         eax,dword ptr [eax+45C];TFXPDFrame.lbLC4StartDelay2:TLabel
 006E8C70    call        TControl.SetText
 006E8C75    mov         eax,dword ptr [ebp-4]
 006E8C78    mov         eax,dword ptr [eax+470];TFXPDFrame.speLC4StartDelay1:TSpinEdit
 006E8C7E    mov         edx,dword ptr [eax]
 006E8C80    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 006E8C83    mov         edx,eax
 006E8C85    mov         eax,dword ptr [ebp-4]
 006E8C88    mov         eax,dword ptr [eax+458];TFXPDFrame.lbLC4StartDelay1:TLabel
 006E8C8E    mov         ecx,dword ptr [eax]
 006E8C90    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E8C96    mov         eax,dword ptr [ebp-4]
 006E8C99    mov         eax,dword ptr [eax+474];TFXPDFrame.speLC4StartDelay2:TSpinEdit
 006E8C9F    mov         edx,dword ptr [eax]
 006E8CA1    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 006E8CA4    mov         edx,eax
 006E8CA6    mov         eax,dword ptr [ebp-4]
 006E8CA9    mov         eax,dword ptr [eax+45C];TFXPDFrame.lbLC4StartDelay2:TLabel
 006E8CAF    mov         ecx,dword ptr [eax]
 006E8CB1    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E8CB7    mov         eax,dword ptr [ebp-4]
 006E8CBA    mov         eax,dword ptr [eax+470];TFXPDFrame.speLC4StartDelay1:TSpinEdit
 006E8CC0    mov         dl,byte ptr [eax+69];TSpinEdit.FVisible:Boolean
 006E8CC3    mov         eax,dword ptr [ebp-4]
 006E8CC6    mov         eax,dword ptr [eax+458];TFXPDFrame.lbLC4StartDelay1:TLabel
 006E8CCC    call        TControl.SetVisible
 006E8CD1    mov         eax,dword ptr [ebp-4]
 006E8CD4    mov         eax,dword ptr [eax+474];TFXPDFrame.speLC4StartDelay2:TSpinEdit
 006E8CDA    mov         dl,byte ptr [eax+69];TSpinEdit.FVisible:Boolean
 006E8CDD    mov         eax,dword ptr [ebp-4]
 006E8CE0    mov         eax,dword ptr [eax+45C];TFXPDFrame.lbLC4StartDelay2:TLabel
 006E8CE6    call        TControl.SetVisible
 006E8CEB    mov         dl,1
 006E8CED    mov         eax,dword ptr [ebp-4]
 006E8CF0    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8CF6    call        TFXPPD.GetLCType
 006E8CFB    test        al,al
 006E8CFD    setne       dl
 006E8D00    mov         eax,dword ptr [ebp-4]
 006E8D03    mov         eax,dword ptr [eax+3DC];TFXPDFrame.gbLC2:TGroupBox
 006E8D09    mov         ecx,dword ptr [eax]
 006E8D0B    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E8D11    mov         dl,2
 006E8D13    mov         eax,dword ptr [ebp-4]
 006E8D16    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8D1C    call        TFXPPD.GetLCType
 006E8D21    test        al,al
 006E8D23    setne       dl
 006E8D26    mov         eax,dword ptr [ebp-4]
 006E8D29    mov         eax,dword ptr [eax+410];TFXPDFrame.gbLC3:TGroupBox
 006E8D2F    mov         ecx,dword ptr [eax]
 006E8D31    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E8D37    mov         dl,3
 006E8D39    mov         eax,dword ptr [ebp-4]
 006E8D3C    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8D42    call        TFXPPD.GetLCType
 006E8D47    test        al,al
 006E8D49    setne       dl
 006E8D4C    mov         eax,dword ptr [ebp-4]
 006E8D4F    mov         eax,dword ptr [eax+444];TFXPDFrame.gbLC4:TGroupBox
 006E8D55    mov         ecx,dword ptr [eax]
 006E8D57    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006E8D5D    xor         eax,eax
 006E8D5F    pop         edx
 006E8D60    pop         ecx
 006E8D61    pop         ecx
 006E8D62    mov         dword ptr fs:[eax],edx
 006E8D65    push        6E8E09
 006E8D6A    lea         eax,[ebp-78]
 006E8D6D    call        @UStrClr
 006E8D72    lea         eax,[ebp-74]
 006E8D75    call        @UStrClr
 006E8D7A    lea         eax,[ebp-70]
 006E8D7D    call        @UStrClr
 006E8D82    lea         eax,[ebp-6C]
 006E8D85    mov         edx,4
 006E8D8A    call        @UStrArrayClr
 006E8D8F    lea         eax,[ebp-5C]
 006E8D92    call        @UStrClr
 006E8D97    lea         eax,[ebp-58]
 006E8D9A    call        @UStrClr
 006E8D9F    lea         eax,[ebp-54]
 006E8DA2    call        @UStrClr
 006E8DA7    lea         eax,[ebp-50]
 006E8DAA    mov         edx,4
 006E8DAF    call        @UStrArrayClr
 006E8DB4    lea         eax,[ebp-40]
 006E8DB7    call        @UStrClr
 006E8DBC    lea         eax,[ebp-3C]
 006E8DBF    call        @UStrClr
 006E8DC4    lea         eax,[ebp-38]
 006E8DC7    call        @UStrClr
 006E8DCC    lea         eax,[ebp-34]
 006E8DCF    mov         edx,4
 006E8DD4    call        @UStrArrayClr
 006E8DD9    lea         eax,[ebp-24]
 006E8DDC    call        @UStrClr
 006E8DE1    lea         eax,[ebp-20]
 006E8DE4    call        @UStrClr
 006E8DE9    lea         eax,[ebp-1C]
 006E8DEC    call        @UStrClr
 006E8DF1    lea         eax,[ebp-10]
 006E8DF4    mov         edx,3
 006E8DF9    call        @UStrArrayClr
 006E8DFE    ret
>006E8DFF    jmp         @HandleFinally
>006E8E04    jmp         006E8D6A
 006E8E09    mov         esp,ebp
 006E8E0B    pop         ebp
 006E8E0C    ret
*}
end;

//006E8E10
procedure TFXPDFrame.cbLCTypeChange(Sender:TObject);
begin
{*
 006E8E10    push        ebp
 006E8E11    mov         ebp,esp
 006E8E13    add         esp,0FFFFFFE0
 006E8E16    mov         dword ptr [ebp-8],edx
 006E8E19    mov         dword ptr [ebp-4],eax
 006E8E1C    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 006E8E21    mov         eax,dword ptr [eax]
 006E8E23    mov         eax,dword ptr [eax+0C]
 006E8E26    mov         dword ptr [ebp-18],eax
 006E8E29    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 006E8E2E    mov         eax,dword ptr [eax]
 006E8E30    mov         eax,dword ptr [eax+14]
 006E8E33    mov         dword ptr [ebp-1C],eax
 006E8E36    mov         eax,dword ptr [ebp-8]
 006E8E39    mov         edx,dword ptr ds:[4FD318];TComboBox
 006E8E3F    call        @AsClass
 006E8E44    mov         eax,dword ptr [eax+0C];TComboBox.FTag:NativeInt
 006E8E47    mov         dword ptr [ebp-0C],eax
 006E8E4A    mov         eax,dword ptr [ebp-0C]
 006E8E4D    dec         eax
 006E8E4E    sub         eax,4
>006E8E51    jb          006E8E67
 006E8E53    mov         ecx,902
 006E8E58    mov         edx,6E909C;'W:\winfx3net\winfx3net\src\FXPDFrames.pas'
 006E8E5D    mov         eax,6E90FC;'Invalid Loop Controller in TFXPDFrame.cbLCTypeChange'
 006E8E62    call        @Assert
 006E8E67    mov         eax,dword ptr [ebp-8]
 006E8E6A    mov         edx,dword ptr ds:[4FD318];TComboBox
 006E8E70    call        @AsClass
 006E8E75    mov         dword ptr [ebp-20],eax
 006E8E78    mov         eax,dword ptr [ebp-20]
 006E8E7B    mov         edx,dword ptr [eax]
 006E8E7D    call        dword ptr [edx+108];TComboBox.GetItemIndex
 006E8E83    mov         edx,eax
 006E8E85    mov         eax,dword ptr [ebp-20]
 006E8E88    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E8E8E    mov         ecx,dword ptr [eax]
 006E8E90    call        dword ptr [ecx+18];TStrings.GetObject
 006E8E93    mov         dword ptr [ebp-10],eax
 006E8E96    mov         eax,dword ptr [ebp-10]
 006E8E99    sub         eax,2
>006E8E9C    jb          006E8EBE
 006E8E9E    dec         eax
 006E8E9F    sub         eax,4
>006E8EA2    jb          006E8EBE
 006E8EA4    dec         eax
 006E8EA5    sub         eax,2
>006E8EA8    jb          006E8EBE
 006E8EAA    mov         ecx,907
 006E8EAF    mov         edx,6E909C;'W:\winfx3net\winfx3net\src\FXPDFrames.pas'
 006E8EB4    mov         eax,6E9174;'Invalid Loop Controller type in TFXPDFrame.cbLCTypeChange'
 006E8EB9    call        @Assert
 006E8EBE    mov         byte ptr [ebp-13],0
 006E8EC2    mov         byte ptr [ebp-11],0
 006E8EC6    mov         byte ptr [ebp-12],0
 006E8ECA    mov         eax,[007C4624];^gvar_00901F54:TLoopCtrlrTypeChangeDlg
 006E8ECF    mov         eax,dword ptr [eax]
 006E8ED1    mov         eax,dword ptr [eax+3DC]
 006E8ED7    xor         edx,edx
 006E8ED9    mov         ecx,dword ptr [eax]
 006E8EDB    call        dword ptr [ecx+88]
 006E8EE1    mov         eax,[007C4624];^gvar_00901F54:TLoopCtrlrTypeChangeDlg
 006E8EE6    mov         eax,dword ptr [eax]
 006E8EE8    mov         eax,dword ptr [eax+3D0]
 006E8EEE    xor         edx,edx
 006E8EF0    mov         ecx,dword ptr [eax]
 006E8EF2    call        dword ptr [ecx+88]
 006E8EF8    mov         eax,dword ptr [ebp-18]
 006E8EFB    push        eax
 006E8EFC    mov         ecx,dword ptr [ebp-10]
 006E8EFF    mov         edx,dword ptr [ebp-0C]
 006E8F02    mov         eax,dword ptr [ebp-4]
 006E8F05    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E8F0B    call        TFXPPD.UserVerificationOfLCChangeNeeded
 006E8F10    cmp         eax,5
>006E8F13    ja          006E8FF9
 006E8F19    jmp         dword ptr [eax*4+6E8F20]
 006E8F19    dd          006E8F38
 006E8F19    dd          006E8F41
 006E8F19    dd          006E8F4A
 006E8F19    dd          006E8F6D
 006E8F19    dd          006E8F8D
 006E8F19    dd          006E8FDB
 006E8F38    mov         byte ptr [ebp-11],0
>006E8F3C    jmp         006E8FF9
 006E8F41    mov         byte ptr [ebp-11],1
>006E8F45    jmp         006E8FF9
 006E8F4A    mov         edx,dword ptr ds:[7C429C];^gvar_007C2EB4
 006E8F50    mov         edx,dword ptr [edx]
 006E8F52    mov         eax,[007C4624];^gvar_00901F54:TLoopCtrlrTypeChangeDlg
 006E8F57    mov         eax,dword ptr [eax]
 006E8F59    mov         eax,dword ptr [eax+3C0]
 006E8F5F    call        TControl.SetText
 006E8F64    mov         byte ptr [ebp-13],1
>006E8F68    jmp         006E8FF9
 006E8F6D    mov         edx,dword ptr ds:[7C4EE8];^gvar_007C2EB8
 006E8F73    mov         edx,dword ptr [edx]
 006E8F75    mov         eax,[007C4624];^gvar_00901F54:TLoopCtrlrTypeChangeDlg
 006E8F7A    mov         eax,dword ptr [eax]
 006E8F7C    mov         eax,dword ptr [eax+3C0]
 006E8F82    call        TControl.SetText
 006E8F87    mov         byte ptr [ebp-13],1
>006E8F8B    jmp         006E8FF9
 006E8F8D    mov         edx,dword ptr ds:[7C4794];^gvar_007C2EBC
 006E8F93    mov         edx,dword ptr [edx]
 006E8F95    mov         eax,[007C4624];^gvar_00901F54:TLoopCtrlrTypeChangeDlg
 006E8F9A    mov         eax,dword ptr [eax]
 006E8F9C    mov         eax,dword ptr [eax+3C0]
 006E8FA2    call        TControl.SetText
 006E8FA7    mov         eax,[007C4624];^gvar_00901F54:TLoopCtrlrTypeChangeDlg
 006E8FAC    mov         eax,dword ptr [eax]
 006E8FAE    mov         eax,dword ptr [eax+3DC]
 006E8FB4    mov         dl,1
 006E8FB6    mov         ecx,dword ptr [eax]
 006E8FB8    call        dword ptr [ecx+88]
 006E8FBE    mov         eax,[007C4624];^gvar_00901F54:TLoopCtrlrTypeChangeDlg
 006E8FC3    mov         eax,dword ptr [eax]
 006E8FC5    mov         eax,dword ptr [eax+3D0]
 006E8FCB    mov         dl,1
 006E8FCD    mov         ecx,dword ptr [eax]
 006E8FCF    call        dword ptr [ecx+88]
 006E8FD5    mov         byte ptr [ebp-13],1
>006E8FD9    jmp         006E8FF9
 006E8FDB    mov         edx,dword ptr ds:[7C43B8];^gvar_007C2EC0
 006E8FE1    mov         edx,dword ptr [edx]
 006E8FE3    mov         eax,[007C4624];^gvar_00901F54:TLoopCtrlrTypeChangeDlg
 006E8FE8    mov         eax,dword ptr [eax]
 006E8FEA    mov         eax,dword ptr [eax+3C0]
 006E8FF0    call        TControl.SetText
 006E8FF5    mov         byte ptr [ebp-13],1
 006E8FF9    cmp         byte ptr [ebp-13],0
>006E8FFD    je          006E902D
 006E8FFF    mov         eax,[007C4624];^gvar_00901F54:TLoopCtrlrTypeChangeDlg
 006E9004    mov         eax,dword ptr [eax]
 006E9006    mov         edx,dword ptr [eax]
 006E9008    call        dword ptr [edx+13C]
 006E900E    dec         eax
>006E900F    je          006E9023
 006E9011    dec         eax
>006E9012    je          006E9029
 006E9014    sub         eax,4
>006E9017    jne         006E902D
 006E9019    mov         byte ptr [ebp-11],1
 006E901D    mov         byte ptr [ebp-12],1
>006E9021    jmp         006E902D
 006E9023    mov         byte ptr [ebp-11],1
>006E9027    jmp         006E902D
 006E9029    mov         byte ptr [ebp-11],0
 006E902D    cmp         byte ptr [ebp-11],0
>006E9031    je          006E9082
 006E9033    mov         ecx,dword ptr [ebp-10]
 006E9036    cmp         ecx,0FF
>006E903C    jbe         006E9043
 006E903E    call        @BoundErr
 006E9043    mov         edx,dword ptr [ebp-0C]
 006E9046    cmp         edx,0FF
>006E904C    jbe         006E9053
 006E904E    call        @BoundErr
 006E9053    mov         eax,dword ptr [ebp-4]
 006E9056    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E905C    call        TFXPPD.SetLCType
 006E9061    mov         edx,dword ptr [ebp-0C]
 006E9064    cmp         edx,0FF
>006E906A    jbe         006E9071
 006E906C    call        @BoundErr
 006E9071    mov         cl,byte ptr [ebp-12]
 006E9074    mov         eax,dword ptr [ebp-4]
 006E9077    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E907D    call        TFXPPD.SetConvertSysToSap
 006E9082    mov         eax,dword ptr [ebp-4]
 006E9085    call        006E8044
 006E908A    mov         esp,ebp
 006E908C    pop         ebp
 006E908D    ret
*}
end;

//006E91E8
procedure TFXPDFrame.speLC1FirstLoopChange(Sender:TObject);
begin
{*
 006E91E8    push        ebp
 006E91E9    mov         ebp,esp
 006E91EB    add         esp,0FFFFFFF8
 006E91EE    mov         dword ptr [ebp-8],edx
 006E91F1    mov         dword ptr [ebp-4],eax
 006E91F4    mov         eax,dword ptr [ebp-4]
 006E91F7    mov         eax,dword ptr [eax+3C8];TFXPDFrame.speLC1FirstLoop:TSpinEdit
 006E91FD    call        TSpinEdit.GetValue
 006E9202    mov         edx,eax
 006E9204    cmp         edx,0FF
>006E920A    jbe         006E9211
 006E920C    call        @BoundErr
 006E9211    mov         eax,dword ptr [ebp-4]
 006E9214    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E921A    call        006A3B38
 006E921F    mov         eax,dword ptr [ebp-4]
 006E9222    call        006E8044
 006E9227    pop         ecx
 006E9228    pop         ecx
 006E9229    pop         ebp
 006E922A    ret
*}
end;

//006E922C
procedure TFXPDFrame.speLCStartDelayChange(Sender:TObject);
begin
{*
 006E922C    push        ebp
 006E922D    mov         ebp,esp
 006E922F    add         esp,0FFFFFFF8
 006E9232    mov         dword ptr [ebp-8],edx
 006E9235    mov         dword ptr [ebp-4],eax
 006E9238    mov         eax,dword ptr [ebp-8]
 006E923B    mov         edx,dword ptr ds:[6B049C];TSpinEdit
 006E9241    call        @AsClass
 006E9246    mov         eax,dword ptr [eax+0C];TSpinEdit.FTag:NativeInt
 006E9249    add         eax,0FFFFFFF5
 006E924C    cmp         eax,1F
>006E924F    ja          006E9460
 006E9255    mov         al,byte ptr [eax+6E9262]
 006E925B    jmp         dword ptr [eax*4+6E9282]
 006E925B    db          1
 006E925B    db          2
 006E925B    db          0
 006E925B    db          0
 006E925B    db          0
 006E925B    db          0
 006E925B    db          0
 006E925B    db          0
 006E925B    db          0
 006E925B    db          0
 006E925B    db          3
 006E925B    db          4
 006E925B    db          0
 006E925B    db          0
 006E925B    db          0
 006E925B    db          0
 006E925B    db          0
 006E925B    db          0
 006E925B    db          0
 006E925B    db          0
 006E925B    db          5
 006E925B    db          6
 006E925B    db          0
 006E925B    db          0
 006E925B    db          0
 006E925B    db          0
 006E925B    db          0
 006E925B    db          0
 006E925B    db          0
 006E925B    db          0
 006E925B    db          7
 006E925B    db          8
 006E925B    dd          006E9460
 006E925B    dd          006E92A6
 006E925B    dd          006E92DE
 006E925B    dd          006E9316
 006E925B    dd          006E934E
 006E925B    dd          006E9386
 006E925B    dd          006E93BE
 006E925B    dd          006E93F6
 006E925B    dd          006E942B
 006E92A6    mov         eax,dword ptr [ebp-4]
 006E92A9    mov         eax,dword ptr [eax+3D4];TFXPDFrame.speLC1StartDelay1:TSpinEdit
 006E92AF    call        TSpinEdit.GetValue
 006E92B4    cmp         eax,0FF
>006E92B9    jbe         006E92C0
 006E92BB    call        @BoundErr
 006E92C0    push        eax
 006E92C1    mov         ecx,1
 006E92C6    mov         edx,1
 006E92CB    mov         eax,dword ptr [ebp-4]
 006E92CE    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E92D4    call        TFXPPD.SetAlcStartupDelay
>006E92D9    jmp         006E9476
 006E92DE    mov         eax,dword ptr [ebp-4]
 006E92E1    mov         eax,dword ptr [eax+3D8];TFXPDFrame.speLC1StartDelay2:TSpinEdit
 006E92E7    call        TSpinEdit.GetValue
 006E92EC    cmp         eax,0FF
>006E92F1    jbe         006E92F8
 006E92F3    call        @BoundErr
 006E92F8    push        eax
 006E92F9    mov         ecx,2
 006E92FE    mov         edx,1
 006E9303    mov         eax,dword ptr [ebp-4]
 006E9306    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E930C    call        TFXPPD.SetAlcStartupDelay
>006E9311    jmp         006E9476
 006E9316    mov         eax,dword ptr [ebp-4]
 006E9319    mov         eax,dword ptr [eax+408];TFXPDFrame.speLC2StartDelay1:TSpinEdit
 006E931F    call        TSpinEdit.GetValue
 006E9324    cmp         eax,0FF
>006E9329    jbe         006E9330
 006E932B    call        @BoundErr
 006E9330    push        eax
 006E9331    mov         ecx,1
 006E9336    mov         edx,2
 006E933B    mov         eax,dword ptr [ebp-4]
 006E933E    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E9344    call        TFXPPD.SetAlcStartupDelay
>006E9349    jmp         006E9476
 006E934E    mov         eax,dword ptr [ebp-4]
 006E9351    mov         eax,dword ptr [eax+40C];TFXPDFrame.speLC2StartDelay2:TSpinEdit
 006E9357    call        TSpinEdit.GetValue
 006E935C    cmp         eax,0FF
>006E9361    jbe         006E9368
 006E9363    call        @BoundErr
 006E9368    push        eax
 006E9369    mov         ecx,2
 006E936E    mov         edx,2
 006E9373    mov         eax,dword ptr [ebp-4]
 006E9376    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E937C    call        TFXPPD.SetAlcStartupDelay
>006E9381    jmp         006E9476
 006E9386    mov         eax,dword ptr [ebp-4]
 006E9389    mov         eax,dword ptr [eax+43C];TFXPDFrame.speLC3StartDelay1:TSpinEdit
 006E938F    call        TSpinEdit.GetValue
 006E9394    cmp         eax,0FF
>006E9399    jbe         006E93A0
 006E939B    call        @BoundErr
 006E93A0    push        eax
 006E93A1    mov         ecx,1
 006E93A6    mov         edx,3
 006E93AB    mov         eax,dword ptr [ebp-4]
 006E93AE    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E93B4    call        TFXPPD.SetAlcStartupDelay
>006E93B9    jmp         006E9476
 006E93BE    mov         eax,dword ptr [ebp-4]
 006E93C1    mov         eax,dword ptr [eax+440];TFXPDFrame.speLC3StartDelay2:TSpinEdit
 006E93C7    call        TSpinEdit.GetValue
 006E93CC    cmp         eax,0FF
>006E93D1    jbe         006E93D8
 006E93D3    call        @BoundErr
 006E93D8    push        eax
 006E93D9    mov         ecx,2
 006E93DE    mov         edx,3
 006E93E3    mov         eax,dword ptr [ebp-4]
 006E93E6    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E93EC    call        TFXPPD.SetAlcStartupDelay
>006E93F1    jmp         006E9476
 006E93F6    mov         eax,dword ptr [ebp-4]
 006E93F9    mov         eax,dword ptr [eax+470];TFXPDFrame.speLC4StartDelay1:TSpinEdit
 006E93FF    call        TSpinEdit.GetValue
 006E9404    cmp         eax,0FF
>006E9409    jbe         006E9410
 006E940B    call        @BoundErr
 006E9410    push        eax
 006E9411    mov         ecx,1
 006E9416    mov         edx,4
 006E941B    mov         eax,dword ptr [ebp-4]
 006E941E    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E9424    call        TFXPPD.SetAlcStartupDelay
>006E9429    jmp         006E9476
 006E942B    mov         eax,dword ptr [ebp-4]
 006E942E    mov         eax,dword ptr [eax+474];TFXPDFrame.speLC4StartDelay2:TSpinEdit
 006E9434    call        TSpinEdit.GetValue
 006E9439    cmp         eax,0FF
>006E943E    jbe         006E9445
 006E9440    call        @BoundErr
 006E9445    push        eax
 006E9446    mov         ecx,2
 006E944B    mov         edx,4
 006E9450    mov         eax,dword ptr [ebp-4]
 006E9453    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E9459    call        TFXPPD.SetAlcStartupDelay
>006E945E    jmp         006E9476
 006E9460    mov         ecx,6E9490;'Implementation error:
Invalid tag value in TFXPDFrame.speLCStartDelayChange...
 006E9465    mov         dl,1
 006E9467    mov         eax,[004174D0];Exception
 006E946C    call        Exception.Create;Exception.Create
 006E9471    call        @RaiseExcept
 006E9476    mov         eax,dword ptr [ebp-4]
 006E9479    call        006E8044
 006E947E    pop         ecx
 006E947F    pop         ecx
 006E9480    pop         ebp
 006E9481    ret
*}
end;

//006E952C
procedure sub_006E952C(?:TFXPDFrame);
begin
{*
 006E952C    push        ebp
 006E952D    mov         ebp,esp
 006E952F    push        ecx
 006E9530    mov         dword ptr [ebp-4],eax
 006E9533    mov         eax,dword ptr [ebp-4]
 006E9536    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E953C    mov         dl,byte ptr [eax+150]
 006E9542    mov         eax,dword ptr [ebp-4]
 006E9545    mov         eax,dword ptr [eax+480];TFXPDFrame.cbFDFireAlarm:TCheckBox
 006E954B    mov         ecx,dword ptr [eax]
 006E954D    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006E9553    mov         eax,dword ptr [ebp-4]
 006E9556    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E955C    mov         dl,byte ptr [eax+151]
 006E9562    mov         eax,dword ptr [ebp-4]
 006E9565    mov         eax,dword ptr [eax+484];TFXPDFrame.cbFDPrewarning:TCheckBox
 006E956B    mov         ecx,dword ptr [eax]
 006E956D    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006E9573    mov         eax,dword ptr [ebp-4]
 006E9576    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E957C    mov         dl,byte ptr [eax+152]
 006E9582    mov         eax,dword ptr [ebp-4]
 006E9585    mov         eax,dword ptr [eax+488];TFXPDFrame.cbFDAddressFault:TCheckBox
 006E958B    mov         ecx,dword ptr [eax]
 006E958D    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006E9593    mov         eax,dword ptr [ebp-4]
 006E9596    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E959C    mov         dl,byte ptr [eax+153]
 006E95A2    mov         eax,dword ptr [ebp-4]
 006E95A5    mov         eax,dword ptr [eax+48C];TFXPDFrame.cbFDAddressDisablement:TCheckBox
 006E95AB    mov         ecx,dword ptr [eax]
 006E95AD    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006E95B3    mov         eax,dword ptr [ebp-4]
 006E95B6    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E95BC    mov         dl,byte ptr [eax+154]
 006E95C2    mov         eax,dword ptr [ebp-4]
 006E95C5    mov         eax,dword ptr [eax+490];TFXPDFrame.cbFDZoneDisablement:TCheckBox
 006E95CB    mov         ecx,dword ptr [eax]
 006E95CD    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006E95D3    mov         eax,dword ptr [ebp-4]
 006E95D6    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E95DC    mov         dl,byte ptr [eax+155]
 006E95E2    mov         eax,dword ptr [ebp-4]
 006E95E5    mov         eax,dword ptr [eax+494];TFXPDFrame.cbFDMainsOff:TCheckBox
 006E95EB    mov         ecx,dword ptr [eax]
 006E95ED    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006E95F3    mov         eax,dword ptr [ebp-4]
 006E95F6    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E95FC    mov         al,byte ptr [eax+197]
 006E9602    sub         al,1
>006E9604    jb          006E960E
>006E9606    je          006E9623
 006E9608    dec         al
>006E960A    je          006E9638
>006E960C    jmp         006E964B
 006E960E    mov         dl,1
 006E9610    mov         eax,dword ptr [ebp-4]
 006E9613    mov         eax,dword ptr [eax+828];TFXPDFrame.rb1NotBySensorInputDisablement:TRadioButton
 006E9619    mov         ecx,dword ptr [eax]
 006E961B    call        dword ptr [ecx+10C];TRadioButton.SetChecked
>006E9621    jmp         006E964B
 006E9623    mov         dl,1
 006E9625    mov         eax,dword ptr [ebp-4]
 006E9628    mov         eax,dword ptr [eax+82C];TFXPDFrame.rb2BySensorInputDisablement:TRadioButton
 006E962E    mov         ecx,dword ptr [eax]
 006E9630    call        dword ptr [ecx+10C];TRadioButton.SetChecked
>006E9636    jmp         006E964B
 006E9638    mov         dl,1
 006E963A    mov         eax,dword ptr [ebp-4]
 006E963D    mov         eax,dword ptr [eax+830];TFXPDFrame.rb3TechAlarmFromDisabledInput:TRadioButton
 006E9643    mov         ecx,dword ptr [eax]
 006E9645    call        dword ptr [ecx+10C];TRadioButton.SetChecked
 006E964B    mov         eax,dword ptr [ebp-4]
 006E964E    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E9654    mov         dl,byte ptr [eax+178]
 006E965A    mov         eax,dword ptr [ebp-4]
 006E965D    mov         eax,dword ptr [eax+49C];TFXPDFrame.cbResoundOnNewAlarm:TCheckBox
 006E9663    mov         ecx,dword ptr [eax]
 006E9665    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006E966B    mov         eax,dword ptr [ebp-4]
 006E966E    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E9674    mov         dl,byte ptr [eax+17F]
 006E967A    mov         eax,dword ptr [ebp-4]
 006E967D    mov         eax,dword ptr [eax+4A4];TFXPDFrame.cbRouterOffAtSilence:TCheckBox
 006E9683    mov         ecx,dword ptr [eax]
 006E9685    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006E968B    pop         ecx
 006E968C    pop         ebp
 006E968D    ret
*}
end;

//006E9690
procedure TFXPDFrame.FireDoorControlClick(Sender:TObject);
begin
{*
 006E9690    push        ebp
 006E9691    mov         ebp,esp
 006E9693    add         esp,0FFFFFFF8
 006E9696    mov         dword ptr [ebp-8],edx
 006E9699    mov         dword ptr [ebp-4],eax
 006E969C    mov         eax,dword ptr [ebp-8]
 006E969F    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006E96A5    call        @IsClass
 006E96AA    test        al,al
>006E96AC    je          006E97E3
 006E96B2    mov         eax,dword ptr [ebp-8]
 006E96B5    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006E96BB    call        @AsClass
 006E96C0    mov         eax,dword ptr [eax+0C];TCheckBox.FTag:NativeInt
 006E96C3    cmp         eax,6
>006E96C6    ja          006E97E3
 006E96CC    jmp         dword ptr [eax*4+6E96D3]
 006E96CC    dd          006E97E3
 006E96CC    dd          006E96EF
 006E96CC    dd          006E971A
 006E96CC    dd          006E9745
 006E96CC    dd          006E976D
 006E96CC    dd          006E9795
 006E96CC    dd          006E97BD
 006E96EF    mov         eax,dword ptr [ebp-8]
 006E96F2    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006E96F8    call        @AsClass
 006E96FD    mov         edx,dword ptr [eax]
 006E96FF    call        dword ptr [edx+108];TCheckBox.GetChecked
 006E9705    mov         edx,eax
 006E9707    mov         eax,dword ptr [ebp-4]
 006E970A    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E9710    call        006A3F0C
>006E9715    jmp         006E97E3
 006E971A    mov         eax,dword ptr [ebp-8]
 006E971D    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006E9723    call        @AsClass
 006E9728    mov         edx,dword ptr [eax]
 006E972A    call        dword ptr [edx+108];TCheckBox.GetChecked
 006E9730    mov         edx,eax
 006E9732    mov         eax,dword ptr [ebp-4]
 006E9735    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E973B    call        006A3F40
>006E9740    jmp         006E97E3
 006E9745    mov         eax,dword ptr [ebp-8]
 006E9748    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006E974E    call        @AsClass
 006E9753    mov         edx,dword ptr [eax]
 006E9755    call        dword ptr [edx+108];TCheckBox.GetChecked
 006E975B    mov         edx,eax
 006E975D    mov         eax,dword ptr [ebp-4]
 006E9760    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E9766    call        006A3F74
>006E976B    jmp         006E97E3
 006E976D    mov         eax,dword ptr [ebp-8]
 006E9770    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006E9776    call        @AsClass
 006E977B    mov         edx,dword ptr [eax]
 006E977D    call        dword ptr [edx+108];TCheckBox.GetChecked
 006E9783    mov         edx,eax
 006E9785    mov         eax,dword ptr [ebp-4]
 006E9788    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E978E    call        006A3FA8
>006E9793    jmp         006E97E3
 006E9795    mov         eax,dword ptr [ebp-8]
 006E9798    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006E979E    call        @AsClass
 006E97A3    mov         edx,dword ptr [eax]
 006E97A5    call        dword ptr [edx+108];TCheckBox.GetChecked
 006E97AB    mov         edx,eax
 006E97AD    mov         eax,dword ptr [ebp-4]
 006E97B0    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E97B6    call        006A3FDC
>006E97BB    jmp         006E97E3
 006E97BD    mov         eax,dword ptr [ebp-8]
 006E97C0    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006E97C6    call        @AsClass
 006E97CB    mov         edx,dword ptr [eax]
 006E97CD    call        dword ptr [edx+108];TCheckBox.GetChecked
 006E97D3    mov         edx,eax
 006E97D5    mov         eax,dword ptr [ebp-4]
 006E97D8    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E97DE    call        006A4010
 006E97E3    mov         eax,dword ptr [ebp-8]
 006E97E6    mov         edx,dword ptr ds:[5009D8];TRadioButton
 006E97EC    call        @IsClass
 006E97F1    test        al,al
>006E97F3    je          006E9821
 006E97F5    mov         eax,dword ptr [ebp-8]
 006E97F8    mov         edx,dword ptr ds:[5009D8];TRadioButton
 006E97FE    call        @AsClass
 006E9803    mov         edx,dword ptr [eax+0C];TRadioButton.FTag:NativeInt
 006E9806    cmp         edx,0FF
>006E980C    jbe         006E9813
 006E980E    call        @BoundErr
 006E9813    mov         eax,dword ptr [ebp-4]
 006E9816    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E981C    call        006A4044
 006E9821    mov         eax,dword ptr [ebp-4]
 006E9824    call        006E952C
 006E9829    pop         ecx
 006E982A    pop         ecx
 006E982B    pop         ebp
 006E982C    ret
*}
end;

//006E9830
procedure TFXPDFrame.cbResoundOnNewAlarmClick(Sender:TObject);
begin
{*
 006E9830    push        ebp
 006E9831    mov         ebp,esp
 006E9833    add         esp,0FFFFFFF8
 006E9836    mov         dword ptr [ebp-8],edx
 006E9839    mov         dword ptr [ebp-4],eax
 006E983C    mov         eax,dword ptr [ebp-8]
 006E983F    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006E9845    call        @AsClass
 006E984A    mov         edx,dword ptr [eax]
 006E984C    call        dword ptr [edx+108];TCheckBox.GetChecked
 006E9852    mov         edx,eax
 006E9854    mov         eax,dword ptr [ebp-4]
 006E9857    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E985D    call        006A4078
 006E9862    mov         eax,dword ptr [ebp-4]
 006E9865    call        006E952C
 006E986A    pop         ecx
 006E986B    pop         ecx
 006E986C    pop         ebp
 006E986D    ret
*}
end;

//006E9870
procedure TFXPDFrame.cbRouterOffAtSilenceClick(Sender:TObject);
begin
{*
 006E9870    push        ebp
 006E9871    mov         ebp,esp
 006E9873    add         esp,0FFFFFFF8
 006E9876    mov         dword ptr [ebp-8],edx
 006E9879    mov         dword ptr [ebp-4],eax
 006E987C    mov         eax,dword ptr [ebp-8]
 006E987F    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006E9885    call        @AsClass
 006E988A    mov         edx,dword ptr [eax]
 006E988C    call        dword ptr [edx+108];TCheckBox.GetChecked
 006E9892    mov         edx,eax
 006E9894    mov         eax,dword ptr [ebp-4]
 006E9897    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006E989D    call        006A40AC
 006E98A2    mov         eax,dword ptr [ebp-4]
 006E98A5    call        006E952C
 006E98AA    pop         ecx
 006E98AB    pop         ecx
 006E98AC    pop         ebp
 006E98AD    ret
*}
end;

//006E98B0
procedure TFXPDFrame.speCurrentIOCChange(Sender:TObject);
begin
{*
 006E98B0    push        ebp
 006E98B1    mov         ebp,esp
 006E98B3    add         esp,0FFFFFFF8
 006E98B6    push        ebx
 006E98B7    mov         dword ptr [ebp-8],edx
 006E98BA    mov         dword ptr [ebp-4],eax
 006E98BD    mov         eax,dword ptr [ebp-4]
 006E98C0    mov         eax,dword ptr [eax+4D0];TFXPDFrame.speCurrentIOC:TSpinEdit
 006E98C6    call        TSpinEdit.GetValue
 006E98CB    cmp         eax,0FF
>006E98D0    jbe         006E98D7
 006E98D2    call        @BoundErr
 006E98D7    mov         edx,dword ptr [ebp-4]
 006E98DA    mov         byte ptr [edx+848],al;TFXPDFrame.CurrentIOC:LongInt
 006E98E0    mov         eax,dword ptr [ebp-4]
 006E98E3    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E98E9    mov         eax,dword ptr [ebp-4]
 006E98EC    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E98F2    call        TFXPIO.GetIOCtrlrType
 006E98F7    xor         edx,edx
 006E98F9    mov         dl,al
 006E98FB    mov         eax,dword ptr [ebp-4]
 006E98FE    mov         eax,dword ptr [eax+4D4];TFXPDFrame.IOCTypeSelection:TComboBox
 006E9904    mov         ecx,dword ptr [eax]
 006E9906    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 006E990C    mov         eax,dword ptr [ebp-4]
 006E990F    mov         ebx,dword ptr [eax+4D4];TFXPDFrame.IOCTypeSelection:TComboBox
 006E9915    mov         edx,dword ptr [ebp-4]
 006E9918    mov         eax,dword ptr [ebx+2AC];TComboBox.?f2AC:dword
 006E991E    call        dword ptr [ebx+2A8];TComboBox.FOnChange
 006E9924    mov         eax,dword ptr [ebp-4]
 006E9927    call        006E5E6C
 006E992C    pop         ebx
 006E992D    pop         ecx
 006E992E    pop         ecx
 006E992F    pop         ebp
 006E9930    ret
*}
end;

//006E9934
{*function sub_006E9934(?:TComboBox; ?:Byte):?;
begin
 006E9934    push        ebp
 006E9935    mov         ebp,esp
 006E9937    add         esp,0FFFFFFEC
 006E993A    mov         dword ptr [ebp-8],edx
 006E993D    mov         dword ptr [ebp-4],eax
 006E9940    mov         eax,dword ptr [ebp-4]
 006E9943    mov         eax,dword ptr [eax+2CC]
 006E9949    mov         edx,dword ptr [eax]
 006E994B    call        dword ptr [edx+14]
 006E994E    sub         eax,1
>006E9951    jno         006E9958
 006E9953    call        @IntOver
 006E9958    test        eax,eax
>006E995A    jl          006E998D
 006E995C    inc         eax
 006E995D    mov         dword ptr [ebp-14],eax
 006E9960    mov         dword ptr [ebp-10],0
 006E9967    mov         eax,dword ptr [ebp-4]
 006E996A    mov         eax,dword ptr [eax+2CC]
 006E9970    mov         edx,dword ptr [ebp-10]
 006E9973    mov         ecx,dword ptr [eax]
 006E9975    call        dword ptr [ecx+18]
 006E9978    cmp         eax,dword ptr [ebp-8]
>006E997B    jne         006E9985
 006E997D    mov         eax,dword ptr [ebp-10]
 006E9980    mov         dword ptr [ebp-0C],eax
>006E9983    jmp         006E9992
 006E9985    inc         dword ptr [ebp-10]
 006E9988    dec         dword ptr [ebp-14]
>006E998B    jne         006E9967
 006E998D    xor         eax,eax
 006E998F    mov         dword ptr [ebp-0C],eax
 006E9992    mov         eax,dword ptr [ebp-0C]
 006E9995    mov         esp,ebp
 006E9997    pop         ebp
 006E9998    ret
end;*}

//006E999C
procedure TFXPDFrame.IOCTypeSelectionChange(Sender:TObject);
begin
{*
 006E999C    push        ebp
 006E999D    mov         ebp,esp
 006E999F    add         esp,0FFFFFFF4
 006E99A2    mov         dword ptr [ebp-0C],edx
 006E99A5    mov         dword ptr [ebp-4],eax
 006E99A8    mov         eax,dword ptr [ebp-4]
 006E99AB    mov         eax,dword ptr [eax+4D4];TFXPDFrame.IOCTypeSelection:TComboBox
 006E99B1    mov         edx,dword ptr [eax]
 006E99B3    call        dword ptr [edx+108];TComboBox.GetItemIndex
 006E99B9    mov         edx,eax
 006E99BB    mov         eax,dword ptr [ebp-4]
 006E99BE    mov         eax,dword ptr [eax+4D4];TFXPDFrame.IOCTypeSelection:TComboBox
 006E99C4    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 006E99CA    mov         ecx,dword ptr [eax]
 006E99CC    call        dword ptr [ecx+18];TStrings.GetObject
 006E99CF    mov         dword ptr [ebp-8],eax
 006E99D2    mov         eax,dword ptr [ebp-4]
 006E99D5    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E99DB    mov         eax,dword ptr [ebp-4]
 006E99DE    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E99E4    call        TFXPIO.GetIOCtrlrType
 006E99E9    and         eax,0FF
 006E99EE    cmp         eax,dword ptr [ebp-8]
>006E99F1    je          006E9AAA
 006E99F7    mov         eax,dword ptr [ebp-4]
 006E99FA    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E9A00    mov         eax,dword ptr [ebp-4]
 006E9A03    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E9A09    call        TFXPIO.GetIOCtrlrType
 006E9A0E    test        al,al
>006E9A10    je          006E9A83
 006E9A12    push        0
 006E9A14    mov         cx,word ptr ds:[6E9ADC];0x9 gvar_006E9ADC
 006E9A1B    xor         edx,edx
 006E9A1D    mov         eax,[007C2ED4];^'Current data for this IO controller will be deleted if you change its t...
 006E9A22    call        MessageDlg
 006E9A27    cmp         eax,2
>006E9A2A    jne         006E9A6C
 006E9A2C    push        ebp
 006E9A2D    mov         eax,dword ptr [ebp-4]
 006E9A30    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E9A36    mov         eax,dword ptr [ebp-4]
 006E9A39    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E9A3F    call        TFXPIO.GetIOCtrlrType
 006E9A44    xor         edx,edx
 006E9A46    mov         dl,al
 006E9A48    mov         eax,dword ptr [ebp-4]
 006E9A4B    mov         eax,dword ptr [eax+4D4];TFXPDFrame.IOCTypeSelection:TComboBox
 006E9A51    call        006E9934
 006E9A56    pop         ecx
 006E9A57    mov         edx,eax
 006E9A59    mov         eax,dword ptr [ebp-4]
 006E9A5C    mov         eax,dword ptr [eax+4D4];TFXPDFrame.IOCTypeSelection:TComboBox
 006E9A62    mov         ecx,dword ptr [eax]
 006E9A64    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
>006E9A6A    jmp         006E9AD5
 006E9A6C    mov         eax,dword ptr [ebp-4]
 006E9A6F    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E9A75    mov         eax,dword ptr [ebp-4]
 006E9A78    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E9A7E    call        TFXPIO.Clear
 006E9A83    mov         ecx,dword ptr [ebp-8]
 006E9A86    cmp         ecx,0FF
>006E9A8C    jbe         006E9A93
 006E9A8E    call        @BoundErr
 006E9A93    mov         eax,dword ptr [ebp-4]
 006E9A96    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E9A9C    mov         eax,dword ptr [ebp-4]
 006E9A9F    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E9AA5    call        TFXPIO.SetIOCtrlType
 006E9AAA    mov         eax,dword ptr [ebp-4]
 006E9AAD    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E9AB3    mov         eax,dword ptr [ebp-4]
 006E9AB6    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E9ABC    call        TFXPIO.GetIOCtrlrType
 006E9AC1    xor         edx,edx
 006E9AC3    mov         dl,al
 006E9AC5    mov         eax,dword ptr [ebp-4]
 006E9AC8    call        006E4DBC
 006E9ACD    mov         eax,dword ptr [ebp-4]
 006E9AD0    call        006E5E6C
 006E9AD5    mov         esp,ebp
 006E9AD7    pop         ebp
 006E9AD8    ret
*}
end;

//006E9AE0
procedure TFXPDFrame.IOGridKeyPress(Sender:TObject; var Key:Char);
begin
{*
 006E9AE0    push        ebp
 006E9AE1    mov         ebp,esp
 006E9AE3    add         esp,0FFFFFFE0
 006E9AE6    push        ebx
 006E9AE7    xor         ebx,ebx
 006E9AE9    mov         dword ptr [ebp-20],ebx
 006E9AEC    mov         dword ptr [ebp-0C],ecx
 006E9AEF    mov         dword ptr [ebp-8],edx
 006E9AF2    mov         dword ptr [ebp-4],eax
 006E9AF5    xor         eax,eax
 006E9AF7    push        ebp
 006E9AF8    push        6E9C5F
 006E9AFD    push        dword ptr fs:[eax]
 006E9B00    mov         dword ptr fs:[eax],esp
 006E9B03    mov         dword ptr [ebp-10],0FF
 006E9B0A    mov         eax,dword ptr [ebp-8]
 006E9B0D    mov         edx,dword ptr ds:[6B8E88];TStringGrid
 006E9B13    call        @AsClass
 006E9B18    mov         edx,dword ptr [ebp-4]
 006E9B1B    cmp         eax,dword ptr [edx+4B0];TFXPDFrame.CCIGridMC:TStringGrid
>006E9B21    je          006E9B3C
 006E9B23    mov         eax,dword ptr [ebp-8]
 006E9B26    mov         edx,dword ptr ds:[6B8E88];TStringGrid
 006E9B2C    call        @AsClass
 006E9B31    mov         edx,dword ptr [ebp-4]
 006E9B34    cmp         eax,dword ptr [edx+4D8];TFXPDFrame.CCIGrid:TStringGrid
>006E9B3A    jne         006E9B43
 006E9B3C    mov         dword ptr [ebp-10],7
 006E9B43    mov         eax,dword ptr [ebp-8]
 006E9B46    mov         edx,dword ptr ds:[6B8E88];TStringGrid
 006E9B4C    call        @AsClass
 006E9B51    mov         edx,dword ptr [ebp-4]
 006E9B54    cmp         eax,dword ptr [edx+4B4];TFXPDFrame.CCOGridMC:TStringGrid
>006E9B5A    je          006E9B75
 006E9B5C    mov         eax,dword ptr [ebp-8]
 006E9B5F    mov         edx,dword ptr ds:[6B8E88];TStringGrid
 006E9B65    call        @AsClass
 006E9B6A    mov         edx,dword ptr [ebp-4]
 006E9B6D    cmp         eax,dword ptr [edx+4DC];TFXPDFrame.CCOGrid:TStringGrid
>006E9B73    jne         006E9B7C
 006E9B75    mov         dword ptr [ebp-10],3
 006E9B7C    mov         eax,dword ptr [ebp-8]
 006E9B7F    mov         edx,dword ptr ds:[6B8E88];TStringGrid
 006E9B85    call        @AsClass
 006E9B8A    mov         edx,dword ptr [ebp-4]
 006E9B8D    cmp         eax,dword ptr [edx+4B8];TFXPDFrame.ADOGridMC:TStringGrid
>006E9B93    je          006E9BAE
 006E9B95    mov         eax,dword ptr [ebp-8]
 006E9B98    mov         edx,dword ptr ds:[6B8E88];TStringGrid
 006E9B9E    call        @AsClass
 006E9BA3    mov         edx,dword ptr [ebp-4]
 006E9BA6    cmp         eax,dword ptr [edx+4E0];TFXPDFrame.ADOGrid:TStringGrid
>006E9BAC    jne         006E9BB5
 006E9BAE    mov         dword ptr [ebp-10],5
 006E9BB5    cmp         dword ptr [ebp-10],0FF
>006E9BBC    je          006E9C49
 006E9BC2    mov         eax,dword ptr [ebp-8]
 006E9BC5    mov         edx,dword ptr ds:[6B8E88];TStringGrid
 006E9BCB    call        @AsClass
 006E9BD0    mov         dword ptr [ebp-14],eax
 006E9BD3    mov         eax,dword ptr [ebp-14]
 006E9BD6    mov         eax,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 006E9BDC    cmp         eax,dword ptr [ebp-10]
>006E9BDF    jne         006E9C49
 006E9BE1    mov         eax,dword ptr [ebp-0C]
 006E9BE4    mov         ax,word ptr [eax]
 006E9BE7    cmp         ax,1F
>006E9BEB    jbe         006E9C49
 006E9BED    lea         eax,[ebp-20]
 006E9BF0    push        eax
 006E9BF1    mov         eax,dword ptr [ebp-14]
 006E9BF4    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 006E9BFA    mov         eax,dword ptr [ebp-14]
 006E9BFD    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 006E9C03    mov         eax,dword ptr [ebp-14]
 006E9C06    call        TStringGrid.GetCells
 006E9C0B    mov         eax,dword ptr [ebp-20]
 006E9C0E    mov         dword ptr [ebp-18],eax
 006E9C11    mov         eax,dword ptr [ebp-18]
 006E9C14    mov         dword ptr [ebp-1C],eax
 006E9C17    cmp         dword ptr [ebp-1C],0
>006E9C1B    je          006E9C28
 006E9C1D    mov         eax,dword ptr [ebp-1C]
 006E9C20    sub         eax,4
 006E9C23    mov         eax,dword ptr [eax]
 006E9C25    mov         dword ptr [ebp-1C],eax
 006E9C28    cmp         dword ptr [ebp-1C],3C
>006E9C2C    jl          006E9C3F
 006E9C2E    push        30
 006E9C30    call        user32.MessageBeep
 006E9C35    mov         eax,dword ptr [ebp-0C]
 006E9C38    mov         word ptr [eax],0
>006E9C3D    jmp         006E9C49
 006E9C3F    mov         eax,dword ptr [ebp-4]
 006E9C42    mov         byte ptr [eax+850],1;TFXPDFrame.FModified:Boolean
 006E9C49    xor         eax,eax
 006E9C4B    pop         edx
 006E9C4C    pop         ecx
 006E9C4D    pop         ecx
 006E9C4E    mov         dword ptr fs:[eax],edx
 006E9C51    push        6E9C66
 006E9C56    lea         eax,[ebp-20]
 006E9C59    call        @UStrClr
 006E9C5E    ret
>006E9C5F    jmp         @HandleFinally
>006E9C64    jmp         006E9C56
 006E9C66    pop         ebx
 006E9C67    mov         esp,ebp
 006E9C69    pop         ebp
 006E9C6A    ret
*}
end;

//006E9C6C
procedure TFXPDFrame.CCIGridMouseDown(Sender:TObject; Button:UITypes.TMouseButton; Shift:Classes.TShiftState; X:Integer; Y:Integer);
begin
{*
 006E9C6C    push        ebp
 006E9C6D    mov         ebp,esp
 006E9C6F    add         esp,0FFFFFFD8
 006E9C72    push        ebx
 006E9C73    mov         byte ptr [ebp-9],cl
 006E9C76    mov         dword ptr [ebp-8],edx
 006E9C79    mov         dword ptr [ebp-4],eax
 006E9C7C    mov         eax,dword ptr [ebp-8]
 006E9C7F    mov         edx,dword ptr ds:[6B8E88];TStringGrid
 006E9C85    call        @AsClass
 006E9C8A    mov         edx,dword ptr [ebp-4]
 006E9C8D    mov         dword ptr [edx+84C],eax;TFXPDFrame.ActiveGrid:TStringGrid
 006E9C93    lea         ecx,[ebp-28]
 006E9C96    mov         edx,dword ptr [ebp+8]
 006E9C99    mov         eax,dword ptr [ebp+0C]
 006E9C9C    call        004830B8
 006E9CA1    lea         edx,[ebp-28]
 006E9CA4    lea         ecx,[ebp-1C]
 006E9CA7    mov         eax,dword ptr [ebp-4]
 006E9CAA    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006E9CB0    call        TControl.ClientToScreen
 006E9CB5    cmp         byte ptr [ebp-9],1
>006E9CB9    jne         006E9D93
 006E9CBF    mov         eax,dword ptr [ebp-4]
 006E9CC2    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006E9CC8    mov         dword ptr [ebp-20],eax
 006E9CCB    lea         eax,[ebp-10]
 006E9CCE    push        eax
 006E9CCF    lea         eax,[ebp-14]
 006E9CD2    push        eax
 006E9CD3    mov         ecx,dword ptr [ebp+8]
 006E9CD6    mov         edx,dword ptr [ebp+0C]
 006E9CD9    mov         eax,dword ptr [ebp-20]
 006E9CDC    call        TCustomDrawGrid.MouseToCell
 006E9CE1    cmp         dword ptr [ebp-10],0
>006E9CE5    je          006E9D93
 006E9CEB    cmp         dword ptr [ebp-14],0
>006E9CEF    je          006E9D93
 006E9CF5    mov         edx,dword ptr [ebp-10]
 006E9CF8    mov         eax,dword ptr [ebp-20]
 006E9CFB    call        006C0A44
 006E9D00    mov         edx,dword ptr [ebp-14]
 006E9D03    mov         eax,dword ptr [ebp-20]
 006E9D06    call        006C0E94
 006E9D0B    mov         eax,dword ptr [ebp-10]
 006E9D0E    mov         edx,dword ptr [ebp-20]
 006E9D11    cmp         eax,dword ptr [edx+2A8];TStringGrid.FCurrent:TGridCoord
>006E9D17    jne         006E9D93
 006E9D19    mov         eax,dword ptr [ebp-14]
 006E9D1C    mov         edx,dword ptr [ebp-20]
 006E9D1F    cmp         eax,dword ptr [edx+2AC];TStringGrid.FDefaultRowHeight:Integer
>006E9D25    jne         006E9D93
 006E9D27    mov         eax,dword ptr [ebp-10]
 006E9D2A    dec         eax
>006E9D2B    je          006E9D35
 006E9D2D    dec         eax
>006E9D2E    je          006E9D55
 006E9D30    dec         eax
>006E9D31    je          006E9D75
>006E9D33    jmp         006E9D93
 006E9D35    mov         edx,dword ptr [ebp-1C]
 006E9D38    add         edx,0A
>006E9D3B    jno         006E9D42
 006E9D3D    call        @IntOver
 006E9D42    mov         ecx,dword ptr [ebp-18]
 006E9D45    mov         eax,dword ptr [ebp-4]
 006E9D48    mov         eax,dword ptr [eax+4F0];TFXPDFrame.CCIFunctionPopUpMenu:TPopupMenu
 006E9D4E    mov         ebx,dword ptr [eax]
 006E9D50    call        dword ptr [ebx+54];TPopupMenu.Popup
>006E9D53    jmp         006E9D93
 006E9D55    mov         edx,dword ptr [ebp-1C]
 006E9D58    add         edx,0A
>006E9D5B    jno         006E9D62
 006E9D5D    call        @IntOver
 006E9D62    mov         ecx,dword ptr [ebp-18]
 006E9D65    mov         eax,dword ptr [ebp-4]
 006E9D68    mov         eax,dword ptr [eax+56C];TFXPDFrame.CCITypePopupMenu:TPopupMenu
 006E9D6E    mov         ebx,dword ptr [eax]
 006E9D70    call        dword ptr [ebx+54];TPopupMenu.Popup
>006E9D73    jmp         006E9D93
 006E9D75    mov         edx,dword ptr [ebp-1C]
 006E9D78    add         edx,0A
>006E9D7B    jno         006E9D82
 006E9D7D    call        @IntOver
 006E9D82    mov         ecx,dword ptr [ebp-18]
 006E9D85    mov         eax,dword ptr [ebp-4]
 006E9D88    mov         eax,dword ptr [eax+5E4];TFXPDFrame.ADOMonitoringPopupMenu:TPopupMenu
 006E9D8E    mov         ebx,dword ptr [eax]
 006E9D90    call        dword ptr [ebx+54];TPopupMenu.Popup
 006E9D93    pop         ebx
 006E9D94    mov         esp,ebp
 006E9D96    pop         ebp
 006E9D97    ret         0C
*}
end;

//006E9D9C
procedure TFXPDFrame.CCIGridClick(Sender:TObject);
begin
{*
 006E9D9C    push        ebp
 006E9D9D    mov         ebp,esp
 006E9D9F    add         esp,0FFFFFFF4
 006E9DA2    mov         dword ptr [ebp-8],edx
 006E9DA5    mov         dword ptr [ebp-4],eax
 006E9DA8    mov         eax,dword ptr [ebp-8]
 006E9DAB    mov         edx,dword ptr ds:[6B8E88];TStringGrid
 006E9DB1    call        @AsClass
 006E9DB6    mov         edx,dword ptr [ebp-4]
 006E9DB9    mov         dword ptr [edx+84C],eax;TFXPDFrame.ActiveGrid:TStringGrid
 006E9DBF    mov         eax,dword ptr [ebp-4]
 006E9DC2    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006E9DC8    mov         dword ptr [ebp-0C],eax
 006E9DCB    mov         eax,dword ptr [ebp-0C]
 006E9DCE    mov         eax,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 006E9DD4    cmp         eax,7
>006E9DD7    ja          006E9EBA
 006E9DDD    jmp         dword ptr [eax*4+6E9DE4]
 006E9DDD    dd          006E9EBA
 006E9DDD    dd          006E9E04
 006E9DDD    dd          006E9E22
 006E9DDD    dd          006E9E3D
 006E9DDD    dd          006E9E58
 006E9DDD    dd          006E9E71
 006E9DDD    dd          006E9E8A
 006E9DDD    dd          006E9EA3
 006E9E04    mov         edx,dword ptr ds:[6E9F04];0x400 gvar_006E9F04
 006E9E0A    mov         eax,dword ptr [ebp-0C]
 006E9E0D    not         edx
 006E9E0F    and         edx,dword ptr [eax+2D4];TStringGrid.FOptions:TGridOptions
 006E9E15    mov         eax,dword ptr [ebp-0C]
 006E9E18    call        TDrawGrid.SetOptions
>006E9E1D    jmp         006E9EBA
 006E9E22    mov         edx,dword ptr ds:[6E9F04];0x400 gvar_006E9F04
 006E9E28    mov         eax,dword ptr [ebp-0C]
 006E9E2B    not         edx
 006E9E2D    and         edx,dword ptr [eax+2D4];TStringGrid.FOptions:TGridOptions
 006E9E33    mov         eax,dword ptr [ebp-0C]
 006E9E36    call        TDrawGrid.SetOptions
>006E9E3B    jmp         006E9EBA
 006E9E3D    mov         edx,dword ptr ds:[6E9F04];0x400 gvar_006E9F04
 006E9E43    mov         eax,dword ptr [ebp-0C]
 006E9E46    not         edx
 006E9E48    and         edx,dword ptr [eax+2D4];TStringGrid.FOptions:TGridOptions
 006E9E4E    mov         eax,dword ptr [ebp-0C]
 006E9E51    call        TDrawGrid.SetOptions
>006E9E56    jmp         006E9EBA
 006E9E58    mov         edx,dword ptr ds:[6E9F04];0x400 gvar_006E9F04
 006E9E5E    mov         eax,dword ptr [ebp-0C]
 006E9E61    or          edx,dword ptr [eax+2D4];TStringGrid.FOptions:TGridOptions
 006E9E67    mov         eax,dword ptr [ebp-0C]
 006E9E6A    call        TDrawGrid.SetOptions
>006E9E6F    jmp         006E9EBA
 006E9E71    mov         edx,dword ptr ds:[6E9F04];0x400 gvar_006E9F04
 006E9E77    mov         eax,dword ptr [ebp-0C]
 006E9E7A    or          edx,dword ptr [eax+2D4];TStringGrid.FOptions:TGridOptions
 006E9E80    mov         eax,dword ptr [ebp-0C]
 006E9E83    call        TDrawGrid.SetOptions
>006E9E88    jmp         006E9EBA
 006E9E8A    mov         edx,dword ptr ds:[6E9F04];0x400 gvar_006E9F04
 006E9E90    mov         eax,dword ptr [ebp-0C]
 006E9E93    or          edx,dword ptr [eax+2D4];TStringGrid.FOptions:TGridOptions
 006E9E99    mov         eax,dword ptr [ebp-0C]
 006E9E9C    call        TDrawGrid.SetOptions
>006E9EA1    jmp         006E9EBA
 006E9EA3    mov         edx,dword ptr ds:[6E9F04];0x400 gvar_006E9F04
 006E9EA9    mov         eax,dword ptr [ebp-0C]
 006E9EAC    or          edx,dword ptr [eax+2D4];TStringGrid.FOptions:TGridOptions
 006E9EB2    mov         eax,dword ptr [ebp-0C]
 006E9EB5    call        TDrawGrid.SetOptions
 006E9EBA    mov         eax,dword ptr [ebp-4]
 006E9EBD    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006E9EC3    mov         eax,dword ptr [eax+2F4];TPageControl.FActivePage:TTabSheet
 006E9EC9    mov         edx,dword ptr [ebp-4]
 006E9ECC    cmp         eax,dword ptr [edx+4A8];TFXPDFrame.MCSheet:TTabSheet
>006E9ED2    jne         006E9EDC
 006E9ED4    mov         eax,dword ptr [ebp-4]
 006E9ED7    call        006E58E0
 006E9EDC    mov         eax,dword ptr [ebp-4]
 006E9EDF    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006E9EE5    mov         eax,dword ptr [eax+2F4];TPageControl.FActivePage:TTabSheet
 006E9EEB    mov         edx,dword ptr [ebp-4]
 006E9EEE    cmp         eax,dword ptr [edx+4C8];TFXPDFrame.IOCSheet:TTabSheet
>006E9EF4    jne         006E9EFE
 006E9EF6    mov         eax,dword ptr [ebp-4]
 006E9EF9    call        006E5E6C
 006E9EFE    mov         esp,ebp
 006E9F00    pop         ebp
 006E9F01    ret
*}
end;

//006E9F08
procedure TFXPDFrame.CCIFunctionPopupMenuClick(Sender:TObject);
begin
{*
 006E9F08    push        ebp
 006E9F09    mov         ebp,esp
 006E9F0B    add         esp,0FFFFFFF8
 006E9F0E    mov         dword ptr [ebp-8],edx
 006E9F11    mov         dword ptr [ebp-4],eax
 006E9F14    mov         eax,dword ptr [ebp-8]
 006E9F17    mov         edx,dword ptr ds:[5AA664];TMenuItem
 006E9F1D    call        @AsClass
 006E9F22    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 006E9F25    cmp         eax,0FF
>006E9F2A    jbe         006E9F31
 006E9F2C    call        @BoundErr
 006E9F31    push        eax
 006E9F32    mov         eax,dword ptr [ebp-4]
 006E9F35    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006E9F3B    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 006E9F41    cmp         ecx,0FF
>006E9F47    jbe         006E9F4E
 006E9F49    call        @BoundErr
 006E9F4E    mov         eax,dword ptr [ebp-4]
 006E9F51    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E9F57    mov         eax,dword ptr [ebp-4]
 006E9F5A    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E9F60    call        TFXPIO.SetCCIFunction
 006E9F65    mov         eax,dword ptr [ebp-4]
 006E9F68    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006E9F6E    mov         eax,dword ptr [eax+2F4];TPageControl.FActivePage:TTabSheet
 006E9F74    mov         edx,dword ptr [ebp-4]
 006E9F77    cmp         eax,dword ptr [edx+4A8];TFXPDFrame.MCSheet:TTabSheet
>006E9F7D    jne         006E9F87
 006E9F7F    mov         eax,dword ptr [ebp-4]
 006E9F82    call        006E58E0
 006E9F87    mov         eax,dword ptr [ebp-4]
 006E9F8A    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006E9F90    mov         eax,dword ptr [eax+2F4];TPageControl.FActivePage:TTabSheet
 006E9F96    mov         edx,dword ptr [ebp-4]
 006E9F99    cmp         eax,dword ptr [edx+4C8];TFXPDFrame.IOCSheet:TTabSheet
>006E9F9F    jne         006E9FA9
 006E9FA1    mov         eax,dword ptr [ebp-4]
 006E9FA4    call        006E5E6C
 006E9FA9    pop         ecx
 006E9FAA    pop         ecx
 006E9FAB    pop         ebp
 006E9FAC    ret
*}
end;

//006E9FB0
procedure TFXPDFrame.CCITypePopupMenuClick(Sender:TObject);
begin
{*
 006E9FB0    push        ebp
 006E9FB1    mov         ebp,esp
 006E9FB3    add         esp,0FFFFFFF8
 006E9FB6    mov         dword ptr [ebp-8],edx
 006E9FB9    mov         dword ptr [ebp-4],eax
 006E9FBC    mov         eax,dword ptr [ebp-8]
 006E9FBF    mov         edx,dword ptr ds:[5AA664];TMenuItem
 006E9FC5    call        @AsClass
 006E9FCA    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 006E9FCD    push        eax
 006E9FCE    mov         eax,dword ptr [ebp-4]
 006E9FD1    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006E9FD7    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 006E9FDD    cmp         ecx,0FF
>006E9FE3    jbe         006E9FEA
 006E9FE5    call        @BoundErr
 006E9FEA    mov         eax,dword ptr [ebp-4]
 006E9FED    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006E9FF3    mov         eax,dword ptr [ebp-4]
 006E9FF6    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006E9FFC    call        TFXPIO.SetCCIType
 006EA001    mov         eax,dword ptr [ebp-4]
 006EA004    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006EA00A    mov         eax,dword ptr [eax+2F4];TPageControl.FActivePage:TTabSheet
 006EA010    mov         edx,dword ptr [ebp-4]
 006EA013    cmp         eax,dword ptr [edx+4A8];TFXPDFrame.MCSheet:TTabSheet
>006EA019    jne         006EA023
 006EA01B    mov         eax,dword ptr [ebp-4]
 006EA01E    call        006E58E0
 006EA023    mov         eax,dword ptr [ebp-4]
 006EA026    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006EA02C    mov         eax,dword ptr [eax+2F4];TPageControl.FActivePage:TTabSheet
 006EA032    mov         edx,dword ptr [ebp-4]
 006EA035    cmp         eax,dword ptr [edx+4C8];TFXPDFrame.IOCSheet:TTabSheet
>006EA03B    jne         006EA045
 006EA03D    mov         eax,dword ptr [ebp-4]
 006EA040    call        006E5E6C
 006EA045    pop         ecx
 006EA046    pop         ecx
 006EA047    pop         ebp
 006EA048    ret
*}
end;

//006EA04C
procedure TFXPDFrame.CCIGridSetEditText(Sender:TObject; ACol:Integer; Value:string; ARow:Integer);
begin
{*
 006EA04C    push        ebp
 006EA04D    mov         ebp,esp
 006EA04F    add         esp,0FFFFFEEC
 006EA055    push        ebx
 006EA056    xor         ebx,ebx
 006EA058    mov         dword ptr [ebp-114],ebx
 006EA05E    mov         dword ptr [ebp-8],ecx
 006EA061    mov         dword ptr [ebp-10],edx
 006EA064    mov         dword ptr [ebp-4],eax
 006EA067    xor         eax,eax
 006EA069    push        ebp
 006EA06A    push        6EA231
 006EA06F    push        dword ptr fs:[eax]
 006EA072    mov         dword ptr fs:[eax],esp
 006EA075    mov         eax,dword ptr [ebp-8]
 006EA078    sub         eax,4
>006EA07B    je          006EA093
 006EA07D    dec         eax
>006EA07E    je          006EA0E2
 006EA080    dec         eax
>006EA081    je          006EA131
 006EA087    dec         eax
>006EA088    je          006EA17D
>006EA08E    jmp         006EA1D4
 006EA093    lea         edx,[ebp-0C]
 006EA096    mov         eax,dword ptr [ebp+8]
 006EA099    call        0041E5A0
 006EA09E    test        al,al
>006EA0A0    je          006EA1D4
 006EA0A6    mov         eax,dword ptr [ebp-0C]
 006EA0A9    cmp         eax,0FFFF
>006EA0AE    jbe         006EA0B5
 006EA0B0    call        @BoundErr
 006EA0B5    push        eax
 006EA0B6    mov         ecx,dword ptr [ebp+0C]
 006EA0B9    cmp         ecx,0FF
>006EA0BF    jbe         006EA0C6
 006EA0C1    call        @BoundErr
 006EA0C6    mov         eax,dword ptr [ebp-4]
 006EA0C9    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EA0CF    mov         eax,dword ptr [ebp-4]
 006EA0D2    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EA0D8    call        TFXPIO.SetCCICtrlGroupA
>006EA0DD    jmp         006EA1D4
 006EA0E2    lea         edx,[ebp-0C]
 006EA0E5    mov         eax,dword ptr [ebp+8]
 006EA0E8    call        0041E5A0
 006EA0ED    test        al,al
>006EA0EF    je          006EA1D4
 006EA0F5    mov         eax,dword ptr [ebp-0C]
 006EA0F8    cmp         eax,0FFFF
>006EA0FD    jbe         006EA104
 006EA0FF    call        @BoundErr
 006EA104    push        eax
 006EA105    mov         ecx,dword ptr [ebp+0C]
 006EA108    cmp         ecx,0FF
>006EA10E    jbe         006EA115
 006EA110    call        @BoundErr
 006EA115    mov         eax,dword ptr [ebp-4]
 006EA118    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EA11E    mov         eax,dword ptr [ebp-4]
 006EA121    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EA127    call        TFXPIO.SetCCICtrlGroupB
>006EA12C    jmp         006EA1D4
 006EA131    lea         edx,[ebp-0C]
 006EA134    mov         eax,dword ptr [ebp+8]
 006EA137    call        0041E5A0
 006EA13C    test        al,al
>006EA13E    je          006EA1D4
 006EA144    mov         eax,dword ptr [ebp-0C]
 006EA147    cmp         eax,0FFFF
>006EA14C    jbe         006EA153
 006EA14E    call        @BoundErr
 006EA153    push        eax
 006EA154    mov         ecx,dword ptr [ebp+0C]
 006EA157    cmp         ecx,0FF
>006EA15D    jbe         006EA164
 006EA15F    call        @BoundErr
 006EA164    mov         eax,dword ptr [ebp-4]
 006EA167    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EA16D    mov         eax,dword ptr [ebp-4]
 006EA170    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EA176    call        TFXPIO.SetCCICtrlGroupC
>006EA17B    jmp         006EA1D4
 006EA17D    lea         eax,[ebp-114]
 006EA183    mov         edx,dword ptr [ebp+8]
 006EA186    mov         ecx,0
 006EA18B    call        @LStrFromUStr
 006EA190    mov         edx,dword ptr [ebp-114]
 006EA196    lea         eax,[ebp-110]
 006EA19C    mov         ecx,0FF
 006EA1A1    call        @LStrToString
 006EA1A6    lea         eax,[ebp-110]
 006EA1AC    push        eax
 006EA1AD    mov         ecx,dword ptr [ebp+0C]
 006EA1B0    cmp         ecx,0FF
>006EA1B6    jbe         006EA1BD
 006EA1B8    call        @BoundErr
 006EA1BD    mov         eax,dword ptr [ebp-4]
 006EA1C0    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EA1C6    mov         eax,dword ptr [ebp-4]
 006EA1C9    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EA1CF    call        TFXPIO.SetCCIDescription
 006EA1D4    mov         eax,dword ptr [ebp-4]
 006EA1D7    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006EA1DD    mov         eax,dword ptr [eax+2F4];TPageControl.FActivePage:TTabSheet
 006EA1E3    mov         edx,dword ptr [ebp-4]
 006EA1E6    cmp         eax,dword ptr [edx+4A8];TFXPDFrame.MCSheet:TTabSheet
>006EA1EC    jne         006EA1F6
 006EA1EE    mov         eax,dword ptr [ebp-4]
 006EA1F1    call        006E58E0
 006EA1F6    mov         eax,dword ptr [ebp-4]
 006EA1F9    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006EA1FF    mov         eax,dword ptr [eax+2F4];TPageControl.FActivePage:TTabSheet
 006EA205    mov         edx,dword ptr [ebp-4]
 006EA208    cmp         eax,dword ptr [edx+4C8];TFXPDFrame.IOCSheet:TTabSheet
>006EA20E    jne         006EA218
 006EA210    mov         eax,dword ptr [ebp-4]
 006EA213    call        006E5E6C
 006EA218    xor         eax,eax
 006EA21A    pop         edx
 006EA21B    pop         ecx
 006EA21C    pop         ecx
 006EA21D    mov         dword ptr fs:[eax],edx
 006EA220    push        6EA238
 006EA225    lea         eax,[ebp-114]
 006EA22B    call        @LStrClr
 006EA230    ret
>006EA231    jmp         @HandleFinally
>006EA236    jmp         006EA225
 006EA238    pop         ebx
 006EA239    mov         esp,ebp
 006EA23B    pop         ebp
 006EA23C    ret         8
*}
end;

//006EA240
procedure TFXPDFrame.OutFunctionPopupMenuClick(Sender:TObject);
begin
{*
 006EA240    push        ebp
 006EA241    mov         ebp,esp
 006EA243    add         esp,0FFFFFFF8
 006EA246    mov         dword ptr [ebp-8],edx
 006EA249    mov         dword ptr [ebp-4],eax
 006EA24C    mov         eax,dword ptr [ebp-4]
 006EA24F    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EA255    mov         edx,dword ptr [ebp-4]
 006EA258    cmp         eax,dword ptr [edx+4B4];TFXPDFrame.CCOGridMC:TStringGrid
>006EA25E    je          006EA274
 006EA260    mov         eax,dword ptr [ebp-4]
 006EA263    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EA269    mov         edx,dword ptr [ebp-4]
 006EA26C    cmp         eax,dword ptr [edx+4DC];TFXPDFrame.CCOGrid:TStringGrid
>006EA272    jne         006EA281
 006EA274    mov         edx,dword ptr [ebp-8]
 006EA277    mov         eax,dword ptr [ebp-4]
 006EA27A    call        TFXPDFrame.CCOFunctionPopupMenuClick
>006EA27F    jmp         006EA2C0
 006EA281    mov         eax,dword ptr [ebp-4]
 006EA284    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EA28A    mov         edx,dword ptr [ebp-4]
 006EA28D    cmp         eax,dword ptr [edx+4B8];TFXPDFrame.ADOGridMC:TStringGrid
>006EA293    je          006EA2A9
 006EA295    mov         eax,dword ptr [ebp-4]
 006EA298    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EA29E    mov         edx,dword ptr [ebp-4]
 006EA2A1    cmp         eax,dword ptr [edx+4E0];TFXPDFrame.ADOGrid:TStringGrid
>006EA2A7    jne         006EA2B6
 006EA2A9    mov         edx,dword ptr [ebp-8]
 006EA2AC    mov         eax,dword ptr [ebp-4]
 006EA2AF    call        TFXPDFrame.ADOFunctionPopupMenuClick
>006EA2B4    jmp         006EA2C0
 006EA2B6    mov         eax,6EA2D0;'Grid not set at entry in OutFunctionPopupMenuClick'
 006EA2BB    call        ShowMessage
 006EA2C0    pop         ecx
 006EA2C1    pop         ecx
 006EA2C2    pop         ebp
 006EA2C3    ret
*}
end;

//006EA338
procedure TFXPDFrame.CCOGridMouseDown(Sender:TObject; Button:UITypes.TMouseButton; Shift:Classes.TShiftState; X:Integer; Y:Integer);
begin
{*
 006EA338    push        ebp
 006EA339    mov         ebp,esp
 006EA33B    add         esp,0FFFFFFD8
 006EA33E    push        ebx
 006EA33F    mov         byte ptr [ebp-9],cl
 006EA342    mov         dword ptr [ebp-8],edx
 006EA345    mov         dword ptr [ebp-4],eax
 006EA348    mov         eax,dword ptr [ebp-8]
 006EA34B    mov         edx,dword ptr ds:[6B8E88];TStringGrid
 006EA351    call        @AsClass
 006EA356    mov         edx,dword ptr [ebp-4]
 006EA359    mov         dword ptr [edx+84C],eax;TFXPDFrame.ActiveGrid:TStringGrid
 006EA35F    lea         ecx,[ebp-28]
 006EA362    mov         edx,dword ptr [ebp+8]
 006EA365    mov         eax,dword ptr [ebp+0C]
 006EA368    call        004830B8
 006EA36D    lea         edx,[ebp-28]
 006EA370    lea         ecx,[ebp-1C]
 006EA373    mov         eax,dword ptr [ebp-4]
 006EA376    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EA37C    call        TControl.ClientToScreen
 006EA381    cmp         byte ptr [ebp-9],1
>006EA385    jne         006EA492
 006EA38B    mov         eax,dword ptr [ebp-4]
 006EA38E    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EA394    mov         dword ptr [ebp-20],eax
 006EA397    lea         eax,[ebp-10]
 006EA39A    push        eax
 006EA39B    lea         eax,[ebp-14]
 006EA39E    push        eax
 006EA39F    mov         ecx,dword ptr [ebp+8]
 006EA3A2    mov         edx,dword ptr [ebp+0C]
 006EA3A5    mov         eax,dword ptr [ebp-20]
 006EA3A8    call        TCustomDrawGrid.MouseToCell
 006EA3AD    cmp         dword ptr [ebp-10],0
>006EA3B1    je          006EA492
 006EA3B7    cmp         dword ptr [ebp-14],0
>006EA3BB    je          006EA492
 006EA3C1    mov         edx,dword ptr [ebp-10]
 006EA3C4    mov         eax,dword ptr [ebp-20]
 006EA3C7    call        006C0A44
 006EA3CC    mov         edx,dword ptr [ebp-14]
 006EA3CF    mov         eax,dword ptr [ebp-20]
 006EA3D2    call        006C0E94
 006EA3D7    mov         eax,dword ptr [ebp-10]
 006EA3DA    mov         edx,dword ptr [ebp-20]
 006EA3DD    cmp         eax,dword ptr [edx+2A8];TStringGrid.FCurrent:TGridCoord
>006EA3E3    jne         006EA492
 006EA3E9    mov         eax,dword ptr [ebp-14]
 006EA3EC    mov         edx,dword ptr [ebp-20]
 006EA3EF    cmp         eax,dword ptr [edx+2AC];TStringGrid.FDefaultRowHeight:Integer
>006EA3F5    jne         006EA492
 006EA3FB    mov         eax,dword ptr [ebp-10]
 006EA3FE    dec         eax
>006EA3FF    je          006EA409
 006EA401    dec         eax
>006EA402    je          006EA429
>006EA404    jmp         006EA492
 006EA409    mov         edx,dword ptr [ebp-1C]
 006EA40C    add         edx,0A
>006EA40F    jno         006EA416
 006EA411    call        @IntOver
 006EA416    mov         ecx,dword ptr [ebp-18]
 006EA419    mov         eax,dword ptr [ebp-4]
 006EA41C    mov         eax,dword ptr [eax+79C];TFXPDFrame.OutFunctionPopupMenu:TPopupMenu
 006EA422    mov         ebx,dword ptr [eax]
 006EA424    call        dword ptr [ebx+54];TPopupMenu.Popup
>006EA427    jmp         006EA492
 006EA429    mov         eax,dword ptr [ebp-14]
 006EA42C    cmp         eax,0FF
>006EA431    jbe         006EA438
 006EA433    call        @BoundErr
 006EA438    push        eax
 006EA439    mov         eax,dword ptr [ebp-4]
 006EA43C    mov         cl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EA442    xor         edx,edx
 006EA444    mov         eax,dword ptr [ebp-4]
 006EA447    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EA44D    call        TFXPIO.IsOnlyGeneralOutput
 006EA452    test        al,al
>006EA454    jne         006EA492
 006EA456    mov         eax,dword ptr [ebp-14]
 006EA459    cmp         eax,0FF
>006EA45E    jbe         006EA465
 006EA460    call        @BoundErr
 006EA465    push        eax
 006EA466    mov         eax,dword ptr [ebp-4]
 006EA469    mov         cl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EA46F    xor         edx,edx
 006EA471    mov         eax,dword ptr [ebp-4]
 006EA474    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EA47A    call        TFXPIO.IsGeneralOrLocalOutput
 006EA47F    mov         ecx,eax
 006EA481    mov         eax,dword ptr [ebp-20]
 006EA484    mov         edx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 006EA48A    mov         eax,dword ptr [ebp-4]
 006EA48D    call        TFXPDFrame.CCOSelectControlZones
 006EA492    pop         ebx
 006EA493    mov         esp,ebp
 006EA495    pop         ebp
 006EA496    ret         0C
*}
end;

//006EA49C
procedure TFXPDFrame.CCOGridClick(Sender:TObject);
begin
{*
 006EA49C    push        ebp
 006EA49D    mov         ebp,esp
 006EA49F    add         esp,0FFFFFFF8
 006EA4A2    mov         dword ptr [ebp-8],edx
 006EA4A5    mov         dword ptr [ebp-4],eax
 006EA4A8    mov         eax,dword ptr [ebp-8]
 006EA4AB    mov         edx,dword ptr ds:[6B8E88];TStringGrid
 006EA4B1    call        @AsClass
 006EA4B6    mov         edx,dword ptr [ebp-4]
 006EA4B9    mov         dword ptr [edx+84C],eax;TFXPDFrame.ActiveGrid:TStringGrid
 006EA4BF    mov         eax,dword ptr [ebp-4]
 006EA4C2    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EA4C8    mov         eax,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 006EA4CE    dec         eax
>006EA4CF    je          006EA4D9
 006EA4D1    dec         eax
>006EA4D2    je          006EA500
 006EA4D4    dec         eax
>006EA4D5    je          006EA525
>006EA4D7    jmp         006EA548
 006EA4D9    mov         eax,dword ptr [ebp-4]
 006EA4DC    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EA4E2    mov         edx,dword ptr ds:[6EA54C];0x400 gvar_006EA54C
 006EA4E8    not         edx
 006EA4EA    and         edx,dword ptr [eax+2D4];TStringGrid.FOptions:TGridOptions
 006EA4F0    mov         eax,dword ptr [ebp-4]
 006EA4F3    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EA4F9    call        TDrawGrid.SetOptions
>006EA4FE    jmp         006EA548
 006EA500    mov         eax,dword ptr [ebp-4]
 006EA503    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EA509    mov         edx,dword ptr [eax+2D4];TStringGrid.FOptions:TGridOptions
 006EA50F    or          edx,dword ptr ds:[6EA54C];0x400 gvar_006EA54C
 006EA515    mov         eax,dword ptr [ebp-4]
 006EA518    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EA51E    call        TDrawGrid.SetOptions
>006EA523    jmp         006EA548
 006EA525    mov         eax,dword ptr [ebp-4]
 006EA528    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EA52E    mov         edx,dword ptr [eax+2D4];TStringGrid.FOptions:TGridOptions
 006EA534    or          edx,dword ptr ds:[6EA54C];0x400 gvar_006EA54C
 006EA53A    mov         eax,dword ptr [ebp-4]
 006EA53D    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EA543    call        TDrawGrid.SetOptions
 006EA548    pop         ecx
 006EA549    pop         ecx
 006EA54A    pop         ebp
 006EA54B    ret
*}
end;

//006EA550
procedure TFXPDFrame.CCOFunctionPopupMenuClick(Sender:TObject);
begin
{*
 006EA550    push        ebp
 006EA551    mov         ebp,esp
 006EA553    add         esp,0FFFFFFF8
 006EA556    mov         dword ptr [ebp-8],edx
 006EA559    mov         dword ptr [ebp-4],eax
 006EA55C    mov         eax,dword ptr [ebp-8]
 006EA55F    mov         edx,dword ptr ds:[5AA664];TMenuItem
 006EA565    call        @AsClass
 006EA56A    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 006EA56D    cmp         eax,0FF
>006EA572    jbe         006EA579
 006EA574    call        @BoundErr
 006EA579    push        eax
 006EA57A    mov         eax,dword ptr [ebp-4]
 006EA57D    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EA583    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 006EA589    cmp         ecx,0FF
>006EA58F    jbe         006EA596
 006EA591    call        @BoundErr
 006EA596    mov         eax,dword ptr [ebp-4]
 006EA599    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EA59F    mov         eax,dword ptr [ebp-4]
 006EA5A2    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EA5A8    call        TFXPIO.SetCCOFunction
 006EA5AD    mov         eax,dword ptr [ebp-4]
 006EA5B0    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006EA5B6    mov         eax,dword ptr [eax+2F4];TPageControl.FActivePage:TTabSheet
 006EA5BC    mov         edx,dword ptr [ebp-4]
 006EA5BF    cmp         eax,dword ptr [edx+4A8];TFXPDFrame.MCSheet:TTabSheet
>006EA5C5    jne         006EA5CF
 006EA5C7    mov         eax,dword ptr [ebp-4]
 006EA5CA    call        006E58E0
 006EA5CF    mov         eax,dword ptr [ebp-4]
 006EA5D2    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006EA5D8    mov         eax,dword ptr [eax+2F4];TPageControl.FActivePage:TTabSheet
 006EA5DE    mov         edx,dword ptr [ebp-4]
 006EA5E1    cmp         eax,dword ptr [edx+4C8];TFXPDFrame.IOCSheet:TTabSheet
>006EA5E7    jne         006EA5F1
 006EA5E9    mov         eax,dword ptr [ebp-4]
 006EA5EC    call        006E5E6C
 006EA5F1    pop         ecx
 006EA5F2    pop         ecx
 006EA5F3    pop         ebp
 006EA5F4    ret
*}
end;

//006EA5F8
procedure TFXPDFrame.CCOSelectControlZones(Row:Integer; AllowOnlyGeneralOrLocal:Boolean);
begin
{*
 006EA5F8    push        ebp
 006EA5F9    mov         ebp,esp
 006EA5FB    add         esp,0FFFFFF70
 006EA601    mov         byte ptr [ebp-5],cl
 006EA604    mov         dword ptr [ebp-0C],edx
 006EA607    mov         dword ptr [ebp-4],eax
 006EA60A    lea         eax,[ebp-8E]
 006EA610    push        eax
 006EA611    mov         eax,dword ptr [ebp-4]
 006EA614    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EA61A    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 006EA620    cmp         ecx,0FF
>006EA626    jbe         006EA62D
 006EA628    call        @BoundErr
 006EA62D    mov         eax,dword ptr [ebp-4]
 006EA630    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EA636    mov         eax,dword ptr [ebp-4]
 006EA639    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EA63F    call        TFXPIO.GetCCOCtrlGroups
 006EA644    lea         edx,[ebp-8E]
 006EA64A    mov         eax,[007C47F4];^gvar_00901F4C:TFXCGroupsDlg
 006EA64F    mov         eax,dword ptr [eax]
 006EA651    mov         cl,byte ptr [ebp-5]
 006EA654    call        TFXCGroupsDlg.SetCheckMarks
 006EA659    mov         eax,[007C47F4];^gvar_00901F4C:TFXCGroupsDlg
 006EA65E    mov         eax,dword ptr [eax]
 006EA660    mov         edx,dword ptr [eax]
 006EA662    call        dword ptr [edx+13C]
 006EA668    dec         eax
>006EA669    jne         006EA6B7
 006EA66B    lea         edx,[ebp-8E]
 006EA671    mov         eax,[007C47F4];^gvar_00901F4C:TFXCGroupsDlg
 006EA676    mov         eax,dword ptr [eax]
 006EA678    call        TFXCGroupsDlg.GetCheckMarks
 006EA67D    lea         eax,[ebp-8E]
 006EA683    push        eax
 006EA684    mov         eax,dword ptr [ebp-4]
 006EA687    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EA68D    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 006EA693    cmp         ecx,0FF
>006EA699    jbe         006EA6A0
 006EA69B    call        @BoundErr
 006EA6A0    mov         eax,dword ptr [ebp-4]
 006EA6A3    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EA6A9    mov         eax,dword ptr [ebp-4]
 006EA6AC    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EA6B2    call        TFXPIO.SetCCOCtrlGroups
 006EA6B7    mov         eax,dword ptr [ebp-4]
 006EA6BA    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006EA6C0    mov         eax,dword ptr [eax+2F4];TPageControl.FActivePage:TTabSheet
 006EA6C6    mov         edx,dword ptr [ebp-4]
 006EA6C9    cmp         eax,dword ptr [edx+4A8];TFXPDFrame.MCSheet:TTabSheet
>006EA6CF    jne         006EA6D9
 006EA6D1    mov         eax,dword ptr [ebp-4]
 006EA6D4    call        006E58E0
 006EA6D9    mov         eax,dword ptr [ebp-4]
 006EA6DC    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006EA6E2    mov         eax,dword ptr [eax+2F4];TPageControl.FActivePage:TTabSheet
 006EA6E8    mov         edx,dword ptr [ebp-4]
 006EA6EB    cmp         eax,dword ptr [edx+4C8];TFXPDFrame.IOCSheet:TTabSheet
>006EA6F1    jne         006EA6FB
 006EA6F3    mov         eax,dword ptr [ebp-4]
 006EA6F6    call        006E5E6C
 006EA6FB    mov         esp,ebp
 006EA6FD    pop         ebp
 006EA6FE    ret
*}
end;

//006EA700
procedure TFXPDFrame.CCOGridSetEditText(Sender:TObject; ACol:Integer; Value:string; ARow:Integer);
begin
{*
 006EA700    push        ebp
 006EA701    mov         ebp,esp
 006EA703    add         esp,0FFFFFE6C
 006EA709    push        ebx
 006EA70A    xor         ebx,ebx
 006EA70C    mov         dword ptr [ebp-194],ebx
 006EA712    mov         dword ptr [ebp-8],ecx
 006EA715    mov         dword ptr [ebp-0C],edx
 006EA718    mov         dword ptr [ebp-4],eax
 006EA71B    xor         eax,eax
 006EA71D    push        ebp
 006EA71E    push        6EA8AD
 006EA723    push        dword ptr fs:[eax]
 006EA726    mov         dword ptr fs:[eax],esp
 006EA729    mov         eax,dword ptr [ebp-8]
 006EA72C    sub         eax,2
>006EA72F    je          006EA73D
 006EA731    dec         eax
>006EA732    je          006EA7F9
>006EA738    jmp         006EA850
 006EA73D    mov         eax,dword ptr [ebp+0C]
 006EA740    cmp         eax,0FF
>006EA745    jbe         006EA74C
 006EA747    call        @BoundErr
 006EA74C    push        eax
 006EA74D    mov         eax,dword ptr [ebp-4]
 006EA750    mov         cl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EA756    xor         edx,edx
 006EA758    mov         eax,dword ptr [ebp-4]
 006EA75B    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EA761    call        TFXPIO.IsOnlyGeneralOutput
 006EA766    test        al,al
>006EA768    jne         006EA850
 006EA76E    mov         eax,dword ptr [ebp+0C]
 006EA771    cmp         eax,0FF
>006EA776    jbe         006EA77D
 006EA778    call        @BoundErr
 006EA77D    push        eax
 006EA77E    mov         eax,dword ptr [ebp-4]
 006EA781    mov         cl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EA787    xor         edx,edx
 006EA789    mov         eax,dword ptr [ebp-4]
 006EA78C    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EA792    call        TFXPIO.IsGeneralOrLocalOutput
 006EA797    test        al,al
>006EA799    jne         006EA850
 006EA79F    lea         edx,[ebp-8E]
 006EA7A5    mov         eax,dword ptr [ebp+8]
 006EA7A8    call        00695720
 006EA7AD    test        al,al
>006EA7AF    je          006EA7E1
 006EA7B1    lea         eax,[ebp-8E]
 006EA7B7    push        eax
 006EA7B8    mov         ecx,dword ptr [ebp+0C]
 006EA7BB    cmp         ecx,0FF
>006EA7C1    jbe         006EA7C8
 006EA7C3    call        @BoundErr
 006EA7C8    mov         eax,dword ptr [ebp-4]
 006EA7CB    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EA7D1    mov         eax,dword ptr [ebp-4]
 006EA7D4    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EA7DA    call        TFXPIO.SetCCOCtrlGroups
>006EA7DF    jmp         006EA850
 006EA7E1    mov         ecx,6EA8C8;'Error in Control Groups'
 006EA7E6    mov         dl,1
 006EA7E8    mov         eax,[004174D0];Exception
 006EA7ED    call        Exception.Create;Exception.Create
 006EA7F2    call        @RaiseExcept
>006EA7F7    jmp         006EA850
 006EA7F9    lea         eax,[ebp-194]
 006EA7FF    mov         edx,dword ptr [ebp+8]
 006EA802    mov         ecx,0
 006EA807    call        @LStrFromUStr
 006EA80C    mov         edx,dword ptr [ebp-194]
 006EA812    lea         eax,[ebp-190]
 006EA818    mov         ecx,0FF
 006EA81D    call        @LStrToString
 006EA822    lea         eax,[ebp-190]
 006EA828    push        eax
 006EA829    mov         ecx,dword ptr [ebp+0C]
 006EA82C    cmp         ecx,0FF
>006EA832    jbe         006EA839
 006EA834    call        @BoundErr
 006EA839    mov         eax,dword ptr [ebp-4]
 006EA83C    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EA842    mov         eax,dword ptr [ebp-4]
 006EA845    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EA84B    call        TFXPIO.SetCCODescription
 006EA850    mov         eax,dword ptr [ebp-4]
 006EA853    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006EA859    mov         eax,dword ptr [eax+2F4];TPageControl.FActivePage:TTabSheet
 006EA85F    mov         edx,dword ptr [ebp-4]
 006EA862    cmp         eax,dword ptr [edx+4A8];TFXPDFrame.MCSheet:TTabSheet
>006EA868    jne         006EA872
 006EA86A    mov         eax,dword ptr [ebp-4]
 006EA86D    call        006E58E0
 006EA872    mov         eax,dword ptr [ebp-4]
 006EA875    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006EA87B    mov         eax,dword ptr [eax+2F4];TPageControl.FActivePage:TTabSheet
 006EA881    mov         edx,dword ptr [ebp-4]
 006EA884    cmp         eax,dword ptr [edx+4C8];TFXPDFrame.IOCSheet:TTabSheet
>006EA88A    jne         006EA894
 006EA88C    mov         eax,dword ptr [ebp-4]
 006EA88F    call        006E5E6C
 006EA894    xor         eax,eax
 006EA896    pop         edx
 006EA897    pop         ecx
 006EA898    pop         ecx
 006EA899    mov         dword ptr fs:[eax],edx
 006EA89C    push        6EA8B4
 006EA8A1    lea         eax,[ebp-194]
 006EA8A7    call        @LStrClr
 006EA8AC    ret
>006EA8AD    jmp         @HandleFinally
>006EA8B2    jmp         006EA8A1
 006EA8B4    pop         ebx
 006EA8B5    mov         esp,ebp
 006EA8B7    pop         ebp
 006EA8B8    ret         8
*}
end;

//006EA8F8
procedure TFXPDFrame.ADOGridMouseDown(Sender:TObject; Button:UITypes.TMouseButton; Shift:Classes.TShiftState; X:Integer; Y:Integer);
begin
{*
 006EA8F8    push        ebp
 006EA8F9    mov         ebp,esp
 006EA8FB    add         esp,0FFFFFFD8
 006EA8FE    push        ebx
 006EA8FF    mov         byte ptr [ebp-9],cl
 006EA902    mov         dword ptr [ebp-8],edx
 006EA905    mov         dword ptr [ebp-4],eax
 006EA908    mov         eax,dword ptr [ebp-8]
 006EA90B    mov         edx,dword ptr ds:[6B8E88];TStringGrid
 006EA911    call        @AsClass
 006EA916    mov         edx,dword ptr [ebp-4]
 006EA919    mov         dword ptr [edx+84C],eax;TFXPDFrame.ActiveGrid:TStringGrid
 006EA91F    lea         ecx,[ebp-28]
 006EA922    mov         edx,dword ptr [ebp+8]
 006EA925    mov         eax,dword ptr [ebp+0C]
 006EA928    call        004830B8
 006EA92D    lea         edx,[ebp-28]
 006EA930    lea         ecx,[ebp-1C]
 006EA933    mov         eax,dword ptr [ebp-4]
 006EA936    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EA93C    call        TControl.ClientToScreen
 006EA941    cmp         byte ptr [ebp-9],1
>006EA945    jne         006EAA9E
 006EA94B    mov         eax,dword ptr [ebp-4]
 006EA94E    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EA954    mov         dword ptr [ebp-20],eax
 006EA957    lea         eax,[ebp-10]
 006EA95A    push        eax
 006EA95B    lea         eax,[ebp-14]
 006EA95E    push        eax
 006EA95F    mov         ecx,dword ptr [ebp+8]
 006EA962    mov         edx,dword ptr [ebp+0C]
 006EA965    mov         eax,dword ptr [ebp-20]
 006EA968    call        TCustomDrawGrid.MouseToCell
 006EA96D    cmp         dword ptr [ebp-10],0
>006EA971    je          006EAA9E
 006EA977    cmp         dword ptr [ebp-14],0
>006EA97B    je          006EAA9E
 006EA981    mov         edx,dword ptr [ebp-10]
 006EA984    mov         eax,dword ptr [ebp-20]
 006EA987    call        006C0A44
 006EA98C    mov         edx,dword ptr [ebp-14]
 006EA98F    mov         eax,dword ptr [ebp-20]
 006EA992    call        006C0E94
 006EA997    mov         eax,dword ptr [ebp-10]
 006EA99A    mov         edx,dword ptr [ebp-20]
 006EA99D    cmp         eax,dword ptr [edx+2A8];TStringGrid.FCurrent:TGridCoord
>006EA9A3    jne         006EAA9E
 006EA9A9    mov         eax,dword ptr [ebp-14]
 006EA9AC    mov         edx,dword ptr [ebp-20]
 006EA9AF    cmp         eax,dword ptr [edx+2AC];TStringGrid.FDefaultRowHeight:Integer
>006EA9B5    jne         006EAA9E
 006EA9BB    mov         eax,dword ptr [ebp-10]
 006EA9BE    dec         eax
>006EA9BF    je          006EA9CF
 006EA9C1    dec         eax
>006EA9C2    je          006EA9F2
 006EA9C4    dec         eax
>006EA9C5    je          006EAA15
 006EA9C7    dec         eax
>006EA9C8    je          006EAA35
>006EA9CA    jmp         006EAA9E
 006EA9CF    mov         edx,dword ptr [ebp-1C]
 006EA9D2    add         edx,0A
>006EA9D5    jno         006EA9DC
 006EA9D7    call        @IntOver
 006EA9DC    mov         ecx,dword ptr [ebp-18]
 006EA9DF    mov         eax,dword ptr [ebp-4]
 006EA9E2    mov         eax,dword ptr [eax+79C];TFXPDFrame.OutFunctionPopupMenu:TPopupMenu
 006EA9E8    mov         ebx,dword ptr [eax]
 006EA9EA    call        dword ptr [ebx+54];TPopupMenu.Popup
>006EA9ED    jmp         006EAA9E
 006EA9F2    mov         edx,dword ptr [ebp-1C]
 006EA9F5    add         edx,0A
>006EA9F8    jno         006EA9FF
 006EA9FA    call        @IntOver
 006EA9FF    mov         ecx,dword ptr [ebp-18]
 006EAA02    mov         eax,dword ptr [ebp-4]
 006EAA05    mov         eax,dword ptr [eax+788];TFXPDFrame.ADOModePopupMenu:TPopupMenu
 006EAA0B    mov         ebx,dword ptr [eax]
 006EAA0D    call        dword ptr [ebx+54];TPopupMenu.Popup
>006EAA10    jmp         006EAA9E
 006EAA15    mov         edx,dword ptr [ebp-1C]
 006EAA18    add         edx,0A
>006EAA1B    jno         006EAA22
 006EAA1D    call        @IntOver
 006EAA22    mov         ecx,dword ptr [ebp-18]
 006EAA25    mov         eax,dword ptr [ebp-4]
 006EAA28    mov         eax,dword ptr [eax+5E4];TFXPDFrame.ADOMonitoringPopupMenu:TPopupMenu
 006EAA2E    mov         ebx,dword ptr [eax]
 006EAA30    call        dword ptr [ebx+54];TPopupMenu.Popup
>006EAA33    jmp         006EAA9E
 006EAA35    mov         eax,dword ptr [ebp-14]
 006EAA38    cmp         eax,0FF
>006EAA3D    jbe         006EAA44
 006EAA3F    call        @BoundErr
 006EAA44    push        eax
 006EAA45    mov         eax,dword ptr [ebp-4]
 006EAA48    mov         cl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EAA4E    mov         dl,1
 006EAA50    mov         eax,dword ptr [ebp-4]
 006EAA53    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EAA59    call        TFXPIO.IsOnlyGeneralOutput
 006EAA5E    test        al,al
>006EAA60    jne         006EAA9E
 006EAA62    mov         eax,dword ptr [ebp-14]
 006EAA65    cmp         eax,0FF
>006EAA6A    jbe         006EAA71
 006EAA6C    call        @BoundErr
 006EAA71    push        eax
 006EAA72    mov         eax,dword ptr [ebp-4]
 006EAA75    mov         cl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EAA7B    mov         dl,1
 006EAA7D    mov         eax,dword ptr [ebp-4]
 006EAA80    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EAA86    call        TFXPIO.IsGeneralOrLocalOutput
 006EAA8B    mov         ecx,eax
 006EAA8D    mov         eax,dword ptr [ebp-20]
 006EAA90    mov         edx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 006EAA96    mov         eax,dword ptr [ebp-4]
 006EAA99    call        TFXPDFrame.ADOSelectControlZones
 006EAA9E    pop         ebx
 006EAA9F    mov         esp,ebp
 006EAAA1    pop         ebp
 006EAAA2    ret         0C
*}
end;

//006EAAA8
procedure TFXPDFrame.ADOGridClick(Sender:TObject);
begin
{*
 006EAAA8    push        ebp
 006EAAA9    mov         ebp,esp
 006EAAAB    add         esp,0FFFFFFF4
 006EAAAE    mov         dword ptr [ebp-8],edx
 006EAAB1    mov         dword ptr [ebp-4],eax
 006EAAB4    mov         eax,dword ptr [ebp-8]
 006EAAB7    mov         edx,dword ptr ds:[6B8E88];TStringGrid
 006EAABD    call        @AsClass
 006EAAC2    mov         edx,dword ptr [ebp-4]
 006EAAC5    mov         dword ptr [edx+84C],eax;TFXPDFrame.ActiveGrid:TStringGrid
 006EAACB    mov         eax,dword ptr [ebp-4]
 006EAACE    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EAAD4    mov         dword ptr [ebp-0C],eax
 006EAAD7    mov         eax,dword ptr [ebp-0C]
 006EAADA    mov         eax,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 006EAAE0    dec         eax
>006EAAE1    je          006EAAF0
 006EAAE3    sub         eax,2
>006EAAE6    je          006EAB0B
 006EAAE8    dec         eax
>006EAAE9    je          006EAB26
 006EAAEB    dec         eax
>006EAAEC    je          006EAB3F
>006EAAEE    jmp         006EAB56
 006EAAF0    mov         edx,dword ptr ds:[6EAB5C];0x400 gvar_006EAB5C
 006EAAF6    mov         eax,dword ptr [ebp-0C]
 006EAAF9    not         edx
 006EAAFB    and         edx,dword ptr [eax+2D4];TStringGrid.FOptions:TGridOptions
 006EAB01    mov         eax,dword ptr [ebp-0C]
 006EAB04    call        TDrawGrid.SetOptions
>006EAB09    jmp         006EAB56
 006EAB0B    mov         edx,dword ptr ds:[6EAB5C];0x400 gvar_006EAB5C
 006EAB11    mov         eax,dword ptr [ebp-0C]
 006EAB14    not         edx
 006EAB16    and         edx,dword ptr [eax+2D4];TStringGrid.FOptions:TGridOptions
 006EAB1C    mov         eax,dword ptr [ebp-0C]
 006EAB1F    call        TDrawGrid.SetOptions
>006EAB24    jmp         006EAB56
 006EAB26    mov         edx,dword ptr ds:[6EAB5C];0x400 gvar_006EAB5C
 006EAB2C    mov         eax,dword ptr [ebp-0C]
 006EAB2F    or          edx,dword ptr [eax+2D4];TStringGrid.FOptions:TGridOptions
 006EAB35    mov         eax,dword ptr [ebp-0C]
 006EAB38    call        TDrawGrid.SetOptions
>006EAB3D    jmp         006EAB56
 006EAB3F    mov         edx,dword ptr ds:[6EAB5C];0x400 gvar_006EAB5C
 006EAB45    mov         eax,dword ptr [ebp-0C]
 006EAB48    or          edx,dword ptr [eax+2D4];TStringGrid.FOptions:TGridOptions
 006EAB4E    mov         eax,dword ptr [ebp-0C]
 006EAB51    call        TDrawGrid.SetOptions
 006EAB56    mov         esp,ebp
 006EAB58    pop         ebp
 006EAB59    ret
*}
end;

//006EAB60
procedure TFXPDFrame.ADOModePopupMenuPopup(Sender:TObject);
begin
{*
 006EAB60    push        ebp
 006EAB61    mov         ebp,esp
 006EAB63    add         esp,0FFFFFFF8
 006EAB66    mov         dword ptr [ebp-8],edx
 006EAB69    mov         dword ptr [ebp-4],eax
 006EAB6C    mov         eax,dword ptr [ebp-4]
 006EAB6F    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EAB75    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 006EAB7B    cmp         ecx,0FF
>006EAB81    jbe         006EAB88
 006EAB83    call        @BoundErr
 006EAB88    mov         eax,dword ptr [ebp-4]
 006EAB8B    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EAB91    mov         eax,dword ptr [ebp-4]
 006EAB94    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EAB9A    call        TFXPIO.GetADOModeDefByJumperAllowed
 006EAB9F    mov         edx,eax
 006EABA1    mov         eax,dword ptr [ebp-4]
 006EABA4    mov         eax,dword ptr [eax+78C];TFXPDFrame.AdoPulseddefbyjumper1:TMenuItem
 006EABAA    call        TMenuItem.SetEnabled
 006EABAF    mov         eax,dword ptr [ebp-4]
 006EABB2    mov         eax,dword ptr [eax+78C];TFXPDFrame.AdoPulseddefbyjumper1:TMenuItem
 006EABB8    mov         dl,byte ptr [eax+45];TMenuItem.FEnabled:Boolean
 006EABBB    mov         eax,dword ptr [ebp-4]
 006EABBE    mov         eax,dword ptr [eax+78C];TFXPDFrame.AdoPulseddefbyjumper1:TMenuItem
 006EABC4    call        TMenuItem.SetVisible
 006EABC9    mov         eax,dword ptr [ebp-4]
 006EABCC    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EABD2    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 006EABD8    cmp         ecx,0FF
>006EABDE    jbe         006EABE5
 006EABE0    call        @BoundErr
 006EABE5    mov         eax,dword ptr [ebp-4]
 006EABE8    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EABEE    mov         eax,dword ptr [ebp-4]
 006EABF1    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EABF7    call        TFXPIO.GetADOModeContinuousAllowed
 006EABFC    mov         edx,eax
 006EABFE    mov         eax,dword ptr [ebp-4]
 006EAC01    mov         eax,dword ptr [eax+790];TFXPDFrame.AdoContinuous1:TMenuItem
 006EAC07    call        TMenuItem.SetEnabled
 006EAC0C    mov         eax,dword ptr [ebp-4]
 006EAC0F    mov         eax,dword ptr [eax+790];TFXPDFrame.AdoContinuous1:TMenuItem
 006EAC15    mov         dl,byte ptr [eax+45];TMenuItem.FEnabled:Boolean
 006EAC18    mov         eax,dword ptr [ebp-4]
 006EAC1B    mov         eax,dword ptr [eax+790];TFXPDFrame.AdoContinuous1:TMenuItem
 006EAC21    call        TMenuItem.SetVisible
 006EAC26    mov         eax,dword ptr [ebp-4]
 006EAC29    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EAC2F    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 006EAC35    cmp         ecx,0FF
>006EAC3B    jbe         006EAC42
 006EAC3D    call        @BoundErr
 006EAC42    mov         eax,dword ptr [ebp-4]
 006EAC45    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EAC4B    mov         eax,dword ptr [ebp-4]
 006EAC4E    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EAC54    call        TFXPIO.GetADOModePulsedAllowed
 006EAC59    mov         edx,eax
 006EAC5B    mov         eax,dword ptr [ebp-4]
 006EAC5E    mov         eax,dword ptr [eax+794];TFXPDFrame.AdoPulsed1:TMenuItem
 006EAC64    call        TMenuItem.SetEnabled
 006EAC69    mov         eax,dword ptr [ebp-4]
 006EAC6C    mov         eax,dword ptr [eax+794];TFXPDFrame.AdoPulsed1:TMenuItem
 006EAC72    mov         dl,byte ptr [eax+45];TMenuItem.FEnabled:Boolean
 006EAC75    mov         eax,dword ptr [ebp-4]
 006EAC78    mov         eax,dword ptr [eax+794];TFXPDFrame.AdoPulsed1:TMenuItem
 006EAC7E    call        TMenuItem.SetVisible
 006EAC83    mov         eax,dword ptr [ebp-4]
 006EAC86    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EAC8C    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 006EAC92    cmp         ecx,0FF
>006EAC98    jbe         006EAC9F
 006EAC9A    call        @BoundErr
 006EAC9F    mov         eax,dword ptr [ebp-4]
 006EACA2    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EACA8    mov         eax,dword ptr [ebp-4]
 006EACAB    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EACB1    call        TFXPIO.GetADOModePhasedAllowed
 006EACB6    mov         edx,eax
 006EACB8    mov         eax,dword ptr [ebp-4]
 006EACBB    mov         eax,dword ptr [eax+798];TFXPDFrame.AdoPhasedevacuation1:TMenuItem
 006EACC1    call        TMenuItem.SetEnabled
 006EACC6    mov         eax,dword ptr [ebp-4]
 006EACC9    mov         eax,dword ptr [eax+798];TFXPDFrame.AdoPhasedevacuation1:TMenuItem
 006EACCF    mov         dl,byte ptr [eax+45];TMenuItem.FEnabled:Boolean
 006EACD2    mov         eax,dword ptr [ebp-4]
 006EACD5    mov         eax,dword ptr [eax+798];TFXPDFrame.AdoPhasedevacuation1:TMenuItem
 006EACDB    call        TMenuItem.SetVisible
 006EACE0    pop         ecx
 006EACE1    pop         ecx
 006EACE2    pop         ebp
 006EACE3    ret
*}
end;

//006EACE4
procedure TFXPDFrame.ADOFunctionPopupMenuClick(Sender:TObject);
begin
{*
 006EACE4    push        ebp
 006EACE5    mov         ebp,esp
 006EACE7    add         esp,0FFFFFFF8
 006EACEA    mov         dword ptr [ebp-8],edx
 006EACED    mov         dword ptr [ebp-4],eax
 006EACF0    mov         eax,dword ptr [ebp-8]
 006EACF3    mov         edx,dword ptr ds:[5AA664];TMenuItem
 006EACF9    call        @AsClass
 006EACFE    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 006EAD01    cmp         eax,0FF
>006EAD06    jbe         006EAD0D
 006EAD08    call        @BoundErr
 006EAD0D    push        eax
 006EAD0E    mov         eax,dword ptr [ebp-4]
 006EAD11    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EAD17    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 006EAD1D    cmp         ecx,0FF
>006EAD23    jbe         006EAD2A
 006EAD25    call        @BoundErr
 006EAD2A    mov         eax,dword ptr [ebp-4]
 006EAD2D    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EAD33    mov         eax,dword ptr [ebp-4]
 006EAD36    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EAD3C    call        TFXPIO.SetADOFunction
 006EAD41    mov         eax,dword ptr [ebp-4]
 006EAD44    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006EAD4A    mov         eax,dword ptr [eax+2F4];TPageControl.FActivePage:TTabSheet
 006EAD50    mov         edx,dword ptr [ebp-4]
 006EAD53    cmp         eax,dword ptr [edx+4A8];TFXPDFrame.MCSheet:TTabSheet
>006EAD59    jne         006EAD63
 006EAD5B    mov         eax,dword ptr [ebp-4]
 006EAD5E    call        006E58E0
 006EAD63    mov         eax,dword ptr [ebp-4]
 006EAD66    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006EAD6C    mov         eax,dword ptr [eax+2F4];TPageControl.FActivePage:TTabSheet
 006EAD72    mov         edx,dword ptr [ebp-4]
 006EAD75    cmp         eax,dword ptr [edx+4C8];TFXPDFrame.IOCSheet:TTabSheet
>006EAD7B    jne         006EAD85
 006EAD7D    mov         eax,dword ptr [ebp-4]
 006EAD80    call        006E5E6C
 006EAD85    pop         ecx
 006EAD86    pop         ecx
 006EAD87    pop         ebp
 006EAD88    ret
*}
end;

//006EAD8C
procedure TFXPDFrame.ADOModePopupMenuClick(Sender:TObject);
begin
{*
 006EAD8C    push        ebp
 006EAD8D    mov         ebp,esp
 006EAD8F    add         esp,0FFFFFFF8
 006EAD92    mov         dword ptr [ebp-8],edx
 006EAD95    mov         dword ptr [ebp-4],eax
 006EAD98    mov         eax,dword ptr [ebp-8]
 006EAD9B    mov         edx,dword ptr ds:[5AA664];TMenuItem
 006EADA1    call        @AsClass
 006EADA6    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 006EADA9    cmp         eax,0FF
>006EADAE    jbe         006EADB5
 006EADB0    call        @BoundErr
 006EADB5    push        eax
 006EADB6    mov         eax,dword ptr [ebp-4]
 006EADB9    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EADBF    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 006EADC5    cmp         ecx,0FF
>006EADCB    jbe         006EADD2
 006EADCD    call        @BoundErr
 006EADD2    mov         eax,dword ptr [ebp-4]
 006EADD5    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EADDB    mov         eax,dword ptr [ebp-4]
 006EADDE    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EADE4    call        TFXPIO.SetADOMode
 006EADE9    mov         eax,dword ptr [ebp-4]
 006EADEC    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006EADF2    mov         eax,dword ptr [eax+2F4];TPageControl.FActivePage:TTabSheet
 006EADF8    mov         edx,dword ptr [ebp-4]
 006EADFB    cmp         eax,dword ptr [edx+4A8];TFXPDFrame.MCSheet:TTabSheet
>006EAE01    jne         006EAE0B
 006EAE03    mov         eax,dword ptr [ebp-4]
 006EAE06    call        006E58E0
 006EAE0B    mov         eax,dword ptr [ebp-4]
 006EAE0E    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006EAE14    mov         eax,dword ptr [eax+2F4];TPageControl.FActivePage:TTabSheet
 006EAE1A    mov         edx,dword ptr [ebp-4]
 006EAE1D    cmp         eax,dword ptr [edx+4C8];TFXPDFrame.IOCSheet:TTabSheet
>006EAE23    jne         006EAE2D
 006EAE25    mov         eax,dword ptr [ebp-4]
 006EAE28    call        006E5E6C
 006EAE2D    pop         ecx
 006EAE2E    pop         ecx
 006EAE2F    pop         ebp
 006EAE30    ret
*}
end;

//006EAE34
procedure TFXPDFrame.ADOMonitoringPopupMenuClick(Sender:TObject);
begin
{*
 006EAE34    push        ebp
 006EAE35    mov         ebp,esp
 006EAE37    add         esp,0FFFFFFF8
 006EAE3A    push        esi
 006EAE3B    mov         dword ptr [ebp-8],edx
 006EAE3E    mov         dword ptr [ebp-4],eax
 006EAE41    mov         eax,dword ptr [ebp-4]
 006EAE44    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006EAE4A    mov         eax,dword ptr [eax+2F4];TPageControl.FActivePage:TTabSheet
 006EAE50    mov         edx,dword ptr [ebp-4]
 006EAE53    cmp         eax,dword ptr [edx+4A8];TFXPDFrame.MCSheet:TTabSheet
>006EAE59    jne         006EAF09
 006EAE5F    mov         eax,dword ptr [ebp-4]
 006EAE62    mov         eax,dword ptr [eax+4B8];TFXPDFrame.ADOGridMC:TStringGrid
 006EAE68    mov         si,0FFB1
 006EAE6C    call        @CallDynaInst;TWinControl.sub_004EFDB8
 006EAE71    test        al,al
>006EAE73    je          006EAEBC
 006EAE75    mov         eax,dword ptr [ebp-8]
 006EAE78    mov         edx,dword ptr ds:[5AA664];TMenuItem
 006EAE7E    call        @AsClass
 006EAE83    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 006EAE86    push        eax
 006EAE87    mov         eax,dword ptr [ebp-4]
 006EAE8A    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EAE90    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 006EAE96    cmp         ecx,0FF
>006EAE9C    jbe         006EAEA3
 006EAE9E    call        @BoundErr
 006EAEA3    mov         eax,dword ptr [ebp-4]
 006EAEA6    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EAEAC    mov         eax,dword ptr [ebp-4]
 006EAEAF    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EAEB5    call        TFXPIO.SetADOMonitoring
>006EAEBA    jmp         006EAF01
 006EAEBC    mov         eax,dword ptr [ebp-8]
 006EAEBF    mov         edx,dword ptr ds:[5AA664];TMenuItem
 006EAEC5    call        @AsClass
 006EAECA    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 006EAECD    push        eax
 006EAECE    mov         eax,dword ptr [ebp-4]
 006EAED1    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EAED7    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 006EAEDD    cmp         ecx,0FF
>006EAEE3    jbe         006EAEEA
 006EAEE5    call        @BoundErr
 006EAEEA    mov         eax,dword ptr [ebp-4]
 006EAEED    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EAEF3    mov         eax,dword ptr [ebp-4]
 006EAEF6    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EAEFC    call        TFXPIO.SetCCIShortIsFault
 006EAF01    mov         eax,dword ptr [ebp-4]
 006EAF04    call        006E58E0
 006EAF09    mov         eax,dword ptr [ebp-4]
 006EAF0C    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006EAF12    mov         eax,dword ptr [eax+2F4];TPageControl.FActivePage:TTabSheet
 006EAF18    mov         edx,dword ptr [ebp-4]
 006EAF1B    cmp         eax,dword ptr [edx+4C8];TFXPDFrame.IOCSheet:TTabSheet
>006EAF21    jne         006EAFD1
 006EAF27    mov         eax,dword ptr [ebp-4]
 006EAF2A    mov         eax,dword ptr [eax+4E0];TFXPDFrame.ADOGrid:TStringGrid
 006EAF30    mov         si,0FFB1
 006EAF34    call        @CallDynaInst;TWinControl.sub_004EFDB8
 006EAF39    test        al,al
>006EAF3B    je          006EAF84
 006EAF3D    mov         eax,dword ptr [ebp-8]
 006EAF40    mov         edx,dword ptr ds:[5AA664];TMenuItem
 006EAF46    call        @AsClass
 006EAF4B    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 006EAF4E    push        eax
 006EAF4F    mov         eax,dword ptr [ebp-4]
 006EAF52    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EAF58    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 006EAF5E    cmp         ecx,0FF
>006EAF64    jbe         006EAF6B
 006EAF66    call        @BoundErr
 006EAF6B    mov         eax,dword ptr [ebp-4]
 006EAF6E    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EAF74    mov         eax,dword ptr [ebp-4]
 006EAF77    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EAF7D    call        TFXPIO.SetADOMonitoring
>006EAF82    jmp         006EAFC9
 006EAF84    mov         eax,dword ptr [ebp-8]
 006EAF87    mov         edx,dword ptr ds:[5AA664];TMenuItem
 006EAF8D    call        @AsClass
 006EAF92    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 006EAF95    push        eax
 006EAF96    mov         eax,dword ptr [ebp-4]
 006EAF99    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EAF9F    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 006EAFA5    cmp         ecx,0FF
>006EAFAB    jbe         006EAFB2
 006EAFAD    call        @BoundErr
 006EAFB2    mov         eax,dword ptr [ebp-4]
 006EAFB5    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EAFBB    mov         eax,dword ptr [ebp-4]
 006EAFBE    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EAFC4    call        TFXPIO.SetCCIShortIsFault
 006EAFC9    mov         eax,dword ptr [ebp-4]
 006EAFCC    call        006E5E6C
 006EAFD1    pop         esi
 006EAFD2    pop         ecx
 006EAFD3    pop         ecx
 006EAFD4    pop         ebp
 006EAFD5    ret
*}
end;

//006EAFD8
procedure TFXPDFrame.ADOSelectControlZones(Row:Integer; AllowOnlyGeneralOrLocal:Boolean);
begin
{*
 006EAFD8    push        ebp
 006EAFD9    mov         ebp,esp
 006EAFDB    add         esp,0FFFFFF70
 006EAFE1    mov         byte ptr [ebp-5],cl
 006EAFE4    mov         dword ptr [ebp-0C],edx
 006EAFE7    mov         dword ptr [ebp-4],eax
 006EAFEA    lea         eax,[ebp-8E]
 006EAFF0    push        eax
 006EAFF1    mov         eax,dword ptr [ebp-4]
 006EAFF4    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EAFFA    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 006EB000    cmp         ecx,0FF
>006EB006    jbe         006EB00D
 006EB008    call        @BoundErr
 006EB00D    mov         eax,dword ptr [ebp-4]
 006EB010    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EB016    mov         eax,dword ptr [ebp-4]
 006EB019    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EB01F    call        TFXPIO.GetADOCtrlGroups
 006EB024    lea         edx,[ebp-8E]
 006EB02A    mov         eax,[007C47F4];^gvar_00901F4C:TFXCGroupsDlg
 006EB02F    mov         eax,dword ptr [eax]
 006EB031    mov         cl,byte ptr [ebp-5]
 006EB034    call        TFXCGroupsDlg.SetCheckMarks
 006EB039    mov         eax,[007C47F4];^gvar_00901F4C:TFXCGroupsDlg
 006EB03E    mov         eax,dword ptr [eax]
 006EB040    mov         edx,dword ptr [eax]
 006EB042    call        dword ptr [edx+13C]
 006EB048    dec         eax
>006EB049    jne         006EB097
 006EB04B    lea         edx,[ebp-8E]
 006EB051    mov         eax,[007C47F4];^gvar_00901F4C:TFXCGroupsDlg
 006EB056    mov         eax,dword ptr [eax]
 006EB058    call        TFXCGroupsDlg.GetCheckMarks
 006EB05D    lea         eax,[ebp-8E]
 006EB063    push        eax
 006EB064    mov         eax,dword ptr [ebp-4]
 006EB067    mov         eax,dword ptr [eax+84C];TFXPDFrame.ActiveGrid:TStringGrid
 006EB06D    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 006EB073    cmp         ecx,0FF
>006EB079    jbe         006EB080
 006EB07B    call        @BoundErr
 006EB080    mov         eax,dword ptr [ebp-4]
 006EB083    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EB089    mov         eax,dword ptr [ebp-4]
 006EB08C    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EB092    call        TFXPIO.SetADOCtrlGroups
 006EB097    mov         eax,dword ptr [ebp-4]
 006EB09A    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006EB0A0    mov         eax,dword ptr [eax+2F4];TPageControl.FActivePage:TTabSheet
 006EB0A6    mov         edx,dword ptr [ebp-4]
 006EB0A9    cmp         eax,dword ptr [edx+4A8];TFXPDFrame.MCSheet:TTabSheet
>006EB0AF    jne         006EB0B9
 006EB0B1    mov         eax,dword ptr [ebp-4]
 006EB0B4    call        006E58E0
 006EB0B9    mov         eax,dword ptr [ebp-4]
 006EB0BC    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006EB0C2    mov         eax,dword ptr [eax+2F4];TPageControl.FActivePage:TTabSheet
 006EB0C8    mov         edx,dword ptr [ebp-4]
 006EB0CB    cmp         eax,dword ptr [edx+4C8];TFXPDFrame.IOCSheet:TTabSheet
>006EB0D1    jne         006EB0DB
 006EB0D3    mov         eax,dword ptr [ebp-4]
 006EB0D6    call        006E5E6C
 006EB0DB    mov         esp,ebp
 006EB0DD    pop         ebp
 006EB0DE    ret
*}
end;

//006EB0E0
procedure TFXPDFrame.ADOGridSetEditText(Sender:TObject; ACol:Integer; Value:string; ARow:Integer);
begin
{*
 006EB0E0    push        ebp
 006EB0E1    mov         ebp,esp
 006EB0E3    add         esp,0FFFFFE6C
 006EB0E9    push        ebx
 006EB0EA    xor         ebx,ebx
 006EB0EC    mov         dword ptr [ebp-194],ebx
 006EB0F2    mov         dword ptr [ebp-8],ecx
 006EB0F5    mov         dword ptr [ebp-0C],edx
 006EB0F8    mov         dword ptr [ebp-4],eax
 006EB0FB    xor         eax,eax
 006EB0FD    push        ebp
 006EB0FE    push        6EB25A
 006EB103    push        dword ptr fs:[eax]
 006EB106    mov         dword ptr fs:[eax],esp
 006EB109    mov         eax,dword ptr [ebp-8]
 006EB10C    sub         eax,4
>006EB10F    je          006EB11D
 006EB111    dec         eax
>006EB112    je          006EB1A6
>006EB118    jmp         006EB1FD
 006EB11D    mov         ecx,dword ptr [ebp+0C]
 006EB120    cmp         ecx,0FF
>006EB126    jbe         006EB12D
 006EB128    call        @BoundErr
 006EB12D    mov         eax,dword ptr [ebp-4]
 006EB130    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EB136    mov         eax,dword ptr [ebp-4]
 006EB139    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EB13F    call        TFXPIO.GetADOControlGroupsAllowed
 006EB144    test        al,al
>006EB146    je          006EB1FD
 006EB14C    lea         edx,[ebp-8E]
 006EB152    mov         eax,dword ptr [ebp+8]
 006EB155    call        00695720
 006EB15A    test        al,al
>006EB15C    je          006EB18E
 006EB15E    lea         eax,[ebp-8E]
 006EB164    push        eax
 006EB165    mov         ecx,dword ptr [ebp+0C]
 006EB168    cmp         ecx,0FF
>006EB16E    jbe         006EB175
 006EB170    call        @BoundErr
 006EB175    mov         eax,dword ptr [ebp-4]
 006EB178    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EB17E    mov         eax,dword ptr [ebp-4]
 006EB181    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EB187    call        TFXPIO.SetADOCtrlGroups
>006EB18C    jmp         006EB1FD
 006EB18E    mov         ecx,6EB274;'Error in Control Groups'
 006EB193    mov         dl,1
 006EB195    mov         eax,[004174D0];Exception
 006EB19A    call        Exception.Create;Exception.Create
 006EB19F    call        @RaiseExcept
>006EB1A4    jmp         006EB1FD
 006EB1A6    lea         eax,[ebp-194]
 006EB1AC    mov         edx,dword ptr [ebp+8]
 006EB1AF    mov         ecx,0
 006EB1B4    call        @LStrFromUStr
 006EB1B9    mov         edx,dword ptr [ebp-194]
 006EB1BF    lea         eax,[ebp-190]
 006EB1C5    mov         ecx,0FF
 006EB1CA    call        @LStrToString
 006EB1CF    lea         eax,[ebp-190]
 006EB1D5    push        eax
 006EB1D6    mov         ecx,dword ptr [ebp+0C]
 006EB1D9    cmp         ecx,0FF
>006EB1DF    jbe         006EB1E6
 006EB1E1    call        @BoundErr
 006EB1E6    mov         eax,dword ptr [ebp-4]
 006EB1E9    mov         dl,byte ptr [eax+848];TFXPDFrame.CurrentIOC:LongInt
 006EB1EF    mov         eax,dword ptr [ebp-4]
 006EB1F2    mov         eax,dword ptr [eax+854];TFXPDFrame.FXIOModel:TFXPIO
 006EB1F8    call        TFXPIO.SetADODescription
 006EB1FD    mov         eax,dword ptr [ebp-4]
 006EB200    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006EB206    mov         eax,dword ptr [eax+2F4];TPageControl.FActivePage:TTabSheet
 006EB20C    mov         edx,dword ptr [ebp-4]
 006EB20F    cmp         eax,dword ptr [edx+4A8];TFXPDFrame.MCSheet:TTabSheet
>006EB215    jne         006EB21F
 006EB217    mov         eax,dword ptr [ebp-4]
 006EB21A    call        006E58E0
 006EB21F    mov         eax,dword ptr [ebp-4]
 006EB222    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006EB228    mov         eax,dword ptr [eax+2F4];TPageControl.FActivePage:TTabSheet
 006EB22E    mov         edx,dword ptr [ebp-4]
 006EB231    cmp         eax,dword ptr [edx+4C8];TFXPDFrame.IOCSheet:TTabSheet
>006EB237    jne         006EB241
 006EB239    mov         eax,dword ptr [ebp-4]
 006EB23C    call        006E5E6C
 006EB241    xor         eax,eax
 006EB243    pop         edx
 006EB244    pop         ecx
 006EB245    pop         ecx
 006EB246    mov         dword ptr fs:[eax],edx
 006EB249    push        6EB261
 006EB24E    lea         eax,[ebp-194]
 006EB254    call        @LStrClr
 006EB259    ret
>006EB25A    jmp         @HandleFinally
>006EB25F    jmp         006EB24E
 006EB261    pop         ebx
 006EB262    mov         esp,ebp
 006EB264    pop         ebp
 006EB265    ret         8
*}
end;

//006EB2A4
procedure sub_006EB2A4(?:TFXPDFrame);
begin
{*
 006EB2A4    push        ebp
 006EB2A5    mov         ebp,esp
 006EB2A7    push        ecx
 006EB2A8    mov         dword ptr [ebp-4],eax
 006EB2AB    mov         eax,dword ptr [ebp-4]
 006EB2AE    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB2B4    movzx       edx,word ptr [eax+14C]
 006EB2BB    mov         eax,dword ptr [ebp-4]
 006EB2BE    mov         eax,dword ptr [eax+604];TFXPDFrame.speFXDelayT1:TSpinEdit
 006EB2C4    call        TSpinEdit.SetValue
 006EB2C9    mov         eax,dword ptr [ebp-4]
 006EB2CC    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB2D2    movzx       edx,word ptr [eax+14E]
 006EB2D9    mov         eax,dword ptr [ebp-4]
 006EB2DC    mov         eax,dword ptr [eax+608];TFXPDFrame.speFXDelayT2:TSpinEdit
 006EB2E2    call        TSpinEdit.SetValue
 006EB2E7    mov         eax,dword ptr [ebp-4]
 006EB2EA    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB2F0    mov         dl,byte ptr [eax+146]
 006EB2F6    mov         eax,dword ptr [ebp-4]
 006EB2F9    mov         eax,dword ptr [eax+60C];TFXPDFrame.cbFireARDelayed:TCheckBox
 006EB2FF    mov         ecx,dword ptr [eax]
 006EB301    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EB307    mov         eax,dword ptr [ebp-4]
 006EB30A    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB310    mov         dl,byte ptr [eax+147]
 006EB316    mov         eax,dword ptr [ebp-4]
 006EB319    mov         eax,dword ptr [eax+618];TFXPDFrame.cbGenFireADDelayed:TCheckBox
 006EB31F    mov         ecx,dword ptr [eax]
 006EB321    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EB327    mov         eax,dword ptr [ebp-4]
 006EB32A    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB330    mov         dl,byte ptr [eax+148]
 006EB336    mov         eax,dword ptr [ebp-4]
 006EB339    mov         eax,dword ptr [eax+614];TFXPDFrame.cbZonFireADDelayed:TCheckBox
 006EB33F    mov         ecx,dword ptr [eax]
 006EB341    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EB347    mov         eax,dword ptr [ebp-4]
 006EB34A    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB350    mov         dl,byte ptr [eax+149]
 006EB356    mov         eax,dword ptr [ebp-4]
 006EB359    mov         eax,dword ptr [eax+61C];TFXPDFrame.cbFireCODelayed:TCheckBox
 006EB35F    mov         ecx,dword ptr [eax]
 006EB361    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EB367    mov         eax,dword ptr [ebp-4]
 006EB36A    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB370    xor         edx,edx
 006EB372    mov         dl,byte ptr [eax+14B]
 006EB378    mov         eax,dword ptr [ebp-4]
 006EB37B    mov         eax,dword ptr [eax+620];TFXPDFrame.rgDelayTermination:TRadioGroup
 006EB381    call        TRadioGroup.SetItemIndex
 006EB386    mov         eax,dword ptr [ebp-4]
 006EB389    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB38F    xor         edx,edx
 006EB391    mov         dl,byte ptr [eax+176]
 006EB397    mov         eax,dword ptr [ebp-4]
 006EB39A    mov         eax,dword ptr [eax+624];TFXPDFrame.rgDelayTerminationND:TRadioGroup
 006EB3A0    call        TRadioGroup.SetItemIndex
 006EB3A5    mov         eax,dword ptr [ebp-4]
 006EB3A8    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB3AE    mov         dl,byte ptr [eax+14A]
 006EB3B4    mov         eax,dword ptr [ebp-4]
 006EB3B7    mov         eax,dword ptr [eax+62C];TFXPDFrame.cbDelayIndication:TCheckBox
 006EB3BD    mov         ecx,dword ptr [eax]
 006EB3BF    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EB3C5    pop         ecx
 006EB3C6    pop         ebp
 006EB3C7    ret
*}
end;

//006EB3C8
procedure TFXPDFrame.speFXDelayT1Change(Sender:TObject);
begin
{*
 006EB3C8    push        ebp
 006EB3C9    mov         ebp,esp
 006EB3CB    add         esp,0FFFFFFF8
 006EB3CE    mov         dword ptr [ebp-8],edx
 006EB3D1    mov         dword ptr [ebp-4],eax
 006EB3D4    mov         eax,dword ptr [ebp-8]
 006EB3D7    mov         edx,dword ptr ds:[6B049C];TSpinEdit
 006EB3DD    call        @AsClass
 006EB3E2    call        TSpinEdit.GetValue
 006EB3E7    mov         edx,eax
 006EB3E9    cmp         edx,0FFFF
>006EB3EF    jbe         006EB3F6
 006EB3F1    call        @BoundErr
 006EB3F6    mov         eax,dword ptr [ebp-4]
 006EB3F9    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB3FF    call        006A40E0
 006EB404    mov         eax,dword ptr [ebp-4]
 006EB407    call        006EB2A4
 006EB40C    pop         ecx
 006EB40D    pop         ecx
 006EB40E    pop         ebp
 006EB40F    ret
*}
end;

//006EB410
procedure TFXPDFrame.speFXDelayT2Change(Sender:TObject);
begin
{*
 006EB410    push        ebp
 006EB411    mov         ebp,esp
 006EB413    add         esp,0FFFFFFF8
 006EB416    mov         dword ptr [ebp-8],edx
 006EB419    mov         dword ptr [ebp-4],eax
 006EB41C    mov         eax,dword ptr [ebp-8]
 006EB41F    mov         edx,dword ptr ds:[6B049C];TSpinEdit
 006EB425    call        @AsClass
 006EB42A    call        TSpinEdit.GetValue
 006EB42F    mov         edx,eax
 006EB431    cmp         edx,0FFFF
>006EB437    jbe         006EB43E
 006EB439    call        @BoundErr
 006EB43E    mov         eax,dword ptr [ebp-4]
 006EB441    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB447    call        006A4170
 006EB44C    mov         eax,dword ptr [ebp-4]
 006EB44F    call        006EB2A4
 006EB454    pop         ecx
 006EB455    pop         ecx
 006EB456    pop         ebp
 006EB457    ret
*}
end;

//006EB458
procedure TFXPDFrame.cbFireARDelayedClick(Sender:TObject);
begin
{*
 006EB458    push        ebp
 006EB459    mov         ebp,esp
 006EB45B    add         esp,0FFFFFFF8
 006EB45E    mov         dword ptr [ebp-8],edx
 006EB461    mov         dword ptr [ebp-4],eax
 006EB464    mov         eax,dword ptr [ebp-8]
 006EB467    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006EB46D    call        @AsClass
 006EB472    mov         edx,dword ptr [eax]
 006EB474    call        dword ptr [edx+108];TCheckBox.GetChecked
 006EB47A    mov         edx,eax
 006EB47C    mov         eax,dword ptr [ebp-4]
 006EB47F    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB485    call        006A41D4
 006EB48A    mov         eax,dword ptr [ebp-4]
 006EB48D    call        006EB2A4
 006EB492    pop         ecx
 006EB493    pop         ecx
 006EB494    pop         ebp
 006EB495    ret
*}
end;

//006EB498
procedure TFXPDFrame.cbGenFireADDelayedClick(Sender:TObject);
begin
{*
 006EB498    push        ebp
 006EB499    mov         ebp,esp
 006EB49B    add         esp,0FFFFFFF8
 006EB49E    mov         dword ptr [ebp-8],edx
 006EB4A1    mov         dword ptr [ebp-4],eax
 006EB4A4    mov         eax,dword ptr [ebp-8]
 006EB4A7    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006EB4AD    call        @AsClass
 006EB4B2    mov         edx,dword ptr [eax]
 006EB4B4    call        dword ptr [edx+108];TCheckBox.GetChecked
 006EB4BA    mov         edx,eax
 006EB4BC    mov         eax,dword ptr [ebp-4]
 006EB4BF    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB4C5    call        006A4208
 006EB4CA    mov         eax,dword ptr [ebp-4]
 006EB4CD    call        006EB2A4
 006EB4D2    pop         ecx
 006EB4D3    pop         ecx
 006EB4D4    pop         ebp
 006EB4D5    ret
*}
end;

//006EB4D8
procedure TFXPDFrame.cbZonFireADDelayedClick(Sender:TObject);
begin
{*
 006EB4D8    push        ebp
 006EB4D9    mov         ebp,esp
 006EB4DB    add         esp,0FFFFFFF8
 006EB4DE    mov         dword ptr [ebp-8],edx
 006EB4E1    mov         dword ptr [ebp-4],eax
 006EB4E4    mov         eax,dword ptr [ebp-8]
 006EB4E7    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006EB4ED    call        @AsClass
 006EB4F2    mov         edx,dword ptr [eax]
 006EB4F4    call        dword ptr [edx+108];TCheckBox.GetChecked
 006EB4FA    mov         edx,eax
 006EB4FC    mov         eax,dword ptr [ebp-4]
 006EB4FF    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB505    call        006A423C
 006EB50A    mov         eax,dword ptr [ebp-4]
 006EB50D    call        006EB2A4
 006EB512    pop         ecx
 006EB513    pop         ecx
 006EB514    pop         ebp
 006EB515    ret
*}
end;

//006EB518
procedure TFXPDFrame.cbFireCODelayedClick(Sender:TObject);
begin
{*
 006EB518    push        ebp
 006EB519    mov         ebp,esp
 006EB51B    add         esp,0FFFFFFF8
 006EB51E    mov         dword ptr [ebp-8],edx
 006EB521    mov         dword ptr [ebp-4],eax
 006EB524    mov         eax,dword ptr [ebp-8]
 006EB527    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006EB52D    call        @AsClass
 006EB532    mov         edx,dword ptr [eax]
 006EB534    call        dword ptr [edx+108];TCheckBox.GetChecked
 006EB53A    mov         edx,eax
 006EB53C    mov         eax,dword ptr [ebp-4]
 006EB53F    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB545    call        006A4270
 006EB54A    mov         eax,dword ptr [ebp-4]
 006EB54D    call        006EB2A4
 006EB552    pop         ecx
 006EB553    pop         ecx
 006EB554    pop         ebp
 006EB555    ret
*}
end;

//006EB558
procedure TFXPDFrame.rgDelayTerminationClick(Sender:TObject);
begin
{*
 006EB558    push        ebp
 006EB559    mov         ebp,esp
 006EB55B    add         esp,0FFFFFFF8
 006EB55E    mov         dword ptr [ebp-8],edx
 006EB561    mov         dword ptr [ebp-4],eax
 006EB564    mov         eax,dword ptr [ebp-8]
 006EB567    mov         edx,dword ptr ds:[562C04];TRadioGroup
 006EB56D    call        @AsClass
 006EB572    mov         edx,dword ptr [eax+2A0];TRadioGroup.FItemIndex:Integer
 006EB578    cmp         edx,0FF
>006EB57E    jbe         006EB585
 006EB580    call        @BoundErr
 006EB585    mov         eax,dword ptr [ebp-4]
 006EB588    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB58E    call        006A42A4
 006EB593    mov         eax,dword ptr [ebp-4]
 006EB596    call        006EB2A4
 006EB59B    pop         ecx
 006EB59C    pop         ecx
 006EB59D    pop         ebp
 006EB59E    ret
*}
end;

//006EB5A0
procedure TFXPDFrame.rgDelayTerminationNDClick(Sender:TObject);
begin
{*
 006EB5A0    push        ebp
 006EB5A1    mov         ebp,esp
 006EB5A3    add         esp,0FFFFFFF8
 006EB5A6    mov         dword ptr [ebp-8],edx
 006EB5A9    mov         dword ptr [ebp-4],eax
 006EB5AC    mov         eax,dword ptr [ebp-8]
 006EB5AF    mov         edx,dword ptr ds:[562C04];TRadioGroup
 006EB5B5    call        @AsClass
 006EB5BA    mov         edx,dword ptr [eax+2A0];TRadioGroup.FItemIndex:Integer
 006EB5C0    cmp         edx,0FF
>006EB5C6    jbe         006EB5CD
 006EB5C8    call        @BoundErr
 006EB5CD    mov         eax,dword ptr [ebp-4]
 006EB5D0    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB5D6    call        006A42D8
 006EB5DB    mov         eax,dword ptr [ebp-4]
 006EB5DE    call        006EB2A4
 006EB5E3    pop         ecx
 006EB5E4    pop         ecx
 006EB5E5    pop         ebp
 006EB5E6    ret
*}
end;

//006EB5E8
procedure TFXPDFrame.cbDelayIndicationClick(Sender:TObject);
begin
{*
 006EB5E8    push        ebp
 006EB5E9    mov         ebp,esp
 006EB5EB    add         esp,0FFFFFFF8
 006EB5EE    mov         dword ptr [ebp-8],edx
 006EB5F1    mov         dword ptr [ebp-4],eax
 006EB5F4    mov         eax,dword ptr [ebp-8]
 006EB5F7    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006EB5FD    call        @AsClass
 006EB602    mov         edx,dword ptr [eax]
 006EB604    call        dword ptr [edx+108];TCheckBox.GetChecked
 006EB60A    mov         edx,eax
 006EB60C    mov         eax,dword ptr [ebp-4]
 006EB60F    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB615    call        006A430C
 006EB61A    mov         eax,dword ptr [ebp-4]
 006EB61D    call        006EB2A4
 006EB622    pop         ecx
 006EB623    pop         ecx
 006EB624    pop         ebp
 006EB625    ret
*}
end;

//006EB628
procedure sub_006EB628(?:TFXPDFrame);
begin
{*
 006EB628    push        ebp
 006EB629    mov         ebp,esp
 006EB62B    push        ecx
 006EB62C    mov         dword ptr [ebp-4],eax
 006EB62F    xor         edx,edx
 006EB631    mov         eax,dword ptr [ebp-4]
 006EB634    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB63A    call        TFXPPD.GetLogEventStatus
 006EB63F    mov         edx,eax
 006EB641    mov         eax,dword ptr [ebp-4]
 006EB644    mov         eax,dword ptr [eax+680];TFXPDFrame.cbLogFireAlarms:TCheckBox
 006EB64A    mov         ecx,dword ptr [eax]
 006EB64C    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EB652    mov         dl,1
 006EB654    mov         eax,dword ptr [ebp-4]
 006EB657    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB65D    call        TFXPPD.GetLogEventStatus
 006EB662    mov         edx,eax
 006EB664    mov         eax,dword ptr [ebp-4]
 006EB667    mov         eax,dword ptr [eax+684];TFXPDFrame.cbLogPrewarnings:TCheckBox
 006EB66D    mov         ecx,dword ptr [eax]
 006EB66F    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EB675    mov         dl,2
 006EB677    mov         eax,dword ptr [ebp-4]
 006EB67A    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB680    call        TFXPPD.GetLogEventStatus
 006EB685    mov         edx,eax
 006EB687    mov         eax,dword ptr [ebp-4]
 006EB68A    mov         eax,dword ptr [eax+688];TFXPDFrame.cbLogFaultwarnings:TCheckBox
 006EB690    mov         ecx,dword ptr [eax]
 006EB692    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EB698    mov         dl,3
 006EB69A    mov         eax,dword ptr [ebp-4]
 006EB69D    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB6A3    call        TFXPPD.GetLogEventStatus
 006EB6A8    mov         edx,eax
 006EB6AA    mov         eax,dword ptr [ebp-4]
 006EB6AD    mov         eax,dword ptr [eax+68C];TFXPDFrame.cbLogDisablements:TCheckBox
 006EB6B3    mov         ecx,dword ptr [eax]
 006EB6B5    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EB6BB    mov         dl,4
 006EB6BD    mov         eax,dword ptr [ebp-4]
 006EB6C0    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB6C6    call        TFXPPD.GetLogEventStatus
 006EB6CB    mov         edx,eax
 006EB6CD    mov         eax,dword ptr [ebp-4]
 006EB6D0    mov         eax,dword ptr [eax+690];TFXPDFrame.cbLogAccesslevels:TCheckBox
 006EB6D6    mov         ecx,dword ptr [eax]
 006EB6D8    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EB6DE    mov         dl,5
 006EB6E0    mov         eax,dword ptr [ebp-4]
 006EB6E3    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB6E9    call        TFXPPD.GetLogEventStatus
 006EB6EE    mov         edx,eax
 006EB6F0    mov         eax,dword ptr [ebp-4]
 006EB6F3    mov         eax,dword ptr [eax+694];TFXPDFrame.cbLogIOChanges:TCheckBox
 006EB6F9    mov         ecx,dword ptr [eax]
 006EB6FB    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EB701    mov         dl,6
 006EB703    mov         eax,dword ptr [ebp-4]
 006EB706    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB70C    call        TFXPPD.GetLogEventStatus
 006EB711    mov         edx,eax
 006EB713    mov         eax,dword ptr [ebp-4]
 006EB716    mov         eax,dword ptr [eax+698];TFXPDFrame.cbLogStartupEvents:TCheckBox
 006EB71C    mov         ecx,dword ptr [eax]
 006EB71E    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EB724    mov         dl,7
 006EB726    mov         eax,dword ptr [ebp-4]
 006EB729    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB72F    call        TFXPPD.GetLogEventStatus
 006EB734    mov         edx,eax
 006EB736    mov         eax,dword ptr [ebp-4]
 006EB739    mov         eax,dword ptr [eax+69C];TFXPDFrame.cbLogStatusUpdates:TCheckBox
 006EB73F    mov         ecx,dword ptr [eax]
 006EB741    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EB747    xor         edx,edx
 006EB749    mov         eax,dword ptr [ebp-4]
 006EB74C    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB752    call        TFXPPD.GetPrintEventStatus
 006EB757    mov         edx,eax
 006EB759    mov         eax,dword ptr [ebp-4]
 006EB75C    mov         eax,dword ptr [eax+660];TFXPDFrame.cbPrintFireAlarms:TCheckBox
 006EB762    mov         ecx,dword ptr [eax]
 006EB764    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EB76A    mov         dl,1
 006EB76C    mov         eax,dword ptr [ebp-4]
 006EB76F    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB775    call        TFXPPD.GetPrintEventStatus
 006EB77A    mov         edx,eax
 006EB77C    mov         eax,dword ptr [ebp-4]
 006EB77F    mov         eax,dword ptr [eax+664];TFXPDFrame.cbPrintPrewarnings:TCheckBox
 006EB785    mov         ecx,dword ptr [eax]
 006EB787    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EB78D    mov         dl,2
 006EB78F    mov         eax,dword ptr [ebp-4]
 006EB792    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB798    call        TFXPPD.GetPrintEventStatus
 006EB79D    mov         edx,eax
 006EB79F    mov         eax,dword ptr [ebp-4]
 006EB7A2    mov         eax,dword ptr [eax+668];TFXPDFrame.cbPrintFaultwarnings:TCheckBox
 006EB7A8    mov         ecx,dword ptr [eax]
 006EB7AA    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EB7B0    mov         dl,3
 006EB7B2    mov         eax,dword ptr [ebp-4]
 006EB7B5    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB7BB    call        TFXPPD.GetPrintEventStatus
 006EB7C0    mov         edx,eax
 006EB7C2    mov         eax,dword ptr [ebp-4]
 006EB7C5    mov         eax,dword ptr [eax+66C];TFXPDFrame.cbPrintDisablements:TCheckBox
 006EB7CB    mov         ecx,dword ptr [eax]
 006EB7CD    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EB7D3    mov         dl,4
 006EB7D5    mov         eax,dword ptr [ebp-4]
 006EB7D8    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB7DE    call        TFXPPD.GetPrintEventStatus
 006EB7E3    mov         edx,eax
 006EB7E5    mov         eax,dword ptr [ebp-4]
 006EB7E8    mov         eax,dword ptr [eax+670];TFXPDFrame.cbPrintAccesslevels:TCheckBox
 006EB7EE    mov         ecx,dword ptr [eax]
 006EB7F0    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EB7F6    mov         dl,5
 006EB7F8    mov         eax,dword ptr [ebp-4]
 006EB7FB    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB801    call        TFXPPD.GetPrintEventStatus
 006EB806    mov         edx,eax
 006EB808    mov         eax,dword ptr [ebp-4]
 006EB80B    mov         eax,dword ptr [eax+674];TFXPDFrame.cbPrintIOChanges:TCheckBox
 006EB811    mov         ecx,dword ptr [eax]
 006EB813    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EB819    mov         dl,6
 006EB81B    mov         eax,dword ptr [ebp-4]
 006EB81E    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB824    call        TFXPPD.GetPrintEventStatus
 006EB829    mov         edx,eax
 006EB82B    mov         eax,dword ptr [ebp-4]
 006EB82E    mov         eax,dword ptr [eax+678];TFXPDFrame.cbPrintStartupEvents:TCheckBox
 006EB834    mov         ecx,dword ptr [eax]
 006EB836    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EB83C    mov         dl,7
 006EB83E    mov         eax,dword ptr [ebp-4]
 006EB841    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB847    call        TFXPPD.GetPrintEventStatus
 006EB84C    mov         edx,eax
 006EB84E    mov         eax,dword ptr [ebp-4]
 006EB851    mov         eax,dword ptr [eax+67C];TFXPDFrame.cbPrintStatusUpdates:TCheckBox
 006EB857    mov         ecx,dword ptr [eax]
 006EB859    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EB85F    xor         edx,edx
 006EB861    mov         eax,dword ptr [ebp-4]
 006EB864    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB86A    call        TFXPPD.GetPrintEventAllowed
 006EB86F    mov         edx,eax
 006EB871    mov         eax,dword ptr [ebp-4]
 006EB874    mov         eax,dword ptr [eax+660];TFXPDFrame.cbPrintFireAlarms:TCheckBox
 006EB87A    mov         ecx,dword ptr [eax]
 006EB87C    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006EB882    mov         dl,1
 006EB884    mov         eax,dword ptr [ebp-4]
 006EB887    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB88D    call        TFXPPD.GetPrintEventAllowed
 006EB892    mov         edx,eax
 006EB894    mov         eax,dword ptr [ebp-4]
 006EB897    mov         eax,dword ptr [eax+664];TFXPDFrame.cbPrintPrewarnings:TCheckBox
 006EB89D    mov         ecx,dword ptr [eax]
 006EB89F    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006EB8A5    mov         dl,2
 006EB8A7    mov         eax,dword ptr [ebp-4]
 006EB8AA    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB8B0    call        TFXPPD.GetPrintEventAllowed
 006EB8B5    mov         edx,eax
 006EB8B7    mov         eax,dword ptr [ebp-4]
 006EB8BA    mov         eax,dword ptr [eax+668];TFXPDFrame.cbPrintFaultwarnings:TCheckBox
 006EB8C0    mov         ecx,dword ptr [eax]
 006EB8C2    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006EB8C8    mov         dl,3
 006EB8CA    mov         eax,dword ptr [ebp-4]
 006EB8CD    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB8D3    call        TFXPPD.GetPrintEventAllowed
 006EB8D8    mov         edx,eax
 006EB8DA    mov         eax,dword ptr [ebp-4]
 006EB8DD    mov         eax,dword ptr [eax+66C];TFXPDFrame.cbPrintDisablements:TCheckBox
 006EB8E3    mov         ecx,dword ptr [eax]
 006EB8E5    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006EB8EB    mov         dl,4
 006EB8ED    mov         eax,dword ptr [ebp-4]
 006EB8F0    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB8F6    call        TFXPPD.GetPrintEventAllowed
 006EB8FB    mov         edx,eax
 006EB8FD    mov         eax,dword ptr [ebp-4]
 006EB900    mov         eax,dword ptr [eax+670];TFXPDFrame.cbPrintAccesslevels:TCheckBox
 006EB906    mov         ecx,dword ptr [eax]
 006EB908    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006EB90E    mov         dl,5
 006EB910    mov         eax,dword ptr [ebp-4]
 006EB913    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB919    call        TFXPPD.GetPrintEventAllowed
 006EB91E    mov         edx,eax
 006EB920    mov         eax,dword ptr [ebp-4]
 006EB923    mov         eax,dword ptr [eax+674];TFXPDFrame.cbPrintIOChanges:TCheckBox
 006EB929    mov         ecx,dword ptr [eax]
 006EB92B    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006EB931    mov         dl,6
 006EB933    mov         eax,dword ptr [ebp-4]
 006EB936    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB93C    call        TFXPPD.GetPrintEventAllowed
 006EB941    mov         edx,eax
 006EB943    mov         eax,dword ptr [ebp-4]
 006EB946    mov         eax,dword ptr [eax+678];TFXPDFrame.cbPrintStartupEvents:TCheckBox
 006EB94C    mov         ecx,dword ptr [eax]
 006EB94E    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006EB954    mov         dl,7
 006EB956    mov         eax,dword ptr [ebp-4]
 006EB959    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB95F    call        TFXPPD.GetPrintEventAllowed
 006EB964    mov         edx,eax
 006EB966    mov         eax,dword ptr [ebp-4]
 006EB969    mov         eax,dword ptr [eax+67C];TFXPDFrame.cbPrintStatusUpdates:TCheckBox
 006EB96F    mov         ecx,dword ptr [eax]
 006EB971    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006EB977    pop         ecx
 006EB978    pop         ebp
 006EB979    ret
*}
end;

//006EB97C
procedure TFXPDFrame.cbLogEventClick(Sender:TObject);
begin
{*
 006EB97C    push        ebp
 006EB97D    mov         ebp,esp
 006EB97F    add         esp,0FFFFFFF8
 006EB982    mov         dword ptr [ebp-8],edx
 006EB985    mov         dword ptr [ebp-4],eax
 006EB988    mov         eax,dword ptr [ebp-8]
 006EB98B    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006EB991    call        @AsClass
 006EB996    mov         edx,dword ptr [eax]
 006EB998    call        dword ptr [edx+108];TCheckBox.GetChecked
 006EB99E    push        eax
 006EB99F    mov         eax,dword ptr [ebp-8]
 006EB9A2    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006EB9A8    call        @AsClass
 006EB9AD    mov         edx,dword ptr [eax+0C];TCheckBox.FTag:NativeInt
 006EB9B0    mov         eax,dword ptr [ebp-4]
 006EB9B3    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EB9B9    pop         ecx
 006EB9BA    call        TFXPPD.SetLogEventStatus
 006EB9BF    mov         eax,dword ptr [ebp-4]
 006EB9C2    call        006EB628
 006EB9C7    pop         ecx
 006EB9C8    pop         ecx
 006EB9C9    pop         ebp
 006EB9CA    ret
*}
end;

//006EB9CC
procedure TFXPDFrame.cbPrintEventClick(Sender:TObject);
begin
{*
 006EB9CC    push        ebp
 006EB9CD    mov         ebp,esp
 006EB9CF    add         esp,0FFFFFFF8
 006EB9D2    mov         dword ptr [ebp-8],edx
 006EB9D5    mov         dword ptr [ebp-4],eax
 006EB9D8    mov         eax,dword ptr [ebp-8]
 006EB9DB    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006EB9E1    call        @AsClass
 006EB9E6    mov         edx,dword ptr [eax]
 006EB9E8    call        dword ptr [edx+108];TCheckBox.GetChecked
 006EB9EE    push        eax
 006EB9EF    mov         eax,dword ptr [ebp-8]
 006EB9F2    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006EB9F8    call        @AsClass
 006EB9FD    mov         edx,dword ptr [eax+0C];TCheckBox.FTag:NativeInt
 006EBA00    mov         eax,dword ptr [ebp-4]
 006EBA03    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EBA09    pop         ecx
 006EBA0A    call        TFXPPD.SetPrintEventStatus
 006EBA0F    mov         eax,dword ptr [ebp-4]
 006EBA12    call        006EB628
 006EBA17    pop         ecx
 006EBA18    pop         ecx
 006EBA19    pop         ebp
 006EBA1A    ret
*}
end;

//006EBA1C
procedure sub_006EBA1C(?:TFXPDFrame);
begin
{*
 006EBA1C    push        ebp
 006EBA1D    mov         ebp,esp
 006EBA1F    push        ecx
 006EBA20    mov         dword ptr [ebp-4],eax
 006EBA23    mov         eax,dword ptr [ebp-4]
 006EBA26    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EBA2C    mov         dl,byte ptr [eax+17A]
 006EBA32    mov         eax,dword ptr [ebp-4]
 006EBA35    mov         eax,dword ptr [eax+6B0];TFXPDFrame.cbOldCoincidence:TCheckBox
 006EBA3B    mov         ecx,dword ptr [eax]
 006EBA3D    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EBA43    mov         eax,dword ptr [ebp-4]
 006EBA46    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EBA4C    call        006A4798
 006EBA51    mov         edx,eax
 006EBA53    mov         eax,dword ptr [ebp-4]
 006EBA56    mov         eax,dword ptr [eax+6B4];TFXPDFrame.speCoincidenceAutoReset:TSpinEdit
 006EBA5C    mov         ecx,dword ptr [eax]
 006EBA5E    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006EBA64    mov         eax,dword ptr [ebp-4]
 006EBA67    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EBA6D    xor         edx,edx
 006EBA6F    mov         dl,byte ptr [eax+195]
 006EBA75    mov         eax,dword ptr [ebp-4]
 006EBA78    mov         eax,dword ptr [eax+6B4];TFXPDFrame.speCoincidenceAutoReset:TSpinEdit
 006EBA7E    call        TSpinEdit.SetValue
 006EBA83    mov         eax,dword ptr [ebp-4]
 006EBA86    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EBA8C    cmp         byte ptr [eax+177],0
 006EBA93    sete        dl
 006EBA96    mov         eax,dword ptr [ebp-4]
 006EBA99    mov         eax,dword ptr [eax+6C0];TFXPDFrame.rbSameZone:TRadioButton
 006EBA9F    mov         ecx,dword ptr [eax]
 006EBAA1    call        dword ptr [ecx+10C];TRadioButton.SetChecked
 006EBAA7    mov         eax,dword ptr [ebp-4]
 006EBAAA    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EBAB0    cmp         byte ptr [eax+177],1
 006EBAB7    sete        dl
 006EBABA    mov         eax,dword ptr [ebp-4]
 006EBABD    mov         eax,dword ptr [eax+6C4];TFXPDFrame.rbSamePanel:TRadioButton
 006EBAC3    mov         ecx,dword ptr [eax]
 006EBAC5    call        dword ptr [ecx+10C];TRadioButton.SetChecked
 006EBACB    mov         eax,dword ptr [ebp-4]
 006EBACE    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EBAD4    xor         edx,edx
 006EBAD6    mov         dl,byte ptr [eax+170]
 006EBADC    mov         eax,dword ptr [ebp-4]
 006EBADF    mov         eax,dword ptr [eax+6C8];TFXPDFrame.rgAlarmdisplay:TRadioGroup
 006EBAE5    call        TRadioGroup.SetItemIndex
 006EBAEA    mov         eax,dword ptr [ebp-4]
 006EBAED    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EBAF3    mov         dl,byte ptr [eax+194]
 006EBAF9    mov         eax,dword ptr [ebp-4]
 006EBAFC    mov         eax,dword ptr [eax+6D0];TFXPDFrame.cbPrealarmBlinkRate:TCheckBox
 006EBB02    mov         ecx,dword ptr [eax]
 006EBB04    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EBB0A    pop         ecx
 006EBB0B    pop         ebp
 006EBB0C    ret
*}
end;

//006EBB10
procedure TFXPDFrame.cbOldCoincidenceClick(Sender:TObject);
begin
{*
 006EBB10    push        ebp
 006EBB11    mov         ebp,esp
 006EBB13    add         esp,0FFFFFFF8
 006EBB16    mov         dword ptr [ebp-8],edx
 006EBB19    mov         dword ptr [ebp-4],eax
 006EBB1C    mov         eax,dword ptr [ebp-8]
 006EBB1F    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006EBB25    call        @AsClass
 006EBB2A    mov         edx,dword ptr [eax]
 006EBB2C    call        dword ptr [edx+108];TCheckBox.GetChecked
 006EBB32    mov         edx,eax
 006EBB34    mov         eax,dword ptr [ebp-4]
 006EBB37    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EBB3D    call        006A474C
 006EBB42    mov         eax,dword ptr [ebp-4]
 006EBB45    call        006EBA1C
 006EBB4A    pop         ecx
 006EBB4B    pop         ecx
 006EBB4C    pop         ebp
 006EBB4D    ret
*}
end;

//006EBB50
procedure TFXPDFrame.speCoincidenceAutoResetChange(Sender:TObject);
begin
{*
 006EBB50    push        ebp
 006EBB51    mov         ebp,esp
 006EBB53    add         esp,0FFFFFFF8
 006EBB56    mov         dword ptr [ebp-8],edx
 006EBB59    mov         dword ptr [ebp-4],eax
 006EBB5C    mov         eax,dword ptr [ebp-8]
 006EBB5F    mov         edx,dword ptr ds:[6B049C];TSpinEdit
 006EBB65    call        @AsClass
 006EBB6A    call        TSpinEdit.GetValue
 006EBB6F    mov         edx,eax
 006EBB71    cmp         edx,0FF
>006EBB77    jbe         006EBB7E
 006EBB79    call        @BoundErr
 006EBB7E    mov         eax,dword ptr [ebp-4]
 006EBB81    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EBB87    call        006A47B4
 006EBB8C    mov         eax,dword ptr [ebp-4]
 006EBB8F    call        006EBA1C
 006EBB94    pop         ecx
 006EBB95    pop         ecx
 006EBB96    pop         ebp
 006EBB97    ret
*}
end;

//006EBB98
procedure TFXPDFrame.rgCoincidenceDelClick(Sender:TObject);
begin
{*
 006EBB98    push        ebp
 006EBB99    mov         ebp,esp
 006EBB9B    add         esp,0FFFFFFF8
 006EBB9E    mov         dword ptr [ebp-8],edx
 006EBBA1    mov         dword ptr [ebp-4],eax
 006EBBA4    mov         eax,dword ptr [ebp-8]
 006EBBA7    mov         edx,dword ptr ds:[5009D8];TRadioButton
 006EBBAD    call        @AsClass
 006EBBB2    mov         edx,dword ptr [eax+0C];TRadioButton.FTag:NativeInt
 006EBBB5    cmp         edx,0FF
>006EBBBB    jbe         006EBBC2
 006EBBBD    call        @BoundErr
 006EBBC2    mov         eax,dword ptr [ebp-4]
 006EBBC5    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EBBCB    call        006A47E8
 006EBBD0    mov         eax,dword ptr [ebp-4]
 006EBBD3    call        006EBA1C
 006EBBD8    pop         ecx
 006EBBD9    pop         ecx
 006EBBDA    pop         ebp
 006EBBDB    ret
*}
end;

//006EBBDC
procedure TFXPDFrame.rgAlarmdisplayClick(Sender:TObject);
begin
{*
 006EBBDC    push        ebp
 006EBBDD    mov         ebp,esp
 006EBBDF    add         esp,0FFFFFFF8
 006EBBE2    mov         dword ptr [ebp-8],edx
 006EBBE5    mov         dword ptr [ebp-4],eax
 006EBBE8    mov         eax,dword ptr [ebp-8]
 006EBBEB    mov         edx,dword ptr ds:[562C04];TRadioGroup
 006EBBF1    call        @AsClass
 006EBBF6    mov         edx,dword ptr [eax+2A0];TRadioGroup.FItemIndex:Integer
 006EBBFC    cmp         edx,0FF
>006EBC02    jbe         006EBC09
 006EBC04    call        @BoundErr
 006EBC09    mov         eax,dword ptr [ebp-4]
 006EBC0C    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EBC12    call        006A4920
 006EBC17    mov         eax,dword ptr [ebp-4]
 006EBC1A    call        006EBA1C
 006EBC1F    pop         ecx
 006EBC20    pop         ecx
 006EBC21    pop         ebp
 006EBC22    ret
*}
end;

//006EBC24
procedure TFXPDFrame.cbPrealarmBlinkRateClick(Sender:TObject);
begin
{*
 006EBC24    push        ebp
 006EBC25    mov         ebp,esp
 006EBC27    add         esp,0FFFFFFF8
 006EBC2A    mov         dword ptr [ebp-8],edx
 006EBC2D    mov         dword ptr [ebp-4],eax
 006EBC30    mov         eax,dword ptr [ebp-8]
 006EBC33    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006EBC39    call        @AsClass
 006EBC3E    mov         edx,dword ptr [eax]
 006EBC40    call        dword ptr [edx+108];TCheckBox.GetChecked
 006EBC46    mov         edx,eax
 006EBC48    mov         eax,dword ptr [ebp-4]
 006EBC4B    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EBC51    call        006A4AB8
 006EBC56    mov         eax,dword ptr [ebp-4]
 006EBC59    call        006EBA1C
 006EBC5E    pop         ecx
 006EBC5F    pop         ecx
 006EBC60    pop         ebp
 006EBC61    ret
*}
end;

//006EBC64
{*procedure sub_006EBC64(?:?; ?:?);
begin
 006EBC64    push        ebp
 006EBC65    mov         ebp,esp
 006EBC67    push        ecx
 006EBC68    mov         byte ptr [ebp-1],al
 006EBC6B    mov         eax,dword ptr [ebp+8]
 006EBC6E    mov         eax,dword ptr [eax+8]
 006EBC71    mov         eax,dword ptr [eax-4]
 006EBC74    mov         eax,dword ptr [eax+6DC]
 006EBC7A    mov         dl,byte ptr [ebp-1]
 006EBC7D    mov         ecx,dword ptr [eax]
 006EBC7F    call        dword ptr [ecx+88]
 006EBC85    mov         eax,dword ptr [ebp+8]
 006EBC88    mov         eax,dword ptr [eax+8]
 006EBC8B    mov         eax,dword ptr [eax-4]
 006EBC8E    mov         eax,dword ptr [eax+6E0]
 006EBC94    mov         dl,byte ptr [ebp-1]
 006EBC97    mov         ecx,dword ptr [eax]
 006EBC99    call        dword ptr [ecx+88]
 006EBC9F    mov         eax,dword ptr [ebp+8]
 006EBCA2    mov         eax,dword ptr [eax+8]
 006EBCA5    mov         eax,dword ptr [eax-4]
 006EBCA8    mov         eax,dword ptr [eax+6E4]
 006EBCAE    mov         dl,byte ptr [ebp-1]
 006EBCB1    mov         ecx,dword ptr [eax]
 006EBCB3    call        dword ptr [ecx+88]
 006EBCB9    mov         eax,dword ptr [ebp+8]
 006EBCBC    mov         eax,dword ptr [eax+8]
 006EBCBF    mov         eax,dword ptr [eax-4]
 006EBCC2    mov         eax,dword ptr [eax+6E8]
 006EBCC8    mov         dl,byte ptr [ebp-1]
 006EBCCB    mov         ecx,dword ptr [eax]
 006EBCCD    call        dword ptr [ecx+88]
 006EBCD3    mov         eax,dword ptr [ebp+8]
 006EBCD6    mov         eax,dword ptr [eax+8]
 006EBCD9    mov         eax,dword ptr [eax-4]
 006EBCDC    mov         eax,dword ptr [eax+6D8]
 006EBCE2    mov         dl,byte ptr [ebp-1]
 006EBCE5    call        TControl.SetVisible
 006EBCEA    pop         ecx
 006EBCEB    pop         ebp
 006EBCEC    ret
end;*}

//006EBCF0
{*procedure sub_006EBCF0(?:?);
begin
 006EBCF0    push        ebp
 006EBCF1    mov         ebp,esp
 006EBCF3    mov         eax,dword ptr [ebp+8]
 006EBCF6    push        eax
 006EBCF7    xor         eax,eax
 006EBCF9    call        006EBC64
 006EBCFE    pop         ecx
 006EBCFF    pop         ebp
 006EBD00    ret
end;*}

//006EBD04
{*procedure sub_006EBD04(?:?);
begin
 006EBD04    push        ebp
 006EBD05    mov         ebp,esp
 006EBD07    mov         eax,dword ptr [ebp+8]
 006EBD0A    push        eax
 006EBD0B    mov         al,1
 006EBD0D    call        006EBC64
 006EBD12    pop         ecx
 006EBD13    pop         ebp
 006EBD14    ret
end;*}

//006EBD18
{*procedure sub_006EBD18(?:?; ?:?);
begin
 006EBD18    push        ebp
 006EBD19    mov         ebp,esp
 006EBD1B    push        ecx
 006EBD1C    mov         dword ptr [ebp-4],eax
 006EBD1F    mov         eax,dword ptr [ebp-4]
 006EBD22    add         eax,0FFFFFFF9
 006EBD25    sub         eax,2
>006EBD28    jae         006EBD8C
 006EBD2A    mov         eax,dword ptr [ebp+8]
 006EBD2D    mov         eax,dword ptr [eax-4]
 006EBD30    mov         eax,dword ptr [eax+6DC]
 006EBD36    xor         edx,edx
 006EBD38    mov         ecx,dword ptr [eax]
 006EBD3A    call        dword ptr [ecx+10C]
 006EBD40    mov         eax,dword ptr [ebp+8]
 006EBD43    mov         eax,dword ptr [eax-4]
 006EBD46    mov         eax,dword ptr [eax+6E0]
 006EBD4C    xor         edx,edx
 006EBD4E    mov         ecx,dword ptr [eax]
 006EBD50    call        dword ptr [ecx+10C]
 006EBD56    mov         eax,dword ptr [ebp+8]
 006EBD59    mov         eax,dword ptr [eax-4]
 006EBD5C    mov         eax,dword ptr [eax+6E4]
 006EBD62    xor         edx,edx
 006EBD64    mov         ecx,dword ptr [eax]
 006EBD66    call        dword ptr [ecx+10C]
 006EBD6C    mov         eax,dword ptr [ebp+8]
 006EBD6F    mov         eax,dword ptr [eax-4]
 006EBD72    mov         eax,dword ptr [eax+6E8]
 006EBD78    xor         edx,edx
 006EBD7A    mov         ecx,dword ptr [eax]
 006EBD7C    call        dword ptr [ecx+10C]
 006EBD82    push        ebp
 006EBD83    call        006EBCF0
 006EBD88    pop         ecx
 006EBD89    pop         ecx
 006EBD8A    pop         ebp
 006EBD8B    ret
 006EBD8C    mov         eax,dword ptr [ebp+8]
 006EBD8F    mov         eax,dword ptr [eax-4]
 006EBD92    mov         eax,dword ptr [eax+858]
 006EBD98    mov         dl,1
 006EBD9A    call        TFXPPD.GetBattPackMonitoring
 006EBD9F    mov         edx,eax
 006EBDA1    mov         eax,dword ptr [ebp+8]
 006EBDA4    mov         eax,dword ptr [eax-4]
 006EBDA7    mov         eax,dword ptr [eax+6DC]
 006EBDAD    mov         ecx,dword ptr [eax]
 006EBDAF    call        dword ptr [ecx+10C]
 006EBDB5    mov         eax,dword ptr [ebp+8]
 006EBDB8    mov         eax,dword ptr [eax-4]
 006EBDBB    mov         eax,dword ptr [eax+858]
 006EBDC1    mov         dl,2
 006EBDC3    call        TFXPPD.GetBattPackMonitoring
 006EBDC8    mov         edx,eax
 006EBDCA    mov         eax,dword ptr [ebp+8]
 006EBDCD    mov         eax,dword ptr [eax-4]
 006EBDD0    mov         eax,dword ptr [eax+6E0]
 006EBDD6    mov         ecx,dword ptr [eax]
 006EBDD8    call        dword ptr [ecx+10C]
 006EBDDE    mov         eax,dword ptr [ebp+8]
 006EBDE1    mov         eax,dword ptr [eax-4]
 006EBDE4    mov         eax,dword ptr [eax+858]
 006EBDEA    mov         dl,3
 006EBDEC    call        TFXPPD.GetBattPackMonitoring
 006EBDF1    mov         edx,eax
 006EBDF3    mov         eax,dword ptr [ebp+8]
 006EBDF6    mov         eax,dword ptr [eax-4]
 006EBDF9    mov         eax,dword ptr [eax+6E4]
 006EBDFF    mov         ecx,dword ptr [eax]
 006EBE01    call        dword ptr [ecx+10C]
 006EBE07    mov         eax,dword ptr [ebp+8]
 006EBE0A    mov         eax,dword ptr [eax-4]
 006EBE0D    mov         eax,dword ptr [eax+858]
 006EBE13    mov         dl,4
 006EBE15    call        TFXPPD.GetBattPackMonitoring
 006EBE1A    mov         edx,eax
 006EBE1C    mov         eax,dword ptr [ebp+8]
 006EBE1F    mov         eax,dword ptr [eax-4]
 006EBE22    mov         eax,dword ptr [eax+6E8]
 006EBE28    mov         ecx,dword ptr [eax]
 006EBE2A    call        dword ptr [ecx+10C]
 006EBE30    push        ebp
 006EBE31    call        006EBD04
 006EBE36    pop         ecx
 006EBE37    pop         ecx
 006EBE38    pop         ebp
 006EBE39    ret
end;*}

//006EBE3C
procedure sub_006EBE3C(?:TFXPDFrame);
begin
{*
 006EBE3C    push        ebp
 006EBE3D    mov         ebp,esp
 006EBE3F    push        ecx
 006EBE40    mov         dword ptr [ebp-4],eax
 006EBE43    push        ebp
 006EBE44    mov         eax,dword ptr [ebp-4]
 006EBE47    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EBE4D    movzx       eax,byte ptr [eax+180]
 006EBE54    call        006EBD18
 006EBE59    pop         ecx
 006EBE5A    mov         eax,dword ptr [ebp-4]
 006EBE5D    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EBE63    mov         dl,byte ptr [eax+17B]
 006EBE69    mov         eax,dword ptr [ebp-4]
 006EBE6C    mov         eax,dword ptr [eax+6F4];TFXPDFrame.cbMainsFaultDelay:TCheckBox
 006EBE72    mov         ecx,dword ptr [eax]
 006EBE74    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EBE7A    mov         eax,dword ptr [ebp-4]
 006EBE7D    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EBE83    xor         edx,edx
 006EBE85    mov         dl,byte ptr [eax+17C]
 006EBE8B    mov         eax,dword ptr [ebp-4]
 006EBE8E    mov         eax,dword ptr [eax+6F8];TFXPDFrame.speMainsFaultDelay:TSpinEdit
 006EBE94    call        TSpinEdit.SetValue
 006EBE99    mov         eax,dword ptr [ebp-4]
 006EBE9C    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EBEA2    call        006A4A68
 006EBEA7    mov         edx,eax
 006EBEA9    mov         eax,dword ptr [ebp-4]
 006EBEAC    mov         eax,dword ptr [eax+6F8];TFXPDFrame.speMainsFaultDelay:TSpinEdit
 006EBEB2    mov         ecx,dword ptr [eax]
 006EBEB4    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006EBEBA    pop         ecx
 006EBEBB    pop         ebp
 006EBEBC    ret
*}
end;

//006EBEC0
procedure TFXPDFrame.cbBattPackMonitoredClick(Sender:TObject);
begin
{*
 006EBEC0    push        ebp
 006EBEC1    mov         ebp,esp
 006EBEC3    add         esp,0FFFFFFF4
 006EBEC6    mov         dword ptr [ebp-8],edx
 006EBEC9    mov         dword ptr [ebp-4],eax
 006EBECC    mov         eax,dword ptr [ebp-8]
 006EBECF    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006EBED5    call        @AsClass
 006EBEDA    mov         dword ptr [ebp-0C],eax
 006EBEDD    mov         eax,dword ptr [ebp-0C]
 006EBEE0    mov         edx,dword ptr [eax]
 006EBEE2    call        dword ptr [edx+108];TCheckBox.GetChecked
 006EBEE8    mov         ecx,eax
 006EBEEA    mov         eax,dword ptr [ebp-0C]
 006EBEED    mov         edx,dword ptr [eax+0C];TCheckBox.FTag:NativeInt
 006EBEF0    cmp         edx,0FF
>006EBEF6    jbe         006EBEFD
 006EBEF8    call        @BoundErr
 006EBEFD    mov         eax,dword ptr [ebp-4]
 006EBF00    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EBF06    call        TFXPPD.SetBattPackMonitoring
 006EBF0B    mov         eax,dword ptr [ebp-4]
 006EBF0E    call        006EBE3C
 006EBF13    mov         esp,ebp
 006EBF15    pop         ebp
 006EBF16    ret
*}
end;

//006EBF18
procedure TFXPDFrame.cbMainsFaultDelayClick(Sender:TObject);
begin
{*
 006EBF18    push        ebp
 006EBF19    mov         ebp,esp
 006EBF1B    add         esp,0FFFFFFF8
 006EBF1E    mov         dword ptr [ebp-8],edx
 006EBF21    mov         dword ptr [ebp-4],eax
 006EBF24    mov         eax,dword ptr [ebp-8]
 006EBF27    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006EBF2D    call        @AsClass
 006EBF32    mov         edx,dword ptr [eax]
 006EBF34    call        dword ptr [edx+108];TCheckBox.GetChecked
 006EBF3A    mov         edx,eax
 006EBF3C    mov         eax,dword ptr [ebp-4]
 006EBF3F    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EBF45    call        006A49C0
 006EBF4A    mov         eax,dword ptr [ebp-4]
 006EBF4D    call        006EBE3C
 006EBF52    pop         ecx
 006EBF53    pop         ecx
 006EBF54    pop         ebp
 006EBF55    ret
*}
end;

//006EBF58
procedure TFXPDFrame.speMainsFaultDelayChange(Sender:TObject);
begin
{*
 006EBF58    push        ebp
 006EBF59    mov         ebp,esp
 006EBF5B    add         esp,0FFFFFFF8
 006EBF5E    mov         dword ptr [ebp-8],edx
 006EBF61    mov         dword ptr [ebp-4],eax
 006EBF64    mov         eax,dword ptr [ebp-8]
 006EBF67    mov         edx,dword ptr ds:[6B049C];TSpinEdit
 006EBF6D    call        @AsClass
 006EBF72    call        TSpinEdit.GetValue
 006EBF77    mov         edx,eax
 006EBF79    cmp         edx,0FF
>006EBF7F    jbe         006EBF86
 006EBF81    call        @BoundErr
 006EBF86    mov         eax,dword ptr [ebp-4]
 006EBF89    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EBF8F    call        006A4A0C
 006EBF94    mov         eax,dword ptr [ebp-4]
 006EBF97    call        006EBE3C
 006EBF9C    pop         ecx
 006EBF9D    pop         ecx
 006EBF9E    pop         ebp
 006EBF9F    ret
*}
end;

//006EBFA0
procedure sub_006EBFA0(?:TFXPDFrame);
begin
{*
 006EBFA0    push        ebp
 006EBFA1    mov         ebp,esp
 006EBFA3    xor         ecx,ecx
 006EBFA5    push        ecx
 006EBFA6    push        ecx
 006EBFA7    push        ecx
 006EBFA8    push        ecx
 006EBFA9    push        ecx
 006EBFAA    push        ecx
 006EBFAB    push        ecx
 006EBFAC    mov         dword ptr [ebp-4],eax
 006EBFAF    xor         eax,eax
 006EBFB1    push        ebp
 006EBFB2    push        6EC1C7
 006EBFB7    push        dword ptr fs:[eax]
 006EBFBA    mov         dword ptr fs:[eax],esp
 006EBFBD    mov         eax,dword ptr [ebp-4]
 006EBFC0    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EBFC6    xor         edx,edx
 006EBFC8    mov         dl,byte ptr [eax+166]
 006EBFCE    mov         eax,dword ptr [ebp-4]
 006EBFD1    mov         eax,dword ptr [eax+70C];TFXPDFrame.cbPrimaryLanguage:TComboBox
 006EBFD7    mov         ecx,dword ptr [eax]
 006EBFD9    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 006EBFDF    mov         eax,dword ptr [ebp-4]
 006EBFE2    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EBFE8    xor         edx,edx
 006EBFEA    mov         dl,byte ptr [eax+167]
 006EBFF0    mov         eax,dword ptr [ebp-4]
 006EBFF3    mov         eax,dword ptr [eax+710];TFXPDFrame.cbSecondaryLanguage:TComboBox
 006EBFF9    mov         ecx,dword ptr [eax]
 006EBFFB    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 006EC001    lea         eax,[ebp-8]
 006EC004    push        eax
 006EC005    mov         eax,dword ptr [ebp-4]
 006EC008    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EC00E    movzx       eax,word ptr [eax+168]
 006EC015    mov         dword ptr [ebp-10],eax
 006EC018    mov         byte ptr [ebp-0C],0
 006EC01C    lea         edx,[ebp-10]
 006EC01F    xor         ecx,ecx
 006EC021    mov         eax,6EC1E0;'%.4d'
 006EC026    call        Format
 006EC02B    mov         edx,dword ptr [ebp-8]
 006EC02E    mov         eax,dword ptr [ebp-4]
 006EC031    mov         eax,dword ptr [eax+724];TFXPDFrame.edServiceCode1:TMaskEdit
 006EC037    call        TCustomMaskEdit.SetText
 006EC03C    lea         eax,[ebp-14]
 006EC03F    push        eax
 006EC040    mov         eax,dword ptr [ebp-4]
 006EC043    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EC049    movzx       eax,word ptr [eax+16A]
 006EC050    mov         dword ptr [ebp-10],eax
 006EC053    mov         byte ptr [ebp-0C],0
 006EC057    lea         edx,[ebp-10]
 006EC05A    xor         ecx,ecx
 006EC05C    mov         eax,6EC1E0;'%.4d'
 006EC061    call        Format
 006EC066    mov         edx,dword ptr [ebp-14]
 006EC069    mov         eax,dword ptr [ebp-4]
 006EC06C    mov         eax,dword ptr [eax+728];TFXPDFrame.edServiceCode2:TMaskEdit
 006EC072    call        TCustomMaskEdit.SetText
 006EC077    lea         eax,[ebp-18]
 006EC07A    push        eax
 006EC07B    mov         eax,dword ptr [ebp-4]
 006EC07E    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EC084    movzx       eax,word ptr [eax+16C]
 006EC08B    mov         dword ptr [ebp-10],eax
 006EC08E    mov         byte ptr [ebp-0C],0
 006EC092    lea         edx,[ebp-10]
 006EC095    xor         ecx,ecx
 006EC097    mov         eax,6EC1E0;'%.4d'
 006EC09C    call        Format
 006EC0A1    mov         edx,dword ptr [ebp-18]
 006EC0A4    mov         eax,dword ptr [ebp-4]
 006EC0A7    mov         eax,dword ptr [eax+72C];TFXPDFrame.edServiceCode3:TMaskEdit
 006EC0AD    call        TCustomMaskEdit.SetText
 006EC0B2    mov         eax,dword ptr [ebp-4]
 006EC0B5    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EC0BB    mov         dl,byte ptr [eax+16F]
 006EC0C1    mov         eax,dword ptr [ebp-4]
 006EC0C4    mov         eax,dword ptr [eax+734];TFXPDFrame.cbSummertime:TCheckBox
 006EC0CA    mov         ecx,dword ptr [eax]
 006EC0CC    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EC0D2    mov         eax,dword ptr [ebp-4]
 006EC0D5    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EC0DB    xor         edx,edx
 006EC0DD    mov         dl,byte ptr [eax+16E]
 006EC0E3    mov         eax,dword ptr [ebp-4]
 006EC0E6    mov         eax,dword ptr [eax+73C];TFXPDFrame.speZoneDisableTime:TSpinEdit
 006EC0EC    call        TSpinEdit.SetValue
 006EC0F1    mov         eax,dword ptr [ebp-4]
 006EC0F4    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EC0FA    xor         edx,edx
 006EC0FC    mov         dl,byte ptr [eax+179]
 006EC102    mov         eax,dword ptr [ebp-4]
 006EC105    mov         eax,dword ptr [eax+74C];TFXPDFrame.speMaxAdoDisabTime:TSpinEdit
 006EC10B    call        TSpinEdit.SetValue
 006EC110    mov         eax,dword ptr [ebp-4]
 006EC113    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EC119    mov         dl,byte ptr [eax+182]
 006EC11F    mov         eax,dword ptr [ebp-4]
 006EC122    mov         eax,dword ptr [eax+754];TFXPDFrame.cbIndSmokeDetDisabled:TCheckBox
 006EC128    mov         ecx,dword ptr [eax]
 006EC12A    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EC130    mov         eax,dword ptr [ebp-4]
 006EC133    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EC139    mov         dl,byte ptr [eax+196]
 006EC13F    mov         eax,dword ptr [ebp-4]
 006EC142    mov         eax,dword ptr [eax+75C];TFXPDFrame.cbIndBuzzerMuted:TCheckBox
 006EC148    mov         ecx,dword ptr [eax]
 006EC14A    call        dword ptr [ecx+10C];TCustomCheckBox.SetChecked
 006EC150    mov         eax,dword ptr [ebp-4]
 006EC153    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EC159    movzx       eax,word ptr [eax+17D]
 006EC160    mov         ecx,1E
 006EC165    xor         edx,edx
 006EC167    div         eax,ecx
 006EC169    mov         edx,eax
 006EC16B    mov         eax,dword ptr [ebp-4]
 006EC16E    mov         eax,dword ptr [eax+764];TFXPDFrame.seMaintInterval:TSpinEdit
 006EC174    call        TSpinEdit.SetValue
 006EC179    lea         eax,[ebp-1C]
 006EC17C    mov         edx,dword ptr [ebp-4]
 006EC17F    mov         edx,dword ptr [edx+85C];TFXPDFrame.FXPan:TFXPanel
 006EC185    mov         edx,dword ptr [edx+18];TFXPanel.FXPTD:TFXPTD
 006EC188    add         edx,27C06
 006EC18E    call        @UStrFromString
 006EC193    mov         edx,dword ptr [ebp-1C]
 006EC196    mov         eax,dword ptr [ebp-4]
 006EC199    mov         eax,dword ptr [eax+768];TFXPDFrame.edMaintInterval:TEdit
 006EC19F    call        TControl.SetText
 006EC1A4    xor         eax,eax
 006EC1A6    pop         edx
 006EC1A7    pop         ecx
 006EC1A8    pop         ecx
 006EC1A9    mov         dword ptr fs:[eax],edx
 006EC1AC    push        6EC1CE
 006EC1B1    lea         eax,[ebp-1C]
 006EC1B4    mov         edx,3
 006EC1B9    call        @UStrArrayClr
 006EC1BE    lea         eax,[ebp-8]
 006EC1C1    call        @UStrClr
 006EC1C6    ret
>006EC1C7    jmp         @HandleFinally
>006EC1CC    jmp         006EC1B1
 006EC1CE    mov         esp,ebp
 006EC1D0    pop         ebp
 006EC1D1    ret
*}
end;

//006EC1EC
procedure TFXPDFrame.cbPrimaryLanguageChange(Sender:TObject);
begin
{*
 006EC1EC    push        ebp
 006EC1ED    mov         ebp,esp
 006EC1EF    add         esp,0FFFFFFF8
 006EC1F2    mov         dword ptr [ebp-8],edx
 006EC1F5    mov         dword ptr [ebp-4],eax
 006EC1F8    mov         eax,dword ptr [ebp-4]
 006EC1FB    mov         eax,dword ptr [eax+70C];TFXPDFrame.cbPrimaryLanguage:TComboBox
 006EC201    mov         edx,dword ptr [eax]
 006EC203    call        dword ptr [edx+108];TComboBox.GetItemIndex
 006EC209    mov         edx,eax
 006EC20B    cmp         edx,0FF
>006EC211    jbe         006EC218
 006EC213    call        @BoundErr
 006EC218    mov         eax,dword ptr [ebp-4]
 006EC21B    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EC221    call        006A4470
 006EC226    mov         eax,dword ptr [ebp-4]
 006EC229    call        006EBFA0
 006EC22E    pop         ecx
 006EC22F    pop         ecx
 006EC230    pop         ebp
 006EC231    ret
*}
end;

//006EC234
procedure TFXPDFrame.cbSecondaryLanguageChange(Sender:TObject);
begin
{*
 006EC234    push        ebp
 006EC235    mov         ebp,esp
 006EC237    add         esp,0FFFFFFF8
 006EC23A    mov         dword ptr [ebp-8],edx
 006EC23D    mov         dword ptr [ebp-4],eax
 006EC240    mov         eax,dword ptr [ebp-4]
 006EC243    mov         eax,dword ptr [eax+710];TFXPDFrame.cbSecondaryLanguage:TComboBox
 006EC249    mov         edx,dword ptr [eax]
 006EC24B    call        dword ptr [edx+108];TComboBox.GetItemIndex
 006EC251    mov         edx,eax
 006EC253    cmp         edx,0FF
>006EC259    jbe         006EC260
 006EC25B    call        @BoundErr
 006EC260    mov         eax,dword ptr [ebp-4]
 006EC263    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EC269    call        006A450C
 006EC26E    mov         eax,dword ptr [ebp-4]
 006EC271    call        006EBFA0
 006EC276    pop         ecx
 006EC277    pop         ecx
 006EC278    pop         ebp
 006EC279    ret
*}
end;

//006EC27C
procedure TFXPDFrame.edServiceCode1Change(Sender:TObject);
begin
{*
 006EC27C    push        ebp
 006EC27D    mov         ebp,esp
 006EC27F    add         esp,0FFFFFFF0
 006EC282    xor         ecx,ecx
 006EC284    mov         dword ptr [ebp-10],ecx
 006EC287    mov         dword ptr [ebp-0C],edx
 006EC28A    mov         dword ptr [ebp-4],eax
 006EC28D    xor         eax,eax
 006EC28F    push        ebp
 006EC290    push        6EC2F8
 006EC295    push        dword ptr fs:[eax]
 006EC298    mov         dword ptr fs:[eax],esp
 006EC29B    xor         eax,eax
 006EC29D    mov         dword ptr [ebp-8],eax
 006EC2A0    lea         edx,[ebp-10]
 006EC2A3    mov         eax,dword ptr [ebp-4]
 006EC2A6    mov         eax,dword ptr [eax+724];TFXPDFrame.edServiceCode1:TMaskEdit
 006EC2AC    call        TCustomMaskEdit.GetText
 006EC2B1    mov         eax,dword ptr [ebp-10]
 006EC2B4    lea         edx,[ebp-8]
 006EC2B7    call        0041E5A0
 006EC2BC    mov         edx,dword ptr [ebp-8]
 006EC2BF    cmp         edx,0FFFF
>006EC2C5    jbe         006EC2CC
 006EC2C7    call        @BoundErr
 006EC2CC    mov         eax,dword ptr [ebp-4]
 006EC2CF    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EC2D5    call        006A459C
 006EC2DA    mov         eax,dword ptr [ebp-4]
 006EC2DD    call        006EBFA0
 006EC2E2    xor         eax,eax
 006EC2E4    pop         edx
 006EC2E5    pop         ecx
 006EC2E6    pop         ecx
 006EC2E7    mov         dword ptr fs:[eax],edx
 006EC2EA    push        6EC2FF
 006EC2EF    lea         eax,[ebp-10]
 006EC2F2    call        @UStrClr
 006EC2F7    ret
>006EC2F8    jmp         @HandleFinally
>006EC2FD    jmp         006EC2EF
 006EC2FF    mov         esp,ebp
 006EC301    pop         ebp
 006EC302    ret
*}
end;

//006EC304
procedure TFXPDFrame.edServiceCode2Change(Sender:TObject);
begin
{*
 006EC304    push        ebp
 006EC305    mov         ebp,esp
 006EC307    add         esp,0FFFFFFF0
 006EC30A    xor         ecx,ecx
 006EC30C    mov         dword ptr [ebp-10],ecx
 006EC30F    mov         dword ptr [ebp-0C],edx
 006EC312    mov         dword ptr [ebp-4],eax
 006EC315    xor         eax,eax
 006EC317    push        ebp
 006EC318    push        6EC380
 006EC31D    push        dword ptr fs:[eax]
 006EC320    mov         dword ptr fs:[eax],esp
 006EC323    xor         eax,eax
 006EC325    mov         dword ptr [ebp-8],eax
 006EC328    lea         edx,[ebp-10]
 006EC32B    mov         eax,dword ptr [ebp-4]
 006EC32E    mov         eax,dword ptr [eax+728];TFXPDFrame.edServiceCode2:TMaskEdit
 006EC334    call        TCustomMaskEdit.GetText
 006EC339    mov         eax,dword ptr [ebp-10]
 006EC33C    lea         edx,[ebp-8]
 006EC33F    call        0041E5A0
 006EC344    mov         edx,dword ptr [ebp-8]
 006EC347    cmp         edx,0FFFF
>006EC34D    jbe         006EC354
 006EC34F    call        @BoundErr
 006EC354    mov         eax,dword ptr [ebp-4]
 006EC357    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EC35D    call        006A462C
 006EC362    mov         eax,dword ptr [ebp-4]
 006EC365    call        006EBFA0
 006EC36A    xor         eax,eax
 006EC36C    pop         edx
 006EC36D    pop         ecx
 006EC36E    pop         ecx
 006EC36F    mov         dword ptr fs:[eax],edx
 006EC372    push        6EC387
 006EC377    lea         eax,[ebp-10]
 006EC37A    call        @UStrClr
 006EC37F    ret
>006EC380    jmp         @HandleFinally
>006EC385    jmp         006EC377
 006EC387    mov         esp,ebp
 006EC389    pop         ebp
 006EC38A    ret
*}
end;

//006EC38C
procedure TFXPDFrame.edServiceCode3Change(Sender:TObject);
begin
{*
 006EC38C    push        ebp
 006EC38D    mov         ebp,esp
 006EC38F    add         esp,0FFFFFFF0
 006EC392    xor         ecx,ecx
 006EC394    mov         dword ptr [ebp-10],ecx
 006EC397    mov         dword ptr [ebp-0C],edx
 006EC39A    mov         dword ptr [ebp-4],eax
 006EC39D    xor         eax,eax
 006EC39F    push        ebp
 006EC3A0    push        6EC408
 006EC3A5    push        dword ptr fs:[eax]
 006EC3A8    mov         dword ptr fs:[eax],esp
 006EC3AB    xor         eax,eax
 006EC3AD    mov         dword ptr [ebp-8],eax
 006EC3B0    lea         edx,[ebp-10]
 006EC3B3    mov         eax,dword ptr [ebp-4]
 006EC3B6    mov         eax,dword ptr [eax+72C];TFXPDFrame.edServiceCode3:TMaskEdit
 006EC3BC    call        TCustomMaskEdit.GetText
 006EC3C1    mov         eax,dword ptr [ebp-10]
 006EC3C4    lea         edx,[ebp-8]
 006EC3C7    call        0041E5A0
 006EC3CC    mov         edx,dword ptr [ebp-8]
 006EC3CF    cmp         edx,0FFFF
>006EC3D5    jbe         006EC3DC
 006EC3D7    call        @BoundErr
 006EC3DC    mov         eax,dword ptr [ebp-4]
 006EC3DF    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EC3E5    call        006A46BC
 006EC3EA    mov         eax,dword ptr [ebp-4]
 006EC3ED    call        006EBFA0
 006EC3F2    xor         eax,eax
 006EC3F4    pop         edx
 006EC3F5    pop         ecx
 006EC3F6    pop         ecx
 006EC3F7    mov         dword ptr fs:[eax],edx
 006EC3FA    push        6EC40F
 006EC3FF    lea         eax,[ebp-10]
 006EC402    call        @UStrClr
 006EC407    ret
>006EC408    jmp         @HandleFinally
>006EC40D    jmp         006EC3FF
 006EC40F    mov         esp,ebp
 006EC411    pop         ebp
 006EC412    ret
*}
end;

//006EC414
procedure TFXPDFrame.cbSummertimeClick(Sender:TObject);
begin
{*
 006EC414    push        ebp
 006EC415    mov         ebp,esp
 006EC417    add         esp,0FFFFFFF8
 006EC41A    mov         dword ptr [ebp-8],edx
 006EC41D    mov         dword ptr [ebp-4],eax
 006EC420    mov         eax,dword ptr [ebp-8]
 006EC423    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006EC429    call        @AsClass
 006EC42E    mov         edx,dword ptr [eax]
 006EC430    call        dword ptr [edx+108];TCheckBox.GetChecked
 006EC436    mov         edx,eax
 006EC438    mov         eax,dword ptr [ebp-4]
 006EC43B    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EC441    call        006A4A84
 006EC446    mov         eax,dword ptr [ebp-4]
 006EC449    call        006EBFA0
 006EC44E    pop         ecx
 006EC44F    pop         ecx
 006EC450    pop         ebp
 006EC451    ret
*}
end;

//006EC454
procedure TFXPDFrame.speZoneDisableTimeChange(Sender:TObject);
begin
{*
 006EC454    push        ebp
 006EC455    mov         ebp,esp
 006EC457    add         esp,0FFFFFFF8
 006EC45A    mov         dword ptr [ebp-8],edx
 006EC45D    mov         dword ptr [ebp-4],eax
 006EC460    mov         eax,dword ptr [ebp-8]
 006EC463    mov         edx,dword ptr ds:[6B049C];TSpinEdit
 006EC469    call        @AsClass
 006EC46E    call        TSpinEdit.GetValue
 006EC473    mov         edx,eax
 006EC475    cmp         edx,0FF
>006EC47B    jbe         006EC482
 006EC47D    call        @BoundErr
 006EC482    mov         eax,dword ptr [ebp-4]
 006EC485    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EC48B    call        006A4898
 006EC490    mov         eax,dword ptr [ebp-4]
 006EC493    call        006EBFA0
 006EC498    pop         ecx
 006EC499    pop         ecx
 006EC49A    pop         ebp
 006EC49B    ret
*}
end;

//006EC49C
procedure TFXPDFrame.speMaxAdoDisabTimeChange(Sender:TObject);
begin
{*
 006EC49C    push        ebp
 006EC49D    mov         ebp,esp
 006EC49F    add         esp,0FFFFFFF8
 006EC4A2    mov         dword ptr [ebp-8],edx
 006EC4A5    mov         dword ptr [ebp-4],eax
 006EC4A8    mov         eax,dword ptr [ebp-8]
 006EC4AB    mov         edx,dword ptr ds:[6B049C];TSpinEdit
 006EC4B1    call        @AsClass
 006EC4B6    call        TSpinEdit.GetValue
 006EC4BB    mov         edx,eax
 006EC4BD    cmp         edx,0FF
>006EC4C3    jbe         006EC4CA
 006EC4C5    call        @BoundErr
 006EC4CA    mov         eax,dword ptr [ebp-4]
 006EC4CD    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EC4D3    call        006A48CC
 006EC4D8    mov         eax,dword ptr [ebp-4]
 006EC4DB    call        006EBFA0
 006EC4E0    pop         ecx
 006EC4E1    pop         ecx
 006EC4E2    pop         ebp
 006EC4E3    ret
*}
end;

//006EC4E4
procedure TFXPDFrame.cbIndSmokeDetDisabledClick(Sender:TObject);
begin
{*
 006EC4E4    push        ebp
 006EC4E5    mov         ebp,esp
 006EC4E7    add         esp,0FFFFFFF8
 006EC4EA    mov         dword ptr [ebp-8],edx
 006EC4ED    mov         dword ptr [ebp-4],eax
 006EC4F0    mov         eax,dword ptr [ebp-8]
 006EC4F3    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006EC4F9    call        @AsClass
 006EC4FE    mov         edx,dword ptr [eax]
 006EC500    call        dword ptr [edx+108];TCheckBox.GetChecked
 006EC506    mov         edx,eax
 006EC508    mov         eax,dword ptr [ebp-4]
 006EC50B    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EC511    call        006A4B74
 006EC516    mov         eax,dword ptr [ebp-4]
 006EC519    call        006EBFA0
 006EC51E    pop         ecx
 006EC51F    pop         ecx
 006EC520    pop         ebp
 006EC521    ret
*}
end;

//006EC524
procedure TFXPDFrame.cbIndBuzzerMutedClick(Sender:TObject);
begin
{*
 006EC524    push        ebp
 006EC525    mov         ebp,esp
 006EC527    add         esp,0FFFFFFF8
 006EC52A    mov         dword ptr [ebp-8],edx
 006EC52D    mov         dword ptr [ebp-4],eax
 006EC530    mov         eax,dword ptr [ebp-8]
 006EC533    mov         edx,dword ptr ds:[4FFFB4];TCheckBox
 006EC539    call        @AsClass
 006EC53E    mov         edx,dword ptr [eax]
 006EC540    call        dword ptr [edx+108];TCheckBox.GetChecked
 006EC546    mov         edx,eax
 006EC548    mov         eax,dword ptr [ebp-4]
 006EC54B    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EC551    call        006A4AEC
 006EC556    mov         eax,dword ptr [ebp-4]
 006EC559    call        006EBFA0
 006EC55E    pop         ecx
 006EC55F    pop         ecx
 006EC560    pop         ebp
 006EC561    ret
*}
end;

//006EC564
procedure TFXPDFrame.seMaintIntervalChange(Sender:TObject);
begin
{*
 006EC564    push        ebp
 006EC565    mov         ebp,esp
 006EC567    add         esp,0FFFFFFF8
 006EC56A    mov         dword ptr [ebp-8],edx
 006EC56D    mov         dword ptr [ebp-4],eax
 006EC570    mov         eax,dword ptr [ebp-8]
 006EC573    mov         edx,dword ptr ds:[6B049C];TSpinEdit
 006EC579    call        @AsClass
 006EC57E    call        TSpinEdit.GetValue
 006EC583    imul        edx,eax,1E
>006EC586    jno         006EC58D
 006EC588    call        @IntOver
 006EC58D    cmp         edx,0FFFF
>006EC593    jbe         006EC59A
 006EC595    call        @BoundErr
 006EC59A    mov         eax,dword ptr [ebp-4]
 006EC59D    mov         eax,dword ptr [eax+858];TFXPDFrame.FXPDTmp:TFXPPD
 006EC5A3    call        006A4B20
 006EC5A8    mov         eax,dword ptr [ebp-4]
 006EC5AB    call        006EBFA0
 006EC5B0    pop         ecx
 006EC5B1    pop         ecx
 006EC5B2    pop         ebp
 006EC5B3    ret
*}
end;

//006EC5B4
procedure TFXPDFrame.edMaintIntervalChange(Sender:TObject);
begin
{*
 006EC5B4    push        ebp
 006EC5B5    mov         ebp,esp
 006EC5B7    add         esp,0FFFFFEF0
 006EC5BD    xor         ecx,ecx
 006EC5BF    mov         dword ptr [ebp-10C],ecx
 006EC5C5    mov         dword ptr [ebp-110],ecx
 006EC5CB    mov         dword ptr [ebp-8],edx
 006EC5CE    mov         dword ptr [ebp-4],eax
 006EC5D1    xor         eax,eax
 006EC5D3    push        ebp
 006EC5D4    push        6EC669
 006EC5D9    push        dword ptr fs:[eax]
 006EC5DC    mov         dword ptr fs:[eax],esp
 006EC5DF    lea         edx,[ebp-110]
 006EC5E5    mov         eax,dword ptr [ebp-4]
 006EC5E8    mov         eax,dword ptr [eax+768];TFXPDFrame.edMaintInterval:TEdit
 006EC5EE    call        TControl.GetText
 006EC5F3    mov         edx,dword ptr [ebp-110]
 006EC5F9    lea         eax,[ebp-10C]
 006EC5FF    mov         ecx,0
 006EC604    call        @LStrFromUStr
 006EC609    mov         edx,dword ptr [ebp-10C]
 006EC60F    lea         eax,[ebp-108]
 006EC615    mov         ecx,0FF
 006EC61A    call        @LStrToString
 006EC61F    lea         edx,[ebp-108]
 006EC625    mov         eax,dword ptr [ebp-4]
 006EC628    mov         eax,dword ptr [eax+85C];TFXPDFrame.FXPan:TFXPanel
 006EC62E    mov         eax,dword ptr [eax+18];TFXPanel.FXPTD:TFXPTD
 006EC631    add         eax,27C06
 006EC636    mov         cl,3C
 006EC638    call        @PStrNCpy
 006EC63D    mov         eax,dword ptr [ebp-4]
 006EC640    call        006EBFA0
 006EC645    xor         eax,eax
 006EC647    pop         edx
 006EC648    pop         ecx
 006EC649    pop         ecx
 006EC64A    mov         dword ptr fs:[eax],edx
 006EC64D    push        6EC670
 006EC652    lea         eax,[ebp-110]
 006EC658    call        @UStrClr
 006EC65D    lea         eax,[ebp-10C]
 006EC663    call        @LStrClr
 006EC668    ret
>006EC669    jmp         @HandleFinally
>006EC66E    jmp         006EC652
 006EC670    mov         esp,ebp
 006EC672    pop         ebp
 006EC673    ret
*}
end;

//006EC674
procedure TFXPDFrame.PageControl1Change(Sender:TObject);
begin
{*
 006EC674    push        ebp
 006EC675    mov         ebp,esp
 006EC677    add         esp,0FFFFFFF8
 006EC67A    mov         dword ptr [ebp-8],edx
 006EC67D    mov         dword ptr [ebp-4],eax
 006EC680    mov         eax,dword ptr [ebp-4]
 006EC683    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 006EC689    call        00535CAC
 006EC68E    cmp         eax,0A
>006EC691    ja          006EC769
 006EC697    jmp         dword ptr [eax*4+6EC69E]
 006EC697    dd          006EC6CA
 006EC697    dd          006EC6D7
 006EC697    dd          006EC6E4
 006EC697    dd          006EC6EE
 006EC697    dd          006EC6F8
 006EC697    dd          006EC702
 006EC697    dd          006EC716
 006EC697    dd          006EC743
 006EC697    dd          006EC74D
 006EC697    dd          006EC757
 006EC697    dd          006EC761
 006EC6CA    mov         eax,dword ptr [ebp-4]
 006EC6CD    call        006E6B2C
>006EC6D2    jmp         006EC769
 006EC6D7    mov         eax,dword ptr [ebp-4]
 006EC6DA    call        006E6CA4
>006EC6DF    jmp         006EC769
 006EC6E4    mov         eax,dword ptr [ebp-4]
 006EC6E7    call        006E792C
>006EC6EC    jmp         006EC769
 006EC6EE    mov         eax,dword ptr [ebp-4]
 006EC6F1    call        006E8044
>006EC6F6    jmp         006EC769
 006EC6F8    mov         eax,dword ptr [ebp-4]
 006EC6FB    call        006E952C
>006EC700    jmp         006EC769
 006EC702    mov         eax,dword ptr [ebp-4]
 006EC705    mov         byte ptr [eax+848],0;TFXPDFrame.CurrentIOC:LongInt
 006EC70C    mov         eax,dword ptr [ebp-4]
 006EC70F    call        006E58E0
>006EC714    jmp         006EC769
 006EC716    mov         eax,dword ptr [ebp-4]
 006EC719    mov         eax,dword ptr [eax+4D0];TFXPDFrame.speCurrentIOC:TSpinEdit
 006EC71F    call        TSpinEdit.GetValue
 006EC724    cmp         eax,0FF
>006EC729    jbe         006EC730
 006EC72B    call        @BoundErr
 006EC730    mov         edx,dword ptr [ebp-4]
 006EC733    mov         byte ptr [edx+848],al;TFXPDFrame.CurrentIOC:LongInt
 006EC739    mov         eax,dword ptr [ebp-4]
 006EC73C    call        006E5E6C
>006EC741    jmp         006EC769
 006EC743    mov         eax,dword ptr [ebp-4]
 006EC746    call        006EB2A4
>006EC74B    jmp         006EC769
 006EC74D    mov         eax,dword ptr [ebp-4]
 006EC750    call        006EB628
>006EC755    jmp         006EC769
 006EC757    mov         eax,dword ptr [ebp-4]
 006EC75A    call        006EBFA0
>006EC75F    jmp         006EC769
 006EC761    mov         eax,dword ptr [ebp-4]
 006EC764    call        006EBE3C
 006EC769    pop         ecx
 006EC76A    pop         ecx
 006EC76B    pop         ebp
 006EC76C    ret
*}
end;

Initialization
Finalization
//006EC770
{*
 006EC770    push        ebp
 006EC771    mov         ebp,esp
 006EC773    xor         eax,eax
 006EC775    push        ebp
 006EC776    push        6EC7AB
 006EC77B    push        dword ptr fs:[eax]
 006EC77E    mov         dword ptr fs:[eax],esp
 006EC781    inc         dword ptr ds:[901F60]
>006EC787    jne         006EC79D
 006EC789    mov         eax,7C2ED4;^'Current data for this IO controller will be deleted if you change its type!...
 006EC78E    call        @UStrClr
 006EC793    mov         eax,7C2ED8;^'Changes you might have made in this data view will be lost.
Do you want to...
 006EC798    call        @UStrClr
 006EC79D    xor         eax,eax
 006EC79F    pop         edx
 006EC7A0    pop         ecx
 006EC7A1    pop         ecx
 006EC7A2    mov         dword ptr fs:[eax],edx
 006EC7A5    push        6EC7B2
 006EC7AA    ret
>006EC7AB    jmp         @HandleFinally
>006EC7B0    jmp         006EC7AA
 006EC7B2    pop         ebp
 006EC7B3    ret
*}
end.