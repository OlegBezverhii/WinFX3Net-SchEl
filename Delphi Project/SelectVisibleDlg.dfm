object SelectVisibleDlg: TSelectVisibleDlg
  Left = 227
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Selection of visible panels'
  ClientHeight = 478
  ClientWidth = 402
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    402
    478)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 289
    Height = 465
    Caption = 'Panel1'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 3
      Height = 13
    end
    object lvVisPanels: TListView
      Left = 8
      Top = 32
      Width = 273
      Height = 425
      Checkboxes = True
      Columns = <
        item
          Caption = 'Nr'
          Width = 60
        end
        item
          Caption = 'Type'
        end
        item
          Caption = 'Name'
          Width = 120
        end>
      FlatScrollBars = True
      GridLines = True
      HideSelection = False
      ReadOnly = True
      RowSelect = True
      SortType = stText
      TabOrder = 0
      ViewStyle = vsReport
    end
  end
  object btnSelAll: TButton
    Left = 320
    Top = 104
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Select All'
    TabOrder = 1
    OnClick = btnSelAllClick
  end
  object btnClrAll: TButton
    Left = 320
    Top = 136
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Clear All'
    TabOrder = 2
    OnClick = btnClrAllClick
  end
  object btnOK: TBitBtn
    Left = 320
    Top = 8
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkOK
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = btnOKClick
  end
  object btnCancel: TBitBtn
    Left = 320
    Top = 40
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkCancel
    ParentDoubleBuffered = False
    TabOrder = 4
  end
end
