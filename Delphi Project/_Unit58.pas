//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit58;

interface

uses
  SysUtils, Classes, System.Win.Registry, Vcl.Graphics, System.UIConsts, System.Generics.Defaults, System.Generics.Collections, Vcl.ImgList, Vcl.Menus, System.TypInfo, System.Classes, Vcl.StdActns, Vcl.ComCtrls, Vcl.Controls, System.SysUtils, Vcl.ExtCtrls;

type
  THintAction = class(TCustomAction)
  published
    constructor Create(AOwner:TComponent);//0051E0AC
  public
    constructor Create(AOwner:TComponent); virtual;//v3C//0051E0AC
  end;
  THitTest = (htAbove, htBelow, htNowhere, htOnItem, htOnButton, htOnIcon, htOnIndent, htOnLabel, htOnRight, htOnStateIcon, htToLeft, htToRight);
  THitTests = set of THitTest;
  TTabChangingEvent = procedure(Sender:TObject; var AllowChange:Boolean) of object;;
  TTabPosition = (tpTop, tpBottom, tpLeft, tpRight);
  TTabStyle = (tsTabs, tsButtons, tsFlatButtons);
  TDrawTabEvent = procedure(Control:TCustomTabControl; TabIndex:Integer; const Rect:TRect; Active:Boolean) of object;;
  TTabGetImageEvent = procedure(Sender:TObject; TabIndex:Integer; var ImageIndex:Integer) of object;;
  TCustomTabControl = class(TWinControl)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure TabRect(Index:Integer; ?:?);//005347F8
    function IndexOfTabAt(X:Integer; Y:Integer):Integer;//00534798
    constructor Create(AOwner:TComponent);//00533964
    destructor Destroy();//00533A44
  public
    FCanvas:TCanvas;//f290
    FHotTrack:Boolean;//f294
    FImageChangeLink:TChangeLink;//f298
    FMultiSelect:Boolean;//f299
    FOwnerDraw:Boolean;//f29A
    FRaggedRight:Boolean;//f29B
    FImages:TCustomImageList;//f29C
    FMultiLine:Boolean;//f2A0
    FMultiSelect:Boolean;//f2A1
    FOwnerDraw:Boolean;//f2A2
    FRaggedRight:Boolean;//f2A3
    FSaveTabIndex:Integer;//f2A4
    FStyle:TTabStyle;//f2A5
    FTabPosition:TTabPosition;//f2A6
    FSaveTabs:TStringList;//f2A8
    FScrollOpposite:Boolean;//f2AC
    FStyle:TTabStyle;//f2AD
    FTabPosition:TTabPosition;//f2AE
    FTabs:TStrings;//f2B0
    FTabSize:TSmallPoint;//f2B4
    FUpdating:Boolean;//f2B8
    FSavedAdjustRect:TRect;//f2BC
    FOnChange:TNotifyEvent;//f2C8
    FOnChange:TNotifyEvent;//f2D0
    f2D2:word;//f2D2
    f2D4:dword;//f2D4
    FOnChanging:TTabChangingEvent;//f2D8
    f2DA:word;//f2DA
    f2DC:dword;//f2DC
    FOnDrawTab:TDrawTabEvent;//f2E0
    f2E2:word;//f2E2
    f2E4:dword;//f2E4
    FOnGetImageIndex:TTabGetImageEvent;//f2E8
    f2EA:word;//f2EA
    f2EC:dword;//f2EC
    destructor Destroy(); virtual;//00533A44
    procedure CMFontChanged(var Message:TMessage); virtual;//v10//00533DF8
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v14//00533E38
    constructor Create(AOwner:TComponent); virtual;//v3C//00533964
    //procedure vB8(?:?); virtual;//vB8//00534768
    procedure CreateParams(var Params:TCreateParams); virtual;//vC4//00533B94
    procedure CreateWnd; virtual;//vCC//00533CAC
    //function v108:?; virtual;//v108//00533B28
    //procedure v10C(?:?; ?:?); virtual;//v10C//00533D40
    //function v110(?:?):?; virtual;//v110//00533DB4
    procedure v114(?:Integer); virtual;//v114//00534128
    //procedure WMDestroy(?:?); message WM_DESTROY;//00534508
    //procedure WMSize(?:?); message WM_SIZE;//005345BC
    //procedure WMNotifyFormat(?:?); message WM_NOTIFYFORMAT;//00534598
    //procedure sub_0053481C(?:?); dynamic;//0053481C
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//0053467C
    procedure CMFontChanged; message CM_FONTCHANGED;//005345DC
    //procedure CMSysColorChange(?:?); message CM_SYSCOLORCHANGE;//00534604
    procedure CMTabStopChanged; message CM_TABSTOPCHANGED;//0053462C
    procedure sub_00533AE0; dynamic;//00533AE0
    //procedure sub_00534414(?:?); dynamic;//00534414
    //procedure sub_00534638(?:?); dynamic;//00534638
    procedure sub_00533B2C; dynamic;//00533B2C
    procedure sub_00533AFC; dynamic;//00533AFC
    procedure ChangeScale(M:Integer; D:Integer); dynamic;//00533B4C
  end;
  TTabSheet = class(TWinControl)
  published
    constructor Create(AOwner:TComponent);//005348B4
    destructor Destroy();//00534918
  public
    FImageIndex:TImageIndex;//f290
    FTabShowing:Boolean;//f291
    FHighlighted:Boolean;//f292
    FPageControl:TPageControl;//f294
    FTabVisible:Boolean;//f298
    FTabShowing:Boolean;//f299
    FHighlighted:Boolean;//f29A
    FOnHide:TNotifyEvent;//f2A0
    f2A2:word;//f2A2
    f2A4:dword;//f2A4
    FOnShow:TNotifyEvent;//f2A8
    f2AA:word;//f2AA
    f2AC:dword;//f2AC
    destructor Destroy(); virtual;//00534918
    procedure ReadState(Reader:TReader); virtual;//v18//00534A24
    constructor Create(AOwner:TComponent); virtual;//v3C//005348B4
    procedure CreateParams(var Params:TCreateParams); virtual;//vC4//00534A14
    procedure vEC; virtual;//vEC//00534964
    //procedure vFC(?:?; ?:?); virtual;//vFC//00534BA4
    //procedure WMEraseBkgnd(?:?); message WM_ERASEBKGND;//00534E64
    //procedure WMNCPaint(?:?); message WM_NCPAINT;//00534D50
    procedure CMTextChanged; message CM_TEXTCHANGED;//00534BF4
    procedure CMShowingChanged; message CM_SHOWINGCHANGED;//00534C0C
    procedure sub_00534988; dynamic;//00534988
    procedure sub_00534968; dynamic;//00534968
  end;
  TPageControl = class(TCustomTabControl)
  published
    function FindNextPage(CurPage:TTabSheet; GoForward:Boolean; CheckTabVisible:Boolean):TTabSheet;//005352F4
    //procedure GetChildren(Root:TComponent; Proc:TGetChildProc; ?:?);//0053537C
    constructor Create(AOwner:TComponent);//00534F54
    destructor Destroy();//00534FA8
    function GetPage(Index:Integer):TTabSheet;//00535488
    procedure SelectNextPage(GoForward:Boolean; CheckTabVisible:Boolean);//005355F4
  public
    FPages:TList;//f2F0
    FActivePage:TTabSheet;//f2F4
    FNewDockSheet:TTabSheet;//f2F8
    FUndockingPage:TTabSheet;//f2FC
    FInSetActivePage:Boolean;//f300
    destructor Destroy(); virtual;//00534FA8
    procedure CMFontChanged(var Message:TMessage); virtual;//v10//00535048
    constructor Create(AOwner:TComponent); virtual;//v3C//00534F54
    //procedure vF8(?:?); virtual;//vF8//005356E0
    //procedure v108(?:?); virtual;//v108//0053505C
    //function v110(?:?):?; virtual;//v110//005353BC
    procedure SetTabIndex(Value:Integer); virtual;//v114//00535CFC
    procedure v118; virtual;//v118//00535774
    //procedure WMEraseBkgnd(?:?); message WM_ERASEBKGND;//00535D54
    //procedure WMLButtonDown(?:?); message WM_LBUTTONDOWN;//00535C04
    //procedure WMLButtonDblClk(?:?); message WM_LBUTTONDBLCLK;//00535C5C
    //procedure CMDialogKey(?:?); message CM_DIALOGKEY;//0053581C
    procedure CMDesignHitTest(Message:Messages.TWMMouse); message CM_DESIGNHITTEST;//005357B0
    //procedure CMDockClient(?:?); message CM_DOCKCLIENT;//00535888
    //procedure CMUndockClient(?:?); message CM_UNDOCKCLIENT;//00535B48
    //procedure sub_00535A24(?:?); dynamic;//00535A24
    procedure sub_00533B2C; dynamic;//00535080
    //procedure sub_004EE62C(?:?; ?:?; ?:?; ?:?); dynamic;//005354AC
    procedure sub_004EE464; dynamic;//005352C0
    //procedure sub_004EE530(?:?; ?:?; ?:?; ?:?; ?:?); dynamic;//0053526C
    //procedure sub_004EE458(?:?); dynamic;//00535254
    procedure SetChildOrder(Child:Classes.TComponent; Order:Integer); dynamic;//005356D4
    //procedure GetChildren(Root:TComponent; Proc:TGetChildProc; ?:?); dynamic;//0053537C
  end;
  TStatusPanelStyle = (psText, psOwnerDraw);
  TStatusPanelBevel = (pbNone, pbLowered, pbRaised);
  TStatusPanel = class(TCollectionItem)
  published
    function UseRightToLeftAlignment:Boolean;//00535EE8
    function UseRightToLeftReading:Boolean;//00535ED0
    procedure ParentBiDiModeChanged;//00535E94
    constructor Create(Collection:TCollection);//00535DBC
    procedure Assign(Source:TPersistent);//00535E08
  public
    FText:string;//fC
    FWidth:Integer;//f10
    FAlignment:TAlignment;//f14
    FBevel:TStatusPanelBevel;//f15
    FBiDiMode:TBiDiMode;//f16
    FParentBiDiMode:Boolean;//f17
    FStyle:TStatusPanelStyle;//f18
    FUpdateNeeded:Boolean;//f19
    procedure Assign(Source:TPersistent); virtual;//v8//00535E08
    //procedure GetDisplayName(?:?); virtual;//vC//00535F00
    constructor Create(Collection:TCollection); virtual;//v1C//00535DBC
  end;
  TStatusPanels = class(TCollection)
  published
    function GetItem(Index:Integer):TStatusPanel;//00535FF8
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor Create(StatusBar:TCustomStatusBar);//00535F8C
    function Add:TStatusPanel;//00535FEC
  public
    ....FStatusBar:TCustomStatusBar;//f18
    //procedure v1C(?:?); virtual;//v1C//00536010
    procedure sub_0048EDE4; dynamic;//0053600C
  end;
  TCustomDrawPanelEvent = procedure(StatusBar:TCustomStatusBar; Panel:TStatusPanel; const Rect:TRect) of object;;
  TSBCreatePanelClassEvent = procedure(Sender:TCustomStatusBar; var PanelClass:TStatusPanelClass) of object;;
  TCustomStatusBar = class(TWinControl)
  published
    procedure SetBounds(ALeft:Integer; ATop:Integer; AHeight:Integer; AWidth:Integer);//00536C8C
    constructor Create(AOwner:TComponent);//00536040
    procedure ExecuteAction(Action:TBasicAction);//00536BAC
    procedure FlipChildren(AllLevels:Boolean);//00536490
    destructor Destroy();//00536120
  public
    FPanels:TStatusPanels;//f290
    FCanvas:TCanvas;//f294
    FSizeGrip:Boolean;//f295
    FSizeGripValid:Boolean;//f296
    FUseSystemFont:Boolean;//f297
    FSimpleText:string;//f298
    FSimplePanel:Boolean;//f29C
    FSizeGrip:Boolean;//f29D
    FSizeGripValid:Boolean;//f29E
    FUseSystemFont:Boolean;//f29F
    FAutoHint:Boolean;//f2A0
    FOnDrawPanel:TCustomDrawPanelEvent;//f2A8
    f2AA:word;//f2AA
    f2AC:dword;//f2AC
    FOnHint:TNotifyEvent;//f2B0
    f2B2:word;//f2B2
    f2B4:dword;//f2B4
    FOnCreatePanelClass:TSBCreatePanelClassEvent;//f2B8
    f2BA:word;//f2BA
    f2BC:dword;//f2BC
    FUpdatedPanels:Boolean;//f2C0
    destructor Destroy(); virtual;//00536120
    constructor Create(AOwner:TComponent); virtual;//v3C//00536040
    procedure v8C; virtual;//v8C//00536CB0
    procedure SetBounds(ALeft:Integer; ATop:Integer; AHeight:Integer; AWidth:Integer); virtual;//vB0//00536C8C
    procedure CreateParams(var Params:TCreateParams); virtual;//vC4//0053615C
    procedure CreateWnd; virtual;//vCC//005361F4
    procedure v108; virtual;//v108//00536D48
    procedure v10C; virtual;//v10C//00536D84
    //function v110:?; virtual;//v110//00536278
    constructor Create; virtual;//v114//00536D94
    //procedure WMSize(?:?); message WM_SIZE;//00536B04
    //procedure WMGetTextLength(?:?); message WM_GETTEXTLENGTH;//00536A78
    //procedure WMPaint(?:?); message WM_PAINT;//00536A9C
    //procedure WMEraseBkgnd(?:?); message WM_ERASEBKGND;//00536D9C
    //procedure CMParentFontChanged(?:?); message CM_PARENTFONTCHANGED;//00536B88
    procedure CMColorChanged(var Message:Messages.TMessage); message CM_COLORCHANGED;//00536B74
    procedure CMSysColorChange; message CM_SYSCOLORCHANGE;//00536C3C
    //procedure CMWinIniChange(?:?); message CM_WININICHANGE;//00536944
    procedure CMSysFontChanged(var Message:Messages.TMessage); message CM_SYSFONTCHANGED;//00536C50
    procedure CMBiDiModeChanged(var Message:Messages.TMessage); message CM_BIDIMODECHANGED;//00536418
    //procedure sub_0053696C(?:?); dynamic;//0053696C
    //procedure sub_0053629C(?:?); dynamic;//0053629C
    procedure FlipChildren(AllLevels:Boolean); dynamic;//00536490
    procedure ChangeScale(M:Integer; D:Integer); dynamic;//00536C64
    procedure ExecuteAction(Action:TBasicAction); dynamic;//00536BAC
  end;
  TDrawPanelEvent = procedure(StatusBar:TStatusBar; Panel:TStatusPanel; const Rect:TRect) of object;;
  TStatusBar = class(TCustomStatusBar)
  end;
  TCustomDrawStage = (cdPrePaint, cdPostPaint, cdPreErase, cdPostErase);
  :9 = (cdsSelected, cdsGrayed, cdsDisabled, cdsChecked, cdsFocused, cdsDefault, cdsHot, cdsMarked, cdsIndeterminate, cdsShowKeyboardCues, cdsNearHot, cdsOtherSideHot, cdsDropHilited);
  TCustomDrawState = set of :9;
  THeaderSectionStyle = (hsText, hsOwnerDraw);
  THeaderSection = class(TCollectionItem)
  published
    function UseRightToLeftAlignment:Boolean;//00536F7C
    function UseRightToLeftReading:Boolean;//00536F64
    procedure ParentBiDiModeChanged;//00536F28
    constructor Create(Collection:TCollection);//00536E04
    procedure Assign(Source:TPersistent);//00536E6C
  public
    FText:string;//fC
    FWidth:Integer;//f10
    FMinWidth:Integer;//f14
    FMaxWidth:Integer;//f18
    FAlignment:TAlignment;//f1C
    FStyle:THeaderSectionStyle;//f1D
    FAllowClick:Boolean;//f1E
    FAutoSize:Boolean;//f1F
    FImageIndex:TImageIndex;//f20
    FBiDiMode:TBiDiMode;//f24
    FParentBiDiMode:Boolean;//f25
    FCheckBox:Boolean;//f26
    FChecked:Boolean;//f27
    FFixedWidth:Boolean;//f28
    procedure Assign(Source:TPersistent); virtual;//v8//00536E6C
    //procedure GetDisplayName(?:?); virtual;//vC//00536F94
    constructor Create(Collection:TCollection); virtual;//v1C//00536E04
  end;
  THeaderSections = class(TCollection)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function GetItem(Index:Integer):THeaderSection;//0053719C
    constructor Create(HeaderControl:TCustomHeaderControl);//0053714C
    function Add(?:Integer; ?:THeaderSections):THeaderSection;//00537190
    function AddItem(Item:THeaderSection; Index:Integer):THeaderSection;//005371E0
  public
    .....FHeaderControl:TCustomHeaderControl;//f18
    //procedure v1C(?:?); virtual;//v1C//005371B4
    procedure sub_0048EDE4; dynamic;//005371B0
  end;
  TSectionTrackState = (tsTrackBegin, tsTrackMove, tsTrackEnd);
  TCustomDrawSectionEvent = procedure(HeaderControl:TCustomHeaderControl; Section:THeaderSection; const Rect:TRect; Pressed:Boolean) of object;;
  TCustomSectionNotifyEvent = procedure(HeaderControl:TCustomHeaderControl; Section:THeaderSection) of object;;
  TCustomSectionTrackEvent = procedure(HeaderControl:TCustomHeaderControl; Section:THeaderSection; Width:Integer; State:TSectionTrackState) of object;;
  TSectionDragEvent = procedure(Sender:TObject; FromSection:THeaderSection; ToSection:THeaderSection; var AllowDrag:Boolean) of object;;
  TCustomHCCreateSectionClassEvent = procedure(Sender:TCustomHeaderControl; var SectionClass:THeaderSectionClass) of object;;
  THeaderStyle = (hsButtons, hsFlat);
  TCustomHeaderControl = class(TWinControl)
  published
    constructor Create(AOwner:TComponent);//00537228
    procedure FlipChildren(AllLevels:Boolean);//00537710
    destructor Destroy();//0053732C
  public
    FSections:THeaderSections;//f290
    FSectionDragged:Boolean;//f291
    FSectionStream:TMemoryStream;//f294
    FUpdatingSectionOrder:Boolean;//f298
    FSectionDragged:Boolean;//f299
    FCanvas:TCanvas;//f29C
    FFromIndex:Integer;//f2A0
    FHotTrack:Boolean;//f2A1
    FDragReorder:Boolean;//f2A2
    FToIndex:Integer;//f2A4
    FFullDrag:Boolean;//f2A8
    FHotTrack:Boolean;//f2A9
    FDragReorder:Boolean;//f2AA
    FImageChangeLink:TChangeLink;//f2AC
    FImages:TCustomImageList;//f2B0
    FStyle:THeaderStyle;//f2B4
    FTrackSection:THeaderSection;//f2B8
    FTrackWidth:Integer;//f2BC
    FTrackPos:TPoint;//f2C0
    FOnDrawSection:TCustomDrawSectionEvent;//f2C8
    f2CA:word;//f2CA
    f2CC:dword;//f2CC
    FOnSectionClick:TCustomSectionNotifyEvent;//f2D0
    f2D2:word;//f2D2
    f2D4:dword;//f2D4
    FOnSectionCheck:TCustomSectionNotifyEvent;//f2D8
    f2DA:word;//f2DA
    f2DC:dword;//f2DC
    FOnSectionResize:TCustomSectionNotifyEvent;//f2E0
    f2E2:word;//f2E2
    f2E4:dword;//f2E4
    FOnSectionTrack:TCustomSectionTrackEvent;//f2E8
    f2EA:word;//f2EA
    f2EC:dword;//f2EC
    FOnSectionDrag:TSectionDragEvent;//f2F0
    f2F2:word;//f2F2
    f2F4:dword;//f2F4
    FOnSectionEndDrag:TNotifyEvent;//f2F8
    f2FA:word;//f2FA
    f2FC:dword;//f2FC
    FOnCreateSectionClass:TCustomHCCreateSectionClassEvent;//f300
    FNoSizing:Boolean;//f301
    FOverflow:Boolean;//f302
    f304:dword;//f304
    FCheckBoxes:Boolean;//f308
    FNoSizing:Boolean;//f309
    FOverflow:Boolean;//f30A
    destructor Destroy(); virtual;//0053732C
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v14//0053841C
    constructor Create(AOwner:TComponent); virtual;//v3C//00537228
    //procedure v98(?:?); virtual;//v98//00538058
    procedure CreateParams(var Params:TCreateParams); virtual;//vC4//00537380
    procedure CreateWnd; virtual;//vCC//00537520
    procedure vE0; virtual;//vE0//005375FC
    procedure v108; virtual;//v108//00538730
    procedure v10C; virtual;//v10C//00538768
    procedure SetImages(Value:TCustomImageList); virtual;//v110//00538450
    //procedure WMSize(?:?); message WM_SIZE;//00538168
    //procedure WMWindowPosChangedMsg(?:?); message WM_WINDOWPOSCHANGED;//00538310
    //procedure WMLButtonDown(?:?); message WM_LBUTTONDOWN;//00538108
    procedure CMBiDiModeChanged(var Message:Messages.TMessage); message CM_BIDIMODECHANGED;//005376B8
    //procedure sub_00537BB4(?:?); dynamic;//00537BB4
    //procedure sub_00537CCC(?:?); dynamic;//00537CCC
    //procedure sub_00537884(?:?; ?:?); dynamic;//00537884
    //procedure sub_00537864(?:?); dynamic;//00537864
    procedure sub_00538710; dynamic;//00538710
    //procedure sub_00538510(?:?; ?:?); dynamic;//00538510
    //procedure sub_00537844(?:?); dynamic;//00537844
    //procedure sub_00537824(?:?); dynamic;//00537824
    //procedure sub_005377E8(?:?; ?:?); dynamic;//005377E8
    procedure FlipChildren(AllLevels:Boolean); dynamic;//00537710
    procedure ChangeScale(M:Integer; D:Integer); dynamic;//00537594
  end;
  TDrawSectionEvent = procedure(HeaderControl:THeaderControl; Section:THeaderSection; const Rect:TRect; Pressed:Boolean) of object;;
  TSectionNotifyEvent = procedure(HeaderControl:THeaderControl; Section:THeaderSection) of object;;
  TSectionTrackEvent = procedure(HeaderControl:THeaderControl; Section:THeaderSection; Width:Integer; State:TSectionTrackState) of object;;
  THeaderControl = class(TCustomHeaderControl)
  end;
  TNodeAttachMode = (naAdd, naAddFirst, naAddChild, naAddChildFirst, naInsert);
  TTreeNode = class(TPersistent)
  published
    function GetPrev:TTreeNode;//0053940C
    function getPrevSibling:TTreeNode;//0053925C
    function GetPrevVisible:TTreeNode;//005392DC
    function GetNextChild(Value:TTreeNode):TTreeNode;//00539320
    function getNextSibling:TTreeNode;//00539220
    function GetNextVisible:TTreeNode;//00539298
    function IsFirstNode:Boolean;//005398E0
    function CustomSort(SortProc:PFNTVCOMPARE; Data:NativeInt; ARecurse:Boolean):Boolean;//005399A4
    function GetItem(Index:Integer):TTreeNode;//00539498
    function HasAsParent(Value:TTreeNode):Boolean;//0053896C
    function IndexOf(Value:TTreeNode):Integer;//00539538
    procedure MoveTo(Destination:TTreeNode; Mode:TNodeAttachMode);//00539734
    function GetNext:TTreeNode;//0053938C
    procedure Assign(Source:TPersistent);//00539A5C
    procedure Collapse(Recurse:Boolean);//00538FCC
    procedure Delete;//00539A50
    constructor sub_005387FC(AOwner:TTreeNodes);//005387FC
    destructor Destroy();//0053884C
    procedure AlphaSort(ARecurse:Boolean);//00539998
    function getFirstChild:TTreeNode;//00539330
    function GetHandle:HWND;//00538950
    function GetLastChild:TTreeNode;//0053936C
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure DisplayRect(TextOnly:Boolean; ?:?);//0053995C
    procedure Expand(Recurse:Boolean);//00538FC0
  public
    FOwner:TTreeNodes;//f4
    FText:string;//f8
    FData:Pointer;//fC
    FItemId:HTREEITEM;//f10
    FImageIndex:TImageIndex;//f14
    FSelectedIndex:Integer;//f18
    FOverlayIndex:Integer;//f1C
    FStateIndex:Integer;//f20
    FDeleting:Boolean;//f24
    FInTree:Boolean;//f25
    FEnabled:Boolean;//f26
    FExpandedImageIndex:TImageIndex;//f28
    destructor Destroy(); virtual;//0053884C
    procedure Assign(Source:TPersistent); virtual;//v8//00539A5C
    constructor vC(AOwner:TTreeNodes); virtual;//vC//005387FC
    procedure MoveTo(Destination:TTreeNode; Mode:TNodeAttachMode); virtual;//v10//00539734
  end;
  TTreeNodesEnumerator = class(TObject)
  published
    procedure GetCurrent;//0053A0B0
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FIndex:Integer;//f4
    FTreeNodes:TTreeNodes;//f8
  end;
  TNodeCache = TNodeCache = record//size=8
