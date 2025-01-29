object FileExportDlg: TFileExportDlg
  Left = 1473
  Top = 489
  Caption = 'File Export'
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
    Top = 16
    Width = 154
    Height = 13
    Caption = 'Export text data in Excel format'
  end
  object Edit1: TEdit
    Left = 16
    Top = 40
    Width = 377
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
    Left = 128
    Top = 208
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 2
    OnClick = btnOKClick
  end
  object BitBtn2: TBitBtn
    Left = 232
    Top = 208
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 3
  end
  object ProgressBar1: TProgressBar
    Left = 16
    Top = 136
    Width = 377
    Height = 17
    Max = 1584
    Smooth = True
    TabOrder = 4
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Excel 97..2003 (*.xls)|*.xls|Excel 2007..2010 (*.xlsx)|*.xlsx'
    Left = 368
    Top = 80
  end
end
