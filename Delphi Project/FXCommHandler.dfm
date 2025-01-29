object FXCommHandler: TFXCommHandler
  Left = 1459
  Top = 359
  Caption = 'FX3Net Communication handler'
  ClientHeight = 408
  ClientWidth = 436
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    436
    408)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 5
    Width = 415
    Height = 393
    Anchors = [akLeft, akTop, akBottom]
    ExplicitHeight = 336
  end
  object lbCommLog: TLabel
    Left = 22
    Top = 195
    Width = 93
    Height = 13
    Caption = 'Communication log:'
  end
  object CloseBtn: TButton
    Left = 314
    Top = 179
    Width = 95
    Height = 28
    HelpContext = 11
    Caption = 'Close'
    ModalResult = 2
    TabOrder = 0
    OnClick = CloseBtnClick
  end
  object Memo1: TMemo
    Left = 22
    Top = 214
    Width = 387
    Height = 173
    HelpContext = 11
    TabStop = False
    Anchors = [akLeft, akTop, akBottom]
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
    WordWrap = False
  end
  object Panel1: TPanel
    Left = 21
    Top = 12
    Width = 388
    Height = 42
    BevelInner = bvLowered
    Color = clYellow
    ParentBackground = False
    TabOrder = 2
    object lbBefore: TLabel
      Left = 2
      Top = 2
      Width = 384
      Height = 38
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 
        'Before proceeding, check that  the cable is connected and that t' +
        'he panel is ready to send or receive data'
      Color = clYellow
      ParentColor = False
      WordWrap = True
    end
  end
  object PrepareBtn: TButton
    Left = 314
    Top = 59
    Width = 95
    Height = 28
    Caption = 'Prepare the panel'
    TabOrder = 3
    OnClick = PrepareBtnClick
  end
  object ReceiveBtn: TButton
    Left = 314
    Top = 119
    Width = 95
    Height = 28
    HelpContext = 11
    Caption = 'Receive'
    Enabled = False
    TabOrder = 4
    OnClick = ReceiveBtnClick
  end
  object RestartBtn: TButton
    Left = 314
    Top = 149
    Width = 95
    Height = 28
    Caption = 'Restart the panel'
    TabOrder = 5
    OnClick = RestartBtnClick
  end
  object SendBtn: TButton
    Left = 314
    Top = 89
    Width = 95
    Height = 28
    HelpContext = 11
    Caption = 'Send'
    Enabled = False
    TabOrder = 6
    OnClick = SendBtnClick
  end
  object cbShowInfo: TCheckBox
    Left = 22
    Top = 150
    Width = 280
    Height = 17
    HelpContext = 11
    Caption = 'Show configuration info at receival'
    Checked = True
    State = cbChecked
    TabOrder = 7
  end
  object gbPanelNum: TGroupBox
    Left = 224
    Top = 60
    Width = 73
    Height = 87
    Caption = 'Panel'
    TabOrder = 8
    object lbPanelNum: TLabel
      Left = 2
      Top = 15
      Width = 69
      Height = 70
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = '5'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -50
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      ExplicitLeft = 3
      ExplicitTop = 12
      ExplicitHeight = 72
    end
  end
  object rgPanelType: TRadioGroup
    Left = 22
    Top = 60
    Width = 185
    Height = 87
    Caption = 'Panel type'
    ItemIndex = 1
    Items.Strings = (
      'FX101'
      'FX3Net'
      'FXNet')
    TabOrder = 9
  end
  object cbRestart: TCheckBox
    Left = 22
    Top = 172
    Width = 275
    Height = 17
    Caption = 'Restart after sending data'
    TabOrder = 10
  end
  object RestartTimer: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = RestartTimerTimer
    Left = 280
    Top = 8
  end
end
