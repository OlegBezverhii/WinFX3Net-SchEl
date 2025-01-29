object SpecialSettingsFrm: TSpecialSettingsFrm
  Left = 1359
  Top = 0
  Caption = 'Special Settings'
  ClientHeight = 248
  ClientWidth = 306
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
  object gbNoZones: TGroupBox
    Left = 8
    Top = 8
    Width = 289
    Height = 113
    Caption = 'Activate '#39'No Zones Display'#39
    TabOrder = 0
    object lbNzDescription: TLabel
      Left = 8
      Top = 24
      Width = 273
      Height = 49
      AutoSize = False
      Caption = 
        'Enter the password and press '#39'Activate'#39' to activate the '#39'No Zone' +
        's Display'#39' item in Panel data, Miscellaneous, Alarm display.'
      WordWrap = True
    end
    object nzPassword: TEdit
      Left = 8
      Top = 80
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 0
    end
    object btnNzActivate: TBitBtn
      Left = 184
      Top = 78
      Width = 91
      Height = 25
      Caption = 'Activate'
      DoubleBuffered = True
      Kind = bkOK
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = btnNzActivateClick
    end
  end
  object gbAlcStartDelay: TGroupBox
    Left = 9
    Top = 127
    Width = 289
    Height = 113
    Caption = 'Activate '#39'Start delay'#39' for ALC loops'
    TabOrder = 1
    object lbSdDescription: TLabel
      Left = 8
      Top = 24
      Width = 273
      Height = 49
      AutoSize = False
      Caption = 
        'Enter the password and press '#39'Activate'#39' to activate the '#39'Start d' +
        'elay'#39' items in Panel data, Loop controllers, for ALC loops.'
      WordWrap = True
    end
    object sdPassword: TEdit
      Left = 8
      Top = 80
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 0
    end
    object btnSdActivate: TBitBtn
      Left = 184
      Top = 78
      Width = 91
      Height = 25
      Caption = 'Activate'
      DoubleBuffered = True
      Kind = bkOK
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = btnSdActivateClick
    end
  end
end
