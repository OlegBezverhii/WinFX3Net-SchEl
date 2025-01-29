object FXNetFrame: TFXNetFrame
  Left = 0
  Top = 0
  Width = 725
  Height = 518
  Constraints.MinHeight = 500
  Constraints.MinWidth = 709
  DoubleBuffered = True
  Color = 16514043
  ParentBackground = False
  ParentColor = False
  ParentDoubleBuffered = False
  TabOrder = 0
  TabStop = True
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 725
    Height = 518
    ActivePage = TabSheetPanels
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheetPanels: TTabSheet
      Caption = 'Panels'
      DesignSize = (
        717
        490)
      object gbNetName: TGroupBox
        Left = 8
        Top = 0
        Width = 257
        Height = 57
        Caption = 'FXNet system name'
        ParentBackground = False
        TabOrder = 0
        object edNetName: TEdit
          Left = 8
          Top = 24
          Width = 241
          Height = 21
          TabOrder = 0
          Text = 'New system'
          OnChange = edNetNameChange
        end
      end
      object gbFXNetPanels: TGroupBox
        Left = 8
        Top = 64
        Width = 425
        Height = 419
        Anchors = [akLeft, akTop, akBottom]
        Caption = 'Panels'
        ParentBackground = False
        TabOrder = 2
        DesignSize = (
          425
          419)
        object lbPanelID: TLabel
          Left = 272
          Top = 16
          Width = 40
          Height = 13
          Caption = 'Panel ID'
        end
        object lbPanelType: TLabel
          Left = 344
          Top = 16
          Width = 24
          Height = 13
          Caption = 'Type'
        end
        object lbPanelName: TLabel
          Left = 272
          Top = 64
          Width = 55
          Height = 13
          Caption = 'Panel name'
        end
        object edPanelID: TEdit
          Left = 272
          Top = 32
          Width = 43
          Height = 21
          TabStop = False
          ReadOnly = True
          TabOrder = 1
          Text = '0'
        end
        object udPanelID: TUpDown
          Left = 315
          Top = 32
          Width = 16
          Height = 21
          Associate = edPanelID
          Max = 32
          TabOrder = 2
          TabStop = True
        end
        object cbPanelType: TComboBox
          Left = 344
          Top = 32
          Width = 73
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 3
          Text = 'FX'
          Items.Strings = (
            'FX'
            'FXL'
            'FXM'
            'FXS'
            'FX101A'
            'FX101S')
        end
        object edPanelName: TEdit
          Left = 272
          Top = 80
          Width = 145
          Height = 21
          MaxLength = 60
          TabOrder = 4
        end
        object btnAdd: TButton
          Left = 272
          Top = 120
          Width = 73
          Height = 25
          Caption = 'Add'
          Default = True
          TabOrder = 5
          OnClick = btnAddClick
        end
        object btnModify: TButton
          Left = 272
          Top = 152
          Width = 73
          Height = 25
          Caption = 'Modify'
          TabOrder = 6
          OnClick = btnModifyClick
        end
        object btnDelete: TButton
          Left = 272
          Top = 184
          Width = 73
          Height = 25
          Caption = 'Delete'
          TabOrder = 7
          OnClick = btnDeleteClick
        end
        object lvPanels: TListView
          Left = 8
          Top = 16
          Width = 249
          Height = 395
          Anchors = [akLeft, akTop, akBottom]
          Columns = <
            item
              Caption = 'Nr'
              Width = 40
            end
            item
              Caption = 'Type'
              Width = 55
            end
            item
              Caption = 'Name'
              Width = 150
            end>
          ColumnClick = False
          FlatScrollBars = True
          GridLines = True
          HideSelection = False
          ReadOnly = True
          RowSelect = True
          SortType = stText
          TabOrder = 0
          TabStop = False
          ViewStyle = vsReport
          OnSelectItem = lvPanelsSelectItem
        end
      end
      object rgSystemType: TRadioGroup
        Left = 272
        Top = 0
        Width = 161
        Height = 57
        Caption = 'System kind'
        ItemIndex = 0
        Items.Strings = (
          'Standalone'
          'Multipanel')
        ParentBackground = False
        TabOrder = 1
        TabStop = True
        OnClick = rgSystemTypeClick
      end
    end
    object TabSheetVisibility: TTabSheet
      Caption = 'Panel visibility'
      ImageIndex = 1
      PopupMenu = popMenu
      DesignSize = (
        717
        490)
      object lbNumOfConnections: TLabel
        Left = 240
        Top = 40
        Width = 107
        Height = 16
        Caption = 'logical connections'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object gbPanelSummary: TGroupBox
        Left = 8
        Top = 64
        Width = 681
        Height = 419
        Anchors = [akLeft, akTop, akBottom]
        Caption = 'Summary of visible panels'
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          681
          419)
        object lvVisibles: TListView
          Left = 8
          Top = 16
          Width = 665
          Height = 395
          Anchors = [akLeft, akTop, akBottom]
          Columns = <
            item
              Caption = 'Nr'
              Width = 40
            end
            item
              Caption = 'Type'
              Width = 55
            end
            item
              Caption = 'Name'
              Width = 115
            end
            item
              Caption = 'Visible panels'
              Width = 400
            end>
          ColumnClick = False
          FlatScrollBars = True
          GridLines = True
          HideSelection = False
          ReadOnly = True
          RowSelect = True
          PopupMenu = popMenu
          SortType = stText
          TabOrder = 0
          ViewStyle = vsReport
          OnKeyDown = lvVisiblesKeyDown
        end
      end
    end
    object TabSheetSummary: TTabSheet
      Caption = 'Loops and zones'
      ImageIndex = 2
      DesignSize = (
        717
        490)
      object lbOverlappingZones: TLabel
        Left = 224
        Top = 48
        Width = 182
        Height = 16
        Caption = 'Warning! Overlapping Zones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object lbOverlappingLoops: TLabel
        Left = 224
        Top = 32
        Width = 182
        Height = 16
        Caption = 'Warning! Overlapping Loops'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object lbErrorInPanelId: TLabel
        Left = 224
        Top = 16
        Width = 168
        Height = 16
        Caption = 'Warning! Error in panel ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object gbLoopsAndZones: TGroupBox
        Left = 8
        Top = 64
        Width = 681
        Height = 419
        Anchors = [akLeft, akTop, akBottom]
        Caption = 'Summary of panels, loops and zones'
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          681
          419)
        object lvLoops: TListView
          Left = 8
          Top = 16
          Width = 665
          Height = 395
          Anchors = [akLeft, akTop, akBottom]
          Columns = <
            item
              Caption = 'Nr'
              Width = 40
            end
            item
              Caption = 'Type'
              Width = 55
            end
            item
              Caption = 'Name'
              Width = 115
            end
            item
              Alignment = taRightJustify
              Caption = 'Panel ID'
              Width = 75
            end
            item
              Alignment = taRightJustify
              Caption = 'First loop'
              Width = 85
            end
            item
              Alignment = taRightJustify
              Caption = 'Last loop'
              Width = 85
            end
            item
              Alignment = taRightJustify
              Caption = 'First zone'
              Width = 85
            end
            item
              Alignment = taRightJustify
              Caption = 'Last zone'
              Width = 85
            end>
          ColumnClick = False
          FlatScrollBars = True
          GridLines = True
          HideSelection = False
          ReadOnly = True
          RowSelect = True
          SortType = stText
          TabOrder = 0
          ViewStyle = vsReport
          OnSelectItem = lvPanelsSelectItem
        end
      end
    end
  end
  object btnOK: TBitBtn
    Left = 620
    Top = 32
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
    OnClick = btnOKClick
  end
  object btnCancel: TBitBtn
    Left = 620
    Top = 64
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
    OnClick = btnCancelClick
  end
  object popMenu: TPopupMenu
    Left = 480
    object Select1: TMenuItem
      Caption = 'Select ...'
      OnClick = Select1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Copy1: TMenuItem
      Caption = 'Copy'
      OnClick = Copy1Click
    end
    object Paste1: TMenuItem
      Caption = 'Paste'
      OnClick = Paste1Click
    end
  end
end
