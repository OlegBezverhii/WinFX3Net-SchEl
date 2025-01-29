object FXColSelDlg: TFXColSelDlg
  Left = 1237
  Top = 54
  BorderIcons = []
  BorderStyle = bsDialog
  BorderWidth = 2
  Caption = 'Select columns'
  ClientHeight = 335
  ClientWidth = 261
  Color = clBtnFace
  ParentFont = True
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbColSelect: TCheckListBox
    Left = 4
    Top = 4
    Width = 177
    Height = 325
    BevelOuter = bvRaised
    BevelKind = bkFlat
    ItemHeight = 13
    Items.Strings = (
      'Address'
      'Detection Zone'
      'Control group A'
      'Control group B'
      'Control group C'
      'Type'
      'Input function'
      'Input short is Fault'
      'Fire alarm threshold'
      'Prewarning threshold'
      'Fire threshold in daymode'
      'Prew. threshold in daymode'
      'Maint. threshold'
      'Alarm mode'
      'Sounder volume'
      'Input Delay'
      'Input Filter'
      'Day Mode effect'
      'Zone Disablement disables'
      'Control Groups'
      'Prim. Output function'
      'Sec. Output function'
      'Output function OR External'
      'Text')
    TabOrder = 0
  end
  object btnOK: TBitBtn
    Left = 184
    Top = 8
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkOK
    ParentDoubleBuffered = False
    TabOrder = 1
  end
  object btnCancel: TBitBtn
    Left = 184
    Top = 40
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkCancel
    ParentDoubleBuffered = False
    TabOrder = 2
  end
  object btnSelectAll: TBitBtn
    Left = 184
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Select All'
    DoubleBuffered = True
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = btnSelectAllClick
  end
  object btnClearAll: TBitBtn
    Left = 184
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Clear All'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = btnClearAllClick
  end
end
