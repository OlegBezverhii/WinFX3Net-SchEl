object LangSelectDlg: TLangSelectDlg
  Left = 1458
  Top = 109
  ActiveControl = OKBtn
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Language selection '
  ClientHeight = 217
  ClientWidth = 388
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object OKBtn: TBitBtn
    Left = 300
    Top = 8
    Width = 77
    Height = 27
    DoubleBuffered = True
    Kind = bkOK
    Margin = 2
    ParentDoubleBuffered = False
    Spacing = -1
    TabOrder = 0
    OnClick = OKBtnClick
    IsControl = True
  end
  object CancelBtn: TBitBtn
    Left = 300
    Top = 40
    Width = 77
    Height = 27
    DoubleBuffered = True
    Kind = bkCancel
    Margin = 2
    ParentDoubleBuffered = False
    Spacing = -1
    TabOrder = 1
    IsControl = True
  end
  object HelpBtn: TBitBtn
    Left = 300
    Top = 72
    Width = 77
    Height = 27
    DoubleBuffered = True
    Enabled = False
    Kind = bkHelp
    Margin = 2
    ParentDoubleBuffered = False
    Spacing = -1
    TabOrder = 2
    Visible = False
    IsControl = True
  end
  object Languages: TGroupBox
    Left = 8
    Top = 8
    Width = 268
    Height = 201
    Caption = 'Available languages'
    TabOrder = 3
    object LangInternal: TRadioButton
      Left = 8
      Top = 24
      Width = 113
      Height = 17
      Caption = 'English (internal)'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object LangGB: TRadioButton
      Left = 8
      Top = 46
      Width = 90
      Height = 17
      Caption = 'English (file)'
      TabOrder = 1
    end
    object LangFI: TRadioButton
      Left = 8
      Top = 68
      Width = 90
      Height = 17
      Caption = 'Finnish'
      TabOrder = 2
    end
    object LangSE: TRadioButton
      Left = 8
      Top = 90
      Width = 90
      Height = 17
      Caption = 'Swedish'
      TabOrder = 3
    end
    object LangNO: TRadioButton
      Left = 8
      Top = 112
      Width = 90
      Height = 17
      Caption = 'Norwegian'
      TabOrder = 4
    end
    object LangDK: TRadioButton
      Left = 8
      Top = 134
      Width = 90
      Height = 17
      Caption = 'Danish'
      TabOrder = 5
    end
    object LangFL: TRadioButton
      Left = 8
      Top = 178
      Width = 90
      Height = 17
      Caption = 'Flamish'
      TabOrder = 6
    end
    object LangFR: TRadioButton
      Left = 136
      Top = 24
      Width = 90
      Height = 17
      Caption = 'French'
      TabOrder = 7
    end
    object LangES: TRadioButton
      Left = 136
      Top = 46
      Width = 80
      Height = 17
      Caption = 'Spanish'
      TabOrder = 8
    end
    object LangIT: TRadioButton
      Left = 136
      Top = 68
      Width = 80
      Height = 17
      Caption = 'Italian'
      TabOrder = 9
    end
    object LangEE: TRadioButton
      Left = 136
      Top = 90
      Width = 80
      Height = 17
      Caption = 'Estonian'
      TabOrder = 10
    end
    object LangLV: TRadioButton
      Left = 136
      Top = 112
      Width = 80
      Height = 17
      Caption = 'Latvian'
      TabOrder = 11
    end
    object LangLT: TRadioButton
      Left = 136
      Top = 134
      Width = 80
      Height = 17
      Caption = 'Lithuanian'
      TabOrder = 12
    end
    object LangRU: TRadioButton
      Left = 136
      Top = 156
      Width = 80
      Height = 17
      Caption = 'Russian'
      TabOrder = 13
    end
    object LangNL: TRadioButton
      Left = 8
      Top = 156
      Width = 113
      Height = 17
      Caption = 'Dutch'
      TabOrder = 14
    end
  end
end