CacheNode:TTreeNode;//f0
CacheIndex:Integer;//f4
end;;
  TTreeNodes = class(TPersistent)
  published
    procedure Clear;//0053A168
    //function Delete(Node:TTreeNode):?;//0053A160
    procedure Assign(Source:TPersistent);//0053A6AC
    procedure BeginUpdate;//0053A64C
    function GetNode(ItemId:HTREEITEM):TTreeNode;//0053A614
    function GetNodeFromIndex(Index:Integer):TTreeNode;//0053A52C
    procedure EndUpdate;//0053A698
    function GetFirstNode:TTreeNode;//0053A510
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function AddChild(Parent:TTreeNode; S:string):TTreeNode;//0053A1FC
    constructor Create(AOwner:TCustomTreeView);//0053A0BC
    destructor Destroy();//0053A0F8
    function AddNode(Node:TTreeNode; Relative:TTreeNode; Method:TNodeAttachMode; Ptr:Pointer; S:string):TTreeNode;//0053A24C
    function Add(Sibling:TTreeNode; S:string):TTreeNode;//0053A224
    function AddChildObject(Parent:TTreeNode; S:string; Ptr:Pointer):TTreeNode;//0053A20C
    function AddObject(Sibling:TTreeNode; S:string; Ptr:Pointer):TTreeNode;//0053A234
  public
    FOwner:TCustomTreeView;//f4
    FUpdateCount:Integer;//f8
    FNodeCache:TNodeCache;//fC
    destructor Destroy(); virtual;//0053A0F8
    procedure DefineProperties(Filer:TFiler); virtual;//v4//0053A7D0
    procedure Assign(Source:TPersistent); virtual;//v8//0053A6AC
  end;
  TSortType = (stNone, stData, stText, stBoth);
  TMultiSelectStyles = (msControlSelect, msShiftSelect, msVisibleOnly, msSiblingOnly);
  TMultiSelectStyle = set of TMultiSelectStyles;
  ETreeViewError = class(Exception)
  end;
  TTVChangingEvent = procedure(Sender:TObject; Node:TTreeNode; var AllowChange:Boolean) of object;;
  TTVChangedEvent = procedure(Sender:TObject; Node:TTreeNode) of object;;
  TTVEditingEvent = procedure(Sender:TObject; Node:TTreeNode; var AllowEdit:Boolean) of object;;
  TTVEditedEvent = procedure(Sender:TObject; Node:TTreeNode; var S:string) of object;;
  TTVExpandingEvent = procedure(Sender:TObject; Node:TTreeNode; var AllowExpansion:Boolean) of object;;
  TTVCollapsingEvent = procedure(Sender:TObject; Node:TTreeNode; var AllowCollapse:Boolean) of object;;
  TTVExpandedEvent = procedure(Sender:TObject; Node:TTreeNode) of object;;
  TTVCompareEvent = procedure(Sender:TObject; Node1:TTreeNode; Node2:TTreeNode; Data:Integer; var Compare:Integer) of object;;
  TTVHintEvent = procedure(Sender:TObject; const Node:TTreeNode; var Hint:string) of object;;
  TTVCustomDrawEvent = procedure(Sender:TCustomTreeView; const ARect:TRect; var DefaultDraw:Boolean) of object;;
  TTVCustomDrawItemEvent = procedure(Sender:TCustomTreeView; Node:TTreeNode; State:TCustomDrawState; var DefaultDraw:Boolean) of object;;
  TTVAdvancedCustomDrawEvent = procedure(Sender:TCustomTreeView; const ARect:TRect; Stage:TCustomDrawStage; var DefaultDraw:Boolean) of object;;
  TTVAdvancedCustomDrawItemEvent = procedure(Sender:TCustomTreeView; Node:TTreeNode; State:TCustomDrawState; Stage:TCustomDrawStage; var PaintImages:Boolean; var DefaultDraw:Boolean) of object;;
  TTVCreateNodeClassEvent = procedure(Sender:TCustomTreeView; var NodeClass:TTreeNodeClass) of object;;
  TCustomTreeView = class(TWinControl)
  published
    function GetNodeAt(X:Integer; Y:Integer):TTreeNode;//0053B904
    procedure GetHitTestInfoAt(X:Integer; Y:Integer);//0053B948
    procedure FullExpand;//0053BA58
    constructor Create(AOwner:TComponent);//0053AB9C
    procedure ClearSelection(KeepPrimary:Boolean);//0053D4E4
    procedure Subselect(Node:TTreeNode; Validate:Boolean);//0053DBB8
    function GetSelections(AList:TList):TTreeNode;//0053E04C
    function CustomSort(SortProc:PFNTVCOMPARE; Data:NativeInt; ARecurse:Boolean):Boolean;//0053B6B0
    function FindNextToSelect:TTreeNode;//0053DFC0
    procedure Select(Node:TTreeNode; ShiftState:TShiftState);//0053D8DC
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Select(Nodes:TTreeNode; ?:?);//0053DD00
    procedure Deselect(Node:TTreeNode);//0053DF04
    procedure Select(Nodes:TList);//0053DD78
    function GetSelection(Index:Integer):TTreeNode;//0053D7B8
    destructor Destroy();//0053ADA8
    function GetDragImages:TDragImageList;//0053C82C
    procedure FullCollapse;//0053BA84
    procedure AlphaSort(ARecurse:Boolean);//0053B6A4
  public
    FAutoExpand:Boolean;//f290
    FBorderStyle:TBorderStyle;//f291
    FCanvas:TCanvas;//f294
    FCanvasChanged:Boolean;//f298
    FDefEditProc:Pointer;//f29C
    FEditInstance:Pointer;//f2A0
    FDragged:Boolean;//f2A4
    FDragImage:TDragImageList;//f2A8
    FDragNode:TTreeNode;//f2AC
    FHotTrack:Boolean;//f2AD
    FEditHandle:HWND;//f2B0
    FHideSelection:Boolean;//f2B4
    FHotTrack:Boolean;//f2B5
    FImageChangeLink:TChangeLink;//f2B8
    FImages:TCustomImageList;//f2BC
    FInBufferedPrintClient:Boolean;//f2C0
    FLastDropTarget:TTreeNode;//f2C4
    FMemStream:TMemoryStream;//f2C8
    FManualNotify:Boolean;//f2C9
    FReadOnly:Boolean;//f2CA
    FRowSelect:Boolean;//f2CB
    FRClickNode:TTreeNode;//f2CC
    FRightClickSelect:Boolean;//f2D0
    FManualNotify:Boolean;//f2D1
    FReadOnly:Boolean;//f2D2
    FRowSelect:Boolean;//f2D3
    FSaveIndex:Integer;//f2D4
    FSaveIndent:Integer;//f2D8
    FSaveItems:TStringList;//f2DC
    FShowLines:Boolean;//f2DD
    FShowRoot:Boolean;//f2DE
    FSortType:TSortType;//f2DF
    FSaveTopIndex:Integer;//f2E0
    FShowButtons:Boolean;//f2E4
    FShowLines:Boolean;//f2E5
    FShowRoot:Boolean;//f2E6
    FSortType:TSortType;//f2E7
    FStateChanging:Boolean;//f2E8
    FStateImages:TCustomImageList;//f2EC
    FStateChangeLink:TChangeLink;//f2F0
    FToolTips:Boolean;//f2F4
    FTreeNodes:TTreeNodes;//f2F8
    FMultiSelectStyle:TMultiSelectStyle;//f2F9
    FWideText:WideString;//f2FC
    FMultiSelect:Boolean;//f300
    FMultiSelectStyle:TMultiSelectStyle;//f301
    FSelections:TList;//f304
    FSaveIndexes:TList;//f308
    FSelectChanged:Boolean;//f309
    FShiftAnchor:TTreeNode;//f30C
    FSelecting:Boolean;//f310
    FSelectChanged:Boolean;//f311
    FOurFont:Integer;//f314
    FReading:Boolean;//f315
    FStockFont:Integer;//f318
    FCreateWndRestores:Boolean;//f31C
    FReading:Boolean;//f31D
    FEncoding:TEncoding;//f320
    FOnAdvancedCustomDraw:TTVAdvancedCustomDrawEvent;//f328
    f32A:word;//f32A
    f32C:dword;//f32C
    FOnAdvancedCustomDrawItem:TTVAdvancedCustomDrawItemEvent;//f330
    f332:word;//f332
    f334:dword;//f334
    FOnCancelEdit:TTVChangedEvent;//f338
    f33A:word;//f33A
    f33C:dword;//f33C
    FOnChange:TTVChangedEvent;//f340
    f342:word;//f342
    f344:dword;//f344
    FOnChanging:TTVChangingEvent;//f348
    f34A:word;//f34A
    f34C:dword;//f34C
    FOnCollapsed:TTVExpandedEvent;//f350
    f352:word;//f352
    f354:dword;//f354
    FOnCollapsing:TTVCollapsingEvent;//f358
    f35A:word;//f35A
    f35C:dword;//f35C
    FOnCompare:TTVCompareEvent;//f360
    f362:word;//f362
    FOnCustomDraw:TTVCustomDrawEvent;//f368
    f36A:word;//f36A
    f36C:dword;//f36C
    FOnCustomDrawItem:TTVCustomDrawItemEvent;//f370
    f372:word;//f372
    f374:dword;//f374
    FOnDeletion:TTVExpandedEvent;//f378
    f37A:word;//f37A
    f37C:dword;//f37C
    FOnAddition:TTVExpandedEvent;//f380
    f382:word;//f382
    f384:dword;//f384
    FOnEditing:TTVEditingEvent;//f388
    f38A:word;//f38A
    f38C:dword;//f38C
    FOnEdited:TTVEditedEvent;//f390
    f392:word;//f392
    f394:dword;//f394
    FOnExpanded:TTVExpandedEvent;//f398
    f39A:word;//f39A
    f39C:dword;//f39C
    FOnExpanding:TTVExpandingEvent;//f3A0
    f3A2:word;//f3A2
    f3A4:dword;//f3A4
    FOnGetImageIndex:TTVExpandedEvent;//f3A8
    f3AA:word;//f3AA
    f3AC:dword;//f3AC
    FOnGetSelectedIndex:TTVExpandedEvent;//f3B0
    f3B2:word;//f3B2
    f3B4:dword;//f3B4
    FOnHint:TTVHintEvent;//f3B8
    f3BA:word;//f3BA
    f3BC:dword;//f3BC
    FOnCreateNodeClass:TTVCreateNodeClassEvent;//f3C0
    f3C2:word;//f3C2
    f3C4:dword;//f3C4
    FChangeTimer:TTimer;//f3C8
    destructor Destroy(); virtual;//0053ADA8
    procedure CMFontChanged(var Message:TMessage); virtual;//v10//0053BAB0
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v14//0053CDFC
    constructor Create(AOwner:TComponent); virtual;//v3C//0053AB9C
    procedure SetDragMode(Value:TDragMode); virtual;//v84//0053B830
    //procedure v98(?:?); virtual;//v98//0053C84C
    function GetDragImages:TDragImageList; virtual;//vA0//0053C82C
    procedure CreateParams(var Params:TCreateParams); virtual;//vC4//0053AE78
    procedure CreateWnd; virtual;//vCC//0053AFA4
    procedure vE0; virtual;//vE0//0053B270
    procedure v108; virtual;//v108//0053CD28
    procedure v10C; virtual;//v10C//0053CD60
    //function v110(?:?; ?:?):?; virtual;//v110//0053D410
    //function v114(?:?; ?:?; ?:?; ?:?):?; virtual;//v114//0053D468
    //procedure v118(?:?); virtual;//v118//0053CA78
    //procedure v11C(?:?); virtual;//v11C//0053CA98
    //function v120(?:?; ?:?):?; virtual;//v120//0053D370
    procedure Select(Node:TTreeNode; ShiftState:TShiftState); virtual;//v124//0053D8DC
    //procedure Select(Nodes:TTreeNode; ?:?); virtual;//v128//0053DD00
    procedure Select(Nodes:TList); virtual;//v12C//0053DD78
    procedure Deselect(Node:TTreeNode); virtual;//v130//0053DF04
    procedure Subselect(Node:TTreeNode; Validate:Boolean); virtual;//v134//0053DBB8
    procedure ClearSelection(KeepPrimary:Boolean); virtual;//v138//0053D4E4
    function FindNextToSelect:TTreeNode; virtual;//v13C//0053DFC0
    procedure WMNotify(Message:Messages.TWMNotify); message WM_NOTIFY;//0053D148
    //procedure WMContextMenu(?:?); message WM_CONTEXTMENU;//0053CF10
    //procedure WMCtlColorEdit(?:?); message WM_CTLCOLOREDIT;//0053CFD8
    //procedure WMLButtonDown(?:?); message WM_LBUTTONDOWN;//0053D02C
    procedure CMColorChanged(var Message:Messages.TMessage); message CM_COLORCHANGED;//0053B5F0
    procedure CMFontChanged; message CM_FONTCHANGED;//0053B648
    procedure CMCtl3DChanged; message CM_CTL3DCHANGED;//0053B62C
    procedure CMSysColorChange; message CM_SYSCOLORCHANGE;//0053B688
    procedure CMDrag(Message:TCMDrag); message CM_DRAG;//0053C994
    //procedure sub_0053BCAC(?:?); dynamic;//0053BCAC
    //procedure sub_0053CBA4(?:?); dynamic;//0053CBA4
    //procedure sub_0053CC78(?:?); dynamic;//0053CC78
    //procedure sub_0053CB54(?:?); dynamic;//0053CB54
    //procedure sub_0053CB7C(?:?); dynamic;//0053CB7C
    //procedure sub_0053CC00(?:?); dynamic;//0053CC00
    //procedure sub_0053CAF4(?:?); dynamic;//0053CAF4
    //procedure sub_0053CBCC(?:?); dynamic;//0053CBCC
    //procedure sub_0053CC20(?:?); dynamic;//0053CC20
    //procedure sub_0053CAB8(?:?); dynamic;//0053CAB8
    //procedure sub_0053CC4C(?:?); dynamic;//0053CC4C
    procedure sub_004EE488; dynamic;//0053D5B0
    procedure DoExit; dynamic;//0053D59C
    //procedure sub_004E8C70(?:?; ?:?; ?:?; ?:?); dynamic;//0053D81C
    //procedure sub_004E5F1C(?:?); dynamic;//0053BC64
    //procedure sub_004E7840(?:?); dynamic;//0053C8DC
    //procedure sub_004E7880(?:?; ?:?); dynamic;//0053C974
  end;
  TTreeView = class(TCustomTreeView)
  end;
  TProgressBarOrientation = (pbHorizontal, pbVertical);
  TProgressBarStyle = (pbstNormal, pbstMarquee);
  TProgressBarState = (pbsNormal, pbsError, pbsPaused);
  TProgressBar = class(TWinControl)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor Create(AOwner:TComponent);//0053E0E8
  public
    F32BitMode:Boolean;//f290
    FMin:Integer;//f294
    FMax:Integer;//f298
    FPosition:Integer;//f29C
    FSavedPosition:Integer;//f2A0
    FSmooth:Boolean;//f2A1
    FSmoothReverse:Boolean;//f2A2
    FStep:Integer;//f2A4
    FOrientation:TProgressBarOrientation;//f2A8
    FSmooth:Boolean;//f2A9
    FSmoothReverse:Boolean;//f2AA
    FMarqueeInterval:Integer;//f2AC
    FStyle:TProgressBarStyle;//f2B0
    FBarColor:TColor;//f2B4
    FBackgroundColor:TColor;//f2B8
    FState:TProgressBarState;//f2BC
    constructor Create(AOwner:TComponent); virtual;//v3C//0053E0E8
    procedure CreateParams(var Params:TCreateParams); virtual;//vC4//0053E1C8
    procedure CreateWnd; virtual;//vCC//0053E294
    procedure vE0; virtual;//vE0//0053E3A4
    //procedure WMEraseBkgnd(?:?); message WM_ERASEBKGND;//0053E888
  end;
  TAttributeType = (atSelected, atDefaultText);
  TConsistentAttribute = (caBold, caColor, caFace, caItalic, caSize, caStrikeOut, caUnderline, caProtected);
  TConsistentAttributes = set of TConsistentAttribute;
  TTextAttributes = class(TPersistent)
  published
    procedure Assign(Source:TPersistent);//0053ED74
    constructor Create(AttributeType:TAttributeType);//0053E890
  public
    RichEdit:TCustomRichEdit;//f4
    FType:TAttributeType;//f8
    procedure AssignTo(Dest:Classes.TPersistent); virtual;//v0//0053EEB8
    procedure Assign(Source:TPersistent); virtual;//v8//0053ED74
  end;
  TNumberingStyle = (nsNone, nsBullet);
  TParaAttributes = class(TPersistent)
  published
    function GetTab(Index:Byte):Integer;//0053F2C4
    procedure SetTab(Index:Byte; Value:Integer);//0053F2EC
    constructor Create;//0053EFE8
    procedure Assign(Source:TPersistent);//0053F390
  public
    RichEdit:TCustomRichEdit;//f4
    procedure Assign(Source:TPersistent); virtual;//v8//0053F390
  end;
  TRichEditResizeEvent = procedure(Sender:TObject; Rect:TRect) of object;;
  TRichEditProtectChange = procedure(Sender:TObject; StartPos:Integer; EndPos:Integer; var AllowChange:Boolean) of object;;
  TRichEditSaveClipboard = procedure(Sender:TObject; NumObjects:Integer; NumChars:Integer; var SaveClipboard:Boolean) of object;;
  TSearchType = (stWholeWord, stMatchCase);
  TSearchTypes = set of TSearchType;
  TConversion = class(TObject)
  published
    function ConvertWriteStream(Stream:TStream; Buffer:TArray<System.Byte>; BufSize:Integer):Integer;//0053F4C0
    function ConvertReadStream(Stream:TStream; Buffer:TArray<System.Byte>; BufSize:Integer):Integer;//0053F464
    constructor Create();//0053F42C
  public
    constructor Create(); virtual;//v0//0053F42C
    function ConvertReadStream(Stream:TStream; Buffer:TArray<System.Byte>; BufSize:Integer):Integer; virtual;//v4//0053F464
    function ConvertWriteStream(Stream:TStream; Buffer:TArray<System.Byte>; BufSize:Integer):Integer; virtual;//v8//0053F4C0
  end;
  TConversionFormat = TConversionFormat = record//size=8
