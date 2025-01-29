//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit99;

interface

uses
  SysUtils, Classes, Vcl.StdCtrls, Vcl.StdActns, Vcl.ComCtrls, FXIniFiles, Vcl.Buttons, System.Generics.Collections, System.Generics.Defaults, Vcl.Dialogs, Vcl.ExtCtrls, FXOverwriteDialog, FXEsaFileMerge, FXAboutFrames, Vcl.Samples.Spin, Vcl.Mask, Vcl.Grids, Vcl.Controls;

type
  TOverwriteDlg = class(TForm)
  published
    Label1:TLabel;//f3C0
    GroupBox1:TGroupBox;//f3C4
    Label2:TLabel;//f3C8
    btnOverwrite:TButton;//f3CC
    GroupBox2:TGroupBox;//f3D0
    Label3:TLabel;//f3D4
    Edit1:TEdit;//f3D8
    UpDown1:TUpDown;//f3DC
    btnNewID:TButton;//f3E0
    GroupBox3:TGroupBox;//f3E4
    Label4:TLabel;//f3E8
    btnCancel:TButton;//f3EC
    procedure Translate(IniFile:TFXIniFile);//006ADE20
    procedure FormCreate(Sender:TObject);//006AE37C
    procedure FormShow(Sender:TObject);//006AE458
  end;
  TMergeEsaForm = class(TForm)
  published
    Label1:TLabel;//f3C0
    edFileName:TEdit;//f3C4
    btnBrowse:TButton;//f3C8
    Label2:TLabel;//f3CC
    edSavedBy:TEdit;//f3D0
    Label3:TLabel;//f3D4
    edVersion:TEdit;//f3D8
    RichEdit1:TRichEdit;//f3DC
    btnOK:TBitBtn;//f3E0
    btnCancel:TBitBtn;//f3E4
    OpenDialog1:TOpenDialog;//f3E8
    btnRead:TButton;//f3EC
    procedure btnBrowseClick(Sender:TObject);//006AE9D4
    procedure FormCreate(Sender:TObject);//006AEEE4
    procedure btnReadClick(Sender:TObject);//006AEA38
    procedure btnCancelClick(Sender:TObject);//006AF14C
    procedure btnOKClick(Sender:TObject);//006AEF98
  end;
  TFXAboutFrame = class(TFrame)
  published
    ProgramIcon:TImage;//f2B0
    ProductName:TLabel;//f2B4
    Version:TLabel;//f2B8
    Comments:TLabel;//f2BC
    lbLicensee:TLabel;//f2C0
    Distributor:TLabel;//f2C4
    lbSerNum:TLabel;//f2C8
    SerialNum:TLabel;//f2CC
    Copyright:TLabel;//f2D0
    lbLicensedFeatures:TLabel;//f2D4
    lbExpires:TLabel;//f2D8
    lbExpiryDate:TLabel;//f2DC
    Licensee:TMemo;//f2E0
    Facilities:TMemo;//f2E4
    Panel1:TPanel;//f2E8
    Panel2:TPanel;//f2EC
    lbLicenseKey:TLabel;//f2F0
    lbRefreshDate:TLabel;//f2F4
    procedure FetchInfo;//006AF660
    procedure Panel1Resize(Sender:TObject);//006AFB80
  end;
  TSpinButton = class(TWinControl)
  published
    procedure SetBounds(ALeft:Integer; ATop:Integer; AHeight:Integer; AWidth:Integer);//006B1370
    constructor Create(AOwner:TComponent);//006B115C
  public
    FUpButton:TTimerSpeedButton;//f290
    FDownButton:TTimerSpeedButton;//f294
    FFocusedButton:TTimerSpeedButton;//f298
    FFocusControl:TWinControl;//f29C
    FOnUpClick:TNotifyEvent;//f2A0
    f2A4:TSpinEdit;//f2A4
    FOnDownClick:TNotifyEvent;//f2A8
    f2AC:TSpinEdit;//f2AC
    procedure CMFontChanged(var Message:TMessage); virtual;//v10//006B16F4
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v14//006B12CC
    constructor Create(AOwner:TComponent); virtual;//v3C//006B115C
    procedure SetBounds(ALeft:Integer; ATop:Integer; AHeight:Integer; AWidth:Integer); virtual;//vB0//006B1370
    procedure CreateWnd; virtual;//vCC//006B12A4
    //procedure WMSize(?:?); message WM_SIZE;//006B1474
    procedure WMSetFocus(var Message:Messages.TWMSetFocus); message WM_SETFOCUS;//006B14D4
    procedure WMKillFocus; message WM_KILLFOCUS;//006B14FC
    //procedure WMEraseBkgnd(?:?); message WM_ERASEBKGND;//006B13B4
    procedure WMGetDlgCode(var Message:Messages.TWMGetDlgCode); message WM_GETDLGCODE;//006B16EC
    //procedure sub_004EE9E0(?:?; ?:?); dynamic;//006B1528
    procedure AdjustSize(var W:Integer; var H:Integer);//006B12FC
    procedure GetUpGlyph;//006B1748
    procedure SetUpGlyph(Value:TBitmap);//006B1754
    procedure GetUpNumGlyphs;//006B17B8
    procedure SetUpNumGlyphs(Value:TNumGlyphs);//006B17C4
    procedure GetDownGlyph;//006B17D0
    procedure SetDownGlyph(Value:TBitmap);//006B17DC
    procedure GetDownNumGlyphs;//006B1844
    procedure SetDownNumGlyphs(Value:TNumGlyphs);//006B1850
  end;
  TSpinEdit = class(TCustomEdit)
  published
    constructor Create(AOwner:TComponent);//006B185C
    destructor Destroy();//006B1964
    procedure GetChildren(Root:TComponent; Proc:TGetChildProc);//006B1990
  public
    FMinValue:Integer;//f2C8
    FMaxValue:Integer;//f2CC
    FIncrement:Integer;//f2D0
    FButton:TSpinButton;//f2D4
    FEditorEnabled:Boolean;//f2D8
    destructor Destroy(); virtual;//006B1964
    constructor Create(AOwner:TComponent); virtual;//v3C//006B185C
    procedure CreateParams(var Params:Controls.TCreateParams); virtual;//vC4//006B1AC4
    procedure CreateWnd; virtual;//vCC//006B1AE0
    //procedure v12C(?:?); virtual;//v12C//006B1A14
    procedure v130; virtual;//v130//006B1C80
    procedure v134; virtual;//v134//006B1CB0
    //procedure WMSize(?:?); message WM_SIZE;//006B1B74
    //procedure WMGetDlgCode(?:?); message WM_GETDLGCODE;//006B1D30
    //procedure WMCut(?:?); message WM_CUT;//006B1D08
    //procedure WMPaste(?:?); message WM_PASTE;//006B1CE0
    //procedure CMEnter(?:?); message CM_ENTER;//006B1E50
    procedure CMExit(var Message:Controls.TCMExit); message CM_EXIT;//006B1D40
    //procedure sub_004EEC30(?:?); dynamic;//006B19DC
    //procedure sub_004EE9E0(?:?; ?:?); dynamic;//006B1998
    procedure GetChildren(Root:TComponent; Proc:TGetChildProc); dynamic;//006B1990
    procedure SetEditRect;//006B1AF4
    function GetValue:LongInt;//006B1D7C
    procedure SetValue(NewValue:LongInt);//006B1DD0
    function CheckValue(NewValue:LongInt):LongInt;//006B1E28
  end;
  :3 = (tbFocusRect, tbAllowTimer);
  TTimeBtnState = set of :3;
  TTimerSpeedButton = class(TSpeedButton)
  published
    destructor Destroy();//006B1E78
  public
    FRepeatTimer:TTimer;//f1E0
    FTimeBtnState:TTimeBtnState;//f1E4
    FDownButton:Boolean;//f1E5
    destructor Destroy(); virtual;//006B1E78
    procedure vB8; virtual;//vB8//006B1FDC
    //procedure sub_004E9010(?:?; ?:?; ?:?; ?:?); dynamic;//006B1F24
    //procedure sub_004E8C70(?:?; ?:?; ?:?; ?:?); dynamic;//006B1EAC
  end;
  EDBEditError = class(Exception)
  end;
  :2 = (msMasked, msReEnter, msDBSetText);
  TMaskedState = set of :2;
  TCustomMaskEdit = class(TCustomEdit)
  published
    procedure Clear;//006B4C8C
    function GetTextLen:Integer;//006B43FC
    constructor Create;//006B40E4
    procedure ValidateEdit;//006B54AC
  public
    FEditMask:TEditMask;//f2C8
    FMaskBlank:Char;//f2CC
    FMaskState:TMaskedState;//f2CD
    FMaxChars:Integer;//f2D0
    FMaskSave:Boolean;//f2D4
    FMaskState:TMaskedState;//f2D5
    FCaretPos:Integer;//f2D8
    FBtnDownX:Integer;//f2DC
    FOldValue:string;//f2E0
    FSettingCursor:Boolean;//f2E4
    constructor Create; virtual;//v3C//006B40E4
    procedure Clear; virtual;//v124//006B4C8C
    //function v12C:?; virtual;//v12C//006B4C94
    procedure v130; virtual;//v130//006B4C98
    //procedure v134(?:?; ?:?); virtual;//v134//006B5BFC
    procedure v138; virtual;//v138//006B554C
    procedure ValidateEdit; virtual;//v13C//006B54AC
    procedure WMSetFocus(var Message:Messages.TWMSetFocus); message WM_SETFOCUS;//006B4360
    //procedure WMLButtonDown(?:?); message WM_LBUTTONDOWN;//006B42E4
    //procedure WMLButtonUp(?:?); message WM_LBUTTONUP;//006B4300
    //procedure WMCut(?:?); message WM_CUT;//006B45E8
    //procedure WMPaste(?:?); message WM_PASTE;//006B4660
    procedure CMTextChanged; message CM_TEXTCHANGED;//006B53B0
    //procedure CMEnter(?:?); message CM_ENTER;//006B5320
    procedure CMExit(Message:Controls.TCMExit); message CM_EXIT;//006B5478
    procedure CMWantSpecialKey(var Message:Controls.TCMWantSpecialKey); message CM_WANTSPECIALKEY;//006B5440
    //procedure sub_004EEC30(?:?); dynamic;//006B4270
    //procedure sub_004EEB14(?:?; ?:?); dynamic;//006B4220
    //procedure sub_004EE9E0(?:?; ?:?); dynamic;//006B413C
    procedure SetEditText(const Value:UnicodeString);//006B4380
    function GetEditText:UnicodeString;//006B43E8
    function GetText:TMaskedText;//006B4450
    procedure SetText(const Value:MaskUtils.TMaskedText);//006B44E4
    function GetMasked:Boolean;//006B4794
    procedure GetSel(var SelStart:Integer; var SelStop:Integer);//006B4974
    procedure SetSel(SelStart:Integer; SelStop:Integer);//006B4998
    procedure SetCursor(Pos:Integer);//006B49BC
    procedure CheckCursor;//006B4C4C
    procedure CursorDec(CursorPos:Integer);//006B50C4
    function GetNextEditChar(Offset:Integer):Integer;//006B50E0
    function GetPriorEditChar(Offset:Integer):Integer;//006B5108
    procedure DeleteKeys(CharCode:Word);//006B520C
    function DeleteSelection(var Value:UnicodeString; Offset:Integer; Len:Integer):Boolean;//006B5CB8
  end;
  TMaskEdit = class(TCustomMaskEdit)
    procedure SetEditMask(Value:TEditMask);//006B4870
    //function GetMaxLength:?;//006B493C
    procedure SetMaxLength(Value:Integer);//006B4944
  end;
  EInvalidGridOperation = class(Exception)
  end;
  TGridState = (gsNormal, gsSelecting, gsRowSizing, gsColSizing, gsRowMoving, gsColMoving);
  TInplaceEdit = class(TCustomMaskEdit)
  published
    procedure Hide;//006BA018
    procedure Invalidate;//006B9F94
    constructor Create;//006B9898
    procedure Deselect;//006B9F74
    procedure Move(Loc:TRect);//006BA18C
    procedure UpdateLoc(Loc:TRect);//006BA184
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FGrid:TCustomGrid;//f2E8
    FClickTime:Integer;//f2EC
    constructor Create; virtual;//v3C//006B9898
    //procedure v98(?:?); virtual;//v98//006B9EF8
    procedure CreateParams(var Params:Controls.TCreateParams); virtual;//vC4//006B98FC
    procedure v12C; virtual;//v12C//006B99F0
    procedure v140; virtual;//v140//006BA130
    procedure v144; virtual;//v144//006BA194
    //procedure WMGetDlgCode(?:?); message WM_GETDLGCODE;//006B9918
    //procedure WMCut(?:?); message WM_CUT;//006B9980
    //procedure WMPaste(?:?); message WM_PASTE;//006B9940
    //procedure WMClear(?:?); message WM_CLEAR;//006B9960
    procedure CMShowingChanged; message CM_SHOWINGCHANGED;//006B9914
    //procedure sub_004EEC30(?:?); dynamic;//006B9DE8
    //procedure sub_004EEB14(?:?; ?:?); dynamic;//006B9ED4
    //procedure sub_004EE9E0(?:?; ?:?); dynamic;//006B9BB0
    //procedure sub_004E7A2C(?:?; ?:?; ?:?); dynamic;//006B99B4
    procedure sub_004E8C50; dynamic;//006B99A0
    procedure InternalMove(const Loc:Types.TRect; Redraw:Boolean);//006BA080
  end;
  TGridOption = (goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing, goRowMoving, goColMoving, goEditing, goTabs, goRowSelect, goAlwaysShowEditor, goThumbTracking, goFixedColClick, goFixedRowClick, goFixedHotTrack);
  TGridOptions = set of TGridOption;
  :3 = (gdSelected, gdFocused, gdFixed, gdRowSelected, gdHotTrack, gdPressed);
  TGridDrawState = set of :3;
  TGridCoord = TGridCoord = record//size=8
X:Integer;//f0
Y:Integer;//f4
end;;
  THotTrackCellInfo = THotTrackCellInfo = record//size=C
Coord:TGridCoord;//f0
Pressed:Boolean;//f8
Button:TMouseButton;//f9
end;;
  TGridRect = TGridRect = record//size=10
Left:Integer;//f0
Top:Integer;//f4
Right:Integer;//f8
Bottom:Integer;//fC
TopLeft:TGridCoord;//f0
BottomRight:TGridCoord;//f8
end;;
  TSelectCellEvent = procedure(Sender:TObject; ACol:Integer; ARow:Integer; var CanSelect:Boolean) of object;;
  TDrawCellEvent = procedure(Sender:TObject; ACol:Integer; ARow:Integer; Rect:TRect; State:TGridDrawState) of object;;
  TFixedCellClickEvent = procedure(Sender:TObject; ACol:Integer; ARow:Integer) of object;;
  TGridDrawingStyle = (gdsClassic, gdsThemed, gdsGradient);
  TCustomGrid = class(TCustomControl)
  published
    constructor Create;//006BA250
    function MouseCoord(X:Integer; Y:Integer):TGridCoord;//006BAE54
    destructor Destroy();//006BA41C
  public
    FAnchor:TGridCoord;//f298
    FCanEditModify:Boolean;//f299
    FColCount:LongInt;//f29C
    FBorderStyle:TBorderStyle;//f2A0
    FCanEditModify:Boolean;//f2A1
    FColCount:Integer;//f2A4
    FCurrent:TGridCoord;//f2A8
    FDefaultRowHeight:Integer;//f2AC
    FDefaultColWidth:Integer;//f2B0
    FDefaultRowHeight:Integer;//f2B4
    FDrawingStyle:TGridDrawingStyle;//f2B8
    FFixedCols:Integer;//f2BC
    FFixedRows:Integer;//f2C0
    FFixedColor:TColor;//f2C4
    FGradientEndColor:TColor;//f2C8
    FGradientStartColor:TColor;//f2CC
    FGridLineWidth:Integer;//f2D0
    FOptions:TGridOptions;//f2D4
    f2D5:byte;//f2D5
    f2D6:byte;//f2D6
    FPanPoint:TPoint;//f2D8
    FScrollBars:TScrollStyle;//f2DC
    FRowCount:Integer;//f2E0
    FScrollBars:TScrollStyle;//f2E4
    FTopLeft:TGridCoord;//f2E8
    FSizingPos:Integer;//f2EC
    FSizingIndex:Integer;//f2F0
    FSizingPos:Integer;//f2F4
    FSizingOfs:Integer;//f2F8
    FMoveIndex:Integer;//f2FC
    FMovePos:Integer;//f300
    FHitTest:TPoint;//f304
    FInplaceCol:LongInt;//f308
    FInplaceEdit:TInplaceEdit;//f30C
    FInplaceCol:Integer;//f310
    FInplaceRow:Integer;//f314
    FEditorMode:Boolean;//f315
    FColOffset:Integer;//f318
    FDefaultDrawing:Boolean;//f31C
    FEditorMode:Boolean;//f31D
    FColWidths:Pointer;//f320
    FRowHeights:Pointer;//f324
    FTabStops:Pointer;//f328
    FOnFixedCellClick:TFixedCellClickEvent;//f330
    FSaveCellExtents:Boolean;//f331
    DesignOptionsBoost:TGridOptions;//f332
    f334:dword;//f334
    VirtualView:Boolean;//f336
    FGridState:TGridState;//f338
    FSaveCellExtents:Boolean;//f339
    DesignOptionsBoost:TGridOptions;//f33A
    FInternalDrawingStyle:TGridDrawingStyle;//f33C
    VirtualView:Boolean;//f33E
    FInternalColor:TColor;//f340
    FInternalDrawingStyle:TGridDrawingStyle;//f344
    FHotTrackCell:THotTrackCellInfo;//f348
    destructor Destroy(); virtual;//006BA41C
    procedure DefineProperties(Filer:TFiler); virtual;//v4//006BAC34
    function CanObserve(const ID:Integer):Boolean; virtual;//v1C//006BC0C0
    procedure ObserverAdded(const ID:Integer; const Observer:Classes.IObserver); virtual;//v20//006BC32C
    constructor Create; virtual;//v3C//006BA250
    //procedure v54(?:?; ?:?); virtual;//v54//006BF0B0
    procedure CreateParams(var Params:TCreateParams); virtual;//vC4//006BEFFC
    procedure CreateWnd; virtual;//vCC//006BF07C
    procedure v108; virtual;//v108//006BB698
    //procedure v10C(?:?; ?:?; ?:?; ?:?; ?:?); virtual;//v10C//006BC814
    function CreateEditor:TInplaceEdit; virtual;//v110//006BEFEC
    //function v114:?; virtual;//v114//006BA878
    procedure SelectionMoved(const OldSel:TGridRect); virtual;//v118//006BE71C
    procedure v11C; virtual; abstract;//v11C//00405554
    //procedure v120(?:?; ?:?; ?:?); virtual;//v120//006BD3C0
    //procedure v124(?:?; ?:?; ?:?); virtual;//v124//006BCF74
    //function v128:?; virtual;//v128//006BAEA8
    procedure v12C; virtual;//v12C//006C1A00
    procedure v130; virtual;//v130//006C1A24
    //procedure WMSize(?:?); message WM_SIZE;//006C1538
    procedure WMSetFocus(Message:Messages.TWMSetFocus); message WM_SETFOCUS;//006C14DC
    //procedure WMKillFocus(?:?); message WM_KILLFOCUS;//006C1360
    //procedure WMEraseBkgnd(?:?); message WM_ERASEBKGND;//006C1594
    procedure CMCtl3DChanged(var Message:Messages.TMessage); message WM_CANCELMODE;//006C16BC
    //procedure WMSetCursor(?:?); message WM_SETCURSOR;//006C1430
    //procedure WMNCHitTest(?:?); message WM_NCHITTEST;//006C13D8
    //procedure WMGetDlgCode(?:?); message WM_GETDLGCODE;//006C1330
    procedure WMChar(Message:Messages.TWMKeyUp); message WM_CHAR;//006C1280
    procedure WMCommand(Message:Messages.TWMCharToItem); message WM_COMMAND;//006C12FC
    procedure WMTimer; message WM_TIMER;//006C187C
    procedure WMHScroll(var Msg:Messages.TWMHScroll); message WM_HSCROLL;//006C1580
    procedure WMVScroll(var Msg:Messages.TWMVScroll); message WM_VSCROLL;//006C1568
    //procedure WMLButtonDown(?:?); message WM_LBUTTONDOWN;//006C13B0
    //procedure CMCancelMode(?:?); message CM_CANCELMODE;//006C16D0
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//006C1700
    procedure CMCtl3DChanged; message CM_CTL3DCHANGED;//006C1768
    //procedure CMMouseLeave(?:?); message CM_MOUSELEAVE;//006C1724
    procedure CMShowingChanged; message CM_SHOWINGCHANGED;//006C1B7C
    procedure CMDesignHitTest(var Msg:Controls.TCMDesignHitTest); message CM_DESIGNHITTEST;//006C177C
    //procedure CMWantSpecialKey(?:?); message CM_WANTSPECIALKEY;//006C179C
    procedure EndRowDrag(var Origin:Integer; var Destination:Integer; const MousePt:Types.TPoint); dynamic;//006C1B70
    procedure EndColumnDrag(var Origin:Integer; var Destination:Integer; const MousePt:Types.TPoint); dynamic;//006C1B64
    procedure BeginRowDrag(var Origin:Integer; var Destination:Integer; const MousePt:Types.TPoint); dynamic;//006C1B40
    procedure BeginColumnDrag(var Origin:Integer; var Destination:Integer; const MousePt:Types.TPoint); dynamic;//006C1B34
    procedure CheckRowDrag(var Origin:Integer; var Destination:Integer; const MousePt:Types.TPoint); dynamic;//006C1B58
    procedure CheckColumnDrag(var Origin:Integer; var Destination:Integer; const MousePt:Types.TPoint); dynamic;//006C1B4C
    procedure RowHeightsChanged; dynamic;//006C19EC
    procedure ColWidthsChanged; dynamic;//006C19D8
    //procedure sub_006C17C8(?:?); dynamic;//006C17C8
    procedure sub_006BAF08; dynamic;//006BAF08
    procedure sub_006BAEAC; dynamic;//006BAEAC
    procedure sub_006BAE50; dynamic;//006BAE50
    procedure sub_006BADC8; dynamic;//006BADC8
    procedure sub_006BAA30; dynamic;//006BAA30
    procedure GetEditMask(ACol:LongInt; ARow:LongInt); dynamic;//006BAA04
    procedure sub_006BAA2C; dynamic;//006BAA2C
    procedure sub_006BAA24; dynamic;//006BAA24
    procedure GetEditText(ACol:LongInt; ARow:LongInt); dynamic;//006BAA14
    //procedure sub_006BDA88(?:?); dynamic;//006BDA88
    procedure sub_006BA870; dynamic;//006BA870
    procedure sub_006BA86C; dynamic;//006BA86C
    procedure sub_006BA868; dynamic;//006BA868
    //procedure sub_006BA594(?:?; ?:?; ?:?); dynamic;//006BA594
    //procedure sub_004EEC30(?:?); dynamic;//006BF95C
    //procedure sub_004EE9E0(?:?; ?:?); dynamic;//006BF2C8
    procedure sub_004EE488; dynamic;//006BA728
    //procedure sub_004E9010(?:?; ?:?; ?:?; ?:?); dynamic;//006C04BC
    //procedure sub_004E8F54(?:?; ?:?; ?:?); dynamic;//006C0214
    //procedure sub_004E8C70(?:?; ?:?; ?:?; ?:?); dynamic;//006BFBC0
    //procedure sub_004E5F1C(?:?); dynamic;//006BDE38
    //procedure sub_004E7B48(?:?; ?:?); dynamic;//006C1AE0
    procedure DoMouseWheelUp(Shift:Classes.TShiftState; MousePos:Types.TPoint); dynamic;//006C1A88
    procedure ChangeScale(M:Integer; D:Integer); dynamic;//006BA8D0
  end;
  TGetEditEvent = procedure(Sender:TObject; ACol:Integer; ARow:Integer; var Value:string) of object;;
  TSetEditEvent = procedure(Sender:TObject; ACol:Integer; ARow:Integer; const Value:string) of object;;
  TMovedEvent = procedure(Sender:TObject; FromIndex:Integer; ToIndex:Integer) of object;;
  TCustomDrawGrid = class(TCustomGrid)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function GetColWidths(Index:Integer):Integer;//006C0958
    procedure SetColWidths(Index:Integer; Value:Integer);//006C0AB8
    function CellRect(ACol:Integer; ARow:Integer):TRect;//006C1BB8
    procedure MouseToCell(X:Integer; Y:Integer; var ARow:Integer; var ACol:Integer);//006C1BDC
    function GetRowHeights(Index:Integer):Integer;//006C0978
    function GetTabStops(Index:Integer):Boolean;//006C09DC
    procedure SetRowHeights(Index:Integer; Value:Integer);//006C0EE8
  public
    FOnColumnMoved:TMovedEvent;//f358
    f35A:word;//f35A
    f35C:dword;//f35C
    FOnDrawCell:TDrawCellEvent;//f360
    f362:word;//f362
    f364:dword;//f364
    FOnGetEditMask:TGetEditEvent;//f368
    FOnGetEditText:TGetEditEvent;//f370
    f372:word;//f372
    f374:dword;//f374
    FOnRowMoved:TMovedEvent;//f378
    f37A:word;//f37A
    f37C:dword;//f37C
    FOnSelectCell:TSelectCellEvent;//f380
    f382:word;//f382
    f384:dword;//f384
    FOnSetEditText:TSetEditEvent;//f388
    FOnTopLeftChanged:TNotifyEvent;//f390
    f392:word;//f392
    f394:dword;//f394
    //procedure v11C(?:?; ?:?; ?:?; ?:?); virtual;//v11C//006C1D30
    //function v128(?:?):?; virtual;//v128//006C1CD4
    procedure sub_006BAF08; dynamic;//006C1DD0
    //procedure sub_006BAE50(?:?); dynamic;//006C1CB4
    //procedure sub_006BADC8(?:?); dynamic;//006C1C14
    procedure GetEditText(ACol:LongInt; ARow:LongInt); dynamic;//006C1C34
    procedure SetEditText(ACol:LongInt; ARow:LongInt; const Value:UnicodeString); dynamic;//006C1D04
    //procedure GetEditText(ACol:LongInt; ARow:LongInt; ?:?); dynamic;//006C1C74
  end;
  TDrawGrid = class(TCustomDrawGrid)
  end;
  TStringGridStrings = class(TStrings)
  published
    procedure Clear;//006C3E1C
    procedure Delete(Index:Integer);//006C3EDC
    procedure Insert(Index:Integer; S:string);//006C3FBC
    constructor Create(AIndex:Integer);//006C3A38
    function Add(S:string):Integer;//006C3BB8
    procedure Assign(Source:TPersistent);//006C3A80
  public
    FGrid:TStringGrid;//f2C
    FIndex:Integer;//f30
    procedure Assign(Source:TPersistent); virtual;//v8//006C3A80
    function Get(Index:Integer):UnicodeString; virtual;//vC//006C3F24
    //function GetCount:?; virtual;//v14//006C3F64
    function GetObject(Index:Integer):TObject; virtual;//v18//006C3F88
    procedure Put(Index:Integer; const S:UnicodeString); virtual;//v20//006C4008
    procedure PutObject(Index:Integer; AObject:TObject); virtual;//v24//006C4038
    procedure SetUpdateState(Updating:Boolean); virtual;//v34//006C4068
    function Add(S:string):Integer; virtual;//v3C//006C3BB8
    procedure Clear; virtual;//v48//006C3E1C
    procedure Delete(Index:Integer); virtual;//v4C//006C3EDC
    procedure Insert(Index:Integer; S:string); virtual;//v64//006C3FBC
  end;
  TStringGrid = class(TDrawGrid)
  published
    procedure SetObjects(ACol:Integer; ARow:Integer; Value:TObject);//006C4B54
    function GetObjects(ACol:Integer; ARow:Integer):TObject;//006C4AD8
    function GetCells(ACol:Integer; ARow:Integer):string;//006C4A94
    destructor Destroy();//006C4244
    constructor Create;//006C4074
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure SetCells(ACol:Integer; ARow:Integer; Value:string);//006C4B04
  public
    FUpdating:Boolean;//f398
    FNeedsUpdating:Boolean;//f399
    FEditUpdate:Integer;//f39C
    FData:Pointer;//f3A0
    FRows:Pointer;//f3A4
    FCols:Pointer;//f3A8
    destructor Destroy(); virtual;//006C4244
    constructor Create; virtual;//v3C//006C4074
    //procedure v11C(?:?; ?:?; ?:?; ?:?); virtual;//v11C//006C46D4
    //procedure sub_006BAE50(?:?; ?:?); dynamic;//006C459C
    //procedure sub_006BADC8(?:?; ?:?); dynamic;//006C4500
    procedure SetEditText(ACol:LongInt; ARow:LongInt; const Value:UnicodeString); dynamic;//006C4614
    //procedure GetEditText(ACol:LongInt; ARow:LongInt; ?:?); dynamic;//006C45D0
  end;
    //function sub_006B122C(?:TSpinButton; ?:?):?;//006B122C
    procedure CreateWnd;//006B12A4
    procedure Notification(AComponent:TComponent; Operation:TOperation);//006B12CC
    //procedure WMEraseBkgnd(?:?);//006B13B4
    //procedure WMSize(?:?);//006B1474
    procedure WMSetFocus(var Message:Messages.TWMSetFocus);//006B14D4
    procedure WMKillFocus;//006B14FC
    //procedure sub_004EE9E0(?:?; ?:?);//006B1528
    //procedure sub_006B1590(?:?; ?:?; ?:?);//006B1590
    //procedure sub_006B162C(?:?; ?:?);//006B162C
    procedure sub_006B1670(?:TSpinButton; ?:TTimerSpeedButton);//006B1670
    procedure WMGetDlgCode(var Message:Messages.TWMGetDlgCode);//006B16EC
    procedure CMFontChanged(var Message:TMessage);//006B16F4
    //procedure sub_004EE9E0(?:?; ?:?);//006B1998
    //procedure sub_004EEC30(?:?);//006B19DC
    //procedure sub_006B1A14(?:?);//006B1A14
    procedure CreateParams(var Params:Controls.TCreateParams);//006B1AC4
    procedure CreateWnd;//006B1AE0
    //procedure WMSize(?:?);//006B1B74
    //function sub_006B1C0C(?:TSpinEdit):?;//006B1C0C
    procedure sub_006B1C80;//006B1C80
    procedure sub_006B1CB0;//006B1CB0
    //procedure WMPaste(?:?);//006B1CE0
    //procedure WMCut(?:?);//006B1D08
    //procedure WMGetDlgCode(?:?);//006B1D30
    procedure CMExit(var Message:Controls.TCMExit);//006B1D40
    //procedure CMEnter(?:?);//006B1E50
    //procedure sub_004E8C70(?:?; ?:?; ?:?; ?:?);//006B1EAC
    //procedure sub_004E9010(?:?; ?:?; ?:?; ?:?);//006B1F24
    procedure sub_006B1FDC;//006B1FDC
    //function sub_006B22D4(?:TEditMask; ?:?):?;//006B22D4
    //function sub_006B24EC(?:TEditMask; ?:?):?;//006B24EC
    //function sub_006B2594(?:?):?;//006B2594
    //procedure sub_006B25BC(?:?; ?:?; ?:?; ?:?);//006B25BC
    //function sub_006B2804(?:?):?;//006B2804
    //function sub_006B28CC(?:?):?;//006B28CC
    //procedure sub_006B2964(?:?; ?:?; ?:?);//006B2964
    //function sub_006B29F4(?:TEditMask; ?:?):?;//006B29F4
    //function sub_006B2A4C(?:TEditMask; ?:Integer):?;//006B2A4C
    //function sub_006B2AB0(?:TEditMask):?;//006B2AB0
    //procedure sub_006B2ADC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//006B2ADC
    //procedure sub_006B2C84(?:?; ?:?; ?:?; ?:?);//006B2C84
    //procedure sub_004EE9E0(?:?; ?:?);//006B413C
    //procedure sub_004EEB14(?:?; ?:?);//006B4220
    //procedure sub_004EEC30(?:?);//006B4270
    //procedure WMLButtonDown(?:?);//006B42E4
    //procedure WMLButtonUp(?:?);//006B4300
    procedure WMSetFocus(var Message:Messages.TWMSetFocus);//006B4360
    //procedure WMCut(?:?);//006B45E8
    //procedure WMPaste(?:?);//006B4660
    procedure sub_006B47A4(?:TMaskEdit; ?:TEditMask);//006B47A4
    //function sub_006B4C94:?;//006B4C94
    procedure sub_006B4C98;//006B4C98
    //function sub_006B4CC0(?:TCustomMaskEdit; ?:?):?;//006B4CC0
    //procedure sub_006B4E98(?:TCustomMaskEdit; ?:?; ?:?);//006B4E98
    //procedure sub_006B508C(?:TCustomMaskEdit; ?:Integer; ?:?);//006B508C
    //procedure sub_006B513C(?:TCustomMaskEdit; ?:?; ?:?);//006B513C
    //procedure CMEnter(?:?);//006B5320
    procedure CMTextChanged;//006B53B0
    procedure CMWantSpecialKey(var Message:Controls.TCMWantSpecialKey);//006B5440
    procedure CMExit(Message:Controls.TCMExit);//006B5478
    procedure sub_006B554C;//006B554C
    //procedure sub_006B5588(?:?; ?:?; ?:?; ?:?);//006B5588
    //procedure sub_006B55D0(?:?; ?:?; ?:?);//006B55D0
    //function sub_006B57D4(?:TCustomMaskEdit; ?:?; ?:Integer):?;//006B57D4
    function IsKatakana(const Chr:Byte):Boolean;//006B5874
    //function sub_006B588C(?:?):?;//006B588C
    //function sub_006B5910(?:TCustomMaskEdit; ?:?; ?:?):?;//006B5910
    //procedure sub_006B5BFC(?:?; ?:?);//006B5BFC
    //function sub_006B5D58(?:TCustomMaskEdit; ?:UnicodeString; ?:?; ?:?):?;//006B5D58
    //function sub_006B6074(?:TCustomMaskEdit; ?:?; ?:?):?;//006B6074
    procedure InvalidOp(const id:UnicodeString);//006B9408
    function GridRect(Coord1:TGridCoord; Coord2:TGridCoord):TGridRect;//006B9420
    function PointInGridRect(Col:LongInt; Row:LongInt; const Rect:TGridRect):Boolean;//006B9488
    function PtInRect(X:Integer; Y:Integer; const Rect:Types.TRect):Boolean;//006B94A4
    function Includes(const P1:Types.TPoint; var P2:Types.TPoint):Boolean;//006B94C0
    function Build(var R:Types.TRect; const P1:Types.TPoint; const P2:Types.TPoint; const P3:Types.TPoint):Boolean;//006B950C
    procedure XorRects(const R1:Types.TRect; const R2:Types.TRect; var XorRects:TXorRects);//006B9584
    procedure ModifyExtents(var Extents:Pointer; Index:LongInt; Amount:LongInt; Default:Integer);//006B96F4
    procedure UpdateExtents(var Extents:Pointer; NewSize:LongInt; Default:Integer);//006B97E4
    procedure MoveExtent(var Extents:Pointer; FromIndex:LongInt; ToIndex:LongInt);//006B9800
    function CompareExtents(E1:Pointer; E2:Pointer):Boolean;//006B985C
    function MulDiv(nNumerator:Integer; nDenominator:Integer):Integer; stdcall;//006B9890
    procedure CreateParams(var Params:Controls.TCreateParams);//006B98FC
    //procedure sub_006B990C(?:?; ?:?);//006B990C
    procedure CMShowingChanged;//006B9914
    //procedure WMGetDlgCode(?:?);//006B9918
    //procedure WMPaste(?:?);//006B9940
    //procedure WMClear(?:?);//006B9960
    //procedure WMCut(?:?);//006B9980
    procedure sub_004E8C50;//006B99A0
    //procedure sub_004E7A2C(?:?; ?:?; ?:?);//006B99B4
    procedure sub_006B99F0;//006B99F0
    //procedure sub_006B9A04(?:?);//006B9A04
    //procedure sub_006B9A38(?:?);//006B9A38
    //function sub_006B9A80(?:?):Boolean;//006B9A80
    function Ctrl:Boolean;//006B9A9C
    function Selection:TSelection;//006B9AAC
    function CaretPos:Integer;//006B9AD0
    function RightSide:Boolean;//006B9B0C
    function LeftSide:Boolean;//006B9B64
    //procedure sub_004EE9E0(?:?; ?:?);//006B9BB0
    //procedure sub_004EEC30(?:?);//006B9DE8
    //procedure sub_004EEB14(?:?; ?:?);//006B9ED4
    //procedure sub_006B9EF8(?:?);//006B9EF8
    procedure sub_006BA130;//006BA130
    procedure sub_006BA194;//006BA194

implementation

{$R *.DFM}

//006ADE20
procedure TOverwriteDlg.Translate(IniFile:TFXIniFile);
begin
{*
 006ADE20    push        ebp
 006ADE21    mov         ebp,esp
 006ADE23    mov         ecx,5
 006ADE28    push        0
 006ADE2A    push        0
 006ADE2C    dec         ecx
>006ADE2D    jne         006ADE28
 006ADE2F    push        ebx
 006ADE30    push        esi
 006ADE31    push        edi
 006ADE32    mov         esi,edx
 006ADE34    mov         ebx,eax
 006ADE36    xor         eax,eax
 006ADE38    push        ebp
 006ADE39    push        6ADFCA
 006ADE3E    push        dword ptr fs:[eax]
 006ADE41    mov         dword ptr fs:[eax],esp
 006ADE44    push        6ADFE4;'Panel ID conflict'
 006ADE49    lea         eax,[ebp-8]
 006ADE4C    push        eax
 006ADE4D    mov         ecx,6AE014;'sPanelIDConflict'
 006ADE52    mov         edx,6AE044;'OverwriteDlg'
 006ADE57    mov         eax,esi
 006ADE59    mov         edi,dword ptr [eax]
 006ADE5B    call        dword ptr [edi+4];TFXIniFile.ReadString
 006ADE5E    push        dword ptr [ebp-8]
 006ADE61    push        6AE06C;' ('
 006ADE66    lea         edx,[ebp-0C]
 006ADE69    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 006ADE6E    mov         eax,dword ptr [eax]
 006ADE70    call        005DDC74
 006ADE75    push        dword ptr [ebp-0C]
 006ADE78    push        6AE080;')'
 006ADE7D    lea         eax,[ebp-4]
 006ADE80    mov         edx,4
 006ADE85    call        @UStrCatN
 006ADE8A    mov         edx,dword ptr [ebp-4]
 006ADE8D    mov         eax,[00901E0C];gvar_00901E0C:TOverwriteDlg
 006ADE92    call        TControl.SetText
 006ADE97    push        6AE090;'A panel with the same ID as the newly read data already exists! '
 006ADE9C    lea         eax,[ebp-10]
 006ADE9F    push        eax
 006ADEA0    mov         ecx,6AE120;'sSameIDExists'
 006ADEA5    mov         edx,6AE044;'OverwriteDlg'
 006ADEAA    mov         eax,esi
 006ADEAC    mov         edi,dword ptr [eax]
 006ADEAE    call        dword ptr [edi+4];TFXIniFile.ReadString
 006ADEB1    mov         edx,dword ptr [ebp-10]
 006ADEB4    mov         eax,dword ptr [ebx+3C0];TOverwriteDlg.Label1:TLabel
 006ADEBA    call        TControl.SetText
 006ADEBF    push        6AE148;'Press Overwrite to overwrite the existing data'
 006ADEC4    lea         eax,[ebp-14]
 006ADEC7    push        eax
 006ADEC8    mov         ecx,6AE1B4;'sPressOverwrite'
 006ADECD    mov         edx,6AE044;'OverwriteDlg'
 006ADED2    mov         eax,esi
 006ADED4    mov         edi,dword ptr [eax]
 006ADED6    call        dword ptr [edi+4];TFXIniFile.ReadString
 006ADED9    mov         edx,dword ptr [ebp-14]
 006ADEDC    mov         eax,dword ptr [ebx+3C8];TOverwriteDlg.Label2:TLabel
 006ADEE2    call        TControl.SetText
 006ADEE7    push        6AE1E0;'Overwrite'
 006ADEEC    lea         eax,[ebp-18]
 006ADEEF    push        eax
 006ADEF0    mov         ecx,6AE200;'sOverwrite'
 006ADEF5    mov         edx,6AE044;'OverwriteDlg'
 006ADEFA    mov         eax,esi
 006ADEFC    mov         edi,dword ptr [eax]
 006ADEFE    call        dword ptr [edi+4];TFXIniFile.ReadString
 006ADF01    mov         edx,dword ptr [ebp-18]
 006ADF04    mov         eax,dword ptr [ebx+3CC];TOverwriteDlg.btnOverwrite:TButton
 006ADF0A    call        TControl.SetText
 006ADF0F    push        6AE224;'Press New ID to assign a new ID'
 006ADF14    lea         eax,[ebp-1C]
 006ADF17    push        eax
 006ADF18    mov         ecx,6AE270;'sPressNewID'
 006ADF1D    mov         edx,6AE044;'OverwriteDlg'
 006ADF22    mov         eax,esi
 006ADF24    mov         edi,dword ptr [eax]
 006ADF26    call        dword ptr [edi+4];TFXIniFile.ReadString
 006ADF29    mov         edx,dword ptr [ebp-1C]
 006ADF2C    mov         eax,dword ptr [ebx+3D4];TOverwriteDlg.Label3:TLabel
 006ADF32    call        TControl.SetText
 006ADF37    push        6AE294;'New ID'
 006ADF3C    lea         eax,[ebp-20]
 006ADF3F    push        eax
 006ADF40    mov         ecx,6AE2B0;'sNewID'
 006ADF45    mov         edx,6AE044;'OverwriteDlg'
 006ADF4A    mov         eax,esi
 006ADF4C    mov         edi,dword ptr [eax]
 006ADF4E    call        dword ptr [edi+4];TFXIniFile.ReadString
 006ADF51    mov         edx,dword ptr [ebp-20]
 006ADF54    mov         eax,dword ptr [ebx+3E0];TOverwriteDlg.btnNewID:TButton
 006ADF5A    call        TControl.SetText
 006ADF5F    push        6AE2CC;'Press Cancel to cancel this panels data'
 006ADF64    lea         eax,[ebp-24]
 006ADF67    push        eax
 006ADF68    mov         ecx,6AE328;'sPressCancel'
 006ADF6D    mov         edx,6AE044;'OverwriteDlg'
 006ADF72    mov         eax,esi
 006ADF74    mov         edi,dword ptr [eax]
 006ADF76    call        dword ptr [edi+4];TFXIniFile.ReadString
 006ADF79    mov         edx,dword ptr [ebp-24]
 006ADF7C    mov         eax,dword ptr [ebx+3E8];TOverwriteDlg.Label4:TLabel
 006ADF82    call        TControl.SetText
 006ADF87    push        6AE350;'Cancel'
 006ADF8C    lea         eax,[ebp-28]
 006ADF8F    push        eax
 006ADF90    mov         ecx,6AE36C;'sCancel'
 006ADF95    mov         edx,6AE044;'OverwriteDlg'
 006ADF9A    mov         eax,esi
 006ADF9C    mov         esi,dword ptr [eax]
 006ADF9E    call        dword ptr [esi+4];TFXIniFile.ReadString
 006ADFA1    mov         edx,dword ptr [ebp-28]
 006ADFA4    mov         eax,dword ptr [ebx+3EC];TOverwriteDlg.btnCancel:TButton
 006ADFAA    call        TControl.SetText
 006ADFAF    xor         eax,eax
 006ADFB1    pop         edx
 006ADFB2    pop         ecx
 006ADFB3    pop         ecx
 006ADFB4    mov         dword ptr fs:[eax],edx
 006ADFB7    push        6ADFD1
 006ADFBC    lea         eax,[ebp-28]
 006ADFBF    mov         edx,0A
 006ADFC4    call        @UStrArrayClr
 006ADFC9    ret
>006ADFCA    jmp         @HandleFinally
>006ADFCF    jmp         006ADFBC
 006ADFD1    pop         edi
 006ADFD2    pop         esi
 006ADFD3    pop         ebx
 006ADFD4    mov         esp,ebp
 006ADFD6    pop         ebp
 006ADFD7    ret
*}
end;

//006AE37C
procedure TOverwriteDlg.FormCreate(Sender:TObject);
begin
{*
 006AE37C    push        ebp
 006AE37D    mov         ebp,esp
 006AE37F    add         esp,0FFFFFFE8
 006AE382    push        ebx
 006AE383    xor         ecx,ecx
 006AE385    mov         dword ptr [ebp-4],ecx
 006AE388    mov         dword ptr [ebp-18],ecx
 006AE38B    mov         ebx,eax
 006AE38D    xor         eax,eax
 006AE38F    push        ebp
 006AE390    push        6AE3FE
 006AE395    push        dword ptr fs:[eax]
 006AE398    mov         dword ptr fs:[eax],esp
 006AE39B    lea         eax,[ebp-4]
 006AE39E    push        eax
 006AE39F    mov         eax,6AE418;'Panel ID conflict'
 006AE3A4    mov         dword ptr [ebp-14],eax
 006AE3A7    mov         byte ptr [ebp-10],11
 006AE3AB    lea         edx,[ebp-18]
 006AE3AE    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 006AE3B3    mov         eax,dword ptr [eax]
 006AE3B5    call        005DDC74
 006AE3BA    mov         eax,dword ptr [ebp-18]
 006AE3BD    mov         dword ptr [ebp-0C],eax
 006AE3C0    mov         byte ptr [ebp-8],11
 006AE3C4    lea         edx,[ebp-14]
 006AE3C7    mov         ecx,1
 006AE3CC    mov         eax,6AE448;'%s (%s)'
 006AE3D1    call        Format
 006AE3D6    mov         edx,dword ptr [ebp-4]
 006AE3D9    mov         eax,ebx
 006AE3DB    call        TControl.SetText
 006AE3E0    xor         eax,eax
 006AE3E2    pop         edx
 006AE3E3    pop         ecx
 006AE3E4    pop         ecx
 006AE3E5    mov         dword ptr fs:[eax],edx
 006AE3E8    push        6AE405
 006AE3ED    lea         eax,[ebp-18]
 006AE3F0    call        @UStrClr
 006AE3F5    lea         eax,[ebp-4]
 006AE3F8    call        @UStrClr
 006AE3FD    ret
>006AE3FE    jmp         @HandleFinally
>006AE403    jmp         006AE3ED
 006AE405    pop         ebx
 006AE406    mov         esp,ebp
 006AE408    pop         ebp
 006AE409    ret
*}
end;

//006AE458
procedure TOverwriteDlg.FormShow(Sender:TObject);
begin
{*
 006AE458    mov         edx,dword ptr ds:[7C4BFC];^gvar_007CA840
 006AE45E    cmp         byte ptr [edx],0
>006AE461    je          006AE473
 006AE463    xor         edx,edx
 006AE465    mov         eax,dword ptr [eax+3D0];TOverwriteDlg.GroupBox2:TGroupBox
 006AE46B    mov         ecx,dword ptr [eax]
 006AE46D    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006AE473    ret
*}
end;

//006AE9D4
procedure TMergeEsaForm.btnBrowseClick(Sender:TObject);
begin
{*
 006AE9D4    push        ebp
 006AE9D5    mov         ebp,esp
 006AE9D7    push        0
 006AE9D9    push        ebx
 006AE9DA    mov         ebx,eax
 006AE9DC    xor         eax,eax
 006AE9DE    push        ebp
 006AE9DF    push        6AEA2B
 006AE9E4    push        dword ptr fs:[eax]
 006AE9E7    mov         dword ptr fs:[eax],esp
 006AE9EA    mov         eax,dword ptr [ebx+3E8];TMergeEsaForm.OpenDialog1:TOpenDialog
 006AE9F0    mov         edx,dword ptr [eax]
 006AE9F2    call        dword ptr [edx+54];TCommonDialog.Execute
 006AE9F5    test        al,al
>006AE9F7    je          006AEA15
 006AE9F9    lea         edx,[ebp-4]
 006AE9FC    mov         eax,dword ptr [ebx+3E8];TMergeEsaForm.OpenDialog1:TOpenDialog
 006AEA02    call        TOpenDialog.GetFileName
 006AEA07    mov         edx,dword ptr [ebp-4]
 006AEA0A    mov         eax,dword ptr [ebx+3C4];TMergeEsaForm.edFileName:TEdit
 006AEA10    call        TControl.SetText
 006AEA15    xor         eax,eax
 006AEA17    pop         edx
 006AEA18    pop         ecx
 006AEA19    pop         ecx
 006AEA1A    mov         dword ptr fs:[eax],edx
 006AEA1D    push        6AEA32
 006AEA22    lea         eax,[ebp-4]
 006AEA25    call        @UStrClr
 006AEA2A    ret
>006AEA2B    jmp         @HandleFinally
>006AEA30    jmp         006AEA22
 006AEA32    pop         ebx
 006AEA33    pop         ecx
 006AEA34    pop         ebp
 006AEA35    ret
*}
end;

//006AEA38
procedure TMergeEsaForm.btnReadClick(Sender:TObject);
begin
{*
 006AEA38    push        ebp
 006AEA39    mov         ebp,esp
 006AEA3B    mov         ecx,9
 006AEA40    push        0
 006AEA42    push        0
 006AEA44    dec         ecx
>006AEA45    jne         006AEA40
 006AEA47    push        ebx
 006AEA48    mov         ebx,eax
 006AEA4A    xor         eax,eax
 006AEA4C    push        ebp
 006AEA4D    push        6AED34
 006AEA52    push        dword ptr fs:[eax]
 006AEA55    mov         dword ptr fs:[eax],esp
 006AEA58    lea         edx,[ebp-4]
 006AEA5B    mov         eax,dword ptr [ebx+3C4];TMergeEsaForm.edFileName:TEdit
 006AEA61    call        TControl.GetText
 006AEA66    mov         eax,dword ptr [ebp-4]
 006AEA69    mov         dl,1
 006AEA6B    call        0041EA18
 006AEA70    test        al,al
>006AEA72    je          006AECFC
 006AEA78    mov         eax,dword ptr [ebx+3DC];TMergeEsaForm.RichEdit1:TRichEdit
 006AEA7E    mov         edx,dword ptr [eax]
 006AEA80    call        dword ptr [edx+124];TCustomRichEdit.Clear
 006AEA86    lea         edx,[ebp-8]
 006AEA89    mov         eax,dword ptr [ebx+3C4];TMergeEsaForm.edFileName:TEdit
 006AEA8F    call        TControl.GetText
 006AEA94    mov         eax,dword ptr [ebp-8]
 006AEA97    call        006AA7B8
 006AEA9C    test        al,al
>006AEA9E    je          006AECFC
 006AEAA4    mov         edx,dword ptr ds:[7C44B8];^gvar_008DF5E0:Integer
 006AEAAA    mov         edx,dword ptr [edx+4]
 006AEAAD    mov         eax,dword ptr [ebx+3D0];TMergeEsaForm.edSavedBy:TEdit
 006AEAB3    call        TControl.SetText
 006AEAB8    lea         eax,[ebp-0C]
 006AEABB    push        eax
 006AEABC    mov         eax,[007C44B8];^gvar_008DF5E0:Integer
 006AEAC1    movzx       eax,byte ptr [eax+1]
 006AEAC5    mov         dword ptr [ebp-1C],eax
 006AEAC8    mov         byte ptr [ebp-18],0
 006AEACC    mov         eax,[007C44B8];^gvar_008DF5E0:Integer
 006AEAD1    movzx       eax,byte ptr [eax+2]
 006AEAD5    mov         dword ptr [ebp-14],eax
 006AEAD8    mov         byte ptr [ebp-10],0
 006AEADC    lea         edx,[ebp-1C]
 006AEADF    mov         ecx,1
 006AEAE4    mov         eax,6AED4C;'%d.%d'
 006AEAE9    call        Format
 006AEAEE    mov         edx,dword ptr [ebp-0C]
 006AEAF1    mov         eax,dword ptr [ebx+3D8];TMergeEsaForm.edVersion:TEdit
 006AEAF7    call        TControl.SetText
 006AEAFC    lea         eax,[ebp-20]
 006AEAFF    push        eax
 006AEB00    mov         eax,[007C44B8];^gvar_008DF5E0:Integer
 006AEB05    movzx       eax,byte ptr [eax]
 006AEB08    mov         dword ptr [ebp-28],eax
 006AEB0B    mov         byte ptr [ebp-24],0
 006AEB0F    lea         edx,[ebp-28]
 006AEB12    xor         ecx,ecx
 006AEB14    mov         eax,6AED64;'Level     = %d'
 006AEB19    call        Format
 006AEB1E    mov         edx,dword ptr [ebp-20]
 006AEB21    mov         eax,dword ptr [ebx+3DC];TMergeEsaForm.RichEdit1:TRichEdit
 006AEB27    mov         eax,dword ptr [eax+2E8];TRichEdit.FRichEditStrings:TStrings
 006AEB2D    mov         ecx,dword ptr [eax]
 006AEB2F    call        dword ptr [ecx+3C];TStrings.Add
 006AEB32    lea         eax,[ebp-2C]
 006AEB35    push        eax
 006AEB36    mov         eax,[007C44B8];^gvar_008DF5E0:Integer
 006AEB3B    movzx       eax,byte ptr [eax+8]
 006AEB3F    mov         dword ptr [ebp-28],eax
 006AEB42    mov         byte ptr [ebp-24],0
 006AEB46    lea         edx,[ebp-28]
 006AEB49    xor         ecx,ecx
 006AEB4B    mov         eax,6AED90;'LoopNum   = %d'
 006AEB50    call        Format
 006AEB55    mov         edx,dword ptr [ebp-2C]
 006AEB58    mov         eax,dword ptr [ebx+3DC];TMergeEsaForm.RichEdit1:TRichEdit
 006AEB5E    mov         eax,dword ptr [eax+2E8];TRichEdit.FRichEditStrings:TStrings
 006AEB64    mov         ecx,dword ptr [eax]
 006AEB66    call        dword ptr [ecx+3C];TStrings.Add
 006AEB69    lea         eax,[ebp-30]
 006AEB6C    push        eax
 006AEB6D    mov         eax,[007C46DC];^gvar_008DF5EC:AnsiString
 006AEB72    mov         eax,dword ptr [eax]
 006AEB74    mov         dword ptr [ebp-28],eax
 006AEB77    mov         byte ptr [ebp-24],0B
 006AEB7B    lea         edx,[ebp-28]
 006AEB7E    xor         ecx,ecx
 006AEB80    mov         eax,6AEDBC;'Descript_1= %s'
 006AEB85    call        Format
 006AEB8A    mov         edx,dword ptr [ebp-30]
 006AEB8D    mov         eax,dword ptr [ebx+3DC];TMergeEsaForm.RichEdit1:TRichEdit
 006AEB93    mov         eax,dword ptr [eax+2E8];TRichEdit.FRichEditStrings:TStrings
 006AEB99    mov         ecx,dword ptr [eax]
 006AEB9B    call        dword ptr [ecx+3C];TStrings.Add
 006AEB9E    lea         eax,[ebp-34]
 006AEBA1    push        eax
 006AEBA2    mov         eax,[007C46DC];^gvar_008DF5EC:AnsiString
 006AEBA7    mov         eax,dword ptr [eax+4]
 006AEBAA    mov         dword ptr [ebp-28],eax
 006AEBAD    mov         byte ptr [ebp-24],0B
 006AEBB1    lea         edx,[ebp-28]
 006AEBB4    xor         ecx,ecx
 006AEBB6    mov         eax,6AEDE8;'Descript_2= %s'
 006AEBBB    call        Format
 006AEBC0    mov         edx,dword ptr [ebp-34]
 006AEBC3    mov         eax,dword ptr [ebx+3DC];TMergeEsaForm.RichEdit1:TRichEdit
 006AEBC9    mov         eax,dword ptr [eax+2E8];TRichEdit.FRichEditStrings:TStrings
 006AEBCF    mov         ecx,dword ptr [eax]
 006AEBD1    call        dword ptr [ecx+3C];TStrings.Add
 006AEBD4    lea         eax,[ebp-38]
 006AEBD7    push        eax
 006AEBD8    mov         eax,[007C46DC];^gvar_008DF5EC:AnsiString
 006AEBDD    mov         eax,dword ptr [eax+8]
 006AEBE0    mov         dword ptr [ebp-28],eax
 006AEBE3    mov         byte ptr [ebp-24],0B
 006AEBE7    lea         edx,[ebp-28]
 006AEBEA    xor         ecx,ecx
 006AEBEC    mov         eax,6AEE14;'Descript_3= %s'
 006AEBF1    call        Format
 006AEBF6    mov         edx,dword ptr [ebp-38]
 006AEBF9    mov         eax,dword ptr [ebx+3DC];TMergeEsaForm.RichEdit1:TRichEdit
 006AEBFF    mov         eax,dword ptr [eax+2E8];TRichEdit.FRichEditStrings:TStrings
 006AEC05    mov         ecx,dword ptr [eax]
 006AEC07    call        dword ptr [ecx+3C];TStrings.Add
 006AEC0A    lea         eax,[ebp-3C]
 006AEC0D    push        eax
 006AEC0E    mov         eax,[007C4294];^gvar_008DF5F8:Integer
 006AEC13    movzx       eax,byte ptr [eax+3]
 006AEC17    mov         dword ptr [ebp-28],eax
 006AEC1A    mov         byte ptr [ebp-24],0
 006AEC1E    lea         edx,[ebp-28]
 006AEC21    xor         ecx,ecx
 006AEC23    mov         eax,6AEE40;'First loop= %d'
 006AEC28    call        Format
 006AEC2D    mov         edx,dword ptr [ebp-3C]
 006AEC30    mov         eax,dword ptr [ebx+3DC];TMergeEsaForm.RichEdit1:TRichEdit
 006AEC36    mov         eax,dword ptr [eax+2E8];TRichEdit.FRichEditStrings:TStrings
 006AEC3C    mov         ecx,dword ptr [eax]
 006AEC3E    call        dword ptr [ecx+3C];TStrings.Add
 006AEC41    lea         eax,[ebp-40]
 006AEC44    push        eax
 006AEC45    mov         eax,[007C4294];^gvar_008DF5F8:Integer
 006AEC4A    movzx       eax,byte ptr [eax+105]
 006AEC51    mov         dword ptr [ebp-28],eax
 006AEC54    mov         byte ptr [ebp-24],0
 006AEC58    lea         edx,[ebp-28]
 006AEC5B    xor         ecx,ecx
 006AEC5D    mov         eax,6AEE6C;'Last loop = %d'
 006AEC62    call        Format
 006AEC67    mov         edx,dword ptr [ebp-40]
 006AEC6A    mov         eax,dword ptr [ebx+3DC];TMergeEsaForm.RichEdit1:TRichEdit
 006AEC70    mov         eax,dword ptr [eax+2E8];TRichEdit.FRichEditStrings:TStrings
 006AEC76    mov         ecx,dword ptr [eax]
 006AEC78    call        dword ptr [ecx+3C];TStrings.Add
 006AEC7B    lea         eax,[ebp-44]
 006AEC7E    push        eax
 006AEC7F    mov         eax,[007C4294];^gvar_008DF5F8:Integer
 006AEC84    movzx       eax,word ptr [eax+4]
 006AEC88    mov         dword ptr [ebp-28],eax
 006AEC8B    mov         byte ptr [ebp-24],0
 006AEC8F    lea         edx,[ebp-28]
 006AEC92    xor         ecx,ecx
 006AEC94    mov         eax,6AEE98;'First zone= %d'
 006AEC99    call        Format
 006AEC9E    mov         edx,dword ptr [ebp-44]
 006AECA1    mov         eax,dword ptr [ebx+3DC];TMergeEsaForm.RichEdit1:TRichEdit
 006AECA7    mov         eax,dword ptr [eax+2E8];TRichEdit.FRichEditStrings:TStrings
 006AECAD    mov         ecx,dword ptr [eax]
 006AECAF    call        dword ptr [ecx+3C];TStrings.Add
 006AECB2    lea         eax,[ebp-48]
 006AECB5    push        eax
 006AECB6    mov         eax,[007C4294];^gvar_008DF5F8:Integer
 006AECBB    movzx       eax,word ptr [eax+106]
 006AECC2    mov         dword ptr [ebp-28],eax
 006AECC5    mov         byte ptr [ebp-24],0
 006AECC9    lea         edx,[ebp-28]
 006AECCC    xor         ecx,ecx
 006AECCE    mov         eax,6AEEC4;'Last zone = %d'
 006AECD3    call        Format
 006AECD8    mov         edx,dword ptr [ebp-48]
 006AECDB    mov         eax,dword ptr [ebx+3DC];TMergeEsaForm.RichEdit1:TRichEdit
 006AECE1    mov         eax,dword ptr [eax+2E8];TRichEdit.FRichEditStrings:TStrings
 006AECE7    mov         ecx,dword ptr [eax]
 006AECE9    call        dword ptr [ecx+3C];TStrings.Add
 006AECEC    mov         dl,1
 006AECEE    mov         eax,dword ptr [ebx+3E0];TMergeEsaForm.btnOK:TBitBtn
 006AECF4    mov         ecx,dword ptr [eax]
 006AECF6    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006AECFC    xor         eax,eax
 006AECFE    pop         edx
 006AECFF    pop         ecx
 006AED00    pop         ecx
 006AED01    mov         dword ptr fs:[eax],edx
 006AED04    push        6AED3B
 006AED09    lea         eax,[ebp-48]
 006AED0C    mov         edx,8
 006AED11    call        @UStrArrayClr
 006AED16    lea         eax,[ebp-20]
 006AED19    call        @UStrClr
 006AED1E    lea         eax,[ebp-0C]
 006AED21    call        @UStrClr
 006AED26    lea         eax,[ebp-8]
 006AED29    mov         edx,2
 006AED2E    call        @UStrArrayClr
 006AED33    ret
>006AED34    jmp         @HandleFinally
>006AED39    jmp         006AED09
 006AED3B    pop         ebx
 006AED3C    mov         esp,ebp
 006AED3E    pop         ebp
 006AED3F    ret
*}
end;

//006AEEE4
procedure TMergeEsaForm.FormCreate(Sender:TObject);
begin
{*
 006AEEE4    push        ebp
 006AEEE5    mov         ebp,esp
 006AEEE7    add         esp,0FFFFFFF0
 006AEEEA    push        ebx
 006AEEEB    xor         ecx,ecx
 006AEEED    mov         dword ptr [ebp-4],ecx
 006AEEF0    mov         dword ptr [ebp-10],ecx
 006AEEF3    mov         ebx,eax
 006AEEF5    xor         eax,eax
 006AEEF7    push        ebp
 006AEEF8    push        6AEF57
 006AEEFD    push        dword ptr fs:[eax]
 006AEF00    mov         dword ptr fs:[eax],esp
 006AEF03    lea         eax,[ebp-4]
 006AEF06    push        eax
 006AEF07    lea         edx,[ebp-10]
 006AEF0A    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 006AEF0F    mov         eax,dword ptr [eax]
 006AEF11    call        005DDC74
 006AEF16    mov         eax,dword ptr [ebp-10]
 006AEF19    mov         dword ptr [ebp-0C],eax
 006AEF1C    mov         byte ptr [ebp-8],11
 006AEF20    lea         edx,[ebp-0C]
 006AEF23    xor         ecx,ecx
 006AEF25    mov         eax,6AEF70;'Merge ESA file (%s)'
 006AEF2A    call        Format
 006AEF2F    mov         edx,dword ptr [ebp-4]
 006AEF32    mov         eax,ebx
 006AEF34    call        TControl.SetText
 006AEF39    xor         eax,eax
 006AEF3B    pop         edx
 006AEF3C    pop         ecx
 006AEF3D    pop         ecx
 006AEF3E    mov         dword ptr fs:[eax],edx
 006AEF41    push        6AEF5E
 006AEF46    lea         eax,[ebp-10]
 006AEF49    call        @UStrClr
 006AEF4E    lea         eax,[ebp-4]
 006AEF51    call        @UStrClr
 006AEF56    ret
>006AEF57    jmp         @HandleFinally
>006AEF5C    jmp         006AEF46
 006AEF5E    pop         ebx
 006AEF5F    mov         esp,ebp
 006AEF61    pop         ebp
 006AEF62    ret
*}
end;

//006AEF98
procedure TMergeEsaForm.btnOKClick(Sender:TObject);
begin
{*
 006AEF98    push        ebp
 006AEF99    mov         ebp,esp
 006AEF9B    push        ecx
 006AEF9C    push        ebx
 006AEF9D    push        esi
 006AEF9E    push        edi
 006AEF9F    xor         ebx,ebx
 006AEFA1    mov         eax,[007C4BFC];^gvar_007CA840
 006AEFA6    cmp         byte ptr [eax],0
>006AEFA9    je          006AEFBF
 006AEFAB    mov         eax,[007C4294];^gvar_008DF5F8:Integer
 006AEFB0    cmp         byte ptr [eax+2],0
>006AEFB4    je          006AEFBF
 006AEFB6    mov         eax,[007C4294];^gvar_008DF5F8:Integer
 006AEFBB    mov         byte ptr [eax+2],0
 006AEFBF    mov         edi,dword ptr ds:[7C4294];^gvar_008DF5F8:Integer
 006AEFC5    movzx       edi,byte ptr [edi+2]
 006AEFC9    mov         eax,[007C4DEC];^gvar_00901E0C:TOverwriteDlg
 006AEFCE    mov         eax,dword ptr [eax]
 006AEFD0    xor         edx,edx
 006AEFD2    mov         dword ptr [eax+2DC],edx
 006AEFD8    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 006AEFDD    mov         eax,dword ptr [eax]
 006AEFDF    mov         edx,edi
 006AEFE1    call        TFXNet.GetPanel
 006AEFE6    test        eax,eax
>006AEFE8    je          006AF05F
 006AEFEA    mov         eax,[007C4DEC];^gvar_00901E0C:TOverwriteDlg
 006AEFEF    mov         eax,dword ptr [eax]
 006AEFF1    mov         eax,dword ptr [eax+3DC]
 006AEFF7    mov         edx,edi
 006AEFF9    call        TUpDown.SetPosition
 006AEFFE    mov         eax,[007C4DEC];^gvar_00901E0C:TOverwriteDlg
 006AF003    mov         eax,dword ptr [eax]
 006AF005    mov         edx,dword ptr [eax]
 006AF007    call        dword ptr [edx+13C]
 006AF00D    dec         eax
>006AF00E    je          006AF01A
 006AF010    dec         eax
>006AF011    je          006AF045
 006AF013    sub         eax,2
>006AF016    je          006AF01E
>006AF018    jmp         006AF047
 006AF01A    mov         bl,1
>006AF01C    jmp         006AF047
 006AF01E    mov         eax,[007C4DEC];^gvar_00901E0C:TOverwriteDlg
 006AF023    mov         eax,dword ptr [eax]
 006AF025    mov         eax,dword ptr [eax+3DC]
 006AF02B    call        TUpDown.GetPosition
 006AF030    mov         edx,eax
 006AF032    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 006AF037    mov         eax,dword ptr [eax]
 006AF039    call        TFXNet.GetPanel
 006AF03E    test        eax,eax
 006AF040    sete        bl
>006AF043    jmp         006AF047
 006AF045    mov         bl,1
 006AF047    mov         eax,[007C4DEC];^gvar_00901E0C:TOverwriteDlg
 006AF04C    mov         eax,dword ptr [eax]
 006AF04E    mov         eax,dword ptr [eax+3DC]
 006AF054    call        TUpDown.GetPosition
 006AF059    mov         edi,eax
 006AF05B    test        bl,bl
>006AF05D    je          006AEFEA
 006AF05F    mov         eax,[007C4DEC];^gvar_00901E0C:TOverwriteDlg
 006AF064    mov         eax,dword ptr [eax]
 006AF066    cmp         dword ptr [eax+2DC],2
>006AF06D    je          006AF13F
 006AF073    test        edi,edi
>006AF075    jle         006AF07F
 006AF077    mov         eax,[007C4870];^gvar_007A1EB8
 006AF07C    mov         byte ptr [eax],1
 006AF07F    mov         eax,edi
 006AF081    cmp         eax,0FF
>006AF086    jbe         006AF08D
 006AF088    call        @BoundErr
 006AF08D    mov         edx,dword ptr ds:[7C4294];^gvar_008DF5F8:Integer
 006AF093    mov         byte ptr [edx+2],al
 006AF096    mov         cl,3
 006AF098    mov         dl,1
 006AF09A    mov         eax,[006A4DA4];TFXPanel
 006AF09F    call        TFXPanel.Create;TFXPanel.Create
 006AF0A4    mov         esi,eax
 006AF0A6    xor         edx,edx
 006AF0A8    push        ebp
 006AF0A9    push        6AF116
 006AF0AE    push        dword ptr fs:[edx]
 006AF0B1    mov         dword ptr fs:[edx],esp
 006AF0B4    mov         eax,esi
 006AF0B6    call        006AC2F4
 006AF0BB    test        edi,edi
>006AF0BD    jle         006AF0F5
 006AF0BF    mov         edx,edi
 006AF0C1    sub         edx,1
>006AF0C4    jno         006AF0CB
 006AF0C6    call        @IntOver
 006AF0CB    cmp         edx,0FF
>006AF0D1    jbe         006AF0D8
 006AF0D3    call        @BoundErr
 006AF0D8    lea         eax,[ebp-4]
 006AF0DB    mov         cl,4
 006AF0DD    call        @SetElem
 006AF0E2    mov         edx,dword ptr [ebp-4]
 006AF0E5    mov         ebx,dword ptr [esi+0C];TFXPanel.FXPPD:TFXPPD
 006AF0E8    or          edx,dword ptr [ebx+171]
 006AF0EE    mov         eax,ebx
 006AF0F0    call        006A2E40
 006AF0F5    mov         dword ptr [esi+4],3;TFXPanel.iType:Integer
 006AF0FC    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 006AF101    mov         eax,dword ptr [eax]
 006AF103    mov         ecx,esi
 006AF105    mov         edx,edi
 006AF107    call        TFXNet.SetPanel
 006AF10C    xor         eax,eax
 006AF10E    pop         edx
 006AF10F    pop         ecx
 006AF110    pop         ecx
 006AF111    mov         dword ptr fs:[eax],edx
>006AF114    jmp         006AF13F
>006AF116    jmp         @HandleOnException
 006AF11B    dd          1
 006AF11F    dd          004174D0;Exception
 006AF123    dd          006AF127
 006AF127    push        0
 006AF129    mov         eax,dword ptr [eax+4];Exception.FMessage:string
 006AF12C    movzx       ecx,word ptr ds:[6AF148];0x4 gvar_006AF148
 006AF133    mov         dl,1
 006AF135    call        MessageDlg
 006AF13A    call        @DoneExcept
 006AF13F    pop         edi
 006AF140    pop         esi
 006AF141    pop         ebx
 006AF142    pop         ecx
 006AF143    pop         ebp
 006AF144    ret
*}
end;

//006AF14C
procedure TMergeEsaForm.btnCancelClick(Sender:TObject);
begin
{*
 006AF14C    ret
*}
end;

//006AF660
procedure TFXAboutFrame.FetchInfo;
begin
{*
 006AF660    push        ebp
 006AF661    mov         ebp,esp
 006AF663    mov         ecx,6
 006AF668    push        0
 006AF66A    push        0
 006AF66C    dec         ecx
>006AF66D    jne         006AF668
 006AF66F    push        ebx
 006AF670    push        esi
 006AF671    mov         ebx,eax
 006AF673    xor         eax,eax
 006AF675    push        ebp
 006AF676    push        6AF929
 006AF67B    push        dword ptr fs:[eax]
 006AF67E    mov         dword ptr fs:[eax],esp
 006AF681    lea         eax,[ebp-4]
 006AF684    push        eax
 006AF685    lea         edx,[ebp-10]
 006AF688    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 006AF68D    mov         eax,dword ptr [eax]
 006AF68F    call        005DDC74
 006AF694    mov         eax,dword ptr [ebp-10]
 006AF697    mov         dword ptr [ebp-0C],eax
 006AF69A    mov         byte ptr [ebp-8],11
 006AF69E    lea         edx,[ebp-0C]
 006AF6A1    xor         ecx,ecx
 006AF6A3    mov         eax,6AF944;'Version: %s'
 006AF6A8    call        Format
 006AF6AD    mov         edx,dword ptr [ebp-4]
 006AF6B0    mov         eax,dword ptr [ebx+2B8];TFXAboutFrame.Version:TLabel
 006AF6B6    call        TControl.SetText
 006AF6BB    lea         edx,[ebp-18]
 006AF6BE    mov         eax,[007C4C34];^gvar_00828630:TLicenseFile
 006AF6C3    mov         eax,dword ptr [eax]
 006AF6C5    call        0066B3D8
 006AF6CA    mov         edx,dword ptr [ebp-18]
 006AF6CD    lea         eax,[ebp-14]
 006AF6D0    call        @UStrFromLStr
 006AF6D5    mov         edx,dword ptr [ebp-14]
 006AF6D8    mov         eax,dword ptr [ebx+2C4];TFXAboutFrame.Distributor:TLabel
 006AF6DE    call        TControl.SetText
 006AF6E3    lea         edx,[ebp-20]
 006AF6E6    mov         eax,[007C4C34];^gvar_00828630:TLicenseFile
 006AF6EB    mov         eax,dword ptr [eax]
 006AF6ED    call        0066B3F4
 006AF6F2    mov         edx,dword ptr [ebp-20]
 006AF6F5    lea         eax,[ebp-1C]
 006AF6F8    call        @UStrFromLStr
 006AF6FD    mov         edx,dword ptr [ebp-1C]
 006AF700    mov         eax,dword ptr [ebx+2E0];TFXAboutFrame.Licensee:TMemo
 006AF706    call        TControl.SetText
 006AF70B    lea         edx,[ebp-28]
 006AF70E    mov         eax,[007C4C34];^gvar_00828630:TLicenseFile
 006AF713    mov         eax,dword ptr [eax]
 006AF715    call        0066B410
 006AF71A    mov         edx,dword ptr [ebp-28]
 006AF71D    lea         eax,[ebp-24]
 006AF720    call        @UStrFromLStr
 006AF725    mov         edx,dword ptr [ebp-24]
 006AF728    mov         eax,dword ptr [ebx+2CC];TFXAboutFrame.SerialNum:TLabel
 006AF72E    call        TControl.SetText
 006AF733    lea         edx,[ebp-2C]
 006AF736    mov         eax,[007C4C34];^gvar_00828630:TLicenseFile
 006AF73B    mov         eax,dword ptr [eax]
 006AF73D    call        0066B2CC
 006AF742    mov         edx,dword ptr [ebp-2C]
 006AF745    mov         eax,dword ptr [ebx+2DC];TFXAboutFrame.lbExpiryDate:TLabel
 006AF74B    call        TControl.SetText
 006AF750    lea         edx,[ebp-30]
 006AF753    mov         eax,[007C42B8];^gvar_0082862C:TStartUpForm
 006AF758    mov         eax,dword ptr [eax]
 006AF75A    mov         eax,dword ptr [eax+3DC]
 006AF760    call        00669674
 006AF765    mov         edx,dword ptr [ebp-30]
 006AF768    mov         eax,dword ptr [ebx+2F4];TFXAboutFrame.lbRefreshDate:TLabel
 006AF76E    call        TControl.SetText
 006AF773    mov         eax,dword ptr [ebx+2E4];TFXAboutFrame.Facilities:TMemo
 006AF779    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 006AF77F    mov         edx,dword ptr [eax]
 006AF781    call        dword ptr [edx+48];TStrings.Clear
 006AF784    mov         eax,[007C42B4];^gvar_007CA839
 006AF789    cmp         byte ptr [eax],0
>006AF78C    je          006AF7A4
 006AF78E    mov         eax,dword ptr [ebx+2E4];TFXAboutFrame.Facilities:TMemo
 006AF794    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 006AF79A    mov         edx,6AF968;'Control Groups enabled'
 006AF79F    mov         ecx,dword ptr [eax]
 006AF7A1    call        dword ptr [ecx+3C];TStrings.Add
 006AF7A4    mov         eax,[007C42E4];^gvar_007CA83A
 006AF7A9    cmp         byte ptr [eax],0
>006AF7AC    je          006AF7C4
 006AF7AE    mov         eax,dword ptr [ebx+2E4];TFXAboutFrame.Facilities:TMemo
 006AF7B4    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 006AF7BA    mov         edx,6AF9A4;'Delayed Alarm enabled'
 006AF7BF    mov         ecx,dword ptr [eax]
 006AF7C1    call        dword ptr [ecx+3C];TStrings.Add
 006AF7C4    mov         eax,[007C4910];^gvar_007CA83B
 006AF7C9    cmp         byte ptr [eax],0
>006AF7CC    je          006AF7E4
 006AF7CE    mov         eax,dword ptr [ebx+2E4];TFXAboutFrame.Facilities:TMemo
 006AF7D4    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 006AF7DA    mov         edx,6AF9DC;'Detection Parameters enabled'
 006AF7DF    mov         ecx,dword ptr [eax]
 006AF7E1    call        dword ptr [ecx+3C];TStrings.Add
 006AF7E4    mov         eax,[007C4E24];^gvar_007CA83C
 006AF7E9    cmp         byte ptr [eax],0
>006AF7EC    je          006AF804
 006AF7EE    mov         eax,dword ptr [ebx+2E4];TFXAboutFrame.Facilities:TMemo
 006AF7F4    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 006AF7FA    mov         edx,6AFA24;'Laser Detectors enabled'
 006AF7FF    mov         ecx,dword ptr [eax]
 006AF801    call        dword ptr [ecx+3C];TStrings.Add
 006AF804    mov         eax,[007C4780];^gvar_007CA83F
 006AF809    cmp         byte ptr [eax],0
>006AF80C    je          006AF824
 006AF80E    mov         eax,dword ptr [ebx+2E4];TFXAboutFrame.Facilities:TMemo
 006AF814    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 006AF81A    mov         edx,6AFA60;'Apollo branded detectors enabled'
 006AF81F    mov         ecx,dword ptr [eax]
 006AF821    call        dword ptr [ecx+3C];TStrings.Add
 006AF824    mov         eax,[007C4544];^gvar_007CA83D
 006AF829    cmp         byte ptr [eax],0
>006AF82C    je          006AF844
 006AF82E    mov         eax,dword ptr [ebx+2E4];TFXAboutFrame.Facilities:TMemo
 006AF834    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 006AF83A    mov         edx,6AFAB0;'Reading From Panel enabled'
 006AF83F    mov         ecx,dword ptr [eax]
 006AF841    call        dword ptr [ecx+3C];TStrings.Add
 006AF844    mov         eax,[007C4E44];^gvar_007CA83E
 006AF849    cmp         byte ptr [eax],0
>006AF84C    je          006AF864
 006AF84E    mov         eax,dword ptr [ebx+2E4];TFXAboutFrame.Facilities:TMemo
 006AF854    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 006AF85A    mov         edx,6AFAF4;'Writing To Panel enabled'
 006AF85F    mov         ecx,dword ptr [eax]
 006AF861    call        dword ptr [ecx+3C];TStrings.Add
 006AF864    mov         eax,[007C4BFC];^gvar_007CA840
 006AF869    cmp         byte ptr [eax],0
>006AF86C    je          006AF884
 006AF86E    mov         eax,dword ptr [ebx+2E4];TFXAboutFrame.Facilities:TMemo
 006AF874    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 006AF87A    mov         edx,6AFB34;'Standalone panels only'
 006AF87F    mov         ecx,dword ptr [eax]
 006AF881    call        dword ptr [ecx+3C];TStrings.Add
 006AF884    mov         eax,dword ptr [ebx+2E4];TFXAboutFrame.Facilities:TMemo
 006AF88A    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 006AF890    mov         edx,dword ptr [eax]
 006AF892    call        dword ptr [edx+14];TStrings.GetCount
 006AF895    test        eax,eax
>006AF897    jne         006AF8AF
 006AF899    mov         eax,dword ptr [ebx+2E4];TFXAboutFrame.Facilities:TMemo
 006AF89F    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 006AF8A5    mov         edx,6AFB70;'<None>'
 006AF8AA    mov         ecx,dword ptr [eax]
 006AF8AC    call        dword ptr [ecx+3C];TStrings.Add
 006AF8AF    mov         esi,dword ptr [ebx+2E4];TFXAboutFrame.Facilities:TMemo
 006AF8B5    mov         eax,dword ptr [esi+2C8];TMemo.FLines:TStrings
 006AF8BB    mov         edx,dword ptr [eax]
 006AF8BD    call        dword ptr [edx+14];TStrings.GetCount
 006AF8C0    imul        edx,eax,10
>006AF8C3    jno         006AF8CA
 006AF8C5    call        @IntOver
 006AF8CA    mov         eax,esi
 006AF8CC    call        TControl.SetHeight
 006AF8D1    xor         eax,eax
 006AF8D3    pop         edx
 006AF8D4    pop         ecx
 006AF8D5    pop         ecx
 006AF8D6    mov         dword ptr fs:[eax],edx
 006AF8D9    push        6AF930
 006AF8DE    lea         eax,[ebp-30]
 006AF8E1    mov         edx,2
 006AF8E6    call        @UStrArrayClr
 006AF8EB    lea         eax,[ebp-28]
 006AF8EE    call        @LStrClr
 006AF8F3    lea         eax,[ebp-24]
 006AF8F6    call        @UStrClr
 006AF8FB    lea         eax,[ebp-20]
 006AF8FE    call        @LStrClr
 006AF903    lea         eax,[ebp-1C]
 006AF906    call        @UStrClr
 006AF90B    lea         eax,[ebp-18]
 006AF90E    call        @LStrClr
 006AF913    lea         eax,[ebp-14]
 006AF916    mov         edx,2
 006AF91B    call        @UStrArrayClr
 006AF920    lea         eax,[ebp-4]
 006AF923    call        @UStrClr
 006AF928    ret
>006AF929    jmp         @HandleFinally
>006AF92E    jmp         006AF8DE
 006AF930    pop         esi
 006AF931    pop         ebx
 006AF932    mov         esp,ebp
 006AF934    pop         ebp
 006AF935    ret
*}
end;

//006AFB80
procedure TFXAboutFrame.Panel1Resize(Sender:TObject);
begin
{*
 006AFB80    push        ebx
 006AFB81    push        esi
 006AFB82    push        edi
 006AFB83    mov         ebx,eax
 006AFB85    mov         esi,dword ptr [ebx+2E8];TFXAboutFrame.Panel1:TPanel
 006AFB8B    fild        dword ptr [esi+58];TPanel.FWidth:Integer
 006AFB8E    fdiv        dword ptr ds:[6AFC4C];2:Single
 006AFB94    call        @TRUNC
 006AFB99    push        edx
 006AFB9A    push        eax
 006AFB9B    mov         eax,dword ptr [esi+50];TPanel.FLeft:Integer
 006AFB9E    cdq
 006AFB9F    add         eax,dword ptr [esp]
 006AFBA2    adc         edx,dword ptr [esp+4]
>006AFBA6    jno         006AFBAD
 006AFBA8    call        @IntOver
 006AFBAD    add         esp,8
 006AFBB0    push        edx
 006AFBB1    push        eax
 006AFBB2    mov         edi,dword ptr [ebx+2EC];TFXAboutFrame.Panel2:TPanel
 006AFBB8    fild        dword ptr [edi+58];TPanel.FWidth:Integer
 006AFBBB    fdiv        dword ptr ds:[6AFC4C];2:Single
 006AFBC1    call        @TRUNC
 006AFBC6    sub         dword ptr [esp],eax
 006AFBC9    sbb         dword ptr [esp+4],edx
 006AFBCD    pop         eax
 006AFBCE    pop         edx
 006AFBCF    push        eax
 006AFBD0    sar         eax,1F
 006AFBD3    cmp         eax,edx
 006AFBD5    pop         eax
>006AFBD6    je          006AFBDD
 006AFBD8    call        @BoundErr
 006AFBDD    mov         edx,eax
 006AFBDF    mov         eax,edi
 006AFBE1    call        TControl.SetLeft
 006AFBE6    mov         esi,dword ptr [ebx+2E8];TFXAboutFrame.Panel1:TPanel
 006AFBEC    fild        dword ptr [esi+5C];TPanel.FHeight:Integer
 006AFBEF    fdiv        dword ptr ds:[6AFC4C];2:Single
 006AFBF5    call        @TRUNC
 006AFBFA    push        edx
 006AFBFB    push        eax
 006AFBFC    mov         eax,dword ptr [esi+54];TPanel.FTop:Integer
 006AFBFF    cdq
 006AFC00    add         eax,dword ptr [esp]
 006AFC03    adc         edx,dword ptr [esp+4]
>006AFC07    jno         006AFC0E
 006AFC09    call        @IntOver
 006AFC0E    add         esp,8
 006AFC11    push        edx
 006AFC12    push        eax
 006AFC13    mov         edi,dword ptr [ebx+2EC];TFXAboutFrame.Panel2:TPanel
 006AFC19    fild        dword ptr [edi+5C];TPanel.FHeight:Integer
 006AFC1C    fdiv        dword ptr ds:[6AFC4C];2:Single
 006AFC22    call        @TRUNC
 006AFC27    sub         dword ptr [esp],eax
 006AFC2A    sbb         dword ptr [esp+4],edx
 006AFC2E    pop         eax
 006AFC2F    pop         edx
 006AFC30    push        eax
 006AFC31    sar         eax,1F
 006AFC34    cmp         eax,edx
 006AFC36    pop         eax
>006AFC37    je          006AFC3E
 006AFC39    call        @BoundErr
 006AFC3E    mov         edx,eax
 006AFC40    mov         eax,edi
 006AFC42    call        TControl.SetTop
 006AFC47    pop         edi
 006AFC48    pop         esi
 006AFC49    pop         ebx
 006AFC4A    ret
*}
end;

//006B115C
constructor TSpinButton.Create(AOwner:TComponent);
begin
{*
 006B115C    push        ebp
 006B115D    mov         ebp,esp
 006B115F    push        ecx
 006B1160    push        ebx
 006B1161    push        esi
 006B1162    test        dl,dl
>006B1164    je          006B116E
 006B1166    add         esp,0FFFFFFF0
 006B1169    call        @ClassCreate
 006B116E    mov         byte ptr [ebp-1],dl
 006B1171    mov         ebx,eax
 006B1173    xor         edx,edx
 006B1175    mov         eax,ebx
 006B1177    call        TWinControl.Create
 006B117C    mov         eax,[006B1220];0x21 gvar_006B1220
 006B1181    not         eax
 006B1183    and         eax,dword ptr [ebx+60];TSpinButton.FControlStyle:TControlStyle
 006B1186    or          eax,dword ptr ds:[6B1224];0x50 gvar_006B1224
 006B118C    mov         dword ptr [ebx+60],eax;TSpinButton.FControlStyle:TControlStyle
 006B118F    call        TStyleManager.GetActiveStyle
 006B1194    mov         esi,eax
 006B1196    mov         eax,esi
 006B1198    mov         edx,dword ptr [eax]
 006B119A    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 006B119D    test        al,al
>006B119F    je          006B11AB
 006B11A1    mov         eax,[006B1228];0x10 gvar_006B1228
 006B11A6    not         eax
 006B11A8    and         dword ptr [ebx+60],eax;TSpinButton.FControlStyle:TControlStyle
 006B11AB    xor         edx,edx
 006B11AD    mov         eax,ebx
 006B11AF    call        006B122C
 006B11B4    mov         dword ptr [ebx+290],eax;TSpinButton.FUpButton:TTimerSpeedButton
 006B11BA    mov         dl,1
 006B11BC    mov         eax,ebx
 006B11BE    call        006B122C
 006B11C3    mov         dword ptr [ebx+294],eax;TSpinButton.FDownButton:TTimerSpeedButton
 006B11C9    xor         edx,edx
 006B11CB    mov         eax,ebx
 006B11CD    call        TSpinButton.SetUpGlyph
 006B11D2    xor         edx,edx
 006B11D4    mov         eax,ebx
 006B11D6    call        TSpinButton.SetDownGlyph
 006B11DB    mov         edx,14
 006B11E0    mov         eax,ebx
 006B11E2    call        TControl.SetWidth
 006B11E7    mov         edx,19
 006B11EC    mov         eax,ebx
 006B11EE    call        TControl.SetHeight
 006B11F3    mov         eax,dword ptr [ebx+290];TSpinButton.FUpButton:TTimerSpeedButton
 006B11F9    mov         dword ptr [ebx+298],eax;TSpinButton.FFocusedButton:TTimerSpeedButton
 006B11FF    mov         eax,ebx
 006B1201    cmp         byte ptr [ebp-1],0
>006B1205    je          006B1216
 006B1207    call        @AfterConstruction
 006B120C    pop         dword ptr fs:[0]
 006B1213    add         esp,0C
 006B1216    mov         eax,ebx
 006B1218    pop         esi
 006B1219    pop         ebx
 006B121A    pop         ecx
 006B121B    pop         ebp
 006B121C    ret
*}
end;

//006B122C
{*function sub_006B122C(?:TSpinButton; ?:?):?;
begin
 006B122C    push        ebx
 006B122D    push        esi
 006B122E    push        edi
 006B122F    mov         ebx,edx
 006B1231    mov         esi,eax
 006B1233    mov         ecx,esi
 006B1235    mov         dl,1
 006B1237    mov         eax,[006B0F38];TTimerSpeedButton
 006B123C    call        TSpeedButton.Create;TTimerSpeedButton.Create
 006B1241    mov         edi,eax
 006B1243    mov         dword ptr [edi+124],esi;TTimerSpeedButton.?f124:TMessageForm
 006B1249    mov         dword ptr [edi+120],6B162C;TTimerSpeedButton.FOnClick:TNotifyEvent sub_006B162C
 006B1253    mov         dword ptr [edi+0D4],esi;TTimerSpeedButton.?fD4:TSpinButton
 006B1259    mov         dword ptr [edi+0D0],6B1590;TTimerSpeedButton.FOnMouseDown:TMouseEvent sub_006B1590
 006B1263    mov         dl,1
 006B1265    mov         eax,edi
 006B1267    call        TControl.SetVisible
 006B126C    mov         dl,1
 006B126E    mov         eax,edi
 006B1270    mov         ecx,dword ptr [eax]
 006B1272    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006B1278    movzx       eax,byte ptr ds:[6B12A0];0x2 gvar_006B12A0
 006B127F    mov         byte ptr [edi+1E4],al;TTimerSpeedButton.FTimeBtnState:TTimeBtnState
 006B1285    mov         byte ptr [edi+1E5],bl;TTimerSpeedButton.FDownButton:Boolean
 006B128B    mov         edx,esi
 006B128D    mov         eax,edi
 006B128F    mov         ecx,dword ptr [eax]
 006B1291    call        dword ptr [ecx+8C];TTimerSpeedButton.sub_004E6DA4
 006B1297    mov         eax,edi
 006B1299    pop         edi
 006B129A    pop         esi
 006B129B    pop         ebx
 006B129C    ret
end;*}

//006B12A4
procedure TSpinButton.CreateWnd;
begin
{*
 006B12A4    push        ebx
 006B12A5    push        esi
 006B12A6    mov         ebx,eax
 006B12A8    mov         eax,ebx
 006B12AA    call        TWinControl.CreateWnd
 006B12AF    call        TStyleManager.GetActiveStyle
 006B12B4    mov         esi,eax
 006B12B6    mov         eax,esi
 006B12B8    mov         edx,dword ptr [eax]
 006B12BA    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 006B12BD    mov         edx,eax
 006B12BF    mov         eax,ebx
 006B12C1    call        TWinControl.SetDoubleBuffered
 006B12C6    pop         esi
 006B12C7    pop         ebx
 006B12C8    ret
*}
end;

//006B12CC
procedure TSpinButton.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 006B12CC    push        ebx
 006B12CD    push        esi
 006B12CE    push        edi
 006B12CF    mov         ebx,ecx
 006B12D1    mov         esi,edx
 006B12D3    mov         edi,eax
 006B12D5    mov         ecx,ebx
 006B12D7    mov         edx,esi
 006B12D9    mov         eax,edi
 006B12DB    call        TWinControl.Notification
 006B12E0    cmp         bl,1
>006B12E3    jne         006B12F5
 006B12E5    cmp         esi,dword ptr [edi+29C];TSpinButton.FFocusControl:TWinControl
>006B12EB    jne         006B12F5
 006B12ED    xor         eax,eax
 006B12EF    mov         dword ptr [edi+29C],eax;TSpinButton.FFocusControl:TWinControl
 006B12F5    pop         edi
 006B12F6    pop         esi
 006B12F7    pop         ebx
 006B12F8    ret
*}
end;

//006B12FC
procedure TSpinButton.AdjustSize(var W:Integer; var H:Integer);
begin
{*
 006B12FC    push        ebx
 006B12FD    push        esi
 006B12FE    push        edi
 006B12FF    push        ebp
 006B1300    mov         ebp,ecx
 006B1302    mov         edi,edx
 006B1304    mov         esi,eax
 006B1306    cmp         dword ptr [esi+290],0
>006B130D    je          006B136B
 006B130F    test        byte ptr [esi+1C],1
>006B1313    jne         006B136B
 006B1315    cmp         dword ptr [edi],0F
>006B1318    jge         006B1320
 006B131A    mov         dword ptr [edi],0F
 006B1320    mov         eax,dword ptr [edi]
 006B1322    push        eax
 006B1323    mov         eax,dword ptr [ebp]
 006B1326    sar         eax,1
>006B1328    jns         006B132D
 006B132A    adc         eax,0
 006B132D    push        eax
 006B132E    xor         ecx,ecx
 006B1330    xor         edx,edx
 006B1332    mov         eax,dword ptr [esi+290]
 006B1338    mov         ebx,dword ptr [eax]
 006B133A    call        dword ptr [ebx+0B0]
 006B1340    mov         eax,dword ptr [edi]
 006B1342    push        eax
 006B1343    mov         eax,dword ptr [ebp]
 006B1346    mov         edx,dword ptr [esi+290]
 006B134C    sub         eax,dword ptr [edx+5C]
 006B134F    inc         eax
 006B1350    push        eax
 006B1351    mov         eax,dword ptr [esi+290]
 006B1357    mov         ecx,dword ptr [eax+5C]
 006B135A    dec         ecx
 006B135B    xor         edx,edx
 006B135D    mov         eax,dword ptr [esi+294]
 006B1363    mov         ebx,dword ptr [eax]
 006B1365    call        dword ptr [ebx+0B0]
 006B136B    pop         ebp
 006B136C    pop         edi
 006B136D    pop         esi
 006B136E    pop         ebx
 006B136F    ret
*}
end;

//006B1370
procedure TSpinButton.SetBounds(ALeft:Integer; ATop:Integer; AHeight:Integer; AWidth:Integer);
begin
{*
 006B1370    push        ebp
 006B1371    mov         ebp,esp
 006B1373    add         esp,0FFFFFFF8
 006B1376    push        ebx
 006B1377    push        esi
 006B1378    push        edi
 006B1379    mov         edi,ecx
 006B137B    mov         esi,edx
 006B137D    mov         ebx,eax
 006B137F    mov         eax,dword ptr [ebp+0C]
 006B1382    mov         dword ptr [ebp-4],eax
 006B1385    mov         eax,dword ptr [ebp+8]
 006B1388    mov         dword ptr [ebp-8],eax
 006B138B    lea         ecx,[ebp-8]
 006B138E    lea         edx,[ebp-4]
 006B1391    mov         eax,ebx
 006B1393    call        TSpinButton.AdjustSize
 006B1398    mov         eax,dword ptr [ebp-4]
 006B139B    push        eax
 006B139C    mov         eax,dword ptr [ebp-8]
 006B139F    push        eax
 006B13A0    mov         ecx,edi
 006B13A2    mov         edx,esi
 006B13A4    mov         eax,ebx
 006B13A6    call        TWinControl.SetBounds
 006B13AB    pop         edi
 006B13AC    pop         esi
 006B13AD    pop         ebx
 006B13AE    pop         ecx
 006B13AF    pop         ecx
 006B13B0    pop         ebp
 006B13B1    ret         8
*}
end;

//006B13B4
{*procedure TSpinButton.WMEraseBkgnd(?:?);
begin
 006B13B4    push        ebp
 006B13B5    mov         ebp,esp
 006B13B7    add         esp,0FFFFFFE8
 006B13BA    push        ebx
 006B13BB    push        esi
 006B13BC    mov         dword ptr [ebp-4],edx
 006B13BF    mov         ebx,eax
 006B13C1    call        TStyleManager.GetIsCustomStyleActive
 006B13C6    test        al,al
>006B13C8    je          006B1461
 006B13CE    mov         dl,1
 006B13D0    mov         eax,[004BF670];TCanvas
 006B13D5    call        TCanvas.Create;TCanvas.Create
 006B13DA    mov         dword ptr [ebp-8],eax
 006B13DD    mov         edx,dword ptr [ebp-4]
 006B13E0    mov         edx,dword ptr [edx+4]
 006B13E3    mov         eax,dword ptr [ebp-8]
 006B13E6    call        TCanvas.SetHandle
 006B13EB    xor         eax,eax
 006B13ED    push        ebp
 006B13EE    push        6B144E
 006B13F3    push        dword ptr fs:[eax]
 006B13F6    mov         dword ptr fs:[eax],esp
 006B13F9    call        TStyleManager.GetActiveStyle
 006B13FE    mov         esi,eax
 006B1400    mov         edx,0FF00000F
 006B1405    mov         eax,esi
 006B1407    call        TCustomStyleServices.GetSystemColor
 006B140C    mov         edx,eax
 006B140E    mov         eax,dword ptr [ebp-8]
 006B1411    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 006B1414    call        TBrush.SetColor
 006B1419    lea         edx,[ebp-18]
 006B141C    mov         eax,ebx
 006B141E    mov         ecx,dword ptr [eax]
 006B1420    call        dword ptr [ecx+64];TWinControl.GetClientRect
 006B1423    lea         edx,[ebp-18]
 006B1426    mov         eax,dword ptr [ebp-8]
 006B1429    mov         ecx,dword ptr [eax]
 006B142B    call        dword ptr [ecx+54];TCanvas.FillRect
 006B142E    xor         eax,eax
 006B1430    pop         edx
 006B1431    pop         ecx
 006B1432    pop         ecx
 006B1433    mov         dword ptr fs:[eax],edx
 006B1436    push        6B1455
 006B143B    xor         edx,edx
 006B143D    mov         eax,dword ptr [ebp-8]
 006B1440    call        TCanvas.SetHandle
 006B1445    mov         eax,dword ptr [ebp-8]
 006B1448    call        TObject.Free
 006B144D    ret
>006B144E    jmp         @HandleFinally
>006B1453    jmp         006B143B
 006B1455    mov         eax,dword ptr [ebp-4]
 006B1458    mov         dword ptr [eax+0C],1
>006B145F    jmp         006B146B
 006B1461    mov         edx,dword ptr [ebp-4]
 006B1464    mov         eax,ebx
 006B1466    call        TWinControl.WMEraseBkgnd
 006B146B    pop         esi
 006B146C    pop         ebx
 006B146D    mov         esp,ebp
 006B146F    pop         ebp
 006B1470    ret
end;*}

//006B1474
{*procedure TSpinButton.WMSize(?:?);
begin
 006B1474    push        ebx
 006B1475    push        esi
 006B1476    add         esp,0FFFFFFF8
 006B1479    mov         esi,edx
 006B147B    mov         ebx,eax
 006B147D    mov         edx,esi
 006B147F    mov         eax,ebx
 006B1481    call        TWinControl.WMSize
 006B1486    mov         eax,dword ptr [ebx+58];TSpinButton.FWidth:Integer
 006B1489    mov         dword ptr [esp],eax
 006B148C    mov         eax,dword ptr [ebx+5C];TSpinButton.FHeight:Integer
 006B148F    mov         dword ptr [esp+4],eax
 006B1493    lea         ecx,[esp+4]
 006B1497    mov         edx,esp
 006B1499    mov         eax,ebx
 006B149B    call        TSpinButton.AdjustSize
 006B14A0    mov         eax,dword ptr [esp]
 006B14A3    cmp         eax,dword ptr [ebx+58];TSpinButton.FWidth:Integer
>006B14A6    jne         006B14B1
 006B14A8    mov         eax,dword ptr [esp+4]
 006B14AC    cmp         eax,dword ptr [ebx+5C];TSpinButton.FHeight:Integer
>006B14AF    je          006B14C7
 006B14B1    mov         eax,dword ptr [esp]
 006B14B4    push        eax
 006B14B5    mov         eax,dword ptr [esp+8]
 006B14B9    push        eax
 006B14BA    mov         ecx,dword ptr [ebx+54];TSpinButton.FTop:Integer
 006B14BD    mov         edx,dword ptr [ebx+50];TSpinButton.FLeft:Integer
 006B14C0    mov         eax,ebx
 006B14C2    call        TWinControl.SetBounds
 006B14C7    xor         eax,eax
 006B14C9    mov         dword ptr [esi+0C],eax
 006B14CC    pop         ecx
 006B14CD    pop         edx
 006B14CE    pop         esi
 006B14CF    pop         ebx
 006B14D0    ret
end;*}

//006B14D4
procedure TSpinButton.WMSetFocus(var Message:Messages.TWMSetFocus);
begin
{*
 006B14D4    push        esi
 006B14D5    push        edi
 006B14D6    mov         esi,eax
 006B14D8    mov         edi,dword ptr [esi+298];TSpinButton.FFocusedButton:TTimerSpeedButton
 006B14DE    movzx       eax,byte ptr ds:[6B14F8];0x1 gvar_006B14F8
 006B14E5    or          byte ptr [edi+1E4],al;TTimerSpeedButton.FTimeBtnState:TTimeBtnState
 006B14EB    mov         eax,edi
 006B14ED    mov         edx,dword ptr [eax]
 006B14EF    call        dword ptr [edx+0A8];TControl.Invalidate
 006B14F5    pop         edi
 006B14F6    pop         esi
 006B14F7    ret
*}
end;

//006B14FC
procedure TSpinButton.WMKillFocus;
begin
{*
 006B14FC    push        esi
 006B14FD    push        edi
 006B14FE    mov         esi,eax
 006B1500    mov         edi,dword ptr [esi+298];TSpinButton.FFocusedButton:TTimerSpeedButton
 006B1506    movzx       eax,byte ptr ds:[6B1524];0x1 gvar_006B1524
 006B150D    not         eax
 006B150F    and         byte ptr [edi+1E4],al;TTimerSpeedButton.FTimeBtnState:TTimeBtnState
 006B1515    mov         eax,edi
 006B1517    mov         edx,dword ptr [eax]
 006B1519    call        dword ptr [edx+0A8];TControl.Invalidate
 006B151F    pop         edi
 006B1520    pop         esi
 006B1521    ret
*}
end;

//006B1528
{*procedure TSpinButton.sub_004EE9E0(?:?; ?:?);
begin
 006B1528    push        esi
 006B1529    mov         esi,eax
 006B152B    movzx       eax,word ptr [edx]
 006B152E    sub         ax,20
>006B1532    je          006B157E
 006B1534    sub         ax,6
>006B1538    je          006B1542
 006B153A    sub         ax,2
>006B153E    je          006B1560
>006B1540    jmp         006B158D
 006B1542    mov         edx,dword ptr [esi+290];TSpinButton.FUpButton:TTimerSpeedButton
 006B1548    mov         eax,esi
 006B154A    call        006B1670
 006B154F    mov         eax,dword ptr [esi+290];TSpinButton.FUpButton:TTimerSpeedButton
 006B1555    mov         si,0FFEB
 006B1559    call        @CallDynaInst;TSpeedButton.Click
 006B155E    pop         esi
 006B155F    ret
 006B1560    mov         edx,dword ptr [esi+294];TSpinButton.FDownButton:TTimerSpeedButton
 006B1566    mov         eax,esi
 006B1568    call        006B1670
 006B156D    mov         eax,dword ptr [esi+294];TSpinButton.FDownButton:TTimerSpeedButton
 006B1573    mov         si,0FFEB
 006B1577    call        @CallDynaInst;TSpeedButton.Click
 006B157C    pop         esi
 006B157D    ret
 006B157E    mov         eax,dword ptr [esi+298];TSpinButton.FFocusedButton:TTimerSpeedButton
 006B1584    mov         si,0FFEB
 006B1588    call        @CallDynaInst;TSpeedButton.Click
 006B158D    pop         esi
 006B158E    ret
end;*}

//006B1590
{*procedure sub_006B1590(?:?; ?:?; ?:?);
begin
 006B1590    push        ebp
 006B1591    mov         ebp,esp
 006B1593    push        ebx
 006B1594    push        esi
 006B1595    push        edi
 006B1596    mov         edi,eax
 006B1598    test        cl,cl
>006B159A    jne         006B1623
 006B15A0    mov         eax,edi
 006B15A2    call        006B1670
 006B15A7    mov         ebx,dword ptr [edi+29C]
 006B15AD    test        ebx,ebx
>006B15AF    je          006B15EF
 006B15B1    cmp         byte ptr [ebx+1FC],0
>006B15B8    je          006B15EF
 006B15BA    mov         eax,ebx
 006B15BC    mov         si,0FFB4
 006B15C0    call        @CallDynaInst
 006B15C5    test        al,al
>006B15C7    je          006B15EF
 006B15C9    mov         eax,dword ptr [edi+29C]
 006B15CF    call        TWinControl.GetHandle
 006B15D4    mov         ebx,eax
 006B15D6    call        user32.GetFocus
 006B15DB    cmp         ebx,eax
>006B15DD    je          006B15EF
 006B15DF    mov         eax,dword ptr [edi+29C]
 006B15E5    mov         edx,dword ptr [eax]
 006B15E7    call        dword ptr [edx+104]
>006B15ED    jmp         006B1623
 006B15EF    cmp         byte ptr [edi+1FC],0
>006B15F6    je          006B1623
 006B15F8    mov         eax,edi
 006B15FA    call        TWinControl.GetHandle
 006B15FF    mov         ebx,eax
 006B1601    call        user32.GetFocus
 006B1606    cmp         ebx,eax
>006B1608    je          006B1623
 006B160A    mov         eax,edi
 006B160C    mov         si,0FFB4
 006B1610    call        @CallDynaInst
 006B1615    test        al,al
>006B1617    je          006B1623
 006B1619    mov         eax,edi
 006B161B    mov         edx,dword ptr [eax]
 006B161D    call        dword ptr [edx+104]
 006B1623    pop         edi
 006B1624    pop         esi
 006B1625    pop         ebx
 006B1626    pop         ebp
 006B1627    ret         0C
end;*}

//006B162C
{*procedure sub_006B162C(?:?; ?:?);
begin
 006B162C    push        ebx
 006B162D    cmp         edx,dword ptr [eax+290]
>006B1633    jne         006B1651
 006B1635    cmp         word ptr [eax+2A2],0
>006B163D    je          006B166B
 006B163F    mov         ebx,eax
 006B1641    mov         edx,eax
 006B1643    mov         eax,dword ptr [ebx+2A4]
 006B1649    call        dword ptr [ebx+2A0]
 006B164F    pop         ebx
 006B1650    ret
 006B1651    cmp         word ptr [eax+2AA],0
>006B1659    je          006B166B
 006B165B    mov         ebx,eax
 006B165D    mov         edx,eax
 006B165F    mov         eax,dword ptr [ebx+2AC]
 006B1665    call        dword ptr [ebx+2A8]
 006B166B    pop         ebx
 006B166C    ret
end;*}

//006B1670
procedure sub_006B1670(?:TSpinButton; ?:TTimerSpeedButton);
begin
{*
 006B1670    push        ebx
 006B1671    push        esi
 006B1672    push        edi
 006B1673    mov         ebx,edx
 006B1675    mov         edi,eax
 006B1677    cmp         byte ptr [edi+1FC],0;TSpinButton.FTabStop:Boolean
>006B167E    je          006B16E1
 006B1680    mov         eax,edi
 006B1682    mov         si,0FFB4
 006B1686    call        @CallDynaInst;TWinControl.sub_004EFD3C
 006B168B    test        al,al
>006B168D    je          006B16E1
 006B168F    cmp         ebx,dword ptr [edi+298];TSpinButton.FFocusedButton:TTimerSpeedButton
>006B1695    je          006B16E1
 006B1697    mov         esi,dword ptr [edi+298];TSpinButton.FFocusedButton:TTimerSpeedButton
 006B169D    movzx       eax,byte ptr ds:[6B16E8];0x1 gvar_006B16E8
 006B16A4    not         eax
 006B16A6    and         byte ptr [esi+1E4],al;TTimerSpeedButton.FTimeBtnState:TTimeBtnState
 006B16AC    mov         dword ptr [edi+298],ebx;TSpinButton.FFocusedButton:TTimerSpeedButton
 006B16B2    mov         eax,edi
 006B16B4    call        TWinControl.GetHandle
 006B16B9    mov         ebx,eax
 006B16BB    call        user32.GetFocus
 006B16C0    cmp         ebx,eax
>006B16C2    jne         006B16E1
 006B16C4    mov         ebx,dword ptr [edi+298];TSpinButton.FFocusedButton:TTimerSpeedButton
 006B16CA    movzx       eax,byte ptr ds:[6B16E8];0x1 gvar_006B16E8
 006B16D1    or          byte ptr [ebx+1E4],al;TTimerSpeedButton.FTimeBtnState:TTimeBtnState
 006B16D7    mov         eax,edi
 006B16D9    mov         edx,dword ptr [eax]
 006B16DB    call        dword ptr [edx+0A8];TWinControl.Invalidate
 006B16E1    pop         edi
 006B16E2    pop         esi
 006B16E3    pop         ebx
 006B16E4    ret
*}
end;

//006B16EC
procedure TSpinButton.WMGetDlgCode(var Message:Messages.TWMGetDlgCode);
begin
{*
 006B16EC    mov         dword ptr [edx+0C],1
 006B16F3    ret
*}
end;

//006B16F4
procedure TSpinButton.CMFontChanged(var Message:TMessage);
begin
{*
 006B16F4    push        ebx
 006B16F5    add         esp,0FFFFFFF8
 006B16F8    mov         ebx,eax
 006B16FA    mov         eax,ebx
 006B16FC    call        TWinControl.CMFontChanged
 006B1701    mov         eax,dword ptr [ebx+58];TSpinButton.FWidth:Integer
 006B1704    mov         dword ptr [esp],eax
 006B1707    mov         eax,dword ptr [ebx+5C];TSpinButton.FHeight:Integer
 006B170A    mov         dword ptr [esp+4],eax
 006B170E    lea         ecx,[esp+4]
 006B1712    mov         edx,esp
 006B1714    mov         eax,ebx
 006B1716    call        TSpinButton.AdjustSize
 006B171B    mov         eax,dword ptr [esp]
 006B171E    cmp         eax,dword ptr [ebx+58];TSpinButton.FWidth:Integer
>006B1721    jne         006B172C
 006B1723    mov         eax,dword ptr [esp+4]
 006B1727    cmp         eax,dword ptr [ebx+5C];TSpinButton.FHeight:Integer
>006B172A    je          006B1742
 006B172C    mov         eax,dword ptr [esp]
 006B172F    push        eax
 006B1730    mov         eax,dword ptr [esp+8]
 006B1734    push        eax
 006B1735    mov         ecx,dword ptr [ebx+54];TSpinButton.FTop:Integer
 006B1738    mov         edx,dword ptr [ebx+50];TSpinButton.FLeft:Integer
 006B173B    mov         eax,ebx
 006B173D    call        TWinControl.SetBounds
 006B1742    pop         ecx
 006B1743    pop         edx
 006B1744    pop         ebx
 006B1745    ret
*}
end;

//006B1748
procedure TSpinButton.GetUpGlyph;
begin
{*
 006B1748    mov         eax,dword ptr [eax+290];TSpinButton.FUpButton:TTimerSpeedButton
 006B174E    call        TBitBtn.GetGlyph
 006B1753    ret
*}
end;

//006B1754
procedure TSpinButton.SetUpGlyph(Value:TBitmap);
begin
{*
 006B1754    push        esi
 006B1755    mov         esi,eax
 006B1757    test        edx,edx
>006B1759    je          006B1768
 006B175B    mov         eax,dword ptr [esi+290];TSpinButton.FUpButton:TTimerSpeedButton
 006B1761    call        TSpeedButton.SetGlyph
 006B1766    pop         esi
 006B1767    ret
 006B1768    push        6B17A8;'SpinUp'
 006B176D    mov         eax,[007C7C54];gvar_007C7C54
 006B1772    push        eax
 006B1773    call        user32.LoadBitmapW
 006B1778    push        eax
 006B1779    mov         eax,dword ptr [esi+290];TSpinButton.FUpButton:TTimerSpeedButton
 006B177F    call        TBitBtn.GetGlyph
 006B1784    pop         edx
 006B1785    call        TBitmap.SetHandle
 006B178A    mov         dl,1
 006B178C    mov         eax,dword ptr [esi+290];TSpinButton.FUpButton:TTimerSpeedButton
 006B1792    call        TSpeedButton.SetNumGlyphs
 006B1797    mov         eax,dword ptr [esi+290];TSpinButton.FUpButton:TTimerSpeedButton
 006B179D    mov         edx,dword ptr [eax]
 006B179F    call        dword ptr [edx+0A8];TControl.Invalidate
 006B17A5    pop         esi
 006B17A6    ret
*}
end;

//006B17B8
procedure TSpinButton.GetUpNumGlyphs;
begin
{*
 006B17B8    mov         eax,dword ptr [eax+290];TSpinButton.FUpButton:TTimerSpeedButton
 006B17BE    call        TSpeedButton.GetNumGlyphs
 006B17C3    ret
*}
end;

//006B17C4
procedure TSpinButton.SetUpNumGlyphs(Value:TNumGlyphs);
begin
{*
 006B17C4    mov         eax,dword ptr [eax+290];TSpinButton.FUpButton:TTimerSpeedButton
 006B17CA    call        TSpeedButton.SetNumGlyphs
 006B17CF    ret
*}
end;

//006B17D0
procedure TSpinButton.GetDownGlyph;
begin
{*
 006B17D0    mov         eax,dword ptr [eax+294];TSpinButton.FDownButton:TTimerSpeedButton
 006B17D6    call        TBitBtn.GetGlyph
 006B17DB    ret
*}
end;

//006B17DC
procedure TSpinButton.SetDownGlyph(Value:TBitmap);
begin
{*
 006B17DC    push        esi
 006B17DD    mov         esi,eax
 006B17DF    test        edx,edx
>006B17E1    je          006B17F0
 006B17E3    mov         eax,dword ptr [esi+294];TSpinButton.FDownButton:TTimerSpeedButton
 006B17E9    call        TSpeedButton.SetGlyph
 006B17EE    pop         esi
 006B17EF    ret
 006B17F0    push        6B1830;'SpinDown'
 006B17F5    mov         eax,[007C7C54];gvar_007C7C54
 006B17FA    push        eax
 006B17FB    call        user32.LoadBitmapW
 006B1800    push        eax
 006B1801    mov         eax,dword ptr [esi+294];TSpinButton.FDownButton:TTimerSpeedButton
 006B1807    call        TBitBtn.GetGlyph
 006B180C    pop         edx
 006B180D    call        TBitmap.SetHandle
 006B1812    mov         dl,1
 006B1814    mov         eax,dword ptr [esi+294];TSpinButton.FDownButton:TTimerSpeedButton
 006B181A    call        TSpeedButton.SetNumGlyphs
 006B181F    mov         eax,dword ptr [esi+294];TSpinButton.FDownButton:TTimerSpeedButton
 006B1825    mov         edx,dword ptr [eax]
 006B1827    call        dword ptr [edx+0A8];TControl.Invalidate
 006B182D    pop         esi
 006B182E    ret
*}
end;

//006B1844
procedure TSpinButton.GetDownNumGlyphs;
begin
{*
 006B1844    mov         eax,dword ptr [eax+294];TSpinButton.FDownButton:TTimerSpeedButton
 006B184A    call        TSpeedButton.GetNumGlyphs
 006B184F    ret
*}
end;

//006B1850
procedure TSpinButton.SetDownNumGlyphs(Value:TNumGlyphs);
begin
{*
 006B1850    mov         eax,dword ptr [eax+294];TSpinButton.FDownButton:TTimerSpeedButton
 006B1856    call        TSpeedButton.SetNumGlyphs
 006B185B    ret
*}
end;

//006B185C
constructor TSpinEdit.Create(AOwner:TComponent);
begin
{*
 006B185C    push        ebp
 006B185D    mov         ebp,esp
 006B185F    push        ecx
 006B1860    push        ebx
 006B1861    push        esi
 006B1862    test        dl,dl
>006B1864    je          006B186E
 006B1866    add         esp,0FFFFFFF0
 006B1869    call        @ClassCreate
 006B186E    mov         byte ptr [ebp-1],dl
 006B1871    mov         ebx,eax
 006B1873    xor         edx,edx
 006B1875    mov         eax,ebx
 006B1877    call        TCustomEdit.Create
 006B187C    mov         ecx,ebx
 006B187E    mov         dl,1
 006B1880    mov         eax,[006AFC50];TSpinButton
 006B1885    call        TSpinButton.Create;TSpinButton.Create
 006B188A    mov         esi,eax
 006B188C    mov         dword ptr [ebx+2D4],esi;TSpinEdit.FButton:TSpinButton
 006B1892    mov         eax,esi
 006B1894    mov         edx,0F
 006B1899    call        TControl.SetWidth
 006B189E    mov         eax,dword ptr [ebx+2D4];TSpinEdit.FButton:TSpinButton
 006B18A4    mov         edx,11
 006B18A9    call        TControl.SetHeight
 006B18AE    mov         eax,dword ptr [ebx+2D4];TSpinEdit.FButton:TSpinButton
 006B18B4    mov         dl,1
 006B18B6    call        TControl.SetVisible
 006B18BB    mov         eax,dword ptr [ebx+2D4];TSpinEdit.FButton:TSpinButton
 006B18C1    mov         edx,ebx
 006B18C3    mov         ecx,dword ptr [eax]
 006B18C5    call        dword ptr [ecx+8C];TSpinButton.sub_004F22F8
 006B18CB    mov         eax,dword ptr [ebx+2D4];TSpinEdit.FButton:TSpinButton
 006B18D1    mov         dword ptr [eax+29C],ebx;TSpinButton.FFocusControl:TWinControl
 006B18D7    mov         dword ptr [eax+2A4],ebx;TSpinButton.?f2A4:TSpinEdit
 006B18DD    mov         edx,dword ptr [ebx]
 006B18DF    mov         edx,dword ptr [edx+130];TSpinEdit.FOnContextPopup:TContextPopupEvent
 006B18E5    mov         dword ptr [eax+2A0],edx;TSpinButton.FOnUpClick:TNotifyEvent
 006B18EB    mov         dword ptr [eax+2AC],ebx;TSpinButton.?f2AC:TSpinEdit
 006B18F1    mov         edx,dword ptr [ebx]
 006B18F3    mov         edx,dword ptr [edx+134];TSpinEdit.?f134:dword
 006B18F9    mov         dword ptr [eax+2A8],edx;TSpinButton.FOnDownClick:TNotifyEvent
 006B18FF    mov         edx,6B195C;'0'
 006B1904    mov         eax,ebx
 006B1906    call        TControl.SetText
 006B190B    mov         eax,[006B1960];0x20 gvar_006B1960
 006B1910    not         eax
 006B1912    and         dword ptr [ebx+60],eax;TSpinEdit.FControlStyle:TControlStyle
 006B1915    mov         dword ptr [ebx+2D0],1;TSpinEdit.FIncrement:Integer
 006B191F    mov         byte ptr [ebx+2D8],1;TSpinEdit.FEditorEnabled:Boolean
 006B1926    xor         edx,edx
 006B1928    mov         eax,ebx
 006B192A    mov         ecx,dword ptr [eax]
 006B192C    call        dword ptr [ecx+0F0];TGroupBox.SetParentBackground
 006B1932    mov         eax,ebx
 006B1934    cmp         byte ptr [ebp-1],0
>006B1938    je          006B1949
 006B193A    call        @AfterConstruction
 006B193F    pop         dword ptr fs:[0]
 006B1946    add         esp,0C
 006B1949    mov         eax,ebx
 006B194B    pop         esi
 006B194C    pop         ebx
 006B194D    pop         ecx
 006B194E    pop         ebp
 006B194F    ret
*}
end;

//006B1964
destructor TSpinEdit.Destroy();
begin
{*
 006B1964    push        ebx
 006B1965    push        esi
 006B1966    call        @BeforeDestruction
 006B196B    mov         ebx,edx
 006B196D    mov         esi,eax
 006B196F    xor         eax,eax
 006B1971    mov         dword ptr [esi+2D4],eax;TSpinEdit.FButton:TSpinButton
 006B1977    mov         dl,0FC
 006B1979    and         dl,bl
 006B197B    mov         eax,esi
 006B197D    call        TWinControl.Destroy
 006B1982    test        bl,bl
>006B1984    jle         006B198D
 006B1986    mov         eax,esi
 006B1988    call        @ClassDestroy
 006B198D    pop         esi
 006B198E    pop         ebx
 006B198F    ret
*}
end;

//006B1990
procedure TSpinEdit.GetChildren(Root:TComponent; Proc:TGetChildProc);
begin
{*
 006B1990    push        ebp
 006B1991    mov         ebp,esp
 006B1993    pop         ebp
 006B1994    ret         8
*}
end;

//006B1998
{*procedure TSpinEdit.sub_004EE9E0(?:?; ?:?);
begin
 006B1998    push        ebx
 006B1999    push        esi
 006B199A    push        ecx
 006B199B    mov         word ptr [esp],cx
 006B199F    mov         esi,edx
 006B19A1    mov         ebx,eax
 006B19A3    cmp         word ptr [esi],26
>006B19A7    jne         006B19B7
 006B19A9    mov         edx,ebx
 006B19AB    mov         eax,ebx
 006B19AD    mov         ecx,dword ptr [eax]
 006B19AF    call        dword ptr [ecx+130];TSpinEdit.sub_006B1C80
>006B19B5    jmp         006B19C9
 006B19B7    cmp         word ptr [esi],28
>006B19BB    jne         006B19C9
 006B19BD    mov         edx,ebx
 006B19BF    mov         eax,ebx
 006B19C1    mov         ecx,dword ptr [eax]
 006B19C3    call        dword ptr [ecx+134];TSpinEdit.sub_006B1CB0
 006B19C9    mov         edx,esi
 006B19CB    movzx       ecx,word ptr [esp]
 006B19CF    mov         eax,ebx
 006B19D1    call        TCustomEdit.sub_004EE9E0
 006B19D6    pop         edx
 006B19D7    pop         esi
 006B19D8    pop         ebx
 006B19D9    ret
end;*}

//006B19DC
{*procedure TSpinEdit.sub_004EEC30(?:?);
begin
 006B19DC    push        ebx
 006B19DD    push        esi
 006B19DE    mov         ebx,edx
 006B19E0    mov         esi,eax
 006B19E2    movzx       edx,word ptr [ebx]
 006B19E5    mov         eax,esi
 006B19E7    mov         ecx,dword ptr [eax]
 006B19E9    call        dword ptr [ecx+12C];TSpinEdit.sub_006B1A14
 006B19EF    test        al,al
>006B19F1    jne         006B19FF
 006B19F3    mov         word ptr [ebx],0
 006B19F8    push        0
 006B19FA    call        user32.MessageBeep
 006B19FF    cmp         word ptr [ebx],0
>006B1A03    je          006B1A0E
 006B1A05    mov         edx,ebx
 006B1A07    mov         eax,esi
 006B1A09    call        TCustomEdit.sub_004EEC30
 006B1A0E    pop         esi
 006B1A0F    pop         ebx
 006B1A10    ret
end;*}

//006B1A14
{*procedure sub_006B1A14(?:?);
begin
 006B1A14    push        ebx
 006B1A15    push        esi
 006B1A16    push        edi
 006B1A17    add         esp,0FFFFFFDC
 006B1A1A    mov         ebx,edx
 006B1A1C    mov         esi,eax
 006B1A1E    push        esi
 006B1A1F    mov         esi,6B1AA4
 006B1A24    lea         edi,[esp+8]
 006B1A28    mov         ecx,8
 006B1A2D    rep movs    dword ptr [edi],dword ptr [esi]
 006B1A2F    pop         esi
 006B1A30    mov         eax,[007C4B88];^gvar_007C7CC8:Pointer
 006B1A35    movzx       eax,word ptr [eax+0C2]
 006B1A3C    movzx       eax,al
 006B1A3F    bts         dword ptr [esp+4],eax
 006B1A44    lea         eax,[esp+4]
 006B1A48    mov         dword ptr [esp],eax
 006B1A4B    mov         eax,dword ptr [esp]
 006B1A4E    mov         edx,ebx
 006B1A50    cmp         dx,0FF
>006B1A55    ja          006B1A5D
 006B1A57    movzx       edx,dx
 006B1A5A    bt          dword ptr [eax],edx
 006B1A5D    setb        al
 006B1A60    test        al,al
>006B1A62    je          006B1A68
 006B1A64    mov         al,1
>006B1A66    jmp         006B1A7A
 006B1A68    cmp         bx,20
>006B1A6C    jae         006B1A74
 006B1A6E    cmp         bx,0D
>006B1A72    jne         006B1A78
 006B1A74    xor         eax,eax
>006B1A76    jmp         006B1A7A
 006B1A78    mov         al,1
 006B1A7A    movzx       edx,byte ptr [esi+2D8];TSpinEdit.FEditorEnabled:Boolean
 006B1A81    xor         dl,1
 006B1A84    test        dl,al
>006B1A86    je          006B1A9C
 006B1A88    cmp         bx,20
>006B1A8C    jae         006B1A9A
 006B1A8E    cmp         bx,8
>006B1A92    je          006B1A9A
 006B1A94    cmp         bx,2E
>006B1A98    jne         006B1A9C
 006B1A9A    xor         eax,eax
 006B1A9C    add         esp,24
 006B1A9F    pop         edi
 006B1AA0    pop         esi
 006B1AA1    pop         ebx
 006B1AA2    ret
end;*}

//006B1AC4
procedure TSpinEdit.CreateParams(var Params:Controls.TCreateParams);
begin
{*
 006B1AC4    push        ebx
 006B1AC5    mov         ebx,edx
 006B1AC7    mov         edx,ebx
 006B1AC9    call        TCustomEdit.CreateParams
 006B1ACE    mov         eax,dword ptr [ebx+4]
 006B1AD1    or          eax,4
 006B1AD4    or          eax,2000000
 006B1AD9    mov         dword ptr [ebx+4],eax
 006B1ADC    pop         ebx
 006B1ADD    ret
*}
end;

//006B1AE0
procedure TSpinEdit.CreateWnd;
begin
{*
 006B1AE0    push        ebx
 006B1AE1    mov         ebx,eax
 006B1AE3    mov         eax,ebx
 006B1AE5    call        TCustomEdit.CreateWnd
 006B1AEA    mov         eax,ebx
 006B1AEC    call        TSpinEdit.SetEditRect
 006B1AF1    pop         ebx
 006B1AF2    ret
*}
end;

//006B1AF4
procedure TSpinEdit.SetEditRect;
begin
{*
 006B1AF4    push        ebx
 006B1AF5    add         esp,0FFFFFFF0
 006B1AF8    mov         ebx,eax
 006B1AFA    mov         eax,esp
 006B1AFC    push        eax
 006B1AFD    push        0
 006B1AFF    push        0B2
 006B1B04    mov         eax,ebx
 006B1B06    call        TWinControl.GetHandle
 006B1B0B    push        eax
 006B1B0C    call        user32.SendMessageW
 006B1B11    mov         eax,ebx
 006B1B13    call        TControl.GetClientHeight
 006B1B18    inc         eax
 006B1B19    mov         dword ptr [esp+0C],eax
 006B1B1D    mov         eax,ebx
 006B1B1F    call        TControl.GetClientWidth
 006B1B24    mov         edx,dword ptr [ebx+2D4]
 006B1B2A    sub         eax,dword ptr [edx+58]
 006B1B2D    sub         eax,2
 006B1B30    mov         dword ptr [esp+8],eax
 006B1B34    xor         eax,eax
 006B1B36    mov         dword ptr [esp+4],eax
 006B1B3A    xor         eax,eax
 006B1B3C    mov         dword ptr [esp],eax
 006B1B3F    mov         eax,esp
 006B1B41    push        eax
 006B1B42    push        0
 006B1B44    push        0B4
 006B1B49    mov         eax,ebx
 006B1B4B    call        TWinControl.GetHandle
 006B1B50    push        eax
 006B1B51    call        user32.SendMessageW
 006B1B56    mov         eax,esp
 006B1B58    push        eax
 006B1B59    push        0
 006B1B5B    push        0B2
 006B1B60    mov         eax,ebx
 006B1B62    call        TWinControl.GetHandle
 006B1B67    push        eax
 006B1B68    call        user32.SendMessageW
 006B1B6D    add         esp,10
 006B1B70    pop         ebx
 006B1B71    ret
*}
end;

//006B1B74
{*procedure TSpinEdit.WMSize(?:?);
begin
 006B1B74    push        ebx
 006B1B75    push        esi
 006B1B76    mov         ebx,eax
 006B1B78    mov         eax,ebx
 006B1B7A    call        TWinControl.WMSize
 006B1B7F    mov         eax,ebx
 006B1B81    call        006B1C0C
 006B1B86    cmp         eax,dword ptr [ebx+5C];TSpinEdit.FHeight:Integer
>006B1B89    jle         006B1B97
 006B1B8B    mov         edx,eax
 006B1B8D    mov         eax,ebx
 006B1B8F    call        TControl.SetHeight
 006B1B94    pop         esi
 006B1B95    pop         ebx
 006B1B96    ret
 006B1B97    cmp         dword ptr [ebx+2D4],0;TSpinEdit.FButton:TSpinButton
>006B1B9E    je          006B1C06
 006B1BA0    mov         eax,[007C4770];^gvar_007CA5E0
 006B1BA5    cmp         byte ptr [eax],0
>006B1BA8    je          006B1BDA
 006B1BAA    cmp         byte ptr [ebx+204],0;TSpinEdit.FCtl3D:Boolean
>006B1BB1    je          006B1BDA
 006B1BB3    mov         eax,dword ptr [ebx+2D4];TSpinEdit.FButton:TSpinButton
 006B1BB9    mov         edx,dword ptr [eax+58];TSpinButton.FWidth:Integer
 006B1BBC    push        edx
 006B1BBD    mov         ecx,dword ptr [ebx+5C];TSpinEdit.FHeight:Integer
 006B1BC0    sub         ecx,5
 006B1BC3    push        ecx
 006B1BC4    mov         ecx,dword ptr [ebx+58];TSpinEdit.FWidth:Integer
 006B1BC7    sub         ecx,edx
 006B1BC9    sub         ecx,5
 006B1BCC    mov         edx,ecx
 006B1BCE    xor         ecx,ecx
 006B1BD0    mov         esi,dword ptr [eax]
 006B1BD2    call        dword ptr [esi+0B0];TSpinButton.SetBounds
>006B1BD8    jmp         006B1BFF
 006B1BDA    mov         eax,dword ptr [ebx+2D4];TSpinEdit.FButton:TSpinButton
 006B1BE0    mov         edx,dword ptr [eax+58];TSpinButton.FWidth:Integer
 006B1BE3    push        edx
 006B1BE4    mov         ecx,dword ptr [ebx+5C];TSpinEdit.FHeight:Integer
 006B1BE7    sub         ecx,3
 006B1BEA    push        ecx
 006B1BEB    mov         ecx,dword ptr [ebx+58];TSpinEdit.FWidth:Integer
 006B1BEE    sub         ecx,edx
 006B1BF0    mov         edx,ecx
 006B1BF2    mov         ecx,1
 006B1BF7    mov         esi,dword ptr [eax]
 006B1BF9    call        dword ptr [esi+0B0];TSpinButton.SetBounds
 006B1BFF    mov         eax,ebx
 006B1C01    call        TSpinEdit.SetEditRect
 006B1C06    pop         esi
 006B1C07    pop         ebx
 006B1C08    ret
end;*}

//006B1C0C
{*function sub_006B1C0C(?:TSpinEdit):?;
begin
 006B1C0C    push        ebx
 006B1C0D    push        esi
 006B1C0E    add         esp,0FFFFFF88
 006B1C11    mov         esi,eax
 006B1C13    push        0
 006B1C15    call        user32.GetDC
 006B1C1A    mov         ebx,eax
 006B1C1C    push        esp
 006B1C1D    push        ebx
 006B1C1E    call        gdi32.GetTextMetricsW
 006B1C23    mov         eax,dword ptr [esi+74];TSpinEdit.FFont:TFont
 006B1C26    call        TFont.GetHandle
 006B1C2B    push        eax
 006B1C2C    push        ebx
 006B1C2D    call        gdi32.SelectObject
 006B1C32    mov         esi,eax
 006B1C34    lea         eax,[esp+3C]
 006B1C38    push        eax
 006B1C39    push        ebx
 006B1C3A    call        gdi32.GetTextMetricsW
 006B1C3F    push        esi
 006B1C40    push        ebx
 006B1C41    call        gdi32.SelectObject
 006B1C46    push        ebx
 006B1C47    push        0
 006B1C49    call        user32.ReleaseDC
 006B1C4E    mov         ebx,dword ptr [esp]
 006B1C51    mov         esi,dword ptr [esp+3C]
 006B1C55    cmp         ebx,esi
>006B1C57    jle         006B1C5B
 006B1C59    mov         ebx,esi
 006B1C5B    push        6
 006B1C5D    call        user32.GetSystemMetrics
 006B1C62    add         eax,eax
 006B1C64    add         eax,eax
 006B1C66    test        ebx,ebx
>006B1C68    jns         006B1C6D
 006B1C6A    add         ebx,3
 006B1C6D    sar         ebx,2
 006B1C70    add         ebx,esi
 006B1C72    add         eax,ebx
 006B1C74    add         eax,2
 006B1C77    add         esp,78
 006B1C7A    pop         esi
 006B1C7B    pop         ebx
 006B1C7C    ret
end;*}

//006B1C80
procedure sub_006B1C80;
begin
{*
 006B1C80    push        ebx
 006B1C81    mov         ebx,eax
 006B1C83    mov         eax,ebx
 006B1C85    call        TCustomEdit.GetReadOnly
 006B1C8A    test        al,al
>006B1C8C    je          006B1C97
 006B1C8E    push        0
 006B1C90    call        user32.MessageBeep
 006B1C95    pop         ebx
 006B1C96    ret
 006B1C97    mov         eax,ebx
 006B1C99    call        TSpinEdit.GetValue
 006B1C9E    mov         edx,eax
 006B1CA0    add         edx,dword ptr [ebx+2D0];TSpinEdit.FIncrement:Integer
 006B1CA6    mov         eax,ebx
 006B1CA8    call        TSpinEdit.SetValue
 006B1CAD    pop         ebx
 006B1CAE    ret
*}
end;

//006B1CB0
procedure sub_006B1CB0;
begin
{*
 006B1CB0    push        ebx
 006B1CB1    mov         ebx,eax
 006B1CB3    mov         eax,ebx
 006B1CB5    call        TCustomEdit.GetReadOnly
 006B1CBA    test        al,al
>006B1CBC    je          006B1CC7
 006B1CBE    push        0
 006B1CC0    call        user32.MessageBeep
 006B1CC5    pop         ebx
 006B1CC6    ret
 006B1CC7    mov         eax,ebx
 006B1CC9    call        TSpinEdit.GetValue
 006B1CCE    mov         edx,eax
 006B1CD0    sub         edx,dword ptr [ebx+2D0]
 006B1CD6    mov         eax,ebx
 006B1CD8    call        TSpinEdit.SetValue
 006B1CDD    pop         ebx
 006B1CDE    ret
*}
end;

//006B1CE0
{*procedure TSpinEdit.WMPaste(?:?);
begin
 006B1CE0    push        ebx
 006B1CE1    push        esi
 006B1CE2    mov         esi,edx
 006B1CE4    mov         ebx,eax
 006B1CE6    cmp         byte ptr [ebx+2D8],0;TSpinEdit.FEditorEnabled:Boolean
>006B1CED    je          006B1D03
 006B1CEF    mov         eax,ebx
 006B1CF1    call        TCustomEdit.GetReadOnly
 006B1CF6    test        al,al
>006B1CF8    jne         006B1D03
 006B1CFA    mov         edx,esi
 006B1CFC    mov         eax,ebx
 006B1CFE    mov         ecx,dword ptr [eax]
 006B1D00    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
 006B1D03    pop         esi
 006B1D04    pop         ebx
 006B1D05    ret
end;*}

//006B1D08
{*procedure TSpinEdit.WMCut(?:?);
begin
 006B1D08    push        ebx
 006B1D09    push        esi
 006B1D0A    mov         esi,edx
 006B1D0C    mov         ebx,eax
 006B1D0E    cmp         byte ptr [ebx+2D8],0;TSpinEdit.FEditorEnabled:Boolean
>006B1D15    je          006B1D2B
 006B1D17    mov         eax,ebx
 006B1D19    call        TCustomEdit.GetReadOnly
 006B1D1E    test        al,al
>006B1D20    jne         006B1D2B
 006B1D22    mov         edx,esi
 006B1D24    mov         eax,ebx
 006B1D26    mov         ecx,dword ptr [eax]
 006B1D28    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
 006B1D2B    pop         esi
 006B1D2C    pop         ebx
 006B1D2D    ret
end;*}

//006B1D30
{*procedure TSpinEdit.WMGetDlgCode(?:?);
begin
 006B1D30    push        ebx
 006B1D31    mov         ebx,edx
 006B1D33    mov         edx,ebx
 006B1D35    mov         ecx,dword ptr [eax]
 006B1D37    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
 006B1D3A    and         dword ptr [ebx+0C],0FFFFFFFB
 006B1D3E    pop         ebx
 006B1D3F    ret
end;*}

//006B1D40
procedure TSpinEdit.CMExit(var Message:Controls.TCMExit);
begin
{*
 006B1D40    push        ebx
 006B1D41    push        esi
 006B1D42    mov         ebx,eax
 006B1D44    mov         eax,ebx
 006B1D46    call        TCustomEdit.CMExit
 006B1D4B    mov         eax,ebx
 006B1D4D    call        TSpinEdit.GetValue
 006B1D52    mov         edx,eax
 006B1D54    mov         eax,ebx
 006B1D56    call        TSpinEdit.CheckValue
 006B1D5B    mov         esi,eax
 006B1D5D    mov         eax,ebx
 006B1D5F    call        TSpinEdit.GetValue
 006B1D64    cmp         esi,eax
>006B1D66    je          006B1D78
 006B1D68    mov         eax,ebx
 006B1D6A    call        TSpinEdit.GetValue
 006B1D6F    mov         edx,eax
 006B1D71    mov         eax,ebx
 006B1D73    call        TSpinEdit.SetValue
 006B1D78    pop         esi
 006B1D79    pop         ebx
 006B1D7A    ret
*}
end;

//006B1D7C
function TSpinEdit.GetValue:LongInt;
begin
{*
 006B1D7C    push        ebp
 006B1D7D    mov         ebp,esp
 006B1D7F    push        0
 006B1D81    push        ebx
 006B1D82    mov         ebx,eax
 006B1D84    xor         eax,eax
 006B1D86    push        ebp
 006B1D87    push        6B1DC2
 006B1D8C    push        dword ptr fs:[eax]
 006B1D8F    mov         dword ptr fs:[eax],esp
 006B1D92    lea         edx,[ebp-4]
 006B1D95    mov         eax,ebx
 006B1D97    call        TControl.GetText
 006B1D9C    mov         eax,dword ptr [ebp-4]
 006B1D9F    mov         edx,dword ptr [ebx+2C8]
 006B1DA5    call        StrToIntDef
 006B1DAA    mov         ebx,eax
 006B1DAC    xor         eax,eax
 006B1DAE    pop         edx
 006B1DAF    pop         ecx
 006B1DB0    pop         ecx
 006B1DB1    mov         dword ptr fs:[eax],edx
 006B1DB4    push        6B1DC9
 006B1DB9    lea         eax,[ebp-4]
 006B1DBC    call        @UStrClr
 006B1DC1    ret
>006B1DC2    jmp         @HandleFinally
>006B1DC7    jmp         006B1DB9
 006B1DC9    mov         eax,ebx
 006B1DCB    pop         ebx
 006B1DCC    pop         ecx
 006B1DCD    pop         ebp
 006B1DCE    ret
*}
end;

//006B1DD0
procedure TSpinEdit.SetValue(NewValue:LongInt);
begin
{*
 006B1DD0    push        ebp
 006B1DD1    mov         ebp,esp
 006B1DD3    push        0
 006B1DD5    push        ebx
 006B1DD6    push        esi
 006B1DD7    mov         esi,edx
 006B1DD9    mov         ebx,eax
 006B1DDB    xor         eax,eax
 006B1DDD    push        ebp
 006B1DDE    push        6B1E1A
 006B1DE3    push        dword ptr fs:[eax]
 006B1DE6    mov         dword ptr fs:[eax],esp
 006B1DE9    mov         edx,esi
 006B1DEB    mov         eax,ebx
 006B1DED    call        TSpinEdit.CheckValue
 006B1DF2    lea         edx,[ebp-4]
 006B1DF5    call        IntToStr
 006B1DFA    mov         edx,dword ptr [ebp-4]
 006B1DFD    mov         eax,ebx
 006B1DFF    call        TControl.SetText
 006B1E04    xor         eax,eax
 006B1E06    pop         edx
 006B1E07    pop         ecx
 006B1E08    pop         ecx
 006B1E09    mov         dword ptr fs:[eax],edx
 006B1E0C    push        6B1E21
 006B1E11    lea         eax,[ebp-4]
 006B1E14    call        @UStrClr
 006B1E19    ret
>006B1E1A    jmp         @HandleFinally
>006B1E1F    jmp         006B1E11
 006B1E21    pop         esi
 006B1E22    pop         ebx
 006B1E23    pop         ecx
 006B1E24    pop         ebp
 006B1E25    ret
*}
end;

//006B1E28
function TSpinEdit.CheckValue(NewValue:LongInt):LongInt;
begin
{*
 006B1E28    push        esi
 006B1E29    push        edi
 006B1E2A    mov         ecx,edx
 006B1E2C    mov         esi,dword ptr [eax+2C8]
 006B1E32    mov         edi,dword ptr [eax+2CC]
 006B1E38    cmp         esi,edi
>006B1E3A    je          006B1E4A
 006B1E3C    cmp         esi,edx
>006B1E3E    jle         006B1E44
 006B1E40    mov         ecx,esi
>006B1E42    jmp         006B1E4A
 006B1E44    cmp         edi,edx
>006B1E46    jge         006B1E4A
 006B1E48    mov         ecx,edi
 006B1E4A    mov         eax,ecx
 006B1E4C    pop         edi
 006B1E4D    pop         esi
 006B1E4E    ret
*}
end;

//006B1E50
{*procedure TSpinEdit.CMEnter(?:?);
begin
 006B1E50    push        ebx
 006B1E51    push        esi
 006B1E52    mov         esi,edx
 006B1E54    mov         ebx,eax
 006B1E56    cmp         byte ptr [ebx+29E],0;TSpinEdit.FAutoSelect:Boolean
>006B1E5D    je          006B1E6C
 006B1E5F    test        byte ptr [ebx+64],1;TSpinEdit.FControlState:TControlState
>006B1E63    jne         006B1E6C
 006B1E65    mov         eax,ebx
 006B1E67    call        TCustomEdit.SelectAll
 006B1E6C    mov         edx,esi
 006B1E6E    mov         eax,ebx
 006B1E70    call        TCustomEdit.CMEnter
 006B1E75    pop         esi
 006B1E76    pop         ebx
 006B1E77    ret
end;*}

//006B1E78
destructor TTimerSpeedButton.Destroy();
begin
{*
 006B1E78    push        ebx
 006B1E79    push        esi
 006B1E7A    call        @BeforeDestruction
 006B1E7F    mov         ebx,edx
 006B1E81    mov         esi,eax
 006B1E83    mov         eax,dword ptr [esi+1E0];TTimerSpeedButton.FRepeatTimer:TTimer
 006B1E89    test        eax,eax
>006B1E8B    je          006B1E92
 006B1E8D    call        TObject.Free
 006B1E92    mov         dl,0FC
 006B1E94    and         dl,bl
 006B1E96    mov         eax,esi
 006B1E98    call        TSpeedButton.Destroy
 006B1E9D    test        bl,bl
>006B1E9F    jle         006B1EA8
 006B1EA1    mov         eax,esi
 006B1EA3    call        @ClassDestroy
 006B1EA8    pop         esi
 006B1EA9    pop         ebx
 006B1EAA    ret
*}
end;

//006B1EAC
{*procedure TTimerSpeedButton.sub_004E8C70(?:?; ?:?; ?:?; ?:?);
begin
 006B1EAC    push        ebp
 006B1EAD    mov         ebp,esp
 006B1EAF    push        ecx
 006B1EB0    push        ebx
 006B1EB1    mov         word ptr [ebp-2],cx
 006B1EB5    mov         ebx,eax
 006B1EB7    mov         eax,dword ptr [ebp+0C]
 006B1EBA    push        eax
 006B1EBB    mov         eax,dword ptr [ebp+8]
 006B1EBE    push        eax
 006B1EBF    movzx       ecx,word ptr [ebp-2]
 006B1EC3    mov         eax,ebx
 006B1EC5    call        TSpeedButton.sub_004E8C70
 006B1ECA    test        byte ptr [ebx+1E4],2;TTimerSpeedButton.FTimeBtnState:TTimeBtnState
>006B1ED1    je          006B1F1E
 006B1ED3    cmp         dword ptr [ebx+1E0],0;TTimerSpeedButton.FRepeatTimer:TTimer
>006B1EDA    jne         006B1EF0
 006B1EDC    mov         ecx,ebx
 006B1EDE    mov         dl,1
 006B1EE0    mov         eax,[00561460];TTimer
 006B1EE5    call        TTimer.Create;TTimer.Create
 006B1EEA    mov         dword ptr [ebx+1E0],eax;TTimerSpeedButton.FRepeatTimer:TTimer
 006B1EF0    push        ebx
 006B1EF1    push        6B1F5C
 006B1EF6    mov         eax,dword ptr [ebx+1E0];TTimerSpeedButton.FRepeatTimer:TTimer
 006B1EFC    call        TTimer.SetOnTimer
 006B1F01    mov         edx,190
 006B1F06    mov         eax,dword ptr [ebx+1E0];TTimerSpeedButton.FRepeatTimer:TTimer
 006B1F0C    call        TTimer.SetInterval
 006B1F11    mov         dl,1
 006B1F13    mov         eax,dword ptr [ebx+1E0];TTimerSpeedButton.FRepeatTimer:TTimer
 006B1F19    call        TTimer.SetEnabled
 006B1F1E    pop         ebx
 006B1F1F    pop         ecx
 006B1F20    pop         ebp
 006B1F21    ret         8
end;*}

//006B1F24
{*procedure TTimerSpeedButton.sub_004E9010(?:?; ?:?; ?:?; ?:?);
begin
 006B1F24    push        ebp
 006B1F25    mov         ebp,esp
 006B1F27    push        ecx
 006B1F28    push        ebx
 006B1F29    mov         word ptr [ebp-2],cx
 006B1F2D    mov         ebx,eax
 006B1F2F    mov         eax,dword ptr [ebp+0C]
 006B1F32    push        eax
 006B1F33    mov         eax,dword ptr [ebp+8]
 006B1F36    push        eax
 006B1F37    movzx       ecx,word ptr [ebp-2]
 006B1F3B    mov         eax,ebx
 006B1F3D    call        TSpeedButton.sub_004E9010
 006B1F42    mov         eax,dword ptr [ebx+1E0];TTimerSpeedButton.FRepeatTimer:TTimer
 006B1F48    test        eax,eax
>006B1F4A    je          006B1F53
 006B1F4C    xor         edx,edx
 006B1F4E    call        TTimer.SetEnabled
 006B1F53    pop         ebx
 006B1F54    pop         ecx
 006B1F55    pop         ebp
 006B1F56    ret         8
end;*}

//006B1FDC
procedure sub_006B1FDC;
begin
{*
 006B1FDC    push        ebp
 006B1FDD    mov         ebp,esp
 006B1FDF    add         esp,0FFFFFFC8
 006B1FE2    push        ebx
 006B1FE3    mov         dword ptr [ebp-4],eax
 006B1FE6    call        TStyleManager.GetIsCustomStyleActive
 006B1FEB    test        al,al
>006B1FED    je          006B2238
 006B1FF3    mov         eax,dword ptr [ebp-4]
 006B1FF6    cmp         dword ptr [eax+40],0;TTimerSpeedButton.FParent:TWinControl
>006B1FFA    je          006B2238
 006B2000    mov         eax,dword ptr [ebp-4]
 006B2003    mov         eax,dword ptr [eax+40];TTimerSpeedButton.FParent:TWinControl
 006B2006    mov         edx,dword ptr ds:[6AFC50];TSpinButton
 006B200C    call        @IsClass
 006B2011    test        al,al
>006B2013    je          006B2238
 006B2019    mov         eax,dword ptr [ebp-4]
 006B201C    mov         eax,dword ptr [eax+40];TTimerSpeedButton.FParent:TWinControl
 006B201F    test        byte ptr [eax+188],2;TWinControl.FStyleElements:TStyleElements
>006B2026    je          006B2238
 006B202C    mov         eax,dword ptr [ebp-4]
 006B202F    mov         edx,dword ptr [eax]
 006B2031    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 006B2034    test        al,al
>006B2036    jne         006B2050
 006B2038    call        TStyleManager.GetActiveStyle
 006B203D    mov         ebx,eax
 006B203F    lea         ecx,[ebp-30]
 006B2042    mov         dl,5
 006B2044    mov         eax,ebx
 006B2046    mov         ebx,dword ptr [eax]
 006B2048    call        dword ptr [ebx+0F8];TCustomStyleServices.GetElementDetails
>006B204E    jmp         006B20B2
 006B2050    mov         eax,dword ptr [ebp-4]
 006B2053    movzx       eax,byte ptr [eax+1DA];TTimerSpeedButton.FState:TButtonState
 006B205A    add         al,0FE
 006B205C    sub         al,2
>006B205E    jae         006B2078
 006B2060    call        TStyleManager.GetActiveStyle
 006B2065    mov         ebx,eax
 006B2067    lea         ecx,[ebp-30]
 006B206A    mov         dl,4
 006B206C    mov         eax,ebx
 006B206E    mov         ebx,dword ptr [eax]
 006B2070    call        dword ptr [ebx+0F8];TCustomStyleServices.GetElementDetails
>006B2076    jmp         006B20B2
 006B2078    mov         eax,dword ptr [ebp-4]
 006B207B    cmp         byte ptr [eax+1D9],0;TTimerSpeedButton.FMouseInControl:Boolean
>006B2082    je          006B209C
 006B2084    call        TStyleManager.GetActiveStyle
 006B2089    mov         ebx,eax
 006B208B    lea         ecx,[ebp-30]
 006B208E    mov         dl,3
 006B2090    mov         eax,ebx
 006B2092    mov         ebx,dword ptr [eax]
 006B2094    call        dword ptr [ebx+0F8];TCustomStyleServices.GetElementDetails
>006B209A    jmp         006B20B2
 006B209C    call        TStyleManager.GetActiveStyle
 006B20A1    mov         ebx,eax
 006B20A3    lea         ecx,[ebp-30]
 006B20A6    mov         dl,2
 006B20A8    mov         eax,ebx
 006B20AA    mov         ebx,dword ptr [eax]
 006B20AC    call        dword ptr [ebx+0F8];TCustomStyleServices.GetElementDetails
 006B20B2    mov         eax,dword ptr [ebp-4]
 006B20B5    mov         eax,dword ptr [eax+5C];TTimerSpeedButton.FHeight:Integer
 006B20B8    push        eax
 006B20B9    lea         eax,[ebp-24]
 006B20BC    push        eax
 006B20BD    mov         eax,dword ptr [ebp-4]
 006B20C0    mov         ecx,dword ptr [eax+58];TTimerSpeedButton.FWidth:Integer
 006B20C3    xor         edx,edx
 006B20C5    xor         eax,eax
 006B20C7    call        Bounds
 006B20CC    mov         eax,dword ptr [ebp-4]
 006B20CF    mov         eax,dword ptr [eax+1B8];TTimerSpeedButton.FCanvas:TCanvas
 006B20D5    call        TCanvas.GetHandle
 006B20DA    push        eax
 006B20DB    call        gdi32.SaveDC
 006B20E0    mov         dword ptr [ebp-14],eax
 006B20E3    xor         eax,eax
 006B20E5    push        ebp
 006B20E6    push        6B218A
 006B20EB    push        dword ptr fs:[eax]
 006B20EE    mov         dword ptr fs:[eax],esp
 006B20F1    mov         eax,dword ptr [ebp-4]
 006B20F4    cmp         byte ptr [eax+1D0],0;TTimerSpeedButton.FTransparent:Boolean
>006B20FB    je          006B2125
 006B20FD    call        TStyleManager.GetActiveStyle
 006B2102    mov         ebx,eax
 006B2104    push        0
 006B2106    push        1
 006B2108    push        0
 006B210A    mov         eax,dword ptr [ebp-4]
 006B210D    mov         eax,dword ptr [eax+1B8];TTimerSpeedButton.FCanvas:TCanvas
 006B2113    call        TCanvas.GetHandle
 006B2118    mov         ecx,eax
 006B211A    xor         edx,edx
 006B211C    mov         eax,ebx
 006B211E    call        TCustomStyleServices.DrawParentBackground
>006B2123    jmp         006B213D
 006B2125    mov         eax,dword ptr [ebp-4]
 006B2128    mov         eax,dword ptr [eax+1B8];TTimerSpeedButton.FCanvas:TCanvas
 006B212E    call        TCanvas.GetHandle
 006B2133    mov         edx,eax
 006B2135    mov         eax,dword ptr [ebp-4]
 006B2138    call        004E3750
 006B213D    call        TStyleManager.GetActiveStyle
 006B2142    mov         ebx,eax
 006B2144    lea         eax,[ebp-24]
 006B2147    push        eax
 006B2148    push        0
 006B214A    mov         eax,dword ptr [ebp-4]
 006B214D    mov         eax,dword ptr [eax+1B8];TTimerSpeedButton.FCanvas:TCanvas
 006B2153    call        TCanvas.GetHandle
 006B2158    mov         edx,eax
 006B215A    lea         ecx,[ebp-30]
 006B215D    mov         eax,ebx
 006B215F    call        TCustomStyleServices.DrawElement
 006B2164    xor         eax,eax
 006B2166    pop         edx
 006B2167    pop         ecx
 006B2168    pop         ecx
 006B2169    mov         dword ptr fs:[eax],edx
 006B216C    push        6B2191
 006B2171    mov         eax,dword ptr [ebp-14]
 006B2174    push        eax
 006B2175    mov         eax,dword ptr [ebp-4]
 006B2178    mov         eax,dword ptr [eax+1B8];TTimerSpeedButton.FCanvas:TCanvas
 006B217E    call        TCanvas.GetHandle
 006B2183    push        eax
 006B2184    call        gdi32.RestoreDC
 006B2189    ret
>006B218A    jmp         @HandleFinally
>006B218F    jmp         006B2171
 006B2191    call        TStyleManager.GetActiveStyle
 006B2196    mov         ebx,eax
 006B2198    lea         eax,[ebp-8]
 006B219B    push        eax
 006B219C    mov         cl,2
 006B219E    lea         edx,[ebp-30]
 006B21A1    mov         eax,ebx
 006B21A3    call        TCustomStyleServices.GetElementColor
 006B21A8    test        al,al
>006B21AA    jne         006B21C2
 006B21AC    call        TStyleManager.GetActiveStyle
 006B21B1    mov         ebx,eax
 006B21B3    mov         edx,0FF000012
 006B21B8    mov         eax,ebx
 006B21BA    call        TCustomStyleServices.GetSystemColor
 006B21BF    mov         dword ptr [ebp-8],eax
 006B21C2    mov         eax,dword ptr [ebp-4]
 006B21C5    mov         eax,dword ptr [eax+1B8];TTimerSpeedButton.FCanvas:TCanvas
 006B21CB    mov         eax,dword ptr [eax+44];TCanvas.FPen:TPen
 006B21CE    mov         edx,dword ptr [ebp-8]
 006B21D1    call        TPen.SetColor
 006B21D6    lea         edx,[ebp-38]
 006B21D9    lea         eax,[ebp-24]
 006B21DC    call        CenterPoint
 006B21E1    mov         eax,dword ptr [ebp-38]
 006B21E4    sub         eax,3
 006B21E7    mov         dword ptr [ebp-10],eax
 006B21EA    lea         edx,[ebp-38]
 006B21ED    lea         eax,[ebp-24]
 006B21F0    call        CenterPoint
 006B21F5    mov         eax,dword ptr [ebp-34]
 006B21F8    sub         eax,2
 006B21FB    mov         dword ptr [ebp-0C],eax
 006B21FE    mov         eax,dword ptr [ebp-4]
 006B2201    cmp         byte ptr [eax+1E5],0;TTimerSpeedButton.FDownButton:Boolean
>006B2208    je          006B2221
 006B220A    push        3
 006B220C    mov         eax,dword ptr [ebp-4]
 006B220F    mov         eax,dword ptr [eax+1B8];TTimerSpeedButton.FCanvas:TCanvas
 006B2215    lea         ecx,[ebp-10]
 006B2218    mov         dl,3
 006B221A    call        004D7B70
>006B221F    jmp         006B2240
 006B2221    push        3
 006B2223    mov         eax,dword ptr [ebp-4]
 006B2226    mov         eax,dword ptr [eax+1B8];TTimerSpeedButton.FCanvas:TCanvas
 006B222C    lea         ecx,[ebp-10]
 006B222F    mov         dl,2
 006B2231    call        004D7B70
>006B2236    jmp         006B2240
 006B2238    mov         eax,dword ptr [ebp-4]
 006B223B    call        005DB338
 006B2240    mov         eax,dword ptr [ebp-4]
 006B2243    test        byte ptr [eax+1E4],1;TTimerSpeedButton.FTimeBtnState:TTimeBtnState
>006B224A    je          006B22A4
 006B224C    mov         eax,dword ptr [ebp-4]
 006B224F    mov         eax,dword ptr [eax+5C];TTimerSpeedButton.FHeight:Integer
 006B2252    push        eax
 006B2253    lea         eax,[ebp-24]
 006B2256    push        eax
 006B2257    mov         eax,dword ptr [ebp-4]
 006B225A    mov         ecx,dword ptr [eax+58];TTimerSpeedButton.FWidth:Integer
 006B225D    xor         edx,edx
 006B225F    xor         eax,eax
 006B2261    call        Bounds
 006B2266    push        0FD
 006B2268    push        0FD
 006B226A    lea         eax,[ebp-24]
 006B226D    push        eax
 006B226E    call        user32.InflateRect
 006B2273    mov         eax,dword ptr [ebp-4]
 006B2276    cmp         byte ptr [eax+1DA],2;TTimerSpeedButton.FState:TButtonState
>006B227D    jne         006B228C
 006B227F    push        1
 006B2281    push        1
 006B2283    lea         eax,[ebp-24]
 006B2286    push        eax
 006B2287    call        user32.OffsetRect
 006B228C    lea         eax,[ebp-24]
 006B228F    push        eax
 006B2290    mov         eax,dword ptr [ebp-4]
 006B2293    mov         eax,dword ptr [eax+1B8];TTimerSpeedButton.FCanvas:TCanvas
 006B2299    call        TCanvas.GetHandle
 006B229E    push        eax
 006B229F    call        user32.DrawFocusRect
 006B22A4    pop         ebx
 006B22A5    mov         esp,ebp
 006B22A7    pop         ebp
 006B22A8    ret
*}
end;

//006B22D4
{*function sub_006B22D4(?:TEditMask; ?:?):?;
begin
 006B22D4    push        ebx
 006B22D5    push        esi
 006B22D6    push        edi
 006B22D7    push        ecx
 006B22D8    mov         esi,edx
 006B22DA    mov         dword ptr [esp],eax
 006B22DD    mov         bl,1
 006B22DF    xor         edi,edi
 006B22E1    mov         edx,dword ptr [esp]
 006B22E4    mov         eax,edx
 006B22E6    test        eax,eax
>006B22E8    je          006B22EF
 006B22EA    sub         eax,4
 006B22ED    mov         eax,dword ptr [eax]
 006B22EF    cmp         eax,esi
>006B22F1    jl          006B22FD
 006B22F3    mov         eax,esi
 006B22F5    dec         eax
 006B22F6    mov         ecx,dword ptr [esp]
 006B22F9    movzx       edi,word ptr [ecx+eax*2]
 006B22FD    mov         eax,edx
 006B22FF    test        eax,eax
>006B2301    je          006B2308
 006B2303    sub         eax,4
 006B2306    mov         eax,dword ptr [eax]
 006B2308    cmp         eax,esi
>006B230A    jge         006B2313
 006B230C    xor         ebx,ebx
>006B230E    jmp         006B24E2
 006B2313    mov         edx,esi
 006B2315    mov         eax,dword ptr [esp]
 006B2318    call        00424DC0
 006B231D    test        al,al
>006B231F    je          006B2328
 006B2321    mov         bl,1
>006B2323    jmp         006B24E2
 006B2328    cmp         esi,1
>006B232B    jle         006B233E
 006B232D    mov         eax,esi
 006B232F    dec         eax
 006B2330    dec         eax
 006B2331    mov         edx,dword ptr [esp]
 006B2334    cmp         word ptr [edx+eax*2],5C
 006B2339    sete        al
>006B233C    jmp         006B2340
 006B233E    xor         eax,eax
 006B2340    test        al,al
>006B2342    je          006B2356
 006B2344    mov         edx,esi
 006B2346    dec         edx
 006B2347    mov         eax,dword ptr [esp]
 006B234A    call        00424DC0
 006B234F    test        al,al
 006B2351    sete        al
>006B2354    jmp         006B2358
 006B2356    xor         eax,eax
 006B2358    test        al,al
>006B235A    je          006B2394
 006B235C    cmp         esi,2
>006B235F    jle         006B2374
 006B2361    mov         eax,esi
 006B2363    sub         eax,2
 006B2366    dec         eax
 006B2367    mov         edx,dword ptr [esp]
 006B236A    cmp         word ptr [edx+eax*2],5C
 006B236F    sete        al
>006B2372    jmp         006B2376
 006B2374    xor         eax,eax
 006B2376    test        al,al
>006B2378    je          006B238E
 006B237A    mov         edx,esi
 006B237C    sub         edx,2
 006B237F    mov         eax,dword ptr [esp]
 006B2382    call        00424DC0
 006B2387    test        al,al
 006B2389    sete        al
>006B238C    jmp         006B2390
 006B238E    xor         eax,eax
 006B2390    xor         al,1
>006B2392    jmp         006B2396
 006B2394    xor         eax,eax
 006B2396    test        al,al
>006B2398    je          006B23A1
 006B239A    mov         bl,1
>006B239C    jmp         006B24E2
 006B23A1    cmp         di,word ptr ds:[7C2B4A];0x3B gvar_007C2B4A
>006B23A8    jne         006B23BE
 006B23AA    mov         eax,dword ptr [esp]
 006B23AD    test        eax,eax
>006B23AF    je          006B23B6
 006B23B1    sub         eax,4
 006B23B4    mov         eax,dword ptr [eax]
 006B23B6    cmp         eax,4
 006B23B9    setge       al
>006B23BC    jmp         006B23C0
 006B23BE    xor         eax,eax
 006B23C0    test        al,al
>006B23C2    je          006B23DA
 006B23C4    mov         eax,dword ptr [esp]
 006B23C7    test        eax,eax
>006B23C9    je          006B23D0
 006B23CB    sub         eax,4
 006B23CE    mov         eax,dword ptr [eax]
 006B23D0    sub         eax,4
 006B23D3    cmp         esi,eax
 006B23D5    setg        al
>006B23D8    jmp         006B23DC
 006B23DA    xor         eax,eax
 006B23DC    test        al,al
>006B23DE    je          006B23E7
 006B23E0    mov         bl,6
>006B23E2    jmp         006B24E2
 006B23E7    mov         edx,dword ptr [esp]
 006B23EA    mov         eax,edx
 006B23EC    test        eax,eax
>006B23EE    je          006B23F5
 006B23F0    sub         eax,4
 006B23F3    mov         eax,dword ptr [eax]
 006B23F5    cmp         eax,4
>006B23F8    jl          006B240F
 006B23FA    mov         eax,edx
 006B23FC    test        eax,eax
>006B23FE    je          006B2405
 006B2400    sub         eax,4
 006B2403    mov         eax,dword ptr [eax]
 006B2405    sub         eax,4
 006B2408    cmp         esi,eax
 006B240A    setg        al
>006B240D    jmp         006B2411
 006B240F    xor         eax,eax
 006B2411    test        al,al
>006B2413    je          006B242C
 006B2415    mov         eax,esi
 006B2417    dec         eax
 006B2418    dec         eax
 006B2419    mov         edx,dword ptr [esp]
 006B241C    movzx       eax,word ptr [edx+eax*2]
 006B2420    cmp         ax,word ptr ds:[7C2B4A];0x3B gvar_007C2B4A
 006B2427    sete        al
>006B242A    jmp         006B242E
 006B242C    xor         eax,eax
 006B242E    test        al,al
>006B2430    je          006B246A
 006B2432    cmp         esi,2
>006B2435    jle         006B244A
 006B2437    mov         eax,esi
 006B2439    sub         eax,2
 006B243C    dec         eax
 006B243D    mov         edx,dword ptr [esp]
 006B2440    cmp         word ptr [edx+eax*2],5C
 006B2445    sete        al
>006B2448    jmp         006B244C
 006B244A    xor         eax,eax
 006B244C    test        al,al
>006B244E    je          006B2464
 006B2450    mov         edx,esi
 006B2452    sub         edx,2
 006B2455    mov         eax,dword ptr [esp]
 006B2458    call        00424DC0
 006B245D    cmp         al,2
 006B245F    setne       al
>006B2462    jmp         006B2466
 006B2464    xor         eax,eax
 006B2466    xor         al,1
>006B2468    jmp         006B246C
 006B246A    xor         eax,eax
 006B246C    test        al,al
>006B246E    je          006B2474
 006B2470    mov         bl,7
>006B2472    jmp         006B24E2
 006B2474    mov         eax,edi
 006B2476    sub         ax,2F
>006B247A    je          006B2482
 006B247C    sub         ax,0B
>006B2480    jne         006B2486
 006B2482    mov         bl,2
>006B2484    jmp         006B24E2
 006B2486    mov         eax,edi
 006B2488    sub         ax,21
>006B248C    je          006B24A0
 006B248E    sub         ax,1B
>006B2492    je          006B24A0
 006B2494    sub         ax,2
>006B2498    je          006B24A0
 006B249A    sub         ax,1E
>006B249E    jne         006B24A4
 006B24A0    mov         bl,3
>006B24A2    jmp         006B24E2
 006B24A4    mov         eax,edi
 006B24A6    sub         ax,23
>006B24AA    je          006B24C4
 006B24AC    sub         ax,16
>006B24B0    je          006B24C4
 006B24B2    sub         ax,28
>006B24B6    je          006B24C4
 006B24B8    sub         ax,2
>006B24BC    je          006B24C4
 006B24BE    sub         ax,9
>006B24C2    jne         006B24C8
 006B24C4    mov         bl,5
>006B24C6    jmp         006B24E2
 006B24C8    sub         di,30
>006B24CC    je          006B24E0
 006B24CE    sub         di,11
>006B24D2    je          006B24E0
 006B24D4    sub         di,2
>006B24D8    je          006B24E0
 006B24DA    sub         di,9
>006B24DE    jne         006B24E2
 006B24E0    mov         bl,4
 006B24E2    mov         eax,ebx
 006B24E4    pop         edx
 006B24E5    pop         edi
 006B24E6    pop         esi
 006B24E7    pop         ebx
 006B24E8    ret
end;*}

//006B24EC
{*function sub_006B24EC(?:TEditMask; ?:?):?;
begin
 006B24EC    push        ebx
 006B24ED    push        esi
 006B24EE    push        edi
 006B24EF    add         esp,0FFFFFFF8
 006B24F2    mov         dword ptr [esp+4],edx
 006B24F6    mov         dword ptr [esp],eax
 006B24F9    movzx       ebx,byte ptr ds:[6B2590];0x0 gvar_006B2590
 006B2500    mov         eax,dword ptr [esp]
 006B2503    test        eax,eax
>006B2505    je          006B250C
 006B2507    sub         eax,4
 006B250A    mov         eax,dword ptr [eax]
 006B250C    mov         esi,eax
 006B250E    dec         esi
 006B250F    test        esi,esi
>006B2511    jl          006B2572
 006B2513    inc         esi
 006B2514    xor         edi,edi
 006B2516    mov         eax,dword ptr [esp]
 006B2519    movzx       eax,word ptr [eax+edi*2]
 006B251D    cmp         ax,21
>006B2521    jne         006B2528
 006B2523    or          bl,1
>006B2526    jmp         006B256E
 006B2528    cmp         ax,3E
>006B252C    jne         006B2559
 006B252E    mov         edx,dword ptr [esp+4]
 006B2532    dec         edx
 006B2533    cmp         edi,edx
>006B2535    jge         006B2559
 006B2537    and         bl,0FB
 006B253A    test        edi,edi
>006B253C    jle         006B254E
 006B253E    mov         eax,edi
 006B2540    dec         eax
 006B2541    mov         edx,dword ptr [esp]
 006B2544    cmp         word ptr [edx+eax*2],3C
 006B2549    sete        al
>006B254C    jmp         006B2550
 006B254E    xor         eax,eax
 006B2550    test        al,al
>006B2552    jne         006B256E
 006B2554    or          bl,2
>006B2557    jmp         006B256E
 006B2559    cmp         ax,3C
>006B255D    jne         006B256E
 006B255F    mov         eax,dword ptr [esp+4]
 006B2563    dec         eax
 006B2564    cmp         edi,eax
>006B2566    jge         006B256E
 006B2568    and         bl,0FD
 006B256B    or          bl,4
 006B256E    inc         edi
 006B256F    dec         esi
>006B2570    jne         006B2516
 006B2572    mov         edx,dword ptr [esp+4]
 006B2576    mov         eax,dword ptr [esp]
 006B2579    call        006B22D4
 006B257E    cmp         al,1
>006B2580    jne         006B2585
 006B2582    or          bl,8
 006B2585    mov         eax,ebx
 006B2587    pop         ecx
 006B2588    pop         edx
 006B2589    pop         edi
 006B258A    pop         esi
 006B258B    pop         ebx
 006B258C    ret
end;*}

//006B2594
{*function sub_006B2594(?:?):?;
begin
 006B2594    mov         edx,eax
 006B2596    sub         ax,2F
>006B259A    je          006B25AF
 006B259C    sub         ax,0B
>006B25A0    jne         006B25B9
 006B25A2    mov         edx,dword ptr ds:[7C4B88];^gvar_007C7CC8:Pointer
 006B25A8    movzx       edx,word ptr [edx+8]
 006B25AC    mov         eax,edx
 006B25AE    ret
 006B25AF    mov         edx,dword ptr ds:[7C4B88];^gvar_007C7CC8:Pointer
 006B25B5    movzx       edx,word ptr [edx+6]
 006B25B9    mov         eax,edx
 006B25BB    ret
end;*}

//006B25BC
{*procedure sub_006B25BC(?:?; ?:?; ?:?; ?:?);
begin
 006B25BC    push        ebp
 006B25BD    mov         ebp,esp
 006B25BF    push        ecx
 006B25C0    mov         ecx,5
 006B25C5    push        0
 006B25C7    push        0
 006B25C9    dec         ecx
>006B25CA    jne         006B25C5
 006B25CC    push        ecx
 006B25CD    xchg        ecx,dword ptr [ebp-4]
 006B25D0    push        ebx
 006B25D1    push        esi
 006B25D2    push        edi
 006B25D3    mov         word ptr [ebp-6],cx
 006B25D7    mov         ebx,edx
 006B25D9    mov         dword ptr [ebp-4],eax
 006B25DC    xor         eax,eax
 006B25DE    push        ebp
 006B25DF    push        6B27F4
 006B25E4    push        dword ptr fs:[eax]
 006B25E7    mov         dword ptr fs:[eax],esp
 006B25EA    mov         eax,dword ptr [ebp+8]
 006B25ED    mov         edx,ebx
 006B25EF    call        @UStrAsg
 006B25F4    mov         edx,1
 006B25F9    mov         eax,dword ptr [ebp-4]
 006B25FC    call        006B24EC
 006B2601    mov         ebx,eax
 006B2603    test        bl,1
>006B2606    jne         006B26ED
 006B260C    mov         dword ptr [ebp-10],1
 006B2613    mov         eax,dword ptr [ebp-4]
 006B2616    test        eax,eax
>006B2618    je          006B261F
 006B261A    sub         eax,4
 006B261D    mov         eax,dword ptr [eax]
 006B261F    mov         esi,eax
 006B2621    test        esi,esi
>006B2623    jle         006B27D9
 006B2629    mov         ebx,1
 006B262E    mov         edx,ebx
 006B2630    mov         eax,dword ptr [ebp-4]
 006B2633    call        006B22D4
 006B2638    mov         edx,eax
 006B263A    dec         edx
 006B263B    sub         dl,2
>006B263E    jae         006B26AA
 006B2640    mov         edi,dword ptr [ebp+8]
 006B2643    mov         edi,dword ptr [edi]
 006B2645    test        edi,edi
>006B2647    je          006B264E
 006B2649    sub         edi,4
 006B264C    mov         edi,dword ptr [edi]
 006B264E    lea         eax,[ebp-14]
 006B2651    push        eax
 006B2652    mov         ecx,dword ptr [ebp-10]
 006B2655    dec         ecx
 006B2656    mov         eax,dword ptr [ebp+8]
 006B2659    xor         edx,edx
 006B265B    call        00426870
 006B2660    push        dword ptr [ebp-14]
 006B2663    mov         eax,ebx
 006B2665    dec         eax
 006B2666    mov         edx,dword ptr [ebp-4]
 006B2669    movzx       eax,word ptr [edx+eax*2]
 006B266D    call        006B2594
 006B2672    mov         edx,eax
 006B2674    lea         eax,[ebp-18]
 006B2677    call        @UStrFromWChar
 006B267C    push        dword ptr [ebp-18]
 006B267F    lea         eax,[ebp-1C]
 006B2682    push        eax
 006B2683    mov         ecx,edi
 006B2685    sub         ecx,dword ptr [ebp-10]
 006B2688    inc         ecx
 006B2689    mov         edx,dword ptr [ebp-10]
 006B268C    dec         edx
 006B268D    mov         eax,dword ptr [ebp+8]
 006B2690    call        00426870
 006B2695    push        dword ptr [ebp-1C]
 006B2698    mov         eax,dword ptr [ebp+8]
 006B269B    mov         edx,3
 006B26A0    call        @UStrCatN
 006B26A5    inc         dword ptr [ebp-10]
>006B26A8    jmp         006B26E0
 006B26AA    add         al,0FC
 006B26AC    sub         al,2
>006B26AE    jae         006B26E0
 006B26B0    mov         eax,dword ptr [ebp+8]
 006B26B3    mov         eax,dword ptr [eax]
 006B26B5    test        eax,eax
>006B26B7    je          006B26BE
 006B26B9    sub         eax,4
 006B26BC    mov         eax,dword ptr [eax]
 006B26BE    cmp         eax,dword ptr [ebp-10]
>006B26C1    jge         006B26DD
 006B26C3    lea         eax,[ebp-20]
 006B26C6    movzx       edx,word ptr [ebp-6]
 006B26CA    call        @UStrFromWChar
 006B26CF    mov         edx,dword ptr [ebp-20]
 006B26D2    mov         eax,dword ptr [ebp+8]
 006B26D5    call        @UStrCat
 006B26DA    mov         eax,dword ptr [ebp+8]
 006B26DD    inc         dword ptr [ebp-10]
 006B26E0    inc         ebx
 006B26E1    dec         esi
>006B26E2    jne         006B262E
>006B26E8    jmp         006B27D9
 006B26ED    mov         eax,dword ptr [ebp+8]
 006B26F0    mov         eax,dword ptr [eax]
 006B26F2    test        eax,eax
>006B26F4    je          006B26FB
 006B26F6    sub         eax,4
 006B26F9    mov         eax,dword ptr [eax]
 006B26FB    mov         dword ptr [ebp-10],eax
 006B26FE    mov         eax,dword ptr [ebp-4]
 006B2701    test        eax,eax
>006B2703    je          006B270A
 006B2705    sub         eax,4
 006B2708    mov         eax,dword ptr [eax]
 006B270A    mov         esi,eax
 006B270C    dec         esi
 006B270D    test        esi,esi
>006B270F    jl          006B27D9
 006B2715    inc         esi
 006B2716    mov         dword ptr [ebp-0C],0
 006B271D    mov         eax,dword ptr [ebp-4]
 006B2720    test        eax,eax
>006B2722    je          006B2729
 006B2724    sub         eax,4
 006B2727    mov         eax,dword ptr [eax]
 006B2729    mov         ebx,eax
 006B272B    sub         ebx,dword ptr [ebp-0C]
 006B272E    mov         edx,ebx
 006B2730    mov         eax,dword ptr [ebp-4]
 006B2733    call        006B22D4
 006B2738    mov         edx,eax
 006B273A    dec         edx
 006B273B    sub         dl,2
>006B273E    jae         006B27A2
 006B2740    mov         edi,dword ptr [ebp+8]
 006B2743    mov         edi,dword ptr [edi]
 006B2745    test        edi,edi
>006B2747    je          006B274E
 006B2749    sub         edi,4
 006B274C    mov         edi,dword ptr [edi]
 006B274E    lea         eax,[ebp-24]
 006B2751    push        eax
 006B2752    mov         eax,dword ptr [ebp+8]
 006B2755    mov         ecx,dword ptr [ebp-10]
 006B2758    xor         edx,edx
 006B275A    call        00426870
 006B275F    push        dword ptr [ebp-24]
 006B2762    dec         ebx
 006B2763    mov         eax,dword ptr [ebp-4]
 006B2766    movzx       eax,word ptr [eax+ebx*2]
 006B276A    call        006B2594
 006B276F    mov         edx,eax
 006B2771    lea         eax,[ebp-28]
 006B2774    call        @UStrFromWChar
 006B2779    push        dword ptr [ebp-28]
 006B277C    lea         eax,[ebp-2C]
 006B277F    push        eax
 006B2780    mov         ecx,edi
 006B2782    sub         ecx,dword ptr [ebp-10]
 006B2785    mov         eax,dword ptr [ebp+8]
 006B2788    mov         edx,dword ptr [ebp-10]
 006B278B    call        00426870
 006B2790    push        dword ptr [ebp-2C]
 006B2793    mov         eax,dword ptr [ebp+8]
 006B2796    mov         edx,3
 006B279B    call        @UStrCatN
>006B27A0    jmp         006B27CF
 006B27A2    add         al,0FC
 006B27A4    sub         al,2
>006B27A6    jae         006B27CF
 006B27A8    cmp         dword ptr [ebp-10],1
>006B27AC    jge         006B27CC
 006B27AE    lea         eax,[ebp-30]
 006B27B1    movzx       edx,word ptr [ebp-6]
 006B27B5    call        @UStrFromWChar
 006B27BA    mov         edx,dword ptr [ebp-30]
 006B27BD    mov         ecx,dword ptr [ebp+8]
 006B27C0    mov         ecx,dword ptr [ecx]
 006B27C2    mov         eax,dword ptr [ebp+8]
 006B27C5    call        @UStrCat3
>006B27CA    jmp         006B27CF
 006B27CC    dec         dword ptr [ebp-10]
 006B27CF    inc         dword ptr [ebp-0C]
 006B27D2    dec         esi
>006B27D3    jne         006B271D
 006B27D9    xor         eax,eax
 006B27DB    pop         edx
 006B27DC    pop         ecx
 006B27DD    pop         ecx
 006B27DE    mov         dword ptr fs:[eax],edx
 006B27E1    push        6B27FB
 006B27E6    lea         eax,[ebp-30]
 006B27E9    mov         edx,8
 006B27EE    call        @UStrArrayClr
 006B27F3    ret
>006B27F4    jmp         @HandleFinally
>006B27F9    jmp         006B27E6
 006B27FB    pop         edi
 006B27FC    pop         esi
 006B27FD    pop         ebx
 006B27FE    mov         esp,ebp
 006B2800    pop         ebp
 006B2801    ret         4
end;*}

//006B2804
{*function sub_006B2804(?:?):?;
begin
 006B2804    push        ebx
 006B2805    push        esi
 006B2806    push        edi
 006B2807    push        ebp
 006B2808    add         esp,0FFFFFFF4
 006B280B    mov         dword ptr [esp],eax
 006B280E    mov         byte ptr [esp+4],1
 006B2813    mov         edx,dword ptr [esp]
 006B2816    mov         eax,edx
 006B2818    test        eax,eax
>006B281A    je          006B2821
 006B281C    sub         eax,4
 006B281F    mov         eax,dword ptr [eax]
 006B2821    cmp         eax,4
>006B2824    jl          006B28BC
 006B282A    mov         dword ptr [esp+8],0FFFFFFFF
 006B2832    or          edi,0FFFFFFFF
 006B2835    mov         eax,edx
 006B2837    test        eax,eax
>006B2839    je          006B2840
 006B283B    sub         eax,4
 006B283E    mov         eax,dword ptr [eax]
 006B2840    mov         esi,eax
 006B2842    test        edi,edi
>006B2844    jge         006B2889
 006B2846    mov         edx,esi
 006B2848    mov         eax,dword ptr [esp]
 006B284B    call        006B22D4
 006B2850    cmp         al,6
>006B2852    jne         006B2863
 006B2854    cmp         dword ptr [esp+8],0
>006B2859    jge         006B2861
 006B285B    mov         dword ptr [esp+8],esi
>006B285F    jmp         006B2863
 006B2861    mov         edi,esi
 006B2863    dec         esi
 006B2864    test        esi,esi
>006B2866    jg          006B286C
 006B2868    mov         bl,1
>006B286A    jmp         006B2881
 006B286C    mov         ebp,dword ptr [esp]
 006B286F    test        ebp,ebp
>006B2871    je          006B2879
 006B2873    sub         ebp,4
 006B2876    mov         ebp,dword ptr [ebp]
 006B2879    sub         ebp,4
 006B287C    cmp         esi,ebp
 006B287E    setl        bl
 006B2881    test        bl,bl
>006B2883    jne         006B2889
 006B2885    test        edi,edi
>006B2887    jl          006B2846
 006B2889    test        edi,edi
>006B288B    jge         006B2891
 006B288D    mov         edi,dword ptr [esp+8]
 006B2891    test        edi,edi
>006B2893    jle         006B28BC
 006B2895    mov         eax,dword ptr [esp]
 006B2898    test        eax,eax
>006B289A    je          006B28A1
 006B289C    sub         eax,4
 006B289F    mov         eax,dword ptr [eax]
 006B28A1    cmp         eax,edi
>006B28A3    je          006B28BC
 006B28A5    mov         eax,dword ptr [esp]
 006B28A8    movzx       eax,word ptr [eax+edi*2]
 006B28AC    cmp         ax,word ptr ds:[7C2B4C];0x30 gvar_007C2B4C
 006B28B3    sete        al
 006B28B6    xor         al,1
 006B28B8    mov         byte ptr [esp+4],al
 006B28BC    movzx       eax,byte ptr [esp+4]
 006B28C1    add         esp,0C
 006B28C4    pop         ebp
 006B28C5    pop         edi
 006B28C6    pop         esi
 006B28C7    pop         ebx
 006B28C8    ret
end;*}

//006B28CC
{*function sub_006B28CC(?:?):?;
begin
 006B28CC    push        ebx
 006B28CD    push        esi
 006B28CE    push        ecx
 006B28CF    mov         dword ptr [esp],eax
 006B28D2    movzx       esi,word ptr ds:[7C2B48];0x3B005F gvar_007C2B48
 006B28D9    mov         edx,dword ptr [esp]
 006B28DC    mov         eax,edx
 006B28DE    test        eax,eax
>006B28E0    je          006B28E7
 006B28E2    sub         eax,4
 006B28E5    mov         eax,dword ptr [eax]
 006B28E7    cmp         eax,4
>006B28EA    jl          006B295D
 006B28EC    mov         ebx,edx
 006B28EE    test        ebx,ebx
>006B28F0    je          006B28F7
 006B28F2    sub         ebx,4
 006B28F5    mov         ebx,dword ptr [ebx]
 006B28F7    mov         edx,ebx
 006B28F9    dec         edx
 006B28FA    mov         eax,dword ptr [esp]
 006B28FD    call        006B22D4
 006B2902    cmp         al,6
>006B2904    jne         006B295D
 006B2906    mov         ebx,dword ptr [esp]
 006B2909    test        ebx,ebx
>006B290B    je          006B2912
 006B290D    sub         ebx,4
 006B2910    mov         ebx,dword ptr [ebx]
 006B2912    mov         edx,ebx
 006B2914    sub         edx,2
 006B2917    mov         eax,dword ptr [esp]
 006B291A    call        006B22D4
 006B291F    cmp         al,6
>006B2921    jne         006B2927
 006B2923    mov         al,1
>006B2925    jmp         006B2945
 006B2927    mov         ebx,dword ptr [esp]
 006B292A    test        ebx,ebx
>006B292C    je          006B2933
 006B292E    sub         ebx,4
 006B2931    mov         ebx,dword ptr [ebx]
 006B2933    mov         edx,ebx
 006B2935    sub         edx,3
 006B2938    mov         eax,dword ptr [esp]
 006B293B    call        006B22D4
 006B2940    cmp         al,6
 006B2942    sete        al
 006B2945    test        al,al
>006B2947    je          006B295D
 006B2949    mov         eax,dword ptr [esp]
 006B294C    test        eax,eax
>006B294E    je          006B2955
 006B2950    sub         eax,4
 006B2953    mov         eax,dword ptr [eax]
 006B2955    dec         eax
 006B2956    mov         edx,dword ptr [esp]
 006B2959    movzx       esi,word ptr [edx+eax*2]
 006B295D    mov         eax,esi
 006B295F    pop         edx
 006B2960    pop         esi
 006B2961    pop         ebx
 006B2962    ret
end;*}

//006B2964
{*procedure sub_006B2964(?:?; ?:?; ?:?);
begin
 006B2964    push        ebp
 006B2965    mov         ebp,esp
 006B2967    add         esp,0FFFFFFF8
 006B296A    push        ebx
 006B296B    push        esi
 006B296C    push        edi
 006B296D    xor         ebx,ebx
 006B296F    mov         dword ptr [ebp-8],ebx
 006B2972    mov         edi,ecx
 006B2974    mov         ebx,edx
 006B2976    mov         dword ptr [ebp-4],eax
 006B2979    xor         eax,eax
 006B297B    push        ebp
 006B297C    push        6B29E3
 006B2981    push        dword ptr fs:[eax]
 006B2984    mov         dword ptr fs:[eax],esp
 006B2987    mov         eax,edi
 006B2989    call        @UStrClr
 006B298E    mov         esi,ebx
 006B2990    test        esi,esi
>006B2992    jle         006B29CD
 006B2994    mov         ebx,1
 006B2999    mov         edx,ebx
 006B299B    mov         eax,dword ptr [ebp-4]
 006B299E    call        006B22D4
 006B29A3    sub         al,3
>006B29A5    je          006B29C9
 006B29A7    add         al,0FD
 006B29A9    sub         al,2
>006B29AB    jb          006B29C9
 006B29AD    lea         eax,[ebp-8]
 006B29B0    mov         edx,ebx
 006B29B2    dec         edx
 006B29B3    mov         ecx,dword ptr [ebp-4]
 006B29B6    movzx       edx,word ptr [ecx+edx*2]
 006B29BA    call        @UStrFromWChar
 006B29BF    mov         edx,dword ptr [ebp-8]
 006B29C2    mov         eax,edi
 006B29C4    call        @UStrCat
 006B29C9    inc         ebx
 006B29CA    dec         esi
>006B29CB    jne         006B2999
 006B29CD    xor         eax,eax
 006B29CF    pop         edx
 006B29D0    pop         ecx
 006B29D1    pop         ecx
 006B29D2    mov         dword ptr fs:[eax],edx
 006B29D5    push        6B29EA
 006B29DA    lea         eax,[ebp-8]
 006B29DD    call        @UStrClr
 006B29E2    ret
>006B29E3    jmp         @HandleFinally
>006B29E8    jmp         006B29DA
 006B29EA    pop         edi
 006B29EB    pop         esi
 006B29EC    pop         ebx
 006B29ED    pop         ecx
 006B29EE    pop         ecx
 006B29EF    pop         ebp
 006B29F0    ret
end;*}

//006B29F4
{*function sub_006B29F4(?:TEditMask; ?:?):?;
begin
 006B29F4    push        ebp
 006B29F5    mov         ebp,esp
 006B29F7    push        0
 006B29F9    push        ebx
 006B29FA    push        esi
 006B29FB    mov         esi,edx
 006B29FD    mov         ebx,eax
 006B29FF    xor         eax,eax
 006B2A01    push        ebp
 006B2A02    push        6B2A3D
 006B2A07    push        dword ptr fs:[eax]
 006B2A0A    mov         dword ptr fs:[eax],esp
 006B2A0D    lea         ecx,[ebp-4]
 006B2A10    mov         edx,esi
 006B2A12    mov         eax,ebx
 006B2A14    call        006B2964
 006B2A19    mov         eax,dword ptr [ebp-4]
 006B2A1C    test        eax,eax
>006B2A1E    je          006B2A25
 006B2A20    sub         eax,4
 006B2A23    mov         eax,dword ptr [eax]
 006B2A25    mov         ebx,eax
 006B2A27    xor         eax,eax
 006B2A29    pop         edx
 006B2A2A    pop         ecx
 006B2A2B    pop         ecx
 006B2A2C    mov         dword ptr fs:[eax],edx
 006B2A2F    push        6B2A44
 006B2A34    lea         eax,[ebp-4]
 006B2A37    call        @UStrClr
 006B2A3C    ret
>006B2A3D    jmp         @HandleFinally
>006B2A42    jmp         006B2A34
 006B2A44    mov         eax,ebx
 006B2A46    pop         esi
 006B2A47    pop         ebx
 006B2A48    pop         ecx
 006B2A49    pop         ebp
 006B2A4A    ret
end;*}

//006B2A4C
{*function sub_006B2A4C(?:TEditMask; ?:Integer):?;
begin
 006B2A4C    push        ebx
 006B2A4D    push        esi
 006B2A4E    push        edi
 006B2A4F    push        ebp
 006B2A50    push        ecx
 006B2A51    mov         ebx,edx
 006B2A53    mov         dword ptr [esp],eax
 006B2A56    mov         eax,dword ptr [esp]
 006B2A59    test        eax,eax
>006B2A5B    je          006B2A62
 006B2A5D    sub         eax,4
 006B2A60    mov         eax,dword ptr [eax]
 006B2A62    mov         edx,eax
 006B2A64    mov         eax,dword ptr [esp]
 006B2A67    call        006B29F4
 006B2A6C    cmp         eax,ebx
>006B2A6E    jge         006B2A75
 006B2A70    or          edi,0FFFFFFFF
>006B2A73    jmp         006B2AA8
 006B2A75    xor         edi,edi
 006B2A77    mov         ebp,ebx
 006B2A79    mov         eax,dword ptr [esp]
 006B2A7C    test        eax,eax
>006B2A7E    je          006B2A85
 006B2A80    sub         eax,4
 006B2A83    mov         eax,dword ptr [eax]
 006B2A85    mov         ebx,eax
 006B2A87    test        ebx,ebx
>006B2A89    jle         006B2AA8
 006B2A8B    mov         esi,1
 006B2A90    inc         edi
 006B2A91    mov         edx,esi
 006B2A93    mov         eax,dword ptr [esp]
 006B2A96    call        006B22D4
 006B2A9B    cmp         al,3
>006B2A9D    je          006B2AA4
 006B2A9F    dec         ebp
 006B2AA0    test        ebp,ebp
>006B2AA2    jl          006B2AA8
 006B2AA4    inc         esi
 006B2AA5    dec         ebx
>006B2AA6    jne         006B2A90
 006B2AA8    mov         eax,edi
 006B2AAA    pop         edx
 006B2AAB    pop         ebp
 006B2AAC    pop         edi
 006B2AAD    pop         esi
 006B2AAE    pop         ebx
 006B2AAF    ret
end;*}

//006B2AB0
{*function sub_006B2AB0(?:TEditMask):?;
begin
 006B2AB0    push        ebx
 006B2AB1    push        esi
 006B2AB2    push        edi
 006B2AB3    mov         esi,eax
 006B2AB5    xor         ebx,ebx
 006B2AB7    mov         eax,esi
 006B2AB9    call        006B2A4C
 006B2ABE    mov         edi,eax
 006B2AC0    test        edi,edi
>006B2AC2    jl          006B2AD3
 006B2AC4    mov         edx,edi
 006B2AC6    mov         eax,esi
 006B2AC8    call        006B22D4
 006B2ACD    dec         eax
 006B2ACE    sub         al,2
 006B2AD0    setb        bl
 006B2AD3    mov         eax,ebx
 006B2AD5    pop         edi
 006B2AD6    pop         esi
 006B2AD7    pop         ebx
 006B2AD8    ret
end;*}

//006B2ADC
{*procedure sub_006B2ADC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 006B2ADC    push        ebp
 006B2ADD    mov         ebp,esp
 006B2ADF    push        ecx
 006B2AE0    mov         ecx,4
 006B2AE5    push        0
 006B2AE7    push        0
 006B2AE9    dec         ecx
>006B2AEA    jne         006B2AE5
 006B2AEC    push        ecx
 006B2AED    xchg        ecx,dword ptr [ebp-4]
 006B2AF0    push        ebx
 006B2AF1    push        esi
 006B2AF2    push        edi
 006B2AF3    mov         edi,ecx
 006B2AF5    mov         dword ptr [ebp-10],edx
 006B2AF8    mov         dword ptr [ebp-0C],eax
 006B2AFB    mov         ebx,dword ptr [ebp+8]
 006B2AFE    mov         esi,dword ptr [ebp+14]
 006B2B01    xor         eax,eax
 006B2B03    push        ebp
 006B2B04    push        6B2C73
 006B2B09    push        dword ptr fs:[eax]
 006B2B0C    mov         dword ptr fs:[eax],esp
 006B2B0F    mov         eax,esi
 006B2B11    sub         eax,edi
 006B2B13    cmp         eax,dword ptr [ebp+10]
>006B2B16    jge         006B2B9E
 006B2B1C    mov         edx,1
 006B2B21    mov         eax,dword ptr [ebp-0C]
 006B2B24    call        006B24EC
 006B2B29    mov         byte ptr [ebp-11],al
 006B2B2C    mov         eax,esi
 006B2B2E    dec         eax
 006B2B2F    mov         dword ptr [ebp-18],eax
 006B2B32    test        byte ptr [ebp-11],1
>006B2B36    je          006B2B3E
 006B2B38    mov         eax,edi
 006B2B3A    dec         eax
 006B2B3B    mov         dword ptr [ebp-18],eax
 006B2B3E    push        ebx
 006B2B3F    lea         eax,[ebp-10]
 006B2B42    mov         ecx,dword ptr [ebp-18]
 006B2B45    xor         edx,edx
 006B2B47    call        00426870
 006B2B4C    sub         esi,edi
 006B2B4E    mov         eax,dword ptr [ebp+10]
 006B2B51    sub         eax,esi
 006B2B53    test        eax,eax
>006B2B55    jle         006B2B72
 006B2B57    mov         esi,eax
 006B2B59    lea         eax,[ebp-1C]
 006B2B5C    movzx       edx,word ptr [ebp+0C]
 006B2B60    call        @UStrFromWChar
 006B2B65    mov         edx,dword ptr [ebp-1C]
 006B2B68    mov         eax,ebx
 006B2B6A    call        @UStrCat
 006B2B6F    dec         esi
>006B2B70    jne         006B2B59
 006B2B72    mov         esi,dword ptr [ebp-10]
 006B2B75    test        esi,esi
>006B2B77    je          006B2B7E
 006B2B79    sub         esi,4
 006B2B7C    mov         esi,dword ptr [esi]
 006B2B7E    lea         eax,[ebp-20]
 006B2B81    push        eax
 006B2B82    lea         eax,[ebp-10]
 006B2B85    mov         ecx,esi
 006B2B87    mov         edx,dword ptr [ebp-18]
 006B2B8A    call        00426870
 006B2B8F    mov         edx,dword ptr [ebp-20]
 006B2B92    mov         eax,ebx
 006B2B94    call        @UStrCat
>006B2B99    jmp         006B2C4B
 006B2B9E    mov         eax,esi
 006B2BA0    sub         eax,edi
 006B2BA2    cmp         eax,dword ptr [ebp+10]
>006B2BA5    jle         006B2C41
 006B2BAB    mov         edx,1
 006B2BB0    mov         eax,dword ptr [ebp-0C]
 006B2BB3    call        006B24EC
 006B2BB8    mov         byte ptr [ebp-11],al
 006B2BBB    test        byte ptr [ebp-11],1
>006B2BBF    je          006B2C01
 006B2BC1    lea         eax,[ebp-4]
 006B2BC4    push        eax
 006B2BC5    mov         ecx,edi
 006B2BC7    dec         ecx
 006B2BC8    lea         eax,[ebp-10]
 006B2BCB    xor         edx,edx
 006B2BCD    call        00426870
 006B2BD2    mov         edi,dword ptr [ebp-10]
 006B2BD5    test        edi,edi
>006B2BD7    je          006B2BDE
 006B2BD9    sub         edi,4
 006B2BDC    mov         edi,dword ptr [edi]
 006B2BDE    lea         eax,[ebp-24]
 006B2BE1    push        eax
 006B2BE2    mov         edx,esi
 006B2BE4    dec         edx
 006B2BE5    sub         edx,dword ptr [ebp+10]
 006B2BE8    lea         eax,[ebp-10]
 006B2BEB    mov         ecx,edi
 006B2BED    call        00426870
 006B2BF2    mov         ecx,dword ptr [ebp-24]
 006B2BF5    mov         eax,ebx
 006B2BF7    mov         edx,dword ptr [ebp-4]
 006B2BFA    call        @UStrCat3
>006B2BFF    jmp         006B2C4B
 006B2C01    lea         eax,[ebp-8]
 006B2C04    push        eax
 006B2C05    mov         ecx,edi
 006B2C07    add         ecx,dword ptr [ebp+10]
 006B2C0A    dec         ecx
 006B2C0B    lea         eax,[ebp-10]
 006B2C0E    xor         edx,edx
 006B2C10    call        00426870
 006B2C15    mov         edi,dword ptr [ebp-10]
 006B2C18    test        edi,edi
>006B2C1A    je          006B2C21
 006B2C1C    sub         edi,4
 006B2C1F    mov         edi,dword ptr [edi]
 006B2C21    lea         eax,[ebp-28]
 006B2C24    push        eax
 006B2C25    mov         edx,esi
 006B2C27    dec         edx
 006B2C28    lea         eax,[ebp-10]
 006B2C2B    mov         ecx,edi
 006B2C2D    call        00426870
 006B2C32    mov         ecx,dword ptr [ebp-28]
 006B2C35    mov         eax,ebx
 006B2C37    mov         edx,dword ptr [ebp-8]
 006B2C3A    call        @UStrCat3
>006B2C3F    jmp         006B2C4B
 006B2C41    mov         eax,ebx
 006B2C43    mov         edx,dword ptr [ebp-10]
 006B2C46    call        @UStrAsg
 006B2C4B    xor         eax,eax
 006B2C4D    pop         edx
 006B2C4E    pop         ecx
 006B2C4F    pop         ecx
 006B2C50    mov         dword ptr fs:[eax],edx
 006B2C53    push        6B2C7A
 006B2C58    lea         eax,[ebp-28]
 006B2C5B    mov         edx,4
 006B2C60    call        @UStrArrayClr
 006B2C65    lea         eax,[ebp-8]
 006B2C68    mov         edx,2
 006B2C6D    call        @UStrArrayClr
 006B2C72    ret
>006B2C73    jmp         @HandleFinally
>006B2C78    jmp         006B2C58
 006B2C7A    pop         edi
 006B2C7B    pop         esi
 006B2C7C    pop         ebx
 006B2C7D    mov         esp,ebp
 006B2C7F    pop         ebp
 006B2C80    ret         10
end;*}

//006B2C84
{*procedure sub_006B2C84(?:?; ?:?; ?:?; ?:?);
begin
 006B2C84    push        ebp
 006B2C85    mov         ebp,esp
 006B2C87    add         esp,0FFFFFFD0
 006B2C8A    push        ebx
 006B2C8B    push        esi
 006B2C8C    push        edi
 006B2C8D    xor         ebx,ebx
 006B2C8F    mov         dword ptr [ebp-28],ebx
 006B2C92    mov         dword ptr [ebp-2C],ebx
 006B2C95    mov         dword ptr [ebp-30],ebx
 006B2C98    mov         dword ptr [ebp-24],ebx
 006B2C9B    mov         dword ptr [ebp-20],ebx
 006B2C9E    mov         dword ptr [ebp-1C],ebx
 006B2CA1    mov         word ptr [ebp-6],cx
 006B2CA5    mov         ebx,edx
 006B2CA7    mov         dword ptr [ebp-4],eax
 006B2CAA    xor         eax,eax
 006B2CAC    push        ebp
 006B2CAD    push        6B2ED5
 006B2CB2    push        dword ptr fs:[eax]
 006B2CB5    mov         dword ptr fs:[eax],esp
 006B2CB8    xor         eax,eax
 006B2CBA    mov         dword ptr [ebp-0C],eax
 006B2CBD    mov         eax,dword ptr [ebp+8]
 006B2CC0    mov         edx,ebx
 006B2CC2    call        @UStrAsg
 006B2CC7    mov         eax,dword ptr [ebp-4]
 006B2CCA    test        eax,eax
>006B2CCC    je          006B2CD3
 006B2CCE    sub         eax,4
 006B2CD1    mov         eax,dword ptr [eax]
 006B2CD3    mov         edi,eax
 006B2CD5    test        edi,edi
>006B2CD7    jle         006B2DD5
 006B2CDD    mov         dword ptr [ebp-18],1
 006B2CE4    mov         edx,dword ptr [ebp-18]
 006B2CE7    mov         eax,dword ptr [ebp-4]
 006B2CEA    call        006B22D4
 006B2CEF    dec         eax
 006B2CF0    sub         al,2
>006B2CF2    jae         006B2DCB
 006B2CF8    mov         edx,dword ptr [ebp-18]
 006B2CFB    mov         eax,dword ptr [ebp-4]
 006B2CFE    call        006B29F4
 006B2D03    mov         dword ptr [ebp-14],eax
 006B2D06    mov         ecx,dword ptr [ebp+8]
 006B2D09    mov         ecx,dword ptr [ecx]
 006B2D0B    mov         eax,ecx
 006B2D0D    test        eax,eax
>006B2D0F    je          006B2D16
 006B2D11    sub         eax,4
 006B2D14    mov         eax,dword ptr [eax]
 006B2D16    inc         eax
 006B2D17    mov         dword ptr [ebp-10],eax
 006B2D1A    mov         edx,dword ptr [ebp-0C]
 006B2D1D    mov         eax,ecx
 006B2D1F    test        eax,eax
>006B2D21    je          006B2D28
 006B2D23    sub         eax,4
 006B2D26    mov         eax,dword ptr [eax]
 006B2D28    mov         ebx,edx
 006B2D2A    mov         esi,eax
 006B2D2C    dec         esi
 006B2D2D    sub         esi,ebx
>006B2D2F    jl          006B2D59
 006B2D31    inc         esi
 006B2D32    mov         eax,dword ptr [ebp-18]
 006B2D35    dec         eax
 006B2D36    mov         edx,dword ptr [ebp-4]
 006B2D39    movzx       eax,word ptr [edx+eax*2]
 006B2D3D    call        006B2594
 006B2D42    mov         edx,dword ptr [ebp+8]
 006B2D45    mov         edx,dword ptr [edx]
 006B2D47    cmp         ax,word ptr [edx+ebx*2]
>006B2D4B    jne         006B2D55
 006B2D4D    lea         eax,[ebx+1]
 006B2D50    mov         dword ptr [ebp-10],eax
>006B2D53    jmp         006B2D59
 006B2D55    inc         ebx
 006B2D56    dec         esi
>006B2D57    jne         006B2D32
 006B2D59    mov         eax,dword ptr [ebp+8]
 006B2D5C    mov         eax,dword ptr [eax]
 006B2D5E    test        eax,eax
>006B2D60    je          006B2D67
 006B2D62    sub         eax,4
 006B2D65    mov         eax,dword ptr [eax]
 006B2D67    cmp         eax,dword ptr [ebp-10]
>006B2D6A    jge         006B2D94
 006B2D6C    mov         eax,dword ptr [ebp-18]
 006B2D6F    dec         eax
 006B2D70    mov         edx,dword ptr [ebp-4]
 006B2D73    movzx       eax,word ptr [edx+eax*2]
 006B2D77    call        006B2594
 006B2D7C    mov         edx,eax
 006B2D7E    lea         eax,[ebp-1C]
 006B2D81    call        @UStrFromWChar
 006B2D86    mov         edx,dword ptr [ebp-1C]
 006B2D89    mov         eax,dword ptr [ebp+8]
 006B2D8C    call        @UStrCat
 006B2D91    mov         eax,dword ptr [ebp+8]
 006B2D94    mov         eax,dword ptr [ebp-10]
 006B2D97    push        eax
 006B2D98    mov         ebx,dword ptr [ebp-0C]
 006B2D9B    inc         ebx
 006B2D9C    mov         eax,dword ptr [ebp-14]
 006B2D9F    sub         eax,ebx
 006B2DA1    push        eax
 006B2DA2    movzx       eax,word ptr [ebp-6]
 006B2DA6    push        eax
 006B2DA7    lea         eax,[ebp-20]
 006B2DAA    push        eax
 006B2DAB    mov         ecx,ebx
 006B2DAD    mov         edx,dword ptr [ebp+8]
 006B2DB0    mov         edx,dword ptr [edx]
 006B2DB2    mov         eax,dword ptr [ebp-4]
 006B2DB5    call        006B2ADC
 006B2DBA    mov         edx,dword ptr [ebp-20]
 006B2DBD    mov         eax,dword ptr [ebp+8]
 006B2DC0    call        @UStrAsg
 006B2DC5    mov         eax,dword ptr [ebp-14]
 006B2DC8    mov         dword ptr [ebp-0C],eax
 006B2DCB    inc         dword ptr [ebp-18]
 006B2DCE    dec         edi
>006B2DCF    jne         006B2CE4
 006B2DD5    mov         eax,dword ptr [ebp-4]
 006B2DD8    test        eax,eax
>006B2DDA    je          006B2DE1
 006B2DDC    sub         eax,4
 006B2DDF    mov         eax,dword ptr [eax]
 006B2DE1    mov         edx,eax
 006B2DE3    mov         eax,dword ptr [ebp-4]
 006B2DE6    call        006B29F4
 006B2DEB    mov         ebx,eax
 006B2DED    mov         edx,dword ptr [ebp+8]
 006B2DF0    mov         edx,dword ptr [edx]
 006B2DF2    mov         eax,edx
 006B2DF4    test        eax,eax
>006B2DF6    je          006B2DFD
 006B2DF8    sub         eax,4
 006B2DFB    mov         eax,dword ptr [eax]
 006B2DFD    cmp         ebx,eax
>006B2DFF    je          006B2E37
 006B2E01    mov         esi,edx
 006B2E03    test        esi,esi
>006B2E05    je          006B2E0C
 006B2E07    sub         esi,4
 006B2E0A    mov         esi,dword ptr [esi]
 006B2E0C    inc         esi
 006B2E0D    push        esi
 006B2E0E    sub         ebx,dword ptr [ebp-0C]
 006B2E11    push        ebx
 006B2E12    movzx       eax,word ptr [ebp-6]
 006B2E16    push        eax
 006B2E17    lea         eax,[ebp-24]
 006B2E1A    push        eax
 006B2E1B    mov         ecx,dword ptr [ebp-0C]
 006B2E1E    inc         ecx
 006B2E1F    mov         edx,dword ptr [ebp+8]
 006B2E22    mov         edx,dword ptr [edx]
 006B2E24    mov         eax,dword ptr [ebp-4]
 006B2E27    call        006B2ADC
 006B2E2C    mov         edx,dword ptr [ebp-24]
 006B2E2F    mov         eax,dword ptr [ebp+8]
 006B2E32    call        @UStrAsg
 006B2E37    mov         eax,dword ptr [ebp+8]
 006B2E3A    mov         eax,dword ptr [eax]
 006B2E3C    test        eax,eax
>006B2E3E    je          006B2E45
 006B2E40    sub         eax,4
 006B2E43    mov         eax,dword ptr [eax]
 006B2E45    mov         edi,eax
 006B2E47    dec         edi
 006B2E48    test        edi,edi
>006B2E4A    jl          006B2EBA
 006B2E4C    inc         edi
 006B2E4D    mov         dword ptr [ebp-14],0
 006B2E54    mov         eax,dword ptr [ebp+8]
 006B2E57    mov         eax,dword ptr [eax]
 006B2E59    mov         edx,dword ptr [ebp-14]
 006B2E5C    cmp         word ptr [eax+edx*2],20
>006B2E61    jne         006B2EB4
 006B2E63    mov         edx,dword ptr [ebp-14]
 006B2E66    mov         eax,dword ptr [ebp-4]
 006B2E69    call        006B2AB0
 006B2E6E    test        al,al
>006B2E70    jne         006B2EB4
 006B2E72    lea         eax,[ebp-28]
 006B2E75    push        eax
 006B2E76    mov         eax,dword ptr [ebp+8]
 006B2E79    mov         ecx,dword ptr [ebp-14]
 006B2E7C    xor         edx,edx
 006B2E7E    call        00426870
 006B2E83    push        dword ptr [ebp-28]
 006B2E86    lea         eax,[ebp-2C]
 006B2E89    movzx       edx,word ptr [ebp-6]
 006B2E8D    call        @UStrFromWChar
 006B2E92    push        dword ptr [ebp-2C]
 006B2E95    lea         ecx,[ebp-30]
 006B2E98    mov         edx,dword ptr [ebp-14]
 006B2E9B    inc         edx
 006B2E9C    mov         eax,dword ptr [ebp+8]
 006B2E9F    call        TStringHelper.Substring
 006B2EA4    push        dword ptr [ebp-30]
 006B2EA7    mov         eax,dword ptr [ebp+8]
 006B2EAA    mov         edx,3
 006B2EAF    call        @UStrCatN
 006B2EB4    inc         dword ptr [ebp-14]
 006B2EB7    dec         edi
>006B2EB8    jne         006B2E54
 006B2EBA    xor         eax,eax
 006B2EBC    pop         edx
 006B2EBD    pop         ecx
 006B2EBE    pop         ecx
 006B2EBF    mov         dword ptr fs:[eax],edx
 006B2EC2    push        6B2EDC
 006B2EC7    lea         eax,[ebp-30]
 006B2ECA    mov         edx,6
 006B2ECF    call        @UStrArrayClr
 006B2ED4    ret
>006B2ED5    jmp         @HandleFinally
>006B2EDA    jmp         006B2EC7
 006B2EDC    pop         edi
 006B2EDD    pop         esi
 006B2EDE    pop         ebx
 006B2EDF    mov         esp,ebp
 006B2EE1    pop         ebp
 006B2EE2    ret         4
end;*}

//006B40E4
constructor TCustomMaskEdit.Create;
begin
{*
 006B40E4    push        ebx
 006B40E5    push        esi
 006B40E6    test        dl,dl
>006B40E8    je          006B40F2
 006B40EA    add         esp,0FFFFFFF0
 006B40ED    call        @ClassCreate
 006B40F2    mov         ebx,edx
 006B40F4    mov         esi,eax
 006B40F6    xor         edx,edx
 006B40F8    mov         eax,esi
 006B40FA    call        TCustomEdit.Create
 006B40FF    movzx       eax,byte ptr ds:[6B4138]
 006B4106    mov         byte ptr [esi+2D5],al
 006B410C    mov         eax,[007C4E8C];^gvar_007C2B48
 006B4111    movzx       eax,word ptr [eax]
 006B4114    mov         word ptr [esi+2CC],ax
 006B411B    mov         eax,esi
 006B411D    test        bl,bl
>006B411F    je          006B4130
 006B4121    call        @AfterConstruction
 006B4126    pop         dword ptr fs:[0]
 006B412D    add         esp,0C
 006B4130    mov         eax,esi
 006B4132    pop         esi
 006B4133    pop         ebx
 006B4134    ret
*}
end;

//006B413C
{*procedure TCustomMaskEdit.sub_004EE9E0(?:?; ?:?);
begin
 006B413C    push        ebx
 006B413D    push        esi
 006B413E    push        ecx
 006B413F    mov         word ptr [esp],cx
 006B4143    mov         esi,edx
 006B4145    mov         ebx,eax
 006B4147    cmp         byte ptr [ebx+2E4],0;TCustomMaskEdit.FSettingCursor:Boolean
>006B414E    jne         006B415D
 006B4150    mov         edx,esi
 006B4152    movzx       ecx,word ptr [esp]
 006B4156    mov         eax,ebx
 006B4158    call        TCustomEdit.sub_004EE9E0
 006B415D    mov         eax,ebx
 006B415F    call        TCustomMaskEdit.GetMasked
 006B4164    test        al,al
>006B4166    je          006B4219
 006B416C    cmp         word ptr [esi],0
>006B4170    je          006B4219
 006B4176    test        byte ptr [esp],2
>006B417A    jne         006B4219
 006B4180    cmp         word ptr [esi],25
>006B4184    je          006B418C
 006B4186    cmp         word ptr [esi],27
>006B418A    jne         006B41AD
 006B418C    movzx       edx,word ptr [esi]
 006B418F    movzx       ecx,word ptr [esp]
 006B4193    mov         eax,ebx
 006B4195    call        006B4E98
 006B419A    test        byte ptr [esp],1
>006B419E    jne         006B4219
 006B41A0    test        byte ptr [esp],4
>006B41A4    jne         006B4219
 006B41A6    mov         word ptr [esi],0
>006B41AB    jmp         006B4219
 006B41AD    cmp         word ptr [esi],26
>006B41B1    je          006B41B9
 006B41B3    cmp         word ptr [esi],28
>006B41B7    jne         006B41C0
 006B41B9    mov         word ptr [esi],0
>006B41BE    jmp         006B4219
 006B41C0    cmp         word ptr [esi],24
>006B41C4    je          006B41CC
 006B41C6    cmp         word ptr [esi],23
>006B41CA    jne         006B41E1
 006B41CC    movzx       edx,word ptr [esi]
 006B41CF    movzx       ecx,word ptr [esp]
 006B41D3    mov         eax,ebx
 006B41D5    call        006B513C
 006B41DA    mov         word ptr [esi],0
>006B41DF    jmp         006B4219
 006B41E1    cmp         word ptr [esi],2E
>006B41E5    jne         006B41ED
 006B41E7    test        byte ptr [esp],1
>006B41EB    je          006B41F3
 006B41ED    cmp         word ptr [esi],8
>006B41F1    jne         006B4212
 006B41F3    mov         eax,ebx
 006B41F5    mov         edx,dword ptr [eax]
 006B41F7    call        dword ptr [edx+12C];TCustomMaskEdit.sub_006B4C94
 006B41FD    test        al,al
>006B41FF    je          006B420B
 006B4201    movzx       edx,word ptr [esi]
 006B4204    mov         eax,ebx
 006B4206    call        TCustomMaskEdit.DeleteKeys
 006B420B    mov         word ptr [esi],0
>006B4210    jmp         006B4219
 006B4212    mov         eax,ebx
 006B4214    call        TCustomMaskEdit.CheckCursor
 006B4219    pop         edx
 006B421A    pop         esi
 006B421B    pop         ebx
 006B421C    ret
end;*}

//006B4220
{*procedure TCustomMaskEdit.sub_004EEB14(?:?; ?:?);
begin
 006B4220    push        ebx
 006B4221    push        esi
 006B4222    push        ecx
 006B4223    mov         word ptr [esp],cx
 006B4227    mov         esi,edx
 006B4229    mov         ebx,eax
 006B422B    cmp         byte ptr [ebx+2E4],0;TCustomMaskEdit.FSettingCursor:Boolean
>006B4232    jne         006B4241
 006B4234    mov         edx,esi
 006B4236    movzx       ecx,word ptr [esp]
 006B423A    mov         eax,ebx
 006B423C    call        TWinControl.sub_004EEB14
 006B4241    mov         eax,ebx
 006B4243    call        TCustomMaskEdit.GetMasked
 006B4248    test        al,al
>006B424A    je          006B426B
 006B424C    cmp         word ptr [esi],0
>006B4250    je          006B426B
 006B4252    cmp         word ptr [esi],25
>006B4256    je          006B425E
 006B4258    cmp         word ptr [esi],27
>006B425C    jne         006B426B
 006B425E    test        byte ptr [esp],4
>006B4262    je          006B426B
 006B4264    mov         eax,ebx
 006B4266    call        TCustomMaskEdit.CheckCursor
 006B426B    pop         edx
 006B426C    pop         esi
 006B426D    pop         ebx
 006B426E    ret
end;*}

//006B4270
{*procedure TCustomMaskEdit.sub_004EEC30(?:?);
begin
 006B4270    push        ebx
 006B4271    push        esi
 006B4272    push        ecx
 006B4273    mov         esi,edx
 006B4275    mov         ebx,eax
 006B4277    mov         edx,esi
 006B4279    mov         eax,ebx
 006B427B    call        TCustomEdit.sub_004EEC30
 006B4280    mov         eax,ebx
 006B4282    call        TCustomMaskEdit.GetMasked
 006B4287    test        al,al
>006B4289    je          006B42C0
 006B428B    cmp         word ptr [esi],0
>006B428F    je          006B42C0
 006B4291    mov         eax,6B42C4
 006B4296    mov         dword ptr [esp],eax
 006B4299    movzx       eax,word ptr [esi]
 006B429C    mov         edx,dword ptr [esp]
 006B429F    cmp         ax,0FF
>006B42A3    ja          006B42AB
 006B42A5    movzx       eax,ax
 006B42A8    bt          dword ptr [edx],eax
 006B42AB    setb        al
 006B42AE    test        al,al
>006B42B0    jne         006B42C0
 006B42B2    mov         edx,esi
 006B42B4    mov         eax,ebx
 006B42B6    call        006B4CC0
 006B42BB    mov         word ptr [esi],0
 006B42C0    pop         edx
 006B42C1    pop         esi
 006B42C2    pop         ebx
 006B42C3    ret
end;*}

//006B42E4
{*procedure TCustomMaskEdit.WMLButtonDown(?:?);
begin
 006B42E4    push        ebx
 006B42E5    push        esi
 006B42E6    mov         esi,edx
 006B42E8    mov         ebx,eax
 006B42EA    mov         edx,esi
 006B42EC    mov         eax,ebx
 006B42EE    call        TControl.WMLButtonDown
 006B42F3    movsx       eax,word ptr [esi+8]
 006B42F7    mov         dword ptr [ebx+2DC],eax;TCustomMaskEdit.FBtnDownX:Integer
 006B42FD    pop         esi
 006B42FE    pop         ebx
 006B42FF    ret
end;*}

//006B4300
{*procedure TCustomMaskEdit.WMLButtonUp(?:?);
begin
 006B4300    push        ebx
 006B4301    push        esi
 006B4302    add         esp,0FFFFFFF8
 006B4305    mov         esi,edx
 006B4307    mov         ebx,eax
 006B4309    mov         edx,esi
 006B430B    mov         eax,ebx
 006B430D    call        TControl.WMLButtonUp
 006B4312    mov         eax,ebx
 006B4314    call        TCustomMaskEdit.GetMasked
 006B4319    test        al,al
>006B431B    je          006B4359
 006B431D    lea         ecx,[esp+4]
 006B4321    mov         edx,esp
 006B4323    mov         eax,ebx
 006B4325    call        TCustomMaskEdit.GetSel
 006B432A    mov         eax,dword ptr [esp]
 006B432D    mov         dword ptr [ebx+2D8],eax;TCustomMaskEdit.FCaretPos:Integer
 006B4333    mov         eax,dword ptr [esp]
 006B4336    cmp         eax,dword ptr [esp+4]
>006B433A    je          006B4352
 006B433C    movsx       eax,word ptr [esi+8]
 006B4340    cmp         eax,dword ptr [ebx+2DC];TCustomMaskEdit.FBtnDownX:Integer
>006B4346    jle         006B4352
 006B4348    mov         eax,dword ptr [esp+4]
 006B434C    mov         dword ptr [ebx+2D8],eax;TCustomMaskEdit.FCaretPos:Integer
 006B4352    mov         eax,ebx
 006B4354    call        TCustomMaskEdit.CheckCursor
 006B4359    pop         ecx
 006B435A    pop         edx
 006B435B    pop         esi
 006B435C    pop         ebx
 006B435D    ret
end;*}

//006B4360
procedure TCustomMaskEdit.WMSetFocus(var Message:Messages.TWMSetFocus);
begin
{*
 006B4360    push        ebx
 006B4361    mov         ebx,eax
 006B4363    mov         eax,ebx
 006B4365    call        TWinControl.WMSetFocus
 006B436A    mov         eax,ebx
 006B436C    call        TCustomMaskEdit.GetMasked
 006B4371    test        al,al
>006B4373    je          006B437C
 006B4375    mov         eax,ebx
 006B4377    call        TCustomMaskEdit.CheckCursor
 006B437C    pop         ebx
 006B437D    ret
*}
end;

//006B4380
procedure TCustomMaskEdit.SetEditText(const Value:UnicodeString);
begin
{*
 006B4380    push        ebp
 006B4381    mov         ebp,esp
 006B4383    push        0
 006B4385    push        ebx
 006B4386    push        esi
 006B4387    mov         esi,edx
 006B4389    mov         ebx,eax
 006B438B    xor         eax,eax
 006B438D    push        ebp
 006B438E    push        6B43DC
 006B4393    push        dword ptr fs:[eax]
 006B4396    mov         dword ptr fs:[eax],esp
 006B4399    lea         edx,[ebp-4]
 006B439C    mov         eax,ebx
 006B439E    call        TCustomMaskEdit.GetEditText
 006B43A3    mov         eax,dword ptr [ebp-4]
 006B43A6    mov         edx,esi
 006B43A8    call        @UStrEqual
>006B43AD    je          006B43C6
 006B43AF    mov         eax,esi
 006B43B1    call        @UStrToPWChar
 006B43B6    mov         edx,eax
 006B43B8    mov         eax,ebx
 006B43BA    call        TControl.SetTextBuf
 006B43BF    mov         eax,ebx
 006B43C1    call        TCustomMaskEdit.CheckCursor
 006B43C6    xor         eax,eax
 006B43C8    pop         edx
 006B43C9    pop         ecx
 006B43CA    pop         ecx
 006B43CB    mov         dword ptr fs:[eax],edx
 006B43CE    push        6B43E3
 006B43D3    lea         eax,[ebp-4]
 006B43D6    call        @UStrClr
 006B43DB    ret
>006B43DC    jmp         @HandleFinally
>006B43E1    jmp         006B43D3
 006B43E3    pop         esi
 006B43E4    pop         ebx
 006B43E5    pop         ecx
 006B43E6    pop         ebp
 006B43E7    ret
*}
end;

//006B43E8
function TCustomMaskEdit.GetEditText:UnicodeString;
begin
{*
 006B43E8    push        ebx
 006B43E9    push        esi
 006B43EA    mov         esi,edx
 006B43EC    mov         ebx,eax
 006B43EE    mov         edx,esi
 006B43F0    mov         eax,ebx
 006B43F2    call        TControl.GetText
 006B43F7    pop         esi
 006B43F8    pop         ebx
 006B43F9    ret
*}
end;

//006B43FC
function TCustomMaskEdit.GetTextLen:Integer;
begin
{*
 006B43FC    push        ebp
 006B43FD    mov         ebp,esp
 006B43FF    push        0
 006B4401    push        ebx
 006B4402    mov         ebx,eax
 006B4404    xor         eax,eax
 006B4406    push        ebp
 006B4407    push        6B4440
 006B440C    push        dword ptr fs:[eax]
 006B440F    mov         dword ptr fs:[eax],esp
 006B4412    lea         edx,[ebp-4]
 006B4415    mov         eax,ebx
 006B4417    call        TCustomMaskEdit.GetText
 006B441C    mov         eax,dword ptr [ebp-4]
 006B441F    test        eax,eax
>006B4421    je          006B4428
 006B4423    sub         eax,4
 006B4426    mov         eax,dword ptr [eax]
 006B4428    mov         ebx,eax
 006B442A    xor         eax,eax
 006B442C    pop         edx
 006B442D    pop         ecx
 006B442E    pop         ecx
 006B442F    mov         dword ptr fs:[eax],edx
 006B4432    push        6B4447
 006B4437    lea         eax,[ebp-4]
 006B443A    call        @UStrClr
 006B443F    ret
>006B4440    jmp         @HandleFinally
>006B4445    jmp         006B4437
 006B4447    mov         eax,ebx
 006B4449    pop         ebx
 006B444A    pop         ecx
 006B444B    pop         ebp
 006B444C    ret
*}
end;

//006B4450
function TCustomMaskEdit.GetText:TMaskedText;
begin
{*
 006B4450    push        ebp
 006B4451    mov         ebp,esp
 006B4453    push        0
 006B4455    push        0
 006B4457    push        ebx
 006B4458    push        esi
 006B4459    mov         esi,edx
 006B445B    mov         ebx,eax
 006B445D    xor         eax,eax
 006B445F    push        ebp
 006B4460    push        6B44D4
 006B4465    push        dword ptr fs:[eax]
 006B4468    mov         dword ptr fs:[eax],esp
 006B446B    mov         eax,ebx
 006B446D    call        TCustomMaskEdit.GetMasked
 006B4472    test        al,al
>006B4474    jne         006B4481
 006B4476    mov         edx,esi
 006B4478    mov         eax,ebx
 006B447A    call        TControl.GetText
>006B447F    jmp         006B44B9
 006B4481    lea         edx,[ebp-4]
 006B4484    mov         eax,ebx
 006B4486    call        TCustomMaskEdit.GetEditText
 006B448B    mov         edx,dword ptr [ebp-4]
 006B448E    mov         ecx,esi
 006B4490    mov         eax,ebx
 006B4492    call        006B55D0
 006B4497    cmp         byte ptr [ebx+2D4],0
>006B449E    je          006B44B9
 006B44A0    lea         eax,[ebp-8]
 006B44A3    push        eax
 006B44A4    mov         edx,dword ptr [esi]
 006B44A6    xor         ecx,ecx
 006B44A8    mov         eax,ebx
 006B44AA    call        006B5588
 006B44AF    mov         edx,dword ptr [ebp-8]
 006B44B2    mov         eax,esi
 006B44B4    call        @UStrAsg
 006B44B9    xor         eax,eax
 006B44BB    pop         edx
 006B44BC    pop         ecx
 006B44BD    pop         ecx
 006B44BE    mov         dword ptr fs:[eax],edx
 006B44C1    push        6B44DB
 006B44C6    lea         eax,[ebp-8]
 006B44C9    mov         edx,2
 006B44CE    call        @UStrArrayClr
 006B44D3    ret
>006B44D4    jmp         @HandleFinally
>006B44D9    jmp         006B44C6
 006B44DB    pop         esi
 006B44DC    pop         ebx
 006B44DD    pop         ecx
 006B44DE    pop         ecx
 006B44DF    pop         ebp
 006B44E0    ret
*}
end;

//006B44E4
procedure TCustomMaskEdit.SetText(const Value:MaskUtils.TMaskedText);
begin
{*
 006B44E4    push        ebp
 006B44E5    mov         ebp,esp
 006B44E7    xor         ecx,ecx
 006B44E9    push        ecx
 006B44EA    push        ecx
 006B44EB    push        ecx
 006B44EC    push        ecx
 006B44ED    push        ebx
 006B44EE    push        esi
 006B44EF    mov         esi,edx
 006B44F1    mov         ebx,eax
 006B44F3    xor         eax,eax
 006B44F5    push        ebp
 006B44F6    push        6B45DB
 006B44FB    push        dword ptr fs:[eax]
 006B44FE    mov         dword ptr fs:[eax],esp
 006B4501    mov         eax,ebx
 006B4503    call        TCustomMaskEdit.GetMasked
 006B4508    test        al,al
>006B450A    jne         006B451A
 006B450C    mov         edx,esi
 006B450E    mov         eax,ebx
 006B4510    call        TControl.SetText
>006B4515    jmp         006B45B8
 006B451A    lea         eax,[ebp-4]
 006B451D    mov         edx,esi
 006B451F    call        @UStrLAsg
 006B4524    cmp         byte ptr [ebx+2D4],0
>006B452B    je          006B4553
 006B452D    lea         eax,[ebp-0C]
 006B4530    push        eax
 006B4531    movzx       ecx,word ptr [ebx+2CC]
 006B4538    mov         edx,dword ptr [ebp-4]
 006B453B    mov         eax,dword ptr [ebx+2C8]
 006B4541    call        006B2C84
 006B4546    mov         edx,dword ptr [ebp-0C]
 006B4549    lea         eax,[ebp-4]
 006B454C    call        @UStrLAsg
>006B4551    jmp         006B456E
 006B4553    lea         eax,[ebp-10]
 006B4556    push        eax
 006B4557    mov         cl,1
 006B4559    mov         edx,dword ptr [ebp-4]
 006B455C    mov         eax,ebx
 006B455E    call        006B5588
 006B4563    mov         edx,dword ptr [ebp-10]
 006B4566    lea         eax,[ebp-4]
 006B4569    call        @UStrLAsg
 006B456E    test        byte ptr [ebx+2D5],4
>006B4575    jne         006B45AE
 006B4577    test        byte ptr [ebx+1C],10
>006B457B    je          006B45AE
 006B457D    test        byte ptr [ebx+1C],1
>006B4581    jne         006B45AE
 006B4583    lea         ecx,[ebp-8]
 006B4586    mov         edx,dword ptr [ebp-4]
 006B4589    mov         eax,ebx
 006B458B    mov         esi,dword ptr [eax]
 006B458D    call        dword ptr [esi+134]
 006B4593    test        al,al
>006B4595    jne         006B45AE
 006B4597    mov         ecx,dword ptr ds:[7C42E0];^SResString273:TResStringRec
 006B459D    mov         dl,1
 006B459F    mov         eax,[006B2EE8];EDBEditError
 006B45A4    call        Exception.CreateRes
 006B45A9    call        @RaiseExcept
 006B45AE    mov         edx,dword ptr [ebp-4]
 006B45B1    mov         eax,ebx
 006B45B3    call        TCustomMaskEdit.SetEditText
 006B45B8    xor         eax,eax
 006B45BA    pop         edx
 006B45BB    pop         ecx
 006B45BC    pop         ecx
 006B45BD    mov         dword ptr fs:[eax],edx
 006B45C0    push        6B45E2
 006B45C5    lea         eax,[ebp-10]
 006B45C8    mov         edx,2
 006B45CD    call        @UStrArrayClr
 006B45D2    lea         eax,[ebp-4]
 006B45D5    call        @UStrClr
 006B45DA    ret
>006B45DB    jmp         @HandleFinally
>006B45E0    jmp         006B45C5
 006B45E2    pop         esi
 006B45E3    pop         ebx
 006B45E4    mov         esp,ebp
 006B45E6    pop         ebp
 006B45E7    ret
*}
end;

//006B45E8
{*procedure TCustomMaskEdit.WMCut(?:?);
begin
 006B45E8    push        ebx
 006B45E9    push        esi
 006B45EA    push        edi
 006B45EB    mov         esi,edx
 006B45ED    mov         ebx,eax
 006B45EF    mov         eax,ebx
 006B45F1    call        TCustomMaskEdit.GetMasked
 006B45F6    test        al,al
>006B45F8    jne         006B4605
 006B45FA    mov         edx,esi
 006B45FC    mov         eax,ebx
 006B45FE    mov         ecx,dword ptr [eax]
 006B4600    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
>006B4603    jmp         006B465C
 006B4605    mov         eax,ebx
 006B4607    call        TCustomEdit.CopyToClipboard
 006B460C    mov         dx,2E
 006B4610    mov         eax,ebx
 006B4612    call        TCustomMaskEdit.DeleteKeys
 006B4617    mov         eax,ebx
 006B4619    call        TWinControl.HandleAllocated
 006B461E    test        al,al
>006B4620    je          006B465C
 006B4622    mov         eax,ebx
 006B4624    call        TWinControl.GetHandle
 006B4629    push        eax
 006B462A    call        user32.GetParent
 006B462F    mov         esi,eax
 006B4631    mov         eax,ebx
 006B4633    call        TWinControl.GetHandle
 006B4638    push        eax
 006B4639    call        user32.GetDlgCtrlID
 006B463E    mov         edi,eax
 006B4640    mov         eax,ebx
 006B4642    call        TWinControl.GetHandle
 006B4647    push        eax
 006B4648    movzx       eax,di
 006B464B    or          eax,3000000
 006B4650    push        eax
 006B4651    push        111
 006B4656    push        esi
 006B4657    call        user32.SendMessageW
 006B465C    pop         edi
 006B465D    pop         esi
 006B465E    pop         ebx
 006B465F    ret
end;*}

//006B4660
{*procedure TCustomMaskEdit.WMPaste(?:?);
begin
 006B4660    push        ebp
 006B4661    mov         ebp,esp
 006B4663    add         esp,0FFFFFFF0
 006B4666    push        ebx
 006B4667    push        esi
 006B4668    push        edi
 006B4669    xor         ecx,ecx
 006B466B    mov         dword ptr [ebp-4],ecx
 006B466E    mov         dword ptr [ebp-8],ecx
 006B4671    mov         esi,edx
 006B4673    mov         ebx,eax
 006B4675    xor         eax,eax
 006B4677    push        ebp
 006B4678    push        6B4785
 006B467D    push        dword ptr fs:[eax]
 006B4680    mov         dword ptr fs:[eax],esp
 006B4683    mov         eax,ebx
 006B4685    call        TCustomMaskEdit.GetMasked
 006B468A    test        al,al
>006B468C    je          006B4699
 006B468E    mov         eax,ebx
 006B4690    call        TCustomEdit.GetReadOnly
 006B4695    test        al,al
>006B4697    je          006B46A7
 006B4699    mov         edx,esi
 006B469B    mov         eax,ebx
 006B469D    mov         ecx,dword ptr [eax]
 006B469F    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
>006B46A2    jmp         006B476A
 006B46A7    call        Clipboard
 006B46AC    mov         edx,dword ptr [eax]
 006B46AE    call        dword ptr [edx+18];TClipboard.Open
 006B46B1    call        Clipboard
 006B46B6    lea         edx,[ebp-4]
 006B46B9    call        TClipboard.GetAsText
 006B46BE    call        Clipboard
 006B46C3    mov         edx,dword ptr [eax]
 006B46C5    call        dword ptr [edx+14];TClipboard.Close
 006B46C8    lea         ecx,[ebp-10]
 006B46CB    lea         edx,[ebp-0C]
 006B46CE    mov         eax,ebx
 006B46D0    call        TCustomMaskEdit.GetSel
 006B46D5    lea         edx,[ebp-8]
 006B46D8    mov         eax,ebx
 006B46DA    call        TCustomMaskEdit.GetEditText
 006B46DF    mov         eax,dword ptr [ebp-10]
 006B46E2    sub         eax,dword ptr [ebp-0C]
 006B46E5    push        eax
 006B46E6    lea         edx,[ebp-8]
 006B46E9    mov         ecx,dword ptr [ebp-0C]
 006B46EC    mov         eax,ebx
 006B46EE    call        TCustomMaskEdit.DeleteSelection
 006B46F3    mov         edx,dword ptr [ebp-8]
 006B46F6    mov         eax,ebx
 006B46F8    call        TCustomMaskEdit.SetEditText
 006B46FD    mov         eax,dword ptr [ebp-0C]
 006B4700    push        eax
 006B4701    lea         edx,[ebp-8]
 006B4704    mov         ecx,dword ptr [ebp-4]
 006B4707    mov         eax,ebx
 006B4709    call        006B5D58
 006B470E    mov         dword ptr [ebp-0C],eax
 006B4711    mov         edx,dword ptr [ebp-8]
 006B4714    mov         eax,ebx
 006B4716    call        TCustomMaskEdit.SetEditText
 006B471B    mov         edx,dword ptr [ebp-0C]
 006B471E    mov         eax,ebx
 006B4720    call        TCustomMaskEdit.SetCursor
 006B4725    mov         eax,ebx
 006B4727    call        TWinControl.HandleAllocated
 006B472C    test        al,al
>006B472E    je          006B476A
 006B4730    mov         eax,ebx
 006B4732    call        TWinControl.GetHandle
 006B4737    push        eax
 006B4738    call        user32.GetParent
 006B473D    mov         esi,eax
 006B473F    mov         eax,ebx
 006B4741    call        TWinControl.GetHandle
 006B4746    push        eax
 006B4747    call        user32.GetDlgCtrlID
 006B474C    mov         edi,eax
 006B474E    mov         eax,ebx
 006B4750    call        TWinControl.GetHandle
 006B4755    push        eax
 006B4756    movzx       eax,di
 006B4759    or          eax,3000000
 006B475E    push        eax
 006B475F    push        111
 006B4764    push        esi
 006B4765    call        user32.SendMessageW
 006B476A    xor         eax,eax
 006B476C    pop         edx
 006B476D    pop         ecx
 006B476E    pop         ecx
 006B476F    mov         dword ptr fs:[eax],edx
 006B4772    push        6B478C
 006B4777    lea         eax,[ebp-8]
 006B477A    mov         edx,2
 006B477F    call        @UStrArrayClr
 006B4784    ret
>006B4785    jmp         @HandleFinally
>006B478A    jmp         006B4777
 006B478C    pop         edi
 006B478D    pop         esi
 006B478E    pop         ebx
 006B478F    mov         esp,ebp
 006B4791    pop         ebp
 006B4792    ret
end;*}

//006B4794
function TCustomMaskEdit.GetMasked:Boolean;
begin
{*
 006B4794    push        ebx
 006B4795    mov         ebx,eax
 006B4797    cmp         dword ptr [ebx+2C8],0
 006B479E    setne       al
 006B47A1    pop         ebx
 006B47A2    ret
*}
end;

//006B47A4
procedure sub_006B47A4(?:TMaskEdit; ?:TEditMask);
begin
{*
 006B47A4    push        ebp
 006B47A5    mov         ebp,esp
 006B47A7    push        0
 006B47A9    push        0
 006B47AB    push        0
 006B47AD    push        ebx
 006B47AE    push        esi
 006B47AF    push        edi
 006B47B0    mov         edi,edx
 006B47B2    mov         ebx,eax
 006B47B4    xor         eax,eax
 006B47B6    push        ebp
 006B47B7    push        6B485F
 006B47BC    push        dword ptr fs:[eax]
 006B47BF    mov         dword ptr fs:[eax],esp
 006B47C2    lea         edx,[ebp-8]
 006B47C5    mov         eax,ebx
 006B47C7    call        TCustomMaskEdit.GetEditText
 006B47CC    mov         edx,dword ptr [ebp-8]
 006B47CF    lea         ecx,[ebp-4]
 006B47D2    mov         eax,ebx
 006B47D4    call        006B55D0
 006B47D9    lea         eax,[ebx+2C8]
 006B47DF    mov         edx,edi
 006B47E1    call        @UStrAsg
 006B47E6    mov         esi,edi
 006B47E8    test        esi,esi
>006B47EA    je          006B47F1
 006B47EC    sub         esi,4
 006B47EF    mov         esi,dword ptr [esi]
 006B47F1    mov         edx,esi
 006B47F3    mov         eax,dword ptr [ebx+2C8]
 006B47F9    call        006B29F4
 006B47FE    mov         dword ptr [ebx+2D0],eax
 006B4804    mov         eax,edi
 006B4806    call        006B2804
 006B480B    mov         byte ptr [ebx+2D4],al
 006B4811    mov         eax,edi
 006B4813    call        006B28CC
 006B4818    mov         word ptr [ebx+2CC],ax
 006B481F    lea         eax,[ebp-0C]
 006B4822    push        eax
 006B4823    mov         cl,1
 006B4825    mov         edx,dword ptr [ebp-4]
 006B4828    mov         eax,ebx
 006B482A    call        006B5588
 006B482F    mov         edx,dword ptr [ebp-0C]
 006B4832    lea         eax,[ebp-4]
 006B4835    call        @UStrLAsg
 006B483A    mov         edx,dword ptr [ebp-4]
 006B483D    mov         eax,ebx
 006B483F    call        TCustomMaskEdit.SetEditText
 006B4844    xor         eax,eax
 006B4846    pop         edx
 006B4847    pop         ecx
 006B4848    pop         ecx
 006B4849    mov         dword ptr fs:[eax],edx
 006B484C    push        6B4866
 006B4851    lea         eax,[ebp-0C]
 006B4854    mov         edx,3
 006B4859    call        @UStrArrayClr
 006B485E    ret
>006B485F    jmp         @HandleFinally
>006B4864    jmp         006B4851
 006B4866    pop         edi
 006B4867    pop         esi
 006B4868    pop         ebx
 006B4869    mov         esp,ebp
 006B486B    pop         ebp
 006B486C    ret
*}
end;

//006B4870
procedure TMaskEdit.SetEditMask(Value:TEditMask);
begin
{*
 006B4870    push        ebx
 006B4871    push        esi
 006B4872    add         esp,0FFFFFFF8
 006B4875    mov         esi,edx
 006B4877    mov         ebx,eax
 006B4879    mov         eax,esi
 006B487B    mov         edx,dword ptr [ebx+2C8];TMaskEdit.FEditMask:TEditMask
 006B4881    call        @UStrEqual
>006B4886    je          006B4934
 006B488C    test        byte ptr [ebx+1C],10;TMaskEdit.FComponentState:TComponentState
>006B4890    je          006B48A5
 006B4892    test        esi,esi
>006B4894    je          006B48A5
 006B4896    test        byte ptr [ebx+1C],1;TMaskEdit.FComponentState:TComponentState
>006B489A    jne         006B48A5
 006B489C    xor         edx,edx
 006B489E    mov         eax,ebx
 006B48A0    call        TCustomMaskEdit.SetEditText
 006B48A5    mov         eax,ebx
 006B48A7    call        TWinControl.HandleAllocated
 006B48AC    test        al,al
>006B48AE    je          006B48BD
 006B48B0    lea         ecx,[esp+4]
 006B48B4    mov         edx,esp
 006B48B6    mov         eax,ebx
 006B48B8    call        TCustomMaskEdit.GetSel
 006B48BD    mov         edx,esi
 006B48BF    mov         eax,ebx
 006B48C1    call        006B47A4
 006B48C6    and         byte ptr [ebx+2D5],0FE;TMaskEdit.FMaskState:TMaskedState
 006B48CD    cmp         dword ptr [ebx+2C8],0;TMaskEdit.FEditMask:TEditMask
>006B48D4    je          006B48DD
 006B48D6    or          byte ptr [ebx+2D5],1;TMaskEdit.FMaskState:TMaskedState
 006B48DD    xor         edx,edx
 006B48DF    mov         eax,ebx
 006B48E1    call        TEdit.SetMaxLength
 006B48E6    mov         eax,ebx
 006B48E8    call        TCustomMaskEdit.GetMasked
 006B48ED    test        al,al
>006B48EF    je          006B4907
 006B48F1    cmp         dword ptr [ebx+2D0],0;TMaskEdit.FMaxChars:Integer
>006B48F8    jle         006B4907
 006B48FA    mov         edx,dword ptr [ebx+2D0];TMaskEdit.FMaxChars:Integer
 006B4900    mov         eax,ebx
 006B4902    call        TEdit.SetMaxLength
 006B4907    mov         eax,ebx
 006B4909    call        TWinControl.HandleAllocated
 006B490E    test        al,al
>006B4910    je          006B4934
 006B4912    mov         eax,ebx
 006B4914    call        TWinControl.GetHandle
 006B4919    mov         esi,eax
 006B491B    call        user32.GetFocus
 006B4920    cmp         esi,eax
>006B4922    jne         006B4934
 006B4924    test        byte ptr [ebx+1C],10;TMaskEdit.FComponentState:TComponentState
>006B4928    jne         006B4934
 006B492A    mov         edx,dword ptr [esp]
 006B492D    mov         eax,ebx
 006B492F    call        TCustomMaskEdit.SetCursor
 006B4934    pop         ecx
 006B4935    pop         edx
 006B4936    pop         esi
 006B4937    pop         ebx
 006B4938    ret
*}
end;

//006B493C
{*function TMaskEdit.GetMaxLength:?;
begin
 006B493C    mov         eax,dword ptr [eax+294];TMaskEdit.FMaxLength:Integer
 006B4942    ret
end;*}

//006B4944
procedure TMaskEdit.SetMaxLength(Value:Integer);
begin
{*
 006B4944    push        ebx
 006B4945    push        esi
 006B4946    mov         esi,edx
 006B4948    mov         ebx,eax
 006B494A    mov         eax,ebx
 006B494C    call        TCustomMaskEdit.GetMasked
 006B4951    test        al,al
>006B4953    jne         006B4961
 006B4955    mov         edx,esi
 006B4957    mov         eax,ebx
 006B4959    call        TEdit.SetMaxLength
 006B495E    pop         esi
 006B495F    pop         ebx
 006B4960    ret
 006B4961    mov         edx,dword ptr [ebx+2D0];TMaskEdit.FMaxChars:Integer
 006B4967    mov         eax,ebx
 006B4969    call        TEdit.SetMaxLength
 006B496E    pop         esi
 006B496F    pop         ebx
 006B4970    ret
*}
end;

//006B4974
procedure TCustomMaskEdit.GetSel(var SelStart:Integer; var SelStop:Integer);
begin
{*
 006B4974    push        ebx
 006B4975    push        esi
 006B4976    push        edi
 006B4977    mov         edi,ecx
 006B4979    mov         esi,edx
 006B497B    mov         ebx,eax
 006B497D    push        edi
 006B497E    push        esi
 006B497F    push        0B0
 006B4984    mov         eax,ebx
 006B4986    call        TWinControl.GetHandle
 006B498B    push        eax
 006B498C    call        user32.SendMessageW
 006B4991    pop         edi
 006B4992    pop         esi
 006B4993    pop         ebx
 006B4994    ret
*}
end;

//006B4998
procedure TCustomMaskEdit.SetSel(SelStart:Integer; SelStop:Integer);
begin
{*
 006B4998    push        ebx
 006B4999    push        esi
 006B499A    push        edi
 006B499B    mov         edi,ecx
 006B499D    mov         esi,edx
 006B499F    mov         ebx,eax
 006B49A1    push        edi
 006B49A2    push        esi
 006B49A3    push        0B1
 006B49A8    mov         eax,ebx
 006B49AA    call        TWinControl.GetHandle
 006B49AF    push        eax
 006B49B0    call        user32.SendMessageW
 006B49B5    pop         edi
 006B49B6    pop         esi
 006B49B7    pop         ebx
 006B49B8    ret
*}
end;

//006B49BC
procedure TCustomMaskEdit.SetCursor(Pos:Integer);
begin
{*
 006B49BC    push        ebp
 006B49BD    mov         ebp,esp
 006B49BF    add         esp,0FFFFFDE4
 006B49C5    push        ebx
 006B49C6    push        esi
 006B49C7    xor         ecx,ecx
 006B49C9    mov         dword ptr [ebp-21C],ecx
 006B49CF    mov         dword ptr [ebp-218],ecx
 006B49D5    mov         dword ptr [ebp-214],ecx
 006B49DB    mov         dword ptr [ebp-210],ecx
 006B49E1    mov         dword ptr [ebp-20C],ecx
 006B49E7    mov         ebx,edx
 006B49E9    mov         dword ptr [ebp-4],eax
 006B49EC    xor         eax,eax
 006B49EE    push        ebp
 006B49EF    push        6B4C3D
 006B49F4    push        dword ptr fs:[eax]
 006B49F7    mov         dword ptr fs:[eax],esp
 006B49FA    cmp         ebx,1
>006B49FD    jl          006B4A1F
 006B49FF    lea         edx,[ebp-20C]
 006B4A05    mov         eax,dword ptr [ebp-4]
 006B4A08    call        TCustomMaskEdit.GetEditText
 006B4A0D    mov         eax,dword ptr [ebp-20C]
 006B4A13    mov         edx,ebx
 006B4A15    call        00424DC0
 006B4A1A    cmp         al,1
>006B4A1C    jne         006B4A1F
 006B4A1E    dec         ebx
 006B4A1F    mov         dword ptr [ebp-8],ebx
 006B4A22    mov         eax,dword ptr [ebp-4]
 006B4A25    call        TCustomMaskEdit.GetMasked
 006B4A2A    test        al,al
>006B4A2C    je          006B4BC4
 006B4A32    cmp         dword ptr [ebp-8],0
>006B4A36    jge         006B4A3D
 006B4A38    xor         eax,eax
 006B4A3A    mov         dword ptr [ebp-8],eax
 006B4A3D    mov         edx,dword ptr [ebp-8]
 006B4A40    mov         eax,dword ptr [ebp-4]
 006B4A43    call        TCustomMaskEdit.GetNextEditChar
 006B4A48    mov         dword ptr [ebp-8],eax
 006B4A4B    mov         ebx,dword ptr [ebp-8]
 006B4A4E    inc         ebx
 006B4A4F    lea         edx,[ebp-210]
 006B4A55    mov         eax,dword ptr [ebp-4]
 006B4A58    call        TCustomMaskEdit.GetEditText
 006B4A5D    mov         eax,dword ptr [ebp-210]
 006B4A63    test        eax,eax
>006B4A65    je          006B4A6C
 006B4A67    sub         eax,4
 006B4A6A    mov         eax,dword ptr [eax]
 006B4A6C    cmp         ebx,eax
>006B4A6E    jge         006B4AA0
 006B4A70    lea         edx,[ebp-214]
 006B4A76    mov         eax,dword ptr [ebp-4]
 006B4A79    call        TCustomMaskEdit.GetEditText
 006B4A7E    mov         eax,dword ptr [ebp-214]
 006B4A84    movzx       eax,word ptr [eax+ebx*2-2]
 006B4A89    cmp         ax,0D800
>006B4A8D    jb          006B4A95
 006B4A8F    cmp         ax,0DFFF
>006B4A93    jbe         006B4A99
 006B4A95    xor         eax,eax
>006B4A97    jmp         006B4A9B
 006B4A99    mov         al,1
 006B4A9B    test        al,al
>006B4A9D    je          006B4AA0
 006B4A9F    inc         ebx
 006B4AA0    mov         eax,dword ptr [ebp-4]
 006B4AA3    mov         eax,dword ptr [eax+2D0]
 006B4AA9    cmp         eax,dword ptr [ebp-8]
>006B4AAC    jg          006B4AB4
 006B4AAE    mov         dword ptr [ebp-8],eax
 006B4AB1    mov         ebx,dword ptr [ebp-8]
 006B4AB4    mov         ecx,ebx
 006B4AB6    mov         edx,ebx
 006B4AB8    mov         eax,dword ptr [ebp-4]
 006B4ABB    call        TCustomMaskEdit.SetSel
 006B4AC0    cmp         ebx,dword ptr [ebp-8]
>006B4AC3    je          006B4BB6
 006B4AC9    lea         eax,[ebp-108]
 006B4ACF    push        eax
 006B4AD0    call        user32.GetKeyboardState
 006B4AD5    mov         edx,100
 006B4ADA    lea         eax,[ebp-208]
 006B4AE0    mov         byte ptr [eax],0
 006B4AE3    inc         eax
 006B4AE4    dec         edx
>006B4AE5    jne         006B4AE0
 006B4AE7    mov         byte ptr [ebp-1F8],81
 006B4AEE    mov         eax,dword ptr [ebp-4]
 006B4AF1    mov         si,0FFC6
 006B4AF5    call        @CallDynaInst
 006B4AFA    and         eax,7F
 006B4AFD    movzx       eax,word ptr [eax*2+7C2B50]
 006B4B05    mov         byte ptr [ebp+eax-208],81
 006B4B0D    lea         eax,[ebp-208]
 006B4B13    push        eax
 006B4B14    call        user32.SetKeyboardState
 006B4B19    mov         eax,dword ptr [ebp-4]
 006B4B1C    mov         byte ptr [eax+2E4],1
 006B4B23    xor         eax,eax
 006B4B25    push        ebp
 006B4B26    push        6B4BA3
 006B4B2B    push        dword ptr fs:[eax]
 006B4B2E    mov         dword ptr fs:[eax],esp
 006B4B31    push        1
 006B4B33    mov         eax,dword ptr [ebp-4]
 006B4B36    mov         si,0FFC6
 006B4B3A    call        @CallDynaInst
 006B4B3F    and         eax,7F
 006B4B42    movzx       eax,word ptr [eax*2+7C2B50]
 006B4B4A    push        eax
 006B4B4B    push        100
 006B4B50    mov         eax,dword ptr [ebp-4]
 006B4B53    call        TWinControl.GetHandle
 006B4B58    push        eax
 006B4B59    call        user32.SendMessageW
 006B4B5E    push        1
 006B4B60    mov         eax,dword ptr [ebp-4]
 006B4B63    mov         si,0FFC6
 006B4B67    call        @CallDynaInst
 006B4B6C    and         eax,7F
 006B4B6F    movzx       eax,word ptr [eax*2+7C2B50]
 006B4B77    push        eax
 006B4B78    push        101
 006B4B7D    mov         eax,dword ptr [ebp-4]
 006B4B80    call        TWinControl.GetHandle
 006B4B85    push        eax
 006B4B86    call        user32.SendMessageW
 006B4B8B    xor         eax,eax
 006B4B8D    pop         edx
 006B4B8E    pop         ecx
 006B4B8F    pop         ecx
 006B4B90    mov         dword ptr fs:[eax],edx
 006B4B93    push        6B4BAA
 006B4B98    mov         eax,dword ptr [ebp-4]
 006B4B9B    mov         byte ptr [eax+2E4],0
 006B4BA2    ret
>006B4BA3    jmp         @HandleFinally
>006B4BA8    jmp         006B4B98
 006B4BAA    lea         eax,[ebp-108]
 006B4BB0    push        eax
 006B4BB1    call        user32.SetKeyboardState
 006B4BB6    mov         eax,dword ptr [ebp-4]
 006B4BB9    mov         edx,dword ptr [ebp-8]
 006B4BBC    mov         dword ptr [eax+2D8],edx
>006B4BC2    jmp         006B4C1F
 006B4BC4    cmp         dword ptr [ebp-8],0
>006B4BC8    jge         006B4BCF
 006B4BCA    xor         eax,eax
 006B4BCC    mov         dword ptr [ebp-8],eax
 006B4BCF    lea         edx,[ebp-218]
 006B4BD5    mov         eax,dword ptr [ebp-4]
 006B4BD8    call        TCustomMaskEdit.GetEditText
 006B4BDD    mov         eax,dword ptr [ebp-218]
 006B4BE3    test        eax,eax
>006B4BE5    je          006B4BEC
 006B4BE7    sub         eax,4
 006B4BEA    mov         eax,dword ptr [eax]
 006B4BEC    cmp         eax,dword ptr [ebp-8]
>006B4BEF    jg          006B4C11
 006B4BF1    lea         edx,[ebp-21C]
 006B4BF7    mov         eax,dword ptr [ebp-4]
 006B4BFA    call        TCustomMaskEdit.GetEditText
 006B4BFF    mov         eax,dword ptr [ebp-21C]
 006B4C05    test        eax,eax
>006B4C07    je          006B4C0E
 006B4C09    sub         eax,4
 006B4C0C    mov         eax,dword ptr [eax]
 006B4C0E    mov         dword ptr [ebp-8],eax
 006B4C11    mov         ecx,dword ptr [ebp-8]
 006B4C14    mov         edx,dword ptr [ebp-8]
 006B4C17    mov         eax,dword ptr [ebp-4]
 006B4C1A    call        TCustomMaskEdit.SetSel
 006B4C1F    xor         eax,eax
 006B4C21    pop         edx
 006B4C22    pop         ecx
 006B4C23    pop         ecx
 006B4C24    mov         dword ptr fs:[eax],edx
 006B4C27    push        6B4C44
 006B4C2C    lea         eax,[ebp-21C]
 006B4C32    mov         edx,5
 006B4C37    call        @UStrArrayClr
 006B4C3C    ret
>006B4C3D    jmp         @HandleFinally
>006B4C42    jmp         006B4C2C
 006B4C44    pop         esi
 006B4C45    pop         ebx
 006B4C46    mov         esp,ebp
 006B4C48    pop         ebp
 006B4C49    ret
*}
end;

//006B4C4C
procedure TCustomMaskEdit.CheckCursor;
begin
{*
 006B4C4C    push        ebx
 006B4C4D    add         esp,0FFFFFFF8
 006B4C50    mov         ebx,eax
 006B4C52    mov         eax,ebx
 006B4C54    call        TWinControl.HandleAllocated
 006B4C59    test        al,al
>006B4C5B    je          006B4C88
 006B4C5D    mov         eax,ebx
 006B4C5F    call        TCustomMaskEdit.GetMasked
 006B4C64    test        al,al
>006B4C66    je          006B4C88
 006B4C68    lea         ecx,[esp+4]
 006B4C6C    mov         edx,esp
 006B4C6E    mov         eax,ebx
 006B4C70    call        TCustomMaskEdit.GetSel
 006B4C75    mov         eax,dword ptr [esp]
 006B4C78    cmp         eax,dword ptr [esp+4]
>006B4C7C    jne         006B4C88
 006B4C7E    mov         edx,dword ptr [esp]
 006B4C81    mov         eax,ebx
 006B4C83    call        TCustomMaskEdit.SetCursor
 006B4C88    pop         ecx
 006B4C89    pop         edx
 006B4C8A    pop         ebx
 006B4C8B    ret
*}
end;

//006B4C8C
procedure TCustomMaskEdit.Clear;
begin
{*
 006B4C8C    xor         edx,edx
 006B4C8E    call        TCustomMaskEdit.SetText
 006B4C93    ret
*}
end;

//006B4C94
{*function sub_006B4C94:?;
begin
 006B4C94    mov         al,1
 006B4C96    ret
end;*}

//006B4C98
procedure sub_006B4C98;
begin
{*
 006B4C98    push        ebx
 006B4C99    mov         ebx,eax
 006B4C9B    mov         eax,ebx
 006B4C9D    call        TCustomEdit.GetModified
 006B4CA2    test        al,al
>006B4CA4    je          006B4CBC
 006B4CA6    mov         edx,dword ptr [ebx+2E0];TCustomMaskEdit.FOldValue:string
 006B4CAC    mov         eax,ebx
 006B4CAE    call        TCustomMaskEdit.SetEditText
 006B4CB3    xor         edx,edx
 006B4CB5    mov         eax,ebx
 006B4CB7    call        0050747C
 006B4CBC    pop         ebx
 006B4CBD    ret
*}
end;

//006B4CC0
{*function sub_006B4CC0(?:TCustomMaskEdit; ?:?):?;
begin
 006B4CC0    push        ebp
 006B4CC1    mov         ebp,esp
 006B4CC3    add         esp,0FFFFFFD0
 006B4CC6    push        ebx
 006B4CC7    push        esi
 006B4CC8    push        edi
 006B4CC9    xor         ecx,ecx
 006B4CCB    mov         dword ptr [ebp-2C],ecx
 006B4CCE    mov         dword ptr [ebp-30],ecx
 006B4CD1    mov         dword ptr [ebp-4],ecx
 006B4CD4    mov         esi,edx
 006B4CD6    mov         edi,eax
 006B4CD8    xor         eax,eax
 006B4CDA    push        ebp
 006B4CDB    push        6B4E85
 006B4CE0    push        dword ptr fs:[eax]
 006B4CE3    mov         dword ptr fs:[eax],esp
 006B4CE6    xor         ebx,ebx
 006B4CE8    cmp         word ptr [esi],1B
>006B4CEC    jne         006B4CFD
 006B4CEE    mov         eax,edi
 006B4CF0    mov         edx,dword ptr [eax]
 006B4CF2    call        dword ptr [edx+130];TCustomMaskEdit.sub_006B4C98
>006B4CF8    jmp         006B4E62
 006B4CFD    mov         eax,edi
 006B4CFF    mov         edx,dword ptr [eax]
 006B4D01    call        dword ptr [edx+12C];TCustomMaskEdit.sub_006B4C94
 006B4D07    test        al,al
>006B4D09    je          006B4E62
 006B4D0F    mov         eax,edi
 006B4D11    call        TCustomEdit.GetReadOnly
 006B4D16    test        al,al
>006B4D18    jne         006B4E62
 006B4D1E    movzx       eax,word ptr [esi]
 006B4D21    cmp         ax,8
>006B4D25    je          006B4E62
 006B4D2B    cmp         ax,0D
>006B4D2F    jne         006B4D40
 006B4D31    mov         eax,edi
 006B4D33    mov         edx,dword ptr [eax]
 006B4D35    call        dword ptr [edx+13C];TCustomMaskEdit.ValidateEdit
>006B4D3B    jmp         006B4E62
 006B4D40    lea         ecx,[ebp-0C]
 006B4D43    lea         edx,[ebp-8]
 006B4D46    mov         eax,edi
 006B4D48    call        TCustomMaskEdit.GetSel
 006B4D4D    mov         eax,dword ptr [ebp-0C]
 006B4D50    sub         eax,dword ptr [ebp-8]
 006B4D53    dec         eax
>006B4D54    jle         006B4D78
 006B4D56    mov         dx,2E
 006B4D5A    mov         eax,edi
 006B4D5C    call        TCustomMaskEdit.DeleteKeys
 006B4D61    mov         edx,dword ptr [ebp-8]
 006B4D64    mov         eax,edi
 006B4D66    call        TCustomMaskEdit.GetNextEditChar
 006B4D6B    mov         dword ptr [ebp-8],eax
 006B4D6E    mov         edx,dword ptr [ebp-8]
 006B4D71    mov         eax,edi
 006B4D73    call        TCustomMaskEdit.SetCursor
 006B4D78    cmp         word ptr [esi],0D800
>006B4D7D    jb          006B4D86
 006B4D7F    cmp         word ptr [esi],0DFFF
>006B4D84    jbe         006B4D8A
 006B4D86    xor         eax,eax
>006B4D88    jmp         006B4D8C
 006B4D8A    mov         al,1
 006B4D8C    test        al,al
>006B4D8E    je          006B4DC0
 006B4D90    push        1
 006B4D92    push        102
 006B4D97    push        102
 006B4D9C    mov         eax,edi
 006B4D9E    call        TWinControl.GetHandle
 006B4DA3    push        eax
 006B4DA4    lea         eax,[ebp-28]
 006B4DA7    push        eax
 006B4DA8    call        user32.PeekMessageW
 006B4DAD    test        eax,eax
>006B4DAF    je          006B4DC0
 006B4DB1    cmp         dword ptr [ebp-24],12
>006B4DB5    jne         006B4DC0
 006B4DB7    mov         eax,dword ptr [ebp-20]
 006B4DBA    push        eax
 006B4DBB    call        user32.PostQuitMessage
 006B4DC0    mov         edx,esi
 006B4DC2    mov         ecx,dword ptr [ebp-8]
 006B4DC5    mov         eax,edi
 006B4DC7    call        006B57D4
 006B4DCC    mov         ebx,eax
 006B4DCE    test        bl,bl
>006B4DD0    je          006B4E62
 006B4DD6    cmp         word ptr [esi],0D800
>006B4DDB    jb          006B4DE4
 006B4DDD    cmp         word ptr [esi],0DFFF
>006B4DE2    jbe         006B4DE8
 006B4DE4    xor         eax,eax
>006B4DE6    jmp         006B4DEA
 006B4DE8    mov         al,1
 006B4DEA    test        al,al
>006B4DEC    je          006B4E27
 006B4DEE    lea         eax,[ebp-2C]
 006B4DF1    movzx       edx,word ptr [ebp-20]
 006B4DF5    call        @UStrFromWChar
 006B4DFA    mov         eax,dword ptr [ebp-2C]
 006B4DFD    push        eax
 006B4DFE    lea         eax,[ebp-30]
 006B4E01    movzx       edx,word ptr [esi]
 006B4E04    call        @UStrFromWChar
 006B4E09    mov         edx,dword ptr [ebp-30]
 006B4E0C    lea         eax,[ebp-4]
 006B4E0F    pop         ecx
 006B4E10    call        @UStrCat3
 006B4E15    mov         ecx,dword ptr [ebp-8]
 006B4E18    add         ecx,2
 006B4E1B    mov         edx,dword ptr [ebp-8]
 006B4E1E    mov         eax,edi
 006B4E20    call        TCustomMaskEdit.SetSel
>006B4E25    jmp         006B4E32
 006B4E27    lea         eax,[ebp-4]
 006B4E2A    movzx       edx,word ptr [esi]
 006B4E2D    call        @UStrFromWChar
 006B4E32    mov         eax,dword ptr [ebp-4]
 006B4E35    push        eax
 006B4E36    mov         eax,edi
 006B4E38    call        TWinControl.GetHandle
 006B4E3D    xor         ecx,ecx
 006B4E3F    mov         edx,0C2
 006B4E44    call        SendTextMessage
 006B4E49    lea         ecx,[ebp-0C]
 006B4E4C    lea         edx,[ebp-8]
 006B4E4F    mov         eax,edi
 006B4E51    call        TCustomMaskEdit.GetSel
 006B4E56    xor         ecx,ecx
 006B4E58    mov         edx,dword ptr [ebp-8]
 006B4E5B    mov         eax,edi
 006B4E5D    call        006B508C
 006B4E62    xor         eax,eax
 006B4E64    pop         edx
 006B4E65    pop         ecx
 006B4E66    pop         ecx
 006B4E67    mov         dword ptr fs:[eax],edx
 006B4E6A    push        6B4E8C
 006B4E6F    lea         eax,[ebp-30]
 006B4E72    mov         edx,2
 006B4E77    call        @UStrArrayClr
 006B4E7C    lea         eax,[ebp-4]
 006B4E7F    call        @UStrClr
 006B4E84    ret
>006B4E85    jmp         @HandleFinally
>006B4E8A    jmp         006B4E6F
 006B4E8C    mov         eax,ebx
 006B4E8E    pop         edi
 006B4E8F    pop         esi
 006B4E90    pop         ebx
 006B4E91    mov         esp,ebp
 006B4E93    pop         ebp
 006B4E94    ret
end;*}

//006B4E98
{*procedure sub_006B4E98(?:TCustomMaskEdit; ?:?; ?:?);
begin
 006B4E98    push        ebp
 006B4E99    mov         ebp,esp
 006B4E9B    add         esp,0FFFFFFEC
 006B4E9E    push        ebx
 006B4E9F    push        esi
 006B4EA0    xor         ebx,ebx
 006B4EA2    mov         dword ptr [ebp-14],ebx
 006B4EA5    mov         dword ptr [ebp-10],ebx
 006B4EA8    mov         word ptr [ebp-2],cx
 006B4EAC    mov         esi,edx
 006B4EAE    mov         ebx,eax
 006B4EB0    xor         eax,eax
 006B4EB2    push        ebp
 006B4EB3    push        6B507D
 006B4EB8    push        dword ptr fs:[eax]
 006B4EBB    mov         dword ptr fs:[eax],esp
 006B4EBE    test        byte ptr [ebp-2],4
>006B4EC2    jne         006B5062
 006B4EC8    lea         ecx,[ebp-0C]
 006B4ECB    lea         edx,[ebp-8]
 006B4ECE    mov         eax,ebx
 006B4ED0    call        TCustomMaskEdit.GetSel
 006B4ED5    test        byte ptr [ebp-2],1
>006B4ED9    je          006B4F6F
 006B4EDF    cmp         si,27
>006B4EE3    jne         006B4F24
 006B4EE5    inc         dword ptr [ebx+2D8];TCustomMaskEdit.FCaretPos:Integer
 006B4EEB    mov         eax,dword ptr [ebp-8]
 006B4EEE    inc         eax
 006B4EEF    cmp         eax,dword ptr [ebp-0C]
>006B4EF2    jne         006B4F07
 006B4EF4    mov         ecx,dword ptr [ebp-0C]
 006B4EF7    mov         edx,dword ptr [ebp-8]
 006B4EFA    mov         eax,ebx
 006B4EFC    call        TCustomMaskEdit.SetSel
 006B4F01    inc         dword ptr [ebx+2D8];TCustomMaskEdit.FCaretPos:Integer
 006B4F07    mov         eax,dword ptr [ebx+2D0];TCustomMaskEdit.FMaxChars:Integer
 006B4F0D    cmp         eax,dword ptr [ebx+2D8];TCustomMaskEdit.FCaretPos:Integer
>006B4F13    jge         006B5062
 006B4F19    mov         dword ptr [ebx+2D8],eax;TCustomMaskEdit.FCaretPos:Integer
>006B4F1F    jmp         006B5062
 006B4F24    dec         dword ptr [ebx+2D8];TCustomMaskEdit.FCaretPos:Integer
 006B4F2A    mov         eax,dword ptr [ebp-8]
 006B4F2D    add         eax,2
 006B4F30    cmp         eax,dword ptr [ebp-0C]
>006B4F33    jne         006B4F55
 006B4F35    mov         eax,dword ptr [ebx+2D8];TCustomMaskEdit.FCaretPos:Integer
 006B4F3B    cmp         eax,dword ptr [ebp-8]
>006B4F3E    jle         006B4F55
 006B4F40    mov         eax,dword ptr [ebp-8]
 006B4F43    inc         eax
 006B4F44    mov         ecx,eax
 006B4F46    mov         edx,eax
 006B4F48    mov         eax,ebx
 006B4F4A    call        TCustomMaskEdit.SetSel
 006B4F4F    dec         dword ptr [ebx+2D8];TCustomMaskEdit.FCaretPos:Integer
 006B4F55    cmp         dword ptr [ebx+2D8],0;TCustomMaskEdit.FCaretPos:Integer
>006B4F5C    jge         006B5062
 006B4F62    xor         eax,eax
 006B4F64    mov         dword ptr [ebx+2D8],eax;TCustomMaskEdit.FCaretPos:Integer
>006B4F6A    jmp         006B5062
 006B4F6F    mov         eax,dword ptr [ebp-0C]
 006B4F72    sub         eax,dword ptr [ebp-8]
 006B4F75    cmp         eax,1
>006B4F78    jle         006B4FF2
 006B4F7A    cmp         eax,2
>006B4F7D    jne         006B4FD2
 006B4F7F    lea         edx,[ebp-10]
 006B4F82    mov         eax,ebx
 006B4F84    call        TCustomMaskEdit.GetEditText
 006B4F89    mov         eax,dword ptr [ebp-10]
 006B4F8C    mov         edx,dword ptr [ebp-8]
 006B4F8F    movzx       eax,word ptr [eax+edx*2]
 006B4F93    cmp         ax,0D800
>006B4F97    jb          006B4F9F
 006B4F99    cmp         ax,0DFFF
>006B4F9D    jbe         006B4FA3
 006B4F9F    xor         eax,eax
>006B4FA1    jmp         006B4FA5
 006B4FA3    mov         al,1
 006B4FA5    test        al,al
>006B4FA7    je          006B4FD2
 006B4FA9    cmp         si,25
>006B4FAD    jne         006B4FBE
 006B4FAF    mov         edx,dword ptr [ebp-8]
 006B4FB2    mov         eax,ebx
 006B4FB4    call        TCustomMaskEdit.CursorDec
>006B4FB9    jmp         006B5062
 006B4FBE    mov         ecx,2
 006B4FC3    mov         edx,dword ptr [ebp-8]
 006B4FC6    mov         eax,ebx
 006B4FC8    call        006B508C
>006B4FCD    jmp         006B5062
 006B4FD2    mov         eax,dword ptr [ebp-0C]
 006B4FD5    cmp         eax,dword ptr [ebx+2D8];TCustomMaskEdit.FCaretPos:Integer
>006B4FDB    jne         006B4FE3
 006B4FDD    dec         dword ptr [ebx+2D8];TCustomMaskEdit.FCaretPos:Integer
 006B4FE3    mov         edx,dword ptr [ebx+2D8];TCustomMaskEdit.FCaretPos:Integer
 006B4FE9    mov         eax,ebx
 006B4FEB    call        TCustomMaskEdit.SetCursor
>006B4FF0    jmp         006B5062
 006B4FF2    cmp         si,25
>006B4FF6    jne         006B5004
 006B4FF8    mov         edx,dword ptr [ebp-8]
 006B4FFB    mov         eax,ebx
 006B4FFD    call        TCustomMaskEdit.CursorDec
>006B5002    jmp         006B5062
 006B5004    mov         eax,dword ptr [ebp-0C]
 006B5007    cmp         eax,dword ptr [ebp-8]
>006B500A    jne         006B5018
 006B500C    mov         edx,dword ptr [ebp-8]
 006B500F    mov         eax,ebx
 006B5011    call        TCustomMaskEdit.SetCursor
>006B5016    jmp         006B5062
 006B5018    lea         edx,[ebp-14]
 006B501B    mov         eax,ebx
 006B501D    call        TCustomMaskEdit.GetEditText
 006B5022    mov         eax,dword ptr [ebp-14]
 006B5025    mov         edx,dword ptr [ebp-8]
 006B5028    movzx       eax,word ptr [eax+edx*2]
 006B502C    cmp         ax,0D800
>006B5030    jb          006B5038
 006B5032    cmp         ax,0DFFF
>006B5036    jbe         006B503C
 006B5038    xor         eax,eax
>006B503A    jmp         006B503E
 006B503C    mov         al,1
 006B503E    test        al,al
>006B5040    je          006B5053
 006B5042    mov         ecx,2
 006B5047    mov         edx,dword ptr [ebp-8]
 006B504A    mov         eax,ebx
 006B504C    call        006B508C
>006B5051    jmp         006B5062
 006B5053    mov         ecx,1
 006B5058    mov         edx,dword ptr [ebp-8]
 006B505B    mov         eax,ebx
 006B505D    call        006B508C
 006B5062    xor         eax,eax
 006B5064    pop         edx
 006B5065    pop         ecx
 006B5066    pop         ecx
 006B5067    mov         dword ptr fs:[eax],edx
 006B506A    push        6B5084
 006B506F    lea         eax,[ebp-14]
 006B5072    mov         edx,2
 006B5077    call        @UStrArrayClr
 006B507C    ret
>006B507D    jmp         @HandleFinally
>006B5082    jmp         006B506F
 006B5084    pop         esi
 006B5085    pop         ebx
 006B5086    mov         esp,ebp
 006B5088    pop         ebp
 006B5089    ret
end;*}

//006B508C
{*procedure sub_006B508C(?:TCustomMaskEdit; ?:Integer; ?:?);
begin
 006B508C    push        ebx
 006B508D    push        esi
 006B508E    push        edi
 006B508F    mov         edi,edx
 006B5091    mov         esi,eax
 006B5093    lea         ebx,[ecx+edi]
 006B5096    mov         edx,ebx
 006B5098    mov         eax,esi
 006B509A    call        TCustomMaskEdit.GetNextEditChar
 006B509F    mov         ebx,eax
 006B50A1    mov         edx,ebx
 006B50A3    mov         eax,dword ptr [esi+2C8];TCustomMaskEdit.FEditMask:TEditMask
 006B50A9    call        006B2AB0
 006B50AE    test        al,al
>006B50B0    je          006B50B4
 006B50B2    mov         ebx,edi
 006B50B4    mov         edx,ebx
 006B50B6    mov         eax,esi
 006B50B8    call        TCustomMaskEdit.SetCursor
 006B50BD    pop         edi
 006B50BE    pop         esi
 006B50BF    pop         ebx
 006B50C0    ret
end;*}

//006B50C4
procedure TCustomMaskEdit.CursorDec(CursorPos:Integer);
begin
{*
 006B50C4    push        ebx
 006B50C5    mov         ebx,eax
 006B50C7    mov         eax,edx
 006B50C9    dec         eax
 006B50CA    mov         edx,eax
 006B50CC    mov         eax,ebx
 006B50CE    call        TCustomMaskEdit.GetPriorEditChar
 006B50D3    mov         edx,eax
 006B50D5    mov         eax,ebx
 006B50D7    call        TCustomMaskEdit.SetCursor
 006B50DC    pop         ebx
 006B50DD    ret
*}
end;

//006B50E0
function TCustomMaskEdit.GetNextEditChar(Offset:Integer):Integer;
begin
{*
 006B50E0    push        ebx
 006B50E1    push        esi
 006B50E2    mov         esi,eax
 006B50E4    mov         ebx,edx
>006B50E6    jmp         006B50E9
 006B50E8    inc         ebx
 006B50E9    cmp         ebx,dword ptr [esi+2D0]
>006B50EF    jge         006B5102
 006B50F1    mov         edx,ebx
 006B50F3    mov         eax,dword ptr [esi+2C8]
 006B50F9    call        006B2AB0
 006B50FE    test        al,al
>006B5100    jne         006B50E8
 006B5102    mov         eax,ebx
 006B5104    pop         esi
 006B5105    pop         ebx
 006B5106    ret
*}
end;

//006B5108
function TCustomMaskEdit.GetPriorEditChar(Offset:Integer):Integer;
begin
{*
 006B5108    push        ebx
 006B5109    push        esi
 006B510A    mov         esi,eax
 006B510C    mov         ebx,edx
>006B510E    jmp         006B5111
 006B5110    dec         ebx
 006B5111    test        ebx,ebx
>006B5113    jl          006B5126
 006B5115    mov         edx,ebx
 006B5117    mov         eax,dword ptr [esi+2C8]
 006B511D    call        006B2AB0
 006B5122    test        al,al
>006B5124    jne         006B5110
 006B5126    test        ebx,ebx
>006B5128    jge         006B5135
 006B512A    mov         edx,ebx
 006B512C    mov         eax,esi
 006B512E    call        TCustomMaskEdit.GetNextEditChar
 006B5133    mov         ebx,eax
 006B5135    mov         eax,ebx
 006B5137    pop         esi
 006B5138    pop         ebx
 006B5139    ret
*}
end;

//006B513C
{*procedure sub_006B513C(?:TCustomMaskEdit; ?:?; ?:?);
begin
 006B513C    push        ebx
 006B513D    push        esi
 006B513E    add         esp,0FFFFFFF4
 006B5141    mov         word ptr [esp],cx
 006B5145    mov         esi,edx
 006B5147    mov         ebx,eax
 006B5149    lea         ecx,[esp+8]
 006B514D    lea         edx,[esp+4]
 006B5151    mov         eax,ebx
 006B5153    call        TCustomMaskEdit.GetSel
 006B5158    cmp         si,24
>006B515C    jne         006B51AD
 006B515E    test        byte ptr [esp],1
>006B5162    je          006B519A
 006B5164    mov         eax,dword ptr [esp+4]
 006B5168    cmp         eax,dword ptr [ebx+2D8];TCustomMaskEdit.FCaretPos:Integer
>006B516E    je          006B5184
 006B5170    mov         eax,dword ptr [esp+4]
 006B5174    inc         eax
 006B5175    cmp         eax,dword ptr [esp+8]
>006B5179    je          006B5184
 006B517B    mov         eax,dword ptr [esp+4]
 006B517F    inc         eax
 006B5180    mov         dword ptr [esp+8],eax
 006B5184    mov         ecx,dword ptr [esp+8]
 006B5188    xor         edx,edx
 006B518A    mov         eax,ebx
 006B518C    call        TCustomMaskEdit.SetSel
 006B5191    mov         eax,ebx
 006B5193    call        TCustomMaskEdit.CheckCursor
>006B5198    jmp         006B51A3
 006B519A    xor         edx,edx
 006B519C    mov         eax,ebx
 006B519E    call        TCustomMaskEdit.SetCursor
 006B51A3    xor         eax,eax
 006B51A5    mov         dword ptr [ebx+2D8],eax;TCustomMaskEdit.FCaretPos:Integer
>006B51AB    jmp         006B5206
 006B51AD    test        byte ptr [esp],1
>006B51B1    je          006B51ED
 006B51B3    mov         eax,dword ptr [esp+8]
 006B51B7    cmp         eax,dword ptr [ebx+2D8];TCustomMaskEdit.FCaretPos:Integer
>006B51BD    je          006B51D3
 006B51BF    mov         eax,dword ptr [esp+4]
 006B51C3    inc         eax
 006B51C4    cmp         eax,dword ptr [esp+8]
>006B51C8    je          006B51D3
 006B51CA    mov         eax,dword ptr [esp+8]
 006B51CE    dec         eax
 006B51CF    mov         dword ptr [esp+4],eax
 006B51D3    mov         ecx,dword ptr [ebx+2D0];TCustomMaskEdit.FMaxChars:Integer
 006B51D9    mov         edx,dword ptr [esp+4]
 006B51DD    mov         eax,ebx
 006B51DF    call        TCustomMaskEdit.SetSel
 006B51E4    mov         eax,ebx
 006B51E6    call        TCustomMaskEdit.CheckCursor
>006B51EB    jmp         006B51FA
 006B51ED    mov         edx,dword ptr [ebx+2D0];TCustomMaskEdit.FMaxChars:Integer
 006B51F3    mov         eax,ebx
 006B51F5    call        TCustomMaskEdit.SetCursor
 006B51FA    mov         eax,dword ptr [ebx+2D0];TCustomMaskEdit.FMaxChars:Integer
 006B5200    mov         dword ptr [ebx+2D8],eax;TCustomMaskEdit.FCaretPos:Integer
 006B5206    add         esp,0C
 006B5209    pop         esi
 006B520A    pop         ebx
 006B520B    ret
end;*}

//006B520C
procedure TCustomMaskEdit.DeleteKeys(CharCode:Word);
begin
{*
 006B520C    push        ebp
 006B520D    mov         ebp,esp
 006B520F    add         esp,0FFFFFFF4
 006B5212    push        ebx
 006B5213    push        esi
 006B5214    push        edi
 006B5215    xor         ecx,ecx
 006B5217    mov         dword ptr [ebp-4],ecx
 006B521A    mov         esi,edx
 006B521C    mov         ebx,eax
 006B521E    lea         edi,[ebp-8]
 006B5221    xor         eax,eax
 006B5223    push        ebp
 006B5224    push        6B5310
 006B5229    push        dword ptr fs:[eax]
 006B522C    mov         dword ptr fs:[eax],esp
 006B522F    mov         eax,ebx
 006B5231    call        TCustomEdit.GetReadOnly
 006B5236    test        al,al
>006B5238    jne         006B52FA
 006B523E    lea         ecx,[ebp-0C]
 006B5241    mov         edx,edi
 006B5243    mov         eax,ebx
 006B5245    call        TCustomMaskEdit.GetSel
 006B524A    mov         eax,dword ptr [ebp-0C]
 006B524D    sub         eax,dword ptr [edi]
 006B524F    dec         eax
>006B5250    jg          006B5277
 006B5252    cmp         si,8
>006B5256    jne         006B5277
 006B5258    mov         esi,dword ptr [edi]
 006B525A    mov         edx,dword ptr [edi]
 006B525C    mov         eax,ebx
 006B525E    call        TCustomMaskEdit.CursorDec
 006B5263    lea         ecx,[ebp-0C]
 006B5266    mov         edx,edi
 006B5268    mov         eax,ebx
 006B526A    call        TCustomMaskEdit.GetSel
 006B526F    cmp         esi,dword ptr [edi]
>006B5271    je          006B52FA
 006B5277    mov         eax,dword ptr [ebp-0C]
 006B527A    sub         eax,dword ptr [edi]
 006B527C    dec         eax
>006B527D    jl          006B52FA
 006B527F    lea         edx,[ebp-4]
 006B5282    mov         eax,ebx
 006B5284    call        TCustomMaskEdit.GetEditText
 006B5289    mov         eax,dword ptr [ebp-0C]
 006B528C    sub         eax,dword ptr [edi]
 006B528E    push        eax
 006B528F    lea         edx,[ebp-4]
 006B5292    mov         ecx,dword ptr [edi]
 006B5294    mov         eax,ebx
 006B5296    call        TCustomMaskEdit.DeleteSelection
 006B529B    lea         eax,[ebp-4]
 006B529E    push        eax
 006B529F    mov         ecx,dword ptr [ebp-0C]
 006B52A2    sub         ecx,dword ptr [edi]
 006B52A4    mov         edx,dword ptr [edi]
 006B52A6    inc         edx
 006B52A7    mov         eax,dword ptr [ebp-4]
 006B52AA    call        @UStrCopy
 006B52AF    mov         eax,dword ptr [ebp-4]
 006B52B2    push        eax
 006B52B3    mov         eax,ebx
 006B52B5    call        TWinControl.GetHandle
 006B52BA    xor         ecx,ecx
 006B52BC    mov         edx,0C2
 006B52C1    call        SendTextMessage
 006B52C6    mov         eax,dword ptr [ebp-0C]
 006B52C9    sub         eax,dword ptr [edi]
 006B52CB    dec         eax
>006B52CC    je          006B52E4
 006B52CE    mov         edx,dword ptr [edi]
 006B52D0    mov         eax,ebx
 006B52D2    call        TCustomMaskEdit.GetNextEditChar
 006B52D7    mov         dword ptr [edi],eax
 006B52D9    mov         edx,dword ptr [edi]
 006B52DB    mov         eax,ebx
 006B52DD    call        TCustomMaskEdit.SetCursor
>006B52E2    jmp         006B52FA
 006B52E4    lea         ecx,[ebp-0C]
 006B52E7    mov         edx,edi
 006B52E9    mov         eax,ebx
 006B52EB    call        TCustomMaskEdit.GetSel
 006B52F0    mov         edx,dword ptr [edi]
 006B52F2    dec         edx
 006B52F3    mov         eax,ebx
 006B52F5    call        TCustomMaskEdit.SetCursor
 006B52FA    xor         eax,eax
 006B52FC    pop         edx
 006B52FD    pop         ecx
 006B52FE    pop         ecx
 006B52FF    mov         dword ptr fs:[eax],edx
 006B5302    push        6B5317
 006B5307    lea         eax,[ebp-4]
 006B530A    call        @UStrClr
 006B530F    ret
>006B5310    jmp         @HandleFinally
>006B5315    jmp         006B5307
 006B5317    pop         edi
 006B5318    pop         esi
 006B5319    pop         ebx
 006B531A    mov         esp,ebp
 006B531C    pop         ebp
 006B531D    ret
*}
end;

//006B5320
{*procedure TCustomMaskEdit.CMEnter(?:?);
begin
 006B5320    push        ebp
 006B5321    mov         ebp,esp
 006B5323    push        0
 006B5325    push        ebx
 006B5326    push        esi
 006B5327    mov         esi,edx
 006B5329    mov         ebx,eax
 006B532B    xor         eax,eax
 006B532D    push        ebp
 006B532E    push        6B53A3
 006B5333    push        dword ptr fs:[eax]
 006B5336    mov         dword ptr fs:[eax],esp
 006B5339    mov         eax,ebx
 006B533B    call        TCustomMaskEdit.GetMasked
 006B5340    test        al,al
>006B5342    je          006B5384
 006B5344    test        byte ptr [ebx+1C],10;TCustomMaskEdit.FComponentState:TComponentState
>006B5348    jne         006B5384
 006B534A    test        byte ptr [ebx+2D5],2;TCustomMaskEdit.FMaskState:TMaskedState
>006B5351    jne         006B5374
 006B5353    lea         edx,[ebp-4]
 006B5356    mov         eax,ebx
 006B5358    call        TCustomMaskEdit.GetEditText
 006B535D    mov         edx,dword ptr [ebp-4]
 006B5360    lea         eax,[ebx+2E0];TCustomMaskEdit.FOldValue:string
 006B5366    call        @UStrAsg
 006B536B    mov         edx,esi
 006B536D    mov         eax,ebx
 006B536F    call        TCustomEdit.CMEnter
 006B5374    and         byte ptr [ebx+2D5],0FD;TCustomMaskEdit.FMaskState:TMaskedState
 006B537B    mov         eax,ebx
 006B537D    call        TCustomMaskEdit.CheckCursor
>006B5382    jmp         006B538D
 006B5384    mov         edx,esi
 006B5386    mov         eax,ebx
 006B5388    call        TCustomEdit.CMEnter
 006B538D    xor         eax,eax
 006B538F    pop         edx
 006B5390    pop         ecx
 006B5391    pop         ecx
 006B5392    mov         dword ptr fs:[eax],edx
 006B5395    push        6B53AA
 006B539A    lea         eax,[ebp-4]
 006B539D    call        @UStrClr
 006B53A2    ret
>006B53A3    jmp         @HandleFinally
>006B53A8    jmp         006B539A
 006B53AA    pop         esi
 006B53AB    pop         ebx
 006B53AC    pop         ecx
 006B53AD    pop         ebp
 006B53AE    ret
end;*}

//006B53B0
procedure TCustomMaskEdit.CMTextChanged;
begin
{*
 006B53B0    push        ebp
 006B53B1    mov         ebp,esp
 006B53B3    add         esp,0FFFFFFF4
 006B53B6    push        ebx
 006B53B7    xor         ecx,ecx
 006B53B9    mov         dword ptr [ebp-0C],ecx
 006B53BC    mov         ebx,eax
 006B53BE    xor         eax,eax
 006B53C0    push        ebp
 006B53C1    push        6B5431
 006B53C6    push        dword ptr fs:[eax]
 006B53C9    mov         dword ptr fs:[eax],esp
 006B53CC    mov         eax,ebx
 006B53CE    call        TCustomEdit.CMTextChanged
 006B53D3    lea         edx,[ebp-0C]
 006B53D6    mov         eax,ebx
 006B53D8    call        TCustomMaskEdit.GetEditText
 006B53DD    mov         edx,dword ptr [ebp-0C]
 006B53E0    lea         eax,[ebx+2E0];TCustomMaskEdit.FOldValue:string
 006B53E6    call        @UStrAsg
 006B53EB    mov         eax,ebx
 006B53ED    call        TWinControl.HandleAllocated
 006B53F2    test        al,al
>006B53F4    je          006B541B
 006B53F6    lea         ecx,[ebp-8]
 006B53F9    lea         edx,[ebp-4]
 006B53FC    mov         eax,ebx
 006B53FE    call        TCustomMaskEdit.GetSel
 006B5403    mov         edx,dword ptr [ebp-4]
 006B5406    mov         eax,ebx
 006B5408    call        TCustomMaskEdit.GetNextEditChar
 006B540D    cmp         eax,dword ptr [ebp-4]
>006B5410    je          006B541B
 006B5412    mov         edx,eax
 006B5414    mov         eax,ebx
 006B5416    call        TCustomMaskEdit.SetCursor
 006B541B    xor         eax,eax
 006B541D    pop         edx
 006B541E    pop         ecx
 006B541F    pop         ecx
 006B5420    mov         dword ptr fs:[eax],edx
 006B5423    push        6B5438
 006B5428    lea         eax,[ebp-0C]
 006B542B    call        @UStrClr
 006B5430    ret
>006B5431    jmp         @HandleFinally
>006B5436    jmp         006B5428
 006B5438    pop         ebx
 006B5439    mov         esp,ebp
 006B543B    pop         ebp
 006B543C    ret
*}
end;

//006B5440
procedure TCustomMaskEdit.CMWantSpecialKey(var Message:Controls.TCMWantSpecialKey);
begin
{*
 006B5440    push        ebx
 006B5441    push        esi
 006B5442    mov         esi,edx
 006B5444    mov         ebx,eax
 006B5446    mov         edx,esi
 006B5448    mov         eax,ebx
 006B544A    mov         ecx,dword ptr [eax]
 006B544C    call        dword ptr [ecx-10]
 006B544F    cmp         word ptr [esi+4],1B
>006B5454    jne         006B5473
 006B5456    mov         eax,ebx
 006B5458    call        TCustomMaskEdit.GetMasked
 006B545D    test        al,al
>006B545F    je          006B5473
 006B5461    mov         eax,ebx
 006B5463    call        TCustomEdit.GetModified
 006B5468    test        al,al
>006B546A    je          006B5473
 006B546C    mov         dword ptr [esi+0C],1
 006B5473    pop         esi
 006B5474    pop         ebx
 006B5475    ret
*}
end;

//006B5478
procedure TCustomMaskEdit.CMExit(Message:Controls.TCMExit);
begin
{*
 006B5478    push        ebx
 006B5479    push        esi
 006B547A    mov         esi,edx
 006B547C    mov         ebx,eax
 006B547E    mov         eax,ebx
 006B5480    call        TCustomMaskEdit.GetMasked
 006B5485    test        al,al
>006B5487    je          006B54A0
 006B5489    test        byte ptr [ebx+1C],10;TCustomMaskEdit.FComponentState:TComponentState
>006B548D    jne         006B54A0
 006B548F    mov         eax,ebx
 006B5491    mov         edx,dword ptr [eax]
 006B5493    call        dword ptr [edx+13C];TCustomMaskEdit.ValidateEdit
 006B5499    mov         eax,ebx
 006B549B    call        TCustomMaskEdit.CheckCursor
 006B54A0    mov         edx,esi
 006B54A2    mov         eax,ebx
 006B54A4    call        TCustomEdit.CMExit
 006B54A9    pop         esi
 006B54AA    pop         ebx
 006B54AB    ret
*}
end;

//006B54AC
procedure TCustomMaskEdit.ValidateEdit;
begin
{*
 006B54AC    push        ebp
 006B54AD    mov         ebp,esp
 006B54AF    add         esp,0FFFFFFF8
 006B54B2    push        ebx
 006B54B3    push        esi
 006B54B4    xor         edx,edx
 006B54B6    mov         dword ptr [ebp-4],edx
 006B54B9    mov         ebx,eax
 006B54BB    xor         eax,eax
 006B54BD    push        ebp
 006B54BE    push        6B553E
 006B54C3    push        dword ptr fs:[eax]
 006B54C6    mov         dword ptr fs:[eax],esp
 006B54C9    lea         edx,[ebp-4]
 006B54CC    mov         eax,ebx
 006B54CE    call        TCustomMaskEdit.GetEditText
 006B54D3    mov         eax,ebx
 006B54D5    call        TCustomMaskEdit.GetMasked
 006B54DA    test        al,al
>006B54DC    je          006B5528
 006B54DE    mov         eax,ebx
 006B54E0    call        TCustomEdit.GetModified
 006B54E5    test        al,al
>006B54E7    je          006B5528
 006B54E9    lea         ecx,[ebp-8]
 006B54EC    mov         edx,dword ptr [ebp-4]
 006B54EF    mov         eax,ebx
 006B54F1    mov         esi,dword ptr [eax]
 006B54F3    call        dword ptr [esi+134];TCustomMaskEdit.sub_006B5BFC
 006B54F9    test        al,al
>006B54FB    jne         006B5528
 006B54FD    test        byte ptr [ebx+1C],10;TCustomMaskEdit.FComponentState:TComponentState
>006B5501    jne         006B5514
 006B5503    or          byte ptr [ebx+2D5],2;TCustomMaskEdit.FMaskState:TMaskedState
 006B550A    mov         eax,ebx
 006B550C    mov         edx,dword ptr [eax]
 006B550E    call        dword ptr [edx+104];TWinControl.SetFocus
 006B5514    mov         edx,dword ptr [ebp-8]
 006B5517    mov         eax,ebx
 006B5519    call        TCustomMaskEdit.SetCursor
 006B551E    mov         eax,ebx
 006B5520    mov         edx,dword ptr [eax]
 006B5522    call        dword ptr [edx+138];TCustomMaskEdit.sub_006B554C
 006B5528    xor         eax,eax
 006B552A    pop         edx
 006B552B    pop         ecx
 006B552C    pop         ecx
 006B552D    mov         dword ptr fs:[eax],edx
 006B5530    push        6B5545
 006B5535    lea         eax,[ebp-4]
 006B5538    call        @UStrClr
 006B553D    ret
>006B553E    jmp         @HandleFinally
>006B5543    jmp         006B5535
 006B5545    pop         esi
 006B5546    pop         ebx
 006B5547    pop         ecx
 006B5548    pop         ecx
 006B5549    pop         ebp
 006B554A    ret
*}
end;

//006B554C
procedure sub_006B554C;
begin
{*
 006B554C    push        ebx
 006B554D    add         esp,0FFFFFFF8
 006B5550    mov         ebx,eax
 006B5552    push        0
 006B5554    call        user32.MessageBeep
 006B5559    mov         eax,dword ptr [ebx+2C8];TCustomMaskEdit.FEditMask:TEditMask
 006B555F    mov         dword ptr [esp],eax
 006B5562    mov         byte ptr [esp+4],11
 006B5567    push        esp
 006B5568    push        0
 006B556A    mov         ecx,dword ptr ds:[7C4D54];^SResString274:TResStringRec
 006B5570    mov         dl,1
 006B5572    mov         eax,[006B2EE8];EDBEditError
 006B5577    call        Exception.CreateResFmt;EDBEditError.Create
 006B557C    call        @RaiseExcept
 006B5581    pop         ecx
 006B5582    pop         edx
 006B5583    pop         ebx
 006B5584    ret
*}
end;

//006B5588
{*procedure sub_006B5588(?:?; ?:?; ?:?; ?:?);
begin
 006B5588    push        ebp
 006B5589    mov         ebp,esp
 006B558B    push        ecx
 006B558C    push        ebx
 006B558D    push        esi
 006B558E    push        edi
 006B558F    mov         byte ptr [ebp-1],cl
 006B5592    mov         esi,edx
 006B5594    mov         ebx,eax
 006B5596    mov         edi,dword ptr [ebp+8]
 006B5599    cmp         byte ptr [ebp-1],0
>006B559D    jne         006B55B3
 006B559F    push        edi
 006B55A0    mov         cx,20
 006B55A4    mov         edx,esi
 006B55A6    mov         eax,dword ptr [ebx+2C8]
 006B55AC    call        006B25BC
>006B55B1    jmp         006B55C8
 006B55B3    push        edi
 006B55B4    movzx       ecx,word ptr [ebx+2CC]
 006B55BB    mov         edx,esi
 006B55BD    mov         eax,dword ptr [ebx+2C8]
 006B55C3    call        006B25BC
 006B55C8    pop         edi
 006B55C9    pop         esi
 006B55CA    pop         ebx
 006B55CB    pop         ecx
 006B55CC    pop         ebp
 006B55CD    ret         4
end;*}

//006B55D0
{*procedure sub_006B55D0(?:?; ?:?; ?:?);
begin
 006B55D0    push        ebp
 006B55D1    mov         ebp,esp
 006B55D3    add         esp,0FFFFFFE4
 006B55D6    push        ebx
 006B55D7    push        esi
 006B55D8    push        edi
 006B55D9    xor         ebx,ebx
 006B55DB    mov         dword ptr [ebp-1C],ebx
 006B55DE    mov         dword ptr [ebp-4],ebx
 006B55E1    mov         esi,ecx
 006B55E3    mov         ebx,edx
 006B55E5    mov         dword ptr [ebp-8],eax
 006B55E8    xor         eax,eax
 006B55EA    push        ebp
 006B55EB    push        6B57C3
 006B55F0    push        dword ptr fs:[eax]
 006B55F3    mov         dword ptr fs:[eax],esp
 006B55F6    mov         dword ptr [ebp-10],1
 006B55FD    mov         eax,esi
 006B55FF    mov         edx,ebx
 006B5601    call        @UStrAsg
 006B5606    mov         eax,dword ptr [ebp-8]
 006B5609    mov         eax,dword ptr [eax+2C8]
 006B560F    test        eax,eax
>006B5611    je          006B5618
 006B5613    sub         eax,4
 006B5616    mov         eax,dword ptr [eax]
 006B5618    mov         ebx,eax
 006B561A    test        ebx,ebx
>006B561C    jle         006B5695
 006B561E    mov         dword ptr [ebp-14],1
 006B5625    mov         eax,dword ptr [ebp-8]
 006B5628    mov         eax,dword ptr [eax+2C8]
 006B562E    mov         edx,dword ptr [ebp-14]
 006B5631    call        006B22D4
 006B5636    mov         byte ptr [ebp-15],al
 006B5639    movzx       eax,byte ptr [ebp-15]
 006B563D    dec         eax
 006B563E    sub         al,2
>006B5640    jae         006B5682
 006B5642    lea         eax,[ebp-4]
 006B5645    push        eax
 006B5646    mov         ecx,dword ptr [ebp-10]
 006B5649    dec         ecx
 006B564A    mov         eax,dword ptr [esi]
 006B564C    mov         edx,1
 006B5651    call        @UStrCopy
 006B5656    mov         edi,dword ptr [esi]
 006B5658    test        edi,edi
>006B565A    je          006B5661
 006B565C    sub         edi,4
 006B565F    mov         edi,dword ptr [edi]
 006B5661    lea         eax,[ebp-1C]
 006B5664    push        eax
 006B5665    mov         ecx,edi
 006B5667    sub         ecx,dword ptr [ebp-10]
 006B566A    mov         edx,dword ptr [ebp-10]
 006B566D    inc         edx
 006B566E    mov         eax,dword ptr [esi]
 006B5670    call        @UStrCopy
 006B5675    mov         ecx,dword ptr [ebp-1C]
 006B5678    mov         eax,esi
 006B567A    mov         edx,dword ptr [ebp-4]
 006B567D    call        @UStrCat3
 006B5682    movzx       eax,byte ptr [ebp-15]
 006B5686    add         al,0FC
 006B5688    sub         al,2
>006B568A    jae         006B568F
 006B568C    inc         dword ptr [ebp-10]
 006B568F    inc         dword ptr [ebp-14]
 006B5692    dec         ebx
>006B5693    jne         006B5625
 006B5695    mov         eax,dword ptr [ebp-8]
 006B5698    mov         eax,dword ptr [eax+2C8]
 006B569E    mov         edx,1
 006B56A3    call        006B24EC
 006B56A8    mov         ebx,eax
 006B56AA    test        bl,1
>006B56AD    je          006B570A
 006B56AF    mov         dword ptr [ebp-10],1
 006B56B6    mov         eax,dword ptr [esi]
 006B56B8    test        eax,eax
>006B56BA    je          006B56C1
 006B56BC    sub         eax,4
 006B56BF    mov         eax,dword ptr [eax]
 006B56C1    mov         ebx,eax
 006B56C3    test        ebx,ebx
>006B56C5    jle         006B56E6
 006B56C7    mov         edi,1
 006B56CC    mov         eax,dword ptr [esi]
 006B56CE    movzx       eax,word ptr [eax+edi*2-2]
 006B56D3    mov         edx,dword ptr [ebp-8]
 006B56D6    cmp         ax,word ptr [edx+2CC]
>006B56DD    jne         006B56E6
 006B56DF    inc         dword ptr [ebp-10]
 006B56E2    inc         edi
 006B56E3    dec         ebx
>006B56E4    jne         006B56CC
 006B56E6    cmp         dword ptr [ebp-10],1
>006B56EA    je          006B5754
 006B56EC    mov         ebx,dword ptr [esi]
 006B56EE    test        ebx,ebx
>006B56F0    je          006B56F7
 006B56F2    sub         ebx,4
 006B56F5    mov         ebx,dword ptr [ebx]
 006B56F7    push        esi
 006B56F8    mov         ecx,ebx
 006B56FA    sub         ecx,dword ptr [ebp-10]
 006B56FD    inc         ecx
 006B56FE    mov         eax,dword ptr [esi]
 006B5700    mov         edx,dword ptr [ebp-10]
 006B5703    call        @UStrCopy
>006B5708    jmp         006B5754
 006B570A    mov         eax,dword ptr [esi]
 006B570C    test        eax,eax
>006B570E    je          006B5715
 006B5710    sub         eax,4
 006B5713    mov         eax,dword ptr [eax]
 006B5715    mov         dword ptr [ebp-0C],eax
 006B5718    mov         ebx,dword ptr [ebp-0C]
 006B571B    test        ebx,ebx
>006B571D    jle         006B5754
 006B571F    mov         edi,1
 006B5724    mov         eax,dword ptr [ebp-0C]
 006B5727    sub         eax,edi
 006B5729    mov         edx,dword ptr [esi]
 006B572B    movzx       eax,word ptr [edx+eax*2]
 006B572F    mov         edx,dword ptr [ebp-8]
 006B5732    cmp         ax,word ptr [edx+2CC]
>006B5739    jne         006B5754
 006B573B    mov         eax,dword ptr [esi]
 006B573D    test        eax,eax
>006B573F    je          006B5746
 006B5741    sub         eax,4
 006B5744    mov         eax,dword ptr [eax]
 006B5746    mov         edx,eax
 006B5748    dec         edx
 006B5749    mov         eax,esi
 006B574B    call        @UStrSetLength
 006B5750    inc         edi
 006B5751    dec         ebx
>006B5752    jne         006B5724
 006B5754    mov         eax,dword ptr [ebp-8]
 006B5757    cmp         word ptr [eax+2CC],20
>006B575F    je          006B57A5
 006B5761    mov         eax,dword ptr [esi]
 006B5763    test        eax,eax
>006B5765    je          006B576C
 006B5767    sub         eax,4
 006B576A    mov         eax,dword ptr [eax]
 006B576C    mov         dword ptr [ebp-0C],eax
 006B576F    mov         ebx,dword ptr [ebp-0C]
 006B5772    test        ebx,ebx
>006B5774    jle         006B57A5
 006B5776    mov         edi,1
 006B577B    mov         eax,dword ptr [esi]
 006B577D    movzx       eax,word ptr [eax+edi*2-2]
 006B5782    mov         edx,dword ptr [ebp-8]
 006B5785    cmp         ax,word ptr [edx+2CC]
>006B578C    jne         006B579C
 006B578E    mov         eax,esi
 006B5790    call        @UniqueStringU
 006B5795    mov         word ptr [eax+edi*2-2],20
 006B579C    cmp         edi,dword ptr [ebp-0C]
>006B579F    jg          006B57A5
 006B57A1    inc         edi
 006B57A2    dec         ebx
>006B57A3    jne         006B577B
 006B57A5    xor         eax,eax
 006B57A7    pop         edx
 006B57A8    pop         ecx
 006B57A9    pop         ecx
 006B57AA    mov         dword ptr fs:[eax],edx
 006B57AD    push        6B57CA
 006B57B2    lea         eax,[ebp-1C]
 006B57B5    call        @UStrClr
 006B57BA    lea         eax,[ebp-4]
 006B57BD    call        @UStrClr
 006B57C2    ret
>006B57C3    jmp         @HandleFinally
>006B57C8    jmp         006B57B2
 006B57CA    pop         edi
 006B57CB    pop         esi
 006B57CC    pop         ebx
 006B57CD    mov         esp,ebp
 006B57CF    pop         ebp
 006B57D0    ret
end;*}

//006B57D4
{*function sub_006B57D4(?:TCustomMaskEdit; ?:?; ?:Integer):?;
begin
 006B57D4    push        ebx
 006B57D5    push        esi
 006B57D6    push        edi
 006B57D7    push        ebp
 006B57D8    push        ecx
 006B57D9    mov         edi,ecx
 006B57DB    mov         ebp,edx
 006B57DD    mov         esi,eax
 006B57DF    mov         bl,1
 006B57E1    cmp         dword ptr [esi+2C8],0;TCustomMaskEdit.FEditMask:TEditMask
>006B57E8    je          006B5861
 006B57EA    xor         ebx,ebx
 006B57EC    mov         edx,edi
 006B57EE    mov         eax,dword ptr [esi+2C8];TCustomMaskEdit.FEditMask:TEditMask
 006B57F4    call        006B2A4C
 006B57F9    mov         edi,eax
 006B57FB    test        edi,edi
>006B57FD    jl          006B5861
 006B57FF    mov         edx,edi
 006B5801    mov         eax,dword ptr [esi+2C8];TCustomMaskEdit.FEditMask:TEditMask
 006B5807    call        006B22D4
 006B580C    mov         byte ptr [esp],al
 006B580F    movzx       eax,word ptr [ebp]
 006B5813    mov         word ptr [esp+2],ax
 006B5818    mov         edx,ebp
 006B581A    mov         ecx,edi
 006B581C    mov         eax,esi
 006B581E    call        006B5910
 006B5823    mov         ebx,eax
 006B5825    test        bl,bl
>006B5827    jne         006B5861
 006B5829    movzx       eax,byte ptr [esp]
 006B582D    add         al,0FC
 006B582F    sub         al,2
>006B5831    jae         006B5861
 006B5833    movzx       ecx,word ptr [esp+2]
 006B5838    mov         edx,edi
 006B583A    mov         eax,esi
 006B583C    call        006B6074
 006B5841    mov         edi,eax
 006B5843    test        edi,edi
>006B5845    jle         006B5861
 006B5847    mov         edx,edi
 006B5849    mov         eax,dword ptr [esi+2C8];TCustomMaskEdit.FEditMask:TEditMask
 006B584F    call        006B29F4
 006B5854    mov         edi,eax
 006B5856    mov         edx,edi
 006B5858    mov         eax,esi
 006B585A    call        TCustomMaskEdit.SetCursor
>006B585F    jmp         006B586C
 006B5861    test        bl,bl
>006B5863    jne         006B586C
 006B5865    push        0
 006B5867    call        user32.MessageBeep
 006B586C    mov         eax,ebx
 006B586E    pop         edx
 006B586F    pop         ebp
 006B5870    pop         edi
 006B5871    pop         esi
 006B5872    pop         ebx
 006B5873    ret
end;*}

//006B5874
function IsKatakana(const Chr:Byte):Boolean;
begin
{*
 006B5874    mov         edx,dword ptr ds:[7C4EF4];^gvar_007C7CB8:Cardinal
 006B587A    cmp         dword ptr [edx+4],11
>006B587E    jne         006B5886
 006B5880    add         al,5F
 006B5882    sub         al,3F
>006B5884    jb          006B5889
 006B5886    xor         eax,eax
 006B5888    ret
 006B5889    mov         al,1
 006B588B    ret
*}
end;

//006B588C
{*function sub_006B588C(?:?):?;
begin
 006B588C    push        ebp
 006B588D    mov         ebp,esp
 006B588F    push        ebx
 006B5890    mov         eax,dword ptr [ebp+8]
 006B5893    mov         eax,dword ptr [eax-4]
 006B5896    mov         eax,dword ptr [eax+2C8]
 006B589C    test        eax,eax
>006B589E    je          006B58A5
 006B58A0    sub         eax,4
 006B58A3    mov         eax,dword ptr [eax]
 006B58A5    mov         edx,dword ptr [ebp+8]
 006B58A8    cmp         eax,dword ptr [edx-8]
>006B58AB    jle         006B5909
 006B58AD    mov         eax,dword ptr [ebp+8]
 006B58B0    mov         eax,dword ptr [eax-8]
 006B58B3    mov         edx,dword ptr [ebp+8]
 006B58B6    mov         edx,dword ptr [edx-4]
 006B58B9    mov         edx,dword ptr [edx+2C8]
 006B58BF    movzx       edx,word ptr [edx+eax*2-2]
 006B58C4    mov         eax,edx
 006B58C6    mov         ecx,edx
 006B58C8    add         ecx,0FFFFFF9F
 006B58CB    sub         cx,1A
>006B58CF    jae         006B58D7
 006B58D1    mov         eax,edx
 006B58D3    and         ax,0FFDF
 006B58D7    mov         edx,dword ptr [ebp+8]
 006B58DA    mov         edx,dword ptr [edx-8]
 006B58DD    mov         ecx,dword ptr [ebp+8]
 006B58E0    mov         ecx,dword ptr [ecx-4]
 006B58E3    mov         ecx,dword ptr [ecx+2C8]
 006B58E9    movzx       edx,word ptr [ecx+edx*2]
 006B58ED    mov         ecx,edx
 006B58EF    mov         ebx,edx
 006B58F1    add         ebx,0FFFFFF9F
 006B58F4    sub         bx,1A
>006B58F8    jae         006B5901
 006B58FA    mov         ecx,edx
 006B58FC    and         cx,0FFDF
 006B5901    cmp         cx,ax
 006B5904    sete        al
>006B5907    jmp         006B590B
 006B5909    xor         eax,eax
 006B590B    xor         al,1
 006B590D    pop         ebx
 006B590E    pop         ebp
 006B590F    ret
end;*}

//006B5910
{*function sub_006B5910(?:TCustomMaskEdit; ?:?; ?:?):?;
begin
 006B5910    push        ebp
 006B5911    mov         ebp,esp
 006B5913    push        0
 006B5915    push        0
 006B5917    push        0
 006B5919    push        0
 006B591B    push        0
 006B591D    push        0
 006B591F    push        0
 006B5921    push        0
 006B5923    push        ebx
 006B5924    push        esi
 006B5925    push        edi
 006B5926    mov         dword ptr [ebp-8],ecx
 006B5929    mov         esi,edx
 006B592B    mov         dword ptr [ebp-4],eax
 006B592E    xor         eax,eax
 006B5930    push        ebp
 006B5931    push        6B5BDA
 006B5936    push        dword ptr fs:[eax]
 006B5939    mov         dword ptr fs:[eax],esp
 006B593C    mov         bl,1
 006B593E    mov         eax,dword ptr [ebp-4]
 006B5941    mov         eax,dword ptr [eax+2C8];TCustomMaskEdit.FEditMask:TEditMask
 006B5947    mov         edx,dword ptr [ebp-8]
 006B594A    call        006B22D4
 006B594F    dec         eax
 006B5950    sub         al,2
>006B5952    jae         006B5972
 006B5954    mov         eax,dword ptr [ebp-4]
 006B5957    mov         eax,dword ptr [eax+2C8];TCustomMaskEdit.FEditMask:TEditMask
 006B595D    mov         edx,dword ptr [ebp-8]
 006B5960    movzx       eax,word ptr [eax+edx*2-2]
 006B5965    call        006B2594
 006B596A    mov         word ptr [esi],ax
>006B596D    jmp         006B5BB7
 006B5972    mov         eax,dword ptr [ebp-4]
 006B5975    mov         eax,dword ptr [eax+2C8];TCustomMaskEdit.FEditMask:TEditMask
 006B597B    mov         edx,dword ptr [ebp-8]
 006B597E    call        006B24EC
 006B5983    mov         byte ptr [ebp-0D],al
 006B5986    mov         eax,dword ptr [ebp-4]
 006B5989    mov         eax,dword ptr [eax+2C8];TCustomMaskEdit.FEditMask:TEditMask
 006B598F    mov         edx,dword ptr [ebp-8]
 006B5992    movzx       eax,word ptr [eax+edx*2-2]
 006B5997    cmp         eax,43
>006B599A    jg          006B59BF
>006B599C    je          006B5A30
 006B59A2    sub         eax,23
>006B59A5    je          006B59FB
 006B59A7    sub         eax,0D
>006B59AA    je          006B59E4
 006B59AC    sub         eax,9
>006B59AF    je          006B59E4
 006B59B1    sub         eax,8
>006B59B4    je          006B5AD1
>006B59BA    jmp         006B5BB7
 006B59BF    sub         eax,4C
>006B59C2    je          006B5AD1
 006B59C8    sub         eax,15
>006B59CB    je          006B5AD1
 006B59D1    sub         eax,2
>006B59D4    je          006B5A30
 006B59D6    sub         eax,9
>006B59D9    je          006B5AD1
>006B59DF    jmp         006B5BB7
 006B59E4    cmp         word ptr [esi],30
>006B59E8    jb          006B59F4
 006B59EA    cmp         word ptr [esi],39
>006B59EE    jbe         006B5BB7
 006B59F4    xor         ebx,ebx
>006B59F6    jmp         006B5BB7
 006B59FB    cmp         word ptr [esi],30
>006B59FF    jb          006B5A0B
 006B5A01    cmp         word ptr [esi],39
>006B5A05    jbe         006B5BB7
 006B5A0B    cmp         word ptr [esi],20
>006B5A0F    je          006B5BB7
 006B5A15    cmp         word ptr [esi],2B
>006B5A19    je          006B5BB7
 006B5A1F    cmp         word ptr [esi],2D
>006B5A23    je          006B5BB7
 006B5A29    xor         ebx,ebx
>006B5A2B    jmp         006B5BB7
 006B5A30    cmp         word ptr [esi],0D800
>006B5A35    jb          006B5A3E
 006B5A37    cmp         word ptr [esi],0DFFF
>006B5A3C    jbe         006B5A42
 006B5A3E    xor         eax,eax
>006B5A40    jmp         006B5A44
 006B5A42    mov         al,1
 006B5A44    test        al,al
>006B5A46    je          006B5A5D
 006B5A48    push        ebp
 006B5A49    movzx       eax,word ptr [esi]
 006B5A4C    call        006B588C
 006B5A51    pop         ecx
 006B5A52    test        al,al
>006B5A54    je          006B5A5D
 006B5A56    xor         ebx,ebx
>006B5A58    jmp         006B5BB7
 006B5A5D    movzx       eax,word ptr [esi]
 006B5A60    push        eax
 006B5A61    call        user32.IsCharAlphaW
 006B5A66    test        eax,eax
>006B5A68    je          006B5BB7
 006B5A6E    lea         eax,[ebp-0C]
 006B5A71    mov         edx,6B5BF8;' '
 006B5A76    call        @UStrLAsg
 006B5A7B    lea         eax,[ebp-0C]
 006B5A7E    call        @UniqueStringU
 006B5A83    movzx       edx,word ptr [esi]
 006B5A86    mov         word ptr [eax],dx
 006B5A89    test        byte ptr [ebp-0D],2
>006B5A8D    je          006B5AA7
 006B5A8F    lea         edx,[ebp-14]
 006B5A92    mov         eax,dword ptr [ebp-0C]
 006B5A95    call        0041D7DC
 006B5A9A    mov         edx,dword ptr [ebp-14]
 006B5A9D    lea         eax,[ebp-0C]
 006B5AA0    call        @UStrLAsg
>006B5AA5    jmp         006B5AC3
 006B5AA7    test        byte ptr [ebp-0D],4
>006B5AAB    je          006B5AC3
 006B5AAD    lea         edx,[ebp-18]
 006B5AB0    mov         eax,dword ptr [ebp-0C]
 006B5AB3    call        AnsiLowerCase
 006B5AB8    mov         edx,dword ptr [ebp-18]
 006B5ABB    lea         eax,[ebp-0C]
 006B5ABE    call        @UStrLAsg
 006B5AC3    mov         eax,dword ptr [ebp-0C]
 006B5AC6    movzx       eax,word ptr [eax]
 006B5AC9    mov         word ptr [esi],ax
>006B5ACC    jmp         006B5BB7
 006B5AD1    cmp         word ptr [esi],0D800
>006B5AD6    jb          006B5ADF
 006B5AD8    cmp         word ptr [esi],0DFFF
>006B5ADD    jbe         006B5AE3
 006B5ADF    xor         eax,eax
>006B5AE1    jmp         006B5AE5
 006B5AE3    mov         al,1
 006B5AE5    test        al,al
>006B5AE7    je          006B5B02
 006B5AE9    push        ebp
 006B5AEA    movzx       eax,word ptr [esi]
 006B5AED    call        006B588C
 006B5AF2    pop         ecx
 006B5AF3    test        al,al
>006B5AF5    je          006B5BB7
 006B5AFB    xor         ebx,ebx
>006B5AFD    jmp         006B5BB7
 006B5B02    lea         eax,[ebp-0C]
 006B5B05    mov         edx,6B5BF8;' '
 006B5B0A    call        @UStrLAsg
 006B5B0F    lea         eax,[ebp-0C]
 006B5B12    call        @UniqueStringU
 006B5B17    movzx       edx,word ptr [esi]
 006B5B1A    mov         word ptr [eax],dx
 006B5B1D    movzx       eax,word ptr [esi]
 006B5B20    call        IsKatakana
 006B5B25    test        al,al
>006B5B27    je          006B5B37
 006B5B29    mov         eax,dword ptr [ebp-0C]
 006B5B2C    movzx       eax,word ptr [eax]
 006B5B2F    mov         word ptr [esi],ax
>006B5B32    jmp         006B5BB7
 006B5B37    movzx       eax,word ptr [esi]
 006B5B3A    push        eax
 006B5B3B    call        user32.IsCharAlphaW
 006B5B40    test        eax,eax
>006B5B42    jne         006B5B74
 006B5B44    xor         ebx,ebx
 006B5B46    mov         eax,dword ptr [ebp-4]
 006B5B49    mov         eax,dword ptr [eax+2C8];TCustomMaskEdit.FEditMask:TEditMask
 006B5B4F    mov         edx,dword ptr [ebp-8]
 006B5B52    movzx       edi,word ptr [eax+edx*2-2]
 006B5B57    cmp         di,41
>006B5B5B    je          006B5B63
 006B5B5D    cmp         di,61
>006B5B61    jne         006B5BAE
 006B5B63    movzx       eax,word ptr [esi]
 006B5B66    push        eax
 006B5B67    call        user32.IsCharAlphaNumericW
 006B5B6C    test        eax,eax
>006B5B6E    je          006B5BAE
 006B5B70    mov         bl,1
>006B5B72    jmp         006B5BAE
 006B5B74    test        byte ptr [ebp-0D],2
>006B5B78    je          006B5B92
 006B5B7A    lea         edx,[ebp-1C]
 006B5B7D    mov         eax,dword ptr [ebp-0C]
 006B5B80    call        0041D7DC
 006B5B85    mov         edx,dword ptr [ebp-1C]
 006B5B88    lea         eax,[ebp-0C]
 006B5B8B    call        @UStrLAsg
>006B5B90    jmp         006B5BAE
 006B5B92    test        byte ptr [ebp-0D],4
>006B5B96    je          006B5BAE
 006B5B98    lea         edx,[ebp-20]
 006B5B9B    mov         eax,dword ptr [ebp-0C]
 006B5B9E    call        AnsiLowerCase
 006B5BA3    mov         edx,dword ptr [ebp-20]
 006B5BA6    lea         eax,[ebp-0C]
 006B5BA9    call        @UStrLAsg
 006B5BAE    mov         eax,dword ptr [ebp-0C]
 006B5BB1    movzx       eax,word ptr [eax]
 006B5BB4    mov         word ptr [esi],ax
 006B5BB7    xor         eax,eax
 006B5BB9    pop         edx
 006B5BBA    pop         ecx
 006B5BBB    pop         ecx
 006B5BBC    mov         dword ptr fs:[eax],edx
 006B5BBF    push        6B5BE1
 006B5BC4    lea         eax,[ebp-20]
 006B5BC7    mov         edx,4
 006B5BCC    call        @UStrArrayClr
 006B5BD1    lea         eax,[ebp-0C]
 006B5BD4    call        @UStrClr
 006B5BD9    ret
>006B5BDA    jmp         @HandleFinally
>006B5BDF    jmp         006B5BC4
 006B5BE1    mov         eax,ebx
 006B5BE3    pop         edi
 006B5BE4    pop         esi
 006B5BE5    pop         ebx
 006B5BE6    mov         esp,ebp
 006B5BE8    pop         ebp
 006B5BE9    ret
end;*}

//006B5BFC
{*procedure sub_006B5BFC(?:?; ?:?);
begin
 006B5BFC    push        ebx
 006B5BFD    push        esi
 006B5BFE    push        edi
 006B5BFF    push        ebp
 006B5C00    add         esp,0FFFFFFF0
 006B5C03    mov         dword ptr [esp+4],ecx
 006B5C07    mov         dword ptr [esp],edx
 006B5C0A    mov         ebp,eax
 006B5C0C    mov         byte ptr [esp+8],1
 006B5C11    mov         dword ptr [esp+0C],1
 006B5C19    mov         eax,dword ptr [ebp+2C8];TCustomMaskEdit.FEditMask:TEditMask
 006B5C1F    test        eax,eax
>006B5C21    je          006B5C28
 006B5C23    sub         eax,4
 006B5C26    mov         eax,dword ptr [eax]
 006B5C28    mov         esi,eax
 006B5C2A    test        esi,esi
>006B5C2C    jle         006B5CAA
 006B5C2E    mov         edi,1
 006B5C33    mov         eax,dword ptr [ebp+2C8];TCustomMaskEdit.FEditMask:TEditMask
 006B5C39    mov         edx,edi
 006B5C3B    call        006B22D4
 006B5C40    mov         ebx,eax
 006B5C42    mov         eax,ebx
 006B5C44    dec         eax
 006B5C45    sub         al,2
>006B5C47    jb          006B5C4D
 006B5C49    sub         al,2
>006B5C4B    jne         006B5C53
 006B5C4D    inc         dword ptr [esp+0C]
>006B5C51    jmp         006B5CA6
 006B5C53    cmp         bl,4
>006B5C56    jne         006B5CA6
 006B5C58    cmp         dword ptr [esp],0
>006B5C5C    je          006B5CA6
 006B5C5E    mov         eax,dword ptr [esp]
 006B5C61    mov         edx,dword ptr [esp+0C]
 006B5C65    movzx       eax,word ptr [eax+edx*2-2]
 006B5C6A    cmp         ax,word ptr [ebp+2CC];TCustomMaskEdit.FMaskBlank:Char
>006B5C71    je          006B5C90
 006B5C73    mov         eax,dword ptr [esp]
 006B5C76    mov         edx,dword ptr [esp+0C]
 006B5C7A    cmp         word ptr [eax+edx*2-2],20
>006B5C80    jne         006B5CA2
 006B5C82    mov         eax,dword ptr [ebp+2C8];TCustomMaskEdit.FEditMask:TEditMask
 006B5C88    cmp         word ptr [eax+edi*2-2],43
>006B5C8E    je          006B5CA2
 006B5C90    mov         byte ptr [esp+8],0
 006B5C95    mov         eax,dword ptr [esp+0C]
 006B5C99    dec         eax
 006B5C9A    mov         edx,dword ptr [esp+4]
 006B5C9E    mov         dword ptr [edx],eax
>006B5CA0    jmp         006B5CAA
 006B5CA2    inc         dword ptr [esp+0C]
 006B5CA6    inc         edi
 006B5CA7    dec         esi
>006B5CA8    jne         006B5C33
 006B5CAA    movzx       eax,byte ptr [esp+8]
 006B5CAF    add         esp,10
 006B5CB2    pop         ebp
 006B5CB3    pop         edi
 006B5CB4    pop         esi
 006B5CB5    pop         ebx
 006B5CB6    ret
end;*}

//006B5CB8
function TCustomMaskEdit.DeleteSelection(var Value:UnicodeString; Offset:Integer; Len:Integer):Boolean;
begin
{*
 006B5CB8    push        ebp
 006B5CB9    mov         ebp,esp
 006B5CBB    add         esp,0FFFFFFEC
 006B5CBE    push        ebx
 006B5CBF    push        esi
 006B5CC0    push        edi
 006B5CC1    mov         dword ptr [ebp-8],ecx
 006B5CC4    mov         dword ptr [ebp-4],edx
 006B5CC7    mov         edi,eax
 006B5CC9    mov         eax,dword ptr [ebp+8]
 006B5CCC    mov         byte ptr [ebp-9],1
 006B5CD0    test        eax,eax
>006B5CD2    je          006B5D49
 006B5CD4    mov         ebx,dword ptr [ebp-8]
 006B5CD7    inc         ebx
 006B5CD8    add         eax,ebx
 006B5CDA    mov         dword ptr [ebp-10],eax
 006B5CDD    mov         eax,dword ptr [edi+2C8]
 006B5CE3    mov         edx,dword ptr [ebp-8]
 006B5CE6    call        006B2A4C
 006B5CEB    test        eax,eax
>006B5CED    jl          006B5D49
 006B5CEF    mov         edx,eax
 006B5CF1    mov         eax,dword ptr [edi+2C8]
 006B5CF7    test        eax,eax
>006B5CF9    je          006B5D00
 006B5CFB    sub         eax,4
 006B5CFE    mov         eax,dword ptr [eax]
 006B5D00    mov         esi,eax
 006B5D02    sub         esi,edx
>006B5D04    jl          006B5D49
 006B5D06    inc         esi
 006B5D07    mov         dword ptr [ebp-14],edx
 006B5D0A    mov         eax,dword ptr [edi+2C8]
 006B5D10    mov         edx,dword ptr [ebp-14]
 006B5D13    call        006B22D4
 006B5D18    mov         edx,eax
 006B5D1A    dec         edx
 006B5D1B    sub         dl,2
>006B5D1E    jae         006B5D23
 006B5D20    inc         ebx
>006B5D21    jmp         006B5D3E
 006B5D23    add         al,0FC
 006B5D25    sub         al,2
>006B5D27    jae         006B5D3E
 006B5D29    mov         eax,dword ptr [ebp-4]
 006B5D2C    call        @UniqueStringU
 006B5D31    movzx       edx,word ptr [edi+2CC]
 006B5D38    mov         word ptr [eax+ebx*2-2],dx
 006B5D3D    inc         ebx
 006B5D3E    cmp         ebx,dword ptr [ebp-10]
>006B5D41    jge         006B5D49
 006B5D43    inc         dword ptr [ebp-14]
 006B5D46    dec         esi
>006B5D47    jne         006B5D0A
 006B5D49    movzx       eax,byte ptr [ebp-9]
 006B5D4D    pop         edi
 006B5D4E    pop         esi
 006B5D4F    pop         ebx
 006B5D50    mov         esp,ebp
 006B5D52    pop         ebp
 006B5D53    ret         4
*}
end;

//006B5D58
{*function sub_006B5D58(?:TCustomMaskEdit; ?:UnicodeString; ?:?; ?:?):?;
begin
 006B5D58    push        ebp
 006B5D59    mov         ebp,esp
 006B5D5B    push        ecx
 006B5D5C    mov         ecx,7
 006B5D61    push        0
 006B5D63    push        0
 006B5D65    dec         ecx
>006B5D66    jne         006B5D61
 006B5D68    xchg        ecx,dword ptr [ebp-4]
 006B5D6B    push        ebx
 006B5D6C    push        esi
 006B5D6D    push        edi
 006B5D6E    mov         edi,ecx
 006B5D70    mov         dword ptr [ebp-8],edx
 006B5D73    mov         esi,eax
 006B5D75    xor         eax,eax
 006B5D77    push        ebp
 006B5D78    push        6B605E
 006B5D7D    push        dword ptr fs:[eax]
 006B5D80    mov         dword ptr fs:[eax],esp
 006B5D83    mov         eax,dword ptr [ebp+8]
 006B5D86    mov         dword ptr [ebp-0C],eax
 006B5D89    test        edi,edi
>006B5D8B    je          006B603B
 006B5D91    mov         ebx,1
 006B5D96    lea         eax,[ebp-4]
 006B5D99    mov         edx,edi
 006B5D9B    call        @UStrLAsg
 006B5DA0    mov         edx,dword ptr [ebp+8]
 006B5DA3    mov         eax,dword ptr [esi+2C8];TCustomMaskEdit.FEditMask:TEditMask
 006B5DA9    call        006B2A4C
 006B5DAE    mov         edi,eax
 006B5DB0    test        edi,edi
>006B5DB2    jl          006B603B
 006B5DB8    mov         dword ptr [ebp-10],edi
>006B5DBB    jmp         006B5EFF
 006B5DC0    mov         edx,dword ptr [ebp-10]
 006B5DC3    mov         eax,dword ptr [esi+2C8];TCustomMaskEdit.FEditMask:TEditMask
 006B5DC9    call        006B22D4
 006B5DCE    mov         byte ptr [ebp-11],al
 006B5DD1    movzx       eax,byte ptr [ebp-11]
 006B5DD5    dec         eax
 006B5DD6    sub         al,2
>006B5DD8    jb          006B5DE3
 006B5DDA    dec         eax
 006B5DDB    sub         al,2
>006B5DDD    jae         006B5EDF
 006B5DE3    mov         eax,dword ptr [ebp-4]
 006B5DE6    movzx       eax,word ptr [eax+ebx*2-2]
 006B5DEB    mov         word ptr [ebp-14],ax
 006B5DEF    lea         edx,[ebp-14]
 006B5DF2    mov         ecx,dword ptr [ebp-10]
 006B5DF5    mov         eax,esi
 006B5DF7    call        006B5910
 006B5DFC    test        al,al
>006B5DFE    jne         006B5E38
 006B5E00    cmp         word ptr [ebp-14],0D800
>006B5E06    jb          006B5E10
 006B5E08    cmp         word ptr [ebp-14],0DFFF
>006B5E0E    jbe         006B5E14
 006B5E10    xor         eax,eax
>006B5E12    jmp         006B5E16
 006B5E14    mov         al,1
 006B5E16    test        al,al
>006B5E18    je          006B5E2D
 006B5E1A    lea         eax,[ebp-4]
 006B5E1D    call        @UniqueStringU
 006B5E22    movzx       edx,word ptr [esi+2CC];TCustomMaskEdit.FMaskBlank:Char
 006B5E29    mov         word ptr [eax+ebx*2],dx
 006B5E2D    movzx       eax,word ptr [esi+2CC];TCustomMaskEdit.FMaskBlank:Char
 006B5E34    mov         word ptr [ebp-14],ax
 006B5E38    movzx       eax,byte ptr [ebp-11]
 006B5E3C    dec         eax
 006B5E3D    sub         al,2
>006B5E3F    jae         006B5E4F
 006B5E41    mov         eax,dword ptr [ebp-4]
 006B5E44    movzx       eax,word ptr [eax+ebx*2-2]
 006B5E49    cmp         ax,word ptr [ebp-14]
>006B5E4D    jne         006B5E80
 006B5E4F    lea         eax,[ebp-4]
 006B5E52    call        @UniqueStringU
 006B5E57    movzx       edx,word ptr [ebp-14]
 006B5E5B    mov         word ptr [eax+ebx*2-2],dx
 006B5E60    cmp         word ptr [ebp-14],0D800
>006B5E66    jb          006B5E70
 006B5E68    cmp         word ptr [ebp-14],0DFFF
>006B5E6E    jbe         006B5E74
 006B5E70    xor         eax,eax
>006B5E72    jmp         006B5E76
 006B5E74    mov         al,1
 006B5E76    test        al,al
>006B5E78    je          006B5EDE
 006B5E7A    inc         ebx
 006B5E7B    inc         dword ptr [ebp-10]
>006B5E7E    jmp         006B5EDE
 006B5E80    mov         eax,dword ptr [ebp-4]
 006B5E83    mov         dword ptr [ebp-18],eax
 006B5E86    cmp         dword ptr [ebp-18],0
>006B5E8A    je          006B5E97
 006B5E8C    mov         eax,dword ptr [ebp-18]
 006B5E8F    sub         eax,4
 006B5E92    mov         eax,dword ptr [eax]
 006B5E94    mov         dword ptr [ebp-18],eax
 006B5E97    lea         eax,[ebp-20]
 006B5E9A    push        eax
 006B5E9B    mov         ecx,ebx
 006B5E9D    dec         ecx
 006B5E9E    mov         edx,1
 006B5EA3    mov         eax,dword ptr [ebp-4]
 006B5EA6    call        @UStrCopy
 006B5EAB    push        dword ptr [ebp-20]
 006B5EAE    lea         eax,[ebp-24]
 006B5EB1    movzx       edx,word ptr [ebp-14]
 006B5EB5    call        @UStrFromWChar
 006B5EBA    push        dword ptr [ebp-24]
 006B5EBD    lea         eax,[ebp-28]
 006B5EC0    push        eax
 006B5EC1    mov         ecx,dword ptr [ebp-18]
 006B5EC4    mov         edx,ebx
 006B5EC6    mov         eax,dword ptr [ebp-4]
 006B5EC9    call        @UStrCopy
 006B5ECE    push        dword ptr [ebp-28]
 006B5ED1    lea         eax,[ebp-4]
 006B5ED4    mov         edx,3
 006B5ED9    call        @UStrCatN
 006B5EDE    inc         ebx
 006B5EDF    mov         eax,ebx
 006B5EE1    add         eax,dword ptr [ebp+8]
 006B5EE4    cmp         eax,dword ptr [esi+2D0];TCustomMaskEdit.FMaxChars:Integer
>006B5EEA    jg          006B5F13
 006B5EEC    mov         edi,dword ptr [ebp-4]
 006B5EEF    test        edi,edi
>006B5EF1    je          006B5EF8
 006B5EF3    sub         edi,4
 006B5EF6    mov         edi,dword ptr [edi]
 006B5EF8    cmp         edi,ebx
>006B5EFA    jl          006B5F13
 006B5EFC    inc         dword ptr [ebp-10]
 006B5EFF    mov         eax,dword ptr [esi+2C8];TCustomMaskEdit.FEditMask:TEditMask
 006B5F05    call        @UStrLen
 006B5F0A    cmp         eax,dword ptr [ebp-10]
>006B5F0D    jge         006B5DC0
 006B5F13    mov         edx,dword ptr [ebp-4]
 006B5F16    mov         eax,edx
 006B5F18    test        eax,eax
>006B5F1A    je          006B5F21
 006B5F1C    sub         eax,4
 006B5F1F    mov         eax,dword ptr [eax]
 006B5F21    add         eax,dword ptr [ebp+8]
 006B5F24    cmp         eax,dword ptr [esi+2D0];TCustomMaskEdit.FMaxChars:Integer
>006B5F2A    jge         006B5FDC
 006B5F30    mov         edi,edx
 006B5F32    test        edi,edi
>006B5F34    je          006B5F3B
 006B5F36    sub         edi,4
 006B5F39    mov         edi,dword ptr [edi]
 006B5F3B    mov         edx,dword ptr [ebp+8]
 006B5F3E    add         edx,edi
 006B5F40    inc         edx
 006B5F41    mov         eax,dword ptr [ebp-8]
 006B5F44    mov         eax,dword ptr [eax]
 006B5F46    call        00424DC0
 006B5F4B    cmp         al,2
>006B5F4D    jne         006B5F6A
 006B5F4F    lea         eax,[ebp-2C]
 006B5F52    movzx       edx,word ptr [esi+2CC];TCustomMaskEdit.FMaskBlank:Char
 006B5F59    call        @UStrFromWChar
 006B5F5E    mov         edx,dword ptr [ebp-2C]
 006B5F61    lea         eax,[ebp-4]
 006B5F64    call        @UStrCat
 006B5F69    inc         ebx
 006B5F6A    mov         eax,dword ptr [ebp-4]
 006B5F6D    mov         edi,eax
 006B5F6F    test        edi,edi
>006B5F71    je          006B5F78
 006B5F73    sub         edi,4
 006B5F76    mov         edi,dword ptr [edi]
 006B5F78    mov         dword ptr [ebp-1C],eax
 006B5F7B    cmp         dword ptr [ebp-1C],0
>006B5F7F    je          006B5F8C
 006B5F81    mov         eax,dword ptr [ebp-1C]
 006B5F84    sub         eax,4
 006B5F87    mov         eax,dword ptr [eax]
 006B5F89    mov         dword ptr [ebp-1C],eax
 006B5F8C    lea         eax,[ebp-30]
 006B5F8F    push        eax
 006B5F90    mov         eax,dword ptr [ebp-8]
 006B5F93    mov         eax,dword ptr [eax]
 006B5F95    mov         ecx,dword ptr [ebp+8]
 006B5F98    mov         edx,1
 006B5F9D    call        @UStrCopy
 006B5FA2    push        dword ptr [ebp-30]
 006B5FA5    push        dword ptr [ebp-4]
 006B5FA8    lea         eax,[ebp-34]
 006B5FAB    push        eax
 006B5FAC    mov         eax,dword ptr [ebp+8]
 006B5FAF    add         eax,dword ptr [ebp-1C]
 006B5FB2    mov         ecx,dword ptr [esi+2D0];TCustomMaskEdit.FMaxChars:Integer
 006B5FB8    sub         ecx,eax
 006B5FBA    mov         edx,dword ptr [ebp+8]
 006B5FBD    add         edx,edi
 006B5FBF    inc         edx
 006B5FC0    mov         eax,dword ptr [ebp-8]
 006B5FC3    mov         eax,dword ptr [eax]
 006B5FC5    call        @UStrCopy
 006B5FCA    push        dword ptr [ebp-34]
 006B5FCD    mov         eax,dword ptr [ebp-8]
 006B5FD0    mov         edx,3
 006B5FD5    call        @UStrCatN
>006B5FDA    jmp         006B6034
 006B5FDC    mov         edi,dword ptr [ebp+8]
 006B5FDF    mov         edx,dword ptr [esi+2D0];TCustomMaskEdit.FMaxChars:Integer
 006B5FE5    sub         edx,dword ptr [ebp+8]
 006B5FE8    mov         eax,dword ptr [ebp-4]
 006B5FEB    call        00424DC0
 006B5FF0    cmp         al,1
>006B5FF2    jne         006B5FF5
 006B5FF4    inc         edi
 006B5FF5    lea         eax,[ebp-38]
 006B5FF8    push        eax
 006B5FF9    mov         ecx,dword ptr [esi+2D0];TCustomMaskEdit.FMaxChars:Integer
 006B5FFF    sub         ecx,edi
 006B6001    mov         edx,1
 006B6006    mov         eax,dword ptr [ebp-4]
 006B6009    call        @UStrCopy
 006B600E    mov         eax,dword ptr [ebp-38]
 006B6011    push        eax
 006B6012    lea         eax,[ebp-3C]
 006B6015    push        eax
 006B6016    mov         eax,dword ptr [ebp-8]
 006B6019    mov         eax,dword ptr [eax]
 006B601B    mov         ecx,dword ptr [ebp+8]
 006B601E    mov         edx,1
 006B6023    call        @UStrCopy
 006B6028    mov         edx,dword ptr [ebp-3C]
 006B602B    mov         eax,dword ptr [ebp-8]
 006B602E    pop         ecx
 006B602F    call        @UStrCat3
 006B6034    add         ebx,dword ptr [ebp+8]
 006B6037    dec         ebx
 006B6038    mov         dword ptr [ebp-0C],ebx
 006B603B    xor         eax,eax
 006B603D    pop         edx
 006B603E    pop         ecx
 006B603F    pop         ecx
 006B6040    mov         dword ptr fs:[eax],edx
 006B6043    push        6B6065
 006B6048    lea         eax,[ebp-3C]
 006B604B    mov         edx,8
 006B6050    call        @UStrArrayClr
 006B6055    lea         eax,[ebp-4]
 006B6058    call        @UStrClr
 006B605D    ret
>006B605E    jmp         @HandleFinally
>006B6063    jmp         006B6048
 006B6065    mov         eax,dword ptr [ebp-0C]
 006B6068    pop         edi
 006B6069    pop         esi
 006B606A    pop         ebx
 006B606B    mov         esp,ebp
 006B606D    pop         ebp
 006B606E    ret         4
end;*}

//006B6074
{*function sub_006B6074(?:TCustomMaskEdit; ?:?; ?:?):?;
begin
 006B6074    push        ebx
 006B6075    push        esi
 006B6076    push        edi
 006B6077    push        ebp
 006B6078    add         esp,0FFFFFFF8
 006B607B    mov         word ptr [esp],cx
 006B607F    mov         edi,edx
 006B6081    mov         esi,eax
 006B6083    mov         dword ptr [esp+4],0FFFFFFFF
>006B608B    jmp         006B60C9
 006B608D    inc         edi
 006B608E    mov         edx,edi
 006B6090    mov         eax,dword ptr [esi+2C8];TCustomMaskEdit.FEditMask:TEditMask
 006B6096    call        006B22D4
 006B609B    mov         ebx,eax
 006B609D    mov         eax,ebx
 006B609F    dec         eax
 006B60A0    sub         al,2
>006B60A2    jae         006B60C9
 006B60A4    mov         eax,dword ptr [esi+2C8];TCustomMaskEdit.FEditMask:TEditMask
 006B60AA    movzx       ebp,word ptr [eax+edi*2-2]
 006B60AF    cmp         bl,2
>006B60B2    jne         006B60BD
 006B60B4    mov         eax,ebp
 006B60B6    call        006B2594
 006B60BB    mov         ebp,eax
 006B60BD    cmp         bp,word ptr [esp]
>006B60C1    jne         006B60D8
 006B60C3    mov         dword ptr [esp+4],edi
>006B60C7    jmp         006B60D8
 006B60C9    mov         eax,dword ptr [esi+2C8];TCustomMaskEdit.FEditMask:TEditMask
 006B60CF    call        @UStrLen
 006B60D4    cmp         edi,eax
>006B60D6    jl          006B608D
 006B60D8    mov         eax,dword ptr [esp+4]
 006B60DC    pop         ecx
 006B60DD    pop         edx
 006B60DE    pop         ebp
 006B60DF    pop         edi
 006B60E0    pop         esi
 006B60E1    pop         ebx
 006B60E2    ret
end;*}

//006B9408
procedure InvalidOp(const id:UnicodeString);
begin
{*
 006B9408    push        ebx
 006B9409    mov         ebx,eax
 006B940B    mov         ecx,ebx
 006B940D    mov         dl,1
 006B940F    mov         eax,[006B60E4];EInvalidGridOperation
 006B9414    call        Exception.Create
 006B9419    call        @RaiseExcept
 006B941E    pop         ebx
 006B941F    ret
*}
end;

//006B9420
function GridRect(Coord1:TGridCoord; Coord2:TGridCoord):TGridRect;
begin
{*
 006B9420    push        esi
 006B9421    push        edi
 006B9422    add         esp,0FFFFFFF0
 006B9425    mov         esi,edx
 006B9427    lea         edi,[esp+8]
 006B942B    movs        dword ptr [edi],dword ptr [esi]
 006B942C    movs        dword ptr [edi],dword ptr [esi]
 006B942D    mov         esi,eax
 006B942F    lea         edi,[esp]
 006B9432    movs        dword ptr [edi],dword ptr [esi]
 006B9433    movs        dword ptr [edi],dword ptr [esi]
 006B9434    mov         eax,dword ptr [esp+8]
 006B9438    mov         dword ptr [ecx],eax
 006B943A    mov         eax,dword ptr [esp]
 006B943D    cmp         eax,dword ptr [esp+8]
>006B9441    jge         006B9445
 006B9443    mov         dword ptr [ecx],eax
 006B9445    mov         eax,dword ptr [esp]
 006B9448    mov         dword ptr [ecx+8],eax
 006B944B    mov         eax,dword ptr [esp+8]
 006B944F    cmp         eax,dword ptr [esp]
>006B9452    jle         006B9457
 006B9454    mov         dword ptr [ecx+8],eax
 006B9457    mov         eax,dword ptr [esp+0C]
 006B945B    mov         dword ptr [ecx+4],eax
 006B945E    mov         eax,dword ptr [esp+4]
 006B9462    cmp         eax,dword ptr [esp+0C]
>006B9466    jge         006B946B
 006B9468    mov         dword ptr [ecx+4],eax
 006B946B    mov         eax,dword ptr [esp+4]
 006B946F    mov         dword ptr [ecx+0C],eax
 006B9472    mov         eax,dword ptr [esp+0C]
 006B9476    cmp         eax,dword ptr [esp+4]
>006B947A    jle         006B947F
 006B947C    mov         dword ptr [ecx+0C],eax
 006B947F    add         esp,10
 006B9482    pop         edi
 006B9483    pop         esi
 006B9484    ret
*}
end;

//006B9488
function PointInGridRect(Col:LongInt; Row:LongInt; const Rect:TGridRect):Boolean;
begin
{*
 006B9488    cmp         eax,dword ptr [ecx]
>006B948A    jl          006B949B
 006B948C    cmp         eax,dword ptr [ecx+8]
>006B948F    jg          006B949B
 006B9491    cmp         edx,dword ptr [ecx+4]
>006B9494    jl          006B949B
 006B9496    cmp         edx,dword ptr [ecx+0C]
>006B9499    jle         006B949E
 006B949B    xor         eax,eax
 006B949D    ret
 006B949E    mov         al,1
 006B94A0    ret
*}
end;

//006B94A4
function PtInRect(X:Integer; Y:Integer; const Rect:Types.TRect):Boolean;
begin
{*
 006B94A4    cmp         eax,dword ptr [ecx]
>006B94A6    jl          006B94B7
 006B94A8    cmp         eax,dword ptr [ecx+8]
>006B94AB    jg          006B94B7
 006B94AD    cmp         edx,dword ptr [ecx+4]
>006B94B0    jl          006B94B7
 006B94B2    cmp         edx,dword ptr [ecx+0C]
>006B94B5    jle         006B94BA
 006B94B7    xor         eax,eax
 006B94B9    ret
 006B94BA    mov         al,1
 006B94BC    ret
*}
end;

//006B94C0
function Includes(const P1:Types.TPoint; var P2:Types.TPoint):Boolean;
begin
{*
 006B94C0    push        ebp
 006B94C1    mov         ebp,esp
 006B94C3    push        ebx
 006B94C4    push        esi
 006B94C5    mov         esi,edx
 006B94C7    mov         ebx,eax
 006B94C9    mov         eax,dword ptr [ebp+8]
 006B94CC    mov         ecx,dword ptr [eax-4]
 006B94CF    mov         edx,dword ptr [ebx+4]
 006B94D2    mov         eax,dword ptr [ebx]
 006B94D4    call        PtInRect
 006B94D9    test        al,al
>006B94DB    jne         006B94F5
 006B94DD    mov         eax,dword ptr [ebp+8]
 006B94E0    mov         ecx,dword ptr [eax-8]
 006B94E3    mov         edx,dword ptr [ebx+4]
 006B94E6    mov         eax,dword ptr [ebx]
 006B94E8    call        PtInRect
 006B94ED    test        al,al
>006B94EF    jne         006B94F5
 006B94F1    xor         eax,eax
>006B94F3    jmp         006B94F7
 006B94F5    mov         al,1
 006B94F7    test        al,al
>006B94F9    je          006B9505
 006B94FB    mov         edx,dword ptr [ebx]
 006B94FD    mov         dword ptr [esi],edx
 006B94FF    mov         edx,dword ptr [ebx+4]
 006B9502    mov         dword ptr [esi+4],edx
 006B9505    pop         esi
 006B9506    pop         ebx
 006B9507    pop         ebp
 006B9508    ret
*}
end;

//006B950C
function Build(var R:Types.TRect; const P1:Types.TPoint; const P2:Types.TPoint; const P3:Types.TPoint):Boolean;
begin
{*
 006B950C    push        ebp
 006B950D    mov         ebp,esp
 006B950F    push        ecx
 006B9510    push        ebx
 006B9511    push        esi
 006B9512    push        edi
 006B9513    mov         dword ptr [ebp-4],ecx
 006B9516    mov         edi,edx
 006B9518    mov         esi,eax
 006B951A    mov         bl,1
 006B951C    mov         eax,dword ptr [ebp+0C]
 006B951F    push        eax
 006B9520    mov         edx,esi
 006B9522    mov         eax,edi
 006B9524    call        Includes
 006B9529    pop         ecx
 006B952A    test        al,al
>006B952C    je          006B9552
 006B952E    mov         eax,dword ptr [ebp+0C]
 006B9531    push        eax
 006B9532    lea         edx,[esi+8]
 006B9535    mov         eax,dword ptr [ebp+8]
 006B9538    call        Includes
 006B953D    pop         ecx
 006B953E    test        al,al
>006B9540    jne         006B9577
 006B9542    mov         eax,dword ptr [ebp-4]
 006B9545    mov         edx,dword ptr [eax]
 006B9547    mov         dword ptr [esi+8],edx
 006B954A    mov         edx,dword ptr [eax+4]
 006B954D    mov         dword ptr [esi+0C],edx
>006B9550    jmp         006B9577
 006B9552    mov         eax,dword ptr [ebp+0C]
 006B9555    push        eax
 006B9556    mov         edx,esi
 006B9558    mov         eax,dword ptr [ebp-4]
 006B955B    call        Includes
 006B9560    pop         ecx
 006B9561    test        al,al
>006B9563    je          006B9575
 006B9565    mov         eax,dword ptr [ebp+8]
 006B9568    mov         edx,dword ptr [eax]
 006B956A    mov         dword ptr [esi+8],edx
 006B956D    mov         edx,dword ptr [eax+4]
 006B9570    mov         dword ptr [esi+0C],edx
>006B9573    jmp         006B9577
 006B9575    xor         ebx,ebx
 006B9577    mov         eax,ebx
 006B9579    pop         edi
 006B957A    pop         esi
 006B957B    pop         ebx
 006B957C    pop         ecx
 006B957D    pop         ebp
 006B957E    ret         4
*}
end;

//006B9584
procedure XorRects(const R1:Types.TRect; const R2:Types.TRect; var XorRects:TXorRects);
begin
{*
 006B9584    push        ebp
 006B9585    mov         ebp,esp
 006B9587    add         esp,0FFFFFF78
 006B958D    push        ebx
 006B958E    push        esi
 006B958F    push        edi
 006B9590    mov         ebx,ecx
 006B9592    mov         dword ptr [ebp-8],edx
 006B9595    mov         dword ptr [ebp-4],eax
 006B9598    mov         eax,ebx
 006B959A    xor         ecx,ecx
 006B959C    mov         edx,40
 006B95A1    call        @FillChar
 006B95A6    mov         ecx,dword ptr [ebp-8]
 006B95A9    mov         edx,dword ptr [ebp-4]
 006B95AC    lea         eax,[ebp-78]
 006B95AF    call        IntersectRect
 006B95B4    test        al,al
>006B95B6    jne         006B95D4
 006B95B8    mov         eax,dword ptr [ebp-4]
 006B95BB    mov         esi,eax
 006B95BD    mov         edi,ebx
 006B95BF    movs        dword ptr [edi],dword ptr [esi]
 006B95C0    movs        dword ptr [edi],dword ptr [esi]
 006B95C1    movs        dword ptr [edi],dword ptr [esi]
 006B95C2    movs        dword ptr [edi],dword ptr [esi]
 006B95C3    mov         eax,dword ptr [ebp-8]
 006B95C6    mov         esi,eax
 006B95C8    lea         edi,[ebx+10]
 006B95CB    movs        dword ptr [edi],dword ptr [esi]
 006B95CC    movs        dword ptr [edi],dword ptr [esi]
 006B95CD    movs        dword ptr [edi],dword ptr [esi]
 006B95CE    movs        dword ptr [edi],dword ptr [esi]
>006B95CF    jmp         006B96EC
 006B95D4    mov         ecx,dword ptr [ebp-8]
 006B95D7    mov         edx,dword ptr [ebp-4]
 006B95DA    lea         eax,[ebp-88]
 006B95E0    call        UnionRect
 006B95E5    mov         edx,dword ptr [ebp-84]
 006B95EB    mov         eax,dword ptr [ebp-88]
 006B95F1    mov         dword ptr [ebp-10],eax
 006B95F4    mov         dword ptr [ebp-0C],edx
 006B95F7    mov         edx,dword ptr [ebp-74]
 006B95FA    mov         dword ptr [ebp-18],eax
 006B95FD    mov         dword ptr [ebp-14],edx
 006B9600    mov         edx,dword ptr [ebp-6C]
 006B9603    mov         dword ptr [ebp-20],eax
 006B9606    mov         dword ptr [ebp-1C],edx
 006B9609    push        ebp
 006B960A    lea         eax,[ebp-20]
 006B960D    push        eax
 006B960E    lea         ecx,[ebp-18]
 006B9611    lea         edx,[ebp-10]
 006B9614    mov         eax,ebx
 006B9616    call        Build
 006B961B    pop         ecx
 006B961C    test        al,al
>006B961E    je          006B9626
 006B9620    mov         eax,dword ptr [ebp-78]
 006B9623    mov         dword ptr [ebx+8],eax
 006B9626    mov         eax,dword ptr [ebp-84]
 006B962C    mov         edx,eax
 006B962E    mov         ecx,dword ptr [ebp-78]
 006B9631    mov         dword ptr [ebp-28],ecx
 006B9634    mov         dword ptr [ebp-24],edx
 006B9637    mov         edx,dword ptr [ebp-70]
 006B963A    mov         ecx,eax
 006B963C    mov         dword ptr [ebp-30],edx
 006B963F    mov         dword ptr [ebp-2C],ecx
 006B9642    mov         edx,dword ptr [ebp-80]
 006B9645    mov         dword ptr [ebp-38],edx
 006B9648    mov         dword ptr [ebp-34],eax
 006B964B    push        ebp
 006B964C    lea         eax,[ebp-38]
 006B964F    push        eax
 006B9650    lea         ecx,[ebp-30]
 006B9653    lea         edx,[ebp-28]
 006B9656    lea         eax,[ebx+10]
 006B9659    call        Build
 006B965E    pop         ecx
 006B965F    test        al,al
>006B9661    je          006B9669
 006B9663    mov         eax,dword ptr [ebp-74]
 006B9666    mov         dword ptr [ebx+1C],eax
 006B9669    mov         eax,dword ptr [ebp-80]
 006B966C    mov         edx,eax
 006B966E    mov         ecx,dword ptr [ebp-74]
 006B9671    mov         dword ptr [ebp-40],edx
 006B9674    mov         dword ptr [ebp-3C],ecx
 006B9677    mov         edx,eax
 006B9679    mov         ecx,dword ptr [ebp-6C]
 006B967C    mov         dword ptr [ebp-48],edx
 006B967F    mov         dword ptr [ebp-44],ecx
 006B9682    mov         edx,dword ptr [ebp-7C]
 006B9685    mov         dword ptr [ebp-50],eax
 006B9688    mov         dword ptr [ebp-4C],edx
 006B968B    push        ebp
 006B968C    lea         eax,[ebp-50]
 006B968F    push        eax
 006B9690    lea         ecx,[ebp-48]
 006B9693    lea         edx,[ebp-40]
 006B9696    lea         eax,[ebx+20]
 006B9699    call        Build
 006B969E    pop         ecx
 006B969F    test        al,al
>006B96A1    je          006B96A9
 006B96A3    mov         eax,dword ptr [ebp-70]
 006B96A6    mov         dword ptr [ebx+20],eax
 006B96A9    mov         eax,dword ptr [ebp-7C]
 006B96AC    mov         edx,eax
 006B96AE    mov         ecx,dword ptr [ebp-88]
 006B96B4    mov         dword ptr [ebp-58],ecx
 006B96B7    mov         dword ptr [ebp-54],edx
 006B96BA    mov         edx,eax
 006B96BC    mov         ecx,dword ptr [ebp-78]
 006B96BF    mov         dword ptr [ebp-60],ecx
 006B96C2    mov         dword ptr [ebp-5C],edx
 006B96C5    mov         edx,dword ptr [ebp-70]
 006B96C8    mov         dword ptr [ebp-68],edx
 006B96CB    mov         dword ptr [ebp-64],eax
 006B96CE    push        ebp
 006B96CF    lea         eax,[ebp-68]
 006B96D2    push        eax
 006B96D3    lea         ecx,[ebp-60]
 006B96D6    lea         edx,[ebp-58]
 006B96D9    lea         eax,[ebx+30]
 006B96DC    call        Build
 006B96E1    pop         ecx
 006B96E2    test        al,al
>006B96E4    je          006B96EC
 006B96E6    mov         eax,dword ptr [ebp-6C]
 006B96E9    mov         dword ptr [ebx+34],eax
 006B96EC    pop         edi
 006B96ED    pop         esi
 006B96EE    pop         ebx
 006B96EF    mov         esp,ebp
 006B96F1    pop         ebp
 006B96F2    ret
*}
end;

//006B96F4
procedure ModifyExtents(var Extents:Pointer; Index:LongInt; Amount:LongInt; Default:Integer);
begin
{*
 006B96F4    push        ebp
 006B96F5    mov         ebp,esp
 006B96F7    push        0
 006B96F9    push        0
 006B96FB    push        0
 006B96FD    push        0
 006B96FF    push        ebx
 006B9700    push        esi
 006B9701    push        edi
 006B9702    mov         edi,ecx
 006B9704    mov         dword ptr [ebp-4],edx
 006B9707    mov         ebx,eax
 006B9709    xor         eax,eax
 006B970B    push        ebp
 006B970C    push        6B97D4
 006B9711    push        dword ptr fs:[eax]
 006B9714    mov         dword ptr fs:[eax],esp
 006B9717    test        edi,edi
>006B9719    je          006B97B9
 006B971F    cmp         dword ptr [ebx],0
>006B9722    jne         006B9728
 006B9724    xor         esi,esi
>006B9726    jmp         006B972C
 006B9728    mov         eax,dword ptr [ebx]
 006B972A    mov         esi,dword ptr [eax]
 006B972C    cmp         dword ptr [ebp-4],0
>006B9730    jl          006B9737
 006B9732    cmp         esi,dword ptr [ebp-4]
>006B9735    jge         006B974C
 006B9737    lea         edx,[ebp-8]
 006B973A    mov         eax,[007C4AA4];^SResString269:TResStringRec
 006B973F    call        LoadResString
 006B9744    mov         eax,dword ptr [ebp-8]
 006B9747    call        InvalidOp
 006B974C    add         edi,esi
 006B974E    mov         esi,edi
 006B9750    test        esi,esi
>006B9752    jge         006B976B
 006B9754    lea         edx,[ebp-0C]
 006B9757    mov         eax,[007C47FC];^SResString268:TResStringRec
 006B975C    call        LoadResString
 006B9761    mov         eax,dword ptr [ebp-0C]
 006B9764    call        InvalidOp
>006B9769    jmp         006B9788
 006B976B    cmp         esi,7FFFFFE
>006B9771    jl          006B9788
 006B9773    lea         edx,[ebp-10]
 006B9776    mov         eax,[007C4938];^SResString267:TResStringRec
 006B977B    call        LoadResString
 006B9780    mov         eax,dword ptr [ebp-10]
 006B9783    call        InvalidOp
 006B9788    test        esi,esi
>006B978A    jle         006B978D
 006B978C    inc         esi
 006B978D    mov         edx,esi
 006B978F    add         edx,edx
 006B9791    add         edx,edx
 006B9793    mov         eax,ebx
 006B9795    call        @ReallocMem
 006B979A    cmp         dword ptr [ebx],0
>006B979D    je          006B97B9
 006B979F    mov         eax,dword ptr [ebp-4]
 006B97A2    inc         eax
 006B97A3    cmp         esi,eax
>006B97A5    jle         006B97B4
 006B97A7    mov         edx,dword ptr [ebx]
 006B97A9    mov         ecx,dword ptr [ebp+8]
 006B97AC    mov         dword ptr [edx+eax*4],ecx
 006B97AF    inc         eax
 006B97B0    cmp         esi,eax
>006B97B2    jg          006B97A7
 006B97B4    dec         esi
 006B97B5    mov         eax,dword ptr [ebx]
 006B97B7    mov         dword ptr [eax],esi
 006B97B9    xor         eax,eax
 006B97BB    pop         edx
 006B97BC    pop         ecx
 006B97BD    pop         ecx
 006B97BE    mov         dword ptr fs:[eax],edx
 006B97C1    push        6B97DB
 006B97C6    lea         eax,[ebp-10]
 006B97C9    mov         edx,3
 006B97CE    call        @UStrArrayClr
 006B97D3    ret
>006B97D4    jmp         @HandleFinally
>006B97D9    jmp         006B97C6
 006B97DB    pop         edi
 006B97DC    pop         esi
 006B97DD    pop         ebx
 006B97DE    mov         esp,ebp
 006B97E0    pop         ebp
 006B97E1    ret         4
*}
end;

//006B97E4
procedure UpdateExtents(var Extents:Pointer; NewSize:LongInt; Default:Integer);
begin
{*
 006B97E4    push        ebx
 006B97E5    push        esi
 006B97E6    xor         esi,esi
 006B97E8    cmp         dword ptr [eax],0
>006B97EB    je          006B97F1
 006B97ED    mov         ebx,dword ptr [eax]
 006B97EF    mov         esi,dword ptr [ebx]
 006B97F1    push        ecx
 006B97F2    mov         ecx,edx
 006B97F4    sub         ecx,esi
 006B97F6    mov         edx,esi
 006B97F8    call        ModifyExtents
 006B97FD    pop         esi
 006B97FE    pop         ebx
 006B97FF    ret
*}
end;

//006B9800
procedure MoveExtent(var Extents:Pointer; FromIndex:LongInt; ToIndex:LongInt);
begin
{*
 006B9800    push        ebx
 006B9801    push        esi
 006B9802    push        edi
 006B9803    push        ebp
 006B9804    mov         esi,ecx
 006B9806    mov         ebx,eax
 006B9808    cmp         dword ptr [ebx],0
>006B980B    je          006B9854
 006B980D    mov         eax,dword ptr [ebx]
 006B980F    mov         edi,dword ptr [eax+edx*4]
 006B9812    cmp         esi,edx
>006B9814    jle         006B9833
 006B9816    mov         eax,esi
 006B9818    sub         eax,edx
 006B981A    mov         ecx,eax
 006B981C    add         ecx,ecx
 006B981E    add         ecx,ecx
 006B9820    mov         eax,dword ptr [ebx]
 006B9822    lea         eax,[eax+edx*4+4]
 006B9826    mov         ebp,dword ptr [ebx]
 006B9828    lea         edx,[ebp+edx*4]
 006B982C    call        Move
>006B9831    jmp         006B984F
 006B9833    cmp         esi,edx
>006B9835    jge         006B984F
 006B9837    mov         eax,dword ptr [ebx]
 006B9839    lea         eax,[eax+esi*4]
 006B983C    mov         ecx,dword ptr [ebx]
 006B983E    lea         ecx,[ecx+esi*4+4]
 006B9842    sub         edx,esi
 006B9844    add         edx,edx
 006B9846    add         edx,edx
 006B9848    xchg        ecx,edx
 006B984A    call        Move
 006B984F    mov         eax,dword ptr [ebx]
 006B9851    mov         dword ptr [eax+esi*4],edi
 006B9854    pop         ebp
 006B9855    pop         edi
 006B9856    pop         esi
 006B9857    pop         ebx
 006B9858    ret
*}
end;

//006B985C
function CompareExtents(E1:Pointer; E2:Pointer):Boolean;
begin
{*
 006B985C    push        ebx
 006B985D    push        esi
 006B985E    push        edi
 006B985F    mov         edi,edx
 006B9861    xor         edx,edx
 006B9863    test        eax,eax
>006B9865    je          006B9884
 006B9867    test        edi,edi
>006B9869    je          006B9889
 006B986B    mov         esi,dword ptr [eax]
 006B986D    test        esi,esi
>006B986F    jl          006B9880
 006B9871    inc         esi
 006B9872    xor         ecx,ecx
 006B9874    mov         ebx,dword ptr [eax+ecx*4]
 006B9877    cmp         ebx,dword ptr [edi+ecx*4]
>006B987A    jne         006B9889
 006B987C    inc         ecx
 006B987D    dec         esi
>006B987E    jne         006B9874
 006B9880    mov         dl,1
>006B9882    jmp         006B9889
 006B9884    test        edi,edi
 006B9886    sete        dl
 006B9889    mov         eax,edx
 006B988B    pop         edi
 006B988C    pop         esi
 006B988D    pop         ebx
 006B988E    ret
*}
end;

//006B9890
function kernel32.MulDiv(nNumerator:Integer; nDenominator:Integer):Integer; stdcall;
begin
{*
 006B9890    jmp         dword ptr ds:[905508]
*}
end;

//006B9898
constructor TInplaceEdit.Create;
begin
{*
 006B9898    push        ebx
 006B9899    push        esi
 006B989A    test        dl,dl
>006B989C    je          006B98A6
 006B989E    add         esp,0FFFFFFF0
 006B98A1    call        @ClassCreate
 006B98A6    mov         ebx,edx
 006B98A8    mov         esi,eax
 006B98AA    xor         edx,edx
 006B98AC    mov         eax,esi
 006B98AE    call        TCustomMaskEdit.Create
 006B98B3    xor         edx,edx
 006B98B5    mov         eax,esi
 006B98B7    call        TWinControl.SetParentCtl3D
 006B98BC    xor         edx,edx
 006B98BE    mov         eax,esi
 006B98C0    call        TWinControl.SetCtl3D
 006B98C5    xor         edx,edx
 006B98C7    mov         eax,esi
 006B98C9    call        TWinControl.SetTabStop
 006B98CE    xor         edx,edx
 006B98D0    mov         eax,esi
 006B98D2    call        TCustomEdit.SetBorderStyle
 006B98D7    xor         edx,edx
 006B98D9    mov         eax,esi
 006B98DB    call        TWinControl.SetDoubleBuffered
 006B98E0    mov         eax,esi
 006B98E2    test        bl,bl
>006B98E4    je          006B98F5
 006B98E6    call        @AfterConstruction
 006B98EB    pop         dword ptr fs:[0]
 006B98F2    add         esp,0C
 006B98F5    mov         eax,esi
 006B98F7    pop         esi
 006B98F8    pop         ebx
 006B98F9    ret
*}
end;

//006B98FC
procedure TInplaceEdit.CreateParams(var Params:Controls.TCreateParams);
begin
{*
 006B98FC    push        ebx
 006B98FD    mov         ebx,edx
 006B98FF    mov         edx,ebx
 006B9901    call        TCustomEdit.CreateParams
 006B9906    or          dword ptr [ebx+4],4
 006B990A    pop         ebx
 006B990B    ret
*}
end;

//006B990C
{*procedure sub_006B990C(?:?; ?:?);
begin
 006B990C    mov         dword ptr [eax+2E8],edx
 006B9912    ret
end;*}

//006B9914
procedure TInplaceEdit.CMShowingChanged;
begin
{*
 006B9914    ret
*}
end;

//006B9918
{*procedure TInplaceEdit.WMGetDlgCode(?:?);
begin
 006B9918    push        ebx
 006B9919    push        esi
 006B991A    mov         esi,edx
 006B991C    mov         ebx,eax
 006B991E    mov         edx,esi
 006B9920    mov         eax,ebx
 006B9922    mov         ecx,dword ptr [eax]
 006B9924    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
 006B9927    mov         eax,dword ptr [ebx+2E8];TInplaceEdit.FGrid:TCustomGrid
 006B992D    test        byte ptr [eax+2D5],8;TCustomGrid.?f2D5:byte
>006B9934    je          006B993A
 006B9936    or          dword ptr [esi+0C],2
 006B993A    pop         esi
 006B993B    pop         ebx
 006B993C    ret
end;*}

//006B9940
{*procedure TInplaceEdit.WMPaste(?:?);
begin
 006B9940    push        ebx
 006B9941    push        esi
 006B9942    mov         esi,edx
 006B9944    mov         ebx,eax
 006B9946    mov         eax,ebx
 006B9948    mov         edx,dword ptr [eax]
 006B994A    call        dword ptr [edx+12C];TInplaceEdit.sub_006B99F0
 006B9950    test        al,al
>006B9952    je          006B995D
 006B9954    mov         edx,esi
 006B9956    mov         eax,ebx
 006B9958    call        TCustomMaskEdit.WMPaste
 006B995D    pop         esi
 006B995E    pop         ebx
 006B995F    ret
end;*}

//006B9960
{*procedure TInplaceEdit.WMClear(?:?);
begin
 006B9960    push        ebx
 006B9961    push        esi
 006B9962    mov         esi,edx
 006B9964    mov         ebx,eax
 006B9966    mov         eax,ebx
 006B9968    mov         edx,dword ptr [eax]
 006B996A    call        dword ptr [edx+12C];TInplaceEdit.sub_006B99F0
 006B9970    test        al,al
>006B9972    je          006B997D
 006B9974    mov         edx,esi
 006B9976    mov         eax,ebx
 006B9978    mov         ecx,dword ptr [eax]
 006B997A    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
 006B997D    pop         esi
 006B997E    pop         ebx
 006B997F    ret
end;*}

//006B9980
{*procedure TInplaceEdit.WMCut(?:?);
begin
 006B9980    push        ebx
 006B9981    push        esi
 006B9982    mov         esi,edx
 006B9984    mov         ebx,eax
 006B9986    mov         eax,ebx
 006B9988    mov         edx,dword ptr [eax]
 006B998A    call        dword ptr [edx+12C];TInplaceEdit.sub_006B99F0
 006B9990    test        al,al
>006B9992    je          006B999D
 006B9994    mov         edx,esi
 006B9996    mov         eax,ebx
 006B9998    call        TCustomMaskEdit.WMCut
 006B999D    pop         esi
 006B999E    pop         ebx
 006B999F    ret
end;*}

//006B99A0
procedure TInplaceEdit.sub_004E8C50;
begin
{*
 006B99A0    push        esi
 006B99A1    mov         esi,eax
 006B99A3    mov         eax,dword ptr [esi+2E8];TInplaceEdit.FGrid:TCustomGrid
 006B99A9    mov         si,0FFEA
 006B99AD    call        @CallDynaInst;TControl.sub_004E8C50
 006B99B2    pop         esi
 006B99B3    ret
*}
end;

//006B99B4
{*procedure TInplaceEdit.sub_004E7A2C(?:?; ?:?; ?:?);
begin
 006B99B4    push        ebp
 006B99B5    mov         ebp,esp
 006B99B7    add         esp,0FFFFFFF4
 006B99BA    push        esi
 006B99BB    push        edi
 006B99BC    mov         esi,dword ptr [ebp+8]
 006B99BF    lea         edi,[ebp-0C]
 006B99C2    movs        dword ptr [edi],dword ptr [esi]
 006B99C3    movs        dword ptr [edi],dword ptr [esi]
 006B99C4    mov         edi,ecx
 006B99C6    mov         word ptr [ebp-2],dx
 006B99CA    mov         esi,eax
 006B99CC    lea         eax,[ebp-0C]
 006B99CF    push        eax
 006B99D0    mov         ecx,edi
 006B99D2    movzx       edx,word ptr [ebp-2]
 006B99D6    mov         eax,dword ptr [esi+2E8];TInplaceEdit.FGrid:TCustomGrid
 006B99DC    mov         si,0FFE3
 006B99E0    call        @CallDynaInst;TControl.sub_004E7A2C
 006B99E5    pop         edi
 006B99E6    pop         esi
 006B99E7    mov         esp,ebp
 006B99E9    pop         ebp
 006B99EA    ret         4
end;*}

//006B99F0
procedure sub_006B99F0;
begin
{*
 006B99F0    push        esi
 006B99F1    mov         eax,dword ptr [eax+2E8];TInplaceEdit.FGrid:TCustomGrid
 006B99F7    mov         si,0FFAA
 006B99FB    call        @CallDynaInst;TCustomGrid.sub_006BA870
 006B9A00    pop         esi
 006B9A01    ret
*}
end;

//006B9A04
{*procedure sub_006B9A04(?:?);
begin
 006B9A04    push        ebp
 006B9A05    mov         ebp,esp
 006B9A07    push        esi
 006B9A08    mov         eax,dword ptr [ebp+8]
 006B9A0B    movzx       ecx,word ptr [eax-0A]
 006B9A0F    mov         eax,dword ptr [ebp+8]
 006B9A12    mov         edx,dword ptr [eax-8]
 006B9A15    mov         eax,dword ptr [ebp+8]
 006B9A18    mov         eax,dword ptr [eax-4]
 006B9A1B    mov         eax,dword ptr [eax+2E8]
 006B9A21    mov         si,0FFB8
 006B9A25    call        @CallDynaInst
 006B9A2A    mov         eax,dword ptr [ebp+8]
 006B9A2D    mov         eax,dword ptr [eax-8]
 006B9A30    mov         word ptr [eax],0
 006B9A35    pop         esi
 006B9A36    pop         ebp
 006B9A37    ret
end;*}

//006B9A38
{*procedure sub_006B9A38(?:?);
begin
 006B9A38    push        ebp
 006B9A39    mov         ebp,esp
 006B9A3B    add         esp,0FFFFFFF8
 006B9A3E    mov         eax,dword ptr [ebp+8]
 006B9A41    mov         eax,dword ptr [eax-4]
 006B9A44    mov         eax,dword ptr [eax+2E8]
 006B9A4A    mov         edx,dword ptr [eax+238]
 006B9A50    mov         dword ptr [ebp-8],edx
 006B9A53    mov         edx,dword ptr [eax+23C]
 006B9A59    mov         dword ptr [ebp-4],edx
 006B9A5C    cmp         word ptr [ebp-6],0
>006B9A61    je          006B9A79
 006B9A63    mov         edx,dword ptr [ebp+8]
 006B9A66    movzx       edx,word ptr [edx-0A]
 006B9A6A    push        edx
 006B9A6B    mov         edx,dword ptr [ebp+8]
 006B9A6E    mov         ecx,dword ptr [edx-8]
 006B9A71    mov         edx,eax
 006B9A73    mov         eax,dword ptr [ebp-4]
 006B9A76    call        dword ptr [ebp-8]
 006B9A79    pop         ecx
 006B9A7A    pop         ecx
 006B9A7B    pop         ebp
 006B9A7C    ret
end;*}

//006B9A80
{*function sub_006B9A80(?:?):Boolean;
begin
 006B9A80    push        ebp
 006B9A81    mov         ebp,esp
 006B9A83    mov         eax,dword ptr [ebp+8]
 006B9A86    mov         eax,dword ptr [eax-4]
 006B9A89    mov         eax,dword ptr [eax+2E8]
 006B9A8F    test        byte ptr [eax+2D5],20
 006B9A96    setne       al
 006B9A99    pop         ebp
 006B9A9A    ret
end;*}

//006B9A9C
function Ctrl:Boolean;
begin
{*
 006B9A9C    push        ebp
 006B9A9D    mov         ebp,esp
 006B9A9F    mov         eax,dword ptr [ebp+8]
 006B9AA2    test        byte ptr [eax-0A],4
 006B9AA6    setne       al
 006B9AA9    pop         ebp
 006B9AAA    ret
*}
end;

//006B9AAC
function Selection:TSelection;
begin
{*
 006B9AAC    push        ebp
 006B9AAD    mov         ebp,esp
 006B9AAF    push        ebx
 006B9AB0    mov         ebx,eax
 006B9AB2    lea         eax,[ebx+4]
 006B9AB5    push        eax
 006B9AB6    push        ebx
 006B9AB7    push        0B0
 006B9ABC    mov         eax,dword ptr [ebp+8]
 006B9ABF    mov         eax,dword ptr [eax-4]
 006B9AC2    call        TWinControl.GetHandle
 006B9AC7    push        eax
 006B9AC8    call        user32.SendMessageW
 006B9ACD    pop         ebx
 006B9ACE    pop         ebp
 006B9ACF    ret
*}
end;

//006B9AD0
function CaretPos:Integer;
begin
{*
 006B9AD0    push        ebp
 006B9AD1    mov         ebp,esp
 006B9AD3    add         esp,0FFFFFFF8
 006B9AD6    lea         eax,[ebp-8]
 006B9AD9    push        eax
 006B9ADA    call        user32.GetCaretPos
 006B9ADF    mov         eax,dword ptr [ebp+8]
 006B9AE2    mov         eax,dword ptr [eax-4]
 006B9AE5    call        TWinControl.GetHandle
 006B9AEA    movzx       edx,word ptr [ebp-4]
 006B9AEE    movzx       ecx,word ptr [ebp-8]
 006B9AF2    movzx       edx,dx
 006B9AF5    shl         edx,10
 006B9AF8    or          ecx,edx
 006B9AFA    push        ecx
 006B9AFB    push        0
 006B9AFD    push        0D7
 006B9B02    push        eax
 006B9B03    call        user32.SendMessageW
 006B9B08    pop         ecx
 006B9B09    pop         ecx
 006B9B0A    pop         ebp
 006B9B0B    ret
*}
end;

//006B9B0C
function RightSide:Boolean;
begin
{*
 006B9B0C    push        ebp
 006B9B0D    mov         ebp,esp
 006B9B0F    add         esp,0FFFFFFF8
 006B9B12    push        ebx
 006B9B13    push        esi
 006B9B14    mov         eax,dword ptr [ebp+8]
 006B9B17    push        eax
 006B9B18    lea         eax,[ebp-8]
 006B9B1B    call        Selection
 006B9B20    pop         ecx
 006B9B21    mov         eax,dword ptr [ebp+8]
 006B9B24    mov         eax,dword ptr [eax-4]
 006B9B27    call        TCustomMaskEdit.GetTextLen
 006B9B2C    mov         esi,eax
 006B9B2E    mov         eax,dword ptr [ebp+8]
 006B9B31    push        eax
 006B9B32    call        CaretPos
 006B9B37    pop         ecx
 006B9B38    cmp         esi,eax
>006B9B3A    jne         006B9B58
 006B9B3C    mov         ebx,dword ptr [ebp-8]
 006B9B3F    test        ebx,ebx
>006B9B41    je          006B9B48
 006B9B43    cmp         ebx,dword ptr [ebp-4]
>006B9B46    jne         006B9B58
 006B9B48    mov         eax,dword ptr [ebp+8]
 006B9B4B    mov         eax,dword ptr [eax-4]
 006B9B4E    call        TCustomMaskEdit.GetTextLen
 006B9B53    cmp         eax,dword ptr [ebp-4]
>006B9B56    je          006B9B5C
 006B9B58    xor         eax,eax
>006B9B5A    jmp         006B9B5E
 006B9B5C    mov         al,1
 006B9B5E    pop         esi
 006B9B5F    pop         ebx
 006B9B60    pop         ecx
 006B9B61    pop         ecx
 006B9B62    pop         ebp
 006B9B63    ret
*}
end;

//006B9B64
function LeftSide:Boolean;
begin
{*
 006B9B64    push        ebp
 006B9B65    mov         ebp,esp
 006B9B67    add         esp,0FFFFFFF8
 006B9B6A    push        ebx
 006B9B6B    mov         eax,dword ptr [ebp+8]
 006B9B6E    push        eax
 006B9B6F    lea         eax,[ebp-8]
 006B9B72    call        Selection
 006B9B77    pop         ecx
 006B9B78    mov         eax,dword ptr [ebp+8]
 006B9B7B    push        eax
 006B9B7C    call        CaretPos
 006B9B81    pop         ecx
 006B9B82    test        eax,eax
>006B9B84    jne         006B9BA2
 006B9B86    cmp         dword ptr [ebp-8],0
>006B9B8A    jne         006B9BA2
 006B9B8C    mov         ebx,dword ptr [ebp-4]
 006B9B8F    test        ebx,ebx
>006B9B91    je          006B9BA6
 006B9B93    mov         eax,dword ptr [ebp+8]
 006B9B96    mov         eax,dword ptr [eax-4]
 006B9B99    call        TCustomMaskEdit.GetTextLen
 006B9B9E    cmp         ebx,eax
>006B9BA0    je          006B9BA6
 006B9BA2    xor         eax,eax
>006B9BA4    jmp         006B9BA8
 006B9BA6    mov         al,1
 006B9BA8    pop         ebx
 006B9BA9    pop         ecx
 006B9BAA    pop         ecx
 006B9BAB    pop         ebp
 006B9BAC    ret
*}
end;

//006B9BB0
{*procedure TInplaceEdit.sub_004EE9E0(?:?; ?:?);
begin
 006B9BB0    push        ebp
 006B9BB1    mov         ebp,esp
 006B9BB3    add         esp,0FFFFFFF4
 006B9BB6    push        esi
 006B9BB7    mov         word ptr [ebp-0A],cx
 006B9BBB    mov         dword ptr [ebp-8],edx
 006B9BBE    mov         dword ptr [ebp-4],eax
 006B9BC1    mov         eax,dword ptr [ebp-8]
 006B9BC4    movzx       eax,word ptr [eax]
 006B9BC7    cmp         eax,26
>006B9BCA    jg          006B9C09
>006B9BCC    je          006B9C38
 006B9BCE    cmp         eax,23
>006B9BD1    jg          006B9BF4
>006B9BD3    je          006B9D34
 006B9BD9    sub         eax,9
>006B9BDC    je          006B9D78
 006B9BE2    sub         eax,12
>006B9BE5    je          006B9C38
 006B9BE7    add         eax,0FFFFFFFA
 006B9BEA    sub         eax,2
>006B9BED    jb          006B9C38
>006B9BEF    jmp         006B9DB9
 006B9BF4    sub         eax,24
>006B9BF7    je          006B9CFF
 006B9BFD    dec         eax
>006B9BFE    je          006B9C95
>006B9C04    jmp         006B9DB9
 006B9C09    cmp         eax,2D
>006B9C0C    jg          006B9C21
>006B9C0E    je          006B9C44
 006B9C10    sub         eax,27
>006B9C13    je          006B9CCA
 006B9C19    dec         eax
>006B9C1A    je          006B9C38
>006B9C1C    jmp         006B9DB9
 006B9C21    sub         eax,2E
>006B9C24    je          006B9D87
 006B9C2A    sub         eax,43
>006B9C2D    je          006B9D5E
>006B9C33    jmp         006B9DB9
 006B9C38    push        ebp
 006B9C39    call        006B9A04
 006B9C3E    pop         ecx
>006B9C3F    jmp         006B9DB9
 006B9C44    movzx       eax,word ptr ds:[6B9DE0];0x0 gvar_006B9DE0
 006B9C4B    cmp         ax,word ptr [ebp-0A]
>006B9C4F    jne         006B9C5D
 006B9C51    push        ebp
 006B9C52    call        006B9A04
 006B9C57    pop         ecx
>006B9C58    jmp         006B9DB9
 006B9C5D    movzx       eax,word ptr ds:[6B9DE4];0x1 gvar_006B9DE4
 006B9C64    cmp         ax,word ptr [ebp-0A]
>006B9C68    jne         006B9DB9
 006B9C6E    mov         eax,dword ptr [ebp-4]
 006B9C71    mov         eax,dword ptr [eax+2E8];TInplaceEdit.FGrid:TCustomGrid
 006B9C77    mov         si,0FFAA
 006B9C7B    call        @CallDynaInst;TCustomGrid.sub_006BA870
 006B9C80    test        al,al
>006B9C82    jne         006B9DB9
 006B9C88    mov         eax,dword ptr [ebp-8]
 006B9C8B    mov         word ptr [eax],0
>006B9C90    jmp         006B9DB9
 006B9C95    push        ebp
 006B9C96    call        006B9A80
 006B9C9B    pop         ecx
 006B9C9C    test        al,al
>006B9C9E    je          006B9DB9
 006B9CA4    push        ebp
 006B9CA5    call        Ctrl
 006B9CAA    pop         ecx
 006B9CAB    test        al,al
>006B9CAD    jne         006B9CBE
 006B9CAF    push        ebp
 006B9CB0    call        LeftSide
 006B9CB5    pop         ecx
 006B9CB6    test        al,al
>006B9CB8    je          006B9DB9
 006B9CBE    push        ebp
 006B9CBF    call        006B9A04
 006B9CC4    pop         ecx
>006B9CC5    jmp         006B9DB9
 006B9CCA    push        ebp
 006B9CCB    call        006B9A80
 006B9CD0    pop         ecx
 006B9CD1    test        al,al
>006B9CD3    je          006B9DB9
 006B9CD9    push        ebp
 006B9CDA    call        Ctrl
 006B9CDF    pop         ecx
 006B9CE0    test        al,al
>006B9CE2    jne         006B9CF3
 006B9CE4    push        ebp
 006B9CE5    call        RightSide
 006B9CEA    pop         ecx
 006B9CEB    test        al,al
>006B9CED    je          006B9DB9
 006B9CF3    push        ebp
 006B9CF4    call        006B9A04
 006B9CF9    pop         ecx
>006B9CFA    jmp         006B9DB9
 006B9CFF    push        ebp
 006B9D00    call        006B9A80
 006B9D05    pop         ecx
 006B9D06    test        al,al
>006B9D08    je          006B9DB9
 006B9D0E    push        ebp
 006B9D0F    call        Ctrl
 006B9D14    pop         ecx
 006B9D15    test        al,al
>006B9D17    jne         006B9D28
 006B9D19    push        ebp
 006B9D1A    call        LeftSide
 006B9D1F    pop         ecx
 006B9D20    test        al,al
>006B9D22    je          006B9DB9
 006B9D28    push        ebp
 006B9D29    call        006B9A04
 006B9D2E    pop         ecx
>006B9D2F    jmp         006B9DB9
 006B9D34    push        ebp
 006B9D35    call        006B9A80
 006B9D3A    pop         ecx
 006B9D3B    test        al,al
>006B9D3D    je          006B9DB9
 006B9D3F    push        ebp
 006B9D40    call        Ctrl
 006B9D45    pop         ecx
 006B9D46    test        al,al
>006B9D48    jne         006B9D55
 006B9D4A    push        ebp
 006B9D4B    call        RightSide
 006B9D50    pop         ecx
 006B9D51    test        al,al
>006B9D53    je          006B9DB9
 006B9D55    push        ebp
 006B9D56    call        006B9A04
 006B9D5B    pop         ecx
>006B9D5C    jmp         006B9DB9
 006B9D5E    push        ebp
 006B9D5F    call        006B9A38
 006B9D64    pop         ecx
 006B9D65    mov         eax,dword ptr [ebp-8]
 006B9D68    cmp         word ptr [eax],71
>006B9D6C    jne         006B9DB9
 006B9D6E    mov         eax,dword ptr [ebp-4]
 006B9D71    call        TInplaceEdit.Deselect
>006B9D76    jmp         006B9DD8
 006B9D78    test        byte ptr [ebp-0A],2
>006B9D7C    jne         006B9DB9
 006B9D7E    push        ebp
 006B9D7F    call        006B9A04
 006B9D84    pop         ecx
>006B9D85    jmp         006B9DB9
 006B9D87    push        ebp
 006B9D88    call        Ctrl
 006B9D8D    pop         ecx
 006B9D8E    test        al,al
>006B9D90    je          006B9D9B
 006B9D92    push        ebp
 006B9D93    call        006B9A04
 006B9D98    pop         ecx
>006B9D99    jmp         006B9DB9
 006B9D9B    mov         eax,dword ptr [ebp-4]
 006B9D9E    mov         eax,dword ptr [eax+2E8];TInplaceEdit.FGrid:TCustomGrid
 006B9DA4    mov         si,0FFAA
 006B9DA8    call        @CallDynaInst;TCustomGrid.sub_006BA870
 006B9DAD    test        al,al
>006B9DAF    jne         006B9DB9
 006B9DB1    mov         eax,dword ptr [ebp-8]
 006B9DB4    mov         word ptr [eax],0
 006B9DB9    mov         eax,dword ptr [ebp-8]
 006B9DBC    cmp         word ptr [eax],0
>006B9DC0    je          006B9DD8
 006B9DC2    push        ebp
 006B9DC3    call        006B9A38
 006B9DC8    pop         ecx
 006B9DC9    mov         edx,dword ptr [ebp-8]
 006B9DCC    movzx       ecx,word ptr [ebp-0A]
 006B9DD0    mov         eax,dword ptr [ebp-4]
 006B9DD3    call        TCustomMaskEdit.sub_004EE9E0
 006B9DD8    pop         esi
 006B9DD9    mov         esp,ebp
 006B9DDB    pop         ebp
 006B9DDC    ret
end;*}

//006B9DE8
{*procedure TInplaceEdit.sub_004EEC30(?:?);
begin
 006B9DE8    push        ebx
 006B9DE9    push        esi
 006B9DEA    push        edi
 006B9DEB    add         esp,0FFFFFFF8
 006B9DEE    mov         ebx,edx
 006B9DF0    mov         edi,eax
 006B9DF2    mov         edx,ebx
 006B9DF4    mov         eax,dword ptr [edi+2E8];TInplaceEdit.FGrid:TCustomGrid
 006B9DFA    mov         si,0FFB6
 006B9DFE    call        @CallDynaInst;TCustomGrid.sub_004EEC30
 006B9E03    cmp         word ptr [ebx],20
>006B9E07    jb          006B9E2B
 006B9E09    movzx       edx,word ptr [ebx]
 006B9E0C    mov         eax,dword ptr [edi+2E8];TInplaceEdit.FGrid:TCustomGrid
 006B9E12    mov         si,0FFAC
 006B9E16    call        @CallDynaInst;TCustomGrid.sub_006BA868
 006B9E1B    test        al,al
>006B9E1D    jne         006B9E2B
 006B9E1F    mov         word ptr [ebx],0
 006B9E24    push        0
 006B9E26    call        user32.MessageBeep
 006B9E2B    movzx       eax,word ptr [ebx]
 006B9E2E    cmp         eax,16
>006B9E31    jg          006B9E44
>006B9E33    je          006B9EA7
 006B9E35    sub         eax,8
>006B9E38    je          006B9EA7
 006B9E3A    dec         eax
>006B9E3B    je          006B9E5A
 006B9E3D    sub         eax,4
>006B9E40    je          006B9E61
>006B9E42    jmp         006B9EBF
 006B9E44    sub         eax,18
>006B9E47    je          006B9EA7
 006B9E49    sub         eax,3
>006B9E4C    je          006B9E5A
 006B9E4E    add         eax,0FFFFFFFB
 006B9E51    sub         eax,0FFE0
>006B9E56    jb          006B9EA7
>006B9E58    jmp         006B9EBF
 006B9E5A    mov         word ptr [ebx],0
>006B9E5F    jmp         006B9EBF
 006B9E61    lea         eax,[esp+4]
 006B9E65    push        eax
 006B9E66    lea         eax,[esp+4]
 006B9E6A    push        eax
 006B9E6B    push        0B0
 006B9E70    mov         eax,edi
 006B9E72    call        TWinControl.GetHandle
 006B9E77    push        eax
 006B9E78    call        user32.SendMessageW
 006B9E7D    cmp         dword ptr [esp],0
>006B9E81    jne         006B9E99
 006B9E83    mov         eax,edi
 006B9E85    call        TCustomMaskEdit.GetTextLen
 006B9E8A    cmp         eax,dword ptr [esp+4]
>006B9E8E    jne         006B9E99
 006B9E90    mov         eax,edi
 006B9E92    call        TInplaceEdit.Deselect
>006B9E97    jmp         006B9EA0
 006B9E99    mov         eax,edi
 006B9E9B    call        TCustomEdit.SelectAll
 006B9EA0    mov         word ptr [ebx],0
>006B9EA5    jmp         006B9EBF
 006B9EA7    mov         eax,dword ptr [edi+2E8];TInplaceEdit.FGrid:TCustomGrid
 006B9EAD    mov         si,0FFAA
 006B9EB1    call        @CallDynaInst;TCustomGrid.sub_006BA870
 006B9EB6    test        al,al
>006B9EB8    jne         006B9EBF
 006B9EBA    mov         word ptr [ebx],0
 006B9EBF    cmp         word ptr [ebx],0
>006B9EC3    je          006B9ECE
 006B9EC5    mov         edx,ebx
 006B9EC7    mov         eax,edi
 006B9EC9    call        TCustomMaskEdit.sub_004EEC30
 006B9ECE    pop         ecx
 006B9ECF    pop         edx
 006B9ED0    pop         edi
 006B9ED1    pop         esi
 006B9ED2    pop         ebx
 006B9ED3    ret
end;*}

//006B9ED4
{*procedure TInplaceEdit.sub_004EEB14(?:?; ?:?);
begin
 006B9ED4    push        esi
 006B9ED5    push        edi
 006B9ED6    push        ecx
 006B9ED7    mov         word ptr [esp],cx
 006B9EDB    mov         edi,edx
 006B9EDD    mov         esi,eax
 006B9EDF    mov         edx,edi
 006B9EE1    movzx       ecx,word ptr [esp]
 006B9EE5    mov         eax,dword ptr [esi+2E8];TInplaceEdit.FGrid:TCustomGrid
 006B9EEB    mov         si,0FFB7
 006B9EEF    call        @CallDynaInst;TWinControl.sub_004EEB14
 006B9EF4    pop         edx
 006B9EF5    pop         edi
 006B9EF6    pop         esi
 006B9EF7    ret
end;*}

//006B9EF8
{*procedure sub_006B9EF8(?:?);
begin
 006B9EF8    push        ebx
 006B9EF9    push        esi
 006B9EFA    push        edi
 006B9EFB    mov         esi,edx
 006B9EFD    mov         ebx,eax
 006B9EFF    mov         eax,dword ptr [esi]
 006B9F01    sub         eax,7
>006B9F04    je          006B9F0F
 006B9F06    sub         eax,1FA
>006B9F0B    je          006B9F42
>006B9F0D    jmp         006B9F66
 006B9F0F    mov         dl,1
 006B9F11    mov         eax,ebx
 006B9F13    call        GetParentForm
 006B9F18    test        eax,eax
>006B9F1A    je          006B9F37
 006B9F1C    mov         dl,1
 006B9F1E    mov         eax,ebx
 006B9F20    call        GetParentForm
 006B9F25    mov         edx,dword ptr [ebx+2E8];TInplaceEdit.FGrid:TCustomGrid
 006B9F2B    mov         ecx,dword ptr [eax]
 006B9F2D    call        dword ptr [ecx+138];TCustomForm.SetFocusedControl
 006B9F33    test        al,al
>006B9F35    je          006B9F6F
 006B9F37    mov         edx,esi
 006B9F39    mov         eax,ebx
 006B9F3B    mov         ecx,dword ptr [eax]
 006B9F3D    call        dword ptr [ecx-14];TObject.Dispatch
>006B9F40    jmp         006B9F6F
 006B9F42    call        user32.GetMessageTime
 006B9F47    mov         edi,eax
 006B9F49    sub         edi,dword ptr [ebx+2EC]
 006B9F4F    call        user32.GetDoubleClickTime
 006B9F54    cmp         edi,eax
>006B9F56    jae         006B9F5E
 006B9F58    mov         dword ptr [esi],203
 006B9F5E    xor         eax,eax
 006B9F60    mov         dword ptr [ebx+2EC],eax;TInplaceEdit.FClickTime:Integer
 006B9F66    mov         edx,esi
 006B9F68    mov         eax,ebx
 006B9F6A    call        004ECAFC
 006B9F6F    pop         edi
 006B9F70    pop         esi
 006B9F71    pop         ebx
 006B9F72    ret
end;*}

//006B9F74
procedure TInplaceEdit.Deselect;
begin
{*
 006B9F74    push        ebx
 006B9F75    mov         ebx,eax
 006B9F77    push        0FF
 006B9F79    push        7FFFFFFF
 006B9F7E    push        0B1
 006B9F83    mov         eax,ebx
 006B9F85    call        TWinControl.GetHandle
 006B9F8A    push        eax
 006B9F8B    call        user32.SendMessageW
 006B9F90    pop         ebx
 006B9F91    ret
*}
end;

//006B9F94
procedure TInplaceEdit.Invalidate;
begin
{*
 006B9F94    push        ebx
 006B9F95    add         esp,0FFFFFFF0
 006B9F98    mov         ebx,eax
 006B9F9A    push        0
 006B9F9C    mov         eax,ebx
 006B9F9E    call        TWinControl.GetHandle
 006B9FA3    push        eax
 006B9FA4    call        user32.ValidateRect
 006B9FA9    push        0FF
 006B9FAB    push        0
 006B9FAD    mov         eax,ebx
 006B9FAF    call        TWinControl.GetHandle
 006B9FB4    push        eax
 006B9FB5    call        user32.InvalidateRect
 006B9FBA    push        esp
 006B9FBB    mov         eax,ebx
 006B9FBD    call        TWinControl.GetHandle
 006B9FC2    push        eax
 006B9FC3    call        user32.GetClientRect
 006B9FC8    push        2
 006B9FCA    lea         eax,[esp+4]
 006B9FCE    push        eax
 006B9FCF    mov         eax,dword ptr [ebx+2E8];TInplaceEdit.FGrid:TCustomGrid
 006B9FD5    call        TWinControl.GetHandle
 006B9FDA    push        eax
 006B9FDB    mov         eax,ebx
 006B9FDD    call        TWinControl.GetHandle
 006B9FE2    push        eax
 006B9FE3    call        user32.MapWindowPoints
 006B9FE8    push        esp
 006B9FE9    mov         eax,dword ptr [ebx+2E8];TInplaceEdit.FGrid:TCustomGrid
 006B9FEF    call        TWinControl.GetHandle
 006B9FF4    push        eax
 006B9FF5    call        user32.ValidateRect
 006B9FFA    push        0
 006B9FFC    lea         eax,[esp+4]
 006BA000    push        eax
 006BA001    mov         eax,dword ptr [ebx+2E8];TInplaceEdit.FGrid:TCustomGrid
 006BA007    call        TWinControl.GetHandle
 006BA00C    push        eax
 006BA00D    call        user32.InvalidateRect
 006BA012    add         esp,10
 006BA015    pop         ebx
 006BA016    ret
*}
end;

//006BA018
procedure TInplaceEdit.Hide;
begin
{*
 006BA018    push        ebx
 006BA019    push        esi
 006BA01A    mov         ebx,eax
 006BA01C    mov         eax,ebx
 006BA01E    call        TWinControl.HandleAllocated
 006BA023    test        al,al
>006BA025    je          006BA07B
 006BA027    mov         eax,ebx
 006BA029    call        TWinControl.GetHandle
 006BA02E    push        eax
 006BA02F    call        user32.IsWindowVisible
 006BA034    test        eax,eax
>006BA036    je          006BA07B
 006BA038    mov         eax,ebx
 006BA03A    call        TInplaceEdit.Invalidate
 006BA03F    push        8C
 006BA044    push        0
 006BA046    push        0
 006BA048    push        0
 006BA04A    push        0
 006BA04C    push        0
 006BA04E    mov         eax,ebx
 006BA050    call        TWinControl.GetHandle
 006BA055    push        eax
 006BA056    call        user32.SetWindowPos
 006BA05B    mov         eax,ebx
 006BA05D    mov         si,0FFB1
 006BA061    call        @CallDynaInst;TWinControl.sub_004EFDB8
 006BA066    test        al,al
>006BA068    je          006BA07B
 006BA06A    mov         eax,dword ptr [ebx+2E8];TInplaceEdit.FGrid:TCustomGrid
 006BA070    call        TWinControl.GetHandle
 006BA075    push        eax
 006BA076    call        user32.SetFocus
 006BA07B    pop         esi
 006BA07C    pop         ebx
 006BA07D    ret
*}
end;

//006BA080
procedure TInplaceEdit.InternalMove(const Loc:Types.TRect; Redraw:Boolean);
begin
{*
 006BA080    push        ebx
 006BA081    push        esi
 006BA082    push        edi
 006BA083    push        ebp
 006BA084    mov         ebx,ecx
 006BA086    mov         esi,edx
 006BA088    mov         edi,eax
 006BA08A    mov         eax,esi
 006BA08C    call        IsRectEmpty
 006BA091    test        al,al
>006BA093    je          006BA0A1
 006BA095    mov         eax,edi
 006BA097    call        TInplaceEdit.Hide
>006BA09C    jmp         006BA129
 006BA0A1    mov         eax,edi
 006BA0A3    mov         edx,dword ptr [eax]
 006BA0A5    call        dword ptr [edx+0C0]
 006BA0AB    test        bl,bl
>006BA0AD    jne         006BA0C4
 006BA0AF    mov         eax,edi
 006BA0B1    call        TWinControl.GetHandle
 006BA0B6    push        eax
 006BA0B7    call        user32.IsWindowVisible
 006BA0BC    test        eax,eax
>006BA0BE    je          006BA0C4
 006BA0C0    xor         eax,eax
>006BA0C2    jmp         006BA0C6
 006BA0C4    mov         al,1
 006BA0C6    mov         ebx,eax
 006BA0C8    mov         eax,edi
 006BA0CA    call        TInplaceEdit.Invalidate
 006BA0CF    push        48
 006BA0D1    mov         eax,dword ptr [esi+0C]
 006BA0D4    sub         eax,dword ptr [esi+4]
 006BA0D7    push        eax
 006BA0D8    mov         eax,dword ptr [esi+8]
 006BA0DB    mov         ebp,dword ptr [esi]
 006BA0DD    sub         eax,ebp
 006BA0DF    push        eax
 006BA0E0    mov         eax,dword ptr [esi+4]
 006BA0E3    push        eax
 006BA0E4    push        ebp
 006BA0E5    push        0
 006BA0E7    mov         eax,edi
 006BA0E9    call        TWinControl.GetHandle
 006BA0EE    push        eax
 006BA0EF    call        user32.SetWindowPos
 006BA0F4    mov         eax,edi
 006BA0F6    mov         edx,dword ptr [eax]
 006BA0F8    call        dword ptr [edx+140]
 006BA0FE    test        bl,bl
>006BA100    je          006BA109
 006BA102    mov         eax,edi
 006BA104    call        TInplaceEdit.Invalidate
 006BA109    mov         eax,dword ptr [edi+2E8]
 006BA10F    mov         si,0FFB1
 006BA113    call        @CallDynaInst
 006BA118    test        al,al
>006BA11A    je          006BA129
 006BA11C    mov         eax,edi
 006BA11E    call        TWinControl.GetHandle
 006BA123    push        eax
 006BA124    call        user32.SetFocus
 006BA129    pop         ebp
 006BA12A    pop         edi
 006BA12B    pop         esi
 006BA12C    pop         ebx
 006BA12D    ret
*}
end;

//006BA130
procedure sub_006BA130;
begin
{*
 006BA130    push        ebx
 006BA131    add         esp,0FFFFFFF0
 006BA134    mov         ebx,eax
 006BA136    mov         eax,dword ptr [ebx+5C];TInplaceEdit.FHeight:Integer
 006BA139    push        eax
 006BA13A    lea         eax,[esp+4]
 006BA13E    push        eax
 006BA13F    mov         ecx,dword ptr [ebx+58];TInplaceEdit.FWidth:Integer
 006BA142    sub         ecx,2
 006BA145    mov         edx,2
 006BA14A    mov         eax,2
 006BA14F    call        Rect
 006BA154    push        esp
 006BA155    mov         eax,ebx
 006BA157    call        TWinControl.GetHandle
 006BA15C    xor         ecx,ecx
 006BA15E    mov         edx,0B4
 006BA163    call        SendStructMessage
 006BA168    push        0
 006BA16A    push        0
 006BA16C    push        0B7
 006BA171    mov         eax,ebx
 006BA173    call        TWinControl.GetHandle
 006BA178    push        eax
 006BA179    call        user32.SendMessageW
 006BA17E    add         esp,10
 006BA181    pop         ebx
 006BA182    ret
*}
end;

//006BA184
procedure TInplaceEdit.UpdateLoc(Loc:TRect);
begin
{*
 006BA184    xor         ecx,ecx
 006BA186    call        TInplaceEdit.InternalMove
 006BA18B    ret
*}
end;

//006BA18C
procedure TInplaceEdit.Move(Loc:TRect);
begin
{*
 006BA18C    mov         cl,1
 006BA18E    call        TInplaceEdit.InternalMove
 006BA193    ret
*}
end;

//006BA194
procedure sub_006BA194;
begin
{*
 006BA194    push        ebp
 006BA195    mov         ebp,esp
 006BA197    push        0
 006BA199    push        0
 006BA19B    push        ebx
 006BA19C    push        esi
 006BA19D    push        edi
 006BA19E    mov         ebx,eax
 006BA1A0    xor         eax,eax
 006BA1A2    push        ebp
 006BA1A3    push        6BA240
 006BA1A8    push        dword ptr fs:[eax]
 006BA1AB    mov         dword ptr fs:[eax],esp
 006BA1AE    xor         edx,edx
 006BA1B0    mov         eax,ebx
 006BA1B2    call        TCustomMaskEdit.SetText
 006BA1B7    lea         eax,[ebp-4]
 006BA1BA    push        eax
 006BA1BB    mov         edi,dword ptr [ebx+2E8];TInplaceEdit.FGrid:TCustomGrid
 006BA1C1    mov         ecx,dword ptr [edi+2AC];TCustomGrid.FDefaultRowHeight:Integer
 006BA1C7    mov         edx,dword ptr [edi+2A8];TCustomGrid.FCurrent:TGridCoord
 006BA1CD    mov         eax,edi
 006BA1CF    mov         si,0FFA5
 006BA1D3    call        @CallDynaInst;TCustomGrid.GetEditMask
 006BA1D8    mov         edx,dword ptr [ebp-4]
 006BA1DB    mov         eax,ebx
 006BA1DD    call        TMaskEdit.SetEditMask
 006BA1E2    lea         eax,[ebp-8]
 006BA1E5    push        eax
 006BA1E6    mov         edi,dword ptr [ebx+2E8];TInplaceEdit.FGrid:TCustomGrid
 006BA1EC    mov         ecx,dword ptr [edi+2AC];TCustomGrid.FDefaultRowHeight:Integer
 006BA1F2    mov         edx,dword ptr [edi+2A8];TCustomGrid.FCurrent:TGridCoord
 006BA1F8    mov         eax,edi
 006BA1FA    mov         si,0FFA8
 006BA1FE    call        @CallDynaInst;TCustomGrid.GetEditText
 006BA203    mov         edx,dword ptr [ebp-8]
 006BA206    mov         eax,ebx
 006BA208    call        TCustomMaskEdit.SetText
 006BA20D    mov         eax,dword ptr [ebx+2E8];TInplaceEdit.FGrid:TCustomGrid
 006BA213    mov         si,0FFA6
 006BA217    call        @CallDynaInst;TCustomGrid.sub_006BAA2C
 006BA21C    mov         edx,eax
 006BA21E    mov         eax,ebx
 006BA220    call        TMaskEdit.SetMaxLength
 006BA225    xor         eax,eax
 006BA227    pop         edx
 006BA228    pop         ecx
 006BA229    pop         ecx
 006BA22A    mov         dword ptr fs:[eax],edx
 006BA22D    push        6BA247
 006BA232    lea         eax,[ebp-8]
 006BA235    mov         edx,2
 006BA23A    call        @UStrArrayClr
 006BA23F    ret
>006BA240    jmp         @HandleFinally
>006BA245    jmp         006BA232
 006BA247    pop         edi
 006BA248    pop         esi
 006BA249    pop         ebx
 006BA24A    pop         ecx
 006BA24B    pop         ecx
 006BA24C    pop         ebp
 006BA24D    ret
*}
end;

//006BA250
constructor TCustomGrid.Create;
begin
{*
 006BA250    push        ebp
 006BA251    mov         ebp,esp
 006BA253    push        ecx
 006BA254    push        ebx
 006BA255    push        esi
 006BA256    test        dl,dl
>006BA258    je          006BA262
 006BA25A    add         esp,0FFFFFFF0
 006BA25D    call        @ClassCreate
 006BA262    mov         byte ptr [ebp-1],dl
 006BA265    mov         ebx,eax
 006BA267    xor         edx,edx
 006BA269    mov         eax,ebx
 006BA26B    call        TCustomControl.Create
 006BA270    mov         eax,[007C4770];^gvar_007CA5E0
 006BA275    cmp         byte ptr [eax],0
>006BA278    je          006BA284
 006BA27A    mov         eax,[006BA3E4]
 006BA27F    mov         dword ptr [ebx+60],eax
>006BA282    jmp         006BA28C
 006BA284    mov         eax,[006BA3E8]
 006BA289    mov         dword ptr [ebx+60],eax
 006BA28C    mov         byte ptr [ebx+2A1],1
 006BA293    mov         dword ptr [ebx+2A4],5
 006BA29D    mov         dword ptr [ebx+2E0],5
 006BA2A7    mov         dword ptr [ebx+2BC],1
 006BA2B1    mov         dword ptr [ebx+2C0],1
 006BA2BB    mov         dword ptr [ebx+2D0],1
 006BA2C5    mov         eax,[006BA3EC]
 006BA2CA    mov         dword ptr [ebx+2D4],eax
 006BA2D0    mov         eax,[006BA3F0]
 006BA2D5    mov         dword ptr [ebx+33A],eax
 006BA2DB    mov         dword ptr [ebx+2C4],0FF00000F
 006BA2E5    mov         byte ptr [ebx+2E4],3
 006BA2EC    mov         byte ptr [ebx+2A0],1
 006BA2F3    mov         dword ptr [ebx+2B0],40
 006BA2FD    mov         dword ptr [ebx+2B4],18
 006BA307    mov         byte ptr [ebx+31C],1
 006BA30E    mov         byte ptr [ebx+2B8],1
 006BA315    mov         edx,0FFFFFFE7
 006BA31A    mov         eax,0F0F0F0
 006BA31F    call        004D7A98
 006BA324    mov         dword ptr [ebx+2C8],eax
 006BA32A    mov         dword ptr [ebx+2CC],0FFFFFF
 006BA334    mov         byte ptr [ebx+339],1
 006BA33B    mov         byte ptr [ebx+31D],0
 006BA342    mov         edx,0FF000005
 006BA347    mov         eax,ebx
 006BA349    call        TGroupBox.SetColor
 006BA34E    xor         edx,edx
 006BA350    mov         eax,ebx
 006BA352    call        TGroupBox.SetParentColor
 006BA357    mov         dl,1
 006BA359    mov         eax,ebx
 006BA35B    call        TWinControl.SetTabStop
 006BA360    mov         eax,dword ptr [ebx+2A4]
 006BA366    imul        dword ptr [ebx+2B0]
 006BA36C    push        eax
 006BA36D    mov         eax,dword ptr [ebx+2E0]
 006BA373    imul        dword ptr [ebx+2B4]
 006BA379    push        eax
 006BA37A    mov         ecx,dword ptr [ebx+54]
 006BA37D    mov         edx,dword ptr [ebx+50]
 006BA380    mov         eax,ebx
 006BA382    mov         esi,dword ptr [eax]
 006BA384    call        dword ptr [esi+0B0]
 006BA38A    mov         dword ptr [ebx+348],0FFFFFFFF
 006BA394    mov         dword ptr [ebx+34C],0FFFFFFFF
 006BA39E    mov         byte ptr [ebx+350],0
 006BA3A5    mov         eax,dword ptr [ebx+0BC]
 006BA3AB    movzx       edx,byte ptr ds:[6BA3F4]
 006BA3B2    mov         byte ptr [eax+10],dl
 006BA3B5    movzx       edx,byte ptr ds:[6BA3F8]
 006BA3BC    mov         byte ptr [eax+11],dl
 006BA3BF    mov         eax,ebx
 006BA3C1    call        006BDD20
 006BA3C6    mov         eax,ebx
 006BA3C8    cmp         byte ptr [ebp-1],0
>006BA3CC    je          006BA3DD
 006BA3CE    call        @AfterConstruction
 006BA3D3    pop         dword ptr fs:[0]
 006BA3DA    add         esp,0C
 006BA3DD    mov         eax,ebx
 006BA3DF    pop         esi
 006BA3E0    pop         ebx
 006BA3E1    pop         ecx
 006BA3E2    pop         ebp
 006BA3E3    ret
*}
end;

Initialization
//0079DA0C
{*
 0079DA0C    sub         dword ptr ds:[901E14],1
>0079DA13    jae         0079DA2B
 0079DA15    mov         ecx,dword ptr ds:[5BD5B0];TScrollingStyleHook
 0079DA1B    mov         edx,dword ptr ds:[6B6B70];TCustomGrid
 0079DA21    mov         eax,[005738E0];TCustomStyleEngine
 0079DA26    call        TCustomStyleEngine.RegisterStyleHook
 0079DA2B    ret
*}
Finalization
end.