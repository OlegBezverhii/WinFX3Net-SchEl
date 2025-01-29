object FXADFrame: TFXADFrame
  Left = 0
  Top = 0
  Width = 725
  Height = 518
  Constraints.MinHeight = 500
  Constraints.MinWidth = 709
  TabOrder = 0
  TabStop = True
  Visible = False
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 725
    Height = 29
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 104
      Top = 8
      Width = 31
      Height = 13
      Caption = 'Label1'
    end
    object CancelBtn: TBitBtn
      Left = 460
      Top = 2
      Width = 80
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 0
      OnClick = CancelBtnClick
    end
    object HelpBtn: TBitBtn
      Left = 540
      Top = 2
      Width = 80
      Height = 25
      Caption = 'Texts'
      Enabled = False
      Kind = bkHelp
      NumGlyphs = 2
      TabOrder = 1
      Visible = False
      OnClick = HelpBtnClick
    end
    object cbLoopSelection: TComboBox
      Left = 2
      Top = 4
      Width = 90
      Height = 21
      Style = csDropDownList
      TabOrder = 2
      OnChange = cbLoopSelectionChange
      Items.Strings = (
        'Loop 1'
        'Loop 2')
    end
    object OKBtn: TBitBtn
      Left = 380
      Top = 2
      Width = 80
      Height = 25
      Caption = 'OK'
      Default = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 3
      OnClick = OKBtnClick
    end
    object RangeBtn: TButton
      Left = 300
      Top = 2
      Width = 80
      Height = 25
      Caption = 'Range Fill'
      TabOrder = 4
      OnClick = RangeBtnClick
    end
    object ColResetBtn: TButton
      Left = 140
      Top = 2
      Width = 80
      Height = 25
      Caption = 'Reset Columns'
      TabOrder = 5
      OnClick = ColResetBtnClick
    end
    object ColSelectBtn: TButton
      Left = 220
      Top = 2
      Width = 80
      Height = 25
      Caption = 'Select Columns'
      TabOrder = 6
      OnClick = ColSelectBtnClick
    end
  end
  object Grid: TStringGrid
    Left = 0
    Top = 29
    Width = 725
    Height = 489
    Align = alClient
    ColCount = 24
    DefaultColWidth = 40
    DefaultRowHeight = 18
    RowCount = 199
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goEditing, goTabs, goThumbTracking]
    TabOrder = 1
    OnClick = GridClick
    OnDrawCell = GridDrawCell
    OnKeyDown = GridKeyDown
    OnKeyPress = GridKeyPress
    OnMouseDown = GridMouseDown
    OnMouseUp = GridMouseUp
    OnSelectCell = GridSelectCell
  end
end