f4:string;//f4
end;
ConversionClass:TConversionClass;//f0
Extension:string;//f4
end;;
  TCustomRichEdit = class(TCustomMemo)
  published
    procedure Clear;//00540D68
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor Create(AOwner:TComponent);//00540BA8
    destructor Destroy();//00540D0C
    procedure Print(Caption:string);//00541558
    function GetSelTextBuf(Buffer:PWideChar; BufSize:Integer):Integer;//00541250
  public
    FHideScrollBars:Boolean;//f2D0
    FSelAttributes:TTextAttributes;//f2D4
    FDefAttributes:TTextAttributes;//f2D8
    FParagraph:TParaAttributes;//f2DC
    FOldParaAlignment:TAlignment;//f2E0
    FScreenLogPixels:Integer;//f2E4
    FRichEditStrings:TStrings;//f2E8
    FMemStream:TMemoryStream;//f2EC
    FOnSelChange:TNotifyEvent;//f2F0
    FModified:Boolean;//f2F1
    f2F2:word;//f2F2
    FDefaultConverter:TConversionClass;//f2F4
    FHideSelection:Boolean;//f2F8
    FModified:Boolean;//f2F9
    FDefaultConverter:TConversionClass;//f2FC
    FOnResizeRequest:TRichEditResizeEvent;//f300
    f302:word;//f302
    f304:dword;//f304
    FOnProtectChange:TRichEditProtectChange;//f308
    f30A:word;//f30A
    f30C:dword;//f30C
    FOnSaveClipboard:TRichEditSaveClipboard;//f310
    f312:word;//f312
    f314:dword;//f314
    FPageRect:TRect;//f318
    FOldSelLength:Integer;//f320
    FOldSelStart:Integer;//f324
    FOldSelLength:Integer;//f328
    FOldSelStart:Integer;//f32C
    FZoom:Integer;//f330
    destructor Destroy(); virtual;//00540D0C
    constructor Create(AOwner:TComponent); virtual;//v3C//00540BA8
    //function v7C:?; virtual;//v7C//0054154C
    procedure CreateParams(var Params:TCreateParams); virtual;//vC4//00540D9C
    procedure CreateWnd; virtual;//vCC//00540E40
    procedure vE0; virtual;//vE0//00540F8C
    procedure DoSetMaxLength(Value:Integer); virtual;//v108//00541140
    procedure GetSelLength; virtual;//v110//00541204
    //function GetSelStart:?; virtual;//v114//0054122C
    //procedure v118(?:?); virtual;//v118//005412D4
    procedure SetSelLength(Value:Integer); virtual;//v11C//005413E0
    procedure SetSelStart(Value:Integer); virtual;//v120//00541524
    procedure Clear; virtual;//v124//00540D68
    function GetSelTextBuf(Buffer:PWideChar; BufSize:Integer):Integer; virtual;//v128//00541250
    //procedure v12C(?:?); virtual;//v12C//00541160
    //procedure v130(?:?); virtual;//v130//005411BC
    //procedure v134(?:?); virtual;//v134//005419BC
    procedure Print(Caption:string); virtual;//v138//00541558
    //procedure WMPaint(?:?); message WM_PAINT;//00541750
    //procedure WMSetCursor(?:?); message WM_SETCURSOR;//00541814
    procedure WMSetFont; message WM_SETFONT;//005410A8
    procedure WMNCDestroy; message WM_NCDESTROY;//005410A0
    procedure WMRButtonUp(Message:Messages.TWMRButtonUp); message WM_RBUTTONUP;//005410B8
    procedure CMColorChanged(var Message:Messages.TMessage); message CM_COLORCHANGED;//005414E8
    procedure CMFontChanged; message CM_FONTCHANGED;//00541130
    procedure CMBiDiModeChanged(Message:Messages.TMessage); message CM_BIDIMODECHANGED;//0054133C
    //procedure sub_005418C0(?:?); dynamic;//005418C0
    procedure sub_0054199C; dynamic;//0054199C
  end;
  TRichEdit = class(TCustomRichEdit)
  end;
  TUDAlignButton = (udLeft, udRight);
  TUDOrientation = (udHorizontal, udVertical);
  TUDBtnType = (btNext, btPrev);
  TUpDownDirection = (updNone, updUp, updDown);
  TUDClickEvent = procedure(Sender:TObject; Button:TUDBtnType) of object;;
  TUDChangingEvent = procedure(Sender:TObject; var AllowChange:Boolean) of object;;
  TUDChangingEventEx = procedure(Sender:TObject; var AllowChange:Boolean; NewValue:Integer; Direction:TUpDownDirection) of object;;
  TCustomUpDown = class(TWinControl)
  published
    constructor Create(AOwner:TComponent);//005419FC
  public
    FArrowKeys:Boolean;//f290
    FAssociate:TWinControl;//f294
    FMin:Integer;//f298
    FMax:Integer;//f29C
    FIncrement:Integer;//f2A0
    FNewValue:Integer;//f2A4
    FNewValueDelta:Integer;//f2A8
    FWrap:Boolean;//f2A9
    FPosition:Integer;//f2AC
    FThousands:Boolean;//f2B0
    FWrap:Boolean;//f2B1
    FOnClick:TUDClickEvent;//f2B8
    FOrientation:TUDOrientation;//f2B9
    f2BA:word;//f2BA
    f2BC:dword;//f2BC
    FAlignButton:TUDAlignButton;//f2C0
    FOrientation:TUDOrientation;//f2C1
    FOnChanging:TUDChangingEvent;//f2C8
    f2CA:word;//f2CA
    f2CC:dword;//f2CC
    FOnChangingEx:TUDChangingEventEx;//f2D0
    f2D2:word;//f2D2
    f2D4:dword;//f2D4
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v14//005420E4
    constructor Create(AOwner:TComponent); virtual;//v3C//005419FC
    procedure CreateParams(var Params:TCreateParams); virtual;//vC4//00541AE4
    procedure CreateWnd; virtual;//vCC//00541B88
    //procedure WMSize(?:?); message WM_SIZE;//00541CA4
    procedure CMAllChildrenFlipped; message CM_ALLCHILDRENFLIPPED;//00541DDC
    //procedure sub_00541DF8(?:?); dynamic;//00541DF8
    //procedure sub_00541CD4(?:?); dynamic;//00541CD4
    //procedure sub_00541C50(?:?); dynamic;//00541C50
    //procedure sub_00541E2C(?:?); dynamic;//00541E2C
    procedure sub_00541D44; dynamic;//00541D44
  end;
  TUpDown = class(TCustomUpDown)
  end;
  TListGroupState = (lgsNormal, lgsHidden, lgsCollapsed, lgsNoHeader, lgsCollapsible, lgsFocused, lgsSelected, lgsSubseted, lgsSubSetLinkFocused);
  TListGroupStateSet = set of TListGroupState;
  TListGroup = class(TCollectionItem)
  published
    procedure Assign(Source:TPersistent);//0054AEEC
    destructor Destroy();//0054A780
    constructor Create(Collection:TCollection);//0054A6C0
  public
    FHeader:string;//fC
    FFooter:string;//f10
    FGroupID:Integer;//f14
    FState:TListGroupStateSet;//f18
    FHeaderAlign:TAlignment;//f1A
    FFooterAlign:TAlignment;//f1B
    FSubtitle:string;//f1C
    FDescriptionTop:string;//f20
    FDescriptionBottom:string;//f24
    FTitleImage:TImageIndex;//f28
    destructor Destroy(); virtual;//0054A780
    procedure DefineProperties(Filer:TFiler); virtual;//v4//0054ADAC
    procedure Assign(Source:TPersistent); virtual;//v8//0054AEEC
    //procedure GetDisplayName(?:?); virtual;//vC//0054AEC0
    procedure v14; virtual;//v14//0054AEE4
    constructor Create(Collection:TCollection); virtual;//v1C//0054A6C0
  end;
  TListGroups = class(TCollection)
  published
    function GetItem(Index:Integer):TListGroup;//0054AF58
    function Owner:TCustomListView;//0054B08C
    constructor Create(AOwner:TCustomListView);//0054B048
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    ...FOwner:TCustomListView;//f18
    //procedure v1C(?:?); virtual;//v1C//0054B014
    procedure sub_0048EDE4; dynamic;//0054B010
  end;
  TListColumn = class(TCollectionItem)
  published
    procedure Assign(Source:TPersistent);//00542A48
    destructor Destroy();//0054255C
    constructor Create;//005424AC
  public
    FAlignment:TAlignment;//fC
    FAutoSize:Boolean;//fD
    FCaption:string;//f10
    FMaxWidth:TWidth;//f14
    FMinWidth:TWidth;//f18
    FImageIndex:TImageIndex;//f1C
    FPrivateWidth:TWidth;//f20
    FWidth:TWidth;//f24
    FOrderTag:Integer;//f28
    FTag:Integer;//f2C
    destructor Destroy(); virtual;//0054255C
    procedure DefineProperties(Filer:Classes.TFiler); virtual;//v4//005425D0
    procedure Assign(Source:TPersistent); virtual;//v8//00542A48
    function GetDisplayName:UnicodeString; virtual;//vC//00542ABC
    procedure v14; virtual;//v14//00542804
    constructor Create; virtual;//v1C//005424AC
  end;
  TListColumns = class(TCollection)
  published
    function GetItem(Index:Integer):TListColumn;//00542B24
    function Owner:TCustomListView;//00542B38
    constructor Create;//00542AE0
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    .FOwner:TCustomListView;//f18
    procedure Update(Item:Classes.TCollectionItem); virtual;//v1C//00542B40
    procedure sub_0048EDE4; dynamic;//00542B3C
  end;
  TDisplayCode = (drBounds, drIcon, drLabel, drSelectBounds);
  TListItem = class(TPersistent)
  published
    procedure Update;//00543798
    procedure MakeVisible(PartialOK:Boolean);//005435FC
    function GetPosition:TPoint;//00543C50
    procedure SetSubItemImage(Index:Integer; Value:Integer);//00543D10
    function GetSubItemImage(Index:Integer):Integer;//00543D04
    procedure SetPosition(Value:TPoint);//00543C80
    procedure Assign(Source:TPersistent);//00543B54
    destructor Destroy();//00543530
    constructor Create;//005434CC
    function DisplayRect(Code:TDisplayCode):TRect;//00543CD4
    procedure Delete;//005435C4
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FOwner:TListItems;//f4
    FSubItems:TStrings;//f8
    FImageIndex:TImageIndex;//fC
    FIndent:Integer;//f10
    FIndex:Integer;//f14
    FOverlayIndex:TImageIndex;//f18
    FStateIndex:TImageIndex;//f1C
    FCaption:string;//f20
    FDeleting:Boolean;//f24
    FProcessedDeleting:Boolean;//f25
    FChecked:Boolean;//f26
    FData:Pointer;//f28
    FGroupID:Integer;//f2C
    destructor Destroy(); virtual;//00543530
    procedure Assign(Source:TPersistent); virtual;//v8//00543B54
    constructor Create; virtual;//vC//005434CC
  end;
  TListItemsEnumerator = class(TObject)
  published
    function GetCurrent:TListItem;//00543D84
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FIndex:Integer;//f4
    FListItems:TListItems;//f8
  end;
  TListItems = class(TPersistent)
  published
    procedure EndUpdate;//00544194
    procedure Delete(Index:Integer);//00544E9C
    procedure Clear;//00543F88
    function GetItem(Index:Integer):TListItem;//00543E9C
    procedure IndexOf(Value:TListItem);//00543F28
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function Add:TListItem;//00543DF8
    destructor Destroy();//00543DCC
    constructor Create;//00543D90
    procedure BeginUpdate;//00543FB4
    procedure Assign(Source:TPersistent);//005441A8
    function AddItem(Item:TListItem; Index:Integer):TListItem;//00543E04
  public
    FOwner:TCustomListView;//f4
    FUpdateCount:Integer;//f8
    FNoRedraw:Boolean;//fC
    destructor Destroy(); virtual;//00543DCC
    procedure DefineProperties(Filer:Classes.TFiler); virtual;//v4//005442BC
    procedure Assign(Source:TPersistent); virtual;//v8//005441A8
  end;
  TWorkArea = class(TCollectionItem)
  published
    function GetDisplayName:string;//00542D40
    procedure SetDisplayName(Value:string);//00542D60
    constructor Create;//00542CFC
  public
    FRect:TRect;//fC
    FDisplayName:string;//f1C
    FColor:TColor;//f20
    function GetDisplayName:string; virtual;//vC//00542D40
    procedure SetDisplayName(Value:string); virtual;//v18//00542D60
    constructor Create; virtual;//v1C//00542CFC
  end;
  TWorkAreas = class(TOwnedCollection)
  published
    function GetItem(Index:Integer):TWorkArea;//00542E9C
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    procedure v1C; virtual;//v1C//00542DCC
  end;
  TIconArrangement = (iaTop, iaLeft);
  TIconOptions = class(TPersistent)
  published
    constructor Create;//00544EE0
  public
    FListView:TCustomListView;//f4
    FArrangement:TIconArrangement;//f8
    FAutoArrange:Boolean;//f9
    FWrapText:Boolean;//fA
  end;
  TListArrangement = (arAlignBottom, arAlignLeft, arAlignRight, arAlignTop, arDefault, arSnapToGrid);
  TViewStyle = (vsIcon, vsSmallIcon, vsList, vsReport);
  TItemState = (isNone, isCut, isDropHilited, isFocused, isSelected, isActivating);
  TItemStates = set of TItemState;
  TItemChange = (ctText, ctImage, ctState);
  TItemFind = (ifData, ifPartialString, ifExactString, ifNearest);
  TSearchDirection = (sdLeft, sdRight, sdAbove, sdBelow, sdAll);
  TListHotTrackStyle = (htHandPoint, htUnderlineCold, htUnderlineHot);
  TListHotTrackStyles = set of TListHotTrackStyle;
  TLVDeletedEvent = procedure(Sender:TObject; Item:TListItem) of object;;
  TLVEditingEvent = procedure(Sender:TObject; Item:TListItem; var AllowEdit:Boolean) of object;;
  TLVEditedEvent = procedure(Sender:TObject; Item:TListItem; var S:string) of object;;
  TLVChangeEvent = procedure(Sender:TObject; Item:TListItem; Change:TItemChange) of object;;
  TLVChangingEvent = procedure(Sender:TObject; Item:TListItem; Change:TItemChange; var AllowChange:Boolean) of object;;
  TLVColumnClickEvent = procedure(Sender:TObject; Column:TListColumn) of object;;
  TLVColumnRClickEvent = procedure(Sender:TObject; Column:TListColumn; Point:TPoint) of object;;
  TLVCompareEvent = procedure(Sender:TObject; Item1:TListItem; Item2:TListItem; Data:Integer; var Compare:Integer) of object;;
  TLVNotifyEvent = procedure(Sender:TObject; Item:TListItem) of object;;
  TLVSelectItemEvent = procedure(Sender:TObject; Item:TListItem; Selected:Boolean) of object;;
  TLVCheckedItemEvent = procedure(Sender:TObject; Item:TListItem) of object;;
  TLVDrawItemEvent = procedure(Sender:TCustomListView; Item:TListItem; Rect:TRect; State:TOwnerDrawState) of object;;
  TLVCustomDrawEvent = procedure(Sender:TCustomListView; const ARect:TRect; var DefaultDraw:Boolean) of object;;
  TLVCustomDrawItemEvent = procedure(Sender:TCustomListView; Item:TListItem; State:TCustomDrawState; var DefaultDraw:Boolean) of object;;
  TLVCustomDrawSubItemEvent = procedure(Sender:TCustomListView; Item:TListItem; SubItem:Integer; State:TCustomDrawState; var DefaultDraw:Boolean) of object;;
  TLVAdvancedCustomDrawEvent = procedure(Sender:TCustomListView; const ARect:TRect; Stage:TCustomDrawStage; var DefaultDraw:Boolean) of object;;
  TLVAdvancedCustomDrawItemEvent = procedure(Sender:TCustomListView; Item:TListItem; State:TCustomDrawState; Stage:TCustomDrawStage; var DefaultDraw:Boolean) of object;;
  TLVAdvancedCustomDrawSubItemEvent = procedure(Sender:TCustomListView; Item:TListItem; SubItem:Integer; State:TCustomDrawState; Stage:TCustomDrawStage; var DefaultDraw:Boolean) of object;;
  TLVOwnerDataEvent = procedure(Sender:TObject; Item:TListItem) of object;;
  TLVOwnerDataFindEvent = procedure(Sender:TObject; Find:TItemFind; const FindString:string; const FindPosition:TPoint; FindData:Pointer; StartIndex:Integer; Direction:TSearchDirection; Wrap:Boolean; var Index:Integer) of object;;
  TLVOwnerDataHintEvent = procedure(Sender:TObject; StartIndex:Integer; EndIndex:Integer) of object;;
  TLVOwnerDataStateChangeEvent = procedure(Sender:TObject; StartIndex:Integer; EndIndex:Integer; OldState:TItemStates; NewState:TItemStates) of object;;
  TLVSubItemImageEvent = procedure(Sender:TObject; Item:TListItem; SubItem:Integer; var ImageIndex:Integer) of object;;
  TLVInfoTipEvent = procedure(Sender:TObject; Item:TListItem; var InfoTip:string) of object;;
  TLVCreateItemClassEvent = procedure(Sender:TCustomListView; var ItemClass:TListItemClass) of object;;
  :TCustomListView.:1 = array of Integer;
