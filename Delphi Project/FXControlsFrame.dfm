object FXControlsFrame: TFXControlsFrame
  Left = 0
  Top = 0
  Width = 745
  Height = 266
  Align = alClient
  TabOrder = 0
  TabStop = True
  Visible = False
  ExplicitWidth = 451
  ExplicitHeight = 304
  object Splitter1: TSplitter
    Left = 326
    Top = 57
    Width = 4
    Height = 209
    Beveled = True
    ExplicitHeight = 247
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 745
    Height = 57
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 451
    object btnClose: TButton
      Left = 568
      Top = 8
      Width = 81
      Height = 36
      Caption = 'Close'
      TabOrder = 0
      OnClick = btnCloseClick
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 4
      Width = 361
      Height = 40
      Caption = 'View'
      TabOrder = 1
      object RadioButton1: TRadioButton
        Left = 8
        Top = 16
        Width = 73
        Height = 17
        Caption = 'By Input'
        TabOrder = 0
        OnClick = RadioButtonClick
      end
      object RadioButton2: TRadioButton
        Left = 80
        Top = 16
        Width = 73
        Height = 17
        Caption = 'By Zone'
        Checked = True
        TabOrder = 1
        TabStop = True
        OnClick = RadioButtonClick
      end
      object RadioButton3: TRadioButton
        Left = 152
        Top = 16
        Width = 89
        Height = 17
        Caption = 'By Output'
        TabOrder = 2
        OnClick = RadioButtonClick
      end
      object cbItemSelect: TComboBox
        Left = 240
        Top = 12
        Width = 113
        Height = 21
        ItemIndex = 0
        TabOrder = 3
        Text = '<Select Item>'
        OnChange = cbItemSelectChange
        Items.Strings = (
          '<Select Item>'
          '001'
          '002'
          '003'
          '004'
          '005'
          '006'
          '007'
          '008'
          '009'
          '010'
          '011'
          '012'
          '013'
          '014'
          '015'
          '016'
          '017'
          '018'
          '019'
          '020'
          '021'
          '022'
          '023'
          '024'
          '025'
          '026'
          '027'
          '028'
          '029'
          '030'
          '031'
          '032'
          '033'
          '034'
          '035'
          '036'
          '037'
          '038'
          '039'
          '040'
          '041'
          '042'
          '043'
          '044'
          '045'
          '046'
          '047'
          '048'
          '049'
          '050'
          '051'
          '052'
          '053'
          '054'
          '055'
          '056'
          '057'
          '058'
          '059'
          '060'
          '061'
          '062'
          '063'
          '064'
          '065'
          '066'
          '067'
          '068'
          '069'
          '070'
          '071'
          '072'
          '073'
          '074'
          '075'
          '076'
          '077'
          '078'
          '079'
          '080'
          '081'
          '082'
          '083'
          '084'
          '085'
          '086'
          '087'
          '088'
          '089'
          '090'
          '091'
          '092'
          '093'
          '094'
          '095'
          '096'
          '097'
          '098'
          '099'
          '100'
          '101'
          '102'
          '103'
          '104'
          '105'
          '106'
          '107'
          '108'
          '109'
          '110'
          '111'
          '112'
          '113'
          '114'
          '115'
          '116'
          '117'
          '118'
          '119'
          '120'
          '121'
          '122'
          '123'
          '124'
          '125'
          '126'
          '127'
          '128'
          '129'
          '130'
          '131'
          '132'
          '133'
          '134'
          '135'
          '136'
          '137'
          '138'
          '139'
          '140'
          '141'
          '142'
          '143'
          '144'
          '145'
          '146'
          '147'
          '148'
          '149'
          '150'
          '151'
          '152'
          '153'
          '154'
          '155'
          '156'
          '157'
          '158'
          '159'
          '160'
          '161'
          '162'
          '163'
          '164'
          '165'
          '166'
          '167'
          '168'
          '169'
          '170'
          '171'
          '172'
          '173'
          '174'
          '175'
          '176'
          '177'
          '178'
          '179'
          '180'
          '181'
          '182'
          '183'
          '184'
          '185'
          '186'
          '187'
          '188'
          '189'
          '190'
          '191'
          '192'
          '193'
          '194'
          '195'
          '196'
          '197'
          '198'
          '199'
          '200'
          '201'
          '202'
          '203'
          '204'
          '205'
          '206'
          '207'
          '208'
          '209'
          '210'
          '211'
          '212'
          '213'
          '214'
          '215'
          '216'
          '217'
          '218'
          '219'
          '220'
          '221'
          '222'
          '223'
          '224'
          '225'
          '226'
          '227'
          '228'
          '229'
          '230'
          '231'
          '232'
          '233'
          '234'
          '235'
          '236'
          '237'
          '238'
          '239'
          '240'
          '241'
          '242'
          '243'
          '244'
          '245'
          '246'
          '247'
          '248'
          '249'
          '250'
          '251'
          '252'
          '253'
          '254'
          '255')
      end
    end
    object GroupBox2: TGroupBox
      Left = 376
      Top = 4
      Width = 177
      Height = 40
      Caption = 'Event'
      TabOrder = 2
      object cbEventFilter: TComboBox
        Left = 8
        Top = 12
        Width = 161
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 0
        Text = '<Select Event>'
        OnChange = cbItemSelectChange
        Items.Strings = (
          '<Select Event>'
          'Fire Alarm'
          'Prewarning'
          'Fault Warning'
          'Maintenance Warning'
          'Technical Alarm'
          'Disablement')
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 326
    Height = 209
    Align = alLeft
    Caption = 'Panel2'
    TabOrder = 1
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 324
      Height = 13
      Align = alTop
      Caption = 'Inputs with this zone as the first control zone'
      ExplicitWidth = 217
    end
    object Label2: TLabel
      Left = 1
      Top = 154
      Width = 324
      Height = 13
      Align = alTop
      Caption = 'Inputs with this zone as the second control zone'
      ExplicitWidth = 232
    end
    object Label3: TLabel
      Left = 1
      Top = 307
      Width = 324
      Height = 13
      Align = alTop
      Caption = 'Inputs with different control zone definitions'
      ExplicitWidth = 213
    end
    object ListView1: TListView
      Left = 1
      Top = 14
      Width = 324
      Height = 140
      Align = alTop
      Columns = <
        item
          Caption = 'Address'
          MinWidth = 50
        end
        item
          Caption = 'Type'
          MinWidth = 100
          Width = 100
        end
        item
          Caption = 'CZ 1'
          MinWidth = 50
        end
        item
          Caption = 'CZ 2'
          MinWidth = 50
        end
        item
          Caption = 'Text'
          Width = 100
        end>
      DragMode = dmAutomatic
      MultiSelect = True
      ReadOnly = True
      RowSelect = True
      SortType = stText
      TabOrder = 0
      ViewStyle = vsReport
      OnDragDrop = ListView1DragDrop
      OnDragOver = ListView1DragOver
    end
    object ListView2: TListView
      Left = 1
      Top = 167
      Width = 324
      Height = 140
      Align = alTop
      Columns = <
        item
          Caption = 'Address'
          MinWidth = 50
        end
        item
          Caption = 'Type'
          MinWidth = 100
          Width = 100
        end
        item
          Caption = 'CZ 1'
          MinWidth = 50
        end
        item
          Caption = 'CZ 2'
          MinWidth = 50
        end
        item
          Caption = 'Text'
          Width = 100
        end>
      DragMode = dmAutomatic
      MultiSelect = True
      ReadOnly = True
      RowSelect = True
      SortType = stText
      TabOrder = 1
      ViewStyle = vsReport
      OnDragDrop = ListView2DragDrop
      OnDragOver = ListView2DragOver
    end
    object ListView3: TListView
      Left = 1
      Top = 320
      Width = 324
      Height = 175
      Align = alClient
      Columns = <
        item
          Caption = 'Address'
          MinWidth = 50
        end
        item
          Caption = 'Type'
          MinWidth = 100
          Width = 100
        end
        item
          Caption = 'CZ 1'
          MinWidth = 50
        end
        item
          Caption = 'CZ 2'
          MinWidth = 50
        end
        item
          Caption = 'Text'
          Width = 100
        end>
      DragMode = dmAutomatic
      MultiSelect = True
      ReadOnly = True
      RowSelect = True
      SortType = stText
      TabOrder = 2
      ViewStyle = vsReport
      OnDragDrop = ListView3DragDrop
      OnDragOver = ListView3DragOver
    end
  end
  object Panel3: TPanel
    Left = 330
    Top = 57
    Width = 415
    Height = 209
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 2
    ExplicitWidth = 105
    object Label4: TLabel
      Left = 1
      Top = 1
      Width = 413
      Height = 13
      Align = alTop
      Caption = 'Outputs controlled by this control zone'
      ExplicitWidth = 186
    end
    object Label5: TLabel
      Left = 1
      Top = 154
      Width = 413
      Height = 13
      Align = alTop
      Caption = 'Outputs controlled as General Outputs (control zones = 0)'
      ExplicitWidth = 280
    end
    object Label6: TLabel
      Left = 1
      Top = 307
      Width = 413
      Height = 13
      Align = alTop
      Caption = 'Outputs that are not controlled by this zone'
      ExplicitWidth = 211
    end
    object ListView4: TListView
      Left = 1
      Top = 14
      Width = 413
      Height = 140
      Align = alTop
      Columns = <
        item
          Caption = 'Address'
          MinWidth = 50
        end
        item
          Caption = 'Type'
          MinWidth = 100
          Width = 100
        end
        item
          Caption = 'C-Zones'
          MinWidth = 100
          Width = 100
        end
        item
          Caption = 'Text'
          Width = 100
        end>
      TabOrder = 0
      ViewStyle = vsReport
      ExplicitWidth = 103
    end
    object ListView5: TListView
      Left = 1
      Top = 167
      Width = 413
      Height = 140
      Align = alTop
      Columns = <
        item
          Caption = 'Address'
          MinWidth = 50
        end
        item
          Caption = 'Type'
          MinWidth = 100
          Width = 100
        end
        item
          Caption = 'C-Zones'
          MinWidth = 100
          Width = 100
        end
        item
          Caption = 'Text'
          Width = 100
        end>
      TabOrder = 1
      ViewStyle = vsReport
      ExplicitWidth = 103
    end
    object ListView6: TListView
      Left = 1
      Top = 320
      Width = 413
      Height = 175
      Align = alClient
      Columns = <
        item
          Caption = 'Address'
          MinWidth = 50
        end
        item
          Caption = 'Type'
          MinWidth = 100
          Width = 100
        end
        item
          Caption = 'C-Zones'
          MinWidth = 100
          Width = 100
        end
        item
          Caption = 'Text'
          Width = 100
        end>
      TabOrder = 2
      ViewStyle = vsReport
      ExplicitWidth = 103
    end
  end
end
