object FileImportDlg: TFileImportDlg
  Left = 1310
  Top = 103
  Caption = 'File Import'
  ClientHeight = 266
  ClientWidth = 426
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 130
    Height = 13
    Caption = 'Import texts from Excel file'
  end
  object Label2: TLabel
    Left = 16
    Top = 160
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Edit1: TEdit
    Left = 16
    Top = 40
    Width = 393
    Height = 21
    TabOrder = 0
  end
  object btnBrowse: TButton
    Left = 16
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Browse'
    TabOrder = 1
    OnClick = btnBrowseClick
  end
  object btnOK: TBitBtn
    Left = 144
    Top = 216
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 2
    OnClick = btnOKClick
  end
  object BitBtn1: TBitBtn
    Left = 240
    Top = 216
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 3
  end
  object ProgressBar1: TProgressBar
    Left = 16
    Top = 184
    Width = 393
    Height = 17
    Max = 1594
    Smooth = True
    TabOrder = 4
  end
  object cbImportTexts: TCheckBox
    Left = 16
    Top = 96
    Width = 97
    Height = 17
    Caption = 'Import Texts'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object cbImportZones: TCheckBox
    Left = 16
    Top = 120
    Width = 97
    Height = 17
    Caption = 'Import Zones'
    TabOrder = 6
  end
  object cbImportTypes: TCheckBox
    Left = 16
    Top = 144
    Width = 97
    Height = 17
    Caption = 'Import Types'
    Enabled = False
    TabOrder = 7
    Visible = False
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Excel 97..2003 (*.xls)|*.xls|Excel 2007..2010 (*.xlsx)|*.xlsx'
    Left = 384
    Top = 64
  end
end