//elSize = 4
//varType equivalent: varInteger;
  TCustomListView = class(TCustomMultiSelectListControl)
  published
    procedure Clear;//0054A360
    function AlphaSort:Boolean;//005485AC
    procedure Arrange(Code:TListArrangement);//00548CDC
    constructor Create(AOwner:TComponent);//00545038
    function GetNextItem(StartItem:TListItem; Direction:TSearchDirection; States:TItemStates):TListItem;//00548B2C
    function GetNearestItem(Point:TPoint; Direction:TSearchDirection):TListItem;//00548C00
    function GetItemAt(X:Integer; Y:Integer):TListItem;//00548C70
    procedure SelectAll;//0054A324
    procedure UpdateItems(FirstIndex:Integer; LastIndex:Integer);//0054602C
    function GetColumnFromIndex(Index:Integer):TListColumn;//005488E4
    function GetDragImages:TDragImageList;//0054809C
    procedure GetCount;//0054A318
    procedure CopySelection(Destination:TCustomListControl);//0054A1FC
    destructor Destroy();//005452A4
    procedure ClearSelection;//0054A1C0
    procedure AddItem(Item:string; AObject:TObject);//00547DE8
    function FindCaption(StartIndex:Integer; Value:string; Wrap:Boolean; Inclusive:Boolean; Partial:Boolean):TListItem;//005488F0
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure DeleteSelected;//0054A270
  public
    FCanvas:TCanvas;//f298
    FBorderStyle:TBorderStyle;//f29C
    FViewStyle:TViewStyle;//f29D
    FReadOnly:Boolean;//f29E
    FLargeImages:TCustomImageList;//f2A0
    FSaveSelectedIndex:Integer;//f2A4
    FSmallImages:TCustomImageList;//f2A8
    FStateImages:TCustomImageList;//f2AC
    FGroupHeaderImages:TCustomImageList;//f2B0
    FSortType:TSortType;//f2B1
    FColumnClick:Boolean;//f2B2
    FShowColumnHeaders:Boolean;//f2B3
    FDragImage:TDragImageList;//f2B4
    FMultiSelect:Boolean;//f2B8
    FSortType:TSortType;//f2B9
    FColumnClick:Boolean;//f2BA
    FShowColumnHeaders:Boolean;//f2BB
    FListItems:TListItems;//f2BC
    FClicked:Boolean;//f2C0
    FRClicked:Boolean;//f2C1
    FIconOptions:TIconOptions;//f2C4
    FHideSelection:Boolean;//f2C8
    FListColumns:TListColumns;//f2CC
    FOwnerDraw:Boolean;//f2CD
    FMemStream:TMemoryStream;//f2D0
    FOwnerData:Boolean;//f2D4
    FOwnerDraw:Boolean;//f2D5
    FColStream:TMemoryStream;//f2D8
    FCheckStream:TMemoryStream;//f2DC
    FDefEditProc:Pointer;//f2E0
    FDefHeaderProc:Pointer;//f2E4
    FEditHandle:HWND;//f2E8
    FHeaderHandle:HWND;//f2EC
    FAllocBy:Integer;//f2F0
    FDragIndex:Integer;//f2F4
    FFlatScrollBars:Boolean;//f2F5
    FFullDrag:Boolean;//f2F6
    FGridLines:Boolean;//f2F7
    FLastDropTarget:TListItem;//f2F8
    FHotTrackStyles:TListHotTrackStyles;//f2F9
    FRowSelect:Boolean;//f2FA
    FCheckboxes:Boolean;//f2FC
    FFlatScrollBars:Boolean;//f2FD
    FFullDrag:Boolean;//f2FE
    FGridLines:Boolean;//f2FF
    FHotTrack:Boolean;//f300
    FHotTrackStyles:TListHotTrackStyles;//f301
    FRowSelect:Boolean;//f302
    FHoverTime:Integer;//f304
    FLargeChangeLink:TChangeLink;//f308
    FSmallChangeLink:TChangeLink;//f30C
    FHeaderChangeLink:TChangeLink;//f310
    FReading:Boolean;//f311
    FCanvasChanged:Boolean;//f312
    FStateChangeLink:TChangeLink;//f314
    FSavedSort:TSortType;//f318
    FReading:Boolean;//f319
    FCanvasChanged:Boolean;//f31A
    FTempItem:TListItem;//f31C
    FUpdatingColumnOrder:Boolean;//f31D
    FWorkAreas:TWorkAreas;//f320
    FShowWorkAreas:Boolean;//f324
    FUpdatingColumnOrder:Boolean;//f325
    FOurFont:Integer;//f328
    FStockFont:Integer;//f32C
    FInBufferedPrintClient:Boolean;//f330
    FOwnerDataCount:Integer;//f334
    FPanPoint:TPoint;//f338
    FOnAdvancedCustomDraw:TLVAdvancedCustomDrawEvent;//f340
    f342:word;//f342
    f344:dword;//f344
    FOnAdvancedCustomDrawItem:TLVAdvancedCustomDrawItemEvent;//f348
    f34A:word;//f34A
    f34C:dword;//f34C
    FOnAdvancedCustomDrawSubItem:TLVAdvancedCustomDrawSubItemEvent;//f350
    f352:word;//f352
    f354:dword;//f354
    FOnChange:TLVChangeEvent;//f358
    f35A:word;//f35A
    f35C:dword;//f35C
    FOnChanging:TLVChangingEvent;//f360
    f362:word;//f362
    f364:dword;//f364
    FOnColumnClick:TLVColumnClickEvent;//f368
    f36A:word;//f36A
    f36C:dword;//f36C
    FOnColumnDragged:TNotifyEvent;//f370
    FOnColumnRightClick:TLVColumnRClickEvent;//f378
    f37A:word;//f37A
    f37C:dword;//f37C
    FOnCompare:TLVCompareEvent;//f380
    f382:word;//f382
    f384:dword;//f384
    FOnCustomDraw:TLVCustomDrawEvent;//f388
    f38A:word;//f38A
    f38C:dword;//f38C
    FOnCustomDrawItem:TLVCustomDrawItemEvent;//f390
    f392:word;//f392
    f394:dword;//f394
    FOnCustomDrawSubItem:TLVCustomDrawSubItemEvent;//f398
    f39A:word;//f39A
    f39C:dword;//f39C
    FOnData:TLVOwnerDataEvent;//f3A0
    f3A2:word;//f3A2
    f3A4:dword;//f3A4
    FOnDataFind:TLVOwnerDataFindEvent;//f3A8
    f3AA:word;//f3AA
    f3AC:dword;//f3AC
    FOnDataHint:TLVOwnerDataHintEvent;//f3B0
    f3B2:word;//f3B2
    f3B4:dword;//f3B4
    FOnDataStateChange:TLVOwnerDataStateChangeEvent;//f3B8
    f3BA:word;//f3BA
    f3BC:dword;//f3BC
    FOnDeletion:TLVDeletedEvent;//f3C0
    f3C2:word;//f3C2
    f3C4:dword;//f3C4
    FOnDrawItem:TLVDrawItemEvent;//f3C8
    f3CA:word;//f3CA
    f3CC:dword;//f3CC
    FOnEdited:TLVEditedEvent;//f3D0
    f3D2:word;//f3D2
    f3D4:dword;//f3D4
    FOnEditing:TLVEditingEvent;//f3D8
    f3DA:word;//f3DA
    f3DC:dword;//f3DC
    FOnGetImageIndex:TLVNotifyEvent;//f3E0
    f3E2:word;//f3E2
    f3E4:dword;//f3E4
    FOnGetSubItemImage:TLVSubItemImageEvent;//f3E8
    f3EA:word;//f3EA
    f3EC:dword;//f3EC
    FOnInfoTip:TLVInfoTipEvent;//f3F0
    f3F2:word;//f3F2
    f3F4:dword;//f3F4
    FOnInsert:TLVDeletedEvent;//f3F8
    f3FA:word;//f3FA
    f3FC:dword;//f3FC
    FOnSelectItem:TLVSelectItemEvent;//f400
    f402:word;//f402
    f404:dword;//f404
    FOnItemChecked:TLVCheckedItemEvent;//f408
    f40A:word;//f40A
    f40C:dword;//f40C
    FOnCreateItemClass:TLVCreateItemClassEvent;//f410
    f412:word;//f412
    FGroupView:Boolean;//f414
    FListGroups:TListGroups;//f418
    FGroupView:Boolean;//f41C
    FEditInstance:Pointer;//f420
    FHeaderInstance:Pointer;//f424
    FSavedIndents::1;//f428
    FDeletingAllItems:Boolean;//f42C
    destructor Destroy(); virtual;//005452A4
    procedure CMFontChanged(var Message:TMessage); virtual;//v10//00545A5C
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v14//00545A9C
    //function v1C:?; virtual;//v1C//00547F54
    constructor Create(AOwner:TComponent); virtual;//v3C//00545038
    //procedure v54(?:?; ?:?); virtual;//v54//00548164
    //procedure v98(?:?); virtual;//v98//005480B8
    function GetDragImages:TDragImageList; virtual;//vA0//0054809C
    procedure CreateParams(var Params:TCreateParams); virtual;//vC4//005453BC
    procedure CreateWnd; virtual;//vCC//0054559C
    procedure vE0; virtual;//vE0//005458DC
    //function v108:?; virtual;//v108//0054699C
    //procedure v10C(?:?); virtual;//v10C//00546420
    procedure AddItem(Item:string; AObject:TObject); virtual;//v110//00547DE8
    procedure Clear; virtual;//v114//0054A360
    procedure ClearSelection; virtual;//v118//0054A1C0
    procedure CopySelection(Destination:TCustomListControl); virtual;//v11C//0054A1FC
    procedure DeleteSelected; virtual;//v120//0054A270
    procedure GetCount; virtual;//v124//0054A318
    procedure SelectAll; virtual;//v12C//0054A324
    procedure v130; virtual;//v130//00546C60
    procedure SetMultiSelect(Value:Boolean); virtual;//v134//00546480
    procedure v138; virtual;//v138//00546A98
    procedure v13C; virtual;//v13C//00546AD0
    //function v140(?:?; ?:?):?; virtual;//v140//00549990
    //function v144(?:?; ?:?; ?:?):?; virtual;//v144//005499E8
    //function v148(?:?; ?:?; ?:?; ?:?):?; virtual;//v148//00549A5C
    //procedure v14C(?:?; ?:?); virtual;//v14C//00547BD4
    //procedure v150(?:?); virtual;//v150//00549E6C
    //procedure v154(?:?; ?:?; ?:?); virtual;//v154//00549AD4
    //function v158(?:?):?; virtual;//v158//005469C4
    //function v15C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?; virtual;//v15C//005469EC
    //function v160(?:?):?; virtual;//v160//00546A38
    //function v164(?:?; ?:?; ?:?):?; virtual;//v164//00546A60
    //function v168(?:?; ?:?):?; virtual;//v168//0054987C
    procedure SetViewStyle(Value:TViewStyle); virtual;//v16C//005468B4
    //procedure WMPaint(?:?); message WM_PAINT;//00549D04
    //procedure WMWindowPosChangedMsg(?:?); message WM_WINDOWPOSCHANGED;//0054970C
    procedure WMNotify(Message:Messages.TWMNotify); message WM_NOTIFY;//005465A0
    //procedure WMContextMenu(?:?); message WM_CONTEXTMENU;//0054A0E4
    procedure WMVScroll(Message:Messages.TWMHScroll); message WM_VSCROLL;//0054A424
    //procedure WMCtlColorEdit(?:?); message WM_CTLCOLOREDIT;//0054A16C
    //procedure WMLButtonDown(?:?); message WM_LBUTTONDOWN;//005493E4
    procedure WMParentNotify(Message:Messages.TWMParentNotify); message WM_PARENTNOTIFY;//0054694C
    procedure CMColorChanged(var Message:Messages.TMessage); message CM_COLORCHANGED;//00546558
    procedure CMFontChanged; message CM_FONTCHANGED;//0054681C
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//0054657C
    //procedure CMExit(?:?); message CM_EXIT;//00548424
    procedure CMDrag(Message:TCMDrag); message CM_DRAG;//005482F0
    //procedure CMHintShow(?:?); message CM_HINTSHOW;//00549D44
    //procedure sub_00549740(?:?); dynamic;//00549740
    //procedure sub_00546CEC(?:?); dynamic;//00546CEC
    //procedure sub_00547DC0(?:?); dynamic;//00547DC0
    //procedure sub_0054801C(?:?); dynamic;//0054801C
    //procedure sub_00547FB0(?:?); dynamic;//00547FB0
    //procedure sub_00547D90(?:?; ?:?); dynamic;//00547D90
    //procedure sub_00547D70(?:?); dynamic;//00547D70
    //procedure sub_00547F70(?:?; ?:?); dynamic;//00547F70
    //procedure sub_00547FF0(?:?); dynamic;//00547FF0
    //procedure sub_00547E50(?:?; ?:?); dynamic;//00547E50
    //procedure sub_004E9010(?:?; ?:?; ?:?; ?:?); dynamic;//0054A060
    procedure sub_004E9934; dynamic;//0054A3B8
    //procedure sub_004E7840(?:?); dynamic;//005481E4
    //procedure sub_004E7880(?:?; ?:?); dynamic;//005482C4
    procedure ChangeScale(M:Integer; D:Integer); dynamic;//00547CDC
    //procedure sub_004E980C(?:?; ?:?); dynamic;//0054A3C0
  end;
  TListView = class(TCustomListView)
  end;
  TListViewActionLink = class(TListActionLink)
  public
    //procedure vAC(?:?); virtual;//vAC//0054A694
    //procedure vB4(?:?); virtual;//vB4//0054A65C
    procedure AddItem(ACaption:UnicodeString; AImageIndex:Integer; DataPtr:TCustomData); virtual;//vB8//0054A5E4
  end;
  TTabControlStyleHook = class(TMouseTrackControlStyleHook)
  published
    constructor Create(AControl:TWinControl);//0054B0F0
    destructor Destroy();//0054B150
  public
    FHotTabIndex:Integer;//f28
    FMousePosition:TMousePosition;//f2C
    FUpDownHandle:HWND;//f30
    FUpDownInstance:Pointer;//f34
    FUpDownDefWndProc:Pointer;//f38
    FUpDownLeftPressed:Boolean;//f3C
    FUpDownRightPressed:Boolean;//f3D
    FUpDownMouseOnLeft:Boolean;//f3E
    FUpDownMouseOnRight:Boolean;//f3F
    destructor Destroy(); virtual;//0054B150
    //procedure v10(?:?); virtual;//v10//0054C158
    //procedure v14(?:?); virtual;//v14//0054C0DC
    //procedure v1C(?:?); virtual;//v1C//0054B1D8
    constructor Create(AControl:TWinControl); virtual;//v20//0054B0F0
    //procedure v40(?:?; ?:?); virtual;//v40//0054BAB4
    //procedure v44(?:?); virtual;//v44//0054B358
    //procedure v48(?:?); virtual;//v48//0054B980
    procedure WMEraseBkgnd(Message:Messages.TMessage); message WM_ERASEBKGND;//0054C074
    //procedure WMMouseMove(?:?); message WM_MOUSEMOVE;//0054C37C
    procedure WMParentNotify; message WM_PARENTNOTIFY;//0054B1C0
    procedure CMMouseLeave; message CM_MOUSELEAVE;//0054C374
    //procedure sub_0054B190(?:?); dynamic;//0054B190
  end;
  TTreeViewStyleHook = class(TScrollingStyleHook)
  published
    constructor Create(AControl:TWinControl);//0054C640
  public
    procedure v1C; virtual;//v1C//0054CAD8
    constructor Create(AControl:TWinControl); virtual;//v20//0054C640
    //procedure WMMouseMove(?:?); message WM_MOUSEMOVE;//0054C734
    //procedure sub_0054C6FC(?:?); dynamic;//0054C6FC
    //procedure sub_0054C71C(?:?); dynamic;//0054C71C
  end;
  TListViewStyleHook = class(TScrollingStyleHook)
  published
    constructor Create(AControl:TWinControl);//0054CAE0
    destructor Destroy();//0054CBD0
  public
    FHeaderHandle:HWND;//f4C
    FHeaderInstance:Pointer;//f50
    FDefHeaderProc:Pointer;//f54
    FPressedSection:Integer;//f58
    FHeaderLBtnDown:Boolean;//f5C
    destructor Destroy(); virtual;//0054CBD0
    procedure v1C; virtual;//v1C//0054CC50
    constructor Create(AControl:TWinControl); virtual;//v20//0054CAE0
    //procedure v50(?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;//v50//0054D0DC
    //procedure v54(?:?); virtual;//v54//0054CC58
    //procedure v58(?:?); virtual;//v58//0054CE30
    procedure WMNotify; message WM_NOTIFY;//0054CC10
    //procedure WMMouseMove(?:?); message WM_MOUSEMOVE;//0054D22C
    //procedure sub_0054CD98(?:?); dynamic;//0054CD98
    //procedure sub_0054CDD8(?:?); dynamic;//0054CDD8
    //procedure sub_0054CDB8(?:?); dynamic;//0054CDB8
  end;
  TProgressBarStyleHook = class(TStyleHook)
  published
    constructor Create(AControl:TWinControl);//0054D6D8
  public
    //procedure v10(?:?); virtual;//v10//0054D928
    procedure v1C; virtual;//v1C//0054D7C4
    constructor Create(AControl:TWinControl); virtual;//v20//0054D6D8
    //procedure v30(?:?); virtual;//v30//0054D840
    //procedure v34(?:?); virtual;//v34//0054D7CC
    //procedure WMNCCalcSize(?:?); message WM_NCCALCSIZE;//0054D7B8
  end;
  TStatusBarStyleHook = class(TStyleHook)
  published
    constructor Create(AControl:TWinControl);//0054DA14
  public
    //procedure v10(?:?); virtual;//v10//0054DA54
    procedure v1C; virtual;//v1C//0054DFD4
    constructor Create(AControl:TWinControl); virtual;//v20//0054DA14
  end;
  TUpDownStyleHook = class(TMouseTrackControlStyleHook)
  published
    constructor Create(AControl:TWinControl);//0054DFDC
  public
    FLeftPressed:Boolean;//f28
    FRightPressed:Boolean;//f29
    FMouseOnLeft:Boolean;//f2A
    FMouseOnRight:Boolean;//f2B
    //procedure v10(?:?); virtual;//v10//0054E074
    procedure v1C; virtual;//v1C//0054E768
    constructor Create(AControl:TWinControl); virtual;//v20//0054DFDC
    procedure v38; virtual;//v38//0054E770
    //procedure WMMouseMove(?:?); message WM_MOUSEMOVE;//0054E5C8
    //procedure WMLButtonDown(?:?); message WM_LBUTTONDOWN;//0054E404
    //procedure WMLButtonUp(?:?); message WM_LBUTTONUP;//0054E590
    //procedure WMLButtonDblClk(?:?); message WM_LBUTTONDBLCLK;//0054E278
  end;
  THeaderStyleHook = class(TMouseTrackControlStyleHook)
  published
    constructor Create(AControl:TWinControl);//0054E780
  public
    FPressedSectionIndex:Integer;//f28
    FHotSectionIndex:Integer;//f2C
    //procedure v10(?:?); virtual;//v10//0054E7E8
    procedure v1C; virtual;//v1C//0054EC24
    constructor Create(AControl:TWinControl); virtual;//v20//0054E780
    procedure v38; virtual;//v38//0054E7D8
    //procedure v40(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;//v40//0054E968
    procedure WMEraseBkgnd(Message:Messages.TMessage); message WM_ERASEBKGND;//0054E7CC
    //procedure WMMouseMove(?:?); message WM_MOUSEMOVE;//0054EC2C
    //procedure WMLButtonDown(?:?); message WM_LBUTTONDOWN;//0054EB58
    procedure WMLButtonUp; message WM_LBUTTONUP;//0054EBCC
    procedure WMRButtonUp; message WM_RBUTTONUP;//0054EBF8
  end;
  TRichEditStyleHook = class(TScrollingStyleHook)
  public
    //procedure v1C(?:?); virtual;//v1C//0054ED68
    //procedure sub_0054ECB0(?:?); dynamic;//0054ECB0
    //procedure sub_0054ECE0(?:?); dynamic;//0054ECE0
  end;
  TTabStrings = class(TStrings)
  published
    procedure Insert(Index:Integer; S:string);//0053383C
    procedure Delete(Index:Integer);//00533460
    procedure Clear;//005333F0
  public
    ............FTabControl:TCustomTabControl;//f2C
    function Get(Index:Integer):UnicodeString; virtual;//vC//005334FC
    function GetCount:Integer; virtual;//v14//00533600
    function GetObject(Index:Integer):TObject; virtual;//v18//0053361C
    //procedure v20(?:?; ?:?); virtual;//v20//005336BC
    procedure PutObject(Index:Integer; AObject:TObject); virtual;//v24//0053379C
    //procedure v34(?:?); virtual;//v34//0053391C
    procedure Clear; virtual;//v48//005333F0
    procedure Delete(Index:Integer); virtual;//v4C//00533460
    procedure Insert(Index:Integer; S:string); virtual;//v64//0053383C
  end;
    function InitCommonControl(CC:Integer):Boolean;//0053311C
    function GetComCtlVersion:Integer;//00533148
    //procedure sub_00533190(?:TWinControl; ?:?; ?:Boolean);//00533190
    procedure TabControlError(const S:UnicodeString);//005333D8
    function Get(Index:Integer):UnicodeString;//005334FC
    function GetCount:Integer;//00533600
    function GetObject(Index:Integer):TObject;//0053361C
    //procedure sub_005336BC(?:?; ?:?);//005336BC
    procedure PutObject(Index:Integer; AObject:TObject);//0053379C
    //procedure sub_0053391C(?:?);//0053391C

