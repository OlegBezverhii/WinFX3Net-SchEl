object DCGroupsFrm: TDCGroupsFrm
  Left = 498
  Top = 59
  Caption = 'Delayed Control Groups'
  ClientHeight = 857
  ClientWidth = 1102
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SplitterV: TSplitter
    Left = 0
    Top = 402
    Width = 1102
    Height = 7
    Cursor = crVSplit
    Align = alTop
    AutoSnap = False
    Color = clBtnFace
    ParentColor = False
    OnPaint = SplitterPaint
    ExplicitWidth = 789
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1102
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    object lbNumInputs: TLabel
      Left = 711
      Top = 8
      Width = 60
      Height = 13
      Caption = 'lbNumInputs'
    end
    object lbInputs: TLabel
      Left = 8
      Top = 8
      Width = 53
      Height = 16
      Caption = 'lbInputs'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnOK: TBitBtn
      Left = 323
      Top = 5
      Width = 75
      Height = 25
      Caption = 'OK'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancel: TBitBtn
      Left = 404
      Top = 5
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object rbEdit: TRadioButton
      Left = 492
      Top = 7
      Width = 110
      Height = 17
      Caption = 'Edit values'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = rbEditClick
    end
    object rbRows: TRadioButton
      Left = 600
      Top = 7
      Width = 110
      Height = 17
      Caption = 'Row select'
      TabOrder = 3
      OnClick = rbRowsClick
    end
    object btnCauseEffect: TButton
      Left = 196
      Top = 5
      Width = 120
      Height = 25
      Caption = 'Cause - Effect'
      TabOrder = 4
      OnClick = btnCauseEffectClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 838
    Width = 1102
    Height = 19
    Panels = <>
  end
  object PanelA: TPanel
    Left = 0
    Top = 33
    Width = 1102
    Height = 369
    Align = alTop
    Caption = 'PanelA'
    TabOrder = 2
    object SplitterA: TSplitter
      Left = 186
      Top = 1
      Width = 7
      Height = 367
      AutoSnap = False
      Color = clBtnFace
      ParentColor = False
      OnMoved = SplitterAMoved
      OnPaint = SplitterPaint
    end
    object PanelALeft: TPanel
      Left = 1
      Top = 1
      Width = 185
      Height = 367
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'PanelALeft'
      Constraints.MinHeight = 30
      Constraints.MinWidth = 30
      TabOrder = 0
      object ITree: TTreeView
        Left = 0
        Top = 0
        Width = 185
        Height = 367
        Align = alClient
        HideSelection = False
        Indent = 19
        ReadOnly = True
        TabOrder = 0
        OnChange = ITreeChange
        OnChanging = ITreeChanging
      end
    end
    object PanelARight: TPanel
      Left = 193
      Top = 1
      Width = 908
      Height = 367
      Align = alClient
      BevelOuter = bvNone
      Caption = 'PanelARight'
      TabOrder = 1
      object IGrid: TStringGrid
        Left = 0
        Top = 0
        Width = 908
        Height = 367
        Align = alClient
        ColCount = 29
        Ctl3D = True
        DefaultColWidth = 40
        DefaultRowHeight = 18
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goEditing, goThumbTracking, goFixedColClick]
        ParentCtl3D = False
        ParentShowHint = False
        PopupMenu = PopupMenu1
        ShowHint = True
        TabOrder = 0
        OnDrawCell = IGridDrawCell
        OnKeyDown = IGridKeyDown
        OnMouseDown = IGridMouseDown
        OnMouseMove = IGridMouseMove
        OnSelectCell = IGridSelectCell
      end
      object MaskEdit1: TMaskEdit
        Left = 67
        Top = 129
        Width = 45
        Height = 18
        Alignment = taRightJustify
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        EditMask = '!00:00;1;_'
        MaxLength = 5
        TabOrder = 1
        Text = '00:00'
        OnChange = MaskEdit1Change
        OnEnter = MaskEdit1Enter
        OnKeyDown = MaskEdit1KeyDown
        OnMouseDown = MaskEdit1MouseDown
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 409
    Width = 1102
    Height = 33
    Align = alTop
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    object lbNumOutputs: TLabel
      Left = 637
      Top = 8
      Width = 68
      Height = 13
      Caption = 'lbNumOutputs'
    end
    object lbOutputs: TLabel
      Left = 8
      Top = 8
      Width = 63
      Height = 16
      Caption = 'lbOutputs'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object PanelB: TPanel
    Left = 0
    Top = 442
    Width = 1102
    Height = 396
    Align = alClient
    Caption = 'PanelB'
    TabOrder = 4
    object SplitterB: TSplitter
      Left = 186
      Top = 1
      Width = 7
      Height = 394
      AutoSnap = False
      Color = clBtnFace
      ParentColor = False
      OnMoved = SplitterBMoved
      OnPaint = SplitterPaint
    end
    object PanelBLeft: TPanel
      Left = 1
      Top = 1
      Width = 185
      Height = 394
      Align = alLeft
      Caption = 'PanelBLeft'
      Constraints.MinHeight = 30
      Constraints.MinWidth = 30
      TabOrder = 0
      object OTree: TTreeView
        Left = 1
        Top = 1
        Width = 183
        Height = 392
        Align = alClient
        HideSelection = False
        Indent = 19
        ReadOnly = True
        TabOrder = 0
        OnChange = OTreeChange
        OnChanging = OTreeChanging
      end
    end
    object PanelBRight: TPanel
      Left = 193
      Top = 1
      Width = 908
      Height = 394
      Align = alClient
      Caption = 'PanelBRight'
      TabOrder = 1
      object OGrid: TStringGrid
        Left = 1
        Top = 1
        Width = 906
        Height = 392
        Align = alClient
        ColCount = 9
        DefaultColWidth = 40
        DefaultRowHeight = 18
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goEditing, goThumbTracking]
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnDrawCell = OGridDrawCell
        OnMouseDown = OGridMouseDown
        OnMouseMove = OGridMouseMove
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 396
    Top = 218
    object miCopy: TMenuItem
      Caption = 'Copy'
      OnClick = miCopyClick
    end
    object miPaste: TMenuItem
      Caption = 'Paste'
      OnClick = miPasteClick
    end
    object miRange: TMenuItem
      Caption = 'Range Edit'
      OnClick = miRangeClick
    end
  end
end
