object FXPDFrame: TFXPDFrame
  Left = 0
  Top = 0
  Width = 709
  Height = 610
  Align = alClient
  Constraints.MinHeight = 500
  Constraints.MinWidth = 709
  TabOrder = 0
  TabStop = True
  Visible = False
  ExplicitHeight = 500
  DesignSize = (
    709
    610)
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 709
    Height = 610
    ActivePage = CommunicationSheet
    Align = alClient
    Constraints.MinWidth = 709
    DoubleBuffered = True
    HotTrack = True
    MultiLine = True
    ParentDoubleBuffered = False
    RaggedRight = True
    TabOrder = 0
    OnChange = PageControl1Change
    ExplicitHeight = 500
    object PanelInfoSheet: TTabSheet
      Caption = 'Panel Info'
      ExplicitHeight = 454
      object gbPanelFileName: TGroupBox
        Left = 8
        Top = 16
        Width = 513
        Height = 49
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object lbPanelFileName: TLabel
          Left = 7
          Top = 18
          Width = 498
          Height = 20
          AutoSize = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
      end
      object gbPanelDescription: TGroupBox
        Left = 8
        Top = 76
        Width = 513
        Height = 237
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        DesignSize = (
          513
          237)
        object memPanelDescription: TMemo
          Left = 8
          Top = 24
          Width = 497
          Height = 201
          Anchors = [akLeft, akTop, akRight, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 250
          ParentFont = False
          TabOrder = 0
          OnChange = memPanelDescriptionChange
        end
      end
      object gbShowLogo: TGroupBox
        Left = 8
        Top = 323
        Width = 169
        Height = 49
        Caption = 'Logo in display of panel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        object cbShowLogo: TComboBox
          Left = 8
          Top = 20
          Width = 145
          Height = 21
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = 'No logo'
          OnChange = cbShowLogoChange
          Items.Strings = (
            'No logo'
            'Esmi'
            'Schneider'
            'Somati'
            'SK Group')
        end
      end
    end
    object CommunicationSheet: TTabSheet
      Caption = 'Communication'
      ImageIndex = 1
      ExplicitLeft = 8
      ExplicitTop = 46
      object gbRS232_0: TGroupBox
        Left = 8
        Top = 16
        Width = 249
        Height = 159
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object lbRS2320Baud: TLabel
          Left = 8
          Top = 88
          Width = 3
          Height = 13
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lbRS2320Description: TLabel
          Left = 8
          Top = 111
          Width = 175
          Height = 13
          Caption = 'Description (shown in fault situation)'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object cbRS2320Use: TComboBox
          Left = 8
          Top = 18
          Width = 232
          Height = 21
          Style = csDropDownList
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = 'Not in use'
          OnChange = cbRS2320UseChange
          Items.Strings = (
            'Not in use'
            'Printer proocol (ASCII)'
            'INFO protocol')
        end
        object cbRS2320Monitored: TCheckBox
          Left = 8
          Top = 48
          Width = 230
          Height = 17
          Alignment = taLeftJustify
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          OnClick = cbRS2320MonitoredClick
        end
        object cbRS2320RouterDep: TCheckBox
          Left = 8
          Top = 64
          Width = 230
          Height = 17
          Alignment = taLeftJustify
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          Visible = False
        end
        object cbRS2320BaudRate: TComboBox
          Left = 170
          Top = 84
          Width = 70
          Height = 21
          Style = csDropDownList
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 3
          ParentFont = False
          TabOrder = 3
          Text = '9600'
          OnChange = cbRS2320BaudRateChange
          Items.Strings = (
            '1200'
            '2400'
            '4800'
            '9600'
            '19200')
        end
        object edRS2320Description: TEdit
          Left = 8
          Top = 130
          Width = 232
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Text = '123456789012345678901234567890123456789012345678901234567890'
          OnChange = edRS2320DescriptionChange
        end
      end
      object gbRS485_2: TGroupBox
        Left = 272
        Top = 16
        Width = 249
        Height = 113
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object lbRS4852Baud: TLabel
          Left = 8
          Top = 88
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cbRS4852Use: TComboBox
          Left = 8
          Top = 18
          Width = 232
          Height = 21
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = 'Not in use'
          OnChange = cbRS4852UseChange
          Items.Strings = (
            'Not in use'
            'FX protocol')
        end
        object cbRS4852BaudRate: TComboBox
          Left = 170
          Top = 84
          Width = 70
          Height = 21
          Style = csDropDownList
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 3
          ParentFont = False
          TabOrder = 1
          Text = '9600'
          OnChange = cbRS4852BaudRateChange
          Items.Strings = (
            '1200'
            '2400'
            '4800'
            '9600'
            '19200')
        end
      end
      object gbRS485_3: TGroupBox
        Left = 272
        Top = 136
        Width = 249
        Height = 113
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        object cbRS4853Use: TComboBox
          Left = 8
          Top = 18
          Width = 232
          Height = 21
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = 'Not in use'
          OnChange = cbRS4853UseChange
          Items.Strings = (
            'Not in use'
            'FX protocol')
        end
      end
      object gbRS485_1: TGroupBox
        Left = 8
        Top = 184
        Width = 249
        Height = 164
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        object lbRS4851Baud: TLabel
          Left = 8
          Top = 88
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbRS4851Description: TLabel
          Left = 8
          Top = 111
          Width = 175
          Height = 13
          Caption = 'Description (shown in fault situation)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cbRS4851Use: TComboBox
          Left = 8
          Top = 18
          Width = 232
          Height = 21
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = 'Not in use'
          OnChange = cbRS4851UseChange
          Items.Strings = (
            'Not in use'
            'INFO protocol')
        end
        object cbRS4851Monitored: TCheckBox
          Left = 8
          Top = 48
          Width = 232
          Height = 17
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = cbRS4851MonitoredClick
        end
        object cbRS4851RouterDep: TCheckBox
          Left = 8
          Top = 64
          Width = 232
          Height = 17
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Visible = False
        end
        object cbRS4851BaudRate: TComboBox
          Left = 170
          Top = 84
          Width = 70
          Height = 21
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 3
          ParentFont = False
          TabOrder = 3
          Text = '9600'
          OnChange = cbRS4851BaudRateChange
          Items.Strings = (
            '1200'
            '2400'
            '4800'
            '9600'
            '19200')
        end
        object edRS4851Description: TEdit
          Left = 8
          Top = 130
          Width = 232
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Text = '123456789012345678901234567890123456789012345678901234567890'
          OnChange = edRS4851DescriptionChange
        end
      end
      object gbEthernet: TGroupBox
        Left = 272
        Top = 256
        Width = 249
        Height = 217
        Caption = 'Ethernet communication'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 4
        object rbEthernetNotInUse: TRadioButton
          Left = 9
          Top = 16
          Width = 232
          Height = 17
          Caption = 'Not in use'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
          OnClick = rbEthernetUsageClick
        end
        object rbEthernetUseDHCP: TRadioButton
          Tag = 1
          Left = 8
          Top = 38
          Width = 232
          Height = 17
          Caption = 'Obtain address from DHCP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = rbEthernetUsageClick
        end
        object rbEthernetStatic: TRadioButton
          Tag = 2
          Left = 8
          Top = 58
          Width = 232
          Height = 17
          Caption = 'Use following static settings'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = rbEthernetUsageClick
        end
        object IPSettingsPanel: TPanel
          Left = 3
          Top = 80
          Width = 243
          Height = 90
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object lblPanelIpAddress: TLabel
            Left = 6
            Top = 10
            Width = 80
            Height = 13
            Caption = 'Panel IP address'
          end
          object lblSubnetMask: TLabel
            Left = 6
            Top = 36
            Width = 61
            Height = 13
            Caption = 'Subnet mask'
          end
          object lblGatewayAddress: TLabel
            Left = 6
            Top = 62
            Width = 84
            Height = 13
            Caption = 'Gateway address'
          end
          object medPanelIpAddress: TMaskEdit
            Left = 124
            Top = 8
            Width = 112
            Height = 20
            EditMask = '!999.999.999.999;1; '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Sans Typewriter'
            Font.Style = []
            MaxLength = 15
            ParentFont = False
            TabOrder = 0
            Text = '   .   .   .   '
            OnExit = medPanelIpAddressExit
          end
          object medNetworkSubnetMask: TMaskEdit
            Left = 124
            Top = 34
            Width = 112
            Height = 20
            EditMask = '!999.999.999.999;1; '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Sans Typewriter'
            Font.Style = []
            MaxLength = 15
            ParentFont = False
            TabOrder = 1
            Text = '   .   .   .   '
            OnExit = medNetworkSubnetMaskExit
          end
          object medGatewayAddress: TMaskEdit
            Left = 124
            Top = 60
            Width = 112
            Height = 20
            EditMask = '!999.999.999.999;1; '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Sans Typewriter'
            Font.Style = []
            MaxLength = 15
            ParentFont = False
            TabOrder = 2
            Text = '   .   .   .   '
            OnExit = medGatewayAddressExit
          end
        end
      end
      object rbAllowFireXpertConnection: TRadioButton
        Tag = 1
        Left = 291
        Top = 425
        Width = 220
        Height = 17
        Caption = 'Allow FireXpert Connection'
        TabOrder = 5
        OnClick = rbIPApplicationsClick
      end
      object rbAllowRemoteConfiguration: TRadioButton
        Tag = 2
        Left = 291
        Top = 446
        Width = 220
        Height = 18
        Caption = 'Allow Remote Configuration (Unsecure)'
        TabOrder = 6
        OnClick = rbIPApplicationsClick
      end
    end
    object IdentificationSheet: TTabSheet
      Caption = 'Identifications'
      ImageIndex = 2
      ExplicitHeight = 454
      object gbPanelID: TGroupBox
        Left = 8
        Top = 16
        Width = 249
        Height = 49
        Caption = 'Panel ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object lbThisPanelID: TLabel
          Left = 8
          Top = 24
          Width = 70
          Height = 13
          Caption = 'This panels ID '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object speThisPanelID: TSpinEdit
          Left = 184
          Top = 16
          Width = 57
          Height = 22
          EditorEnabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 2
          MaxValue = 32
          MinValue = 0
          ParentFont = False
          TabOrder = 0
          Value = 0
          OnChange = speThisPanelIDChange
        end
      end
      object gbDetectionZones: TGroupBox
        Left = 272
        Top = 16
        Width = 249
        Height = 129
        Caption = 'Detection zones '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object lbFirstZoneID: TLabel
          Left = 8
          Top = 24
          Width = 64
          Height = 13
          Caption = 'First zone ID '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbNumOfZones: TLabel
          Left = 8
          Top = 48
          Width = 81
          Height = 13
          Caption = 'Number of zones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbLastZoneID: TLabel
          Left = 8
          Top = 72
          Width = 63
          Height = 13
          Caption = 'Last zone ID '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object speFirstZoneID: TSpinEdit
          Left = 184
          Top = 16
          Width = 57
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 4
          MaxValue = 9999
          MinValue = 1
          ParentFont = False
          TabOrder = 0
          Value = 1
          OnChange = speFirstZoneIDChange
        end
        object speNumOfZones: TSpinEdit
          Left = 184
          Top = 40
          Width = 57
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 4
          MaxValue = 250
          MinValue = 1
          ParentFont = False
          TabOrder = 1
          Value = 16
          OnChange = speNumOfZonesChange
        end
        object edLastZoneID: TEdit
          Left = 184
          Top = 64
          Width = 40
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          Text = '16'
        end
        object cbRetainZoneIDs: TCheckBox
          Left = 8
          Top = 90
          Width = 190
          Height = 33
          Alignment = taLeftJustify
          Caption = 'Retain zone IDs of already defined addresses'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          WordWrap = True
          OnClick = cbRetainZoneIDsClick
        end
      end
      object gbVisiblePanels: TGroupBox
        Left = 8
        Top = 151
        Width = 513
        Height = 96
        Caption = 'Panels visible by this panel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        object clVisiblePanels: TCheckListBox
          Left = 8
          Top = 26
          Width = 497
          Height = 60
          OnClickCheck = clVisiblePanelsClickCheck
          Columns = 8
          Constraints.MaxHeight = 64
          Constraints.MaxWidth = 500
          Constraints.MinHeight = 60
          Constraints.MinWidth = 497
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          IntegralHeight = True
          ItemHeight = 14
          Items.Strings = (
            '01'
            '02'
            '03'
            '04'
            '05'
            '06'
            '07'
            '08'
            '09'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15'
            '16'
            '17'
            '18'
            '19'
            '20'
            '21'
            '22'
            '23'
            '24'
            '25'
            '26'
            '27'
            '28'
            '29'
            '30'
            '31'
            '32')
          ParentCtl3D = False
          ParentFont = False
          Style = lbOwnerDrawFixed
          TabOrder = 0
        end
      end
      object gbLastLocalCZ: TGroupBox
        Left = 8
        Top = 72
        Width = 249
        Height = 49
        Caption = 'Local / Shared control groups'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        object lbLastLocalCZ: TLabel
          Left = 6
          Top = 24
          Width = 114
          Height = 13
          Caption = 'Last Local control group'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object speLastLocalCZ: TSpinEdit
          Left = 184
          Top = 16
          Width = 57
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxValue = 250
          MinValue = 0
          ParentFont = False
          TabOrder = 0
          Value = 100
          OnChange = speLastLocalCZChange
        end
      end
    end
    object LCSheet: TTabSheet
      Caption = 'Loop controllers'
      ImageIndex = 6
      ExplicitHeight = 454
      object gbLC1: TGroupBox
        Left = 8
        Top = 16
        Width = 249
        Height = 186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object lbLC1Type: TLabel
          Left = 8
          Top = 24
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbLC1FirstLoop: TLabel
          Left = 8
          Top = 52
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbLC1NumOfLoops: TLabel
          Left = 8
          Top = 76
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbLC1LastLoop: TLabel
          Left = 8
          Top = 100
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbLC1StartDelay2: TLabel
          Left = 8
          Top = 156
          Width = 105
          Height = 13
          Caption = 'Startup delay for loop'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbLC1StartDelay1: TLabel
          Left = 8
          Top = 128
          Width = 105
          Height = 13
          Caption = 'Startup delay for loop'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cbLC1Type: TComboBox
          Tag = 1
          Left = 80
          Top = 20
          Width = 161
          Height = 21
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = 'Not configured'
          OnChange = cbLCTypeChange
          Items.Strings = (
            'Not configured'
            'System Sensor 2-loop'
            '(System Sensor 1-loop)'
            'Conventional 16 zone'
            'Intellia 2-loop'
            'Intellia 1-loop')
        end
        object speLC1FirstLoop: TSpinEdit
          Left = 192
          Top = 48
          Width = 49
          Height = 26
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 3
          MaxValue = 255
          MinValue = 0
          ParentFont = False
          TabOrder = 1
          Value = 0
          OnChange = speLC1FirstLoopChange
        end
        object edLC1LastLoop: TEdit
          Left = 192
          Top = 100
          Width = 33
          Height = 22
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          Text = '0'
        end
        object edLC1NumOfLoops: TEdit
          Left = 192
          Top = 76
          Width = 33
          Height = 22
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          Text = '0'
        end
        object speLC1StartDelay1: TSpinEdit
          Tag = 11
          Left = 192
          Top = 124
          Width = 49
          Height = 26
          AutoSize = False
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxValue = 30
          MinValue = 0
          ParentFont = False
          TabOrder = 4
          Value = 0
          OnChange = speLCStartDelayChange
        end
        object speLC1StartDelay2: TSpinEdit
          Tag = 12
          Left = 192
          Top = 152
          Width = 49
          Height = 26
          AutoSize = False
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxValue = 30
          MinValue = 0
          ParentFont = False
          TabOrder = 5
          Value = 0
          OnChange = speLCStartDelayChange
        end
      end
      object gbLC2: TGroupBox
        Left = 8
        Top = 208
        Width = 249
        Height = 192
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object lbLC2Type: TLabel
          Left = 8
          Top = 24
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbLC2FirstLoop: TLabel
          Left = 8
          Top = 52
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbLC2NumOfLoops: TLabel
          Left = 8
          Top = 76
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbLC2LastLoop: TLabel
          Left = 8
          Top = 100
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbLC2StartDelay2: TLabel
          Left = 8
          Top = 156
          Width = 105
          Height = 13
          Caption = 'Startup delay for loop'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbLC2StartDelay1: TLabel
          Left = 8
          Top = 128
          Width = 105
          Height = 13
          Caption = 'Startup delay for loop'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cbLC2Type: TComboBox
          Tag = 2
          Left = 80
          Top = 20
          Width = 161
          Height = 21
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = 'Not configured'
          OnChange = cbLCTypeChange
          Items.Strings = (
            'Not configured'
            'System Sensor 2-loop'
            '(System Sensor 1-loop)'
            'Conventional 16 zone'
            'Intellia 2-loop'
            'Intellia 1-loop')
        end
        object edLC2LastLoop: TEdit
          Left = 192
          Top = 100
          Width = 33
          Height = 22
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Text = '0'
        end
        object edLC2NumOfLoops: TEdit
          Left = 192
          Top = 76
          Width = 33
          Height = 22
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          Text = '0'
        end
        object speLC2StartDelay2: TSpinEdit
          Tag = 22
          Left = 192
          Top = 152
          Width = 49
          Height = 26
          AutoSize = False
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxValue = 30
          MinValue = 0
          ParentFont = False
          TabOrder = 3
          Value = 0
          OnChange = speLCStartDelayChange
        end
        object speLC2StartDelay1: TSpinEdit
          Tag = 21
          Left = 192
          Top = 124
          Width = 49
          Height = 26
          AutoSize = False
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxValue = 30
          MinValue = 0
          ParentFont = False
          TabOrder = 4
          Value = 0
          OnChange = speLCStartDelayChange
        end
        object edLC2FirstLoop: TEdit
          Left = 192
          Top = 52
          Width = 33
          Height = 22
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          Text = '0'
        end
      end
      object gbLC3: TGroupBox
        Left = 272
        Top = 16
        Width = 249
        Height = 186
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        object lbLC3Type: TLabel
          Left = 8
          Top = 24
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbLC3FirstLoop: TLabel
          Left = 8
          Top = 52
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbLC3NumOfLoops: TLabel
          Left = 8
          Top = 76
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbLC3LastLoop: TLabel
          Left = 8
          Top = 100
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbLC3StartDelay1: TLabel
          Left = 8
          Top = 128
          Width = 105
          Height = 13
          Caption = 'Startup delay for loop'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbLC3StartDelay2: TLabel
          Left = 8
          Top = 156
          Width = 105
          Height = 13
          Caption = 'Startup delay for loop'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cbLC3Type: TComboBox
          Tag = 3
          Left = 80
          Top = 20
          Width = 161
          Height = 21
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = 'Not configured'
          OnChange = cbLCTypeChange
          Items.Strings = (
            'Not configured'
            'System Sensor 2-loop'
            '(System Sensor 1-loop)'
            'Conventional 16 zone'
            'Intellia 2-loop'
            'Intellia 1-loop')
        end
        object edLC3LastLoop: TEdit
          Left = 192
          Top = 100
          Width = 33
          Height = 22
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Text = '0'
        end
        object edLC3NumOfLoops: TEdit
          Left = 192
          Top = 76
          Width = 33
          Height = 22
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          Text = '0'
        end
        object speLC3StartDelay1: TSpinEdit
          Tag = 31
          Left = 192
          Top = 124
          Width = 49
          Height = 26
          AutoSize = False
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxValue = 30
          MinValue = 0
          ParentFont = False
          TabOrder = 3
          Value = 0
          OnChange = speLCStartDelayChange
        end
        object speLC3StartDelay2: TSpinEdit
          Tag = 32
          Left = 192
          Top = 152
          Width = 49
          Height = 26
          AutoSize = False
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxValue = 30
          MinValue = 0
          ParentFont = False
          TabOrder = 4
          Value = 0
          OnChange = speLCStartDelayChange
        end
        object edLC3FirstLoop: TEdit
          Left = 192
          Top = 52
          Width = 33
          Height = 22
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          Text = '0'
        end
      end
      object gbLC4: TGroupBox
        Left = 272
        Top = 208
        Width = 249
        Height = 192
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        object lbLC4Type: TLabel
          Left = 8
          Top = 24
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbLC4FirstLoop: TLabel
          Left = 8
          Top = 52
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbLC4NumOfLoops: TLabel
          Left = 8
          Top = 76
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbLC4LastLoop: TLabel
          Left = 8
          Top = 100
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbLC4StartDelay2: TLabel
          Left = 8
          Top = 156
          Width = 105
          Height = 13
          Caption = 'Startup delay for loop'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbLC4StartDelay1: TLabel
          Left = 8
          Top = 128
          Width = 105
          Height = 13
          Caption = 'Startup delay for loop'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cbLC4Type: TComboBox
          Tag = 4
          Left = 80
          Top = 20
          Width = 161
          Height = 21
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = 'Not configured'
          OnChange = cbLCTypeChange
          Items.Strings = (
            'Not configured'
            'System Sensor 2-loop'
            '(System Sensor 1-loop)'
            'Conventional 16 zone'
            'Intellia 2-loop'
            'Intellia 1-loop')
        end
        object edLC4LastLoop: TEdit
          Left = 192
          Top = 100
          Width = 33
          Height = 22
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Text = '0'
        end
        object edLC4NumOfLoops: TEdit
          Left = 192
          Top = 76
          Width = 33
          Height = 22
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          Text = '0'
        end
        object speLC4StartDelay2: TSpinEdit
          Tag = 42
          Left = 192
          Top = 152
          Width = 49
          Height = 26
          AutoSize = False
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxValue = 30
          MinValue = 0
          ParentFont = False
          TabOrder = 3
          Value = 0
          OnChange = speLCStartDelayChange
        end
        object speLC4StartDelay1: TSpinEdit
          Tag = 41
          Left = 192
          Top = 124
          Width = 49
          Height = 26
          AutoSize = False
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxValue = 30
          MinValue = 0
          ParentFont = False
          TabOrder = 4
          Value = 0
          OnChange = speLCStartDelayChange
        end
        object edLC4FirstLoop: TEdit
          Left = 192
          Top = 52
          Width = 33
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          Text = '0'
        end
      end
    end
    object ControlOutputsSheet: TTabSheet
      Caption = 'Control outputs'
      ImageIndex = 9
      ExplicitHeight = 454
      object gbFiredoorControl: TGroupBox
        Left = 8
        Top = 16
        Width = 249
        Height = 328
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object cbFDPrewarning: TCheckBox
          Tag = 2
          Left = 8
          Top = 56
          Width = 224
          Height = 17
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = FireDoorControlClick
        end
        object cbFDAddressFault: TCheckBox
          Tag = 3
          Left = 8
          Top = 80
          Width = 224
          Height = 17
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = FireDoorControlClick
        end
        object cbFDAddressDisablement: TCheckBox
          Tag = 4
          Left = 8
          Top = 104
          Width = 224
          Height = 17
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = FireDoorControlClick
        end
        object cbFDZoneDisablement: TCheckBox
          Tag = 5
          Left = 8
          Top = 128
          Width = 224
          Height = 17
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = FireDoorControlClick
        end
        object cbFDMainsOff: TCheckBox
          Tag = 6
          Left = 8
          Top = 152
          Width = 224
          Height = 17
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = FireDoorControlClick
        end
        object cbFDFireAlarm: TCheckBox
          Tag = 1
          Left = 8
          Top = 32
          Width = 224
          Height = 17
          Alignment = taLeftJustify
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 5
          OnClick = FireDoorControlClick
        end
        object gbSensorInputDisablement: TGroupBox
          Left = 8
          Top = 180
          Width = 235
          Height = 138
          Caption = 'Fire door functionality ...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          object lbSensorInputDisablement: TLabel
            Left = 8
            Top = 16
            Width = 155
            Height = 13
            Caption = '... when sensor input is disabled'
          end
          object rb1NotBySensorInputDisablement: TRadioButton
            Left = 8
            Top = 42
            Width = 217
            Height = 17
            Alignment = taLeftJustify
            Caption = 'No fire door control'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = True
            OnClick = FireDoorControlClick
          end
          object rb2BySensorInputDisablement: TRadioButton
            Tag = 1
            Left = 8
            Top = 66
            Width = 217
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Fire door controls activated'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = FireDoorControlClick
          end
          object rb3TechAlarmFromDisabledInput: TRadioButton
            Tag = 2
            Left = 8
            Top = 86
            Width = 217
            Height = 49
            Alignment = taLeftJustify
            Caption = 
              'Technical alarm when disabled input gives alarm + fire door cont' +
              'rols activated '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            WordWrap = True
            OnClick = FireDoorControlClick
          end
        end
      end
      object gbActivationOfSilencedAlarms: TGroupBox
        Left = 272
        Top = 16
        Width = 249
        Height = 56
        Caption = 'Re-activation of silenced alarm devices ... '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object cbResoundOnNewAlarm: TCheckBox
          Left = 8
          Top = 32
          Width = 225
          Height = 17
          Alignment = taLeftJustify
          Caption = 'by a new fire alarm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = cbResoundOnNewAlarmClick
        end
      end
      object gbDeactivateRouters: TGroupBox
        Left = 272
        Top = 82
        Width = 249
        Height = 56
        Caption = 'De-activation of alarm transmitters ... '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        object cbRouterOffAtSilence: TCheckBox
          Left = 8
          Top = 32
          Width = 225
          Height = 17
          Alignment = taLeftJustify
          Caption = 'at alarm silence'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = cbRouterOffAtSilenceClick
        end
      end
    end
    object MCSheet: TTabSheet
      Caption = 'MC IO Setup'
      ImageIndex = 7
      ExplicitHeight = 454
      DesignSize = (
        701
        564)
      object gbMCIO: TGroupBox
        Left = 0
        Top = 16
        Width = 618
        Height = 310
        Anchors = [akLeft, akTop, akRight]
        Caption = 'MC IO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          618
          310)
        object lbCCIMC: TLabel
          Left = 8
          Top = 24
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbCCOMC: TLabel
          Left = 8
          Top = 120
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbADOMC: TLabel
          Left = 8
          Top = 237
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object CCIGridMC: TStringGrid
          Left = 8
          Top = 40
          Width = 602
          Height = 63
          Anchors = [akLeft, akTop, akRight]
          ColCount = 8
          DefaultRowHeight = 19
          RowCount = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing, goTabs]
          ParentFont = False
          ScrollBars = ssNone
          TabOrder = 0
          OnClick = CCIGridClick
          OnKeyPress = IOGridKeyPress
          OnMouseDown = CCIGridMouseDown
          OnSetEditText = CCIGridSetEditText
          ColWidths = (
            40
            120
            60
            60
            60
            60
            182
            64)
        end
        object CCOGridMC: TStringGrid
          Left = 8
          Top = 136
          Width = 602
          Height = 83
          Anchors = [akLeft, akTop, akRight]
          ColCount = 4
          DefaultRowHeight = 19
          RowCount = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing, goTabs]
          ParentFont = False
          ScrollBars = ssNone
          TabOrder = 1
          OnClick = CCOGridClick
          OnKeyPress = IOGridKeyPress
          OnMouseDown = CCOGridMouseDown
          OnSetEditText = CCOGridSetEditText
          ColWidths = (
            40
            120
            242
            186)
        end
        object ADOGridMC: TStringGrid
          Left = 8
          Top = 253
          Width = 602
          Height = 43
          Anchors = [akLeft, akTop, akRight]
          ColCount = 6
          DefaultRowHeight = 19
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing, goTabs]
          ParentFont = False
          ScrollBars = ssNone
          TabOrder = 2
          OnClick = ADOGridClick
          OnKeyPress = IOGridKeyPress
          OnMouseDown = ADOGridMouseDown
          OnSetEditText = ADOGridSetEditText
          ColWidths = (
            40
            120
            80
            80
            131
            138)
        end
      end
    end
    object IOCSheet: TTabSheet
      Caption = 'IO Controllers'
      ImageIndex = 8
      ExplicitHeight = 454
      DesignSize = (
        701
        564)
      object gbIOC: TGroupBox
        Left = 0
        Top = 16
        Width = 618
        Height = 409
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          618
          409)
        object lbCCI: TLabel
          Left = 8
          Top = 40
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbCCO: TLabel
          Left = 8
          Top = 176
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object lbADO: TLabel
          Left = 8
          Top = 272
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object lbType: TLabel
          Left = 344
          Top = 24
          Width = 3
          Height = 13
          Anchors = [akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 336
        end
        object ADOGrid: TStringGrid
          Left = 8
          Top = 288
          Width = 602
          Height = 105
          Anchors = [akLeft, akTop, akRight]
          ColCount = 6
          DefaultRowHeight = 19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing, goTabs]
          ParentFont = False
          ScrollBars = ssNone
          TabOrder = 0
          Visible = False
          OnClick = ADOGridClick
          OnKeyPress = IOGridKeyPress
          OnMouseDown = ADOGridMouseDown
          OnSetEditText = ADOGridSetEditText
          ColWidths = (
            40
            120
            80
            82
            136
            128)
        end
        object CCOGrid: TStringGrid
          Left = 8
          Top = 192
          Width = 602
          Height = 65
          Anchors = [akLeft, akTop, akRight]
          ColCount = 4
          DefaultRowHeight = 19
          RowCount = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing, goTabs]
          ParentFont = False
          ScrollBars = ssNone
          TabOrder = 1
          Visible = False
          OnClick = CCOGridClick
          OnKeyPress = IOGridKeyPress
          OnMouseDown = CCOGridMouseDown
          OnSetEditText = CCOGridSetEditText
          ColWidths = (
            40
            120
            242
            186)
        end
        object CCIGrid: TStringGrid
          Left = 8
          Top = 56
          Width = 602
          Height = 105
          Anchors = [akLeft, akTop, akRight]
          ColCount = 8
          Ctl3D = True
          DefaultRowHeight = 19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing, goTabs]
          ParentCtl3D = False
          ParentFont = False
          ScrollBars = ssNone
          TabOrder = 2
          Visible = False
          OnClick = CCIGridClick
          OnKeyPress = IOGridKeyPress
          OnMouseDown = CCIGridMouseDown
          OnSetEditText = CCIGridSetEditText
          ColWidths = (
            40
            120
            80
            80
            80
            186
            64
            64)
        end
        object speCurrentIOC: TSpinEdit
          Left = 8
          Top = 16
          Width = 65
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxValue = 4
          MinValue = 1
          ParentFont = False
          TabOrder = 3
          Value = 1
          OnChange = speCurrentIOCChange
        end
        object IOCTypeSelection: TComboBox
          Left = 442
          Top = 16
          Width = 160
          Height = 21
          Style = csDropDownList
          Anchors = [akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnChange = IOCTypeSelectionChange
          Items.Strings = (
            'Not configured'
            'IOC Input Output Controller'
            'OCA Relay Output Controller')
        end
      end
    end
    object DelaySheet: TTabSheet
      Caption = 'Delayed outputs'
      ImageIndex = 3
      ExplicitHeight = 454
      object gbFXDelayedOutputs: TGroupBox
        Left = 8
        Top = 16
        Width = 472
        Height = 153
        Caption = 'Delayed alarm outputs'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object cbFireCODelayed: TCheckBox
          Left = 151
          Top = 114
          Width = 290
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Fire Control Outputs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = cbFireCODelayedClick
        end
        object cbFireARDelayed: TCheckBox
          Left = 151
          Top = 18
          Width = 290
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Fire Alarm Transmitter'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 1
          OnClick = cbFireARDelayedClick
        end
        object gbFireAlarmDevices: TGroupBox
          Left = 144
          Top = 42
          Width = 305
          Height = 65
          Caption = 'Fire Alarm Devices ...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 2
          object cbZonFireADDelayed: TCheckBox
            Left = 7
            Top = 40
            Width = 290
            Height = 17
            Alignment = taLeftJustify
            Caption = '... controlled by Ctrl B, CtrlB2 and as General'
            TabOrder = 0
            OnClick = cbZonFireADDelayedClick
          end
          object cbGenFireADDelayed: TCheckBox
            Left = 7
            Top = 16
            Width = 290
            Height = 17
            Alignment = taLeftJustify
            Caption = '... controlled by Ctrl A, Ctrl B, Ctrl B2 and as General'
            TabOrder = 1
            OnClick = cbGenFireADDelayedClick
          end
        end
        object gbDelayTimes: TGroupBox
          Left = 8
          Top = 20
          Width = 121
          Height = 119
          Caption = 'Delay times'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object lbT1: TLabel
            Left = 8
            Top = 40
            Width = 12
            Height = 13
            Caption = 'T1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbT2: TLabel
            Left = 8
            Top = 88
            Width = 12
            Height = 13
            Caption = 'T2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object speFXDelayT1: TSpinEdit
            Left = 48
            Top = 32
            Width = 46
            Height = 22
            AutoSelect = False
            EditorEnabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Increment = 10
            MaxLength = 2
            MaxValue = 300
            MinValue = 0
            ParentFont = False
            TabOrder = 0
            Value = 0
            OnChange = speFXDelayT1Change
          end
          object speFXDelayT2: TSpinEdit
            Left = 48
            Top = 80
            Width = 47
            Height = 22
            AutoSelect = False
            EditorEnabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Increment = 10
            MaxLength = 3
            MaxValue = 600
            MinValue = 0
            ParentFont = False
            TabOrder = 1
            Value = 0
            OnChange = speFXDelayT2Change
          end
        end
      end
      object gbDelayIndication: TGroupBox
        Left = 8
        Top = 376
        Width = 472
        Height = 57
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object cbDelayIndication: TCheckBox
          Left = 8
          Top = 24
          Width = 441
          Height = 17
          BiDiMode = bdLeftToRight
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          State = cbChecked
          TabOrder = 0
          OnClick = cbDelayIndicationClick
        end
      end
      object rgDelayTerminationND: TRadioGroup
        Left = 8
        Top = 280
        Width = 472
        Height = 89
        Caption = 'Delay termination for non-delayed second alarm'
        ItemIndex = 3
        Items.Strings = (
          'Do not terminate delay at second non-delayed alarm'
          'Terminate delay at second non-delayed alarm in same zone'
          
            'Terminate delay at second non-delayed alarm in any zone of same ' +
            'panel'
          'Terminate delay at second non-delayed alarm in any visible panel')
        ParentBackground = False
        TabOrder = 2
        OnClick = rgDelayTerminationNDClick
      end
      object rgDelayTermination: TRadioGroup
        Left = 8
        Top = 179
        Width = 472
        Height = 89
        Caption = 'Delay termination for a delayed second alarm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Do not terminate delay at second delayed alarm'
          'Terminate delay at second delayed alarm in same zone'
          
            'Terminate delay at second delayed alarm in any zone of same pane' +
            'l'
          'Terminate delay at second delayed alarm in any visible panel')
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        WordWrap = True
        OnClick = rgDelayTerminationClick
      end
    end
    object PrintAndLogSheet: TTabSheet
      Caption = 'Print and Log'
      ImageIndex = 8
      ExplicitHeight = 454
      object gbPrintAndLog: TGroupBox
        Left = 8
        Top = 16
        Width = 512
        Height = 321
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object lbStartupEvents: TLabel
          Left = 14
          Top = 235
          Width = 204
          Height = 13
          Caption = 'Startup events and event register clearing'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbPrint: TLabel
          Left = 440
          Top = 56
          Width = 22
          Height = 13
          Caption = 'Print'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbRecord: TLabel
          Left = 360
          Top = 56
          Width = 34
          Height = 13
          Caption = 'Record'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbFireEvents: TLabel
          Left = 14
          Top = 85
          Width = 171
          Height = 13
          Caption = 'Fire alarm, silence and reset events'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbPrewarningEvents: TLabel
          Left = 14
          Top = 110
          Width = 166
          Height = 13
          Caption = 'Prealarm, silence and reset events'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbFaultEvents: TLabel
          Left = 14
          Top = 135
          Width = 267
          Height = 13
          Caption = 'Fault and Maintenance alarms, silence and reset events'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbDisablementEvents: TLabel
          Left = 14
          Top = 160
          Width = 247
          Height = 13
          Caption = 'Disablement and re-enablement, test on/off events'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbAccessEvents: TLabel
          Left = 14
          Top = 185
          Width = 188
          Height = 13
          Caption = 'Access level 1 -> 2 and 2 -> 1 changes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbIOEvents: TLabel
          Left = 14
          Top = 210
          Width = 146
          Height = 13
          Caption = 'Input / Output status changes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbStatusUpdateEvents: TLabel
          Left = 14
          Top = 260
          Width = 257
          Height = 13
          Caption = 'Status updates (after communication has been down)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cbPrintFireAlarms: TCheckBox
          Left = 445
          Top = 85
          Width = 15
          Height = 17
          Alignment = taLeftJustify
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 0
          OnClick = cbPrintEventClick
        end
        object cbLogFireAlarms: TCheckBox
          Left = 365
          Top = 85
          Width = 15
          Height = 17
          Alignment = taLeftJustify
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 1
          OnClick = cbLogEventClick
        end
        object cbPrintPrewarnings: TCheckBox
          Tag = 1
          Left = 445
          Top = 110
          Width = 15
          Height = 17
          Alignment = taLeftJustify
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 2
          OnClick = cbPrintEventClick
        end
        object cbLogPrewarnings: TCheckBox
          Tag = 1
          Left = 365
          Top = 110
          Width = 15
          Height = 17
          Alignment = taLeftJustify
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 3
          OnClick = cbLogEventClick
        end
        object cbPrintFaultwarnings: TCheckBox
          Tag = 2
          Left = 445
          Top = 135
          Width = 15
          Height = 17
          Alignment = taLeftJustify
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 4
          OnClick = cbPrintEventClick
        end
        object cbLogFaultwarnings: TCheckBox
          Tag = 2
          Left = 365
          Top = 135
          Width = 15
          Height = 17
          Alignment = taLeftJustify
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 5
          OnClick = cbLogEventClick
        end
        object cbPrintDisablements: TCheckBox
          Tag = 3
          Left = 445
          Top = 160
          Width = 15
          Height = 17
          Alignment = taLeftJustify
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 6
          OnClick = cbPrintEventClick
        end
        object cbLogDisablements: TCheckBox
          Tag = 3
          Left = 365
          Top = 160
          Width = 15
          Height = 17
          Alignment = taLeftJustify
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 7
          OnClick = cbLogEventClick
        end
        object cbPrintAccesslevels: TCheckBox
          Tag = 4
          Left = 445
          Top = 185
          Width = 15
          Height = 17
          Alignment = taLeftJustify
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 8
          OnClick = cbPrintEventClick
        end
        object cbLogAccesslevels: TCheckBox
          Tag = 4
          Left = 365
          Top = 185
          Width = 15
          Height = 17
          Alignment = taLeftJustify
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 9
          OnClick = cbLogEventClick
        end
        object cbPrintIOChanges: TCheckBox
          Tag = 5
          Left = 445
          Top = 210
          Width = 15
          Height = 17
          Alignment = taLeftJustify
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 10
          OnClick = cbPrintEventClick
        end
        object cbLogIOChanges: TCheckBox
          Tag = 5
          Left = 365
          Top = 210
          Width = 15
          Height = 17
          Alignment = taLeftJustify
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 11
          OnClick = cbLogEventClick
        end
        object cbPrintStartupEvents: TCheckBox
          Tag = 6
          Left = 445
          Top = 235
          Width = 15
          Height = 17
          Alignment = taLeftJustify
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 12
          OnClick = cbPrintEventClick
        end
        object cbLogStartupEvents: TCheckBox
          Tag = 6
          Left = 365
          Top = 235
          Width = 15
          Height = 17
          Alignment = taLeftJustify
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 13
          OnClick = cbLogEventClick
        end
        object cbPrintStatusUpdates: TCheckBox
          Tag = 7
          Left = 445
          Top = 260
          Width = 15
          Height = 17
          Alignment = taLeftJustify
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          OnClick = cbPrintEventClick
        end
        object cbLogStatusUpdates: TCheckBox
          Tag = 7
          Left = 365
          Top = 260
          Width = 15
          Height = 17
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
          OnClick = cbLogEventClick
        end
      end
    end
    object SpecialAlarmsSheet: TTabSheet
      Caption = 'Special alarms'
      ImageIndex = 11
      ExplicitHeight = 454
      object gbOldCoincidence: TGroupBox
        Left = 8
        Top = 16
        Width = 249
        Height = 121
        Caption = 'Single co-incidence alarm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object lbOldCoincidence: TLabel
          Left = 8
          Top = 48
          Width = 225
          Height = 33
          AutoSize = False
          Caption = '(Prevents EN54 requirement of raising an alarm)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object lbCoincidenceAutoReset: TLabel
          Left = 8
          Top = 88
          Width = 178
          Height = 30
          AutoSize = False
          Caption = 'Autoreset time in minutes 1..5 (default=5)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object cbOldCoincidence: TCheckBox
          Left = 8
          Top = 16
          Width = 225
          Height = 33
          Alignment = taLeftJustify
          Caption = 
            'Single co-incidence detector will not activate fire alarm after ' +
            '3 minutes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          WordWrap = True
          OnClick = cbOldCoincidenceClick
        end
        object speCoincidenceAutoReset: TSpinEdit
          Left = 192
          Top = 90
          Width = 41
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxValue = 5
          MinValue = 1
          ParentFont = False
          TabOrder = 1
          Value = 5
          OnChange = speCoincidenceAutoResetChange
        end
      end
      object gbSecondCoIncidence: TGroupBox
        Left = 8
        Top = 147
        Width = 249
        Height = 89
        Caption = 'Second co-incidence alarm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object lbSecondCoIncidence: TLabel
          Left = 8
          Top = 20
          Width = 225
          Height = 33
          AutoSize = False
          Caption = 'Activate fire alarm by second co-incidence alarm ...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object rbSameZone: TRadioButton
          Left = 8
          Top = 47
          Width = 225
          Height = 17
          Alignment = taLeftJustify
          Caption = '... in the same zone'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
          OnClick = rgCoincidenceDelClick
        end
        object rbSamePanel: TRadioButton
          Tag = 1
          Left = 8
          Top = 67
          Width = 225
          Height = 17
          Alignment = taLeftJustify
          Caption = '... in the same panel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = rgCoincidenceDelClick
        end
      end
      object gbConfiguredPrealarm: TGroupBox
        Left = 8
        Top = 346
        Width = 249
        Height = 47
        Caption = 'Configured pre-alarm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        object cbPrealarmBlinkRate: TCheckBox
          Left = 8
          Top = 16
          Width = 225
          Height = 28
          Alignment = taLeftJustify
          Caption = 'Indicate with 0.25 Hz blink rate (2 s ON, 2 s OFF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          WordWrap = True
          OnClick = cbPrealarmBlinkRateClick
        end
      end
      object rgAlarmdisplay: TRadioGroup
        Left = 8
        Top = 247
        Width = 249
        Height = 89
        Caption = 'Alarm display'
        Enabled = False
        ItemIndex = 0
        Items.Strings = (
          'Detection zone + address'
          'Detection zone only'
          'No zone display')
        ParentBackground = False
        TabOrder = 3
        OnClick = rgAlarmdisplayClick
      end
    end
    object PowerSupplySheet: TTabSheet
      Caption = 'Power supply'
      ImageIndex = 10
      ExplicitHeight = 454
      object gbBattPackMonitoring: TGroupBox
        Left = 8
        Top = 112
        Width = 249
        Height = 120
        Caption = 'Battery package monitoring'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object cbBattPack1Monitored: TCheckBox
          Tag = 1
          Left = 8
          Top = 20
          Width = 225
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Monitor battery package 1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = cbBattPackMonitoredClick
        end
        object cbBattPack2Monitored: TCheckBox
          Tag = 2
          Left = 8
          Top = 43
          Width = 225
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Monitor battery package 2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = cbBattPackMonitoredClick
        end
        object cbBattPack3Monitored: TCheckBox
          Tag = 3
          Left = 8
          Top = 66
          Width = 225
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Monitor battery package 3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = cbBattPackMonitoredClick
        end
        object cbBattPack4Monitored: TCheckBox
          Tag = 4
          Left = 8
          Top = 89
          Width = 225
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Monitor battery package 4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = cbBattPackMonitoredClick
        end
      end
      object gbMainsFaultDelay: TGroupBox
        Left = 8
        Top = 16
        Width = 249
        Height = 89
        Caption = 'Main supply fault delay (normally 30 min.)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object lbMainsFaultDelay: TLabel
          Left = 120
          Top = 60
          Width = 37
          Height = 13
          Caption = 'Minutes'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object speMainsFaultDelay: TSpinEdit
          Left = 185
          Top = 54
          Width = 50
          Height = 22
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxValue = 30
          MinValue = 0
          ParentFont = False
          TabOrder = 0
          Value = 30
          OnChange = speMainsFaultDelayChange
        end
        object cbMainsFaultDelay: TCheckBox
          Left = 8
          Top = 28
          Width = 225
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Use adjusted delay (0 .. 30 min.)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = cbMainsFaultDelayClick
        end
      end
    end
    object MiscellaneousSheet: TTabSheet
      Caption = 'Miscellaneous'
      ImageIndex = 4
      ExplicitHeight = 454
      object gbZoneDisableTime: TGroupBox
        Left = 272
        Top = 16
        Width = 249
        Height = 56
        Caption = 'Max. time of zonal disablement'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object lbHours: TLabel
          Left = 8
          Top = 32
          Width = 28
          Height = 13
          Caption = 'Hours'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object speZoneDisableTime: TSpinEdit
          Left = 189
          Top = 24
          Width = 50
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxValue = 255
          MinValue = 1
          ParentFont = False
          TabOrder = 0
          Value = 12
          OnChange = speZoneDisableTimeChange
        end
      end
      object gbServiceCodes: TGroupBox
        Left = 8
        Top = 115
        Width = 249
        Height = 89
        Caption = 'Access level codes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object lbSCode1: TLabel
          Left = 16
          Top = 20
          Width = 93
          Height = 13
          Caption = 'Access level 3 code'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbSCode2: TLabel
          Left = 16
          Top = 44
          Width = 93
          Height = 13
          Caption = 'Access level 4 code'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbSCode3: TLabel
          Left = 16
          Top = 68
          Width = 31
          Height = 13
          Caption = 'Code3'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object edServiceCode1: TMaskEdit
          Left = 184
          Top = 15
          Width = 48
          Height = 21
          EditMask = '!0000;0;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 4
          ParentFont = False
          TabOrder = 0
          Text = ''
          OnChange = edServiceCode1Change
        end
        object edServiceCode2: TMaskEdit
          Left = 184
          Top = 39
          Width = 48
          Height = 21
          EditMask = '!0000;0;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 4
          ParentFont = False
          TabOrder = 1
          Text = ''
          OnChange = edServiceCode2Change
        end
        object edServiceCode3: TMaskEdit
          Left = 184
          Top = 63
          Width = 48
          Height = 21
          Enabled = False
          EditMask = '!0000;0;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 4
          ParentFont = False
          TabOrder = 2
          Text = ''
          Visible = False
          OnChange = edServiceCode3Change
        end
      end
      object gbSummertime: TGroupBox
        Left = 8
        Top = 214
        Width = 249
        Height = 56
        Caption = 'Automatic summertime'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        object cbSummertime: TCheckBox
          Left = 8
          Top = 20
          Width = 225
          Height = 17
          Alignment = taLeftJustify
          Caption = ' Use European summertime'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 0
          OnClick = cbSummertimeClick
        end
      end
      object gbPanelLanguage: TGroupBox
        Left = 8
        Top = 16
        Width = 249
        Height = 89
        Caption = 'Panel language'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        object lbPrimaryLanguage: TLabel
          Left = 16
          Top = 28
          Width = 36
          Height = 13
          Caption = 'Primary'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbSecondaryLanguage: TLabel
          Left = 16
          Top = 58
          Width = 51
          Height = 13
          Caption = 'Secondary'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cbPrimaryLanguage: TComboBox
          Left = 120
          Top = 24
          Width = 113
          Height = 21
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = cbPrimaryLanguageChange
          Items.Strings = (
            'English'
            'Finnish'
            'Swedish'
            'Norwegian'
            'Danish'
            'Flemish'
            'French'
            'Spanish'
            'Estonian'
            'Latvian'
            'Lithuanian'
            'Russian'
            'Polish'
            'Italian'
            'Czech'
            'Hungarian'
            'Portugese'
            'Turkish'
            'Dutch')
        end
        object cbSecondaryLanguage: TComboBox
          Left = 120
          Top = 54
          Width = 113
          Height = 21
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = cbSecondaryLanguageChange
          Items.Strings = (
            'English'
            'Finnish'
            'Swedish'
            'Norwegian'
            'Danish'
            'Flemish'
            'French'
            'Spanish'
            'Estonian'
            'Latvian'
            'Lithuanian'
            'Russian'
            'Polish'
            'Italian'
            'Czech'
            'Hungarian'
            'Portugese'
            'Turkish'
            'Dutch')
        end
      end
      object gbMaxAdoDisableTime: TGroupBox
        Left = 272
        Top = 82
        Width = 249
        Height = 56
        Caption = 'Max. time of alarm device muting'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 4
        object lbMinutes: TLabel
          Left = 8
          Top = 31
          Width = 147
          Height = 13
          Caption = 'by Voice Evacuation in minutes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object speMaxAdoDisabTime: TSpinEdit
          Left = 189
          Top = 24
          Width = 50
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxValue = 60
          MinValue = 1
          ParentFont = False
          TabOrder = 0
          Value = 2
          OnChange = speMaxAdoDisabTimeChange
        end
      end
      object gbMaintInterval: TGroupBox
        Left = 8
        Top = 403
        Width = 513
        Height = 46
        Caption = 'Maintenance interval (months) and message'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 5
        object seMaintInterval: TSpinEdit
          Left = 8
          Top = 16
          Width = 50
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxValue = 36
          MinValue = 0
          ParentFont = False
          TabOrder = 0
          Value = 0
          OnChange = seMaintIntervalChange
        end
        object edMaintInterval: TEdit
          Left = 73
          Top = 16
          Width = 426
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 60
          ParentFont = False
          TabOrder = 1
          OnChange = edMaintIntervalChange
        end
      end
      object gbMultiCriteriaLevel6: TGroupBox
        Left = 272
        Top = 148
        Width = 249
        Height = 56
        Caption = 'Day state Level 6 of Multicriteria detectors'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 6
        object cbIndSmokeDetDisabled: TCheckBox
          Left = 8
          Top = 20
          Width = 225
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Indicate as Smoke Detection Disabled'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = cbIndSmokeDetDisabledClick
        end
      end
      object gbIndBuzzerMuted: TGroupBox
        Left = 272
        Top = 214
        Width = 249
        Height = 56
        Caption = 'Muted internal buzzer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 7
        object cbIndBuzzerMuted: TCheckBox
          Left = 8
          Top = 20
          Width = 225
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Indicate with LED in panel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = cbIndBuzzerMutedClick
        end
      end
    end
  end
  object btnOK: TBitBtn
    Left = 9246
    Top = 63
    Width = 80
    Height = 32
    Anchors = [akTop, akRight]
    Kind = bkOK
    NumGlyphs = 2
    Style = bsNew
    TabOrder = 1
    OnClick = btnOKClick
  end
  object btnCancel: TBitBtn
    Left = 9246
    Top = 100
    Width = 80
    Height = 32
    Anchors = [akTop, akRight]
    Kind = bkCancel
    NumGlyphs = 2
    Style = bsNew
    TabOrder = 2
    OnClick = btnCancelClick
  end
  object CCIFunctionPopUpMenu: TPopupMenu
    Left = 616
    Top = 144
    object Notused1: TMenuItem
      Caption = 'Not used'
      OnClick = CCIFunctionPopupMenuClick
    end
    object Faultwarninginput1: TMenuItem
      Tag = 2
      Caption = 'Fault warning input'
      OnClick = CCIFunctionPopupMenuClick
    end
    object Faultinfirealarmrouter1: TMenuItem
      Tag = 3
      Caption = 'Fault in fire alarm router'
      OnClick = CCIFunctionPopupMenuClick
    end
    object Faultinfaultwarningrouter1: TMenuItem
      Tag = 4
      Caption = 'Fault in fault warning router'
      OnClick = CCIFunctionPopupMenuClick
    end
    object Maintenancewarninginput1: TMenuItem
      Tag = 6
      Caption = 'Maintenance warning input'
      OnClick = CCIFunctionPopupMenuClick
    end
    object Technicalalarminput1: TMenuItem
      Tag = 7
      Caption = 'Technical alarm input'
      OnClick = CCIFunctionPopupMenuClick
    end
    object Silenttechnicalalarminput1: TMenuItem
      Tag = 8
      Caption = 'Silent technical alarm input'
      OnClick = CCIFunctionPopupMenuClick
    end
    object LocalEvacuationinput1: TMenuItem
      Tag = 27
      Caption = 'Local Evacuation input'
      OnClick = CCIFunctionPopupMenuClick
    end
    object Evacuationinput1: TMenuItem
      Tag = 1
      Caption = 'Evacuation input'
      OnClick = CCIFunctionPopupMenuClick
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object LocalDayModeactivationinput1: TMenuItem
      Tag = 23
      Caption = 'Local Day Mode activation input'
      OnClick = CCIFunctionPopupMenuClick
    end
    object LocalDelayedAlarmenableinput1: TMenuItem
      Tag = 24
      Caption = 'Local Delayed Alarm enable input'
      OnClick = CCIFunctionPopupMenuClick
    end
    object LocalDayModeandDelayedAlarmenable1: TMenuItem
      Tag = 25
      Caption = 'Local Day Mode and Delayed Alarm enable'
      OnClick = CCIFunctionPopupMenuClick
    end
    object DayModeactivationinput1: TMenuItem
      Tag = 9
      Caption = 'Day Mode activation input'
      OnClick = CCIFunctionPopupMenuClick
    end
    object DelayedAlarmenableinput1: TMenuItem
      Tag = 10
      Caption = 'Delayed Alarm enable input'
      OnClick = CCIFunctionPopupMenuClick
    end
    object DayModeandDelayedAlarmenable1: TMenuItem
      Tag = 11
      Caption = 'Day Mode and Delayed Alarm enable'
      OnClick = CCIFunctionPopupMenuClick
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object StartdelayT2fordelayedalarm1: TMenuItem
      Tag = 20
      Caption = 'Start delay T2 for delayed alarm'
      OnClick = CCIFunctionPopupMenuClick
    end
    object Delayedalarmresetinput1: TMenuItem
      Tag = 21
      Caption = 'Delayed alarm reset input'
      OnClick = CCIFunctionPopupMenuClick
    end
    object GeneralSilenceinput1: TMenuItem
      Tag = 12
      Caption = 'General Silence input'
      OnClick = CCIFunctionPopupMenuClick
    end
    object GeneralResetinput1: TMenuItem
      Tag = 13
      Caption = 'General Reset input'
      OnClick = CCIFunctionPopupMenuClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object LocalAlarmDeviceDisableInput1: TMenuItem
      Tag = 26
      Caption = 'Local Alarm Device disable input'
      OnClick = CCIFunctionPopupMenuClick
    end
    object AlarmDeviceDisableInput1: TMenuItem
      Tag = 22
      Caption = 'Alarm Device disable input'
      OnClick = CCIFunctionPopupMenuClick
    end
    object VoiceEvacuationfaultinput1: TMenuItem
      Tag = 28
      Caption = 'Voice Evacuation fault input'
      OnClick = CCIFunctionPopupMenuClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Faultinextinguisher1: TMenuItem
      Tag = 5
      Caption = 'Fault in extinguisher'
      OnClick = CCIFunctionPopupMenuClick
    end
    object Extinguisheractivatedinput1: TMenuItem
      Tag = 16
      Caption = 'Extinguisher activated input'
      OnClick = CCIFunctionPopupMenuClick
    end
    object Smokeventilationactivatedinput1: TMenuItem
      Tag = 17
      Caption = 'Smokeventilation activated input'
      OnClick = CCIFunctionPopupMenuClick
    end
    object ActivationofcustomerLED11: TMenuItem
      Tag = 18
      Caption = 'Activation of customer LED 1'
      OnClick = CCIFunctionPopupMenuClick
    end
    object ActivationofcustomerLED21: TMenuItem
      Tag = 19
      Caption = 'Activation of customer LED 2'
      OnClick = CCIFunctionPopupMenuClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Internallogicinput1: TMenuItem
      Tag = 14
      Caption = 'Internal logic input'
      OnClick = CCIFunctionPopupMenuClick
    end
    object Externallogicinput1: TMenuItem
      Tag = 15
      Caption = 'External logic input'
      OnClick = CCIFunctionPopupMenuClick
    end
  end
  object CCOFunctionPopupMenu: TPopupMenu
    Left = 616
    Top = 232
    object Notused2: TMenuItem
      Caption = 'Not used'
      OnClick = CCOFunctionPopupMenuClick
    end
    object Firealarmoutput1: TMenuItem
      Tag = 1
      Caption = 'Fire alarm output'
      OnClick = CCOFunctionPopupMenuClick
    end
    object Delayedfirealarmoutput1: TMenuItem
      Tag = 2
      Caption = 'Delayed fire alarm output'
      OnClick = CCOFunctionPopupMenuClick
    end
    object DelayedfirealarmT2output1: TMenuItem
      Tag = 18
      Caption = 'Delayed fire alarm T2 output'
      OnClick = CCOFunctionPopupMenuClick
    end
    object Firedooroutput1: TMenuItem
      Tag = 3
      Caption = 'Fire door output'
      OnClick = CCOFunctionPopupMenuClick
    end
    object Extinguishercontroloutput1: TMenuItem
      Tag = 4
      Caption = 'Extinguisher control output'
      OnClick = CCOFunctionPopupMenuClick
    end
    object Firealarmrouteroutput1: TMenuItem
      Tag = 5
      Caption = 'Fire alarm router output'
      OnClick = CCOFunctionPopupMenuClick
    end
    object FirealarmrouteractivatedLEDoutput1: TMenuItem
      Tag = 17
      Caption = 'Fire alarm router  LED output'
      OnClick = CCOFunctionPopupMenuClick
    end
    object Faultwarningrouteroutput1: TMenuItem
      Tag = 6
      Caption = 'Fault warning router output'
      OnClick = CCOFunctionPopupMenuClick
    end
    object Systemfirealarmrouteroutput1: TMenuItem
      Tag = 7
      Caption = 'System fire alarm router output'
      Enabled = False
      Visible = False
      OnClick = CCOFunctionPopupMenuClick
    end
    object Systemfaultwarningrouteroutput1: TMenuItem
      Tag = 8
      Caption = 'System fault warning router output'
      Enabled = False
      Visible = False
      OnClick = CCOFunctionPopupMenuClick
    end
    object Prewarningoutput1: TMenuItem
      Tag = 9
      Caption = 'Prewarning output'
      OnClick = CCOFunctionPopupMenuClick
    end
    object Faultwarningoutput1: TMenuItem
      Tag = 10
      Caption = 'Fault warning output'
      OnClick = CCOFunctionPopupMenuClick
    end
    object Maintenancewarningoutput1: TMenuItem
      Tag = 11
      Caption = 'Maintenance warning output'
      OnClick = CCOFunctionPopupMenuClick
    end
    object Disablementoutput1: TMenuItem
      Tag = 12
      Caption = 'Disablement output'
      OnClick = CCOFunctionPopupMenuClick
    end
    object Accessleveloutput1: TMenuItem
      Tag = 13
      Caption = 'Access level output'
      OnClick = CCOFunctionPopupMenuClick
    end
    object Technicalalarmoutput1: TMenuItem
      Tag = 14
      Caption = 'Technical alarm output'
      OnClick = CCOFunctionPopupMenuClick
    end
    object Internallogicoutput1: TMenuItem
      Tag = 15
      Caption = 'Internal logic output'
      OnClick = CCOFunctionPopupMenuClick
    end
    object Externallogicoutput1: TMenuItem
      Tag = 16
      Caption = 'External logic output'
      OnClick = CCOFunctionPopupMenuClick
    end
  end
  object ADOMonitoringPopupMenu: TPopupMenu
    Left = 616
    Top = 328
    object Notmonitored1: TMenuItem
      Caption = 'Not monitored'
      OnClick = ADOMonitoringPopupMenuClick
    end
    object Monitored1: TMenuItem
      Tag = 1
      Caption = 'Monitored'
      OnClick = ADOMonitoringPopupMenuClick
    end
  end
  object ADOFunctionPopupMenu: TPopupMenu
    Left = 616
    Top = 280
    object Notused3: TMenuItem
      Caption = 'Not used'
      OnClick = ADOFunctionPopupMenuClick
    end
    object Firealarmdevice1: TMenuItem
      Tag = 1
      Caption = 'Fire alarm device'
      OnClick = ADOFunctionPopupMenuClick
    end
    object Nonsilenceablealarmdevice1: TMenuItem
      Tag = 2
      Caption = 'Non-silenceable alarm device'
      OnClick = ADOFunctionPopupMenuClick
    end
    object Systemwidefirealarmdevices1: TMenuItem
      Tag = 3
      Caption = 'System wide fire alarm devices'
      Enabled = False
      Visible = False
      OnClick = ADOFunctionPopupMenuClick
    end
    object Faultwarningdevice1: TMenuItem
      Tag = 4
      Caption = 'Fault warning device'
      OnClick = ADOFunctionPopupMenuClick
    end
    object Systemwidefaultwarningdevices1: TMenuItem
      Tag = 5
      Caption = 'System wide fault warning devices'
      Enabled = False
      Visible = False
      OnClick = ADOFunctionPopupMenuClick
    end
  end
  object CCITypePopupMenu: TPopupMenu
    Left = 616
    Top = 184
    object NormallyOpenNO1: TMenuItem
      Caption = 'Normally Open (NO)'
      OnClick = CCITypePopupMenuClick
    end
    object NormallyClosedNC1: TMenuItem
      Tag = 1
      Caption = 'Normally Closed (NC)'
      OnClick = CCITypePopupMenuClick
    end
  end
  object ADOModePopupMenu: TPopupMenu
    OnPopup = ADOModePopupMenuPopup
    Left = 616
    Top = 376
    object AdoPulseddefbyjumper1: TMenuItem
      Caption = 'Pulsed def. by jumper'
      OnClick = ADOModePopupMenuClick
    end
    object AdoContinuous1: TMenuItem
      Tag = 1
      Caption = 'Continuous'
      OnClick = ADOModePopupMenuClick
    end
    object AdoPulsed1: TMenuItem
      Tag = 2
      Caption = 'Pulsed'
      OnClick = ADOModePopupMenuClick
    end
    object AdoPhasedevacuation1: TMenuItem
      Tag = 3
      Caption = 'Phased evacuation'
      OnClick = ADOModePopupMenuClick
    end
  end
  object OutFunctionPopupMenu: TPopupMenu
    Left = 616
    Top = 424
    object miOutNotUsed: TMenuItem
      Caption = 'Not used'
      OnClick = OutFunctionPopupMenuClick
    end
    object miOutFireAlarmDevice: TMenuItem
      Tag = 33
      Caption = 'Fire alarm device'
      OnClick = OutFunctionPopupMenuClick
    end
    object miOutFireAlarmDeviceNS: TMenuItem
      Tag = 34
      Caption = 'Non-silenceable alarm device'
      OnClick = OutFunctionPopupMenuClick
    end
    object miOutLevel1Silencable: TMenuItem
      Tag = 38
      Caption = 'Level 1 silencable alarm device'
      OnClick = OutFunctionPopupMenuClick
    end
    object miOutSysFAD: TMenuItem
      Tag = 35
      Caption = 'System wide fire alarm devices'
      Enabled = False
      Visible = False
      OnClick = OutFunctionPopupMenuClick
    end
    object miOutFWD: TMenuItem
      Tag = 36
      Caption = 'Fault warning device'
      OnClick = OutFunctionPopupMenuClick
    end
    object miOutSysFWD: TMenuItem
      Tag = 37
      Caption = 'System wide fault warning devices'
      Enabled = False
      Visible = False
      OnClick = OutFunctionPopupMenuClick
    end
    object miOutVEActivate1: TMenuItem
      Tag = 19
      Caption = 'Voice Evacuation Activate output'
      OnClick = OutFunctionPopupMenuClick
    end
    object miOutVETest1: TMenuItem
      Tag = 20
      Caption = 'Voice Evacuation Test output'
      OnClick = OutFunctionPopupMenuClick
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object miOutFireAlarm: TMenuItem
      Tag = 1
      Caption = 'Fire alarm output'
      OnClick = OutFunctionPopupMenuClick
    end
    object miOutDelFireAlarm: TMenuItem
      Tag = 2
      Caption = 'Delayed fire alarm output'
      OnClick = OutFunctionPopupMenuClick
    end
    object miOutDelFireAlarmT2: TMenuItem
      Tag = 18
      Caption = 'Delayed fire alarm T2 output'
      OnClick = OutFunctionPopupMenuClick
    end
    object miDelAlarmEnabled: TMenuItem
      Tag = 22
      Caption = 'Delayed alarm enabled output'
      OnClick = OutFunctionPopupMenuClick
    end
    object miOutFireDoor: TMenuItem
      Tag = 3
      Caption = 'Fire door output'
      OnClick = OutFunctionPopupMenuClick
    end
    object miOutExtinguisher: TMenuItem
      Tag = 4
      Caption = 'Extinguisher control output'
      OnClick = OutFunctionPopupMenuClick
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object miOutFARE: TMenuItem
      Tag = 5
      Caption = 'Fire alarm router output'
      OnClick = OutFunctionPopupMenuClick
    end
    object miOutFARELed: TMenuItem
      Tag = 17
      Caption = 'Fire alarm router  LED output'
      OnClick = OutFunctionPopupMenuClick
    end
    object miOutFWRE: TMenuItem
      Tag = 6
      Caption = 'Fault warning router output'
      OnClick = OutFunctionPopupMenuClick
    end
    object miOutSysFARE: TMenuItem
      Tag = 7
      Caption = 'System fire alarm router output'
      Enabled = False
      Visible = False
      OnClick = OutFunctionPopupMenuClick
    end
    object miOutSysFWRE: TMenuItem
      Tag = 8
      Caption = 'System fault warning router output'
      Enabled = False
      Visible = False
      OnClick = OutFunctionPopupMenuClick
    end
    object miFireRouterDisabledOutput: TMenuItem
      Tag = 23
      Caption = 'Fire router disabled output'
      OnClick = OutFunctionPopupMenuClick
    end
    object miFaultRouterDisabledOutput: TMenuItem
      Tag = 24
      Caption = 'Fault router disabled output'
      OnClick = OutFunctionPopupMenuClick
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object miOutPrewarning: TMenuItem
      Tag = 9
      Caption = 'Prewarning output'
      OnClick = OutFunctionPopupMenuClick
    end
    object miOutFaultWarning: TMenuItem
      Tag = 10
      Caption = 'Fault warning output'
      OnClick = OutFunctionPopupMenuClick
    end
    object miOutMainSupplyFault: TMenuItem
      Tag = 25
      Caption = 'Main supply fault output'
      OnClick = OutFunctionPopupMenuClick
    end
    object miOutMaintWarning: TMenuItem
      Tag = 11
      Caption = 'Maintenance warning output'
      OnClick = OutFunctionPopupMenuClick
    end
    object miOutTechAlarm: TMenuItem
      Tag = 14
      Caption = 'Technical alarm output'
      OnClick = OutFunctionPopupMenuClick
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object miOutGeneralReset: TMenuItem
      Tag = 21
      Caption = 'General reset output'
      OnClick = OutFunctionPopupMenuClick
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object miOutDisablement: TMenuItem
      Tag = 12
      Caption = 'Disablement output'
      OnClick = OutFunctionPopupMenuClick
    end
    object miOutAccessLevel: TMenuItem
      Tag = 13
      Caption = 'Access level output'
      OnClick = OutFunctionPopupMenuClick
    end
    object miOutInternalLogic: TMenuItem
      Tag = 15
      Caption = 'Internal logic output'
      OnClick = OutFunctionPopupMenuClick
    end
    object miOutExternalLogic: TMenuItem
      Tag = 16
      Caption = 'External logic output'
      OnClick = OutFunctionPopupMenuClick
    end
  end
end
