object MergeEsaForm: TMergeEsaForm
  Left = 1342
  Top = 21
  Caption = 'Merge ESA file'
  ClientHeight = 301
  ClientWidth = 492
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
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 284
    Height = 13
    Caption = 'ESA or ESA-1 file to merge into current FXNet configuration'
  end
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 113
    Height = 13
    Caption = 'File has been saved by '
  end
  object Label3: TLabel
    Left = 272
    Top = 56
    Width = 64
    Height = 13
    Caption = 'Using version'
  end
  object edFileName: TEdit
    Left = 8
    Top = 24
    Width = 473
    Height = 21
    TabOrder = 0
  end
  object btnBrowse: TButton
    Left = 408
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Browse ...'
    TabOrder = 1
    OnClick = btnBrowseClick
  end
  object edSavedBy: TEdit
    Left = 8
    Top = 72
    Width = 241
    Height = 21
    TabOrder = 2
  end
  object edVersion: TEdit
    Left = 272
    Top = 72
    Width = 65
    Height = 21
    TabOrder = 3
  end
  object RichEdit1: TRichEdit
    Left = 8
    Top = 112
    Width = 329
    Height = 177
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object btnOK: TBitBtn
    Left = 408
    Top = 112
    Width = 75
    Height = 25
    DoubleBuffered = True
    Enabled = False
    Kind = bkOK
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = btnOKClick
  end
  object btnCancel: TBitBtn
    Left = 408
    Top = 144
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkCancel
    ParentDoubleBuffered = False
    TabOrder = 6
    OnClick = btnCancelClick
  end
  object btnRead: TButton
    Left = 408
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Read file'
    TabOrder = 7
    OnClick = btnReadClick
  end
  object OpenDialog1: TOpenDialog
    Left = 424
    Top = 224
  end
end
