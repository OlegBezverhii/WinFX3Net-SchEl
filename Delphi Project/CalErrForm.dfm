object CalErrForm: TCalErrForm
  Left = 1366
  Top = 395
  Caption = 'Calendar error'
  ClientHeight = 313
  ClientWidth = 459
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
  object Label1: TLabel
    Left = 12
    Top = 12
    Width = 435
    Height = 39
    AutoSize = False
    Caption = 
      'The calendar settings of the USB License key and your PC do not ' +
      'match'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object GroupBox1: TGroupBox
    Left = 12
    Top = 60
    Width = 435
    Height = 60
    TabOrder = 0
    object StaticText1: TStaticText
      Left = 8
      Top = 16
      Width = 334
      Height = 30
      AutoSize = False
      Caption = 
        'If the calendar setting of your PC is wrong, correct it now, the' +
        'n choose Retry'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object btnRetry: TButton
      Left = 348
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Retry'
      ModalResult = 4
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 12
    Top = 130
    Width = 435
    Height = 100
    TabOrder = 1
    object btnBypass: TButton
      Left = 348
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Bypass'
      ModalResult = 1
      TabOrder = 0
    end
    object StaticText2: TStaticText
      Left = 8
      Top = 16
      Width = 334
      Height = 33
      AutoSize = False
      Caption = 
        'If the calendar setting of your PC is correct, the USB license k' +
        'ey is damaged, choose Bypass. '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object StaticText3: TStaticText
      Left = 8
      Top = 56
      Width = 415
      Height = 36
      AutoSize = False
      Caption = 
        'WARNING! The USB key will become invalid within 14 days. You can' +
        ' acquire a new key from your supplier.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Transparent = False
    end
  end
  object GroupBox3: TGroupBox
    Left = 12
    Top = 240
    Width = 435
    Height = 60
    TabOrder = 2
    object btnCancel: TButton
      Left = 348
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 0
    end
    object StaticText4: TStaticText
      Left = 8
      Top = 16
      Width = 334
      Height = 39
      AutoSize = False
      Caption = 
        'If you do not want to use the software now, choose Cancel. The s' +
        'oftware will terminate.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
end
