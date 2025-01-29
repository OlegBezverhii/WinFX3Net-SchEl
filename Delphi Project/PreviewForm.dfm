object PreviewForm: TPreviewForm
  Left = 929
  Top = 427
  HorzScrollBar.ButtonSize = 8
  HorzScrollBar.Increment = 57
  HorzScrollBar.Margin = 4
  HorzScrollBar.Visible = False
  VertScrollBar.Margin = 8
  VertScrollBar.Smooth = True
  VertScrollBar.Tracking = True
  Caption = 'Print Preview'
  ClientHeight = 506
  ClientWidth = 798
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnMouseWheel = FormMouseWheel
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 798
    Height = 33
    Align = alTop
    TabOrder = 0
    object btnPrint: TButton
      Left = 168
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Print'
      TabOrder = 0
      OnClick = btnPrintClick
    end
    object btnPrevious: TButton
      Left = 8
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Previous'
      TabOrder = 1
      OnClick = btnPreviousClick
    end
    object btnNext: TButton
      Left = 88
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Next'
      TabOrder = 2
      OnClick = btnNextClick
    end
    object btnClose: TButton
      Left = 248
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 3
      OnClick = btnCloseClick
    end
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 33
    Width = 798
    Height = 473
    HorzScrollBar.Smooth = True
    HorzScrollBar.Tracking = True
    VertScrollBar.Smooth = True
    VertScrollBar.Tracking = True
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
  end
  object PrintDialog1: TPrintDialog
    Options = [poPageNums]
    Left = 696
    Top = 8
  end
end