implementation

//0051E0AC
constructor THintAction.Create(AOwner:TComponent);
begin
{*
 0051E0AC    push        ebx
 0051E0AD    push        esi
 0051E0AE    test        dl,dl
>0051E0B0    je          0051E0BA
 0051E0B2    add         esp,0FFFFFFF0
 0051E0B5    call        @ClassCreate
 0051E0BA    mov         ebx,edx
 0051E0BC    mov         esi,eax
 0051E0BE    xor         edx,edx
 0051E0C0    mov         eax,esi
 0051E0C2    call        TCustomAction.Create
 0051E0C7    mov         byte ptr [esi+69],0;THintAction.FDisableIfNoHandler:Boolean
 0051E0CB    mov         eax,esi
 0051E0CD    test        bl,bl
>0051E0CF    je          0051E0E0
 0051E0D1    call        @AfterConstruction
 0051E0D6    pop         dword ptr fs:[0]
 0051E0DD    add         esp,0C
 0051E0E0    mov         eax,esi
 0051E0E2    pop         esi
 0051E0E3    pop         ebx
 0051E0E4    ret
*}
end;

//0053311C
function InitCommonControl(CC:Integer):Boolean;
begin
{*
 0053311C    push        ebx
 0053311D    add         esp,0FFFFFFF8
 00533120    mov         dword ptr [esp],8
 00533127    mov         dword ptr [esp+4],eax
 0053312B    mov         eax,esp
 0053312D    call        InitCommonControlsEx
 00533132    cmp         eax,1
 00533135    sbb         ebx,ebx
 00533137    inc         ebx
 00533138    test        bl,bl
>0053313A    jne         00533141
 0053313C    call        comctl32.InitCommonControls
 00533141    mov         eax,ebx
 00533143    pop         ecx
 00533144    pop         edx
 00533145    pop         ebx
 00533146    ret
*}
end;

