object DCRangeFrm: TDCRangeFrm
  Left = 1714
  Top = 439
  Caption = 'Delayed Conrol Ranges'
  ClientHeight = 208
  ClientWidth = 410
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnOK: TBitBtn
    Left = 327
    Top = 8
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkOK
    ParentDoubleBuffered = False
    TabOrder = 0
  end
  object btnCancel: TBitBtn
    Left = 327
    Top = 39
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkCancel
    ParentDoubleBuffered = False
    TabOrder = 1
  end
  object Grid: TStringGrid
    Left = 8
    Top = 8
    Width = 307
    Height = 193
    ColCount = 3
    DefaultColWidth = 100
    DefaultRowHeight = 18
    RowCount = 10
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goEditing]
    TabOrder = 2
    OnSelectCell = GridSelectCell
    RowHeights = (
      18
      18
      18
      18
      18
      18
      18
      18
      18
      18)
  end
  object MaskEdit1: TMaskEdit
    Left = 211
    Top = 29
    Width = 45
    Height = 21
    EditMask = '!00:00;1;_'
    MaxLength = 5
    TabOrder = 3
    Text = '00:00'
    Visible = False
    OnChange = MaskEdit1Change
    OnEnter = MaskEdit1Enter
    OnKeyDown = MaskEdit1KeyDown
    OnMouseDown = MaskEdit1MouseDown
  end
  object btnResetGroups: TButton
    Left = 327
    Top = 145
    Width = 75
    Height = 25
    Caption = 'Reset Groups'
    TabOrder = 4
    OnClick = btnResetGroupsClick
  end
  object btnResetDelays: TButton
    Left = 327
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Reset Delays'
    TabOrder = 5
    OnClick = btnResetDelaysClick
  end
end
