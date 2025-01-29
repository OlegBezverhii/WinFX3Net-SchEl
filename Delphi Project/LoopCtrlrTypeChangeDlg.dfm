object LoopCtrlrTypeChangeDlg: TLoopCtrlrTypeChangeDlg
  Left = 1145
  Top = 145
  Caption = 'Loop Controller type change'
  ClientHeight = 246
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblMessage: TLabel
    Left = 8
    Top = 8
    Width = 400
    Height = 32
    AutoSize = False
    Caption = 
      'The requested change of loop controller type will affect already' +
      ' defined addresses'
    WordWrap = True
  end
  object lblApplyOk: TLabel
    Left = 8
    Top = 45
    Width = 400
    Height = 26
    AutoSize = False
    WordWrap = True
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 77
    Width = 400
    Height = 49
    TabOrder = 0
    object lblConvert: TLabel
      Left = 8
      Top = 18
      Width = 192
      Height = 13
      Caption = 'Convert LC addresses to SLC addresses'
    end
    object btnConvert: TButton
      Left = 318
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Convert'
      ModalResult = 6
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 133
    Width = 400
    Height = 49
    TabOrder = 1
    object lblDelete: TLabel
      Left = 8
      Top = 10
      Width = 300
      Height = 30
      AutoSize = False
      Caption = 
        'Proceed with loop controller change and delete affected loops an' +
        'd addresses'
      WordWrap = True
    end
    object btnDelete: TButton
      Left = 318
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Delete'
      ModalResult = 1
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 189
    Width = 400
    Height = 49
    TabOrder = 2
    object lblCancel: TLabel
      Left = 8
      Top = 18
      Width = 198
      Height = 13
      Caption = 'Cancel the change of loop controller type'
    end
    object btnCancel: TButton
      Left = 318
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 0
    end
  end
end