//00533148
function GetComCtlVersion:Integer;
begin
{*
 00533148    cmp         dword ptr ds:[7CA6C8],0
>0053314F    jne         00533160
 00533151    mov         eax,533174;'comctl32.dll'
 00533156    call        GetFileVersion
 0053315B    mov         [007CA6C8],eax
 00533160    mov         eax,[007CA6C8]
 00533165    ret
*}
end;

//00533190
{*procedure sub_00533190(?:TWinControl; ?:?; ?:Boolean);
begin
 00533190    push        ebx
 00533191    push        esi
 00533192    push        edi
 00533193    push        ebp
 00533194    mov         ebx,ecx
 00533196    mov         edi,edx
 00533198    mov         ebp,eax
 0053319A    mov         eax,ebp
 0053319C    call        TWinControl.HandleAllocated
 005331A1    test        al,al
>005331A3    je          005331D2
 005331A5    mov         eax,ebp
 005331A7    call        TWinControl.GetHandle
 005331AC    push        0F0
 005331AE    push        eax
 005331AF    call        user32.GetWindowLongW
 005331B4    mov         esi,eax
 005331B6    test        bl,bl
>005331B8    jne         005331C0
 005331BA    not         edi
 005331BC    and         esi,edi
>005331BE    jmp         005331C2
 005331C0    or          esi,edi
 005331C2    mov         eax,ebp
 005331C4    call        TWinControl.GetHandle
 005331C9    push        esi
 005331CA    push        0F0
 005331CC    push        eax
 005331CD    call        user32.SetWindowLongW
 005331D2    pop         ebp
 005331D3    pop         edi
 005331D4    pop         esi
 005331D5    pop         ebx
 005331D6    ret
end;*}

