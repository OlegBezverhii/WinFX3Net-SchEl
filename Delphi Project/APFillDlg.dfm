object APFillDlg: TAPFillDlg
  Left = 1367
  Top = 150
  Caption = 'Address range entry'
  ClientHeight = 642
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbFirstAddress: TLabel
    Left = 8
    Top = 64
    Width = 100
    Height = 13
    Caption = 'First address in range'
  end
  object lbLastaddress: TLabel
    Left = 8
    Top = 88
    Width = 101
    Height = 13
    Caption = 'Last address in range'
  end
  object lbNumberOfMatching: TLabel
    Left = 8
    Top = 120
    Width = 240
    Height = 13
    Caption = 'Number of addresses, matching selection criteria: 0'
  end
  object udFirst: TUpDown
    Left = 265
    Top = 64
    Width = 16
    Height = 21
    Associate = edFirstAddress
    Min = 1
    Max = 199
    Position = 1
    TabOrder = 0
    OnClick = udFirstClick
  end
  object edFirstAddress: TEdit
    Left = 208
    Top = 64
    Width = 57
    Height = 21
    TabOrder = 1
    Text = '1'
  end
  object udLast: TUpDown
    Left = 265
    Top = 88
    Width = 16
    Height = 21
    Associate = edLastAddress
    Min = 1
    Max = 199
    Position = 1
    TabOrder = 2
    OnClick = udLastClick
  end
  object edLastAddress: TEdit
    Left = 208
    Top = 88
    Width = 57
    Height = 21
    TabOrder = 3
    Text = '1'
  end
  object btnOK: TBitBtn
    Left = 344
    Top = 32
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 4
    OnClick = btnOKClick
  end
  object btnCancel: TBitBtn
    Left = 344
    Top = 64
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 5
  end
  object Grid: TStringGrid
    Left = 8
    Top = 144
    Width = 412
    Height = 460
    ColCount = 3
    DefaultColWidth = 135
    DefaultRowHeight = 18
    RowCount = 24
    ScrollBars = ssNone
    TabOrder = 6
    OnClick = GridClick
    OnMouseDown = GridMouseDown
  end
  object btnResetCol1: TButton
    Left = 152
    Top = 610
    Width = 121
    Height = 25
    Caption = 'Reset all'
    TabOrder = 7
    OnClick = btnResetCol1Click
  end
  object btnResetCol2: TButton
    Left = 288
    Top = 610
    Width = 121
    Height = 25
    Caption = 'Reset all'
    TabOrder = 8
    OnClick = btnResetCol2Click
  end
  object rbRangeSelectLow: TRadioButton
    Left = 8
    Top = 16
    Width = 265
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Lower address range (001...099)'
    Checked = True
    TabOrder = 9
    TabStop = True
    OnClick = RangeSelectClick
  end
  object rbRangeSelectHigh: TRadioButton
    Left = 8
    Top = 36
    Width = 265
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Higher address range (101...199)'
    TabOrder = 10
    OnClick = RangeSelectClick
  end
end
