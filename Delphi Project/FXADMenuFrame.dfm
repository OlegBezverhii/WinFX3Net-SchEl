object FXADMenuFrame: TFXADMenuFrame
  Left = 0
  Top = 0
  Width = 497
  Height = 366
  TabOrder = 0
  TabStop = True
  Visible = False
  object SysTypeMenu: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    AutoPopup = False
    OwnerDraw = True
    Left = 240
    Top = 8
    object Reset1: TMenuItem
      Tag = 250
      Caption = '<Reset>'
      Enabled = False
      Visible = False
      OnClick = SysTypeClick
    end
    object miSysNotInUse: TMenuItem
      Caption = '0 - Not Used'
      OnClick = SysTypeClick
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
    end
    object miSysIonSensor: TMenuItem
      Tag = 1
      Caption = '1 - Ionisation sensor'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSysIonList: TMenuItem
        Tag = 1
        Caption = 'miSysIonList'
        OnClick = SysTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSysOptSensor: TMenuItem
      Tag = 2
      Caption = '2 - Optical sensor'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSysOptNormalLed: TMenuItem
        Tag = 512
        Caption = '0 - Normal Remote LED Control'
        OnClick = SysDetSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miSysOptSirenControl: TMenuItem
        Tag = 513
        Caption = '1 - Sirene Control'
        OnClick = SysDetSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSysHeatSensor: TMenuItem
      Tag = 3
      Caption = '3 - Thermal sensor'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSysHeatNormalLed: TMenuItem
        Tag = 768
        Caption = '0 - Normal Remote LED Control'
        OnClick = SysDetSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miSysHeatSirenControl: TMenuItem
        Tag = 769
        Caption = '1 - Sirene Control'
        OnClick = SysDetSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSysOmniSensor: TMenuItem
      Tag = 8
      Caption = '4 - OMNI'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSysOmniList: TMenuItem
        Tag = 8
        Caption = 'miSysOmniList'
        OnClick = SysTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSysLaserLZR1: TMenuItem
      Tag = 9
      Caption = '9 - Laser LZR-1'
      Enabled = False
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSysLaserLZR1List: TMenuItem
        Tag = 9
        Caption = 'miSysLaserLZR1List'
        OnClick = SysTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSysLaser7251: TMenuItem
      Tag = 10
      Caption = 'A - Laser 7251'
      Enabled = False
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSysLaser7251List: TMenuItem
        Tag = 10
        Caption = 'miSysLaser7251List'
        OnClick = SysTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSysMultiSensor: TMenuItem
      Tag = 11
      Caption = 'B - Multicriteria'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSysMultiNormalLed: TMenuItem
        Tag = 2816
        Caption = '0 - Normal Remote LED Control'
        OnClick = SysDetSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miSysMultiSirenControl: TMenuItem
        Tag = 2817
        Caption = '1 - Sirene Control'
        OnClick = SysDetSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSysPtirSensor: TMenuItem
      Tag = 14
      Caption = 'D - Three criteria'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSysPtirNormalLed: TMenuItem
        Tag = 3584
        Caption = '0 - Normal Remote LED Control'
        OnClick = SysDetSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miSysPtirSirenControl: TMenuItem
        Tag = 3585
        Caption = '1 - Sirene Control'
        OnClick = SysDetSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSysCoptirSensor: TMenuItem
      Tag = 13
      Caption = 'E - Four criteria'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSysCoptirNormalLed: TMenuItem
        Tag = 3328
        Caption = '0 - Normal Remote LED Control'
        OnClick = SysDetSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miSysCoptirSirenControl: TMenuItem
        Tag = 3329
        Caption = '1 - Sirene Control'
        OnClick = SysDetSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSysBeamSensor: TMenuItem
      Tag = 15
      Caption = 'F - Beam sensor'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSysBeamList: TMenuItem
        Tag = 15
        Caption = 'miSysBeamList'
        OnClick = SysTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object miSysMonitorModule: TMenuItem
      Tag = 4
      Caption = '5 - Monitor Module'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSysMonitorList: TMenuItem
        Tag = 4
        Caption = 'miSysMonitorList'
        OnClick = SysTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSysControlModule: TMenuItem
      Tag = 5
      Caption = '6 - Control Module'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSysControlList: TMenuItem
        Tag = 5
        Caption = 'miSysControlList'
        OnClick = SysTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object miSysConvZoneModule: TMenuItem
      Tag = 6
      Caption = '7 - Conventional Zone Module'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSysConvZoneList: TMenuItem
        Tag = 6
        Caption = 'miSysConvZoneList'
        OnClick = SysTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object miSysAnyType: TMenuItem
      Tag = 7
      Caption = '8 - Any Type'
      OnClick = SysTypeClick
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
    end
    object miSysAnyTypeVirtual: TMenuItem
      Tag = 12
      Caption = 'C - Any Type (Virtual)'
      OnClick = SysTypeClick
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
    end
  end
  object ComInputModeMenu: TPopupMenu
    AutoPopup = False
    Left = 352
    Top = 8
    object Reset8: TMenuItem
      Tag = 250
      Caption = '<Reset>'
      Enabled = False
      Visible = False
      OnClick = ComModeClick
    end
    object miModeNormal: TMenuItem
      Caption = '0 - Normal'
      OnClick = ComModeClick
    end
    object miModeDelayed: TMenuItem
      Tag = 1
      Caption = '1 - Delayed Output'
      OnClick = ComModeClick
    end
    object miModeCoincidence: TMenuItem
      Tag = 2
      Caption = '2 - Coincidence'
      OnClick = ComModeClick
    end
    object miModePrewarning: TMenuItem
      Tag = 3
      Caption = '3 - Prewarning'
      OnClick = ComModeClick
    end
    object miModeLocalAlarm: TMenuItem
      Tag = 4
      Caption = '4 - Local Alarm'
      OnClick = ComModeClick
    end
  end
  object ComYesNoMenu: TPopupMenu
    Left = 448
    Top = 8
    object Reset5: TMenuItem
      Tag = 250
      Caption = '<Reset>'
      Enabled = False
      Visible = False
      OnClick = ComYesNoClick
    end
    object miNo: TMenuItem
      Caption = 'N - No'
      OnClick = ComYesNoClick
    end
    object miYes: TMenuItem
      Tag = 1
      Caption = 'Y - Yes'
      OnClick = ComYesNoClick
    end
  end
  object ComMonitoringMenu: TPopupMenu
    Left = 352
    Top = 56
    object Reset7: TMenuItem
      Tag = 250
      Caption = '<Reset>'
      Enabled = False
      Visible = False
      OnClick = ComMonitoringClick
    end
    object miMonitored: TMenuItem
      Caption = 'M - Monitored'
      OnClick = ComMonitoringClick
    end
    object miNotMonitored: TMenuItem
      Tag = 1
      Caption = 'N - Not Monitored'
      OnClick = ComMonitoringClick
    end
    object miSirenControl: TMenuItem
      Tag = 2
      Caption = 'S - Siren control'
      OnClick = ComMonitoringClick
    end
  end
  object ComLevelMenu: TPopupMenu
    Left = 240
    Top = 56
    object Reset9: TMenuItem
      Tag = 250
      Caption = '<Reset>'
      Enabled = False
      Visible = False
      OnClick = ComLevelClick
    end
    object miCommonLevel1: TMenuItem
      Tag = 1
      Caption = '1 - Level 1 - most sensitive'
      OnClick = ComLevelClick
    end
    object miCommonLevel2: TMenuItem
      Tag = 2
      Caption = '2 - Level 2'
      OnClick = ComLevelClick
    end
    object miCommonLevel3: TMenuItem
      Tag = 3
      Caption = '3 - Level 3'
      OnClick = ComLevelClick
    end
    object miCommonLevel4: TMenuItem
      Tag = 4
      Caption = '4 - Level 4'
      OnClick = ComLevelClick
    end
    object miCommonLevel5: TMenuItem
      Tag = 5
      Caption = '5 - Level 5 - Least sensitive'
      OnClick = ComLevelClick
    end
  end
  object LaserLevelMenu: TPopupMenu
    Left = 240
    Top = 152
    object Reset10: TMenuItem
      Tag = 250
      Caption = '<Reset>'
      Enabled = False
      Visible = False
      OnClick = ComLevelClick
    end
    object miLaserLevel1: TMenuItem
      Tag = 1
      Caption = '1 - Level 1 - most sensitive'
      OnClick = ComLevelClick
    end
    object miLaserLevel2: TMenuItem
      Tag = 2
      Caption = '2 - Level 2'
      OnClick = ComLevelClick
    end
    object miLaserLevel3: TMenuItem
      Tag = 3
      Caption = '3 - Level 3'
      OnClick = ComLevelClick
    end
    object miLaserLevel4: TMenuItem
      Tag = 4
      Caption = '4 - Level 4'
      OnClick = ComLevelClick
    end
    object miLaserLevel5: TMenuItem
      Tag = 5
      Caption = '5 - Level 5'
      OnClick = ComLevelClick
    end
    object miLaserLevel6: TMenuItem
      Tag = 6
      Caption = '6 - Level 6'
      OnClick = ComLevelClick
    end
    object miLaserLevel7: TMenuItem
      Tag = 7
      Caption = '7 - Level 7'
      OnClick = ComLevelClick
    end
    object miLaserLevel8: TMenuItem
      Tag = 8
      Caption = '8 - Level 8'
      OnClick = ComLevelClick
    end
    object miLaserLevel9: TMenuItem
      Tag = 9
      Caption = '9 - Level 9'
      OnClick = ComLevelClick
    end
    object miLaser2Level9: TMenuItem
      Tag = 9
      Caption = '9 - Level 9 - least sensitive'
      OnClick = ComLevelClick
    end
    object miLaserLevel10: TMenuItem
      Tag = 10
      Caption = '0 - Level 10 - least sensitive'
      OnClick = ComLevelClick
    end
  end
  object SysMultiLevelMenu: TPopupMenu
    Left = 240
    Top = 104
    object Reset12: TMenuItem
      Tag = 250
      Caption = '<Reset>'
      Enabled = False
      Visible = False
      OnClick = ComLevelClick
    end
    object miSysMultiLevel1: TMenuItem
      Tag = 1
      Caption = '1 - Level 1 - most sensitive'
      OnClick = ComLevelClick
    end
    object miSysMultiLevel2: TMenuItem
      Tag = 2
      Caption = '2 - Level 2'
      OnClick = ComLevelClick
    end
    object miSysMultiLevel3: TMenuItem
      Tag = 3
      Caption = '3 - Level 3'
      OnClick = ComLevelClick
    end
    object miSysMultiLevel4: TMenuItem
      Tag = 4
      Caption = '4 - Level 4'
      OnClick = ComLevelClick
    end
    object miSysMultiLevel5: TMenuItem
      Tag = 5
      Caption = '5 - Level 5'
      OnClick = ComLevelClick
    end
    object miSysMultiLevel6: TMenuItem
      Tag = 6
      Caption = '6 - Level 6 - only thermal detection'
      OnClick = ComLevelClick
    end
  end
  object ComInDelayMenu: TPopupMenu
    Left = 352
    Top = 152
    object Reset2: TMenuItem
      Tag = 250
      Caption = '<Reset>'
      Enabled = False
      Visible = False
      OnClick = ComInDelayClick
    end
    object miNodelay: TMenuItem
      Caption = '0 - No delay'
      OnClick = ComInDelayClick
    end
    object mi10seconds: TMenuItem
      Tag = 1
      Caption = '1 - 10 seconds'
      OnClick = ComInDelayClick
    end
    object mi20seconds: TMenuItem
      Tag = 2
      Caption = '2 - 20 seconds'
      OnClick = ComInDelayClick
    end
    object mi30seconds: TMenuItem
      Tag = 3
      Caption = '3 - 30 seconds'
      OnClick = ComInDelayClick
    end
    object mi40seconds: TMenuItem
      Tag = 4
      Caption = '4 - 40 seconds'
      OnClick = ComInDelayClick
    end
    object mi50seconds: TMenuItem
      Tag = 5
      Caption = '5 - 50 seconds'
      OnClick = ComInDelayClick
    end
    object mi60seconds: TMenuItem
      Tag = 6
      Caption = '6 - 60 seconds'
      OnClick = ComInDelayClick
    end
  end
  object ComInFiltMenu: TPopupMenu
    Left = 352
    Top = 200
    object Reset3: TMenuItem
      Tag = 250
      Caption = '<Reset>'
      Enabled = False
      Visible = False
      OnClick = ComInFilterClick
    end
    object miNoFilter: TMenuItem
      Caption = '0 - No filter'
      OnClick = ComInFilterClick
    end
    object miFilter1: TMenuItem
      Tag = 1
      Caption = '1 - Factor 1'
      OnClick = ComInFilterClick
    end
    object miFilter2: TMenuItem
      Tag = 2
      Caption = '2 - Factor 2'
      OnClick = ComInFilterClick
    end
    object miFilter3: TMenuItem
      Tag = 3
      Caption = '3 - Factor 3'
      OnClick = ComInFilterClick
    end
    object miFilter4: TMenuItem
      Tag = 4
      Caption = '4 - Factor 4'
      OnClick = ComInFilterClick
    end
  end
  object ComDayModeMenu: TPopupMenu
    Left = 352
    Top = 248
    object Reset4: TMenuItem
      Tag = 250
      Caption = '<Reset>'
      Enabled = False
      Visible = False
      OnClick = ComDayModeClick
    end
    object miDayNoEffect: TMenuItem
      Caption = '0 - Not affected by day mode'
      OnClick = ComDayModeClick
    end
    object miDayThresholds: TMenuItem
      Tag = 1
      Caption = '1 - Uses day mode thresholds'
      OnClick = ComDayModeClick
    end
    object miDayDisabled: TMenuItem
      Tag = 2
      Caption = '2 - Disabled during day mode'
      OnClick = ComDayModeClick
    end
    object miDayInpDisabled: TMenuItem
      Tag = 3
      Caption = '3 - Input only disabled during day mode'
      OnClick = ComDayModeClick
    end
  end
  object CnvEOLMenu: TPopupMenu
    Left = 240
    Top = 304
    object Reset14: TMenuItem
      Tag = 250
      Caption = '<Reset>'
      Enabled = False
      Visible = False
      OnClick = CnvEolClick
    end
    object miEOL4k7R1: TMenuItem
      Caption = '0 - 4k7 EOL resistor'
      OnClick = CnvEolClick
    end
    object miEOL2k9R1: TMenuItem
      Tag = 1
      Caption = '1 - 2k9 EOL resistor'
      OnClick = CnvEolClick
    end
  end
  object ApoTypeMenu: TPopupMenu
    AutoPopup = False
    OwnerDraw = True
    Left = 144
    Top = 8
    object Reset15: TMenuItem
      Tag = 250
      Caption = '<Reset>'
      Enabled = False
      Visible = False
      OnClick = ApoTypeClick
    end
    object miApoNotUsed: TMenuItem
      Caption = '0 - Not Used'
      OnClick = ApoTypeClick
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
    end
    object miApoIon: TMenuItem
      Tag = 1
      Caption = '1 - Ionisation sensor'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miApoIonIntellia: TMenuItem
        Tag = 256
        Caption = '0 - Intellia'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoIonDiscovery: TMenuItem
        Tag = 257
        Caption = '1 - Discovery'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoIonXP95: TMenuItem
        Tag = 258
        Caption = '2 - XP95'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoIonS90: TMenuItem
        Tag = 259
        Caption = '3 - Series 90'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoIonAny: TMenuItem
        Tag = 260
        Caption = '4 - Any'
        Enabled = False
        Visible = False
        OnClick = ApoSubTypeClick
      end
    end
    object miApoOpt: TMenuItem
      Tag = 2
      Caption = '2 - Optical sensor'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miApoOptIntellia: TMenuItem
        Tag = 512
        Caption = '0 - Intellia'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoOptDiscovery: TMenuItem
        Tag = 513
        Caption = '1 - Discovery'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoOptXP95: TMenuItem
        Tag = 514
        Caption = '2 - XP95'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoOptS90: TMenuItem
        Tag = 515
        Caption = '3 - Series 90'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoOptExp: TMenuItem
        Tag = 516
        Caption = '4 - Wireless'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miApoHeat: TMenuItem
      Tag = 3
      Caption = '3 - Thermal sensor'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miApoHeatIntellia: TMenuItem
        Tag = 768
        Caption = '0 - Intellia'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoHeatDiscovery: TMenuItem
        Tag = 769
        Caption = '1 - Discovery'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoHeatXP95: TMenuItem
        Tag = 770
        Caption = '2 - XP95'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoHeatS90: TMenuItem
        Tag = 771
        Caption = '3 - Series 90'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoHeatExp: TMenuItem
        Tag = 772
        Caption = '4 - Wireless'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miApoHighHeat: TMenuItem
      Tag = 4
      Caption = '4 - High temperature (XP95)'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miApoHighHeatIntellia: TMenuItem
        Tag = 1024
        Caption = '0 - Intellia'
        Enabled = False
        Visible = False
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoHighHeatDiscovery: TMenuItem
        Tag = 1025
        Caption = '1 - Discovery'
        Enabled = False
        Visible = False
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoHighHeatXP95: TMenuItem
        Tag = 1026
        Caption = '2 - XP95'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoHighHeatS90: TMenuItem
        Tag = 1027
        Caption = '3 - S90'
        Enabled = False
        Visible = False
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoHighHeatExp: TMenuItem
        Tag = 1028
        Caption = '4 - Wireless'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miApoMulti: TMenuItem
      Tag = 5
      Caption = '5 - Multicriteria'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miApoMultiIntellia: TMenuItem
        Tag = 1280
        Caption = '0 - Intellia'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoMultiDiscovery: TMenuItem
        Tag = 1281
        Caption = '1 - Discovery'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoMultiXP95: TMenuItem
        Tag = 1282
        Caption = '2 - XP95'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoMultiS90: TMenuItem
        Tag = 1283
        Caption = '3 - S90'
        Enabled = False
        Visible = False
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoMultiExp: TMenuItem
        Tag = 1284
        Caption = '4 - Wireless'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object ApoTypeN1: TMenuItem
      Caption = '-'
    end
    object miApoCO: TMenuItem
      Tag = 6
      Caption = '6 - CO sensor'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miApoCOIntellia: TMenuItem
        Tag = 1536
        Caption = '0 - Intellia'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoCODiscovery: TMenuItem
        Tag = 1537
        Caption = '1 - Discovery'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miApoCoHeat: TMenuItem
      Tag = 28
      Caption = 'P - CO-Heat sensor'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miApoCoHeatIntellia: TMenuItem
        Tag = 7168
        Caption = '0 - Intellia'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoCoHeatDiscovery: TMenuItem
        Tag = 7169
        Caption = '1 - Discovery'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object ApoTypeN2: TMenuItem
      Caption = '-'
    end
    object miApoBeam: TMenuItem
      Tag = 7
      Caption = '7 - Beam detector'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miApoBeamTypes: TMenuItem
        Tag = 7
        Caption = 'Beam detector'
        OnClick = ApoTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miApoFlame: TMenuItem
      Tag = 8
      Caption = '8 - Flame detector'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miApoFlameTypes: TMenuItem
        Tag = 8
        Caption = 'Flame detector'
        OnClick = ApoTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object ApoAnyType1: TMenuItem
      Tag = 9
      Caption = '9 - Any Type'
      OnClick = ApoTypeClick
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
    end
    object ApoAnyTypeVirtual1: TMenuItem
      Tag = 24
      Caption = 'O - Any Type (Virtual)'
      OnClick = ApoTypeClick
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
    end
    object ApoTypeN3: TMenuItem
      Caption = '-'
    end
    object ApoConvZone1: TMenuItem
      Tag = 10
      Caption = 'A - Conventional Zone module'
      OnClick = ApoTypeClick
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
    end
    object ApoTypeN4: TMenuItem
      Caption = '-'
    end
    object miApoMCP: TMenuItem
      Tag = 11
      Caption = 'B - Manual call point'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miApoMCPIntellia: TMenuItem
        Tag = 2816
        Caption = '0 - Intellia'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoMCPDiscovery: TMenuItem
        Tag = 2817
        Caption = '1 - Discovery'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoMCPXP95: TMenuItem
        Tag = 2818
        Caption = '2 - XP95'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoMCPS90: TMenuItem
        Tag = 2819
        Caption = '3 - S90'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoMCPExp: TMenuItem
        Tag = 2820
        Caption = '4 - Wireless'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miApoSwMonInt: TMenuItem
      Tag = 12
      Caption = 'C - Switch mon. w. interrupt'
      OnClick = ApoTypeClick
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
    end
    object ApoTypeN5: TMenuItem
      Caption = '-'
    end
    object miApoSwMonitor: TMenuItem
      Tag = 13
      Caption = 'D - Switch monitor'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miApoSwMonitorTypes: TMenuItem
        Tag = 13
        Caption = 'Switch monitor'
        OnClick = ApoTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object ApoSwMonPlus1: TMenuItem
      Tag = 14
      Caption = 'E - Switch monitor plus'
      Enabled = False
      Visible = False
      OnClick = ApoTypeClick
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
    end
    object ApoSwMonMini1: TMenuItem
      Tag = 15
      Caption = 'F - Switch monitor mini'
      Enabled = False
      Visible = False
      OnClick = ApoTypeClick
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
    end
    object ApoTypeN6: TMenuItem
      Caption = '-'
    end
    object ApoIO011: TMenuItem
      Tag = 16
      Caption = 'G - IO, 1 output'
      Enabled = False
      Visible = False
      OnClick = ApoTypeClick
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
    end
    object ApoIO11Mains1: TMenuItem
      Tag = 17
      Caption = 'H - IO, 1 input 1 output mains'
      Enabled = False
      Visible = False
      OnClick = ApoTypeClick
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
    end
    object ApoIO211: TMenuItem
      Tag = 18
      Caption = 'I - IO, 2 inputs 1 output'
      Enabled = False
      Visible = False
      OnClick = ApoTypeClick
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
    end
    object miApoIO33: TMenuItem
      Tag = 19
      Caption = 'J - IO module'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miApoIO33Intellia: TMenuItem
        Tag = 4864
        Caption = '0 - Intellia'
        Enabled = False
        Visible = False
        OnClick = ApoTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoIO33Discovery: TMenuItem
        Tag = 4865
        Caption = '1 - Discovery'
        Enabled = False
        Visible = False
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoIO33XP95: TMenuItem
        Tag = 4866
        Caption = '2 - XP95'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoIO33S90: TMenuItem
        Tag = 4867
        Caption = '3 - S90'
        Enabled = False
        Visible = False
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoIO33Exp: TMenuItem
        Tag = 4868
        Caption = '4 - Wireless'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object ApoTypeN7: TMenuItem
      Caption = '-'
    end
    object ApoLPSounder1: TMenuItem
      Tag = 20
      Caption = 'K - Loop powered sounder'
      Enabled = False
      Visible = False
      OnClick = ApoTypeClick
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
    end
    object miApoIntSounder: TMenuItem
      Tag = 21
      Caption = 'L - Intelligent sounder'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miApoIntSounderIntellia: TMenuItem
        Caption = '0 - Intellia'
        Enabled = False
        Visible = False
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoIntSounderDiscovery: TMenuItem
        Tag = 1
        Caption = '1 - Discovery'
        Enabled = False
        Visible = False
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoIntSounderXP95: TMenuItem
        Tag = 2
        Caption = '2 - XP95'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoIntSounderS90: TMenuItem
        Tag = 3
        Caption = '3 - S90'
        Enabled = False
        Visible = False
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoIntSounderExp: TMenuItem
        Tag = 4
        Caption = '4 - Wireless'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miApoIOSounder: TMenuItem
      Tag = 22
      Caption = 'M - Sounder controller module'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miApoIOSounderTypes: TMenuItem
        Tag = 22
        Caption = 'miApoIOSounderTypes'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miApoBeacon: TMenuItem
      Tag = 23
      Caption = 'N - Beacon'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miApoBeaconTypes: TMenuItem
        Tag = 23
        Caption = 'miApoBeaconTypes'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object ApoTypeN8: TMenuItem
      Caption = '-'
    end
    object miApoDSB: TMenuItem
      Tag = 25
      Caption = 'R - Sounder beacon'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miApoDSBIntellia: TMenuItem
        Tag = 6400
        Caption = '0 - Intellia'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miApoDSBDiscovery: TMenuItem
        Tag = 6401
        Caption = '1 - Discovery'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object ApoDVSB1: TMenuItem
      Tag = 26
      Caption = 'S - Voice Sounder beacon'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object ApoDVSBIntellia1: TMenuItem
        Tag = 6656
        Caption = '0 - Intellia'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object ApoDVSBDiscovery1: TMenuItem
        Tag = 6657
        Caption = '1 - Discovery'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object ApoDVS1: TMenuItem
      Tag = 27
      Caption = 'T - Voice Sounder'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object ApoDVSIntellia1: TMenuItem
        Tag = 6912
        Caption = '0 - Intellia'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object ApoDVSDiscovery1: TMenuItem
        Tag = 6913
        Caption = '1 - Discovery'
        OnClick = ApoSubTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
  end
  object ComOutputMenu: TPopupMenu
    Left = 448
    Top = 152
    object Reset17: TMenuItem
      Tag = 250
      Caption = '<Reset>'
      Enabled = False
      Visible = False
      OnClick = ComOutputClick
    end
    object miOutNotInUse: TMenuItem
      Caption = '0 - Not in use'
      OnClick = ComOutputClick
    end
    object miOutFireAD: TMenuItem
      Tag = 1
      Caption = '1 - Fire Alarm Devices'
      OnClick = ComOutputClick
    end
    object miOutFireADNS: TMenuItem
      Tag = 2
      Caption = '2 - Fire Alarm Devices Non-Silenceable'
      OnClick = ComOutputClick
    end
    object miOutFireADL1Sil: TMenuItem
      Tag = 19
      Caption = 'J - Fire Alarm Dev. Lev.1 Silencable'
      OnClick = ComOutputClick
    end
    object miOutFaultWD: TMenuItem
      Tag = 3
      Caption = '3 - Fault Warning Alarm Devices'
      OnClick = ComOutputClick
    end
    object miOutVEActivate: TMenuItem
      Tag = 17
      Caption = 'H - Voice Evacuation Activate output'
      OnClick = ComOutputClick
    end
    object miOutVETest: TMenuItem
      Tag = 18
      Caption = 'I - Voice Evacuation Test output'
      OnClick = ComOutputClick
    end
    object N17: TMenuItem
      Caption = '-'
    end
    object miOutFireAlarm: TMenuItem
      Tag = 4
      Caption = '4 - Fire Alarm Output'
      OnClick = ComOutputClick
    end
    object miOutPrewarning: TMenuItem
      Tag = 5
      Caption = '5 - Prewarning Output'
      OnClick = ComOutputClick
    end
    object miOutFaultWarning: TMenuItem
      Tag = 6
      Caption = '6 - Fault Warning Output'
      OnClick = ComOutputClick
    end
    object miOutMainSupplyFault: TMenuItem
      Tag = 25
      Caption = 'P - Main Supply Fault Output'
      OnClick = ComOutputClick
    end
    object miOutMaintWarning: TMenuItem
      Tag = 7
      Caption = '7 - Maintenance Warning Output'
      OnClick = ComOutputClick
    end
    object N26: TMenuItem
      Caption = '-'
    end
    object miOutGeneralReset: TMenuItem
      Tag = 20
      Caption = 'K - General Reset Output'
      OnClick = ComOutputClick
    end
    object N18: TMenuItem
      Caption = '-'
    end
    object miOutFireDoor: TMenuItem
      Tag = 8
      Caption = '8 - Fire Door Output'
      OnClick = ComOutputClick
    end
    object miOutExtinguisher: TMenuItem
      Tag = 9
      Caption = '9 - Extinguisher Output'
      OnClick = ComOutputClick
    end
    object N19: TMenuItem
      Caption = '-'
    end
    object miOutDisablement: TMenuItem
      Tag = 10
      Caption = 'A - Disablement Output'
      OnClick = ComOutputClick
    end
    object miOutZoneDisabled: TMenuItem
      Tag = 21
      Caption = 'L - Zone Disabled Output'
      OnClick = ComOutputClick
    end
    object miOutAccessLevel: TMenuItem
      Tag = 11
      Caption = 'B - Access Level Output'
      OnClick = ComOutputClick
    end
    object miOutTechAlarm: TMenuItem
      Tag = 12
      Caption = 'C - Technical Alarm Output'
      OnClick = ComOutputClick
    end
    object miOutIntLogic: TMenuItem
      Tag = 13
      Caption = 'D - Internal Logic Output'
      OnClick = ComOutputClick
    end
    object miOutExtLogic: TMenuItem
      Tag = 14
      Caption = 'E - External Logic Output'
      OnClick = ComOutputClick
    end
    object miOutDelFireAlarm: TMenuItem
      Tag = 15
      Caption = 'F - Delayed Fire Alarm Output'
      OnClick = ComOutputClick
    end
    object miOutFAREActivatedLED: TMenuItem
      Tag = 16
      Caption = 'G - Fire Alarm Transmitter Activated LED Output'
      OnClick = ComOutputClick
    end
    object miOutDelAlarmEnabled: TMenuItem
      Tag = 22
      Caption = 'M - Delayed Alarm Enabled Output'
      OnClick = ComOutputClick
    end
    object miOutFireRouterDisabled: TMenuItem
      Tag = 23
      Caption = 'N - Fire Router Disabled Output'
      OnClick = ComOutputClick
    end
    object miOutFaultRouterDisabled: TMenuItem
      Tag = 24
      Caption = 'O - Fault Router Disabled Output'
      OnClick = ComOutputClick
    end
  end
  object ComSounderModeMenu: TPopupMenu
    Left = 352
    Top = 104
    object Reset18: TMenuItem
      Tag = 250
      Caption = '<Reset>'
      Enabled = False
      Visible = False
      OnClick = ComSounderModeClick
    end
    object miComSounderContinuous: TMenuItem
      Caption = 'Continuous'
      OnClick = ComSounderModeClick
    end
    object miComSounderPulsed: TMenuItem
      Tag = 1
      Caption = 'Pulsed'
      OnClick = ComSounderModeClick
    end
    object miComSounderPhasedevac: TMenuItem
      Tag = 2
      Caption = 'Phased evacuation'
      OnClick = ComSounderModeClick
    end
    object miComSounderSwitch: TMenuItem
      Tag = 3
      Caption = 'Switch setting'
      OnClick = ComSounderModeClick
    end
    object miApoSndrTone: TMenuItem
      Tag = 4
      Caption = 'Tone'
      object miPrimTone01: TMenuItem
        Tag = 101
        Caption = 'Primary Tone 01, 550Hz for 0.5s, 825Hz for 0.5s'
        OnClick = ApoSounderModeClick
      end
      object miPrimTone02: TMenuItem
        Tag = 102
        Caption = 'Primary Tone 02, 925Hz for 0.25s, 626Hz for 0.25s'
        OnClick = ApoSounderModeClick
      end
      object miPrimTone03: TMenuItem
        Tag = 103
        Caption = 'Primary Tone 03, 800Hz to 970Hz at 1Hz'
        OnClick = ApoSounderModeClick
      end
      object miPrimTone04: TMenuItem
        Tag = 104
        Caption = 'Primary Tone 04, 2500Hz -2850Hz at 9Hz'
        OnClick = ApoSounderModeClick
      end
      object miPrimTone05: TMenuItem
        Tag = 105
        Caption = 'Primary Tone 05, 500Hz - 1200Hz for 3.5s, 0.5s off'
        OnClick = ApoSounderModeClick
      end
      object miPrimTone06: TMenuItem
        Tag = 106
        Caption = 'Primary Tone 06, 1200Hz - 500Hz for 1s'
        OnClick = ApoSounderModeClick
      end
      object miPrimTone07: TMenuItem
        Tag = 107
        Caption = 'Primary Tone 07, 660Hz, 150ms on, 150ms off'
        OnClick = ApoSounderModeClick
      end
      object miPrimTone08: TMenuItem
        Tag = 108
        Caption = 'Primary Tone 08, 3x (500Hz - 1200Hz for 0.5s), 0.5s off'
        OnClick = ApoSounderModeClick
      end
      object miPrimTone09: TMenuItem
        Tag = 109
        Caption = 'Primary Tone 09, 500Hz - 1200Hz for 3.75s, 0.25s off'
        OnClick = ApoSounderModeClick
      end
      object miPrimTone10: TMenuItem
        Tag = 110
        Caption = 'Primary Tone 10, 3x (970Hz, 0.5s on, 0.5s off), 1s off'
        OnClick = ApoSounderModeClick
      end
      object miPrimTone11: TMenuItem
        Tag = 111
        Caption = 'Primary Tone 11, 3x (2850Hz, 0.5s on, 0.5s off), 1s off'
        OnClick = ApoSounderModeClick
      end
      object miPrimTone12: TMenuItem
        Tag = 112
        Caption = 'Primary Tone 12, Simulated Bell - Continuous'
        OnClick = ApoSounderModeClick
      end
      object miPrimTone13: TMenuItem
        Tag = 113
        Caption = 'Primary Tone 13, Emergency Warning Siren'
        OnClick = ApoSounderModeClick
      end
      object miPrimTone14: TMenuItem
        Tag = 114
        Caption = 'Primary Tone 14, 970Hz'
        OnClick = ApoSounderModeClick
      end
      object miPrimTone15: TMenuItem
        Tag = 115
        Caption = 'Primary Tone 15, 550Hz for 0.5s, 825Hz for 0.5s'
        OnClick = ApoSounderModeClick
      end
      object miSecTone01: TMenuItem
        Tag = 151
        Caption = 'Secondary Tone 01, 1s off, 825Hz for 1s'
        OnClick = ApoSounderModeClick
      end
      object miSecTone02: TMenuItem
        Tag = 152
        Caption = 'Secondary Tone 02, 925Hz'
        OnClick = ApoSounderModeClick
      end
      object miSecTone03: TMenuItem
        Tag = 153
        Caption = 'Secondary Tone 03, 970Hz'
        OnClick = ApoSounderModeClick
      end
      object miSecTone04: TMenuItem
        Tag = 154
        Caption = 'Secondary Tone 04, 2850Hz'
        OnClick = ApoSounderModeClick
      end
      object miSecTone05: TMenuItem
        Tag = 155
        Caption = 'Secondary Tone 05, 825Hz'
        OnClick = ApoSounderModeClick
      end
      object miSecTone06: TMenuItem
        Tag = 156
        Caption = 'Secondary Tone 06, 825Hz'
        OnClick = ApoSounderModeClick
      end
      object miSecTone07: TMenuItem
        Tag = 157
        Caption = 'Secondary Tone 07, 420Hz, 0.625s, 0.625s off'
        OnClick = ApoSounderModeClick
      end
      object miSecTone08: TMenuItem
        Tag = 158
        Caption = 'Secondary Tone 08, 420Hz, 0.625s, 0.625s off'
        OnClick = ApoSounderModeClick
      end
      object miSecTone09: TMenuItem
        Tag = 159
        Caption = 'Secondary Tone 09, 970Hz'
        OnClick = ApoSounderModeClick
      end
      object miSecTone10: TMenuItem
        Tag = 160
        Caption = 'Secondary Tone 10, 2850Hz'
        OnClick = ApoSounderModeClick
      end
      object miSecTone11: TMenuItem
        Tag = 161
        Caption = 'Secondary Tone 11, 1s off, 1s on'
        OnClick = ApoSounderModeClick
      end
      object miSecTone12: TMenuItem
        Tag = 162
        Caption = 'Secondary Tone 12, Emergency Warning Siren All Clear'
        OnClick = ApoSounderModeClick
      end
      object miSecTone13: TMenuItem
        Tag = 163
        Caption = 'Secondary Tone 13, '
        OnClick = ApoSounderModeClick
      end
      object miSecTone14: TMenuItem
        Tag = 164
        Caption = 'Secondary Tone 14, '
        OnClick = ApoSounderModeClick
      end
      object miSecTone15: TMenuItem
        Tag = 165
        Caption = 'Secondary Tone 15, '
        OnClick = ApoSounderModeClick
      end
    end
    object miApoSndrTonePair: TMenuItem
      Tag = 5
      Caption = 'Phased Evacuation'
      object miTonepair01: TMenuItem
        Tag = 201
        Caption = 'Tone pair 01'
        OnClick = ApoSounderModeClick
      end
      object miTonepair02: TMenuItem
        Tag = 202
        Caption = 'Tone pair 02'
        OnClick = ApoSounderModeClick
      end
      object miTonepair03: TMenuItem
        Tag = 203
        Caption = 'Tone pair 03'
        OnClick = ApoSounderModeClick
      end
      object miTonepair04: TMenuItem
        Tag = 204
        Caption = 'Tone pair 04'
        OnClick = ApoSounderModeClick
      end
      object miTonepair05: TMenuItem
        Tag = 205
        Caption = 'Tone pair 05'
        OnClick = ApoSounderModeClick
      end
      object miTonepair06: TMenuItem
        Tag = 206
        Caption = 'Tone pair 06'
        OnClick = ApoSounderModeClick
      end
      object miTonepair07: TMenuItem
        Tag = 207
        Caption = 'Tone pair 07'
        OnClick = ApoSounderModeClick
      end
      object miTonepair08: TMenuItem
        Tag = 208
        Caption = 'Tone pair 08'
        OnClick = ApoSounderModeClick
      end
      object miTonepair09: TMenuItem
        Tag = 209
        Caption = 'Tone pair 09'
        OnClick = ApoSounderModeClick
      end
      object miTonepair10: TMenuItem
        Tag = 210
        Caption = 'Tone pair 10'
        OnClick = ApoSounderModeClick
      end
      object miTonepair11: TMenuItem
        Tag = 211
        Caption = 'Tone pair 11'
        OnClick = ApoSounderModeClick
      end
      object miTonepair12: TMenuItem
        Tag = 212
        Caption = 'Tone pair 12'
        OnClick = ApoSounderModeClick
      end
      object miTonepair13: TMenuItem
        Tag = 213
        Caption = 'Tone pair 13'
        OnClick = ApoSounderModeClick
      end
      object miTonepair14: TMenuItem
        Tag = 214
        Caption = 'Tone pair 14'
        OnClick = ApoSounderModeClick
      end
      object miTonepair15: TMenuItem
        Tag = 215
        Caption = 'Tone pair 15'
        OnClick = ApoSounderModeClick
      end
    end
    object miSapSndrTone: TMenuItem
      Caption = 'Tone'
      object miSapTone01: TMenuItem
        Tag = 101
        Caption = 'Tone 01'
        OnClick = SapSounderModeClick
      end
      object miSapTone02: TMenuItem
        Tag = 102
        Caption = 'Tone 02'
        OnClick = SapSounderModeClick
      end
      object miSapTone03: TMenuItem
        Tag = 103
        Caption = 'Tone 03'
        OnClick = SapSounderModeClick
      end
      object miSapTone04: TMenuItem
        Tag = 104
        Caption = 'Tone 04'
        OnClick = SapSounderModeClick
      end
      object miSapTone05: TMenuItem
        Tag = 105
        Caption = 'Tone 05'
        OnClick = SapSounderModeClick
      end
      object miSapTone06: TMenuItem
        Tag = 106
        Caption = 'Tone 06'
        OnClick = SapSounderModeClick
      end
      object miSapTone07: TMenuItem
        Tag = 107
        Caption = 'Tone 07'
        OnClick = SapSounderModeClick
      end
      object miSapTone08: TMenuItem
        Tag = 108
        Caption = 'Tone 08'
        OnClick = SapSounderModeClick
      end
      object miSapTone09: TMenuItem
        Tag = 109
        Caption = 'Tone 09'
        OnClick = SapSounderModeClick
      end
      object miSapTone10: TMenuItem
        Tag = 110
        Caption = 'Tone 10'
        OnClick = SapSounderModeClick
      end
      object miSapTone11: TMenuItem
        Tag = 111
        Caption = 'Tone 11'
        OnClick = SapSounderModeClick
      end
      object miSapTone12: TMenuItem
        Tag = 112
        Caption = 'Tone 12'
        OnClick = SapSounderModeClick
      end
      object miSapTone13: TMenuItem
        Tag = 113
        Caption = 'Tone 13'
        OnClick = SapSounderModeClick
      end
      object miSapTone14: TMenuItem
        Tag = 114
        Caption = 'Tone 14'
        OnClick = SapSounderModeClick
      end
      object miSapTone15: TMenuItem
        Tag = 115
        Caption = 'Tone 15'
        OnClick = SapSounderModeClick
      end
      object miSapTone16: TMenuItem
        Tag = 116
        Caption = 'Tone 16'
        OnClick = SapSounderModeClick
      end
      object miSapTone17: TMenuItem
        Tag = 117
        Caption = 'Tone 17'
        OnClick = SapSounderModeClick
      end
      object miSapTone18: TMenuItem
        Tag = 118
        Caption = 'Tone 18'
        OnClick = SapSounderModeClick
      end
      object miSapTone19: TMenuItem
        Tag = 119
        Caption = 'Tone 19'
        OnClick = SapSounderModeClick
      end
      object miSapTone20: TMenuItem
        Tag = 120
        Caption = 'Tone 20'
        OnClick = SapSounderModeClick
      end
      object miSapTone21: TMenuItem
        Tag = 121
        Caption = 'Tone 21'
        OnClick = SapSounderModeClick
      end
      object miSapTone22: TMenuItem
        Tag = 122
        Caption = 'Tone 22'
        OnClick = SapSounderModeClick
      end
      object miSapTone23: TMenuItem
        Tag = 123
        Caption = 'Tone 23'
        OnClick = SapSounderModeClick
      end
      object miSapTone24: TMenuItem
        Tag = 124
        Caption = 'Tone 24'
        OnClick = SapSounderModeClick
      end
      object miSapTone25: TMenuItem
        Tag = 125
        Caption = 'Tone 25'
        OnClick = SapSounderModeClick
      end
      object miSapTone26: TMenuItem
        Tag = 126
        Caption = 'Tone 26'
        OnClick = SapSounderModeClick
      end
      object miSapTone27: TMenuItem
        Tag = 127
        Caption = 'Tone 27'
        OnClick = SapSounderModeClick
      end
      object miSapTone28: TMenuItem
        Tag = 128
        Caption = 'Tone 28'
        OnClick = SapSounderModeClick
      end
      object miSapTone29: TMenuItem
        Tag = 129
        Caption = 'Tone 29'
        OnClick = SapSounderModeClick
      end
      object miSapTone30: TMenuItem
        Tag = 130
        Caption = 'Tone 30'
        OnClick = SapSounderModeClick
      end
      object miSapTone31: TMenuItem
        Tag = 131
        Caption = 'Tone 31'
        OnClick = SapSounderModeClick
      end
      object miSapTone32: TMenuItem
        Tag = 132
        Caption = 'Tone 32'
        OnClick = SapSounderModeClick
      end
    end
    object miSapSndrTonePair: TMenuItem
      Caption = 'Phased'
      object miSapTonePair01: TMenuItem
        Tag = 201
        Caption = 'Tone pair 01'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair02: TMenuItem
        Tag = 202
        Caption = 'Tone pair 02'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair03: TMenuItem
        Tag = 203
        Caption = 'Tone pair 03'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair04: TMenuItem
        Tag = 204
        Caption = 'Tone pair 04'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair05: TMenuItem
        Tag = 205
        Caption = 'Tone pair 05'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair06: TMenuItem
        Tag = 206
        Caption = 'Tone pair 06'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair07: TMenuItem
        Tag = 207
        Caption = 'Tone pair 07'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair08: TMenuItem
        Tag = 208
        Caption = 'Tone pair 08'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair09: TMenuItem
        Tag = 209
        Caption = 'Tone pair 09'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair10: TMenuItem
        Tag = 210
        Caption = 'Tone pair 10'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair11: TMenuItem
        Tag = 211
        Caption = 'Tone pair 11'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair12: TMenuItem
        Tag = 212
        Caption = 'Tone pair 12'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair13: TMenuItem
        Tag = 213
        Caption = 'Tone pair 13'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair14: TMenuItem
        Tag = 214
        Caption = 'Tone pair 14'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair15: TMenuItem
        Tag = 215
        Caption = 'Tone pair 15'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair16: TMenuItem
        Tag = 216
        Caption = 'Tone pair 16'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair17: TMenuItem
        Tag = 217
        Caption = 'Tone pair 17'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair18: TMenuItem
        Tag = 218
        Caption = 'Tone pair 18'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair19: TMenuItem
        Tag = 219
        Caption = 'Tone pair 19'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair20: TMenuItem
        Tag = 220
        Caption = 'Tone pair 20'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair21: TMenuItem
        Tag = 221
        Caption = 'Tone pair 21'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair22: TMenuItem
        Tag = 222
        Caption = 'Tone pair 22'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair23: TMenuItem
        Tag = 223
        Caption = 'Tone pair 23'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair24: TMenuItem
        Tag = 224
        Caption = 'Tone pair 24'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair25: TMenuItem
        Tag = 225
        Caption = 'Tone pair 25'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair26: TMenuItem
        Tag = 226
        Caption = 'Tone pair 26'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair27: TMenuItem
        Tag = 227
        Caption = 'Tone pair 27'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair28: TMenuItem
        Tag = 228
        Caption = 'Tone pair 28'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair29: TMenuItem
        Tag = 229
        Caption = 'Tone pair 29'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair30: TMenuItem
        Tag = 230
        Caption = 'Tone pair 30'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair31: TMenuItem
        Tag = 231
        Caption = 'Tone pair 31'
        OnClick = SapSounderModeClick
      end
      object miSapTonePair32: TMenuItem
        Tag = 232
        Caption = 'Tone pair 32'
        OnClick = SapSounderModeClick
      end
    end
  end
  object ComCzmMenu: TPopupMenu
    Left = 448
    Top = 104
    object Reset19: TMenuItem
      Tag = 250
      Caption = '<Reset>'
      Enabled = False
      Visible = False
      OnClick = ComCzmClick
    end
    object miComCzmZone: TMenuItem
      Caption = '0 - Conventional zone'
      OnClick = ComCzmClick
    end
    object miComCzmBeam: TMenuItem
      Tag = 1
      Caption = '1 - Conventional beam detector'
      OnClick = ComCzmClick
    end
    object miComCzmWlExp: TMenuItem
      Tag = 3
      Caption = '2 - Wireless Expander'
      OnClick = ComCzmClick
    end
  end
  object ComZDisMenu: TPopupMenu
    Left = 352
    Top = 296
    object Reset6: TMenuItem
      Tag = 250
      Caption = '<Reset>'
      Enabled = False
      Visible = False
      OnClick = ComZDisClick
    end
    object miZDisNoEffect: TMenuItem
      Caption = '0 - Not disabled by zone disablement'
      OnClick = ComZDisClick
    end
    object miZDisDisabled: TMenuItem
      Tag = 1
      Caption = '1 - Disabled by zone disablement'
      OnClick = ComZDisClick
    end
    object miZDisInpDisabled: TMenuItem
      Tag = 2
      Caption = '2 - Input only disabled by zone disablement'
      OnClick = ComZDisClick
    end
  end
  object ApoMultiLevelMenu: TPopupMenu
    Left = 144
    Top = 104
    object Reset20: TMenuItem
      Tag = 250
      Caption = '<Reset>'
      Enabled = False
      Visible = False
      OnClick = ComLevelClick
    end
    object miApoMultiLevel1: TMenuItem
      Tag = 1
      Caption = '1 - Level 1 - most sensitive'
      OnClick = ComLevelClick
    end
    object miApoMultiLevel2: TMenuItem
      Tag = 2
      Caption = '2 - Level 2 - only smoke detection'
      OnClick = ComLevelClick
    end
    object miApoMultiLevel3: TMenuItem
      Tag = 3
      Caption = '3 - Level 3'
      OnClick = ComLevelClick
    end
    object miApoMultiLevel4: TMenuItem
      Tag = 4
      Caption = '4 - Level 4'
      OnClick = ComLevelClick
    end
    object miApoMultiLevel5: TMenuItem
      Tag = 5
      Caption = '5 - Level 5 - only thermal detection'
      OnClick = ComLevelClick
    end
  end
  object SapTypeMenu: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    OwnerDraw = True
    Left = 40
    Top = 8
    object Reset21: TMenuItem
      Tag = 250
      Caption = '<Reset>'
      Enabled = False
      Visible = False
      OnClick = SapTypeClick
    end
    object miSapNotUsed: TMenuItem
      Caption = '0 - Not in use'
      OnClick = SapTypeClick
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
    end
    object miSapIon: TMenuItem
      Tag = 1
      Caption = '1 - Ionizating sensor'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapIonAdv: TMenuItem
        Tag = 1
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miSapIonClip: TMenuItem
        Tag = 1
        Caption = '1 - 200 series'
        OnClick = SapSysTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSapOpt: TMenuItem
      Tag = 2
      Caption = '2 - Optical sensor'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapOptAdv: TMenuItem
        Tag = 2
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miSapOptClip: TMenuItem
        Tag = 2
        Caption = '1 - 200 series'
        OnClick = SapSysTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSapFiltrex: TMenuItem
      Tag = 3
      Caption = '4 - Filtrex'
      Visible = False
      object miSapFiltrexAdv: TMenuItem
        Tag = 3
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
      end
      object miSapFiltrexClip: TMenuItem
        Tag = 3
        Caption = '1 - 200 series'
        OnClick = SapSysTypeClick
      end
    end
    object miSapTempStat: TMenuItem
      Tag = 7
      Caption = '3 - Stat. thermal sensor'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapTempStatAdv: TMenuItem
        Tag = 7
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miSapTempStatClip: TMenuItem
        Tag = 7
        Caption = '1 - 200 series'
        OnClick = SapSysTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSapTempRor: TMenuItem
      Tag = 8
      Caption = 'G - ROR Thermal sensor'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapTempRorAdv: TMenuItem
        Tag = 8
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miSapTempRorClip: TMenuItem
        Tag = 8
        Caption = '1 - 200 series'
        OnClick = SapSysTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSapTempHigh: TMenuItem
      Tag = 9
      Caption = 'H - High temp. thermal'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapTempHighAdv: TMenuItem
        Tag = 9
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miSapTempHighClip: TMenuItem
        Tag = 9
        Caption = '1 - 200 series'
        OnClick = SapSysTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSapLaser1: TMenuItem
      Tag = 11
      Caption = '9 - Laser LZR-1'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapLaser1Adv: TMenuItem
        Tag = 11
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miSapLaser1Clip: TMenuItem
        Tag = 11
        Caption = '1 - 200 series'
        OnClick = SapSysTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSapLaser2: TMenuItem
      Tag = 12
      Caption = 'A - Laser 7251'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapLaser2Adv: TMenuItem
        Tag = 12
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miSapLaser2Clip: TMenuItem
        Tag = 12
        Caption = '1 - 200 series'
        OnClick = SapSysTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSapMulti: TMenuItem
      Tag = 4
      Caption = 'B - Multicrit. sensor'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapMultiAdv: TMenuItem
        Tag = 4
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miSapMultiClip: TMenuItem
        Tag = 4
        Caption = '1 - 200 series'
        OnClick = SapSysTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSapPtir: TMenuItem
      Tag = 6
      Caption = 'D - Three crit. sensor'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapPtirAdv: TMenuItem
        Tag = 6
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miSapPtirClip: TMenuItem
        Tag = 6
        Caption = '1 - 200 series'
        OnClick = SapSysTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSapCoptir: TMenuItem
      Tag = 5
      Caption = 'E - Four crit. sensor'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnSubMenuMeasureItem
      object miSapCoptirAdv: TMenuItem
        Tag = 5
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miSapCoptirClip: TMenuItem
        Tag = 5
        Caption = '1 - 200 series'
        OnClick = SapSysTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSapBeam: TMenuItem
      Tag = 10
      Caption = 'F - Beam sensor'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapBeamAdv: TMenuItem
        Tag = 10
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miSapBeamClip: TMenuItem
        Tag = 10
        Caption = '1 - 200 series'
        OnClick = SapSysTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSapBeamTester: TMenuItem
      Tag = 13
      Caption = 'Y - Beam sensor w. tester'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapBeamTesterAdv: TMenuItem
        Tag = 13
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object N23: TMenuItem
      Caption = '-'
    end
    object miSapMcpIndoor: TMenuItem
      Tag = 16
      Caption = 'I - Manual Call Point indoor'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapMcpIndoorAdv: TMenuItem
        Tag = 16
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSapMcpOutdoor: TMenuItem
      Tag = 17
      Caption = 'J - Manual Call Point outdoor'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapMcpOutdoorAdv: TMenuItem
        Tag = 17
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSap1In: TMenuItem
      Tag = 18
      Caption = '5 - Single Input module'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSap1InAdv: TMenuItem
        Tag = 18
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miSap1InClip: TMenuItem
        Tag = 18
        Caption = '1 - 200 series'
        OnClick = SapSysTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSap1InMicro: TMenuItem
      Tag = 19
      Caption = 'K - Single Input micro module'
      OnClick = SapTypeClick
      object miSap1InMicroAdv: TMenuItem
        Tag = 19
        Caption = '0 - Advanced series'
      end
    end
    object miSap1InMini: TMenuItem
      Caption = 'Z - Single Input mini module'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSap1InMiniAdv: TMenuItem
        Tag = 30
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSap2In: TMenuItem
      Tag = 20
      Caption = 'L - Dual Input module'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSap2InAdv: TMenuItem
        Tag = 20
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSap2In1Out: TMenuItem
      Tag = 21
      Caption = 'M - Dual Input, Single Output module'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSap2In1OutAdv: TMenuItem
        Tag = 21
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSap1Out: TMenuItem
      Tag = 22
      Caption = '6 - Single Output module'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSap1OutAdv: TMenuItem
        Tag = 22
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miSap1OutClip: TMenuItem
        Tag = 22
        Caption = '1 - 200 series'
        OnClick = SapSysTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSap1Out240: TMenuItem
      Tag = 23
      Caption = 'N - Single Output 240V module'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSap1Out240Adv: TMenuItem
        Tag = 23
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSapCZ: TMenuItem
      Tag = 24
      Caption = '7 - Conventional Zone module'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapCzAdv: TMenuItem
        Tag = 24
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object miSapCzClip: TMenuItem
        Tag = 24
        Caption = '1 - 200 series'
        OnClick = SapSysTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSapCZR: TMenuItem
      Tag = 29
      Caption = 'X - Conv. Zone module CZR'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapCZRAdv: TMenuItem
        Tag = 29
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSap6CCO: TMenuItem
      Tag = 25
      Caption = 'O - Six x Clean Contact Output'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSap6CCOAdv: TMenuItem
        Tag = 25
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSap6MRO: TMenuItem
      Tag = 26
      Caption = 'P - Six x Monitored Relay Output'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSap6MROAdv: TMenuItem
        Tag = 26
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSap10CCI: TMenuItem
      Tag = 27
      Caption = 'Q - Ten x Clean Contact Input'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSap10CCIAdv: TMenuItem
        Tag = 27
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSap6CZ: TMenuItem
      Tag = 28
      Caption = 'R - Six x Conventional Zone'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSap6CZAdv: TMenuItem
        Tag = 28
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object N24: TMenuItem
      Caption = '-'
    end
    object miSapWallSndr: TMenuItem
      Tag = 40
      Caption = 'S - Wall Mount Sounder'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapWallSndrAdv: TMenuItem
        Tag = 40
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSapWallSndrStr: TMenuItem
      Tag = 41
      Caption = 'T - Wall Mount Sounder Strobe'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapWallSndrStrAdv: TMenuItem
        Tag = 41
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSapWallStrobe: TMenuItem
      Tag = 42
      Caption = 'U - Wall Mount Strobe'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapWallStrobeAdv: TMenuItem
        Tag = 42
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSapBaseSndr: TMenuItem
      Tag = 43
      Caption = 'V - Detector Base Sounder'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapBaseSndrAdv: TMenuItem
        Tag = 43
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSapBaseSndrStr: TMenuItem
      Tag = 44
      Caption = 'W - Detector Base Sounder Strobe'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapBaseSndrStrAdv: TMenuItem
        Tag = 44
        Caption = '0 - Advanced series'
        OnClick = SapTypeClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object N25: TMenuItem
      Caption = '-'
    end
    object miSapAnyVirtual: TMenuItem
      Tag = 33
      Caption = 'C - Any Type (virtual)'
      OnClick = SapTypeClick
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
    end
    object miSapAny: TMenuItem
      Tag = 32
      Caption = '8 - Any Type'
      OnClick = SapTypeClick
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
    end
  end
  object ComInputMenu: TPopupMenu
    AutoPopup = False
    Left = 448
    Top = 56
    object Reset24: TMenuItem
      Tag = 250
      Caption = '<Reset>'
      Enabled = False
      Visible = False
      OnClick = ComInputClick
    end
    object miInpNotInUse: TMenuItem
      Caption = '0 - Not In Use'
      OnClick = ComInputClick
    end
    object miInpMCPorAlmSw: TMenuItem
      Caption = '0 - Manual Call Point / Al'#39'm Switch'
      OnClick = ComInputClick
    end
    object miInpMCPLine: TMenuItem
      Tag = 1
      Caption = '1 - Manual Call Point Line'
      OnClick = ComInputClick
    end
    object miInpMCP: TMenuItem
      Tag = 1
      Caption = '1 - Manual Call Point'
      OnClick = ComInputClick
    end
    object miInpConvBeamDet: TMenuItem
      Tag = 2
      Caption = '2 - Conv. Beam Detector'
      Enabled = False
      OnClick = ComInputClick
    end
    object miInpReserved: TMenuItem
      Tag = 2
      Caption = '2 - Reserved'
      Enabled = False
      OnClick = ComInputClick
    end
    object miInpDetectionLine: TMenuItem
      Tag = 3
      Caption = '3 - Detection Line'
      OnClick = ComInputClick
    end
    object miInpConvHeatDet: TMenuItem
      Tag = 3
      Caption = '3 - Conv. Heat Detector'
      OnClick = ComInputClick
    end
    object MenuItem1: TMenuItem
      Caption = '-'
    end
    object miInpFireAlarm: TMenuItem
      Tag = 4
      Caption = '4 - Fire Alarm Input'
      OnClick = ComInputClick
    end
    object miInpPrewarning: TMenuItem
      Tag = 5
      Caption = '5 - Prealarm Input'
      OnClick = ComInputClick
    end
    object miInpFaultWarning: TMenuItem
      Tag = 6
      Caption = '6 - Fault warning Input'
      OnClick = ComInputClick
    end
    object miInpMaintWarning: TMenuItem
      Tag = 7
      Caption = '7 - Maintenance Input'
      OnClick = ComInputClick
    end
    object miInpTechAlarm: TMenuItem
      Tag = 8
      Caption = '8 - Technical Alarm Input'
      OnClick = ComInputClick
    end
    object miInpSilentTechAlarm: TMenuItem
      Tag = 9
      Caption = '9 - Silent Tech Alarm Input'
      OnClick = ComInputClick
    end
    object miInpLocEvac: TMenuItem
      Tag = 31
      Caption = 'Q - Local Evacuation Input'
      OnClick = ComInputClick
    end
    object miInpEvac: TMenuItem
      Tag = 24
      Caption = 'A - Evacuation Input'
      OnClick = ComInputClick
    end
    object MenuItem2: TMenuItem
      Caption = '-'
    end
    object miInpZoneDisable: TMenuItem
      Tag = 10
      Caption = 'B - Zone Disablement Input'
      OnClick = ComInputClick
    end
    object miInpLocDayMode: TMenuItem
      Tag = 27
      Caption = 'R - Local Day Mode Activation Input'
      OnClick = ComInputClick
    end
    object miInpLocDelAlarmEnable: TMenuItem
      Tag = 28
      Caption = 'S - Local Delayed Alarm Enable Input'
      OnClick = ComInputClick
    end
    object miInpLocDayAndDelEnable: TMenuItem
      Tag = 29
      Caption = 'T - Local Day Mode and Delayed Alarm Enable Input'
      OnClick = ComInputClick
    end
    object miInpDayMode: TMenuItem
      Tag = 11
      Caption = 'C - Day Mode Activation Input'
      OnClick = ComInputClick
    end
    object miInpDelAlrmEnable: TMenuItem
      Tag = 12
      Caption = 'D - Delayed Alarm Enable Input'
      OnClick = ComInputClick
    end
    object miInpDayAndDelEnable: TMenuItem
      Tag = 13
      Caption = 'E - Day Mode and Delayed Alarm Enable Input'
      OnClick = ComInputClick
    end
    object MenuItem3: TMenuItem
      Caption = '-'
    end
    object miInpDelAlarmZonalSilence: TMenuItem
      Tag = 14
      Caption = 'F - Delayed Alarm Zonal Silence'
      OnClick = ComInputClick
    end
    object miInpDelAlarmZonalReset: TMenuItem
      Tag = 15
      Caption = 'G - Delayed Alarm Zonal Reset'
      OnClick = ComInputClick
    end
    object miInpGeneralSilence: TMenuItem
      Tag = 16
      Caption = 'H - General Silence Input'
      OnClick = ComInputClick
    end
    object miInpGeneralReset: TMenuItem
      Tag = 17
      Caption = 'I - General Reset Input'
      OnClick = ComInputClick
    end
    object MenuItem4: TMenuItem
      Caption = '-'
    end
    object miInpLocAlarmDeviceMute: TMenuItem
      Tag = 30
      Caption = 'U - Local Alarm Device Disable Input'
      OnClick = ComInputClick
    end
    object miInpAlarmDeviceMute: TMenuItem
      Tag = 26
      Caption = 'V - Alarm Device Disable Input'
      OnClick = ComInputClick
    end
    object miInpEvacFault: TMenuItem
      Tag = 32
      Caption = 'W - Evacuation Fault Input'
      OnClick = ComInputClick
    end
    object MenuItem6: TMenuItem
      Caption = '-'
    end
    object miInpExtinguisherFault: TMenuItem
      Tag = 25
      Caption = 'J - Extinguisher Fault Input'
      OnClick = ComInputClick
    end
    object miInpExtinguisherActivated: TMenuItem
      Tag = 18
      Caption = 'K - Extinguisher Activated Input'
      OnClick = ComInputClick
    end
    object miInpSmokeVentActivated: TMenuItem
      Tag = 19
      Caption = 'L - Smokeventilation Activated Input'
      OnClick = ComInputClick
    end
    object miInpCustomerLED1Activate: TMenuItem
      Tag = 20
      Caption = 'M - Customer LED 1 Activation'
      OnClick = ComInputClick
    end
    object miInpCustomerLED2Activate: TMenuItem
      Tag = 21
      Caption = 'N - Customer LED 2 Activation'
      OnClick = ComInputClick
    end
    object MenuItem7: TMenuItem
      Caption = '-'
    end
    object miInpInternalLogic: TMenuItem
      Tag = 22
      Caption = 'O - Internal Logic Input'
      OnClick = ComInputClick
    end
    object miInpExternalLogic: TMenuItem
      Tag = 23
      Caption = 'P - External Logic Input'
      OnClick = ComInputClick
    end
    object miInpFaultInFARE: TMenuItem
      Tag = 33
      Caption = 'X - Fire Alarm Router Equipment Fault Input'
      Enabled = False
      OnClick = ComInputClick
    end
  end
  object SapBeamLevelMenu: TPopupMenu
    Left = 38
    Top = 64
    object Reset11: TMenuItem
      Tag = 250
      Caption = '<Reset>'
      Enabled = False
      Visible = False
      OnClick = ComLevelClick
    end
    object miSapBeamLevel1: TMenuItem
      Tag = 1
      Caption = '1 - Level 1 - most sensitive'
      OnClick = ComLevelClick
    end
    object miSapBeamLevel2: TMenuItem
      Tag = 2
      Caption = '2 - Level 2'
      OnClick = ComLevelClick
    end
    object miSapBeamLevel3: TMenuItem
      Tag = 3
      Caption = '3 - Level 3'
      OnClick = ComLevelClick
    end
    object miSapBeamLevel4: TMenuItem
      Tag = 4
      Caption = '4 - Level 4 - least sensitive'
      OnClick = ComLevelClick
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object miSapBeamLevel5: TMenuItem
      Tag = 5
      Caption = '5 - Level 5 - acclimate 1'
      OnClick = ComLevelClick
    end
    object miSapBeamLevel6: TMenuItem
      Tag = 6
      Caption = '6 - Level 6 - acclimate 2'
      OnClick = ComLevelClick
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object miSapBeamLevel7: TMenuItem
      Tag = 7
      Caption = '7 - Use device setting'
      OnClick = ComLevelClick
    end
  end
  object ComSounderVolumeMenu: TPopupMenu
    Left = 101
    Top = 243
    object miSndrVol1: TMenuItem
      Tag = 1
      Caption = '1 - Vol 1'
      OnClick = ComSndrVolClick
    end
    object miSndrVol2: TMenuItem
      Tag = 2
      Caption = '2 - Vol 2'
      OnClick = ComSndrVolClick
    end
    object miSndrVol3: TMenuItem
      Tag = 3
      Caption = '3 - Vol 3'
      OnClick = ComSndrVolClick
    end
    object miSndrVol4: TMenuItem
      Tag = 4
      Caption = '4 - Vol 4'
      OnClick = ComSndrVolClick
    end
    object miSndrVol5: TMenuItem
      Tag = 5
      Caption = '5 - Vol 5'
      OnClick = ComSndrVolClick
    end
    object miSndrVol6: TMenuItem
      Tag = 6
      Caption = '6 - Vol 6'
      OnClick = ComSndrVolClick
    end
    object miSndrVol7: TMenuItem
      Tag = 7
      Caption = '7 - Vol 7'
      OnClick = ComSndrVolClick
    end
    object miSndrVolSwitch: TMenuItem
      Tag = 8
      Caption = '0 - By dipswitch'
      OnClick = ComSndrVolClick
    end
    object miSndrVolLow: TMenuItem
      Tag = 9
      Caption = '1 - Low'
      OnClick = ComSndrVolClick
    end
    object miSndrVolMed: TMenuItem
      Tag = 10
      Caption = '2 - Medium'
      OnClick = ComSndrVolClick
    end
    object miSndrVolHigh: TMenuItem
      Tag = 11
      Caption = '3 - High'
      OnClick = ComSndrVolClick
    end
  end
  object SapEnvironmentMenu: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    OwnerDraw = True
    Left = 48
    Top = 184
    object miSapEnvGeneral: TMenuItem
      Caption = 'N - Normal'
      OnClick = SapEnvironmentClick
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
    end
    object miSapEnv1: TMenuItem
      Tag = 1
      Caption = '0 - Environment 0'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapEnv1Sub1: TMenuItem
        Tag = 14
        Caption = 'miEnv1Sub1'
        OnClick = SapEnvironmentClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object miSapEnv1Sub2: TMenuItem
        Tag = 14
        Caption = 'miEnv1Sub2'
        OnClick = SapEnvironmentClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSapEnv2: TMenuItem
      Tag = 2
      Caption = '1 - Environment 1'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapEnv2Sub1: TMenuItem
        Tag = 25
        Caption = 'miEnv2Sub1'
        OnClick = SapEnvironmentClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object N14: TMenuItem
        Caption = '-'
      end
      object miSapEnv2Sub2: TMenuItem
        Tag = 25
        Caption = 'miEnv2Sub2'
        OnClick = SapEnvironmentClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSapEnv3: TMenuItem
      Tag = 3
      Caption = '2 - Environment 2'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapEnv3Sub1: TMenuItem
        Tag = 35
        Caption = 'miEnv3Sub1'
        OnClick = SapEnvironmentClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object miSapEnv3Sub2: TMenuItem
        Tag = 35
        Caption = 'miEnv3Sub2'
        OnClick = SapEnvironmentClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object miSapEnv3Sub3: TMenuItem
        Tag = 35
        Caption = 'miEnv3Sub3'
        OnClick = SapEnvironmentClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object miSapEnv3Sub4: TMenuItem
        Tag = 34
        Caption = 'miEnv3Sub4'
        OnClick = SapEnvironmentClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSapEnv4: TMenuItem
      Tag = 4
      Caption = '3 - Environment 3'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapEnv4Sub1: TMenuItem
        Tag = 45
        Caption = 'miEnv4Sub1'
        OnClick = SapEnvironmentClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object miSapEnv4Sub2: TMenuItem
        Tag = 45
        Caption = 'miEnv4Sub2'
        OnClick = SapEnvironmentClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSapEnv5: TMenuItem
      Tag = 5
      Caption = '4 - Environment 4'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapEnv5Sub1: TMenuItem
        Tag = 55
        Caption = 'miEnv5Sub1'
        OnClick = SapEnvironmentClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object miSapEnv5Sub2: TMenuItem
        Tag = 55
        Caption = 'miEnv5Sub2'
        OnClick = SapEnvironmentClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object miSapEnv5Sub3: TMenuItem
        Tag = 55
        Caption = 'miEnv5Sub3'
        OnClick = SapEnvironmentClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSapEnv6: TMenuItem
      Tag = 6
      Caption = '5 - Environment 5'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapEnv6Sub1: TMenuItem
        Tag = 65
        Caption = 'miEnv6Sub1'
        OnClick = SapEnvironmentClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object miSapEnv6Sub2: TMenuItem
        Tag = 65
        Caption = 'miEnv6Sub2'
        OnClick = SapEnvironmentClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSapEnv7: TMenuItem
      Tag = 7
      Caption = '6 - Environment 6'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapEnv7Sub1: TMenuItem
        Tag = 75
        Caption = 'miEnv7Sub1'
        OnClick = SapEnvironmentClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
    object miSapEnv8: TMenuItem
      Tag = 8
      Caption = '7 - Environment 7'
      OnDrawItem = SchnMenuDrawItem
      OnMeasureItem = SchnMenuMeasureItem
      object miSapEnv8Sub1: TMenuItem
        Tag = 85
        Caption = 'miEnv8Sub1'
        OnClick = SapEnvironmentClick
        OnDrawItem = SchnSubMenuDrawItem
        OnMeasureItem = SchnSubMenuMeasureItem
      end
    end
  end
end