//005333D8
procedure TabControlError(const S:UnicodeString);
begin
{*
 005333D8    push        ebx
 005333D9    mov         ebx,eax
 005333DB    mov         ecx,ebx
 005333DD    mov         dl,1
 005333DF    mov         eax,[004180BC];EListError
 005333E4    call        Exception.Create
 005333E9    call        @RaiseExcept
 005333EE    pop         ebx
 005333EF    ret
*}
end;

//005333F0
procedure TTabStrings.Clear;
begin
{*
 005333F0    push        ebp
 005333F1    mov         ebp,esp
 005333F3    push        0
 005333F5    push        ebx
 005333F6    mov         ebx,eax
 005333F8    xor         eax,eax
 005333FA    push        ebp
 005333FB    push        533454
 00533400    push        dword ptr fs:[eax]
 00533403    mov         dword ptr fs:[eax],esp
 00533406    push        0
 00533408    push        0
 0053340A    push        1309
 0053340F    mov         eax,dword ptr [ebx+2C]
 00533412    call        TWinControl.GetHandle
 00533417    push        eax
 00533418    call        user32.SendMessageW
 0053341D    test        eax,eax
>0053341F    jne         00533436
 00533421    lea         edx,[ebp-4]
 00533424    mov         eax,[007C4A2C];^SResString350:TResStringRec
 00533429    call        LoadResString
 0053342E    mov         eax,dword ptr [ebp-4]
 00533431    call        TabControlError
 00533436    mov         eax,dword ptr [ebx+2C]
 00533439    call        TCustomTabControl.TabsChanged
 0053343E    xor         eax,eax
 00533440    pop         edx
 00533441    pop         ecx
 00533442    pop         ecx
 00533443    mov         dword ptr fs:[eax],edx
 00533446    push        53345B
 0053344B    lea         eax,[ebp-4]
 0053344E    call        @UStrClr
 00533453    ret
>00533454    jmp         @HandleFinally
>00533459    jmp         0053344B
 0053345B    pop         ebx
 0053345C    pop         ecx
 0053345D    pop         ebp
 0053345E    ret
*}
end;

//00533460
procedure TTabStrings.Delete(Index:Integer);
begin
{*
 00533460    push        ebp
 00533461    mov         ebp,esp
 00533463    add         esp,0FFFFFFF0
 00533466    push        ebx
 00533467    push        esi
 00533468    xor         ecx,ecx
 0053346A    mov         dword ptr [ebp-4],ecx
 0053346D    mov         dword ptr [ebp-8],ecx
 00533470    mov         esi,edx
 00533472    mov         ebx,eax
 00533474    xor         eax,eax
 00533476    push        ebp
 00533477    push        5334EC
 0053347C    push        dword ptr fs:[eax]
 0053347F    mov         dword ptr fs:[eax],esp
 00533482    push        0
 00533484    push        esi
 00533485    push        1308
 0053348A    mov         eax,dword ptr [ebx+2C]
 0053348D    call        TWinControl.GetHandle
 00533492    push        eax
 00533493    call        user32.SendMessageW
 00533498    test        eax,eax
>0053349A    jne         005334C9
 0053349C    lea         eax,[ebp-4]
 0053349F    push        eax
 005334A0    lea         edx,[ebp-8]
 005334A3    mov         eax,[007C4990];^SResString351:TResStringRec
 005334A8    call        LoadResString
 005334AD    mov         eax,dword ptr [ebp-8]
 005334B0    mov         dword ptr [ebp-10],esi
 005334B3    mov         byte ptr [ebp-0C],0
 005334B7    lea         edx,[ebp-10]
 005334BA    xor         ecx,ecx
 005334BC    call        Format
 005334C1    mov         eax,dword ptr [ebp-4]
 005334C4    call        TabControlError
 005334C9    mov         eax,dword ptr [ebx+2C]
 005334CC    call        TCustomTabControl.TabsChanged
 005334D1    xor         eax,eax
 005334D3    pop         edx
 005334D4    pop         ecx
 005334D5    pop         ecx
 005334D6    mov         dword ptr fs:[eax],edx
 005334D9    push        5334F3
 005334DE    lea         eax,[ebp-8]
 005334E1    mov         edx,2
 005334E6    call        @UStrArrayClr
 005334EB    ret
>005334EC    jmp         @HandleFinally
>005334F1    jmp         005334DE
 005334F3    pop         esi
 005334F4    pop         ebx
 005334F5    mov         esp,ebp
 005334F7    pop         ebp
 005334F8    ret
*}
end;

//005334FC
function TTabStrings.Get(Index:Integer):UnicodeString;
begin
{*
 005334FC    push        ebp
 005334FD    mov         ebp,esp
 005334FF    push        eax
 00533500    mov         eax,2
 00533505    add         esp,0FFFFF004
 0053350B    push        eax
 0053350C    dec         eax
>0053350D    jne         00533505
 0053350F    mov         eax,dword ptr [ebp-4]
 00533512    add         esp,0FFFFFFD8
 00533515    push        ebx
 00533516    push        esi
 00533517    push        edi
 00533518    xor         ebx,ebx
 0053351A    mov         dword ptr [ebp-2020],ebx
 00533520    mov         dword ptr [ebp-2024],ebx
 00533526    mov         edi,ecx
 00533528    mov         esi,edx
 0053352A    mov         ebx,eax
 0053352C    xor         eax,eax
 0053352E    push        ebp
 0053352F    push        5335F0
 00533534    push        dword ptr fs:[eax]
 00533537    mov         dword ptr fs:[eax],esp
 0053353A    mov         eax,dword ptr [ebx+2C]
 0053353D    call        TControl.UseRightToLeftReading
 00533542    and         eax,7F
 00533545    mov         eax,dword ptr [eax*4+7A1514]
 0053354C    or          eax,1
 0053354F    mov         dword ptr [ebp-1C],eax
 00533552    lea         eax,[ebp-201C]
 00533558    mov         dword ptr [ebp-10],eax
 0053355B    mov         dword ptr [ebp-0C],1000
 00533562    lea         eax,[ebp-1C]
 00533565    push        eax
 00533566    push        esi
 00533567    push        133C
 0053356C    mov         eax,dword ptr [ebx+2C]
 0053356F    call        TWinControl.GetHandle
 00533574    push        eax
 00533575    call        user32.SendMessageW
 0053357A    test        eax,eax
>0053357C    jne         005335C0
 0053357E    lea         eax,[ebp-2020]
 00533584    push        eax
 00533585    lea         edx,[ebp-2024]
 0053358B    mov         eax,[007C4874];^SResString352:TResStringRec
 00533590    call        LoadResString
 00533595    mov         eax,dword ptr [ebp-2024]
 0053359B    mov         dword ptr [ebp-202C],esi
 005335A1    mov         byte ptr [ebp-2028],0
 005335A8    lea         edx,[ebp-202C]
 005335AE    xor         ecx,ecx
 005335B0    call        Format
 005335B5    mov         eax,dword ptr [ebp-2020]
 005335BB    call        TabControlError
 005335C0    mov         eax,edi
 005335C2    lea         edx,[ebp-201C]
 005335C8    mov         ecx,1000
 005335CD    call        @UStrFromWArray
 005335D2    xor         eax,eax
 005335D4    pop         edx
 005335D5    pop         ecx
 005335D6    pop         ecx
 005335D7    mov         dword ptr fs:[eax],edx
 005335DA    push        5335F7
 005335DF    lea         eax,[ebp-2024]
 005335E5    mov         edx,2
 005335EA    call        @UStrArrayClr
 005335EF    ret
>005335F0    jmp         @HandleFinally
>005335F5    jmp         005335DF
 005335F7    pop         edi
 005335F8    pop         esi
 005335F9    pop         ebx
 005335FA    mov         esp,ebp
 005335FC    pop         ebp
 005335FD    ret
*}
end;

//00533600
function TTabStrings.GetCount:Integer;
begin
{*
 00533600    push        ebx
 00533601    mov         ebx,eax
 00533603    push        0
 00533605    push        0
 00533607    push        1304
 0053360C    mov         eax,dword ptr [ebx+2C]
 0053360F    call        TWinControl.GetHandle
 00533614    push        eax
 00533615    call        user32.SendMessageW
 0053361A    pop         ebx
 0053361B    ret
*}
end;

//0053361C
function TTabStrings.GetObject(Index:Integer):TObject;
begin
{*
 0053361C    push        ebp
 0053361D    mov         ebp,esp
 0053361F    add         esp,0FFFFFFD4
 00533622    push        ebx
 00533623    push        esi
 00533624    xor         ecx,ecx
 00533626    mov         dword ptr [ebp-20],ecx
 00533629    mov         dword ptr [ebp-24],ecx
 0053362C    mov         esi,edx
 0053362E    mov         ebx,eax
 00533630    xor         eax,eax
 00533632    push        ebp
 00533633    push        5336AC
 00533638    push        dword ptr fs:[eax]
 0053363B    mov         dword ptr fs:[eax],esp
 0053363E    mov         dword ptr [ebp-1C],8
 00533645    lea         eax,[ebp-1C]
 00533648    push        eax
 00533649    push        esi
 0053364A    push        133C
 0053364F    mov         eax,dword ptr [ebx+2C]
 00533652    call        TWinControl.GetHandle
 00533657    push        eax
 00533658    call        user32.SendMessageW
 0053365D    test        eax,eax
>0053365F    jne         0053368E
 00533661    lea         eax,[ebp-20]
 00533664    push        eax
 00533665    lea         edx,[ebp-24]
 00533668    mov         eax,[007C4920];^SResString353:TResStringRec
 0053366D    call        LoadResString
 00533672    mov         eax,dword ptr [ebp-24]
 00533675    mov         dword ptr [ebp-2C],esi
 00533678    mov         byte ptr [ebp-28],0
 0053367C    lea         edx,[ebp-2C]
 0053367F    xor         ecx,ecx
 00533681    call        Format
 00533686    mov         eax,dword ptr [ebp-20]
 00533689    call        TabControlError
 0053368E    mov         ebx,dword ptr [ebp-4]
 00533691    xor         eax,eax
 00533693    pop         edx
 00533694    pop         ecx
 00533695    pop         ecx
 00533696    mov         dword ptr fs:[eax],edx
 00533699    push        5336B3
 0053369E    lea         eax,[ebp-24]
 005336A1    mov         edx,2
 005336A6    call        @UStrArrayClr
 005336AB    ret
>005336AC    jmp         @HandleFinally
>005336B1    jmp         0053369E
 005336B3    mov         eax,ebx
 005336B5    pop         esi
 005336B6    pop         ebx
 005336B7    mov         esp,ebp
 005336B9    pop         ebp
 005336BA    ret
*}
end;

