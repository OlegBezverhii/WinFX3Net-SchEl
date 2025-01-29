object ConfigInfoDlg: TConfigInfoDlg
  Left = 227
  Top = 108
  Caption = 'Configuration Info'
  ClientHeight = 258
  ClientWidth = 618
  Color = clBtnFace
  Constraints.MinWidth = 600
  ParentFont = True
  OldCreateOrder = True
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    618
    258)
  PixelsPerInch = 96
  TextHeight = 13
  object OKBtn: TButton
    Left = 536
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 536
    Top = 38
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
    Visible = False
  end
  object ListView1: TListView
    Left = 8
    Top = 8
    Width = 521
    Height = 169
    Anchors = [akLeft, akTop, akRight, akBottom]
    Columns = <
      item
        Caption = 'Data item'
        Width = 75
      end
      item
        Caption = 'Made by'
        Width = 210
      end
      item
        Alignment = taCenter
        Caption = 'Date'
        Width = 70
      end
      item
        Alignment = taCenter
        Caption = 'Time'
        Width = 70
      end
      item
        Alignment = taCenter
        Caption = 'Version'
      end>
    GridLines = True
    Items.ItemData = {
      03460100000400000000000000FFFFFFFFFFFFFFFF04000000FFFFFFFF000000
      000A500061006E0065006C00200064006100740061000C480061006E006B0020
      004A0061006D00650073006F006E000A320033002E00310032002E0032003000
      3000330005320033003A00310032000335002E00300000000000FFFFFFFFFFFF
      FFFF04000000FFFFFFFF000000000C4100640064007200650073007300200064
      006100740061000D4A0061006D006500730020004A0061006D00650073006F00
      6E000A310032002E00300037002E00320030003000340005310033003A003400
      37000332002E00300000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
      000749004F002000640061007400610000000000FFFFFFFFFFFFFFFF00000000
      FFFFFFFF0000000009540065007800740020006400610074006100FF00FF00FF
      00FF00FF00FF00FF00FF00}
    TabOrder = 2
    ViewStyle = vsReport
    OnCustomDrawItem = ListView1CustomDrawItem
  end
  object Panel1: TPanel
    Left = 8
    Top = 184
    Width = 521
    Height = 65
    Anchors = [akLeft, akBottom]
    BevelOuter = bvNone
    Color = clYellow
    ParentBackground = False
    TabOrder = 3
    Visible = False
    object lbVersionConflict: TLabel
      Left = 0
      Top = 4
      Width = 521
      Height = 61
      Alignment = taCenter
      AutoSize = False
      BiDiMode = bdLeftToRight
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
  end
end
