object SelectPanelsDlg: TSelectPanelsDlg
  Left = 1703
  Top = 14
  Caption = 'Select Panels'
  ClientHeight = 235
  ClientWidth = 231
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object clbPanels: TCheckListBox
    Left = 8
    Top = 8
    Width = 121
    Height = 220
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 13
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
    ParentFont = False
    TabOrder = 0
  end
  object btnOK: TBitBtn
    Left = 144
    Top = 8
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkOK
    ParentDoubleBuffered = False
    TabOrder = 1
  end
  object btnCancel: TBitBtn
    Left = 144
    Top = 40
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkCancel
    ParentDoubleBuffered = False
    TabOrder = 2
  end
  object btnSelectAll: TButton
    Left = 144
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Select All'
    TabOrder = 3
    OnClick = btnSelectAllClick
  end
  object btnClearAll: TButton
    Left = 144
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Clear All'
    TabOrder = 4
    OnClick = btnClearAllClick
  end
end