//005336BC
{*procedure sub_005336BC(?:?; ?:?);
begin
 005336BC    push        ebp
 005336BD    mov         ebp,esp
 005336BF    add         esp,0FFFFFFCC
 005336C2    push        ebx
 005336C3    push        esi
 005336C4    push        edi
 005336C5    xor         ebx,ebx
 005336C7    mov         dword ptr [ebp-20],ebx
 005336CA    mov         dword ptr [ebp-24],ebx
 005336CD    mov         edi,ecx
 005336CF    mov         esi,edx
 005336D1    mov         ebx,eax
 005336D3    xor         eax,eax
 005336D5    push        ebp
 005336D6    push        53378E
 005336DB    push        dword ptr fs:[eax]
 005336DE    mov         dword ptr fs:[eax],esp
 005336E1    mov         eax,dword ptr [ebx+2C];TTabStrings..............FTabControl:TCustomTabControl
 005336E4    call        TControl.UseRightToLeftReading
 005336E9    and         eax,7F
 005336EC    mov         eax,dword ptr [eax*4+7A151C]
 005336F3    or          eax,1
 005336F6    or          eax,2
 005336F9    mov         dword ptr [ebp-1C],eax
 005336FC    mov         eax,edi
 005336FE    call        @UStrToPWChar
 00533703    mov         dword ptr [ebp-10],eax
 00533706    mov         edx,esi
 00533708    mov         eax,dword ptr [ebx+2C];TTabStrings...............FTabControl:TCustomTabControl
 0053370B    mov         ecx,dword ptr [eax]
 0053370D    call        dword ptr [ecx+110];TCustomTabControl.sub_00533DB4
 00533713    mov         dword ptr [ebp-8],eax
 00533716    lea         eax,[ebp-1C]
 00533719    push        eax
 0053371A    mov         eax,dword ptr [ebx+2C];TTabStrings................FTabControl:TCustomTabControl
 0053371D    call        TWinControl.GetHandle
 00533722    mov         ecx,esi
 00533724    mov         edx,133D
 00533729    call        SendStructMessage
 0053372E    test        eax,eax
>00533730    jne         0053376B
 00533732    lea         eax,[ebp-20]
 00533735    push        eax
 00533736    lea         edx,[ebp-24]
 00533739    mov         eax,[007C4C1C];^SResString354:TResStringRec
 0053373E    call        LoadResString
 00533743    mov         eax,dword ptr [ebp-24]
 00533746    push        eax
 00533747    mov         dword ptr [ebp-34],edi
 0053374A    mov         byte ptr [ebp-30],11
 0053374E    mov         dword ptr [ebp-2C],esi
 00533751    mov         byte ptr [ebp-28],0
 00533755    lea         edx,[ebp-34]
 00533758    mov         ecx,1
 0053375D    pop         eax
 0053375E    call        Format
 00533763    mov         eax,dword ptr [ebp-20]
 00533766    call        TabControlError
 0053376B    mov         eax,dword ptr [ebx+2C];TTabStrings.................FTabControl:TCustomTabControl
 0053376E    call        TCustomTabControl.TabsChanged
 00533773    xor         eax,eax
 00533775    pop         edx
 00533776    pop         ecx
 00533777    pop         ecx
 00533778    mov         dword ptr fs:[eax],edx
 0053377B    push        533795
 00533780    lea         eax,[ebp-24]
 00533783    mov         edx,2
 00533788    call        @UStrArrayClr
 0053378D    ret
>0053378E    jmp         @HandleFinally
>00533793    jmp         00533780
 00533795    pop         edi
 00533796    pop         esi
 00533797    pop         ebx
 00533798    mov         esp,ebp
 0053379A    pop         ebp
 0053379B    ret
end;*}

//0053379C
procedure TTabStrings.PutObject(Index:Integer; AObject:TObject);
begin
{*
 0053379C    push        ebp
 0053379D    mov         ebp,esp
 0053379F    add         esp,0FFFFFFD4
 005337A2    push        ebx
 005337A3    push        esi
 005337A4    xor         ebx,ebx
 005337A6    mov         dword ptr [ebp-20],ebx
 005337A9    mov         dword ptr [ebp-24],ebx
 005337AC    mov         esi,edx
 005337AE    mov         ebx,eax
 005337B0    xor         eax,eax
 005337B2    push        ebp
 005337B3    push        53382C
 005337B8    push        dword ptr fs:[eax]
 005337BB    mov         dword ptr fs:[eax],esp
 005337BE    mov         dword ptr [ebp-1C],8
 005337C5    mov         dword ptr [ebp-4],ecx
 005337C8    lea         eax,[ebp-1C]
 005337CB    push        eax
 005337CC    push        esi
 005337CD    push        133D
 005337D2    mov         eax,dword ptr [ebx+2C]
 005337D5    call        TWinControl.GetHandle
 005337DA    push        eax
 005337DB    call        user32.SendMessageW
 005337E0    test        eax,eax
>005337E2    jne         00533811
 005337E4    lea         eax,[ebp-20]
 005337E7    push        eax
 005337E8    lea         edx,[ebp-24]
 005337EB    mov         eax,[007C42A0];^SResString355:TResStringRec
 005337F0    call        LoadResString
 005337F5    mov         eax,dword ptr [ebp-24]
 005337F8    mov         dword ptr [ebp-2C],esi
 005337FB    mov         byte ptr [ebp-28],0
 005337FF    lea         edx,[ebp-2C]
 00533802    xor         ecx,ecx
 00533804    call        Format
 00533809    mov         eax,dword ptr [ebp-20]
 0053380C    call        TabControlError
 00533811    xor         eax,eax
 00533813    pop         edx
 00533814    pop         ecx
 00533815    pop         ecx
 00533816    mov         dword ptr fs:[eax],edx
 00533819    push        533833
 0053381E    lea         eax,[ebp-24]
 00533821    mov         edx,2
 00533826    call        @UStrArrayClr
 0053382B    ret
>0053382C    jmp         @HandleFinally
>00533831    jmp         0053381E
 00533833    pop         esi
 00533834    pop         ebx
 00533835    mov         esp,ebp
 00533837    pop         ebp
 00533838    ret
*}
end;

//0053383C
procedure TTabStrings.Insert(Index:Integer; S:string);
begin
{*
 0053383C    push        ebp
 0053383D    mov         ebp,esp
 0053383F    add         esp,0FFFFFFCC
 00533842    push        ebx
 00533843    push        esi
 00533844    push        edi
 00533845    xor         ebx,ebx
 00533847    mov         dword ptr [ebp-20],ebx
 0053384A    mov         dword ptr [ebp-24],ebx
 0053384D    mov         edi,ecx
 0053384F    mov         esi,edx
 00533851    mov         ebx,eax
 00533853    xor         eax,eax
 00533855    push        ebp
 00533856    push        53390E
 0053385B    push        dword ptr fs:[eax]
 0053385E    mov         dword ptr fs:[eax],esp
 00533861    mov         eax,dword ptr [ebx+2C];TTabStrings..................FTabControl:TCustomTabControl
 00533864    call        TControl.UseRightToLeftReading
 00533869    and         eax,7F
 0053386C    mov         eax,dword ptr [eax*4+7A1524]
 00533873    or          eax,1
 00533876    or          eax,2
 00533879    mov         dword ptr [ebp-1C],eax
 0053387C    mov         eax,edi
 0053387E    call        @UStrToPWChar
 00533883    mov         dword ptr [ebp-10],eax
 00533886    mov         edx,esi
 00533888    mov         eax,dword ptr [ebx+2C];TTabStrings...................FTabControl:TCustomTabControl
 0053388B    mov         ecx,dword ptr [eax]
 0053388D    call        dword ptr [ecx+110];TCustomTabControl.sub_00533DB4
 00533893    mov         dword ptr [ebp-8],eax
 00533896    lea         eax,[ebp-1C]
 00533899    push        eax
 0053389A    mov         eax,dword ptr [ebx+2C];TTabStrings....................FTabControl:TCustomTabControl
 0053389D    call        TWinControl.GetHandle
 005338A2    mov         ecx,esi
 005338A4    mov         edx,133E
 005338A9    call        SendStructMessage
 005338AE    test        eax,eax
>005338B0    jge         005338EB
 005338B2    lea         eax,[ebp-20]
 005338B5    push        eax
 005338B6    lea         edx,[ebp-24]
 005338B9    mov         eax,[007C4C1C];^SResString354:TResStringRec
 005338BE    call        LoadResString
 005338C3    mov         eax,dword ptr [ebp-24]
 005338C6    push        eax
 005338C7    mov         dword ptr [ebp-34],edi
 005338CA    mov         byte ptr [ebp-30],11
 005338CE    mov         dword ptr [ebp-2C],esi
 005338D1    mov         byte ptr [ebp-28],0
 005338D5    lea         edx,[ebp-34]
 005338D8    mov         ecx,1
 005338DD    pop         eax
 005338DE    call        Format
 005338E3    mov         eax,dword ptr [ebp-20]
 005338E6    call        TabControlError
 005338EB    mov         eax,dword ptr [ebx+2C];TTabStrings.....................FTabControl:TCustomTabControl
 005338EE    call        TCustomTabControl.TabsChanged
 005338F3    xor         eax,eax
 005338F5    pop         edx
 005338F6    pop         ecx
 005338F7    pop         ecx
 005338F8    mov         dword ptr fs:[eax],edx
 005338FB    push        533915
 00533900    lea         eax,[ebp-24]
 00533903    mov         edx,2
 00533908    call        @UStrArrayClr
 0053390D    ret
>0053390E    jmp         @HandleFinally
>00533913    jmp         00533900
 00533915    pop         edi
 00533916    pop         esi
 00533917    pop         ebx
 00533918    mov         esp,ebp
 0053391A    pop         ebp
 0053391B    ret
*}
end;

//0053391C
{*procedure sub_0053391C(?:?);
begin
 0053391C    push        ebx
 0053391D    push        esi
 0053391E    push        edi
 0053391F    mov         ebx,edx
 00533921    mov         esi,eax
 00533923    mov         edi,dword ptr [esi+2C];TTabStrings......................FTabControl:TCustomTabControl
 00533926    mov         byte ptr [edi+2B8],bl;TCustomTabControl.FUpdating:Boolean
 0053392C    push        0
 0053392E    mov         eax,ebx
 00533930    xor         al,1
 00533932    and         eax,7F
 00533935    push        eax
 00533936    push        0B
 00533938    mov         eax,edi
 0053393A    call        TWinControl.GetHandle
 0053393F    push        eax
 00533940    call        user32.SendMessageW
 00533945    xor         bl,1
 00533948    test        bl,bl
>0053394A    je          0053395F
 0053394C    mov         eax,dword ptr [esi+2C];TTabStrings.......................FTabControl:TCustomTabControl
 0053394F    mov         edx,dword ptr [eax]
 00533951    call        dword ptr [edx+0A8];TWinControl.Invalidate
 00533957    mov         eax,dword ptr [esi+2C];TTabStrings........................FTabControl:TCustomTabControl
 0053395A    call        TCustomTabControl.TabsChanged
 0053395F    pop         edi
 00533960    pop         esi
 00533961    pop         ebx
 00533962    ret
end;*}

//00533964
constructor TCustomTabControl.Create(AOwner:TComponent);
begin
{*
 00533964    push        ebp
 00533965    mov         ebp,esp
 00533967    push        ecx
 00533968    push        ebx
 00533969    push        esi
 0053396A    test        dl,dl
>0053396C    je          00533976
 0053396E    add         esp,0FFFFFFF0
 00533971    call        @ClassCreate
 00533976    mov         byte ptr [ebp-1],dl
 00533979    mov         ebx,eax
 0053397B    xor         edx,edx
 0053397D    mov         eax,ebx
 0053397F    call        TWinControl.Create
 00533984    mov         edx,121
 00533989    mov         eax,ebx
 0053398B    call        TControl.SetWidth
 00533990    mov         edx,0C1
 00533995    mov         eax,ebx
 00533997    call        TControl.SetHeight
 0053399C    mov         dl,1
 0053399E    mov         eax,ebx
 005339A0    call        TWinControl.SetTabStop
 005339A5    mov         eax,[00533A20];0x280081 gvar_00533A20
 005339AA    mov         dword ptr [ebx+60],eax;TCustomTabControl.FControlStyle:TControlStyle
 005339AD    mov         dl,1
 005339AF    mov         eax,[005331D8];TTabStrings
 005339B4    call        TStrings.Create;TTabStrings.Create
 005339B9    mov         esi,eax
 005339BB    mov         dword ptr [ebx+2B0],esi;TCustomTabControl.FTabs:TStrings
 005339C1    mov         dword ptr [esi+2C],ebx;TTabStrings.........................FTabControl:TCustomTabControl
 005339C4    mov         dl,1
 005339C6    mov         eax,[004D9044];TControlCanvas
 005339CB    call        TCanvas.Create;TControlCanvas.Create
 005339D0    mov         esi,eax
 005339D2    mov         dword ptr [ebx+290],esi;TCustomTabControl.FCanvas:TCanvas
 005339D8    mov         eax,esi
 005339DA    mov         edx,ebx
 005339DC    call        TControlCanvas.SetControl
 005339E1    mov         dl,1
 005339E3    mov         eax,[005A6CE0];TChangeLink
 005339E8    call        TChangeLink.Create;TChangeLink.Create
 005339ED    mov         esi,eax
 005339EF    mov         dword ptr [ebx+298],esi;TCustomTabControl.FImageChangeLink:TChangeLink
 005339F5    mov         dword ptr [esi+14],ebx;TChangeLink.?f14:TCustomActionList
 005339F8    mov         dword ptr [esi+10],533ED8;TChangeLink.FOnChange:TNotifyEvent sub_00533ED8
 005339FF    mov         eax,ebx
 00533A01    cmp         byte ptr [ebp-1],0
>00533A05    je          00533A16
 00533A07    call        @AfterConstruction
 00533A0C    pop         dword ptr fs:[0]
 00533A13    add         esp,0C
 00533A16    mov         eax,ebx
 00533A18    pop         esi
 00533A19    pop         ebx
 00533A1A    pop         ecx
 00533A1B    pop         ebp
 00533A1C    ret
*}
end;

Initialization
//0079D2E8
{*
 0079D2E8    sub         dword ptr ds:[7CA68C],1
>0079D2EF    jae         0079D307
 0079D2F1    mov         ecx,dword ptr ds:[532464];TTabControlStyleHook
 0079D2F7    mov         edx,dword ptr ds:[51E408];TCustomTabControl
 0079D2FD    mov         eax,[005738E0];TCustomStyleEngine
 0079D302    call        TCustomStyleEngine.RegisterStyleHook
 0079D307    ret
*}
Finalization
end.