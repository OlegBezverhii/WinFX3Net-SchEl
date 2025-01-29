object DCCauseEffectForm: TDCCauseEffectForm
  Left = 1706
  Top = 18
  Caption = 'Cause - Effect'
  ClientHeight = 574
  ClientWidth = 1070
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 297
    Width = 1070
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitLeft = 8
    ExplicitTop = 331
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1070
    Height = 97
    Align = alTop
    TabOrder = 0
    object lblPanel: TLabel
      Left = 290
      Top = 4
      Width = 26
      Height = 13
      Caption = 'Panel'
    end
    object lblGroup: TLabel
      Left = 584
      Top = 3
      Width = 66
      Height = 13
      Caption = 'Control group'
      Visible = False
    end
    object lblLoop: TLabel
      Left = 360
      Top = 3
      Width = 72
      Height = 13
      Caption = 'Loop or IO unit'
    end
    object lblAddress: TLabel
      Left = 460
      Top = 3
      Width = 86
      Height = 13
      Caption = 'Address or IO line'
    end
    object ViewSelector: TRadioGroup
      Left = 8
      Top = 0
      Width = 276
      Height = 89
      ItemIndex = 0
      Items.Strings = (
        'Outputs controlled by given input'
        'Inputs controlling a given output'
        'Inputs and outputs of given group')
      TabOrder = 0
      OnClick = ViewSelectorClick
    end
    object lbPanel: TListBox
      Left = 290
      Top = 22
      Width = 57
      Height = 65
      ItemHeight = 13
      Items.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15'
        '16')
      TabOrder = 1
      OnClick = lbPanelClick
    end
    object edGroup: TEdit
      Left = 584
      Top = 66
      Width = 89
      Height = 21
      TabOrder = 2
      TextHint = '1 .. 9999'
      Visible = False
      OnExit = edGroupExit
    end
    object btnSearch: TButton
      Left = 703
      Top = 41
      Width = 75
      Height = 25
      Caption = 'Search'
      TabOrder = 3
      OnClick = btnSearchClick
    end
    object lbLoop: TListBox
      Left = 360
      Top = 22
      Width = 81
      Height = 65
      ItemHeight = 13
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8')
      TabOrder = 4
      OnClick = lbLoopClick
    end
    object lbAddress: TListBox
      Left = 460
      Top = 22
      Width = 89
      Height = 65
      ItemHeight = 13
      TabOrder = 5
      OnClick = lbAddressClick
    end
    object rbInput: TRadioButton
      Left = 584
      Top = 19
      Width = 113
      Height = 17
      Caption = 'Input group'
      Checked = True
      TabOrder = 6
      TabStop = True
      Visible = False
      OnClick = rbInputClick
    end
    object rbOutput: TRadioButton
      Left = 584
      Top = 41
      Width = 113
      Height = 17
      Caption = 'Output group'
      TabOrder = 7
      Visible = False
      OnClick = rbOutputClick
    end
  end
  object PanelAx: TPanel
    Left = 0
    Top = 97
    Width = 1070
    Height = 200
    Align = alTop
    Caption = 'PanelAx'
    TabOrder = 1
    object TreeA: TTreeView
      Left = 1
      Top = 42
      Width = 1068
      Height = 157
      Align = alClient
      Indent = 19
      TabOrder = 0
      OnCustomDrawItem = TreeACustomDrawItem
    end
    object HeaderA: THeaderControl
      Left = 1
      Top = 25
      Width = 1068
      Height = 17
      Sections = <
        item
          ImageIndex = -1
          Text = 'Kind'
          Width = 150
        end
        item
          ImageIndex = -1
          Text = 'Panel'
          Width = 50
        end
        item
          ImageIndex = -1
          Text = 'Loop'
          Width = 50
        end
        item
          ImageIndex = -1
          Text = 'Address'
          Width = 50
        end
        item
          ImageIndex = -1
          Text = 'Type'
          Width = 100
        end
        item
          ImageIndex = -1
          Text = 'Text'
          Width = 200
        end>
      OnSectionClick = HeaderASectionClick
      OnSectionResize = HeaderASectionResize
    end
    object PanelA3: TPanel
      Left = 1
      Top = 1
      Width = 1068
      Height = 24
      Align = alTop
      TabOrder = 2
      object lblInputsHeader: TLabel
        Left = 8
        Top = 4
        Width = 35
        Height = 14
        Caption = 'Inputs'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object PanelBx: TPanel
    Left = 0
    Top = 300
    Width = 1070
    Height = 274
    Align = alClient
    Caption = 'PanelBx'
    TabOrder = 2
    object HeaderB: THeaderControl
      Left = 1
      Top = 25
      Width = 1068
      Height = 17
      Sections = <
        item
          ImageIndex = -1
          Text = 'Sequence'
          Width = 150
        end
        item
          AllowClick = False
          ImageIndex = -1
          Text = 'Panel'
          Width = 50
        end
        item
          AllowClick = False
          ImageIndex = -1
          Text = 'Loop'
          Width = 50
        end
        item
          AllowClick = False
          ImageIndex = -1
          Text = 'Address'
          Width = 50
        end
        item
          AllowClick = False
          ImageIndex = -1
          Text = 'Type'
          Width = 100
        end
        item
          AllowClick = False
          ImageIndex = -1
          Text = 'Function'
          Width = 150
        end
        item
          AllowClick = False
          ImageIndex = -1
          Text = 'CtrlGroups'
          Width = 200
        end
        item
          AllowClick = False
          ImageIndex = -1
          Text = 'Text'
          Width = 250
        end>
      OnSectionClick = HeaderBSectionClick
      OnSectionResize = HeaderBSectionResize
      DoubleBuffered = True
      ParentDoubleBuffered = False
    end
    object TreeB: TTreeView
      Left = 1
      Top = 42
      Width = 1068
      Height = 231
      Align = alClient
      DoubleBuffered = True
      Indent = 19
      ParentDoubleBuffered = False
      ReadOnly = True
      TabOrder = 1
      OnCustomDrawItem = TreeBCustomDrawItem
    end
    object PanelB3: TPanel
      Left = 1
      Top = 1
      Width = 1068
      Height = 24
      Align = alTop
      TabOrder = 2
      object lblOutputsHeader: TLabel
        Left = 8
        Top = 4
        Width = 45
        Height = 14
        Caption = 'Outputs'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
end
