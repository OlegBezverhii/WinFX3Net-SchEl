//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit108;

interface

uses
  SysUtils, Classes, System.Generics.Defaults, System.Generics.Collections, Vcl.ImgList, Vcl.Menus, FXADMenus, FXColSelectDlg, FXADFill, Vcl.CheckLst, FXIniFiles, Vcl.Buttons, System.Generics.Collections, Vcl.StdCtrls, Vcl.StdActns, Vcl.ComCtrls, FXOverwriteDialog, FXEsaFileMerge, FXAboutFrames, Vcl.Samples.Spin, Vcl.Mask, Vcl.Grids;

type
  TFXADMenuFrame = class(TFrame)
  published
    SysTypeMenu:TPopupMenu;//f2B0
    miSysNotInUse:TMenuItem;//f2B4
    miSysIonSensor:TMenuItem;//f2B8
    miSysOptSensor:TMenuItem;//f2BC
    miSysOptNormalLed:TMenuItem;//f2C0
    miSysOptSirenControl:TMenuItem;//f2C4
    miSysHeatSensor:TMenuItem;//f2C8
    miSysHeatNormalLed:TMenuItem;//f2CC
    miSysHeatSirenControl:TMenuItem;//f2D0
    miSysOmniSensor:TMenuItem;//f2D4
    miSysLaserLZR1:TMenuItem;//f2D8
    miSysLaser7251:TMenuItem;//f2DC
    miSysMultiSensor:TMenuItem;//f2E0
    miSysMultiNormalLed:TMenuItem;//f2E4
    miSysMultiSirenControl:TMenuItem;//f2E8
    miSysCoptirSensor:TMenuItem;//f2EC
    miSysCoptirNormalLed:TMenuItem;//f2F0
    miSysCoptirSirenControl:TMenuItem;//f2F4
    miSysPtirSensor:TMenuItem;//f2F8
    miSysPtirNormalLed:TMenuItem;//f2FC
    miSysPtirSirenControl:TMenuItem;//f300
    miSysBeamSensor:TMenuItem;//f304
    N1:TMenuItem;//f308
    miSysMonitorModule:TMenuItem;//f30C
    miSysControlModule:TMenuItem;//f310
    N2:TMenuItem;//f314
    miSysConvZoneModule:TMenuItem;//f318
    N3:TMenuItem;//f31C
    miSysAnyType:TMenuItem;//f320
    miSysAnyTypeVirtual:TMenuItem;//f324
    ComInputModeMenu:TPopupMenu;//f328
    miModeNormal:TMenuItem;//f32C
    miModeDelayed:TMenuItem;//f330
    miModeCoincidence:TMenuItem;//f334
    miModePrewarning:TMenuItem;//f338
    miModeLocalAlarm:TMenuItem;//f33C
    ComYesNoMenu:TPopupMenu;//f340
    miNo:TMenuItem;//f344
    miYes:TMenuItem;//f348
    ComMonitoringMenu:TPopupMenu;//f34C
    miMonitored:TMenuItem;//f350
    miNotMonitored:TMenuItem;//f354
    miSirenControl:TMenuItem;//f358
    ComLevelMenu:TPopupMenu;//f35C
    miCommonLevel1:TMenuItem;//f360
    miCommonLevel2:TMenuItem;//f364
    miCommonLevel3:TMenuItem;//f368
    miCommonLevel4:TMenuItem;//f36C
    miCommonLevel5:TMenuItem;//f370
    LaserLevelMenu:TPopupMenu;//f374
    miLaserLevel1:TMenuItem;//f378
    miLaserLevel2:TMenuItem;//f37C
    miLaserLevel3:TMenuItem;//f380
    miLaserLevel4:TMenuItem;//f384
    miLaserLevel5:TMenuItem;//f388
    miLaserLevel6:TMenuItem;//f38C
    miLaserLevel7:TMenuItem;//f390
    miLaserLevel8:TMenuItem;//f394
    miLaserLevel9:TMenuItem;//f398
    miLaser2Level9:TMenuItem;//f39C
    miLaserLevel10:TMenuItem;//f3A0
    SysMultiLevelMenu:TPopupMenu;//f3A4
    miSysMultiLevel1:TMenuItem;//f3A8
    miSysMultiLevel2:TMenuItem;//f3AC
    miSysMultiLevel3:TMenuItem;//f3B0
    miSysMultiLevel4:TMenuItem;//f3B4
    miSysMultiLevel5:TMenuItem;//f3B8
    miSysMultiLevel6:TMenuItem;//f3BC
    ComInDelayMenu:TPopupMenu;//f3C0
    miNodelay:TMenuItem;//f3C4
    mi10seconds:TMenuItem;//f3C8
    mi20seconds:TMenuItem;//f3CC
    mi30seconds:TMenuItem;//f3D0
    mi40seconds:TMenuItem;//f3D4
    mi50seconds:TMenuItem;//f3D8
    mi60seconds:TMenuItem;//f3DC
    ComInFiltMenu:TPopupMenu;//f3E0
    miNoFilter:TMenuItem;//f3E4
    miFilter1:TMenuItem;//f3E8
    miFilter2:TMenuItem;//f3EC
    miFilter3:TMenuItem;//f3F0
    miFilter4:TMenuItem;//f3F4
    ComDayModeMenu:TPopupMenu;//f3F8
    miDayNoEffect:TMenuItem;//f3FC
    miDayThresholds:TMenuItem;//f400
    miDayDisabled:TMenuItem;//f404
    miDayInpDisabled:TMenuItem;//f408
    CnvEOLMenu:TPopupMenu;//f40C
    miEOL4k7R1:TMenuItem;//f410
    miEOL2k9R1:TMenuItem;//f414
    ApoTypeMenu:TPopupMenu;//f418
    miApoNotUsed:TMenuItem;//f41C
    miApoIon:TMenuItem;//f420
    miApoIonIntellia:TMenuItem;//f424
    miApoIonDiscovery:TMenuItem;//f428
    miApoIonXP95:TMenuItem;//f42C
    miApoIonS90:TMenuItem;//f430
    miApoIonAny:TMenuItem;//f434
    miApoOpt:TMenuItem;//f438
    miApoOptIntellia:TMenuItem;//f43C
    miApoOptDiscovery:TMenuItem;//f440
    miApoOptXP95:TMenuItem;//f444
    miApoOptS90:TMenuItem;//f448
    miApoOptExp:TMenuItem;//f44C
    miApoHeat:TMenuItem;//f450
    miApoHeatIntellia:TMenuItem;//f454
    miApoHeatDiscovery:TMenuItem;//f458
    miApoHeatXP95:TMenuItem;//f45C
    miApoHeatS90:TMenuItem;//f460
    miApoHeatExp:TMenuItem;//f464
    miApoHighHeat:TMenuItem;//f468
    miApoHighHeatIntellia:TMenuItem;//f46C
    miApoHighHeatDiscovery:TMenuItem;//f470
    miApoHighHeatXP95:TMenuItem;//f474
    miApoHighHeatS90:TMenuItem;//f478
    miApoHighHeatExp:TMenuItem;//f47C
    miApoMulti:TMenuItem;//f480
    miApoMultiIntellia:TMenuItem;//f484
    miApoMultiDiscovery:TMenuItem;//f488
    miApoMultiXP95:TMenuItem;//f48C
    miApoMultiS90:TMenuItem;//f490
    miApoMultiExp:TMenuItem;//f494
    ApoTypeN1:TMenuItem;//f498
    miApoCO:TMenuItem;//f49C
    miApoCOIntellia:TMenuItem;//f4A0
    miApoCODiscovery:TMenuItem;//f4A4
    miApoCoHeat:TMenuItem;//f4A8
    miApoCoHeatIntellia:TMenuItem;//f4AC
    miApoCoHeatDiscovery:TMenuItem;//f4B0
    ApoTypeN2:TMenuItem;//f4B4
    miApoBeam:TMenuItem;//f4B8
    miApoBeamTypes:TMenuItem;//f4BC
    miApoFlame:TMenuItem;//f4C0
    miApoFlameTypes:TMenuItem;//f4C4
    ApoAnyType1:TMenuItem;//f4C8
    ApoTypeN3:TMenuItem;//f4CC
    ApoConvZone1:TMenuItem;//f4D0
    ApoTypeN4:TMenuItem;//f4D4
    miApoMCP:TMenuItem;//f4D8
    miApoMCPIntellia:TMenuItem;//f4DC
    miApoMCPDiscovery:TMenuItem;//f4E0
    miApoMCPXP95:TMenuItem;//f4E4
    miApoMCPS90:TMenuItem;//f4E8
    miApoMCPExp:TMenuItem;//f4EC
    miApoSwMonInt:TMenuItem;//f4F0
    miApoSwMonitor:TMenuItem;//f4F4
    miApoSwMonitorTypes:TMenuItem;//f4F8
    ApoSwMonPlus1:TMenuItem;//f4FC
    ApoSwMonMini1:TMenuItem;//f500
    ApoTypeN5:TMenuItem;//f504
    ApoTypeN6:TMenuItem;//f508
    ApoIO011:TMenuItem;//f50C
    ApoIO11Mains1:TMenuItem;//f510
    ApoIO211:TMenuItem;//f514
    miApoIO33:TMenuItem;//f518
    miApoIO33Intellia:TMenuItem;//f51C
    miApoIO33Discovery:TMenuItem;//f520
    miApoIO33XP95:TMenuItem;//f524
    miApoIO33S90:TMenuItem;//f528
    miApoIO33Exp:TMenuItem;//f52C
    ApoTypeN7:TMenuItem;//f530
    ApoLPSounder1:TMenuItem;//f534
    miApoIOSounder:TMenuItem;//f538
    miApoIOSounderTypes:TMenuItem;//f53C
    miApoBeacon:TMenuItem;//f540
    miApoBeaconTypes:TMenuItem;//f544
    miApoIntSounder:TMenuItem;//f548
    miApoIntSounderIntellia:TMenuItem;//f54C
    miApoIntSounderDiscovery:TMenuItem;//f550
    miApoIntSounderXP95:TMenuItem;//f554
    miApoIntSounderS90:TMenuItem;//f558
    miApoIntSounderExp:TMenuItem;//f55C
    ApoAnyTypeVirtual1:TMenuItem;//f560
    ApoTypeN8:TMenuItem;//f564
    miApoDSB:TMenuItem;//f568
    miApoDSBIntellia:TMenuItem;//f56C
    miApoDSBDiscovery:TMenuItem;//f570
    ApoDVSB1:TMenuItem;//f574
    ApoDVSBIntellia1:TMenuItem;//f578
    ApoDVSBDiscovery1:TMenuItem;//f57C
    ApoDVS1:TMenuItem;//f580
    ApoDVSIntellia1:TMenuItem;//f584
    ApoDVSDiscovery1:TMenuItem;//f588
    ComOutputMenu:TPopupMenu;//f58C
    miOutNotInUse:TMenuItem;//f590
    miOutFireAD:TMenuItem;//f594
    miOutFireADNS:TMenuItem;//f598
    miOutFireADL1Sil:TMenuItem;//f59C
    miOutFaultWD:TMenuItem;//f5A0
    miOutVEActivate:TMenuItem;//f5A4
    miOutVETest:TMenuItem;//f5A8
    N17:TMenuItem;//f5AC
    miOutFireAlarm:TMenuItem;//f5B0
    miOutPrewarning:TMenuItem;//f5B4
    miOutFaultWarning:TMenuItem;//f5B8
    miOutMaintWarning:TMenuItem;//f5BC
    N18:TMenuItem;//f5C0
    miOutGeneralReset:TMenuItem;//f5C4
    miOutFireDoor:TMenuItem;//f5C8
    miOutExtinguisher:TMenuItem;//f5CC
    N19:TMenuItem;//f5D0
    miOutDisablement:TMenuItem;//f5D4
    miOutZoneDisabled:TMenuItem;//f5D8
    miOutAccessLevel:TMenuItem;//f5DC
    miOutTechAlarm:TMenuItem;//f5E0
    miOutIntLogic:TMenuItem;//f5E4
    miOutExtLogic:TMenuItem;//f5E8
    miOutDelFireAlarm:TMenuItem;//f5EC
    miOutFAREActivatedLED:TMenuItem;//f5F0
    ComSounderModeMenu:TPopupMenu;//f5F4
    miComSounderContinuous:TMenuItem;//f5F8
    miComSounderPulsed:TMenuItem;//f5FC
    miComSounderPhasedevac:TMenuItem;//f600
    miComSounderSwitch:TMenuItem;//f604
    ComCzmMenu:TPopupMenu;//f608
    miComCzmZone:TMenuItem;//f60C
    miComCzmBeam:TMenuItem;//f610
    ComZDisMenu:TPopupMenu;//f614
    miZDisNoEffect:TMenuItem;//f618
    miZDisDisabled:TMenuItem;//f61C
    miZDisInpDisabled:TMenuItem;//f620
    ApoMultiLevelMenu:TPopupMenu;//f624
    miApoMultiLevel1:TMenuItem;//f628
    miApoMultiLevel2:TMenuItem;//f62C
    miApoMultiLevel3:TMenuItem;//f630
    miApoMultiLevel4:TMenuItem;//f634
    miApoMultiLevel5:TMenuItem;//f638
    SapTypeMenu:TPopupMenu;//f63C
    miSapNotUsed:TMenuItem;//f640
    miSapIon:TMenuItem;//f644
    miSapOpt:TMenuItem;//f648
    miSapFiltrex:TMenuItem;//f64C
    miSapTempStat:TMenuItem;//f650
    miSapTempRor:TMenuItem;//f654
    miSapTempHigh:TMenuItem;//f658
    miSapMulti:TMenuItem;//f65C
    miSapPtir:TMenuItem;//f660
    miSapCoptir:TMenuItem;//f664
    miSapLaser1:TMenuItem;//f668
    miSapLaser2:TMenuItem;//f66C
    miSapBeam:TMenuItem;//f670
    miSapMcpIndoor:TMenuItem;//f674
    miSapMcpOutdoor:TMenuItem;//f678
    miSap1In:TMenuItem;//f67C
    miSap1InMicro:TMenuItem;//f680
    miSap2In:TMenuItem;//f684
    miSap2In1Out:TMenuItem;//f688
    miSap1Out:TMenuItem;//f68C
    miSap1Out240:TMenuItem;//f690
    miSapCZ:TMenuItem;//f694
    miSap6CCO:TMenuItem;//f698
    miSap6MRO:TMenuItem;//f69C
    miSap10CCI:TMenuItem;//f6A0
    miSap6CZ:TMenuItem;//f6A4
    miSapCZR:TMenuItem;//f6A8
    miSapAny:TMenuItem;//f6AC
    miSapAnyVirtual:TMenuItem;//f6B0
    miSapIonAdv:TMenuItem;//f6B4
    miSapIonClip:TMenuItem;//f6B8
    miSapOptAdv:TMenuItem;//f6BC
    miSapOptClip:TMenuItem;//f6C0
    miSapFiltrexAdv:TMenuItem;//f6C4
    miSapFiltrexClip:TMenuItem;//f6C8
    miSapTempStatAdv:TMenuItem;//f6CC
    miSapTempStatClip:TMenuItem;//f6D0
    miSapTempRorAdv:TMenuItem;//f6D4
    miSapTempRorClip:TMenuItem;//f6D8
    miSapTempHighAdv:TMenuItem;//f6DC
    miSapTempHighClip:TMenuItem;//f6E0
    miSapMultiAdv:TMenuItem;//f6E4
    miSapMultiClip:TMenuItem;//f6E8
    miSapPtirAdv:TMenuItem;//f6EC
    miSapPtirClip:TMenuItem;//f6F0
    miSapCoptirAdv:TMenuItem;//f6F4
    miSapCoptirClip:TMenuItem;//f6F8
    miSapLaser1Adv:TMenuItem;//f6FC
    miSapLaser1Clip:TMenuItem;//f700
    miSapLaser2Adv:TMenuItem;//f704
    miSapLaser2Clip:TMenuItem;//f708
    miSapBeamAdv:TMenuItem;//f70C
    miSapBeamClip:TMenuItem;//f710
    N23:TMenuItem;//f714
    miSap1InAdv:TMenuItem;//f718
    miSap1InClip:TMenuItem;//f71C
    miSap1OutAdv:TMenuItem;//f720
    miSap1OutClip:TMenuItem;//f724
    miSapCzAdv:TMenuItem;//f728
    miSapCzClip:TMenuItem;//f72C
    ComInputMenu:TPopupMenu;//f730
    miInpNotInUse:TMenuItem;//f734
    miInpMCPorAlmSw:TMenuItem;//f738
    miInpMCP:TMenuItem;//f73C
    miInpMCPLine:TMenuItem;//f740
    miInpConvBeamDet:TMenuItem;//f744
    miInpReserved:TMenuItem;//f748
    miInpConvHeatDet:TMenuItem;//f74C
    miInpDetectionLine:TMenuItem;//f750
    MenuItem1:TMenuItem;//f754
    miInpFireAlarm:TMenuItem;//f758
    miInpPrewarning:TMenuItem;//f75C
    miInpFaultWarning:TMenuItem;//f760
    miInpMaintWarning:TMenuItem;//f764
    miInpTechAlarm:TMenuItem;//f768
    miInpSilentTechAlarm:TMenuItem;//f76C
    miInpLocEvac:TMenuItem;//f770
    miInpEvac:TMenuItem;//f774
    MenuItem2:TMenuItem;//f778
    miInpZoneDisable:TMenuItem;//f77C
    miInpLocDayMode:TMenuItem;//f780
    miInpLocDelAlarmEnable:TMenuItem;//f784
    miInpLocDayAndDelEnable:TMenuItem;//f788
    miInpDayMode:TMenuItem;//f78C
    miInpDelAlrmEnable:TMenuItem;//f790
    miInpDayAndDelEnable:TMenuItem;//f794
    MenuItem3:TMenuItem;//f798
    miInpDelAlarmZonalSilence:TMenuItem;//f79C
    miInpDelAlarmZonalReset:TMenuItem;//f7A0
    miInpGeneralSilence:TMenuItem;//f7A4
    miInpGeneralReset:TMenuItem;//f7A8
    MenuItem4:TMenuItem;//f7AC
    miInpLocAlarmDeviceMute:TMenuItem;//f7B0
    miInpAlarmDeviceMute:TMenuItem;//f7B4
    miInpEvacFault:TMenuItem;//f7B8
    MenuItem6:TMenuItem;//f7BC
    miInpExtinguisherFault:TMenuItem;//f7C0
    miInpExtinguisherActivated:TMenuItem;//f7C4
    miInpSmokeVentActivated:TMenuItem;//f7C8
    miInpCustomerLED1Activate:TMenuItem;//f7CC
    miInpCustomerLED2Activate:TMenuItem;//f7D0
    MenuItem7:TMenuItem;//f7D4
    miInpInternalLogic:TMenuItem;//f7D8
    miInpExternalLogic:TMenuItem;//f7DC
    miInpFaultInFARE:TMenuItem;//f7E0
    N24:TMenuItem;//f7E4
    miSapWallSndr:TMenuItem;//f7E8
    miSapWallSndrStr:TMenuItem;//f7EC
    miSapWallStrobe:TMenuItem;//f7F0
    miSapBaseSndr:TMenuItem;//f7F4
    miSapBaseSndrStr:TMenuItem;//f7F8
    N25:TMenuItem;//f7FC
    N26:TMenuItem;//f800
    Reset1:TMenuItem;//f804
    Reset2:TMenuItem;//f808
    Reset3:TMenuItem;//f80C
    Reset4:TMenuItem;//f810
    Reset5:TMenuItem;//f814
    Reset6:TMenuItem;//f818
    Reset7:TMenuItem;//f81C
    Reset8:TMenuItem;//f820
    Reset9:TMenuItem;//f824
    Reset10:TMenuItem;//f828
    Reset12:TMenuItem;//f82C
    Reset14:TMenuItem;//f830
    Reset15:TMenuItem;//f834
    Reset17:TMenuItem;//f838
    Reset18:TMenuItem;//f83C
    Reset19:TMenuItem;//f840
    Reset20:TMenuItem;//f844
    Reset21:TMenuItem;//f848
    Reset24:TMenuItem;//f84C
    SapBeamLevelMenu:TPopupMenu;//f850
    miSapBeamLevel7:TMenuItem;//f854
    miSapBeamLevel1:TMenuItem;//f858
    miSapBeamLevel2:TMenuItem;//f85C
    miSapBeamLevel5:TMenuItem;//f860
    miSapBeamLevel3:TMenuItem;//f864
    miSapBeamLevel6:TMenuItem;//f868
    miSapBeamLevel4:TMenuItem;//f86C
    Reset11:TMenuItem;//f870
    N4:TMenuItem;//f874
    N5:TMenuItem;//f878
    miSapBeamTester:TMenuItem;//f87C
    miApoSndrTone:TMenuItem;//f880
    miApoSndrTonePair:TMenuItem;//f884
    miPrimTone01:TMenuItem;//f888
    miPrimTone02:TMenuItem;//f88C
    miPrimTone03:TMenuItem;//f890
    miPrimTone04:TMenuItem;//f894
    miPrimTone05:TMenuItem;//f898
    miPrimTone06:TMenuItem;//f89C
    miPrimTone07:TMenuItem;//f8A0
    miPrimTone08:TMenuItem;//f8A4
    miPrimTone09:TMenuItem;//f8A8
    miPrimTone10:TMenuItem;//f8AC
    miPrimTone11:TMenuItem;//f8B0
    miPrimTone12:TMenuItem;//f8B4
    miPrimTone13:TMenuItem;//f8B8
    miPrimTone14:TMenuItem;//f8BC
    miPrimTone15:TMenuItem;//f8C0
    miSecTone01:TMenuItem;//f8C4
    miSecTone02:TMenuItem;//f8C8
    miSecTone03:TMenuItem;//f8CC
    miSecTone04:TMenuItem;//f8D0
    miSecTone05:TMenuItem;//f8D4
    miSecTone06:TMenuItem;//f8D8
    miSecTone07:TMenuItem;//f8DC
    miSecTone08:TMenuItem;//f8E0
    miSecTone09:TMenuItem;//f8E4
    miSecTone10:TMenuItem;//f8E8
    miSecTone11:TMenuItem;//f8EC
    miSecTone12:TMenuItem;//f8F0
    miSecTone13:TMenuItem;//f8F4
    miSecTone14:TMenuItem;//f8F8
    miSecTone15:TMenuItem;//f8FC
    miTonepair01:TMenuItem;//f900
    miTonepair02:TMenuItem;//f904
    miTonepair03:TMenuItem;//f908
    miTonepair04:TMenuItem;//f90C
    miTonepair05:TMenuItem;//f910
    miTonepair06:TMenuItem;//f914
    miTonepair07:TMenuItem;//f918
    miTonepair08:TMenuItem;//f91C
    miTonepair09:TMenuItem;//f920
    miTonepair10:TMenuItem;//f924
    miTonepair11:TMenuItem;//f928
    miTonepair12:TMenuItem;//f92C
    miTonepair13:TMenuItem;//f930
    miTonepair14:TMenuItem;//f934
    miTonepair15:TMenuItem;//f938
    ComSounderVolumeMenu:TPopupMenu;//f93C
    miSndrVol1:TMenuItem;//f940
    miSndrVol2:TMenuItem;//f944
    miSndrVol3:TMenuItem;//f948
    miSndrVol4:TMenuItem;//f94C
    miSndrVol5:TMenuItem;//f950
    miSndrVol6:TMenuItem;//f954
    miSndrVol7:TMenuItem;//f958
    miComCzmWlExp:TMenuItem;//f95C
    miSapSndrTone:TMenuItem;//f960
    miSapTone01:TMenuItem;//f964
    miSapTone02:TMenuItem;//f968
    miSapTone03:TMenuItem;//f96C
    miSapTone04:TMenuItem;//f970
    miSapTone05:TMenuItem;//f974
    miSapTone06:TMenuItem;//f978
    miSapTone07:TMenuItem;//f97C
    miSapTone08:TMenuItem;//f980
    miSapTone09:TMenuItem;//f984
    miSapTone10:TMenuItem;//f988
    miSapTone11:TMenuItem;//f98C
    miSapTone12:TMenuItem;//f990
    miSapTone13:TMenuItem;//f994
    miSapTone14:TMenuItem;//f998
    miSapTone15:TMenuItem;//f99C
    miSapTone16:TMenuItem;//f9A0
    miSapTone17:TMenuItem;//f9A4
    miSapTone18:TMenuItem;//f9A8
    miSapTone19:TMenuItem;//f9AC
    miSapTone20:TMenuItem;//f9B0
    miSapTone21:TMenuItem;//f9B4
    miSapTone22:TMenuItem;//f9B8
    miSapTone23:TMenuItem;//f9BC
    miSapTone24:TMenuItem;//f9C0
    miSapTone25:TMenuItem;//f9C4
    miSapTone26:TMenuItem;//f9C8
    miSapTone27:TMenuItem;//f9CC
    miSapTone28:TMenuItem;//f9D0
    miSapTone29:TMenuItem;//f9D4
    miSapTone30:TMenuItem;//f9D8
    miSapTone31:TMenuItem;//f9DC
    miSapTone32:TMenuItem;//f9E0
    miSapSndrTonePair:TMenuItem;//f9E4
    miSapTonePair01:TMenuItem;//f9E8
    miSapTonePair02:TMenuItem;//f9EC
    miSapTonePair03:TMenuItem;//f9F0
    miSapTonePair04:TMenuItem;//f9F4
    miSapTonePair05:TMenuItem;//f9F8
    miSapTonePair06:TMenuItem;//f9FC
    miSapTonePair07:TMenuItem;//fA00
    miSapTonePair08:TMenuItem;//fA04
    miSapTonePair09:TMenuItem;//fA08
    miSapTonePair10:TMenuItem;//fA0C
    miSapTonePair11:TMenuItem;//fA10
    miSapTonePair12:TMenuItem;//fA14
    miSapTonePair13:TMenuItem;//fA18
    miSapTonePair14:TMenuItem;//fA1C
    miSapTonePair15:TMenuItem;//fA20
    miSapTonePair16:TMenuItem;//fA24
    miSapTonePair17:TMenuItem;//fA28
    miSapTonePair18:TMenuItem;//fA2C
    miSapTonePair19:TMenuItem;//fA30
    miSapTonePair20:TMenuItem;//fA34
    miSapTonePair21:TMenuItem;//fA38
    miSapTonePair22:TMenuItem;//fA3C
    miSapTonePair23:TMenuItem;//fA40
    miSapTonePair24:TMenuItem;//fA44
    miSapTonePair25:TMenuItem;//fA48
    miSapTonePair26:TMenuItem;//fA4C
    miSapTonePair27:TMenuItem;//fA50
    miSapTonePair28:TMenuItem;//fA54
    miSapTonePair29:TMenuItem;//fA58
    miSapTonePair30:TMenuItem;//fA5C
    miSapTonePair31:TMenuItem;//fA60
    miSapTonePair32:TMenuItem;//fA64
    miSndrVolLow:TMenuItem;//fA68
    miSndrVolMed:TMenuItem;//fA6C
    miSndrVolHigh:TMenuItem;//fA70
    miSndrVolSwitch:TMenuItem;//fA74
    SapEnvironmentMenu:TPopupMenu;//fA78
    miSapEnvGeneral:TMenuItem;//fA7C
    miSapEnv1:TMenuItem;//fA80
    miSapEnv2:TMenuItem;//fA84
    miSapEnv3:TMenuItem;//fA88
    miSapEnv4:TMenuItem;//fA8C
    miSapEnv5:TMenuItem;//fA90
    miSapEnv6:TMenuItem;//fA94
    miSapEnv7:TMenuItem;//fA98
    miSapEnv8:TMenuItem;//fA9C
    miSapEnv1Sub1:TMenuItem;//fAA0
    miSapEnv1Sub2:TMenuItem;//fAA4
    miSapEnv2Sub1:TMenuItem;//fAA8
    miSapEnv3Sub1:TMenuItem;//fAAC
    miSapEnv3Sub2:TMenuItem;//fAB0
    miSapEnv3Sub3:TMenuItem;//fAB4
    miSapEnv3Sub4:TMenuItem;//fAB8
    miSapEnv4Sub1:TMenuItem;//fABC
    miSapEnv4Sub2:TMenuItem;//fAC0
    miSapEnv5Sub1:TMenuItem;//fAC4
    miSapEnv5Sub2:TMenuItem;//fAC8
    miSapEnv5Sub3:TMenuItem;//fACC
    miSapEnv6Sub1:TMenuItem;//fAD0
    miSapEnv6Sub2:TMenuItem;//fAD4
    miSapEnv7Sub1:TMenuItem;//fAD8
    miSapEnv8Sub1:TMenuItem;//fADC
    N6:TMenuItem;//fAE0
    N7:TMenuItem;//fAE4
    N8:TMenuItem;//fAE8
    N9:TMenuItem;//fAEC
    N10:TMenuItem;//fAF0
    N11:TMenuItem;//fAF4
    N12:TMenuItem;//fAF8
    N13:TMenuItem;//fAFC
    N14:TMenuItem;//fB00
    miSapEnv2Sub2:TMenuItem;//fB04
    miSapBeamTesterAdv:TMenuItem;//fB08
    miSapMcpIndoorAdv:TMenuItem;//fB0C
    miSapMcpOutdoorAdv:TMenuItem;//fB10
    miSap2InAdv:TMenuItem;//fB14
    miSap2In1OutAdv:TMenuItem;//fB18
    miSap1Out240Adv:TMenuItem;//fB1C
    miSapCZRAdv:TMenuItem;//fB20
    miSap6CCOAdv:TMenuItem;//fB24
    miSap6MROAdv:TMenuItem;//fB28
    miSap10CCIAdv:TMenuItem;//fB2C
    miSap6CZAdv:TMenuItem;//fB30
    miSapWallSndrAdv:TMenuItem;//fB34
    miSapWallSndrStrAdv:TMenuItem;//fB38
    miSapWallStrobeAdv:TMenuItem;//fB3C
    miSapBaseSndrAdv:TMenuItem;//fB40
    miSapBaseSndrStrAdv:TMenuItem;//fB44
    miSysIonList:TMenuItem;//fB48
    miSysOmniList:TMenuItem;//fB4C
    miSysLaserLZR1List:TMenuItem;//fB50
    miSysLaser7251List:TMenuItem;//fB54
    miSysBeamList:TMenuItem;//fB58
    miSysMonitorList:TMenuItem;//fB5C
    miSysControlList:TMenuItem;//fB60
    miSysConvZoneList:TMenuItem;//fB64
    miSap1InMini:TMenuItem;//fB68
    miSap1InMicroAdv:TMenuItem;//fB6C
    miSap1InMiniAdv:TMenuItem;//fB70
    miOutDelAlarmEnabled:TMenuItem;//fB74
    miOutFireRouterDisabled:TMenuItem;//fB78
    miOutFaultRouterDisabled:TMenuItem;//fB7C
    miOutMainSupplyFault:TMenuItem;//fB80
    procedure SchnSubMenuMeasureItem(Sender:TObject; ACanvas:TCanvas; var Height:Integer; var Width:Integer);//0070A954
    procedure SchnSubMenuDrawItem(Sender:TObject; ACanvas:TCanvas; Selected:Boolean; ARect:TRect);//0070A7A4
    procedure EnableOrDisableSysTypePopUpItems(TypeInOtherRange:Word);//0070A42C
    procedure Translate(IniFile:TFXIniFile);//006F3EC0
    procedure SchnMenuMeasureItem(Sender:TObject; ACanvas:TCanvas; var Height:Integer; var Width:Integer);//0070A6E8
    procedure ComSndrVolClick(Sender:TObject);//00709360
    procedure ComOutputClick(Sender:TObject);//00709344
    procedure SchnMenuDrawItem(Sender:TObject; ACanvas:TCanvas; Selected:Boolean; ARect:TRect);//0070A5D4
    procedure SapEnvironmentClick(Sender:TObject);//0070AA00
    procedure EnableOrDisableInputFilterMenuItems(LoopType:Byte);//00709F20
    procedure EnableOrDisableSndrVolumeItems(LoopType:Byte);//0070AAAC
    procedure EnableOrDisableCzmInputFunctions(LoopType:Byte);//00709D28
    procedure EnableOrDisableApoTypeMenuItems(FacFxEnableApolloProtocols:Boolean);//0070937C
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure EnableOrDisableLaserLevelMenuItems(LaserType:Byte);//0070AA1C
    procedure EnableOrDisableOutputFunctionMenuItems(LoopType:Byte);//00709EEC
    procedure EnableOrDisableInputFunctionMenuItems(LoopType:Byte);//00709D68
    procedure EnableOrDisableAPZDisPopupItems(LoopType:Byte; DeviceType:Word; ApInFunc:Byte);//007099B8
    procedure EnableOrDisableDayModePopupItems(LoopType:Byte; DeviceType:Word; ApInFunc:Byte);//00709FC0
    procedure ComZDisClick(Sender:TObject);//00709328
    procedure SysTypeClick(Sender:TObject);//007091D8
    procedure ApoSounderModeClick(Sender:TObject);//007091A0
    procedure CnvEolClick(Sender:TObject);//00709210
    procedure SysDetSubTypeClick(Sender:TObject);//007091F4
    procedure ApoSubTypeClick(Sender:TObject);//00709184
    procedure SapSysTypeClick(Sender:TObject);//00709130
    procedure SapTypeClick(Sender:TObject);//00709114
    procedure ApoTypeClick(Sender:TObject);//00709168
    procedure SapSounderModeClick(Sender:TObject);//0070914C
    procedure ComCzmClick(Sender:TObject);//007091BC
    procedure ComInDelayClick(Sender:TObject);//007092D4
    procedure ComYesNoClick(Sender:TObject);//00709280
    procedure ComDayModeClick(Sender:TObject);//0070930C
    procedure ComInFilterClick(Sender:TObject);//007092F0
    procedure ComSounderModeClick(Sender:TObject);//0070922C
    procedure ComLevelClick(Sender:TObject);//007092B8
    procedure ComInputClick(Sender:TObject);//00709248
    procedure ComMonitoringClick(Sender:TObject);//0070929C
    procedure ComModeClick(Sender:TObject);//00709264
  public
    EvSapTypeClick:TNotifyEvent;//fB88
    fB8A:word;//fB8A
    fB8C:TAPFillDlg;//fB8C
    EvSapSysTypeClick:TNotifyEvent;//fB90
    fB92:word;//fB92
    fB94:TAPFillDlg;//fB94
    EvSapSounderModeClick:TNotifyEvent;//fB98
    fB9A:word;//fB9A
    fB9C:TAPFillDlg;//fB9C
    EvApoTypeClick:TNotifyEvent;//fBA0
    fBA2:word;//fBA2
    fBA4:TAPFillDlg;//fBA4
    EvApoSubTypeClick:TNotifyEvent;//fBA8
    fBAA:word;//fBAA
    fBAC:TAPFillDlg;//fBAC
    EvApoSounderModeClick:TNotifyEvent;//fBB0
    fBB2:word;//fBB2
    fBB4:TAPFillDlg;//fBB4
    EvSysTypeClick:TNotifyEvent;//fBB8
    fBBA:word;//fBBA
    fBBC:TAPFillDlg;//fBBC
    EvSysDetSubTypeClick:TNotifyEvent;//fBC0
    fBC2:word;//fBC2
    fBC4:TAPFillDlg;//fBC4
    EvCnvEolClick:TNotifyEvent;//fBC8
    fBCA:word;//fBCA
    fBCC:TAPFillDlg;//fBCC
    EvComCzmClick:TNotifyEvent;//fBD0
    fBD2:word;//fBD2
    fBD4:TAPFillDlg;//fBD4
    EvComInputClick:TNotifyEvent;//fBD8
    fBDA:word;//fBDA
    fBDC:TAPFillDlg;//fBDC
    EvComLevelClick:TNotifyEvent;//fBE0
    fBE2:word;//fBE2
    fBE4:TAPFillDlg;//fBE4
    EvComModeClick:TNotifyEvent;//fBE8
    fBEA:word;//fBEA
    fBEC:TAPFillDlg;//fBEC
    EvComMonitoringClick:TNotifyEvent;//fBF0
    fBF2:word;//fBF2
    fBF4:TAPFillDlg;//fBF4
    EvComSounderModeClick:TNotifyEvent;//fBF8
    fBFA:word;//fBFA
    fBFC:TAPFillDlg;//fBFC
    EvComYesNoClick:TNotifyEvent;//fC00
    fC02:word;//fC02
    fC04:TAPFillDlg;//fC04
    EvComInDelayClick:TNotifyEvent;//fC08
    fC0A:word;//fC0A
    fC0C:TAPFillDlg;//fC0C
    EvComInFilterClick:TNotifyEvent;//fC10
    fC12:word;//fC12
    fC14:TAPFillDlg;//fC14
    EvComDayModeClick:TNotifyEvent;//fC18
    fC1A:word;//fC1A
    fC1C:TAPFillDlg;//fC1C
    EvComZDisClick:TNotifyEvent;//fC20
    fC22:word;//fC22
    fC24:TAPFillDlg;//fC24
    EvComOutputClick:TNotifyEvent;//fC28
    fC2A:word;//fC2A
    fC2C:TAPFillDlg;//fC2C
    EvComSndrVolClick:TNotifyEvent;//fC30
    fC32:word;//fC32
    fC34:TAPFillDlg;//fC34
    EvSapEnvironmentClick:TNotifyEvent;//fC38
    fC3A:word;//fC3A
    fC3C:TAPFillDlg;//fC3C
  end;
  TFXColSelDlg = class(TForm)
  published
    lbColSelect:TCheckListBox;//f3C0
    btnOK:TBitBtn;//f3C4
    btnCancel:TBitBtn;//f3C8
    btnSelectAll:TBitBtn;//f3CC
    btnClearAll:TBitBtn;//f3D0
    procedure btnSelectAllClick(Sender:TObject);//0070C300
    procedure btnClearAllClick(Sender:TObject);//0070C364
    procedure FormCreate(Sender:TObject);//0070B128
    procedure Translate(IniFile:TFXIniFile);//0070B204
  end;
  TAPFillDlg = class(TForm)
  published
    btnOK:TBitBtn;//f3C0
    btnCancel:TBitBtn;//f3C4
    lbFirstAddress:TLabel;//f3C8
    lbLastaddress:TLabel;//f3CC
    lbNumberOfMatching:TLabel;//f3D0
    edFirstAddress:TEdit;//f3D4
    edLastAddress:TEdit;//f3D8
    udFirst:TUpDown;//f3DC
    udLast:TUpDown;//f3E0
    Grid:TStringGrid;//f3E4
    btnResetCol1:TButton;//f3E8
    btnResetCol2:TButton;//f3EC
    rbRangeSelectLow:TRadioButton;//f3F0
    rbRangeSelectHigh:TRadioButton;//f3F4
    procedure ComCzmClick(Sender:TObject);//00712F94
    procedure CnvEOLClick(Sender:TObject);//00712788
    procedure ComLevelClick(Sender:TObject);//0071338C
    procedure ComInputClick(Sender:TObject);//00712AB8
    procedure CnvZoneLineTypeClick(Sender:TObject);//007122E4
    procedure SysTypeClick(Sender:TObject);//00711C0C
    procedure ApoSounderModeClick(Sender:TObject);//00711AD8
    procedure CnvTypeNotUsedClick(Sender:TObject);//00712284
    procedure SysDetSubTypeClick(Sender:TObject);//007120B4
    procedure ComModeClick(Sender:TObject);//00712850
    procedure ComDayModeClick(Sender:TObject);//00712D9C
    procedure ComInFilterClick(Sender:TObject);//00712CA0
    procedure ComOutputClick(Sender:TObject);//00713440
    procedure ComZDisClick(Sender:TObject);//00712E98
    procedure ComInDelayClick(Sender:TObject);//00712BA4
    procedure ComSounderModeClick(Sender:TObject);//007131C8
    procedure ComMonitoringClick(Sender:TObject);//007129E8
    procedure ComYesNoClick(Sender:TObject);//00712920
    procedure ComSounderVolumeClick(Sender:TObject);//007132A4
    procedure ApoSubTypeClick(Sender:TObject);//0071176C
    procedure udFirstClick(Sender:TObject);//007170AC
    procedure udLastClick(Sender:TObject);//007170F0
    procedure btnResetCol1Click(Sender:TObject);//00717054
    procedure btnResetCol2Click(Sender:TObject);//00717084
    procedure Translate(IniFile:TFXIniFile);//0070DE64
    procedure FormShow(Sender:TObject);//0070FE00
    procedure RangeSelectClick(Sender:TObject);//00717134
    procedure SelectControlZones(Col:Integer; AllowOnlyGeneralOrLocal:Boolean);//007157B4
    procedure SetupTypeMenu;//0071051C
    procedure GridClick(Sender:TObject);//00716E24
    procedure SapSounderModeClick(Sender:TObject);//00711188
    procedure SapSysTypeClick(Sender:TObject);//00710B10
    procedure ApoTypeClick(Sender:TObject);//00711270
    procedure SapEnvironmentClick(Sender:TObject);//00710FCC
    procedure SapTypeClick(Sender:TObject);//007105F0
    procedure EnableOrDisableSapTypePopUpItems(CurrRow:Integer; CurrType:Word);//00713574
    procedure btnOKClick(Sender:TObject);//007163A4
    procedure FormCreate(Sender:TObject);//0070F58C
    procedure GridMouseDown(Sender:TObject; Button:UITypes.TMouseButton; Shift:Classes.TShiftState; X:Integer; Y:Integer);//00713A64
  public
    ADMenuFrame:TFXADMenuFrame;//f3F8
  end;
  :2 = array of Pointer;
//elSize = 4;
  :3 = array of :2;
//elSize = 4;
    //function sub_00715864(?:TAPFillDlg; ?:?):?;//00715864
    procedure sub_00716EC0(?:TAPFillDlg);//00716EC0

implementation

{$R *.DFM}

//006F3EC0
procedure TFXADMenuFrame.Translate(IniFile:TFXIniFile);
begin
{*
 006F3EC0    push        ebp
 006F3EC1    mov         ebp,esp
 006F3EC3    mov         ecx,0F2
 006F3EC8    push        0
 006F3ECA    push        0
 006F3ECC    dec         ecx
>006F3ECD    jne         006F3EC8
 006F3ECF    push        ebx
 006F3ED0    push        esi
 006F3ED1    push        edi
 006F3ED2    mov         esi,edx
 006F3ED4    mov         ebx,eax
 006F3ED6    xor         eax,eax
 006F3ED8    push        ebp
 006F3ED9    push        6F94A0
 006F3EDE    push        dword ptr fs:[eax]
 006F3EE1    mov         dword ptr fs:[eax],esp
 006F3EE4    push        6F94BC;'0 - Normal Remote LED Control'
 006F3EE9    lea         eax,[ebp-4]
 006F3EEC    push        eax
 006F3EED    mov         ecx,6F9504;'smiSysNormLedControl'
 006F3EF2    mov         edx,6F953C;'SysTypeMenu'
 006F3EF7    mov         eax,esi
 006F3EF9    mov         edi,dword ptr [eax]
 006F3EFB    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F3EFE    push        6F9560;'1 - Sirene Control'
 006F3F03    lea         eax,[ebp-8]
 006F3F06    push        eax
 006F3F07    mov         ecx,6F9594;'smiSysSirenControl'
 006F3F0C    mov         edx,6F953C;'SysTypeMenu'
 006F3F11    mov         eax,esi
 006F3F13    mov         edi,dword ptr [eax]
 006F3F15    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F3F18    push        6F95C8;'0 - Not in use'
 006F3F1D    lea         eax,[ebp-20]
 006F3F20    push        eax
 006F3F21    mov         ecx,6F95F4;'smiSysNotInUse'
 006F3F26    mov         edx,6F953C;'SysTypeMenu'
 006F3F2B    mov         eax,esi
 006F3F2D    mov         edi,dword ptr [eax]
 006F3F2F    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F3F32    mov         edx,dword ptr [ebp-20]
 006F3F35    mov         eax,dword ptr [ebx+2B4];TFXADMenuFrame.miSysNotInUse:TMenuItem
 006F3F3B    call        TMenuItem.SetCaption
 006F3F40    push        6F9620;'1 - Ionisation sensor'
 006F3F45    lea         eax,[ebp-24]
 006F3F48    push        eax
 006F3F49    mov         ecx,6F9658;'smiSysIonSensor'
 006F3F4E    mov         edx,6F953C;'SysTypeMenu'
 006F3F53    mov         eax,esi
 006F3F55    mov         edi,dword ptr [eax]
 006F3F57    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F3F5A    mov         edx,dword ptr [ebp-24]
 006F3F5D    mov         eax,dword ptr [ebx+2B8];TFXADMenuFrame.miSysIonSensor:TMenuItem
 006F3F63    call        TMenuItem.SetCaption
 006F3F68    push        6F9684;'
1251E      Analogue Ionization Detector
ESMI1251E	 Analogue Ionization Detect...
 006F3F6D    lea         eax,[ebp-28]
 006F3F70    push        eax
 006F3F71    mov         ecx,6F9738;'smiSysIonList'
 006F3F76    mov         edx,6F953C;'SysTypeMenu'
 006F3F7B    mov         eax,esi
 006F3F7D    mov         edi,dword ptr [eax]
 006F3F7F    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F3F82    mov         edx,dword ptr [ebp-28]
 006F3F85    mov         eax,dword ptr [ebx+0B48];TFXADMenuFrame.miSysIonList:TMenuItem
 006F3F8B    call        TMenuItem.SetCaption
 006F3F90    push        6F9760;'2 - Optical sensor'
 006F3F95    lea         eax,[ebp-2C]
 006F3F98    push        eax
 006F3F99    mov         ecx,6F9794;'smiSysOptSensor'
 006F3F9E    mov         edx,6F953C;'SysTypeMenu'
 006F3FA3    mov         eax,esi
 006F3FA5    mov         edi,dword ptr [eax]
 006F3FA7    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F3FAA    mov         edx,dword ptr [ebp-2C]
 006F3FAD    mov         eax,dword ptr [ebx+2BC];TFXADMenuFrame.miSysOptSensor:TMenuItem
 006F3FB3    call        TMenuItem.SetCaption
 006F3FB8    push        6F97C0;'
ESMI22051E   Photo-Electronic Smoke Sensor
ESMI22051EI  Photo-Electronic Smok...
 006F3FBD    lea         eax,[ebp-0C]
 006F3FC0    push        eax
 006F3FC1    mov         ecx,6F98FC;'smiSysOptList'
 006F3FC6    mov         edx,6F953C;'SysTypeMenu'
 006F3FCB    mov         eax,esi
 006F3FCD    mov         edi,dword ptr [eax]
 006F3FCF    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F3FD2    lea         eax,[ebp-30]
 006F3FD5    mov         ecx,dword ptr [ebp-0C]
 006F3FD8    mov         edx,dword ptr [ebp-4]
 006F3FDB    call        @UStrCat3
 006F3FE0    mov         edx,dword ptr [ebp-30]
 006F3FE3    mov         eax,dword ptr [ebx+2C0];TFXADMenuFrame.miSysOptNormalLed:TMenuItem
 006F3FE9    call        TMenuItem.SetCaption
 006F3FEE    lea         eax,[ebp-34]
 006F3FF1    mov         ecx,dword ptr [ebp-0C]
 006F3FF4    mov         edx,dword ptr [ebp-8]
 006F3FF7    call        @UStrCat3
 006F3FFC    mov         edx,dword ptr [ebp-34]
 006F3FFF    mov         eax,dword ptr [ebx+2C4];TFXADMenuFrame.miSysOptSirenControl:TMenuItem
 006F4005    call        TMenuItem.SetCaption
 006F400A    push        6F9924;'3 - Thermal sensor'
 006F400F    lea         eax,[ebp-38]
 006F4012    push        eax
 006F4013    mov         ecx,6F9958;'smiSysHeatSensor'
 006F4018    mov         edx,6F953C;'SysTypeMenu'
 006F401D    mov         eax,esi
 006F401F    mov         edi,dword ptr [eax]
 006F4021    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4024    mov         edx,dword ptr [ebp-38]
 006F4027    mov         eax,dword ptr [ebx+2C8];TFXADMenuFrame.miSysHeatSensor:TMenuItem
 006F402D    call        TMenuItem.SetCaption
 006F4032    push        6F9988;'
ESMI52051E   Thermal Sensor
ESMI52051EI  Thermal Sensor
5551E
5251EM
ESMI5...
 006F4037    lea         eax,[ebp-10]
 006F403A    push        eax
 006F403B    mov         ecx,6F9C48;'smiSysHeatList'
 006F4040    mov         edx,6F953C;'SysTypeMenu'
 006F4045    mov         eax,esi
 006F4047    mov         edi,dword ptr [eax]
 006F4049    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F404C    lea         eax,[ebp-3C]
 006F404F    mov         ecx,dword ptr [ebp-10]
 006F4052    mov         edx,dword ptr [ebp-4]
 006F4055    call        @UStrCat3
 006F405A    mov         edx,dword ptr [ebp-3C]
 006F405D    mov         eax,dword ptr [ebx+2CC];TFXADMenuFrame.miSysHeatNormalLed:TMenuItem
 006F4063    call        TMenuItem.SetCaption
 006F4068    lea         eax,[ebp-40]
 006F406B    mov         ecx,dword ptr [ebp-10]
 006F406E    mov         edx,dword ptr [ebp-8]
 006F4071    call        @UStrCat3
 006F4076    mov         edx,dword ptr [ebp-40]
 006F4079    mov         eax,dword ptr [ebx+2D0];TFXADMenuFrame.miSysHeatSirenControl:TMenuItem
 006F407F    call        TMenuItem.SetCaption
 006F4084    push        6F9C74;'4 - OMNI sensor'
 006F4089    lea         eax,[ebp-44]
 006F408C    push        eax
 006F408D    mov         ecx,6F9CA0;'smiSysOmniSensor'
 006F4092    mov         edx,6F953C;'SysTypeMenu'
 006F4097    mov         eax,esi
 006F4099    mov         edi,dword ptr [eax]
 006F409B    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F409E    mov         edx,dword ptr [ebp-44]
 006F40A1    mov         eax,dword ptr [ebx+2D4];TFXADMenuFrame.miSysOmniSensor:TMenuItem
 006F40A7    call        TMenuItem.SetCaption
 006F40AC    push        6F9CD0;'
OMNI'
 006F40B1    lea         eax,[ebp-48]
 006F40B4    push        eax
 006F40B5    mov         ecx,6F9CEC;'smiSysOmniList'
 006F40BA    mov         edx,6F953C;'SysTypeMenu'
 006F40BF    mov         eax,esi
 006F40C1    mov         edi,dword ptr [eax]
 006F40C3    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F40C6    mov         edx,dword ptr [ebp-48]
 006F40C9    mov         eax,dword ptr [ebx+0B4C];TFXADMenuFrame.miSysOmniList:TMenuItem
 006F40CF    call        TMenuItem.SetCaption
 006F40D4    push        6F9D18;'9 - Laser LZR-1'
 006F40D9    lea         eax,[ebp-4C]
 006F40DC    push        eax
 006F40DD    mov         ecx,6F9D44;'smiSysLaserLZR1'
 006F40E2    mov         edx,6F953C;'SysTypeMenu'
 006F40E7    mov         eax,esi
 006F40E9    mov         edi,dword ptr [eax]
 006F40EB    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F40EE    mov         edx,dword ptr [ebp-4C]
 006F40F1    mov         eax,dword ptr [ebx+2D8];TFXADMenuFrame.miSysLaserLZR1:TMenuItem
 006F40F7    call        TMenuItem.SetCaption
 006F40FC    push        6F9D70;'
LZR-1
LZR-1M'
 006F4101    lea         eax,[ebp-50]
 006F4104    push        eax
 006F4105    mov         ecx,6F9D9C;'smiSysLaserLZR1List'
 006F410A    mov         edx,6F953C;'SysTypeMenu'
 006F410F    mov         eax,esi
 006F4111    mov         edi,dword ptr [eax]
 006F4113    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4116    mov         edx,dword ptr [ebp-50]
 006F4119    mov         eax,dword ptr [ebx+0B50];TFXADMenuFrame.miSysLaserLZR1List:TMenuItem
 006F411F    call        TMenuItem.SetCaption
 006F4124    push        6F9DD0;'A - Laser 7251'
 006F4129    lea         eax,[ebp-54]
 006F412C    push        eax
 006F412D    mov         ecx,6F9DFC;'smiSysLaser7251'
 006F4132    mov         edx,6F953C;'SysTypeMenu'
 006F4137    mov         eax,esi
 006F4139    mov         edi,dword ptr [eax]
 006F413B    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F413E    mov         edx,dword ptr [ebp-54]
 006F4141    mov         eax,dword ptr [ebx+2DC];TFXADMenuFrame.miSysLaser7251:TMenuItem
 006F4147    call        TMenuItem.SetCaption
 006F414C    push        6F9E28;'
7251  Pinnacle'
 006F4151    lea         eax,[ebp-58]
 006F4154    push        eax
 006F4155    mov         ecx,6F9E58;'smiSysLaser7251List'
 006F415A    mov         edx,6F953C;'SysTypeMenu'
 006F415F    mov         eax,esi
 006F4161    mov         edi,dword ptr [eax]
 006F4163    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4166    mov         edx,dword ptr [ebp-58]
 006F4169    mov         eax,dword ptr [ebx+0B54];TFXADMenuFrame.miSysLaser7251List:TMenuItem
 006F416F    call        TMenuItem.SetCaption
 006F4174    push        6F9E8C;'B - Multicriteria sensor'
 006F4179    lea         eax,[ebp-5C]
 006F417C    push        eax
 006F417D    mov         ecx,6F9ECC;'smiSysMultiSensor'
 006F4182    mov         edx,6F953C;'SysTypeMenu'
 006F4187    mov         eax,esi
 006F4189    mov         edi,dword ptr [eax]
 006F418B    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F418E    mov         edx,dword ptr [ebp-5C]
 006F4191    mov         eax,dword ptr [ebx+2E0];TFXADMenuFrame.miSysMultiSensor:TMenuItem
 006F4197    call        TMenuItem.SetCaption
 006F419C    push        6F9EFC;'
ESMI22051TE     Photo Thermal Fire Sensor
ESMI22051TEI    Photo Thermal Fire ...
 006F41A1    lea         eax,[ebp-14]
 006F41A4    push        eax
 006F41A5    mov         ecx,6FA0C0;'smiSysMultiList'
 006F41AA    mov         edx,6F953C;'SysTypeMenu'
 006F41AF    mov         eax,esi
 006F41B1    mov         edi,dword ptr [eax]
 006F41B3    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F41B6    lea         eax,[ebp-60]
 006F41B9    mov         ecx,dword ptr [ebp-14]
 006F41BC    mov         edx,dword ptr [ebp-4]
 006F41BF    call        @UStrCat3
 006F41C4    mov         edx,dword ptr [ebp-60]
 006F41C7    mov         eax,dword ptr [ebx+2E4];TFXADMenuFrame.miSysMultiNormalLed:TMenuItem
 006F41CD    call        TMenuItem.SetCaption
 006F41D2    lea         eax,[ebp-64]
 006F41D5    mov         ecx,dword ptr [ebp-14]
 006F41D8    mov         edx,dword ptr [ebp-8]
 006F41DB    call        @UStrCat3
 006F41E0    mov         edx,dword ptr [ebp-64]
 006F41E3    mov         eax,dword ptr [ebx+2E8];TFXADMenuFrame.miSysMultiSirenControl:TMenuItem
 006F41E9    call        TMenuItem.SetCaption
 006F41EE    push        6FA0EC;'D - Three criteria sensor'
 006F41F3    lea         eax,[ebp-68]
 006F41F6    push        eax
 006F41F7    mov         ecx,6FA12C;'smiSysPtirSensor'
 006F41FC    mov         edx,6F953C;'SysTypeMenu'
 006F4201    mov         eax,esi
 006F4203    mov         edi,dword ptr [eax]
 006F4205    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4208    mov         edx,dword ptr [ebp-68]
 006F420B    mov         eax,dword ptr [ebx+2F8];TFXADMenuFrame.miSysPtirSensor:TMenuItem
 006F4211    call        TMenuItem.SetCaption
 006F4216    push        6FA15C;'
ESMI22051TLE    Multi-Criteria Fire Sensor
ESMI22051TLEI   Multi-Criteria Fir...
 006F421B    lea         eax,[ebp-18]
 006F421E    push        eax
 006F421F    mov         ecx,6FA21C;'smiSysPtirList'
 006F4224    mov         edx,6F953C;'SysTypeMenu'
 006F4229    mov         eax,esi
 006F422B    mov         edi,dword ptr [eax]
 006F422D    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4230    lea         eax,[ebp-6C]
 006F4233    mov         ecx,dword ptr [ebp-18]
 006F4236    mov         edx,dword ptr [ebp-4]
 006F4239    call        @UStrCat3
 006F423E    mov         edx,dword ptr [ebp-6C]
 006F4241    mov         eax,dword ptr [ebx+2FC];TFXADMenuFrame.miSysPtirNormalLed:TMenuItem
 006F4247    call        TMenuItem.SetCaption
 006F424C    lea         eax,[ebp-70]
 006F424F    mov         ecx,dword ptr [ebp-18]
 006F4252    mov         edx,dword ptr [ebp-8]
 006F4255    call        @UStrCat3
 006F425A    mov         edx,dword ptr [ebp-70]
 006F425D    mov         eax,dword ptr [ebx+300];TFXADMenuFrame.miSysPtirSirenControl:TMenuItem
 006F4263    call        TMenuItem.SetCaption
 006F4268    push        6FA248;'E - Four criteria sensor'
 006F426D    lea         eax,[ebp-74]
 006F4270    push        eax
 006F4271    mov         ecx,6FA288;'smiSysCoptirSensor'
 006F4276    mov         edx,6F953C;'SysTypeMenu'
 006F427B    mov         eax,esi
 006F427D    mov         edi,dword ptr [eax]
 006F427F    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4282    mov         edx,dword ptr [ebp-74]
 006F4285    mov         eax,dword ptr [ebx+2EC];TFXADMenuFrame.miSysCoptirSensor:TMenuItem
 006F428B    call        TMenuItem.SetCaption
 006F4290    push        6FA2BC;'
ESMI2251CTLE-IV Multi-Criteria Fire Sensor
ESMI2251CTLE-W  Multi-Criteria Fir...
 006F4295    lea         eax,[ebp-1C]
 006F4298    push        eax
 006F4299    mov         ecx,6FA37C;'smiSysCoptirList'
 006F429E    mov         edx,6F953C;'SysTypeMenu'
 006F42A3    mov         eax,esi
 006F42A5    mov         edi,dword ptr [eax]
 006F42A7    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F42AA    lea         eax,[ebp-78]
 006F42AD    mov         ecx,dword ptr [ebp-1C]
 006F42B0    mov         edx,dword ptr [ebp-4]
 006F42B3    call        @UStrCat3
 006F42B8    mov         edx,dword ptr [ebp-78]
 006F42BB    mov         eax,dword ptr [ebx+2F0];TFXADMenuFrame.miSysCoptirNormalLed:TMenuItem
 006F42C1    call        TMenuItem.SetCaption
 006F42C6    lea         eax,[ebp-7C]
 006F42C9    mov         ecx,dword ptr [ebp-1C]
 006F42CC    mov         edx,dword ptr [ebp-8]
 006F42CF    call        @UStrCat3
 006F42D4    mov         edx,dword ptr [ebp-7C]
 006F42D7    mov         eax,dword ptr [ebx+2F4];TFXADMenuFrame.miSysCoptirSirenControl:TMenuItem
 006F42DD    call        TMenuItem.SetCaption
 006F42E2    push        6FA3AC;'F - Beam sensor'
 006F42E7    lea         eax,[ebp-80]
 006F42EA    push        eax
 006F42EB    mov         ecx,6FA3D8;'smiSysBeamSensor'
 006F42F0    mov         edx,6F953C;'SysTypeMenu'
 006F42F5    mov         eax,esi
 006F42F7    mov         edi,dword ptr [eax]
 006F42F9    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F42FC    mov         edx,dword ptr [ebp-80]
 006F42FF    mov         eax,dword ptr [ebx+304];TFXADMenuFrame.miSysBeamSensor:TMenuItem
 006F4305    call        TMenuItem.SetCaption
 006F430A    push        6FA408;'
EB6500A
6500
6500S
EB-6500	  Analogue Optical Beam Detector
EB-6500S	Analo...
 006F430F    lea         eax,[ebp-84]
 006F4315    push        eax
 006F4316    mov         ecx,6FA4FC;'smiSysBeamList'
 006F431B    mov         edx,6F953C;'SysTypeMenu'
 006F4320    mov         eax,esi
 006F4322    mov         edi,dword ptr [eax]
 006F4324    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4327    mov         edx,dword ptr [ebp-84]
 006F432D    mov         eax,dword ptr [ebx+0B58];TFXADMenuFrame.miSysBeamList:TMenuItem
 006F4333    call        TMenuItem.SetCaption
 006F4338    push        6FA528;'8 - Any Type'
 006F433D    lea         eax,[ebp-88]
 006F4343    push        eax
 006F4344    mov         ecx,6FA550;'smiSysAnyType'
 006F4349    mov         edx,6F953C;'SysTypeMenu'
 006F434E    mov         eax,esi
 006F4350    mov         edi,dword ptr [eax]
 006F4352    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4355    mov         edx,dword ptr [ebp-88]
 006F435B    mov         eax,dword ptr [ebx+320];TFXADMenuFrame.miSysAnyType:TMenuItem
 006F4361    call        TMenuItem.SetCaption
 006F4366    push        6FA578;'C - Any Type (virtual)'
 006F436B    lea         eax,[ebp-8C]
 006F4371    push        eax
 006F4372    mov         ecx,6FA5B4;'smiSysAnyTypeVirtual'
 006F4377    mov         edx,6F953C;'SysTypeMenu'
 006F437C    mov         eax,esi
 006F437E    mov         edi,dword ptr [eax]
 006F4380    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4383    mov         edx,dword ptr [ebp-8C]
 006F4389    mov         eax,dword ptr [ebx+324];TFXADMenuFrame.miSysAnyTypeVirtual:TMenuItem
 006F438F    call        TMenuItem.SetCaption
 006F4394    push        6FA5EC;'5 - Monitor Module'
 006F4399    lea         eax,[ebp-90]
 006F439F    push        eax
 006F43A0    mov         ecx,6FA620;'smiSysMonitorModule'
 006F43A5    mov         edx,6F953C;'SysTypeMenu'
 006F43AA    mov         eax,esi
 006F43AC    mov         edi,dword ptr [eax]
 006F43AE    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F43B1    mov         edx,dword ptr [ebp-90]
 006F43B7    mov         eax,dword ptr [ebx+30C];TFXADMenuFrame.miSysMonitorModule:TMenuItem
 006F43BD    call        TMenuItem.SetCaption
 006F43C2    push        6FA654;'
MCP5A-…
WCP5A-…
EM210E  Single Input Module
M500KAC
M500ME
M501ME
M501ME...
 006F43C7    lea         eax,[ebp-94]
 006F43CD    push        eax
 006F43CE    mov         ecx,6FA7F0;'smiSysMonitorList'
 006F43D3    mov         edx,6F953C;'SysTypeMenu'
 006F43D8    mov         eax,esi
 006F43DA    mov         edi,dword ptr [eax]
 006F43DC    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F43DF    mov         edx,dword ptr [ebp-94]
 006F43E5    mov         eax,dword ptr [ebx+0B5C];TFXADMenuFrame.miSysMonitorList:TMenuItem
 006F43EB    call        TMenuItem.SetCaption
 006F43F0    push        6FA820;'6 - Control Module'
 006F43F5    lea         eax,[ebp-98]
 006F43FB    push        eax
 006F43FC    mov         ecx,6FA854;'smiSysControlModule'
 006F4401    mov         edx,6F953C;'SysTypeMenu'
 006F4406    mov         eax,esi
 006F4408    mov         edi,dword ptr [eax]
 006F440A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F440D    mov         edx,dword ptr [ebp-98]
 006F4413    mov         eax,dword ptr [ebx+310];TFXADMenuFrame.miSysControlModule:TMenuItem
 006F4419    call        TMenuItem.SetCaption
 006F441E    push        6FA888;'
EM201E     Single Output Module
EM201E240  Single Output Module-240V-50Hz-5A ...
 006F4423    lea         eax,[ebp-9C]
 006F4429    push        eax
 006F442A    mov         ecx,6FA970;'smiSysControlList'
 006F442F    mov         edx,6F953C;'SysTypeMenu'
 006F4434    mov         eax,esi
 006F4436    mov         edi,dword ptr [eax]
 006F4438    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F443B    mov         edx,dword ptr [ebp-9C]
 006F4441    mov         eax,dword ptr [ebx+0B60];TFXADMenuFrame.miSysControlList:TMenuItem
 006F4447    call        TMenuItem.SetCaption
 006F444C    push        6FA9A0;'7 - Conventional Zone Module'
 006F4451    lea         eax,[ebp-0A0]
 006F4457    push        eax
 006F4458    mov         ecx,6FA9E8;'smiSysConvZoneModule'
 006F445D    mov         edx,6F953C;'SysTypeMenu'
 006F4462    mov         eax,esi
 006F4464    mov         edi,dword ptr [eax]
 006F4466    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4469    mov         edx,dword ptr [ebp-0A0]
 006F446F    mov         eax,dword ptr [ebx+318];TFXADMenuFrame.miSysConvZoneModule:TMenuItem
 006F4475    call        TMenuItem.SetCaption
 006F447A    push        6FAA20;'
EM210E-CZ  Conventional Zone Interface Module
M512ME'
 006F447F    lea         eax,[ebp-0A4]
 006F4485    push        eax
 006F4486    mov         ecx,6FAA9C;'smiSysConvZoneList'
 006F448B    mov         edx,6F953C;'SysTypeMenu'
 006F4490    mov         eax,esi
 006F4492    mov         edi,dword ptr [eax]
 006F4494    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4497    mov         edx,dword ptr [ebp-0A4]
 006F449D    mov         eax,dword ptr [ebx+0B64];TFXADMenuFrame.miSysConvZoneList:TMenuItem
 006F44A3    call        TMenuItem.SetCaption
 006F44A8    push        6F95C8;'0 - Not in use'
 006F44AD    lea         eax,[ebp-0A8]
 006F44B3    push        eax
 006F44B4    mov         ecx,6FAAD0;'smiApoNotUsed'
 006F44B9    mov         edx,6FAAF8;'ApoTypeMenu'
 006F44BE    mov         eax,esi
 006F44C0    mov         edi,dword ptr [eax]
 006F44C2    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F44C5    mov         edx,dword ptr [ebp-0A8]
 006F44CB    mov         eax,dword ptr [ebx+41C];TFXADMenuFrame.miApoNotUsed:TMenuItem
 006F44D1    call        TMenuItem.SetCaption
 006F44D6    push        6F9620;'1 - Ionisation sensor'
 006F44DB    lea         eax,[ebp-0AC]
 006F44E1    push        eax
 006F44E2    mov         ecx,6FAB1C;'smiApoIon'
 006F44E7    mov         edx,6FAAF8;'ApoTypeMenu'
 006F44EC    mov         eax,esi
 006F44EE    mov         edi,dword ptr [eax]
 006F44F0    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F44F3    mov         edx,dword ptr [ebp-0AC]
 006F44F9    mov         eax,dword ptr [ebx+420];TFXADMenuFrame.miApoIon:TMenuItem
 006F44FF    call        TMenuItem.SetCaption
 006F4504    push        6FAB3C;'0 - Intellia
Intellia EDI-10  Ionisation Smoke Detector'
 006F4509    lea         eax,[ebp-0B0]
 006F450F    push        eax
 006F4510    mov         ecx,6FABBC;'smiApoIonInt'
 006F4515    mov         edx,6FAAF8;'ApoTypeMenu'
 006F451A    mov         eax,esi
 006F451C    mov         edi,dword ptr [eax]
 006F451E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4521    mov         edx,dword ptr [ebp-0B0]
 006F4527    mov         eax,dword ptr [ebx+424];TFXADMenuFrame.miApoIonIntellia:TMenuItem
 006F452D    call        TMenuItem.SetCaption
 006F4532    push        6FABE4;'1 - Discovery'
 006F4537    lea         eax,[ebp-0B4]
 006F453D    push        eax
 006F453E    mov         ecx,6FAC0C;'smiApoDiscovery'
 006F4543    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4548    mov         eax,esi
 006F454A    mov         edi,dword ptr [eax]
 006F454C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F454F    mov         edx,dword ptr [ebp-0B4]
 006F4555    mov         eax,dword ptr [ebx+428];TFXADMenuFrame.miApoIonDiscovery:TMenuItem
 006F455B    call        TMenuItem.SetCaption
 006F4560    push        6FAC38;'2 - XP95'
 006F4565    lea         eax,[ebp-0B8]
 006F456B    push        eax
 006F456C    mov         ecx,6FAC58;'smiApoXP95'
 006F4571    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4576    mov         eax,esi
 006F4578    mov         edi,dword ptr [eax]
 006F457A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F457D    mov         edx,dword ptr [ebp-0B8]
 006F4583    mov         eax,dword ptr [ebx+42C];TFXADMenuFrame.miApoIonXP95:TMenuItem
 006F4589    call        TMenuItem.SetCaption
 006F458E    push        6FAC7C;'3 - Series 90'
 006F4593    lea         eax,[ebp-0BC]
 006F4599    push        eax
 006F459A    mov         ecx,6FACA4;'smiApoS90'
 006F459F    mov         edx,6FAAF8;'ApoTypeMenu'
 006F45A4    mov         eax,esi
 006F45A6    mov         edi,dword ptr [eax]
 006F45A8    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F45AB    mov         edx,dword ptr [ebp-0BC]
 006F45B1    mov         eax,dword ptr [ebx+430];TFXADMenuFrame.miApoIonS90:TMenuItem
 006F45B7    call        TMenuItem.SetCaption
 006F45BC    push        6F9760;'2 - Optical sensor'
 006F45C1    lea         eax,[ebp-0C0]
 006F45C7    push        eax
 006F45C8    mov         ecx,6FACC4;'smiApoOpt'
 006F45CD    mov         edx,6FAAF8;'ApoTypeMenu'
 006F45D2    mov         eax,esi
 006F45D4    mov         edi,dword ptr [eax]
 006F45D6    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F45D9    mov         edx,dword ptr [ebp-0C0]
 006F45DF    mov         eax,dword ptr [ebx+438];TFXADMenuFrame.miApoOpt:TMenuItem
 006F45E5    call        TMenuItem.SetCaption
 006F45EA    push        6FACE4;'0 - Intellia
Intellia EDI-20  Optical Smoke Detector'
 006F45EF    lea         eax,[ebp-0C4]
 006F45F5    push        eax
 006F45F6    mov         ecx,6FAD5C;'smiApoOptInt'
 006F45FB    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4600    mov         eax,esi
 006F4602    mov         edi,dword ptr [eax]
 006F4604    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4607    mov         edx,dword ptr [ebp-0C4]
 006F460D    mov         eax,dword ptr [ebx+43C];TFXADMenuFrame.miApoOptIntellia:TMenuItem
 006F4613    call        TMenuItem.SetCaption
 006F4618    push        6FABE4;'1 - Discovery'
 006F461D    lea         eax,[ebp-0C8]
 006F4623    push        eax
 006F4624    mov         ecx,6FAC0C;'smiApoDiscovery'
 006F4629    mov         edx,6FAAF8;'ApoTypeMenu'
 006F462E    mov         eax,esi
 006F4630    mov         edi,dword ptr [eax]
 006F4632    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4635    mov         edx,dword ptr [ebp-0C8]
 006F463B    mov         eax,dword ptr [ebx+440];TFXADMenuFrame.miApoOptDiscovery:TMenuItem
 006F4641    call        TMenuItem.SetCaption
 006F4646    push        6FAC38;'2 - XP95'
 006F464B    lea         eax,[ebp-0CC]
 006F4651    push        eax
 006F4652    mov         ecx,6FAC58;'smiApoXP95'
 006F4657    mov         edx,6FAAF8;'ApoTypeMenu'
 006F465C    mov         eax,esi
 006F465E    mov         edi,dword ptr [eax]
 006F4660    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4663    mov         edx,dword ptr [ebp-0CC]
 006F4669    mov         eax,dword ptr [ebx+444];TFXADMenuFrame.miApoOptXP95:TMenuItem
 006F466F    call        TMenuItem.SetCaption
 006F4674    push        6FAC7C;'3 - Series 90'
 006F4679    lea         eax,[ebp-0D0]
 006F467F    push        eax
 006F4680    mov         ecx,6FACA4;'smiApoS90'
 006F4685    mov         edx,6FAAF8;'ApoTypeMenu'
 006F468A    mov         eax,esi
 006F468C    mov         edi,dword ptr [eax]
 006F468E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4691    mov         edx,dword ptr [ebp-0D0]
 006F4697    mov         eax,dword ptr [ebx+448];TFXADMenuFrame.miApoOptS90:TMenuItem
 006F469D    call        TMenuItem.SetCaption
 006F46A2    push        6FAD84;'4 - Wireless (XP95)
Xpander Optical Smoke Detector'
 006F46A7    lea         eax,[ebp-0D4]
 006F46AD    push        eax
 006F46AE    mov         ecx,6FADF8;'smiApoOptExp'
 006F46B3    mov         edx,6FAAF8;'ApoTypeMenu'
 006F46B8    mov         eax,esi
 006F46BA    mov         edi,dword ptr [eax]
 006F46BC    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F46BF    mov         edx,dword ptr [ebp-0D4]
 006F46C5    mov         eax,dword ptr [ebx+44C];TFXADMenuFrame.miApoOptExp:TMenuItem
 006F46CB    call        TMenuItem.SetCaption
 006F46D0    push        6F9924;'3 - Thermal sensor'
 006F46D5    lea         eax,[ebp-0D8]
 006F46DB    push        eax
 006F46DC    mov         ecx,6FAE20;'smiApoHeat'
 006F46E1    mov         edx,6FAAF8;'ApoTypeMenu'
 006F46E6    mov         eax,esi
 006F46E8    mov         edi,dword ptr [eax]
 006F46EA    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F46ED    mov         edx,dword ptr [ebp-0D8]
 006F46F3    mov         eax,dword ptr [ebx+450];TFXADMenuFrame.miApoHeat:TMenuItem
 006F46F9    call        TMenuItem.SetCaption
 006F46FE    push        6FAE44;'0 - Intellia
Intellia EDI-50  Heat Detector'
 006F4703    lea         eax,[ebp-0DC]
 006F4709    push        eax
 006F470A    mov         ecx,6FAEAC;'smiApoHeatInt'
 006F470F    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4714    mov         eax,esi
 006F4716    mov         edi,dword ptr [eax]
 006F4718    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F471B    mov         edx,dword ptr [ebp-0DC]
 006F4721    mov         eax,dword ptr [ebx+454];TFXADMenuFrame.miApoHeatIntellia:TMenuItem
 006F4727    call        TMenuItem.SetCaption
 006F472C    push        6FABE4;'1 - Discovery'
 006F4731    lea         eax,[ebp-0E0]
 006F4737    push        eax
 006F4738    mov         ecx,6FAC0C;'smiApoDiscovery'
 006F473D    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4742    mov         eax,esi
 006F4744    mov         edi,dword ptr [eax]
 006F4746    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4749    mov         edx,dword ptr [ebp-0E0]
 006F474F    mov         eax,dword ptr [ebx+458];TFXADMenuFrame.miApoHeatDiscovery:TMenuItem
 006F4755    call        TMenuItem.SetCaption
 006F475A    push        6FAC38;'2 - XP95'
 006F475F    lea         eax,[ebp-0E4]
 006F4765    push        eax
 006F4766    mov         ecx,6FAC58;'smiApoXP95'
 006F476B    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4770    mov         eax,esi
 006F4772    mov         edi,dword ptr [eax]
 006F4774    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4777    mov         edx,dword ptr [ebp-0E4]
 006F477D    mov         eax,dword ptr [ebx+45C];TFXADMenuFrame.miApoHeatXP95:TMenuItem
 006F4783    call        TMenuItem.SetCaption
 006F4788    push        6FAC7C;'3 - Series 90'
 006F478D    lea         eax,[ebp-0E8]
 006F4793    push        eax
 006F4794    mov         ecx,6FACA4;'smiApoS90'
 006F4799    mov         edx,6FAAF8;'ApoTypeMenu'
 006F479E    mov         eax,esi
 006F47A0    mov         edi,dword ptr [eax]
 006F47A2    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F47A5    mov         edx,dword ptr [ebp-0E8]
 006F47AB    mov         eax,dword ptr [ebx+460];TFXADMenuFrame.miApoHeatS90:TMenuItem
 006F47B1    call        TMenuItem.SetCaption
 006F47B6    push        6FAED4;'4 - Wireless (XP95)
Xpander Heat Detector'
 006F47BB    lea         eax,[ebp-0EC]
 006F47C1    push        eax
 006F47C2    mov         ecx,6FAF38;'smiApoHeatExp'
 006F47C7    mov         edx,6FAAF8;'ApoTypeMenu'
 006F47CC    mov         eax,esi
 006F47CE    mov         edi,dword ptr [eax]
 006F47D0    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F47D3    mov         edx,dword ptr [ebp-0EC]
 006F47D9    mov         eax,dword ptr [ebx+464];TFXADMenuFrame.miApoHeatExp:TMenuItem
 006F47DF    call        TMenuItem.SetCaption
 006F47E4    push        6FAF60;'4 - High temperature (XP95)'
 006F47E9    lea         eax,[ebp-0F0]
 006F47EF    push        eax
 006F47F0    mov         ecx,6FAFA4;'smiApoHighHeat'
 006F47F5    mov         edx,6FAAF8;'ApoTypeMenu'
 006F47FA    mov         eax,esi
 006F47FC    mov         edi,dword ptr [eax]
 006F47FE    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4801    mov         edx,dword ptr [ebp-0F0]
 006F4807    mov         eax,dword ptr [ebx+468];TFXADMenuFrame.miApoHighHeat:TMenuItem
 006F480D    call        TMenuItem.SetCaption
 006F4812    push        6FAFD0;'0 - Intellia'
 006F4817    lea         eax,[ebp-0F4]
 006F481D    push        eax
 006F481E    mov         ecx,6FAFF8;'smiApoIntellia'
 006F4823    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4828    mov         eax,esi
 006F482A    mov         edi,dword ptr [eax]
 006F482C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F482F    mov         edx,dword ptr [ebp-0F4]
 006F4835    mov         eax,dword ptr [ebx+46C];TFXADMenuFrame.miApoHighHeatIntellia:TMenuItem
 006F483B    call        TMenuItem.SetCaption
 006F4840    push        6FABE4;'1 - Discovery'
 006F4845    lea         eax,[ebp-0F8]
 006F484B    push        eax
 006F484C    mov         ecx,6FAC0C;'smiApoDiscovery'
 006F4851    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4856    mov         eax,esi
 006F4858    mov         edi,dword ptr [eax]
 006F485A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F485D    mov         edx,dword ptr [ebp-0F8]
 006F4863    mov         eax,dword ptr [ebx+470];TFXADMenuFrame.miApoHighHeatDiscovery:TMenuItem
 006F4869    call        TMenuItem.SetCaption
 006F486E    push        6FAC38;'2 - XP95'
 006F4873    lea         eax,[ebp-0FC]
 006F4879    push        eax
 006F487A    mov         ecx,6FAC58;'smiApoXP95'
 006F487F    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4884    mov         eax,esi
 006F4886    mov         edi,dword ptr [eax]
 006F4888    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F488B    mov         edx,dword ptr [ebp-0FC]
 006F4891    mov         eax,dword ptr [ebx+474];TFXADMenuFrame.miApoHighHeatXP95:TMenuItem
 006F4897    call        TMenuItem.SetCaption
 006F489C    push        6FAC7C;'3 - Series 90'
 006F48A1    lea         eax,[ebp-100]
 006F48A7    push        eax
 006F48A8    mov         ecx,6FACA4;'smiApoS90'
 006F48AD    mov         edx,6FAAF8;'ApoTypeMenu'
 006F48B2    mov         eax,esi
 006F48B4    mov         edi,dword ptr [eax]
 006F48B6    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F48B9    mov         edx,dword ptr [ebp-100]
 006F48BF    mov         eax,dword ptr [ebx+478];TFXADMenuFrame.miApoHighHeatS90:TMenuItem
 006F48C5    call        TMenuItem.SetCaption
 006F48CA    push        6FB024;'4 - Wireless (XP95)'
 006F48CF    lea         eax,[ebp-104]
 006F48D5    push        eax
 006F48D6    mov         ecx,6FB058;'smiApoExp'
 006F48DB    mov         edx,6FAAF8;'ApoTypeMenu'
 006F48E0    mov         eax,esi
 006F48E2    mov         edi,dword ptr [eax]
 006F48E4    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F48E7    mov         edx,dword ptr [ebp-104]
 006F48ED    mov         eax,dword ptr [ebx+47C];TFXADMenuFrame.miApoHighHeatExp:TMenuItem
 006F48F3    call        TMenuItem.SetCaption
 006F48F8    push        6FB078;'5 - Multicriteria'
 006F48FD    lea         eax,[ebp-108]
 006F4903    push        eax
 006F4904    mov         ecx,6FB0A8;'smiApoMulti'
 006F4909    mov         edx,6FAAF8;'ApoTypeMenu'
 006F490E    mov         eax,esi
 006F4910    mov         edi,dword ptr [eax]
 006F4912    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4915    mov         edx,dword ptr [ebp-108]
 006F491B    mov         eax,dword ptr [ebx+480];TFXADMenuFrame.miApoMulti:TMenuItem
 006F4921    call        TMenuItem.SetCaption
 006F4926    push        6FB0CC;'0 - Intellia
Intellia EDI-30  Multisensor Smoke Detector'
 006F492B    lea         eax,[ebp-10C]
 006F4931    push        eax
 006F4932    mov         ecx,6FB14C;'smiApoMultiInt'
 006F4937    mov         edx,6FAAF8;'ApoTypeMenu'
 006F493C    mov         eax,esi
 006F493E    mov         edi,dword ptr [eax]
 006F4940    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4943    mov         edx,dword ptr [ebp-10C]
 006F4949    mov         eax,dword ptr [ebx+484];TFXADMenuFrame.miApoMultiIntellia:TMenuItem
 006F494F    call        TMenuItem.SetCaption
 006F4954    push        6FABE4;'1 - Discovery'
 006F4959    lea         eax,[ebp-110]
 006F495F    push        eax
 006F4960    mov         ecx,6FAC0C;'smiApoDiscovery'
 006F4965    mov         edx,6FAAF8;'ApoTypeMenu'
 006F496A    mov         eax,esi
 006F496C    mov         edi,dword ptr [eax]
 006F496E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4971    mov         edx,dword ptr [ebp-110]
 006F4977    mov         eax,dword ptr [ebx+488];TFXADMenuFrame.miApoMultiDiscovery:TMenuItem
 006F497D    call        TMenuItem.SetCaption
 006F4982    push        6FAC38;'2 - XP95'
 006F4987    lea         eax,[ebp-114]
 006F498D    push        eax
 006F498E    mov         ecx,6FAC58;'smiApoXP95'
 006F4993    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4998    mov         eax,esi
 006F499A    mov         edi,dword ptr [eax]
 006F499C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F499F    mov         edx,dword ptr [ebp-114]
 006F49A5    mov         eax,dword ptr [ebx+48C];TFXADMenuFrame.miApoMultiXP95:TMenuItem
 006F49AB    call        TMenuItem.SetCaption
 006F49B0    push        6FB178;'4 - Wireless (XP95)
Xpander Multisensor Smoke Detector'
 006F49B5    lea         eax,[ebp-118]
 006F49BB    push        eax
 006F49BC    mov         ecx,6FB1F4;'smiApoMultiExp'
 006F49C1    mov         edx,6FAAF8;'ApoTypeMenu'
 006F49C6    mov         eax,esi
 006F49C8    mov         edi,dword ptr [eax]
 006F49CA    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F49CD    mov         edx,dword ptr [ebp-118]
 006F49D3    mov         eax,dword ptr [ebx+494];TFXADMenuFrame.miApoMultiExp:TMenuItem
 006F49D9    call        TMenuItem.SetCaption
 006F49DE    push        6FB220;'6 - CO sensor'
 006F49E3    lea         eax,[ebp-11C]
 006F49E9    push        eax
 006F49EA    mov         ecx,6FB248;'smiApoCO'
 006F49EF    mov         edx,6FAAF8;'ApoTypeMenu'
 006F49F4    mov         eax,esi
 006F49F6    mov         edi,dword ptr [eax]
 006F49F8    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F49FB    mov         edx,dword ptr [ebp-11C]
 006F4A01    mov         eax,dword ptr [ebx+49C];TFXADMenuFrame.miApoCO:TMenuItem
 006F4A07    call        TMenuItem.SetCaption
 006F4A0C    push        6FB268;'0 - Intellia
Intellia EDI-60  Carbon Monoxide Fire Detector'
 006F4A11    lea         eax,[ebp-120]
 006F4A17    push        eax
 006F4A18    mov         ecx,6FB2F0;'smiApoCOInt'
 006F4A1D    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4A22    mov         eax,esi
 006F4A24    mov         edi,dword ptr [eax]
 006F4A26    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4A29    mov         edx,dword ptr [ebp-120]
 006F4A2F    mov         eax,dword ptr [ebx+4A0];TFXADMenuFrame.miApoCOIntellia:TMenuItem
 006F4A35    call        TMenuItem.SetCaption
 006F4A3A    push        6FABE4;'1 - Discovery'
 006F4A3F    lea         eax,[ebp-124]
 006F4A45    push        eax
 006F4A46    mov         ecx,6FAC0C;'smiApoDiscovery'
 006F4A4B    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4A50    mov         eax,esi
 006F4A52    mov         edi,dword ptr [eax]
 006F4A54    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4A57    mov         edx,dword ptr [ebp-124]
 006F4A5D    mov         eax,dword ptr [ebx+4A4];TFXADMenuFrame.miApoCODiscovery:TMenuItem
 006F4A63    call        TMenuItem.SetCaption
 006F4A68    push        6FB314;'P - CO-Heat sensor'
 006F4A6D    lea         eax,[ebp-128]
 006F4A73    push        eax
 006F4A74    mov         ecx,6FB348;'smiApoCoHeat'
 006F4A79    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4A7E    mov         eax,esi
 006F4A80    mov         edi,dword ptr [eax]
 006F4A82    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4A85    mov         edx,dword ptr [ebp-128]
 006F4A8B    mov         eax,dword ptr [ebx+4A8];TFXADMenuFrame.miApoCoHeat:TMenuItem
 006F4A91    call        TMenuItem.SetCaption
 006F4A96    push        6FB370;'0 - Intellia
EDI-55		Carbon monoxide/Heat  Multisensor Detector'
 006F4A9B    lea         eax,[ebp-12C]
 006F4AA1    push        eax
 006F4AA2    mov         ecx,6FB400;'smiApoCoHeatInt'
 006F4AA7    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4AAC    mov         eax,esi
 006F4AAE    mov         edi,dword ptr [eax]
 006F4AB0    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4AB3    mov         edx,dword ptr [ebp-12C]
 006F4AB9    mov         eax,dword ptr [ebx+4AC];TFXADMenuFrame.miApoCoHeatIntellia:TMenuItem
 006F4ABF    call        TMenuItem.SetCaption
 006F4AC4    push        6FB42C;'1 - Discovery
58000-305APO	Carbon monoxide/Heat  Multisensor Detector'
 006F4AC9    lea         eax,[ebp-130]
 006F4ACF    push        eax
 006F4AD0    mov         ecx,6FB4C8;'smiApoCoHeatDiscovery'
 006F4AD5    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4ADA    mov         eax,esi
 006F4ADC    mov         edi,dword ptr [eax]
 006F4ADE    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4AE1    mov         edx,dword ptr [ebp-130]
 006F4AE7    mov         eax,dword ptr [ebx+4B0];TFXADMenuFrame.miApoCoHeatDiscovery:TMenuItem
 006F4AED    call        TMenuItem.SetCaption
 006F4AF2    push        6FB500;'7 - Beam detector'
 006F4AF7    lea         eax,[ebp-134]
 006F4AFD    push        eax
 006F4AFE    mov         ecx,6FB530;'smiApoBeam'
 006F4B03    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4B08    mov         eax,esi
 006F4B0A    mov         edi,dword ptr [eax]
 006F4B0C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4B0F    mov         edx,dword ptr [ebp-134]
 006F4B15    mov         eax,dword ptr [ebx+4B8];TFXADMenuFrame.miApoBeam:TMenuItem
 006F4B1B    call        TMenuItem.SetCaption
 006F4B20    push        6FB554;'2 - XP95
55000-273APO
55000-268APO'
 006F4B25    lea         eax,[ebp-138]
 006F4B2B    push        eax
 006F4B2C    mov         ecx,6FB5AC;'smiApoBeamTypes'
 006F4B31    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4B36    mov         eax,esi
 006F4B38    mov         edi,dword ptr [eax]
 006F4B3A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4B3D    mov         edx,dword ptr [ebp-138]
 006F4B43    mov         eax,dword ptr [ebx+4BC];TFXADMenuFrame.miApoBeamTypes:TMenuItem
 006F4B49    call        TMenuItem.SetCaption
 006F4B4E    push        6FB5D8;'8 - Flame detector'
 006F4B53    lea         eax,[ebp-13C]
 006F4B59    push        eax
 006F4B5A    mov         ecx,6FB60C;'smiApoFlame'
 006F4B5F    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4B64    mov         eax,esi
 006F4B66    mov         edi,dword ptr [eax]
 006F4B68    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4B6B    mov         edx,dword ptr [ebp-13C]
 006F4B71    mov         eax,dword ptr [ebx+4C0];TFXADMenuFrame.miApoFlame:TMenuItem
 006F4B77    call        TMenuItem.SetCaption
 006F4B7C    push        6FB630;'2 - XP95
55000-022APO
55000-023APO
55000-024APO
55000-280APO'
 006F4B81    lea         eax,[ebp-140]
 006F4B87    push        eax
 006F4B88    mov         ecx,6FB6C0;'smiApoFlameTypes'
 006F4B8D    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4B92    mov         eax,esi
 006F4B94    mov         edi,dword ptr [eax]
 006F4B96    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4B99    mov         edx,dword ptr [ebp-140]
 006F4B9F    mov         eax,dword ptr [ebx+4C4];TFXADMenuFrame.miApoFlameTypes:TMenuItem
 006F4BA5    call        TMenuItem.SetCaption
 006F4BAA    push        6FB6F0;'9 - Any Type'
 006F4BAF    lea         eax,[ebp-144]
 006F4BB5    push        eax
 006F4BB6    mov         ecx,6FB718;'smiApoAnyType'
 006F4BBB    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4BC0    mov         eax,esi
 006F4BC2    mov         edi,dword ptr [eax]
 006F4BC4    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4BC7    mov         edx,dword ptr [ebp-144]
 006F4BCD    mov         eax,dword ptr [ebx+4C8];TFXADMenuFrame.ApoAnyType1:TMenuItem
 006F4BD3    call        TMenuItem.SetCaption
 006F4BD8    push        6FB740;'O - Any Type (Virtual)'
 006F4BDD    lea         eax,[ebp-148]
 006F4BE3    push        eax
 006F4BE4    mov         ecx,6FB77C;'smiApoAnyTypeVirtual'
 006F4BE9    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4BEE    mov         eax,esi
 006F4BF0    mov         edi,dword ptr [eax]
 006F4BF2    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4BF5    mov         edx,dword ptr [ebp-148]
 006F4BFB    mov         eax,dword ptr [ebx+560];TFXADMenuFrame.ApoAnyTypeVirtual1:TMenuItem
 006F4C01    call        TMenuItem.SetCaption
 006F4C06    push        6FB7B4;'A - Conventional Zone module'
 006F4C0B    lea         eax,[ebp-14C]
 006F4C11    push        eax
 006F4C12    mov         ecx,6FB7FC;'smiApoConvZone'
 006F4C17    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4C1C    mov         eax,esi
 006F4C1E    mov         edi,dword ptr [eax]
 006F4C20    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4C23    mov         edx,dword ptr [ebp-14C]
 006F4C29    mov         eax,dword ptr [ebx+4D0];TFXADMenuFrame.ApoConvZone1:TMenuItem
 006F4C2F    call        TMenuItem.SetCaption
 006F4C34    push        6FB828;'B - Manual call point'
 006F4C39    lea         eax,[ebp-150]
 006F4C3F    push        eax
 006F4C40    mov         ecx,6FB860;'smiApoMCP'
 006F4C45    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4C4A    mov         eax,esi
 006F4C4C    mov         edi,dword ptr [eax]
 006F4C4E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4C51    mov         edx,dword ptr [ebp-150]
 006F4C57    mov         eax,dword ptr [ebx+4D8];TFXADMenuFrame.miApoMCP:TMenuItem
 006F4C5D    call        TMenuItem.SetCaption
 006F4C62    push        6FB880;'0 - Intellia
EPP-10
EPP-20
EPP-20A
EPP-22A
EPP-23'
 006F4C67    lea         eax,[ebp-154]
 006F4C6D    push        eax
 006F4C6E    mov         ecx,6FB8FC;'smiApoMCPInt'
 006F4C73    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4C78    mov         eax,esi
 006F4C7A    mov         edi,dword ptr [eax]
 006F4C7C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4C7F    mov         edx,dword ptr [ebp-154]
 006F4C85    mov         eax,dword ptr [ebx+4DC];TFXADMenuFrame.miApoMCPIntellia:TMenuItem
 006F4C8B    call        TMenuItem.SetCaption
 006F4C90    push        6FABE4;'1 - Discovery'
 006F4C95    lea         eax,[ebp-158]
 006F4C9B    push        eax
 006F4C9C    mov         ecx,6FAC0C;'smiApoDiscovery'
 006F4CA1    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4CA6    mov         eax,esi
 006F4CA8    mov         edi,dword ptr [eax]
 006F4CAA    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4CAD    mov         edx,dword ptr [ebp-158]
 006F4CB3    mov         eax,dword ptr [ebx+4E0];TFXADMenuFrame.miApoMCPDiscovery:TMenuItem
 006F4CB9    call        TMenuItem.SetCaption
 006F4CBE    push        6FAC38;'2 - XP95'
 006F4CC3    lea         eax,[ebp-15C]
 006F4CC9    push        eax
 006F4CCA    mov         ecx,6FAC58;'smiApoXP95'
 006F4CCF    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4CD4    mov         eax,esi
 006F4CD6    mov         edi,dword ptr [eax]
 006F4CD8    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4CDB    mov         edx,dword ptr [ebp-15C]
 006F4CE1    mov         eax,dword ptr [ebx+4E4];TFXADMenuFrame.miApoMCPXP95:TMenuItem
 006F4CE7    call        TMenuItem.SetCaption
 006F4CEC    push        6FAC7C;'3 - Series 90'
 006F4CF1    lea         eax,[ebp-160]
 006F4CF7    push        eax
 006F4CF8    mov         ecx,6FACA4;'smiApoS90'
 006F4CFD    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4D02    mov         eax,esi
 006F4D04    mov         edi,dword ptr [eax]
 006F4D06    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4D09    mov         edx,dword ptr [ebp-160]
 006F4D0F    mov         eax,dword ptr [ebx+4E8];TFXADMenuFrame.miApoMCPS90:TMenuItem
 006F4D15    call        TMenuItem.SetCaption
 006F4D1A    push        6FB924;'4 - Wireless (XP95)
Xpander Manual Call Point'
 006F4D1F    lea         eax,[ebp-164]
 006F4D25    push        eax
 006F4D26    mov         ecx,6FB990;'smiApoMCPExp'
 006F4D2B    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4D30    mov         eax,esi
 006F4D32    mov         edi,dword ptr [eax]
 006F4D34    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4D37    mov         edx,dword ptr [ebp-164]
 006F4D3D    mov         eax,dword ptr [ebx+4EC];TFXADMenuFrame.miApoMCPExp:TMenuItem
 006F4D43    call        TMenuItem.SetCaption
 006F4D48    push        6FB9B8;'C - Switch mon. w. interrupt'
 006F4D4D    lea         eax,[ebp-168]
 006F4D53    push        eax
 006F4D54    mov         ecx,6FBA00;'smiApoSwMonInt'
 006F4D59    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4D5E    mov         eax,esi
 006F4D60    mov         edi,dword ptr [eax]
 006F4D62    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4D65    mov         edx,dword ptr [ebp-168]
 006F4D6B    mov         eax,dword ptr [ebx+4F0];TFXADMenuFrame.miApoSwMonInt:TMenuItem
 006F4D71    call        TMenuItem.SetCaption
 006F4D76    push        6FBA2C;'D - Switch monitor'
 006F4D7B    lea         eax,[ebp-16C]
 006F4D81    push        eax
 006F4D82    mov         ecx,6FBA60;'smiApoSwMonitor'
 006F4D87    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4D8C    mov         eax,esi
 006F4D8E    mov         edi,dword ptr [eax]
 006F4D90    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4D93    mov         edx,dword ptr [ebp-16C]
 006F4D99    mov         eax,dword ptr [ebx+4F4];TFXADMenuFrame.miApoSwMonitor:TMenuItem
 006F4D9F    call        TMenuItem.SetCaption
 006F4DA4    push        6FBA8C;'2 - XP95
EMI-310
EMI-310+
EMI-410
EMI-410+'
 006F4DA9    lea         eax,[ebp-170]
 006F4DAF    push        eax
 006F4DB0    mov         ecx,6FBAF8;'smiApoSwMonitorTypes'
 006F4DB5    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4DBA    mov         eax,esi
 006F4DBC    mov         edi,dword ptr [eax]
 006F4DBE    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4DC1    mov         edx,dword ptr [ebp-170]
 006F4DC7    mov         eax,dword ptr [ebx+4F8];TFXADMenuFrame.miApoSwMonitorTypes:TMenuItem
 006F4DCD    call        TMenuItem.SetCaption
 006F4DD2    push        6FBB30;'E - Switch monitor plus'
 006F4DD7    lea         eax,[ebp-174]
 006F4DDD    push        eax
 006F4DDE    mov         ecx,6FBB6C;'smiApoSwMonPlus'
 006F4DE3    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4DE8    mov         eax,esi
 006F4DEA    mov         edi,dword ptr [eax]
 006F4DEC    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4DEF    mov         edx,dword ptr [ebp-174]
 006F4DF5    mov         eax,dword ptr [ebx+4FC];TFXADMenuFrame.ApoSwMonPlus1:TMenuItem
 006F4DFB    call        TMenuItem.SetCaption
 006F4E00    push        6FBB98;'F - Switch monitor mini'
 006F4E05    lea         eax,[ebp-178]
 006F4E0B    push        eax
 006F4E0C    mov         ecx,6FBBD4;'smiApoSwMonMini'
 006F4E11    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4E16    mov         eax,esi
 006F4E18    mov         edi,dword ptr [eax]
 006F4E1A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4E1D    mov         edx,dword ptr [ebp-178]
 006F4E23    mov         eax,dword ptr [ebx+500];TFXADMenuFrame.ApoSwMonMini1:TMenuItem
 006F4E29    call        TMenuItem.SetCaption
 006F4E2E    push        6FBC00;'G - IO, 1 output'
 006F4E33    lea         eax,[ebp-17C]
 006F4E39    push        eax
 006F4E3A    mov         ecx,6FBC30;'smiApoIO01'
 006F4E3F    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4E44    mov         eax,esi
 006F4E46    mov         edi,dword ptr [eax]
 006F4E48    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4E4B    mov         edx,dword ptr [ebp-17C]
 006F4E51    mov         eax,dword ptr [ebx+50C];TFXADMenuFrame.ApoIO011:TMenuItem
 006F4E57    call        TMenuItem.SetCaption
 006F4E5C    push        6FBC54;'H - IO, 1 input 1 output mains'
 006F4E61    lea         eax,[ebp-180]
 006F4E67    push        eax
 006F4E68    mov         ecx,6FBCA0;'smiApoIO11Mains'
 006F4E6D    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4E72    mov         eax,esi
 006F4E74    mov         edi,dword ptr [eax]
 006F4E76    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4E79    mov         edx,dword ptr [ebp-180]
 006F4E7F    mov         eax,dword ptr [ebx+510];TFXADMenuFrame.ApoIO11Mains1:TMenuItem
 006F4E85    call        TMenuItem.SetCaption
 006F4E8A    push        6FBCCC;'I - IO, 2 inputs 1 output'
 006F4E8F    lea         eax,[ebp-184]
 006F4E95    push        eax
 006F4E96    mov         ecx,6FBD0C;'smiApoIO21'
 006F4E9B    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4EA0    mov         eax,esi
 006F4EA2    mov         edi,dword ptr [eax]
 006F4EA4    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4EA7    mov         edx,dword ptr [ebp-184]
 006F4EAD    mov         eax,dword ptr [ebx+514];TFXADMenuFrame.ApoIO211:TMenuItem
 006F4EB3    call        TMenuItem.SetCaption
 006F4EB8    push        6FBD30;'J - IO module'
 006F4EBD    lea         eax,[ebp-188]
 006F4EC3    push        eax
 006F4EC4    mov         ecx,6FBD58;'smiApoIO33'
 006F4EC9    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4ECE    mov         eax,esi
 006F4ED0    mov         edi,dword ptr [eax]
 006F4ED2    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4ED5    mov         edx,dword ptr [ebp-188]
 006F4EDB    mov         eax,dword ptr [ebx+518];TFXADMenuFrame.miApoIO33:TMenuItem
 006F4EE1    call        TMenuItem.SetCaption
 006F4EE6    push        6FAFD0;'0 - Intellia'
 006F4EEB    lea         eax,[ebp-18C]
 006F4EF1    push        eax
 006F4EF2    mov         ecx,6FAFF8;'smiApoIntellia'
 006F4EF7    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4EFC    mov         eax,esi
 006F4EFE    mov         edi,dword ptr [eax]
 006F4F00    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4F03    mov         edx,dword ptr [ebp-18C]
 006F4F09    mov         eax,dword ptr [ebx+51C];TFXADMenuFrame.miApoIO33Intellia:TMenuItem
 006F4F0F    call        TMenuItem.SetCaption
 006F4F14    push        6FABE4;'1 - Discovery'
 006F4F19    lea         eax,[ebp-190]
 006F4F1F    push        eax
 006F4F20    mov         ecx,6FAC0C;'smiApoDiscovery'
 006F4F25    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4F2A    mov         eax,esi
 006F4F2C    mov         edi,dword ptr [eax]
 006F4F2E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4F31    mov         edx,dword ptr [ebp-190]
 006F4F37    mov         eax,dword ptr [ebx+520];TFXADMenuFrame.miApoIO33Discovery:TMenuItem
 006F4F3D    call        TMenuItem.SetCaption
 006F4F42    push        6FBD7C;'2 - XP95
EMI-311
EMI-301
EMI-311/240
EMI-333
EMI-411
EMI-401
55000-797APO...
 006F4F47    lea         eax,[ebp-194]
 006F4F4D    push        eax
 006F4F4E    mov         ecx,6FBE2C;'smiApoIO33XP95'
 006F4F53    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4F58    mov         eax,esi
 006F4F5A    mov         edi,dword ptr [eax]
 006F4F5C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4F5F    mov         edx,dword ptr [ebp-194]
 006F4F65    mov         eax,dword ptr [ebx+524];TFXADMenuFrame.miApoIO33XP95:TMenuItem
 006F4F6B    call        TMenuItem.SetCaption
 006F4F70    push        6FAC7C;'3 - Series 90'
 006F4F75    lea         eax,[ebp-198]
 006F4F7B    push        eax
 006F4F7C    mov         ecx,6FACA4;'smiApoS90'
 006F4F81    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4F86    mov         eax,esi
 006F4F88    mov         edi,dword ptr [eax]
 006F4F8A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4F8D    mov         edx,dword ptr [ebp-198]
 006F4F93    mov         eax,dword ptr [ebx+528];TFXADMenuFrame.miApoIO33S90:TMenuItem
 006F4F99    call        TMenuItem.SetCaption
 006F4F9E    push        6FBE58;'4 - Wireless (XP95)
Xpander Single IO Unit
Xpander Dual IO Unit'
 006F4FA3    lea         eax,[ebp-19C]
 006F4FA9    push        eax
 006F4FAA    mov         ecx,6FBEE8;'smiApoIO33Exp'
 006F4FAF    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4FB4    mov         eax,esi
 006F4FB6    mov         edi,dword ptr [eax]
 006F4FB8    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4FBB    mov         edx,dword ptr [ebp-19C]
 006F4FC1    mov         eax,dword ptr [ebx+52C];TFXADMenuFrame.miApoIO33Exp:TMenuItem
 006F4FC7    call        TMenuItem.SetCaption
 006F4FCC    push        6FBF10;'K - Loop powered sounder'
 006F4FD1    lea         eax,[ebp-1A0]
 006F4FD7    push        eax
 006F4FD8    mov         ecx,6FBF50;'smiApoLPSounder'
 006F4FDD    mov         edx,6FAAF8;'ApoTypeMenu'
 006F4FE2    mov         eax,esi
 006F4FE4    mov         edi,dword ptr [eax]
 006F4FE6    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F4FE9    mov         edx,dword ptr [ebp-1A0]
 006F4FEF    mov         eax,dword ptr [ebx+534];TFXADMenuFrame.ApoLPSounder1:TMenuItem
 006F4FF5    call        TMenuItem.SetCaption
 006F4FFA    push        6FBF7C;'L - Addressable sounder'
 006F4FFF    lea         eax,[ebp-1A4]
 006F5005    push        eax
 006F5006    mov         ecx,6FBFB8;'smiApoIntSounder'
 006F500B    mov         edx,6FAAF8;'ApoTypeMenu'
 006F5010    mov         eax,esi
 006F5012    mov         edi,dword ptr [eax]
 006F5014    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5017    mov         edx,dword ptr [ebp-1A4]
 006F501D    mov         eax,dword ptr [ebx+548];TFXADMenuFrame.miApoIntSounder:TMenuItem
 006F5023    call        TMenuItem.SetCaption
 006F5028    push        6FAFD0;'0 - Intellia'
 006F502D    lea         eax,[ebp-1A8]
 006F5033    push        eax
 006F5034    mov         ecx,6FAFF8;'smiApoIntellia'
 006F5039    mov         edx,6FAAF8;'ApoTypeMenu'
 006F503E    mov         eax,esi
 006F5040    mov         edi,dword ptr [eax]
 006F5042    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5045    mov         edx,dword ptr [ebp-1A8]
 006F504B    mov         eax,dword ptr [ebx+54C];TFXADMenuFrame.miApoIntSounderIntellia:TMenuItem
 006F5051    call        TMenuItem.SetCaption
 006F5056    push        6FABE4;'1 - Discovery'
 006F505B    lea         eax,[ebp-1AC]
 006F5061    push        eax
 006F5062    mov         ecx,6FAC0C;'smiApoDiscovery'
 006F5067    mov         edx,6FAAF8;'ApoTypeMenu'
 006F506C    mov         eax,esi
 006F506E    mov         edi,dword ptr [eax]
 006F5070    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5073    mov         edx,dword ptr [ebp-1AC]
 006F5079    mov         eax,dword ptr [ebx+550];TFXADMenuFrame.miApoIntSounderDiscovery:TMenuItem
 006F507F    call        TMenuItem.SetCaption
 006F5084    push        6FBFE8;'2 - XP95
ESI-20
ESI-30
ESI-40
ESI-50
ESI-52
ESI-53
ESI-54
ESI-60
ESI-70...
 006F5089    lea         eax,[ebp-1B0]
 006F508F    push        eax
 006F5090    mov         ecx,6FC0C8;'smiApoIntSounderXP95'
 006F5095    mov         edx,6FAAF8;'ApoTypeMenu'
 006F509A    mov         eax,esi
 006F509C    mov         edi,dword ptr [eax]
 006F509E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F50A1    mov         edx,dword ptr [ebp-1B0]
 006F50A7    mov         eax,dword ptr [ebx+554];TFXADMenuFrame.miApoIntSounderXP95:TMenuItem
 006F50AD    call        TMenuItem.SetCaption
 006F50B2    push        6FAC7C;'3 - Series 90'
 006F50B7    lea         eax,[ebp-1B4]
 006F50BD    push        eax
 006F50BE    mov         ecx,6FACA4;'smiApoS90'
 006F50C3    mov         edx,6FAAF8;'ApoTypeMenu'
 006F50C8    mov         eax,esi
 006F50CA    mov         edi,dword ptr [eax]
 006F50CC    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F50CF    mov         edx,dword ptr [ebp-1B4]
 006F50D5    mov         eax,dword ptr [ebx+558];TFXADMenuFrame.miApoIntSounderS90:TMenuItem
 006F50DB    call        TMenuItem.SetCaption
 006F50E0    push        6FC100;'4 - Wireless (XP95)
Xpander Sounder Base'
 006F50E5    lea         eax,[ebp-1B8]
 006F50EB    push        eax
 006F50EC    mov         ecx,6FC160;'smiApoIntSounderExp'
 006F50F1    mov         edx,6FAAF8;'ApoTypeMenu'
 006F50F6    mov         eax,esi
 006F50F8    mov         edi,dword ptr [eax]
 006F50FA    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F50FD    mov         edx,dword ptr [ebp-1B8]
 006F5103    mov         eax,dword ptr [ebx+55C];TFXADMenuFrame.miApoIntSounderExp:TMenuItem
 006F5109    call        TMenuItem.SetCaption
 006F510E    push        6FC194;'M - Sounder controller module'
 006F5113    lea         eax,[ebp-1BC]
 006F5119    push        eax
 006F511A    mov         ecx,6FC1DC;'smiApoIOSounder'
 006F511F    mov         edx,6FAAF8;'ApoTypeMenu'
 006F5124    mov         eax,esi
 006F5126    mov         edi,dword ptr [eax]
 006F5128    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F512B    mov         edx,dword ptr [ebp-1BC]
 006F5131    mov         eax,dword ptr [ebx+538];TFXADMenuFrame.miApoIOSounder:TMenuItem
 006F5137    call        TMenuItem.SetCaption
 006F513C    push        6FC208;'2 - XP95
EMI-301/S
EMI-401/S
EMI-4015A/S'
 006F5141    lea         eax,[ebp-1C0]
 006F5147    push        eax
 006F5148    mov         ecx,6FC26C;'smiApoIOSounderTypes'
 006F514D    mov         edx,6FAAF8;'ApoTypeMenu'
 006F5152    mov         eax,esi
 006F5154    mov         edi,dword ptr [eax]
 006F5156    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5159    mov         edx,dword ptr [ebp-1C0]
 006F515F    mov         eax,dword ptr [ebx+53C];TFXADMenuFrame.miApoIOSounderTypes:TMenuItem
 006F5165    call        TMenuItem.SetCaption
 006F516A    push        6FC2A4;'N - Beacon'
 006F516F    lea         eax,[ebp-1C4]
 006F5175    push        eax
 006F5176    mov         ecx,6FC2C8;'smiApoBeacon'
 006F517B    mov         edx,6FAAF8;'ApoTypeMenu'
 006F5180    mov         eax,esi
 006F5182    mov         edi,dword ptr [eax]
 006F5184    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5187    mov         edx,dword ptr [ebp-1C4]
 006F518D    mov         eax,dword ptr [ebx+540];TFXADMenuFrame.miApoBeacon:TMenuItem
 006F5193    call        TMenuItem.SetCaption
 006F5198    push        6FC2F0;'2 - XP95
ESI-80
55000-877APO'
 006F519D    lea         eax,[ebp-1C8]
 006F51A3    push        eax
 006F51A4    mov         ecx,6FC33C;'smiApoBeaconTypes'
 006F51A9    mov         edx,6FAAF8;'ApoTypeMenu'
 006F51AE    mov         eax,esi
 006F51B0    mov         edi,dword ptr [eax]
 006F51B2    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F51B5    mov         edx,dword ptr [ebp-1C8]
 006F51BB    mov         eax,dword ptr [ebx+544];TFXADMenuFrame.miApoBeaconTypes:TMenuItem
 006F51C1    call        TMenuItem.SetCaption
 006F51C6    push        6FC36C;'R - Sounder beacon'
 006F51CB    lea         eax,[ebp-1CC]
 006F51D1    push        eax
 006F51D2    mov         ecx,6FC3A0;'smiApoDSB1'
 006F51D7    mov         edx,6FAAF8;'ApoTypeMenu'
 006F51DC    mov         eax,esi
 006F51DE    mov         edi,dword ptr [eax]
 006F51E0    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F51E3    mov         edx,dword ptr [ebp-1CC]
 006F51E9    mov         eax,dword ptr [ebx+568];TFXADMenuFrame.miApoDSB:TMenuItem
 006F51EF    call        TMenuItem.SetCaption
 006F51F4    push        6FC3C4;'0 - Intellia
ESI-51
ESI-61'
 006F51F9    lea         eax,[ebp-1D0]
 006F51FF    push        eax
 006F5200    mov         ecx,6FC40C;'smiApoDSBInt'
 006F5205    mov         edx,6FAAF8;'ApoTypeMenu'
 006F520A    mov         eax,esi
 006F520C    mov         edi,dword ptr [eax]
 006F520E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5211    mov         edx,dword ptr [ebp-1D0]
 006F5217    mov         eax,dword ptr [ebx+56C];TFXADMenuFrame.miApoDSBIntellia:TMenuItem
 006F521D    call        TMenuItem.SetCaption
 006F5222    push        6FC434;'1 - Discovery
45681-393APO
58000-005 APO'
 006F5227    lea         eax,[ebp-1D4]
 006F522D    push        eax
 006F522E    mov         ecx,6FC498;'smiApoDSBDiscovery'
 006F5233    mov         edx,6FAAF8;'ApoTypeMenu'
 006F5238    mov         eax,esi
 006F523A    mov         edi,dword ptr [eax]
 006F523C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F523F    mov         edx,dword ptr [ebp-1D4]
 006F5245    mov         eax,dword ptr [ebx+570];TFXADMenuFrame.miApoDSBDiscovery:TMenuItem
 006F524B    call        TMenuItem.SetCaption
 006F5250    push        6FC4CC;'S - Voice Sounder beacon'
 006F5255    lea         eax,[ebp-1D8]
 006F525B    push        eax
 006F525C    mov         ecx,6FC50C;'smiApoDVSB1'
 006F5261    mov         edx,6FAAF8;'ApoTypeMenu'
 006F5266    mov         eax,esi
 006F5268    mov         edi,dword ptr [eax]
 006F526A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F526D    mov         edx,dword ptr [ebp-1D8]
 006F5273    mov         eax,dword ptr [ebx+574];TFXADMenuFrame.ApoDVSB1:TMenuItem
 006F5279    call        TMenuItem.SetCaption
 006F527E    push        6FAFD0;'0 - Intellia'
 006F5283    lea         eax,[ebp-1DC]
 006F5289    push        eax
 006F528A    mov         ecx,6FAFF8;'smiApoIntellia'
 006F528F    mov         edx,6FAAF8;'ApoTypeMenu'
 006F5294    mov         eax,esi
 006F5296    mov         edi,dword ptr [eax]
 006F5298    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F529B    mov         edx,dword ptr [ebp-1DC]
 006F52A1    mov         eax,dword ptr [ebx+578];TFXADMenuFrame.ApoDVSBIntellia1:TMenuItem
 006F52A7    call        TMenuItem.SetCaption
 006F52AC    push        6FABE4;'1 - Discovery'
 006F52B1    lea         eax,[ebp-1E0]
 006F52B7    push        eax
 006F52B8    mov         ecx,6FAC0C;'smiApoDiscovery'
 006F52BD    mov         edx,6FAAF8;'ApoTypeMenu'
 006F52C2    mov         eax,esi
 006F52C4    mov         edi,dword ptr [eax]
 006F52C6    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F52C9    mov         edx,dword ptr [ebp-1E0]
 006F52CF    mov         eax,dword ptr [ebx+57C];TFXADMenuFrame.ApoDVSBDiscovery1:TMenuItem
 006F52D5    call        TMenuItem.SetCaption
 006F52DA    push        6FC530;'T - Voice Sounder'
 006F52DF    lea         eax,[ebp-1E4]
 006F52E5    push        eax
 006F52E6    mov         ecx,6FC560;'smiApoDVS1'
 006F52EB    mov         edx,6FAAF8;'ApoTypeMenu'
 006F52F0    mov         eax,esi
 006F52F2    mov         edi,dword ptr [eax]
 006F52F4    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F52F7    mov         edx,dword ptr [ebp-1E4]
 006F52FD    mov         eax,dword ptr [ebx+580];TFXADMenuFrame.ApoDVS1:TMenuItem
 006F5303    call        TMenuItem.SetCaption
 006F5308    push        6FAFD0;'0 - Intellia'
 006F530D    lea         eax,[ebp-1E8]
 006F5313    push        eax
 006F5314    mov         ecx,6FAFF8;'smiApoIntellia'
 006F5319    mov         edx,6FAAF8;'ApoTypeMenu'
 006F531E    mov         eax,esi
 006F5320    mov         edi,dword ptr [eax]
 006F5322    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5325    mov         edx,dword ptr [ebp-1E8]
 006F532B    mov         eax,dword ptr [ebx+584];TFXADMenuFrame.ApoDVSIntellia1:TMenuItem
 006F5331    call        TMenuItem.SetCaption
 006F5336    push        6FABE4;'1 - Discovery'
 006F533B    lea         eax,[ebp-1EC]
 006F5341    push        eax
 006F5342    mov         ecx,6FAC0C;'smiApoDiscovery'
 006F5347    mov         edx,6FAAF8;'ApoTypeMenu'
 006F534C    mov         eax,esi
 006F534E    mov         edi,dword ptr [eax]
 006F5350    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5353    mov         edx,dword ptr [ebp-1EC]
 006F5359    mov         eax,dword ptr [ebx+588];TFXADMenuFrame.ApoDVSDiscovery1:TMenuItem
 006F535F    call        TMenuItem.SetCaption
 006F5364    push        6F95C8;'0 - Not in use'
 006F5369    lea         eax,[ebp-1F0]
 006F536F    push        eax
 006F5370    mov         ecx,6FC584;'smiOutNotInUse'
 006F5375    mov         edx,6FC5B0;'OutFuncMenu'
 006F537A    mov         eax,esi
 006F537C    mov         edi,dword ptr [eax]
 006F537E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5381    mov         edx,dword ptr [ebp-1F0]
 006F5387    mov         eax,dword ptr [ebx+590];TFXADMenuFrame.miOutNotInUse:TMenuItem
 006F538D    call        TMenuItem.SetCaption
 006F5392    push        6FC5D4;'1 - Fire Alarm Devices'
 006F5397    lea         eax,[ebp-1F4]
 006F539D    push        eax
 006F539E    mov         ecx,6FC610;'smiOutFireAD'
 006F53A3    mov         edx,6FC5B0;'OutFuncMenu'
 006F53A8    mov         eax,esi
 006F53AA    mov         edi,dword ptr [eax]
 006F53AC    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F53AF    mov         edx,dword ptr [ebp-1F4]
 006F53B5    mov         eax,dword ptr [ebx+594];TFXADMenuFrame.miOutFireAD:TMenuItem
 006F53BB    call        TMenuItem.SetCaption
 006F53C0    push        6FC638;'2 - Fire Alarm Devices Non-Silenceable'
 006F53C5    lea         eax,[ebp-1F8]
 006F53CB    push        eax
 006F53CC    mov         ecx,6FC694;'smiOutFireAdNS'
 006F53D1    mov         edx,6FC5B0;'OutFuncMenu'
 006F53D6    mov         eax,esi
 006F53D8    mov         edi,dword ptr [eax]
 006F53DA    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F53DD    mov         edx,dword ptr [ebp-1F8]
 006F53E3    mov         eax,dword ptr [ebx+598];TFXADMenuFrame.miOutFireADNS:TMenuItem
 006F53E9    call        TMenuItem.SetCaption
 006F53EE    push        6FC6C0;'3 - Fault Warning Alarm Devices'
 006F53F3    lea         eax,[ebp-1FC]
 006F53F9    push        eax
 006F53FA    mov         ecx,6FC70C;'smiOutFaultWD'
 006F53FF    mov         edx,6FC5B0;'OutFuncMenu'
 006F5404    mov         eax,esi
 006F5406    mov         edi,dword ptr [eax]
 006F5408    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F540B    mov         edx,dword ptr [ebp-1FC]
 006F5411    mov         eax,dword ptr [ebx+5A0];TFXADMenuFrame.miOutFaultWD:TMenuItem
 006F5417    call        TMenuItem.SetCaption
 006F541C    push        6FC734;'4 - Fire Alarm Output'
 006F5421    lea         eax,[ebp-200]
 006F5427    push        eax
 006F5428    mov         ecx,6FC76C;'smiOutFireAlarm'
 006F542D    mov         edx,6FC5B0;'OutFuncMenu'
 006F5432    mov         eax,esi
 006F5434    mov         edi,dword ptr [eax]
 006F5436    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5439    mov         edx,dword ptr [ebp-200]
 006F543F    mov         eax,dword ptr [ebx+5B0];TFXADMenuFrame.miOutFireAlarm:TMenuItem
 006F5445    call        TMenuItem.SetCaption
 006F544A    push        6FC798;'5 - Prealarm Output'
 006F544F    lea         eax,[ebp-204]
 006F5455    push        eax
 006F5456    mov         ecx,6FC7CC;'smiOutPrewarning'
 006F545B    mov         edx,6FC5B0;'OutFuncMenu'
 006F5460    mov         eax,esi
 006F5462    mov         edi,dword ptr [eax]
 006F5464    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5467    mov         edx,dword ptr [ebp-204]
 006F546D    mov         eax,dword ptr [ebx+5B4];TFXADMenuFrame.miOutPrewarning:TMenuItem
 006F5473    call        TMenuItem.SetCaption
 006F5478    push        6FC7FC;'6 - Fault Warning Output'
 006F547D    lea         eax,[ebp-208]
 006F5483    push        eax
 006F5484    mov         ecx,6FC83C;'smiOutFaultWarning'
 006F5489    mov         edx,6FC5B0;'OutFuncMenu'
 006F548E    mov         eax,esi
 006F5490    mov         edi,dword ptr [eax]
 006F5492    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5495    mov         edx,dword ptr [ebp-208]
 006F549B    mov         eax,dword ptr [ebx+5B8];TFXADMenuFrame.miOutFaultWarning:TMenuItem
 006F54A1    call        TMenuItem.SetCaption
 006F54A6    push        6FC870;'7 - Maintenance Warning Output'
 006F54AB    lea         eax,[ebp-20C]
 006F54B1    push        eax
 006F54B2    mov         ecx,6FC8BC;'smiOutMaintWarning'
 006F54B7    mov         edx,6FC5B0;'OutFuncMenu'
 006F54BC    mov         eax,esi
 006F54BE    mov         edi,dword ptr [eax]
 006F54C0    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F54C3    mov         edx,dword ptr [ebp-20C]
 006F54C9    mov         eax,dword ptr [ebx+5BC];TFXADMenuFrame.miOutMaintWarning:TMenuItem
 006F54CF    call        TMenuItem.SetCaption
 006F54D4    push        6FC8F0;'8 - Fire Door Output'
 006F54D9    lea         eax,[ebp-210]
 006F54DF    push        eax
 006F54E0    mov         ecx,6FC928;'smiOutFireDoor'
 006F54E5    mov         edx,6FC5B0;'OutFuncMenu'
 006F54EA    mov         eax,esi
 006F54EC    mov         edi,dword ptr [eax]
 006F54EE    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F54F1    mov         edx,dword ptr [ebp-210]
 006F54F7    mov         eax,dword ptr [ebx+5C8];TFXADMenuFrame.miOutFireDoor:TMenuItem
 006F54FD    call        TMenuItem.SetCaption
 006F5502    push        6FC954;'9 - Extinguisher Output'
 006F5507    lea         eax,[ebp-214]
 006F550D    push        eax
 006F550E    mov         ecx,6FC990;'smiOutExtinguisher'
 006F5513    mov         edx,6FC5B0;'OutFuncMenu'
 006F5518    mov         eax,esi
 006F551A    mov         edi,dword ptr [eax]
 006F551C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F551F    mov         edx,dword ptr [ebp-214]
 006F5525    mov         eax,dword ptr [ebx+5CC];TFXADMenuFrame.miOutExtinguisher:TMenuItem
 006F552B    call        TMenuItem.SetCaption
 006F5530    push        6FC9C4;'A - Disablement Output'
 006F5535    lea         eax,[ebp-218]
 006F553B    push        eax
 006F553C    mov         ecx,6FCA00;'smiOutDisablement'
 006F5541    mov         edx,6FC5B0;'OutFuncMenu'
 006F5546    mov         eax,esi
 006F5548    mov         edi,dword ptr [eax]
 006F554A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F554D    mov         edx,dword ptr [ebp-218]
 006F5553    mov         eax,dword ptr [ebx+5D4];TFXADMenuFrame.miOutDisablement:TMenuItem
 006F5559    call        TMenuItem.SetCaption
 006F555E    push        6FCA30;'B - Access Level Output'
 006F5563    lea         eax,[ebp-21C]
 006F5569    push        eax
 006F556A    mov         ecx,6FCA6C;'smiOutAccessLevel'
 006F556F    mov         edx,6FC5B0;'OutFuncMenu'
 006F5574    mov         eax,esi
 006F5576    mov         edi,dword ptr [eax]
 006F5578    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F557B    mov         edx,dword ptr [ebp-21C]
 006F5581    mov         eax,dword ptr [ebx+5DC];TFXADMenuFrame.miOutAccessLevel:TMenuItem
 006F5587    call        TMenuItem.SetCaption
 006F558C    push        6FCA9C;'C - Technical Alarm Output'
 006F5591    lea         eax,[ebp-220]
 006F5597    push        eax
 006F5598    mov         ecx,6FCAE0;'smiOutTechAlarm'
 006F559D    mov         edx,6FC5B0;'OutFuncMenu'
 006F55A2    mov         eax,esi
 006F55A4    mov         edi,dword ptr [eax]
 006F55A6    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F55A9    mov         edx,dword ptr [ebp-220]
 006F55AF    mov         eax,dword ptr [ebx+5E0];TFXADMenuFrame.miOutTechAlarm:TMenuItem
 006F55B5    call        TMenuItem.SetCaption
 006F55BA    push        6FCB0C;'D - Internal Logic Output'
 006F55BF    lea         eax,[ebp-224]
 006F55C5    push        eax
 006F55C6    mov         ecx,6FCB4C;'smiOutInternalLogic'
 006F55CB    mov         edx,6FC5B0;'OutFuncMenu'
 006F55D0    mov         eax,esi
 006F55D2    mov         edi,dword ptr [eax]
 006F55D4    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F55D7    mov         edx,dword ptr [ebp-224]
 006F55DD    mov         eax,dword ptr [ebx+5E4];TFXADMenuFrame.miOutIntLogic:TMenuItem
 006F55E3    call        TMenuItem.SetCaption
 006F55E8    push        6FCB80;'E - External Logic Output'
 006F55ED    lea         eax,[ebp-228]
 006F55F3    push        eax
 006F55F4    mov         ecx,6FCBC0;'smiOutExternalLogic'
 006F55F9    mov         edx,6FC5B0;'OutFuncMenu'
 006F55FE    mov         eax,esi
 006F5600    mov         edi,dword ptr [eax]
 006F5602    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5605    mov         edx,dword ptr [ebp-228]
 006F560B    mov         eax,dword ptr [ebx+5E8];TFXADMenuFrame.miOutExtLogic:TMenuItem
 006F5611    call        TMenuItem.SetCaption
 006F5616    push        6FCBF4;'F - Delayed Fire Alarm Output'
 006F561B    lea         eax,[ebp-22C]
 006F5621    push        eax
 006F5622    mov         ecx,6FCC3C;'smiOutDelFireAlarm'
 006F5627    mov         edx,6FC5B0;'OutFuncMenu'
 006F562C    mov         eax,esi
 006F562E    mov         edi,dword ptr [eax]
 006F5630    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5633    mov         edx,dword ptr [ebp-22C]
 006F5639    mov         eax,dword ptr [ebx+5EC];TFXADMenuFrame.miOutDelFireAlarm:TMenuItem
 006F563F    call        TMenuItem.SetCaption
 006F5644    push        6FCC70;'G - Fire Alarm Transmitter Activated LED Output'
 006F5649    lea         eax,[ebp-230]
 006F564F    push        eax
 006F5650    mov         ecx,6FCCDC;'smiOutFAREActivLED'
 006F5655    mov         edx,6FC5B0;'OutFuncMenu'
 006F565A    mov         eax,esi
 006F565C    mov         edi,dword ptr [eax]
 006F565E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5661    mov         edx,dword ptr [ebp-230]
 006F5667    mov         eax,dword ptr [ebx+5F0];TFXADMenuFrame.miOutFAREActivatedLED:TMenuItem
 006F566D    call        TMenuItem.SetCaption
 006F5672    push        6FCD10;'H - Voice Evacuation Activate output'
 006F5677    lea         eax,[ebp-234]
 006F567D    push        eax
 006F567E    mov         ecx,6FCD68;'smiOutVEActivate'
 006F5683    mov         edx,6FC5B0;'OutFuncMenu'
 006F5688    mov         eax,esi
 006F568A    mov         edi,dword ptr [eax]
 006F568C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F568F    mov         edx,dword ptr [ebp-234]
 006F5695    mov         eax,dword ptr [ebx+5A4];TFXADMenuFrame.miOutVEActivate:TMenuItem
 006F569B    call        TMenuItem.SetCaption
 006F56A0    push        6FCD98;'I - Voice Evacuation Test output'
 006F56A5    lea         eax,[ebp-238]
 006F56AB    push        eax
 006F56AC    mov         ecx,6FCDE8;'smiOutVETest'
 006F56B1    mov         edx,6FC5B0;'OutFuncMenu'
 006F56B6    mov         eax,esi
 006F56B8    mov         edi,dword ptr [eax]
 006F56BA    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F56BD    mov         edx,dword ptr [ebp-238]
 006F56C3    mov         eax,dword ptr [ebx+5A8];TFXADMenuFrame.miOutVETest:TMenuItem
 006F56C9    call        TMenuItem.SetCaption
 006F56CE    push        6FCE10;'J - Fire Alarm Devices Lev.1 Silenceable'
 006F56D3    lea         eax,[ebp-23C]
 006F56D9    push        eax
 006F56DA    mov         ecx,6FCE70;'smiOutFireAdL1Sil'
 006F56DF    mov         edx,6FC5B0;'OutFuncMenu'
 006F56E4    mov         eax,esi
 006F56E6    mov         edi,dword ptr [eax]
 006F56E8    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F56EB    mov         edx,dword ptr [ebp-23C]
 006F56F1    mov         eax,dword ptr [ebx+59C];TFXADMenuFrame.miOutFireADL1Sil:TMenuItem
 006F56F7    call        TMenuItem.SetCaption
 006F56FC    push        6FCEA0;'K - General Reset Output'
 006F5701    lea         eax,[ebp-240]
 006F5707    push        eax
 006F5708    mov         ecx,6FCEE0;'smiOutGeneralReset'
 006F570D    mov         edx,6FC5B0;'OutFuncMenu'
 006F5712    mov         eax,esi
 006F5714    mov         edi,dword ptr [eax]
 006F5716    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5719    mov         edx,dword ptr [ebp-240]
 006F571F    mov         eax,dword ptr [ebx+5C4];TFXADMenuFrame.miOutGeneralReset:TMenuItem
 006F5725    call        TMenuItem.SetCaption
 006F572A    push        6FCF14;'L - Zone Disabled Output'
 006F572F    lea         eax,[ebp-244]
 006F5735    push        eax
 006F5736    mov         ecx,6FCF54;'smiOutZoneDisabled'
 006F573B    mov         edx,6FC5B0;'OutFuncMenu'
 006F5740    mov         eax,esi
 006F5742    mov         edi,dword ptr [eax]
 006F5744    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5747    mov         edx,dword ptr [ebp-244]
 006F574D    mov         eax,dword ptr [ebx+5D8];TFXADMenuFrame.miOutZoneDisabled:TMenuItem
 006F5753    call        TMenuItem.SetCaption
 006F5758    push        6FCF88;'M - Delayed Alarm Enabled Output'
 006F575D    lea         eax,[ebp-248]
 006F5763    push        eax
 006F5764    mov         ecx,6FCFD8;'smiOutDelAlarmEnabled'
 006F5769    mov         edx,6FC5B0;'OutFuncMenu'
 006F576E    mov         eax,esi
 006F5770    mov         edi,dword ptr [eax]
 006F5772    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5775    mov         edx,dword ptr [ebp-248]
 006F577B    mov         eax,dword ptr [ebx+0B74];TFXADMenuFrame.miOutDelAlarmEnabled:TMenuItem
 006F5781    call        TMenuItem.SetCaption
 006F5786    push        6FD010;'N - Fire Router Disabled Output'
 006F578B    lea         eax,[ebp-24C]
 006F5791    push        eax
 006F5792    mov         ecx,6FD05C;'smiOutFireRouterDisabled'
 006F5797    mov         edx,6FC5B0;'OutFuncMenu'
 006F579C    mov         eax,esi
 006F579E    mov         edi,dword ptr [eax]
 006F57A0    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F57A3    mov         edx,dword ptr [ebp-24C]
 006F57A9    mov         eax,dword ptr [ebx+0B78];TFXADMenuFrame.miOutFireRouterDisabled:TMenuItem
 006F57AF    call        TMenuItem.SetCaption
 006F57B4    push        6FD09C;'O - Fault Router Disabled Output'
 006F57B9    lea         eax,[ebp-250]
 006F57BF    push        eax
 006F57C0    mov         ecx,6FD0EC;'smiOutFaultRouterDisabled'
 006F57C5    mov         edx,6FC5B0;'OutFuncMenu'
 006F57CA    mov         eax,esi
 006F57CC    mov         edi,dword ptr [eax]
 006F57CE    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F57D1    mov         edx,dword ptr [ebp-250]
 006F57D7    mov         eax,dword ptr [ebx+0B7C];TFXADMenuFrame.miOutFaultRouterDisabled:TMenuItem
 006F57DD    call        TMenuItem.SetCaption
 006F57E2    push        6FD12C;'P - Main Supply Fault Output'
 006F57E7    lea         eax,[ebp-254]
 006F57ED    push        eax
 006F57EE    mov         ecx,6FD174;'smiOutMainSupplyFault'
 006F57F3    mov         edx,6FC5B0;'OutFuncMenu'
 006F57F8    mov         eax,esi
 006F57FA    mov         edi,dword ptr [eax]
 006F57FC    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F57FF    mov         edx,dword ptr [ebp-254]
 006F5805    mov         eax,dword ptr [ebx+0B80];TFXADMenuFrame.miOutMainSupplyFault:TMenuItem
 006F580B    call        TMenuItem.SetCaption
 006F5810    push        6FD1AC;'Continuous'
 006F5815    lea         eax,[ebp-258]
 006F581B    push        eax
 006F581C    mov         ecx,6FD1D0;'smiSndContinuous'
 006F5821    mov         edx,6FD200;'SndModeMenu'
 006F5826    mov         eax,esi
 006F5828    mov         edi,dword ptr [eax]
 006F582A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F582D    mov         edx,dword ptr [ebp-258]
 006F5833    mov         eax,dword ptr [ebx+5F8];TFXADMenuFrame.miComSounderContinuous:TMenuItem
 006F5839    call        TMenuItem.SetCaption
 006F583E    push        6FD224;^TList<FXCommMgr.TCommTask>.GetEnumerator:TList<FXCommMgr.TCommTask>.TEnumerator
 006F5843    lea         eax,[ebp-25C]
 006F5849    push        eax
 006F584A    mov         ecx,6FD240;'smiSndPulsed'
 006F584F    mov         edx,6FD200;'SndModeMenu'
 006F5854    mov         eax,esi
 006F5856    mov         edi,dword ptr [eax]
 006F5858    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F585B    mov         edx,dword ptr [ebp-25C]
 006F5861    mov         eax,dword ptr [ebx+5FC];TFXADMenuFrame.miComSounderPulsed:TMenuItem
 006F5867    call        TMenuItem.SetCaption
 006F586C    push        6FD268;'Phased evacuation'
 006F5871    lea         eax,[ebp-260]
 006F5877    push        eax
 006F5878    mov         ecx,6FD298;'smiSndPhasedEvac'
 006F587D    mov         edx,6FD200;'SndModeMenu'
 006F5882    mov         eax,esi
 006F5884    mov         edi,dword ptr [eax]
 006F5886    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5889    mov         edx,dword ptr [ebp-260]
 006F588F    mov         eax,dword ptr [ebx+600];TFXADMenuFrame.miComSounderPhasedevac:TMenuItem
 006F5895    call        TMenuItem.SetCaption
 006F589A    push        6FD2C8;'By dipswitch'
 006F589F    lea         eax,[ebp-264]
 006F58A5    push        eax
 006F58A6    mov         ecx,6FD2F0;'smiSndByDipSwitch'
 006F58AB    mov         edx,6FD200;'SndModeMenu'
 006F58B0    mov         eax,esi
 006F58B2    mov         edi,dword ptr [eax]
 006F58B4    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F58B7    mov         edx,dword ptr [ebp-264]
 006F58BD    mov         eax,dword ptr [ebx+604];TFXADMenuFrame.miComSounderSwitch:TMenuItem
 006F58C3    call        TMenuItem.SetCaption
 006F58C8    push        6FD320;'Tone'
 006F58CD    lea         eax,[ebp-268]
 006F58D3    push        eax
 006F58D4    mov         ecx,6FD338;'smiSndrTone'
 006F58D9    mov         edx,6FD200;'SndModeMenu'
 006F58DE    mov         eax,esi
 006F58E0    mov         edi,dword ptr [eax]
 006F58E2    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F58E5    mov         edx,dword ptr [ebp-268]
 006F58EB    mov         eax,dword ptr [ebx+880];TFXADMenuFrame.miApoSndrTone:TMenuItem
 006F58F1    call        TMenuItem.SetCaption
 006F58F6    push        6FD268;'Phased evacuation'
 006F58FB    lea         eax,[ebp-26C]
 006F5901    push        eax
 006F5902    mov         ecx,6FD35C;'smiSndrTonePair'
 006F5907    mov         edx,6FD200;'SndModeMenu'
 006F590C    mov         eax,esi
 006F590E    mov         edi,dword ptr [eax]
 006F5910    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5913    mov         edx,dword ptr [ebp-26C]
 006F5919    mov         eax,dword ptr [ebx+884];TFXADMenuFrame.miApoSndrTonePair:TMenuItem
 006F591F    call        TMenuItem.SetCaption
 006F5924    push        6FD320;'Tone'
 006F5929    lea         eax,[ebp-270]
 006F592F    push        eax
 006F5930    mov         ecx,6FD388;'smiSapSndrTone'
 006F5935    mov         edx,6FD200;'SndModeMenu'
 006F593A    mov         eax,esi
 006F593C    mov         edi,dword ptr [eax]
 006F593E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5941    mov         edx,dword ptr [ebp-270]
 006F5947    mov         eax,dword ptr [ebx+960];TFXADMenuFrame.miSapSndrTone:TMenuItem
 006F594D    call        TMenuItem.SetCaption
 006F5952    push        6FD268;'Phased evacuation'
 006F5957    lea         eax,[ebp-274]
 006F595D    push        eax
 006F595E    mov         ecx,6FD3B4;'smiSapSndrTonePair'
 006F5963    mov         edx,6FD200;'SndModeMenu'
 006F5968    mov         eax,esi
 006F596A    mov         edi,dword ptr [eax]
 006F596C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F596F    mov         edx,dword ptr [ebp-274]
 006F5975    mov         eax,dword ptr [ebx+9E4];TFXADMenuFrame.miSapSndrTonePair:TMenuItem
 006F597B    call        TMenuItem.SetCaption
 006F5980    push        6FD3E8;'1 - Primary  1, T1	Apollo Evacuation Tone, 550Hz for 0.5s, 825Hz for 0.5s'
 006F5985    lea         eax,[ebp-278]
 006F598B    push        eax
 006F598C    mov         ecx,6FD488;'smiPrimTone01'
 006F5991    mov         edx,6FD4B0;'SndToneMenu'
 006F5996    mov         eax,esi
 006F5998    mov         edi,dword ptr [eax]
 006F599A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F599D    mov         edx,dword ptr [ebp-278]
 006F59A3    mov         eax,dword ptr [ebx+888];TFXADMenuFrame.miPrimTone01:TMenuItem
 006F59A9    call        TMenuItem.SetCaption
 006F59AE    push        6FD4D4;'2 - Primary  2, T12	Alternating - (Hochiki & Fulleon), 925Hz for 0.25s, 626Hz fo...
 006F59B3    lea         eax,[ebp-27C]
 006F59B9    push        eax
 006F59BA    mov         ecx,6FD590;'smiPrimTone02'
 006F59BF    mov         edx,6FD4B0;'SndToneMenu'
 006F59C4    mov         eax,esi
 006F59C6    mov         edi,dword ptr [eax]
 006F59C8    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F59CB    mov         edx,dword ptr [ebp-27C]
 006F59D1    mov         eax,dword ptr [ebx+88C];TFXADMenuFrame.miPrimTone02:TMenuItem
 006F59D7    call        TMenuItem.SetCaption
 006F59DC    push        6FD5B8;'3 - Primary  3, T14	Medium Sweep, 800Hz to 970Hz at 1Hz'
 006F59E1    lea         eax,[ebp-280]
 006F59E7    push        eax
 006F59E8    mov         ecx,6FD634;'smiPrimTone03'
 006F59ED    mov         edx,6FD4B0;'SndToneMenu'
 006F59F2    mov         eax,esi
 006F59F4    mov         edi,dword ptr [eax]
 006F59F6    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F59F9    mov         edx,dword ptr [ebp-280]
 006F59FF    mov         eax,dword ptr [ebx+890];TFXADMenuFrame.miPrimTone03:TMenuItem
 006F5A05    call        TMenuItem.SetCaption
 006F5A0A    push        6FD65C;'4 - Primary  4, T16	Fast Sweep, 2500Hz -2850Hz at 9Hz'
 006F5A0F    lea         eax,[ebp-284]
 006F5A15    push        eax
 006F5A16    mov         ecx,6FD6D4;'smiPrimTone04'
 006F5A1B    mov         edx,6FD4B0;'SndToneMenu'
 006F5A20    mov         eax,esi
 006F5A22    mov         edi,dword ptr [eax]
 006F5A24    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5A27    mov         edx,dword ptr [ebp-284]
 006F5A2D    mov         eax,dword ptr [ebx+894];TFXADMenuFrame.miPrimTone04:TMenuItem
 006F5A33    call        TMenuItem.SetCaption
 006F5A38    push        6FD6FC;'5 - Primary  5, T3	Dutch Slow Whoop (sweep), 500Hz - 1200Hz for 3.5s, 0.5s off'
 006F5A3D    lea         eax,[ebp-288]
 006F5A43    push        eax
 006F5A44    mov         ecx,6FD7A8;'smiPrimTone05'
 006F5A49    mov         edx,6FD4B0;'SndToneMenu'
 006F5A4E    mov         eax,esi
 006F5A50    mov         edi,dword ptr [eax]
 006F5A52    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5A55    mov         edx,dword ptr [ebp-288]
 006F5A5B    mov         eax,dword ptr [ebx+898];TFXADMenuFrame.miPrimTone05:TMenuItem
 006F5A61    call        TMenuItem.SetCaption
 006F5A66    push        6FD7D0;'6 - Primary  6, T4	DIN Tone (sweep), 1200Hz - 500Hz for 1s'
 006F5A6B    lea         eax,[ebp-28C]
 006F5A71    push        eax
 006F5A72    mov         ecx,6FD854;'smiPrimTone06'
 006F5A77    mov         edx,6FD4B0;'SndToneMenu'
 006F5A7C    mov         eax,esi
 006F5A7E    mov         edi,dword ptr [eax]
 006F5A80    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5A83    mov         edx,dword ptr [ebp-28C]
 006F5A89    mov         eax,dword ptr [ebx+89C];TFXADMenuFrame.miPrimTone06:TMenuItem
 006F5A8F    call        TMenuItem.SetCaption
 006F5A94    push        6FD87C;'7 - Primary  7, T18	Swedish Fire Tone, 660Hz, 150ms on, 150ms off'
 006F5A99    lea         eax,[ebp-290]
 006F5A9F    push        eax
 006F5AA0    mov         ecx,6FD90C;'smiPrimTone07'
 006F5AA5    mov         edx,6FD4B0;'SndToneMenu'
 006F5AAA    mov         eax,esi
 006F5AAC    mov         edi,dword ptr [eax]
 006F5AAE    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5AB1    mov         edx,dword ptr [ebp-290]
 006F5AB7    mov         eax,dword ptr [ebx+8A0];TFXADMenuFrame.miPrimTone07:TMenuItem
 006F5ABD    call        TMenuItem.SetCaption
 006F5AC2    push        6FD934;'8 - Primary  8, T6	Aus (fast rise sweep), 3x (500Hz - 1200Hz for 0.5s), 0.5s off...
 006F5AC7    lea         eax,[ebp-294]
 006F5ACD    push        eax
 006F5ACE    mov         ecx,6FD9E4;'smiPrimTone08'
 006F5AD3    mov         edx,6FD4B0;'SndToneMenu'
 006F5AD8    mov         eax,esi
 006F5ADA    mov         edi,dword ptr [eax]
 006F5ADC    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5ADF    mov         edx,dword ptr [ebp-294]
 006F5AE5    mov         eax,dword ptr [ebx+8A4];TFXADMenuFrame.miPrimTone08:TMenuItem
 006F5AEB    call        TMenuItem.SetCaption
 006F5AF0    push        6FDA0C;'9 - Primary  9, T7	NZ (slow rise sweep), 500Hz - 1200Hz for 3.75s, 0.25s off'
 006F5AF5    lea         eax,[ebp-298]
 006F5AFB    push        eax
 006F5AFC    mov         ecx,6FDAB4;'smiPrimTone09'
 006F5B01    mov         edx,6FD4B0;'SndToneMenu'
 006F5B06    mov         eax,esi
 006F5B08    mov         edi,dword ptr [eax]
 006F5B0A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5B0D    mov         edx,dword ptr [ebp-298]
 006F5B13    mov         eax,dword ptr [ebx+8A8];TFXADMenuFrame.miPrimTone09:TMenuItem
 006F5B19    call        TMenuItem.SetCaption
 006F5B1E    push        6FDADC;'A - Primary 10, T19	US Temporal LF (ISO 8201), 3x (970Hz, 0.5s on, 0.5s off), 1s...
 006F5B23    lea         eax,[ebp-29C]
 006F5B29    push        eax
 006F5B2A    mov         ecx,6FDB94;'smiPrimTone10'
 006F5B2F    mov         edx,6FD4B0;'SndToneMenu'
 006F5B34    mov         eax,esi
 006F5B36    mov         edi,dword ptr [eax]
 006F5B38    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5B3B    mov         edx,dword ptr [ebp-29C]
 006F5B41    mov         eax,dword ptr [ebx+8AC];TFXADMenuFrame.miPrimTone10:TMenuItem
 006F5B47    call        TMenuItem.SetCaption
 006F5B4C    push        6FDBBC;'B - Primary 11, T20	US Temporal HF (ISO 8201), 3x (2850Hz, 0.5s on, 0.5s off), 1...
 006F5B51    lea         eax,[ebp-2A0]
 006F5B57    push        eax
 006F5B58    mov         ecx,6FDC74;'smiPrimTone11'
 006F5B5D    mov         edx,6FD4B0;'SndToneMenu'
 006F5B62    mov         eax,esi
 006F5B64    mov         edi,dword ptr [eax]
 006F5B66    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5B69    mov         edx,dword ptr [ebp-2A0]
 006F5B6F    mov         eax,dword ptr [ebx+8B0];TFXADMenuFrame.miPrimTone11:TMenuItem
 006F5B75    call        TMenuItem.SetCaption
 006F5B7A    push        6FDC9C;'C - Primary 12, T8	Simulated Bell - Continuous'
 006F5B7F    lea         eax,[ebp-2A4]
 006F5B85    push        eax
 006F5B86    mov         ecx,6FDD08;'smiPrimTone12'
 006F5B8B    mov         edx,6FD4B0;'SndToneMenu'
 006F5B90    mov         eax,esi
 006F5B92    mov         edi,dword ptr [eax]
 006F5B94    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5B97    mov         edx,dword ptr [ebp-2A4]
 006F5B9D    mov         eax,dword ptr [ebx+8B4];TFXADMenuFrame.miPrimTone12:TMenuItem
 006F5BA3    call        TMenuItem.SetCaption
 006F5BA8    push        6FDD30;'D - Primary 13, T10	Emergency Warning Siren'
 006F5BAD    lea         eax,[ebp-2A8]
 006F5BB3    push        eax
 006F5BB4    mov         ecx,6FDD94;'smiPrimTone13'
 006F5BB9    mov         edx,6FD4B0;'SndToneMenu'
 006F5BBE    mov         eax,esi
 006F5BC0    mov         edi,dword ptr [eax]
 006F5BC2    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5BC5    mov         edx,dword ptr [ebp-2A8]
 006F5BCB    mov         eax,dword ptr [ebx+8B8];TFXADMenuFrame.miPrimTone13:TMenuItem
 006F5BD1    call        TMenuItem.SetCaption
 006F5BD6    push        6FDDBC;'E - Primary 14, T13	Continuous, 970Hz'
 006F5BDB    lea         eax,[ebp-2AC]
 006F5BE1    push        eax
 006F5BE2    mov         ecx,6FDE14;'smiPrimTone14'
 006F5BE7    mov         edx,6FD4B0;'SndToneMenu'
 006F5BEC    mov         eax,esi
 006F5BEE    mov         edi,dword ptr [eax]
 006F5BF0    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5BF3    mov         edx,dword ptr [ebp-2AC]
 006F5BF9    mov         eax,dword ptr [ebx+8BC];TFXADMenuFrame.miPrimTone14:TMenuItem
 006F5BFF    call        TMenuItem.SetCaption
 006F5C04    push        6FDE3C;'F - Primary 15, T1	Apollo Evacuation Tone, 550Hz for 0.5s, 825Hz for 0.5s'
 006F5C09    lea         eax,[ebp-2B0]
 006F5C0F    push        eax
 006F5C10    mov         ecx,6FDEDC;'smiPrimTone15'
 006F5C15    mov         edx,6FD4B0;'SndToneMenu'
 006F5C1A    mov         eax,esi
 006F5C1C    mov         edi,dword ptr [eax]
 006F5C1E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5C21    mov         edx,dword ptr [ebp-2B0]
 006F5C27    mov         eax,dword ptr [ebx+8C0];TFXADMenuFrame.miPrimTone15:TMenuItem
 006F5C2D    call        TMenuItem.SetCaption
 006F5C32    push        6FDF04;'G - Secondary  1, T0	Apollo Alert Tone, 1s off, 825Hz for 1s'
 006F5C37    lea         eax,[ebp-2B4]
 006F5C3D    push        eax
 006F5C3E    mov         ecx,6FDF8C;'smiSecTone01'
 006F5C43    mov         edx,6FD4B0;'SndToneMenu'
 006F5C48    mov         eax,esi
 006F5C4A    mov         edi,dword ptr [eax]
 006F5C4C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5C4F    mov         edx,dword ptr [ebp-2B4]
 006F5C55    mov         eax,dword ptr [ebx+8C4];TFXADMenuFrame.miSecTone01:TMenuItem
 006F5C5B    call        TMenuItem.SetCaption
 006F5C60    push        6FDFB4;'H - Secondary  2, T11	Continuous (Hochiki & Fulleon), 925Hz'
 006F5C65    lea         eax,[ebp-2B8]
 006F5C6B    push        eax
 006F5C6C    mov         ecx,6FE038;'smiSecTone02'
 006F5C71    mov         edx,6FD4B0;'SndToneMenu'
 006F5C76    mov         eax,esi
 006F5C78    mov         edi,dword ptr [eax]
 006F5C7A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5C7D    mov         edx,dword ptr [ebp-2B8]
 006F5C83    mov         eax,dword ptr [ebx+8C8];TFXADMenuFrame.miSecTone02:TMenuItem
 006F5C89    call        TMenuItem.SetCaption
 006F5C8E    push        6FE060;'I - Secondary  3, T13	Continuous, 970Hz'
 006F5C93    lea         eax,[ebp-2BC]
 006F5C99    push        eax
 006F5C9A    mov         ecx,6FE0BC;'smiSecTone03'
 006F5C9F    mov         edx,6FD4B0;'SndToneMenu'
 006F5CA4    mov         eax,esi
 006F5CA6    mov         edi,dword ptr [eax]
 006F5CA8    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5CAB    mov         edx,dword ptr [ebp-2BC]
 006F5CB1    mov         eax,dword ptr [ebx+8CC];TFXADMenuFrame.miSecTone03:TMenuItem
 006F5CB7    call        TMenuItem.SetCaption
 006F5CBC    push        6FE0E4;'J - Secondary  4, T15	Continuous, 2850Hz'
 006F5CC1    lea         eax,[ebp-2C0]
 006F5CC7    push        eax
 006F5CC8    mov         ecx,6FE144;'smiSecTone04'
 006F5CCD    mov         edx,6FD4B0;'SndToneMenu'
 006F5CD2    mov         eax,esi
 006F5CD4    mov         edi,dword ptr [eax]
 006F5CD6    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5CD9    mov         edx,dword ptr [ebp-2C0]
 006F5CDF    mov         eax,dword ptr [ebx+8D0];TFXADMenuFrame.miSecTone04:TMenuItem
 006F5CE5    call        TMenuItem.SetCaption
 006F5CEA    push        6FE16C;'K - Secondary  5, T2	Continuous, 825Hz'
 006F5CEF    lea         eax,[ebp-2C4]
 006F5CF5    push        eax
 006F5CF6    mov         ecx,6FE1C8;'smiSecTone05'
 006F5CFB    mov         edx,6FD4B0;'SndToneMenu'
 006F5D00    mov         eax,esi
 006F5D02    mov         edi,dword ptr [eax]
 006F5D04    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5D07    mov         edx,dword ptr [ebp-2C4]
 006F5D0D    mov         eax,dword ptr [ebx+8D4];TFXADMenuFrame.miSecTone05:TMenuItem
 006F5D13    call        TMenuItem.SetCaption
 006F5D18    push        6FE1F0;'L - Secondary  6, T2	Continuous, 825Hz'
 006F5D1D    lea         eax,[ebp-2C8]
 006F5D23    push        eax
 006F5D24    mov         ecx,6FE24C;'smiSecTone06'
 006F5D29    mov         edx,6FD4B0;'SndToneMenu'
 006F5D2E    mov         eax,esi
 006F5D30    mov         edi,dword ptr [eax]
 006F5D32    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5D35    mov         edx,dword ptr [ebp-2C8]
 006F5D3B    mov         eax,dword ptr [ebx+8D8];TFXADMenuFrame.miSecTone06:TMenuItem
 006F5D41    call        TMenuItem.SetCaption
 006F5D46    push        6FE274;'M - Secondary  7, T17	[Swedish all clear signal - ]Continuous, 660Hz'
 006F5D4B    lea         eax,[ebp-2CC]
 006F5D51    push        eax
 006F5D52    mov         ecx,6FE30C;'smiSecTone07'
 006F5D57    mov         edx,6FD4B0;'SndToneMenu'
 006F5D5C    mov         eax,esi
 006F5D5E    mov         edi,dword ptr [eax]
 006F5D60    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5D63    mov         edx,dword ptr [ebp-2CC]
 006F5D69    mov         eax,dword ptr [ebx+8DC];TFXADMenuFrame.miSecTone07:TMenuItem
 006F5D6F    call        TMenuItem.SetCaption
 006F5D74    push        6FE334;'N - Secondary  8, T5	Aus Alert Tone, 420Hz, 0.625s, 0.625s off'
 006F5D79    lea         eax,[ebp-2D0]
 006F5D7F    push        eax
 006F5D80    mov         ecx,6FE3C0;'smiSecTone08'
 006F5D85    mov         edx,6FD4B0;'SndToneMenu'
 006F5D8A    mov         eax,esi
 006F5D8C    mov         edi,dword ptr [eax]
 006F5D8E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5D91    mov         edx,dword ptr [ebp-2D0]
 006F5D97    mov         eax,dword ptr [ebx+8E0];TFXADMenuFrame.miSecTone08:TMenuItem
 006F5D9D    call        TMenuItem.SetCaption
 006F5DA2    push        6FE3E8;'O - Secondary  9, T5	NZ Alert Tone, 420Hz, 0.625s, 0.625s off'
 006F5DA7    lea         eax,[ebp-2D4]
 006F5DAD    push        eax
 006F5DAE    mov         ecx,6FE470;'smiSecTone09'
 006F5DB3    mov         edx,6FD4B0;'SndToneMenu'
 006F5DB8    mov         eax,esi
 006F5DBA    mov         edi,dword ptr [eax]
 006F5DBC    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5DBF    mov         edx,dword ptr [ebp-2D4]
 006F5DC5    mov         eax,dword ptr [ebx+8E4];TFXADMenuFrame.miSecTone09:TMenuItem
 006F5DCB    call        TMenuItem.SetCaption
 006F5DD0    push        6FE498;'P - Secondary 10, T13	Continuous, 970Hz'
 006F5DD5    lea         eax,[ebp-2D8]
 006F5DDB    push        eax
 006F5DDC    mov         ecx,6FE4F4;'smiSecTone10'
 006F5DE1    mov         edx,6FD4B0;'SndToneMenu'
 006F5DE6    mov         eax,esi
 006F5DE8    mov         edi,dword ptr [eax]
 006F5DEA    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5DED    mov         edx,dword ptr [ebp-2D8]
 006F5DF3    mov         eax,dword ptr [ebx+8E8];TFXADMenuFrame.miSecTone10:TMenuItem
 006F5DF9    call        TMenuItem.SetCaption
 006F5DFE    push        6FE51C;'Q - Secondary 11, T15	Continuous, 2850Hz'
 006F5E03    lea         eax,[ebp-2DC]
 006F5E09    push        eax
 006F5E0A    mov         ecx,6FE57C;'smiSecTone11'
 006F5E0F    mov         edx,6FD4B0;'SndToneMenu'
 006F5E14    mov         eax,esi
 006F5E16    mov         edi,dword ptr [eax]
 006F5E18    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5E1B    mov         edx,dword ptr [ebp-2DC]
 006F5E21    mov         eax,dword ptr [ebx+8EC];TFXADMenuFrame.miSecTone11:TMenuItem
 006F5E27    call        TMenuItem.SetCaption
 006F5E2C    push        6FE5A4;'R - Secondary 12, T9	Simulated Bell - Intermittent, 1s off, 1s on'
 006F5E31    lea         eax,[ebp-2E0]
 006F5E37    push        eax
 006F5E38    mov         ecx,6FE634;'smiSecTone12'
 006F5E3D    mov         edx,6FD4B0;'SndToneMenu'
 006F5E42    mov         eax,esi
 006F5E44    mov         edi,dword ptr [eax]
 006F5E46    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5E49    mov         edx,dword ptr [ebp-2E0]
 006F5E4F    mov         eax,dword ptr [ebx+8F0];TFXADMenuFrame.miSecTone12:TMenuItem
 006F5E55    call        TMenuItem.SetCaption
 006F5E5A    push        6FE65C;'S - Secondary 13, T22	Emergency Warning Siren (All Clear)'
 006F5E5F    lea         eax,[ebp-2E4]
 006F5E65    push        eax
 006F5E66    mov         ecx,6FE6DC;'smiSecTone13'
 006F5E6B    mov         edx,6FD4B0;'SndToneMenu'
 006F5E70    mov         eax,esi
 006F5E72    mov         edi,dword ptr [eax]
 006F5E74    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5E77    mov         edx,dword ptr [ebp-2E4]
 006F5E7D    mov         eax,dword ptr [ebx+8F4];TFXADMenuFrame.miSecTone13:TMenuItem
 006F5E83    call        TMenuItem.SetCaption
 006F5E88    push        6FE704;'T - Secondary 14, T21	Pulsed at 1s off, 1s on, 970Hz'
 006F5E8D    lea         eax,[ebp-2E8]
 006F5E93    push        eax
 006F5E94    mov         ecx,6FE77C;'smiSecTone14'
 006F5E99    mov         edx,6FD4B0;'SndToneMenu'
 006F5E9E    mov         eax,esi
 006F5EA0    mov         edi,dword ptr [eax]
 006F5EA2    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5EA5    mov         edx,dword ptr [ebp-2E8]
 006F5EAB    mov         eax,dword ptr [ebx+8F8];TFXADMenuFrame.miSecTone14:TMenuItem
 006F5EB1    call        TMenuItem.SetCaption
 006F5EB6    push        6FE7A4;'U - Secondary 15, T0	Apollo Alert Tone, 1s off, 825Hz for 1s'
 006F5EBB    lea         eax,[ebp-2EC]
 006F5EC1    push        eax
 006F5EC2    mov         ecx,6FE82C;'smiSecTone15'
 006F5EC7    mov         edx,6FD4B0;'SndToneMenu'
 006F5ECC    mov         eax,esi
 006F5ECE    mov         edi,dword ptr [eax]
 006F5ED0    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5ED3    mov         edx,dword ptr [ebp-2EC]
 006F5ED9    mov         eax,dword ptr [ebx+8FC];TFXADMenuFrame.miSecTone15:TMenuItem
 006F5EDF    call        TMenuItem.SetCaption
 006F5EE4    push        6FE854;'1 - Primary T1  Apollo Evacuation Tone, 550Hz for 0.5s, 825Hz for 0.5s; 	Seconda...
 006F5EE9    lea         eax,[ebp-2F0]
 006F5EEF    push        eax
 006F5EF0    mov         ecx,6FE960;'smiTonePair01'
 006F5EF5    mov         edx,6FD4B0;'SndToneMenu'
 006F5EFA    mov         eax,esi
 006F5EFC    mov         edi,dword ptr [eax]
 006F5EFE    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5F01    mov         edx,dword ptr [ebp-2F0]
 006F5F07    mov         eax,dword ptr [ebx+900];TFXADMenuFrame.miTonepair01:TMenuItem
 006F5F0D    call        TMenuItem.SetCaption
 006F5F12    push        6FE988;'2 - Primary T12 Alternating - (Hochiki & Fulleon), 925Hz for 0.25s, 626Hz for 0....
 006F5F17    lea         eax,[ebp-2F4]
 006F5F1D    push        eax
 006F5F1E    mov         ecx,6FEAA8;'smiTonePair02'
 006F5F23    mov         edx,6FD4B0;'SndToneMenu'
 006F5F28    mov         eax,esi
 006F5F2A    mov         edi,dword ptr [eax]
 006F5F2C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5F2F    mov         edx,dword ptr [ebp-2F4]
 006F5F35    mov         eax,dword ptr [ebx+904];TFXADMenuFrame.miTonepair02:TMenuItem
 006F5F3B    call        TMenuItem.SetCaption
 006F5F40    push        6FEAD0;'3 - Primary T14 Medium Sweep, 800Hz to 970Hz at 1Hz; 	Secondary T13 Continuous, ...
 006F5F45    lea         eax,[ebp-2F8]
 006F5F4B    push        eax
 006F5F4C    mov         ecx,6FEB88;'smiTonePair03'
 006F5F51    mov         edx,6FD4B0;'SndToneMenu'
 006F5F56    mov         eax,esi
 006F5F58    mov         edi,dword ptr [eax]
 006F5F5A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5F5D    mov         edx,dword ptr [ebp-2F8]
 006F5F63    mov         eax,dword ptr [ebx+908];TFXADMenuFrame.miTonepair03:TMenuItem
 006F5F69    call        TMenuItem.SetCaption
 006F5F6E    push        6FEBB0;'4 - Primary T16 Fast Sweep, 2500Hz -2850Hz at 9Hz; 	Secondary T15 Continuous, 28...
 006F5F73    lea         eax,[ebp-2FC]
 006F5F79    push        eax
 006F5F7A    mov         ecx,6FEC68;'smiTonePair04'
 006F5F7F    mov         edx,6FD4B0;'SndToneMenu'
 006F5F84    mov         eax,esi
 006F5F86    mov         edi,dword ptr [eax]
 006F5F88    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5F8B    mov         edx,dword ptr [ebp-2FC]
 006F5F91    mov         eax,dword ptr [ebx+90C];TFXADMenuFrame.miTonepair04:TMenuItem
 006F5F97    call        TMenuItem.SetCaption
 006F5F9C    push        6FEC90;'5 - Primary T3  Dutch Slow Whoop (sweep), 500Hz - 1200Hz for 3.5s, 0.5s off; 	Se...
 006F5FA1    lea         eax,[ebp-300]
 006F5FA7    push        eax
 006F5FA8    mov         ecx,6FED78;'smiTonePair05'
 006F5FAD    mov         edx,6FD4B0;'SndToneMenu'
 006F5FB2    mov         eax,esi
 006F5FB4    mov         edi,dword ptr [eax]
 006F5FB6    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5FB9    mov         edx,dword ptr [ebp-300]
 006F5FBF    mov         eax,dword ptr [ebx+910];TFXADMenuFrame.miTonepair05:TMenuItem
 006F5FC5    call        TMenuItem.SetCaption
 006F5FCA    push        6FEDA0;'6 - Primary T4  DIN Tone (sweep), 1200Hz - 500Hz for 1s; 	Secondary T2  Continuo...
 006F5FCF    lea         eax,[ebp-304]
 006F5FD5    push        eax
 006F5FD6    mov         ecx,6FEE60;'smiTonePair06'
 006F5FDB    mov         edx,6FD4B0;'SndToneMenu'
 006F5FE0    mov         eax,esi
 006F5FE2    mov         edi,dword ptr [eax]
 006F5FE4    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F5FE7    mov         edx,dword ptr [ebp-304]
 006F5FED    mov         eax,dword ptr [ebx+914];TFXADMenuFrame.miTonepair06:TMenuItem
 006F5FF3    call        TMenuItem.SetCaption
 006F5FF8    push        6FEE88;'7 - Primary T18 Swedish Fire Tone, 660Hz, 150ms on, 150ms off; 	Secondary T17 Sw...
 006F5FFD    lea         eax,[ebp-308]
 006F6003    push        eax
 006F6004    mov         ecx,6FEF8C;'smiTonePair07'
 006F6009    mov         edx,6FD4B0;'SndToneMenu'
 006F600E    mov         eax,esi
 006F6010    mov         edi,dword ptr [eax]
 006F6012    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6015    mov         edx,dword ptr [ebp-308]
 006F601B    mov         eax,dword ptr [ebx+918];TFXADMenuFrame.miTonepair07:TMenuItem
 006F6021    call        TMenuItem.SetCaption
 006F6026    push        6FEFB4;'8 - Primary T6  Aus (fast rise sweep), 3x (500Hz - 1200Hz for 0.5s), 0.5s off; 	...
 006F602B    lea         eax,[ebp-30C]
 006F6031    push        eax
 006F6032    mov         ecx,6FF0D0;'smiTonePair08'
 006F6037    mov         edx,6FD4B0;'SndToneMenu'
 006F603C    mov         eax,esi
 006F603E    mov         edi,dword ptr [eax]
 006F6040    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6043    mov         edx,dword ptr [ebp-30C]
 006F6049    mov         eax,dword ptr [ebx+91C];TFXADMenuFrame.miTonepair08:TMenuItem
 006F604F    call        TMenuItem.SetCaption
 006F6054    push        6FF0F8;'9 - Primary T7  NZ (slow rise sweep), 500Hz - 1200Hz for 3.75s, 0.25s off; 	Seco...
 006F6059    lea         eax,[ebp-310]
 006F605F    push        eax
 006F6060    mov         ecx,6FF20C;'smiTonePair09'
 006F6065    mov         edx,6FD4B0;'SndToneMenu'
 006F606A    mov         eax,esi
 006F606C    mov         edi,dword ptr [eax]
 006F606E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6071    mov         edx,dword ptr [ebp-310]
 006F6077    mov         eax,dword ptr [ebx+920];TFXADMenuFrame.miTonepair09:TMenuItem
 006F607D    call        TMenuItem.SetCaption
 006F6082    push        6FF234;'A - Primary T19 US Temporal LF (ISO 8201), 3x (970Hz, 0.5s on, 0.5s off), 1s off...
 006F6087    lea         eax,[ebp-314]
 006F608D    push        eax
 006F608E    mov         ecx,6FF328;'smiTonePair10'
 006F6093    mov         edx,6FD4B0;'SndToneMenu'
 006F6098    mov         eax,esi
 006F609A    mov         edi,dword ptr [eax]
 006F609C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F609F    mov         edx,dword ptr [ebp-314]
 006F60A5    mov         eax,dword ptr [ebx+924];TFXADMenuFrame.miTonepair10:TMenuItem
 006F60AB    call        TMenuItem.SetCaption
 006F60B0    push        6FF350;'B - Primary T20 US Temporal HF (ISO 8201), 3x (2850Hz, 0.5s on, 0.5s off), 1s of...
 006F60B5    lea         eax,[ebp-318]
 006F60BB    push        eax
 006F60BC    mov         ecx,6FF448;'smiTonePair11'
 006F60C1    mov         edx,6FD4B0;'SndToneMenu'
 006F60C6    mov         eax,esi
 006F60C8    mov         edi,dword ptr [eax]
 006F60CA    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F60CD    mov         edx,dword ptr [ebp-318]
 006F60D3    mov         eax,dword ptr [ebx+928];TFXADMenuFrame.miTonepair11:TMenuItem
 006F60D9    call        TMenuItem.SetCaption
 006F60DE    push        6FF470;'C - Primary T8  Simulated Bell - Continuous; 	Secondary T9  Simulated Bell - Int...
 006F60E3    lea         eax,[ebp-31C]
 006F60E9    push        eax
 006F60EA    mov         ecx,6FF550;'smiTonePair12'
 006F60EF    mov         edx,6FD4B0;'SndToneMenu'
 006F60F4    mov         eax,esi
 006F60F6    mov         edi,dword ptr [eax]
 006F60F8    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F60FB    mov         edx,dword ptr [ebp-31C]
 006F6101    mov         eax,dword ptr [ebx+92C];TFXADMenuFrame.miTonepair12:TMenuItem
 006F6107    call        TMenuItem.SetCaption
 006F610C    push        6FF578;'D - Primary T10 Emergency Warning Siren; 	Secondary T22 Emergency Warning Siren ...
 006F6111    lea         eax,[ebp-320]
 006F6117    push        eax
 006F6118    mov         ecx,6FF63C;'smiTonePair13'
 006F611D    mov         edx,6FD4B0;'SndToneMenu'
 006F6122    mov         eax,esi
 006F6124    mov         edi,dword ptr [eax]
 006F6126    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6129    mov         edx,dword ptr [ebp-320]
 006F612F    mov         eax,dword ptr [ebx+930];TFXADMenuFrame.miTonepair13:TMenuItem
 006F6135    call        TMenuItem.SetCaption
 006F613A    push        6FF664;'E - Primary T13 Continuous, 970Hz; 	Secondary T21 Pulsed at 1s off, 1s on, 970Hz...
 006F613F    lea         eax,[ebp-324]
 006F6145    push        eax
 006F6146    mov         ecx,6FF714;'smiTonePair14'
 006F614B    mov         edx,6FD4B0;'SndToneMenu'
 006F6150    mov         eax,esi
 006F6152    mov         edi,dword ptr [eax]
 006F6154    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6157    mov         edx,dword ptr [ebp-324]
 006F615D    mov         eax,dword ptr [ebx+934];TFXADMenuFrame.miTonepair14:TMenuItem
 006F6163    call        TMenuItem.SetCaption
 006F6168    push        6FF73C;'F - Primary T1  Apollo Evacuation Tone, 550Hz for 0.5s, 825Hz for 0.5s; 	Seconda...
 006F616D    lea         eax,[ebp-328]
 006F6173    push        eax
 006F6174    mov         ecx,6FF848;'smiTonePair15'
 006F6179    mov         edx,6FD4B0;'SndToneMenu'
 006F617E    mov         eax,esi
 006F6180    mov         edi,dword ptr [eax]
 006F6182    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6185    mov         edx,dword ptr [ebp-328]
 006F618B    mov         eax,dword ptr [ebx+938];TFXADMenuFrame.miTonepair15:TMenuItem
 006F6191    call        TMenuItem.SetCaption
 006F6196    push        6FF870;'Tone 01, Alternating,  554/ 440 Hz, 100ms/400ms'
 006F619B    lea         eax,[ebp-32C]
 006F61A1    push        eax
 006F61A2    mov         ecx,6FF8DC;'smiSapTone01'
 006F61A7    mov         edx,6FF904;'SapToneMenu'
 006F61AC    mov         eax,esi
 006F61AE    mov         edi,dword ptr [eax]
 006F61B0    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F61B3    mov         edx,dword ptr [ebp-32C]
 006F61B9    mov         eax,dword ptr [ebx+964];TFXADMenuFrame.miSapTone01:TMenuItem
 006F61BF    call        TMenuItem.SetCaption
 006F61C4    push        6FF928;'Tone 02, Alternating,  800/ 970 Hz, 500ms/500ms'
 006F61C9    lea         eax,[ebp-330]
 006F61CF    push        eax
 006F61D0    mov         ecx,6FF994;'smiSapTone02'
 006F61D5    mov         edx,6FF904;'SapToneMenu'
 006F61DA    mov         eax,esi
 006F61DC    mov         edi,dword ptr [eax]
 006F61DE    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F61E1    mov         edx,dword ptr [ebp-330]
 006F61E7    mov         eax,dword ptr [ebx+968];TFXADMenuFrame.miSapTone02:TMenuItem
 006F61ED    call        TMenuItem.SetCaption
 006F61F2    push        6FF9BC;'Tone 03, Alternating,  800/ 970 Hz, 250ms/250ms'
 006F61F7    lea         eax,[ebp-334]
 006F61FD    push        eax
 006F61FE    mov         ecx,6FFA28;'smiSapTone03'
 006F6203    mov         edx,6FF904;'SapToneMenu'
 006F6208    mov         eax,esi
 006F620A    mov         edi,dword ptr [eax]
 006F620C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F620F    mov         edx,dword ptr [ebp-334]
 006F6215    mov         eax,dword ptr [ebx+96C];TFXADMenuFrame.miSapTone03:TMenuItem
 006F621B    call        TMenuItem.SetCaption
 006F6220    push        6FFA50;'Tone 04, Alternating, 2400/2900 Hz, 166ms/166ms'
 006F6225    lea         eax,[ebp-338]
 006F622B    push        eax
 006F622C    mov         ecx,6FFABC;'smiSapTone04'
 006F6231    mov         edx,6FF904;'SapToneMenu'
 006F6236    mov         eax,esi
 006F6238    mov         edi,dword ptr [eax]
 006F623A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F623D    mov         edx,dword ptr [ebp-338]
 006F6243    mov         eax,dword ptr [ebx+970];TFXADMenuFrame.miSapTone04:TMenuItem
 006F6249    call        TMenuItem.SetCaption
 006F624E    push        6FFAE4;'Tone 05, Alternating, 2500/3100 Hz, 250ms/250ms'
 006F6253    lea         eax,[ebp-33C]
 006F6259    push        eax
 006F625A    mov         ecx,6FFB50;'smiSapTone05'
 006F625F    mov         edx,6FF904;'SapToneMenu'
 006F6264    mov         eax,esi
 006F6266    mov         edi,dword ptr [eax]
 006F6268    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F626B    mov         edx,dword ptr [ebp-33C]
 006F6271    mov         eax,dword ptr [ebx+974];TFXADMenuFrame.miSapTone05:TMenuItem
 006F6277    call        TMenuItem.SetCaption
 006F627C    push        6FFB78;'Tone 06, Alternating,  988/ 645 Hz, 250ms/250ms'
 006F6281    lea         eax,[ebp-340]
 006F6287    push        eax
 006F6288    mov         ecx,6FFBE4;'smiSapTone06'
 006F628D    mov         edx,6FF904;'SapToneMenu'
 006F6292    mov         eax,esi
 006F6294    mov         edi,dword ptr [eax]
 006F6296    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6299    mov         edx,dword ptr [ebp-340]
 006F629F    mov         eax,dword ptr [ebx+978];TFXADMenuFrame.miSapTone06:TMenuItem
 006F62A5    call        TMenuItem.SetCaption
 006F62AA    push        6FFC0C;'Tone 07, Continuous,  660Hz'
 006F62AF    lea         eax,[ebp-344]
 006F62B5    push        eax
 006F62B6    mov         ecx,6FFC50;'smiSapTone07'
 006F62BB    mov         edx,6FF904;'SapToneMenu'
 006F62C0    mov         eax,esi
 006F62C2    mov         edi,dword ptr [eax]
 006F62C4    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F62C7    mov         edx,dword ptr [ebp-344]
 006F62CD    mov         eax,dword ptr [ebx+97C];TFXADMenuFrame.miSapTone07:TMenuItem
 006F62D3    call        TMenuItem.SetCaption
 006F62D8    push        6FFC78;'Tone 08, Continuous,  970Hz'
 006F62DD    lea         eax,[ebp-348]
 006F62E3    push        eax
 006F62E4    mov         ecx,6FFCBC;'smiSapTone08'
 006F62E9    mov         edx,6FF904;'SapToneMenu'
 006F62EE    mov         eax,esi
 006F62F0    mov         edi,dword ptr [eax]
 006F62F2    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F62F5    mov         edx,dword ptr [ebp-348]
 006F62FB    mov         eax,dword ptr [ebx+980];TFXADMenuFrame.miSapTone08:TMenuItem
 006F6301    call        TMenuItem.SetCaption
 006F6306    push        6FFCE4;'Tone 09, Continuous, 1200Hz'
 006F630B    lea         eax,[ebp-34C]
 006F6311    push        eax
 006F6312    mov         ecx,6FFD28;'smiSapTone09'
 006F6317    mov         edx,6FF904;'SapToneMenu'
 006F631C    mov         eax,esi
 006F631E    mov         edi,dword ptr [eax]
 006F6320    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6323    mov         edx,dword ptr [ebp-34C]
 006F6329    mov         eax,dword ptr [ebx+984];TFXADMenuFrame.miSapTone09:TMenuItem
 006F632F    call        TMenuItem.SetCaption
 006F6334    push        6FFD50;'Tone 10, Continuous, 2850Hz'
 006F6339    lea         eax,[ebp-350]
 006F633F    push        eax
 006F6340    mov         ecx,6FFD94;'smiSapTone10'
 006F6345    mov         edx,6FF904;'SapToneMenu'
 006F634A    mov         eax,esi
 006F634C    mov         edi,dword ptr [eax]
 006F634E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6351    mov         edx,dword ptr [ebp-350]
 006F6357    mov         eax,dword ptr [ebx+988];TFXADMenuFrame.miSapTone10:TMenuItem
 006F635D    call        TMenuItem.SetCaption
 006F6362    push        6FFDBC;'Tone 11, Sweep,  150-1000- 150Hz, 10s, 40s, 10s, 20s'
 006F6367    lea         eax,[ebp-354]
 006F636D    push        eax
 006F636E    mov         ecx,6FFE34;'smiSapTone11'
 006F6373    mov         edx,6FF904;'SapToneMenu'
 006F6378    mov         eax,esi
 006F637A    mov         edi,dword ptr [eax]
 006F637C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F637F    mov         edx,dword ptr [ebp-354]
 006F6385    mov         eax,dword ptr [ebx+98C];TFXADMenuFrame.miSapTone11:TMenuItem
 006F638B    call        TMenuItem.SetCaption
 006F6390    push        6FFE5C;'Tone 12, Intermittent,  420Hz, 0.625s on, 0.625s off'
 006F6395    lea         eax,[ebp-358]
 006F639B    push        eax
 006F639C    mov         ecx,6FFED4;'smiSapTone12'
 006F63A1    mov         edx,6FF904;'SapToneMenu'
 006F63A6    mov         eax,esi
 006F63A8    mov         edi,dword ptr [eax]
 006F63AA    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F63AD    mov         edx,dword ptr [ebp-358]
 006F63B3    mov         eax,dword ptr [ebx+990];TFXADMenuFrame.miSapTone12:TMenuItem
 006F63B9    call        TMenuItem.SetCaption
 006F63BE    push        6FFEFC;'Tone 13, Sweep, 500-1200Hz, 3.75s on, 0.25s off'
 006F63C3    lea         eax,[ebp-35C]
 006F63C9    push        eax
 006F63CA    mov         ecx,6FFF68;'smiSapTone13'
 006F63CF    mov         edx,6FF904;'SapToneMenu'
 006F63D4    mov         eax,esi
 006F63D6    mov         edi,dword ptr [eax]
 006F63D8    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F63DB    mov         edx,dword ptr [ebp-35C]
 006F63E1    mov         eax,dword ptr [ebx+994];TFXADMenuFrame.miSapTone13:TMenuItem
 006F63E7    call        TMenuItem.SetCaption
 006F63EC    push        6FFF90;'Tone 14, Intermittent,  660Hz, 150ms on, 150ms off'
 006F63F1    lea         eax,[ebp-360]
 006F63F7    push        eax
 006F63F8    mov         ecx,700004;'smiSapTone14'
 006F63FD    mov         edx,6FF904;'SapToneMenu'
 006F6402    mov         eax,esi
 006F6404    mov         edi,dword ptr [eax]
 006F6406    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6409    mov         edx,dword ptr [ebp-360]
 006F640F    mov         eax,dword ptr [ebx+998];TFXADMenuFrame.miSapTone14:TMenuItem
 006F6415    call        TMenuItem.SetCaption
 006F641A    push        70002C;'Tone 15, Intermittent,  970Hz, 250ms on, 1s off'
 006F641F    lea         eax,[ebp-364]
 006F6425    push        eax
 006F6426    mov         ecx,700098;'smiSapTone15'
 006F642B    mov         edx,6FF904;'SapToneMenu'
 006F6430    mov         eax,esi
 006F6432    mov         edi,dword ptr [eax]
 006F6434    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6437    mov         edx,dword ptr [ebp-364]
 006F643D    mov         eax,dword ptr [ebx+99C];TFXADMenuFrame.miSapTone15:TMenuItem
 006F6443    call        TMenuItem.SetCaption
 006F6448    push        7000C0;'Tone 16, Intermittent,  970Hz, 1s on, 1s off'
 006F644D    lea         eax,[ebp-368]
 006F6453    push        eax
 006F6454    mov         ecx,700128;'smiSapTone16'
 006F6459    mov         edx,6FF904;'SapToneMenu'
 006F645E    mov         eax,esi
 006F6460    mov         edi,dword ptr [eax]
 006F6462    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6465    mov         edx,dword ptr [ebp-368]
 006F646B    mov         eax,dword ptr [ebx+9A0];TFXADMenuFrame.miSapTone16:TMenuItem
 006F6471    call        TMenuItem.SetCaption
 006F6476    push        700150;'Tone 17, Intermittent, 2850Hz, 500ms on, 500ms off'
 006F647B    lea         eax,[ebp-36C]
 006F6481    push        eax
 006F6482    mov         ecx,7001C4;'smiSapTone17'
 006F6487    mov         edx,6FF904;'SapToneMenu'
 006F648C    mov         eax,esi
 006F648E    mov         edi,dword ptr [eax]
 006F6490    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6493    mov         edx,dword ptr [ebp-36C]
 006F6499    mov         eax,dword ptr [ebx+9A4];TFXADMenuFrame.miSapTone17:TMenuItem
 006F649F    call        TMenuItem.SetCaption
 006F64A4    push        7001EC;'Tone 18, Intermittent,  970Hz, 500ms on, 500ms off'
 006F64A9    lea         eax,[ebp-370]
 006F64AF    push        eax
 006F64B0    mov         ecx,700260;'smiSapTone18'
 006F64B5    mov         edx,6FF904;'SapToneMenu'
 006F64BA    mov         eax,esi
 006F64BC    mov         edi,dword ptr [eax]
 006F64BE    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F64C1    mov         edx,dword ptr [ebp-370]
 006F64C7    mov         eax,dword ptr [ebx+9A8];TFXADMenuFrame.miSapTone18:TMenuItem
 006F64CD    call        TMenuItem.SetCaption
 006F64D2    push        700288;'Tone 19, Intermittent,  950Hz, (0.5s on, 0.5s off)x3, 1.5s off'
 006F64D7    lea         eax,[ebp-374]
 006F64DD    push        eax
 006F64DE    mov         ecx,700314;'smiSapTone19'
 006F64E3    mov         edx,6FF904;'SapToneMenu'
 006F64E8    mov         eax,esi
 006F64EA    mov         edi,dword ptr [eax]
 006F64EC    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F64EF    mov         edx,dword ptr [ebp-374]
 006F64F5    mov         eax,dword ptr [ebx+9AC];TFXADMenuFrame.miSapTone19:TMenuItem
 006F64FB    call        TMenuItem.SetCaption
 006F6500    push        70033C;'Tone 20, Continuous,  800Hz'
 006F6505    lea         eax,[ebp-378]
 006F650B    push        eax
 006F650C    mov         ecx,700380;'smiSapTone20'
 006F6511    mov         edx,6FF904;'SapToneMenu'
 006F6516    mov         eax,esi
 006F6518    mov         edi,dword ptr [eax]
 006F651A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F651D    mov         edx,dword ptr [ebp-378]
 006F6523    mov         eax,dword ptr [ebx+9B0];TFXADMenuFrame.miSapTone20:TMenuItem
 006F6529    call        TMenuItem.SetCaption
 006F652E    push        7003A8;'Tone 21, Sweep,  400-1200Hz, (0.5s on, 0.5s off)x3, 1.5s off'
 006F6533    lea         eax,[ebp-37C]
 006F6539    push        eax
 006F653A    mov         ecx,700430;'smiSapTone21'
 006F653F    mov         edx,6FF904;'SapToneMenu'
 006F6544    mov         eax,esi
 006F6546    mov         edi,dword ptr [eax]
 006F6548    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F654B    mov         edx,dword ptr [ebp-37C]
 006F6551    mov         eax,dword ptr [ebx+9B4];TFXADMenuFrame.miSapTone21:TMenuItem
 006F6557    call        TMenuItem.SetCaption
 006F655C    push        700458;'Tone 22, Sweep, 1200- 500Hz, 1s on, 0.01s off'
 006F6561    lea         eax,[ebp-380]
 006F6567    push        eax
 006F6568    mov         ecx,7004C0;'smiSapTone22'
 006F656D    mov         edx,6FF904;'SapToneMenu'
 006F6572    mov         eax,esi
 006F6574    mov         edi,dword ptr [eax]
 006F6576    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6579    mov         edx,dword ptr [ebp-380]
 006F657F    mov         eax,dword ptr [ebx+9B8];TFXADMenuFrame.miSapTone22:TMenuItem
 006F6585    call        TMenuItem.SetCaption
 006F658A    push        7004E8;'Tone 23, Sweep, 2400-2850Hz, 7Hz'
 006F658F    lea         eax,[ebp-384]
 006F6595    push        eax
 006F6596    mov         ecx,700538;'smiSapTone23'
 006F659B    mov         edx,6FF904;'SapToneMenu'
 006F65A0    mov         eax,esi
 006F65A2    mov         edi,dword ptr [eax]
 006F65A4    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F65A7    mov         edx,dword ptr [ebp-384]
 006F65AD    mov         eax,dword ptr [ebx+9BC];TFXADMenuFrame.miSapTone23:TMenuItem
 006F65B3    call        TMenuItem.SetCaption
 006F65B8    push        700560;'Tone 24, Sweep,  500-1200Hz, 3.5s on, 0.5s off'
 006F65BD    lea         eax,[ebp-388]
 006F65C3    push        eax
 006F65C4    mov         ecx,7005CC;'smiSapTone24'
 006F65C9    mov         edx,6FF904;'SapToneMenu'
 006F65CE    mov         eax,esi
 006F65D0    mov         edi,dword ptr [eax]
 006F65D2    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F65D5    mov         edx,dword ptr [ebp-388]
 006F65DB    mov         eax,dword ptr [ebx+9C0];TFXADMenuFrame.miSapTone24:TMenuItem
 006F65E1    call        TMenuItem.SetCaption
 006F65E6    push        7005F4;'Tone 25, Sweep,  800- 970Hz, 50Hz'
 006F65EB    lea         eax,[ebp-38C]
 006F65F1    push        eax
 006F65F2    mov         ecx,700644;'smiSapTone25'
 006F65F7    mov         edx,6FF904;'SapToneMenu'
 006F65FC    mov         eax,esi
 006F65FE    mov         edi,dword ptr [eax]
 006F6600    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6603    mov         edx,dword ptr [ebp-38C]
 006F6609    mov         eax,dword ptr [ebx+9C4];TFXADMenuFrame.miSapTone25:TMenuItem
 006F660F    call        TMenuItem.SetCaption
 006F6614    push        70066C;'Tone 26, Sweep,  800- 970Hz, 7Hz'
 006F6619    lea         eax,[ebp-390]
 006F661F    push        eax
 006F6620    mov         ecx,7006BC;'smiSapTone26'
 006F6625    mov         edx,6FF904;'SapToneMenu'
 006F662A    mov         eax,esi
 006F662C    mov         edi,dword ptr [eax]
 006F662E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6631    mov         edx,dword ptr [ebp-390]
 006F6637    mov         eax,dword ptr [ebx+9C8];TFXADMenuFrame.miSapTone26:TMenuItem
 006F663D    call        TMenuItem.SetCaption
 006F6642    push        7006E4;'Tone 27, Sweep,  800- 970Hz, 1Hz'
 006F6647    lea         eax,[ebp-394]
 006F664D    push        eax
 006F664E    mov         ecx,700734;'smiSapTone27'
 006F6653    mov         edx,6FF904;'SapToneMenu'
 006F6658    mov         eax,esi
 006F665A    mov         edi,dword ptr [eax]
 006F665C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F665F    mov         edx,dword ptr [ebp-394]
 006F6665    mov         eax,dword ptr [ebx+9CC];TFXADMenuFrame.miSapTone27:TMenuItem
 006F666B    call        TMenuItem.SetCaption
 006F6670    push        70075C;'Tone 28, Sweep, 2400-2850Hz, 50Hz'
 006F6675    lea         eax,[ebp-398]
 006F667B    push        eax
 006F667C    mov         ecx,7007AC;'smiSapTone28'
 006F6681    mov         edx,6FF904;'SapToneMenu'
 006F6686    mov         eax,esi
 006F6688    mov         edi,dword ptr [eax]
 006F668A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F668D    mov         edx,dword ptr [ebp-398]
 006F6693    mov         eax,dword ptr [ebx+9D0];TFXADMenuFrame.miSapTone28:TMenuItem
 006F6699    call        TMenuItem.SetCaption
 006F669E    push        7007D4;'Tone 29, Sweep,  500-1000Hz, 7Hz'
 006F66A3    lea         eax,[ebp-39C]
 006F66A9    push        eax
 006F66AA    mov         ecx,700824;'smiSapTone29'
 006F66AF    mov         edx,6FF904;'SapToneMenu'
 006F66B4    mov         eax,esi
 006F66B6    mov         edi,dword ptr [eax]
 006F66B8    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F66BB    mov         edx,dword ptr [ebp-39C]
 006F66C1    mov         eax,dword ptr [ebx+9D4];TFXADMenuFrame.miSapTone29:TMenuItem
 006F66C7    call        TMenuItem.SetCaption
 006F66CC    push        70084C;'Tone 30, Sweep,  500-1200-500Hz, 1s, 4s, 1s'
 006F66D1    lea         eax,[ebp-3A0]
 006F66D7    push        eax
 006F66D8    mov         ecx,7008B0;'smiSapTone30'
 006F66DD    mov         edx,6FF904;'SapToneMenu'
 006F66E2    mov         eax,esi
 006F66E4    mov         edi,dword ptr [eax]
 006F66E6    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F66E9    mov         edx,dword ptr [ebp-3A0]
 006F66EF    mov         eax,dword ptr [ebx+9D8];TFXADMenuFrame.miSapTone30:TMenuItem
 006F66F5    call        TMenuItem.SetCaption
 006F66FA    push        7008D8;'Tone 31, Sweep,  800-1000Hz, 2Hz'
 006F66FF    lea         eax,[ebp-3A4]
 006F6705    push        eax
 006F6706    mov         ecx,700928;'smiSapTone31'
 006F670B    mov         edx,6FF904;'SapToneMenu'
 006F6710    mov         eax,esi
 006F6712    mov         edi,dword ptr [eax]
 006F6714    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6717    mov         edx,dword ptr [ebp-3A4]
 006F671D    mov         eax,dword ptr [ebx+9DC];TFXADMenuFrame.miSapTone31:TMenuItem
 006F6723    call        TMenuItem.SetCaption
 006F6728    push        700950;'Tone 32, Sweep, 2400-2850Hz, 1Hz'
 006F672D    lea         eax,[ebp-3A8]
 006F6733    push        eax
 006F6734    mov         ecx,7009A0;'smiSapTone32'
 006F6739    mov         edx,6FF904;'SapToneMenu'
 006F673E    mov         eax,esi
 006F6740    mov         edi,dword ptr [eax]
 006F6742    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6745    mov         edx,dword ptr [ebp-3A8]
 006F674B    mov         eax,dword ptr [ebx+9E0];TFXADMenuFrame.miSapTone32:TMenuItem
 006F6751    call        TMenuItem.SetCaption
 006F6756    push        7009C8;'Tone pair 01, Alternating,  554/ 440 Hz, 100ms/400ms;	 Continuous,  660Hz'
 006F675B    lea         eax,[ebp-3AC]
 006F6761    push        eax
 006F6762    mov         ecx,700A68;'smiSapTonePair01'
 006F6767    mov         edx,6FF904;'SapToneMenu'
 006F676C    mov         eax,esi
 006F676E    mov         edi,dword ptr [eax]
 006F6770    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6773    mov         edx,dword ptr [ebp-3AC]
 006F6779    mov         eax,dword ptr [ebx+9E8];TFXADMenuFrame.miSapTonePair01:TMenuItem
 006F677F    call        TMenuItem.SetCaption
 006F6784    push        700A98;'Tone pair 02, Alternating,  800/ 970 Hz, 500ms/500ms;	 Continuous,  970Hz'
 006F6789    lea         eax,[ebp-3B0]
 006F678F    push        eax
 006F6790    mov         ecx,700B38;'smiSapTonePair02'
 006F6795    mov         edx,6FF904;'SapToneMenu'
 006F679A    mov         eax,esi
 006F679C    mov         edi,dword ptr [eax]
 006F679E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F67A1    mov         edx,dword ptr [ebp-3B0]
 006F67A7    mov         eax,dword ptr [ebx+9EC];TFXADMenuFrame.miSapTonePair02:TMenuItem
 006F67AD    call        TMenuItem.SetCaption
 006F67B2    push        700B68;'Tone pair 03, Alternating,  800/ 970 Hz, 250ms/250ms;	 Continuous,  970Hz'
 006F67B7    lea         eax,[ebp-3B4]
 006F67BD    push        eax
 006F67BE    mov         ecx,700C08;'smiSapTonePair03'
 006F67C3    mov         edx,6FF904;'SapToneMenu'
 006F67C8    mov         eax,esi
 006F67CA    mov         edi,dword ptr [eax]
 006F67CC    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F67CF    mov         edx,dword ptr [ebp-3B4]
 006F67D5    mov         eax,dword ptr [ebx+9F0];TFXADMenuFrame.miSapTonePair03:TMenuItem
 006F67DB    call        TMenuItem.SetCaption
 006F67E0    push        700C38;'Tone pair 04, Alternating, 2400/2900 Hz, 166ms/166ms;	 Continuous, 2850Hz'
 006F67E5    lea         eax,[ebp-3B8]
 006F67EB    push        eax
 006F67EC    mov         ecx,700CD8;'smiSapTonePair04'
 006F67F1    mov         edx,6FF904;'SapToneMenu'
 006F67F6    mov         eax,esi
 006F67F8    mov         edi,dword ptr [eax]
 006F67FA    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F67FD    mov         edx,dword ptr [ebp-3B8]
 006F6803    mov         eax,dword ptr [ebx+9F4];TFXADMenuFrame.miSapTonePair04:TMenuItem
 006F6809    call        TMenuItem.SetCaption
 006F680E    push        700D08;'Tone pair 05, Alternating, 2500/3100 Hz, 250ms/250ms;	 Continuous, 2850Hz'
 006F6813    lea         eax,[ebp-3BC]
 006F6819    push        eax
 006F681A    mov         ecx,700DA8;'smiSapTonePair05'
 006F681F    mov         edx,6FF904;'SapToneMenu'
 006F6824    mov         eax,esi
 006F6826    mov         edi,dword ptr [eax]
 006F6828    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F682B    mov         edx,dword ptr [ebp-3BC]
 006F6831    mov         eax,dword ptr [ebx+9F8];TFXADMenuFrame.miSapTonePair05:TMenuItem
 006F6837    call        TMenuItem.SetCaption
 006F683C    push        700DD8;'Tone pair 06, Alternating,  988/ 645 Hz, 250ms/250ms;	 Continuous,  970Hz'
 006F6841    lea         eax,[ebp-3C0]
 006F6847    push        eax
 006F6848    mov         ecx,700E78;'smiSapTonePair06'
 006F684D    mov         edx,6FF904;'SapToneMenu'
 006F6852    mov         eax,esi
 006F6854    mov         edi,dword ptr [eax]
 006F6856    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6859    mov         edx,dword ptr [ebp-3C0]
 006F685F    mov         eax,dword ptr [ebx+9FC];TFXADMenuFrame.miSapTonePair06:TMenuItem
 006F6865    call        TMenuItem.SetCaption
 006F686A    push        700EA8;'Tone pair 07, Continuous,  660Hz;	 Alternating,  554/ 440 Hz, 100ms/400ms'
 006F686F    lea         eax,[ebp-3C4]
 006F6875    push        eax
 006F6876    mov         ecx,700F48;'smiSapTonePair07'
 006F687B    mov         edx,6FF904;'SapToneMenu'
 006F6880    mov         eax,esi
 006F6882    mov         edi,dword ptr [eax]
 006F6884    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6887    mov         edx,dword ptr [ebp-3C4]
 006F688D    mov         eax,dword ptr [ebx+0A00];TFXADMenuFrame.miSapTonePair07:TMenuItem
 006F6893    call        TMenuItem.SetCaption
 006F6898    push        700F78;'Tone pair 08, Continuous,  970Hz;	 Alternating,  800/ 970 Hz, 500ms/500ms'
 006F689D    lea         eax,[ebp-3C8]
 006F68A3    push        eax
 006F68A4    mov         ecx,701018;'smiSapTonePair08'
 006F68A9    mov         edx,6FF904;'SapToneMenu'
 006F68AE    mov         eax,esi
 006F68B0    mov         edi,dword ptr [eax]
 006F68B2    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F68B5    mov         edx,dword ptr [ebp-3C8]
 006F68BB    mov         eax,dword ptr [ebx+0A04];TFXADMenuFrame.miSapTonePair08:TMenuItem
 006F68C1    call        TMenuItem.SetCaption
 006F68C6    push        701048;'Tone pair 09, Continuous, 1200Hz;	 Alternating,  800/ 970 Hz, 500ms/500ms'
 006F68CB    lea         eax,[ebp-3CC]
 006F68D1    push        eax
 006F68D2    mov         ecx,7010E8;'smiSapTonePair09'
 006F68D7    mov         edx,6FF904;'SapToneMenu'
 006F68DC    mov         eax,esi
 006F68DE    mov         edi,dword ptr [eax]
 006F68E0    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F68E3    mov         edx,dword ptr [ebp-3CC]
 006F68E9    mov         eax,dword ptr [ebx+0A08];TFXADMenuFrame.miSapTonePair09:TMenuItem
 006F68EF    call        TMenuItem.SetCaption
 006F68F4    push        701118;'Tone pair 10, Continuous, 2850Hz;	 Alternating, 2400/2900 Hz, 166ms/166ms'
 006F68F9    lea         eax,[ebp-3D0]
 006F68FF    push        eax
 006F6900    mov         ecx,7011B8;'smiSapTonePair10'
 006F6905    mov         edx,6FF904;'SapToneMenu'
 006F690A    mov         eax,esi
 006F690C    mov         edi,dword ptr [eax]
 006F690E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6911    mov         edx,dword ptr [ebp-3D0]
 006F6917    mov         eax,dword ptr [ebx+0A0C];TFXADMenuFrame.miSapTonePair10:TMenuItem
 006F691D    call        TMenuItem.SetCaption
 006F6922    push        7011E8;'Tone pair 11, Sweep,  150-1000- 150Hz, 10s, 40s, 10s, 20s;	 Sweep, 1200- 500Hz, ...
 006F6927    lea         eax,[ebp-3D4]
 006F692D    push        eax
 006F692E    mov         ecx,7012B8;'smiSapTonePair11'
 006F6933    mov         edx,6FF904;'SapToneMenu'
 006F6938    mov         eax,esi
 006F693A    mov         edi,dword ptr [eax]
 006F693C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F693F    mov         edx,dword ptr [ebp-3D4]
 006F6945    mov         eax,dword ptr [ebx+0A10];TFXADMenuFrame.miSapTonePair11:TMenuItem
 006F694B    call        TMenuItem.SetCaption
 006F6950    push        7012E8;'Tone pair 12, Intermittent,  420Hz, 0.625s on, 0.625s off;	 Sweep, 500-1200Hz, 3...
 006F6955    lea         eax,[ebp-3D8]
 006F695B    push        eax
 006F695C    mov         ecx,7013BC;'smiSapTonePair12'
 006F6961    mov         edx,6FF904;'SapToneMenu'
 006F6966    mov         eax,esi
 006F6968    mov         edi,dword ptr [eax]
 006F696A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F696D    mov         edx,dword ptr [ebp-3D8]
 006F6973    mov         eax,dword ptr [ebx+0A14];TFXADMenuFrame.miSapTonePair12:TMenuItem
 006F6979    call        TMenuItem.SetCaption
 006F697E    push        7013EC;'Tone pair 13, Sweep, 500-1200Hz, 3.75s on, 0.25s off;	Intermittent,  420Hz, 0.62...
 006F6983    lea         eax,[ebp-3DC]
 006F6989    push        eax
 006F698A    mov         ecx,7014BC;'smiSapTonePair13'
 006F698F    mov         edx,6FF904;'SapToneMenu'
 006F6994    mov         eax,esi
 006F6996    mov         edi,dword ptr [eax]
 006F6998    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F699B    mov         edx,dword ptr [ebp-3DC]
 006F69A1    mov         eax,dword ptr [ebx+0A18];TFXADMenuFrame.miSapTonePair13:TMenuItem
 006F69A7    call        TMenuItem.SetCaption
 006F69AC    push        7014EC;'Tone pair 14, Intermittent,  660Hz, 150ms on, 150ms off;	 Continuous,  660Hz'
 006F69B1    lea         eax,[ebp-3E0]
 006F69B7    push        eax
 006F69B8    mov         ecx,701594;'smiSapTonePair14'
 006F69BD    mov         edx,6FF904;'SapToneMenu'
 006F69C2    mov         eax,esi
 006F69C4    mov         edi,dword ptr [eax]
 006F69C6    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F69C9    mov         edx,dword ptr [ebp-3E0]
 006F69CF    mov         eax,dword ptr [ebx+0A1C];TFXADMenuFrame.miSapTonePair14:TMenuItem
 006F69D5    call        TMenuItem.SetCaption
 006F69DA    push        7015C4;'Tone pair 15, Intermittent,  970Hz, 250ms on, 1s off;	 Continuous,  970Hz'
 006F69DF    lea         eax,[ebp-3E4]
 006F69E5    push        eax
 006F69E6    mov         ecx,701664;'smiSapTonePair15'
 006F69EB    mov         edx,6FF904;'SapToneMenu'
 006F69F0    mov         eax,esi
 006F69F2    mov         edi,dword ptr [eax]
 006F69F4    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F69F7    mov         edx,dword ptr [ebp-3E4]
 006F69FD    mov         eax,dword ptr [ebx+0A20];TFXADMenuFrame.miSapTonePair15:TMenuItem
 006F6A03    call        TMenuItem.SetCaption
 006F6A08    push        701694;'Tone pair 16, Intermittent,  970Hz, 1s on, 1s off;	 Continuous,  970Hz'
 006F6A0D    lea         eax,[ebp-3E8]
 006F6A13    push        eax
 006F6A14    mov         ecx,701730;'smiSapTonePair16'
 006F6A19    mov         edx,6FF904;'SapToneMenu'
 006F6A1E    mov         eax,esi
 006F6A20    mov         edi,dword ptr [eax]
 006F6A22    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6A25    mov         edx,dword ptr [ebp-3E8]
 006F6A2B    mov         eax,dword ptr [ebx+0A24];TFXADMenuFrame.miSapTonePair16:TMenuItem
 006F6A31    call        TMenuItem.SetCaption
 006F6A36    push        701760;'Tone pair 17, Intermittent, 2850Hz, 500ms on, 500ms off;	 Continuous, 2850Hz'
 006F6A3B    lea         eax,[ebp-3EC]
 006F6A41    push        eax
 006F6A42    mov         ecx,701808;'smiSapTonePair17'
 006F6A47    mov         edx,6FF904;'SapToneMenu'
 006F6A4C    mov         eax,esi
 006F6A4E    mov         edi,dword ptr [eax]
 006F6A50    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6A53    mov         edx,dword ptr [ebp-3EC]
 006F6A59    mov         eax,dword ptr [ebx+0A28];TFXADMenuFrame.miSapTonePair17:TMenuItem
 006F6A5F    call        TMenuItem.SetCaption
 006F6A64    push        701838;'Tone pair 18, Intermittent,  970Hz, 500ms on, 500ms off;	  Continuous,  970Hz'
 006F6A69    lea         eax,[ebp-3F0]
 006F6A6F    push        eax
 006F6A70    mov         ecx,7018E0;'smiSapTonePair18'
 006F6A75    mov         edx,6FF904;'SapToneMenu'
 006F6A7A    mov         eax,esi
 006F6A7C    mov         edi,dword ptr [eax]
 006F6A7E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6A81    mov         edx,dword ptr [ebp-3F0]
 006F6A87    mov         eax,dword ptr [ebx+0A2C];TFXADMenuFrame.miSapTonePair18:TMenuItem
 006F6A8D    call        TMenuItem.SetCaption
 006F6A92    push        701910;'Tone pair 19, Intermittent,  950Hz, (0.5s on, 0.5s off)x3, 1.5s off;	 Intermitte...
 006F6A97    lea         eax,[ebp-3F4]
 006F6A9D    push        eax
 006F6A9E    mov         ecx,701A00;'smiSapTonePair19'
 006F6AA3    mov         edx,6FF904;'SapToneMenu'
 006F6AA8    mov         eax,esi
 006F6AAA    mov         edi,dword ptr [eax]
 006F6AAC    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6AAF    mov         edx,dword ptr [ebp-3F4]
 006F6AB5    mov         eax,dword ptr [ebx+0A30];TFXADMenuFrame.miSapTonePair19:TMenuItem
 006F6ABB    call        TMenuItem.SetCaption
 006F6AC0    push        701A30;'Tone pair 20, Continuous,  800Hz;	 Sweep, 1200- 500Hz, 1s on, 0.01s off'
 006F6AC5    lea         eax,[ebp-3F8]
 006F6ACB    push        eax
 006F6ACC    mov         ecx,701ACC;'smiSapTonePair20'
 006F6AD1    mov         edx,6FF904;'SapToneMenu'
 006F6AD6    mov         eax,esi
 006F6AD8    mov         edi,dword ptr [eax]
 006F6ADA    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6ADD    mov         edx,dword ptr [ebp-3F8]
 006F6AE3    mov         eax,dword ptr [ebx+0A34];TFXADMenuFrame.miSapTonePair20:TMenuItem
 006F6AE9    call        TMenuItem.SetCaption
 006F6AEE    push        701AFC;'Tone pair 21, Sweep,  400-1200Hz, (0.5s on, 0.5s off)x3, 1.5s off;	 Intermittent...
 006F6AF3    lea         eax,[ebp-3FC]
 006F6AF9    push        eax
 006F6AFA    mov         ecx,701BE8;'smiSapTonePair21'
 006F6AFF    mov         edx,6FF904;'SapToneMenu'
 006F6B04    mov         eax,esi
 006F6B06    mov         edi,dword ptr [eax]
 006F6B08    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6B0B    mov         edx,dword ptr [ebp-3FC]
 006F6B11    mov         eax,dword ptr [ebx+0A38];TFXADMenuFrame.miSapTonePair21:TMenuItem
 006F6B17    call        TMenuItem.SetCaption
 006F6B1C    push        701C18;'Tone pair 22, Sweep, 1200- 500Hz, 1s on, 0.01s off;	 Continuous,  800Hz'
 006F6B21    lea         eax,[ebp-400]
 006F6B27    push        eax
 006F6B28    mov         ecx,701CB4;'smiSapTonePair22'
 006F6B2D    mov         edx,6FF904;'SapToneMenu'
 006F6B32    mov         eax,esi
 006F6B34    mov         edi,dword ptr [eax]
 006F6B36    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6B39    mov         edx,dword ptr [ebp-400]
 006F6B3F    mov         eax,dword ptr [ebx+0A3C];TFXADMenuFrame.miSapTonePair22:TMenuItem
 006F6B45    call        TMenuItem.SetCaption
 006F6B4A    push        701CE4;'Tone pair 23, Sweep, 2400-2850Hz, 7Hz;	 Continuous, 2850Hz'
 006F6B4F    lea         eax,[ebp-404]
 006F6B55    push        eax
 006F6B56    mov         ecx,701D68;'smiSapTonePair23'
 006F6B5B    mov         edx,6FF904;'SapToneMenu'
 006F6B60    mov         eax,esi
 006F6B62    mov         edi,dword ptr [eax]
 006F6B64    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6B67    mov         edx,dword ptr [ebp-404]
 006F6B6D    mov         eax,dword ptr [ebx+0A40];TFXADMenuFrame.miSapTonePair23:TMenuItem
 006F6B73    call        TMenuItem.SetCaption
 006F6B78    push        701D98;'Tone pair 24, Sweep,  500-1200Hz, 3.5s on, 0.5s off;	 Continuous,  970Hz'
 006F6B7D    lea         eax,[ebp-408]
 006F6B83    push        eax
 006F6B84    mov         ecx,701E38;'smiSapTonePair24'
 006F6B89    mov         edx,6FF904;'SapToneMenu'
 006F6B8E    mov         eax,esi
 006F6B90    mov         edi,dword ptr [eax]
 006F6B92    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6B95    mov         edx,dword ptr [ebp-408]
 006F6B9B    mov         eax,dword ptr [ebx+0A44];TFXADMenuFrame.miSapTonePair24:TMenuItem
 006F6BA1    call        TMenuItem.SetCaption
 006F6BA6    push        701E68;'Tone pair 25, Sweep,  800- 970Hz, 50Hz;	 Continuous,  970Hz'
 006F6BAB    lea         eax,[ebp-40C]
 006F6BB1    push        eax
 006F6BB2    mov         ecx,701EEC;'smiSapTonePair25'
 006F6BB7    mov         edx,6FF904;'SapToneMenu'
 006F6BBC    mov         eax,esi
 006F6BBE    mov         edi,dword ptr [eax]
 006F6BC0    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6BC3    mov         edx,dword ptr [ebp-40C]
 006F6BC9    mov         eax,dword ptr [ebx+0A48];TFXADMenuFrame.miSapTonePair25:TMenuItem
 006F6BCF    call        TMenuItem.SetCaption
 006F6BD4    push        701F1C;'Tone pair 26, Sweep,  800- 970Hz, 7Hz;	 Continuous,  970Hz'
 006F6BD9    lea         eax,[ebp-410]
 006F6BDF    push        eax
 006F6BE0    mov         ecx,701FA0;'smiSapTonePair26'
 006F6BE5    mov         edx,6FF904;'SapToneMenu'
 006F6BEA    mov         eax,esi
 006F6BEC    mov         edi,dword ptr [eax]
 006F6BEE    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6BF1    mov         edx,dword ptr [ebp-410]
 006F6BF7    mov         eax,dword ptr [ebx+0A4C];TFXADMenuFrame.miSapTonePair26:TMenuItem
 006F6BFD    call        TMenuItem.SetCaption
 006F6C02    push        701FD0;'Tone pair 27, Sweep,  800- 970Hz, 1Hz;	 Continuous,  970Hz'
 006F6C07    lea         eax,[ebp-414]
 006F6C0D    push        eax
 006F6C0E    mov         ecx,702054;'smiSapTonePair27'
 006F6C13    mov         edx,6FF904;'SapToneMenu'
 006F6C18    mov         eax,esi
 006F6C1A    mov         edi,dword ptr [eax]
 006F6C1C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6C1F    mov         edx,dword ptr [ebp-414]
 006F6C25    mov         eax,dword ptr [ebx+0A50];TFXADMenuFrame.miSapTonePair27:TMenuItem
 006F6C2B    call        TMenuItem.SetCaption
 006F6C30    push        702084;'Tone pair 28, Sweep, 2400-2850Hz, 50Hz;	 Continuous, 2850Hz'
 006F6C35    lea         eax,[ebp-418]
 006F6C3B    push        eax
 006F6C3C    mov         ecx,702108;'smiSapTonePair28'
 006F6C41    mov         edx,6FF904;'SapToneMenu'
 006F6C46    mov         eax,esi
 006F6C48    mov         edi,dword ptr [eax]
 006F6C4A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6C4D    mov         edx,dword ptr [ebp-418]
 006F6C53    mov         eax,dword ptr [ebx+0A54];TFXADMenuFrame.miSapTonePair28:TMenuItem
 006F6C59    call        TMenuItem.SetCaption
 006F6C5E    push        702138;'Tone pair 29, Sweep,  500-1000Hz, 7Hz;	 Continuous,  970Hz'
 006F6C63    lea         eax,[ebp-41C]
 006F6C69    push        eax
 006F6C6A    mov         ecx,7021BC;'smiSapTonePair29'
 006F6C6F    mov         edx,6FF904;'SapToneMenu'
 006F6C74    mov         eax,esi
 006F6C76    mov         edi,dword ptr [eax]
 006F6C78    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6C7B    mov         edx,dword ptr [ebp-41C]
 006F6C81    mov         eax,dword ptr [ebx+0A58];TFXADMenuFrame.miSapTonePair29:TMenuItem
 006F6C87    call        TMenuItem.SetCaption
 006F6C8C    push        7021EC;'Tone pair 30, Sweep,  500-1200-500Hz, 1s, 4s, 1s;	 Continuous,  970Hz'
 006F6C91    lea         eax,[ebp-420]
 006F6C97    push        eax
 006F6C98    mov         ecx,702284;'smiSapTonePair30'
 006F6C9D    mov         edx,6FF904;'SapToneMenu'
 006F6CA2    mov         eax,esi
 006F6CA4    mov         edi,dword ptr [eax]
 006F6CA6    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6CA9    mov         edx,dword ptr [ebp-420]
 006F6CAF    mov         eax,dword ptr [ebx+0A5C];TFXADMenuFrame.miSapTonePair30:TMenuItem
 006F6CB5    call        TMenuItem.SetCaption
 006F6CBA    push        7022B4;'Tone pair 31, Sweep,  800-1000Hz, 2Hz;	 Continuous,  970Hz'
 006F6CBF    lea         eax,[ebp-424]
 006F6CC5    push        eax
 006F6CC6    mov         ecx,702338;'smiSapTonePair31'
 006F6CCB    mov         edx,6FF904;'SapToneMenu'
 006F6CD0    mov         eax,esi
 006F6CD2    mov         edi,dword ptr [eax]
 006F6CD4    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6CD7    mov         edx,dword ptr [ebp-424]
 006F6CDD    mov         eax,dword ptr [ebx+0A60];TFXADMenuFrame.miSapTonePair31:TMenuItem
 006F6CE3    call        TMenuItem.SetCaption
 006F6CE8    push        702368;'Tone pair 32, Sweep, 2400-2850Hz, 1Hz;	 Continuous, 2850Hz'
 006F6CED    lea         eax,[ebp-428]
 006F6CF3    push        eax
 006F6CF4    mov         ecx,7023EC;'smiSapTonePair32'
 006F6CF9    mov         edx,6FF904;'SapToneMenu'
 006F6CFE    mov         eax,esi
 006F6D00    mov         edi,dword ptr [eax]
 006F6D02    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6D05    mov         edx,dword ptr [ebp-428]
 006F6D0B    mov         eax,dword ptr [ebx+0A64];TFXADMenuFrame.miSapTonePair32:TMenuItem
 006F6D11    call        TMenuItem.SetCaption
 006F6D16    push        70241C;'1 - Vol 1'
 006F6D1B    lea         eax,[ebp-42C]
 006F6D21    push        eax
 006F6D22    mov         ecx,70243C;'smiSndrVol1'
 006F6D27    mov         edx,702460;'SndrVolumeMenu'
 006F6D2C    mov         eax,esi
 006F6D2E    mov         edi,dword ptr [eax]
 006F6D30    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6D33    mov         edx,dword ptr [ebp-42C]
 006F6D39    mov         eax,dword ptr [ebx+940];TFXADMenuFrame.miSndrVol1:TMenuItem
 006F6D3F    call        TMenuItem.SetCaption
 006F6D44    push        70248C;'2 - Vol 2'
 006F6D49    lea         eax,[ebp-430]
 006F6D4F    push        eax
 006F6D50    mov         ecx,7024AC;'smiSndrVol2'
 006F6D55    mov         edx,702460;'SndrVolumeMenu'
 006F6D5A    mov         eax,esi
 006F6D5C    mov         edi,dword ptr [eax]
 006F6D5E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6D61    mov         edx,dword ptr [ebp-430]
 006F6D67    mov         eax,dword ptr [ebx+944];TFXADMenuFrame.miSndrVol2:TMenuItem
 006F6D6D    call        TMenuItem.SetCaption
 006F6D72    push        7024D0;'3 - Vol 3'
 006F6D77    lea         eax,[ebp-434]
 006F6D7D    push        eax
 006F6D7E    mov         ecx,7024F0;'smiSndrVol3'
 006F6D83    mov         edx,702460;'SndrVolumeMenu'
 006F6D88    mov         eax,esi
 006F6D8A    mov         edi,dword ptr [eax]
 006F6D8C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6D8F    mov         edx,dword ptr [ebp-434]
 006F6D95    mov         eax,dword ptr [ebx+948];TFXADMenuFrame.miSndrVol3:TMenuItem
 006F6D9B    call        TMenuItem.SetCaption
 006F6DA0    push        702514;'4 - Vol 4'
 006F6DA5    lea         eax,[ebp-438]
 006F6DAB    push        eax
 006F6DAC    mov         ecx,702534;'smiSndrVol4'
 006F6DB1    mov         edx,702460;'SndrVolumeMenu'
 006F6DB6    mov         eax,esi
 006F6DB8    mov         edi,dword ptr [eax]
 006F6DBA    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6DBD    mov         edx,dword ptr [ebp-438]
 006F6DC3    mov         eax,dword ptr [ebx+94C];TFXADMenuFrame.miSndrVol4:TMenuItem
 006F6DC9    call        TMenuItem.SetCaption
 006F6DCE    push        702558;'5 - Vol 5'
 006F6DD3    lea         eax,[ebp-43C]
 006F6DD9    push        eax
 006F6DDA    mov         ecx,702578;'smiSndrVol5'
 006F6DDF    mov         edx,702460;'SndrVolumeMenu'
 006F6DE4    mov         eax,esi
 006F6DE6    mov         edi,dword ptr [eax]
 006F6DE8    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6DEB    mov         edx,dword ptr [ebp-43C]
 006F6DF1    mov         eax,dword ptr [ebx+950];TFXADMenuFrame.miSndrVol5:TMenuItem
 006F6DF7    call        TMenuItem.SetCaption
 006F6DFC    push        70259C;'6 - Vol 6'
 006F6E01    lea         eax,[ebp-440]
 006F6E07    push        eax
 006F6E08    mov         ecx,7025BC;'smiSndrVol6'
 006F6E0D    mov         edx,702460;'SndrVolumeMenu'
 006F6E12    mov         eax,esi
 006F6E14    mov         edi,dword ptr [eax]
 006F6E16    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6E19    mov         edx,dword ptr [ebp-440]
 006F6E1F    mov         eax,dword ptr [ebx+954];TFXADMenuFrame.miSndrVol6:TMenuItem
 006F6E25    call        TMenuItem.SetCaption
 006F6E2A    push        7025E0;'7 - Vol 7'
 006F6E2F    lea         eax,[ebp-444]
 006F6E35    push        eax
 006F6E36    mov         ecx,702600;'smiSndrVol7'
 006F6E3B    mov         edx,702460;'SndrVolumeMenu'
 006F6E40    mov         eax,esi
 006F6E42    mov         edi,dword ptr [eax]
 006F6E44    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6E47    mov         edx,dword ptr [ebp-444]
 006F6E4D    mov         eax,dword ptr [ebx+958];TFXADMenuFrame.miSndrVol7:TMenuItem
 006F6E53    call        TMenuItem.SetCaption
 006F6E58    push        702624;'0 - By dipswitch'
 006F6E5D    lea         eax,[ebp-448]
 006F6E63    push        eax
 006F6E64    mov         ecx,702654;'smiSndrVolSwitch'
 006F6E69    mov         edx,702460;'SndrVolumeMenu'
 006F6E6E    mov         eax,esi
 006F6E70    mov         edi,dword ptr [eax]
 006F6E72    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6E75    mov         edx,dword ptr [ebp-448]
 006F6E7B    mov         eax,dword ptr [ebx+0A74];TFXADMenuFrame.miSndrVolSwitch:TMenuItem
 006F6E81    call        TMenuItem.SetCaption
 006F6E86    push        702684;'1 - Low'
 006F6E8B    lea         eax,[ebp-44C]
 006F6E91    push        eax
 006F6E92    mov         ecx,7026A0;'smiSndrVolLow'
 006F6E97    mov         edx,702460;'SndrVolumeMenu'
 006F6E9C    mov         eax,esi
 006F6E9E    mov         edi,dword ptr [eax]
 006F6EA0    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6EA3    mov         edx,dword ptr [ebp-44C]
 006F6EA9    mov         eax,dword ptr [ebx+0A68];TFXADMenuFrame.miSndrVolLow:TMenuItem
 006F6EAF    call        TMenuItem.SetCaption
 006F6EB4    push        7026C8;'2 - Medium'
 006F6EB9    lea         eax,[ebp-450]
 006F6EBF    push        eax
 006F6EC0    mov         ecx,7026EC;'smiSndrVolMed'
 006F6EC5    mov         edx,702460;'SndrVolumeMenu'
 006F6ECA    mov         eax,esi
 006F6ECC    mov         edi,dword ptr [eax]
 006F6ECE    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6ED1    mov         edx,dword ptr [ebp-450]
 006F6ED7    mov         eax,dword ptr [ebx+0A6C];TFXADMenuFrame.miSndrVolMed:TMenuItem
 006F6EDD    call        TMenuItem.SetCaption
 006F6EE2    push        702714;'3 - High'
 006F6EE7    lea         eax,[ebp-454]
 006F6EED    push        eax
 006F6EEE    mov         ecx,702734;'smiSndrVolHigh'
 006F6EF3    mov         edx,702460;'SndrVolumeMenu'
 006F6EF8    mov         eax,esi
 006F6EFA    mov         edi,dword ptr [eax]
 006F6EFC    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6EFF    mov         edx,dword ptr [ebp-454]
 006F6F05    mov         eax,dword ptr [ebx+0A70];TFXADMenuFrame.miSndrVolHigh:TMenuItem
 006F6F0B    call        TMenuItem.SetCaption
 006F6F10    push        702760;'N - Normal'
 006F6F15    lea         eax,[ebp-458]
 006F6F1B    push        eax
 006F6F1C    mov         ecx,702784;'smiSapEnvGeneral'
 006F6F21    mov         edx,7027B4;'SapEnvironmentMenu'
 006F6F26    mov         eax,esi
 006F6F28    mov         edi,dword ptr [eax]
 006F6F2A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6F2D    mov         edx,dword ptr [ebp-458]
 006F6F33    mov         eax,dword ptr [ebx+0A7C];TFXADMenuFrame.miSapEnvGeneral:TMenuItem
 006F6F39    call        TMenuItem.SetCaption
 006F6F3E    push        7027E8;'0 - Environment 0'
 006F6F43    lea         eax,[ebp-45C]
 006F6F49    push        eax
 006F6F4A    mov         ecx,702818;'smiSapEnv1'
 006F6F4F    mov         edx,7027B4;'SapEnvironmentMenu'
 006F6F54    mov         eax,esi
 006F6F56    mov         edi,dword ptr [eax]
 006F6F58    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6F5B    mov         edx,dword ptr [ebp-45C]
 006F6F61    mov         eax,dword ptr [ebx+0A80];TFXADMenuFrame.miSapEnv1:TMenuItem
 006F6F67    call        TMenuItem.SetCaption
 006F6F6C    push        70283C;'1 - Environment 1'
 006F6F71    lea         eax,[ebp-460]
 006F6F77    push        eax
 006F6F78    mov         ecx,70286C;'smiSapEnv2'
 006F6F7D    mov         edx,7027B4;'SapEnvironmentMenu'
 006F6F82    mov         eax,esi
 006F6F84    mov         edi,dword ptr [eax]
 006F6F86    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6F89    mov         edx,dword ptr [ebp-460]
 006F6F8F    mov         eax,dword ptr [ebx+0A84];TFXADMenuFrame.miSapEnv2:TMenuItem
 006F6F95    call        TMenuItem.SetCaption
 006F6F9A    push        702890;'2 - Environment 2'
 006F6F9F    lea         eax,[ebp-464]
 006F6FA5    push        eax
 006F6FA6    mov         ecx,7028C0;'smiSapEnv3'
 006F6FAB    mov         edx,7027B4;'SapEnvironmentMenu'
 006F6FB0    mov         eax,esi
 006F6FB2    mov         edi,dword ptr [eax]
 006F6FB4    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6FB7    mov         edx,dword ptr [ebp-464]
 006F6FBD    mov         eax,dword ptr [ebx+0A88];TFXADMenuFrame.miSapEnv3:TMenuItem
 006F6FC3    call        TMenuItem.SetCaption
 006F6FC8    push        7028E4;'3 - Environment 3'
 006F6FCD    lea         eax,[ebp-468]
 006F6FD3    push        eax
 006F6FD4    mov         ecx,702914;'smiSapEnv4'
 006F6FD9    mov         edx,7027B4;'SapEnvironmentMenu'
 006F6FDE    mov         eax,esi
 006F6FE0    mov         edi,dword ptr [eax]
 006F6FE2    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F6FE5    mov         edx,dword ptr [ebp-468]
 006F6FEB    mov         eax,dword ptr [ebx+0A8C];TFXADMenuFrame.miSapEnv4:TMenuItem
 006F6FF1    call        TMenuItem.SetCaption
 006F6FF6    push        702938;'4 - Environment 4'
 006F6FFB    lea         eax,[ebp-46C]
 006F7001    push        eax
 006F7002    mov         ecx,702968;'smiSapEnv5'
 006F7007    mov         edx,7027B4;'SapEnvironmentMenu'
 006F700C    mov         eax,esi
 006F700E    mov         edi,dword ptr [eax]
 006F7010    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7013    mov         edx,dword ptr [ebp-46C]
 006F7019    mov         eax,dword ptr [ebx+0A90];TFXADMenuFrame.miSapEnv5:TMenuItem
 006F701F    call        TMenuItem.SetCaption
 006F7024    push        70298C;'5 - Environment 5'
 006F7029    lea         eax,[ebp-470]
 006F702F    push        eax
 006F7030    mov         ecx,7029BC;'smiSapEnv6'
 006F7035    mov         edx,7027B4;'SapEnvironmentMenu'
 006F703A    mov         eax,esi
 006F703C    mov         edi,dword ptr [eax]
 006F703E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7041    mov         edx,dword ptr [ebp-470]
 006F7047    mov         eax,dword ptr [ebx+0A94];TFXADMenuFrame.miSapEnv6:TMenuItem
 006F704D    call        TMenuItem.SetCaption
 006F7052    push        7029E0;'6 - Environment 6'
 006F7057    lea         eax,[ebp-474]
 006F705D    push        eax
 006F705E    mov         ecx,702A10;'smiSapEnv7'
 006F7063    mov         edx,7027B4;'SapEnvironmentMenu'
 006F7068    mov         eax,esi
 006F706A    mov         edi,dword ptr [eax]
 006F706C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F706F    mov         edx,dword ptr [ebp-474]
 006F7075    mov         eax,dword ptr [ebx+0A98];TFXADMenuFrame.miSapEnv7:TMenuItem
 006F707B    call        TMenuItem.SetCaption
 006F7080    push        702A34;'7 - Environment 7'
 006F7085    lea         eax,[ebp-478]
 006F708B    push        eax
 006F708C    mov         ecx,702A64;'smiSapEnv8'
 006F7091    mov         edx,7027B4;'SapEnvironmentMenu'
 006F7096    mov         eax,esi
 006F7098    mov         edi,dword ptr [eax]
 006F709A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F709D    mov         edx,dword ptr [ebp-478]
 006F70A3    mov         eax,dword ptr [ebx+0A9C];TFXADMenuFrame.miSapEnv8:TMenuItem
 006F70A9    call        TMenuItem.SetCaption
 006F70AE    push        702A88;'Hotel bedroom near shower

Steam and rate of rise in heat from opening bathroo...
 006F70B3    lea         eax,[ebp-47C]
 006F70B9    push        eax
 006F70BA    mov         ecx,702BD4;'smiSapEnv1Sub1'
 006F70BF    mov         edx,7027B4;'SapEnvironmentMenu'
 006F70C4    mov         eax,esi
 006F70C6    mov         edi,dword ptr [eax]
 006F70C8    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F70CB    mov         edx,dword ptr [ebp-47C]
 006F70D1    mov         eax,dword ptr [ebx+0AA0];TFXADMenuFrame.miSapEnv1Sub1:TMenuItem
 006F70D7    call        TMenuItem.SetCaption
 006F70DC    push        702C00;'Boiler rooms

Dust and rate of rise heat causing false alarms.

Level 4'
 006F70E1    lea         eax,[ebp-480]
 006F70E7    push        eax
 006F70E8    mov         ecx,702CA4;'smiSapEnv1Sub2'
 006F70ED    mov         edx,7027B4;'SapEnvironmentMenu'
 006F70F2    mov         eax,esi
 006F70F4    mov         edi,dword ptr [eax]
 006F70F6    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F70F9    mov         edx,dword ptr [ebp-480]
 006F70FF    mov         eax,dword ptr [ebx+0AA4];TFXADMenuFrame.miSapEnv1Sub2:TMenuItem
 006F7105    call        TMenuItem.SetCaption
 006F710A    push        702CD0;'Student dormitory

Smoke from small appliance cooking or cigarette etc.

Smo...
 006F710F    lea         eax,[ebp-484]
 006F7115    push        eax
 006F7116    mov         ecx,702DEC;'smiSapEnv2Sub1'
 006F711B    mov         edx,7027B4;'SapEnvironmentMenu'
 006F7120    mov         eax,esi
 006F7122    mov         edi,dword ptr [eax]
 006F7124    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7127    mov         edx,dword ptr [ebp-484]
 006F712D    mov         eax,dword ptr [ebx+0AA8];TFXADMenuFrame.miSapEnv2Sub1:TMenuItem
 006F7133    call        TMenuItem.SetCaption
 006F7138    push        702E18;'Hotel rooms for smokers

Smoke from cigarettes etc.

Smoking cigarettes with...
 006F713D    lea         eax,[ebp-488]
 006F7143    push        eax
 006F7144    mov         ecx,702F0C;'smiSapEnv2Sub2'
 006F7149    mov         edx,7027B4;'SapEnvironmentMenu'
 006F714E    mov         eax,esi
 006F7150    mov         edi,dword ptr [eax]
 006F7152    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7155    mov         edx,dword ptr [ebp-488]
 006F715B    mov         eax,dword ptr [ebx+0B04];TFXADMenuFrame.miSapEnv2Sub2:TMenuItem
 006F7161    call        TMenuItem.SetCaption
 006F7166    push        702F38;'Insect alarms

Photo sensor only alarm

Level 5'
 006F716B    lea         eax,[ebp-48C]
 006F7171    push        eax
 006F7172    mov         ecx,702FAC;'smiSapEnv3Sub1'
 006F7177    mov         edx,7027B4;'SapEnvironmentMenu'
 006F717C    mov         eax,esi
 006F717E    mov         edi,dword ptr [eax]
 006F7180    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7183    mov         edx,dword ptr [ebp-48C]
 006F7189    mov         eax,dword ptr [ebx+0AAC];TFXADMenuFrame.miSapEnv3Sub1:TMenuItem
 006F718F    call        TMenuItem.SetCaption
 006F7194    push        702FD8;'Condensation

Condensation in attics and other normally unheated spaces e.g. p...
 006F7199    lea         eax,[ebp-490]
 006F719F    push        eax
 006F71A0    mov         ecx,70312C;'smiSapEnv3Sub2'
 006F71A5    mov         edx,7027B4;'SapEnvironmentMenu'
 006F71AA    mov         eax,esi
 006F71AC    mov         edi,dword ptr [eax]
 006F71AE    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F71B1    mov         edx,dword ptr [ebp-490]
 006F71B7    mov         eax,dword ptr [ebx+0AB0];TFXADMenuFrame.miSapEnv3Sub2:TMenuItem
 006F71BD    call        TMenuItem.SetCaption
 006F71C2    push        703158;'Heavy manufacturing

Alarm from photo sensor due to dust/dirt.
This applicati...
 006F71C7    lea         eax,[ebp-494]
 006F71CD    push        eax
 006F71CE    mov         ecx,70324C;'smiSapEnv3Sub3'
 006F71D3    mov         edx,7027B4;'SapEnvironmentMenu'
 006F71D8    mov         eax,esi
 006F71DA    mov         edi,dword ptr [eax]
 006F71DC    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F71DF    mov         edx,dword ptr [ebp-494]
 006F71E5    mov         eax,dword ptr [ebx+0AB4];TFXADMenuFrame.miSapEnv3Sub3:TMenuItem
 006F71EB    call        TMenuItem.SetCaption
 006F71F0    push        703278;'Strobes in industrial areas

Alarm from photo sensor due to light dazzling and...
 006F71F5    lea         eax,[ebp-498]
 006F71FB    push        eax
 006F71FC    mov         ecx,703368;'smiSapEnv3Sub4'
 006F7201    mov         edx,7027B4;'SapEnvironmentMenu'
 006F7206    mov         eax,esi
 006F7208    mov         edi,dword ptr [eax]
 006F720A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F720D    mov         edx,dword ptr [ebp-498]
 006F7213    mov         eax,dword ptr [ebx+0AB8];TFXADMenuFrame.miSapEnv3Sub4:TMenuItem
 006F7219    call        TMenuItem.SetCaption
 006F721E    push        703394;'Dusty environments

Dusty environments and settled dust turbulence in the cham...
 006F7223    lea         eax,[ebp-49C]
 006F7229    push        eax
 006F722A    mov         ecx,7034CC;'smiSapEnv4Sub1'
 006F722F    mov         edx,7027B4;'SapEnvironmentMenu'
 006F7234    mov         eax,esi
 006F7236    mov         edi,dword ptr [eax]
 006F7238    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F723B    mov         edx,dword ptr [ebp-49C]
 006F7241    mov         eax,dword ptr [ebx+0ABC];TFXADMenuFrame.miSapEnv4Sub1:TMenuItem
 006F7247    call        TMenuItem.SetCaption
 006F724C    push        7034F8;'AHU rooms and lift motor rooms

Alarm form photo sensor due to dust burst.

...
 006F7251    lea         eax,[ebp-4A0]
 006F7257    push        eax
 006F7258    mov         ecx,7035B4;'smiSapEnv4Sub2'
 006F725D    mov         edx,7027B4;'SapEnvironmentMenu'
 006F7262    mov         eax,esi
 006F7264    mov         edi,dword ptr [eax]
 006F7266    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7269    mov         edx,dword ptr [ebp-4A0]
 006F726F    mov         eax,dword ptr [ebx+0AC0];TFXADMenuFrame.miSapEnv4Sub2:TMenuItem
 006F7275    call        TMenuItem.SetCaption
 006F727A    push        7035E0;'Synthetic smoke

Synthetic smoke in discotheques and dazzling lights from stro...
 006F727F    lea         eax,[ebp-4A4]
 006F7285    push        eax
 006F7286    mov         ecx,7037C4;'smiSapEnv5Sub1'
 006F728B    mov         edx,7027B4;'SapEnvironmentMenu'
 006F7290    mov         eax,esi
 006F7292    mov         edi,dword ptr [eax]
 006F7294    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7297    mov         edx,dword ptr [ebp-4A4]
 006F729D    mov         eax,dword ptr [ebx+0AC4];TFXADMenuFrame.miSapEnv5Sub1:TMenuItem
 006F72A3    call        TMenuItem.SetCaption
 006F72A8    push        7037F0;'Bar Areas

Alarm from photo sensor due to steam from glass washers and cigaret...
 006F72AD    lea         eax,[ebp-4A8]
 006F72B3    push        eax
 006F72B4    mov         ecx,7038C8;'smiSapEnv5Sub2'
 006F72B9    mov         edx,7027B4;'SapEnvironmentMenu'
 006F72BE    mov         eax,esi
 006F72C0    mov         edi,dword ptr [eax]
 006F72C2    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F72C5    mov         edx,dword ptr [ebp-4A8]
 006F72CB    mov         eax,dword ptr [ebx+0AC8];TFXADMenuFrame.miSapEnv5Sub2:TMenuItem
 006F72D1    call        TMenuItem.SetCaption
 006F72D6    push        7038F4;'Smoking area

Alarm from photo and CO sensors response due to cigarettes etc....
 006F72DB    lea         eax,[ebp-4AC]
 006F72E1    push        eax
 006F72E2    mov         ecx,7039B8;'smiSapEnv5Sub3'
 006F72E7    mov         edx,7027B4;'SapEnvironmentMenu'
 006F72EC    mov         eax,esi
 006F72EE    mov         edi,dword ptr [eax]
 006F72F0    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F72F3    mov         edx,dword ptr [ebp-4AC]
 006F72F9    mov         eax,dword ptr [ebx+0ACC];TFXADMenuFrame.miSapEnv5Sub3:TMenuItem
 006F72FF    call        TMenuItem.SetCaption
 006F7304    push        7039E4;'Car parks and loading bays

Car parks and loading bay with trucks having upwar...
 006F7309    lea         eax,[ebp-4B0]
 006F730F    push        eax
 006F7310    mov         ecx,703B44;'smiSapEnv6Sub1'
 006F7315    mov         edx,7027B4;'SapEnvironmentMenu'
 006F731A    mov         eax,esi
 006F731C    mov         edi,dword ptr [eax]
 006F731E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7321    mov         edx,dword ptr [ebp-4B0]
 006F7327    mov         eax,dword ptr [ebx+0AD0];TFXADMenuFrame.miSapEnv6Sub1:TMenuItem
 006F732D    call        TMenuItem.SetCaption
 006F7332    push        703B70;'Kitchens

Kitchens including industrial, canteens, and retirement homes

Lev...
 006F7337    lea         eax,[ebp-4B4]
 006F733D    push        eax
 006F733E    mov         ecx,703C28;'smiSapEnv6Sub2'
 006F7343    mov         edx,7027B4;'SapEnvironmentMenu'
 006F7348    mov         eax,esi
 006F734A    mov         edi,dword ptr [eax]
 006F734C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F734F    mov         edx,dword ptr [ebp-4B4]
 006F7355    mov         eax,dword ptr [ebx+0AD4];TFXADMenuFrame.miSapEnv6Sub2:TMenuItem
 006F735B    call        TMenuItem.SetCaption
 006F7360    push        703C54;'Paint shops and repair shops

Alarm from photo and rate of rise sensors. This ...
 006F7365    lea         eax,[ebp-4B8]
 006F736B    push        eax
 006F736C    mov         ecx,703DA0;'smiSapEnv7Sub1'
 006F7371    mov         edx,7027B4;'SapEnvironmentMenu'
 006F7376    mov         eax,esi
 006F7378    mov         edi,dword ptr [eax]
 006F737A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F737D    mov         edx,dword ptr [ebp-4B8]
 006F7383    mov         eax,dword ptr [ebx+0AD8];TFXADMenuFrame.miSapEnv7Sub1:TMenuItem
 006F7389    call        TMenuItem.SetCaption
 006F738E    push        703DCC;'Long lasting optical stimulus

Special disco fog, anti burglar smoke, misty/fo...
 006F7393    lea         eax,[ebp-4BC]
 006F7399    push        eax
 006F739A    mov         ecx,703EAC;'smiSapEnv8Sub1'
 006F739F    mov         edx,7027B4;'SapEnvironmentMenu'
 006F73A4    mov         eax,esi
 006F73A6    mov         edi,dword ptr [eax]
 006F73A8    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F73AB    mov         edx,dword ptr [ebp-4BC]
 006F73B1    mov         eax,dword ptr [ebx+0ADC];TFXADMenuFrame.miSapEnv8Sub1:TMenuItem
 006F73B7    call        TMenuItem.SetCaption
 006F73BC    push        703ED8;'0 - Conventional Zone'
 006F73C1    lea         eax,[ebp-4C0]
 006F73C7    push        eax
 006F73C8    mov         ecx,703F10;'smiInpConvZone'
 006F73CD    mov         edx,703F3C;'InpFuncMenu'
 006F73D2    mov         eax,esi
 006F73D4    mov         edi,dword ptr [eax]
 006F73D6    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F73D9    mov         edx,dword ptr [ebp-4C0]
 006F73DF    mov         eax,dword ptr [ebx+60C];TFXADMenuFrame.miComCzmZone:TMenuItem
 006F73E5    call        TMenuItem.SetCaption
 006F73EA    push        703F60;'1 - Beam Detector'
 006F73EF    lea         eax,[ebp-4C4]
 006F73F5    push        eax
 006F73F6    mov         ecx,703F90;'smiInpBeamDetector'
 006F73FB    mov         edx,703F3C;'InpFuncMenu'
 006F7400    mov         eax,esi
 006F7402    mov         edi,dword ptr [eax]
 006F7404    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7407    mov         edx,dword ptr [ebp-4C4]
 006F740D    mov         eax,dword ptr [ebx+610];TFXADMenuFrame.miComCzmBeam:TMenuItem
 006F7413    call        TMenuItem.SetCaption
 006F7418    push        6F95C8;'0 - Not in use'
 006F741D    lea         eax,[ebp-4C8]
 006F7423    push        eax
 006F7424    mov         ecx,703FC4;'smiSapNotUsed'
 006F7429    mov         edx,703FEC;'SapTypeMenu'
 006F742E    mov         eax,esi
 006F7430    mov         edi,dword ptr [eax]
 006F7432    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7435    mov         edx,dword ptr [ebp-4C8]
 006F743B    mov         eax,dword ptr [ebx+640];TFXADMenuFrame.miSapNotUsed:TMenuItem
 006F7441    call        TMenuItem.SetCaption
 006F7446    push        704010;'1 - Ionizating sensor'
 006F744B    lea         eax,[ebp-4CC]
 006F7451    push        eax
 006F7452    mov         ecx,704048;'smiSapIon'
 006F7457    mov         edx,703FEC;'SapTypeMenu'
 006F745C    mov         eax,esi
 006F745E    mov         edi,dword ptr [eax]
 006F7460    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7463    mov         edx,dword ptr [ebp-4CC]
 006F7469    mov         eax,dword ptr [ebx+644];TFXADMenuFrame.miSapIon:TMenuItem
 006F746F    call        TMenuItem.SetCaption
 006F7474    push        704068;'0 - AP200 series'
 006F7479    lea         eax,[ebp-4D0]
 006F747F    push        eax
 006F7480    mov         ecx,704098;'smiSapIonAdv'
 006F7485    mov         edx,703FEC;'SapTypeMenu'
 006F748A    mov         eax,esi
 006F748C    mov         edi,dword ptr [eax]
 006F748E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7491    mov         edx,dword ptr [ebp-4D0]
 006F7497    mov         eax,dword ptr [ebx+6B4];TFXADMenuFrame.miSapIonAdv:TMenuItem
 006F749D    call        TMenuItem.SetCaption
 006F74A2    push        7040C0;'1 - 200 series
1251E      Analogue Ionization Detector
ESMI1251E  Analogue Ion...
 006F74A7    lea         eax,[ebp-4D4]
 006F74AD    push        eax
 006F74AE    mov         ecx,704190;'smiSapIonClip'
 006F74B3    mov         edx,703FEC;'SapTypeMenu'
 006F74B8    mov         eax,esi
 006F74BA    mov         edi,dword ptr [eax]
 006F74BC    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F74BF    mov         edx,dword ptr [ebp-4D4]
 006F74C5    mov         eax,dword ptr [ebx+6B8];TFXADMenuFrame.miSapIonClip:TMenuItem
 006F74CB    call        TMenuItem.SetCaption
 006F74D0    push        6F9760;'2 - Optical sensor'
 006F74D5    lea         eax,[ebp-4D8]
 006F74DB    push        eax
 006F74DC    mov         ecx,7041B8;'smiSapOpt'
 006F74E1    mov         edx,703FEC;'SapTypeMenu'
 006F74E6    mov         eax,esi
 006F74E8    mov         edi,dword ptr [eax]
 006F74EA    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F74ED    mov         edx,dword ptr [ebp-4D8]
 006F74F3    mov         eax,dword ptr [ebx+648];TFXADMenuFrame.miSapOpt:TMenuItem
 006F74F9    call        TMenuItem.SetCaption
 006F74FE    push        7041D8;'0 - AP200 series
ESMI22051E  Photo-Electronic Smoke Sensor
ESMI22051EI Photo-E...
 006F7503    lea         eax,[ebp-4DC]
 006F7509    push        eax
 006F750A    mov         ecx,7042B4;'smiSapOptAdv'
 006F750F    mov         edx,703FEC;'SapTypeMenu'
 006F7514    mov         eax,esi
 006F7516    mov         edi,dword ptr [eax]
 006F7518    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F751B    mov         edx,dword ptr [ebp-4DC]
 006F7521    mov         eax,dword ptr [ebx+6BC];TFXADMenuFrame.miSapOptAdv:TMenuItem
 006F7527    call        TMenuItem.SetCaption
 006F752C    push        7042DC;'1 - 200 series
2251
2251E
2251EM
ND2251EM
ESMI2251EM
2251EIS
22051EISE'
 006F7531    lea         eax,[ebp-4E0]
 006F7537    push        eax
 006F7538    mov         ecx,704384;'smiSapOptClip'
 006F753D    mov         edx,703FEC;'SapTypeMenu'
 006F7542    mov         eax,esi
 006F7544    mov         edi,dword ptr [eax]
 006F7546    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7549    mov         edx,dword ptr [ebp-4E0]
 006F754F    mov         eax,dword ptr [ebx+6C0];TFXADMenuFrame.miSapOptClip:TMenuItem
 006F7555    call        TMenuItem.SetCaption
 006F755A    push        7043AC;'4 - Filtrex'
 006F755F    lea         eax,[ebp-4E4]
 006F7565    push        eax
 006F7566    mov         ecx,7043D0;'smiSapFiltrex'
 006F756B    mov         edx,703FEC;'SapTypeMenu'
 006F7570    mov         eax,esi
 006F7572    mov         edi,dword ptr [eax]
 006F7574    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7577    mov         edx,dword ptr [ebp-4E4]
 006F757D    mov         eax,dword ptr [ebx+64C];TFXADMenuFrame.miSapFiltrex:TMenuItem
 006F7583    call        TMenuItem.SetCaption
 006F7588    push        704068;'0 - AP200 series'
 006F758D    lea         eax,[ebp-4E8]
 006F7593    push        eax
 006F7594    mov         ecx,7043F8;'smiSapAdv'
 006F7599    mov         edx,703FEC;'SapTypeMenu'
 006F759E    mov         eax,esi
 006F75A0    mov         edi,dword ptr [eax]
 006F75A2    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F75A5    mov         edx,dword ptr [ebp-4E8]
 006F75AB    mov         eax,dword ptr [ebx+6C4];TFXADMenuFrame.miSapFiltrexAdv:TMenuItem
 006F75B1    call        TMenuItem.SetCaption
 006F75B6    push        704418;'1 - 200 series'
 006F75BB    lea         eax,[ebp-4EC]
 006F75C1    push        eax
 006F75C2    mov         ecx,704444;'smiSapS200'
 006F75C7    mov         edx,703FEC;'SapTypeMenu'
 006F75CC    mov         eax,esi
 006F75CE    mov         edi,dword ptr [eax]
 006F75D0    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F75D3    mov         edx,dword ptr [ebp-4EC]
 006F75D9    mov         eax,dword ptr [ebx+6C8];TFXADMenuFrame.miSapFiltrexClip:TMenuItem
 006F75DF    call        TMenuItem.SetCaption
 006F75E4    push        704468;'3 - Stat. thermal sensor'
 006F75E9    lea         eax,[ebp-4F0]
 006F75EF    push        eax
 006F75F0    mov         ecx,7044A8;'smiSapTempStat'
 006F75F5    mov         edx,703FEC;'SapTypeMenu'
 006F75FA    mov         eax,esi
 006F75FC    mov         edi,dword ptr [eax]
 006F75FE    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7601    mov         edx,dword ptr [ebp-4F0]
 006F7607    mov         eax,dword ptr [ebx+650];TFXADMenuFrame.miSapTempStat:TMenuItem
 006F760D    call        TMenuItem.SetCaption
 006F7612    push        7044D4;'0 - AP200 series
ESMI52051E  Thermal Sensor
ESMI52051EI Thermal Sensor'
 006F7617    lea         eax,[ebp-4F4]
 006F761D    push        eax
 006F761E    mov         ecx,704574;'smiSapTempStatAdv'
 006F7623    mov         edx,703FEC;'SapTypeMenu'
 006F7628    mov         eax,esi
 006F762A    mov         edi,dword ptr [eax]
 006F762C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F762F    mov         edx,dword ptr [ebp-4F4]
 006F7635    mov         eax,dword ptr [ebx+6CC];TFXADMenuFrame.miSapTempStatAdv:TMenuItem
 006F763B    call        TMenuItem.SetCaption
 006F7640    push        7045A4;'1 - 200 series
5551E
5251EM
ESMI5251EM
ESMI5251EME'
 006F7645    lea         eax,[ebp-4F8]
 006F764B    push        eax
 006F764C    mov         ecx,704620;'smiSapTempStatClip'
 006F7651    mov         edx,703FEC;'SapTypeMenu'
 006F7656    mov         eax,esi
 006F7658    mov         edi,dword ptr [eax]
 006F765A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F765D    mov         edx,dword ptr [ebp-4F8]
 006F7663    mov         eax,dword ptr [ebx+6D0];TFXADMenuFrame.miSapTempStatClip:TMenuItem
 006F7669    call        TMenuItem.SetCaption
 006F766E    push        704654;'G - ROR Thermal sensor'
 006F7673    lea         eax,[ebp-4FC]
 006F7679    push        eax
 006F767A    mov         ecx,704690;'smiSapTempRor'
 006F767F    mov         edx,703FEC;'SapTypeMenu'
 006F7684    mov         eax,esi
 006F7686    mov         edi,dword ptr [eax]
 006F7688    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F768B    mov         edx,dword ptr [ebp-4FC]
 006F7691    mov         eax,dword ptr [ebx+654];TFXADMenuFrame.miSapTempRor:TMenuItem
 006F7697    call        TMenuItem.SetCaption
 006F769C    push        7046B8;'0 - AP200 series
ESMI52051RE   Rate-of-Rise Thermal Sensor
ESMI52051REI  Rate-...
 006F76A1    lea         eax,[ebp-500]
 006F76A7    push        eax
 006F76A8    mov         ecx,704794;'smiSapTempRorAdv'
 006F76AD    mov         edx,703FEC;'SapTypeMenu'
 006F76B2    mov         eax,esi
 006F76B4    mov         edi,dword ptr [eax]
 006F76B6    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F76B9    mov         edx,dword ptr [ebp-500]
 006F76BF    mov         eax,dword ptr [ebx+6D4];TFXADMenuFrame.miSapTempRorAdv:TMenuItem
 006F76C5    call        TMenuItem.SetCaption
 006F76CA    push        7047C4;'1 - 200 series
5551REM
5251REM
ESMI5251REM'
 006F76CF    lea         eax,[ebp-504]
 006F76D5    push        eax
 006F76D6    mov         ecx,70482C;'smiSapTempRorClip'
 006F76DB    mov         edx,703FEC;'SapTypeMenu'
 006F76E0    mov         eax,esi
 006F76E2    mov         edi,dword ptr [eax]
 006F76E4    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F76E7    mov         edx,dword ptr [ebp-504]
 006F76ED    mov         eax,dword ptr [ebx+6D8];TFXADMenuFrame.miSapTempRorClip:TMenuItem
 006F76F3    call        TMenuItem.SetCaption
 006F76F8    push        70485C;'H - High temp. thermal'
 006F76FD    lea         eax,[ebp-508]
 006F7703    push        eax
 006F7704    mov         ecx,704898;'smiSapTempHigh'
 006F7709    mov         edx,703FEC;'SapTypeMenu'
 006F770E    mov         eax,esi
 006F7710    mov         edi,dword ptr [eax]
 006F7712    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7715    mov         edx,dword ptr [ebp-508]
 006F771B    mov         eax,dword ptr [ebx+658];TFXADMenuFrame.miSapTempHigh:TMenuItem
 006F7721    call        TMenuItem.SetCaption
 006F7726    push        7048C4;'0 - AP200 series
ESMI52051HTE   High Temperature Thermal Sensor
ESMI52051HTEI ...
 006F772B    lea         eax,[ebp-50C]
 006F7731    push        eax
 006F7732    mov         ecx,7049B4;'smiSapTempHighAdv'
 006F7737    mov         edx,703FEC;'SapTypeMenu'
 006F773C    mov         eax,esi
 006F773E    mov         edi,dword ptr [eax]
 006F7740    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7743    mov         edx,dword ptr [ebp-50C]
 006F7749    mov         eax,dword ptr [ebx+6DC];TFXADMenuFrame.miSapTempHighAdv:TMenuItem
 006F774F    call        TMenuItem.SetCaption
 006F7754    push        7049E4;'1 - 200 series
5551HTE
5251HTE
ESMI5251HTEM'
 006F7759    lea         eax,[ebp-510]
 006F775F    push        eax
 006F7760    mov         ecx,704A50;'smiSapTempHighClip'
 006F7765    mov         edx,703FEC;'SapTypeMenu'
 006F776A    mov         eax,esi
 006F776C    mov         edi,dword ptr [eax]
 006F776E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7771    mov         edx,dword ptr [ebp-510]
 006F7777    mov         eax,dword ptr [ebx+6E0];TFXADMenuFrame.miSapTempHighClip:TMenuItem
 006F777D    call        TMenuItem.SetCaption
 006F7782    push        6F9D18;'9 - Laser LZR-1'
 006F7787    lea         eax,[ebp-514]
 006F778D    push        eax
 006F778E    mov         ecx,704A84;'smiSapLaser1'
 006F7793    mov         edx,703FEC;'SapTypeMenu'
 006F7798    mov         eax,esi
 006F779A    mov         edi,dword ptr [eax]
 006F779C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F779F    mov         edx,dword ptr [ebp-514]
 006F77A5    mov         eax,dword ptr [ebx+668];TFXADMenuFrame.miSapLaser1:TMenuItem
 006F77AB    call        TMenuItem.SetCaption
 006F77B0    push        704068;'0 - AP200 series'
 006F77B5    lea         eax,[ebp-518]
 006F77BB    push        eax
 006F77BC    mov         ecx,704AAC;'smiSapLaser1Adv'
 006F77C1    mov         edx,703FEC;'SapTypeMenu'
 006F77C6    mov         eax,esi
 006F77C8    mov         edi,dword ptr [eax]
 006F77CA    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F77CD    mov         edx,dword ptr [ebp-518]
 006F77D3    mov         eax,dword ptr [ebx+6FC];TFXADMenuFrame.miSapLaser1Adv:TMenuItem
 006F77D9    call        TMenuItem.SetCaption
 006F77DE    push        704AD8;'1 - 200 series
LZR-1
LZR-1M'
 006F77E3    lea         eax,[ebp-51C]
 006F77E9    push        eax
 006F77EA    mov         ecx,704B20;'smiSapLaser1Clip'
 006F77EF    mov         edx,703FEC;'SapTypeMenu'
 006F77F4    mov         eax,esi
 006F77F6    mov         edi,dword ptr [eax]
 006F77F8    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F77FB    mov         edx,dword ptr [ebp-51C]
 006F7801    mov         eax,dword ptr [ebx+700];TFXADMenuFrame.miSapLaser1Clip:TMenuItem
 006F7807    call        TMenuItem.SetCaption
 006F780C    push        6F9DD0;'A - Laser 7251'
 006F7811    lea         eax,[ebp-520]
 006F7817    push        eax
 006F7818    mov         ecx,704B50;'smiSapLaser2'
 006F781D    mov         edx,703FEC;'SapTypeMenu'
 006F7822    mov         eax,esi
 006F7824    mov         edi,dword ptr [eax]
 006F7826    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7829    mov         edx,dword ptr [ebp-520]
 006F782F    mov         eax,dword ptr [ebx+66C];TFXADMenuFrame.miSapLaser2:TMenuItem
 006F7835    call        TMenuItem.SetCaption
 006F783A    push        704068;'0 - AP200 series'
 006F783F    lea         eax,[ebp-524]
 006F7845    push        eax
 006F7846    mov         ecx,704B78;'smiSapLaser2Adv'
 006F784B    mov         edx,703FEC;'SapTypeMenu'
 006F7850    mov         eax,esi
 006F7852    mov         edi,dword ptr [eax]
 006F7854    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7857    mov         edx,dword ptr [ebp-524]
 006F785D    mov         eax,dword ptr [ebx+704];TFXADMenuFrame.miSapLaser2Adv:TMenuItem
 006F7863    call        TMenuItem.SetCaption
 006F7868    push        704BA4;'1 - 200 series
7251  Pinnacle'
 006F786D    lea         eax,[ebp-528]
 006F7873    push        eax
 006F7874    mov         ecx,704BF0;'smiSapLaser2Clip'
 006F7879    mov         edx,703FEC;'SapTypeMenu'
 006F787E    mov         eax,esi
 006F7880    mov         edi,dword ptr [eax]
 006F7882    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7885    mov         edx,dword ptr [ebp-528]
 006F788B    mov         eax,dword ptr [ebx+708];TFXADMenuFrame.miSapLaser2Clip:TMenuItem
 006F7891    call        TMenuItem.SetCaption
 006F7896    push        704C20;'B - Multicrit. sensor'
 006F789B    lea         eax,[ebp-52C]
 006F78A1    push        eax
 006F78A2    mov         ecx,704C58;'smiSapMulti'
 006F78A7    mov         edx,703FEC;'SapTypeMenu'
 006F78AC    mov         eax,esi
 006F78AE    mov         edi,dword ptr [eax]
 006F78B0    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F78B3    mov         edx,dword ptr [ebp-52C]
 006F78B9    mov         eax,dword ptr [ebx+65C];TFXADMenuFrame.miSapMulti:TMenuItem
 006F78BF    call        TMenuItem.SetCaption
 006F78C4    push        704C7C;'0 - AP200 series
ESMI22051TE     Photo Thermal Fire Sensor
ESMI22051TEI    Pho...
 006F78C9    lea         eax,[ebp-530]
 006F78CF    push        eax
 006F78D0    mov         ecx,704D58;'smiSapMultiAdv'
 006F78D5    mov         edx,703FEC;'SapTypeMenu'
 006F78DA    mov         eax,esi
 006F78DC    mov         edi,dword ptr [eax]
 006F78DE    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F78E1    mov         edx,dword ptr [ebp-530]
 006F78E7    mov         eax,dword ptr [ebx+6E4];TFXADMenuFrame.miSapMultiAdv:TMenuItem
 006F78ED    call        TMenuItem.SetCaption
 006F78F2    push        704D84;'1 - 200 series
2251TEM         Multi-Criteria Fire Sensor
ESMI2251TEM     Mult...
 006F78F7    lea         eax,[ebp-534]
 006F78FD    push        eax
 006F78FE    mov         ecx,704EB8;'smiSapMultiClip'
 006F7903    mov         edx,703FEC;'SapTypeMenu'
 006F7908    mov         eax,esi
 006F790A    mov         edi,dword ptr [eax]
 006F790C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F790F    mov         edx,dword ptr [ebp-534]
 006F7915    mov         eax,dword ptr [ebx+6E8];TFXADMenuFrame.miSapMultiClip:TMenuItem
 006F791B    call        TMenuItem.SetCaption
 006F7920    push        704EE4;'D - Three crit. sensor'
 006F7925    lea         eax,[ebp-538]
 006F792B    push        eax
 006F792C    mov         ecx,704F20;'smiSapPtir'
 006F7931    mov         edx,703FEC;'SapTypeMenu'
 006F7936    mov         eax,esi
 006F7938    mov         edi,dword ptr [eax]
 006F793A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F793D    mov         edx,dword ptr [ebp-538]
 006F7943    mov         eax,dword ptr [ebx+660];TFXADMenuFrame.miSapPtir:TMenuItem
 006F7949    call        TMenuItem.SetCaption
 006F794E    push        704F44;'0 - AP200 series
ESMI22051TLE    Multi-Criteria Fire Sensor
ESMI22051TLEI   Mu...
 006F7953    lea         eax,[ebp-53C]
 006F7959    push        eax
 006F795A    mov         ecx,705024;'smiSapPtirAdv'
 006F795F    mov         edx,703FEC;'SapTypeMenu'
 006F7964    mov         eax,esi
 006F7966    mov         edi,dword ptr [eax]
 006F7968    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F796B    mov         edx,dword ptr [ebp-53C]
 006F7971    mov         eax,dword ptr [ebx+6EC];TFXADMenuFrame.miSapPtirAdv:TMenuItem
 006F7977    call        TMenuItem.SetCaption
 006F797C    push        704418;'1 - 200 series'
 006F7981    lea         eax,[ebp-540]
 006F7987    push        eax
 006F7988    mov         ecx,70504C;'smiSapPtirClip'
 006F798D    mov         edx,703FEC;'SapTypeMenu'
 006F7992    mov         eax,esi
 006F7994    mov         edi,dword ptr [eax]
 006F7996    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7999    mov         edx,dword ptr [ebp-540]
 006F799F    mov         eax,dword ptr [ebx+6F0];TFXADMenuFrame.miSapPtirClip:TMenuItem
 006F79A5    call        TMenuItem.SetCaption
 006F79AA    push        705078;'E - Four crit. sensor'
 006F79AF    lea         eax,[ebp-544]
 006F79B5    push        eax
 006F79B6    mov         ecx,7050B0;'smiSapCoptir'
 006F79BB    mov         edx,703FEC;'SapTypeMenu'
 006F79C0    mov         eax,esi
 006F79C2    mov         edi,dword ptr [eax]
 006F79C4    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F79C7    mov         edx,dword ptr [ebp-544]
 006F79CD    mov         eax,dword ptr [ebx+664];TFXADMenuFrame.miSapCoptir:TMenuItem
 006F79D3    call        TMenuItem.SetCaption
 006F79D8    push        7050D8;'0 - AP200 series
ESMI2251CTLE-IV Multi-Criteria Fire Sensor
ESMI2251CTLE-W  Mu...
 006F79DD    lea         eax,[ebp-548]
 006F79E3    push        eax
 006F79E4    mov         ecx,7051B8;'smiSapCoptirAdv'
 006F79E9    mov         edx,703FEC;'SapTypeMenu'
 006F79EE    mov         eax,esi
 006F79F0    mov         edi,dword ptr [eax]
 006F79F2    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F79F5    mov         edx,dword ptr [ebp-548]
 006F79FB    mov         eax,dword ptr [ebx+6F4];TFXADMenuFrame.miSapCoptirAdv:TMenuItem
 006F7A01    call        TMenuItem.SetCaption
 006F7A06    push        704418;'1 - 200 series'
 006F7A0B    lea         eax,[ebp-54C]
 006F7A11    push        eax
 006F7A12    mov         ecx,7051E4;'smiSapCoptirClip'
 006F7A17    mov         edx,703FEC;'SapTypeMenu'
 006F7A1C    mov         eax,esi
 006F7A1E    mov         edi,dword ptr [eax]
 006F7A20    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7A23    mov         edx,dword ptr [ebp-54C]
 006F7A29    mov         eax,dword ptr [ebx+6F8];TFXADMenuFrame.miSapCoptirClip:TMenuItem
 006F7A2F    call        TMenuItem.SetCaption
 006F7A34    push        6FA3AC;'F - Beam sensor'
 006F7A39    lea         eax,[ebp-550]
 006F7A3F    push        eax
 006F7A40    mov         ecx,705214;'smiSapBeam'
 006F7A45    mov         edx,703FEC;'SapTypeMenu'
 006F7A4A    mov         eax,esi
 006F7A4C    mov         edi,dword ptr [eax]
 006F7A4E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7A51    mov         edx,dword ptr [ebp-550]
 006F7A57    mov         eax,dword ptr [ebx+670];TFXADMenuFrame.miSapBeam:TMenuItem
 006F7A5D    call        TMenuItem.SetCaption
 006F7A62    push        705238;'0 - AP200 series
EB6500A'
 006F7A67    lea         eax,[ebp-554]
 006F7A6D    push        eax
 006F7A6E    mov         ecx,705278;'smiSapBeamAdv'
 006F7A73    mov         edx,703FEC;'SapTypeMenu'
 006F7A78    mov         eax,esi
 006F7A7A    mov         edi,dword ptr [eax]
 006F7A7C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7A7F    mov         edx,dword ptr [ebp-554]
 006F7A85    mov         eax,dword ptr [ebx+70C];TFXADMenuFrame.miSapBeamAdv:TMenuItem
 006F7A8B    call        TMenuItem.SetCaption
 006F7A90    push        7052A0;'1 - 200 series
6500
6500S
EB-6500  Analogue Optical Beam Detector
EB-6500S A...
 006F7A95    lea         eax,[ebp-558]
 006F7A9B    push        eax
 006F7A9C    mov         ecx,705388;'smiSapBeamClip'
 006F7AA1    mov         edx,703FEC;'SapTypeMenu'
 006F7AA6    mov         eax,esi
 006F7AA8    mov         edi,dword ptr [eax]
 006F7AAA    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7AAD    mov         edx,dword ptr [ebp-558]
 006F7AB3    mov         eax,dword ptr [ebx+710];TFXADMenuFrame.miSapBeamClip:TMenuItem
 006F7AB9    call        TMenuItem.SetCaption
 006F7ABE    push        7053B4;'Y - Beam sensor w. testfilter'
 006F7AC3    lea         eax,[ebp-55C]
 006F7AC9    push        eax
 006F7ACA    mov         ecx,7053FC;'smiSapBeamTester'
 006F7ACF    mov         edx,703FEC;'SapTypeMenu'
 006F7AD4    mov         eax,esi
 006F7AD6    mov         edi,dword ptr [eax]
 006F7AD8    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7ADB    mov         edx,dword ptr [ebp-55C]
 006F7AE1    mov         eax,dword ptr [ebx+87C];TFXADMenuFrame.miSapBeamTester:TMenuItem
 006F7AE7    call        TMenuItem.SetCaption
 006F7AEC    push        70542C;'0 - AP200 series
EB6500SA'
 006F7AF1    lea         eax,[ebp-560]
 006F7AF7    push        eax
 006F7AF8    mov         ecx,705470;'smiSapBeamTesterAdv'
 006F7AFD    mov         edx,703FEC;'SapTypeMenu'
 006F7B02    mov         eax,esi
 006F7B04    mov         edi,dword ptr [eax]
 006F7B06    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7B09    mov         edx,dword ptr [ebp-560]
 006F7B0F    mov         eax,dword ptr [ebx+0B08];TFXADMenuFrame.miSapBeamTesterAdv:TMenuItem
 006F7B15    call        TMenuItem.SetCaption
 006F7B1A    push        7054A4;'I - Manual Call Point indoor'
 006F7B1F    lea         eax,[ebp-564]
 006F7B25    push        eax
 006F7B26    mov         ecx,7054EC;'smiSapMcpIndoor'
 006F7B2B    mov         edx,703FEC;'SapTypeMenu'
 006F7B30    mov         eax,esi
 006F7B32    mov         edi,dword ptr [eax]
 006F7B34    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7B37    mov         edx,dword ptr [ebp-564]
 006F7B3D    mov         eax,dword ptr [ebx+674];TFXADMenuFrame.miSapMcpIndoor:TMenuItem
 006F7B43    call        TMenuItem.SetCaption
 006F7B48    push        705518;'0 - AP200 series
MCP5A-…'
 006F7B4D    lea         eax,[ebp-568]
 006F7B53    push        eax
 006F7B54    mov         ecx,705558;'smiSapMcpIndoorAdv'
 006F7B59    mov         edx,703FEC;'SapTypeMenu'
 006F7B5E    mov         eax,esi
 006F7B60    mov         edi,dword ptr [eax]
 006F7B62    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7B65    mov         edx,dword ptr [ebp-568]
 006F7B6B    mov         eax,dword ptr [ebx+0B0C];TFXADMenuFrame.miSapMcpIndoorAdv:TMenuItem
 006F7B71    call        TMenuItem.SetCaption
 006F7B76    push        70558C;'J - Manual Call Point outdoor'
 006F7B7B    lea         eax,[ebp-56C]
 006F7B81    push        eax
 006F7B82    mov         ecx,7055D4;'smiSapMcpOutdoor'
 006F7B87    mov         edx,703FEC;'SapTypeMenu'
 006F7B8C    mov         eax,esi
 006F7B8E    mov         edi,dword ptr [eax]
 006F7B90    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7B93    mov         edx,dword ptr [ebp-56C]
 006F7B99    mov         eax,dword ptr [ebx+678];TFXADMenuFrame.miSapMcpOutdoor:TMenuItem
 006F7B9F    call        TMenuItem.SetCaption
 006F7BA4    push        705604;'0 - AP200 series
WCP5A-…'
 006F7BA9    lea         eax,[ebp-570]
 006F7BAF    push        eax
 006F7BB0    mov         ecx,705644;'smiSapMcpOutdoorAdv'
 006F7BB5    mov         edx,703FEC;'SapTypeMenu'
 006F7BBA    mov         eax,esi
 006F7BBC    mov         edi,dword ptr [eax]
 006F7BBE    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7BC1    mov         edx,dword ptr [ebp-570]
 006F7BC7    mov         eax,dword ptr [ebx+0B10];TFXADMenuFrame.miSapMcpOutdoorAdv:TMenuItem
 006F7BCD    call        TMenuItem.SetCaption
 006F7BD2    push        705678;'5 - Single Input module'
 006F7BD7    lea         eax,[ebp-574]
 006F7BDD    push        eax
 006F7BDE    mov         ecx,7056B4;'smiSap1In'
 006F7BE3    mov         edx,703FEC;'SapTypeMenu'
 006F7BE8    mov         eax,esi
 006F7BEA    mov         edi,dword ptr [eax]
 006F7BEC    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7BEF    mov         edx,dword ptr [ebp-574]
 006F7BF5    mov         eax,dword ptr [ebx+67C];TFXADMenuFrame.miSap1In:TMenuItem
 006F7BFB    call        TMenuItem.SetCaption
 006F7C00    push        7056D4;'0 - AP200 series
EM210E  Single Input Module'
 006F7C05    lea         eax,[ebp-578]
 006F7C0B    push        eax
 006F7C0C    mov         ecx,70573C;'smiSap1InAdv'
 006F7C11    mov         edx,703FEC;'SapTypeMenu'
 006F7C16    mov         eax,esi
 006F7C18    mov         edi,dword ptr [eax]
 006F7C1A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7C1D    mov         edx,dword ptr [ebp-578]
 006F7C23    mov         eax,dword ptr [ebx+718];TFXADMenuFrame.miSap1InAdv:TMenuItem
 006F7C29    call        TMenuItem.SetCaption
 006F7C2E    push        705764;'1 - 200 series
EM210E  Single Input Module
M500KAC
M500ME
M501ME
M503ME
ES...
 006F7C33    lea         eax,[ebp-57C]
 006F7C39    push        eax
 006F7C3A    mov         ecx,705840;'smiSap1InClip'
 006F7C3F    mov         edx,703FEC;'SapTypeMenu'
 006F7C44    mov         eax,esi
 006F7C46    mov         edi,dword ptr [eax]
 006F7C48    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7C4B    mov         edx,dword ptr [ebp-57C]
 006F7C51    mov         eax,dword ptr [ebx+71C];TFXADMenuFrame.miSap1InClip:TMenuItem
 006F7C57    call        TMenuItem.SetCaption
 006F7C5C    push        705868;'K - Single Input micro module'
 006F7C61    lea         eax,[ebp-580]
 006F7C67    push        eax
 006F7C68    mov         ecx,7058B0;'smiSap1InMicro'
 006F7C6D    mov         edx,703FEC;'SapTypeMenu'
 006F7C72    mov         eax,esi
 006F7C74    mov         edi,dword ptr [eax]
 006F7C76    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7C79    mov         edx,dword ptr [ebp-580]
 006F7C7F    mov         eax,dword ptr [ebx+680];TFXADMenuFrame.miSap1InMicro:TMenuItem
 006F7C85    call        TMenuItem.SetCaption
 006F7C8A    push        7058DC;'Z - Single Input mini module'
 006F7C8F    lea         eax,[ebp-584]
 006F7C95    push        eax
 006F7C96    mov         ecx,705924;'smiSap1InMini'
 006F7C9B    mov         edx,703FEC;'SapTypeMenu'
 006F7CA0    mov         eax,esi
 006F7CA2    mov         edi,dword ptr [eax]
 006F7CA4    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7CA7    mov         edx,dword ptr [ebp-584]
 006F7CAD    mov         eax,dword ptr [ebx+0B68];TFXADMenuFrame.miSap1InMini:TMenuItem
 006F7CB3    call        TMenuItem.SetCaption
 006F7CB8    push        70594C;'0 - AP200 series
M501MEA  Monitor Module'
 006F7CBD    lea         eax,[ebp-588]
 006F7CC3    push        eax
 006F7CC4    mov         ecx,7059AC;'smiSap1InMiniAdv'
 006F7CC9    mov         edx,703FEC;'SapTypeMenu'
 006F7CCE    mov         eax,esi
 006F7CD0    mov         edi,dword ptr [eax]
 006F7CD2    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7CD5    mov         edx,dword ptr [ebp-588]
 006F7CDB    mov         eax,dword ptr [ebx+0B70];TFXADMenuFrame.miSap1InMiniAdv:TMenuItem
 006F7CE1    call        TMenuItem.SetCaption
 006F7CE6    push        7059DC;'L - Dual Input module'
 006F7CEB    lea         eax,[ebp-58C]
 006F7CF1    push        eax
 006F7CF2    mov         ecx,705A14;'smiSap2In'
 006F7CF7    mov         edx,703FEC;'SapTypeMenu'
 006F7CFC    mov         eax,esi
 006F7CFE    mov         edi,dword ptr [eax]
 006F7D00    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7D03    mov         edx,dword ptr [ebp-58C]
 006F7D09    mov         eax,dword ptr [ebx+684];TFXADMenuFrame.miSap2In:TMenuItem
 006F7D0F    call        TMenuItem.SetCaption
 006F7D14    push        705A34;'0 - AP200 series
EM220E  Dual Input Module'
 006F7D19    lea         eax,[ebp-590]
 006F7D1F    push        eax
 006F7D20    mov         ecx,705A98;'smiSap2InAdv'
 006F7D25    mov         edx,703FEC;'SapTypeMenu'
 006F7D2A    mov         eax,esi
 006F7D2C    mov         edi,dword ptr [eax]
 006F7D2E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7D31    mov         edx,dword ptr [ebp-590]
 006F7D37    mov         eax,dword ptr [ebx+0B14];TFXADMenuFrame.miSap2InAdv:TMenuItem
 006F7D3D    call        TMenuItem.SetCaption
 006F7D42    push        705AC0;'M - Dual Input, Single Output module'
 006F7D47    lea         eax,[ebp-594]
 006F7D4D    push        eax
 006F7D4E    mov         ecx,705B18;'smiSap2In1Out'
 006F7D53    mov         edx,703FEC;'SapTypeMenu'
 006F7D58    mov         eax,esi
 006F7D5A    mov         edi,dword ptr [eax]
 006F7D5C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7D5F    mov         edx,dword ptr [ebp-594]
 006F7D65    mov         eax,dword ptr [ebx+688];TFXADMenuFrame.miSap2In1Out:TMenuItem
 006F7D6B    call        TMenuItem.SetCaption
 006F7D70    push        705B40;'0 - AP200 series
EM221E  Dual Input Single Output Module'
 006F7D75    lea         eax,[ebp-598]
 006F7D7B    push        eax
 006F7D7C    mov         ecx,705BC0;'smiSap2In1OutAdv'
 006F7D81    mov         edx,703FEC;'SapTypeMenu'
 006F7D86    mov         eax,esi
 006F7D88    mov         edi,dword ptr [eax]
 006F7D8A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7D8D    mov         edx,dword ptr [ebp-598]
 006F7D93    mov         eax,dword ptr [ebx+0B18];TFXADMenuFrame.miSap2In1OutAdv:TMenuItem
 006F7D99    call        TMenuItem.SetCaption
 006F7D9E    push        705BF0;'6 - Single Output module'
 006F7DA3    lea         eax,[ebp-59C]
 006F7DA9    push        eax
 006F7DAA    mov         ecx,705C30;'smiSap1Out'
 006F7DAF    mov         edx,703FEC;'SapTypeMenu'
 006F7DB4    mov         eax,esi
 006F7DB6    mov         edi,dword ptr [eax]
 006F7DB8    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7DBB    mov         edx,dword ptr [ebp-59C]
 006F7DC1    mov         eax,dword ptr [ebx+68C];TFXADMenuFrame.miSap1Out:TMenuItem
 006F7DC7    call        TMenuItem.SetCaption
 006F7DCC    push        705C54;'0 - AP200 series
EM201E  Single Output Module'
 006F7DD1    lea         eax,[ebp-5A0]
 006F7DD7    push        eax
 006F7DD8    mov         ecx,705CC0;'smiSap1OutAdv'
 006F7DDD    mov         edx,703FEC;'SapTypeMenu'
 006F7DE2    mov         eax,esi
 006F7DE4    mov         edi,dword ptr [eax]
 006F7DE6    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7DE9    mov         edx,dword ptr [ebp-5A0]
 006F7DEF    mov         eax,dword ptr [ebx+720];TFXADMenuFrame.miSap1OutAdv:TMenuItem
 006F7DF5    call        TMenuItem.SetCaption
 006F7DFA    push        705CE8;'1 - 200 series
EM201E  Single Output Module
EM201E240  Single Output Module-24...
 006F7DFF    lea         eax,[ebp-5A4]
 006F7E05    push        eax
 006F7E06    mov         ecx,705DD4;'smiSap1OutClip'
 006F7E0B    mov         edx,703FEC;'SapTypeMenu'
 006F7E10    mov         eax,esi
 006F7E12    mov         edi,dword ptr [eax]
 006F7E14    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7E17    mov         edx,dword ptr [ebp-5A4]
 006F7E1D    mov         eax,dword ptr [ebx+724];TFXADMenuFrame.miSap1OutClip:TMenuItem
 006F7E23    call        TMenuItem.SetCaption
 006F7E28    push        705E00;'N - Single Output 240V module'
 006F7E2D    lea         eax,[ebp-5A8]
 006F7E33    push        eax
 006F7E34    mov         ecx,705E48;'smiSap1Out240'
 006F7E39    mov         edx,703FEC;'SapTypeMenu'
 006F7E3E    mov         eax,esi
 006F7E40    mov         edi,dword ptr [eax]
 006F7E42    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7E45    mov         edx,dword ptr [ebp-5A8]
 006F7E4B    mov         eax,dword ptr [ebx+690];TFXADMenuFrame.miSap1Out240:TMenuItem
 006F7E51    call        TMenuItem.SetCaption
 006F7E56    push        705E70;'0 - AP200 series
EM201E240  Single Output 240V-50Hz 5A rated
EM201E240-DIN'
 006F7E5B    lea         eax,[ebp-5AC]
 006F7E61    push        eax
 006F7E62    mov         ecx,705F18;'smiSap1Out240Adv'
 006F7E67    mov         edx,703FEC;'SapTypeMenu'
 006F7E6C    mov         eax,esi
 006F7E6E    mov         edi,dword ptr [eax]
 006F7E70    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7E73    mov         edx,dword ptr [ebp-5AC]
 006F7E79    mov         eax,dword ptr [ebx+0B1C];TFXADMenuFrame.miSap1Out240Adv:TMenuItem
 006F7E7F    call        TMenuItem.SetCaption
 006F7E84    push        705F48;'7 - Conventional Zone module'
 006F7E89    lea         eax,[ebp-5B0]
 006F7E8F    push        eax
 006F7E90    mov         ecx,705F90;'smiSapCZ'
 006F7E95    mov         edx,703FEC;'SapTypeMenu'
 006F7E9A    mov         eax,esi
 006F7E9C    mov         edi,dword ptr [eax]
 006F7E9E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7EA1    mov         edx,dword ptr [ebp-5B0]
 006F7EA7    mov         eax,dword ptr [ebx+694];TFXADMenuFrame.miSapCZ:TMenuItem
 006F7EAD    call        TMenuItem.SetCaption
 006F7EB2    push        705FB0;'0 - AP200 series
EM210E-CZ Conventional Zone Interface Module'
 006F7EB7    lea         eax,[ebp-5B4]
 006F7EBD    push        eax
 006F7EBE    mov         ecx,70603C;'smiSapCZAdv'
 006F7EC3    mov         edx,703FEC;'SapTypeMenu'
 006F7EC8    mov         eax,esi
 006F7ECA    mov         edi,dword ptr [eax]
 006F7ECC    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7ECF    mov         edx,dword ptr [ebp-5B4]
 006F7ED5    mov         eax,dword ptr [ebx+728];TFXADMenuFrame.miSapCzAdv:TMenuItem
 006F7EDB    call        TMenuItem.SetCaption
 006F7EE0    push        706060;'1 - 200 series
EM210E-CZ Conventional Zone Interface Module'
 006F7EE5    lea         eax,[ebp-5B8]
 006F7EEB    push        eax
 006F7EEC    mov         ecx,7060E8;'smiSapCZClip'
 006F7EF1    mov         edx,703FEC;'SapTypeMenu'
 006F7EF6    mov         eax,esi
 006F7EF8    mov         edi,dword ptr [eax]
 006F7EFA    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7EFD    mov         edx,dword ptr [ebp-5B8]
 006F7F03    mov         eax,dword ptr [ebx+72C];TFXADMenuFrame.miSapCzClip:TMenuItem
 006F7F09    call        TMenuItem.SetCaption
 006F7F0E    push        706110;'X - Conv. Zone module CZR'
 006F7F13    lea         eax,[ebp-5BC]
 006F7F19    push        eax
 006F7F1A    mov         ecx,706150;'smiSapCZR'
 006F7F1F    mov         edx,703FEC;'SapTypeMenu'
 006F7F24    mov         eax,esi
 006F7F26    mov         edi,dword ptr [eax]
 006F7F28    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7F2B    mov         edx,dword ptr [ebp-5BC]
 006F7F31    mov         eax,dword ptr [ebx+6A8];TFXADMenuFrame.miSapCZR:TMenuItem
 006F7F37    call        TMenuItem.SetCaption
 006F7F3C    push        706170;'0 - AP200 series
EM210E-CZR Conventional Zone Interface Module'
 006F7F41    lea         eax,[ebp-5C0]
 006F7F47    push        eax
 006F7F48    mov         ecx,7061FC;'smiSapCZRAdv'
 006F7F4D    mov         edx,703FEC;'SapTypeMenu'
 006F7F52    mov         eax,esi
 006F7F54    mov         edi,dword ptr [eax]
 006F7F56    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7F59    mov         edx,dword ptr [ebp-5C0]
 006F7F5F    mov         eax,dword ptr [ebx+0B20];TFXADMenuFrame.miSapCZRAdv:TMenuItem
 006F7F65    call        TMenuItem.SetCaption
 006F7F6A    push        706224;'O - Six x Clean Contact Output'
 006F7F6F    lea         eax,[ebp-5C4]
 006F7F75    push        eax
 006F7F76    mov         ecx,706270;'smiSap6CCO'
 006F7F7B    mov         edx,703FEC;'SapTypeMenu'
 006F7F80    mov         eax,esi
 006F7F82    mov         edi,dword ptr [eax]
 006F7F84    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7F87    mov         edx,dword ptr [ebp-5C4]
 006F7F8D    mov         eax,dword ptr [ebx+698];TFXADMenuFrame.miSap6CCO:TMenuItem
 006F7F93    call        TMenuItem.SetCaption
 006F7F98    push        704068;'0 - AP200 series'
 006F7F9D    lea         eax,[ebp-5C8]
 006F7FA3    push        eax
 006F7FA4    mov         ecx,706294;'smiSap6CCOAdv'
 006F7FA9    mov         edx,703FEC;'SapTypeMenu'
 006F7FAE    mov         eax,esi
 006F7FB0    mov         edi,dword ptr [eax]
 006F7FB2    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7FB5    mov         edx,dword ptr [ebp-5C8]
 006F7FBB    mov         eax,dword ptr [ebx+0B24];TFXADMenuFrame.miSap6CCOAdv:TMenuItem
 006F7FC1    call        TMenuItem.SetCaption
 006F7FC6    push        7062BC;'P - Six x Monitored Relay Output'
 006F7FCB    lea         eax,[ebp-5CC]
 006F7FD1    push        eax
 006F7FD2    mov         ecx,70630C;'smiSap6MRO'
 006F7FD7    mov         edx,703FEC;'SapTypeMenu'
 006F7FDC    mov         eax,esi
 006F7FDE    mov         edi,dword ptr [eax]
 006F7FE0    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F7FE3    mov         edx,dword ptr [ebp-5CC]
 006F7FE9    mov         eax,dword ptr [ebx+69C];TFXADMenuFrame.miSap6MRO:TMenuItem
 006F7FEF    call        TMenuItem.SetCaption
 006F7FF4    push        704068;'0 - AP200 series'
 006F7FF9    lea         eax,[ebp-5D0]
 006F7FFF    push        eax
 006F8000    mov         ecx,706330;'smiSap6MROAdv'
 006F8005    mov         edx,703FEC;'SapTypeMenu'
 006F800A    mov         eax,esi
 006F800C    mov         edi,dword ptr [eax]
 006F800E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8011    mov         edx,dword ptr [ebp-5D0]
 006F8017    mov         eax,dword ptr [ebx+0B28];TFXADMenuFrame.miSap6MROAdv:TMenuItem
 006F801D    call        TMenuItem.SetCaption
 006F8022    push        706358;'Q - Ten x Clean Contact Input'
 006F8027    lea         eax,[ebp-5D4]
 006F802D    push        eax
 006F802E    mov         ecx,7063A0;'smiSap10CCI'
 006F8033    mov         edx,703FEC;'SapTypeMenu'
 006F8038    mov         eax,esi
 006F803A    mov         edi,dword ptr [eax]
 006F803C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F803F    mov         edx,dword ptr [ebp-5D4]
 006F8045    mov         eax,dword ptr [ebx+6A0];TFXADMenuFrame.miSap10CCI:TMenuItem
 006F804B    call        TMenuItem.SetCaption
 006F8050    push        704068;'0 - AP200 series'
 006F8055    lea         eax,[ebp-5D8]
 006F805B    push        eax
 006F805C    mov         ecx,7063C4;'smiSap10CCIAdv'
 006F8061    mov         edx,703FEC;'SapTypeMenu'
 006F8066    mov         eax,esi
 006F8068    mov         edi,dword ptr [eax]
 006F806A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F806D    mov         edx,dword ptr [ebp-5D8]
 006F8073    mov         eax,dword ptr [ebx+0B2C];TFXADMenuFrame.miSap10CCIAdv:TMenuItem
 006F8079    call        TMenuItem.SetCaption
 006F807E    push        7063F0;'R - Six x Conventional Zone'
 006F8083    lea         eax,[ebp-5DC]
 006F8089    push        eax
 006F808A    mov         ecx,706434;'smiSap6CZ'
 006F808F    mov         edx,703FEC;'SapTypeMenu'
 006F8094    mov         eax,esi
 006F8096    mov         edi,dword ptr [eax]
 006F8098    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F809B    mov         edx,dword ptr [ebp-5DC]
 006F80A1    mov         eax,dword ptr [ebx+6A4];TFXADMenuFrame.miSap6CZ:TMenuItem
 006F80A7    call        TMenuItem.SetCaption
 006F80AC    push        704068;'0 - AP200 series'
 006F80B1    lea         eax,[ebp-5E0]
 006F80B7    push        eax
 006F80B8    mov         ecx,706454;'smiSap6CZAdv'
 006F80BD    mov         edx,703FEC;'SapTypeMenu'
 006F80C2    mov         eax,esi
 006F80C4    mov         edi,dword ptr [eax]
 006F80C6    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F80C9    mov         edx,dword ptr [ebp-5E0]
 006F80CF    mov         eax,dword ptr [ebx+0B30];TFXADMenuFrame.miSap6CZAdv:TMenuItem
 006F80D5    call        TMenuItem.SetCaption
 006F80DA    push        6FA528;'8 - Any Type'
 006F80DF    lea         eax,[ebp-5E4]
 006F80E5    push        eax
 006F80E6    mov         ecx,70647C;'smiSapAny'
 006F80EB    mov         edx,703FEC;'SapTypeMenu'
 006F80F0    mov         eax,esi
 006F80F2    mov         edi,dword ptr [eax]
 006F80F4    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F80F7    mov         edx,dword ptr [ebp-5E4]
 006F80FD    mov         eax,dword ptr [ebx+6AC];TFXADMenuFrame.miSapAny:TMenuItem
 006F8103    call        TMenuItem.SetCaption
 006F8108    push        6FA578;'C - Any Type (virtual)'
 006F810D    lea         eax,[ebp-5E8]
 006F8113    push        eax
 006F8114    mov         ecx,70649C;'smiSapAnyVirtual'
 006F8119    mov         edx,703FEC;'SapTypeMenu'
 006F811E    mov         eax,esi
 006F8120    mov         edi,dword ptr [eax]
 006F8122    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8125    mov         edx,dword ptr [ebp-5E8]
 006F812B    mov         eax,dword ptr [ebx+6B0];TFXADMenuFrame.miSapAnyVirtual:TMenuItem
 006F8131    call        TMenuItem.SetCaption
 006F8136    push        7064CC;'S - Wall Mount Sounder'
 006F813B    lea         eax,[ebp-5EC]
 006F8141    push        eax
 006F8142    mov         ecx,706508;'smiSapWallSndr'
 006F8147    mov         edx,703FEC;'SapTypeMenu'
 006F814C    mov         eax,esi
 006F814E    mov         edi,dword ptr [eax]
 006F8150    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8153    mov         edx,dword ptr [ebp-5EC]
 006F8159    mov         eax,dword ptr [ebx+7E8];TFXADMenuFrame.miSapWallSndr:TMenuItem
 006F815F    call        TMenuItem.SetCaption
 006F8164    push        706534;'0 - AP200 series
WMSOU-RR-P35
WMSOU-RR-P36
WSO-PR-I33
WSO-PR-N33'
 006F8169    lea         eax,[ebp-5F0]
 006F816F    push        eax
 006F8170    mov         ecx,7065CC;'smiSapWallSndrAdv'
 006F8175    mov         edx,703FEC;'SapTypeMenu'
 006F817A    mov         eax,esi
 006F817C    mov         edi,dword ptr [eax]
 006F817E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8181    mov         edx,dword ptr [ebp-5F0]
 006F8187    mov         eax,dword ptr [ebx+0B34];TFXADMenuFrame.miSapWallSndrAdv:TMenuItem
 006F818D    call        TMenuItem.SetCaption
 006F8192    push        7065FC;'T - Wall Mount Sounder Strobe'
 006F8197    lea         eax,[ebp-5F4]
 006F819D    push        eax
 006F819E    mov         ecx,706644;'smiSapWallSndrStr'
 006F81A3    mov         edx,703FEC;'SapTypeMenu'
 006F81A8    mov         eax,esi
 006F81AA    mov         edi,dword ptr [eax]
 006F81AC    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F81AF    mov         edx,dword ptr [ebp-5F4]
 006F81B5    mov         eax,dword ptr [ebx+7EC];TFXADMenuFrame.miSapWallSndrStr:TMenuItem
 006F81BB    call        TMenuItem.SetCaption
 006F81C0    push        706674;'0 - AP200 series
WMSST-RR-xx
WMSOU-RR-xx
WSS-PR-I33
WSS-PR-N33'
 006F81C5    lea         eax,[ebp-5F8]
 006F81CB    push        eax
 006F81CC    mov         ecx,706708;'smiSapWallSndrStrAdv'
 006F81D1    mov         edx,703FEC;'SapTypeMenu'
 006F81D6    mov         eax,esi
 006F81D8    mov         edi,dword ptr [eax]
 006F81DA    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F81DD    mov         edx,dword ptr [ebp-5F8]
 006F81E3    mov         eax,dword ptr [ebx+0B38];TFXADMenuFrame.miSapWallSndrStrAdv:TMenuItem
 006F81E9    call        TMenuItem.SetCaption
 006F81EE    push        706740;'U - Wall Mount Strobe'
 006F81F3    lea         eax,[ebp-5FC]
 006F81F9    push        eax
 006F81FA    mov         ecx,706778;'smiSapWallStrobe'
 006F81FF    mov         edx,703FEC;'SapTypeMenu'
 006F8204    mov         eax,esi
 006F8206    mov         edi,dword ptr [eax]
 006F8208    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F820B    mov         edx,dword ptr [ebp-5FC]
 006F8211    mov         eax,dword ptr [ebx+7F0];TFXADMenuFrame.miSapWallStrobe:TMenuItem
 006F8217    call        TMenuItem.SetCaption
 006F821C    push        7067A8;'0 - AP200 series
WMSTR-WR-xx
WMSTR-WR-xx
WST-PR-I33
WST-PR-N33'
 006F8221    lea         eax,[ebp-600]
 006F8227    push        eax
 006F8228    mov         ecx,70683C;'smiSapWallStrobeAdv'
 006F822D    mov         edx,703FEC;'SapTypeMenu'
 006F8232    mov         eax,esi
 006F8234    mov         edi,dword ptr [eax]
 006F8236    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8239    mov         edx,dword ptr [ebp-600]
 006F823F    mov         eax,dword ptr [ebx+0B3C];TFXADMenuFrame.miSapWallStrobeAdv:TMenuItem
 006F8245    call        TMenuItem.SetCaption
 006F824A    push        706870;'V - Detector Base Sounder'
 006F824F    lea         eax,[ebp-604]
 006F8255    push        eax
 006F8256    mov         ecx,7068B0;'smiSapBaseSndr'
 006F825B    mov         edx,703FEC;'SapTypeMenu'
 006F8260    mov         eax,esi
 006F8262    mov         edi,dword ptr [eax]
 006F8264    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8267    mov         edx,dword ptr [ebp-604]
 006F826D    mov         eax,dword ptr [ebx+7F4];TFXADMenuFrame.miSapBaseSndr:TMenuItem
 006F8273    call        TMenuItem.SetCaption
 006F8278    push        7068DC;'0 - AP200 series
BSO-PP-I33
BSO-PP-N33'
 006F827D    lea         eax,[ebp-608]
 006F8283    push        eax
 006F8284    mov         ecx,70693C;'smiSapBaseSndrAdv'
 006F8289    mov         edx,703FEC;'SapTypeMenu'
 006F828E    mov         eax,esi
 006F8290    mov         edi,dword ptr [eax]
 006F8292    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8295    mov         edx,dword ptr [ebp-608]
 006F829B    mov         eax,dword ptr [ebx+0B40];TFXADMenuFrame.miSapBaseSndrAdv:TMenuItem
 006F82A1    call        TMenuItem.SetCaption
 006F82A6    push        70696C;'W - Detector Base Sounder Strobe'
 006F82AB    lea         eax,[ebp-60C]
 006F82B1    push        eax
 006F82B2    mov         ecx,7069BC;'smiSapBaseSndrStr'
 006F82B7    mov         edx,703FEC;'SapTypeMenu'
 006F82BC    mov         eax,esi
 006F82BE    mov         edi,dword ptr [eax]
 006F82C0    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F82C3    mov         edx,dword ptr [ebp-60C]
 006F82C9    mov         eax,dword ptr [ebx+7F8];TFXADMenuFrame.miSapBaseSndrStr:TMenuItem
 006F82CF    call        TMenuItem.SetCaption
 006F82D4    push        7069EC;'0 - AP200 series
BSS-PR-I33
BSS-PR-N33'
 006F82D9    lea         eax,[ebp-610]
 006F82DF    push        eax
 006F82E0    mov         ecx,706A4C;'smiSapBaseSndrStrAdv'
 006F82E5    mov         edx,703FEC;'SapTypeMenu'
 006F82EA    mov         eax,esi
 006F82EC    mov         edi,dword ptr [eax]
 006F82EE    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F82F1    mov         edx,dword ptr [ebp-610]
 006F82F7    mov         eax,dword ptr [ebx+0B44];TFXADMenuFrame.miSapBaseSndrStrAdv:TMenuItem
 006F82FD    call        TMenuItem.SetCaption
 006F8302    push        6F95C8;'0 - Not in use'
 006F8307    lea         eax,[ebp-614]
 006F830D    push        eax
 006F830E    mov         ecx,706A84;'smiInpNotInUse'
 006F8313    mov         edx,703F3C;'InpFuncMenu'
 006F8318    mov         eax,esi
 006F831A    mov         edi,dword ptr [eax]
 006F831C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F831F    mov         edx,dword ptr [ebp-614]
 006F8325    mov         eax,dword ptr [ebx+734];TFXADMenuFrame.miInpNotInUse:TMenuItem
 006F832B    call        TMenuItem.SetCaption
 006F8330    push        706AB0;'0 - Manual Call Point / Al''m Switch'
 006F8335    lea         eax,[ebp-618]
 006F833B    push        eax
 006F833C    mov         ecx,706B04;'smiInpMCPorAlSwitch'
 006F8341    mov         edx,703F3C;'InpFuncMenu'
 006F8346    mov         eax,esi
 006F8348    mov         edi,dword ptr [eax]
 006F834A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F834D    mov         edx,dword ptr [ebp-618]
 006F8353    mov         eax,dword ptr [ebx+738];TFXADMenuFrame.miInpMCPorAlmSw:TMenuItem
 006F8359    call        TMenuItem.SetCaption
 006F835E    push        706B38;'1 - Manual Call Point'
 006F8363    lea         eax,[ebp-61C]
 006F8369    push        eax
 006F836A    mov         ecx,706B70;'smiInpMCP'
 006F836F    mov         edx,703F3C;'InpFuncMenu'
 006F8374    mov         eax,esi
 006F8376    mov         edi,dword ptr [eax]
 006F8378    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F837B    mov         edx,dword ptr [ebp-61C]
 006F8381    mov         eax,dword ptr [ebx+73C];TFXADMenuFrame.miInpMCP:TMenuItem
 006F8387    call        TMenuItem.SetCaption
 006F838C    push        706B90;'1 - Manual Call Point Line'
 006F8391    lea         eax,[ebp-620]
 006F8397    push        eax
 006F8398    mov         ecx,706BD4;'smiInpMCPLine'
 006F839D    mov         edx,703F3C;'InpFuncMenu'
 006F83A2    mov         eax,esi
 006F83A4    mov         edi,dword ptr [eax]
 006F83A6    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F83A9    mov         edx,dword ptr [ebp-620]
 006F83AF    mov         eax,dword ptr [ebx+740];TFXADMenuFrame.miInpMCPLine:TMenuItem
 006F83B5    call        TMenuItem.SetCaption
 006F83BA    push        706BFC;'2 - Beam detector'
 006F83BF    lea         eax,[ebp-624]
 006F83C5    push        eax
 006F83C6    mov         ecx,706C2C;'smiInpConvBeamDet'
 006F83CB    mov         edx,703F3C;'InpFuncMenu'
 006F83D0    mov         eax,esi
 006F83D2    mov         edi,dword ptr [eax]
 006F83D4    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F83D7    mov         edx,dword ptr [ebp-624]
 006F83DD    mov         eax,dword ptr [ebx+744];TFXADMenuFrame.miInpConvBeamDet:TMenuItem
 006F83E3    call        TMenuItem.SetCaption
 006F83E8    push        706C5C;'2 - Reserved'
 006F83ED    lea         eax,[ebp-628]
 006F83F3    push        eax
 006F83F4    mov         ecx,706C84;'smiInpReserved'
 006F83F9    mov         edx,703F3C;'InpFuncMenu'
 006F83FE    mov         eax,esi
 006F8400    mov         edi,dword ptr [eax]
 006F8402    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8405    mov         edx,dword ptr [ebp-628]
 006F840B    mov         eax,dword ptr [ebx+748];TFXADMenuFrame.miInpReserved:TMenuItem
 006F8411    call        TMenuItem.SetCaption
 006F8416    push        706CB0;'3 - Conv. Heat Detector'
 006F841B    lea         eax,[ebp-62C]
 006F8421    push        eax
 006F8422    mov         ecx,706CEC;'smiInpConvHeatDet'
 006F8427    mov         edx,703F3C;'InpFuncMenu'
 006F842C    mov         eax,esi
 006F842E    mov         edi,dword ptr [eax]
 006F8430    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8433    mov         edx,dword ptr [ebp-62C]
 006F8439    mov         eax,dword ptr [ebx+74C];TFXADMenuFrame.miInpConvHeatDet:TMenuItem
 006F843F    call        TMenuItem.SetCaption
 006F8444    push        706D1C;'3 - Detection Line'
 006F8449    lea         eax,[ebp-630]
 006F844F    push        eax
 006F8450    mov         ecx,706D50;'smiInpDetLine'
 006F8455    mov         edx,703F3C;'InpFuncMenu'
 006F845A    mov         eax,esi
 006F845C    mov         edi,dword ptr [eax]
 006F845E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8461    mov         edx,dword ptr [ebp-630]
 006F8467    mov         eax,dword ptr [ebx+750];TFXADMenuFrame.miInpDetectionLine:TMenuItem
 006F846D    call        TMenuItem.SetCaption
 006F8472    push        706D78;'4 - Fire Alarm Input'
 006F8477    lea         eax,[ebp-634]
 006F847D    push        eax
 006F847E    mov         ecx,706DB0;'smiInpFireAlarm'
 006F8483    mov         edx,703F3C;'InpFuncMenu'
 006F8488    mov         eax,esi
 006F848A    mov         edi,dword ptr [eax]
 006F848C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F848F    mov         edx,dword ptr [ebp-634]
 006F8495    mov         eax,dword ptr [ebx+758];TFXADMenuFrame.miInpFireAlarm:TMenuItem
 006F849B    call        TMenuItem.SetCaption
 006F84A0    push        706DDC;'5 - Prealarm Input'
 006F84A5    lea         eax,[ebp-638]
 006F84AB    push        eax
 006F84AC    mov         ecx,706E10;'smiInpPrewarning'
 006F84B1    mov         edx,703F3C;'InpFuncMenu'
 006F84B6    mov         eax,esi
 006F84B8    mov         edi,dword ptr [eax]
 006F84BA    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F84BD    mov         edx,dword ptr [ebp-638]
 006F84C3    mov         eax,dword ptr [ebx+75C];TFXADMenuFrame.miInpPrewarning:TMenuItem
 006F84C9    call        TMenuItem.SetCaption
 006F84CE    push        706E40;'6 - Fault warning Input'
 006F84D3    lea         eax,[ebp-63C]
 006F84D9    push        eax
 006F84DA    mov         ecx,706E7C;'smiInpFaultWarning'
 006F84DF    mov         edx,703F3C;'InpFuncMenu'
 006F84E4    mov         eax,esi
 006F84E6    mov         edi,dword ptr [eax]
 006F84E8    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F84EB    mov         edx,dword ptr [ebp-63C]
 006F84F1    mov         eax,dword ptr [ebx+760];TFXADMenuFrame.miInpFaultWarning:TMenuItem
 006F84F7    call        TMenuItem.SetCaption
 006F84FC    push        706EB0;'7 - Maintenance Input'
 006F8501    lea         eax,[ebp-640]
 006F8507    push        eax
 006F8508    mov         ecx,706EE8;'smiInpMaintWarning'
 006F850D    mov         edx,703F3C;'InpFuncMenu'
 006F8512    mov         eax,esi
 006F8514    mov         edi,dword ptr [eax]
 006F8516    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8519    mov         edx,dword ptr [ebp-640]
 006F851F    mov         eax,dword ptr [ebx+764];TFXADMenuFrame.miInpMaintWarning:TMenuItem
 006F8525    call        TMenuItem.SetCaption
 006F852A    push        706F1C;'8 - Technical Alarm Input'
 006F852F    lea         eax,[ebp-644]
 006F8535    push        eax
 006F8536    mov         ecx,706F5C;'smiInpTechAlarm'
 006F853B    mov         edx,703F3C;'InpFuncMenu'
 006F8540    mov         eax,esi
 006F8542    mov         edi,dword ptr [eax]
 006F8544    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8547    mov         edx,dword ptr [ebp-644]
 006F854D    mov         eax,dword ptr [ebx+768];TFXADMenuFrame.miInpTechAlarm:TMenuItem
 006F8553    call        TMenuItem.SetCaption
 006F8558    push        706F88;'9 - Silent Tech Alarm Input'
 006F855D    lea         eax,[ebp-648]
 006F8563    push        eax
 006F8564    mov         ecx,706FCC;'smiInpSilentTechAlarm'
 006F8569    mov         edx,703F3C;'InpFuncMenu'
 006F856E    mov         eax,esi
 006F8570    mov         edi,dword ptr [eax]
 006F8572    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8575    mov         edx,dword ptr [ebp-648]
 006F857B    mov         eax,dword ptr [ebx+76C];TFXADMenuFrame.miInpSilentTechAlarm:TMenuItem
 006F8581    call        TMenuItem.SetCaption
 006F8586    push        707004;'Q - Local Evacuation Input'
 006F858B    lea         eax,[ebp-64C]
 006F8591    push        eax
 006F8592    mov         ecx,707048;'smiInpLocEvacuation'
 006F8597    mov         edx,703F3C;'InpFuncMenu'
 006F859C    mov         eax,esi
 006F859E    mov         edi,dword ptr [eax]
 006F85A0    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F85A3    mov         edx,dword ptr [ebp-64C]
 006F85A9    mov         eax,dword ptr [ebx+770];TFXADMenuFrame.miInpLocEvac:TMenuItem
 006F85AF    call        TMenuItem.SetCaption
 006F85B4    push        70707C;'A - Evacuation Input'
 006F85B9    lea         eax,[ebp-650]
 006F85BF    push        eax
 006F85C0    mov         ecx,7070B4;'smiInpEvacuation'
 006F85C5    mov         edx,703F3C;'InpFuncMenu'
 006F85CA    mov         eax,esi
 006F85CC    mov         edi,dword ptr [eax]
 006F85CE    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F85D1    mov         edx,dword ptr [ebp-650]
 006F85D7    mov         eax,dword ptr [ebx+774];TFXADMenuFrame.miInpEvac:TMenuItem
 006F85DD    call        TMenuItem.SetCaption
 006F85E2    push        7070E4;'B - Zone Disablement Input'
 006F85E7    lea         eax,[ebp-654]
 006F85ED    push        eax
 006F85EE    mov         ecx,707128;'smiInpZoneDisable'
 006F85F3    mov         edx,703F3C;'InpFuncMenu'
 006F85F8    mov         eax,esi
 006F85FA    mov         edi,dword ptr [eax]
 006F85FC    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F85FF    mov         edx,dword ptr [ebp-654]
 006F8605    mov         eax,dword ptr [ebx+77C];TFXADMenuFrame.miInpZoneDisable:TMenuItem
 006F860B    call        TMenuItem.SetCaption
 006F8610    push        707158;'R - Local Day Mode Activation Input'
 006F8615    lea         eax,[ebp-658]
 006F861B    push        eax
 006F861C    mov         ecx,7071AC;'smiInpLocDayMode'
 006F8621    mov         edx,703F3C;'InpFuncMenu'
 006F8626    mov         eax,esi
 006F8628    mov         edi,dword ptr [eax]
 006F862A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F862D    mov         edx,dword ptr [ebp-658]
 006F8633    mov         eax,dword ptr [ebx+780];TFXADMenuFrame.miInpLocDayMode:TMenuItem
 006F8639    call        TMenuItem.SetCaption
 006F863E    push        7071DC;'S - Local Delayed Alarm Enable Input'
 006F8643    lea         eax,[ebp-65C]
 006F8649    push        eax
 006F864A    mov         ecx,707234;'smiInpLocDelAlarmEnable'
 006F864F    mov         edx,703F3C;'InpFuncMenu'
 006F8654    mov         eax,esi
 006F8656    mov         edi,dword ptr [eax]
 006F8658    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F865B    mov         edx,dword ptr [ebp-65C]
 006F8661    mov         eax,dword ptr [ebx+784];TFXADMenuFrame.miInpLocDelAlarmEnable:TMenuItem
 006F8667    call        TMenuItem.SetCaption
 006F866C    push        707270;'T - Local Day Mode and Del Alarm Enable Input'
 006F8671    lea         eax,[ebp-660]
 006F8677    push        eax
 006F8678    mov         ecx,7072D8;'smiInpLocDayAndDelEnable'
 006F867D    mov         edx,703F3C;'InpFuncMenu'
 006F8682    mov         eax,esi
 006F8684    mov         edi,dword ptr [eax]
 006F8686    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8689    mov         edx,dword ptr [ebp-660]
 006F868F    mov         eax,dword ptr [ebx+788];TFXADMenuFrame.miInpLocDayAndDelEnable:TMenuItem
 006F8695    call        TMenuItem.SetCaption
 006F869A    push        707318;'C - Day Mode Activation Input'
 006F869F    lea         eax,[ebp-664]
 006F86A5    push        eax
 006F86A6    mov         ecx,707360;'smiInpDayMode'
 006F86AB    mov         edx,703F3C;'InpFuncMenu'
 006F86B0    mov         eax,esi
 006F86B2    mov         edi,dword ptr [eax]
 006F86B4    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F86B7    mov         edx,dword ptr [ebp-664]
 006F86BD    mov         eax,dword ptr [ebx+78C];TFXADMenuFrame.miInpDayMode:TMenuItem
 006F86C3    call        TMenuItem.SetCaption
 006F86C8    push        707388;'D - Delayed Alarm Enable Input'
 006F86CD    lea         eax,[ebp-668]
 006F86D3    push        eax
 006F86D4    mov         ecx,7073D4;'smiInpDelAlrmEnable'
 006F86D9    mov         edx,703F3C;'InpFuncMenu'
 006F86DE    mov         eax,esi
 006F86E0    mov         edi,dword ptr [eax]
 006F86E2    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F86E5    mov         edx,dword ptr [ebp-668]
 006F86EB    mov         eax,dword ptr [ebx+790];TFXADMenuFrame.miInpDelAlrmEnable:TMenuItem
 006F86F1    call        TMenuItem.SetCaption
 006F86F6    push        707408;'E - Day Mode and Delayed Alarm Enable Input'
 006F86FB    lea         eax,[ebp-66C]
 006F8701    push        eax
 006F8702    mov         ecx,70746C;'smiInpDayAndDelEnable'
 006F8707    mov         edx,703F3C;'InpFuncMenu'
 006F870C    mov         eax,esi
 006F870E    mov         edi,dword ptr [eax]
 006F8710    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8713    mov         edx,dword ptr [ebp-66C]
 006F8719    mov         eax,dword ptr [ebx+794];TFXADMenuFrame.miInpDayAndDelEnable:TMenuItem
 006F871F    call        TMenuItem.SetCaption
 006F8724    push        7074A4;'F - Delayed Alarm Zonal Silence'
 006F8729    lea         eax,[ebp-670]
 006F872F    push        eax
 006F8730    mov         ecx,7074F0;'smiInpDelAlarmZonalSil'
 006F8735    mov         edx,703F3C;'InpFuncMenu'
 006F873A    mov         eax,esi
 006F873C    mov         edi,dword ptr [eax]
 006F873E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8741    mov         edx,dword ptr [ebp-670]
 006F8747    mov         eax,dword ptr [ebx+79C];TFXADMenuFrame.miInpDelAlarmZonalSilence:TMenuItem
 006F874D    call        TMenuItem.SetCaption
 006F8752    push        70752C;'G - Delayed Alarm Zonal Reset'
 006F8757    lea         eax,[ebp-674]
 006F875D    push        eax
 006F875E    mov         ecx,707574;'smiInpDelAlarmZonalRes'
 006F8763    mov         edx,703F3C;'InpFuncMenu'
 006F8768    mov         eax,esi
 006F876A    mov         edi,dword ptr [eax]
 006F876C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F876F    mov         edx,dword ptr [ebp-674]
 006F8775    mov         eax,dword ptr [ebx+7A0];TFXADMenuFrame.miInpDelAlarmZonalReset:TMenuItem
 006F877B    call        TMenuItem.SetCaption
 006F8780    push        7075B0;'H - General Silence Input'
 006F8785    lea         eax,[ebp-678]
 006F878B    push        eax
 006F878C    mov         ecx,7075F0;'smiInpGeneralSilence'
 006F8791    mov         edx,703F3C;'InpFuncMenu'
 006F8796    mov         eax,esi
 006F8798    mov         edi,dword ptr [eax]
 006F879A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F879D    mov         edx,dword ptr [ebp-678]
 006F87A3    mov         eax,dword ptr [ebx+7A4];TFXADMenuFrame.miInpGeneralSilence:TMenuItem
 006F87A9    call        TMenuItem.SetCaption
 006F87AE    push        707628;'I - General Reset Input'
 006F87B3    lea         eax,[ebp-67C]
 006F87B9    push        eax
 006F87BA    mov         ecx,707664;'smiInpGeneralReset'
 006F87BF    mov         edx,703F3C;'InpFuncMenu'
 006F87C4    mov         eax,esi
 006F87C6    mov         edi,dword ptr [eax]
 006F87C8    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F87CB    mov         edx,dword ptr [ebp-67C]
 006F87D1    mov         eax,dword ptr [ebx+7A8];TFXADMenuFrame.miInpGeneralReset:TMenuItem
 006F87D7    call        TMenuItem.SetCaption
 006F87DC    push        707698;'U - Local Fire Alarm Device Mute Input'
 006F87E1    lea         eax,[ebp-680]
 006F87E7    push        eax
 006F87E8    mov         ecx,7076F4;'smiInpLocAlarmDeviceMute'
 006F87ED    mov         edx,703F3C;'InpFuncMenu'
 006F87F2    mov         eax,esi
 006F87F4    mov         edi,dword ptr [eax]
 006F87F6    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F87F9    mov         edx,dword ptr [ebp-680]
 006F87FF    mov         eax,dword ptr [ebx+7B0];TFXADMenuFrame.miInpLocAlarmDeviceMute:TMenuItem
 006F8805    call        TMenuItem.SetCaption
 006F880A    push        707734;'V - Fire Alarm Device Mute Input'
 006F880F    lea         eax,[ebp-684]
 006F8815    push        eax
 006F8816    mov         ecx,707784;'smiInpAlarmDeviceMute'
 006F881B    mov         edx,703F3C;'InpFuncMenu'
 006F8820    mov         eax,esi
 006F8822    mov         edi,dword ptr [eax]
 006F8824    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8827    mov         edx,dword ptr [ebp-684]
 006F882D    mov         eax,dword ptr [ebx+7B4];TFXADMenuFrame.miInpAlarmDeviceMute:TMenuItem
 006F8833    call        TMenuItem.SetCaption
 006F8838    push        7077BC;'W - Voice Evacuation Fault Input'
 006F883D    lea         eax,[ebp-688]
 006F8843    push        eax
 006F8844    mov         ecx,70780C;'smiInpEvacuationFault'
 006F8849    mov         edx,703F3C;'InpFuncMenu'
 006F884E    mov         eax,esi
 006F8850    mov         edi,dword ptr [eax]
 006F8852    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8855    mov         edx,dword ptr [ebp-688]
 006F885B    mov         eax,dword ptr [ebx+7B8];TFXADMenuFrame.miInpEvacFault:TMenuItem
 006F8861    call        TMenuItem.SetCaption
 006F8866    push        707844;'J - Extinguisher Fault Input'
 006F886B    lea         eax,[ebp-68C]
 006F8871    push        eax
 006F8872    mov         ecx,70788C;'smiInpExtingFault'
 006F8877    mov         edx,703F3C;'InpFuncMenu'
 006F887C    mov         eax,esi
 006F887E    mov         edi,dword ptr [eax]
 006F8880    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8883    mov         edx,dword ptr [ebp-68C]
 006F8889    mov         eax,dword ptr [ebx+7C0];TFXADMenuFrame.miInpExtinguisherFault:TMenuItem
 006F888F    call        TMenuItem.SetCaption
 006F8894    push        7078BC;'K - Extinguisher Activated Input'
 006F8899    lea         eax,[ebp-690]
 006F889F    push        eax
 006F88A0    mov         ecx,70790C;'smiInpExtingActiv'
 006F88A5    mov         edx,703F3C;'InpFuncMenu'
 006F88AA    mov         eax,esi
 006F88AC    mov         edi,dword ptr [eax]
 006F88AE    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F88B1    mov         edx,dword ptr [ebp-690]
 006F88B7    mov         eax,dword ptr [ebx+7C4];TFXADMenuFrame.miInpExtinguisherActivated:TMenuItem
 006F88BD    call        TMenuItem.SetCaption
 006F88C2    push        70793C;'L - Smokeventilation Activated Input'
 006F88C7    lea         eax,[ebp-694]
 006F88CD    push        eax
 006F88CE    mov         ecx,707994;'smiInpSmokeVentActiv'
 006F88D3    mov         edx,703F3C;'InpFuncMenu'
 006F88D8    mov         eax,esi
 006F88DA    mov         edi,dword ptr [eax]
 006F88DC    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F88DF    mov         edx,dword ptr [ebp-694]
 006F88E5    mov         eax,dword ptr [ebx+7C8];TFXADMenuFrame.miInpSmokeVentActivated:TMenuItem
 006F88EB    call        TMenuItem.SetCaption
 006F88F0    push        7079CC;'M - Customer LED 1 Activation'
 006F88F5    lea         eax,[ebp-698]
 006F88FB    push        eax
 006F88FC    mov         ecx,707A14;'smiInpCustLED1Activ'
 006F8901    mov         edx,703F3C;'InpFuncMenu'
 006F8906    mov         eax,esi
 006F8908    mov         edi,dword ptr [eax]
 006F890A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F890D    mov         edx,dword ptr [ebp-698]
 006F8913    mov         eax,dword ptr [ebx+7CC];TFXADMenuFrame.miInpCustomerLED1Activate:TMenuItem
 006F8919    call        TMenuItem.SetCaption
 006F891E    push        707A48;'N - Customer LED 2 Activation'
 006F8923    lea         eax,[ebp-69C]
 006F8929    push        eax
 006F892A    mov         ecx,707A90;'smiInpCustLED2Activ'
 006F892F    mov         edx,703F3C;'InpFuncMenu'
 006F8934    mov         eax,esi
 006F8936    mov         edi,dword ptr [eax]
 006F8938    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F893B    mov         edx,dword ptr [ebp-69C]
 006F8941    mov         eax,dword ptr [ebx+7D0];TFXADMenuFrame.miInpCustomerLED2Activate:TMenuItem
 006F8947    call        TMenuItem.SetCaption
 006F894C    push        707AC4;'O - Internal Logic Input'
 006F8951    lea         eax,[ebp-6A0]
 006F8957    push        eax
 006F8958    mov         ecx,707B04;'smiInpInternalLogic'
 006F895D    mov         edx,703F3C;'InpFuncMenu'
 006F8962    mov         eax,esi
 006F8964    mov         edi,dword ptr [eax]
 006F8966    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8969    mov         edx,dword ptr [ebp-6A0]
 006F896F    mov         eax,dword ptr [ebx+7D8];TFXADMenuFrame.miInpInternalLogic:TMenuItem
 006F8975    call        TMenuItem.SetCaption
 006F897A    push        707B38;'P - External Logic Input'
 006F897F    lea         eax,[ebp-6A4]
 006F8985    push        eax
 006F8986    mov         ecx,707B78;'smiInpExternalLogic'
 006F898B    mov         edx,703F3C;'InpFuncMenu'
 006F8990    mov         eax,esi
 006F8992    mov         edi,dword ptr [eax]
 006F8994    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8997    mov         edx,dword ptr [ebp-6A4]
 006F899D    mov         eax,dword ptr [ebx+7DC];TFXADMenuFrame.miInpExternalLogic:TMenuItem
 006F89A3    call        TMenuItem.SetCaption
 006F89A8    push        707BAC;'X - Fire Alarm Router Equipment Fault Input'
 006F89AD    lea         eax,[ebp-6A8]
 006F89B3    push        eax
 006F89B4    mov         ecx,707C10;'smiInpFaultInFARE'
 006F89B9    mov         edx,703F3C;'InpFuncMenu'
 006F89BE    mov         eax,esi
 006F89C0    mov         edi,dword ptr [eax]
 006F89C2    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F89C5    mov         edx,dword ptr [ebp-6A8]
 006F89CB    mov         eax,dword ptr [ebx+7E0];TFXADMenuFrame.miInpFaultInFARE:TMenuItem
 006F89D1    call        TMenuItem.SetCaption
 006F89D6    push        707C40;'0 - Normal'
 006F89DB    lea         eax,[ebp-6AC]
 006F89E1    push        eax
 006F89E2    mov         ecx,707C64;'smiModeNormal'
 006F89E7    mov         edx,707C8C;'InpModeMenu'
 006F89EC    mov         eax,esi
 006F89EE    mov         edi,dword ptr [eax]
 006F89F0    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F89F3    mov         edx,dword ptr [ebp-6AC]
 006F89F9    mov         eax,dword ptr [ebx+32C];TFXADMenuFrame.miModeNormal:TMenuItem
 006F89FF    call        TMenuItem.SetCaption
 006F8A04    push        707CB0;'1 - Delayed Output'
 006F8A09    lea         eax,[ebp-6B0]
 006F8A0F    push        eax
 006F8A10    mov         ecx,707CE4;'smiModeDelayed'
 006F8A15    mov         edx,707C8C;'InpModeMenu'
 006F8A1A    mov         eax,esi
 006F8A1C    mov         edi,dword ptr [eax]
 006F8A1E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8A21    mov         edx,dword ptr [ebp-6B0]
 006F8A27    mov         eax,dword ptr [ebx+330];TFXADMenuFrame.miModeDelayed:TMenuItem
 006F8A2D    call        TMenuItem.SetCaption
 006F8A32    push        707D10;'2 - Coincidence'
 006F8A37    lea         eax,[ebp-6B4]
 006F8A3D    push        eax
 006F8A3E    mov         ecx,707D3C;'smiModeCoincidence'
 006F8A43    mov         edx,707C8C;'InpModeMenu'
 006F8A48    mov         eax,esi
 006F8A4A    mov         edi,dword ptr [eax]
 006F8A4C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8A4F    mov         edx,dword ptr [ebp-6B4]
 006F8A55    mov         eax,dword ptr [ebx+334];TFXADMenuFrame.miModeCoincidence:TMenuItem
 006F8A5B    call        TMenuItem.SetCaption
 006F8A60    push        707D70;'3 - Prealarm'
 006F8A65    lea         eax,[ebp-6B8]
 006F8A6B    push        eax
 006F8A6C    mov         ecx,707D98;'smiModePrewarning'
 006F8A71    mov         edx,707C8C;'InpModeMenu'
 006F8A76    mov         eax,esi
 006F8A78    mov         edi,dword ptr [eax]
 006F8A7A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8A7D    mov         edx,dword ptr [ebp-6B8]
 006F8A83    mov         eax,dword ptr [ebx+338];TFXADMenuFrame.miModePrewarning:TMenuItem
 006F8A89    call        TMenuItem.SetCaption
 006F8A8E    push        707DC8;'4 - Local Alarm'
 006F8A93    lea         eax,[ebp-6BC]
 006F8A99    push        eax
 006F8A9A    mov         ecx,707DF4;'smiModeLocalAlarm'
 006F8A9F    mov         edx,707C8C;'InpModeMenu'
 006F8AA4    mov         eax,esi
 006F8AA6    mov         edi,dword ptr [eax]
 006F8AA8    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8AAB    mov         edx,dword ptr [ebp-6BC]
 006F8AB1    mov         eax,dword ptr [ebx+33C];TFXADMenuFrame.miModeLocalAlarm:TMenuItem
 006F8AB7    call        TMenuItem.SetCaption
 006F8ABC    push        707E24;'Y - Yes'
 006F8AC1    lea         eax,[ebp-6C0]
 006F8AC7    push        eax
 006F8AC8    mov         ecx,707E40;'smiYes'
 006F8ACD    mov         edx,707E5C;'YesNoMenu'
 006F8AD2    mov         eax,esi
 006F8AD4    mov         edi,dword ptr [eax]
 006F8AD6    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8AD9    mov         edx,dword ptr [ebp-6C0]
 006F8ADF    mov         eax,dword ptr [ebx+348];TFXADMenuFrame.miYes:TMenuItem
 006F8AE5    call        TMenuItem.SetCaption
 006F8AEA    push        707E7C;'N - No'
 006F8AEF    lea         eax,[ebp-6C4]
 006F8AF5    push        eax
 006F8AF6    mov         ecx,707E98;'smiNo'
 006F8AFB    mov         edx,707E5C;'YesNoMenu'
 006F8B00    mov         eax,esi
 006F8B02    mov         edi,dword ptr [eax]
 006F8B04    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8B07    mov         edx,dword ptr [ebp-6C4]
 006F8B0D    mov         eax,dword ptr [ebx+344];TFXADMenuFrame.miNo:TMenuItem
 006F8B13    call        TMenuItem.SetCaption
 006F8B18    push        707EB0;'M - Monitored'
 006F8B1D    lea         eax,[ebp-6C8]
 006F8B23    push        eax
 006F8B24    mov         ecx,707ED8;'smiMonitored'
 006F8B29    mov         edx,707F00;'OutMonitMenu'
 006F8B2E    mov         eax,esi
 006F8B30    mov         edi,dword ptr [eax]
 006F8B32    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8B35    mov         edx,dword ptr [ebp-6C8]
 006F8B3B    mov         eax,dword ptr [ebx+350];TFXADMenuFrame.miMonitored:TMenuItem
 006F8B41    call        TMenuItem.SetCaption
 006F8B46    push        707F28;'N - Not monitored'
 006F8B4B    lea         eax,[ebp-6CC]
 006F8B51    push        eax
 006F8B52    mov         ecx,707F58;'smiNotMonitored'
 006F8B57    mov         edx,707F00;'OutMonitMenu'
 006F8B5C    mov         eax,esi
 006F8B5E    mov         edi,dword ptr [eax]
 006F8B60    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8B63    mov         edx,dword ptr [ebp-6CC]
 006F8B69    mov         eax,dword ptr [ebx+354];TFXADMenuFrame.miNotMonitored:TMenuItem
 006F8B6F    call        TMenuItem.SetCaption
 006F8B74    push        707F84;'S - Siren control'
 006F8B79    lea         eax,[ebp-6D0]
 006F8B7F    push        eax
 006F8B80    mov         ecx,707FB4;'smiSireneControl'
 006F8B85    mov         edx,707F00;'OutMonitMenu'
 006F8B8A    mov         eax,esi
 006F8B8C    mov         edi,dword ptr [eax]
 006F8B8E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8B91    mov         edx,dword ptr [ebp-6D0]
 006F8B97    mov         eax,dword ptr [ebx+358];TFXADMenuFrame.miSirenControl:TMenuItem
 006F8B9D    call        TMenuItem.SetCaption
 006F8BA2    push        707FE4;'1 - Level 1 - most sensitive'
 006F8BA7    lea         eax,[ebp-6D4]
 006F8BAD    push        eax
 006F8BAE    mov         ecx,70802C;'smiCommonLevel1'
 006F8BB3    mov         edx,708058;'ComLevelMenu'
 006F8BB8    mov         eax,esi
 006F8BBA    mov         edi,dword ptr [eax]
 006F8BBC    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8BBF    mov         edx,dword ptr [ebp-6D4]
 006F8BC5    mov         eax,dword ptr [ebx+360];TFXADMenuFrame.miCommonLevel1:TMenuItem
 006F8BCB    call        TMenuItem.SetCaption
 006F8BD0    push        708080;'2 - Level 2'
 006F8BD5    lea         eax,[ebp-6D8]
 006F8BDB    push        eax
 006F8BDC    mov         ecx,7080A4;'smiCommonLevel2'
 006F8BE1    mov         edx,708058;'ComLevelMenu'
 006F8BE6    mov         eax,esi
 006F8BE8    mov         edi,dword ptr [eax]
 006F8BEA    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8BED    mov         edx,dword ptr [ebp-6D8]
 006F8BF3    mov         eax,dword ptr [ebx+364];TFXADMenuFrame.miCommonLevel2:TMenuItem
 006F8BF9    call        TMenuItem.SetCaption
 006F8BFE    push        7080D0;'3 - Level 3'
 006F8C03    lea         eax,[ebp-6DC]
 006F8C09    push        eax
 006F8C0A    mov         ecx,7080F4;'smiCommonLevel3'
 006F8C0F    mov         edx,708058;'ComLevelMenu'
 006F8C14    mov         eax,esi
 006F8C16    mov         edi,dword ptr [eax]
 006F8C18    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8C1B    mov         edx,dword ptr [ebp-6DC]
 006F8C21    mov         eax,dword ptr [ebx+368];TFXADMenuFrame.miCommonLevel3:TMenuItem
 006F8C27    call        TMenuItem.SetCaption
 006F8C2C    push        708120;'4 - Level 4'
 006F8C31    lea         eax,[ebp-6E0]
 006F8C37    push        eax
 006F8C38    mov         ecx,708144;'smiCommonLevel4'
 006F8C3D    mov         edx,708058;'ComLevelMenu'
 006F8C42    mov         eax,esi
 006F8C44    mov         edi,dword ptr [eax]
 006F8C46    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8C49    mov         edx,dword ptr [ebp-6E0]
 006F8C4F    mov         eax,dword ptr [ebx+36C];TFXADMenuFrame.miCommonLevel4:TMenuItem
 006F8C55    call        TMenuItem.SetCaption
 006F8C5A    push        708170;'5 - Level 5 - Least sensitive'
 006F8C5F    lea         eax,[ebp-6E4]
 006F8C65    push        eax
 006F8C66    mov         ecx,7081B8;'smiCommonLevel5'
 006F8C6B    mov         edx,708058;'ComLevelMenu'
 006F8C70    mov         eax,esi
 006F8C72    mov         edi,dword ptr [eax]
 006F8C74    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8C77    mov         edx,dword ptr [ebp-6E4]
 006F8C7D    mov         eax,dword ptr [ebx+370];TFXADMenuFrame.miCommonLevel5:TMenuItem
 006F8C83    call        TMenuItem.SetCaption
 006F8C88    push        707FE4;'1 - Level 1 - most sensitive'
 006F8C8D    lea         eax,[ebp-6E8]
 006F8C93    push        eax
 006F8C94    mov         ecx,7081E4;'smiSysMultiLevel1'
 006F8C99    mov         edx,708214;'SysMultiLevelMenu'
 006F8C9E    mov         eax,esi
 006F8CA0    mov         edi,dword ptr [eax]
 006F8CA2    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8CA5    mov         edx,dword ptr [ebp-6E8]
 006F8CAB    mov         eax,dword ptr [ebx+3A8];TFXADMenuFrame.miSysMultiLevel1:TMenuItem
 006F8CB1    call        TMenuItem.SetCaption
 006F8CB6    push        708080;'2 - Level 2'
 006F8CBB    lea         eax,[ebp-6EC]
 006F8CC1    push        eax
 006F8CC2    mov         ecx,708244;'smiSysMultiLevel2'
 006F8CC7    mov         edx,708214;'SysMultiLevelMenu'
 006F8CCC    mov         eax,esi
 006F8CCE    mov         edi,dword ptr [eax]
 006F8CD0    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8CD3    mov         edx,dword ptr [ebp-6EC]
 006F8CD9    mov         eax,dword ptr [ebx+3AC];TFXADMenuFrame.miSysMultiLevel2:TMenuItem
 006F8CDF    call        TMenuItem.SetCaption
 006F8CE4    push        7080D0;'3 - Level 3'
 006F8CE9    lea         eax,[ebp-6F0]
 006F8CEF    push        eax
 006F8CF0    mov         ecx,708274;'smiSysMultiLevel3'
 006F8CF5    mov         edx,708214;'SysMultiLevelMenu'
 006F8CFA    mov         eax,esi
 006F8CFC    mov         edi,dword ptr [eax]
 006F8CFE    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8D01    mov         edx,dword ptr [ebp-6F0]
 006F8D07    mov         eax,dword ptr [ebx+3B0];TFXADMenuFrame.miSysMultiLevel3:TMenuItem
 006F8D0D    call        TMenuItem.SetCaption
 006F8D12    push        708120;'4 - Level 4'
 006F8D17    lea         eax,[ebp-6F4]
 006F8D1D    push        eax
 006F8D1E    mov         ecx,7082A4;'smiSysMultiLevel4'
 006F8D23    mov         edx,708214;'SysMultiLevelMenu'
 006F8D28    mov         eax,esi
 006F8D2A    mov         edi,dword ptr [eax]
 006F8D2C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8D2F    mov         edx,dword ptr [ebp-6F4]
 006F8D35    mov         eax,dword ptr [ebx+3B4];TFXADMenuFrame.miSysMultiLevel4:TMenuItem
 006F8D3B    call        TMenuItem.SetCaption
 006F8D40    push        7082D4;'5 - Level 5'
 006F8D45    lea         eax,[ebp-6F8]
 006F8D4B    push        eax
 006F8D4C    mov         ecx,7082F8;'smiSysMultiLevel5'
 006F8D51    mov         edx,708214;'SysMultiLevelMenu'
 006F8D56    mov         eax,esi
 006F8D58    mov         edi,dword ptr [eax]
 006F8D5A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8D5D    mov         edx,dword ptr [ebp-6F8]
 006F8D63    mov         eax,dword ptr [ebx+3B8];TFXADMenuFrame.miSysMultiLevel5:TMenuItem
 006F8D69    call        TMenuItem.SetCaption
 006F8D6E    push        708328;'6 - Level 6 - only thermal detection'
 006F8D73    lea         eax,[ebp-6FC]
 006F8D79    push        eax
 006F8D7A    mov         ecx,708380;'smiSysMultiLevel6'
 006F8D7F    mov         edx,708214;'SysMultiLevelMenu'
 006F8D84    mov         eax,esi
 006F8D86    mov         edi,dword ptr [eax]
 006F8D88    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8D8B    mov         edx,dword ptr [ebp-6FC]
 006F8D91    mov         eax,dword ptr [ebx+3BC];TFXADMenuFrame.miSysMultiLevel6:TMenuItem
 006F8D97    call        TMenuItem.SetCaption
 006F8D9C    push        707FE4;'1 - Level 1 - most sensitive'
 006F8DA1    lea         eax,[ebp-700]
 006F8DA7    push        eax
 006F8DA8    mov         ecx,7083B0;'smiApoMultiLevel1'
 006F8DAD    mov         edx,7083E0;'ApoMultiLevelMenu'
 006F8DB2    mov         eax,esi
 006F8DB4    mov         edi,dword ptr [eax]
 006F8DB6    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8DB9    mov         edx,dword ptr [ebp-700]
 006F8DBF    mov         eax,dword ptr [ebx+628];TFXADMenuFrame.miApoMultiLevel1:TMenuItem
 006F8DC5    call        TMenuItem.SetCaption
 006F8DCA    push        708410;'2 - Level 2 - only smoke detection'
 006F8DCF    lea         eax,[ebp-704]
 006F8DD5    push        eax
 006F8DD6    mov         ecx,708464;'smiApoMultiLevel2'
 006F8DDB    mov         edx,7083E0;'ApoMultiLevelMenu'
 006F8DE0    mov         eax,esi
 006F8DE2    mov         edi,dword ptr [eax]
 006F8DE4    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8DE7    mov         edx,dword ptr [ebp-704]
 006F8DED    mov         eax,dword ptr [ebx+62C];TFXADMenuFrame.miApoMultiLevel2:TMenuItem
 006F8DF3    call        TMenuItem.SetCaption
 006F8DF8    push        7080D0;'3 - Level 3'
 006F8DFD    lea         eax,[ebp-708]
 006F8E03    push        eax
 006F8E04    mov         ecx,708494;'smiApoMultiLevel3'
 006F8E09    mov         edx,7083E0;'ApoMultiLevelMenu'
 006F8E0E    mov         eax,esi
 006F8E10    mov         edi,dword ptr [eax]
 006F8E12    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8E15    mov         edx,dword ptr [ebp-708]
 006F8E1B    mov         eax,dword ptr [ebx+630];TFXADMenuFrame.miApoMultiLevel3:TMenuItem
 006F8E21    call        TMenuItem.SetCaption
 006F8E26    push        708120;'4 - Level 4'
 006F8E2B    lea         eax,[ebp-70C]
 006F8E31    push        eax
 006F8E32    mov         ecx,7084C4;'smiApoMultiLevel4'
 006F8E37    mov         edx,7083E0;'ApoMultiLevelMenu'
 006F8E3C    mov         eax,esi
 006F8E3E    mov         edi,dword ptr [eax]
 006F8E40    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8E43    mov         edx,dword ptr [ebp-70C]
 006F8E49    mov         eax,dword ptr [ebx+634];TFXADMenuFrame.miApoMultiLevel4:TMenuItem
 006F8E4F    call        TMenuItem.SetCaption
 006F8E54    push        7084F4;'5 - Level 5 - only thermal detection'
 006F8E59    lea         eax,[ebp-710]
 006F8E5F    push        eax
 006F8E60    mov         ecx,70854C;'smiApoMultiLevel5'
 006F8E65    mov         edx,7083E0;'ApoMultiLevelMenu'
 006F8E6A    mov         eax,esi
 006F8E6C    mov         edi,dword ptr [eax]
 006F8E6E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8E71    mov         edx,dword ptr [ebp-710]
 006F8E77    mov         eax,dword ptr [ebx+638];TFXADMenuFrame.miApoMultiLevel5:TMenuItem
 006F8E7D    call        TMenuItem.SetCaption
 006F8E82    push        70857C;'0 - No delay'
 006F8E87    lea         eax,[ebp-714]
 006F8E8D    push        eax
 006F8E8E    mov         ecx,7085A4;'smiNoDelay'
 006F8E93    mov         edx,7085C8;'InDelayMenu'
 006F8E98    mov         eax,esi
 006F8E9A    mov         edi,dword ptr [eax]
 006F8E9C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8E9F    mov         edx,dword ptr [ebp-714]
 006F8EA5    mov         eax,dword ptr [ebx+3C4];TFXADMenuFrame.miNodelay:TMenuItem
 006F8EAB    call        TMenuItem.SetCaption
 006F8EB0    push        7085EC;'1 - 10 seconds'
 006F8EB5    lea         eax,[ebp-718]
 006F8EBB    push        eax
 006F8EBC    mov         ecx,708618;'smi10secs'
 006F8EC1    mov         edx,7085C8;'InDelayMenu'
 006F8EC6    mov         eax,esi
 006F8EC8    mov         edi,dword ptr [eax]
 006F8ECA    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8ECD    mov         edx,dword ptr [ebp-718]
 006F8ED3    mov         eax,dword ptr [ebx+3C8];TFXADMenuFrame.mi10seconds:TMenuItem
 006F8ED9    call        TMenuItem.SetCaption
 006F8EDE    push        708638;'2 - 20 seconds'
 006F8EE3    lea         eax,[ebp-71C]
 006F8EE9    push        eax
 006F8EEA    mov         ecx,708664;'smi20secs'
 006F8EEF    mov         edx,7085C8;'InDelayMenu'
 006F8EF4    mov         eax,esi
 006F8EF6    mov         edi,dword ptr [eax]
 006F8EF8    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8EFB    mov         edx,dword ptr [ebp-71C]
 006F8F01    mov         eax,dword ptr [ebx+3CC];TFXADMenuFrame.mi20seconds:TMenuItem
 006F8F07    call        TMenuItem.SetCaption
 006F8F0C    push        708684;'3 - 30 seconds'
 006F8F11    lea         eax,[ebp-720]
 006F8F17    push        eax
 006F8F18    mov         ecx,7086B0;'smi30secs'
 006F8F1D    mov         edx,7085C8;'InDelayMenu'
 006F8F22    mov         eax,esi
 006F8F24    mov         edi,dword ptr [eax]
 006F8F26    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8F29    mov         edx,dword ptr [ebp-720]
 006F8F2F    mov         eax,dword ptr [ebx+3D0];TFXADMenuFrame.mi30seconds:TMenuItem
 006F8F35    call        TMenuItem.SetCaption
 006F8F3A    push        7086D0;'4 - 40 seconds'
 006F8F3F    lea         eax,[ebp-724]
 006F8F45    push        eax
 006F8F46    mov         ecx,7086FC;'smi40secs'
 006F8F4B    mov         edx,7085C8;'InDelayMenu'
 006F8F50    mov         eax,esi
 006F8F52    mov         edi,dword ptr [eax]
 006F8F54    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8F57    mov         edx,dword ptr [ebp-724]
 006F8F5D    mov         eax,dword ptr [ebx+3D4];TFXADMenuFrame.mi40seconds:TMenuItem
 006F8F63    call        TMenuItem.SetCaption
 006F8F68    push        70871C;'5 - 50 seconds'
 006F8F6D    lea         eax,[ebp-728]
 006F8F73    push        eax
 006F8F74    mov         ecx,708748;'smi50secs'
 006F8F79    mov         edx,7085C8;'InDelayMenu'
 006F8F7E    mov         eax,esi
 006F8F80    mov         edi,dword ptr [eax]
 006F8F82    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8F85    mov         edx,dword ptr [ebp-728]
 006F8F8B    mov         eax,dword ptr [ebx+3D8];TFXADMenuFrame.mi50seconds:TMenuItem
 006F8F91    call        TMenuItem.SetCaption
 006F8F96    push        708768;'6 - 60 seconds'
 006F8F9B    lea         eax,[ebp-72C]
 006F8FA1    push        eax
 006F8FA2    mov         ecx,708794;'smi60secs'
 006F8FA7    mov         edx,7085C8;'InDelayMenu'
 006F8FAC    mov         eax,esi
 006F8FAE    mov         edi,dword ptr [eax]
 006F8FB0    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8FB3    mov         edx,dword ptr [ebp-72C]
 006F8FB9    mov         eax,dword ptr [ebx+3DC];TFXADMenuFrame.mi60seconds:TMenuItem
 006F8FBF    call        TMenuItem.SetCaption
 006F8FC4    push        7087B4;'0 - No filter'
 006F8FC9    lea         eax,[ebp-730]
 006F8FCF    push        eax
 006F8FD0    mov         ecx,7087DC;'smiNoFilter'
 006F8FD5    mov         edx,708800;'InFiltMenu'
 006F8FDA    mov         eax,esi
 006F8FDC    mov         edi,dword ptr [eax]
 006F8FDE    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F8FE1    mov         edx,dword ptr [ebp-730]
 006F8FE7    mov         eax,dword ptr [ebx+3E4];TFXADMenuFrame.miNoFilter:TMenuItem
 006F8FED    call        TMenuItem.SetCaption
 006F8FF2    push        708824;'1 - Factor 1'
 006F8FF7    lea         eax,[ebp-734]
 006F8FFD    push        eax
 006F8FFE    mov         ecx,70884C;'smiFilter1'
 006F9003    mov         edx,708800;'InFiltMenu'
 006F9008    mov         eax,esi
 006F900A    mov         edi,dword ptr [eax]
 006F900C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F900F    mov         edx,dword ptr [ebp-734]
 006F9015    mov         eax,dword ptr [ebx+3E8];TFXADMenuFrame.miFilter1:TMenuItem
 006F901B    call        TMenuItem.SetCaption
 006F9020    push        708870;'2 - Factor 2'
 006F9025    lea         eax,[ebp-738]
 006F902B    push        eax
 006F902C    mov         ecx,708898;'smiFilter2'
 006F9031    mov         edx,708800;'InFiltMenu'
 006F9036    mov         eax,esi
 006F9038    mov         edi,dword ptr [eax]
 006F903A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F903D    mov         edx,dword ptr [ebp-738]
 006F9043    mov         eax,dword ptr [ebx+3EC];TFXADMenuFrame.miFilter2:TMenuItem
 006F9049    call        TMenuItem.SetCaption
 006F904E    push        7088BC;'3 - Factor 3'
 006F9053    lea         eax,[ebp-73C]
 006F9059    push        eax
 006F905A    mov         ecx,7088E4;'smiFilter3'
 006F905F    mov         edx,708800;'InFiltMenu'
 006F9064    mov         eax,esi
 006F9066    mov         edi,dword ptr [eax]
 006F9068    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F906B    mov         edx,dword ptr [ebp-73C]
 006F9071    mov         eax,dword ptr [ebx+3F0];TFXADMenuFrame.miFilter3:TMenuItem
 006F9077    call        TMenuItem.SetCaption
 006F907C    push        708908;'4 - Factor 4'
 006F9081    lea         eax,[ebp-740]
 006F9087    push        eax
 006F9088    mov         ecx,708930;'smiFilter4'
 006F908D    mov         edx,708800;'InFiltMenu'
 006F9092    mov         eax,esi
 006F9094    mov         edi,dword ptr [eax]
 006F9096    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F9099    mov         edx,dword ptr [ebp-740]
 006F909F    mov         eax,dword ptr [ebx+3F4];TFXADMenuFrame.miFilter4:TMenuItem
 006F90A5    call        TMenuItem.SetCaption
 006F90AA    push        708954;'0 - Not affected by day mode'
 006F90AF    lea         eax,[ebp-744]
 006F90B5    push        eax
 006F90B6    mov         ecx,70899C;'smiDayNoEffect'
 006F90BB    mov         edx,7089C8;'DayModeMenu'
 006F90C0    mov         eax,esi
 006F90C2    mov         edi,dword ptr [eax]
 006F90C4    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F90C7    mov         edx,dword ptr [ebp-744]
 006F90CD    mov         eax,dword ptr [ebx+3FC];TFXADMenuFrame.miDayNoEffect:TMenuItem
 006F90D3    call        TMenuItem.SetCaption
 006F90D8    push        7089EC;'1 - Uses day mode thresholds'
 006F90DD    lea         eax,[ebp-748]
 006F90E3    push        eax
 006F90E4    mov         ecx,708A34;'smiDayThresholds'
 006F90E9    mov         edx,7089C8;'DayModeMenu'
 006F90EE    mov         eax,esi
 006F90F0    mov         edi,dword ptr [eax]
 006F90F2    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F90F5    mov         edx,dword ptr [ebp-748]
 006F90FB    mov         eax,dword ptr [ebx+400];TFXADMenuFrame.miDayThresholds:TMenuItem
 006F9101    call        TMenuItem.SetCaption
 006F9106    push        708A64;'2 - Disabled during day mode'
 006F910B    lea         eax,[ebp-74C]
 006F9111    push        eax
 006F9112    mov         ecx,708AAC;'smiDayDisabled'
 006F9117    mov         edx,7089C8;'DayModeMenu'
 006F911C    mov         eax,esi
 006F911E    mov         edi,dword ptr [eax]
 006F9120    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F9123    mov         edx,dword ptr [ebp-74C]
 006F9129    mov         eax,dword ptr [ebx+404];TFXADMenuFrame.miDayDisabled:TMenuItem
 006F912F    call        TMenuItem.SetCaption
 006F9134    push        708AD8;'3 - Input only disabled during day mode'
 006F9139    lea         eax,[ebp-750]
 006F913F    push        eax
 006F9140    mov         ecx,708B34;'smiDayInpDisabled'
 006F9145    mov         edx,7089C8;'DayModeMenu'
 006F914A    mov         eax,esi
 006F914C    mov         edi,dword ptr [eax]
 006F914E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F9151    mov         edx,dword ptr [ebp-750]
 006F9157    mov         eax,dword ptr [ebx+408];TFXADMenuFrame.miDayInpDisabled:TMenuItem
 006F915D    call        TMenuItem.SetCaption
 006F9162    push        708B64;'0 - Not disabled by zone disablement'
 006F9167    lea         eax,[ebp-754]
 006F916D    push        eax
 006F916E    mov         ecx,708BBC;'smiZDisNoEffect'
 006F9173    mov         edx,708BE8;'ZoneDisMenu'
 006F9178    mov         eax,esi
 006F917A    mov         edi,dword ptr [eax]
 006F917C    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F917F    mov         edx,dword ptr [ebp-754]
 006F9185    mov         eax,dword ptr [ebx+618];TFXADMenuFrame.miZDisNoEffect:TMenuItem
 006F918B    call        TMenuItem.SetCaption
 006F9190    push        708C0C;'1 - Disabled by zone disablement'
 006F9195    lea         eax,[ebp-758]
 006F919B    push        eax
 006F919C    mov         ecx,708C5C;'smiZDisDisabled'
 006F91A1    mov         edx,708BE8;'ZoneDisMenu'
 006F91A6    mov         eax,esi
 006F91A8    mov         edi,dword ptr [eax]
 006F91AA    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F91AD    mov         edx,dword ptr [ebp-758]
 006F91B3    mov         eax,dword ptr [ebx+61C];TFXADMenuFrame.miZDisDisabled:TMenuItem
 006F91B9    call        TMenuItem.SetCaption
 006F91BE    push        708C88;'2 - Input only disabled by zone disablement'
 006F91C3    lea         eax,[ebp-75C]
 006F91C9    push        eax
 006F91CA    mov         ecx,708CEC;'smiZDisInpDisabled'
 006F91CF    mov         edx,708BE8;'ZoneDisMenu'
 006F91D4    mov         eax,esi
 006F91D6    mov         edi,dword ptr [eax]
 006F91D8    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F91DB    mov         edx,dword ptr [ebp-75C]
 006F91E1    mov         eax,dword ptr [ebx+620];TFXADMenuFrame.miZDisInpDisabled:TMenuItem
 006F91E7    call        TMenuItem.SetCaption
 006F91EC    push        707FE4;'1 - Level 1 - most sensitive'
 006F91F1    lea         eax,[ebp-760]
 006F91F7    push        eax
 006F91F8    mov         ecx,708D20;'smiLaserLevel1'
 006F91FD    mov         edx,708D4C;'LaserLevelMenu'
 006F9202    mov         eax,esi
 006F9204    mov         edi,dword ptr [eax]
 006F9206    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F9209    mov         edx,dword ptr [ebp-760]
 006F920F    mov         eax,dword ptr [ebx+378];TFXADMenuFrame.miLaserLevel1:TMenuItem
 006F9215    call        TMenuItem.SetCaption
 006F921A    push        708080;'2 - Level 2'
 006F921F    lea         eax,[ebp-764]
 006F9225    push        eax
 006F9226    mov         ecx,708D78;'smiLaserLevel2'
 006F922B    mov         edx,708D4C;'LaserLevelMenu'
 006F9230    mov         eax,esi
 006F9232    mov         edi,dword ptr [eax]
 006F9234    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F9237    mov         edx,dword ptr [ebp-764]
 006F923D    mov         eax,dword ptr [ebx+37C];TFXADMenuFrame.miLaserLevel2:TMenuItem
 006F9243    call        TMenuItem.SetCaption
 006F9248    push        7080D0;'3 - Level 3'
 006F924D    lea         eax,[ebp-768]
 006F9253    push        eax
 006F9254    mov         ecx,708DA4;'smiLaserLevel3'
 006F9259    mov         edx,708D4C;'LaserLevelMenu'
 006F925E    mov         eax,esi
 006F9260    mov         edi,dword ptr [eax]
 006F9262    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F9265    mov         edx,dword ptr [ebp-768]
 006F926B    mov         eax,dword ptr [ebx+380];TFXADMenuFrame.miLaserLevel3:TMenuItem
 006F9271    call        TMenuItem.SetCaption
 006F9276    push        708120;'4 - Level 4'
 006F927B    lea         eax,[ebp-76C]
 006F9281    push        eax
 006F9282    mov         ecx,708DD0;'smiLaserLevel4'
 006F9287    mov         edx,708D4C;'LaserLevelMenu'
 006F928C    mov         eax,esi
 006F928E    mov         edi,dword ptr [eax]
 006F9290    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F9293    mov         edx,dword ptr [ebp-76C]
 006F9299    mov         eax,dword ptr [ebx+384];TFXADMenuFrame.miLaserLevel4:TMenuItem
 006F929F    call        TMenuItem.SetCaption
 006F92A4    push        7082D4;'5 - Level 5'
 006F92A9    lea         eax,[ebp-770]
 006F92AF    push        eax
 006F92B0    mov         ecx,708DFC;'smiLaserLevel5'
 006F92B5    mov         edx,708D4C;'LaserLevelMenu'
 006F92BA    mov         eax,esi
 006F92BC    mov         edi,dword ptr [eax]
 006F92BE    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F92C1    mov         edx,dword ptr [ebp-770]
 006F92C7    mov         eax,dword ptr [ebx+388];TFXADMenuFrame.miLaserLevel5:TMenuItem
 006F92CD    call        TMenuItem.SetCaption
 006F92D2    push        708E28;'6 - Level 6'
 006F92D7    lea         eax,[ebp-774]
 006F92DD    push        eax
 006F92DE    mov         ecx,708E4C;'smiLaserLevel6'
 006F92E3    mov         edx,708D4C;'LaserLevelMenu'
 006F92E8    mov         eax,esi
 006F92EA    mov         edi,dword ptr [eax]
 006F92EC    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F92EF    mov         edx,dword ptr [ebp-774]
 006F92F5    mov         eax,dword ptr [ebx+38C];TFXADMenuFrame.miLaserLevel6:TMenuItem
 006F92FB    call        TMenuItem.SetCaption
 006F9300    push        708E78;'7 - Level 7'
 006F9305    lea         eax,[ebp-778]
 006F930B    push        eax
 006F930C    mov         ecx,708E9C;'smiLaserLevel7'
 006F9311    mov         edx,708D4C;'LaserLevelMenu'
 006F9316    mov         eax,esi
 006F9318    mov         edi,dword ptr [eax]
 006F931A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F931D    mov         edx,dword ptr [ebp-778]
 006F9323    mov         eax,dword ptr [ebx+390];TFXADMenuFrame.miLaserLevel7:TMenuItem
 006F9329    call        TMenuItem.SetCaption
 006F932E    push        708EC8;'8 - Level 8'
 006F9333    lea         eax,[ebp-77C]
 006F9339    push        eax
 006F933A    mov         ecx,708EEC;'smiLaserLevel8'
 006F933F    mov         edx,708D4C;'LaserLevelMenu'
 006F9344    mov         eax,esi
 006F9346    mov         edi,dword ptr [eax]
 006F9348    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F934B    mov         edx,dword ptr [ebp-77C]
 006F9351    mov         eax,dword ptr [ebx+394];TFXADMenuFrame.miLaserLevel8:TMenuItem
 006F9357    call        TMenuItem.SetCaption
 006F935C    push        708F18;'9 - Level 9'
 006F9361    lea         eax,[ebp-780]
 006F9367    push        eax
 006F9368    mov         ecx,708F3C;'smiLaserLevel9'
 006F936D    mov         edx,708D4C;'LaserLevelMenu'
 006F9372    mov         eax,esi
 006F9374    mov         edi,dword ptr [eax]
 006F9376    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F9379    mov         edx,dword ptr [ebp-780]
 006F937F    mov         eax,dword ptr [ebx+398];TFXADMenuFrame.miLaserLevel9:TMenuItem
 006F9385    call        TMenuItem.SetCaption
 006F938A    push        708F68;'9 - Level 9 - least sensitive'
 006F938F    lea         eax,[ebp-784]
 006F9395    push        eax
 006F9396    mov         ecx,708FB0;'smiLaser2Level9'
 006F939B    mov         edx,708D4C;'LaserLevelMenu'
 006F93A0    mov         eax,esi
 006F93A2    mov         edi,dword ptr [eax]
 006F93A4    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F93A7    mov         edx,dword ptr [ebp-784]
 006F93AD    mov         eax,dword ptr [ebx+39C];TFXADMenuFrame.miLaser2Level9:TMenuItem
 006F93B3    call        TMenuItem.SetCaption
 006F93B8    push        708FDC;'0 - Level 10 - least sensitive'
 006F93BD    lea         eax,[ebp-788]
 006F93C3    push        eax
 006F93C4    mov         ecx,709028;'smiLaserLevel10'
 006F93C9    mov         edx,708D4C;'LaserLevelMenu'
 006F93CE    mov         eax,esi
 006F93D0    mov         edi,dword ptr [eax]
 006F93D2    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F93D5    mov         edx,dword ptr [ebp-788]
 006F93DB    mov         eax,dword ptr [ebx+3A0];TFXADMenuFrame.miLaserLevel10:TMenuItem
 006F93E1    call        TMenuItem.SetCaption
 006F93E6    push        709054;'4k7 EOL Resistor'
 006F93EB    lea         eax,[ebp-78C]
 006F93F1    push        eax
 006F93F2    mov         ecx,709084;'smiEOL4k7R'
 006F93F7    mov         edx,7090A8;'EolResMenu'
 006F93FC    mov         eax,esi
 006F93FE    mov         edi,dword ptr [eax]
 006F9400    call        dword ptr [edi+4];TFXIniFile.ReadString
 006F9403    mov         edx,dword ptr [ebp-78C]
 006F9409    mov         eax,dword ptr [ebx+410];TFXADMenuFrame.miEOL4k7R1:TMenuItem
 006F940F    call        TMenuItem.SetCaption
 006F9414    push        7090CC;'2k94 EOL Resistor'
 006F9419    lea         eax,[ebp-790]
 006F941F    push        eax
 006F9420    mov         ecx,7090FC;'smiEOL2k9R'
 006F9425    mov         edx,7090A8;'EolResMenu'
 006F942A    mov         eax,esi
 006F942C    mov         esi,dword ptr [eax]
 006F942E    call        dword ptr [esi+4];TFXIniFile.ReadString
 006F9431    mov         edx,dword ptr [ebp-790]
 006F9437    mov         eax,dword ptr [ebx+414];TFXADMenuFrame.miEOL2k9R1:TMenuItem
 006F943D    call        TMenuItem.SetCaption
 006F9442    xor         eax,eax
 006F9444    pop         edx
 006F9445    pop         ecx
 006F9446    pop         ecx
 006F9447    mov         dword ptr fs:[eax],edx
 006F944A    push        6F94A7
 006F944F    lea         eax,[ebp-790]
 006F9455    mov         edx,64
 006F945A    call        @UStrArrayClr
 006F945F    lea         eax,[ebp-600]
 006F9465    mov         edx,64
 006F946A    call        @UStrArrayClr
 006F946F    lea         eax,[ebp-470]
 006F9475    mov         edx,64
 006F947A    call        @UStrArrayClr
 006F947F    lea         eax,[ebp-2E0]
 006F9485    mov         edx,64
 006F948A    call        @UStrArrayClr
 006F948F    lea         eax,[ebp-150]
 006F9495    mov         edx,54
 006F949A    call        @UStrArrayClr
 006F949F    ret
>006F94A0    jmp         @HandleFinally
>006F94A5    jmp         006F944F
 006F94A7    pop         edi
 006F94A8    pop         esi
 006F94A9    pop         ebx
 006F94AA    mov         esp,ebp
 006F94AC    pop         ebp
 006F94AD    ret
*}
end;

//00709114
procedure TFXADMenuFrame.SapTypeClick(Sender:TObject);
begin
{*
 00709114    push        ebx
 00709115    cmp         word ptr [eax+0B8A],0;TFXADMenuFrame.?fB8A:word
>0070911D    je          0070912D
 0070911F    mov         ebx,eax
 00709121    mov         eax,dword ptr [ebx+0B8C];TFXADMenuFrame.?fB8C:TAPFillDlg
 00709127    call        dword ptr [ebx+0B88];TFXADMenuFrame.EvSapTypeClick
 0070912D    pop         ebx
 0070912E    ret
*}
end;

//00709130
procedure TFXADMenuFrame.SapSysTypeClick(Sender:TObject);
begin
{*
 00709130    push        ebx
 00709131    cmp         word ptr [eax+0B92],0;TFXADMenuFrame.?fB92:word
>00709139    je          00709149
 0070913B    mov         ebx,eax
 0070913D    mov         eax,dword ptr [ebx+0B94];TFXADMenuFrame.?fB94:TAPFillDlg
 00709143    call        dword ptr [ebx+0B90];TFXADMenuFrame.EvSapSysTypeClick
 00709149    pop         ebx
 0070914A    ret
*}
end;

//0070914C
procedure TFXADMenuFrame.SapSounderModeClick(Sender:TObject);
begin
{*
 0070914C    push        ebx
 0070914D    cmp         word ptr [eax+0B9A],0;TFXADMenuFrame.?fB9A:word
>00709155    je          00709165
 00709157    mov         ebx,eax
 00709159    mov         eax,dword ptr [ebx+0B9C];TFXADMenuFrame.?fB9C:TAPFillDlg
 0070915F    call        dword ptr [ebx+0B98];TFXADMenuFrame.EvSapSounderModeClick
 00709165    pop         ebx
 00709166    ret
*}
end;

//00709168
procedure TFXADMenuFrame.ApoTypeClick(Sender:TObject);
begin
{*
 00709168    push        ebx
 00709169    cmp         word ptr [eax+0BA2],0;TFXADMenuFrame.?fBA2:word
>00709171    je          00709181
 00709173    mov         ebx,eax
 00709175    mov         eax,dword ptr [ebx+0BA4];TFXADMenuFrame.?fBA4:TAPFillDlg
 0070917B    call        dword ptr [ebx+0BA0];TFXADMenuFrame.EvApoTypeClick
 00709181    pop         ebx
 00709182    ret
*}
end;

//00709184
procedure TFXADMenuFrame.ApoSubTypeClick(Sender:TObject);
begin
{*
 00709184    push        ebx
 00709185    cmp         word ptr [eax+0BAA],0;TFXADMenuFrame.?fBAA:word
>0070918D    je          0070919D
 0070918F    mov         ebx,eax
 00709191    mov         eax,dword ptr [ebx+0BAC];TFXADMenuFrame.?fBAC:TAPFillDlg
 00709197    call        dword ptr [ebx+0BA8];TFXADMenuFrame.EvApoSubTypeClick
 0070919D    pop         ebx
 0070919E    ret
*}
end;

//007091A0
procedure TFXADMenuFrame.ApoSounderModeClick(Sender:TObject);
begin
{*
 007091A0    push        ebx
 007091A1    cmp         word ptr [eax+0BB2],0;TFXADMenuFrame.?fBB2:word
>007091A9    je          007091B9
 007091AB    mov         ebx,eax
 007091AD    mov         eax,dword ptr [ebx+0BB4];TFXADMenuFrame.?fBB4:TAPFillDlg
 007091B3    call        dword ptr [ebx+0BB0];TFXADMenuFrame.EvApoSounderModeClick
 007091B9    pop         ebx
 007091BA    ret
*}
end;

//007091BC
procedure TFXADMenuFrame.ComCzmClick(Sender:TObject);
begin
{*
 007091BC    push        ebx
 007091BD    cmp         word ptr [eax+0BD2],0;TFXADMenuFrame.?fBD2:word
>007091C5    je          007091D5
 007091C7    mov         ebx,eax
 007091C9    mov         eax,dword ptr [ebx+0BD4];TFXADMenuFrame.?fBD4:TAPFillDlg
 007091CF    call        dword ptr [ebx+0BD0];TFXADMenuFrame.EvComCzmClick
 007091D5    pop         ebx
 007091D6    ret
*}
end;

//007091D8
procedure TFXADMenuFrame.SysTypeClick(Sender:TObject);
begin
{*
 007091D8    push        ebx
 007091D9    cmp         word ptr [eax+0BBA],0;TFXADMenuFrame.?fBBA:word
>007091E1    je          007091F1
 007091E3    mov         ebx,eax
 007091E5    mov         eax,dword ptr [ebx+0BBC];TFXADMenuFrame.?fBBC:TAPFillDlg
 007091EB    call        dword ptr [ebx+0BB8];TFXADMenuFrame.EvSysTypeClick
 007091F1    pop         ebx
 007091F2    ret
*}
end;

//007091F4
procedure TFXADMenuFrame.SysDetSubTypeClick(Sender:TObject);
begin
{*
 007091F4    push        ebx
 007091F5    cmp         word ptr [eax+0BC2],0;TFXADMenuFrame.?fBC2:word
>007091FD    je          0070920D
 007091FF    mov         ebx,eax
 00709201    mov         eax,dword ptr [ebx+0BC4];TFXADMenuFrame.?fBC4:TAPFillDlg
 00709207    call        dword ptr [ebx+0BC0];TFXADMenuFrame.EvSysDetSubTypeClick
 0070920D    pop         ebx
 0070920E    ret
*}
end;

//00709210
procedure TFXADMenuFrame.CnvEolClick(Sender:TObject);
begin
{*
 00709210    push        ebx
 00709211    cmp         word ptr [eax+0BCA],0;TFXADMenuFrame.?fBCA:word
>00709219    je          00709229
 0070921B    mov         ebx,eax
 0070921D    mov         eax,dword ptr [ebx+0BCC];TFXADMenuFrame.?fBCC:TAPFillDlg
 00709223    call        dword ptr [ebx+0BC8];TFXADMenuFrame.EvCnvEolClick
 00709229    pop         ebx
 0070922A    ret
*}
end;

//0070922C
procedure TFXADMenuFrame.ComSounderModeClick(Sender:TObject);
begin
{*
 0070922C    push        ebx
 0070922D    cmp         word ptr [eax+0BFA],0;TFXADMenuFrame.?fBFA:word
>00709235    je          00709245
 00709237    mov         ebx,eax
 00709239    mov         eax,dword ptr [ebx+0BFC];TFXADMenuFrame.?fBFC:TAPFillDlg
 0070923F    call        dword ptr [ebx+0BF8];TFXADMenuFrame.EvComSounderModeClick
 00709245    pop         ebx
 00709246    ret
*}
end;

//00709248
procedure TFXADMenuFrame.ComInputClick(Sender:TObject);
begin
{*
 00709248    push        ebx
 00709249    cmp         word ptr [eax+0BDA],0;TFXADMenuFrame.?fBDA:word
>00709251    je          00709261
 00709253    mov         ebx,eax
 00709255    mov         eax,dword ptr [ebx+0BDC];TFXADMenuFrame.?fBDC:TAPFillDlg
 0070925B    call        dword ptr [ebx+0BD8];TFXADMenuFrame.EvComInputClick
 00709261    pop         ebx
 00709262    ret
*}
end;

//00709264
procedure TFXADMenuFrame.ComModeClick(Sender:TObject);
begin
{*
 00709264    push        ebx
 00709265    cmp         word ptr [eax+0BEA],0;TFXADMenuFrame.?fBEA:word
>0070926D    je          0070927D
 0070926F    mov         ebx,eax
 00709271    mov         eax,dword ptr [ebx+0BEC];TFXADMenuFrame.?fBEC:TAPFillDlg
 00709277    call        dword ptr [ebx+0BE8];TFXADMenuFrame.EvComModeClick
 0070927D    pop         ebx
 0070927E    ret
*}
end;

//00709280
procedure TFXADMenuFrame.ComYesNoClick(Sender:TObject);
begin
{*
 00709280    push        ebx
 00709281    cmp         word ptr [eax+0C02],0;TFXADMenuFrame.?fC02:word
>00709289    je          00709299
 0070928B    mov         ebx,eax
 0070928D    mov         eax,dword ptr [ebx+0C04];TFXADMenuFrame.?fC04:TAPFillDlg
 00709293    call        dword ptr [ebx+0C00];TFXADMenuFrame.EvComYesNoClick
 00709299    pop         ebx
 0070929A    ret
*}
end;

//0070929C
procedure TFXADMenuFrame.ComMonitoringClick(Sender:TObject);
begin
{*
 0070929C    push        ebx
 0070929D    cmp         word ptr [eax+0BF2],0;TFXADMenuFrame.?fBF2:word
>007092A5    je          007092B5
 007092A7    mov         ebx,eax
 007092A9    mov         eax,dword ptr [ebx+0BF4];TFXADMenuFrame.?fBF4:TAPFillDlg
 007092AF    call        dword ptr [ebx+0BF0];TFXADMenuFrame.EvComMonitoringClick
 007092B5    pop         ebx
 007092B6    ret
*}
end;

//007092B8
procedure TFXADMenuFrame.ComLevelClick(Sender:TObject);
begin
{*
 007092B8    push        ebx
 007092B9    cmp         word ptr [eax+0BE2],0;TFXADMenuFrame.?fBE2:word
>007092C1    je          007092D1
 007092C3    mov         ebx,eax
 007092C5    mov         eax,dword ptr [ebx+0BE4];TFXADMenuFrame.?fBE4:TAPFillDlg
 007092CB    call        dword ptr [ebx+0BE0];TFXADMenuFrame.EvComLevelClick
 007092D1    pop         ebx
 007092D2    ret
*}
end;

//007092D4
procedure TFXADMenuFrame.ComInDelayClick(Sender:TObject);
begin
{*
 007092D4    push        ebx
 007092D5    cmp         word ptr [eax+0C0A],0;TFXADMenuFrame.?fC0A:word
>007092DD    je          007092ED
 007092DF    mov         ebx,eax
 007092E1    mov         eax,dword ptr [ebx+0C0C];TFXADMenuFrame.?fC0C:TAPFillDlg
 007092E7    call        dword ptr [ebx+0C08];TFXADMenuFrame.EvComInDelayClick
 007092ED    pop         ebx
 007092EE    ret
*}
end;

//007092F0
procedure TFXADMenuFrame.ComInFilterClick(Sender:TObject);
begin
{*
 007092F0    push        ebx
 007092F1    cmp         word ptr [eax+0C12],0;TFXADMenuFrame.?fC12:word
>007092F9    je          00709309
 007092FB    mov         ebx,eax
 007092FD    mov         eax,dword ptr [ebx+0C14];TFXADMenuFrame.?fC14:TAPFillDlg
 00709303    call        dword ptr [ebx+0C10];TFXADMenuFrame.EvComInFilterClick
 00709309    pop         ebx
 0070930A    ret
*}
end;

//0070930C
procedure TFXADMenuFrame.ComDayModeClick(Sender:TObject);
begin
{*
 0070930C    push        ebx
 0070930D    cmp         word ptr [eax+0C1A],0;TFXADMenuFrame.?fC1A:word
>00709315    je          00709325
 00709317    mov         ebx,eax
 00709319    mov         eax,dword ptr [ebx+0C1C];TFXADMenuFrame.?fC1C:TAPFillDlg
 0070931F    call        dword ptr [ebx+0C18];TFXADMenuFrame.EvComDayModeClick
 00709325    pop         ebx
 00709326    ret
*}
end;

//00709328
procedure TFXADMenuFrame.ComZDisClick(Sender:TObject);
begin
{*
 00709328    push        ebx
 00709329    cmp         word ptr [eax+0C22],0;TFXADMenuFrame.?fC22:word
>00709331    je          00709341
 00709333    mov         ebx,eax
 00709335    mov         eax,dword ptr [ebx+0C24];TFXADMenuFrame.?fC24:TAPFillDlg
 0070933B    call        dword ptr [ebx+0C20];TFXADMenuFrame.EvComZDisClick
 00709341    pop         ebx
 00709342    ret
*}
end;

//00709344
procedure TFXADMenuFrame.ComOutputClick(Sender:TObject);
begin
{*
 00709344    push        ebx
 00709345    cmp         word ptr [eax+0C2A],0;TFXADMenuFrame.?fC2A:word
>0070934D    je          0070935D
 0070934F    mov         ebx,eax
 00709351    mov         eax,dword ptr [ebx+0C2C];TFXADMenuFrame.?fC2C:TAPFillDlg
 00709357    call        dword ptr [ebx+0C28];TFXADMenuFrame.EvComOutputClick
 0070935D    pop         ebx
 0070935E    ret
*}
end;

//00709360
procedure TFXADMenuFrame.ComSndrVolClick(Sender:TObject);
begin
{*
 00709360    push        ebx
 00709361    cmp         word ptr [eax+0C32],0;TFXADMenuFrame.?fC32:word
>00709369    je          00709379
 0070936B    mov         ebx,eax
 0070936D    mov         eax,dword ptr [ebx+0C34];TFXADMenuFrame.?fC34:TAPFillDlg
 00709373    call        dword ptr [ebx+0C30];TFXADMenuFrame.EvComSndrVolClick
 00709379    pop         ebx
 0070937A    ret
*}
end;

//0070937C
procedure TFXADMenuFrame.EnableOrDisableApoTypeMenuItems(FacFxEnableApolloProtocols:Boolean);
begin
{*
 0070937C    push        ebx
 0070937D    push        esi
 0070937E    mov         ebx,edx
 00709380    mov         esi,eax
 00709382    mov         dl,1
 00709384    mov         eax,dword ptr [esi+420];TFXADMenuFrame.miApoIon:TMenuItem
 0070938A    call        TMenuItem.SetEnabled
 0070938F    mov         dl,1
 00709391    mov         eax,dword ptr [esi+424];TFXADMenuFrame.miApoIonIntellia:TMenuItem
 00709397    call        TMenuItem.SetEnabled
 0070939C    mov         edx,ebx
 0070939E    mov         eax,dword ptr [esi+428];TFXADMenuFrame.miApoIonDiscovery:TMenuItem
 007093A4    call        TMenuItem.SetEnabled
 007093A9    mov         edx,ebx
 007093AB    mov         eax,dword ptr [esi+42C];TFXADMenuFrame.miApoIonXP95:TMenuItem
 007093B1    call        TMenuItem.SetEnabled
 007093B6    mov         edx,ebx
 007093B8    mov         eax,dword ptr [esi+430];TFXADMenuFrame.miApoIonS90:TMenuItem
 007093BE    call        TMenuItem.SetEnabled
 007093C3    mov         dl,1
 007093C5    mov         eax,dword ptr [esi+420];TFXADMenuFrame.miApoIon:TMenuItem
 007093CB    call        TMenuItem.SetVisible
 007093D0    mov         dl,1
 007093D2    mov         eax,dword ptr [esi+424];TFXADMenuFrame.miApoIonIntellia:TMenuItem
 007093D8    call        TMenuItem.SetVisible
 007093DD    mov         edx,ebx
 007093DF    mov         eax,dword ptr [esi+428];TFXADMenuFrame.miApoIonDiscovery:TMenuItem
 007093E5    call        TMenuItem.SetVisible
 007093EA    mov         edx,ebx
 007093EC    mov         eax,dword ptr [esi+42C];TFXADMenuFrame.miApoIonXP95:TMenuItem
 007093F2    call        TMenuItem.SetVisible
 007093F7    mov         edx,ebx
 007093F9    mov         eax,dword ptr [esi+430];TFXADMenuFrame.miApoIonS90:TMenuItem
 007093FF    call        TMenuItem.SetVisible
 00709404    mov         dl,1
 00709406    mov         eax,dword ptr [esi+438];TFXADMenuFrame.miApoOpt:TMenuItem
 0070940C    call        TMenuItem.SetEnabled
 00709411    mov         dl,1
 00709413    mov         eax,dword ptr [esi+43C];TFXADMenuFrame.miApoOptIntellia:TMenuItem
 00709419    call        TMenuItem.SetEnabled
 0070941E    mov         edx,ebx
 00709420    mov         eax,dword ptr [esi+440];TFXADMenuFrame.miApoOptDiscovery:TMenuItem
 00709426    call        TMenuItem.SetEnabled
 0070942B    mov         edx,ebx
 0070942D    mov         eax,dword ptr [esi+444];TFXADMenuFrame.miApoOptXP95:TMenuItem
 00709433    call        TMenuItem.SetEnabled
 00709438    mov         edx,ebx
 0070943A    mov         eax,dword ptr [esi+448];TFXADMenuFrame.miApoOptS90:TMenuItem
 00709440    call        TMenuItem.SetEnabled
 00709445    mov         edx,ebx
 00709447    mov         eax,dword ptr [esi+44C];TFXADMenuFrame.miApoOptExp:TMenuItem
 0070944D    call        TMenuItem.SetEnabled
 00709452    mov         dl,1
 00709454    mov         eax,dword ptr [esi+438];TFXADMenuFrame.miApoOpt:TMenuItem
 0070945A    call        TMenuItem.SetVisible
 0070945F    mov         dl,1
 00709461    mov         eax,dword ptr [esi+43C];TFXADMenuFrame.miApoOptIntellia:TMenuItem
 00709467    call        TMenuItem.SetVisible
 0070946C    mov         edx,ebx
 0070946E    mov         eax,dword ptr [esi+440];TFXADMenuFrame.miApoOptDiscovery:TMenuItem
 00709474    call        TMenuItem.SetVisible
 00709479    mov         edx,ebx
 0070947B    mov         eax,dword ptr [esi+444];TFXADMenuFrame.miApoOptXP95:TMenuItem
 00709481    call        TMenuItem.SetVisible
 00709486    mov         edx,ebx
 00709488    mov         eax,dword ptr [esi+448];TFXADMenuFrame.miApoOptS90:TMenuItem
 0070948E    call        TMenuItem.SetVisible
 00709493    mov         edx,ebx
 00709495    mov         eax,dword ptr [esi+44C];TFXADMenuFrame.miApoOptExp:TMenuItem
 0070949B    call        TMenuItem.SetVisible
 007094A0    mov         dl,1
 007094A2    mov         eax,dword ptr [esi+450];TFXADMenuFrame.miApoHeat:TMenuItem
 007094A8    call        TMenuItem.SetEnabled
 007094AD    mov         dl,1
 007094AF    mov         eax,dword ptr [esi+454];TFXADMenuFrame.miApoHeatIntellia:TMenuItem
 007094B5    call        TMenuItem.SetEnabled
 007094BA    mov         edx,ebx
 007094BC    mov         eax,dword ptr [esi+458];TFXADMenuFrame.miApoHeatDiscovery:TMenuItem
 007094C2    call        TMenuItem.SetEnabled
 007094C7    mov         edx,ebx
 007094C9    mov         eax,dword ptr [esi+45C];TFXADMenuFrame.miApoHeatXP95:TMenuItem
 007094CF    call        TMenuItem.SetEnabled
 007094D4    mov         edx,ebx
 007094D6    mov         eax,dword ptr [esi+460];TFXADMenuFrame.miApoHeatS90:TMenuItem
 007094DC    call        TMenuItem.SetEnabled
 007094E1    mov         edx,ebx
 007094E3    mov         eax,dword ptr [esi+464];TFXADMenuFrame.miApoHeatExp:TMenuItem
 007094E9    call        TMenuItem.SetEnabled
 007094EE    mov         dl,1
 007094F0    mov         eax,dword ptr [esi+450];TFXADMenuFrame.miApoHeat:TMenuItem
 007094F6    call        TMenuItem.SetVisible
 007094FB    mov         dl,1
 007094FD    mov         eax,dword ptr [esi+454];TFXADMenuFrame.miApoHeatIntellia:TMenuItem
 00709503    call        TMenuItem.SetVisible
 00709508    mov         edx,ebx
 0070950A    mov         eax,dword ptr [esi+458];TFXADMenuFrame.miApoHeatDiscovery:TMenuItem
 00709510    call        TMenuItem.SetVisible
 00709515    mov         edx,ebx
 00709517    mov         eax,dword ptr [esi+45C];TFXADMenuFrame.miApoHeatXP95:TMenuItem
 0070951D    call        TMenuItem.SetVisible
 00709522    mov         edx,ebx
 00709524    mov         eax,dword ptr [esi+460];TFXADMenuFrame.miApoHeatS90:TMenuItem
 0070952A    call        TMenuItem.SetVisible
 0070952F    mov         edx,ebx
 00709531    mov         eax,dword ptr [esi+464];TFXADMenuFrame.miApoHeatExp:TMenuItem
 00709537    call        TMenuItem.SetVisible
 0070953C    mov         dl,1
 0070953E    mov         eax,dword ptr [esi+468];TFXADMenuFrame.miApoHighHeat:TMenuItem
 00709544    call        TMenuItem.SetEnabled
 00709549    xor         edx,edx
 0070954B    mov         eax,dword ptr [esi+46C];TFXADMenuFrame.miApoHighHeatIntellia:TMenuItem
 00709551    call        TMenuItem.SetEnabled
 00709556    xor         edx,edx
 00709558    mov         eax,dword ptr [esi+470];TFXADMenuFrame.miApoHighHeatDiscovery:TMenuItem
 0070955E    call        TMenuItem.SetEnabled
 00709563    mov         dl,1
 00709565    mov         eax,dword ptr [esi+474];TFXADMenuFrame.miApoHighHeatXP95:TMenuItem
 0070956B    call        TMenuItem.SetEnabled
 00709570    xor         edx,edx
 00709572    mov         eax,dword ptr [esi+478];TFXADMenuFrame.miApoHighHeatS90:TMenuItem
 00709578    call        TMenuItem.SetEnabled
 0070957D    mov         edx,ebx
 0070957F    mov         eax,dword ptr [esi+47C];TFXADMenuFrame.miApoHighHeatExp:TMenuItem
 00709585    call        TMenuItem.SetEnabled
 0070958A    mov         dl,1
 0070958C    mov         eax,dword ptr [esi+468];TFXADMenuFrame.miApoHighHeat:TMenuItem
 00709592    call        TMenuItem.SetVisible
 00709597    xor         edx,edx
 00709599    mov         eax,dword ptr [esi+46C];TFXADMenuFrame.miApoHighHeatIntellia:TMenuItem
 0070959F    call        TMenuItem.SetVisible
 007095A4    xor         edx,edx
 007095A6    mov         eax,dword ptr [esi+470];TFXADMenuFrame.miApoHighHeatDiscovery:TMenuItem
 007095AC    call        TMenuItem.SetVisible
 007095B1    mov         dl,1
 007095B3    mov         eax,dword ptr [esi+474];TFXADMenuFrame.miApoHighHeatXP95:TMenuItem
 007095B9    call        TMenuItem.SetVisible
 007095BE    xor         edx,edx
 007095C0    mov         eax,dword ptr [esi+478];TFXADMenuFrame.miApoHighHeatS90:TMenuItem
 007095C6    call        TMenuItem.SetVisible
 007095CB    mov         edx,ebx
 007095CD    mov         eax,dword ptr [esi+47C];TFXADMenuFrame.miApoHighHeatExp:TMenuItem
 007095D3    call        TMenuItem.SetVisible
 007095D8    mov         dl,1
 007095DA    mov         eax,dword ptr [esi+480];TFXADMenuFrame.miApoMulti:TMenuItem
 007095E0    call        TMenuItem.SetEnabled
 007095E5    mov         dl,1
 007095E7    mov         eax,dword ptr [esi+484];TFXADMenuFrame.miApoMultiIntellia:TMenuItem
 007095ED    call        TMenuItem.SetEnabled
 007095F2    mov         edx,ebx
 007095F4    mov         eax,dword ptr [esi+488];TFXADMenuFrame.miApoMultiDiscovery:TMenuItem
 007095FA    call        TMenuItem.SetEnabled
 007095FF    mov         edx,ebx
 00709601    mov         eax,dword ptr [esi+48C];TFXADMenuFrame.miApoMultiXP95:TMenuItem
 00709607    call        TMenuItem.SetEnabled
 0070960C    mov         edx,ebx
 0070960E    mov         eax,dword ptr [esi+494];TFXADMenuFrame.miApoMultiExp:TMenuItem
 00709614    call        TMenuItem.SetEnabled
 00709619    mov         dl,1
 0070961B    mov         eax,dword ptr [esi+480];TFXADMenuFrame.miApoMulti:TMenuItem
 00709621    call        TMenuItem.SetVisible
 00709626    mov         dl,1
 00709628    mov         eax,dword ptr [esi+484];TFXADMenuFrame.miApoMultiIntellia:TMenuItem
 0070962E    call        TMenuItem.SetVisible
 00709633    mov         edx,ebx
 00709635    mov         eax,dword ptr [esi+488];TFXADMenuFrame.miApoMultiDiscovery:TMenuItem
 0070963B    call        TMenuItem.SetVisible
 00709640    mov         edx,ebx
 00709642    mov         eax,dword ptr [esi+48C];TFXADMenuFrame.miApoMultiXP95:TMenuItem
 00709648    call        TMenuItem.SetVisible
 0070964D    mov         edx,ebx
 0070964F    mov         eax,dword ptr [esi+494];TFXADMenuFrame.miApoMultiExp:TMenuItem
 00709655    call        TMenuItem.SetVisible
 0070965A    mov         dl,1
 0070965C    mov         eax,dword ptr [esi+49C];TFXADMenuFrame.miApoCO:TMenuItem
 00709662    call        TMenuItem.SetEnabled
 00709667    mov         dl,1
 00709669    mov         eax,dword ptr [esi+4A0];TFXADMenuFrame.miApoCOIntellia:TMenuItem
 0070966F    call        TMenuItem.SetEnabled
 00709674    mov         edx,ebx
 00709676    mov         eax,dword ptr [esi+4A4];TFXADMenuFrame.miApoCODiscovery:TMenuItem
 0070967C    call        TMenuItem.SetEnabled
 00709681    mov         dl,1
 00709683    mov         eax,dword ptr [esi+49C];TFXADMenuFrame.miApoCO:TMenuItem
 00709689    call        TMenuItem.SetVisible
 0070968E    mov         dl,1
 00709690    mov         eax,dword ptr [esi+4A0];TFXADMenuFrame.miApoCOIntellia:TMenuItem
 00709696    call        TMenuItem.SetVisible
 0070969B    mov         edx,ebx
 0070969D    mov         eax,dword ptr [esi+4A4];TFXADMenuFrame.miApoCODiscovery:TMenuItem
 007096A3    call        TMenuItem.SetVisible
 007096A8    mov         dl,1
 007096AA    mov         eax,dword ptr [esi+4A8];TFXADMenuFrame.miApoCoHeat:TMenuItem
 007096B0    call        TMenuItem.SetEnabled
 007096B5    mov         dl,1
 007096B7    mov         eax,dword ptr [esi+4AC];TFXADMenuFrame.miApoCoHeatIntellia:TMenuItem
 007096BD    call        TMenuItem.SetEnabled
 007096C2    mov         dl,1
 007096C4    mov         eax,dword ptr [esi+4B0];TFXADMenuFrame.miApoCoHeatDiscovery:TMenuItem
 007096CA    call        TMenuItem.SetEnabled
 007096CF    mov         dl,1
 007096D1    mov         eax,dword ptr [esi+4A8];TFXADMenuFrame.miApoCoHeat:TMenuItem
 007096D7    call        TMenuItem.SetVisible
 007096DC    mov         dl,1
 007096DE    mov         eax,dword ptr [esi+4AC];TFXADMenuFrame.miApoCoHeatIntellia:TMenuItem
 007096E4    call        TMenuItem.SetVisible
 007096E9    mov         dl,1
 007096EB    mov         eax,dword ptr [esi+4B0];TFXADMenuFrame.miApoCoHeatDiscovery:TMenuItem
 007096F1    call        TMenuItem.SetVisible
 007096F6    mov         dl,1
 007096F8    mov         eax,dword ptr [esi+4D8];TFXADMenuFrame.miApoMCP:TMenuItem
 007096FE    call        TMenuItem.SetEnabled
 00709703    mov         dl,1
 00709705    mov         eax,dword ptr [esi+4DC];TFXADMenuFrame.miApoMCPIntellia:TMenuItem
 0070970B    call        TMenuItem.SetEnabled
 00709710    mov         edx,ebx
 00709712    mov         eax,dword ptr [esi+4E0];TFXADMenuFrame.miApoMCPDiscovery:TMenuItem
 00709718    call        TMenuItem.SetEnabled
 0070971D    mov         edx,ebx
 0070971F    mov         eax,dword ptr [esi+4E4];TFXADMenuFrame.miApoMCPXP95:TMenuItem
 00709725    call        TMenuItem.SetEnabled
 0070972A    mov         edx,ebx
 0070972C    mov         eax,dword ptr [esi+4E8];TFXADMenuFrame.miApoMCPS90:TMenuItem
 00709732    call        TMenuItem.SetEnabled
 00709737    mov         edx,ebx
 00709739    mov         eax,dword ptr [esi+4EC];TFXADMenuFrame.miApoMCPExp:TMenuItem
 0070973F    call        TMenuItem.SetEnabled
 00709744    mov         dl,1
 00709746    mov         eax,dword ptr [esi+4D8];TFXADMenuFrame.miApoMCP:TMenuItem
 0070974C    call        TMenuItem.SetVisible
 00709751    mov         dl,1
 00709753    mov         eax,dword ptr [esi+4DC];TFXADMenuFrame.miApoMCPIntellia:TMenuItem
 00709759    call        TMenuItem.SetVisible
 0070975E    mov         edx,ebx
 00709760    mov         eax,dword ptr [esi+4E0];TFXADMenuFrame.miApoMCPDiscovery:TMenuItem
 00709766    call        TMenuItem.SetVisible
 0070976B    mov         edx,ebx
 0070976D    mov         eax,dword ptr [esi+4E4];TFXADMenuFrame.miApoMCPXP95:TMenuItem
 00709773    call        TMenuItem.SetVisible
 00709778    mov         edx,ebx
 0070977A    mov         eax,dword ptr [esi+4E8];TFXADMenuFrame.miApoMCPS90:TMenuItem
 00709780    call        TMenuItem.SetVisible
 00709785    mov         edx,ebx
 00709787    mov         eax,dword ptr [esi+4EC];TFXADMenuFrame.miApoMCPExp:TMenuItem
 0070978D    call        TMenuItem.SetVisible
 00709792    mov         dl,1
 00709794    mov         eax,dword ptr [esi+518];TFXADMenuFrame.miApoIO33:TMenuItem
 0070979A    call        TMenuItem.SetEnabled
 0070979F    xor         edx,edx
 007097A1    mov         eax,dword ptr [esi+51C];TFXADMenuFrame.miApoIO33Intellia:TMenuItem
 007097A7    call        TMenuItem.SetEnabled
 007097AC    xor         edx,edx
 007097AE    mov         eax,dword ptr [esi+520];TFXADMenuFrame.miApoIO33Discovery:TMenuItem
 007097B4    call        TMenuItem.SetEnabled
 007097B9    mov         dl,1
 007097BB    mov         eax,dword ptr [esi+524];TFXADMenuFrame.miApoIO33XP95:TMenuItem
 007097C1    call        TMenuItem.SetEnabled
 007097C6    xor         edx,edx
 007097C8    mov         eax,dword ptr [esi+528];TFXADMenuFrame.miApoIO33S90:TMenuItem
 007097CE    call        TMenuItem.SetEnabled
 007097D3    mov         edx,ebx
 007097D5    mov         eax,dword ptr [esi+52C];TFXADMenuFrame.miApoIO33Exp:TMenuItem
 007097DB    call        TMenuItem.SetEnabled
 007097E0    mov         dl,1
 007097E2    mov         eax,dword ptr [esi+518];TFXADMenuFrame.miApoIO33:TMenuItem
 007097E8    call        TMenuItem.SetVisible
 007097ED    xor         edx,edx
 007097EF    mov         eax,dword ptr [esi+51C];TFXADMenuFrame.miApoIO33Intellia:TMenuItem
 007097F5    call        TMenuItem.SetVisible
 007097FA    xor         edx,edx
 007097FC    mov         eax,dword ptr [esi+520];TFXADMenuFrame.miApoIO33Discovery:TMenuItem
 00709802    call        TMenuItem.SetVisible
 00709807    mov         dl,1
 00709809    mov         eax,dword ptr [esi+524];TFXADMenuFrame.miApoIO33XP95:TMenuItem
 0070980F    call        TMenuItem.SetVisible
 00709814    xor         edx,edx
 00709816    mov         eax,dword ptr [esi+528];TFXADMenuFrame.miApoIO33S90:TMenuItem
 0070981C    call        TMenuItem.SetVisible
 00709821    mov         edx,ebx
 00709823    mov         eax,dword ptr [esi+52C];TFXADMenuFrame.miApoIO33Exp:TMenuItem
 00709829    call        TMenuItem.SetVisible
 0070982E    mov         dl,1
 00709830    mov         eax,dword ptr [esi+548];TFXADMenuFrame.miApoIntSounder:TMenuItem
 00709836    call        TMenuItem.SetEnabled
 0070983B    xor         edx,edx
 0070983D    mov         eax,dword ptr [esi+54C];TFXADMenuFrame.miApoIntSounderIntellia:TMenuItem
 00709843    call        TMenuItem.SetEnabled
 00709848    xor         edx,edx
 0070984A    mov         eax,dword ptr [esi+550];TFXADMenuFrame.miApoIntSounderDiscovery:TMenuItem
 00709850    call        TMenuItem.SetEnabled
 00709855    mov         dl,1
 00709857    mov         eax,dword ptr [esi+554];TFXADMenuFrame.miApoIntSounderXP95:TMenuItem
 0070985D    call        TMenuItem.SetEnabled
 00709862    xor         edx,edx
 00709864    mov         eax,dword ptr [esi+558];TFXADMenuFrame.miApoIntSounderS90:TMenuItem
 0070986A    call        TMenuItem.SetEnabled
 0070986F    mov         edx,ebx
 00709871    mov         eax,dword ptr [esi+55C];TFXADMenuFrame.miApoIntSounderExp:TMenuItem
 00709877    call        TMenuItem.SetEnabled
 0070987C    mov         dl,1
 0070987E    mov         eax,dword ptr [esi+548];TFXADMenuFrame.miApoIntSounder:TMenuItem
 00709884    call        TMenuItem.SetVisible
 00709889    xor         edx,edx
 0070988B    mov         eax,dword ptr [esi+54C];TFXADMenuFrame.miApoIntSounderIntellia:TMenuItem
 00709891    call        TMenuItem.SetVisible
 00709896    xor         edx,edx
 00709898    mov         eax,dword ptr [esi+550];TFXADMenuFrame.miApoIntSounderDiscovery:TMenuItem
 0070989E    call        TMenuItem.SetVisible
 007098A3    mov         dl,1
 007098A5    mov         eax,dword ptr [esi+554];TFXADMenuFrame.miApoIntSounderXP95:TMenuItem
 007098AB    call        TMenuItem.SetVisible
 007098B0    xor         edx,edx
 007098B2    mov         eax,dword ptr [esi+558];TFXADMenuFrame.miApoIntSounderS90:TMenuItem
 007098B8    call        TMenuItem.SetVisible
 007098BD    mov         edx,ebx
 007098BF    mov         eax,dword ptr [esi+55C];TFXADMenuFrame.miApoIntSounderExp:TMenuItem
 007098C5    call        TMenuItem.SetVisible
 007098CA    mov         dl,1
 007098CC    mov         eax,dword ptr [esi+568];TFXADMenuFrame.miApoDSB:TMenuItem
 007098D2    call        TMenuItem.SetEnabled
 007098D7    mov         dl,1
 007098D9    mov         eax,dword ptr [esi+56C];TFXADMenuFrame.miApoDSBIntellia:TMenuItem
 007098DF    call        TMenuItem.SetEnabled
 007098E4    mov         dl,1
 007098E6    mov         eax,dword ptr [esi+570];TFXADMenuFrame.miApoDSBDiscovery:TMenuItem
 007098EC    call        TMenuItem.SetEnabled
 007098F1    mov         dl,1
 007098F3    mov         eax,dword ptr [esi+568];TFXADMenuFrame.miApoDSB:TMenuItem
 007098F9    call        TMenuItem.SetVisible
 007098FE    mov         dl,1
 00709900    mov         eax,dword ptr [esi+56C];TFXADMenuFrame.miApoDSBIntellia:TMenuItem
 00709906    call        TMenuItem.SetVisible
 0070990B    mov         dl,1
 0070990D    mov         eax,dword ptr [esi+570];TFXADMenuFrame.miApoDSBDiscovery:TMenuItem
 00709913    call        TMenuItem.SetVisible
 00709918    xor         edx,edx
 0070991A    mov         eax,dword ptr [esi+574];TFXADMenuFrame.ApoDVSB1:TMenuItem
 00709920    call        TMenuItem.SetEnabled
 00709925    xor         edx,edx
 00709927    mov         eax,dword ptr [esi+578];TFXADMenuFrame.ApoDVSBIntellia1:TMenuItem
 0070992D    call        TMenuItem.SetEnabled
 00709932    xor         edx,edx
 00709934    mov         eax,dword ptr [esi+57C];TFXADMenuFrame.ApoDVSBDiscovery1:TMenuItem
 0070993A    call        TMenuItem.SetEnabled
 0070993F    xor         edx,edx
 00709941    mov         eax,dword ptr [esi+574];TFXADMenuFrame.ApoDVSB1:TMenuItem
 00709947    call        TMenuItem.SetVisible
 0070994C    xor         edx,edx
 0070994E    mov         eax,dword ptr [esi+578];TFXADMenuFrame.ApoDVSBIntellia1:TMenuItem
 00709954    call        TMenuItem.SetVisible
 00709959    xor         edx,edx
 0070995B    mov         eax,dword ptr [esi+57C];TFXADMenuFrame.ApoDVSBDiscovery1:TMenuItem
 00709961    call        TMenuItem.SetVisible
 00709966    xor         edx,edx
 00709968    mov         eax,dword ptr [esi+580];TFXADMenuFrame.ApoDVS1:TMenuItem
 0070996E    call        TMenuItem.SetEnabled
 00709973    xor         edx,edx
 00709975    mov         eax,dword ptr [esi+584];TFXADMenuFrame.ApoDVSIntellia1:TMenuItem
 0070997B    call        TMenuItem.SetEnabled
 00709980    xor         edx,edx
 00709982    mov         eax,dword ptr [esi+588];TFXADMenuFrame.ApoDVSDiscovery1:TMenuItem
 00709988    call        TMenuItem.SetEnabled
 0070998D    xor         edx,edx
 0070998F    mov         eax,dword ptr [esi+580];TFXADMenuFrame.ApoDVS1:TMenuItem
 00709995    call        TMenuItem.SetVisible
 0070999A    xor         edx,edx
 0070999C    mov         eax,dword ptr [esi+584];TFXADMenuFrame.ApoDVSIntellia1:TMenuItem
 007099A2    call        TMenuItem.SetVisible
 007099A7    xor         edx,edx
 007099A9    mov         eax,dword ptr [esi+588];TFXADMenuFrame.ApoDVSDiscovery1:TMenuItem
 007099AF    call        TMenuItem.SetVisible
 007099B4    pop         esi
 007099B5    pop         ebx
 007099B6    ret
*}
end;

//007099B8
procedure TFXADMenuFrame.EnableOrDisableAPZDisPopupItems(LoopType:Byte; DeviceType:Word; ApInFunc:Byte);
begin
{*
 007099B8    push        ebp
 007099B9    mov         ebp,esp
 007099BB    add         esp,0FFFFFF60
 007099C1    push        ebx
 007099C2    push        esi
 007099C3    push        edi
 007099C4    mov         esi,ecx
 007099C6    mov         ebx,edx
 007099C8    mov         edi,eax
 007099CA    mov         dl,1
 007099CC    mov         eax,dword ptr [edi+618];TFXADMenuFrame.miZDisNoEffect:TMenuItem
 007099D2    call        TMenuItem.SetEnabled
 007099D7    movzx       eax,bl
 007099DA    cmp         eax,6
>007099DD    ja          00709CBC
 007099E3    jmp         dword ptr [eax*4+7099EA]
 007099E3    dd          00709CBC
 007099E3    dd          00709ADD
 007099E3    dd          00709A97
 007099E3    dd          00709A06
 007099E3    dd          00709B3A
 007099E3    dd          00709CBC
 007099E3    dd          00709B3A
 00709A06    mov         eax,esi
 00709A08    shr         ax,8
 00709A0C    add         eax,0FFFFFFF4
 00709A0F    sub         ax,8
>00709A13    jae         00709A2F
 00709A15    movzx       eax,byte ptr [ebp+8]
 00709A19    add         al,0F6
 00709A1B    sub         al,2
>00709A1D    jb          00709A2B
 00709A1F    sub         al,1
>00709A21    je          00709A2B
 00709A23    sub         al,0E
>00709A25    je          00709A2B
 00709A27    sub         al,2
>00709A29    jne         00709A2F
 00709A2B    xor         edx,edx
>00709A2D    jmp         00709A31
 00709A2F    mov         dl,1
 00709A31    mov         eax,dword ptr [edi+61C];TFXADMenuFrame.miZDisDisabled:TMenuItem
 00709A37    call        TMenuItem.SetEnabled
 00709A3C    mov         eax,esi
 00709A3E    shr         ax,8
 00709A42    sub         ax,0A
>00709A46    je          00709A81
 00709A48    mov         eax,esi
 00709A4A    shr         ax,8
 00709A4E    add         eax,0FFFFFFF4
 00709A51    sub         ax,8
>00709A55    jae         00709A6D
 00709A57    movzx       eax,byte ptr [ebp+8]
 00709A5B    add         al,0F6
 00709A5D    sub         al,2
>00709A5F    jb          00709A81
 00709A61    sub         al,1
>00709A63    je          00709A81
 00709A65    sub         al,0E
>00709A67    je          00709A81
 00709A69    sub         al,2
>00709A6B    je          00709A81
 00709A6D    shr         si,8
 00709A71    add         esi,0FFFFFFEC
 00709A74    sub         si,4
>00709A78    jb          00709A81
 00709A7A    dec         esi
 00709A7B    sub         si,3
>00709A7F    jae         00709A85
 00709A81    xor         edx,edx
>00709A83    jmp         00709A87
 00709A85    mov         dl,1
 00709A87    mov         eax,dword ptr [edi+620];TFXADMenuFrame.miZDisInpDisabled:TMenuItem
 00709A8D    call        TMenuItem.SetEnabled
>00709A92    jmp         00709CBC
 00709A97    and         si,0FF
 00709A9C    add         esi,0FFFFFFF6
 00709A9F    sub         si,2
>00709AA3    jb          00709ABB
 00709AA5    sub         si,1
>00709AA9    je          00709ABB
 00709AAB    sub         si,0E
>00709AAF    je          00709ABB
 00709AB1    sub         si,2
>00709AB5    je          00709ABB
 00709AB7    xor         edx,edx
>00709AB9    jmp         00709ABD
 00709ABB    mov         dl,1
 00709ABD    xor         dl,1
 00709AC0    mov         eax,dword ptr [edi+61C];TFXADMenuFrame.miZDisDisabled:TMenuItem
 00709AC6    call        TMenuItem.SetEnabled
 00709ACB    xor         edx,edx
 00709ACD    mov         eax,dword ptr [edi+620];TFXADMenuFrame.miZDisInpDisabled:TMenuItem
 00709AD3    call        TMenuItem.SetEnabled
>00709AD8    jmp         00709CBC
 00709ADD    mov         ebx,esi
 00709ADF    shr         bx,8
 00709AE3    mov         eax,ebx
 00709AE5    sub         ax,4
>00709AE9    jne         00709B05
 00709AEB    movzx       eax,byte ptr [ebp+8]
 00709AEF    add         al,0F6
 00709AF1    sub         al,2
>00709AF3    jb          00709B01
 00709AF5    sub         al,1
>00709AF7    je          00709B01
 00709AF9    sub         al,0E
>00709AFB    je          00709B01
 00709AFD    sub         al,2
>00709AFF    jne         00709B05
 00709B01    xor         edx,edx
>00709B03    jmp         00709B07
 00709B05    mov         dl,1
 00709B07    mov         eax,dword ptr [edi+61C];TFXADMenuFrame.miZDisDisabled:TMenuItem
 00709B0D    call        TMenuItem.SetEnabled
 00709B12    add         ebx,0FFFFFFFC
 00709B15    sub         bx,3
>00709B19    jb          00709B25
 00709B1B    sub         bx,2
>00709B1F    je          00709B25
 00709B21    xor         edx,edx
>00709B23    jmp         00709B27
 00709B25    mov         dl,1
 00709B27    xor         dl,1
 00709B2A    mov         eax,dword ptr [edi+620];TFXADMenuFrame.miZDisInpDisabled:TMenuItem
 00709B30    call        TMenuItem.SetEnabled
>00709B35    jmp         00709CBC
 00709B3A    test        si,0FF
>00709B3F    jne         00709B99
 00709B41    mov         ebx,esi
 00709B43    shr         bx,8
 00709B47    mov         eax,ebx
 00709B49    sub         ax,4
>00709B4D    jne         00709B69
 00709B4F    movzx       eax,byte ptr [ebp+8]
 00709B53    add         al,0F6
 00709B55    sub         al,2
>00709B57    jb          00709B65
 00709B59    sub         al,1
>00709B5B    je          00709B65
 00709B5D    sub         al,0E
>00709B5F    je          00709B65
 00709B61    sub         al,2
>00709B63    jne         00709B69
 00709B65    xor         edx,edx
>00709B67    jmp         00709B6B
 00709B69    mov         dl,1
 00709B6B    mov         eax,dword ptr [edi+61C];TFXADMenuFrame.miZDisDisabled:TMenuItem
 00709B71    call        TMenuItem.SetEnabled
 00709B76    add         ebx,0FFFFFFFC
 00709B79    sub         bx,3
>00709B7D    jb          00709B89
 00709B7F    sub         bx,2
>00709B83    je          00709B89
 00709B85    xor         edx,edx
>00709B87    jmp         00709B8B
 00709B89    mov         dl,1
 00709B8B    xor         dl,1
 00709B8E    mov         eax,dword ptr [edi+620];TFXADMenuFrame.miZDisInpDisabled:TMenuItem
 00709B94    call        TMenuItem.SetEnabled
 00709B99    mov         ax,0FF
 00709B9D    and         ax,si
 00709BA0    cmp         ax,1
>00709BA4    jne         00709CBC
 00709BAA    mov         ebx,esi
 00709BAC    shr         bx,8
 00709BB0    mov         eax,[007C4B18];^gvar_007C2740:Word
 00709BB5    mov         edx,ebx
 00709BB7    cmp         dx,0FF
>00709BBC    ja          00709BC4
 00709BBE    movzx       edx,dx
 00709BC1    bt          dword ptr [eax],edx
>00709BC4    jae         00709BE0
 00709BC6    movzx       eax,byte ptr [ebp+8]
 00709BCA    add         al,0F6
 00709BCC    sub         al,2
>00709BCE    jb          00709BDC
 00709BD0    sub         al,1
>00709BD2    je          00709BDC
 00709BD4    sub         al,0E
>00709BD6    je          00709BDC
 00709BD8    sub         al,2
>00709BDA    jne         00709BE0
 00709BDC    xor         edx,edx
>00709BDE    jmp         00709BE2
 00709BE0    mov         dl,1
 00709BE2    mov         eax,dword ptr [edi+61C];TFXADMenuFrame.miZDisDisabled:TMenuItem
 00709BE8    call        TMenuItem.SetEnabled
 00709BED    mov         eax,[007C4730];^gvar_007C2760
 00709BF2    push        esi
 00709BF3    push        edi
 00709BF4    mov         esi,eax
 00709BF6    lea         edi,[ebp-20]
 00709BF9    mov         ecx,8
 00709BFE    rep movs    dword ptr [edi],dword ptr [esi]
 00709C00    pop         edi
 00709C01    pop         esi
 00709C02    push        esi
 00709C03    push        edi
 00709C04    mov         esi,709CC8
 00709C09    lea         edi,[ebp-40]
 00709C0C    mov         ecx,8
 00709C11    rep movs    dword ptr [edi],dword ptr [esi]
 00709C13    pop         edi
 00709C14    pop         esi
 00709C15    push        esi
 00709C16    push        edi
 00709C17    mov         esi,709CE8
 00709C1C    lea         edi,[ebp-60]
 00709C1F    mov         ecx,8
 00709C24    rep movs    dword ptr [edi],dword ptr [esi]
 00709C26    pop         edi
 00709C27    pop         esi
 00709C28    push        esi
 00709C29    push        edi
 00709C2A    mov         esi,709D08
 00709C2F    lea         edi,[ebp-80]
 00709C32    mov         ecx,8
 00709C37    rep movs    dword ptr [edi],dword ptr [esi]
 00709C39    pop         edi
 00709C3A    pop         esi
 00709C3B    mov         eax,[007C4B18];^gvar_007C2740:Word
 00709C40    push        esi
 00709C41    push        edi
 00709C42    mov         esi,eax
 00709C44    lea         edi,[ebp-0A0]
 00709C4A    mov         ecx,8
 00709C4F    rep movs    dword ptr [edi],dword ptr [esi]
 00709C51    pop         edi
 00709C52    pop         esi
 00709C53    lea         eax,[ebp-0A0]
 00709C59    mov         edx,dword ptr ds:[7C43C8];^gvar_007C2720
 00709C5F    mov         cl,20
 00709C61    call        @SetUnion
 00709C66    lea         edx,[ebp-0A0]
 00709C6C    lea         eax,[ebp-80]
 00709C6F    mov         cl,20
 00709C71    call        @SetUnion
 00709C76    lea         edx,[ebp-80]
 00709C79    lea         eax,[ebp-60]
 00709C7C    mov         cl,20
 00709C7E    call        @SetUnion
 00709C83    lea         edx,[ebp-60]
 00709C86    lea         eax,[ebp-40]
 00709C89    mov         cl,20
 00709C8B    call        @SetUnion
 00709C90    lea         edx,[ebp-40]
 00709C93    lea         eax,[ebp-20]
 00709C96    mov         cl,20
 00709C98    call        @SetUnion
 00709C9D    cmp         bx,0FF
>00709CA2    ja          00709CAB
 00709CA4    movzx       ebx,bx
 00709CA7    bt          dword ptr [ebp-20],ebx
 00709CAB    setb        dl
 00709CAE    xor         dl,1
 00709CB1    mov         eax,dword ptr [edi+620];TFXADMenuFrame.miZDisInpDisabled:TMenuItem
 00709CB7    call        TMenuItem.SetEnabled
 00709CBC    pop         edi
 00709CBD    pop         esi
 00709CBE    pop         ebx
 00709CBF    mov         esp,ebp
 00709CC1    pop         ebp
 00709CC2    ret         4
*}
end;

//00709D28
procedure TFXADMenuFrame.EnableOrDisableCzmInputFunctions(LoopType:Byte);
begin
{*
 00709D28    push        ebx
 00709D29    push        esi
 00709D2A    mov         ebx,edx
 00709D2C    mov         esi,eax
 00709D2E    mov         eax,ebx
 00709D30    sub         al,3
>00709D32    je          00709D3C
 00709D34    sub         al,2
>00709D36    je          00709D3C
 00709D38    xor         edx,edx
>00709D3A    jmp         00709D3E
 00709D3C    mov         dl,1
 00709D3E    mov         eax,dword ptr [esi+95C];TFXADMenuFrame.miComCzmWlExp:TMenuItem
 00709D44    call        TMenuItem.SetEnabled
 00709D49    sub         bl,3
>00709D4C    je          00709D57
 00709D4E    sub         bl,2
>00709D51    je          00709D57
 00709D53    xor         edx,edx
>00709D55    jmp         00709D59
 00709D57    mov         dl,1
 00709D59    mov         eax,dword ptr [esi+95C];TFXADMenuFrame.miComCzmWlExp:TMenuItem
 00709D5F    call        TMenuItem.SetVisible
 00709D64    pop         esi
 00709D65    pop         ebx
 00709D66    ret
*}
end;

//00709D68
procedure TFXADMenuFrame.EnableOrDisableInputFunctionMenuItems(LoopType:Byte);
begin
{*
 00709D68    push        ebx
 00709D69    push        esi
 00709D6A    mov         ebx,edx
 00709D6C    mov         esi,eax
 00709D6E    mov         eax,ebx
 00709D70    add         al,0FE
 00709D72    sub         al,5
 00709D74    setb        dl
 00709D77    mov         eax,dword ptr [esi+734];TFXADMenuFrame.miInpNotInUse:TMenuItem
 00709D7D    call        TMenuItem.SetEnabled
 00709D82    mov         eax,ebx
 00709D84    add         al,0FE
 00709D86    sub         al,5
 00709D88    setb        dl
 00709D8B    mov         eax,dword ptr [esi+734];TFXADMenuFrame.miInpNotInUse:TMenuItem
 00709D91    call        TMenuItem.SetVisible
 00709D96    mov         eax,ebx
 00709D98    dec         eax
 00709D99    sub         al,1
 00709D9B    setb        dl
 00709D9E    mov         eax,dword ptr [esi+738];TFXADMenuFrame.miInpMCPorAlmSw:TMenuItem
 00709DA4    call        TMenuItem.SetEnabled
 00709DA9    mov         eax,ebx
 00709DAB    dec         eax
 00709DAC    sub         al,1
 00709DAE    setb        dl
 00709DB1    mov         eax,dword ptr [esi+738];TFXADMenuFrame.miInpMCPorAlmSw:TMenuItem
 00709DB7    call        TMenuItem.SetVisible
 00709DBC    mov         eax,ebx
 00709DBE    sub         al,1
>00709DC0    je          00709DCC
 00709DC2    add         al,0FE
 00709DC4    sub         al,4
>00709DC6    jb          00709DCC
 00709DC8    xor         edx,edx
>00709DCA    jmp         00709DCE
 00709DCC    mov         dl,1
 00709DCE    mov         eax,dword ptr [esi+73C];TFXADMenuFrame.miInpMCP:TMenuItem
 00709DD4    call        TMenuItem.SetEnabled
 00709DD9    mov         eax,ebx
 00709DDB    sub         al,1
>00709DDD    je          00709DE9
 00709DDF    add         al,0FE
 00709DE1    sub         al,4
>00709DE3    jb          00709DE9
 00709DE5    xor         edx,edx
>00709DE7    jmp         00709DEB
 00709DE9    mov         dl,1
 00709DEB    mov         eax,dword ptr [esi+73C];TFXADMenuFrame.miInpMCP:TMenuItem
 00709DF1    call        TMenuItem.SetVisible
 00709DF6    mov         eax,ebx
 00709DF8    add         al,0FE
 00709DFA    sub         al,1
 00709DFC    setb        dl
 00709DFF    mov         eax,dword ptr [esi+740];TFXADMenuFrame.miInpMCPLine:TMenuItem
 00709E05    call        TMenuItem.SetEnabled
 00709E0A    mov         eax,ebx
 00709E0C    add         al,0FE
 00709E0E    sub         al,1
 00709E10    setb        dl
 00709E13    mov         eax,dword ptr [esi+740];TFXADMenuFrame.miInpMCPLine:TMenuItem
 00709E19    call        TMenuItem.SetVisible
 00709E1E    xor         edx,edx
 00709E20    mov         eax,dword ptr [esi+744];TFXADMenuFrame.miInpConvBeamDet:TMenuItem
 00709E26    call        TMenuItem.SetEnabled
 00709E2B    mov         eax,ebx
 00709E2D    dec         eax
 00709E2E    sub         al,1
 00709E30    setb        dl
 00709E33    mov         eax,dword ptr [esi+744];TFXADMenuFrame.miInpConvBeamDet:TMenuItem
 00709E39    call        TMenuItem.SetVisible
 00709E3E    xor         edx,edx
 00709E40    mov         eax,dword ptr [esi+748];TFXADMenuFrame.miInpReserved:TMenuItem
 00709E46    call        TMenuItem.SetEnabled
 00709E4B    mov         eax,ebx
 00709E4D    add         al,0FE
 00709E4F    sub         al,5
 00709E51    setb        dl
 00709E54    mov         eax,dword ptr [esi+748];TFXADMenuFrame.miInpReserved:TMenuItem
 00709E5A    call        TMenuItem.SetVisible
 00709E5F    mov         eax,ebx
 00709E61    sub         al,1
>00709E63    je          00709E6F
 00709E65    add         al,0FE
 00709E67    sub         al,4
>00709E69    jb          00709E6F
 00709E6B    xor         edx,edx
>00709E6D    jmp         00709E71
 00709E6F    mov         dl,1
 00709E71    mov         eax,dword ptr [esi+74C];TFXADMenuFrame.miInpConvHeatDet:TMenuItem
 00709E77    call        TMenuItem.SetEnabled
 00709E7C    mov         eax,ebx
 00709E7E    sub         al,1
>00709E80    je          00709E8C
 00709E82    add         al,0FE
 00709E84    sub         al,4
>00709E86    jb          00709E8C
 00709E88    xor         edx,edx
>00709E8A    jmp         00709E8E
 00709E8C    mov         dl,1
 00709E8E    mov         eax,dword ptr [esi+74C];TFXADMenuFrame.miInpConvHeatDet:TMenuItem
 00709E94    call        TMenuItem.SetVisible
 00709E99    mov         eax,ebx
 00709E9B    add         al,0FE
 00709E9D    sub         al,1
 00709E9F    setb        dl
 00709EA2    mov         eax,dword ptr [esi+750];TFXADMenuFrame.miInpDetectionLine:TMenuItem
 00709EA8    call        TMenuItem.SetEnabled
 00709EAD    mov         eax,ebx
 00709EAF    add         al,0FE
 00709EB1    sub         al,1
 00709EB3    setb        dl
 00709EB6    mov         eax,dword ptr [esi+750];TFXADMenuFrame.miInpDetectionLine:TMenuItem
 00709EBC    call        TMenuItem.SetVisible
 00709EC1    mov         eax,ebx
 00709EC3    add         al,0FE
 00709EC5    sub         al,1
 00709EC7    setb        dl
 00709ECA    mov         eax,dword ptr [esi+7E0];TFXADMenuFrame.miInpFaultInFARE:TMenuItem
 00709ED0    call        TMenuItem.SetEnabled
 00709ED5    add         bl,0FE
 00709ED8    sub         bl,1
 00709EDB    setb        dl
 00709EDE    mov         eax,dword ptr [esi+7E0];TFXADMenuFrame.miInpFaultInFARE:TMenuItem
 00709EE4    call        TMenuItem.SetVisible
 00709EE9    pop         esi
 00709EEA    pop         ebx
 00709EEB    ret
*}
end;

//00709EEC
procedure TFXADMenuFrame.EnableOrDisableOutputFunctionMenuItems(LoopType:Byte);
begin
{*
 00709EEC    push        ebx
 00709EED    push        esi
 00709EEE    mov         ebx,edx
 00709EF0    mov         esi,eax
 00709EF2    mov         eax,ebx
 00709EF4    add         al,0FE
 00709EF6    sub         al,5
 00709EF8    setb        dl
 00709EFB    mov         eax,dword ptr [esi+590];TFXADMenuFrame.miOutNotInUse:TMenuItem
 00709F01    call        TMenuItem.SetEnabled
 00709F06    add         bl,0FE
 00709F09    sub         bl,5
 00709F0C    setb        dl
 00709F0F    mov         eax,dword ptr [esi+590];TFXADMenuFrame.miOutNotInUse:TMenuItem
 00709F15    call        TMenuItem.SetVisible
 00709F1A    pop         esi
 00709F1B    pop         ebx
 00709F1C    ret
*}
end;

//00709F20
procedure TFXADMenuFrame.EnableOrDisableInputFilterMenuItems(LoopType:Byte);
begin
{*
 00709F20    push        ebx
 00709F21    mov         ebx,eax
 00709F23    dec         edx
 00709F24    sub         dl,3
>00709F27    jb          00709F7A
>00709F29    je          00709F37
 00709F2B    dec         dl
>00709F2D    je          00709F7A
 00709F2F    dec         dl
>00709F31    jne         00709FBB
 00709F37    mov         dl,1
 00709F39    mov         eax,dword ptr [ebx+3E4];TFXADMenuFrame.miNoFilter:TMenuItem
 00709F3F    call        TMenuItem.SetEnabled
 00709F44    xor         edx,edx
 00709F46    mov         eax,dword ptr [ebx+3E8];TFXADMenuFrame.miFilter1:TMenuItem
 00709F4C    call        TMenuItem.SetEnabled
 00709F51    xor         edx,edx
 00709F53    mov         eax,dword ptr [ebx+3EC];TFXADMenuFrame.miFilter2:TMenuItem
 00709F59    call        TMenuItem.SetEnabled
 00709F5E    xor         edx,edx
 00709F60    mov         eax,dword ptr [ebx+3F0];TFXADMenuFrame.miFilter3:TMenuItem
 00709F66    call        TMenuItem.SetEnabled
 00709F6B    xor         edx,edx
 00709F6D    mov         eax,dword ptr [ebx+3F4];TFXADMenuFrame.miFilter4:TMenuItem
 00709F73    call        TMenuItem.SetEnabled
 00709F78    pop         ebx
 00709F79    ret
 00709F7A    mov         dl,1
 00709F7C    mov         eax,dword ptr [ebx+3E4];TFXADMenuFrame.miNoFilter:TMenuItem
 00709F82    call        TMenuItem.SetEnabled
 00709F87    mov         dl,1
 00709F89    mov         eax,dword ptr [ebx+3E8];TFXADMenuFrame.miFilter1:TMenuItem
 00709F8F    call        TMenuItem.SetEnabled
 00709F94    mov         dl,1
 00709F96    mov         eax,dword ptr [ebx+3EC];TFXADMenuFrame.miFilter2:TMenuItem
 00709F9C    call        TMenuItem.SetEnabled
 00709FA1    mov         dl,1
 00709FA3    mov         eax,dword ptr [ebx+3F0];TFXADMenuFrame.miFilter3:TMenuItem
 00709FA9    call        TMenuItem.SetEnabled
 00709FAE    mov         dl,1
 00709FB0    mov         eax,dword ptr [ebx+3F4];TFXADMenuFrame.miFilter4:TMenuItem
 00709FB6    call        TMenuItem.SetEnabled
 00709FBB    pop         ebx
 00709FBC    ret
*}
end;

//00709FC0
procedure TFXADMenuFrame.EnableOrDisableDayModePopupItems(LoopType:Byte; DeviceType:Word; ApInFunc:Byte);
begin
{*
 00709FC0    push        ebp
 00709FC1    mov         ebp,esp
 00709FC3    add         esp,0FFFFFF60
 00709FC9    push        ebx
 00709FCA    push        esi
 00709FCB    push        edi
 00709FCC    mov         esi,ecx
 00709FCE    mov         ebx,edx
 00709FD0    mov         edi,eax
 00709FD2    mov         dl,1
 00709FD4    mov         eax,dword ptr [edi+3FC];TFXADMenuFrame.miDayNoEffect:TMenuItem
 00709FDA    call        TMenuItem.SetEnabled
 00709FDF    movzx       eax,bl
 00709FE2    cmp         eax,6
>00709FE5    ja          0070A3A0
 00709FEB    jmp         dword ptr [eax*4+709FF2]
 00709FEB    dd          0070A3A0
 00709FEB    dd          0070A11C
 00709FEB    dd          0070A0C9
 00709FEB    dd          0070A00E
 00709FEB    dd          0070A1A7
 00709FEB    dd          0070A3A0
 00709FEB    dd          0070A1A7
 0070A00E    mov         eax,esi
 0070A010    shr         ax,8
 0070A014    dec         eax
 0070A015    sub         ax,6
>0070A019    jb          0070A02B
 0070A01B    sub         ax,1
>0070A01F    je          0070A02B
 0070A021    sub         ax,14
>0070A025    je          0070A02B
 0070A027    xor         edx,edx
>0070A029    jmp         0070A02D
 0070A02B    mov         dl,1
 0070A02D    mov         eax,dword ptr [edi+400];TFXADMenuFrame.miDayThresholds:TMenuItem
 0070A033    call        TMenuItem.SetEnabled
 0070A038    mov         eax,esi
 0070A03A    shr         ax,8
 0070A03E    add         eax,0FFFFFFF4
 0070A041    sub         ax,8
>0070A045    jae         0070A061
 0070A047    movzx       eax,byte ptr [ebp+8]
 0070A04B    add         al,0F6
 0070A04D    sub         al,2
>0070A04F    jb          0070A05D
 0070A051    sub         al,1
>0070A053    je          0070A05D
 0070A055    sub         al,0E
>0070A057    je          0070A05D
 0070A059    sub         al,2
>0070A05B    jne         0070A061
 0070A05D    xor         edx,edx
>0070A05F    jmp         0070A063
 0070A061    mov         dl,1
 0070A063    mov         eax,dword ptr [edi+404];TFXADMenuFrame.miDayDisabled:TMenuItem
 0070A069    call        TMenuItem.SetEnabled
 0070A06E    mov         eax,esi
 0070A070    shr         ax,8
 0070A074    sub         ax,0A
>0070A078    je          0070A0B3
 0070A07A    mov         eax,esi
 0070A07C    shr         ax,8
 0070A080    add         eax,0FFFFFFF4
 0070A083    sub         ax,8
>0070A087    jae         0070A09F
 0070A089    movzx       eax,byte ptr [ebp+8]
 0070A08D    add         al,0F6
 0070A08F    sub         al,2
>0070A091    jb          0070A0B3
 0070A093    sub         al,1
>0070A095    je          0070A0B3
 0070A097    sub         al,0E
>0070A099    je          0070A0B3
 0070A09B    sub         al,2
>0070A09D    je          0070A0B3
 0070A09F    shr         si,8
 0070A0A3    add         esi,0FFFFFFEC
 0070A0A6    sub         si,4
>0070A0AA    jb          0070A0B3
 0070A0AC    dec         esi
 0070A0AD    sub         si,3
>0070A0B1    jae         0070A0B7
 0070A0B3    xor         edx,edx
>0070A0B5    jmp         0070A0B9
 0070A0B7    mov         dl,1
 0070A0B9    mov         eax,dword ptr [edi+408];TFXADMenuFrame.miDayInpDisabled:TMenuItem
 0070A0BF    call        TMenuItem.SetEnabled
>0070A0C4    jmp         0070A3A0
 0070A0C9    xor         edx,edx
 0070A0CB    mov         eax,dword ptr [edi+400];TFXADMenuFrame.miDayThresholds:TMenuItem
 0070A0D1    call        TMenuItem.SetEnabled
 0070A0D6    and         si,0FF
 0070A0DB    add         esi,0FFFFFFF6
 0070A0DE    sub         si,2
>0070A0E2    jb          0070A0FA
 0070A0E4    sub         si,1
>0070A0E8    je          0070A0FA
 0070A0EA    sub         si,0E
>0070A0EE    je          0070A0FA
 0070A0F0    sub         si,2
>0070A0F4    je          0070A0FA
 0070A0F6    xor         edx,edx
>0070A0F8    jmp         0070A0FC
 0070A0FA    mov         dl,1
 0070A0FC    xor         dl,1
 0070A0FF    mov         eax,dword ptr [edi+404];TFXADMenuFrame.miDayDisabled:TMenuItem
 0070A105    call        TMenuItem.SetEnabled
 0070A10A    xor         edx,edx
 0070A10C    mov         eax,dword ptr [edi+408];TFXADMenuFrame.miDayInpDisabled:TMenuItem
 0070A112    call        TMenuItem.SetEnabled
>0070A117    jmp         0070A3A0
 0070A11C    mov         eax,esi
 0070A11E    shr         ax,8
 0070A122    dec         eax
 0070A123    sub         ax,2
>0070A127    jb          0070A13D
 0070A129    add         eax,0FFFFFFFB
 0070A12C    sub         ax,4
>0070A130    jb          0070A13D
 0070A132    dec         eax
 0070A133    sub         ax,3
>0070A137    jb          0070A13D
 0070A139    xor         edx,edx
>0070A13B    jmp         0070A13F
 0070A13D    mov         dl,1
 0070A13F    mov         eax,dword ptr [edi+400];TFXADMenuFrame.miDayThresholds:TMenuItem
 0070A145    call        TMenuItem.SetEnabled
 0070A14A    mov         ebx,esi
 0070A14C    shr         bx,8
 0070A150    mov         eax,ebx
 0070A152    sub         ax,4
>0070A156    jne         0070A172
 0070A158    movzx       eax,byte ptr [ebp+8]
 0070A15C    add         al,0F6
 0070A15E    sub         al,2
>0070A160    jb          0070A16E
 0070A162    sub         al,1
>0070A164    je          0070A16E
 0070A166    sub         al,0E
>0070A168    je          0070A16E
 0070A16A    sub         al,2
>0070A16C    jne         0070A172
 0070A16E    xor         edx,edx
>0070A170    jmp         0070A174
 0070A172    mov         dl,1
 0070A174    mov         eax,dword ptr [edi+404];TFXADMenuFrame.miDayDisabled:TMenuItem
 0070A17A    call        TMenuItem.SetEnabled
 0070A17F    add         ebx,0FFFFFFFC
 0070A182    sub         bx,3
>0070A186    jb          0070A192
 0070A188    sub         bx,2
>0070A18C    je          0070A192
 0070A18E    xor         edx,edx
>0070A190    jmp         0070A194
 0070A192    mov         dl,1
 0070A194    xor         dl,1
 0070A197    mov         eax,dword ptr [edi+408];TFXADMenuFrame.miDayInpDisabled:TMenuItem
 0070A19D    call        TMenuItem.SetEnabled
>0070A1A2    jmp         0070A3A0
 0070A1A7    test        si,0FF
>0070A1AC    jne         0070A238
 0070A1B2    mov         eax,esi
 0070A1B4    shr         ax,8
 0070A1B8    dec         eax
 0070A1B9    sub         ax,2
>0070A1BD    jb          0070A1D3
 0070A1BF    add         eax,0FFFFFFFB
 0070A1C2    sub         ax,4
>0070A1C6    jb          0070A1D3
 0070A1C8    dec         eax
 0070A1C9    sub         ax,3
>0070A1CD    jb          0070A1D3
 0070A1CF    xor         edx,edx
>0070A1D1    jmp         0070A1D5
 0070A1D3    mov         dl,1
 0070A1D5    mov         eax,dword ptr [edi+400];TFXADMenuFrame.miDayThresholds:TMenuItem
 0070A1DB    call        TMenuItem.SetEnabled
 0070A1E0    mov         ebx,esi
 0070A1E2    shr         bx,8
 0070A1E6    mov         eax,ebx
 0070A1E8    sub         ax,4
>0070A1EC    jne         0070A208
 0070A1EE    movzx       eax,byte ptr [ebp+8]
 0070A1F2    add         al,0F6
 0070A1F4    sub         al,2
>0070A1F6    jb          0070A204
 0070A1F8    sub         al,1
>0070A1FA    je          0070A204
 0070A1FC    sub         al,0E
>0070A1FE    je          0070A204
 0070A200    sub         al,2
>0070A202    jne         0070A208
 0070A204    xor         edx,edx
>0070A206    jmp         0070A20A
 0070A208    mov         dl,1
 0070A20A    mov         eax,dword ptr [edi+404];TFXADMenuFrame.miDayDisabled:TMenuItem
 0070A210    call        TMenuItem.SetEnabled
 0070A215    add         ebx,0FFFFFFFC
 0070A218    sub         bx,3
>0070A21C    jb          0070A228
 0070A21E    sub         bx,2
>0070A222    je          0070A228
 0070A224    xor         edx,edx
>0070A226    jmp         0070A22A
 0070A228    mov         dl,1
 0070A22A    xor         dl,1
 0070A22D    mov         eax,dword ptr [edi+408];TFXADMenuFrame.miDayInpDisabled:TMenuItem
 0070A233    call        TMenuItem.SetEnabled
 0070A238    mov         ax,0FF
 0070A23C    and         ax,si
 0070A23F    cmp         ax,1
>0070A243    jne         0070A3A0
 0070A249    mov         eax,[007C46D4];^gvar_007C2700
 0070A24E    push        esi
 0070A24F    push        edi
 0070A250    mov         esi,eax
 0070A252    lea         edi,[ebp-20]
 0070A255    mov         ecx,8
 0070A25A    rep movs    dword ptr [edi],dword ptr [esi]
 0070A25C    pop         edi
 0070A25D    pop         esi
 0070A25E    lea         eax,[ebp-20]
 0070A261    mov         edx,70A3AC
 0070A266    mov         cl,20
 0070A268    call        @SetSub
 0070A26D    mov         eax,esi
 0070A26F    shr         ax,8
 0070A273    cmp         ax,0FF
>0070A277    ja          0070A280
 0070A279    movzx       eax,ax
 0070A27C    bt          dword ptr [ebp-20],eax
 0070A280    setb        dl
 0070A283    mov         eax,dword ptr [edi+400];TFXADMenuFrame.miDayThresholds:TMenuItem
 0070A289    call        TMenuItem.SetEnabled
 0070A28E    mov         ebx,esi
 0070A290    shr         bx,8
 0070A294    mov         eax,[007C4B18];^gvar_007C2740:Word
 0070A299    mov         edx,ebx
 0070A29B    cmp         dx,0FF
>0070A2A0    ja          0070A2A8
 0070A2A2    movzx       edx,dx
 0070A2A5    bt          dword ptr [eax],edx
>0070A2A8    jae         0070A2C4
 0070A2AA    movzx       eax,byte ptr [ebp+8]
 0070A2AE    add         al,0F6
 0070A2B0    sub         al,2
>0070A2B2    jb          0070A2C0
 0070A2B4    sub         al,1
>0070A2B6    je          0070A2C0
 0070A2B8    sub         al,0E
>0070A2BA    je          0070A2C0
 0070A2BC    sub         al,2
>0070A2BE    jne         0070A2C4
 0070A2C0    xor         edx,edx
>0070A2C2    jmp         0070A2C6
 0070A2C4    mov         dl,1
 0070A2C6    mov         eax,dword ptr [edi+404];TFXADMenuFrame.miDayDisabled:TMenuItem
 0070A2CC    call        TMenuItem.SetEnabled
 0070A2D1    mov         eax,[007C4730];^gvar_007C2760
 0070A2D6    push        esi
 0070A2D7    push        edi
 0070A2D8    mov         esi,eax
 0070A2DA    lea         edi,[ebp-20]
 0070A2DD    mov         ecx,8
 0070A2E2    rep movs    dword ptr [edi],dword ptr [esi]
 0070A2E4    pop         edi
 0070A2E5    pop         esi
 0070A2E6    push        esi
 0070A2E7    push        edi
 0070A2E8    mov         esi,70A3CC
 0070A2ED    lea         edi,[ebp-40]
 0070A2F0    mov         ecx,8
 0070A2F5    rep movs    dword ptr [edi],dword ptr [esi]
 0070A2F7    pop         edi
 0070A2F8    pop         esi
 0070A2F9    push        esi
 0070A2FA    push        edi
 0070A2FB    mov         esi,70A3EC
 0070A300    lea         edi,[ebp-60]
 0070A303    mov         ecx,8
 0070A308    rep movs    dword ptr [edi],dword ptr [esi]
 0070A30A    pop         edi
 0070A30B    pop         esi
 0070A30C    push        esi
 0070A30D    push        edi
 0070A30E    mov         esi,70A40C
 0070A313    lea         edi,[ebp-80]
 0070A316    mov         ecx,8
 0070A31B    rep movs    dword ptr [edi],dword ptr [esi]
 0070A31D    pop         edi
 0070A31E    pop         esi
 0070A31F    mov         eax,[007C4B18];^gvar_007C2740:Word
 0070A324    push        esi
 0070A325    push        edi
 0070A326    mov         esi,eax
 0070A328    lea         edi,[ebp-0A0]
 0070A32E    mov         ecx,8
 0070A333    rep movs    dword ptr [edi],dword ptr [esi]
 0070A335    pop         edi
 0070A336    pop         esi
 0070A337    lea         eax,[ebp-0A0]
 0070A33D    mov         edx,dword ptr ds:[7C43C8];^gvar_007C2720
 0070A343    mov         cl,20
 0070A345    call        @SetUnion
 0070A34A    lea         edx,[ebp-0A0]
 0070A350    lea         eax,[ebp-80]
 0070A353    mov         cl,20
 0070A355    call        @SetUnion
 0070A35A    lea         edx,[ebp-80]
 0070A35D    lea         eax,[ebp-60]
 0070A360    mov         cl,20
 0070A362    call        @SetUnion
 0070A367    lea         edx,[ebp-60]
 0070A36A    lea         eax,[ebp-40]
 0070A36D    mov         cl,20
 0070A36F    call        @SetUnion
 0070A374    lea         edx,[ebp-40]
 0070A377    lea         eax,[ebp-20]
 0070A37A    mov         cl,20
 0070A37C    call        @SetUnion
 0070A381    cmp         bx,0FF
>0070A386    ja          0070A38F
 0070A388    movzx       ebx,bx
 0070A38B    bt          dword ptr [ebp-20],ebx
 0070A38F    setb        dl
 0070A392    xor         dl,1
 0070A395    mov         eax,dword ptr [edi+408];TFXADMenuFrame.miDayInpDisabled:TMenuItem
 0070A39B    call        TMenuItem.SetEnabled
 0070A3A0    pop         edi
 0070A3A1    pop         esi
 0070A3A2    pop         ebx
 0070A3A3    mov         esp,ebp
 0070A3A5    pop         ebp
 0070A3A6    ret         4
*}
end;

//0070A42C
procedure TFXADMenuFrame.EnableOrDisableSysTypePopUpItems(TypeInOtherRange:Word);
begin
{*
 0070A42C    push        ebx
 0070A42D    push        esi
 0070A42E    push        edi
 0070A42F    mov         esi,edx
 0070A431    mov         ebx,eax
 0070A433    mov         edi,esi
 0070A435    shr         di,8
 0070A439    mov         eax,edi
 0070A43B    mov         edx,dword ptr ds:[7C4918];^gvar_007C25A0:Word
 0070A441    cmp         ax,0FF
>0070A445    ja          0070A44D
 0070A447    movzx       eax,ax
 0070A44A    bt          dword ptr [edx],eax
>0070A44D    jae         0070A4DA
 0070A453    xor         edx,edx
 0070A455    mov         eax,dword ptr [ebx+2B8];TFXADMenuFrame.miSysIonSensor:TMenuItem
 0070A45B    call        TMenuItem.SetEnabled
 0070A460    xor         edx,edx
 0070A462    mov         eax,dword ptr [ebx+2BC];TFXADMenuFrame.miSysOptSensor:TMenuItem
 0070A468    call        TMenuItem.SetEnabled
 0070A46D    xor         edx,edx
 0070A46F    mov         eax,dword ptr [ebx+2C8];TFXADMenuFrame.miSysHeatSensor:TMenuItem
 0070A475    call        TMenuItem.SetEnabled
 0070A47A    xor         edx,edx
 0070A47C    mov         eax,dword ptr [ebx+2D4];TFXADMenuFrame.miSysOmniSensor:TMenuItem
 0070A482    call        TMenuItem.SetEnabled
 0070A487    xor         edx,edx
 0070A489    mov         eax,dword ptr [ebx+2D8];TFXADMenuFrame.miSysLaserLZR1:TMenuItem
 0070A48F    call        TMenuItem.SetEnabled
 0070A494    xor         edx,edx
 0070A496    mov         eax,dword ptr [ebx+2DC];TFXADMenuFrame.miSysLaser7251:TMenuItem
 0070A49C    call        TMenuItem.SetEnabled
 0070A4A1    xor         edx,edx
 0070A4A3    mov         eax,dword ptr [ebx+2E0];TFXADMenuFrame.miSysMultiSensor:TMenuItem
 0070A4A9    call        TMenuItem.SetEnabled
 0070A4AE    xor         edx,edx
 0070A4B0    mov         eax,dword ptr [ebx+2EC];TFXADMenuFrame.miSysCoptirSensor:TMenuItem
 0070A4B6    call        TMenuItem.SetEnabled
 0070A4BB    xor         edx,edx
 0070A4BD    mov         eax,dword ptr [ebx+2F8];TFXADMenuFrame.miSysPtirSensor:TMenuItem
 0070A4C3    call        TMenuItem.SetEnabled
 0070A4C8    xor         edx,edx
 0070A4CA    mov         eax,dword ptr [ebx+304];TFXADMenuFrame.miSysBeamSensor:TMenuItem
 0070A4D0    call        TMenuItem.SetEnabled
>0070A4D5    jmp         0070A56A
 0070A4DA    mov         dl,1
 0070A4DC    mov         eax,dword ptr [ebx+2B8];TFXADMenuFrame.miSysIonSensor:TMenuItem
 0070A4E2    call        TMenuItem.SetEnabled
 0070A4E7    mov         dl,1
 0070A4E9    mov         eax,dword ptr [ebx+2BC];TFXADMenuFrame.miSysOptSensor:TMenuItem
 0070A4EF    call        TMenuItem.SetEnabled
 0070A4F4    mov         dl,1
 0070A4F6    mov         eax,dword ptr [ebx+2C8];TFXADMenuFrame.miSysHeatSensor:TMenuItem
 0070A4FC    call        TMenuItem.SetEnabled
 0070A501    mov         dl,1
 0070A503    mov         eax,dword ptr [ebx+2D4];TFXADMenuFrame.miSysOmniSensor:TMenuItem
 0070A509    call        TMenuItem.SetEnabled
 0070A50E    mov         edx,dword ptr ds:[7C4E24];^gvar_007CA83C
 0070A514    movzx       edx,byte ptr [edx]
 0070A517    mov         eax,dword ptr [ebx+2D8];TFXADMenuFrame.miSysLaserLZR1:TMenuItem
 0070A51D    call        TMenuItem.SetEnabled
 0070A522    mov         edx,dword ptr ds:[7C4E24];^gvar_007CA83C
 0070A528    movzx       edx,byte ptr [edx]
 0070A52B    mov         eax,dword ptr [ebx+2DC];TFXADMenuFrame.miSysLaser7251:TMenuItem
 0070A531    call        TMenuItem.SetEnabled
 0070A536    mov         dl,1
 0070A538    mov         eax,dword ptr [ebx+2E0];TFXADMenuFrame.miSysMultiSensor:TMenuItem
 0070A53E    call        TMenuItem.SetEnabled
 0070A543    mov         dl,1
 0070A545    mov         eax,dword ptr [ebx+2EC];TFXADMenuFrame.miSysCoptirSensor:TMenuItem
 0070A54B    call        TMenuItem.SetEnabled
 0070A550    mov         dl,1
 0070A552    mov         eax,dword ptr [ebx+2F8];TFXADMenuFrame.miSysPtirSensor:TMenuItem
 0070A558    call        TMenuItem.SetEnabled
 0070A55D    mov         dl,1
 0070A55F    mov         eax,dword ptr [ebx+304];TFXADMenuFrame.miSysBeamSensor:TMenuItem
 0070A565    call        TMenuItem.SetEnabled
 0070A56A    mov         eax,edi
 0070A56C    mov         edx,dword ptr ds:[7C4424];^gvar_007C25C0:Word
 0070A572    cmp         ax,0FF
>0070A576    ja          0070A57E
 0070A578    movzx       eax,ax
 0070A57B    bt          dword ptr [edx],eax
>0070A57E    jae         0070A5A9
 0070A580    xor         edx,edx
 0070A582    mov         eax,dword ptr [ebx+30C];TFXADMenuFrame.miSysMonitorModule:TMenuItem
 0070A588    call        TMenuItem.SetEnabled
 0070A58D    xor         edx,edx
 0070A58F    mov         eax,dword ptr [ebx+310];TFXADMenuFrame.miSysControlModule:TMenuItem
 0070A595    call        TMenuItem.SetEnabled
 0070A59A    xor         edx,edx
 0070A59C    mov         eax,dword ptr [ebx+318];TFXADMenuFrame.miSysConvZoneModule:TMenuItem
 0070A5A2    call        TMenuItem.SetEnabled
>0070A5A7    jmp         0070A5D0
 0070A5A9    mov         dl,1
 0070A5AB    mov         eax,dword ptr [ebx+30C];TFXADMenuFrame.miSysMonitorModule:TMenuItem
 0070A5B1    call        TMenuItem.SetEnabled
 0070A5B6    mov         dl,1
 0070A5B8    mov         eax,dword ptr [ebx+310];TFXADMenuFrame.miSysControlModule:TMenuItem
 0070A5BE    call        TMenuItem.SetEnabled
 0070A5C3    mov         dl,1
 0070A5C5    mov         eax,dword ptr [ebx+318];TFXADMenuFrame.miSysConvZoneModule:TMenuItem
 0070A5CB    call        TMenuItem.SetEnabled
 0070A5D0    pop         edi
 0070A5D1    pop         esi
 0070A5D2    pop         ebx
 0070A5D3    ret
*}
end;

//0070A5D4
procedure TFXADMenuFrame.SchnMenuDrawItem(Sender:TObject; ACanvas:TCanvas; Selected:Boolean; ARect:TRect);
begin
{*
 0070A5D4    push        ebp
 0070A5D5    mov         ebp,esp
 0070A5D7    add         esp,0FFFFFFD8
 0070A5DA    push        ebx
 0070A5DB    push        esi
 0070A5DC    push        edi
 0070A5DD    xor         ebx,ebx
 0070A5DF    mov         dword ptr [ebp-4],ebx
 0070A5E2    mov         esi,dword ptr [ebp+0C]
 0070A5E5    lea         edi,[ebp-14]
 0070A5E8    movs        dword ptr [edi],dword ptr [esi]
 0070A5E9    movs        dword ptr [edi],dword ptr [esi]
 0070A5EA    movs        dword ptr [edi],dword ptr [esi]
 0070A5EB    movs        dword ptr [edi],dword ptr [esi]
 0070A5EC    mov         ebx,ecx
 0070A5EE    mov         esi,edx
 0070A5F0    xor         eax,eax
 0070A5F2    push        ebp
 0070A5F3    push        70A6D7
 0070A5F8    push        dword ptr fs:[eax]
 0070A5FB    mov         dword ptr fs:[eax],esp
 0070A5FE    mov         dword ptr [ebp-28],14
 0070A605    mov         dword ptr [ebp-24],8
 0070A60C    mov         dword ptr [ebp-20],10
 0070A613    mov         dword ptr [ebp-1C],1
 0070A61A    xor         eax,eax
 0070A61C    mov         dword ptr [ebp-18],eax
 0070A61F    mov         eax,[007C4E78];^Screen:TScreen
 0070A624    mov         eax,dword ptr [eax]
 0070A626    mov         edx,dword ptr [eax+90];TScreen.FMenuFont:TFont
 0070A62C    mov         eax,ebx
 0070A62E    call        TCanvas.SetFont
 0070A633    cmp         byte ptr [ebp+8],0
>0070A637    je          0070A655
 0070A639    mov         edx,0FF00001D
 0070A63E    mov         eax,dword ptr [ebx+48];TCanvas.FBrush:TBrush
 0070A641    call        TBrush.SetColor
 0070A646    mov         edx,0FF00000E
 0070A64B    mov         eax,dword ptr [ebx+40];TCanvas.FFont:TFont
 0070A64E    call        TFont.SetColor
>0070A653    jmp         0070A66F
 0070A655    mov         edx,0FF000004
 0070A65A    mov         eax,dword ptr [ebx+48];TCanvas.FBrush:TBrush
 0070A65D    call        TBrush.SetColor
 0070A662    mov         edx,0FF000007
 0070A667    mov         eax,dword ptr [ebx+40];TCanvas.FFont:TFont
 0070A66A    call        TFont.SetColor
 0070A66F    lea         edx,[ebp-14]
 0070A672    mov         eax,ebx
 0070A674    mov         ecx,dword ptr [eax]
 0070A676    call        dword ptr [ecx+54];TCanvas.FillRect
 0070A679    lea         eax,[ebp-4]
 0070A67C    mov         edx,dword ptr [esi+40]
 0070A67F    call        @UStrLAsg
 0070A684    add         dword ptr [ebp-14],10
>0070A688    jno         0070A68F
 0070A68A    call        @IntOver
 0070A68F    mov         eax,ebx
 0070A691    call        TCanvas.GetHandle
 0070A696    mov         esi,eax
 0070A698    mov         ebx,dword ptr [ebp-4]
 0070A69B    test        ebx,ebx
>0070A69D    je          0070A6A4
 0070A69F    sub         ebx,4
 0070A6A2    mov         ebx,dword ptr [ebx]
 0070A6A4    lea         eax,[ebp-28]
 0070A6A7    push        eax
 0070A6A8    push        134
 0070A6AD    lea         eax,[ebp-14]
 0070A6B0    push        eax
 0070A6B1    push        ebx
 0070A6B2    mov         eax,dword ptr [ebp-4]
 0070A6B5    call        @UStrToPWChar
 0070A6BA    push        eax
 0070A6BB    push        esi
 0070A6BC    call        user32.DrawTextExW
 0070A6C1    xor         eax,eax
 0070A6C3    pop         edx
 0070A6C4    pop         ecx
 0070A6C5    pop         ecx
 0070A6C6    mov         dword ptr fs:[eax],edx
 0070A6C9    push        70A6DE
 0070A6CE    lea         eax,[ebp-4]
 0070A6D1    call        @UStrClr
 0070A6D6    ret
>0070A6D7    jmp         @HandleFinally
>0070A6DC    jmp         0070A6CE
 0070A6DE    pop         edi
 0070A6DF    pop         esi
 0070A6E0    pop         ebx
 0070A6E1    mov         esp,ebp
 0070A6E3    pop         ebp
 0070A6E4    ret         8
*}
end;

//0070A6E8
procedure TFXADMenuFrame.SchnMenuMeasureItem(Sender:TObject; ACanvas:TCanvas; var Height:Integer; var Width:Integer);
begin
{*
 0070A6E8    push        ebp
 0070A6E9    mov         ebp,esp
 0070A6EB    add         esp,0FFFFFFDC
 0070A6EE    push        ebx
 0070A6EF    push        esi
 0070A6F0    push        edi
 0070A6F1    mov         ebx,ecx
 0070A6F3    mov         edi,edx
 0070A6F5    mov         dword ptr [ebp-24],14
 0070A6FC    mov         dword ptr [ebp-20],8
 0070A703    mov         dword ptr [ebp-1C],10
 0070A70A    mov         dword ptr [ebp-18],1
 0070A711    xor         eax,eax
 0070A713    mov         dword ptr [ebp-14],eax
 0070A716    mov         eax,[007C4E78];^Screen:TScreen
 0070A71B    mov         eax,dword ptr [eax]
 0070A71D    mov         edx,dword ptr [eax+90];TScreen.FMenuFont:TFont
 0070A723    mov         eax,ebx
 0070A725    call        TCanvas.SetFont
 0070A72A    xor         eax,eax
 0070A72C    mov         dword ptr [ebp-10],eax
 0070A72F    xor         eax,eax
 0070A731    mov         dword ptr [ebp-0C],eax
 0070A734    mov         dword ptr [ebp-8],140
 0070A73B    xor         eax,eax
 0070A73D    mov         dword ptr [ebp-4],eax
 0070A740    mov         eax,ebx
 0070A742    call        TCanvas.GetHandle
 0070A747    mov         esi,eax
 0070A749    mov         eax,dword ptr [edi+40]
 0070A74C    mov         ebx,eax
 0070A74E    test        ebx,ebx
>0070A750    je          0070A757
 0070A752    sub         ebx,4
 0070A755    mov         ebx,dword ptr [ebx]
 0070A757    lea         eax,[ebp-24]
 0070A75A    push        eax
 0070A75B    push        510
 0070A760    lea         eax,[ebp-10]
 0070A763    push        eax
 0070A764    push        ebx
 0070A765    mov         eax,dword ptr [edi+40]
 0070A768    call        @UStrToPWChar
 0070A76D    push        eax
 0070A76E    push        esi
 0070A76F    call        user32.DrawTextExW
 0070A774    mov         eax,dword ptr [ebp-8]
 0070A777    add         eax,20
>0070A77A    jno         0070A781
 0070A77C    call        @IntOver
 0070A781    mov         edx,dword ptr [ebp+0C]
 0070A784    mov         dword ptr [edx],eax
 0070A786    mov         eax,dword ptr [ebp-4]
 0070A789    add         eax,5
>0070A78C    jno         0070A793
 0070A78E    call        @IntOver
 0070A793    mov         edx,dword ptr [ebp+8]
 0070A796    mov         dword ptr [edx],eax
 0070A798    pop         edi
 0070A799    pop         esi
 0070A79A    pop         ebx
 0070A79B    mov         esp,ebp
 0070A79D    pop         ebp
 0070A79E    ret         8
*}
end;

//0070A7A4
procedure TFXADMenuFrame.SchnSubMenuDrawItem(Sender:TObject; ACanvas:TCanvas; Selected:Boolean; ARect:TRect);
begin
{*
 0070A7A4    push        ebp
 0070A7A5    mov         ebp,esp
 0070A7A7    add         esp,0FFFFFFD4
 0070A7AA    push        ebx
 0070A7AB    push        esi
 0070A7AC    push        edi
 0070A7AD    xor         ebx,ebx
 0070A7AF    mov         dword ptr [ebp-4],ebx
 0070A7B2    mov         esi,dword ptr [ebp+0C]
 0070A7B5    lea         edi,[ebp-18]
 0070A7B8    movs        dword ptr [edi],dword ptr [esi]
 0070A7B9    movs        dword ptr [edi],dword ptr [esi]
 0070A7BA    movs        dword ptr [edi],dword ptr [esi]
 0070A7BB    movs        dword ptr [edi],dword ptr [esi]
 0070A7BC    mov         ebx,ecx
 0070A7BE    mov         edi,edx
 0070A7C0    xor         eax,eax
 0070A7C2    push        ebp
 0070A7C3    push        70A939
 0070A7C8    push        dword ptr fs:[eax]
 0070A7CB    mov         dword ptr fs:[eax],esp
 0070A7CE    mov         dword ptr [ebp-2C],14
 0070A7D5    mov         dword ptr [ebp-28],8
 0070A7DC    mov         dword ptr [ebp-24],8
 0070A7E3    mov         dword ptr [ebp-20],1
 0070A7EA    xor         eax,eax
 0070A7EC    mov         dword ptr [ebp-1C],eax
 0070A7EF    mov         dl,1
 0070A7F1    mov         eax,[0046F9A0];TStringList
 0070A7F6    call        TStringList.Create;TStringList.Create
 0070A7FB    mov         esi,eax
 0070A7FD    mov         eax,[007C4E78];^Screen:TScreen
 0070A802    mov         eax,dword ptr [eax]
 0070A804    mov         edx,dword ptr [eax+90];TScreen.FMenuFont:TFont
 0070A80A    mov         eax,ebx
 0070A80C    call        TCanvas.SetFont
 0070A811    cmp         byte ptr [ebp+8],0
>0070A815    je          0070A833
 0070A817    mov         edx,0FF00001D
 0070A81C    mov         eax,dword ptr [ebx+48];TCanvas.FBrush:TBrush
 0070A81F    call        TBrush.SetColor
 0070A824    mov         edx,0FF00000E
 0070A829    mov         eax,dword ptr [ebx+40];TCanvas.FFont:TFont
 0070A82C    call        TFont.SetColor
>0070A831    jmp         0070A84D
 0070A833    mov         edx,0FF000004
 0070A838    mov         eax,dword ptr [ebx+48];TCanvas.FBrush:TBrush
 0070A83B    call        TBrush.SetColor
 0070A840    mov         edx,0FF000007
 0070A845    mov         eax,dword ptr [ebx+40];TCanvas.FFont:TFont
 0070A848    call        TFont.SetColor
 0070A84D    lea         edx,[ebp-18]
 0070A850    mov         eax,ebx
 0070A852    mov         ecx,dword ptr [eax]
 0070A854    call        dword ptr [ecx+54];TCanvas.FillRect
 0070A857    movzx       edx,byte ptr ds:[70A94C];0x1 gvar_0070A94C
 0070A85E    mov         eax,dword ptr [ebx+40];TCanvas.FFont:TFont
 0070A861    call        TFont.SetStyle
 0070A866    mov         edx,dword ptr [edi+40]
 0070A869    mov         eax,esi
 0070A86B    mov         ecx,dword ptr [eax]
 0070A86D    call        dword ptr [ecx+30];TStrings.SetTextStr
 0070A870    lea         ecx,[ebp-4]
 0070A873    xor         edx,edx
 0070A875    mov         eax,esi
 0070A877    mov         edi,dword ptr [eax]
 0070A879    call        dword ptr [edi+0C];TStringList.Get
 0070A87C    mov         eax,ebx
 0070A87E    call        TCanvas.GetHandle
 0070A883    mov         dword ptr [ebp-8],eax
 0070A886    mov         edi,dword ptr [ebp-4]
 0070A889    test        edi,edi
>0070A88B    je          0070A892
 0070A88D    sub         edi,4
 0070A890    mov         edi,dword ptr [edi]
 0070A892    lea         eax,[ebp-2C]
 0070A895    push        eax
 0070A896    push        110
 0070A89B    lea         eax,[ebp-18]
 0070A89E    push        eax
 0070A89F    push        edi
 0070A8A0    mov         eax,dword ptr [ebp-4]
 0070A8A3    call        @UStrToPWChar
 0070A8A8    push        eax
 0070A8A9    mov         eax,dword ptr [ebp-8]
 0070A8AC    push        eax
 0070A8AD    call        user32.DrawTextExW
 0070A8B2    xor         edx,edx
 0070A8B4    mov         eax,esi
 0070A8B6    mov         ecx,dword ptr [eax]
 0070A8B8    call        dword ptr [ecx+4C];TStringList.Delete
 0070A8BB    lea         edx,[ebp-4]
 0070A8BE    mov         eax,esi
 0070A8C0    mov         ecx,dword ptr [eax]
 0070A8C2    call        dword ptr [ecx+1C];TStrings.GetTextStr
 0070A8C5    movzx       edx,byte ptr ds:[70A950];0x0 gvar_0070A950
 0070A8CC    mov         eax,dword ptr [ebx+40];TCanvas.FFont:TFont
 0070A8CF    call        TFont.SetStyle
 0070A8D4    add         dword ptr [ebp-18],14
>0070A8D8    jno         0070A8DF
 0070A8DA    call        @IntOver
 0070A8DF    add         dword ptr [ebp-14],0E
>0070A8E3    jno         0070A8EA
 0070A8E5    call        @IntOver
 0070A8EA    mov         eax,ebx
 0070A8EC    call        TCanvas.GetHandle
 0070A8F1    mov         edi,eax
 0070A8F3    mov         ebx,dword ptr [ebp-4]
 0070A8F6    test        ebx,ebx
>0070A8F8    je          0070A8FF
 0070A8FA    sub         ebx,4
 0070A8FD    mov         ebx,dword ptr [ebx]
 0070A8FF    lea         eax,[ebp-2C]
 0070A902    push        eax
 0070A903    push        110
 0070A908    lea         eax,[ebp-18]
 0070A90B    push        eax
 0070A90C    push        ebx
 0070A90D    mov         eax,dword ptr [ebp-4]
 0070A910    call        @UStrToPWChar
 0070A915    push        eax
 0070A916    push        edi
 0070A917    call        user32.DrawTextExW
 0070A91C    mov         eax,esi
 0070A91E    call        TObject.Free
 0070A923    xor         eax,eax
 0070A925    pop         edx
 0070A926    pop         ecx
 0070A927    pop         ecx
 0070A928    mov         dword ptr fs:[eax],edx
 0070A92B    push        70A940
 0070A930    lea         eax,[ebp-4]
 0070A933    call        @UStrClr
 0070A938    ret
>0070A939    jmp         @HandleFinally
>0070A93E    jmp         0070A930
 0070A940    pop         edi
 0070A941    pop         esi
 0070A942    pop         ebx
 0070A943    mov         esp,ebp
 0070A945    pop         ebp
 0070A946    ret         8
*}
end;

//0070A954
procedure TFXADMenuFrame.SchnSubMenuMeasureItem(Sender:TObject; ACanvas:TCanvas; var Height:Integer; var Width:Integer);
begin
{*
 0070A954    push        ebp
 0070A955    mov         ebp,esp
 0070A957    add         esp,0FFFFFFDC
 0070A95A    push        ebx
 0070A95B    push        esi
 0070A95C    push        edi
 0070A95D    mov         ebx,ecx
 0070A95F    mov         edi,edx
 0070A961    mov         dword ptr [ebp-24],14
 0070A968    mov         dword ptr [ebp-20],8
 0070A96F    mov         dword ptr [ebp-1C],8
 0070A976    mov         dword ptr [ebp-18],1
 0070A97D    xor         eax,eax
 0070A97F    mov         dword ptr [ebp-14],eax
 0070A982    mov         eax,[007C4E78];^Screen:TScreen
 0070A987    mov         eax,dword ptr [eax]
 0070A989    mov         edx,dword ptr [eax+90];TScreen.FMenuFont:TFont
 0070A98F    mov         eax,ebx
 0070A991    call        TCanvas.SetFont
 0070A996    mov         dword ptr [ebp-10],10
 0070A99D    xor         eax,eax
 0070A99F    mov         dword ptr [ebp-0C],eax
 0070A9A2    mov         dword ptr [ebp-8],15E
 0070A9A9    mov         dword ptr [ebp-4],0A
 0070A9B0    mov         eax,ebx
 0070A9B2    call        TCanvas.GetHandle
 0070A9B7    mov         esi,eax
 0070A9B9    mov         eax,dword ptr [edi+40]
 0070A9BC    mov         ebx,eax
 0070A9BE    test        ebx,ebx
>0070A9C0    je          0070A9C7
 0070A9C2    sub         ebx,4
 0070A9C5    mov         ebx,dword ptr [ebx]
 0070A9C7    lea         eax,[ebp-24]
 0070A9CA    push        eax
 0070A9CB    push        510
 0070A9D0    lea         eax,[ebp-10]
 0070A9D3    push        eax
 0070A9D4    push        ebx
 0070A9D5    mov         eax,dword ptr [edi+40]
 0070A9D8    call        @UStrToPWChar
 0070A9DD    push        eax
 0070A9DE    push        esi
 0070A9DF    call        user32.DrawTextExW
 0070A9E4    mov         eax,dword ptr [ebp+0C]
 0070A9E7    mov         edx,dword ptr [ebp-8]
 0070A9EA    mov         dword ptr [eax],edx
 0070A9EC    mov         eax,dword ptr [ebp+8]
 0070A9EF    mov         edx,dword ptr [ebp-4]
 0070A9F2    mov         dword ptr [eax],edx
 0070A9F4    pop         edi
 0070A9F5    pop         esi
 0070A9F6    pop         ebx
 0070A9F7    mov         esp,ebp
 0070A9F9    pop         ebp
 0070A9FA    ret         8
*}
end;

//0070AA00
procedure TFXADMenuFrame.SapEnvironmentClick(Sender:TObject);
begin
{*
 0070AA00    push        ebx
 0070AA01    cmp         word ptr [eax+0C3A],0;TFXADMenuFrame.?fC3A:word
>0070AA09    je          0070AA19
 0070AA0B    mov         ebx,eax
 0070AA0D    mov         eax,dword ptr [ebx+0C3C];TFXADMenuFrame.?fC3C:TAPFillDlg
 0070AA13    call        dword ptr [ebx+0C38];TFXADMenuFrame.EvSapEnvironmentClick
 0070AA19    pop         ebx
 0070AA1A    ret
*}
end;

//0070AA1C
procedure TFXADMenuFrame.EnableOrDisableLaserLevelMenuItems(LaserType:Byte);
begin
{*
 0070AA1C    push        ebx
 0070AA1D    mov         ebx,eax
 0070AA1F    sub         dl,9
>0070AA22    je          0070AA2A
 0070AA24    dec         dl
>0070AA26    je          0070AA53
>0070AA28    jmp         0070AA7A
 0070AA2A    xor         edx,edx
 0070AA2C    mov         eax,dword ptr [ebx+39C];TFXADMenuFrame.miLaser2Level9:TMenuItem
 0070AA32    call        TMenuItem.SetEnabled
 0070AA37    mov         dl,1
 0070AA39    mov         eax,dword ptr [ebx+398];TFXADMenuFrame.miLaserLevel9:TMenuItem
 0070AA3F    call        TMenuItem.SetEnabled
 0070AA44    mov         dl,1
 0070AA46    mov         eax,dword ptr [ebx+3A0];TFXADMenuFrame.miLaserLevel10:TMenuItem
 0070AA4C    call        TMenuItem.SetEnabled
>0070AA51    jmp         0070AA7A
 0070AA53    mov         dl,1
 0070AA55    mov         eax,dword ptr [ebx+39C];TFXADMenuFrame.miLaser2Level9:TMenuItem
 0070AA5B    call        TMenuItem.SetEnabled
 0070AA60    xor         edx,edx
 0070AA62    mov         eax,dword ptr [ebx+398];TFXADMenuFrame.miLaserLevel9:TMenuItem
 0070AA68    call        TMenuItem.SetEnabled
 0070AA6D    xor         edx,edx
 0070AA6F    mov         eax,dword ptr [ebx+3A0];TFXADMenuFrame.miLaserLevel10:TMenuItem
 0070AA75    call        TMenuItem.SetEnabled
 0070AA7A    mov         eax,dword ptr [ebx+39C];TFXADMenuFrame.miLaser2Level9:TMenuItem
 0070AA80    movzx       edx,byte ptr [eax+45];TMenuItem.FEnabled:Boolean
 0070AA84    call        TMenuItem.SetVisible
 0070AA89    mov         eax,dword ptr [ebx+398];TFXADMenuFrame.miLaserLevel9:TMenuItem
 0070AA8F    movzx       edx,byte ptr [eax+45];TMenuItem.FEnabled:Boolean
 0070AA93    call        TMenuItem.SetVisible
 0070AA98    mov         eax,dword ptr [ebx+3A0];TFXADMenuFrame.miLaserLevel10:TMenuItem
 0070AA9E    movzx       edx,byte ptr [eax+45];TMenuItem.FEnabled:Boolean
 0070AAA2    call        TMenuItem.SetVisible
 0070AAA7    pop         ebx
 0070AAA8    ret
*}
end;

//0070AAAC
procedure TFXADMenuFrame.EnableOrDisableSndrVolumeItems(LoopType:Byte);
begin
{*
 0070AAAC    push        ebx
 0070AAAD    mov         ebx,eax
 0070AAAF    sub         dl,3
>0070AAB2    je          0070AACA
 0070AAB4    dec         dl
>0070AAB6    je          0070ABEA
 0070AABC    sub         dl,2
>0070AABF    je          0070ABEA
>0070AAC5    jmp         0070AD08
 0070AACA    mov         dl,1
 0070AACC    mov         eax,dword ptr [ebx+940];TFXADMenuFrame.miSndrVol1:TMenuItem
 0070AAD2    call        TMenuItem.SetEnabled
 0070AAD7    mov         dl,1
 0070AAD9    mov         eax,dword ptr [ebx+940];TFXADMenuFrame.miSndrVol1:TMenuItem
 0070AADF    call        TMenuItem.SetVisible
 0070AAE4    mov         dl,1
 0070AAE6    mov         eax,dword ptr [ebx+944];TFXADMenuFrame.miSndrVol2:TMenuItem
 0070AAEC    call        TMenuItem.SetEnabled
 0070AAF1    mov         dl,1
 0070AAF3    mov         eax,dword ptr [ebx+944];TFXADMenuFrame.miSndrVol2:TMenuItem
 0070AAF9    call        TMenuItem.SetVisible
 0070AAFE    mov         dl,1
 0070AB00    mov         eax,dword ptr [ebx+948];TFXADMenuFrame.miSndrVol3:TMenuItem
 0070AB06    call        TMenuItem.SetEnabled
 0070AB0B    mov         dl,1
 0070AB0D    mov         eax,dword ptr [ebx+948];TFXADMenuFrame.miSndrVol3:TMenuItem
 0070AB13    call        TMenuItem.SetVisible
 0070AB18    mov         dl,1
 0070AB1A    mov         eax,dword ptr [ebx+94C];TFXADMenuFrame.miSndrVol4:TMenuItem
 0070AB20    call        TMenuItem.SetEnabled
 0070AB25    mov         dl,1
 0070AB27    mov         eax,dword ptr [ebx+94C];TFXADMenuFrame.miSndrVol4:TMenuItem
 0070AB2D    call        TMenuItem.SetVisible
 0070AB32    mov         dl,1
 0070AB34    mov         eax,dword ptr [ebx+950];TFXADMenuFrame.miSndrVol5:TMenuItem
 0070AB3A    call        TMenuItem.SetEnabled
 0070AB3F    mov         dl,1
 0070AB41    mov         eax,dword ptr [ebx+950];TFXADMenuFrame.miSndrVol5:TMenuItem
 0070AB47    call        TMenuItem.SetVisible
 0070AB4C    mov         dl,1
 0070AB4E    mov         eax,dword ptr [ebx+954];TFXADMenuFrame.miSndrVol6:TMenuItem
 0070AB54    call        TMenuItem.SetEnabled
 0070AB59    mov         dl,1
 0070AB5B    mov         eax,dword ptr [ebx+954];TFXADMenuFrame.miSndrVol6:TMenuItem
 0070AB61    call        TMenuItem.SetVisible
 0070AB66    mov         dl,1
 0070AB68    mov         eax,dword ptr [ebx+958];TFXADMenuFrame.miSndrVol7:TMenuItem
 0070AB6E    call        TMenuItem.SetEnabled
 0070AB73    mov         dl,1
 0070AB75    mov         eax,dword ptr [ebx+958];TFXADMenuFrame.miSndrVol7:TMenuItem
 0070AB7B    call        TMenuItem.SetVisible
 0070AB80    xor         edx,edx
 0070AB82    mov         eax,dword ptr [ebx+0A74];TFXADMenuFrame.miSndrVolSwitch:TMenuItem
 0070AB88    call        TMenuItem.SetEnabled
 0070AB8D    xor         edx,edx
 0070AB8F    mov         eax,dword ptr [ebx+0A74];TFXADMenuFrame.miSndrVolSwitch:TMenuItem
 0070AB95    call        TMenuItem.SetVisible
 0070AB9A    xor         edx,edx
 0070AB9C    mov         eax,dword ptr [ebx+0A68];TFXADMenuFrame.miSndrVolLow:TMenuItem
 0070ABA2    call        TMenuItem.SetEnabled
 0070ABA7    xor         edx,edx
 0070ABA9    mov         eax,dword ptr [ebx+0A68];TFXADMenuFrame.miSndrVolLow:TMenuItem
 0070ABAF    call        TMenuItem.SetVisible
 0070ABB4    xor         edx,edx
 0070ABB6    mov         eax,dword ptr [ebx+0A6C];TFXADMenuFrame.miSndrVolMed:TMenuItem
 0070ABBC    call        TMenuItem.SetEnabled
 0070ABC1    xor         edx,edx
 0070ABC3    mov         eax,dword ptr [ebx+0A6C];TFXADMenuFrame.miSndrVolMed:TMenuItem
 0070ABC9    call        TMenuItem.SetVisible
 0070ABCE    xor         edx,edx
 0070ABD0    mov         eax,dword ptr [ebx+0A70];TFXADMenuFrame.miSndrVolHigh:TMenuItem
 0070ABD6    call        TMenuItem.SetEnabled
 0070ABDB    xor         edx,edx
 0070ABDD    mov         eax,dword ptr [ebx+0A70];TFXADMenuFrame.miSndrVolHigh:TMenuItem
 0070ABE3    call        TMenuItem.SetVisible
 0070ABE8    pop         ebx
 0070ABE9    ret
 0070ABEA    xor         edx,edx
 0070ABEC    mov         eax,dword ptr [ebx+940];TFXADMenuFrame.miSndrVol1:TMenuItem
 0070ABF2    call        TMenuItem.SetEnabled
 0070ABF7    xor         edx,edx
 0070ABF9    mov         eax,dword ptr [ebx+940];TFXADMenuFrame.miSndrVol1:TMenuItem
 0070ABFF    call        TMenuItem.SetVisible
 0070AC04    xor         edx,edx
 0070AC06    mov         eax,dword ptr [ebx+944];TFXADMenuFrame.miSndrVol2:TMenuItem
 0070AC0C    call        TMenuItem.SetEnabled
 0070AC11    xor         edx,edx
 0070AC13    mov         eax,dword ptr [ebx+944];TFXADMenuFrame.miSndrVol2:TMenuItem
 0070AC19    call        TMenuItem.SetVisible
 0070AC1E    xor         edx,edx
 0070AC20    mov         eax,dword ptr [ebx+948];TFXADMenuFrame.miSndrVol3:TMenuItem
 0070AC26    call        TMenuItem.SetEnabled
 0070AC2B    xor         edx,edx
 0070AC2D    mov         eax,dword ptr [ebx+948];TFXADMenuFrame.miSndrVol3:TMenuItem
 0070AC33    call        TMenuItem.SetVisible
 0070AC38    xor         edx,edx
 0070AC3A    mov         eax,dword ptr [ebx+94C];TFXADMenuFrame.miSndrVol4:TMenuItem
 0070AC40    call        TMenuItem.SetEnabled
 0070AC45    xor         edx,edx
 0070AC47    mov         eax,dword ptr [ebx+94C];TFXADMenuFrame.miSndrVol4:TMenuItem
 0070AC4D    call        TMenuItem.SetVisible
 0070AC52    xor         edx,edx
 0070AC54    mov         eax,dword ptr [ebx+950];TFXADMenuFrame.miSndrVol5:TMenuItem
 0070AC5A    call        TMenuItem.SetEnabled
 0070AC5F    xor         edx,edx
 0070AC61    mov         eax,dword ptr [ebx+950];TFXADMenuFrame.miSndrVol5:TMenuItem
 0070AC67    call        TMenuItem.SetVisible
 0070AC6C    xor         edx,edx
 0070AC6E    mov         eax,dword ptr [ebx+954];TFXADMenuFrame.miSndrVol6:TMenuItem
 0070AC74    call        TMenuItem.SetEnabled
 0070AC79    xor         edx,edx
 0070AC7B    mov         eax,dword ptr [ebx+954];TFXADMenuFrame.miSndrVol6:TMenuItem
 0070AC81    call        TMenuItem.SetVisible
 0070AC86    xor         edx,edx
 0070AC88    mov         eax,dword ptr [ebx+958];TFXADMenuFrame.miSndrVol7:TMenuItem
 0070AC8E    call        TMenuItem.SetEnabled
 0070AC93    xor         edx,edx
 0070AC95    mov         eax,dword ptr [ebx+958];TFXADMenuFrame.miSndrVol7:TMenuItem
 0070AC9B    call        TMenuItem.SetVisible
 0070ACA0    mov         dl,1
 0070ACA2    mov         eax,dword ptr [ebx+0A74];TFXADMenuFrame.miSndrVolSwitch:TMenuItem
 0070ACA8    call        TMenuItem.SetEnabled
 0070ACAD    mov         dl,1
 0070ACAF    mov         eax,dword ptr [ebx+0A74];TFXADMenuFrame.miSndrVolSwitch:TMenuItem
 0070ACB5    call        TMenuItem.SetVisible
 0070ACBA    mov         dl,1
 0070ACBC    mov         eax,dword ptr [ebx+0A68];TFXADMenuFrame.miSndrVolLow:TMenuItem
 0070ACC2    call        TMenuItem.SetEnabled
 0070ACC7    mov         dl,1
 0070ACC9    mov         eax,dword ptr [ebx+0A68];TFXADMenuFrame.miSndrVolLow:TMenuItem
 0070ACCF    call        TMenuItem.SetVisible
 0070ACD4    mov         dl,1
 0070ACD6    mov         eax,dword ptr [ebx+0A6C];TFXADMenuFrame.miSndrVolMed:TMenuItem
 0070ACDC    call        TMenuItem.SetEnabled
 0070ACE1    mov         dl,1
 0070ACE3    mov         eax,dword ptr [ebx+0A6C];TFXADMenuFrame.miSndrVolMed:TMenuItem
 0070ACE9    call        TMenuItem.SetVisible
 0070ACEE    mov         dl,1
 0070ACF0    mov         eax,dword ptr [ebx+0A70];TFXADMenuFrame.miSndrVolHigh:TMenuItem
 0070ACF6    call        TMenuItem.SetEnabled
 0070ACFB    mov         dl,1
 0070ACFD    mov         eax,dword ptr [ebx+0A70];TFXADMenuFrame.miSndrVolHigh:TMenuItem
 0070AD03    call        TMenuItem.SetVisible
 0070AD08    pop         ebx
 0070AD09    ret
*}
end;

//0070B128
procedure TFXColSelDlg.FormCreate(Sender:TObject);
begin
{*
 0070B128    push        ebp
 0070B129    mov         ebp,esp
 0070B12B    add         esp,0FFFFFFE8
 0070B12E    push        ebx
 0070B12F    xor         ecx,ecx
 0070B131    mov         dword ptr [ebp-4],ecx
 0070B134    mov         dword ptr [ebp-18],ecx
 0070B137    mov         ebx,eax
 0070B139    xor         eax,eax
 0070B13B    push        ebp
 0070B13C    push        70B1AA
 0070B141    push        dword ptr fs:[eax]
 0070B144    mov         dword ptr fs:[eax],esp
 0070B147    lea         eax,[ebp-4]
 0070B14A    push        eax
 0070B14B    mov         eax,70B1C4;'Column Selection'
 0070B150    mov         dword ptr [ebp-14],eax
 0070B153    mov         byte ptr [ebp-10],11
 0070B157    lea         edx,[ebp-18]
 0070B15A    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 0070B15F    mov         eax,dword ptr [eax]
 0070B161    call        005DDC74
 0070B166    mov         eax,dword ptr [ebp-18]
 0070B169    mov         dword ptr [ebp-0C],eax
 0070B16C    mov         byte ptr [ebp-8],11
 0070B170    lea         edx,[ebp-14]
 0070B173    mov         ecx,1
 0070B178    mov         eax,70B1F4;'%s (%s)'
 0070B17D    call        Format
 0070B182    mov         edx,dword ptr [ebp-4]
 0070B185    mov         eax,ebx
 0070B187    call        TControl.SetText
 0070B18C    xor         eax,eax
 0070B18E    pop         edx
 0070B18F    pop         ecx
 0070B190    pop         ecx
 0070B191    mov         dword ptr fs:[eax],edx
 0070B194    push        70B1B1
 0070B199    lea         eax,[ebp-18]
 0070B19C    call        @UStrClr
 0070B1A1    lea         eax,[ebp-4]
 0070B1A4    call        @UStrClr
 0070B1A9    ret
>0070B1AA    jmp         @HandleFinally
>0070B1AF    jmp         0070B199
 0070B1B1    pop         ebx
 0070B1B2    mov         esp,ebp
 0070B1B4    pop         ebp
 0070B1B5    ret
*}
end;

//0070B204
procedure TFXColSelDlg.Translate(IniFile:TFXIniFile);
begin
{*
 0070B204    push        ebp
 0070B205    mov         ebp,esp
 0070B207    mov         ecx,0F
 0070B20C    push        0
 0070B20E    push        0
 0070B210    dec         ecx
>0070B211    jne         0070B20C
 0070B213    push        ecx
 0070B214    push        ebx
 0070B215    push        esi
 0070B216    push        edi
 0070B217    mov         esi,edx
 0070B219    mov         ebx,eax
 0070B21B    xor         eax,eax
 0070B21D    push        ebp
 0070B21E    push        70B7F9
 0070B223    push        dword ptr fs:[eax]
 0070B226    mov         dword ptr fs:[eax],esp
 0070B229    push        70B814;'Column Selection'
 0070B22E    lea         eax,[ebp-8]
 0070B231    push        eax
 0070B232    mov         ecx,70B844;'sColSelDlg'
 0070B237    mov         edx,70B868;'ColSelectDlg'
 0070B23C    mov         eax,esi
 0070B23E    mov         edi,dword ptr [eax]
 0070B240    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B243    push        dword ptr [ebp-8]
 0070B246    push        70B890;' ('
 0070B24B    lea         edx,[ebp-0C]
 0070B24E    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 0070B253    mov         eax,dword ptr [eax]
 0070B255    call        005DDC74
 0070B25A    push        dword ptr [ebp-0C]
 0070B25D    push        70B8A4;')'
 0070B262    lea         eax,[ebp-4]
 0070B265    mov         edx,4
 0070B26A    call        @UStrCatN
 0070B26F    mov         edx,dword ptr [ebp-4]
 0070B272    mov         eax,ebx
 0070B274    call        TControl.SetText
 0070B279    push        70B8B4;'OK'
 0070B27E    lea         eax,[ebp-10]
 0070B281    push        eax
 0070B282    mov         ecx,70B8C8;'sOKBtn'
 0070B287    mov         edx,70B8E4;'CommonTexts'
 0070B28C    mov         eax,esi
 0070B28E    mov         edi,dword ptr [eax]
 0070B290    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B293    mov         edx,dword ptr [ebp-10]
 0070B296    mov         eax,dword ptr [ebx+3C4];TFXColSelDlg.btnOK:TBitBtn
 0070B29C    call        TControl.SetText
 0070B2A1    push        70B908;'Cancel'
 0070B2A6    lea         eax,[ebp-14]
 0070B2A9    push        eax
 0070B2AA    mov         ecx,70B924;'sCancelBtn'
 0070B2AF    mov         edx,70B8E4;'CommonTexts'
 0070B2B4    mov         eax,esi
 0070B2B6    mov         edi,dword ptr [eax]
 0070B2B8    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B2BB    mov         edx,dword ptr [ebp-14]
 0070B2BE    mov         eax,dword ptr [ebx+3C8];TFXColSelDlg.btnCancel:TBitBtn
 0070B2C4    call        TControl.SetText
 0070B2C9    push        70B948;'Select all'
 0070B2CE    lea         eax,[ebp-18]
 0070B2D1    push        eax
 0070B2D2    mov         ecx,70B96C;'sSelectAllBtn'
 0070B2D7    mov         edx,70B8E4;'CommonTexts'
 0070B2DC    mov         eax,esi
 0070B2DE    mov         edi,dword ptr [eax]
 0070B2E0    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B2E3    mov         edx,dword ptr [ebp-18]
 0070B2E6    mov         eax,dword ptr [ebx+3CC];TFXColSelDlg.btnSelectAll:TBitBtn
 0070B2EC    call        TControl.SetText
 0070B2F1    push        70B994;'Clear all'
 0070B2F6    lea         eax,[ebp-1C]
 0070B2F9    push        eax
 0070B2FA    mov         ecx,70B9B4;'sClearAllBtn'
 0070B2FF    mov         edx,70B8E4;'CommonTexts'
 0070B304    mov         eax,esi
 0070B306    mov         edi,dword ptr [eax]
 0070B308    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B30B    mov         edx,dword ptr [ebp-1C]
 0070B30E    mov         eax,dword ptr [ebx+3D0];TFXColSelDlg.btnClearAll:TBitBtn
 0070B314    call        TControl.SetText
 0070B319    push        70B9DC;'Address'
 0070B31E    lea         eax,[ebp-20]
 0070B321    push        eax
 0070B322    mov         ecx,70B9F8;'sColSelAddress'
 0070B327    mov         edx,70B868;'ColSelectDlg'
 0070B32C    mov         eax,esi
 0070B32E    mov         edi,dword ptr [eax]
 0070B330    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B333    mov         ecx,dword ptr [ebp-20]
 0070B336    mov         eax,dword ptr [ebx+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070B33C    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0070B342    xor         edx,edx
 0070B344    mov         edi,dword ptr [eax]
 0070B346    call        dword ptr [edi+20];TStrings.Put
 0070B349    push        70BA24;'Detection Zone'
 0070B34E    lea         eax,[ebp-24]
 0070B351    push        eax
 0070B352    mov         ecx,70BA50;'sColSelDetectionZone'
 0070B357    mov         edx,70B868;'ColSelectDlg'
 0070B35C    mov         eax,esi
 0070B35E    mov         edi,dword ptr [eax]
 0070B360    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B363    mov         ecx,dword ptr [ebp-24]
 0070B366    mov         eax,dword ptr [ebx+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070B36C    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0070B372    mov         edx,1
 0070B377    mov         edi,dword ptr [eax]
 0070B379    call        dword ptr [edi+20];TStrings.Put
 0070B37C    push        70BA88;'Control A'
 0070B381    lea         eax,[ebp-28]
 0070B384    push        eax
 0070B385    mov         ecx,70BAA8;'sColSelControlA'
 0070B38A    mov         edx,70B868;'ColSelectDlg'
 0070B38F    mov         eax,esi
 0070B391    mov         edi,dword ptr [eax]
 0070B393    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B396    mov         ecx,dword ptr [ebp-28]
 0070B399    mov         eax,dword ptr [ebx+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070B39F    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0070B3A5    mov         edx,2
 0070B3AA    mov         edi,dword ptr [eax]
 0070B3AC    call        dword ptr [edi+20];TStrings.Put
 0070B3AF    push        70BAD4;'Control B'
 0070B3B4    lea         eax,[ebp-2C]
 0070B3B7    push        eax
 0070B3B8    mov         ecx,70BAF4;'sColSelControlB'
 0070B3BD    mov         edx,70B868;'ColSelectDlg'
 0070B3C2    mov         eax,esi
 0070B3C4    mov         edi,dword ptr [eax]
 0070B3C6    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B3C9    mov         ecx,dword ptr [ebp-2C]
 0070B3CC    mov         eax,dword ptr [ebx+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070B3D2    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0070B3D8    mov         edx,3
 0070B3DD    mov         edi,dword ptr [eax]
 0070B3DF    call        dword ptr [edi+20];TStrings.Put
 0070B3E2    push        70BB20;'Control B2'
 0070B3E7    lea         eax,[ebp-30]
 0070B3EA    push        eax
 0070B3EB    mov         ecx,70BB44;'sColSelControlC'
 0070B3F0    mov         edx,70B868;'ColSelectDlg'
 0070B3F5    mov         eax,esi
 0070B3F7    mov         edi,dword ptr [eax]
 0070B3F9    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B3FC    mov         ecx,dword ptr [ebp-30]
 0070B3FF    mov         eax,dword ptr [ebx+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070B405    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0070B40B    mov         edx,4
 0070B410    mov         edi,dword ptr [eax]
 0070B412    call        dword ptr [edi+20];TStrings.Put
 0070B415    push        70BB70;'Type'
 0070B41A    lea         eax,[ebp-34]
 0070B41D    push        eax
 0070B41E    mov         ecx,70BB88;'sColSelType'
 0070B423    mov         edx,70B868;'ColSelectDlg'
 0070B428    mov         eax,esi
 0070B42A    mov         edi,dword ptr [eax]
 0070B42C    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B42F    mov         ecx,dword ptr [ebp-34]
 0070B432    mov         eax,dword ptr [ebx+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070B438    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0070B43E    mov         edx,5
 0070B443    mov         edi,dword ptr [eax]
 0070B445    call        dword ptr [edi+20];TStrings.Put
 0070B448    push        70BBAC;'Input function'
 0070B44D    lea         eax,[ebp-38]
 0070B450    push        eax
 0070B451    mov         ecx,70BBD8;'sColSelInput'
 0070B456    mov         edx,70B868;'ColSelectDlg'
 0070B45B    mov         eax,esi
 0070B45D    mov         edi,dword ptr [eax]
 0070B45F    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B462    mov         ecx,dword ptr [ebp-38]
 0070B465    mov         eax,dword ptr [ebx+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070B46B    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0070B471    mov         edx,6
 0070B476    mov         edi,dword ptr [eax]
 0070B478    call        dword ptr [edi+20];TStrings.Put
 0070B47B    push        70BC00;'Inp. Short circuit monitoring'
 0070B480    lea         eax,[ebp-3C]
 0070B483    push        eax
 0070B484    mov         ecx,70BC48;'sColSelInputScMonitored'
 0070B489    mov         edx,70B868;'ColSelectDlg'
 0070B48E    mov         eax,esi
 0070B490    mov         edi,dword ptr [eax]
 0070B492    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B495    mov         ecx,dword ptr [ebp-3C]
 0070B498    mov         eax,dword ptr [ebx+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070B49E    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0070B4A4    mov         edx,7
 0070B4A9    mov         edi,dword ptr [eax]
 0070B4AB    call        dword ptr [edi+20];TStrings.Put
 0070B4AE    push        70BC84;'Environment'
 0070B4B3    lea         eax,[ebp-40]
 0070B4B6    push        eax
 0070B4B7    mov         ecx,70BCA8;'sColSelEnvironment'
 0070B4BC    mov         edx,70B868;'ColSelectDlg'
 0070B4C1    mov         eax,esi
 0070B4C3    mov         edi,dword ptr [eax]
 0070B4C5    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B4C8    mov         ecx,dword ptr [ebp-40]
 0070B4CB    mov         eax,dword ptr [ebx+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070B4D1    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0070B4D7    mov         edx,8
 0070B4DC    mov         edi,dword ptr [eax]
 0070B4DE    call        dword ptr [edi+20];TStrings.Put
 0070B4E1    push        70BCDC;'Fire alarm threshold'
 0070B4E6    lea         eax,[ebp-44]
 0070B4E9    push        eax
 0070B4EA    mov         ecx,70BD14;'sColSelFireAlarmThreshold'
 0070B4EF    mov         edx,70B868;'ColSelectDlg'
 0070B4F4    mov         eax,esi
 0070B4F6    mov         edi,dword ptr [eax]
 0070B4F8    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B4FB    mov         ecx,dword ptr [ebp-44]
 0070B4FE    mov         eax,dword ptr [ebx+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070B504    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0070B50A    mov         edx,9
 0070B50F    mov         edi,dword ptr [eax]
 0070B511    call        dword ptr [edi+20];TStrings.Put
 0070B514    push        70BD54;'Prealarm threshold'
 0070B519    lea         eax,[ebp-48]
 0070B51C    push        eax
 0070B51D    mov         ecx,70BD88;'sColSelPrewarningThreshold'
 0070B522    mov         edx,70B868;'ColSelectDlg'
 0070B527    mov         eax,esi
 0070B529    mov         edi,dword ptr [eax]
 0070B52B    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B52E    mov         ecx,dword ptr [ebp-48]
 0070B531    mov         eax,dword ptr [ebx+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070B537    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0070B53D    mov         edx,0A
 0070B542    mov         edi,dword ptr [eax]
 0070B544    call        dword ptr [edi+20];TStrings.Put
 0070B547    push        70BDCC;'Fire threshold in daymode'
 0070B54C    lea         eax,[ebp-4C]
 0070B54F    push        eax
 0070B550    mov         ecx,70BE0C;'sColSelFireThresholdInDaymode'
 0070B555    mov         edx,70B868;'ColSelectDlg'
 0070B55A    mov         eax,esi
 0070B55C    mov         edi,dword ptr [eax]
 0070B55E    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B561    mov         ecx,dword ptr [ebp-4C]
 0070B564    mov         eax,dword ptr [ebx+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070B56A    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0070B570    mov         edx,0B
 0070B575    mov         edi,dword ptr [eax]
 0070B577    call        dword ptr [edi+20];TStrings.Put
 0070B57A    push        70BE54;'Preal. threshold in daymode'
 0070B57F    lea         eax,[ebp-50]
 0070B582    push        eax
 0070B583    mov         ecx,70BE98;'sColSelPrewThresholdInDaymode'
 0070B588    mov         edx,70B868;'ColSelectDlg'
 0070B58D    mov         eax,esi
 0070B58F    mov         edi,dword ptr [eax]
 0070B591    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B594    mov         ecx,dword ptr [ebp-50]
 0070B597    mov         eax,dword ptr [ebx+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070B59D    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0070B5A3    mov         edx,0C
 0070B5A8    mov         edi,dword ptr [eax]
 0070B5AA    call        dword ptr [edi+20];TStrings.Put
 0070B5AD    push        70BEE0;'Alarm mode'
 0070B5B2    lea         eax,[ebp-54]
 0070B5B5    push        eax
 0070B5B6    mov         ecx,70BF04;'sColSelAlarmMode'
 0070B5BB    mov         edx,70B868;'ColSelectDlg'
 0070B5C0    mov         eax,esi
 0070B5C2    mov         edi,dword ptr [eax]
 0070B5C4    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B5C7    mov         ecx,dword ptr [ebp-54]
 0070B5CA    mov         eax,dword ptr [ebx+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070B5D0    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0070B5D6    mov         edx,0D
 0070B5DB    mov         edi,dword ptr [eax]
 0070B5DD    call        dword ptr [edi+20];TStrings.Put
 0070B5E0    push        70BF34;'Sounder volume'
 0070B5E5    lea         eax,[ebp-58]
 0070B5E8    push        eax
 0070B5E9    mov         ecx,70BF60;'sColSelSounderVolume'
 0070B5EE    mov         edx,70B868;'ColSelectDlg'
 0070B5F3    mov         eax,esi
 0070B5F5    mov         edi,dword ptr [eax]
 0070B5F7    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B5FA    mov         ecx,dword ptr [ebp-58]
 0070B5FD    mov         eax,dword ptr [ebx+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070B603    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0070B609    mov         edx,0E
 0070B60E    mov         edi,dword ptr [eax]
 0070B610    call        dword ptr [edi+20];TStrings.Put
 0070B613    push        70BF98;'Input Delay'
 0070B618    lea         eax,[ebp-5C]
 0070B61B    push        eax
 0070B61C    mov         ecx,70BFBC;'sColSelInputDelay'
 0070B621    mov         edx,70B868;'ColSelectDlg'
 0070B626    mov         eax,esi
 0070B628    mov         edi,dword ptr [eax]
 0070B62A    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B62D    mov         ecx,dword ptr [ebp-5C]
 0070B630    mov         eax,dword ptr [ebx+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070B636    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0070B63C    mov         edx,0F
 0070B641    mov         edi,dword ptr [eax]
 0070B643    call        dword ptr [edi+20];TStrings.Put
 0070B646    push        70BFEC;'Input Filter'
 0070B64B    lea         eax,[ebp-60]
 0070B64E    push        eax
 0070B64F    mov         ecx,70C014;'sColSelInputFilter'
 0070B654    mov         edx,70B868;'ColSelectDlg'
 0070B659    mov         eax,esi
 0070B65B    mov         edi,dword ptr [eax]
 0070B65D    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B660    mov         ecx,dword ptr [ebp-60]
 0070B663    mov         eax,dword ptr [ebx+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070B669    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0070B66F    mov         edx,10
 0070B674    mov         edi,dword ptr [eax]
 0070B676    call        dword ptr [edi+20];TStrings.Put
 0070B679    push        70C048;'Day Mode effect'
 0070B67E    lea         eax,[ebp-64]
 0070B681    push        eax
 0070B682    mov         ecx,70C074;'sColSelDayModeEffect'
 0070B687    mov         edx,70B868;'ColSelectDlg'
 0070B68C    mov         eax,esi
 0070B68E    mov         edi,dword ptr [eax]
 0070B690    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B693    mov         ecx,dword ptr [ebp-64]
 0070B696    mov         eax,dword ptr [ebx+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070B69C    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0070B6A2    mov         edx,11
 0070B6A7    mov         edi,dword ptr [eax]
 0070B6A9    call        dword ptr [edi+20];TStrings.Put
 0070B6AC    push        70C0AC;'Zone Disablement disables'
 0070B6B1    lea         eax,[ebp-68]
 0070B6B4    push        eax
 0070B6B5    mov         ecx,70C0EC;'sColSelZoneDisablementDisables'
 0070B6BA    mov         edx,70B868;'ColSelectDlg'
 0070B6BF    mov         eax,esi
 0070B6C1    mov         edi,dword ptr [eax]
 0070B6C3    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B6C6    mov         ecx,dword ptr [ebp-68]
 0070B6C9    mov         eax,dword ptr [ebx+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070B6CF    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0070B6D5    mov         edx,12
 0070B6DA    mov         edi,dword ptr [eax]
 0070B6DC    call        dword ptr [edi+20];TStrings.Put
 0070B6DF    push        70C138;'Control Groups'
 0070B6E4    lea         eax,[ebp-6C]
 0070B6E7    push        eax
 0070B6E8    mov         ecx,70C164;'sColSelControlGroups'
 0070B6ED    mov         edx,70B868;'ColSelectDlg'
 0070B6F2    mov         eax,esi
 0070B6F4    mov         edi,dword ptr [eax]
 0070B6F6    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B6F9    mov         ecx,dword ptr [ebp-6C]
 0070B6FC    mov         eax,dword ptr [ebx+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070B702    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0070B708    mov         edx,13
 0070B70D    mov         edi,dword ptr [eax]
 0070B70F    call        dword ptr [edi+20];TStrings.Put
 0070B712    push        70C19C;'Prim. Output function'
 0070B717    lea         eax,[ebp-70]
 0070B71A    push        eax
 0070B71B    mov         ecx,70C1D4;'sColSelOutput'
 0070B720    mov         edx,70B868;'ColSelectDlg'
 0070B725    mov         eax,esi
 0070B727    mov         edi,dword ptr [eax]
 0070B729    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B72C    mov         ecx,dword ptr [ebp-70]
 0070B72F    mov         eax,dword ptr [ebx+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070B735    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0070B73B    mov         edx,14
 0070B740    mov         edi,dword ptr [eax]
 0070B742    call        dword ptr [edi+20];TStrings.Put
 0070B745    push        70C1FC;'Sec. Output function'
 0070B74A    lea         eax,[ebp-74]
 0070B74D    push        eax
 0070B74E    mov         ecx,70C234;'sColSelSecOutput'
 0070B753    mov         edx,70B868;'ColSelectDlg'
 0070B758    mov         eax,esi
 0070B75A    mov         edi,dword ptr [eax]
 0070B75C    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B75F    mov         ecx,dword ptr [ebp-74]
 0070B762    mov         eax,dword ptr [ebx+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070B768    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0070B76E    mov         edx,15
 0070B773    mov         edi,dword ptr [eax]
 0070B775    call        dword ptr [edi+20];TStrings.Put
 0070B778    push        70C264;'External OR Output function'
 0070B77D    lea         eax,[ebp-78]
 0070B780    push        eax
 0070B781    mov         ecx,70C2A8;'sExternalOred'
 0070B786    mov         edx,70B868;'ColSelectDlg'
 0070B78B    mov         eax,esi
 0070B78D    mov         edi,dword ptr [eax]
 0070B78F    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070B792    mov         ecx,dword ptr [ebp-78]
 0070B795    mov         eax,dword ptr [ebx+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070B79B    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0070B7A1    mov         edx,16
 0070B7A6    mov         edi,dword ptr [eax]
 0070B7A8    call        dword ptr [edi+20];TStrings.Put
 0070B7AB    push        70C2D0;'Text'
 0070B7B0    lea         eax,[ebp-7C]
 0070B7B3    push        eax
 0070B7B4    mov         ecx,70C2E8;'sColSelText'
 0070B7B9    mov         edx,70B868;'ColSelectDlg'
 0070B7BE    mov         eax,esi
 0070B7C0    mov         esi,dword ptr [eax]
 0070B7C2    call        dword ptr [esi+4];TFXIniFile.ReadString
 0070B7C5    mov         ecx,dword ptr [ebp-7C]
 0070B7C8    mov         eax,dword ptr [ebx+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070B7CE    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0070B7D4    mov         edx,17
 0070B7D9    mov         ebx,dword ptr [eax]
 0070B7DB    call        dword ptr [ebx+20];TStrings.Put
 0070B7DE    xor         eax,eax
 0070B7E0    pop         edx
 0070B7E1    pop         ecx
 0070B7E2    pop         ecx
 0070B7E3    mov         dword ptr fs:[eax],edx
 0070B7E6    push        70B800
 0070B7EB    lea         eax,[ebp-7C]
 0070B7EE    mov         edx,1F
 0070B7F3    call        @UStrArrayClr
 0070B7F8    ret
>0070B7F9    jmp         @HandleFinally
>0070B7FE    jmp         0070B7EB
 0070B800    pop         edi
 0070B801    pop         esi
 0070B802    pop         ebx
 0070B803    mov         esp,ebp
 0070B805    pop         ebp
 0070B806    ret
*}
end;

//0070C300
procedure TFXColSelDlg.btnSelectAllClick(Sender:TObject);
begin
{*
 0070C300    push        ebx
 0070C301    push        esi
 0070C302    push        edi
 0070C303    push        ecx
 0070C304    mov         esi,eax
 0070C306    mov         eax,dword ptr [esi+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070C30C    mov         edx,dword ptr [eax]
 0070C30E    call        dword ptr [edx+124];TCustomListBox.GetCount
 0070C314    sub         eax,1
>0070C317    jno         0070C31E
 0070C319    call        @IntOver
 0070C31E    cmp         eax,0FF
>0070C323    jbe         0070C32A
 0070C325    call        @BoundErr
 0070C32A    test        al,al
>0070C32C    jb          0070C35D
 0070C32E    inc         eax
 0070C32F    mov         byte ptr [esp],al
 0070C332    mov         bl,0
 0070C334    movzx       edi,bl
 0070C337    mov         edx,edi
 0070C339    mov         eax,dword ptr [esi+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070C33F    call        TCheckListBox.GetItemEnabled
 0070C344    test        al,al
>0070C346    je          0070C357
 0070C348    mov         edx,edi
 0070C34A    mov         eax,dword ptr [esi+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070C350    mov         cl,1
 0070C352    call        TCheckListBox.SetState
 0070C357    inc         ebx
 0070C358    dec         byte ptr [esp]
>0070C35B    jne         0070C334
 0070C35D    pop         edx
 0070C35E    pop         edi
 0070C35F    pop         esi
 0070C360    pop         ebx
 0070C361    ret
*}
end;

//0070C364
procedure TFXColSelDlg.btnClearAllClick(Sender:TObject);
begin
{*
 0070C364    push        ebx
 0070C365    push        esi
 0070C366    push        ecx
 0070C367    mov         esi,eax
 0070C369    mov         eax,dword ptr [esi+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070C36F    mov         edx,dword ptr [eax]
 0070C371    call        dword ptr [edx+124];TCustomListBox.GetCount
 0070C377    mov         ebx,eax
 0070C379    sub         ebx,1
>0070C37C    jno         0070C383
 0070C37E    call        @IntOver
 0070C383    cmp         ebx,0FF
>0070C389    jbe         0070C390
 0070C38B    call        @BoundErr
 0070C390    test        bl,bl
>0070C392    jb          0070C3B1
 0070C394    inc         ebx
 0070C395    mov         byte ptr [esp],0
 0070C399    movzx       edx,byte ptr [esp]
 0070C39D    xor         ecx,ecx
 0070C39F    mov         eax,dword ptr [esi+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070C3A5    call        TCheckListBox.SetState
 0070C3AA    inc         byte ptr [esp]
 0070C3AD    dec         bl
>0070C3AF    jne         0070C399
 0070C3B1    mov         cl,1
 0070C3B3    xor         edx,edx
 0070C3B5    mov         eax,dword ptr [esi+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070C3BB    call        TCheckListBox.SetState
 0070C3C0    mov         cl,1
 0070C3C2    mov         edx,1
 0070C3C7    mov         eax,dword ptr [esi+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070C3CD    call        TCheckListBox.SetState
 0070C3D2    mov         cl,1
 0070C3D4    mov         edx,4
 0070C3D9    mov         eax,dword ptr [esi+3C0];TFXColSelDlg.lbColSelect:TCheckListBox
 0070C3DF    call        TCheckListBox.SetState
 0070C3E4    pop         edx
 0070C3E5    pop         esi
 0070C3E6    pop         ebx
 0070C3E7    ret
*}
end;

//0070DE64
procedure TAPFillDlg.Translate(IniFile:TFXIniFile);
begin
{*
 0070DE64    push        ebp
 0070DE65    mov         ebp,esp
 0070DE67    mov         ecx,17
 0070DE6C    push        0
 0070DE6E    push        0
 0070DE70    dec         ecx
>0070DE71    jne         0070DE6C
 0070DE73    push        ebx
 0070DE74    push        esi
 0070DE75    push        edi
 0070DE76    mov         ebx,edx
 0070DE78    mov         esi,eax
 0070DE7A    xor         eax,eax
 0070DE7C    push        ebp
 0070DE7D    push        70E5FB
 0070DE82    push        dword ptr fs:[eax]
 0070DE85    mov         dword ptr fs:[eax],esp
 0070DE88    push        70E618;'Address range entry'
 0070DE8D    lea         eax,[ebp-8]
 0070DE90    push        eax
 0070DE91    mov         ecx,70E64C;'sRangeFill'
 0070DE96    mov         edx,70E670;'ADFillDlg'
 0070DE9B    mov         eax,ebx
 0070DE9D    mov         edi,dword ptr [eax]
 0070DE9F    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070DEA2    push        dword ptr [ebp-8]
 0070DEA5    push        70E690;' ('
 0070DEAA    lea         edx,[ebp-0C]
 0070DEAD    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 0070DEB2    mov         eax,dword ptr [eax]
 0070DEB4    call        005DDC74
 0070DEB9    push        dword ptr [ebp-0C]
 0070DEBC    push        70E6A4;')'
 0070DEC1    lea         eax,[ebp-4]
 0070DEC4    mov         edx,4
 0070DEC9    call        @UStrCatN
 0070DECE    mov         edx,dword ptr [ebp-4]
 0070DED1    mov         eax,esi
 0070DED3    call        TControl.SetText
 0070DED8    push        70E6B4;'OK'
 0070DEDD    lea         eax,[ebp-10]
 0070DEE0    push        eax
 0070DEE1    mov         ecx,70E6C8;'sOKBtn'
 0070DEE6    mov         edx,70E6E4;'CommonTexts'
 0070DEEB    mov         eax,ebx
 0070DEED    mov         edi,dword ptr [eax]
 0070DEEF    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070DEF2    mov         edx,dword ptr [ebp-10]
 0070DEF5    mov         eax,dword ptr [esi+3C0];TAPFillDlg.btnOK:TBitBtn
 0070DEFB    call        TControl.SetText
 0070DF00    push        70E708;'Cancel'
 0070DF05    lea         eax,[ebp-14]
 0070DF08    push        eax
 0070DF09    mov         ecx,70E724;'sCancelBtn'
 0070DF0E    mov         edx,70E6E4;'CommonTexts'
 0070DF13    mov         eax,ebx
 0070DF15    mov         edi,dword ptr [eax]
 0070DF17    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070DF1A    mov         edx,dword ptr [ebp-14]
 0070DF1D    mov         eax,dword ptr [esi+3C4];TAPFillDlg.btnCancel:TBitBtn
 0070DF23    call        TControl.SetText
 0070DF28    push        70E748;'First address in range'
 0070DF2D    lea         eax,[ebp-18]
 0070DF30    push        eax
 0070DF31    mov         ecx,70E784;'slbFirstAddress'
 0070DF36    mov         edx,70E670;'ADFillDlg'
 0070DF3B    mov         eax,ebx
 0070DF3D    mov         edi,dword ptr [eax]
 0070DF3F    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070DF42    mov         edx,dword ptr [ebp-18]
 0070DF45    mov         eax,dword ptr [esi+3C8];TAPFillDlg.lbFirstAddress:TLabel
 0070DF4B    call        TControl.SetText
 0070DF50    push        70E7B0;'Last address in range'
 0070DF55    lea         eax,[ebp-1C]
 0070DF58    push        eax
 0070DF59    mov         ecx,70E7E8;'slbLastAddress'
 0070DF5E    mov         edx,70E670;'ADFillDlg'
 0070DF63    mov         eax,ebx
 0070DF65    mov         edi,dword ptr [eax]
 0070DF67    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070DF6A    mov         edx,dword ptr [ebp-1C]
 0070DF6D    mov         eax,dword ptr [esi+3CC];TAPFillDlg.lbLastaddress:TLabel
 0070DF73    call        TControl.SetText
 0070DF78    push        70E814;'Number of addresses, matching selection criteria: '
 0070DF7D    lea         eax,[ebp-20]
 0070DF80    push        eax
 0070DF81    mov         ecx,70E888;'slbNumberOfMatching'
 0070DF86    mov         edx,70E670;'ADFillDlg'
 0070DF8B    mov         eax,ebx
 0070DF8D    mov         edi,dword ptr [eax]
 0070DF8F    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070DF92    mov         edx,dword ptr [ebp-20]
 0070DF95    mov         eax,7C2F9C;^'Number of addresses, matching selection criteria: '
 0070DF9A    call        @UStrAsg
 0070DF9F    mov         edx,dword ptr ds:[7C2F9C];^'Number of addresses, matching selection criteria: '
 0070DFA5    mov         eax,dword ptr [esi+3D0];TAPFillDlg.lbNumberOfMatching:TLabel
 0070DFAB    call        TControl.SetText
 0070DFB0    push        70E8BC;'Reset'
 0070DFB5    lea         eax,[ebp-24]
 0070DFB8    push        eax
 0070DFB9    mov         ecx,70E8D4;'sbtnResetCol1'
 0070DFBE    mov         edx,70E670;'ADFillDlg'
 0070DFC3    mov         eax,ebx
 0070DFC5    mov         edi,dword ptr [eax]
 0070DFC7    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070DFCA    mov         edx,dword ptr [ebp-24]
 0070DFCD    mov         eax,dword ptr [esi+3E8];TAPFillDlg.btnResetCol1:TButton
 0070DFD3    call        TControl.SetText
 0070DFD8    push        70E8BC;'Reset'
 0070DFDD    lea         eax,[ebp-28]
 0070DFE0    push        eax
 0070DFE1    mov         ecx,70E8FC;'sbtnResetCol2'
 0070DFE6    mov         edx,70E670;'ADFillDlg'
 0070DFEB    mov         eax,ebx
 0070DFED    mov         edi,dword ptr [eax]
 0070DFEF    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070DFF2    mov         edx,dword ptr [ebp-28]
 0070DFF5    mov         eax,dword ptr [esi+3EC];TAPFillDlg.btnResetCol2:TButton
 0070DFFB    call        TControl.SetText
 0070E000    push        70E924;'Don''t care'
 0070E005    lea         eax,[ebp-2C]
 0070E008    push        eax
 0070E009    mov         ecx,70E948;'sDontCare'
 0070E00E    mov         edx,70E670;'ADFillDlg'
 0070E013    mov         eax,ebx
 0070E015    mov         edi,dword ptr [eax]
 0070E017    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E01A    mov         edx,dword ptr [ebp-2C]
 0070E01D    mov         eax,7C2F94;^'Don''t care'
 0070E022    call        @UStrAsg
 0070E027    push        70E968;'Don''t change'
 0070E02C    lea         eax,[ebp-30]
 0070E02F    push        eax
 0070E030    mov         ecx,70E990;'sDontChange'
 0070E035    mov         edx,70E670;'ADFillDlg'
 0070E03A    mov         eax,ebx
 0070E03C    mov         edi,dword ptr [eax]
 0070E03E    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E041    mov         edx,dword ptr [ebp-30]
 0070E044    mov         eax,7C2F98;^'Don''t change'
 0070E049    call        @UStrAsg
 0070E04E    push        70E9B4;'Lower address range (%.3d...%.3d)'
 0070E053    lea         eax,[ebp-34]
 0070E056    push        eax
 0070E057    mov         ecx,70EA04;'sRangeSelectLow'
 0070E05C    mov         edx,70E670;'ADFillDlg'
 0070E061    mov         eax,ebx
 0070E063    mov         edi,dword ptr [eax]
 0070E065    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E068    mov         edx,dword ptr [ebp-34]
 0070E06B    mov         eax,7C2F0C;^'Lower address range (%.3d...%.3d)'
 0070E070    call        @UStrAsg
 0070E075    push        70EA30;'Higher address range (%.3d...%.3d)'
 0070E07A    lea         eax,[ebp-38]
 0070E07D    push        eax
 0070E07E    mov         ecx,70EA84;'sRangeSelectHigh'
 0070E083    mov         edx,70E670;'ADFillDlg'
 0070E088    mov         eax,ebx
 0070E08A    mov         edi,dword ptr [eax]
 0070E08C    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E08F    mov         edx,dword ptr [ebp-38]
 0070E092    mov         eax,7C2F10;^'Higher address range (%.3d...%.3d)'
 0070E097    call        @UStrAsg
 0070E09C    push        70EAB4;'Property'
 0070E0A1    lea         eax,[ebp-3C]
 0070E0A4    push        eax
 0070E0A5    mov         ecx,70EAD4;'sProperty'
 0070E0AA    mov         edx,70E670;'ADFillDlg'
 0070E0AF    mov         eax,ebx
 0070E0B1    mov         edi,dword ptr [eax]
 0070E0B3    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E0B6    mov         edx,dword ptr [ebp-3C]
 0070E0B9    mov         eax,7C2F14;^'Property'
 0070E0BE    call        @UStrAsg
 0070E0C3    push        70EAF4;'Selection criteria'
 0070E0C8    lea         eax,[ebp-40]
 0070E0CB    push        eax
 0070E0CC    mov         ecx,70EB28;'sSelection'
 0070E0D1    mov         edx,70E670;'ADFillDlg'
 0070E0D6    mov         eax,ebx
 0070E0D8    mov         edi,dword ptr [eax]
 0070E0DA    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E0DD    mov         edx,dword ptr [ebp-40]
 0070E0E0    mov         eax,7C2F18;^'Selection criteria'
 0070E0E5    call        @UStrAsg
 0070E0EA    push        70EB4C;'New value'
 0070E0EF    lea         eax,[ebp-44]
 0070E0F2    push        eax
 0070E0F3    mov         ecx,70EB6C;'sNewValue'
 0070E0F8    mov         edx,70E670;'ADFillDlg'
 0070E0FD    mov         eax,ebx
 0070E0FF    mov         edi,dword ptr [eax]
 0070E101    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E104    mov         edx,dword ptr [ebp-44]
 0070E107    mov         eax,7C2F1C;^'New value'
 0070E10C    call        @UStrAsg
 0070E111    push        70EB8C;'Type of device'
 0070E116    lea         eax,[ebp-48]
 0070E119    push        eax
 0070E11A    mov         ecx,70EBB8;'sTypeOfDevice'
 0070E11F    mov         edx,70E670;'ADFillDlg'
 0070E124    mov         eax,ebx
 0070E126    mov         edi,dword ptr [eax]
 0070E128    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E12B    mov         edx,dword ptr [ebp-48]
 0070E12E    mov         eax,7C2F20;^'Type of device'
 0070E133    call        @UStrAsg
 0070E138    push        70EBE0;'Input function'
 0070E13D    lea         eax,[ebp-4C]
 0070E140    push        eax
 0070E141    mov         ecx,70EC0C;'sInputFunction'
 0070E146    mov         edx,70E670;'ADFillDlg'
 0070E14B    mov         eax,ebx
 0070E14D    mov         edi,dword ptr [eax]
 0070E14F    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E152    mov         edx,dword ptr [ebp-4C]
 0070E155    mov         eax,7C2F24;^'Input function'
 0070E15A    call        @UStrAsg
 0070E15F    push        70EC38;'Inp. Short circ. monitoring'
 0070E164    lea         eax,[ebp-50]
 0070E167    push        eax
 0070E168    mov         ecx,70EC7C;'sInputIsScMonitored'
 0070E16D    mov         edx,70E670;'ADFillDlg'
 0070E172    mov         eax,ebx
 0070E174    mov         edi,dword ptr [eax]
 0070E176    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E179    mov         edx,dword ptr [ebp-50]
 0070E17C    mov         eax,7C2F28;^'Inp. Short circ. monitoring'
 0070E181    call        @UStrAsg
 0070E186    push        70ECB0;'Detection zone'
 0070E18B    lea         eax,[ebp-54]
 0070E18E    push        eax
 0070E18F    mov         ecx,70ECDC;'sDetectionZone'
 0070E194    mov         edx,70E670;'ADFillDlg'
 0070E199    mov         eax,ebx
 0070E19B    mov         edi,dword ptr [eax]
 0070E19D    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E1A0    mov         edx,dword ptr [ebp-54]
 0070E1A3    mov         eax,7C2F2C;^'Detection zone'
 0070E1A8    call        @UStrAsg
 0070E1AD    push        70ED08;'Control A'
 0070E1B2    lea         eax,[ebp-58]
 0070E1B5    push        eax
 0070E1B6    mov         ecx,70ED28;'sControlA'
 0070E1BB    mov         edx,70E670;'ADFillDlg'
 0070E1C0    mov         eax,ebx
 0070E1C2    mov         edi,dword ptr [eax]
 0070E1C4    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E1C7    mov         edx,dword ptr [ebp-58]
 0070E1CA    mov         eax,7C2F30;^'Control A'
 0070E1CF    call        @UStrAsg
 0070E1D4    push        70ED48;'Control B'
 0070E1D9    lea         eax,[ebp-5C]
 0070E1DC    push        eax
 0070E1DD    mov         ecx,70ED68;'sControlB'
 0070E1E2    mov         edx,70E670;'ADFillDlg'
 0070E1E7    mov         eax,ebx
 0070E1E9    mov         edi,dword ptr [eax]
 0070E1EB    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E1EE    mov         edx,dword ptr [ebp-5C]
 0070E1F1    mov         eax,7C2F34;^'Control B'
 0070E1F6    call        @UStrAsg
 0070E1FB    push        70ED88;'Control B2'
 0070E200    lea         eax,[ebp-60]
 0070E203    push        eax
 0070E204    mov         ecx,70EDAC;'sControlC'
 0070E209    mov         edx,70E670;'ADFillDlg'
 0070E20E    mov         eax,ebx
 0070E210    mov         edi,dword ptr [eax]
 0070E212    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E215    mov         edx,dword ptr [ebp-60]
 0070E218    mov         eax,7C2F38;^'Control B2'
 0070E21D    call        @UStrAsg
 0070E222    push        70EDCC;'Fire alarm threshold'
 0070E227    lea         eax,[ebp-64]
 0070E22A    push        eax
 0070E22B    mov         ecx,70EE04;'sFireThreshold'
 0070E230    mov         edx,70E670;'ADFillDlg'
 0070E235    mov         eax,ebx
 0070E237    mov         edi,dword ptr [eax]
 0070E239    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E23C    mov         edx,dword ptr [ebp-64]
 0070E23F    mov         eax,7C2F3C;^'Fire alarm threshold'
 0070E244    call        @UStrAsg
 0070E249    push        70EE30;'Prealarm threshold'
 0070E24E    lea         eax,[ebp-68]
 0070E251    push        eax
 0070E252    mov         ecx,70EE64;'sPrewThreshold'
 0070E257    mov         edx,70E670;'ADFillDlg'
 0070E25C    mov         eax,ebx
 0070E25E    mov         edi,dword ptr [eax]
 0070E260    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E263    mov         edx,dword ptr [ebp-68]
 0070E266    mov         eax,7C2F40;^'Prealarm threshold'
 0070E26B    call        @UStrAsg
 0070E270    push        70EE90;'Daytime fire threshold'
 0070E275    lea         eax,[ebp-6C]
 0070E278    push        eax
 0070E279    mov         ecx,70EECC;'sDayFireThreshold'
 0070E27E    mov         edx,70E670;'ADFillDlg'
 0070E283    mov         eax,ebx
 0070E285    mov         edi,dword ptr [eax]
 0070E287    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E28A    mov         edx,dword ptr [ebp-6C]
 0070E28D    mov         eax,7C2F44;^'Daytime fire threshold'
 0070E292    call        @UStrAsg
 0070E297    push        70EEFC;'Daytime prealarm threshold'
 0070E29C    lea         eax,[ebp-70]
 0070E29F    push        eax
 0070E2A0    mov         ecx,70EF40;'sDayPrewThreshold'
 0070E2A5    mov         edx,70E670;'ADFillDlg'
 0070E2AA    mov         eax,ebx
 0070E2AC    mov         edi,dword ptr [eax]
 0070E2AE    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E2B1    mov         edx,dword ptr [ebp-70]
 0070E2B4    mov         eax,7C2F48;^'Daytime prealarm threshold'
 0070E2B9    call        @UStrAsg
 0070E2BE    push        70EF70;'Environment'
 0070E2C3    lea         eax,[ebp-74]
 0070E2C6    push        eax
 0070E2C7    mov         ecx,70EF94;'sEnvironment'
 0070E2CC    mov         edx,70E670;'ADFillDlg'
 0070E2D1    mov         eax,ebx
 0070E2D3    mov         edi,dword ptr [eax]
 0070E2D5    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E2D8    mov         edx,dword ptr [ebp-74]
 0070E2DB    mov         eax,7C2F4C;^'Environment'
 0070E2E0    call        @UStrAsg
 0070E2E5    push        70EFBC;'Alarm mode'
 0070E2EA    lea         eax,[ebp-78]
 0070E2ED    push        eax
 0070E2EE    mov         ecx,70EFE0;'sAlarmMode'
 0070E2F3    mov         edx,70E670;'ADFillDlg'
 0070E2F8    mov         eax,ebx
 0070E2FA    mov         edi,dword ptr [eax]
 0070E2FC    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E2FF    mov         edx,dword ptr [ebp-78]
 0070E302    mov         eax,7C2F50;^'Alarm mode'
 0070E307    call        @UStrAsg
 0070E30C    push        70F004;'Sounder volume'
 0070E311    lea         eax,[ebp-7C]
 0070E314    push        eax
 0070E315    mov         ecx,70F030;'sSndrVolume'
 0070E31A    mov         edx,70E670;'ADFillDlg'
 0070E31F    mov         eax,ebx
 0070E321    mov         edi,dword ptr [eax]
 0070E323    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E326    mov         edx,dword ptr [ebp-7C]
 0070E329    mov         eax,7C2F54;^'Sounder volume'
 0070E32E    call        @UStrAsg
 0070E333    push        70F054;'Input signal delay'
 0070E338    lea         eax,[ebp-80]
 0070E33B    push        eax
 0070E33C    mov         ecx,70F088;'sInputDelay'
 0070E341    mov         edx,70E670;'ADFillDlg'
 0070E346    mov         eax,ebx
 0070E348    mov         edi,dword ptr [eax]
 0070E34A    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E34D    mov         edx,dword ptr [ebp-80]
 0070E350    mov         eax,7C2F58;^'Input signal delay'
 0070E355    call        @UStrAsg
 0070E35A    push        70F0AC;'Input signal attenuation'
 0070E35F    lea         eax,[ebp-84]
 0070E365    push        eax
 0070E366    mov         ecx,70F0EC;'sInputAttenuation'
 0070E36B    mov         edx,70E670;'ADFillDlg'
 0070E370    mov         eax,ebx
 0070E372    mov         edi,dword ptr [eax]
 0070E374    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E377    mov         edx,dword ptr [ebp-84]
 0070E37D    mov         eax,7C2F5C;^'Input signal attenuation'
 0070E382    call        @UStrAsg
 0070E387    push        70F11C;'Disabled by zone disablement'
 0070E38C    lea         eax,[ebp-88]
 0070E392    push        eax
 0070E393    mov         ecx,70F164;'sDisableByZone'
 0070E398    mov         edx,70E670;'ADFillDlg'
 0070E39D    mov         eax,ebx
 0070E39F    mov         edi,dword ptr [eax]
 0070E3A1    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E3A4    mov         edx,dword ptr [ebp-88]
 0070E3AA    mov         eax,7C2F60;^'Disabled by zone disablement'
 0070E3AF    call        @UStrAsg
 0070E3B4    push        70F190;'Daymode effect'
 0070E3B9    lea         eax,[ebp-8C]
 0070E3BF    push        eax
 0070E3C0    mov         ecx,70F1BC;'sDaymodeEffect'
 0070E3C5    mov         edx,70E670;'ADFillDlg'
 0070E3CA    mov         eax,ebx
 0070E3CC    mov         edi,dword ptr [eax]
 0070E3CE    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E3D1    mov         edx,dword ptr [ebp-8C]
 0070E3D7    mov         eax,7C2F64;^'Daymode effect'
 0070E3DC    call        @UStrAsg
 0070E3E1    push        70F1E8;'Control groups'
 0070E3E6    lea         eax,[ebp-90]
 0070E3EC    push        eax
 0070E3ED    mov         ecx,70F214;'sControlGroups'
 0070E3F2    mov         edx,70E670;'ADFillDlg'
 0070E3F7    mov         eax,ebx
 0070E3F9    mov         edi,dword ptr [eax]
 0070E3FB    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E3FE    mov         edx,dword ptr [ebp-90]
 0070E404    mov         eax,7C2F68;^'Control groups'
 0070E409    call        @UStrAsg
 0070E40E    push        70F240;'Output function'
 0070E413    lea         eax,[ebp-94]
 0070E419    push        eax
 0070E41A    mov         ecx,70F26C;'sOutputFunction'
 0070E41F    mov         edx,70E670;'ADFillDlg'
 0070E424    mov         eax,ebx
 0070E426    mov         edi,dword ptr [eax]
 0070E428    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E42B    mov         edx,dword ptr [ebp-94]
 0070E431    mov         eax,7C2F6C;^'Output function'
 0070E436    call        @UStrAsg
 0070E43B    push        70F298;'Output 2 function'
 0070E440    lea         eax,[ebp-98]
 0070E446    push        eax
 0070E447    mov         ecx,70F2C8;'sOutput2Function'
 0070E44C    mov         edx,70E670;'ADFillDlg'
 0070E451    mov         eax,ebx
 0070E453    mov         edi,dword ptr [eax]
 0070E455    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E458    mov         edx,dword ptr [ebp-98]
 0070E45E    mov         eax,7C2F70;^'Output 2 function'
 0070E463    call        @UStrAsg
 0070E468    push        70F2F8;'Output OR''d with external logic'
 0070E46D    lea         eax,[ebp-9C]
 0070E473    push        eax
 0070E474    mov         ecx,70F344;'sExternalOr'
 0070E479    mov         edx,70E670;'ADFillDlg'
 0070E47E    mov         eax,ebx
 0070E480    mov         edi,dword ptr [eax]
 0070E482    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E485    mov         edx,dword ptr [ebp-9C]
 0070E48B    mov         eax,7C2F74;^'Output OR''d with external logic'
 0070E490    call        @UStrAsg
 0070E495    push        70F368;'Text'
 0070E49A    lea         eax,[ebp-0A0]
 0070E4A0    push        eax
 0070E4A1    mov         ecx,70F380;'sText'
 0070E4A6    mov         edx,70E670;'ADFillDlg'
 0070E4AB    mov         eax,ebx
 0070E4AD    mov         edi,dword ptr [eax]
 0070E4AF    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E4B2    mov         edx,dword ptr [ebp-0A0]
 0070E4B8    mov         eax,7C2F78;^'Text'
 0070E4BD    call        @UStrAsg
 0070E4C2    push        70F398;'EOL Resistor'
 0070E4C7    lea         eax,[ebp-0A4]
 0070E4CD    push        eax
 0070E4CE    mov         ecx,70F3C0;'sEOLResistor'
 0070E4D3    mov         edx,70E670;'ADFillDlg'
 0070E4D8    mov         eax,ebx
 0070E4DA    mov         edi,dword ptr [eax]
 0070E4DC    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E4DF    mov         edx,dword ptr [ebp-0A4]
 0070E4E5    mov         eax,7C2F7C;^'EOL Resistor'
 0070E4EA    call        @UStrAsg
 0070E4EF    push        70F3E8;'Normally closed'
 0070E4F4    lea         eax,[ebp-0A8]
 0070E4FA    push        eax
 0070E4FB    mov         ecx,70F414;'sNormallyClosed'
 0070E500    mov         edx,70E670;'ADFillDlg'
 0070E505    mov         eax,ebx
 0070E507    mov         edi,dword ptr [eax]
 0070E509    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E50C    mov         edx,dword ptr [ebp-0A8]
 0070E512    mov         eax,7C2F80;^'Normally closed'
 0070E517    call        @UStrAsg
 0070E51C    push        70F440;'Short is alarm'
 0070E521    lea         eax,[ebp-0AC]
 0070E527    push        eax
 0070E528    mov         ecx,70F46C;'sShortCircAlarm'
 0070E52D    mov         edx,70E670;'ADFillDlg'
 0070E532    mov         eax,ebx
 0070E534    mov         edi,dword ptr [eax]
 0070E536    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E539    mov         edx,dword ptr [ebp-0AC]
 0070E53F    mov         eax,7C2F84;^'Short is alarm'
 0070E544    call        @UStrAsg
 0070E549    push        70F498;'Break monitored'
 0070E54E    lea         eax,[ebp-0B0]
 0070E554    push        eax
 0070E555    mov         ecx,70F4C4;'sBreakMonitored'
 0070E55A    mov         edx,70E670;'ADFillDlg'
 0070E55F    mov         eax,ebx
 0070E561    mov         edi,dword ptr [eax]
 0070E563    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E566    mov         edx,dword ptr [ebp-0B0]
 0070E56C    mov         eax,7C2F88;^'Break monitored'
 0070E571    call        @UStrAsg
 0070E576    push        70F4F0;'Exi classified'
 0070E57B    lea         eax,[ebp-0B4]
 0070E581    push        eax
 0070E582    mov         ecx,70F51C;'sExiClassified'
 0070E587    mov         edx,70E670;'ADFillDlg'
 0070E58C    mov         eax,ebx
 0070E58E    mov         edi,dword ptr [eax]
 0070E590    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E593    mov         edx,dword ptr [ebp-0B4]
 0070E599    mov         eax,7C2F8C;^'Exi classified'
 0070E59E    call        @UStrAsg
 0070E5A3    push        70F548;'Double knock'
 0070E5A8    lea         eax,[ebp-0B8]
 0070E5AE    push        eax
 0070E5AF    mov         ecx,70F570;'sDoubleKnock'
 0070E5B4    mov         edx,70E670;'ADFillDlg'
 0070E5B9    mov         eax,ebx
 0070E5BB    mov         edi,dword ptr [eax]
 0070E5BD    call        dword ptr [edi+4];TFXIniFile.ReadString
 0070E5C0    mov         edx,dword ptr [ebp-0B8]
 0070E5C6    mov         eax,7C2F90;^'Double knock'
 0070E5CB    call        @UStrAsg
 0070E5D0    mov         edx,ebx
 0070E5D2    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070E5D8    call        TFXADMenuFrame.Translate
 0070E5DD    xor         eax,eax
 0070E5DF    pop         edx
 0070E5E0    pop         ecx
 0070E5E1    pop         ecx
 0070E5E2    mov         dword ptr fs:[eax],edx
 0070E5E5    push        70E602
 0070E5EA    lea         eax,[ebp-0B8]
 0070E5F0    mov         edx,2E
 0070E5F5    call        @UStrArrayClr
 0070E5FA    ret
>0070E5FB    jmp         @HandleFinally
>0070E600    jmp         0070E5EA
 0070E602    pop         edi
 0070E603    pop         esi
 0070E604    pop         ebx
 0070E605    mov         esp,ebp
 0070E607    pop         ebp
 0070E608    ret
*}
end;

//0070F58C
procedure TAPFillDlg.FormCreate(Sender:TObject);
begin
{*
 0070F58C    push        ebp
 0070F58D    mov         ebp,esp
 0070F58F    add         esp,0FFFFFFE8
 0070F592    push        ebx
 0070F593    push        esi
 0070F594    push        edi
 0070F595    xor         ecx,ecx
 0070F597    mov         dword ptr [ebp-4],ecx
 0070F59A    mov         dword ptr [ebp-18],ecx
 0070F59D    mov         esi,eax
 0070F59F    xor         eax,eax
 0070F5A1    push        ebp
 0070F5A2    push        70FD9F
 0070F5A7    push        dword ptr fs:[eax]
 0070F5AA    mov         dword ptr fs:[eax],esp
 0070F5AD    lea         eax,[ebp-4]
 0070F5B0    push        eax
 0070F5B1    mov         eax,70FDBC;'Address range entry'
 0070F5B6    mov         dword ptr [ebp-14],eax
 0070F5B9    mov         byte ptr [ebp-10],11
 0070F5BD    lea         edx,[ebp-18]
 0070F5C0    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 0070F5C5    mov         eax,dword ptr [eax]
 0070F5C7    call        005DDC74
 0070F5CC    mov         eax,dword ptr [ebp-18]
 0070F5CF    mov         dword ptr [ebp-0C],eax
 0070F5D2    mov         byte ptr [ebp-8],11
 0070F5D6    lea         edx,[ebp-14]
 0070F5D9    mov         ecx,1
 0070F5DE    mov         eax,70FDF0;'%s (%s)'
 0070F5E3    call        Format
 0070F5E8    mov         edx,dword ptr [ebp-4]
 0070F5EB    mov         eax,esi
 0070F5ED    call        TControl.SetText
 0070F5F2    mov         ecx,dword ptr ds:[901F68];gvar_00901F68:TAPFillDlg
 0070F5F8    mov         dl,1
 0070F5FA    mov         eax,[006EC7B4];TFXADMenuFrame
 0070F5FF    call        TCustomFrame.Create;TFXADMenuFrame.Create
 0070F604    mov         ebx,eax
 0070F606    mov         dword ptr [esi+3F8],ebx;TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F60C    mov         eax,dword ptr [ebx+804];TFXADMenuFrame.Reset1:TMenuItem
 0070F612    mov         dl,1
 0070F614    call        TMenuItem.SetEnabled
 0070F619    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F61F    mov         eax,dword ptr [eax+804];TFXADMenuFrame.Reset1:TMenuItem
 0070F625    mov         dl,1
 0070F627    call        TMenuItem.SetVisible
 0070F62C    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F632    mov         eax,dword ptr [eax+808];TFXADMenuFrame.Reset2:TMenuItem
 0070F638    mov         dl,1
 0070F63A    call        TMenuItem.SetEnabled
 0070F63F    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F645    mov         eax,dword ptr [eax+808];TFXADMenuFrame.Reset2:TMenuItem
 0070F64B    mov         dl,1
 0070F64D    call        TMenuItem.SetVisible
 0070F652    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F658    mov         eax,dword ptr [eax+80C];TFXADMenuFrame.Reset3:TMenuItem
 0070F65E    mov         dl,1
 0070F660    call        TMenuItem.SetEnabled
 0070F665    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F66B    mov         eax,dword ptr [eax+80C];TFXADMenuFrame.Reset3:TMenuItem
 0070F671    mov         dl,1
 0070F673    call        TMenuItem.SetVisible
 0070F678    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F67E    mov         eax,dword ptr [eax+810];TFXADMenuFrame.Reset4:TMenuItem
 0070F684    mov         dl,1
 0070F686    call        TMenuItem.SetEnabled
 0070F68B    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F691    mov         eax,dword ptr [eax+810];TFXADMenuFrame.Reset4:TMenuItem
 0070F697    mov         dl,1
 0070F699    call        TMenuItem.SetVisible
 0070F69E    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F6A4    mov         eax,dword ptr [eax+814];TFXADMenuFrame.Reset5:TMenuItem
 0070F6AA    mov         dl,1
 0070F6AC    call        TMenuItem.SetEnabled
 0070F6B1    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F6B7    mov         eax,dword ptr [eax+814];TFXADMenuFrame.Reset5:TMenuItem
 0070F6BD    mov         dl,1
 0070F6BF    call        TMenuItem.SetVisible
 0070F6C4    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F6CA    mov         eax,dword ptr [eax+818];TFXADMenuFrame.Reset6:TMenuItem
 0070F6D0    mov         dl,1
 0070F6D2    call        TMenuItem.SetEnabled
 0070F6D7    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F6DD    mov         eax,dword ptr [eax+818];TFXADMenuFrame.Reset6:TMenuItem
 0070F6E3    mov         dl,1
 0070F6E5    call        TMenuItem.SetVisible
 0070F6EA    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F6F0    mov         eax,dword ptr [eax+81C];TFXADMenuFrame.Reset7:TMenuItem
 0070F6F6    mov         dl,1
 0070F6F8    call        TMenuItem.SetEnabled
 0070F6FD    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F703    mov         eax,dword ptr [eax+81C];TFXADMenuFrame.Reset7:TMenuItem
 0070F709    mov         dl,1
 0070F70B    call        TMenuItem.SetVisible
 0070F710    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F716    mov         eax,dword ptr [eax+820];TFXADMenuFrame.Reset8:TMenuItem
 0070F71C    mov         dl,1
 0070F71E    call        TMenuItem.SetEnabled
 0070F723    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F729    mov         eax,dword ptr [eax+820];TFXADMenuFrame.Reset8:TMenuItem
 0070F72F    mov         dl,1
 0070F731    call        TMenuItem.SetVisible
 0070F736    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F73C    mov         eax,dword ptr [eax+824];TFXADMenuFrame.Reset9:TMenuItem
 0070F742    mov         dl,1
 0070F744    call        TMenuItem.SetEnabled
 0070F749    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F74F    mov         eax,dword ptr [eax+824];TFXADMenuFrame.Reset9:TMenuItem
 0070F755    mov         dl,1
 0070F757    call        TMenuItem.SetVisible
 0070F75C    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F762    mov         eax,dword ptr [eax+828];TFXADMenuFrame.Reset10:TMenuItem
 0070F768    mov         dl,1
 0070F76A    call        TMenuItem.SetEnabled
 0070F76F    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F775    mov         eax,dword ptr [eax+828];TFXADMenuFrame.Reset10:TMenuItem
 0070F77B    mov         dl,1
 0070F77D    call        TMenuItem.SetVisible
 0070F782    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F788    mov         eax,dword ptr [eax+870];TFXADMenuFrame.Reset11:TMenuItem
 0070F78E    mov         dl,1
 0070F790    call        TMenuItem.SetEnabled
 0070F795    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F79B    mov         eax,dword ptr [eax+870];TFXADMenuFrame.Reset11:TMenuItem
 0070F7A1    mov         dl,1
 0070F7A3    call        TMenuItem.SetVisible
 0070F7A8    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F7AE    mov         eax,dword ptr [eax+82C];TFXADMenuFrame.Reset12:TMenuItem
 0070F7B4    mov         dl,1
 0070F7B6    call        TMenuItem.SetEnabled
 0070F7BB    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F7C1    mov         eax,dword ptr [eax+82C];TFXADMenuFrame.Reset12:TMenuItem
 0070F7C7    mov         dl,1
 0070F7C9    call        TMenuItem.SetVisible
 0070F7CE    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F7D4    mov         eax,dword ptr [eax+830];TFXADMenuFrame.Reset14:TMenuItem
 0070F7DA    mov         dl,1
 0070F7DC    call        TMenuItem.SetEnabled
 0070F7E1    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F7E7    mov         eax,dword ptr [eax+830];TFXADMenuFrame.Reset14:TMenuItem
 0070F7ED    mov         dl,1
 0070F7EF    call        TMenuItem.SetVisible
 0070F7F4    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F7FA    mov         eax,dword ptr [eax+834];TFXADMenuFrame.Reset15:TMenuItem
 0070F800    mov         dl,1
 0070F802    call        TMenuItem.SetEnabled
 0070F807    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F80D    mov         eax,dword ptr [eax+834];TFXADMenuFrame.Reset15:TMenuItem
 0070F813    mov         dl,1
 0070F815    call        TMenuItem.SetVisible
 0070F81A    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F820    mov         eax,dword ptr [eax+838];TFXADMenuFrame.Reset17:TMenuItem
 0070F826    mov         dl,1
 0070F828    call        TMenuItem.SetEnabled
 0070F82D    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F833    mov         eax,dword ptr [eax+838];TFXADMenuFrame.Reset17:TMenuItem
 0070F839    mov         dl,1
 0070F83B    call        TMenuItem.SetVisible
 0070F840    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F846    mov         eax,dword ptr [eax+83C];TFXADMenuFrame.Reset18:TMenuItem
 0070F84C    mov         dl,1
 0070F84E    call        TMenuItem.SetEnabled
 0070F853    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F859    mov         eax,dword ptr [eax+83C];TFXADMenuFrame.Reset18:TMenuItem
 0070F85F    mov         dl,1
 0070F861    call        TMenuItem.SetVisible
 0070F866    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F86C    mov         eax,dword ptr [eax+840];TFXADMenuFrame.Reset19:TMenuItem
 0070F872    mov         dl,1
 0070F874    call        TMenuItem.SetEnabled
 0070F879    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F87F    mov         eax,dword ptr [eax+840];TFXADMenuFrame.Reset19:TMenuItem
 0070F885    mov         dl,1
 0070F887    call        TMenuItem.SetVisible
 0070F88C    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F892    mov         eax,dword ptr [eax+844];TFXADMenuFrame.Reset20:TMenuItem
 0070F898    mov         dl,1
 0070F89A    call        TMenuItem.SetEnabled
 0070F89F    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F8A5    mov         eax,dword ptr [eax+844];TFXADMenuFrame.Reset20:TMenuItem
 0070F8AB    mov         dl,1
 0070F8AD    call        TMenuItem.SetVisible
 0070F8B2    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F8B8    mov         eax,dword ptr [eax+848];TFXADMenuFrame.Reset21:TMenuItem
 0070F8BE    mov         dl,1
 0070F8C0    call        TMenuItem.SetEnabled
 0070F8C5    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F8CB    mov         eax,dword ptr [eax+848];TFXADMenuFrame.Reset21:TMenuItem
 0070F8D1    mov         dl,1
 0070F8D3    call        TMenuItem.SetVisible
 0070F8D8    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F8DE    mov         eax,dword ptr [eax+84C];TFXADMenuFrame.Reset24:TMenuItem
 0070F8E4    mov         dl,1
 0070F8E6    call        TMenuItem.SetEnabled
 0070F8EB    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F8F1    mov         eax,dword ptr [eax+84C];TFXADMenuFrame.Reset24:TMenuItem
 0070F8F7    mov         dl,1
 0070F8F9    call        TMenuItem.SetVisible
 0070F8FE    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070F904    mov         dword ptr [eax+0B8C],esi;TFXADMenuFrame.?fB8C:TAPFillDlg
 0070F90A    mov         dword ptr [eax+0B88],7105F0;TFXADMenuFrame.EvSapTypeClick:TNotifyEvent TAPFillDlg.SapTyp...
 0070F914    mov         dword ptr [eax+0B94],esi;TFXADMenuFrame.?fB94:TAPFillDlg
 0070F91A    mov         dword ptr [eax+0B90],710B10;TFXADMenuFrame.EvSapSysTypeClick:TNotifyEvent TAPFillDlg.Sap...
 0070F924    mov         dword ptr [eax+0B9C],esi;TFXADMenuFrame.?fB9C:TAPFillDlg
 0070F92A    mov         dword ptr [eax+0B98],711188;TFXADMenuFrame.EvSapSounderModeClick:TNotifyEvent TAPFillDlg...
 0070F934    mov         dword ptr [eax+0C3C],esi;TFXADMenuFrame.?fC3C:TAPFillDlg
 0070F93A    mov         dword ptr [eax+0C38],710FCC;TFXADMenuFrame.EvSapEnvironmentClick:TNotifyEvent TAPFillDlg...
 0070F944    mov         dword ptr [eax+0BA4],esi;TFXADMenuFrame.?fBA4:TAPFillDlg
 0070F94A    mov         dword ptr [eax+0BA0],711270;TFXADMenuFrame.EvApoTypeClick:TNotifyEvent TAPFillDlg.ApoTyp...
 0070F954    mov         dword ptr [eax+0BAC],esi;TFXADMenuFrame.?fBAC:TAPFillDlg
 0070F95A    mov         dword ptr [eax+0BA8],71176C;TFXADMenuFrame.EvApoSubTypeClick:TNotifyEvent TAPFillDlg.Apo...
 0070F964    mov         dword ptr [eax+0BB4],esi;TFXADMenuFrame.?fBB4:TAPFillDlg
 0070F96A    mov         dword ptr [eax+0BB0],711AD8;TFXADMenuFrame.EvApoSounderModeClick:TNotifyEvent TAPFillDlg...
 0070F974    mov         dword ptr [eax+0BBC],esi;TFXADMenuFrame.?fBBC:TAPFillDlg
 0070F97A    mov         dword ptr [eax+0BB8],711C0C;TFXADMenuFrame.EvSysTypeClick:TNotifyEvent TAPFillDlg.SysTyp...
 0070F984    mov         dword ptr [eax+0BC4],esi;TFXADMenuFrame.?fBC4:TAPFillDlg
 0070F98A    mov         dword ptr [eax+0BC0],7120B4;TFXADMenuFrame.EvSysDetSubTypeClick:TNotifyEvent TAPFillDlg....
 0070F994    mov         dword ptr [eax+0BCC],esi;TFXADMenuFrame.?fBCC:TAPFillDlg
 0070F99A    mov         dword ptr [eax+0BC8],712788;TFXADMenuFrame.EvCnvEolClick:TNotifyEvent TAPFillDlg.CnvEOLC...
 0070F9A4    mov         dword ptr [eax+0BD4],esi;TFXADMenuFrame.?fBD4:TAPFillDlg
 0070F9AA    mov         dword ptr [eax+0BD0],712F94;TFXADMenuFrame.EvComCzmClick:TNotifyEvent TAPFillDlg.ComCzmC...
 0070F9B4    mov         dword ptr [eax+0BDC],esi;TFXADMenuFrame.?fBDC:TAPFillDlg
 0070F9BA    mov         dword ptr [eax+0BD8],712AB8;TFXADMenuFrame.EvComInputClick:TNotifyEvent TAPFillDlg.ComIn...
 0070F9C4    mov         dword ptr [eax+0BE4],esi;TFXADMenuFrame.?fBE4:TAPFillDlg
 0070F9CA    mov         dword ptr [eax+0BE0],71338C;TFXADMenuFrame.EvComLevelClick:TNotifyEvent TAPFillDlg.ComLe...
 0070F9D4    mov         dword ptr [eax+0BEC],esi;TFXADMenuFrame.?fBEC:TAPFillDlg
 0070F9DA    mov         dword ptr [eax+0BE8],712850;TFXADMenuFrame.EvComModeClick:TNotifyEvent TAPFillDlg.ComMod...
 0070F9E4    mov         dword ptr [eax+0BF4],esi;TFXADMenuFrame.?fBF4:TAPFillDlg
 0070F9EA    mov         dword ptr [eax+0BF0],7129E8;TFXADMenuFrame.EvComMonitoringClick:TNotifyEvent TAPFillDlg....
 0070F9F4    mov         dword ptr [eax+0BFC],esi;TFXADMenuFrame.?fBFC:TAPFillDlg
 0070F9FA    mov         dword ptr [eax+0BF8],7131C8;TFXADMenuFrame.EvComSounderModeClick:TNotifyEvent TAPFillDlg...
 0070FA04    mov         dword ptr [eax+0C34],esi;TFXADMenuFrame.?fC34:TAPFillDlg
 0070FA0A    mov         dword ptr [eax+0C30],7132A4;TFXADMenuFrame.EvComSndrVolClick:TNotifyEvent TAPFillDlg.Com...
 0070FA14    mov         dword ptr [eax+0C04],esi;TFXADMenuFrame.?fC04:TAPFillDlg
 0070FA1A    mov         dword ptr [eax+0C00],712920;TFXADMenuFrame.EvComYesNoClick:TNotifyEvent TAPFillDlg.ComYe...
 0070FA24    mov         dword ptr [eax+0C0C],esi;TFXADMenuFrame.?fC0C:TAPFillDlg
 0070FA2A    mov         dword ptr [eax+0C08],712BA4;TFXADMenuFrame.EvComInDelayClick:TNotifyEvent TAPFillDlg.Com...
 0070FA34    mov         dword ptr [eax+0C14],esi;TFXADMenuFrame.?fC14:TAPFillDlg
 0070FA3A    mov         dword ptr [eax+0C10],712CA0;TFXADMenuFrame.EvComInFilterClick:TNotifyEvent TAPFillDlg.Co...
 0070FA44    mov         dword ptr [eax+0C1C],esi;TFXADMenuFrame.?fC1C:TAPFillDlg
 0070FA4A    mov         dword ptr [eax+0C18],712D9C;TFXADMenuFrame.EvComDayModeClick:TNotifyEvent TAPFillDlg.Com...
 0070FA54    mov         dword ptr [eax+0C24],esi;TFXADMenuFrame.?fC24:TAPFillDlg
 0070FA5A    mov         dword ptr [eax+0C20],712E98;TFXADMenuFrame.EvComZDisClick:TNotifyEvent TAPFillDlg.ComZDi...
 0070FA64    mov         dword ptr [eax+0C2C],esi;TFXADMenuFrame.?fC2C:TAPFillDlg
 0070FA6A    mov         dword ptr [eax+0C28],713440;TFXADMenuFrame.EvComOutputClick:TNotifyEvent TAPFillDlg.ComO...
 0070FA74    mov         edx,dword ptr ds:[7C4E24];^gvar_007CA83C
 0070FA7A    movzx       edx,byte ptr [edx]
 0070FA7D    mov         eax,dword ptr [eax+2D8];TFXADMenuFrame.miSysLaserLZR1:TMenuItem
 0070FA83    call        TMenuItem.SetEnabled
 0070FA88    mov         edx,dword ptr ds:[7C4E24];^gvar_007CA83C
 0070FA8E    movzx       edx,byte ptr [edx]
 0070FA91    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070FA97    mov         eax,dword ptr [eax+2DC];TFXADMenuFrame.miSysLaser7251:TMenuItem
 0070FA9D    call        TMenuItem.SetEnabled
 0070FAA2    mov         edx,dword ptr ds:[7C42E4];^gvar_007CA83A
 0070FAA8    movzx       edx,byte ptr [edx]
 0070FAAB    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0070FAB1    mov         eax,dword ptr [eax+330];TFXADMenuFrame.miModeDelayed:TMenuItem
 0070FAB7    call        TMenuItem.SetEnabled
 0070FABC    mov         eax,[007C2F14];^'Property'
 0070FAC1    push        eax
 0070FAC2    xor         ecx,ecx
 0070FAC4    xor         edx,edx
 0070FAC6    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FACC    call        TStringGrid.SetCells
 0070FAD1    mov         eax,[007C2F18];^'Selection criteria'
 0070FAD6    push        eax
 0070FAD7    xor         ecx,ecx
 0070FAD9    mov         edx,1
 0070FADE    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FAE4    call        TStringGrid.SetCells
 0070FAE9    mov         eax,[007C2F1C];^'New value'
 0070FAEE    push        eax
 0070FAEF    xor         ecx,ecx
 0070FAF1    mov         edx,2
 0070FAF6    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FAFC    call        TStringGrid.SetCells
 0070FB01    mov         eax,[007C2F20];^'Type of device'
 0070FB06    push        eax
 0070FB07    mov         ecx,5
 0070FB0C    xor         edx,edx
 0070FB0E    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FB14    call        TStringGrid.SetCells
 0070FB19    mov         eax,[007C2F24];^'Input function'
 0070FB1E    push        eax
 0070FB1F    mov         ecx,6
 0070FB24    xor         edx,edx
 0070FB26    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FB2C    call        TStringGrid.SetCells
 0070FB31    mov         eax,[007C2F28];^'Inp. Short circ. monitoring'
 0070FB36    push        eax
 0070FB37    mov         ecx,7
 0070FB3C    xor         edx,edx
 0070FB3E    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FB44    call        TStringGrid.SetCells
 0070FB49    mov         eax,[007C2F2C];^'Detection zone'
 0070FB4E    push        eax
 0070FB4F    mov         ecx,1
 0070FB54    xor         edx,edx
 0070FB56    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FB5C    call        TStringGrid.SetCells
 0070FB61    mov         eax,[007C2F30];^'Control A'
 0070FB66    push        eax
 0070FB67    mov         ecx,2
 0070FB6C    xor         edx,edx
 0070FB6E    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FB74    call        TStringGrid.SetCells
 0070FB79    mov         eax,[007C2F34];^'Control B'
 0070FB7E    push        eax
 0070FB7F    mov         ecx,3
 0070FB84    xor         edx,edx
 0070FB86    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FB8C    call        TStringGrid.SetCells
 0070FB91    mov         eax,[007C2F38];^'Control B2'
 0070FB96    push        eax
 0070FB97    mov         ecx,4
 0070FB9C    xor         edx,edx
 0070FB9E    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FBA4    call        TStringGrid.SetCells
 0070FBA9    mov         eax,[007C2F3C];^'Fire alarm threshold'
 0070FBAE    push        eax
 0070FBAF    mov         ecx,9
 0070FBB4    xor         edx,edx
 0070FBB6    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FBBC    call        TStringGrid.SetCells
 0070FBC1    mov         eax,[007C2F40];^'Prealarm threshold'
 0070FBC6    push        eax
 0070FBC7    mov         ecx,0A
 0070FBCC    xor         edx,edx
 0070FBCE    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FBD4    call        TStringGrid.SetCells
 0070FBD9    mov         eax,[007C2F44];^'Daytime fire threshold'
 0070FBDE    push        eax
 0070FBDF    mov         ecx,0B
 0070FBE4    xor         edx,edx
 0070FBE6    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FBEC    call        TStringGrid.SetCells
 0070FBF1    mov         eax,[007C2F48];^'Daytime prealarm threshold'
 0070FBF6    push        eax
 0070FBF7    mov         ecx,0C
 0070FBFC    xor         edx,edx
 0070FBFE    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FC04    call        TStringGrid.SetCells
 0070FC09    mov         eax,[007C2F50];^'Alarm mode'
 0070FC0E    push        eax
 0070FC0F    mov         ecx,0D
 0070FC14    xor         edx,edx
 0070FC16    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FC1C    call        TStringGrid.SetCells
 0070FC21    mov         eax,[007C2F54];^'Sounder volume'
 0070FC26    push        eax
 0070FC27    mov         ecx,0E
 0070FC2C    xor         edx,edx
 0070FC2E    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FC34    call        TStringGrid.SetCells
 0070FC39    mov         eax,[007C2F58];^'Input signal delay'
 0070FC3E    push        eax
 0070FC3F    mov         ecx,0F
 0070FC44    xor         edx,edx
 0070FC46    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FC4C    call        TStringGrid.SetCells
 0070FC51    mov         eax,[007C2F5C];^'Input signal attenuation'
 0070FC56    push        eax
 0070FC57    mov         ecx,10
 0070FC5C    xor         edx,edx
 0070FC5E    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FC64    call        TStringGrid.SetCells
 0070FC69    mov         eax,[007C2F64];^'Daymode effect'
 0070FC6E    push        eax
 0070FC6F    mov         ecx,11
 0070FC74    xor         edx,edx
 0070FC76    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FC7C    call        TStringGrid.SetCells
 0070FC81    mov         eax,[007C2F60];^'Disabled by zone disablement'
 0070FC86    push        eax
 0070FC87    mov         ecx,12
 0070FC8C    xor         edx,edx
 0070FC8E    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FC94    call        TStringGrid.SetCells
 0070FC99    mov         eax,[007C2F68];^'Control groups'
 0070FC9E    push        eax
 0070FC9F    mov         ecx,13
 0070FCA4    xor         edx,edx
 0070FCA6    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FCAC    call        TStringGrid.SetCells
 0070FCB1    mov         eax,[007C2F6C];^'Output function'
 0070FCB6    push        eax
 0070FCB7    mov         ecx,14
 0070FCBC    xor         edx,edx
 0070FCBE    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FCC4    call        TStringGrid.SetCells
 0070FCC9    mov         eax,[007C2F70];^'Output 2 function'
 0070FCCE    push        eax
 0070FCCF    mov         ecx,15
 0070FCD4    xor         edx,edx
 0070FCD6    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FCDC    call        TStringGrid.SetCells
 0070FCE1    mov         eax,[007C2F74];^'Output OR''d with external logic'
 0070FCE6    push        eax
 0070FCE7    mov         ecx,16
 0070FCEC    xor         edx,edx
 0070FCEE    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FCF4    call        TStringGrid.SetCells
 0070FCF9    mov         eax,[007C2F78];^'Text'
 0070FCFE    push        eax
 0070FCFF    mov         ecx,17
 0070FD04    xor         edx,edx
 0070FD06    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FD0C    call        TStringGrid.SetCells
 0070FD11    mov         bl,1
 0070FD13    mov         eax,[007C2F94];^'Don''t care'
 0070FD18    push        eax
 0070FD19    movzx       edi,bl
 0070FD1C    mov         ecx,edi
 0070FD1E    mov         edx,1
 0070FD23    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FD29    call        TStringGrid.SetCells
 0070FD2E    mov         eax,[007C2F98];^'Don''t change'
 0070FD33    push        eax
 0070FD34    mov         ecx,edi
 0070FD36    mov         edx,2
 0070FD3B    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FD41    call        TStringGrid.SetCells
 0070FD46    inc         ebx
 0070FD47    cmp         bl,18
>0070FD4A    jne         0070FD13
 0070FD4C    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0070FD52    mov         edx,dword ptr [eax+2E0];TStringGrid.FRowCount:Integer
 0070FD58    mov         ecx,dword ptr [eax+2B4];TStringGrid.FDefaultRowHeight:Integer
 0070FD5E    add         ecx,1
>0070FD61    jno         0070FD68
 0070FD63    call        @IntOver
 0070FD68    imul        edx,ecx
>0070FD6B    jno         0070FD72
 0070FD6D    call        @IntOver
 0070FD72    add         edx,4
>0070FD75    jno         0070FD7C
 0070FD77    call        @IntOver
 0070FD7C    call        TControl.SetHeight
 0070FD81    xor         eax,eax
 0070FD83    pop         edx
 0070FD84    pop         ecx
 0070FD85    pop         ecx
 0070FD86    mov         dword ptr fs:[eax],edx
 0070FD89    push        70FDA6
 0070FD8E    lea         eax,[ebp-18]
 0070FD91    call        @UStrClr
 0070FD96    lea         eax,[ebp-4]
 0070FD99    call        @UStrClr
 0070FD9E    ret
>0070FD9F    jmp         @HandleFinally
>0070FDA4    jmp         0070FD8E
 0070FDA6    pop         edi
 0070FDA7    pop         esi
 0070FDA8    pop         ebx
 0070FDA9    mov         esp,ebp
 0070FDAB    pop         ebp
 0070FDAC    ret
*}
end;

//0070FE00
procedure TAPFillDlg.FormShow(Sender:TObject);
begin
{*
 0070FE00    push        ebp
 0070FE01    mov         ebp,esp
 0070FE03    add         esp,0FFFFFFCC
 0070FE06    push        ebx
 0070FE07    push        esi
 0070FE08    push        edi
 0070FE09    xor         ecx,ecx
 0070FE0B    mov         dword ptr [ebp-34],ecx
 0070FE0E    mov         dword ptr [ebp-30],ecx
 0070FE11    mov         dword ptr [ebp-2C],ecx
 0070FE14    mov         dword ptr [ebp-18],ecx
 0070FE17    mov         dword ptr [ebp-4],edx
 0070FE1A    mov         ebx,eax
 0070FE1C    mov         edi,dword ptr ds:[7C4DB8];^gvar_00901F74:Integer
 0070FE22    xor         eax,eax
 0070FE24    push        ebp
 0070FE25    push        71050B
 0070FE2A    push        dword ptr fs:[eax]
 0070FE2D    mov         dword ptr fs:[eax],esp
 0070FE30    xor         edx,edx
 0070FE32    mov         eax,dword ptr [ebx+3F4];TAPFillDlg.rbRangeSelectHigh:TRadioButton
 0070FE38    mov         ecx,dword ptr [eax]
 0070FE3A    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0070FE40    mov         eax,dword ptr [edi]
 0070FE42    cmp         eax,6
>0070FE45    ja          0070FEC2
 0070FE47    jmp         dword ptr [eax*4+70FE4E]
 0070FE47    dd          0070FEC2
 0070FE47    dd          0070FE6A
 0070FE47    dd          0070FE7C
 0070FE47    dd          0070FE8E
 0070FE47    dd          0070FEA0
 0070FE47    dd          0070FEB2
 0070FE47    dd          0070FEB2
 0070FE6A    mov         dl,1
 0070FE6C    mov         eax,dword ptr [ebx+3F4];TAPFillDlg.rbRangeSelectHigh:TRadioButton
 0070FE72    mov         ecx,dword ptr [eax]
 0070FE74    call        dword ptr [ecx+88];TGroupBox.SetEnabled
>0070FE7A    jmp         0070FEC2
 0070FE7C    mov         dl,1
 0070FE7E    mov         eax,dword ptr [ebx+3F0];TAPFillDlg.rbRangeSelectLow:TRadioButton
 0070FE84    mov         ecx,dword ptr [eax]
 0070FE86    call        dword ptr [ecx+10C];TRadioButton.SetChecked
>0070FE8C    jmp         0070FEC2
 0070FE8E    mov         dl,1
 0070FE90    mov         eax,dword ptr [ebx+3F0];TAPFillDlg.rbRangeSelectLow:TRadioButton
 0070FE96    mov         ecx,dword ptr [eax]
 0070FE98    call        dword ptr [ecx+10C];TRadioButton.SetChecked
>0070FE9E    jmp         0070FEC2
 0070FEA0    mov         dl,1
 0070FEA2    mov         eax,dword ptr [ebx+3F4];TAPFillDlg.rbRangeSelectHigh:TRadioButton
 0070FEA8    mov         ecx,dword ptr [eax]
 0070FEAA    call        dword ptr [ecx+88];TGroupBox.SetEnabled
>0070FEB0    jmp         0070FEC2
 0070FEB2    mov         dl,1
 0070FEB4    mov         eax,dword ptr [ebx+3F0];TAPFillDlg.rbRangeSelectLow:TRadioButton
 0070FEBA    mov         ecx,dword ptr [eax]
 0070FEBC    call        dword ptr [ecx+10C];TRadioButton.SetChecked
 0070FEC2    mov         esi,dword ptr [edi]
 0070FEC4    dec         esi
 0070FEC5    cmp         esi,5
>0070FEC8    jbe         0070FECF
 0070FECA    call        @BoundErr
 0070FECF    inc         esi
 0070FED0    movsx       eax,word ptr [esi*8+7C2ED4];^'Current data for this IO controller will be deleted if you...
 0070FED8    mov         dword ptr [ebp-8],eax
 0070FEDB    movsx       eax,word ptr [esi*8+7C2ED6]
 0070FEE3    mov         dword ptr [ebp-0C],eax
 0070FEE6    movsx       eax,word ptr [esi*8+7C2ED8];^'Changes you might have made in this data view will be lost...
 0070FEEE    mov         dword ptr [ebp-10],eax
 0070FEF1    movsx       eax,word ptr [esi*8+7C2EDA]
 0070FEF9    mov         dword ptr [ebp-14],eax
 0070FEFC    mov         eax,dword ptr [ebx+3F4];TAPFillDlg.rbRangeSelectHigh:TRadioButton
 0070FF02    mov         edx,dword ptr [eax]
 0070FF04    call        dword ptr [edx+108];TRadioButton.GetChecked
 0070FF0A    and         eax,7F
 0070FF0D    lea         edx,[esi*8+7C2EDC]
 0070FF14    movsx       edx,word ptr [edx+eax*4-8]
 0070FF19    mov         eax,dword ptr [ebx+3DC];TAPFillDlg.udFirst:TUpDown
 0070FF1F    call        TUpDown.SetMin
 0070FF24    mov         eax,dword ptr [ebx+3F4];TAPFillDlg.rbRangeSelectHigh:TRadioButton
 0070FF2A    mov         edx,dword ptr [eax]
 0070FF2C    call        dword ptr [edx+108];TRadioButton.GetChecked
 0070FF32    and         eax,7F
 0070FF35    mov         edx,dword ptr [edi]
 0070FF37    dec         edx
 0070FF38    cmp         edx,5
>0070FF3B    jbe         0070FF42
 0070FF3D    call        @BoundErr
 0070FF42    inc         edx
 0070FF43    lea         edx,[edx*8+7C2EDC]
 0070FF4A    movsx       edx,word ptr [edx+eax*4-6]
 0070FF4F    mov         eax,dword ptr [ebx+3DC];TAPFillDlg.udFirst:TUpDown
 0070FF55    call        TUpDown.SetMax
 0070FF5A    mov         eax,dword ptr [ebx+3F4];TAPFillDlg.rbRangeSelectHigh:TRadioButton
 0070FF60    mov         edx,dword ptr [eax]
 0070FF62    call        dword ptr [edx+108];TRadioButton.GetChecked
 0070FF68    and         eax,7F
 0070FF6B    mov         edx,dword ptr [edi]
 0070FF6D    dec         edx
 0070FF6E    cmp         edx,5
>0070FF71    jbe         0070FF78
 0070FF73    call        @BoundErr
 0070FF78    inc         edx
 0070FF79    lea         edx,[edx*8+7C2EDC]
 0070FF80    movsx       edx,word ptr [edx+eax*4-8]
 0070FF85    mov         eax,dword ptr [ebx+3E0];TAPFillDlg.udLast:TUpDown
 0070FF8B    call        TUpDown.SetMin
 0070FF90    mov         eax,dword ptr [ebx+3F4];TAPFillDlg.rbRangeSelectHigh:TRadioButton
 0070FF96    mov         edx,dword ptr [eax]
 0070FF98    call        dword ptr [edx+108];TRadioButton.GetChecked
 0070FF9E    and         eax,7F
 0070FFA1    mov         edx,dword ptr [edi]
 0070FFA3    dec         edx
 0070FFA4    cmp         edx,5
>0070FFA7    jbe         0070FFAE
 0070FFA9    call        @BoundErr
 0070FFAE    inc         edx
 0070FFAF    lea         edx,[edx*8+7C2EDC]
 0070FFB6    movsx       edx,word ptr [edx+eax*4-6]
 0070FFBB    mov         eax,dword ptr [ebx+3E0];TAPFillDlg.udLast:TUpDown
 0070FFC1    call        TUpDown.SetMax
 0070FFC6    lea         eax,[ebp-18]
 0070FFC9    push        eax
 0070FFCA    mov         eax,dword ptr [ebp-8]
 0070FFCD    mov         dword ptr [ebp-28],eax
 0070FFD0    mov         byte ptr [ebp-24],0
 0070FFD4    mov         eax,dword ptr [ebp-0C]
 0070FFD7    mov         dword ptr [ebp-20],eax
 0070FFDA    mov         byte ptr [ebp-1C],0
 0070FFDE    lea         edx,[ebp-28]
 0070FFE1    mov         ecx,1
 0070FFE6    mov         eax,[007C2F0C];^'Lower address range (%.3d...%.3d)'
 0070FFEB    call        Format
 0070FFF0    mov         edx,dword ptr [ebp-18]
 0070FFF3    mov         eax,dword ptr [ebx+3F0];TAPFillDlg.rbRangeSelectLow:TRadioButton
 0070FFF9    call        TControl.SetText
 0070FFFE    mov         eax,dword ptr [ebx+3F4];TAPFillDlg.rbRangeSelectHigh:TRadioButton
 00710004    mov         edx,dword ptr [eax]
 00710006    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 00710009    test        al,al
>0071000B    je          00710047
 0071000D    lea         eax,[ebp-2C]
 00710010    push        eax
 00710011    mov         eax,dword ptr [ebp-10]
 00710014    mov         dword ptr [ebp-28],eax
 00710017    mov         byte ptr [ebp-24],0
 0071001B    mov         eax,dword ptr [ebp-14]
 0071001E    mov         dword ptr [ebp-20],eax
 00710021    mov         byte ptr [ebp-1C],0
 00710025    lea         edx,[ebp-28]
 00710028    mov         ecx,1
 0071002D    mov         eax,[007C2F10];^'Higher address range (%.3d...%.3d)'
 00710032    call        Format
 00710037    mov         edx,dword ptr [ebp-2C]
 0071003A    mov         eax,dword ptr [ebx+3F4];TAPFillDlg.rbRangeSelectHigh:TRadioButton
 00710040    call        TControl.SetText
>00710045    jmp         00710054
 00710047    xor         edx,edx
 00710049    mov         eax,dword ptr [ebx+3F4];TAPFillDlg.rbRangeSelectHigh:TRadioButton
 0071004F    call        TControl.SetText
 00710054    mov         eax,dword ptr [ebx+3DC];TAPFillDlg.udFirst:TUpDown
 0071005A    call        TUpDown.GetPosition
 0071005F    lea         edx,[ebp-30]
 00710062    call        IntToStr
 00710067    mov         edx,dword ptr [ebp-30]
 0071006A    mov         eax,dword ptr [ebx+3D4];TAPFillDlg.edFirstAddress:TEdit
 00710070    call        TControl.SetText
 00710075    mov         eax,dword ptr [ebx+3E0];TAPFillDlg.udLast:TUpDown
 0071007B    call        TUpDown.GetPosition
 00710080    lea         edx,[ebp-34]
 00710083    call        IntToStr
 00710088    mov         edx,dword ptr [ebp-34]
 0071008B    mov         eax,dword ptr [ebx+3D8];TAPFillDlg.edLastAddress:TEdit
 00710091    call        TControl.SetText
 00710096    mov         eax,[007C2F14];^'Property'
 0071009B    push        eax
 0071009C    xor         ecx,ecx
 0071009E    xor         edx,edx
 007100A0    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007100A6    call        TStringGrid.SetCells
 007100AB    mov         eax,[007C2F18];^'Selection criteria'
 007100B0    push        eax
 007100B1    xor         ecx,ecx
 007100B3    mov         edx,1
 007100B8    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007100BE    call        TStringGrid.SetCells
 007100C3    mov         eax,[007C2F1C];^'New value'
 007100C8    push        eax
 007100C9    xor         ecx,ecx
 007100CB    mov         edx,2
 007100D0    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007100D6    call        TStringGrid.SetCells
 007100DB    mov         eax,[007C2F2C];^'Detection zone'
 007100E0    push        eax
 007100E1    mov         ecx,1
 007100E6    xor         edx,edx
 007100E8    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007100EE    call        TStringGrid.SetCells
 007100F3    mov         eax,[007C2F30];^'Control A'
 007100F8    push        eax
 007100F9    mov         ecx,2
 007100FE    xor         edx,edx
 00710100    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710106    call        TStringGrid.SetCells
 0071010B    mov         eax,[007C2F34];^'Control B'
 00710110    push        eax
 00710111    mov         ecx,3
 00710116    xor         edx,edx
 00710118    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071011E    call        TStringGrid.SetCells
 00710123    mov         eax,[007C2F38];^'Control B2'
 00710128    push        eax
 00710129    mov         ecx,4
 0071012E    xor         edx,edx
 00710130    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710136    call        TStringGrid.SetCells
 0071013B    mov         eax,[007C2F20];^'Type of device'
 00710140    push        eax
 00710141    mov         ecx,5
 00710146    xor         edx,edx
 00710148    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071014E    call        TStringGrid.SetCells
 00710153    mov         eax,[007C2F24];^'Input function'
 00710158    push        eax
 00710159    mov         ecx,6
 0071015E    xor         edx,edx
 00710160    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710166    call        TStringGrid.SetCells
 0071016B    mov         eax,[007C2F28];^'Inp. Short circ. monitoring'
 00710170    push        eax
 00710171    mov         ecx,7
 00710176    xor         edx,edx
 00710178    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071017E    call        TStringGrid.SetCells
 00710183    mov         eax,[007C2F4C];^'Environment'
 00710188    push        eax
 00710189    mov         ecx,8
 0071018E    xor         edx,edx
 00710190    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710196    call        TStringGrid.SetCells
 0071019B    mov         eax,[007C2F3C];^'Fire alarm threshold'
 007101A0    push        eax
 007101A1    mov         ecx,9
 007101A6    xor         edx,edx
 007101A8    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007101AE    call        TStringGrid.SetCells
 007101B3    mov         eax,[007C2F40];^'Prealarm threshold'
 007101B8    push        eax
 007101B9    mov         ecx,0A
 007101BE    xor         edx,edx
 007101C0    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007101C6    call        TStringGrid.SetCells
 007101CB    mov         eax,[007C2F44];^'Daytime fire threshold'
 007101D0    push        eax
 007101D1    mov         ecx,0B
 007101D6    xor         edx,edx
 007101D8    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007101DE    call        TStringGrid.SetCells
 007101E3    mov         eax,[007C2F48];^'Daytime prealarm threshold'
 007101E8    push        eax
 007101E9    mov         ecx,0C
 007101EE    xor         edx,edx
 007101F0    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007101F6    call        TStringGrid.SetCells
 007101FB    mov         eax,[007C2F50];^'Alarm mode'
 00710200    push        eax
 00710201    mov         ecx,0D
 00710206    xor         edx,edx
 00710208    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071020E    call        TStringGrid.SetCells
 00710213    mov         eax,[007C2F54];^'Sounder volume'
 00710218    push        eax
 00710219    mov         ecx,0E
 0071021E    xor         edx,edx
 00710220    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710226    call        TStringGrid.SetCells
 0071022B    mov         eax,[007C2F58];^'Input signal delay'
 00710230    push        eax
 00710231    mov         ecx,0F
 00710236    xor         edx,edx
 00710238    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071023E    call        TStringGrid.SetCells
 00710243    mov         eax,[007C2F5C];^'Input signal attenuation'
 00710248    push        eax
 00710249    mov         ecx,10
 0071024E    xor         edx,edx
 00710250    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710256    call        TStringGrid.SetCells
 0071025B    mov         eax,[007C2F64];^'Daymode effect'
 00710260    push        eax
 00710261    mov         ecx,11
 00710266    xor         edx,edx
 00710268    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071026E    call        TStringGrid.SetCells
 00710273    mov         eax,[007C2F60];^'Disabled by zone disablement'
 00710278    push        eax
 00710279    mov         ecx,12
 0071027E    xor         edx,edx
 00710280    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710286    call        TStringGrid.SetCells
 0071028B    mov         eax,[007C2F68];^'Control groups'
 00710290    push        eax
 00710291    mov         ecx,13
 00710296    xor         edx,edx
 00710298    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071029E    call        TStringGrid.SetCells
 007102A3    mov         eax,[007C2F6C];^'Output function'
 007102A8    push        eax
 007102A9    mov         ecx,14
 007102AE    xor         edx,edx
 007102B0    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007102B6    call        TStringGrid.SetCells
 007102BB    mov         eax,[007C2F70];^'Output 2 function'
 007102C0    push        eax
 007102C1    mov         ecx,15
 007102C6    xor         edx,edx
 007102C8    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007102CE    call        TStringGrid.SetCells
 007102D3    mov         eax,[007C2F74];^'Output OR''d with external logic'
 007102D8    push        eax
 007102D9    mov         ecx,16
 007102DE    xor         edx,edx
 007102E0    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007102E6    call        TStringGrid.SetCells
 007102EB    mov         eax,[007C2F78];^'Text'
 007102F0    push        eax
 007102F1    mov         ecx,17
 007102F6    xor         edx,edx
 007102F8    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007102FE    call        TStringGrid.SetCells
 00710303    mov         eax,dword ptr [edi]
 00710305    dec         eax
>00710306    je          00710318
 00710308    dec         eax
>00710309    je          00710372
 0071030B    dec         eax
>0071030C    je          00710359
 0071030E    sub         eax,2
>00710311    je          00710359
>00710313    jmp         0071048E
 00710318    push        0
 0071031A    mov         ecx,0E
 0071031F    xor         edx,edx
 00710321    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710327    call        TStringGrid.SetCells
 0071032C    push        0
 0071032E    mov         ecx,15
 00710333    xor         edx,edx
 00710335    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071033B    call        TStringGrid.SetCells
 00710340    push        0
 00710342    mov         ecx,16
 00710347    xor         edx,edx
 00710349    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071034F    call        TStringGrid.SetCells
>00710354    jmp         0071048E
 00710359    push        0
 0071035B    mov         ecx,7
 00710360    xor         edx,edx
 00710362    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710368    call        TStringGrid.SetCells
>0071036D    jmp         0071048E
 00710372    push        0
 00710374    mov         ecx,6
 00710379    xor         edx,edx
 0071037B    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710381    call        TStringGrid.SetCells
 00710386    push        0
 00710388    mov         ecx,7
 0071038D    xor         edx,edx
 0071038F    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710395    call        TStringGrid.SetCells
 0071039A    mov         eax,[007C2F7C];^'EOL Resistor'
 0071039F    push        eax
 007103A0    mov         ecx,8
 007103A5    xor         edx,edx
 007103A7    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007103AD    call        TStringGrid.SetCells
 007103B2    mov         eax,[007C2F80];^'Normally closed'
 007103B7    push        eax
 007103B8    mov         ecx,9
 007103BD    xor         edx,edx
 007103BF    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007103C5    call        TStringGrid.SetCells
 007103CA    mov         eax,[007C2F84];^'Short is alarm'
 007103CF    push        eax
 007103D0    mov         ecx,0A
 007103D5    xor         edx,edx
 007103D7    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007103DD    call        TStringGrid.SetCells
 007103E2    mov         eax,[007C2F88];^'Break monitored'
 007103E7    push        eax
 007103E8    mov         ecx,0B
 007103ED    xor         edx,edx
 007103EF    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007103F5    call        TStringGrid.SetCells
 007103FA    mov         eax,[007C2F8C];^'Exi classified'
 007103FF    push        eax
 00710400    mov         ecx,0C
 00710405    xor         edx,edx
 00710407    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071040D    call        TStringGrid.SetCells
 00710412    push        0
 00710414    mov         ecx,0E
 00710419    xor         edx,edx
 0071041B    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710421    call        TStringGrid.SetCells
 00710426    mov         eax,[007C2F90];^'Double knock'
 0071042B    push        eax
 0071042C    mov         ecx,0F
 00710431    xor         edx,edx
 00710433    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710439    call        TStringGrid.SetCells
 0071043E    push        0
 00710440    mov         ecx,13
 00710445    xor         edx,edx
 00710447    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071044D    call        TStringGrid.SetCells
 00710452    push        0
 00710454    mov         ecx,14
 00710459    xor         edx,edx
 0071045B    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710461    call        TStringGrid.SetCells
 00710466    push        0
 00710468    mov         ecx,15
 0071046D    xor         edx,edx
 0071046F    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710475    call        TStringGrid.SetCells
 0071047A    push        0
 0071047C    mov         ecx,16
 00710481    xor         edx,edx
 00710483    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710489    call        TStringGrid.SetCells
 0071048E    mov         eax,dword ptr [edi]
 00710490    cmp         eax,dword ptr ds:[7C2FA0];0x0 gvar_007C2FA0
>00710496    je          007104DA
 00710498    mov         esi,1
 0071049D    mov         eax,[007C2F94];^'Don''t care'
 007104A2    push        eax
 007104A3    mov         ecx,esi
 007104A5    mov         edx,1
 007104AA    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007104B0    call        TStringGrid.SetCells
 007104B5    mov         eax,[007C2F98];^'Don''t change'
 007104BA    push        eax
 007104BB    mov         ecx,esi
 007104BD    mov         edx,2
 007104C2    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007104C8    call        TStringGrid.SetCells
 007104CD    inc         esi
 007104CE    cmp         esi,18
>007104D1    jne         0071049D
 007104D3    mov         eax,dword ptr [edi]
 007104D5    mov         [007C2FA0],eax;gvar_007C2FA0
 007104DA    mov         eax,ebx
 007104DC    call        TAPFillDlg.SetupTypeMenu
 007104E1    mov         eax,ebx
 007104E3    call        00716EC0
 007104E8    xor         eax,eax
 007104EA    pop         edx
 007104EB    pop         ecx
 007104EC    pop         ecx
 007104ED    mov         dword ptr fs:[eax],edx
 007104F0    push        710512
 007104F5    lea         eax,[ebp-34]
 007104F8    mov         edx,3
 007104FD    call        @UStrArrayClr
 00710502    lea         eax,[ebp-18]
 00710505    call        @UStrClr
 0071050A    ret
>0071050B    jmp         @HandleFinally
>00710510    jmp         007104F5
 00710512    pop         edi
 00710513    pop         esi
 00710514    pop         ebx
 00710515    mov         esp,ebp
 00710517    pop         ebp
 00710518    ret
*}
end;

//0071051C
procedure TAPFillDlg.SetupTypeMenu;
begin
{*
 0071051C    push        ebx
 0071051D    push        esi
 0071051E    mov         esi,eax
 00710520    mov         ebx,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 00710526    mov         dl,1
 00710528    mov         eax,dword ptr [ebx+2D4];TFXADMenuFrame.miSysOmniSensor:TMenuItem
 0071052E    call        TMenuItem.SetVisible
 00710533    mov         dl,1
 00710535    mov         eax,dword ptr [ebx+2D8];TFXADMenuFrame.miSysLaserLZR1:TMenuItem
 0071053B    call        TMenuItem.SetVisible
 00710540    mov         edx,dword ptr ds:[7C4E24];^gvar_007CA83C
 00710546    movzx       edx,byte ptr [edx]
 00710549    mov         eax,dword ptr [ebx+2D8];TFXADMenuFrame.miSysLaserLZR1:TMenuItem
 0071054F    call        TMenuItem.SetEnabled
 00710554    mov         dl,1
 00710556    mov         eax,dword ptr [ebx+2DC];TFXADMenuFrame.miSysLaser7251:TMenuItem
 0071055C    call        TMenuItem.SetVisible
 00710561    mov         edx,dword ptr ds:[7C4E24];^gvar_007CA83C
 00710567    movzx       edx,byte ptr [edx]
 0071056A    mov         eax,dword ptr [ebx+2DC];TFXADMenuFrame.miSysLaser7251:TMenuItem
 00710570    call        TMenuItem.SetEnabled
 00710575    mov         dl,1
 00710577    mov         eax,dword ptr [ebx+2E0];TFXADMenuFrame.miSysMultiSensor:TMenuItem
 0071057D    call        TMenuItem.SetVisible
 00710582    mov         dl,1
 00710584    mov         eax,dword ptr [ebx+2E0];TFXADMenuFrame.miSysMultiSensor:TMenuItem
 0071058A    call        TMenuItem.SetEnabled
 0071058F    mov         dl,1
 00710591    mov         eax,dword ptr [ebx+310];TFXADMenuFrame.miSysControlModule:TMenuItem
 00710597    call        TMenuItem.SetVisible
 0071059C    mov         dl,1
 0071059E    mov         eax,dword ptr [ebx+330];TFXADMenuFrame.miModeDelayed:TMenuItem
 007105A4    call        TMenuItem.SetVisible
 007105A9    mov         edx,dword ptr ds:[7C42E4];^gvar_007CA83A
 007105AF    movzx       edx,byte ptr [edx]
 007105B2    mov         eax,dword ptr [ebx+330];TFXADMenuFrame.miModeDelayed:TMenuItem
 007105B8    call        TMenuItem.SetEnabled
 007105BD    mov         dl,1
 007105BF    mov         eax,dword ptr [ebx+33C];TFXADMenuFrame.miModeLocalAlarm:TMenuItem
 007105C5    call        TMenuItem.SetVisible
 007105CA    mov         dl,1
 007105CC    mov         eax,dword ptr [ebx+33C];TFXADMenuFrame.miModeLocalAlarm:TMenuItem
 007105D2    call        TMenuItem.SetEnabled
 007105D7    mov         edx,dword ptr ds:[7C4780];^gvar_007CA83F
 007105DD    movzx       edx,byte ptr [edx]
 007105E0    mov         eax,dword ptr [esi+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 007105E6    call        TFXADMenuFrame.EnableOrDisableApoTypeMenuItems
 007105EB    pop         esi
 007105EC    pop         ebx
 007105ED    ret
*}
end;

//007105F0
procedure TAPFillDlg.SapTypeClick(Sender:TObject);
begin
{*
 007105F0    push        ebp
 007105F1    mov         ebp,esp
 007105F3    xor         ecx,ecx
 007105F5    push        ecx
 007105F6    push        ecx
 007105F7    push        ecx
 007105F8    push        ecx
 007105F9    push        ecx
 007105FA    push        ecx
 007105FB    push        ebx
 007105FC    push        esi
 007105FD    push        edi
 007105FE    mov         esi,edx
 00710600    mov         ebx,eax
 00710602    xor         eax,eax
 00710604    push        ebp
 00710605    push        710ABB
 0071060A    push        dword ptr fs:[eax]
 0071060D    mov         dword ptr fs:[eax],esp
 00710610    mov         eax,esi
 00710612    mov         edx,dword ptr ds:[5AA664];TMenuItem
 00710618    call        @AsClass
 0071061D    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 00710620    cmp         eax,0FF
>00710625    jbe         0071062C
 00710627    call        @BoundErr
 0071062C    mov         byte ptr [ebp-1],al
 0071062F    cmp         byte ptr [ebp-1],0FA
>00710633    jne         00710688
 00710635    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071063B    cmp         dword ptr [eax+2A8],1;TStringGrid.FCurrent:TGridCoord
>00710642    jne         0071065A
 00710644    mov         edx,dword ptr ds:[7C2F94];^'Don''t care'
 0071064A    push        edx
 0071064B    mov         ecx,5
 00710650    mov         edx,1
 00710655    call        TStringGrid.SetCells
 0071065A    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710660    cmp         dword ptr [eax+2A8],2;TStringGrid.FCurrent:TGridCoord
>00710667    jne         00710A99
 0071066D    mov         edx,dword ptr ds:[7C2F98];^'Don''t change'
 00710673    push        edx
 00710674    mov         ecx,5
 00710679    mov         edx,2
 0071067E    call        TStringGrid.SetCells
>00710683    jmp         00710A99
 00710688    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071068E    cmp         dword ptr [eax+2A8],1;TStringGrid.FCurrent:TGridCoord
>00710695    jne         007106BE
 00710697    movzx       edx,byte ptr [ebp-1]
 0071069B    cmp         edx,2C
>0071069E    jbe         007106A5
 007106A0    call        @BoundErr
 007106A5    mov         ecx,dword ptr ds:[7C4298];^gvar_007C18F0:array[45] of ?
 007106AB    mov         edx,dword ptr [ecx+edx*4]
 007106AE    push        edx
 007106AF    mov         ecx,5
 007106B4    mov         edx,1
 007106B9    call        TStringGrid.SetCells
 007106BE    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007106C4    cmp         dword ptr [eax+2A8],2;TStringGrid.FCurrent:TGridCoord
>007106CB    jne         00710A99
 007106D1    mov         edi,1
 007106D6    mov         esi,dword ptr ds:[7C4A70];^gvar_007C34DF
 007106DC    inc         esi
 007106DD    movzx       eax,byte ptr [ebp-1]
 007106E1    cmp         eax,2C
>007106E4    jbe         007106EB
 007106E6    call        @BoundErr
 007106EB    imul        eax,eax,17
>007106EE    jno         007106F5
 007106F0    call        @IntOver
 007106F5    movzx       eax,byte ptr [esi+eax-1]
 007106FA    cmp         eax,15
>007106FD    ja          00710A76
 00710703    jmp         dword ptr [eax*4+71070A]
 00710703    dd          00710762
 00710703    dd          00710781
 00710703    dd          007107A0
 00710703    dd          007107D0
 00710703    dd          00710808
 00710703    dd          00710840
 00710703    dd          00710878
 00710703    dd          00710899
 00710703    dd          007108BA
 00710703    dd          007108DB
 00710703    dd          007108F5
 00710703    dd          00710912
 00710703    dd          0071092F
 00710703    dd          0071094C
 00710703    dd          0071096E
 00710703    dd          0071098F
 00710703    dd          007109B0
 00710703    dd          007109D1
 00710703    dd          00710A76
 00710703    dd          007109F3
 00710703    dd          00710A12
 00710703    dd          00710A43
 00710762    mov         edx,dword ptr ds:[7C2F98];^'Don''t change'
 00710768    push        edx
 00710769    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071076F    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710775    mov         ecx,edi
 00710777    call        TStringGrid.SetCells
>0071077C    jmp         00710A8E
 00710781    mov         edx,dword ptr ds:[7C2F98];^'Don''t change'
 00710787    push        edx
 00710788    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071078E    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710794    mov         ecx,edi
 00710796    call        TStringGrid.SetCells
>0071079B    jmp         00710A8E
 007107A0    movzx       edx,byte ptr [ebp-1]
 007107A4    cmp         edx,2C
>007107A7    jbe         007107AE
 007107A9    call        @BoundErr
 007107AE    mov         ecx,dword ptr ds:[7C4298];^gvar_007C18F0:array[45] of ?
 007107B4    mov         edx,dword ptr [ecx+edx*4]
 007107B7    push        edx
 007107B8    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007107BE    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007107C4    mov         ecx,edi
 007107C6    call        TStringGrid.SetCells
>007107CB    jmp         00710A8E
 007107D0    lea         ecx,[ebp-8]
 007107D3    movzx       edx,byte ptr [ebp-1]
 007107D7    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 007107DC    mov         eax,dword ptr [eax]
 007107DE    mov         eax,dword ptr [eax+14]
 007107E1    call        TFXPAD.SapDefaultFireLevel
 007107E6    mov         eax,dword ptr [ebp-8]
 007107E9    push        eax
 007107EA    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007107F0    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007107F6    mov         ecx,edi
 007107F8    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007107FE    call        TStringGrid.SetCells
>00710803    jmp         00710A8E
 00710808    lea         ecx,[ebp-0C]
 0071080B    movzx       edx,byte ptr [ebp-1]
 0071080F    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00710814    mov         eax,dword ptr [eax]
 00710816    mov         eax,dword ptr [eax+14]
 00710819    call        TFXPAD.SapDefaultPrewLevel
 0071081E    mov         eax,dword ptr [ebp-0C]
 00710821    push        eax
 00710822    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710828    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071082E    mov         ecx,edi
 00710830    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710836    call        TStringGrid.SetCells
>0071083B    jmp         00710A8E
 00710840    lea         ecx,[ebp-10]
 00710843    movzx       edx,byte ptr [ebp-1]
 00710847    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0071084C    mov         eax,dword ptr [eax]
 0071084E    mov         eax,dword ptr [eax+14]
 00710851    call        TFXPAD.SapDefaultServLevel
 00710856    mov         eax,dword ptr [ebp-10]
 00710859    push        eax
 0071085A    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710860    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710866    mov         ecx,edi
 00710868    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071086E    call        TStringGrid.SetCells
>00710873    jmp         00710A8E
 00710878    mov         edx,dword ptr ds:[7C4248];^gvar_007C23DC:array[34] of ?
 0071087E    mov         edx,dword ptr [edx]
 00710880    push        edx
 00710881    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710887    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071088D    mov         ecx,edi
 0071088F    call        TStringGrid.SetCells
>00710894    jmp         00710A8E
 00710899    mov         edx,dword ptr ds:[7C4690];^gvar_007C2518:array[26] of ?
 0071089F    mov         edx,dword ptr [edx]
 007108A1    push        edx
 007108A2    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007108A8    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007108AE    mov         ecx,edi
 007108B0    call        TStringGrid.SetCells
>007108B5    jmp         00710A8E
 007108BA    mov         edx,dword ptr ds:[7C498C];^gvar_007C2468:array[4] of ?
 007108C0    mov         edx,dword ptr [edx]
 007108C2    push        edx
 007108C3    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007108C9    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007108CF    mov         ecx,edi
 007108D1    call        TStringGrid.SetCells
>007108D6    jmp         00710A8E
 007108DB    push        0
 007108DD    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007108E3    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007108E9    mov         ecx,edi
 007108EB    call        TStringGrid.SetCells
>007108F0    jmp         00710A8E
 007108F5    push        710AD8;'0'
 007108FA    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710900    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710906    mov         ecx,edi
 00710908    call        TStringGrid.SetCells
>0071090D    jmp         00710A8E
 00710912    push        710AE8;'1'
 00710917    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071091D    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710923    mov         ecx,edi
 00710925    call        TStringGrid.SetCells
>0071092A    jmp         00710A8E
 0071092F    push        710AF8;'2'
 00710934    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071093A    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710940    mov         ecx,edi
 00710942    call        TStringGrid.SetCells
>00710947    jmp         00710A8E
 0071094C    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00710952    mov         edx,dword ptr [edx+4]
 00710955    push        edx
 00710956    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071095C    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710962    mov         ecx,edi
 00710964    call        TStringGrid.SetCells
>00710969    jmp         00710A8E
 0071096E    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00710974    mov         edx,dword ptr [edx]
 00710976    push        edx
 00710977    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071097D    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710983    mov         ecx,edi
 00710985    call        TStringGrid.SetCells
>0071098A    jmp         00710A8E
 0071098F    mov         edx,dword ptr ds:[7C4764];^gvar_007C2478:array[6] of ?
 00710995    mov         edx,dword ptr [edx]
 00710997    push        edx
 00710998    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071099E    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007109A4    mov         ecx,edi
 007109A6    call        TStringGrid.SetCells
>007109AB    jmp         00710A8E
 007109B0    mov         edx,dword ptr ds:[7C46CC];^^'Monitored':array[3] of ?
 007109B6    mov         edx,dword ptr [edx]
 007109B8    push        edx
 007109B9    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007109BF    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007109C5    mov         ecx,edi
 007109C7    call        TStringGrid.SetCells
>007109CC    jmp         00710A8E
 007109D1    mov         edx,dword ptr ds:[7C46CC];^^'Monitored':array[3] of ?
 007109D7    mov         edx,dword ptr [edx+4]
 007109DA    push        edx
 007109DB    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007109E1    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007109E7    mov         ecx,edi
 007109E9    call        TStringGrid.SetCells
>007109EE    jmp         00710A8E
 007109F3    mov         edx,dword ptr ds:[7C4818];^^'Continuous':array[4] of ?
 007109F9    mov         edx,dword ptr [edx+0C]
 007109FC    push        edx
 007109FD    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710A03    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710A09    mov         ecx,edi
 00710A0B    call        TStringGrid.SetCells
>00710A10    jmp         00710A8E
 00710A12    lea         edx,[ebp-14]
 00710A15    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00710A1A    mov         eax,dword ptr [eax]
 00710A1C    mov         eax,dword ptr [eax+14]
 00710A1F    call        TFXPAD.SapDefaultSndrVolumeStr
 00710A24    mov         eax,dword ptr [ebp-14]
 00710A27    push        eax
 00710A28    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710A2E    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710A34    mov         ecx,edi
 00710A36    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710A3C    call        TStringGrid.SetCells
>00710A41    jmp         00710A8E
 00710A43    lea         ecx,[ebp-18]
 00710A46    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00710A4B    mov         eax,dword ptr [eax]
 00710A4D    mov         eax,dword ptr [eax+14]
 00710A50    xor         edx,edx
 00710A52    call        TFXPAD.SapEnvironIntToStr
 00710A57    mov         eax,dword ptr [ebp-18]
 00710A5A    push        eax
 00710A5B    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710A61    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710A67    mov         ecx,edi
 00710A69    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710A6F    call        TStringGrid.SetCells
>00710A74    jmp         00710A8E
 00710A76    push        710B08;'ERR'
 00710A7B    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710A81    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710A87    mov         ecx,edi
 00710A89    call        TStringGrid.SetCells
 00710A8E    inc         edi
 00710A8F    inc         esi
 00710A90    cmp         edi,18
>00710A93    jne         007106DD
 00710A99    mov         eax,ebx
 00710A9B    call        00716EC0
 00710AA0    xor         eax,eax
 00710AA2    pop         edx
 00710AA3    pop         ecx
 00710AA4    pop         ecx
 00710AA5    mov         dword ptr fs:[eax],edx
 00710AA8    push        710AC2
 00710AAD    lea         eax,[ebp-18]
 00710AB0    mov         edx,5
 00710AB5    call        @UStrArrayClr
 00710ABA    ret
>00710ABB    jmp         @HandleFinally
>00710AC0    jmp         00710AAD
 00710AC2    pop         edi
 00710AC3    pop         esi
 00710AC4    pop         ebx
 00710AC5    mov         esp,ebp
 00710AC7    pop         ebp
 00710AC8    ret
*}
end;

//00710B10
procedure TAPFillDlg.SapSysTypeClick(Sender:TObject);
begin
{*
 00710B10    push        ebp
 00710B11    mov         ebp,esp
 00710B13    xor         ecx,ecx
 00710B15    push        ecx
 00710B16    push        ecx
 00710B17    push        ecx
 00710B18    push        ecx
 00710B19    push        ebx
 00710B1A    push        esi
 00710B1B    push        edi
 00710B1C    mov         esi,edx
 00710B1E    mov         ebx,eax
 00710B20    xor         eax,eax
 00710B22    push        ebp
 00710B23    push        710F7A
 00710B28    push        dword ptr fs:[eax]
 00710B2B    mov         dword ptr fs:[eax],esp
 00710B2E    mov         eax,esi
 00710B30    mov         edx,dword ptr ds:[5AA664];TMenuItem
 00710B36    call        @AsClass
 00710B3B    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 00710B3E    cmp         eax,0FF
>00710B43    jbe         00710B4A
 00710B45    call        @BoundErr
 00710B4A    movzx       eax,al
 00710B4D    cmp         eax,2C
>00710B50    jbe         00710B57
 00710B52    call        @BoundErr
 00710B57    mov         edx,dword ptr ds:[7C479C];^gvar_007C18C3
 00710B5D    movzx       eax,byte ptr [edx+eax]
 00710B61    mov         byte ptr [ebp-1],al
 00710B64    cmp         byte ptr [ebp-1],0FA
>00710B68    jne         00710BBD
 00710B6A    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710B70    cmp         dword ptr [eax+2A8],1;TStringGrid.FCurrent:TGridCoord
>00710B77    jne         00710B8F
 00710B79    mov         edx,dword ptr ds:[7C2F94];^'Don''t care'
 00710B7F    push        edx
 00710B80    mov         ecx,5
 00710B85    mov         edx,1
 00710B8A    call        TStringGrid.SetCells
 00710B8F    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710B95    cmp         dword ptr [eax+2A8],2;TStringGrid.FCurrent:TGridCoord
>00710B9C    jne         00710F58
 00710BA2    mov         edx,dword ptr ds:[7C2F98];^'Don''t change'
 00710BA8    push        edx
 00710BA9    mov         ecx,5
 00710BAE    mov         edx,2
 00710BB3    call        TStringGrid.SetCells
>00710BB8    jmp         00710F58
 00710BBD    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710BC3    cmp         dword ptr [eax+2A8],1;TStringGrid.FCurrent:TGridCoord
>00710BCA    jne         00710BF3
 00710BCC    movzx       edx,byte ptr [ebp-1]
 00710BD0    cmp         edx,0F
>00710BD3    jbe         00710BDA
 00710BD5    call        @BoundErr
 00710BDA    mov         ecx,dword ptr ds:[7C4890];^gvar_007C19A4:array[16] of ?
 00710BE0    mov         edx,dword ptr [ecx+edx*4]
 00710BE3    push        edx
 00710BE4    mov         ecx,5
 00710BE9    mov         edx,1
 00710BEE    call        TStringGrid.SetCells
 00710BF3    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710BF9    cmp         dword ptr [eax+2A8],2;TStringGrid.FCurrent:TGridCoord
>00710C00    jne         00710F58
 00710C06    mov         edi,1
 00710C0B    mov         esi,dword ptr ds:[7C4C5C];^gvar_007C38EA
 00710C11    inc         esi
 00710C12    movzx       eax,byte ptr [ebp-1]
 00710C16    cmp         eax,0F
>00710C19    jbe         00710C20
 00710C1B    call        @BoundErr
 00710C20    imul        eax,eax,17
>00710C23    jno         00710C2A
 00710C25    call        @IntOver
 00710C2A    movzx       eax,byte ptr [esi+eax-1]
 00710C2F    cmp         eax,13
>00710C32    ja          00710F35
 00710C38    jmp         dword ptr [eax*4+710C3F]
 00710C38    dd          00710C8F
 00710C38    dd          00710CAE
 00710C38    dd          00710CCD
 00710C38    dd          00710CFD
 00710C38    dd          00710D35
 00710C38    dd          00710D6D
 00710C38    dd          00710DA5
 00710C38    dd          00710DC6
 00710C38    dd          00710DE7
 00710C38    dd          00710E08
 00710C38    dd          00710E22
 00710C38    dd          00710E3F
 00710C38    dd          00710E5C
 00710C38    dd          00710E79
 00710C38    dd          00710E9B
 00710C38    dd          00710EBC
 00710C38    dd          00710EDA
 00710C38    dd          00710EF8
 00710C38    dd          00710F35
 00710C38    dd          00710F17
 00710C8F    mov         edx,dword ptr ds:[7C2F98];^'Don''t change'
 00710C95    push        edx
 00710C96    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710C9C    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710CA2    mov         ecx,edi
 00710CA4    call        TStringGrid.SetCells
>00710CA9    jmp         00710F4D
 00710CAE    mov         edx,dword ptr ds:[7C2F98];^'Don''t change'
 00710CB4    push        edx
 00710CB5    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710CBB    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710CC1    mov         ecx,edi
 00710CC3    call        TStringGrid.SetCells
>00710CC8    jmp         00710F4D
 00710CCD    movzx       edx,byte ptr [ebp-1]
 00710CD1    cmp         edx,0F
>00710CD4    jbe         00710CDB
 00710CD6    call        @BoundErr
 00710CDB    mov         ecx,dword ptr ds:[7C4890];^gvar_007C19A4:array[16] of ?
 00710CE1    mov         edx,dword ptr [ecx+edx*4]
 00710CE4    push        edx
 00710CE5    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710CEB    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710CF1    mov         ecx,edi
 00710CF3    call        TStringGrid.SetCells
>00710CF8    jmp         00710F4D
 00710CFD    lea         ecx,[ebp-8]
 00710D00    movzx       edx,byte ptr [ebp-1]
 00710D04    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00710D09    mov         eax,dword ptr [eax]
 00710D0B    mov         eax,dword ptr [eax+14]
 00710D0E    call        TFXPAD.SysDefaultFireLevel
 00710D13    mov         eax,dword ptr [ebp-8]
 00710D16    push        eax
 00710D17    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710D1D    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710D23    mov         ecx,edi
 00710D25    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710D2B    call        TStringGrid.SetCells
>00710D30    jmp         00710F4D
 00710D35    lea         ecx,[ebp-0C]
 00710D38    movzx       edx,byte ptr [ebp-1]
 00710D3C    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00710D41    mov         eax,dword ptr [eax]
 00710D43    mov         eax,dword ptr [eax+14]
 00710D46    call        TFXPAD.SysDefaultPrewLevel
 00710D4B    mov         eax,dword ptr [ebp-0C]
 00710D4E    push        eax
 00710D4F    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710D55    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710D5B    mov         ecx,edi
 00710D5D    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710D63    call        TStringGrid.SetCells
>00710D68    jmp         00710F4D
 00710D6D    lea         ecx,[ebp-10]
 00710D70    movzx       edx,byte ptr [ebp-1]
 00710D74    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00710D79    mov         eax,dword ptr [eax]
 00710D7B    mov         eax,dword ptr [eax+14]
 00710D7E    call        TFXPAD.SysDefaultServLevel
 00710D83    mov         eax,dword ptr [ebp-10]
 00710D86    push        eax
 00710D87    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710D8D    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710D93    mov         ecx,edi
 00710D95    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710D9B    call        TStringGrid.SetCells
>00710DA0    jmp         00710F4D
 00710DA5    mov         edx,dword ptr ds:[7C4248];^gvar_007C23DC:array[34] of ?
 00710DAB    mov         edx,dword ptr [edx]
 00710DAD    push        edx
 00710DAE    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710DB4    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710DBA    mov         ecx,edi
 00710DBC    call        TStringGrid.SetCells
>00710DC1    jmp         00710F4D
 00710DC6    mov         edx,dword ptr ds:[7C4690];^gvar_007C2518:array[26] of ?
 00710DCC    mov         edx,dword ptr [edx]
 00710DCE    push        edx
 00710DCF    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710DD5    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710DDB    mov         ecx,edi
 00710DDD    call        TStringGrid.SetCells
>00710DE2    jmp         00710F4D
 00710DE7    mov         edx,dword ptr ds:[7C498C];^gvar_007C2468:array[4] of ?
 00710DED    mov         edx,dword ptr [edx]
 00710DEF    push        edx
 00710DF0    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710DF6    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710DFC    mov         ecx,edi
 00710DFE    call        TStringGrid.SetCells
>00710E03    jmp         00710F4D
 00710E08    push        0
 00710E0A    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710E10    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710E16    mov         ecx,edi
 00710E18    call        TStringGrid.SetCells
>00710E1D    jmp         00710F4D
 00710E22    push        710F94;'0'
 00710E27    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710E2D    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710E33    mov         ecx,edi
 00710E35    call        TStringGrid.SetCells
>00710E3A    jmp         00710F4D
 00710E3F    push        710FA4;'1'
 00710E44    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710E4A    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710E50    mov         ecx,edi
 00710E52    call        TStringGrid.SetCells
>00710E57    jmp         00710F4D
 00710E5C    push        710FB4;'2'
 00710E61    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710E67    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710E6D    mov         ecx,edi
 00710E6F    call        TStringGrid.SetCells
>00710E74    jmp         00710F4D
 00710E79    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00710E7F    mov         edx,dword ptr [edx+4]
 00710E82    push        edx
 00710E83    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710E89    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710E8F    mov         ecx,edi
 00710E91    call        TStringGrid.SetCells
>00710E96    jmp         00710F4D
 00710E9B    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00710EA1    mov         edx,dword ptr [edx]
 00710EA3    push        edx
 00710EA4    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710EAA    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710EB0    mov         ecx,edi
 00710EB2    call        TStringGrid.SetCells
>00710EB7    jmp         00710F4D
 00710EBC    mov         edx,dword ptr ds:[7C4764];^gvar_007C2478:array[6] of ?
 00710EC2    mov         edx,dword ptr [edx]
 00710EC4    push        edx
 00710EC5    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710ECB    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710ED1    mov         ecx,edi
 00710ED3    call        TStringGrid.SetCells
>00710ED8    jmp         00710F4D
 00710EDA    mov         edx,dword ptr ds:[7C46CC];^^'Monitored':array[3] of ?
 00710EE0    mov         edx,dword ptr [edx]
 00710EE2    push        edx
 00710EE3    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710EE9    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710EEF    mov         ecx,edi
 00710EF1    call        TStringGrid.SetCells
>00710EF6    jmp         00710F4D
 00710EF8    mov         edx,dword ptr ds:[7C46CC];^^'Monitored':array[3] of ?
 00710EFE    mov         edx,dword ptr [edx+4]
 00710F01    push        edx
 00710F02    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710F08    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710F0E    mov         ecx,edi
 00710F10    call        TStringGrid.SetCells
>00710F15    jmp         00710F4D
 00710F17    mov         edx,dword ptr ds:[7C4818];^^'Continuous':array[4] of ?
 00710F1D    mov         edx,dword ptr [edx]
 00710F1F    push        edx
 00710F20    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710F26    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710F2C    mov         ecx,edi
 00710F2E    call        TStringGrid.SetCells
>00710F33    jmp         00710F4D
 00710F35    push        710FC4;'ERR'
 00710F3A    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00710F40    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00710F46    mov         ecx,edi
 00710F48    call        TStringGrid.SetCells
 00710F4D    inc         edi
 00710F4E    inc         esi
 00710F4F    cmp         edi,18
>00710F52    jne         00710C12
 00710F58    mov         eax,ebx
 00710F5A    call        00716EC0
 00710F5F    xor         eax,eax
 00710F61    pop         edx
 00710F62    pop         ecx
 00710F63    pop         ecx
 00710F64    mov         dword ptr fs:[eax],edx
 00710F67    push        710F81
 00710F6C    lea         eax,[ebp-10]
 00710F6F    mov         edx,3
 00710F74    call        @UStrArrayClr
 00710F79    ret
>00710F7A    jmp         @HandleFinally
>00710F7F    jmp         00710F6C
 00710F81    pop         edi
 00710F82    pop         esi
 00710F83    pop         ebx
 00710F84    mov         esp,ebp
 00710F86    pop         ebp
 00710F87    ret
*}
end;

//00710FCC
procedure TAPFillDlg.SapEnvironmentClick(Sender:TObject);
begin
{*
 00710FCC    push        ebx
 00710FCD    push        esi
 00710FCE    push        edi
 00710FCF    push        ebp
 00710FD0    mov         edi,edx
 00710FD2    mov         ebx,eax
 00710FD4    mov         eax,edi
 00710FD6    mov         edx,dword ptr ds:[5AA664];TMenuItem
 00710FDC    call        @AsClass
 00710FE1    mov         ebp,eax
 00710FE3    cmp         byte ptr [ebp+45],0;TMenuItem.FEnabled:Boolean
>00710FE7    jne         00710FF5
 00710FE9    push        30
 00710FEB    call        user32.MessageBeep
>00710FF0    jmp         0071116E
 00710FF5    mov         eax,dword ptr [ebp+0C];TMenuItem.FTag:NativeInt
 00710FF8    mov         ecx,0A
 00710FFD    cdq
 00710FFE    idiv        eax,ecx
 00711000    mov         esi,eax
 00711002    mov         eax,esi
 00711004    sub         eax,9
>00711007    jae         00711036
 00711009    cmp         esi,8
>0071100C    jbe         00711013
 0071100E    call        @BoundErr
 00711013    mov         edx,dword ptr ds:[7C4BB8];^gvar_007C2384:array[9] of ?
 00711019    mov         edx,dword ptr [edx+esi*4]
 0071101C    push        edx
 0071101D    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711023    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00711029    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071102F    call        TStringGrid.SetCells
>00711034    jmp         00711052
 00711036    push        711180;'ERR'
 0071103B    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711041    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00711047    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071104D    call        TStringGrid.SetCells
 00711052    mov         eax,dword ptr [ebp+0C];TMenuItem.FTag:NativeInt
 00711055    mov         ecx,0A
 0071105A    cdq
 0071105B    idiv        eax,ecx
 0071105D    mov         esi,edx
 0071105F    mov         eax,esi
 00711061    sub         eax,1
>00711064    jb          0071116E
 0071106A    sub         eax,0A
>0071106D    jb          00711074
>0071106F    jmp         00711102
 00711074    mov         edi,esi
 00711076    cmp         edi,0A
>00711079    jbe         00711080
 0071107B    call        @BoundErr
 00711080    mov         edx,dword ptr ds:[7C4C40];^gvar_007C2840:array[11] of ?
 00711086    mov         edx,dword ptr [edx+edi*4]
 00711089    push        edx
 0071108A    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711090    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711096    mov         ecx,9
 0071109B    call        TStringGrid.SetCells
 007110A0    mov         edx,dword ptr ds:[7C4C40];^gvar_007C2840:array[11] of ?
 007110A6    mov         edx,dword ptr [edx+edi*4]
 007110A9    push        edx
 007110AA    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007110B0    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007110B6    mov         ecx,0A
 007110BB    call        TStringGrid.SetCells
 007110C0    mov         edx,dword ptr ds:[7C4C40];^gvar_007C2840:array[11] of ?
 007110C6    mov         edx,dword ptr [edx+edi*4]
 007110C9    push        edx
 007110CA    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007110D0    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007110D6    mov         ecx,0B
 007110DB    call        TStringGrid.SetCells
 007110E0    mov         edx,dword ptr ds:[7C4C40];^gvar_007C2840:array[11] of ?
 007110E6    mov         edx,dword ptr [edx+edi*4]
 007110E9    push        edx
 007110EA    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007110F0    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007110F6    mov         ecx,0C
 007110FB    call        TStringGrid.SetCells
>00711100    jmp         0071116E
 00711102    push        711180;'ERR'
 00711107    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071110D    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711113    mov         ecx,9
 00711118    call        TStringGrid.SetCells
 0071111D    push        711180;'ERR'
 00711122    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711128    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071112E    mov         ecx,0A
 00711133    call        TStringGrid.SetCells
 00711138    push        711180;'ERR'
 0071113D    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711143    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711149    mov         ecx,0B
 0071114E    call        TStringGrid.SetCells
 00711153    push        711180;'ERR'
 00711158    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071115E    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711164    mov         ecx,0C
 00711169    call        TStringGrid.SetCells
 0071116E    pop         ebp
 0071116F    pop         edi
 00711170    pop         esi
 00711171    pop         ebx
 00711172    ret
*}
end;

//00711188
procedure TAPFillDlg.SapSounderModeClick(Sender:TObject);
begin
{*
 00711188    push        ebx
 00711189    push        esi
 0071118A    push        edi
 0071118B    mov         esi,edx
 0071118D    mov         ebx,eax
 0071118F    mov         eax,esi
 00711191    mov         edx,dword ptr ds:[5AA664];TMenuItem
 00711197    call        @AsClass
 0071119C    mov         edi,eax
 0071119E    cmp         byte ptr [edi+45],0;TMenuItem.FEnabled:Boolean
>007111A2    jne         007111B0
 007111A4    push        30
 007111A6    call        user32.MessageBeep
>007111AB    jmp         00711257
 007111B0    mov         eax,dword ptr [edi+0C];TMenuItem.FTag:NativeInt
 007111B3    mov         edx,eax
 007111B5    add         edx,0FFFFFF9B
 007111B8    sub         edx,21
>007111BB    jb          007111C7
 007111BD    add         edx,0FFFFFFBD
 007111C0    sub         edx,21
>007111C3    jb          007111FF
>007111C5    jmp         0071123B
 007111C7    add         eax,0FFFFFF9B
 007111CA    cmp         eax,20
>007111CD    jbe         007111D4
 007111CF    call        @BoundErr
 007111D4    add         eax,65
 007111D7    mov         ecx,dword ptr ds:[7C4BE0];^gvar_007C227C:array[33] of ?
 007111DD    mov         eax,dword ptr [ecx+eax*4-194]
 007111E4    push        eax
 007111E5    mov         edx,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007111EB    mov         ecx,dword ptr [edx+2AC];TStringGrid.FDefaultRowHeight:Integer
 007111F1    mov         eax,dword ptr [edx+2A8];TStringGrid.FCurrent:TGridCoord
 007111F7    xchg        eax,edx
 007111F8    call        TStringGrid.SetCells
>007111FD    jmp         00711257
 007111FF    add         eax,0FFFFFF37
 00711204    cmp         eax,20
>00711207    jbe         0071120E
 00711209    call        @BoundErr
 0071120E    add         eax,0C9
 00711213    mov         ecx,dword ptr ds:[7C4AF4];^gvar_007C2300:array[33] of ?
 00711219    mov         eax,dword ptr [ecx+eax*4-324]
 00711220    push        eax
 00711221    mov         edx,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711227    mov         ecx,dword ptr [edx+2AC];TStringGrid.FDefaultRowHeight:Integer
 0071122D    mov         eax,dword ptr [edx+2A8];TStringGrid.FCurrent:TGridCoord
 00711233    xchg        eax,edx
 00711234    call        TStringGrid.SetCells
>00711239    jmp         00711257
 0071123B    push        711268;'ERR'
 00711240    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711246    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 0071124C    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711252    call        TStringGrid.SetCells
 00711257    pop         edi
 00711258    pop         esi
 00711259    pop         ebx
 0071125A    ret
*}
end;

//00711270
procedure TAPFillDlg.ApoTypeClick(Sender:TObject);
begin
{*
 00711270    push        ebp
 00711271    mov         ebp,esp
 00711273    xor         ecx,ecx
 00711275    push        ecx
 00711276    push        ecx
 00711277    push        ecx
 00711278    push        ecx
 00711279    push        ecx
 0071127A    push        ecx
 0071127B    push        ebx
 0071127C    push        esi
 0071127D    push        edi
 0071127E    mov         esi,edx
 00711280    mov         ebx,eax
 00711282    xor         eax,eax
 00711284    push        ebp
 00711285    push        711717
 0071128A    push        dword ptr fs:[eax]
 0071128D    mov         dword ptr fs:[eax],esp
 00711290    mov         eax,esi
 00711292    mov         edx,dword ptr ds:[5AA664];TMenuItem
 00711298    call        @AsClass
 0071129D    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 007112A0    cmp         eax,0FF
>007112A5    jbe         007112AC
 007112A7    call        @BoundErr
 007112AC    mov         byte ptr [ebp-1],al
 007112AF    cmp         byte ptr [ebp-1],0FA
>007112B3    jne         00711308
 007112B5    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007112BB    cmp         dword ptr [eax+2A8],1;TStringGrid.FCurrent:TGridCoord
>007112C2    jne         007112DA
 007112C4    mov         edx,dword ptr ds:[7C2F94];^'Don''t care'
 007112CA    push        edx
 007112CB    mov         ecx,5
 007112D0    mov         edx,1
 007112D5    call        TStringGrid.SetCells
 007112DA    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007112E0    cmp         dword ptr [eax+2A8],2;TStringGrid.FCurrent:TGridCoord
>007112E7    jne         007116F5
 007112ED    mov         edx,dword ptr ds:[7C2F98];^'Don''t change'
 007112F3    push        edx
 007112F4    mov         ecx,5
 007112F9    mov         edx,2
 007112FE    call        TStringGrid.SetCells
>00711303    jmp         007116F5
 00711308    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071130E    cmp         dword ptr [eax+2A8],1;TStringGrid.FCurrent:TGridCoord
>00711315    jne         0071133E
 00711317    movzx       edx,byte ptr [ebp-1]
 0071131B    cmp         edx,1C
>0071131E    jbe         00711325
 00711320    call        @BoundErr
 00711325    mov         ecx,dword ptr ds:[7C4540];^^'Not in use':array[29] of ?
 0071132B    mov         edx,dword ptr [ecx+edx*4]
 0071132E    push        edx
 0071132F    mov         ecx,5
 00711334    mov         edx,1
 00711339    call        TStringGrid.SetCells
 0071133E    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711344    cmp         dword ptr [eax+2A8],2;TStringGrid.FCurrent:TGridCoord
>0071134B    jne         007116F5
 00711351    mov         edi,1
 00711356    mov         esi,dword ptr ds:[7C4D24];^gvar_007C3244
 0071135C    inc         esi
 0071135D    movzx       eax,byte ptr [ebp-1]
 00711361    cmp         eax,1C
>00711364    jbe         0071136B
 00711366    call        @BoundErr
 0071136B    imul        eax,eax,17
>0071136E    jno         00711375
 00711370    call        @IntOver
 00711375    movzx       eax,byte ptr [esi+eax-1]
 0071137A    cmp         eax,14
>0071137D    ja          007116D2
 00711383    jmp         dword ptr [eax*4+71138A]
 00711383    dd          007113DE
 00711383    dd          007113FD
 00711383    dd          0071141C
 00711383    dd          0071144C
 00711383    dd          00711484
 00711383    dd          007114BC
 00711383    dd          007114F4
 00711383    dd          00711515
 00711383    dd          00711536
 00711383    dd          00711557
 00711383    dd          00711571
 00711383    dd          0071158E
 00711383    dd          007115AB
 00711383    dd          007115C8
 00711383    dd          007115EA
 00711383    dd          0071160B
 00711383    dd          0071162C
 00711383    dd          0071164D
 00711383    dd          007116D2
 00711383    dd          0071166C
 00711383    dd          007116A1
 007113DE    mov         edx,dword ptr ds:[7C2F98];^'Don''t change'
 007113E4    push        edx
 007113E5    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007113EB    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007113F1    mov         ecx,edi
 007113F3    call        TStringGrid.SetCells
>007113F8    jmp         007116EA
 007113FD    mov         edx,dword ptr ds:[7C2F98];^'Don''t change'
 00711403    push        edx
 00711404    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071140A    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711410    mov         ecx,edi
 00711412    call        TStringGrid.SetCells
>00711417    jmp         007116EA
 0071141C    movzx       edx,byte ptr [ebp-1]
 00711420    cmp         edx,1C
>00711423    jbe         0071142A
 00711425    call        @BoundErr
 0071142A    mov         ecx,dword ptr ds:[7C4540];^^'Not in use':array[29] of ?
 00711430    mov         edx,dword ptr [ecx+edx*4]
 00711433    push        edx
 00711434    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071143A    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711440    mov         ecx,edi
 00711442    call        TStringGrid.SetCells
>00711447    jmp         007116EA
 0071144C    lea         ecx,[ebp-8]
 0071144F    movzx       edx,byte ptr [ebp-1]
 00711453    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00711458    mov         eax,dword ptr [eax]
 0071145A    mov         eax,dword ptr [eax+14]
 0071145D    call        TFXPAD.ApoDefaultFireLevel
 00711462    mov         eax,dword ptr [ebp-8]
 00711465    push        eax
 00711466    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071146C    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711472    mov         ecx,edi
 00711474    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071147A    call        TStringGrid.SetCells
>0071147F    jmp         007116EA
 00711484    lea         ecx,[ebp-0C]
 00711487    movzx       edx,byte ptr [ebp-1]
 0071148B    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00711490    mov         eax,dword ptr [eax]
 00711492    mov         eax,dword ptr [eax+14]
 00711495    call        TFXPAD.ApoDefaultPrewLevel
 0071149A    mov         eax,dword ptr [ebp-0C]
 0071149D    push        eax
 0071149E    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007114A4    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007114AA    mov         ecx,edi
 007114AC    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007114B2    call        TStringGrid.SetCells
>007114B7    jmp         007116EA
 007114BC    lea         ecx,[ebp-10]
 007114BF    movzx       edx,byte ptr [ebp-1]
 007114C3    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 007114C8    mov         eax,dword ptr [eax]
 007114CA    mov         eax,dword ptr [eax+14]
 007114CD    call        TFXPAD.ApoDefaultServLevel
 007114D2    mov         eax,dword ptr [ebp-10]
 007114D5    push        eax
 007114D6    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007114DC    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007114E2    mov         ecx,edi
 007114E4    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007114EA    call        TStringGrid.SetCells
>007114EF    jmp         007116EA
 007114F4    mov         edx,dword ptr ds:[7C4248];^gvar_007C23DC:array[34] of ?
 007114FA    mov         edx,dword ptr [edx]
 007114FC    push        edx
 007114FD    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711503    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711509    mov         ecx,edi
 0071150B    call        TStringGrid.SetCells
>00711510    jmp         007116EA
 00711515    mov         edx,dword ptr ds:[7C4690];^gvar_007C2518:array[26] of ?
 0071151B    mov         edx,dword ptr [edx]
 0071151D    push        edx
 0071151E    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711524    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071152A    mov         ecx,edi
 0071152C    call        TStringGrid.SetCells
>00711531    jmp         007116EA
 00711536    mov         edx,dword ptr ds:[7C498C];^gvar_007C2468:array[4] of ?
 0071153C    mov         edx,dword ptr [edx]
 0071153E    push        edx
 0071153F    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711545    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071154B    mov         ecx,edi
 0071154D    call        TStringGrid.SetCells
>00711552    jmp         007116EA
 00711557    push        0
 00711559    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071155F    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711565    mov         ecx,edi
 00711567    call        TStringGrid.SetCells
>0071156C    jmp         007116EA
 00711571    push        711734;'0'
 00711576    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071157C    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711582    mov         ecx,edi
 00711584    call        TStringGrid.SetCells
>00711589    jmp         007116EA
 0071158E    push        711744;'1'
 00711593    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711599    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071159F    mov         ecx,edi
 007115A1    call        TStringGrid.SetCells
>007115A6    jmp         007116EA
 007115AB    push        711754;'2'
 007115B0    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007115B6    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007115BC    mov         ecx,edi
 007115BE    call        TStringGrid.SetCells
>007115C3    jmp         007116EA
 007115C8    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 007115CE    mov         edx,dword ptr [edx+4]
 007115D1    push        edx
 007115D2    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007115D8    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007115DE    mov         ecx,edi
 007115E0    call        TStringGrid.SetCells
>007115E5    jmp         007116EA
 007115EA    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 007115F0    mov         edx,dword ptr [edx]
 007115F2    push        edx
 007115F3    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007115F9    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007115FF    mov         ecx,edi
 00711601    call        TStringGrid.SetCells
>00711606    jmp         007116EA
 0071160B    mov         edx,dword ptr ds:[7C4764];^gvar_007C2478:array[6] of ?
 00711611    mov         edx,dword ptr [edx]
 00711613    push        edx
 00711614    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071161A    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711620    mov         ecx,edi
 00711622    call        TStringGrid.SetCells
>00711627    jmp         007116EA
 0071162C    mov         edx,dword ptr ds:[7C46CC];^^'Monitored':array[3] of ?
 00711632    mov         edx,dword ptr [edx]
 00711634    push        edx
 00711635    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071163B    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711641    mov         ecx,edi
 00711643    call        TStringGrid.SetCells
>00711648    jmp         007116EA
 0071164D    mov         edx,dword ptr ds:[7C46CC];^^'Monitored':array[3] of ?
 00711653    mov         edx,dword ptr [edx+4]
 00711656    push        edx
 00711657    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071165D    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711663    mov         ecx,edi
 00711665    call        TStringGrid.SetCells
>0071166A    jmp         007116EA
 0071166C    lea         ecx,[ebp-14]
 0071166F    movzx       edx,byte ptr [ebp-1]
 00711673    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00711678    mov         eax,dword ptr [eax]
 0071167A    mov         eax,dword ptr [eax+14]
 0071167D    call        TFXPAD.ApoDefaultSndrMode
 00711682    mov         eax,dword ptr [ebp-14]
 00711685    push        eax
 00711686    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071168C    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711692    mov         ecx,edi
 00711694    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071169A    call        TStringGrid.SetCells
>0071169F    jmp         007116EA
 007116A1    lea         edx,[ebp-18]
 007116A4    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 007116A9    mov         eax,dword ptr [eax]
 007116AB    mov         eax,dword ptr [eax+14]
 007116AE    call        TFXPAD.ApoDefaultSndrVolumeStr
 007116B3    mov         eax,dword ptr [ebp-18]
 007116B6    push        eax
 007116B7    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007116BD    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007116C3    mov         ecx,edi
 007116C5    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007116CB    call        TStringGrid.SetCells
>007116D0    jmp         007116EA
 007116D2    push        711764;'ERR'
 007116D7    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007116DD    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007116E3    mov         ecx,edi
 007116E5    call        TStringGrid.SetCells
 007116EA    inc         edi
 007116EB    inc         esi
 007116EC    cmp         edi,18
>007116EF    jne         0071135D
 007116F5    mov         eax,ebx
 007116F7    call        00716EC0
 007116FC    xor         eax,eax
 007116FE    pop         edx
 007116FF    pop         ecx
 00711700    pop         ecx
 00711701    mov         dword ptr fs:[eax],edx
 00711704    push        71171E
 00711709    lea         eax,[ebp-18]
 0071170C    mov         edx,5
 00711711    call        @UStrArrayClr
 00711716    ret
>00711717    jmp         @HandleFinally
>0071171C    jmp         00711709
 0071171E    pop         edi
 0071171F    pop         esi
 00711720    pop         ebx
 00711721    mov         esp,ebp
 00711723    pop         ebp
 00711724    ret
*}
end;

//0071176C
procedure TAPFillDlg.ApoSubTypeClick(Sender:TObject);
begin
{*
 0071176C    push        ebx
 0071176D    push        esi
 0071176E    push        edi
 0071176F    push        ebp
 00711770    push        ecx
 00711771    mov         esi,edx
 00711773    mov         ebx,eax
 00711775    mov         eax,esi
 00711777    mov         edx,dword ptr ds:[5AA664];TMenuItem
 0071177D    call        @AsClass
 00711782    mov         edi,eax
 00711784    mov         eax,dword ptr [edi+70];TMenuItem.FParent:TMenuItem
 00711787    mov         ebp,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 0071178A    mov         eax,dword ptr [edi+0C];TMenuItem.FTag:NativeInt
 0071178D    and         eax,0FF
 00711792    mov         dword ptr [esp],eax
 00711795    mov         edx,dword ptr [edi+70];TMenuItem.FParent:TMenuItem
 00711798    mov         eax,ebx
 0071179A    call        TAPFillDlg.ApoTypeClick
 0071179F    cmp         ebp,1C
>007117A2    ja          00711A99
 007117A8    movzx       ebp,byte ptr [ebp+7117B6]
 007117AF    jmp         dword ptr [ebp*4+7117D3]
 007117AF    db          0
 007117AF    db          1
 007117AF    db          2
 007117AF    db          3
 007117AF    db          4
 007117AF    db          5
 007117AF    db          6
 007117AF    db          0
 007117AF    db          0
 007117AF    db          0
 007117AF    db          0
 007117AF    db          8
 007117AF    db          0
 007117AF    db          0
 007117AF    db          0
 007117AF    db          0
 007117AF    db          0
 007117AF    db          0
 007117AF    db          0
 007117AF    db          9
 007117AF    db          0
 007117AF    db          10
 007117AF    db          0
 007117AF    db          0
 007117AF    db          0
 007117AF    db          11
 007117AF    db          12
 007117AF    db          13
 007117AF    db          7
 007117AF    dd          00711A99
 007117AF    dd          0071180B
 007117AF    dd          0071183E
 007117AF    dd          00711871
 007117AF    dd          007118A4
 007117AF    dd          007118D7
 007117AF    dd          0071190A
 007117AF    dd          0071193D
 007117AF    dd          00711970
 007117AF    dd          007119A3
 007117AF    dd          007119D6
 007117AF    dd          00711A09
 007117AF    dd          00711A39
 007117AF    dd          00711A69
 0071180B    mov         edx,dword ptr [esp]
 0071180E    cmp         edx,3
>00711811    jbe         00711818
 00711813    call        @BoundErr
 00711818    mov         ecx,dword ptr ds:[7C4F04];^gvar_007C1404:array[4] of ?
 0071181E    mov         edx,dword ptr [ecx+edx*4]
 00711821    push        edx
 00711822    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711828    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 0071182E    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711834    call        TStringGrid.SetCells
>00711839    jmp         00711AB5
 0071183E    mov         edx,dword ptr [esp]
 00711841    cmp         edx,4
>00711844    jbe         0071184B
 00711846    call        @BoundErr
 0071184B    mov         ecx,dword ptr ds:[7C4E9C];^gvar_007C1414:array[5] of ?
 00711851    mov         edx,dword ptr [ecx+edx*4]
 00711854    push        edx
 00711855    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071185B    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00711861    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711867    call        TStringGrid.SetCells
>0071186C    jmp         00711AB5
 00711871    mov         edx,dword ptr [esp]
 00711874    cmp         edx,4
>00711877    jbe         0071187E
 00711879    call        @BoundErr
 0071187E    mov         ecx,dword ptr ds:[7C4550];^gvar_007C1428:array[5] of ?
 00711884    mov         edx,dword ptr [ecx+edx*4]
 00711887    push        edx
 00711888    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071188E    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00711894    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071189A    call        TStringGrid.SetCells
>0071189F    jmp         00711AB5
 007118A4    mov         edx,dword ptr [esp]
 007118A7    cmp         edx,4
>007118AA    jbe         007118B1
 007118AC    call        @BoundErr
 007118B1    mov         ecx,dword ptr ds:[7C462C];^gvar_007C143C:array[5] of ?
 007118B7    mov         edx,dword ptr [ecx+edx*4]
 007118BA    push        edx
 007118BB    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007118C1    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 007118C7    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007118CD    call        TStringGrid.SetCells
>007118D2    jmp         00711AB5
 007118D7    mov         edx,dword ptr [esp]
 007118DA    cmp         edx,4
>007118DD    jbe         007118E4
 007118DF    call        @BoundErr
 007118E4    mov         ecx,dword ptr ds:[7C4C10];^gvar_007C1450:array[5] of ?
 007118EA    mov         edx,dword ptr [ecx+edx*4]
 007118ED    push        edx
 007118EE    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007118F4    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 007118FA    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711900    call        TStringGrid.SetCells
>00711905    jmp         00711AB5
 0071190A    mov         edx,dword ptr [esp]
 0071190D    cmp         edx,1
>00711910    jbe         00711917
 00711912    call        @BoundErr
 00711917    mov         ecx,dword ptr ds:[7C4964];^gvar_007C1464:array[2] of ?
 0071191D    mov         edx,dword ptr [ecx+edx*4]
 00711920    push        edx
 00711921    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711927    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 0071192D    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711933    call        TStringGrid.SetCells
>00711938    jmp         00711AB5
 0071193D    mov         edx,dword ptr [esp]
 00711940    cmp         edx,1
>00711943    jbe         0071194A
 00711945    call        @BoundErr
 0071194A    mov         ecx,dword ptr ds:[7C4584];^gvar_007C146C:array[2] of ?
 00711950    mov         edx,dword ptr [ecx+edx*4]
 00711953    push        edx
 00711954    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071195A    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00711960    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711966    call        TStringGrid.SetCells
>0071196B    jmp         00711AB5
 00711970    mov         edx,dword ptr [esp]
 00711973    cmp         edx,4
>00711976    jbe         0071197D
 00711978    call        @BoundErr
 0071197D    mov         ecx,dword ptr ds:[7C472C];^gvar_007C14B4:array[5] of ?
 00711983    mov         edx,dword ptr [ecx+edx*4]
 00711986    push        edx
 00711987    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071198D    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00711993    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711999    call        TStringGrid.SetCells
>0071199E    jmp         00711AB5
 007119A3    mov         edx,dword ptr [esp]
 007119A6    cmp         edx,4
>007119A9    jbe         007119B0
 007119AB    call        @BoundErr
 007119B0    mov         ecx,dword ptr ds:[7C4960];^gvar_007C1474:array[5] of ?
 007119B6    mov         edx,dword ptr [ecx+edx*4]
 007119B9    push        edx
 007119BA    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007119C0    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 007119C6    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007119CC    call        TStringGrid.SetCells
>007119D1    jmp         00711AB5
 007119D6    mov         edx,dword ptr [esp]
 007119D9    cmp         edx,4
>007119DC    jbe         007119E3
 007119DE    call        @BoundErr
 007119E3    mov         ecx,dword ptr ds:[7C4C60];^gvar_007C1488:array[5] of ?
 007119E9    mov         edx,dword ptr [ecx+edx*4]
 007119EC    push        edx
 007119ED    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007119F3    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 007119F9    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007119FF    call        TStringGrid.SetCells
>00711A04    jmp         00711AB5
 00711A09    mov         edx,dword ptr [esp]
 00711A0C    cmp         edx,1
>00711A0F    jbe         00711A16
 00711A11    call        @BoundErr
 00711A16    mov         ecx,dword ptr ds:[7C4CEC];^gvar_007C149C:array[2] of ?
 00711A1C    mov         edx,dword ptr [ecx+edx*4]
 00711A1F    push        edx
 00711A20    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711A26    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00711A2C    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711A32    call        TStringGrid.SetCells
>00711A37    jmp         00711AB5
 00711A39    mov         edx,dword ptr [esp]
 00711A3C    cmp         edx,1
>00711A3F    jbe         00711A46
 00711A41    call        @BoundErr
 00711A46    mov         ecx,dword ptr ds:[7C4390];^gvar_007C14A4:array[2] of ?
 00711A4C    mov         edx,dword ptr [ecx+edx*4]
 00711A4F    push        edx
 00711A50    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711A56    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00711A5C    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711A62    call        TStringGrid.SetCells
>00711A67    jmp         00711AB5
 00711A69    mov         edx,dword ptr [esp]
 00711A6C    cmp         edx,1
>00711A6F    jbe         00711A76
 00711A71    call        @BoundErr
 00711A76    mov         ecx,dword ptr ds:[7C4DAC];^gvar_007C14AC:array[2] of ?
 00711A7C    mov         edx,dword ptr [ecx+edx*4]
 00711A7F    push        edx
 00711A80    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711A86    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00711A8C    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711A92    call        TStringGrid.SetCells
>00711A97    jmp         00711AB5
 00711A99    push        711AD0;'Err'
 00711A9E    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711AA4    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00711AAA    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711AB0    call        TStringGrid.SetCells
 00711AB5    mov         eax,ebx
 00711AB7    call        00716EC0
 00711ABC    pop         edx
 00711ABD    pop         ebp
 00711ABE    pop         edi
 00711ABF    pop         esi
 00711AC0    pop         ebx
 00711AC1    ret
*}
end;

//00711AD8
procedure TAPFillDlg.ApoSounderModeClick(Sender:TObject);
begin
{*
 00711AD8    push        ebx
 00711AD9    push        esi
 00711ADA    push        edi
 00711ADB    mov         esi,edx
 00711ADD    mov         ebx,eax
 00711ADF    mov         eax,esi
 00711AE1    mov         edx,dword ptr ds:[5AA664];TMenuItem
 00711AE7    call        @AsClass
 00711AEC    mov         edi,eax
 00711AEE    cmp         byte ptr [edi+45],0;TMenuItem.FEnabled:Boolean
>00711AF2    jne         00711B00
 00711AF4    push        30
 00711AF6    call        user32.MessageBeep
>00711AFB    jmp         00711BF1
 00711B00    mov         eax,dword ptr [edi+0C];TMenuItem.FTag:NativeInt
 00711B03    mov         edx,eax
 00711B05    add         edx,0FFFFFF9B
 00711B08    sub         edx,0F
>00711B0B    jb          00711B22
 00711B0D    add         edx,0FFFFFFDD
 00711B10    sub         edx,0F
>00711B13    jb          00711B5D
 00711B15    add         edx,0FFFFFFDD
 00711B18    sub         edx,0F
>00711B1B    jb          00711B99
>00711B1D    jmp         00711BD5
 00711B22    add         eax,0FFFFFF9B
 00711B25    cmp         eax,0E
>00711B28    jbe         00711B2F
 00711B2A    call        @BoundErr
 00711B2F    add         eax,65
 00711B32    mov         ecx,dword ptr ds:[7C493C];^gvar_007C155C:array[15] of ?
 00711B38    mov         eax,dword ptr [ecx+eax*4-194]
 00711B3F    push        eax
 00711B40    mov         edx,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711B46    mov         ecx,dword ptr [edx+2AC];TStringGrid.FDefaultRowHeight:Integer
 00711B4C    mov         eax,dword ptr [edx+2A8];TStringGrid.FCurrent:TGridCoord
 00711B52    xchg        eax,edx
 00711B53    call        TStringGrid.SetCells
>00711B58    jmp         00711BF1
 00711B5D    add         eax,0FFFFFF69
 00711B62    cmp         eax,0E
>00711B65    jbe         00711B6C
 00711B67    call        @BoundErr
 00711B6C    add         eax,97
 00711B71    mov         ecx,dword ptr ds:[7C4A0C];^gvar_007C1598:array[15] of ?
 00711B77    mov         eax,dword ptr [ecx+eax*4-25C]
 00711B7E    push        eax
 00711B7F    mov         edx,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711B85    mov         ecx,dword ptr [edx+2AC];TStringGrid.FDefaultRowHeight:Integer
 00711B8B    mov         eax,dword ptr [edx+2A8];TStringGrid.FCurrent:TGridCoord
 00711B91    xchg        eax,edx
 00711B92    call        TStringGrid.SetCells
>00711B97    jmp         00711BF1
 00711B99    add         eax,0FFFFFF37
 00711B9E    cmp         eax,0E
>00711BA1    jbe         00711BA8
 00711BA3    call        @BoundErr
 00711BA8    add         eax,0C9
 00711BAD    mov         ecx,dword ptr ds:[7C4CC4];^gvar_007C15D4:array[15] of ?
 00711BB3    mov         eax,dword ptr [ecx+eax*4-324]
 00711BBA    push        eax
 00711BBB    mov         edx,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711BC1    mov         ecx,dword ptr [edx+2AC];TStringGrid.FDefaultRowHeight:Integer
 00711BC7    mov         eax,dword ptr [edx+2A8];TStringGrid.FCurrent:TGridCoord
 00711BCD    xchg        eax,edx
 00711BCE    call        TStringGrid.SetCells
>00711BD3    jmp         00711BF1
 00711BD5    push        711C04;'ERR'
 00711BDA    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711BE0    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00711BE6    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711BEC    call        TStringGrid.SetCells
 00711BF1    pop         edi
 00711BF2    pop         esi
 00711BF3    pop         ebx
 00711BF4    ret
*}
end;

//00711C0C
procedure TAPFillDlg.SysTypeClick(Sender:TObject);
begin
{*
 00711C0C    push        ebp
 00711C0D    mov         ebp,esp
 00711C0F    xor         ecx,ecx
 00711C11    push        ecx
 00711C12    push        ecx
 00711C13    push        ecx
 00711C14    push        ecx
 00711C15    push        ebx
 00711C16    push        esi
 00711C17    push        edi
 00711C18    mov         esi,edx
 00711C1A    mov         ebx,eax
 00711C1C    xor         eax,eax
 00711C1E    push        ebp
 00711C1F    push        71205F
 00711C24    push        dword ptr fs:[eax]
 00711C27    mov         dword ptr fs:[eax],esp
 00711C2A    mov         eax,esi
 00711C2C    mov         edx,dword ptr ds:[5AA664];TMenuItem
 00711C32    call        @AsClass
 00711C37    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 00711C3A    cmp         eax,0FF
>00711C3F    jbe         00711C46
 00711C41    call        @BoundErr
 00711C46    mov         byte ptr [ebp-1],al
 00711C49    cmp         byte ptr [ebp-1],0FA
>00711C4D    jne         00711CA2
 00711C4F    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711C55    cmp         dword ptr [eax+2A8],1;TStringGrid.FCurrent:TGridCoord
>00711C5C    jne         00711C74
 00711C5E    mov         edx,dword ptr ds:[7C2F94];^'Don''t care'
 00711C64    push        edx
 00711C65    mov         ecx,5
 00711C6A    mov         edx,1
 00711C6F    call        TStringGrid.SetCells
 00711C74    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711C7A    cmp         dword ptr [eax+2A8],2;TStringGrid.FCurrent:TGridCoord
>00711C81    jne         0071203D
 00711C87    mov         edx,dword ptr ds:[7C2F98];^'Don''t change'
 00711C8D    push        edx
 00711C8E    mov         ecx,5
 00711C93    mov         edx,2
 00711C98    call        TStringGrid.SetCells
>00711C9D    jmp         0071203D
 00711CA2    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711CA8    cmp         dword ptr [eax+2A8],1;TStringGrid.FCurrent:TGridCoord
>00711CAF    jne         00711CD8
 00711CB1    movzx       edx,byte ptr [ebp-1]
 00711CB5    cmp         edx,0F
>00711CB8    jbe         00711CBF
 00711CBA    call        @BoundErr
 00711CBF    mov         ecx,dword ptr ds:[7C4E3C];^^'Not in use':array[16] of ?
 00711CC5    mov         edx,dword ptr [ecx+edx*4]
 00711CC8    push        edx
 00711CC9    mov         ecx,5
 00711CCE    mov         edx,1
 00711CD3    call        TStringGrid.SetCells
 00711CD8    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711CDE    cmp         dword ptr [eax+2A8],2;TStringGrid.FCurrent:TGridCoord
>00711CE5    jne         0071203D
 00711CEB    mov         edi,1
 00711CF0    mov         esi,dword ptr ds:[7C4C5C];^gvar_007C38EA
 00711CF6    inc         esi
 00711CF7    movzx       eax,byte ptr [ebp-1]
 00711CFB    cmp         eax,0F
>00711CFE    jbe         00711D05
 00711D00    call        @BoundErr
 00711D05    imul        eax,eax,17
>00711D08    jno         00711D0F
 00711D0A    call        @IntOver
 00711D0F    movzx       eax,byte ptr [esi+eax-1]
 00711D14    cmp         eax,13
>00711D17    ja          0071201A
 00711D1D    jmp         dword ptr [eax*4+711D24]
 00711D1D    dd          00711D74
 00711D1D    dd          00711D93
 00711D1D    dd          00711DB2
 00711D1D    dd          00711DE2
 00711D1D    dd          00711E1A
 00711D1D    dd          00711E52
 00711D1D    dd          00711E8A
 00711D1D    dd          00711EAB
 00711D1D    dd          00711ECC
 00711D1D    dd          00711EED
 00711D1D    dd          00711F07
 00711D1D    dd          00711F24
 00711D1D    dd          00711F41
 00711D1D    dd          00711F5E
 00711D1D    dd          00711F80
 00711D1D    dd          00711FA1
 00711D1D    dd          00711FBF
 00711D1D    dd          00711FDD
 00711D1D    dd          0071201A
 00711D1D    dd          00711FFC
 00711D74    mov         edx,dword ptr ds:[7C2F98];^'Don''t change'
 00711D7A    push        edx
 00711D7B    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711D81    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711D87    mov         ecx,edi
 00711D89    call        TStringGrid.SetCells
>00711D8E    jmp         00712032
 00711D93    mov         edx,dword ptr ds:[7C2F98];^'Don''t change'
 00711D99    push        edx
 00711D9A    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711DA0    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711DA6    mov         ecx,edi
 00711DA8    call        TStringGrid.SetCells
>00711DAD    jmp         00712032
 00711DB2    movzx       edx,byte ptr [ebp-1]
 00711DB6    cmp         edx,0F
>00711DB9    jbe         00711DC0
 00711DBB    call        @BoundErr
 00711DC0    mov         ecx,dword ptr ds:[7C4E3C];^^'Not in use':array[16] of ?
 00711DC6    mov         edx,dword ptr [ecx+edx*4]
 00711DC9    push        edx
 00711DCA    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711DD0    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711DD6    mov         ecx,edi
 00711DD8    call        TStringGrid.SetCells
>00711DDD    jmp         00712032
 00711DE2    lea         ecx,[ebp-8]
 00711DE5    movzx       edx,byte ptr [ebp-1]
 00711DE9    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00711DEE    mov         eax,dword ptr [eax]
 00711DF0    mov         eax,dword ptr [eax+14]
 00711DF3    call        TFXPAD.SysDefaultFireLevel
 00711DF8    mov         eax,dword ptr [ebp-8]
 00711DFB    push        eax
 00711DFC    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711E02    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711E08    mov         ecx,edi
 00711E0A    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711E10    call        TStringGrid.SetCells
>00711E15    jmp         00712032
 00711E1A    lea         ecx,[ebp-0C]
 00711E1D    movzx       edx,byte ptr [ebp-1]
 00711E21    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00711E26    mov         eax,dword ptr [eax]
 00711E28    mov         eax,dword ptr [eax+14]
 00711E2B    call        TFXPAD.SysDefaultPrewLevel
 00711E30    mov         eax,dword ptr [ebp-0C]
 00711E33    push        eax
 00711E34    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711E3A    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711E40    mov         ecx,edi
 00711E42    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711E48    call        TStringGrid.SetCells
>00711E4D    jmp         00712032
 00711E52    lea         ecx,[ebp-10]
 00711E55    movzx       edx,byte ptr [ebp-1]
 00711E59    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00711E5E    mov         eax,dword ptr [eax]
 00711E60    mov         eax,dword ptr [eax+14]
 00711E63    call        TFXPAD.SysDefaultServLevel
 00711E68    mov         eax,dword ptr [ebp-10]
 00711E6B    push        eax
 00711E6C    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711E72    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711E78    mov         ecx,edi
 00711E7A    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711E80    call        TStringGrid.SetCells
>00711E85    jmp         00712032
 00711E8A    mov         edx,dword ptr ds:[7C4488];^gvar_007C23D8:array[1] of ?
 00711E90    mov         edx,dword ptr [edx]
 00711E92    push        edx
 00711E93    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711E99    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711E9F    mov         ecx,edi
 00711EA1    call        TStringGrid.SetCells
>00711EA6    jmp         00712032
 00711EAB    mov         edx,dword ptr ds:[7C4924];^gvar_007C16B0:array[25] of ?
 00711EB1    mov         edx,dword ptr [edx]
 00711EB3    push        edx
 00711EB4    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711EBA    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711EC0    mov         ecx,edi
 00711EC2    call        TStringGrid.SetCells
>00711EC7    jmp         00712032
 00711ECC    mov         edx,dword ptr ds:[7C498C];^gvar_007C2468:array[4] of ?
 00711ED2    mov         edx,dword ptr [edx]
 00711ED4    push        edx
 00711ED5    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711EDB    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711EE1    mov         ecx,edi
 00711EE3    call        TStringGrid.SetCells
>00711EE8    jmp         00712032
 00711EED    push        0
 00711EEF    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711EF5    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711EFB    mov         ecx,edi
 00711EFD    call        TStringGrid.SetCells
>00711F02    jmp         00712032
 00711F07    push        71207C;'0'
 00711F0C    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711F12    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711F18    mov         ecx,edi
 00711F1A    call        TStringGrid.SetCells
>00711F1F    jmp         00712032
 00711F24    push        71208C;'1'
 00711F29    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711F2F    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711F35    mov         ecx,edi
 00711F37    call        TStringGrid.SetCells
>00711F3C    jmp         00712032
 00711F41    push        71209C;'2'
 00711F46    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711F4C    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711F52    mov         ecx,edi
 00711F54    call        TStringGrid.SetCells
>00711F59    jmp         00712032
 00711F5E    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00711F64    mov         edx,dword ptr [edx+4]
 00711F67    push        edx
 00711F68    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711F6E    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711F74    mov         ecx,edi
 00711F76    call        TStringGrid.SetCells
>00711F7B    jmp         00712032
 00711F80    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00711F86    mov         edx,dword ptr [edx]
 00711F88    push        edx
 00711F89    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711F8F    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711F95    mov         ecx,edi
 00711F97    call        TStringGrid.SetCells
>00711F9C    jmp         00712032
 00711FA1    mov         edx,dword ptr ds:[7C4764];^gvar_007C2478:array[6] of ?
 00711FA7    mov         edx,dword ptr [edx]
 00711FA9    push        edx
 00711FAA    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711FB0    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711FB6    mov         ecx,edi
 00711FB8    call        TStringGrid.SetCells
>00711FBD    jmp         00712032
 00711FBF    mov         edx,dword ptr ds:[7C46CC];^^'Monitored':array[3] of ?
 00711FC5    mov         edx,dword ptr [edx]
 00711FC7    push        edx
 00711FC8    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711FCE    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711FD4    mov         ecx,edi
 00711FD6    call        TStringGrid.SetCells
>00711FDB    jmp         00712032
 00711FDD    mov         edx,dword ptr ds:[7C46CC];^^'Monitored':array[3] of ?
 00711FE3    mov         edx,dword ptr [edx+4]
 00711FE6    push        edx
 00711FE7    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00711FED    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00711FF3    mov         ecx,edi
 00711FF5    call        TStringGrid.SetCells
>00711FFA    jmp         00712032
 00711FFC    mov         edx,dword ptr ds:[7C4818];^^'Continuous':array[4] of ?
 00712002    mov         edx,dword ptr [edx]
 00712004    push        edx
 00712005    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071200B    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712011    mov         ecx,edi
 00712013    call        TStringGrid.SetCells
>00712018    jmp         00712032
 0071201A    push        7120AC;'ERR'
 0071201F    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712025    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071202B    mov         ecx,edi
 0071202D    call        TStringGrid.SetCells
 00712032    inc         edi
 00712033    inc         esi
 00712034    cmp         edi,18
>00712037    jne         00711CF7
 0071203D    mov         eax,ebx
 0071203F    call        00716EC0
 00712044    xor         eax,eax
 00712046    pop         edx
 00712047    pop         ecx
 00712048    pop         ecx
 00712049    mov         dword ptr fs:[eax],edx
 0071204C    push        712066
 00712051    lea         eax,[ebp-10]
 00712054    mov         edx,3
 00712059    call        @UStrArrayClr
 0071205E    ret
>0071205F    jmp         @HandleFinally
>00712064    jmp         00712051
 00712066    pop         edi
 00712067    pop         esi
 00712068    pop         ebx
 00712069    mov         esp,ebp
 0071206B    pop         ebp
 0071206C    ret
*}
end;

//007120B4
procedure TAPFillDlg.SysDetSubTypeClick(Sender:TObject);
begin
{*
 007120B4    push        ebx
 007120B5    push        esi
 007120B6    push        edi
 007120B7    push        ebp
 007120B8    push        ecx
 007120B9    mov         esi,edx
 007120BB    mov         ebx,eax
 007120BD    mov         eax,esi
 007120BF    mov         edx,dword ptr ds:[5AA664];TMenuItem
 007120C5    call        @AsClass
 007120CA    mov         edi,eax
 007120CC    mov         eax,dword ptr [edi+70];TMenuItem.FParent:TMenuItem
 007120CF    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 007120D2    mov         dword ptr [esp],eax
 007120D5    mov         ebp,dword ptr [edi+0C];TMenuItem.FTag:NativeInt
 007120D8    and         ebp,0FF
 007120DE    mov         edx,dword ptr [edi+70];TMenuItem.FParent:TMenuItem
 007120E1    mov         eax,ebx
 007120E3    call        TAPFillDlg.SysTypeClick
 007120E8    mov         eax,dword ptr [esp]
 007120EB    cmp         eax,0E
>007120EE    ja          00712209
 007120F4    movzx       eax,byte ptr [eax+712102]
 007120FB    jmp         dword ptr [eax*4+712111]
 007120FB    db          0
 007120FB    db          0
 007120FB    db          1
 007120FB    db          2
 007120FB    db          0
 007120FB    db          0
 007120FB    db          0
 007120FB    db          0
 007120FB    db          0
 007120FB    db          0
 007120FB    db          0
 007120FB    db          3
 007120FB    db          0
 007120FB    db          4
 007120FB    db          5
 007120FB    dd          00712209
 007120FB    dd          00712129
 007120FB    dd          00712158
 007120FB    dd          00712187
 007120FB    dd          007121B3
 007120FB    dd          007121DF
 00712129    cmp         ebp,1
>0071212C    jbe         00712133
 0071212E    call        @BoundErr
 00712133    mov         edx,dword ptr ds:[7C49E4];^gvar_007C166C:array[2] of ?
 00712139    mov         edx,dword ptr [edx+ebp*4]
 0071213C    push        edx
 0071213D    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712143    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712149    mov         ecx,5
 0071214E    call        TStringGrid.SetCells
>00712153    jmp         00712209
 00712158    cmp         ebp,1
>0071215B    jbe         00712162
 0071215D    call        @BoundErr
 00712162    mov         edx,dword ptr ds:[7C4E50];^gvar_007C1674:array[2] of ?
 00712168    mov         edx,dword ptr [edx+ebp*4]
 0071216B    push        edx
 0071216C    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712172    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712178    mov         ecx,5
 0071217D    call        TStringGrid.SetCells
>00712182    jmp         00712209
 00712187    cmp         ebp,1
>0071218A    jbe         00712191
 0071218C    call        @BoundErr
 00712191    mov         edx,dword ptr ds:[7C4760];^gvar_007C167C:array[2] of ?
 00712197    mov         edx,dword ptr [edx+ebp*4]
 0071219A    push        edx
 0071219B    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007121A1    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007121A7    mov         ecx,5
 007121AC    call        TStringGrid.SetCells
>007121B1    jmp         00712209
 007121B3    cmp         ebp,1
>007121B6    jbe         007121BD
 007121B8    call        @BoundErr
 007121BD    mov         edx,dword ptr ds:[7C4238];^gvar_007C1684:array[2] of ?
 007121C3    mov         edx,dword ptr [edx+ebp*4]
 007121C6    push        edx
 007121C7    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007121CD    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007121D3    mov         ecx,5
 007121D8    call        TStringGrid.SetCells
>007121DD    jmp         00712209
 007121DF    cmp         ebp,1
>007121E2    jbe         007121E9
 007121E4    call        @BoundErr
 007121E9    mov         edx,dword ptr ds:[7C41FC];^gvar_007C168C:array[2] of ?
 007121EF    mov         edx,dword ptr [edx+ebp*4]
 007121F2    push        edx
 007121F3    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007121F9    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007121FF    mov         ecx,5
 00712204    call        TStringGrid.SetCells
 00712209    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071220F    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712215    cmp         edx,2
>00712218    jne         00712276
 0071221A    dec         ebp
>0071221B    jne         00712252
 0071221D    mov         ecx,dword ptr ds:[7C4690];^gvar_007C2518:array[26] of ?
 00712223    mov         ecx,dword ptr [ecx+4]
 00712226    push        ecx
 00712227    mov         ecx,14
 0071222C    call        TStringGrid.SetCells
 00712231    mov         edx,dword ptr ds:[7C47A0];^gvar_007C286C
 00712237    mov         edx,dword ptr [edx]
 00712239    push        edx
 0071223A    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712240    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712246    mov         ecx,13
 0071224B    call        TStringGrid.SetCells
>00712250    jmp         00712276
 00712252    push        0
 00712254    mov         ecx,14
 00712259    call        TStringGrid.SetCells
 0071225E    push        0
 00712260    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712266    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071226C    mov         ecx,13
 00712271    call        TStringGrid.SetCells
 00712276    mov         eax,ebx
 00712278    call        00716EC0
 0071227D    pop         edx
 0071227E    pop         ebp
 0071227F    pop         edi
 00712280    pop         esi
 00712281    pop         ebx
 00712282    ret
*}
end;

//00712284
procedure TAPFillDlg.CnvTypeNotUsedClick(Sender:TObject);
begin
{*
 00712284    mov         eax,71229C;'CnvTypeNotUsedClick not implemented'
 00712289    call        ShowMessage
 0071228E    ret
*}
end;

//007122E4
procedure TAPFillDlg.CnvZoneLineTypeClick(Sender:TObject);
begin
{*
 007122E4    push        ebp
 007122E5    mov         ebp,esp
 007122E7    push        0
 007122E9    push        0
 007122EB    push        ebx
 007122EC    push        esi
 007122ED    push        edi
 007122EE    mov         esi,edx
 007122F0    mov         ebx,eax
 007122F2    xor         eax,eax
 007122F4    push        ebp
 007122F5    push        712757
 007122FA    push        dword ptr fs:[eax]
 007122FD    mov         dword ptr fs:[eax],esp
 00712300    mov         eax,esi
 00712302    mov         edx,dword ptr ds:[5AA664];TMenuItem
 00712308    call        @AsClass
 0071230D    mov         esi,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 00712310    mov         eax,esi
 00712312    sub         eax,1
>00712315    jb          00712373
 00712317    sub         eax,0F9
>0071231C    jne         007124DA
 00712322    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712328    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071232E    dec         edx
>0071232F    je          00712339
 00712331    dec         edx
>00712332    je          00712356
>00712334    jmp         0071273C
 00712339    mov         edx,dword ptr ds:[7C2F94];^'Don''t care'
 0071233F    push        edx
 00712340    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712346    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071234C    call        TStringGrid.SetCells
>00712351    jmp         0071273C
 00712356    mov         edx,dword ptr ds:[7C2F98];^'Don''t change'
 0071235C    push        edx
 0071235D    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712363    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712369    call        TStringGrid.SetCells
>0071236E    jmp         0071273C
 00712373    cmp         esi,21
>00712376    jbe         0071237D
 00712378    call        @BoundErr
 0071237D    mov         edx,dword ptr ds:[7C4248];^gvar_007C23DC:array[34] of ?
 00712383    mov         edx,dword ptr [edx+esi*4]
 00712386    push        edx
 00712387    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071238D    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712393    mov         ecx,5
 00712398    call        TStringGrid.SetCells
 0071239D    push        0
 0071239F    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007123A5    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007123AB    mov         ecx,6
 007123B0    call        TStringGrid.SetCells
 007123B5    push        0
 007123B7    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007123BD    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007123C3    mov         ecx,8
 007123C8    call        TStringGrid.SetCells
 007123CD    push        0
 007123CF    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007123D5    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007123DB    mov         ecx,9
 007123E0    call        TStringGrid.SetCells
 007123E5    push        0
 007123E7    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007123ED    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007123F3    mov         ecx,0A
 007123F8    call        TStringGrid.SetCells
 007123FD    push        0
 007123FF    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712405    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071240B    mov         ecx,0B
 00712410    call        TStringGrid.SetCells
 00712415    push        0
 00712417    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071241D    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712423    mov         ecx,0C
 00712428    call        TStringGrid.SetCells
 0071242D    push        0
 0071242F    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712435    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071243B    mov         ecx,0D
 00712440    call        TStringGrid.SetCells
 00712445    push        0
 00712447    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071244D    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712453    mov         ecx,0F
 00712458    call        TStringGrid.SetCells
 0071245D    push        0
 0071245F    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712465    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071246B    mov         ecx,10
 00712470    call        TStringGrid.SetCells
 00712475    push        0
 00712477    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071247D    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712483    mov         ecx,11
 00712488    call        TStringGrid.SetCells
 0071248D    push        0
 0071248F    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712495    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071249B    mov         ecx,12
 007124A0    call        TStringGrid.SetCells
 007124A5    push        0
 007124A7    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007124AD    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007124B3    mov         ecx,13
 007124B8    call        TStringGrid.SetCells
 007124BD    push        0
 007124BF    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007124C5    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007124CB    mov         ecx,14
 007124D0    call        TStringGrid.SetCells
>007124D5    jmp         0071273C
 007124DA    cmp         esi,21
>007124DD    jbe         007124E4
 007124DF    call        @BoundErr
 007124E4    mov         edx,dword ptr ds:[7C4248];^gvar_007C23DC:array[34] of ?
 007124EA    mov         edx,dword ptr [edx+esi*4]
 007124ED    push        edx
 007124EE    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007124F4    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007124FA    mov         ecx,5
 007124FF    call        TStringGrid.SetCells
 00712504    push        0
 00712506    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071250C    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712512    mov         ecx,6
 00712517    call        TStringGrid.SetCells
 0071251C    mov         edx,dword ptr ds:[7C4A38];^^'4k7 ':array[2] of ?
 00712522    mov         edx,dword ptr [edx]
 00712524    push        edx
 00712525    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071252B    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712531    mov         ecx,8
 00712536    call        TStringGrid.SetCells
 0071253B    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00712541    mov         edx,dword ptr [edx]
 00712543    push        edx
 00712544    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071254A    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712550    mov         ecx,9
 00712555    call        TStringGrid.SetCells
 0071255A    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00712560    mov         edx,dword ptr [edx]
 00712562    push        edx
 00712563    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712569    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071256F    mov         ecx,0A
 00712574    call        TStringGrid.SetCells
 00712579    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 0071257F    mov         edx,dword ptr [edx+4]
 00712582    push        edx
 00712583    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712589    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071258F    mov         ecx,0B
 00712594    call        TStringGrid.SetCells
 00712599    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 0071259F    mov         edx,dword ptr [edx]
 007125A1    push        edx
 007125A2    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007125A8    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007125AE    mov         ecx,0C
 007125B3    call        TStringGrid.SetCells
 007125B8    mov         edx,dword ptr ds:[7C4764];^gvar_007C2478:array[6] of ?
 007125BE    mov         edx,dword ptr [edx]
 007125C0    push        edx
 007125C1    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007125C7    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007125CD    mov         ecx,0D
 007125D2    call        TStringGrid.SetCells
 007125D7    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 007125DD    mov         edx,dword ptr [edx+4]
 007125E0    push        edx
 007125E1    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007125E7    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007125ED    mov         ecx,0F
 007125F2    call        TStringGrid.SetCells
 007125F7    push        712774;'2'
 007125FC    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712602    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712608    mov         ecx,10
 0071260D    call        TStringGrid.SetCells
 00712612    push        712784;'0'
 00712617    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071261D    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712623    mov         ecx,11
 00712628    call        TStringGrid.SetCells
 0071262D    lea         edx,[ebp-4]
 00712630    xor         eax,eax
 00712632    call        IntToStr
 00712637    mov         eax,dword ptr [ebp-4]
 0071263A    push        eax
 0071263B    mov         edi,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712641    mov         edx,dword ptr [edi+2A8];TStringGrid.FCurrent:TGridCoord
 00712647    mov         ecx,12
 0071264C    mov         eax,edi
 0071264E    call        TStringGrid.SetCells
 00712653    push        0
 00712655    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071265B    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712661    mov         ecx,13
 00712666    call        TStringGrid.SetCells
 0071266B    push        0
 0071266D    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712673    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712679    mov         ecx,14
 0071267E    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712684    call        TStringGrid.SetCells
 00712689    dec         esi
>0071268A    je          0071269E
 0071268C    sub         esi,2
>0071268F    je          007126C4
 00712691    add         esi,0FFFFFFF9
 00712694    sub         esi,18
>00712697    jb          00712718
>00712699    jmp         0071273C
 0071269E    mov         eax,[007C4AF0];^^'Manual Call Point Line':array[3] of ?
 007126A3    mov         eax,dword ptr [eax]
 007126A5    push        eax
 007126A6    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007126AC    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007126B2    mov         ecx,5
 007126B7    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007126BD    call        TStringGrid.SetCells
>007126C2    jmp         0071273C
 007126C4    mov         eax,[007C4AF0];^^'Manual Call Point Line':array[3] of ?
 007126C9    mov         eax,dword ptr [eax+8]
 007126CC    push        eax
 007126CD    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007126D3    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007126D9    mov         ecx,5
 007126DE    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007126E4    call        TStringGrid.SetCells
 007126E9    lea         edx,[ebp-8]
 007126EC    mov         eax,1
 007126F1    call        IntToStr
 007126F6    mov         eax,dword ptr [ebp-8]
 007126F9    push        eax
 007126FA    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712700    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712706    mov         ecx,12
 0071270B    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712711    call        TStringGrid.SetCells
>00712716    jmp         0071273C
 00712718    mov         eax,[007C4E60];^^' No':array[2] of ?
 0071271D    mov         eax,dword ptr [eax]
 0071271F    push        eax
 00712720    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712726    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071272C    mov         ecx,0F
 00712731    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712737    call        TStringGrid.SetCells
 0071273C    xor         eax,eax
 0071273E    pop         edx
 0071273F    pop         ecx
 00712740    pop         ecx
 00712741    mov         dword ptr fs:[eax],edx
 00712744    push        71275E
 00712749    lea         eax,[ebp-8]
 0071274C    mov         edx,2
 00712751    call        @UStrArrayClr
 00712756    ret
>00712757    jmp         @HandleFinally
>0071275C    jmp         00712749
 0071275E    pop         edi
 0071275F    pop         esi
 00712760    pop         ebx
 00712761    pop         ecx
 00712762    pop         ecx
 00712763    pop         ebp
 00712764    ret
*}
end;

//00712788
procedure TAPFillDlg.CnvEOLClick(Sender:TObject);
begin
{*
 00712788    push        ebx
 00712789    push        esi
 0071278A    mov         esi,edx
 0071278C    mov         ebx,eax
 0071278E    mov         eax,esi
 00712790    mov         edx,dword ptr ds:[5AA664];TMenuItem
 00712796    call        @AsClass
 0071279B    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 0071279E    mov         edx,eax
 007127A0    sub         edx,2
>007127A3    jb          007127AF
 007127A5    sub         edx,0F8
>007127AB    je          007127DE
>007127AD    jmp         0071281D
 007127AF    cmp         eax,1
>007127B2    jbe         007127B9
 007127B4    call        @BoundErr
 007127B9    mov         ecx,dword ptr ds:[7C4A38];^^'4k7 ':array[2] of ?
 007127BF    mov         eax,dword ptr [ecx+eax*4]
 007127C2    push        eax
 007127C3    mov         edx,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007127C9    mov         ecx,dword ptr [edx+2AC];TStringGrid.FDefaultRowHeight:Integer
 007127CF    mov         eax,dword ptr [edx+2A8];TStringGrid.FCurrent:TGridCoord
 007127D5    xchg        eax,edx
 007127D6    call        TStringGrid.SetCells
 007127DB    pop         esi
 007127DC    pop         ebx
 007127DD    ret
 007127DE    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007127E4    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007127EA    mov         ecx,edx
 007127EC    dec         ecx
>007127ED    je          007127F4
 007127EF    dec         ecx
>007127F0    je          00712808
>007127F2    jmp         00712839
 007127F4    mov         ecx,dword ptr ds:[7C2F94];^'Don''t care'
 007127FA    push        ecx
 007127FB    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712801    call        TStringGrid.SetCells
>00712806    jmp         00712839
 00712808    mov         ecx,dword ptr ds:[7C2F98];^'Don''t change'
 0071280E    push        ecx
 0071280F    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712815    call        TStringGrid.SetCells
 0071281A    pop         esi
 0071281B    pop         ebx
 0071281C    ret
 0071281D    push        712848;'ERR'
 00712822    mov         eax,dword ptr [ebx+3E4]
 00712828    mov         ecx,dword ptr [eax+2AC]
 0071282E    mov         edx,dword ptr [eax+2A8]
 00712834    call        TStringGrid.SetCells
 00712839    pop         esi
 0071283A    pop         ebx
 0071283B    ret
*}
end;

//00712850
procedure TAPFillDlg.ComModeClick(Sender:TObject);
begin
{*
 00712850    push        ebx
 00712851    push        esi
 00712852    mov         esi,edx
 00712854    mov         ebx,eax
 00712856    mov         eax,esi
 00712858    mov         edx,dword ptr ds:[5AA664];TMenuItem
 0071285E    call        @AsClass
 00712863    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 00712866    mov         edx,eax
 00712868    sub         edx,6
>0071286B    jb          00712877
 0071286D    sub         edx,0F4
>00712873    je          007128A5
>00712875    jmp         007128E3
 00712877    cmp         eax,5
>0071287A    jbe         00712881
 0071287C    call        @BoundErr
 00712881    mov         ecx,dword ptr ds:[7C4764];^gvar_007C2478:array[6] of ?
 00712887    mov         eax,dword ptr [ecx+eax*4]
 0071288A    push        eax
 0071288B    mov         edx,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712891    mov         ecx,dword ptr [edx+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712897    mov         eax,dword ptr [edx+2A8];TStringGrid.FCurrent:TGridCoord
 0071289D    xchg        eax,edx
 0071289E    call        TStringGrid.SetCells
>007128A3    jmp         007128FF
 007128A5    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007128AB    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007128B1    mov         ecx,edx
 007128B3    dec         ecx
>007128B4    je          007128BB
 007128B6    dec         ecx
>007128B7    je          007128CF
>007128B9    jmp         007128FF
 007128BB    mov         ecx,dword ptr ds:[7C2F94];^'Don''t care'
 007128C1    push        ecx
 007128C2    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 007128C8    call        TStringGrid.SetCells
>007128CD    jmp         007128FF
 007128CF    mov         ecx,dword ptr ds:[7C2F98];^'Don''t change'
 007128D5    push        ecx
 007128D6    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 007128DC    call        TStringGrid.SetCells
>007128E1    jmp         007128FF
 007128E3    push        712918;'ERR'
 007128E8    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007128EE    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 007128F4    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007128FA    call        TStringGrid.SetCells
 007128FF    mov         eax,ebx
 00712901    call        00716EC0
 00712906    pop         esi
 00712907    pop         ebx
 00712908    ret
*}
end;

//00712920
procedure TAPFillDlg.ComYesNoClick(Sender:TObject);
begin
{*
 00712920    push        ebx
 00712921    push        esi
 00712922    mov         esi,edx
 00712924    mov         ebx,eax
 00712926    mov         eax,esi
 00712928    mov         edx,dword ptr ds:[5AA664];TMenuItem
 0071292E    call        @AsClass
 00712933    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 00712936    mov         edx,eax
 00712938    sub         edx,2
>0071293B    jb          00712947
 0071293D    sub         edx,0F8
>00712943    je          0071296E
>00712945    jmp         007129AC
 00712947    and         eax,7F
 0071294A    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00712950    mov         eax,dword ptr [ecx+eax*4]
 00712953    push        eax
 00712954    mov         edx,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071295A    mov         ecx,dword ptr [edx+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712960    mov         eax,dword ptr [edx+2A8];TStringGrid.FCurrent:TGridCoord
 00712966    xchg        eax,edx
 00712967    call        TStringGrid.SetCells
>0071296C    jmp         007129C8
 0071296E    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712974    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071297A    mov         ecx,edx
 0071297C    dec         ecx
>0071297D    je          00712984
 0071297F    dec         ecx
>00712980    je          00712998
>00712982    jmp         007129C8
 00712984    mov         ecx,dword ptr ds:[7C2F94];^'Don''t care'
 0071298A    push        ecx
 0071298B    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712991    call        TStringGrid.SetCells
>00712996    jmp         007129C8
 00712998    mov         ecx,dword ptr ds:[7C2F98];^'Don''t change'
 0071299E    push        ecx
 0071299F    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 007129A5    call        TStringGrid.SetCells
>007129AA    jmp         007129C8
 007129AC    push        7129E0;'ERR'
 007129B1    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007129B7    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 007129BD    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007129C3    call        TStringGrid.SetCells
 007129C8    mov         eax,ebx
 007129CA    call        00716EC0
 007129CF    pop         esi
 007129D0    pop         ebx
 007129D1    ret
*}
end;

//007129E8
procedure TAPFillDlg.ComMonitoringClick(Sender:TObject);
begin
{*
 007129E8    push        ebx
 007129E9    push        esi
 007129EA    mov         esi,edx
 007129EC    mov         ebx,eax
 007129EE    mov         eax,esi
 007129F0    mov         edx,dword ptr ds:[5AA664];TMenuItem
 007129F6    call        @AsClass
 007129FB    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 007129FE    mov         edx,eax
 00712A00    sub         edx,3
>00712A03    jb          00712A0F
 00712A05    sub         edx,0F7
>00712A0B    je          00712A3D
>00712A0D    jmp         00712A7B
 00712A0F    cmp         eax,2
>00712A12    jbe         00712A19
 00712A14    call        @BoundErr
 00712A19    mov         ecx,dword ptr ds:[7C46CC];^^'Monitored':array[3] of ?
 00712A1F    mov         eax,dword ptr [ecx+eax*4]
 00712A22    push        eax
 00712A23    mov         edx,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712A29    mov         ecx,dword ptr [edx+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712A2F    mov         eax,dword ptr [edx+2A8];TStringGrid.FCurrent:TGridCoord
 00712A35    xchg        eax,edx
 00712A36    call        TStringGrid.SetCells
>00712A3B    jmp         00712A97
 00712A3D    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712A43    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712A49    mov         ecx,edx
 00712A4B    dec         ecx
>00712A4C    je          00712A53
 00712A4E    dec         ecx
>00712A4F    je          00712A67
>00712A51    jmp         00712A97
 00712A53    mov         ecx,dword ptr ds:[7C2F94];^'Don''t care'
 00712A59    push        ecx
 00712A5A    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712A60    call        TStringGrid.SetCells
>00712A65    jmp         00712A97
 00712A67    mov         ecx,dword ptr ds:[7C2F98];^'Don''t change'
 00712A6D    push        ecx
 00712A6E    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712A74    call        TStringGrid.SetCells
>00712A79    jmp         00712A97
 00712A7B    push        712AB0;'ERR'
 00712A80    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712A86    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712A8C    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712A92    call        TStringGrid.SetCells
 00712A97    mov         eax,ebx
 00712A99    call        00716EC0
 00712A9E    pop         esi
 00712A9F    pop         ebx
 00712AA0    ret
*}
end;

//00712AB8
procedure TAPFillDlg.ComInputClick(Sender:TObject);
begin
{*
 00712AB8    push        ebx
 00712AB9    push        esi
 00712ABA    mov         esi,edx
 00712ABC    mov         ebx,eax
 00712ABE    mov         eax,[007C4DB8];^gvar_00901F74:Integer
 00712AC3    mov         eax,dword ptr [eax]
 00712AC5    dec         eax
>00712AC6    je          00712AE2
 00712AC8    dec         eax
>00712AC9    je          00712AD6
 00712ACB    dec         eax
 00712ACC    sub         eax,4
>00712ACF    jb          00712AE2
>00712AD1    jmp         00712B8B
 00712AD6    mov         edx,esi
 00712AD8    mov         eax,ebx
 00712ADA    call        TAPFillDlg.CnvZoneLineTypeClick
 00712ADF    pop         esi
 00712AE0    pop         ebx
 00712AE1    ret
 00712AE2    mov         eax,esi
 00712AE4    mov         edx,dword ptr ds:[5AA664];TMenuItem
 00712AEA    call        @AsClass
 00712AEF    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 00712AF2    mov         edx,eax
 00712AF4    sub         edx,22
>00712AF7    jb          00712B03
 00712AF9    sub         edx,0D8
>00712AFF    je          00712B31
>00712B01    jmp         00712B6F
 00712B03    cmp         eax,21
>00712B06    jbe         00712B0D
 00712B08    call        @BoundErr
 00712B0D    mov         ecx,dword ptr ds:[7C4248];^gvar_007C23DC:array[34] of ?
 00712B13    mov         eax,dword ptr [ecx+eax*4]
 00712B16    push        eax
 00712B17    mov         edx,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712B1D    mov         ecx,dword ptr [edx+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712B23    mov         eax,dword ptr [edx+2A8];TStringGrid.FCurrent:TGridCoord
 00712B29    xchg        eax,edx
 00712B2A    call        TStringGrid.SetCells
>00712B2F    jmp         00712B8B
 00712B31    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712B37    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712B3D    mov         ecx,edx
 00712B3F    dec         ecx
>00712B40    je          00712B47
 00712B42    dec         ecx
>00712B43    je          00712B5B
>00712B45    jmp         00712B8B
 00712B47    mov         ecx,dword ptr ds:[7C2F94];^'Don''t care'
 00712B4D    push        ecx
 00712B4E    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712B54    call        TStringGrid.SetCells
>00712B59    jmp         00712B8B
 00712B5B    mov         ecx,dword ptr ds:[7C2F98];^'Don''t change'
 00712B61    push        ecx
 00712B62    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712B68    call        TStringGrid.SetCells
>00712B6D    jmp         00712B8B
 00712B6F    push        712B9C;'ERR'
 00712B74    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712B7A    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712B80    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712B86    call        TStringGrid.SetCells
 00712B8B    pop         esi
 00712B8C    pop         ebx
 00712B8D    ret
*}
end;

//00712BA4
procedure TAPFillDlg.ComInDelayClick(Sender:TObject);
begin
{*
 00712BA4    push        ebp
 00712BA5    mov         ebp,esp
 00712BA7    push        0
 00712BA9    push        ebx
 00712BAA    push        esi
 00712BAB    push        edi
 00712BAC    mov         esi,edx
 00712BAE    mov         ebx,eax
 00712BB0    xor         eax,eax
 00712BB2    push        ebp
 00712BB3    push        712C7E
 00712BB8    push        dword ptr fs:[eax]
 00712BBB    mov         dword ptr fs:[eax],esp
 00712BBE    mov         eax,esi
 00712BC0    mov         edx,dword ptr ds:[5AA664];TMenuItem
 00712BC6    call        @AsClass
 00712BCB    mov         esi,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 00712BCE    mov         eax,esi
 00712BD0    sub         eax,7
>00712BD3    jb          00712BDE
 00712BD5    sub         eax,0F3
>00712BDA    je          00712C07
>00712BDC    jmp         00712C45
 00712BDE    lea         edx,[ebp-4]
 00712BE1    mov         eax,esi
 00712BE3    call        IntToStr
 00712BE8    mov         eax,dword ptr [ebp-4]
 00712BEB    push        eax
 00712BEC    mov         edi,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712BF2    mov         ecx,dword ptr [edi+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712BF8    mov         edx,dword ptr [edi+2A8];TStringGrid.FCurrent:TGridCoord
 00712BFE    mov         eax,edi
 00712C00    call        TStringGrid.SetCells
>00712C05    jmp         00712C61
 00712C07    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712C0D    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712C13    mov         ecx,edx
 00712C15    dec         ecx
>00712C16    je          00712C1D
 00712C18    dec         ecx
>00712C19    je          00712C31
>00712C1B    jmp         00712C61
 00712C1D    mov         ecx,dword ptr ds:[7C2F94];^'Don''t care'
 00712C23    push        ecx
 00712C24    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712C2A    call        TStringGrid.SetCells
>00712C2F    jmp         00712C61
 00712C31    mov         ecx,dword ptr ds:[7C2F98];^'Don''t change'
 00712C37    push        ecx
 00712C38    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712C3E    call        TStringGrid.SetCells
>00712C43    jmp         00712C61
 00712C45    push        712C98;'ERR'
 00712C4A    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712C50    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712C56    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712C5C    call        TStringGrid.SetCells
 00712C61    mov         eax,ebx
 00712C63    call        00716EC0
 00712C68    xor         eax,eax
 00712C6A    pop         edx
 00712C6B    pop         ecx
 00712C6C    pop         ecx
 00712C6D    mov         dword ptr fs:[eax],edx
 00712C70    push        712C85
 00712C75    lea         eax,[ebp-4]
 00712C78    call        @UStrClr
 00712C7D    ret
>00712C7E    jmp         @HandleFinally
>00712C83    jmp         00712C75
 00712C85    pop         edi
 00712C86    pop         esi
 00712C87    pop         ebx
 00712C88    pop         ecx
 00712C89    pop         ebp
 00712C8A    ret
*}
end;

//00712CA0
procedure TAPFillDlg.ComInFilterClick(Sender:TObject);
begin
{*
 00712CA0    push        ebp
 00712CA1    mov         ebp,esp
 00712CA3    push        0
 00712CA5    push        ebx
 00712CA6    push        esi
 00712CA7    push        edi
 00712CA8    mov         esi,edx
 00712CAA    mov         ebx,eax
 00712CAC    xor         eax,eax
 00712CAE    push        ebp
 00712CAF    push        712D7A
 00712CB4    push        dword ptr fs:[eax]
 00712CB7    mov         dword ptr fs:[eax],esp
 00712CBA    mov         eax,esi
 00712CBC    mov         edx,dword ptr ds:[5AA664];TMenuItem
 00712CC2    call        @AsClass
 00712CC7    mov         esi,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 00712CCA    mov         eax,esi
 00712CCC    sub         eax,5
>00712CCF    jb          00712CDA
 00712CD1    sub         eax,0F5
>00712CD6    je          00712D03
>00712CD8    jmp         00712D41
 00712CDA    lea         edx,[ebp-4]
 00712CDD    mov         eax,esi
 00712CDF    call        IntToStr
 00712CE4    mov         eax,dword ptr [ebp-4]
 00712CE7    push        eax
 00712CE8    mov         edi,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712CEE    mov         ecx,dword ptr [edi+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712CF4    mov         edx,dword ptr [edi+2A8];TStringGrid.FCurrent:TGridCoord
 00712CFA    mov         eax,edi
 00712CFC    call        TStringGrid.SetCells
>00712D01    jmp         00712D5D
 00712D03    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712D09    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712D0F    mov         ecx,edx
 00712D11    dec         ecx
>00712D12    je          00712D19
 00712D14    dec         ecx
>00712D15    je          00712D2D
>00712D17    jmp         00712D5D
 00712D19    mov         ecx,dword ptr ds:[7C2F94];^'Don''t care'
 00712D1F    push        ecx
 00712D20    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712D26    call        TStringGrid.SetCells
>00712D2B    jmp         00712D5D
 00712D2D    mov         ecx,dword ptr ds:[7C2F98];^'Don''t change'
 00712D33    push        ecx
 00712D34    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712D3A    call        TStringGrid.SetCells
>00712D3F    jmp         00712D5D
 00712D41    push        712D94;'ERR'
 00712D46    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712D4C    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712D52    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712D58    call        TStringGrid.SetCells
 00712D5D    mov         eax,ebx
 00712D5F    call        00716EC0
 00712D64    xor         eax,eax
 00712D66    pop         edx
 00712D67    pop         ecx
 00712D68    pop         ecx
 00712D69    mov         dword ptr fs:[eax],edx
 00712D6C    push        712D81
 00712D71    lea         eax,[ebp-4]
 00712D74    call        @UStrClr
 00712D79    ret
>00712D7A    jmp         @HandleFinally
>00712D7F    jmp         00712D71
 00712D81    pop         edi
 00712D82    pop         esi
 00712D83    pop         ebx
 00712D84    pop         ecx
 00712D85    pop         ebp
 00712D86    ret
*}
end;

//00712D9C
procedure TAPFillDlg.ComDayModeClick(Sender:TObject);
begin
{*
 00712D9C    push        ebp
 00712D9D    mov         ebp,esp
 00712D9F    push        0
 00712DA1    push        ebx
 00712DA2    push        esi
 00712DA3    push        edi
 00712DA4    mov         esi,edx
 00712DA6    mov         ebx,eax
 00712DA8    xor         eax,eax
 00712DAA    push        ebp
 00712DAB    push        712E76
 00712DB0    push        dword ptr fs:[eax]
 00712DB3    mov         dword ptr fs:[eax],esp
 00712DB6    mov         eax,esi
 00712DB8    mov         edx,dword ptr ds:[5AA664];TMenuItem
 00712DBE    call        @AsClass
 00712DC3    mov         esi,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 00712DC6    mov         eax,esi
 00712DC8    sub         eax,4
>00712DCB    jb          00712DD6
 00712DCD    sub         eax,0F6
>00712DD2    je          00712DFF
>00712DD4    jmp         00712E3D
 00712DD6    lea         edx,[ebp-4]
 00712DD9    mov         eax,esi
 00712DDB    call        IntToStr
 00712DE0    mov         eax,dword ptr [ebp-4]
 00712DE3    push        eax
 00712DE4    mov         edi,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712DEA    mov         ecx,dword ptr [edi+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712DF0    mov         edx,dword ptr [edi+2A8];TStringGrid.FCurrent:TGridCoord
 00712DF6    mov         eax,edi
 00712DF8    call        TStringGrid.SetCells
>00712DFD    jmp         00712E59
 00712DFF    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712E05    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712E0B    mov         ecx,edx
 00712E0D    dec         ecx
>00712E0E    je          00712E15
 00712E10    dec         ecx
>00712E11    je          00712E29
>00712E13    jmp         00712E59
 00712E15    mov         ecx,dword ptr ds:[7C2F94];^'Don''t care'
 00712E1B    push        ecx
 00712E1C    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712E22    call        TStringGrid.SetCells
>00712E27    jmp         00712E59
 00712E29    mov         ecx,dword ptr ds:[7C2F98];^'Don''t change'
 00712E2F    push        ecx
 00712E30    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712E36    call        TStringGrid.SetCells
>00712E3B    jmp         00712E59
 00712E3D    push        712E90;'ERR'
 00712E42    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712E48    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712E4E    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712E54    call        TStringGrid.SetCells
 00712E59    mov         eax,ebx
 00712E5B    call        00716EC0
 00712E60    xor         eax,eax
 00712E62    pop         edx
 00712E63    pop         ecx
 00712E64    pop         ecx
 00712E65    mov         dword ptr fs:[eax],edx
 00712E68    push        712E7D
 00712E6D    lea         eax,[ebp-4]
 00712E70    call        @UStrClr
 00712E75    ret
>00712E76    jmp         @HandleFinally
>00712E7B    jmp         00712E6D
 00712E7D    pop         edi
 00712E7E    pop         esi
 00712E7F    pop         ebx
 00712E80    pop         ecx
 00712E81    pop         ebp
 00712E82    ret
*}
end;

//00712E98
procedure TAPFillDlg.ComZDisClick(Sender:TObject);
begin
{*
 00712E98    push        ebp
 00712E99    mov         ebp,esp
 00712E9B    push        0
 00712E9D    push        ebx
 00712E9E    push        esi
 00712E9F    push        edi
 00712EA0    mov         esi,edx
 00712EA2    mov         ebx,eax
 00712EA4    xor         eax,eax
 00712EA6    push        ebp
 00712EA7    push        712F72
 00712EAC    push        dword ptr fs:[eax]
 00712EAF    mov         dword ptr fs:[eax],esp
 00712EB2    mov         eax,esi
 00712EB4    mov         edx,dword ptr ds:[5AA664];TMenuItem
 00712EBA    call        @AsClass
 00712EBF    mov         esi,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 00712EC2    mov         eax,esi
 00712EC4    sub         eax,3
>00712EC7    jb          00712ED2
 00712EC9    sub         eax,0F7
>00712ECE    je          00712EFB
>00712ED0    jmp         00712F39
 00712ED2    lea         edx,[ebp-4]
 00712ED5    mov         eax,esi
 00712ED7    call        IntToStr
 00712EDC    mov         eax,dword ptr [ebp-4]
 00712EDF    push        eax
 00712EE0    mov         edi,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712EE6    mov         ecx,dword ptr [edi+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712EEC    mov         edx,dword ptr [edi+2A8];TStringGrid.FCurrent:TGridCoord
 00712EF2    mov         eax,edi
 00712EF4    call        TStringGrid.SetCells
>00712EF9    jmp         00712F55
 00712EFB    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712F01    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712F07    mov         ecx,edx
 00712F09    dec         ecx
>00712F0A    je          00712F11
 00712F0C    dec         ecx
>00712F0D    je          00712F25
>00712F0F    jmp         00712F55
 00712F11    mov         ecx,dword ptr ds:[7C2F94];^'Don''t care'
 00712F17    push        ecx
 00712F18    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712F1E    call        TStringGrid.SetCells
>00712F23    jmp         00712F55
 00712F25    mov         ecx,dword ptr ds:[7C2F98];^'Don''t change'
 00712F2B    push        ecx
 00712F2C    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712F32    call        TStringGrid.SetCells
>00712F37    jmp         00712F55
 00712F39    push        712F8C;'ERR'
 00712F3E    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712F44    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712F4A    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00712F50    call        TStringGrid.SetCells
 00712F55    mov         eax,ebx
 00712F57    call        00716EC0
 00712F5C    xor         eax,eax
 00712F5E    pop         edx
 00712F5F    pop         ecx
 00712F60    pop         ecx
 00712F61    mov         dword ptr fs:[eax],edx
 00712F64    push        712F79
 00712F69    lea         eax,[ebp-4]
 00712F6C    call        @UStrClr
 00712F71    ret
>00712F72    jmp         @HandleFinally
>00712F77    jmp         00712F69
 00712F79    pop         edi
 00712F7A    pop         esi
 00712F7B    pop         ebx
 00712F7C    pop         ecx
 00712F7D    pop         ebp
 00712F7E    ret
*}
end;

//00712F94
procedure TAPFillDlg.ComCzmClick(Sender:TObject);
begin
{*
 00712F94    push        ebp
 00712F95    mov         ebp,esp
 00712F97    push        0
 00712F99    push        ebx
 00712F9A    push        esi
 00712F9B    mov         esi,edx
 00712F9D    mov         ebx,eax
 00712F9F    xor         eax,eax
 00712FA1    push        ebp
 00712FA2    push        713196
 00712FA7    push        dword ptr fs:[eax]
 00712FAA    mov         dword ptr fs:[eax],esp
 00712FAD    mov         eax,esi
 00712FAF    mov         edx,dword ptr ds:[5AA664];TMenuItem
 00712FB5    call        @AsClass
 00712FBA    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 00712FBD    cmp         eax,0FF
>00712FC2    jbe         00712FC9
 00712FC4    call        @BoundErr
 00712FC9    mov         edx,eax
 00712FCB    sub         dl,4
>00712FCE    jb          00712FD7
 00712FD0    sub         dl,0F6
>00712FD3    je          00713008
>00712FD5    jmp         00713046
 00712FD7    movzx       eax,al
 00712FDA    cmp         eax,3
>00712FDD    jbe         00712FE4
 00712FDF    call        @BoundErr
 00712FE4    mov         ecx,dword ptr ds:[7C498C];^gvar_007C2468:array[4] of ?
 00712FEA    mov         eax,dword ptr [ecx+eax*4]
 00712FED    push        eax
 00712FEE    mov         edx,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00712FF4    mov         ecx,dword ptr [edx+2AC];TStringGrid.FDefaultRowHeight:Integer
 00712FFA    mov         eax,dword ptr [edx+2A8];TStringGrid.FCurrent:TGridCoord
 00713000    xchg        eax,edx
 00713001    call        TStringGrid.SetCells
>00713006    jmp         00713062
 00713008    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071300E    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00713014    mov         ecx,edx
 00713016    dec         ecx
>00713017    je          0071301E
 00713019    dec         ecx
>0071301A    je          00713032
>0071301C    jmp         00713062
 0071301E    mov         ecx,dword ptr ds:[7C2F94];^'Don''t care'
 00713024    push        ecx
 00713025    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 0071302B    call        TStringGrid.SetCells
>00713030    jmp         00713062
 00713032    mov         ecx,dword ptr ds:[7C2F98];^'Don''t change'
 00713038    push        ecx
 00713039    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 0071303F    call        TStringGrid.SetCells
>00713044    jmp         00713062
 00713046    push        7131B0;'ERR'
 0071304B    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00713051    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00713057    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071305D    call        TStringGrid.SetCells
 00713062    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00713068    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071306E    cmp         edx,2
>00713071    jne         00713179
 00713077    push        0
 00713079    mov         ecx,9
 0071307E    call        TStringGrid.SetCells
 00713083    push        0
 00713085    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071308B    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00713091    mov         ecx,0A
 00713096    call        TStringGrid.SetCells
 0071309B    push        0
 0071309D    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007130A3    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007130A9    mov         ecx,0B
 007130AE    call        TStringGrid.SetCells
 007130B3    push        0
 007130B5    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007130BB    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007130C1    mov         ecx,0C
 007130C6    call        TStringGrid.SetCells
 007130CB    mov         edx,dword ptr ds:[7C4764];^gvar_007C2478:array[6] of ?
 007130D1    mov         edx,dword ptr [edx]
 007130D3    push        edx
 007130D4    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007130DA    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007130E0    mov         ecx,0D
 007130E5    call        TStringGrid.SetCells
 007130EA    push        7131C4;'0'
 007130EF    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007130F5    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007130FB    mov         ecx,0F
 00713100    call        TStringGrid.SetCells
 00713105    push        7131C4;'0'
 0071310A    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00713110    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00713116    mov         ecx,10
 0071311B    call        TStringGrid.SetCells
 00713120    push        7131C4;'0'
 00713125    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071312B    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00713131    mov         ecx,11
 00713136    call        TStringGrid.SetCells
 0071313B    lea         edx,[ebp-4]
 0071313E    xor         eax,eax
 00713140    call        IntToStr
 00713145    mov         eax,dword ptr [ebp-4]
 00713148    push        eax
 00713149    mov         esi,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071314F    mov         edx,dword ptr [esi+2A8];TStringGrid.FCurrent:TGridCoord
 00713155    mov         ecx,12
 0071315A    mov         eax,esi
 0071315C    call        TStringGrid.SetCells
 00713161    push        0
 00713163    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00713169    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071316F    mov         ecx,13
 00713174    call        TStringGrid.SetCells
 00713179    mov         eax,ebx
 0071317B    call        00716EC0
 00713180    xor         eax,eax
 00713182    pop         edx
 00713183    pop         ecx
 00713184    pop         ecx
 00713185    mov         dword ptr fs:[eax],edx
 00713188    push        71319D
 0071318D    lea         eax,[ebp-4]
 00713190    call        @UStrClr
 00713195    ret
>00713196    jmp         @HandleFinally
>0071319B    jmp         0071318D
 0071319D    pop         esi
 0071319E    pop         ebx
 0071319F    pop         ecx
 007131A0    pop         ebp
 007131A1    ret
*}
end;

//007131C8
procedure TAPFillDlg.ComSounderModeClick(Sender:TObject);
begin
{*
 007131C8    push        ebx
 007131C9    push        esi
 007131CA    mov         esi,edx
 007131CC    mov         ebx,eax
 007131CE    mov         eax,esi
 007131D0    mov         edx,dword ptr ds:[5AA664];TMenuItem
 007131D6    call        @AsClass
 007131DB    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 007131DE    cmp         eax,0FF
>007131E3    jbe         007131EA
 007131E5    call        @BoundErr
 007131EA    mov         edx,eax
 007131EC    sub         dl,4
>007131EF    jb          007131F8
 007131F1    sub         dl,0F6
>007131F4    je          00713229
>007131F6    jmp         00713267
 007131F8    movzx       eax,al
 007131FB    cmp         eax,3
>007131FE    jbe         00713205
 00713200    call        @BoundErr
 00713205    mov         ecx,dword ptr ds:[7C4818];^^'Continuous':array[4] of ?
 0071320B    mov         eax,dword ptr [ecx+eax*4]
 0071320E    push        eax
 0071320F    mov         edx,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00713215    mov         ecx,dword ptr [edx+2AC];TStringGrid.FDefaultRowHeight:Integer
 0071321B    mov         eax,dword ptr [edx+2A8];TStringGrid.FCurrent:TGridCoord
 00713221    xchg        eax,edx
 00713222    call        TStringGrid.SetCells
>00713227    jmp         00713283
 00713229    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071322F    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00713235    mov         ecx,edx
 00713237    dec         ecx
>00713238    je          0071323F
 0071323A    dec         ecx
>0071323B    je          00713253
>0071323D    jmp         00713283
 0071323F    mov         ecx,dword ptr ds:[7C2F94];^'Don''t care'
 00713245    push        ecx
 00713246    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 0071324C    call        TStringGrid.SetCells
>00713251    jmp         00713283
 00713253    mov         ecx,dword ptr ds:[7C2F98];^'Don''t change'
 00713259    push        ecx
 0071325A    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00713260    call        TStringGrid.SetCells
>00713265    jmp         00713283
 00713267    push        71329C;'ERR'
 0071326C    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00713272    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00713278    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071327E    call        TStringGrid.SetCells
 00713283    mov         eax,ebx
 00713285    call        00716EC0
 0071328A    pop         esi
 0071328B    pop         ebx
 0071328C    ret
*}
end;

//007132A4
procedure TAPFillDlg.ComSounderVolumeClick(Sender:TObject);
begin
{*
 007132A4    push        ebx
 007132A5    push        esi
 007132A6    push        edi
 007132A7    mov         esi,edx
 007132A9    mov         ebx,eax
 007132AB    mov         eax,esi
 007132AD    mov         edx,dword ptr ds:[5AA664];TMenuItem
 007132B3    call        @AsClass
 007132B8    mov         edi,eax
 007132BA    cmp         byte ptr [edi+45],0;TMenuItem.FEnabled:Boolean
>007132BE    jne         007132CC
 007132C0    push        30
 007132C2    call        user32.MessageBeep
>007132C7    jmp         00713373
 007132CC    mov         eax,dword ptr [edi+0C];TMenuItem.FTag:NativeInt
 007132CF    mov         edx,eax
 007132D1    dec         edx
 007132D2    sub         edx,0B
>007132D5    jb          007132E1
 007132D7    sub         edx,0EE
>007132DD    je          00713312
>007132DF    jmp         00713350
 007132E1    dec         eax
 007132E2    cmp         eax,0A
>007132E5    jbe         007132EC
 007132E7    call        @BoundErr
 007132EC    inc         eax
 007132ED    mov         ecx,dword ptr ds:[7C4444];^gvar_007C24AC:array[11] of ?
 007132F3    mov         eax,dword ptr [ecx+eax*4-4]
 007132F7    push        eax
 007132F8    mov         edx,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007132FE    mov         ecx,dword ptr [edx+2AC];TStringGrid.FDefaultRowHeight:Integer
 00713304    mov         eax,dword ptr [edx+2A8];TStringGrid.FCurrent:TGridCoord
 0071330A    xchg        eax,edx
 0071330B    call        TStringGrid.SetCells
>00713310    jmp         0071336C
 00713312    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00713318    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071331E    mov         ecx,edx
 00713320    dec         ecx
>00713321    je          00713328
 00713323    dec         ecx
>00713324    je          0071333C
>00713326    jmp         0071336C
 00713328    mov         ecx,dword ptr ds:[7C2F94];^'Don''t care'
 0071332E    push        ecx
 0071332F    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00713335    call        TStringGrid.SetCells
>0071333A    jmp         0071336C
 0071333C    mov         ecx,dword ptr ds:[7C2F98];^'Don''t change'
 00713342    push        ecx
 00713343    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00713349    call        TStringGrid.SetCells
>0071334E    jmp         0071336C
 00713350    push        713384;'ERR'
 00713355    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071335B    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00713361    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00713367    call        TStringGrid.SetCells
 0071336C    mov         eax,ebx
 0071336E    call        00716EC0
 00713373    pop         edi
 00713374    pop         esi
 00713375    pop         ebx
 00713376    ret
*}
end;

//0071338C
procedure TAPFillDlg.ComLevelClick(Sender:TObject);
begin
{*
 0071338C    push        ebx
 0071338D    push        esi
 0071338E    mov         esi,edx
 00713390    mov         ebx,eax
 00713392    mov         eax,esi
 00713394    mov         edx,dword ptr ds:[5AA664];TMenuItem
 0071339A    call        @AsClass
 0071339F    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 007133A2    mov         edx,eax
 007133A4    sub         edx,0B
>007133A7    jb          007133B3
 007133A9    sub         edx,0EF
>007133AF    je          007133E1
>007133B1    jmp         00713406
 007133B3    cmp         eax,0A
>007133B6    jbe         007133BD
 007133B8    call        @BoundErr
 007133BD    mov         ecx,dword ptr ds:[7C4C40];^gvar_007C2840:array[11] of ?
 007133C3    mov         eax,dword ptr [ecx+eax*4]
 007133C6    push        eax
 007133C7    mov         edx,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007133CD    mov         ecx,dword ptr [edx+2AC];TStringGrid.FDefaultRowHeight:Integer
 007133D3    mov         eax,dword ptr [edx+2A8];TStringGrid.FCurrent:TGridCoord
 007133D9    xchg        eax,edx
 007133DA    call        TStringGrid.SetCells
>007133DF    jmp         00713422
 007133E1    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007133E7    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007133ED    mov         ecx,edx
 007133EF    dec         ecx
>007133F0    jne         00713422
 007133F2    mov         ecx,dword ptr ds:[7C2F94];^'Don''t care'
 007133F8    push        ecx
 007133F9    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 007133FF    call        TStringGrid.SetCells
>00713404    jmp         00713422
 00713406    push        713438;'ERR'
 0071340B    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00713411    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00713417    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071341D    call        TStringGrid.SetCells
 00713422    mov         eax,ebx
 00713424    call        00716EC0
 00713429    pop         esi
 0071342A    pop         ebx
 0071342B    ret
*}
end;

//00713440
procedure TAPFillDlg.ComOutputClick(Sender:TObject);
begin
{*
 00713440    push        ebx
 00713441    push        esi
 00713442    mov         esi,edx
 00713444    mov         ebx,eax
 00713446    mov         eax,esi
 00713448    mov         edx,dword ptr ds:[5AA664];TMenuItem
 0071344E    call        @AsClass
 00713453    mov         esi,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 00713456    mov         eax,esi
 00713458    sub         eax,1A
>0071345B    jb          00713466
 0071345D    sub         eax,0E0
>00713462    je          00713493
>00713464    jmp         007134D1
 00713466    cmp         esi,19
>00713469    jbe         00713470
 0071346B    call        @BoundErr
 00713470    mov         edx,dword ptr ds:[7C4690];^gvar_007C2518:array[26] of ?
 00713476    mov         edx,dword ptr [edx+esi*4]
 00713479    push        edx
 0071347A    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00713480    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00713486    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071348C    call        TStringGrid.SetCells
>00713491    jmp         007134ED
 00713493    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00713499    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 0071349F    mov         ecx,edx
 007134A1    dec         ecx
>007134A2    je          007134A9
 007134A4    dec         ecx
>007134A5    je          007134BD
>007134A7    jmp         007134ED
 007134A9    mov         ecx,dword ptr ds:[7C2F94];^'Don''t care'
 007134AF    push        ecx
 007134B0    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 007134B6    call        TStringGrid.SetCells
>007134BB    jmp         007134ED
 007134BD    mov         ecx,dword ptr ds:[7C2F98];^'Don''t change'
 007134C3    push        ecx
 007134C4    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 007134CA    call        TStringGrid.SetCells
>007134CF    jmp         007134ED
 007134D1    push        71356C;'ERR'
 007134D6    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007134DC    mov         ecx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 007134E2    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007134E8    call        TStringGrid.SetCells
 007134ED    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007134F3    mov         edx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007134F9    cmp         edx,2
>007134FC    jne         00713553
 007134FE    sub         esi,1
>00713501    jb          0071350F
 00713503    sub         esi,13
>00713506    jb          0071351D
>00713508    je          00713532
 0071350A    dec         esi
>0071350B    je          0071351D
>0071350D    jmp         00713547
 0071350F    push        0
 00713511    mov         ecx,13
 00713516    call        TStringGrid.SetCells
>0071351B    jmp         00713553
 0071351D    mov         ecx,dword ptr ds:[7C47A0];^gvar_007C286C
 00713523    mov         ecx,dword ptr [ecx]
 00713525    push        ecx
 00713526    mov         ecx,13
 0071352B    call        TStringGrid.SetCells
>00713530    jmp         00713553
 00713532    mov         ecx,dword ptr ds:[7C47A0];^gvar_007C286C
 00713538    mov         ecx,dword ptr [ecx]
 0071353A    push        ecx
 0071353B    mov         ecx,13
 00713540    call        TStringGrid.SetCells
>00713545    jmp         00713553
 00713547    push        0
 00713549    mov         ecx,13
 0071354E    call        TStringGrid.SetCells
 00713553    mov         eax,ebx
 00713555    call        00716EC0
 0071355A    pop         esi
 0071355B    pop         ebx
 0071355C    ret
*}
end;

//00713574
procedure TAPFillDlg.EnableOrDisableSapTypePopUpItems(CurrRow:Integer; CurrType:Word);
begin
{*
 00713574    push        ebx
 00713575    push        esi
 00713576    push        edi
 00713577    push        ecx
 00713578    mov         word ptr [esp],cx
 0071357C    mov         esi,dword ptr ds:[7C489C];^gvar_007C19E4
 00713582    mov         edi,dword ptr ds:[7C4AB8];^gvar_007C1A11
 00713588    mov         ebx,dword ptr [eax+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 0071358E    movzx       edx,byte ptr [esi+1]
 00713592    mov         eax,dword ptr [ebx+6B4];TFXADMenuFrame.miSapIonAdv:TMenuItem
 00713598    call        TMenuItem.SetEnabled
 0071359D    movzx       edx,byte ptr [edi+1]
 007135A1    mov         eax,dword ptr [ebx+6B8];TFXADMenuFrame.miSapIonClip:TMenuItem
 007135A7    call        TMenuItem.SetEnabled
 007135AC    movzx       edx,byte ptr [esi+2]
 007135B0    mov         eax,dword ptr [ebx+6BC];TFXADMenuFrame.miSapOptAdv:TMenuItem
 007135B6    call        TMenuItem.SetEnabled
 007135BB    movzx       edx,byte ptr [edi+2]
 007135BF    mov         eax,dword ptr [ebx+6C0];TFXADMenuFrame.miSapOptClip:TMenuItem
 007135C5    call        TMenuItem.SetEnabled
 007135CA    movzx       edx,byte ptr [esi+3]
 007135CE    mov         eax,dword ptr [ebx+6C4];TFXADMenuFrame.miSapFiltrexAdv:TMenuItem
 007135D4    call        TMenuItem.SetEnabled
 007135D9    movzx       edx,byte ptr [esi+3]
 007135DD    mov         eax,dword ptr [ebx+6C8];TFXADMenuFrame.miSapFiltrexClip:TMenuItem
 007135E3    call        TMenuItem.SetEnabled
 007135E8    movzx       edx,byte ptr [esi+7]
 007135EC    mov         eax,dword ptr [ebx+6CC];TFXADMenuFrame.miSapTempStatAdv:TMenuItem
 007135F2    call        TMenuItem.SetEnabled
 007135F7    movzx       edx,byte ptr [edi+3]
 007135FB    mov         eax,dword ptr [ebx+6D0];TFXADMenuFrame.miSapTempStatClip:TMenuItem
 00713601    call        TMenuItem.SetEnabled
 00713606    movzx       edx,byte ptr [esi+8]
 0071360A    mov         eax,dword ptr [ebx+6D4];TFXADMenuFrame.miSapTempRorAdv:TMenuItem
 00713610    call        TMenuItem.SetEnabled
 00713615    movzx       edx,byte ptr [edi+3]
 00713619    mov         eax,dword ptr [ebx+6D8];TFXADMenuFrame.miSapTempRorClip:TMenuItem
 0071361F    call        TMenuItem.SetEnabled
 00713624    movzx       edx,byte ptr [esi+9]
 00713628    mov         eax,dword ptr [ebx+6DC];TFXADMenuFrame.miSapTempHighAdv:TMenuItem
 0071362E    call        TMenuItem.SetEnabled
 00713633    movzx       edx,byte ptr [edi+3]
 00713637    mov         eax,dword ptr [ebx+6E0];TFXADMenuFrame.miSapTempHighClip:TMenuItem
 0071363D    call        TMenuItem.SetEnabled
 00713642    movzx       edx,byte ptr [esi+4]
 00713646    mov         eax,dword ptr [ebx+6E4];TFXADMenuFrame.miSapMultiAdv:TMenuItem
 0071364C    call        TMenuItem.SetEnabled
 00713651    movzx       edx,byte ptr [edi+0B]
 00713655    mov         eax,dword ptr [ebx+6E8];TFXADMenuFrame.miSapMultiClip:TMenuItem
 0071365B    call        TMenuItem.SetEnabled
 00713660    movzx       edx,byte ptr [esi+6]
 00713664    mov         eax,dword ptr [ebx+6EC];TFXADMenuFrame.miSapPtirAdv:TMenuItem
 0071366A    call        TMenuItem.SetEnabled
 0071366F    movzx       edx,byte ptr [edi+0E]
 00713673    mov         eax,dword ptr [ebx+6F0];TFXADMenuFrame.miSapPtirClip:TMenuItem
 00713679    call        TMenuItem.SetEnabled
 0071367E    movzx       edx,byte ptr [esi+5]
 00713682    mov         eax,dword ptr [ebx+6F4];TFXADMenuFrame.miSapCoptirAdv:TMenuItem
 00713688    call        TMenuItem.SetEnabled
 0071368D    movzx       edx,byte ptr [edi+0D]
 00713691    mov         eax,dword ptr [ebx+6F8];TFXADMenuFrame.miSapCoptirClip:TMenuItem
 00713697    call        TMenuItem.SetEnabled
 0071369C    movzx       edx,byte ptr [esi+0B]
 007136A0    mov         eax,dword ptr [ebx+6FC];TFXADMenuFrame.miSapLaser1Adv:TMenuItem
 007136A6    call        TMenuItem.SetEnabled
 007136AB    movzx       edx,byte ptr [edi+9]
 007136AF    mov         eax,dword ptr [ebx+700];TFXADMenuFrame.miSapLaser1Clip:TMenuItem
 007136B5    call        TMenuItem.SetEnabled
 007136BA    movzx       edx,byte ptr [esi+0C]
 007136BE    mov         eax,dword ptr [ebx+704];TFXADMenuFrame.miSapLaser2Adv:TMenuItem
 007136C4    call        TMenuItem.SetEnabled
 007136C9    movzx       edx,byte ptr [edi+0A]
 007136CD    mov         eax,dword ptr [ebx+708];TFXADMenuFrame.miSapLaser2Clip:TMenuItem
 007136D3    call        TMenuItem.SetEnabled
 007136D8    movzx       edx,byte ptr [esi+0A]
 007136DC    mov         eax,dword ptr [ebx+70C];TFXADMenuFrame.miSapBeamAdv:TMenuItem
 007136E2    call        TMenuItem.SetEnabled
 007136E7    movzx       edx,byte ptr [edi+0F]
 007136EB    mov         eax,dword ptr [ebx+710];TFXADMenuFrame.miSapBeamClip:TMenuItem
 007136F1    call        TMenuItem.SetEnabled
 007136F6    movzx       edx,byte ptr [esi+10]
 007136FA    mov         eax,dword ptr [ebx+674];TFXADMenuFrame.miSapMcpIndoor:TMenuItem
 00713700    call        TMenuItem.SetEnabled
 00713705    movzx       edx,byte ptr [esi+11]
 00713709    mov         eax,dword ptr [ebx+678];TFXADMenuFrame.miSapMcpOutdoor:TMenuItem
 0071370F    call        TMenuItem.SetEnabled
 00713714    movzx       edx,byte ptr [esi+12]
 00713718    mov         eax,dword ptr [ebx+718];TFXADMenuFrame.miSap1InAdv:TMenuItem
 0071371E    call        TMenuItem.SetEnabled
 00713723    movzx       edx,byte ptr [edi+4]
 00713727    mov         eax,dword ptr [ebx+71C];TFXADMenuFrame.miSap1InClip:TMenuItem
 0071372D    call        TMenuItem.SetEnabled
 00713732    movzx       edx,byte ptr [esi+13]
 00713736    mov         eax,dword ptr [ebx+680];TFXADMenuFrame.miSap1InMicro:TMenuItem
 0071373C    call        TMenuItem.SetEnabled
 00713741    movzx       edx,byte ptr [esi+1E]
 00713745    mov         eax,dword ptr [ebx+0B68];TFXADMenuFrame.miSap1InMini:TMenuItem
 0071374B    call        TMenuItem.SetEnabled
 00713750    xor         edx,edx
 00713752    mov         eax,dword ptr [ebx+684];TFXADMenuFrame.miSap2In:TMenuItem
 00713758    call        TMenuItem.SetEnabled
 0071375D    xor         edx,edx
 0071375F    mov         eax,dword ptr [ebx+688];TFXADMenuFrame.miSap2In1Out:TMenuItem
 00713765    call        TMenuItem.SetEnabled
 0071376A    movzx       edx,byte ptr [esi+16]
 0071376E    mov         eax,dword ptr [ebx+720];TFXADMenuFrame.miSap1OutAdv:TMenuItem
 00713774    call        TMenuItem.SetEnabled
 00713779    movzx       edx,byte ptr [edi+5]
 0071377D    mov         eax,dword ptr [ebx+724];TFXADMenuFrame.miSap1OutClip:TMenuItem
 00713783    call        TMenuItem.SetEnabled
 00713788    movzx       edx,byte ptr [esi+17]
 0071378C    mov         eax,dword ptr [ebx+690];TFXADMenuFrame.miSap1Out240:TMenuItem
 00713792    call        TMenuItem.SetEnabled
 00713797    movzx       edx,byte ptr [esi+18]
 0071379B    mov         eax,dword ptr [ebx+728];TFXADMenuFrame.miSapCzAdv:TMenuItem
 007137A1    call        TMenuItem.SetEnabled
 007137A6    movzx       edx,byte ptr [edi+6]
 007137AA    mov         eax,dword ptr [ebx+72C];TFXADMenuFrame.miSapCzClip:TMenuItem
 007137B0    call        TMenuItem.SetEnabled
 007137B5    movzx       edx,byte ptr [esi+1D]
 007137B9    mov         eax,dword ptr [ebx+6A8];TFXADMenuFrame.miSapCZR:TMenuItem
 007137BF    call        TMenuItem.SetEnabled
 007137C4    xor         edx,edx
 007137C6    mov         eax,dword ptr [ebx+698];TFXADMenuFrame.miSap6CCO:TMenuItem
 007137CC    call        TMenuItem.SetEnabled
 007137D1    xor         edx,edx
 007137D3    mov         eax,dword ptr [ebx+69C];TFXADMenuFrame.miSap6MRO:TMenuItem
 007137D9    call        TMenuItem.SetEnabled
 007137DE    xor         edx,edx
 007137E0    mov         eax,dword ptr [ebx+6A0];TFXADMenuFrame.miSap10CCI:TMenuItem
 007137E6    call        TMenuItem.SetEnabled
 007137EB    xor         edx,edx
 007137ED    mov         eax,dword ptr [ebx+6A4];TFXADMenuFrame.miSap6CZ:TMenuItem
 007137F3    call        TMenuItem.SetEnabled
 007137F8    mov         eax,dword ptr [ebx+6B4];TFXADMenuFrame.miSapIonAdv:TMenuItem
 007137FE    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>00713802    jne         00713814
 00713804    mov         eax,dword ptr [ebx+6B8];TFXADMenuFrame.miSapIonClip:TMenuItem
 0071380A    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>0071380E    jne         00713814
 00713810    xor         edx,edx
>00713812    jmp         00713816
 00713814    mov         dl,1
 00713816    mov         eax,dword ptr [ebx+644];TFXADMenuFrame.miSapIon:TMenuItem
 0071381C    call        TMenuItem.SetEnabled
 00713821    mov         eax,dword ptr [ebx+6BC];TFXADMenuFrame.miSapOptAdv:TMenuItem
 00713827    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>0071382B    jne         0071383D
 0071382D    mov         eax,dword ptr [ebx+6C0];TFXADMenuFrame.miSapOptClip:TMenuItem
 00713833    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>00713837    jne         0071383D
 00713839    xor         edx,edx
>0071383B    jmp         0071383F
 0071383D    mov         dl,1
 0071383F    mov         eax,dword ptr [ebx+648];TFXADMenuFrame.miSapOpt:TMenuItem
 00713845    call        TMenuItem.SetEnabled
 0071384A    mov         eax,dword ptr [ebx+6C4];TFXADMenuFrame.miSapFiltrexAdv:TMenuItem
 00713850    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>00713854    jne         00713866
 00713856    mov         eax,dword ptr [ebx+6C8];TFXADMenuFrame.miSapFiltrexClip:TMenuItem
 0071385C    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>00713860    jne         00713866
 00713862    xor         edx,edx
>00713864    jmp         00713868
 00713866    mov         dl,1
 00713868    mov         eax,dword ptr [ebx+64C];TFXADMenuFrame.miSapFiltrex:TMenuItem
 0071386E    call        TMenuItem.SetEnabled
 00713873    mov         eax,dword ptr [ebx+6CC];TFXADMenuFrame.miSapTempStatAdv:TMenuItem
 00713879    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>0071387D    jne         0071388F
 0071387F    mov         eax,dword ptr [ebx+6D0];TFXADMenuFrame.miSapTempStatClip:TMenuItem
 00713885    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>00713889    jne         0071388F
 0071388B    xor         edx,edx
>0071388D    jmp         00713891
 0071388F    mov         dl,1
 00713891    mov         eax,dword ptr [ebx+650];TFXADMenuFrame.miSapTempStat:TMenuItem
 00713897    call        TMenuItem.SetEnabled
 0071389C    mov         eax,dword ptr [ebx+6D4];TFXADMenuFrame.miSapTempRorAdv:TMenuItem
 007138A2    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>007138A6    jne         007138B8
 007138A8    mov         eax,dword ptr [ebx+6D8];TFXADMenuFrame.miSapTempRorClip:TMenuItem
 007138AE    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>007138B2    jne         007138B8
 007138B4    xor         edx,edx
>007138B6    jmp         007138BA
 007138B8    mov         dl,1
 007138BA    mov         eax,dword ptr [ebx+654];TFXADMenuFrame.miSapTempRor:TMenuItem
 007138C0    call        TMenuItem.SetEnabled
 007138C5    mov         eax,dword ptr [ebx+6DC];TFXADMenuFrame.miSapTempHighAdv:TMenuItem
 007138CB    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>007138CF    jne         007138E1
 007138D1    mov         eax,dword ptr [ebx+6E0];TFXADMenuFrame.miSapTempHighClip:TMenuItem
 007138D7    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>007138DB    jne         007138E1
 007138DD    xor         edx,edx
>007138DF    jmp         007138E3
 007138E1    mov         dl,1
 007138E3    mov         eax,dword ptr [ebx+658];TFXADMenuFrame.miSapTempHigh:TMenuItem
 007138E9    call        TMenuItem.SetEnabled
 007138EE    mov         eax,dword ptr [ebx+6E4];TFXADMenuFrame.miSapMultiAdv:TMenuItem
 007138F4    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>007138F8    jne         0071390A
 007138FA    mov         eax,dword ptr [ebx+6E8];TFXADMenuFrame.miSapMultiClip:TMenuItem
 00713900    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>00713904    jne         0071390A
 00713906    xor         edx,edx
>00713908    jmp         0071390C
 0071390A    mov         dl,1
 0071390C    mov         eax,dword ptr [ebx+65C];TFXADMenuFrame.miSapMulti:TMenuItem
 00713912    call        TMenuItem.SetEnabled
 00713917    mov         eax,dword ptr [ebx+6EC];TFXADMenuFrame.miSapPtirAdv:TMenuItem
 0071391D    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>00713921    jne         00713933
 00713923    mov         eax,dword ptr [ebx+6F0];TFXADMenuFrame.miSapPtirClip:TMenuItem
 00713929    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>0071392D    jne         00713933
 0071392F    xor         edx,edx
>00713931    jmp         00713935
 00713933    mov         dl,1
 00713935    mov         eax,dword ptr [ebx+660];TFXADMenuFrame.miSapPtir:TMenuItem
 0071393B    call        TMenuItem.SetEnabled
 00713940    mov         eax,dword ptr [ebx+6F4];TFXADMenuFrame.miSapCoptirAdv:TMenuItem
 00713946    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>0071394A    jne         0071395C
 0071394C    mov         eax,dword ptr [ebx+6F8];TFXADMenuFrame.miSapCoptirClip:TMenuItem
 00713952    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>00713956    jne         0071395C
 00713958    xor         edx,edx
>0071395A    jmp         0071395E
 0071395C    mov         dl,1
 0071395E    mov         eax,dword ptr [ebx+664];TFXADMenuFrame.miSapCoptir:TMenuItem
 00713964    call        TMenuItem.SetEnabled
 00713969    mov         eax,dword ptr [ebx+6FC];TFXADMenuFrame.miSapLaser1Adv:TMenuItem
 0071396F    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>00713973    jne         00713985
 00713975    mov         eax,dword ptr [ebx+700];TFXADMenuFrame.miSapLaser1Clip:TMenuItem
 0071397B    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>0071397F    jne         00713985
 00713981    xor         edx,edx
>00713983    jmp         00713987
 00713985    mov         dl,1
 00713987    mov         eax,dword ptr [ebx+668];TFXADMenuFrame.miSapLaser1:TMenuItem
 0071398D    call        TMenuItem.SetEnabled
 00713992    mov         eax,dword ptr [ebx+704];TFXADMenuFrame.miSapLaser2Adv:TMenuItem
 00713998    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>0071399C    jne         007139AE
 0071399E    mov         eax,dword ptr [ebx+708];TFXADMenuFrame.miSapLaser2Clip:TMenuItem
 007139A4    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>007139A8    jne         007139AE
 007139AA    xor         edx,edx
>007139AC    jmp         007139B0
 007139AE    mov         dl,1
 007139B0    mov         eax,dword ptr [ebx+66C];TFXADMenuFrame.miSapLaser2:TMenuItem
 007139B6    call        TMenuItem.SetEnabled
 007139BB    mov         eax,dword ptr [ebx+70C];TFXADMenuFrame.miSapBeamAdv:TMenuItem
 007139C1    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>007139C5    jne         007139D7
 007139C7    mov         eax,dword ptr [ebx+710];TFXADMenuFrame.miSapBeamClip:TMenuItem
 007139CD    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>007139D1    jne         007139D7
 007139D3    xor         edx,edx
>007139D5    jmp         007139D9
 007139D7    mov         dl,1
 007139D9    mov         eax,dword ptr [ebx+670];TFXADMenuFrame.miSapBeam:TMenuItem
 007139DF    call        TMenuItem.SetEnabled
 007139E4    mov         eax,dword ptr [ebx+718];TFXADMenuFrame.miSap1InAdv:TMenuItem
 007139EA    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>007139EE    jne         00713A00
 007139F0    mov         eax,dword ptr [ebx+71C];TFXADMenuFrame.miSap1InClip:TMenuItem
 007139F6    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>007139FA    jne         00713A00
 007139FC    xor         edx,edx
>007139FE    jmp         00713A02
 00713A00    mov         dl,1
 00713A02    mov         eax,dword ptr [ebx+67C];TFXADMenuFrame.miSap1In:TMenuItem
 00713A08    call        TMenuItem.SetEnabled
 00713A0D    mov         eax,dword ptr [ebx+720];TFXADMenuFrame.miSap1OutAdv:TMenuItem
 00713A13    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>00713A17    jne         00713A29
 00713A19    mov         eax,dword ptr [ebx+724];TFXADMenuFrame.miSap1OutClip:TMenuItem
 00713A1F    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>00713A23    jne         00713A29
 00713A25    xor         edx,edx
>00713A27    jmp         00713A2B
 00713A29    mov         dl,1
 00713A2B    mov         eax,dword ptr [ebx+68C];TFXADMenuFrame.miSap1Out:TMenuItem
 00713A31    call        TMenuItem.SetEnabled
 00713A36    mov         eax,dword ptr [ebx+728];TFXADMenuFrame.miSapCzAdv:TMenuItem
 00713A3C    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>00713A40    jne         00713A52
 00713A42    mov         eax,dword ptr [ebx+72C];TFXADMenuFrame.miSapCzClip:TMenuItem
 00713A48    cmp         byte ptr [eax+45],0;TMenuItem.FEnabled:Boolean
>00713A4C    jne         00713A52
 00713A4E    xor         edx,edx
>00713A50    jmp         00713A54
 00713A52    mov         dl,1
 00713A54    mov         eax,dword ptr [ebx+694];TFXADMenuFrame.miSapCZ:TMenuItem
 00713A5A    call        TMenuItem.SetEnabled
 00713A5F    pop         edx
 00713A60    pop         edi
 00713A61    pop         esi
 00713A62    pop         ebx
 00713A63    ret
*}
end;

//00713A64
procedure TAPFillDlg.GridMouseDown(Sender:TObject; Button:UITypes.TMouseButton; Shift:Classes.TShiftState; X:Integer; Y:Integer);
begin
{*
 00713A64    push        ebp
 00713A65    mov         ebp,esp
 00713A67    push        ecx
 00713A68    mov         ecx,0D
 00713A6D    push        0
 00713A6F    push        0
 00713A71    dec         ecx
>00713A72    jne         00713A6D
 00713A74    xchg        ecx,dword ptr [ebp-4]
 00713A77    push        ebx
 00713A78    push        esi
 00713A79    push        edi
 00713A7A    mov         byte ptr [ebp-1],cl
 00713A7D    mov         ebx,eax
 00713A7F    mov         edi,dword ptr [ebp+0C]
 00713A82    xor         eax,eax
 00713A84    push        ebp
 00713A85    push        7157A1
 00713A8A    push        dword ptr fs:[eax]
 00713A8D    mov         dword ptr fs:[eax],esp
 00713A90    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00713A95    mov         eax,dword ptr [eax]
 00713A97    mov         eax,dword ptr [eax+14]
 00713A9A    mov         dword ptr [ebp-1C],eax
 00713A9D    cmp         byte ptr [ebp-1],1
>00713AA1    jne         00715786
 00713AA7    lea         eax,[ebp-8]
 00713AAA    push        eax
 00713AAB    lea         eax,[ebp-0C]
 00713AAE    push        eax
 00713AAF    mov         ecx,dword ptr [ebp+8]
 00713AB2    mov         edx,edi
 00713AB4    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00713ABA    call        TCustomDrawGrid.MouseToCell
 00713ABF    cmp         dword ptr [ebp-8],0
>00713AC3    je          00715786
 00713AC9    cmp         dword ptr [ebp-0C],0
>00713ACD    je          00715786
 00713AD3    mov         edx,dword ptr [ebp-8]
 00713AD6    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00713ADC    call        006C0A44
 00713AE1    mov         edx,dword ptr [ebp-0C]
 00713AE4    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00713AEA    call        006C0E94
 00713AEF    mov         esi,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00713AF5    mov         eax,dword ptr [esi+2A8];TStringGrid.FCurrent:TGridCoord
 00713AFB    cmp         eax,dword ptr [ebp-8]
>00713AFE    jne         00715786
 00713B04    mov         eax,dword ptr [esi+2AC];TStringGrid.FDefaultRowHeight:Integer
 00713B0A    cmp         eax,dword ptr [ebp-0C]
>00713B0D    jne         00715786
 00713B13    lea         ecx,[ebp-24]
 00713B16    mov         edx,dword ptr [ebp+8]
 00713B19    mov         eax,edi
 00713B1B    call        004830B8
 00713B20    lea         edx,[ebp-24]
 00713B23    lea         ecx,[ebp-18]
 00713B26    mov         eax,esi
 00713B28    call        TControl.ClientToScreen
 00713B2D    mov         esi,dword ptr [ebx+3F8];TAPFillDlg.ADMenuFrame:TFXADMenuFrame
 00713B33    mov         eax,dword ptr [ebp-0C]
 00713B36    add         eax,0FFFFFFF7
 00713B39    sub         eax,4
>00713B3C    jae         00713C30
 00713B42    cmp         dword ptr [ebp-8],2
>00713B46    jne         00713BBD
 00713B48    mov         eax,dword ptr [esi+35C];TFXADMenuFrame.ComLevelMenu:TPopupMenu
 00713B4E    mov         eax,dword ptr [eax+44];TPopupMenu.FItems:TMenuItem
 00713B51    xor         edx,edx
 00713B53    call        TMenuItem.GetItem
 00713B58    xor         edx,edx
 00713B5A    call        TMenuItem.SetEnabled
 00713B5F    mov         eax,dword ptr [esi+3A4];TFXADMenuFrame.SysMultiLevelMenu:TPopupMenu
 00713B65    mov         eax,dword ptr [eax+44];TPopupMenu.FItems:TMenuItem
 00713B68    xor         edx,edx
 00713B6A    call        TMenuItem.GetItem
 00713B6F    xor         edx,edx
 00713B71    call        TMenuItem.SetEnabled
 00713B76    mov         eax,dword ptr [esi+624];TFXADMenuFrame.ApoMultiLevelMenu:TPopupMenu
 00713B7C    mov         eax,dword ptr [eax+44];TPopupMenu.FItems:TMenuItem
 00713B7F    xor         edx,edx
 00713B81    call        TMenuItem.GetItem
 00713B86    xor         edx,edx
 00713B88    call        TMenuItem.SetEnabled
 00713B8D    mov         eax,dword ptr [esi+850];TFXADMenuFrame.SapBeamLevelMenu:TPopupMenu
 00713B93    mov         eax,dword ptr [eax+44];TPopupMenu.FItems:TMenuItem
 00713B96    xor         edx,edx
 00713B98    call        TMenuItem.GetItem
 00713B9D    xor         edx,edx
 00713B9F    call        TMenuItem.SetEnabled
 00713BA4    mov         eax,dword ptr [esi+374];TFXADMenuFrame.LaserLevelMenu:TPopupMenu
 00713BAA    mov         eax,dword ptr [eax+44];TPopupMenu.FItems:TMenuItem
 00713BAD    xor         edx,edx
 00713BAF    call        TMenuItem.GetItem
 00713BB4    xor         edx,edx
 00713BB6    call        TMenuItem.SetEnabled
>00713BBB    jmp         00713C30
 00713BBD    mov         eax,dword ptr [esi+35C];TFXADMenuFrame.ComLevelMenu:TPopupMenu
 00713BC3    mov         eax,dword ptr [eax+44];TPopupMenu.FItems:TMenuItem
 00713BC6    xor         edx,edx
 00713BC8    call        TMenuItem.GetItem
 00713BCD    mov         dl,1
 00713BCF    call        TMenuItem.SetEnabled
 00713BD4    mov         eax,dword ptr [esi+3A4];TFXADMenuFrame.SysMultiLevelMenu:TPopupMenu
 00713BDA    mov         eax,dword ptr [eax+44];TPopupMenu.FItems:TMenuItem
 00713BDD    xor         edx,edx
 00713BDF    call        TMenuItem.GetItem
 00713BE4    mov         dl,1
 00713BE6    call        TMenuItem.SetEnabled
 00713BEB    mov         eax,dword ptr [esi+624];TFXADMenuFrame.ApoMultiLevelMenu:TPopupMenu
 00713BF1    mov         eax,dword ptr [eax+44];TPopupMenu.FItems:TMenuItem
 00713BF4    xor         edx,edx
 00713BF6    call        TMenuItem.GetItem
 00713BFB    mov         dl,1
 00713BFD    call        TMenuItem.SetEnabled
 00713C02    mov         eax,dword ptr [esi+850];TFXADMenuFrame.SapBeamLevelMenu:TPopupMenu
 00713C08    mov         eax,dword ptr [eax+44];TPopupMenu.FItems:TMenuItem
 00713C0B    xor         edx,edx
 00713C0D    call        TMenuItem.GetItem
 00713C12    mov         dl,1
 00713C14    call        TMenuItem.SetEnabled
 00713C19    mov         eax,dword ptr [esi+374];TFXADMenuFrame.LaserLevelMenu:TPopupMenu
 00713C1F    mov         eax,dword ptr [eax+44];TPopupMenu.FItems:TMenuItem
 00713C22    xor         edx,edx
 00713C24    call        TMenuItem.GetItem
 00713C29    mov         dl,1
 00713C2B    call        TMenuItem.SetEnabled
 00713C30    mov         eax,[007C4DB8];^gvar_00901F74:Integer
 00713C35    cmp         dword ptr [eax],4
>00713C38    je          00713C48
 00713C3A    mov         eax,[007C4DB8];^gvar_00901F74:Integer
 00713C3F    cmp         dword ptr [eax],6
>00713C42    jne         00714856
 00713C48    lea         eax,[ebp-28]
 00713C4B    push        eax
 00713C4C    mov         ecx,5
 00713C51    mov         edx,dword ptr [ebp-8]
 00713C54    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00713C5A    call        TStringGrid.GetCells
 00713C5F    mov         edx,dword ptr [ebp-28]
 00713C62    mov         eax,dword ptr [ebp-1C]
 00713C65    call        TFXPAD.SapTypeToInt
 00713C6A    mov         word ptr [ebp-0E],ax
 00713C6E    lea         eax,[ebp-2C]
 00713C71    push        eax
 00713C72    mov         ecx,6
 00713C77    mov         edx,dword ptr [ebp-8]
 00713C7A    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00713C80    call        TStringGrid.GetCells
 00713C85    mov         edx,dword ptr [ebp-2C]
 00713C88    mov         eax,dword ptr [ebp-1C]
 00713C8B    call        TFXPAD.SapInputToInt
 00713C90    movzx       eax,al
 00713C93    mov         edx,dword ptr [ebp-0C]
 00713C96    add         edx,0FFFFFFFB
 00713C99    cmp         edx,11
>00713C9C    ja          00714856
 00713CA2    jmp         dword ptr [edx*4+713CA9]
 00713CA2    dd          00713CF1
 00713CA2    dd          00713D3E
 00713CA2    dd          00713E20
 00713CA2    dd          00713E9F
 00713CA2    dd          00713F4E
 00713CA2    dd          00713F4E
 00713CA2    dd          00713F4E
 00713CA2    dd          00713F4E
 00713CA2    dd          007141EA
 00713CA2    dd          007143AA
 00713CA2    dd          007143F7
 00713CA2    dd          0071442C
 00713CA2    dd          00714487
 00713CA2    dd          007144DA
 00713CA2    dd          0071451E
 00713CA2    dd          007146CE
 00713CA2    dd          00714786
 00713CA2    dd          007147D6
 00713CF1    movzx       eax,word ptr [ebp-0E]
 00713CF5    shr         ax,8
 00713CF9    mov         edx,dword ptr ds:[7C4C50];^gvar_007C27A0
 00713CFF    cmp         ax,0FF
>00713D03    ja          00713D0B
 00713D05    movzx       eax,ax
 00713D08    bt          dword ptr [edx],eax
>00713D0B    jb          00715786
 00713D11    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00713D17    mov         edx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 00713D1D    movzx       ecx,word ptr [ebp-0E]
 00713D21    mov         eax,ebx
 00713D23    call        TAPFillDlg.EnableOrDisableSapTypePopUpItems
 00713D28    mov         ecx,dword ptr [ebp-14]
 00713D2B    mov         edx,dword ptr [ebp-18]
 00713D2E    mov         eax,dword ptr [esi+63C];TFXADMenuFrame.SapTypeMenu:TPopupMenu
 00713D34    mov         edi,dword ptr [eax]
 00713D36    call        dword ptr [edi+54];TPopupMenu.Popup
>00713D39    jmp         00714856
 00713D3E    movzx       eax,word ptr [ebp-0E]
 00713D42    and         ax,0FF
 00713D46    sub         ax,1
>00713D4A    jb          00713DC7
>00713D4C    jne         00714856
 00713D52    movzx       eax,word ptr [ebp-0E]
 00713D56    shr         ax,8
 00713D5A    mov         edx,dword ptr ds:[7C4B18];^gvar_007C2740:Word
 00713D60    cmp         ax,0FF
>00713D64    ja          00713D6C
 00713D66    movzx       eax,ax
 00713D69    bt          dword ptr [edx],eax
>00713D6C    jae         00713D88
 00713D6E    mov         dl,4
 00713D70    mov         eax,esi
 00713D72    call        TFXADMenuFrame.EnableOrDisableInputFunctionMenuItems
 00713D77    mov         ecx,dword ptr [ebp-14]
 00713D7A    mov         edx,dword ptr [ebp-18]
 00713D7D    mov         eax,dword ptr [esi+730];TFXADMenuFrame.ComInputMenu:TPopupMenu
 00713D83    mov         edi,dword ptr [eax]
 00713D85    call        dword ptr [edi+54];TPopupMenu.Popup
 00713D88    movzx       eax,word ptr [ebp-0E]
 00713D8C    shr         ax,8
 00713D90    mov         edx,dword ptr ds:[7C43C8];^gvar_007C2720
 00713D96    cmp         ax,0FF
>00713D9A    ja          00713DA2
 00713D9C    movzx       eax,ax
 00713D9F    bt          dword ptr [edx],eax
>00713DA2    jae         00714856
 00713DA8    mov         dl,4
 00713DAA    mov         eax,esi
 00713DAC    call        TFXADMenuFrame.EnableOrDisableCzmInputFunctions
 00713DB1    mov         ecx,dword ptr [ebp-14]
 00713DB4    mov         edx,dword ptr [ebp-18]
 00713DB7    mov         eax,dword ptr [esi+608];TFXADMenuFrame.ComCzmMenu:TPopupMenu
 00713DBD    mov         edi,dword ptr [eax]
 00713DBF    call        dword ptr [edi+54];TPopupMenu.Popup
>00713DC2    jmp         00714856
 00713DC7    movzx       eax,word ptr [ebp-0E]
 00713DCB    shr         ax,8
 00713DCF    cmp         ax,4
>00713DD3    jne         00713DEF
 00713DD5    mov         dl,4
 00713DD7    mov         eax,esi
 00713DD9    call        TFXADMenuFrame.EnableOrDisableInputFunctionMenuItems
 00713DDE    mov         ecx,dword ptr [ebp-14]
 00713DE1    mov         edx,dword ptr [ebp-18]
 00713DE4    mov         eax,dword ptr [esi+730];TFXADMenuFrame.ComInputMenu:TPopupMenu
 00713DEA    mov         edi,dword ptr [eax]
 00713DEC    call        dword ptr [edi+54];TPopupMenu.Popup
 00713DEF    movzx       eax,word ptr [ebp-0E]
 00713DF3    shr         ax,8
 00713DF7    cmp         ax,6
>00713DFB    jne         00714856
 00713E01    mov         dl,4
 00713E03    mov         eax,esi
 00713E05    call        TFXADMenuFrame.EnableOrDisableCzmInputFunctions
 00713E0A    mov         ecx,dword ptr [ebp-14]
 00713E0D    mov         edx,dword ptr [ebp-18]
 00713E10    mov         eax,dword ptr [esi+608];TFXADMenuFrame.ComCzmMenu:TPopupMenu
 00713E16    mov         edi,dword ptr [eax]
 00713E18    call        dword ptr [edi+54];TPopupMenu.Popup
>00713E1B    jmp         00714856
 00713E20    movzx       eax,word ptr [ebp-0E]
 00713E24    and         ax,0FF
 00713E28    sub         ax,1
>00713E2C    jb          00713E77
>00713E2E    jne         00714856
 00713E34    movzx       eax,word ptr [ebp-0E]
 00713E38    shr         ax,8
 00713E3C    mov         edx,dword ptr ds:[7C4B18];^gvar_007C2740:Word
 00713E42    mov         ecx,eax
 00713E44    cmp         cx,0FF
>00713E49    ja          00713E51
 00713E4B    movzx       ecx,cx
 00713E4E    bt          dword ptr [edx],ecx
>00713E51    jae         00714856
 00713E57    cmp         ax,1E
>00713E5B    je          00714856
 00713E61    mov         ecx,dword ptr [ebp-14]
 00713E64    mov         edx,dword ptr [ebp-18]
 00713E67    mov         eax,dword ptr [esi+340];TFXADMenuFrame.ComYesNoMenu:TPopupMenu
 00713E6D    mov         edi,dword ptr [eax]
 00713E6F    call        dword ptr [edi+54];TPopupMenu.Popup
>00713E72    jmp         00714856
 00713E77    movzx       eax,word ptr [ebp-0E]
 00713E7B    shr         ax,8
 00713E7F    cmp         ax,4
>00713E83    jne         00714856
 00713E89    mov         ecx,dword ptr [ebp-14]
 00713E8C    mov         edx,dword ptr [ebp-18]
 00713E8F    mov         eax,dword ptr [esi+340];TFXADMenuFrame.ComYesNoMenu:TPopupMenu
 00713E95    mov         edi,dword ptr [eax]
 00713E97    call        dword ptr [edi+54];TPopupMenu.Popup
>00713E9A    jmp         00714856
 00713E9F    mov         eax,[007C4910];^gvar_007CA83B
 00713EA4    cmp         byte ptr [eax],0
>00713EA7    je          00714856
 00713EAD    movzx       eax,word ptr [ebp-0E]
 00713EB1    shr         ax,8
 00713EB5    test        ax,ax
>00713EB8    je          00714856
 00713EBE    movzx       edx,word ptr [ebp-0E]
 00713EC2    and         dx,0FF
 00713EC7    dec         dx
>00713ECA    jne         00714856
 00713ED0    sub         ax,5
>00713ED4    je          00713EE0
 00713ED6    dec         ax
>00713ED9    je          00713F10
>00713EDB    jmp         00714856
 00713EE0    mov         dl,1
 00713EE2    mov         eax,dword ptr [esi+0A9C];TFXADMenuFrame.miSapEnv8:TMenuItem
 00713EE8    call        TMenuItem.SetEnabled
 00713EED    mov         dl,1
 00713EEF    mov         eax,dword ptr [esi+0A9C];TFXADMenuFrame.miSapEnv8:TMenuItem
 00713EF5    call        TMenuItem.SetVisible
 00713EFA    mov         ecx,dword ptr [ebp-14]
 00713EFD    mov         edx,dword ptr [ebp-18]
 00713F00    mov         eax,dword ptr [esi+0A78];TFXADMenuFrame.SapEnvironmentMenu:TPopupMenu
 00713F06    mov         edi,dword ptr [eax]
 00713F08    call        dword ptr [edi+54];TPopupMenu.Popup
>00713F0B    jmp         00714856
 00713F10    mov         eax,[007C4888];^gvar_007C2820
 00713F15    test        byte ptr [eax],40
>00713F18    je          00714856
 00713F1E    xor         edx,edx
 00713F20    mov         eax,dword ptr [esi+0A9C];TFXADMenuFrame.miSapEnv8:TMenuItem
 00713F26    call        TMenuItem.SetEnabled
 00713F2B    xor         edx,edx
 00713F2D    mov         eax,dword ptr [esi+0A9C];TFXADMenuFrame.miSapEnv8:TMenuItem
 00713F33    call        TMenuItem.SetVisible
 00713F38    mov         ecx,dword ptr [ebp-14]
 00713F3B    mov         edx,dword ptr [ebp-18]
 00713F3E    mov         eax,dword ptr [esi+0A78];TFXADMenuFrame.SapEnvironmentMenu:TPopupMenu
 00713F44    mov         edi,dword ptr [eax]
 00713F46    call        dword ptr [edi+54];TPopupMenu.Popup
>00713F49    jmp         00714856
 00713F4E    mov         eax,[007C4910];^gvar_007CA83B
 00713F53    cmp         byte ptr [eax],0
>00713F56    je          00714856
 00713F5C    movzx       eax,word ptr [ebp-0E]
 00713F60    shr         ax,8
 00713F64    test        ax,ax
>00713F67    je          00714856
 00713F6D    movzx       eax,word ptr [ebp-0E]
 00713F71    and         ax,0FF
 00713F75    sub         ax,1
>00713F79    jb          0071412B
>00713F7F    jne         00714856
 00713F85    movzx       eax,word ptr [ebp-0E]
 00713F89    shr         ax,8
 00713F8D    movzx       eax,ax
 00713F90    cmp         eax,0D
>00713F93    ja          00714856
 00713F99    jmp         dword ptr [eax*4+713FA0]
 00713F99    dd          00714856
 00713F99    dd          00713FFF
 00713F99    dd          00713FFF
 00713F99    dd          00713FFF
 00713F99    dd          00714015
 00713F99    dd          0071402B
 00713F99    dd          0071406E
 00713F99    dd          00714856
 00713F99    dd          00714856
 00713F99    dd          00714856
 00713F99    dd          00713FD8
 00713F99    dd          007140D1
 00713F99    dd          007140FE
 00713F99    dd          00713FD8
 00713FD8    mov         eax,dword ptr [ebp-8]
 00713FDB    sub         eax,9
>00713FDE    je          00713FE9
 00713FE0    sub         eax,2
>00713FE3    jne         00714856
 00713FE9    mov         ecx,dword ptr [ebp-14]
 00713FEC    mov         edx,dword ptr [ebp-18]
 00713FEF    mov         eax,dword ptr [esi+850];TFXADMenuFrame.SapBeamLevelMenu:TPopupMenu
 00713FF5    mov         edi,dword ptr [eax]
 00713FF7    call        dword ptr [edi+54];TPopupMenu.Popup
>00713FFA    jmp         00714856
 00713FFF    mov         ecx,dword ptr [ebp-14]
 00714002    mov         edx,dword ptr [ebp-18]
 00714005    mov         eax,dword ptr [esi+35C];TFXADMenuFrame.ComLevelMenu:TPopupMenu
 0071400B    mov         edi,dword ptr [eax]
 0071400D    call        dword ptr [edi+54];TPopupMenu.Popup
>00714010    jmp         00714856
 00714015    mov         ecx,dword ptr [ebp-14]
 00714018    mov         edx,dword ptr [ebp-18]
 0071401B    mov         eax,dword ptr [esi+3A4];TFXADMenuFrame.SysMultiLevelMenu:TPopupMenu
 00714021    mov         edi,dword ptr [eax]
 00714023    call        dword ptr [edi+54];TPopupMenu.Popup
>00714026    jmp         00714856
 0071402B    lea         eax,[ebp-30]
 0071402E    push        eax
 0071402F    mov         ecx,8
 00714034    mov         edx,dword ptr [ebp-8]
 00714037    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071403D    call        TStringGrid.GetCells
 00714042    mov         eax,dword ptr [ebp-30]
 00714045    mov         edx,dword ptr ds:[7C4BB8];^gvar_007C2384:array[9] of ?
 0071404B    mov         edx,dword ptr [edx]
 0071404D    call        @UStrEqual
>00714052    jne         00714856
 00714058    mov         ecx,dword ptr [ebp-14]
 0071405B    mov         edx,dword ptr [ebp-18]
 0071405E    mov         eax,dword ptr [esi+3A4];TFXADMenuFrame.SysMultiLevelMenu:TPopupMenu
 00714064    mov         edi,dword ptr [eax]
 00714066    call        dword ptr [edi+54];TPopupMenu.Popup
>00714069    jmp         00714856
 0071406E    mov         eax,[007C4888];^gvar_007C2820
 00714073    test        byte ptr [eax],40
>00714076    jne         0071408E
 00714078    mov         ecx,dword ptr [ebp-14]
 0071407B    mov         edx,dword ptr [ebp-18]
 0071407E    mov         eax,dword ptr [esi+3A4];TFXADMenuFrame.SysMultiLevelMenu:TPopupMenu
 00714084    mov         edi,dword ptr [eax]
 00714086    call        dword ptr [edi+54];TPopupMenu.Popup
>00714089    jmp         00714856
 0071408E    lea         eax,[ebp-34]
 00714091    push        eax
 00714092    mov         ecx,8
 00714097    mov         edx,dword ptr [ebp-8]
 0071409A    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007140A0    call        TStringGrid.GetCells
 007140A5    mov         eax,dword ptr [ebp-34]
 007140A8    mov         edx,dword ptr ds:[7C4BB8];^gvar_007C2384:array[9] of ?
 007140AE    mov         edx,dword ptr [edx]
 007140B0    call        @UStrEqual
>007140B5    jne         00714856
 007140BB    mov         ecx,dword ptr [ebp-14]
 007140BE    mov         edx,dword ptr [ebp-18]
 007140C1    mov         eax,dword ptr [esi+3A4];TFXADMenuFrame.SysMultiLevelMenu:TPopupMenu
 007140C7    mov         edi,dword ptr [eax]
 007140C9    call        dword ptr [edi+54];TPopupMenu.Popup
>007140CC    jmp         00714856
 007140D1    mov         eax,[007C4E24];^gvar_007CA83C
 007140D6    cmp         byte ptr [eax],0
>007140D9    je          00714856
 007140DF    mov         dl,9
 007140E1    mov         eax,esi
 007140E3    call        TFXADMenuFrame.EnableOrDisableLaserLevelMenuItems
 007140E8    mov         ecx,dword ptr [ebp-14]
 007140EB    mov         edx,dword ptr [ebp-18]
 007140EE    mov         eax,dword ptr [esi+374];TFXADMenuFrame.LaserLevelMenu:TPopupMenu
 007140F4    mov         edi,dword ptr [eax]
 007140F6    call        dword ptr [edi+54];TPopupMenu.Popup
>007140F9    jmp         00714856
 007140FE    mov         eax,[007C4E24];^gvar_007CA83C
 00714103    cmp         byte ptr [eax],0
>00714106    je          00714856
 0071410C    mov         dl,0A
 0071410E    mov         eax,esi
 00714110    call        TFXADMenuFrame.EnableOrDisableLaserLevelMenuItems
 00714115    mov         ecx,dword ptr [ebp-14]
 00714118    mov         edx,dword ptr [ebp-18]
 0071411B    mov         eax,dword ptr [esi+374];TFXADMenuFrame.LaserLevelMenu:TPopupMenu
 00714121    mov         edi,dword ptr [eax]
 00714123    call        dword ptr [edi+54];TPopupMenu.Popup
>00714126    jmp         00714856
 0071412B    movzx       eax,word ptr [ebp-0E]
 0071412F    shr         ax,8
 00714133    dec         eax
 00714134    sub         ax,2
>00714138    jb          00714140
 0071413A    sub         ax,0C
>0071413E    jne         00714151
 00714140    mov         ecx,dword ptr [ebp-14]
 00714143    mov         edx,dword ptr [ebp-18]
 00714146    mov         eax,dword ptr [esi+35C];TFXADMenuFrame.ComLevelMenu:TPopupMenu
 0071414C    mov         edi,dword ptr [eax]
 0071414E    call        dword ptr [edi+54];TPopupMenu.Popup
 00714151    movzx       eax,word ptr [ebp-0E]
 00714155    shr         ax,8
 00714159    sub         ax,0B
>0071415D    je          00714168
 0071415F    add         eax,0FFFFFFFE
 00714162    sub         ax,2
>00714166    jae         00714179
 00714168    mov         ecx,dword ptr [ebp-14]
 0071416B    mov         edx,dword ptr [ebp-18]
 0071416E    mov         eax,dword ptr [esi+3A4];TFXADMenuFrame.SysMultiLevelMenu:TPopupMenu
 00714174    mov         edi,dword ptr [eax]
 00714176    call        dword ptr [edi+54];TPopupMenu.Popup
 00714179    movzx       eax,word ptr [ebp-0E]
 0071417D    shr         ax,8
 00714181    sub         ax,9
>00714185    jne         007141AB
 00714187    mov         eax,[007C4E24];^gvar_007CA83C
 0071418C    cmp         byte ptr [eax],0
>0071418F    je          007141AB
 00714191    mov         dl,9
 00714193    mov         eax,esi
 00714195    call        TFXADMenuFrame.EnableOrDisableLaserLevelMenuItems
 0071419A    mov         ecx,dword ptr [ebp-14]
 0071419D    mov         edx,dword ptr [ebp-18]
 007141A0    mov         eax,dword ptr [esi+374];TFXADMenuFrame.LaserLevelMenu:TPopupMenu
 007141A6    mov         edi,dword ptr [eax]
 007141A8    call        dword ptr [edi+54];TPopupMenu.Popup
 007141AB    movzx       eax,word ptr [ebp-0E]
 007141AF    shr         ax,8
 007141B3    sub         ax,0A
>007141B7    jne         00714856
 007141BD    mov         eax,[007C4E24];^gvar_007CA83C
 007141C2    cmp         byte ptr [eax],0
>007141C5    je          00714856
 007141CB    mov         dl,0A
 007141CD    mov         eax,esi
 007141CF    call        TFXADMenuFrame.EnableOrDisableLaserLevelMenuItems
 007141D4    mov         ecx,dword ptr [ebp-14]
 007141D7    mov         edx,dword ptr [ebp-18]
 007141DA    mov         eax,dword ptr [esi+374];TFXADMenuFrame.LaserLevelMenu:TPopupMenu
 007141E0    mov         edi,dword ptr [eax]
 007141E2    call        dword ptr [edi+54];TPopupMenu.Popup
>007141E5    jmp         00714856
 007141EA    mov         eax,[007C4910];^gvar_007CA83B
 007141EF    cmp         byte ptr [eax],0
>007141F2    je          00714856
 007141F8    movzx       eax,word ptr [ebp-0E]
 007141FC    shr         ax,8
 00714200    test        ax,ax
>00714203    je          00714856
 00714209    movzx       edx,word ptr [ebp-0E]
 0071420D    and         dx,0FF
 00714212    sub         dx,1
>00714216    jb          00714378
>0071421C    jne         00714856
 00714222    movzx       eax,ax
 00714225    add         eax,0FFFFFFEA
 00714228    cmp         eax,16
>0071422B    ja          00714362
 00714231    movzx       eax,byte ptr [eax+71423F]
 00714238    jmp         dword ptr [eax*4+714256]
 00714238    db          1
 00714238    db          1
 00714238    db          0
 00714238    db          1
 00714238    db          1
 00714238    db          0
 00714238    db          0
 00714238    db          0
 00714238    db          0
 00714238    db          0
 00714238    db          0
 00714238    db          0
 00714238    db          0
 00714238    db          1
 00714238    db          0
 00714238    db          0
 00714238    db          0
 00714238    db          0
 00714238    db          2
 00714238    db          2
 00714238    db          3
 00714238    db          2
 00714238    db          2
 00714238    dd          00714362
 00714238    dd          00714266
 00714238    dd          0071427C
 00714238    dd          00714856
 00714266    mov         ecx,dword ptr [ebp-14]
 00714269    mov         edx,dword ptr [ebp-18]
 0071426C    mov         eax,dword ptr [esi+34C];TFXADMenuFrame.ComMonitoringMenu:TPopupMenu
 00714272    mov         edi,dword ptr [eax]
 00714274    call        dword ptr [edi+54];TPopupMenu.Popup
>00714277    jmp         00714856
 0071427C    xor         edx,edx
 0071427E    mov         eax,dword ptr [esi+5F8];TFXADMenuFrame.miComSounderContinuous:TMenuItem
 00714284    call        TMenuItem.SetEnabled
 00714289    xor         edx,edx
 0071428B    mov         eax,dword ptr [esi+5F8];TFXADMenuFrame.miComSounderContinuous:TMenuItem
 00714291    call        TMenuItem.SetVisible
 00714296    xor         edx,edx
 00714298    mov         eax,dword ptr [esi+5FC];TFXADMenuFrame.miComSounderPulsed:TMenuItem
 0071429E    call        TMenuItem.SetEnabled
 007142A3    xor         edx,edx
 007142A5    mov         eax,dword ptr [esi+5FC];TFXADMenuFrame.miComSounderPulsed:TMenuItem
 007142AB    call        TMenuItem.SetVisible
 007142B0    xor         edx,edx
 007142B2    mov         eax,dword ptr [esi+600];TFXADMenuFrame.miComSounderPhasedevac:TMenuItem
 007142B8    call        TMenuItem.SetEnabled
 007142BD    xor         edx,edx
 007142BF    mov         eax,dword ptr [esi+600];TFXADMenuFrame.miComSounderPhasedevac:TMenuItem
 007142C5    call        TMenuItem.SetVisible
 007142CA    xor         edx,edx
 007142CC    mov         eax,dword ptr [esi+880];TFXADMenuFrame.miApoSndrTone:TMenuItem
 007142D2    call        TMenuItem.SetEnabled
 007142D7    xor         edx,edx
 007142D9    mov         eax,dword ptr [esi+880];TFXADMenuFrame.miApoSndrTone:TMenuItem
 007142DF    call        TMenuItem.SetVisible
 007142E4    xor         edx,edx
 007142E6    mov         eax,dword ptr [esi+884];TFXADMenuFrame.miApoSndrTonePair:TMenuItem
 007142EC    call        TMenuItem.SetEnabled
 007142F1    xor         edx,edx
 007142F3    mov         eax,dword ptr [esi+884];TFXADMenuFrame.miApoSndrTonePair:TMenuItem
 007142F9    call        TMenuItem.SetVisible
 007142FE    mov         dl,1
 00714300    mov         eax,dword ptr [esi+604];TFXADMenuFrame.miComSounderSwitch:TMenuItem
 00714306    call        TMenuItem.SetEnabled
 0071430B    mov         dl,1
 0071430D    mov         eax,dword ptr [esi+604];TFXADMenuFrame.miComSounderSwitch:TMenuItem
 00714313    call        TMenuItem.SetVisible
 00714318    mov         dl,1
 0071431A    mov         eax,dword ptr [esi+960];TFXADMenuFrame.miSapSndrTone:TMenuItem
 00714320    call        TMenuItem.SetEnabled
 00714325    mov         dl,1
 00714327    mov         eax,dword ptr [esi+960];TFXADMenuFrame.miSapSndrTone:TMenuItem
 0071432D    call        TMenuItem.SetVisible
 00714332    mov         dl,1
 00714334    mov         eax,dword ptr [esi+9E4];TFXADMenuFrame.miSapSndrTonePair:TMenuItem
 0071433A    call        TMenuItem.SetEnabled
 0071433F    mov         dl,1
 00714341    mov         eax,dword ptr [esi+9E4];TFXADMenuFrame.miSapSndrTonePair:TMenuItem
 00714347    call        TMenuItem.SetVisible
 0071434C    mov         ecx,dword ptr [ebp-14]
 0071434F    mov         edx,dword ptr [ebp-18]
 00714352    mov         eax,dword ptr [esi+5F4];TFXADMenuFrame.ComSounderModeMenu:TPopupMenu
 00714358    mov         edi,dword ptr [eax]
 0071435A    call        dword ptr [edi+54];TPopupMenu.Popup
>0071435D    jmp         00714856
 00714362    mov         ecx,dword ptr [ebp-14]
 00714365    mov         edx,dword ptr [ebp-18]
 00714368    mov         eax,dword ptr [esi+328];TFXADMenuFrame.ComInputModeMenu:TPopupMenu
 0071436E    mov         edi,dword ptr [eax]
 00714370    call        dword ptr [edi+54];TPopupMenu.Popup
>00714373    jmp         00714856
 00714378    sub         ax,5
>0071437C    jne         00714394
 0071437E    mov         ecx,dword ptr [ebp-14]
 00714381    mov         edx,dword ptr [ebp-18]
 00714384    mov         eax,dword ptr [esi+34C];TFXADMenuFrame.ComMonitoringMenu:TPopupMenu
 0071438A    mov         edi,dword ptr [eax]
 0071438C    call        dword ptr [edi+54];TPopupMenu.Popup
>0071438F    jmp         00714856
 00714394    mov         ecx,dword ptr [ebp-14]
 00714397    mov         edx,dword ptr [ebp-18]
 0071439A    mov         eax,dword ptr [esi+328];TFXADMenuFrame.ComInputModeMenu:TPopupMenu
 007143A0    mov         edi,dword ptr [eax]
 007143A2    call        dword ptr [edi+54];TPopupMenu.Popup
>007143A5    jmp         00714856
 007143AA    movzx       eax,word ptr [ebp-0E]
 007143AE    and         ax,0FF
 007143B2    cmp         ax,1
>007143B6    jne         00714856
 007143BC    movzx       eax,word ptr [ebp-0E]
 007143C0    shr         ax,8
 007143C4    add         eax,0FFFFFFD8
 007143C7    sub         ax,2
>007143CB    jb          007143D8
 007143CD    dec         eax
 007143CE    sub         ax,2
>007143D2    jae         00714856
 007143D8    mov         dl,4
 007143DA    mov         eax,esi
 007143DC    call        TFXADMenuFrame.EnableOrDisableSndrVolumeItems
 007143E1    mov         ecx,dword ptr [ebp-14]
 007143E4    mov         edx,dword ptr [ebp-18]
 007143E7    mov         eax,dword ptr [esi+93C];TFXADMenuFrame.ComSounderVolumeMenu:TPopupMenu
 007143ED    mov         edi,dword ptr [eax]
 007143EF    call        dword ptr [edi+54];TPopupMenu.Popup
>007143F2    jmp         00714856
 007143F7    mov         eax,[007C4910];^gvar_007CA83B
 007143FC    cmp         byte ptr [eax],0
>007143FF    je          00714856
 00714405    movzx       eax,word ptr [ebp-0E]
 00714409    shr         ax,8
 0071440D    test        ax,ax
>00714410    je          00714856
 00714416    mov         ecx,dword ptr [ebp-14]
 00714419    mov         edx,dword ptr [ebp-18]
 0071441C    mov         eax,dword ptr [esi+3C0];TFXADMenuFrame.ComInDelayMenu:TPopupMenu
 00714422    mov         edi,dword ptr [eax]
 00714424    call        dword ptr [edi+54];TPopupMenu.Popup
>00714427    jmp         00714856
 0071442C    mov         eax,[007C4910];^gvar_007CA83B
 00714431    cmp         byte ptr [eax],0
>00714434    je          00714856
 0071443A    movzx       eax,word ptr [ebp-0E]
 0071443E    shr         ax,8
 00714442    test        ax,ax
>00714445    je          00714856
 0071444B    movzx       edi,word ptr [ebp-0E]
 0071444F    and         di,0FF
 00714454    cmp         di,1
>00714458    jne         00714463
 0071445A    mov         dl,4
 0071445C    mov         eax,esi
 0071445E    call        TFXADMenuFrame.EnableOrDisableInputFilterMenuItems
 00714463    test        di,di
>00714466    jne         00714471
 00714468    mov         dl,1
 0071446A    mov         eax,esi
 0071446C    call        TFXADMenuFrame.EnableOrDisableInputFilterMenuItems
 00714471    mov         ecx,dword ptr [ebp-14]
 00714474    mov         edx,dword ptr [ebp-18]
 00714477    mov         eax,dword ptr [esi+3E0];TFXADMenuFrame.ComInFiltMenu:TPopupMenu
 0071447D    mov         edi,dword ptr [eax]
 0071447F    call        dword ptr [edi+54];TPopupMenu.Popup
>00714482    jmp         00714856
 00714487    mov         edx,dword ptr ds:[7C4910];^gvar_007CA83B
 0071448D    cmp         byte ptr [edx],0
>00714490    je          00714856
 00714496    movzx       edx,word ptr [ebp-0E]
 0071449A    shr         dx,8
 0071449E    test        dx,dx
>007144A1    je          00714856
 007144A7    movzx       eax,ax
 007144AA    cmp         eax,0FF
>007144AF    jbe         007144B6
 007144B1    call        @BoundErr
 007144B6    push        eax
 007144B7    movzx       ecx,word ptr [ebp-0E]
 007144BB    mov         dl,4
 007144BD    mov         eax,esi
 007144BF    call        TFXADMenuFrame.EnableOrDisableDayModePopupItems
 007144C4    mov         ecx,dword ptr [ebp-14]
 007144C7    mov         edx,dword ptr [ebp-18]
 007144CA    mov         eax,dword ptr [esi+3F8];TFXADMenuFrame.ComDayModeMenu:TPopupMenu
 007144D0    mov         edi,dword ptr [eax]
 007144D2    call        dword ptr [edi+54];TPopupMenu.Popup
>007144D5    jmp         00714856
 007144DA    movzx       edx,word ptr [ebp-0E]
 007144DE    shr         dx,8
 007144E2    test        dx,dx
>007144E5    je          00714856
 007144EB    movzx       eax,ax
 007144EE    cmp         eax,0FF
>007144F3    jbe         007144FA
 007144F5    call        @BoundErr
 007144FA    push        eax
 007144FB    movzx       ecx,word ptr [ebp-0E]
 007144FF    mov         dl,4
 00714501    mov         eax,esi
 00714503    call        TFXADMenuFrame.EnableOrDisableAPZDisPopupItems
 00714508    mov         ecx,dword ptr [ebp-14]
 0071450B    mov         edx,dword ptr [ebp-18]
 0071450E    mov         eax,dword ptr [esi+614];TFXADMenuFrame.ComZDisMenu:TPopupMenu
 00714514    mov         edi,dword ptr [eax]
 00714516    call        dword ptr [edi+54];TPopupMenu.Popup
>00714519    jmp         00714856
 0071451E    mov         eax,[007C42B4];^gvar_007CA839
 00714523    cmp         byte ptr [eax],0
>00714526    je          00714856
 0071452C    movzx       eax,word ptr [ebp-0E]
 00714530    and         ax,0FF
 00714534    sub         ax,1
>00714538    jb          0071461B
>0071453E    jne         00714856
 00714544    movzx       eax,word ptr [ebp-0E]
 00714548    shr         ax,8
 0071454C    mov         edx,eax
 0071454E    add         edx,0FFFFFFFE
 00714551    sub         dx,0C
>00714555    jb          0071458A
 00714557    add         edx,0FFFFFFF8
 0071455A    sub         dx,2
>0071455E    jb          0071458A
 00714560    dec         edx
 00714561    sub         dx,2
>00714565    jb          0071458A
 00714567    sub         dx,8
>0071456B    je          0071458A
 0071456D    add         edx,0FFFFFFFB
 00714570    sub         dx,5
>00714574    jb          0071458A
 00714576    add         eax,0FFFFFFD8
 00714579    sub         ax,2
>0071457D    jb          0071458A
 0071457F    dec         eax
 00714580    sub         ax,2
>00714584    jae         00714856
 0071458A    lea         eax,[ebp-38]
 0071458D    push        eax
 0071458E    mov         ecx,14
 00714593    mov         edx,dword ptr [ebp-8]
 00714596    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071459C    call        TStringGrid.GetCells
 007145A1    mov         edx,dword ptr [ebp-38]
 007145A4    mov         eax,dword ptr [ebp-1C]
 007145A7    call        TFXPAD.SapOutputToInt
 007145AC    movzx       ecx,al
 007145AF    mov         edx,dword ptr ds:[7C4DB8];^gvar_00901F74:Integer
 007145B5    mov         edx,dword ptr [edx]
 007145B7    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 007145BC    mov         eax,dword ptr [eax]
 007145BE    mov         eax,dword ptr [eax+14]
 007145C1    call        TFXPAD.IsOnlyGeneralOutput
 007145C6    test        al,al
>007145C8    jne         00714856
 007145CE    lea         eax,[ebp-3C]
 007145D1    push        eax
 007145D2    mov         ecx,14
 007145D7    mov         edx,dword ptr [ebp-8]
 007145DA    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007145E0    call        TStringGrid.GetCells
 007145E5    mov         edx,dword ptr [ebp-3C]
 007145E8    mov         eax,dword ptr [ebp-1C]
 007145EB    call        TFXPAD.SapOutputToInt
 007145F0    movzx       ecx,al
 007145F3    mov         edx,dword ptr ds:[7C4DB8];^gvar_00901F74:Integer
 007145F9    mov         edx,dword ptr [edx]
 007145FB    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00714600    mov         eax,dword ptr [eax]
 00714602    mov         eax,dword ptr [eax+14]
 00714605    call        TFXPAD.IsGeneralOrLocalOutput
 0071460A    mov         ecx,eax
 0071460C    mov         edx,dword ptr [ebp-0C]
 0071460F    mov         eax,ebx
 00714611    call        TAPFillDlg.SelectControlZones
>00714616    jmp         00714856
 0071461B    movzx       eax,word ptr [ebp-0E]
 0071461F    shr         ax,8
 00714623    mov         edx,dword ptr ds:[7C435C];^gvar_007C25E0
 00714629    cmp         ax,0FF
>0071462D    ja          00714635
 0071462F    movzx       eax,ax
 00714632    bt          dword ptr [edx],eax
>00714635    jae         00714856
 0071463B    lea         eax,[ebp-40]
 0071463E    push        eax
 0071463F    mov         ecx,14
 00714644    mov         edx,dword ptr [ebp-8]
 00714647    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071464D    call        TStringGrid.GetCells
 00714652    mov         edx,dword ptr [ebp-40]
 00714655    mov         eax,dword ptr [ebp-1C]
 00714658    call        TFXPAD.SapOutputToInt
 0071465D    movzx       ecx,al
 00714660    mov         edx,dword ptr ds:[7C4DB8];^gvar_00901F74:Integer
 00714666    mov         edx,dword ptr [edx]
 00714668    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0071466D    mov         eax,dword ptr [eax]
 0071466F    mov         eax,dword ptr [eax+14]
 00714672    call        TFXPAD.IsOnlyGeneralOutput
 00714677    test        al,al
>00714679    jne         00714856
 0071467F    lea         eax,[ebp-44]
 00714682    push        eax
 00714683    mov         ecx,14
 00714688    mov         edx,14
 0071468D    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00714693    call        TStringGrid.GetCells
 00714698    mov         edx,dword ptr [ebp-44]
 0071469B    mov         eax,dword ptr [ebp-1C]
 0071469E    call        TFXPAD.SapOutputToInt
 007146A3    movzx       ecx,al
 007146A6    mov         edx,dword ptr ds:[7C4DB8];^gvar_00901F74:Integer
 007146AC    mov         edx,dword ptr [edx]
 007146AE    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 007146B3    mov         eax,dword ptr [eax]
 007146B5    mov         eax,dword ptr [eax+14]
 007146B8    call        TFXPAD.IsGeneralOrLocalOutput
 007146BD    mov         ecx,eax
 007146BF    mov         edx,dword ptr [ebp-0C]
 007146C2    mov         eax,ebx
 007146C4    call        TAPFillDlg.SelectControlZones
>007146C9    jmp         00714856
 007146CE    movzx       eax,word ptr [ebp-0E]
 007146D2    and         ax,0FF
 007146D6    sub         ax,1
>007146DA    jb          00714747
>007146DC    jne         00714856
 007146E2    movzx       eax,word ptr [ebp-0E]
 007146E6    shr         ax,8
 007146EA    mov         edx,eax
 007146EC    add         edx,0FFFFFFFE
 007146EF    sub         dx,0C
>007146F3    jb          00714728
 007146F5    add         edx,0FFFFFFF8
 007146F8    sub         dx,2
>007146FC    jb          00714728
 007146FE    dec         edx
 007146FF    sub         dx,2
>00714703    jb          00714728
 00714705    sub         dx,8
>00714709    je          00714728
 0071470B    add         edx,0FFFFFFFB
 0071470E    sub         dx,5
>00714712    jb          00714728
 00714714    add         eax,0FFFFFFD8
 00714717    sub         ax,2
>0071471B    jb          00714728
 0071471D    dec         eax
 0071471E    sub         ax,2
>00714722    jae         00714856
 00714728    mov         dl,4
 0071472A    mov         eax,esi
 0071472C    call        TFXADMenuFrame.EnableOrDisableOutputFunctionMenuItems
 00714731    mov         ecx,dword ptr [ebp-14]
 00714734    mov         edx,dword ptr [ebp-18]
 00714737    mov         eax,dword ptr [esi+58C];TFXADMenuFrame.ComOutputMenu:TPopupMenu
 0071473D    mov         edi,dword ptr [eax]
 0071473F    call        dword ptr [edi+54];TPopupMenu.Popup
>00714742    jmp         00714856
 00714747    movzx       eax,word ptr [ebp-0E]
 0071474B    shr         ax,8
 0071474F    mov         edx,dword ptr ds:[7C435C];^gvar_007C25E0
 00714755    cmp         ax,0FF
>00714759    ja          00714761
 0071475B    movzx       eax,ax
 0071475E    bt          dword ptr [edx],eax
>00714761    jae         00714856
 00714767    mov         dl,4
 00714769    mov         eax,esi
 0071476B    call        TFXADMenuFrame.EnableOrDisableOutputFunctionMenuItems
 00714770    mov         ecx,dword ptr [ebp-14]
 00714773    mov         edx,dword ptr [ebp-18]
 00714776    mov         eax,dword ptr [esi+58C];TFXADMenuFrame.ComOutputMenu:TPopupMenu
 0071477C    mov         edi,dword ptr [eax]
 0071477E    call        dword ptr [edi+54];TPopupMenu.Popup
>00714781    jmp         00714856
 00714786    movzx       eax,word ptr [ebp-0E]
 0071478A    and         ax,0FF
 0071478E    dec         ax
>00714791    jne         00714856
 00714797    movzx       eax,word ptr [ebp-0E]
 0071479B    shr         ax,8
 0071479F    mov         edx,dword ptr ds:[7C4898];^gvar_007C27C0
 007147A5    cmp         ax,0FF
>007147A9    ja          007147B1
 007147AB    movzx       eax,ax
 007147AE    bt          dword ptr [edx],eax
>007147B1    jae         00714856
 007147B7    mov         dl,4
 007147B9    mov         eax,esi
 007147BB    call        TFXADMenuFrame.EnableOrDisableOutputFunctionMenuItems
 007147C0    mov         ecx,dword ptr [ebp-14]
 007147C3    mov         edx,dword ptr [ebp-18]
 007147C6    mov         eax,dword ptr [esi+58C];TFXADMenuFrame.ComOutputMenu:TPopupMenu
 007147CC    mov         edi,dword ptr [eax]
 007147CE    call        dword ptr [edi+54];TPopupMenu.Popup
>007147D1    jmp         00714856
 007147D6    movzx       eax,word ptr [ebp-0E]
 007147DA    and         ax,0FF
 007147DE    sub         ax,1
>007147E2    jb          00714829
>007147E4    jne         00714856
 007147E6    movzx       eax,word ptr [ebp-0E]
 007147EA    shr         ax,8
 007147EE    add         eax,0FFFFFFFE
 007147F1    sub         ax,0C
>007147F5    jb          00714816
 007147F7    add         eax,0FFFFFFF8
 007147FA    sub         ax,2
>007147FE    jb          00714816
 00714800    dec         eax
 00714801    sub         ax,2
>00714805    jb          00714816
 00714807    sub         ax,8
>0071480B    je          00714816
 0071480D    add         eax,0FFFFFFFB
 00714810    sub         ax,5
>00714814    jae         00714856
 00714816    mov         ecx,dword ptr [ebp-14]
 00714819    mov         edx,dword ptr [ebp-18]
 0071481C    mov         eax,dword ptr [esi+340];TFXADMenuFrame.ComYesNoMenu:TPopupMenu
 00714822    mov         edi,dword ptr [eax]
 00714824    call        dword ptr [edi+54];TPopupMenu.Popup
>00714827    jmp         00714856
 00714829    movzx       eax,word ptr [ebp-0E]
 0071482D    shr         ax,8
 00714831    mov         edx,dword ptr ds:[7C435C];^gvar_007C25E0
 00714837    cmp         ax,0FF
>0071483B    ja          00714843
 0071483D    movzx       eax,ax
 00714840    bt          dword ptr [edx],eax
>00714843    jae         00714856
 00714845    mov         ecx,dword ptr [ebp-14]
 00714848    mov         edx,dword ptr [ebp-18]
 0071484B    mov         eax,dword ptr [esi+340];TFXADMenuFrame.ComYesNoMenu:TPopupMenu
 00714851    mov         edi,dword ptr [eax]
 00714853    call        dword ptr [edi+54];TPopupMenu.Popup
 00714856    mov         eax,[007C4DB8];^gvar_00901F74:Integer
 0071485B    cmp         dword ptr [eax],3
>0071485E    je          0071486E
 00714860    mov         eax,[007C4DB8];^gvar_00901F74:Integer
 00714865    cmp         dword ptr [eax],5
>00714868    jne         0071502B
 0071486E    lea         eax,[ebp-48]
 00714871    push        eax
 00714872    mov         ecx,5
 00714877    mov         edx,dword ptr [ebp-8]
 0071487A    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00714880    call        TStringGrid.GetCells
 00714885    mov         edx,dword ptr [ebp-48]
 00714888    mov         eax,dword ptr [ebp-1C]
 0071488B    call        TFXPAD.ApoTypeToInt
 00714890    mov         word ptr [ebp-0E],ax
 00714894    lea         eax,[ebp-4C]
 00714897    push        eax
 00714898    mov         ecx,6
 0071489D    mov         edx,dword ptr [ebp-8]
 007148A0    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007148A6    call        TStringGrid.GetCells
 007148AB    mov         edx,dword ptr [ebp-4C]
 007148AE    mov         eax,dword ptr [ebp-1C]
 007148B1    call        TFXPAD.ComInputToInt
 007148B6    mov         edx,dword ptr [ebp-0C]
 007148B9    add         edx,0FFFFFFFB
 007148BC    cmp         edx,11
>007148BF    ja          0071502B
 007148C5    jmp         dword ptr [edx*4+7148CC]
 007148C5    dd          00714914
 007148C5    dd          0071492A
 007148C5    dd          0071502B
 007148C5    dd          0071502B
 007148C5    dd          0071498A
 007148C5    dd          0071498A
 007148C5    dd          0071498A
 007148C5    dd          0071498A
 007148C5    dd          00714A15
 007148C5    dd          00714D7A
 007148C5    dd          00714DA5
 007148C5    dd          00714DE8
 007148C5    dd          00714E34
 007148C5    dd          00714E87
 007148C5    dd          00714ECB
 007148C5    dd          00714F8A
 007148C5    dd          00714FC6
 007148C5    dd          00714FFE
 00714914    mov         ecx,dword ptr [ebp-14]
 00714917    mov         edx,dword ptr [ebp-18]
 0071491A    mov         eax,dword ptr [esi+418];TFXADMenuFrame.ApoTypeMenu:TPopupMenu
 00714920    mov         edi,dword ptr [eax]
 00714922    call        dword ptr [edi+54];TPopupMenu.Popup
>00714925    jmp         0071502B
 0071492A    movzx       eax,word ptr [ebp-0E]
 0071492E    shr         ax,8
 00714932    sub         ax,0A
>00714936    je          0071496B
 00714938    add         eax,0FFFFFFFE
 0071493B    sub         ax,4
>0071493F    jb          0071494C
 00714941    dec         eax
 00714942    sub         ax,3
>00714946    jae         0071502B
 0071494C    mov         dl,3
 0071494E    mov         eax,esi
 00714950    call        TFXADMenuFrame.EnableOrDisableInputFunctionMenuItems
 00714955    mov         ecx,dword ptr [ebp-14]
 00714958    mov         edx,dword ptr [ebp-18]
 0071495B    mov         eax,dword ptr [esi+730];TFXADMenuFrame.ComInputMenu:TPopupMenu
 00714961    mov         edi,dword ptr [eax]
 00714963    call        dword ptr [edi+54];TPopupMenu.Popup
>00714966    jmp         0071502B
 0071496B    mov         dl,3
 0071496D    mov         eax,esi
 0071496F    call        TFXADMenuFrame.EnableOrDisableCzmInputFunctions
 00714974    mov         ecx,dword ptr [ebp-14]
 00714977    mov         edx,dword ptr [ebp-18]
 0071497A    mov         eax,dword ptr [esi+608];TFXADMenuFrame.ComCzmMenu:TPopupMenu
 00714980    mov         edi,dword ptr [eax]
 00714982    call        dword ptr [edi+54];TPopupMenu.Popup
>00714985    jmp         0071502B
 0071498A    mov         eax,[007C4910];^gvar_007CA83B
 0071498F    cmp         byte ptr [eax],0
>00714992    je          0071502B
 00714998    movzx       eax,word ptr [ebp-0E]
 0071499C    shr         ax,8
 007149A0    movzx       eax,ax
 007149A3    cmp         eax,6
>007149A6    jg          007149B7
>007149A8    je          007149C5
 007149AA    dec         eax
 007149AB    sub         eax,4
>007149AE    jb          007149C5
>007149B0    je          007149DB
>007149B2    jmp         0071502B
 007149B7    sub         eax,8
>007149BA    je          007149C5
 007149BC    sub         eax,14
>007149BF    jne         0071502B
 007149C5    mov         ecx,dword ptr [ebp-14]
 007149C8    mov         edx,dword ptr [ebp-18]
 007149CB    mov         eax,dword ptr [esi+35C];TFXADMenuFrame.ComLevelMenu:TPopupMenu
 007149D1    mov         edi,dword ptr [eax]
 007149D3    call        dword ptr [edi+54];TPopupMenu.Popup
>007149D6    jmp         0071502B
 007149DB    movzx       eax,word ptr [ebp-0E]
 007149DF    and         ax,0FF
 007149E3    cmp         ax,2
>007149E7    jne         007149FF
 007149E9    mov         ecx,dword ptr [ebp-14]
 007149EC    mov         edx,dword ptr [ebp-18]
 007149EF    mov         eax,dword ptr [esi+35C];TFXADMenuFrame.ComLevelMenu:TPopupMenu
 007149F5    mov         edi,dword ptr [eax]
 007149F7    call        dword ptr [edi+54];TPopupMenu.Popup
>007149FA    jmp         0071502B
 007149FF    mov         ecx,dword ptr [ebp-14]
 00714A02    mov         edx,dword ptr [ebp-18]
 00714A05    mov         eax,dword ptr [esi+624];TFXADMenuFrame.ApoMultiLevelMenu:TPopupMenu
 00714A0B    mov         edi,dword ptr [eax]
 00714A0D    call        dword ptr [edi+54];TPopupMenu.Popup
>00714A10    jmp         0071502B
 00714A15    movzx       eax,word ptr [ebp-0E]
 00714A19    shr         ax,8
 00714A1D    movzx       eax,ax
 00714A20    cmp         eax,1C
>00714A23    ja          0071502B
 00714A29    movzx       eax,byte ptr [eax+714A37]
 00714A30    jmp         dword ptr [eax*4+714A54]
 00714A30    db          0
 00714A30    db          2
 00714A30    db          2
 00714A30    db          2
 00714A30    db          2
 00714A30    db          2
 00714A30    db          2
 00714A30    db          2
 00714A30    db          2
 00714A30    db          2
 00714A30    db          2
 00714A30    db          3
 00714A30    db          4
 00714A30    db          4
 00714A30    db          4
 00714A30    db          4
 00714A30    db          4
 00714A30    db          4
 00714A30    db          4
 00714A30    db          4
 00714A30    db          5
 00714A30    db          5
 00714A30    db          5
 00714A30    db          0
 00714A30    db          7
 00714A30    db          8
 00714A30    db          8
 00714A30    db          8
 00714A30    db          2
 00714A30    dd          0071502B
 00714A30    dd          0071502B
 00714A30    dd          00714A7D
 00714A30    dd          00714AA1
 00714A30    dd          00714AC5
 00714A30    dd          00714AE9
 00714A30    dd          0071502B
 00714A30    dd          00714C70
 00714A30    dd          00714C94
>00714A78    jmp         0071502B
 00714A7D    mov         eax,[007C4910];^gvar_007CA83B
 00714A82    cmp         byte ptr [eax],0
>00714A85    je          0071502B
 00714A8B    mov         ecx,dword ptr [ebp-14]
 00714A8E    mov         edx,dword ptr [ebp-18]
 00714A91    mov         eax,dword ptr [esi+328];TFXADMenuFrame.ComInputModeMenu:TPopupMenu
 00714A97    mov         edi,dword ptr [eax]
 00714A99    call        dword ptr [edi+54];TPopupMenu.Popup
>00714A9C    jmp         0071502B
 00714AA1    mov         eax,[007C4910];^gvar_007CA83B
 00714AA6    cmp         byte ptr [eax],0
>00714AA9    je          0071502B
 00714AAF    mov         ecx,dword ptr [ebp-14]
 00714AB2    mov         edx,dword ptr [ebp-18]
 00714AB5    mov         eax,dword ptr [esi+328];TFXADMenuFrame.ComInputModeMenu:TPopupMenu
 00714ABB    mov         edi,dword ptr [eax]
 00714ABD    call        dword ptr [edi+54];TPopupMenu.Popup
>00714AC0    jmp         0071502B
 00714AC5    mov         eax,[007C4910];^gvar_007CA83B
 00714ACA    cmp         byte ptr [eax],0
>00714ACD    je          0071502B
 00714AD3    mov         ecx,dword ptr [ebp-14]
 00714AD6    mov         edx,dword ptr [ebp-18]
 00714AD9    mov         eax,dword ptr [esi+328];TFXADMenuFrame.ComInputModeMenu:TPopupMenu
 00714ADF    mov         edi,dword ptr [eax]
 00714AE1    call        dword ptr [edi+54];TPopupMenu.Popup
>00714AE4    jmp         0071502B
 00714AE9    lea         eax,[ebp-50]
 00714AEC    push        eax
 00714AED    mov         ecx,dword ptr [ebp-0C]
 00714AF0    mov         edx,14
 00714AF5    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00714AFB    call        TStringGrid.GetCells
 00714B00    mov         edx,dword ptr [ebp-50]
 00714B03    mov         eax,dword ptr [ebp-1C]
 00714B06    call        TFXPAD.ApoOutputToInt
 00714B0B    dec         eax
 00714B0C    sub         al,2
>00714B0E    jb          00714B1E
 00714B10    add         al,0F2
 00714B12    sub         al,2
>00714B14    jb          00714B54
>00714B16    je          00714B1E
 00714B18    dec         al
>00714B1A    je          00714B54
>00714B1C    jmp         00714B8A
 00714B1E    mov         dl,1
 00714B20    mov         eax,dword ptr [esi+5FC];TFXADMenuFrame.miComSounderPulsed:TMenuItem
 00714B26    call        TMenuItem.SetEnabled
 00714B2B    mov         dl,1
 00714B2D    mov         eax,dword ptr [esi+5FC];TFXADMenuFrame.miComSounderPulsed:TMenuItem
 00714B33    call        TMenuItem.SetVisible
 00714B38    mov         dl,1
 00714B3A    mov         eax,dword ptr [esi+600];TFXADMenuFrame.miComSounderPhasedevac:TMenuItem
 00714B40    call        TMenuItem.SetEnabled
 00714B45    mov         dl,1
 00714B47    mov         eax,dword ptr [esi+600];TFXADMenuFrame.miComSounderPhasedevac:TMenuItem
 00714B4D    call        TMenuItem.SetVisible
>00714B52    jmp         00714BBE
 00714B54    xor         edx,edx
 00714B56    mov         eax,dword ptr [esi+5FC];TFXADMenuFrame.miComSounderPulsed:TMenuItem
 00714B5C    call        TMenuItem.SetEnabled
 00714B61    xor         edx,edx
 00714B63    mov         eax,dword ptr [esi+5FC];TFXADMenuFrame.miComSounderPulsed:TMenuItem
 00714B69    call        TMenuItem.SetVisible
 00714B6E    xor         edx,edx
 00714B70    mov         eax,dword ptr [esi+600];TFXADMenuFrame.miComSounderPhasedevac:TMenuItem
 00714B76    call        TMenuItem.SetEnabled
 00714B7B    xor         edx,edx
 00714B7D    mov         eax,dword ptr [esi+600];TFXADMenuFrame.miComSounderPhasedevac:TMenuItem
 00714B83    call        TMenuItem.SetVisible
>00714B88    jmp         00714BBE
 00714B8A    mov         dl,1
 00714B8C    mov         eax,dword ptr [esi+5FC];TFXADMenuFrame.miComSounderPulsed:TMenuItem
 00714B92    call        TMenuItem.SetEnabled
 00714B97    mov         dl,1
 00714B99    mov         eax,dword ptr [esi+5FC];TFXADMenuFrame.miComSounderPulsed:TMenuItem
 00714B9F    call        TMenuItem.SetVisible
 00714BA4    xor         edx,edx
 00714BA6    mov         eax,dword ptr [esi+600];TFXADMenuFrame.miComSounderPhasedevac:TMenuItem
 00714BAC    call        TMenuItem.SetEnabled
 00714BB1    xor         edx,edx
 00714BB3    mov         eax,dword ptr [esi+600];TFXADMenuFrame.miComSounderPhasedevac:TMenuItem
 00714BB9    call        TMenuItem.SetVisible
 00714BBE    mov         dl,1
 00714BC0    mov         eax,dword ptr [esi+5F8];TFXADMenuFrame.miComSounderContinuous:TMenuItem
 00714BC6    call        TMenuItem.SetEnabled
 00714BCB    mov         dl,1
 00714BCD    mov         eax,dword ptr [esi+5F8];TFXADMenuFrame.miComSounderContinuous:TMenuItem
 00714BD3    call        TMenuItem.SetVisible
 00714BD8    xor         edx,edx
 00714BDA    mov         eax,dword ptr [esi+604];TFXADMenuFrame.miComSounderSwitch:TMenuItem
 00714BE0    call        TMenuItem.SetEnabled
 00714BE5    xor         edx,edx
 00714BE7    mov         eax,dword ptr [esi+604];TFXADMenuFrame.miComSounderSwitch:TMenuItem
 00714BED    call        TMenuItem.SetVisible
 00714BF2    xor         edx,edx
 00714BF4    mov         eax,dword ptr [esi+880];TFXADMenuFrame.miApoSndrTone:TMenuItem
 00714BFA    call        TMenuItem.SetEnabled
 00714BFF    xor         edx,edx
 00714C01    mov         eax,dword ptr [esi+880];TFXADMenuFrame.miApoSndrTone:TMenuItem
 00714C07    call        TMenuItem.SetVisible
 00714C0C    xor         edx,edx
 00714C0E    mov         eax,dword ptr [esi+884];TFXADMenuFrame.miApoSndrTonePair:TMenuItem
 00714C14    call        TMenuItem.SetEnabled
 00714C19    xor         edx,edx
 00714C1B    mov         eax,dword ptr [esi+884];TFXADMenuFrame.miApoSndrTonePair:TMenuItem
 00714C21    call        TMenuItem.SetVisible
 00714C26    xor         edx,edx
 00714C28    mov         eax,dword ptr [esi+960];TFXADMenuFrame.miSapSndrTone:TMenuItem
 00714C2E    call        TMenuItem.SetEnabled
 00714C33    xor         edx,edx
 00714C35    mov         eax,dword ptr [esi+960];TFXADMenuFrame.miSapSndrTone:TMenuItem
 00714C3B    call        TMenuItem.SetVisible
 00714C40    xor         edx,edx
 00714C42    mov         eax,dword ptr [esi+9E4];TFXADMenuFrame.miSapSndrTonePair:TMenuItem
 00714C48    call        TMenuItem.SetEnabled
 00714C4D    xor         edx,edx
 00714C4F    mov         eax,dword ptr [esi+9E4];TFXADMenuFrame.miSapSndrTonePair:TMenuItem
 00714C55    call        TMenuItem.SetVisible
 00714C5A    mov         ecx,dword ptr [ebp-14]
 00714C5D    mov         edx,dword ptr [ebp-18]
 00714C60    mov         eax,dword ptr [esi+5F4];TFXADMenuFrame.ComSounderModeMenu:TPopupMenu
 00714C66    mov         edi,dword ptr [eax]
 00714C68    call        dword ptr [edi+54];TPopupMenu.Popup
>00714C6B    jmp         0071502B
 00714C70    mov         eax,[007C4910];^gvar_007CA83B
 00714C75    cmp         byte ptr [eax],0
>00714C78    je          0071502B
 00714C7E    mov         ecx,dword ptr [ebp-14]
 00714C81    mov         edx,dword ptr [ebp-18]
 00714C84    mov         eax,dword ptr [esi+328];TFXADMenuFrame.ComInputModeMenu:TPopupMenu
 00714C8A    mov         edi,dword ptr [eax]
 00714C8C    call        dword ptr [edi+54];TPopupMenu.Popup
>00714C8F    jmp         0071502B
 00714C94    xor         edx,edx
 00714C96    mov         eax,dword ptr [esi+5F8];TFXADMenuFrame.miComSounderContinuous:TMenuItem
 00714C9C    call        TMenuItem.SetEnabled
 00714CA1    xor         edx,edx
 00714CA3    mov         eax,dword ptr [esi+5F8];TFXADMenuFrame.miComSounderContinuous:TMenuItem
 00714CA9    call        TMenuItem.SetVisible
 00714CAE    xor         edx,edx
 00714CB0    mov         eax,dword ptr [esi+5FC];TFXADMenuFrame.miComSounderPulsed:TMenuItem
 00714CB6    call        TMenuItem.SetEnabled
 00714CBB    xor         edx,edx
 00714CBD    mov         eax,dword ptr [esi+5FC];TFXADMenuFrame.miComSounderPulsed:TMenuItem
 00714CC3    call        TMenuItem.SetVisible
 00714CC8    xor         edx,edx
 00714CCA    mov         eax,dword ptr [esi+600];TFXADMenuFrame.miComSounderPhasedevac:TMenuItem
 00714CD0    call        TMenuItem.SetEnabled
 00714CD5    xor         edx,edx
 00714CD7    mov         eax,dword ptr [esi+600];TFXADMenuFrame.miComSounderPhasedevac:TMenuItem
 00714CDD    call        TMenuItem.SetVisible
 00714CE2    xor         edx,edx
 00714CE4    mov         eax,dword ptr [esi+604];TFXADMenuFrame.miComSounderSwitch:TMenuItem
 00714CEA    call        TMenuItem.SetEnabled
 00714CEF    xor         edx,edx
 00714CF1    mov         eax,dword ptr [esi+604];TFXADMenuFrame.miComSounderSwitch:TMenuItem
 00714CF7    call        TMenuItem.SetVisible
 00714CFC    mov         dl,1
 00714CFE    mov         eax,dword ptr [esi+880];TFXADMenuFrame.miApoSndrTone:TMenuItem
 00714D04    call        TMenuItem.SetEnabled
 00714D09    mov         dl,1
 00714D0B    mov         eax,dword ptr [esi+880];TFXADMenuFrame.miApoSndrTone:TMenuItem
 00714D11    call        TMenuItem.SetVisible
 00714D16    mov         dl,1
 00714D18    mov         eax,dword ptr [esi+884];TFXADMenuFrame.miApoSndrTonePair:TMenuItem
 00714D1E    call        TMenuItem.SetEnabled
 00714D23    mov         dl,1
 00714D25    mov         eax,dword ptr [esi+884];TFXADMenuFrame.miApoSndrTonePair:TMenuItem
 00714D2B    call        TMenuItem.SetVisible
 00714D30    xor         edx,edx
 00714D32    mov         eax,dword ptr [esi+960];TFXADMenuFrame.miSapSndrTone:TMenuItem
 00714D38    call        TMenuItem.SetEnabled
 00714D3D    xor         edx,edx
 00714D3F    mov         eax,dword ptr [esi+960];TFXADMenuFrame.miSapSndrTone:TMenuItem
 00714D45    call        TMenuItem.SetVisible
 00714D4A    xor         edx,edx
 00714D4C    mov         eax,dword ptr [esi+9E4];TFXADMenuFrame.miSapSndrTonePair:TMenuItem
 00714D52    call        TMenuItem.SetEnabled
 00714D57    xor         edx,edx
 00714D59    mov         eax,dword ptr [esi+9E4];TFXADMenuFrame.miSapSndrTonePair:TMenuItem
 00714D5F    call        TMenuItem.SetVisible
 00714D64    mov         ecx,dword ptr [ebp-14]
 00714D67    mov         edx,dword ptr [ebp-18]
 00714D6A    mov         eax,dword ptr [esi+5F4];TFXADMenuFrame.ComSounderModeMenu:TPopupMenu
 00714D70    mov         edi,dword ptr [eax]
 00714D72    call        dword ptr [edi+54];TPopupMenu.Popup
>00714D75    jmp         0071502B
 00714D7A    movzx       eax,word ptr [ebp-0E]
 00714D7E    shr         ax,8
 00714D82    add         eax,0FFFFFFE7
 00714D85    sub         ax,3
>00714D89    jae         0071502B
 00714D8F    mov         ecx,dword ptr [ebp-14]
 00714D92    mov         edx,dword ptr [ebp-18]
 00714D95    mov         eax,dword ptr [esi+93C];TFXADMenuFrame.ComSounderVolumeMenu:TPopupMenu
 00714D9B    mov         edi,dword ptr [eax]
 00714D9D    call        dword ptr [edi+54];TPopupMenu.Popup
>00714DA0    jmp         0071502B
 00714DA5    mov         eax,[007C4910];^gvar_007CA83B
 00714DAA    cmp         byte ptr [eax],0
>00714DAD    je          0071502B
 00714DB3    movzx       eax,word ptr [ebp-0E]
 00714DB7    shr         ax,8
 00714DBB    dec         eax
 00714DBC    sub         ax,13
>00714DC0    jb          00714DD2
 00714DC2    sub         ax,4
>00714DC6    je          00714DD2
 00714DC8    sub         ax,4
>00714DCC    jne         0071502B
 00714DD2    mov         ecx,dword ptr [ebp-14]
 00714DD5    mov         edx,dword ptr [ebp-18]
 00714DD8    mov         eax,dword ptr [esi+3C0];TFXADMenuFrame.ComInDelayMenu:TPopupMenu
 00714DDE    mov         edi,dword ptr [eax]
 00714DE0    call        dword ptr [edi+54];TPopupMenu.Popup
>00714DE3    jmp         0071502B
 00714DE8    mov         eax,[007C4910];^gvar_007CA83B
 00714DED    cmp         byte ptr [eax],0
>00714DF0    je          0071502B
 00714DF6    mov         dl,3
 00714DF8    mov         eax,esi
 00714DFA    call        TFXADMenuFrame.EnableOrDisableInputFilterMenuItems
 00714DFF    movzx       eax,word ptr [ebp-0E]
 00714E03    shr         ax,8
 00714E07    dec         eax
 00714E08    sub         ax,13
>00714E0C    jb          00714E1E
 00714E0E    sub         ax,4
>00714E12    je          00714E1E
 00714E14    sub         ax,4
>00714E18    jne         0071502B
 00714E1E    mov         ecx,dword ptr [ebp-14]
 00714E21    mov         edx,dword ptr [ebp-18]
 00714E24    mov         eax,dword ptr [esi+3E0];TFXADMenuFrame.ComInFiltMenu:TPopupMenu
 00714E2A    mov         edi,dword ptr [eax]
 00714E2C    call        dword ptr [edi+54];TPopupMenu.Popup
>00714E2F    jmp         0071502B
 00714E34    mov         edx,dword ptr ds:[7C4910];^gvar_007CA83B
 00714E3A    cmp         byte ptr [edx],0
>00714E3D    je          0071502B
 00714E43    movzx       edx,word ptr [ebp-0E]
 00714E47    shr         dx,8
 00714E4B    test        dx,dx
>00714E4E    je          0071502B
 00714E54    movzx       eax,ax
 00714E57    cmp         eax,0FF
>00714E5C    jbe         00714E63
 00714E5E    call        @BoundErr
 00714E63    push        eax
 00714E64    movzx       ecx,word ptr [ebp-0E]
 00714E68    mov         dl,3
 00714E6A    mov         eax,esi
 00714E6C    call        TFXADMenuFrame.EnableOrDisableDayModePopupItems
 00714E71    mov         ecx,dword ptr [ebp-14]
 00714E74    mov         edx,dword ptr [ebp-18]
 00714E77    mov         eax,dword ptr [esi+3F8];TFXADMenuFrame.ComDayModeMenu:TPopupMenu
 00714E7D    mov         edi,dword ptr [eax]
 00714E7F    call        dword ptr [edi+54];TPopupMenu.Popup
>00714E82    jmp         0071502B
 00714E87    movzx       edx,word ptr [ebp-0E]
 00714E8B    shr         dx,8
 00714E8F    test        dx,dx
>00714E92    je          0071502B
 00714E98    movzx       eax,ax
 00714E9B    cmp         eax,0FF
>00714EA0    jbe         00714EA7
 00714EA2    call        @BoundErr
 00714EA7    push        eax
 00714EA8    movzx       ecx,word ptr [ebp-0E]
 00714EAC    mov         dl,3
 00714EAE    mov         eax,esi
 00714EB0    call        TFXADMenuFrame.EnableOrDisableAPZDisPopupItems
 00714EB5    mov         ecx,dword ptr [ebp-14]
 00714EB8    mov         edx,dword ptr [ebp-18]
 00714EBB    mov         eax,dword ptr [esi+614];TFXADMenuFrame.ComZDisMenu:TPopupMenu
 00714EC1    mov         edi,dword ptr [eax]
 00714EC3    call        dword ptr [edi+54];TPopupMenu.Popup
>00714EC6    jmp         0071502B
 00714ECB    mov         eax,[007C42B4];^gvar_007CA839
 00714ED0    cmp         byte ptr [eax],0
>00714ED3    je          0071502B
 00714ED9    movzx       eax,word ptr [ebp-0E]
 00714EDD    shr         ax,8
 00714EE1    mov         edx,dword ptr ds:[7C4404];^gvar_007C2680
 00714EE7    cmp         ax,0FF
>00714EEB    ja          00714EF3
 00714EED    movzx       eax,ax
 00714EF0    bt          dword ptr [edx],eax
>00714EF3    jae         0071502B
 00714EF9    lea         eax,[ebp-54]
 00714EFC    push        eax
 00714EFD    mov         ecx,14
 00714F02    mov         edx,dword ptr [ebp-8]
 00714F05    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00714F0B    call        TStringGrid.GetCells
 00714F10    mov         edx,dword ptr [ebp-54]
 00714F13    mov         eax,dword ptr [ebp-1C]
 00714F16    call        TFXPAD.ApoOutputToInt
 00714F1B    movzx       ecx,al
 00714F1E    mov         edx,dword ptr ds:[7C4DB8];^gvar_00901F74:Integer
 00714F24    mov         edx,dword ptr [edx]
 00714F26    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00714F2B    mov         eax,dword ptr [eax]
 00714F2D    mov         eax,dword ptr [eax+14]
 00714F30    call        TFXPAD.IsOnlyGeneralOutput
 00714F35    test        al,al
>00714F37    jne         0071502B
 00714F3D    lea         eax,[ebp-58]
 00714F40    push        eax
 00714F41    mov         ecx,14
 00714F46    mov         edx,dword ptr [ebp-8]
 00714F49    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00714F4F    call        TStringGrid.GetCells
 00714F54    mov         edx,dword ptr [ebp-58]
 00714F57    mov         eax,dword ptr [ebp-1C]
 00714F5A    call        TFXPAD.ApoOutputToInt
 00714F5F    movzx       ecx,al
 00714F62    mov         edx,dword ptr ds:[7C4DB8];^gvar_00901F74:Integer
 00714F68    mov         edx,dword ptr [edx]
 00714F6A    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00714F6F    mov         eax,dword ptr [eax]
 00714F71    mov         eax,dword ptr [eax+14]
 00714F74    call        TFXPAD.IsGeneralOrLocalOutput
 00714F79    mov         ecx,eax
 00714F7B    mov         edx,dword ptr [ebp-0C]
 00714F7E    mov         eax,ebx
 00714F80    call        TAPFillDlg.SelectControlZones
>00714F85    jmp         0071502B
 00714F8A    movzx       eax,word ptr [ebp-0E]
 00714F8E    shr         ax,8
 00714F92    mov         edx,dword ptr ds:[7C4404];^gvar_007C2680
 00714F98    cmp         ax,0FF
>00714F9C    ja          00714FA4
 00714F9E    movzx       eax,ax
 00714FA1    bt          dword ptr [edx],eax
>00714FA4    jae         0071502B
 00714FAA    mov         dl,3
 00714FAC    mov         eax,esi
 00714FAE    call        TFXADMenuFrame.EnableOrDisableOutputFunctionMenuItems
 00714FB3    mov         ecx,dword ptr [ebp-14]
 00714FB6    mov         edx,dword ptr [ebp-18]
 00714FB9    mov         eax,dword ptr [esi+58C];TFXADMenuFrame.ComOutputMenu:TPopupMenu
 00714FBF    mov         edi,dword ptr [eax]
 00714FC1    call        dword ptr [edi+54];TPopupMenu.Popup
>00714FC4    jmp         0071502B
 00714FC6    movzx       eax,word ptr [ebp-0E]
 00714FCA    shr         ax,8
 00714FCE    mov         edx,dword ptr ds:[7C4B68];^gvar_007C26A0
 00714FD4    cmp         ax,0FF
>00714FD8    ja          00714FE0
 00714FDA    movzx       eax,ax
 00714FDD    bt          dword ptr [edx],eax
>00714FE0    jae         0071502B
 00714FE2    mov         dl,3
 00714FE4    mov         eax,esi
 00714FE6    call        TFXADMenuFrame.EnableOrDisableOutputFunctionMenuItems
 00714FEB    mov         ecx,dword ptr [ebp-14]
 00714FEE    mov         edx,dword ptr [ebp-18]
 00714FF1    mov         eax,dword ptr [esi+58C];TFXADMenuFrame.ComOutputMenu:TPopupMenu
 00714FF7    mov         edi,dword ptr [eax]
 00714FF9    call        dword ptr [edi+54];TPopupMenu.Popup
>00714FFC    jmp         0071502B
 00714FFE    movzx       eax,word ptr [ebp-0E]
 00715002    shr         ax,8
 00715006    mov         edx,dword ptr ds:[7C4404];^gvar_007C2680
 0071500C    cmp         ax,0FF
>00715010    ja          00715018
 00715012    movzx       eax,ax
 00715015    bt          dword ptr [edx],eax
>00715018    jae         0071502B
 0071501A    mov         ecx,dword ptr [ebp-14]
 0071501D    mov         edx,dword ptr [ebp-18]
 00715020    mov         eax,dword ptr [esi+340];TFXADMenuFrame.ComYesNoMenu:TPopupMenu
 00715026    mov         edi,dword ptr [eax]
 00715028    call        dword ptr [edi+54];TPopupMenu.Popup
 0071502B    mov         eax,[007C4DB8];^gvar_00901F74:Integer
 00715030    cmp         dword ptr [eax],1
>00715033    jne         007154C9
 00715039    lea         eax,[ebp-5C]
 0071503C    push        eax
 0071503D    mov         ecx,5
 00715042    mov         edx,dword ptr [ebp-8]
 00715045    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071504B    call        TStringGrid.GetCells
 00715050    mov         edx,dword ptr [ebp-5C]
 00715053    mov         eax,dword ptr [ebp-1C]
 00715056    call        TFXPAD.SysTypeToInt
 0071505B    mov         word ptr [ebp-0E],ax
 0071505F    lea         eax,[ebp-60]
 00715062    push        eax
 00715063    mov         ecx,6
 00715068    mov         edx,dword ptr [ebp-8]
 0071506B    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00715071    call        TStringGrid.GetCells
 00715076    mov         edx,dword ptr [ebp-60]
 00715079    mov         eax,dword ptr [ebp-1C]
 0071507C    call        TFXPAD.ComInputToInt
 00715081    mov         edx,dword ptr [ebp-0C]
 00715084    add         edx,0FFFFFFFB
 00715087    cmp         edx,11
>0071508A    ja          007154C9
 00715090    jmp         dword ptr [edx*4+715097]
 00715090    dd          007150DF
 00715090    dd          007150F5
 00715090    dd          007154C9
 00715090    dd          007154C9
 00715090    dd          0071514C
 00715090    dd          0071514C
 00715090    dd          0071514C
 00715090    dd          0071514C
 00715090    dd          00715226
 00715090    dd          007154C9
 00715090    dd          0071527A
 00715090    dd          007152AF
 00715090    dd          007152ED
 00715090    dd          00715340
 00715090    dd          00715384
 00715090    dd          00715472
 00715090    dd          007154C9
 00715090    dd          0071549C
 007150DF    mov         ecx,dword ptr [ebp-14]
 007150E2    mov         edx,dword ptr [ebp-18]
 007150E5    mov         eax,dword ptr [esi+2B0];TFXADMenuFrame.SysTypeMenu:TPopupMenu
 007150EB    mov         edi,dword ptr [eax]
 007150ED    call        dword ptr [edi+54];TPopupMenu.Popup
>007150F0    jmp         007154C9
 007150F5    movzx       eax,word ptr [ebp-0E]
 007150F9    shr         ax,8
 007150FD    sub         ax,4
>00715101    je          0071510E
 00715103    sub         ax,2
>00715107    je          0071512D
>00715109    jmp         007154C9
 0071510E    mov         dl,1
 00715110    mov         eax,esi
 00715112    call        TFXADMenuFrame.EnableOrDisableInputFunctionMenuItems
 00715117    mov         ecx,dword ptr [ebp-14]
 0071511A    mov         edx,dword ptr [ebp-18]
 0071511D    mov         eax,dword ptr [esi+730];TFXADMenuFrame.ComInputMenu:TPopupMenu
 00715123    mov         edi,dword ptr [eax]
 00715125    call        dword ptr [edi+54];TPopupMenu.Popup
>00715128    jmp         007154C9
 0071512D    mov         dl,1
 0071512F    mov         eax,esi
 00715131    call        TFXADMenuFrame.EnableOrDisableCzmInputFunctions
 00715136    mov         ecx,dword ptr [ebp-14]
 00715139    mov         edx,dword ptr [ebp-18]
 0071513C    mov         eax,dword ptr [esi+608];TFXADMenuFrame.ComCzmMenu:TPopupMenu
 00715142    mov         edi,dword ptr [eax]
 00715144    call        dword ptr [edi+54];TPopupMenu.Popup
>00715147    jmp         007154C9
 0071514C    mov         eax,[007C4910];^gvar_007CA83B
 00715151    cmp         byte ptr [eax],0
>00715154    je          007154C9
 0071515A    movzx       eax,word ptr [ebp-0E]
 0071515E    shr         ax,8
 00715162    movzx       eax,ax
 00715165    cmp         eax,0F
>00715168    ja          007154C9
 0071516E    movzx       eax,byte ptr [eax+71517C]
 00715175    jmp         dword ptr [eax*4+71518C]
 00715175    db          0
 00715175    db          1
 00715175    db          1
 00715175    db          0
 00715175    db          0
 00715175    db          0
 00715175    db          0
 00715175    db          0
 00715175    db          1
 00715175    db          3
 00715175    db          4
 00715175    db          2
 00715175    db          0
 00715175    db          2
 00715175    db          2
 00715175    db          1
 00715175    dd          007154C9
 00715175    dd          007151A0
 00715175    dd          007151B6
 00715175    dd          007151CC
 00715175    dd          007151F9
 007151A0    mov         ecx,dword ptr [ebp-14]
 007151A3    mov         edx,dword ptr [ebp-18]
 007151A6    mov         eax,dword ptr [esi+35C];TFXADMenuFrame.ComLevelMenu:TPopupMenu
 007151AC    mov         edi,dword ptr [eax]
 007151AE    call        dword ptr [edi+54];TPopupMenu.Popup
>007151B1    jmp         007154C9
 007151B6    mov         ecx,dword ptr [ebp-14]
 007151B9    mov         edx,dword ptr [ebp-18]
 007151BC    mov         eax,dword ptr [esi+3A4];TFXADMenuFrame.SysMultiLevelMenu:TPopupMenu
 007151C2    mov         edi,dword ptr [eax]
 007151C4    call        dword ptr [edi+54];TPopupMenu.Popup
>007151C7    jmp         007154C9
 007151CC    mov         eax,[007C4E24];^gvar_007CA83C
 007151D1    cmp         byte ptr [eax],0
>007151D4    je          007154C9
 007151DA    mov         dl,9
 007151DC    mov         eax,esi
 007151DE    call        TFXADMenuFrame.EnableOrDisableLaserLevelMenuItems
 007151E3    mov         ecx,dword ptr [ebp-14]
 007151E6    mov         edx,dword ptr [ebp-18]
 007151E9    mov         eax,dword ptr [esi+374];TFXADMenuFrame.LaserLevelMenu:TPopupMenu
 007151EF    mov         edi,dword ptr [eax]
 007151F1    call        dword ptr [edi+54];TPopupMenu.Popup
>007151F4    jmp         007154C9
 007151F9    mov         eax,[007C4E24];^gvar_007CA83C
 007151FE    cmp         byte ptr [eax],0
>00715201    je          007154C9
 00715207    mov         dl,0A
 00715209    mov         eax,esi
 0071520B    call        TFXADMenuFrame.EnableOrDisableLaserLevelMenuItems
 00715210    mov         ecx,dword ptr [ebp-14]
 00715213    mov         edx,dword ptr [ebp-18]
 00715216    mov         eax,dword ptr [esi+374];TFXADMenuFrame.LaserLevelMenu:TPopupMenu
 0071521C    mov         edi,dword ptr [eax]
 0071521E    call        dword ptr [edi+54];TPopupMenu.Popup
>00715221    jmp         007154C9
 00715226    mov         eax,[007C4910];^gvar_007CA83B
 0071522B    cmp         byte ptr [eax],0
>0071522E    je          007154C9
 00715234    movzx       eax,word ptr [ebp-0E]
 00715238    shr         ax,8
 0071523C    sub         ax,1
>00715240    jb          007154C9
 00715246    sub         ax,4
>0071524A    je          0071524E
>0071524C    jmp         00715264
 0071524E    mov         ecx,dword ptr [ebp-14]
 00715251    mov         edx,dword ptr [ebp-18]
 00715254    mov         eax,dword ptr [esi+34C];TFXADMenuFrame.ComMonitoringMenu:TPopupMenu
 0071525A    mov         edi,dword ptr [eax]
 0071525C    call        dword ptr [edi+54];TPopupMenu.Popup
>0071525F    jmp         007154C9
 00715264    mov         ecx,dword ptr [ebp-14]
 00715267    mov         edx,dword ptr [ebp-18]
 0071526A    mov         eax,dword ptr [esi+328];TFXADMenuFrame.ComInputModeMenu:TPopupMenu
 00715270    mov         edi,dword ptr [eax]
 00715272    call        dword ptr [edi+54];TPopupMenu.Popup
>00715275    jmp         007154C9
 0071527A    mov         eax,[007C4910];^gvar_007CA83B
 0071527F    cmp         byte ptr [eax],0
>00715282    je          007154C9
 00715288    movzx       eax,word ptr [ebp-0E]
 0071528C    shr         ax,8
 00715290    test        ax,ax
>00715293    je          007154C9
 00715299    mov         ecx,dword ptr [ebp-14]
 0071529C    mov         edx,dword ptr [ebp-18]
 0071529F    mov         eax,dword ptr [esi+3C0];TFXADMenuFrame.ComInDelayMenu:TPopupMenu
 007152A5    mov         edi,dword ptr [eax]
 007152A7    call        dword ptr [edi+54];TPopupMenu.Popup
>007152AA    jmp         007154C9
 007152AF    mov         eax,[007C4910];^gvar_007CA83B
 007152B4    cmp         byte ptr [eax],0
>007152B7    je          007154C9
 007152BD    movzx       eax,word ptr [ebp-0E]
 007152C1    shr         ax,8
 007152C5    test        ax,ax
>007152C8    je          007154C9
 007152CE    mov         dl,1
 007152D0    mov         eax,esi
 007152D2    call        TFXADMenuFrame.EnableOrDisableInputFilterMenuItems
 007152D7    mov         ecx,dword ptr [ebp-14]
 007152DA    mov         edx,dword ptr [ebp-18]
 007152DD    mov         eax,dword ptr [esi+3E0];TFXADMenuFrame.ComInFiltMenu:TPopupMenu
 007152E3    mov         edi,dword ptr [eax]
 007152E5    call        dword ptr [edi+54];TPopupMenu.Popup
>007152E8    jmp         007154C9
 007152ED    mov         edx,dword ptr ds:[7C4910];^gvar_007CA83B
 007152F3    cmp         byte ptr [edx],0
>007152F6    je          007154C9
 007152FC    movzx       edx,word ptr [ebp-0E]
 00715300    shr         dx,8
 00715304    test        dx,dx
>00715307    je          007154C9
 0071530D    movzx       eax,ax
 00715310    cmp         eax,0FF
>00715315    jbe         0071531C
 00715317    call        @BoundErr
 0071531C    push        eax
 0071531D    movzx       ecx,word ptr [ebp-0E]
 00715321    mov         dl,1
 00715323    mov         eax,esi
 00715325    call        TFXADMenuFrame.EnableOrDisableDayModePopupItems
 0071532A    mov         ecx,dword ptr [ebp-14]
 0071532D    mov         edx,dword ptr [ebp-18]
 00715330    mov         eax,dword ptr [esi+3F8];TFXADMenuFrame.ComDayModeMenu:TPopupMenu
 00715336    mov         edi,dword ptr [eax]
 00715338    call        dword ptr [edi+54];TPopupMenu.Popup
>0071533B    jmp         007154C9
 00715340    movzx       edx,word ptr [ebp-0E]
 00715344    shr         dx,8
 00715348    test        dx,dx
>0071534B    je          007154C9
 00715351    movzx       eax,ax
 00715354    cmp         eax,0FF
>00715359    jbe         00715360
 0071535B    call        @BoundErr
 00715360    push        eax
 00715361    movzx       ecx,word ptr [ebp-0E]
 00715365    mov         dl,1
 00715367    mov         eax,esi
 00715369    call        TFXADMenuFrame.EnableOrDisableAPZDisPopupItems
 0071536E    mov         ecx,dword ptr [ebp-14]
 00715371    mov         edx,dword ptr [ebp-18]
 00715374    mov         eax,dword ptr [esi+614];TFXADMenuFrame.ComZDisMenu:TPopupMenu
 0071537A    mov         edi,dword ptr [eax]
 0071537C    call        dword ptr [edi+54];TPopupMenu.Popup
>0071537F    jmp         007154C9
 00715384    mov         eax,[007C42B4];^gvar_007CA839
 00715389    cmp         byte ptr [eax],0
>0071538C    je          007154C9
 00715392    movzx       eax,word ptr [ebp-0E]
 00715396    shr         ax,8
 0071539A    add         eax,0FFFFFFFE
 0071539D    sub         ax,2
>007153A1    jb          00715456
 007153A7    dec         ax
>007153AA    je          007153C8
 007153AC    sub         ax,6
>007153B0    je          00715456
 007153B6    add         eax,0FFFFFFFE
 007153B9    sub         ax,2
>007153BD    jb          00715456
>007153C3    jmp         007154C9
 007153C8    lea         eax,[ebp-64]
 007153CB    push        eax
 007153CC    mov         ecx,14
 007153D1    mov         edx,dword ptr [ebp-8]
 007153D4    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007153DA    call        TStringGrid.GetCells
 007153DF    mov         edx,dword ptr [ebp-64]
 007153E2    mov         eax,dword ptr [ebp-1C]
 007153E5    call        TFXPAD.SysOutputToInt
 007153EA    movzx       ecx,al
 007153ED    mov         edx,dword ptr ds:[7C4DB8];^gvar_00901F74:Integer
 007153F3    mov         edx,dword ptr [edx]
 007153F5    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 007153FA    mov         eax,dword ptr [eax]
 007153FC    mov         eax,dword ptr [eax+14]
 007153FF    call        TFXPAD.IsOnlyGeneralOutput
 00715404    test        al,al
>00715406    jne         007154C9
 0071540C    lea         eax,[ebp-68]
 0071540F    push        eax
 00715410    mov         ecx,14
 00715415    mov         edx,dword ptr [ebp-8]
 00715418    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071541E    call        TStringGrid.GetCells
 00715423    mov         edx,dword ptr [ebp-68]
 00715426    mov         eax,dword ptr [ebp-1C]
 00715429    call        TFXPAD.SysOutputToInt
 0071542E    movzx       ecx,al
 00715431    mov         edx,dword ptr ds:[7C4DB8];^gvar_00901F74:Integer
 00715437    mov         edx,dword ptr [edx]
 00715439    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0071543E    mov         eax,dword ptr [eax]
 00715440    mov         eax,dword ptr [eax+14]
 00715443    call        TFXPAD.IsGeneralOrLocalOutput
 00715448    mov         ecx,eax
 0071544A    mov         edx,dword ptr [ebp-0C]
 0071544D    mov         eax,ebx
 0071544F    call        TAPFillDlg.SelectControlZones
>00715454    jmp         007154C9
 00715456    movzx       eax,word ptr [ebp-0E]
 0071545A    and         ax,0FF
 0071545E    cmp         ax,1
>00715462    jne         007154C9
 00715464    xor         ecx,ecx
 00715466    mov         edx,dword ptr [ebp-8]
 00715469    mov         eax,ebx
 0071546B    call        TAPFillDlg.SelectControlZones
>00715470    jmp         007154C9
 00715472    movzx       eax,word ptr [ebp-0E]
 00715476    shr         ax,8
 0071547A    cmp         ax,5
>0071547E    jne         007154C9
 00715480    mov         dl,1
 00715482    mov         eax,esi
 00715484    call        TFXADMenuFrame.EnableOrDisableOutputFunctionMenuItems
 00715489    mov         ecx,dword ptr [ebp-14]
 0071548C    mov         edx,dword ptr [ebp-18]
 0071548F    mov         eax,dword ptr [esi+58C];TFXADMenuFrame.ComOutputMenu:TPopupMenu
 00715495    mov         edi,dword ptr [eax]
 00715497    call        dword ptr [edi+54];TPopupMenu.Popup
>0071549A    jmp         007154C9
 0071549C    movzx       eax,word ptr [ebp-0E]
 007154A0    shr         ax,8
 007154A4    mov         edx,dword ptr ds:[7C435C];^gvar_007C25E0
 007154AA    cmp         ax,0FF
>007154AE    ja          007154B6
 007154B0    movzx       eax,ax
 007154B3    bt          dword ptr [edx],eax
>007154B6    jae         007154C9
 007154B8    mov         ecx,dword ptr [ebp-14]
 007154BB    mov         edx,dword ptr [ebp-18]
 007154BE    mov         eax,dword ptr [esi+340];TFXADMenuFrame.ComYesNoMenu:TPopupMenu
 007154C4    mov         edi,dword ptr [eax]
 007154C6    call        dword ptr [edi+54];TPopupMenu.Popup
 007154C9    mov         eax,[007C4DB8];^gvar_00901F74:Integer
 007154CE    cmp         dword ptr [eax],2
>007154D1    jne         00715786
 007154D7    lea         eax,[ebp-6C]
 007154DA    push        eax
 007154DB    mov         ecx,5
 007154E0    mov         edx,dword ptr [ebp-8]
 007154E3    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007154E9    call        TStringGrid.GetCells
 007154EE    mov         edx,dword ptr [ebp-6C]
 007154F1    mov         eax,dword ptr [ebp-1C]
 007154F4    call        TFXPAD.CnvToInt
 007154F9    mov         word ptr [ebp-0E],ax
 007154FD    mov         eax,dword ptr [ebp-0C]
 00715500    add         eax,0FFFFFFFB
 00715503    cmp         eax,0D
>00715506    ja          00715786
 0071550C    jmp         dword ptr [eax*4+715513]
 0071550C    dd          0071554B
 0071550C    dd          00715786
 0071550C    dd          00715786
 0071550C    dd          0071556A
 0071550C    dd          007155AA
 0071550C    dd          007155EC
 0071550C    dd          0071561A
 0071550C    dd          00715648
 0071550C    dd          00715676
 0071550C    dd          00715786
 0071550C    dd          007156BD
 0071550C    dd          00715702
 0071550C    dd          0071572E
 0071550C    dd          00715760
 0071554B    mov         dl,2
 0071554D    mov         eax,esi
 0071554F    call        TFXADMenuFrame.EnableOrDisableInputFunctionMenuItems
 00715554    mov         ecx,dword ptr [ebp-14]
 00715557    mov         edx,dword ptr [ebp-18]
 0071555A    mov         eax,dword ptr [esi+730];TFXADMenuFrame.ComInputMenu:TPopupMenu
 00715560    mov         ebx,dword ptr [eax]
 00715562    call        dword ptr [ebx+54];TPopupMenu.Popup
>00715565    jmp         00715786
 0071556A    mov         eax,[007C4910];^gvar_007CA83B
 0071556F    cmp         byte ptr [eax],0
>00715572    je          00715786
 00715578    movzx       eax,word ptr [ebp-0E]
 0071557C    and         ax,0FF
 00715580    test        ax,ax
>00715583    je          00715786
 00715589    dec         eax
 0071558A    sub         ax,3
>0071558E    jae         00715786
 00715594    mov         ecx,dword ptr [ebp-14]
 00715597    mov         edx,dword ptr [ebp-18]
 0071559A    mov         eax,dword ptr [esi+40C];TFXADMenuFrame.CnvEOLMenu:TPopupMenu
 007155A0    mov         ebx,dword ptr [eax]
 007155A2    call        dword ptr [ebx+54];TPopupMenu.Popup
>007155A5    jmp         00715786
 007155AA    mov         eax,[007C4910];^gvar_007CA83B
 007155AF    cmp         byte ptr [eax],0
>007155B2    je          00715786
 007155B8    movzx       eax,word ptr [ebp-0E]
 007155BC    and         ax,0FF
 007155C0    test        ax,ax
>007155C3    je          00715786
 007155C9    add         eax,0FFFFFFFC
 007155CC    sub         ax,1E
>007155D0    jae         00715786
 007155D6    mov         ecx,dword ptr [ebp-14]
 007155D9    mov         edx,dword ptr [ebp-18]
 007155DC    mov         eax,dword ptr [esi+340];TFXADMenuFrame.ComYesNoMenu:TPopupMenu
 007155E2    mov         ebx,dword ptr [eax]
 007155E4    call        dword ptr [ebx+54];TPopupMenu.Popup
>007155E7    jmp         00715786
 007155EC    mov         eax,[007C4910];^gvar_007CA83B
 007155F1    cmp         byte ptr [eax],0
>007155F4    je          00715786
 007155FA    test        byte ptr [ebp-0E],0FF
>007155FE    je          00715786
 00715604    mov         ecx,dword ptr [ebp-14]
 00715607    mov         edx,dword ptr [ebp-18]
 0071560A    mov         eax,dword ptr [esi+340];TFXADMenuFrame.ComYesNoMenu:TPopupMenu
 00715610    mov         ebx,dword ptr [eax]
 00715612    call        dword ptr [ebx+54];TPopupMenu.Popup
>00715615    jmp         00715786
 0071561A    mov         eax,[007C4910];^gvar_007CA83B
 0071561F    cmp         byte ptr [eax],0
>00715622    je          00715786
 00715628    test        byte ptr [ebp-0E],0FF
>0071562C    je          00715786
 00715632    mov         ecx,dword ptr [ebp-14]
 00715635    mov         edx,dword ptr [ebp-18]
 00715638    mov         eax,dword ptr [esi+340];TFXADMenuFrame.ComYesNoMenu:TPopupMenu
 0071563E    mov         ebx,dword ptr [eax]
 00715640    call        dword ptr [ebx+54];TPopupMenu.Popup
>00715643    jmp         00715786
 00715648    mov         eax,[007C4910];^gvar_007CA83B
 0071564D    cmp         byte ptr [eax],0
>00715650    je          00715786
 00715656    test        byte ptr [ebp-0E],0FF
>0071565A    je          00715786
 00715660    mov         ecx,dword ptr [ebp-14]
 00715663    mov         edx,dword ptr [ebp-18]
 00715666    mov         eax,dword ptr [esi+340];TFXADMenuFrame.ComYesNoMenu:TPopupMenu
 0071566C    mov         ebx,dword ptr [eax]
 0071566E    call        dword ptr [ebx+54];TPopupMenu.Popup
>00715671    jmp         00715786
 00715676    mov         eax,[007C4910];^gvar_007CA83B
 0071567B    cmp         byte ptr [eax],0
>0071567E    je          00715786
 00715684    movzx       eax,word ptr [ebp-0E]
 00715688    and         ax,0FF
 0071568C    test        ax,ax
>0071568F    je          00715786
 00715695    dec         ax
>00715698    je          007156A7
 0071569A    add         eax,0FFFFFFFE
 0071569D    sub         ax,2
>007156A1    jae         00715786
 007156A7    mov         ecx,dword ptr [ebp-14]
 007156AA    mov         edx,dword ptr [ebp-18]
 007156AD    mov         eax,dword ptr [esi+328];TFXADMenuFrame.ComInputModeMenu:TPopupMenu
 007156B3    mov         ebx,dword ptr [eax]
 007156B5    call        dword ptr [ebx+54];TPopupMenu.Popup
>007156B8    jmp         00715786
 007156BD    mov         eax,[007C4910];^gvar_007CA83B
 007156C2    cmp         byte ptr [eax],0
>007156C5    je          00715786
 007156CB    movzx       eax,word ptr [ebp-0E]
 007156CF    and         ax,0FF
 007156D3    test        ax,ax
>007156D6    je          00715786
 007156DC    sub         ax,0A
>007156E0    jb          007156EC
 007156E2    sub         ax,0F
>007156E6    jne         00715786
 007156EC    mov         ecx,dword ptr [ebp-14]
 007156EF    mov         edx,dword ptr [ebp-18]
 007156F2    mov         eax,dword ptr [esi+340];TFXADMenuFrame.ComYesNoMenu:TPopupMenu
 007156F8    mov         ebx,dword ptr [eax]
 007156FA    call        dword ptr [ebx+54];TPopupMenu.Popup
>007156FD    jmp         00715786
 00715702    mov         eax,[007C4910];^gvar_007CA83B
 00715707    cmp         byte ptr [eax],0
>0071570A    je          00715786
 0071570C    test        byte ptr [ebp-0E],0FF
>00715710    je          00715786
 00715712    mov         dl,2
 00715714    mov         eax,esi
 00715716    call        TFXADMenuFrame.EnableOrDisableInputFilterMenuItems
 0071571B    mov         ecx,dword ptr [ebp-14]
 0071571E    mov         edx,dword ptr [ebp-18]
 00715721    mov         eax,dword ptr [esi+3E0];TFXADMenuFrame.ComInFiltMenu:TPopupMenu
 00715727    mov         ebx,dword ptr [eax]
 00715729    call        dword ptr [ebx+54];TPopupMenu.Popup
>0071572C    jmp         00715786
 0071572E    mov         eax,[007C4910];^gvar_007CA83B
 00715733    cmp         byte ptr [eax],0
>00715736    je          00715786
 00715738    test        byte ptr [ebp-0E],0FF
>0071573C    je          00715786
 0071573E    push        0
 00715740    movzx       ecx,word ptr [ebp-0E]
 00715744    mov         dl,2
 00715746    mov         eax,esi
 00715748    call        TFXADMenuFrame.EnableOrDisableDayModePopupItems
 0071574D    mov         ecx,dword ptr [ebp-14]
 00715750    mov         edx,dword ptr [ebp-18]
 00715753    mov         eax,dword ptr [esi+3F8];TFXADMenuFrame.ComDayModeMenu:TPopupMenu
 00715759    mov         ebx,dword ptr [eax]
 0071575B    call        dword ptr [ebx+54];TPopupMenu.Popup
>0071575E    jmp         00715786
 00715760    test        byte ptr [ebp-0E],0FF
>00715764    je          00715786
 00715766    push        0
 00715768    movzx       ecx,word ptr [ebp-0E]
 0071576C    mov         dl,2
 0071576E    mov         eax,esi
 00715770    call        TFXADMenuFrame.EnableOrDisableAPZDisPopupItems
 00715775    mov         ecx,dword ptr [ebp-14]
 00715778    mov         edx,dword ptr [ebp-18]
 0071577B    mov         eax,dword ptr [esi+614];TFXADMenuFrame.ComZDisMenu:TPopupMenu
 00715781    mov         ebx,dword ptr [eax]
 00715783    call        dword ptr [ebx+54];TPopupMenu.Popup
 00715786    xor         eax,eax
 00715788    pop         edx
 00715789    pop         ecx
 0071578A    pop         ecx
 0071578B    mov         dword ptr fs:[eax],edx
 0071578E    push        7157A8
 00715793    lea         eax,[ebp-6C]
 00715796    mov         edx,12
 0071579B    call        @UStrArrayClr
 007157A0    ret
>007157A1    jmp         @HandleFinally
>007157A6    jmp         00715793
 007157A8    pop         edi
 007157A9    pop         esi
 007157AA    pop         ebx
 007157AB    mov         esp,ebp
 007157AD    pop         ebp
 007157AE    ret         0C
*}
end;

//007157B4
procedure TAPFillDlg.SelectControlZones(Col:Integer; AllowOnlyGeneralOrLocal:Boolean);
begin
{*
 007157B4    push        ebp
 007157B5    mov         ebp,esp
 007157B7    push        0
 007157B9    push        0
 007157BB    push        ebx
 007157BC    push        esi
 007157BD    mov         ebx,ecx
 007157BF    xor         edx,edx
 007157C1    push        ebp
 007157C2    push        715856
 007157C7    push        dword ptr fs:[edx]
 007157CA    mov         dword ptr fs:[edx],esp
 007157CD    mov         esi,dword ptr [eax+3E4];TAPFillDlg.Grid:TStringGrid
 007157D3    lea         eax,[ebp-4]
 007157D6    push        eax
 007157D7    mov         ecx,13
 007157DC    mov         edx,dword ptr [esi+2A8];TStringGrid.FCurrent:TGridCoord
 007157E2    mov         eax,esi
 007157E4    call        TStringGrid.GetCells
 007157E9    mov         edx,dword ptr [ebp-4]
 007157EC    mov         eax,[007C47F4];^gvar_00901F4C:TFXCGroupsDlg
 007157F1    mov         eax,dword ptr [eax]
 007157F3    mov         ecx,ebx
 007157F5    call        TFXCGroupsDlg.SetCheckMarks
 007157FA    mov         eax,[007C47F4];^gvar_00901F4C:TFXCGroupsDlg
 007157FF    mov         eax,dword ptr [eax]
 00715801    mov         edx,dword ptr [eax]
 00715803    call        dword ptr [edx+13C]
 00715809    dec         eax
>0071580A    jne         00715831
 0071580C    lea         edx,[ebp-8]
 0071580F    mov         eax,[007C47F4];^gvar_00901F4C:TFXCGroupsDlg
 00715814    mov         eax,dword ptr [eax]
 00715816    call        TFXCGroupsDlg.GetCheckMarks
 0071581B    mov         eax,dword ptr [ebp-8]
 0071581E    push        eax
 0071581F    mov         ecx,13
 00715824    mov         edx,dword ptr [esi+2A8];TStringGrid.FCurrent:TGridCoord
 0071582A    mov         eax,esi
 0071582C    call        TStringGrid.SetCells
 00715831    mov         eax,esi
 00715833    mov         edx,dword ptr [eax]
 00715835    call        dword ptr [edx+104];TWinControl.SetFocus
 0071583B    xor         eax,eax
 0071583D    pop         edx
 0071583E    pop         ecx
 0071583F    pop         ecx
 00715840    mov         dword ptr fs:[eax],edx
 00715843    push        71585D
 00715848    lea         eax,[ebp-8]
 0071584B    mov         edx,2
 00715850    call        @UStrArrayClr
 00715855    ret
>00715856    jmp         @HandleFinally
>0071585B    jmp         00715848
 0071585D    pop         esi
 0071585E    pop         ebx
 0071585F    pop         ecx
 00715860    pop         ecx
 00715861    pop         ebp
 00715862    ret
*}
end;

//00715864
{*function sub_00715864(?:TAPFillDlg; ?:?):?;
begin
 00715864    push        ebp
 00715865    mov         ebp,esp
 00715867    mov         ecx,21
 0071586C    push        0
 0071586E    push        0
 00715870    dec         ecx
>00715871    jne         0071586C
 00715873    push        ecx
 00715874    push        ebx
 00715875    push        esi
 00715876    push        edi
 00715877    mov         esi,edx
 00715879    mov         ebx,eax
 0071587B    mov         edi,7C2F94;^'Don''t care'
 00715880    xor         eax,eax
 00715882    push        ebp
 00715883    push        716390
 00715888    push        dword ptr fs:[eax]
 0071588B    mov         dword ptr fs:[eax],esp
 0071588E    mov         byte ptr [ebp-1],0
 00715892    lea         eax,[ebp-8]
 00715895    push        eax
 00715896    mov         ecx,1
 0071589B    mov         edx,1
 007158A0    mov         eax,dword ptr [ebx+3E4]
 007158A6    call        TStringGrid.GetCells
 007158AB    mov         eax,dword ptr [ebp-8]
 007158AE    mov         edx,dword ptr [edi]
 007158B0    call        @UStrEqual
>007158B5    je          00715907
 007158B7    lea         eax,[ebp-0C]
 007158BA    push        eax
 007158BB    movsx       ecx,si
 007158BE    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 007158C3    mov         eax,dword ptr [eax]
 007158C5    mov         eax,dword ptr [eax+4A8]
 007158CB    mov         eax,dword ptr [eax+2D4]
 007158D1    mov         edx,1
 007158D6    call        TStringGrid.GetCells
 007158DB    mov         eax,dword ptr [ebp-0C]
 007158DE    push        eax
 007158DF    lea         eax,[ebp-10]
 007158E2    push        eax
 007158E3    mov         ecx,1
 007158E8    mov         edx,1
 007158ED    mov         eax,dword ptr [ebx+3E4]
 007158F3    call        TStringGrid.GetCells
 007158F8    mov         edx,dword ptr [ebp-10]
 007158FB    pop         eax
 007158FC    call        @UStrEqual
>00715901    jne         00716372
 00715907    lea         eax,[ebp-14]
 0071590A    push        eax
 0071590B    mov         ecx,2
 00715910    mov         edx,1
 00715915    mov         eax,dword ptr [ebx+3E4]
 0071591B    call        TStringGrid.GetCells
 00715920    mov         eax,dword ptr [ebp-14]
 00715923    mov         edx,dword ptr [edi]
 00715925    call        @UStrEqual
>0071592A    je          0071597C
 0071592C    lea         eax,[ebp-18]
 0071592F    push        eax
 00715930    movsx       ecx,si
 00715933    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00715938    mov         eax,dword ptr [eax]
 0071593A    mov         eax,dword ptr [eax+4A8]
 00715940    mov         eax,dword ptr [eax+2D4]
 00715946    mov         edx,2
 0071594B    call        TStringGrid.GetCells
 00715950    mov         eax,dword ptr [ebp-18]
 00715953    push        eax
 00715954    lea         eax,[ebp-1C]
 00715957    push        eax
 00715958    mov         ecx,2
 0071595D    mov         edx,1
 00715962    mov         eax,dword ptr [ebx+3E4]
 00715968    call        TStringGrid.GetCells
 0071596D    mov         edx,dword ptr [ebp-1C]
 00715970    pop         eax
 00715971    call        @UStrEqual
>00715976    jne         00716372
 0071597C    lea         eax,[ebp-20]
 0071597F    push        eax
 00715980    mov         ecx,3
 00715985    mov         edx,1
 0071598A    mov         eax,dword ptr [ebx+3E4]
 00715990    call        TStringGrid.GetCells
 00715995    mov         eax,dword ptr [ebp-20]
 00715998    mov         edx,dword ptr [edi]
 0071599A    call        @UStrEqual
>0071599F    je          007159F1
 007159A1    lea         eax,[ebp-24]
 007159A4    push        eax
 007159A5    movsx       ecx,si
 007159A8    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 007159AD    mov         eax,dword ptr [eax]
 007159AF    mov         eax,dword ptr [eax+4A8]
 007159B5    mov         eax,dword ptr [eax+2D4]
 007159BB    mov         edx,3
 007159C0    call        TStringGrid.GetCells
 007159C5    mov         eax,dword ptr [ebp-24]
 007159C8    push        eax
 007159C9    lea         eax,[ebp-28]
 007159CC    push        eax
 007159CD    mov         ecx,3
 007159D2    mov         edx,1
 007159D7    mov         eax,dword ptr [ebx+3E4]
 007159DD    call        TStringGrid.GetCells
 007159E2    mov         edx,dword ptr [ebp-28]
 007159E5    pop         eax
 007159E6    call        @UStrEqual
>007159EB    jne         00716372
 007159F1    lea         eax,[ebp-2C]
 007159F4    push        eax
 007159F5    mov         ecx,4
 007159FA    mov         edx,1
 007159FF    mov         eax,dword ptr [ebx+3E4]
 00715A05    call        TStringGrid.GetCells
 00715A0A    mov         eax,dword ptr [ebp-2C]
 00715A0D    mov         edx,dword ptr [edi]
 00715A0F    call        @UStrEqual
>00715A14    je          00715A66
 00715A16    lea         eax,[ebp-30]
 00715A19    push        eax
 00715A1A    movsx       ecx,si
 00715A1D    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00715A22    mov         eax,dword ptr [eax]
 00715A24    mov         eax,dword ptr [eax+4A8]
 00715A2A    mov         eax,dword ptr [eax+2D4]
 00715A30    mov         edx,4
 00715A35    call        TStringGrid.GetCells
 00715A3A    mov         eax,dword ptr [ebp-30]
 00715A3D    push        eax
 00715A3E    lea         eax,[ebp-34]
 00715A41    push        eax
 00715A42    mov         ecx,4
 00715A47    mov         edx,1
 00715A4C    mov         eax,dword ptr [ebx+3E4]
 00715A52    call        TStringGrid.GetCells
 00715A57    mov         edx,dword ptr [ebp-34]
 00715A5A    pop         eax
 00715A5B    call        @UStrEqual
>00715A60    jne         00716372
 00715A66    lea         eax,[ebp-38]
 00715A69    push        eax
 00715A6A    mov         ecx,5
 00715A6F    mov         edx,1
 00715A74    mov         eax,dword ptr [ebx+3E4]
 00715A7A    call        TStringGrid.GetCells
 00715A7F    mov         eax,dword ptr [ebp-38]
 00715A82    mov         edx,dword ptr [edi]
 00715A84    call        @UStrEqual
>00715A89    je          00715ADB
 00715A8B    lea         eax,[ebp-3C]
 00715A8E    push        eax
 00715A8F    movsx       ecx,si
 00715A92    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00715A97    mov         eax,dword ptr [eax]
 00715A99    mov         eax,dword ptr [eax+4A8]
 00715A9F    mov         eax,dword ptr [eax+2D4]
 00715AA5    mov         edx,5
 00715AAA    call        TStringGrid.GetCells
 00715AAF    mov         eax,dword ptr [ebp-3C]
 00715AB2    push        eax
 00715AB3    lea         eax,[ebp-40]
 00715AB6    push        eax
 00715AB7    mov         ecx,5
 00715ABC    mov         edx,1
 00715AC1    mov         eax,dword ptr [ebx+3E4]
 00715AC7    call        TStringGrid.GetCells
 00715ACC    mov         edx,dword ptr [ebp-40]
 00715ACF    pop         eax
 00715AD0    call        @UStrEqual
>00715AD5    jne         00716372
 00715ADB    lea         eax,[ebp-44]
 00715ADE    push        eax
 00715ADF    mov         ecx,6
 00715AE4    mov         edx,1
 00715AE9    mov         eax,dword ptr [ebx+3E4]
 00715AEF    call        TStringGrid.GetCells
 00715AF4    mov         eax,dword ptr [ebp-44]
 00715AF7    mov         edx,dword ptr [edi]
 00715AF9    call        @UStrEqual
>00715AFE    je          00715B50
 00715B00    lea         eax,[ebp-48]
 00715B03    push        eax
 00715B04    movsx       ecx,si
 00715B07    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00715B0C    mov         eax,dword ptr [eax]
 00715B0E    mov         eax,dword ptr [eax+4A8]
 00715B14    mov         eax,dword ptr [eax+2D4]
 00715B1A    mov         edx,6
 00715B1F    call        TStringGrid.GetCells
 00715B24    mov         eax,dword ptr [ebp-48]
 00715B27    push        eax
 00715B28    lea         eax,[ebp-4C]
 00715B2B    push        eax
 00715B2C    mov         ecx,6
 00715B31    mov         edx,1
 00715B36    mov         eax,dword ptr [ebx+3E4]
 00715B3C    call        TStringGrid.GetCells
 00715B41    mov         edx,dword ptr [ebp-4C]
 00715B44    pop         eax
 00715B45    call        @UStrEqual
>00715B4A    jne         00716372
 00715B50    lea         eax,[ebp-50]
 00715B53    push        eax
 00715B54    mov         ecx,7
 00715B59    mov         edx,1
 00715B5E    mov         eax,dword ptr [ebx+3E4]
 00715B64    call        TStringGrid.GetCells
 00715B69    mov         eax,dword ptr [ebp-50]
 00715B6C    mov         edx,dword ptr [edi]
 00715B6E    call        @UStrEqual
>00715B73    je          00715BC5
 00715B75    lea         eax,[ebp-54]
 00715B78    push        eax
 00715B79    movsx       ecx,si
 00715B7C    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00715B81    mov         eax,dword ptr [eax]
 00715B83    mov         eax,dword ptr [eax+4A8]
 00715B89    mov         eax,dword ptr [eax+2D4]
 00715B8F    mov         edx,7
 00715B94    call        TStringGrid.GetCells
 00715B99    mov         eax,dword ptr [ebp-54]
 00715B9C    push        eax
 00715B9D    lea         eax,[ebp-58]
 00715BA0    push        eax
 00715BA1    mov         ecx,7
 00715BA6    mov         edx,1
 00715BAB    mov         eax,dword ptr [ebx+3E4]
 00715BB1    call        TStringGrid.GetCells
 00715BB6    mov         edx,dword ptr [ebp-58]
 00715BB9    pop         eax
 00715BBA    call        @UStrEqual
>00715BBF    jne         00716372
 00715BC5    lea         eax,[ebp-5C]
 00715BC8    push        eax
 00715BC9    mov         ecx,9
 00715BCE    mov         edx,1
 00715BD3    mov         eax,dword ptr [ebx+3E4]
 00715BD9    call        TStringGrid.GetCells
 00715BDE    mov         eax,dword ptr [ebp-5C]
 00715BE1    mov         edx,dword ptr [edi]
 00715BE3    call        @UStrEqual
>00715BE8    je          00715C3A
 00715BEA    lea         eax,[ebp-60]
 00715BED    push        eax
 00715BEE    movsx       ecx,si
 00715BF1    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00715BF6    mov         eax,dword ptr [eax]
 00715BF8    mov         eax,dword ptr [eax+4A8]
 00715BFE    mov         eax,dword ptr [eax+2D4]
 00715C04    mov         edx,9
 00715C09    call        TStringGrid.GetCells
 00715C0E    mov         eax,dword ptr [ebp-60]
 00715C11    push        eax
 00715C12    lea         eax,[ebp-64]
 00715C15    push        eax
 00715C16    mov         ecx,9
 00715C1B    mov         edx,1
 00715C20    mov         eax,dword ptr [ebx+3E4]
 00715C26    call        TStringGrid.GetCells
 00715C2B    mov         edx,dword ptr [ebp-64]
 00715C2E    pop         eax
 00715C2F    call        @UStrEqual
>00715C34    jne         00716372
 00715C3A    lea         eax,[ebp-68]
 00715C3D    push        eax
 00715C3E    mov         ecx,0A
 00715C43    mov         edx,1
 00715C48    mov         eax,dword ptr [ebx+3E4]
 00715C4E    call        TStringGrid.GetCells
 00715C53    mov         eax,dword ptr [ebp-68]
 00715C56    mov         edx,dword ptr [edi]
 00715C58    call        @UStrEqual
>00715C5D    je          00715CAF
 00715C5F    lea         eax,[ebp-6C]
 00715C62    push        eax
 00715C63    movsx       ecx,si
 00715C66    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00715C6B    mov         eax,dword ptr [eax]
 00715C6D    mov         eax,dword ptr [eax+4A8]
 00715C73    mov         eax,dword ptr [eax+2D4]
 00715C79    mov         edx,0A
 00715C7E    call        TStringGrid.GetCells
 00715C83    mov         eax,dword ptr [ebp-6C]
 00715C86    push        eax
 00715C87    lea         eax,[ebp-70]
 00715C8A    push        eax
 00715C8B    mov         ecx,0A
 00715C90    mov         edx,1
 00715C95    mov         eax,dword ptr [ebx+3E4]
 00715C9B    call        TStringGrid.GetCells
 00715CA0    mov         edx,dword ptr [ebp-70]
 00715CA3    pop         eax
 00715CA4    call        @UStrEqual
>00715CA9    jne         00716372
 00715CAF    lea         eax,[ebp-74]
 00715CB2    push        eax
 00715CB3    mov         ecx,0B
 00715CB8    mov         edx,1
 00715CBD    mov         eax,dword ptr [ebx+3E4]
 00715CC3    call        TStringGrid.GetCells
 00715CC8    mov         eax,dword ptr [ebp-74]
 00715CCB    mov         edx,dword ptr [edi]
 00715CCD    call        @UStrEqual
>00715CD2    je          00715D24
 00715CD4    lea         eax,[ebp-78]
 00715CD7    push        eax
 00715CD8    movsx       ecx,si
 00715CDB    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00715CE0    mov         eax,dword ptr [eax]
 00715CE2    mov         eax,dword ptr [eax+4A8]
 00715CE8    mov         eax,dword ptr [eax+2D4]
 00715CEE    mov         edx,0B
 00715CF3    call        TStringGrid.GetCells
 00715CF8    mov         eax,dword ptr [ebp-78]
 00715CFB    push        eax
 00715CFC    lea         eax,[ebp-7C]
 00715CFF    push        eax
 00715D00    mov         ecx,0B
 00715D05    mov         edx,1
 00715D0A    mov         eax,dword ptr [ebx+3E4]
 00715D10    call        TStringGrid.GetCells
 00715D15    mov         edx,dword ptr [ebp-7C]
 00715D18    pop         eax
 00715D19    call        @UStrEqual
>00715D1E    jne         00716372
 00715D24    lea         eax,[ebp-80]
 00715D27    push        eax
 00715D28    mov         ecx,0C
 00715D2D    mov         edx,1
 00715D32    mov         eax,dword ptr [ebx+3E4]
 00715D38    call        TStringGrid.GetCells
 00715D3D    mov         eax,dword ptr [ebp-80]
 00715D40    mov         edx,dword ptr [edi]
 00715D42    call        @UStrEqual
>00715D47    je          00715DA5
 00715D49    lea         eax,[ebp-84]
 00715D4F    push        eax
 00715D50    movsx       ecx,si
 00715D53    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00715D58    mov         eax,dword ptr [eax]
 00715D5A    mov         eax,dword ptr [eax+4A8]
 00715D60    mov         eax,dword ptr [eax+2D4]
 00715D66    mov         edx,0C
 00715D6B    call        TStringGrid.GetCells
 00715D70    mov         eax,dword ptr [ebp-84]
 00715D76    push        eax
 00715D77    lea         eax,[ebp-88]
 00715D7D    push        eax
 00715D7E    mov         ecx,0C
 00715D83    mov         edx,1
 00715D88    mov         eax,dword ptr [ebx+3E4]
 00715D8E    call        TStringGrid.GetCells
 00715D93    mov         edx,dword ptr [ebp-88]
 00715D99    pop         eax
 00715D9A    call        @UStrEqual
>00715D9F    jne         00716372
 00715DA5    lea         eax,[ebp-8C]
 00715DAB    push        eax
 00715DAC    mov         ecx,0D
 00715DB1    mov         edx,1
 00715DB6    mov         eax,dword ptr [ebx+3E4]
 00715DBC    call        TStringGrid.GetCells
 00715DC1    mov         eax,dword ptr [ebp-8C]
 00715DC7    mov         edx,dword ptr [edi]
 00715DC9    call        @UStrEqual
>00715DCE    je          00715E2C
 00715DD0    lea         eax,[ebp-90]
 00715DD6    push        eax
 00715DD7    movsx       ecx,si
 00715DDA    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00715DDF    mov         eax,dword ptr [eax]
 00715DE1    mov         eax,dword ptr [eax+4A8]
 00715DE7    mov         eax,dword ptr [eax+2D4]
 00715DED    mov         edx,0D
 00715DF2    call        TStringGrid.GetCells
 00715DF7    mov         eax,dword ptr [ebp-90]
 00715DFD    push        eax
 00715DFE    lea         eax,[ebp-94]
 00715E04    push        eax
 00715E05    mov         ecx,0D
 00715E0A    mov         edx,1
 00715E0F    mov         eax,dword ptr [ebx+3E4]
 00715E15    call        TStringGrid.GetCells
 00715E1A    mov         edx,dword ptr [ebp-94]
 00715E20    pop         eax
 00715E21    call        @UStrEqual
>00715E26    jne         00716372
 00715E2C    lea         eax,[ebp-98]
 00715E32    push        eax
 00715E33    mov         ecx,0E
 00715E38    mov         edx,1
 00715E3D    mov         eax,dword ptr [ebx+3E4]
 00715E43    call        TStringGrid.GetCells
 00715E48    mov         eax,dword ptr [ebp-98]
 00715E4E    mov         edx,dword ptr [edi]
 00715E50    call        @UStrEqual
>00715E55    je          00715EB3
 00715E57    lea         eax,[ebp-9C]
 00715E5D    push        eax
 00715E5E    movsx       ecx,si
 00715E61    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00715E66    mov         eax,dword ptr [eax]
 00715E68    mov         eax,dword ptr [eax+4A8]
 00715E6E    mov         eax,dword ptr [eax+2D4]
 00715E74    mov         edx,0E
 00715E79    call        TStringGrid.GetCells
 00715E7E    mov         eax,dword ptr [ebp-9C]
 00715E84    push        eax
 00715E85    lea         eax,[ebp-0A0]
 00715E8B    push        eax
 00715E8C    mov         ecx,0E
 00715E91    mov         edx,1
 00715E96    mov         eax,dword ptr [ebx+3E4]
 00715E9C    call        TStringGrid.GetCells
 00715EA1    mov         edx,dword ptr [ebp-0A0]
 00715EA7    pop         eax
 00715EA8    call        @UStrEqual
>00715EAD    jne         00716372
 00715EB3    lea         eax,[ebp-0A4]
 00715EB9    push        eax
 00715EBA    mov         ecx,0F
 00715EBF    mov         edx,1
 00715EC4    mov         eax,dword ptr [ebx+3E4]
 00715ECA    call        TStringGrid.GetCells
 00715ECF    mov         eax,dword ptr [ebp-0A4]
 00715ED5    mov         edx,dword ptr [edi]
 00715ED7    call        @UStrEqual
>00715EDC    je          00715F3A
 00715EDE    lea         eax,[ebp-0A8]
 00715EE4    push        eax
 00715EE5    movsx       ecx,si
 00715EE8    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00715EED    mov         eax,dword ptr [eax]
 00715EEF    mov         eax,dword ptr [eax+4A8]
 00715EF5    mov         eax,dword ptr [eax+2D4]
 00715EFB    mov         edx,0F
 00715F00    call        TStringGrid.GetCells
 00715F05    mov         eax,dword ptr [ebp-0A8]
 00715F0B    push        eax
 00715F0C    lea         eax,[ebp-0AC]
 00715F12    push        eax
 00715F13    mov         ecx,0F
 00715F18    mov         edx,1
 00715F1D    mov         eax,dword ptr [ebx+3E4]
 00715F23    call        TStringGrid.GetCells
 00715F28    mov         edx,dword ptr [ebp-0AC]
 00715F2E    pop         eax
 00715F2F    call        @UStrEqual
>00715F34    jne         00716372
 00715F3A    lea         eax,[ebp-0B0]
 00715F40    push        eax
 00715F41    mov         ecx,10
 00715F46    mov         edx,1
 00715F4B    mov         eax,dword ptr [ebx+3E4]
 00715F51    call        TStringGrid.GetCells
 00715F56    mov         eax,dword ptr [ebp-0B0]
 00715F5C    mov         edx,dword ptr [edi]
 00715F5E    call        @UStrEqual
>00715F63    je          00715FC1
 00715F65    lea         eax,[ebp-0B4]
 00715F6B    push        eax
 00715F6C    movsx       ecx,si
 00715F6F    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00715F74    mov         eax,dword ptr [eax]
 00715F76    mov         eax,dword ptr [eax+4A8]
 00715F7C    mov         eax,dword ptr [eax+2D4]
 00715F82    mov         edx,10
 00715F87    call        TStringGrid.GetCells
 00715F8C    mov         eax,dword ptr [ebp-0B4]
 00715F92    push        eax
 00715F93    lea         eax,[ebp-0B8]
 00715F99    push        eax
 00715F9A    mov         ecx,10
 00715F9F    mov         edx,1
 00715FA4    mov         eax,dword ptr [ebx+3E4]
 00715FAA    call        TStringGrid.GetCells
 00715FAF    mov         edx,dword ptr [ebp-0B8]
 00715FB5    pop         eax
 00715FB6    call        @UStrEqual
>00715FBB    jne         00716372
 00715FC1    lea         eax,[ebp-0BC]
 00715FC7    push        eax
 00715FC8    mov         ecx,11
 00715FCD    mov         edx,1
 00715FD2    mov         eax,dword ptr [ebx+3E4]
 00715FD8    call        TStringGrid.GetCells
 00715FDD    mov         eax,dword ptr [ebp-0BC]
 00715FE3    mov         edx,dword ptr [edi]
 00715FE5    call        @UStrEqual
>00715FEA    je          00716048
 00715FEC    lea         eax,[ebp-0C0]
 00715FF2    push        eax
 00715FF3    movsx       ecx,si
 00715FF6    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00715FFB    mov         eax,dword ptr [eax]
 00715FFD    mov         eax,dword ptr [eax+4A8]
 00716003    mov         eax,dword ptr [eax+2D4]
 00716009    mov         edx,11
 0071600E    call        TStringGrid.GetCells
 00716013    mov         eax,dword ptr [ebp-0C0]
 00716019    push        eax
 0071601A    lea         eax,[ebp-0C4]
 00716020    push        eax
 00716021    mov         ecx,11
 00716026    mov         edx,1
 0071602B    mov         eax,dword ptr [ebx+3E4]
 00716031    call        TStringGrid.GetCells
 00716036    mov         edx,dword ptr [ebp-0C4]
 0071603C    pop         eax
 0071603D    call        @UStrEqual
>00716042    jne         00716372
 00716048    lea         eax,[ebp-0C8]
 0071604E    push        eax
 0071604F    mov         ecx,12
 00716054    mov         edx,1
 00716059    mov         eax,dword ptr [ebx+3E4]
 0071605F    call        TStringGrid.GetCells
 00716064    mov         eax,dword ptr [ebp-0C8]
 0071606A    mov         edx,dword ptr [edi]
 0071606C    call        @UStrEqual
>00716071    je          007160CF
 00716073    lea         eax,[ebp-0CC]
 00716079    push        eax
 0071607A    movsx       ecx,si
 0071607D    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00716082    mov         eax,dword ptr [eax]
 00716084    mov         eax,dword ptr [eax+4A8]
 0071608A    mov         eax,dword ptr [eax+2D4]
 00716090    mov         edx,12
 00716095    call        TStringGrid.GetCells
 0071609A    mov         eax,dword ptr [ebp-0CC]
 007160A0    push        eax
 007160A1    lea         eax,[ebp-0D0]
 007160A7    push        eax
 007160A8    mov         ecx,12
 007160AD    mov         edx,1
 007160B2    mov         eax,dword ptr [ebx+3E4]
 007160B8    call        TStringGrid.GetCells
 007160BD    mov         edx,dword ptr [ebp-0D0]
 007160C3    pop         eax
 007160C4    call        @UStrEqual
>007160C9    jne         00716372
 007160CF    lea         eax,[ebp-0D4]
 007160D5    push        eax
 007160D6    mov         ecx,13
 007160DB    mov         edx,1
 007160E0    mov         eax,dword ptr [ebx+3E4]
 007160E6    call        TStringGrid.GetCells
 007160EB    mov         eax,dword ptr [ebp-0D4]
 007160F1    mov         edx,dword ptr [edi]
 007160F3    call        @UStrEqual
>007160F8    je          00716156
 007160FA    lea         eax,[ebp-0D8]
 00716100    push        eax
 00716101    movsx       ecx,si
 00716104    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00716109    mov         eax,dword ptr [eax]
 0071610B    mov         eax,dword ptr [eax+4A8]
 00716111    mov         eax,dword ptr [eax+2D4]
 00716117    mov         edx,13
 0071611C    call        TStringGrid.GetCells
 00716121    mov         eax,dword ptr [ebp-0D8]
 00716127    push        eax
 00716128    lea         eax,[ebp-0DC]
 0071612E    push        eax
 0071612F    mov         ecx,13
 00716134    mov         edx,1
 00716139    mov         eax,dword ptr [ebx+3E4]
 0071613F    call        TStringGrid.GetCells
 00716144    mov         edx,dword ptr [ebp-0DC]
 0071614A    pop         eax
 0071614B    call        @UStrEqual
>00716150    jne         00716372
 00716156    lea         eax,[ebp-0E0]
 0071615C    push        eax
 0071615D    mov         ecx,14
 00716162    mov         edx,1
 00716167    mov         eax,dword ptr [ebx+3E4]
 0071616D    call        TStringGrid.GetCells
 00716172    mov         eax,dword ptr [ebp-0E0]
 00716178    mov         edx,dword ptr [edi]
 0071617A    call        @UStrEqual
>0071617F    je          007161DD
 00716181    lea         eax,[ebp-0E4]
 00716187    push        eax
 00716188    movsx       ecx,si
 0071618B    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00716190    mov         eax,dword ptr [eax]
 00716192    mov         eax,dword ptr [eax+4A8]
 00716198    mov         eax,dword ptr [eax+2D4]
 0071619E    mov         edx,14
 007161A3    call        TStringGrid.GetCells
 007161A8    mov         eax,dword ptr [ebp-0E4]
 007161AE    push        eax
 007161AF    lea         eax,[ebp-0E8]
 007161B5    push        eax
 007161B6    mov         ecx,14
 007161BB    mov         edx,1
 007161C0    mov         eax,dword ptr [ebx+3E4]
 007161C6    call        TStringGrid.GetCells
 007161CB    mov         edx,dword ptr [ebp-0E8]
 007161D1    pop         eax
 007161D2    call        @UStrEqual
>007161D7    jne         00716372
 007161DD    lea         eax,[ebp-0EC]
 007161E3    push        eax
 007161E4    mov         ecx,15
 007161E9    mov         edx,1
 007161EE    mov         eax,dword ptr [ebx+3E4]
 007161F4    call        TStringGrid.GetCells
 007161F9    mov         eax,dword ptr [ebp-0EC]
 007161FF    mov         edx,dword ptr [edi]
 00716201    call        @UStrEqual
>00716206    je          00716264
 00716208    lea         eax,[ebp-0F0]
 0071620E    push        eax
 0071620F    movsx       ecx,si
 00716212    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00716217    mov         eax,dword ptr [eax]
 00716219    mov         eax,dword ptr [eax+4A8]
 0071621F    mov         eax,dword ptr [eax+2D4]
 00716225    mov         edx,15
 0071622A    call        TStringGrid.GetCells
 0071622F    mov         eax,dword ptr [ebp-0F0]
 00716235    push        eax
 00716236    lea         eax,[ebp-0F4]
 0071623C    push        eax
 0071623D    mov         ecx,15
 00716242    mov         edx,1
 00716247    mov         eax,dword ptr [ebx+3E4]
 0071624D    call        TStringGrid.GetCells
 00716252    mov         edx,dword ptr [ebp-0F4]
 00716258    pop         eax
 00716259    call        @UStrEqual
>0071625E    jne         00716372
 00716264    lea         eax,[ebp-0F8]
 0071626A    push        eax
 0071626B    mov         ecx,16
 00716270    mov         edx,1
 00716275    mov         eax,dword ptr [ebx+3E4]
 0071627B    call        TStringGrid.GetCells
 00716280    mov         eax,dword ptr [ebp-0F8]
 00716286    mov         edx,dword ptr [edi]
 00716288    call        @UStrEqual
>0071628D    je          007162EB
 0071628F    lea         eax,[ebp-0FC]
 00716295    push        eax
 00716296    movsx       ecx,si
 00716299    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 0071629E    mov         eax,dword ptr [eax]
 007162A0    mov         eax,dword ptr [eax+4A8]
 007162A6    mov         eax,dword ptr [eax+2D4]
 007162AC    mov         edx,16
 007162B1    call        TStringGrid.GetCells
 007162B6    mov         eax,dword ptr [ebp-0FC]
 007162BC    push        eax
 007162BD    lea         eax,[ebp-100]
 007162C3    push        eax
 007162C4    mov         ecx,16
 007162C9    mov         edx,1
 007162CE    mov         eax,dword ptr [ebx+3E4]
 007162D4    call        TStringGrid.GetCells
 007162D9    mov         edx,dword ptr [ebp-100]
 007162DF    pop         eax
 007162E0    call        @UStrEqual
>007162E5    jne         00716372
 007162EB    lea         eax,[ebp-104]
 007162F1    push        eax
 007162F2    mov         ecx,17
 007162F7    mov         edx,1
 007162FC    mov         eax,dword ptr [ebx+3E4]
 00716302    call        TStringGrid.GetCells
 00716307    mov         eax,dword ptr [ebp-104]
 0071630D    mov         edx,dword ptr [edi]
 0071630F    call        @UStrEqual
>00716314    je          0071636E
 00716316    lea         eax,[ebp-108]
 0071631C    push        eax
 0071631D    movsx       ecx,si
 00716320    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00716325    mov         eax,dword ptr [eax]
 00716327    mov         eax,dword ptr [eax+4A8]
 0071632D    mov         eax,dword ptr [eax+2D4]
 00716333    mov         edx,17
 00716338    call        TStringGrid.GetCells
 0071633D    mov         eax,dword ptr [ebp-108]
 00716343    push        eax
 00716344    lea         eax,[ebp-10C]
 0071634A    push        eax
 0071634B    mov         ecx,17
 00716350    mov         edx,1
 00716355    mov         eax,dword ptr [ebx+3E4]
 0071635B    call        TStringGrid.GetCells
 00716360    mov         edx,dword ptr [ebp-10C]
 00716366    pop         eax
 00716367    call        @UStrEqual
>0071636C    jne         00716372
 0071636E    mov         byte ptr [ebp-1],1
 00716372    xor         eax,eax
 00716374    pop         edx
 00716375    pop         ecx
 00716376    pop         ecx
 00716377    mov         dword ptr fs:[eax],edx
 0071637A    push        716397
 0071637F    lea         eax,[ebp-10C]
 00716385    mov         edx,42
 0071638A    call        @UStrArrayClr
 0071638F    ret
>00716390    jmp         @HandleFinally
>00716395    jmp         0071637F
 00716397    movzx       eax,byte ptr [ebp-1]
 0071639B    pop         edi
 0071639C    pop         esi
 0071639D    pop         ebx
 0071639E    mov         esp,ebp
 007163A0    pop         ebp
 007163A1    ret
end;*}

//007163A4
procedure TAPFillDlg.btnOKClick(Sender:TObject);
begin
{*
 007163A4    push        ebp
 007163A5    mov         ebp,esp
 007163A7    mov         ecx,18
 007163AC    push        0
 007163AE    push        0
 007163B0    dec         ecx
>007163B1    jne         007163AC
 007163B3    push        ebx
 007163B4    push        esi
 007163B5    push        edi
 007163B6    mov         dword ptr [ebp-4],edx
 007163B9    mov         ebx,eax
 007163BB    mov         edi,7C2F98;^'Don''t change'
 007163C0    xor         eax,eax
 007163C2    push        ebp
 007163C3    push        716E16
 007163C8    push        dword ptr fs:[eax]
 007163CB    mov         dword ptr fs:[eax],esp
 007163CE    mov         eax,dword ptr [ebx+3DC];TAPFillDlg.udFirst:TUpDown
 007163D4    call        TUpDown.GetPosition
 007163D9    add         eax,8000
 007163DE    cmp         eax,0FFFF
>007163E3    jbe         007163EA
 007163E5    call        @BoundErr
 007163EA    add         eax,0FFFF8000
 007163EF    push        eax
 007163F0    mov         eax,dword ptr [ebx+3E0];TAPFillDlg.udLast:TUpDown
 007163F6    call        TUpDown.GetPosition
 007163FB    add         eax,8000
 00716400    cmp         eax,0FFFF
>00716405    jbe         0071640C
 00716407    call        @BoundErr
 0071640C    add         eax,0FFFF8000
 00716411    pop         edx
 00716412    sub         ax,dx
>00716415    jl          00716DF8
 0071641B    inc         eax
 0071641C    mov         word ptr [ebp-8],ax
 00716420    mov         word ptr [ebp-6],dx
 00716424    mov         eax,[007C4DB8];^gvar_00901F74:Integer
 00716429    mov         eax,dword ptr [eax]
 0071642B    dec         eax
>0071642C    je          0071643A
 0071642E    sub         eax,3
>00716431    je          00716470
 00716433    sub         eax,2
>00716436    je          00716470
>00716438    jmp         007164A7
 0071643A    cmp         word ptr [ebp-6],64
>0071643F    jle         0071646A
 00716441    movsx       esi,word ptr [ebp-6]
 00716445    sub         esi,1
>00716448    jno         0071644F
 0071644A    call        @IntOver
 0071644F    add         esi,8000
 00716455    cmp         esi,0FFFF
>0071645B    jbe         00716462
 0071645D    call        @BoundErr
 00716462    add         esi,0FFFF8000
>00716468    jmp         007164AB
 0071646A    movzx       esi,word ptr [ebp-6]
>0071646E    jmp         007164AB
 00716470    cmp         word ptr [ebp-6],0A0
>00716476    jle         007164A1
 00716478    movsx       esi,word ptr [ebp-6]
 0071647C    sub         esi,29
>0071647F    jno         00716486
 00716481    call        @IntOver
 00716486    add         esi,8000
 0071648C    cmp         esi,0FFFF
>00716492    jbe         00716499
 00716494    call        @BoundErr
 00716499    add         esi,0FFFF8000
>0071649F    jmp         007164AB
 007164A1    movzx       esi,word ptr [ebp-6]
>007164A5    jmp         007164AB
 007164A7    movzx       esi,word ptr [ebp-6]
 007164AB    mov         edx,esi
 007164AD    mov         eax,ebx
 007164AF    call        00715864
 007164B4    test        al,al
>007164B6    je          00716DEA
 007164BC    lea         eax,[ebp-0C]
 007164BF    push        eax
 007164C0    mov         ecx,1
 007164C5    mov         edx,2
 007164CA    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007164D0    call        TStringGrid.GetCells
 007164D5    mov         eax,dword ptr [ebp-0C]
 007164D8    mov         edx,dword ptr [edi]
 007164DA    call        @UStrEqual
>007164DF    je          0071651E
 007164E1    lea         eax,[ebp-10]
 007164E4    push        eax
 007164E5    mov         ecx,1
 007164EA    mov         edx,2
 007164EF    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007164F5    call        TStringGrid.GetCells
 007164FA    mov         eax,dword ptr [ebp-10]
 007164FD    push        eax
 007164FE    movsx       ecx,si
 00716501    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00716506    mov         eax,dword ptr [eax]
 00716508    mov         eax,dword ptr [eax+4A8]
 0071650E    mov         eax,dword ptr [eax+2D4]
 00716514    mov         edx,1
 00716519    call        TStringGrid.SetCells
 0071651E    lea         eax,[ebp-14]
 00716521    push        eax
 00716522    mov         ecx,2
 00716527    mov         edx,2
 0071652C    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716532    call        TStringGrid.GetCells
 00716537    mov         eax,dword ptr [ebp-14]
 0071653A    mov         edx,dword ptr [edi]
 0071653C    call        @UStrEqual
>00716541    je          00716580
 00716543    lea         eax,[ebp-18]
 00716546    push        eax
 00716547    mov         ecx,2
 0071654C    mov         edx,2
 00716551    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716557    call        TStringGrid.GetCells
 0071655C    mov         eax,dword ptr [ebp-18]
 0071655F    push        eax
 00716560    movsx       ecx,si
 00716563    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00716568    mov         eax,dword ptr [eax]
 0071656A    mov         eax,dword ptr [eax+4A8]
 00716570    mov         eax,dword ptr [eax+2D4]
 00716576    mov         edx,2
 0071657B    call        TStringGrid.SetCells
 00716580    lea         eax,[ebp-1C]
 00716583    push        eax
 00716584    mov         ecx,3
 00716589    mov         edx,2
 0071658E    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716594    call        TStringGrid.GetCells
 00716599    mov         eax,dword ptr [ebp-1C]
 0071659C    mov         edx,dword ptr [edi]
 0071659E    call        @UStrEqual
>007165A3    je          007165E2
 007165A5    lea         eax,[ebp-20]
 007165A8    push        eax
 007165A9    mov         ecx,3
 007165AE    mov         edx,2
 007165B3    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007165B9    call        TStringGrid.GetCells
 007165BE    mov         eax,dword ptr [ebp-20]
 007165C1    push        eax
 007165C2    movsx       ecx,si
 007165C5    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 007165CA    mov         eax,dword ptr [eax]
 007165CC    mov         eax,dword ptr [eax+4A8]
 007165D2    mov         eax,dword ptr [eax+2D4]
 007165D8    mov         edx,3
 007165DD    call        TStringGrid.SetCells
 007165E2    lea         eax,[ebp-24]
 007165E5    push        eax
 007165E6    mov         ecx,4
 007165EB    mov         edx,2
 007165F0    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007165F6    call        TStringGrid.GetCells
 007165FB    mov         eax,dword ptr [ebp-24]
 007165FE    mov         edx,dword ptr [edi]
 00716600    call        @UStrEqual
>00716605    je          00716644
 00716607    lea         eax,[ebp-28]
 0071660A    push        eax
 0071660B    mov         ecx,4
 00716610    mov         edx,2
 00716615    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071661B    call        TStringGrid.GetCells
 00716620    mov         eax,dword ptr [ebp-28]
 00716623    push        eax
 00716624    movsx       ecx,si
 00716627    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 0071662C    mov         eax,dword ptr [eax]
 0071662E    mov         eax,dword ptr [eax+4A8]
 00716634    mov         eax,dword ptr [eax+2D4]
 0071663A    mov         edx,4
 0071663F    call        TStringGrid.SetCells
 00716644    lea         eax,[ebp-2C]
 00716647    push        eax
 00716648    mov         ecx,5
 0071664D    mov         edx,2
 00716652    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716658    call        TStringGrid.GetCells
 0071665D    mov         eax,dword ptr [ebp-2C]
 00716660    mov         edx,dword ptr [edi]
 00716662    call        @UStrEqual
>00716667    je          007166A6
 00716669    lea         eax,[ebp-30]
 0071666C    push        eax
 0071666D    mov         ecx,5
 00716672    mov         edx,2
 00716677    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071667D    call        TStringGrid.GetCells
 00716682    mov         eax,dword ptr [ebp-30]
 00716685    push        eax
 00716686    movsx       ecx,si
 00716689    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 0071668E    mov         eax,dword ptr [eax]
 00716690    mov         eax,dword ptr [eax+4A8]
 00716696    mov         eax,dword ptr [eax+2D4]
 0071669C    mov         edx,5
 007166A1    call        TStringGrid.SetCells
 007166A6    lea         eax,[ebp-34]
 007166A9    push        eax
 007166AA    mov         ecx,6
 007166AF    mov         edx,2
 007166B4    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007166BA    call        TStringGrid.GetCells
 007166BF    mov         eax,dword ptr [ebp-34]
 007166C2    mov         edx,dword ptr [edi]
 007166C4    call        @UStrEqual
>007166C9    je          00716708
 007166CB    lea         eax,[ebp-38]
 007166CE    push        eax
 007166CF    mov         ecx,6
 007166D4    mov         edx,2
 007166D9    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007166DF    call        TStringGrid.GetCells
 007166E4    mov         eax,dword ptr [ebp-38]
 007166E7    push        eax
 007166E8    movsx       ecx,si
 007166EB    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 007166F0    mov         eax,dword ptr [eax]
 007166F2    mov         eax,dword ptr [eax+4A8]
 007166F8    mov         eax,dword ptr [eax+2D4]
 007166FE    mov         edx,6
 00716703    call        TStringGrid.SetCells
 00716708    lea         eax,[ebp-3C]
 0071670B    push        eax
 0071670C    mov         ecx,7
 00716711    mov         edx,2
 00716716    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071671C    call        TStringGrid.GetCells
 00716721    mov         eax,dword ptr [ebp-3C]
 00716724    mov         edx,dword ptr [edi]
 00716726    call        @UStrEqual
>0071672B    je          0071676A
 0071672D    lea         eax,[ebp-40]
 00716730    push        eax
 00716731    mov         ecx,7
 00716736    mov         edx,2
 0071673B    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716741    call        TStringGrid.GetCells
 00716746    mov         eax,dword ptr [ebp-40]
 00716749    push        eax
 0071674A    movsx       ecx,si
 0071674D    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00716752    mov         eax,dword ptr [eax]
 00716754    mov         eax,dword ptr [eax+4A8]
 0071675A    mov         eax,dword ptr [eax+2D4]
 00716760    mov         edx,7
 00716765    call        TStringGrid.SetCells
 0071676A    lea         eax,[ebp-44]
 0071676D    push        eax
 0071676E    mov         ecx,9
 00716773    mov         edx,2
 00716778    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071677E    call        TStringGrid.GetCells
 00716783    mov         eax,dword ptr [ebp-44]
 00716786    mov         edx,dword ptr [edi]
 00716788    call        @UStrEqual
>0071678D    je          007167CC
 0071678F    lea         eax,[ebp-48]
 00716792    push        eax
 00716793    mov         ecx,9
 00716798    mov         edx,2
 0071679D    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007167A3    call        TStringGrid.GetCells
 007167A8    mov         eax,dword ptr [ebp-48]
 007167AB    push        eax
 007167AC    movsx       ecx,si
 007167AF    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 007167B4    mov         eax,dword ptr [eax]
 007167B6    mov         eax,dword ptr [eax+4A8]
 007167BC    mov         eax,dword ptr [eax+2D4]
 007167C2    mov         edx,9
 007167C7    call        TStringGrid.SetCells
 007167CC    lea         eax,[ebp-4C]
 007167CF    push        eax
 007167D0    mov         ecx,0A
 007167D5    mov         edx,2
 007167DA    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007167E0    call        TStringGrid.GetCells
 007167E5    mov         eax,dword ptr [ebp-4C]
 007167E8    mov         edx,dword ptr [edi]
 007167EA    call        @UStrEqual
>007167EF    je          0071682E
 007167F1    lea         eax,[ebp-50]
 007167F4    push        eax
 007167F5    mov         ecx,0A
 007167FA    mov         edx,2
 007167FF    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716805    call        TStringGrid.GetCells
 0071680A    mov         eax,dword ptr [ebp-50]
 0071680D    push        eax
 0071680E    movsx       ecx,si
 00716811    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00716816    mov         eax,dword ptr [eax]
 00716818    mov         eax,dword ptr [eax+4A8]
 0071681E    mov         eax,dword ptr [eax+2D4]
 00716824    mov         edx,0A
 00716829    call        TStringGrid.SetCells
 0071682E    lea         eax,[ebp-54]
 00716831    push        eax
 00716832    mov         ecx,0B
 00716837    mov         edx,2
 0071683C    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716842    call        TStringGrid.GetCells
 00716847    mov         eax,dword ptr [ebp-54]
 0071684A    mov         edx,dword ptr [edi]
 0071684C    call        @UStrEqual
>00716851    je          00716890
 00716853    lea         eax,[ebp-58]
 00716856    push        eax
 00716857    mov         ecx,0B
 0071685C    mov         edx,2
 00716861    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716867    call        TStringGrid.GetCells
 0071686C    mov         eax,dword ptr [ebp-58]
 0071686F    push        eax
 00716870    movsx       ecx,si
 00716873    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00716878    mov         eax,dword ptr [eax]
 0071687A    mov         eax,dword ptr [eax+4A8]
 00716880    mov         eax,dword ptr [eax+2D4]
 00716886    mov         edx,0B
 0071688B    call        TStringGrid.SetCells
 00716890    lea         eax,[ebp-5C]
 00716893    push        eax
 00716894    mov         ecx,0C
 00716899    mov         edx,2
 0071689E    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007168A4    call        TStringGrid.GetCells
 007168A9    mov         eax,dword ptr [ebp-5C]
 007168AC    mov         edx,dword ptr [edi]
 007168AE    call        @UStrEqual
>007168B3    je          007168F2
 007168B5    lea         eax,[ebp-60]
 007168B8    push        eax
 007168B9    mov         ecx,0C
 007168BE    mov         edx,2
 007168C3    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007168C9    call        TStringGrid.GetCells
 007168CE    mov         eax,dword ptr [ebp-60]
 007168D1    push        eax
 007168D2    movsx       ecx,si
 007168D5    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 007168DA    mov         eax,dword ptr [eax]
 007168DC    mov         eax,dword ptr [eax+4A8]
 007168E2    mov         eax,dword ptr [eax+2D4]
 007168E8    mov         edx,0C
 007168ED    call        TStringGrid.SetCells
 007168F2    lea         eax,[ebp-64]
 007168F5    push        eax
 007168F6    mov         ecx,8
 007168FB    mov         edx,2
 00716900    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716906    call        TStringGrid.GetCells
 0071690B    mov         eax,dword ptr [ebp-64]
 0071690E    mov         edx,dword ptr [edi]
 00716910    call        @UStrEqual
>00716915    je          00716954
 00716917    lea         eax,[ebp-68]
 0071691A    push        eax
 0071691B    mov         ecx,8
 00716920    mov         edx,2
 00716925    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071692B    call        TStringGrid.GetCells
 00716930    mov         eax,dword ptr [ebp-68]
 00716933    push        eax
 00716934    movsx       ecx,si
 00716937    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 0071693C    mov         eax,dword ptr [eax]
 0071693E    mov         eax,dword ptr [eax+4A8]
 00716944    mov         eax,dword ptr [eax+2D4]
 0071694A    mov         edx,8
 0071694F    call        TStringGrid.SetCells
 00716954    lea         eax,[ebp-6C]
 00716957    push        eax
 00716958    mov         ecx,0D
 0071695D    mov         edx,2
 00716962    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716968    call        TStringGrid.GetCells
 0071696D    mov         eax,dword ptr [ebp-6C]
 00716970    mov         edx,dword ptr [edi]
 00716972    call        @UStrEqual
>00716977    je          007169B6
 00716979    lea         eax,[ebp-70]
 0071697C    push        eax
 0071697D    mov         ecx,0D
 00716982    mov         edx,2
 00716987    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 0071698D    call        TStringGrid.GetCells
 00716992    mov         eax,dword ptr [ebp-70]
 00716995    push        eax
 00716996    movsx       ecx,si
 00716999    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 0071699E    mov         eax,dword ptr [eax]
 007169A0    mov         eax,dword ptr [eax+4A8]
 007169A6    mov         eax,dword ptr [eax+2D4]
 007169AC    mov         edx,0D
 007169B1    call        TStringGrid.SetCells
 007169B6    lea         eax,[ebp-74]
 007169B9    push        eax
 007169BA    mov         ecx,0E
 007169BF    mov         edx,2
 007169C4    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007169CA    call        TStringGrid.GetCells
 007169CF    mov         eax,dword ptr [ebp-74]
 007169D2    mov         edx,dword ptr [edi]
 007169D4    call        @UStrEqual
>007169D9    je          00716A18
 007169DB    lea         eax,[ebp-78]
 007169DE    push        eax
 007169DF    mov         ecx,0E
 007169E4    mov         edx,2
 007169E9    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 007169EF    call        TStringGrid.GetCells
 007169F4    mov         eax,dword ptr [ebp-78]
 007169F7    push        eax
 007169F8    movsx       ecx,si
 007169FB    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00716A00    mov         eax,dword ptr [eax]
 00716A02    mov         eax,dword ptr [eax+4A8]
 00716A08    mov         eax,dword ptr [eax+2D4]
 00716A0E    mov         edx,0E
 00716A13    call        TStringGrid.SetCells
 00716A18    lea         eax,[ebp-7C]
 00716A1B    push        eax
 00716A1C    mov         ecx,0F
 00716A21    mov         edx,2
 00716A26    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716A2C    call        TStringGrid.GetCells
 00716A31    mov         eax,dword ptr [ebp-7C]
 00716A34    mov         edx,dword ptr [edi]
 00716A36    call        @UStrEqual
>00716A3B    je          00716A7A
 00716A3D    lea         eax,[ebp-80]
 00716A40    push        eax
 00716A41    mov         ecx,0F
 00716A46    mov         edx,2
 00716A4B    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716A51    call        TStringGrid.GetCells
 00716A56    mov         eax,dword ptr [ebp-80]
 00716A59    push        eax
 00716A5A    movsx       ecx,si
 00716A5D    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00716A62    mov         eax,dword ptr [eax]
 00716A64    mov         eax,dword ptr [eax+4A8]
 00716A6A    mov         eax,dword ptr [eax+2D4]
 00716A70    mov         edx,0F
 00716A75    call        TStringGrid.SetCells
 00716A7A    lea         eax,[ebp-84]
 00716A80    push        eax
 00716A81    mov         ecx,10
 00716A86    mov         edx,2
 00716A8B    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716A91    call        TStringGrid.GetCells
 00716A96    mov         eax,dword ptr [ebp-84]
 00716A9C    mov         edx,dword ptr [edi]
 00716A9E    call        @UStrEqual
>00716AA3    je          00716AE8
 00716AA5    lea         eax,[ebp-88]
 00716AAB    push        eax
 00716AAC    mov         ecx,10
 00716AB1    mov         edx,2
 00716AB6    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716ABC    call        TStringGrid.GetCells
 00716AC1    mov         eax,dword ptr [ebp-88]
 00716AC7    push        eax
 00716AC8    movsx       ecx,si
 00716ACB    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00716AD0    mov         eax,dword ptr [eax]
 00716AD2    mov         eax,dword ptr [eax+4A8]
 00716AD8    mov         eax,dword ptr [eax+2D4]
 00716ADE    mov         edx,10
 00716AE3    call        TStringGrid.SetCells
 00716AE8    lea         eax,[ebp-8C]
 00716AEE    push        eax
 00716AEF    mov         ecx,11
 00716AF4    mov         edx,2
 00716AF9    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716AFF    call        TStringGrid.GetCells
 00716B04    mov         eax,dword ptr [ebp-8C]
 00716B0A    mov         edx,dword ptr [edi]
 00716B0C    call        @UStrEqual
>00716B11    je          00716B56
 00716B13    lea         eax,[ebp-90]
 00716B19    push        eax
 00716B1A    mov         ecx,11
 00716B1F    mov         edx,2
 00716B24    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716B2A    call        TStringGrid.GetCells
 00716B2F    mov         eax,dword ptr [ebp-90]
 00716B35    push        eax
 00716B36    movsx       ecx,si
 00716B39    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00716B3E    mov         eax,dword ptr [eax]
 00716B40    mov         eax,dword ptr [eax+4A8]
 00716B46    mov         eax,dword ptr [eax+2D4]
 00716B4C    mov         edx,11
 00716B51    call        TStringGrid.SetCells
 00716B56    lea         eax,[ebp-94]
 00716B5C    push        eax
 00716B5D    mov         ecx,12
 00716B62    mov         edx,2
 00716B67    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716B6D    call        TStringGrid.GetCells
 00716B72    mov         eax,dword ptr [ebp-94]
 00716B78    mov         edx,dword ptr [edi]
 00716B7A    call        @UStrEqual
>00716B7F    je          00716BC4
 00716B81    lea         eax,[ebp-98]
 00716B87    push        eax
 00716B88    mov         ecx,12
 00716B8D    mov         edx,2
 00716B92    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716B98    call        TStringGrid.GetCells
 00716B9D    mov         eax,dword ptr [ebp-98]
 00716BA3    push        eax
 00716BA4    movsx       ecx,si
 00716BA7    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00716BAC    mov         eax,dword ptr [eax]
 00716BAE    mov         eax,dword ptr [eax+4A8]
 00716BB4    mov         eax,dword ptr [eax+2D4]
 00716BBA    mov         edx,12
 00716BBF    call        TStringGrid.SetCells
 00716BC4    lea         eax,[ebp-9C]
 00716BCA    push        eax
 00716BCB    mov         ecx,13
 00716BD0    mov         edx,2
 00716BD5    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716BDB    call        TStringGrid.GetCells
 00716BE0    mov         eax,dword ptr [ebp-9C]
 00716BE6    mov         edx,dword ptr [edi]
 00716BE8    call        @UStrEqual
>00716BED    je          00716C32
 00716BEF    lea         eax,[ebp-0A0]
 00716BF5    push        eax
 00716BF6    mov         ecx,13
 00716BFB    mov         edx,2
 00716C00    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716C06    call        TStringGrid.GetCells
 00716C0B    mov         eax,dword ptr [ebp-0A0]
 00716C11    push        eax
 00716C12    movsx       ecx,si
 00716C15    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00716C1A    mov         eax,dword ptr [eax]
 00716C1C    mov         eax,dword ptr [eax+4A8]
 00716C22    mov         eax,dword ptr [eax+2D4]
 00716C28    mov         edx,13
 00716C2D    call        TStringGrid.SetCells
 00716C32    lea         eax,[ebp-0A4]
 00716C38    push        eax
 00716C39    mov         ecx,14
 00716C3E    mov         edx,2
 00716C43    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716C49    call        TStringGrid.GetCells
 00716C4E    mov         eax,dword ptr [ebp-0A4]
 00716C54    mov         edx,dword ptr [edi]
 00716C56    call        @UStrEqual
>00716C5B    je          00716CA0
 00716C5D    lea         eax,[ebp-0A8]
 00716C63    push        eax
 00716C64    mov         ecx,14
 00716C69    mov         edx,2
 00716C6E    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716C74    call        TStringGrid.GetCells
 00716C79    mov         eax,dword ptr [ebp-0A8]
 00716C7F    push        eax
 00716C80    movsx       ecx,si
 00716C83    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00716C88    mov         eax,dword ptr [eax]
 00716C8A    mov         eax,dword ptr [eax+4A8]
 00716C90    mov         eax,dword ptr [eax+2D4]
 00716C96    mov         edx,14
 00716C9B    call        TStringGrid.SetCells
 00716CA0    lea         eax,[ebp-0AC]
 00716CA6    push        eax
 00716CA7    mov         ecx,15
 00716CAC    mov         edx,2
 00716CB1    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716CB7    call        TStringGrid.GetCells
 00716CBC    mov         eax,dword ptr [ebp-0AC]
 00716CC2    mov         edx,dword ptr [edi]
 00716CC4    call        @UStrEqual
>00716CC9    je          00716D0E
 00716CCB    lea         eax,[ebp-0B0]
 00716CD1    push        eax
 00716CD2    mov         ecx,15
 00716CD7    mov         edx,2
 00716CDC    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716CE2    call        TStringGrid.GetCells
 00716CE7    mov         eax,dword ptr [ebp-0B0]
 00716CED    push        eax
 00716CEE    movsx       ecx,si
 00716CF1    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00716CF6    mov         eax,dword ptr [eax]
 00716CF8    mov         eax,dword ptr [eax+4A8]
 00716CFE    mov         eax,dword ptr [eax+2D4]
 00716D04    mov         edx,15
 00716D09    call        TStringGrid.SetCells
 00716D0E    lea         eax,[ebp-0B4]
 00716D14    push        eax
 00716D15    mov         ecx,16
 00716D1A    mov         edx,2
 00716D1F    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716D25    call        TStringGrid.GetCells
 00716D2A    mov         eax,dword ptr [ebp-0B4]
 00716D30    mov         edx,dword ptr [edi]
 00716D32    call        @UStrEqual
>00716D37    je          00716D7C
 00716D39    lea         eax,[ebp-0B8]
 00716D3F    push        eax
 00716D40    mov         ecx,16
 00716D45    mov         edx,2
 00716D4A    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716D50    call        TStringGrid.GetCells
 00716D55    mov         eax,dword ptr [ebp-0B8]
 00716D5B    push        eax
 00716D5C    movsx       ecx,si
 00716D5F    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00716D64    mov         eax,dword ptr [eax]
 00716D66    mov         eax,dword ptr [eax+4A8]
 00716D6C    mov         eax,dword ptr [eax+2D4]
 00716D72    mov         edx,16
 00716D77    call        TStringGrid.SetCells
 00716D7C    lea         eax,[ebp-0BC]
 00716D82    push        eax
 00716D83    mov         ecx,17
 00716D88    mov         edx,2
 00716D8D    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716D93    call        TStringGrid.GetCells
 00716D98    mov         eax,dword ptr [ebp-0BC]
 00716D9E    mov         edx,dword ptr [edi]
 00716DA0    call        @UStrEqual
>00716DA5    je          00716DEA
 00716DA7    lea         eax,[ebp-0C0]
 00716DAD    push        eax
 00716DAE    mov         ecx,17
 00716DB3    mov         edx,2
 00716DB8    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716DBE    call        TStringGrid.GetCells
 00716DC3    mov         eax,dword ptr [ebp-0C0]
 00716DC9    push        eax
 00716DCA    movsx       ecx,si
 00716DCD    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00716DD2    mov         eax,dword ptr [eax]
 00716DD4    mov         eax,dword ptr [eax+4A8]
 00716DDA    mov         eax,dword ptr [eax+2D4]
 00716DE0    mov         edx,17
 00716DE5    call        TStringGrid.SetCells
 00716DEA    inc         word ptr [ebp-6]
 00716DEE    dec         word ptr [ebp-8]
>00716DF2    jne         00716424
 00716DF8    xor         eax,eax
 00716DFA    pop         edx
 00716DFB    pop         ecx
 00716DFC    pop         ecx
 00716DFD    mov         dword ptr fs:[eax],edx
 00716E00    push        716E1D
 00716E05    lea         eax,[ebp-0C0]
 00716E0B    mov         edx,2E
 00716E10    call        @UStrArrayClr
 00716E15    ret
>00716E16    jmp         @HandleFinally
>00716E1B    jmp         00716E05
 00716E1D    pop         edi
 00716E1E    pop         esi
 00716E1F    pop         ebx
 00716E20    mov         esp,ebp
 00716E22    pop         ebp
 00716E23    ret
*}
end;

//00716E24
procedure TAPFillDlg.GridClick(Sender:TObject);
begin
{*
 00716E24    push        ebx
 00716E25    push        esi
 00716E26    mov         ebx,eax
 00716E28    mov         esi,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716E2E    mov         eax,dword ptr [esi+2AC];TStringGrid.FDefaultRowHeight:Integer
 00716E34    dec         eax
>00716E35    je          00716E47
 00716E37    dec         eax
 00716E38    sub         eax,3
>00716E3B    jb          00716E5D
 00716E3D    sub         eax,0E
>00716E40    je          00716E5D
 00716E42    sub         eax,4
>00716E45    jne         00716E94
 00716E47    mov         edx,dword ptr [esi+2D4];TStringGrid.FOptions:TGridOptions
 00716E4D    or          edx,dword ptr ds:[716EBC];0x400 gvar_00716EBC
 00716E53    mov         eax,esi
 00716E55    call        TDrawGrid.SetOptions
 00716E5A    pop         esi
 00716E5B    pop         ebx
 00716E5C    ret
 00716E5D    mov         eax,[007C42B4];^gvar_007CA839
 00716E62    cmp         byte ptr [eax],0
>00716E65    je          00716E7C
 00716E67    mov         edx,dword ptr [esi+2D4];TStringGrid.FOptions:TGridOptions
 00716E6D    or          edx,dword ptr ds:[716EBC];0x400 gvar_00716EBC
 00716E73    mov         eax,esi
 00716E75    call        TDrawGrid.SetOptions
>00716E7A    jmp         00716EB6
 00716E7C    mov         edx,dword ptr ds:[716EBC];0x400 gvar_00716EBC
 00716E82    not         edx
 00716E84    and         edx,dword ptr [esi+2D4];TStringGrid.FOptions:TGridOptions
 00716E8A    mov         eax,esi
 00716E8C    call        TDrawGrid.SetOptions
 00716E91    pop         esi
 00716E92    pop         ebx
 00716E93    ret
 00716E94    mov         edx,dword ptr ds:[716EBC];0x400 gvar_00716EBC
 00716E9A    not         edx
 00716E9C    and         edx,dword ptr [esi+2D4];TStringGrid.FOptions:TGridOptions
 00716EA2    mov         eax,esi
 00716EA4    call        TDrawGrid.SetOptions
 00716EA9    xor         edx,edx
 00716EAB    mov         eax,dword ptr [ebx+3E4];TAPFillDlg.Grid:TStringGrid
 00716EB1    call        006C0D74
 00716EB6    pop         esi
 00716EB7    pop         ebx
 00716EB8    ret
*}
end;

//00716EC0
procedure sub_00716EC0(?:TAPFillDlg);
begin
{*
 00716EC0    push        ebp
 00716EC1    mov         ebp,esp
 00716EC3    add         esp,0FFFFFFF0
 00716EC6    push        ebx
 00716EC7    push        esi
 00716EC8    push        edi
 00716EC9    xor         edx,edx
 00716ECB    mov         dword ptr [ebp-0C],edx
 00716ECE    mov         dword ptr [ebp-10],edx
 00716ED1    mov         dword ptr [ebp-4],eax
 00716ED4    xor         eax,eax
 00716ED6    push        ebp
 00716ED7    push        717045
 00716EDC    push        dword ptr fs:[eax]
 00716EDF    mov         dword ptr fs:[eax],esp
 00716EE2    mov         word ptr [ebp-6],0
 00716EE8    mov         eax,dword ptr [ebp-4]
 00716EEB    mov         eax,dword ptr [eax+3DC];TAPFillDlg.udFirst:TUpDown
 00716EF1    call        TUpDown.GetPosition
 00716EF6    mov         ebx,eax
 00716EF8    add         ebx,8000
 00716EFE    cmp         ebx,0FFFF
>00716F04    jbe         00716F0B
 00716F06    call        @BoundErr
 00716F0B    add         ebx,0FFFF8000
 00716F11    mov         eax,dword ptr [ebp-4]
 00716F14    mov         eax,dword ptr [eax+3E0];TAPFillDlg.udLast:TUpDown
 00716F1A    call        TUpDown.GetPosition
 00716F1F    mov         esi,eax
 00716F21    add         esi,8000
 00716F27    cmp         esi,0FFFF
>00716F2D    jbe         00716F34
 00716F2F    call        @BoundErr
 00716F34    add         esi,0FFFF8000
 00716F3A    sub         si,bx
>00716F3D    jl          00716FFC
 00716F43    inc         esi
 00716F44    mov         eax,[007C4DB8];^gvar_00901F74:Integer
 00716F49    mov         eax,dword ptr [eax]
 00716F4B    dec         eax
>00716F4C    je          00716F55
 00716F4E    sub         eax,3
>00716F51    je          00716F87
>00716F53    jmp         00716FBA
 00716F55    cmp         bx,64
>00716F59    jle         00716F83
 00716F5B    movsx       edi,bx
 00716F5E    sub         edi,1
>00716F61    jno         00716F68
 00716F63    call        @IntOver
 00716F68    add         edi,8000
 00716F6E    cmp         edi,0FFFF
>00716F74    jbe         00716F7B
 00716F76    call        @BoundErr
 00716F7B    add         edi,0FFFF8000
>00716F81    jmp         00716FBC
 00716F83    mov         edi,ebx
>00716F85    jmp         00716FBC
 00716F87    cmp         bx,0A0
>00716F8C    jle         00716FB6
 00716F8E    movsx       edi,bx
 00716F91    sub         edi,29
>00716F94    jno         00716F9B
 00716F96    call        @IntOver
 00716F9B    add         edi,8000
 00716FA1    cmp         edi,0FFFF
>00716FA7    jbe         00716FAE
 00716FA9    call        @BoundErr
 00716FAE    add         edi,0FFFF8000
>00716FB4    jmp         00716FBC
 00716FB6    mov         edi,ebx
>00716FB8    jmp         00716FBC
 00716FBA    mov         edi,ebx
 00716FBC    mov         edx,edi
 00716FBE    mov         eax,dword ptr [ebp-4]
 00716FC1    call        00715864
 00716FC6    test        al,al
>00716FC8    je          00716FF2
 00716FCA    movsx       eax,word ptr [ebp-6]
 00716FCE    add         eax,1
>00716FD1    jno         00716FD8
 00716FD3    call        @IntOver
 00716FD8    add         eax,8000
 00716FDD    cmp         eax,0FFFF
>00716FE2    jbe         00716FE9
 00716FE4    call        @BoundErr
 00716FE9    add         eax,0FFFF8000
 00716FEE    mov         word ptr [ebp-6],ax
 00716FF2    inc         ebx
 00716FF3    dec         si
>00716FF6    jne         00716F44
 00716FFC    lea         edx,[ebp-10]
 00716FFF    movsx       eax,word ptr [ebp-6]
 00717003    call        IntToStr
 00717008    mov         ecx,dword ptr [ebp-10]
 0071700B    lea         eax,[ebp-0C]
 0071700E    mov         edx,dword ptr ds:[7C2F9C];^'Number of addresses, matching selection criteria: '
 00717014    call        @UStrCat3
 00717019    mov         edx,dword ptr [ebp-0C]
 0071701C    mov         eax,dword ptr [ebp-4]
 0071701F    mov         eax,dword ptr [eax+3D0];TAPFillDlg.lbNumberOfMatching:TLabel
 00717025    call        TControl.SetText
 0071702A    xor         eax,eax
 0071702C    pop         edx
 0071702D    pop         ecx
 0071702E    pop         ecx
 0071702F    mov         dword ptr fs:[eax],edx
 00717032    push        71704C
 00717037    lea         eax,[ebp-10]
 0071703A    mov         edx,2
 0071703F    call        @UStrArrayClr
 00717044    ret
>00717045    jmp         @HandleFinally
>0071704A    jmp         00717037
 0071704C    pop         edi
 0071704D    pop         esi
 0071704E    pop         ebx
 0071704F    mov         esp,ebp
 00717051    pop         ebp
 00717052    ret
*}
end;

//00717054
procedure TAPFillDlg.btnResetCol1Click(Sender:TObject);
begin
{*
 00717054    push        ebx
 00717055    push        esi
 00717056    mov         esi,eax
 00717058    mov         bl,1
 0071705A    mov         eax,[007C2F94];^'Don''t care'
 0071705F    push        eax
 00717060    movzx       ecx,bl
 00717063    mov         edx,1
 00717068    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0071706E    call        TStringGrid.SetCells
 00717073    inc         ebx
 00717074    cmp         bl,18
>00717077    jne         0071705A
 00717079    mov         eax,esi
 0071707B    call        00716EC0
 00717080    pop         esi
 00717081    pop         ebx
 00717082    ret
*}
end;

//00717084
procedure TAPFillDlg.btnResetCol2Click(Sender:TObject);
begin
{*
 00717084    push        ebx
 00717085    push        esi
 00717086    mov         esi,eax
 00717088    mov         bl,1
 0071708A    mov         eax,[007C2F98];^'Don''t change'
 0071708F    push        eax
 00717090    movzx       ecx,bl
 00717093    mov         edx,2
 00717098    mov         eax,dword ptr [esi+3E4];TAPFillDlg.Grid:TStringGrid
 0071709E    call        TStringGrid.SetCells
 007170A3    inc         ebx
 007170A4    cmp         bl,18
>007170A7    jne         0071708A
 007170A9    pop         esi
 007170AA    pop         ebx
 007170AB    ret
*}
end;

//007170AC
procedure TAPFillDlg.udFirstClick(Sender:TObject);
begin
{*
 007170AC    push        ebx
 007170AD    push        esi
 007170AE    mov         ebx,eax
 007170B0    mov         eax,dword ptr [ebx+3E0];TAPFillDlg.udLast:TUpDown
 007170B6    call        TUpDown.GetPosition
 007170BB    mov         esi,eax
 007170BD    mov         eax,dword ptr [ebx+3DC];TAPFillDlg.udFirst:TUpDown
 007170C3    call        TUpDown.GetPosition
 007170C8    cmp         esi,eax
>007170CA    jge         007170E4
 007170CC    mov         eax,dword ptr [ebx+3DC];TAPFillDlg.udFirst:TUpDown
 007170D2    call        TUpDown.GetPosition
 007170D7    mov         edx,eax
 007170D9    mov         eax,dword ptr [ebx+3E0];TAPFillDlg.udLast:TUpDown
 007170DF    call        TUpDown.SetPosition
 007170E4    mov         eax,ebx
 007170E6    call        00716EC0
 007170EB    pop         esi
 007170EC    pop         ebx
 007170ED    ret
*}
end;

//007170F0
procedure TAPFillDlg.udLastClick(Sender:TObject);
begin
{*
 007170F0    push        ebx
 007170F1    push        esi
 007170F2    mov         ebx,eax
 007170F4    mov         eax,dword ptr [ebx+3E0];TAPFillDlg.udLast:TUpDown
 007170FA    call        TUpDown.GetPosition
 007170FF    mov         esi,eax
 00717101    mov         eax,dword ptr [ebx+3DC];TAPFillDlg.udFirst:TUpDown
 00717107    call        TUpDown.GetPosition
 0071710C    cmp         esi,eax
>0071710E    jge         00717128
 00717110    mov         eax,dword ptr [ebx+3E0];TAPFillDlg.udLast:TUpDown
 00717116    call        TUpDown.GetPosition
 0071711B    mov         edx,eax
 0071711D    mov         eax,dword ptr [ebx+3DC];TAPFillDlg.udFirst:TUpDown
 00717123    call        TUpDown.SetPosition
 00717128    mov         eax,ebx
 0071712A    call        00716EC0
 0071712F    pop         esi
 00717130    pop         ebx
 00717131    ret
*}
end;

//00717134
procedure TAPFillDlg.RangeSelectClick(Sender:TObject);
begin
{*
 00717134    push        ebp
 00717135    mov         ebp,esp
 00717137    push        0
 00717139    push        0
 0071713B    push        ebx
 0071713C    mov         ebx,eax
 0071713E    xor         eax,eax
 00717140    push        ebp
 00717141    push        7172C2
 00717146    push        dword ptr fs:[eax]
 00717149    mov         dword ptr fs:[eax],esp
 0071714C    mov         eax,dword ptr [ebx+3F4];TAPFillDlg.rbRangeSelectHigh:TRadioButton
 00717152    mov         edx,dword ptr [eax]
 00717154    call        dword ptr [edx+108];TRadioButton.GetChecked
 0071715A    and         eax,7F
 0071715D    mov         edx,dword ptr ds:[7C4DB8];^gvar_00901F74:Integer
 00717163    mov         edx,dword ptr [edx]
 00717165    dec         edx
 00717166    cmp         edx,5
>00717169    jbe         00717170
 0071716B    call        @BoundErr
 00717170    inc         edx
 00717171    lea         edx,[edx*8+7C2EDC]
 00717178    movsx       edx,word ptr [edx+eax*4-8]
 0071717D    mov         eax,dword ptr [ebx+3DC];TAPFillDlg.udFirst:TUpDown
 00717183    call        TUpDown.SetMin
 00717188    mov         eax,dword ptr [ebx+3F4];TAPFillDlg.rbRangeSelectHigh:TRadioButton
 0071718E    mov         edx,dword ptr [eax]
 00717190    call        dword ptr [edx+108];TRadioButton.GetChecked
 00717196    and         eax,7F
 00717199    mov         edx,dword ptr ds:[7C4DB8];^gvar_00901F74:Integer
 0071719F    mov         edx,dword ptr [edx]
 007171A1    dec         edx
 007171A2    cmp         edx,5
>007171A5    jbe         007171AC
 007171A7    call        @BoundErr
 007171AC    inc         edx
 007171AD    lea         edx,[edx*8+7C2EDC]
 007171B4    movsx       edx,word ptr [edx+eax*4-6]
 007171B9    mov         eax,dword ptr [ebx+3DC];TAPFillDlg.udFirst:TUpDown
 007171BF    call        TUpDown.SetMax
 007171C4    mov         eax,dword ptr [ebx+3F4];TAPFillDlg.rbRangeSelectHigh:TRadioButton
 007171CA    mov         edx,dword ptr [eax]
 007171CC    call        dword ptr [edx+108];TRadioButton.GetChecked
 007171D2    and         eax,7F
 007171D5    mov         edx,dword ptr ds:[7C4DB8];^gvar_00901F74:Integer
 007171DB    mov         edx,dword ptr [edx]
 007171DD    dec         edx
 007171DE    cmp         edx,5
>007171E1    jbe         007171E8
 007171E3    call        @BoundErr
 007171E8    inc         edx
 007171E9    lea         edx,[edx*8+7C2EDC]
 007171F0    movsx       edx,word ptr [edx+eax*4-8]
 007171F5    mov         eax,dword ptr [ebx+3E0];TAPFillDlg.udLast:TUpDown
 007171FB    call        TUpDown.SetMin
 00717200    mov         eax,dword ptr [ebx+3F4];TAPFillDlg.rbRangeSelectHigh:TRadioButton
 00717206    mov         edx,dword ptr [eax]
 00717208    call        dword ptr [edx+108];TRadioButton.GetChecked
 0071720E    and         eax,7F
 00717211    mov         edx,dword ptr ds:[7C4DB8];^gvar_00901F74:Integer
 00717217    mov         edx,dword ptr [edx]
 00717219    dec         edx
 0071721A    cmp         edx,5
>0071721D    jbe         00717224
 0071721F    call        @BoundErr
 00717224    inc         edx
 00717225    lea         edx,[edx*8+7C2EDC]
 0071722C    movsx       edx,word ptr [edx+eax*4-6]
 00717231    mov         eax,dword ptr [ebx+3E0];TAPFillDlg.udLast:TUpDown
 00717237    call        TUpDown.SetMax
 0071723C    mov         eax,dword ptr [ebx+3DC];TAPFillDlg.udFirst:TUpDown
 00717242    mov         edx,dword ptr [eax+298];TUpDown.FMin:Integer
 00717248    call        TUpDown.SetPosition
 0071724D    mov         eax,dword ptr [ebx+3E0];TAPFillDlg.udLast:TUpDown
 00717253    mov         edx,dword ptr [eax+298];TUpDown.FMin:Integer
 00717259    call        TUpDown.SetPosition
 0071725E    mov         eax,dword ptr [ebx+3DC];TAPFillDlg.udFirst:TUpDown
 00717264    call        TUpDown.GetPosition
 00717269    lea         edx,[ebp-4]
 0071726C    call        IntToStr
 00717271    mov         edx,dword ptr [ebp-4]
 00717274    mov         eax,dword ptr [ebx+3D4];TAPFillDlg.edFirstAddress:TEdit
 0071727A    call        TControl.SetText
 0071727F    mov         eax,dword ptr [ebx+3E0];TAPFillDlg.udLast:TUpDown
 00717285    call        TUpDown.GetPosition
 0071728A    lea         edx,[ebp-8]
 0071728D    call        IntToStr
 00717292    mov         edx,dword ptr [ebp-8]
 00717295    mov         eax,dword ptr [ebx+3D8];TAPFillDlg.edLastAddress:TEdit
 0071729B    call        TControl.SetText
 007172A0    mov         eax,ebx
 007172A2    call        00716EC0
 007172A7    xor         eax,eax
 007172A9    pop         edx
 007172AA    pop         ecx
 007172AB    pop         ecx
 007172AC    mov         dword ptr fs:[eax],edx
 007172AF    push        7172C9
 007172B4    lea         eax,[ebp-8]
 007172B7    mov         edx,2
 007172BC    call        @UStrArrayClr
 007172C1    ret
>007172C2    jmp         @HandleFinally
>007172C7    jmp         007172B4
 007172C9    pop         ebx
 007172CA    pop         ecx
 007172CB    pop         ecx
 007172CC    pop         ebp
 007172CD    ret
*}
end;

Initialization
Finalization
//007172D0
{*
 007172D0    push        ebp
 007172D1    mov         ebp,esp
 007172D3    xor         eax,eax
 007172D5    push        ebp
 007172D6    push        71747D
 007172DB    push        dword ptr fs:[eax]
 007172DE    mov         dword ptr fs:[eax],esp
 007172E1    inc         dword ptr ds:[901F70]
>007172E7    jne         0071746F
 007172ED    mov         eax,901F6C;gvar_00901F6C:?
 007172F2    mov         edx,dword ptr ds:[70D704];:3
 007172F8    call        @DynArrayClear
 007172FD    mov         eax,7C2F0C;^'Lower address range (%.3d...%.3d)'
 00717302    call        @UStrClr
 00717307    mov         eax,7C2F10;^'Higher address range (%.3d...%.3d)'
 0071730C    call        @UStrClr
 00717311    mov         eax,7C2F14;^'Property'
 00717316    call        @UStrClr
 0071731B    mov         eax,7C2F18;^'Selection criteria'
 00717320    call        @UStrClr
 00717325    mov         eax,7C2F1C;^'New value'
 0071732A    call        @UStrClr
 0071732F    mov         eax,7C2F20;^'Type of device'
 00717334    call        @UStrClr
 00717339    mov         eax,7C2F24;^'Input function'
 0071733E    call        @UStrClr
 00717343    mov         eax,7C2F28;^'Inp. Short circ. monitoring'
 00717348    call        @UStrClr
 0071734D    mov         eax,7C2F2C;^'Detection zone'
 00717352    call        @UStrClr
 00717357    mov         eax,7C2F30;^'Control A'
 0071735C    call        @UStrClr
 00717361    mov         eax,7C2F34;^'Control B'
 00717366    call        @UStrClr
 0071736B    mov         eax,7C2F38;^'Control B2'
 00717370    call        @UStrClr
 00717375    mov         eax,7C2F3C;^'Fire alarm threshold'
 0071737A    call        @UStrClr
 0071737F    mov         eax,7C2F40;^'Prealarm threshold'
 00717384    call        @UStrClr
 00717389    mov         eax,7C2F44;^'Daytime fire threshold'
 0071738E    call        @UStrClr
 00717393    mov         eax,7C2F48;^'Daytime prealarm threshold'
 00717398    call        @UStrClr
 0071739D    mov         eax,7C2F4C;^'Environment'
 007173A2    call        @UStrClr
 007173A7    mov         eax,7C2F50;^'Alarm mode'
 007173AC    call        @UStrClr
 007173B1    mov         eax,7C2F54;^'Sounder volume'
 007173B6    call        @UStrClr
 007173BB    mov         eax,7C2F58;^'Input signal delay'
 007173C0    call        @UStrClr
 007173C5    mov         eax,7C2F5C;^'Input signal attenuation'
 007173CA    call        @UStrClr
 007173CF    mov         eax,7C2F60;^'Disabled by zone disablement'
 007173D4    call        @UStrClr
 007173D9    mov         eax,7C2F64;^'Daymode effect'
 007173DE    call        @UStrClr
 007173E3    mov         eax,7C2F68;^'Control groups'
 007173E8    call        @UStrClr
 007173ED    mov         eax,7C2F6C;^'Output function'
 007173F2    call        @UStrClr
 007173F7    mov         eax,7C2F70;^'Output 2 function'
 007173FC    call        @UStrClr
 00717401    mov         eax,7C2F74;^'Output OR''d with external logic'
 00717406    call        @UStrClr
 0071740B    mov         eax,7C2F78;^'Text'
 00717410    call        @UStrClr
 00717415    mov         eax,7C2F7C;^'EOL Resistor'
 0071741A    call        @UStrClr
 0071741F    mov         eax,7C2F80;^'Normally closed'
 00717424    call        @UStrClr
 00717429    mov         eax,7C2F84;^'Short is alarm'
 0071742E    call        @UStrClr
 00717433    mov         eax,7C2F88;^'Break monitored'
 00717438    call        @UStrClr
 0071743D    mov         eax,7C2F8C;^'Exi classified'
 00717442    call        @UStrClr
 00717447    mov         eax,7C2F90;^'Double knock'
 0071744C    call        @UStrClr
 00717451    mov         eax,7C2F94;^'Don''t care'
 00717456    call        @UStrClr
 0071745B    mov         eax,7C2F98;^'Don''t change'
 00717460    call        @UStrClr
 00717465    mov         eax,7C2F9C;^'Number of addresses, matching selection criteria: '
 0071746A    call        @UStrClr
 0071746F    xor         eax,eax
 00717471    pop         edx
 00717472    pop         ecx
 00717473    pop         ecx
 00717474    mov         dword ptr fs:[eax],edx
 00717477    push        717484
 0071747C    ret
>0071747D    jmp         @HandleFinally
>00717482    jmp         0071747C
 00717484    pop         ebp
 00717485    ret
*}
end.