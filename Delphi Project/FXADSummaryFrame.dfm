object FXADSummaryFrame: TFXADSummaryFrame
  Left = 0
  Top = 0
  Width = 725
  Height = 539
  Constraints.MinHeight = 500
  Constraints.MinWidth = 709
  TabOrder = 0
  TabStop = True
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 725
    Height = 33
    Align = alTop
    TabOrder = 1
    object OKBtn: TBitBtn
      Left = 2
      Top = 4
      Width = 77
      Height = 27
      Kind = bkOK
      Margin = 2
      NumGlyphs = 2
      Spacing = -1
      TabOrder = 0
      OnClick = OKBtnClick
      IsControl = True
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 725
    Height = 506
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object ListView1: TListView
      Left = 1
      Top = 1
      Width = 723
      Height = 504
      Align = alClient
      Columns = <
        item
          Caption = 'Device type'
          Width = 120
        end
        item
          Alignment = taRightJustify
          Caption = 'Loop 1'
          Width = 60
        end
        item
          Alignment = taRightJustify
          Caption = 'Loop 2'
          Width = 60
        end
        item
          Alignment = taRightJustify
          Caption = 'Loop 3'
          Width = 60
        end
        item
          Alignment = taRightJustify
          Caption = 'Loop 4'
          Width = 60
        end
        item
          Alignment = taRightJustify
          Caption = 'Loop 5'
          Width = 60
        end
        item
          Alignment = taRightJustify
          Caption = 'Loop 6'
          Width = 60
        end
        item
          Alignment = taRightJustify
          Caption = 'Loop 7'
          Width = 60
        end
        item
          Alignment = taRightJustify
          Caption = 'Loop 8'
          Width = 60
        end
        item
          Alignment = taRightJustify
          Caption = 'Sum'
          Width = 60
        end>
      GridLines = True
      ReadOnly = True
      TabOrder = 0
      ViewStyle = vsReport
    end
  end
end
