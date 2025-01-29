object AddressReport: TAddressReport
  Left = 1081
  Top = 427
  Caption = 'Address Report'
  ClientHeight = 583
  ClientWidth = 823
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnMouseWheel = FormMouseWheel
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 823
    Height = 161
    Align = alTop
    FullRepaint = False
    ParentBackground = False
    TabOrder = 0
    object lblFound: TLabel
      Left = 8
      Top = 136
      Width = 48
      Height = 16
      Caption = 'lblFound'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnNav1: TSpeedButton
      Tag = 1
      Left = 248
      Top = 128
      Width = 27
      Height = 25
      Caption = '|<'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnNaviClick
    end
    object btnNav2: TSpeedButton
      Tag = 2
      Left = 275
      Top = 128
      Width = 27
      Height = 25
      Caption = '<<'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnNaviClick
    end
    object btnNav3: TSpeedButton
      Tag = 3
      Left = 302
      Top = 128
      Width = 27
      Height = 25
      Caption = '<'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnNaviClick
    end
    object btnNav4: TSpeedButton
      Tag = 4
      Left = 343
      Top = 128
      Width = 27
      Height = 25
      Caption = '>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnNaviClick
    end
    object btnNav5: TSpeedButton
      Tag = 5
      Left = 370
      Top = 128
      Width = 27
      Height = 25
      Caption = '>>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnNaviClick
    end
    object btnNav6: TSpeedButton
      Tag = 6
      Left = 397
      Top = 128
      Width = 27
      Height = 25
      Caption = '>|'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnNaviClick
    end
    object gbSelectFrom: TGroupBox
      Left = 8
      Top = 8
      Width = 233
      Height = 113
      Caption = 'Select addresses from'
      ParentBackground = False
      TabOrder = 0
      object lblSelectFrom: TLabel
        Left = 8
        Top = 64
        Width = 124
        Height = 13
        Caption = 'Select panels/loops/zones'
        Visible = False
      end
      object rbWholeSystem: TRadioButton
        Left = 8
        Top = 20
        Width = 113
        Height = 17
        Caption = 'Whole system'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rbSelectFrom
      end
      object rbPanels: TRadioButton
        Tag = 1
        Left = 8
        Top = 40
        Width = 113
        Height = 17
        Caption = 'Panels'
        TabOrder = 1
        OnClick = rbSelectFrom
      end
      object rbLoops: TRadioButton
        Tag = 2
        Left = 112
        Top = 20
        Width = 113
        Height = 17
        Caption = 'Loops'
        TabOrder = 2
        OnClick = rbSelectFrom
      end
      object rbZones: TRadioButton
        Tag = 3
        Left = 112
        Top = 40
        Width = 113
        Height = 17
        Caption = 'Zones'
        TabOrder = 3
        OnClick = rbSelectFrom
      end
      object btnSelectFrom: TButton
        Left = 8
        Top = 84
        Width = 21
        Height = 21
        Caption = '...'
        Enabled = False
        TabOrder = 4
        OnClick = btnSelectFromClick
      end
      object edSelectFrom: TEdit
        Left = 32
        Top = 84
        Width = 193
        Height = 21
        Enabled = False
        TabOrder = 5
      end
    end
    object gbSelectCriteria: TGroupBox
      Left = 248
      Top = 8
      Width = 177
      Height = 113
      Caption = 'Selection criteria'
      ParentBackground = False
      TabOrder = 1
      object lblDeviceFamily: TLabel
        Left = 8
        Top = 20
        Width = 63
        Height = 13
        Caption = 'Device family'
      end
      object lblDeviceKind: TLabel
        Left = 8
        Top = 64
        Width = 54
        Height = 13
        Caption = 'Device kind'
      end
      object cmbFamily: TComboBox
        Left = 8
        Top = 40
        Width = 161
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 0
        Text = '<Don'#39't care (any family)>'
        OnChange = cmbFamilyChange
        Items.Strings = (
          '<Don'#39't care (any family)>'
          'Apollo (ALC)'
          'System Sensor 200 series (LC)'
          'System Sensor AP series (SLC)'
          'Conventional Loops (CLC)')
      end
      object cmbKind: TComboBox
        Left = 8
        Top = 84
        Width = 161
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 1
        Text = '<Don'#39't care (any kind)>'
        OnChange = cmbKindChange
        Items.Strings = (
          '<Don'#39't care (any kind)>'
          'Detectors'
          'IO modules')
      end
    end
    object gbOutputData: TGroupBox
      Left = 568
      Top = 8
      Width = 233
      Height = 113
      Caption = 'Include in report'
      ParentBackground = False
      TabOrder = 2
      object cbPanelId: TCheckBox
        Left = 8
        Top = 20
        Width = 113
        Height = 17
        Caption = 'Panel Id'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = cbRepIncClick
      end
      object cbAddrId: TCheckBox
        Left = 8
        Top = 40
        Width = 113
        Height = 17
        Caption = 'Loop/address'
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 1
        OnClick = cbRepIncClick
      end
      object cbZoneId: TCheckBox
        Left = 8
        Top = 60
        Width = 113
        Height = 17
        Caption = 'Zone Id'
        Checked = True
        State = cbChecked
        TabOrder = 2
        OnClick = cbRepIncClick
      end
      object cbDeviceType: TCheckBox
        Left = 8
        Top = 80
        Width = 113
        Height = 17
        Caption = 'Device Type'
        Checked = True
        State = cbChecked
        TabOrder = 3
        OnClick = cbRepIncClick
      end
      object cbInputFunction: TCheckBox
        Left = 120
        Top = 20
        Width = 113
        Height = 17
        Caption = 'Input Function'
        Enabled = False
        TabOrder = 4
        OnClick = cbRepIncClick
      end
      object cbOutputFunction: TCheckBox
        Left = 120
        Top = 40
        Width = 113
        Height = 17
        Caption = 'Output Function'
        Enabled = False
        TabOrder = 5
        OnClick = cbRepIncClick
      end
      object cbText: TCheckBox
        Left = 120
        Top = 60
        Width = 113
        Height = 17
        Caption = 'Text'
        Checked = True
        State = cbChecked
        TabOrder = 6
        OnClick = cbRepIncClick
      end
      object cbTested: TCheckBox
        Left = 120
        Top = 80
        Width = 113
        Height = 17
        Caption = 'Tested checkbox'
        TabOrder = 7
        OnClick = cbRepIncClick
      end
    end
    object rgSortOnItem: TRadioGroup
      Left = 432
      Top = 8
      Width = 129
      Height = 81
      Caption = 'Sort on item'
      ItemIndex = 0
      Items.Strings = (
        'Loop/Address'
        'Zone Id'
        'Device type')
      ParentBackground = False
      TabOrder = 3
      OnClick = rgSortOnItemClick
    end
    object rgSortOrder: TRadioGroup
      Left = 432
      Top = 96
      Width = 129
      Height = 57
      Caption = 'Sort order'
      ItemIndex = 0
      Items.Strings = (
        'Ascending'
        'Descending')
      ParentBackground = False
      TabOrder = 4
      OnClick = rgSortOrderClick
    end
    object btnPrintReport: TButton
      Left = 728
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Print'
      TabOrder = 5
      OnClick = btnPrintReportClick
    end
    object btnFont: TButton
      Left = 568
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Font'
      TabOrder = 6
      OnClick = btnFontClick
    end
    object cmbLineHeight: TComboBox
      Left = 648
      Top = 128
      Width = 73
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 7
      Text = '100%'
      OnChange = cmbLineHeightChange
      Items.Strings = (
        '100%'
        '110%'
        '120%'
        '130%'
        '140%'
        '150%'
        '160%'
        '170%'
        '180%'
        '190%'
        '200%'
        '')
    end
    object btnPrinterProps: TButton
      Left = 168
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Print.prop'
      Enabled = False
      TabOrder = 8
      Visible = False
      OnClick = btnPrinterPropsClick
    end
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 161
    Width = 823
    Height = 422
    HorzScrollBar.Tracking = True
    VertScrollBar.Tracking = True
    Align = alClient
    TabOrder = 1
  end
  object PrintDialog1: TPrintDialog
    Options = [poPageNums, poSelection]
    Left = 728
    Top = 208
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 728
    Top = 168
  end
end
