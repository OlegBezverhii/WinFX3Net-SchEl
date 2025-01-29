object OverwriteDlg: TOverwriteDlg
  Left = 383
  Top = 3
  Caption = 'Panel ID conflict'
  ClientHeight = 239
  ClientWidth = 416
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
    Left = 8
    Top = 32
    Width = 303
    Height = 13
    Caption = 'A panel with the same ID as the newly read data already exist! '
    WordWrap = True
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 64
    Width = 401
    Height = 49
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 20
      Width = 223
      Height = 13
      Caption = 'Press Overwrite to overwrite the existing data'
    end
    object btnOverwrite: TButton
      Left = 318
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Overwrite'
      ModalResult = 1
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 120
    Width = 401
    Height = 49
    TabOrder = 1
    object Label3: TLabel
      Left = 8
      Top = 20
      Width = 156
      Height = 13
      Caption = 'Press New ID to assign a new ID'
    end
    object Edit1: TEdit
      Left = 248
      Top = 20
      Width = 33
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object UpDown1: TUpDown
      Left = 281
      Top = 20
      Width = 16
      Height = 21
      Associate = Edit1
      Max = 32
      TabOrder = 1
    end
    object btnNewID: TButton
      Left = 318
      Top = 16
      Width = 75
      Height = 25
      Caption = 'New ID'
      ModalResult = 4
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 176
    Width = 401
    Height = 49
    TabOrder = 2
    object Label4: TLabel
      Left = 8
      Top = 20
      Width = 186
      Height = 13
      Caption = 'Press Cancel to cancel this panels data'
    end
    object btnCancel: TButton
      Left = 318
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 0
    end
  end
end
